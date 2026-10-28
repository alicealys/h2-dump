local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = function ()
	Engine.SetDvarBool( "specops", false )
	Engine.SetDvarBool( "ui_autoContinue", false )
end

f0_local1 = function ()
	if not Engine.HasAcceptedInvite() then
		Engine.ExecNow( "forcenosplitscreencontrol main_specOps" )
	end
end

f0_local2 = function ()
	if LUI.PreviousMenuName == nil then
		return true
	end
	local f3_local0 = string.sub( LUI.PreviousMenuName, 1, 13 ) == "level_select_"
	local f3_local1 = string.sub( LUI.PreviousMenuName, 1, 11 ) == "intel_menu_"
	local f3_local2 = false
	if Engine.IsConsoleGame() then
		f3_local2 = LUI.ConsoleOptions.FindTypeIndex( LUI.PreviousMenuName ) ~= 0
	else
		f3_local2 = LUI.PreviousMenuName == "pc_controls"
	end
	local f3_local3
	if not f3_local2 and not f3_local1 then
		f3_local3 = not f3_local0
	else
		f3_local3 = false
	end
	return f3_local3
end

local f0_local3 = function ( f4_arg0, f4_arg1 )
	f0_local0()
	Engine.EnumerateContent( f4_arg1.controller )
	Engine.SetDvarBool( "requirestats", true )
	if Engine.IsProfileSignedIn( f4_arg1.controller ) then
		LUI.FlowManager.RequestAddMenu( nil, LUI.LevelSelect.FirstSpecopsMenuName, false, f4_arg1.controller, false, {} )
	else
		LUI.FlowManager.RequestAddMenu( f4_arg0, "no_profile_warning_level_select_menu", false, f4_arg1.controller )
	end
end

local f0_local4 = function ( f5_arg0, f5_arg1 )
	LUI.FlowManager.PushMenuStackToDVar()
	Engine.SetDvarString( "ui_char_museum_mode", "credits_black" )
	Engine.StreamingInstallMap( "ending", "set ui_play_credits 1; set ui_autoContinue 1; devmap ending;" )
end

local f0_local5 = function ( f6_arg0, f6_arg1 )
	Engine.Help()
end

local f0_local6 = function ( f7_arg0, f7_arg1 )
	Engine.SetDvarString( "gamemode", "" )
	Engine.PlaySound( CoD.SFX.MenuBack )
	Engine.SetDvarString( "ui_loadMenuName", "" )
	Engine.SetDvarBool( "ui_skipMainLockout", false )
	LUI.FlowManager.RequestLeaveMenu( f7_arg0 )
end

function MenuCreate( f8_arg0, f8_arg1 )
	if f0_local2() then
		Engine.Exec( "select_save_device" )
	end
end

function main_specOps( f9_arg0, f9_arg1 )
	Engine.SetDvarBool( "ui_skipMainLockout", true )
	Engine.ExecNow( "profile_menuDvarsSetup" )
	local f9_local0 = LUI.MenuTemplate.new( f9_arg0, {
		menu_title = Engine.ToUpperCase( Engine.Localize( "@MENU_SPECIAL_OPS" ) ),
		exclusiveController = 0,
		menu_top_indent = LUI.MenuTemplate.spMenuOffset
	} )
	f9_local0.id = "main_specOps_container"
	LUI.MenuTemplate.SetBreadCrumb( f9_local0, "" )
	f9_local0:registerEventHandler( "menu_create", MenuCreate )
	f9_local0:AddBackButton( f0_local6 )
	if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
		f9_local0:processEvent( LUI.ButtonHelperText.CommonEvents.addSelectButton )
	end
	if Engine.IsXB3() or Engine.IsPCApp() then
		LUI.ButtonHelperText.AddSignInAndSwitchUserHelp( f9_local0 )
	end
	local f9_local1 = function ()
		f9_local0:AddButton( "@LUA_MENU_MISSION_SELECT", f0_local3, nil, true, nil, {
			desc_text = Engine.Localize( "@LUA_MENU_MISSION_SELECT_DESC" )
		} )
		f9_local0:AddOptionsButton( true )
		if not Engine.GetDvarBool( "limited_mode" ) then
			f9_local0:AddButton( "@LUA_MENU_CREDITS", f0_local4, nil, true, nil, {
				desc_text = Engine.Localize( "@LUA_MENU_CREDITS_DESC" )
			} )
		end
		LUI.Options.InitScrollingList( f9_local0.list, nil )
		LUI.Options.AddOptionTextInfo( f9_local0 )
	end
	
	if not f0_local2() then
		f9_local1()
	end
	f0_local0()
	Engine.SetGameMode( "sp" )
	Engine.SetDvarBool( "specialops", true )
	Engine.SetDvarBool( "so_survival", false )
	Engine.SetSplitScreen( false )
	Engine.SetDvarString( "ui_prev_map", "" )
	Engine.SetDvarBool( "prologue_select", false )
	Engine.SetDvarBool( "credits_active", false )
	Engine.SetDvarInt( "ui_play_credits", 0 )
	f9_local0:registerEventHandler( "finishreadingsavedevice", function ( element, event )
		Engine.Exec( "Updatedvarsfromprofile" )
		Engine.Exec( "profile_difficultyLoad" )
		f9_local1()
		if not LUI.FlowManager.IsTopMenuModal() then
			f9_local0:processEvent( {
				name = "gain_focus"
			} )
		end
	end )
	if f0_local2() and not Engine.IsConsoleGame() and not Engine.IsPCApp() then
		f9_local0:processEvent( {
			name = "finishreadingsavedevice"
		} )
	end
	return f9_local0
end

LUI.MenuBuilder.registerType( "main_specOps", main_specOps )
LUI.FlowManager.RegisterStackPushBehaviour( "main_specOps", f0_local1 )
LockTable( _M )
