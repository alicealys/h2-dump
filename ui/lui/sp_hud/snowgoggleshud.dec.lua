local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.MenuBuilder.registerType( "snowGogglesHudDef", function ()
	local self = LUI.UIElement.new( Engine.IsConsoleGame() and {
		leftAnchor = false,
		rightAnchor = false,
		topAnchor = false,
		bottomAnchor = false,
		left = -360 * Engine.GetAspectRatio(),
		right = 360 * Engine.GetAspectRatio(),
		top = -360,
		bottom = 360,
		alpha = 1
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
	self.id = "snowGogglesRootId"
	self.isInit = false
	self:registerAnimationState( "default", {
		alpha = 1
	} )
	self:registerAnimationState( "fadeout", {
		alpha = 0
	} )
	self:setUseGameTime( true )
	self.putOn = function ()
		self.carry:animateInSequence( {
			{
				"up",
				0
			},
			{
				"up",
				145
			},
			{
				"midDown",
				240,
				true,
				true,
				false,
				LUI.Easing.InOutQuadratic
			},
			{
				"down",
				80,
				true,
				true,
				false,
				LUI.Easing.InOutQuadratic
			},
			{
				"shakeUp",
				80,
				true,
				true,
				false,
				LUI.Easing.InOutQuadratic
			},
			{
				"shakeDown",
				100,
				true,
				true,
				false,
				LUI.Easing.InOutQuadratic
			},
			{
				"shakeUp",
				80,
				true,
				true,
				false,
				LUI.Easing.InOutQuadratic
			},
			{
				"down",
				75,
				true,
				true,
				false,
				LUI.Easing.InOutQuadratic
			}
		} )
		self.frame:animateInSequence( {
			{
				"frameUpTight",
				220
			},
			{
				"frameUpLarge",
				60
			},
			{
				"frameUpLarge",
				50
			},
			{
				"frameDown",
				1500
			}
		} )
	end
	
	self.putOnSnowmobile = function ()
		self.carry:animateInSequence( {
			{
				"up",
				0
			},
			{
				"up",
				90
			},
			{
				"midDown",
				240,
				true,
				true,
				false,
				LUI.Easing.InOutQuadratic
			},
			{
				"down",
				80,
				true,
				true,
				false,
				LUI.Easing.InOutQuadratic
			}
		} )
		if Engine.IsPC() then
			self.frame:animateInSequence( {
				{
					"frameUpTight",
					120
				},
				{
					"frameUpLarge",
					60
				},
				{
					"frameUpLarge",
					50
				},
				{
					"frameDown",
					150
				}
			} )
		end
	end
	
	self.setOn = function ()
		self.carry:animateInSequence( {
			{
				"down",
				0
			}
		} )
		self.frame:animateInSequence( {
			{
				"frameDown",
				0
			}
		} )
	end
	
	self.setOff = function ()
		self.carry:animateInSequence( {
			{
				"up",
				0
			}
		} )
		self.frame:animateInSequence( {
			{
				"frameUpLarge",
				0
			}
		} )
	end
	
	self.putOff = function ()
		self.carry:animateInSequence( {
			{
				"down",
				160
			},
			{
				"midUp",
				160
			},
			{
				"up",
				240,
				true,
				false,
				false,
				LUI.Easing.InQuadratic
			}
		} )
		self.frame:animateInSequence( {
			{
				"frameDown",
				160
			},
			{
				"frameUpLarge",
				20
			}
		} )
	end
	
	self.fadeOut = function ()
		self:animateToState( "fadeout", 120 )
	end
	
	self.fadeIn = function ()
		self:animateToState( "default", 300 )
	end
	
	self.tryInit = function ()
		if self.isInit ~= nil and not self.isInit then
			self.isInit = true
			local self = LUI.UIElement.new( {
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
			self.id = "cheatContainerId"
			self:registerAnimationState( "cheatOff", {
				alpha = 1
			} )
			self:registerAnimationState( "cheatOn", {
				alpha = 0
			} )
			self:setUseGameTime( true )
			self:addElement( self )
			
			local carry = LUI.UIElement.new( {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = 0,
				right = 0,
				top = -1400,
				bottom = -680
			} )
			carry:setUseGameTime( true )
			carry:registerAnimationState( "up", {
				top = -1400,
				bottom = -680
			} )
			carry:registerAnimationState( "midUp", {
				top = -600,
				bottom = 120
			} )
			carry:registerAnimationState( "midDown", {
				top = -500,
				bottom = 220
			} )
			carry:registerAnimationState( "down", {
				top = -360,
				bottom = 360
			} )
			carry:registerAnimationState( "shakeUp", {
				top = -370,
				bottom = 360
			} )
			carry:registerAnimationState( "shakeDown", {
				top = -360,
				bottom = 360
			} )
			self:addElement( carry )
			self.carry = carry
			
			local f9_local2 = CoD.CreateState( -180, 320, 180, 320, CoD.AnchorTypes.All )
			f9_local2.material = RegisterMaterial( "h2_overlays_snowgoggles_put" )
			local self = LUI.UIImage.new( f9_local2 )
			self.id = "gogglesFrameId"
			self:setUseGameTime( true )
			self:registerAnimationState( "frameUpLarge", f9_local2 )
			self:registerAnimationState( "frameUpTight", CoD.CreateState( 0, 320, 0, 320, CoD.AnchorTypes.All ) )
			local f9_local4 = 200
			if Engine.IsPC() then
				f9_local4 = Engine.GetAspectRatio() * f9_local4 / 1.78
			end
			self:registerAnimationState( "frameDown", CoD.CreateState( -f9_local4, 750, f9_local4, 750, CoD.AnchorTypes.All ) )
			self.frame = self
			carry:addElement( self )
			local f9_local5 = {
				leftAnchor = true,
				rightAnchor = false,
				topAnchor = true,
				bottomAnchor = true,
				left = 0,
				right = 408,
				top = 0,
				bottom = 0,
				material = RegisterMaterial( "h2_overlay_frozen_l" )
			}
			local self = LUI.UIImage.new( f9_local5 )
			self.id = "frostLId"
			carry:addElement( self )
			f9_local5.right = ScreenResolution.HD.width / 8
			f9_local5.material = RegisterMaterial( "h2_overlays_snowgoggles_distortion_l" )
			local self = LUI.UIImage.new( f9_local5 )
			self.id = "distortionLId"
			carry:addElement( self )
			f9_local5.material = RegisterMaterial( "h2_overlays_snowgoggles_corner_blur_l" )
			local self = LUI.UIImage.new( f9_local5 )
			self.id = "cornerLId"
			carry:addElement( self )
			f9_local5.right = ScreenResolution.HD.width / 4
			f9_local5.material = RegisterMaterial( "h2_overlays_snowgoggles_shadow_l" )
			f9_local5.bottom = 28
			local self = LUI.UIImage.new( f9_local5 )
			self.id = "shadowLId"
			carry:addElement( self )
			local f9_local10 = {
				leftAnchor = false,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = -408,
				right = 0,
				top = 0,
				bottom = 0,
				material = RegisterMaterial( "h2_overlay_frozen_r" )
			}
			local self = LUI.UIImage.new( f9_local10 )
			self.id = "frostRId"
			carry:addElement( self )
			f9_local10.left = ScreenResolution.HD.width / -8
			f9_local10.material = RegisterMaterial( "h2_overlays_snowgoggles_distortion_r" )
			local self = LUI.UIImage.new( f9_local10 )
			self.id = "distortionRId"
			carry:addElement( self )
			f9_local10.material = RegisterMaterial( "h2_overlays_snowgoggles_corner_blur_r" )
			local self = LUI.UIImage.new( f9_local10 )
			self.id = "cornerRId"
			carry:addElement( self )
			f9_local10.left = ScreenResolution.HD.width / -4
			f9_local10.material = RegisterMaterial( "h2_overlays_snowgoggles_shadow_r" )
			f9_local10.bottom = 28
			local self = LUI.UIImage.new( f9_local10 )
			self.id = "shadowRId"
			carry:addElement( self )
			local self = LUI.UIImage.new( {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = 0,
				right = 0,
				top = -360,
				bottom = 360,
				color = Colors.black,
				alpha = 0
			} )
			self.id = "fullscreenBlackTransition"
			self:registerAnimationState( "default", {
				alpha = 0
			} )
			self:registerAnimationState( "transition", {
				alpha = 0.75
			} )
			self:setUseGameTime( true )
			self.blackTransition = self
			self:addElement( self )
			local self = LUI.UIImage.new( {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = 0,
				right = 0,
				top = -360,
				bottom = 360,
				material = RegisterMaterial( "h1_hud_overlay_eyelids_vignette_blur" ),
				alpha = 0
			} )
			self.id = "fullscreenBlurTransition"
			self:registerAnimationState( "default", {
				alpha = 0
			} )
			self:registerAnimationState( "transition", {
				alpha = 0.75
			} )
			self:setUseGameTime( true )
			self.blurTransition = self
			self:addElement( self )
		end
	end
	
	return self
end )
LockTable( _M )
