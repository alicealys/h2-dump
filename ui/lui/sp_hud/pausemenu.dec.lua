local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = false
f0_local1 = false
function closePauseMenu( f1_arg0, f1_arg1 )
	local f1_local0 = Engine.GetLuiRoot()
	local f1_local1 = f1_local0:getFirstDescendentById( "sp_pause_menu_container" )
	f1_local1:animateInSequence( {
		{
			"default",
			PauseMenuAnimationSettings.Background.DelayOut
		},
		{
			"out",
			PauseMenuAnimationSettings.Background.DurationOut
		}
	} )
	local f1_local2 = f1_local1.subContainer
	f1_local2:registerAnimationState( "hidden", {
		alpha = 0
	} )
	f1_local2:animateInSequence( {
		{
			"default",
			PauseMenuAnimationSettings.SubContainer.DelayOut
		},
		{
			"hidden",
			PauseMenuAnimationSettings.SubContainer.DurationOut
		}
	} )
	LUI.sp_hud.ObjectivesFrame.Hide( f1_local2, PauseMenuAnimationSettings.Background.DurationOut )
end

function closePauseMenuInternal( f2_arg0, f2_arg1 )
	Engine.TogglePause()
	f2_arg0:dispatchEventToRoot( {
		name = "toggle_pause_off"
	} )
	f0_local1 = false
end

function backAction( f3_arg0, f3_arg1 )
	Engine.PlaySound( CoD.SFX.PauseMenuResume )
	closePauseMenu( f3_arg0, f3_arg1 )
end

function canLowerDifficulty()
	if Engine.GetDvarBool( "arcademode" ) or isMuseumMission() then
		return false
	else
		return Engine.GetDvarString( "mapname" ) ~= "trainer"
	end
end

function canChangeDifficulty()
	local f5_local0 = Engine.GetDvarString( "mapname" )
	local f5_local1 = Engine.GetDvarBool( "specialops" )
	if not f5_local1 then
		f5_local1 = Engine.IsDevelopmentBuild() and f5_local0 ~= "trainer"
	end
	return f5_local1
end

function QuitCreditsYesAction( f6_arg0, f6_arg1 )
	Engine.SetDvarInt( "credits_active", 0 )
	Engine.SetDvarInt( "ui_play_credits", 0 )
	Engine.Exec( "disconnect" )
end

function QuitCreditsConfirmPopup( f7_arg0, f7_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@PLATFORM_QUIT" ),
		message_text = Engine.Localize( "@MENU_QUIT_WARNING" ),
		yes_action = QuitCreditsYesAction,
		yes_text = Engine.Localize( "@MENU_QUIT" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

function ChangeDifficultyRestartConfirmPopup( f8_arg0, f8_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_CHANGE_DIFFICULTY" ),
		message_text = Engine.Localize( "@MENU_INGAME_DIFFICULTY_CHANGING" ),
		yes_action = ChangeDifficultyRestartConfirmYesAction,
		yes_text = Engine.Localize( "@MENU_ACCEPT" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

function ChangeDifficultyRestartConfirmYesAction( f9_arg0, f9_arg1 )
	local f9_local0 = Engine.GetDvarString( "mapname" )
	Engine.StreamingInstallMap( f9_local0, "devmap " .. f9_local0 )
end

function LowerDifficultyYesAction( f10_arg0, f10_arg1 )
	local f10_local0 = Engine.GetDvarInt( "g_gameskill" )
	if f10_local0 > 0 then
		CoD.ChangeDifficulty( f10_local0 - 1 )
	end
	closePauseMenu( f10_arg0, f10_arg1 )
end

function LowerDifficultyConfirmPopup10( f11_arg0, f11_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_LOWER_DIFFICULTY" ),
		message_text = Engine.Localize( "@MENU_LOWER_DIFFICULTY_1_0" ),
		yes_action = LowerDifficultyYesAction,
		yes_text = Engine.Localize( "@MENU_LOWER_DIFFICULTY_1_0_BUTTON" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

function LowerDifficultyConfirmPopup21( f12_arg0, f12_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_LOWER_DIFFICULTY" ),
		message_text = Engine.Localize( "@MENU_LOWER_DIFFICULTY_2_1" ),
		yes_action = LowerDifficultyYesAction,
		yes_text = Engine.Localize( "@MENU_LOWER_DIFFICULTY_2_1_BUTTON" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

function LowerDifficultyConfirmPopup32( f13_arg0, f13_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_LOWER_DIFFICULTY" ),
		message_text = Engine.Localize( "@MENU_LOWER_DIFFICULTY_3_2" ),
		yes_action = LowerDifficultyYesAction,
		yes_text = Engine.Localize( "@MENU_LOWER_DIFFICULTY_3_2_BUTTON" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

f0_local2 = function ( f14_arg0, f14_arg1 )
	closePauseMenuInternal( f14_arg0, f14_arg1 )
	Engine.SetDvarFloat( "ui_securing_progress", 0 )
	Engine.SetDvarString( "ui_securing", "" )
	Engine.Exec( "loadgame_continue_missionfailed" )
end

function LastCheckpointConfirmPopup( f15_arg0, f15_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_LAST_CHECKPOINT" ),
		message_text = Engine.Localize( "@MENU_SP_LAST_CHECKPOINT_CONFIRMATION" ),
		callback_params = {
			saveToSlot = -1
		},
		yes_action = f0_local2,
		yes_text = Engine.Localize( "@LUA_MENU_YES" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

local f0_local3 = function ( f16_arg0, f16_arg1 )
	closePauseMenuInternal( f16_arg0, f16_arg1 )
	Engine.Exec( "stopControllerRumble" )
	local f16_local0 = Engine.GetDvarString( "mapname" )
	if Engine.GetDvarBool( "arcademode" ) then
		Engine.StreamingInstallMap( f16_local0, "devmap " .. f16_local0 )
	elseif isEndgameFinale() then
		Engine.StreamingInstallMap( "af_chase", "devmap " .. "af_chase" )
	else
		Engine.Exec( "fast_restart" )
	end
end

function RestartMissionConfirmPopup( f17_arg0, f17_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_RESTART_MISSION" ),
		message_text = Engine.Localize( "@MENU_RESTART_TEXT_1" ),
		yes_action = f0_local3,
		yes_text = Engine.Localize( "@MENU_RESTART_MISSION" ),
		no_text = Engine.Localize( "@LUA_MENU_CANCEL" )
	} )
end

function tryFollowInvite( f18_arg0, f18_arg1 )
	if Friends.HasPartyGameInvite() then
		LUI.FlowManager.RequestAddMenu( nil, "live_party_invite_popmenu", true, f18_arg1.controller )
	end
end

function disturbingContentInGameSkipResponseYes( f19_arg0, f19_arg1 )
	Engine.Exec( "set ui_skip_graphic_material 1" )
	closePauseMenuInternal( f19_arg0, f19_arg1 )
end

function disturbing_content_in_game_skip_popup( f20_arg0, f20_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_SP_OFFENSIVE_TITLE" ),
		message_text = Engine.Localize( "@MENU_SP_OFFENSIVE_ARE_YOU_SURE" ) .. "\n\n" .. Engine.Localize( "@PLATFORM_OFFENSIVE_NO_PENALTY" ),
		yes_text = Engine.Localize( "@MENU_YES" ),
		yes_action = disturbingContentInGameSkipResponseYes,
		no_text = Engine.Localize( "@MENU_NO" ),
		color = Colors.h1.light_red,
		cancel_means_no = true,
		cancel_will_close = true
	} )
end

function BuildDefs( f21_arg0, f21_arg1 )
	for f21_local0 = 1, #f21_arg1, 1 do
		LUI.MenuBuilder.BuildAddChild( f21_arg0, f21_arg1[f21_local0] )
	end
end

function sp_pause_menu( f22_arg0, f22_arg1 )
	local f22_local0 = LUI.MenuTemplate.new( f22_arg0, {
		menu_title = "@LUA_MENU_PAUSED_CAPS",
		subContainer = true,
		menu_top_indent = LUI.MenuTemplate.spMenuOffset,
		delay_display = PauseMenuAnimationSettings.Background.DelayIn,
		showTopRightSmallBar = true
	} )
	f22_local0:registerAnimationState( "out", {
		alpha = 0
	} )
	f22_local0:registerEventHandler( "transition_complete_out", function ( element, event )
		closePauseMenuInternal( element, event )
	end )
	local f22_local1 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f22_local1.alpha = 1
	local self = LUI.UIElement.new( f22_local1 )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	if not f0_local1 then
		self:animateToState( "hidden" )
	end
	self:registerEventHandler( "menu_create", MBh.AnimateToState( "default", PauseMenuAnimationSettings.Background.DurationIn ) )
	self:addElement( f22_local0 )
	local f22_local3 = Engine.GetDvarBool( "credits_active" )
	local f22_local4 = Engine.GetDvarInt( "g_gameskill" )
	local f22_local5 = true
	local f22_local6 = Engine.IsSaveAvailable()
	if f22_local3 then
		f22_local0:AddButton( "@MENU_RESUME_CREDITS", closePauseMenu, nil, nil, nil )
	else
		local f22_local7 = f22_local0:AddButton( "@MENU_RESUMEGAME", closePauseMenu, nil, nil, nil )
		f22_local7:setActionSFX( CoD.SFX.PauseMenuResume )
	end
	f22_local0:AddOptionsButton( true )
	if CoD.IsCampaignOnly() and not Engine.GetDvarBool( "limited_mode" ) and not f22_local3 then
		f22_local0:AddButton( Engine.Localize( "@MENU_INTEL" ), "intel_menu_scenario", Engine.GetDvarBool( "arcademode" ), nil, nil, {
			desc_text = Engine.Localize( "@LUA_MENU_INTEL_SELECT_MESSAGE" ),
			showNewSticker = LUI.IntelMenu.UpdateAndCheckNewState()
		} )
	end
	if f22_local3 == nil or not f22_local3 then
		if canChangeDifficulty() then
			local f22_local7 = function ( f24_arg0, f24_arg1 )
				LUI.FlowManager.RequestAddMenu( f24_arg0, "ChangeDifficultyRestartConfirmPopup", true, f24_arg1.controller, false, false )
			end
			
			f22_local0:AddButton( (Engine.IsDevelopmentBuild() and "[DEV] " or "") .. Engine.Localize( "@MENU_CHANGE_DIFFICULTY" ), function ( f25_arg0, f25_arg1 )
				LUI.FlowManager.RequestAddMenu( f25_arg0, "difficulty_selection_menu", true, f25_arg1.controller, false, {
					acceptFunc = f22_local7,
					specialops = Engine.GetDvarBool( "specialops" ),
					canBackOut = true
				} )
			end, nil, nil, nil )
		end
		if f22_local4 > 0 and canLowerDifficulty() then
			local f22_local7 = {
				"LowerDifficultyConfirmPopup10",
				"LowerDifficultyConfirmPopup21",
				"LowerDifficultyConfirmPopup32"
			}
			f22_local0:AddButton( "@MENU_LOWER_DIFFICULTY", MBh.OpenMenu( f22_local7[f22_local4], false, false ), nil, nil, nil )
		end
		if not isMuseumMission() and not Engine.GetDvarBool( "specialops" ) then
			f22_local0:AddButton( "@MENU_LAST_CHECKPOINT", MBh.OpenMenu( "LastCheckpointConfirmPopup", false, false ), Engine.GetDvarBool( "arcademode" ), nil, nil, {
				showLockOnDisable = true
			} )
		end
		f22_local0:AddButton( "@MENU_RESTART_MISSION", MBh.OpenMenu( "RestartMissionConfirmPopup", false, false ), Engine.GetDvarBool( "arcademode_full" ), nil, nil, {
			showLockOnDisable = true
		} )
		if not f22_local5 or not f22_local6 or Engine.GetDvarBool( "arcademode" ) or Engine.GetDvarBool( "specialops" ) or isMuseumMission() then
			f22_local0:AddButton( "@PLATFORM_QUIT", MBh.OpenMenu( "quit_confirm_popup", false, false ), nil, nil, nil )
		else
			f22_local0:AddButton( "@PLATFORM_SAVE_AND_QUIT", MBh.OpenMenu( "save_and_quit_confirm_popup", false, false ), nil, nil, nil )
		end
		if isNoRussian() then
			f22_local0:AddButton( "@MENU_SP_SKIP_MISSION", MBh.OpenMenu( "disturbing_content_in_game_skip_popup", false, false ), nil, nil, nil, {
				onlyConfirm = true
			} )
		end
	else
		f22_local0:AddButton( "@PLATFORM_QUIT", MBh.OpenMenu( "quit_confirm_popup", false, false ), nil, nil, nil )
	end
	if f0_local0 then
		local f22_local7 = CoD.CreateState( -800, 95, 0, nil, CoD.AnchorTypes.TopRight )
		f22_local7.height = 1
		f22_local7.material = RegisterMaterial( "white" )
		f22_local0.subContainer:addElement( LUI.UIImage.new( f22_local7 ) )
	end
	LUI.sp_hud.ObjectivesFrame.Show( f22_local0.subContainer, false, false, false )
	if Friends.HasPartyGameInvite() then
		f22_local0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_alt2",
			helper_text = Engine.Localize( "@XBOXLIVE_PARTY_INVITE_ACCEPT" ),
			side = "right",
			clickable = false
		}, tryFollowInvite )
	end
	local f22_local7 = LUI.UIBindButton.new()
	f22_local7.id = "inGameButtonBinds"
	f22_local7:registerEventHandler( "button_start", backAction )
	f22_local0:addElement( f22_local7 )
	local f22_local8 = f22_local0:AddBackButton( backAction )
	f0_local1 = true
	CoD.InitializeCheat( f22_local0, function ( f26_arg0, f26_arg1 )
		LUI.FlowManager.RequestAddMenu( nil, "sp_pause_menu", true, f26_arg1.controller, true, nil, {
			reload = true
		} )
	end )
	return self
end

function InvertFlightControlsPopup( f27_arg0, f27_arg1 )
	local f27_local0 = LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@LUA_SP_COMMON_FLIGHT_CONTROLS" ),
		message_text = Engine.Localize( "@LUA_SP_COMMON_REVERSE_FLIGHT_CONTROLS" ),
		cancel_will_close = false,
		no_action = function ( f28_arg0, f28_arg1 )
			Engine.ExecNow( "profile_toggleInvertedFlightPitch", f28_arg1.controller )
			Engine.SetDvarInt( "cl_paused", 0 )
		end,
		yes_action = function ( f29_arg0, f29_arg1 )
			Engine.SetDvarInt( "cl_paused", 0 )
		end,
		default_focus_index = 1
	} )
	f27_local0:registerEventHandler( "menu_create", function ( element, event )
		Engine.SetDvarInt( "cl_paused", 1 )
	end )
	return f27_local0
end

function flight_controls_setting_popmenu( f31_arg0, f31_arg1 )
	local f31_local0 = LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@LUA_SP_COMMON_FLIGHT_CONTROLS" ),
		message_text = Engine.Localize( "@LUA_SP_COMMON_FLIGHT_CONTROLS_OPTIONS" ),
		button_text = Engine.Localize( "@MENU_OK" ),
		confirmation_action = function ( f32_arg0, f32_arg1 )
			Engine.SetDvarInt( "cl_paused", 0 )
		end,
		default_focus_index = 1
	} )
	f31_local0:registerEventHandler( "menu_create", function ( element, event )
		Engine.SetDvarInt( "cl_paused", 1 )
	end )
	f31_local0:registerEventHandler( "popup_back", function ( element, event )
		Engine.SetDvarInt( "cl_paused", 0 )
	end )
	return f31_local0
end

LUI.MenuBuilder.registerType( "sp_pause_menu", sp_pause_menu )
LUI.MenuBuilder.registerPopupType( "InvertFlightControlsPopup", InvertFlightControlsPopup )
LUI.MenuBuilder.registerPopupType( "QuitCreditsConfirmPopup", QuitCreditsConfirmPopup )
LUI.MenuBuilder.registerPopupType( "LowerDifficultyConfirmPopup10", LowerDifficultyConfirmPopup10 )
LUI.MenuBuilder.registerPopupType( "LowerDifficultyConfirmPopup21", LowerDifficultyConfirmPopup21 )
LUI.MenuBuilder.registerPopupType( "LowerDifficultyConfirmPopup32", LowerDifficultyConfirmPopup32 )
LUI.MenuBuilder.registerPopupType( "ChangeDifficultyRestartConfirmPopup", ChangeDifficultyRestartConfirmPopup )
LUI.MenuBuilder.registerPopupType( "LastCheckpointConfirmPopup", LastCheckpointConfirmPopup )
LUI.MenuBuilder.registerPopupType( "RestartMissionConfirmPopup", RestartMissionConfirmPopup )
LUI.MenuBuilder.registerPopupType( "flight_controls_setting_popmenu", flight_controls_setting_popmenu )
LUI.MenuBuilder.registerPopupType( "disturbing_content_in_game_skip_popup", disturbing_content_in_game_skip_popup )
LockTable( _M )
