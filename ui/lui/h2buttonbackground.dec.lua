local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
LUI.H2ButtonBackground = InheritFrom( LUI.UIElement )
LUI.H2ButtonBackground.AnimUpTime = 133
LUI.H2ButtonBackground.AnimOverTime = 133
LUI.H2ButtonBackground.AnimOverTimeContent = 67
LUI.H2ButtonBackground.EdgeW = 12
LUI.H2ButtonBackground.EdgeH = 12
LUI.H2ButtonBackground.EdgeU = 0.33
LUI.H2ButtonBackground.EdgeV = 0.33
LUI.H2ButtonBackground.ButtonHeight = 36
LUI.H2ButtonBackground.GreenlineVerticalOffset = 5
LUI.H2ButtonBackground.ScanlinesAlpha = 1
LUI.H2ButtonBackground.SubScanlineElements = 3
LUI.H2ButtonBackground.DisabledActionExtention = 2
LUI.H2ButtonBackground.ContourFinalAlpha = 0.8
LUI.H2ButtonBackground.ContourExtention = 2
LUI.DefaultButtonBackground = LUI.H2ButtonBackground
LUI.H2ButtonBackground.DisabledActionAnimation = function ( f1_arg0 )
	f1_arg0:animateInSequence( {
		{
			"action_extended",
			33
		},
		{
			"focused_disabled",
			66
		}
	} )
end

LUI.H2ButtonBackground.SelectionContourActionAnimation = function ( f2_arg0 )
	f2_arg0:animateInSequence( {
		{
			"action",
			67
		},
		{
			"action_scaled",
			133
		},
		{
			"default",
			33
		}
	} )
end

LUI.H2ButtonBackground.CreateFocusedElements = function ( f3_arg0 )
	local f3_local0 = f3_arg0:getParent()
	local f3_local1 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f3_local1.material = RegisterMaterial( "h1_btn_reg_selected_contour" )
	f3_local1.alpha = 0
	local self = LUI.UIImage.new( f3_local1 )
	self.id = "selectionContour"
	self:setup9SliceImage( LUI.H2ButtonBackground.EdgeW, LUI.H2ButtonBackground.EdgeH, LUI.H2ButtonBackground.EdgeU, LUI.H2ButtonBackground.EdgeV )
	self:registerAnimationState( "default", f3_local1 )
	local f3_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f3_local3.material = RegisterMaterial( "h1_btn_reg_selected_contour" )
	f3_local3.alpha = LUI.H2ButtonBackground.ContourFinalAlpha
	self:registerAnimationState( "action", f3_local3 )
	local f3_local4 = CoD.CreateState( -LUI.H2ButtonBackground.ContourExtention, -LUI.H2ButtonBackground.ContourExtention, LUI.H2ButtonBackground.ContourExtention, LUI.H2ButtonBackground.ContourExtention, CoD.AnchorTypes.All )
	f3_local4.material = RegisterMaterial( "h1_btn_reg_selected_contour" )
	f3_local4.alpha = LUI.H2ButtonBackground.ContourFinalAlpha
	self:registerAnimationState( "action_scaled", f3_local4 )
	self:registerEventHandler( "button_action", LUI.H2ButtonBackground.SelectionContourActionAnimation )
	f3_local0:addElement( self )
	local f3_local5 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f3_local5.alpha = 0
	local f3_local6 = LUI.UIElement.new( f3_local5 )
	f3_local6.id = "focusedContainer"
	f3_local6:registerAnimationState( "default", f3_local5 )
	f3_local6:registerAnimationState( "focused", {
		alpha = 1
	} )
	f3_local6:registerEventHandler( "button_over", MBh.AnimateToState( "focused", LUI.H2ButtonBackground.AnimOverTimeContent ) )
	f3_local6:registerEventHandler( "button_up", MBh.AnimateToState( "default", LUI.H2ButtonBackground.AnimUpTime ) )
	f3_local0:addElement( f3_local6 )
	local f3_local7 = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	f3_local7:setUseStencil( true )
	f3_local6:addElement( f3_local7 )
	local f3_local8 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f3_local8.material = RegisterMaterial( "h2_btn_focused_stroke" )
	local f3_local9 = LUI.UIImage.new( f3_local8 )
	f3_local9.id = "stroke"
	f3_local9:setup9SliceImage( LUI.H2ButtonBackground.EdgeW, LUI.H2ButtonBackground.EdgeH, LUI.H2ButtonBackground.EdgeU, LUI.H2ButtonBackground.EdgeV )
	f3_local9:registerAnimationState( "default", f3_local8 )
	f3_local6:addElement( f3_local9 )
	local f3_local10 = 10
	local f3_local11 = CoD.CreateState( -1 * f3_local10, -1 * f3_local10, f3_local10, f3_local10, CoD.AnchorTypes.All )
	f3_local11.material = RegisterMaterial( "h2_btn_focused_outerglow" )
	local f3_local12 = LUI.UIImage.new( f3_local11 )
	f3_local12.id = "backglow"
	f3_local12:setup9SliceImage( LUI.H2ButtonBackground.EdgeW + 8, LUI.H2ButtonBackground.EdgeH + 10, LUI.H2ButtonBackground.EdgeU, LUI.H2ButtonBackground.EdgeV )
	f3_local12:registerAnimationState( "default", f3_local11 )
	f3_local6:addElement( f3_local12 )
	local f3_local13 = CoD.CreateState( 0, 0, nil, nil, CoD.AnchorTypes.TopLeft )
	f3_local13.material = RegisterMaterial( "h2_btn_dot_pattern" )
	f3_local13.alpha = 0
	f3_local13.width = 666.6
	f3_local13.height = 37.33
	local f3_local14 = LUI.UIImage.new( f3_local13 )
	f3_local14.id = "dotPattern"
	f3_local14:registerAnimationState( "default", f3_local13 )
	f3_local14:registerAnimationState( "focused", {
		alpha = 0.2
	} )
	f3_local14:registerEventHandler( "button_up", MBh.AnimateToState( "default", 0 ) )
	f3_local14:registerEventHandler( "button_over", MBh.AnimateToState( "focused", 133 ) )
	f3_local7:addElement( f3_local14 )
	f3_local0.hasFocusedElements = true
	return f3_local6, f3_local7
end

LUI.H2ButtonBackground.ReceivedFocus = function ( f4_arg0 )
	if f4_arg0.hasFocus then
		return 
	end
	f4_arg0.hasFocus = true
	f4_arg0:animateToState( "focused", LUI.H2ButtonBackground.AnimOverTime )
	if f4_arg0.lostFocusTimer then
		LUI.UITimer.Stop( f4_arg0.lostFocusTimer )
		f4_arg0.lostFocusTimer:close()
		f4_arg0.lostFocusTimer = nil
		local f4_local0 = f4_arg0:getParent()
		if f4_local0.hasFocusedElements then
			return 
		end
	end
	local f4_local0, f4_local1 = LUI.H2ButtonBackground.CreateFocusedElements( f4_arg0 )
	f4_local0:processEvent( {
		name = "button_over",
		dispatchChildren = true
	} )
	f4_local1:processEvent( {
		name = "button_over",
		dispatchChildren = true
	} )
end

LUI.H2ButtonBackground.CreateFocusedLockedElements = function ( f5_arg0 )
	local f5_local0 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f5_local0.alpha = 0
	local self = LUI.UIElement.new( f5_local0 )
	self:setUseStencil( true )
	self.id = "focusedLockedContainer"
	local f5_local2 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f5_local2.alpha = 1
	self:registerAnimationState( "default", f5_local0 )
	self:registerAnimationState( "focused", f5_local2 )
	self:registerEventHandler( "button_disable", MBh.AnimateToState( "default", LUI.H2ButtonBackground.AnimUpTime ) )
	self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "focused", LUI.H2ButtonBackground.AnimOverTime ) )
	f5_arg0:addElement( self )
	local f5_local3 = f5_arg0:getParent()
	f5_local3.hasFocusLockedElement = true
	return self
end

LUI.H2ButtonBackground.ReceivedFocusLocked = function ( f6_arg0 )
	if f6_arg0.hasFocus then
		return 
	else
		f6_arg0.hasFocus = true
		f6_arg0.everHadFocus = true
		f6_arg0:animateToState( "focused_disabled", LUI.H2ButtonBackground.AnimOverTime )
		if f6_arg0.lostFocusTimer then
			LUI.UITimer.Stop( f6_arg0.lostFocusTimer )
			f6_arg0.lostFocusTimer:close()
			f6_arg0.lostFocusTimer = nil
			return 
		else
			local f6_local0 = f6_arg0:getParent()
			if f6_local0.hasFocusLockedElement then
				return 
			else
				f6_local0 = LUI.H2ButtonBackground.CreateFocusedLockedElements( f6_arg0 )
				f6_local0:processEvent( {
					name = "button_over_disable",
					dispatchChildren = true
				} )
			end
		end
	end
end

LUI.H2ButtonBackground.LostFocusLocked = function ( f7_arg0 )
	if not f7_arg0.hasFocus and f7_arg0.everHadFocus then
		return 
	end
	local f7_local0 = f7_arg0:getParent()
	if f7_local0.hasFocusLockedElement then
		f7_arg0.hasFocus = false
		if not f7_arg0.lostFocusTimer then
			f7_arg0.lostFocusTimer = LUI.UITimer.new( LUI.H2ButtonBackground.AnimUpTime, "lost_focus_done", nil, true )
			f7_arg0:addElement( f7_arg0.lostFocusTimer )
		else
			LUI.UITimer.Reset( f7_arg0.lostFocusTimer )
		end
		LUI.H2ButtonBackground.AnimateToDisable( f7_arg0 )
	end
end

LUI.H2ButtonBackground.ClearFocusedContainers = function ( f8_arg0 )
	local f8_local0 = f8_arg0:getParent()
	if f8_local0 ~= nil then
		local f8_local1 = f8_local0:getChildById( "selectionContour" )
		if f8_local1 then
			f8_local1:close()
		end
		local f8_local2 = f8_local0:getChildById( "focusedContainer" )
		if f8_local2 then
			f8_local2:close()
		end
		f8_local0.hasFocusLockedElement = false
		f8_local0.hasFocusedElements = false
	end
	f8_arg0:closeChildren()
	collectgarbage( "collect" )
end

LUI.H2ButtonBackground.LostFocusDone = function ( f9_arg0 )
	if f9_arg0.lostFocusTimer then
		LUI.UITimer.Stop( f9_arg0.lostFocusTimer )
		f9_arg0.lostFocusTimer:close()
		f9_arg0.lostFocusTimer = nil
	end
	LUI.H2ButtonBackground.ClearFocusedContainers( f9_arg0 )
end

LUI.H2ButtonBackground.LostFocus = function ( f10_arg0 )
	if not f10_arg0.hasFocus then
		return 
	end
	f10_arg0.hasFocus = false
	if not f10_arg0.lostFocusTimer then
		f10_arg0.lostFocusTimer = LUI.UITimer.new( LUI.H2ButtonBackground.AnimUpTime, "lost_focus_done", nil, true )
		f10_arg0:addElement( f10_arg0.lostFocusTimer )
	else
		LUI.UITimer.Reset( f10_arg0.lostFocusTimer )
	end
	LUI.H2ButtonBackground.AnimateToEnable( f10_arg0 )
end

LUI.H2ButtonBackground.AnimateToEnable = function ( f11_arg0 )
	if f11_arg0.hasFocus then
		LUI.H2ButtonBackground.ClearFocusedContainers( f11_arg0 )
		f11_arg0:animateToState( "focused", LUI.H2ButtonBackground.AnimOverTime )
		local f11_local0, f11_local1 = LUI.H2ButtonBackground.CreateFocusedElements( f11_arg0 )
		f11_local0:processEvent( {
			name = "button_over",
			dispatchChildren = true
		} )
		f11_local1:processEvent( {
			name = "button_over",
			dispatchChildren = true
		} )
	else
		f11_arg0:animateToState( "default", LUI.H2ButtonBackground.AnimUpTime )
		f11_arg0.material = RegisterMaterial( "h2_btn_unfocused" )
	end
end

LUI.H2ButtonBackground.AnimateToDisable = function ( f12_arg0 )
	if f12_arg0.hasFocus then
		LUI.H2ButtonBackground.ClearFocusedContainers( f12_arg0 )
		f12_arg0:animateToState( "focused_disabled", LUI.H2ButtonBackground.AnimOverTime )
		local f12_local0 = LUI.H2ButtonBackground.CreateFocusedLockedElements( f12_arg0 )
		f12_local0:processEvent( {
			name = "button_over_disable",
			dispatchChildren = true
		} )
	else
		f12_arg0:animateToState( "default_disabled", LUI.H2ButtonBackground.AnimUpTime )
		f12_arg0.material = RegisterMaterial( "h2_btn_unfocused_locked" )
	end
end

LUI.H2ButtonBackground.new = function ( f13_arg0 )
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	self.id = "buttonContainer"
	self:setClass( LUI.H2ButtonBackground )
	local f13_local1 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f13_local1.material = RegisterMaterial( "h2_btn_unfocused" )
	local f13_local2 = LUI.UIImage.new( f13_local1 )
	f13_local2.id = "fill"
	f13_local2.UITimer = nil
	f13_local2.hasFocus = false
	f13_local2.everHadFocus = false
	f13_local2:setup9SliceImage( LUI.H2ButtonBackground.EdgeW, LUI.H2ButtonBackground.EdgeH, LUI.H2ButtonBackground.EdgeU, LUI.H2ButtonBackground.EdgeV )
	f13_local2:registerAnimationState( "default", f13_local1 )
	f13_local2:registerAnimationState( "focused", {
		material = RegisterMaterial( "h2_btn_focused_fill" )
	} )
	f13_local2:registerAnimationState( "default_disabled", {
		material = RegisterMaterial( "h2_btn_unfocused_locked" )
	} )
	local f13_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f13_local3.material = RegisterMaterial( "h2_btn_focused_locked" )
	f13_local2:registerAnimationState( "focused_disabled", f13_local3 )
	f13_local2:registerAnimationState( "action_extended", CoD.CreateState( -LUI.H2ButtonBackground.DisabledActionExtention, -LUI.H2ButtonBackground.DisabledActionExtention, LUI.H2ButtonBackground.DisabledActionExtention, LUI.H2ButtonBackground.DisabledActionExtention, CoD.AnchorTypes.All ) )
	f13_local2:registerEventHandler( "button_up", LUI.H2ButtonBackground.LostFocus )
	f13_local2:registerEventHandler( "button_over", LUI.H2ButtonBackground.ReceivedFocus )
	f13_local2:registerEventHandler( "button_disable", LUI.H2ButtonBackground.LostFocusLocked )
	f13_local2:registerEventHandler( "button_over_disable", LUI.H2ButtonBackground.ReceivedFocusLocked )
	f13_local2:registerEventHandler( "button_action_disable", LUI.H2ButtonBackground.DisabledActionAnimation )
	f13_local2:registerEventHandler( "lost_focus_done", LUI.H2ButtonBackground.LostFocusDone )
	f13_local2:registerEventHandler( "enable", LUI.H2ButtonBackground.AnimateToEnable )
	f13_local2:registerEventHandler( "disable", LUI.H2ButtonBackground.AnimateToDisable )
	self:addElement( f13_local2 )
	if f13_arg0 ~= nil and f13_arg0.strip ~= nil and f13_arg0.glow ~= nil and f13_arg0.corner ~= nil and f13_arg0.rarity > 0 then
		local f13_local4 = CoD.CreateState( 0, 0, nil, 0, CoD.AnchorTypes.TopBottomLeft )
		f13_local4.width = 8
		f13_local4.material = f13_arg0.strip
		
		local leftStrip = LUI.UIImage.new( f13_local4 )
		self:addElement( leftStrip )
		self.leftStrip = leftStrip
		
		local f13_local6 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f13_local6.material = f13_arg0.glow
		
		local glow = LUI.UIImage.new( f13_local6 )
		self:addElement( glow )
		self.glow = glow
		
		local f13_local8 = CoD.CreateState( nil, 2, -2, nil, CoD.AnchorTypes.TopRight )
		f13_local8.width = 16
		f13_local8.height = 16
		f13_local8.material = f13_arg0.corner
		f13_local8.alpha = 0
		local f13_local9 = LUI.UIImage.new( f13_local8 )
		f13_local9:registerAnimationState( "focused", {
			alpha = 1
		} )
		f13_local9:registerEventHandler( "button_up", MBh.AnimateToState( "default" ) )
		f13_local9:registerEventHandler( "button_over", MBh.AnimateToState( "focused" ) )
		f13_local9:registerEventHandler( "button_disable", MBh.AnimateToState( "default" ) )
		f13_local9:registerEventHandler( "button_over_disable", MBh.AnimateToState( "focused" ) )
		self:addElement( f13_local9 )
		self.topRightCorner = f13_local9
	end
	return self
end

LockTable( _M )
