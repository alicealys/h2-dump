local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.IntelMenu = InheritFrom( LUI.MenuTemplate )
LUI.IntelMenu.MaxIntel = 64
LUI.IntelMenu.TotalIntelsH2 = 45
LUI.IntelMenu.CurrentIntelCount = 0
LUI.IntelMenu.LastIntelCount = 0
LUI.IntelMenu.ActiveTypeIndex = 1
LUI.IntelMenu.LowestIntelCount = 3
f0_local0 = "intel_menu_"
f0_local1 = {
	{
		tabName = "scenario",
		tabDisplayName = "@MENU_CHEATS_TAB_SCENARIO",
		tabIndex = 1,
		cheats = {
			{
				dvar = "sf_use_martyr_mode",
				name = "@MENU_CHEATS_NAME_MARTYR",
				desc = "@MENU_CHEATS_DESC_MARTYR",
				descExplanation = "@MENU_CHEATS_DESC_EXPLANATION_MARTYR",
				lockedDesc = "@MENU_CHEATS_UNLOCK_MARTYR",
				intelCount = 7
			},
			{
				dvar = "sf_use_precision_mode",
				name = "@MENU_CHEATS_NAME_PRECISION",
				desc = "@MENU_CHEATS_DESC_PRECISION",
				descExplanation = "@MENU_CHEATS_DESC_EXPLANATION_PRECISION",
				lockedDesc = "@MENU_CHEATS_UNLOCK_PRECISION",
				intelCount = 13
			},
			{
				dvar = "sf_use_greenberet_mode",
				name = "@MENU_CHEATS_NAME_GREEN_BERET",
				desc = "@MENU_CHEATS_DESC_GREEN_BERET",
				descExplanation = "@MENU_CHEATS_DESC_EXPLANATION_GREEN_BERET",
				lockedDesc = "@MENU_CHEATS_UNLOCK_GREEN_BERET",
				intelCount = 18,
				exclusiveCheats = {
					"sf_use_slowmo"
				}
			},
			{
				dvar = "sf_use_fortitude_mode",
				name = "@MENU_CHEATS_NAME_FORTITUDE",
				desc = "@MENU_CHEATS_DESC_FORTITUDE",
				descExplanation = "@MENU_CHEATS_DESC_EXPLANATION_FORTITUDE",
				lockedDesc = "@MENU_CHEATS_UNLOCK_FORTITUDE",
				intelCount = 22
			},
			{
				dvar = "sf_use_desperation_mode",
				name = "@MENU_CHEATS_NAME_DESPERATION",
				desc = "@MENU_CHEATS_DESC_DESPERATION",
				descExplanation = "@MENU_CHEATS_DESC_EXPLANATION_DESPERATION",
				lockedDesc = "@MENU_CHEATS_UNLOCK_DESPERATION",
				intelCount = 29
			},
			{
				dvar = "sf_use_polterghost_mode",
				name = "@MENU_CHEATS_NAME_POLTERGHOST",
				desc = "@MENU_CHEATS_DESC_POLTERGHOST",
				descExplanation = "@MENU_CHEATS_DESC_EXPLANATION_POLTERGHOST",
				lockedDesc = "@MENU_CHEATS_UNLOCK_POLTERGHOST",
				intelCount = 33,
				exclusiveCheats = {
					"sf_use_wolf_mode"
				}
			},
			{
				dvar = "sf_use_attraction_mode",
				name = "@MENU_CHEATS_NAME_ATTRACTION",
				desc = "@MENU_CHEATS_DESC_ATTRACTION",
				descExplanation = "@MENU_CHEATS_DESC_EXPLANATION_ATTRACTION",
				lockedDesc = "@MENU_CHEATS_UNLOCK_ATTRACTION",
				intelCount = 38
			},
			{
				dvar = "sf_use_starvation_mode",
				name = "@MENU_CHEATS_NAME_STARVATION",
				desc = "@MENU_CHEATS_DESC_STARVATION",
				descExplanation = "@MENU_CHEATS_DESC_EXPLANATION_STARVATION",
				lockedDesc = "@MENU_CHEATS_UNLOCK_STARVATION",
				intelCount = 43,
				exclusiveCheats = {
					"sf_use_ignoreammo"
				}
			}
		}
	},
	{
		tabName = "cheat",
		tabDisplayName = "@MENU_CHEATS_TAB_CHEAT",
		tabIndex = 2,
		cheats = {
			{
				dvar = "sf_use_pineapple_mode",
				name = "@MENU_CHEATS_NAME_PINEAPPLE",
				desc = "@MENU_CHEATS_DESC_PINEAPPLE",
				lockedDesc = "@MENU_CHEATS_UNLOCK_PINEAPPLE",
				intelCount = 5
			},
			{
				dvar = "sf_use_football_mode",
				name = "@MENU_CHEATS_NAME_FOOTBALL",
				desc = "@MENU_CHEATS_DESC_FOOTBALL",
				lockedDesc = "@MENU_CHEATS_UNLOCK_FOOTBALL",
				intelCount = 9
			},
			{
				dvar = "sf_use_tire_explosion",
				name = "@MENU_CHEATS_NAME_TIRE_EXPLOSION",
				desc = "@MENU_CHEATS_DESC_TIRE_EXPLOSION",
				lockedDesc = "@MENU_CHEATS_UNLOCK_TIRE_EXPLOSION",
				intelCount = 11
			},
			{
				dvar = "sf_use_clustergrenade",
				name = "@MENU_CHEATS_NAME_CLUSTERGRENADE",
				desc = "@MENU_CHEATS_DESC_CLUSTERGRENADE",
				lockedDesc = "@MENU_CHEATS_UNLOCK_CLUSTERGRENADE",
				intelCount = 16
			},
			{
				dvar = "sf_use_pomegrenade_mode",
				name = "@MENU_CHEATS_NAME_POMEGRENADE",
				desc = "@MENU_CHEATS_DESC_POMEGRENADE",
				lockedDesc = "@MENU_CHEATS_UNLOCK_POMEGRENADE",
				intelCount = 20
			},
			{
				dvar = "sf_use_pinata_mode",
				name = "@MENU_CHEATS_NAME_PINATA",
				desc = "@MENU_CHEATS_DESC_PINATA",
				lockedDesc = "@MENU_CHEATS_UNLOCK_PINATA",
				intelCount = 24
			},
			{
				dvar = "sf_use_wolf_mode",
				name = "@MENU_CHEATS_NAME_WOLF",
				desc = "@MENU_CHEATS_DESC_WOLF",
				lockedDesc = "@MENU_CHEATS_UNLOCK_WOLF",
				intelCount = 27,
				exclusiveCheats = {
					"sf_use_polterghost_mode"
				}
			},
			{
				dvar = "sf_use_slowmo",
				name = "@MENU_CHEATS_NAME_SLOWMO",
				desc = "@MENU_CHEATS_DESC_SLOWMO",
				descExplanation = "@MENU_CHEATS_DESC_EXPLANATION_SLOWMO",
				lockedDesc = "@MENU_CHEATS_UNLOCK_SLOWMO",
				intelCount = 36,
				exclusiveCheats = {
					"sf_use_greenberet_mode",
					"sf_use_chaplin"
				}
			},
			{
				dvar = "sf_use_ragdoll_mode",
				name = "@MENU_CHEATS_NAME_RAGDOLL",
				desc = "@MENU_CHEATS_DESC_RAGDOLL",
				lockedDesc = "@MENU_CHEATS_UNLOCK_RAGDOLL",
				intelCount = 40,
				requireRagdoll = true
			},
			{
				dvar = "sf_use_ignoreammo",
				name = "@MENU_CHEATS_NAME_IGNOREMAMMO",
				desc = "@MENU_CHEATS_DESC_IGNOREMAMMO",
				lockedDesc = "@MENU_CHEATS_UNLOCK_IGNOREMAMMO",
				intelCount = 45,
				exclusiveCheats = {
					"sf_use_starvation_mode"
				}
			}
		}
	},
	{
		tabName = "visual",
		tabDisplayName = "@MENU_CHEATS_TAB_VISUAL",
		tabIndex = 3,
		cheats = {
			{
				dvar = "sf_use_bw",
				name = "@MENU_CHEATS_NAME_BW",
				desc = "@MENU_CHEATS_DESC_BW",
				lockedDesc = "@MENU_CHEATS_UNLOCK_BW",
				intelCount = 3,
				exclusiveCheats = {
					"sf_use_chaplin",
					"sf_use_edge_mode"
				}
			},
			{
				dvar = "sf_use_edge_mode",
				name = "@MENU_CHEATS_NAME_EDGE",
				desc = "@MENU_CHEATS_DESC_EDGE",
				lockedDesc = "@MENU_CHEATS_UNLOCK_EDGE",
				intelCount = 14,
				exclusiveCheats = {
					"sf_use_chaplin",
					"sf_use_bw"
				}
			},
			{
				dvar = "sf_use_chaplin",
				name = "@MENU_CHEATS_NAME_CHAPLIN",
				desc = "@MENU_CHEATS_DESC_CHAPLIN",
				lockedDesc = "@MENU_CHEATS_UNLOCK_CHAPLIN",
				intelCount = 31,
				exclusiveCheats = {
					"sf_use_slowmo",
					"sf_use_bw",
					"sf_use_edge_mode"
				}
			}
		}
	}
}
LUI.IntelMenu.ActivateExclusiveCheats = function ( f1_arg0, f1_arg1 )
	for f1_local3, f1_local4 in ipairs( f0_local1[f1_arg0].cheats[f1_arg1].exclusiveCheats ) do
		Engine.SetDvarString( f1_local4, "0" )
	end
	Engine.SetDvarString( f0_local1[f1_arg0].cheats[f1_arg1].dvar, "1" )
	f1_local0 = LUI.FlowManager.GetTopOpenAndVisibleMenu()
	f1_local0.list:processEvent( {
		name = "content_refresh"
	} )
end

LUI.IntelMenu.HandleActivateExclusiveCheats = function ( f2_arg0, f2_arg1, f2_arg2 )
	if f0_local1[f2_arg1].cheats[f2_arg2].exclusiveCheats then
		local f2_local0 = {}
		for f2_local4, f2_local5 in ipairs( f0_local1[f2_arg1].cheats[f2_arg2].exclusiveCheatsIndices ) do
			if Engine.GetDvarString( f0_local1[f2_local5[1]].cheats[f2_local5[2]].dvar ) == "1" then
				f2_local0[#f2_local0 + 1] = f0_local1[f2_local5[1]].cheats[f2_local5[2]].name
			end
		end
		if #f2_local0 > 0 then
			f2_local1 = Engine.Localize( "@MENU_CHEAT_EXCLUSION" ) .. "\n"
			for f2_local5, f2_local6 in ipairs( f2_local0 ) do
				f2_local1 = f2_local1 .. "\n" .. Engine.Localize( f2_local6 )
			end
			LUI.FlowManager.RequestPopupMenu( nil, "reset_exclusive_cheats", true, f2_arg0.controller, false, {
				acceptFunc = LUI.IntelMenu.ActivateExclusiveCheats,
				cheatTypeIndex = f2_arg1,
				cheatIndex = f2_arg2,
				message = f2_local1
			} )
			return false
		end
		LUI.IntelMenu.ActivateExclusiveCheats( f2_arg1, f2_arg2 )
	end
	return true
end

LUI.IntelMenu.RecalculateIntelCount = function ()
	if CoD.AllowUnlockAllInShip and Engine.GetDvarBool( "profileMenuOption_hasUnlockedAll_SP" ) then
		LUI.IntelMenu.CurrentIntelCount = LUI.IntelMenu.MaxIntel
		return 
	end
	local f3_local0 = 0
	for f3_local1 = 1, LUI.IntelMenu.MaxIntel, 1 do
		if Engine.GetPlayerIntelIsFound( f3_local1 ) then
			f3_local0 = f3_local0 + 1
		end
	end
	LUI.IntelMenu.CurrentIntelCount = f3_local0
end

LUI.IntelMenu.TurnOffAllCheats = function ()
	for f4_local6, f4_local7 in ipairs( f0_local1 ) do
		for f4_local3, f4_local4 in ipairs( f4_local7.cheats ) do
			Engine.SetDvarBool( f4_local4.dvar, false )
		end
	end
	f4_local0 = LUI.FlowManager.GetTopOpenAndVisibleMenu()
	if f4_local0 and f4_local0.list then
		f4_local0.list:processEvent( {
			name = "content_refresh"
		} )
	end
end

LUI.IntelMenu.CheckForNew = function ()
	LUI.IntelMenu.RecalculateIntelCount()
	local f5_local0 = Engine.GetProfileData( "lastVisitedCheatItemCount", Engine.GetControllerForLocalClient( 0 ) )
	local f5_local1 = 0
	for f5_local8, f5_local9 in ipairs( f0_local1 ) do
		for f5_local5, f5_local6 in ipairs( f5_local9.cheats ) do
			f5_local6.cheatIndex = f5_local1
			if f5_local0 < f5_local6.intelCount and f5_local6.intelCount <= LUI.IntelMenu.CurrentIntelCount then
				Engine.SetProfileBitfieldData( "cheatNewStateBit", f5_local6.cheatIndex, "1" )
			end
			f5_local1 = f5_local1 + 1
		end
	end
	if LUI.IntelMenu.CurrentIntelCount ~= f5_local0 then
		Engine.SetProfileData( "lastVisitedCheatItemCount", LUI.IntelMenu.CurrentIntelCount, Engine.GetControllerForLocalClient( 0 ) )
	end
end

LUI.IntelMenu.UpdateAndCheckNewState = function ()
	LUI.IntelMenu.CheckForNew()
	for f6_local3, f6_local4 in ipairs( f0_local1 ) do
		if typeHasAnyNew( f6_local4 ) then
			return true
		end
	end
	return false
end

f0_local2 = function ()
	if Engine.InFrontend() then
		return LUI.LevelSelect.ProgressionEnabled()
	else
		local f7_local0
		if Engine.IsDevelopmentBuild() or Engine.GetDvarBool( "mis_cheat" ) then
			f7_local0 = not Engine.GetDvarBool( "ui_cheat_unlock_all_mission" )
		else
			f7_local0 = true
		end
	end
	return f7_local0
end

local f0_local3 = function ()
	return CoD.IsCampaignCompleted()
end

function MenuCreate( f9_arg0, f9_arg1 )
	local f9_local0 = f9_arg0.list.buttonCount > 0
	assert( f9_local0, "Requires at least one button to select and update level info" )
	if f9_local0 then
		local f9_local1 = f9_arg0.list:getFirstChild()
		f9_local1:processEvent( {
			name = "button_over"
		} )
	end
end

function ClickTabBtnAction( f10_arg0, f10_arg1, f10_arg2 )
	LUI.FlowManager.RequestAddMenu( f10_arg0, "intel_menu_" .. f0_local1[f10_arg2].tabName, true, f10_arg1.controller, true, f0_local1[f10_arg2] )
	CoD.PlayEventSound( CoD.SFX.H1TabChange, 10 )
end

function debugLessIntel( f11_arg0, f11_arg1 )
	LUI.IntelMenu.CurrentIntelCount = math.max( LUI.IntelMenu.CurrentIntelCount - 1, 0 )
end

function debugMoreIntel( f12_arg0, f12_arg1 )
	LUI.IntelMenu.CurrentIntelCount = math.min( LUI.IntelMenu.CurrentIntelCount + 1, 64 )
end

function debugResetLastVisited( f13_arg0, f13_arg1 )
	Engine.SetProfileData( "lastVisitedCheatItemCount", 0, Engine.GetControllerForLocalClient( 0 ) )
end

function debugResetAllNewFlags( f14_arg0, f14_arg1 )
	for f14_local6, f14_local7 in pairs( f0_local1 ) do
		for f14_local3, f14_local4 in pairs( f14_local7.cheats ) do
			Engine.SetProfileBitfieldData( "cheatNewStateBit", f14_local4.cheatIndex, "0" )
		end
	end
end

function typeHasAnyNew( f15_arg0 )
	for f15_local3, f15_local4 in ipairs( f15_arg0.cheats ) do
		if Engine.GetProfileBitfieldData( "cheatNewStateBit", f15_local4.cheatIndex ) == "1" then
			return true
		end
	end
	return false
end

function intel_menu_create( f16_arg0, f16_arg1 )
	local f16_local0 = GenericMenuDims.menu_right_standard + 150 - GenericMenuDims.menu_left
	local f16_local1 = false
	if LUI.PreviousMenuName then
		f16_local1 = string.find( LUI.PreviousMenuName, f0_local0 ) ~= nil
	end
	local f16_local2 = LUI.MenuTemplate.new( f16_arg0, {
		menu_title = Engine.ToUpperCase( Engine.Localize( "@MENU_INTEL" ) ),
		menu_top_indent = LUI.MenuTemplate.spMenuOffset + LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing,
		menu_width = f16_local0,
		skipAnim = f16_local1,
		showTopRightSmallBar = true
	} )
	if Engine.IsDevelopmentBuild() then
		local self = LUI.UIBindButton.new()
		self.id = "boot_hdr_bind_btn_id"
		self.handlePrimary = true
		f16_local2:addElement( self )
		self:registerEventHandler( "button_left_trigger", debugLessIntel )
		self:registerEventHandler( "button_right_trigger", debugMoreIntel )
		self:registerEventHandler( "button_start", debugResetLastVisited )
		self:registerEventHandler( "button_r3", debugResetAllNewFlags )
	end
	if f16_arg1.tabIndex then
		LUI.IntelMenu.ActiveTypeIndex = f16_arg1.tabIndex
	else
		LUI.IntelMenu.ActiveTypeIndex = 1
	end
	local self = nil
	if Engine.InFrontend() then
		self = LUI.LevelSelect.IsAllLevelCompleted()
	elseif isIntelCheatsAllowed() then
		self = f0_local3()
	else
		self = false
	end
	LUI.IntelMenu.CheckForNew()
	local f16_local4 = LUI.H1MenuTab.new( {
		title = function ( f17_arg0 )
			return f0_local1[f17_arg0].tabDisplayName
		end,
		top = LUI.MenuTemplate.spMenuOffset + LUI.MenuTemplate.ListTop,
		width = f16_local0,
		tabCount = 3,
		clickTabBtnAction = ClickTabBtnAction,
		activeIndex = LUI.IntelMenu.ActiveTypeIndex,
		underTabTextFunc = function ( f18_arg0 )
			return f0_local1[f18_arg0].tabDisplayName
		end,
		tabHasNewFunc = function ( f19_arg0 )
			return typeHasAnyNew( f0_local1[f19_arg0] )
		end,
		isTabLockedfunc = false,
		previousDisabled = false,
		nextDisabled = false,
		skipChangeTab = true,
		exclusiveController = f16_local2.exclusiveController
	} )
	for f16_local24, f16_local25 in pairs( f0_local1[LUI.IntelMenu.ActiveTypeIndex].cheats ) do
		if f16_local25.exclusiveCheats then
			f16_local25.exclusiveCheatsIndices = {}
			for f16_local19, f16_local20 in ipairs( f0_local1 ) do
				for f16_local14, f16_local15 in ipairs( f16_local20.cheats ) do
					for f16_local11, f16_local12 in ipairs( f16_local25.exclusiveCheats ) do
						if f16_local15.dvar == f16_local12 then
							f16_local25.exclusiveCheatsIndices[#f16_local25.exclusiveCheatsIndices + 1] = {
								f16_local19,
								f16_local14
							}
						end
					end
				end
			end
		end
		if Engine.GetDvarString( f16_local25.dvar ) == nil then
			Engine.SetDvarString( f16_local25.dvar, "0", true )
		end
		if f0_local2() then
			f16_local25.locked = f16_local25.intelCount > LUI.IntelMenu.CurrentIntelCount
		else
			f16_local25.locked = false
		end
		local f16_local8 = nil
		if self and not f16_local25.locked then
			f16_local8 = f16_local25.name
		else
			if f16_local25.locked then
				local f16_local23 = "@MENU_BIND_KEY_PENDING"
			end
			f16_local8 = f16_local23 or f16_local25.name
		end
		local f16_local9 = "@MENU_ON"
		local f16_local10 = "@MENU_OFF"
		if not self or f16_local25.locked then
			f16_local9 = ""
			f16_local10 = ""
		end
		local f16_local19 = f16_local25.locked and f16_local25.lockedDesc or f16_local25.desc
		local f16_local20 = {
			{
				text = f16_local9,
				value = "1"
			},
			{
				text = f16_local10,
				value = "0"
			}
		}
		if f16_local25.requireRagdoll then
			if not Engine.GetDvarBool( "ragdoll_enable" ) and f16_local25.locked == false then
				f16_local25.ragdollLocked = true
				f16_local8 = f16_local25.name
				f16_local19 = Engine.Localize( "@MENU_CHEATS_DESC_RAGDOLL_PC" )
				if self then
					f16_local10 = "@MENU_OFF"
				end
				f16_local20 = {
					{
						text = f16_local10,
						value = "1"
					},
					{
						text = f16_local10,
						value = "0"
					}
				}
			else
				f16_local25.ragdollLocked = false
			end
		end
		f16_local25.showNew = Engine.GetProfileBitfieldData( "cheatNewStateBit", f16_local25.cheatIndex ) == "1"
		local f16_local16 = LUI.Options.CreateOptionButton( f16_local2, f16_local25.dvar, f16_local8, f16_local19, f16_local20, nil, function ()
			if self then
				local f20_local0 = f16_local25.locked
				if not f20_local0 then
					f20_local0 = f16_local25.ragdollLocked
				end
				return f20_local0
			else
				return true
			end
		end, function ()
			f16_local2.list:processEvent( {
				name = "content_refresh"
			} )
			local f21_local0 = Engine.GetLuiRoot()
			f21_local0:processEvent( {
				name = "cheats_changed"
			} )
		end, nil, {
			canShowLocked = f16_local25.locked,
			showLockOnDisable = f16_local25.locked,
			showNewSticker = f16_local25.showNew,
			arrowsMargin = 25,
			lockedExtraInfoString = f16_local25.locked and f16_local25.intelCount .. " " .. Engine.Localize( "@MENU_LOCKED_INTEL_BUTTON" ) or "",
			cheatType = LUI.IntelMenu.ActiveTypeIndex,
			cheatIndex = f16_local24
		} )
		f16_local16.properties.localCheatIndex = f16_local24
		f16_local16:addEventHandler( "button_over", OnLevelButtonOver )
		f16_local16:addEventHandler( "button_over_disable", OnLevelButtonOver )
	end
	buildTopInfoBox( f16_local2 )
	buildBottomInfoBox( f16_local2 )
	DisplayResetPrompt( f16_local2 )
	f16_local2:registerEventHandler( "menu_create", MenuCreate )
	f16_local5 = f16_local2:AddBackButton()
	LUI.Options.InitScrollingList( f16_local2.list, nil, {
		rows = 10
	} )
	f16_local2.tabsElement = f16_local4
	f16_local2:addElement( f16_local4 )
	if Engine.InFrontend() then
		CoD.InitializeCheat( f16_local2, function ( f22_arg0, f22_arg1 )
			LUI.FlowManager.RequestAddMenu( nil, "intel_menu_scenario", true, f22_arg1.controller, true, nil, {
				reload = true
			} )
		end )
	end
	return f16_local2
end

function OnLevelButtonOver( f23_arg0, f23_arg1 )
	local f23_local0 = LUI.FlowManager.GetTopOpenAndVisibleMenu()
	if f23_local0 ~= nil then
		updateInfoBox( f23_local0, f23_arg0.properties.localCheatIndex )
		Engine.SetProfileBitfieldData( "cheatNewStateBit", f0_local1[LUI.IntelMenu.ActiveTypeIndex].cheats[f23_arg0.properties.localCheatIndex].cheatIndex, "0" )
		LUI.NewSticker.Update( f23_arg0 )
		if not typeHasAnyNew( f0_local1[LUI.IntelMenu.ActiveTypeIndex] ) then
			LUI.H1MenuTab.RemoveNewState( f23_local0.tabsElement, LUI.IntelMenu.ActiveTypeIndex )
		end
	end
end

function OnLevelButtonOverLocked( f24_arg0, f24_arg1 )
	hideInfoBox( LUI.FlowManager.GetTopOpenAndVisibleMenu() )
end

function ResetAllCheatsPopup( f25_arg0, f25_arg1 )
	LUI.FlowManager.RequestPopupMenu( nil, "reset_all_cheats", true, f25_arg1.controller, false, {
		acceptFunc = LUI.IntelMenu.TurnOffAllCheats
	} )
end

function DisplayResetPrompt( f26_arg0 )
	if not (LUI.IntelMenu.LowestIntelCount > LUI.IntelMenu.CurrentIntelCount or not f0_local3()) or not f0_local2() then
		f26_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_alt2",
			helper_text = Engine.Localize( "@MENU_DISABLE_ALL_CHEATS" ),
			side = "right",
			clickable = true
		}, ResetAllCheatsPopup )
	end
end

function buildTopInfoBox( f27_arg0 )
	local f27_local0 = 60 * CoD.FullHDToHD
	local f27_local1 = 120 * CoD.FullHDToHD
	local f27_local2 = 450 * CoD.FullHDToHD
	local f27_local3 = 5 * CoD.FullHDToHD
	local f27_local4 = 24 * CoD.FullHDToHD
	local f27_local5 = 14
	local f27_local6 = 11
	local f27_local7 = CoD.TextSettings.BodyFont18.Font
	local f27_local8 = -f27_local3 + 5
	local f27_local9 = Engine.GetCurrentLanguage()
	if f27_local9 == CoD.Language.Russian or f27_local9 == CoD.Language.Russian_partial then
		f27_local6 = 12
	elseif f27_local9 == CoD.Language.Arabic or f27_local9 == CoD.Language.Korean or f27_local9 == CoD.Language.Japanese_full or f27_local9 == CoD.Language.Japanese_partial or f27_local9 == CoD.Language.Traditional_chinese or f27_local9 == CoD.Language.Simplified_chinese then
		f27_local6 = 13
	end
	local f27_local10 = f27_local3 + 4
	local f27_local11 = f27_local3 + f27_local4 + f27_local5
	local f27_local12 = -(f27_local3 + f27_local6)
	local self = LUI.UIElement.new( CoD.CreateState( -f27_local2, f27_local0, 0, f27_local0 + f27_local1, CoD.AnchorTypes.TopRight ) )
	self.id = "mainwindow_id"
	local f27_local14 = CoD.CreateState( -f27_local2, f27_local10, f27_local8, nil, CoD.AnchorTypes.TopRight )
	f27_local14.height = f27_local5
	f27_local14.alignment = LUI.Alignment.Right
	f27_local14.font = f27_local7
	f27_local14.color = Colors.h2.yellow
	local f27_local15 = LUI.UIText.new( f27_local14 )
	local f27_local16 = nil
	if Engine.IsRightToLeftLanguage() then
		f27_local16 = LUI.IntelMenu.TotalIntelsH2 .. "/" .. LUI.IntelMenu.CurrentIntelCount .. " " .. Engine.Localize( "@LUA_MENU_INTELS_FOUND" )
	else
		f27_local16 = Engine.Localize( "@LUA_MENU_INTELS_FOUND" ) .. " " .. LUI.IntelMenu.CurrentIntelCount .. "/" .. LUI.IntelMenu.TotalIntelsH2
	end
	f27_local15.id = "title_id"
	f27_local15:setTextStyle( CoD.TextStyle.ForceUpperCase )
	f27_local15:setText( f27_local16 )
	self:addElement( f27_local15 )
	if isIntelCheatsAllowed() then
		local f27_local17 = f0_local3()
		if LUI.IntelMenu.CurrentIntelCount < LUI.IntelMenu.TotalIntelsH2 and f27_local17 then
			local f27_local18, f27_local19 = GetTextDimensions( Engine.Localize( "@LUA_MENU_INTELS_COLLECT" ), f27_local7, f27_local6, f27_local2 - f27_local3 )
			local f27_local20
			if f27_local6 < f27_local19 then
				f27_local20 = -4
				if not f27_local20 then
				
				else
					local f27_local21 = CoD.CreateState( -f27_local2, f27_local11 + f27_local20, f27_local8, nil, CoD.AnchorTypes.TopRight )
					f27_local21.height = f27_local6
					f27_local21.alignment = LUI.Alignment.Right
					f27_local21.font = f27_local7
					f27_local21.alpha = 1
					f27_local21.color = Colors.h1.light_grey
					local f27_local22 = LUI.UIText.new( f27_local21 )
					f27_local22.id = "instructions_id"
					f27_local22:setText( Engine.Localize( "@LUA_MENU_INTELS_COLLECT" ) )
					self:addElement( f27_local22 )
				end
			end
			f27_local20 = 2
		else
			f27_local12 = f27_local12 - 10
		end
		local f27_local18 = CoD.CreateState( -f27_local2, nil, f27_local8, f27_local12, CoD.AnchorTypes.BottomRight )
		f27_local18.height = f27_local6
		f27_local18.alignment = LUI.Alignment.Right
		f27_local18.font = f27_local7
		f27_local18.lineSpacingRatio = 0.2
		f27_local18.alpha = 1
		f27_local18.color = Colors.h1.light_grey
		local f27_local19 = LUI.UIText.new( f27_local18 )
		f27_local19.id = "enabling_id"
		if f27_local17 then
			if Engine.IsPS4() then
				f27_local19:setText( Engine.Localize( "@LUA_MENU_INTELS_AVAILABLE_PS4" ) )
			else
				f27_local19:setText( Engine.Localize( "@LUA_MENU_INTELS_AVAILABLE" ) )
			end
		else
			f27_local19:setText( Engine.Localize( "@LUA_MENU_INTELS_CAMPAIGN" ) )
		end
		self:addElement( f27_local19 )
	else
		local f27_local18 = CoD.CreateState( -f27_local2, nil, f27_local8, f27_local12 - 10, CoD.AnchorTypes.BottomRight )
		f27_local18.height = f27_local6
		f27_local18.alignment = LUI.Alignment.Right
		f27_local18.font = f27_local7
		f27_local18.lineSpacingRatio = 0.2
		f27_local18.alpha = 1
		f27_local18.color = Colors.h1.light_grey
		local f27_local19 = LUI.UIText.new( f27_local18 )
		f27_local19.id = "notAvail_id"
		f27_local19:setText( Engine.Localize( "@LUA_MENU_INTEL_SELECT_MESSAGE_NOTAVAILABLE" ) )
		self:addElement( f27_local19 )
	end
	f27_arg0:addElement( self )
end

function buildBottomInfoBox( f28_arg0 )
	local f28_local0 = 900 * CoD.FullHDToHD - 120 - 10 - 30 + -9 - 28
	local f28_local1 = CoD.TextSettings.Font18
	local f28_local2 = LUI.MenuBuilder.BuildRegisteredType( "InfoBox", {
		skipAnim = true,
		noRightPane = true
	} )
	f28_arg0:addElement( f28_local2 )
	local f28_local3 = CoD.CreateState( nil, nil, 0, 0, CoD.AnchorTypes.BottomRight )
	f28_local3.font = f28_local1.Font
	f28_local3.height = f28_local1.Height
	f28_local3.color = Colors.dark_grey
	local self = LUI.UIText.new( f28_local3 )
	f28_local2.bottomRightElements:addElement( self )
	f28_local2.bottomRightText = self
	local f28_local5 = CoD.CreateState( 0, nil, nil, 0, CoD.AnchorTypes.BottomLeft )
	f28_local5.width = f28_local0
	f28_local5.font = f28_local1.Font
	f28_local5.height = f28_local1.Height
	f28_local5.color = Colors.h2.yellow
	f28_local5.alignment = LUI.Alignment.Left
	f28_local5.verticalAlignment = LUI.VerticalAlignment.Bottom
	local f28_local6 = LUI.UIText.new( f28_local5 )
	f28_local6.setDescription = function ( f29_arg0, f29_arg1 )
		local f29_local0 = -11
		local f29_local1 = Engine.GetCurrentLanguage()
		local f29_local2 = CoD.TextSettings.Font16
		if f29_local1 == CoD.Language.Russian or f29_local1 == CoD.Language.Arabic or f29_local1 == CoD.Language.Korean or f29_local1 == CoD.Language.Japanese_full or f29_local1 == CoD.Language.Japanese_partial or f29_local1 == CoD.Language.Traditional_chinese or f29_local1 == CoD.Language.Simplified_chinese then
			f29_local0 = -18
			f29_local2 = CoD.TextSettings.Font18
		end
		local f29_local3, f29_local4, f29_local5, f29_local6 = GetTextDimensions( f29_arg1, f29_local2.Font, f29_local2.Height )
		local f29_local7 = f29_local0 * math.floor( (f29_local5 - f29_local3) / f28_local0 )
		f29_arg0:setText( f29_arg1 )
		f29_arg0:registerAnimationState( "show", {
			alpha = 1,
			height = f29_local2.Height,
			top = f29_local7,
			topAnchor = true
		} )
		f29_arg0:animateToState( "show" )
	end
	
	f28_local2.bottomLeftElements:addElement( f28_local6 )
	f28_local2.descExplanationText = f28_local6
	f28_local2:drawCornerLines()
	f28_arg0.bottomInfoBox = f28_local2
	f28_arg0.bottomInfoBox.visible = true
	updateInfoBox( f28_arg0, 1 )
end

function showInfoBox( f30_arg0 )
	if not f30_arg0.bottomInfoBox.visible then
		f30_arg0.bottomInfoBox.visible = true
		f30_arg0.bottomInfoBox:animateToState( "default", 0 )
	end
end

function hideInfoBox( f31_arg0 )
	if f31_arg0.bottomInfoBox.visible then
		f31_arg0.bottomInfoBox.visible = false
		f31_arg0.bottomInfoBox:animateToState( "hide", 0 )
	end
end

function updateInfoBox( f32_arg0, f32_arg1 )
	local f32_local0 = f0_local1[LUI.IntelMenu.ActiveTypeIndex].cheats[f32_arg1]
	f32_arg0.bottomInfoBox.title:setText( Engine.Localize( f32_local0.name ) )
	f32_arg0.bottomInfoBox.description:setText( Engine.Localize( f32_local0.desc ) )
	if f32_local0.descExplanation then
		f32_arg0.bottomInfoBox.descExplanationText:setDescription( Engine.Localize( f32_local0.descExplanation ) )
	else
		f32_arg0.bottomInfoBox.descExplanationText:setDescription( "" )
	end
	if f32_local0.locked then
		hideInfoBox( f32_arg0 )
	else
		showInfoBox( f32_arg0 )
	end
	if Engine.GetProfileBitfieldData( "cheatNewStateBit", f32_local0.cheatIndex ) == "1" then
		f0_local1[LUI.IntelMenu.ActiveTypeIndex].cheats[f32_arg1].showNew = false
	end
end

for f0_local4 = 1, #f0_local1, 1 do
	LUI.MenuBuilder.registerType( f0_local0 .. f0_local1[f0_local4].tabName, intel_menu_create )
end
LockTable( _M )
