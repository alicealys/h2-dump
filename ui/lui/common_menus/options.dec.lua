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

LUI.Options.ProfileMenuOption = function ( f4_arg0, f4_arg1, f4_arg2, f4_arg3, f4_arg4 )
	Engine.SetDvarFloat( f4_arg4, math.min( f4_arg2, math.max( f4_arg1, Engine.GetDvarFloat( f4_arg4 ) + f4_arg3 ) ) )
	Engine.MenuDvarsFinish( f4_arg0 )
end

LUI.Options.ProfileDataMenuOption = function ( f5_arg0, f5_arg1, f5_arg2, f5_arg3, f5_arg4 )
	Engine.SetProfileData( f5_arg4, math.min( f5_arg2, math.max( f5_arg1, Engine.GetProfileData( f5_arg4, f5_arg0 ) + f5_arg3 ) ), f5_arg0 )
end

LUI.Options.GetSticksLayoutName = function ( f6_arg0 )
	local f6_local0 = Engine.GetProfileData( "gpadSticksConfig", f6_arg0 )
	if f6_local0 == "thumbstick_default" then
		return Engine.Localize( "@MENU_DEFAULT" )
	elseif f6_local0 == "thumbstick_southpaw" then
		return Engine.Localize( "@MENU_SOUTHPAW" )
	elseif f6_local0 == "thumbstick_legacy" then
		return Engine.Localize( "@MENU_LEGACY" )
	else
		return Engine.Localize( "@MENU_LEGACY_SOUTHPAW" )
	end
end

LUI.Options.GetButtonsLayoutName = function ( f7_arg0 )
	local f7_local0 = Engine.GetProfileData( "gpadButtonsConfig", f7_arg0 )
	if f7_local0 == "buttons_default" then
		return Engine.Localize( "@MENU_DEFAULT" )
	elseif f7_local0 == "buttons_tactical" then
		return Engine.Localize( "@MENU_TACTICAL" )
	elseif f7_local0 == "buttons_lefty" then
		return Engine.Localize( "@MENU_LEFTY_LEGACY" )
	elseif f7_local0 == "buttons_lefty_regular" then
		return Engine.Localize( "@MENU_LEFTY" )
	elseif f7_local0 == "buttons_nomad" then
		return Engine.Localize( "@MENU_NOMAD" )
	elseif f7_local0 == "buttons_nomad_tactical" then
		return Engine.Localize( "@MENU_NOMAD_TACTICAL" )
	elseif f7_local0 == "buttons_charlie" then
		return Engine.Localize( "@MENU_CHARLIE" )
	elseif f7_local0 == "buttons_one-hand_gunslinger" then
		return Engine.Localize( "@MENU_ONE-HAND_GUNSLINGER" )
	elseif f7_local0 == "buttons_bumper_jumper" then
		return Engine.Localize( "@MENU_BUMPER_JUMPER" )
	elseif f7_local0 == "buttons_bumper_jumper_tact" then
		return Engine.Localize( "@MENU_BUMPER_JUMPER_TACT" )
	elseif f7_local0 == "buttons_stick_and_move" then
		return Engine.Localize( "@MENU_STICK_AND_MOVE" )
	elseif f7_local0 == "buttons_default_alt" then
		return Engine.Localize( "@MENU_DEFAULT_ALT" )
	elseif f7_local0 == "buttons_tactical_alt" then
		return Engine.Localize( "@MENU_TACTICAL_ALT" )
	elseif f7_local0 == "buttons_lefty_alt" then
		return Engine.Localize( "@MENU_LEFTY_LEGACY_ALT" )
	elseif f7_local0 == "buttons_lefty_regular_alt" then
		return Engine.Localize( "@MENU_LEFTY_ALT" )
	elseif f7_local0 == "buttons_nomad_alt" then
		return Engine.Localize( "@MENU_NOMAD_ALT" )
	elseif f7_local0 == "buttons_nomad_tactical_alt" then
		return Engine.Localize( "@MENU_NOMAD_TACTICAL_ALT" )
	elseif f7_local0 == "buttons_charlie_alt" then
		return Engine.Localize( "@MENU_CHARLIE_ALT" )
	elseif f7_local0 == "buttons_one-hand_gunslinger_alt" then
		return Engine.Localize( "@MENU_ONE-HAND_GUNSLINGER_ALT" )
	elseif f7_local0 == "buttons_bumper_jumper_alt" then
		return Engine.Localize( "@MENU_BUMPER_JUMPER_ALT" )
	elseif f7_local0 == "buttons_bumper_jumper_tact_alt" then
		return Engine.Localize( "@MENU_BUMPER_JUMPER_TACT_ALT" )
	elseif f7_local0 == "buttons_stick_and_move_alt" then
		return Engine.Localize( "@MENU_STICK_AND_MOVE_ALT" )
	else
		return Engine.Localize( "@MENU_DEFAULT" )
	end
end

LUI.Options.StringOptionListFromList = function ( f8_arg0 )
	local f8_local0 = {}
	for f8_local4, f8_local5 in pairs( f8_arg0 ) do
		f8_local0[f8_local4] = {
			text = f8_local5,
			value = f8_local5
		}
	end
	return f8_local0
end

LUI.Options.GetDvarEnableTextFunc = function ( f9_arg0, f9_arg1 )
	return function ( f10_arg0 )
		local f10_local0 = Engine.GetDvarBool( f9_arg0 )
		if f9_arg1 then
			f10_local0 = not f10_local0
		end
		if f10_local0 then
			return Engine.Localize( "@LUA_MENU_ENABLED" )
		else
			return Engine.Localize( "@LUA_MENU_DISABLED" )
		end
	end
	
end

LUI.Options.ToggleDvarFunc = function ( f11_arg0 )
	return function ( f12_arg0 )
		if Engine.GetDvarBool( f11_arg0 ) then
			Engine.SetDvarBool( f11_arg0, false )
		else
			Engine.SetDvarBool( f11_arg0, true )
		end
	end
	
end

LUI.Options.ToggleDvarBool = function ( f13_arg0 )
	if Engine.GetDvarBool( f13_arg0 ) then
		Engine.SetDvarBool( f13_arg0, false )
	else
		Engine.SetDvarBool( f13_arg0, true )
	end
end

LUI.Options.ToggleProfiledataFunc = function ( f14_arg0, f14_arg1 )
	return function ()
		LUI.Options.ToggleProfiledata( f14_arg0, f14_arg1 )
	end
	
end

LUI.Options.ToggleProfiledata = function ( f16_arg0, f16_arg1 )
	if Engine.GetProfileData( f16_arg0, f16_arg1 ) then
		Engine.SetProfileData( f16_arg0, 0, f16_arg1 )
	else
		Engine.SetProfileData( f16_arg0, 1, f16_arg1 )
	end
end

LUI.Options.RefreshVideoSetting = function ()
	Engine.Exec( "vid_sync" )
	LUI.PCOptions.TransferSettingsToGame()
	Engine.Exec( "vid_reconfig" )
end

LUI.Options.RenderColorBlindToggle = function ( f18_arg0 )
	if Engine.ToggleRenderColorBlind then
		Engine.ToggleRenderColorBlind( f18_arg0 )
	end
end

LUI.Options.GetRenderColorBlindText = function ( f19_arg0 )
	if Engine.ToggleRenderColorBlind then
		return LUI.Options.GetToggleTextForProfileData( "renderColorBlind", f19_arg0 )
	else
		return Engine.Localize( "@LUA_MENU_DISABLED" )
	end
end

LUI.Options.GetBrightness = function ()
	return 1 - (Engine.GetDvarFloat( "profileMenuOption_blacklevel" ) - SliderBounds.Brightness.Min) / (SliderBounds.Brightness.Max - SliderBounds.Brightness.Min)
end

LUI.Options.BrightnessLess = function ( f21_arg0, f21_arg1 )
	LUI.Options.ProfileMenuOption( f21_arg0, SliderBounds.Brightness.Min, SliderBounds.Brightness.Max, -SliderBounds.Brightness.Step, "profileMenuOption_blacklevel" )
	f21_arg1:dispatchEventToRoot( {
		name = "brightness_updated"
	} )
end

LUI.Options.BrightnessMore = function ( f22_arg0, f22_arg1 )
	LUI.Options.ProfileMenuOption( f22_arg0, SliderBounds.Brightness.Min, SliderBounds.Brightness.Max, SliderBounds.Brightness.Step, "profileMenuOption_blacklevel" )
	f22_arg1:dispatchEventToRoot( {
		name = "brightness_updated"
	} )
end

LUI.Options.ShowBrightnessGuide = function ( f23_arg0 )
	f23_arg0:dispatchEventToRoot( {
		name = "brightness_over_children"
	} )
	f23_arg0:animateToState( "visible" )
end

LUI.Options.HideBrightnessGuide = function ( f24_arg0 )
	f24_arg0:animateToState( "default" )
end

f0_local0 = {
	band_height = 90,
	left = 710,
	top = LUI.MenuTemplate.ListTop + (Engine.IsMultiplayer() and 0 or LUI.MenuTemplate.spMenuOffset),
	width = 360
}
function CreateBrightnessImage( f25_arg0, f25_arg1, f25_arg2 )
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
		red = f25_arg2,
		green = f25_arg2,
		blue = f25_arg2
	} )
	self.id = f25_arg0
	local f25_local1 = LUI.UIText.new( {
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
	f25_local1:setText( Engine.Localize( f25_arg1 ) )
	self:registerEventHandler( "brightness_over_children", UpdateBrightnessGuide )
	self:registerEventHandler( "brightness_updated", UpdateBrightnessGuide )
	self:addElement( f25_local1 )
	return self
end

LUI.Options.CreateBrightnessGuide = function ()
	local f26_local0 = CoD.CreateState( f0_local0.left, f0_local0.top, f0_local0.left + f0_local0.width, f0_local0.top + 3 * f0_local0.band_height, CoD.AnchorTypes.TopLeft )
	f26_local0.alpha = 0
	local self = LUI.UIElement.new( f26_local0 )
	self.id = "brightness_guide_id"
	local f26_local2 = {
		alpha = 1
	}
	self:registerAnimationState( "default", f26_local0 )
	self:registerAnimationState( "visible", f26_local2 )
	local f26_local3 = self
	local f26_local4 = self.registerEventHandler
	local f26_local5 = "brightness_over"
	local f26_local6 = MBh.DoMultiple
	local f26_local7 = {}
	local f26_local8 = MBh.AnimateToState( "visible", 0 )
	local f26_local9 = MBh.EmitEvent( {
		name = "brightness_over_children"
	} )
	f26_local4( f26_local3, f26_local5, f26_local6( f26_local8 ) )
	self:registerEventHandler( "brightness_up", MBh.AnimateToState( "default", 0 ) )
	self:addElement( LUI.MenuBuilder.BuildRegisteredType( "generic_border", {
		thickness = 2,
		border_red = Colors.generic_menu_frame_color.r,
		border_green = Colors.generic_menu_frame_color.g,
		border_blue = Colors.generic_menu_frame_color.b
	} ) )
	f26_local3 = LUI.UIVerticalList.new( {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = true
	} )
	self:addElement( f26_local3 )
	f26_local3:addElement( CreateBrightnessImage( BrightnessGuideConstants.not_visible.item_id, "@MENU_BRIGHTNESS_NOT_VISIBLE", BrightnessGuideConstants.not_visible.color_default ) )
	f26_local3:addElement( CreateBrightnessImage( BrightnessGuideConstants.barely_visible.item_id, "@MENU_BRIGHTNESS_BARELY_VISIBLE", BrightnessGuideConstants.barely_visible.color_default ) )
	f26_local3:addElement( CreateBrightnessImage( BrightnessGuideConstants.easily_visible.item_id, "@MENU_BRIGHTNESS_EASILY_VISIBLE", BrightnessGuideConstants.easily_visible.color_default ) )
	f26_local3:addElement( LUI.UIElement.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = false,
		left = 0,
		right = 0,
		top = 0,
		bottom = 15
	} ) )
	f26_local6 = LUI.UIText.new( {
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
	f26_local6:setText( Engine.Localize( "@MENU_BRIGHTNESS_DESC2" ) )
	f26_local3:addElement( f26_local6 )
	return self
end

function UpdateBrightnessGuide( f27_arg0 )
	local f27_local0 = Engine.GetDvarFloat( "profileMenuOption_blacklevel" )
	local f27_local1 = nil
	if f27_arg0.id == BrightnessGuideConstants.not_visible.item_id then
		f27_local1 = BrightnessGuideConstants.not_visible.color_default
	elseif f27_arg0.id == BrightnessGuideConstants.barely_visible.item_id then
		f27_local1 = BrightnessGuideConstants.barely_visible.color_default
	elseif f27_arg0.id == BrightnessGuideConstants.easily_visible.item_id then
		f27_local1 = BrightnessGuideConstants.easily_visible.color_default
	end
	if f27_local1 ~= nil then
		local f27_local2 = (f27_local1 - f27_local0) / (1 - f27_local0)
		f27_arg0:registerAnimationState( "current", {
			red = f27_local2,
			green = f27_local2,
			blue = f27_local2
		} )
		f27_arg0:animateToState( "current", 0 )
	end
end

LUI.Options.GetDisplay = function ( f28_arg0 )
	return Engine.GetBinding( f28_arg0 )
end

LUI.Options.OptionsWindowRefresh = function ( f29_arg0, f29_arg1 )
	if f29_arg1.source_input == "button_action" or f29_arg1.source_input == "key_bound" or f29_arg1.source_input == "button_right" or f29_arg1.source_input == "button_left" then
		f29_arg0:processEvent( {
			name = "refresh_disabled"
		} )
		f29_arg0:processEvent( {
			name = "content_refresh"
		} )
	end
end

LUI.Options.ClearBindTextHelper = function ( f30_arg0, f30_arg1 )
	return LUI.ButtonHelperText.ClearHelperTextObject( f30_arg0.help, LUI.ButtonHelperText.CommonEvents.addUnboundButton )
end

LUI.Options.OptionsWindowTriggerRefresh = function ( f31_arg0, f31_arg1 )
	f31_arg0:dispatchEventToRoot( {
		name = "options_window_refresh",
		source_input = f31_arg1.name,
		immediate = true
	} )
end

LUI.Options.CreateControlBindButton = function ( f32_arg0, f32_arg1, f32_arg2, f32_arg3 )
	local f32_local0 = {
		variant = GenericButtonSettings.Variants.Info,
		button_text = Engine.Localize( f32_arg1 )
	}
	local f32_local1
	if f32_arg2 then
		f32_local1 = Engine.Localize( f32_arg2 )
		if not f32_local1 then
		
		else
			f32_local0.desc_text = f32_local1
			f32_local0.button_display_func = function ( f33_arg0, f33_arg1 )
				return LUI.Options.GetDisplay( f32_arg3 )
			end
			
			f32_local0.H1OptionButton = true
			f32_local0.maxLabelWidth = 200
			f32_local1 = f32_arg0:AddButton( f32_arg1, function ( f34_arg0, f34_arg1 )
				Engine.BindKey( f32_arg3 )
				LUI.Options.OptionsWindowTriggerRefresh( f34_arg0, f34_arg1 )
				f32_arg0:AddHelp( LUI.ButtonHelperText.CommonEvents.addUnboundButton )
			end, nil, nil, nil, f32_local0 )
			f32_local1:registerEventHandler( "element_refresh", MBh.EmitEvent( "content_refresh" ) )
			f32_local1:registerEventHandler( "key_bound", function ( element, event )
				LUI.Options.OptionsWindowTriggerRefresh( element, event )
				LUI.Options.ClearBindTextHelper( f32_arg0, event )
			end )
			return f32_local1
		end
	end
	f32_local1 = ""
end

function isFlipped()
	return string.find( Engine.GetProfileData( "gpadButtonsConfig" ), "_alt" )
end

LUI.Options.FindProfileValue = function ( f37_arg0, f37_arg1, f37_arg2 )
	local f37_local0 = Engine.GetProfileData( f37_arg0, f37_arg2 )
	if f37_arg1[1].value == "buttons_default" then
		f37_local0 = string.gsub( f37_local0, "_alt", "" )
	end
	local f37_local1 = 1
	local f37_local2 = false
	for f37_local6, f37_local7 in pairs( f37_arg1 ) do
		if f37_local7.value == f37_local0 then
			f37_local1 = f37_local6
			f37_local2 = true
			break
		end
	end
	if not f37_local2 then
		DebugPrint( "WARNING: Profile Values " .. f37_arg1 .. " not found for " .. f37_arg0 .. " in values option list." )
	end
	return f37_local1
end

LUI.Options.CreateGamepadLayoutProfileButton = function ( f38_arg0, f38_arg1, f38_arg2, f38_arg3, f38_arg4, f38_arg5, f38_arg6, f38_arg7, f38_arg8 )
	local f38_local0 = LUI.Options.FindProfileValue( f38_arg1, f38_arg6, f38_arg0.exclusiveController )
	local f38_local1 = {
		variant = GenericButtonSettings.Variants.Select
	}
	if localized then
		local f38_local2 = f38_arg4
	end
	f38_local1.button_text = f38_local2 or Engine.Localize( f38_arg4 )
	if localized then
		local f38_local3 = f38_arg5
	end
	local f38_local4
	if f38_arg5 then
		f38_local4 = Engine.Localize( f38_arg5 )
		if not f38_local4 then
		
		else
			f38_local1.desc_text = f38_local4
			f38_local1.H1OptionButton = true
			f38_local1.button_display_func = function ( f39_arg0, f39_arg1 )
				f38_local0 = LUI.Options.FindProfileValue( f38_arg1, f38_arg6, f38_arg0.exclusiveController )
				if isFlipped() then
					return Engine.Localize( f38_arg6[f38_local0].text .. "_ALT" )
				else
					return Engine.Localize( f38_arg6[f38_local0].text )
				end
			end
			
			f38_local1.button_left_func = function ( f40_arg0, f40_arg1 )
				f38_local0 = 1 + (#f38_arg6 + f38_local0 - 1 - 1) % #f38_arg6
				f40_arg1.value = f38_arg6[f38_local0].value
				f38_arg8( f40_arg0, f40_arg1 )
			end
			
			f38_local1.button_right_func = function ( f41_arg0, f41_arg1 )
				f38_local0 = 1 + (f38_local0 - 1 + 1) % #f38_arg6
				f41_arg1.value = f38_arg6[f38_local0].value
				f38_arg8( f41_arg0, f41_arg1 )
			end
			
			f38_local1.showLockOnDisable = true
			f38_local1.maxLabelWidth = 200
			f38_local1.maxContentWidth = 175
			f38_local1.buttonActionIsRightAction = true
			f38_local4 = f38_arg0:AddButton( f38_arg4, nil, f38_arg7, nil, nil, f38_local1 )
			f38_local4:registerEventHandler( "element_refresh", MBh.EmitEvent( "content_refresh" ) )
			return f38_local4
		end
	end
	f38_local4 = f38_local3 or ""
end

LUI.Options.CreateControlProfileDataButton = function ( f42_arg0, f42_arg1, f42_arg2, f42_arg3, f42_arg4, f42_arg5, f42_arg6, f42_arg7, f42_arg8, f42_arg9 )
	local f42_local0 = LUI.Options.FindProfileValue( f42_arg1, f42_arg6, f42_arg0.exclusiveController )
	local f42_local1 = function ( f43_arg0, f43_arg1 )
		if f42_arg3 then
			Engine.ExecNow( f42_arg3 .. " " .. f42_arg6[f42_local0].value )
		else
			Engine.ExecNow( f42_arg2 )
		end
		if not Engine.IsConsoleGame() then
			Engine.ExecNow( "profile_menuDvarsFinish" )
		end
		LUI.Options.OptionsWindowTriggerRefresh( f43_arg0, f43_arg1 )
		if f42_arg9 and type( f42_arg9 ) == "function" then
			f42_arg9( f43_arg0, f43_arg1, f42_arg6[f42_local0].value )
		end
	end
	
	local f42_local2 = {
		variant = GenericButtonSettings.Variants.Select
	}
	if f42_arg8 then
		local f42_local3 = f42_arg4
	end
	f42_local2.button_text = f42_local3 or Engine.Localize( f42_arg4 )
	if f42_arg8 then
		local f42_local4 = f42_arg5
	end
	local f42_local5
	if f42_arg5 then
		f42_local5 = Engine.Localize( f42_arg5 )
		if not f42_local5 then
		
		else
			f42_local2.desc_text = f42_local5
			f42_local2.H1OptionButton = true
			f42_local2.button_display_func = function ( f44_arg0, f44_arg1 )
				f42_local0 = LUI.Options.FindProfileValue( f42_arg1, f42_arg6, f42_arg0.exclusiveController )
				return Engine.Localize( f42_arg6[f42_local0].text )
			end
			
			f42_local2.button_left_func = function ( f45_arg0, f45_arg1 )
				f42_local0 = 1 + (#f42_arg6 + f42_local0 - 1 - 1) % #f42_arg6
				f42_local1( f45_arg0, f45_arg1 )
			end
			
			f42_local2.button_right_func = function ( f46_arg0, f46_arg1 )
				f42_local0 = 1 + (f42_local0 - 1 + 1) % #f42_arg6
				f42_local1( f46_arg0, f46_arg1 )
			end
			
			f42_local2.showLockOnDisable = true
			f42_local2.maxLabelWidth = 200
			f42_local2.buttonActionIsRightAction = true
			f42_local5 = f42_arg0:AddButton( f42_arg4, nil, f42_arg7, nil, nil, f42_local2 )
			f42_local5:registerEventHandler( "element_refresh", MBh.EmitEvent( "content_refresh" ) )
			return f42_local5
		end
	end
	f42_local5 = f42_local4 or ""
end

LUI.Options.CreateDVarVideoOptionHelper = function ( f47_arg0, f47_arg1, f47_arg2, f47_arg3, f47_arg4 )
	if type( f47_arg3 ) ~= "function" then
		local f47_local0 = f47_arg3
		f47_arg3 = function ()
			return f47_local0
		end
		
	end
	if not f47_arg4 then
		f47_arg4 = {}
	end
	local f47_local0 = LUI.Options.CreateSelectionButton
	local f47_local1 = f47_arg0
	local f47_local2 = f47_arg1
	local f47_local3 = f47_arg2
	local f47_local4 = f47_arg4.button_desc
	local f47_local5 = function ( f49_arg0, f49_arg1 )
		return LUI.Options.GetDvarText( f47_arg1, f47_arg3() )
	end
	
	local f47_local6 = f47_arg3
	local f47_local7 = LUI.Options.WarpSetDvarEventFunc( f47_arg1, f47_arg3 )
	local f47_local8 = f47_arg4.refreshFunc
	if not f47_local8 then
		f47_local8 = LUI.Options.RefreshVideoSetting
	end
	f47_local0( f47_local1, f47_local2, f47_local3, f47_local4, f47_local5, f47_local6, f47_local7, f47_local8, f47_arg4.disabledFunc )
end

LUI.Options.GetDvarIndex = function ( f50_arg0, f50_arg1 )
	local f50_local0 = nil
	local f50_local1 = 1
	local f50_local2 = Engine.GetDvarType( f50_arg0 )
	if f50_local2 == DvarTypeTable.DvarString then
		f50_local0 = Engine.GetDvarString( f50_arg0 )
	elseif f50_local2 == DvarTypeTable.DvarInt then
		f50_local0 = Engine.GetDvarInt( f50_arg0 )
	elseif f50_local2 == DvarTypeTable.DvarBool then
		f50_local0 = Engine.GetDvarBool( f50_arg0 )
	end
	local f50_local3 = false
	for f50_local7, f50_local8 in pairs( f50_arg1 ) do
		if f50_local8.value == f50_local0 then
			f50_local1 = f50_local7
			f50_local3 = true
			break
		end
	end
	if not f50_local3 then
		DebugPrint( "WARNING: Values " .. f50_local0 .. " not found for " .. f50_arg0 .. " in values option list." )
	end
	return f50_local1
end

LUI.Options.GetDvarText = function ( f51_arg0, f51_arg1 )
	local f51_local0 = LUI.Options.GetDvarIndex( f51_arg0, f51_arg1 )
	return Engine.Localize( f51_arg1[LUI.Options.GetDvarIndex( f51_arg0, f51_arg1 )].text )
end

LUI.Options.SetDvar = function ( f52_arg0, f52_arg1, f52_arg2 )
	assert( f52_arg1 and f52_arg2 )
	local f52_local0 = Engine.GetDvarType( f52_arg0 )
	if f52_local0 == DvarTypeTable.DvarString then
		Engine.SetDvarString( f52_arg0, f52_arg1[f52_arg2].value )
	elseif f52_local0 == DvarTypeTable.DvarInt then
		Engine.SetDvarInt( f52_arg0, f52_arg1[f52_arg2].value )
	elseif f52_local0 == DvarTypeTable.DvarBool then
		Engine.SetDvarBool( f52_arg0, f52_arg1[f52_arg2].value )
	else
		assert( false, "Unsupported dVar type." )
	end
end

LUI.Options.WarpSetDvarEventFunc = function ( f53_arg0, f53_arg1 )
	return function ( f54_arg0, f54_arg1 )
		assert( f54_arg1 and f54_arg1.currentIndex )
		LUI.Options.SetDvar( f53_arg0, f53_arg1(), f54_arg1.currentIndex )
	end
	
end

LUI.Options.CreateSelectionMenu = function ( f55_arg0, f55_arg1, f55_arg2, f55_arg3, f55_arg4, f55_arg5, f55_arg6, f55_arg7 )
	return function ( f56_arg0, f56_arg1 )
		local f56_local0 = f55_arg4()
		local f56_local1 = 4
		local f56_local2 = 7
		local f56_local3
		if f56_local2 < #f56_local0 then
			f56_local3 = 19
			if not f56_local3 then
			
			else
				local f56_local4 = 6
				if f55_arg0.ActiveSelector then
					DebugPrint( "WARNING: LUI.Options.CreateSelectionMenu is called but a selector is already open, closing previous one." )
					f55_arg0.ActiveSelector:close()
					f55_arg0.ActiveSelector = nil
				end
				f55_arg7 = f55_arg7 or {}
				local ActiveSelector = f55_arg7
				local f56_local6 = f55_arg7.defaultState
				if not f56_local6 then
					f56_local6 = {
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
				ActiveSelector.defaultState = f56_local6
				f56_arg0:processEvent( {
					name = "lost_focus"
				} )
				
				ActiveSelector = LUI.UIElement.new( f55_arg7.defaultState )
				ActiveSelector:registerAnimationState( "visible", {
					alpha = 1
				} )
				ActiveSelector:registerAnimationState( "hidden", {
					alpha = 0
				} )
				f55_arg0:addElement( ActiveSelector )
				f55_arg0.ActiveSelector = ActiveSelector
				
				ActiveSelector.id = "option_selector_menu"
				ActiveSelector.link_menu_button = f56_arg0
				ActiveSelector.focusParent = function ()
					f55_arg0:processEvent( {
						name = "gain_focus"
					} )
					ActiveSelector.link_menu_button:processEvent( {
						name = "gain_focus"
					} )
				end
				
				f56_local6 = {
					title_bar_text = Engine.Localize( f55_arg2 ),
					fill_alpha = 1,
					border_alpha = 1,
					color = Colors.white
				}
				local f56_local7 = {
					leftAnchor = true,
					rightAnchor = true,
					topAnchor = true,
					top = 0,
					bottom = GenericTitleBarDims.TitleBarHeight
				}
				local f56_local8 = LUI.MenuBuilder.BuildRegisteredType( "generic_menu_titlebar", f56_local6 )
				f56_local8:registerAnimationState( "default", f56_local7 )
				f56_local8:animateToState( "default" )
				ActiveSelector:addElement( f56_local8 )
				ActiveSelector:addElement( LUI.MenuBuilder.BuildRegisteredType( "generic_menu_background", {
					top_offset = 0,
					fill_alpha = 1,
					use_background_tint = true
				} ) )
				local f56_local9 = LUI.UIImage.new()
				f56_local9:registerAnimationState( "default", {
					topAnchor = true,
					bottomAnchor = true,
					leftAnchor = true,
					rightAnchor = true,
					top = GenericTitleBarDims.TitleBarHeight - 1,
					material = RegisterMaterial( "h1_popup_bg" ),
					alpha = 1
				} )
				f56_local9:animateToState( "default" )
				ActiveSelector:addElement( f56_local9 )
				local f56_local10 = LUI.UIVerticalList.new( {
					leftAnchor = true,
					topAnchor = true,
					top = GenericTitleBarDims.TitleBarHeight + f56_local1,
					left = f56_local1,
					width = f55_arg7.defaultState.width - f56_local1 * 2 - f56_local3,
					spacing = f56_local4
				} )
				ActiveSelector:addElement( f56_local10 )
				f56_local10.buttonCount = 0
				local f56_local11 = LUI.Options.GetDvarIndex( f55_arg1, f56_local0 )
				local f56_local12 = nil
				for f56_local17, f56_local18 in pairs( f56_local0 ) do
					f56_local10.buttonCount = f56_local10.buttonCount + 1
					local f56_local19 = {
						style = GenericButtonSettings.Styles.GlassButton,
						fade_in = 0,
						desc_text = f55_arg3 and Engine.Localize( f55_arg3 ) or nil,
						text_align_with_content = LUI.Alignment.Left,
						button_text = Engine.Localize( f56_local0[f56_local17].text ),
						button_action_func = function ( f58_arg0, f58_arg1 )
							if f55_arg5 and not f58_arg0.isCurrentValue then
								f58_arg1.currentIndex = f56_local17
								f55_arg5( f58_arg0, f58_arg1 )
							end
							if not f58_arg0.isCurrentValue then
								f55_arg6()
								ActiveSelector.link_menu_button:processEvent( {
									name = "content_refresh"
								} )
							end
							if f55_arg0.list then
								f55_arg0.list:processEvent( {
									name = "refresh_disabled",
									dispatchChildren = true
								} )
							end
							ActiveSelector.focusParent()
							f55_arg0.ActiveSelector = nil
							ActiveSelector:close()
						end
					}
					if f56_local17 == f56_local11 then
						f56_local19.lockedHighlight = true
						f56_local19.text_lock_color = Colors.h1.current_tab_select_text
					end
					local f56_local16 = LUI.MenuBuilder.BuildAddChild( f56_local10, {
						type = "UIGenericButton",
						id = "selection_menu_button_" .. f56_local17,
						properties = f56_local19,
						listIndex = f56_local10.buttonCount
					} )
					if f56_local17 == f56_local11 then
						f56_local12 = f56_local16
						f56_local16.listDefaultFocus = true
						f56_local16.isCurrentValue = true
					end
				end
				LUI.Options.InitScrollingList( f56_local10, nil, {
					rows = f56_local2
				} )
				f55_arg0:processEvent( {
					name = "lose_focus"
				} )
				f56_local10:processEvent( {
					name = "gain_focus"
				} )
				LUI.UIRoot.ProcessEvent( Engine.GetLuiRoot(), {
					name = "init_selector",
					target = ActiveSelector
				} )
				ActiveSelector:registerEventHandler( "init_selector", function ( element, event )
					local f59_local0 = #f56_local0
					if f56_local2 < f59_local0 then
						f59_local0 = f56_local2
					end
					local f59_local1 = f56_local1 * 2 + f56_local4 * (f59_local0 - 1)
					local f59_local2 = f56_local10:getFirstChild()
					f55_arg7.defaultState.height = GenericTitleBarDims.TitleBarHeight + f59_local1 + f59_local2:getHeight() * f59_local0
					ActiveSelector:registerAnimationState( "resize", f55_arg7.defaultState )
					ActiveSelector:animateToState( "resize" )
				end )
			end
		end
		f56_local3 = 0
	end
	
end

LUI.Options.CloseSelectionMenu = function ( f60_arg0, f60_arg1 )
	if f60_arg0.ActiveSelector then
		if f60_arg1 then
			f60_arg0.ActiveSelector.focusParent()
		end
		f60_arg0.ActiveSelector:close()
		f60_arg0.ActiveSelector = nil
	end
end

LUI.Options.CreateSelectionButton = function ( f61_arg0, f61_arg1, f61_arg2, f61_arg3, f61_arg4, f61_arg5, f61_arg6, f61_arg7, f61_arg8, f61_arg9 )
	local f61_local0 = {
		variant = GenericButtonSettings.Variants.Info,
		button_text = Engine.Localize( f61_arg2 )
	}
	local f61_local1
	if f61_arg3 then
		f61_local1 = Engine.Localize( f61_arg3 )
		if not f61_local1 then
		
		else
			f61_local0.desc_text = f61_local1
			f61_local0.H1OptionButton = true
			f61_local0.button_display_func = f61_arg4
			f61_local0.button_action_func = LUI.Options.CreateSelectionMenu( f61_arg0, f61_arg1, f61_arg2, f61_arg3, f61_arg5, f61_arg6, f61_arg7, nil )
			f61_local0.maxLabelWidth = 200
			f61_local0.showLockOnDisable = true
			return f61_arg0:AddButton( f61_arg2, nil, f61_arg8, nil, nil, f61_local0 )
		end
	end
	f61_local1 = ""
end

LUI.Options.CreateOptionButton = function ( f62_arg0, f62_arg1, f62_arg2, f62_arg3, f62_arg4, f62_arg5, f62_arg6, f62_arg7, f62_arg8, f62_arg9 )
	local f62_local0 = nil
	local f62_local1 = 1
	local f62_local2 = Engine.GetDvarType( f62_arg1 )
	local f62_local3 = function ( f63_arg0, f63_arg1, f63_arg2 )
		if f63_arg2 == "1" and f62_arg9 ~= nil and f62_arg9.cheatType ~= nil and f62_arg9.cheatIndex ~= nil then
			return LUI.IntelMenu.HandleActivateExclusiveCheats( f63_arg0, f62_arg9.cheatType, f62_arg9.cheatIndex )
		else
			return true
		end
	end
	
	if f62_local2 == DvarTypeTable.DvarString then
		f62_local0 = Engine.GetDvarString( f62_arg1 )
	elseif f62_local2 == DvarTypeTable.DvarInt then
		f62_local0 = Engine.GetDvarInt( f62_arg1 )
	elseif f62_local2 == DvarTypeTable.DvarBool then
		f62_local0 = Engine.GetDvarBool( f62_arg1 )
	end
	local f62_local4 = false
	for f62_local8, f62_local9 in pairs( f62_arg4 ) do
		if f62_local9.value == f62_local0 then
			f62_local1 = f62_local8
			f62_local4 = true
			break
		end
	end
	if not f62_local4 then
		f62_local5 = f62_local0
		if f62_local2 == DvarTypeTable.DvarBool then
			if f62_local5 then
				local f62_local10 = "true"
			end
			f62_local5 = f62_local10 or "false"
		end
		DebugPrint( "WARNING: Values " .. f62_local5 .. " not found for " .. f62_arg1 .. " in values option list." )
	end
	if f62_arg5 == nil then
		f62_arg5 = function ( f64_arg0, f64_arg1 )
			if f62_local2 == DvarTypeTable.DvarString then
				if f62_local3( f64_arg1, f62_arg1, f62_arg4[f62_local1].value ) then
					Engine.SetDvarString( f62_arg1, f62_arg4[f62_local1].value )
				end
			elseif f62_local2 == DvarTypeTable.DvarInt then
				Engine.SetDvarInt( f62_arg1, f62_arg4[f62_local1].value )
			elseif f62_local2 == DvarTypeTable.DvarBool then
				Engine.SetDvarBool( f62_arg1, f62_arg4[f62_local1].value )
			end
			if f62_arg7 then
				f62_arg7( f62_arg4[f62_local1].value )
			end
		end
		
	end
	f62_local5 = function ( f65_arg0, f65_arg1 )
		local f65_local0 = nil
		if f62_arg8 ~= nil then
			f65_local0 = f62_arg8( f65_arg0, f65_arg1 )
		end
		if f65_local0 == nil then
			f62_local1 = LUI.Options.GetDvarIndex( f62_arg1, f62_arg4 )
			return Engine.Localize( f62_arg4[f62_local1].text )
		else
			return f65_local0
		end
	end
	
	f62_local6 = true
	if f62_arg9 and f62_arg9.showLockOnDisable == false then
		f62_local6 = f62_arg9.showLockOnDisable
	end
	f62_local7 = {
		variant = GenericButtonSettings.Variants.Select,
		button_text = Engine.Localize( f62_arg2 )
	}
	if f62_arg3 then
		f62_local8 = Engine.Localize( f62_arg3 )
		if not f62_local8 then
		
		else
			f62_local7.desc_text = f62_local8
			f62_local7.H1OptionButton = true
			f62_local7.showLockOnDisable = f62_local6
			f62_local7.disableSound = CoD.SFX.MenuAcceptDisabled
			f62_local7.button_display_func = f62_local5
			f62_local7.button_left_func = function ( f66_arg0, f66_arg1 )
				f62_local1 = 1 + (#f62_arg4 + f62_local1 - 1 - 1) % #f62_arg4
				f62_arg5( f66_arg0, f66_arg1, f62_arg4[f62_local1].value )
			end
			
			f62_local7.button_right_func = function ( f67_arg0, f67_arg1 )
				f62_local1 = 1 + (f62_local1 - 1 + 1) % #f62_arg4
				f62_arg5( f67_arg0, f67_arg1, f62_arg4[f62_local1].value )
			end
			
			f62_local7.maxLabelWidth = 200
			f62_local7.buttonActionIsRightAction = true
			if f62_arg9 then
				LUI.InheritCopy( f62_local7, f62_arg9, false )
			end
			return f62_arg0:AddButton( f62_arg2, nil, f62_arg6, nil, nil, f62_local7 )
		end
	end
	f62_local8 = ""
end

LUI.Options.CreateOptionSliderButton = function ( f68_arg0, f68_arg1, f68_arg2, f68_arg3, f68_arg4, f68_arg5, f68_arg6, f68_arg7, f68_arg8, f68_arg9 )
	local f68_local0 = function ( f69_arg0, f69_arg1, f69_arg2 )
		Engine.SetDvarFloat( f68_arg1, math.min( f69_arg1, math.max( f69_arg0, Engine.GetDvarFloat( f68_arg1 ) + f69_arg2 ) ) )
		Engine.ExecNow( "profile_menuDvarsFinish" )
	end
	
	local f68_local1 = {
		button_text = Engine.Localize( f68_arg2 )
	}
	local f68_local2
	if f68_arg3 then
		f68_local2 = Engine.Localize( f68_arg3 )
		if not f68_local2 then
		
		else
			f68_local1.desc_text = f68_local2
			f68_local1.variant = GenericButtonSettings.Variants.Slider
			f68_local1.H1OptionButton = true
			f68_local1.button_display_func = function ( f70_arg0, f70_arg1 )
				return (Engine.GetDvarFloat( f68_arg1 ) - f68_arg4) / (f68_arg5 - f68_arg4)
			end
			
			f68_local1.button_left_func = function ( f71_arg0, f71_arg1 )
				f68_local0( f68_arg4, f68_arg5, -f68_arg6 )
			end
			
			f68_local1.button_right_func = function ( f72_arg0, f72_arg1 )
				f68_local0( f68_arg4, f68_arg5, f68_arg6 )
			end
			
			f68_local1.button_over_func = f68_arg8
			f68_local1.button_up_func = f68_arg9
			f68_local1.maxLabelWidth = 200
			return f68_arg0:AddButton( f68_arg2, nil, f68_arg7, nil, nil, f68_local1 )
		end
	end
	f68_local2 = ""
end

LUI.Options.InitScrollingList = function ( f73_arg0, f73_arg1, f73_arg2 )
	if not f73_arg2 then
		f73_arg2 = {}
	end
	local self = nil
	local f73_local1 = 7.5
	local f73_local2 = f73_arg2.rows or 9
	local f73_local3 = f73_arg2.scrollBarLeftOffset or 10
	if not Engine.InFrontend() and Engine.GetSplitScreen() then
		f73_local2 = 3
	end
	local f73_local4 = f73_arg0:getFirstChild()
	assert( f73_local4, "InitScrollingList need at least a child in list." )
	local f73_local5, f73_local6, f73_local7, f73_local8 = f73_arg0:getLocalRect()
	local f73_local9, f73_local10, f73_local11, f73_local12 = f73_local4:getLocalRect()
	local f73_local13 = f73_arg0:getAnimationStateInC( f73_arg0:getAnimationStateName() )
	self = LUI.UIVerticalScrollbar.new( {
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		width = f73_local1,
		left = f73_local7 + f73_local3,
		top = f73_local6 - 0.5,
		height = (f73_local12 - f73_local10 + (f73_local13.spacing or 0)) * f73_local2 - 8.5
	}, f73_arg0, f73_local1, nil, nil, nil, nil, Colors.white, Colors.h1.dark_grey, "h1_scrollbar_fill_normal", "h1_scrollbar_bg", "h2_scrollbar_fill_selected" )
	local f73_local14 = f73_arg0:getParent()
	f73_local14:addElement( self )
	ListPaging.InitList( f73_arg0, f73_local2, 10, false, false, {
		enabled = false
	}, self )
end

LUI.Options.AddOptionTextInfo = function ( f74_arg0 )
	local f74_local0, f74_local1, f74_local2, f74_local3 = f74_arg0.list:getLocalRect()
	return f74_arg0:addElement( LUI.MenuBuilder.BuildRegisteredType( "h1_vlist_button_desc_text", {
		top = f74_local1 + (f74_arg0.list.listHeight or f74_local1 - f74_local3) + LUI.H1VlistButtonDescText.ListVerticalOffset,
		left = f74_local0,
		width = f74_local2 - f74_local0,
		fadeIn = true
	} ) )
end

LUI.Options.AddRightPanel = function ( f75_arg0 )
	local f75_local0, f75_local1, f75_local2, f75_local3 = f75_arg0.list:getLocalRect()
	local f75_local4 = 0
	local f75_local5 = 0
	if not Engine.InFrontend() and Engine.GetSplitScreen() then
		f75_local4 = 450
		f75_local5 = -100
	end
	local self = LUI.UIElement.new()
	self:registerAnimationState( "default", {
		leftAnchor = true,
		topAnchor = true,
		top = 65 + f75_local5,
		left = f75_local2 + 150 + f75_local4,
		width = 400,
		height = 450
	} )
	self:animateToState( "default" )
	f75_arg0:addElement( self )
	return self
end

LUI.Options.WrapFuncWithController = function ( f76_arg0, f76_arg1 )
	if f76_arg1 ~= nil and type( f76_arg1 ) == "function" then
		return function ()
			local f77_local0 = f76_arg1
			local f77_local1 = f76_arg0.exclusiveController
			if not f77_local1 then
				f77_local1 = f76_arg0.controller
			end
			return f77_local0( f77_local1, f76_arg0 )
		end
		
	else
		return f76_arg1
	end
end

LUI.Options.AddButtonOptionVariant = function ( f78_arg0, f78_arg1, f78_arg2, f78_arg3, f78_arg4, f78_arg5, f78_arg6, f78_arg7, f78_arg8, f78_arg9, f78_arg10, f78_arg11 )
	local f78_local0 = nil
	if type( f78_arg7 ) == "function" then
		f78_local0 = f78_arg7
	elseif type( f78_arg7 ) == "string" then
		f78_local0 = function ( f79_arg0, f79_arg1 )
			LUI.FlowManager.RequestAddMenu( f79_arg0, f78_arg7, true, f79_arg1.controller, false )
		end
		
	end
	if type( f78_arg3 ) == "string" then
		f78_arg3 = Engine.Localize( f78_arg3 )
	end
	local f78_local1 = {
		variant = f78_arg1,
		desc_text = f78_arg3,
		button_display_func = LUI.Options.WrapFuncWithController( f78_arg0, f78_arg4 ),
		button_left_func = LUI.Options.WrapFuncWithController( f78_arg0, f78_arg5 ),
		button_right_func = LUI.Options.WrapFuncWithController( f78_arg0, f78_arg6 ),
		button_action_func = f78_local0,
		button_over_func = f78_arg8,
		button_up_func = f78_arg9,
		H1OptionButton = true,
		textStyle = CoD.TextStyle.ForceUpperCase,
		maxLabelWidth = 200,
		buttonActionIsRightAction = f78_arg1 ~= GenericButtonSettings.Variants.Slider
	}
	local f78_local2
	if f78_arg1 ~= GenericButtonSettings.Variants.Slider then
		f78_local2 = f78_arg11
	else
		f78_local2 = true
	end
	f78_local1.muteAction = f78_local2
	f78_local1.valueActionAudio = f78_arg11
	return f78_arg0:AddButton( f78_arg2, nil, f78_arg10, nil, nil, f78_local1 )
end

LockTable( _M )
