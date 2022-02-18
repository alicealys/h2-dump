local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.MenuBuilder.registerType( "divingGogglesHudDef", function ()
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
	self.id = "divingGogglesRootId"
	self.isInit = false
	self:registerAnimationState( "default", {
		alpha = 1
	} )
	self:registerAnimationState( "fadeout", {
		alpha = 0
	} )
	self:setUseGameTime( true )
	self.activate = function ()
		self.carry:animateToState( "down", 0 )
	end
	
	self.fadeIn = function ()
		self.carry:animateToState( "down", 0 )
		self.fader:animateInSequence( {
			{
				"default",
				500
			},
			{
				"visible",
				2000
			}
		} )
	end
	
	self.putOff = function ()
		self.carry:animateInSequence( {
			{
				"down",
				45
			},
			{
				"mid",
				240
			},
			{
				"up",
				200
			}
		} )
	end
	
	self.setOff = function ()
		self.carry:animateToState( "up", 0 )
		self.fader:animateToState( "default", 0 )
	end
	
	self.setOn = function ()
		self.carry:animateToState( "down", 0 )
		self.fader:animateToState( "default", 0 )
	end
	
	self.tryInit = function ()
		if self.isInit ~= nil and not self.isInit then
			self.isInit = true
			
			local carry = LUI.UIElement.new( {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = 0,
				right = 0,
				top = -360,
				bottom = 360
			} )
			carry:registerAnimationState( "up", {
				top = -1400,
				bottom = -680
			} )
			carry:registerAnimationState( "mid", {
				top = -720,
				bottom = 0
			} )
			carry:registerAnimationState( "down", {
				top = -360,
				bottom = 360
			} )
			carry:setUseGameTime( true )
			self:addElement( carry )
			self.carry = carry
			
			local f7_local1 = LUI.UIElement.new( {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = 0,
				right = 0,
				top = 0,
				bottom = 0
			} )
			f7_local1:registerAnimationState( "default", {
				alpha = 0
			} )
			f7_local1:registerAnimationState( "visible", {
				alpha = 1
			} )
			f7_local1:setUseGameTime( true )
			self.carry:addElement( f7_local1 )
			self.fader = f7_local1
			local f7_local2 = CoD.CreateState( 0, -239, 0, 85, CoD.AnchorTypes.BottomLeftRight )
			f7_local2.alpha = 0.2
			f7_local2.material = RegisterMaterial( "h2_overlays_divinggoggles_details" )
			self.fader:addElement( LUI.UIImage.new( f7_local2 ) )
			if Engine.IsConsoleGame() then
				local f7_local3 = CoD.CreateState( -46, -317, 201, 247, CoD.AnchorTypes.Left )
				f7_local3.material = RegisterMaterial( "h2_overlays_divinggoggles_frame_left" )
				self.fader:addElement( LUI.UIImage.new( f7_local3 ) )
				local f7_local4 = CoD.CreateState( -46, -45, 46, 43, CoD.AnchorTypes.TopLeftRight )
				f7_local4.material = RegisterMaterial( "h2_overlays_divinggoggles_frame_top" )
				self.fader:addElement( LUI.UIImage.new( f7_local4 ) )
				local f7_local5 = CoD.CreateState( -201, -317, 46, 247, CoD.AnchorTypes.Right )
				f7_local5.material = RegisterMaterial( "h2_overlays_divinggoggles_frame_right" )
				self.fader:addElement( LUI.UIImage.new( f7_local5 ) )
				local f7_local6 = CoD.CreateState( -46, -113, 46, 261, CoD.AnchorTypes.BottomLeftRight )
				f7_local6.material = RegisterMaterial( "h2_overlays_divinggoggles_frame_bottom" )
				self.fader:addElement( LUI.UIImage.new( f7_local6 ) )
			else
				local f7_local3 = CoD.CreateState( -46, -45, 46, 261, CoD.AnchorTypes.All )
				f7_local3.material = RegisterMaterial( "h2_overlays_divinggoggles_frame" )
				local f7_local7 = LUI.UIImage.new( f7_local3 )
				f7_local7:setup8SliceOverlayImage( 0, 0, 0.15, 0.35 )
				self.fader:addElement( f7_local7 )
			end
			local f7_local3 = CoD.CreateState( 150, -360, 270, -240, CoD.AnchorTypes.BottomLeft )
			f7_local3.alpha = 0.35
			f7_local3.material = RegisterMaterial( "h2_overlays_divinggoggles_details_small1" )
			self.fader:addElement( LUI.UIImage.new( f7_local3 ) )
			local f7_local4 = CoD.CreateState( -220, -460, -100, -340, CoD.AnchorTypes.BottomRight )
			f7_local4.alpha = 0.35
			f7_local4.material = RegisterMaterial( "h2_overlays_divinggoggles_details_small2" )
			self.fader:addElement( LUI.UIImage.new( f7_local4 ) )
			if Engine.IsConsoleGame() then
				local f7_local5 = CoD.CreateState( 0, -180, 160, 180, CoD.AnchorTypes.Left )
				f7_local5.material = RegisterMaterial( "h2_overlays_divinggoggles_distort_left" )
				self.fader:addElement( LUI.UIImage.new( f7_local5 ) )
				local f7_local6 = CoD.CreateState( 0, 0, 0, 180, CoD.AnchorTypes.TopLeftRight )
				f7_local6.material = RegisterMaterial( "h2_overlays_divinggoggles_distort_top" )
				self.fader:addElement( LUI.UIImage.new( f7_local6 ) )
				local f7_local8 = CoD.CreateState( -160, -180, 0, 180, CoD.AnchorTypes.Right )
				f7_local8.material = RegisterMaterial( "h2_overlays_divinggoggles_distort_right" )
				self.fader:addElement( LUI.UIImage.new( f7_local8 ) )
				local f7_local9 = CoD.CreateState( 0, -180, 0, 0, CoD.AnchorTypes.BottomLeftRight )
				f7_local9.material = RegisterMaterial( "h2_overlays_divinggoggles_distort_bottom" )
				self.fader:addElement( LUI.UIImage.new( f7_local9 ) )
			else
				local f7_local5 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
				f7_local5.material = RegisterMaterial( "h2_overlays_divinggoggles_distort" )
				local f7_local10 = LUI.UIImage.new( f7_local5 )
				f7_local10:setup8SliceOverlayImage( 0, 0, 0.15, 0.25 )
				self.fader:addElement( f7_local10 )
			end
		end
	end
	
	return self
end )
LockTable( _M )
