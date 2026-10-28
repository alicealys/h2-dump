local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = 0
f0_local1 = 1
f0_local2 = 0
local f0_local3 = 0.1
local f0_local4 = 35
local f0_local5 = 35
local f0_local6 = 2048
local f0_local7 = 4096
local f0_local8 = math.pi
local f0_local9 = 0
local f0_local10 = false
local f0_local11 = 1536
local f0_local12 = function ( f1_arg0, f1_arg1 )
	if f1_arg0.doRandomShake == true then
		return 
	end
	f1_arg0.doRandomShake = true
	local f1_local0 = f1_arg0:getChildById( "shakeContainerHudId" )
	if f1_local0 == nil then
		return 
	end
	local f1_local1 = f1_arg1.value
	local f1_local2 = 8
	for f1_local3 = 1, f1_local2, 1 do
		local f1_local6 = math.random( -10, 10 )
		local f1_local7 = math.random( -10, 10 )
		f1_local0:registerAnimationState( "shake" .. f1_local3, {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = true,
			left = f1_local7,
			right = f1_local7,
			top = f1_local6,
			bottom = f1_local6
		} )
	end
	local f1_local3 = 0
	local f1_local4 = 0
	local f1_local5 = {
		[0] = {
			"default",
			0
		}
	}
	local f1_local8 = 1
	while f1_local3 < f1_local1 do
		f1_local4 = math.random( 30, 70 )
		f1_local5[f1_local8] = {
			"shake" .. f1_local8 % f1_local2 + 1,
			f1_local4
		}
		f1_local3 = f1_local3 + f1_local4
		f1_local8 = f1_local8 + 1
	end
	f1_local5[f1_local8] = {
		"default",
		30
	}
	local f1_local7 = MBh.AnimateSequence( f1_local5 )
	f1_local7( f1_local0 )
	f1_arg0.doRandomShake = undefined
end

local f0_local13 = function ( f2_arg0 )
	if f2_arg0.targetRight ~= nil and f2_arg0.targetWidth ~= nil then
		f2_arg0:registerAnimationState( "current", {
			width = f2_arg0.targetWidth * f0_local0,
			right = f2_arg0.targetRight * f0_local0
		} )
	elseif f2_arg0.targetLeft ~= nil and f2_arg0.targetWidth ~= nil then
		f2_arg0:registerAnimationState( "current", {
			width = f2_arg0.targetWidth * f0_local0,
			left = f2_arg0.targetLeft * f0_local0
		} )
	elseif f2_arg0.targetLeft ~= nil and f2_arg0.targetRight ~= nil then
		f2_arg0:registerAnimationState( "current", {
			right = f2_arg0.targetRight * f0_local0,
			left = f2_arg0.targetLeft * f0_local0
		} )
	elseif f2_arg0.targetLeft ~= nil then
		f2_arg0:registerAnimationState( "current", {
			left = f2_arg0.targetLeft * f0_local0
		} )
	elseif f2_arg0.targetRight ~= nil then
		f2_arg0:registerAnimationState( "current", {
			right = f2_arg0.targetRight * f0_local0
		} )
	elseif f2_arg0.targetWidth ~= nil then
		f2_arg0:registerAnimationState( "current", {
			width = f2_arg0.targetWidth * f0_local0
		} )
	end
	f2_arg0:animateToState( "current" )
end

local f0_local14 = function ( f3_arg0, f3_arg1, f3_arg2 )
	if f3_arg0._state ~= f3_arg1 then
		f3_arg0._state = f3_arg1
		f3_arg0:animateToState( f3_arg1, f3_arg2 )
	end
end

local f0_local15 = function ( f4_arg0 )
	f4_arg0:registerAnimationState( "on", {
		alpha = f0_local1
	} )
	f4_arg0:registerAnimationState( "off", {
		alpha = f0_local2
	} )
	return f4_arg0
end

local f0_local16 = function ( f5_arg0, f5_arg1 )
	if f5_arg1.value then
		f0_local14( f5_arg0.dayLight, "off" )
		f0_local14( f5_arg0.nightLight, "on" )
	else
		f0_local14( f5_arg0.dayLight, "on" )
		f0_local14( f5_arg0.nightLight, "off" )
	end
end

local f0_local17 = function ( f6_arg0, f6_arg1, f6_arg2 )
	if f6_arg0 < f6_arg1 then
		return f6_arg1
	elseif f6_arg2 < f6_arg0 then
		return f6_arg2
	else
		return f6_arg0
	end
end

local f0_local18 = function ( f7_arg0 )
	local f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7, f7_local8 = Game.GetPlayerVectors()
	local f7_local9 = math.acos( f7_local0 )
	local f7_local10 = math.acos( f7_local8 )
	if f7_local1 < 0 then
		f7_local9 = math.pi - f7_local9 + math.pi
	end
	if f7_local2 > 0 then
		f7_local10 = math.pi - f7_local10 + math.pi
	end
	if f7_arg0.firstRun then
		f7_arg0.black:registerAnimationState( "off", {
			alpha = 0
		} )
		f0_local14( f7_arg0.black, "off", 0.25 )
		f7_arg0.forward.acosx = f7_local9
		f7_arg0.up.acosz = f7_local10
		f7_arg0.firstRun = false
	end
	local f7_local11 = nil
	local f7_local12 = math.abs( f7_local9 - f7_arg0.forward.acosx )
	if f0_local9 <= f7_local12 and f7_local12 <= f0_local8 then
		f7_local11 = math.acos( f0_local17( f7_local0 * f7_arg0.forward.x + f7_local1 * f7_arg0.forward.y + f7_local2 * f7_arg0.forward.z, -1, 1 ) )
		if f7_arg0.forward.acosx < f7_local9 then
			f7_local11 = -f7_local11
		end
	elseif f7_local12 == 0 then
		f7_local11 = 0
	else
		f7_local11 = f7_arg0.forward.delta
	end
	local f7_local13 = nil
	local f7_local14 = math.abs( f7_local10 - f7_arg0.up.acosz )
	if f0_local9 <= f7_local14 and f7_local14 <= f0_local8 then
		f7_local13 = math.acos( f0_local17( f7_local6 * f7_arg0.up.x + f7_local7 * f7_arg0.up.y + f7_local8 * f7_arg0.up.z, -1, 1 ) )
		if f7_local10 < f7_arg0.up.acosz then
			f7_local13 = -f7_local13
		end
	elseif f7_local14 == 0 then
		f7_local13 = 0
	else
		f7_local13 = f7_arg0.up.delta
	end
	f7_arg0.forward.delta = f7_arg0.forward.delta * (1 - f0_local3) + f7_local11 * f0_local3
	f7_arg0.up.delta = f7_arg0.up.delta * (1 - f0_local3) + f7_local13 * f0_local3
	f7_arg0.forward.x = f7_local0
	f7_arg0.forward.y = f7_local1
	f7_arg0.forward.z = f7_local2
	f7_arg0.forward.acosx = f7_local9
	f7_arg0.up.x = f7_local6
	f7_arg0.up.y = f7_local7
	f7_arg0.up.z = f7_local8
	f7_arg0.up.acosz = f7_local10
	local f7_local15 = f7_arg0.forward.delta * f0_local6
	local f7_local16 = f7_arg0.up.delta * f0_local7
	f7_local15 = f0_local17( f7_local15, -f0_local4, f0_local4 )
	f7_local16 = f0_local17( f7_local16, -f0_local5, f0_local5 )
	local f7_local17 = f0_local11 * f0_local0
	f7_arg0.lensShadow:registerAnimationState( "move", {
		left = -f7_local17 / 2 + f7_local15,
		top = -f7_local17 / 2 + f7_local16,
		width = f7_local17,
		height = f7_local17
	} )
	f7_arg0.lensShadow:animateToState( "move", 0 )
end

local f0_local19 = function ( f8_arg0 )
	local f8_local0 = {
		[false] = "off",
		[true] = "on"
	}
	local f8_local1 = Game.CheckWeapLockBlink( 4.5 )
	local f8_local2 = Game.CheckWeapLockBlink( 0 )
	local f8_local3 = Game.CheckWeapLockAttackTop()
	local f8_local4 = Game.CheckWeapLockAttackDirect()
	local f8_local5 = Game.GetPlayerClipAmmo( 1 ) > 0
	local f8_local6 = f8_local2
	local f8_local7
	if not f8_local3 then
		f8_local7 = not f8_local4
	else
		f8_local7 = false
	end
	local f8_local8 = f8_local3
	local f8_local9 = not f8_local5
	local f8_local10
	if not f8_local2 then
		f8_local10 = not f8_local3
	else
		f8_local10 = false
	end
	if f8_local7 then
		f0_local10 = not f0_local10
	else
		f0_local10 = f8_arg0.lockStatus
	end
	f0_local14( f8_arg0.lockOn, f8_local0[f8_local1] )
	f0_local14( f8_arg0.lightClu, f8_local0[f8_local7] )
	f0_local14( f8_arg0.attackTop, f8_local0[f8_local8] )
	f0_local14( f8_arg0.direct, f8_local0[f8_local4] )
	f0_local14( f8_arg0.rocketOn, f8_local0[f8_local5] )
	f0_local14( f8_arg0.noRocket, f8_local0[f8_local9] )
	f0_local14( f8_arg0.lockBox, f8_local0[f0_local10] )
	f0_local14( f8_arg0.reticle, f8_local0[f8_local10] )
	if f8_arg0.lockStatus then
		local f8_local11 = nil
		if f0_local10 then
			f8_local11 = 1
		else
			f8_local11 = 0
		end
		Engine.SetDvarFloat( "vehHudTargetingCornersAlpha", f8_local11 )
	end
end

local f0_local20 = function ( f9_arg0 )
	local f9_local0 = Engine.GetAspectRatio()
	local f9_local1 = f9_local0 / 1.78
	if f9_local1 ~= f0_local0 then
		f0_local0 = f9_local1
		local f9_local2 = 1.33
		if f9_local2 <= f9_local0 then
			Engine.SetDvarFloat( "vehHudTargetScreenEdgeClampBufferLeft", 145 / f9_local0 / f9_local2 )
			Engine.SetDvarFloat( "vehHudTargetScreenEdgeClampBufferRight", 145 / f9_local0 / f9_local2 )
		else
			Engine.SetDvarFloat( "vehHudTargetScreenEdgeClampBufferLeft", 145 )
			Engine.SetDvarFloat( "vehHudTargetScreenEdgeClampBufferRight", 145 )
		end
		Engine.SetDvarFloat( "vehHudTargetScreenEdgeClampBufferTop", 139 )
		Engine.SetDvarFloat( "vehHudTargetScreenEdgeClampBufferBottom", 134 )
		if f9_arg0.overlayElements ~= nil then
			for f9_local6, f9_local7 in pairs( f9_arg0.overlayElements ) do
				f0_local13( f9_local7 )
			end
		end
		local f9_local3 = f9_arg0:getFirstDescendentById( "javelinGrainId" )
		f9_local3:registerAnimationState( "default", {
			width = 793.6 * f9_local1,
			height = 793.6
		} )
		f9_local3:animateToState( "default" )
	end
end

local f0_local21 = function ( f10_arg0 )
	if f10_arg0.update then
		f0_local20( f10_arg0 )
		f0_local19( f10_arg0 )
		f0_local18( f10_arg0 )
	end
end

local f0_local22 = function ( f11_arg0, f11_arg1 )
	f11_arg0.update = false
end

local f0_local23 = function ( f12_arg0, f12_arg1 )
	f12_arg0.update = true
end

local f0_local24 = function ( f13_arg0, f13_arg1 )
	f0_local21( f13_arg0 )
end

local f0_local25 = function ( f14_arg0, f14_arg1 )
	f14_arg0.lockStatus = f14_arg1.value ~= 0
	Engine.SetDvarBool( "vehHudUseTargetingCorners", f14_arg0.lockStatus )
end

local f0_local26 = function ( f15_arg0 )
	if f15_arg0.on then
		return 
	elseif Game.IsVideoPlaying() then
		return 
	else
		f15_arg0.timer = LUI.UITimer.new( 10, "timer_event", "hud", false )
		f15_arg0.update = true
		f15_arg0.lockStatus = false
		f15_arg0:registerEventHandler( "timer_event", f0_local24 )
		f15_arg0:addElement( f15_arg0.timer )
		f15_arg0:registerEventHandler( "toggle_pause", f0_local22 )
		f15_arg0:registerEventHandler( "toggle_pause_off", f0_local23 )
		f15_arg0:registerOmnvarHandler( "ui_javelin_lock_status", f0_local25 )
		f15_arg0.firstRun = true
		f0_local14( f15_arg0, "on" )
		f15_arg0.on = true
		f0_local0 = 0
		f0_local21( f15_arg0 )
	end
end

local f0_local27 = function ( f16_arg0 )
	if not f16_arg0.on then
		return 
	elseif f16_arg0.timer ~= nil then
		LUI.UITimer.Stop( f16_arg0.timer )
		f16_arg0.timer:close()
		f16_arg0.timer = nil
	end
	f16_arg0.black:registerAnimationState( "on", {
		alpha = 1
	} )
	f0_local14( f16_arg0.black, "on" )
	f0_local14( f16_arg0, "off" )
	f16_arg0.on = false
end

local f0_local28 = function ( f17_arg0, f17_arg1 )
	if f17_arg1.newValue == 1 then
		f0_local26( f17_arg0 )
	else
		f0_local27( f17_arg0 )
	end
end

local f0_local29 = function ( f18_arg0 )
	f18_arg0.overlayElements = {}
	f18_arg0:registerAnimationState( "off", {
		alpha = 0
	} )
	f18_arg0:registerAnimationState( "on", {
		alpha = 1
	} )
	local f18_local0 = Engine.GetAspectRatio() / 1.78
	local self = LUI.UIImage.new( {
		width = 793.6 * f18_local0,
		height = 793.6,
		material = RegisterMaterial( "javelin_overlay_grain" ),
		alpha = 0.5
	} )
	self.id = "javelinGrainId"
	f18_arg0:addElement( self )
	local f18_local2 = LUI.UIImage.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		material = RegisterMaterial( "hud_javelin_bg_fixed" ),
		alpha = 1
	} )
	f18_local2.id = "javelinBg2Id"
	f18_arg0:addElement( f18_local2 )
	local f18_local3 = LUI.UIElement.new( Engine.IsConsoleGame() and {
		leftAnchor = false,
		rightAnchor = false,
		topAnchor = false,
		bottomAnchor = false,
		left = -360 * Engine.GetAspectRatio(),
		right = 360 * Engine.GetAspectRatio(),
		top = -360,
		bottom = 360
	} or {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		left = 0,
		right = 0,
		top = 0,
		bottom = 0
	} )
	f18_local3.id = "shakeContainerHudId"
	f18_local3:animateToState( "default" )
	f18_arg0:addElement( f18_local3 )
	table.insert( f18_arg0.overlayElements, f18_local3 )
	local f18_local4 = LUI.UIImage.new( {
		height = 512,
		material = RegisterMaterial( "h1_javelin_overlay_distort" )
	} )
	f18_local4.targetWidth = 1024
	f18_local4.id = "javelinDistortId"
	f18_local3:addElement( f18_local4 )
	table.insert( f18_arg0.overlayElements, f18_local4 )
	local f18_local5 = LUI.UIElement.new( {} )
	f18_local5.id = "javelinCrosshairsId"
	f18_local5:setupOwnerdraw( CoD.Ownerdraw.CGHudTargetsJavelin )
	f18_local5:registerAnimationState( "default", {
		alpha = 0.5
	} )
	f18_local5:animateToState( "default", 0 )
	f18_local3:addElement( f18_local5 )
	local f18_local6 = LUI.UIImage.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		material = RegisterMaterial( "hud_javelin_bg" ),
		alpha = 1
	} )
	f18_local6.id = "javelinBgId"
	f18_local3:addElement( f18_local6 )
	local f18_local7 = LUI.UIImage.new( {
		height = 152,
		material = RegisterMaterial( "h1_hud_javelin_active_area" ),
		alpha = 0.5
	} )
	f18_local7.targetWidth = 304
	f18_local7.id = "javelinReticleId"
	f18_local3:addElement( f18_local7 )
	table.insert( f18_arg0.overlayElements, f18_local7 )
	local f18_local8 = LUI.UIImage.new( {
		height = 152,
		material = RegisterMaterial( "hud_javelin_lock_box" ),
		alpha = 0.25
	} )
	f18_local8.targetWidth = 304
	f18_local8.id = "javelinLockBoxId"
	f18_local3:addElement( f18_local8 )
	table.insert( f18_arg0.overlayElements, f18_local8 )
	local f18_local9 = LUI.UIImage.new( {
		height = 128,
		bottom = -198,
		material = RegisterMaterial( "hud_javelin_day_on" ),
		alpha = 1
	} )
	f18_local9.targetWidth = 128
	f18_local9.targetRight = -268
	f18_local9.id = "javelinLightDayId"
	f18_local3:addElement( f18_local9 )
	table.insert( f18_arg0.overlayElements, f18_local9 )
	local f18_local10 = LUI.UIImage.new( {
		height = 128,
		bottom = -200,
		material = RegisterMaterial( "hud_javelin_lock_on" ),
		alpha = 1
	} )
	f18_local10.targetWidth = 128
	f18_local10.targetLeft = 250
	f18_local10.id = "javelinLightLockId"
	f18_local3:addElement( f18_local10 )
	table.insert( f18_arg0.overlayElements, f18_local10 )
	local f18_local11 = LUI.UIImage.new( {
		height = 128,
		bottom = -85,
		material = RegisterMaterial( "hud_javelin_top_on" ),
		alpha = f0_local2
	} )
	f18_local11.targetWidth = 128
	f18_local11.targetLeft = 389
	f18_local11.id = "javelinLightTopId"
	f18_local3:addElement( f18_local11 )
	table.insert( f18_arg0.overlayElements, f18_local11 )
	local f18_local12 = LUI.UIImage.new( {
		height = 128,
		top = -63,
		material = RegisterMaterial( "hud_javelin_dir_on" ),
		alpha = f0_local2
	} )
	f18_local12.targetWidth = 128
	f18_local12.targetLeft = 392
	f18_local12.id = "javelinLightDirId"
	f18_local3:addElement( f18_local12 )
	table.insert( f18_arg0.overlayElements, f18_local12 )
	local f18_local13 = LUI.UIImage.new( {
		height = 128,
		top = 206,
		material = RegisterMaterial( "hud_javelin_norocket_on" ),
		alpha = f0_local2
	} )
	f18_local13.targetWidth = 128
	f18_local13.targetLeft = 251
	f18_local13.id = "javelinLightNoRocketId"
	f18_local3:addElement( f18_local13 )
	table.insert( f18_arg0.overlayElements, f18_local13 )
	local f18_local14 = LUI.UIImage.new( {
		height = 128,
		top = 209,
		material = RegisterMaterial( "hud_javelin_rocket_on" ),
		alpha = 1
	} )
	f18_local14.targetWidth = 128
	f18_local14.targetLeft = 40
	f18_local14.id = "javelinLightRocketId"
	f18_local3:addElement( f18_local14 )
	table.insert( f18_arg0.overlayElements, f18_local14 )
	local f18_local15 = LUI.UIImage.new( {
		height = 128,
		top = -62,
		material = RegisterMaterial( "hud_javelin_clu_on" ),
		alpha = 1
	} )
	f18_local15.targetWidth = 128
	f18_local15.targetRight = -406
	f18_local15.id = "javelinLightCluId"
	f18_local3:addElement( f18_local15 )
	table.insert( f18_arg0.overlayElements, f18_local15 )
	local f18_local16 = LUI.UIImage.new( {
		height = 128,
		bottom = -85,
		material = RegisterMaterial( "hud_javelin_night_on" ),
		alpha = f0_local2
	} )
	f18_local16.targetWidth = 128
	f18_local16.targetRight = -403
	f18_local16.id = "javelinLightNightId"
	f18_local3:addElement( f18_local16 )
	table.insert( f18_arg0.overlayElements, f18_local16 )
	local f18_local17 = LUI.UIImage.new( {
		width = f0_local11 * f18_local0,
		height = f0_local11,
		alpha = 1,
		material = RegisterMaterial( "h1_hud_javelin_lens_shadow" )
	} )
	f18_local17.id = "javelinLensShadowId"
	f18_arg0:addElement( f18_local17 )
	local f18_local18 = LUI.UIImage.new( {
		height = 1638.4,
		material = RegisterMaterial( "h1_hud_javelin_eyepiece" ),
		alpha = 1
	} )
	f18_local18.targetWidth = 1638.4
	f18_local18.id = "javelinEyepieceId"
	f18_arg0:addElement( f18_local18 )
	table.insert( f18_arg0.overlayElements, f18_local18 )
	local f18_local19 = LUI.UIImage.new( {
		width = f0_local11,
		height = f0_local11,
		red = 0,
		green = 0,
		blue = 0,
		alpha = 1,
		material = nil
	} )
	f18_local19.id = "javelinBlackId"
	f18_arg0:addElement( f18_local19 )
	f18_arg0:registerOmnvarHandler( "ui_nightvision", f0_local16 )
	f18_arg0:registerEventHandler( "nightVisionThermalOverwrite", f0_local16 )
	f18_arg0.lockOn = f0_local15( f18_local10 )
	f18_arg0.attackTop = f0_local15( f18_local11 )
	f18_arg0.direct = f0_local15( f18_local12 )
	f18_arg0.noRocket = f0_local15( f18_local13 )
	f18_arg0.rocketOn = f0_local15( f18_local14 )
	f18_arg0.lightClu = f0_local15( f18_local15 )
	f18_arg0.dayLight = f0_local15( f18_local9 )
	f18_arg0.nightLight = f0_local15( f18_local16 )
	f18_arg0.lockBox = f0_local15( f18_local8 )
	f18_arg0.reticle = f0_local15( f18_local7 )
	f18_arg0.lensShadow = f18_local17
	f18_arg0.black = f18_local19
	f18_arg0.forward = {
		acosx = 0,
		delta = 0,
		x = 0,
		y = 0,
		z = 0
	}
	f18_arg0.up = {
		acosz = 0,
		delta = 0,
		x = 0,
		y = 0,
		z = 0
	}
	f18_arg0.firstRun = true
	f18_arg0:setupUIIntWatch( "JavelinActive" )
	f18_arg0:registerEventHandler( "int_watch_alert", f0_local28 )
	f0_local14( f18_arg0, "off" )
	f0_local20( f18_arg0 )
	f18_arg0:registerOmnvarHandler( "ui_shake", f0_local12 )
	f0_local12( f18_arg0, {
		name = "ui_shake",
		value = Game.GetOmnvar( "ui_shake" )
	} )
	return f18_arg0
end

local f0_local30 = function ( f19_arg0, f19_arg1 )
	if f19_arg1.value and not f19_arg0.ready then
		f0_local29( f19_arg0 )
		f19_arg0.ready = true
	end
end

LUI.MenuBuilder.registerType( "javelinHudDef", function ()
	local self = LUI.UIElement.new( Engine.IsConsoleGame() and {
		leftAnchor = false,
		rightAnchor = false,
		topAnchor = false,
		bottomAnchor = false,
		left = -360 * Engine.GetAspectRatio(),
		right = 360 * Engine.GetAspectRatio(),
		top = -360,
		bottom = 360
	} or {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		left = 0,
		right = 0,
		top = 0,
		bottom = 0
	} )
	self.id = "javelinRootId"
	self:registerOmnvarHandler( "ui_javelin", f0_local30 )
	f0_local30( self, {
		name = "ui_javelin",
		value = Game.GetOmnvar( "ui_javelin" )
	} )
	return self
end )
LockTable( _M )
