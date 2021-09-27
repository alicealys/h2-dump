local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( "Registering " .. _NAME )
LUI.H1MenuTab = InheritFrom( LUI.UIElement )
LUI.H1MenuTab.Colors = {
	ButtonHighlight = Colors.h1.light_grey,
	ButtonSelected = Colors.h1.light_grey,
	ButtonAvailable = Colors.h1.light_grey,
	ButtonDisabled = Colors.h1.dark_grey,
	ButtonDisabledHighlight = Colors.h1.medium_grey
}
LUI.H1MenuTab.Materials = {
	ButtonActive = RegisterMaterial( "h2_tabs_states_active" ),
	ButtonAvailable = RegisterMaterial( "h2_tabs_states_normal" ),
	ButtonDisabled = RegisterMaterial( "h1_tabs_states_disable" ),
	ButtonDisabledHighlight = RegisterMaterial( "h1_tabs_states_disable_hover" ),
	Background = RegisterMaterial( "h2_tabs_bg" )
}
LUI.H1MenuTab.Alphas = {
	Normal = 1,
	Hover = 1,
	Selected = 1,
	Disabled = 1,
	GlowMin = 0.6,
	GlowMax = 1
}
LUI.H1MenuTab.Time = {
	Expansion = 1500,
	Contraction = 1500
}
LUI.H1MenuTab.left = GenericMenuDims.menu_left
LUI.H1MenuTab.right = GenericMenuDims.menu_right_standard
LUI.H1MenuTab.width = LUI.H1MenuTab.right - LUI.H1MenuTab.left
LUI.H1MenuTab.shoulderButtonWidth = 100
LUI.H1MenuTab.shoulderButtonTextWidth = 50
LUI.H1MenuTab.arrowHOffset = 60
LUI.H1MenuTab.arrowHOffsetTextButton = 36
LUI.H1MenuTab.arrowBoxSize = 12
LUI.H1MenuTab.tabTextHeight = 10
f0_local0 = Engine.GetCurrentLanguage()
if f0_local0 == CoD.Language.Russian or f0_local0 == CoD.Language.Russian_partial or f0_local0 == CoD.Language.Arabic or f0_local0 == CoD.Language.Korean or f0_local0 == CoD.Language.Japanese_full or f0_local0 == CoD.Language.Japanese_partial or f0_local0 == CoD.Language.Traditional_chinese or f0_local0 == CoD.Language.Simplified_chinese then
	LUI.H1MenuTab.tabTextHeight = 14
end
LUI.H1MenuTab.tabBackgroundTopOffset = 7.5
LUI.H1MenuTab.tabBackgroundHeight = LUI.H1MenuTab.tabTextHeight * 1.8
LUI.H1MenuTab.tabTextTopOffset = -LUI.H1MenuTab.tabTextHeight - (LUI.H1MenuTab.tabBackgroundHeight - LUI.H1MenuTab.tabTextHeight) / 2
LUI.H1MenuTab.tabTextFont = CoD.TextSettings.BodyFont.Font
LUI.H1MenuTab.tabChangeBarsTop = 30
LUI.H1MenuTab.tabChangeHeight = 12
LUI.H1MenuTab.tabChangeTopOffsetClickable = 5
LUI.H1MenuTab.tabChangeHeightClickable = LUI.H1MenuTab.tabBackgroundHeight + 3
LUI.H1MenuTab.tabChangeHoldingElementHeight = LUI.H1MenuTab.tabChangeBarsTop + LUI.H1MenuTab.tabChangeHeightClickable
LUI.H1MenuTab.tabChangeSpacing = 0
LUI.H1MenuTab.tabChangeButtonHScale = 1.14
LUI.H1MenuTab.glowXScale = 1
LUI.H1MenuTab.glowYScale = 1
function WrapTabIndex( f1_arg0, f1_arg1, f1_arg2 )
	assert( math.abs( f1_arg1 ) < f1_arg2.tabCount )
	local f1_local0 = f1_arg0 + f1_arg1
	while f1_local0 ~= f1_arg0 do
		if f1_arg2.tabCount < f1_local0 then
			f1_local0 = f1_local0 - f1_arg2.tabCount
		end
		if f1_local0 < 1 then
			f1_local0 = f1_local0 + f1_arg2.tabCount
		end
		if f1_arg2.isTabLockedfunc and f1_arg2.isTabLockedfunc( f1_local0 ) then
			f1_local0 = f1_local0 + f1_arg1
		end
		return f1_local0
	end
	return f1_local0
end

f0_local1 = function ( f2_arg0, f2_arg1 )
	if Engine.IsGamepadEnabled() ~= f2_arg0.previousIsGamepad or Engine.IsPS4Controller() ~= f2_arg0.previousIsPS4Ctrl then
		f2_arg0:Refresh()
	end
end

f0_local2 = "false"
local f0_local3 = false
function AddTabSelectButton( f3_arg0, f3_arg1, f3_arg2, f3_arg3 )
	local f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7 = nil
	local f3_local8 = Engine.IsConsoleGame()
	if not f3_local8 then
		f3_local8 = Engine.IsGamepadEnabled()
	end
	local f3_local9
	if f3_local8 then
		f3_local9 = f3_arg3.arrowHOffset
		if not f3_local9 then
		
		else
			if f3_arg1 == "left" then
				f3_local4 = f3_arg3.shoulderButtonWidth
				f3_local7 = f3_local9 - f3_arg3.arrowBoxSize / 2
				if Engine.IsVita( f3_arg3.exclusiveController ) then
					f3_local1 = ButtonMap.button_left_trigger
				else
					local f3_local10 = Engine.GetDvarBool( "cg_IsUsingAZERTY" )
					if f3_local10 ~= nil and f3_local10 == true then
						f3_local1 = ButtonMap.button_left_trigger
					else
						f3_local1 = ButtonMap.button_shoulderl
					end
				end
				f3_local3 = 0
				f3_local7 = f3_local7 + f3_arg3.arrowBoxSize
				f3_local5 = CoD.CreateState( f3_local7, f3_arg3.arrowBoxSize / 2, nil, nil, CoD.AnchorTypes.TopLeft )
				f3_local6 = -1
			elseif f3_arg1 == "right" then
				f3_local0 = f3_arg3.width - f3_arg3.shoulderButtonWidth
				f3_local4 = f3_arg3.shoulderButtonWidth
				f3_local7 = -f3_local9 - f3_arg3.arrowBoxSize / 2
				if Engine.IsVita( f3_arg3.exclusiveController ) then
					f3_local1 = ButtonMap.button_right_trigger
				else
					f3_local1 = ButtonMap.button_shoulderr
				end
				if f3_local8 then
					f3_local3 = f3_arg3.shoulderButtonWidth - f3_arg3.shoulderButtonTextWidth
				else
					f3_local3 = 0
				end
				f3_local5 = CoD.CreateState( f3_local7, f3_arg3.arrowBoxSize / 2, nil, nil, CoD.AnchorTypes.TopRight )
				f3_local6 = 1
			else
				assert( false, "AddTabSelectButton(side) : side should be "right" or "left"." )
				return {}
			end
			f3_local5.material = RegisterMaterial( "h1_deco_option_scrollbar_arrows" )
			local f3_local10 = f3_arg3.arrowBoxSize
			local self
			if f3_arg1 == "left" then
				self = -1
				if not self then
				
				else
					f3_local5.width = f3_local10 * self
					f3_local5.height = f3_arg3.arrowBoxSize
					f3_local5.alpha = 0.5
					f3_local5.red = 1
					f3_local5.green = 1
					f3_local5.blue = 1
					if not f3_arg2 then
						f3_local5.alpha = 0.25
					end
					if f3_local8 then
						f3_local2 = f3_local1.string
					else
						f3_local2 = f3_local1.keyboard_string
					end
					f3_local10 = CoD.CreateState( f3_local0, nil, nil, nil, CoD.AnchorTypes.TopLeft )
					f3_local10.width = f3_local4
					f3_local10.height = CoD.TextSettings.TitleFontSmall.Height
					self = LUI.UIButton.new( f3_local10 )
					self.id = "button_change_tab_id_" .. f3_arg1
					self.requireFocusType = FocusType.MouseOver
					self:registerEventHandler( "button_action", function ( element, event )
						local f9_local0 = TryChangeIndex( f3_arg0, f3_arg3, f3_local6, true )
						f9_local0( element, event )
						UPVAL3 = f3_arg1
					end )
					local f3_local12 = 0.9
					local self = LUI.UIImage.new( f3_local5 )
					self.id = "tab_select_arrow_id_" .. f3_arg1
					local self = self
					local f3_local15 = self.registerAnimationState
					local f3_local16 = "buttonOver"
					local f3_local17 = {
						topAnchor = true
					}
					local f3_local18
					if f3_arg1 == "left" then
						f3_local18 = true
					else
						f3_local18 = false
					end
					f3_local17.leftAnchor = f3_local18
					f3_local18
					if f3_arg1 == "right" then
						f3_local18 = true
					else
						f3_local18 = false
					end
					f3_local17.rightAnchor = f3_local18
					f3_local17.red = 1
					f3_local17.green = 1
					f3_local17.blue = 1
					f3_local17.alpha = 1
					f3_local17.left = f3_local7
					f3_local17.top = f3_arg3.arrowBoxSize / 2
					f3_local17.width = f3_local5.width
					f3_local17.height = f3_local5.height
					f3_local15( self, f3_local16, f3_local17 )
					self = self
					f3_local15 = self.registerAnimationState
					f3_local16 = "pulse"
					f3_local17 = {
						topAnchor = true
					}
					f3_local18
					if f3_arg1 == "left" then
						f3_local18 = true
					else
						f3_local18 = false
					end
					f3_local17.leftAnchor = f3_local18
					f3_local18
					if f3_arg1 == "right" then
						f3_local18 = true
					else
						f3_local18 = false
					end
					f3_local17.rightAnchor = f3_local18
					f3_local17.red = 0.86
					f3_local17.green = 0.81
					f3_local17.blue = 0.34
					f3_local17.alpha = 1
					f3_local17.left = f3_local7
					f3_local17.top = f3_arg3.arrowBoxSize / 2
					f3_local17.width = f3_local5.width * f3_local12
					f3_local17.height = f3_local5.height * f3_local12
					f3_local15( self, f3_local16, f3_local17 )
					self:registerEventHandler( "button_over", MBh.AnimateToState( "buttonOver" ) )
					self:registerEventHandler( "button_up", MBh.AnimateToState( "default" ) )
					self:addElement( self )
					if f0_local2 == f3_arg1 then
						self:animateInSequence( {
							{
								"buttonOver",
								0
							},
							{
								"pulse",
								100
							},
							{
								f0_local3 and "buttonOver" or "default",
								200
							}
						} )
					end
					f3_local15 = CoD.CreateState( f3_local3, nil, nil, nil, CoD.AnchorTypes.TopLeft )
					if f3_local8 then
						self = -7
						if not self then
						
						else
							f3_local15.top = self
							f3_local15.width = f3_arg3.shoulderButtonTextWidth
							if f3_local8 then
								self = CoD.TextSettings.TitleFontMediumLarge.Height
								if not self then
								
								else
									f3_local15.height = self
									f3_local15.alignment = LUI.Alignment.Center
									if f3_local8 then
										self = CoD.TextSettings.TitleFontMediumLarge.Font
										if not self then
										
										else
											f3_local15.font = self
											if not f3_arg2 then
												f3_local15.alpha = 0.5
											end
											self = nil
											if f3_local8 then
												self = LUI.UIText.new( f3_local15 )
												self:setText( Engine.ToUpperCase( Engine.Localize( f3_local2 ) ) )
											else
												self = LUI.UIButtonText.new( f3_local15, Engine.ToUpperCase( Engine.Localize( f3_local2 ) ), f3_arg1 == "right", f3_arg2 )
											end
											self.id = "button_change_act_text_id_" .. f3_arg1
											self.requireFocusType = FocusType.MouseOver
											if f0_local2 == f3_arg1 and not f3_local8 then
												self:processEvent( {
													name = "pulse",
													mouse = f0_local3
												} )
											end
											self:addElement( self )
											return self
										end
									end
									self = CoD.TextSettings.TitleFontMediumLarge.Font
								end
							end
							self = LUI.UIButtonText.height
						end
					end
					self = 2
				end
			end
			self = 1
		end
	end
	f3_local9 = f3_arg3.arrowHOffsetTextButton
end

LUI.H1MenuTab.RemoveNewState = function ( f4_arg0, f4_arg1 )
	local f4_local0 = f4_arg0:getChildById( "tab_change_tab_id" )
	local f4_local1 = f4_local0:getChildById( "tab_change_tab_button_id_" .. f4_arg1 )
	local f4_local2 = f4_local1:getChildById( "tab_new_icon" )
	if f4_local2 then
		f4_local2:close()
	end
end

function CreateBarElement( f5_arg0, f5_arg1, f5_arg2, f5_arg3, f5_arg4 )
	local f5_local0 = LUI.H1MenuTab.Colors.ButtonAvailable
	local f5_local1 = LUI.H1MenuTab.Alphas.Normal
	local f5_local2 = LUI.H1MenuTab.Materials.ButtonAvailable
	local f5_local3 = 1
	local f5_local4 = f5_arg4.activeIndex == f5_arg1
	local f5_local5 = false
	if f5_arg4.isTabLockedfunc then
		f5_local5 = f5_arg4.isTabLockedfunc( f5_arg1 )
	end
	if f5_local4 then
		f5_local0 = LUI.H1MenuTab.Colors.ButtonSelected
		f5_local1 = LUI.H1MenuTab.Alphas.Selected
		f5_local2 = LUI.H1MenuTab.Materials.ButtonActive
		f5_local3 = 5
	elseif f5_local5 then
		f5_local0 = LUI.H1MenuTab.Colors.ButtonDisabled
		f5_local1 = LUI.H1MenuTab.Alphas.Disabled
		f5_local2 = LUI.H1MenuTab.Materials.ButtonDisabled
	end
	local f5_local6 = f5_arg4.tabChangeTopOffsetClickable
	local f5_local7 = nill
	f5_local6 = REG24 and f5_arg4.tabChangeTopOffsetClickable or LUI.H1MenuTab.tabChangeTopOffsetClickable
	f5_local7 = CoD.CreateState( f5_arg2, 0, nil, nil, CoD.AnchorTypes.TopLeft )
	f5_local7.width = f5_arg3
	f5_local7.top = f5_local6
	local self = f5_arg4.tabChangeHeightClickable
	if not self then
		self = LUI.H1MenuTab.tabChangeHeightClickable
	end
	f5_local7.height = self
	self = LUI.UIButton.new( f5_local7 )
	if f5_local5 then
		self.disabled = true
	end
	self:registerEventHandler( "button_action", TryChangeIndex( f5_arg0, f5_arg4, f5_arg1 - f5_arg4.activeIndex ) )
	self.id = "tab_change_tab_button_id_" .. f5_arg1
	self.requireFocusType = FocusType.MouseOver
	self:setPriority( f5_local3 )
	if f5_arg4.tabHasNewFunc and f5_arg4.tabHasNewFunc( f5_arg1 ) then
		local f5_local9 = CoD.CreateState( -15, 5, nil, nil, CoD.AnchorTypes.TopRight )
		f5_local9.width = 12.85
		f5_local9.height = 10
		f5_local9.material = RegisterMaterial( CoD.Material.NewStickerSP )
		local self = LUI.UIImage.new( f5_local9 )
		self.id = "tab_new_icon"
		self:addElement( self )
	end
	local f5_local9 = CoD.CreateState( 0, 0, nil, nil, CoD.AnchorTypes.TopLeft )
	f5_local9.top = -f5_local6
	f5_local9.width = f5_local7.width * LUI.H1MenuTab.tabChangeButtonHScale
	f5_local9.left = (f5_local7.width - f5_local9.width) / 2
	f5_local9.height = f5_arg4.tabChangeHeight
	f5_local9.color = f5_local0
	f5_local9.material = f5_local2
	f5_local9.alpha = f5_local1
	local self = LUI.UIImage.new( f5_local9 )
	if f5_local5 then
		self.disabled = true
		self:registerAnimationState( "buttonOverDisable", {
			material = LUI.H1MenuTab.Materials.ButtonDisabledHighlight,
			alpha = LUI.H1MenuTab.Alphas.Hover
		} )
		self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "buttonOverDisable", 200 ) )
		self:registerEventHandler( "button_disable", MBh.AnimateToState( "default", 200 ) )
	else
		self:registerAnimationState( "buttonOver", {
			material = LUI.H1MenuTab.Materials.ButtonAvailable,
			alpha = LUI.H1MenuTab.Alphas.Hover
		} )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "buttonOver", 200 ) )
		self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 200 ) )
	end
	self.id = "tab_change_tab_button_image_id_" .. f5_arg1
	self.requireFocusType = FocusType.MouseOver
	self:makeNotFocusable()
	if f5_local4 then
		f5_local9.alpha = LUI.H1MenuTab.Alphas.GlowMax
		local self = LUI.UIImage.new( f5_local9 )
		f5_local9.top = f5_local9.top + (f5_local9.height - f5_local9.height * LUI.H1MenuTab.glowYScale) / 2
		f5_local9.left = f5_local9.left + (f5_local9.width - f5_local9.width * LUI.H1MenuTab.glowXScale) / 2
		f5_local9.width = f5_local9.width * LUI.H1MenuTab.glowXScale
		f5_local9.height = f5_local9.height * LUI.H1MenuTab.glowYScale
		f5_local9.alpha = LUI.H1MenuTab.Alphas.GlowMin
		self:registerAnimationState( "expanded", f5_local9 )
		self:registerEventHandler( "menu_create", function ( element )
			element:animateInLoop( {
				{
					"expanded",
					LUI.H1MenuTab.Time.Expansion,
					true,
					true
				},
				{
					"default",
					LUI.H1MenuTab.Time.Contraction,
					true,
					true
				}
			} )
		end )
		self:addElement( self )
	end
	self:addElement( self )
	if f5_arg4.underTabTextFunc then
		local self = CoD.CreateState( nil, LUI.H1MenuTab.tabTextTopOffset, nil, nil, CoD.AnchorTypes.BottomLeft )
		self.height = LUI.H1MenuTab.tabTextHeight
		self.width = f5_arg3 + 3
		self.font = LUI.H1MenuTab.tabTextFont
		self.color = f5_local0
		self.alignment = LUI.Alignment.Center
		local self = LUI.UIText.new( self )
		self:setText( Engine.ToUpperCase( Engine.Localize( f5_arg4.underTabTextFunc( f5_arg1 ) ) ) )
		if f5_local5 then
			self:registerAnimationState( "buttonOver", {
				color = LUI.H1MenuTab.Colors.ButtonDisabledHighlight
			} )
			self:registerEventHandler( "button_over_disable", MBh.AnimateToState( "buttonOver", 200 ) )
			self:registerEventHandler( "button_disable", MBh.AnimateToState( "default", 200 ) )
		else
			self:registerAnimationState( "buttonOver", {
				color = LUI.H1MenuTab.Colors.ButtonHighlight
			} )
			self:registerEventHandler( "button_over", MBh.AnimateToState( "buttonOver", 200 ) )
			self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 200 ) )
		end
		self:addElement( self )
	end
	return self
end

function CreateTabSelectBarElements( f6_arg0, f6_arg1 )
	local f6_local0 = f6_arg1.tabCount
	local f6_local1 = f6_arg1.tabChangeSpacing and f6_arg1.tabChangeSpacing or LUI.H1MenuTab.tabChangeSpacing
	local f6_local2 = (f6_arg1.width - (f6_local0 - 1) * f6_local1) / f6_local0
	local f6_local3 = CoD.CreateState( nil, f6_arg1.tabChangeBarsTop and f6_arg1.tabChangeBarsTop or LUI.H1MenuTab.tabChangeBarsTop, f6_arg1.width, nil, CoD.AnchorTypes.TopLeft )
	f6_local3.height = f6_arg1.tabChangeHeight
	local self = LUI.UIElement.new( f6_local3 )
	self.id = "tab_change_tab_id"
	self:makeNotFocusable()
	local f6_local5 = CoD.CreateState( 0, LUI.H1MenuTab.tabBackgroundTopOffset, 0, nil, CoD.AnchorTypes.TopLeftRight )
	f6_local5.material = LUI.H1MenuTab.Materials.Background
	f6_local5.height = LUI.H1MenuTab.tabBackgroundHeight
	self:addElement( LUI.UIImage.new( f6_local5 ) )
	for f6_local6 = 1, f6_local0, 1 do
		self:addElement( CreateBarElement( f6_arg0, f6_local6, (f6_local6 - 1) * (f6_local1 + f6_local2), f6_local2, f6_arg1 ) )
	end
	return self
end

function isPreviousDisabled( f7_arg0, f7_arg1 )
	local f7_local0 = f7_arg0.previousDisabled
	if not f7_local0 then
		f7_local0 = f7_arg1 and f7_arg0.previousDisabledWhenController
	end
	return f7_local0
end

function isNextDisabled( f8_arg0, f8_arg1 )
	local f8_local0 = f8_arg0.nextDisabled
	if not f8_local0 then
		f8_local0 = f8_arg1 and f8_arg0.nextDisabledWhenController
	end
	return f8_local0
end

function ConstructMenuTab( f9_arg0, f9_arg1 )
	local f9_local0 = Engine.IsConsoleGame()
	if not f9_local0 then
		f9_local0 = Engine.IsGamepadEnabled()
	end
	local f9_local1 = AddTabSelectButton( f9_arg0, "left", not isPreviousDisabled( f9_arg1, f9_local0 ), f9_arg1 )
	f9_arg0:addElement( f9_local1 )
	if isPreviousDisabled( f9_arg1, f9_local0 ) then
		f9_local1.disabled = true
	end
	local f9_local2 = AddTabSelectButton( f9_arg0, "right", not isNextDisabled( f9_arg1, f9_local0 ), f9_arg1 )
	UPVAL0 = "false"
	UPVAL1 = false
	f9_arg0:addElement( f9_local2 )
	if isNextDisabled( f9_arg1, f9_local0 ) then
		f9_local2.disabled = true
	end
	f9_arg0:addElement( CreateTabSelectBarElements( f9_arg0, f9_arg1 ) )
	if f9_arg1.title then
		local self = nil
		if type( f9_arg1.title ) == "function" then
			self = Engine.ToUpperCase( Engine.Localize( f9_arg1.title( f9_arg1.activeIndex ) ) )
		else
			self = Engine.ToUpperCase( Engine.Localize( f9_arg1.title ) )
		end
		local f9_local4 = CoD.CreateState( nil, 2, nil, nil, CoD.AnchorTypes.TopLeft )
		f9_local4.width = f9_arg1.width
		f9_local4.height = CoD.TextSettings.BodyFont24.Height
		f9_local4.alignment = LUI.Alignment.Center
		f9_local4.font = CoD.TextSettings.H2TitleFont.Font
		f9_local4.color = Colors.white
		local self = LUI.UIText.new( f9_local4 )
		self:setText( self )
		self.id = "tab_select_title_text_id"
		f9_arg0:addElement( self )
	end
	if not isPreviousDisabled( f9_arg1, f9_local0 ) then
		local self = LUI.UIBindButton.new()
		self.id = "tab_select_previous_act"
		local f9_local4 = Engine.GetDvarBool( "cg_IsUsingAZERTY" )
		if f9_local4 ~= nil and f9_local4 == true then
			self:registerEventHandler( "button_left_trigger", TryChangeIndex( f9_arg0, f9_arg1, -1, true ) )
		else
			self:registerEventHandler( "button_shoulderl", TryChangeIndex( f9_arg0, f9_arg1, -1, true ) )
		end
		if not f9_local0 and f9_arg1.enableRightLeftNavigation then
			self:registerEventHandler( "button_left", TryChangeIndex( f9_arg0, f9_arg1, -1, true ) )
		end
		f9_arg0:addElement( self )
	end
	if not isNextDisabled( f9_arg1, f9_local0 ) then
		local self = LUI.UIBindButton.new()
		self.id = "tab_select_next_act"
		self:registerEventHandler( "button_shoulderr", TryChangeIndex( f9_arg0, f9_arg1, 1, true ) )
		if not f9_local0 and f9_arg1.enableRightLeftNavigation then
			self:registerEventHandler( "button_right", TryChangeIndex( f9_arg0, f9_arg1, 1, true ) )
		end
		f9_arg0:addElement( self )
	end
	if Engine.IsPC() then
		f9_arg0:registerEventHandler( "onControllerChange", f0_local1 )
		f9_arg0:registerEventHandler( "popup_inactive", LUI.H1MenuTab.Refresh )
		f9_arg0.previousIsGamepad = Engine.IsGamepadEnabled()
		f9_arg0.previousIsPS4Ctrl = Engine.IsPS4Controller()
	end
end

function TryChangeIndex( f10_arg0, f10_arg1, f10_arg2, f10_arg3 )
	return function ( f78_arg0, f78_arg1 )
		if f10_arg1.tabChangeLockedFunc and not f10_arg1.tabChangeLockedFunc( f78_arg0 ) then
			return 
		end
		local f78_local0 = WrapTabIndex( f10_arg1.activeIndex, f10_arg2, f10_arg1 )
		if f10_arg3 then
			UPVAL3 = f10_arg2 and "left" or "right"
		else
			UPVAL3 = false
		end
		UPVAL4 = f78_arg1.mouse
		if not f10_arg1.skipChangeTab then
			f10_arg0:ChangeIndex( f78_local0 )
		end
		f10_arg1.clickTabBtnAction( f78_arg0, f78_arg1, f78_local0 )
	end
	
end

LUI.H1MenuTab.ChangeIndex = function ( f11_arg0, f11_arg1 )
	assert( f11_arg0.props )
	assert( f11_arg1 > 0 )
	assert( f11_arg1 <= f11_arg0.props.tabCount )
	f11_arg0:closeChildren()
	f11_arg0.props.activeIndex = f11_arg1
	ConstructMenuTab( f11_arg0, f11_arg0.props )
end

LUI.H1MenuTab.Refresh = function ( f12_arg0 )
	assert( f12_arg0.props )
	assert( f12_arg0.props.activeIndex > 0 )
	assert( f12_arg0.props.activeIndex <= f12_arg0.props.tabCount )
	f12_arg0:closeChildren()
	ConstructMenuTab( f12_arg0, f12_arg0.props )
end

LUI.H1MenuTab.new = function ( f13_arg0 )
	assert( f13_arg0 )
	assert( f13_arg0.tabCount )
	assert( f13_arg0.clickTabBtnAction, "Require function clickTabBtnAction(self, event, index) to know what action doing tab!" )
	assert( f13_arg0.exclusiveController )
	if not f13_arg0 then
		f13_arg0 = {}
	end
	local f13_local0 = LUI.DeepCopy( f13_arg0 )
	f13_local0.width = f13_local0.width and f13_local0.width or LUI.H1MenuTab.width
	f13_local0.shoulderButtonWidth = f13_local0.shoulderButtonWidth and f13_local0.shoulderButtonWidth or LUI.H1MenuTab.shoulderButtonWidth
	f13_local0.shoulderButtonTextWidth = f13_local0.shoulderButtonTextWidth and f13_local0.shoulderButtonTextWidth or LUI.H1MenuTab.shoulderButtonTextWidth
	f13_local0.arrowHOffset = f13_local0.arrowHOffset and f13_local0.arrowHOffset or LUI.H1MenuTab.arrowHOffset
	f13_local0.arrowHOffsetTextButton = f13_local0.arrowHOffsetTextButton and f13_local0.arrowHOffsetTextButton or LUI.H1MenuTab.arrowHOffsetTextButton
	f13_local0.arrowBoxSize = f13_local0.arrowBoxSize and f13_local0.arrowBoxSize or LUI.H1MenuTab.arrowBoxSize
	f13_local0.tabChangeHeight = f13_local0.tabChangeHeight and f13_local0.tabChangeHeight or LUI.H1MenuTab.tabChangeHeight
	f13_local0.activeIndex = f13_local0.activeIndex and f13_local0.activeIndex or 1
	local f13_local1 = CoD.CreateState( nil, f13_local0.top, nil, nil, CoD.AnchorTypes.TopLeft )
	f13_local1.height = f13_local0.tabChangeHoldingElementHeight and f13_local0.tabChangeHoldingElementHeight or LUI.H1MenuTab.tabChangeHoldingElementHeight
	f13_local1.width = f13_local0.width
	local self = LUI.UIElement.new( f13_local1 )
	self:setClass( LUI.H1MenuTab )
	self.id = f13_arg0.id
	self.props = f13_local0
	ConstructMenuTab( self, f13_local0 )
	return self
end

LUI.H1MenuTab.build = function ( f14_arg0, f14_arg1, f14_arg2 )
	return LUI.H1MenuTab.new( f14_arg1 )
end

LUI.MenuBuilder.registerType( "h1_menu_tab", LUI.H1MenuTab.build )
LockTable( _M )
