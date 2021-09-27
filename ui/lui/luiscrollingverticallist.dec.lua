LUI.UIScrollingVerticalList = {}
function RefreshScrollList( f1_arg0, f1_arg1 )
	f1_arg0:closeChildren()
	f1_arg0:clearSavedState()
	f1_arg0:processEvent( {
		name = "menu_refresh"
	} )
end

function CreateArrowButton( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8 )
	local self = LUI.UIButton.new( {
		leftAnchor = false,
		rightAnchor = false,
		topAnchor = f2_arg3,
		bottomAnchor = f2_arg5,
		width = 15,
		top = f2_arg2,
		bottom = f2_arg4,
		alpha = 1,
		zRot = f2_arg6
	} )
	self.id = f2_arg0
	self.m_requireFocusType = FocusType.MouseOver
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	self:animateToState( "hidden" )
	self:addEventHandler( "button_action", function ( f10_arg0, f10_arg1 )
		f10_arg0:dispatchEventToRoot( {
			name = f2_arg7,
			dispatchChildren = true
		} )
	end )
	self:addEventHandler( "list_scroll", f2_arg8 )
	local self = LUI.UIImage.new()
	self.id = f2_arg0 .. "_image"
	self:registerAnimationState( "default", {
		material = RegisterMaterial( "widg_lobby_arrow" ),
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
		color = Colors.s1.text_unfocused
	} )
	self:animateToState( "default" )
	self:addElement( self )
	return self
end

function CreateListDef( f3_arg0, f3_arg1, f3_arg2, f3_arg3 )
	f3_arg0.scrollByChildHeight = true
	f3_arg0.disableOutsideChildren = true
	f3_arg0.sendScrollEvents = true
	return {
		type = "UIVerticalList",
		id = "scroll_list_vlist",
		focusable = true,
		properties = f3_arg0,
		states = {
			default = {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = 0,
				right = 0,
				top = f3_arg2,
				bottom = -f3_arg3
			}
		},
		handlers = {
			refresh_scroll_list = RefreshScrollList,
			scroll_up = function ( f11_arg0, f11_arg1 )
				f11_arg0:SetVerticalListScrollUp()
			end
			,
			scroll_down = function ( f12_arg0, f12_arg1 )
				f12_arg0:SetVerticalListScrollDown()
			end
			
		},
		childrenFeeder = f3_arg1
	}
end

function SetChildrenIgnoreMouse( f4_arg0, f4_arg1 )
	local f4_local0 = f4_arg0:getNumChildren()
	local f4_local1 = f4_arg0:getFirstChild()
	for f4_local2 = 1, f4_local0, 1 do
		local f4_local5 = f4_local2
		f4_local1.m_focusLockedByScrolling = f4_arg1.ignore
		f4_local1 = f4_local1:getNextSibling()
	end
end

LUI.UIScrollingVerticalList.build = function ( f5_arg0, f5_arg1 )
	return LUI.UIScrollingVerticalList.new( nil, f5_arg0, f5_arg1 )
end

LUI.UIScrollingVerticalList.new = function ( f6_arg0, f6_arg1, f6_arg2 )
	local self = LUI.UIElement.new( f6_arg0 )
	if not f6_arg2 then
		f6_arg2 = {}
	end
	if not f6_arg1 then
		f6_arg1 = {}
	end
	self.id = "UIScrollingVList"
	local f6_local1 = f6_arg1.childrenFeeder
	if f6_arg1.childrenFeeder then
		f6_arg1.childrenFeeder = nil
	end
	local f6_local2 = 0
	if f6_arg2.use_arrows then
		local f6_local3 = function ( f15_arg0, f15_arg1 )
			if f15_arg1.show_up_arrow then
				f15_arg0:animateToState( "default", 0 )
				f15_arg0:processEvent( {
					name = "enable"
				} )
			else
				f15_arg0:animateToState( "hidden", 0 )
				f15_arg0:processEvent( {
					name = "disable"
				} )
			end
		end
		
		f6_local2 = 30
		self:addElement( CreateArrowButton( "scroll_list_up_arrow", self, 0, true, f6_local2, false, 90, "scroll_up", f6_local3 ) )
		self:addElement( CreateArrowButton( "scroll_list_down_arrow", self, -f6_local2, false, 0, true, -90, "scroll_down", function ( f16_arg0, f16_arg1 )
			if f16_arg1.show_down_arrow then
				f16_arg0:animateToState( "default", 0 )
				f16_arg0:processEvent( {
					name = "enable"
				} )
			else
				f16_arg0:animateToState( "hidden", 0 )
				f16_arg0:processEvent( {
					name = "disable"
				} )
			end
		end ) )
	end
	local f6_local4 = LUI.MenuBuilder.buildItems( CreateListDef( f6_arg2, f6_local1, f6_local2, f6_local2 ), f6_arg2, stencil )
	f6_local4:setUseStencil( true )
	self:addElement( f6_local4 )
	f6_local4:registerEventHandler( "set_children_ignore_mouse", SetChildrenIgnoreMouse )
	if f6_arg2.use_scrollbar then
		self:addElement( LUI.UIVerticalScrollbar.new( f6_local4, f6_arg2.bar_width, 1, 1, f6_arg2.scrollbar_move_func, f6_arg2.bar_color, f6_arg2.bar_bg_color, f6_arg2.bar_material, f6_arg2.bar_bg_material ) )
	end
	self.vlist = f6_local4
	self.addElement = LUI.UIScrollingVerticalList.AddElement
	self.removeElement = LUI.UIScrollingVerticalList.RemoveElement
	self.closeChildren = LUI.UIScrollingVerticalList.CloseChildren
	return self
end

LUI.UIScrollingVerticalList.AddElement = function ( f7_arg0, f7_arg1 )
	f7_arg0.vlist:addElement( f7_arg1 )
end

LUI.UIScrollingVerticalList.RemoveElement = function ( f8_arg0, f8_arg1 )
	f8_arg0.vlist:removeElement( f8_arg1 )
end

LUI.UIScrollingVerticalList.CloseChildren = function ( f9_arg0 )
	f9_arg0.vlist:closeChildren()
end

