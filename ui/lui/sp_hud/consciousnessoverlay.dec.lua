local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local2 = package.seeall
f0_local0( f0_local1, f0_local2 )
CoD.PrintModuleLoad( _NAME )
f0_local0 = {}
function registerKeyframes( f1_arg0 )
	f0_local0[#f0_local0 + 1] = {
		{
			keyframeTable = f1_arg0
		}
	}
end

f0_local1 = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
	local f2_local0 = f2_arg0.keyTime and f2_arg0.keyTime or 0
	if f2_arg3 then
		f2_local0 = f2_local0 * f2_arg3
	end
	if f2_arg0.keyTimeAdditive then
		return f2_arg2 + f2_local0
	else
		return f2_arg1 + f2_local0
	end
end

f0_local2 = function ( f3_arg0, f3_arg1 )
	if f3_arg1 == nil then
		f3_arg1 = 0
	end
	local f3_local0 = f3_arg1
	local f3_local1 = f3_arg1
	for f3_local6, f3_local7 in ipairs( f3_arg0 ) do
		local f3_local8 = f3_arg1
		f3_arg1 = f0_local1( f3_local7, f3_local0, f3_arg1 )
		if f3_local7.keyframeTable then
			f3_arg1 = f0_local2( f3_local7.keyframeTable, f3_arg1 )
		end
		if f3_local7.durationOverride then
			local f3_local5 = f3_arg1 - f3_local8
			if f3_local5 > 0 then
				f3_local7.timeScale = f3_local7.durationOverride / f3_local5
				f3_arg1 = f3_local8 + f3_local7.durationOverride
			end
		end
		f3_local1 = math.max( f3_arg1, f3_local1 )
	end
	return f3_local1
end

local f0_local3 = function ( f4_arg0, f4_arg1, f4_arg2, f4_arg3 )
	if f4_arg2 == nil then
		f4_arg2 = 0
	end
	if f4_arg3 == nil then
		f4_arg3 = 1
	end
	local f4_local0 = f4_arg2
	local f4_local1 = f4_arg2
	for f4_local5, f4_local6 in ipairs( f4_arg0 ) do
		f4_arg2 = f0_local1( f4_local6, f4_local0, f4_arg2, f4_arg3 )
		if f4_local6.state then
			table.insert( f4_arg1[f4_local6.partName].collapsedKeyframes, {
				keyTime = f4_arg2,
				state = f4_local6.state
			} )
		elseif f4_local6.keyframeTable then
			f4_arg2 = f0_local3( f4_local6.keyframeTable, f4_arg1, f4_arg2, f4_arg3 * (f4_local6.timeScale or 1) )
		end
		f4_local1 = math.max( f4_arg2, f4_local1 )
	end
	return f4_local1
end

local f0_local4 = function ( f5_arg0, f5_arg1, f5_arg2 )
	if not f5_arg1 or #f5_arg1 <= f5_arg0 then
		return nil
	end
	local f5_local0 = math.max( 1, f5_arg0 )
	local f5_local1 = f5_arg1[f5_local0].keyTime
	while f5_local1 < f5_arg2 and f5_local0 < #f5_arg1 do
		f5_local0 = f5_local0 + 1
		f5_local1 = f5_arg1[f5_local0].keyTime
	end
	if f5_local0 == f5_arg0 then
		return nil
	end
	return f5_local0, math.max( f5_local1 - f5_arg2, 0 )
end

local f0_local5 = function ( f6_arg0 )
	if f6_arg0.timer == nil then
		return 
	else
		LUI.UITimer.Stop( f6_arg0.timer )
		f6_arg0.timer:close()
		f6_arg0.timer = nil
		f6_arg0:animateToState( "off" )
	end
end

local f0_local6 = function ( f7_arg0 )
	local f7_local0 = Game.GetTime() / 1000
	if f7_arg0.isPaused then
		f7_arg0.time = f7_local0
		return 
	end
	local f7_local1 = f7_local0 - f7_arg0.time
	f7_arg0.time = f7_local0
	f7_arg0.localTime = f7_arg0.localTime + f7_local1
	for f7_local6, f7_local7 in pairs( f7_arg0.partsInfo ) do
		local f7_local8, f7_local9 = f0_local4( f7_local7.keyIndex, f7_local7.collapsedKeyframes, f7_arg0.localTime )
		if f7_local8 ~= nil then
			local f7_local5 = f7_local7.collapsedKeyframes[f7_local8].state
			f7_local7.keyIndex = f7_local8
			f7_local7.uiElem:registerAnimationState( "keyframe", f7_local5 )
			f7_local7.uiElem:animateToState( "keyframe", f7_local9 * 1000 )
		end
	end
	if f7_arg0.finalTime < f7_arg0.localTime then
		f0_local5( f7_arg0 )
	end
end

local f0_local7 = function ( f8_arg0, f8_arg1 )
	f0_local6( f8_arg0 )
end

local f0_local8 = function ( f9_arg0, f9_arg1 )
	f9_arg0.isPaused = true
end

local f0_local9 = function ( f10_arg0, f10_arg1 )
	f10_arg0.isPaused = false
end

local f0_local10 = function ( f11_arg0, f11_arg1 )
	f11_arg0.finalTime = 0
	for f11_local3, f11_local4 in pairs( f11_arg0.partsInfo ) do
		f11_local4.keyIndex = 0
		f11_local4.collapsedKeyframes = {}
		if f11_arg0.timer == nil then
			f11_local4.uiElem:animateToState( "default" )
		end
	end
	f0_local2( f0_local0[f11_arg1] )
	f11_arg0.finalTime = f0_local3( f0_local0[f11_arg1], f11_arg0.partsInfo )
	for f11_local3, f11_local4 in pairs( f11_arg0.partsInfo ) do
		table.sort( f11_local4.collapsedKeyframes, function ( f12_arg0, f12_arg1 )
			return f12_arg0.keyTime < f12_arg1.keyTime
		end )
	end
	f11_arg0.timer = LUI.UITimer.new( 10, "recover_timer_event", "hud", false )
	f11_arg0:registerEventHandler( "recover_timer_event", f0_local7 )
	f11_arg0:addElement( f11_arg0.timer )
	f11_arg0:registerEventHandler( "toggle_pause", f0_local8 )
	f11_arg0:registerEventHandler( "toggle_pause_off", f0_local9 )
	f11_arg0.localTime = 0
	f11_arg0.time = Game.GetTime() / 1000
	f11_arg0:animateToState( "on" )
	f0_local6( f11_arg0 )
end

local f0_local11 = function ( f13_arg0, f13_arg1 )
	if f13_arg1.value and f13_arg1.value ~= 0 then
		f0_local10( f13_arg0, f13_arg1.value )
	else
		f0_local5( f13_arg0 )
	end
end

local f0_local12 = function ( f14_arg0 )
	if f14_arg0.isInit then
		return 
	else
		f14_arg0.isInit = true
		local self = LUI.UIElement.new( {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = true,
			alpha = 1
		} )
		self.id = "recoverId"
		local f14_local1 = {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			alpha = 0,
			height = 720,
			material = RegisterMaterial( "overlay_hunted_black" )
		}
		local f14_local2 = LUI.UIImage.new( f14_local1 )
		f14_local2:registerAnimationState( "default", f14_local1 )
		f14_local2.id = "blackScreenId"
		local f14_local3 = {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			alpha = 0,
			height = 720
		}
		local f14_local4 = LUI.UIElement.new( f14_local3 )
		f14_local4:registerAnimationState( "default", f14_local3 )
		f14_local4.id = "vignetteId"
		local f14_local5 = LUI.UIImage.new( {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = true,
			alpha = 0.2,
			material = RegisterMaterial( "h1_hud_overlay_eyelids_vignette" )
		} )
		f14_local5:setupConsciousnessVignette()
		f14_local5.id = "vignetteDarkId"
		f14_local4:addElement( f14_local5 )
		local f14_local6 = LUI.UIImage.new( {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = true,
			alpha = 1,
			material = RegisterMaterial( "h1_hud_overlay_eyelids_vignette_blur" )
		} )
		f14_local6.id = "vignetteBlurId"
		f14_local6:setup8SliceOverlayImage( 0, 0, 0.3, 0.3 )
		f14_local4:addElement( f14_local6 )
		local f14_local7 = {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			alpha = 0,
			height = 720
		}
		local f14_local8 = LUI.UIElement.new( f14_local7 )
		f14_local8:registerAnimationState( "default", f14_local7 )
		f14_local8.id = "eyelidUpperId"
		local f14_local9 = LUI.UIImage.new( {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = false,
			alpha = 1,
			top = 0,
			bottom = 360,
			material = RegisterMaterial( "h1_hud_overlay_eyelids_blur" )
		} )
		f14_local9.id = "eyelids_blur_topId"
		f14_local8:addElement( f14_local9 )
		local f14_local10 = LUI.UIImage.new( {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = false,
			alpha = 0.2,
			top = 0,
			bottom = 360,
			material = RegisterMaterial( "h1_hud_overlay_eyelids" )
		} )
		f14_local10:setupConsciousnessVignette()
		f14_local10.id = "eyelids_topId"
		f14_local8:addElement( f14_local10 )
		local f14_local11 = {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			alpha = 0,
			zRot = 180,
			height = 720
		}
		local f14_local12 = LUI.UIElement.new( f14_local11 )
		f14_local12:registerAnimationState( "default", f14_local11 )
		f14_local12.id = "eyelidLowerId"
		local f14_local13 = LUI.UIImage.new( {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = false,
			alpha = 1,
			top = 0,
			bottom = 360,
			material = RegisterMaterial( "h1_hud_overlay_eyelids_blur" )
		} )
		f14_local13.id = "eyelids_blur_bottomId"
		f14_local12:addElement( f14_local13 )
		local f14_local14 = LUI.UIImage.new( {
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = false,
			alpha = 0.2,
			top = 0,
			bottom = 360,
			material = RegisterMaterial( "h1_hud_overlay_eyelids" )
		} )
		f14_local14:setupConsciousnessVignette()
		f14_local14.id = "eyelids_bottomId"
		f14_local12:addElement( f14_local14 )
		self.partsInfo = {
			upperEyelid = {
				uiElem = f14_local8
			},
			lowerEyelid = {
				uiElem = f14_local12
			},
			vignette = {
				uiElem = f14_local4
			},
			blackScreen = {
				uiElem = f14_local2
			}
		}
		self:addElement( f14_local8 )
		self:addElement( f14_local12 )
		self:addElement( f14_local4 )
		self:addElement( f14_local2 )
		f14_arg0:addElement( self )
		self:registerAnimationState( "on", {
			alpha = 1
		} )
		self:registerAnimationState( "off", {
			alpha = 0
		} )
		self:animateToState( "off" )
		self:registerOmnvarHandler( "ui_consciousness_play", f0_local11 )
	end
end

local f0_local13 = function ( f15_arg0, f15_arg1 )
	if f15_arg1.value then
		f0_local12( f15_arg0 )
	end
end

LUI.MenuBuilder.registerType( "consciousnessOverlayType", function ()
	local self = LUI.UIElement.new( Engine.IsConsoleGame() and {
		leftAnchor = false,
		rightAnchor = false,
		topAnchor = false,
		bottomAnchor = false,
		alpha = 1,
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
		bottom = 0,
		alpha = 1
	} )
	self.id = "consciousnessRootId"
	self.isInit = false
	self:registerOmnvarHandler( "ui_consciousness_init", f0_local13 )
	return self
end )
LockTable( _M )
