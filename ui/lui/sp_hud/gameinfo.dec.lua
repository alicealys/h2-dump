local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = 0.65
if Engine.IsPS3() or Engine.IsXbox360() then
	f0_local0 = 1.25
end
f0_local1 = function ( f1_arg0, f1_arg1 )
	local f1_local0 = f1_arg0:getParent()
	if f1_arg1.newValue == 1 then
		f1_local0:animateToState( "hidden", 500 )
	elseif f1_arg1.newValue == 0 then
		f1_local0:animateToState( "default", 500 )
	end
end

function mantleHintDef()
	local self = LUI.UIElement.new()
	self.id = "mantleHintId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGMantleHint, f0_local0, CoD.TextStyle.ShadowedMore )
	self:registerAnimationState( "default", {
		topAnchor = false,
		leftAnchor = false,
		bottomAnchor = true,
		rightAnchor = false,
		bottom = -112.99,
		alignment = LUI.Alignment.Center,
		height = 32,
		font = CoD.TextSettings.SP_HudCarbon27.Font,
		alpha = 0.6
	} )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	self:animateToState( "default", 0 )
	local f2_local1 = LUI.UIElement.new()
	f2_local1:setupUIIntWatch( "IsShowingSubtitles" )
	f2_local1.id = "subtitleWatchId"
	f2_local1:registerEventHandler( "int_watch_alert", f0_local1 )
	self:addElement( f2_local1 )
	return self
end

function cursorHintDef()
	local self = LUI.UIElement.new()
	self.id = "cursorHintId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGCursorHint, f0_local0, CoD.TextStyle.ShadowedMore )
	self:registerAnimationState( "default", {
		topAnchor = false,
		leftAnchor = false,
		bottomAnchor = true,
		rightAnchor = false,
		bottom = -141.99,
		left = -42.66,
		right = 42.66,
		alignment = LUI.Alignment.Center,
		height = 85.32,
		font = CoD.TextSettings.SP_HudCarbon27.Font,
		alpha = 1
	} )
	self:animateToState( "default", 0 )
	return self
end

function dropWeaponHintDef()
	local f4_local0 = 205
	if Engine.GetAspectRatio() <= 1.33 then
		f4_local0 = 245
	end
	local self = LUI.UIElement.new()
	self.id = "cursorHintTurretId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGDropWeaponHint, f0_local0, CoD.TextStyle.ShadowedMore )
	self:registerAnimationState( "default", {
		topAnchor = false,
		leftAnchor = false,
		bottomAnchor = true,
		rightAnchor = false,
		bottom = -(f4_local0 * 0.33),
		left = -42.66,
		right = 42.66,
		alignment = LUI.Alignment.Center,
		height = 85.32,
		font = CoD.TextSettings.SP_HudCarbon27.Font,
		alpha = 1
	} )
	self:animateToState( "default", 0 )
	return self
end

function cursorHintAttachmentDef()
	local self = LUI.UIElement.new()
	self.id = "cursorHintAttachmentId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGCursorHintAttachment, f0_local0, CoD.TextStyle.ShadowedMore )
	self:registerAnimationState( "default", {
		topAnchor = false,
		leftAnchor = false,
		bottomAnchor = true,
		rightAnchor = false,
		bottom = -141.99,
		left = -42.66,
		right = 42.66,
		alignment = LUI.Alignment.Center,
		height = 69.99,
		font = CoD.TextSettings.SP_HudCursorHintAttachment.Font,
		alpha = 1,
		color = Colors.grey_84
	} )
	self:animateToState( "default", 0 )
	return self
end

f0_local2 = function ( f6_arg0, f6_arg1 )
	local f6_local0 = Game.GetInvalidCmdHintAlpha()
	local f6_local1 = Game.GetInvalidCmdHintWidth( CoD.TextSettings.SP_HudCarbon27.Font, f0_local0 )
	f6_arg0:registerAnimationState( "fade", {
		alpha = f6_local0
	} )
	f6_arg0:animateToState( "fade" )
	if f6_arg0.previousAlpha ~= f6_local0 or f6_local1 ~= f6_arg0.previousTextWidth then
		f6_arg0.previousAlpha = f6_local0
		f6_arg0.previousTextWidth = f6_local1
		local f6_local2 = CoD.GetHintBackgroundState( f6_local1 )
		local f6_local3 = f6_arg0:getFirstChild()
		while f6_local3 ~= nil do
			f6_local3:animateToState( f6_local2 )
			f6_local3 = f6_local3:getNextSibling()
		end
	end
end

function invalidCmdHintDef()
	local self = LUI.UIElement.new()
	self.id = "invalidCmdHintId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGInvalidCmdHint, f0_local0, CoD.TextStyle.ShadowedMore )
	local f7_local1 = 420
	local f7_local2 = 570
	local f7_local3 = 720
	local f7_local4 = LUI.UIImage.new( {
		top = -60,
		width = f7_local3,
		height = 37.5,
		material = RegisterMaterial( "h1_hud_tutorial_blur" ),
		alpha = 0.9
	} )
	f7_local4.id = "blurId"
	f7_local4:registerAnimationState( "small", {
		width = f7_local1
	} )
	f7_local4:registerAnimationState( "medium", {
		width = f7_local2
	} )
	self:addElement( f7_local4 )
	local f7_local5 = LUI.UIImage.new( {
		top = -60.5,
		width = f7_local3,
		height = 1.5,
		material = RegisterMaterial( "h1_hud_tutorial_border" ),
		alpha = 0.05
	} )
	f7_local5.id = "borderTopId"
	f7_local5:registerAnimationState( "small", {
		width = f7_local1
	} )
	f7_local5:registerAnimationState( "medium", {
		width = f7_local2
	} )
	self:addElement( f7_local5 )
	local f7_local6 = LUI.UIImage.new( {
		top = -23.5,
		width = f7_local3,
		height = 1.5,
		material = RegisterMaterial( "h1_hud_tutorial_border" ),
		alpha = 0.05
	} )
	f7_local6.id = "borderBottomId"
	f7_local6:registerAnimationState( "small", {
		width = f7_local1
	} )
	f7_local6:registerAnimationState( "medium", {
		width = f7_local2
	} )
	self:addElement( f7_local6 )
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = false,
		bottomAnchor = false,
		rightAnchor = false,
		top = 138,
		left = -32,
		right = 32,
		height = 64,
		alignment = LUI.Alignment.Center,
		font = CoD.TextSettings.SP_HudCarbon27.Font,
		alpha = 0
	} )
	self:animateToState( "default", 0 )
	self.timer = LUI.UITimer.new( 10, "timer_event", "hud", false )
	self:registerEventHandler( "timer_event", f0_local2 )
	self:addElement( self.timer )
	self.previousAlpha = 0
	self.previousTextWidth = Game.GetInvalidCmdHintWidth( CoD.TextSettings.SP_HudCarbon27.Font, f0_local0 )
	return self
end

local f0_local3 = function ( f8_arg0, f8_arg1 )
	f8_arg0:registerAnimationState( "fade", {
		alpha = Game.GetBreathHintAlpha()
	} )
	f8_arg0:animateToState( "fade" )
end

function breathHintDef()
	local self = LUI.UIElement.new()
	self.id = "breathHintId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGHoldBreathHint, f0_local0, CoD.TextStyle.ShadowedMore )
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = false,
		bottomAnchor = false,
		rightAnchor = false,
		top = 100,
		left = -32,
		right = 32,
		height = 64,
		alignment = LUI.Alignment.Center,
		font = CoD.TextSettings.SP_HudCarbon27.Font,
		alpha = 0
	} )
	self:animateToState( "default", 0 )
	self.timer = LUI.UITimer.new( 10, "timer_event", "hud", false )
	self:registerEventHandler( "timer_event", f0_local3 )
	self:addElement( self.timer )
	return self
end

function zoomHintDef()
	local self = LUI.UIElement.new()
	self.id = "zoomHintId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGChangeZoomHint, f0_local0, CoD.TextStyle.ShadowedMore )
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = false,
		bottomAnchor = false,
		rightAnchor = false,
		top = 70,
		left = -32,
		right = 32,
		height = 64,
		alignment = LUI.Alignment.Center,
		font = CoD.TextSettings.BodyFont.Font,
		alpha = 0.6
	} )
	self:animateToState( "default", 0 )
	return self
end

function toggleHybridHintDef()
	local f11_local0 = 50
	if Engine.IsCurrentGen() then
		f11_local0 = 80
	end
	local self = LUI.UIElement.new()
	self.id = "toggleHybridHintId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGToggleHybridHint, f0_local0, CoD.TextStyle.ShadowedMore )
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = false,
		bottomAnchor = false,
		rightAnchor = false,
		top = f11_local0,
		left = -32,
		right = 32,
		height = 64,
		alignment = LUI.Alignment.Center,
		font = CoD.TextSettings.BodyFont.Font,
		alpha = 0.6
	} )
	self:animateToState( "default", 0 )
	return self
end

function toggleThermalHintDef()
	local self = LUI.UIElement.new()
	self.id = "toggleThermalHintId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGToggleThermalHint, f0_local0, CoD.TextStyle.ShadowedMore )
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = false,
		bottomAnchor = false,
		rightAnchor = false,
		top = 50,
		left = -32,
		right = 32,
		height = 64,
		alignment = LUI.Alignment.Center,
		font = CoD.TextSettings.BodyFont.Font,
		alpha = 0.6
	} )
	self:animateToState( "default", 0 )
	return self
end

function resetDeadQuoteAnimState( f13_arg0 )
	f13_arg0:registerAnimationState( "default", {
		alpha = 1
	} )
	f13_arg0:animateToState( "default", 0 )
end

function deadQuoteDef()
	local self = LUI.UIElement.new()
	self.id = "deadQuoteId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGDeadQuote, f0_local0, CoD.TextStyle.Shadowed )
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = false,
		rightAnchor = true,
		top = 300,
		height = 64,
		left = 240,
		right = -240,
		alignment = LUI.Alignment.Left,
		font = CoD.TextSettings.BodyFont18.Font,
		alpha = 0.6,
		color = Colors.white
	} )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	self:registerAnimationState( "paused", {
		color = Colors.grey_5
	} )
	self:animateToState( "default", 0 )
	self:registerEventHandler( "toggle_pause", function ( element, event )
		element:animateToState( "paused", 1 )
	end )
	self:registerEventHandler( "toggle_pause_off", function ( element, event )
		element:animateToState( "default", 1 )
	end )
	self:registerOmnvarHandler( "ui_hidebasedeathquote", function ( f17_arg0, f17_arg1 )
		if f17_arg1.value then
			f17_arg0:registerAnimationState( "default", {
				alpha = 0
			} )
		else
			f17_arg0:registerAnimationState( "default", {
				alpha = 1
			} )
		end
		f17_arg0:animateToState( "default", 0 )
	end )
	return self
end

function savingDef()
	local self = LUI.UIElement.new()
	self.id = "savingId"
	self:setupOwnerdraw( CoD.Ownerdraw.CGSaving, f0_local0, CoD.TextStyle.ShadowedMore )
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = false,
		rightAnchor = true,
		top = 300,
		height = 64,
		alignment = LUI.Alignment.Center,
		font = CoD.TextSettings.BodyFont.Font,
		alpha = 0.6,
		red = 1,
		green = 0,
		blue = 1
	} )
	self:animateToState( "default", 0 )
	return self
end

LockTable( _M )
