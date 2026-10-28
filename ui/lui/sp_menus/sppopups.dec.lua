local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
function NoProfileWarningYesAction( f1_arg0, f1_arg1 )
	Engine.Exec( "xsignin" )
	LUI.FlowManager.RequestLeaveMenu( f1_arg0 )
end

function NoProfileWarningLevelSelectNoAction( f2_arg0, f2_arg1 )
	LUI.FlowManager.RequestLeaveMenu( f2_arg0 )
	LUI.FlowManager.RequestAddMenuCampaign( f2_arg0, true, f2_arg1.controller, false )
end

function no_profile_warning_level_select_menu( f3_arg0, f3_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_WARNING" ),
		message_text = Engine.Localize( "@MENU_SP_PROFILE_WARNING_SP" ),
		yes_action = NoProfileWarningYesAction,
		no_action = NoProfileWarningLevelSelectNoAction
	} )
end

function ResumeGameYesAction( f4_arg0, f4_arg1 )
	LUI.ComScore.LogResumeCampaign( f4_arg1.controller )
	Engine.SetDvarString( "ui_char_museum_mode", "credits_1" )
	Engine.SetDvarBool( "prologue_select", false )
	Engine.Exec( "profile_difficultyLoad" )
	Engine.Exec( "loadgame_continue" )
	LUI.FlowManager.RequestLeaveMenu( f4_arg0 )
end

function OpenDriverUpdateURL( f5_arg0, f5_arg1 )
	Engine.Exec( "open_driver_update_url" )
	LUI.FlowManager.RequestLeaveMenu( f5_arg0 )
end

function resume_game_menu( f6_arg0, f6_arg1 )
	local f6_local0 = LUI.LevelSelect.FindLevelTitle( Engine.GetDvarString( "loadgame_mapname" ) )
	local f6_local1 = {
		popup_title = Engine.Localize( "@MENU_RESUMEGAME_Q" )
	}
	local f6_local2
	if f6_local0 then
		f6_local2 = Engine.Localize( "@MENU_RESUMEGAME_Q_DESC" ) .. "\n" .. Engine.Localize( f6_local0 )
		if not f6_local2 then
		
		else
			f6_local1.message_text = f6_local2
			f6_local1.yes_text = Engine.Localize( "@MENU_YES_CAPS" )
			f6_local1.yes_action = ResumeGameYesAction
			f6_local1.no_text = Engine.Localize( "@MENU_NO_CAPS" )
			f6_local1.no_action = MBh.LeaveMenu()
			return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", f6_local1 )
		end
	end
	f6_local2 = nil
end

function resume_newgame_menu( f7_arg0, f7_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_RESUMEGAME_Q" ),
		message_text = Engine.Localize( "@MENU_RESUME_NEWGAME" ),
		yes_text = Engine.Localize( "@MENU_YES_CAPS" ),
		yes_action = OpenFirstLevel,
		no_text = Engine.Localize( "@MENU_NO_CAPS" ),
		no_action = MBh.LeaveMenu(),
		cancel_means_no = false
	} )
end

function RecommendMpYesAction( f8_arg0, f8_arg1 )
	LUI.FlowManager.RequestLeaveMenu( f8_arg0 )
	Engine.Exec( "profile_SetStartCRPLobby", f8_arg1.controller )
	Engine.Exec( "updategamerprofile" )
	Engine.StartMultiplayer()
end

function RecommendMpNoAction( f9_arg0, f9_arg1 )
	LUI.FlowManager.RequestLeaveMenu( f9_arg0 )
	Engine.StartMultiplayer()
end

function recommend_mp_menu( f10_arg0, f10_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@MENU_SP_RECOMMENDATION" ),
		yes_text = Engine.Localize( "@LUA_MENU_CAMPAIGN_DESC" ),
		yes_action = RecommendMpYesAction,
		no_text = Engine.Localize( "@MENU_SP_CONTINUE_TO_MULTIPLAYER" ),
		no_action = RecommendMpNoAction,
		cancel_means_no = false
	} )
end

function xenon_disc_dlc_menu( f11_arg0, f11_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@LUA_MENU_INSERT_DISC_2" ),
		message_text = Engine.Localize( "@LUA_MENU_INSERT_DISC_2_MESSAGE" ),
		button_text = Engine.Localize( "@MENU_OK" ),
		confirmation_action = MBh.LeaveMenu()
	} )
end

function xenon_damaged_disc2_content_menu( f12_arg0, f12_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@LUA_MENU_DAMAGED_DISC_2_MESSAGE" ),
		confirmation_action = MBh.LeaveMenu()
	} )
end

function GamesOnDemandInstallContent( f13_arg0, f13_arg1 )
	LUI.FlowManager.RequestLeaveMenu( f13_arg0 )
	Engine.DownloadXenonDiscContent( f13_arg1.controller )
end

function xenon_gamesondemand_install_menu( f14_arg0, f14_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@LUA_MENU_DOWNLOAD_SP_PROMPT" ),
		message_text = Engine.Localize( "@LUA_MENU_DOWNLOAD_SP_DESC" ),
		yes_text = Engine.Localize( "@MENU_YES_CAPS" ),
		yes_action = GamesOnDemandInstallContent,
		no_text = Engine.Localize( "@MENU_NO_CAPS" ),
		no_action = MBh.LeaveMenu()
	} )
end

function xenon_gamesondemand_isdownloading_menu( f15_arg0, f15_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@LUA_MENU_DOWNLOAD_IN_PROGRESS" ),
		message_text = Engine.Localize( "@LUA_MENU_DOWNLOAD_WAIT" ),
		button_text = Engine.Localize( "@MENU_OK" ),
		confirmation_action = MBh.LeaveMenu()
	} )
end

function OpenFirstLevel( f16_arg0, f16_arg1 )
	LUI.FlowManager.RequestLeaveMenu( f16_arg0 )
	LUI.ComScore.LogStartCampaign( f16_arg1.controller )
	LUI.FlowManager.PushMenuStackToDVar()
	LUI.LevelSelect.ResumeSetIsGameCompleted( false )
	Engine.StopMusic( 200 )
	PersistentBackground.Close()
	if Engine.IsDevelopmentBuild() then
		Engine.Exec( "cinematic intro_credits_load" )
	else
		Engine.Exec( "unskippablecinematic intro_credits_load" )
	end
	Engine.StreamingInstallMap( "trainer", "set nextmap devmap trainer " )
end

function ResetAndOpenFirstLevel( f17_arg0, f17_arg1 )
	LUI.FlowManager.RequestLeaveMenu( f17_arg0 )
	LUI.ComScore.LogStartCampaign( f17_arg1.controller )
	LUI.LevelSelect.ResumeSetIsGameCompleted( false )
	LUI.FlowManager.PushMenuStackToDVar()
	Engine.StopMusic( 200 )
	PersistentBackground.Close()
	Engine.Exec( "cinematic intro_credits_load" )
	Engine.StreamingInstallMap( "trainer", "set nextmap devmap trainer " )
end

function overwrite_warning_menu( f18_arg0, f18_arg1 )
	local f18_local0 = f18_arg1.done_action
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_NEWGAME" ),
		message_text = Engine.Localize( "@MENU_WARNING_NEWGAME_RESET" ),
		yes_text = Engine.Localize( "@MENU_YES_CAPS" ),
		yes_action = function ( f19_arg0, f19_arg1 )
			if f18_local0 then
				f18_local0( f19_arg0, f19_arg1, ResetAndOpenFirstLevel )
			else
				ResetAndOpenFirstLevel( f19_arg0, f19_arg1 )
			end
		end
		,
		no_text = Engine.Localize( "@MENU_NO_CAPS" ),
		no_action = MBh.LeaveMenu()
	} )
end

function request_yesno_popup_generic( f20_arg0, f20_arg1 )
	local f20_local0 = assert
	local f20_local1 = f20_arg1
	local f20_local2 = f20_arg1.popup_title
	if f20_local2 then
		f20_local2 = f20_arg1.yes_action
		if f20_local2 then
			f20_local2 = f20_local1 and f20_arg1.message_text
		end
	end
	f20_local0( f20_local2 )
	f20_local0 = {
		popup_title = Engine.Localize( f20_arg1.popup_title ),
		message_text = Engine.Localize( f20_arg1.message_text ),
		yes_text = Engine.Localize( f20_arg1.yes_text or "@MENU_YES_CAPS" ),
		yes_action = f20_arg1.yes_action,
		no_text = Engine.Localize( f20_arg1.no_text or "@MENU_NO_CAPS" )
	}
	f20_local2 = f20_arg1.no_action
	if not f20_local2 then
		f20_local2 = MBh.LeaveMenu()
	end
	f20_local0.no_action = f20_local2
	f20_local0.default_focus_index = f20_arg1.default_focus_index or 2
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", f20_local0 )
end

function no_profile_warning_newgame( f21_arg0, f21_arg1 )
	local f21_local0 = f21_arg1.done_action
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_WARNING" ),
		message_text = Engine.Localize( "@MENU_SP_PROFILE_WARNING_SP" ),
		yes_text = Engine.Localize( "@MENU_YES_CAPS" ),
		yes_action = NoProfileWarningYesAction,
		no_text = Engine.Localize( "@MENU_NO_CAPS" ),
		no_action = function ( f22_arg0, f22_arg1 )
			if f21_local0 then
				f21_local0( f22_arg0, f22_arg1, OpenFirstLevel )
			else
				OpenFirstLevel( f22_arg0, f22_arg1 )
			end
		end
		,
		cancel_action = MBh.LeaveMenu(),
		cancel_means_no = false,
		default_focus_index = 1
	} )
end

function popmenu_autosave_warning( f23_arg0, f23_arg1 )
	local f23_local0 = f23_arg1.done_action
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@PLATFORM_WARNING_AUTOSAVE" ),
		button_text = Engine.Localize( "@MENU_CONTINUE" ),
		confirmation_action = function ( f24_arg0, f24_arg1 )
			if f23_local0 then
				f23_local0( f24_arg0, f24_arg1, OpenFirstLevel )
			else
				OpenFirstLevel( f24_arg0, f24_arg1 )
			end
		end
		
	} )
end

function save_corrupted( f25_arg0, f25_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_SAVE_CORRUPTED" ),
		message_text = Engine.Localize( "@MENU_SAVEDATA_CORRUPTED" ),
		button_text = Engine.Localize( "@MENU_OK" ),
		confirmation_action = MBh.LeaveMenu(),
		cancel_will_close = false
	} )
end

function not_signed_in_warning( f26_arg0, f26_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_NOTICE" ),
		message_text = Engine.Localize( "@XBOXLIVE_NOTSIGNEDIN" ),
		button_text = Engine.Localize( "@MENU_OK" ),
		confirmation_action = MBh.LeaveMenu()
	} )
end

function speech_reduced( f27_arg0, f27_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_KINECT_NOTICE" ),
		message_text = Engine.Localize( "@MENU_KINECT_FEATURE_REDUCED" ),
		button_text = Engine.Localize( "@MENU_OK" ),
		confirmation_action = MBh.LeaveMenu()
	} )
end

function campaign_arcade_cheat_unlocked( f28_arg0, f28_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_CAMPAIGN_ARCADE_CHEAT_UNLOCKED" ),
		message_text = Engine.Localize( "@MENU_CAMPAIGN_ARCADE_CHEAT_UNLOCKED_DESC" ),
		button_text = Engine.Localize( "@MENU_OK" ),
		confirmation_action = MBh.LeaveMenu()
	} )
end

function leaderboard_fetching_data( f29_arg0, f29_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_waiting_popup", {
		popup_title = Engine.Localize( "@LUA_MENU_LEADERBOARD_REFRESH" ),
		button_text = Engine.Localize( "@MENU_CANCEL" ),
		cancel_will_close = false,
		padding_top = 30,
		popup_list_spacing = 30,
		confirmation_action = function ( f30_arg0, f30_arg1 )
			LUI.FlowManager.RequestLeaveMenuByName( "leaderboard_fetching_data" )
			LUI.FlowManager.RequestLeaveMenuByName( "sp_leaderboard_data" )
		end
		
	} )
end

function bnet_error_popup( f31_arg0, f31_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_ERROR" ),
		message_text = Engine.GetDvarString( "bnet_init_error" ),
		button_text = Engine.Localize( "@MENU_QUIT_TO_DESKTOP" ),
		confirmation_action = Engine.Quit,
		cancel_will_close = false,
		popup_width = 600
	} )
end

function display_driver_update( f32_arg0, f32_arg1 )
	local f32_local0 = f32_arg1.done_action
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_MINSPEC_GPU_DRIVER_WARN_TITLE" ),
		message_text = Engine.Localize( "@MENU_MINSPEC_GPU_DRIVER_WARN_BODY" ),
		yes_text = Engine.Localize( "@MENU_YES_CAPS" ),
		yes_action = OpenDriverUpdateURL,
		no_text = Engine.Localize( "@MENU_NO_CAPS" ),
		no_action = MBh.LeaveMenu()
	} )
end

function request_generic_confirmation_popup( f33_arg0, f33_arg1 )
	local f33_local0 = assert
	local f33_local1 = f33_arg1
	local f33_local2 = f33_arg1.popup_title
	if f33_local2 then
		f33_local2 = f33_local1 and f33_arg1.message_text
	end
	f33_local0( f33_local2 )
	f33_local0 = {
		popup_title = Engine.Localize( f33_arg1.popup_title ),
		message_text = Engine.Localize( f33_arg1.message_text ),
		button_text = Engine.Localize( f33_arg1.button_text or "@MENU_OK" )
	}
	f33_local2 = f33_arg1.confirmation_action
	if not f33_local2 then
		f33_local2 = MBh.LeaveMenu()
	end
	f33_local0.confirmation_action = f33_local2
	f33_local0.cancel_will_close = f33_arg1.cancel_will_close
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", f33_local0 )
end

function public_service_announcement_warning( f34_arg0, f34_arg1 )
	local f34_local0 = f34_arg1.done_action
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@LUA_MENU_PUBLIC_SERVICE_ANNOUNCEMENT_TITLE" ),
		message_text = Engine.Localize( "@LUA_MENU_PUBLIC_SERVICE_ANNOUNCEMENT" ),
		button_text = Engine.Localize( "@MENU_CONTINUE" ),
		confirmation_action = function ( f35_arg0, f35_arg1 )
			if f34_local0 then
				f34_local0( f35_arg0, f35_arg1 )
			end
		end
		
	} )
end

LUI.MenuBuilder.registerPopupType( "resume_game_menu", resume_game_menu )
LUI.MenuBuilder.registerPopupType( "resume_newgame_menu", resume_newgame_menu )
LUI.MenuBuilder.registerPopupType( "no_profile_warning_level_select_menu", no_profile_warning_level_select_menu )
LUI.MenuBuilder.registerPopupType( "recommend_mp_menu", recommend_mp_menu )
LUI.MenuBuilder.registerPopupType( "xenon_disc_dlc_menu", xenon_disc_dlc_menu )
LUI.MenuBuilder.registerPopupType( "xenon_damaged_disc2_content_menu", xenon_damaged_disc2_content_menu )
LUI.MenuBuilder.registerPopupType( "xenon_gamesondemand_install_menu", xenon_gamesondemand_install_menu )
LUI.MenuBuilder.registerPopupType( "xenon_gamesondemand_isdownloading_menu", xenon_gamesondemand_isdownloading_menu )
LUI.MenuBuilder.registerPopupType( "overwrite_warning_menu", overwrite_warning_menu )
LUI.MenuBuilder.registerPopupType( "request_yesno_popup_generic", request_yesno_popup_generic )
LUI.MenuBuilder.registerPopupType( "request_generic_confirmation_popup", request_generic_confirmation_popup )
LUI.MenuBuilder.registerPopupType( "no_profile_warning_newgame", no_profile_warning_newgame )
LUI.MenuBuilder.registerPopupType( "popmenu_autosave_warning", popmenu_autosave_warning )
LUI.MenuBuilder.registerPopupType( "public_service_announcement_warning", public_service_announcement_warning )
LUI.MenuBuilder.registerPopupType( "save_corrupted", save_corrupted )
LUI.MenuBuilder.registerPopupType( "not_signed_in_warning", not_signed_in_warning )
LUI.MenuBuilder.registerPopupType( "speech_reduced", speech_reduced )
LUI.MenuBuilder.registerPopupType( "campaign_arcade_cheat_unlocked", campaign_arcade_cheat_unlocked )
LUI.MenuBuilder.registerPopupType( "leaderboard_fetching_data", leaderboard_fetching_data )
LUI.MenuBuilder.registerPopupType( "bnet_error_popup", bnet_error_popup )
LUI.MenuBuilder.registerPopupType( "display_driver_update", display_driver_update )
LockTable( _M )
