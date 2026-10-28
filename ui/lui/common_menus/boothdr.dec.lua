local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
DebugPrint( "Registering " .. _NAME )
f0_local0 = false
f0_local1 = 1
f0_local2 = 0
local f0_local3 = 1
local f0_local4 = false
local f0_local5 = true
local f0_local6 = false
local f0_local7 = 250
local f0_local8 = false
local f0_local9 = false
local f0_local10 = true
local f0_local11 = nil
local f0_local12 = false
local f0_local13 = {
	name = "add_button_helper_text",
	button_ref = "button_action",
	helper_text = Engine.Localize( "@MENU_APPLY" ),
	side = "center",
	clickable = true,
	priority = -1000,
	color = Colors.white
}
local f0_local14 = {
	name = "add_button_helper_text",
	button_ref = "button_alt1",
	helper_text = "Preview",
	side = "center",
	clickable = true,
	priority = -1200,
	color = Colors.white
}
local f0_local15 = {
	{
		material = "h2_hdr_advanced_reference",
		blackAlpha = 1
	}
}
local f0_local16 = {
	{
		material = "h2_hdr_advanced_reference_low_res",
		blackAlpha = 0
	}
}
local f0_local17 = {}
local f0_local18 = {}
LUI.bootHDRModes = {}
function setSettingValue( f1_arg0, f1_arg1 )
	if f1_arg0.profileDataVar ~= nil then
		Engine.SetProfileData( f1_arg0.profileDataVar, f1_arg1, Engine.GetControllerForLocalClient( 0 ) )
	else
		Engine.SetDvarFloat( f1_arg0.dvar, f1_arg1 )
	end
end

function getSettingValue( f2_arg0 )
	if f2_arg0.profileDataVar ~= nil then
		return Engine.GetProfileData( f2_arg0.profileDataVar, Engine.GetControllerForLocalClient( 0 ) )
	else
		return Engine.GetDvarFloat( f2_arg0.dvar )
	end
end

local f0_local19 = function ( f3_arg0, f3_arg1 )
	if Engine.IsXB3() then
		local self = LUI.UIElement.new( CoD.CreateState( 0, GenericFooterDims.TopMargin_WithBackground, 400, 0, CoD.AnchorTypes.BottomLeft ) )
		f3_arg0:addElement( self )
		LUI.ButtonHelperText.AddSignInText( self )
	end
end

local f0_local20 = function ( f4_arg0, f4_arg1 )
	local f4_local0, f4_local1, f4_local2 = ipairs( LUI.bootHDRModes[f0_local1].values )
	local f4_local3, f4_local4 = f4_local0( f4_local1, f4_local2 )
	if f4_local3 ~= nil then
		f4_local2 = f4_local3
		local f4_local6 = getSettingValue( f4_local4 )
		local f4_local7 = f4_local4.minVal
		local f4_local8 = f4_local4.maxVal
		local f4_local5 = 0
		if f4_local4.scrollbarValueFunction then
			f4_local5 = f4_local4:scrollbarValueFunction( f4_local6 )
		else
			f4_local5 = (f4_local6 - f4_local7) / (f4_local8 - f4_local7)
		end
		LUI.UIHorizontalScrollbar.RatioBasedUpdate( f4_arg0.scrollbar, f4_local5 )
		update_bar_value( f4_arg0.scrollbar )
	end
end

local f0_local21 = function ( f5_arg0, f5_arg1, f5_arg2, f5_arg3 )
	local f5_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f5_arg0 )
	local f5_local1 = getSettingValue( f5_arg1 )
	local f5_local2 = f5_local1 + f5_arg2 * f5_arg1.step
	if f5_arg1.customIncrementFunction then
		f5_local2 = f5_arg1:customIncrementFunction( f5_local1, f5_arg2, f5_local0 )
	end
	local f5_local3 = f5_local1
	if f5_arg1.maxVal ~= nil and f5_arg1.minVal ~= nil then
		f5_local2 = LUI.clamp( f5_local2, f5_arg1.minVal, f5_arg1.maxVal )
	end
	if f5_local3 == f5_local2 then
		if f5_arg3 then
			Engine.PlaySound( CoD.SFX.DenySelect )
			local f5_local4 = changeArrowState
			local f5_local5 = f5_local0.menu
			local f5_local6
			if f5_arg2 < 0 then
				f5_local6 = "left"
				if not f5_local6 then
				
				else
					f5_local4( f5_local5, f5_local6, false )
				end
			end
			f5_local6 = "right"
		end
		return false
	elseif f5_local3 ~= f5_local2 and f5_arg3 then
		Engine.PlaySound( CoD.SFX.AdjustSlider )
		changeArrowState( f5_local0.menu, "left", f5_local3 ~= f5_arg1.minVal, f5_arg2 < 0 )
		changeArrowState( f5_local0.menu, "right", f5_local3 ~= f5_arg1.maxVal, f5_arg2 > 0 )
	end
	setSettingValue( f5_arg1, f5_local2 )
	local f5_local4 = f5_arg0:getParent()
	f5_local4:processEvent( {
		name = "refreshScrollBar"
	} )
	return true
end

local f0_local22 = 0
local f0_local23 = 1
local f0_local24 = 0.5
local f0_local25 = 100
local f0_local26 = function ( f6_arg0, f6_arg1, f6_arg2 )
	if f0_local8 then
		return 
	elseif Engine.GetTimeMsecs() - f0_local22 < f0_local25 then
		f0_local23 = f0_local23 + f0_local24
	else
		f0_local23 = 1
	end
	f0_local22 = Engine.GetTimeMsecs()
	f6_arg2 = f6_arg2 * f0_local23
	local f6_local0 = nil
	if f6_arg2 > 0 then
		f6_local0 = "right"
	else
		f6_local0 = "left"
	end
	local f6_local1 = LUI.FlowManager.GetMenuScopedDataFromElement( f6_arg0 )
	local f6_local2 = false
	for f6_local6, f6_local7 in ipairs( LUI.bootHDRModes[f0_local1].values ) do
		f6_local2 = f0_local21( f6_arg0, f6_local7, f6_arg2, f6_local0, true ) or f6_local2
		if not f6_local2 then
			break
		end
	end
	if f6_local2 then
		Engine.ExecNow( "updategamerprofile" )
		Engine.ApplyHDRProfileValues()
	end
	if Engine.IsDevelopmentBuild() then
		update_hdr_debug_info( f6_local1.debugContainer )
	end
end

local f0_local27 = function ( f7_arg0, f7_arg1 )
	f0_local26( f7_arg0, f7_arg1, -1 )
end

local f0_local28 = function ( f8_arg0, f8_arg1 )
	f0_local26( f8_arg0, f8_arg1, 1 )
end

local f0_local29 = function ( f9_arg0 )
	local f9_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f9_arg0 )
	f9_local0.blackBackground:registerAnimationState( "newColor", {
		color = {
			r = f0_local2,
			g = f0_local2,
			b = f0_local2
		},
		alpha = 1
	} )
	f9_local0.blackBackground:animateToState( "newColor", 0 )
end

local f0_local30 = function ( f10_arg0, f10_arg1 )
	f0_local2 = math.max( f0_local2 - 0.1, 0 )
	f0_local29( f10_arg0 )
end

local f0_local31 = function ( f11_arg0, f11_arg1 )
	f0_local2 = math.min( f0_local2 + 0.1, 1 )
	f0_local29( f11_arg0 )
end

local f0_local32 = function ( f12_arg0, f12_arg1 )
	f0_local8 = false
end

local f0_local33 = function ( f13_arg0, f13_arg1 )
	f0_local1 = f0_local1 + 1
	local f13_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f13_arg0 )
	create_mode_ui( f13_local0.menu, f0_local1 )
	f13_local0.menu:processEvent( {
		name = "refreshScrollBar"
	} )
	if Engine.IsDevelopmentBuild() then
		update_hdr_debug_info( f13_local0.debugContainer )
	end
end

local f0_local34 = function ( f14_arg0, f14_arg1 )
	local f14_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f14_arg0 )
	local f14_local1 = f0_local1 + 1
	Engine.PlaySound( CoD.SFX.MenuAccept )
	if #LUI.bootHDRModes < f14_local1 then
		return false
	end
	f0_local3 = 1
	local f14_local2 = f14_arg0:getParent()
	if f14_local2 and f14_local2.fadeIn then
		f0_local8 = true
		f14_local2.fadeIn:animateToState( "default", f0_local7 )
		f14_local2.fadeIn:registerEventHandler( LUI.FormatAnimStateFinishEvent( "default" ), function ( element, event )
			f0_local33( element, event )
		end )
	else
		f0_local33( f14_arg0, f14_arg1 )
	end
	return true
end

local f0_local35 = function ( f16_arg0, f16_arg1 )
	if f0_local8 then
		return 
	end
	Engine.PlaySound( CoD.SFX.MenuBack )
	for f16_local6, f16_local7 in ipairs( LUI.bootHDRModes ) do
		for f16_local3, f16_local4 in ipairs( f16_local7.values ) do
			setSettingValue( f16_local4, f16_local4.previousSetting )
		end
	end
	Engine.ExecNow( "updategamerprofile" )
	Engine.ApplyHDRProfileValues()
	LUI.FlowManager.RequestLeaveMenu( f16_arg0 )
end

local f0_local36 = function ( f17_arg0, f17_arg1 )
	if f0_local8 then
		return 
	end
	Engine.PlaySound( CoD.SFX.MenuAccept )
	local f17_local0 = true
	local f17_local1 = true
	local f17_local2 = LUI.FlowManager.GetMenuScopedDataFromElement( f17_arg0 )
	for f17_local6, f17_local7 in ipairs( LUI.bootHDRModes[f0_local1].values ) do
		if f17_local7.default ~= nil then
			setSettingValue( f17_local7, f17_local7.default )
			if f17_local7.minVal ~= nil and f17_local0 then
				f17_local0 = f17_local7.minVal < f17_local7.default
			end
			if f17_local7.maxVal ~= nil and f17_local1 then
				f17_local1 = f17_local7.default < f17_local7.maxVal
			end
			if f17_local7.atFakeZero == false then
				f17_local7.atFakeZero = true
				f17_local2.menu:processEvent( {
					name = "setFakeZero"
				} )
			end
		end
	end
	changeArrowState( f17_local2.menu, "left", f17_local0, false )
	changeArrowState( f17_local2.menu, "right", f17_local1, false )
	Engine.ExecNow( "updategamerprofile" )
	Engine.ApplyHDRProfileValues()
end

function toggleDebugInfo( f18_arg0, f18_arg1 )
	f0_local5 = not f0_local5
	local f18_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f18_arg0 )
	if f0_local5 then
		f18_local0.debugContainer:animateToState( "default", 0 )
	else
		f18_local0.debugContainer:animateToState( "hidden", 0 )
	end
end

function update_continue_button( f19_arg0 )
	local f19_local0 = "@MENU_NEXT"
	if f0_local1 == #LUI.bootHDRModes then
		f19_local0 = "@MENU_APPLY"
	end
	f0_local13.helper_text = Engine.Localize( f19_local0 )
	f19_arg0.buttonHelper.help:processEvent( f0_local13 )
end

function update_preview_button( f20_arg0 )
	local f20_local0 = "@LUA_MENU_HDR_PREVIEW"
	if f0_local11 ~= nil then
		if f0_local12 or Engine.InFrontend() then
			f20_local0 = "@LUA_MENU_HDR_STOP_PREVIEW"
		else
			f20_local0 = "@LUA_MENU_HDR_INGAME_PREVIEW"
		end
	end
	f0_local14.helper_text = Engine.Localize( f20_local0 )
	f20_arg0.buttonHelper.help:processEvent( f0_local14 )
end

function toggleBarInfo( f21_arg0, f21_arg1 )
	f0_local6 = not f0_local6
	local f21_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f21_arg0 )
	update_hdr_debug_info( f21_local0.debugContainer )
end

function animateToCurrentPreviewBG( f22_arg0, f22_arg1 )
	local f22_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f22_arg0 )
	if f0_local11 == nil then
		f22_local0.blackBackground:animateToState( "default" )
		f22_local0.previewImage:animateToState( "default" )
		for f22_local4, f22_local5 in ipairs( f0_local17 ) do
			f22_local5:animateToState( "default" )
		end
		f22_local0.menu.titleText:setText( Engine.Localize( "@MENU_HDR_ADJUST_TITLE" ) )
	elseif f0_local12 then
		f22_local0.blackBackground:animateToState( "gamePreviewBg" .. f0_local11 )
		f22_local0.previewImage:animateToState( "gamePreviewBg" .. f0_local11 )
	else
		f22_local0.blackBackground:animateToState( "previewBg" .. f0_local11 )
		f22_local0.previewImage:animateToState( "previewBg" .. f0_local11 )
		for f22_local4, f22_local5 in ipairs( f0_local17 ) do
			f22_local5:animateToState( "preview" )
		end
		if Engine.IsRightToLeftLanguage() then
			f22_local0.menu.titleText:setText( Engine.Localize( LUI.bootHDRModes[f0_local1].titleString ) .. " - " .. Engine.Localize( "@MENU_HDR_ADJUST_TITLE" ) )
		end
		f22_local0.menu.titleText:setText( Engine.Localize( "@MENU_HDR_ADJUST_TITLE" ) .. " - " .. Engine.Localize( LUI.bootHDRModes[f0_local1].titleString ) )
	end
	update_preview_button( f22_local0.menu )
end

function togglePreviewBG( f23_arg0, f23_arg1 )
	if f0_local8 then
		return 
	end
	Engine.PlaySound( CoD.SFX.MenuAccept )
	if f0_local11 == nil then
		Engine.SetDvarBool( "r_hdrDisplayCalibrationMode", false )
		setFutureHDRSettingsToPlayerValues()
		f0_local11 = 1
	elseif f0_local12 or Engine.InFrontend() then
		Engine.SetDvarBool( "r_hdrDisplayCalibrationMode", true )
		setFutureHDRSettingsToDefault()
		f0_local11 = nil
		f0_local12 = false
	else
		f0_local12 = true
	end
	animateToCurrentPreviewBG( f23_arg0, f23_arg1 )
end

function previousPreviewBG( f24_arg0, f24_arg1 )
	if f0_local8 then
		return 
	elseif f0_local11 == nil then
		return 
	end
	f0_local11 = f0_local11 - 1
	if f0_local11 < 1 then
		f0_local11 = #f0_local15
	end
	animateToCurrentPreviewBG( f24_arg0, f24_arg1 )
end

function nextPreviewBG( f25_arg0, f25_arg1 )
	if f0_local8 then
		return 
	elseif f0_local11 == nil then
		return 
	end
	f0_local11 = f0_local11 + 1
	if #f0_local15 < f0_local11 then
		f0_local11 = 1
	end
	animateToCurrentPreviewBG( f25_arg0, f25_arg1 )
end

function boot_hdr( f26_arg0, f26_arg1 )
	f0_local1 = f26_arg1.start_index or 1
	f0_local8 = true
	f0_local11 = nil
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
	self.id = "boot_hdr_id"
	self:registerEventHandler( "menu_create", f0_local19 )
	local f26_local1 = LUI.UIBindButton.new()
	f26_local1.id = "boot_hdr_bind_btn_id"
	f26_local1:registerEventHandler( "button_left", f0_local27 )
	f26_local1:registerEventHandler( "button_right", f0_local28 )
	f26_local1:registerEventHandler( "button_alt1", togglePreviewBG )
	f26_local1:registerEventHandler( "button_shoulderl", previousPreviewBG )
	f26_local1:registerEventHandler( "button_shoulderr", nextPreviewBG )
	f26_local1:registerEventHandler( "button_alt2", f0_local36 )
	f26_local1:registerEventHandler( "button_action", function ( element, event )
		if f0_local8 then
			return 
		elseif not f0_local34( element, event ) then
			LUI.FlowManager.RequestLeaveMenu( element )
			if f26_arg1.is_in_options_menu ~= true and f26_arg1.callback then
				f26_arg1.callback( event.controller )
			end
		end
	end )
	local f26_local2 = LUI.FlowManager.GetMenuScopedDataFromElement( self )
	f26_local2.menu = self
	if f26_arg1.is_in_options_menu == true then
		f26_local1:registerEventHandler( "button_secondary", f0_local35 )
	end
	if f26_arg1.show_breadcumb ~= nil then
		f0_local10 = f26_arg1.show_breadcumb
	else
		f0_local10 = true
	end
	f26_local1.handlePrimary = true
	self:addElement( f26_local1 )
	local f26_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f26_local3.material = RegisterMaterial( "black" )
	f26_local2.blackBackground = LUI.UIImage.new( f26_local3 )
	f26_local2.blackBackground.id = "boot_hdr_blackbg_id"
	f26_local2.blackBackground:registerAnimationState( "default", {
		material = RegisterMaterial( "black" ),
		alpha = 1
	} )
	self:addElement( f26_local2.blackBackground )
	local f26_local4 = nil
	local f26_local5 = Engine.InFrontend()
	if f26_local5 then
		f26_local4 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	else
		f26_local4 = CoD.CreateState( -320, -580, 320, -180, CoD.AnchorTypes.Bottom )
	end
	f26_local4.alpha = 0
	f26_local2.previewImage = LUI.UIImage.new( f26_local4 )
	f26_local2.previewImage.id = "boot_hdr_preview_id"
	f26_local2.previewImage:registerAnimationState( "default", {
		material = nil,
		alpha = 0
	} )
	if f26_local5 then
		for f26_local9, f26_local10 in ipairs( f0_local15 ) do
			f26_local2.blackBackground:registerAnimationState( "previewBg" .. f26_local9, {
				alpha = 1
			} )
			f26_local2.blackBackground:registerAnimationState( "gamePreviewBg" .. f26_local9, {
				alpha = f26_local10.blackAlpha
			} )
			f26_local2.previewImage:registerAnimationState( "previewBg" .. f26_local9, {
				material = RegisterMaterial( f26_local10.material ),
				alpha = 1
			} )
			f26_local2.previewImage:registerAnimationState( "gamePreviewBg" .. f26_local9, {
				alpha = 0
			} )
		end
	else
		for f26_local9, f26_local10 in ipairs( f0_local16 ) do
			f26_local2.blackBackground:registerAnimationState( "previewBg" .. f26_local9, {
				alpha = 1
			} )
			f26_local2.blackBackground:registerAnimationState( "gamePreviewBg" .. f26_local9, {
				alpha = f26_local10.blackAlpha
			} )
			f26_local2.previewImage:registerAnimationState( "previewBg" .. f26_local9, {
				material = RegisterMaterial( f26_local10.material ),
				alpha = 1
			} )
			f26_local2.previewImage:registerAnimationState( "gamePreviewBg" .. f26_local9, {
				alpha = 0
			} )
		end
	end
	self:addElement( f26_local2.previewImage )
	f0_local9 = false
	for f26_local9, f26_local10 in ipairs( LUI.bootHDRModes ) do
		for f26_local11, f26_local12 in ipairs( f26_local10.values ) do
			f26_local12.previousSetting = getSettingValue( f26_local12 )
			if f26_local12.maxVal ~= nil and f26_local12.minVal ~= nil and f26_local12.barSteps then
				f26_local12.step = (f26_local12.maxVal - f26_local12.minVal) / f26_local12.barSteps
			else
				f26_local12.step = 0
			end
			if f26_local12.initCustomValues then
				f26_local12:initCustomValues()
			end
			f26_local12.atFakeZero = f26_local12.previousSetting < 0
			if f26_local12.atFakeZero and f26_local9 == f0_local1 then
				f0_local9 = true
			end
		end
	end
	f26_local6 = CoD.CreateState( 345, -168, -345, -96, CoD.AnchorTypes.BottomLeftRight )
	f26_local6.material = RegisterMaterial( "black" )
	f26_local7 = LUI.UIImage.new( f26_local6 )
	f26_local7:registerAnimationState( "default", {
		alpha = 0
	} )
	f26_local7:registerAnimationState( "preview", {
		alpha = 0.4
	} )
	self:addElement( f26_local7 )
	f0_local18[#f0_local18 + 1] = f26_local7
	local f26_local14 = CoD.CreateState( 410, nil, -410, -65, CoD.AnchorTypes.All )
	f26_local14.alpha = 0.5
	local f26_local15 = LUI.UIElement.new( f26_local14 )
	f26_local15:registerAnimationState( "default", {
		alpha = 0.5
	} )
	f26_local15:registerAnimationState( "preview", {
		alpha = 1
	} )
	f26_local15:registerAnimationState( "hidden", {
		alpha = 0
	} )
	f0_local18[#f0_local18 + 1] = f26_local15
	self.buttonHelper = f26_local15
	self:addElement( f26_local15 )
	local f26_local13 = LUI.MenuBuilder.BuildAddChild( f26_local15, {
		type = "button_helper_text_main"
	} )
	self.buttonHelper.help = f26_local13
	if f26_arg1.is_in_options_menu == true then
		f26_local13:processEvent( {
			name = "add_button_helper_text",
			button_ref = "button_secondary",
			helper_text = Engine.Localize( "@MENU_CANCEL" ),
			side = "center",
			clickable = true,
			priority = -2000,
			color = Colors.white
		} )
	end
	update_preview_button( self )
	update_continue_button( self )
	f26_local13:processEvent( {
		name = "add_button_helper_text",
		button_ref = "button_alt2",
		helper_text = Engine.Localize( "@MENU_RESET_TO_DEFAULTS" ),
		side = "center",
		clickable = true,
		priority = -1500,
		color = Colors.white
	} )
	self:registerEventHandler( "menu_close", leaveMenuHandler )
	Engine.SetDvarBool( "r_hdrDisplayCalibrationMode", true )
	local f26_local12 = CoD.CreateState( 440, 72, -440, 108, CoD.AnchorTypes.TopLeftRight )
	f26_local12.material = RegisterMaterial( "black" )
	local f26_local16 = LUI.UIImage.new( f26_local12 )
	f26_local16:registerAnimationState( "default", {
		alpha = 0
	} )
	f26_local16:registerAnimationState( "preview", {
		alpha = 0.4
	} )
	self:addElement( f26_local16 )
	f0_local18[#f0_local18 + 1] = f26_local16
	local f26_local17 = LUI.UIText.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		top = 80,
		height = CoD.TextSettings.BodyFont.Height,
		left = 0,
		right = 0,
		font = CoD.TextSettings.BodyFont.Font,
		alignment = LUI.Alignment.Center,
		color = Colors.grey_4
	} )
	f26_local17.id = "boot_hdr_titleText_id"
	f26_local17:setText( Engine.Localize( "@MENU_HDR_ADJUST_TITLE" ) )
	f26_local17:registerAnimationState( "default", {
		color = Colors.grey_4
	} )
	f26_local17:registerAnimationState( "preview", {
		color = Colors.white
	} )
	f0_local18[#f0_local18 + 1] = f26_local17
	self.titleText = f26_local17
	self:addElement( f26_local17 )
	create_mode_ui( self, f0_local1 )
	if Engine.IsDevelopmentBuild() then
		f26_local1:registerEventHandler( "button_l3", toggleDebugInfo )
		f26_local1:registerEventHandler( "button_start", toggleBarInfo )
		local f26_local18 = Font18
		local f26_local19 = CoD.CreateState( (1 - SliderBounds.HorzMargin.Min) * ScreenResolution[currentScreenResolution].width, (1 - SliderBounds.VertMargin.Min) * ScreenResolution[currentScreenResolution].height, 500, 500, CoD.AnchorTypes.TopLeft )
		f26_local19.id = "debugContainer"
		local debugContainer = LUI.UIElement.new( f26_local19 )
		debugContainer:registerAnimationState( "default", {
			alpha = 1
		} )
		debugContainer:registerAnimationState( "hidden", {
			alpha = 0
		} )
		self:addElement( debugContainer )
		f26_local19.left = 0
		f26_local19.top = Font18.Height
		f26_local19.bottom = nil
		f26_local19.height = Font18.Height
		f26_local19.font = Font18.Font
		f26_local19.alignment = LUI.Alignment.Left
		f26_local19.color = Colors.grey_4
		for f26_local21 = 1, #LUI.bootHDRModes, 1 do
			f26_local19.id = LUI.bootHDRModes[f26_local21].name
			LUI.bootHDRModes[f26_local21].debugUIElem = LUI.UIText.new( f26_local19 )
			LUI.bootHDRModes[f26_local21].debugUIElem:registerAnimationState( "default", f26_local19 )
			LUI.bootHDRModes[f26_local21].debugUIElem:registerAnimationState( "highlight", {
				color = Colors.h2.yellow
			} )
			debugContainer:addElement( LUI.bootHDRModes[f26_local21].debugUIElem )
			f26_local19.top = Font18.Height * (f26_local21 + 1)
		end
		debugContainer.refreshTimer = LUI.UITimer.new( 100, "refresh_values" )
		debugContainer.refreshTimer.id = "refreshTimer"
		debugContainer:registerEventHandler( "refresh_values", update_hdr_debug_info )
		debugContainer:addElement( debugContainer.refreshTimer )
		f26_local2.debugContainer = debugContainer
		
		update_hdr_debug_info( debugContainer )
	end
	return self
end

function update_hdr_debug_info( f28_arg0 )
	for f28_local0 = 1, #LUI.bootHDRModes, 1 do
		if LUI.bootHDRModes[f28_local0].debugUIElem ~= nil then
			local f28_local3 = ""
			for f28_local7, f28_local8 in ipairs( LUI.bootHDRModes[f28_local0].values ) do
				f28_local3 = f28_local3 .. f28_local8.dvar .. ": " .. Engine.GetDvarFloat( f28_local8.dvar ) .. "\n"
			end
			LUI.bootHDRModes[f28_local0].debugUIElem:setText( f28_local3 )
			if f28_local0 == f0_local1 then
				LUI.bootHDRModes[f28_local0].debugUIElem:animateToState( "highlight", 0 )
			else
				LUI.bootHDRModes[f28_local0].debugUIElem:animateToState( "default", 0 )
			end
		end
	end
	if f0_local6 and LUI.bootHDRModes[f0_local1].drawFct == bar then
		if LUI.bootHDRModes[f0_local1].isMultiBar or f0_local4 then
			local f28_local0 = "\n\n"
			for f28_local3, f28_local4 in ipairs( LUI.bootHDRModes[f0_local1].props.bars ) do
				f28_local0 = f28_local0 .. "\n" .. f28_local4.material
			end
			LUI.bootHDRModes[f0_local1].debugUIElem:setText( LUI.bootHDRModes[f0_local1].name .. ": " .. Engine.GetDvarFloat( LUI.bootHDRModes[f0_local1].values[1].dvar ) .. f28_local0 )
		else
			LUI.bootHDRModes[f0_local1].debugUIElem:setText( LUI.bootHDRModes[f0_local1].name .. ": " .. Engine.GetDvarFloat( LUI.bootHDRModes[f0_local1].values[1].dvar ) .. "\n\n" .. LUI.bootHDRModes[f0_local1].props.bars[f0_local3].material )
		end
	end
end

function leaveMenuHandler( f29_arg0, f29_arg1 )
	Engine.SetDvarBool( "r_hdrDisplayCalibrationMode", false )
	for f29_local3, f29_local4 in ipairs( f0_local18 ) do
		f29_local4:closeTree()
		f29_local4:close()
	end
	f0_local18 = {}
	for f29_local3, f29_local4 in ipairs( f0_local17 ) do
		f29_local4:closeTree()
		f29_local4:close()
	end
	f0_local17 = {}
end

function text_needs_size_boost_in_language()
	local f30_local0 = Engine.GetCurrentLanguage()
	local f30_local1
	if f30_local0 ~= CoD.Language.Korean and f30_local0 ~= CoD.Language.Simplified_chinese and f30_local0 ~= CoD.Language.Traditional_chinese then
		f30_local1 = false
	else
		f30_local1 = true
	end
	return f30_local1
end

function create_instructions( f31_arg0, f31_arg1, f31_arg2, f31_arg3 )
	local self = LUI.UIText.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		top = 170,
		height = CoD.TextSettings.Font23.Height,
		left = 0,
		right = 0,
		font = CoD.TextSettings.Font23.Font,
		alignment = LUI.Alignment.Center,
		color = Colors.grey_4
	} )
	self.id = "boot_hdr_settingTitleText_id"
	self:setText( Engine.Localize( f31_arg1 ) )
	f31_arg0:addElement( self )
	local f31_local1 = CoD.TextSettings.Font16
	local f31_local2 = Font13
	if text_needs_size_boost_in_language() then
		f31_local1 = CoD.TextSettings.Font23
		f31_local2 = CoD.TextSettings.Font23
	end
	local f31_local3 = LUI.UIText.new( {
		topAnchor = false,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = -183,
		height = f31_local1.Height,
		left = 0,
		right = 0,
		font = f31_local1.Font,
		alignment = LUI.Alignment.Center,
		color = Colors.grey_4,
		lineSpacingRatio = 0.2
	} )
	f31_local3.id = "boot_hdr_instruction_txt2_id"
	f31_local3:setText( Engine.Localize( f31_arg2 ) )
	f31_arg0:addElement( f31_local3 )
	local f31_local4 = 580
	local f31_local5 = LUI.UILine.new( {
		topAnchor = false,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = false,
		top = -193,
		height = 0,
		left = (ScreenResolution[currentScreenResolution].width - f31_local4) / 2,
		width = f31_local4,
		color = Colors.grey_4
	} )
	f31_local5.id = "boot_hdr_instruction_divider_id"
	f31_arg0:addElement( f31_local5 )
	if f31_arg3 then
		local f31_local6 = CoD.CreateState( 0, 195, 0, nil, CoD.AnchorTypes.TopLeftRight )
		f31_local6.alignment = LUI.Alignment.Center
		f31_local6.color = Colors.grey_4
		f31_local6.font = f31_local2.Font
		f31_local6.height = f31_local2.Height
		local f31_local7 = LUI.UIText.new( f31_local6 )
		f31_local7:setText( Engine.Localize( f31_arg3 ) )
		f31_arg0:addElement( f31_local7 )
	end
end

function add_breadcumbs( f32_arg0 )
	if not f0_local10 then
		return 
	end
	local f32_local0 = 0
	local f32_local1 = 0
	for self, f32_local6 in ipairs( LUI.bootHDRModes ) do
		if not f32_local6.debug then
			f32_local0 = f32_local0 + 1
		end
		if self == f0_local1 then
			f32_local1 = f32_local0
		end
	end
	f32_local2 = 140
	f32_local3 = (ScreenResolution[currentScreenResolution].width - f32_local2) / 2
	f32_local4 = 10
	self = LUI.UIElement.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		top = 110,
		height = f32_local4,
		left = f32_local3,
		right = -f32_local3,
		alpha = 1
	} )
	f32_local6 = CoD.CreateState( 0, 2, 0, -2, CoD.AnchorTypes.Left )
	local f32_local7 = CoD.CreateState( 0, 0, nil, 0, CoD.AnchorTypes.TopBottomLeft )
	f32_local7.width = f32_local4
	f32_local7.font = CoD.TextSettings.BodyFont.Font
	f32_local7.alignment = LUI.Alignment.Center
	local f32_local8 = 0
	local f32_local9 = RegisterMaterial( "h2_hdr_breadcrumb_dottedline" )
	local f32_local10 = RegisterMaterial( "h2_hdr_breadcrumb_fullline" )
	for f32_local11 = 1, f32_local0, 1 do
		if f32_local11 < f32_local1 then
			f32_local7.color = Colors.grey_25
			f32_local6.material = f32_local10
			f32_local6.color = Colors.grey_25
		elseif f32_local1 < f32_local11 then
			f32_local7.color = Colors.grey_4
			f32_local6.material = f32_local9
			f32_local6.color = Colors.white
		else
			f32_local7.color = Colors.h2.yellow
			f32_local6.material = f32_local10
			f32_local6.color = Colors.grey_25
		end
		local f32_local14 = f32_local2 / (f32_local0 - 1) * (f32_local11 - 1)
		f32_local7.left = f32_local14 - f32_local4 / 2
		local f32_local15 = LUI.UIText.new( f32_local7 )
		f32_local15.id = "HDR_Crumb_" .. f32_local11
		f32_local15:setText( f32_local11 )
		self:addElement( f32_local15 )
		f32_local6.left = f32_local8 + f32_local4 / 2 + 5
		f32_local6.right = f32_local14 - f32_local4 / 2 - 5
		f32_local8 = f32_local14
		if f32_local11 > 1 then
			local f32_local16 = LUI.UIImage.new( f32_local6 )
			f32_local16.id = "HDR_Line_" .. f32_local11
			self:addElement( f32_local16 )
		end
	end
	f32_arg0:addElement( self )
	return self
end

function create_ref_combo( f33_arg0, f33_arg1, f33_arg2, f33_arg3, f33_arg4, f33_arg5, f33_arg6, f33_arg7, f33_arg8, f33_arg9, f33_arg10 )
	if f33_arg6 == nil then
		f33_arg6 = f33_arg5
	end
	if f33_arg7 == nil then
		f33_arg7 = -15
	end
	local f33_local0
	if f33_arg9 then
		f33_local0 = 2
		if not f33_local0 then
		
		else
			local f33_local1 = CoD.CreateState( f33_arg4 - f33_local0, f33_arg3 - f33_local0, f33_arg4 + f33_arg6 + f33_local0, f33_arg3 + f33_arg5 + f33_local0, CoD.AnchorTypes.TopLeft )
			if f33_arg9 then
				f33_local1.material = RegisterMaterial( f33_arg9 )
				f33_arg0:addElement( LUI.UIImage.new( f33_local1 ) )
				f33_local1.left = f33_local1.left + f33_local0
				f33_local1.top = f33_local1.top + f33_local0
				f33_local1.right = f33_local1.right - f33_local0
				f33_local1.bottom = f33_local1.bottom - f33_local0
			end
			f33_local1.material = RegisterMaterial( f33_arg8 )
			f33_arg0:addElement( LUI.UIImage.new( f33_local1 ) )
			if f0_local9 and f33_arg10 then
				f33_local1.material = RegisterMaterial( f33_arg10 )
			else
				f33_local1.material = RegisterMaterial( f33_arg1 )
			end
			local self = LUI.UIImage.new( f33_local1 )
			if f33_arg10 then
				f33_local1.material = RegisterMaterial( f33_arg1 )
				self:registerAnimationState( "default", f33_local1 )
				self:registerAnimationState( "fakeZero", {
					material = RegisterMaterial( f33_arg10 )
				} )
				self:registerEventHandler( "setFakeZero", function ( element )
					element:animateToState( "fakeZero" )
				end )
				self:registerEventHandler( "resetFakeZero", function ( element )
					element:animateToState( "default" )
				end )
			end
			f33_arg0:addElement( self )
			if f33_arg2 then
				local f33_local3 = LUI.UIText.new( {
					topAnchor = true,
					bottomAnchor = false,
					leftAnchor = false,
					rightAnchor = false,
					bottom = f33_arg7,
					height = 14,
					left = -100,
					right = 100,
					font = CoD.TextSettings.BodyFont.Font,
					color = Colors.grey_4,
					alignment = LUI.Alignment.Center
				} )
				f33_local3.id = f33_arg2 .. "_text_box_id"
				f33_local3:setText( Engine.Localize( f33_arg2 ) )
				self:addElement( f33_local3 )
			end
			return self
		end
	end
	f33_local0 = 0
end

function changeArrowState( f36_arg0, f36_arg1, f36_arg2, f36_arg3 )
	local f36_local0 = f36_arg0.currentModeContainer.leftArrowParent
	if f36_arg1 == "right" then
		f36_local0 = f36_arg0.currentModeContainer.rightArrowParent
	end
	if f36_arg2 then
		if f36_arg3 then
			f36_local0:processEvent( {
				name = "content_arrow_" .. f36_arg1,
				immediate = true
			} )
		else
			f36_local0:processEvent( {
				name = "show_arrow_" .. f36_arg1,
				immediate = true
			} )
		end
	else
		f36_local0:processEvent( {
			name = "disable_arrow_" .. f36_arg1,
			immediate = true
		} )
	end
end

function create_arrow( f37_arg0, f37_arg1, f37_arg2, f37_arg3, f37_arg4, f37_arg5, f37_arg6, f37_arg7 )
	local f37_local0 = 32
	local f37_local1 = 2
	local self = LUI.UIButton.new( {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = f37_arg3,
		rightAnchor = f37_arg4,
		top = -32,
		bottom = 32,
		left = f37_arg1,
		width = f37_local0
	} )
	self:registerAnimationState( "offset", {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = f37_arg3,
		rightAnchor = f37_arg4,
		top = -32,
		bottom = 32,
		left = f37_arg2,
		width = f37_local0
	} )
	self.id = "boot_hdr_" .. f37_arg7 .. "_arrow_btn_id"
	self:animateInLoop( {
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
	} )
	local f37_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f37_local3.color = Colors.white
	f37_local3.alpha = 1
	f37_local3.material = RegisterMaterial( f37_arg5 )
	local f37_local4 = LUI.UIImage.new( f37_local3 )
	f37_local4.id = "boot_hdr_" .. f37_arg7 .. "_arrow_image_id"
	f37_local3.alpha = 0
	f37_local4:registerAnimationState( "hidden", f37_local3 )
	f37_local3.alpha = 1
	f37_local4:registerAnimationState( "default", f37_local3 )
	f37_local3.color = Colors.h1.yellow
	f37_local3.top = f37_local1 * 2
	f37_local3.bottom = f37_local1 * -2
	f37_local3.left = f37_local1
	f37_local3.right = f37_local1 * -1
	f37_local4:registerAnimationState( "pulse", f37_local3 )
	self:addElement( f37_local4 )
	f37_arg0:addElement( self )
	return newArrow
end

function add_slider_bar( f38_arg0 )
	local f38_local0 = 540
	local f38_local1 = {
		topAnchor = false,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = false,
		left = (ScreenResolution[currentScreenResolution].width - f38_local0) / 2,
		width = f38_local0,
		height = 11,
		top = -260
	}
	local f38_local2 = {
		material = RegisterMaterial( "h2_hdr_slider_bg_selected" )
	}
	f38_arg0.scrollbar = LUI.UIHorizontalScrollbar.new( f38_local1, nil, 30, true, nil, nil, nil, Colors.h2.yellow, Colors.black, "white", "black", "white", "white", 14, Colors.grey_4, false )
	f38_arg0.scrollbar.id = "UIHorizontalScrollbar"
	f38_arg0.scrollbar:registerAnimationState( "default", {
		top = -260,
		bottom = -249,
		topAnchor = false,
		bottomAnchor = true
	} )
	f38_arg0.scrollbar:registerAnimationState( "preview", {
		top = -160,
		bottom = -149,
		topAnchor = false,
		bottomAnchor = true
	} )
	f0_local17[#f0_local17 + 1] = f38_arg0.scrollbar
	f38_arg0:addElement( f38_arg0.scrollbar )
	LUI.UIHorizontalScrollbar.RatioBasedUpdate( f38_arg0.scrollbar, 0 )
	f38_arg0:registerEventHandler( "refreshScrollBar", f0_local20 )
	f38_arg0.delayUpdateTimer = LUI.UITimer.new( 1, "refreshScrollBar" )
	f38_arg0.delayUpdateTimer.id = "delayUpdateTimer"
	f38_arg0:addElement( f38_arg0.delayUpdateTimer )
	create_arrows( f38_arg0, f38_arg0.scrollbar, f38_arg0.scrollbar )
	add_bar_value( f38_arg0 )
	update_bar_value( f38_arg0.scrollbar )
end

function add_bar_value( f39_arg0 )
	local f39_local0 = CoD.TextSettings.Font18
	if text_needs_size_boost_in_language() then
		f39_local0 = CoD.TextSettings.Font23
	end
	local self = LUI.UIText.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		bottom = 48 - f39_local0.Height,
		height = f39_local0.Height,
		left = 0,
		right = 0,
		font = f39_local0.Font,
		color = Colors.grey_4,
		alignment = LUI.Alignment.Center
	} )
	self.id = "bar_value_text_id"
	f39_arg0.scrollbar:addElement( self )
	f39_arg0.scrollbar.value = self
	self:registerAnimationState( "default", {
		color = Colors.grey_4
	} )
	self:registerAnimationState( "preview", {
		color = Colors.white
	} )
	f0_local18[#f0_local18 + 1] = self
end

function update_bar_value( f40_arg0 )
	f40_arg0.value:setText( get_bar_whole_value() + 1 )
end

function get_bar_whole_value()
	local f41_local0, f41_local1, f41_local2 = ipairs( LUI.bootHDRModes[f0_local1].values )
	local f41_local3, f41_local4 = f41_local0( f41_local1, f41_local2 )
	if f41_local3 ~= nil then
		f41_local2 = f41_local3
		local f41_local8 = getSettingValue( f41_local4 )
		if f41_local4.customProgressFunction then
			return f41_local4:customProgressFunction( f41_local8 )
		else
			local f41_local5 = f41_local4.maxVal - f41_local4.minVal
			local f41_local6, f41_local7 = math.modf( LUI.Round( (f41_local8 - f41_local4.minVal) / f41_local4.step ) )
			return f41_local6
		end
	else
		
	end
end

function background_override( f42_arg0, f42_arg1 )
	local f42_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f42_arg0 )
	local f42_local1 = "default"
	if LUI.bootHDRModes[f42_arg1].backgroundOverride then
		f42_local0.blackBackground:registerAnimationState( f42_local1, {
			material = RegisterMaterial( LUI.bootHDRModes[f42_arg1].backgroundOverride ),
			alpha = 1
		} )
	else
		f42_local0.blackBackground:registerAnimationState( f42_local1, {
			material = RegisterMaterial( "black" ),
			alpha = 1
		} )
	end
	f42_local0.blackBackground:animateToState( f42_local1, 0 )
end

function setFutureHDRSettingsToDefault( f43_arg0 )
	for f43_local8, f43_local9 in ipairs( LUI.bootHDRModes ) do
		if f0_local1 < f43_local8 then
			for f43_local6, f43_local7 in ipairs( f43_local9.values ) do
				Engine.SetProfileData( f43_local7.profileDataVar, f43_local7.default, Engine.GetControllerForLocalClient( 0 ) )
			end
		end
	end
	if f43_arg0 == nil or f43_arg0 == false then
		Engine.ApplyHDRProfileValues()
	end
end

function setFutureHDRSettingsToPlayerValues()
	for f44_local8, f44_local9 in ipairs( LUI.bootHDRModes ) do
		if f0_local1 < f44_local8 then
			for f44_local6, f44_local7 in ipairs( f44_local9.values ) do
				Engine.SetProfileData( f44_local7.profileDataVar, f44_local7.previousSetting, Engine.GetControllerForLocalClient( 0 ) )
			end
		end
	end
	Engine.ApplyHDRProfileValues()
end

function create_mode_ui( f45_arg0, f45_arg1 )
	f0_local17 = f0_local18
	if f45_arg0.currentModeContainer then
		f45_arg0.currentModeContainer:closeTree()
		f45_arg0.currentModeContainer:close()
		f45_arg0.currentModeContainer = nil
	end
	setFutureHDRSettingsToDefault( true )
	for f45_local3, f45_local4 in ipairs( LUI.bootHDRModes[f0_local1].values ) do
		Engine.SetProfileData( f45_local4.profileDataVar, f45_local4.previousSetting, Engine.GetControllerForLocalClient( 0 ) )
	end
	Engine.ApplyHDRProfileValues()
	f0_local11 = nil
	f0_local12 = false
	animateToCurrentPreviewBG( f45_arg0, nil )
	self = LUI.UIElement.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		alpha = 1
	} )
	self.id = "mode_container"
	f45_local1 = LUI.UIElement.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		alpha = 1
	} )
	f45_local1.id = "hideable_container"
	f45_local1:registerAnimationState( "default", {
		alpha = 1
	} )
	f45_local1:registerAnimationState( "preview", {
		alpha = 0
	} )
	create_instructions( f45_local1, LUI.bootHDRModes[f45_arg1].titleString, LUI.bootHDRModes[f45_arg1].subString, LUI.bootHDRModes[f45_arg1].props.instructionString )
	add_breadcumbs( f45_local1 )
	background_override( f45_arg0, f45_arg1 )
	f45_arg0.currentModeContainer = self
	f45_arg0.currentModeContainer.hideableContainer = f45_local1
	f0_local17[#f0_local17 + 1] = f45_local1
	LUI.bootHDRModes[f45_arg1].drawFct( f45_local1, LUI.bootHDRModes[f45_arg1].props )
	self:addElement( f45_local1 )
	f45_arg0:addElement( self )
	if f45_arg0.fadeIn == nil then
		f45_local2 = LUI.UIImage.new( {
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
		f45_local2:registerAnimationState( "default", {
			alpha = 1
		} )
		f45_local2:registerAnimationState( "invisible", {
			alpha = 0
		} )
		f45_local2.id = "boot_hdr_fade_in_id"
		f45_arg0.fadeIn = f45_local2
		f45_arg0.fadeIn:registerEventHandler( LUI.FormatAnimStateFinishEvent( "invisible" ), f0_local32 )
		f45_arg0:addElement( f45_local2 )
	end
	add_slider_bar( self )
	f45_local2 = true
	f45_local3 = true
	for f45_local7, f45_local8 in ipairs( LUI.bootHDRModes[f0_local1].values ) do
		local f45_local9 = getSettingValue( f45_local8 )
		if f45_local8.minVal ~= nil and f45_local2 then
			f45_local2 = f45_local8.minVal < f45_local9
		end
		if f45_local8.maxVal ~= nil and f45_local3 then
			f45_local3 = f45_local9 < f45_local8.maxVal
		end
	end
	f45_local4 = LUI.FlowManager.GetMenuScopedDataFromElement( f45_arg0 )
	changeArrowState( f45_local4.menu, "left", f45_local2, false )
	changeArrowState( f45_local4.menu, "right", f45_local3, false )
	update_continue_button( f45_local4.menu )
	f45_arg0.fadeIn:setPriority( 250 )
	f45_arg0.fadeIn:animateToState( "invisible", LUI.bootHDRModes[f45_arg1].fadeInTimeOverride or f0_local7 )
end

function create_arrows( f46_arg0, f46_arg1, f46_arg2 )
	f46_arg0.leftArrowParent = f46_arg1
	f46_arg0.rightArrowParent = f46_arg2
	f46_arg1:addElement( MBh.CreateArrowButtonFactory( "left", true, f46_arg1, -20, f0_local27 ) )
	f46_arg2:addElement( MBh.CreateArrowButtonFactory( "right", false, f46_arg2, -20, f0_local28 ) )
	f46_arg1:processEvent( {
		name = "show_arrows"
	} )
	f46_arg2:processEvent( {
		name = "show_arrows"
	} )
end

function horiz_squares( f47_arg0, f47_arg1 )
	local f47_local0 = function ( f48_arg0 )
		if f48_arg0.bgMat ~= nil then
			return f48_arg0.bgMat
		else
			return f47_arg1.bgMat
		end
	end
	
	local f47_local1 = ScreenResolution[currentScreenResolution].height * 0.2
	local f47_local2 = (ScreenResolution[currentScreenResolution].height - f47_local1) / 2
	local f47_local3 = ScreenResolution[currentScreenResolution].width / 2
	local f47_local4 = #f47_arg1.squares
	local f47_local5, f47_local6 = nil
	local f47_local7 = f47_arg1.spacerRatio or 0.5
	local f47_local8 = 1 + f47_local7
	local f47_local9 = f47_local3 - #f47_arg1.squares / 2 * f47_local1 - (#f47_arg1.squares - 1) / 2 * f47_local7 * f47_local1
	for f47_local13, f47_local14 in ipairs( f47_arg1.squares ) do
		f47_local6 = create_ref_combo( f47_arg0, f47_local14.material, f47_local14.string, f47_local2, f47_local9 + (f47_local13 - 1) * f47_local8 * f47_local1, f47_local1, nil, nil, f47_local0( f47_local14 ), f47_arg1.outlineMaterial, f47_local14.fakeZeroMaterial )
		if f47_local5 == nil then
			f47_local5 = f47_local6
		end
	end
end

function vert_rectangles( f49_arg0, f49_arg1 )
	local f49_local0 = function ( f50_arg0 )
		if f49_arg1.squares[f50_arg0].bgMat ~= nil then
			return f49_arg1.squares[f50_arg0].bgMat
		else
			return f49_arg1.bgMat
		end
	end
	
	local f49_local1 = 0.05
	local f49_local2 = 0.25
	local f49_local3 = ScreenResolution[currentScreenResolution].height * f49_local1
	local f49_local4 = ScreenResolution[currentScreenResolution].width * f49_local2
	local f49_local5 = (ScreenResolution[currentScreenResolution].height - f49_local3) / 2
	local f49_local6 = (ScreenResolution[currentScreenResolution].width - f49_local4) / 2
	create_ref_combo( f49_arg0, f49_arg1.squares[1].material, f49_arg1.squares[1].string, f49_local5 - f49_local3, f49_local6, f49_local3, f49_local4, f49_local3 / 2 + 9, f49_local0( 1 ), f49_arg1.fakeZeroMaterial )
	local f49_local7 = create_ref_combo( f49_arg0, f49_arg1.squares[2].material, f49_arg1.squares[2].string, f49_local5, f49_local6, f49_local3, f49_local4, f49_local3 / 2 + 9, f49_local0( 2 ), f49_arg1.fakeZeroMaterial )
	create_ref_combo( f49_arg0, f49_arg1.squares[3].material, f49_arg1.squares[3].string, f49_local5 + f49_local3, f49_local6, f49_local3, f49_local4, f49_local3 / 2 + 9, f49_local0( 3 ), f49_arg1.fakeZeroMaterial )
	create_arrows( f49_arg0, f49_local7, f49_local7 )
end

function bar( f51_arg0, f51_arg1 )
	local f51_local0 = 10
	local f51_local1 = ScreenResolution[currentScreenResolution].height / 2
	local f51_local2 = CoD.CreateState( 200, f51_local1, -200, nil, CoD.AnchorTypes.TopLeftRight )
	f51_local2.alpha = 1
	f51_local2.height = 20
	local f51_local3 = math.ceil( #f51_arg1.bars / 2 )
	f51_local2.top = f51_local1 - f51_local2.height * 0.5 - f51_local0
	f51_local2.material = RegisterMaterial( f51_arg1.bars[f0_local3].material )
	local self = LUI.UIImage.new( f51_local2 )
	f51_arg0:addElement( self )
	create_arrows( f51_arg0, self, self )
end

function multibars( f52_arg0, f52_arg1 )
	local f52_local0 = 10
	local f52_local1 = ScreenResolution[currentScreenResolution].height / 2
	local f52_local2 = CoD.CreateState( 200, f52_local1, -200, nil, CoD.AnchorTypes.TopLeftRight )
	f52_local2.alpha = 1
	f52_local2.height = 20
	local f52_local3 = math.ceil( #f52_arg1.bars / 2 )
	for f52_local7, f52_local8 in ipairs( f52_arg1.bars ) do
		local f52_local9 = f52_local3 - f52_local7
		f52_local2.top = f52_local1 - f52_local2.height * (f52_local9 + 0.5) - f52_local0 * f52_local9
		f52_local2.material = RegisterMaterial( f52_local8.material )
		local self = LUI.UIImage.new( f52_local2 )
		f52_arg0:addElement( self )
		if f52_local9 == 0 then
			create_arrows( f52_arg0, self, self )
		end
	end
end

LUI.bootHDRModes = {
	{
		name = "Min",
		values = {
			{
				dvar = "r_hdrDisplayMinLuminance",
				profileDataVar = "hdrMinLuminance",
				minVal = -0,
				maxVal = 0.12,
				barSteps = 24,
				previousSetting = nil,
				default = -0,
				customProgressFunction = function ( f53_arg0, f53_arg1 )
					local f53_local0 = f53_arg0.maxVal - f53_arg0.minVal
					local f53_local1, f53_local2 = math.modf( LUI.Round( (f53_arg1 - f53_arg0.minVal) / f53_arg0.step ) )
					return f53_local1
				end,
				scrollbarValueFunction = function ( f54_arg0, f54_arg1 )
					return f54_arg0:customProgressFunction( f54_arg1 ) / f54_arg0.barSteps
				end,
				customIncrementFunction = function ( f55_arg0, f55_arg1, f55_arg2, f55_arg3 )
					local f55_local0 = f55_arg1 + f55_arg2 * f55_arg0.step
					if not f55_arg0.atFakeZero and f55_local0 < 0 and f55_arg1 <= 0 + f55_arg0.step / 2 then
						f55_arg0.atFakeZero = true
						f55_arg3.menu:processEvent( {
							name = "setFakeZero"
						} )
					elseif f55_arg0.atFakeZero and f55_local0 >= 0 then
						f55_arg0.atFakeZero = false
						f55_arg3.menu:processEvent( {
							name = "resetFakeZero"
						} )
					end
					return f55_local0
				end
			}
		},
		backgroundOverride = "h2_hdr_full_background_min",
		titleString = "@MENU_HDR_DARK_LEVEL",
		subString = "@MENU_HDR_DARK_LEVEL_DESC",
		debugUIElem = nil,
		drawFct = horiz_squares,
		props = {
			instructionString = "@MENU_HDR_MATCH_THE_SQUARE",
			squares = {
				{
					string = "@MENU_BRIGHTNESS_NOT_VISIBLE",
					material = "h2_hdr_not_visible_min"
				},
				{
					string = "@MENU_BRIGHTNESS_BARELY_VISIBLE",
					material = "h2_hdr_barely_visible_min",
					fakeZeroMaterial = "h2_hdr_not_visible_min"
				},
				{
					string = "@MENU_BRIGHTNESS_EASILY_VISIBLE",
					material = "h2_hdr_fully_visible_min"
				}
			},
			bgMat = "h2_hdr_backer_reference_min",
			outlineMaterial = "h2_hdr_backer_reference_scene_outline"
		}
	},
	{
		name = "Max",
		values = {
			{
				dvar = "r_hdrDisplayMaxLuminance",
				profileDataVar = "hdrMaxLuminance",
				minVal = 100,
				maxVal = 10000,
				barSteps = 99,
				pow = 2.2,
				initCustomValues = function ( f56_arg0 )
					f56_arg0.maxBase = (f56_arg0.maxVal - f56_arg0.minVal) ^ (1 / f56_arg0.pow)
					f56_arg0.baseRange = f56_arg0.maxBase
					f56_arg0.rangeStep = f56_arg0.baseRange / f56_arg0.barSteps
				end,
				customProgressFunction = function ( f57_arg0, f57_arg1 )
					local f57_local0, f57_local1 = math.modf( LUI.Round( (f57_arg1 - f57_arg0.minVal) ^ (1 / f57_arg0.pow) / f57_arg0.baseRange * f57_arg0.barSteps ) )
					return f57_local0
				end,
				scrollbarValueFunction = function ( f58_arg0, f58_arg1 )
					return f58_arg0:customProgressFunction( f58_arg1 ) / f58_arg0.barSteps
				end,
				customIncrementFunction = function ( f59_arg0, f59_arg1, f59_arg2 )
					return f59_arg0.minVal + math.max( f59_arg2 * f59_arg0.rangeStep + (f59_arg1 - f59_arg0.minVal) ^ (1 / f59_arg0.pow), 0 ) ^ f59_arg0.pow
				end,
				previousSetting = nil,
				default = 650
			}
		},
		titleString = "@MENU_HDR_LUMINANCE",
		subString = "@MENU_HDR_LUMINANCE_DESC",
		debugUIElem = nil,
		fadeInTimeOverride = 1800,
		drawFct = horiz_squares,
		props = {
			instructionString = "@MENU_HDR_MATCH_THE_SQUARE",
			squares = {
				{
					string = "@MENU_BRIGHTNESS_NOT_VISIBLE",
					material = "h2_hdr_not_visible_max"
				},
				{
					string = "@MENU_BRIGHTNESS_BARELY_VISIBLE",
					material = "h2_hdr_barely_visible_max"
				},
				{
					string = "@MENU_BRIGHTNESS_EASILY_VISIBLE",
					material = "h2_hdr_fully_visible_max"
				}
			},
			bgMat = "h2_hdr_backer_reference_max",
			outlineMaterial = "h2_hdr_backer_reference_scene_outline"
		}
	},
	{
		name = "Scene and Gamma combo",
		values = {
			{
				dvar = "r_hdrDisplayRefSceneLuminance",
				profileDataVar = "hdrSceneLuminance",
				minVal = 100,
				maxVal = 500,
				barSteps = 19,
				previousSetting = nil,
				default = 200
			},
			{
				dvar = "r_hdrDisplayRefUILuminance",
				profileDataVar = "hdrUILuminance",
				refValueIndex = 1,
				refValueRatio = 1.5,
				customIncrementFunction = function ( f60_arg0, f60_arg1, f60_arg2 )
					return getSettingValue( LUI.bootHDRModes[f0_local1].values[f60_arg0.refValueIndex] ) * f60_arg0.refValueRatio
				end,
				default = 300
			},
			{
				dvar = "r_hdrDisplayGamma",
				profileDataVar = "hdrDisplayGamma",
				minVal = 2,
				maxVal = 2.6,
				refValueIndex = 1,
				default = 2.4,
				customIncrementFunction = function ( f61_arg0, f61_arg1, f61_arg2 )
					local f61_local0 = LUI.bootHDRModes[f0_local1].values[f61_arg0.refValueIndex]
					return f61_arg0.default + (getSettingValue( f61_local0 ) - f61_local0.default) / 25 * -0.05
				end
			}
		},
		titleString = "@MENU_HDR_SCENEREF",
		subString = "@MENU_HDR_SCENEREF_DESC",
		debugUIElem = nil,
		drawFct = horiz_squares,
		props = {
			instructionString = "@MENU_HDR_MATCH_THE_SQUARE2",
			squares = {
				{
					material = "h2_hdr_barely_visible_scene_min",
					bgMat = "h2_hdr_backer_reference_scene_min"
				},
				{
					material = "h2_hdr_barely_visible_scene_low_mid",
					bgMat = "h2_hdr_backer_reference_scene_low_mid"
				},
				{
					material = "h2_hdr_barely_visible_scene_mid",
					bgMat = "h2_hdr_backer_reference_scene_mid"
				},
				{
					material = "h2_hdr_barely_visible_scene_high_mid",
					bgMat = "h2_hdr_backer_reference_scene_high_mid"
				},
				{
					material = "h2_hdr_barely_visible_scene_max",
					bgMat = "h2_hdr_backer_reference_scene_max"
				}
			},
			spacerRatio = 0.15,
			bgMat = "h2_hdr_backer_reference_min",
			outlineMaterial = "h2_hdr_backer_reference_scene_outline"
		}
	}
}
LUI.MenuBuilder.registerType( "boot_hdr", boot_hdr )
LockTable( _M )
