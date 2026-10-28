LUI.UIScrollbarHelper = {}
LUI.UIScrollbarHelper.InactiveDelay = 500
LUI.UIScrollbarHelper.InactiveDuration = 250
LUI.UIScrollbarHelper.OnMouseMove = function ( f1_arg0, f1_arg1 )
	if f1_arg0.scrolling then
		local f1_local0 = f1_arg0:getParent()
		local f1_local1, f1_local2, f1_local3, f1_local4 = f1_local0:getRect()
		local f1_local5, f1_local6 = f1_arg1.root:pixelsToUnits( f1_arg1.x, f1_arg1.y )
		f1_local1, f1_local2 = f1_arg1.root:pixelsToUnits( f1_local1, f1_local2 )
		local f1_local7 = 0
		if f1_local0.isHorizontal then
			f1_local7 = (f1_local5 - f1_local1) / f1_local0:getWidth()
		else
			f1_local7 = (f1_local6 - f1_local2) / f1_local0:getHeight()
		end
		if f1_local7 < 0 then
			f1_local7 = 0
		elseif f1_local7 > 1 then
			f1_local7 = 1
		end
		if f1_arg0.onMoveFunc then
			f1_arg0.onMoveFunc( f1_local0, f1_local0.List, f1_local7, f1_local0.properties )
		end
	end
end

LUI.UIScrollbarHelper.MouseMoveEvent = function ( f2_arg0, f2_arg1 )
	f2_arg0:applyElementTransform()
	local f2_local0, f2_local1 = ProjectRootCoordinate( f2_arg1.rootName, f2_arg1.x, f2_arg1.y )
	LUI.UIScrollbarHelper.OnMouseMove( f2_arg0, {
		controller = f2_arg1.controller,
		root = f2_arg1.root,
		x = f2_local0,
		y = f2_local1
	} )
	f2_arg0:undoElementTransform()
end

LUI.UIScrollbarHelper.ScrollbarMoved = function ( f3_arg0, f3_arg1, f3_arg2 )
	if not f3_arg1 then
		DebugPrint( "Warning: Tried to scroll a scrollbar without a list. Make sure the list was manually added. E.G. scrollBar:setList( <vList> )." )
		return 
	elseif not f3_arg2 then
		DebugPrint( "Warning: Tried to scroll a scrollbar without a scroll percentage. This is very bad." )
		return 
	end
	local f3_local0 = f3_arg1:getNumChildren()
	local f3_local1 = math.min( math.floor( f3_arg2 * f3_local0 ), f3_local0 - 1 )
	if f3_local1 == f3_arg1.lastFocusIndex then
		return 
	end
	f3_arg1.lastFocusIndex = f3_local1
	local f3_local2 = f3_arg1:getFirstChild()
	local f3_local3 = nil
	for f3_local4 = 0, f3_local0 - 1, 1 do
		if f3_local4 == f3_local1 then
			f3_local3 = f3_local2
		end
		f3_local2:processEvent( {
			name = "lose_focus",
			immediate = true
		} )
		f3_local2 = f3_local2:getNextSibling()
	end
	while f3_local3 and f3_local3.scrollingToNext do
		f3_local3 = f3_local3:getNextSibling()
	end
	if f3_local3 then
		f3_local3:processEvent( {
			name = "gain_focus",
			immediate = true
		} )
	end
end

LUI.UIScrollbarHelper.OnFocus = function ( f4_arg0, f4_arg1 )
	f4_arg0.buttonImage:setImage( f4_arg0.buttonImageSelectedMaterial )
	f4_arg0.buttonImage:registerAnimationState( "default", {
		color = f4_arg0.buttonImageSelectedColor
	} )
	f4_arg0.buttonImage:animateToState( "default" )
	f4_arg0.bgImage:setImage( f4_arg0.bgImageSelectedMaterial )
	if f4_arg0.dimBackgroundWhenUnselected then
		f4_arg0.bgImage:setAlpha( 1 )
	end
	f4_arg0.bgImage:animateToState( "default" )
end

LUI.UIScrollbarHelper.OnMouseDown = function ( f5_arg0, f5_arg1 )
	f5_arg0.scrolling = true
	local f5_local0 = Engine.SetUsingScrollbar
	local f5_local1 = f5_arg1.controller
	if not f5_local1 then
		f5_local1 = Engine.GetFirstActiveController()
	end
	f5_local0( f5_local1, true )
	LUI.UIScrollbarHelper.OnMouseMove( f5_arg0, f5_arg1 )
	f5_local0 = f5_arg0:getParent()
	if f5_local0.List then
		f5_local0.List:processEvent( {
			name = "set_children_ignore_mouse",
			ignore = true,
			immediate = true
		} )
	end
	LUI.UIScrollbarHelper.OnFocus( f5_local0, f5_arg1 )
end

LUI.UIScrollbarHelper.OnLostFocus = function ( f6_arg0, f6_arg1 )
	f6_arg0.buttonImage:setImage( f6_arg0.buttonImageUnselectedMaterial )
	f6_arg0.buttonImage:registerAnimationState( "default", {
		color = f6_arg0.buttonImageUnselectedColor
	} )
	f6_arg0.buttonImage:animateToState( "default" )
	f6_arg0.bgImage:setImage( f6_arg0.bgImageUnselectedMaterial )
	if f6_arg0.dimBackgroundWhenUnselected then
		f6_arg0.bgImage:setAlpha( 0.5 )
	end
	f6_arg0.bgImage:animateToState( "default" )
end

LUI.UIScrollbarHelper.StopScrolling = function ( f7_arg0, f7_arg1 )
	f7_arg0.scrolling = false
	local f7_local0 = Engine.SetUsingScrollbar
	local f7_local1 = f7_arg1.controller
	if not f7_local1 then
		f7_local1 = Engine.GetFirstActiveController()
	end
	f7_local0( f7_local1, false )
	f7_local0 = f7_arg0:getParent()
	if f7_local0.List then
		f7_local0.List:processEvent( {
			name = "set_children_ignore_mouse",
			ignore = false,
			immediate = true
		} )
	end
	LUI.UIScrollbarHelper.OnLostFocus( f7_local0, f7_arg1 )
end

LUI.UIScrollbarHelper.new = function ( f8_arg0, f8_arg1, f8_arg2, f8_arg3, f8_arg4, f8_arg5, f8_arg6, f8_arg7, f8_arg8, f8_arg9, f8_arg10, f8_arg11, f8_arg12, f8_arg13, f8_arg14, f8_arg15, f8_arg16, f8_arg17, f8_arg18 )
	if not f8_arg5 then
		f8_arg5 = 20
	end
	if not f8_arg7 then
		f8_arg7 = 1
	end
	if not f8_arg8 then
		f8_arg8 = 1
	end
	if not f8_arg9 then
		f8_arg9 = LUI.UIScrollbarHelper.ScrollbarMoved
	end
	if not f8_arg10 then
		f8_arg10 = {
			red = 0.3,
			green = 0.3,
			blue = 0.3,
			alpha = 1
		}
	end
	if not f8_arg17 then
		f8_arg17 = f8_arg10
	end
	if not f8_arg11 then
		f8_arg11 = {
			red = 0.05,
			green = 0.05,
			blue = 0.05,
			alpha = 1
		}
	end
	if not f8_arg12 then
		f8_arg12 = "black"
	end
	if not f8_arg13 then
		f8_arg13 = "white"
	end
	if not f8_arg14 then
		f8_arg14 = "black"
	end
	if not f8_arg18 then
		f8_arg18 = 0
	end
	local f8_local0 = nil
	if f8_arg15 == nil then
		f8_local0 = true
		f8_arg15 = f8_arg13
	end
	if f8_arg3 then
		f8_arg3.alpha = f8_arg3.alpha or f8_arg7
	end
	local self = LUI.UIElement.new( f8_arg3 or {
		left = 0,
		top = 0,
		right = f8_arg5,
		bottom = 0,
		leftAnchor = false,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = true,
		alpha = f8_arg7
	} )
	self.id = f8_arg0
	self.isHorizontal = f8_arg1
	self:registerAnimationState( "inactive", {
		alpha = f8_arg8
	} )
	self:registerEventHandler( "list_scroll", LUI.UIScrollbarHelper.UpdateScrollbar )
	self:registerEventHandler( "focus_changed", LUI.UIScrollbarHelper.FocusChanged )
	self:registerEventHandler( "inactive", LUI.UIScrollbarHelper.Inactive )
	self:registerEventHandler( "scrollbarFocused", LUI.UIScrollbarHelper.OnFocus )
	self:registerEventHandler( "scrollbarUnfocused", LUI.UIScrollbarHelper.OnLostFocus )
	self.bgImageUnselectedMaterial = RegisterMaterial( f8_arg13 )
	self.bgImageSelectedMaterial = RegisterMaterial( f8_arg15 )
	self.bgImage = LUI.UIImage.new( {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = true,
		color = f8_arg11,
		alpha = f8_arg11.alpha,
		material = RegisterMaterial( f8_arg13 )
	} )
	if f8_local0 then
		self.dimBackgroundWhenUnselected = true
		self.bgImage:setAlpha( 0.5 )
	end
	self.bgImage:animateToState( "default" )
	self:addElement( self.bgImage )
	self.padding = 1.5
	if f8_arg6 then
		self.bgImage:addElement( LUI.UIBorder.new( {
			topAnchor = true,
			bottomAnchor = true,
			leftAnchor = true,
			rightAnchor = true,
			left = 0,
			right = 0,
			top = 0,
			bottom = 0,
			alpha = 0.65,
			borderThickness = 1,
			color = Colors.grey_6
		} ) )
	end
	self.scrollButton = LUI.UIButton.new( {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = true
	} )
	self.buttonImageUnselectedMaterial = RegisterMaterial( f8_arg12 )
	self.buttonImageSelectedMaterial = RegisterMaterial( f8_arg14 )
	self.buttonImageSelectedColor = f8_arg10
	self.buttonImageUnselectedColor = f8_arg17
	f8_arg2.material = self.buttonImageUnselectedMaterial
	f8_arg2.color = self.buttonImageUnselectedColor
	f8_arg2.alpha = f8_arg10.alpha
	f8_arg2.zRot = f8_arg18
	self.buttonImage = LUI.UIImage.new( f8_arg2 )
	self.scrollButton.onMoveFunc = f8_arg9
	self.scrollButton:registerEventHandler( "leftmousedown", LUI.UIScrollbarHelper.OnMouseDown )
	self.scrollButton:registerEventHandler( "leftmouseup", LUI.UIScrollbarHelper.StopScrolling )
	self.scrollButton:addEventHandler( "popup_active", LUI.UIScrollbarHelper.StopScrolling )
	self.scrollButton:addEventHandler( "mousemove", LUI.UIScrollbarHelper.MouseMoveEvent )
	self.scrollButton:addElement( self.buttonImage )
	self:addElement( self.scrollButton )
	self.manualUpdate = LUI.UIScrollbarHelper.ManualUpdate
	self.SetList = LUI.UIScrollbarHelper.SetList
	self:SetList( f8_arg4 )
	if f8_arg16 then
		self.fixedHandleSize = f8_arg16
	end
	return self
end

LUI.UIScrollbarHelper.UpdateScrollbar = function ( f9_arg0, f9_arg1 )
	if f9_arg0.List and f9_arg1.list == f9_arg0.List then
		local f9_local0, f9_local1 = nil
		if f9_arg1.newElementsHeight <= f9_arg1.newLayoutHeight then
			f9_local1 = f9_arg1.newLayoutHeight
			f9_local0 = 0
		else
			f9_local1 = math.min( f9_arg1.newLayoutHeight, f9_arg1.newLayoutHeight * f9_arg1.newLayoutHeight / f9_arg1.newElementsHeight )
			f9_local0 = (f9_arg1.newLayoutHeight - f9_local1) * f9_arg1.newTopOffset / (f9_arg1.newLayoutHeight - f9_arg1.newElementsHeight)
		end
		f9_arg0.buttonImage:registerAnimationState( "default", {
			top = f9_local0,
			bottom = f9_local0 + f9_local1,
			topAnchor = true,
			bottomAnchor = false
		} )
		f9_arg0.buttonImage:animateToState( "default" )
	end
	f9_arg0:dispatchEventToChildren( f9_arg1 )
end

LUI.UIScrollbarHelper.FocusChanged = function ( f10_arg0, f10_arg1 )
	f10_arg0:animateToState( "default" )
	if f10_arg0.inactiveTimer then
		f10_arg0.inactiveTimer:close()
		f10_arg0.inactiveTimer:reset()
		f10_arg0:addElement( f10_arg0.inactiveTimer )
	else
		f10_arg0.inactiveTimer = LUI.UITimer.new( LUI.UIScrollbarHelper.InactiveDelay, "inactive", true )
		f10_arg0:addElement( f10_arg0.inactiveTimer )
	end
end

LUI.UIScrollbarHelper.Inactive = function ( f11_arg0, f11_arg1 )
	f11_arg0:animateToState( "inactive", LUI.UIScrollbarHelper.InactiveDuration )
end

LUI.UIScrollbarHelper.SetList = function ( f12_arg0, f12_arg1 )
	f12_arg0.List = f12_arg1
end

LUI.UIScrollbarHelper.ManualUpdate = function ( f13_arg0, f13_arg1, f13_arg2, f13_arg3, f13_arg4, f13_arg5 )
	local f13_local0 = 0
	if f13_arg5 ~= nil then
		f13_local0 = f13_arg5
	end
	local f13_local1 = f13_arg2 * f13_arg4 + f13_local0
	local f13_local2 = f13_arg0.fixedHandleSize
	local f13_local3 = 0
	if f13_arg3 ~= 0 then
		if f13_local2 == nil then
			f13_local2 = math.min( f13_local1, f13_local1 * f13_arg2 / f13_arg3 )
		end
		if f13_arg3 ~= f13_arg2 then
			f13_local3 = LUI.clamp( f13_arg1 / (f13_arg3 - f13_arg2) * (f13_local1 - f13_local2), f13_arg0.padding, f13_local1 - f13_local2 - f13_arg0.padding )
		end
	end
	LUI.UIScrollbarHelper.SetDefaultStatePosition( f13_arg0, f13_local3, f13_local2 )
end

LUI.UIScrollbarHelper.GetRatioBasedUpdate = function ( f14_arg0, f14_arg1 )
	local f14_local0 = 0
	if f14_arg0.isHorizontal then
		f14_local0 = f14_arg0:getWidth()
	else
		f14_local0 = f14_arg0:getHeight()
	end
	local f14_local1 = f14_arg0.fixedHandleSize or 20
	local f14_local2 = 0
	LUI.UIScrollbarHelper.SetDefaultStatePosition( f14_arg0, LUI.clamp( f14_arg1 * (f14_local0 - f14_local1), 0, f14_local0 - f14_local1 ), f14_local1 )
end

LUI.UIScrollbarHelper.SetDefaultStatePosition = function ( f15_arg0, f15_arg1, f15_arg2 )
	local f15_local0 = nil
	if f15_arg0.isHorizontal then
		f15_local0 = {
			left = f15_arg1,
			right = f15_arg1 + f15_arg2,
			leftAnchor = true,
			rightAnchor = false
		}
	else
		f15_local0 = {
			top = f15_arg1,
			bottom = f15_arg1 + f15_arg2,
			topAnchor = true,
			bottomAnchor = false
		}
	end
	f15_arg0.buttonImage:registerAnimationState( "default", f15_local0 )
	f15_arg0.buttonImage:animateToState( "default" )
end

