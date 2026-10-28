LUI.UICharacterWindow = InheritFrom( LUI.UIElement )
LUI.UICharacterWindow.build = function ( f1_arg0, f1_arg1 )
	return LUI.UICharacterWindow.new( f1_arg1 )
end

LUI.UICharacterWindow.new = function ( f2_arg0 )
	local self = LUI.UIElement.new()
	self:setupCharacterWindow()
	self:setClass( LUI.UICharacterWindow )
	return self
end

LUI.UICharacterWindow.setCharacterHandle = function ( f3_arg0, f3_arg1 )
	if LUI.UIElement.setCharacterHandleInC ~= nil then
		f3_arg0:setCharacterHandleInC( f3_arg1 )
	end
end

LUI.UICharacterWindow.id = "LUICharacterWindow"
