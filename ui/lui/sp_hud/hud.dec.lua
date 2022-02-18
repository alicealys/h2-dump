local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = Engine.GetDvarFloat( "safeArea_adjusted_horizontal" )
f0_local1 = Engine.GetDvarFloat( "safeArea_adjusted_vertical" )
f0_local2 = false
local f0_local3 = function ( f1_arg0, f1_arg1 )
	local f1_local0
	if Engine.GetDvarBool( "cg_draw2D" ) then
		f1_local0 = not Game.IsHudEnabled( nil )
	else
		f1_local0 = true
	end
	local f1_local1 = f1_arg0.is_paused
	local f1_local2 = Engine.GetDvarString( "createfx" ) == "on"
	local f1_local3 = Game.PlayerReticleZoom()
	local f1_local4 = Engine.IsVideoPlaying() and Engine.GetDvarBool( "cg_cinematicFullscreen" ) or Engine.InLoadingScreen()
	local f1_local5 = f1_arg0:getChildById( "hintsHudId" )
	local f1_local6 = f1_arg0:getChildById( "savingHudId" )
	local f1_local7 = f1_arg0:getChildById( "overlayHudId" )
	local f1_local8 = f1_arg0:getChildById( "ragtimeWarefareOverlayContainerId" )
	local f1_local9 = f1_arg0:getChildById( "snowGogglesHudId" )
	local f1_local10 = f1_arg0:getChildById( "sniperScopeId" )
	local f1_local11 = f1_arg0:getChildById( "shakeContainerHudId" )
	local f1_local12 = f1_local11:getChildById( "weaponInfoHud" )
	local f1_local13 = f1_local11:getChildById( "videoLogCinematicRootId" )
	local f1_local14 = {}
	local f1_local15 = {}
	if f1_local1 then
		f1_local14 = {
			f1_local5,
			f1_local12,
			f1_local6,
			f1_local7,
			f1_local13
		}
		f1_local15 = {
			f1_local8
		}
	elseif f1_local4 then
		if f0_local2 then
			f1_local14 = {
				f1_local5,
				f1_local12,
				f1_local6,
				f1_local7,
				f1_local13,
				f1_local9,
				f1_local10
			}
			f1_local15 = {
				f1_local8
			}
		else
			f1_local14 = {
				f1_local5,
				f1_local12,
				f1_local6,
				f1_local7,
				f1_local13,
				f1_local8,
				f1_local9,
				f1_local10
			}
			f1_local15 = {}
		end
	elseif f1_local0 then
		f1_local14 = {
			f1_local5,
			f1_local12,
			f1_local6,
			f1_local7,
			f1_local13
		}
		f1_local15 = {}
	elseif f1_local3 then
		f1_local14 = {}
		f1_local15 = {
			f1_local5,
			f1_local12,
			f1_local6,
			f1_local7,
			f1_local13
		}
	else
		f1_local14 = {}
		f1_local15 = {
			f1_local5,
			f1_local12,
			f1_local6,
			f1_local7,
			f1_local13,
			f1_local8,
			f1_local9,
			f1_local10
		}
	end
	for f1_local19, f1_local20 in pairs( f1_local14 ) do
		if f1_local20.on_state == nil or f1_local20.on_state == true then
			f1_local20:animateToState( "hud_off", 0 )
			f1_local20.current_state = "hud_off"
			f1_local20.on_state = false
			f1_local20:processEvent( {
				name = "hud_off"
			} )
		end
	end
	if #f1_local15 and (f1_arg0.on_state == nil or f1_arg0.on_state == false) then
		f1_arg0:animateToState( "hud_on", 0 )
		f1_arg0.current_state = "hud_on"
		f1_arg0.on_state = true
	end
	for f1_local19, f1_local20 in pairs( f1_local15 ) do
		if f1_local20.on_state == nil or f1_local20.on_state == false then
			f1_local20:animateToState( "hud_on", 100 )
			f1_local20.current_state = "hud_on"
			f1_local20.on_state = true
			f1_local20:processEvent( {
				name = "hud_on"
			} )
		end
	end
	if not f1_arg0.is_paused and (f0_local0 ~= Engine.GetDvarFloat( "safeArea_adjusted_horizontal" ) or f0_local1 ~= Engine.GetDvarFloat( "safeArea_adjusted_vertical" )) then
		f0_local0 = Engine.GetDvarFloat( "safeArea_adjusted_horizontal" )
		f0_local1 = Engine.GetDvarFloat( "safeArea_adjusted_vertical" )
		f1_arg0:registerAnimationState( "new_margins", {
			topAnchor = true,
			leftAnchor = true,
			bottomAnchor = true,
			rightAnchor = true,
			top = ScreenResolution[currentScreenResolution].height * (1 - f0_local1) / 2,
			left = ScreenResolution[currentScreenResolution].width * (1 - f0_local0) / 2,
			bottom = -(ScreenResolution[currentScreenResolution].height * (1 - f0_local1)) / 2,
			right = -(ScreenResolution[currentScreenResolution].width * (1 - f0_local0)) / 2,
			alpha = 1
		} )
		f1_arg0:animateToState( "new_margins", 0 )
		f1_arg0:registerAnimationState( "default_on", {
			topAnchor = true,
			leftAnchor = true,
			bottomAnchor = true,
			rightAnchor = true,
			top = ScreenResolution[currentScreenResolution].height * (1 - f0_local1) / 2,
			left = ScreenResolution[currentScreenResolution].width * (1 - f0_local0) / 2,
			bottom = -(ScreenResolution[currentScreenResolution].height * (1 - f0_local1)) / 2,
			right = -(ScreenResolution[currentScreenResolution].width * (1 - f0_local0)) / 2,
			alpha = 1
		} )
	end
end

local f0_local4 = function ( f2_arg0, f2_arg1 )
	local f2_local0 = Engine.GetLuiRoot()
	if f2_local0 and not LUI.FlowManager.IsInStack( f2_local0.flowManager, "sp_pause_menu" ) then
		LUI.FlowManager.RequestAddMenu( f2_arg0, "sp_pause_menu", true, f2_arg1.controller, false )
		Engine.PlaySound( CoD.SFX.MenuAppear )
	end
end

local f0_local5 = function ( f3_arg0, f3_arg1 )
	f3_arg0.is_paused = false
	f0_local3( f3_arg0, f3_arg1 )
	local f3_local0 = f3_arg0:getFirstDescendentById( "player_plane_hud_root" )
	if f3_local0 then
		f3_local0:processEvent( {
			name = "unpaused"
		} )
	end
	local f3_local1 = f3_arg0:getFirstDescendentById( "player_mech_hud_root" )
	if f3_local1 then
		f3_local1:processEvent( {
			name = "unpaused"
		} )
	end
end

local f0_local6 = function ( f4_arg0, f4_arg1 )
	f4_arg0.is_paused = true
	f0_local3( f4_arg0, f4_arg1 )
	f0_local4( f4_arg0, f4_arg1 )
end

local f0_local7 = function ( f5_arg0, f5_arg1 )
	f5_arg0.doRandomShake = true
	f0_local0 = Engine.GetDvarFloat( "safeArea_adjusted_horizontal" )
	f0_local1 = Engine.GetDvarFloat( "safeArea_adjusted_vertical" )
	local f5_local0 = f5_arg0:getChildById( "shakeContainerHudId" )
	for f5_local1 = 1, 4, 1 do
		f5_local0:registerAnimationState( "shake" .. f5_local1, {
			topAnchor = true,
			leftAnchor = true,
			bottomAnchor = true,
			rightAnchor = true,
			top = ScreenResolution[currentScreenResolution].height * (1 - f0_local1) / 2 + math.random( 10, 20 ),
			left = ScreenResolution[currentScreenResolution].width * (1 - f0_local0) / 2 + math.random( 10, 20 ),
			bottom = -(ScreenResolution[currentScreenResolution].height * (1 - f0_local1)) / 2 - math.random( 10, 20 ),
			right = -(ScreenResolution[currentScreenResolution].width * (1 - f0_local0)) / 2 - math.random( 10, 20 ),
			alpha = math.random( 0, 50 ) / 100
		} )
	end
	local f5_local1 = MBh.AnimateSequence
	local f5_local2 = {}
	local f5_local3 = {
		"default",
		0
	}
	local f5_local4 = {}
	local f5_local5 = "shake1"
	local f5_local6 = math.random( 10, 50 )
	f5_local4 = f5_local5
	f5_local5 = {}
	f5_local6 = "shake2"
	local f5_local7 = math.random( 10, 50 )
	f5_local5 = f5_local6
	f5_local6 = {}
	f5_local7 = "shake3"
	local f5_local8 = math.random( 10, 50 )
	f5_local6 = f5_local7
	f5_local7 = {}
	f5_local8 = "shake4"
	local f5_local9 = math.random( 10, 50 )
	f5_local7 = f5_local8
	f5_local8 = {}
	f5_local9 = "hud_off"
	local f5_local10 = math.random( 50, 100 )
	f5_local8 = f5_local9
	f5_local9 = {
		"default",
		250
	}
	f5_local2[1] = f5_local3
	f5_local2[2] = f5_local4
	f5_local2[3] = f5_local5
	f5_local2[4] = f5_local6
	f5_local2[5] = f5_local7
	f5_local2[6] = f5_local8
	f5_local2[7] = f5_local9
	f5_local2 = f5_local1( f5_local2 )
	f5_local2( f5_local0 )
	f5_arg0.doRandomShake = undefined
end

local f0_local8 = {
	alpha = 1
}
local f0_local9 = {
	alpha = 0
}
local f0_local10 = {
	topAnchor = true,
	leftAnchor = true,
	bottomAnchor = true,
	rightAnchor = true,
	top = 0,
	left = 0,
	bottom = 0,
	right = 0,
	alpha = 1
}
local f0_local11 = {
	topAnchor = false,
	leftAnchor = false,
	bottomAnchor = false,
	rightAnchor = false,
	top = -(ScreenResolution[currentScreenResolution].height / 2),
	left = -(ScreenResolution[currentScreenResolution].width / 2),
	bottom = ScreenResolution[currentScreenResolution].height / 2,
	right = ScreenResolution[currentScreenResolution].width / 2,
	alpha = 1
}
local f0_local12 = function ( f6_arg0 )
	local f6_local0 = {
		alpha = 1
	}
	local f6_local1 = {
		alpha = 0
	}
	local f6_local2 = {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = true,
		rightAnchor = true,
		top = ScreenResolution[currentScreenResolution].height * (1 - f0_local1) / 2,
		left = ScreenResolution[currentScreenResolution].width * (1 - f0_local0) / 2,
		bottom = -(ScreenResolution[currentScreenResolution].height * (1 - f0_local1)) / 2,
		right = -(ScreenResolution[currentScreenResolution].width * (1 - f0_local0)) / 2,
		alpha = 1
	}
	f6_arg0:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = true,
		rightAnchor = true,
		top = ScreenResolution[currentScreenResolution].height * (1 - f0_local1) / 2,
		left = ScreenResolution[currentScreenResolution].width * (1 - f0_local0) / 2,
		bottom = -(ScreenResolution[currentScreenResolution].height * (1 - f0_local1)) / 2,
		right = -(ScreenResolution[currentScreenResolution].width * (1 - f0_local0)) / 2,
		alpha = 0
	} )
	f6_arg0:registerAnimationState( "default_on", f6_local2 )
	f6_arg0:registerAnimationState( "hud_on", f6_local0 )
	f6_arg0:registerAnimationState( "hud_off", f6_local1 )
	f6_arg0:animateToState( "default" )
end

local f0_local13 = function ( f7_arg0, f7_arg1 )
	local f7_local0 = nil
	if type( f7_arg1 ) == "table" then
		f7_local0 = LUI.MenuBuilder.buildItems( f7_arg1, f7_arg0.properties, f7_arg0 )
	else
		f7_local0 = f7_arg1
	end
	f7_arg0:addElement( f7_local0 )
	return f7_local0
end

local f0_local14 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self.id = menu
	self:registerAnimationState( "default", f0_local10 )
	self:registerAnimationState( "hud_on", f0_local8 )
	self:registerAnimationState( "hud_off", f0_local9 )
	self:animateToState( "default" )
	f0_local13( self, {
		type = controller
	} )
	return self
end

local f0_local15 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self.id = menu
	self:registerAnimationState( "default", f0_local10 )
	self:registerAnimationState( "hud_on", f0_local8 )
	self:registerAnimationState( "hud_off", f0_local9 )
	self:animateToState( "default" )
	f0_local13( self, {
		type = controller
	} )
	return self
end

local f0_local16 = function ( f10_arg0 )
	local f10_local0 = f10_arg0:getFirstDescendentById( "snowGogglesRootId" )
	if f10_local0 ~= nil and f10_local0.isInit then
		local f10_local1 = f10_local0:getFirstDescendentById( "cheatContainerId" )
		if Engine.GetDvarInt( "r_useCheatPostFX" ) == 1 then
			f10_local1:animateToState( "cheatOn", 0 )
		else
			f10_local1:animateToState( "cheatOff", 0 )
		end
	end
end

local f0_local17 = function ( f11_arg0, f11_arg1 )
	local f11_local0 = f11_arg0:getFirstDescendentById( "gasmaskRootId" )
	if f11_local0 ~= nil then
		if f11_arg1.value then
			f11_local0:animateToState( "on", 0 )
		else
			f11_local0:animateToState( "off", 0 )
		end
	end
end

local f0_local18 = function ( f12_arg0, f12_arg1, f12_arg2 )
	local f12_local0 = f12_arg0:getFirstDescendentById( "snowGogglesRootId" )
	if f12_local0 ~= nil then
		if f12_arg1.value > 0 then
			f12_local0:tryInit()
			f0_local16( f12_arg0 )
		end
		if f12_local0.isInit then
			if f12_arg2 then
				if f12_arg1.value == 1 or f12_arg1.value == 4 then
					f12_local0:setOn()
				elseif f12_arg1.value == 2 then
					f12_local0:setOff()
				end
			elseif f12_arg1.value == 1 then
				f12_local0:putOn()
			elseif f12_arg1.value == 2 then
				f12_local0:putOff()
			elseif f12_arg1.value == 4 then
				f12_local0:putOnSnowmobile()
			end
		end
	end
end

local f0_local19 = function ( f13_arg0, f13_arg1 )
	local f13_local0 = f13_arg0:getFirstDescendentById( "snowGogglesRootId" )
	if f13_local0 ~= nil then
		if f13_arg1.value then
			f13_local0:fadeOut()
		else
			f13_local0:fadeIn()
		end
	end
end

local f0_local20 = function ( f14_arg0, f14_arg1 )
	local f14_local0 = f14_arg0:getFirstDescendentById( "predatorDroneRootId" )
	if f14_arg1.value ~= nil and f14_arg1.value ~= 0 then
		f14_local0:tryInit()
	end
	if f14_local0 ~= nil and f14_local0.isInit then
		if f14_arg1.value ~= nil and f14_arg1.value ~= 0 then
			f14_local0:show( f14_arg1.value )
		else
			f14_local0:hide()
		end
	end
end

local f0_local21 = function ( f15_arg0, f15_arg1 )
	local f15_local0 = f15_arg0:getFirstDescendentById( "predatorMissileRootId" )
	if f15_arg1.value ~= nil and f15_arg1.value then
		f15_local0:tryInit()
	end
	if f15_local0 ~= nil and f15_local0.isInit then
		if f15_arg1.value ~= nil and f15_arg1.value then
			f15_local0:show()
		else
			f15_local0:hide()
		end
	end
end

local f0_local22 = function ( f16_arg0, f16_arg1, f16_arg2 )
	local f16_local0 = f16_arg0:getFirstDescendentById( "divingGogglesRootId" )
	if f16_arg1.value > 0 then
		f16_local0:tryInit()
	end
	if f16_local0 ~= nil and f16_local0.isInit then
		if f16_arg2 then
			if f16_arg1.value == 1 or f16_arg1.value == 2 then
				f16_local0:setOn()
			elseif f16_arg1.value == 3 then
				f16_local0:setOff()
			end
		elseif f16_arg1.value == 1 then
			f16_local0:activate()
		elseif f16_arg1.value == 2 then
			f16_local0:fadeIn()
		elseif f16_arg1.value == 3 then
			f16_local0:putOff()
		end
	end
end

local f0_local23 = function ( f17_arg0, f17_arg1 )
	local f17_local0 = f17_arg0:getFirstDescendentById( "astronautHelmetRootId" )
	if f17_arg1.value then
		f17_local0:tryInit()
	end
	if f17_local0 ~= nil and f17_local0.isInit then
		if f17_arg1.value then
			f17_local0:setOn()
		else
			f17_local0:setOff()
		end
	end
end

local f0_local24 = function ( f18_arg0, f18_arg1 )
	local f18_local0 = f18_arg0:getFirstDescendentById( "ragtimeWarefareOverlayId" )
	if f18_arg1.value then
		f18_local0:animateToState( "show", 1000 )
	else
		f18_local0:animateToState( "hide", 1000 )
	end
end

local f0_local25 = function ( f19_arg0, f19_arg1 )
	local f19_local0 = f19_arg0:getFirstDescendentById( "ragtimeWarefareOverlayId" )
	if Game.GetOmnvar( "ui_ragtimewarefare_overlay" ) then
		if f19_arg1.value > 0 then
			if not f0_local2 then
				f0_local2 = true
				f19_local0:animateInSequence( {
					{
						"hide",
						0
					},
					{
						"hide",
						f19_arg1.value
					},
					{
						"show",
						1000
					}
				} )
			end
		else
			f0_local2 = false
		end
	else
		f0_local2 = false
		f19_local0:animateToState( "hide", 1000 )
	end
	f0_local3( f19_arg0, f19_arg1 )
end

local f0_local26 = function ( f20_arg0, f20_arg1 )
	if f20_arg0:getFirstDescendentById( "briefingMenuId" ) == nil then
		f0_local13( f20_arg0, f0_local14( "briefingMenuHudId", "LuiBriefingMenu" ) )
		local f20_local0 = f20_arg0:getFirstDescendentById( "briefingMenuId" )
		if f20_local0 ~= nil then
			f20_local0:setType( f20_arg1.value )
		end
	end
end

local f0_local27 = function ( f21_arg0, f21_arg1 )
	local f21_local0 = Game.IsThermalVisionOn( f21_arg1.controller )
	if f21_arg0.wasThermal == nil then
		f21_arg0.wasThermal = f21_local0
	end
	if f21_arg0.wasThermal ~= f21_local0 then
		f21_arg0:dispatchEventToRoot( {
			name = "nightVisionThermalOverwrite",
			value = not f21_local0
		} )
	end
	f21_arg0.wasThermal = f21_local0
end

local f0_local28 = function ( f22_arg0, f22_arg1 )
	if f22_arg1.value then
		if f22_arg0.nightVisionUpdater then
			f22_arg0.nightVisionUpdater:close()
			f22_arg0.nightVisionUpdater = nil
		end
		f22_arg0.nightVisionUpdater = LUI.UITimer.new( 10, "nightVisionAndThermalCheck", nil, false, false, false, false, true )
		f22_arg0:addElement( f22_arg0.nightVisionUpdater )
	else
		if f22_arg0.nightVisionUpdater then
			f22_arg0.nightVisionUpdater:close()
		end
		f22_arg0.nightVisionUpdater = nil
	end
end

local f0_local29 = function ()
	local self = LUI.UIElement.new()
	self.id = "hud_id"
	f0_local2 = false
	f0_local12( self )
	self:registerEventHandler( "hud_shake", f0_local7 )
	self:registerEventHandler( "toggle_pause", f0_local6 )
	self:registerEventHandler( "toggle_pause_off", f0_local5 )
	self:setupUIIntWatch( "IsHudEnabled" )
	self:registerDvarHandler( "cg_draw2D", f0_local3 )
	self:registerDvarHandler( "createfx", f0_local3 )
	self:registerDvarHandler( "cg_cinematicFullscreen", f0_local3 )
	self:registerOmnvarHandler( "ui_playermech_hud", f0_local3 )
	self:registerOmnvarHandler( "ui_playerplane_hud", f0_local3 )
	self:registerOmnvarHandler( "ui_videolog", f0_local3 )
	self:registerEventHandler( "int_watch_alert", f0_local3 )
	self:registerEventHandler( "player_start", f0_local3 )
	self:registerOmnvarHandler( "ui_gasmask", f0_local17 )
	self:registerOmnvarHandler( "ui_snowgoggles", f0_local18 )
	self:registerOmnvarHandler( "ui_snowgogglesfade", f0_local19 )
	self:registerOmnvarHandler( "ui_divinggoggles", f0_local22 )
	self:registerOmnvarHandler( "ui_astronauthelmet", f0_local23 )
	self:registerOmnvarHandler( "ui_ragtimewarefare_overlay", f0_local24 )
	self:registerOmnvarHandler( "ui_predatordrone", f0_local20 )
	self:registerOmnvarHandler( "ui_predatormissile", f0_local21 )
	self:registerOmnvarHandler( "ui_chaplinoverlayfadein", f0_local25 )
	self:registerOmnvarHandler( "ui_refreshcheathud", f0_local16 )
	self:registerOmnvarHandler( "ui_openluibriefingmenu", f0_local26 )
	local f23_local1 = LUI.UIElement.new()
	f23_local1:setupUIIntWatch( "IsVideoPlaying" )
	f23_local1:registerEventHandler( "int_watch_alert", function ( element, event )
		f0_local3( element:getParent(), event )
	end )
	self:addElement( f23_local1 )
	local f23_local2 = LUI.UIElement.new()
	f23_local2:setupUIIntWatch( "IsReticleZoom" )
	f23_local2:registerEventHandler( "int_watch_alert", function ( element, event )
		f0_local3( element:getParent(), event )
	end )
	self:addElement( f23_local2 )
	f0_local13( self, f0_local14( "snowGogglesHudId", "snowGogglesHudDef" ) )
	f0_local13( self, f0_local14( "divingGogglesHudId", "divingGogglesHudDef" ) )
	f0_local13( self, f0_local14( "astronautHelmetHudDef", "astronautHelmetHudDef" ) )
	f0_local13( self, f0_local14( "javelinHudId", "javelinHudDef" ) )
	f0_local13( self, f0_local14( "nightvisionHudId", "NightVisionHudDef" ) )
	f0_local13( self, f0_local14( "sniperScopeId", "sniperScopeHudType" ) )
	f0_local13( self, f0_local14( "consciousnessOverlayId", "consciousnessOverlayType" ) )
	f0_local13( self, f0_local14( "airplaneSlowMoOverlayId", "airplaneSlowMoOverlayType" ) )
	f0_local13( self, f0_local14( "predatorDroneHudId", "predatorDroneHudDef" ) )
	f0_local13( self, f0_local14( "predatorMissileHudId", "predatorMissileHudDef" ) )
	f0_local13( self, f0_local14( "ragtimeWarefareOverlayContainerId", "ragtime_warefare_overlay_def" ) )
	f0_local13( self, f0_local14( "hintsHudId", "hintsHudDef" ) )
	f0_local13( self, f0_local14( "savingHudId", "savingHudDef" ) )
	f0_local13( self, f0_local14( "overlayHudId", "overlayHudDef" ) )
	f0_local22( self, {
		name = "ui_divinggoggles",
		value = Game.GetOmnvar( "ui_divinggoggles" )
	}, true )
	f0_local18( self, {
		name = "ui_snowgoggles",
		value = Game.GetOmnvar( "ui_snowgoggles" )
	}, true )
	f0_local20( self, {
		name = "ui_predatordrone",
		value = Game.GetOmnvar( "ui_predatordrone" )
	} )
	f0_local21( self, {
		name = "ui_predatormissile",
		value = Game.GetOmnvar( "ui_predatormissile" )
	} )
	f0_local23( self, {
		name = "ui_astronauthelmet",
		value = Game.GetOmnvar( "ui_astronauthelmet" )
	} )
	local f23_local3 = LUI.UIElement.new()
	f23_local3.id = "shakeContainerHudId"
	f23_local3:registerAnimationState( "default", f0_local10 )
	f23_local3:registerAnimationState( "hud_on", f0_local8 )
	f23_local3:registerAnimationState( "hud_off", f0_local9 )
	f23_local3:animateToState( "default" )
	f23_local3.properties = {
		shakeLooping = 0,
		shakeVersion = 0
	}
	self:addElement( f23_local3 )
	self:registerEventHandler( "cheats_changed", f0_local16 )
	f0_local13( f23_local3, f0_local15( "weaponInfoHud", "WeaponInfoHudDef" ) )
	local f23_local4 = LUI.UIElement.new()
	if f23_local4.setFlashFade then
		f23_local4:setFlashFade()
	end
	f23_local4:registerAnimationState( "default", {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true
	} )
	f23_local4:animateToState( "default" )
	self:addElement( f23_local4 )
	local f23_local5 = self:getChildById( "shakeContainerHudId" )
	f23_local5 = f23_local5:getChildById( "weaponInfoHud" )
	f23_local5:processEvent( {
		name = "init"
	} )
	local f23_local6 = LUI.UIImage.new( Engine.IsConsoleGame() and {
		leftAnchor = false,
		rightAnchor = false,
		topAnchor = false,
		bottomAnchor = false,
		alpha = 0,
		left = -360 * Engine.GetAspectRatio(),
		right = 360 * Engine.GetAspectRatio(),
		top = -360,
		bottom = 360,
		material = RegisterMaterial( "black" )
	} or {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		alpha = 0,
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
		material = RegisterMaterial( "black" )
	} )
	f23_local6:registerAnimationState( "on", {
		alpha = 1
	} )
	f23_local6:registerOmnvarHandler( "ui_go_black", function ( f26_arg0, f26_arg1 )
		if f26_arg1.value then
			f26_arg0:animateToState( "on", f26_arg1.value * 1000 )
		end
	end )
	self:addElement( f23_local6 )
	f0_local16( self )
	f0_local3( self, {} )
	CoD.HideHints = function ( f27_arg0 )
		local f27_local0 = self:getChildById( "hintsHudId" )
		if f27_local0 then
			f27_local0:animateToState( "hud_off", f27_arg0 )
		end
	end
	
	self:registerOmnvarHandler( "ui_nightvision", f0_local28 )
	self:registerEventHandler( "nightVisionAndThermalCheck", f0_local27 )
	return self
end

local f0_local30 = function ()
	local self = LUI.UIElement.new()
	self.id = "hintsContainerHudId"
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = true,
		rightAnchor = true
	} )
	self:animateToState( "default", 0 )
	local f28_local1 = LUI.sp_hud.gameInfo.mantleHintDef()
	local f28_local2 = LUI.sp_hud.gameInfo.cursorHintDef()
	local f28_local3 = LUI.sp_hud.gameInfo.cursorHintAttachmentDef()
	local f28_local4 = LUI.sp_hud.gameInfo.dropWeaponHintDef()
	local f28_local5 = LUI.sp_hud.gameInfo.invalidCmdHintDef()
	local f28_local6 = LUI.sp_hud.gameInfo.breathHintDef()
	local f28_local7 = LUI.sp_hud.gameInfo.zoomHintDef()
	local f28_local8 = LUI.sp_hud.gameInfo.toggleHybridHintDef()
	local f28_local9 = LUI.sp_hud.gameInfo.toggleThermalHintDef()
	self:addElement( f28_local1 )
	self:addElement( f28_local2 )
	self:addElement( f28_local3 )
	self:addElement( f28_local4 )
	self:addElement( f28_local5 )
	self:addElement( f28_local6 )
	self:addElement( f28_local7 )
	self:addElement( f28_local8 )
	self:addElement( f28_local9 )
	return self
end

local f0_local31 = function ()
	local self = LUI.UIElement.new()
	self.id = "deadQuoteContainerHudId"
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = true,
		rightAnchor = true
	} )
	self:animateToState( "default", 0 )
	self:addElement( LUI.sp_hud.gameInfo.deadQuoteDef() )
	return self
end

local f0_local32 = function ()
	local self = LUI.UIElement.new()
	self.id = "savingContainerHudId"
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = true,
		rightAnchor = true
	} )
	self:animateToState( "default", 0 )
	self:addElement( LUI.sp_hud.gameInfo.savingDef() )
	return self
end

local f0_local33 = function ()
	return {
		type = "hud",
		id = "hud_720_id"
	}
end

LUI.MenuBuilder.registerType( "hintsHudDef", f0_local30 )
LUI.MenuBuilder.registerType( "savingHudDef", f0_local32 )
LUI.MenuBuilder.registerType( "hud", f0_local29 )
LUI.MenuBuilder.registerDef( "hud_720", f0_local33 )
LUI.HudManager.registerHud( "hud_720" )
LockTable( _M )
