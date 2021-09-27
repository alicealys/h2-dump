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

local f0_local3 = function ( f3_arg0, f3_arg1 )
	local f3_local0 = f3_arg0.width or 160
	local f3_local1 = f3_arg0.margin or 0
	local f3_local2 = f3_arg0.useText
	local f3_local3 = f3_arg0.yOffset or 0
	local f3_local4 = f3_arg0.useBackground
	local f3_local5 = f3_arg0.useBackgroundBypass
	local f3_local6 = f3_arg0.backgroundMarginTop or 0
	local f3_local7 = f3_arg0.backgroundMarginBottom or 0
	local f3_local8 = f3_arg0.useArrows
	local f3_local9 = f3_arg0.toggleClick
	local f3_local10 = f3_arg0.arrowsMargin
	local f3_local11 = f3_arg0.useSlider
	local f3_local12 = f3_arg0.sliderWidth
	local f3_local13 = f3_arg0.sliderHeight
	local f3_local14 = f3_arg0.useCap
	local f3_local15 = f3_arg0.useCap and f3_arg0.capWidth or 0
	local f3_local16 = f3_arg0.useInput
	local f3_local17 = f3_arg0.field_edited_func or nil
	local f3_local18 = f3_arg0.max_length or 20
	local f3_local19 = f3_arg0.password_field or false
	local f3_local20 = f3_arg0.text_alignment
	if not f3_local20 then
		f3_local20 = LUI.Alignment.Left
	end
	local f3_local21 = f3_arg0.keyboard_type
	if not f3_local21 then
		f3_local21 = CoD.KeyboardInputTypes.Normal
	end
	local f3_local22 = f3_arg0.field_name or "Placeholder Field Name"
	local f3_local23
	if f3_arg0.disable_highlight_glow == nil then
		f3_local23 = true
	else
		f3_local23 = not f3_arg0.disable_highlight_glow
	end
	local self = LUI.UIElement.new()
	self.id = "button_value"
	self.properties = f3_arg1 or {}
	local f3_local25 = {
		topAnchor = true,
		bottomAnchor = true,
		top = 0,
		bottom = 0,
		width = f3_local0
	}
	if f3_arg0.align == LUI.Alignment.Left then
		f3_local25.rightAnchor = true
		f3_local25.right = -f3_local1
	else
		f3_local25.leftAnchor = true
		f3_local25.left = f3_local1
	end
	self:registerAnimationState( "default", f3_local25 )
	self:animateToState( "default" )
	if f3_local4 then
		local self = LUI.UIImage.new()
		self.id = "background"
		self:registerAnimationState( "default", {
			material = RegisterMaterial( "white" ),
			red = 0,
			green = 0,
			blue = 0,
			topAnchor = true,
			bottomAnchor = true,
			leftAnchor = true,
			rightAnchor = true,
			top = f3_local6,
			bottom = -f3_local7,
			left = 0,
			right = -f3_local15,
			alpha = 0
		} )
		self:animateToState( "default" )
		self:registerAnimationState( "focus", {
			alpha = 1
		} )
		self:registerEventHandler( "button_up", MBh.AnimateToState( "default" ) )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "focus" ) )
		self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "default" ) )
		self:addElement( self )
	end
	if f3_local14 then
		local self = LUI.UIImage.new()
		self.id = "cap"
		self:registerAnimationState( "default", {
			material = RegisterMaterial( "box_angle_rtcap" ),
			red = 0,
			green = 0,
			blue = 0,
			topAnchor = true,
			bottomAnchor = true,
			leftAnchor = false,
			rightAnchor = true,
			top = f3_local6,
			bottom = -f3_local7,
			left = -f3_local15,
			right = 0,
			alpha = 0
		} )
		self:animateToState( "default" )
		self:registerAnimationState( "focus", {
			alpha = 1
		} )
		self:registerEventHandler( "button_up", MBh.AnimateToState( "default" ) )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "focus" ) )
		self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "default" ) )
		self:addElement( self )
	end
	local self = function ( f21_arg0, f21_arg1, f21_arg2 )
		local f21_local0 = self:getParent()
		f21_local0 = f21_local0:getParent()
		f21_local0 = f21_local0:getParent()
		if f21_local0.genericListAction then
			f21_local0 = self:getParent()
			f21_local0 = f21_local0:getParent()
			f21_local0 = f21_local0:getParent()
			f21_local0:genericListAction( f21_arg1 )
		end
		f21_local0 = self.properties.button_display_func( f21_arg0 )
		if f21_arg2 then
			f21_arg2( self, f21_arg1 )
		end
		local f21_local1 = self.properties.button_display_func( f21_arg0 )
		if f3_local11 then
			if f21_local0 ~= f21_local1 then
				Engine.PlaySound( CoD.SFX.AdjustSlider )
			else
				Engine.PlaySound( CoD.SFX.DenySelect )
			end
		elseif f21_local0 ~= f21_local1 then
			Engine.PlaySound( CoD.SFX.OtherAdjust )
		else
			Engine.PlaySound( CoD.SFX.DenySelect )
		end
		self:processEvent( {
			name = "content_refresh"
		} )
	end
	
	local f3_local27 = function ( f22_arg0, f22_arg1 )
		self( f22_arg0, f22_arg1, self.properties.button_left_func )
		f22_arg0:processEvent( {
			name = "content_arrow_left"
		} )
	end
	
	local f3_local28 = function ( f23_arg0, f23_arg1 )
		self( f23_arg0, f23_arg1, self.properties.button_right_func )
		f23_arg0:processEvent( {
			name = "content_arrow_right"
		} )
	end
	
	if f3_local8 then
		self:addElement( MBh.CreateArrowButtonFactory( "left", true, self, f3_local10, f3_local27 ) )
		self:addElement( MBh.CreateArrowButtonFactory( "right", false, self, f3_local10, f3_local28 ) )
		if f3_arg1.button_left_func then
			self.properties.button_left_func = f3_arg1.button_left_func
		end
		if f3_arg1.button_right_func then
			self.properties.button_right_func = f3_arg1.button_right_func
		end
		if f3_local9 and not Engine.IsConsoleGame() then
			local f3_local29 = 21 + f3_local10
			local self = 2
			local self = LUI.UIButton.new( {
				topAnchor = true,
				bottomAnchor = true,
				leftAnchor = true,
				rightAnchor = true,
				top = self,
				bottom = -self,
				left = f3_local29,
				right = -f3_local29
			} )
			self.m_requireFocusType = FocusType.MouseOver
			self:registerEventHandler( "button_action", f3_local28 )
			self.shareFocus = true
			self:addElement( self )
		end
	end
	if f3_local2 then
		local f3_local29 = f3_local3
		local self = f0_local0
		local self = LUI.UIText.new()
		self.id = "content_text_label"
		self:setText( "Placeholder" )
		local self = self
		local self = self.registerAnimationState
		local f3_local34 = "default"
		local f3_local35 = {}
		local f3_local36 = f3_arg0.labelAlign
		if not f3_local36 then
			f3_local36 = LUI.Alignment.Center
		end
		f3_local35.alignment = f3_local36
		f3_local35.font = self.Font
		f3_local35.topAnchor = false
		f3_local35.bottomAnchor = false
		f3_local35.leftAnchor = false
		f3_local35.rightAnchor = false
		f3_local35.left = -f3_local0 / 2
		f3_local35.right = f3_local0 / 2
		f3_local35.top = f3_local29 - self.Height * LUI.UIGenericButton.fontScale / 2
		f3_local35.bottom = f3_local29 + self.Height * LUI.UIGenericButton.fontScale / 2
		self( self, f3_local34, f3_local35 )
		if f3_local4 or f3_local5 then
			self = f3_arg0.content_focus_color
			if not self then
			
			else
				if f3_local23 then
					self = LUI.GlowState.Orange
					if not self then
					
					else
						self:animateToState( "default" )
						self:registerAnimationState( "unfocus", CoD.ColorizeState( f3_arg0.content_default_color, {
							glow = LUI.GlowState.None
						} ) )
						self:animateToState( "unfocus" )
						self:registerAnimationState( "focus", CoD.ColorizeState( self, {
							glow = self
						} ) )
						self:registerAnimationState( "locked", CoD.ColorizeState( f3_arg0.content_lock_color, {
							glow = LUI.GlowState.None
						} ) )
						self:registerAnimationState( "disabled", CoD.ColorizeState( f3_arg0.text_disabled_color, {
							glow = LUI.GlowState.None
						} ) )
						self:registerAnimationState( "over_disabled", CoD.ColorizeState( f3_arg0.text_over_disabled_pulse_color, {
							glow = LUI.GlowState.None
						} ) )
						self:registerEventHandler( "button_over", MBh.AnimateToState( "focus" ) )
						self:registerEventHandler( "button_up", MBh.AnimateToState( "unfocus" ) )
						self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "disabled" ) )
						self:registerEventHandler( "button_disable", MBh.AnimateToState( "disabled" ) )
						if not f3_local4 then
							self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "over_disabled" ) )
						end
						f3_local34 = function ( f24_arg0, f24_arg1 )
							if f24_arg0.properties and f24_arg0.properties.button_display_func then
								if not f24_arg1 then
									f24_arg1 = {}
								end
								local f24_local0 = f24_arg0.properties:button_display_func( f24_arg1 )
								if f24_local0 then
									f24_arg0:setText( f24_local0 )
									if f3_arg1.maxContentWidth then
										local f24_local1 = ButtonLabelFont.Height * LUI.UIGenericButton.fontScale
										local f24_local2, f24_local3, f24_local4 = GetTextDimensions( f24_local0, self.Font, self.Height * LUI.UIGenericButton.fontScale )
										if f24_arg0.properties.maxContentWidth < f24_local4 then
											local f24_local5 = self:getAnimationStateInC( "default" )
											local f24_local6 = f3_arg1.maxContentWidth / f24_local4
											f24_local5.top = f3_local29 - self.Height * LUI.UIGenericButton.fontScale / 2 * f24_local6
											f24_local5.bottom = f3_local29 + self.Height * LUI.UIGenericButton.fontScale / 2 * f24_local6
											self:registerAnimationState( "default", f24_local5 )
											self:animateToState( "default" )
											self.isScale = true
										elseif self.isScale then
											local f24_local5 = self:getAnimationStateInC( "default" )
											f24_local5.top = f3_local29 - self.Height * LUI.UIGenericButton.fontScale / 2
											f24_local5.bottom = f3_local29 + self.Height * LUI.UIGenericButton.fontScale / 2
											self:registerAnimationState( "default", f24_local5 )
											self:animateToState( "default" )
											self.isScale = false
										end
									end
								end
							end
						end
						
						self:registerEventHandler( "content_refresh", f3_local34 )
						self:registerEventHandler( "menu_create", f3_local34 )
						if f3_arg1.button_display_func then
							self.properties = f3_arg1 or {}
							self.properties.button_display_func = f3_arg1.button_display_func
							f3_local34( self, {
								exclusiveController = f3_arg1.exclusiveController
							} )
						end
						self:addElement( self )
					end
				end
				self = LUI.GlowState.None
			end
		end
		self = f3_arg0.content_focus_color_without_bg
	end
	if f3_local11 then
		local f3_local29 = f3_local3 - 2
		local self = LUI.UIElement.new()
		self.id = "slider"
		self:registerAnimationState( "default", {
			topAnchor = false,
			bottomAnchor = false,
			leftAnchor = false,
			rightAnchor = false,
			top = f3_local29 - f3_local13 / 2,
			bottom = f3_local29 + f3_local13 / 2,
			left = -f3_local12 / 2,
			right = f3_local12 / 2
		} )
		self:animateToState( "default" )
		local self = CoD.CreateState( -4, -4, 4, 4, CoD.AnchorTypes.All )
		self.material = RegisterMaterial( "h2_bg_option_slider_outline_glow" )
		self.alpha = 0
		local self = LUI.UIImage.new( self )
		self.id = "backgroundGlow"
		self:registerAnimationState( "buttonOver", {
			alpha = 1
		} )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "buttonOver" ) )
		self:registerEventHandler( "button_up", MBh.AnimateToState( "default" ) )
		self:addElement( self )
		local self = LUI.UIImage.new()
		self.id = "background"
		self:setHandleMouseButton( not Engine.IsConsoleGame() )
		self:registerAnimationState( "default", {
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
		self:registerAnimationState( "buttonOver", {
			alpha = 0.8
		} )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "buttonOver" ) )
		self:animateToState( "default" )
		self:addElement( self )
		local f3_local34 = 1
		local f3_local35 = f3_local12 - (1 + f3_local34) * 2
		local f3_local36 = CoD.CreateState( f3_local34 + 1, f3_local34 + 1, nil, -f3_local34 - 1, CoD.AnchorTypes.TopBottomLeft )
		f3_local36.width = 0
		local self = LUI.UIElement.new( f3_local36 )
		self.id = "fill"
		self:addElement( self )
		local f3_local38 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f3_local38.material = RegisterMaterial( "h1_bg_option_slider_bar" )
		f3_local38.color = Colors.h1.medium_grey
		local self = LUI.UIImage.new( f3_local38 )
		self.id = "fillImage"
		self:registerAnimationState( "button_over", CoD.ColorizeState( f3_arg0.content_focus_color ) )
		self:registerAnimationState( "button_up", {
			color = Colors.h1.medium_grey
		} )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "button_over" ) )
		self:registerEventHandler( "button_up", function ( element, event )
			local f25_local0 = MBh.AnimateToState( "button_up" )
			f25_local0( element, event )
			self:animateToState( "default" )
		end )
		self:addElement( self )
		local f3_local40 = function ( f26_arg0, f26_arg1 )
			if f26_arg0.properties and f26_arg0.properties.button_display_func then
				local f26_local0 = f26_arg0.properties.button_display_func()
				if f26_local0 == nil then
					f26_local0 = 0
				end
				f3_local36.width = f3_local35 * f26_local0
				self:registerAnimationState( "default", f3_local36 )
				self:animateToState( "default", 0 )
			end
		end
		
		if not Engine.IsConsoleGame() then
			local f3_local41 = function ( f27_arg0, f27_arg1 )
				local f27_local0, f27_local1 = nil
				if f27_arg1.rootName ~= nil then
					local f27_local2, f27_local3 = ProjectRootCoordinate( f27_arg1.rootName, f27_arg1.x, f27_arg1.y )
					f27_local1 = f27_local3
					f27_local0 = f27_local2
				elseif f27_arg1.name == "leftmousedown" then
					f27_local0 = f27_arg1.x
					f27_local1 = f27_arg1.y
				end
				if not f27_arg0.disabled and f27_arg0.m_leftMouseDown ~= nil and f27_local0 ~= nil and f27_local1 ~= nil then
					local f27_local2 = f3_local35
					local f27_local3, f27_local4, f27_local5, f27_local6 = f27_arg0:getRect()
					local f27_local7, f27_local8 = f27_arg1.root:pixelsToUnits( f27_local3, f27_local4 )
					f27_local4 = f27_local8
					f27_local7 = (f27_arg1.root:pixelsToUnits( f27_local0, f27_local1 ) - f27_local7 + 1 + f3_local34) / f27_local2
					f27_local8 = f3_arg1.button_display_func()
					local f27_local9
					if f27_local8 < f27_local7 then
						f27_local9 = self.properties.button_right_func
						if not f27_local9 then
						
						else
							local f27_local10 = f27_local8
							local f27_local11 = nil
							while (f27_local7 - f27_local8) * (f27_local7 - f27_local10) > 0 do
								f27_local9( self, f27_arg1 )
								f27_local11 = f27_local10
								f27_local10 = f3_arg1.button_display_func()
								if f27_local11 == f27_local10 then
									break
								end
							end
							if f27_local7 < f27_local8 and f27_local7 > 0 then
								self.properties:button_right_func( f27_arg1 )
							elseif f27_local10 ~= 1 then
								self.properties:button_left_func( f27_arg1 )
							end
							Engine.PlaySound( CoD.SFX.MenuAccept )
							self:processEvent( {
								name = "content_refresh"
							}, f27_arg1 )
						end
					end
					f27_local9 = self.properties.button_left_func
				end
			end
			
			if f3_arg1.button_display_func then
				self:registerEventHandler( "mousemove", f3_local41 )
				self:registerEventHandler( "leftmousedown", f3_local41 )
				self:registerEventHandler( "button_disable", function ( element, event )
					element.disabled = true
				end )
				self:registerEventHandler( "button_up", function ( element, event )
					self:animateToState( "default" )
					element.disabled = false
				end )
			end
		end
		self:registerEventHandler( "content_refresh", f3_local40 )
		self:registerEventHandler( "menu_create", f3_local40 )
		if f3_arg1.button_display_func then
			self.properties = f3_arg1 or {}
			self.properties.slider_width = f3_local12
			self.properties.button_display_func = f3_arg1.button_display_func
			f3_local40( self, {} )
		end
		self:addElement( self )
	end
	if f3_local16 then
		local self = LUI.MenuBuilder.buildItems( {
			type = "generic_input_field",
			properties = {
				textLeft = 0,
				textAlign = LUI.Alignment.Center,
				field_edited_func = f3_local17,
				max_length = f3_local18,
				password_field = f3_local19,
				verify_string = false,
				filter_profanity = false,
				help_value = "",
				field_name = f3_local22,
				keyboard_type = f3_local21,
				text_alignment = f3_local20
			}
		}, {} )
		self.id = "input"
		local self = self
		local self = self.registerAnimationState
		local self = "default"
		local f3_local34 = {}
		local f3_local35 = f3_arg0.labelAlign
		if not f3_local35 then
			f3_local35 = LUI.Alignment.Center
		end
		f3_local34.alignment = f3_local35
		f3_local34.font = f0_local1.Font
		f3_local34.topAnchor = false
		f3_local34.bottomAnchor = false
		f3_local34.leftAnchor = false
		f3_local34.rightAnchor = false
		f3_local34.left = -f3_local0 / 2
		f3_local34.right = f3_local0 / 2
		f3_local34.top = f3_local3 - f0_local1.Height / 2
		f3_local34.bottom = f3_local3 + f0_local1.Height / 2
		f3_local34.alpha = 1
		self( self, self, f3_local34 )
		self:animateToState( "default" )
		self:registerEventHandler( "button_over", function ( element, event )
			MBh.AnimateToState( "focus" )
			element:processEvent( {
				name = "colorize",
				red = f3_arg0.content_focus_color.r,
				green = f3_arg0.content_focus_color.g,
				blue = f3_arg0.content_focus_color.b
			} )
		end )
		self:registerEventHandler( "button_up", function ( element, event )
			MBh.AnimateToState( "default" )
			element:processEvent( {
				name = "colorize",
				red = f3_arg0.content_default_color.r,
				green = f3_arg0.content_default_color.g,
				blue = f3_arg0.content_default_color.b
			} )
			element:processEvent( {
				name = "edit_unfocus"
			} )
		end )
		self:addElement( self )
	end
	return self
end

local f0_local4 = function ( f4_arg0, f4_arg1 )
	local f4_local0 = f4_arg0.margin or 0
	local f4_local1 = f4_arg0.width or 50
	local f4_local2 = (f4_arg0.yOffset or 0) - 2
	local f4_local3 = -f4_local0 - f4_local1 / 2
	local f4_local4 = 10
	if Engine.IsRightToLeftLanguage() then
		f4_local3 = f4_local3 * -1
	end
	local self = LUI.UIImage.new()
	self.id = "checkbox"
	self.properties = {
		isVisible = true
	}
	local f4_local6 = "box_empty"
	local f4_local7 = "box_check"
	if f4_arg0.negativeColor then
		f4_local6 = "dest_alpha_zero"
		f4_local7 = CoD.Material.RestrictedIcon
	end
	local f4_local8 = {
		material = RegisterMaterial( f4_local6 ),
		topAnchor = false,
		bottomAnchor = false,
		top = f4_local2 - f4_local4,
		bottom = f4_local2 + f4_local4,
		left = f4_local3 - f4_local4,
		right = f4_local3 + f4_local4,
		alpha = 1
	}
	if Engine.IsRightToLeftLanguage() then
		f4_local8.leftAnchor = true
		f4_local8.rightAnchor = false
	else
		f4_local8.leftAnchor = false
		f4_local8.rightAnchor = true
	end
	self:registerAnimationState( "default", f4_local8 )
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
	local self = LUI.UIImage.new()
	self.id = "checkmark"
	self.properties = {
		isChecked = false
	}
	self:registerAnimationState( "default", {
		material = RegisterMaterial( f4_local7 ),
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
	self:animateToState( "default" )
	self:registerAnimationState( "checked", {
		alpha = 1
	} )
	self:registerEventHandler( "toggle_checked", function ( element, event )
		event.name = "set_checked"
		event.checkBox = not element.properties.isChecked
		element:processEvent( event )
	end )
	self:registerEventHandler( "set_checked", function ( element, event )
		element.properties.isChecked = true
		if event.checkBox ~= nil then
			element.properties.isChecked = event.checkBox
		end
		element:animateToState( element.properties.isChecked and "checked" or "default", 0 )
	end )
	self:addElement( self )
	return self
end

function CommonButtonBackgroundFactory( f5_arg0 )
	return LUI.DefaultButtonBackground.new( f5_arg0.rarity )
end

function addButtonBorder( f6_arg0 )
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

LUI.UIGenericButton.new = function ( f7_arg0, f7_arg1, f7_arg2 )
	if not f7_arg1 then
		f7_arg1 = {}
	end
	local f7_local0 = f7_arg1.childNum
	if not f7_arg2 then
		f7_arg2 = f7_local0 or 0
	end
	local f7_local1 = nil
	local f7_local2 = f7_arg1.style
	if not f7_local2 then
		f7_local2 = GenericButtonSettings.Styles.GradientButton
	end
	local f7_local3 = f7_arg1.variant
	if not f7_local3 then
		f7_local3 = GenericButtonSettings.Variants.Plain
	end
	local f7_local4 = f7_local3 == GenericButtonSettings.Variants.Checkbox
	local f7_local5 = f7_local3 == GenericButtonSettings.Variants.Plain
	local f7_local6 = f7_local3 == GenericButtonSettings.Variants.Info
	local f7_local7 = f7_local3 == GenericButtonSettings.Variants.Select
	local f7_local8 = f7_local3 == GenericButtonSettings.Variants.Slider
	local f7_local9 = f7_local3 == GenericButtonSettings.Variants.Input
	local f7_local10 = f7_local8 or f7_local7 or f7_local6 or f7_local9
	local f7_local11 = false
	local f7_local12 = f7_arg1.fade_in
	if not f7_local12 then
		f7_local12 = GenericMenuAnimationSettings.ButtonFadeInStartFade
	end
	if f7_local2 == GenericButtonSettings.Styles.FlatButton then
		f7_local1 = f7_arg1.substyle or GenericButtonSettings.Styles.FlatButton.SubStyles.Default
	elseif f7_local2 == GenericButtonSettings.Styles.GlassButton then
		f7_local1 = f7_arg1.substyle or GenericButtonSettings.Styles.GlassButton.SubStyles.Default
	end
	if not f7_local1 then
		f7_local1 = {}
	end
	local f7_local13 = {
		style = f7_local2,
		substyle = f7_local1,
		itemProps = f7_arg1
	}
	local self = LUI.UIButton.new()
	self.id = f7_arg1.id or "UIGenericButton"
	self.properties = self.properties or {}
	local f7_local15 = self
	local self = self.registerAnimationState
	local f7_local17 = "default"
	local f7_local18 = {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = false,
		top = 0,
		bottom = f0_local2( "height", f7_local13 )
	}
	local f7_local19
	if f7_local2 == GenericButtonSettings.Styles.GradientButton then
		f7_local19 = -f0_local2( "focus_animation_distance", f7_local13 )
		if not f7_local19 then
		
		else
			f7_local18.right = f7_local19
			f7_local18.left = 0
			self( f7_local15, f7_local17, f7_local18 )
			self:animateToState( "default" )
			if f7_arg1.muteAction then
				self:clearActionSFX()
			end
			self = LUI.UIElement.new()
			self.id = "button"
			self:addElement( self )
			f7_local15 = not f0_local2( "disable_height_guard", f7_local13 )
			if f7_local11 then
				f7_local18 = self
				f7_local17 = self.registerAnimationState
				f7_local19 = "default"
				local self = {
					leftAnchor = true,
					rightAnchor = false,
					topAnchor = true,
					bottomAnchor = not f7_local15,
					top = 0
				}
				local f7_local21
				if f7_local15 then
					f7_local21 = f0_local2( "height", f7_local13 )
					if not f7_local21 then
					
					else
						self.bottom = f7_local21
						self.left = -f0_local2( "lt_cap_width", f7_local13 ) - f0_local2( "rt_cap_width", f7_local13 )
						self.right = 0
						f7_local17( f7_local18, f7_local19, self )
						f7_local18 = self
						f7_local17 = self.registerAnimationState
						f7_local19 = "ready"
						self = {
							leftAnchor = true,
							rightAnchor = true,
							topAnchor = true,
							bottomAnchor = not f7_local15,
							left = 0,
							right = 0,
							top = 0
						}
						f7_local21
						if f7_local15 then
							f7_local21 = f0_local2( "height", f7_local13 )
							if not f7_local21 then
							
							else
								self.bottom = f7_local21
								f7_local17( f7_local18, f7_local19, self )
								f7_local18 = MBh.AnimateSequence( {
									{
										"default",
										0,
										false,
										false
									},
									{
										"ready",
										f0_local2( "slide_in_min_duration", f7_local13 ) + f0_local2( "slide_in_duration_step", f7_local13 ) * f7_arg2,
										false,
										true
									}
								} )
								f7_local18( self, {} )
								if f7_arg2 == 1 then
									Engine.PlaySound( CoD.SFX.ChangeScreen )
								end
							end
						end
						f7_local21 = 0
					end
				end
				f7_local21 = 0
			elseif f0_local2( "fadeIn", f7_local13 ) then
				f7_local17 = {
					leftAnchor = true,
					rightAnchor = true,
					topAnchor = true,
					bottomAnchor = not f7_local15,
					left = 0,
					right = 0,
					top = 0
				}
				if f7_local15 then
					f7_local18 = f0_local2( "height", f7_local13 )
					if not f7_local18 then
					
					else
						f7_local17.bottom = f7_local18
						f7_local17.alpha = 1
						self:registerAnimationState( "default", f7_local17 )
						f7_local18 = f7_local17
						f7_local18.alpha = 0
						self:registerAnimationState( "hide", f7_local18 )
						self:registerAnimationState( "wait", {} )
						self:animateInSequence( {
							{
								"hide",
								0
							},
							{
								"wait",
								f7_local12 + (f7_arg0.listIndex or 0) * GenericMenuAnimationSettings.ButtonFadeInDelay
							},
							{
								"default",
								GenericMenuAnimationSettings.ButtonFadeInDuration
							}
						} )
					end
				end
				f7_local18 = 0
			else
				f7_local18 = self
				f7_local17 = self.registerAnimationState
				f7_local19 = "default"
				local self = {
					leftAnchor = true,
					rightAnchor = true,
					topAnchor = true,
					bottomAnchor = not f7_local15,
					left = 0,
					right = 0,
					top = 0
				}
				local f7_local21
				if f7_local15 then
					f7_local21 = f0_local2( "height", f7_local13 )
					if not f7_local21 then
					
					else
						self.bottom = f7_local21
						f7_local17( f7_local18, f7_local19, self )
						self:animateToState( "default" )
					end
				end
				f7_local21 = 0
			end
			f7_local17 = {
				style = f7_local2,
				substyle = f7_local1,
				itemProps = f7_arg1,
				useActionButton = f7_local6 or f7_local5 or f7_local9
			}
			f7_local18 = assert
			f7_local19
			if f0_local2( "force_disable_action_button", f7_local13 ) then
				f7_local19 = not f0_local2( "force_enable_action_button", f7_local13 )
			else
				f7_local19 = true
			end
			f7_local18( f7_local19, "Trying to force enable and force disable the button prompt." )
			f7_local18 = f7_local17.useActionButton
			if f7_local18 then
				f7_local18 = not f0_local2( "force_disable_action_button", f7_local13 )
			end
			f7_local17.useActionButton = f7_local18
			f7_local18 = f7_local17.useActionButton
			if not f7_local18 then
				f7_local18 = f0_local2( "force_enable_action_button", f7_local13 )
			end
			f7_local17.useActionButton = f7_local18
			f7_local18 = f7_local17.useActionButton
			if f7_local18 then
				f7_local18 = Engine.IsConsoleGame()
				if not f7_local18 then
					f7_local18 = Engine.IsGamepadEnabled()
				end
			end
			f7_local17.useActionButton = f7_local18
			if not f7_local5 and not f7_local6 and not f7_local9 then
				f7_local18 = f0_local2( "force_enable_action_button", f7_local13 )
				if f7_local18 then
				
				else
					f7_local17.extendOnFocus = f7_local18
					f7_local17.actionButtonMargin = f0_local2( "action_button_margin", f7_local13 )
					f7_local17.rarity = f7_arg1.rarity
					self:addElement( CommonButtonBackgroundFactory( f7_local17 ) )
					f7_local19 = {
						yOffset = f0_local2( "y_offset", f7_local13 ),
						text_focus_color = f0_local2( "text_focus_color", f7_local13 ),
						text_lock_color = f0_local2( "text_lock_color", f7_local13 ),
						text_default_color = f0_local2( "text_default_color", f7_local13 ),
						text_disabled_color = f0_local2( "text_disabled_color", f7_local13 ),
						text_over_disabled_color = f0_local2( "text_over_disabled_color", f7_local13 ),
						text_over_disabled_pulse_color = f0_local2( "text_over_disabled_pulse_color", f7_local13 ),
						overDisabledAnimationDuration = f0_local2( "over_disabled_animation_duration", f7_local13 ),
						pinned_color = f0_local2( "pinned_color", f7_local13 )
					}
					if f7_local10 then
						f7_local19.padding = f0_local2( "text_padding_with_content", f7_local13 )
						f7_local19.paddingFocus = f0_local2( "text_padding_focus_with_content", f7_local13 )
						f7_local19.align = f0_local2( "text_align_with_content", f7_local13 )
					else
						f7_local19.padding = f0_local2( "text_padding_without_content", f7_local13 )
						f7_local19.paddingFocus = f0_local2( "text_padding_focus_without_content", f7_local13 )
						f7_local19.align = f0_local2( "text_align_without_content", f7_local13 )
					end
					f7_local19.lockedHighlight = f0_local2( "lockedHighlight", f7_local13 )
					f7_local19.align = LUI.AdjustAlignmentForLanguage( f7_local19.align )
					f7_local19.additional_handlers = {
						change_button_text = function ( f55_arg0, f55_arg1 )
							if f55_arg1.button_text ~= nil then
								f55_arg0:setText( f55_arg1.button_text )
							end
						end
					}
					if f7_local2 == GenericButtonSettings.Styles.FlatButton or f7_local2 == GenericButtonSettings.Styles.GlassButton then
						LUI.InheritCopy( f7_local19.additional_handlers, {
							button_pin = function ( f56_arg0, f56_arg1 )
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
								f56_arg0:animateToState( "pinned" )
							end,
							button_unpin = function ( f57_arg0, f57_arg1 )
								if not f57_arg1.graphicsOnly then
									if self.disabled then
										return 
									end
									f57_arg0:animateToState( "default" )
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
					if f7_arg1.hasSublist then
						local self = LUI.UIImage.new( {
							rightAnchor = true,
							width = 21,
							height = 13,
							right = -25,
							material = RegisterMaterial( "h1_deco_icon_mwdoublearrow" ),
							color = LUI.CacStaticLayout.imageGray
						} )
						self:registerAnimationState( "focus", {
							color = GenericButtonSettings.Common.content_focus_color
						} )
						self:registerEventHandler( "button_over", function ( element, event )
							element:animateToState( "focus" )
						end )
						self:registerEventHandler( "button_up", function ( element, event )
							element:animateToState( "default" )
						end )
						self:addElement( self )
						if f7_local19.align == LUI.Alignment.Right then
							f7_local19.padding = 51
							f7_local19.paddingFocus = f7_local19.padding
						end
					end
					self.textLabel = LUI.UIGenericButton.ButtonLabelFactory( f7_local19, f7_arg1.button_text, self, f7_arg1.textStyle, f7_arg1.maxLabelWidth )
					self.setText = function ( f60_arg0, f60_arg1 )
						self.textLabel:setText( f60_arg1 )
					end
					
					self:addElement( self.textLabel )
					if f7_local10 then
						local self = {
							align = f7_local19.align
						}
						local f7_local21
						if not f7_local8 then
							f7_local21 = not f7_local9
						else
							f7_local21 = false
						end
						self.useText = f7_local21
						self.useInput = f7_local9
						self.field_edited_func = f0_local2( "field_edited_func", f7_local13 )
						self.max_length = f0_local2( "max_length", f7_local13 )
						self.password_field = f0_local2( "password_field", f7_local13 )
						self.keyboard_type = f0_local2( "keyboard_type", f7_local13 )
						self.field_name = f0_local2( "field_name", f7_local13 )
						self.text_alignment = f0_local2( "text_alignment", f7_local13 )
						self.useBackground = false
						f7_local21
						if not f7_local6 then
							f7_local21 = not f7_local9
						else
							f7_local21 = false
						end
						self.useArrows = f7_local21
						self.toggleClick = f7_local7
						f7_local21 = f7_arg1.arrowsMargin
						if not f7_local21 then
							f7_local21 = f0_local2( "content_arrows_margin", f7_local13 )
						end
						self.arrowsMargin = f7_local21
						self.useSlider = f7_local8
						self.sliderWidth = f0_local2( "content_slider_width", f7_local13 )
						self.sliderHeight = f0_local2( "content_slider_height", f7_local13 )
						f7_local21 = self.useBackground
						if f7_local21 then
							f7_local21 = f7_local2 == GenericButtonSettings.Styles.GradientButton
						end
						self.useCap = f7_local21
						self.margin = f0_local2( "content_margin", f7_local13 )
						self.width = f0_local2( "content_width", f7_local13 )
						self.yOffset = f0_local2( "y_offset", f7_local13 )
						self.backgroundMarginTop = f0_local2( "content_background_margin_top", f7_local13 )
						self.backgroundMarginBottom = f0_local2( "content_background_margin_bottom", f7_local13 )
						self.capWidth = f0_local2( "content_cap_width", f7_local13 )
						self.labelAlign = f0_local2( "label_align", f7_local13 )
						self.text_focus_color = f0_local2( "text_focus_color", f7_local13 )
						self.content_default_color = f0_local2( "content_default_color", f7_local13 )
						self.content_lock_color = f0_local2( "content_lock_color", f7_local13 )
						self.content_focus_color = f0_local2( "content_focus_color", f7_local13 )
						self.content_focus_color_without_bg = f0_local2( "content_focus_color_without_bg", f7_local13 )
						self.text_disabled_color = f0_local2( "text_disabled_color", f7_local13 )
						self.text_over_disabled_color = f0_local2( "text_over_disabled_color", f7_local13 )
						self.text_over_disabled_pulse_color = f0_local2( "text_over_disabled_pulse_color", f7_local13 )
						if f7_local2 == GenericButtonSettings.Styles.FlatButton then
							f7_local21 = f0_local2( "background_bypass", f7_local13 )
						else
							f7_local21 = false
						end
						self.useBackgroundBypass = f7_local21
						self.disable_highlight_glow = f0_local2( "disable_highlight_glow", f7_local13 )
						self:addElement( f0_local3( self, f7_arg1 ) )
					elseif f7_local4 then
						self:addElement( f0_local4( {
							margin = f0_local2( "content_margin", f7_local13 ),
							width = f0_local2( "content_width", f7_local13 ),
							yOffset = f0_local2( "y_offset", f7_local13 ),
							negativeColor = f0_local2( "negative_color", f7_local13 )
						}, f7_arg1 ) )
					end
					local self = function ( f61_arg0, f61_arg1 )
						local f61_local0 = ""
						if f61_arg0.properties.desc_text then
							if type( f61_arg0.properties.desc_text ) == "string" then
								f61_local0 = f61_arg0.properties.desc_text
							elseif type( f61_arg0.properties.desc_text ) == "function" then
								f61_local0 = f61_arg0.properties:desc_text( f61_arg1 )
								assert( type( f61_local0 ) == "string" )
							end
						end
						f61_arg0:dispatchEventToRoot( {
							name = "set_button_info_text",
							text = f61_local0,
							immediate = true
						} )
					end
					
					self:registerEventHandler( "button_over", function ( element, event )
						self( element, event )
						if element.properties.button_over_func then
							element.properties:button_over_func( event )
						end
						if f7_local10 and not f7_local6 then
							element:processEvent( {
								name = "show_arrows"
							} )
						end
					end )
					self:registerEventHandler( "button_up", function ( element, event )
						if element.properties.button_up_func then
							element.properties:button_up_func( event )
						end
						if f7_local10 and not f7_local6 then
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
						if f7_local4 then
							element:processEvent( {
								name = "toggle_checked"
							} )
						end
						if f7_local9 and not event.mouse then
							element:dispatchEventToChildren( event )
						end
						if element.properties.button_instant_action_func then
							element.properties:button_instant_action_func( event )
						end
						local f64_local0 = element.properties.button_action_func
						if not event.mouse and element.properties.buttonActionIsRightAction and element.properties.button_right_func then
							assert( element.properties.button_action_func == nil, "Should buttonActionIsRightAction and button_action_func are colliding, should not be use together" )
							f64_local0 = element.properties.button_right_func
						end
						if f64_local0 then
							local f64_local1 = element:getParent()
							if f64_local1.genericListAction then
								f64_local1 = element:getParent()
								f64_local1:genericListAction( event )
							end
							if element.properties.delay and element.properties.delay > 0 then
								f64_local1 = event
								local f64_local2 = function ( f6_arg0, f6_arg1 )
									f64_local0( f6_arg0, f64_local1 )
									f6_arg0:processEvent( {
										name = "content_refresh"
									} )
									f6_arg0:registerEventHandler( "delayed_action", nil )
									local f6_local0 = Engine.GetLuiRoot()
									assert( f6_local0 )
									f6_local0.flowManager:UnblockInputForDelayedMenuAction()
								end
								
								element:addElement( LUI.UITimer.new( element.properties.delay, "delayed_action", nil, true ) )
								element:registerEventHandler( "delayed_action", f64_local2 )
								local f64_local3 = Engine.GetLuiRoot()
								assert( f64_local3 )
								f64_local3.flowManager:BlockInputForDelayedMenuAction()
								event.handled = true
							else
								f64_local1 = nil
								if element.properties.button_display_func and element.properties.valueActionAudio then
									f64_local1 = element.properties.button_display_func()
								end
								f64_local0( element, event )
								if f64_local1 ~= nil then
									if f64_local1 ~= element.properties.button_display_func() then
										if element.actionSFX or element.properties.buttonActionIsRightAction then
											local f64_local3 = Engine.PlaySound
											local f64_local4 = element.actionSFX
											if not f64_local4 then
												f64_local4 = CoD.SFX.MenuAccept
											end
											f64_local3( f64_local4 )
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
					self.properties.button_over_disable_func = f7_arg1.button_over_disable_func
					self:registerEventHandler( "button_over_disable", function ( element, event )
						self( element, event )
						if element.properties.button_over_disable_func then
							element.properties:button_over_disable_func( event )
						end
						if f7_local10 and not f7_local6 then
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
							local f66_local0 = element.m_ignoreMouseFocus
							if f66_local0 then
								f66_local0 = event.focusType == FocusType.MouseOver
							end
							if not f66_local0 then
								element:processEvent( {
									name = "button_up",
									dispatchChildren = true
								} )
							end
						end
					end )
					local f7_local21 = function ( f67_arg0, f67_arg1 )
						local f67_local0 = nil
						if f67_arg1 ~= nil then
							f67_local0 = f67_arg1
						else
							f67_local0 = 14
						end
						if Engine.IsRightToLeftLanguage() then
							f67_arg0.leftAnchor = true
							f67_arg0.left = f67_local0
						else
							f67_arg0.rightAnchor = true
							f67_arg0.right = -f67_local0
						end
						return f67_arg0
					end
					
					if f7_arg1.canShowRestricted then
						local self = LUI.UIImage.new()
						self:registerAnimationState( "default", f7_local21( {
							topAnchor = false,
							bottomAnchor = false,
							leftAnchor = false,
							rightAnchor = false,
							width = 20,
							height = 20,
							material = RegisterMaterial( CoD.Material.RestrictedIcon ),
							alpha = 0
						}, 28 ) )
						self:registerAnimationState( "visible", {
							alpha = 1
						} )
						self:animateToState( "default" )
						self:addElement( self )
						self:registerEventHandler( "update_restricted", function ( element, event )
							local f68_local0 = "default"
							if event.isRestricted then
								f68_local0 = "visible"
							end
							element:animateToState( f68_local0, 0 )
						end )
					end
					if f7_arg1.customIcon ~= nil then
						local self = f7_arg1.customIcon
						local self = self.size or 24
						local f7_local24 = self.material
						local self = self.offset
						local f7_local26 = self.initVisible
						local self = LUI.UIImage.new()
						local f7_local28 = {
							topAnchor = false,
							bottomAnchor = false,
							leftAnchor = false,
							rightAnchor = false,
							width = self,
							height = self,
							material = RegisterMaterial( f7_local24 ),
							alpha = 0
						}
						f7_local21( f7_local28, self )
						self:registerAnimationState( "default", f7_local28 )
						self:registerAnimationState( "visible", {
							alpha = 1
						} )
						self:animateToState( "default" )
						self:addElement( self )
						self:registerEventHandler( "update_custom_icon", function ( element, event )
							local f69_local0 = "default"
							if event.isVisible then
								f69_local0 = "visible"
							end
							element:animateToState( f69_local0, 0 )
						end )
						if f7_local26 then
							self:animateToState( "visible" )
						end
					end
					if f7_arg1.showNewSticker or f7_arg1.shouldShowNewStoreSticker then
						self.newSticker = LUI.NewSticker.new( f7_local21( CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.None ) ), f7_arg1.newStickerMode )
						self:addElement( self.newSticker )
						if f7_arg1.newStickerUpdateFunction ~= nil then
							self.newSticker:registerEventHandler( "update_new_sticker", f7_arg1.newStickerUpdateFunction )
							f7_arg1.newStickerUpdateFunction( self.newSticker )
						end
					end
					if f7_arg1.canShowLocked or f7_arg1.showLockOnDisable then
						if f7_arg1.showLockOnDisable then
							f7_arg1.allowDisabledAction = true
						end
						local self = 16
						local self = LUI.UIImage.new()
						self:registerAnimationState( "default", f7_local21( {
							topAnchor = false,
							bottomAnchor = false,
							leftAnchor = false,
							rightAnchor = false,
							width = self,
							height = self,
							material = RegisterMaterial( CoD.Material.LockedIcon ),
							alpha = 0
						} ) )
						self:registerAnimationState( "visible", {
							alpha = 1
						} )
						self:animateToState( "default" )
						self:addElement( self )
						local self = nil
						if f7_arg1.lockedExtraInfoString then
							self = LUI.UIText.new()
							self:registerAnimationState( "default", f7_local21( {
								topAnchor = false,
								bottomAnchor = false,
								leftAnchor = false,
								rightAnchor = false,
								width = 200,
								height = ButtonLabelFont.Height * LUI.UIGenericButton.fontScale,
								alignment = LUI.Alignment.Right,
								color = f7_local19.text_default_color,
								material = RegisterMaterial( CoD.Material.LockedIcon ),
								alpha = 0,
								font = ButtonLabelFont.Font
							}, 40 ) )
							self:registerAnimationState( "visible", {
								alpha = 1,
								color = f7_local19.text_default_color
							} )
							self:registerAnimationState( "focused", {
								alpha = 1,
								color = f7_local19.text_lock_color
							} )
							self:animateToState( "default" )
							self:setText( f7_arg1.lockedExtraInfoString )
							self:addElement( self )
						end
						if f7_arg1.showLockOnDisable then
							local f7_local26 = function ( f70_arg0, f70_arg1 )
								f70_arg0:animateToState( "visible", 0 )
							end
							
							local self = function ( f71_arg0, f71_arg1 )
								f71_arg0:animateToState( "default", 0 )
							end
							
							self:registerEventHandler( "button_disable", f7_local26 )
							self:registerEventHandler( "button_over_disable", f7_local26 )
							self:registerEventHandler( "button_over", self )
							self:registerEventHandler( "button_up", self )
							if self then
								local f7_local28 = function ( f72_arg0, f72_arg1 )
									f72_arg0:animateToState( "focused", 0 )
								end
								
								self:registerEventHandler( "button_disable", f7_local26 )
								self:registerEventHandler( "button_over_disable", f7_local28 )
								self:registerEventHandler( "button_over", self )
								self:registerEventHandler( "button_up", self )
							end
						else
							local f7_local26 = function ( f73_arg0, f73_arg1 )
								local f73_local0 = "default"
								if f73_arg1.isLocked then
									f73_local0 = "visible"
								end
								f73_arg0:animateToState( f73_local0, 0 )
							end
							
							self:registerEventHandler( "update_lock", f7_local26 )
							if self then
								self:registerEventHandler( "update_lock", f7_local26 )
							end
						end
					end
					if f7_arg1.xpScale ~= nil and f7_arg1.xpScale > 1 then
						local self = nil
						if Engine.IsRightToLeftLanguage() then
							self = CoD.CreateState( -115, nil, nil, nil, CoD.AnchorTypes.None )
						else
							self = CoD.CreateState( 80, nil, nil, nil, CoD.AnchorTypes.None )
						end
						self.width = 30
						self.height = 30
						if f7_arg1.xpScale == 2 then
							self.material = RegisterMaterial( "ui_reward_small_double_xp" )
						elseif f7_arg1.xpScale == 4 then
							self.material = RegisterMaterial( "ui_reward_small_quad_xp" )
						end
						local self = LUI.UIImage.new( self )
						self:addElement( self )
						self.doubleXpElement = self
					end
					return self
				end
			end
			f7_local18 = not f0_local2( "force_disable_action_button", f7_local13 )
		end
	end
	f7_local19 = 0
end

LUI.MenuBuilder.registerType( "UIGenericButton", LUI.UIGenericButton.new )
LockTable( _M )
