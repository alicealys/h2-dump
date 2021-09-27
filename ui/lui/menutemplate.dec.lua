local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.MenuTemplate = InheritFrom( LUI.UIElement )
LUI.MenuTemplate.ListTop = GenericMenuDims.MenuStartY
LUI.MenuTemplate.ButtonStyle = GenericButtonSettings.Styles.FlatButton
LUI.MenuTemplate.spMenuOffset = GenericMenuDims.menu_top - LUI.MenuTemplate.ListTop + DesignGridDims.vert_gutter
LUI.MenuTemplate.TitleBar = {
	Width = 2,
	LeftOffset = -0.66
}
LUI.MenuTemplate.Title = {
	Top = GenericMenuDims.TitleTop
}
LUI.MenuTemplate.TitleText = {
	TopOffset = 0.66
}
LUI.MenuTemplate.AddBuildNumber = function ( f1_arg0 )
	local self = LUI.UIText.new( {
		leftAnchor = false,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = false,
		height = CoD.TextSettings.BodyFontSmall.Height,
		font = CoD.TextSettings.BodyFontSmall.Font,
		width = GenericMenuDims.menu_right_wide - GenericMenuDims.menu_left
	} )
	self:setText( Engine.GetBuildNumber() )
	self:addElement( LUI.UITimer.new( 500, "refresh_buildnumber" ) )
	self:registerEventHandler( "refresh_buildnumber", function ( element, event )
		element:setText( Engine.GetBuildNumber() )
	end )
	f1_arg0:addElement( self )
end

LUI.MenuTemplate.AddListDivider = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5 )
	
end

LUI.MenuTemplate.CreateBottomDivider = function ( f3_arg0 )
	if f3_arg0.list.bottomDivider ~= nil then
		f3_arg0.list.bottomDivider:close()
	end
	f3_arg0.list.bottomDivider = LUI.UIImage.new( {
		leftAnchor = true,
		bottomAnchor = true,
		width = 18,
		height = 0.5,
		top = H1MenuDims.spacing + 0.5,
		material = RegisterMaterial( "white" ),
		color = GenericMenuColors.title_divider,
		alpha = 0.5
	} )
end

LUI.MenuTemplate.AddBottomDividerToList = function ( f4_arg0, f4_arg1 )
	if f4_arg0.list.bottomDivider then
		if f4_arg1 then
			f4_arg1:addElement( f4_arg0.list.bottomDivider )
		else
			f4_arg0.list:addElement( f4_arg0.list.bottomDivider )
		end
	end
end

LUI.MenuTemplate.AddButton = function ( f5_arg0, f5_arg1, f5_arg2, f5_arg3, f5_arg4, f5_arg5, f5_arg6, f5_arg7 )
	assert( f5_arg0.list ~= nil )
	if not Engine.InFrontend() and Engine.GetSplitScreen() then
		f5_arg7 = true
	end
	if f5_arg7 ~= true then
		if f5_arg0.list.buttonCount == 0 then
			f5_arg0:AddListDivider( f5_arg0.menu_list_divider_top_offset )
			f5_arg0:CreateBottomDivider()
		elseif f5_arg0.list.bottomDivider and not f5_arg0.list.bottomDivider:isClosed() then
			local f5_local0 = f5_arg0.list.bottomDivider:getParent()
			f5_local0:removeElement( f5_arg0.list.bottomDivider )
		end
	end
	local f5_local0, f5_local1 = nil
	if type( f5_arg3 ) == "function" then
		f5_local0 = f5_arg3
		f5_local1 = nil
	else
		f5_local1 = f5_arg3
		f5_local0 = nil
	end
	local f5_local2 = nil
	if type( f5_arg2 ) == "function" then
		f5_local2 = f5_arg2
	elseif type( f5_arg2 ) == "string" then
		f5_local2 = function ( f53_arg0, f53_arg1 )
			LUI.FlowManager.RequestAddMenu( f53_arg0, f5_arg2, true, f53_arg1.controller, false )
		end
		
	end
	if f5_arg1 == nil then
		f5_arg1 = f5_arg6.button_text
	end
	local f5_local3 = Engine.Localize( f5_arg1 )
	if f5_arg4 == nil or f5_arg4 then
		f5_local3 = Engine.ToUpperCase( f5_local3 )
	end
	local f5_local4 = {
		style = LUI.MenuTemplate.ButtonStyle,
		button_text = f5_local3,
		text_align_without_content = LUI.Alignment.Left,
		button_action_func = f5_local2,
		exclusiveController = f5_arg0.exclusiveController
	}
	if f5_arg6 ~= nil then
		LUI.InheritCopy( f5_local4, f5_arg6 )
	end
	local f5_local5 = LUI.MenuBuilder.BuildAddChild( f5_arg0.list, {
		type = "UIGenericButton",
		id = f5_arg0.type .. "_button_" .. f5_arg0.list.buttonCount,
		disabled = f5_local1,
		disabledFunc = f5_local0,
		properties = f5_local4,
		listIndex = f5_arg0.list.buttonCount
	} )
	f5_local5.menu = f5_arg0
	f5_arg0.list.buttonCount = f5_arg0.list.buttonCount + 1
	if f5_arg7 ~= true then
		f5_arg0:AddBottomDividerToList( f5_local5 )
	end
	return f5_local5
end

LUI.MenuTemplate.AddButtonWithSubText = function ( f6_arg0, f6_arg1, f6_arg2, f6_arg3, f6_arg4, f6_arg5 )
	local f6_local0 = f6_arg0:AddButton( f6_arg1, f6_arg2, f6_arg3 )
	local f6_local1 = LUI.MenuGenericButtons.ButtonLabelFont
	local f6_local2, f6_local3, f6_local4, f6_local5 = GetTextDimensions( Engine.Localize( f6_arg1 ), f6_local1.Font, f6_local1.Height )
	local f6_local6 = CoD.TextSettings.TitleFontTiny
	local f6_local7 = LUI.MenuTemplate.ButtonStyle.text_padding_without_content + f6_local4 - f6_local2 + (f6_arg5 or 5)
	local self = LUI.UIText.new()
	self:registerAnimationState( "default", {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = false,
		left = f6_local7,
		right = 0,
		top = 10,
		height = f6_local6.Height,
		alignment = LUI.Alignment.Left,
		font = f6_local6.Font,
		color = Colors.s1.text_focused,
		alpha = 1
	} )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	self:animateToState( "default" )
	self:setText( f6_arg4 )
	f6_local0.subTextField = self
	f6_local0:addElement( self )
	return f6_local0
end

LUI.MenuTemplate.RefreshButtonDisabled = function ( f7_arg0 )
	if f7_arg0.list then
		f7_arg0.list:dispatchEventToChildren( {
			name = "refresh_disabled"
		} )
	end
end

LUI.MenuTemplate.AddSpacing = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:registerAnimationState( "default", {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		height = controller
	} )
	self:animateToState( "default" )
	menu.list:addElement( self )
end

LUI.MenuTemplate.AddHeader = function ( f9_arg0, f9_arg1 )
	assert( f9_arg0.list ~= nil )
	local f9_local0 = Engine.Localize( f9_arg1 )
	local f9_local1 = CoD.TextSettings.Font21
	local f9_local2, f9_local3, f9_local4, f9_local5 = GetTextDimensions2( f9_local0, f9_local1.Font, f9_local1.Height )
	local f9_local6 = f9_local4 - f9_local2 + 40
	local f9_local7 = CoD.CreateState( 0, 0, nil, nil, CoD.AnchorTypes.TopLeft )
	f9_local7.width = f9_local6
	f9_local7.height = f9_local1.Height + 4
	f9_local7.material = RegisterMaterial( "white" )
	f9_local7.color = {
		r = 0.21,
		g = 0.21,
		b = 0.21
	}
	local self = LUI.UIImage.new( f9_local7 )
	local f9_local9 = 12
	local f9_local10 = CoD.CreateState( 12, 3, nil, nil, CoD.AnchorTypes.TopLeft )
	f9_local10.width = f9_local9
	f9_local10.height = f9_local9
	f9_local10.material = RegisterMaterial( "h2_title_arrow" )
	f9_local10.color = {
		r = 0.36,
		g = 0.36,
		b = 0.36
	}
	self:addElement( LUI.UIImage.new( f9_local10 ) )
	local f9_local11 = CoD.CreateState( 32, 4, 0, nil, CoD.AnchorTypes.TopLeftRight )
	f9_local11.height = f9_local1.Height
	f9_local11.font = f9_local1.Font
	f9_local11.alignment = LUI.AdjustAlignmentForLanguage( LUI.Alignment.Left )
	f9_local11.color = {
		r = 0.83,
		g = 0.83,
		b = 0.83
	}
	if Engine.IsAsianLanguage() or Engine.IsRightToLeftLanguage() then
		f9_local11.top = 2
	end
	local self = LUI.UIText.new( f9_local11 )
	self:setText( f9_local0 )
	self:addElement( self )
	f9_arg0.list:addElement( self )
end

LUI.MenuTemplate.AddMenuDescription = function ( f10_arg0, f10_arg1, f10_arg2, f10_arg3 )
	local f10_local0 = f10_arg1 * LUI.ButtonDescText.Font.Height
	local f10_local1 = f10_arg3 or 26
	local self = LUI.UIElement.new( nil, {
		borderAlpha = 0.45
	} )
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = false,
		rightAnchor = true,
		height = f10_local1 * 2 + f10_local0,
		alpha = 1
	} )
	self:registerAnimationState( "hidden", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = false,
		rightAnchor = true,
		height = f10_local1 * 2 + f10_local0,
		alpha = 0
	} )
	local f10_local3 = self
	local self = self.animateToState
	local f10_local5
	if f10_arg2 then
		f10_local5 = "hidden"
		if not f10_local5 then
		
		else
			self( f10_local3, f10_local5 )
			self.visible = not f10_arg2
			self = LUI.UIElement.new()
			self:registerAnimationState( "default", {
				topAnchor = true,
				bottomAnchor = false,
				leftAnchor = true,
				rightAnchor = true,
				top = f10_local1
			} )
			self:animateToState( "default" )
			self:addElement( self )
			self:addElement( LUI.ButtonDescText.new( nil, {
				lines = f10_arg1
			} ) )
			f10_arg0.list:addElement( self )
			return self
		end
	end
	f10_local5 = "default"
end

LUI.MenuTemplate.InitScrolling = function ( f11_arg0 )
	local f11_local0 = 13
	if GameX.IsSplitscreen() then
		f11_local0 = 7
	end
	ListPaging.InitList( f11_arg0.list, f11_local0, 10, nil, nil, {
		left_offset = 50
	} )
	return f11_local0
end

LUI.MenuTemplate.InitScrollBar = function ( f12_arg0 )
	LUI.Options.InitScrollingList( f12_arg0.list )
end

LUI.MenuTemplate.AddHelp = function ( f13_arg0, f13_arg1, f13_arg2, f13_arg3, f13_arg4 )
	f13_arg1 = LUI.DeepCopy( f13_arg1 )
	assert( f13_arg0.help ~= nil )
	if f13_arg4 ~= nil then
		local f13_local0
		if f13_arg4 == true then
			f13_local0 = "left"
			if not f13_local0 then
			
			else
				f13_arg1.side = f13_local0
			end
		end
		f13_local0 = "right"
	end
	return LUI.ButtonHelperText.AddHelperTextObject( f13_arg0.help, f13_arg1, f13_arg2, f13_arg3 )
end

LUI.MenuTemplate.AddHeaderDividers = function ( f14_arg0, f14_arg1 )
	local f14_local0 = 66
	local f14_local1 = 18
	local f14_local2 = 1
	
	local headerContainer = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	f14_arg0:addElement( headerContainer )
	f14_arg0.headerContainer = headerContainer
	
	local f14_local4 = CoD.CreateState( 0, f14_local0, nil, nil, CoD.AnchorTypes.TopLeft )
	f14_local4.width = f14_local1
	f14_local4.height = f14_local2
	f14_local4.material = RegisterMaterial( "white" )
	f14_local4.color = GenericMenuColors.title_divider
	headerContainer:addElement( LUI.UIImage.new( f14_local4 ) )
	if f14_arg1 then
		local f14_local5 = CoD.CreateState( nil, f14_local0, 0, nil, CoD.AnchorTypes.TopRight )
		f14_local5.width = f14_local1
		f14_local5.height = f14_local2
		f14_local5.material = RegisterMaterial( "white" )
		f14_local5.color = GenericMenuColors.title_divider
		headerContainer:addElement( LUI.UIImage.new( f14_local5 ) )
	end
	local f14_local5 = CoD.CreateState( 25, f14_local0, -500, nil, CoD.AnchorTypes.TopLeftRight )
	f14_local5.height = f14_local2
	f14_local5.material = RegisterMaterial( "h1_ui_divider_gradient_left" )
	f14_local5.color = GenericMenuColors.title_divider
	f14_local5.alpha = 0.5
	headerContainer:addElement( LUI.UIImage.new( f14_local5 ) )
	local f14_local6 = CoD.CreateState( 218, f14_local0, nil, nil, CoD.AnchorTypes.TopLeft )
	f14_local6.width = 65
	f14_local6.height = f14_local2
	f14_local6.material = RegisterMaterial( "white" )
	f14_local6.color = GenericMenuColors.title_divider
	f14_local6.alpha = 0.35
	headerContainer:addElement( LUI.UIImage.new( f14_local6 ) )
end

LUI.MenuTemplate.OnOptions = function ( f15_arg0, f15_arg1 )
	if GameX.IsSplitscreen() then
		GameX.SetOptionState( true )
	end
	if not f15_arg0.disabled then
		if Engine.IsConsoleGame() then
			LUI.FlowManager.RequestAddMenu( f15_arg0, "console_controls", true, f15_arg1.controller, false )
		else
			LUI.FlowManager.RequestAddMenu( f15_arg0, "pc_controls", true, f15_arg1.controller, false )
		end
		Engine.PlaySound( CoD.SFX.MenuAccept )
	end
end

LUI.MenuTemplate.AddOptionsButton = function ( f16_arg0, f16_arg1 )
	if f16_arg1 then
		return f16_arg0:AddButton( "@MENU_OPTIONS", LUI.MenuTemplate.OnOptions, nil, nil, nil, {
			desc_text = Engine.Localize( "@MENU_OPTIONS_DESC" )
		} )
	else
		f16_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@MENU_OPTIONS" ),
			side = "right",
			clickable = true
		}, LUI.MenuTemplate.OnOptions )
	end
end

LUI.MenuTemplate.OnStore = function ( f17_arg0, f17_arg1 )
	Sns.OpenStoreMenu( f17_arg1.controller, f17_arg0.comScoreScreen, LUI.ComScore.StoreSource.MenuButton )
end

LUI.MenuTemplate.StoreDisabled = function ( f18_arg0 )
	if Engine.IsPS3() or Engine.IsPS4() then
		local f18_local0 = Lobby.IsInPrivateParty()
		local f18_local1 = Lobby.IsPrivatePartyHost()
		local f18_local2 = Lobby.IsPartyHostWaitingOnMembers()
		local f18_local3
		if not f18_local0 or f18_local1 then
			f18_local3 = f18_local2
		else
			f18_local3 = true
		end
		return f18_local3
	else
		
	end
end

LUI.MenuTemplate.CanShowStore = function ()
	return Engine.GetDvarBool( "ui_show_store" )
end

LUI.MenuTemplate.AddStoreButton = function ( f20_arg0, f20_arg1, f20_arg2, f20_arg3, f20_arg4 )
	if f20_arg1 == nil then
		f20_arg1 = f20_arg0.OnStore
	end
	if f20_arg2 == nil then
		f20_arg2 = f20_arg0.StoreDisabled
	end
	if f20_arg0:CanShowStore() then
		local f20_local0 = {}
		if f20_arg3 and Engine.IsConsoleGame() and Engine.InFrontend() then
			f20_local0.shouldShowNewStoreSticker = true
			f20_local0.newStickerUpdateFunction = StoreButtonNewStickerUpdate
		end
		local f20_local1 = f20_arg0:AddButton( "@LUA_MENU_STORE", f20_arg1, f20_arg2, nil, false, f20_local0 )
		f20_local1.comScoreScreen = f20_arg4
		return f20_local1
	else
		return nil
	end
end

function RepeatStoreButtonNewStickerUpdate( f21_arg0 )
	local storeButtonNewStickerUpdateTimer = LUI.UITimer.new( 500, "TickStoreButtonNewStickerUpdate", nil, false )
	storeButtonNewStickerUpdateTimer.id = "StoreButtonNewStickerUpdateTimer"
	f21_arg0:registerEventHandler( "TickStoreButtonNewStickerUpdate", function ( element, event )
		StoreButtonNewStickerUpdate( element, event )
	end )
	f21_arg0:addElement( storeButtonNewStickerUpdateTimer )
	f21_arg0.storeButtonNewStickerUpdateTimer = storeButtonNewStickerUpdateTimer
	
end

function StoreButtonNewStickerUpdate( f22_arg0, f22_arg1 )
	if f22_arg0.storeButtonNewStickerUpdateTimer == nil then
		RepeatStoreButtonNewStickerUpdate( f22_arg0 )
	end
	local f22_local0 = "hidden"
	if Store.GetAnyNewStoreItemBreadcrumbState() then
		f22_local0 = "default"
	end
	f22_arg0:animateToState( f22_local0 )
end

LUI.MenuTemplate.AddMarketingPanel = function ( f23_arg0, f23_arg1, f23_arg2, f23_arg3 )
	if not Engine.IsCoreMode() then
		return 
	else
		f23_arg0.list:addElement( LUI.MarketingPanel.new( nil, {
			channel = f23_arg1,
			exclusiveControllerIndex = f23_arg3,
			comScoreScreen = f23_arg2
		} ) )
	end
end

f0_local0 = 26
f0_local1 = LUI.MenuTemplate.ButtonStyle.text_padding_without_content
f0_local2 = 0.67
local f0_local3 = f0_local0 * 1.2
local f0_local4 = f0_local1 / 4
local f0_local5 = CoD.TextSettings.BodyFontVeryTiny
LUI.MenuTemplate.AddCurrencyInfoPanel = function ( f24_arg0 )
	if not Engine.IsDepotEnabled() or not Engine.InFrontend() or not Engine.IsMultiplayer() or Cac.InPermanentLockingContext() then
		return 
	end
	local f24_local0 = 1
	f24_arg0.currencyInfoPanel = LUI.MenuBuilder.BuildAddChild( f24_arg0, {
		type = "UIElement",
		id = f24_arg0.id .. "_currencyInfoPanel",
		states = {
			default = {
				leftAnchor = false,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = false,
				left = 0,
				right = 0,
				top = 0,
				bottom = f0_local0
			}
		}
	} )
	local f24_local1 = Engine.Localize( "@DEPOT_NEXT_DEPOT_CREDIT" )
	local f24_local2 = f0_local0 / 2 - f24_local0
	local f24_local3, f24_local4, f24_local5, f24_local6 = GetTextDimensions( f24_local1, f0_local5.Font, f24_local2 )
	local f24_local7 = 2
	f24_arg0.currencyInfoPanel.creditProgressContainer = LUI.MenuBuilder.BuildAddChild( f24_arg0.currencyInfoPanel, {
		type = "UIElement",
		id = f24_arg0.id .. "_creditProgressContainer",
		states = {
			default = {
				leftAnchor = false,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = -f24_local5,
				right = 0,
				top = 0,
				bottom = 0
			}
		}
	} )
	f24_arg0.currencyInfoPanel.creditProgressContainer.nextDepotCreditText = LUI.MenuBuilder.BuildAddChild( f24_arg0.currencyInfoPanel.creditProgressContainer, {
		type = "UIText",
		id = f24_arg0.currencyInfoPanel.creditProgressContainer.id .. "_nextDepotCreditText",
		properties = {
			text = f24_local1
		},
		states = {
			default = {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = false,
				left = 0,
				right = 0,
				top = f24_local7,
				bottom = f24_local2,
				font = f0_local5.Font,
				horizontalAlignment = LUI.HorizontalAlignment.Center,
				verticalAlignment = LUI.VerticalAlignment.Top,
				color = Colors.primary_text_color
			}
		}
	} )
	f24_arg0.currencyInfoPanel.creditProgressContainer.nextDepotCreditText:setupAutoScaleText()
	local f24_local8 = GetCurrencyBalance( InventoryCurrencyType.Credits, f24_arg0.exclusiveController )
	f24_arg0.currencyInfoPanel.creditProgressContainer.creditProgressBar = LUI.MenuBuilder.BuildAddChild( f24_arg0.currencyInfoPanel.creditProgressContainer, {
		type = "UIProgressBar",
		id = f24_arg0.currencyInfoPanel.creditProgressContainer.id .. "_creditProgressBar",
		properties = {
			background_color = Colors.h1.dark_grey,
			segment_colors = {
				Colors.h1.light_grey
			},
			progress_values = {
				f24_local8 - math.floor( f24_local8 )
			}
		},
		states = {
			default = {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = false,
				bottomAnchor = true,
				left = 0,
				right = 0,
				top = -f24_local2,
				bottom = -f24_local7
			}
		}
	} )
	local f24_local9 = {
		InventoryCurrencyType.Credits,
		InventoryCurrencyType.Parts
	}
	if CoD.IsCPEnabled() then
		f24_local9[#f24_local9 + 1] = InventoryCurrencyType.CoDPoints
	end
	f24_local2 = f0_local0 * f0_local2
	local f24_local10 = f24_local2 / 2
	local f24_local11 = 2
	f24_arg0.currencyInfoPanel.currencyBalanceContainers = {}
	for f24_local12 = 1, #f24_local9, 1 do
		f24_local1 = tostring( math.floor( GetCurrencyBalance( f24_local9[f24_local12], f24_arg0.exclusiveController ) ) )
		local f24_local15, f24_local16, f24_local17, f24_local18 = GetTextDimensions( f24_local1, f0_local5.Font, f24_local2 )
		f24_local6 = f24_local18
		f24_local5 = f24_local17
		f24_local4 = f24_local16
		f24_local3 = f24_local15
		f24_local15 = nil
		if f24_local12 == 1 then
			f24_local15 = f24_arg0.currencyInfoPanel.creditProgressContainer
		else
			f24_local15 = f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12 - 1]]
		end
		f24_local16 = {
			leftAnchor = true,
			rightAnchor = false,
			topAnchor = true,
			bottomAnchor = true,
			left = -f24_local5 - f0_local1 - f0_local4 - f0_local3,
			right = -f0_local1,
			top = 0,
			bottom = 0
		}
		f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12]] = LUI.MenuBuilder.BuildAddChild( f24_local15, {
			type = "UIElement",
			id = f24_arg0.currencyInfoPanel.id .. "_currencyBalanceContainer_" .. f24_local9[f24_local12],
			states = {
				default = f24_local16
			}
		} )
		f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12]].defaultAnimationState = f24_local16
		f24_local16 = {
			leftAnchor = false,
			rightAnchor = true,
			topAnchor = false,
			bottomAnchor = false,
			left = -f24_local5,
			right = 0,
			top = f24_local11 - f24_local10,
			bottom = f24_local11 + f24_local10,
			font = f0_local5.Font,
			horizontalAlignment = LUI.HorizontalAlignment.None,
			verticalAlignment = LUI.VerticalAlignment.None,
			color = Colors.primary_text_color
		}
		f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12]].currencyText = LUI.MenuBuilder.BuildAddChild( f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12]], {
			type = "UIText",
			id = f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12]].id .. "_currencyAmount",
			properties = {
				text = f24_local1
			},
			states = {
				default = f24_local16
			}
		} )
		f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12]].currencyText.defaultAnimationState = f24_local16
		f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12]].currencyImg = LUI.MenuBuilder.BuildAddChild( f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12]], {
			type = "UIImage",
			id = f24_arg0.currencyInfoPanel.currencyBalanceContainers[f24_local9[f24_local12]].id .. "_currencyImg",
			states = {
				default = {
					leftAnchor = true,
					rightAnchor = false,
					topAnchor = true,
					bottomAnchor = true,
					left = 0,
					right = f0_local3,
					top = -(f0_local3 - f0_local0) / 2,
					bottom = (f0_local3 - f0_local0) / 2,
					material = RegisterMaterial( GetCurrencyImage( f24_local9[f24_local12] ) )
				}
			}
		} )
	end
	f24_arg0.currencyInfoPanel:registerEventHandler( "on_crafted_item", function ( element, event )
		f24_arg0:UpdateCurrency( InventoryCurrencyType.Parts )
	end )
	f24_arg0.currencyInfoPanel:registerEventHandler( "inventory", function ( element, event )
		f24_arg0:UpdateCurrency( InventoryCurrencyType.CoDPoints )
	end )
end

LUI.MenuTemplate.HighlightCurrency = function ( f25_arg0, f25_arg1 )
	local f25_local0 = f25_arg0.currencyInfoPanel.currencyBalanceContainers[f25_arg1]
	if f25_local0 ~= nil then
		local f25_local1 = 1000
		local f25_local2 = 1.1
		local f25_local3 = f0_local0 * f0_local2
		if not f25_local0.highlightCurrencyElems then
			f25_local0.highlightCurrencyElems = {}
		end
		local f25_local4 = LUI.DeepCopy( f25_local0.currencyText.defaultAnimationState )
		f25_local4.alpha = 1
		f25_local0.highlightCurrencyElems[f25_arg1] = LUI.UIText.new( f25_local4 )
		f25_local0:addElement( f25_local0.highlightCurrencyElems[f25_arg1] )
		f25_local0.highlightCurrencyElems[f25_arg1]:setText( f25_local0.currencyText.text )
		f25_local4.top = (f25_local4.top - f25_local4.bottom) * f25_local2
		local f25_local5, f25_local6, f25_local7, f25_local8 = GetTextDimensions( f25_local0.currencyText.text, f0_local5.Font, f25_local4.bottom - f25_local4.top )
		local f25_local9 = (f25_local7 - f25_local5 - f25_local4.right - f25_local4.left) / 2
		f25_local4.left = f25_local4.left - f25_local9
		f25_local4.right = f25_local4.right + f25_local9
		f25_local4.verticalAlignment = LUI.VerticalAlignment.Bottom
		f25_local4.alpha = 0
		f25_local0.highlightCurrencyElems[f25_arg1]:registerAnimationState( "highlight", f25_local4 )
		f25_local0.highlightCurrencyElems[f25_arg1]:animateInSequence( {
			{
				"default",
				0
			},
			{
				"highlight",
				f25_local1
			}
		}, nil, true, true )
		f25_local0:registerEventHandler( "remove_highlight", function ( element, event )
			element:removeElement( element.highlightCurrencyElems[f25_arg1] )
			element.highlightCurrencyElems[f25_arg1] = nil
		end )
		f25_local0:addElement( LUI.UITimer.new( f25_local1, "remove_highlight", nil, true ) )
	end
end

LUI.MenuTemplate.UpdateCurrency = function ( f26_arg0, f26_arg1 )
	local f26_local0 = f26_arg0.currencyInfoPanel.currencyBalanceContainers[f26_arg1]
	if f26_local0 ~= nil then
		local f26_local1 = GetCurrencyBalance( f26_arg1, f26_arg0.exclusiveController )
		local f26_local2 = tostring( math.floor( f26_local1 ) )
		local f26_local3, f26_local4, f26_local5, f26_local6 = GetTextDimensions( f26_local2, f0_local5.Font, f0_local0 * f0_local2 )
		f26_local0.defaultAnimationState.left = -f26_local5 - f0_local1 - f0_local4 - f0_local3
		f26_local0:registerAnimationState( "default", f26_local0.defaultAnimationState )
		f26_local0:animateToState( "default" )
		f26_local0.currencyText.defaultAnimationState.left = -f26_local5
		f26_local0.currencyText:registerAnimationState( "default", f26_local0.currencyText.defaultAnimationState )
		f26_local0.currencyText:animateToState( "default" )
		f26_local0.currencyText:setText( f26_local2 )
		f26_local0.currencyText.text = f26_local2
		if f26_arg1 == InventoryCurrencyType.Credits then
			f26_arg0.currencyInfoPanel.creditProgressContainer.creditProgressBar:processEvent( {
				name = "progress_refresh",
				newValues = {
					f26_local1 - math.floor( f26_local1 )
				}
			} )
		end
	end
end

LUI.MenuTemplate.OnGainFocus = function ( f27_arg0, f27_arg1 )
	if f27_arg0.list ~= nil then
		f27_arg0.list:processEvent( f27_arg1 )
	end
end

LUI.MenuTemplate.AddWorldBlur = function ( f28_arg0, f28_arg1, f28_arg2 )
	local self = LUI.UIElement.new( {
		worldBlur = f28_arg2 or 5
	} )
	self.id = f28_arg1 .. "_blur"
	self:setupWorldBlur()
	f28_arg0:addElement( self )
end

LUI.MenuTemplate.AddDarken = function ( f29_arg0, f29_arg1, f29_arg2, f29_arg3 )
	local f29_local0 = CoD.CreateState( -100, -100, 100, 100, CoD.AnchorTypes.All )
	f29_local0.material = RegisterMaterial( "black" )
	f29_local0.alpha = 0
	local self = LUI.UIImage.new( f29_local0 )
	self.id = f29_arg1 .. "_darken"
	self:setupFullWindowElement()
	f29_arg0:addElement( self )
	self:registerAnimationState( "end_state", {
		alpha = f29_arg3
	} )
	self:animateToState( "end_state", f29_arg2 or 0, true, true )
end

LUI.MenuTemplate.AddVignette = function ( f30_arg0 )
	local f30_local0 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f30_local0.material = RegisterMaterial( "h1_ui_bg_vignette" )
	local self = LUI.UIImage.new( f30_local0 )
	self:setupFullWindowElement()
	f30_arg0:addElement( self )
end

LUI.MenuTemplate.AddImageDecorations = function ( f31_arg0 )
	if Engine.InFrontend() then
		local f31_local0 = CoD.CreateState( nil, 0, nil, nil, CoD.AnchorTypes.TopLeftRight )
		f31_local0.height = 104
		f31_local0.left = -2
		f31_local0.material = RegisterMaterial( "h1_ui_header_glitch" )
		f31_arg0:addElement( LUI.UIImage.new( f31_local0 ) )
		f31_local0 = CoD.CreateState( nil, nil, nil, 0, CoD.AnchorTypes.BottomLeftRight )
		f31_local0.height = 80
		f31_local0.material = RegisterMaterial( "h1_ui_footer_glitch" )
		f31_arg0:addElement( LUI.UIImage.new( f31_local0 ) )
	end
end

LUI.MenuTemplate.InitInGameBkg = function ( f32_arg0, f32_arg1, f32_arg2, f32_arg3 )
	if not Engine.InFrontend() then
		if Engine.IsMultiplayer() then
			LUI.MenuTemplate.AddWorldBlur( f32_arg0, f32_arg1 )
			LUI.MenuTemplate.AddDarken( f32_arg0, f32_arg1, 0, 0.5 )
		else
			LUI.MenuTemplate.AddWorldBlur( f32_arg0, f32_arg1, 9 )
			LUI.MenuTemplate.AddDarken( f32_arg0, f32_arg1, f32_arg3, 0.7 )
		end
	end
end

LUI.MenuTemplate.AddBackButton = function ( f33_arg0, f33_arg1, f33_arg2 )
	if not f33_arg1 then
		f33_arg1 = MBh.LeaveMenu()
	end
	local f33_local0 = f33_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addBackButton, f33_arg1, f33_arg2, true )
	f33_local0:clearActionSFX()
	return f33_local0
end

LUI.MenuTemplate.AddBackButtonWithSelector = function ( f34_arg0, f34_arg1, f34_arg2 )
	if not f34_arg1 then
		f34_arg1 = MBh.LeaveMenu()
	end
	local f34_local0 = f34_arg0
	local f34_local1 = f34_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addBackButton, function ( f1_arg0, f1_arg1 )
		if f34_local0.ActiveSelector then
			LUI.Options.CloseSelectionMenu( f34_local0, true )
		else
			f34_arg1( f1_arg0, f1_arg1 )
		end
	end, f34_arg2, true )
	f34_local1:clearActionSFX()
	return f34_local1
end

LUI.MenuTemplate.AddHelpButton = function ( f35_arg0 )
	f35_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addHelpButton, function ( f11_arg0, f11_arg1 )
		Engine.Help()
	end )
end

LUI.MenuTemplate.AddOptionalBackground = function ( menu, controller )
	local self = LUI.UIImage.new( controller )
	self:setupFullWindowElement()
	self.id = menu.type .. "_bg"
	menu:addElement( self )
end

LUI.MenuTemplate.GetDefaultBreadCrumpText = function ()
	return ""
end

LUI.MenuTemplate.SetBreadCrumb = function ( f38_arg0, f38_arg1 )
	f38_arg0:dispatchEventToChildren( {
		name = "update_breadcrumb_text",
		string = f38_arg1,
		dispatchChildren = true
	} )
end

LUI.MenuTemplate.GetTitleDimensions = function ( f39_arg0 )
	return GetTextDimensions( f39_arg0, CoD.TextSettings.H1TitleFont.Font, CoD.TextSettings.H1TitleFont.Height )
end

LUI.MenuTemplate.AddDotElement = function ( f40_arg0, f40_arg1, f40_arg2, f40_arg3, f40_arg4 )
	local f40_local0 = Engine.IsRightToLeftLanguage()
	local f40_local1, f40_local2, f40_local3, f40_local4 = LUI.MenuTemplate.GetTitleDimensions( f40_arg1 )
	local f40_local5 = {
		type = "UIImage"
	}
	local f40_local6 = {}
	local f40_local7 = {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false
	}
	if f40_local0 then
		local f40_local8 = f40_arg2
	end
	f40_local7.left = f40_local8 or f40_arg2 + f40_local3 + 10
	f40_local7.width = 8
	f40_local7.top = LUI.MenuTemplate.Title.Top + f40_arg3 + CoD.TextSettings.H1TitleFont.Height - 12
	f40_local7.height = 8
	f40_local7.material = RegisterMaterial( "h1_deco_title_point" )
	f40_local7.alpha = 1
	f40_local6.default = f40_local7
	f40_local6.hidden = {
		alpha = 0
	}
	f40_local5.states = f40_local6
	f40_local5.handlers = {
		start_anim = function ( f12_arg0, f12_arg1 )
			local f12_local0 = GenericMenuAnimationSettings.DotDuration
			local f12_local1 = MBh.AnimateSequence( {
				{
					"hidden",
					0
				},
				{
					"default",
					f12_local0,
					true,
					true
				},
				{
					"hidden",
					f12_local0,
					true,
					true
				},
				{
					"default",
					f12_local0,
					true,
					true
				},
				{
					"hidden",
					f12_local0,
					true,
					true
				},
				{
					"default",
					f12_local0,
					true,
					true
				},
				{
					"hidden",
					f12_local0,
					true,
					true
				},
				{
					"default",
					f12_local0,
					true,
					true
				}
			} )
			f12_local1( f12_arg0 )
		end
	}
	f40_arg0.dotElement = LUI.MenuBuilder.BuildAddChild( f40_arg0, f40_local5 )
	f40_arg0.dotElement:processEvent( {
		name = "start_anim"
	} )
	f40_local6 = false
	if f40_arg4 then
		if f40_arg4 > 1 and true == GameX.IsRankedMatch() then
			f40_local7 = CoD.CreateState( f40_local3 + 17, 13, f40_local3 + 77, 73, CoD.AnchorTypes.TopLeft )
			if f40_arg4 == 2 then
				f40_local7.material = RegisterMaterial( "ui_reward_small_double_xp" )
			elseif f40_arg4 == 4 then
				f40_local7.material = RegisterMaterial( "ui_reward_small_quad_xp" )
			end
			f40_arg0.doubleXpElement = LUI.MenuBuilder.BuildAddChild( f40_arg0, LUI.UIImage.new( f40_local7 ) )
		else
			f40_local6 = true
		end
	else
		f40_local6 = true
	end
	if f40_arg0.doubleXpElement and f40_local6 == true then
		f40_arg0:removeElement( f40_arg0.doubleXpElement )
		f40_arg0.doubleXpElement = nil
	end
end

LUI.MenuTemplate.useSharedTitle = true
LUI.MenuTemplate.AddTitle = function ( f41_arg0, f41_arg1, f41_arg2, f41_arg3, f41_arg4, f41_arg5, f41_arg6, f41_arg7 )
	if f41_arg2 then
		f41_arg1 = Engine.ToUpperCase( f41_arg1 )
	end
	local f41_local0 = f41_arg4 or 0
	local f41_local1 = f41_arg5 or 0
	if wholeTitle.MenuTemplate.Title.element ~= nil then
		assert( wholeTitle.MenuTemplate.Title.active == false )
		assert( wholeTitle.MenuTemplate.Title.headertext )
		f41_arg0:addElement( wholeTitle.MenuTemplate.Title.element )
		f41_arg0.wholeTitle = wholeTitle.MenuTemplate.Title.element
		
		f41_arg0.title = wholeTitle.MenuTemplate.Title.headertext
		wholeTitle.MenuTemplate.Title.active = true
		f41_arg0:dispatchEventToChildren( {
			name = "update_header_text",
			string = f41_arg1,
			dispatchChildren = true
		} )
		if not f41_arg6 and wholeTitle.MenuTemplate.Title.element.dotElement ~= nil then
			wholeTitle.MenuTemplate.Title.element.dotElement:close()
		end
		wholeTitle.MenuTemplate.Title.element = nil
		return 
	end
	local f41_local2 = Engine.IsRightToLeftLanguage()
	local f41_local3 = wholeTitle.MenuBuilder.BuildAddChild
	local f41_local4 = f41_arg0
	local f41_local5 = {
		type = "generic_menu_title",
		id = "generic_title"
	}
	local f41_local6 = {
		menu_title = f41_arg1,
		menu_title_width = f41_arg3
	}
	local f41_local7
	if f41_local2 then
		f41_local7 = 14
		if not f41_local7 then
		
		else
			f41_local6.headerStartX = f41_local7
			f41_local6.marqueePadding = -5
			f41_local5.properties = f41_local6
			f41_local5.states = {
				default = {
					topAnchor = true,
					bottomAnchor = false,
					leftAnchor = true,
					rightAnchor = false,
					left = f41_local0,
					top = f41_local1,
					alpha = 1
				},
				hidden = {
					alpha = 0
				}
			}
			f41_local3 = f41_local3( f41_local4, f41_local5 )
			f41_arg0.wholeTitle = f41_local3
			f41_arg0.title = f41_local3:getFirstDescendentById( "header_text" )
			assert( f41_arg0.title, "Title need a header text." )
			if wholeTitle.MenuTemplate.useSharedTitle then
				wholeTitle.MenuTemplate.Title.active = true
				f41_local3:registerEventHandler( "menu_close", function ( element, event )
					assert( LUI.MenuTemplate.Title.element == nil )
					local f4_local0 = element:getParent()
					LUI.MenuTemplate.Title.element = element
					LUI.MenuTemplate.Title.headertext = f4_local0.title
					f4_local0:removeElement( element )
					f4_local0.title = nil
					LUI.MenuTemplate.Title.active = false
					LUI.MenuTemplate.SetBreadCrumb( element, LUI.MenuTemplate.GetDefaultBreadCrumpText() )
				end )
				f41_local3:registerEventHandler( "closeallmenus", function ( element, event )
					element:close()
					LUI.MenuTemplate.Title.active = false
					LUI.MenuTemplate.Title.element = nil
					LUI.MenuTemplate.Title.headertext = nil
				end )
			end
		end
	end
	f41_local7 = 0
end

function OnPartyStatusRefresh( f42_arg0, f42_arg1, f42_arg2 )
	local f42_local0 = Lobby.GetPartyStatus()
	if f42_arg2 then
		f42_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "partyStatus",
			helper_text = f42_local0,
			side = "left",
			clickable = false,
			color = Colors.s1.text_focused,
			bindTextID = "PrivatePartyStatus",
			width = 500
		}, nil, nil, true )
	else
		f42_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "partyStatus",
			helper_text = f42_local0,
			side = "left",
			clickable = false,
			color = Colors.s1.text_focused,
			width = 500
		}, nil, nil, true )
	end
end

function SetupUIBindTextDelayed( f43_arg0, f43_arg1 )
	f43_arg0:setupUIBindText( "PrivatePartyStatus" )
	f43_arg0:setClass( LUI.UIText )
	local f43_local0 = f43_arg0:getParent()
	if f43_local0 then
		local f43_local1 = f43_local0:getChildById( "partyStatusTimer" )
		if f43_local1 then
			LUI.UITimer.Stop( f43_local1 )
			f43_local1:close()
		end
	end
end

LUI.MenuTemplate.AddPartyStatus = function ( f44_arg0, f44_arg1, f44_arg2, f44_arg3 )
	local f44_local0 = CoD.TextSettings.BodyFontSmall
	local f44_local1 = -16
	local f44_local2 = 160
	if f44_arg3 then
		f44_local1 = -GenericFooterDims.Height
	end
	local f44_local3 = f44_local1 - f44_local0.Height
	local f44_local4 = 0
	OnPartyStatusRefresh( f44_arg0, nil, f44_arg1 )
	f44_arg0:registerEventHandler( "refreshPartyStatus", OnPartyStatusRefresh )
	f44_local4 = 200
	if f44_local4 > 0 then
		f44_arg0:addElement( LUI.UITimer.new( f44_local4, "refreshPartyStatus" ) )
	end
end

LUI.MenuTemplate.RefreshFriendsWidget = function ( f45_arg0 )
	if f45_arg0.friendsWidget then
		f45_arg0.friendsWidget:processEvent( {
			name = "live_connection"
		} )
	end
end

LUI.MenuTemplate.AddMapDisplay = function ( f46_arg0, f46_arg1, f46_arg2 )
	local f46_local0 = f46_arg1()
	f46_local0.parentList = f46_arg0.list
	if f46_arg2 then
		f46_arg0:AddSpacing( 17 )
	else
		f46_arg0:AddSpacing( 78 )
	end
	f46_arg0.list:addElement( f46_local0 )
	f46_local0:Refresh()
	f46_arg0.mapDisplay = f46_local0
end

LUI.MenuTemplate.AddRotateHelp = function ( f47_arg0 )
	if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
		f47_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addRightStickButton )
	else
		f47_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addMouseDrag )
	end
end

LUI.MenuTemplate.CountdownTextPadding = 18
LUI.MenuTemplate.RefreshCountdownTimer = function ( f48_arg0, f48_arg1, f48_arg2, f48_arg3, f48_arg4 )
	local f48_local0 = false
	if MatchRules.IsUsingMatchRulesData() then
		f48_local0 = MatchRules.GetData( "commonOption", "timeLimit" ) == 0
	end
	if f48_arg2.countdownStarted == true and f48_arg2.countdownTextHidden == true then
		f48_arg1:animateToState( "hidden" )
		if f48_local0 == false then
			local f48_local1, f48_local2, f48_local3, f48_local4 = f48_arg2:getLocalRect()
			f48_arg3:registerAnimationState( "widthAdjust", {
				width = f48_local3 - f48_local1 + LUI.MenuTemplate.CountdownTextPadding
			} )
			f48_arg3:animateToState( "widthAdjust" )
			f48_arg2:animateToState( "default" )
			f48_arg4:animateToState( "default" )
		end
	else
		if f48_arg0 ~= 0 then
			f48_arg2.countdownStarted = true
		end
		if f48_arg0 >= 11 then
			f48_arg1:animateToState( "default" )
		elseif f48_arg0 <= 10 and f48_arg2.countdownStarted == true then
			f48_arg1:animateToState( "warning" )
			f48_arg4:animateToState( "warning" )
		end
		if f48_arg2.countdownStarted == true and f48_arg2.countdownTextHidden == false then
			if f48_arg0 == 0 then
				f48_arg1:animateToState( "default" )
				f48_arg4:animateToState( "default" )
				f48_arg1:setText( Engine.Localize( "@MP_MATCH_STARTING" ) )
				local f48_local1, f48_local2, f48_local3, f48_local4 = GetTextDimensions( Engine.Localize( "@MP_MATCH_STARTING" ), CoD.TextSettings.BodyFont24.Font, CoD.TextSettings.BodyFontSmall.Height )
				f48_arg3:registerAnimationState( "widthAdjust", {
					width = f48_local3 + LUI.MenuTemplate.CountdownTextPadding
				} )
				f48_arg3:animateToState( "widthAdjust" )
				if f48_local0 == true then
					f48_arg2.countdownTextHidden = true
					if f48_arg2.delayTimer == nil then
						local self = LUI.UITimer.new( 2000, "delay_complete", nil, true )
						f48_arg2.delayTimer = self
						f48_arg1:registerEventHandler( "delay_complete", function ()
							f48_arg3:hide()
						end )
						f48_arg1:addElement( self )
					end
				end
			else
				local f48_local1 = Engine.Localize( "@MP_MATCH_BEGINS_IN_VAL", f48_arg0 )
				local f48_local2, f48_local3, f48_local4, self = GetTextDimensions( f48_local1, CoD.TextSettings.BodyFont24.Font, CoD.TextSettings.BodyFontSmall.Height )
				f48_arg1:setText( f48_local1 )
				f48_arg3:registerAnimationState( "widthAdjust", {
					width = f48_local4 + LUI.MenuTemplate.CountdownTextPadding
				} )
				f48_arg3:animateToState( "widthAdjust" )
			end
		end
	end
end

LUI.MenuTemplate.SetGameEndedText = function ( f49_arg0, f49_arg1, f49_arg2, f49_arg3 )
	local f49_local0 = {
		{
			name = Engine.ToUpperCase( Engine.Localize( Engine.GetDvarString( "g_TeamName_Axis" ) ) ),
			icon = Engine.GetDvarString( "g_TeamIcon_Axis" )
		},
		{
			name = Engine.ToUpperCase( Engine.Localize( Engine.GetDvarString( "g_TeamName_Allies" ) ) ),
			icon = Engine.GetDvarString( "g_TeamIcon_Allies" )
		}
	}
	if string.find( tostring( f49_local0[Teams.allies].name ), "MARINES" ) then
		CoD.SwapFactionReasonStrings()
	else
		CoD.RestoreFactionReasonStrings()
	end
	local f49_local1 = Engine.Localize( CoD.ReasonStrings[f49_arg0] )
	f49_arg1:animateToState( "default" )
	f49_arg3:animateToState( "default" )
	f49_arg2:show()
	f49_arg1:setText( f49_local1 )
	local f49_local2, f49_local3, f49_local4, f49_local5 = GetTextDimensions( f49_local1, CoD.TextSettings.BodyFont24.Font, CoD.TextSettings.BodyFontSmall.Height )
	f49_arg2:registerAnimationState( "widthAdjust", {
		width = f49_local4 + LUI.MenuTemplate.CountdownTextPadding
	} )
	f49_arg2:animateToState( "widthAdjust" )
end

LUI.MenuTemplate.AddCountdownTimer = function ( f50_arg0 )
	local f50_local0 = 25
	local self = LUI.UIElement.new( {
		top = f50_local0,
		left = 0,
		bottom = f50_local0 * 2,
		topAnchor = true,
		bottomAnchor = false,
		rightAnchor = false,
		leftAnchor = false
	} )
	local self = LUI.UIImage.new( {
		material = RegisterMaterial( "black" ),
		topAnchor = true,
		bottomAnchor = true,
		rightAnchor = true,
		leftAnchor = true
	} )
	local f50_local3 = LUI.DecoFrame.new( {
		topAnchor = true,
		bottomAnchor = true,
		rightAnchor = true,
		leftAnchor = true,
		color = Colors.white
	}, LUI.DecoFrame.Grey )
	f50_local3:registerAnimationState( "warning", {
		color = {
			r = 1,
			g = 0.23,
			b = 0.27
		}
	} )
	local f50_local4 = LUI.MenuBuilder.buildItems( {
		type = "timersHudDef"
	}, {} )
	f50_local4:registerAnimationState( "default", {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		height = CoD.TextSettings.TitleFontSmallBold.Height,
		alpha = 1
	} )
	f50_local4:registerAnimationState( "hidden", {
		alpha = 0
	} )
	f50_local4:animateToState( "hidden" )
	f50_local4.countdownStarted = false
	f50_local4.countdownTextHidden = false
	local f50_local5 = CoD.CreateState( nil, 6, nil, nil, CoD.AnchorTypes.TopLeftRight )
	f50_local5.font = CoD.TextSettings.BodyFontSmall.Font
	f50_local5.height = CoD.TextSettings.BodyFontSmall.Height
	f50_local5.color = GenericMenuColors.text_highlight
	f50_local5.alignment = LUI.Alignment.Center
	f50_local5.alpha = 1
	local self = LUI.UIText.new( f50_local5 )
	self:setTextStyle( CoD.TextStyle.Shadowed )
	self:registerAnimationState( "warning", {
		color = {
			r = 1,
			g = 0.23,
			b = 0.27
		}
	} )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	self:registerOmnvarHandler( "ui_match_countdown", function ( f7_arg0, f7_arg1 )
		LUI.MenuTemplate.RefreshCountdownTimer( f7_arg1.value, self, f50_local4, self, f50_local3 )
	end )
	LUI.MenuTemplate.RefreshCountdownTimer( Game.GetOmnvar( "ui_match_countdown" ), self, f50_local4, self, f50_local3 )
	f50_local4:registerEventHandler( "timer_active", function ( element, event )
		if f50_local4.countdownTextHidden == false then
			f50_local4.countdownStarted = true
			f50_local4.countdownTextHidden = true
			self:animateToState( "hidden" )
			local f8_local0, f8_local1, f8_local2, f8_local3 = f50_local4:getLocalRect()
			self:registerAnimationState( "widthAdjust", {
				width = f8_local2 - f8_local0 + 18
			} )
			self:animateToState( "widthAdjust" )
			f50_local4:animateToState( "default" )
			f50_local3:animateToState( "default" )
		end
	end )
	f50_local4:registerEventHandler( "timer_timeout", function ( element, event )
		local f9_local0 = Game.GetOmnvar( "ui_round_end_reason" )
		if f9_local0 ~= 0 then
			LUI.MenuTemplate.SetGameEndedText( f9_local0, self, self, f50_local3 )
		end
	end )
	self:addElement( self )
	self:addElement( f50_local3 )
	self:addElement( self )
	self:addElement( f50_local4 )
	f50_arg0:addElement( self )
end

LUI.MenuTemplate.new = function ( f51_arg0, f51_arg1 )
	assert( f51_arg0 ~= nil )
	if not f51_arg1 then
		f51_arg1 = {}
	end
	if GameX.IsSplitscreen() then
		f51_arg1.do_not_add_friends_helper = true
	end
	local f51_local0 = CoD.CreateState( DesignGridDims.horz_gutter, DesignGridDims.vert_gutter, -DesignGridDims.horz_gutter, -DesignGridDims.vert_gutter, CoD.AnchorTypes.All )
	local self = f51_arg1.menu_alpha
	if not self then
		self = 1
	end
	f51_local0.alpha = self
	self = LUI.UIElement.new( f51_local0 )
	self:setClass( LUI.MenuTemplate )
	self:disableTreeFocus()
	self:registerEventHandler( "gain_focus", LUI.MenuTemplate.OnGainFocus )
	self.type = f51_arg0.type
	self.id = self.type .. "_container"
	self.exclusiveController = f51_arg0.properties and f51_arg0.properties.exclusiveController or Engine.GetSignedInAsController()
	self.menu_list_divider_top_offset = f51_arg1.menu_list_divider_top_offset
	self:InitInGameBkg( self.type, f51_arg1.distortion, f51_arg1.delay_display )
	if f51_arg1.menu_bg_state then
		self:AddOptionalBackground( f51_arg1.menu_bg_state )
	end
	if Engine.InFrontend() then
		if f51_arg1.persistentBackground then
			PersistentBackground.Set( f51_arg1.persistentBackground )
		else
			PersistentBackground.Set( PersistentBackground.Variants.Default )
		end
	end
	self:AddVignette()
	self:AddTitle( Engine.Localize( f51_arg1.menu_title ), f51_arg1.uppercase_title, f51_arg1.menu_title_width, nil, nil, f51_arg1.skipAnim, f51_arg1.delay_display )
	if f51_arg1.noHeader == nil or not f51_arg1.noHeader then
		self:AddHeaderDividers( f51_arg1.showTopRightSmallBar )
	end
	local f51_local2 = LUI.MenuTemplate.ListTop
	if f51_arg1.menu_top_indent then
		f51_local2 = f51_local2 + f51_arg1.menu_top_indent
	end
	local f51_local3 = f51_arg1.menu_height
	if not f51_local3 then
		f51_local3 = 200
	end
	f51_local3 = f51_local3 + f51_local2
	local f51_local4 = 0
	local f51_local5 = f51_arg1.menu_width
	if not f51_local5 then
		f51_local5 = GenericMenuDims.menu_width_standard
	end
	f51_local5 = f51_local5 + f51_local4
	local f51_local6 = CoD.CreateState( f51_local4, f51_local2, f51_local5, f51_local3, CoD.AnchorTypes.TopLeft )
	f51_local6.font = CoD.TextSettings.BodyFontSmall.Font
	self.width = f51_local5 - f51_local4
	if f51_arg1.spacing then
		f51_local6.spacing = f51_arg1.spacing
	else
		f51_local6.spacing = H1MenuDims.spacing
	end
	local f51_local7 = nil
	if f51_arg1.subContainer then
		local subContainer = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
		subContainer.id = self.type .. "_sub_container"
		self:addElement( subContainer )
		self.subContainer = subContainer
		
		f51_local7 = subContainer
	else
		f51_local7 = self
	end
	local self = nil
	if f51_arg1.scrollInSplitScreen and GameX.IsSplitscreen() then
		f51_local6.bottom = f51_local2 + 265
		self = LUI.UIScrollingVerticalList.new( f51_local6, nil, {
			use_arrows = true,
			sendScrollEvents = true,
			autoScroll = LUI.AutoScroll.AnchoredEdges,
			autoScrollTime = 200
		} )
		self.id = self.type .. "_list"
		f51_local7:addElement( self )
	else
		self = LUI.UIVerticalList.build( nil, {
			defaultState = f51_local6,
			noWrap = f51_arg1.listNoWrap,
			blockRepeatWrap = true
		} )
		self.id = self.type .. "_list"
		f51_local7:addElement( self )
	end
	self.buttonCount = 0
	self.list = self
	if f51_arg1.genericListAction then
		self.genericListAction = function ( f10_arg0, f10_arg1 )
			if not f10_arg1 then
				f10_arg1 = {}
			end
			f10_arg1.menu = self
			f51_arg1.genericListAction( f10_arg0, f10_arg1 )
		end
		
	end
	local subContainer = LUI.MenuBuilder.BuildAddChild( self, {
		type = "button_helper_text_main",
		id = self.type .. "_help"
	} )
	if f51_arg1.useButtonHelperBG == nil or f51_arg1.useButtonHelperBG then
		LUI.UIButtonText.AddButtonHelperBackground( subContainer )
	end
	subContainer.skipAnim = f51_arg1.skipAnim
	subContainer:setupFullWindowElement()
	self.help = subContainer:getFirstDescendentById( "container" )
	if (Engine.IsConsoleGame() or Engine.IsGamepadEnabled()) and (f51_arg1.showSelectButton == nil or f51_arg1.showSelectButton) then
		self:processEvent( LUI.ButtonHelperText.CommonEvents.addSelectButton )
	end
	if Engine.IsMultiplayer() and (not f51_arg1.do_not_add_friends_helper or f51_arg1.do_not_add_friends_helper ~= true) then
		self.friendsWidget = LUI.MenuBuilder.BuildAddChild( self, {
			type = "online_friends_widget",
			id = "online_friends_widget_id"
		} )
	end
	local f51_local10 = Engine.GetDvarInt( "virtualLobbyMode" )
	if (f51_local10 == VirtualLobbyModes.LUI_MODE_LOBBY or f51_local10 == VirtualLobbyModes.LUI_MODE_CAO or f51_local10 == VirtualLobbyModes.LUI_MODE_CLANPROFILE or f51_local10 == VirtualLobbyModes.LUI_MODE_CAC or f51_local10 == VirtualLobbyModes.LUI_MODE_CAC_WEAP) and not Engine.IsConsoleGame() and Engine.InFrontend() and f51_arg0 and f51_arg0.properties and f51_arg0.properties.weaponType ~= "reticle" then
		self:addElement( VLobbyCharRotArea( nil, {
			vLobbyMode = f51_local10
		} ) )
	end
	local f51_local11 = f51_arg1.partyStatusAboveHelp
	local f51_local12 = LUI.FlowManager.IsInStack
	local f51_local13 = Engine.GetLuiRoot()
	if f51_local12( f51_local13.flowManager, "menu_xboxlive_lobby" ) then
		self:AddPartyStatus( nil, nil, f51_local11 )
	else
		f51_local12 = LUI.FlowManager.IsInStack
		f51_local13 = Engine.GetLuiRoot()
		if not f51_local12( f51_local13.flowManager, "menu_xboxlive_privatelobby" ) then
			f51_local12 = LUI.FlowManager.IsInStack
			f51_local13 = Engine.GetLuiRoot()
			if f51_local12( f51_local13.flowManager, "menu_systemlink" ) then
			
			else
				return self
			end
		end
		self:AddPartyStatus( true, true, f51_local11 )
	end
	return self
end

LockTable( _M )
