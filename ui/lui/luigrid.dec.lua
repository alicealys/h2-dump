LUI.UIGrid = {}
LUI.UIGrid.build = function ( f1_arg0, f1_arg1 )
	return LUI.UIGrid.new( nil, f1_arg1 )
end

LUI.UIGrid.new = function ( menu, controller )
	local self = LUI.UIElement.new( menu )
	if not controller then
		controller = {}
	end
	self.width = math.max( 1, controller.elementsPerRow or 5 )
	self.rowHeight = controller.rowHeight or 80
	self.disableHWrap = controller.disableHWrap or false
	self.hSpacing = controller.hSpacing or 0
	local f2_local1 = controller.hAlign
	if not f2_local1 then
		f2_local1 = LUI.Alignment.Left
	end
	self.hAlign = f2_local1
	if controller.blockRepeatWrap == nil then
		f2_local1 = true
	else
		f2_local1 = controller.blockRepeatWrap
	end
	self.blockRepeatWrap = f2_local1
	if controller.id then
		self.id = controller.id
	else
		self.id = "LUIGrid"
	end
	self.vlist = LUI.UIVerticalList.new( nil, controller.scrollByChildHeight, nil, controller.sendScrollEvents )
	self.vlist.id = self.id .. "_vlist"
	self.vlist:makeFocusable()
	LUI.UIVerticalList.SetNoWrap( self.vlist, controller.disableVWrap )
	f2_local1 = self.vlist
	local f2_local2 = f2_local1
	f2_local1 = f2_local1.registerAnimationState
	local f2_local3 = "default"
	local f2_local4 = {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		spacing = controller.vSpacing or 0
	}
	local f2_local5 = controller.vAlign
	if not f2_local5 then
		f2_local5 = LUI.Alignment.Top
	end
	f2_local4.alignment = f2_local5
	f2_local1( f2_local2, f2_local3, f2_local4 )
	self.vlist:animateToState( "default" )
	self.vlist.properties = {
		autoScroll = controller and controller.autoScroll,
		autoScrollTime = controller and controller.autoScrollTime
	}
	self:addElement( self.vlist )
	if controller.sendScrollEvents then
		self:registerEventHandler( "list_scroll", function ( element, event )
			if not event.repeatCatch then
				event.repeatCatch = true
				local f16_local0 = element:getParent()
				f16_local0:processEvent( event )
			end
		end )
	end
	self.addRow = LUI.UIGrid.AddRow
	self.addElement = LUI.UIGrid.AddElement
	self.removeElement = LUI.UIGrid.RemoveElement
	self.shiftFirstElementFromNextRow = LUI.UIGrid.ShiftFirstElementFromNextRow
	self.rowEmptinessCheck = LUI.UIGrid.RowEmptinessCheck
	self.updateNavigation = LUI.UIGrid.UpdateNavigation
	self.updateRowFocusability = LUI.UIGrid.UpdateRowFocusability
	self.getChildById = LUI.UIGrid.GetChildById
	self.getAllFocusedChildren = LUI.UIGrid.GetAllFocusedChildren
	self.clearSavedState = LUI.UIGrid.ClearSavedState
	self:registerEventHandler( "update_navigation", self.updateNavigation )
	return self
end

LUI.UIGrid.GetAllFocusedChildren = function ( f3_arg0 )
	local f3_local0 = {}
	local f3_local1 = f3_arg0.vlist:getFirstChild()
	while f3_local1 do
		for f3_local5, f3_local6 in ipairs( f3_local1:getAllFocusedChildren() ) do
			table.insert( f3_local0, f3_local6 )
		end
		f3_local1 = f3_local1:getNextSibling()
	end
	return f3_local0
end

LUI.UIGrid.ClearSavedState = function ( f4_arg0 )
	LUI.UIElement.clearSavedState( f4_arg0 )
	local f4_local0 = f4_arg0.vlist:getFirstChild()
	while f4_local0 do
		f4_local0.listDefaultFocus = nil
		local f4_local1 = f4_local0:getFirstChild()
		while f4_local1 do
			f4_local1.listDefaultFocus = nil
			f4_local1 = f4_local1:getNextSibling()
		end
		f4_local0 = f4_local0:getNextSibling()
	end
end

LUI.UIGrid.GetChildById = function ( f5_arg0, f5_arg1 )
	local f5_local0 = f5_arg0.vlist:getFirstChild()
	while f5_local0 do
		local f5_local1 = f5_local0:getChildById( f5_arg1 )
		if f5_local1 then
			return f5_local1
		end
		f5_local0 = f5_local0:getNextSibling()
	end
end

LUI.UIGrid.AddRow = function ( f6_arg0 )
	local f6_local0 = f6_arg0.vlist:getLastChild()
	local f6_local1 = f6_arg0
	local self = LUI.UIHorizontalList.new()
	LUI.UIHorizontalList.SetNoWrap( self, f6_local1.disableHWrap )
	self.id = f6_arg0.id .. "_row_" .. f6_arg0.vlist:getNumChildren()
	self.removeElement = function ( f35_arg0, f35_arg1 )
		f6_local1:removeElement( f35_arg1 )
	end
	
	self:makeNotFocusable()
	self:registerAnimationState( "default", {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = f6_arg0.rowHeight,
		left = 0,
		right = 0,
		spacing = f6_arg0.hSpacing,
		alignment = f6_arg0.hAlign
	} )
	self:registerEventHandler( "menu_refresh", function ( element, event )
		f6_local1:processEvent( event )
	end )
	self:animateToState( "default" )
	f6_arg0.vlist:addElement( self )
	if f6_local0 then
		LUI.UIHorizontalList.UpdateNavigation( f6_local0 )
	end
	local f6_local3 = f6_arg0.vlist:getFirstChild()
	if f6_local3 then
		LUI.UIHorizontalList.UpdateNavigation( f6_local3 )
	end
end

LUI.UIGrid.AddElement = function ( f7_arg0, f7_arg1 )
	local f7_local0 = f7_arg0
	local f7_local1 = f7_local0.vlist:getLastChild()
	local f7_local2
	if f7_local1 ~= nil and f7_arg0.width > f7_local1:getNumChildren() then
		f7_local2 = false
	else
		f7_local2 = true
	end
	if f7_local2 then
		f7_arg0:addRow()
	end
	f7_local1 = f7_local0.vlist:getLastChild()
	f7_local1:addElement( f7_arg1 )
	if f7_arg1.listDefaultFocus then
		f7_local1.listDefaultFocus = true
	end
	f7_arg0:updateNavigation()
	local f7_local3 = function ( f41_arg0, f41_arg1 )
		local f41_local0 = 1
		local f41_local1 = f41_arg0:getParent()
		f41_local1 = f41_local1:getFirstChild()
		while f41_local1 do
			if f41_local1 == f41_arg0 then
				break
			end
			f41_local0 = f41_local0 + 1
			f41_local1 = f41_local1:getNextSibling()
		end
		f7_local0:processEvent( {
			name = "grid_navigation_update",
			dispatchChildren = true,
			column = f41_local0,
			immediate = true
		} )
		local f41_local2 = f41_arg0:getParent()
		f41_local2:setFocus( true )
		f41_local2 = f41_arg0:getParent()
		f41_local2:saveState()
	end
	
	if not f7_arg1.hasGridHandlers then
		f7_arg1.hasGridHandlers = true
		f7_arg1:addEventHandler( "element_refresh", function ( f42_arg0, f42_arg1 )
			if f42_arg0:isInFocus() then
				f7_local3( f42_arg0, f42_arg1 )
			end
		end )
		f7_arg1:addEventHandler( "button_over", f7_local3 )
		f7_arg1:addEventHandler( "button_over_disable", f7_local3 )
		f7_arg1:addEventHandler( "visual_focused", f7_local3 )
	end
	f7_arg1:registerEventHandler( "grid_navigation_update", function ( element, event )
		local f43_local0 = 1
		local f43_local1 = element:getParent()
		local f43_local2 = f43_local1:getFirstChild()
		while f43_local2 do
			if f43_local2 == element then
				break
			end
			f43_local0 = f43_local0 + 1
			f43_local2 = f43_local2:getNextSibling()
		end
		f43_local1:clearSavedState()
		f43_local1:setFocus( false )
		local f43_local3 = event.column == f43_local0
		local f43_local4 = false
		local f43_local5 = true
		local f43_local6 = 0
		local f43_local7 = f43_local1:getFirstChild()
		while f43_local7 do
			if f43_local7.m_focusable then
				f43_local6 = f43_local6 + 1
				f43_local5 = f43_local7 == element
				f43_local4 = f43_local6 < event.column
			end
			f43_local7 = f43_local7:getNextSibling()
		end
		element.listDefaultFocus = f43_local4 and (f43_local3 or f43_local5)
	end )
end

LUI.UIGrid.RemoveElement = function ( f8_arg0, f8_arg1 )
	local f8_local0 = nil
	local f8_local1 = f8_arg0.vlist:getFirstChild()
	while f8_local1 do
		if f8_arg1:getParent() == f8_local1 then
			LUI.UIHorizontalList.RemoveElement( f8_local1, f8_arg1 )
			f8_arg0:shiftFirstElementFromNextRow( f8_local1 )
			f8_arg0:rowEmptinessCheck( f8_local1, f8_local0 )
			break
		end
		f8_local0 = f8_local1
		f8_local1 = f8_local1:getNextSibling()
	end
	f8_arg0:updateNavigation()
end

LUI.UIGrid.UpdateNavigation = function ( f9_arg0, f9_arg1 )
	local f9_local0 = f9_arg0.vlist:getFirstChild()
	local f9_local1, f9_local2 = nil
	while f9_local0 do
		if f9_local1 == nil then
			f9_local1 = f9_local0
		end
		f9_arg0:updateRowFocusability( f9_local0 )
		f9_local2 = f9_local0
		f9_local0 = f9_local0:getNextSibling()
	end
	LUI.UIVerticalList.UpdateNavigation( f9_arg0.vlist )
	f9_local0 = f9_arg0.vlist:getFirstChild()
	while f9_local0 do
		LUI.UIHorizontalList.UpdateNavigation( f9_local0 )
		local f9_local3 = f9_local0:getFirstChild()
		while f9_local3 do
			if f9_local3:canFocus() then
				f9_local3.canRepeatWrapUp = false
				f9_local3.canRepeatWrapDown = false
			end
			f9_local3 = f9_local3:getNextSibling()
		end
		f9_local0 = f9_local0:getNextSibling()
	end
	if f9_local1 then
		local f9_local3 = f9_local1:getFirstChild()
		while f9_local3 do
			if f9_local3:canFocus() then
				f9_local3.canRepeatWrapUp = true
			end
			f9_local3 = f9_local3:getNextSibling()
		end
	end
	if f9_local2 then
		local f9_local3 = f9_local2:getFirstChild()
		while f9_local3 do
			if f9_local3:canFocus() then
				f9_local3.canRepeatWrapDown = true
			end
			f9_local3 = f9_local3:getNextSibling()
		end
	end
end

LUI.UIGrid.UpdateRowFocusability = function ( f10_arg0, f10_arg1 )
	local f10_local0 = f10_arg1:canFocus()
	local f10_local1 = false
	local f10_local2 = f10_arg1:getFirstChild()
	while f10_local2 do
		if f10_local2:canFocus() then
			f10_local1 = true
			break
		end
		f10_local2 = f10_local2:getNextSibling()
	end
	if f10_local1 ~= f10_local0 then
		if f10_local1 then
			f10_arg1:makeFocusable()
		else
			f10_arg1:makeNotFocusable()
		end
	end
end

LUI.UIGrid.RowEmptinessCheck = function ( f11_arg0, f11_arg1, f11_arg2 )
	if f11_arg1:getNumChildren() == 0 then
		f11_arg0.vlist:removeElement( f11_arg1 )
	end
end

LUI.UIGrid.ShiftFirstElementFromNextRow = function ( f12_arg0, f12_arg1 )
	local f12_local0 = f12_arg1:getNextSibling()
	if f12_local0 then
		local f12_local1 = f12_local0:getFirstChild()
		if f12_local1 then
			LUI.UIHorizontalList.RemoveElement( f12_local0, f12_local1 )
			f12_arg0:rowEmptinessCheck( f12_local0, f12_arg1 )
			f12_arg1:addElement( f12_local1 )
			f12_arg0:shiftFirstElementFromNextRow( f12_local0 )
		end
	end
end

