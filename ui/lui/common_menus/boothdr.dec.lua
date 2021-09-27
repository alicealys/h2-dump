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
		UPVAL3 = f0_local23 + f0_local24
	else
		UPVAL3 = 1
	end
	UPVAL1 = Engine.GetTimeMsecs()
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
	UPVAL0 = math.max( f0_local2 - 0.1, 0 )
	f0_local29( f10_arg0 )
end

local f0_local31 = function ( f11_arg0, f11_arg1 )
	UPVAL0 = math.min( f0_local2 + 0.1, 1 )
	f0_local29( f11_arg0 )
end

local f0_local32 = function ( f12_arg0, f12_arg1 )
	UPVAL0 = false
end

local f0_local33 = function ( f13_arg0, f13_arg1 )
	UPVAL0 = f0_local1 + 1
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
	UPVAL1 = 1
	local f14_local2 = f14_arg0:getParent()
	if f14_local2 and f14_local2.fadeIn then
		UPVAL2 = true
		f14_local2.fadeIn:animateToState( "default", f0_local7 )
		f14_local2.fadeIn:registerEventHandler( LUI.FormatAnimStateFinishEvent( "default" ), function ( element, event )
			f0_local33( element, event )
		end )
	else
		f0_local33( f14_arg0, f14_arg1 )
	end
	return true
end

local f0_local35 = function ( f15_arg0, f15_arg1 )
	if f0_local8 then
		return 
	end
	Engine.PlaySound( CoD.SFX.MenuBack )
	for f15_local6, f15_local7 in ipairs( LUI.bootHDRModes ) do
		for f15_local3, f15_local4 in ipairs( f15_local7.values ) do
			setSettingValue( f15_local4, f15_local4.previousSetting )
		end
	end
	Engine.ExecNow( "updategamerprofile" )
	Engine.ApplyHDRProfileValues()
	LUI.FlowManager.RequestLeaveMenu( f15_arg0 )
end

local f0_local36 = function ( f16_arg0, f16_arg1 )
	if f0_local8 then
		return 
	end
	Engine.PlaySound( CoD.SFX.MenuAccept )
	local f16_local0 = true
	local f16_local1 = true
	local f16_local2 = LUI.FlowManager.GetMenuScopedDataFromElement( f16_arg0 )
	for f16_local6, f16_local7 in ipairs( LUI.bootHDRModes[f0_local1].values ) do
		if f16_local7.default ~= nil then
			setSettingValue( f16_local7, f16_local7.default )
			if f16_local7.minVal ~= nil and f16_local0 then
				f16_local0 = f16_local7.minVal < f16_local7.default
			end
			if f16_local7.maxVal ~= nil and f16_local1 then
				f16_local1 = f16_local7.default < f16_local7.maxVal
			end
			if f16_local7.atFakeZero == false then
				f16_local7.atFakeZero = true
				f16_local2.menu:processEvent( {
					name = "setFakeZero"
				} )
			end
		end
	end
	changeArrowState( f16_local2.menu, "left", f16_local0, false )
	changeArrowState( f16_local2.menu, "right", f16_local1, false )
	Engine.ExecNow( "updategamerprofile" )
	Engine.ApplyHDRProfileValues()
end

function toggleDebugInfo( f17_arg0, f17_arg1 )
	UPVAL0 = not f0_local5
	local f17_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f17_arg0 )
	if f0_local5 then
		f17_local0.debugContainer:animateToState( "default", 0 )
	else
		f17_local0.debugContainer:animateToState( "hidden", 0 )
	end
end

function update_continue_button( f18_arg0 )
	local f18_local0 = "@MENU_NEXT"
	if f0_local1 == #LUI.bootHDRModes then
		f18_local0 = "@MENU_APPLY"
	end
	f0_local13.helper_text = Engine.Localize( f18_local0 )
	f18_arg0.buttonHelper.help:processEvent( f0_local13 )
end

function update_preview_button( f19_arg0 )
	local f19_local0 = "@LUA_MENU_HDR_PREVIEW"
	if f0_local11 ~= nil then
		if f0_local12 or Engine.InFrontend() then
			f19_local0 = "@LUA_MENU_HDR_STOP_PREVIEW"
		else
			f19_local0 = "@LUA_MENU_HDR_INGAME_PREVIEW"
		end
	end
	f0_local14.helper_text = Engine.Localize( f19_local0 )
	f19_arg0.buttonHelper.help:processEvent( f0_local14 )
end

function toggleBarInfo( f20_arg0, f20_arg1 )
	UPVAL0 = not f0_local6
	local f20_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f20_arg0 )
	update_hdr_debug_info( f20_local0.debugContainer )
end

function animateToCurrentPreviewBG( f21_arg0, f21_arg1 )
	local f21_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f21_arg0 )
	if f0_local11 == nil then
		f21_local0.blackBackground:animateToState( "default" )
		f21_local0.previewImage:animateToState( "default" )
		for f21_local4, f21_local5 in ipairs( f0_local17 ) do
			f21_local5:animateToState( "default" )
		end
		f21_local0.menu.titleText:setText( Engine.Localize( "@MENU_HDR_ADJUST_TITLE" ) )
	elseif f0_local12 then
		f21_local0.blackBackground:animateToState( "gamePreviewBg" .. f0_local11 )
		f21_local0.previewImage:animateToState( "gamePreviewBg" .. f0_local11 )
	else
		f21_local0.blackBackground:animateToState( "previewBg" .. f0_local11 )
		f21_local0.previewImage:animateToState( "previewBg" .. f0_local11 )
		for f21_local4, f21_local5 in ipairs( f0_local17 ) do
			f21_local5:animateToState( "preview" )
		end
		if Engine.IsRightToLeftLanguage() then
			f21_local0.menu.titleText:setText( Engine.Localize( LUI.bootHDRModes[f0_local1].titleString ) .. " - " .. Engine.Localize( "@MENU_HDR_ADJUST_TITLE" ) )
		end
		f21_local0.menu.titleText:setText( Engine.Localize( "@MENU_HDR_ADJUST_TITLE" ) .. " - " .. Engine.Localize( LUI.bootHDRModes[f0_local1].titleString ) )
	end
	update_preview_button( f21_local0.menu )
end

function togglePreviewBG( f22_arg0, f22_arg1 )
	if f0_local8 then
		return 
	end
	Engine.PlaySound( CoD.SFX.MenuAccept )
	if f0_local11 == nil then
		Engine.SetDvarBool( "r_hdrDisplayCalibrationMode", false )
		setFutureHDRSettingsToPlayerValues()
		UPVAL1 = 1
	elseif f0_local12 or Engine.InFrontend() then
		Engine.SetDvarBool( "r_hdrDisplayCalibrationMode", true )
		setFutureHDRSettingsToDefault()
		UPVAL1 = nil
		UPVAL2 = false
	else
		UPVAL2 = true
	end
	animateToCurrentPreviewBG( f22_arg0, f22_arg1 )
end

function previousPreviewBG( f23_arg0, f23_arg1 )
	if f0_local8 then
		return 
	elseif f0_local11 == nil then
		return 
	end
	UPVAL1 = f0_local11 - 1
	if f0_local11 < 1 then
		UPVAL1 = #f0_local15
	end
	animateToCurrentPreviewBG( f23_arg0, f23_arg1 )
end

function nextPreviewBG( f24_arg0, f24_arg1 )
	if f0_local8 then
		return 
	elseif f0_local11 == nil then
		return 
	end
	UPVAL1 = f0_local11 + 1
	if #f0_local15 < f0_local11 then
		UPVAL1 = 1
	end
	animateToCurrentPreviewBG( f24_arg0, f24_arg1 )
end

function boot_hdr( f25_arg0, f25_arg1 )
	UPVAL0 = f25_arg1.start_index or 1
	UPVAL1 = true
	UPVAL2 = nil
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
	local self = LUI.UIBindButton.new()
	self.id = "boot_hdr_bind_btn_id"
	self:registerEventHandler( "button_left", f0_local27 )
	self:registerEventHandler( "button_right", f0_local28 )
	self:registerEventHandler( "button_alt1", togglePreviewBG )
	self:registerEventHandler( "button_shoulderl", previousPreviewBG )
	self:registerEventHandler( "button_shoulderr", nextPreviewBG )
	self:registerEventHandler( "button_alt2", f0_local36 )
	self:registerEventHandler( "button_action", function ( element, event )
		if f0_local8 then
			return 
		elseif not f0_local34( element, event ) then
			LUI.FlowManager.RequestLeaveMenu( element )
			if f25_arg1.is_in_options_menu ~= true and f25_arg1.callback then
				f25_arg1.callback( event.controller )
			end
		end
	end )
	local f25_local2 = LUI.FlowManager.GetMenuScopedDataFromElement( self )
	f25_local2.menu = self
	if f25_arg1.is_in_options_menu == true then
		self:registerEventHandler( "button_secondary", f0_local35 )
	end
	if f25_arg1.show_breadcumb ~= nil then
		UPVAL9 = f25_arg1.show_breadcumb
	else
		UPVAL9 = true
	end
	self.handlePrimary = true
	self:addElement( self )
	local f25_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f25_local3.material = RegisterMaterial( "black" )
	f25_local2.blackBackground = LUI.UIImage.new( f25_local3 )
	f25_local2.blackBackground.id = "boot_hdr_blackbg_id"
	f25_local2.blackBackground:registerAnimationState( "default", {
		material = RegisterMaterial( "black" ),
		alpha = 1
	} )
	self:addElement( f25_local2.blackBackground )
	local f25_local4 = nil
	local f25_local5 = Engine.InFrontend()
	if f25_local5 then
		f25_local4 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	else
		f25_local4 = CoD.CreateState( -320, -580, 320, -180, CoD.AnchorTypes.Bottom )
	end
	f25_local4.alpha = 0
	f25_local2.previewImage = LUI.UIImage.new( f25_local4 )
	f25_local2.previewImage.id = "boot_hdr_preview_id"
	f25_local2.previewImage:registerAnimationState( "default", {
		material = nil,
		alpha = 0
	} )
	if f25_local5 then
		for f25_local9, f25_local10 in ipairs( f0_local15 ) do
			f25_local2.blackBackground:registerAnimationState( "previewBg" .. f25_local9, {
				alpha = 1
			} )
			f25_local2.blackBackground:registerAnimationState( "gamePreviewBg" .. f25_local9, {
				alpha = f25_local10.blackAlpha
			} )
			f25_local2.previewImage:registerAnimationState( "previewBg" .. f25_local9, {
				material = RegisterMaterial( f25_local10.material ),
				alpha = 1
			} )
			f25_local2.previewImage:registerAnimationState( "gamePreviewBg" .. f25_local9, {
				alpha = 0
			} )
		end
	else
		for f25_local9, f25_local10 in ipairs( f0_local16 ) do
			f25_local2.blackBackground:registerAnimationState( "previewBg" .. f25_local9, {
				alpha = 1
			} )
			f25_local2.blackBackground:registerAnimationState( "gamePreviewBg" .. f25_local9, {
				alpha = f25_local10.blackAlpha
			} )
			f25_local2.previewImage:registerAnimationState( "previewBg" .. f25_local9, {
				material = RegisterMaterial( f25_local10.material ),
				alpha = 1
			} )
			f25_local2.previewImage:registerAnimationState( "gamePreviewBg" .. f25_local9, {
				alpha = 0
			} )
		end
	end
	self:addElement( f25_local2.previewImage )
	UPVAL12 = false
	for f25_local9, f25_local10 in ipairs( LUI.bootHDRModes ) do
		for f25_local11, f25_local12 in ipairs( f25_local10.values ) do
			f25_local12.previousSetting = getSettingValue( f25_local12 )
			if f25_local12.maxVal ~= nil and f25_local12.minVal ~= nil and f25_local12.barSteps then
				f25_local12.step = (f25_local12.maxVal - f25_local12.minVal) / f25_local12.barSteps
			else
				f25_local12.step = 0
			end
			if f25_local12.initCustomValues then
				f25_local12:initCustomValues()
			end
			f25_local12.atFakeZero = f25_local12.previousSetting < 0
			if f25_local12.atFakeZero and f25_local9 == f0_local1 then
				UPVAL12 = true
			end
		end
	end
	f25_local6 = CoD.CreateState( 345, -168, -345, -96, CoD.AnchorTypes.BottomLeftRight )
	f25_local6.material = RegisterMaterial( "black" )
	self = LUI.UIImage.new( f25_local6 )
	self:registerAnimationState( "default", {
		alpha = 0
	} )
	self:registerAnimationState( "preview", {
		alpha = 0.4
	} )
	self:addElement( self )
	f0_local18[#f0_local18 + 1] = self
	local f25_local14 = CoD.CreateState( 410, nil, -410, -65, CoD.AnchorTypes.All )
	f25_local14.alpha = 0.5
	local self = LUI.UIElement.new( f25_local14 )
	self:registerAnimationState( "default", {
		alpha = 0.5
	} )
	self:registerAnimationState( "preview", {
		alpha = 1
	} )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	f0_local18[#f0_local18 + 1] = self
	self.buttonHelper = self
	self:addElement( self )
	local f25_local13 = LUI.MenuBuilder.BuildAddChild( self, {
		type = "button_helper_text_main"
	} )
	self.buttonHelper.help = f25_local13
	if f25_arg1.is_in_options_menu == true then
		f25_local13:processEvent( {
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
	f25_local13:processEvent( {
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
	local f25_local12 = CoD.CreateState( 440, 72, -440, 108, CoD.AnchorTypes.TopLeftRight )
	f25_local12.material = RegisterMaterial( "black" )
	local self = LUI.UIImage.new( f25_local12 )
	self:registerAnimationState( "default", {
		alpha = 0
	} )
	self:registerAnimationState( "preview", {
		alpha = 0.4
	} )
	self:addElement( self )
	f0_local18[#f0_local18 + 1] = self
	local self = LUI.UIText.new( {
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
	self.id = "boot_hdr_titleText_id"
	self:setText( Engine.Localize( "@MENU_HDR_ADJUST_TITLE" ) )
	self:registerAnimationState( "default", {
		color = Colors.grey_4
	} )
	self:registerAnimationState( "preview", {
		color = Colors.white
	} )
	f0_local18[#f0_local18 + 1] = self
	self.titleText = self
	self:addElement( self )
	create_mode_ui( self, f0_local1 )
	if Engine.IsDevelopmentBuild() then
		self:registerEventHandler( "button_l3", toggleDebugInfo )
		self:registerEventHandler( "button_start", toggleBarInfo )
		local f25_local18 = Font18
		local f25_local19 = CoD.CreateState( (1 - SliderBounds.HorzMargin.Min) * ScreenResolution[currentScreenResolution].width, (1 - SliderBounds.VertMargin.Min) * ScreenResolution[currentScreenResolution].height, 500, 500, CoD.AnchorTypes.TopLeft )
		f25_local19.id = "debugContainer"
		local debugContainer = LUI.UIElement.new( f25_local19 )
		debugContainer:registerAnimationState( "default", {
			alpha = 1
		} )
		debugContainer:registerAnimationState( "hidden", {
			alpha = 0
		} )
		self:addElement( debugContainer )
		f25_local19.left = 0
		f25_local19.top = Font18.Height
		f25_local19.bottom = nil
		f25_local19.height = Font18.Height
		f25_local19.font = Font18.Font
		f25_local19.alignment = LUI.Alignment.Left
		f25_local19.color = Colors.grey_4
		for f25_local21 = 1, #LUI.bootHDRModes, 1 do
			f25_local19.id = LUI.bootHDRModes[f25_local21].name
			LUI.bootHDRModes[f25_local21].debugUIElem = LUI.UIText.new( f25_local19 )
			LUI.bootHDRModes[f25_local21].debugUIElem:registerAnimationState( "default", f25_local19 )
			LUI.bootHDRModes[f25_local21].debugUIElem:registerAnimationState( "highlight", {
				color = Colors.h2.yellow
			} )
			debugContainer:addElement( LUI.bootHDRModes[f25_local21].debugUIElem )
			f25_local19.top = Font18.Height * (f25_local21 + 1)
		end
		debugContainer.refreshTimer = LUI.UITimer.new( 100, "refresh_values" )
		debugContainer.refreshTimer.id = "refreshTimer"
		debugContainer:registerEventHandler( "refresh_values", update_hdr_debug_info )
		debugContainer:addElement( debugContainer.refreshTimer )
		f25_local2.debugContainer = debugContainer
		
		update_hdr_debug_info( debugContainer )
	end
	return self
end

function update_hdr_debug_info( f26_arg0 )
	for f26_local0 = 1, #LUI.bootHDRModes, 1 do
		if LUI.bootHDRModes[f26_local0].debugUIElem ~= nil then
			local f26_local3 = ""
			for f26_local7, f26_local8 in ipairs( LUI.bootHDRModes[f26_local0].values ) do
				f26_local3 = f26_local3 .. f26_local8.dvar .. ": " .. Engine.GetDvarFloat( f26_local8.dvar ) .. "\n"
			end
			LUI.bootHDRModes[f26_local0].debugUIElem:setText( f26_local3 )
			if f26_local0 == f0_local1 then
				LUI.bootHDRModes[f26_local0].debugUIElem:animateToState( "highlight", 0 )
			else
				LUI.bootHDRModes[f26_local0].debugUIElem:animateToState( "default", 0 )
			end
		end
	end
	if f0_local6 and LUI.bootHDRModes[f0_local1].drawFct == bar then
		if LUI.bootHDRModes[f0_local1].isMultiBar or f0_local4 then
			local f26_local0 = "\n\n"
			for f26_local3, f26_local4 in ipairs( LUI.bootHDRModes[f0_local1].props.bars ) do
				f26_local0 = f26_local0 .. "\n" .. f26_local4.material
			end
			LUI.bootHDRModes[f0_local1].debugUIElem:setText( LUI.bootHDRModes[f0_local1].name .. ": " .. Engine.GetDvarFloat( LUI.bootHDRModes[f0_local1].values[1].dvar ) .. f26_local0 )
		else
			LUI.bootHDRModes[f0_local1].debugUIElem:setText( LUI.bootHDRModes[f0_local1].name .. ": " .. Engine.GetDvarFloat( LUI.bootHDRModes[f0_local1].values[1].dvar ) .. "\n\n" .. LUI.bootHDRModes[f0_local1].props.bars[f0_local3].material )
		end
	end
end

function leaveMenuHandler( f27_arg0, f27_arg1 )
	Engine.SetDvarBool( "r_hdrDisplayCalibrationMode", false )
	for f27_local3, f27_local4 in ipairs( f0_local18 ) do
		f27_local4:closeTree()
		f27_local4:close()
	end
	UPVAL0 = {}
	for f27_local3, f27_local4 in ipairs( f0_local17 ) do
		f27_local4:closeTree()
		f27_local4:close()
	end
	UPVAL1 = {}
end

function text_needs_size_boost_in_language()
	local f28_local0 = Engine.GetCurrentLanguage()
	local f28_local1
	if f28_local0 ~= CoD.Language.Korean and f28_local0 ~= CoD.Language.Simplified_chinese and f28_local0 ~= CoD.Language.Traditional_chinese then
		f28_local1 = false
	else
		f28_local1 = true
	end
	return f28_local1
end

function create_instructions( f29_arg0, f29_arg1, f29_arg2, f29_arg3 )
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
	self:setText( Engine.Localize( f29_arg1 ) )
	f29_arg0:addElement( self )
	local f29_local1 = CoD.TextSettings.Font16
	local f29_local2 = Font13
	if text_needs_size_boost_in_language() then
		f29_local1 = CoD.TextSettings.Font23
		f29_local2 = CoD.TextSettings.Font23
	end
	local self = LUI.UIText.new( {
		topAnchor = false,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true,
		top = -183,
		height = f29_local1.Height,
		left = 0,
		right = 0,
		font = f29_local1.Font,
		alignment = LUI.Alignment.Center,
		color = Colors.grey_4,
		lineSpacingRatio = 0.2
	} )
	self.id = "boot_hdr_instruction_txt2_id"
	self:setText( Engine.Localize( f29_arg2 ) )
	f29_arg0:addElement( self )
	local f29_local4 = 580
	local self = LUI.UILine.new( {
		topAnchor = false,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = false,
		top = -193,
		height = 0,
		left = (ScreenResolution[currentScreenResolution].width - f29_local4) / 2,
		width = f29_local4,
		color = Colors.grey_4
	} )
	self.id = "boot_hdr_instruction_divider_id"
	f29_arg0:addElement( self )
	if f29_arg3 then
		local f29_local6 = CoD.CreateState( 0, 195, 0, nil, CoD.AnchorTypes.TopLeftRight )
		f29_local6.alignment = LUI.Alignment.Center
		f29_local6.color = Colors.grey_4
		f29_local6.font = f29_local2.Font
		f29_local6.height = f29_local2.Height
		local self = LUI.UIText.new( f29_local6 )
		self:setText( Engine.Localize( f29_arg3 ) )
		f29_arg0:addElement( self )
	end
end

function add_breadcumbs( f30_arg0 )
	if not f0_local10 then
		return 
	end
	local f30_local0 = 0
	local f30_local1 = 0
	for self, f30_local6 in ipairs( LUI.bootHDRModes ) do
		if not f30_local6.debug then
			f30_local0 = f30_local0 + 1
		end
		if self == f0_local1 then
			f30_local1 = f30_local0
		end
	end
	f30_local2 = 140
	f30_local3 = (ScreenResolution[currentScreenResolution].width - f30_local2) / 2
	f30_local4 = 10
	self = LUI.UIElement.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		top = 110,
		height = f30_local4,
		left = f30_local3,
		right = -f30_local3,
		alpha = 1
	} )
	f30_local6 = CoD.CreateState( 0, 2, 0, -2, CoD.AnchorTypes.Left )
	local f30_local7 = CoD.CreateState( 0, 0, nil, 0, CoD.AnchorTypes.TopBottomLeft )
	f30_local7.width = f30_local4
	f30_local7.font = CoD.TextSettings.BodyFont.Font
	f30_local7.alignment = LUI.Alignment.Center
	local f30_local8 = 0
	local f30_local9 = RegisterMaterial( "h2_hdr_breadcrumb_dottedline" )
	local f30_local10 = RegisterMaterial( "h2_hdr_breadcrumb_fullline" )
	for f30_local11 = 1, f30_local0, 1 do
		if f30_local11 < f30_local1 then
			f30_local7.color = Colors.grey_25
			f30_local6.material = f30_local10
			f30_local6.color = Colors.grey_25
		elseif f30_local1 < f30_local11 then
			f30_local7.color = Colors.grey_4
			f30_local6.material = f30_local9
			f30_local6.color = Colors.white
		else
			f30_local7.color = Colors.h2.yellow
			f30_local6.material = f30_local10
			f30_local6.color = Colors.grey_25
		end
		local f30_local14 = f30_local2 / (f30_local0 - 1) * (f30_local11 - 1)
		f30_local7.left = f30_local14 - f30_local4 / 2
		local self = LUI.UIText.new( f30_local7 )
		self.id = "HDR_Crumb_" .. f30_local11
		self:setText( f30_local11 )
		self:addElement( self )
		f30_local6.left = f30_local8 + f30_local4 / 2 + 5
		f30_local6.right = f30_local14 - f30_local4 / 2 - 5
		f30_local8 = f30_local14
		if f30_local11 > 1 then
			local self = LUI.UIImage.new( f30_local6 )
			self.id = "HDR_Line_" .. f30_local11
			self:addElement( self )
		end
	end
	f30_arg0:addElement( self )
	return self
end

function create_ref_combo( f31_arg0, f31_arg1, f31_arg2, f31_arg3, f31_arg4, f31_arg5, f31_arg6, f31_arg7, f31_arg8, f31_arg9, f31_arg10 )
	if f31_arg6 == nil then
		f31_arg6 = f31_arg5
	end
	if f31_arg7 == nil then
		f31_arg7 = -15
	end
	local f31_local0
	if f31_arg9 then
		f31_local0 = 2
		if not f31_local0 then
		
		else
			local f31_local1 = CoD.CreateState( f31_arg4 - f31_local0, f31_arg3 - f31_local0, f31_arg4 + f31_arg6 + f31_local0, f31_arg3 + f31_arg5 + f31_local0, CoD.AnchorTypes.TopLeft )
			if f31_arg9 then
				f31_local1.material = RegisterMaterial( f31_arg9 )
				f31_arg0:addElement( LUI.UIImage.new( f31_local1 ) )
				f31_local1.left = f31_local1.left + f31_local0
				f31_local1.top = f31_local1.top + f31_local0
				f31_local1.right = f31_local1.right - f31_local0
				f31_local1.bottom = f31_local1.bottom - f31_local0
			end
			f31_local1.material = RegisterMaterial( f31_arg8 )
			f31_arg0:addElement( LUI.UIImage.new( f31_local1 ) )
			if f0_local9 and f31_arg10 then
				f31_local1.material = RegisterMaterial( f31_arg10 )
			else
				f31_local1.material = RegisterMaterial( f31_arg1 )
			end
			local self = LUI.UIImage.new( f31_local1 )
			if f31_arg10 then
				f31_local1.material = RegisterMaterial( f31_arg1 )
				self:registerAnimationState( "default", f31_local1 )
				self:registerAnimationState( "fakeZero", {
					material = RegisterMaterial( f31_arg10 )
				} )
				self:registerEventHandler( "setFakeZero", function ( element )
					element:animateToState( "fakeZero" )
				end )
				self:registerEventHandler( "resetFakeZero", function ( element )
					element:animateToState( "default" )
				end )
			end
			f31_arg0:addElement( self )
			if f31_arg2 then
				local self = LUI.UIText.new( {
					topAnchor = true,
					bottomAnchor = false,
					leftAnchor = false,
					rightAnchor = false,
					bottom = f31_arg7,
					height = 14,
					left = -100,
					right = 100,
					font = CoD.TextSettings.BodyFont.Font,
					color = Colors.grey_4,
					alignment = LUI.Alignment.Center
				} )
				self.id = f31_arg2 .. "_text_box_id"
				self:setText( Engine.Localize( f31_arg2 ) )
				self:addElement( self )
			end
			return self
		end
	end
	f31_local0 = 0
end

function changeArrowState( f32_arg0, f32_arg1, f32_arg2, f32_arg3 )
	local f32_local0 = f32_arg0.currentModeContainer.leftArrowParent
	if f32_arg1 == "right" then
		f32_local0 = f32_arg0.currentModeContainer.rightArrowParent
	end
	if f32_arg2 then
		if f32_arg3 then
			f32_local0:processEvent( {
				name = "content_arrow_" .. f32_arg1,
				immediate = true
			} )
		else
			f32_local0:processEvent( {
				name = "show_arrow_" .. f32_arg1,
				immediate = true
			} )
		end
	else
		f32_local0:processEvent( {
			name = "disable_arrow_" .. f32_arg1,
			immediate = true
		} )
	end
end

function create_arrow( f33_arg0, f33_arg1, f33_arg2, f33_arg3, f33_arg4, f33_arg5, f33_arg6, f33_arg7 )
	local f33_local0 = 32
	local f33_local1 = 2
	local self = LUI.UIButton.new( {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = f33_arg3,
		rightAnchor = f33_arg4,
		top = -32,
		bottom = 32,
		left = f33_arg1,
		width = f33_local0
	} )
	self:registerAnimationState( "offset", {
		topAnchor = false,
		bottomAnchor = false,
		leftAnchor = f33_arg3,
		rightAnchor = f33_arg4,
		top = -32,
		bottom = 32,
		left = f33_arg2,
		width = f33_local0
	} )
	self.id = "boot_hdr_" .. f33_arg7 .. "_arrow_btn_id"
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
	local f33_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f33_local3.color = Colors.white
	f33_local3.alpha = 1
	f33_local3.material = RegisterMaterial( f33_arg5 )
	local self = LUI.UIImage.new( f33_local3 )
	self.id = "boot_hdr_" .. f33_arg7 .. "_arrow_image_id"
	f33_local3.alpha = 0
	self:registerAnimationState( "hidden", f33_local3 )
	f33_local3.alpha = 1
	self:registerAnimationState( "default", f33_local3 )
	f33_local3.color = Colors.h1.yellow
	f33_local3.top = f33_local1 * 2
	f33_local3.bottom = f33_local1 * -2
	f33_local3.left = f33_local1
	f33_local3.right = f33_local1 * -1
	self:registerAnimationState( "pulse", f33_local3 )
	self:addElement( self )
	f33_arg0:addElement( self )
	return newArrow
end

function add_slider_bar( f34_arg0 )
	local f34_local0 = 540
	local f34_local1 = {
		topAnchor = false,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = false,
		left = (ScreenResolution[currentScreenResolution].width - f34_local0) / 2,
		width = f34_local0,
		height = 11,
		top = -260
	}
	local f34_local2 = {
		material = RegisterMaterial( "h2_hdr_slider_bg_selected" )
	}
	f34_arg0.scrollbar = LUI.UIHorizontalScrollbar.new( f34_local1, nil, 30, true, nil, nil, nil, Colors.h2.yellow, Colors.black, "white", "black", "white", "white", 14, Colors.grey_4, false )
	f34_arg0.scrollbar.id = "UIHorizontalScrollbar"
	f34_arg0.scrollbar:registerAnimationState( "default", {
		top = -260,
		bottom = -249,
		topAnchor = false,
		bottomAnchor = true
	} )
	f34_arg0.scrollbar:registerAnimationState( "preview", {
		top = -160,
		bottom = -149,
		topAnchor = false,
		bottomAnchor = true
	} )
	f0_local17[#f0_local17 + 1] = f34_arg0.scrollbar
	f34_arg0:addElement( f34_arg0.scrollbar )
	LUI.UIHorizontalScrollbar.RatioBasedUpdate( f34_arg0.scrollbar, 0 )
	f34_arg0:registerEventHandler( "refreshScrollBar", f0_local20 )
	f34_arg0.delayUpdateTimer = LUI.UITimer.new( 1, "refreshScrollBar" )
	f34_arg0.delayUpdateTimer.id = "delayUpdateTimer"
	f34_arg0:addElement( f34_arg0.delayUpdateTimer )
	create_arrows( f34_arg0, f34_arg0.scrollbar, f34_arg0.scrollbar )
	add_bar_value( f34_arg0 )
	update_bar_value( f34_arg0.scrollbar )
end

function add_bar_value( f35_arg0 )
	local f35_local0 = CoD.TextSettings.Font18
	if text_needs_size_boost_in_language() then
		f35_local0 = CoD.TextSettings.Font23
	end
	local self = LUI.UIText.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = true,
		bottom = 48 - f35_local0.Height,
		height = f35_local0.Height,
		left = 0,
		right = 0,
		font = f35_local0.Font,
		color = Colors.grey_4,
		alignment = LUI.Alignment.Center
	} )
	self.id = "bar_value_text_id"
	f35_arg0.scrollbar:addElement( self )
	f35_arg0.scrollbar.value = self
	self:registerAnimationState( "default", {
		color = Colors.grey_4
	} )
	self:registerAnimationState( "preview", {
		color = Colors.white
	} )
	f0_local18[#f0_local18 + 1] = self
end

function update_bar_value( f36_arg0 )
	f36_arg0.value:setText( get_bar_whole_value() + 1 )
end

function get_bar_whole_value()
	local f37_local0, f37_local1, f37_local2 = ipairs( LUI.bootHDRModes[f0_local1].values )
	local f37_local3, f37_local4 = f37_local0( f37_local1, f37_local2 )
	if f37_local3 ~= nil then
		f37_local2 = f37_local3
		local f37_local8 = getSettingValue( f37_local4 )
		if f37_local4.customProgressFunction then
			return f37_local4:customProgressFunction( f37_local8 )
		else
			local f37_local5 = f37_local4.maxVal - f37_local4.minVal
			local f37_local6, f37_local7 = math.modf( LUI.Round( (f37_local8 - f37_local4.minVal) / f37_local4.step ) )
			return f37_local6
		end
	else
		
	end
end

function background_override( f38_arg0, f38_arg1 )
	local f38_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f38_arg0 )
	local f38_local1 = "default"
	if LUI.bootHDRModes[f38_arg1].backgroundOverride then
		f38_local0.blackBackground:registerAnimationState( f38_local1, {
			material = RegisterMaterial( LUI.bootHDRModes[f38_arg1].backgroundOverride ),
			alpha = 1
		} )
	else
		f38_local0.blackBackground:registerAnimationState( f38_local1, {
			material = RegisterMaterial( "black" ),
			alpha = 1
		} )
	end
	f38_local0.blackBackground:animateToState( f38_local1, 0 )
end

function setFutureHDRSettingsToDefault( f39_arg0 )
	for f39_local8, f39_local9 in ipairs( LUI.bootHDRModes ) do
		if f0_local1 < f39_local8 then
			for f39_local6, f39_local7 in ipairs( f39_local9.values ) do
				Engine.SetProfileData( f39_local7.profileDataVar, f39_local7.default, Engine.GetControllerForLocalClient( 0 ) )
			end
		end
	end
	if f39_arg0 == nil or f39_arg0 == false then
		Engine.ApplyHDRProfileValues()
	end
end

function setFutureHDRSettingsToPlayerValues()
	for f40_local8, f40_local9 in ipairs( LUI.bootHDRModes ) do
		if f0_local1 < f40_local8 then
			for f40_local6, f40_local7 in ipairs( f40_local9.values ) do
				Engine.SetProfileData( f40_local7.profileDataVar, f40_local7.previousSetting, Engine.GetControllerForLocalClient( 0 ) )
			end
		end
	end
	Engine.ApplyHDRProfileValues()
end

function create_mode_ui( f41_arg0, f41_arg1 )
	UPVAL0 = f0_local18
	if f41_arg0.currentModeContainer then
		f41_arg0.currentModeContainer:closeTree()
		f41_arg0.currentModeContainer:close()
		f41_arg0.currentModeContainer = nil
	end
	setFutureHDRSettingsToDefault( true )
	for f41_local3, f41_local4 in ipairs( LUI.bootHDRModes[f0_local1].values ) do
		Engine.SetProfileData( f41_local4.profileDataVar, f41_local4.previousSetting, Engine.GetControllerForLocalClient( 0 ) )
	end
	Engine.ApplyHDRProfileValues()
	UPVAL3 = nil
	UPVAL4 = false
	animateToCurrentPreviewBG( f41_arg0, nil )
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
	self.id = "hideable_container"
	self:registerAnimationState( "default", {
		alpha = 1
	} )
	self:registerAnimationState( "preview", {
		alpha = 0
	} )
	create_instructions( self, LUI.bootHDRModes[f41_arg1].titleString, LUI.bootHDRModes[f41_arg1].subString, LUI.bootHDRModes[f41_arg1].props.instructionString )
	add_breadcumbs( self )
	background_override( f41_arg0, f41_arg1 )
	f41_arg0.currentModeContainer = self
	f41_arg0.currentModeContainer.hideableContainer = self
	f0_local17[#f0_local17 + 1] = self
	LUI.bootHDRModes[f41_arg1].drawFct( self, LUI.bootHDRModes[f41_arg1].props )
	self:addElement( self )
	f41_arg0:addElement( self )
	if f41_arg0.fadeIn == nil then
		self = LUI.UIImage.new( {
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
		self:registerAnimationState( "default", {
			alpha = 1
		} )
		self:registerAnimationState( "invisible", {
			alpha = 0
		} )
		self.id = "boot_hdr_fade_in_id"
		f41_arg0.fadeIn = self
		f41_arg0.fadeIn:registerEventHandler( LUI.FormatAnimStateFinishEvent( "invisible" ), f0_local32 )
		f41_arg0:addElement( self )
	end
	add_slider_bar( self )
	self = true
	f41_local3 = true
	for f41_local7, f41_local8 in ipairs( LUI.bootHDRModes[f0_local1].values ) do
		local f41_local9 = getSettingValue( f41_local8 )
		if f41_local8.minVal ~= nil and self then
			self = f41_local8.minVal < f41_local9
		end
		if f41_local8.maxVal ~= nil and f41_local3 then
			f41_local3 = f41_local9 < f41_local8.maxVal
		end
	end
	f41_local4 = LUI.FlowManager.GetMenuScopedDataFromElement( f41_arg0 )
	changeArrowState( f41_local4.menu, "left", self, false )
	changeArrowState( f41_local4.menu, "right", f41_local3, false )
	update_continue_button( f41_local4.menu )
	f41_arg0.fadeIn:setPriority( 250 )
	f41_arg0.fadeIn:animateToState( "invisible", LUI.bootHDRModes[f41_arg1].fadeInTimeOverride or f0_local7 )
end

function create_arrows( f42_arg0, f42_arg1, f42_arg2 )
	f42_arg0.leftArrowParent = f42_arg1
	f42_arg0.rightArrowParent = f42_arg2
	f42_arg1:addElement( MBh.CreateArrowButtonFactory( "left", true, f42_arg1, -20, f0_local27 ) )
	f42_arg2:addElement( MBh.CreateArrowButtonFactory( "right", false, f42_arg2, -20, f0_local28 ) )
	f42_arg1:processEvent( {
		name = "show_arrows"
	} )
	f42_arg2:processEvent( {
		name = "show_arrows"
	} )
end

function horiz_squares( f43_arg0, f43_arg1 )
	local f43_local0 = function ( f4_arg0 )
		if f4_arg0.bgMat ~= nil then
			return f4_arg0.bgMat
		else
			return f43_arg1.bgMat
		end
	end
	
	local f43_local1 = ScreenResolution[currentScreenResolution].height * 0.2
	local f43_local2 = (ScreenResolution[currentScreenResolution].height - f43_local1) / 2
	local f43_local3 = ScreenResolution[currentScreenResolution].width / 2
	local f43_local4 = #f43_arg1.squares
	local f43_local5, f43_local6 = nil
	local f43_local7 = f43_arg1.spacerRatio or 0.5
	local f43_local8 = 1 + f43_local7
	local f43_local9 = f43_local3 - #f43_arg1.squares / 2 * f43_local1 - (#f43_arg1.squares - 1) / 2 * f43_local7 * f43_local1
	for f43_local13, f43_local14 in ipairs( f43_arg1.squares ) do
		f43_local6 = create_ref_combo( f43_arg0, f43_local14.material, f43_local14.string, f43_local2, f43_local9 + (f43_local13 - 1) * f43_local8 * f43_local1, f43_local1, nil, nil, f43_local0( f43_local14 ), f43_arg1.outlineMaterial, f43_local14.fakeZeroMaterial )
		if f43_local5 == nil then
			f43_local5 = f43_local6
		end
	end
end

function vert_rectangles( f44_arg0, f44_arg1 )
	local f44_local0 = function ( f1_arg0 )
		if f44_arg1.squares[f1_arg0].bgMat ~= nil then
			return f44_arg1.squares[f1_arg0].bgMat
		else
			return f44_arg1.bgMat
		end
	end
	
	local f44_local1 = 0.05
	local f44_local2 = 0.25
	local f44_local3 = ScreenResolution[currentScreenResolution].height * f44_local1
	local f44_local4 = ScreenResolution[currentScreenResolution].width * f44_local2
	local f44_local5 = (ScreenResolution[currentScreenResolution].height - f44_local3) / 2
	local f44_local6 = (ScreenResolution[currentScreenResolution].width - f44_local4) / 2
	create_ref_combo( f44_arg0, f44_arg1.squares[1].material, f44_arg1.squares[1].string, f44_local5 - f44_local3, f44_local6, f44_local3, f44_local4, f44_local3 / 2 + 9, f44_local0( 1 ), f44_arg1.fakeZeroMaterial )
	local f44_local7 = create_ref_combo( f44_arg0, f44_arg1.squares[2].material, f44_arg1.squares[2].string, f44_local5, f44_local6, f44_local3, f44_local4, f44_local3 / 2 + 9, f44_local0( 2 ), f44_arg1.fakeZeroMaterial )
	create_ref_combo( f44_arg0, f44_arg1.squares[3].material, f44_arg1.squares[3].string, f44_local5 + f44_local3, f44_local6, f44_local3, f44_local4, f44_local3 / 2 + 9, f44_local0( 3 ), f44_arg1.fakeZeroMaterial )
	create_arrows( f44_arg0, f44_local7, f44_local7 )
end

function bar( f45_arg0, f45_arg1 )
	local f45_local0 = 10
	local f45_local1 = ScreenResolution[currentScreenResolution].height / 2
	local f45_local2 = CoD.CreateState( 200, f45_local1, -200, nil, CoD.AnchorTypes.TopLeftRight )
	f45_local2.alpha = 1
	f45_local2.height = 20
	local f45_local3 = math.ceil( #f45_arg1.bars / 2 )
	f45_local2.top = f45_local1 - f45_local2.height * 0.5 - f45_local0
	f45_local2.material = RegisterMaterial( f45_arg1.bars[f0_local3].material )
	local self = LUI.UIImage.new( f45_local2 )
	f45_arg0:addElement( self )
	create_arrows( f45_arg0, self, self )
end

function multibars( f46_arg0, f46_arg1 )
	local f46_local0 = 10
	local f46_local1 = ScreenResolution[currentScreenResolution].height / 2
	local f46_local2 = CoD.CreateState( 200, f46_local1, -200, nil, CoD.AnchorTypes.TopLeftRight )
	f46_local2.alpha = 1
	f46_local2.height = 20
	local f46_local3 = math.ceil( #f46_arg1.bars / 2 )
	for f46_local7, f46_local8 in ipairs( f46_arg1.bars ) do
		local f46_local9 = f46_local3 - f46_local7
		f46_local2.top = f46_local1 - f46_local2.height * (f46_local9 + 0.5) - f46_local0 * f46_local9
		f46_local2.material = RegisterMaterial( f46_local8.material )
		local self = LUI.UIImage.new( f46_local2 )
		f46_arg0:addElement( self )
		if f46_local9 == 0 then
			create_arrows( f46_arg0, self, self )
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
				customProgressFunction = function ( f47_arg0, f47_arg1 )
					local f47_local0 = f47_arg0.maxVal - f47_arg0.minVal
					local f47_local1, f47_local2 = math.modf( LUI.Round( (f47_arg1 - f47_arg0.minVal) / f47_arg0.step ) )
					return f47_local1
				end,
				scrollbarValueFunction = function ( f48_arg0, f48_arg1 )
					return f48_arg0:customProgressFunction( f48_arg1 ) / f48_arg0.barSteps
				end,
				customIncrementFunction = function ( f49_arg0, f49_arg1, f49_arg2, f49_arg3 )
					local f49_local0 = f49_arg1 + f49_arg2 * f49_arg0.step
					if not f49_arg0.atFakeZero and f49_local0 < 0 and f49_arg1 <= 0 + f49_arg0.step / 2 then
						f49_arg0.atFakeZero = true
						f49_arg3.menu:processEvent( {
							name = "setFakeZero"
						} )
					elseif f49_arg0.atFakeZero and f49_local0 >= 0 then
						f49_arg0.atFakeZero = false
						f49_arg3.menu:processEvent( {
							name = "resetFakeZero"
						} )
					end
					return f49_local0
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
				initCustomValues = function ( f50_arg0 )
					f50_arg0.maxBase = (f50_arg0.maxVal - f50_arg0.minVal) ^ (1 / f50_arg0.pow)
					f50_arg0.baseRange = f50_arg0.maxBase
					f50_arg0.rangeStep = f50_arg0.baseRange / f50_arg0.barSteps
				end,
				customProgressFunction = function ( f51_arg0, f51_arg1 )
					local f51_local0, f51_local1 = math.modf( LUI.Round( (f51_arg1 - f51_arg0.minVal) ^ (1 / f51_arg0.pow) / f51_arg0.baseRange * f51_arg0.barSteps ) )
					return f51_local0
				end,
				scrollbarValueFunction = function ( f52_arg0, f52_arg1 )
					return f52_arg0:customProgressFunction( f52_arg1 ) / f52_arg0.barSteps
				end,
				customIncrementFunction = function ( f53_arg0, f53_arg1, f53_arg2 )
					return f53_arg0.minVal + math.max( f53_arg2 * f53_arg0.rangeStep + (f53_arg1 - f53_arg0.minVal) ^ (1 / f53_arg0.pow), 0 ) ^ f53_arg0.pow
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
				customIncrementFunction = function ( f54_arg0, f54_arg1, f54_arg2 )
					return getSettingValue( LUI.bootHDRModes[f0_local1].values[f54_arg0.refValueIndex] ) * f54_arg0.refValueRatio
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
				customIncrementFunction = function ( f55_arg0, f55_arg1, f55_arg2 )
					local f55_local0 = LUI.bootHDRModes[f0_local1].values[f55_arg0.refValueIndex]
					return f55_arg0.default + (getSettingValue( f55_local0 ) - f55_local0.default) / 25 * -0.05
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
