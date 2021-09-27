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
		f2_local6.button:addEventHandler( "button_over", function ( f12_arg0, f12_arg1 )
			if f12_arg1.focusType == FocusType.MouseOver then
				return 
			else
				HorizSlideListTrySelectItem( self, f2_local6 )
			end
		end )
		self:addElement( f2_local6 )
		f2_local2[f2_local3] = f2_local6
	end
	self.listElems = f2_local2
	self.navArrows = LUI.NavArrows.new( function ( f13_arg0, f13_arg1 )
		HorizSlideListOnArrow( self, -1 )
	end, function ( f14_arg0, f14_arg1 )
		HorizSlideListOnArrow( self, 1 )
	end, f2_arg3 )
	self:addElement( self.navArrows )
	LUI.NavArrows.SetVisibility( self.navArrows, LUI.NavArrows.Left, 0 )
	LUI.NavArrows.SetVisibility( self.navArrows, LUI.NavArrows.Right, 0 )
	return self
end

function HorizSlideListTrySelectItem( f3_arg0, f3_arg1 )
	local f3_local0 = f3_arg1.listItemData
	if f3_local0 ~= nil then
		HorizSlideListSelectItem( f3_arg0, f3_local0.listDataIndex )
	end
end

function HorizSlideListUnselectPrev( f4_arg0, f4_arg1 )
	local f4_local0 = f4_arg0.listData
	local f4_local1 = f4_arg0.loopedElems
	local f4_local2 = f4_local0.focusedIdx
	local f4_local3 = false
	if f4_local2 > 0 and f4_local2 <= #f4_local1 then
		local f4_local4 = f4_local1[f4_local2]
		f4_local3 = f4_local4.button:isInFocus()
		f4_local4:processEvent( {
			name = "lose_focus",
			duration = f4_arg1
		} )
		f4_local4:processEvent( {
			name = "list_unselect",
			duration = f4_arg1
		} )
	end
	return f4_local3
end

function HorizSlideListSelectItem( f5_arg0, f5_arg1 )
	local f5_local0 = f5_arg0.listData
	if f5_local0.selectedIdx == f5_arg1 then
		return 
	end
	f5_local0.selectedIdx = f5_arg1
	local f5_local1 = f5_arg0.loopedElems
	local f5_local2 = LUI.UIHorizontalSlideList.AnimTime
	local f5_local3 = false
	local f5_local4 = false
	if f5_arg1 == f5_local0.focusedIdx then
		f5_local2 = 0
	else
		HorizSlideListUnselectPrev( f5_arg0, f5_local2 )
		if f5_local0.focusedIdx < f5_arg1 then
			f5_local3 = true
		else
			f5_local4 = true
		end
		f5_local0.focusedIdx = f5_arg1
	end
	f5_local1[f5_arg1]:processEvent( {
		name = "list_select",
		duration = f5_local2
	} )
	local f5_local5 = f5_local0.listWidth / 2
	local f5_local6 = f5_local0.listWidth
	local f5_local7 = math.floor( f5_local0.visibleItems / 2 )
	local f5_local8 = (f5_local6 - f5_local5) / f5_local7
	local f5_local9 = f5_local5
	local f5_local10 = f5_local5
	if f5_local7 > 1 then
		local f5_local11 = f5_local8 * 0.33
		f5_local9 = f5_local9 + f5_local11
		f5_local10 = f5_local10 - f5_local11
		f5_local8 = (f5_local6 - f5_local9) / f5_local7
	end
	local f5_local11 = f5_arg1 - f5_local7
	local f5_local12 = f5_local11
	if f5_local3 then
		f5_local11 = f5_local11 - 1
	end
	f5_local11 = math.max( f5_local11, 1 )
	local f5_local13 = math.min( f5_local11 + #f5_arg0.listElems - 1, #f5_local1 )
	local f5_local14 = f5_arg1 + f5_local7
	for f5_local15 = f5_local11, f5_local13, 1 do
		local f5_local18 = f5_local1[f5_local15]
		local f5_local19 = f5_local15 - f5_arg1
		local f5_local20 = nil
		if f5_local19 > 0 then
			f5_local20 = f5_local9
		elseif f5_local19 < 0 then
			f5_local20 = f5_local10
		else
			f5_local20 = f5_local5
		end
		f5_local20 = f5_local20 + f5_local8 * f5_local19
		local f5_local21 = 1
		local f5_local22 = 1
		if f5_local7 < math.abs( f5_local19 ) then
			f5_local21 = 0
		end
		local f5_local23
		if f5_local15 == f5_local14 then
			f5_local23 = f5_local3
		else
			f5_local23 = false
		end
		local f5_local24
		if f5_local15 == f5_local12 then
			f5_local24 = f5_local4
		else
			f5_local24 = false
		end
		if f5_local23 or f5_local24 then
			f5_local22 = 0
			local f5_local25 = f5_local20 + f5_local8
			if f5_local24 then
				f5_local25 = f5_local20 - f5_local8
			end
			f5_local18:registerAnimationState( "snap", {
				leftAnchor = true,
				topAnchor = true,
				rightAnchor = false,
				bottomAnchor = false,
				left = f5_local25,
				right = f5_local25,
				alpha = f5_local22
			} )
			f5_local18:animateToState( "snap", f5_local2 )
		end
		f5_local18:registerAnimationState( "move", {
			leftAnchor = true,
			topAnchor = true,
			rightAnchor = false,
			bottomAnchor = false,
			left = f5_local20,
			right = f5_local20,
			alpha = f5_local21
		} )
		f5_local18:animateToState( "move", f5_local2 )
		local f5_local25 = f5_local0.dataArray[f5_local15]
		local f5_local26 = f5_local22 > 0
		local f5_local27 = f5_local21 > 0
		if f5_local26 ~= f5_local27 then
			f5_local18:processEvent( {
				name = "vis_change",
				visible = f5_local27,
				duration = f5_local2
			} )
		end
		if f5_local18.button.isOnScreen ~= f5_local27 then
			f5_local18.button.isOnScreen = f5_local27
			f5_local18.button:processEvent( {
				name = "on_off_screen",
				itemData = f5_local25
			} )
		end
		if f5_local18.listItemData ~= f5_local25 then
			HorizSlideListSetItemData( f5_arg0, f5_local18, f5_local25 )
		end
		local f5_local28 = nil
		if f5_local15 > 1 then
			f5_local28 = f5_local1[f5_local15 - 1].button
		end
		local f5_local29 = nil
		if f5_local15 < #f5_local1 then
			f5_local29 = f5_local1[f5_local15 + 1].button
		end
		local f5_local30 = f5_local18.button.navigation
		f5_local30.left = f5_local28
		f5_local30.right = f5_local29
	end
	local f5_local15 = 0
	if f5_arg1 < #f5_local1 then
		f5_local15 = 1
	end
	local f5_local16 = 0
	if f5_arg1 > 1 then
		f5_local16 = 1
	end
	LUI.NavArrows.SetVisibility( f5_arg0.navArrows, LUI.NavArrows.Left, f5_local16 )
	LUI.NavArrows.SetVisibility( f5_arg0.navArrows, LUI.NavArrows.Right, f5_local15 )
	f5_arg0:dispatchEventToRoot( {
		name = "list_focus",
		itemData = f5_local0.dataArray[f5_arg1]
	} )
end

function HorizSlideListSetItemData( f6_arg0, f6_arg1, f6_arg2 )
	f6_arg1.listItemData = f6_arg2
	f6_arg0.listData.listItemUpdateFunc( f6_arg1, f6_arg2 )
end

function HorizSlideListSetData( f7_arg0, f7_arg1, f7_arg2, f7_arg3, f7_arg4 )
	local f7_local0 = f7_arg0.listData
	f7_local0.listItemUpdateFunc = f7_arg2
	f7_local0.dataArray = f7_arg1
	f7_local0.selectedIdx = nil
	if f7_arg3 then
		f7_local0.focusedIdx = math.ceil( math.min( f7_local0.visibleItems, #f7_arg1 ) / 2 )
	elseif f7_arg4 ~= nil then
		f7_local0.focusedIdx = f7_arg4
	else
		f7_local0.focusedIdx = math.min( 1, #f7_arg1 )
	end
	local f7_local1 = f7_arg0.listElems
	local f7_local2 = 1
	f7_arg0.loopedElems = {}
	for f7_local3 = 1, #f7_arg1, 1 do
		f7_arg0.loopedElems[f7_local3] = f7_local1[f7_local2]
		f7_arg1[f7_local3].listDataIndex = f7_local3
		f7_local2 = f7_local2 + 1
		if #f7_local1 < f7_local2 then
			f7_local2 = 1
		end
	end
	for f7_local3 = 1, #f7_local1, 1 do
		HorizSlideListSetItemData( f7_arg0, f7_local1[f7_local3], nil )
	end
	local f7_local3 = f7_arg0.loopedElems[f7_local0.focusedIdx]
	if f7_local3 ~= nil then
		HorizSlideListSetItemData( f7_arg0, f7_local3, f7_arg1[f7_local0.focusedIdx] )
	end
end

function HorizSlideListUpdateData( f8_arg0, f8_arg1, f8_arg2, f8_arg3 )
	local f8_local0 = HorizSlideListUnselectPrev( f8_arg0, 0 )
	HorizSlideListSetData( f8_arg0, f8_arg1, f8_arg0.listData.listItemUpdateFunc, f8_arg2, f8_arg3 )
	HorizSlideListInitSelected( f8_arg0, f8_local0 )
end

function HorizSlideListInitSelected( f9_arg0, f9_arg1 )
	local f9_local0 = f9_arg0.loopedElems
	local f9_local1 = f9_arg0.listData.focusedIdx
	if f9_local1 == 0 or #f9_local0 < f9_local1 then
		return 
	end
	local f9_local2 = f9_local0[f9_local1]
	HorizSlideListTrySelectItem( f9_arg0, f9_local2 )
	if f9_arg1 then
		f9_local2:processEvent( {
			name = "gain_focus"
		} )
	end
end

function HorizSlideListOnArrow( f10_arg0, f10_arg1 )
	local f10_local0 = f10_arg0.listData.focusedIdx + f10_arg1
	if f10_local0 < 1 or #f10_arg0.loopedElems < f10_local0 then
		return 
	else
		f10_arg0.loopedElems[f10_local0]:processEvent( {
			name = "gain_focus"
		} )
	end
end

