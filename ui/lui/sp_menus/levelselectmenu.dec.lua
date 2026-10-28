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
		f0_local1 = not f6_local0
		f0_local2 = f6_local0
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
	f0_local27 = {}
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
	return function ( f18_arg0, f18_arg1 )
		LUI.FlowManager.RequestAddMenu( f18_arg0, f17_arg0, true, f18_arg1.controller, true, LUI.LevelSelect.FindActData( f17_arg0 ) )
		CoD.PlayEventSound( CoD.SFX.MouseClick, 10 )
	end
	
end

function ShowNextPopup( f19_arg0, f19_arg1 )
	f0_local24 = f0_local24 + 1
	if f0_local24 <= #f0_local22 then
		f0_local22[f0_local24]( f19_arg0, f19_arg1 )
	else
		assert( f0_local24 <= #f0_local22, "ShowNextPopup is called too often" )
		f0_local24 = 0
	end
end

function ShowPreviousPopup( f20_arg0, f20_arg1 )
	f0_local24 = f0_local24 - 1
	if f0_local24 > 0 then
		f0_local22[f0_local24]( f20_arg0, f20_arg1 )
	else
		assert( f0_local24 >= 0, "ShowPreviousPopup is called too often" )
		f0_local24 = 0
	end
end

function TryShowOverwriteWarning( f21_arg0, f21_arg1 )
	if Engine.CanResumeGame() and not Engine.GetDvarBool( "arcademode" ) and not Engine.GetDvarBool( "limited_mode" ) and not Engine.GetDvarBool( "specialops" ) then
		LUI.FlowManager.RequestAddMenu( f21_arg0, "overwrite_warning_level_select_menu", true, f21_arg1.controller )
	else
		ShowNextPopup( f21_arg0, f21_arg1 )
	end
end

function overwrite_warning_level_select_menu( f22_arg0, f22_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_WARNING_CHECKPOINT_RESET_TITLE" ),
		message_text = Engine.Localize( "@MENU_WARNING_CHECKPOINT_RESET" ),
		yes_text = Engine.Localize( "@MENU_YES_CAPS" ),
		yes_action = function ( f23_arg0, f23_arg1 )
			ShowNextPopup( f23_arg0, f23_arg1 )
		end
		,
		no_text = Engine.Localize( "@MENU_NO_CAPS" ),
		no_action = function ( f24_arg0, f24_arg1 )
			ShowPreviousPopup( f24_arg0, f24_arg1 )
		end
		
	} )
end

LUI.MenuBuilder.registerPopupType( "overwrite_warning_level_select_menu", overwrite_warning_level_select_menu )
function setInSplitscreen( f25_arg0 )
	if f25_arg0 then
		Engine.Exec( "autosignin" )
		Engine.Exec( "set splitscreen 1" )
		Engine.Exec( "forcesplitscreencontrol 1" )
	else
		Engine.Exec( "set splitscreen 0" )
		Engine.Exec( "forcenosplitscreencontrol 1" )
	end
end

function LoadSpecificMap( f26_arg0, f26_arg1 )
	if f0_local18 then
		CoD.ChangeDifficulty( f0_local26 )
	end
	local f26_local0 = LUI.FlowManager.GetNextMapToLoad()
	LUI.FlowManager.PushMenuStackToDVar()
	LUI.LevelSelect.ResumeSetIsGameCompleted( false )
	if not LUI.LevelSelect.IsSpecOps( f26_local0 ) then
		setInSplitscreen( false )
	end
	Engine.StreamingInstallMap( f26_local0, "devmap " .. f26_local0 )
end

function TryShowSplitscreen( f27_arg0, f27_arg1 )
	if Engine.GetDvarBool( "specialops" ) then
		LUI.FlowManager.RequestAddMenu( f27_arg0, "splitscreen_selection_menu", true, f27_arg1.controller, false )
	else
		ShowNextPopup( f27_arg0, f27_arg1 )
	end
end

function splitscreen_selection_menu( f28_arg0, f28_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "@MENU_SPLITSCREEN_CAPS" ),
		message_text = Engine.Localize( "@MENU_SP_TWO_PLAYER_SPLIT_SCREEN" ),
		yes_text = Engine.Localize( "@MENU_YES_CAPS" ),
		yes_action = function ( f29_arg0, f29_arg1 )
			setInSplitscreen( true )
			ShowNextPopup( f29_arg0, f29_arg1 )
		end
		,
		no_text = Engine.Localize( "@MENU_NO_CAPS" ),
		no_action = function ( f30_arg0, f30_arg1 )
			setInSplitscreen( false )
			ShowNextPopup( f30_arg0, f30_arg1 )
		end
		,
		cancel_means_no = false,
		cancel_action = function ( f31_arg0, f31_arg1 )
			ShowPreviousPopup( f31_arg0, f31_arg1 )
		end
		
	} )
end

LUI.MenuBuilder.registerPopupType( "splitscreen_selection_menu", splitscreen_selection_menu )
function TryShowRole( f32_arg0, f32_arg1 )
	if Engine.GetDvarBool( "specialops" ) then
		if f0_local23.roleTitle then
			LUI.FlowManager.RequestAddMenu( f32_arg0, "role_selection_menu", true, f32_arg1.controller, false )
		else
			ShowNextPopup( f32_arg0, f32_arg1 )
		end
	else
		ShowNextPopup( f32_arg0, f32_arg1 )
	end
end

function role_selection_menu( f33_arg0, f33_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( f0_local23.menuTitle ),
		message_text = Engine.Localize( f0_local23.roleTitle ),
		yes_text = "Player 1",
		yes_action = function ( f34_arg0, f34_arg1 )
			Engine.SetDvarString( "coop_start", "so_char_host" )
			ShowNextPopup( f34_arg0, f34_arg1 )
		end
		,
		no_text = "Player 2",
		no_action = function ( f35_arg0, f35_arg1 )
			Engine.SetDvarString( "coop_start", "so_char_client" )
			ShowNextPopup( f35_arg0, f35_arg1 )
		end
		,
		cancel_means_no = false,
		cancel_action = function ( f36_arg0, f36_arg1 )
			ShowPreviousPopup( f36_arg0, f36_arg1 )
		end
		
	} )
end

LUI.MenuBuilder.registerPopupType( "role_selection_menu", role_selection_menu )
function CanShowDifficultyPopup( f37_arg0 )
	return f37_arg0 ~= "trainer"
end

function TryShowDifficulty( f38_arg0, f38_arg1 )
	local f38_local0 = Engine.GetDvarBool( "specialops" )
	if CanShowDifficultyPopup( LUI.FlowManager.GetNextMapToLoad() ) and not f0_local18 then
		LUI.FlowManager.RequestAddMenu( f38_arg0, "difficulty_selection_menu", true, f38_arg1.controller, false, {
			acceptFunc = ShowNextPopup,
			specialops = f38_local0
		} )
	else
		ShowNextPopup( f38_arg0, f38_arg1 )
	end
end

function StartMap( f39_arg0, f39_arg1, f39_arg2 )
	LUI.FlowManager.SetNextMapToLoad( f39_arg2.mapName )
	f0_local24 = 0
	f0_local23 = f39_arg2
	ShowNextPopup( f39_arg0, f39_arg1 )
end

function GetIntelText( f40_arg0 )
	if f40_arg0.intel == nil or #f40_arg0.intel == 0 then
		return Engine.Localize( "@LUA_MENU_INTEL_NONE" )
	end
	local f40_local0 = 0
	local f40_local1 = #f40_arg0.intel
	for f40_local2 = 1, #f40_arg0.intel, 1 do
		if Engine.GetPlayerIntelIsFound( f40_arg0.intel[f40_local2] ) then
			f40_local0 = f40_local0 + 1
		end
	end
	return Engine.Localize( "@LUA_MENU_STATUS_INTEL", f40_local0, f40_local1 )
end

function UpdateDescriptionBoxWidth( f41_arg0, f41_arg1 )
	
end

function OnFirstLevelButton( f42_arg0, f42_arg1 )
	local f42_local0 = f42_arg0.list.buttonCount > 0
	assert( f42_local0, "Requires at least one button to select and update level info" )
	if f42_local0 then
		local f42_local1 = f42_arg0.list:getFirstChild()
		f42_local1:processEvent( {
			name = "button_over"
		} )
	end
end

local f0_local32 = function ( f43_arg0, f43_arg1 )
	local f43_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f43_arg0 )
	local f43_local1 = f43_local0.currentLevelNumber
	f43_local0.currentLocationTitle = f43_arg0.properties.button_text
	f43_local0.currentObjectiveText = f43_arg0.properties.objective_text
	f43_local0.currentLevelNumber = f43_arg0.properties.level_number
	f43_local0.currentButtonNumber = f43_arg0.properties.map_index
	local f43_local2 = f43_local0.currentLevelNumber == f43_local1
	local f43_local3 = f43_arg0:getParent()
	if not f43_local2 then
		LocationWindowUpdate( f43_local3, f43_arg1 )
		if not f43_local0.fromLeaderboard then
			PersistentBackground.ChangeBackground( nil, "mission_select_bg_" .. string.lower( f43_arg0.properties.mapInfo.levelTitle ) )
			local f43_local4 = Engine.GetLuiRoot()
			assert( f43_local4 )
			local f43_local5 = LUI.FlowManager.GetTopMenuInfo( f43_local4.flowManager.menuInfoStack )
			assert( f43_local5 )
			local f43_local6 = f43_local5.menu.bgBlack
			assert( f43_local6 )
			f43_local6:animateInSequence( {
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
		f43_local0.fromLeaderboard = false
	end
end

function ChangeActBtnAction( f44_arg0, f44_arg1 )
	LUI.FlowManager.RequestAddMenu( f44_arg0, f44_arg0.properties.actToSelect, true, f44_arg1.controller, true, LUI.LevelSelect.FindActData( f44_arg0.properties.actToSelect ) )
end

function LocationWindowUpdateFromChild( f45_arg0, f45_arg1 )
	local f45_local0 = LocationWindowUpdate
	local f45_local1 = f45_arg0:getParent()
	f45_local0( f45_local1.list, f45_arg1 )
end

local f0_local33 = 0
function LocationWindowUpdate( f46_arg0, f46_arg1 )
	local f46_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f46_arg0 )
	local f46_local1 = f46_local0.currentLevelNumber
	local f46_local2 = f46_local0.currentButtonNumber
	if f46_local2 == nil then
		return 
	elseif not f46_local0.currentLocationTitle then
		f46_local0.currentLocationTitle = Engine.Localize( "@MENU_SP_IW6_PROLOGUE" )
	end
	local f46_local3 = Engine.GetLuiRoot()
	assert( f46_local3 )
	local f46_local4 = LUI.FlowManager.GetTopMenuInfo( f46_local3.flowManager.menuInfoStack, false )
	assert( f46_local4 )
	local f46_local5 = LUI.LevelSelect.FindActData( f46_local4.name )
	f46_local5 = f46_local5.mapInfoList[f46_local2]
	local f46_local6 = GetIntelText( f46_local5 )
	local f46_local7 = f46_local5.mapName
	local f46_local8 = Engine.Localize( "@LUA_MENU_SP_LOCATION_" .. f46_local5.levelTitle )
	local f46_local9
	if f46_arg1 then
		f46_local9 = f46_arg1.controller
		if not f46_local9 then
		
		else
			local f46_local10 = Engine.GetDvarBool( "arcademode" )
			f46_arg0:processEvent( {
				name = "menu_refresh"
			} )
			local f46_local11 = f46_arg0:getParent()
			local f46_local12 = 0
			if f46_local7 == "trainer" then
				f46_local12 = Engine.GetPlayerData( f46_local9, CoD.StatsGroup.SP, "timeTrialTime" )
			end
			if f46_local1 == 1 then
				ClearInfoBoxLeftBottom( f46_local11.infoBox )
				ClearInfoBoxRightBottom( f46_local11.infoBox )
				SetupInfoBoxLeftForArcadeMode( f46_local11.infoBox, {
					highscore = f46_local12,
					mapname = f46_local7,
					challengeName = f46_local5.challenge
				} )
				SetupInfoBoxRightForMissionSelect( f46_local11.infoBox )
			elseif f0_local33 == 1 and not f46_local10 then
				ClearInfoBoxLeftBottom( f46_local11.infoBox )
				ClearInfoBoxRightBottom( f46_local11.infoBox )
				SetupInfoBoxLeftForMissionSelect( f46_local11.infoBox )
				SetupInfoBoxRightForMissionSelect( f46_local11.infoBox )
			end
			f0_local33 = f46_local1
			local f46_local13 = f46_local11
			local f46_local14 = f46_local11.dispatchEventToChildren
			local f46_local15 = {
				name = "update_levelInfo",
				level_number = f46_local1,
				title_text = f46_local0.currentLocationTitle,
				map_name = f46_local7,
				location_text = f46_local8,
				intel_text = f46_local6,
				level_controller = f46_local9,
				narative_level = f46_local5.narativeLevel,
				location_image = f46_local5.locationImage or f0_local25
			}
			local f46_local16 = f46_local5.blipPosX
			if not f46_local16 then
				f46_local16 = f0_local6 / 2
			end
			f46_local15.blipPosX = f46_local16
			f46_local16 = f46_local5.blipPosY
			if not f46_local16 then
				f46_local16 = f0_local6 / 2
			end
			f46_local15.blipPosY = f46_local16
			f46_local15.immediate = true
			f46_local15.highscore = f46_local12
			f46_local15.challengeName = f46_local5.challenge
			f46_local15.hasLeaderboard = f46_local5.storyChallenge or f46_local10
			f46_local15.isTimeChallenge = f46_local5.isTimeChallenge
			f46_local14( f46_local13, f46_local15 )
			if f46_local0.currentObjectiveText then
				f46_local11:dispatchEventToChildren( {
					name = "update_objective_text",
					objective_text = f46_local0.currentObjectiveText,
					immediate = true
				} )
			end
			DisplayDifficultyFooterPrompt( f46_local11, CanShowDifficultyPopup( f46_local7 ) )
		end
	end
	f46_local9 = Engine.GetSignedInAsController()
end

function UpdateLocationTitle( f47_arg0, f47_arg1 )
	if f0_local10 then
		f47_arg0:animateToState( "hide", 0 )
	end
	f47_arg0:setText( f47_arg1.title_text )
	local f47_local0 = nil
	local f47_local1, f47_local2, f47_local3 = GetTextDimensions( Engine.ToUpperCase( f47_arg1.title_text ), CoD.TextSettings.H1TitleFont.Font, locationInfoWindowTitleFontSize )
	local f47_local4, f47_local5, f47_local6 = GetTextDimensions( Engine.ToUpperCase( f47_arg1.location_text ), CoD.TextSettings.H1TitleFont.Font, locationInfoWindowTitleFontSize )
	f47_local0 = f47_local3
	if f47_local3 < f47_local6 then
		f47_local0 = f47_local6
	end
	UpdateDescriptionBoxWidth( f47_arg0, f47_local0 )
	if f0_local10 then
		f47_arg0:animateToState( "show", f0_local11 )
	end
end

function UpdateLocationMap( f48_arg0, f48_arg1 )
	f48_arg0:registerAnimationState( f48_arg1.map_name, {
		material = RegisterMaterial( f48_arg1.location_image ),
		alpha = 0
	} )
	f48_arg0:animateToState( f48_arg1.map_name, 0 )
	if f0_local10 then
		f48_arg0:animateToState( "show", f0_local12 )
	else
		f48_arg0:animateToState( "show", 0 )
	end
	if f48_arg0.mapBlipPulse then
		f48_arg0.mapBlipPulse:delete( "loc_info" )
		f48_arg0.mapBlipPulse:addPulse( {
			name = "loc_info",
			posX = f48_arg1.blipPosX,
			posY = f48_arg1.blipPosY,
			delay = LevelSelectMinimapBlipSettings.delay,
			pulseDuration = LevelSelectMinimapBlipSettings.pulseDuration
		} )
	end
end

function UpdateLocationMapInfo( f49_arg0, f49_arg1 )
	if f0_local10 then
		f49_arg0:animateToState( "hide", 0 )
	end
	f49_arg0:setDescription( f49_arg1.objective_text )
	if f0_local10 then
		f49_arg0:animateToState( "show", f0_local13 )
	end
end

function UpdateLeaderboardPosition( f50_arg0 )
	local f50_local0 = Engine.Localize( "@LUA_MENU_POSITION" )
	local f50_local1 = ": "
	local f50_local2 = f0_local16
	if f0_local16 == nil or f0_local16 == "" then
		f50_local2 = Engine.Localize( "@LUA_MENU_LEADERBOARD_REFRESH" )
	elseif f0_local16 == -1 then
		f50_local2 = Engine.Localize( "@LUA_MENU_LB_UNRANKED" )
	end
	if Engine.IsRightToLeftLanguage() then
		local f50_local3 = f50_local2
		local f50_local4 = " :"
		f50_local2 = f50_local0
		f50_local1 = f50_local4
		f50_local0 = f50_local3
	end
	f50_arg0:setText( "(" .. f50_local0 .. f50_local1 .. f50_local2 .. ")" )
end

function SetupPlayerPosition( f51_arg0, f51_arg1 )
	if not f51_arg0.positionText then
		return 
	end
	f51_arg1.highscore = f51_arg1.highscore and "0" or f51_arg1.highscore
	local f51_local0 = f51_arg1.highscore
	if f51_arg0.scoreText then
		f51_local0 = f51_arg0.scoreText:getText()
	end
	local f51_local1, f51_local2, f51_local3 = GetTextDimensions( f51_local0, f0_local21.Font, f0_local21.Height )
	f51_arg1.playerPosition = f51_arg1.playerPosition and "... " or f51_arg1.playerPosition
	UpdateLeaderboardPosition( f51_arg0.positionText )
	f51_arg0.positionText:registerAnimationState( "default", {
		left = f51_local3 + 3,
		leftAnchor = true
	} )
	f51_arg0.positionText:animateToState( "default" )
end

function UpdateLocationDifficultyScore( f52_arg0, f52_arg1 )
	local f52_local0 = Engine.IsRightToLeftLanguage()
	if f0_local10 then
		f52_arg0:animateToState( "hide", 0 )
	end
	if not f52_arg1.hasLeaderboard then
		local f52_local1 = LUI.LevelSelect.GetDifficultyText( f52_arg1.level_number, f52_arg1.level_controller )
		if f52_local1 ~= "" then
			local f52_local2 = Engine.Localize( "@LUA_MENU_DIFFICULTYCOMPLETED" )
			local f52_local3 = ": "
			local f52_local4 = Engine.Localize( f52_local1 )
			if f52_local0 then
				local f52_local5 = f52_local4
				f52_local4 = f52_local2
				f52_local2 = f52_local5
			end
			f52_arg0.difficultyText:setText( f52_local2 .. f52_local3 .. f52_local4 )
		else
			f52_arg0.difficultyText:setText( Engine.Localize( "@LUA_MENU_NOT_COMPLETED" ) )
		end
	else
		if f52_arg1.highscore ~= nil then
			if f52_arg1.highscore == 0 or f52_arg1.isTimeChallenge and string.len( f52_arg1.highscore ) <= 2 then
				ClearInfoBoxLeftBottom( f52_arg0:getParent() )
				SetupInfoBoxLeftForMissionSelect( f52_arg0:getParent() )
				f52_arg0.difficultyText:setText( Engine.Localize( "@LUA_MENU_NOT_COMPLETED" ) )
			elseif f52_arg1.isTimeChallenge then
				local f52_local3 = string.sub( f52_arg1.highscore, 0, -3 ) .. "." .. string.sub( f52_arg1.highscore, -2 )
				local f52_local4 = Engine.Localize( "@MENU_SECONDS_ABBREVIATION" )
				if f52_local0 then
					local f52_local5 = f52_local4
					f52_local4 = f52_local3
					f52_local3 = f52_local5
				end
				f52_arg0.scoreText:setText( f52_local3 .. f52_local4 )
			else
				ClearInfoBoxLeftBottom( f52_arg0:getParent() )
				SetupInfoBoxLeftForArcadeMode( f52_arg0:getParent(), {
					challengeName = f52_arg1.challengeName
				} )
				f52_arg0.scoreText:setText( f52_arg1.highscore )
			end
		end
		SetupPlayerPosition( f52_arg0, f52_arg1 )
	end
	if f0_local10 then
		f52_arg0:animateToState( "show", timeOfInfoBoxAnimDifficulty )
	end
end

function UpdateLocationIntel( f53_arg0, f53_arg1 )
	if f0_local10 then
		f53_arg0:animateToState( "hide", 0 )
	end
	f53_arg0:setText( f53_arg1.intel_text )
	if f0_local10 then
		f53_arg0:animateToState( "show", f0_local15 )
	end
	f53_arg0.properties.currentIntel = f53_arg1.intel_text
end

function ClearInfoBoxLeftBottom( f54_arg0 )
	for f54_local3, f54_local4 in pairs( {
		f54_arg0.bottomLeftElements.scoreText,
		f54_arg0.bottomLeftElements.positionText,
		f54_arg0.bottomLeftElements.highscoreText,
		f54_arg0.bottomLeftElements.lineText,
		f54_arg0.bottomLeftElements.difficultyText
	} ) do
		if f54_local4 ~= nil then
			f54_arg0.bottomLeftElements:removeElement( f54_local4 )
		end
	end
	f54_arg0.bottomLeftElements.scoreText = nil
	f54_arg0.bottomLeftElements.positionText = nil
	f54_arg0.bottomLeftElements.highscoreText = nil
	f54_arg0.bottomLeftElements.lineText = nil
	f54_arg0.bottomLeftElements.difficultyText = nil
end

function ClearInfoBoxRightBottom( f55_arg0 )
	for f55_local3, f55_local4 in pairs( {
		f55_arg0.bottomRightElements.containerButton,
		f55_arg0.bottomRightElements.intelText
	} ) do
		if f55_local4 ~= nil then
			f55_arg0.bottomRightElements:removeElement( f55_local4 )
		end
	end
	f55_arg0.bottomRightElements.containerButton = nil
	f55_arg0.bottomRightElements.intelText = nil
end

function SPLeaderboardDataUpdateStatus( f56_arg0, f56_arg1 )
	if f56_arg0.leaderboardOpenRetryTimer == nil then
		f0_local16 = Leaderboards.GetPlayerValue( Engine.GetControllerForLocalClient( 0 ), 0 )
		if f56_arg1 and f56_arg1.isUpdating then
			return 
		elseif f0_local16 == nil then
			f0_local16 = -1
		end
		local f56_local0 = Engine.GetLuiRoot()
		local f56_local1 = LUI.FlowManager.GetTopMenuInfo( f56_local0.flowManager.menuInfoStack, false )
		f56_local1.menu:processEvent( {
			name = "update_leaderboard_position"
		} )
	end
end

function FetchLeaderboardData( f57_arg0 )
	if Leaderboards.IsUpdating() then
		if f57_arg0.leaderboardOpenRetryTimer == nil then
			f0_local16 = -1
			local f57_local0 = Engine.GetLuiRoot()
			local f57_local1 = LUI.FlowManager.GetTopMenuInfo( f57_local0.flowManager.menuInfoStack, false )
			f57_local1.menu:processEvent( {
				name = "update_leaderboard_position"
			} )
			
			local leaderboardOpenRetryTimer = LUI.UITimer.new( 1000, "leaderboardOpenRetry", nil, false )
			leaderboardOpenRetryTimer.id = "leaderboardOpenRetry"
			f57_arg0:registerEventHandler( "leaderboardOpenRetry", function ( element, event )
				if Leaderboards.IsUpdating() then
					return 
				else
					event.timer:close()
					element.leaderboardOpenRetryTimer = nil
					FetchLeaderboardData( element )
				end
			end )
			f57_arg0:addElement( leaderboardOpenRetryTimer )
			f57_arg0.leaderboardOpenRetryTimer = leaderboardOpenRetryTimer
			
		end
	else
		Leaderboards.Open( f57_arg0.currentChallengeName, "TRK_ALLTIME" )
		if not Leaderboards.IsUpdating() then
			Leaderboards.UpdateLeaderboard( Engine.GetControllerForLocalClient( 0 ), 1 )
		end
		if not Leaderboards.IsUpdating() then
			SPLeaderboardDataUpdateStatus( f57_arg0 )
		end
	end
end

function SetupInfoBoxLeftForArcadeMode( f59_arg0, f59_arg1 )
	local f59_local0 = Engine.IsRightToLeftLanguage()
	local f59_local1 = CoD.CreateState( 0, nil, nil, nil, CoD.AnchorTypes.BottomLeft )
	f59_local1.font = f0_local20.Font
	f59_local1.height = f0_local20.Height
	local self
	if f59_local0 then
		self = LUI.HorizontalAlignment.RTL_ForcedLeft
		if not self then
		
		else
			f59_local1.alignment = self
			f59_local1.color = Colors.h1.yellow
			self = LUI.UIText.new( f59_local1 )
			self.id = "infobox_score_text"
			f59_arg0.bottomLeftElements:addElement( self )
			f59_arg0.bottomLeftElements.scoreText = self
			f0_local16 = -1
			if f59_arg1 and f59_arg1.challengeName and Engine.UserCanPlayOnline( Engine.GetControllerForLocalClient( 0 ) ) then
				local f59_local3 = CoD.CreateState( 0, nil, 0, -2, CoD.AnchorTypes.BottomLeft )
				f59_local3.font = f0_local20.Font
				f59_local3.height = f0_local20.Height
				local f59_local4
				if f59_local0 then
					f59_local4 = LUI.HorizontalAlignment.RTL_ForcedLeft
					if not f59_local4 then
					
					else
						f59_local3.alignment = f59_local4
						f59_local3.color = Colors.h1.medium_grey
						f59_local4 = LUI.UIText.new( f59_local3 )
						f59_local4.id = "infobox_position_text"
						f59_arg0.bottomLeftElements:addElement( f59_local4 )
						f59_arg0.bottomLeftElements.positionText = f59_local4
						f59_local4:registerEventHandler( "update_leaderboard_position", UpdateLeaderboardPosition )
						Engine.SetDvarInt( "lb_maxrows", 1 )
						f59_arg0:registerEventHandler( "leaderboard_update_status", SPLeaderboardDataUpdateStatus )
						f59_arg0.currentChallengeName = f59_arg1.challengeName
						f0_local16 = -1
						FetchLeaderboardData( f59_arg0 )
					end
				end
				f59_local4 = LUI.HorizontalAlignment.Left
			end
			local f59_local3 = -f59_local1.height - 5
			local f59_local4 = CoD.CreateState( 0, nil, 0, f59_local3, CoD.AnchorTypes.BottomLeft )
			f59_local4.font = f0_local20.Font
			f59_local4.height = f0_local20.Height
			local f59_local5
			if f59_local0 then
				f59_local5 = LUI.HorizontalAlignment.RTL_ForcedLeft
				if not f59_local5 then
				
				else
					f59_local4.alignment = f59_local5
					f59_local4.color = Colors.white
					f59_local5 = LUI.UIText.new( f59_local4 )
					f59_local5.id = "infobox_highscore_text"
					f59_local5:setText( Engine.Localize( "@LUA_MENU_HIGHSCORE" ) )
					if f59_arg1 ~= nil and f59_arg1.mapname == "trainer" then
						local f59_local6 = Engine.Localize( "@MENU_SP_LEVEL_YOUR_BEST_TIME" )
						local f59_local7 = ":"
						if f59_local0 then
							local f59_local8 = f59_local7
							f59_local7 = f59_local6
							f59_local6 = f59_local8
						end
						f59_local5:setText( f59_local6 .. f59_local7 )
					end
					f59_arg0.bottomLeftElements:addElement( f59_local5 )
					f59_arg0.bottomLeftElements.highscoreText = f59_local5
					local f59_local6 = f59_local3 - f59_local4.height - 5
					local f59_local7 = Engine.GetCurrentLanguage()
					if f59_local7 == CoD.Language.Russian or f59_local7 == CoD.Language.Korean then
						f59_local6 = f59_local6 + 6
					end
					local f59_local8 = CoD.CreateState( 0, nil, 0, f59_local6, CoD.AnchorTypes.BottomLeft )
					f59_local8.font = f0_local20.Font
					f59_local8.height = f0_local20.Height
					local f59_local9
					if f59_local0 then
						f59_local9 = LUI.HorizontalAlignment.RTL_ForcedLeft
						if not f59_local9 then
						
						else
							f59_local8.alignment = f59_local9
							f59_local8.color = Colors.white
							f59_local9 = LUI.UIText.new( f59_local8 )
							f59_local9.id = "infobox_line_text"
							f59_local9:setText( "___" )
							f59_arg0.bottomLeftElements:addElement( f59_local9 )
							f59_arg0.bottomLeftElements.lineText = f59_local9
						end
					end
					f59_local9 = LUI.HorizontalAlignment.Left
				end
			end
			f59_local5 = LUI.HorizontalAlignment.Left
		end
	end
	self = LUI.HorizontalAlignment.Left
end

function SetupInfoBoxRightForArcadeMode( f60_arg0, f60_arg1 )
	if f60_arg1 ~= nil and f60_arg1.mapname == "trainer" and f60_arg1.highscore == 0 then
		local f60_local0 = false
	else
		local f60_local0 = true
	end
	local f60_local0 = false
	local f60_local1 = "button_alt2"
	local self = nil
	if f60_local0 then
		self = LUI.UIButton.new( CoD.CreateState( nil, nil, 0, 0, CoD.AnchorTypes.BottomRight ) )
	else
		self = LUI.UIElement.new( CoD.CreateState( nil, nil, 0, 0, CoD.AnchorTypes.BottomRight ) )
	end
	self.id = "infobox_leaderboard_button"
	if f60_local0 then
		self:registerEventHandler( "button_action", OpenLeaderboard )
		self.m_requireFocusType = FocusType.MouseOver
		self.listenMouseEnterLeave = true
		self.bindButton = LUI.UIBindButton.new()
		self.bindButton.id = "BindButtonLeaderboards"
		self.bindButton:registerEventHandler( f60_local1, OpenLeaderboard )
		self.bindButton.func = OpenLeaderboard
		self:addElement( self.bindButton )
	end
	local f60_local3 = CoD.CreateState( nil, nil, 0, 0, CoD.AnchorTypes.BottomRight )
	f60_local3.font = f0_local19.Font
	f60_local3.height = f0_local19.Height
	if f60_local0 then
		f60_local3.color = Colors.white
	else
		f60_local3.color = Colors.dark_grey
	end
	local f60_local4 = LUI.UIText.new( f60_local3 )
	f60_local4.id = "infobox_leaderboard_text"
	if f60_local0 then
		f60_local3.color = GenericMenuColors.text_highlight
		f60_local4:registerAnimationState( "over", f60_local3 )
		f60_local4:registerEventHandler( "lose_focus", MBh.AnimateToState( "default" ) )
		f60_local4:registerEventHandler( "gain_focus", MBh.AnimateToState( "over" ) )
	end
	f60_local4.text = Engine.Localize( "@MENU_LEADERBOARD" )
	local f60_local5 = ""
	if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
		f60_local5 = ButtonMap[f60_local1].string
	end
	f60_local5 = Engine.Localize( f60_local5 )
	f60_local4:setText( f60_local5 .. " " .. f60_local4.text )
	if not Engine.IsConsoleGame() and not Engine.IsGamepadEnabled() and f60_local0 then
		local f60_local6 = CoD.CreateState( 10, -4, 0, nil, CoD.AnchorTypes.TopLeft )
		f60_local6.font = CoD.TextSettings.TitleFontMediumLarge.Font
		f60_local6.height = f0_local19.Height + 4
		f60_local5 = Engine.Localize( ButtonMap[f60_local1].keyboard_string )
		self:addElement( LUI.UIButtonText.new( f60_local6, f60_local5, nil, nil, true, false, OpenLeaderboard ) )
	end
	if f60_local0 then
		self:addElement( f60_local4 )
	end
	local f60_local6, f60_local7, f60_local8 = GetTextDimensions( f60_local5 .. f60_local4.text, f0_local19.Font, f0_local19.Height )
	self:registerAnimationState( "default", {
		rightAnchor = true,
		right = 0,
		height = f0_local19.Height,
		width = f60_local8
	} )
	self:animateToState( "default" )
	f60_arg0.bottomRightElements:addElement( self )
	f60_arg0.bottomRightElements.containerButton = self
end

function SetupInfoBoxLeftForMissionSelect( f61_arg0 )
	local f61_local0 = CoD.CreateState( 0, nil, 0, nil, CoD.AnchorTypes.BottomLeft )
	f61_local0.font = f0_local19.Font
	f61_local0.height = f0_local19.Height
	f61_local0.horizontalAlignment = LUI.HorizontalAlignment.RTL_ForcedLeft
	f61_local0.alpha = 1
	f61_local0.color = Colors.grey_4
	local self = LUI.UIText.new( f61_local0 )
	self.id = "infobox_difficulty_text"
	f61_arg0.bottomLeftElements:addElement( self )
	f61_arg0.bottomLeftElements.difficultyText = self
end

function SetupInfoBoxRightForMissionSelect( f62_arg0 )
	local f62_local0 = CoD.CreateState( nil, nil, 0, 0, CoD.AnchorTypes.BottomRight )
	f62_local0.font = f0_local19.Font
	f62_local0.height = f0_local19.Height
	f62_local0.alpha = 1
	f62_local0.color = Colors.grey_4
	local self = LUI.UIText.new( f62_local0 )
	self.id = "infobox_intel_text"
	f62_arg0.bottomRightElements:addElement( self )
	f62_arg0.bottomRightElements.intelText = self
	f62_arg0.bottomRightElements.intelText:registerEventHandler( "update_levelInfo", UpdateLocationIntel )
	f62_arg0.bottomRightElements.intelText.properties = {
		currentIntel = ""
	}
end

LUI.LevelSelect.AddLocationInfoWindow = function ( f63_arg0, f63_arg1 )
	local infoBox = LUI.MenuBuilder.BuildRegisteredType( "InfoBox", {
		skipAnim = f63_arg1.skipAnim
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
	f63_arg0:addElement( infoBox )
	f63_arg0.infoBox = infoBox
	
end

LUI.LevelSelect.AddLevelListEntry = function ( f64_arg0, f64_arg1, f64_arg2, f64_arg3 )
	local f64_local0 = f64_arg2.levelNumber
	if not LUI.LevelSelect.IsMissionEnabled( f64_local0, true, true ) then
		return 
	else
		local f64_local1 = f64_arg0:AddButton( Engine.Localize( f64_arg2.menuTitle ), f64_arg2.actionFunc or function ( f65_arg0, f65_arg1 )
			StartMap( f65_arg0, f65_arg1, f64_arg2 )
		end
		, f64_arg3, true, false, {
			style = GenericButtonSettings.Styles.FlatButton,
			textStyle = CoD.TextStyle.ForceUpperCase,
			disableSound = CoD.SFX.DenySelect,
			button_map = f64_arg2.mapName,
			objective_text = f64_arg2.menuDesc,
			level_number = f64_local0,
			map_index = f64_arg1,
			mapInfo = f64_arg2,
			hasLeaderboard = f64_arg2.storyChallenge or Engine.GetDvarBool( "arcademode" ),
			isTimeChallenge = f64_arg2.isTimeChallenge
		} )
		f64_local1.id = "btn_levels_id_" .. f64_arg1
		f64_local1:registerEventHandler( "button_over", f0_local32 )
	end
end

LUI.LevelSelect.AddLevelListButtons = function ( f66_arg0, f66_arg1 )
	for f66_local0 = 1, #f66_arg1, 1 do
		if not Engine.GetDvarBool( "arcademode" ) or not f66_arg1[f66_local0].narativeLevel then
			f66_arg0:AddLevelListEntry( f66_local0, f66_arg1[f66_local0] )
		end
	end
end

function backButtonHandler( f67_arg0 )
	if Engine.GetDvarBool( "limited_mode" ) then
		Engine.SetDvarString( "gamemode", "" )
		Engine.PlaySound( CoD.SFX.MenuBack )
		Engine.SetDvarString( "ui_loadMenuName", "" )
		Engine.SetDvarBool( "ui_skipMainLockout", false )
	end
	LUI.FlowManager.RequestLeaveMenu( f67_arg0 )
end

function ClickTabBtnAction( f68_arg0, f68_arg1, f68_arg2 )
	LUI.FlowManager.RequestAddMenu( f68_arg0, f0_local29[GetRealActIndex( f68_arg2 )].menuName, true, f68_arg1.controller, true, f0_local29[GetRealActIndex( f68_arg2 )] )
	CoD.PlayEventSound( CoD.SFX.H1TabChange, 10 )
end

function OpenLeaderboard( f69_arg0, f69_arg1 )
	if not Engine.UserCanPlayOnline( f69_arg1.controller ) then
		Engine.Exec( "xrequirelivesignin", f69_arg1.controller )
		return 
	end
	local f69_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f69_arg0 )
	f69_local0.fromLeaderboard = true
	local f69_local1 = f69_local0.currentButtonNumber
	local f69_local2 = Engine.GetLuiRoot()
	assert( f69_local2 )
	local f69_local3 = LUI.FlowManager.GetTopMenuInfo( f69_local2.flowManager.menuInfoStack, true )
	assert( f69_local3 )
	local f69_local4 = LUI.LevelSelect.FindActData( f69_local3.name )
	f69_local4 = f69_local4.mapInfoList[f69_local1]
	assert( f69_local4.challengeName )
	assert( f69_local4.challenge )
	local f69_local5 = LUI.FlowManager.RequestAddMenu
	local f69_local6 = f69_arg0
	local f69_local7 = "sp_leaderboard_data"
	local f69_local8 = true
	local f69_local9 = f69_arg1.controller
	local f69_local10 = false
	local f69_local11 = {
		leaderBoardData = {
			challenge = f69_local4.challenge,
			challengeName = f69_local4.challengeName
		},
		startValue = 1,
		newFilter = true
	}
	local f69_local12
	if f69_local4.storyChallenge then
		f69_local12 = true
	else
		f69_local12 = false
	end
	f69_local11.isTimeTrial = f69_local12
	f69_local5( f69_local6, f69_local7, f69_local8, f69_local9, f69_local10, f69_local11 )
end

function UnlockAllPopup( f70_arg0, f70_arg1 )
	Engine.PlaySound( "mission_unlock_cheat" )
	LUI.FlowManager.RequestAddMenu( nil, "request_yesno_popup_generic", true, f70_arg1.controller, nil, {
		popup_title = Engine.Localize( "@MENU_COMPLETED_CHEAT" ) .. " - " .. Engine.Localize( "@LUA_MENU_CAMPAIGN_UNLOCKED_ALL_TITLE" ),
		yes_action = SetUnlockAll,
		message_text = Engine.Localize( "@LUA_MENU_CAMPAIGN_UNLOCKED_ALL_DESC" )
	} )
end

function SetUnlockAll( f71_arg0, f71_arg1 )
	Engine.SetDvarBool( "profileMenuOption_hasUnlockedAll_SP", Engine.GetDvarBool( "profileMenuOption_hasUnlockedAll_SP" ) )
	Engine.ExecNow( "profile_menuDvarsFinish" )
	Engine.Exec( "updategamerprofile" )
	local f71_local0 = LUI.FlowManager.GetTopOpenAndVisibleMenuName()
	LUI.FlowManager.RequestAddMenu( nil, f71_local0, true, f71_arg1.controller, true, LUI.LevelSelect.FindActData( f71_local0 ), {
		reload = true
	} )
end

function MenuCreate( f72_arg0, f72_arg1 )
	OnFirstLevelButton( f72_arg0, f72_arg1 )
	LUI.LevelSelect.CheckCampaignCompletedNotification( f72_arg0, f72_arg1 )
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
function genericAction( f73_arg0, f73_arg1 )
	if f73_arg1.button == "left_trigger" then
		f0_local34 = f73_arg1.down
		f0_local36 = 1
		return 
	elseif f73_arg1.button == "right_trigger" then
		f0_local35 = f73_arg1.down
		f0_local36 = 1
		return 
	elseif f0_local34 and f0_local35 and f73_arg1.down then
		if f0_local37[f0_local36] == f73_arg1.button then
			if f0_local36 == #f0_local37 then
				UnlockAllPopup( f73_arg0, f73_arg1 )
			else
				f0_local36 = f0_local36 + 1
			end
			return 
		end
		f0_local36 = 1
	end
end

function RefreshDifficultySelection( f74_arg0, f74_arg1, f74_arg2 )
	f0_local26 = f74_arg2
	DisplayDifficultyFooterPrompt( f0_local17, true )
end

function ShowDifficultySelectionStandalone( f75_arg0, f75_arg1 )
	LUI.FlowManager.RequestAddMenu( f75_arg0, "difficulty_selection_menu", true, f75_arg1.controller, false, {
		extraAcceptFunc = RefreshDifficultySelection,
		specialops = Engine.GetDvarBool( "specialops" ),
		fakeDifficultySelection = true
	} )
end

function GetCurrentDifficultyFooterText()
	return CoD.DifficultyList[f0_local26 + 1].buttonHelperText
end

function DisplayDifficultyFooterPrompt( f77_arg0, f77_arg1 )
	if f0_local18 then
		if f77_arg1 then
			f77_arg0:AddHelp( {
				name = "add_button_helper_text",
				button_ref = "button_alt2",
				helper_text_func = GetCurrentDifficultyFooterText,
				side = "right",
				clickable = true
			}, ShowDifficultySelectionStandalone )
		else
			f77_arg0:AddHelp( {
				name = "add_button_helper_text",
				button_ref = "button_alt2",
				helper_text = "",
				side = "right",
				clickable = false
			}, ShowDifficultySelectionStandalone )
		end
	end
end

function DisplayLeaderboardFooterPrompt( f78_arg0, f78_arg1 )
	if f78_arg1 then
		f78_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_alt2",
			helper_text = Engine.Localize( "@MENU_LEADERBOARD" ),
			side = "right",
			clickable = true
		}, OpenLeaderboard )
	else
		f78_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_alt2",
			helper_text = "",
			side = "right",
			clickable = false
		}, OpenLeaderboard )
	end
end

function DisplayUnlockAllFooterPrompt( f79_arg0, f79_arg1 )
	local f79_local0 = "Unlock All (This is a debug feature)"
	if f79_arg1 then
		f79_local0 = "Cancel Unlock All (This is a debug feature)"
	end
	f79_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = "button_alt2",
		helper_text = "Unlock All (This is a debug feature)",
		side = "right",
		clickable = true
	}, function ( f80_arg0, f80_arg1 )
		SetUnlockAll( f80_arg0, f80_arg1 )
	end )
end

LUI.LevelSelect.new = function ( f81_arg0, f81_arg1 )
	if f0_local26 == nil then
		f0_local26 = Engine.GetDvarInt( "g_gameskill" )
	end
	if CoD.AllowCheat then
		LUI.LevelSelect.UpdateLockWithDVar()
	end
	InitMapInfos()
	Engine.SetDvarBool( "arcademode_full", false )
	Engine.SetDvarInt( "recommended_gameskill", -1 )
	Engine.ExecNow( "profile_menuDvarsSetup" )
	Engine.Exec( "profile_difficultyLoad" )
	if f81_arg1.menuIndex == nil then
		f81_arg1 = LUI.LevelSelect.FindActData( f81_arg0.type )
	end
	f0_local9 = f81_arg1.menuIndex
	local f81_local0 = Engine.Localize( "@MENU_MISSION_SELECT_CAPS" )
	if not Engine.IsConsoleGame() then
		local f81_local1 = Engine.IsGamepadEnabled()
	end
	local f81_local2 = f81_arg1.previousActMenu and WrapperTabEvent( f81_arg1.previousActMenu ) or nil
	local f81_local3 = f81_arg1.nextActMenu and WrapperTabEvent( f81_arg1.nextActMenu ) or nil
	local f81_local4 = Engine.GetDvarBool( "arcademode" )
	if f81_local4 then
		f81_local0 = Engine.Localize( "@MENU_ARCADEMODE" )
	end
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	self.id = f0_local8 .. f81_arg1.actName
	self:makeFocusable()
	self.properties = {
		mapInfoList = f81_arg1.mapInfoList,
		previousActMenu = f81_arg1.previousActMenu,
		nextActMenu = f81_arg1.nextActMenu,
		title_loc_string = f81_local0
	}
	local f81_local6 = LUI.PreviousMenuName
	local f81_local7 = false
	if f81_local6 then
		f81_local7 = string.find( f81_local6, f0_local7 ) ~= nil
	end
	local f81_local8 = LUI.MenuTemplate.new( f81_arg0, {
		menu_title = f81_local0,
		uppercase_title = true,
		menu_top_indent = LUI.MenuTemplate.spMenuOffset + LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing,
		menu_list_divider_top_offset = -(LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing),
		menu_width = f0_local5 - f0_local4,
		skipAnim = f81_local7
	} )
	f81_local8:setClass( LUI.LevelSelect )
	f0_local17 = f81_local8
	local f81_local9 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.All )
	f81_local9.red = 0
	f81_local9.blue = 0
	f81_local9.green = 0
	f81_local9.alpha = 0
	
	local bgBlack = LUI.UIImage.new( f81_local9 )
	bgBlack.id = "black_bg_id"
	bgBlack:registerAnimationState( "BlackScreen", {
		alpha = 1
	} )
	bgBlack:registerAnimationState( "Faded", {
		alpha = 0
	} )
	self:addElement( bgBlack )
	self.bgBlack = bgBlack
	
	if f81_local4 then
		f81_local8:SetBreadCrumb( "" )
	end
	f0_local22[#f0_local22 + 1] = TryShowOverwriteWarning
	f0_local22[#f0_local22 + 1] = TryShowDifficulty
	f0_local22[#f0_local22 + 1] = TryShowSplitscreen
	f0_local22[#f0_local22 + 1] = TryShowRole
	f0_local22[#f0_local22 + 1] = LoadSpecificMap
	f81_local8:addElement( LUI.H1MenuTab.new( {
		title = function ( f83_arg0 )
			return f0_local29[GetRealActIndex( f83_arg0 )].loc_string
		end,
		top = LUI.MenuTemplate.spMenuOffset + LUI.MenuTemplate.ListTop,
		width = f0_local5 - f0_local4,
		tabCount = GetRealActCount( index ),
		clickTabBtnAction = ClickTabBtnAction,
		activeIndex = GetRelativeActIndex( f81_arg1.menuIndex ),
		underTabTextFunc = function ( f84_arg0 )
			local f84_local0 = f0_local29[GetRealActIndex( f84_arg0 )].tab_string
			if not f84_local0 then
				f84_local0 = f0_local29[GetRealActIndex( f84_arg0 )].loc_string
			end
			return f84_local0
		end,
		isTabLockedfunc = function ( f82_arg0 )
			return f0_local29[GetRealActIndex( f82_arg0 )].locked
		end,
		previousDisabled = f81_arg1.previousActMenu == nil,
		nextDisabled = f81_arg1.nextActMenu == nil,
		enableRightLeftNavigation = true,
		skipChangeTab = true,
		exclusiveController = f81_local8.exclusiveController
	} ) )
	f81_local8:AddLevelListButtons( f81_arg1.mapInfoList )
	f81_local8:registerEventHandler( "menu_create", MenuCreate )
	if not f81_local4 and not Engine.GetDvarBool( "profileMenuOption_hasUnlockedAll_SP" ) and not LUI.LevelSelect.IsAllLevelCompleted() then
		local f81_local11 = LUI.UIBindButton.new()
		f81_local11.id = "bindbutton"
		f81_local11:registerEventHandler( "gamepad_button", genericAction )
		self:addElement( f81_local11 )
	end
	f81_local8:AddLocationInfoWindow( {
		skipAnim = f81_local7
	} )
	f81_local8:AddBackButton( backButtonHandler )
	f81_local8:registerEventHandler( "menu_close", function ( element, event )
		local f85_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( element )
		f85_local0.currentLevelNumber = nil
	end )
	self:addElement( f81_local8 )
	CoD.InitializeCheat( f81_local8, function ( f86_arg0, f86_arg1 )
		LUI.LevelSelect.UpdateLockWithDVar()
		InitMapInfos()
		local f86_local0 = LUI.LevelSelect.FirstCampaignMenuName
		if Engine.GetDvarBool( "specialops" ) then
			f86_local0 = LUI.LevelSelect.FirstSpecopsMenuName
		end
		LUI.FlowManager.RequestAddMenu( nil, f86_local0, true, f86_arg1.controller, true, LUI.LevelSelect.FindActData( f86_local0 ), {
			reload = true
		} )
	end )
	if CoD.AllowUnlockAllInShip then
		DisplayUnlockAllFooterPrompt( f81_local8, Engine.GetDvarBool( "profileMenuOption_hasUnlockedAll_SP" ) )
	end
	return self
end

for f0_local38 = 1, #f0_local29, 1 do
	LUI.MenuBuilder.registerType( f0_local7 .. f0_local29[f0_local38].actName, LUI.LevelSelect.new )
end
LockTable( _M )
