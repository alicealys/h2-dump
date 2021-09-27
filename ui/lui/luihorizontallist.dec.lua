LUI.UIHorizontalList = {}
LUI.UIHorizontalNavigator = {}
LUI.UIHorizontalAlignGroup = {}
local f0_local0 = function ( f1_arg0, f1_arg1, f1_arg2 )
	local self = LUI.UIElement.new( {
		leftAnchor = true,
		rightAnchor = false,
		left = 0,
		right = f1_arg1,
		topAnchor = true,
		bottomAnchor = true,
		top = 0,
		bottom = 0
	} )
	self:setPriority( f1_arg2 )
	f1_arg0:addElement( self )
	return self
end

LUI.UIHorizontalList.build = function ( menu, controller )
	local self = LUI.UIHorizontalList.new( {} )
	LUI.UIHorizontalList.SetNoWrap( self, controller.noWrap )
	self.useMouseWheel = controller.useMouseWheel
	return self
end

LUI.UIHorizontalList.new = function ( f3_arg0 )
	local self = LUI.UIElement.new( f3_arg0 )
	self.id = "LUIHorizontalList"
	self:setupUIHorizontalList()
	self.addSpacer = f0_local0
	self.addElement = LUI.UIHorizontalList.AddElement
	self.removeElement = LUI.UIHorizontalList.RemoveElement
	self.updateNavigation = LUI.UIHorizontalList.UpdateNavigation
	self:registerEventHandler( "gain_focus", LUI.UIHorizontalList.gainFocus )
	self:registerEventHandler( "update_navigation", function ( element, event )
		element:updateNavigation()
	end )
	return self
end

LUI.UIHorizontalNavigator.build = function ( menu, controller )
	local self = LUI.UIHorizontalNavigator.new( {}, controller.noWrap )
	LUI.UIHorizontalList.SetNoWrap( self, controller.noWrap )
	return self
end

LUI.UIHorizontalNavigator.new = function ( f5_arg0 )
	local self = LUI.UIElement.new( f5_arg0 )
	self.id = "LUIHorizontalList"
	self.addSpacer = f0_local0
	self.addElement = LUI.UIHorizontalList.AddElement
	self.removeElement = LUI.UIHorizontalList.RemoveElement
	self.updateNavigation = LUI.UIHorizontalList.UpdateNavigation
	self:registerEventHandler( "gain_focus", LUI.UIHorizontalList.gainFocus )
	self:registerEventHandler( "update_navigation", function ( element, event )
		element:updateNavigation()
	end )
	return self
end

LUI.UIHorizontalList.SetNoWrap = function ( f6_arg0, f6_arg1 )
	f6_arg0.noWrap = f6_arg1
end

LUI.UIHorizontalAlignGroup.build = function ( f7_arg0, f7_arg1 )
	return LUI.UIHorizontalAlignGroup.new( nil )
end

LUI.UIHorizontalAlignGroup.new = function ( f8_arg0 )
	local self = LUI.UIElement.new( f8_arg0 )
	self.id = "LUIHorizontalAlignGroup"
	self.focusable = true
	self:setupUIHorizontalList()
	self.building = true
	return self
end

LUI.UIHorizontalList.AddElement = function ( f9_arg0, f9_arg1 )
	LUI.UIElement.addElement( f9_arg0, f9_arg1 )
	f9_arg1:initNavTables()
	f9_arg0:setLayoutCached( false )
	f9_arg0:updateNavigation()
end

LUI.UIHorizontalList.RemoveElement = function ( f10_arg0, f10_arg1 )
	LUI.UIElement.removeElement( f10_arg0, f10_arg1 )
	f10_arg0:setLayoutCached( false )
	f10_arg0:updateNavigation()
end

LUI.UIHorizontalList.UpdateNavigation = function ( f11_arg0 )
	local f11_local0, f11_local1 = nil
	local f11_local2
	if Engine.IsConsoleGame() or f11_arg0.properties == nil or f11_arg0.properties.useMouseWheel ~= true then
		f11_local2 = false
	else
		f11_local2 = true
	end
	local f11_local3 = f11_arg0:getFirstChild()
	while f11_local3 ~= nil do
		if f11_local3:canFocus( FocusType.ListSelection ) then
			if f11_local0 == nil then
				f11_local0 = f11_local3
			end
			if f11_local1 ~= nil then
				f11_local1.navigation.right = f11_local3
				f11_local3.navigation.left = f11_local1
			else
				f11_local3.navigation.left = nil
			end
			if f11_local3.navigation ~= nil and f11_arg0.navigation ~= nil and not f11_local2 then
				f11_local3.navigation.down = f11_arg0.navigation.down
				f11_local3.navigation.up = f11_arg0.navigation.up
			end
			f11_local3.canRepeatWrapLeft = false
			f11_local3.canRepeatWrapRight = false
			f11_local1 = f11_local3
		end
		f11_local3 = f11_local3:getNextSibling()
	end
	if f11_local1 ~= nil then
		if f11_arg0.navigation ~= nil and f11_arg0.navigation.right ~= nil and f11_arg0.navigation.right:canFocus( FocusType.ListSelection ) == true then
			f11_local1.navigation.right = f11_arg0.navigation.right
			f11_arg0.navigation.right.navigation.left = f11_local1
		elseif f11_local1 ~= f11_local0 and not f11_arg0.noWrap then
			f11_local1.navigation.right = f11_local0
		else
			f11_local1.navigation.right = nil
		end
		if f11_arg0.navigation ~= nil and f11_arg0.navigation.left ~= nil and f11_arg0.navigation.left:canFocus( FocusType.ListSelection ) == true then
			f11_local0.navigation.left = f11_arg0.navigation.left
			f11_arg0.navigation.left.navigation.right = f11_local0
		elseif f11_local1 ~= f11_local0 and not f11_arg0.noWrap then
			f11_local0.navigation.left = f11_local1
		else
			f11_local0.navigation.left = nil
		end
	end
	if f11_local0 ~= nil then
		f11_local0.canRepeatWrapLeft = true
	end
	if f11_local1 ~= nil then
		f11_local1.canRepeatWrapRight = true
	end
	if f11_local2 then
		local f11_local4 = f11_arg0:getFirstChild()
		while f11_local4 ~= nil do
			f11_local4.navigation.up = f11_local4.navigation.left
			f11_local4.navigation.down = f11_local4.navigation.right
			f11_local4 = f11_local4:getNextSibling()
		end
	end
end

LUI.UIHorizontalList.gainFocus = function ( f12_arg0, f12_arg1 )
	local f12_local0, f12_local1 = f12_arg0:restoreState( nil, nil, f12_arg1 )
	if f12_local1 == 0 then
		local f12_local2, f12_local3 = nil
		local f12_local4 = f12_arg0:getFirstChild()
		while f12_local4 ~= nil do
			if f12_local4:canFocus( FocusType.ListSelection ) then
				if f12_local2 == nil then
					f12_local2 = f12_local4
				end
				if f12_local3 == nil and f12_local4.listDefaultFocus then
					f12_local3 = f12_local4
				end
			end
		end
		if f12_local3 ~= nil then
			f12_local3:processEvent( f12_arg1 )
		elseif f12_local2 ~= nil then
			f12_local2:processEvent( f12_arg1 )
		else
			
		end
		f12_local4 = f12_local4:getNextSibling()
	end
end

