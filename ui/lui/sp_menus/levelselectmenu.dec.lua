local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.LevelSelect = InheritFrom( LUI.MenuTemplate )
f0_local0 = false
f0_local1 = not CoD.AllowCheat
f0_local2 = CoD.AllowCheat
local f0_local3 = false
local f0_local4 = GenericMenuDims.menu_left
local f0_local5 = GenericMenuDims.menu_right_standard + 150
local f0_local6 = 120
local f0_local7 = "level_select_"
local f0_local8 = "level_select_container_id_"
local f0_local9 = 1
local f0_local10 = false
local f0_local11 = 150
local f0_local12 = 500
local f0_local13 = 500
local f0_local14 = 500
local f0_local15 = 1500
local f0_local16 = -1
local f0_local17 = nil
local f0_local18 = false
local f0_local19 = CoD.TextSettings.Font18
local f0_local20 = CoD.TextSettings.Font18
local f0_local21 = CoD.TextSettings.Font21
local f0_local22 = {}
local f0_local23 = nil
local f0_local24 = 0
local f0_local25 = "h2_minimap_worldmap_mission_select"
local f0_local26 = nil
if Engine.IsDevelopmentBuild() and not Engine.GetDvarBool( "limited_mode" ) then
	f0_local0 = true
end
function LoadFullArcadeMode( f1_arg0, f1_arg1 )
	Engine.SetDvarBool( "arcademode_full", true )
	LUI.ComScore.LogStartCampaign( f1_arg1.controller )
	LUI.FlowManager.PushMenuStackToDVar()
	Engine.StreamingInstallMap( "roadkill", "devmap roadkill" )
end

function StartFullArcadeMode( f2_arg0, f2_arg1 )
	LUI.FlowManager.RequestAddMenu( f2_arg0, "difficulty_selection_menu", true, f2_arg1.controller, false, {
		acceptFunc = LoadFullArcadeMode
	} )
end

local f0_local27 = {}
local f0_local28 = 2
local f0_local29 = {
	{
		loc_string = "@MENU_SP_ACT_I_CAPS",
		actName = "h2_act1",
		mapInfoList = {
			{
				mapName = "trainer",
				levelNumber = 1,
				levelTitle = "TRAINER",
				menuTitle = "@MENU_SP_TRAINER",
				menuDesc = Engine.Localize( "@MENU_SP_TRAINER_DESC" ),
				intel = {
					1
				},
				blipPosX = 98,
				blipPosY = 52,
				isTimeChallenge = true,
				storyChallenge = true
			},
			{
				mapName = "roadkill",
				levelNumber = 2,
				levelTitle = "ROADKILL",
				menuTitle = "@MENU_SP_ROADKILL",
				menuDesc = Engine.Localize( "@MENU_SP_ROADKILL_DESC" ),
				intel = {
					2,
					3
				},
				blipPosX = 97,
				blipPosY = 52
			},
			{
				mapName = "cliffhanger",
				levelNumber = 3,
				levelTitle = "CLIFFHANGER",
				menuTitle = "@MENU_SP_CLIFFHANGER",
				menuDesc = Engine.Localize( "@MENU_SP_CLIFFHANGER_DESC" ),
				intel = {
					4,
					5,
					6
				},
				blipPosX = 100,
				blipPosY = 50
			},
			{
				mapName = "airport",
				levelNumber = 4,
				levelTitle = "AIRPORT",
				menuTitle = "@MENU_SP_AIRPORT",
				menuDesc = Engine.Localize( "@MENU_SP_AIRPORT_DESC" ),
				narativeLevel = true,
				blipPosX = 86,
				blipPosY = 42
			},
			{
				mapName = "favela",
				levelNumber = 5,
				levelTitle = "FAVELA",
				menuTitle = "@MENU_SP_FAVELA",
				menuDesc = Engine.Localize( "@MENU_SP_FAVELA_DESC" ),
				intel = {
					7,
					8,
					9,
					10
				},
				blipPosX = 49,
				blipPosY = 80
			}
		}
	},
	{
		loc_string = "@MENU_SP_ACT_II_CAPS",
		actName = "h2_act2",
		mapInfoList = {
			{
				mapName = "invasion",
				levelNumber = 6,
				levelTitle = "INVASION",
				menuTitle = "@MENU_SP_INVASION",
				menuDesc = Engine.Localize( "@MENU_SP_INVASION_DESC" ),
				intel = {
					11,
					12,
					13,
					14
				},
				blipPosX = 38,
				blipPosY = 52
			},
			{
				mapName = "favela_escape",
				levelNumber = 7,
				levelTitle = "FAVELA_ESCAPE",
				menuTitle = "@MENU_SP_FAVELA_ESCAPE",
				menuDesc = Engine.Localize( "@MENU_SP_FAVELA_ESCAPE_DESC" ),
				intel = {
					15,
					16,
					17,
					18
				},
				blipPosX = 49,
				blipPosY = 80
			},
			{
				mapName = "arcadia",
				levelNumber = 8,
				levelTitle = "ARCADIA",
				menuTitle = "@MENU_SP_ARCADIA",
				menuDesc = Engine.Localize( "@MENU_SP_ARCADIA_DESC" ),
				intel = {
					19,
					20,
					21
				},
				blipPosX = 38,
				blipPosY = 52
			},
			{
				mapName = "oilrig",
				levelNumber = 9,
				levelTitle = "OILRIG",
				menuTitle = "@MENU_SP_OILRIG",
				menuDesc = Engine.Localize( "@MENU_SP_OILRIG_DESC" ),
				intel = {
					22,
					23,
					24
				},
				blipPosX = 131,
				blipPosY = 45
			},
			{
				mapName = "gulag",
				levelNumber = 10,
				levelTitle = "GULAG",
				menuTitle = "@MENU_SP_GULAG",
				menuDesc = Engine.Localize( "@MENU_SP_GULAG_DESC" ),
				intel = {
					25,
					26,
					27,
					28
				},
				blipPosX = 131,
				blipPosY = 41
			},
			{
				mapName = "dcburning",
				levelNumber = 11,
				levelTitle = "DCBURNING",
				menuTitle = "@MENU_SP_DCBURNING",
				menuDesc = Engine.Localize( "@MENU_SP_DCBURNING_DESC" ),
				intel = {
					29,
					30
				},
				blipPosX = 38,
				blipPosY = 51
			}
		}
	},
	{
		loc_string = "@MENU_SP_ACT_III_CAPS",
		actName = "h2_act3",
		mapInfoList = {
			{
				mapName = "contingency",
				levelNumber = 12,
				levelTitle = "CONTINGENCY",
				menuTitle = "@MENU_SP_CONTINGENCY",
				menuDesc = Engine.Localize( "@MENU_SP_CONTINGENCY_DESC" ),
				intel = {
					31,
					32,
					33
				},
				blipPosX = 136,
				blipPosY = 45
			},
			{
				mapName = "dcemp",
				levelNumber = 13,
				levelTitle = "DCEMP",
				menuTitle = "@MENU_SP_DCEMP",
				menuDesc = Engine.Localize( "@MENU_SP_DCEMP_DESC" ),
				blipPosX = 38,
				blipPosY = 51
			},
			{
				mapName = "dc_whitehouse",
				levelNumber = 14,
				levelTitle = "DC_WHITEHOUSE",
				menuTitle = "@MENU_SP_DC_WHITEHOUSE",
				menuDesc = Engine.Localize( "@MENU_SP_DC_WHITEHOUSE_DESC" ),
				intel = {
					34,
					35
				},
				blipPosX = 38,
				blipPosY = 51
			},
			{
				mapName = "estate",
				levelNumber = 15,
				levelTitle = "ESTATE",
				menuTitle = "@MENU_SP_ESTATE",
				menuDesc = Engine.Localize( "@MENU_SP_ESTATE_DESC" ),
				intel = {
					36,
					37,
					38
				},
				blipPosX = 89,
				blipPosY = 49
			},
			{
				mapName = "boneyard",
				levelNumber = 16,
				levelTitle = "BONEYARD",
				menuTitle = "@MENU_SP_BONEYARD",
				menuDesc = Engine.Localize( "@MENU_SP_BONEYARD_DESC" ),
				intel = {
					39,
					40
				},
				blipPosX = 96,
				blipPosY = 54
			},
			{
				mapName = "af_caves",
				levelNumber = 17,
				levelTitle = "AF_CAVES",
				menuTitle = "@MENU_SP_AF_CAVES",
				menuDesc = Engine.Localize( "@MENU_SP_AF_CAVES_DESC" ),
				intel = {
					41,
					42,
					43,
					44
				},
				blipPosX = 96,
				blipPosY = 54
			},
			{
				mapName = "af_chase",
				levelNumber = 18,
				levelTitle = "AF_CHASE",
				menuTitle = "@MENU_SP_AF_CHASE",
				menuDesc = Engine.Localize( "@MENU_SP_AF_CHASE_DESC" ),
				intel = {
					45
				},
				blipPosX = 96,
				blipPosY = 54
			}
		}
	},
	{
		loc_string = "DEV",
		actName = "dev",
		mapInfoList = {
			{
				mapName = "ending",
				levelNumber = 100,
				levelTitle = "ENDING",
				menuTitle = "ENDING",
				menuDesc = "Directly launches End Game's final"
			}
		},
		dev = true
	}
}
local f0_local30 = 100
local f0_local31 = {}
LUI.LevelSelect.FindActData = function ( f3_arg0 )
	for f3_local0 = 1, #f0_local29, 1 do
		if f0_local29[f3_local0].menuName == f3_arg0 then
			return f0_local29[f3_local0]
		end
	end
	return nil
end

LUI.LevelSelect.FindLevelTitle = function ( f4_arg0 )
	if f4_arg0 == "ending" then
		f4_arg0 = "af_chase"
	end
	for f4_local0 = 1, #f0_local29, 1 do
		for f4_local3 = 1, #f0_local29[f4_local0].mapInfoList, 1 do
			if f0_local29[f4_local0].mapInfoList[f4_local3].mapName == f4_arg0 then
				return f0_local29[f4_local0].mapInfoList[f4_local3].menuTitle
			end
		end
	end
	return nil
end

LUI.LevelSelect.IsSpecOps = function ( f5_arg0 )
	for f5_local0 = 1, #f0_local29, 1 do
		for f5_local3 = 1, #f0_local29[f5_local0].mapInfoList, 1 do
			if f0_local29[f5_local0].mapInfoList[f5_local3].mapName == f5_arg0 then
				return f0_local29[f5_local0].specops
			end
		end
	end
	return nil
end

LUI.LevelSelect.UpdateLockWithDVar = function ()
	if not CoD.AllowCheat then
		return 
	end
	local f6_local0 = Engine.GetDvarBool( "ui_cheat_unlock_all_mission" )
	if f6_local0 ~= nil then
		UPVAL0 = not f6_local0
		UPVAL1 = f6_local0
	end
	if f0_local3 then
		if LUI.LevelSelect.ProgressionEnabled() then
			if LUI.LevelSelect.CheatDebutText then
				LUI.LevelSelect.CheatDebutText:close()
				LUI.LevelSelect.CheatDebutText = nil
			end
		else
			local f6_local1 = Engine.GetLuiRoot()
			local self = LUI.UIText.new( {
				topAnchor = true,
				top = 15,
				left = -100,
				width = 200,
				height = 12,
				font = CoD.TextSettings.BodyFont.Font
			} )
			self:setText( "Progression cheat enabled." )
			LUI.LevelSelect.CheatDebutText = self
			f6_local1:addElement( self )
		end
	end
end

LUI.LevelSelect.GetDifficultyText = function ( f7_arg0, f7_arg1 )
	if not f7_arg1 then
		f7_arg1 = 0
	end
	local f7_local0 = Engine.GetHighestDifficultyForLevel( f7_arg0 - 1, f7_arg1 )
	if f7_local0 and f7_local0 ~= "" then
		return Engine.Localize( f7_local0 )
	else
		return ""
	end
end

LUI.LevelSelect.ProgressionEnabled = function ()
	local f8_local0
	if CoD.AllowCheat or Engine.GetDvarBool( "mis_cheat" ) then
		f8_local0 = f0_local1
		if f8_local0 then
		
		else
			return f8_local0
		end
	end
	f8_local0 = not f0_local2
end

LUI.LevelSelect.IsMissionEnabled = function ( f9_arg0, f9_arg1, f9_arg2, f9_arg3 )
	if f9_arg0 == 0 then
		return true
	elseif Engine.GetDvarBool( "limited_mode" ) then
		for f9_local0 = 1, #f0_local27, 1 do
			if f9_arg0 == f0_local27[f9_local0] then
				return true
			end
		end
		return false
	elseif f9_arg2 and Engine.GetDvarBool( "profileMenuOption_hasUnlockedAll_SP" ) then
		return true
	elseif f9_arg3 and f0_local31[f9_arg0] then
		return true
	elseif f0_local30 <= f9_arg0 then
		return true
	elseif LUI.LevelSelect.GetDifficultyText( f9_arg0, Engine.GetControllerForLocalClient( 0 ) ) == "" and LUI.LevelSelect.ProgressionEnabled() then
		if f9_arg1 then
			return LUI.LevelSelect.IsMissionEnabled( f9_arg0 - 1, false, f9_arg2, f9_arg3 )
		end
		return false
	end
	return true
end

LUI.LevelSelect.IsAllLevelCompleted = function ()
	return CoD.IsCampaignCompleted()
end

LUI.LevelSelect.ResumeSetIsGameCompleted = function ( f11_arg0 )
	Engine.ExecNow( "profile_menuDvarsSetup" )
	Engine.SetDvarBool( "profileMenuOption_resumeIsGameCompleted", f11_arg0 )
	Engine.ExecNow( "profile_menuDvarsFinish" )
	Engine.Exec( "updategamerprofile" )
end

LUI.LevelSelect.CheckCampaignCompletedNotification = function ( f12_arg0, f12_arg1 )
	if not LUI.LevelSelect.ProgressionEnabled() then
		return 
	elseif Engine.GetDvarBool( "profileMenuOption_hasBeenNotifiedCampaignCompleted" ) then
		return 
	elseif not LUI.LevelSelect.IsAllLevelCompleted() then
		return 
	else
		Engine.SetDvarBool( "profileMenuOption_hasBeenNotifiedCampaignCompleted", true )
		Engine.ExecNow( "profile_menuDvarsFinish" )
		Engine.Exec( "updategamerprofile" )
		LUI.FlowManager.RequestPopupMenu( nil, "campaign_arcade_cheat_unlocked", true, f12_arg1.controller, false )
	end
end

function InitMapInfos()
	if not f0_local0 then
		local f13_local0 = 1
		while true do
			if #f0_local29 < f13_local0 then
				break
			elseif f0_local29[f13_local0].dev then
				table.remove( f0_local29, f13_local0 )
				f13_local0 = f13_local0 - 1
			end
			f13_local0 = f13_local0 + 1
		end
	end
	UPVAL2 = {}
	for f13_local0 = 1, #f0_local29, 1 do
		f0_local29[f13_local0].locked = true
		local f13_local3 = 1
	end
	for f13_local0 = 1, #f0_local29, 1 do
		f0_local29[f13_local0].menuName = f0_local7 .. f0_local29[f13_local0].actName
		f0_local29[f13_local0].menuIndex = f13_local0
		local f13_local3 = Engine.GetDvarBool( "arcademode" )
		local f13_local4 = Engine.GetDvarBool( "specialops" )
		if f13_local3 then
			local f13_local5 = f0_local29[f13_local0]
			local f13_local6 = f0_local29[f13_local0].dev
			if not f13_local6 then
				f13_local6 = f0_local29[f13_local0].specops
			end
			f13_local5.hidden = f13_local6
		elseif f13_local4 then
			f0_local29[f13_local0].hidden = not f0_local29[f13_local0].specops
		else
			local f13_local5 = f0_local29[f13_local0]
			local f13_local6 = f0_local29[f13_local0].specops
			if not f13_local6 then
				f13_local6 = f0_local29[f13_local0].arcadeOnly
			end
			f13_local5.hidden = f13_local6
		end
		if not LUI.LevelSelect.FirstCampaignMenuName and not f0_local29[f13_local0].specops then
			for f13_local5 = 1, #f0_local29[f13_local0].mapInfoList, 1 do
				if LUI.LevelSelect.IsMissionEnabled( f0_local29[f13_local0].mapInfoList[f13_local5].levelNumber, true, true ) then
					LUI.LevelSelect.FirstCampaignMenuName = f0_local29[f13_local0].menuName
					break
				end
			end
		end
		if not LUI.LevelSelect.FirstSpecopsMenuName and f0_local29[f13_local0].specops then
			LUI.LevelSelect.FirstSpecopsMenuName = f0_local29[f13_local0].menuName
		end
		local f13_local5 = f13_local0 - 1
		if f13_local5 == 0 then
			f13_local5 = #f0_local29
			while f0_local29[f13_local5].hidden do
				f13_local5 = f13_local5 - 1
				if f13_local5 == 0 then
					f13_local5 = #f0_local29
				end
				if f13_local5 == f13_local0 - 1 then
					break
				end
			end
			local f13_local6 = f13_local0 + 1
			if #f0_local29 < f13_local6 then
				f13_local6 = 1
				while f0_local29[f13_local6].hidden do
					f13_local6 = f13_local6 + 1
					if #f0_local29 < f13_local6 then
						f13_local6 = 1
					end
					if f13_local6 == f13_local0 + 1 then
						break
					end
				end
				if not f0_local29[f13_local5].locked then
					f0_local29[f13_local0].previousActMenu = f0_local7 .. f0_local29[f13_local5].actName
				else
					f0_local29[f13_local0].previousActMenu = nil
				end
				if not f0_local29[f13_local6].locked then
					f0_local29[f13_local0].nextActMenu = f0_local7 .. f0_local29[f13_local6].actName
				else
					f0_local29[f13_local0].nextActMenu = nil
				end
				for f13_local7 = 1, #f0_local29[f13_local0].mapInfoList, 1 do
					if f0_local29[f13_local0].mapInfoList[f13_local7].narativeLevel then
						f0_local31[f0_local29[f13_local0].mapInfoList[f13_local7].levelNumber] = true
					end
				end
			end
		end
	end
end

function GetRealActCount()
	local f14_local0 = 0
	for f14_local1 = 1, #f0_local29, 1 do
		if not f0_local29[f14_local1].hidden then
			f14_local0 = f14_local0 + 1
		end
	end
	return f14_local0
end

function GetRealActIndex( f15_arg0 )
	local f15_local0 = 0
	for f15_local1 = 1, #f0_local29, 1 do
		if not f0_local29[f15_local1].hidden and f15_arg0 == f15_local0 + 1 then
			return f15_local1
		end
	end
	assert( false, "No real index found for index " .. f15_arg0 )
end

function GetRelativeActIndex( f16_arg0 )
	local f16_local0 = 0
	assert( f16_arg0 <= #f0_local29 )
	for f16_local1 = 1, f16_arg0, 1 do
		if not f0_local29[f16_local1].hidden then
			f16_local0 = f16_local0 + 1
		end
	end
	return f16_local0
end

if CoD.AllowCheat then
	LUI.LevelSelect.UpdateLockWithDVar()
end
InitMapInfos()
function WrapperTabEvent( f17_arg0 )
	return function ( f3_arg0, f3_arg1 )
		LUI.FlowManager.RequestAddMenu( f3_arg0, f17_arg0, true, f3_arg1.controller, true, LUI.LevelSelect.FindActData( f17_arg0 ) )
		CoD.PlayEventSound( CoD.SFX.MouseClick, 10 )
	end
	
end

function ShowNextPopup( f18_arg0, f18_arg1 )
	UPVAL0 = f0_local24 + 1
	if f0_local24 <= #f0_local22 then
		f0_local22[f0_local24]( f18_arg0, f18_arg1 )
	else
		assert( f0_local24 <= #f0_local22, "ShowNextPopup is called too often" )
		UPVAL0 = 0
	end
end

function ShowPreviousPopup( f19_arg0, f19_arg1 )
	UPVAL0 = f0_local24 - 1
	if f0_local24 > 0 then
		f0_local22[f0_local24]( f19_arg0, f19_arg1 )
	else
		assert( f0_local24 >= 0, "ShowPreviousPopup is called too often" )
		UPVAL0 = 0
	end
end

function TryShowOverwriteWarning( f20_arg0, f20_arg1 )
	if Engine.CanResumeGame() and not Engine.GetDvarBool( "arcademode" ) and not Engine.GetDvarBool( "limited_mode" ) and not Engine.GetDvarBool( "specialops" ) then
		LUI.FlowManager.RequestAddMenu( f20_arg0, "overwrite_warning_level_select_menu", true, f20_arg1.controller )
	else
		ShowNextPopup( f20_arg0, f20_arg1 )
	end
end

function overwrite_warning_level_select_menu( f21_arg0, f21_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_WARNING_CHECKPOINT_RESET_TITLE" ),
		message_text = Engine.Localize( "@MENU_WARNING_CHECKPOINT_RESET" ),
		yes_text = Engine.Localize( "@MENU_YES_CAPS" ),
		yes_action = function ( f4_arg0, f4_arg1 )
			ShowNextPopup( f4_arg0, f4_arg1 )
		end
		,
		no_text = Engine.Localize( "@MENU_NO_CAPS" ),
		no_action = function ( f5_arg0, f5_arg1 )
			ShowPreviousPopup( f5_arg0, f5_arg1 )
		end
		
	} )
end

LUI.MenuBuilder.registerPopupType( "overwrite_warning_level_select_menu", overwrite_warning_level_select_menu )
function setInSplitscreen( f22_arg0 )
	if f22_arg0 then
		Engine.Exec( "autosignin" )
		Engine.Exec( "set splitscreen 1" )
		Engine.Exec( "forcesplitscreencontrol 1" )
	else
		Engine.Exec( "set splitscreen 0" )
		Engine.Exec( "forcenosplitscreencontrol 1" )
	end
end

function LoadSpecificMap( f23_arg0, f23_arg1 )
	if f0_local18 then
		CoD.ChangeDifficulty( f0_local26 )
	end
	local f23_local0 = LUI.FlowManager.GetNextMapToLoad()
	LUI.FlowManager.PushMenuStackToDVar()
	LUI.LevelSelect.ResumeSetIsGameCompleted( false )
	if not LUI.LevelSelect.IsSpecOps( f23_local0 ) then
		setInSplitscreen( false )
	end
	Engine.StreamingInstallMap( f23_local0, "devmap " .. f23_local0 )
end

function TryShowSplitscreen( f24_arg0, f24_arg1 )
	if Engine.GetDvarBool( "specialops" ) then
		LUI.FlowManager.RequestAddMenu( f24_arg0, "splitscreen_selection_menu", true, f24_arg1.controller, false )
	else
		ShowNextPopup( f24_arg0, f24_arg1 )
	end
end

function splitscreen_selection_menu( f25_arg0, f25_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_SPLITSCREEN_CAPS" ),
		message_text = Engine.Localize( "@MENU_SP_TWO_PLAYER_SPLIT_SCREEN" ),
		yes_text = Engine.Localize( "@MENU_YES_CAPS" ),
		yes_action = function ( f6_arg0, f6_arg1 )
			setInSplitscreen( true )
			ShowNextPopup( f6_arg0, f6_arg1 )
		end
		,
		no_text = Engine.Localize( "@MENU_NO_CAPS" ),
		no_action = function ( f7_arg0, f7_arg1 )
			setInSplitscreen( false )
			ShowNextPopup( f7_arg0, f7_arg1 )
		end
		,
		cancel_means_no = false,
		cancel_action = function ( f8_arg0, f8_arg1 )
			ShowPreviousPopup( f8_arg0, f8_arg1 )
		end
		
	} )
end

LUI.MenuBuilder.registerPopupType( "splitscreen_selection_menu", splitscreen_selection_menu )
function TryShowRole( f26_arg0, f26_arg1 )
	if Engine.GetDvarBool( "specialops" ) then
		if f0_local23.roleTitle then
			LUI.FlowManager.RequestAddMenu( f26_arg0, "role_selection_menu", true, f26_arg1.controller, false )
		else
			ShowNextPopup( f26_arg0, f26_arg1 )
		end
	else
		ShowNextPopup( f26_arg0, f26_arg1 )
	end
end

function role_selection_menu( f27_arg0, f27_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( f0_local23.menuTitle ),
		message_text = Engine.Localize( f0_local23.roleTitle ),
		yes_text = "Player 1",
		yes_action = function ( f9_arg0, f9_arg1 )
			Engine.SetDvarString( "coop_start", "so_char_host" )
			ShowNextPopup( f9_arg0, f9_arg1 )
		end
		,
		no_text = "Player 2",
		no_action = function ( f10_arg0, f10_arg1 )
			Engine.SetDvarString( "coop_start", "so_char_client" )
			ShowNextPopup( f10_arg0, f10_arg1 )
		end
		,
		cancel_means_no = false,
		cancel_action = function ( f11_arg0, f11_arg1 )
			ShowPreviousPopup( f11_arg0, f11_arg1 )
		end
		
	} )
end

LUI.MenuBuilder.registerPopupType( "role_selection_menu", role_selection_menu )
function CanShowDifficultyPopup( f28_arg0 )
	return f28_arg0 ~= "trainer"
end

function TryShowDifficulty( f29_arg0, f29_arg1 )
	local f29_local0 = Engine.GetDvarBool( "specialops" )
	if CanShowDifficultyPopup( LUI.FlowManager.GetNextMapToLoad() ) and not f0_local18 then
		LUI.FlowManager.RequestAddMenu( f29_arg0, "difficulty_selection_menu", true, f29_arg1.controller, false, {
			acceptFunc = ShowNextPopup,
			specialops = f29_local0
		} )
	else
		ShowNextPopup( f29_arg0, f29_arg1 )
	end
end

function StartMap( f30_arg0, f30_arg1, f30_arg2 )
	LUI.FlowManager.SetNextMapToLoad( f30_arg2.mapName )
	UPVAL0 = 0
	UPVAL1 = f30_arg2
	ShowNextPopup( f30_arg0, f30_arg1 )
end

function GetIntelText( f31_arg0 )
	if f31_arg0.intel == nil or #f31_arg0.intel == 0 then
		return Engine.Localize( "@LUA_MENU_INTEL_NONE" )
	end
	local f31_local0 = 0
	local f31_local1 = #f31_arg0.intel
	for f31_local2 = 1, #f31_arg0.intel, 1 do
		if Engine.GetPlayerIntelIsFound( f31_arg0.intel[f31_local2] ) then
			f31_local0 = f31_local0 + 1
		end
	end
	return Engine.Localize( "@LUA_MENU_STATUS_INTEL", f31_local0, f31_local1 )
end

function UpdateDescriptionBoxWidth( f32_arg0, f32_arg1 )
	
end

function OnFirstLevelButton( f33_arg0, f33_arg1 )
	local f33_local0 = f33_arg0.list.buttonCount > 0
	assert( f33_local0, "Requires at least one button to select and update level info" )
	if f33_local0 then
		local f33_local1 = f33_arg0.list:getFirstChild()
		f33_local1:processEvent( {
			name = "button_over"
		} )
	end
end

local f0_local32 = function ( f34_arg0, f34_arg1 )
	local f34_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f34_arg0 )
	local f34_local1 = f34_local0.currentLevelNumber
	f34_local0.currentLocationTitle = f34_arg0.properties.button_text
	f34_local0.currentObjectiveText = f34_arg0.properties.objective_text
	f34_local0.currentLevelNumber = f34_arg0.properties.level_number
	f34_local0.currentButtonNumber = f34_arg0.properties.map_index
	local f34_local2 = f34_local0.currentLevelNumber == f34_local1
	local f34_local3 = f34_arg0:getParent()
	if not f34_local2 then
		LocationWindowUpdate( f34_local3, f34_arg1 )
		if not f34_local0.fromLeaderboard then
			PersistentBackground.ChangeBackground( nil, "mission_select_bg_" .. string.lower( f34_arg0.properties.mapInfo.levelTitle ) )
			local f34_local4 = Engine.GetLuiRoot()
			assert( f34_local4 )
			local f34_local5 = LUI.FlowManager.GetTopMenuInfo( f34_local4.flowManager.menuInfoStack )
			assert( f34_local5 )
			local f34_local6 = f34_local5.menu.bgBlack
			assert( f34_local6 )
			f34_local6:animateInSequence( {
				{
					"BlackScreen",
					0
				},
				{
					"Faded",
					2000
				}
			} )
		end
		f34_local0.fromLeaderboard = false
	end
end

function ChangeActBtnAction( f35_arg0, f35_arg1 )
	LUI.FlowManager.RequestAddMenu( f35_arg0, f35_arg0.properties.actToSelect, true, f35_arg1.controller, true, LUI.LevelSelect.FindActData( f35_arg0.properties.actToSelect ) )
end

function LocationWindowUpdateFromChild( f36_arg0, f36_arg1 )
	local f36_local0 = LocationWindowUpdate
	local f36_local1 = f36_arg0:getParent()
	f36_local0( f36_local1.list, f36_arg1 )
end

local f0_local33 = 0
function LocationWindowUpdate( f37_arg0, f37_arg1 )
	local f37_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f37_arg0 )
	local f37_local1 = f37_local0.currentLevelNumber
	local f37_local2 = f37_local0.currentButtonNumber
	if f37_local2 == nil then
		return 
	elseif not f37_local0.currentLocationTitle then
		f37_local0.currentLocationTitle = Engine.Localize( "@MENU_SP_IW6_PROLOGUE" )
	end
	local f37_local3 = Engine.GetLuiRoot()
	assert( f37_local3 )
	local f37_local4 = LUI.FlowManager.GetTopMenuInfo( f37_local3.flowManager.menuInfoStack, false )
	assert( f37_local4 )
	local f37_local5 = LUI.LevelSelect.FindActData( f37_local4.name )
	f37_local5 = f37_local5.mapInfoList[f37_local2]
	local f37_local6 = GetIntelText( f37_local5 )
	local f37_local7 = f37_local5.mapName
	local f37_local8 = Engine.Localize( "@LUA_MENU_SP_LOCATION_" .. f37_local5.levelTitle )
	local f37_local9
	if f37_arg1 then
		f37_local9 = f37_arg1.controller
		if not f37_local9 then
		
		else
			local f37_local10 = Engine.GetDvarBool( "arcademode" )
			f37_arg0:processEvent( {
				name = "menu_refresh"
			} )
			local f37_local11 = f37_arg0:getParent()
			local f37_local12 = 0
			if f37_local7 == "trainer" then
				f37_local12 = Engine.GetPlayerData( f37_local9, CoD.StatsGroup.SP, "timeTrialTime" )
			end
			if f37_local1 == 1 then
				ClearInfoBoxLeftBottom( f37_local11.infoBox )
				ClearInfoBoxRightBottom( f37_local11.infoBox )
				SetupInfoBoxLeftForArcadeMode( f37_local11.infoBox, {
					highscore = f37_local12,
					mapname = f37_local7,
					challengeName = f37_local5.challenge
				} )
				SetupInfoBoxRightForMissionSelect( f37_local11.infoBox )
			elseif f0_local33 == 1 and not f37_local10 then
				ClearInfoBoxLeftBottom( f37_local11.infoBox )
				ClearInfoBoxRightBottom( f37_local11.infoBox )
				SetupInfoBoxLeftForMissionSelect( f37_local11.infoBox )
				SetupInfoBoxRightForMissionSelect( f37_local11.infoBox )
			end
			UPVAL0 = f37_local1
			local f37_local13 = f37_local11
			local f37_local14 = f37_local11.dispatchEventToChildren
			local f37_local15 = {
				name = "update_levelInfo",
				level_number = f37_local1,
				title_text = f37_local0.currentLocationTitle,
				map_name = f37_local7,
				location_text = f37_local8,
				intel_text = f37_local6,
				level_controller = f37_local9,
				narative_level = f37_local5.narativeLevel,
				location_image = f37_local5.locationImage or f0_local25
			}
			local f37_local16 = f37_local5.blipPosX
			if not f37_local16 then
				f37_local16 = f0_local6 / 2
			end
			f37_local15.blipPosX = f37_local16
			f37_local16 = f37_local5.blipPosY
			if not f37_local16 then
				f37_local16 = f0_local6 / 2
			end
			f37_local15.blipPosY = f37_local16
			f37_local15.immediate = true
			f37_local15.highscore = f37_local12
			f37_local15.challengeName = f37_local5.challenge
			f37_local15.hasLeaderboard = f37_local5.storyChallenge or f37_local10
			f37_local15.isTimeChallenge = f37_local5.isTimeChallenge
			f37_local14( f37_local13, f37_local15 )
			if f37_local0.currentObjectiveText then
				f37_local11:dispatchEventToChildren( {
					name = "update_objective_text",
					objective_text = f37_local0.currentObjectiveText,
					immediate = true
				} )
			end
			DisplayDifficultyFooterPrompt( f37_local11, CanShowDifficultyPopup( f37_local7 ) )
		end
	end
	f37_local9 = Engine.GetSignedInAsController()
end

function UpdateLocationTitle( f38_arg0, f38_arg1 )
	if f0_local10 then
		f38_arg0:animateToState( "hide", 0 )
	end
	f38_arg0:setText( f38_arg1.title_text )
	local f38_local0 = nil
	local f38_local1, f38_local2, f38_local3 = GetTextDimensions( Engine.ToUpperCase( f38_arg1.title_text ), CoD.TextSettings.H1TitleFont.Font, locationInfoWindowTitleFontSize )
	local f38_local4, f38_local5, f38_local6 = GetTextDimensions( Engine.ToUpperCase( f38_arg1.location_text ), CoD.TextSettings.H1TitleFont.Font, locationInfoWindowTitleFontSize )
	f38_local0 = f38_local3
	if f38_local3 < f38_local6 then
		f38_local0 = f38_local6
	end
	UpdateDescriptionBoxWidth( f38_arg0, f38_local0 )
	if f0_local10 then
		f38_arg0:animateToState( "show", f0_local11 )
	end
end

function UpdateLocationMap( f39_arg0, f39_arg1 )
	f39_arg0:registerAnimationState( f39_arg1.map_name, {
		material = RegisterMaterial( f39_arg1.location_image ),
		alpha = 0
	} )
	f39_arg0:animateToState( f39_arg1.map_name, 0 )
	if f0_local10 then
		f39_arg0:animateToState( "show", f0_local12 )
	else
		f39_arg0:animateToState( "show", 0 )
	end
	if f39_arg0.mapBlipPulse then
		f39_arg0.mapBlipPulse:delete( "loc_info" )
		f39_arg0.mapBlipPulse:addPulse( {
			name = "loc_info",
			posX = f39_arg1.blipPosX,
			posY = f39_arg1.blipPosY,
			delay = LevelSelectMinimapBlipSettings.delay,
			pulseDuration = LevelSelectMinimapBlipSettings.pulseDuration
		} )
	end
end

function UpdateLocationMapInfo( f40_arg0, f40_arg1 )
	if f0_local10 then
		f40_arg0:animateToState( "hide", 0 )
	end
	f40_arg0:setDescription( f40_arg1.objective_text )
	if f0_local10 then
		f40_arg0:animateToState( "show", f0_local13 )
	end
end

function UpdateLeaderboardPosition( f41_arg0 )
	local f41_local0 = Engine.Localize( "@LUA_MENU_POSITION" )
	local f41_local1 = ": "
	local f41_local2 = f0_local16
	if f0_local16 == nil or f0_local16 == "" then
		f41_local2 = Engine.Localize( "@LUA_MENU_LEADERBOARD_REFRESH" )
	elseif f0_local16 == -1 then
		f41_local2 = Engine.Localize( "@LUA_MENU_LB_UNRANKED" )
	end
	if Engine.IsRightToLeftLanguage() then
		local f41_local3 = f41_local2
		local f41_local4 = " :"
		f41_local2 = f41_local0
		f41_local1 = f41_local4
		f41_local0 = f41_local3
	end
	f41_arg0:setText( "(" .. f41_local0 .. f41_local1 .. f41_local2 .. ")" )
end

function SetupPlayerPosition( f42_arg0, f42_arg1 )
	if not f42_arg0.positionText then
		return 
	end
	f42_arg1.highscore = f42_arg1.highscore and "0" or f42_arg1.highscore
	local f42_local0 = f42_arg1.highscore
	if f42_arg0.scoreText then
		f42_local0 = f42_arg0.scoreText:getText()
	end
	local f42_local1, f42_local2, f42_local3 = GetTextDimensions( f42_local0, f0_local21.Font, f0_local21.Height )
	f42_arg1.playerPosition = f42_arg1.playerPosition and "... " or f42_arg1.playerPosition
	UpdateLeaderboardPosition( f42_arg0.positionText )
	f42_arg0.positionText:registerAnimationState( "default", {
		left = f42_local3 + 3,
		leftAnchor = true
	} )
	f42_arg0.positionText:animateToState( "default" )
end

function UpdateLocationDifficultyScore( f43_arg0, f43_arg1 )
	local f43_local0 = Engine.IsRightToLeftLanguage()
	if f0_local10 then
		f43_arg0:animateToState( "hide", 0 )
	end
	if not f43_arg1.hasLeaderboard then
		local f43_local1 = LUI.LevelSelect.GetDifficultyText( f43_arg1.level_number, f43_arg1.level_controller )
		if f43_local1 ~= "" then
			local f43_local2 = Engine.Localize( "@LUA_MENU_DIFFICULTYCOMPLETED" )
			local f43_local3 = ": "
			local f43_local4 = Engine.Localize( f43_local1 )
			if f43_local0 then
				local f43_local5 = f43_local4
				f43_local4 = f43_local2
				f43_local2 = f43_local5
			end
			f43_arg0.difficultyText:setText( f43_local2 .. f43_local3 .. f43_local4 )
		else
			f43_arg0.difficultyText:setText( Engine.Localize( "@LUA_MENU_NOT_COMPLETED" ) )
		end
	else
		if f43_arg1.highscore ~= nil then
			if f43_arg1.highscore == 0 or f43_arg1.isTimeChallenge and string.len( f43_arg1.highscore ) <= 2 then
				ClearInfoBoxLeftBottom( f43_arg0:getParent() )
				SetupInfoBoxLeftForMissionSelect( f43_arg0:getParent() )
				f43_arg0.difficultyText:setText( Engine.Localize( "@LUA_MENU_NOT_COMPLETED" ) )
			elseif f43_arg1.isTimeChallenge then
				local f43_local3 = string.sub( f43_arg1.highscore, 0, -3 ) .. "." .. string.sub( f43_arg1.highscore, -2 )
				local f43_local4 = Engine.Localize( "@MENU_SECONDS_ABBREVIATION" )
				if f43_local0 then
					local f43_local5 = f43_local4
					f43_local4 = f43_local3
					f43_local3 = f43_local5
				end
				f43_arg0.scoreText:setText( f43_local3 .. f43_local4 )
			else
				ClearInfoBoxLeftBottom( f43_arg0:getParent() )
				SetupInfoBoxLeftForArcadeMode( f43_arg0:getParent(), {
					challengeName = f43_arg1.challengeName
				} )
				f43_arg0.scoreText:setText( f43_arg1.highscore )
			end
		end
		SetupPlayerPosition( f43_arg0, f43_arg1 )
	end
	if f0_local10 then
		f43_arg0:animateToState( "show", timeOfInfoBoxAnimDifficulty )
	end
end

function UpdateLocationIntel( f44_arg0, f44_arg1 )
	if f0_local10 then
		f44_arg0:animateToState( "hide", 0 )
	end
	f44_arg0:setText( f44_arg1.intel_text )
	if f0_local10 then
		f44_arg0:animateToState( "show", f0_local15 )
	end
	f44_arg0.properties.currentIntel = f44_arg1.intel_text
end

function ClearInfoBoxLeftBottom( f45_arg0 )
	for f45_local3, f45_local4 in pairs( {
		f45_arg0.bottomLeftElements.scoreText,
		f45_arg0.bottomLeftElements.positionText,
		f45_arg0.bottomLeftElements.highscoreText,
		f45_arg0.bottomLeftElements.lineText,
		f45_arg0.bottomLeftElements.difficultyText
	} ) do
		if f45_local4 ~= nil then
			f45_arg0.bottomLeftElements:removeElement( f45_local4 )
		end
	end
	f45_arg0.bottomLeftElements.scoreText = nil
	f45_arg0.bottomLeftElements.positionText = nil
	f45_arg0.bottomLeftElements.highscoreText = nil
	f45_arg0.bottomLeftElements.lineText = nil
	f45_arg0.bottomLeftElements.difficultyText = nil
end

function ClearInfoBoxRightBottom( f46_arg0 )
	for f46_local3, f46_local4 in pairs( {
		f46_arg0.bottomRightElements.containerButton,
		f46_arg0.bottomRightElements.intelText
	} ) do
		if f46_local4 ~= nil then
			f46_arg0.bottomRightElements:removeElement( f46_local4 )
		end
	end
	f46_arg0.bottomRightElements.containerButton = nil
	f46_arg0.bottomRightElements.intelText = nil
end

function SPLeaderboardDataUpdateStatus( f47_arg0, f47_arg1 )
	if f47_arg0.leaderboardOpenRetryTimer == nil then
		UPVAL0 = Leaderboards.GetPlayerValue( Engine.GetControllerForLocalClient( 0 ), 0 )
		if f47_arg1 and f47_arg1.isUpdating then
			return 
		elseif f0_local16 == nil then
			UPVAL0 = -1
		end
		local f47_local0 = Engine.GetLuiRoot()
		local f47_local1 = LUI.FlowManager.GetTopMenuInfo( f47_local0.flowManager.menuInfoStack, false )
		f47_local1.menu:processEvent( {
			name = "update_leaderboard_position"
		} )
	end
end

function FetchLeaderboardData( f48_arg0 )
	if Leaderboards.IsUpdating() then
		if f48_arg0.leaderboardOpenRetryTimer == nil then
			UPVAL0 = -1
			local f48_local0 = Engine.GetLuiRoot()
			local f48_local1 = LUI.FlowManager.GetTopMenuInfo( f48_local0.flowManager.menuInfoStack, false )
			f48_local1.menu:processEvent( {
				name = "update_leaderboard_position"
			} )
			
			local leaderboardOpenRetryTimer = LUI.UITimer.new( 1000, "leaderboardOpenRetry", nil, false )
			leaderboardOpenRetryTimer.id = "leaderboardOpenRetry"
			f48_arg0:registerEventHandler( "leaderboardOpenRetry", function ( element, event )
				if Leaderboards.IsUpdating() then
					return 
				else
					event.timer:close()
					element.leaderboardOpenRetryTimer = nil
					FetchLeaderboardData( element )
				end
			end )
			f48_arg0:addElement( leaderboardOpenRetryTimer )
			f48_arg0.leaderboardOpenRetryTimer = leaderboardOpenRetryTimer
			
		end
	else
		Leaderboards.Open( f48_arg0.currentChallengeName, "TRK_ALLTIME" )
		if not Leaderboards.IsUpdating() then
			Leaderboards.UpdateLeaderboard( Engine.GetControllerForLocalClient( 0 ), 1 )
		end
		if not Leaderboards.IsUpdating() then
			SPLeaderboardDataUpdateStatus( f48_arg0 )
		end
	end
end

function SetupInfoBoxLeftForArcadeMode( f49_arg0, f49_arg1 )
	local f49_local0 = Engine.IsRightToLeftLanguage()
	local f49_local1 = CoD.CreateState( 0, nil, nil, nil, CoD.AnchorTypes.BottomLeft )
	f49_local1.font = f0_local20.Font
	f49_local1.height = f0_local20.Height
	local self
	if f49_local0 then
		self = LUI.HorizontalAlignment.RTL_ForcedLeft
		if not self then
		
		else
			f49_local1.alignment = self
			f49_local1.color = Colors.h1.yellow
			self = LUI.UIText.new( f49_local1 )
			self.id = "infobox_score_text"
			f49_arg0.bottomLeftElements:addElement( self )
			f49_arg0.bottomLeftElements.scoreText = self
			UPVAL1 = -1
			if f49_arg1 and f49_arg1.challengeName and Engine.UserCanPlayOnline( Engine.GetControllerForLocalClient( 0 ) ) then
				local f49_local3 = CoD.CreateState( 0, nil, 0, -2, CoD.AnchorTypes.BottomLeft )
				f49_local3.font = f0_local20.Font
				f49_local3.height = f0_local20.Height
				local self
				if f49_local0 then
					self = LUI.HorizontalAlignment.RTL_ForcedLeft
					if not self then
					
					else
						f49_local3.alignment = self
						f49_local3.color = Colors.h1.medium_grey
						self = LUI.UIText.new( f49_local3 )
						self.id = "infobox_position_text"
						f49_arg0.bottomLeftElements:addElement( self )
						f49_arg0.bottomLeftElements.positionText = self
						self:registerEventHandler( "update_leaderboard_position", UpdateLeaderboardPosition )
						Engine.SetDvarInt( "lb_maxrows", 1 )
						f49_arg0:registerEventHandler( "leaderboard_update_status", SPLeaderboardDataUpdateStatus )
						f49_arg0.currentChallengeName = f49_arg1.challengeName
						UPVAL1 = -1
						FetchLeaderboardData( f49_arg0 )
					end
				end
				self = LUI.HorizontalAlignment.Left
			end
			local f49_local3 = -f49_local1.height - 5
			local self = CoD.CreateState( 0, nil, 0, f49_local3, CoD.AnchorTypes.BottomLeft )
			self.font = f0_local20.Font
			self.height = f0_local20.Height
			local self
			if f49_local0 then
				self = LUI.HorizontalAlignment.RTL_ForcedLeft
				if not self then
				
				else
					self.alignment = self
					self.color = Colors.white
					self = LUI.UIText.new( self )
					self.id = "infobox_highscore_text"
					self:setText( Engine.Localize( "@LUA_MENU_HIGHSCORE" ) )
					if f49_arg1 ~= nil and f49_arg1.mapname == "trainer" then
						local f49_local6 = Engine.Localize( "@MENU_SP_LEVEL_YOUR_BEST_TIME" )
						local f49_local7 = ":"
						if f49_local0 then
							local f49_local8 = f49_local7
							f49_local7 = f49_local6
							f49_local6 = f49_local8
						end
						self:setText( f49_local6 .. f49_local7 )
					end
					f49_arg0.bottomLeftElements:addElement( self )
					f49_arg0.bottomLeftElements.highscoreText = self
					local f49_local6 = f49_local3 - self.height - 5
					local f49_local7 = Engine.GetCurrentLanguage()
					if f49_local7 == CoD.Language.Russian or f49_local7 == CoD.Language.Korean then
						f49_local6 = f49_local6 + 6
					end
					local f49_local8 = CoD.CreateState( 0, nil, 0, f49_local6, CoD.AnchorTypes.BottomLeft )
					f49_local8.font = f0_local20.Font
					f49_local8.height = f0_local20.Height
					local self
					if f49_local0 then
						self = LUI.HorizontalAlignment.RTL_ForcedLeft
						if not self then
						
						else
							f49_local8.alignment = self
							f49_local8.color = Colors.white
							self = LUI.UIText.new( f49_local8 )
							self.id = "infobox_line_text"
							self:setText( "___" )
							f49_arg0.bottomLeftElements:addElement( self )
							f49_arg0.bottomLeftElements.lineText = self
						end
					end
					self = LUI.HorizontalAlignment.Left
				end
			end
			self = LUI.HorizontalAlignment.Left
		end
	end
	self = LUI.HorizontalAlignment.Left
end

function SetupInfoBoxRightForArcadeMode( f50_arg0, f50_arg1 )
	if f50_arg1 ~= nil and f50_arg1.mapname == "trainer" and f50_arg1.highscore == 0 then
		local f50_local0 = false
	else
		local f50_local0 = true
	end
	local f50_local0 = false
	local f50_local1 = "button_alt2"
	local self = nil
	if f50_local0 then
		self = LUI.UIButton.new( CoD.CreateState( nil, nil, 0, 0, CoD.AnchorTypes.BottomRight ) )
	else
		self = LUI.UIElement.new( CoD.CreateState( nil, nil, 0, 0, CoD.AnchorTypes.BottomRight ) )
	end
	self.id = "infobox_leaderboard_button"
	if f50_local0 then
		self:registerEventHandler( "button_action", OpenLeaderboard )
		self.m_requireFocusType = FocusType.MouseOver
		self.listenMouseEnterLeave = true
		self.bindButton = LUI.UIBindButton.new()
		self.bindButton.id = "BindButtonLeaderboards"
		self.bindButton:registerEventHandler( f50_local1, OpenLeaderboard )
		self.bindButton.func = OpenLeaderboard
		self:addElement( self.bindButton )
	end
	local f50_local3 = CoD.CreateState( nil, nil, 0, 0, CoD.AnchorTypes.BottomRight )
	f50_local3.font = f0_local19.Font
	f50_local3.height = f0_local19.Height
	if f50_local0 then
		f50_local3.color = Colors.white
	else
		f50_local3.color = Colors.dark_grey
	end
	local self = LUI.UIText.new( f50_local3 )
	self.id = "infobox_leaderboard_text"
	if f50_local0 then
		f50_local3.color = GenericMenuColors.text_highlight
		self:registerAnimationState( "over", f50_local3 )
		self:registerEventHandler( "lose_focus", MBh.AnimateToState( "default" ) )
		self:registerEventHandler( "gain_focus", MBh.AnimateToState( "over" ) )
	end
	self.text = Engine.Localize( "@MENU_LEADERBOARD" )
	local f50_local5 = ""
	if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
		f50_local5 = ButtonMap[f50_local1].string
	end
	f50_local5 = Engine.Localize( f50_local5 )
	self:setText( f50_local5 .. " " .. self.text )
	if not Engine.IsConsoleGame() and not Engine.IsGamepadEnabled() and f50_local0 then
		local f50_local6 = CoD.CreateState( 10, -4, 0, nil, CoD.AnchorTypes.TopLeft )
		f50_local6.font = CoD.TextSettings.TitleFontMediumLarge.Font
		f50_local6.height = f0_local19.Height + 4
		f50_local5 = Engine.Localize( ButtonMap[f50_local1].keyboard_string )
		self:addElement( LUI.UIButtonText.new( f50_local6, f50_local5, nil, nil, true, false, OpenLeaderboard ) )
	end
	if f50_local0 then
		self:addElement( self )
	end
	local f50_local6, f50_local7, f50_local8 = GetTextDimensions( f50_local5 .. self.text, f0_local19.Font, f0_local19.Height )
	self:registerAnimationState( "default", {
		rightAnchor = true,
		right = 0,
		height = f0_local19.Height,
		width = f50_local8
	} )
	self:animateToState( "default" )
	f50_arg0.bottomRightElements:addElement( self )
	f50_arg0.bottomRightElements.containerButton = self
end

function SetupInfoBoxLeftForMissionSelect( f51_arg0 )
	local f51_local0 = CoD.CreateState( 0, nil, 0, nil, CoD.AnchorTypes.BottomLeft )
	f51_local0.font = f0_local19.Font
	f51_local0.height = f0_local19.Height
	f51_local0.horizontalAlignment = LUI.HorizontalAlignment.RTL_ForcedLeft
	f51_local0.alpha = 1
	f51_local0.color = Colors.grey_4
	local self = LUI.UIText.new( f51_local0 )
	self.id = "infobox_difficulty_text"
	f51_arg0.bottomLeftElements:addElement( self )
	f51_arg0.bottomLeftElements.difficultyText = self
end

function SetupInfoBoxRightForMissionSelect( f52_arg0 )
	local f52_local0 = CoD.CreateState( nil, nil, 0, 0, CoD.AnchorTypes.BottomRight )
	f52_local0.font = f0_local19.Font
	f52_local0.height = f0_local19.Height
	f52_local0.alpha = 1
	f52_local0.color = Colors.grey_4
	local self = LUI.UIText.new( f52_local0 )
	self.id = "infobox_intel_text"
	f52_arg0.bottomRightElements:addElement( self )
	f52_arg0.bottomRightElements.intelText = self
	f52_arg0.bottomRightElements.intelText:registerEventHandler( "update_levelInfo", UpdateLocationIntel )
	f52_arg0.bottomRightElements.intelText.properties = {
		currentIntel = ""
	}
end

LUI.LevelSelect.AddLocationInfoWindow = function ( f53_arg0, f53_arg1 )
	local infoBox = LUI.MenuBuilder.BuildRegisteredType( "InfoBox", {
		skipAnim = f53_arg1.skipAnim
	} )
	infoBox.title:registerEventHandler( "menu_create", MBh.EmitEventToParent( "location_window_title_update" ) )
	infoBox.title:registerEventHandler( "update_levelInfo", UpdateLocationTitle )
	infoBox.description:registerEventHandler( "update_objective_text", UpdateLocationMapInfo )
	infoBox.description:setText( "Prologue placeholder objective text" )
	if Engine.GetDvarBool( "arcademode" ) then
		SetupInfoBoxLeftForArcadeMode( infoBox )
		SetupInfoBoxRightForArcadeMode( infoBox )
	else
		SetupInfoBoxLeftForMissionSelect( infoBox )
		SetupInfoBoxRightForMissionSelect( infoBox )
	end
	infoBox.bottomLeftElements:registerEventHandler( "update_levelInfo", UpdateLocationDifficultyScore )
	infoBox:enableRightPanel()
	infoBox:drawCornerLines()
	local self = LUI.UIImage.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	self:registerAnimationState( "show", {
		alpha = 1
	} )
	self:registerEventHandler( "update_levelInfo", UpdateLocationMap )
	if not Engine.GetDvarBool( "loc_arabic_sku" ) and Engine.GetCurrentLanguage() ~= CoD.Language.Arabic then
		self.mapBlipPulse = LUI.MapBlipPulse.new( self )
	end
	infoBox.rightPanel:addElement( self )
	f53_arg0:addElement( infoBox )
	f53_arg0.infoBox = infoBox
	
end

LUI.LevelSelect.AddLevelListEntry = function ( f54_arg0, f54_arg1, f54_arg2, f54_arg3 )
	local f54_local0 = f54_arg2.levelNumber
	if not LUI.LevelSelect.IsMissionEnabled( f54_local0, true, true ) then
		return 
	else
		local f54_local1 = f54_arg0:AddButton( Engine.Localize( f54_arg2.menuTitle ), f54_arg2.actionFunc or function ( f12_arg0, f12_arg1 )
			StartMap( f12_arg0, f12_arg1, f54_arg2 )
		end
		, f54_arg3, true, false, {
			style = GenericButtonSettings.Styles.FlatButton,
			textStyle = CoD.TextStyle.ForceUpperCase,
			disableSound = CoD.SFX.DenySelect,
			button_map = f54_arg2.mapName,
			objective_text = f54_arg2.menuDesc,
			level_number = f54_local0,
			map_index = f54_arg1,
			mapInfo = f54_arg2,
			hasLeaderboard = f54_arg2.storyChallenge or Engine.GetDvarBool( "arcademode" ),
			isTimeChallenge = f54_arg2.isTimeChallenge
		} )
		f54_local1.id = "btn_levels_id_" .. f54_arg1
		f54_local1:registerEventHandler( "button_over", f0_local32 )
	end
end

LUI.LevelSelect.AddLevelListButtons = function ( f55_arg0, f55_arg1 )
	for f55_local0 = 1, #f55_arg1, 1 do
		if not Engine.GetDvarBool( "arcademode" ) or not f55_arg1[f55_local0].narativeLevel then
			f55_arg0:AddLevelListEntry( f55_local0, f55_arg1[f55_local0] )
		end
	end
end

function backButtonHandler( f56_arg0 )
	if Engine.GetDvarBool( "limited_mode" ) then
		Engine.SetDvarString( "gamemode", "" )
		Engine.PlaySound( CoD.SFX.MenuBack )
		Engine.SetDvarString( "ui_loadMenuName", "" )
		Engine.SetDvarBool( "ui_skipMainLockout", false )
	end
	LUI.FlowManager.RequestLeaveMenu( f56_arg0 )
end

function ClickTabBtnAction( f57_arg0, f57_arg1, f57_arg2 )
	LUI.FlowManager.RequestAddMenu( f57_arg0, f0_local29[GetRealActIndex( f57_arg2 )].menuName, true, f57_arg1.controller, true, f0_local29[GetRealActIndex( f57_arg2 )] )
	CoD.PlayEventSound( CoD.SFX.H1TabChange, 10 )
end

function OpenLeaderboard( f58_arg0, f58_arg1 )
	if not Engine.UserCanPlayOnline( f58_arg1.controller ) then
		Engine.Exec( "xrequirelivesignin", f58_arg1.controller )
		return 
	end
	local f58_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f58_arg0 )
	f58_local0.fromLeaderboard = true
	local f58_local1 = f58_local0.currentButtonNumber
	local f58_local2 = Engine.GetLuiRoot()
	assert( f58_local2 )
	local f58_local3 = LUI.FlowManager.GetTopMenuInfo( f58_local2.flowManager.menuInfoStack, true )
	assert( f58_local3 )
	local f58_local4 = LUI.LevelSelect.FindActData( f58_local3.name )
	f58_local4 = f58_local4.mapInfoList[f58_local1]
	assert( f58_local4.challengeName )
	assert( f58_local4.challenge )
	local f58_local5 = LUI.FlowManager.RequestAddMenu
	local f58_local6 = f58_arg0
	local f58_local7 = "sp_leaderboard_data"
	local f58_local8 = true
	local f58_local9 = f58_arg1.controller
	local f58_local10 = false
	local f58_local11 = {
		leaderBoardData = {
			challenge = f58_local4.challenge,
			challengeName = f58_local4.challengeName
		},
		startValue = 1,
		newFilter = true
	}
	local f58_local12
	if f58_local4.storyChallenge then
		f58_local12 = true
	else
		f58_local12 = false
	end
	f58_local11.isTimeTrial = f58_local12
	f58_local5( f58_local6, f58_local7, f58_local8, f58_local9, f58_local10, f58_local11 )
end

function UnlockAllPopup( f59_arg0, f59_arg1 )
	Engine.PlaySound( "mission_unlock_cheat" )
	LUI.FlowManager.RequestAddMenu( nil, "request_yesno_popup_generic", true, f59_arg1.controller, nil, {
		popup_title = Engine.Localize( "@MENU_COMPLETED_CHEAT" ) .. " - " .. Engine.Localize( "@LUA_MENU_CAMPAIGN_UNLOCKED_ALL_TITLE" ),
		yes_action = SetUnlockAll,
		message_text = Engine.Localize( "@LUA_MENU_CAMPAIGN_UNLOCKED_ALL_DESC" )
	} )
end

function SetUnlockAll( f60_arg0, f60_arg1 )
	Engine.SetDvarBool( "profileMenuOption_hasUnlockedAll_SP", Engine.GetDvarBool( "profileMenuOption_hasUnlockedAll_SP" ) )
	Engine.ExecNow( "profile_menuDvarsFinish" )
	Engine.Exec( "updategamerprofile" )
	local f60_local0 = LUI.FlowManager.GetTopOpenAndVisibleMenuName()
	LUI.FlowManager.RequestAddMenu( nil, f60_local0, true, f60_arg1.controller, true, LUI.LevelSelect.FindActData( f60_local0 ), {
		reload = true
	} )
end

function MenuCreate( f61_arg0, f61_arg1 )
	OnFirstLevelButton( f61_arg0, f61_arg1 )
	LUI.LevelSelect.CheckCampaignCompletedNotification( f61_arg0, f61_arg1 )
end

local f0_local34 = false
local f0_local35 = false
local f0_local36 = 1
local f0_local37 = {
	"up",
	"up",
	"down",
	"down",
	"alt1",
	"alt2"
}
function genericAction( f62_arg0, f62_arg1 )
	if f62_arg1.button == "left_trigger" then
		UPVAL0 = f62_arg1.down
		UPVAL1 = 1
		return 
	elseif f62_arg1.button == "right_trigger" then
		UPVAL2 = f62_arg1.down
		UPVAL1 = 1
		return 
	elseif f0_local34 and f0_local35 and f62_arg1.down then
		if f0_local37[f0_local36] == f62_arg1.button then
			if f0_local36 == #f0_local37 then
				UnlockAllPopup( f62_arg0, f62_arg1 )
			else
				UPVAL1 = f0_local36 + 1
			end
			return 
		end
		UPVAL1 = 1
	end
end

function RefreshDifficultySelection( f63_arg0, f63_arg1, f63_arg2 )
	UPVAL0 = f63_arg2
	DisplayDifficultyFooterPrompt( f0_local17, true )
end

function ShowDifficultySelectionStandalone( f64_arg0, f64_arg1 )
	LUI.FlowManager.RequestAddMenu( f64_arg0, "difficulty_selection_menu", true, f64_arg1.controller, false, {
		extraAcceptFunc = RefreshDifficultySelection,
		specialops = Engine.GetDvarBool( "specialops" ),
		fakeDifficultySelection = true
	} )
end

function GetCurrentDifficultyFooterText()
	return CoD.DifficultyList[f0_local26 + 1].buttonHelperText
end

function DisplayDifficultyFooterPrompt( f66_arg0, f66_arg1 )
	if f0_local18 then
		if f66_arg1 then
			f66_arg0:AddHelp( {
				name = "add_button_helper_text",
				button_ref = "button_alt2",
				helper_text_func = GetCurrentDifficultyFooterText,
				side = "right",
				clickable = true
			}, ShowDifficultySelectionStandalone )
		else
			f66_arg0:AddHelp( {
				name = "add_button_helper_text",
				button_ref = "button_alt2",
				helper_text = "",
				side = "right",
				clickable = false
			}, ShowDifficultySelectionStandalone )
		end
	end
end

function DisplayLeaderboardFooterPrompt( f67_arg0, f67_arg1 )
	if f67_arg1 then
		f67_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_alt2",
			helper_text = Engine.Localize( "@MENU_LEADERBOARD" ),
			side = "right",
			clickable = true
		}, OpenLeaderboard )
	else
		f67_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_alt2",
			helper_text = "",
			side = "right",
			clickable = false
		}, OpenLeaderboard )
	end
end

function DisplayUnlockAllFooterPrompt( f68_arg0, f68_arg1 )
	local f68_local0 = "Unlock All (This is a debug feature)"
	if f68_arg1 then
		f68_local0 = "Cancel Unlock All (This is a debug feature)"
	end
	f68_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = "button_alt2",
		helper_text = "Unlock All (This is a debug feature)",
		side = "right",
		clickable = true
	}, function ( f19_arg0, f19_arg1 )
		SetUnlockAll( f19_arg0, f19_arg1 )
	end )
end

LUI.LevelSelect.new = function ( f69_arg0, f69_arg1 )
	if f0_local26 == nil then
		UPVAL0 = Engine.GetDvarInt( "g_gameskill" )
	end
	if CoD.AllowCheat then
		LUI.LevelSelect.UpdateLockWithDVar()
	end
	InitMapInfos()
	Engine.SetDvarBool( "arcademode_full", false )
	Engine.SetDvarInt( "recommended_gameskill", -1 )
	Engine.ExecNow( "profile_menuDvarsSetup" )
	Engine.Exec( "profile_difficultyLoad" )
	if f69_arg1.menuIndex == nil then
		f69_arg1 = LUI.LevelSelect.FindActData( f69_arg0.type )
	end
	UPVAL1 = f69_arg1.menuIndex
	local f69_local0 = Engine.Localize( "@MENU_MISSION_SELECT_CAPS" )
	if not Engine.IsConsoleGame() then
		local f69_local1 = Engine.IsGamepadEnabled()
	end
	local f69_local2 = f69_arg1.previousActMenu and WrapperTabEvent( f69_arg1.previousActMenu ) or nil
	local f69_local3 = f69_arg1.nextActMenu and WrapperTabEvent( f69_arg1.nextActMenu ) or nil
	local f69_local4 = Engine.GetDvarBool( "arcademode" )
	if f69_local4 then
		f69_local0 = Engine.Localize( "@MENU_ARCADEMODE" )
	end
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	self.id = f0_local8 .. f69_arg1.actName
	self:makeFocusable()
	self.properties = {
		mapInfoList = f69_arg1.mapInfoList,
		previousActMenu = f69_arg1.previousActMenu,
		nextActMenu = f69_arg1.nextActMenu,
		title_loc_string = f69_local0
	}
	local f69_local6 = LUI.PreviousMenuName
	local f69_local7 = false
	if f69_local6 then
		f69_local7 = string.find( f69_local6, f0_local7 ) ~= nil
	end
	local f69_local8 = LUI.MenuTemplate.new( f69_arg0, {
		menu_title = f69_local0,
		uppercase_title = true,
		menu_top_indent = LUI.MenuTemplate.spMenuOffset + LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing,
		menu_list_divider_top_offset = -(LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing),
		menu_width = f0_local5 - f0_local4,
		skipAnim = f69_local7
	} )
	f69_local8:setClass( LUI.LevelSelect )
	UPVAL6 = f69_local8
	local f69_local9 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.All )
	f69_local9.red = 0
	f69_local9.blue = 0
	f69_local9.green = 0
	f69_local9.alpha = 0
	
	local bgBlack = LUI.UIImage.new( f69_local9 )
	bgBlack.id = "black_bg_id"
	bgBlack:registerAnimationState( "BlackScreen", {
		alpha = 1
	} )
	bgBlack:registerAnimationState( "Faded", {
		alpha = 0
	} )
	self:addElement( bgBlack )
	self.bgBlack = bgBlack
	
	if f69_local4 then
		f69_local8:SetBreadCrumb( "" )
	end
	f0_local22[#f0_local22 + 1] = TryShowOverwriteWarning
	f0_local22[#f0_local22 + 1] = TryShowDifficulty
	f0_local22[#f0_local22 + 1] = TryShowSplitscreen
	f0_local22[#f0_local22 + 1] = TryShowRole
	f0_local22[#f0_local22 + 1] = LoadSpecificMap
	f69_local8:addElement( LUI.H1MenuTab.new( {
		title = function ( f21_arg0 )
			return f0_local29[GetRealActIndex( f21_arg0 )].loc_string
		end,
		top = LUI.MenuTemplate.spMenuOffset + LUI.MenuTemplate.ListTop,
		width = f0_local5 - f0_local4,
		tabCount = GetRealActCount( index ),
		clickTabBtnAction = ClickTabBtnAction,
		activeIndex = GetRelativeActIndex( f69_arg1.menuIndex ),
		underTabTextFunc = function ( f22_arg0 )
			local f22_local0 = f0_local29[GetRealActIndex( f22_arg0 )].tab_string
			if not f22_local0 then
				f22_local0 = f0_local29[GetRealActIndex( f22_arg0 )].loc_string
			end
			return f22_local0
		end,
		isTabLockedfunc = function ( f20_arg0 )
			return f0_local29[GetRealActIndex( f20_arg0 )].locked
		end,
		previousDisabled = f69_arg1.previousActMenu == nil,
		nextDisabled = f69_arg1.nextActMenu == nil,
		enableRightLeftNavigation = true,
		skipChangeTab = true,
		exclusiveController = f69_local8.exclusiveController
	} ) )
	f69_local8:AddLevelListButtons( f69_arg1.mapInfoList )
	f69_local8:registerEventHandler( "menu_create", MenuCreate )
	if not f69_local4 and not Engine.GetDvarBool( "profileMenuOption_hasUnlockedAll_SP" ) and not LUI.LevelSelect.IsAllLevelCompleted() then
		local self = LUI.UIBindButton.new()
		self.id = "bindbutton"
		self:registerEventHandler( "gamepad_button", genericAction )
		self:addElement( self )
	end
	f69_local8:AddLocationInfoWindow( {
		skipAnim = f69_local7
	} )
	f69_local8:AddBackButton( backButtonHandler )
	f69_local8:registerEventHandler( "menu_close", function ( element, event )
		local f23_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( element )
		f23_local0.currentLevelNumber = nil
	end )
	self:addElement( f69_local8 )
	CoD.InitializeCheat( f69_local8, function ( f24_arg0, f24_arg1 )
		LUI.LevelSelect.UpdateLockWithDVar()
		InitMapInfos()
		local f24_local0 = LUI.LevelSelect.FirstCampaignMenuName
		if Engine.GetDvarBool( "specialops" ) then
			f24_local0 = LUI.LevelSelect.FirstSpecopsMenuName
		end
		LUI.FlowManager.RequestAddMenu( nil, f24_local0, true, f24_arg1.controller, true, LUI.LevelSelect.FindActData( f24_local0 ), {
			reload = true
		} )
	end )
	if CoD.AllowUnlockAllInShip then
		DisplayUnlockAllFooterPrompt( f69_local8, Engine.GetDvarBool( "profileMenuOption_hasUnlockedAll_SP" ) )
	end
	return self
end

for f0_local38 = 1, #f0_local29, 1 do
	LUI.MenuBuilder.registerType( f0_local7 .. f0_local29[f0_local38].actName, LUI.LevelSelect.new )
end
LockTable( _M )
