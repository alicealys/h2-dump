local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
DebugPrint( "Registering " .. _NAME )
f0_local0 = false
f0_local1 = function ( f1_arg0, f1_arg1 )
	local f1_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f1_arg0 )
	f1_local0.BrightnessOgAmount = Engine.GetProfileData( "blacklevel", Engine.GetControllerForLocalClient( 0 ) )
	f1_local0.ContinueMessageVisible = false
	f1_local0.BackMessageVisible = false
	if not f0_local0 then
		f1_local0.ContinueMessageVisible = true
		if f1_local0.is_in_options_menu then
			f1_arg0:dispatchEventToRoot( {
				name = "continue_message_visible"
			} )
			f1_local0.BackMessageVisible = true
			f1_arg0:dispatchEventToRoot( {
				name = "cancel_message_visible"
			} )
		else
			f1_arg0:dispatchEventToRoot( {
				name = "continue_message_visible_alone",
				dispatchChildren = true
			} )
		end
	end
	f1_local0.BrightnessMinAmount = MIN_BRIGHTNESS or -0.4
	f1_local0.BrightnessMaxAmount = MAX_BRIGHTNESS or 0.2
	f1_local0.BrightnessIncrement = STEP_BRIGHTNESS or -0.01
	f1_arg0:dispatchEventToChildren( {
		name = "brightness_over"
	} )
	if Engine.IsXB3() or Engine.IsPCApp() then
		local self = LUI.UIElement.new( CoD.CreateState( 0, GenericFooterDims.TopMargin_WithBackground, 400, 0, CoD.AnchorTypes.BottomLeft ) )
		f1_arg0:addElement( self )
		LUI.ButtonHelperText.AddSignInText( self )
	end
end

f0_local2 = function ( f2_arg0, f2_arg1 )
	local f2_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f2_arg0 )
	Engine.SetProfileData( "blacklevel", f2_arg1, Engine.GetControllerForLocalClient( 0 ) )
	Engine.ExecNow( "updategamerprofile" )
	Engine.PlaySound( CoD.SFX.AdjustSlider )
	local f2_local1 = f2_local0.is_in_options_menu
	if f2_local1 then
		if f2_local0.BackMessageVisible ~= false or f2_arg1 == f2_local0.BrightnessOgAmount then
			f2_local1 = false
		else
			f2_local1 = true
		end
	end
	if f2_local0.ContinueMessageVisible == false and f2_arg1 ~= f2_local0.BrightnessOgAmount then
		f2_local0.ContinueMessageVisible = true
		if not f2_local1 then
			f2_arg0:dispatchEventToRoot( {
				name = "continue_message_visible"
			} )
		else
			f2_arg0:dispatchEventToRoot( {
				name = "continue_message_visible_alone",
				dispatchChildren = true
			} )
		end
	end
	if f2_local1 then
		f2_arg0:dispatchEventToRoot( {
			name = "cancel_message_visible"
		} )
	end
	f2_arg0:dispatchEventToRoot( {
		name = "brightness_updated"
	} )
end

local f0_local3 = function ( f3_arg0, f3_arg1, f3_arg2, f3_arg3 )
	local f3_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f3_arg0 )
	local f3_local1 = Engine.GetProfileData( "blacklevel", Engine.GetControllerForLocalClient( 0 ) )
	local f3_local2 = f3_local1
	f3_local1 = math.min( f3_arg2, math.max( f3_arg1, f3_local1 + f3_arg3 ) )
	if f3_local2 ~= f3_local1 then
		f0_local2( f3_arg0, f3_local1 )
	elseif f3_local1 <= f3_arg1 or f3_arg2 <= f3_local1 then
		Engine.PlaySound( CoD.SFX.DenySelect )
	end
end

local f0_local4 = function ( f4_arg0, f4_arg1 )
	local f4_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f4_arg0 )
	f0_local3( f4_arg0, f4_local0.BrightnessMinAmount, f4_local0.BrightnessMaxAmount, -f4_local0.BrightnessIncrement )
end

local f0_local5 = function ( f5_arg0, f5_arg1 )
	local f5_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f5_arg0 )
	f0_local3( f5_arg0, f5_local0.BrightnessMinAmount, f5_local0.BrightnessMaxAmount, f5_local0.BrightnessIncrement )
end

local f0_local6 = function ( f6_arg0, f6_arg1 )
	local f6_local0 = Engine.GetProfileData( "blacklevel", Engine.GetControllerForLocalClient( 0 ) )
	local f6_local1 = nil
	if f6_arg0.id == BrightnessGuideConstants.not_visible.item_id then
		f6_local1 = BrightnessGuideConstants.not_visible.color_default
	elseif f6_arg0.id == BrightnessGuideConstants.barely_visible.item_id then
		f6_local1 = BrightnessGuideConstants.barely_visible.color_default
	elseif f6_arg0.id == BrightnessGuideConstants.easily_visible.item_id then
		f6_local1 = BrightnessGuideConstants.easily_visible.color_default
	end
	if f6_local1 ~= nil then
		local f6_local2 = (f6_local1 - f6_local0) / (1 - f6_local0)
		f6_arg0:registerAnimationState( "current", {
			red = f6_local2,
			green = f6_local2,
			blue = f6_local2
		} )
		f6_arg0:animateToState( "current", 0 )
	end
	if f6_local1 ~= nil then
		local f6_local2 = (f6_local1 - f6_local0) / (1 - f6_local0)
		local f6_local3 = {
			alpha = f6_local1 - f6_local0 + 0.4
		}
	end
end

local f0_local7 = function ( f7_arg0, f7_arg1 )
	local f7_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f7_arg0 )
	Engine.SetProfileData( "blacklevel", f7_local0.BrightnessOgAmount, Engine.GetControllerForLocalClient( 0 ) )
	Engine.ExecNow( "updategamerprofile" )
	LUI.FlowManager.RequestLeaveMenu( f7_arg0 )
end

local f0_local8 = function ( f8_arg0, f8_arg1 )
	f0_local2( f8_arg0, 0 )
end

local f0_local9 = function ( f9_arg0, f9_arg1, f9_arg2 )
	local f9_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f9_arg0 )
	if f9_local0.ContinueMessageVisible then
		LUI.FlowManager.RequestLeaveMenu( f9_arg0 )
		if f9_arg2 then
			f9_arg2( f9_arg1.controller )
		end
		Engine.PlaySound( CoD.SFX.PauseMenuBack )
	end
end

function boot_brightness( menu, controller )
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
	self.id = "boot_brightness_id"
	self:registerEventHandler( "menu_create", f0_local1 )
	local f10_local1 = 1
	local f10_local2 = 0
	if not Engine.InFrontend() and Engine.GetSplitScreen() then
		f10_local1 = 0.5
		f10_local2 = 30
	end
	local f10_local3, f10_local4 = nil
	if controller.is_in_options_menu == true then
		f10_local3 = MBh.LeaveMenu()
		f10_local4 = f0_local7
	else
		f10_local3 = function ( f11_arg0, f11_arg1 )
			f0_local9( f11_arg0, f11_arg1, controller.callback )
		end
		
	end
	local f10_local5 = f0_local8
	local f10_local6 = LUI.UIBindButton.new()
	f10_local6.id = "boot_brightness_bind_btn_id"
	f10_local6:registerEventHandler( "button_left", f0_local4 )
	f10_local6:registerEventHandler( "button_right", f0_local5 )
	f10_local6:registerEventHandler( "button_action", f10_local3 )
	f10_local6:registerEventHandler( "button_alt2", f10_local5 )
	if f10_local4 then
		f10_local6:registerEventHandler( "button_secondary", f10_local4 )
	end
	f10_local6.handlePrimary = true
	self:addElement( f10_local6 )
	local f10_local7 = LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		material = RegisterMaterial( "white" ),
		red = 0,
		green = 0,
		blue = 0,
		alpha = 1
	} )
	f10_local7.id = "boot_brightness_bg_id"
	f10_local7:setupFullWindowElement()
	self:addElement( f10_local7 )
	local f10_local8 = LUI.UIText.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		top = 140 * f10_local1,
		height = CoD.TextSettings.BodyFont.Height,
		left = 0,
		right = 0,
		font = CoD.TextSettings.BodyFont.Font,
		alignment = LUI.Alignment.Center,
		red = Colors.primary_text_color.r,
		green = Colors.primary_text_color.g,
		blue = Colors.primary_text_color.b
	} )
	f10_local8.id = "boot_brightness_instruction_txt1_id"
	f10_local8:setText( Engine.Localize( "@MENU_ADJUST_BRIGHTNESS" ) )
	self:addElement( f10_local8 )
	local f10_local9 = LUI.UIText.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		top = 186 * f10_local1,
		height = CoD.TextSettings.BodyFontSmall.Height,
		left = 0,
		right = 0,
		font = CoD.TextSettings.BodyFont.Font,
		alignment = LUI.Alignment.Center,
		red = Colors.primary_text_color.r,
		green = Colors.primary_text_color.g,
		blue = Colors.primary_text_color.b
	} )
	f10_local9.id = "boot_brightness_instruction_txt2_id"
	f10_local9:setText( Engine.Localize( "@MENU_BRIGHTNESS_DESC2" ) )
	self:addElement( f10_local9 )
	local f10_local10 = LUI.UIElement.new( CoD.CreateState( 410, nil, -410, -65, CoD.AnchorTypes.All ) )
	self:addElement( f10_local10 )
	local f10_local11 = LUI.MenuBuilder.BuildAddChild( f10_local10, {
		type = "button_helper_text_main"
	} )
	if f10_local4 then
		f10_local11:processEvent( {
			name = "add_button_helper_text",
			button_ref = "button_secondary",
			helper_text = Engine.Localize( "@MENU_CANCEL" ),
			side = "center",
			clickable = true,
			priority = -2000
		} )
	end
	f10_local11:processEvent( {
		name = "add_button_helper_text",
		button_ref = "button_action",
		helper_text = Engine.Localize( "@MENU_APPLY" ),
		side = "center",
		clickable = true,
		priority = -1000
	} )
	f10_local11:processEvent( {
		name = "add_button_helper_text",
		button_ref = "button_alt2",
		helper_text = Engine.Localize( "@MENU_RESET_TO_DEFAULTS" ),
		side = "center",
		clickable = true,
		priority = -1500
	} )
	if Engine.IsPC() then
		if f10_local4 then
			local f10_local12 = f10_local11:getFirstDescendentById( "button_secondary_id" )
			f10_local12:registerEventHandler( "leftmouseup", f10_local4 )
		end
		local f10_local12 = f10_local11:getFirstDescendentById( "button_action_id" )
		f10_local12:registerEventHandler( "leftmouseup", f10_local3 )
		local f10_local13 = f10_local11:getFirstDescendentById( "button_alt2_id" )
		f10_local13:registerEventHandler( "leftmouseup", f0_local8 )
	end
	self:addElement( boot_brightness_guide( f10_local1, f10_local2 ) )
	return self
end

function boot_brightness_guide( f12_arg0, f12_arg1 )
	local f12_local0 = 250 * f12_arg0 + f12_arg1
	local f12_local1 = 360
	local f12_local2 = 96 * f12_arg0 + f12_arg1 * 0.5
	local self = LUI.UIElement.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = false,
		rightAnchor = false,
		top = f12_local0,
		bottom = f12_local0 + f12_local2 * 3,
		left = -1 * f12_local1 * 0.5,
		right = f12_local1 * 0.5,
		alpha = 0
	} )
	self:registerAnimationState( "visible", {
		alpha = 1
	} )
	self.id = "brightness_guide_mini_id"
	local f12_local4 = self
	local f12_local5 = self.registerEventHandler
	local f12_local6 = "brightness_over"
	local f12_local7 = MBh.DoMultiple
	local f12_local8 = {}
	local f12_local9 = MBh.AnimateToState( "visible", 0 )
	local f12_local10 = MBh.EmitEvent( {
		name = "brightness_over_children"
	} )
	f12_local5( f12_local4, f12_local6, f12_local7( f12_local9 ) )
	self:registerEventHandler( "brightness_up", MBh.AnimateToState( "default", 0 ) )
	f12_local5 = LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = 0,
		bottom = f12_local2,
		left = 0,
		right = f12_local1,
		material = RegisterMaterial( "white" ),
		red = BrightnessGuideConstants.not_visible.color_default,
		green = BrightnessGuideConstants.not_visible.color_default,
		blue = BrightnessGuideConstants.not_visible.color_default
	} )
	f12_local5.id = BrightnessGuideConstants.not_visible.item_id
	f12_local5:registerEventHandler( "brightness_over_children", f0_local6 )
	f12_local5:registerEventHandler( "brightness_updated", f0_local6 )
	self:addElement( f12_local5 )
	f12_local4 = LUI.UIText.new( {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = -9,
		bottom = 9,
		left = 0,
		right = f12_local1,
		font = CoD.TextSettings.BodyFont.Font,
		red = 0,
		green = 0,
		blue = 0,
		alignment = LUI.Alignment.Center
	} )
	f12_local4.id = "text_not_visible"
	f12_local4:setText( Engine.Localize( "@MENU_BRIGHTNESS_NOT_VISIBLE" ) )
	f12_local5:addElement( f12_local4 )
	f12_local6 = LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = f12_local2,
		bottom = 2 * f12_local2,
		left = 0,
		right = f12_local1,
		material = RegisterMaterial( "white" ),
		red = BrightnessGuideConstants.barely_visible.color_default,
		green = BrightnessGuideConstants.barely_visible.color_default,
		blue = BrightnessGuideConstants.barely_visible.color_default
	} )
	f12_local6.id = BrightnessGuideConstants.barely_visible.item_id
	f12_local6:registerEventHandler( "brightness_over_children", f0_local6 )
	f12_local6:registerEventHandler( "brightness_updated", f0_local6 )
	self:addElement( f12_local6 )
	f12_local7 = LUI.UIText.new( {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = -9,
		bottom = 9,
		left = 0,
		right = f12_local1,
		font = CoD.TextSettings.BodyFont.Font,
		red = 0,
		green = 0,
		blue = 0,
		alignment = LUI.Alignment.Center
	} )
	f12_local7.id = "text_barely_visible"
	f12_local7:setText( Engine.Localize( "@MENU_BRIGHTNESS_BARELY_VISIBLE" ) )
	f12_local6:addElement( f12_local7 )
	f12_local8 = LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = 2 * f12_local2,
		bottom = 3 * f12_local2,
		left = 0,
		right = f12_local1,
		material = RegisterMaterial( "white" ),
		red = BrightnessGuideConstants.easily_visible.color_default,
		green = BrightnessGuideConstants.easily_visible.color_default,
		blue = BrightnessGuideConstants.easily_visible.color_default
	} )
	f12_local8.id = BrightnessGuideConstants.easily_visible.item_id
	f12_local8:registerEventHandler( "brightness_over_children", f0_local6 )
	f12_local8:registerEventHandler( "brightness_updated", f0_local6 )
	self:addElement( f12_local8 )
	f12_local9 = LUI.UIText.new( {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = -9,
		bottom = 9,
		left = 0,
		right = f12_local1,
		font = CoD.TextSettings.BodyFont.Font,
		red = 0,
		green = 0,
		blue = 0,
		alignment = LUI.Alignment.Center
	} )
	f12_local9.id = "text_easily_visible"
	f12_local9:setText( Engine.Localize( "@MENU_BRIGHTNESS_EASILY_VISIBLE" ) )
	f12_local8:addElement( f12_local9 )
	f12_local10 = LUI.UIButton.new( {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = -32,
		bottom = 32,
		left = -52,
		right = -20
	} )
	f12_local10:registerAnimationState( "offset", {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = -32,
		bottom = 32,
		left = -55,
		right = -23
	} )
	f12_local10.id = "boot_brightness_left_arrow_btn_id"
	if Engine.IsPC() then
		f12_local10:setHandleMouseButton( true )
		f12_local10:registerEventHandler( "leftmousedown", f0_local4 )
	end
	f12_local10:registerEventHandler( "menu_create", MBh.AnimateLoop( {
		{
			"offset",
			500,
			true,
			true
		},
		{
			"default",
			500,
			true,
			true
		}
	} ) )
	self:addElement( f12_local10 )
	f12_local10:addElement( LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		material = RegisterMaterial( "h1_deco_arrows_left" )
	} ) )
	local f12_local11 = LUI.UIButton.new( {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = false,
		rightAnchor = true,
		top = -32,
		bottom = 32,
		left = 20,
		right = 52
	} )
	f12_local11:registerAnimationState( "offset", {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = false,
		rightAnchor = true,
		top = -32,
		bottom = 32,
		left = 23,
		right = 55
	} )
	f12_local11.id = "boot_brightness_right_arrow_btn_id"
	if Engine.IsPC() then
		f12_local11:setHandleMouseButton( true )
		f12_local11:registerEventHandler( "leftmousedown", f0_local5 )
	end
	f12_local11:registerEventHandler( "menu_create", MBh.AnimateLoop( {
		{
			"offset",
			500,
			true,
			true
		},
		{
			"default",
			500,
			true,
			true
		}
	} ) )
	self:addElement( f12_local11 )
	f12_local11:addElement( LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		material = RegisterMaterial( "h1_deco_arrows_right" )
	} ) )
	return self
end

LUI.MenuBuilder.registerType( "boot_brightness", boot_brightness )
LockTable( _M )
