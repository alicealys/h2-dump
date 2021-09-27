LUI.UISafeAreaOverlay = {}
LUI.UISafeAreaOverlay.new = function ()
	local self = LUI.UIElement.new( {
		left = 0,
		top = 0,
		right = 0,
		bottom = 0,
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = true,
		rightAnchor = true
	} )
	self.leftBorder = LUI.UIImage.new( {
		left = 0,
		top = 36,
		right = 48,
		bottom = -36,
		topAnchor = true,
		leftAnchor = true,
		rightAnchor = false,
		bottomAnchor = true,
		red = 0,
		green = 0,
		blue = 1,
		alpha = 0.5
	} )
	self:addElement( self.leftBorder )
	self.rightBorder = LUI.UIImage.new( {
		left = -48,
		top = 36,
		right = 0,
		bottom = -36,
		topAnchor = true,
		leftAnchor = false,
		rightAnchor = true,
		bottomAnchor = true,
		red = 0,
		green = 0,
		blue = 1,
		alpha = 0.5
	} )
	self:addElement( self.rightBorder )
	self.topBorder = LUI.UIImage.new( {
		left = 0,
		top = 0,
		right = 0,
		bottom = 36,
		topAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		bottomAnchor = false,
		red = 0,
		green = 0,
		blue = 1,
		alpha = 0.5
	} )
	self:addElement( self.topBorder )
	self.bottomBorder = LUI.UIImage.new( {
		left = 0,
		top = -36,
		right = 0,
		bottom = 0,
		topAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		bottomAnchor = true,
		red = 0,
		green = 0,
		blue = 1,
		alpha = 0.5
	} )
	self:addElement( self.bottomBorder )
	return self
end

