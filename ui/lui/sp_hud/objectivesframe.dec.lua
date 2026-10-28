local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.Objectives = InheritFrom( LUI.UIElement )
f0_local0 = 0.58
f0_local1 = 0.6
f0_local2 = 23
local f0_local3 = 0
local f0_local4 = 4
local f0_local5 = nil
local f0_local6 = PauseMenuAnimationSettings.MapGlitch.DurationIn / 7
local f0_local7 = {
	Styles = {
		Minimap = {
			Top = 155.66 - DesignGridDims.vert_gutter + f0_local3,
			Right = DesignGridDims.horz_gutter - 54.66,
			BackgroundWidth = 206,
			BackgroundHeight = 206,
			Width = 178,
			Height = 178
		},
		MapInfos = {
			Top = 6 + f0_local3,
			Right = DesignGridDims.horz_gutter - 71,
			Spacing = 20
		},
		ObjectiveBox = {
			Top = 118.66 - DesignGridDims.vert_gutter + f0_local3,
			Left = GenericMenuDims.menu_width_standard + 122
		},
		ObjectiveTitle = {
			Top = 7 + f0_local3,
			Left = 0,
			Width = 500
		},
		ObjectiveList = {
			Top = 38.16 + f0_local2 + f0_local3,
			Left = 19,
			Width = 500
		}
	}
}
function OnMiniMapBGCreate( f1_arg0, f1_arg1 )
	local f1_local0 = Engine.GetDvarBool( "compass" )
	if f1_local0 then
		f1_local0 = Engine.GetDvarBool( "hud_drawHud" )
	end
	if not f1_local0 then
		f1_arg0:animateToState( "hidden", 0 )
	end
end

function OnMiniMapCreate( f2_arg0, f2_arg1 )
	local f2_local0 = MBh.AnimateSequence( {
		{
			"hidden",
			0
		},
		{
			"hidden",
			PauseMenuAnimationSettings.Background.DelayIn + 1
		},
		{
			"default",
			PauseMenuAnimationSettings.Background.DurationIn,
			false,
			true
		}
	} )
	f2_local0( f2_arg0 )
end

function OnMiniMapOverlayCreate( f3_arg0, f3_arg1 )
	local f3_local0 = 33
	local f3_local1 = f3_arg0
	local f3_local2 = f3_arg0.animateInLoop
	local f3_local3 = {
		{
			"default",
			0,
			false,
			false
		},
		{
			"default",
			f3_local0,
			false,
			false
		},
		{
			"rot_90",
			0,
			false,
			false
		},
		{
			"rot_90",
			f3_local0,
			false,
			false
		},
		{
			"rot_180",
			0,
			false,
			false
		},
		{
			"rot_180",
			f3_local0,
			false,
			false
		},
		{
			"rot_270",
			0,
			false,
			false
		},
		{
			"rot_270",
			f3_local0,
			false,
			false
		},
		{
			"rot_180",
			0,
			false,
			false
		},
		{
			"rot_180",
			f3_local0,
			false,
			false
		},
		{
			"rot_270",
			0,
			false,
			false
		},
		{
			"rot_270",
			f3_local0,
			false,
			false
		},
		{
			"rot_90",
			0,
			false,
			false
		},
		{
			"rot_90",
			f3_local0,
			false,
			false
		},
		{
			"default",
			0,
			false,
			false
		},
		{
			"default",
			f3_local0,
			false,
			false
		},
		{
			"rot_90",
			0,
			false,
			false
		},
		{
			"rot_90",
			f3_local0,
			false,
			false
		},
		{
			"rot_270",
			0,
			false,
			false
		},
		{
			"rot_270",
			f3_local0,
			false,
			false
		},
		{
			"default",
			0,
			false,
			false
		},
		{
			"default",
			f3_local0,
			false,
			false
		},
		{
			"rot_90",
			0,
			false,
			false
		},
		{
			"rot_90",
			f3_local0,
			false,
			false
		},
		{
			"default",
			0,
			false,
			false
		},
		{
			"default",
			f3_local0,
			false,
			false
		},
		{
			"rot_180",
			0,
			false,
			false
		},
		{
			"rot_180",
			f3_local0,
			false,
			false
		},
		{
			"rot_270",
			0,
			false,
			false
		},
		{
			"rot_270",
			f3_local0,
			false,
			false
		},
		{
			"default",
			0,
			false,
			false
		},
		{
			"default",
			f3_local0,
			false,
			false
		},
		{
			"rot_270",
			0,
			false,
			false
		},
		{
			"rot_270",
			f3_local0,
			false,
			false
		},
		{
			"rot_90",
			0,
			false,
			false
		},
		{
			"rot_90",
			f3_local0,
			false,
			false
		},
		{
			"default",
			0,
			false,
			false
		},
		{
			"default",
			f3_local0,
			false,
			false
		},
		{
			"rot_180",
			0,
			false,
			false
		},
		{
			"rot_180",
			f3_local0,
			false,
			false
		},
		{
			"default",
			0,
			false,
			false
		},
		{
			"default",
			f3_local0,
			false,
			false
		},
		{
			"rot_180",
			0,
			false,
			false
		},
		{
			"rot_180",
			f3_local0,
			false,
			false
		},
		{
			"rot_270",
			0,
			false,
			false
		},
		{
			"rot_270",
			f3_local0,
			false,
			false
		},
		{
			"rot_90",
			0,
			false,
			false
		},
		{
			"rot_90",
			f3_local0,
			false,
			false
		},
		{
			"rot_180",
			0,
			false,
			false
		},
		{
			"rot_180",
			f3_local0,
			false,
			false
		}
	}
	local f3_local4 = {
		"rot_270",
		0,
		false,
		false
	}
	local f3_local5 = {
		"rot_270",
		f3_local0,
		false,
		false
	}
	local f3_local6 = {
		"rot_180",
		0,
		false,
		false
	}
	local f3_local7 = {
		"rot_180",
		f3_local0,
		false,
		false
	}
	local f3_local8 = {
		"rot_90",
		0,
		false,
		false
	}
	local f3_local9 = {
		"rot_90",
		f3_local0,
		false,
		false
	}
	local f3_local10 = {
		"rot_180",
		0,
		false,
		false
	}
	local f3_local11 = {
		"rot_180",
		f3_local0,
		false,
		false
	}
	local f3_local12 = {
		"default",
		0,
		false,
		false
	}
	local f3_local13 = {
		"default",
		f3_local0,
		false,
		false
	}
	local f3_local14 = {
		"rot_90",
		0,
		false,
		false
	}
	local f3_local15 = {
		"rot_90",
		f3_local0,
		false,
		false
	}
	local f3_local16 = {
		"rot_270",
		0,
		false,
		false
	}
	local f3_local17 = {
		"rot_270",
		f3_local0,
		false,
		false
	}
	f3_local3[33] = f3_local4
	f3_local3[34] = f3_local5
	f3_local3[35] = f3_local6
	f3_local3[36] = f3_local7
	f3_local3[37] = f3_local8
	f3_local3[38] = f3_local9
	f3_local3[39] = f3_local10
	f3_local3[40] = f3_local11
	f3_local3[41] = f3_local12
	f3_local3[42] = f3_local13
	f3_local3[43] = f3_local14
	f3_local3[44] = f3_local15
	f3_local3[45] = f3_local16
	f3_local3[46] = f3_local17
	f3_local2( f3_local1, f3_local3, nil, nil, true )
end

function OnMiniMapGlitchCreate( f4_arg0, f4_arg1 )
	f4_arg0:animateInLoop( {
		{
			"default",
			0,
			false,
			false
		},
		{
			"wait",
			PauseMenuAnimationSettings.MapGlitch.DelayIn,
			false,
			false
		},
		{
			"opacity50_rot0",
			f0_local6,
			false,
			false
		},
		{
			"opacity50_rot180",
			0,
			false,
			false
		},
		{
			"opacity50_rot180",
			f0_local6,
			false,
			false
		},
		{
			"opacity50_rot0",
			0,
			false,
			false
		},
		{
			"opacity50_rot0",
			f0_local6,
			false,
			false
		},
		{
			"opacity50_rot180",
			0,
			false,
			false
		},
		{
			"opacity50_rot180",
			f0_local6,
			false,
			false
		},
		{
			"opacity50_rot0",
			0,
			false,
			false
		},
		{
			"opacity50_rot0",
			f0_local6,
			false,
			false
		},
		{
			"opacity50_rot180",
			0,
			false,
			false
		},
		{
			"opacity50_rot180",
			f0_local6,
			false,
			false
		}
	}, nil, nil, true, true )
end

function EMPOverlayAnimDone( f5_arg0, f5_arg1 )
	f5_arg0:animateToState( "image" .. string.sub( f5_arg1.name, -1 ) + math.random( 0, f0_local4 - 2 ) % f0_local4 + 1, 100 )
end

function ChangeJamState( f6_arg0, f6_arg1 )
	if f6_arg1.active then
		if not f6_arg0.animationsAreInit then
			f6_arg0.animationsAreInit = true
			for f6_local0 = 1, f0_local4, 1 do
				f6_arg0:registerAnimationState( "image" .. f6_local0, {
					material = RegisterMaterial( "h2_ui_compass_map_dcemp_static_" .. f6_local0 ),
					alpha = 1
				} )
				f6_arg0:registerEventHandler( LUI.FormatAnimStateFinishEvent( "image" .. f6_local0 ), EMPOverlayAnimDone )
			end
		end
		f6_arg0:animateToState( "image" .. math.random( 1, f0_local4 ), 100 )
	else
		f6_arg0:animateToState( "dafault", 0 )
	end
end

function AddMiniMap( menu, controller )
	f0_local5 = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	f0_local5:registerAnimationState( "default", {
		alpha = 1
	} )
	f0_local5:registerAnimationState( "hidden", {
		alpha = 0
	} )
	menu.miniMapContainer = f0_local5
	menu:addElement( f0_local5 )
	local f7_local0 = CoD.CreateState( nil, f0_local7.Styles.Minimap.Top, f0_local7.Styles.Minimap.Right, nil, CoD.AnchorTypes.TopRight )
	f7_local0.width = f0_local7.Styles.Minimap.BackgroundWidth
	f7_local0.height = f0_local7.Styles.Minimap.BackgroundHeight
	f7_local0.alpha = 1
	f7_local0.material = RegisterMaterial( "h2_bg_map" )
	local f7_local1 = LUI.UIImage.new( f7_local0 )
	f7_local1.id = "map_mini_bg"
	f7_local0.material = nil
	f7_local0.right = f0_local7.Styles.Minimap.Right - f0_local7.Styles.Minimap.BackgroundWidth
	f7_local0.width = 0
	f7_local0.height = 0
	f7_local0.alpha = 1
	f7_local1:registerAnimationState( "hidden", f7_local0 )
	f7_local0.right = f0_local7.Styles.Minimap.Right - f0_local7.Styles.Minimap.BackgroundWidth * 0.75
	f7_local0.width = f0_local7.Styles.Minimap.BackgroundWidth * 0.25
	f7_local0.height = f0_local7.Styles.Minimap.BackgroundHeight * 0.7
	f7_local0.alpha = 1
	f7_local1:registerAnimationState( "animation_state_1", f7_local0 )
	f7_local0.right = f0_local7.Styles.Minimap.Right - f0_local7.Styles.Minimap.BackgroundWidth * 0.3
	f7_local0.width = f0_local7.Styles.Minimap.BackgroundWidth * 0.7
	f7_local0.height = f0_local7.Styles.Minimap.BackgroundHeight * 0.9
	f7_local0.alpha = 1
	f7_local1:registerAnimationState( "animation_state_2", f7_local0 )
	f7_local0.right = f0_local7.Styles.Minimap.Right + f0_local7.Styles.Minimap.BackgroundWidth * 0.02
	f7_local0.width = f0_local7.Styles.Minimap.BackgroundWidth * 1.02
	f7_local0.height = f0_local7.Styles.Minimap.BackgroundHeight * 1.02
	f7_local0.alpha = 1
	f7_local1:registerAnimationState( "animation_state_3", f7_local0 )
	f7_local0.top = f0_local7.Styles.Minimap.Top + f0_local7.Styles.Minimap.BackgroundHeight / 2
	f7_local0.right = f0_local7.Styles.Minimap.Right
	f7_local0.width = f0_local7.Styles.Minimap.BackgroundWidth
	f7_local0.height = 0
	f7_local0.alpha = 1
	f7_local1:registerAnimationState( "hidden_anim_stretching", f7_local0 )
	f7_local1:registerAnimationState( "inactive", {
		alpha = 0
	} )
	f0_local5:addElement( f7_local1 )
	
	local miniMap = LUI.MenuBuilder.BuildRegisteredType( "UIMinimap", {
		compassType = CoD.CompassType.Partial,
		defAnimState = {
			width = f0_local7.Styles.Minimap.Width,
			height = f0_local7.Styles.Minimap.Height,
			alpha = 1
		}
	} )
	miniMap.id = "map_mini_id"
	miniMap:registerAnimationState( "default", {
		alpha = 1
	} )
	miniMap:registerAnimationState( "hidden", {
		alpha = 0
	} )
	miniMap:registerEventHandler( "menu_create", OnMiniMapCreate )
	f7_local1:addElement( miniMap )
	f0_local5.miniMap = miniMap
	
	local f7_local3 = {
		material = nil,
		width = f0_local7.Styles.Minimap.Width,
		height = f0_local7.Styles.Minimap.Height,
		alpha = 0
	}
	local f7_local4 = LUI.UIImage.new( f7_local3 )
	f7_local4.id = "map_overlay_id_1"
	f7_local4:registerAnimationState( "default", f7_local3 )
	f7_local4.animationsAreInit = false
	f7_local4:registerEventHandler( "emp_jam", ChangeJamState )
	miniMap:addElement( f7_local4 )
	if Game.IsEmpJammed() then
		f7_local4:processEvent( {
			name = "emp_jam",
			active = true
		} )
	end
	local f7_local5 = LUI.MenuBuilder.BuildRegisteredType( "UIMinimapIcons", {
		compassType = CoD.CompassType.Partial,
		defAnimState = {
			topAnchor = true,
			rightAnchor = true,
			width = f0_local7.Styles.Minimap.Width,
			height = f0_local7.Styles.Minimap.Height,
			alpha = 1
		}
	} )
	f7_local5.id = "map_mini_icons_id"
	f7_local5:registerAnimationState( "default", {
		alpha = 1
	} )
	f7_local5:registerAnimationState( "hidden", {
		alpha = 0
	} )
	f7_local5.properties = {
		drawPlayer = true,
		drawObjectives = false
	}
	f7_local5:setUseStencil( true )
	f0_local5.miniMapIcons = f7_local5
	miniMap:addElement( f7_local5 )
	f7_local5.mapBlipPulse = LUI.MapBlipPulse.new( f7_local5 )
	f7_local5.objectiveCount = 0
	if controller then
		f7_local5:registerEventHandler( "update_minimap", Update )
	end
	RefreshMinimapObjectives( f7_local5, controller )
	local f7_local6 = {
		width = f0_local7.Styles.Minimap.Width,
		height = f0_local7.Styles.Minimap.Height,
		material = RegisterMaterial( "h1_deco_map_glitch_01" ),
		alpha = 0.1,
		zRot = 0
	}
	local f7_local7 = LUI.UIImage.new( f7_local6 )
	f7_local7.id = "map_overlay_id"
	f7_local6.zRot = -90
	f7_local7:registerAnimationState( "rot_90", f7_local6 )
	f7_local6.zRot = -180
	f7_local7:registerAnimationState( "rot_180", f7_local6 )
	f7_local6.zRot = -270
	f7_local7:registerAnimationState( "rot_270", f7_local6 )
	f7_local7:registerEventHandler( "menu_create", OnMiniMapOverlayCreate )
	miniMap:addElement( f7_local7 )
end

function canShowMinimap()
	local f8_local0 = Engine.GetDvarBool( "ui_hidemap" )
	local f8_local1 = Engine.GetDvarBool( "limited_mode" )
	local f8_local2
	if not f8_local0 and not isCreditsPlaying() and not isMuseumMission() and not isEndgameFinale() then
		f8_local2 = not f8_local1
	else
		f8_local2 = false
	end
	return f8_local2
end

function updateMinimapVisibility()
	local f9_local0 = canShowMinimap()
	local f9_local1
	if f9_local0 then
		f9_local1 = 1
		if not f9_local1 then
		
		else
			if f0_local5 then
				f0_local5:setAlpha( f9_local1 )
			end
			return f9_local0
		end
	end
	f9_local1 = 0
end

function AddTopRightBar( f10_arg0 )
	local f10_local0 = CoD.CreateState( -86, 95, -68, 95, CoD.AnchorTypes.TopRight )
	f10_local0.color = Colors.h1.light_grey
	f10_arg0:addElement( LUI.UILine.new( f10_local0 ) )
end

function UpdateDifficultyText( f11_arg0, f11_arg1 )
	local f11_local0 = Engine.GetDvarInt( "g_gameskill" )
	f11_arg0:setText( CoD.DifficultyList[Engine.GetDvarInt( "g_gameskill" ) + 1].tipText )
	local f11_local1 = MBh.AnimateSequence( {
		{
			"hidden",
			0
		},
		{
			"hidden",
			PauseMenuAnimationSettings.Intel.DelayIn + 1
		},
		{
			"default",
			PauseMenuAnimationSettings.Intel.DurationIn,
			false,
			true
		}
	} )
	f11_local1( f11_arg0 )
end

function OnIntelTextCreate( f12_arg0 )
	if Engine.GetDvarBool( "hud_showIntel" ) == false or Engine.GetDvarBool( "credits_active" ) then
		f12_arg0:animateToState( "hidden", 0 )
	else
		UpdateIntelText( f12_arg0, nil )
		local f12_local0 = MBh.AnimateSequence( {
			{
				"hidden",
				0
			},
			{
				"hidden",
				PauseMenuAnimationSettings.Intel.DelayIn + 1
			},
			{
				"default",
				PauseMenuAnimationSettings.Intel.DurationIn,
				false,
				true
			}
		} )
		f12_local0( f12_arg0 )
	end
end

function UpdateIntelText( f13_arg0, f13_arg1 )
	SetIntelText( f13_arg0 )
end

function AddIntelAndDifficulty( f14_arg0, f14_arg1 )
	local f14_local0 = Engine.GetDvarString( "mapname" )
	local f14_local1 = f0_local7.Styles.ObjectiveBox.Top + f0_local7.Styles.MapInfos.Top
	if f14_local0 ~= "trainer" or isEndgameFinale() then
		local f14_local2 = CoD.CreateState( nil, f14_local1 - 2, f0_local7.Styles.MapInfos.Right + 8, nil, CoD.AnchorTypes.TopRight )
		f14_local2.height = CoD.TextSettings.BodyFontTiny.Height
		f14_local2.font = CoD.TextSettings.BodyFontTiny.Font
		f14_local2.color = Colors.h1.second_medium_grey
		f14_local2.alpha = 1
		local self = LUI.UIText.new( f14_local2 )
		self.id = "difficultyText"
		self:registerAnimationState( "hidden", {
			alpha = 0
		} )
		self:registerEventHandler( "menu_create", UpdateDifficultyText )
		f14_arg0:addElement( self )
		f14_local1 = f14_local1 + f0_local7.Styles.MapInfos.Spacing
	end
	local f14_local2 = CoD.CreateState( nil, f14_local1 - 2, f0_local7.Styles.MapInfos.Right + 8, nil, CoD.AnchorTypes.TopRight )
	f14_local2.height = CoD.TextSettings.BodyFontTiny.Height
	f14_local2.font = CoD.TextSettings.BodyFontTiny.Font
	f14_local2.color = Colors.h1.second_medium_grey
	f14_local2.alpha = 1
	local self = LUI.UIText.new( f14_local2 )
	self.id = "intelText"
	self.properties = {
		text = "",
		textStyle = CoD.TextStyle.Shadowed
	}
	self:registerAnimationState( "not_found", {
		red = 1,
		blue = 0,
		green = 0
	} )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	if f14_arg1 then
		OnIntelTextCreate( self )
		self:addElement( LUI.UITimer.new( 500, "updateIntelCount", nil, false, false, false, false, true ) )
		self:registerEventHandler( "updateIntelCount", UpdateIntelText )
	else
		self:registerEventHandler( "menu_create", OnIntelTextCreate )
	end
	f14_arg0:addElement( self )
end

function OnObjectivesCreate( f15_arg0, f15_arg1 )
	if Engine.GetDvarBool( "hud_showObjectives" ) == false or Engine.GetDvarBool( "credits_active" ) then
		f15_arg0:animateToState( "hidden", 0 )
	end
end

function OnMissionObjectiveHeaderCreate( f16_arg0, f16_arg1 )
	local f16_local0 = MBh.AnimateSequence( {
		{
			"hidden",
			0
		},
		{
			"hidden",
			PauseMenuAnimationSettings.MissionsObjectiveTitle.DelayIn + 1
		},
		{
			"default",
			PauseMenuAnimationSettings.MissionsObjectiveTitle.DurationIn,
			false,
			true
		}
	} )
	f16_local0( f16_arg0 )
end

function OnLuaMissionObjectiveListCreate( f17_arg0, f17_arg1 )
	local f17_local0 = MBh.AnimateSequence( {
		{
			"hidden",
			0
		},
		{
			"hidden",
			PauseMenuAnimationSettings.MissionsObjectiveList.DelayIn + 1
		},
		{
			"default",
			PauseMenuAnimationSettings.MissionsObjectiveList.DurationIn,
			false,
			true
		}
	} )
	f17_local0( f17_arg0 )
end

function AddObjectives( f18_arg0, f18_arg1 )
	if #Engine.GetPauseMenuObjectives() == 0 and not f18_arg1 then
		return 
	end
	local f18_local0 = f0_local1
	local f18_local1 = f0_local0
	if Engine.IsCurrentGen() then
		f18_local0 = 1
		f18_local1 = 0.8
	end
	local f18_local2 = CoD.CreateState( f0_local7.Styles.ObjectiveBox.Left, f0_local7.Styles.ObjectiveBox.Top, nil, nil, CoD.AnchorTypes.TopLeft )
	f18_local2.width = 775
	f18_local2.height = 600
	f18_local2.alpha = 1
	local self = LUI.UIElement.new( f18_local2 )
	self.id = "missionObjectiveBoxId"
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	if f18_arg1 then
		OnObjectivesCreate( self )
	else
		self:registerEventHandler( "menu_create", OnObjectivesCreate )
	end
	local f18_local4 = CoD.CreateState( f0_local7.Styles.ObjectiveTitle.Left, f0_local7.Styles.ObjectiveTitle.Top, nil, nil, CoD.AnchorTypes.TopLeft )
	f18_local4.alignment = LUI.Alignment.Left
	f18_local4.font = CoD.TextSettings.TitleFont22.Font
	f18_local4.color = Colors.h1.light_grey
	f18_local4.width = f0_local7.Styles.ObjectiveTitle.Width + 60
	f18_local4.height = CoD.TextSettings.TitleFont22.Height
	f18_local4.alpha = 1
	
	local objectiveHeader = LUI.UIText.new( f18_local4 )
	objectiveHeader:setText( Engine.Localize( "@CGAME_MISSIONOBJECTIVES" ) )
	objectiveHeader.id = "missionObjectiveHeaderId"
	objectiveHeader:registerAnimationState( "hidden", {
		alpha = 0
	} )
	objectiveHeader:setAlpha( 0 )
	self:addElement( objectiveHeader )
	self.objectiveHeader = objectiveHeader
	
	if not f18_arg1 then
		objectiveHeader:registerEventHandler( "menu_create", OnMissionObjectiveHeaderCreate )
	end
	self:addElement( objectiveHeader )
	local f18_local6 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f18_local6.alpha = 1
	local f18_local7 = LUI.UIElement.new( f18_local6 )
	f18_local7.id = "objectivesContainer"
	self:addElement( f18_local7 )
	f18_arg0:addElement( self )
	RefreshObjectives( f18_arg0 )
	if f18_arg1 then
		f18_arg0:registerEventHandler( "game_message", RefreshObjectives )
		f18_arg0:registerEventHandler( "refresh_objectives", RefreshObjectives )
	end
	f18_arg0:addElement( self )
end

function Show( f19_arg0, f19_arg1, f19_arg2, f19_arg3 )
	local f19_local0 = f19_arg0
	if f19_arg2 then
		local f19_local1 = CoD.CreateState( 67.33, 0, 307.33, 0, CoD.AnchorTypes.All )
		f19_local1.color = Colors.h1.black
		f19_local1.alpha = 0.8
		local self = LUI.UIImage.new( f19_local1 )
		self.id = "background"
		self:setupFullWindowElement()
		f19_arg0:addElement( self )
		AddTopRightBar( f19_arg0 )
	end
	if f19_arg3 then
		local f19_local1 = CoD.CreateState( DesignGridDims.horz_gutter, DesignGridDims.vert_gutter, -DesignGridDims.horz_gutter, -DesignGridDims.vert_gutter, CoD.AnchorTypes.All )
		f19_local1.alpha = 1
		f19_local0 = LUI.UIElement.new( f19_local1 )
		f19_arg0:addElement( f19_local0 )
	end
	local f19_local1 = Engine.GetDvarString( "mapname" )
	local self = CoD.CreateState( -500, 40, 0, nil, CoD.AnchorTypes.TopRight )
	self.alignment = LUI.Alignment.Right
	self.font = CoD.TextSettings.TitleFont22.Font
	self.height = CoD.TextSettings.TitleFont22.Height
	self.color = GenericMenuColors.text_highlight
	local f19_local3 = LUI.UIText.new( self )
	if Engine.GetDvarBool( "specialops" ) then
		f19_local3:setText( Engine.ToUpperCase( Engine.Localize( "@SPECIAL_OPS_" .. Engine.ToUpperCase( f19_local1 ) ) ) )
	elseif isMuseumMission() then
		f19_local3:setText( Engine.ToUpperCase( Engine.Localize( Engine.ToUpperCase( "@MENU_SP_MUSEUM" ) ) ) )
	elseif isCreditsPlaying() then
		f19_local3:setText( Engine.ToUpperCase( Engine.Localize( Engine.ToUpperCase( "@MENU_SP_H1_SIMPLECREDITS" ) ) ) )
	elseif isEndgameFinale() then
		f19_local3:setText( Engine.ToUpperCase( Engine.Localize( Engine.ToUpperCase( "@MENU_SP_AF_CHASE" ) ) ) )
	else
		f19_local3:setText( Engine.ToUpperCase( Engine.Localize( "@MENU_SP_" .. Engine.ToUpperCase( f19_local1 ) ) ) )
	end
	f19_local0:addElement( f19_local3 )
	if Engine.GetDvarBool( "hud_drawHud" ) then
		AddObjectives( f19_local0, f19_arg1 )
	end
	AddMiniMap( f19_local0, f19_arg1 )
	updateMinimapVisibility()
	if not isCreditsPlaying() and not isMuseumMission() then
		AddIntelAndDifficulty( f19_local0, f19_arg1 )
	end
end

function Hide( f20_arg0, f20_arg1 )
	if f20_arg0.miniMapContainer then
		f20_arg0.miniMapContainer:animateToState( "hidden", f20_arg1 )
		f20_arg0.miniMapContainer.miniMap:animateToState( "hidden", f20_arg1 )
		f20_arg0.miniMapContainer.miniMapIcons:animateToState( "hidden", f20_arg1 )
	end
end

function RefreshObjectives( f21_arg0, f21_arg1 )
	local f21_local0 = f21_arg0:getChildById( "missionObjectiveBoxId" )
	if f21_local0 == nil then
		return 
	end
	local f21_local1 = f21_local0:getChildById( "objectivesContainer" )
	if f21_local1 == nil then
		return 
	end
	f21_local1:closeChildren()
	local f21_local2 = 9
	local f21_local3 = 18
	local f21_local4 = 10.66
	local f21_local5 = 27
	local f21_local6 = {
		[0] = Colors.white,
		[1] = Colors.h1.light_grey,
		[2] = Colors.white,
		[3] = Colors.grey_4,
		[4] = Colors.h1.yellow,
		[5] = Colors.white,
		[6] = Colors.h1.light_grey
	}
	local f21_local7 = f0_local7.Styles.ObjectiveList.Top - CoD.TextSettings.BodyFontSmall.Height / 2 - f21_local4 / 2
	local f21_local8 = f0_local7.Styles.ObjectiveList.Left + f21_local4 + f21_local2
	if Engine.IsRightToLeftLanguage() then
		f21_local8 = f0_local7.Styles.ObjectiveList.Left
	end
	local f21_local9 = CoD.CreateState( f21_local8, f21_local7, f0_local7.Styles.ObjectiveList.Width, CoD.TextSettings.BodyFontSmall.Height, CoD.AnchorTypes.TopLeft )
	f21_local9.spacing = f21_local3
	local self = LUI.UIVerticalList.new( f21_local9 )
	local f21_local11 = CoD.CreateState( 0, 0, nil, nil, CoD.AnchorTypes.TopLeft )
	f21_local11.width = f0_local7.Styles.ObjectiveList.Width
	f21_local11.height = CoD.TextSettings.BodyFontTiny.Height
	f21_local11.alignment = LUI.Alignment.Left
	f21_local11.alpha = 1
	f21_local11.font = CoD.TextSettings.BodyFontTiny.Font
	local f21_local12 = -(f21_local4 + f21_local2)
	local f21_local13 = CoD.AnchorTypes.TopLeft
	if Engine.IsRightToLeftLanguage() then
		f21_local12 = f21_local4 + f21_local2
		f21_local13 = CoD.AnchorTypes.TopRight
		f21_local5 = f21_local5 * -1
	end
	local f21_local14 = CoD.CreateState( f21_local12, 0, nil, nil, f21_local13 )
	f21_local14.width = f21_local4
	f21_local14.height = f21_local4
	local f21_local15 = Engine.GetPauseMenuObjectives()
	if f21_local15 then
		for f21_local16 = 1, #f21_local15, 1 do
			if f21_local15[f21_local16] ~= nil then
				f21_local11.color = f21_local6[f21_local15[f21_local16].state]
				f21_local11.left = f21_local15[f21_local16].indentLevel * f21_local5
				local f21_local19 = LUI.UIText.new( f21_local11 )
				f21_local19.id = "objective" .. f21_local16
				f21_local19.properties = {
					text = "",
					textStyle = CoD.TextStyle.Shadowed
				}
				f21_local19:setText( Engine.Localize( f21_local15[f21_local16].name ) )
				if f21_local15[f21_local16].iconMaterial ~= nil then
					f21_local14.width = f21_local14.height * Engine.GetMaterialAspectRatio( f21_local15[f21_local16].iconMaterial )
					f21_local14.material = f21_local15[f21_local16].iconMaterial
					f21_local14.color = f21_local6[f21_local15[f21_local16].state]
					local f21_local20 = LUI.UIImage.new( f21_local14 )
					f21_local20.id = "objectiveIcon" .. f21_local16
					f21_local19:addElement( f21_local20 )
				end
				self:addElement( f21_local19 )
			end
		end
	end
	if f21_local0.objectiveHeader then
		if #f21_local15 == 0 then
			f21_local0.objectiveHeader:setAlpha( 0 )
		else
			f21_local0.objectiveHeader:setAlpha( 1 )
		end
	end
	f21_local1:addElement( self )
	updateMinimapVisibility()
end

function RefreshMinimapObjectives( f22_arg0, f22_arg1 )
	if updateMinimapVisibility() then
		local f22_local0 = Engine.GetPlayerObjectivePositions( f0_local7.Styles.Minimap.Width / 1.5, f0_local7.Styles.Minimap.Height / 1.5 )
		if f22_local0 then
			for f22_local1 = 1, #f22_local0, 1 do
				local f22_local4 = f22_local0[f22_local1].x * 1.5
				local f22_local5 = f22_local0[f22_local1].y * 1.5
				if f22_arg0.objectiveCount < f22_local1 then
					f22_arg0.mapBlipPulse:addPulse( {
						name = "objective_" .. f22_local1,
						posX = f22_local4,
						posY = f22_local5,
						anchor = CoD.AnchorTypes.None,
						useContainer = f22_arg1
					} )
				end
				local f22_local6 = false
				local f22_local7 = f22_arg0.mapBlipPulse:getFirstChild()
				while f22_local7 ~= nil and not f22_local6 do
					if string.find( f22_local7.id, f22_local1 .. "_container" ) then
						f22_local7:setLeftRight( false, false, f22_local4, f22_local4 + 1 )
						f22_local7:setTopBottom( false, false, f22_local5, f22_local5 + 1 )
						f22_local6 = true
					else
						f22_local7 = f22_local7:getNextSibling()
					end
				end
			end
			f22_arg0.objectiveCount = #f22_local0
		else
			f22_arg0.mapBlipPulse:clearAll()
			f22_arg0.objectiveCount = 0
		end
	end
end

function Update( f23_arg0 )
	RefreshMinimapObjectives( f23_arg0, true )
end

LockTable( _M )
