local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.LookControls = {}
function UpdateMousePitch( f1_arg0, f1_arg1, f1_arg2 )
	if not Engine.IsMultiplayer() then
		Engine.SetDvarBool( "ui_mousePitch", f1_arg2 )
	else
		Engine.SetDvarString( "ui_mousePitch", f1_arg2 )
	end
	if f1_arg2 == "1" or f1_arg2 == true then
		Engine.SetDvarFloat( "m_pitch", -MousePitchTable.PitchFloat )
	else
		Engine.SetDvarFloat( "m_pitch", MousePitchTable.PitchFloat )
	end
end

function GetPitchValues()
	if not Engine.IsMultiplayer() then
		return {
			{
				text = "@LUA_MENU_YES",
				value = true
			},
			{
				text = "@LUA_MENU_NO",
				value = false
			}
		}
	else
		return {
			{
				text = "@LUA_MENU_YES",
				value = "1"
			},
			{
				text = "@LUA_MENU_NO",
				value = "0"
			}
		}
	end
end

function GetSensitivityText()
	local f3_local0 = Engine.GetDvarFloat( "sensitivity" )
	if f3_local0 < 6 then
		return Engine.Localize( "@MENU_LOW" ) .. " " .. f3_local0
	elseif f3_local0 < 12 then
		return Engine.Localize( "@MENU_MEDIUM" ) .. " " .. f3_local0
	elseif f3_local0 < 18 then
		return Engine.Localize( "@MENU_HIGH" ) .. " " .. f3_local0
	elseif f3_local0 < 24 then
		return Engine.Localize( "@MENU_VERY_HIGH" ) .. " " .. f3_local0
	elseif f3_local0 >= 24 then
		return Engine.Localize( "@MENU_INSANE" ) .. " " .. f3_local0
	else
		return f3_local0 .. ""
	end
end

function MouseDvarChange( f4_arg0, f4_arg1, f4_arg2, f4_arg3, f4_arg4 )
	local f4_local0 = math.min( f4_arg2, math.max( f4_arg1, Engine.GetDvarFloat( f4_arg4 ) + f4_arg3 ) )
	if f4_local0 < f4_arg1 + 0 then
		f4_local0 = f4_arg1
	end
	Engine.SetDvarFloat( f4_arg4, f4_local0 )
	Engine.MenuDvarsFinish( f4_arg0 )
end

function GetAccelerationText()
	local f5_local0 = LUI.Round( Engine.GetDvarFloat( "cl_mouseAccel" ) * 25 )
	if f5_local0 <= 0 then
		return Engine.Localize( "@MENU_NONE" )
	elseif f5_local0 < 5 then
		return Engine.Localize( "@MENU_LOW" ) .. " " .. f5_local0
	elseif f5_local0 < 10 then
		return Engine.Localize( "@MENU_MEDIUM" ) .. " " .. f5_local0
	elseif f5_local0 < 15 then
		return Engine.Localize( "@MENU_HIGH" ) .. " " .. f5_local0
	elseif f5_local0 < 20 then
		return Engine.Localize( "@MENU_VERY_HIGH" ) .. " " .. f5_local0
	elseif f5_local0 >= 20 then
		return Engine.Localize( "@MENU_INSANE" ) .. " " .. f5_local0
	else
		return f5_local0 .. ""
	end
end

function OptionsMainClose( f6_arg0, f6_arg1 )
	Engine.ExecNow( "profile_menuDvarsFinish" )
end

function CreateOptions( f7_arg0 )
	f7_arg0:AddButton( nil, nil, GamepadDisabledFunc, nil, nil, {
		variant = GenericButtonSettings.Variants.Select,
		button_text = Engine.Localize( "MENU_MOUSE_SENSITIVITY" ),
		desc_text = Engine.Localize( "MENU_MOUSE_SENSITIVITY_DESC" ),
		H1OptionButton = true,
		button_display_func = GetSensitivityText,
		button_left_func = function ( f8_arg0, f8_arg1 )
			return MouseDvarChange( f7_arg0.exclusiveController, SliderBounds.MouseSensitivity.Min, SliderBounds.MouseSensitivity.Max, -SliderBounds.MouseSensitivity.Step, "sensitivity" )
		end,
		button_right_func = function ( f9_arg0, f9_arg1 )
			return MouseDvarChange( f7_arg0.exclusiveController, SliderBounds.MouseSensitivity.Min, SliderBounds.MouseSensitivity.Max, SliderBounds.MouseSensitivity.Step, "sensitivity" )
		end,
		buttonActionIsRightAction = true
	} )
	f7_arg0:AddButton( nil, nil, GamepadDisabledFunc, nil, nil, {
		variant = GenericButtonSettings.Variants.Select,
		button_text = Engine.Localize( "MENU_MOUSE_ACCEL" ),
		desc_text = Engine.Localize( "MENU_MOUSE_ACCEL_DESC" ),
		H1OptionButton = true,
		button_display_func = GetAccelerationText,
		button_left_func = function ( f10_arg0, f10_arg1 )
			return MouseDvarChange( f7_arg0.exclusiveController, SliderBounds.MouseAcceleration.Min, SliderBounds.MouseAcceleration.Max, -SliderBounds.MouseAcceleration.Step, "cl_mouseAccel" )
		end,
		button_right_func = function ( f11_arg0, f11_arg1 )
			return MouseDvarChange( f7_arg0.exclusiveController, SliderBounds.MouseAcceleration.Min, SliderBounds.MouseAcceleration.Max, SliderBounds.MouseAcceleration.Step, "cl_mouseAccel" )
		end,
		buttonActionIsRightAction = true
	} )
	LUI.Options.CreateOptionButton( f7_arg0, "ui_mousePitch", "@MENU_INVERT_MOUSE", "@MENU_INVERT_MOUSE_DESC", GetPitchValues(), UpdateMousePitch )
	LUI.Options.CreateOptionButton( f7_arg0, "m_filter", "@MENU_SMOOTH_MOUSE", "@MENU_SMOOTH_MOUSE_DESC", {
		{
			text = "@LUA_MENU_YES",
			value = true
		},
		{
			text = "@LUA_MENU_NO",
			value = false
		}
	} )
	LUI.Options.CreateOptionButton( f7_arg0, "win_useWmInput", "@MENU_RAW_MOUSE", "@MENU_RAW_MOUSE_DESC", {
		{
			text = "@LUA_MENU_YES",
			value = true
		},
		{
			text = "@LUA_MENU_NO",
			value = false
		}
	} )
	LUI.Options.CreateOptionButton( f7_arg0, "cl_freelook", "@MENU_FREE_LOOK", "@MENU_FREE_LOOK_DESC", {
		{
			text = "@LUA_MENU_YES",
			value = true
		},
		{
			text = "@LUA_MENU_NO",
			value = false
		}
	} )
	LUI.Options.CreateControlBindButton( f7_arg0, "@MENU_LOOK_UP", "@MENU_LOOK_UP_DESC", "+lookup" )
	LUI.Options.CreateControlBindButton( f7_arg0, "@MENU_LOOK_DOWN", "@MENU_LOOK_DOWN_DESC", "+lookdown" )
	LUI.Options.CreateControlBindButton( f7_arg0, "@MENU_HOLD_MOUSE_LOOK", "@MENU_HOLD_MOUSE_LOOK_DESC", "+mlook" )
	LUI.Options.CreateControlBindButton( f7_arg0, "@MENU_CENTER_VIEW", "@MENU_CENTER_VIEW_DESC", "centerview" )
	LUI.Options.InitScrollingList( f7_arg0.list, nil )
end

function RefreshFunc( f12_arg0 )
	return function ( f13_arg0, f13_arg1 )
		f12_arg0.list:processEvent( {
			name = "content_refresh",
			dispatchChildren = true
		} )
	end
	
end

LUI.LookControls.new = function ( f14_arg0, f14_arg1 )
	Engine.ExecNow( "profile_menuDvarsSetup" )
	local f14_local0 = Engine.IsMultiplayer() and 0 or LUI.MenuTemplate.spMenuOffset
	local f14_local1 = LUI.MenuTemplate.new( f14_arg0, {
		menu_title = Engine.ToUpperCase( Engine.Localize( "@LUA_MENU_CONTROL_OPTIONS" ) ),
		menu_top_indent = f14_local0 + LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing,
		menu_width = GenericMenuDims.OptionMenuWidth,
		menu_list_divider_top_offset = -(LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing),
		noWrap = true,
		skipAnim = 0 ~= LUI.PCControlOptions.FindTypeIndex( LUI.PreviousMenuName )
	} )
	f14_local1:registerEventHandler( "options_window_refresh", LUI.Options.OptionsWindowRefresh )
	f14_local1:registerEventHandler( "menu_close", OptionsMainClose )
	f14_local1:registerEventHandler( "popup_inactive", RefreshFunc( f14_local1 ) )
	f14_local1:addElement( LUI.H1MenuTab.new( {
		title = function ( f15_arg0 )
			return LUI.PCControlOptions.Categories[f15_arg0].title
		end,
		tabCount = #LUI.PCControlOptions.Categories,
		underTabTextFunc = function ( f16_arg0 )
			return LUI.PCControlOptions.Categories[f16_arg0].title
		end,
		top = f14_local0 + LUI.MenuTemplate.ListTop,
		width = GenericMenuDims.OptionMenuWidth,
		clickTabBtnAction = LUI.PCControlOptions.LoadMenu,
		activeIndex = LUI.PCControlOptions.FindTypeIndex( "look_controls" ),
		isTabLockedfunc = LUI.PCControlOptions.IsCategoryDisabled,
		skipChangeTab = true,
		exclusiveController = f14_local1.exclusiveController
	} ) )
	CreateOptions( f14_local1 )
	LUI.Options.AddOptionTextInfo( f14_local1 )
	LUI.PCControlOptions.AddResetToDefaultButton( f14_local1 )
	f14_local1:AddBackButton()
	return f14_local1
end

LUI.MenuBuilder.registerType( "look_controls", LUI.LookControls.new )
LockTable( _M )
