LUI.UIBarrelList = {}
LUI.UIBarrelList.build = function ( f1_arg0, f1_arg1 )
	return LUI.UIBarrelList.new( nil, f1_arg1 )
end

LUI.UIBarrelList.new = function ( menu, controller )
	local self = LUI.UIElement.new( menu )
	self.id = "UIBarrelList"
	if not controller then
		controller = {}
	end
	self.animSpeed = controller.anim_speed or 60
	self.listOffset = controller.list_offset or 0
	self.onUpdateFunc = controller.on_update_func
	self.onScrollFunc = controller.on_scroll_func
	
	local hList = LUI.UIHorizontalList.new( menu )
	hList:registerAnimationState( "default", {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		left = self.listOffset,
		spacing = controller.spacing or 0
	} )
	hList:animateToState( "default" )
	self:addElement( hList )
	self.hList = hList
	
	self:registerEventHandler( "gain_focus", LUI.UIBarrelList.gainFocus )
	self.addElement = LUI.UIBarrelList.AddElement
	self.removeElement = LUI.UIBarrelList.RemoveElement
	self.increment = LUI.UIBarrelList.IncrementIndex
	self.decrement = LUI.UIBarrelList.DecrementIndex
	self.getCurrentIndex = LUI.UIBarrelList.GetCurrentIndex
	self.handleGamepadButton = LUI.UIBarrelList.handleGamepadButton
	self.setupForAnimation = LUI.UIBarrelList.SetupForAnimation
	self.manualUpdate = LUI.UIBarrelList.UpdateList
	self:makeFocusable()
	self.currentIndex = 0
	return self
end

LUI.UIBarrelList.AddElement = function ( f3_arg0, f3_arg1 )
	if f3_arg0.usingAnimation then
		DebugPrint( "WARNING: Adding an element after the BarrelList has been setup for animation! Cap positions will be wrong and animation will look broken!" )
	end
	f3_arg0.hList:addElement( f3_arg1 )
	LUI.UIBarrelList.UpdateList( f3_arg0 )
end

LUI.UIBarrelList.RemoveElement = function ( f4_arg0, f4_arg1 )
	if f4_arg0.usingAnimation then
		DebugPrint( "WARNING: Removing an element after the BarrelList has been setup for animation! Cap positions will be wrong and animation will look broken!" )
	end
	f4_arg0.hList:removeElement( f4_arg1 )
	LUI.UIBarrelList.UpdateList( f4_arg0 )
end

LUI.UIBarrelList.UpdateList = function ( f5_arg0 )
	local f5_local0 = f5_arg0.hList:getNumChildren()
	local f5_local1 = f5_arg0.hList:getFirstChild()
	local f5_local2 = math.floor( f5_local0 / 2 )
	for f5_local3 = 0, f5_local0 - 1, 1 do
		f5_local1:processEvent( {
			name = "barrel_index_update",
			index = f5_arg0.currentIndex - f5_local2 - f5_local3
		} )
		f5_local1 = f5_local1:getNextSibling()
	end
	if f5_arg0.onUpdateFunc then
		f5_arg0:onUpdateFunc( f5_arg0.currentIndex )
	end
	return false
end

LUI.UIBarrelList.gainFocus = function ( f6_arg0 )
	f6_arg0:setFocus( true )
	local f6_local0 = f6_arg0.hList:getNumChildren()
	local f6_local1 = f6_arg0.hList:getFirstChild()
	local f6_local2 = math.floor( f6_local0 / 2 )
	for f6_local3 = 1, f6_local2, 1 do
		local f6_local6 = f6_local3
		f6_local1 = f6_local1:getNextSibling()
	end
	f6_arg0.focusedChild = f6_local1
	f6_local1:processEvent( {
		name = "barrel_list_focus"
	} )
	return true
end

LUI.UIBarrelList.handleGamepadButton = function ( f7_arg0, f7_arg1 )
	if not f7_arg0:isInFocus() or not f7_arg1.down then
		return false
	end
	local f7_local0 = false
	if f7_arg1.button == "primary" then
		if not f7_arg0.isAnimating then
			f7_arg0.focusedChild:processEvent( {
				name = "barrel_list_action",
				index = f7_arg0.currentIndex,
				controller = f7_arg1.controller
			} )
		end
		f7_local0 = true
	elseif f7_arg1.button == "left" then
		if not f7_arg0.isAnimating then
			LUI.UIBarrelList.DecrementIndex( f7_arg0 )
		end
		f7_local0 = true
	elseif f7_arg1.button == "right" then
		if not f7_arg0.isAnimating then
			LUI.UIBarrelList.IncrementIndex( f7_arg0 )
		end
		f7_local0 = true
	elseif f7_arg1.button == "alt1" then
		if not f7_arg0.isAnimating then
			f7_arg0.focusedChild:processEvent( {
				name = "barrel_list_button_alt1",
				index = f7_arg0.currentIndex,
				controller = f7_arg1.controller
			} )
		end
		f7_local0 = true
	end
	return f7_local0
end

LUI.UIBarrelList.IncrementIndex = function ( f8_arg0 )
	f8_arg0.currentIndex = f8_arg0.currentIndex + 1
	if f8_arg0.usingAnimation then
		f8_arg0:animateToState( "shift_left", f8_arg0.animSpeed, true, true )
		f8_arg0.rightCap:processEvent( {
			name = "barrel_index_update",
			index = f8_arg0.currentIndex + math.floor( f8_arg0.hList:getNumChildren() / 2 ),
			barrelList = f8_arg0
		} )
		f8_arg0:dispatchEventToChildren( {
			name = "barrel_anim_start",
			barrelList = f8_arg0,
			movingLeft = true
		} )
		if f8_arg0.onScrollFunc then
			f8_arg0:onScrollFunc()
		end
		f8_arg0:dispatchEventToChildren( {
			name = "barrel_list_unfocus"
		} )
		f8_arg0.isAnimating = true
	else
		LUI.UIBarrelList.UpdateList( f8_arg0 )
	end
end

LUI.UIBarrelList.DecrementIndex = function ( f9_arg0 )
	f9_arg0.currentIndex = f9_arg0.currentIndex - 1
	if f9_arg0.usingAnimation then
		f9_arg0:animateToState( "shift_right", f9_arg0.animSpeed, true, true )
		f9_arg0.leftCap:processEvent( {
			name = "barrel_index_update",
			index = f9_arg0.currentIndex - math.floor( f9_arg0.hList:getNumChildren() / 2 ),
			barrelList = f9_arg0
		} )
		f9_arg0:dispatchEventToChildren( {
			name = "barrel_anim_start",
			barrelList = f9_arg0,
			movingRight = true
		} )
		if f9_arg0.onScrollFunc then
			f9_arg0:onScrollFunc()
		end
		f9_arg0:dispatchEventToChildren( {
			name = "barrel_list_unfocus"
		} )
		f9_arg0.isAnimating = true
	else
		LUI.UIBarrelList.UpdateList( f9_arg0 )
	end
end

LUI.UIBarrelList.GetCurrentIndex = function ( f10_arg0 )
	return f10_arg0.currentIndex
end

LUI.UIBarrelList.ScrollFinished = function ( f11_arg0, f11_arg1 )
	f11_arg0:animateToState( "default", 0 )
	f11_arg0.isAnimating = false
end

LUI.UIBarrelList.OnDefaultState = function ( f12_arg0, f12_arg1 )
	local f12_local0 = f12_arg0.hList:getNumChildren()
	local f12_local1 = f12_arg0.hList:getFirstChild()
	local f12_local2 = math.floor( f12_local0 / 2 )
	for f12_local3 = 0, f12_local0 - 1, 1 do
		if f12_local3 == f12_local2 then
			f12_local1:processEvent( {
				name = "barrel_list_focus"
			} )
		end
		f12_local1 = f12_local1:getNextSibling()
	end
	LUI.UIBarrelList.UpdateList( f12_arg0 )
	f12_arg0:dispatchEventToChildren( {
		name = "barrel_default_state"
	} )
end

LUI.UIBarrelList.CreateCap = function ( f13_arg0, f13_arg1, f13_arg2, f13_arg3, f13_arg4, f13_arg5, f13_arg6, f13_arg7, f13_arg8 )
	local f13_local0 = f13_arg0( f13_arg2 )
	f13_local0.id = f13_arg1
	f13_local0:registerAnimationState( "default", {
		topAnchor = f13_arg7.topAnchor,
		bottomAnchor = f13_arg7.bottomAnchor,
		leftAnchor = f13_arg7.leftAnchor,
		rightAnchor = f13_arg7.rightAnchor,
		top = f13_arg3,
		bottom = f13_arg4,
		left = f13_arg5,
		right = f13_arg6
	} )
	f13_local0:animateToState( "default", 0 )
	for f13_local4, f13_local5 in pairs( f13_arg8 ) do
		f13_local0:registerEventHandler( f13_local4, f13_local5 )
	end
	return f13_local0
end

LUI.UIBarrelList.SetupForAnimation = function ( f14_arg0, f14_arg1, f14_arg2, f14_arg3 )
	local f14_local0 = f14_arg0.hList:getNumChildren()
	local f14_local1 = f14_arg0.hList:getFirstChild()
	local f14_local2 = f14_local1.properties
	if f14_arg3 then
		f14_arg0:setUseStencil( false )
	else
		f14_arg0:setUseStencil( true )
	end
	if f14_arg2 then
		for f14_local6, f14_local7 in pairs( f14_arg2 ) do
			f14_local2[f14_local6] = f14_local7
		end
	end
	local f14_local3, f14_local4, f14_local5, f14_local6 = f14_local1:getLocalRect()
	local f14_local7, f14_local8, f14_local9, f14_local10 = f14_local1:GetAnchorData()
	local f14_local11 = {
		leftAnchor = f14_local7,
		topAnchor = f14_local8,
		rightAnchor = f14_local9,
		bottomAnchor = f14_local10
	}
	local f14_local12 = f14_local5 - f14_local3
	local f14_local13 = -(f14_local12 + f14_arg0.properties.spacing + f14_arg0.listOffset)
	f14_arg0.leftCap = LUI.UIBarrelList.CreateCap( f14_arg1, "barrel_left_cap_id", f14_local2, f14_local4, f14_local6, f14_local13, f14_local13 + f14_local12, f14_local11, f14_local1.m_eventHandlers )
	f14_local13 = (f14_local12 + f14_arg0.properties.spacing) * f14_local0 + f14_arg0.listOffset
	f14_arg0.rightCap = LUI.UIBarrelList.CreateCap( f14_arg1, "barrel_right_cap_id", f14_local2, f14_local4, f14_local6, f14_local13, f14_local13 + f14_local12, f14_local11, f14_local1.m_eventHandlers )
	LUI.UIElement.addElement( f14_arg0, f14_arg0.leftCap )
	LUI.UIElement.addElement( f14_arg0, f14_arg0.rightCap )
	f14_local3, f14_local4, f14_local5, f14_local6 = f14_arg0:getLocalRect()
	f14_local7, f14_local8, f14_local9, f14_local10 = f14_arg0:GetAnchorData()
	local f14_local14 = f14_arg0
	local f14_local15 = f14_arg0.registerAnimationState
	local f14_local16 = "shift_right"
	local f14_local17 = {
		topAnchor = f14_local8,
		bottomAnchor = f14_local10,
		leftAnchor = f14_local7
	}
	local f14_local18 = f14_local9
	f14_local17.top = f14_local4
	f14_local17.bottom = f14_local6
	f14_local17.left = f14_local3 + f14_local12 + f14_arg0.properties.spacing
	f14_local17.right = 0
	f14_local17[1] = f14_local18
	f14_local15( f14_local14, f14_local16, f14_local17 )
	f14_local14 = f14_arg0
	f14_local15 = f14_arg0.registerAnimationState
	f14_local16 = "shift_left"
	f14_local17 = {
		topAnchor = f14_local8,
		bottomAnchor = f14_local10,
		leftAnchor = f14_local7
	}
	f14_local18 = f14_local9
	f14_local17.top = f14_local4
	f14_local17.bottom = f14_local6
	f14_local17.left = f14_local3 - f14_local12 - f14_arg0.properties.spacing
	f14_local17.right = 0
	f14_local17[1] = f14_local18
	f14_local15( f14_local14, f14_local16, f14_local17 )
	f14_arg0:registerEventHandler( "transition_complete_shift_left", LUI.UIBarrelList.ScrollFinished )
	f14_arg0:registerEventHandler( "transition_complete_shift_right", LUI.UIBarrelList.ScrollFinished )
	f14_arg0:registerEventHandler( "transition_complete_default", LUI.UIBarrelList.OnDefaultState )
	f14_arg0.usingAnimation = true
end

