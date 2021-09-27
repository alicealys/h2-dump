LUI.UIMarqueeText = InheritFrom( LUI.UIElement )
LUI.UIMarqueeText.build = function ( menu, controller )
	local self = LUI.UIMarqueeText.new( controller.defAnimState )
	if controller.textHeight then
		LUI.UIMarqueeText.SetTextHeight( self, controller.textHeight )
	end
	if controller.useTextWrapping then
		LUI.UIMarqueeText.SetUseTextWrapping( self, controller.useTextWrapping )
	end
	if controller.text then
		LUI.UIMarqueeText.setText( self, controller.text )
	end
	return self
end

LUI.UIMarqueeText.SetColor = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
	f2_arg0:registerAnimationState( "default", {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		red = f2_arg1,
		green = f2_arg2,
		blue = f2_arg3,
		alpha = 1
	} )
	f2_arg0:animateToState( "default" )
end

LUI.UIMarqueeText.new = function ( f3_arg0 )
	local self = LUI.UIElement.new( f3_arg0 )
	self:setClass( LUI.UIMarqueeText )
	self:setUseStencil( true )
	local f3_local1 = {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = false,
		top = 0,
		bottom = 0,
		left = 0
	}
	local self
	if f3_arg0 then
		self = f3_arg0.font
		if not self then
		
		else
			f3_local1.font = self
			self = LUI.UIText.new( f3_local1 )
			self.text = self
			self:addElement( self )
			self.text:registerAnimationState( "default", f3_local1 )
			self.text:animateToState( "default" )
			return self
		end
	end
	self = CoD.TextSettings.BodyFont.Font
end

LUI.UIMarqueeText.SetUseTextWrapping = function ( f4_arg0, f4_arg1 )
	f4_arg0.text.useTextWrapping = f4_arg1
end

LUI.UIMarqueeText.SetTextHeight = function ( f5_arg0, f5_arg1 )
	local f5_local0 = {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = f5_arg1,
		left = 0,
		right = 0
	}
	f5_arg0.text.textHeight = f5_arg1
	f5_arg0.text:registerAnimationState( "default", f5_local0 )
end

LUI.UIMarqueeText.setText = function ( f6_arg0, f6_arg1 )
	f6_arg0.text:setTextInC( f6_arg1 )
	f6_arg0.text.currText = f6_arg1
end

LUI.UIMarqueeText.setTextStyle = function ( f7_arg0, f7_arg1 )
	f7_arg0.text.m_textStyle = f7_arg1
end

LUI.UIMarqueeText.id = "LUIMarqueeText"
LUI.MenuBuilder.registerType( "UIMarqueeText", LUI.UIMarqueeText.build )
