local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
LUI.EULABase = InheritFrom( LUI.MenuTemplate )
LUI.EULABase.Font = Font24
LUI.EULABase.Width = 1000
LUI.EULABase.Height = 585
LUI.EULABase.BGPaddingLR = 10
LUI.EULABase.BGPaddingTop = 10
LUI.EULABase.BGPaddingBottom = 50
LUI.EULABase.TextPadding = 12
LUI.EULABase.TextWidth = LUI.EULABase.Width - 2 * LUI.EULABase.BGPaddingLR - 2 * LUI.EULABase.TextPadding
LUI.EULABase.TextHeight = LUI.EULABase.Height - 2 * LUI.EULABase.TextPadding - LUI.EULABase.BGPaddingTop - LUI.EULABase.BGPaddingBottom
LUI.EULABase.ScrollRate = LUI.EULABase.Height / 3
LUI.EULABase.ScrollTime = 100
LUI.EULABase.TopBuffer = 4
if Engine.IsAsianLanguage() or Engine.IsRightToLeftLanguage() or Engine.GetCurrentLanguage() == CoD.Language.Arabic then
	LUI.EULABase.TextWidth = LUI.EULABase.TextWidth - LUI.EULABase.TextPadding
end
LUI.EULABase.CreateTextStrings = function ( f1_arg0, f1_arg1 )
	local f1_local0 = {}
	for f1_local1 = 1, f1_arg1, 1 do
		f1_local0[f1_local1] = f1_arg0 .. f1_local1
	end
	return f1_local0
end

f0_local0 = function ( f2_arg0 )
	local f2_local0 = f2_arg0:getFirstChild()
	while f2_local0 ~= nil do
		if f2_local0.min + f2_arg0.targetY > LUI.EULABase.TextHeight or f2_local0.max + f2_arg0.targetY < 0 then
			f2_local0:animateToState( "hidden" )
		else
			f2_local0:animateToState( "visible" )
		end
		f2_local0 = f2_local0:getNextSibling()
	end
end

f0_local1 = function ( f3_arg0, f3_arg1 )
	f3_arg0.minY = LUI.EULABase.TextHeight
	local f3_local0 = 0
	local f3_local1 = f3_arg0:getFirstChild()
	for f3_local2 = 1, #f3_arg1, 1 do
		local f3_local5, f3_local6, f3_local7 = GetTextDimensions2( Engine.LocalizeLong( f3_arg1[f3_local2] ), LUI.EULABase.Font.Font, LUI.EULABase.Font.Height, LUI.EULABase.TextWidth, true )
		local f3_local8 = (f3_local6 + LUI.EULABase.Font.Height) * 1.2
		local f3_local9 = CoD.CreateState( 0, f3_local0, LUI.EULABase.TextWidth, nil, CoD.AnchorTypes.TopLeft )
		f3_local9.height = LUI.EULABase.Font.Height
		f3_local9.alignment = LUI.AdjustAlignmentForLanguage( LUI.Alignment.Left )
		f3_local9.font = LUI.EULABase.Font.Font
		f3_local9.lineSpacingRatio = 0.2
		f3_local1:registerAnimationState( "default", f3_local9 )
		f3_local1.min = f3_local0
		f3_local1:animateToState( "default" )
		f3_arg0.minY = f3_arg0.minY - f3_local8
		f3_local0 = f3_local0 + f3_local8
		f3_local1.max = f3_local0
		f3_local1 = f3_local1:getNextSibling()
	end
end

f0_local2 = function ( f4_arg0, f4_arg1 )
	for f4_local0 = 1, #f4_arg1, 1 do
		local f4_local3 = Engine.LocalizeLong( f4_arg1[f4_local0] )
		local self = LUI.UIText.new()
		self.id = "eula_text_line" .. f4_local0
		self:setText( f4_local3 )
		f4_arg0:addElement( self )
		self:registerAnimationState( "hidden", {
			alpha = 0
		} )
		self:registerAnimationState( "visible", {
			alpha = 1
		} )
	end
	f0_local1( f4_arg0, f4_arg1 )
end

local f0_local3 = function ( f5_arg0 )
	f5_arg0:registerAnimationState( "animate", CoD.CreateState( LUI.EULABase.TextPadding, f5_arg0.targetY, -LUI.EULABase.TextPadding, 0, CoD.AnchorTypes.All ) )
	f5_arg0:animateToState( "animate", LUI.EULABase.ScrollTime )
	f0_local0( f5_arg0 )
end

local f0_local4 = function ( f6_arg0 )
	if f6_arg0.scrollBar then
		LUI.UIVerticalScrollbar.ManualUpdate( f6_arg0.scrollBar, f6_arg0.targetY / LUI.EULABase.ScrollRate * -1, 1, f6_arg0.minY / LUI.EULABase.ScrollRate * -1 + 1, LUI.EULABase.TextHeight, 0 )
	end
end

local f0_local5 = function ( f7_arg0, f7_arg1 )
	if f7_arg0.targetY < LUI.EULABase.TopBuffer then
		f7_arg0.targetY = f7_arg0.targetY + LUI.EULABase.ScrollRate
		if f7_arg0.targetY > LUI.EULABase.TopBuffer then
			f7_arg0.targetY = LUI.EULABase.TopBuffer
		end
		f0_local3( f7_arg0 )
		Engine.PlaySound( CoD.SFX.MouseOver )
		f0_local4( f7_arg0 )
	end
end

local f0_local6 = function ( f8_arg0, f8_arg1 )
	if f8_arg0.minY < f8_arg0.targetY then
		f8_arg0.targetY = f8_arg0.targetY - LUI.EULABase.ScrollRate
		if f8_arg0.targetY < f8_arg0.minY then
			f8_arg0.targetY = f8_arg0.minY
		end
		f0_local3( f8_arg0 )
		Engine.PlaySound( CoD.SFX.MouseOver )
		f0_local4( f8_arg0 )
	end
end

local f0_local7 = function ( f9_arg0, f9_arg1 )
	local f9_local0 = f9_arg1 * f9_arg0.minY
	if f9_arg0.minY < f9_local0 then
		f9_local0 = LUI.Round( f9_local0 / LUI.EULABase.ScrollRate ) * LUI.EULABase.ScrollRate
	end
	if f9_local0 > LUI.EULABase.TopBuffer then
		f9_local0 = LUI.EULABase.TopBuffer
	end
	if f9_arg0.targetY ~= f9_local0 then
		f9_arg0.targetY = f9_local0
		f0_local3( f9_arg0 )
		Engine.PlaySound( CoD.SFX.MouseOver )
		f0_local4( f9_arg0 )
	end
end

LUI.EULABase.new = function ( f10_arg0, f10_arg1 )
	if not f10_arg1 then
		f10_arg1 = {}
	end
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	self:addElement( LUI.MenuGenerics.generic_popup_screen_overlay() )
	PersistentBackground.Set( PersistentBackground.Variants.Default )
	local f10_local1 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.None )
	f10_local1.width = LUI.EULABase.Width
	f10_local1.height = LUI.EULABase.Height
	local f10_local2 = LUI.UIElement.new( f10_local1 )
	self:addElement( f10_local2 )
	local f10_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f10_local3.material = RegisterMaterial( "white" )
	f10_local3.color = Colors.h1.dark_grey
	f10_local2:addElement( LUI.UIImage.new( f10_local3 ) )
	local f10_local4 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f10_local4.borderThickness = 2
	f10_local4.color = Colors.grey_5
	f10_local2:addElement( LUI.UIBorder.new( f10_local4 ) )
	local f10_local5 = CoD.CreateState( LUI.EULABase.BGPaddingLR, LUI.EULABase.BGPaddingLR, -LUI.EULABase.BGPaddingTop, -LUI.EULABase.BGPaddingBottom, CoD.AnchorTypes.All )
	f10_local5.material = RegisterMaterial( "white" )
	f10_local5.color = Colors.grey_125
	local f10_local6 = LUI.UIImage.new( f10_local5 )
	f10_local2:addElement( f10_local6 )
	local f10_local7 = LUI.UIElement.new( CoD.CreateState( 0, LUI.EULABase.TextPadding, -LUI.EULABase.TopBuffer, -LUI.EULABase.TextPadding, CoD.AnchorTypes.All ) )
	f10_local7:setUseStencil( true )
	f10_local6:addElement( f10_local7 )
	local f10_local8 = LUI.UIElement.new( CoD.CreateState( LUI.EULABase.TextPadding, LUI.EULABase.TopBuffer, -LUI.EULABase.TextPadding, 0, CoD.AnchorTypes.All ) )
	f10_local8.targetY = LUI.EULABase.TopBuffer
	f10_local8.minY = LUI.EULABase.TextHeight
	f10_local7:addElement( f10_local8 )
	f0_local2( f10_local8, f10_arg1.textStrings )
	local f10_local9 = CoD.CreateState( nil, nil, nil, -9, CoD.AnchorTypes.Bottom )
	if CoD.Language.German == Engine.GetCurrentLanguage() then
		f10_local9.left = -120
	end
	f10_local9.width = 200
	f10_local9.height = 32
	local f10_local10 = LUI.UIElement.new( f10_local9 )
	f10_local2:addElement( f10_local10 )
	local f10_local11 = function ( f11_arg0, f11_arg1 )
		if f10_arg1.acceptCallback then
			f10_arg1.acceptCallback( f11_arg1.controller )
		end
		Engine.PlaySound( CoD.SFX.MouseClick )
		LUI.FlowManager.RequestLeaveMenu( f11_arg0 )
		if f10_arg1.callback then
			f10_arg1.callback( f11_arg1.controller )
		end
	end
	
	local f10_local12 = function ( f12_arg0, f12_arg1 )
		LUI.FlowManager.RequestLeaveMenu( f12_arg0 )
		if f10_arg1.declineCallback then
			f10_arg1.declineCallback( f12_arg1.controller )
		end
	end
	
	local f10_local13 = {
		style = GenericButtonSettings.Styles.FlatButton
	}
	local f10_local14 = Engine.Localize
	local f10_local15 = f10_arg1.acceptString
	if not f10_local15 then
		f10_local15 = "@LUA_MENU_ACCEPT"
	end
	f10_local13.button_text = f10_local14( f10_local15 )
	f10_local13.text_align_without_content = LUI.Alignment.Center
	f10_local13.button_action_func = function ( f13_arg0, f13_arg1 )
		f10_local11( f13_arg0, f13_arg1 )
	end
	
	f10_local14 = LUI.MenuBuilder.BuildAddChild( f10_local10, {
		type = "UIGenericButton",
		id = "accept_button",
		properties = f10_local13
	} )
	f10_local15 = -48
	local f10_local16 = 40
	if CoD.Language.Polish == Engine.GetCurrentLanguage() or CoD.Language.German == Engine.GetCurrentLanguage() then
		f10_local16 = 55
	end
	local f10_local17 = LUI.UIElement.new( CoD.CreateState( f10_local15, 0, f10_local16, 22, CoD.AnchorTypes.All ) )
	f10_local2:addElement( f10_local17 )
	local f10_local18 = LUI.MenuBuilder.BuildAddChild( f10_local17, {
		type = "button_helper_text_main"
	} )
	local f10_local19 = {
		name = "add_button_helper_text",
		button_ref = "button_secondary"
	}
	local f10_local20 = Engine.Localize
	local f10_local21 = f10_arg1.declineString
	if not f10_local21 then
		f10_local21 = "@LUA_MENU_DECLINE"
	end
	f10_local19.helper_text = f10_local20( f10_local21 )
	f10_local19.side = "left"
	f10_local19.clickable = true
	f10_local19.priority = -2000
	f10_local18:processEvent( f10_local19 )
	if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
		f10_local18:processEvent( LUI.ButtonHelperText.CommonEvents.addSelectButton )
		f10_local18:processEvent( {
			name = "add_button_helper_text",
			button_ref = "button_dpad_up",
			helper_text = Engine.Localize( "@LUA_MENU_PAGE_UP" ),
			side = "right",
			clickable = true
		} )
		f10_local18:processEvent( {
			name = "add_button_helper_text",
			button_ref = "button_dpad_down",
			helper_text = Engine.Localize( "@LUA_MENU_PAGE_DOWN" ),
			side = "right",
			clickable = true
		} )
	else
		f10_local18:processEvent( {
			name = "add_button_helper_text",
			button_ref = "button_page_up",
			helper_text = Engine.Localize( "@LUA_MENU_PAGE_UP" ),
			side = "right",
			clickable = true,
			muteAction = true,
			func = function ( f14_arg0, f14_arg1 )
				f0_local5( f10_local8, f14_arg1 )
				return true
			end
		} )
		f10_local18:processEvent( {
			name = "add_button_helper_text",
			button_ref = "button_page_down",
			helper_text = Engine.Localize( "@LUA_MENU_PAGE_DOWN" ),
			side = "right",
			clickable = true,
			muteAction = true,
			func = function ( f15_arg0, f15_arg1 )
				f0_local6( f10_local8, f15_arg1 )
				return true
			end
		} )
	end
	f10_local20 = LUI.UIBindButton.new()
	f10_local20:registerEventHandler( "button_up", function ( element, event )
		f0_local5( f10_local8, event )
		return true
	end )
	f10_local20:registerEventHandler( "button_down", function ( element, event )
		f0_local6( f10_local8, event )
		return true
	end )
	f10_local20:registerEventHandler( "button_secondary", function ( element, event )
		f10_local12( element, event )
	end )
	f10_local20:registerEventHandler( "button_action", function ( element, event )
		f10_local11( element, event )
	end )
	f10_local20.handlePrimary = true
	self:addElement( f10_local20 )
	if Engine.IsXB3() or Engine.IsPCApp() then
		local f10_local22 = LUI.UIElement.new( CoD.CreateState( 0, GenericFooterDims.TopMargin_WithBackground, 400, 0, CoD.AnchorTypes.BottomLeft ) )
		self:addElement( f10_local22 )
		LUI.ButtonHelperText.AddSignInText( f10_local22 )
	end
	local scrollBar = LUI.UIVerticalScrollbar.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = false,
		rightAnchor = true,
		width = 7.5,
		top = 0.5
	}, nil, nil, nil, nil, nil, function ( f20_arg0, f20_arg1, f20_arg2, f20_arg3 )
		f0_local7( f10_local8, f20_arg2 )
	end, Colors.white, Colors.h1.dark_grey, "h1_scrollbar_fill_normal", "h1_scrollbar_bg", "h2_scrollbar_fill_selected" )
	f10_local7:addElement( scrollBar )
	f10_local8.scrollBar = scrollBar
	
	f0_local4( f10_local8 )
	f0_local0( f10_local8 )
	function RefreshFunc( f21_arg0, f21_arg1 )
		f0_local1( f10_local8, f10_arg1.textStrings )
	end
	
	self:registerEventHandler( "onVideoChange", RefreshFunc )
	return self
end

