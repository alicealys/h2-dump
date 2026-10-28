local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
function OnMainAttract( f1_arg0, f1_arg1 )
	
end

function FadeOutForAttract( f2_arg0, f2_arg1 )
	f2_arg0:dispatchEventToChildren( {
		name = "fadeToBlack"
	} )
	local self = LUI.UITimer.new( 750, "OnMainAttract" )
	self.id = "LockoutFadeOutTimer"
	f2_arg0:addElement( self )
	f2_arg0:registerEventHandler( "OnMainAttract", OnMainAttract )
	Engine.StopMusic( 2000 )
end

function SkipToMenu( f3_arg0 )
	local f3_local0 = Engine.GetDvarString( "ui_loadMenuName" )
	if f3_local0 == nil or f3_local0 == "" then
		return false
	end
	Engine.SetDvarString( "ui_loadMenuName", "" )
	local f3_local1 = LUI.StringSplit( f3_local0, "/" )
	local f3_local2 = f3_local1[#f3_local1]
	table.remove( f3_local1, #f3_local1 )
	if #f3_local1 == 0 then
		LUI.FlowManager.RequestAddMenu( self, f3_local2, true, f3_arg0, true )
	else
		local f3_local3 = {}
		for f3_local4 = 1, #f3_local1, 1 do
			f3_local3[f3_local4] = {
				name = f3_local1[f3_local4]
			}
		end
		LUI.FlowManager.RequestAddMenuAndSetStack( self, f3_local2, true, f3_arg0, true, nil, f3_local3 )
	end
	return true
end

function GoToMainMenu( f4_arg0 )
	Engine.SetDvarBool( "ui_skipMainLockout", false )
	if Engine.GetDvarBool( "limited_mode" ) then
		LUI.FlowManager.RequestAddMenu( self, LUI.LevelSelect.FirstCampaignMenuName, true, f4_arg0, false, {} )
	elseif CoD.IsCampaignOnly() then
		LUI.FlowManager.RequestAddMenu( self, "main_campaign", true, f4_arg0, false )
	else
		LUI.FlowManager.RequestAddMenu( self, "main_menu", true, f4_arg0, false )
	end
end

function OnStartWaitForAttract( f5_arg0 )
	if not Engine.GetDvarBool( "limited_mode" ) then
		if not f5_arg0.lockoutAttractTimer then
			f5_arg0.lockoutAttractTimer = LUI.UITimer.new( 30000, "FadeOutForAttract" )
			f5_arg0.lockoutAttractTimer.id = "LockoutAttractTimer"
			f5_arg0:addElement( f5_arg0.lockoutAttractTimer )
			f5_arg0:registerEventHandler( "FadeOutForAttract", FadeOutForAttract )
		else
			LUI.UITimer.Reset( f5_arg0.lockoutAttractTimer )
			LUI.UITimer.Enable( f5_arg0.lockoutAttractTimer )
		end
	end
end

function OnStopWaitForAttract( f6_arg0 )
	if f6_arg0.lockoutAttractTimer then
		LUI.UITimer.Disable( f6_arg0.lockoutAttractTimer )
	end
end

function CheckLanguage( f7_arg0 )
	if Engine.ShouldPromptForLanguage() then
		LUI.FlowManager.RequestAddMenu( nil, "choose_language_popup", false, f7_arg0, false, {
			callback = function ()
				LoginNextStep( f7_arg0 )
			end
		} )
	else
		LoginNextStep( f7_arg0 )
	end
end

function CheckDCache( f9_arg0 )
	if DCache.IsStartupDisabled() then
		LUI.FlowManager.RequestAddMenu( nil, "request_yesno_popup_generic", true, f9_arg0, nil, {
			popup_title = Engine.Localize( "@MENU_NOTICE" ),
			yes_action = function ()
				DCache.ClearDCache( 1 )
				Engine.SystemRestart( Engine.Localize( "@LUA_MENU_DCACHE_RESTART" ) )
			end,
			no_action = function ()
				DCache.ClearStartupCount()
				Engine.SystemRestart( Engine.Localize( "@LUA_MENU_DCACHE_RESTART" ) )
			end,
			message_text = Engine.Localize( "@LUA_MENU_DCACHE_CLEAR_REQUEST" )
		} )
	else
		LoginNextStep( f9_arg0 )
	end
end

function CheckEULA( f12_arg0 )
	if Engine.HasAcceptedEULA( f12_arg0 ) or Engine.GetDvarBool( "limited_mode" ) then
		LoginNextStep( f12_arg0 )
	else
		LUI.FlowManager.RequestAddMenu( nil, "EULA", true, f12_arg0, false, {
			callback = function ()
				LoginNextStep( f12_arg0 )
			end
		} )
	end
end

f0_local0 = false
f0_local1 = function ( f14_arg0 )
	LUI.FlowManager.RequestAddMenu( nil, "boot_hdr", true, f14_arg0, false, {
		callback = function ()
			f0_local0 = true
			LoginNextStep( f14_arg0 )
		end
	} )
end

function CheckHDR( f16_arg0 )
	f0_local0 = false
	if Engine.IsProfileSignedIn( f16_arg0 ) then
		local f16_local0 = CoD.CanToggleHDRRuntime()
		if Engine.GetProfileData( "hasEverPlayed_MainMenu", f16_arg0 ) or Engine.GetDvarBool( "limited_mode" ) or not CoD.IsHDRAvailable() then
			LoginNextStep( f16_arg0 )
		elseif f16_local0 then
			LUI.FlowManager.RequestAddMenu( nil, "request_yesno_popup_generic", true, f16_arg0, nil, {
				popup_title = Engine.Localize( "@MENU_HDR" ),
				default_focus_index = 1,
				yes_action = function ()
					CoD.SetHDREnabled( Engine.GetControllerForLocalClient( 0 ), 1 )
					f0_local1( f16_arg0 )
				end,
				no_action = function ()
					CoD.SetHDREnabled( Engine.GetControllerForLocalClient( 0 ), 0 )
					LoginNextStep( f16_arg0 )
				end,
				message_text = Engine.Localize( "@MENU_HDR_BOOT_DESC" )
			} )
		else
			f0_local1( f16_arg0 )
		end
	else
		LUI.FlowManager.RequestAddMenu( nil, "no_profile_warning_popmenu", false, f16_arg0, false, {
			next_menu = "boot_hdr"
		} )
	end
end

function CheckBrightness( f19_arg0 )
	if Engine.IsProfileSignedIn( f19_arg0 ) then
		if Engine.GetProfileData( "hasEverPlayed_MainMenu", f19_arg0 ) or Engine.GetDvarBool( "limited_mode" ) or f0_local0 then
			LoginNextStep( f19_arg0 )
		else
			LUI.FlowManager.RequestAddMenu( nil, "boot_brightness", true, f19_arg0, false, {
				callback = function ()
					LoginNextStep( f19_arg0 )
				end
			} )
		end
	else
		LUI.FlowManager.RequestAddMenu( nil, "no_profile_warning_popmenu", false, f19_arg0, false, {
			next_menu = "boot_brightness"
		} )
	end
end

function CheckMargins( f21_arg0 )
	if Engine.IsConsoleGame() then
		if Engine.IsProfileSignedIn( f21_arg0 ) then
			if Engine.GetProfileData( "hasEverPlayed_MainMenu", f21_arg0 ) or Engine.GetDvarBool( "limited_mode" ) then
				LoginNextStep( f21_arg0 )
			else
				LUI.FlowManager.RequestAddMenu( nil, "boot_screen_margins", true, f21_arg0, false, {
					callback = function ()
						LoginNextStep( f21_arg0 )
					end
				} )
			end
		else
			LUI.FlowManager.RequestAddMenu( nil, "no_profile_warning_popmenu", false, f21_arg0, false, {
				next_menu = "boot_screen_margins"
			} )
		end
	else
		LoginNextStep( f21_arg0 )
	end
end

function ResolveSignIn( f23_arg0 )
	if Engine.IsProfileSignedIn( f23_arg0 ) == false then
		LUI.FlowManager.RequestAddMenu( nil, "no_profile_force_popmenu", false, f23_arg0, false, {} )
	else
		LoginNextStep( f23_arg0 )
	end
end

function CheckSignedIn( f24_arg0 )
	Engine.ExecNow( "forcenosplitscreencontrol main_lockout_START", f24_arg0 )
	Engine.ExecNow( "resetViewport" )
	if Engine.IsPS4() and Engine.NeedToDeleteSaveData( f24_arg0 ) then
		LUI.FlowManager.RequestAddMenu( self, "error_corrupt_savedata", false, f24_arg0, true, {} )
		return 
	elseif (Engine.IsXB3() or Engine.IsPCApp()) and Engine.IsProfileSignedIn( f24_arg0 ) == false then
		Engine.ExecWithResolve( "xsignin", ResolveSignIn, f24_arg0 )
	else
		LoginNextStep( f24_arg0 )
	end
end

f0_local2 = 0
local f0_local3 = {
	[#f0_local3 + 1] = CheckLanguage,
	[#f0_local3 + 1] = CheckSignedIn,
	[#f0_local3 + 1] = CheckEULA,
	[#f0_local3 + 1] = CheckHDR,
	[#f0_local3 + 1] = CheckBrightness,
	[#f0_local3 + 1] = CheckMargins,
	[#f0_local3 + 1] = GoToMainMenu
}
function LoginNextStep( f25_arg0 )
	assert( f25_arg0 ~= nil )
	if f0_local2 < #f0_local3 then
		f0_local2 = f0_local2 + 1
	end
	local f25_local0 = f0_local3[f0_local2]
	if f25_local0 ~= nil then
		f25_local0( f25_arg0 )
	end
end

function OnLockoutButton( f26_arg0, f26_arg1 )
	if not f26_arg0.m_inputDisabled then
		Engine.PlaySound( CoD.SFX.MenuAccept )
		if Engine.GetDvarBool( "limited_mode_2" ) then
			Engine.ExecNow( "set beautiful_corner_hdr_demo 1" )
			Engine.ExecNow( "set limited_mode 1" )
			Engine.ExecNow( "set r_hdrDisplaySupportEnabled 1" )
			Engine.ExecNow( "set beautiful_corner_hdr_demo_show_indicators 1" )
			Engine.ExecNow( "forcenosplitscreencontrol main_lockout_START" )
			Engine.ExecNow( "resetViewport" )
			Engine.StopMenuVideo()
			Engine.StreamingInstallMap( "gulag", "devmap gulag" )
		else
			f0_local2 = 0
			LoginNextStep( f26_arg1.controller )
		end
	end
end

function OnBackOut( f27_arg0, f27_arg1 )
	if not f27_arg0.m_inputDisabled and not Engine.IsConsoleGame() then
		LUI.FlowManager.RequestAddMenu( f27_arg0, "quit_popmenu", false, f27_arg1.controller )
	end
end

local f0_local4 = function ( f28_arg0, f28_arg1 )
	local f28_local0 = Engine.IsGamepadEnabled()
	local f28_local1 = Engine.IsPS4Controller()
	if f28_local0 ~= f28_arg0.previousIsGamepad or f28_local1 ~= f28_arg0.previousIsPS4Ctrl then
		f28_arg0.previousIsGamepad = f28_local0
		f28_arg0.previousIsPS4Ctrl = f28_local1
		local f28_local2 = f28_arg0
		local f28_local3 = f28_arg0.setText
		local f28_local4 = Engine.Localize
		local f28_local5
		if f28_local0 then
			f28_local5 = "@PLATFORM_PRESS_START_BUTTON"
			if not f28_local5 then
			
			else
				f28_local3( f28_local2, f28_local4( f28_local5 ) )
			end
		end
		f28_local5 = "@PLATFORM_PRESS_START_PC"
	end
end

function main_lockout()
	local f29_local0 = Engine.GetFirstActiveController()
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	Engine.SetGameMode( "none" )
	Engine.SetSplitScreen( false )
	Engine.PlayMusic( CoD.Music.MainSPMusic, 1, 660 )
	PersistentBackground.Set( PersistentBackground.Variants.Default )
	Engine.SetDvarString( "s18", "0" )
	local f29_local2 = function ()
		if Engine.GetDvarBool( "ui_skipMainLockout" ) and not SkipToMenu( f29_local0 ) then
			GoToMainMenu( f29_local0 )
		end
	end
	
	if Engine.GetDvarBool( "ui_skipMainLockout" ) then
		Engine.ExecNow( "forcenosplitscreencontrol main_lockout_START" )
		Engine.ExecNow( "resetViewport", f29_local0 )
		self:registerEventHandler( "menu_create", f29_local2 )
	else
		Engine.ExecNow( "forcesplitscreencontrol main_lockout" )
		PersistentBackground.ChangeBackground( nil, CoD.Background.SPLockout )
		local f29_local3 = CoD.CreateState( -290, -132.29, 290, 12.29, CoD.AnchorTypes.None )
		f29_local3.material = RegisterMaterial( "h1_logo_mw" )
		local f29_local4 = LUI.UIImage.new( f29_local3 )
		f29_local4.id = "Logo"
		self:addElement( f29_local4 )
		local f29_local5 = CoD.CreateState( 0, -40, 0, -30, CoD.AnchorTypes.BottomLeftRight )
		f29_local5.font = CoD.TextSettings.H1TitleFont.Font
		f29_local5.color = Colors.h1.light_grey
		f29_local5.alpha = 0.7
		local f29_local6 = LUI.UIText.new( f29_local5 )
		f29_local6.id = "LockoutLegal"
		f29_local6:setText( Engine.Localize( "@LUA_MENU_LEGAL_COPYRIGHT_SHORT" ) )
		self:addElement( f29_local6 )
		local f29_local7 = CoD.CreateState( 0, 500, 0, 515, CoD.AnchorTypes.TopLeftRight )
		f29_local7.font = CoD.TextSettings.H1TitleFont.Font
		f29_local7.horizontalAlignment = LUI.HorizontalAlignment.Center
		local f29_local8 = LUI.UIText.new( f29_local7 )
		f29_local8:setTextStyle( CoD.TextStyle.ShadowedMore )
		local f29_local9 = f29_local8
		local f29_local10 = f29_local8.setText
		local f29_local11 = Engine.Localize
		local f29_local12
		if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
			f29_local12 = "@PLATFORM_PRESS_START_BUTTON"
			if not f29_local12 then
			
			else
				f29_local10( f29_local9, f29_local11( f29_local12 ) )
				if Engine.IsPC() then
					f29_local8.previousIsGamepad = Engine.IsGamepadEnabled()
					f29_local8.previousIsPS4Ctrl = Engine.IsPS4Controller()
					f29_local8:registerEventHandler( "onControllerChange", f0_local4 )
				end
				self:addElement( f29_local8 )
				f29_local10 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
				f29_local10.material = RegisterMaterial( "black" )
				f29_local10.alpha = 1
				f29_local9 = LUI.UIImage.new( f29_local10 )
				f29_local9.id = "LockoutFade"
				f29_local9:registerAnimationState( "default", f29_local10 )
				f29_local9:registerAnimationState( "full", {
					alpha = 0
				} )
				f29_local9:registerEventHandler( "fadeToBlack", MBh.AnimateToState( "default", 750 ) )
				f29_local9:animateInSequence( {
					{
						"default",
						1000
					},
					{
						"full",
						1000
					}
				} )
				self:addElement( f29_local9 )
				f29_local11 = LUI.UIBindButton.new( {
					leftAnchor = true,
					rightAnchor = false,
					topAnchor = true,
					bottomAnchor = false,
					top = 0,
					bottom = 720,
					left = 0,
					right = 1280
				} )
				f29_local11.id = "LockoutBindButton"
				f29_local11:registerEventHandler( "button_start", OnLockoutButton )
				f29_local11:registerEventHandler( "button_action", OnLockoutButton )
				f29_local11:registerEventHandler( "button_secondary", OnBackOut )
				if Engine.IsPC() then
					f29_local11:setHandleMouseButton( true )
					f29_local11:registerEventHandler( "leftmousedown", OnLockoutButton )
					f29_local11:registerEventHandler( "button_shoulderl", OnLockoutButton )
					f29_local11:registerEventHandler( "button_shoulderr", OnLockoutButton )
					f29_local11:registerEventHandler( "popup_active", function ( element, event )
						element.m_inputDisabled = true
					end )
					f29_local11:registerEventHandler( "popup_inactive", function ( element, event )
						element.m_inputDisabled = false
					end )
				end
				f29_local11.handlePrimary = true
				self:addElement( f29_local11 )
			end
		end
		f29_local12 = "@PLATFORM_PRESS_START_PC"
	end
	return self
end

LUI.MenuBuilder.registerType( "main_lockout", main_lockout )
LockTable( _M )
