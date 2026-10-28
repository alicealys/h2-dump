local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = true
f0_local1 = function ()
	Engine.SetDvarBool( "specops", false )
	if not Engine.GetDvarBool( "mis_cheat" ) then
		Engine.SetDvarString( "start", "" )
	end
	Engine.SetDvarBool( "solo_play", false )
	Engine.SetDvarBool( "ui_autoContinue", false )
end

f0_local2 = function ()
	if not Engine.HasAcceptedInvite() then
		Engine.ExecNow( "forcenosplitscreencontrol main_campaign" )
	end
end

local f0_local3 = function ( f3_arg0, f3_arg1 )
	if Engine.IsConsoleGame() then
		Engine.ExecNow( "forcenosplitscreencontrol main_options_menu", f3_arg1.controller )
		LUI.FlowManager.RequestAddMenu( f3_arg0, "console_controls", true, f3_arg1.controller, false )
	else
		LUI.FlowManager.RequestAddMenu( f3_arg0, "pc_controls", true, f3_arg1.controller, false )
	end
end

local f0_local4 = function ( f4_arg0, f4_arg1 )
	f0_local1()
	Engine.EnumerateContent( f4_arg1.controller )
	if Engine.CorruptSaveGame and Engine.CorruptSaveGame() or false then
		LUI.FlowManager.RequestAddMenu( f4_arg0, "save_corrupted", false, f4_arg1.controller, false )
	elseif Engine.GetDvarBool( "profileMenuOption_resumeIsGameCompleted" ) then
		LUI.FlowManager.RequestPopupMenu( f4_arg0, "resume_newgame_menu", false, f4_arg1.controller, false )
	else
		LUI.FlowManager.RequestPopupMenu( f4_arg0, "resume_game_menu", false, f4_arg1.controller, false )
	end
end

local f0_local5 = function ()
	if LUI.PreviousMenuName == nil then
		return true
	end
	local f5_local0 = string.sub( LUI.PreviousMenuName, 1, 13 ) == "level_select_"
	local f5_local1 = string.sub( LUI.PreviousMenuName, 1, 11 ) == "intel_menu_"
	local f5_local2 = false
	if Engine.IsConsoleGame() then
		f5_local2 = LUI.ConsoleOptions.FindTypeIndex( LUI.PreviousMenuName ) ~= 0
	else
		f5_local2 = LUI.PreviousMenuName == "pc_controls"
	end
	local f5_local3
	if not f5_local2 and not f5_local1 then
		f5_local3 = not f5_local0
	else
		f5_local3 = false
	end
	return f5_local3
end

local f0_local6 = 0
local f0_local7 = {
	{
		popup = "overwrite_warning_menu",
		showWhenCanResume = true
	},
	{
		popup = "public_service_announcement_warning"
	},
	{
		popup = "disturbing_content_main_menu_popup",
		checkAirport = true
	},
	{
		popup = "no_profile_warning_newgame",
		checkSignedIn = true
	},
	{
		popup = "popmenu_autosave_warning",
		showWhenCanResume = false
	}
}
local f0_local8 = function ( f6_arg0, f6_arg1, f6_arg2 )
	local f6_local0 = true
	local f6_local1 = {}
	if 0 < f0_local6 then
		f0_local7[f0_local6].finalAction = f6_arg2
	end
	f0_local6 = f0_local6 + 1
	while f0_local6 <= #f0_local7 do
		f6_local0 = true
		if f0_local7[f0_local6].showWhenCanResume ~= nil and f0_local7[f0_local6].showWhenCanResume ~= Engine.CanResumeGame() then
			f6_local0 = false
		end
		if f0_local7[f0_local6].checkAirport and f6_local0 then
			f6_local0 = not Engine.GetDvarBool( "loc_no_airport" )
		end
		if f0_local7[f0_local6].checkSignedIn and f6_local0 then
			f6_local0 = not Engine.IsProfileSignedIn( f6_arg1.controller )
		end
		if f6_local0 then
			LUI.FlowManager.RequestAddMenu( f6_arg0, f0_local7[f0_local6].popup, false, f6_arg1.controller, true, {
				done_action = f0_local8
			} )
			return 
		end
		f0_local6 = f0_local6 + 1
	end
	f0_local1()
	for f6_local5, f6_local6 in ipairs( f0_local7 ) do
		if f6_local6.finalAction and f6_local1[f6_local6.finalAction] == nil then
			f6_local1[f6_local6.finalAction] = 1
			f6_local6.finalAction( f6_arg0, f6_arg1 )
		end
	end
end

local f0_local9 = function ( f7_arg0, f7_arg1 )
	Engine.EnumerateContent( f7_arg1.controller )
	f0_local6 = 0
	f0_local8( f7_arg0, f7_arg1, nil )
end

local f0_local10 = function ( f8_arg0, f8_arg1 )
	f0_local1()
	Engine.EnumerateContent( f8_arg1.controller )
	Engine.SetDvarBool( "requirestats", true )
	if Engine.IsProfileSignedIn( f8_arg1.controller ) then
		LUI.FlowManager.RequestAddMenu( nil, LUI.LevelSelect.FirstCampaignMenuName, false, f8_arg1.controller, false, {} )
	else
		LUI.FlowManager.RequestAddMenu( f8_arg0, "no_profile_warning_level_select_menu", false, f8_arg1.controller )
	end
end

local f0_local11 = function ( f9_arg0, f9_arg1 )
	LUI.FlowManager.PushMenuStackToDVar()
	LUI.LevelSelect.ResumeSetIsGameCompleted( false )
	Engine.SetDvarString( "ui_char_museum_mode", "free", true )
	Engine.StreamingInstallMap( "ending", "devmap ending" )
end

local f0_local12 = function ( f10_arg0, f10_arg1 )
	LUI.FlowManager.PushMenuStackToDVar()
	if LUI.LevelSelect.IsAllLevelCompleted() then
		Engine.SetDvarString( "ui_char_museum_mode", "credits_2", true )
	else
		Engine.SetDvarString( "ui_char_museum_mode", "credits_black", true )
	end
	Engine.StreamingInstallMap( "ending", "set ui_play_credits 1; devmap ending;" )
end

local f0_local13 = function ( f11_arg0, f11_arg1 )
	Engine.Help()
end

local f0_local14 = function ( f12_arg0, f12_arg1 )
	Engine.SetDvarString( "gamemode", "" )
	Engine.PlaySound( CoD.SFX.MenuBack )
	Engine.SetDvarString( "ui_loadMenuName", "" )
	Engine.SetDvarBool( "ui_skipMainLockout", false )
	LUI.FlowManager.RequestLeaveMenu( f12_arg0 )
end

local f0_local15 = function ()
	local f13_local0 = Engine.CanResumeGame()
	local f13_local1 = Engine.CorruptSaveGame and Engine.CorruptSaveGame() or false
	local f13_local2
	if not f13_local0 then
		f13_local2 = not f13_local1
	else
		f13_local2 = false
	end
	return f13_local2
end

local f0_local16 = function ( f14_arg0 )
	if Engine.GetDvarBool( "limited_mode" ) then
		return false
	else
		return not LUI.LevelSelect.IsMissionEnabled( 1, false )
	end
end

function MenuCreate( f15_arg0, f15_arg1 )
	LUI.LevelSelect.CheckCampaignCompletedNotification( f15_arg0, f15_arg1 )
	if f0_local0 or f0_local5() then
		Engine.Exec( "select_save_device" )
	end
end

function OnSpecOpsButtonAction( f16_arg0, f16_arg1 )
	LUI.FlowManager.RequestAddMenu( f16_arg0, "main_specOps", true, f16_arg1.controller, false )
end

function OnMultiPlayerButtonAction( f17_arg0, f17_arg1 )
	Engine.StreamingInstallMap( "mp_initial", "startMultiplayer;" )
end

function HandleQuitPC( f18_arg0, f18_arg1 )
	LUI.FlowManager.RequestAddMenu( f18_arg0, "quit_popmenu", false, f18_arg1.controller )
end

function main_campaign( f19_arg0, f19_arg1 )
	Engine.SetDvarBool( "ui_skipMainLockout", true )
	Engine.ExecNow( "profile_menuDvarsSetup" )
	local f19_local0 = LUI.MenuTemplate.new( f19_arg0, {
		menu_title = Engine.Localize( "@MENU_SP_CAMPAIGN" ),
		exclusiveController = 0,
		menu_top_indent = LUI.MenuTemplate.spMenuOffset,
		showTopRightSmallBar = true
	} )
	f19_local0.id = "main_campaign_container"
	LUI.MenuTemplate.SetBreadCrumb( f19_local0, "" )
	f19_local0:registerEventHandler( "menu_create", MenuCreate )
	f19_local0:AddBackButton( f0_local14 )
	if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
		f19_local0:processEvent( LUI.ButtonHelperText.CommonEvents.addSelectButton )
	end
	if Engine.IsXB3() or Engine.IsPCApp() then
		LUI.ButtonHelperText.AddSignInAndSwitchUserHelp( f19_local0 )
	end
	local f19_local1 = function ()
		f19_local0.list:closeChildren()
		if f19_local0.optionTextInfo then
			f19_local0.optionTextInfo:close()
		end
		if not Engine.GetDvarBool( "limited_mode" ) then
			if not f0_local15() then
				local f20_local0 = f19_local0:AddButton( "@LUA_MENU_RESUME_GAME", f0_local4, f0_local15, true, false, {
					desc_text = Engine.Localize( "@LUA_MENU_RESUME_GAME_DESC" ),
					disableSound = CoD.SFX.MenuAcceptDisabled
				} )
				f20_local0.listDefaultFocus = true
			end
			local f20_local0 = f19_local0:AddButton( "@LUA_MENU_NEW_GAME", f0_local9, nil, true, nil, {
				desc_text = Engine.Localize( "@LUA_MENU_NEW_GAME_DESC" )
			} )
			f20_local0.listDefaultFocus = f0_local15()
		end
		if not f0_local15() or not LUI.LevelSelect.ProgressionEnabled() then
			f19_local0:AddButton( "@LUA_MENU_MISSION_SELECT", f0_local10, nil, true, nil, {
				desc_text = Engine.Localize( "@LUA_MENU_MISSION_SELECT_DESC" )
			} )
		end
		local f20_local0 = "@MENU_SP_MUSEUM_LOCKED_DESC"
		if LUI.LevelSelect.IsAllLevelCompleted() then
			f20_local0 = "@MENU_SP_MUSEUM_DESC"
		end
		f19_local0:AddButton( "@MENU_SP_MUSEUM", f0_local11, not LUI.LevelSelect.IsAllLevelCompleted(), true, nil, {
			desc_text = Engine.Localize( f20_local0 )
		} )
		if CoD.IsCampaignOnly() and not Engine.GetDvarBool( "limited_mode" ) then
			f19_local0:AddButton( Engine.Localize( "@MENU_INTEL" ), "intel_menu_scenario", nil, nil, nil, {
				desc_text = Engine.Localize( "@LUA_MENU_INTEL_SELECT_MESSAGE" ),
				showNewSticker = LUI.IntelMenu.UpdateAndCheckNewState()
			} )
		end
		f19_local0:AddOptionsButton( true )
		if not Engine.GetDvarBool( "limited_mode" ) then
			f19_local0:AddButton( "@LUA_MENU_CREDITS", f0_local12, nil, true, nil, {
				desc_text = Engine.Localize( "@LUA_MENU_CREDITS_DESC" )
			} )
		end
		if not Engine.IsConsoleGame() then
			f19_local0:AddButton( Engine.Localize( "@LUA_MENU_EXIT_GAME" ), HandleQuitPC, nil, true, nil, {
				desc_text = Engine.Localize( "@MENU_SP_DESC_QUIT" )
			} )
		end
		LUI.Options.InitScrollingList( f19_local0.list, nil )
		f19_local0.optionTextInfo = LUI.Options.AddOptionTextInfo( f19_local0 )
	end
	
	if not f0_local0 and not f0_local5() then
		f19_local1()
	end
	f0_local1()
	CoD.ChangeCampaignBackground( self, event, Engine.GetDvarInt( "g_gameskill" ) or 1 )
	Engine.SetGameMode( "sp" )
	Engine.SetDvarBool( "specialops", false )
	Engine.SetDvarBool( "so_survival", false )
	Engine.SetSplitScreen( false )
	Engine.SetDvarString( "ui_prev_map", "" )
	Engine.SetDvarBool( "prologue_select", false )
	Engine.SetDvarBool( "credits_active", false )
	Engine.SetDvarInt( "ui_play_credits", 0 )
	Engine.SetDvarString( "ui_char_museum_mode", "credits_1", true )
	if not Engine.GetDvarBool( "limited_mode" ) then
		Engine.SetDvarString( "ui_loadMenuName", "main_campaign" )
	end
	CoD.InitializeCheat( f19_local0, function ( f21_arg0, f21_arg1 )
		LUI.FlowManager.RequestAddMenu( nil, "main_campaign", true, f21_arg1.controller, true, nil, {
			reload = true
		} )
	end )
	f19_local0:registerEventHandler( "finishreadingsavedevice", function ( element, event )
		f0_local0 = false
		Engine.Exec( "Updatedvarsfromprofile" )
		Engine.Exec( "profile_difficultyLoad" )
		Engine.Exec( "loadgame_fetch_mapname" )
		f19_local1()
		if not LUI.FlowManager.IsTopMenuModal() then
			f19_local0:processEvent( {
				name = "gain_focus"
			} )
		end
	end )
	if (f0_local0 or f0_local5()) and not Engine.IsConsoleGame() and not Engine.IsPCApp() then
		f19_local0:processEvent( {
			name = "finishreadingsavedevice"
		} )
	end
	local f19_local2 = CoD.CreateState( -500, 45, 0, nil, CoD.AnchorTypes.TopRight )
	f19_local2.alignment = LUI.Alignment.Right
	f19_local2.font = CoD.TextSettings.TitleFontTiny.Font
	f19_local2.height = CoD.TextSettings.TitleFontTiny.Height
	f19_local2.color = GenericMenuColors.text_highlight
	local self = LUI.UIText.new( f19_local2 )
	self:setText( Engine.ToUpperCase( Engine.Localize( "@MENU_SP_FOR_THE_RECORD" ) ) )
	f19_local0:addElement( self )
	Engine.ExecNow( "profile_SetHasEverPlayed_MainMenu" )
	Engine.Exec( "updategamerprofile" )
	return f19_local0
end

LUI.MenuBuilder.registerType( "main_campaign", main_campaign )
LUI.FlowManager.RegisterStackPushBehaviour( "main_campaign", f0_local2 )
LockTable( _M )
