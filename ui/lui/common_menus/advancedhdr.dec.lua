local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
DebugPrint( "Registering " .. _NAME )
f0_local0 = {
	{
		name = Engine.Localize( "MENU_HDR_MIN_LUMINANCE_NAME" ),
		dvar = "r_hdrDisplayMinLuminance",
		profileDataVar = "hdrMinLuminance",
		min = 0,
		max = 2,
		step = 0.05,
		default = 0,
		previousSetting = default,
		barElement = nil,
		textElement = nil,
		recommendedBar = nil,
		borderElement = nil,
		description = Engine.Localize( "MENU_HDR_MIN_LUMINANCE_DESC" )
	},
	{
		name = Engine.Localize( "MENU_HDR_SCENE_REF_NAME" ),
		dvar = "r_hdrDisplayRefSceneLuminance",
		profileDataVar = "hdrSceneLuminance",
		min = 60,
		max = 500,
		step = 20,
		default = 200,
		previousSetting = default,
		barElement = nil,
		textElement = nil,
		recommendedBar = nil,
		borderElement = nil,
		description = Engine.Localize( "MENU_HDR_SCENE_REF_DESC" )
	},
	{
		name = Engine.Localize( "MENU_HDR_UI_REF_NAME" ),
		dvar = "r_hdrDisplayRefUILuminance",
		profileDataVar = "hdrUILuminance",
		min = 60,
		max = 600,
		step = 20,
		default = 300,
		previousSetting = default,
		barElement = nil,
		textElement = nil,
		recommendedBar = nil,
		borderElement = nil,
		description = Engine.Localize( "MENU_HDR_UI_REF_DESC" )
	}
}
function UpdateHdrDebugInfo( f1_arg0 )
	f1_arg0.text[1]:setText( "Max: " .. Engine.GetDvarFloat( "r_hdrDisplayMaxLuminance" ) )
	f1_arg0.text[2]:setText( "Min: " .. Engine.GetDvarFloat( "r_hdrDisplayMinLuminance" ) )
	f1_arg0.text[3]:setText( "Ref scene: " .. Engine.GetDvarFloat( "r_hdrDisplayRefSceneLuminance" ) )
	f1_arg0.text[4]:setText( "Ref UI: " .. Engine.GetDvarFloat( "r_hdrDisplayRefUILuminance" ) )
end

function UpdateScrollBars( f2_arg0 )
	for f2_local0 = 1, #f0_local0, 1 do
		if f0_local0[f2_local0].barElement ~= nil then
			LUI.UIHorizontalScrollbar.RatioBasedUpdate( f0_local0[f2_local0].barElement, (Engine.GetProfileData( f0_local0[f2_local0].profileDataVar, Engine.GetControllerForLocalClient( 0 ) ) - f0_local0[f2_local0].min) / (f0_local0[f2_local0].max - f0_local0[f2_local0].min) )
		end
	end
	if Engine.IsDevelopmentBuild() then
		UpdateHdrDebugInfo( f2_arg0.debugContainer )
	end
end

f0_local1 = function ( f3_arg0, f3_arg1 )
	local f3_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f3_arg0 )
	for f3_local1 = 1, #f0_local0, 1 do
		Engine.SetProfileData( f0_local0[f3_local1].profileDataVar, f0_local0[f3_local1].default, Engine.GetControllerForLocalClient( 0 ) )
	end
	Engine.ExecNow( "updategamerprofile" )
	Engine.ApplyHDRProfileValues()
	UpdateScrollBars( f3_local0 )
end

f0_local2 = function ( f4_arg0, f4_arg1 )
	local f4_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f4_arg0 )
	for f4_local1 = 1, #f0_local0, 1 do
		Engine.SetProfileData( f0_local0[f4_local1].profileDataVar, f0_local0[f4_local1].previousSetting, Engine.GetControllerForLocalClient( 0 ) )
	end
	Engine.ExecNow( "updategamerprofile" )
	Engine.ApplyHDRProfileValues()
	LUI.FlowManager.RequestLeaveMenu( f4_arg0 )
end

function SelectSetting( f5_arg0, f5_arg1 )
	local f5_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f5_arg0 )
	f0_local0[f5_local0.currentSelectedIndex].textElement:animateToState( "unselected", 1 )
	f0_local0[f5_local0.currentSelectedIndex].borderElement:animateToState( "unselected", 1 )
	f0_local0[f5_local0.currentSelectedIndex].barElement:processEvent( {
		name = "scrollbarUnfocused",
		immediate = true
	} )
	f0_local0[f5_local0.currentSelectedIndex].barElement:processEvent( {
		name = "hide_arrows",
		immediate = true
	} )
	f5_local0.currentSelectedIndex = f5_local0.currentSelectedIndex + f5_arg1
	if f5_local0.currentSelectedIndex < 1 then
		f5_local0.currentSelectedIndex = #f0_local0
	elseif #f0_local0 < f5_local0.currentSelectedIndex then
		f5_local0.currentSelectedIndex = 1
	end
	f0_local0[f5_local0.currentSelectedIndex].textElement:animateToState( "selected", 1 )
	f0_local0[f5_local0.currentSelectedIndex].borderElement:animateToState( "selected", 1 )
	f5_arg0:processEvent( {
		name = "set_button_info_text",
		text = f0_local0[f5_local0.currentSelectedIndex].description,
		immediate = true
	} )
	f0_local0[f5_local0.currentSelectedIndex].barElement:processEvent( {
		name = "show_arrows",
		immediate = true
	} )
	f0_local0[f5_local0.currentSelectedIndex].barElement:processEvent( {
		name = "scrollbarFocused",
		immediate = true
	} )
end

function ChangeParam( f6_arg0, f6_arg1 )
	local f6_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f6_arg0 )
	local f6_local1 = Engine.GetProfileData( f0_local0[f6_local0.currentSelectedIndex].profileDataVar, Engine.GetControllerForLocalClient( 0 ) )
	local f6_local2 = f6_local1
	f6_local1 = math.min( f0_local0[f6_local0.currentSelectedIndex].max, math.max( f0_local0[f6_local0.currentSelectedIndex].min, f6_local1 + f0_local0[f6_local0.currentSelectedIndex].step * f6_arg1 ) )
	if f6_local2 == f6_local1 then
		Engine.PlaySound( CoD.SFX.DenySelect )
		return 
	end
	Engine.PlaySound( CoD.SFX.AdjustSlider )
	if f6_arg1 > 0 then
		f0_local0[f6_local0.currentSelectedIndex].barElement:processEvent( {
			name = "content_arrow_right",
			immediate = true
		} )
	else
		f0_local0[f6_local0.currentSelectedIndex].barElement:processEvent( {
			name = "content_arrow_left",
			immediate = true
		} )
	end
	Engine.SetProfileData( f0_local0[f6_local0.currentSelectedIndex].profileDataVar, f6_local1, Engine.GetControllerForLocalClient( 0 ) )
	Engine.ExecNow( "updategamerprofile" )
	Engine.ApplyHDRProfileValues()
	UpdateScrollBars( f6_local0 )
end

function MenuCreate( f7_arg0, f7_arg1 )
	UpdateScrollBars( LUI.FlowManager.GetMenuScopedDataFromElement( f7_arg0 ) )
end

function advanced_hdr( menu, controller )
	local self = LUI.UIElement.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0
	} )
	self.id = "advanced_hdr_id"
	local f8_local1 = LUI.FlowManager.GetMenuScopedDataFromElement( self )
	local f8_local2 = LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		material = RegisterMaterial( "white" ),
		color = Colors.black,
		alpha = 1
	} )
	f8_local2.id = "advanced_hdr_bg_id"
	self:addElement( f8_local2 )
	local f8_local3 = LUI.UIBindButton.new()
	f8_local3.id = "advanced_hdr_bind_btn_id"
	f8_local3:registerEventHandler( "button_left", function ( element )
		ChangeParam( self, -1 )
	end )
	f8_local3:registerEventHandler( "button_right", function ( element )
		ChangeParam( self, 1 )
	end )
	f8_local3:registerEventHandler( "button_up", function ( element )
		SelectSetting( self, -1 )
	end )
	f8_local3:registerEventHandler( "button_down", function ( element )
		SelectSetting( self, 1 )
	end )
	f8_local3.handlePrimary = true
	self:addElement( f8_local3 )
	local f8_local4 = LUI.UIText.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		top = 50,
		height = CoD.TextSettings.BodyFont.Height,
		left = 0,
		right = 0,
		font = CoD.TextSettings.BodyFont.Font,
		alignment = LUI.Alignment.Center,
		color = Colors.primary_text_color
	} )
	f8_local4.id = "advanced_hdr_instruction_txt1_id"
	f8_local4:setText( Engine.Localize( "@MENU_ADJUST_ADVANCED_HDR" ) )
	self:addElement( f8_local4 )
	local f8_local5 = LUI.UIElement.new( CoD.CreateState( 410, nil, -410, 0, CoD.AnchorTypes.All ) )
	self:addElement( f8_local5 )
	local f8_local6 = LUI.MenuBuilder.BuildAddChild( f8_local5, {
		type = "button_helper_text_main"
	} )
	f8_local6:processEvent( {
		name = "add_button_helper_text",
		button_ref = "button_secondary",
		helper_text = Engine.Localize( "@MENU_CANCEL" ),
		side = "center",
		clickable = true,
		priority = -2000
	} )
	f8_local6:processEvent( {
		name = "add_button_helper_text",
		button_ref = "button_action",
		helper_text = Engine.Localize( "@MENU_APPLY" ),
		side = "center",
		clickable = true,
		priority = -1000
	} )
	f8_local6:processEvent( {
		name = "add_button_helper_text",
		button_ref = "button_alt2",
		helper_text = Engine.Localize( "@MENU_RESET_TO_DEFAULTS" ),
		side = "center",
		clickable = true,
		priority = -1500
	} )
	f8_local3:registerEventHandler( "button_action", MBh.LeaveMenu() )
	f8_local3:registerEventHandler( "button_secondary", f0_local2 )
	f8_local3:registerEventHandler( "button_alt2", f0_local1 )
	if Engine.IsPC() then
		local f8_local7 = f8_local6:getFirstDescendentById( "button_secondary_id" )
		f8_local7:registerEventHandler( "leftmouseup", f0_local2 )
		local f8_local8 = f8_local6:getFirstDescendentById( "button_action_id" )
		f8_local8:registerEventHandler( "leftmouseup", MBh.LeaveMenu() )
		local f8_local9 = f8_local6:getFirstDescendentById( "button_alt2_id" )
		f8_local9:registerEventHandler( "leftmouseup", f0_local1 )
	end
	local f8_local7 = 756
	local f8_local9 = LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = false,
		rightAnchor = false,
		top = 100,
		width = f8_local7,
		height = f8_local7 / Engine.GetAspectRatio(),
		alpha = 1,
		material = RegisterMaterial( "h2_hdr_advanced_reference" )
	} )
	f8_local9.id = "advanced_hdr_ref_id"
	self:addElement( f8_local9 )
	local f8_local10 = LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		left = 0,
		top = 0,
		right = 0,
		bottom = 0,
		alpha = 1,
		material = RegisterMaterial( "h2_hdr_advanced_hud_overlay" )
	} )
	f8_local10.id = "advanced_hdr_hud_ref_id"
	f8_local9:addElement( f8_local10 )
	local f8_local11 = -183
	local f8_local12 = 412
	local f8_local13 = 602
	local f8_local14 = {
		topAnchor = false,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = false,
		left = f8_local12,
		width = f8_local13,
		height = 11,
		top = f8_local11
	}
	local f8_local15 = CoD.CreateState( nil, f8_local11 + 1, nil, nil, CoD.AnchorTypes.BottomLeft )
	f8_local15.height = 9
	f8_local15.color = Colors.h2.grey
	f8_local15.width = 2
	f8_local15.alpha = 1
	f8_local15.material = RegisterMaterial( "white" )
	local f8_local16 = 6
	local f8_local17 = {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		left = -1 * f8_local16,
		right = f8_local16,
		top = -1 * f8_local16,
		bottom = f8_local16,
		alpha = 1,
		material = RegisterMaterial( "h2_hdr_slider_bg" )
	}
	local f8_local18 = {
		material = RegisterMaterial( "h2_hdr_slider_bg_selected" )
	}
	local f8_local19 = {
		topAnchor = false,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = false,
		left = 262,
		width = 100,
		height = 15,
		top = f8_local11,
		font = CoD.TextSettings.BodyFontTiny.Font
	}
	for f8_local20 = 1, #f0_local0, 1 do
		f8_local15.left = (f0_local0[f8_local20].default - f0_local0[f8_local20].min) / (f0_local0[f8_local20].max - f0_local0[f8_local20].min) * f8_local13 + f8_local12 - 1
		f0_local0[f8_local20].recommendedBar = LUI.UIImage.new( f8_local15 )
		self:addElement( f0_local0[f8_local20].recommendedBar )
		f0_local0[f8_local20].barElement = LUI.UIHorizontalScrollbar.new( f8_local14, nil, 3, nil, 1, 1, nil, Colors.h2.yellow, Colors.black, "white", "black", "white", nil, 4, Colors.h2.grey, false )
		f0_local0[f8_local20].barElement.id = "UIHorizontalScrollbar" .. f0_local0[f8_local20].name
		self:addElement( f0_local0[f8_local20].barElement )
		local f8_local23 = LUI.UIImage.new( f8_local17 )
		f8_local23:setup9SliceImage( 10, 6, 0.05, 0.3 )
		f8_local23:registerAnimationState( "unselected", f8_local17 )
		f8_local23:registerAnimationState( "selected", f8_local18 )
		f0_local0[f8_local20].borderElement = f8_local23
		f0_local0[f8_local20].barElement:addElement( f0_local0[f8_local20].borderElement )
		f0_local0[f8_local20].textElement = LUI.UIText.new( f8_local19 )
		f0_local0[f8_local20].textElement:setText( f0_local0[f8_local20].name )
		f0_local0[f8_local20].textElement:registerAnimationState( "unselected", {
			color = Colors.white
		} )
		f0_local0[f8_local20].textElement:registerAnimationState( "selected", {
			color = Colors.h2.yellow
		} )
		self:addElement( f0_local0[f8_local20].textElement )
		f0_local0[f8_local20].previousSetting = Engine.GetProfileData( f0_local0[f8_local20].profileDataVar, Engine.GetControllerForLocalClient( 0 ) )
		f8_local11 = f8_local11 + 25
		f8_local14.top = f8_local11
		f8_local19.top = f8_local11
		f8_local15.top = f8_local11 + 1
		f0_local0[f8_local20].barElement:addElement( MBh.CreateArrowButtonFactory( "left", true, f0_local0[f8_local20].barElement, -20, nil ) )
		f0_local0[f8_local20].barElement:addElement( MBh.CreateArrowButtonFactory( "right", false, f0_local0[f8_local20].barElement, -20, nil ) )
	end
	f8_local11 = f8_local11 - 5
	self:addElement( LUI.UIImage.new( {
		leftAnchor = true,
		bottomAnchor = true,
		left = 262,
		width = 18,
		height = 0.5,
		top = f8_local11 - 10,
		material = RegisterMaterial( "white" ),
		color = GenericMenuColors.title_divider,
		alpha = 0.5
	} ) )
	local f8_local21 = LUI.UIElement.new( {
		topAnchor = false,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = f8_local11,
		height = 15,
		left = 262,
		right = -262
	} )
	f8_local21.id = "advanced_hdr_instruction_desc_id"
	self:addElement( f8_local21 )
	f8_local21:addElement( LUI.MenuBuilder.BuildRegisteredType( "h1_vlist_button_desc_text", {
		top = 0,
		left = 0,
		width = 756,
		fadeIn = false,
		height = 40,
		textPaddingY = 12
	} ) )
	f8_local1.currentSelectedIndex = 1
	if Engine.IsDevelopmentBuild() then
		CreatHDRDebugInfo( self )
	end
	SelectSetting( self, 0 )
	self:registerEventHandler( "first_bars_update", MenuCreate )
	self:dispatchEventToRoot( {
		name = "first_bars_update"
	} )
	return self
end

function CreatHDRDebugInfo( f13_arg0 )
	local f13_local0 = Font18
	local f13_local1 = CoD.CreateState( (1 - SliderBounds.VertMargin.Min) * ScreenResolution[currentScreenResolution].width, (1 - SliderBounds.HorzMargin.Min) * ScreenResolution[currentScreenResolution].height, 500, 500, CoD.AnchorTypes.TopLeft )
	f13_local1.id = "debugContainer"
	local self = LUI.UIElement.new( f13_local1 )
	f13_arg0:addElement( self )
	f13_local1.left = 0
	f13_local1.top = Font18.Height
	f13_local1.bottom = nil
	f13_local1.height = Font18.Height
	f13_local1.font = Font18.Font
	f13_local1.alignment = LUI.Alignment.Left
	self.text = {}
	for f13_local3 = 1, 4, 1 do
		f13_local1.id = "hdrDisplayText" .. f13_local3
		f13_local1.top = Font18.Height * f13_local3
		self.text[f13_local3] = LUI.UIText.new( f13_local1 )
		self:addElement( self.text[f13_local3] )
	end
	self.refreshTimer = LUI.UITimer.new( 1000, "refresh_values" )
	self.refreshTimer.id = "refreshTimer"
	self:registerEventHandler( "refresh_values", UpdateHdrDebugInfo )
	self:addElement( self.refreshTimer )
	local f13_local3 = LUI.FlowManager.GetMenuScopedDataFromElement( f13_arg0 )
	f13_local3.debugContainer = self
	UpdateHdrDebugInfo( self )
end

LUI.MenuBuilder.registerType( "advanced_hdr", advanced_hdr )
LockTable( _M )
