LUI.UIVerticalList = {}
LUI.UIVerticalNavigator = {}
LUI.UIVerticalList.AddSpacer = function ( f1_arg0, f1_arg1, f1_arg2 )
	local self = LUI.UIElement.new( {
		leftAnchor = true,
		rightAnchor = true,
		left = 0,
		right = 0,
		topAnchor = true,
		bottomAnchor = false,
		top = 0,
		bottom = f1_arg1
	} )
	self:setPriority( f1_arg2 )
	f1_arg0:addElement( self )
	return self
end

LUI.UIVerticalList.build = function ( f2_arg0, f2_arg1 )
	return LUI.UIVerticalList.new( f2_arg1.defaultState, f2_arg1.scrollByChildHeight, f2_arg1.disableOutsideChildren, f2_arg1.sendScrollEvents, f2_arg1 )
end

LUI.UIVerticalList.new = function ( f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4 )
	if not f3_arg4 then
		f3_arg4 = {}
	end
	local self = LUI.UIElement.new( f3_arg0 )
	self.id = "LUIVerticalList"
	self:setupUIVerticalList( f3_arg1, f3_arg2, f3_arg3 )
	self.addSpacer = LUI.UIVerticalList.AddSpacer
	self.addElement = LUI.UIVerticalList.AddElement
	self.insertElement = LUI.UIVerticalList.InsertElement
	self.removeElement = LUI.UIVerticalList.RemoveElement
	self.updateNavigation = LUI.UIVerticalList.UpdateNavigation
	LUI.UIVerticalList.SetNoWrap( self, f3_arg4.noWrap )
	local f3_local1
	if f3_arg4.blockRepeatWrap == nil then
		f3_local1 = true
	else
		f3_local1 = f3_arg4.blockRepeatWrap
	end
	self.blockRepeatWrap = f3_local1
	if f3_arg4.useStencil then
		self:setUseStencil( true )
	end
	self:registerEventHandler( "gain_focus", LUI.UIVerticalList.gainFocus )
	self:registerEventHandler( "update_navigation", function ( element, event )
		element:updateNavigation()
	end )
	return self
end

LUI.UIVerticalList.SetNoWrap = function ( f4_arg0, f4_arg1 )
	f4_arg0.noWrap = f4_arg1
end

LUI.UIVerticalNavigator.build = function ( f5_arg0, f5_arg1 )
	return LUI.UIVerticalNavigator.new()
end

LUI.UIVerticalNavigator.new = function ( f6_arg0 )
	local self = LUI.UIElement.new( f6_arg0 )
	self.id = "LUIVerticalNavigator"
	self.addSpacer = LUI.UIVerticalList.AddSpacer
	self.addElement = LUI.UIVerticalList.AddElement
	self.insertElement = LUI.UIVerticalList.InsertElement
	self.removeElement = LUI.UIVerticalList.RemoveElement
	self.updateNavigation = LUI.UIVerticalList.UpdateNavigation
	self:registerEventHandler( "gain_focus", LUI.UIVerticalList.gainFocus )
	self:registerEventHandler( "update_navigation", function ( element, event )
		element:updateNavigation()
	end )
	return self
end

LUI.UIVerticalList.AddElement = function ( f7_arg0, f7_arg1 )
	LUI.UIElement.addElement( f7_arg0, f7_arg1 )
	f7_arg1:initNavTables()
	f7_arg0:setLayoutCached( false )
	f7_arg0:updateNavigation()
end

LUI.UIVerticalList.InsertElement = function ( f8_arg0, f8_arg1, f8_arg2 )
	LUI.UIElement.insertElement( f8_arg0, f8_arg1, f8_arg2 )
	f8_arg1:initNavTables()
	f8_arg0:setLayoutCached( false )
	f8_arg0:updateNavigation()
end

LUI.UIVerticalList.RemoveElement = function ( f9_arg0, f9_arg1 )
	LUI.UIElement.removeElement( f9_arg0, f9_arg1 )
	f9_arg0:setLayoutCached( false )
	f9_arg0:updateNavigation()
end

LUI.UIVerticalList.UpdateNavigation = function ( f10_arg0 )
	local f10_local0, f10_local1 = nil
	local f10_local2 = f10_arg0:getFirstChild()
	while f10_local2 ~= nil do
		if f10_local2:canFocus( FocusType.ListSelection ) then
			if f10_local0 == nil then
				f10_local0 = f10_local2
			end
			if f10_local1 ~= nil then
				f10_local1.navigation.down = f10_local2
				f10_local2.navigation.up = f10_local1
			else
				f10_local2.navigation.up = nil
			end
			if f10_local2.navigation ~= nil and f10_arg0.navigation ~= nil then
				f10_local2.navigation.left = f10_arg0.navigation.left
				f10_local2.navigation.right = f10_arg0.navigation.right
			end
			f10_local1 = f10_local2
		end
		f10_local2.canRepeatWrapUp = false
		f10_local2.canRepeatWrapDown = false
		f10_local2 = f10_local2:getNextSibling()
	end
	if f10_local1 ~= nil then
		if f10_arg0.navigation ~= nil and f10_arg0.navigation.down ~= nil and f10_arg0.navigation.down:canFocus( FocusType.ListSelection ) == true then
			f10_local1.navigation.down = f10_arg0.navigation.down
			f10_arg0.navigation.down.navigation.up = f10_local1
		elseif f10_local1 ~= f10_local0 and not f10_arg0.noWrap then
			f10_local1.navigation.down = f10_local0
			f10_local1.navigation.wrapTarget = {
				down = f10_local0
			}
		else
			f10_local1.navigation.down = nil
		end
		if f10_arg0.navigation ~= nil and f10_arg0.navigation.up ~= nil and f10_arg0.navigation.up:canFocus( FocusType.ListSelection ) == true then
			f10_local0.navigation.up = f10_arg0.navigation.up
			f10_arg0.navigation.up.navigation.down = f10_local0
		elseif f10_local1 ~= f10_local0 and not f10_arg0.noWrap then
			f10_local0.navigation.up = f10_local1
			f10_local0.navigation.wrapTarget = {
				up = f10_local1
			}
		else
			f10_local0.navigation.up = nil
		end
	end
	if f10_arg0.blockRepeatWrap then
		if f10_local0 ~= nil then
			f10_local0.canRepeatWrapUp = true
		end
		if f10_local1 ~= nil then
			f10_local1.canRepeatWrapDown = true
		end
	end
end

LUI.UIVerticalList.gainFocus = function ( f11_arg0, f11_arg1 )
	local f11_local0, f11_local1 = f11_arg0:restoreState( nil, nil, f11_arg1 )
	if f11_local1 == 0 then
		local f11_local2, f11_local3 = nil
		local f11_local4 = f11_arg0:getFirstChild()
		while f11_local4 ~= nil do
			if f11_local4:canFocus( FocusType.ListSelection ) then
				if f11_local2 == nil then
					f11_local2 = f11_local4
				end
				if f11_local3 == nil and f11_local4.listDefaultFocus then
					f11_local3 = f11_local4
				end
			end
		end
		if f11_local3 ~= nil then
			f11_local3:processEvent( f11_arg1 )
		elseif f11_local2 ~= nil then
			f11_local2:processEvent( f11_arg1 )
		else
			
		end
		f11_local4 = f11_local4:getNextSibling()
	end
end

LUI.UIVerticalList.SetChildFocus = function ( f12_arg0, f12_arg1 )
	local f12_local0 = 1
	local f12_local1 = f12_arg0:getFirstChild()
	while f12_local0 ~= f12_arg1 and f12_local1 ~= nil do
		f12_local1 = f12_local1:getNextSibling()
		f12_local0 = f12_local0 + 1
	end
	if f12_local1 and f12_local1:canFocus( FocusType.ListSelection ) then
		f12_local1:processEvent( {
			name = "gain_focus"
		} )
	end
	return f12_local1
end

LUI.UIVerticalList.getHeightOfChildren = function ( f13_arg0, f13_arg1 )
	local f13_local0 = f13_arg0:getRect()
	local f13_local1 = f13_arg1 or 0
	if f13_local0 then
		local f13_local2 = f13_arg0:getFirstChild()
		local f13_local3
		if f13_local2 then
			f13_local3 = -f13_local1
			if not f13_local3 then
				f13_local3 = 0
				while f13_local2 do
					local f13_local4 = nil
					if f13_local2.getText and f13_local2:getText() then
						local f13_local5 = nil
						local f13_local6, f13_local7 = f13_local2:getElementTextDims()
						f13_local4 = f13_local7
						f13_local5 = f13_local6
					else
						f13_local4 = f13_local2:getHeight()
					end
					f13_local3 = f13_local3 + f13_local1 + f13_local4
					f13_local2 = f13_local2:getNextSibling()
				end
				return f13_local3
			end
		else
			f13_local3 = 0
			while f13_local2 do
				local f13_local4 = nil
				if f13_local2.getText and f13_local2:getText() then
					local f13_local5 = nil
					local f13_local6, f13_local7 = f13_local2:getElementTextDims()
					f13_local4 = f13_local7
					f13_local5 = f13_local6
				else
					f13_local4 = f13_local2:getHeight()
				end
				f13_local3 = f13_local3 + f13_local1 + f13_local4
				f13_local2 = f13_local2:getNextSibling()
			end
			return f13_local3
		end
	else
		
	end
end

