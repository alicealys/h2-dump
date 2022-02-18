local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = false
f0_local1 = 170
f0_local2 = 170
local f0_local3 = 250
local f0_local4 = 0.05
local f0_local5 = 50
local f0_local6 = 27.5
LUI.MenuBuilder.registerType( "astronautHelmetHudDef", function ()
	local self = LUI.UIElement.new( Engine.IsConsoleGame() and {
		leftAnchor = false,
		rightAnchor = false,
		topAnchor = false,
		bottomAnchor = false,
		left = -360 * Engine.GetAspectRatio(),
		right = 360 * Engine.GetAspectRatio(),
		top = -360,
		bottom = 360,
		alpha = 0
	} or {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
		alpha = 0
	} )
	self.id = "astronautHelmetRootId"
	self.isInit = false
	self:registerAnimationState( "default", {
		alpha = 0
	} )
	self:registerAnimationState( "fadeIn", {
		alpha = 1
	} )
	self.update = function ( f2_arg0 )
		local f2_local0 = Game.PlayerViewPitchRatioInClampRange()
		local f2_local1 = Game.PlayerViewYawRatioInClampRange()
		local f2_local2 = Game.PlayerViewPitchClampRange()
		local f2_local3 = (1 - Game.PlayerViewYawClampRange() / f0_local5) * f0_local1
		local f2_local4 = (1 - f2_local2 / f0_local6) * f0_local2
		f2_arg0.vignette:registerAnimationState( "update", {
			left = (1 - f2_local1) / f0_local4 * f0_local1 * -1 - f2_local3,
			right = f2_local1 / f0_local4 * f0_local1 + f2_local3,
			top = f2_local0 / f0_local4 * f0_local2 * -1 - f2_local4,
			bottom = (1 - f2_local0) / f0_local4 * f0_local2 + f2_local4,
			topAnchor = true,
			rightAnchor = true,
			bottomAnchor = true,
			leftAnchor = true
		} )
		f2_arg0.vignette:animateToState( "update", 0 )
	end
	
	self.setOn = function ()
		if not f0_local0 then
			self:animateToState( "fadeIn", 0 )
		end
	end
	
	self.setOff = function ()
		self:animateToState( "default", 0 )
	end
	
	self.tryInit = function ()
		if self.isInit ~= nil and not self.isInit then
			self.isInit = true
			local f5_local0 = CoD.CreateState( 0, 0, 170, 170, CoD.AnchorTypes.TopLeft )
			f5_local0.alpha = 1
			f5_local0.material = RegisterMaterial( "h2_overlays_astronaut_blur" )
			local self = LUI.UIImage.new( f5_local0 )
			self.leftBlur = self
			self:addElement( self )
			local f5_local2 = CoD.CreateState( -170, 0, 0, 170, CoD.AnchorTypes.TopRight )
			f5_local2.alpha = 1
			f5_local2.zRot = -90
			f5_local2.material = RegisterMaterial( "h2_overlays_astronaut_blur" )
			local f5_local3 = LUI.UIImage.new( f5_local2 )
			self.rightBlur = f5_local3
			self:addElement( f5_local3 )
			local f5_local4 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
			f5_local4.alpha = 1
			local f5_local5 = LUI.UIElement.new( f5_local4 )
			self.vignette = f5_local5
			self:addElement( f5_local5 )
			local f5_local6 = CoD.CreateState( 0, 0, f0_local1, f0_local2, CoD.AnchorTypes.TopLeft )
			f5_local6.alpha = 1
			f5_local6.material = RegisterMaterial( "h2_overlays_astronaut_vignetting_corner" )
			local f5_local7 = LUI.UIImage.new( f5_local6 )
			self.vignette.topLeft = f5_local7
			self.vignette:addElement( f5_local7 )
			local f5_local8 = CoD.CreateState( -f0_local1, 0, 0, f0_local2, CoD.AnchorTypes.TopRight )
			f5_local8.alpha = 1
			f5_local8.zRot = -90
			f5_local8.material = RegisterMaterial( "h2_overlays_astronaut_vignetting_corner" )
			local f5_local9 = LUI.UIImage.new( f5_local8 )
			self.vignette.topRight = f5_local9
			self.vignette:addElement( f5_local9 )
			local f5_local10 = CoD.CreateState( 0, -f0_local3, 0, 0, CoD.AnchorTypes.BottomLeftRight )
			f5_local10.alpha = 1
			f5_local10.material = RegisterMaterial( "h2_overlays_astronaut_vignetting_bottom" )
			local f5_local11 = LUI.UIImage.new( f5_local10 )
			f5_local11:setup3SliceRatio( 1487.2, 0.48 )
			self.vignette.bottom = f5_local11
			self.vignette:addElement( f5_local11 )
			local f5_local12 = CoD.CreateState( 0, -341.3, 0, 0, CoD.AnchorTypes.BottomLeftRight )
			f5_local12.alpha = 1
			f5_local12.material = RegisterMaterial( "h2_overlays_astronaut_blur_bottom" )
			local f5_local13 = LUI.UIImage.new( f5_local12 )
			f5_local13:setup3SliceRatio( 654.67, 0.48 )
			self.vignette.bottomBlur = f5_local13
			self.vignette:addElement( f5_local13 )
			self.updateTimer = LUI.UITimer.new( 1, "update_astronaut_overlay", nil, false, false, false, false, true )
			self:addElement( self.updateTimer )
			self:registerEventHandler( "update_astronaut_overlay", self.update )
		end
	end
	
	return self
end )
LockTable( _M )
