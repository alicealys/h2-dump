local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LevelInfoTable = {
	File = "sp/level_info.csv",
	Cols = {
		Ref = 0,
		Image = 1,
		Name = 2,
		Desc = 3,
		FactionImage = 4,
		MisionCompleteDesc = 5,
		MissionCompleteImage = 6,
		MissionCompleteMusic = 7
	}
}
function OnCreate( f1_arg0, f1_arg1 )
	local f1_local0 = nil
	if tonumber( Engine.GetProfileData( "sp_upgradePoints" ) ) > 0 then
		f1_local0 = LUI.GlowState.Orange
	end
	Engine.SetDvarInt( "cl_paused", 1 )
	Engine.SetDvarBool( "cl_cinematicUnpaused", true )
	local f1_local1 = "MENU_NEXT_MISSION"
	if f1_arg0.levelRef == "finale" then
		f1_local1 = "MENU_MAIN_MENU"
	end
	f1_arg0:processEvent( {
		name = "add_button_helper_text",
		button_ref = "button_action",
		helper_text = Engine.Localize( f1_local1 ),
		side = "right",
		clickable = true
	} )
	f1_arg0:processEvent( {
		name = "add_button_helper_text",
		button_ref = "button_alt1",
		helper_text = Engine.Localize( "UPGRADE_UPGRADES" ),
		side = "right",
		clickable = true,
		glow = f1_local0
	} )
	local f1_local2 = LUI.FlowManager.GetMenuScopedDataFromElement( f1_arg0 )
	f1_arg0:animateToState( "visible", f1_local2.enteredUpgradesScreen and 0 or 2000 )
end

function OnUpgradePressed( f2_arg0, f2_arg1 )
	local f2_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f2_arg0 )
	f2_local0.enteredUpgradesScreen = true
	LUI.FlowManager.RequestAddMenu( f2_arg0, "sp_upgrades_menu", true, f2_arg1.controller )
end

function OnExit( f3_arg0, f3_arg1 )
	Engine.SetDvarInt( "cl_paused", 0 )
	Engine.SetDvarBool( "cl_cinematicUnpaused", false )
	LUI.FlowManager.RequestLeaveMenu( f3_arg0, nil, true )
	Engine.Exec( "nextlevel" )
end

function OnFadeInFinished( f4_arg0, f4_arg1 )
	local f4_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f4_arg0 )
	f4_arg0.challengeWidget:startBarFillAnim( f4_local0.enteredUpgradesScreen and 0 or 1000 )
end

function UnusedPointsPopup( f5_arg0, f5_arg1, f5_arg2 )
	local f5_local0 = LUI.MenuBuilder.BuildRegisteredType( "generic_yesno_popup", {
		popup_title = Engine.Localize( "MENU_NOTICE" ),
		message_text = Engine.Localize( "UPGRADE_UNUSED_POINTS_CONFIRM_TEXT" ),
		yes_text = Engine.Localize( "LUA_MENU_YES" ),
		no_text = Engine.Localize( "UPGRADE_GO_TO_UPGRADES" ),
		yes_action = function ( f7_arg0, f7_arg1 )
			f7_arg0:dispatchEventToRoot( {
				name = "continue_with_unused_points"
			} )
		end,
		no_action = function ( f8_arg0, f8_arg1 )
			f8_arg0:dispatchEventToRoot( {
				name = "enter_upgrades_screen"
			} )
		end
	} )
	f5_local0.id = "unused_points_popup_id"
	return LUI.MenuBuilder.buildItems( f5_local0, {} )
end

function MissionCompleteMenu( f6_arg0, f6_arg1 )
	local f6_local0 = Engine.GetDvarString( "mapname" )
	local f6_local1 = Engine.TableLookup( LevelInfoTable.File, LevelInfoTable.Cols.Ref, f6_local0, LevelInfoTable.Cols.Name )
	local f6_local2 = Engine.TableLookup( LevelInfoTable.File, LevelInfoTable.Cols.Ref, f6_local0, LevelInfoTable.Cols.MissionCompleteImage )
	local f6_local3 = Engine.TableLookup( LevelInfoTable.File, LevelInfoTable.Cols.Ref, f6_local0, LevelInfoTable.Cols.MisionCompleteDesc )
	local f6_local4 = Engine.TableLookup( LevelInfoTable.File, LevelInfoTable.Cols.Ref, f6_local0, LevelInfoTable.Cols.FactionImage )
	local f6_local5 = 10
	local f6_local6 = 880
	local f6_local7 = 520
	local f6_local8 = 100
	local f6_local9 = LUI.MenuTemplate.new( f6_arg0, {
		menu_title = "LUA_MENU_AAR_CAPS",
		menu_alpha = 0
	} )
	f6_local9.id = "missioncomplete_root_id"
	f6_local9.levelRef = f6_local0
	f6_local9:registerAnimationState( "visible", {
		alpha = 1
	} )
	f6_local9:registerEventHandler( "menu_create", OnCreate )
	f6_local9:registerEventHandler( "continue_with_unused_points", OnExit )
	f6_local9:registerEventHandler( "enter_upgrades_screen", OnUpgradePressed )
	f6_local9:registerEventHandler( "transition_complete_visible", OnFadeInFinished )
	f6_local9:registerEventHandlerIfFree( "popup_active", function ( f9_arg0, f9_arg1 )
		f9_arg0.disabled = true
	end )
	f6_local9:registerEventHandlerIfFree( "popup_inactive", function ( f10_arg0, f10_arg1 )
		f10_arg0.disabled = false
	end )
	local self = LUI.UIElement.new( {
		worldBlur = 5
	} )
	self.id = "world_blur_id"
	self:setupWorldBlur()
	f6_local9:addElement( self )
	local self = LUI.UIElement.new( CoD.CreateState( 0, 45, f6_local6, 325, CoD.AnchorTypes.TopLeft ) )
	self.id = "levelInfoContainer_id"
	f6_local9:addElement( self )
	local f6_local12 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f6_local12.borderThickness = 1
	f6_local12.color = Colors.white
	f6_local12.depth = CoD.Depths.Default
	self:addElement( LUI.UIBorder.new( f6_local12 ) )
	f6_local12 = CoD.CreateState( 1, 1, 1, -1, CoD.AnchorTypes.All )
	f6_local12.material = RegisterMaterial( "white" )
	f6_local12.alpha = 0.1
	local self = LUI.UIImage.new( f6_local12 )
	self.id = "level_bg_id"
	self:addElement( self )
	f6_local12 = CoD.CreateState( f6_local5, 18, f6_local5 + f6_local7, -18, CoD.AnchorTypes.TopBottomLeft )
	f6_local12.material = RegisterMaterial( f6_local2 )
	local self = LUI.UIImage.new( f6_local12 )
	self.id = "level_image_id"
	self:addElement( self )
	local self = LUI.UIElement.new( CoD.CreateState( f6_local5 + f6_local7, 0, 0, 0, CoD.AnchorTypes.All ) )
	self.id = "right_pane_id"
	self:addElement( self )
	f6_local12 = CoD.CreateState( 10, 3, f6_local8, 92, CoD.AnchorTypes.TopLeft )
	f6_local12.material = RegisterMaterial( f6_local4 )
	local self = LUI.UIImage.new( f6_local12 )
	self.id = "mission_icon_id"
	self:addElement( self )
	f6_local12 = CoD.CreateState( f6_local8, 18, -f6_local5, 18 + CoD.TextSettings.TitleFontSmall.Height, CoD.AnchorTypes.TopLeftRight )
	f6_local12.font = CoD.TextSettings.TitleFontSmall.Font
	f6_local12.alignment = LUI.Alignment.Left
	local self = LUI.UIText.new( f6_local12 )
	self.id = "mission_complete_id"
	self:setText( Engine.Localize( "MENU_SP_MISSION_COMPLETE" ) )
	self:addElement( self )
	local f6_local18 = {
		CoD.TextSettings.TitleFont,
		CoD.TextSettings.TitleFontMediumLarge,
		CoD.TextSettings.TitleFontMedium
	}
	local f6_local19 = Engine.Localize( f6_local1 )
	local f6_local20 = CoD.LargestFontWithoutBreaks( f6_local19, f6_local6 - f6_local5 - f6_local5 + f6_local7 - f6_local8, f6_local18 )
	f6_local12 = CoD.CreateState( f6_local8, 38, -f6_local5, 38 + f6_local20.Height, CoD.AnchorTypes.TopLeftRight )
	f6_local12.font = f6_local20.Font
	f6_local12.alignment = LUI.Alignment.Left
	local self = LUI.UIText.new( f6_local12 )
	self.id = "level_name_id"
	self:setText( f6_local19 )
	self:addElement( self )
	f6_local12 = CoD.CreateState( f6_local5, 90, -f6_local5, 90 + CoD.TextSettings.BodyFontSmall.Height, CoD.AnchorTypes.TopLeftRight )
	f6_local12.font = CoD.TextSettings.BodyFontSmall.Font
	f6_local12.alignment = LUI.Alignment.Left
	local self = LUI.UIText.new( f6_local12 )
	self.id = "level_desc_id"
	self:setText( Engine.Localize( f6_local3 ) )
	self:addElement( self )
	local f6_local23 = LUI.ChallengesWidget.new( nil, {
		missionComplete = true
	} )
	f6_local23.id = "challenge_info_container_id"
	f6_local9.challengeWidget = f6_local23
	f6_local9:addElement( f6_local23 )
	LUI.MenuBuilder.BuildAddChild( f6_local9, {
		type = "UpgradePointsWidget",
		id = "upgrade_points_widget"
	} )
	f6_local9:registerEventHandler( "gamepad_button", function ( element, event )
		if element:handleGamepadButton( event ) then
			return true
		elseif element.m_ownerController ~= nil and element.m_ownerController ~= event.controller then
			DebugPrint( "Item Exclusive to controller " .. event.controller )
			return false
		elseif element.disabled then
			return false
		elseif event.down then
			if event.button == "primary" then
				local f11_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( element )
				if tonumber( Engine.GetProfileData( "sp_upgradePoints" ) ) > 0 and not f11_local0.enteredUpgradesScreen then
					LUI.FlowManager.RequestAddMenu( element, "UnusedPointsPopup", true, event.controller, false )
				else
					OnExit( element, event )
				end
				return true
			elseif event.button == "alt1" then
				OnUpgradePressed( element, event )
				return true
			end
		end
	end )
	LUI.MenuBuilder.BuildAddChild( f6_local9, {
		type = "button_helper_text_main",
		id = "mission_complete_helper_text_id"
	} )
	local f6_local24 = Engine.TableLookup( LevelInfoTable.File, LevelInfoTable.Cols.Ref, f6_local0, LevelInfoTable.Cols.MissionCompleteMusic )
	if f6_local24 and f6_local24 ~= "" then
		Engine.PlayMusic( f6_local24 )
	end
	Engine.CheckSPEntitlements()
	return f6_local9
end

LUI.MenuBuilder.registerType( "victoryscreen", MissionCompleteMenu )
LUI.MenuBuilder.registerPopupType( "UnusedPointsPopup", UnusedPointsPopup )
LockTable( _M )
