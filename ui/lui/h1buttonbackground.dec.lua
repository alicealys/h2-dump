local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
LUI.H1ButtonBackground = InheritFrom( LUI.UIElement )
LUI.H1ButtonBackground.AnimUpTime = 133
LUI.H1ButtonBackground.AnimOverTime = 133
LUI.H1ButtonBackground.AnimOverTimeContent = 67
LUI.H1ButtonBackground.EdgeW = 12
LUI.H1ButtonBackground.EdgeH = 12
LUI.H1ButtonBackground.EdgeU = 0.33
LUI.H1ButtonBackground.EdgeV = 0.33
LUI.H1ButtonBackground.ButtonHeight = 36
LUI.H1ButtonBackground.ScanlinesMovementTime = 12000
LUI.H1ButtonBackground.ScanlinesVerticalOffset = 3
LUI.H1ButtonBackground.GreenlineVerticalOffset = 5
LUI.H1ButtonBackground.FocusedOverlayGlowAlpha = 0.3
LUI.H1ButtonBackground.ScanlinesAlpha = 1
LUI.H1ButtonBackground.SubScanlineElements = 3
LUI.H1ButtonBackground.DisabledActionExtention = 2
LUI.H1ButtonBackground.ContourFinalAlpha = 0.8
LUI.H1ButtonBackground.ContourExtention = 2
LUI.H1ButtonBackground.ScanlinesButtonOverAnimation = function ( f1_arg0 )
	local f1_local0 = {
		{
			"default",
			0
		}
	}
	for f1_local1 = 1, LUI.H1ButtonBackground.SubScanlineElements, 1 do
		f1_local0[#f1_local0 + 1] = {
			"scroll_down_mid_" .. f1_local1,
			LUI.H1ButtonBackground.ScanlinesMovementTime
		}
	end
	f1_local0[#f1_local0 + 1] = {
		"scroll_down_bottom",
		LUI.H1ButtonBackground.ScanlinesMovementTime
	}
	f1_arg0:animateInLoop( f1_local0, false, false, false, true )
end

LUI.H1ButtonBackground.GreenlineButtonOverAnimation = function ( f2_arg0 )
	f2_arg0:animateInLoop( {
		{
			"default_scroll_pos",
			8000
		},
		{
			"scroll_down",
			400
		},
		{
			"default_scroll_pos",
			0
		},
		{
			"default_scroll_pos",
			33
		}
	} )
end

LUI.H1ButtonBackground.OverlayGlowButtonOverLoopAnimation = function ( f3_arg0 )
	f3_arg0:animateInLoop( {
		{
			"focused",
			3000
		},
		{
			"default_glow",
			3000
		}
	} )
end

LUI.H1ButtonBackground.InnerGlowButtonOverLoopAnimation = function ( f4_arg0 )
	f4_arg0:animateInLoop( {
		{
			"focused",
			15000
		},
		{
			"default",
			15000
		}
	} )
end

LUI.H1ButtonBackground.DisabledActionAnimation = function ( f5_arg0 )
	f5_arg0:animateInSequence( {
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

LUI.H1ButtonBackground.SelectionContourActionAnimation = function ( f6_arg0 )
	f6_arg0:animateInSequence( {
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

function scrollDownMidDone( f7_arg0, f7_arg1 )
	local f7_local0 = f7_arg0:getChildById( "subScanlines_" .. LUI.H1ButtonBackground.SubScanlineElements - f7_arg1 + 1 )
	if f7_local0 then
		f7_local0:setTopBottom( true, false, -LUI.H1ButtonBackground.ButtonHeight * f7_arg1, -LUI.H1ButtonBackground.ButtonHeight * (f7_arg1 - 1) )
	end
end

function scrollDownBottomDone( f8_arg0, f8_arg1 )
	for f8_local0 = 1, LUI.H1ButtonBackground.SubScanlineElements, 1 do
		local f8_local3 = f8_arg0:getChildById( "subScanlines_" .. f8_local0 )
		f8_local3:setTopBottom( true, false, LUI.H1ButtonBackground.ButtonHeight * f8_local0, LUI.H1ButtonBackground.ButtonHeight * (f8_local0 + 1) )
	end
	f8_arg0:setTopBottom( true, false, -LUI.H1ButtonBackground.ButtonHeight, 0 )
end

function scrollDefaultDone( f9_arg0, f9_arg1 )
	for f9_local0 = 1, LUI.H1ButtonBackground.SubScanlineElements, 1 do
		local f9_local3 = f9_arg0:getChildById( "subScanlines_" .. f9_local0 )
		f9_local3:setTopBottom( true, false, LUI.H1ButtonBackground.ButtonHeight * f9_local0, LUI.H1ButtonBackground.ButtonHeight * (f9_local0 + 1) )
	end
end

LUI.H1ButtonBackground.CreateFocusedElements = function ( f10_arg0 )
	local f10_local0 = f10_arg0:getParent()
	local f10_local1 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f10_local1.material = RegisterMaterial( "h1_btn_reg_selected_contour" )
	f10_local1.alpha = 0
	local self = LUI.UIImage.new( f10_local1 )
	self.id = "selectionContour"
	self:setup9SliceImage( LUI.H1ButtonBackground.EdgeW, LUI.H1ButtonBackground.EdgeH, LUI.H1ButtonBackground.EdgeU, LUI.H1ButtonBackground.EdgeV )
	self:registerAnimationState( "default", f10_local1 )
	local f10_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f10_local3.material = RegisterMaterial( "h1_btn_reg_selected_contour" )
	f10_local3.alpha = LUI.H1ButtonBackground.ContourFinalAlpha
	self:registerAnimationState( "action", f10_local3 )
	local f10_local4 = CoD.CreateState( -LUI.H1ButtonBackground.ContourExtention, -LUI.H1ButtonBackground.ContourExtention, LUI.H1ButtonBackground.ContourExtention, LUI.H1ButtonBackground.ContourExtention, CoD.AnchorTypes.All )
	f10_local4.material = RegisterMaterial( "h1_btn_reg_selected_contour" )
	f10_local4.alpha = LUI.H1ButtonBackground.ContourFinalAlpha
	self:registerAnimationState( "action_scaled", f10_local4 )
	self:registerEventHandler( "button_action", LUI.H1ButtonBackground.SelectionContourActionAnimation )
	f10_local0:addElement( self )
	local f10_local5 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f10_local5.alpha = 0
	local self = LUI.UIElement.new( f10_local5 )
	self.id = "focusedContainer"
	self:registerAnimationState( "default", f10_local5 )
	self:registerAnimationState( "focused", {
		alpha = 1
	} )
	self:registerEventHandler( "button_over", MBh.AnimateToState( "focused", LUI.H1ButtonBackground.AnimOverTimeContent ) )
	self:registerEventHandler( "button_up", MBh.AnimateToState( "default", LUI.H1ButtonBackground.AnimUpTime ) )
	f10_local0:addElement( self )
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	self:setUseStencil( true )
	self:addElement( self )
	local f10_local8 = CoD.CreateState( 0, -LUI.H1ButtonBackground.ButtonHeight, 0, 0, CoD.AnchorTypes.TopLeftRight )
	f10_local8.alpha = LUI.H1ButtonBackground.ScanlinesAlpha
	f10_local8.material = RegisterMaterial( "h1_ui_btn_focused_scanlines" )
	local self = LUI.UIImage.new( f10_local8 )
	self.id = "scanlines"
	self:registerAnimationState( "default", f10_local8 )
	for f10_local10 = 1, LUI.H1ButtonBackground.SubScanlineElements, 1 do
		local self = f10_local10
		local f10_local14 = LUI.H1ButtonBackground.ButtonHeight * self
		local self = CoD.CreateState( 0, f10_local14 - LUI.H1ButtonBackground.ButtonHeight, 0, f10_local14, CoD.AnchorTypes.TopLeftRight )
		self.alpha = LUI.H1ButtonBackground.ScanlinesAlpha
		self:registerAnimationState( "scroll_down_mid_" .. self, self )
		self:registerEventHandler( LUI.FormatAnimStateFinishStepEvent( "scroll_down_mid_" .. self ), function ( element, event )
			scrollDownMidDone( element, self )
		end )
		local f10_local16 = CoD.CreateState( 0, f10_local14 - LUI.H1ButtonBackground.ButtonHeight, 0, f10_local14, CoD.AnchorTypes.TopLeftRight )
		f10_local16.material = RegisterMaterial( "h1_ui_btn_focused_scanlines" )
		local self = LUI.UIImage.new( f10_local16 )
		self.id = "subScanlines_" .. self
		self:registerAnimationState( "default", f10_local16 )
		self:addElement( self )
	end
	local f10_local10 = LUI.H1ButtonBackground.SubScanlineElements * LUI.H1ButtonBackground.ButtonHeight
	local f10_local11 = CoD.CreateState( 0, f10_local10, 0, f10_local10 + LUI.H1ButtonBackground.ButtonHeight, CoD.AnchorTypes.TopLeftRight )
	f10_local11.alpha = LUI.H1ButtonBackground.ScanlinesAlpha
	self:registerAnimationState( "scroll_down_bottom", f10_local11 )
	self:registerEventHandler( "button_over", LUI.H1ButtonBackground.ScanlinesButtonOverAnimation )
	self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 0 ) )
	self:registerEventHandler( LUI.FormatAnimStateFinishStepEvent( "scroll_down_bottom" ), scrollDownBottomDone )
	self:registerEventHandler( LUI.FormatAnimStateFinishStepEvent( "default" ), scrollDefaultDone )
	self:addElement( self )
	local f10_local12 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f10_local12.material = RegisterMaterial( "h1_ui_btn_focused_stroke" )
	local self = LUI.UIImage.new( f10_local12 )
	self.id = "stroke"
	self:setup9SliceImage( LUI.H1ButtonBackground.EdgeW, LUI.H1ButtonBackground.EdgeH, LUI.H1ButtonBackground.EdgeU, LUI.H1ButtonBackground.EdgeV )
	self:registerAnimationState( "default", f10_local12 )
	self:addElement( self )
	local f10_local14 = CoD.CreateState( 0, 0, 0, -LUI.H1ButtonBackground.GreenlineVerticalOffset, CoD.AnchorTypes.TopLeftRight )
	f10_local14.material = RegisterMaterial( "h1_btn_reg_selected_greenline" )
	local self = LUI.UIImage.new( f10_local14 )
	self.id = "greenline"
	self:registerAnimationState( "default", f10_local14 )
	self:registerAnimationState( "default_scroll_pos", f10_local14 )
	self:registerAnimationState( "scroll_down", CoD.CreateState( 0, 0, 0, -LUI.H1ButtonBackground.GreenlineVerticalOffset, CoD.AnchorTypes.BottomLeftRight ) )
	self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 0 ) )
	self:registerEventHandler( "button_over", LUI.H1ButtonBackground.GreenlineButtonOverAnimation )
	self:addElement( self )
	local self = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	self.material = RegisterMaterial( "h1_ui_btn_focused_inner_glow" )
	self.alpha = 1
	self.scale = 0
	local self = LUI.UIImage.new( self )
	self.id = "innerGlow"
	self:registerAnimationState( "default", self )
	self:registerAnimationState( "focused", {
		alpha = 0.75,
		scale = 0.55
	} )
	self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 0 ) )
	self:registerEventHandler( "button_over", LUI.H1ButtonBackground.InnerGlowButtonOverLoopAnimation )
	self:addElement( self )
	local f10_local19 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f10_local19.material = RegisterMaterial( "h1_btn_focused_overlay_glow" )
	f10_local19.alpha = 0
	local self = LUI.UIImage.new( f10_local19 )
	self.id = "overlayGlow"
	self:setup9SliceImage( LUI.H1ButtonBackground.EdgeW, LUI.H1ButtonBackground.EdgeH, LUI.H1ButtonBackground.EdgeU, LUI.H1ButtonBackground.EdgeV )
	self:registerAnimationState( "default", f10_local19 )
	self:registerAnimationState( "default_glow", f10_local19 )
	self:registerAnimationState( "focused", {
		alpha = LUI.H1ButtonBackground.FocusedOverlayGlowAlpha
	} )
	self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 0 ) )
	self:registerEventHandler( "button_over", LUI.H1ButtonBackground.OverlayGlowButtonOverLoopAnimation )
	self:addElement( self )
	f10_local0.hasFocusedElements = true
	return self, self
end

LUI.H1ButtonBackground.ReceivedFocus = function ( f11_arg0 )
	if f11_arg0.hasFocus then
		return 
	end
	f11_arg0.hasFocus = true
	f11_arg0:animateToState( "focused", LUI.H1ButtonBackground.AnimOverTime )
	if f11_arg0.lostFocusTimer then
		LUI.UITimer.Stop( f11_arg0.lostFocusTimer )
		f11_arg0.lostFocusTimer:close()
		f11_arg0.lostFocusTimer = nil
		local f11_local0 = f11_arg0:getParent()
		if f11_local0.hasFocusedElements then
			return 
		end
	end
	local f11_local0, f11_local1 = LUI.H1ButtonBackground.CreateFocusedElements( f11_arg0 )
	f11_local0:processEvent( {
		name = "button_over",
		dispatchChildren = true
	} )
	f11_local1:processEvent( {
		name = "button_over",
		dispatchChildren = true
	} )
end

LUI.H1ButtonBackground.CreateFocusedLockedElements = function ( f12_arg0 )
	local f12_local0 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f12_local0.alpha = 0
	local self = LUI.UIElement.new( f12_local0 )
	self:setUseStencil( true )
	self.id = "focusedLockedContainer"
	local f12_local2 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f12_local2.alpha = 1
	self:registerAnimationState( "default", f12_local0 )
	self:registerAnimationState( "focused", f12_local2 )
	self:registerEventHandler( "button_disable", MBh.AnimateToState( "default", LUI.H1ButtonBackground.AnimUpTime ) )
	self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "focused", LUI.H1ButtonBackground.AnimOverTime ) )
	f12_arg0:addElement( self )
	local f12_local3 = f12_arg0:getParent()
	f12_local3.hasFocusLockedElement = true
	return self
end

LUI.H1ButtonBackground.ReceivedFocusLocked = function ( f13_arg0 )
	if f13_arg0.hasFocus then
		return 
	else
		f13_arg0.hasFocus = true
		f13_arg0.everHadFocus = true
		f13_arg0:animateToState( "focused_disabled", LUI.H1ButtonBackground.AnimOverTime )
		if f13_arg0.lostFocusTimer then
			LUI.UITimer.Stop( f13_arg0.lostFocusTimer )
			f13_arg0.lostFocusTimer:close()
			f13_arg0.lostFocusTimer = nil
			return 
		else
			local f13_local0 = f13_arg0:getParent()
			if f13_local0.hasFocusLockedElement then
				return 
			else
				f13_local0 = LUI.H1ButtonBackground.CreateFocusedLockedElements( f13_arg0 )
				f13_local0:processEvent( {
					name = "button_over_disable",
					dispatchChildren = true
				} )
			end
		end
	end
end

LUI.H1ButtonBackground.LostFocusLocked = function ( f14_arg0 )
	if not f14_arg0.hasFocus and f14_arg0.everHadFocus then
		return 
	end
	local f14_local0 = f14_arg0:getParent()
	if f14_local0.hasFocusLockedElement then
		f14_arg0.hasFocus = false
		if not f14_arg0.lostFocusTimer then
			f14_arg0.lostFocusTimer = LUI.UITimer.new( LUI.H1ButtonBackground.AnimUpTime, "lost_focus_done", nil, true )
			f14_arg0:addElement( f14_arg0.lostFocusTimer )
		else
			LUI.UITimer.Reset( f14_arg0.lostFocusTimer )
		end
		LUI.H1ButtonBackground.AnimateToDisable( f14_arg0 )
	end
end

LUI.H1ButtonBackground.ClearFocusedContainers = function ( f15_arg0 )
	local f15_local0 = f15_arg0:getParent()
	if f15_local0 ~= nil then
		local f15_local1 = f15_local0:getChildById( "selectionContour" )
		if f15_local1 then
			f15_local1:close()
		end
		local f15_local2 = f15_local0:getChildById( "focusedContainer" )
		if f15_local2 then
			f15_local2:close()
		end
		f15_local0.hasFocusLockedElement = false
		f15_local0.hasFocusedElements = false
	end
	f15_arg0:closeChildren()
	collectgarbage( "collect" )
end

LUI.H1ButtonBackground.LostFocusDone = function ( f16_arg0 )
	if f16_arg0.lostFocusTimer then
		LUI.UITimer.Stop( f16_arg0.lostFocusTimer )
		f16_arg0.lostFocusTimer:close()
		f16_arg0.lostFocusTimer = nil
	end
	LUI.H1ButtonBackground.ClearFocusedContainers( f16_arg0 )
end

LUI.H1ButtonBackground.LostFocus = function ( f17_arg0 )
	if not f17_arg0.hasFocus then
		return 
	end
	f17_arg0.hasFocus = false
	if not f17_arg0.lostFocusTimer then
		f17_arg0.lostFocusTimer = LUI.UITimer.new( LUI.H1ButtonBackground.AnimUpTime, "lost_focus_done", nil, true )
		f17_arg0:addElement( f17_arg0.lostFocusTimer )
	else
		LUI.UITimer.Reset( f17_arg0.lostFocusTimer )
	end
	LUI.H1ButtonBackground.AnimateToEnable( f17_arg0 )
end

LUI.H1ButtonBackground.AnimateToEnable = function ( f18_arg0 )
	if f18_arg0.hasFocus then
		LUI.H1ButtonBackground.ClearFocusedContainers( f18_arg0 )
		f18_arg0:animateToState( "focused", LUI.H1ButtonBackground.AnimOverTime )
		local f18_local0, f18_local1 = LUI.H1ButtonBackground.CreateFocusedElements( f18_arg0 )
		f18_local0:processEvent( {
			name = "button_over",
			dispatchChildren = true
		} )
		f18_local1:processEvent( {
			name = "button_over",
			dispatchChildren = true
		} )
	else
		f18_arg0:animateToState( "default", LUI.H1ButtonBackground.AnimUpTime )
		f18_arg0.material = RegisterMaterial( "h1_ui_btn_unfocused" )
	end
end

LUI.H1ButtonBackground.AnimateToDisable = function ( f19_arg0 )
	if f19_arg0.hasFocus then
		LUI.H1ButtonBackground.ClearFocusedContainers( f19_arg0 )
		f19_arg0:animateToState( "focused_disabled", LUI.H1ButtonBackground.AnimOverTime )
		local f19_local0 = LUI.H1ButtonBackground.CreateFocusedLockedElements( f19_arg0 )
		f19_local0:processEvent( {
			name = "button_over_disable",
			dispatchChildren = true
		} )
	else
		f19_arg0:animateToState( "default_disabled", LUI.H1ButtonBackground.AnimUpTime )
		f19_arg0.material = RegisterMaterial( "h1_btn_locked_unfocused" )
	end
end

LUI.H1ButtonBackground.ClearRarityElements = function ( f20_arg0 )
	if f20_arg0.glow and f20_arg0.leftStrip and f20_arg0.topRightCorner then
		f20_arg0:removeElement( f20_arg0.glow )
		f20_arg0:removeElement( f20_arg0.leftStrip )
		f20_arg0:removeElement( f20_arg0.topRightCorner )
	end
end

LUI.H1ButtonBackground.new = function ( f21_arg0 )
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	self.id = "buttonContainer"
	self:setClass( LUI.H1ButtonBackground )
	local f21_local1 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f21_local1.material = RegisterMaterial( "h1_ui_btn_unfocused" )
	local self = LUI.UIImage.new( f21_local1 )
	self.id = "fill"
	self.UITimer = nil
	self.hasFocus = false
	self.everHadFocus = false
	self:setup9SliceImage( LUI.H1ButtonBackground.EdgeW, LUI.H1ButtonBackground.EdgeH, LUI.H1ButtonBackground.EdgeU, LUI.H1ButtonBackground.EdgeV )
	self:registerAnimationState( "default", f21_local1 )
	self:registerAnimationState( "focused", {
		material = RegisterMaterial( "h1_ui_btn_focused_fill" )
	} )
	self:registerAnimationState( "default_disabled", {
		material = RegisterMaterial( "h1_btn_locked_unfocused" )
	} )
	local f21_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f21_local3.material = RegisterMaterial( "h1_btn_locked_overlay" )
	self:registerAnimationState( "focused_disabled", f21_local3 )
	self:registerAnimationState( "action_extended", CoD.CreateState( -LUI.H1ButtonBackground.DisabledActionExtention, -LUI.H1ButtonBackground.DisabledActionExtention, LUI.H1ButtonBackground.DisabledActionExtention, LUI.H1ButtonBackground.DisabledActionExtention, CoD.AnchorTypes.All ) )
	self:registerEventHandler( "button_up", LUI.H1ButtonBackground.LostFocus )
	self:registerEventHandler( "button_over", LUI.H1ButtonBackground.ReceivedFocus )
	self:registerEventHandler( "button_disable", LUI.H1ButtonBackground.LostFocusLocked )
	self:registerEventHandler( "button_over_disable", LUI.H1ButtonBackground.ReceivedFocusLocked )
	self:registerEventHandler( "button_action_disable", LUI.H1ButtonBackground.DisabledActionAnimation )
	self:registerEventHandler( "lost_focus_done", LUI.H1ButtonBackground.LostFocusDone )
	self:registerEventHandler( "enable", LUI.H1ButtonBackground.AnimateToEnable )
	self:registerEventHandler( "disable", LUI.H1ButtonBackground.AnimateToDisable )
	self:addElement( self )
	if f21_arg0 ~= nil and f21_arg0.strip ~= nil and f21_arg0.glow ~= nil and f21_arg0.corner ~= nil and f21_arg0.rarity > 0 then
		local f21_local4 = CoD.CreateState( 0, 0, nil, 0, CoD.AnchorTypes.TopBottomLeft )
		f21_local4.width = 8
		f21_local4.material = f21_arg0.strip
		
		local leftStrip = LUI.UIImage.new( f21_local4 )
		self:addElement( leftStrip )
		self.leftStrip = leftStrip
		
		local f21_local6 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f21_local6.material = f21_arg0.glow
		
		local glow = LUI.UIImage.new( f21_local6 )
		self:addElement( glow )
		self.glow = glow
		
		local f21_local8 = CoD.CreateState( nil, 2, -2, nil, CoD.AnchorTypes.TopRight )
		f21_local8.width = 16
		f21_local8.height = 16
		f21_local8.material = f21_arg0.corner
		f21_local8.alpha = 0
		local self = LUI.UIImage.new( f21_local8 )
		self:registerAnimationState( "focused", {
			alpha = 1
		} )
		self:registerEventHandler( "button_up", MBh.AnimateToState( "default" ) )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "focused" ) )
		self:registerEventHandler( "button_disable", MBh.AnimateToState( "default" ) )
		self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "focused" ) )
		self:addElement( self )
		self.topRightCorner = self
	end
	return self
end

LockTable( _M )
