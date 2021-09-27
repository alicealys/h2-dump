local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.Options = {}
LUI.Options.GetToggleTextForProfileData = function ( f1_arg0, f1_arg1 )
	return Engine.GetProfileData( f1_arg0, f1_arg1 ) and Engine.Localize( "@LUA_MENU_ENABLED" ) or Engine.Localize( "@LUA_MENU_DISABLED" )
end

LUI.Options.GetToggleTextForProfileDataFunc = function ( f2_arg0, f2_arg1 )
	return function ()
		return LUI.Options.GetToggleTextForProfileData( f2_arg0, f2_arg1 )
	end
	
end

LUI.Options.ProfileMenuOption = function ( f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4 )
	Engine.SetDvarFloat( f3_arg4, math.min( f3_arg2, math.max( f3_arg1, Engine.GetDvarFloat( f3_arg4 ) + f3_arg3 ) ) )
	Engine.MenuDvarsFinish( f3_arg0 )
end

LUI.Options.ProfileDataMenuOption = function ( f4_arg0, f4_arg1, f4_arg2, f4_arg3, f4_arg4 )
	Engine.SetProfileData( f4_arg4, math.min( f4_arg2, math.max( f4_arg1, Engine.GetProfileData( f4_arg4, f4_arg0 ) + f4_arg3 ) ), f4_arg0 )
end

LUI.Options.GetSticksLayoutName = function ( f5_arg0 )
	local f5_local0 = Engine.GetProfileData( "gpadSticksConfig", f5_arg0 )
	if f5_local0 == "thumbstick_default" then
		return Engine.Localize( "@MENU_DEFAULT" )
	elseif f5_local0 == "thumbstick_southpaw" then
		return Engine.Localize( "@MENU_SOUTHPAW" )
	elseif f5_local0 == "thumbstick_legacy" then
		return Engine.Localize( "@MENU_LEGACY" )
	else
		return Engine.Localize( "@MENU_LEGACY_SOUTHPAW" )
	end
end

LUI.Options.GetButtonsLayoutName = function ( f6_arg0 )
	local f6_local0 = Engine.GetProfileData( "gpadButtonsConfig", f6_arg0 )
	if f6_local0 == "buttons_default" then
		return Engine.Localize( "@MENU_DEFAULT" )
	elseif f6_local0 == "buttons_tactical" then
		return Engine.Localize( "@MENU_TACTICAL" )
	elseif f6_local0 == "buttons_lefty" then
		return Engine.Localize( "@MENU_LEFTY_LEGACY" )
	elseif f6_local0 == "buttons_lefty_regular" then
		return Engine.Localize( "@MENU_LEFTY" )
	elseif f6_local0 == "buttons_nomad" then
		return Engine.Localize( "@MENU_NOMAD" )
	elseif f6_local0 == "buttons_nomad_tactical" then
		return Engine.Localize( "@MENU_NOMAD_TACTICAL" )
	elseif f6_local0 == "buttons_charlie" then
		return Engine.Localize( "@MENU_CHARLIE" )
	elseif f6_local0 == "buttons_one-hand_gunslinger" then
		return Engine.Localize( "@MENU_ONE-HAND_GUNSLINGER" )
	elseif f6_local0 == "buttons_bumper_jumper" then
		return Engine.Localize( "@MENU_BUMPER_JUMPER" )
	elseif f6_local0 == "buttons_bumper_jumper_tact" then
		return Engine.Localize( "@MENU_BUMPER_JUMPER_TACT" )
	elseif f6_local0 == "buttons_stick_and_move" then
		return Engine.Localize( "@MENU_STICK_AND_MOVE" )
	elseif f6_local0 == "buttons_default_alt" then
		return Engine.Localize( "@MENU_DEFAULT_ALT" )
	elseif f6_local0 == "buttons_tactical_alt" then
		return Engine.Localize( "@MENU_TACTICAL_ALT" )
	elseif f6_local0 == "buttons_lefty_alt" then
		return Engine.Localize( "@MENU_LEFTY_LEGACY_ALT" )
	elseif f6_local0 == "buttons_lefty_regular_alt" then
		return Engine.Localize( "@MENU_LEFTY_ALT" )
	elseif f6_local0 == "buttons_nomad_alt" then
		return Engine.Localize( "@MENU_NOMAD_ALT" )
	elseif f6_local0 == "buttons_nomad_tactical_alt" then
		return Engine.Localize( "@MENU_NOMAD_TACTICAL_ALT" )
	elseif f6_local0 == "buttons_charlie_alt" then
		return Engine.Localize( "@MENU_CHARLIE_ALT" )
	elseif f6_local0 == "buttons_one-hand_gunslinger_alt" then
		return Engine.Localize( "@MENU_ONE-HAND_GUNSLINGER_ALT" )
	elseif f6_local0 == "buttons_bumper_jumper_alt" then
		return Engine.Localize( "@MENU_BUMPER_JUMPER_ALT" )
	elseif f6_local0 == "buttons_bumper_jumper_tact_alt" then
		return Engine.Localize( "@MENU_BUMPER_JUMPER_TACT_ALT" )
	elseif f6_local0 == "buttons_stick_and_move_alt" then
		return Engine.Localize( "@MENU_STICK_AND_MOVE_ALT" )
	else
		return Engine.Localize( "@MENU_DEFAULT" )
	end
end

LUI.Options.StringOptionListFromList = function ( f7_arg0 )
	local f7_local0 = {}
	for f7_local4, f7_local5 in pairs( f7_arg0 ) do
		f7_local0[f7_local4] = {
			text = f7_local5,
			value = f7_local5
		}
	end
	return f7_local0
end

LUI.Options.GetDvarEnableTextFunc = function ( f8_arg0, f8_arg1 )
	return function ( f4_arg0 )
		local f4_local0 = Engine.GetDvarBool( f8_arg0 )
		if f8_arg1 then
			f4_local0 = not f4_local0
		end
		if f4_local0 then
			return Engine.Localize( "@LUA_MENU_ENABLED" )
		else
			return Engine.Localize( "@LUA_MENU_DISABLED" )
		end
	end
	
end

LUI.Options.ToggleDvarFunc = function ( f9_arg0 )
	return function ( f5_arg0 )
		if Engine.GetDvarBool( f9_arg0 ) then
			Engine.SetDvarBool( f9_arg0, false )
		else
			Engine.SetDvarBool( f9_arg0, true )
		end
	end
	
end

LUI.Options.ToggleDvarBool = function ( f10_arg0 )
	if Engine.GetDvarBool( f10_arg0 ) then
		Engine.SetDvarBool( f10_arg0, false )
	else
		Engine.SetDvarBool( f10_arg0, true )
	end
end

LUI.Options.ToggleProfiledataFunc = function ( f11_arg0, f11_arg1 )
	return function ()
		LUI.Options.ToggleProfiledata( f11_arg0, f11_arg1 )
	end
	
end

LUI.Options.ToggleProfiledata = function ( f12_arg0, f12_arg1 )
	if Engine.GetProfileData( f12_arg0, f12_arg1 ) then
		Engine.SetProfileData( f12_arg0, 0, f12_arg1 )
	else
		Engine.SetProfileData( f12_arg0, 1, f12_arg1 )
	end
end

LUI.Options.RefreshVideoSetting = function ()
	Engine.Exec( "vid_sync" )
	LUI.PCOptions.TransferSettingsToGame()
	Engine.Exec( "vid_reconfig" )
end

LUI.Options.RenderColorBlindToggle = function ( f14_arg0 )
	if Engine.ToggleRenderColorBlind then
		Engine.ToggleRenderColorBlind( f14_arg0 )
	end
end

LUI.Options.GetRenderColorBlindText = function ( f15_arg0 )
	if Engine.ToggleRenderColorBlind then
		return LUI.Options.GetToggleTextForProfileData( "renderColorBlind", f15_arg0 )
	else
		return Engine.Localize( "@LUA_MENU_DISABLED" )
	end
end

LUI.Options.GetBrightness = function ()
	return 1 - (Engine.GetDvarFloat( "profileMenuOption_blacklevel" ) - SliderBounds.Brightness.Min) / (SliderBounds.Brightness.Max - SliderBounds.Brightness.Min)
end

LUI.Options.BrightnessLess = function ( f17_arg0, f17_arg1 )
	LUI.Options.ProfileMenuOption( f17_arg0, SliderBounds.Brightness.Min, SliderBounds.Brightness.Max, -SliderBounds.Brightness.Step, "profileMenuOption_blacklevel" )
	f17_arg1:dispatchEventToRoot( {
		name = "brightness_updated"
	} )
end

LUI.Options.BrightnessMore = function ( f18_arg0, f18_arg1 )
	LUI.Options.ProfileMenuOption( f18_arg0, SliderBounds.Brightness.Min, SliderBounds.Brightness.Max, SliderBounds.Brightness.Step, "profileMenuOption_blacklevel" )
	f18_arg1:dispatchEventToRoot( {
		name = "brightness_updated"
	} )
end

LUI.Options.ShowBrightnessGuide = function ( f19_arg0 )
	f19_arg0:dispatchEventToRoot( {
		name = "brightness_over_children"
	} )
	f19_arg0:animateToState( "visible" )
end

LUI.Options.HideBrightnessGuide = function ( f20_arg0 )
	f20_arg0:animateToState( "default" )
end

f0_local0 = {
	band_height = 90,
	left = 710,
	top = LUI.MenuTemplate.ListTop + (Engine.IsMultiplayer() and 0 or LUI.MenuTemplate.spMenuOffset),
	width = 360
}
function CreateBrightnessImage( f21_arg0, f21_arg1, f21_arg2 )
	local self = LUI.UIImage.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = false,
		left = 0,
		right = 0,
		top = 0,
		bottom = f0_local0.band_height,
		material = RegisterMaterial( "white" ),
		red = f21_arg2,
		green = f21_arg2,
		blue = f21_arg2
	} )
	self.id = f21_arg0
	local self = LUI.UIText.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = false,
		bottomAnchor = false,
		left = 0,
		right = 0,
		top = -CoD.TextSettings.TitleFontMedium.Height / 2,
		bottom = CoD.TextSettings.TitleFontMedium.Height / 2,
		font = CoD.TextSettings.TitleFontMedium.Font,
		red = 0,
		green = 0,
		blue = 0,
		alignment = LUI.Alignment.Center
	} )
	self:setText( Engine.Localize( f21_arg1 ) )
	self:registerEventHandler( "brightness_over_children", UpdateBrightnessGuide )
	self:registerEventHandler( "brightness_updated", UpdateBrightnessGuide )
	self:addElement( self )
	return self
end

LUI.Options.CreateBrightnessGuide = function ()
	local f22_local0 = CoD.CreateState( f0_local0.left, f0_local0.top, f0_local0.left + f0_local0.width, f0_local0.top + 3 * f0_local0.band_height, CoD.AnchorTypes.TopLeft )
	f22_local0.alpha = 0
	local self = LUI.UIElement.new( f22_local0 )
	self.id = "brightness_guide_id"
	local f22_local2 = {
		alpha = 1
	}
	self:registerAnimationState( "default", f22_local0 )
	self:registerAnimationState( "visible", f22_local2 )
	local self = self
	local f22_local4 = self.registerEventHandler
	local f22_local5 = "brightness_over"
	local self = MBh.DoMultiple
	local f22_local7 = {}
	local f22_local8 = MBh.AnimateToState( "visible", 0 )
	local f22_local9 = MBh.EmitEvent( {
		name = "brightness_over_children"
	} )
	f22_local4( self, f22_local5, self( f22_local8 ) )
	self:registerEventHandler( "brightness_up", MBh.AnimateToState( "default", 0 ) )
	self:addElement( LUI.MenuBuilder.BuildRegisteredType( "generic_border", {
		thickness = 2,
		border_red = Colors.generic_menu_frame_color.r,
		border_green = Colors.generic_menu_frame_color.g,
		border_blue = Colors.generic_menu_frame_color.b
	} ) )
	self = LUI.UIVerticalList.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true
	} )
	self:addElement( self )
	self:addElement( CreateBrightnessImage( BrightnessGuideConstants.not_visible.item_id, "@MENU_BRIGHTNESS_NOT_VISIBLE", BrightnessGuideConstants.not_visible.color_default ) )
	self:addElement( CreateBrightnessImage( BrightnessGuideConstants.barely_visible.item_id, "@MENU_BRIGHTNESS_BARELY_VISIBLE", BrightnessGuideConstants.barely_visible.color_default ) )
	self:addElement( CreateBrightnessImage( BrightnessGuideConstants.easily_visible.item_id, "@MENU_BRIGHTNESS_EASILY_VISIBLE", BrightnessGuideConstants.easily_visible.color_default ) )
	self:addElement( LUI.UIElement.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = false,
		left = 0,
		right = 0,
		top = 0,
		bottom = 15
	} ) )
	self = LUI.UIText.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = false,
		left = 0,
		right = 0,
		top = 0,
		bottom = CoD.TextSettings.BodyFont.Height,
		font = CoD.TextSettings.BodyFont.Font,
		alignment = LUI.Alignment.Center,
		red = Colors.primary_text_color.r,
		green = Colors.primary_text_color.g,
		blue = Colors.primary_text_color.b
	} )
	self:setText( Engine.Localize( "@MENU_BRIGHTNESS_DESC2" ) )
	self:addElement( self )
	return self
end

function UpdateBrightnessGuide( f23_arg0 )
	local f23_local0 = Engine.GetDvarFloat( "profileMenuOption_blacklevel" )
	local f23_local1 = nil
	if f23_arg0.id == BrightnessGuideConstants.not_visible.item_id then
		f23_local1 = BrightnessGuideConstants.not_visible.color_default
	elseif f23_arg0.id == BrightnessGuideConstants.barely_visible.item_id then
		f23_local1 = BrightnessGuideConstants.barely_visible.color_default
	elseif f23_arg0.id == BrightnessGuideConstants.easily_visible.item_id then
		f23_local1 = BrightnessGuideConstants.easily_visible.color_default
	end
	if f23_local1 ~= nil then
		local f23_local2 = (f23_local1 - f23_local0) / (1 - f23_local0)
		f23_arg0:registerAnimationState( "current", {
			red = f23_local2,
			green = f23_local2,
			blue = f23_local2
		} )
		f23_arg0:animateToState( "current", 0 )
	end
end

LUI.Options.GetDisplay = function ( f24_arg0 )
	return Engine.GetBinding( f24_arg0 )
end

LUI.Options.OptionsWindowRefresh = function ( f25_arg0, f25_arg1 )
	if f25_arg1.source_input == "button_action" or f25_arg1.source_input == "key_bound" or f25_arg1.source_input == "button_right" or f25_arg1.source_input == "button_left" then
		f25_arg0:processEvent( {
			name = "refresh_disabled"
		} )
		f25_arg0:processEvent( {
			name = "content_refresh"
		} )
	end
end

LUI.Options.ClearBindTextHelper = function ( f26_arg0, f26_arg1 )
	return LUI.ButtonHelperText.ClearHelperTextObject( f26_arg0.help, LUI.ButtonHelperText.CommonEvents.addUnboundButton )
end

LUI.Options.OptionsWindowTriggerRefresh = function ( f27_arg0, f27_arg1 )
	f27_arg0:dispatchEventToRoot( {
		name = "options_window_refresh",
		source_input = f27_arg1.name,
		immediate = true
	} )
end

LUI.Options.CreateControlBindButton = function ( f28_arg0, f28_arg1, f28_arg2, f28_arg3 )
	local f28_local0 = {
		variant = GenericButtonSettings.Variants.Info,
		button_text = Engine.Localize( f28_arg1 )
	}
	local f28_local1
	if f28_arg2 then
		f28_local1 = Engine.Localize( f28_arg2 )
		if not f28_local1 then
		
		else
			f28_local0.desc_text = f28_local1
			f28_local0.button_display_func = function ( f1_arg0, f1_arg1 )
				return LUI.Options.GetDisplay( f28_arg3 )
			end
			
			f28_local0.H1OptionButton = true
			f28_local0.maxLabelWidth = 200
			f28_local1 = f28_arg0:AddButton( f28_arg1, function ( f2_arg0, f2_arg1 )
				Engine.BindKey( f28_arg3 )
				LUI.Options.OptionsWindowTriggerRefresh( f2_arg0, f2_arg1 )
				f28_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addUnboundButton )
			end, nil, nil, nil, f28_local0 )
			f28_local1:registerEventHandler( "element_refresh", MBh.EmitEvent( "content_refresh" ) )
			f28_local1:registerEventHandler( "key_bound", function ( element, event )
				LUI.Options.OptionsWindowTriggerRefresh( element, event )
				LUI.Options.ClearBindTextHelper( f28_arg0, event )
			end )
			return f28_local1
		end
	end
	f28_local1 = ""
end

function isFlipped()
	return string.find( Engine.GetProfileData( "gpadButtonsConfig" ), "_alt" )
end

LUI.Options.FindProfileValue = function ( f30_arg0, f30_arg1, f30_arg2 )
	local f30_local0 = Engine.GetProfileData( f30_arg0, f30_arg2 )
	if f30_arg1[1].value == "buttons_default" then
		f30_local0 = string.gsub( f30_local0, "_alt", "" )
	end
	local f30_local1 = 1
	local f30_local2 = false
	for f30_local6, f30_local7 in pairs( f30_arg1 ) do
		if f30_local7.value == f30_local0 then
			f30_local1 = f30_local6
			f30_local2 = true
			break
		end
	end
	if not f30_local2 then
		DebugPrint( "WARNING: Profile Values " .. f30_arg1 .. " not found for " .. f30_arg0 .. " in values option list." )
	end
	return f30_local1
end

LUI.Options.CreateGamepadLayoutProfileButton = function ( f31_arg0, f31_arg1, f31_arg2, f31_arg3, f31_arg4, f31_arg5, f31_arg6, f31_arg7, f31_arg8 )
	local f31_local0 = LUI.Options.FindProfileValue( f31_arg1, f31_arg6, f31_arg0.exclusiveController )
	local f31_local1 = {
		variant = GenericButtonSettings.Variants.Select
	}
	if localized then
		local f31_local2 = f31_arg4
	end
	f31_local1.button_text = f31_local2 or Engine.Localize( f31_arg4 )
	if localized then
		local f31_local3 = f31_arg5
	end
	local f31_local4
	if f31_arg5 then
		f31_local4 = Engine.Localize( f31_arg5 )
		if not f31_local4 then
		
		else
			f31_local1.desc_text = f31_local4
			f31_local1.H1OptionButton = true
			f31_local1.button_display_func = function ( f24_arg0, f24_arg1 )
				UPVAL0 = LUI.Options.FindProfileValue( f31_arg1, f31_arg6, f31_arg0.exclusiveController )
				if isFlipped() then
					return Engine.Localize( f31_arg6[f31_local0].text .. "_ALT" )
				else
					return Engine.Localize( f31_arg6[f31_local0].text )
				end
			end
			
			f31_local1.button_left_func = function ( f25_arg0, f25_arg1 )
				UPVAL0 = 1 + (#f31_arg6 + f31_local0 - 1 - 1) % #f31_arg6
				f25_arg1.value = f31_arg6[f31_local0].value
				f31_arg8( f25_arg0, f25_arg1 )
			end
			
			f31_local1.button_right_func = function ( f26_arg0, f26_arg1 )
				UPVAL0 = 1 + (f31_local0 - 1 + 1) % #f31_arg6
				f26_arg1.value = f31_arg6[f31_local0].value
				f31_arg8( f26_arg0, f26_arg1 )
			end
			
			f31_local1.showLockOnDisable = true
			f31_local1.maxLabelWidth = 200
			f31_local1.maxContentWidth = 175
			f31_local1.buttonActionIsRightAction = true
			f31_local4 = f31_arg0:AddButton( f31_arg4, nil, f31_arg7, nil, nil, f31_local1 )
			f31_local4:registerEventHandler( "element_refresh", MBh.EmitEvent( "content_refresh" ) )
			return f31_local4
		end
	end
	f31_local4 = f31_local3 or ""
end

LUI.Options.CreateControlProfileDataButton = function ( f32_arg0, f32_arg1, f32_arg2, f32_arg3, f32_arg4, f32_arg5, f32_arg6, f32_arg7, f32_arg8, f32_arg9 )
	local f32_local0 = LUI.Options.FindProfileValue( f32_arg1, f32_arg6, f32_arg0.exclusiveController )
	local f32_local1 = function ( f26_arg0, f26_arg1 )
		if f32_arg3 then
			Engine.ExecNow( f32_arg3 .. " " .. f32_arg6[f32_local0].value )
		else
			Engine.ExecNow( f32_arg2 )
		end
		if not Engine.IsConsoleGame() then
			Engine.ExecNow( "profile_menuDvarsFinish" )
		end
		LUI.Options.OptionsWindowTriggerRefresh( f26_arg0, f26_arg1 )
		if f32_arg9 and type( f32_arg9 ) == "function" then
			f32_arg9( f26_arg0, f26_arg1, f32_arg6[f32_local0].value )
		end
	end
	
	local f32_local2 = {
		variant = GenericButtonSettings.Variants.Select
	}
	if f32_arg8 then
		local f32_local3 = f32_arg4
	end
	f32_local2.button_text = f32_local3 or Engine.Localize( f32_arg4 )
	if f32_arg8 then
		local f32_local4 = f32_arg5
	end
	local f32_local5
	if f32_arg5 then
		f32_local5 = Engine.Localize( f32_arg5 )
		if not f32_local5 then
		
		else
			f32_local2.desc_text = f32_local5
			f32_local2.H1OptionButton = true
			f32_local2.button_display_func = function ( f27_arg0, f27_arg1 )
				UPVAL0 = LUI.Options.FindProfileValue( f32_arg1, f32_arg6, f32_arg0.exclusiveController )
				return Engine.Localize( f32_arg6[f32_local0].text )
			end
			
			f32_local2.button_left_func = function ( f28_arg0, f28_arg1 )
				UPVAL0 = 1 + (#f32_arg6 + f32_local0 - 1 - 1) % #f32_arg6
				f32_local1( f28_arg0, f28_arg1 )
			end
			
			f32_local2.button_right_func = function ( f29_arg0, f29_arg1 )
				UPVAL0 = 1 + (f32_local0 - 1 + 1) % #f32_arg6
				f32_local1( f29_arg0, f29_arg1 )
			end
			
			f32_local2.showLockOnDisable = true
			f32_local2.maxLabelWidth = 200
			f32_local2.buttonActionIsRightAction = true
			f32_local5 = f32_arg0:AddButton( f32_arg4, nil, f32_arg7, nil, nil, f32_local2 )
			f32_local5:registerEventHandler( "element_refresh", MBh.EmitEvent( "content_refresh" ) )
			return f32_local5
		end
	end
	f32_local5 = f32_local4 or ""
end

LUI.Options.CreateDVarVideoOptionHelper = function ( f33_arg0, f33_arg1, f33_arg2, f33_arg3, f33_arg4 )
	if type( f33_arg3 ) ~= "function" then
		local f33_local0 = f33_arg3
		f33_arg3 = function ()
			return f33_local0
		end
		
	end
	if not f33_arg4 then
		f33_arg4 = {}
	end
	local f33_local0 = LUI.Options.CreateSelectionButton
	local f33_local1 = f33_arg0
	local f33_local2 = f33_arg1
	local f33_local3 = f33_arg2
	local f33_local4 = f33_arg4.button_desc
	local f33_local5 = function ( f32_arg0, f32_arg1 )
		return LUI.Options.GetDvarText( f33_arg1, f33_arg3() )
	end
	
	local f33_local6 = f33_arg3
	local f33_local7 = LUI.Options.WarpSetDvarEventFunc( f33_arg1, f33_arg3 )
	local f33_local8 = f33_arg4.refreshFunc
	if not f33_local8 then
		f33_local8 = LUI.Options.RefreshVideoSetting
	end
	f33_local0( f33_local1, f33_local2, f33_local3, f33_local4, f33_local5, f33_local6, f33_local7, f33_local8, f33_arg4.disabledFunc )
end

LUI.Options.GetDvarIndex = function ( f34_arg0, f34_arg1 )
	local f34_local0 = nil
	local f34_local1 = 1
	local f34_local2 = Engine.GetDvarType( f34_arg0 )
	if f34_local2 == DvarTypeTable.DvarString then
		f34_local0 = Engine.GetDvarString( f34_arg0 )
	elseif f34_local2 == DvarTypeTable.DvarInt then
		f34_local0 = Engine.GetDvarInt( f34_arg0 )
	elseif f34_local2 == DvarTypeTable.DvarBool then
		f34_local0 = Engine.GetDvarBool( f34_arg0 )
	end
	local f34_local3 = false
	for f34_local7, f34_local8 in pairs( f34_arg1 ) do
		if f34_local8.value == f34_local0 then
			f34_local1 = f34_local7
			f34_local3 = true
			break
		end
	end
	if not f34_local3 then
		DebugPrint( "WARNING: Values " .. f34_local0 .. " not found for " .. f34_arg0 .. " in values option list." )
	end
	return f34_local1
end

LUI.Options.GetDvarText = function ( f35_arg0, f35_arg1 )
	local f35_local0 = LUI.Options.GetDvarIndex( f35_arg0, f35_arg1 )
	return Engine.Localize( f35_arg1[LUI.Options.GetDvarIndex( f35_arg0, f35_arg1 )].text )
end

LUI.Options.SetDvar = function ( f36_arg0, f36_arg1, f36_arg2 )
	assert( f36_arg1 and f36_arg2 )
	local f36_local0 = Engine.GetDvarType( f36_arg0 )
	if f36_local0 == DvarTypeTable.DvarString then
		Engine.SetDvarString( f36_arg0, f36_arg1[f36_arg2].value )
	elseif f36_local0 == DvarTypeTable.DvarInt then
		Engine.SetDvarInt( f36_arg0, f36_arg1[f36_arg2].value )
	elseif f36_local0 == DvarTypeTable.DvarBool then
		Engine.SetDvarBool( f36_arg0, f36_arg1[f36_arg2].value )
	else
		assert( false, "Unsupported dVar type." )
	end
end

LUI.Options.WarpSetDvarEventFunc = function ( f37_arg0, f37_arg1 )
	return function ( f35_arg0, f35_arg1 )
		assert( f35_arg1 and f35_arg1.currentIndex )
		LUI.Options.SetDvar( f37_arg0, f37_arg1(), f35_arg1.currentIndex )
	end
	
end

LUI.Options.CreateSelectionMenu = function ( f38_arg0, f38_arg1, f38_arg2, f38_arg3, f38_arg4, f38_arg5, f38_arg6, f38_arg7 )
	return function ( f36_arg0, f36_arg1 )
		local f36_local0 = f38_arg4()
		local f36_local1 = 4
		local f36_local2 = 7
		local f36_local3
		if f36_local2 < #f36_local0 then
			f36_local3 = 19
			if not f36_local3 then
			
			else
				local f36_local4 = 6
				if f38_arg0.ActiveSelector then
					DebugPrint( "WARNING: LUI.Options.CreateSelectionMenu is called but a selector is already open, closing previous one." )
					f38_arg0.ActiveSelector:close()
					f38_arg0.ActiveSelector = nil
				end
				UPVAL2 = f38_arg7 or {}
				local ActiveSelector = f38_arg7
				local f36_local6 = f38_arg7.defaultState
				if not f36_local6 then
					f36_local6 = {
						leftAnchor = true,
						rightAnchor = false,
						topAnchor = true,
						bottomAnchor = false,
						top = 130,
						height = 200,
						left = 775.89,
						width = 372.96
					}
				end
				ActiveSelector.defaultState = f36_local6
				f36_arg0:processEvent( {
					name = "lost_focus"
				} )
				
				ActiveSelector = LUI.UIElement.new( f38_arg7.defaultState )
				ActiveSelector:registerAnimationState( "visible", {
					alpha = 1
				} )
				ActiveSelector:registerAnimationState( "hidden", {
					alpha = 0
				} )
				f38_arg0:addElement( ActiveSelector )
				f38_arg0.ActiveSelector = ActiveSelector
				
				ActiveSelector.id = "option_selector_menu"
				ActiveSelector.link_menu_button = f36_arg0
				ActiveSelector.focusParent = function ()
					f38_arg0:processEvent( {
						name = "gain_focus"
					} )
					ActiveSelector.link_menu_button:processEvent( {
						name = "gain_focus"
					} )
				end
				
				f36_local6 = {
					title_bar_text = Engine.Localize( f38_arg2 ),
					fill_alpha = 1,
					border_alpha = 1,
					color = Colors.white
				}
				local f36_local7 = {
					leftAnchor = true,
					rightAnchor = true,
					topAnchor = true,
					top = 0,
					bottom = GenericTitleBarDims.TitleBarHeight
				}
				local f36_local8 = LUI.MenuBuilder.BuildRegisteredType( "generic_menu_titlebar", f36_local6 )
				f36_local8:registerAnimationState( "default", f36_local7 )
				f36_local8:animateToState( "default" )
				ActiveSelector:addElement( f36_local8 )
				ActiveSelector:addElement( LUI.MenuBuilder.BuildRegisteredType( "generic_menu_background", {
					top_offset = 0,
					fill_alpha = 1,
					use_background_tint = true
				} ) )
				local self = LUI.UIImage.new()
				self:registerAnimationState( "default", {
					topAnchor = true,
					bottomAnchor = true,
					leftAnchor = true,
					rightAnchor = true,
					top = GenericTitleBarDims.TitleBarHeight - 1,
					material = RegisterMaterial( "h1_popup_bg" ),
					alpha = 1
				} )
				self:animateToState( "default" )
				ActiveSelector:addElement( self )
				local self = LUI.UIVerticalList.new( {
					leftAnchor = true,
					topAnchor = true,
					top = GenericTitleBarDims.TitleBarHeight + f36_local1,
					left = f36_local1,
					width = f38_arg7.defaultState.width - f36_local1 * 2 - f36_local3,
					spacing = f36_local4
				} )
				ActiveSelector:addElement( self )
				self.buttonCount = 0
				local f36_local11 = LUI.Options.GetDvarIndex( f38_arg1, f36_local0 )
				local f36_local12 = nil
				for f36_local17, f36_local18 in pairs( f36_local0 ) do
					self.buttonCount = self.buttonCount + 1
					local f36_local19 = {
						style = GenericButtonSettings.Styles.GlassButton,
						fade_in = 0,
						desc_text = f38_arg3 and Engine.Localize( f38_arg3 ) or nil,
						text_align_with_content = LUI.Alignment.Left,
						button_text = Engine.Localize( f36_local0[f36_local17].text ),
						button_action_func = function ( f38_arg0, f38_arg1 )
							if f38_arg5 and not f38_arg0.isCurrentValue then
								f38_arg1.currentIndex = f36_local17
								f38_arg5( f38_arg0, f38_arg1 )
							end
							if not f38_arg0.isCurrentValue then
								f38_arg6()
								ActiveSelector.link_menu_button:processEvent( {
									name = "content_refresh"
								} )
							end
							if f38_arg0.list then
								f38_arg0.list:processEvent( {
									name = "refresh_disabled",
									dispatchChildren = true
								} )
							end
							ActiveSelector.focusParent()
							f38_arg0.ActiveSelector = nil
							ActiveSelector:close()
						end
					}
					if f36_local17 == f36_local11 then
						f36_local19.lockedHighlight = true
						f36_local19.text_lock_color = Colors.h1.current_tab_select_text
					end
					local f36_local16 = LUI.MenuBuilder.BuildAddChild( self, {
						type = "UIGenericButton",
						id = "selection_menu_button_" .. f36_local17,
						properties = f36_local19,
						listIndex = self.buttonCount
					} )
					if f36_local17 == f36_local11 then
						f36_local12 = f36_local16
						f36_local16.listDefaultFocus = true
						f36_local16.isCurrentValue = true
					end
				end
				LUI.Options.InitScrollingList( self, nil, {
					rows = f36_local2
				} )
				f38_arg0:processEvent( {
					name = "lose_focus"
				} )
				self:processEvent( {
					name = "gain_focus"
				} )
				LUI.UIRoot.ProcessEvent( Engine.GetLuiRoot(), {
					name = "init_selector",
					target = ActiveSelector
				} )
				ActiveSelector:registerEventHandler( "init_selector", function ( element, event )
					local f39_local0 = #f36_local0
					if f36_local2 < f39_local0 then
						f39_local0 = f36_local2
					end
					local f39_local1 = f36_local1 * 2 + f36_local4 * (f39_local0 - 1)
					local f39_local2 = self:getFirstChild()
					f38_arg7.defaultState.height = GenericTitleBarDims.TitleBarHeight + f39_local1 + f39_local2:getHeight() * f39_local0
					ActiveSelector:registerAnimationState( "resize", f38_arg7.defaultState )
					ActiveSelector:animateToState( "resize" )
				end )
			end
		end
		f36_local3 = 0
	end
	
end

LUI.Options.CloseSelectionMenu = function ( f39_arg0, f39_arg1 )
	if f39_arg0.ActiveSelector then
		if f39_arg1 then
			f39_arg0.ActiveSelector.focusParent()
		end
		f39_arg0.ActiveSelector:close()
		f39_arg0.ActiveSelector = nil
	end
end

LUI.Options.CreateSelectionButton = function ( f40_arg0, f40_arg1, f40_arg2, f40_arg3, f40_arg4, f40_arg5, f40_arg6, f40_arg7, f40_arg8, f40_arg9 )
	local f40_local0 = {
		variant = GenericButtonSettings.Variants.Info,
		button_text = Engine.Localize( f40_arg2 )
	}
	local f40_local1
	if f40_arg3 then
		f40_local1 = Engine.Localize( f40_arg3 )
		if not f40_local1 then
		
		else
			f40_local0.desc_text = f40_local1
			f40_local0.H1OptionButton = true
			f40_local0.button_display_func = f40_arg4
			f40_local0.button_action_func = LUI.Options.CreateSelectionMenu( f40_arg0, f40_arg1, f40_arg2, f40_arg3, f40_arg5, f40_arg6, f40_arg7, nil )
			f40_local0.maxLabelWidth = 200
			f40_local0.showLockOnDisable = true
			return f40_arg0:AddButton( f40_arg2, nil, f40_arg8, nil, nil, f40_local0 )
		end
	end
	f40_local1 = ""
end

LUI.Options.CreateOptionButton = function ( f41_arg0, f41_arg1, f41_arg2, f41_arg3, f41_arg4, f41_arg5, f41_arg6, f41_arg7, f41_arg8, f41_arg9 )
	local f41_local0 = nil
	local f41_local1 = 1
	local f41_local2 = Engine.GetDvarType( f41_arg1 )
	local f41_local3 = function ( f45_arg0, f45_arg1, f45_arg2 )
		if f45_arg2 == "1" and f41_arg9 ~= nil and f41_arg9.cheatType ~= nil and f41_arg9.cheatIndex ~= nil then
			return LUI.IntelMenu.HandleActivateExclusiveCheats( f45_arg0, f41_arg9.cheatType, f41_arg9.cheatIndex )
		else
			return true
		end
	end
	
	if f41_local2 == DvarTypeTable.DvarString then
		f41_local0 = Engine.GetDvarString( f41_arg1 )
	elseif f41_local2 == DvarTypeTable.DvarInt then
		f41_local0 = Engine.GetDvarInt( f41_arg1 )
	elseif f41_local2 == DvarTypeTable.DvarBool then
		f41_local0 = Engine.GetDvarBool( f41_arg1 )
	end
	local f41_local4 = false
	for f41_local8, f41_local9 in pairs( f41_arg4 ) do
		if f41_local9.value == f41_local0 then
			f41_local1 = f41_local8
			f41_local4 = true
			break
		end
	end
	if not f41_local4 then
		f41_local5 = f41_local0
		if f41_local2 == DvarTypeTable.DvarBool then
			if f41_local5 then
				local f41_local10 = "true"
			end
			f41_local5 = f41_local10 or "false"
		end
		DebugPrint( "WARNING: Values " .. f41_local5 .. " not found for " .. f41_arg1 .. " in values option list." )
	end
	if f41_arg5 == nil then
		f41_arg5 = function ( f46_arg0, f46_arg1 )
			if f41_local2 == DvarTypeTable.DvarString then
				if f41_local3( f46_arg1, f41_arg1, f41_arg4[f41_local1].value ) then
					Engine.SetDvarString( f41_arg1, f41_arg4[f41_local1].value )
				end
			elseif f41_local2 == DvarTypeTable.DvarInt then
				Engine.SetDvarInt( f41_arg1, f41_arg4[f41_local1].value )
			elseif f41_local2 == DvarTypeTable.DvarBool then
				Engine.SetDvarBool( f41_arg1, f41_arg4[f41_local1].value )
			end
			if f41_arg7 then
				f41_arg7( f41_arg4[f41_local1].value )
			end
		end
		
	end
	f41_local5 = function ( f47_arg0, f47_arg1 )
		local f47_local0 = nil
		if f41_arg8 ~= nil then
			f47_local0 = f41_arg8( f47_arg0, f47_arg1 )
		end
		if f47_local0 == nil then
			UPVAL1 = LUI.Options.GetDvarIndex( f41_arg1, f41_arg4 )
			return Engine.Localize( f41_arg4[f41_local1].text )
		else
			return f47_local0
		end
	end
	
	f41_local6 = true
	if f41_arg9 and f41_arg9.showLockOnDisable == false then
		f41_local6 = f41_arg9.showLockOnDisable
	end
	f41_local7 = {
		variant = GenericButtonSettings.Variants.Select,
		button_text = Engine.Localize( f41_arg2 )
	}
	if f41_arg3 then
		f41_local8 = Engine.Localize( f41_arg3 )
		if not f41_local8 then
		
		else
			f41_local7.desc_text = f41_local8
			f41_local7.H1OptionButton = true
			f41_local7.showLockOnDisable = f41_local6
			f41_local7.disableSound = CoD.SFX.MenuAcceptDisabled
			f41_local7.button_display_func = f41_local5
			f41_local7.button_left_func = function ( f48_arg0, f48_arg1 )
				UPVAL0 = 1 + (#f41_arg4 + f41_local1 - 1 - 1) % #f41_arg4
				f41_arg5( f48_arg0, f48_arg1, f41_arg4[f41_local1].value )
			end
			
			f41_local7.button_right_func = function ( f49_arg0, f49_arg1 )
				UPVAL0 = 1 + (f41_local1 - 1 + 1) % #f41_arg4
				f41_arg5( f49_arg0, f49_arg1, f41_arg4[f41_local1].value )
			end
			
			f41_local7.maxLabelWidth = 200
			f41_local7.buttonActionIsRightAction = true
			if f41_arg9 then
				LUI.InheritCopy( f41_local7, f41_arg9, false )
			end
			return f41_arg0:AddButton( f41_arg2, nil, f41_arg6, nil, nil, f41_local7 )
		end
	end
	f41_local8 = ""
end

LUI.Options.CreateOptionSliderButton = function ( f42_arg0, f42_arg1, f42_arg2, f42_arg3, f42_arg4, f42_arg5, f42_arg6, f42_arg7, f42_arg8, f42_arg9 )
	local f42_local0 = function ( f60_arg0, f60_arg1, f60_arg2 )
		Engine.SetDvarFloat( f42_arg1, math.min( f60_arg1, math.max( f60_arg0, Engine.GetDvarFloat( f42_arg1 ) + f60_arg2 ) ) )
		Engine.ExecNow( "profile_menuDvarsFinish" )
	end
	
	local f42_local1 = {
		button_text = Engine.Localize( f42_arg2 )
	}
	local f42_local2
	if f42_arg3 then
		f42_local2 = Engine.Localize( f42_arg3 )
		if not f42_local2 then
		
		else
			f42_local1.desc_text = f42_local2
			f42_local1.variant = GenericButtonSettings.Variants.Slider
			f42_local1.H1OptionButton = true
			f42_local1.button_display_func = function ( f61_arg0, f61_arg1 )
				return (Engine.GetDvarFloat( f42_arg1 ) - f42_arg4) / (f42_arg5 - f42_arg4)
			end
			
			f42_local1.button_left_func = function ( f62_arg0, f62_arg1 )
				f42_local0( f42_arg4, f42_arg5, -f42_arg6 )
			end
			
			f42_local1.button_right_func = function ( f63_arg0, f63_arg1 )
				f42_local0( f42_arg4, f42_arg5, f42_arg6 )
			end
			
			f42_local1.button_over_func = f42_arg8
			f42_local1.button_up_func = f42_arg9
			f42_local1.maxLabelWidth = 200
			return f42_arg0:AddButton( f42_arg2, nil, f42_arg7, nil, nil, f42_local1 )
		end
	end
	f42_local2 = ""
end

LUI.Options.InitScrollingList = function ( f43_arg0, f43_arg1, f43_arg2 )
	if not f43_arg2 then
		f43_arg2 = {}
	end
	local self = nil
	local f43_local1 = 7.5
	local f43_local2 = f43_arg2.rows or 9
	local f43_local3 = f43_arg2.scrollBarLeftOffset or 10
	if not Engine.InFrontend() and Engine.GetSplitScreen() then
		f43_local2 = 3
	end
	local f43_local4 = f43_arg0:getFirstChild()
	assert( f43_local4, "InitScrollingList need at least a child in list." )
	local f43_local5, f43_local6, f43_local7, f43_local8 = f43_arg0:getLocalRect()
	local f43_local9, f43_local10, f43_local11, f43_local12 = f43_local4:getLocalRect()
	local f43_local13 = f43_arg0:getAnimationStateInC( f43_arg0:getAnimationStateName() )
	self = LUI.UIVerticalScrollbar.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		width = f43_local1,
		left = f43_local7 + f43_local3,
		top = f43_local6 - 0.5,
		height = (f43_local12 - f43_local10 + (f43_local13.spacing or 0)) * f43_local2 - 8.5
	}, f43_arg0, f43_local1, nil, nil, nil, nil, Colors.white, Colors.h1.dark_grey, "h1_scrollbar_fill_normal", "h1_scrollbar_bg", "h2_scrollbar_fill_selected" )
	local f43_local14 = f43_arg0:getParent()
	f43_local14:addElement( self )
	f43_local14 = {
		enabled = false
	}
	local f43_local15 = ListPaging.InitList
	local f43_local16 = f43_arg0
	local f43_local17 = f43_local2
	local f43_local18 = 10
	local f43_local19, f43_local20 = false
	f43_local15( f43_local16, f43_local17, f43_local18, f43_local19, f43_local20, f43_local14, self )
end

LUI.Options.AddOptionTextInfo = function ( f44_arg0 )
	local f44_local0, f44_local1, f44_local2, f44_local3 = f44_arg0.list:getLocalRect()
	return f44_arg0:addElement( LUI.MenuBuilder.BuildRegisteredType( "h1_vlist_button_desc_text", {
		top = f44_local1 + (f44_arg0.list.listHeight or f44_local1 - f44_local3) + LUI.H1VlistButtonDescText.ListVerticalOffset,
		left = f44_local0,
		width = f44_local2 - f44_local0,
		fadeIn = true
	} ) )
end

LUI.Options.AddRightPanel = function ( f45_arg0 )
	local f45_local0, f45_local1, f45_local2, f45_local3 = f45_arg0.list:getLocalRect()
	local f45_local4 = 0
	local f45_local5 = 0
	if not Engine.InFrontend() and Engine.GetSplitScreen() then
		f45_local4 = 450
		f45_local5 = -100
	end
	local self = LUI.UIElement.new()
	self:registerAnimationState( "default", {
		leftAnchor = true,
		topAnchor = true,
		top = 65 + f45_local5,
		left = f45_local2 + 150 + f45_local4,
		width = 400,
		height = 450
	} )
	self:animateToState( "default" )
	f45_arg0:addElement( self )
	return self
end

LUI.Options.WrapFuncWithController = function ( f46_arg0, f46_arg1 )
	if f46_arg1 ~= nil and type( f46_arg1 ) == "function" then
		return function ()
			local f11_local0 = f46_arg1
			local f11_local1 = f46_arg0.exclusiveController
			if not f11_local1 then
				f11_local1 = f46_arg0.controller
			end
			return f11_local0( f11_local1, f46_arg0 )
		end
		
	else
		return f46_arg1
	end
end

LUI.Options.AddButtonOptionVariant = function ( f47_arg0, f47_arg1, f47_arg2, f47_arg3, f47_arg4, f47_arg5, f47_arg6, f47_arg7, f47_arg8, f47_arg9, f47_arg10, f47_arg11 )
	local f47_local0 = nil
	if type( f47_arg7 ) == "function" then
		f47_local0 = f47_arg7
	elseif type( f47_arg7 ) == "string" then
		f47_local0 = function ( f12_arg0, f12_arg1 )
			LUI.FlowManager.RequestAddMenu( f12_arg0, f47_arg7, true, f12_arg1.controller, false )
		end
		
	end
	if type( f47_arg3 ) == "string" then
		f47_arg3 = Engine.Localize( f47_arg3 )
	end
	local f47_local1 = {
		variant = f47_arg1,
		desc_text = f47_arg3,
		button_display_func = LUI.Options.WrapFuncWithController( f47_arg0, f47_arg4 ),
		button_left_func = LUI.Options.WrapFuncWithController( f47_arg0, f47_arg5 ),
		button_right_func = LUI.Options.WrapFuncWithController( f47_arg0, f47_arg6 ),
		button_action_func = f47_local0,
		button_over_func = f47_arg8,
		button_up_func = f47_arg9,
		H1OptionButton = true,
		textStyle = CoD.TextStyle.ForceUpperCase,
		maxLabelWidth = 200,
		buttonActionIsRightAction = f47_arg1 ~= GenericButtonSettings.Variants.Slider
	}
	local f47_local2
	if f47_arg1 ~= GenericButtonSettings.Variants.Slider then
		f47_local2 = f47_arg11
	else
		f47_local2 = true
	end
	f47_local1.muteAction = f47_local2
	f47_local1.valueActionAudio = f47_arg11
	return f47_arg0:AddButton( f47_arg2, nil, f47_arg10, nil, nil, f47_local1 )
end

LockTable( _M )
