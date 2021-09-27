local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = 512
function readingsavedevice()
	local f1_local0 = LUI.MenuBuilder.BuildRegisteredType( "live_dialog_text_box", {
		message = Engine.Localize( "@PLATFORM_READING_SAVE_DEVICE" )
	} )
	f1_local0.id = "readingsavedevice_id"
	f1_local0:registerEventHandler( "menu_close", MBh.EmitEventToRoot( {
		name = "finish_read_device"
	} ) )
	return f1_local0
end

f0_local1 = function ( f2_arg0, f2_arg1 )
	local f2_local0 = Engine.GetDvarString( "com_errorTitle" )
	local f2_local1 = Engine.GetDvarString( "com_errorMessage" )
	local f2_local2 = Engine.GetDvarString( "lui_fullErrorDesc" )
	local f2_local3 = {
		name = "update_title",
		title_text = f2_local0
	}
	local f2_local4 = {
		name = "update_message",
		message_text = f2_local1
	}
	f2_arg0:dispatchEventToChildren( f2_local3 )
	f2_arg0:dispatchEventToChildren( f2_local4 )
	if f2_local2 and f2_local2 ~= "" then
		local f2_local5 = 600
		local f2_local6 = (1280 - f2_local5) / 2
		local f2_local7 = CoD.CreateState( f2_local6, 400, f2_local6 + f2_local5, 630, CoD.AnchorTypes.TopLeft )
		f2_local7.alpha = 0.8
		f2_local7.color = Colors.black
		local self = LUI.UIImage.new( f2_local7 )
		f2_arg0:addElement( self )
		local f2_local9 = CoD.CreateState( 3, 3, -3, 18, CoD.AnchorTypes.TopLeftRight )
		f2_local9.font = CoD.TextSettings.BodyFont.Font
		local self = LUI.UIText.new( f2_local9 )
		self:setText( string.sub( f2_local2, 1, f0_local0 - 2 ) )
		self:addElement( self )
		Engine.SetDvarString( "lui_fullErrorDesc", "" )
	end
end

f0_local2 = function ()
	if Engine.GetDvarBool( "lui_exitOnResolve" ) == true then
		Engine.Exit()
		return 
	else
		Engine.ClearError( Engine.GetFirstActiveController() )
	end
end

function errorPopupClosePlus( f4_arg0, f4_arg1 )
	if Engine.ShowPSPlusUpsell then
		Engine.ShowPSPlusUpsell( f4_arg1.controller )
	end
end

function error_popmenu( f5_arg0, f5_arg1 )
	local f5_local0 = LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup" )
	f5_local0:registerEventHandler( "menu_create", f0_local1 )
	f5_local0.id = "error_popup_id"
	return f5_local0
end

local f0_local3 = function ( f6_arg0, f6_arg1 )
	DebugPrint( "RESTARTING GAME" )
	Engine.SystemRestart( "" )
end

function ccs_need_restart( f7_arg0, f7_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		cancel_will_close = false,
		popup_title = Engine.Localize( "@MENU_CCS_RESTART_CONFIRMATION_TITLE" ),
		message_text = Engine.Localize( "@MENU_CCS_RESTART_CONFIRMATION_TEXT" ),
		button_text = Engine.Localize( "@MENU_CCS_RESTART_BUTTON_LABEL" ),
		confirmation_action = f0_local3
	} )
end

local f0_local4 = function ( f8_arg0, f8_arg1 )
	DebugPrint( "RESTARTING GAME" )
	Engine.SystemRestart( "" )
end

function ccs_fail_need_restart( f9_arg0, f9_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		cancel_will_close = false,
		popup_title = Engine.Localize( "@MENU_CCS_RESTART_CONFIRMATION_TITLE" ),
		message_text = Engine.Localize( "@MENU_CCS_FAILURE_RESTART_CONFIRMATION_TEXT" ),
		button_text = Engine.Localize( "@MENU_CCS_RESTART_BUTTON_LABEL" ),
		confirmation_action = f0_local3
	} )
end

function CancelCSSDownload( f10_arg0, f10_arg1 )
	LUI.FlowManager.RequestLeaveMenu( f10_arg0, f10_arg1 )
	local f10_local0 = Engine.GetLuiRoot()
	if f10_local0 then
		f10_local0:processEvent( {
			name = "CancelPatching"
		} )
	end
end

function ccs_is_downloading( f11_arg0, f11_arg1 )
	local f11_local0 = {
		message_text = Engine.Localize( "@MENU_CCS_DOWNLOAD_IN_PROGRESS" ),
		isCCS = true,
		isLiveWithCancel = not Engine.IsMultiplayer()
	}
	local f11_local1
	if not Engine.IsMultiplayer() then
		f11_local1 = CancelCSSDownload
		if not f11_local1 then
		
		else
			f11_local0.cancel_func = f11_local1
			return LUI.MenuBuilder.BuildRegisteredType( "waiting_popup", f11_local0 )
		end
	end
	f11_local1 = nil
end

function error_popmenu_party( f12_arg0, f12_arg1 )
	local f12_local0 = LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup" )
	f12_local0:registerEventHandler( "menu_create", f0_local1 )
	f12_local0.id = "error_popmenu_party_id"
	return f12_local0
end

function error_popmenu_psplus_party( f13_arg0, f13_arg1 )
	local f13_local0 = LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		confirmation_action = errorPopupClosePlus
	} )
	f13_local0:registerEventHandler( "menu_create", f0_local1 )
	f13_local0.id = "error_popmenu_party_plus_id"
	return f13_local0
end

local f0_local5 = function ( f14_arg0, f14_arg1 )
	DebugPrint( "QUIT GAME NOW" )
	Engine.Quit()
end

function quit_popmenu( f15_arg0, f15_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@MENU_QUIT_WARNING" ),
		yes_action = f0_local5
	} )
end

function error_popmenu_submenu( f16_arg0, f16_arg1 )
	local f16_local0 = LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup" )
	f16_local0:registerEventHandler( "menu_create", f0_local1 )
	f16_local0.id = "error_popmenu_submenu_id"
	return f16_local0
end

local f0_local6 = function ( f17_arg0, f17_arg1 )
	Engine.Exec( "xsignin", f17_arg1.controller )
end

local f0_local7 = function ( f18_arg0, f18_arg1 )
	LUI.FlowManager.RequestAddMenu( f18_arg0, "boot_brightness", false, f18_arg1.controller, true, {} )
end

local f0_local8 = function ( f19_arg0, f19_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_WARNING" ),
		message_text = Engine.Localize( "@MENU_SP_PROFILE_WARNING_SP" ),
		yes_action = f0_local6,
		no_action = f0_local7,
		cancel_action = yes_action,
		cancel_means_no = false,
		default_focus_index = 1
	} )
end

local f0_local9 = function ( f20_arg0, f20_arg1 )
	Engine.DeleteSave( f20_arg1.controller )
end

local f0_local10 = function ( f21_arg0, f21_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		cancel_will_close = false,
		popup_title = Engine.Localize( "@MENU_CORRUPT_SAVEDATA_TITLE" ),
		message_text = Engine.Localize( "@MENU_CORRUPT_SAVEDATA_MESSAGE" ),
		button_text = Engine.Localize( "@MENU_OK" ),
		confirmation_action = f0_local9
	} )
end

local f0_local11 = function ( f22_arg0, f22_arg1 )
	Engine.RetrySaveData( f22_arg1.controller )
end

local f0_local12 = function ( f23_arg0, f23_arg1 )
	Engine.ClearSaveDataErrors( f23_arg1.controller )
end

local f0_local13 = function ( f24_arg0, f24_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_SAVEDATA_FAILED_TITLE" ),
		message_text = Engine.Localize( "@MENU_SAVEDATA_FAILED_MESSAGE" ),
		yes_action = f0_local11,
		no_action = f0_local12
	} )
end

local f0_local14 = function ( f25_arg0, f25_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_WARNING" ),
		message_text = Engine.Localize( "@LUA_MENU_PROFILE_FORCE_SP" ),
		button_text = Engine.Localize( "@MENU_OK" )
	} )
end

local f0_local15 = function ( f26_arg0, f26_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_WARNING" ),
		message_text = Engine.Localize( "@MENU_THROTTLE_ERROR" ),
		button_text = Engine.Localize( "@MENU_OK" )
	} )
end

function live_party_invite_popmenu( f27_arg0, f27_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@XBOXLIVE_PARTY_INVITE" ),
		yes_text = Engine.Localize( "@XBOXLIVE_PARTY_INVITE_ACCEPT_NOW" ),
		yes_action = function ( f124_arg0, f124_arg1 )
			Friends.AcceptLivePartyInvitation( f124_arg1.controller )
		end
		,
		no_text = Engine.Localize( "@LUA_MENU_DECLINE" ),
		no_action = function ( f125_arg0, f125_arg1 )
			Friends.DeclineLivePartyInvitation( f125_arg1.controller )
		end
		
	} )
end

function live_party_streaming_incomplete_popmenu( f28_arg0, f28_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@PLATFORM_STREAMING_IN_PROGRESS" ),
		button_text = Engine.Localize( "@MENU_OK" )
	} )
end

function sign_in_as_sub_or_guest( f29_arg0, f29_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_SIGN_IN_GUEST_OR_SUB_TITLE" ),
		message_text = Engine.Localize( "@MENU_SIGN_IN_GUEST_OR_SUB_TEXT" ),
		yes_text = Engine.Localize( "@MENU_SIGN_IN_GUEST_OR_SUB_YES" ),
		yes_action = function ( f126_arg0, f126_arg1 )
			Lobby.DoSubSignIn( f126_arg1.controller )
		end
		,
		no_text = Engine.Localize( "@MENU_SIGN_IN_GUEST_OR_SUB_NO" ),
		no_action = function ( f127_arg0, f127_arg1 )
			Lobby.DoGuestSignIn( f127_arg1.controller )
		end
		
	} )
end

function CancelAcceptingInvite( f30_arg0, f30_arg1 )
	local f30_local0 = f30_arg1.controller
	Engine.SetOnlineGame( false )
	Engine.SetSystemLink( false )
	Engine.SetDvarBool( "specialops", false )
	Engine.SetDvarBool( "so_survival", false )
	Engine.Exec( "stopPrivateListen", f30_local0 )
	Engine.Exec( "coopStopSearch", f30_local0 )
	Engine.Exec( "useonlinestats 0", f30_local0 )
	Engine.Exec( "statsdownloadcancel", f30_local0 )
	Engine.Exec( "xstopparty WAITING_POPUP_CANCELED_ACTION", f30_local0 )
	Engine.Exec( "xstopprivateparty", f30_local0 )
	Engine.Exec( "xcancelconnectingdialog", f30_local0 )
	Engine.Exec( "forcesplitscreencontrol WAITING_POPUP_CANCELED_ACTION", f30_local0 )
	LUI.FlowManager.RequestLeaveMenu( f30_arg0 )
end

function OnAcceptingInviteCreate( f31_arg0, f31_arg1 )
	if AAR ~= nil then
		AAR.ClearAAR()
	end
end

function popup_acceptinginvite( f32_arg0, f32_arg1 )
	local f32_local0 = LUI.MenuBuilder.BuildRegisteredType( "live_dialog_text_box_with_cancel", {
		message = Engine.Localize( "@MENU_POPUP_ACCEPTINVITE" ),
		cancel_func = CancelAcceptingInvite
	} )
	f32_local0.id = "popup_acceptinginvite_id"
	f32_local0:registerEventHandler( "menu_create", OnAcceptingInviteCreate )
	return f32_local0
end

function UpdateTextDots( f33_arg0, f33_arg1 )
	assert( f33_arg0.properties.numDots )
	assert( f33_arg0.properties.message )
	local f33_local0 = f33_arg0.properties.numDots
	local f33_local1 = f33_arg0.properties.message
	f33_local0 = (f33_local0 + 1) % 12
	for f33_local2 = 1, f33_local0, 1 do
		local f33_local5 = f33_local2
		f33_local1 = f33_local1 .. ". "
	end
	f33_arg0:setText( f33_local1 )
	f33_arg0.properties.numDots = f33_local0
end

function CreateDot( f34_arg0, f34_arg1, f34_arg2, f34_arg3 )
	local f34_local0 = f34_arg1 / 1.25
	local f34_local1 = f34_arg0 / 1.25
	local f34_local2 = 2
	local f34_local3 = 1
	local f34_local4 = MBh.AnimateSequence( {
		{
			"state0",
			0 / f34_local3
		},
		{
			"state1",
			150 / f34_local3,
			true,
			true
		},
		{
			"state2",
			100 / f34_local3,
			true,
			true
		},
		{
			"state3",
			800 / f34_local3,
			true,
			true
		}
	} )
	local f34_local5 = CoD.CreateState( f34_local1 - f34_local2, f34_local0 - f34_local2, f34_local1 + f34_local2, f34_local0 + f34_local2, CoD.AnchorTypes.None )
	f34_local5.material = RegisterMaterial( "widg_loading_circle" )
	f34_local5.alpha = 0
	local self = LUI.UIImage.new( f34_local5 )
	self:registerAnimationState( "state0", {
		alpha = 0,
		scale = -1
	} )
	self:registerAnimationState( "state1", {
		alpha = 1,
		scale = 0.6
	} )
	self:registerAnimationState( "state2", {
		alpha = 1,
		scale = 0
	} )
	self:registerAnimationState( "state3", {
		alpha = 0,
		scale = 0
	} )
	self:registerEventHandler( f34_arg2, f34_local4 )
	return self
end

function loading_animation_widget( f35_arg0, f35_arg1 )
	local f35_local0 = CoD.CreateState( nil, -75, nil, nil, CoD.AnchorTypes.None )
	f35_local0.height = LoadingAnimationDims.Height
	f35_local0.top = f35_local0.top + f35_arg1.bottomOffset
	f35_local0.width = LoadingAnimationDims.Width
	f35_local0.material = RegisterMaterial( CoD.Material.LoadingAnim )
	f35_local0.alpha = 1
	local self = LUI.UIImage.new( f35_local0 )
	self:setupOwnerdraw( CoD.Ownerdraw.CGLoadingAnimation )
	return self
end

function OnAnimateArrow( f36_arg0, f36_arg1 )
	f36_arg0.tick = f36_arg0.tick or 0
	local f36_local0 = f36_arg0:getParent()
	f36_local0:processEvent( {
		name = "tick_" .. f36_arg0.tick
	} )
	f36_arg0.tick = (f36_arg0.tick + 1) % 12
	f36_arg0.tick = f36_arg0.tick and 0 or f36_arg0.tick
end

function live_dialog_processing_widget( menu, controller )
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	local self = LUI.UIElement.new( CoD.CreateState( -15, -15, 15, 15, CoD.AnchorTypes.None ) )
	self:addElement( CreateDot( -16, 0, "tick_0" ) )
	self:addElement( CreateDot( -14, -8, "tick_1" ) )
	self:addElement( CreateDot( -8, -14, "tick_2" ) )
	self:addElement( CreateDot( 0, -16, "tick_3" ) )
	self:addElement( CreateDot( 8, -14, "tick_4" ) )
	self:addElement( CreateDot( 14, -8, "tick_5" ) )
	self:addElement( CreateDot( 16, 0, "tick_6" ) )
	self:addElement( CreateDot( 14, 8, "tick_7" ) )
	self:addElement( CreateDot( 8, 14, "tick_8" ) )
	self:addElement( CreateDot( 0, 16, "tick_9" ) )
	self:addElement( CreateDot( -8, 14, "tick_10" ) )
	self:addElement( CreateDot( -14, 8, "tick_11" ) )
	self:addElement( LUI.UITimer.new( 300 / 3, "anim_arrow", nil, false ) )
	local self = LUI.UIElement.new()
	self:registerEventHandler( "anim_arrow", OnAnimateArrow )
	self:addElement( self )
	self:addElement( self )
	return self
end

function live_dialog_popup_background()
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	self:addElement( LUI.MenuBuilder.BuildRegisteredType( "generic_menu_background", {
		top_offset = 0,
		fill_alpha = 1,
		use_background_tint = true
	} ) )
	return self
end

function AddLiveDialogFooterHelperText( f39_arg0, f39_arg1 )
	local f39_local0 = Engine.IsConsoleGame()
	if not f39_local0 then
		f39_local0 = Engine.IsGamepadEnabled()
	end
	local f39_local1 = f39_arg1.footerOffset or 0
	local f39_local2 = nil
	if f39_local0 then
		f39_local2 = LUI.ButtonHelperText.helper_text_item( nil, Engine.Localize( "@LUA_MENU_CANCEL" ), ButtonMap.button_secondary, nil, nil )
	else
		f39_local2 = LUI.ButtonHelperText.helper_text_item( ButtonMap.button_secondary, Engine.Localize( "@LUA_MENU_CANCEL" ), nil, nil, nil )
	end
	f39_local2.triggers_event = "button_secondary"
	f39_local2.id = "popup_cancel_text_id"
	local f39_local3
	if f39_local0 then
		f39_local3 = 33
		if not f39_local3 then
		
		else
			local f39_local4 = f39_local2
			local f39_local5 = f39_local2.registerAnimationState
			local f39_local6 = "default"
			local f39_local7 = {
				leftAnchor = false,
				rightAnchor = false,
				topAnchor = false,
				bottomAnchor = true,
				left = -30,
				right = 50
			}
			local f39_local8 = Engine.IsCurrentGen() and -45 or -25
			local f39_local9 = f39_local8 + f39_local1
			f39_local7.bottom = f39_local8
			f39_local7.height = f39_local3
			f39_local5( f39_local4, f39_local6, f39_local7 )
			f39_local2:animateToState( "default" )
			f39_local2:registerEventHandler( "virtual_keyboard_popup_active", MBh.EmitEvent( "popup_active" ) )
			f39_local2:setPriority( 50 )
			f39_arg0:addElement( f39_local2 )
		end
	end
	f39_local3 = CoD.TextSettings.BodyFont.Height
end

function OnIntermediateDialogGainFocus( f40_arg0, f40_arg1 )
	if f40_arg1.focusType ~= FocusType.MouseOver then
		f40_arg0:animateToState( "default" )
	end
end

function OnIntermediateDialogLostFocus( f41_arg0, f41_arg1 )
	if f41_arg1.focusType ~= FocusType.MouseOver then
		f41_arg0:animateToState( "hidden" )
	end
end

function OnPopupContainerReposition( f42_arg0, f42_arg1 )
	local f42_local0 = 10
	local f42_local1, f42_local2, f42_local3, f42_local4 = GetTextDimensions( f42_arg0.properties.message, CoD.TextSettings.BodyFont.Font, CoD.TextSettings.BodyFont.Height )
	local f42_local5 = f42_local3 - f42_local1
	local f42_local6 = LoadingAnimationDims.Width + f42_local0 + f42_local5
	local f42_local7 = f42_arg0:getChildById( "popup_text_id" )
	f42_local7:registerAnimationState( "updated", {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = false,
		rightAnchor = false,
		top = -CoD.TextSettings.BodyFont.Height,
		bottom = 0,
		left = -1 * (f42_local6 * 0.5 - LoadingAnimationDims.Width + f42_local0),
		width = f42_local5 + f42_local0
	} )
	f42_local7:animateToState( "updated", 0 )
	local f42_local8 = f42_arg0:getChildById( "loading_animation_id" )
	f42_local8:registerAnimationState( "updated", {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = false,
		rightAnchor = false,
		left = -f42_local6 * 0.5,
		height = LoadingAnimationDims.Height,
		width = LoadingAnimationDims.Width
	} )
	f42_local8:animateToState( "updated", 0 )
	f42_arg0:registerAnimationState( "updated", {
		leftAnchor = false,
		topAnchor = false,
		rightAnchor = false,
		bottomAnchor = false,
		width = f42_local6 + f42_local0 * 2,
		height = DialogPopupDims.Height
	} )
	f42_arg0:animateToState( "updated" )
end

function live_dialog_text_box_with_cancel( f43_arg0, f43_arg1 )
	f43_arg1.isLiveWithCancel = true
	f43_arg1.message_text = f43_arg1.message
	return LUI.MenuBuilder.BuildRegisteredType( "waiting_popup", f43_arg1 )
end

function live_dialog_text_box( f44_arg0, f44_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "waiting_popup", {
		isLive = true,
		message_text = f44_arg1.message
	} )
end

function popup_connecting( f45_arg0, f45_arg1 )
	local f45_local0 = LUI.MenuBuilder.BuildRegisteredType( "live_dialog_text_box_with_cancel", {
		message = Engine.Localize( "@XBOXLIVE_POPUP_CONNECTION" ),
		cancel_func = LUI.common_menus.CommonPopups.CancelAcceptingInvite
	} )
	f45_local0.id = "popup_connecting_id"
	return f45_local0
end

local f0_local16 = function ( f46_arg0, f46_arg1 )
	local f46_local0 = Engine.Localize( "@MENU_NOTICE" )
	local f46_local1 = Engine.GetDvarString( "online_end_reason" )
	f46_arg0:dispatchEventToChildren( {
		name = "update_title",
		title_text = f46_local0
	} )
	f46_arg0:dispatchEventToChildren( {
		name = "update_message",
		message_text = f46_local1
	} )
end

local f0_local17 = function ( f47_arg0, f47_arg1 )
	Engine.ResolveError( f47_arg1.controller )
end

local f0_local18 = function ( f48_arg0, f48_arg1 )
	local f48_local0 = LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		confirmation_action = f0_local17
	} )
	f48_local0:registerEventHandler( "menu_create", f0_local16 )
	return f48_local0
end

local f0_local19 = function ( f49_arg0, f49_arg1 )
	LUI.FlowManager.RequestCloseAllMenus( f49_arg0 )
	Engine.TogglePause()
	f49_arg0:dispatchEventToRoot( {
		name = "toggle_pause_off"
	} )
end

function save_and_quit_yes_action( f50_arg0, f50_arg1 )
	Engine.SendSPMatchData()
	Engine.FlashFade( 0, 0, 0, 255, 20 )
	LUI.FlowManager.RequestLeaveMenuByName( "save_game_info_hud" )
	LUI.FlowManager.RequestAddMenu( f50_arg0, "save_game_info_hud", true, f50_arg1.controller, false )
end

local f0_local20 = function ( f51_arg0, f51_arg1 )
	Engine.SendSPMatchData()
	LUI.FlowManager.RequestLeaveMenuByName( "save_game_info_hud" )
	LUI.FlowManager.RequestAddMenu( f51_arg0, "save_game_info_hud", true, f51_arg1.controller, false, {
		continueAfterSave = true
	} )
end

local f0_local21 = function ( f52_arg0, f52_arg1 )
	Engine.Exec( "disconnect" )
	Engine.SetDvarBool( "inpubliclobby", false )
	Engine.AcceptInvite()
end

local f0_local22 = function ( f53_arg0, f53_arg1 )
	if Engine.IsXB3() or Engine.IsPCApp() then
		Friends.DeclineLivePartyInvitation( f53_arg1.controller )
	end
	Engine.SaveRevert()
end

local f0_local23 = function ( f54_arg0, f54_arg1 )
	local f54_local0 = Engine.GetDvarBool( "sv_saveDeviceAvailable" )
	if not f54_local0 then
		f54_local0 = Engine.IsPS4()
	end
	if f54_local0 then
		LUI.FlowManager.RequestLeaveMenu( f54_arg0 )
	end
end

function SaveGameErrorCreate( f55_arg0, f55_arg1 )
	LUI.FlowManager.RequestLeaveMenuByName( "save_game_info_hud" )
	local f55_local0 = Engine.GetDvarBool( "sv_saveDeviceAvailable" )
	if not f55_local0 then
		f55_local0 = Engine.IsPS4()
	end
	if not f55_local0 then
		f55_arg0:addElement( LUI.UITimer.new( 200, "save_game_popup_tick" ) )
		f55_arg0:registerEventHandler( "save_game_popup_tick", f0_local23 )
	end
end

function SaveGameErrorFeeder( f56_arg0 )
	local f56_local0 = Engine.GetDvarBool( "sv_saveDeviceAvailable" )
	if not f56_local0 then
		f56_local0 = Engine.IsPS4()
	end
	local f56_local1 = Engine.GetDvarBool( "sv_saveGameAvailable" )
	local f56_local2 = {}
	local f56_local3 = ""
	if f56_local0 then
		if f56_local1 then
			f56_local3 = Engine.Localize( "@MENU_WARNING_CHECKPOINT_RESET" )
		elseif Engine.IsPS4() then
			f56_local3 = Engine.Localize( "@PLATFORM_SAVE_ERROR" )
		else
			f56_local3 = Engine.Localize( "@MENU_NO_SAVE_DEVICE_WARNING_NOW_OKAY" )
		end
	else
		f56_local3 = Engine.Localize( "@MENU_NO_SAVE_DEVICE_WARNING" )
	end
	f56_local2[#f56_local2 + 1] = {
		type = "UIText",
		id = "desc_text",
		states = {
			default = {
				font = CoD.TextSettings.BodyFont.Font,
				alignment = LUI.Alignment.Center,
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = false,
				left = 12,
				right = -12,
				top = 0,
				bottom = CoD.TextSettings.BodyFont.Height,
				red = 1,
				green = 1,
				blue = 1
			}
		},
		properties = {
			text = f56_local3
		}
	}
	local f56_local4 = ""
	if f56_local0 then
		if f56_local1 then
			f56_local4 = Engine.Localize( "@MENU_OVERWRITE_SAVE" )
		else
			f56_local4 = Engine.Localize( "@MENU_RETRY_SAVE" )
		end
	else
		f56_local4 = Engine.Localize( "@PLATFORM_SELECT_SAVE_DEVICE" )
	end
	f56_local2[#f56_local2 + 1] = {
		type = "UIGenericButton",
		id = "first_button",
		properties = {
			style = GenericButtonSettings.Styles.GlassButton,
			substyle = GenericButtonSettings.Styles.GlassButton.SubStyles.Popup,
			button_text = f56_local4,
			text_align_without_content = LUI.Alignment.Center,
			button_action_func = function ( f128_arg0, f128_arg1 )
				if f56_local0 then
					if f56_local1 then
						Engine.DeleteSave( f128_arg1.controller )
					end
					f0_local20( f128_arg0, f128_arg1 )
				else
					Engine.ForceSelectSaveDevice( f128_arg1.controller )
					local f128_local0 = Engine.GetLuiRoot()
					if f128_local0 and not LUI.FlowManager.IsInStack( f128_local0.flowManager, "sp_pause_menu" ) then
						Engine.TogglePause( f128_arg0, f128_arg1 )
					end
				end
			end
		}
	}
	f56_local2[#f56_local2 + 1] = {
		type = "UIGenericButton",
		id = "resume_game_nosave",
		properties = {
			style = GenericButtonSettings.Styles.GlassButton,
			substyle = GenericButtonSettings.Styles.GlassButton.SubStyles.Popup,
			button_text = Engine.Localize( "@MENU_RESUMEGAME_NOSAVE" ),
			text_align_without_content = LUI.Alignment.Center,
			button_action_func = function ( f129_arg0, f129_arg1 )
				f0_local19( f129_arg0, f129_arg1 )
				Engine.SaveRevert()
				Engine.FlashFade( 0, 0, 0, 0, 0 )
			end
		}
	}
	f56_local2[#f56_local2 + 1] = {
		type = "UIGenericButton",
		id = "quit_nosave",
		properties = {
			style = GenericButtonSettings.Styles.GlassButton,
			substyle = GenericButtonSettings.Styles.GlassButton.SubStyles.Popup,
			button_text = Engine.Localize( "@MENU_QUIT_NO_SAVE" ),
			text_align_without_content = LUI.Alignment.Center,
			button_action_func = function ( f130_arg0, f130_arg1 )
				Engine.SaveRevert()
				LUI.FlowManager.RequestAddMenu( f130_arg0, "quit_confirm_popup", false, f130_arg1.controller, false )
			end
		}
	}
	if f56_local0 and not Engine.IsPS4() then
		f56_local2[#f56_local2 + 1] = {
			type = "UIGenericButton",
			id = "reselect_save_device",
			properties = {
				style = GenericButtonSettings.Styles.GlassButton,
				substyle = GenericButtonSettings.Styles.GlassButton.SubStyles.Popup,
				button_text = Engine.Localize( "@PLATFORM_RESELECT_SAVE_DEVICE" ),
				text_align_without_content = LUI.Alignment.Center,
				button_action_func = function ( f131_arg0, f131_arg1 )
					Engine.ForceSelectSaveDevice( f131_arg1.controller )
				end
			}
		}
	end
	return f56_local2
end

function save_game_error_popup()
	local f57_local0 = Engine.GetDvarBool( "sv_saveDeviceAvailable" )
	local f57_local1 = nil
	if f57_local0 then
		if Engine.IsPS4() then
			f57_local1 = Engine.Localize( "@MENU_ERROR" )
		else
			f57_local1 = Engine.Localize( "@PLATFORM_SAVE_ERROR_NOW_OKAY" )
		end
	else
		f57_local1 = Engine.Localize( "@PLATFORM_SAVE_ERROR" )
	end
	return {
		type = "generic_selectionList_popup",
		id = "save_game_error_popup_id",
		properties = {
			cancel_will_close = false,
			popup_title = f57_local1,
			popup_childfeeder = SaveGameErrorFeeder
		},
		handlers = {
			menu_create = SaveGameErrorCreate
		}
	}
end

function LostSelectedSaveDevicePopupConfirm( f58_arg0, f58_arg1 )
	Engine.Exec( "select_save_device" )
end

local f0_local24 = function ( f59_arg0, f59_arg1 )
	local f59_local0 = LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		message_text = Engine.Localize( "@PLATFORM_SAVE_DEVICE_LOST" ),
		popup_title = Engine.Localize( "@MENU_WARNING" )
	} )
	f59_local0:registerEventHandler( "menu_close", LostSelectedSaveDevicePopupConfirm )
	return f59_local0
end

local f0_local25 = function ( f60_arg0, f60_arg1 )
	CoDAnywhere.IntegrateCACFile()
end

local f0_local26 = function ( f61_arg0, f61_arg1 )
	CoDAnywhere.DeleteCACFile()
end

function cac_elite_popup( f62_arg0, f62_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_COD_MOBILE_APP_DATA_TITLE" ),
		squadMembersChanged = 1,
		loadoutsChanged = 2,
		modifiedDay = 1,
		modifiedMonth = 10,
		modifiedYear = 2013,
		message_text = Engine.GetDvarString( "mobile_app_data_available" ),
		yes_action = f0_local25,
		no_action = f0_local26,
		yes_text = Engine.Localize( "@MENU_YES" ),
		no_text = Engine.Localize( "@MENU_NO" )
	} )
end

function quitYesAction( f63_arg0, f63_arg1 )
	Engine.Exec( "disconnect" )
end

function quit_no_save_confirm_popup( f64_arg0, f64_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@PLATFORM_QUIT" ),
		message_text = Engine.Localize( "@MENU_QUIT_WARNING" ),
		yes_action = quitYesAction,
		yes_text = Engine.Localize( "@MENU_QUIT" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

function quit_confirm_popup( f65_arg0, f65_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@PLATFORM_QUIT" ),
		message_text = Engine.Localize( "@MENU_ARE_YOU_SURE_QUIT" ),
		yes_action = quitYesAction,
		yes_text = Engine.Localize( "@MENU_QUIT" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

function save_and_quit_confirm_popup( f66_arg0, f66_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@PLATFORM_SAVE_AND_QUIT" ),
		message_text = Engine.Localize( "@MENU_SAVEQUIT_TEXT" ),
		yes_action = save_and_quit_yes_action,
		yes_text = Engine.Localize( "@CGAME_CONTINUE_SAVING" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

function save_and_quit_confirm_invited_popup( f67_arg0, f67_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_CONTINUE_SAVING" ),
		message_text = Engine.Localize( "@MENU_SAVEQUIT_TEXT" ),
		yes_action = save_and_quit_yes_action,
		no_action = f0_local21,
		yes_text = Engine.Localize( "@CGAME_CONTINUE_SAVING" ),
		no_text = Engine.Localize( "@MENU_CONTINUE_WITHOUT_SAVING" ),
		cancel_means_no = false,
		cancel_action = f0_local22
	} )
end

local f0_local27 = function ()
	return {
		type = "UIText",
		id = "save_game_loading_hud_id",
		properties = {
			text = Engine.Localize( "@CGAME_NOW_SAVING" ),
			textStyle = CoD.TextStyle.Shadowed
		},
		states = {
			default = {
				topAnchor = true,
				bottomAnchor = false,
				leftAnchor = true,
				rightAnchor = true,
				top = 80,
				bottom = 120,
				left = 0,
				right = 0,
				font = CoD.TextSettings.TitleFont.Font,
				alignment = LUI.Alignment.Center,
				red = 1,
				green = 1,
				blue = 1
			}
		}
	}
end

local f0_local28 = function ( f69_arg0, f69_arg1 )
	local f69_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f69_arg0 )
	if not f69_local0.continueAfterSave then
		Engine.FlashFade( 0, 0, 0, 255, 20 )
		Engine.SetSaveExecOnSuccess( "disconnect" )
		Engine.SetDvarBool( "ui_skipMainLockout", true )
	end
	Engine.SaveDelay()
	Engine.WriteSave()
end

local f0_local29 = function ( f70_arg0, f70_arg1 )
	if f70_arg1.doContinue then
		local f70_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f70_arg0 )
		if f70_local0.continueAfterSave then
			f0_local19( f70_arg0, f70_arg1 )
			return 
		end
	end
	if f70_arg1.finished then
		Engine.SaveComplete()
	end
end

local f0_local30 = function ()
	return {
		type = "UIElement",
		id = "save_game_info_hud_id",
		states = {
			default = {
				topAnchor = true,
				leftAnchor = true,
				rightAnchor = true,
				botomAnchor = true
			}
		},
		handlers = {
			menu_create = f0_local28,
			save_event = f0_local29
		},
		children = {
			{
				type = "UIOwnerdraw",
				id = "save_game_info_background",
				properties = {
					ownerDraw = CoD.Ownerdraw.CGMissionObjectiveBackdrop
				},
				states = {
					default = {
						topAnchor = true,
						leftAnchor = true,
						bottomAnchor = true,
						rightAnchor = true,
						red = 0,
						green = 0,
						blue = 0,
						alpha = 0.5
					}
				}
			},
			{
				type = "UIText",
				id = "save_game_info_text",
				properties = {
					text = Engine.Localize( "@CGAME_NOW_SAVING" ),
					textStyle = CoD.TextStyle.Shadowed
				},
				states = {
					default = {
						topAnchor = true,
						bottomAnchor = false,
						leftAnchor = true,
						rightAnchor = false,
						top = 40,
						bottom = 60,
						left = CoD.HudStandards.borderX * 2,
						font = CoD.TextSettings.BodyFontBold18.Font,
						alignment = LUI.Alignment.Left,
						red = 1,
						green = 1,
						blue = 1
					}
				}
			}
		}
	}
end

function menu_ps3_ui_bg()
	return {
		type = "UIImage",
		states = {
			default = {
				topAnchor = true,
				bottomAnchor = true,
				leftAnchor = true,
				rightAnchor = true,
				top = 0,
				bottom = 0,
				left = 0,
				right = 0,
				material = RegisterMaterial( "white" ),
				red = 0.1,
				green = 0.14,
				blue = 0.16,
				alpha = 0.85
			}
		}
	}
end

function controllerremoved_popmenu()
	if Engine.IsConsoleGame() then
		local f73_local0, f73_local1, f73_local2 = nil
		if Engine.IsXB3() == true then
			f73_local0 = "h1_deco_option_controller_x1"
			f73_local1 = 240
			f73_local2 = 308
		else
			f73_local0 = "h1_deco_option_controller_ps4"
			f73_local1 = 210
		end
		local f73_local3 = 155
		local f73_local4 = 330
		local f73_local5 = 35
		local f73_local6 = CoD.TextSettings.BodyFontSmall.Font
		local f73_local7 = CoD.TextSettings.BodyFontSmall.Height
		local f73_local8 = Engine.Localize( "@PLATFORM_CONTROLLER_DISCONNECTED" )
		local self = LUI.UIElement.new( CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.None ) )
		if Engine.IsXB3() then
			self.handleGamepadButton = function ( f136_arg0, f136_arg1 )
				DebugPrint( "handleGamepadButton received controller change to " .. f136_arg1.controller )
				if f136_arg0.m_ownerController ~= nil then
					Engine.ChangeController( f136_arg0.m_ownerController, f136_arg1.controller )
				else
					Engine.ChangeController( f136_arg1.controller )
				end
				return true
			end
			
		end
		local f73_local10 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.All )
		f73_local10.material = RegisterMaterial( "white" )
		f73_local10.color = Colors.black
		f73_local10.alpha = 0.7
		self:addElement( LUI.UIImage.new( f73_local10 ) )
		local f73_local11 = CoD.CreateState( nil, -f73_local3, nil, nil, CoD.AnchorTypes.None )
		f73_local11.height = f73_local1
		f73_local11.width = f73_local4
		f73_local11.material = RegisterMaterial( f73_local0 )
		f73_local11.alpha = 0.75
		local self = LUI.UIImage.new( f73_local11 )
		self:addElement( self )
		if not Engine.IsPS4() then
			local f73_local13 = CoD.CreateState( -35, f73_local2, nil, nil, CoD.AnchorTypes.Top )
			f73_local13.height = 70
			f73_local13.width = 70
			f73_local13.material = RegisterMaterial( "h1_ui_icon_unlock_warning" )
			self:addElement( LUI.UIImage.new( f73_local13 ) )
		end
		local f73_local13 = CoD.CreateState( 3, f73_local1 + f73_local5, nil, nil, CoD.AnchorTypes.TopLeftRight )
		f73_local13.font = f73_local6
		f73_local13.height = f73_local7
		f73_local13.textAlignment = LUI.Alignment.Center
		local self = LUI.UIText.new( f73_local13 )
		self:setText( f73_local8 )
		self:addElement( self )
		if Engine.IsXB3() then
			local self = LUI.UIElement.new( CoD.CreateState( 560, -150, -560, -100, CoD.AnchorTypes.BottomLeftRight ) )
			self:addElement( self )
			local f73_local16 = LUI.MenuBuilder.BuildRegisteredType( "UIGenericButton", {
				button_text = Engine.Localize( "@LUA_MENU_CONTINUE" ),
				text_align_without_content = LUI.Alignment.Center
			} )
			f73_local16:makeFocusable()
			self:addElement( f73_local16 )
		end
		self:setupFullWindowElement()
		return self
	else
		return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
			popup_title = Engine.Localize( "@MENU_NOTICE" ),
			message_text = Engine.Localize( "@PLATFORM_CONTROLLER_DISCONNECTED" ),
			button_text = Engine.Localize( "@MENU_CONTINUE" ),
			confirmation_action = function ( f137_arg0, f137_arg1 )
				Engine.DismissControllerRemovedPopup( f137_arg1.controller )
				Engine.ExecNow( "profile_toggleEnableGamepad " .. f137_arg1.controller )
				Engine.ExecNow( "updategamerprofile" )
				f137_arg0:dispatchEventToRoot( {
					name = "toggle_enable_gamepad",
					dispatchChildren = true
				} )
				f137_arg0:dispatchEventToRoot( {
					name = "check_switch_to_azerty"
				} )
			end
			
		} )
	end
end

if not Engine.IsConsoleGame() then
	function steam_overlay_required( f74_arg0, f74_arg1 )
		return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
			popup_title = Engine.Localize( "@MENU_NOTICE" ),
			message_text = Engine.Localize( "@PLATFORM_UI_STEAM_OVERLAY_REQUIRED" )
		} )
	end
	
end
function ConfirmProfileChange( f75_arg0, f75_arg1 )
	DebugPrint( "Confirm profile change" )
	Engine.ConfirmXB3UserProfileChange( f75_arg1.controller )
end

function IgnoreProfileChange( f76_arg0, f76_arg1 )
	DebugPrint( "Ignore profile change" )
	Engine.IgnoreXB3UserProfileChange( f76_arg1.controller )
end

function user_changed_confirm_mp( f77_arg0, f77_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		message_text = Engine.Localize( "@MENU_PROFILE_PAIRING_CONFIRM" ),
		popup_title = Engine.Localize( "@MENU_WARNING" ),
		yes_text = Engine.Localize( "@MENU_YES" ),
		no_text = Engine.Localize( "@MENU_NO" ),
		yes_action = IgnoreProfileChange,
		no_action = ConfirmProfileChange,
		default_focus_index = 1
	} )
end

function controller_changed_confirm_mp( f78_arg0, f78_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		message_text = Engine.Localize( "@PLATFORM_UI_CONTROLLER_PAIRING_CONFIRM" ),
		popup_title = Engine.Localize( "@MENU_WARNING" ),
		confirmation_action = function ( f14_arg0, f14_arg1 )
			if Engine.IsXB3() then
				DebugPrint( "controller_changed_confirm_mp received controller change to " .. f14_arg1.controller )
				if f14_arg0.m_ownerController ~= nil then
					Engine.ChangeController( f14_arg0.m_ownerController, f14_arg1.controller )
				else
					Engine.ChangeController( f14_arg1.controller )
				end
				Engine.ResetControllerChange()
			end
		end
		
	} )
end

function recipe_load_failed_popup( f79_arg0, f79_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@MPUI_RECIPE_LOAD_FAILED" )
	} )
end

function recipe_save_failed_popup( f80_arg0, f80_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@MPUI_RECIPE_SAVE_FAILED" )
	} )
end

function recipe_save_failed_no_guests_popup( f81_arg0, f81_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@MPUI_RULES_NOGUESTSAVE" )
	} )
end

function recipe_save_failed_no_device_popup( f82_arg0, f82_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@MPUI_RULES_NOSAVEDEVICE" )
	} )
end

function ChooseLanguageOptions()
	local f83_local0 = {}
	local f83_local1 = Engine.GetSupportedLanguages()
	for f83_local2 = 1, #f83_local1, 1 do
		f83_local0[#f83_local0 + 1] = {
			type = "UIGenericButton",
			id = "language_button_" .. #f83_local0,
			listDefaultFocus = f83_local1[f83_local2].id == Engine.GetCurrentLanguage(),
			properties = {
				style = GenericButtonSettings.Styles.GlassButton,
				substyle = GenericButtonSettings.Styles.GlassButton.SubStyles.Popup,
				button_text = f83_local1[f83_local2].name,
				language = f83_local1[f83_local2].id,
				button_action_func = function ( f18_arg0, f18_arg1 )
					if f18_arg0.properties.language ~= Engine.GetCurrentLanguage() then
						LUI.FlowManager.RequestAddMenu( f18_arg0, "choose_language_confirm_popup", false, f18_arg1.controller, true, {
							language = f18_arg0.properties.language
						} )
					else
						Engine.SetLanguage( f18_arg0.properties.language )
						LUI.FlowManager.RequestLeaveMenu( f18_arg0 )
						local f18_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f18_arg0 )
						if f18_local0 and f18_local0.callback ~= nil then
							f18_local0.callback()
						end
					end
				end
			}
		}
		if f83_local1[f83_local2].name == "Arabic" then
			local f83_local5 = f83_local0[#f83_local0]
			local f83_local6 = f83_local5.properties.substyle.height
			local f83_local7 = RegisterMaterial( "ui_language_arabic" )
			local f83_local8, f83_local9 = GetMaterialDimensions( f83_local7 )
			f83_local8 = f83_local6 * f83_local8 / f83_local9
			f83_local9 = f83_local6
			local f83_local10 = RegisterMaterial( "ui_language_arabic_focused" )
			local f83_local11, f83_local12 = GetMaterialDimensions( f83_local10 )
			f83_local11 = f83_local6 * f83_local11 / f83_local12
			f83_local12 = f83_local6
			f83_local5.properties.button_text = ""
			f83_local5.children = {
				{
					type = "UIImage",
					states = {
						default = {
							leftAnchor = false,
							topAnchor = false,
							rightAnchor = false,
							bottomAnchor = false,
							material = f83_local7,
							width = f83_local8,
							height = f83_local9
						},
						focused = {
							leftAnchor = false,
							topAnchor = false,
							rightAnchor = false,
							bottomAnchor = false,
							material = f83_local10,
							width = f83_local11,
							height = f83_local12
						}
					},
					handlers = {
						gain_focus = function ( f19_arg0 )
							f19_arg0:animateToState( "focused" )
						end,
						lose_focus = function ( f20_arg0 )
							f20_arg0:animateToState( "default" )
						end
					}
				}
			}
		end
	end
	return f83_local0
end

function choose_language_popup()
	return {
		type = "generic_selectionList_popup",
		id = "choose_language_popup_id",
		properties = {
			popup_title = Engine.Localize( "@LUA_MENU_CHOOSE_LANGUAGE" ),
			popup_childfeeder = ChooseLanguageOptions
		},
		handlers = {
			menu_create = function ( f32_arg0 )
				if Engine.GetCurrentLanguage() ~= CoD.Language.Arabic then
					local f32_local0 = Engine.GetSupportedLanguages()
					for f32_local1 = 1, #f32_local0, 1 do
						if f32_local0[f32_local1].name == "Arabic" then
							local f32_local4 = f32_arg0:getFirstDescendentById( "generic_menu_titlebar_background_id" )
							local f32_local5 = CoD.TextSettings.TitleFontMediumLarge.Height
							local f32_local6 = RegisterMaterial( "ui_choose_language_arabic" )
							local f32_local7, f32_local8 = GetMaterialDimensions( f32_local6 )
							LUI.MenuBuilder.BuildAddChild( f32_local4, {
								type = "UIImage",
								states = {
									default = {
										leftAnchor = false,
										topAnchor = true,
										rightAnchor = true,
										bottomAnchor = false,
										material = f32_local6,
										width = f32_local5 * f32_local7 / f32_local8,
										height = f32_local5
									}
								}
							} )
							break
						end
					end
				end
			end
			
		}
	}
end

local f0_local31 = function ( f85_arg0, f85_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@LUA_MENU_CONFIRM_LANGUAGE" ),
		button_text = Engine.Localize( "@MENU_CONTINUE" ),
		confirmation_action = function ( f45_arg0, f45_arg1 )
			local f45_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f45_arg0 )
			Engine.SetLanguage( f45_local0.language )
		end
		
	} )
end

local f0_local32 = function ( f86_arg0, f86_arg1 )
	Engine.ExecNow( "profile_toggleEnableGamepad 1" )
	Engine.ExecNow( "updategamerprofile" )
	f86_arg0:dispatchEventToRoot( {
		name = "toggle_enable_gamepad",
		dispatchChildren = true
	} )
	f86_arg0:dispatchEventToRoot( {
		name = "check_switch_to_azerty"
	} )
end

local f0_local33 = function ( f87_arg0, f87_arg1 )
	Engine.ExecNow( "profile_toggleEnableGamepad 0" )
	Engine.ExecNow( "updategamerprofile" )
	LUI.FlowManager.tryAddMouseCursor( Engine.GetLuiRoot() )
	f87_arg0:dispatchEventToRoot( {
		name = "toggle_enable_gamepad",
		dispatchChildren = true
	} )
	f87_arg0:dispatchEventToRoot( {
		name = "check_switch_to_azerty"
	} )
end

local f0_local34 = function ( f88_arg0, f88_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@MENU_NO_CONTROLLER_INITIAL" ),
		yes_action = f0_local33,
		no_action = f0_local32
	} )
end

local f0_local35 = function ( f89_arg0, f89_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@MENU_CONTROLLER_INITIAL" ),
		yes_action = f0_local32,
		no_action = f0_local33
	} )
end

local f0_local36 = function ()
	Engine.SetDvarBool( "cg_IsWarnedAZERTY", true )
end

local f0_local37 = function ()
	Engine.Exec( "exec default_smp_controls_azerty.cfg" )
	f0_local36()
	Engine.SetDvarBool( "cg_IsUsingAZERTY", true )
end

local f0_local38 = function ()
	Engine.Exec( "exec default_smp_controls.cfg" )
	Engine.SetDvarBool( "cg_IsUsingAZERTY", false )
end

local f0_local39 = function ( f93_arg0, f93_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@LUA_MENU_KEYBOARD_LAYOUT" ),
		message_text = Engine.Localize( "@LUA_MENU_KEYBOARD_LAYOUT_DESC1" ) .. "\n\n" .. Engine.Localize( "@LUA_MENU_KEYBOARD_LAYOUT_DESC2" ),
		yes_action = f0_local36,
		no_action = f0_local37,
		cancel_will_close = false,
		yes_text = Engine.Localize( "@LUA_MENU_QWERTY" ),
		no_text = Engine.Localize( "@LUA_MENU_AZERTY" )
	} )
end

local f0_local40 = function ( f94_arg0, f94_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@LUA_MENU_KEYBOARD_LAYOUT" ),
		message_text = Engine.Localize( "@LUA_MENU_KEYBOARD_LAYOUT_DESC1" ),
		yes_action = f0_local38,
		no_action = f0_local37,
		cancel_means_no = false,
		yes_text = Engine.Localize( "@LUA_MENU_QWERTY" ),
		no_text = Engine.Localize( "@LUA_MENU_AZERTY" )
	} )
end

function invertAxisAction( f95_arg0, f95_arg1 )
	if Engine.IsGamepadEnabled() == true then
		if Engine.GetProfileData( "invertedPitch" ) then
			Engine.ExecNow( "profile_toggleInvertedPitch 0", f95_arg1.controller )
		else
			Engine.ExecNow( "profile_toggleInvertedPitch 1", f95_arg1.controller )
		end
		Engine.Exec( "updategamerprofile" )
	elseif Engine.GetDvarBool( "ui_mousePitch" ) then
		Engine.SetDvarBool( "ui_mousePitch", false )
		Engine.SetDvarFloat( "m_pitch", MousePitchTable.PitchFloat )
	else
		Engine.SetDvarBool( "ui_mousePitch", true )
		Engine.SetDvarFloat( "m_pitch", -MousePitchTable.PitchFloat )
	end
	Engine.PopupClosed( f95_arg1.controller, "try_invert" )
end

function invertAxisCancelAction( f96_arg0, f96_arg1 )
	Engine.PopupClosed( f96_arg1.controller, "accept_normal" )
end

function invert_axis_popup( f97_arg0, f97_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@TRAINER_AXIS_OPTION_MENU1_ALL" ),
		yes_action = invertAxisAction,
		yes_text = Engine.Localize( "@MENU_YES" ),
		no_action = invertAxisCancelAction,
		no_text = Engine.Localize( "@MENU_NO" )
	} )
end

function invert_axis_confirm_popup( f98_arg0, f98_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@TRAINER_AXIS_OPTION_MENU2_ALL" ),
		yes_action = invertAxisCancelAction,
		yes_text = Engine.Localize( "@MENU_YES" ),
		no_action = invertAxisAction,
		no_text = Engine.Localize( "@MENU_NO" )
	} )
end

local f0_local41 = function ( f99_arg0, f99_arg1 )
	f99_arg0:setText( f99_arg1.message_text )
end

local f0_local42 = function ( f100_arg0, f100_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( f100_arg1.confirmationString ),
		yes_action = f100_arg1.acceptFunc,
		yes_text = Engine.Localize( "@MENU_YES" ),
		no_action = function ( f49_arg0, f49_arg1 )
			LUI.FlowManager.RequestLeaveMenu( f49_arg0 )
		end
		,
		no_text = Engine.Localize( "@MENU_NO" )
	} )
end

local f0_local43 = function ( f101_arg0, f101_arg1 )
	return f0_local42( f101_arg0, f101_arg1 )
end

local f0_local44 = function ( f102_arg0, f102_arg1 )
	LUI.FlowManager.RequestLeaveMenu( f102_arg0 )
	Engine.PopupClosed( f102_arg1.controller, "tryagain" )
end

function difficulty_childfeeder( f103_arg0 )
	local f103_local0 = {}
	local self = LUI.UIElement.new()
	self.type = "difficulty_selection_menu_detailed"
	self.id = self.type .. "_container"
	local f103_local2 = nil
	if f103_arg0.subContainer then
		local subContainer = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
		subContainer.id = self.type .. "_sub_container"
		self:addElement( subContainer )
		self.subContainer = subContainer
		
		f103_local2 = subContainer
	else
		f103_local2 = self
	end
	local self = nil
	if f103_arg0.scrollInSplitScreen and GameX.IsSplitscreen() then
		listState.bottom = listTop + 265
		self = LUI.UIScrollingVerticalList.new( listState, nil, {
			use_arrows = true,
			sendScrollEvents = true,
			autoScroll = LUI.AutoScroll.AnchoredEdges,
			autoScrollTime = 200
		} )
		self.id = self.type .. "_list"
		f103_local2:addElement( self )
	else
		self = LUI.UIVerticalList.build( nil, {
			defaultState = listState,
			noWrap = f103_arg0.listNoWrap
		} )
		self.id = self.type .. "_list"
		f103_local2:addElement( self )
	end
	self.buttonCount = 0
	self.list = self
	f103_local0[#f103_local0 + 1] = {
		type = "UIElement",
		id = "difficulty_info_text_wrapper_id",
		states = {
			default = {
				topAnchor = true,
				bottomAnchor = false,
				leftAnchor = true,
				rightAnchor = true,
				top = 0,
				bottom = CoD.TextSettings.PopupFont.Height * 2,
				left = 12,
				right = -12
			}
		},
		children = {
			{
				type = "UIText",
				id = "difficulty_info_text_id",
				states = {
					default = {
						topAnchor = true,
						bottomAnchor = false,
						leftAnchor = true,
						rightAnchor = true,
						top = 0,
						bottom = CoD.TextSettings.PopupFont.Height,
						left = 0,
						right = 0,
						font = CoD.TextSettings.PopupFont.Font,
						color = Colors.h1.light_grey,
						alignment = LUI.AdjustAlignmentForLanguage( f103_arg0.message_text_alignment )
					}
				},
				handlers = {
					update_info_text = f0_local41
				}
			}
		}
	}
	for f103_local9, f103_local10 in pairs( CoD.DifficultyList ) do
		if not f103_arg0.specialops or f103_local9 ~= 1 then
			local f103_local7 = Engine.GetDvarInt( "g_gameskill" ) + 1
			if f103_arg0.recommendDifficulty then
				f103_local7 = Engine.GetDvarInt( "recommended_gameskill" ) + 1
			end
			local f103_local8 = f103_local10.text
			if f103_local7 == f103_local9 and f103_arg0.recommendDifficulty then
				f103_local8 = f103_local10.textRecommended
			end
			f103_local0[#f103_local0 + 1] = {
				type = "UIGenericButton",
				id = "difficulty_button_" .. f103_local9 .. "_id",
				listDefaultFocus = f103_local9 == f103_local7,
				audio = {
					button_over = CoD.SFX.SubMenuMouseOver
				},
				properties = {
					button_text = f103_local8,
					button_action_func = function ( f15_arg0, f15_arg1 )
						local f15_local0 = function ( f13_arg0, f13_arg1 )
							if not f103_arg0.fakeDifficultySelection then
								CoD.ChangeDifficulty( f103_local10.value )
							end
							if f103_arg0.acceptFunc then
								f103_arg0.acceptFunc( f13_arg0, f13_arg1 )
							else
								LUI.FlowManager.RequestLeaveMenuByName( "difficulty_selection_menu" )
								Engine.PopupClosed( f13_arg1.controller, "continue" )
							end
							if f103_arg0.extraAcceptFunc then
								f103_arg0.extraAcceptFunc( f13_arg0, f13_arg1, f103_local10.value )
							end
						end
						
						if f103_arg0.recommendDifficulty and (f103_local10.value == 3 or f103_local7 - 1 < f103_local10.value) then
							local f15_local1 = function ( f14_arg0, f14_arg1 )
								LUI.FlowManager.RequestAddMenu( f14_arg0, "difficultyConfirmationVeteran", false, f14_arg1.controller, false, {
									acceptFunc = f15_local0,
									confirmationString = Engine.Localize( "@MENU_SP_ARE_YOU_ABSOLUTELY_SURE" )
								} )
							end
							
							local f15_local2 = ""
							if f103_local10.value == 3 then
								f15_local2 = Engine.Localize( "@MENU_SP_VETERAN_IS_EXTREMELY_DIFFICULT" )
							elseif f103_local10.value == 2 then
								f15_local2 = Engine.Localize( "@MENU_SP_NOT_RECOMMENDED_HARDENED" )
							elseif f103_local10.value == 1 then
								f15_local2 = Engine.Localize( "@MENU_SP_NOT_RECOMMENDED_REGULAR" )
							end
							local f15_local3 = f15_local0
							if f103_local10.value == 3 then
								f15_local3 = f15_local1
							end
							LUI.FlowManager.RequestAddMenu( f15_arg0, "difficultyConfirmation", false, f15_arg1.controller, false, {
								acceptFunc = f15_local3,
								confirmationString = f15_local2
							} )
						else
							f15_local0( f15_arg0, f15_arg1 )
						end
					end,
					text_align_without_content = LUI.Alignment.Center,
					fade_in = GenericPopupAnimationSettings.Buttons.DelayIn,
					parent_popup = nil,
					button_over_func = function ( f16_arg0, f16_arg1 )
						f16_arg0:dispatchEventToRoot( {
							name = "update_info_text",
							message_text = f103_local10.description
						} )
					end
				}
			}
		end
	end
	if f103_arg0.tryAgainAvailable then
		subContainer = 10
		f103_local0[#f103_local0 + 1] = {
			type = "UIElement",
			id = "difficulty_try_again_separator_wrapper_id",
			states = {
				default = {
					topAnchor = true,
					bottomAnchor = false,
					leftAnchor = true,
					rightAnchor = true,
					top = 0,
					bottom = subContainer,
					left = 0,
					right = 0
				}
			},
			children = {
				{
					type = "UIImage",
					id = "difficulty_try_again_separator_id",
					states = {
						default = {
							topAnchor = true,
							bottomAnchor = false,
							leftAnchor = true,
							rightAnchor = true,
							top = subContainer / 2 - 3,
							bottom = subContainer / 2 + 2,
							left = 98,
							right = -100,
							material = RegisterMaterial( "h2_ui_divider_yellow" )
						}
					}
				}
			}
		}
		f103_local0[#f103_local0 + 1] = {
			type = "UIGenericButton",
			id = "difficulty_try_again_button_id",
			audio = {
				button_over = CoD.SFX.SubMenuMouseOver
			},
			properties = {
				button_text = Engine.Localize( "MENU_TRY_AGAIN" ),
				button_action_func = f0_local44,
				text_align_without_content = LUI.Alignment.Center,
				fade_in = GenericPopupAnimationSettings.Buttons.DelayIn,
				parent_popup = nil,
				button_over_func = function ( f17_arg0, f17_arg1 )
					f17_arg0:dispatchEventToRoot( {
						name = "update_info_text",
						message_text = Engine.Localize( "MENU_TRY_AGAIN_DESC" )
					} )
				end
			}
		}
	end
	return f103_local0
end

function difficulty_selection_menu( f104_arg0, f104_arg1 )
	if not f104_arg1 then
		f104_arg1 = {}
	end
	local f104_local0 = Engine.GetDvarInt( "recommended_gameskill" )
	if f104_local0 ~= nil and f104_local0 >= 0 then
		f104_arg1.canBackOut = false
		f104_arg1.recommendDifficulty = true
		f104_arg1.tryAgainAvailable = true
	end
	f104_arg1.message_text_alignment = LUI.Alignment.Center
	f104_arg1.popup_title = Engine.Localize( "MENU_SELECT_DIFFICULTY" )
	f104_arg1.message_text = Engine.Localize( "MENU_WARNING_CHECKPOINT_RESET2" )
	f104_arg1.message_text_alignment = LUI.Alignment.Center
	f104_arg1.padding_top = 25
	f104_arg1.default_focus_index = 2
	f104_arg1.popup_childfeeder = difficulty_childfeeder
	local f104_local1 = f104_arg1.popup_list_spacing
	if not f104_local1 then
		f104_local1 = H1MenuDims.spacing
	end
	f104_arg1.popup_list_spacing = f104_local1
	if f104_arg1.canBackOut ~= nil then
		f104_local1 = f104_arg1.canBackOut
	else
		f104_local1 = true
	end
	f104_arg1.cancel_will_close = f104_local1
	f104_local1 = LUI.MenuBuilder.BuildRegisteredType( "generic_selectionList_popup", f104_arg1 )
	f104_local1:registerAnimationState( "default", CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	f104_local1:registerEventHandler( "popup_back", function ( element, event )
		if f104_arg1.tryAgainAvailable then
			local f18_local0 = element:getFirstDescendentById( "generic_selectionList_content_id" )
			local f18_local1 = f18_local0:getFirstChild()
			while f18_local1 ~= nil do
				if f18_local1.id == "difficulty_try_again_button_id" then
					f18_local1:processEvent( {
						name = "gain_focus"
					} )
				else
					f18_local1:processEvent( {
						name = "lose_focus"
					} )
				end
				f18_local1 = f18_local1:getNextSibling()
			end
		end
	end )
	f104_local1:registerEventHandler( "menu_create", function ( element, event )
		element:clearSavedState()
	end )
	return f104_local1
end

function campaignCompletedPopupResponseQuit( f105_arg0, f105_arg1 )
	Engine.SetDvarBool( "profileMenuOption_hasBeenNotifiedCampaignCompleted", true )
	Engine.ExecNow( "profile_menuDvarsFinish" )
	Engine.Exec( "updategamerprofile" )
	Engine.PopupClosed( f105_arg1.controller, "quit" )
end

function campaignCompletedPopupResponseNo( f106_arg0, f106_arg1 )
	Engine.SetDvarBool( "profileMenuOption_hasBeenNotifiedCampaignCompleted", true )
	Engine.ExecNow( "profile_menuDvarsFinish" )
	Engine.Exec( "updategamerprofile" )
	Engine.PopupClosed( f106_arg1.controller, "no" )
end

function campaign_completed_popup( f107_arg0, f107_arg1 )
	Engine.ExecNow( "profile_menuDvarsSetup" )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_CAMPAIGN_ARCADE_CHEAT_UNLOCKED" ),
		message_text = Engine.Localize( "@MENU_CAMPAIGN_ARCADE_CHEAT_UNLOCKED_DESC" ) .. Engine.Localize( "MENU_CONFIRM_RETURN_TO_MAIN_MENU" ),
		yes_text = Engine.Localize( "@MENU_RETURN_TO_MAIN_MENU" ),
		yes_action = campaignCompletedPopupResponseQuit,
		no_text = Engine.Localize( "@MENU_CONTINUE_TO_NEXT_MISSION" ),
		no_action = campaignCompletedPopupResponseNo
	} )
end

function disturbingContentMainMenuYesResponse( f108_arg0, f108_arg1 )
	Engine.Exec( "profile_SetHasEverPlayed_SP; profile_toggleCanSkipOffensiveMissions 1; updategamerprofile" )
end

function disturbingContentMainMenuNoResponse( f109_arg0, f109_arg1 )
	Engine.Exec( "profile_SetHasEverPlayed_SP; profile_toggleCanSkipOffensiveMissions 0; updategamerprofile" )
end

function disturbingContentMainMenuResponse( f110_arg0, f110_arg1, f110_arg2, f110_arg3 )
	local f110_local0 = nil
	if f110_arg2 then
		f110_local0 = disturbingContentMainMenuYesResponse
	else
		f110_local0 = disturbingContentMainMenuNoResponse
	end
	if f110_arg3 then
		f110_arg3( f110_arg0, f110_arg1, f110_local0 )
	else
		f110_local0( f110_arg0, f110_arg1 )
	end
end

function disturbing_content_main_menu_popup( f111_arg0, f111_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_SP_OFFENSIVE_TITLE" ),
		message_text = Engine.Localize( "@MENU_SP_OFFENSIVE_SKIP_2" ) .. "\n\n" .. Engine.Localize( "@PLATFORM_OFFENSIVE_NO_PENALTY" ),
		yes_text = Engine.Localize( "@MENU_SP_OFFENSIVE_SKIP_YES_ASK_LATER" ),
		yes_action = function ( f22_arg0, f22_arg1 )
			disturbingContentMainMenuResponse( f22_arg0, f22_arg1, true, f111_arg1.done_action )
		end
		,
		no_text = Engine.Localize( "@MENU_SP_OFFENSIVE_SKIP_NO_WONT_GET_OFFENDED" ),
		no_action = function ( f23_arg0, f23_arg1 )
			LUI.FlowManager.RequestAddMenu( f23_arg0, "disturbing_content_main_menu_confirm_popup", false, f23_arg1.controller, true, {
				done_action = f111_arg1.done_action
			} )
		end
		,
		color = Colors.h1.light_red,
		cancel_means_no = false,
		cancel_will_close = true
	} )
end

function disturbing_content_main_menu_confirm_popup( f112_arg0, f112_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_SP_OFFENSIVE_TITLE" ),
		message_text = Engine.Localize( "@MENU_SP_OFFENSIVE_SKIP_3" ) .. "\n\n" .. Engine.Localize( "@MENU_SP_OFFENSIVE_SKIP_4" ),
		yes_text = Engine.Localize( "@MENU_SP_OFFENSIVE_SKIP_YES_NEVER_ASK" ),
		yes_action = function ( f24_arg0, f24_arg1 )
			disturbingContentMainMenuResponse( f24_arg0, f24_arg1, false, f112_arg1.done_action )
		end
		,
		no_text = Engine.Localize( "@MENU_BACK" ),
		no_action = function ( f25_arg0, f25_arg1 )
			LUI.FlowManager.RequestAddMenu( f25_arg0, "disturbing_content_main_menu_popup", false, f25_arg1.controller, true, {
				done_action = f112_arg1.done_action
			} )
		end
		,
		color = Colors.h1.light_red,
		cancel_means_no = false,
		cancel_will_close = true
	} )
end

function disturbingContentInGameResponseYes( f113_arg0, f113_arg1 )
	LUI.FlowManager.RequestAddMenu( f113_arg0, "disturbing_content_in_game_confirm_popup", false, f113_arg1.controller, true, nil )
end

function disturbingContentInGameResponseNo( f114_arg0, f114_arg1 )
	Engine.Exec( "set ui_skip_graphic_material 0" )
	Engine.Exec( "set cl_paused 0" )
	Engine.PopupClosed( f114_arg1.controller, "" )
end

function disturbing_content_in_game_popup( f115_arg0, f115_arg1 )
	Engine.Exec( "set cl_paused 1" )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_SP_OFFENSIVE_TITLE" ),
		message_text = Engine.Localize( "@MENU_SP_OFFENSIVE_SKIP_1" ) .. "\n\n" .. Engine.Localize( "@PLATFORM_OFFENSIVE_NO_PENALTY" ),
		yes_text = Engine.Localize( "@MENU_SP_OFFENSIVE_SKIP_NOW" ),
		yes_action = disturbingContentInGameResponseYes,
		no_text = Engine.Localize( "@MENU_CONTINUE" ),
		no_action = disturbingContentInGameResponseNo,
		color = Colors.h1.light_red,
		cancel_means_no = false,
		cancel_will_close = false
	} )
end

function disturbingContentInGameConfirmResponseYes( f116_arg0, f116_arg1 )
	Engine.Exec( "set ui_skip_graphic_material 1" )
	Engine.Exec( "set cl_paused 0" )
	Engine.PopupClosed( f116_arg1.controller, "" )
end

function disturbingContentInGameConfirmResponseNo( f117_arg0, f117_arg1 )
	LUI.FlowManager.RequestAddMenu( f117_arg0, "disturbing_content_in_game_popup", false, f117_arg1.controller, true, nil )
end

function disturbing_content_in_game_confirm_popup( f118_arg0, f118_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_SP_OFFENSIVE_TITLE" ),
		message_text = Engine.Localize( "@MENU_SP_OFFENSIVE_ARE_YOU_SURE" ),
		yes_text = Engine.Localize( "@MENU_YES" ),
		yes_action = disturbingContentInGameConfirmResponseYes,
		no_text = Engine.Localize( "@MENU_NO" ),
		no_action = disturbingContentInGameConfirmResponseNo,
		color = Colors.h1.light_red,
		cancel_means_no = false,
		cancel_will_close = false
	} )
end

local f0_local45 = function ( f119_arg0, f119_arg1, f119_arg2, f119_arg3, f119_arg4 )
	return (f119_arg4 - f119_arg3) / (f119_arg2 - f119_arg1) * (f119_arg0 - f119_arg2) + f119_arg4
end

local f0_local46 = function ( f120_arg0, f120_arg1 )
	local f120_local0 = Patch.PatchDownloadedSize()
	local f120_local1 = Patch.PatchSize()
	if f120_local1 <= f120_local0 then
		f120_local0 = f120_local1
	end
	local f120_local2 = f0_local45( f120_local0, 0, f120_local1, 0, f120_arg0.maxWidth )
	if f120_local2 >= 10 and not f120_arg0.passedGlow then
		f120_arg0.passedGlow = true
		f120_arg0.glowRider:animateToState( "normalSize", 3000 )
	end
	f120_arg0:registerAnimationState( "update", {
		left = f120_arg0.startLeft,
		leftAnchor = true,
		width = f120_local2
	} )
	f120_arg0:animateToState( "update", 3000 )
end

function waiting_popup( f121_arg0, f121_arg1 )
	local f121_local0 = 175
	local f121_local1 = {
		r = 0,
		g = 0,
		b = 0
	}
	local self = LUI.UIElement.new( {
		leftAnchor = true,
		rightAnchor = true,
		height = f121_local0
	} )
	local f121_local3 = 0
	if f121_arg1.isLiveWithCancel then
		local self = LUI.UIBindButton.new()
		self:registerEventHandler( "button_secondary", function ( element, event )
			if f121_arg1.cancel_func then
				f121_arg1.cancel_func( element, event )
			end
		end )
		self:addElement( self )
		self:setPriority( 50 )
		AddLiveDialogFooterHelperText( self, {
			footerOffset = 10
		} )
		f121_local3 = f121_local3 - 20
	end
	if f121_arg1.isCCS then
		local self = 250
		local f121_local5 = 5
		local f121_local6 = 10
		local self = LUI.UIElement.new( {
			bottomAnchor = true,
			bottom = -45,
			width = self + f121_local6,
			height = f121_local5 + f121_local6
		} )
		local self = LUI.UIImage.new( {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = true,
			color = f121_local1,
			alpha = 0.8
		} )
		local f121_local9 = LUI.DecoFrame.new( {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = true,
			alpha = 0.75
		}, LUI.DecoFrame.Green )
		self:addElement( self )
		self:addElement( f121_local9 )
		local f121_local10 = f121_local6 / 2
		local self = LUI.UIImage.new( {
			left = f121_local10,
			leftAnchor = true,
			color = {
				r = 0.2,
				g = 0.2,
				b = 0.2
			},
			alpha = 0.8,
			material = RegisterMaterial( "white" ),
			width = self,
			height = f121_local5
		} )
		local self = LUI.UIBorder.new( {
			left = f121_local10,
			leftAnchor = true,
			borderThickness = 1,
			color = GenericMenuColors.line,
			material = RegisterMaterial( "white" ),
			width = self,
			height = f121_local5
		} )
		self:addElement( self )
		self:addElement( self )
		local self = LUI.UIImage.new( {
			left = f121_local10,
			leftAnchor = true,
			material = RegisterMaterial( "h1_ui_progressbar_green" ),
			width = 0,
			height = f121_local5
		} )
		self.maxWidth = self
		self.startLeft = f121_local10
		local f121_local14 = 10
		local f121_local15 = RegisterMaterial( "h1_ui_loadscreen_progress_highlight" )
		local self, f121_local17 = GetMaterialDimensions( f121_local15 )
		local f121_local18 = f121_local14 * self / f121_local17
		local self = LUI.UIImage.new( {
			rightAnchor = true,
			topAnchor = true,
			top = -4,
			right = 3,
			material = f121_local15,
			width = f121_local18 / 4,
			height = f121_local14
		} )
		self:registerAnimationState( "normalSize", {
			rightAnchor = true,
			topAnchor = true,
			top = -4,
			right = 4.5,
			material = f121_local15,
			width = f121_local18 / 2,
			height = f121_local14
		} )
		self.passedGlow = false
		self.glowRider = self
		self:addElement( self )
		self:addElement( self )
		self:addElement( self )
		self:addElement( LUI.UITimer.new( 100, "update_progress" ) )
		self:registerEventHandler( "update_progress", f0_local46 )
		f121_local3 = f121_local3 - 10
		self:setPriority( 51 )
	end
	local self = LUI.UIImage.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		material = RegisterMaterial( "white" ),
		color = f121_local1,
		alpha = 0.8
	} )
	local f121_local5 = LUI.Divider.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true
	}, 55, LUI.Divider.Green )
	local f121_local6 = LUI.Divider.new( {
		leftAnchor = true,
		rightAnchor = true,
		bottomAnchor = true,
		bottom = 2
	}, 55, LUI.Divider.Green )
	local self = 200
	if f121_arg1.message_text == nil or f121_arg1.message_text == "" then
		f121_arg1.message_text = "Please wait..."
	end
	local self = LUI.UIText.new( {
		alignment = LUI.Alignment.Center,
		topAnchor = true,
		top = 105 + f121_local3,
		width = 550,
		font = CoD.TextSettings.Font24.Font,
		height = 16,
		color = Colors.h1.light_grey
	} )
	self:setText( f121_arg1.message_text )
	local f121_local9 = LUI.MenuBuilder.BuildRegisteredType( "loading_animation_widget", {
		bottomOffset = f121_local3
	} )
	local f121_local10 = 15
	local f121_local20 = f121_local0
	local self = RegisterMaterial( "h1_deco_system_dialog_bg" )
	local self, self = GetMaterialDimensions( self )
	local self = LUI.UIImage.new( {
		topAnchor = true,
		width = f121_local20 * self / self,
		height = f121_local20,
		material = self
	} )
	self:addElement( LUI.MenuBuilder.BuildRegisteredType( "generic_popup_screen_overlay" ) )
	self:addElement( self )
	self:addElement( self )
	self:addElement( f121_local5 )
	self:addElement( f121_local6 )
	self:addElement( f121_local9 )
	self:addElement( self )
	return self
end

function reset_all_cheats( f122_arg0, f122_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@MENU_RESET_CHEATS" ),
		yes_action = f122_arg1.acceptFunc
	} )
end

function reset_exclusive_cheats( f123_arg0, f123_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_WARNING" ),
		message_text = f123_arg1.message,
		yes_action = function ( f4_arg0, f4_arg1 )
			f123_arg1.acceptFunc( f123_arg1.cheatTypeIndex, f123_arg1.cheatIndex )
		end
		,
		yes_text = Engine.Localize( "@MENU_ACCEPT" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

LUI.MenuBuilder.registerType( "live_dialog_text_box_with_cancel", live_dialog_text_box_with_cancel )
LUI.MenuBuilder.registerType( "live_dialog_text_box", live_dialog_text_box )
LUI.MenuBuilder.registerType( "loading_animation_widget", loading_animation_widget )
LUI.MenuBuilder.registerType( "live_dialog_processing_widget", live_dialog_processing_widget )
LUI.MenuBuilder.registerType( "live_dialog_popup_background", live_dialog_popup_background )
LUI.MenuBuilder.registerPopupType( "error_popmenu_party", error_popmenu_party )
LUI.MenuBuilder.registerPopupType( "error_popmenu_psplus_party", error_popmenu_psplus_party )
LUI.MenuBuilder.registerPopupType( "live_party_invite_popmenu", live_party_invite_popmenu )
LUI.MenuBuilder.registerPopupType( "live_party_streaming_incomplete_popmenu", live_party_streaming_incomplete_popmenu )
LUI.MenuBuilder.registerPopupType( "sign_in_as_sub_or_guest", sign_in_as_sub_or_guest )
LUI.MenuBuilder.registerType( "popup_acceptinginvite", popup_acceptinginvite )
LUI.MenuBuilder.registerPopupType( "popup_connecting", popup_connecting )
LUI.MenuBuilder.registerPopupType( "error_popmenu_submenu", error_popmenu_submenu )
LUI.MenuBuilder.registerType( "readingsavedevice", readingsavedevice )
LUI.MenuBuilder.registerPopupType( "error_corrupt_savedata", f0_local10 )
LUI.MenuBuilder.registerPopupType( "savedata_failed_popmenu", f0_local13 )
LUI.MenuBuilder.registerPopupType( "error_popmenu", error_popmenu )
LUI.MenuBuilder.registerPopupType( "quit_popmenu", quit_popmenu )
LUI.MenuBuilder.registerPopupType( "no_profile_warning_popmenu", f0_local8, nil, true )
LUI.MenuBuilder.registerPopupType( "no_profile_force_popmenu", f0_local14, nil, true )
LUI.MenuBuilder.registerPopupType( "throttle_error_popmenu", f0_local15, nil, true )
LUI.MenuBuilder.registerPopupType( "quit_no_save_confirm_popup", quit_no_save_confirm_popup )
LUI.MenuBuilder.registerPopupType( "quit_confirm_popup", quit_confirm_popup )
LUI.MenuBuilder.registerPopupType( "save_and_quit_confirm_popup", save_and_quit_confirm_popup )
LUI.MenuBuilder.registerPopupType( "save_and_quit_confirm_invited_popup", save_and_quit_confirm_invited_popup )
LUI.MenuBuilder.registerDef( "save_game_error_popup", save_game_error_popup )
LUI.MenuBuilder.registerPopupType( "lost_selected_save_device_popup", f0_local24 )
LUI.MenuBuilder.registerDef( "save_game_loading_hud", f0_local27 )
LUI.MenuBuilder.registerDef( "save_game_info_hud", f0_local30 )
LUI.MenuBuilder.registerDef( "menu_ps3_ui_bg", menu_ps3_ui_bg )
LUI.MenuBuilder.registerPopupType( "menu_online_ended", f0_local18 )
LUI.MenuBuilder.registerType( "controllerremoved_popmenu", controllerremoved_popmenu )
LUI.MenuBuilder.registerPopupType( "user_changed_confirm_mp", user_changed_confirm_mp )
LUI.MenuBuilder.registerPopupType( "controller_changed_confirm_mp", controller_changed_confirm_mp )
LUI.MenuBuilder.registerPopupType( "recipe_load_failed_popup", recipe_load_failed_popup, nil, true )
LUI.MenuBuilder.registerPopupType( "recipe_save_failed_popup", recipe_save_failed_popup, nil, true )
LUI.MenuBuilder.registerPopupType( "recipe_save_failed_no_guests_popup", recipe_save_failed_no_guests_popup, nil, true )
LUI.MenuBuilder.registerPopupType( "recipe_save_failed_no_device_popup", recipe_save_failed_no_device_popup, nil, true )
LUI.MenuBuilder.registerPopupType( "cac_elite_popup", cac_elite_popup )
LUI.MenuBuilder.registerPopupDef( "choose_language_popup", choose_language_popup )
LUI.MenuBuilder.registerPopupType( "choose_language_confirm_popup", f0_local31 )
LUI.MenuBuilder.registerPopupType( "MENU_TYPE_INVERT_AXIS", invert_axis_popup )
LUI.MenuBuilder.registerPopupType( "MENU_TYPE_INVERT_AXIS_CONFIRM", invert_axis_confirm_popup )
LUI.MenuBuilder.registerPopupType( "difficulty_selection_menu", difficulty_selection_menu )
LUI.MenuBuilder.registerPopupType( "campaign_completed_popup", campaign_completed_popup )
LUI.MenuBuilder.registerPopupType( "ccs_need_restart", ccs_need_restart )
LUI.MenuBuilder.registerPopupType( "ccs_is_downloading", ccs_is_downloading )
LUI.MenuBuilder.registerPopupType( "disturbing_content_main_menu_popup", disturbing_content_main_menu_popup )
LUI.MenuBuilder.registerPopupType( "disturbing_content_main_menu_confirm_popup", disturbing_content_main_menu_confirm_popup )
LUI.MenuBuilder.registerPopupType( "disturbing_content_in_game_popup", disturbing_content_in_game_popup )
LUI.MenuBuilder.registerPopupType( "disturbing_content_in_game_confirm_popup", disturbing_content_in_game_confirm_popup )
LUI.MenuBuilder.registerPopupType( "ccs_fail_need_restart", ccs_fail_need_restart )
LUI.MenuBuilder.registerPopupType( "difficultyConfirmation", f0_local42 )
LUI.MenuBuilder.registerPopupType( "difficultyConfirmationVeteran", f0_local43 )
LUI.MenuBuilder.registerPopupType( "reset_all_cheats", reset_all_cheats )
LUI.MenuBuilder.registerPopupType( "reset_exclusive_cheats", reset_exclusive_cheats )
LUI.MenuBuilder.registerType( "waiting_popup", waiting_popup )
if not Engine.IsConsoleGame() then
	LUI.MenuBuilder.registerPopupType( "steam_overlay_required", steam_overlay_required )
	LUI.MenuBuilder.registerPopupType( "switch_to_azerty_popup", f0_local39 )
	LUI.MenuBuilder.registerPopupType( "switch_to_azerty_reset_popup", f0_local40 )
end
LUI.MenuBuilder.registerPopupType( "no_controller_initial_popup", f0_local34 )
LUI.MenuBuilder.registerPopupType( "controller_initial_popup", f0_local35 )
LUI.FlowManager.RegisterStackPopBehaviour( "error_popmenu", f0_local2 )
LUI.FlowManager.RegisterStackPopBehaviour( "error_popmenu_party", f0_local2 )
LUI.FlowManager.RegisterStackPopBehaviour( "error_popmenu_submenu", f0_local2 )
LUI.FlowManager.RegisterStackPopBehaviour( "error_popmenu_psplus_party", f0_local2 )
LockTable( _M )
