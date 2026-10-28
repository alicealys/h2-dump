local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
DebugPrint( "Registering " .. _NAME )
LUI.UIGenericButton = {}
ButtonLabelFont = CoD.TextSettings.TitleFontTiny
f0_local0 = CoD.TextSettings.TitleFontTiny
f0_local1 = CoD.TextSettings.TitleFontTiny
LUI.UIGenericButton.fontScale = 0.8
f0_local2 = function ( f1_arg0, f1_arg1 )
	if f1_arg1 then
		if f1_arg1.itemProps and f1_arg1.itemProps[f1_arg0] ~= nil then
			return f1_arg1.itemProps[f1_arg0]
		elseif f1_arg1.substyle and f1_arg1.substyle[f1_arg0] ~= nil then
			return f1_arg1.substyle[f1_arg0]
		elseif f1_arg1.style and f1_arg1.style[f1_arg0] ~= nil then
			return f1_arg1.style[f1_arg0]
		elseif GenericButtonSettings.Common[f1_arg0] ~= nil then
			return GenericButtonSettings.Common[f1_arg0]
		end
	end
	DebugPrint( "WARNING: MenuGenericButtons tried to read a setting that does not exist (" .. f1_arg0 .. "). You should be worried." )
end

LUI.UIGenericButton.ButtonLabelFactory = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5 )
	local f2_local0 = f2_arg0.align
	if not f2_local0 then
		f2_local0 = LUI.Alignment.Right
	end
	local f2_local1 = f2_arg0.padding or 0
	local f2_local2 = f2_arg0.paddingFocus or 0
	local f2_local3 = f2_arg0.yOffset or 0
	local f2_local4 = f2_local0 == LUI.Alignment.Right
	local f2_local5 = f2_local0 == LUI.Alignment.Left
	local f2_local6 = 0
	local f2_local7 = f2_arg5 or ButtonLabelFont
	local f2_local8 = f2_local7.Height * LUI.UIGenericButton.fontScale
	local f2_local9 = nil
	if f2_arg1 then
		f2_local9 = Engine.ToUpperCase( f2_arg1 )
		if f2_arg4 then
			local f2_local10, self, f2_local12 = GetTextDimensions( f2_local9, f2_local7.Font, f2_local8 )
			if f2_arg4 < f2_local12 then
				local f2_local13 = f2_arg4 / f2_local12
				f2_local8 = f2_local8 * f2_local13
				f2_local3 = f2_local3 * f2_local13
			end
		end
	end
	local f2_local10 = f2_local8 / 2
	local self = LUI.UIText.new()
	self.id = "text_label"
	local f2_local13 = self
	local f2_local12 = self.registerAnimationState
	local f2_local14 = "default"
	local f2_local15 = CoD.ColorizeState
	local f2_local16 = f2_arg0.text_default_color
	local f2_local17 = {
		alignment = f2_local0,
		font = f2_local7.Font,
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true
	}
	if f2_local5 then
		local f2_local18 = f2_local1
	end
	f2_local17.left = f2_local18 or 0
	local f2_local19
	if f2_local4 then
		f2_local19 = -f2_local1
		if not f2_local19 then
		
		else
			f2_local17.right = f2_local19
			f2_local17.top = f2_local3 - f2_local10
			f2_local17.bottom = f2_local3 + f2_local10
			f2_local17.glow = LUI.GlowState.None
			f2_local12( f2_local13, f2_local14, f2_local15( f2_local16, f2_local17 ) )
			self:animateToState( "default" )
			f2_local12 = nil
			f2_local14 = self
			f2_local13 = self.registerAnimationState
			f2_local15 = "focus"
			f2_local16 = CoD.ColorizeState
			f2_local17 = f2_arg0.text_focus_color
			f2_local19 = {
				alignment = f2_local0,
				font = f2_local7.Font,
				topAnchor = false,
				bottomAnchor = false,
				leftAnchor = true,
				rightAnchor = not f2_local5
			}
			if f2_local5 then
				local f2_local20 = f2_local2
			end
			f2_local19.left = f2_local20 or 0
			local f2_local21
			if f2_local4 then
				f2_local21 = -f2_local2
				if not f2_local21 then
				
				else
					f2_local19.right = f2_local21
					f2_local19.top = f2_local3 - f2_local10
					f2_local19.bottom = f2_local3 + f2_local10
					f2_local19.glow = f2_local12
					f2_local13( f2_local14, f2_local15, f2_local16( f2_local17, f2_local19 ) )
					self:registerAnimationState( "locked", CoD.ColorizeState( f2_arg0.text_lock_color, {
						glow = LUI.GlowState.None
					} ) )
					self:registerAnimationState( "pinned", CoD.ColorizeState( f2_arg0.pinned_color, {
						glow = LUI.GlowState.None
					} ) )
					f2_local13 = {
						alignment = f2_local0,
						font = f2_local7.Font,
						topAnchor = false,
						bottomAnchor = false,
						leftAnchor = true,
						rightAnchor = true
					}
					if f2_local5 then
						local f2_local22 = f2_local1
					end
					f2_local13.left = f2_local22 or 0
					if f2_local4 then
						f2_local14 = -f2_local1
						if not f2_local14 then
						
						else
							f2_local13.right = f2_local14
							f2_local13.top = f2_local3 - f2_local10
							f2_local13.bottom = f2_local3 + f2_local10
							f2_local13.glow = LUI.GlowState.None
							self:registerAnimationState( "disabled", CoD.ColorizeState( f2_arg0.text_disabled_color, f2_local13 ) )
							self:registerAnimationState( "over_disabled", CoD.ColorizeState( f2_arg0.text_over_disabled_color, f2_local13 ) )
							self:registerAnimationState( "over_disabled_pulse", CoD.ColorizeState( f2_arg0.text_over_disabled_pulse_color, f2_local13 ) )
							self:registerEventHandler( "button_over", MBh.AnimateToState( "focus", f2_local6 ) )
							self:registerEventHandler( "button_up", MBh.AnimateToState( "default", f2_local6 ) )
							self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "over_disabled", f2_local6 ) )
							self:registerEventHandler( "button_disable", MBh.AnimateToState( "disabled", f2_local6 ) )
							self:registerEventHandler( "visual_focused_lowlighted", MBh.AnimateToState( "focus", f2_local6 ) )
							self:registerEventHandler( "visual_lowlighted", MBh.AnimateToState( "disabled", f2_local6 ) )
							self:registerEventHandler( "visual_unlighted", function ( element, event )
								if f2_arg2 and f2_arg2.disabled then
									element:animateToState( "disabled", f2_local6 )
								else
									element:animateToState( "default", f2_local6 )
								end
							end )
							if f2_arg0.additional_handlers then
								for f2_local17, f2_local19 in pairs( f2_arg0.additional_handlers ) do
									self:addEventHandler( f2_local17, f2_local19 )
								end
							end
							if f2_arg3 then
								self:setTextStyle( f2_arg3 )
							end
							if f2_local9 then
								self:setText( f2_local9 )
							end
							return self
						end
					end
					f2_local14 = 0
				end
			end
			f2_local21 = 0
		end
	end
	f2_local19 = 0
end

local f0_local3 = function ( f4_arg0, f4_arg1 )
	local f4_local0 = f4_arg0.width or 160
	local f4_local1 = f4_arg0.margin or 0
	local f4_local2 = f4_arg0.useText
	local f4_local3 = f4_arg0.yOffset or 0
	local f4_local4 = f4_arg0.useBackground
	local f4_local5 = f4_arg0.useBackgroundBypass
	local f4_local6 = f4_arg0.backgroundMarginTop or 0
	local f4_local7 = f4_arg0.backgroundMarginBottom or 0
	local f4_local8 = f4_arg0.useArrows
	local f4_local9 = f4_arg0.toggleClick
	local f4_local10 = f4_arg0.arrowsMargin
	local f4_local11 = f4_arg0.useSlider
	local f4_local12 = f4_arg0.sliderWidth
	local f4_local13 = f4_arg0.sliderHeight
	local f4_local14 = f4_arg0.useCap
	local f4_local15 = f4_arg0.useCap and f4_arg0.capWidth or 0
	local f4_local16 = f4_arg0.useInput
	local f4_local17 = f4_arg0.field_edited_func or nil
	local f4_local18 = f4_arg0.max_length or 20
	local f4_local19 = f4_arg0.password_field or false
	local f4_local20 = f4_arg0.text_alignment
	if not f4_local20 then
		f4_local20 = LUI.Alignment.Left
	end
	local f4_local21 = f4_arg0.keyboard_type
	if not f4_local21 then
		f4_local21 = CoD.KeyboardInputTypes.Normal
	end
	local f4_local22 = f4_arg0.field_name or "Placeholder Field Name"
	local f4_local23
	if f4_arg0.disable_highlight_glow == nil then
		f4_local23 = true
	else
		f4_local23 = not f4_arg0.disable_highlight_glow
	end
	local self = LUI.UIElement.new()
	self.id = "button_value"
	self.properties = f4_arg1 or {}
	local f4_local25 = {
		topAnchor = true,
		bottomAnchor = true,
		top = 0,
		bottom = 0,
		width = f4_local0
	}
	if f4_arg0.align == LUI.Alignment.Left then
		f4_local25.rightAnchor = true
		f4_local25.right = -f4_local1
	else
		f4_local25.leftAnchor = true
		f4_local25.left = f4_local1
	end
	self:registerAnimationState( "default", f4_local25 )
	self:animateToState( "default" )
	if f4_local4 then
		local f4_local26 = LUI.UIImage.new()
		f4_local26.id = "background"
		f4_local26:registerAnimationState( "default", {
			material = RegisterMaterial( "white" ),
			red = 0,
			green = 0,
			blue = 0,
			topAnchor = true,
			bottomAnchor = true,
			leftAnchor = true,
			rightAnchor = true,
			top = f4_local6,
			bottom = -f4_local7,
			left = 0,
			right = -f4_local15,
			alpha = 0
		} )
		f4_local26:animateToState( "default" )
		f4_local26:registerAnimationState( "focus", {
			alpha = 1
		} )
		f4_local26:registerEventHandler( "button_up", MBh.AnimateToState( "default" ) )
		f4_local26:registerEventHandler( "button_over", MBh.AnimateToState( "focus" ) )
		f4_local26:registerEventHandler( "button_over_disable", MBh.AnimateToState( "default" ) )
		self:addElement( f4_local26 )
	end
	if f4_local14 then
		local f4_local26 = LUI.UIImage.new()
		f4_local26.id = "cap"
		f4_local26:registerAnimationState( "default", {
			material = RegisterMaterial( "box_angle_rtcap" ),
			red = 0,
			green = 0,
			blue = 0,
			topAnchor = true,
			bottomAnchor = true,
			leftAnchor = false,
			rightAnchor = true,
			top = f4_local6,
			bottom = -f4_local7,
			left = -f4_local15,
			right = 0,
			alpha = 0
		} )
		f4_local26:animateToState( "default" )
		f4_local26:registerAnimationState( "focus", {
			alpha = 1
		} )
		f4_local26:registerEventHandler( "button_up", MBh.AnimateToState( "default" ) )
		f4_local26:registerEventHandler( "button_over", MBh.AnimateToState( "focus" ) )
		f4_local26:registerEventHandler( "button_over_disable", MBh.AnimateToState( "default" ) )
		self:addElement( f4_local26 )
	end
	local f4_local26 = function ( f5_arg0, f5_arg1, f5_arg2 )
		local f5_local0 = self:getParent()
		f5_local0 = f5_local0:getParent()
		f5_local0 = f5_local0:getParent()
		if f5_local0.genericListAction then
			f5_local0 = self:getParent()
			f5_local0 = f5_local0:getParent()
			f5_local0 = f5_local0:getParent()
			f5_local0:genericListAction( f5_arg1 )
		end
		f5_local0 = self.properties.button_display_func( f5_arg0 )
		if f5_arg2 then
			f5_arg2( self, f5_arg1 )
		end
		local f5_local1 = self.properties.button_display_func( f5_arg0 )
		if f4_local11 then
			if f5_local0 ~= f5_local1 then
				Engine.PlaySound( CoD.SFX.AdjustSlider )
			else
				Engine.PlaySound( CoD.SFX.DenySelect )
			end
		elseif f5_local0 ~= f5_local1 then
			Engine.PlaySound( CoD.SFX.OtherAdjust )
		else
			Engine.PlaySound( CoD.SFX.DenySelect )
		end
		self:processEvent( {
			name = "content_refresh"
		} )
	end
	
	local f4_local27 = function ( f6_arg0, f6_arg1 )
		f4_local26( f6_arg0, f6_arg1, self.properties.button_left_func )
		f6_arg0:processEvent( {
			name = "content_arrow_left"
		} )
	end
	
	local f4_local28 = function ( f7_arg0, f7_arg1 )
		f4_local26( f7_arg0, f7_arg1, self.properties.button_right_func )
		f7_arg0:processEvent( {
			name = "content_arrow_right"
		} )
	end
	
	if f4_local8 then
		self:addElement( MBh.CreateArrowButtonFactory( "left", true, self, f4_local10, f4_local27 ) )
		self:addElement( MBh.CreateArrowButtonFactory( "right", false, self, f4_local10, f4_local28 ) )
		if f4_arg1.button_left_func then
			self.properties.button_left_func = f4_arg1.button_left_func
		end
		if f4_arg1.button_right_func then
			self.properties.button_right_func = f4_arg1.button_right_func
		end
		if f4_local9 and not Engine.IsConsoleGame() then
			local f4_local29 = 21 + f4_local10
			local f4_local30 = 2
			local f4_local31 = LUI.UIButton.new( {
				topAnchor = true,
				bottomAnchor = true,
				leftAnchor = true,
				rightAnchor = true,
				top = f4_local30,
				bottom = -f4_local30,
				left = f4_local29,
				right = -f4_local29
			} )
			f4_local31.m_requireFocusType = FocusType.MouseOver
			f4_local31:registerEventHandler( "button_action", f4_local28 )
			f4_local31.shareFocus = true
			self:addElement( f4_local31 )
		end
	end
	if f4_local2 then
		local f4_local29 = f4_local3
		local f4_local30 = f0_local0
		local f4_local31 = LUI.UIText.new()
		f4_local31.id = "content_text_label"
		f4_local31:setText( "Placeholder" )
		local f4_local32 = f4_local31
		local f4_local33 = f4_local31.registerAnimationState
		local f4_local34 = "default"
		local f4_local35 = {}
		local f4_local36 = f4_arg0.labelAlign
		if not f4_local36 then
			f4_local36 = LUI.Alignment.Center
		end
		f4_local35.alignment = f4_local36
		f4_local35.font = f4_local30.Font
		f4_local35.topAnchor = false
		f4_local35.bottomAnchor = false
		f4_local35.leftAnchor = false
		f4_local35.rightAnchor = false
		f4_local35.left = -f4_local0 / 2
		f4_local35.right = f4_local0 / 2
		f4_local35.top = f4_local29 - f4_local30.Height * LUI.UIGenericButton.fontScale / 2
		f4_local35.bottom = f4_local29 + f4_local30.Height * LUI.UIGenericButton.fontScale / 2
		f4_local33( f4_local32, f4_local34, f4_local35 )
		if f4_local4 or f4_local5 then
			f4_local33 = f4_arg0.content_focus_color
			if not f4_local33 then
			
			else
				if f4_local23 then
					f4_local32 = LUI.GlowState.Orange
					if not f4_local32 then
					
					else
						f4_local31:animateToState( "default" )
						f4_local31:registerAnimationState( "unfocus", CoD.ColorizeState( f4_arg0.content_default_color, {
							glow = LUI.GlowState.None
						} ) )
						f4_local31:animateToState( "unfocus" )
						f4_local31:registerAnimationState( "focus", CoD.ColorizeState( f4_local33, {
							glow = f4_local32
						} ) )
						f4_local31:registerAnimationState( "locked", CoD.ColorizeState( f4_arg0.content_lock_color, {
							glow = LUI.GlowState.None
						} ) )
						f4_local31:registerAnimationState( "disabled", CoD.ColorizeState( f4_arg0.text_disabled_color, {
							glow = LUI.GlowState.None
						} ) )
						f4_local31:registerAnimationState( "over_disabled", CoD.ColorizeState( f4_arg0.text_over_disabled_pulse_color, {
							glow = LUI.GlowState.None
						} ) )
						f4_local31:registerEventHandler( "button_over", MBh.AnimateToState( "focus" ) )
						f4_local31:registerEventHandler( "button_up", MBh.AnimateToState( "unfocus" ) )
						f4_local31:registerEventHandler( "button_over_disable", MBh.AnimateToState( "disabled" ) )
						f4_local31:registerEventHandler( "button_disable", MBh.AnimateToState( "disabled" ) )
						if not f4_local4 then
							f4_local31:registerEventHandler( "button_over_disable", MBh.AnimateToState( "over_disabled" ) )
						end
						f4_local34 = function ( f8_arg0, f8_arg1 )
							if f8_arg0.properties and f8_arg0.properties.button_display_func then
								if not f8_arg1 then
									f8_arg1 = {}
								end
								local f8_local0 = f8_arg0.properties:button_display_func( f8_arg1 )
								if f8_local0 then
									f8_arg0:setText( f8_local0 )
									if f4_arg1.maxContentWidth then
										local f8_local1 = ButtonLabelFont.Height * LUI.UIGenericButton.fontScale
										local f8_local2, f8_local3, f8_local4 = GetTextDimensions( f8_local0, f4_local30.Font, f4_local30.Height * LUI.UIGenericButton.fontScale )
										if f8_arg0.properties.maxContentWidth < f8_local4 then
											local f8_local5 = f4_local31:getAnimationStateInC( "default" )
											local f8_local6 = f4_arg1.maxContentWidth / f8_local4
											f8_local5.top = f4_local29 - f4_local30.Height * LUI.UIGenericButton.fontScale / 2 * f8_local6
											f8_local5.bottom = f4_local29 + f4_local30.Height * LUI.UIGenericButton.fontScale / 2 * f8_local6
											f4_local31:registerAnimationState( "default", f8_local5 )
											f4_local31:animateToState( "default" )
											f4_local31.isScale = true
										elseif f4_local31.isScale then
											local f8_local5 = f4_local31:getAnimationStateInC( "default" )
											f8_local5.top = f4_local29 - f4_local30.Height * LUI.UIGenericButton.fontScale / 2
											f8_local5.bottom = f4_local29 + f4_local30.Height * LUI.UIGenericButton.fontScale / 2
											f4_local31:registerAnimationState( "default", f8_local5 )
											f4_local31:animateToState( "default" )
											f4_local31.isScale = false
										end
									end
								end
							end
						end
						
						f4_local31:registerEventHandler( "content_refresh", f4_local34 )
						f4_local31:registerEventHandler( "menu_create", f4_local34 )
						if f4_arg1.button_display_func then
							f4_local31.properties = f4_arg1 or {}
							f4_local31.properties.button_display_func = f4_arg1.button_display_func
							f4_local34( f4_local31, {
								exclusiveController = f4_arg1.exclusiveController
							} )
						end
						self:addElement( f4_local31 )
					end
				end
				f4_local32 = LUI.GlowState.None
			end
		end
		f4_local33 = f4_arg0.content_focus_color_without_bg
	end
	if f4_local11 then
		local f4_local29 = f4_local3 - 2
		local f4_local30 = LUI.UIElement.new()
		f4_local30.id = "slider"
		f4_local30:registerAnimationState( "default", {
			topAnchor = false,
			bottomAnchor = false,
			leftAnchor = false,
			rightAnchor = false,
			top = f4_local29 - f4_local13 / 2,
			bottom = f4_local29 + f4_local13 / 2,
			left = -f4_local12 / 2,
			right = f4_local12 / 2
		} )
		f4_local30:animateToState( "default" )
		local f4_local31 = CoD.CreateState( -4, -4, 4, 4, CoD.AnchorTypes.All )
		f4_local31.material = RegisterMaterial( "h2_bg_option_slider_outline_glow" )
		f4_local31.alpha = 0
		local f4_local33 = LUI.UIImage.new( f4_local31 )
		f4_local33.id = "backgroundGlow"
		f4_local33:registerAnimationState( "buttonOver", {
			alpha = 1
		} )
		f4_local33:registerEventHandler( "button_over", MBh.AnimateToState( "buttonOver" ) )
		f4_local33:registerEventHandler( "button_up", MBh.AnimateToState( "default" ) )
		f4_local30:addElement( f4_local33 )
		local f4_local32 = LUI.UIImage.new()
		f4_local32.id = "background"
		f4_local32:setHandleMouseButton( not Engine.IsConsoleGame() )
		f4_local32:registerAnimationState( "default", {
			material = RegisterMaterial( "h2_bg_option_slider_bg" ),
			topAnchor = true,
			bottomAnchor = true,
			leftAnchor = true,
			rightAnchor = true,
			top = 0,
			bottom = 0,
			left = 0,
			right = 0,
			alpha = 0.3
		} )
		f4_local32:registerAnimationState( "buttonOver", {
			alpha = 0.8
		} )
		f4_local32:registerEventHandler( "button_over", MBh.AnimateToState( "buttonOver" ) )
		f4_local32:animateToState( "default" )
		f4_local30:addElement( f4_local32 )
		local f4_local34 = 1
		local f4_local35 = f4_local12 - (1 + f4_local34) * 2
		local f4_local36 = CoD.CreateState( f4_local34 + 1, f4_local34 + 1, nil, -f4_local34 - 1, CoD.AnchorTypes.TopBottomLeft )
		f4_local36.width = 0
		local f4_local37 = LUI.UIElement.new( f4_local36 )
		f4_local37.id = "fill"
		f4_local30:addElement( f4_local37 )
		local f4_local38 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f4_local38.material = RegisterMaterial( "h1_bg_option_slider_bar" )
		f4_local38.color = Colors.h1.medium_grey
		local f4_local39 = LUI.UIImage.new( f4_local38 )
		f4_local39.id = "fillImage"
		f4_local39:registerAnimationState( "button_over", CoD.ColorizeState( f4_arg0.content_focus_color ) )
		f4_local39:registerAnimationState( "button_up", {
			color = Colors.h1.medium_grey
		} )
		f4_local39:registerEventHandler( "button_over", MBh.AnimateToState( "button_over" ) )
		f4_local39:registerEventHandler( "button_up", function ( element, event )
			local f9_local0 = MBh.AnimateToState( "button_up" )
			f9_local0( element, event )
			f4_local32:animateToState( "default" )
		end )
		f4_local37:addElement( f4_local39 )
		local f4_local40 = function ( f10_arg0, f10_arg1 )
			if f10_arg0.properties and f10_arg0.properties.button_display_func then
				local f10_local0 = f10_arg0.properties.button_display_func()
				if f10_local0 == nil then
					f10_local0 = 0
				end
				f4_local36.width = f4_local35 * f10_local0
				f4_local37:registerAnimationState( "default", f4_local36 )
				f4_local37:animateToState( "default", 0 )
			end
		end
		
		if not Engine.IsConsoleGame() then
			local f4_local41 = function ( f11_arg0, f11_arg1 )
				local f11_local0, f11_local1 = nil
				if f11_arg1.rootName ~= nil then
					f11_local0, f11_local1 = ProjectRootCoordinate( f11_arg1.rootName, f11_arg1.x, f11_arg1.y )
				elseif f11_arg1.name == "leftmousedown" then
					f11_local0 = f11_arg1.x
					f11_local1 = f11_arg1.y
				end
				if not f11_arg0.disabled and f11_arg0.m_leftMouseDown ~= nil and f11_local0 ~= nil and f11_local1 ~= nil then
					local f11_local2 = f4_local35
					local f11_local3, f11_local4, f11_local5, f11_local6 = f11_arg0:getRect()
					local f11_local7, f11_local8 = f11_arg1.root:pixelsToUnits( f11_local3, f11_local4 )
					f11_local4 = f11_local8
					f11_local7 = (f11_arg1.root:pixelsToUnits( f11_local0, f11_local1 ) - f11_local7 + 1 + f4_local34) / f11_local2
					f11_local8 = f4_arg1.button_display_func()
					local f11_local9
					if f11_local8 < f11_local7 then
						f11_local9 = self.properties.button_right_func
						if not f11_local9 then
						
						else
							local f11_local10 = f11_local8
							local f11_local11 = nil
							while (f11_local7 - f11_local8) * (f11_local7 - f11_local10) > 0 do
								f11_local9( self, f11_arg1 )
								f11_local11 = f11_local10
								f11_local10 = f4_arg1.button_display_func()
								if f11_local11 == f11_local10 then
									break
								end
							end
							if f11_local7 < f11_local8 and f11_local7 > 0 then
								self.properties:button_right_func( f11_arg1 )
							elseif f11_local10 ~= 1 then
								self.properties:button_left_func( f11_arg1 )
							end
							Engine.PlaySound( CoD.SFX.MenuAccept )
							self:processEvent( {
								name = "content_refresh"
							}, f11_arg1 )
						end
					end
					f11_local9 = self.properties.button_left_func
				end
			end
			
			if f4_arg1.button_display_func then
				f4_local32:registerEventHandler( "mousemove", f4_local41 )
				f4_local32:registerEventHandler( "leftmousedown", f4_local41 )
				f4_local32:registerEventHandler( "button_disable", function ( element, event )
					element.disabled = true
				end )
				f4_local32:registerEventHandler( "button_up", function ( element, event )
					f4_local32:animateToState( "default" )
					element.disabled = false
				end )
			end
		end
		f4_local30:registerEventHandler( "content_refresh", f4_local40 )
		f4_local30:registerEventHandler( "menu_create", f4_local40 )
		if f4_arg1.button_display_func then
			f4_local30.properties = f4_arg1 or {}
			f4_local30.properties.slider_width = f4_local12
			f4_local30.properties.button_display_func = f4_arg1.button_display_func
			f4_local40( f4_local30, {} )
		end
		self:addElement( f4_local30 )
	end
	if f4_local16 then
		local f4_local30 = LUI.MenuBuilder.buildItems( {
			type = "generic_input_field",
			properties = {
				textLeft = 0,
				textAlign = LUI.Alignment.Center,
				field_edited_func = f4_local17,
				max_length = f4_local18,
				password_field = f4_local19,
				verify_string = false,
				filter_profanity = false,
				help_value = "",
				field_name = f4_local22,
				keyboard_type = f4_local21,
				text_alignment = f4_local20
			}
		}, {} )
		f4_local30.id = "input"
		local f4_local33 = f4_local30
		local f4_local31 = f4_local30.registerAnimationState
		local f4_local32 = "default"
		local f4_local34 = {}
		local f4_local35 = f4_arg0.labelAlign
		if not f4_local35 then
			f4_local35 = LUI.Alignment.Center
		end
		f4_local34.alignment = f4_local35
		f4_local34.font = f0_local1.Font
		f4_local34.topAnchor = false
		f4_local34.bottomAnchor = false
		f4_local34.leftAnchor = false
		f4_local34.rightAnchor = false
		f4_local34.left = -f4_local0 / 2
		f4_local34.right = f4_local0 / 2
		f4_local34.top = f4_local3 - f0_local1.Height / 2
		f4_local34.bottom = f4_local3 + f0_local1.Height / 2
		f4_local34.alpha = 1
		f4_local31( f4_local33, f4_local32, f4_local34 )
		f4_local30:animateToState( "default" )
		f4_local30:registerEventHandler( "button_over", function ( element, event )
			MBh.AnimateToState( "focus" )
			element:processEvent( {
				name = "colorize",
				red = f4_arg0.content_focus_color.r,
				green = f4_arg0.content_focus_color.g,
				blue = f4_arg0.content_focus_color.b
			} )
		end )
		f4_local30:registerEventHandler( "button_up", function ( element, event )
			MBh.AnimateToState( "default" )
			element:processEvent( {
				name = "colorize",
				red = f4_arg0.content_default_color.r,
				green = f4_arg0.content_default_color.g,
				blue = f4_arg0.content_default_color.b
			} )
			element:processEvent( {
				name = "edit_unfocus"
			} )
		end )
		self:addElement( f4_local30 )
	end
	return self
end

local f0_local4 = function ( f16_arg0, f16_arg1 )
	local f16_local0 = f16_arg0.margin or 0
	local f16_local1 = f16_arg0.width or 50
	local f16_local2 = (f16_arg0.yOffset or 0) - 2
	local f16_local3 = -f16_local0 - f16_local1 / 2
	local f16_local4 = 10
	if Engine.IsRightToLeftLanguage() then
		f16_local3 = f16_local3 * -1
	end
	local self = LUI.UIImage.new()
	self.id = "checkbox"
	self.properties = {
		isVisible = true
	}
	local f16_local6 = "box_empty"
	local f16_local7 = "box_check"
	if f16_arg0.negativeColor then
		f16_local6 = "dest_alpha_zero"
		f16_local7 = CoD.Material.RestrictedIcon
	end
	local f16_local8 = {
		material = RegisterMaterial( f16_local6 ),
		topAnchor = false,
		bottomAnchor = false,
		top = f16_local2 - f16_local4,
		bottom = f16_local2 + f16_local4,
		left = f16_local3 - f16_local4,
		right = f16_local3 + f16_local4,
		alpha = 1
	}
	if Engine.IsRightToLeftLanguage() then
		f16_local8.leftAnchor = true
		f16_local8.rightAnchor = false
	else
		f16_local8.leftAnchor = false
		f16_local8.rightAnchor = true
	end
	self:registerAnimationState( "default", f16_local8 )
	self:animateToState( "default" )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	self:registerEventHandler( "show_checkbox", function ( element, event )
		element.properties.isVisible = true
		if event.showBox ~= nil then
			element.properties.isVisible = event.showBox
		end
		element:animateToState( element.properties.isVisible and "default" or "hidden", 0 )
	end )
	local f16_local9 = LUI.UIImage.new()
	f16_local9.id = "checkmark"
	f16_local9.properties = {
		isChecked = false
	}
	f16_local9:registerAnimationState( "default", {
		material = RegisterMaterial( f16_local7 ),
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		alpha = 0
	} )
	f16_local9:animateToState( "default" )
	f16_local9:registerAnimationState( "checked", {
		alpha = 1
	} )
	f16_local9:registerEventHandler( "toggle_checked", function ( element, event )
		event.name = "set_checked"
		event.checkBox = not element.properties.isChecked
		element:processEvent( event )
	end )
	f16_local9:registerEventHandler( "set_checked", function ( element, event )
		element.properties.isChecked = true
		if event.checkBox ~= nil then
			element.properties.isChecked = event.checkBox
		end
		element:animateToState( element.properties.isChecked and "checked" or "default", 0 )
	end )
	self:addElement( f16_local9 )
	return self
end

function CommonButtonBackgroundFactory( f20_arg0 )
	return LUI.DefaultButtonBackground.new( f20_arg0.rarity )
end

function addButtonBorder( f21_arg0 )
	local self = LUI.UIBackgroundPanel.new( nil, {
		borderAlpha = 0
	} )
	self.id = "border"
	self:registerAnimationState( "default", {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		left = 0,
		right = 0,
		top = 0,
		bottom = 0
	} )
	self:animateToState( "default" )
	return self
end

LUI.UIGenericButton.new = function ( f22_arg0, f22_arg1, f22_arg2 )
	if not f22_arg1 then
		f22_arg1 = {}
	end
	local f22_local0 = f22_arg1.childNum
	if not f22_arg2 then
		f22_arg2 = f22_local0 or 0
	end
	local f22_local1 = nil
	local f22_local2 = f22_arg1.style
	if not f22_local2 then
		f22_local2 = GenericButtonSettings.Styles.GradientButton
	end
	local f22_local3 = f22_arg1.variant
	if not f22_local3 then
		f22_local3 = GenericButtonSettings.Variants.Plain
	end
	local f22_local4 = f22_local3 == GenericButtonSettings.Variants.Checkbox
	local f22_local5 = f22_local3 == GenericButtonSettings.Variants.Plain
	local f22_local6 = f22_local3 == GenericButtonSettings.Variants.Info
	local f22_local7 = f22_local3 == GenericButtonSettings.Variants.Select
	local f22_local8 = f22_local3 == GenericButtonSettings.Variants.Slider
	local f22_local9 = f22_local3 == GenericButtonSettings.Variants.Input
	local f22_local10 = f22_local8 or f22_local7 or f22_local6 or f22_local9
	local f22_local11 = false
	local f22_local12 = f22_arg1.fade_in
	if not f22_local12 then
		f22_local12 = GenericMenuAnimationSettings.ButtonFadeInStartFade
	end
	if f22_local2 == GenericButtonSettings.Styles.FlatButton then
		f22_local1 = f22_arg1.substyle or GenericButtonSettings.Styles.FlatButton.SubStyles.Default
	elseif f22_local2 == GenericButtonSettings.Styles.GlassButton then
		f22_local1 = f22_arg1.substyle or GenericButtonSettings.Styles.GlassButton.SubStyles.Default
	end
	if not f22_local1 then
		f22_local1 = {}
	end
	local f22_local13 = {
		style = f22_local2,
		substyle = f22_local1,
		itemProps = f22_arg1
	}
	local self = LUI.UIButton.new()
	self.id = f22_arg1.id or "UIGenericButton"
	self.properties = self.properties or {}
	local f22_local15 = self
	local f22_local16 = self.registerAnimationState
	local f22_local17 = "default"
	local f22_local18 = {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = false,
		top = 0,
		bottom = f0_local2( "height", f22_local13 )
	}
	local f22_local19
	if f22_local2 == GenericButtonSettings.Styles.GradientButton then
		f22_local19 = -f0_local2( "focus_animation_distance", f22_local13 )
		if not f22_local19 then
		
		else
			f22_local18.right = f22_local19
			f22_local18.left = 0
			f22_local16( f22_local15, f22_local17, f22_local18 )
			self:animateToState( "default" )
			if f22_arg1.muteAction then
				self:clearActionSFX()
			end
			f22_local16 = LUI.UIElement.new()
			f22_local16.id = "button"
			self:addElement( f22_local16 )
			f22_local15 = not f0_local2( "disable_height_guard", f22_local13 )
			if f22_local11 then
				f22_local18 = f22_local16
				f22_local17 = f22_local16.registerAnimationState
				f22_local19 = "default"
				local f22_local20 = {
					leftAnchor = true,
					rightAnchor = false,
					topAnchor = true,
					bottomAnchor = not f22_local15,
					top = 0
				}
				local f22_local21
				if f22_local15 then
					f22_local21 = f0_local2( "height", f22_local13 )
					if not f22_local21 then
					
					else
						f22_local20.bottom = f22_local21
						f22_local20.left = -f0_local2( "lt_cap_width", f22_local13 ) - f0_local2( "rt_cap_width", f22_local13 )
						f22_local20.right = 0
						f22_local17( f22_local18, f22_local19, f22_local20 )
						f22_local18 = f22_local16
						f22_local17 = f22_local16.registerAnimationState
						f22_local19 = "ready"
						f22_local20 = {
							leftAnchor = true,
							rightAnchor = true,
							topAnchor = true,
							bottomAnchor = not f22_local15,
							left = 0,
							right = 0,
							top = 0
						}
						if f22_local15 then
							f22_local21 = f0_local2( "height", f22_local13 )
							if not f22_local21 then
							
							else
								f22_local20.bottom = f22_local21
								f22_local17( f22_local18, f22_local19, f22_local20 )
								f22_local18 = MBh.AnimateSequence( {
									{
										"default",
										0,
										false,
										false
									},
									{
										"ready",
										f0_local2( "slide_in_min_duration", f22_local13 ) + f0_local2( "slide_in_duration_step", f22_local13 ) * f22_arg2,
										false,
										true
									}
								} )
								f22_local18( f22_local16, {} )
								if f22_arg2 == 1 then
									Engine.PlaySound( CoD.SFX.ChangeScreen )
								end
							end
						end
						f22_local21 = 0
					end
				end
				f22_local21 = 0
			elseif f0_local2( "fadeIn", f22_local13 ) then
				f22_local17 = {
					leftAnchor = true,
					rightAnchor = true,
					topAnchor = true,
					bottomAnchor = not f22_local15,
					left = 0,
					right = 0,
					top = 0
				}
				if f22_local15 then
					f22_local18 = f0_local2( "height", f22_local13 )
					if not f22_local18 then
					
					else
						f22_local17.bottom = f22_local18
						f22_local17.alpha = 1
						f22_local16:registerAnimationState( "default", f22_local17 )
						f22_local18 = f22_local17
						f22_local18.alpha = 0
						f22_local16:registerAnimationState( "hide", f22_local18 )
						f22_local16:registerAnimationState( "wait", {} )
						f22_local16:animateInSequence( {
							{
								"hide",
								0
							},
							{
								"wait",
								f22_local12 + (f22_arg0.listIndex or 0) * GenericMenuAnimationSettings.ButtonFadeInDelay
							},
							{
								"default",
								GenericMenuAnimationSettings.ButtonFadeInDuration
							}
						} )
					end
				end
				f22_local18 = 0
			else
				f22_local18 = f22_local16
				f22_local17 = f22_local16.registerAnimationState
				f22_local19 = "default"
				local f22_local20 = {
					leftAnchor = true,
					rightAnchor = true,
					topAnchor = true,
					bottomAnchor = not f22_local15,
					left = 0,
					right = 0,
					top = 0
				}
				local f22_local21
				if f22_local15 then
					f22_local21 = f0_local2( "height", f22_local13 )
					if not f22_local21 then
					
					else
						f22_local20.bottom = f22_local21
						f22_local17( f22_local18, f22_local19, f22_local20 )
						f22_local16:animateToState( "default" )
					end
				end
				f22_local21 = 0
			end
			f22_local17 = {
				style = f22_local2,
				substyle = f22_local1,
				itemProps = f22_arg1,
				useActionButton = f22_local6 or f22_local5 or f22_local9
			}
			f22_local18 = assert
			if f0_local2( "force_disable_action_button", f22_local13 ) then
				f22_local19 = not f0_local2( "force_enable_action_button", f22_local13 )
			else
				f22_local19 = true
			end
			f22_local18( f22_local19, "Trying to force enable and force disable the button prompt." )
			f22_local18 = f22_local17.useActionButton
			if f22_local18 then
				f22_local18 = not f0_local2( "force_disable_action_button", f22_local13 )
			end
			f22_local17.useActionButton = f22_local18
			f22_local18 = f22_local17.useActionButton
			if not f22_local18 then
				f22_local18 = f0_local2( "force_enable_action_button", f22_local13 )
			end
			f22_local17.useActionButton = f22_local18
			f22_local18 = f22_local17.useActionButton
			if f22_local18 then
				f22_local18 = Engine.IsConsoleGame()
				if not f22_local18 then
					f22_local18 = Engine.IsGamepadEnabled()
				end
			end
			f22_local17.useActionButton = f22_local18
			if not f22_local5 and not f22_local6 and not f22_local9 then
				f22_local18 = f0_local2( "force_enable_action_button", f22_local13 )
				if f22_local18 then
				
				else
					f22_local17.extendOnFocus = f22_local18
					f22_local17.actionButtonMargin = f0_local2( "action_button_margin", f22_local13 )
					f22_local17.rarity = f22_arg1.rarity
					f22_local16:addElement( CommonButtonBackgroundFactory( f22_local17 ) )
					f22_local19 = {
						yOffset = f0_local2( "y_offset", f22_local13 ),
						text_focus_color = f0_local2( "text_focus_color", f22_local13 ),
						text_lock_color = f0_local2( "text_lock_color", f22_local13 ),
						text_default_color = f0_local2( "text_default_color", f22_local13 ),
						text_disabled_color = f0_local2( "text_disabled_color", f22_local13 ),
						text_over_disabled_color = f0_local2( "text_over_disabled_color", f22_local13 ),
						text_over_disabled_pulse_color = f0_local2( "text_over_disabled_pulse_color", f22_local13 ),
						overDisabledAnimationDuration = f0_local2( "over_disabled_animation_duration", f22_local13 ),
						pinned_color = f0_local2( "pinned_color", f22_local13 )
					}
					if f22_local10 then
						f22_local19.padding = f0_local2( "text_padding_with_content", f22_local13 )
						f22_local19.paddingFocus = f0_local2( "text_padding_focus_with_content", f22_local13 )
						f22_local19.align = f0_local2( "text_align_with_content", f22_local13 )
					else
						f22_local19.padding = f0_local2( "text_padding_without_content", f22_local13 )
						f22_local19.paddingFocus = f0_local2( "text_padding_focus_without_content", f22_local13 )
						f22_local19.align = f0_local2( "text_align_without_content", f22_local13 )
					end
					f22_local19.lockedHighlight = f0_local2( "lockedHighlight", f22_local13 )
					f22_local19.align = LUI.AdjustAlignmentForLanguage( f22_local19.align )
					f22_local19.additional_handlers = {
						change_button_text = function ( f23_arg0, f23_arg1 )
							if f23_arg1.button_text ~= nil then
								f23_arg0:setText( f23_arg1.button_text )
							end
						end
					}
					if f22_local2 == GenericButtonSettings.Styles.FlatButton or f22_local2 == GenericButtonSettings.Styles.GlassButton then
						LUI.InheritCopy( f22_local19.additional_handlers, {
							button_pin = function ( f24_arg0, f24_arg1 )
								if not Engine.IsConsoleGame() then
									self.m_ignoreMouseFocus = true
									if not Engine.IsGamepadEnabled() then
										self:processEvent( {
											name = "lose_focus",
											immediate = true
										} )
										self.m_ignoreMouseFocus = true
										self.m_mouseOver = nil
									end
								end
								f24_arg0:animateToState( "pinned" )
							end,
							button_unpin = function ( f25_arg0, f25_arg1 )
								if not f25_arg1.graphicsOnly then
									if self.disabled then
										return 
									end
									f25_arg0:animateToState( "default" )
									if not Engine.IsConsoleGame() then
										self.m_ignoreMouseFocus = false
										if not Engine.IsGamepadEnabled() then
											self.m_focusable = true
										end
									end
									self:processEvent( {
										name = "button_up",
										immediate = true,
										dispatchChildren = true
									} )
								end
							end
						} )
					end
					if f22_arg1.hasSublist then
						local f22_local20 = LUI.UIImage.new( {
							rightAnchor = true,
							width = 21,
							height = 13,
							right = -25,
							material = RegisterMaterial( "h1_deco_icon_mwdoublearrow" ),
							color = LUI.CacStaticLayout.imageGray
						} )
						f22_local20:registerAnimationState( "focus", {
							color = GenericButtonSettings.Common.content_focus_color
						} )
						f22_local20:registerEventHandler( "button_over", function ( element, event )
							element:animateToState( "focus" )
						end )
						f22_local20:registerEventHandler( "button_up", function ( element, event )
							element:animateToState( "default" )
						end )
						f22_local16:addElement( f22_local20 )
						if f22_local19.align == LUI.Alignment.Right then
							f22_local19.padding = 51
							f22_local19.paddingFocus = f22_local19.padding
						end
					end
					self.textLabel = LUI.UIGenericButton.ButtonLabelFactory( f22_local19, f22_arg1.button_text, self, f22_arg1.textStyle, f22_arg1.maxLabelWidth )
					self.setText = function ( f28_arg0, f28_arg1 )
						self.textLabel:setText( f28_arg1 )
					end
					
					f22_local16:addElement( self.textLabel )
					if f22_local10 then
						local f22_local20 = {
							align = f22_local19.align
						}
						local f22_local21
						if not f22_local8 then
							f22_local21 = not f22_local9
						else
							f22_local21 = false
						end
						f22_local20.useText = f22_local21
						f22_local20.useInput = f22_local9
						f22_local20.field_edited_func = f0_local2( "field_edited_func", f22_local13 )
						f22_local20.max_length = f0_local2( "max_length", f22_local13 )
						f22_local20.password_field = f0_local2( "password_field", f22_local13 )
						f22_local20.keyboard_type = f0_local2( "keyboard_type", f22_local13 )
						f22_local20.field_name = f0_local2( "field_name", f22_local13 )
						f22_local20.text_alignment = f0_local2( "text_alignment", f22_local13 )
						f22_local20.useBackground = false
						if not f22_local6 then
							f22_local21 = not f22_local9
						else
							f22_local21 = false
						end
						f22_local20.useArrows = f22_local21
						f22_local20.toggleClick = f22_local7
						f22_local21 = f22_arg1.arrowsMargin
						if not f22_local21 then
							f22_local21 = f0_local2( "content_arrows_margin", f22_local13 )
						end
						f22_local20.arrowsMargin = f22_local21
						f22_local20.useSlider = f22_local8
						f22_local20.sliderWidth = f0_local2( "content_slider_width", f22_local13 )
						f22_local20.sliderHeight = f0_local2( "content_slider_height", f22_local13 )
						f22_local21 = f22_local20.useBackground
						if f22_local21 then
							f22_local21 = f22_local2 == GenericButtonSettings.Styles.GradientButton
						end
						f22_local20.useCap = f22_local21
						f22_local20.margin = f0_local2( "content_margin", f22_local13 )
						f22_local20.width = f0_local2( "content_width", f22_local13 )
						f22_local20.yOffset = f0_local2( "y_offset", f22_local13 )
						f22_local20.backgroundMarginTop = f0_local2( "content_background_margin_top", f22_local13 )
						f22_local20.backgroundMarginBottom = f0_local2( "content_background_margin_bottom", f22_local13 )
						f22_local20.capWidth = f0_local2( "content_cap_width", f22_local13 )
						f22_local20.labelAlign = f0_local2( "label_align", f22_local13 )
						f22_local20.text_focus_color = f0_local2( "text_focus_color", f22_local13 )
						f22_local20.content_default_color = f0_local2( "content_default_color", f22_local13 )
						f22_local20.content_lock_color = f0_local2( "content_lock_color", f22_local13 )
						f22_local20.content_focus_color = f0_local2( "content_focus_color", f22_local13 )
						f22_local20.content_focus_color_without_bg = f0_local2( "content_focus_color_without_bg", f22_local13 )
						f22_local20.text_disabled_color = f0_local2( "text_disabled_color", f22_local13 )
						f22_local20.text_over_disabled_color = f0_local2( "text_over_disabled_color", f22_local13 )
						f22_local20.text_over_disabled_pulse_color = f0_local2( "text_over_disabled_pulse_color", f22_local13 )
						if f22_local2 == GenericButtonSettings.Styles.FlatButton then
							f22_local21 = f0_local2( "background_bypass", f22_local13 )
						else
							f22_local21 = false
						end
						f22_local20.useBackgroundBypass = f22_local21
						f22_local20.disable_highlight_glow = f0_local2( "disable_highlight_glow", f22_local13 )
						f22_local16:addElement( f0_local3( f22_local20, f22_arg1 ) )
					elseif f22_local4 then
						f22_local16:addElement( f0_local4( {
							margin = f0_local2( "content_margin", f22_local13 ),
							width = f0_local2( "content_width", f22_local13 ),
							yOffset = f0_local2( "y_offset", f22_local13 ),
							negativeColor = f0_local2( "negative_color", f22_local13 )
						}, f22_arg1 ) )
					end
					local f22_local20 = function ( f29_arg0, f29_arg1 )
						local f29_local0 = ""
						if f29_arg0.properties.desc_text then
							if type( f29_arg0.properties.desc_text ) == "string" then
								f29_local0 = f29_arg0.properties.desc_text
							elseif type( f29_arg0.properties.desc_text ) == "function" then
								f29_local0 = f29_arg0.properties:desc_text( f29_arg1 )
								assert( type( f29_local0 ) == "string" )
							end
						end
						f29_arg0:dispatchEventToRoot( {
							name = "set_button_info_text",
							text = f29_local0,
							immediate = true
						} )
					end
					
					self:registerEventHandler( "button_over", function ( element, event )
						f22_local20( element, event )
						if element.properties.button_over_func then
							element.properties:button_over_func( event )
						end
						if f22_local10 and not f22_local6 then
							element:processEvent( {
								name = "show_arrows"
							} )
						end
					end )
					self:registerEventHandler( "button_up", function ( element, event )
						if element.properties.button_up_func then
							element.properties:button_up_func( event )
						end
						if f22_local10 and not f22_local6 then
							element:processEvent( {
								name = "hide_arrows"
							} )
						end
					end )
					self:registerEventHandler( "button_action", function ( element, event )
						if Engine.IsPC() and not event.noRefocus and not element:isClosed() and not element:isInFocus() then
							element:dispatchEventToRoot( {
								name = "lose_focus",
								controller = event.controller,
								immediate = true
							} )
							element:processEvent( {
								name = "gain_focus",
								controller = event.controller,
								immediate = true
							} )
						end
						if f22_local4 then
							element:processEvent( {
								name = "toggle_checked"
							} )
						end
						if f22_local9 and not event.mouse then
							element:dispatchEventToChildren( event )
						end
						if element.properties.button_instant_action_func then
							element.properties:button_instant_action_func( event )
						end
						local f32_local0 = element.properties.button_action_func
						if not event.mouse and element.properties.buttonActionIsRightAction and element.properties.button_right_func then
							assert( element.properties.button_action_func == nil, "Should buttonActionIsRightAction and button_action_func are colliding, should not be use together" )
							f32_local0 = element.properties.button_right_func
						end
						if f32_local0 then
							local f32_local1 = element:getParent()
							if f32_local1.genericListAction then
								f32_local1 = element:getParent()
								f32_local1:genericListAction( event )
							end
							if element.properties.delay and element.properties.delay > 0 then
								f32_local1 = event
								local f32_local2 = function ( f33_arg0, f33_arg1 )
									f32_local0( f33_arg0, f32_local1 )
									f33_arg0:processEvent( {
										name = "content_refresh"
									} )
									f33_arg0:registerEventHandler( "delayed_action", nil )
									local f33_local0 = Engine.GetLuiRoot()
									assert( f33_local0 )
									f33_local0.flowManager:UnblockInputForDelayedMenuAction()
								end
								
								element:addElement( LUI.UITimer.new( element.properties.delay, "delayed_action", nil, true ) )
								element:registerEventHandler( "delayed_action", f32_local2 )
								local f32_local3 = Engine.GetLuiRoot()
								assert( f32_local3 )
								f32_local3.flowManager:BlockInputForDelayedMenuAction()
								event.handled = true
							else
								f32_local1 = nil
								if element.properties.button_display_func and element.properties.valueActionAudio then
									f32_local1 = element.properties.button_display_func()
								end
								f32_local0( element, event )
								if f32_local1 ~= nil then
									if f32_local1 ~= element.properties.button_display_func() then
										if element.actionSFX or element.properties.buttonActionIsRightAction then
											local f32_local3 = Engine.PlaySound
											local f32_local4 = element.actionSFX
											if not f32_local4 then
												f32_local4 = CoD.SFX.MenuAccept
											end
											f32_local3( f32_local4 )
										end
									else
										Engine.PlaySound( CoD.SFX.DenySelect )
									end
								end
								element:processEvent( {
									name = "content_refresh"
								} )
								event.handled = true
							end
						end
					end )
					self.properties.button_over_disable_func = f22_arg1.button_over_disable_func
					self:registerEventHandler( "button_over_disable", function ( element, event )
						f22_local20( element, event )
						if element.properties.button_over_disable_func then
							element.properties:button_over_disable_func( event )
						end
						if f22_local10 and not f22_local6 then
							element:processEvent( {
								name = "hide_arrows"
							} )
						end
					end )
					self:registerEventHandler( "lose_focus", function ( element, event )
						LUI.UIElement.loseFocus( element, event )
						if element.disabled then
							element:processEvent( {
								name = "button_disable",
								dispatchChildren = true
							} )
						else
							local f35_local0 = element.m_ignoreMouseFocus
							if f35_local0 then
								f35_local0 = event.focusType == FocusType.MouseOver
							end
							if not f35_local0 then
								element:processEvent( {
									name = "button_up",
									dispatchChildren = true
								} )
							end
						end
					end )
					local f22_local21 = function ( f36_arg0, f36_arg1 )
						local f36_local0 = nil
						if f36_arg1 ~= nil then
							f36_local0 = f36_arg1
						else
							f36_local0 = 14
						end
						if Engine.IsRightToLeftLanguage() then
							f36_arg0.leftAnchor = true
							f36_arg0.left = f36_local0
						else
							f36_arg0.rightAnchor = true
							f36_arg0.right = -f36_local0
						end
						return f36_arg0
					end
					
					if f22_arg1.canShowRestricted then
						local f22_local22 = LUI.UIImage.new()
						f22_local22:registerAnimationState( "default", f22_local21( {
							topAnchor = false,
							bottomAnchor = false,
							leftAnchor = false,
							rightAnchor = false,
							width = 20,
							height = 20,
							material = RegisterMaterial( CoD.Material.RestrictedIcon ),
							alpha = 0
						}, 28 ) )
						f22_local22:registerAnimationState( "visible", {
							alpha = 1
						} )
						f22_local22:animateToState( "default" )
						self:addElement( f22_local22 )
						f22_local22:registerEventHandler( "update_restricted", function ( element, event )
							local f37_local0 = "default"
							if event.isRestricted then
								f37_local0 = "visible"
							end
							element:animateToState( f37_local0, 0 )
						end )
					end
					if f22_arg1.customIcon ~= nil then
						local f22_local22 = f22_arg1.customIcon
						local f22_local23 = f22_local22.size or 24
						local f22_local24 = f22_local22.material
						local f22_local25 = f22_local22.offset
						local f22_local26 = f22_local22.initVisible
						local f22_local27 = LUI.UIImage.new()
						local f22_local28 = {
							topAnchor = false,
							bottomAnchor = false,
							leftAnchor = false,
							rightAnchor = false,
							width = f22_local23,
							height = f22_local23,
							material = RegisterMaterial( f22_local24 ),
							alpha = 0
						}
						f22_local21( f22_local28, f22_local25 )
						f22_local27:registerAnimationState( "default", f22_local28 )
						f22_local27:registerAnimationState( "visible", {
							alpha = 1
						} )
						f22_local27:animateToState( "default" )
						self:addElement( f22_local27 )
						f22_local27:registerEventHandler( "update_custom_icon", function ( element, event )
							local f38_local0 = "default"
							if event.isVisible then
								f38_local0 = "visible"
							end
							element:animateToState( f38_local0, 0 )
						end )
						if f22_local26 then
							f22_local27:animateToState( "visible" )
						end
					end
					if f22_arg1.showNewSticker or f22_arg1.shouldShowNewStoreSticker then
						self.newSticker = LUI.NewSticker.new( f22_local21( CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.None ) ), f22_arg1.newStickerMode )
						self:addElement( self.newSticker )
						if f22_arg1.newStickerUpdateFunction ~= nil then
							self.newSticker:registerEventHandler( "update_new_sticker", f22_arg1.newStickerUpdateFunction )
							f22_arg1.newStickerUpdateFunction( self.newSticker )
						end
					end
					if f22_arg1.canShowLocked or f22_arg1.showLockOnDisable then
						if f22_arg1.showLockOnDisable then
							f22_arg1.allowDisabledAction = true
						end
						local f22_local22 = 16
						local f22_local23 = LUI.UIImage.new()
						f22_local23:registerAnimationState( "default", f22_local21( {
							topAnchor = false,
							bottomAnchor = false,
							leftAnchor = false,
							rightAnchor = false,
							width = f22_local22,
							height = f22_local22,
							material = RegisterMaterial( CoD.Material.LockedIcon ),
							alpha = 0
						} ) )
						f22_local23:registerAnimationState( "visible", {
							alpha = 1
						} )
						f22_local23:animateToState( "default" )
						self:addElement( f22_local23 )
						local f22_local25 = nil
						if f22_arg1.lockedExtraInfoString then
							f22_local25 = LUI.UIText.new()
							f22_local25:registerAnimationState( "default", f22_local21( {
								topAnchor = false,
								bottomAnchor = false,
								leftAnchor = false,
								rightAnchor = false,
								width = 200,
								height = ButtonLabelFont.Height * LUI.UIGenericButton.fontScale,
								alignment = LUI.Alignment.Right,
								color = f22_local19.text_default_color,
								material = RegisterMaterial( CoD.Material.LockedIcon ),
								alpha = 0,
								font = ButtonLabelFont.Font
							}, 40 ) )
							f22_local25:registerAnimationState( "visible", {
								alpha = 1,
								color = f22_local19.text_default_color
							} )
							f22_local25:registerAnimationState( "focused", {
								alpha = 1,
								color = f22_local19.text_lock_color
							} )
							f22_local25:animateToState( "default" )
							f22_local25:setText( f22_arg1.lockedExtraInfoString )
							self:addElement( f22_local25 )
						end
						if f22_arg1.showLockOnDisable then
							local f22_local26 = function ( f39_arg0, f39_arg1 )
								f39_arg0:animateToState( "visible", 0 )
							end
							
							local f22_local27 = function ( f40_arg0, f40_arg1 )
								f40_arg0:animateToState( "default", 0 )
							end
							
							f22_local23:registerEventHandler( "button_disable", f22_local26 )
							f22_local23:registerEventHandler( "button_over_disable", f22_local26 )
							f22_local23:registerEventHandler( "button_over", f22_local27 )
							f22_local23:registerEventHandler( "button_up", f22_local27 )
							if f22_local25 then
								local f22_local28 = function ( f41_arg0, f41_arg1 )
									f41_arg0:animateToState( "focused", 0 )
								end
								
								f22_local25:registerEventHandler( "button_disable", f22_local26 )
								f22_local25:registerEventHandler( "button_over_disable", f22_local28 )
								f22_local25:registerEventHandler( "button_over", f22_local27 )
								f22_local25:registerEventHandler( "button_up", f22_local27 )
							end
						else
							local f22_local26 = function ( f42_arg0, f42_arg1 )
								local f42_local0 = "default"
								if f42_arg1.isLocked then
									f42_local0 = "visible"
								end
								f42_arg0:animateToState( f42_local0, 0 )
							end
							
							f22_local23:registerEventHandler( "update_lock", f22_local26 )
							if f22_local25 then
								f22_local25:registerEventHandler( "update_lock", f22_local26 )
							end
						end
					end
					if f22_arg1.xpScale ~= nil and f22_arg1.xpScale > 1 then
						local f22_local22 = nil
						if Engine.IsRightToLeftLanguage() then
							f22_local22 = CoD.CreateState( -115, nil, nil, nil, CoD.AnchorTypes.None )
						else
							f22_local22 = CoD.CreateState( 80, nil, nil, nil, CoD.AnchorTypes.None )
						end
						f22_local22.width = 30
						f22_local22.height = 30
						if f22_arg1.xpScale == 2 then
							f22_local22.material = RegisterMaterial( "ui_reward_small_double_xp" )
						elseif f22_arg1.xpScale == 4 then
							f22_local22.material = RegisterMaterial( "ui_reward_small_quad_xp" )
						end
						local f22_local23 = LUI.UIImage.new( f22_local22 )
						self:addElement( f22_local23 )
						self.doubleXpElement = f22_local23
					end
					return self
				end
			end
			f22_local18 = not f0_local2( "force_disable_action_button", f22_local13 )
		end
	end
	f22_local19 = 0
end

LUI.MenuBuilder.registerType( "UIGenericButton", LUI.UIGenericButton.new )
LockTable( _M )
