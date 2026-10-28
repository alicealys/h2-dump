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

LUI.MenuTemplate.AddListDivider = function ( f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4, f3_arg5 )
	
end

LUI.MenuTemplate.CreateBottomDivider = function ( f4_arg0 )
	if f4_arg0.list.bottomDivider ~= nil then
		f4_arg0.list.bottomDivider:close()
	end
	f4_arg0.list.bottomDivider = LUI.UIImage.new( {
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

LUI.MenuTemplate.AddBottomDividerToList = function ( f5_arg0, f5_arg1 )
	if f5_arg0.list.bottomDivider then
		if f5_arg1 then
			f5_arg1:addElement( f5_arg0.list.bottomDivider )
		else
			f5_arg0.list:addElement( f5_arg0.list.bottomDivider )
		end
	end
end

LUI.MenuTemplate.AddButton = function ( f6_arg0, f6_arg1, f6_arg2, f6_arg3, f6_arg4, f6_arg5, f6_arg6, f6_arg7 )
	assert( f6_arg0.list ~= nil )
	if not Engine.InFrontend() and Engine.GetSplitScreen() then
		f6_arg7 = true
	end
	if f6_arg7 ~= true then
		if f6_arg0.list.buttonCount == 0 then
			f6_arg0:AddListDivider( f6_arg0.menu_list_divider_top_offset )
			f6_arg0:CreateBottomDivider()
		elseif f6_arg0.list.bottomDivider and not f6_arg0.list.bottomDivider:isClosed() then
			local f6_local0 = f6_arg0.list.bottomDivider:getParent()
			f6_local0:removeElement( f6_arg0.list.bottomDivider )
		end
	end
	local f6_local0, f6_local1 = nil
	if type( f6_arg3 ) == "function" then
		f6_local0 = f6_arg3
		f6_local1 = nil
	else
		f6_local1 = f6_arg3
		f6_local0 = nil
	end
	local f6_local2 = nil
	if type( f6_arg2 ) == "function" then
		f6_local2 = f6_arg2
	elseif type( f6_arg2 ) == "string" then
		f6_local2 = function ( f7_arg0, f7_arg1 )
			LUI.FlowManager.RequestAddMenu( f7_arg0, f6_arg2, true, f7_arg1.controller, false )
		end
		
	end
	if f6_arg1 == nil then
		f6_arg1 = f6_arg6.button_text
	end
	local f6_local3 = Engine.Localize( f6_arg1 )
	if f6_arg4 == nil or f6_arg4 then
		f6_local3 = Engine.ToUpperCase( f6_local3 )
	end
	local f6_local4 = {
		style = LUI.MenuTemplate.ButtonStyle,
		button_text = f6_local3,
		text_align_without_content = LUI.Alignment.Left,
		button_action_func = f6_local2,
		exclusiveController = f6_arg0.exclusiveController
	}
	if f6_arg6 ~= nil then
		LUI.InheritCopy( f6_local4, f6_arg6 )
	end
	local f6_local5 = LUI.MenuBuilder.BuildAddChild( f6_arg0.list, {
		type = "UIGenericButton",
		id = f6_arg0.type .. "_button_" .. f6_arg0.list.buttonCount,
		disabled = f6_local1,
		disabledFunc = f6_local0,
		properties = f6_local4,
		listIndex = f6_arg0.list.buttonCount
	} )
	f6_local5.menu = f6_arg0
	f6_arg0.list.buttonCount = f6_arg0.list.buttonCount + 1
	if f6_arg7 ~= true then
		f6_arg0:AddBottomDividerToList( f6_local5 )
	end
	return f6_local5
end

LUI.MenuTemplate.AddButtonWithSubText = function ( f8_arg0, f8_arg1, f8_arg2, f8_arg3, f8_arg4, f8_arg5 )
	local f8_local0 = f8_arg0:AddButton( f8_arg1, f8_arg2, f8_arg3 )
	local f8_local1 = LUI.MenuGenericButtons.ButtonLabelFont
	local f8_local2, f8_local3, f8_local4, f8_local5 = GetTextDimensions( Engine.Localize( f8_arg1 ), f8_local1.Font, f8_local1.Height )
	local f8_local6 = CoD.TextSettings.TitleFontTiny
	local f8_local7 = LUI.MenuTemplate.ButtonStyle.text_padding_without_content + f8_local4 - f8_local2 + (f8_arg5 or 5)
	local self = LUI.UIText.new()
	self:registerAnimationState( "default", {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = false,
		left = f8_local7,
		right = 0,
		top = 10,
		height = f8_local6.Height,
		alignment = LUI.Alignment.Left,
		font = f8_local6.Font,
		color = Colors.s1.text_focused,
		alpha = 1
	} )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	self:animateToState( "default" )
	self:setText( f8_arg4 )
	f8_local0.subTextField = self
	f8_local0:addElement( self )
	return f8_local0
end

LUI.MenuTemplate.RefreshButtonDisabled = function ( f9_arg0 )
	if f9_arg0.list then
		f9_arg0.list:dispatchEventToChildren( {
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

LUI.MenuTemplate.AddHeader = function ( f11_arg0, f11_arg1 )
	assert( f11_arg0.list ~= nil )
	local f11_local0 = Engine.Localize( f11_arg1 )
	local f11_local1 = CoD.TextSettings.Font21
	local f11_local2, f11_local3, f11_local4, f11_local5 = GetTextDimensions2( f11_local0, f11_local1.Font, f11_local1.Height )
	local f11_local6 = f11_local4 - f11_local2 + 40
	local f11_local7 = CoD.CreateState( 0, 0, nil, nil, CoD.AnchorTypes.TopLeft )
	f11_local7.width = f11_local6
	f11_local7.height = f11_local1.Height + 4
	f11_local7.material = RegisterMaterial( "white" )
	f11_local7.color = {
		r = 0.21,
		g = 0.21,
		b = 0.21
	}
	local self = LUI.UIImage.new( f11_local7 )
	local f11_local9 = 12
	local f11_local10 = CoD.CreateState( 12, 3, nil, nil, CoD.AnchorTypes.TopLeft )
	f11_local10.width = f11_local9
	f11_local10.height = f11_local9
	f11_local10.material = RegisterMaterial( "h2_title_arrow" )
	f11_local10.color = {
		r = 0.36,
		g = 0.36,
		b = 0.36
	}
	self:addElement( LUI.UIImage.new( f11_local10 ) )
	local f11_local11 = CoD.CreateState( 32, 4, 0, nil, CoD.AnchorTypes.TopLeftRight )
	f11_local11.height = f11_local1.Height
	f11_local11.font = f11_local1.Font
	f11_local11.alignment = LUI.AdjustAlignmentForLanguage( LUI.Alignment.Left )
	f11_local11.color = {
		r = 0.83,
		g = 0.83,
		b = 0.83
	}
	if Engine.IsAsianLanguage() or Engine.IsRightToLeftLanguage() then
		f11_local11.top = 2
	end
	local f11_local12 = LUI.UIText.new( f11_local11 )
	f11_local12:setText( f11_local0 )
	self:addElement( f11_local12 )
	f11_arg0.list:addElement( self )
end

LUI.MenuTemplate.AddMenuDescription = function ( f12_arg0, f12_arg1, f12_arg2, f12_arg3 )
	local f12_local0 = f12_arg1 * LUI.ButtonDescText.Font.Height
	local f12_local1 = f12_arg3 or 26
	local self = LUI.UIElement.new( nil, {
		borderAlpha = 0.45
	} )
	self:registerAnimationState( "default", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = false,
		rightAnchor = true,
		height = f12_local1 * 2 + f12_local0,
		alpha = 1
	} )
	self:registerAnimationState( "hidden", {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = false,
		rightAnchor = true,
		height = f12_local1 * 2 + f12_local0,
		alpha = 0
	} )
	local f12_local3 = self
	local f12_local4 = self.animateToState
	local f12_local5
	if f12_arg2 then
		f12_local5 = "hidden"
		if not f12_local5 then
		
		else
			f12_local4( f12_local3, f12_local5 )
			self.visible = not f12_arg2
			f12_local4 = LUI.UIElement.new()
			f12_local4:registerAnimationState( "default", {
				topAnchor = true,
				bottomAnchor = false,
				leftAnchor = true,
				rightAnchor = true,
				top = f12_local1
			} )
			f12_local4:animateToState( "default" )
			self:addElement( f12_local4 )
			f12_local4:addElement( LUI.ButtonDescText.new( nil, {
				lines = f12_arg1
			} ) )
			f12_arg0.list:addElement( self )
			return self
		end
	end
	f12_local5 = "default"
end

LUI.MenuTemplate.InitScrolling = function ( f13_arg0 )
	local f13_local0 = 13
	if GameX.IsSplitscreen() then
		f13_local0 = 7
	end
	ListPaging.InitList( f13_arg0.list, f13_local0, 10, nil, nil, {
		left_offset = 50
	} )
	return f13_local0
end

LUI.MenuTemplate.InitScrollBar = function ( f14_arg0 )
	LUI.Options.InitScrollingList( f14_arg0.list )
end

LUI.MenuTemplate.AddHelp = function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3, f15_arg4 )
	f15_arg1 = LUI.DeepCopy( f15_arg1 )
	assert( f15_arg0.help ~= nil )
	if f15_arg4 ~= nil then
		local f15_local0
		if f15_arg4 == true then
			f15_local0 = "left"
			if not f15_local0 then
			
			else
				f15_arg1.side = f15_local0
			end
		end
		f15_local0 = "right"
	end
	return LUI.ButtonHelperText.AddHelperTextObject( f15_arg0.help, f15_arg1, f15_arg2, f15_arg3 )
end

LUI.MenuTemplate.AddHeaderDividers = function ( f16_arg0, f16_arg1 )
	local f16_local0 = 66
	local f16_local1 = 18
	local f16_local2 = 1
	
	local headerContainer = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	f16_arg0:addElement( headerContainer )
	f16_arg0.headerContainer = headerContainer
	
	local f16_local4 = CoD.CreateState( 0, f16_local0, nil, nil, CoD.AnchorTypes.TopLeft )
	f16_local4.width = f16_local1
	f16_local4.height = f16_local2
	f16_local4.material = RegisterMaterial( "white" )
	f16_local4.color = GenericMenuColors.title_divider
	headerContainer:addElement( LUI.UIImage.new( f16_local4 ) )
	if f16_arg1 then
		local f16_local5 = CoD.CreateState( nil, f16_local0, 0, nil, CoD.AnchorTypes.TopRight )
		f16_local5.width = f16_local1
		f16_local5.height = f16_local2
		f16_local5.material = RegisterMaterial( "white" )
		f16_local5.color = GenericMenuColors.title_divider
		headerContainer:addElement( LUI.UIImage.new( f16_local5 ) )
	end
	local f16_local5 = CoD.CreateState( 25, f16_local0, -500, nil, CoD.AnchorTypes.TopLeftRight )
	f16_local5.height = f16_local2
	f16_local5.material = RegisterMaterial( "h1_ui_divider_gradient_left" )
	f16_local5.color = GenericMenuColors.title_divider
	f16_local5.alpha = 0.5
	headerContainer:addElement( LUI.UIImage.new( f16_local5 ) )
	local f16_local6 = CoD.CreateState( 218, f16_local0, nil, nil, CoD.AnchorTypes.TopLeft )
	f16_local6.width = 65
	f16_local6.height = f16_local2
	f16_local6.material = RegisterMaterial( "white" )
	f16_local6.color = GenericMenuColors.title_divider
	f16_local6.alpha = 0.35
	headerContainer:addElement( LUI.UIImage.new( f16_local6 ) )
end

LUI.MenuTemplate.OnOptions = function ( f17_arg0, f17_arg1 )
	if GameX.IsSplitscreen() then
		GameX.SetOptionState( true )
	end
	if not f17_arg0.disabled then
		if Engine.IsConsoleGame() then
			LUI.FlowManager.RequestAddMenu( f17_arg0, "console_controls", true, f17_arg1.controller, false )
		else
			LUI.FlowManager.RequestAddMenu( f17_arg0, "pc_controls", true, f17_arg1.controller, false )
		end
		Engine.PlaySound( CoD.SFX.MenuAccept )
	end
end

LUI.MenuTemplate.AddOptionsButton = function ( f18_arg0, f18_arg1 )
	if f18_arg1 then
		return f18_arg0:AddButton( "@MENU_OPTIONS", LUI.MenuTemplate.OnOptions, nil, nil, nil, {
			desc_text = Engine.Localize( "@MENU_OPTIONS_DESC" )
		} )
	else
		f18_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@MENU_OPTIONS" ),
			side = "right",
			clickable = true
		}, LUI.MenuTemplate.OnOptions )
	end
end

LUI.MenuTemplate.OnStore = function ( f19_arg0, f19_arg1 )
	Sns.OpenStoreMenu( f19_arg1.controller, f19_arg0.comScoreScreen, LUI.ComScore.StoreSource.MenuButton )
end

LUI.MenuTemplate.StoreDisabled = function ( f20_arg0 )
	if Engine.IsPS3() or Engine.IsPS4() then
		local f20_local0 = Lobby.IsInPrivateParty()
		local f20_local1 = Lobby.IsPrivatePartyHost()
		local f20_local2 = Lobby.IsPartyHostWaitingOnMembers()
		local f20_local3
		if not f20_local0 or f20_local1 then
			f20_local3 = f20_local2
		else
			f20_local3 = true
		end
		return f20_local3
	else
		
	end
end

LUI.MenuTemplate.CanShowStore = function ()
	return Engine.GetDvarBool( "ui_show_store" )
end

LUI.MenuTemplate.AddStoreButton = function ( f22_arg0, f22_arg1, f22_arg2, f22_arg3, f22_arg4 )
	if f22_arg1 == nil then
		f22_arg1 = f22_arg0.OnStore
	end
	if f22_arg2 == nil then
		f22_arg2 = f22_arg0.StoreDisabled
	end
	if f22_arg0:CanShowStore() then
		local f22_local0 = {}
		if f22_arg3 and Engine.IsConsoleGame() and Engine.InFrontend() then
			f22_local0.shouldShowNewStoreSticker = true
			f22_local0.newStickerUpdateFunction = StoreButtonNewStickerUpdate
		end
		local f22_local1 = f22_arg0:AddButton( "@LUA_MENU_STORE", f22_arg1, f22_arg2, nil, false, f22_local0 )
		f22_local1.comScoreScreen = f22_arg4
		return f22_local1
	else
		return nil
	end
end

function RepeatStoreButtonNewStickerUpdate( f23_arg0 )
	local storeButtonNewStickerUpdateTimer = LUI.UITimer.new( 500, "TickStoreButtonNewStickerUpdate", nil, false )
	storeButtonNewStickerUpdateTimer.id = "StoreButtonNewStickerUpdateTimer"
	f23_arg0:registerEventHandler( "TickStoreButtonNewStickerUpdate", function ( element, event )
		StoreButtonNewStickerUpdate( element, event )
	end )
	f23_arg0:addElement( storeButtonNewStickerUpdateTimer )
	f23_arg0.storeButtonNewStickerUpdateTimer = storeButtonNewStickerUpdateTimer
	
end

function StoreButtonNewStickerUpdate( f25_arg0, f25_arg1 )
	if f25_arg0.storeButtonNewStickerUpdateTimer == nil then
		RepeatStoreButtonNewStickerUpdate( f25_arg0 )
	end
	local f25_local0 = "hidden"
	if Store.GetAnyNewStoreItemBreadcrumbState() then
		f25_local0 = "default"
	end
	f25_arg0:animateToState( f25_local0 )
end

LUI.MenuTemplate.AddMarketingPanel = function ( f26_arg0, f26_arg1, f26_arg2, f26_arg3 )
	if not Engine.IsCoreMode() then
		return 
	else
		f26_arg0.list:addElement( LUI.MarketingPanel.new( nil, {
			channel = f26_arg1,
			exclusiveControllerIndex = f26_arg3,
			comScoreScreen = f26_arg2
		} ) )
	end
end

f0_local0 = 26
f0_local1 = LUI.MenuTemplate.ButtonStyle.text_padding_without_content
f0_local2 = 0.67
local f0_local3 = f0_local0 * 1.2
local f0_local4 = f0_local1 / 4
local f0_local5 = CoD.TextSettings.BodyFontVeryTiny
LUI.MenuTemplate.AddCurrencyInfoPanel = function ( f27_arg0 )
	if not Engine.IsDepotEnabled() or not Engine.InFrontend() or not Engine.IsMultiplayer() or Cac.InPermanentLockingContext() then
		return 
	end
	local f27_local0 = 1
	f27_arg0.currencyInfoPanel = LUI.MenuBuilder.BuildAddChild( f27_arg0, {
		type = "UIElement",
		id = f27_arg0.id .. "_currencyInfoPanel",
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
	local f27_local1 = Engine.Localize( "@DEPOT_NEXT_DEPOT_CREDIT" )
	local f27_local2 = f0_local0 / 2 - f27_local0
	local f27_local3, f27_local4, f27_local5, f27_local6 = GetTextDimensions( f27_local1, f0_local5.Font, f27_local2 )
	local f27_local7 = 2
	f27_arg0.currencyInfoPanel.creditProgressContainer = LUI.MenuBuilder.BuildAddChild( f27_arg0.currencyInfoPanel, {
		type = "UIElement",
		id = f27_arg0.id .. "_creditProgressContainer",
		states = {
			default = {
				leftAnchor = false,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = -f27_local5,
				right = 0,
				top = 0,
				bottom = 0
			}
		}
	} )
	f27_arg0.currencyInfoPanel.creditProgressContainer.nextDepotCreditText = LUI.MenuBuilder.BuildAddChild( f27_arg0.currencyInfoPanel.creditProgressContainer, {
		type = "UIText",
		id = f27_arg0.currencyInfoPanel.creditProgressContainer.id .. "_nextDepotCreditText",
		properties = {
			text = f27_local1
		},
		states = {
			default = {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = false,
				left = 0,
				right = 0,
				top = f27_local7,
				bottom = f27_local2,
				font = f0_local5.Font,
				horizontalAlignment = LUI.HorizontalAlignment.Center,
				verticalAlignment = LUI.VerticalAlignment.Top,
				color = Colors.primary_text_color
			}
		}
	} )
	f27_arg0.currencyInfoPanel.creditProgressContainer.nextDepotCreditText:setupAutoScaleText()
	local f27_local8 = GetCurrencyBalance( InventoryCurrencyType.Credits, f27_arg0.exclusiveController )
	f27_arg0.currencyInfoPanel.creditProgressContainer.creditProgressBar = LUI.MenuBuilder.BuildAddChild( f27_arg0.currencyInfoPanel.creditProgressContainer, {
		type = "UIProgressBar",
		id = f27_arg0.currencyInfoPanel.creditProgressContainer.id .. "_creditProgressBar",
		properties = {
			background_color = Colors.h1.dark_grey,
			segment_colors = {
				Colors.h1.light_grey
			},
			progress_values = {
				f27_local8 - math.floor( f27_local8 )
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
				top = -f27_local2,
				bottom = -f27_local7
			}
		}
	} )
	local f27_local9 = {
		InventoryCurrencyType.Credits,
		InventoryCurrencyType.Parts
	}
	if CoD.IsCPEnabled() then
		f27_local9[#f27_local9 + 1] = InventoryCurrencyType.CoDPoints
	end
	f27_local2 = f0_local0 * f0_local2
	local f27_local10 = f27_local2 / 2
	local f27_local11 = 2
	f27_arg0.currencyInfoPanel.currencyBalanceContainers = {}
	for f27_local12 = 1, #f27_local9, 1 do
		f27_local1 = tostring( math.floor( GetCurrencyBalance( f27_local9[f27_local12], f27_arg0.exclusiveController ) ) )
		f27_local3, f27_local4, f27_local5, f27_local6 = GetTextDimensions( f27_local1, f0_local5.Font, f27_local2 )
		local f27_local15 = nil
		if f27_local12 == 1 then
			f27_local15 = f27_arg0.currencyInfoPanel.creditProgressContainer
		else
			f27_local15 = f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12 - 1]]
		end
		local f27_local16 = {
			leftAnchor = true,
			rightAnchor = false,
			topAnchor = true,
			bottomAnchor = true,
			left = -f27_local5 - f0_local1 - f0_local4 - f0_local3,
			right = -f0_local1,
			top = 0,
			bottom = 0
		}
		f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12]] = LUI.MenuBuilder.BuildAddChild( f27_local15, {
			type = "UIElement",
			id = f27_arg0.currencyInfoPanel.id .. "_currencyBalanceContainer_" .. f27_local9[f27_local12],
			states = {
				default = f27_local16
			}
		} )
		f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12]].defaultAnimationState = f27_local16
		f27_local16 = {
			leftAnchor = false,
			rightAnchor = true,
			topAnchor = false,
			bottomAnchor = false,
			left = -f27_local5,
			right = 0,
			top = f27_local11 - f27_local10,
			bottom = f27_local11 + f27_local10,
			font = f0_local5.Font,
			horizontalAlignment = LUI.HorizontalAlignment.None,
			verticalAlignment = LUI.VerticalAlignment.None,
			color = Colors.primary_text_color
		}
		f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12]].currencyText = LUI.MenuBuilder.BuildAddChild( f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12]], {
			type = "UIText",
			id = f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12]].id .. "_currencyAmount",
			properties = {
				text = f27_local1
			},
			states = {
				default = f27_local16
			}
		} )
		f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12]].currencyText.defaultAnimationState = f27_local16
		f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12]].currencyImg = LUI.MenuBuilder.BuildAddChild( f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12]], {
			type = "UIImage",
			id = f27_arg0.currencyInfoPanel.currencyBalanceContainers[f27_local9[f27_local12]].id .. "_currencyImg",
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
					material = RegisterMaterial( GetCurrencyImage( f27_local9[f27_local12] ) )
				}
			}
		} )
	end
	f27_arg0.currencyInfoPanel:registerEventHandler( "on_crafted_item", function ( element, event )
		f27_arg0:UpdateCurrency( InventoryCurrencyType.Parts )
	end )
	f27_arg0.currencyInfoPanel:registerEventHandler( "inventory", function ( element, event )
		f27_arg0:UpdateCurrency( InventoryCurrencyType.CoDPoints )
	end )
end

LUI.MenuTemplate.HighlightCurrency = function ( f30_arg0, f30_arg1 )
	local f30_local0 = f30_arg0.currencyInfoPanel.currencyBalanceContainers[f30_arg1]
	if f30_local0 ~= nil then
		local f30_local1 = 1000
		local f30_local2 = 1.1
		local f30_local3 = f0_local0 * f0_local2
		if not f30_local0.highlightCurrencyElems then
			f30_local0.highlightCurrencyElems = {}
		end
		local f30_local4 = LUI.DeepCopy( f30_local0.currencyText.defaultAnimationState )
		f30_local4.alpha = 1
		f30_local0.highlightCurrencyElems[f30_arg1] = LUI.UIText.new( f30_local4 )
		f30_local0:addElement( f30_local0.highlightCurrencyElems[f30_arg1] )
		f30_local0.highlightCurrencyElems[f30_arg1]:setText( f30_local0.currencyText.text )
		f30_local4.top = (f30_local4.top - f30_local4.bottom) * f30_local2
		local f30_local5, f30_local6, f30_local7, f30_local8 = GetTextDimensions( f30_local0.currencyText.text, f0_local5.Font, f30_local4.bottom - f30_local4.top )
		local f30_local9 = (f30_local7 - f30_local5 - f30_local4.right - f30_local4.left) / 2
		f30_local4.left = f30_local4.left - f30_local9
		f30_local4.right = f30_local4.right + f30_local9
		f30_local4.verticalAlignment = LUI.VerticalAlignment.Bottom
		f30_local4.alpha = 0
		f30_local0.highlightCurrencyElems[f30_arg1]:registerAnimationState( "highlight", f30_local4 )
		f30_local0.highlightCurrencyElems[f30_arg1]:animateInSequence( {
			{
				"default",
				0
			},
			{
				"highlight",
				f30_local1
			}
		}, nil, true, true )
		f30_local0:registerEventHandler( "remove_highlight", function ( element, event )
			element:removeElement( element.highlightCurrencyElems[f30_arg1] )
			element.highlightCurrencyElems[f30_arg1] = nil
		end )
		f30_local0:addElement( LUI.UITimer.new( f30_local1, "remove_highlight", nil, true ) )
	end
end

LUI.MenuTemplate.UpdateCurrency = function ( f32_arg0, f32_arg1 )
	local f32_local0 = f32_arg0.currencyInfoPanel.currencyBalanceContainers[f32_arg1]
	if f32_local0 ~= nil then
		local f32_local1 = GetCurrencyBalance( f32_arg1, f32_arg0.exclusiveController )
		local f32_local2 = tostring( math.floor( f32_local1 ) )
		local f32_local3, f32_local4, f32_local5, f32_local6 = GetTextDimensions( f32_local2, f0_local5.Font, f0_local0 * f0_local2 )
		f32_local0.defaultAnimationState.left = -f32_local5 - f0_local1 - f0_local4 - f0_local3
		f32_local0:registerAnimationState( "default", f32_local0.defaultAnimationState )
		f32_local0:animateToState( "default" )
		f32_local0.currencyText.defaultAnimationState.left = -f32_local5
		f32_local0.currencyText:registerAnimationState( "default", f32_local0.currencyText.defaultAnimationState )
		f32_local0.currencyText:animateToState( "default" )
		f32_local0.currencyText:setText( f32_local2 )
		f32_local0.currencyText.text = f32_local2
		if f32_arg1 == InventoryCurrencyType.Credits then
			f32_arg0.currencyInfoPanel.creditProgressContainer.creditProgressBar:processEvent( {
				name = "progress_refresh",
				newValues = {
					f32_local1 - math.floor( f32_local1 )
				}
			} )
		end
	end
end

LUI.MenuTemplate.OnGainFocus = function ( f33_arg0, f33_arg1 )
	if f33_arg0.list ~= nil then
		f33_arg0.list:processEvent( f33_arg1 )
	end
end

LUI.MenuTemplate.AddWorldBlur = function ( f34_arg0, f34_arg1, f34_arg2 )
	local self = LUI.UIElement.new( {
		worldBlur = f34_arg2 or 5
	} )
	self.id = f34_arg1 .. "_blur"
	self:setupWorldBlur()
	f34_arg0:addElement( self )
end

LUI.MenuTemplate.AddDarken = function ( f35_arg0, f35_arg1, f35_arg2, f35_arg3 )
	local f35_local0 = CoD.CreateState( -100, -100, 100, 100, CoD.AnchorTypes.All )
	f35_local0.material = RegisterMaterial( "black" )
	f35_local0.alpha = 0
	local self = LUI.UIImage.new( f35_local0 )
	self.id = f35_arg1 .. "_darken"
	self:setupFullWindowElement()
	f35_arg0:addElement( self )
	self:registerAnimationState( "end_state", {
		alpha = f35_arg3
	} )
	self:animateToState( "end_state", f35_arg2 or 0, true, true )
end

LUI.MenuTemplate.AddVignette = function ( f36_arg0 )
	local f36_local0 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f36_local0.material = RegisterMaterial( "h1_ui_bg_vignette" )
	local self = LUI.UIImage.new( f36_local0 )
	self:setupFullWindowElement()
	f36_arg0:addElement( self )
end

LUI.MenuTemplate.AddImageDecorations = function ( f37_arg0 )
	if Engine.InFrontend() then
		local f37_local0 = CoD.CreateState( nil, 0, nil, nil, CoD.AnchorTypes.TopLeftRight )
		f37_local0.height = 104
		f37_local0.left = -2
		f37_local0.material = RegisterMaterial( "h1_ui_header_glitch" )
		f37_arg0:addElement( LUI.UIImage.new( f37_local0 ) )
		f37_local0 = CoD.CreateState( nil, nil, nil, 0, CoD.AnchorTypes.BottomLeftRight )
		f37_local0.height = 80
		f37_local0.material = RegisterMaterial( "h1_ui_footer_glitch" )
		f37_arg0:addElement( LUI.UIImage.new( f37_local0 ) )
	end
end

LUI.MenuTemplate.InitInGameBkg = function ( f38_arg0, f38_arg1, f38_arg2, f38_arg3 )
	if not Engine.InFrontend() then
		if Engine.IsMultiplayer() then
			LUI.MenuTemplate.AddWorldBlur( f38_arg0, f38_arg1 )
			LUI.MenuTemplate.AddDarken( f38_arg0, f38_arg1, 0, 0.5 )
		else
			LUI.MenuTemplate.AddWorldBlur( f38_arg0, f38_arg1, 9 )
			LUI.MenuTemplate.AddDarken( f38_arg0, f38_arg1, f38_arg3, 0.7 )
		end
	end
end

LUI.MenuTemplate.AddBackButton = function ( f39_arg0, f39_arg1, f39_arg2 )
	if not f39_arg1 then
		f39_arg1 = MBh.LeaveMenu()
	end
	local f39_local0 = f39_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addBackButton, f39_arg1, f39_arg2, true )
	f39_local0:clearActionSFX()
	return f39_local0
end

LUI.MenuTemplate.AddBackButtonWithSelector = function ( f40_arg0, f40_arg1, f40_arg2 )
	if not f40_arg1 then
		f40_arg1 = MBh.LeaveMenu()
	end
	local f40_local0 = f40_arg0
	local f40_local1 = f40_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addBackButton, function ( f41_arg0, f41_arg1 )
		if f40_local0.ActiveSelector then
			LUI.Options.CloseSelectionMenu( f40_local0, true )
		else
			f40_arg1( f41_arg0, f41_arg1 )
		end
	end, f40_arg2, true )
	f40_local1:clearActionSFX()
	return f40_local1
end

LUI.MenuTemplate.AddHelpButton = function ( f42_arg0 )
	f42_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addHelpButton, function ( f43_arg0, f43_arg1 )
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

LUI.MenuTemplate.SetBreadCrumb = function ( f46_arg0, f46_arg1 )
	f46_arg0:dispatchEventToChildren( {
		name = "update_breadcrumb_text",
		string = f46_arg1,
		dispatchChildren = true
	} )
end

LUI.MenuTemplate.GetTitleDimensions = function ( f47_arg0 )
	return GetTextDimensions( f47_arg0, CoD.TextSettings.H1TitleFont.Font, CoD.TextSettings.H1TitleFont.Height )
end

LUI.MenuTemplate.AddDotElement = function ( f48_arg0, f48_arg1, f48_arg2, f48_arg3, f48_arg4 )
	local f48_local0 = Engine.IsRightToLeftLanguage()
	local f48_local1, f48_local2, f48_local3, f48_local4 = LUI.MenuTemplate.GetTitleDimensions( f48_arg1 )
	local f48_local5 = {
		type = "UIImage"
	}
	local f48_local6 = {}
	local f48_local7 = {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false
	}
	if f48_local0 then
		local f48_local8 = f48_arg2
	end
	f48_local7.left = f48_local8 or f48_arg2 + f48_local3 + 10
	f48_local7.width = 8
	f48_local7.top = LUI.MenuTemplate.Title.Top + f48_arg3 + CoD.TextSettings.H1TitleFont.Height - 12
	f48_local7.height = 8
	f48_local7.material = RegisterMaterial( "h1_deco_title_point" )
	f48_local7.alpha = 1
	f48_local6.default = f48_local7
	f48_local6.hidden = {
		alpha = 0
	}
	f48_local5.states = f48_local6
	f48_local5.handlers = {
		start_anim = function ( f49_arg0, f49_arg1 )
			local f49_local0 = GenericMenuAnimationSettings.DotDuration
			local f49_local1 = MBh.AnimateSequence( {
				{
					"hidden",
					0
				},
				{
					"default",
					f49_local0,
					true,
					true
				},
				{
					"hidden",
					f49_local0,
					true,
					true
				},
				{
					"default",
					f49_local0,
					true,
					true
				},
				{
					"hidden",
					f49_local0,
					true,
					true
				},
				{
					"default",
					f49_local0,
					true,
					true
				},
				{
					"hidden",
					f49_local0,
					true,
					true
				},
				{
					"default",
					f49_local0,
					true,
					true
				}
			} )
			f49_local1( f49_arg0 )
		end
	}
	f48_arg0.dotElement = LUI.MenuBuilder.BuildAddChild( f48_arg0, f48_local5 )
	f48_arg0.dotElement:processEvent( {
		name = "start_anim"
	} )
	f48_local6 = false
	if f48_arg4 then
		if f48_arg4 > 1 and true == GameX.IsRankedMatch() then
			f48_local7 = CoD.CreateState( f48_local3 + 17, 13, f48_local3 + 77, 73, CoD.AnchorTypes.TopLeft )
			if f48_arg4 == 2 then
				f48_local7.material = RegisterMaterial( "ui_reward_small_double_xp" )
			elseif f48_arg4 == 4 then
				f48_local7.material = RegisterMaterial( "ui_reward_small_quad_xp" )
			end
			f48_arg0.doubleXpElement = LUI.MenuBuilder.BuildAddChild( f48_arg0, LUI.UIImage.new( f48_local7 ) )
		else
			f48_local6 = true
		end
	else
		f48_local6 = true
	end
	if f48_arg0.doubleXpElement and f48_local6 == true then
		f48_arg0:removeElement( f48_arg0.doubleXpElement )
		f48_arg0.doubleXpElement = nil
	end
end

LUI.MenuTemplate.useSharedTitle = true
LUI.MenuTemplate.AddTitle = function ( f50_arg0, f50_arg1, f50_arg2, f50_arg3, f50_arg4, f50_arg5, f50_arg6, f50_arg7 )
	if f50_arg2 then
		f50_arg1 = Engine.ToUpperCase( f50_arg1 )
	end
	local f50_local0 = f50_arg4 or 0
	local f50_local1 = f50_arg5 or 0
	if wholeTitle.MenuTemplate.Title.element ~= nil then
		assert( wholeTitle.MenuTemplate.Title.active == false )
		assert( wholeTitle.MenuTemplate.Title.headertext )
		f50_arg0:addElement( wholeTitle.MenuTemplate.Title.element )
		f50_arg0.wholeTitle = wholeTitle.MenuTemplate.Title.element
		
		f50_arg0.title = wholeTitle.MenuTemplate.Title.headertext
		wholeTitle.MenuTemplate.Title.active = true
		f50_arg0:dispatchEventToChildren( {
			name = "update_header_text",
			string = f50_arg1,
			dispatchChildren = true
		} )
		if not f50_arg6 and wholeTitle.MenuTemplate.Title.element.dotElement ~= nil then
			wholeTitle.MenuTemplate.Title.element.dotElement:close()
		end
		wholeTitle.MenuTemplate.Title.element = nil
		return 
	end
	local f50_local2 = Engine.IsRightToLeftLanguage()
	local f50_local3 = wholeTitle.MenuBuilder.BuildAddChild
	local f50_local4 = f50_arg0
	local f50_local5 = {
		type = "generic_menu_title",
		id = "generic_title"
	}
	local f50_local6 = {
		menu_title = f50_arg1,
		menu_title_width = f50_arg3
	}
	local f50_local7
	if f50_local2 then
		f50_local7 = 14
		if not f50_local7 then
		
		else
			f50_local6.headerStartX = f50_local7
			f50_local6.marqueePadding = -5
			f50_local5.properties = f50_local6
			f50_local5.states = {
				default = {
					topAnchor = true,
					bottomAnchor = false,
					leftAnchor = true,
					rightAnchor = false,
					left = f50_local0,
					top = f50_local1,
					alpha = 1
				},
				hidden = {
					alpha = 0
				}
			}
			f50_local3 = f50_local3( f50_local4, f50_local5 )
			f50_arg0.wholeTitle = f50_local3
			f50_arg0.title = f50_local3:getFirstDescendentById( "header_text" )
			assert( f50_arg0.title, "Title need a header text." )
			if wholeTitle.MenuTemplate.useSharedTitle then
				wholeTitle.MenuTemplate.Title.active = true
				f50_local3:registerEventHandler( "menu_close", function ( element, event )
					assert( LUI.MenuTemplate.Title.element == nil )
					local f51_local0 = element:getParent()
					LUI.MenuTemplate.Title.element = element
					LUI.MenuTemplate.Title.headertext = f51_local0.title
					f51_local0:removeElement( element )
					f51_local0.title = nil
					LUI.MenuTemplate.Title.active = false
					LUI.MenuTemplate.SetBreadCrumb( element, LUI.MenuTemplate.GetDefaultBreadCrumpText() )
				end )
				f50_local3:registerEventHandler( "closeallmenus", function ( element, event )
					element:close()
					LUI.MenuTemplate.Title.active = false
					LUI.MenuTemplate.Title.element = nil
					LUI.MenuTemplate.Title.headertext = nil
				end )
			end
		end
	end
	f50_local7 = 0
end

function OnPartyStatusRefresh( f53_arg0, f53_arg1, f53_arg2 )
	local f53_local0 = Lobby.GetPartyStatus()
	if f53_arg2 then
		f53_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "partyStatus",
			helper_text = f53_local0,
			side = "left",
			clickable = false,
			color = Colors.s1.text_focused,
			bindTextID = "PrivatePartyStatus",
			width = 500
		}, nil, nil, true )
	else
		f53_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "partyStatus",
			helper_text = f53_local0,
			side = "left",
			clickable = false,
			color = Colors.s1.text_focused,
			width = 500
		}, nil, nil, true )
	end
end

function SetupUIBindTextDelayed( f54_arg0, f54_arg1 )
	f54_arg0:setupUIBindText( "PrivatePartyStatus" )
	f54_arg0:setClass( LUI.UIText )
	local f54_local0 = f54_arg0:getParent()
	if f54_local0 then
		local f54_local1 = f54_local0:getChildById( "partyStatusTimer" )
		if f54_local1 then
			LUI.UITimer.Stop( f54_local1 )
			f54_local1:close()
		end
	end
end

LUI.MenuTemplate.AddPartyStatus = function ( f55_arg0, f55_arg1, f55_arg2, f55_arg3 )
	local f55_local0 = CoD.TextSettings.BodyFontSmall
	local f55_local1 = -16
	local f55_local2 = 160
	if f55_arg3 then
		f55_local1 = -GenericFooterDims.Height
	end
	local f55_local3 = f55_local1 - f55_local0.Height
	local f55_local4 = 0
	OnPartyStatusRefresh( f55_arg0, nil, f55_arg1 )
	f55_arg0:registerEventHandler( "refreshPartyStatus", OnPartyStatusRefresh )
	f55_local4 = 200
	if f55_local4 > 0 then
		f55_arg0:addElement( LUI.UITimer.new( f55_local4, "refreshPartyStatus" ) )
	end
end

LUI.MenuTemplate.RefreshFriendsWidget = function ( f56_arg0 )
	if f56_arg0.friendsWidget then
		f56_arg0.friendsWidget:processEvent( {
			name = "live_connection"
		} )
	end
end

LUI.MenuTemplate.AddMapDisplay = function ( f57_arg0, f57_arg1, f57_arg2 )
	local f57_local0 = f57_arg1()
	f57_local0.parentList = f57_arg0.list
	if f57_arg2 then
		f57_arg0:AddSpacing( 17 )
	else
		f57_arg0:AddSpacing( 78 )
	end
	f57_arg0.list:addElement( f57_local0 )
	f57_local0:Refresh()
	f57_arg0.mapDisplay = f57_local0
end

LUI.MenuTemplate.AddRotateHelp = function ( f58_arg0 )
	if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
		f58_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addRightStickButton )
	else
		f58_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addMouseDrag )
	end
end

LUI.MenuTemplate.CountdownTextPadding = 18
LUI.MenuTemplate.RefreshCountdownTimer = function ( f59_arg0, f59_arg1, f59_arg2, f59_arg3, f59_arg4 )
	local f59_local0 = false
	if MatchRules.IsUsingMatchRulesData() then
		f59_local0 = MatchRules.GetData( "commonOption", "timeLimit" ) == 0
	end
	if f59_arg2.countdownStarted == true and f59_arg2.countdownTextHidden == true then
		f59_arg1:animateToState( "hidden" )
		if f59_local0 == false then
			local f59_local1, f59_local2, f59_local3, f59_local4 = f59_arg2:getLocalRect()
			f59_arg3:registerAnimationState( "widthAdjust", {
				width = f59_local3 - f59_local1 + LUI.MenuTemplate.CountdownTextPadding
			} )
			f59_arg3:animateToState( "widthAdjust" )
			f59_arg2:animateToState( "default" )
			f59_arg4:animateToState( "default" )
		end
	else
		if f59_arg0 ~= 0 then
			f59_arg2.countdownStarted = true
		end
		if f59_arg0 >= 11 then
			f59_arg1:animateToState( "default" )
		elseif f59_arg0 <= 10 and f59_arg2.countdownStarted == true then
			f59_arg1:animateToState( "warning" )
			f59_arg4:animateToState( "warning" )
		end
		if f59_arg2.countdownStarted == true and f59_arg2.countdownTextHidden == false then
			if f59_arg0 == 0 then
				f59_arg1:animateToState( "default" )
				f59_arg4:animateToState( "default" )
				f59_arg1:setText( Engine.Localize( "@MP_MATCH_STARTING" ) )
				local f59_local1, f59_local2, f59_local3, f59_local4 = GetTextDimensions( Engine.Localize( "@MP_MATCH_STARTING" ), CoD.TextSettings.BodyFont24.Font, CoD.TextSettings.BodyFontSmall.Height )
				f59_arg3:registerAnimationState( "widthAdjust", {
					width = f59_local3 + LUI.MenuTemplate.CountdownTextPadding
				} )
				f59_arg3:animateToState( "widthAdjust" )
				if f59_local0 == true then
					f59_arg2.countdownTextHidden = true
					if f59_arg2.delayTimer == nil then
						local self = LUI.UITimer.new( 2000, "delay_complete", nil, true )
						f59_arg2.delayTimer = self
						f59_arg1:registerEventHandler( "delay_complete", function ()
							f59_arg3:hide()
						end )
						f59_arg1:addElement( self )
					end
				end
			else
				local f59_local1 = Engine.Localize( "@MP_MATCH_BEGINS_IN_VAL", f59_arg0 )
				local f59_local2, f59_local3, f59_local4, self = GetTextDimensions( f59_local1, CoD.TextSettings.BodyFont24.Font, CoD.TextSettings.BodyFontSmall.Height )
				f59_arg1:setText( f59_local1 )
				f59_arg3:registerAnimationState( "widthAdjust", {
					width = f59_local4 + LUI.MenuTemplate.CountdownTextPadding
				} )
				f59_arg3:animateToState( "widthAdjust" )
			end
		end
	end
end

LUI.MenuTemplate.SetGameEndedText = function ( f61_arg0, f61_arg1, f61_arg2, f61_arg3 )
	local f61_local0 = {
		{
			name = Engine.ToUpperCase( Engine.Localize( Engine.GetDvarString( "g_TeamName_Axis" ) ) ),
			icon = Engine.GetDvarString( "g_TeamIcon_Axis" )
		},
		{
			name = Engine.ToUpperCase( Engine.Localize( Engine.GetDvarString( "g_TeamName_Allies" ) ) ),
			icon = Engine.GetDvarString( "g_TeamIcon_Allies" )
		}
	}
	if string.find( tostring( f61_local0[Teams.allies].name ), "MARINES" ) then
		CoD.SwapFactionReasonStrings()
	else
		CoD.RestoreFactionReasonStrings()
	end
	local f61_local1 = Engine.Localize( CoD.ReasonStrings[f61_arg0] )
	f61_arg1:animateToState( "default" )
	f61_arg3:animateToState( "default" )
	f61_arg2:show()
	f61_arg1:setText( f61_local1 )
	local f61_local2, f61_local3, f61_local4, f61_local5 = GetTextDimensions( f61_local1, CoD.TextSettings.BodyFont24.Font, CoD.TextSettings.BodyFontSmall.Height )
	f61_arg2:registerAnimationState( "widthAdjust", {
		width = f61_local4 + LUI.MenuTemplate.CountdownTextPadding
	} )
	f61_arg2:animateToState( "widthAdjust" )
end

LUI.MenuTemplate.AddCountdownTimer = function ( f62_arg0 )
	local f62_local0 = 25
	local self = LUI.UIElement.new( {
		top = f62_local0,
		left = 0,
		bottom = f62_local0 * 2,
		topAnchor = true,
		bottomAnchor = false,
		rightAnchor = false,
		leftAnchor = false
	} )
	local f62_local2 = LUI.UIImage.new( {
		material = RegisterMaterial( "black" ),
		topAnchor = true,
		bottomAnchor = true,
		rightAnchor = true,
		leftAnchor = true
	} )
	local f62_local3 = LUI.DecoFrame.new( {
		topAnchor = true,
		bottomAnchor = true,
		rightAnchor = true,
		leftAnchor = true,
		color = Colors.white
	}, LUI.DecoFrame.Grey )
	f62_local3:registerAnimationState( "warning", {
		color = {
			r = 1,
			g = 0.23,
			b = 0.27
		}
	} )
	local f62_local4 = LUI.MenuBuilder.buildItems( {
		type = "timersHudDef"
	}, {} )
	f62_local4:registerAnimationState( "default", {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		height = CoD.TextSettings.TitleFontSmallBold.Height,
		alpha = 1
	} )
	f62_local4:registerAnimationState( "hidden", {
		alpha = 0
	} )
	f62_local4:animateToState( "hidden" )
	f62_local4.countdownStarted = false
	f62_local4.countdownTextHidden = false
	local f62_local5 = CoD.CreateState( nil, 6, nil, nil, CoD.AnchorTypes.TopLeftRight )
	f62_local5.font = CoD.TextSettings.BodyFontSmall.Font
	f62_local5.height = CoD.TextSettings.BodyFontSmall.Height
	f62_local5.color = GenericMenuColors.text_highlight
	f62_local5.alignment = LUI.Alignment.Center
	f62_local5.alpha = 1
	local f62_local6 = LUI.UIText.new( f62_local5 )
	f62_local6:setTextStyle( CoD.TextStyle.Shadowed )
	f62_local6:registerAnimationState( "warning", {
		color = {
			r = 1,
			g = 0.23,
			b = 0.27
		}
	} )
	f62_local6:registerAnimationState( "hidden", {
		alpha = 0
	} )
	f62_local6:registerOmnvarHandler( "ui_match_countdown", function ( f63_arg0, f63_arg1 )
		LUI.MenuTemplate.RefreshCountdownTimer( f63_arg1.value, f62_local6, f62_local4, self, f62_local3 )
	end )
	LUI.MenuTemplate.RefreshCountdownTimer( Game.GetOmnvar( "ui_match_countdown" ), f62_local6, f62_local4, self, f62_local3 )
	f62_local4:registerEventHandler( "timer_active", function ( element, event )
		if f62_local4.countdownTextHidden == false then
			f62_local4.countdownStarted = true
			f62_local4.countdownTextHidden = true
			f62_local6:animateToState( "hidden" )
			local f64_local0, f64_local1, f64_local2, f64_local3 = f62_local4:getLocalRect()
			self:registerAnimationState( "widthAdjust", {
				width = f64_local2 - f64_local0 + 18
			} )
			self:animateToState( "widthAdjust" )
			f62_local4:animateToState( "default" )
			f62_local3:animateToState( "default" )
		end
	end )
	f62_local4:registerEventHandler( "timer_timeout", function ( element, event )
		local f65_local0 = Game.GetOmnvar( "ui_round_end_reason" )
		if f65_local0 ~= 0 then
			LUI.MenuTemplate.SetGameEndedText( f65_local0, f62_local6, self, f62_local3 )
		end
	end )
	self:addElement( f62_local2 )
	self:addElement( f62_local3 )
	self:addElement( f62_local6 )
	self:addElement( f62_local4 )
	f62_arg0:addElement( self )
end

LUI.MenuTemplate.new = function ( f66_arg0, f66_arg1 )
	assert( f66_arg0 ~= nil )
	if not f66_arg1 then
		f66_arg1 = {}
	end
	if GameX.IsSplitscreen() then
		f66_arg1.do_not_add_friends_helper = true
	end
	local f66_local0 = CoD.CreateState( DesignGridDims.horz_gutter, DesignGridDims.vert_gutter, -DesignGridDims.horz_gutter, -DesignGridDims.vert_gutter, CoD.AnchorTypes.All )
	local self = f66_arg1.menu_alpha
	if not self then
		self = 1
	end
	f66_local0.alpha = self
	self = LUI.UIElement.new( f66_local0 )
	self:setClass( LUI.MenuTemplate )
	self:disableTreeFocus()
	self:registerEventHandler( "gain_focus", LUI.MenuTemplate.OnGainFocus )
	self.type = f66_arg0.type
	self.id = self.type .. "_container"
	self.exclusiveController = f66_arg0.properties and f66_arg0.properties.exclusiveController or Engine.GetSignedInAsController()
	self.menu_list_divider_top_offset = f66_arg1.menu_list_divider_top_offset
	self:InitInGameBkg( self.type, f66_arg1.distortion, f66_arg1.delay_display )
	if f66_arg1.menu_bg_state then
		self:AddOptionalBackground( f66_arg1.menu_bg_state )
	end
	if Engine.InFrontend() then
		if f66_arg1.persistentBackground then
			PersistentBackground.Set( f66_arg1.persistentBackground )
		else
			PersistentBackground.Set( PersistentBackground.Variants.Default )
		end
	end
	self:AddVignette()
	self:AddTitle( Engine.Localize( f66_arg1.menu_title ), f66_arg1.uppercase_title, f66_arg1.menu_title_width, nil, nil, f66_arg1.skipAnim, f66_arg1.delay_display )
	if f66_arg1.noHeader == nil or not f66_arg1.noHeader then
		self:AddHeaderDividers( f66_arg1.showTopRightSmallBar )
	end
	local f66_local2 = LUI.MenuTemplate.ListTop
	if f66_arg1.menu_top_indent then
		f66_local2 = f66_local2 + f66_arg1.menu_top_indent
	end
	local f66_local3 = f66_arg1.menu_height
	if not f66_local3 then
		f66_local3 = 200
	end
	f66_local3 = f66_local3 + f66_local2
	local f66_local4 = 0
	local f66_local5 = f66_arg1.menu_width
	if not f66_local5 then
		f66_local5 = GenericMenuDims.menu_width_standard
	end
	f66_local5 = f66_local5 + f66_local4
	local f66_local6 = CoD.CreateState( f66_local4, f66_local2, f66_local5, f66_local3, CoD.AnchorTypes.TopLeft )
	f66_local6.font = CoD.TextSettings.BodyFontSmall.Font
	self.width = f66_local5 - f66_local4
	if f66_arg1.spacing then
		f66_local6.spacing = f66_arg1.spacing
	else
		f66_local6.spacing = H1MenuDims.spacing
	end
	local f66_local7 = nil
	if f66_arg1.subContainer then
		local subContainer = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
		subContainer.id = self.type .. "_sub_container"
		self:addElement( subContainer )
		self.subContainer = subContainer
		
		f66_local7 = subContainer
	else
		f66_local7 = self
	end
	local f66_local9 = nil
	if f66_arg1.scrollInSplitScreen and GameX.IsSplitscreen() then
		f66_local6.bottom = f66_local2 + 265
		f66_local9 = LUI.UIScrollingVerticalList.new( f66_local6, nil, {
			use_arrows = true,
			sendScrollEvents = true,
			autoScroll = LUI.AutoScroll.AnchoredEdges,
			autoScrollTime = 200
		} )
		f66_local9.id = self.type .. "_list"
		f66_local7:addElement( f66_local9 )
	else
		f66_local9 = LUI.UIVerticalList.build( nil, {
			defaultState = f66_local6,
			noWrap = f66_arg1.listNoWrap,
			blockRepeatWrap = true
		} )
		f66_local9.id = self.type .. "_list"
		f66_local7:addElement( f66_local9 )
	end
	f66_local9.buttonCount = 0
	self.list = f66_local9
	if f66_arg1.genericListAction then
		f66_local9.genericListAction = function ( f67_arg0, f67_arg1 )
			if not f67_arg1 then
				f67_arg1 = {}
			end
			f67_arg1.menu = self
			f66_arg1.genericListAction( f67_arg0, f67_arg1 )
		end
		
	end
	local subContainer = LUI.MenuBuilder.BuildAddChild( self, {
		type = "button_helper_text_main",
		id = self.type .. "_help"
	} )
	if f66_arg1.useButtonHelperBG == nil or f66_arg1.useButtonHelperBG then
		LUI.UIButtonText.AddButtonHelperBackground( subContainer )
	end
	subContainer.skipAnim = f66_arg1.skipAnim
	subContainer:setupFullWindowElement()
	self.help = subContainer:getFirstDescendentById( "container" )
	if (Engine.IsConsoleGame() or Engine.IsGamepadEnabled()) and (f66_arg1.showSelectButton == nil or f66_arg1.showSelectButton) then
		self:processEvent( LUI.ButtonHelperText.CommonEvents.addSelectButton )
	end
	if Engine.IsMultiplayer() and (not f66_arg1.do_not_add_friends_helper or f66_arg1.do_not_add_friends_helper ~= true) then
		self.friendsWidget = LUI.MenuBuilder.BuildAddChild( self, {
			type = "online_friends_widget",
			id = "online_friends_widget_id"
		} )
	end
	local f66_local10 = Engine.GetDvarInt( "virtualLobbyMode" )
	if (f66_local10 == VirtualLobbyModes.LUI_MODE_LOBBY or f66_local10 == VirtualLobbyModes.LUI_MODE_CAO or f66_local10 == VirtualLobbyModes.LUI_MODE_CLANPROFILE or f66_local10 == VirtualLobbyModes.LUI_MODE_CAC or f66_local10 == VirtualLobbyModes.LUI_MODE_CAC_WEAP) and not Engine.IsConsoleGame() and Engine.InFrontend() and f66_arg0 and f66_arg0.properties and f66_arg0.properties.weaponType ~= "reticle" then
		self:addElement( VLobbyCharRotArea( nil, {
			vLobbyMode = f66_local10
		} ) )
	end
	local f66_local11 = f66_arg1.partyStatusAboveHelp
	local f66_local12 = LUI.FlowManager.IsInStack
	local f66_local13 = Engine.GetLuiRoot()
	if f66_local12( f66_local13.flowManager, "menu_xboxlive_lobby" ) then
		self:AddPartyStatus( nil, nil, f66_local11 )
	else
		f66_local12 = LUI.FlowManager.IsInStack
		f66_local13 = Engine.GetLuiRoot()
		if not f66_local12( f66_local13.flowManager, "menu_xboxlive_privatelobby" ) then
			f66_local12 = LUI.FlowManager.IsInStack
			f66_local13 = Engine.GetLuiRoot()
			if f66_local12( f66_local13.flowManager, "menu_systemlink" ) then
			
			else
				return self
			end
		end
		self:AddPartyStatus( true, true, f66_local11 )
	end
	return self
end

LockTable( _M )
