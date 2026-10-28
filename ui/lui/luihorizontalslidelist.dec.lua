LUI.UIHorizontalSlideList = {}
LUI.UIHorizontalSlideList.AnimTime = 150
LUI.UIHorizontalSlideList.build = function ( menu, controller )
	local self = LUI.UIHorizontalSlideList.new( {} )
	LUI.UIHorizontalSlideList.SetNoWrap( self, controller.noWrap )
	return self
end

LUI.UIHorizontalSlideList.new = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
	local self = LUI.UIElement.new( f2_arg0 )
	self:disableTreeFocus()
	self:registerEventHandler( "gain_focus", function ( element, event )
		HorizSlideListInitSelected( element, true )
	end )
	local f2_local1 = 0
	if f2_arg0.width then
		f2_local1 = f2_arg0.width
	elseif f2_arg0.right and f2_arg0.left then
		f2_local1 = f2_arg0.right - f2_arg0.left
	end
	self.listData = {
		visibleItems = f2_arg1,
		listWidth = f2_local1
	}
	local f2_local2 = {}
	for f2_local3 = 1, f2_arg1 + 1, 1 do
		local f2_local6 = f2_arg2( f2_local3 )
		LUI.UIElement.initNavTables( f2_local6.button )
		f2_local6.button.isOnScreen = true
		f2_local6.button:addEventHandler( "button_over", function ( f4_arg0, f4_arg1 )
			if f4_arg1.focusType == FocusType.MouseOver then
				return 
			else
				HorizSlideListTrySelectItem( self, f2_local6 )
			end
		end )
		self:addElement( f2_local6 )
		f2_local2[f2_local3] = f2_local6
	end
	self.listElems = f2_local2
	self.navArrows = LUI.NavArrows.new( function ( f5_arg0, f5_arg1 )
		HorizSlideListOnArrow( self, -1 )
	end, function ( f6_arg0, f6_arg1 )
		HorizSlideListOnArrow( self, 1 )
	end, f2_arg3 )
	self:addElement( self.navArrows )
	LUI.NavArrows.SetVisibility( self.navArrows, LUI.NavArrows.Left, 0 )
	LUI.NavArrows.SetVisibility( self.navArrows, LUI.NavArrows.Right, 0 )
	return self
end

function HorizSlideListTrySelectItem( f7_arg0, f7_arg1 )
	local f7_local0 = f7_arg1.listItemData
	if f7_local0 ~= nil then
		HorizSlideListSelectItem( f7_arg0, f7_local0.listDataIndex )
	end
end

function HorizSlideListUnselectPrev( f8_arg0, f8_arg1 )
	local f8_local0 = f8_arg0.listData
	local f8_local1 = f8_arg0.loopedElems
	local f8_local2 = f8_local0.focusedIdx
	local f8_local3 = false
	if f8_local2 > 0 and f8_local2 <= #f8_local1 then
		local f8_local4 = f8_local1[f8_local2]
		f8_local3 = f8_local4.button:isInFocus()
		f8_local4:processEvent( {
			name = "lose_focus",
			duration = f8_arg1
		} )
		f8_local4:processEvent( {
			name = "list_unselect",
			duration = f8_arg1
		} )
	end
	return f8_local3
end

function HorizSlideListSelectItem( f9_arg0, f9_arg1 )
	local f9_local0 = f9_arg0.listData
	if f9_local0.selectedIdx == f9_arg1 then
		return 
	end
	f9_local0.selectedIdx = f9_arg1
	local f9_local1 = f9_arg0.loopedElems
	local f9_local2 = LUI.UIHorizontalSlideList.AnimTime
	local f9_local3 = false
	local f9_local4 = false
	if f9_arg1 == f9_local0.focusedIdx then
		f9_local2 = 0
	else
		HorizSlideListUnselectPrev( f9_arg0, f9_local2 )
		if f9_local0.focusedIdx < f9_arg1 then
			f9_local3 = true
		else
			f9_local4 = true
		end
		f9_local0.focusedIdx = f9_arg1
	end
	f9_local1[f9_arg1]:processEvent( {
		name = "list_select",
		duration = f9_local2
	} )
	local f9_local5 = f9_local0.listWidth / 2
	local f9_local6 = f9_local0.listWidth
	local f9_local7 = math.floor( f9_local0.visibleItems / 2 )
	local f9_local8 = (f9_local6 - f9_local5) / f9_local7
	local f9_local9 = f9_local5
	local f9_local10 = f9_local5
	if f9_local7 > 1 then
		local f9_local11 = f9_local8 * 0.33
		f9_local9 = f9_local9 + f9_local11
		f9_local10 = f9_local10 - f9_local11
		f9_local8 = (f9_local6 - f9_local9) / f9_local7
	end
	local f9_local11 = f9_arg1 - f9_local7
	local f9_local12 = f9_local11
	if f9_local3 then
		f9_local11 = f9_local11 - 1
	end
	f9_local11 = math.max( f9_local11, 1 )
	local f9_local13 = math.min( f9_local11 + #f9_arg0.listElems - 1, #f9_local1 )
	local f9_local14 = f9_arg1 + f9_local7
	for f9_local15 = f9_local11, f9_local13, 1 do
		local f9_local18 = f9_local1[f9_local15]
		local f9_local19 = f9_local15 - f9_arg1
		local f9_local20 = nil
		if f9_local19 > 0 then
			f9_local20 = f9_local9
		elseif f9_local19 < 0 then
			f9_local20 = f9_local10
		else
			f9_local20 = f9_local5
		end
		f9_local20 = f9_local20 + f9_local8 * f9_local19
		local f9_local21 = 1
		local f9_local22 = 1
		if f9_local7 < math.abs( f9_local19 ) then
			f9_local21 = 0
		end
		local f9_local23
		if f9_local15 == f9_local14 then
			f9_local23 = f9_local3
		else
			f9_local23 = false
		end
		local f9_local24
		if f9_local15 == f9_local12 then
			f9_local24 = f9_local4
		else
			f9_local24 = false
		end
		if f9_local23 or f9_local24 then
			f9_local22 = 0
			local f9_local25 = f9_local20 + f9_local8
			if f9_local24 then
				f9_local25 = f9_local20 - f9_local8
			end
			f9_local18:registerAnimationState( "snap", {
				leftAnchor = true,
				topAnchor = true,
				rightAnchor = false,
				bottomAnchor = false,
				left = f9_local25,
				right = f9_local25,
				alpha = f9_local22
			} )
			f9_local18:animateToState( "snap", f9_local2 )
		end
		f9_local18:registerAnimationState( "move", {
			leftAnchor = true,
			topAnchor = true,
			rightAnchor = false,
			bottomAnchor = false,
			left = f9_local20,
			right = f9_local20,
			alpha = f9_local21
		} )
		f9_local18:animateToState( "move", f9_local2 )
		local f9_local25 = f9_local0.dataArray[f9_local15]
		local f9_local26 = f9_local22 > 0
		local f9_local27 = f9_local21 > 0
		if f9_local26 ~= f9_local27 then
			f9_local18:processEvent( {
				name = "vis_change",
				visible = f9_local27,
				duration = f9_local2
			} )
		end
		if f9_local18.button.isOnScreen ~= f9_local27 then
			f9_local18.button.isOnScreen = f9_local27
			f9_local18.button:processEvent( {
				name = "on_off_screen",
				itemData = f9_local25
			} )
		end
		if f9_local18.listItemData ~= f9_local25 then
			HorizSlideListSetItemData( f9_arg0, f9_local18, f9_local25 )
		end
		local f9_local28 = nil
		if f9_local15 > 1 then
			f9_local28 = f9_local1[f9_local15 - 1].button
		end
		local f9_local29 = nil
		if f9_local15 < #f9_local1 then
			f9_local29 = f9_local1[f9_local15 + 1].button
		end
		local f9_local30 = f9_local18.button.navigation
		f9_local30.left = f9_local28
		f9_local30.right = f9_local29
	end
	local f9_local15 = 0
	if f9_arg1 < #f9_local1 then
		f9_local15 = 1
	end
	local f9_local16 = 0
	if f9_arg1 > 1 then
		f9_local16 = 1
	end
	LUI.NavArrows.SetVisibility( f9_arg0.navArrows, LUI.NavArrows.Left, f9_local16 )
	LUI.NavArrows.SetVisibility( f9_arg0.navArrows, LUI.NavArrows.Right, f9_local15 )
	f9_arg0:dispatchEventToRoot( {
		name = "list_focus",
		itemData = f9_local0.dataArray[f9_arg1]
	} )
end

function HorizSlideListSetItemData( f10_arg0, f10_arg1, f10_arg2 )
	f10_arg1.listItemData = f10_arg2
	f10_arg0.listData.listItemUpdateFunc( f10_arg1, f10_arg2 )
end

function HorizSlideListSetData( f11_arg0, f11_arg1, f11_arg2, f11_arg3, f11_arg4 )
	local f11_local0 = f11_arg0.listData
	f11_local0.listItemUpdateFunc = f11_arg2
	f11_local0.dataArray = f11_arg1
	f11_local0.selectedIdx = nil
	if f11_arg3 then
		f11_local0.focusedIdx = math.ceil( math.min( f11_local0.visibleItems, #f11_arg1 ) / 2 )
	elseif f11_arg4 ~= nil then
		f11_local0.focusedIdx = f11_arg4
	else
		f11_local0.focusedIdx = math.min( 1, #f11_arg1 )
	end
	local f11_local1 = f11_arg0.listElems
	local f11_local2 = 1
	f11_arg0.loopedElems = {}
	for f11_local3 = 1, #f11_arg1, 1 do
		f11_arg0.loopedElems[f11_local3] = f11_local1[f11_local2]
		f11_arg1[f11_local3].listDataIndex = f11_local3
		f11_local2 = f11_local2 + 1
		if #f11_local1 < f11_local2 then
			f11_local2 = 1
		end
	end
	for f11_local3 = 1, #f11_local1, 1 do
		HorizSlideListSetItemData( f11_arg0, f11_local1[f11_local3], nil )
	end
	local f11_local3 = f11_arg0.loopedElems[f11_local0.focusedIdx]
	if f11_local3 ~= nil then
		HorizSlideListSetItemData( f11_arg0, f11_local3, f11_arg1[f11_local0.focusedIdx] )
	end
end

function HorizSlideListUpdateData( f12_arg0, f12_arg1, f12_arg2, f12_arg3 )
	local f12_local0 = HorizSlideListUnselectPrev( f12_arg0, 0 )
	HorizSlideListSetData( f12_arg0, f12_arg1, f12_arg0.listData.listItemUpdateFunc, f12_arg2, f12_arg3 )
	HorizSlideListInitSelected( f12_arg0, f12_local0 )
end

function HorizSlideListInitSelected( f13_arg0, f13_arg1 )
	local f13_local0 = f13_arg0.loopedElems
	local f13_local1 = f13_arg0.listData.focusedIdx
	if f13_local1 == 0 or #f13_local0 < f13_local1 then
		return 
	end
	local f13_local2 = f13_local0[f13_local1]
	HorizSlideListTrySelectItem( f13_arg0, f13_local2 )
	if f13_arg1 then
		f13_local2:processEvent( {
			name = "gain_focus"
		} )
	end
end

function HorizSlideListOnArrow( f14_arg0, f14_arg1 )
	local f14_local0 = f14_arg0.listData.focusedIdx + f14_arg1
	if f14_local0 < 1 or #f14_arg0.loopedElems < f14_local0 then
		return 
	else
		f14_arg0.loopedElems[f14_local0]:processEvent( {
			name = "gain_focus"
		} )
	end
end

