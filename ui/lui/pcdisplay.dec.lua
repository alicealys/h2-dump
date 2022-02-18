local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.PCDisplay = {}
function OpenBrightnessMenu()
	LUI.FlowManager.RequestAddMenu( nil, "boot_brightness", true, controller, false, {
		is_in_options_menu = true
	} )
end

function OpenHDRMenu()
	LUI.FlowManager.RequestAddMenu( nil, "boot_hdr", true, controller, false, {
		is_in_options_menu = true
	} )
end

function DisplayKillstreakCounterToggle( f3_arg0 )
	Engine.DisplayKillstreakCounterToggle( f3_arg0 )
end

function GetDisplayKillstreakCounterText( f4_arg0 )
	return LUI.Options.GetToggleTextForProfileData( "displayKillstreakCounter", f4_arg0 )
end

function DisplayMedalSplashesToggle( f5_arg0 )
	Engine.DisplayMedalSplashesToggle( f5_arg0 )
end

function GetDisplayMedalSplashesText( f6_arg0 )
	return LUI.Options.GetToggleTextForProfileData( "displayMedalSplashes", f6_arg0 )
end

function DisplayWeaponEmblemsToggle( f7_arg0 )
	Engine.DisplayWeaponEmblemsToggle( f7_arg0 )
end

function GetDisplayWeaponEmblemsText( f8_arg0 )
	return LUI.Options.GetToggleTextForProfileData( "displayWeaponEmblems", f8_arg0 )
end

function ToggleHDREnabledFunc( f9_arg0 )
	return function ( f10_arg0, f10_arg1 )
		LUI.Options.ToggleDvarBool( "r_hdrDisplaySupportEnabled" )
		RefreshHDRAdjustButton( f9_arg0, f10_arg1 )
	end
	
end

function RefreshHDRAdjustButton( f11_arg0, f11_arg1 )
	local f11_local0 = LUI.FlowManager.GetMenuScopedDataFromElement( f11_arg0 )
	if f11_local0.hdrAjustButton ~= nil then
		LUI.UIButton.RefreshDisabled( f11_local0.hdrAjustButton )
	end
end

function IsHDRDisabled( f12_arg0, f12_arg1 )
	return not Engine.GetDvarBool( "r_hdrDisplaySupportEnabled" )
end

function CreateOptions( f13_arg0 )
	LUI.Options.AddButtonOptionVariant( f13_arg0, GenericButtonSettings.Variants.Select, "@LUA_MENU_COLORBLIND_FILTER", "@LUA_MENU_COLOR_BLIND_DESC", LUI.Options.GetRenderColorBlindText, LUI.Options.RenderColorBlindToggle, LUI.Options.RenderColorBlindToggle )
	if Engine.IsMultiplayer() and Engine.GetDvarType( "cg_paintballFx" ) == DvarTypeTable.DvarBool then
		LUI.Options.AddButtonOptionVariant( f13_arg0, GenericButtonSettings.Variants.Select, "@LUA_MENU_PAINTBALL", "@LUA_MENU_PAINTBALL_DESC", LUI.Options.GetDvarEnableTextFunc( "cg_paintballFx", false ), LUI.Options.ToggleDvarFunc( "cg_paintballFx" ), LUI.Options.ToggleDvarFunc( "cg_paintballFx" ) )
	end
	LUI.Options.AddButtonOptionVariant( f13_arg0, GenericButtonSettings.Variants.Select, "@LUA_MENU_BLOOD", "@LUA_MENU_BLOOD_DESC", LUI.Options.GetDvarEnableTextFunc( "cg_blood", false ), LUI.Options.ToggleProfiledataFunc( "showblood", Engine.GetControllerForLocalClient( 0 ) ), LUI.Options.ToggleProfiledataFunc( "showblood", Engine.GetControllerForLocalClient( 0 ) ) )
	if not Engine.IsMultiplayer() then
		LUI.Options.AddButtonOptionVariant( f13_arg0, GenericButtonSettings.Variants.Select, "@LUA_MENU_CROSSHAIR", "@LUA_MENU_CROSSHAIR_DESC", LUI.Options.GetDvarEnableTextFunc( "cg_drawCrosshairOption", false ), LUI.Options.ToggleDvarFunc( "cg_drawCrosshairOption" ), LUI.Options.ToggleDvarFunc( "cg_drawCrosshairOption" ) )
		LUI.Options.CreateOptionButton( f13_arg0, "cg_drawDamageFeedbackOption", "@LUA_MENU_HIT_MARKER", "@LUA_MENU_HIT_MARKER_DESC", {
			{
				text = "@LUA_MENU_ENABLED",
				value = true
			},
			{
				text = "@LUA_MENU_DISABLED",
				value = false
			}
		} )
	end
	if Engine.GetDvarBool( "r_hdrDisplaySupport" ) then
		LUI.Options.AddButtonOptionVariant( f13_arg0, GenericButtonSettings.Variants.Select, "@MENU_HDR", "@MENU_HDR_DESC", LUI.Options.GetDvarEnableTextFunc( "r_hdrDisplaySupportEnabled", false ), ToggleHDREnabledFunc( f13_arg0 ), ToggleHDREnabledFunc( f13_arg0 ) )
	end
	if Engine.IsMultiplayer() then
		LUI.Options.AddButtonOptionVariant( f13_arg0, GenericButtonSettings.Variants.Select, "@MENU_DISPLAY_KILLSTREAK_COUNTER", "@MENU_DISPLAY_KILLSTREAK_COUNTER_DESC", GetDisplayKillstreakCounterText, DisplayKillstreakCounterToggle, DisplayKillstreakCounterToggle )
		LUI.Options.AddButtonOptionVariant( f13_arg0, GenericButtonSettings.Variants.Select, "@MENU_DISPLAY_MEDAL_SPLASHES", "@MENU_DISPLAY_MEDAL_SPLASHES_DESC", GetDisplayMedalSplashesText, DisplayMedalSplashesToggle, DisplayMedalSplashesToggle )
		LUI.Options.AddButtonOptionVariant( f13_arg0, GenericButtonSettings.Variants.Select, "@MENU_DISPLAY_WEAPON_EMBLEMS", "@MENU_DISPLAY_WEAPON_EMBLEMS_DESC", GetDisplayWeaponEmblemsText, DisplayWeaponEmblemsToggle, DisplayWeaponEmblemsToggle )
	end
	LUI.Options.AddButtonOptionVariant( f13_arg0, GenericButtonSettings.Variants.Common, "@MENU_BRIGHTNESS", "@MENU_BRIGHTNESS_DESC1", nil, nil, nil, OpenBrightnessMenu, nil, nil, nil )
	LUI.Options.InitScrollingList( f13_arg0.list, nil )
end

function RefreshFunc( f14_arg0 )
	return function ( f15_arg0, f15_arg1 )
		f14_arg0.list:processEvent( {
			name = "content_refresh",
			dispatchChildren = true
		} )
	end
	
end

function OptionsMainClose( f16_arg0, f16_arg1 )
	Engine.ExecNow( "profile_menuDvarsFinish" )
end

LUI.PCDisplay.new = function ( f17_arg0, f17_arg1 )
	local f17_local0 = Engine.IsMultiplayer() and 0 or LUI.MenuTemplate.spMenuOffset
	local f17_local1 = LUI.MenuTemplate.new( f17_arg0, {
		menu_title = Engine.ToUpperCase( Engine.Localize( "@LUA_MENU_GRAPHIC_OPTIONS" ) ),
		menu_top_indent = f17_local0 + LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing,
		menu_list_divider_top_offset = -(LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing),
		menu_width = GenericMenuDims.OptionMenuWidth,
		skipAnim = 0 ~= LUI.PCGraphicOptions.FindTypeIndex( LUI.PreviousMenuName )
	} )
	f17_local1.brightnessGuide = LUI.Options.CreateBrightnessGuide()
	f17_local1:addElement( f17_local1.brightnessGuide )
	f17_local1:addElement( LUI.H1MenuTab.new( {
		title = function ( f18_arg0 )
			return LUI.PCGraphicOptions.Categories[f18_arg0].title
		end,
		tabCount = #LUI.PCGraphicOptions.Categories,
		underTabTextFunc = function ( f19_arg0 )
			return LUI.PCGraphicOptions.Categories[f19_arg0].title
		end,
		top = f17_local0 + LUI.MenuTemplate.ListTop,
		width = GenericMenuDims.OptionMenuWidth,
		clickTabBtnAction = LUI.PCGraphicOptions.LoadMenu,
		activeIndex = LUI.PCGraphicOptions.FindTypeIndex( "pc_display" ),
		skipChangeTab = true,
		exclusiveController = f17_local1.exclusiveController
	} ) )
	f17_local1:registerEventHandler( "popup_inactive", RefreshFunc( f17_local1 ) )
	f17_local1:registerEventHandler( "menu_close", OptionsMainClose )
	CreateOptions( f17_local1 )
	LUI.Options.AddOptionTextInfo( f17_local1 )
	LUI.PCControlOptions.AddOptimalVideoButton( f17_local1 )
	f17_local1:AddBackButton( function ( f20_arg0, f20_arg1 )
		LUI.FlowManager.RequestLeaveMenu( f20_arg0 )
	end )
	return f17_local1
end

LUI.MenuBuilder.registerType( "pc_display", LUI.PCDisplay.new )
LockTable( _M )
