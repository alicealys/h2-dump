local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.MarketingPopup = {}
f0_local0 = CoD.TextSettings.BodyFontTiny
f0_local1 = 13
f0_local2 = 17
local f0_local3 = 2
local f0_local4 = 25
local f0_local5 = CoD.TextSettings.TitleFontMediumLarge
local f0_local6 = CoD.TextSettings.TitleFontMedium
local f0_local7 = CoD.TextSettings.Font32
local f0_local8 = CoD.TextSettings.Font27
local f0_local9 = {
	[LUI.MOTD.PopupActionType.REGISTRATION] = "@DEPOT_GO_TO_COD_ACCOUNT",
	[LUI.MOTD.PopupActionType.DEPOT] = "@DEPOT_GO_TO_THE_DEPOT",
	[LUI.MOTD.PopupActionType.STORE] = "@DEPOT_GO_TO_THE_STORE"
}
function LeavePopup( f1_arg0, f1_arg1 )
	f1_arg0:registerEventHandler( "button_action", nil )
	f1_arg0:registerEventHandler( "button_alt1", nil )
	f1_arg0:registerEventHandler( "button_secondary", nil )
	LUI.FlowManager.RequestLeaveMenu( f1_arg0, nil, f1_arg1.immediate )
	LUI.CustomMarketingPopups.ShowDepotOnboardingPopupIfPossible( {
		controller = f1_arg1.controller
	} )
end

function OnPopupAction( f2_arg0, f2_arg1 )
	local f2_local0 = f2_arg0.popupData
	local f2_local1 = f2_local0.messageID
	if f2_local0.isMOTD and f2_local1 ~= nil then
		LUI.ComScore.LogMarketingClick( f2_arg1.controller, f2_local1, LUI.ComScore.MarketingScreen.MOTD )
	end
	DebugPrint( "\nMOTD Popup Action [" .. tostring( f2_arg0.id ) .. "]" )
	for f2_local5, f2_local6 in pairs( f2_local0 ) do
		DebugPrint( "\t[" .. f2_local5 .. "]: [" .. tostring( f2_local6 ) .. "]" )
	end
	DebugPrint( "\n" )
	LeavePopup( f2_arg0, {
		controller = f2_arg1.controller,
		immediate = true
	} )
	if f2_local0.popupAction == LUI.MOTD.ActionType.STORE then
		Sns.OpenStoreMenu( f2_arg1.controller, f2_local0.isMOTD and LUI.ComScore.ScreenID.MOTD or LUI.ComScore.ScreenID.CommsPopup, LUI.ComScore.StoreSource.Marketing )
	elseif f2_local0.popupAction == LUI.MOTD.ActionType.DEPOT then
		Sns.OpenDepotMenu( f2_arg1.controller )
	elseif f2_local0.popupAction == LUI.MOTD.PopupActionType.REGISTRATION then
		Sns.OpenCoDAnywherePopup( f2_arg1.controller )
	end
end

function OnPopupCancel( f3_arg0, f3_arg1, f3_arg2 )
	DebugPrint( "\nLeaving MOTD popup [" .. tostring( f3_arg0.id ) .. "]" )
	if f3_arg2 then
		LeavePopup( f3_arg0, {
			controller = f3_arg1.controller,
			immediate = true
		} )
		if #f3_arg2 > 0 then
			DebugPrint( "\nContinuing to next MOTD message." )
			LUI.FlowManager.RequestPopupMenu( f3_arg0, "motd_main", true, f3_arg1.controller, false, {
				popupDataQueue = f3_arg2
			} )
		else
			DebugPrint( "\nMOTD sequence complete." )
			f3_arg0:dispatchEventToRoot( {
				name = "menu_refresh"
			} )
			Engine.Exec( "checkforPreOrder " )
		end
	else
		LeavePopup( f3_arg0, {
			controller = f3_arg1.controller
		} )
	end
end

function AddTextBox( f4_arg0, f4_arg1 )
	local f4_local0 = CoD.CreateState( f4_arg1.left, f4_arg1.top, f4_arg1.right, f4_arg1.bottom, f4_arg1.anchorType )
	f4_local0.width = f4_arg1.width
	f4_local0.height = f4_arg1.height
	local self = LUI.UIElement.new( f4_local0 )
	f4_arg0:addElement( self )
	if f4_arg1.text then
		local f4_local2 = CoD.CreateState( nil, nil, nil, nil, f4_arg1.textAnchorType )
		f4_local2.width = f4_local0.width
		f4_local2.height = f4_arg1.font and f4_arg1.font.Height or f0_local8.Height
		f4_local2.font = f4_arg1.font and f4_arg1.font.Font or f0_local8.Font
		f4_local2.alignment = LUI.AdjustAlignmentForLanguage( f4_arg1.textAlignment )
		f4_local2.lineSpacingRatio = 0.3
		local f4_local3 = LUI.UIText.new( f4_local2 )
		f4_local3:registerAnimationState( "default", f4_local2 )
		f4_local3:setTextStyle( f4_arg1.textStyle )
		f4_local3:setText( f4_arg1.text )
		self:addElement( f4_local3 )
	end
	return self
end

function AddTemplateContent1( f5_arg0, f5_arg1 )
	local f5_local0 = f5_arg0.width - f0_local2 - f0_local1 * 2
	local f5_local1 = f5_arg0.height - f0_local1 * 2
	local f5_local2 = f5_local0 * 0.56
	local f5_local3 = f5_local0 - f5_local2
	if f5_arg1.image then
		local f5_local4 = CoD.CreateState( f0_local1, nil, nil, nil, CoD.AnchorTypes.Left )
		f5_local4.width = f5_local2
		f5_local4.height = f5_local1
		f5_local4.material = RegisterMaterial( f5_arg1.image )
		f5_arg0:addElement( LUI.UIImage.new( f5_local4 ) )
	end
	local f5_local5 = AddTextBox( f5_arg0, {
		right = -f0_local1,
		anchorType = CoD.AnchorTypes.Right,
		width = f5_local3,
		height = f5_local1
	} )
	local f5_local6 = {
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f5_local3,
		height = f0_local5.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f5_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f5_arg1.h1Header,
		font = f0_local5
	}
	if f5_local6.text then
		AddTextBox( f5_local5, f5_local6 )
	end
	local f5_local7 = {
		top = f5_local6.height + f0_local3,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f5_local3,
		height = f0_local6.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f5_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f5_arg1.h2Header,
		font = f0_local6
	}
	if f5_local7.text then
		AddTextBox( f5_local5, f5_local7 )
	end
	local f5_local8 = {
		top = f5_local7.top + f5_local7.height + f0_local3,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f5_local3,
		height = f0_local7.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f5_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f5_arg1.h3Header,
		font = f0_local7
	}
	if f5_local8.text then
		AddTextBox( f5_local5, f5_local8 )
	end
	local f5_local9 = {
		top = f5_local8.top + f5_local8.height + f0_local4,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f5_local3,
		height = f0_local8.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f5_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f5_arg1.body,
		font = f0_local8
	}
	if f5_local9.text then
		AddTextBox( f5_local5, f5_local9 )
	end
end

function AddTemplateContent2( f6_arg0, f6_arg1 )
	local f6_local0 = f6_arg0.width - f0_local2 - f0_local1 * 2
	local f6_local1 = f6_arg0.height - f0_local1 * 2
	local f6_local2 = f6_local0 * 0.56
	local f6_local3 = f6_local0 - f6_local2
	if f6_arg1.image then
		local f6_local4 = CoD.CreateState( nil, nil, -f0_local1, nil, CoD.AnchorTypes.Right )
		f6_local4.width = f6_local2
		f6_local4.height = f6_local1
		f6_local4.material = RegisterMaterial( f6_arg1.image )
		f6_arg0:addElement( LUI.UIImage.new( f6_local4 ) )
	end
	local f6_local5 = AddTextBox( f6_arg0, {
		left = f0_local1,
		anchorType = CoD.AnchorTypes.Left,
		width = f6_local3,
		height = f6_local1
	} )
	local f6_local6 = {
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f6_local3,
		height = f0_local5.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f6_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f6_arg1.h1Header,
		font = f0_local5
	}
	if f6_local6.text then
		AddTextBox( f6_local5, f6_local6 )
	end
	local f6_local7 = {
		top = f6_local6.height + f0_local3,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f6_local3,
		height = f0_local6.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f6_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f6_arg1.h2Header,
		font = f0_local6
	}
	if f6_local7.text then
		AddTextBox( f6_local5, f6_local7 )
	end
	local f6_local8 = {
		top = f6_local7.top + f6_local7.height + f0_local3,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f6_local3,
		height = f0_local7.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f6_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f6_arg1.h3Header,
		font = f0_local7
	}
	if f6_local8.text then
		AddTextBox( f6_local5, f6_local8 )
	end
	local f6_local9 = {
		top = f6_local8.top + f6_local8.height + f0_local4,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f6_local3,
		height = f0_local8.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f6_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f6_arg1.body,
		font = f0_local8
	}
	if f6_local9.text then
		AddTextBox( f6_local5, f6_local9 )
	end
end

function AddTemplateContent3( f7_arg0, f7_arg1 )
	local f7_local0 = f7_arg0.height * 0.3 - f0_local1 * 2
	local f7_local1 = f7_arg0.width - f0_local1 * 2
	if f7_arg1.image then
		local f7_local2 = CoD.CreateState( f0_local1, f0_local1, -f0_local1, -f0_local1, CoD.AnchorTypes.All )
		f7_local2.material = RegisterMaterial( f7_arg1.image )
		f7_arg0:addElement( LUI.UIImage.new( f7_local2 ) )
	end
	local f7_local3 = AddTextBox( f7_arg0, {
		top = f0_local1,
		anchorType = CoD.AnchorTypes.Top,
		width = f7_local1,
		height = f7_local0
	} )
	local f7_local4 = {
		top = f0_local1,
		anchorType = CoD.AnchorTypes.Top,
		width = f7_local1,
		height = f0_local5.Height,
		textAnchorType = CoD.AnchorTypes.None,
		textAlignment = LUI.Alignment.Center,
		textStyle = f7_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f7_arg1.h1Header,
		font = f0_local5
	}
	if f7_local4.text then
		AddTextBox( f7_local3, f7_local4 )
	end
	local f7_local5 = {
		top = f7_local4.top + f7_local4.height + f0_local3,
		anchorType = CoD.AnchorTypes.Top,
		width = f7_local1,
		height = f0_local6.Height,
		textAnchorType = CoD.AnchorTypes.None,
		textAlignment = LUI.Alignment.Center,
		textStyle = f7_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f7_arg1.h2Header,
		font = f0_local6
	}
	if f7_local5.text then
		AddTextBox( f7_local3, f7_local5 )
	end
	local f7_local6 = AddTextBox( f7_arg0, {
		bottom = -f0_local1,
		anchorType = CoD.AnchorTypes.Bottom,
		width = f7_local1,
		height = f7_local0 - f0_local8.Height
	} )
	local f7_local7 = 64
	local f7_local8 = {
		left = f7_local7,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f7_local1 - f7_local7 * 2,
		height = f0_local8.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f7_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f7_arg1.body,
		font = f0_local8
	}
	if f7_local8.text then
		AddTextBox( f7_local6, f7_local8 )
	end
end

function AddTemplateContent4( f8_arg0, f8_arg1 )
	local f8_local0 = f8_arg0.width - f0_local2 - f0_local1 * 2
	local f8_local1 = f8_arg0.height - f0_local1 * 2
	local f8_local2 = f8_local0 * 0.56
	local f8_local3 = f8_local0 - f8_local2
	if f8_arg1.image then
		local f8_local4 = CoD.CreateState( f0_local1, nil, nil, nil, CoD.AnchorTypes.Left )
		f8_local4.width = f8_local2
		f8_local4.height = f8_local1
		f8_local4.material = RegisterMaterial( f8_arg1.image )
		f8_arg0:addElement( LUI.UIImage.new( f8_local4 ) )
	end
	local f8_local5 = AddTextBox( f8_arg0, {
		right = -f0_local1,
		anchorType = CoD.AnchorTypes.Right,
		width = f8_local3,
		height = f8_local1
	} )
	local f8_local6 = {
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f8_local3,
		height = f0_local5.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f8_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f8_arg1.h1Header,
		font = f0_local5
	}
	if f8_local6.text then
		AddTextBox( f8_local5, f8_local6 )
	end
	local f8_local7 = {
		top = f8_local6.height + f0_local3,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f8_local3,
		height = f0_local7.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f8_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f8_arg1.h3Header,
		font = f0_local7
	}
	if f8_local7.text then
		AddTextBox( f8_local5, f8_local7 )
	end
	local f8_local8 = {
		top = f8_local7.top + f8_local7.height + f0_local4 - 8,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f8_local3,
		height = f0_local8.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Left,
		textStyle = f8_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f8_arg1.body,
		font = f0_local8
	}
	if f8_local8.text then
		AddTextBox( f8_local5, f8_local8 )
	end
end

function AddTemplateContent5( f9_arg0, f9_arg1 )
	local f9_local0 = f9_arg0.height * 0.3 - f0_local1 * 2
	local f9_local1 = f9_arg0.width - f0_local1 * 2
	if f9_arg1.image then
		local f9_local2 = CoD.CreateState( f0_local1, f0_local1, -f0_local1, -f0_local1, CoD.AnchorTypes.All )
		f9_local2.material = RegisterMaterial( f9_arg1.image )
		f9_arg0:addElement( LUI.UIImage.new( f9_local2 ) )
	end
	local f9_local3 = AddTextBox( f9_arg0, {
		top = f0_local1,
		anchorType = CoD.AnchorTypes.Top,
		width = f9_local1,
		height = f9_local0
	} )
	local f9_local4 = {
		top = f0_local1,
		anchorType = CoD.AnchorTypes.Top,
		width = f9_local1,
		height = f0_local5.Height,
		textAnchorType = CoD.AnchorTypes.None,
		textAlignment = LUI.Alignment.Center,
		textStyle = f9_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f9_arg1.h1Header,
		font = f0_local5
	}
	if f9_local4.text then
		AddTextBox( f9_local3, f9_local4 )
	end
	local f9_local5 = {
		top = f9_local4.top + f9_local4.height,
		anchorType = CoD.AnchorTypes.Top,
		width = f9_local1,
		height = f0_local7.Height,
		textAnchorType = CoD.AnchorTypes.None,
		textAlignment = LUI.Alignment.Center,
		textStyle = f9_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f9_arg1.h3Header,
		font = f0_local7
	}
	if f9_local5.text then
		AddTextBox( f9_local3, f9_local5 )
	end
end

function AddTemplateContent6( f10_arg0, f10_arg1 )
	local f10_local0 = f10_arg0.height * 0.3 - f0_local1 * 2
	local f10_local1 = f10_arg0.width - f0_local1 * 2
	local f10_local2 = 76
	if f10_arg1.image then
		local f10_local3 = CoD.CreateState( -f10_local2, f0_local1, -f0_local1, -f0_local1, CoD.AnchorTypes.All )
		f10_local3.material = RegisterMaterial( f10_arg1.image )
		f10_arg0:addElement( LUI.UIImage.new( f10_local3 ) )
	end
	local f10_local4 = AddTextBox( f10_arg0, {
		top = f0_local1,
		anchorType = CoD.AnchorTypes.Top,
		width = f10_local1,
		height = f10_local0
	} )
	local f10_local5 = {
		top = f0_local1,
		anchorType = CoD.AnchorTypes.Top,
		width = f10_local1,
		height = f0_local5.Height,
		textAnchorType = CoD.AnchorTypes.None,
		textAlignment = LUI.Alignment.Center,
		textStyle = f10_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f10_arg1.h1Header,
		font = f0_local5
	}
	if f10_local5.text then
		AddTextBox( f10_local4, f10_local5 )
	end
	local f10_local6 = {
		top = f10_local5.top + f10_local5.height + f0_local3,
		anchorType = CoD.AnchorTypes.Top,
		width = f10_local1,
		height = f0_local7.Height,
		textAnchorType = CoD.AnchorTypes.None,
		textAlignment = LUI.Alignment.Center,
		textStyle = f10_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f10_arg1.h2Header,
		font = f0_local7
	}
	if f10_local6.text then
		AddTextBox( f10_local4, f10_local6 )
	end
	local f10_local7 = AddTextBox( f10_arg0, {
		bottom = -f0_local1,
		anchorType = CoD.AnchorTypes.Bottom,
		width = f10_local1,
		height = f10_local0 - f0_local8.Height
	} )
	local f10_local8 = 100
	local f10_local9 = {
		left = f10_local8,
		anchorType = CoD.AnchorTypes.TopLeft,
		width = f10_local1 - f10_local8 * 2,
		height = f0_local8.Height,
		textAnchorType = CoD.AnchorTypes.Left,
		textAlignment = LUI.Alignment.Center,
		textStyle = f10_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html,
		text = f10_arg1.body,
		font = f0_local8
	}
	if f10_local9.text then
		AddTextBox( f10_local7, f10_local9 )
	end
end

local f0_local10 = {}
table.insert( f0_local10, AddTemplateContent1 )
table.insert( f0_local10, AddTemplateContent2 )
table.insert( f0_local10, AddTemplateContent3 )
table.insert( f0_local10, AddTemplateContent4 )
table.insert( f0_local10, AddTemplateContent5 )
table.insert( f0_local10, AddTemplateContent6 )
function AddButtonsFooter( f11_arg0, f11_arg1, f11_arg2 )
	local self = LUI.UIElement.new( CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.All ) )
	f11_arg0:addElement( self )
	local f11_local1 = LUI.MenuBuilder.BuildAddChild( self, {
		type = "button_helper_text_main"
	} )
	f11_local1:processEvent( LUI.ButtonHelperText.CommonEvents.addBackButton )
	f11_local1:processEvent( {
		name = "add_button_helper_text",
		button_ref = "button_action",
		helper_text = Engine.Localize( "@LUA_MENU_CONTINUE" ),
		side = "left",
		clickable = true,
		priority = -1000
	} )
	if Engine.IsPC() then
		local f11_local2 = f11_local1:getFirstDescendentById( "button_secondary_id" )
		f11_local2:registerEventHandler( "leftmouseup", f11_arg1 )
		local f11_local3 = f11_local1:getFirstDescendentById( "button_action_id" )
		f11_local3:registerEventHandler( "leftmouseup", f11_arg2 )
	end
	local f11_local2 = LUI.UIBindButton.new()
	f11_local2.id = "popup_motd_bind_button"
	f11_local2:registerEventHandler( "button_secondary", f11_arg1 )
	f11_local2.handlePrimary = true
	f11_local2:registerEventHandler( "button_action", f11_arg2 )
	f11_arg0.bind = f11_local2
	f11_arg0:addElement( f11_local2 )
end

LUI.MarketingPopup.Base = function ( f12_arg0, f12_arg1, f12_arg2 )
	local f12_local0 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.All )
	local self = LUI.UIElement.new( f12_local0 )
	self.id = "popup_motd_root"
	self:registerAnimationState( "default", f12_local0 )
	self.alwaysSendMenuClose = true
	self:addElement( LUI.MenuBuilder.BuildRegisteredType( "generic_popup_screen_overlay" ) )
	local f12_local2 = LUI.EULA.BGPaddingBottom
	local f12_local3 = true
	local f12_local4 = f12_arg1.callToAction
	if f12_local4 then
		f12_local4 = f12_arg1.callToAction ~= ""
	end
	if f0_local9[f12_arg1.popupAction] == nil and (not f12_arg1.callToAction or f12_arg1.callToAction == "") then
		f12_local2 = LUI.EULABase.BGPaddingTop
		f12_local3 = false
	end
	local f12_local5 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.None )
	f12_local5.width = LUI.EULA.Width
	local f12_local6
	if f12_arg1.templateNum == 4 or f12_arg1.templateNum == 5 then
		f12_local6 = LUI.EULA.Height / 1.9
		if not f12_local6 then
		
		else
			local f12_local7
			if f12_local2 == LUI.EULABase.BGPaddingTop then
				f12_local7 = LUI.EULA.BGPaddingBottom
				if not f12_local7 then
				
				else
					f12_local5.height = f12_local6 - f12_local7
					f12_local6 = LUI.UIElement.new( f12_local5 )
					self:addElement( f12_local6 )
					f12_local7 = function ( f13_arg0, f13_arg1 )
						Engine.PlaySound( CoD.SFX.SelectBack )
						OnPopupCancel( f13_arg0, f13_arg1, f12_arg2 )
					end
					
					AddButtonsFooter( self, f12_local7, f12_local7 )
					local f12_local8 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
					f12_local8.material = RegisterMaterial( "white" )
					f12_local8.alpha = 0.9
					f12_local8.color = Colors.black
					f12_local6:addElement( LUI.UIImage.new( f12_local8 ) )
					f12_local6:addElement( LUI.DecoFrame.new( nil, LUI.DecoFrame.Grey ) )
					f12_local6:addElement( LUI.Divider.new( CoD.CreateState( 0, -8, 0, nil, CoD.AnchorTypes.TopLeftRight ) ) )
					local f12_local9 = LUI.UIElement.new( CoD.CreateState( LUI.EULA.BGPaddingLR, LUI.EULA.BGPaddingLR, -LUI.EULA.BGPaddingTop, -f12_local2, CoD.AnchorTypes.All ) )
					f12_local9.width = f12_local5.width - LUI.EULA.BGPaddingLR * 2
					f12_local9.height = f12_local5.height - LUI.EULA.BGPaddingTop + f12_local2
					f0_local10[f12_arg1.templateNum]( f12_local9, f12_arg1 )
					f12_local6:addElement( f12_local9 )
					local f12_local10 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.BottomLeftRight )
					f12_local10.height = f12_local2 - LUI.EULABase.BGPaddingTop
					local f12_local11 = LUI.UIElement.new( f12_local10 )
					f12_local6:addElement( f12_local11 )
					local f12_local12 = CoD.CreateState( nil, -f12_local10.height - 1, nil, nil, CoD.AnchorTypes.Bottom )
					local f12_local13
					if f12_local3 then
						f12_local13 = 1
						if not f12_local13 then
						
						else
							f12_local12.alpha = f12_local13
							f12_local12.width = f12_local9.width
							f12_local6:addElement( LUI.Divider.new( f12_local12, 10, LUI.Divider.Grey ) )
							local f12_local14 = -f0_local0.Height / 2 + 1
							local f12_local15 = 12
							local f12_local16 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.None )
							f12_local16.width = 0
							f12_local16.height = f12_local10.height - 10
							local f12_local17 = LUI.UIElement.new( f12_local16 )
							f12_local11:addElement( f12_local17 )
							local f12_local18, f12_local19 = nil
							local f12_local20 = f0_local9[f12_arg1.popupAction]
							if f12_local20 then
								local f12_local21 = 20
								local f12_local22 = Engine.Localize( f12_local20 )
								local f12_local23, f12_local24, f12_local25, f12_local26 = GetTextDimensions2( " " .. f12_local22, f0_local0.Font, f0_local0.Height )
								local f12_local27 = f12_local21 + f12_local25 - f12_local23
								local f12_local28 = f12_local27
								local f12_local29 = f0_local0.Height
								if f12_local4 then
									local f12_local30 = CoD.CreateState( f12_local16.width - f12_local27, f12_local14, nil, nil, CoD.AnchorTypes.Left )
								end
								f12_local18 = f12_local30 or CoD.CreateState( -f12_local28 / 2, f12_local14, nil, nil, CoD.AnchorTypes.Left )
								f12_local18.width = f12_local28
								f12_local18.height = f12_local29
								f12_local19 = LUI.UIElement.new( f12_local18 )
								f12_local17:addElement( f12_local19 )
								local f12_local31 = LUI.MenuBuilder.BuildAddChild( f12_local19, {
									type = "button_helper_text_main"
								} )
								f12_local31:processEvent( {
									name = "add_button_helper_text",
									button_ref = "button_alt1",
									helper_text = f12_local22,
									side = "right",
									clickable = true,
									priority = -1000
								} )
								self.bind.popupData = f12_arg1
								self.bind:registerEventHandler( "button_alt1", OnPopupAction )
								local f12_local32 = 130
								local f12_local33 = 34
								local f12_local34 = f12_local31:getFirstDescendentById( "button_alt1_id" )
								f12_local18.left = f12_local32 - f12_local27 / 2
								f12_local18.top = f12_local33
								f12_local31:registerAnimationState( "shift", f12_local18 )
								f12_local31:animateToState( "shift" )
							end
							local f12_local21 = nil
							if f12_local4 then
								local f12_local22 = f12_arg1.callToAction
								local f12_local35, f12_local23, f12_local24, f12_local25 = GetTextDimensions2( f12_local22, f0_local0.Font, f0_local0.Height )
								if f12_local20 then
									local f12_local36 = CoD.CreateState( nil, f12_local14, nil, nil, CoD.AnchorTypes.Left )
								end
								f12_local21 = f12_local36 or CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.None )
								f12_local21.font = f0_local0.Font
								f12_local21.color = Colors.h1.light_grey
								local f12_local26
								if f12_local20 then
									f12_local26 = f12_local24 - f12_local35 - (f12_arg1.callToActionLengthOffset or 0)
									if not f12_local26 then
									
									else
										f12_local21.width = f12_local26
										f12_local21.height = f0_local0.Height
										if not f12_local20 then
											f12_local26 = LUI.Alignment.Center
											if not f12_local26 then
											
											else
												f12_local21.alignment = f12_local26
												f12_local26 = LUI.UIText.new( f12_local21 )
												f12_local26:setTextStyle( f12_arg1.noHtml and CoD.TextStyle.Shadowed or CoD.TextStyle.Html )
												f12_local26:setText( f12_local22 )
												f12_local17:addElement( f12_local26 )
											end
										end
										f12_local26 = nil
									end
								end
								f12_local26 = f12_local5.width
							end
							if f12_local20 and f12_local4 then
								f12_local16.width = f12_local21.width + f12_local15 + f12_local18.width
								f12_local17:registerAnimationState( "default", f12_local16 )
								f12_local17:animateToState( "default" )
								local f12_local22 = 15
								local f12_local23 = f12_local19
								local f12_local35 = f12_local19.registerAnimationState
								local f12_local24 = "default"
								local f12_local25 = {}
								local f12_local26 = f12_local16.width - f12_local18.width
								if Engine.IsPC() then
									local f12_local37 = f12_local22
								end
								f12_local25.left = f12_local26 + (f12_local37 or 0)
								f12_local25.width = f12_local18.width
								f12_local25.leftAnchor = true
								f12_local25.topAnchor = false
								f12_local25.rightAnchor = false
								f12_local25.bottomAnchor = false
								f12_local35( f12_local23, f12_local24, f12_local25 )
								f12_local19:animateToState( "default" )
							end
							return self
						end
					end
					f12_local13 = 0
				end
			end
			f12_local7 = 0
		end
	end
	f12_local6 = LUI.EULA.Height
end

LUI.MarketingPopup.new = function ( f14_arg0, f14_arg1 )
	return LUI.MarketingPopup.Base( f14_arg0, {
		h1Header = f14_arg1.title,
		h2Header = f14_arg1.content_short,
		h3Header = f14_arg1.h3_header,
		body = f14_arg1.content_long,
		image = f14_arg1.popup_image or f14_arg1.image,
		action = f14_arg1.action,
		popupAction = f14_arg1.popup_action,
		callToAction = f14_arg1.popup_action_title or f14_arg1.action_title,
		callToActionLengthOffset = f14_arg1.call_to_action_length_offset or 0,
		item_name = f14_arg1.item,
		noHtml = f14_arg1.noHtml,
		debug_id = f14_arg1.debug_id,
		templateNum = f14_arg1.template or 1
	} )
end

LUI.MenuBuilder.registerPopupType( "MarketingPopup", LUI.MarketingPopup.new )
LockTable( _M )
