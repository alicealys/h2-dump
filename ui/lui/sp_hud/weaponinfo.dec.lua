local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
require( "LUI.sp_hud.hudStanceIndicator" )
f0_local0 = 3000
f0_local1 = 50
f0_local2 = 50
local f0_local3 = 10000
local f0_local4 = 2000
local f0_local5 = 2000
local f0_local6 = 1000
local f0_local7 = 2000
local f0_local8 = false
local f0_local9 = {
	glow_start_fade_in = 0,
	glow_fade_in_time = 0,
	glow_start_fade_out = 67,
	glow_fade_out_time = 0,
	text_start_fade_in = 35,
	text_fade_in_time = 0,
	scanlines_start_fade_in = 35,
	scanlines_fade_in_time = 17,
	scanlines_start_fade_out = 67,
	scanlines_fade_out_time = 360
}
WeaponClipDefault = {
	width = -10.67,
	height = -21.33,
	spacing = -6.33,
	offsetY = 0,
	offsetAnchor = 0,
	material = "h1_hud_weapwidget_ammopip_largeb",
	nvg_material = "h1_hud_weapwidget_ammopip_largeb_nightvision"
}
WeaponClipPistolMagazine = {
	width = 10.67,
	height = 10.67,
	spacing = -7,
	offsetY = 10.67,
	offsetAnchor = 0,
	material = "h1_hud_weapwidget_ammopip_smalla",
	nvg_material = "h1_hud_weapwidget_ammopip_smalla_nightvision",
	offsetYDualWielding = 5.33
}
WeaponClipSubMMagazine = {
	width = 10.67,
	height = 10.67,
	spacing = -8,
	offsetY = 10.67,
	offsetAnchor = 0,
	material = "h1_hud_weapwidget_ammopip_smalla",
	nvg_material = "h1_hud_weapwidget_ammopip_smalla_nightvision",
	offsetYDualWielding = 5.33
}
WeaponClipPistolMagazineB = {
	width = 10.67,
	height = 10.67,
	spacing = -6.33,
	offsetY = 10.67,
	offsetAnchor = 0,
	material = "h1_hud_weapwidget_ammopip_smallb",
	nvg_material = "h1_hud_weapwidget_ammopip_smallb_nightvision"
}
WeaponClipMagazine = {
	width = 10.67,
	height = 21.33,
	spacing = -8,
	offsetY = 2,
	offsetAnchor = 0,
	material = "h1_hud_weapwidget_ammopip_medium",
	nvg_material = "h1_hud_weapwidget_ammopip_medium_nightvision"
}
WeaponClipShortMagazine = {
	width = 10.67,
	height = 21.33,
	spacing = -6.33,
	offsetY = 2,
	offsetAnchor = 0,
	material = "h1_hud_weapwidget_ammopip_largea",
	nvg_material = "h1_hud_weapwidget_ammopip_largea_nightvision"
}
WeaponClipShortMagazineAuto = {
	width = 10.67,
	height = 21.33,
	spacing = -7.67,
	offsetY = 0,
	offsetAnchor = 0,
	material = "h1_hud_weapwidget_ammopip_largea",
	nvg_material = "h1_hud_weapwidget_ammopip_largea_nightvision"
}
WeaponClipShortMagazineHor = {
	width = 21.33,
	height = 10.67,
	spacing = -2,
	offsetY = 10.67,
	offsetAnchor = 10,
	material = "h1_hud_weapwidget_ammopip_largeahor",
	nvg_material = "h1_hud_weapwidget_ammopip_largeahor_nightvision"
}
WeaponClipShortMagazineB = {
	width = 10.67,
	height = 21.33,
	spacing = -5.33,
	offsetY = 2,
	offsetAnchor = 0,
	material = "h1_hud_weapwidget_ammopip_largeb",
	nvg_material = "h1_hud_weapwidget_ammopip_largeb_nightvision"
}
WeaponClipBeltfed = {
	width = 5.33,
	height = 2.67,
	spacing = 0,
	offsetY = 10,
	offsetAnchor = 0,
	material = "h1_hud_weapwidget_ammopip_belt",
	nvg_material = "h1_hud_weapwidget_ammopip_belt_nightvision",
	beltFed = true,
	rows = 5,
	pipsPerRow = 20
}
WeaponClipShotgun = {
	width = 21.33,
	height = 10.67,
	spacing = -4.67,
	offsetY = 9.33,
	offsetAnchor = 10,
	material = "h1_hud_weapwidget_ammopip_shell",
	nvg_material = "h1_hud_weapwidget_ammopip_shell_nightvision",
	offsetYDualWielding = 4
}
WeaponClipRocket = {
	width = 85.32,
	height = 10.67,
	spacing = 0,
	offsetY = 10.67,
	offsetAnchor = 76.66,
	material = "h1_hud_weapwidget_ammopip_rpg7",
	nvg_material = "h1_hud_weapwidget_ammopip_rpg7_nightvision"
}
WeaponClipStingerRocket = {
	width = 85.32,
	height = 10.67,
	spacing = 0,
	offsetY = 10.67,
	offsetAnchor = 76.66,
	material = "h1_hud_weapwidget_ammopip_stinger",
	nvg_material = "h1_hud_weapwidget_ammopip_stinger_nightvision"
}
WeaponClipJavelinRocket = {
	width = 85.32,
	height = 10.67,
	spacing = 0,
	offsetY = 10.67,
	offsetAnchor = 76.66,
	material = "h1_hud_weapwidget_ammopip_javelin",
	nvg_material = "h1_hud_weapwidget_ammopip_javelin_nightvision"
}
WeaponClipAT4Rocket = {
	width = 85.32,
	height = 10.67,
	spacing = 0,
	offsetY = 10.67,
	offsetAnchor = 76.66,
	material = "h1_hud_weapwidget_ammopip_at4",
	nvg_material = "h1_hud_weapwidget_ammopip_at4_nightvision"
}
WeaponClipGrenadeLauncher = {
	width = 42.66,
	height = 10.67,
	spacing = 0,
	offsetY = 10.67,
	offsetAnchor = 33.33,
	material = "h1_hud_weapwidget_ammopip_gl",
	nvg_material = "h1_hud_weapwidget_ammopip_gl_nightvision"
}
WeaponClipTypes = {
	WeaponClipPistolMagazine,
	WeaponClipPistolMagazineB,
	WeaponClipSubMMagazine,
	WeaponClipMagazine,
	WeaponClipShortMagazine,
	WeaponClipShortMagazineAuto,
	WeaponClipShortMagazineHor,
	WeaponClipShortMagazineB,
	WeaponClipShotgun,
	WeaponClipRocket,
	WeaponClipStingerRocket,
	WeaponClipJavelinRocket,
	WeaponClipBeltfed,
	nil,
	WeaponClipAT4Rocket,
	WeaponClipGrenadeLauncher
}
AltWeaponLookup = {}
ExplosiveLookup = {
	airstrike_support = true,
	c4 = true,
	claymore = true,
	cobra_air_support = true,
	remote_missile_detonator = true,
	flare = true
}
DisableAmmoStatusLookup = {
	airstrike_support = true,
	c4 = true,
	claymore = true,
	cobra_air_support = true,
	stinger = true,
	rpg = true,
	rpg_player = true,
	javelin = true,
	rpg_jeepride = true,
	flare = true
}
DisableAmmoAndBulletPipsLookup = {
	javelin = true,
	stinger = true
}
OnlyShowGrenadesInfoLookup = {
	usp_laserdesignator = true,
	riotshield = true,
	h2_cheatpickaxe = true,
	h2_cheatcommandoknife = true,
	h2_cheatbottle = true,
	h2_cheathammer = true,
	h2_cheathatchet = true,
	h2_cheatscimitar = true,
	h2_cheatshovel = true
}
WeaponNameToLabel = {}
local f0_local10 = 5.33
local f0_local11 = 85.32
local f0_local12 = {
	red = Swatches.HUD.Warning.r,
	green = Swatches.HUD.Warning.g,
	blue = Swatches.HUD.Warning.b,
	alpha = 1
}
local f0_local13 = function ( f1_arg0, f1_arg1 )
	if f1_arg0._event ~= f1_arg1 then
		f1_arg0._event = f1_arg1
		f1_arg0:processEvent( {
			name = f1_arg1
		} )
	end
end

local f0_local14 = function ( f2_arg0, f2_arg1, f2_arg2 )
	if f2_arg0._state ~= f2_arg1 then
		f2_arg0._state = f2_arg1
		f2_arg0:animateToState( f2_arg1, f2_arg2 )
	end
end

local f0_local15 = function ( f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4 )
	if not f0_local8 or not Engine.GetDvarBool( "cg_debugHUDVisibility" ) then
		table.insert( f3_arg1, {
			f = f3_arg3,
			t = f3_arg2,
			p = f3_arg4
		} )
	end
end

local f0_local16 = function ( f4_arg0, f4_arg1, f4_arg2, f4_arg3 )
	local f4_local0 = RegisterMaterial( f4_arg0 )
	return {
		type = "UIImage",
		states = {
			default = {
				left = 0,
				top = 0,
				width = f4_arg2,
				height = f4_arg3,
				material = f4_local0,
				alpha = CoD.HudStandards.overlayAlpha * 0.65,
				red = 0.1,
				green = 0.1,
				blue = 0.1
			},
			on = {
				alpha = 1,
				red = 1,
				green = 1,
				blue = 1,
				material = f4_local0
			},
			off = {
				red = 0.1,
				green = 0.1,
				blue = 0.1,
				material = f4_local0,
				alpha = CoD.HudStandards.overlayAlpha * 0.65
			},
			nvg_off = {
				color = CoD.HudStandards.nvgOverlayTint,
				alpha = CoD.HudStandards.overlayAlphaNVG * 0.5,
				material = RegisterMaterial( f4_arg1 )
			},
			low = {
				color = Colors.hud_warning,
				material = f4_local0,
				alpha = 1
			}
		},
		handlers = {
			low = MBh.AnimateLoop( {
				{
					"low",
					500
				},
				{
					"on",
					500
				}
			} ),
			on = MBh.AnimateToState( "on", 0 ),
			off = MBh.AnimateToState( "off", 0 ),
			nvg_off = MBh.AnimateToState( "nvg_off", 0 )
		}
	}
end

local f0_local17 = function ( f5_arg0, f5_arg1, f5_arg2 )
	local f5_local0 = f5_arg0.weaponClipType.width
	local f5_local1 = f5_arg0.weaponClipType.height
	local f5_local2 = f5_arg0.weaponClipType.material
	local f5_local3 = f5_arg0.weaponClipType.nvg_material
	local f5_local4 = f5_arg0.weaponClipType.spacing
	local f5_local5 = f5_arg0.weaponClipType.offsetY
	local f5_local6 = f5_arg0.weaponClipType.offsetAnchor
	local f5_local7 = f5_arg0.weaponClipSize
	local f5_local8 = #f5_arg1
	local f5_local9 = "ammoBulletGraphic_" .. f5_arg2
	if f5_arg0.weaponClipType.beltFed == nil then
		if f5_arg0.dualWielding then
			if f5_arg0.weaponClipType.offsetYDualWielding then
				f5_local5 = f5_arg0.weaponClipType.offsetYDualWielding
			end
			if f5_arg2 == "right" then
				f5_local5 = f5_local5 + f5_arg0.weaponClipType.height
			end
		end
		for f5_local10 = 1, f5_local7, 1 do
			local f5_local13 = f5_local8 + f5_local10
			f5_arg1[f5_local13] = f0_local16( f5_local2, f5_local3, f5_local0, f5_local1 )
			f5_arg1[f5_local13].id = f5_local9 .. f5_local10
			f5_arg1[f5_local13].states.default.left = -(f5_local7 - f5_local10) * f5_local0 - f5_local4 * (f5_local7 - f5_local10) - f5_local6
			f5_arg1[f5_local13].states.default.top = f5_local5
		end
	else
		local f5_local10 = 1
		local f5_local11 = f5_arg0.weaponClipType.rows
		local f5_local12 = f5_arg0.weaponClipType.pipsPerRow
		for f5_local14 = 1, f5_local11, 1 do
			for f5_local16 = 1, f5_local12, 1 do
				local f5_local19 = nil
				if f5_local14 % 2 == 0 then
					f5_local19 = -(f5_local16 - 1) * f5_local0 - f5_local4 * (f5_local16 - 1) - f5_local6
				else
					f5_local19 = -(f5_local12 - f5_local16) * f5_local0 - f5_local4 * (f5_local12 - f5_local16) - f5_local6
				end
				local f5_local20 = f5_local8 + f5_local10
				f5_arg1[f5_local20] = f0_local16( f5_local2, f5_local3, f5_local0, f5_local1 )
				f5_arg1[f5_local20].id = f5_local9 .. f5_local10
				f5_arg1[f5_local20].states.default.left = f5_local19
				f5_arg1[f5_local20].states.default.top = f5_local5 + (f5_local14 - 1) * f5_local1
				f5_local10 = f5_local10 + 1
			end
		end
	end
	f5_arg1[#f5_arg1 + 1] = {
		type = "UIElement",
		id = "pipImageWatcher_" .. f5_arg2
	}
	return f5_arg1
end

local f0_local18 = function ( f6_arg0 )
	local f6_local0 = {
		type = "UIElement",
		id = "ammoClipGraphic",
		states = {
			default = {
				rightAnchor = true,
				bottomAnchor = true,
				bottom = -65.33,
				right = -((f6_arg0.hasAmmoAndBulletPips and 573 or 100) * 0.33),
				alpha = 1
			}
		},
		children = {}
	}
	f0_local17( f6_arg0, f6_local0.children, "right" )
	if f6_arg0.dualWielding then
		f0_local17( f6_arg0, f6_local0.children, "left" )
	end
	return f6_local0
end

local f0_local19 = function ( f7_arg0, f7_arg1, f7_arg2 )
	local f7_local0 = "ammoBulletGraphic_" .. f7_arg2
	local f7_local1 = {}
	for f7_local2 = 1, f7_arg1.clipMax, 1 do
		f7_local1[f7_arg1.clipMax - f7_local2 + 1] = f7_arg1:getChildById( f7_local0 .. f7_local2 )
	end
	return f7_local1
end

local f0_local20 = function ( f8_arg0, f8_arg1 )
	local f8_local0 = LUI.MenuBuilder.BuildAddChild( f8_arg1, f0_local18( f8_arg0 ) )
	f8_local0.clipMax = f8_arg0.weaponClipSize
	f8_local0.pipsRightHand = f0_local19( f8_arg0, f8_local0, "right" )
	f8_local0.pipsLeftHand = f8_arg0.dualWielding and f0_local19( f8_arg0, f8_local0, "left" ) or {}
	return f8_local0
end

local f0_local21 = function ( f9_arg0 )
	local f9_local0
	if not f9_arg0.inFlashbangRoutine and not f9_arg0.dead then
		f9_local0 = not f9_arg0.isActionSlotPreempted
	else
		f9_local0 = false
	end
	return f9_local0
end

local f0_local22 = function ( f10_arg0 )
	local f10_local0
	if not f10_arg0.inFlashbangRoutine then
		f10_local0 = not f10_arg0.dead
	else
		f10_local0 = false
	end
	return f10_local0
end

local f0_local23 = function ( f11_arg0 )
	local f11_local0
	if not f11_arg0.inFlashbangRoutine and not f11_arg0.dead and not f11_arg0.isAmmoStatusPreempted then
		f11_local0 = not f11_arg0.hasExplosivesEquipped
	else
		f11_local0 = false
	end
	return f11_local0
end

local f0_local24 = function ( f12_arg0 )
	local f12_local0
	if not f12_arg0.inFlashbangRoutine and not f12_arg0.dead then
		f12_local0 = not f12_arg0.isWeaponInfoPreempted
	else
		f12_local0 = false
	end
	return f12_local0
end

local f0_local25 = function ( f13_arg0 )
	local f13_local0
	if f13_arg0.primaryAmmoIsLow or f13_arg0.clipInfoRightHand.isLow or f13_arg0.clipInfoLeftHand.isLow then
		f13_local0 = f13_arg0.onlyShowGrenades
		if f13_local0 then
		
		else
			return f13_local0
		end
	end
	f13_local0 = not f13_arg0.inFlashbangRoutine
end

local f0_local26 = function ( f14_arg0 )
	local f14_local0
	if not f0_local25( f14_arg0 ) or f14_arg0.actionSlot.activeSlot ~= 0 then
		f14_local0 = not f14_arg0.actionSlot.hasValidSlot
	else
		f14_local0 = true
	end
	return f14_local0
end

local f0_local27 = function ( f15_arg0 )
	return f0_local25( f15_arg0 )
end

local f0_local28 = function ( f16_arg0 )
	return true
end

local f0_local29 = function ( f17_arg0, f17_arg1 )
	for f17_local0 = 1, #f17_arg0.inactiveWidgets, 1 do
		f0_local14( f17_arg0.inactiveWidgets[f17_local0], "off", f17_arg1 )
	end
end

local f0_local30 = function ( f18_arg0, f18_arg1, f18_arg2 )
	if f18_arg0.actionSlot.hasValidSlot == false then
		return 
	elseif f0_local21( f18_arg0 ) == true or f18_arg2 == true then
		f18_arg0.actionSlotIsShowing = true
		f0_local14( f18_arg0.actionSlot, "on", f18_arg1 )
	end
end

function hideActionSlot( f19_arg0, f19_arg1, f19_arg2 )
	if f0_local26( f19_arg0 ) == true or f19_arg2 == true then
		f19_arg0.actionSlotIsShowing = false
		f0_local14( f19_arg0.actionSlot, "off", f19_arg1 )
	end
end

local f0_local31 = function ( f20_arg0, f20_arg1, f20_arg2 )
	if f0_local22( f20_arg0 ) == true or f20_arg2 == true then
		f20_arg0.hudStanceIsShowing = true
		f0_local14( f20_arg0.hudStance, "on", f20_arg1 )
	end
end

function hideHudStance( f21_arg0, f21_arg1, f21_arg2 )
	if f0_local27( f21_arg0 ) == true or f21_arg2 == true then
		f21_arg0.hudStanceIsShowing = false
		f0_local14( f21_arg0.hudStance, "off", f21_arg1 )
	end
end

local f0_local32 = function ( f22_arg0, f22_arg1 )
	f0_local14( f22_arg1.element, f22_arg1.state, f22_arg1.time )
end

local f0_local33 = function ( f23_arg0, f23_arg1 )
	if f0_local23( f23_arg0 ) then
		f23_arg0.ammoStatusIsShowing = true
		if f23_arg0.ammoStatus.state ~= f23_arg1 then
			f23_arg0.ammoStatus.state = f23_arg1
			f23_arg0.watchdogGroups.ammoStatus = {}
			f0_local15( f23_arg0, f23_arg0.watchdogGroups.ammoStatus, f0_local9.glow_start_fade_in, f0_local32, {
				element = f23_arg0.ammoStatus.glow,
				state = f23_arg1,
				time = f0_local9.glow_fade_in_time
			} )
			f0_local15( f23_arg0, f23_arg0.watchdogGroups.ammoStatus, f0_local9.scanlines_start_fade_in, f0_local32, {
				element = f23_arg0.ammoStatus.scanlines,
				state = f23_arg1,
				time = f0_local9.scanlines_fade_in_time
			} )
			f0_local15( f23_arg0, f23_arg0.watchdogGroups.ammoStatus, f0_local9.text_start_fade_in, f0_local32, {
				element = f23_arg0.ammoStatus.text,
				state = f23_arg1,
				time = f0_local9.text_fade_in_time
			} )
			f0_local15( f23_arg0, f23_arg0.watchdogGroups.ammoStatus, f0_local9.text_start_fade_in, f0_local32, {
				element = f23_arg0.ammoStatus.backer,
				state = f23_arg1,
				time = f0_local9.text_fade_in_time
			} )
			f0_local15( f23_arg0, f23_arg0.watchdogGroups.ammoStatus, f0_local9.glow_start_fade_out, f0_local32, {
				element = f23_arg0.ammoStatus.glow,
				state = "off",
				time = f0_local9.glow_fade_out_time
			} )
			f0_local15( f23_arg0, f23_arg0.watchdogGroups.ammoStatus, f0_local9.scanlines_start_fade_out, f0_local32, {
				element = f23_arg0.ammoStatus.scanlines,
				state = "off",
				time = f0_local9.scanlines_fade_out_time
			} )
		end
	end
end

function hideAmmoStatus( f24_arg0, f24_arg1, f24_arg2 )
	if f0_local28( f24_arg0 ) or f24_arg2 then
		f24_arg0.ammoStatusIsShowing = false
		f0_local14( f24_arg0.ammoStatus.text, "off", f24_arg1 )
		f0_local14( f24_arg0.ammoStatus.backer, "off", f24_arg1 )
		f0_local14( f24_arg0.ammoStatus.glow, "off", f24_arg1 )
		f0_local14( f24_arg0.ammoStatus.scanlines, "off", f24_arg1 )
		f24_arg0.ammoStatus.state = nil
		f24_arg0.watchdogGroups.ammoStatus = {}
	end
end

local f0_local34 = function ( f25_arg0, f25_arg1, f25_arg2 )
	if f0_local24( f25_arg0 ) == true or f25_arg2 == true then
		for f25_local0 = 1, #f25_arg0.activeWidgets, 1 do
			f0_local14( f25_arg0.activeWidgets[f25_local0], "on", f25_arg1 )
		end
		f25_arg0.weaponWidgetIsShowing = true
	end
end

local f0_local35 = function ( f26_arg0, f26_arg1, f26_arg2 )
	if f0_local25( f26_arg0 ) == true or f26_arg2 == true then
		for f26_local0 = 1, #f26_arg0.activeWidgets, 1 do
			f0_local14( f26_arg0.activeWidgets[f26_local0], "off", f26_arg1 )
		end
		f26_arg0.weaponWidgetIsShowing = false
	end
end

local f0_local36 = function ( f27_arg0, f27_arg1 )
	f27_arg0.watchdogGroups.hideWidgets = {}
	f0_local15( f27_arg0, f27_arg0.watchdogGroups.hideWidgets, f0_local3, f0_local35, f0_local4 )
end

local f0_local37 = function ( f28_arg0, f28_arg1 )
	local f28_local0 = f28_arg0.watchdogGroups
	f28_arg0.watchdogGroups = {}
	for f28_local7, f28_local8 in pairs( f28_local0 ) do
		local f28_local9 = {}
		for f28_local4, f28_local5 in pairs( f28_local8 ) do
			f28_local5.t = f28_local5.t - f28_arg1
			if f28_local5.t <= 0 then
				f28_local5.f( f28_arg0, f28_local5.p )
			else
				table.insert( f28_local9, f28_local5 )
			end
		end
		if #f28_local9 > 0 then
			f28_arg0.watchdogGroups[f28_local7] = {}
			f28_arg0.watchdogGroups[f28_local7] = f28_local9
		end
	end
end

function updateAmmoStatusMessageForce( f29_arg0 )
	f29_arg0.forceAmmoStatusUpdate = true
	updateAmmoStatusMessage( f29_arg0 )
end

function updateAmmoStatusMessage( f30_arg0 )
	local f30_local0 = f30_arg0.clipInfoRightHand.isLow
	local f30_local1 = f30_arg0.clipInfoRightHand.ammo
	if f30_arg0.dualWielding then
		if not f30_local0 then
			f30_local0 = f30_arg0.clipInfoLeftHand.isLow
		end
		f30_local1 = f30_local1 + f30_arg0.clipInfoLeftHand.ammo
	end
	local f30_local2 = Game.IsWeaponReloading( 1 )
	local f30_local3 = Game.IsWeaponDropping( 1 )
	local f30_local4
	if f30_arg0.forceAmmoStatusUpdate == nil or f30_arg0.forceAmmoStatusUpdate ~= true then
		f30_local4 = false
	else
		f30_local4 = true
	end
	if f30_local0 and f30_arg0.hasPrimaryWeapon and (f30_local4 or f30_local2 == 0 and f30_local3 == 0) then
		local f30_local5, f30_local6 = nil
		if f30_arg0.primaryStockAmmo > 0 then
			if Game.GetPlayerMaxClipAmmo() == 1 then
				return 
			end
			f30_local5 = Engine.Localize( "@PLATFORM_RELOAD_CAPS" )
			f30_local6 = "reload"
		elseif f30_local1 > 0 then
			f30_local5 = Engine.Localize( "@PLATFORM_LOW_AMMO_NO_RELOAD_CAPS" )
			f30_local6 = "low"
		else
			f30_local5 = Engine.Localize( "@WEAPON_NO_AMMO_CAPS" )
			f30_local6 = "out"
		end
		if f30_local6 ~= "out" and f30_arg0.hasAmmoStatus == false then
			hideAmmoStatus( f30_arg0, f0_local1, false )
		else
			f30_arg0.ammoStatus.text:setText( f30_local5 )
			f0_local33( f30_arg0, f30_local6 )
		end
	else
		hideAmmoStatus( f30_arg0, f0_local1, false )
	end
	f30_arg0.forceAmmoStatusUpdate = false
end

local f0_local38 = function ( f31_arg0, f31_arg1, f31_arg2 )
	local f31_local0 = nil
	if f31_arg1.isLow then
		f31_local0 = "low"
	else
		f31_local0 = "on"
	end
	for f31_local1 = 1, f31_arg1.ammo, 1 do
		f0_local13( f31_arg2[f31_local1], f31_local0 )
	end
	local f31_local1 = nil
	if f31_arg0.weaponInfo.isNvgMode then
		f31_local1 = "nvg_off"
	else
		f31_local1 = "off"
	end
	for f31_local2 = f31_arg1.ammo + 1, f31_arg0.clipMax, 1 do
		f0_local13( f31_arg2[f31_local2], f31_local1 )
	end
end

local f0_local39 = function ( f32_arg0, f32_arg1 )
	local f32_local0 = Game.GetPlayerClipLowAmmoThreshold()
	local f32_local1 = Game.GetPlayerClipAmmo( 1 )
	f32_arg0.clipInfoRightHand.ammo = f32_local1
	f32_arg0.clipInfoRightHand.isLow = f32_local1 <= f32_arg1 * f32_local0
	if f32_arg0.dualWielding then
		local f32_local2 = Game.GetPlayerClipAmmo( 2 )
		f32_arg0.clipInfoLeftHand.ammo = f32_local2
		f32_arg0.clipInfoLeftHand.isLow = f32_local2 <= f32_arg1 * f32_local0
	end
end

local f0_local40 = function ( f33_arg0 )
	f33_arg0 = f33_arg0.parent
	local f33_local0 = Game.GetPlayerMaxClipAmmo()
	if f33_local0 == 0 then
		return 
	elseif f33_local0 ~= f33_arg0.clipMax then
		return 
	end
	f0_local39( f33_arg0.weaponInfo, f33_local0 )
	f0_local38( f33_arg0, f33_arg0.weaponInfo.clipInfoRightHand, f33_arg0.pipsRightHand )
	if f33_arg0.weaponInfo.dualWielding then
		f0_local38( f33_arg0, f33_arg0.weaponInfo.clipInfoLeftHand, f33_arg0.pipsLeftHand )
	end
	updateAmmoStatusMessage( f33_arg0.weaponInfo )
end

local f0_local41 = function ( f34_arg0 )
	f34_arg0.activeWidgets = {}
	f34_arg0.inactiveWidgets = {}
	local f34_local0 = f34_arg0.onlyShowGrenades
	if f34_arg0.onlyShowGrenades then
		table.insert( f34_arg0.inactiveWidgets, f34_arg0.primaryWidget )
	elseif f34_arg0.hasPrimaryWeapon == false then
		table.insert( f34_arg0.inactiveWidgets, f34_arg0.primaryWidget )
		table.insert( f34_arg0.inactiveWidgets, f34_arg0.grenadeWidget )
		table.insert( f34_arg0.inactiveWidgets, f34_arg0.tacticalWidget )
		table.insert( f34_arg0.inactiveWidgets, f34_arg0.lethalWidget )
	elseif f34_arg0.hasExplosivesEquipped then
		table.insert( f34_arg0.inactiveWidgets, f34_arg0.primaryWidget )
		table.insert( f34_arg0.inactiveWidgets, f34_arg0.grenadeWidget )
	else
		if not Game.PlayerOnLadder() then
			table.insert( f34_arg0.activeWidgets, f34_arg0.primaryWidget )
		else
			f34_arg0.primaryWidgetHidden = true
		end
		f34_local0 = true
	end
	if f34_local0 then
		if f34_arg0.isGrenadeWidgetPreempted == true then
			table.insert( f34_arg0.inactiveWidgets, f34_arg0.grenadeWidget )
			table.insert( f34_arg0.inactiveWidgets, f34_arg0.tacticalWidget )
			table.insert( f34_arg0.inactiveWidgets, f34_arg0.lethalWidget )
		else
			if f34_arg0.tacticalWidget ~= nil or f34_arg0.lethalWidget ~= nil then
				table.insert( f34_arg0.activeWidgets, f34_arg0.grenadeWidget )
			end
			if f34_arg0.tacticalWidget ~= nil then
				table.insert( f34_arg0.activeWidgets, f34_arg0.tacticalWidget )
			end
			if f34_arg0.lethalWidget ~= nil then
				table.insert( f34_arg0.activeWidgets, f34_arg0.lethalWidget )
			end
		end
	end
end

local f0_local42 = function ( f35_arg0 )
	if f35_arg0.hasExplosivesEquipped then
		return 
	end
	local f35_local0 = Game.GetPlayerStockAmmo()
	local f35_local1 = Game.GetPlayerMaxStockAmmo()
	f35_arg0.primaryStockAmmo = f35_local0
	if not f35_arg0.hasAmmoAndBulletPips then
		return 
	end
	local f35_local2 = f35_local1 * 0.2
	if f35_local0 <= f35_local2 then
		f35_arg0.primaryAmmoIsLow = true
		f0_local14( f35_arg0.primaryWeaponAmmoText, "low", 0 )
	elseif f35_local2 < f35_local0 then
		f35_arg0.primaryAmmoIsLow = false
		f0_local14( f35_arg0.primaryWeaponAmmoText, "on", 0 )
	end
	if f35_local0 >= 10 and f35_local0 < 100 then
		f0_local14( f35_arg0.primaryWeaponAmmoText.emptySlot0, "off", 0 )
		f0_local14( f35_arg0.primaryWeaponAmmoText.emptySlot1, "on", 0 )
	elseif f35_local0 < 10 then
		f0_local14( f35_arg0.primaryWeaponAmmoText.emptySlot0, "on", 0 )
		f0_local14( f35_arg0.primaryWeaponAmmoText.emptySlot1, "on", 0 )
	else
		f0_local14( f35_arg0.primaryWeaponAmmoText.emptySlot0, "off", 0 )
		f0_local14( f35_arg0.primaryWeaponAmmoText.emptySlot1, "off", 0 )
	end
	f35_arg0.primaryWeaponAmmoText:setText( f35_local0 )
end

local f0_local43 = function ( f36_arg0 )
	f36_arg0.parent.weaponWidgetDirty = true
end

local f0_local44 = function ( f37_arg0 )
	if not Game.PlayerOnLadder() then
		f37_arg0 = f37_arg0.parent
		if Game.GetPlayerWeaponName() == f37_arg0.weaponName then
			f37_arg0.actionSlotDirty = true
			return 
		end
		f37_arg0.weaponWidgetDirty = true
	end
end

local f0_local45 = function ( f38_arg0 )
	if not Game.PlayerOnLadder() then
		f0_local43( f38_arg0 )
	else
		f38_arg0 = f38_arg0.parent
		f0_local41( f38_arg0 )
		f0_local34( f38_arg0, f0_local2 )
		f0_local36( f38_arg0, f38_arg0.activeWidgets )
	end
end

function setHideActionSlotWatchdog( f39_arg0 )
	f39_arg0.watchdogGroups.actionSlot = {}
	f0_local15( f39_arg0, f39_arg0.watchdogGroups.actionSlot, f0_local3, hideActionSlot, f0_local4 )
end

function actionSlotWatcher( f40_arg0, f40_arg1 )
	f40_arg0.parent.actionSlotDirty = true
end

function updateActionSlot( f41_arg0, f41_arg1 )
	f41_arg0.actionSlotDirty = false
	f41_arg0.actionSlot.activeSlot = 0
	f41_arg0.actionSlot.hasValidSlot = false
	for f41_local0 = 0, 3, 1 do
		if Game.GetPlayerActionSlotActive( f41_local0 ) or f41_arg0.actionSlot.predatorMaterial and Game.GetPlayerActionSlotMaterial( f41_local0 ) == f41_arg0.actionSlot.predatorMaterial then
			f41_arg0.actionSlot.activeSlot = f41_local0 + 1
			break
		end
	end
	for f41_local0 = 1, 4, 1 do
		f41_arg0.actionSlot.slots[f41_local0] = Game.GetPlayerActionSlotMaterial( f41_local0 - 1 )
	end
	for f41_local0 = 1, 4, 1 do
		if f41_arg0.actionSlot.slots[f41_local0] ~= nil then
			f41_arg0.actionSlot.hasValidSlot = true
			break
		end
	end
	if f41_arg0.actionSlot.hasValidSlot == false then
		hideActionSlot( f41_arg0, f0_local1 )
	else
		f0_local30( f41_arg0, f0_local2 )
		setHideActionSlotWatchdog( f41_arg0 )
	end
end

local f0_local46 = function ( f42_arg0 )
	f0_local14( f42_arg0.primaryWeaponText, "off", f0_local5 )
	f0_local14( f42_arg0.primaryWeaponAttachmentsText, "off", f0_local5 )
end

local f0_local47 = function ( f43_arg0 )
	f43_arg0.weaponWidgetDirty = false
	local f43_local0 = Game.GetPlayerWeaponName()
	local f43_local1 = Game.GetPlayerMaxClipAmmo()
	local f43_local2 = WeaponClipTypes[Game.GetPlayerWeaponClipType()]
	if f43_local2 == nil then
		f43_local2 = WeaponClipDefault
	end
	local f43_local3 = WeaponNameToLabel[f43_local0]
	if f43_arg0.weaponLabelTable ~= f43_local3 then
		if f43_arg0.weaponLabelTable ~= nil then
			f0_local14( f43_arg0.weaponLabelTable, "off", 0 )
		end
		f43_arg0.weaponLabelTable = f43_local3
	end
	local f43_local4 = Game.GetPlayerWeaponDisplayName()
	if f43_local4 == nil then
		f43_local4 = ""
	end
	local f43_local5 = AltWeaponLookup[f43_local4]
	if f43_local5 == nil then
		f43_local5 = Game.IsWeaponInAltMode()
		AltWeaponLookup[f43_local4] = f43_local5
	end
	local f43_local6 = Game.GetPlayerIsDualWielding()
	if f43_arg0.weaponName ~= f43_local0 or f43_local2 ~= f43_arg0.weaponClipType or f43_arg0.weaponClipSize ~= f43_local1 or f43_arg0.altWeapon ~= f43_local5 or f43_arg0.dualWielding ~= f43_local6 then
		f43_arg0.weaponName = f43_local0
		f43_arg0.hasExplosivesEquipped = ExplosiveLookup[f43_local0] ~= nil
		f43_arg0.hasAmmoStatus = DisableAmmoStatusLookup[f43_local0] == nil
		f43_arg0.hasAmmoAndBulletPips = DisableAmmoAndBulletPipsLookup[f43_local0] == nil
		f43_arg0.onlyShowGrenades = OnlyShowGrenadesInfoLookup[f43_local0] ~= nil
		f43_arg0.hasPrimaryWeapon = f43_local1 > 0
		f43_arg0.weaponClipType = f43_local2
		f43_arg0.weaponClipSize = f43_local1
		f43_arg0.primaryStockAmmo = Game.GetPlayerStockAmmo()
		f43_arg0.ammoStatus.state = nil
		f43_arg0.altWeapon = f43_local5
		f43_arg0.dualWielding = f43_local6
		f0_local39( f43_arg0, f43_local1 )
		if not f43_arg0.hasExplosivesEquipped and f43_arg0.hasPrimaryWeapon then
			f43_arg0.primaryWeaponText:setText( f43_local4 )
			local f43_local7 = Game.GetPlayerWeaponAttachmentsDisplayName()
			if f43_local7 == nil then
				f43_local7 = ""
			end
			f43_arg0.primaryWeaponAttachmentsText:setText( f43_local7 )
			if f43_arg0.pipImage ~= nil then
				f43_arg0.pipImage.watcherRightHand:registerEventHandler( "int_watch_alert", nil )
				if f43_arg0.pipImage.watcherLeftHand then
					f43_arg0.pipImage.watcherLeftHand:registerEventHandler( "int_watch_alert", nil )
				end
				f43_arg0.primaryWidget:removeElement( f43_arg0.pipImage )
				f43_arg0.pipImage = nil
			end
			if f43_arg0.weaponClipType ~= nil then
				if f43_arg0.pipGraphics[f43_arg0.weaponClipType] == nil then
					f43_arg0.pipGraphics[f43_arg0.weaponClipType] = {}
				end
				if f43_arg0.pipGraphics[f43_arg0.weaponClipType][f43_arg0.weaponClipSize] == nil then
					f43_arg0.pipImage = f0_local20( f43_arg0, f43_arg0.primaryWidget )
					f43_arg0.pipImage.weaponInfo = f43_arg0
				else
					f43_arg0.pipImage = f43_arg0.pipGraphics[f43_arg0.weaponClipType][f43_arg0.weaponClipSize]
					f43_arg0.primaryWidget:addElement( f43_arg0.pipImage )
				end
				f43_arg0.pipImage.watcherRightHand = f43_arg0.pipImage:getChildById( "pipImageWatcher_right" )
				f43_arg0.pipImage.watcherRightHand.parent = f43_arg0.pipImage
				f43_arg0.pipImage.watcherRightHand:setupUIIntWatch( "ClipAmmoRight" )
				f43_arg0.pipImage.watcherRightHand:registerEventHandler( "int_watch_alert", f0_local40 )
				if f43_arg0.dualWielding then
					f43_arg0.pipImage.watcherLeftHand = f43_arg0.pipImage:getChildById( "pipImageWatcher_left" )
					f43_arg0.pipImage.watcherLeftHand.parent = f43_arg0.pipImage
					f43_arg0.pipImage.watcherLeftHand:setupUIIntWatch( "ClipAmmoLeft" )
					f43_arg0.pipImage.watcherLeftHand:registerEventHandler( "int_watch_alert", f0_local40 )
				end
			end
		else
			f43_arg0.primaryWeaponText:setText( "" )
			f43_arg0.primaryWeaponAttachmentsText:setText( "" )
		end
		f43_arg0.watchdogGroups.primaryWeaponText = {}
		if not f43_arg0.hasExplosivesEquipped and f43_arg0.hasPrimaryWeapon then
			f0_local15( f43_arg0, f43_arg0.watchdogGroups.primaryWeaponText, f0_local5, f0_local46 )
			f0_local14( f43_arg0.primaryWeaponText, "on", f0_local2 )
			f0_local14( f43_arg0.primaryWeaponAttachmentsText, "on", f0_local2 )
		end
		f0_local41( f43_arg0 )
		hideAmmoStatus( f43_arg0, 0, true )
		if not f43_arg0.hasAmmoAndBulletPips then
			f0_local14( f43_arg0.primaryWeaponText, "right", 0 )
			f0_local14( f43_arg0.primaryWeaponAttachmentsText, "right", 0 )
			f0_local14( f43_arg0.primaryWeaponAmmoText, "off", 0 )
			f0_local14( f43_arg0.primaryWeaponAmmoText.emptySlot0, "off", 0 )
			f0_local14( f43_arg0.primaryWeaponAmmoText.emptySlot1, "off", 0 )
		else
			f0_local14( f43_arg0.primaryWeaponText, "left", 0 )
			f0_local14( f43_arg0.primaryWeaponAttachmentsText, "left", 0 )
		end
	elseif f43_arg0.updateGrenadeWidget == true then
		f0_local41( f43_arg0 )
		f43_arg0.updateGrenadeWidget = false
	end
	f0_local42( f43_arg0 )
	updateAmmoStatusMessage( f43_arg0 )
	if f43_arg0.primaryWidgetHidden then
		table.insert( f43_arg0.activeWidgets, f43_arg0.primaryWidget )
		f43_arg0.primaryWidgetHidden = false
	end
	f0_local29( f43_arg0, 0 )
	f0_local34( f43_arg0, f0_local2 )
	f0_local36( f43_arg0, f43_arg0.activeWidgets )
end

local f0_local48 = function ( f44_arg0, f44_arg1, f44_arg2 )
	if f44_arg0.compass.alpha ~= f44_arg1 then
		f44_arg0.compass:registerAnimationState( "fade", {
			alpha = f44_arg1
		} )
		f44_arg0.compass.tickertape:registerAnimationState( "fade", {
			alpha = f44_arg1
		} )
		f44_arg0.compass:animateToState( "fade", f44_arg2 )
		f44_arg0.compass.tickertape:animateToState( "fade", f44_arg2 )
		f44_arg0.compass.alpha = f44_arg1
	end
end

local f0_local49 = function ( f45_arg0 )
	if f45_arg0.dead then
		return 
	else
		f45_arg0.flashbangAllNormal = true
	end
end

local f0_local50 = function ( f46_arg0 )
	if f46_arg0.dead then
		return 
	elseif not f46_arg0.isActionSlotPreempted then
		f0_local30( f46_arg0, f0_local6, true )
	end
	if not f46_arg0.isHudStancePreemted then
		f0_local31( f46_arg0, f0_local6, true )
	end
	if not f46_arg0.isWeaponInfoPreempted then
		f0_local34( f46_arg0, f0_local6, true )
	end
	if not f46_arg0.isCompassPreempted then
		f0_local48( f46_arg0, 1, f0_local6 )
	end
	f46_arg0.watchdogGroups.flashbangAllNormal = {}
	f0_local15( f46_arg0, f46_arg0.watchdogGroups.flashbangAllNormal, f0_local6, f0_local49 )
end

local f0_local51 = function ( f47_arg0, f47_arg1, f47_arg2, f47_arg3 )
	f0_local35( f47_arg0, 0, true )
	hideActionSlot( f47_arg0, 0, true )
	hideAmmoStatus( f47_arg0, 0, true )
	if f47_arg2 then
		hideHudStance( f47_arg0, 0, true )
	end
	if f47_arg3 then
		f0_local48( f47_arg0, 0, 0 )
	end
end

local f0_local52 = function ( f48_arg0 )
	f0_local51( f48_arg0, nil, true, true )
	f48_arg0.watchdogGroups.flashbanged = {}
	f0_local15( f48_arg0, f48_arg0.watchdogGroups.flashbanged, f0_local7, f0_local50 )
end

local f0_local53 = function ( f49_arg0, f49_arg1 )
	local f49_local0 = f49_arg0.time
	f49_arg0.time = Game.GetTime()
	local f49_local1
	if f49_local0 ~= nil then
		f49_local1 = f49_arg0.time - f49_local0
		if not f49_local1 then
		
		else
			local f49_local2 = Game.GetPlayerHealth()
			local f49_local3 = Game.IsShowingGameMessages( 1 )
			local f49_local4 = Game.IsHudEnabled()
			local f49_local5 = Engine.GetDvarBool( "ammoCounterHide" )
			local f49_local6 = Engine.GetDvarBool( "actionSlotsHide" )
			local f49_local7 = Engine.GetDvarBool( "hud_showstance" )
			local f49_local8 = Engine.GetDvarBool( "compass" )
			local f49_local9 = Engine.GetDvarBool( "ui_hideCompassTicker" )
			local f49_local10 = Engine.GetDvarBool( "ui_hideGrenadeWidget" )
			local f49_local11 = Engine.GetDvarBool( "ui_hideAmmoStatus" )
			local f49_local12 = Game.GetJavelinActive()
			local f49_local13 = Game.PlayerReticleZoom()
			local f49_local14 = Game.PlayerOnTurret()
			if f49_local14 then
				f49_local14 = not Engine.GetDvarBool( "ui_ignoreTurretCompassHide" )
			end
			local f49_local15 = Game.CheckPlayerMiscInput()
			local f49_local16 = Game.GetOmnvar( "ui_display_hud_for_equipment_motion" )
			local f49_local17 = f49_local3
			local f49_local18
			if f49_local4 ~= false and f49_local6 ~= true and f49_local13 ~= true and f49_local14 ~= true then
				f49_local18 = false
			else
				f49_local18 = f49_local17 or true
			end
			local f49_local19 = f49_local3
			local f49_local20
			if f49_local4 then
				f49_local20 = not f49_local7
			else
				f49_local20 = f49_local19 or true
			end
			local f49_local21
			if f49_local4 then
				local f49_local22 = f49_local5
				local f49_local23 = f49_local14
				f49_local21 = f49_local12
			else
				f49_local21 = f49_local23 or f49_local22 or true
			end
			local f49_local24
			if f49_local4 ~= false and f49_local8 ~= false and f49_local9 ~= true and f49_local13 ~= true and f49_local14 ~= true then
				f49_local24 = false
			else
				f49_local24 = true
			end
			local f49_local25 = f49_local21 or f49_local11
			local f49_local26 = f49_local10
			local f49_local27 = false
			if not f49_arg0.displayHudForEquipmentMotion and f49_local16 then
				f49_arg0.displayHudForEquipmentMotion = true
				f49_arg0.weaponWidgetDirty = true
			end
			if f49_arg0.displayHudForEquipmentMotion and not f49_local16 then
				f49_arg0.displayHudForEquipmentMotion = false
			end
			if f49_local18 and not f49_arg0.isActionSlotPreempted and f49_arg0.actionSlotIsShowing == true then
				f49_arg0.actionSlotDirty = true
				hideActionSlot( f49_arg0, f0_local1, true )
			end
			if f49_local20 and not f49_arg0.isHudStancePreempted and f49_arg0.hudStanceIsShowing then
				f49_arg0.hudStanceDirty = true
				hideHudStance( f49_arg0, f0_local1, true )
			end
			if f49_local25 and not f49_arg0.isAmmoStatusPreempted then
				hideAmmoStatus( f49_arg0, f0_local1, true )
			elseif not f49_local25 and f49_arg0.isAmmoStatusPreempted then
				f49_local27 = true
			end
			if f49_local24 then
				f0_local48( f49_arg0, 0, f0_local1 )
			end
			if f49_local21 and not f49_arg0.isWeaponInfoPreempted and f49_arg0.weaponWidgetIsShowing then
				f49_arg0.weaponWidgetDirty = true
				f0_local35( f49_arg0, f0_local1, true )
			end
			if f49_arg0.isActionSlotPreempted and not f49_local18 and f49_arg0.weaponWidgetIsShowing then
				f49_arg0.weaponWidgetDirty = true
			end
			if f49_local26 ~= f49_arg0.isGrenadeWidgetPreempted then
				f49_arg0.weaponWidgetDirty = true
				f49_arg0.updateGrenadeWidget = true
			end
			f49_arg0.isCompassPreempted = f49_local24
			f49_arg0.isWeaponInfoPreempted = f49_local21
			f49_arg0.isActionSlotPreempted = f49_local18
			f49_arg0.isHudStancePreempted = f49_local20
			f49_arg0.isAmmoStatusPreempted = f49_local25
			f49_arg0.isGrenadeWidgetPreempted = f49_local26
			if f49_local2 > 0 and f49_arg0.weaponWidgetDirty and not f49_arg0.isWeaponInfoPreempted then
				f0_local47( f49_arg0 )
				f49_arg0.actionSlotDirty = true
			end
			if f49_local2 > 0 and f49_arg0.actionSlotDirty and not f49_arg0.isActionSlotPreempted then
				updateActionSlot( f49_arg0 )
			end
			if f49_local2 > 0 and f49_arg0.hudStanceDirty and not f49_arg0.isHudStancePreempted then
				f49_arg0.hudStanceDirty = false
				f0_local31( f49_arg0, f0_local2, false )
			end
			if f49_local2 > 0 and f49_local27 then
				updateAmmoStatusMessage( f49_arg0 )
			end
			if f49_arg0.miscInput ~= f49_local15 then
				f49_arg0.miscInput = f49_local15
				if f49_arg0.miscInput then
					f49_arg0.weaponWidgetDirty = true
					f49_arg0.actionSlotDirty = true
				end
			end
			f0_local37( f49_arg0, f49_local1 )
			if f49_local2 <= 0 and f49_arg0.dead == false then
				f49_arg0.dead = true
				f0_local35( f49_arg0, f0_local0, true )
				f0_local48( f49_arg0, 0, f0_local0 )
				hideActionSlot( f49_arg0, f0_local0, true )
				hideAmmoStatus( f49_arg0, f0_local0, true )
				if CoD.HideHints then
					CoD.HideHints( 0 )
				end
			end
			if f49_arg0.dead == false then
				local f49_local28 = Game.GetFlashbangedRemainingTime()
				if f49_local28 > 0 and f49_arg0.inFlashbangRoutine == false then
					f49_arg0.inFlashbangRoutine = true
					f49_arg0.flashbangAllNormal = false
					f0_local52( f49_arg0 )
				elseif f49_local28 == 0 and f49_arg0.inFlashbangRoutine == true then
					f49_arg0.inFlashbangRoutine = false
					f0_local36( f49_arg0, f49_arg0.activeWidgets )
					setHideActionSlotWatchdog( f49_arg0 )
				elseif f49_arg0.flashbangAllNormal and not f49_local24 then
					f0_local48( f49_arg0, Game.GetCompassAlpha(), 0 )
				end
			end
			f49_arg0:dispatchEventToChildren( f49_arg1 )
		end
	end
	f49_local1 = 0
end

local f0_local54 = function ( f50_arg0, f50_arg1, f50_arg2 )
	for f50_local0 = 1, #f50_arg1, 1 do
		local self = LUI.UIElement.new()
		self.id = f50_arg1[f50_local0] .. "_watch"
		self:setupUIIntWatch( f50_arg1[f50_local0] )
		self:registerEventHandler( "int_watch_alert", f50_arg2 )
		self.parent = f50_arg0
		f50_arg0:addElement( self )
	end
end

local f0_local55 = function ( f51_arg0, f51_arg1 )
	local f51_local0 = f51_arg0:getFirstDescendentById( "actionSlotId" )
	local f51_local1 = f51_arg0:getFirstDescendentById( "actionSlotDpadId" )
	local f51_local2 = f51_arg0:getFirstDescendentById( "actionSlotKeyboardId" )
	if f51_arg1.original.newValue == 1 then
		if not f51_local2.hidden then
			f51_local0.useKeyboard = false
			f51_local0.useDpad = true
			f51_local1.hidden = false
			f0_local14( f51_local1, "hud_on", 0 )
			f51_local2.hidden = true
			f0_local14( f51_local2, "hud_off", 0 )
		end
	elseif f51_arg1.original.newValue == 0 and not f51_local1.hidden then
		f51_local0.useKeyboard = true
		f51_local0.useDpad = false
		f51_local1.hidden = true
		f0_local14( f51_local1, "hud_off", 0 )
		f51_local2.hidden = false
		f0_local14( f51_local2, "hud_on", 0 )
	end
end

local f0_local56 = function ( f52_arg0, f52_arg1 )
	local f52_local0 = f52_arg0:getFirstDescendentById( "hudStanceIndicator" )
	if f52_arg1.original.newValue == 1 then
		f0_local14( f52_local0, "gamepad", 0 )
	elseif f52_arg1.original.newValue == 0 then
		f0_local14( f52_local0, "keyboard", 0 )
	end
end

local f0_local57 = function ( f53_arg0, f53_arg1 )
	local f53_local0 = nil
	f53_arg0.isNvgMode = f53_arg1.value
	if f53_arg0.isNvgMode then
		f53_local0 = "nvg_on"
	else
		f53_local0 = "on"
	end
	for f53_local1 = 1, #f53_arg0.nvgElements, 1 do
		f0_local14( f53_arg0.nvgElements[f53_local1], f53_local0, 0 )
	end
	if f53_arg0.pipImage ~= nil then
		f0_local40( f53_arg0.pipImage.watcherRightHand )
		if f53_arg0.dualWielding then
			f0_local40( f53_arg0.pipImage.watcherLeftHand )
		end
	end
end

local f0_local58 = function ( f54_arg0 )
	local f54_local0 = {}
	table.insert( f54_local0, f54_arg0:getFirstDescendentById( "grenadeOverlay" ) )
	table.insert( f54_local0, f54_arg0:getFirstDescendentById( "primaryWeaponAmmoTextEmpty0Image" ) )
	table.insert( f54_local0, f54_arg0:getFirstDescendentById( "primaryWeaponAmmoTextEmpty1Image" ) )
	table.insert( f54_local0, f54_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerOverlay" ) )
	table.insert( f54_local0, f54_arg0:getFirstDescendentById( "tickerTapeOverlayImage" ) )
	return f54_local0
end

local f0_local59 = function ( f55_arg0, f55_arg1 )
	if Game.GetPlayerHealth() > 0 and f55_arg0.grenadeIcons then
		local f55_local0 = 0
		if f55_arg1.newValue ~= nil then
			f55_local0 = CoD.HudStandards.grenadeMaxCount - f55_arg1.newValue + 1
			f55_arg0.lastGrenadeNewValue = f55_arg1.newValue
		elseif f55_arg0.lastGrenadeNewValue ~= nil then
			f55_local0 = CoD.HudStandards.grenadeMaxCount - f55_arg0.lastGrenadeNewValue + 1
			local f55_local1 = f55_arg0:getParent()
			f55_local1 = f55_local1:getParent()
			f55_local1 = f55_local1:getParent()
			f55_local1.weaponWidgetDirty = true
		else
			f55_local0 = 1
		end
		for f55_local1 = 1, CoD.HudStandards.grenadeMaxCount, 1 do
			if f55_local1 == f55_local0 then
				f55_arg0.grenadeIcons[f55_local1]:animateToState( "ready" )
			end
			if f55_local0 < f55_local1 then
				f55_arg0.grenadeIcons[f55_local1]:animateToState( "reserve" )
			end
			if f55_local1 < CoD.HudStandards.grenadeMaxCount then
				f55_arg0.grenadeIcons[f55_local1]:animateToState( "used" )
			else
				f55_arg0.grenadeIcons[f55_local1]:animateToState( "empty" )
			end
		end
	end
end

local f0_local60 = function ( f56_arg0 )
	f56_arg0.ammoStatus = {}
	f56_arg0.grenadeWidget = f56_arg0:getFirstDescendentById( "grenadeContainer" )
	f56_arg0.tacticalWidget = f56_arg0:getFirstDescendentById( "smokeGrenadeContainer" )
	f56_arg0.lethalWidget = f56_arg0:getFirstDescendentById( "fragGrenadeContainer" )
	f56_arg0.primaryWidget = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainer" )
	f56_arg0.primaryWeaponText = f56_arg0:getFirstDescendentById( "primaryWeaponText" )
	f56_arg0.primaryWeaponAttachmentsText = f56_arg0:getFirstDescendentById( "primaryWeaponAttachmentsText" )
	f56_arg0.primaryWeaponAmmoText = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoText" )
	f56_arg0.primaryWeaponAmmoText.emptySlot0 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoTextEmpty0" )
	f56_arg0.primaryWeaponAmmoText.emptySlot1 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoTextEmpty1" )
	f56_arg0.compass = f56_arg0:getFirstDescendentById( "compassHud" )
	f56_arg0.compass.tickertape = f56_arg0:getFirstDescendentById( "compassTickerTape" )
	f56_arg0.actionSlot = f56_arg0:getFirstDescendentById( "actionSlotContainer" )
	f56_arg0.ammoStatus.text = f56_arg0:getFirstDescendentById( "ammoStatusText" )
	f56_arg0.ammoStatus.backer = f56_arg0:getFirstDescendentById( "ammoStatusBacker" )
	f56_arg0.ammoStatus.glow = f56_arg0:getFirstDescendentById( "ammoStatusGlow" )
	f56_arg0.ammoStatus.scanlines = f56_arg0:getFirstDescendentById( "ammoStatusScanlines" )
	f56_arg0.hudStance = f56_arg0:getFirstDescendentById( "hudStanceContainer" )
	f56_arg0.watchdogGroups = {}
	f56_arg0.activeWidgets = {}
	f56_arg0.inactiveWidgets = {}
	f56_arg0.isNvgMode = false
	f56_arg0.primaryAmmoIsLow = false
	f56_arg0.clipInfoRightHand = {
		isLow = false,
		ammo = 0
	}
	f56_arg0.clipInfoLeftHand = {
		isLow = false,
		ammo = 0
	}
	f56_arg0.hasExplosivesEquipped = false
	f56_arg0.hasAmmoStatus = false
	f56_arg0.hasAmmoAndBulletPips = true
	f56_arg0.inFlashbangRoutine = false
	f56_arg0.weaponName = ""
	f56_arg0.dead = false
	f56_arg0.isActionSlotPreempted = false
	f56_arg0.isWeaponInfoPreempted = false
	f56_arg0.time = nil
	f56_arg0.weaponWidgetDirty = true
	f56_arg0.actionSlotDirty = true
	f56_arg0.weaponWidgetIsShowing = false
	f56_arg0.actionSlotIsShowing = false
	f56_arg0.actionSlot.activeSlot = 0
	f56_arg0.actionSlot.slots = {}
	f56_arg0.actionSlot.hasValidSlot = false
	f56_arg0.hudStanceIsShowing = true
	f56_arg0.ammoStatusIsShowing = false
	f56_arg0.displayHudForEquipmentMotion = false
	f56_arg0.flashbangAllNormal = true
	f56_arg0.nvgElements = f0_local58( f56_arg0 )
	f56_arg0:registerOmnvarHandler( "ui_nightvision", f0_local57 )
	f0_local57( f56_arg0, {
		name = "ui_nightvision",
		value = Game.GetOmnvar( "ui_nightvision" )
	} )
	f56_arg0:registerEventHandler( "nightVisionThermalOverwrite", f0_local57 )
	f56_arg0:registerOmnvarHandler( "ui_expireHUD", f0_local51 )
	f0_local8 = Engine.IsDevelopmentBuild()
	if f0_local8 and Engine.GetDvarBool( "cg_debugHUDVisibility" ) then
		Engine.SetDvarFloat( "hud_fade_compass", 0 )
	end
	f56_arg0.pipGraphics = {}
	f56_arg0.hasTactical = Game.GetPlayerSmokeWeapon() ~= "none"
	if f56_arg0.hasTactical == true then
		f56_arg0.tacticalWidget.grenadeIcons = {}
		for f56_local0 = 1, CoD.HudStandards.grenadeMaxCount, 1 do
			local f56_local3 = f56_arg0:getFirstDescendentById( "smokeGrenadeIcon" .. f56_local0 )
			f56_local3:setupUIBindImage( "FlashMaterial" )
			f56_arg0.tacticalWidget.grenadeIcons[f56_local0] = f56_local3
		end
		f56_arg0.tacticalWidget:setupUIIntWatch( "TacticalCount" )
		f56_arg0.tacticalWidget:registerEventHandler( "int_watch_alert", f0_local59 )
		f56_arg0.tacticalWidget:registerEventHandler( "grenade_pullback", f0_local59 )
	else
		f56_arg0.tacticalWidget:close()
		f56_arg0.tacticalWidget = nil
	end
	f56_arg0.hasLethal = Game.GetPlayerFragWeapon() ~= "none"
	if f56_arg0.hasLethal == true then
		f56_arg0.lethalWidget.grenadeIcons = {}
		for f56_local0 = 1, CoD.HudStandards.grenadeMaxCount, 1 do
			local f56_local3 = f56_arg0:getFirstDescendentById( "fragGrenadeIcon" .. f56_local0 )
			f56_local3:setupUIBindImage( "FragMaterial" )
			f56_arg0.lethalWidget.grenadeIcons[f56_local0] = f56_local3
		end
		f56_arg0.lethalWidget:setupUIIntWatch( "LethalCount" )
		f56_arg0.lethalWidget:registerEventHandler( "int_watch_alert", f0_local59 )
		f56_arg0.lethalWidget:registerEventHandler( "grenade_pullback", f0_local59 )
	else
		f56_arg0.lethalWidget:close()
		f56_arg0.lethalWidget = nil
	end
	f56_arg0:setupUIIntWatch( "PlayerReloading" )
	f56_arg0:registerEventHandler( "int_watch_alert", updateAmmoStatusMessage )
	f56_arg0:registerEventHandler( "force_update_ammo_status", updateAmmoStatusMessageForce )
	f0_local54( f56_arg0, {
		"ClipAmmoRight",
		"ClipAmmoLeft",
		"StockAmmo",
		"PlayerWeaponClass"
	}, f0_local43 )
	f0_local54( f56_arg0, {
		"ClipAmmoMax",
		"PlayerSwitchingWeapon"
	}, f0_local44 )
	f0_local54( f56_arg0, {
		"TacticalCount",
		"LethalCount"
	}, f0_local45 )
	f56_arg0.onRefresh = f0_local53
	f0_local54( f56_arg0, {
		"PlayerActionSlotActive"
	}, actionSlotWatcher )
	f56_arg0.actionSlot.parent = f56_arg0
	f56_arg0.actionSlot:registerOmnvarHandler( "ui_updateactionslot", actionSlotWatcher )
	f0_local41( f56_arg0 )
	f0_local29( f56_arg0, 0 )
	f0_local35( f56_arg0, 0, true )
	hideActionSlot( f56_arg0, 0, true )
	hideAmmoStatus( f56_arg0, 0, true )
	local f56_local3 = Engine.GetDvarString( "mapname" )
	if f56_local3 == "contingency" or f56_local3 == "invasion" then
		f56_arg0.actionSlot.predatorMaterial = RegisterMaterial( "dpad_killstreak_hellfire_missile" )
	else
		f56_arg0.actionSlot.predatorMaterial = nil
	end
	WeaponNameToLabel.colt45 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel45ACP" )
	WeaponNameToLabel.colt45_zak_killer = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel45ACP" )
	WeaponNameToLabel.beretta = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel9x19Luger" )
	WeaponNameToLabel.beretta_muzzle_nodynlight = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel9x19Luger" )
	WeaponNameToLabel.usp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel45ACP" )
	WeaponNameToLabel.usp_silencer = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel45ACP" )
	WeaponNameToLabel.deserteagle = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel50AE" )
	WeaponNameToLabel.deserteagle_cgoship = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel50AE" )
	WeaponNameToLabel.mp5 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel9x19Luger" )
	WeaponNameToLabel.mp5_muzzle_small = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel9x19Luger" )
	WeaponNameToLabel.mp5_silencer = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel9x19Luger" )
	WeaponNameToLabel.skorpion = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel32ACP" )
	WeaponNameToLabel.uzi = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel9x19Luger" )
	WeaponNameToLabel.uzi_sd = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel9x19Luger" )
	WeaponNameToLabel.ak74u = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel545x39" )
	WeaponNameToLabel.p90 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel57x28" )
	WeaponNameToLabel.p90_silencer = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel57x28" )
	WeaponNameToLabel.m4_grunt = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	WeaponNameToLabel.m4_grunt_muzzle_small = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	WeaponNameToLabel.m4_silencer = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	WeaponNameToLabel.m4_grenadier = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	WeaponNameToLabel.m4m203_silencer_reflex = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	WeaponNameToLabel.m16_basic = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	WeaponNameToLabel.m16_grenadier = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	WeaponNameToLabel.ak47 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x39R" )
	WeaponNameToLabel.ak47_muzzle_nodynlight = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x39R" )
	WeaponNameToLabel.ak47_grenadier = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x39R" )
	WeaponNameToLabel.g36c = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	WeaponNameToLabel.g3 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x39NATO" )
	WeaponNameToLabel.rpd = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt762x39" )
	WeaponNameToLabel.rpd_muzzle_small = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt762x39" )
	WeaponNameToLabel.rpd_muzzle_nodynlight = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt762x39" )
	WeaponNameToLabel.saw = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt556x45" )
	WeaponNameToLabel.saw_muzzle_small = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt556x45" )
	WeaponNameToLabel.saw_mg_setup = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt556x45" )
	WeaponNameToLabel.remington700 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m14_scoped = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m14_scoped_silencer = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m14_scoped_woodland = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m60e4 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt762x51" )
	WeaponNameToLabel.m60e4_muzzle_nodynlight = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt762x51" )
	WeaponNameToLabel.m14_scoped_silencer_woodland = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.dragunov = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x54R" )
	WeaponNameToLabel.m1014 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel12g" )
	WeaponNameToLabel.winchester1200 = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel12g" )
	WeaponNameToLabel.rpg = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelPG7G" )
	WeaponNameToLabel.rpg_jeepride = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelPG7G" )
	WeaponNameToLabel.rpg_player = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelPG7G" )
	WeaponNameToLabel.stinger = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelStinger" )
	WeaponNameToLabel.stinger_speedy = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelStinger" )
	WeaponNameToLabel.javelin = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelJavelin" )
	WeaponNameToLabel.javelin_objective = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelJavelin" )
	WeaponNameToLabel.smoke_grenade_american = f56_arg0:getFirstDescendentById( "smokeGrenadeIconLabelSMK" )
	WeaponNameToLabel.flash_grenade = f56_arg0:getFirstDescendentById( "smokeGrenadeIconLabelFLA" )
	WeaponNameToLabel.barrett = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m40a3_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m40a3_acog_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.barret_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel50BMG" )
	WeaponNameToLabel.barret_acog_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel50BMG" )
	WeaponNameToLabel.m60e4_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt762x51" )
	WeaponNameToLabel.m60e4_grip_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt762x51" )
	WeaponNameToLabel.m60e4_acog_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt762x51" )
	WeaponNameToLabel.m60e4_reflex_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabelBelt762x51" )
	WeaponNameToLabel.m14_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m14_gl_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m14_acog_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m14_reflex_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.m14_silencer_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x51NATO" )
	WeaponNameToLabel.mp44_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel762x33" )
	WeaponNameToLabel.m4_acog_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	WeaponNameToLabel.m4_reflex_mp = f56_arg0:getFirstDescendentById( "primaryWeaponAmmoContainerLabel556x45NATO" )
	local f56_local4 = f56_arg0:getFirstDescendentById( "actionSlotId" )
	f56_local4:processEvent( {
		name = "init"
	} )
	f56_arg0:onRefresh( {} )
end

local f0_local61 = function ( f57_arg0, f57_arg1 )
	f57_arg0:onRefresh( f57_arg1 )
end

local f0_local62 = function ( f58_arg0 )
	local f58_local0 = {}
	for f58_local1 = CoD.HudStandards.grenadeMaxCount, 1, -1 do
		table.insert( f58_local0, {
			type = "UIImage",
			id = f58_arg0 .. "Icon" .. f58_local1,
			states = {
				default = {
					topAnchor = true,
					rightAnchor = true,
					right = 5 - (CoD.HudStandards.grenadeIconSize + CoD.HudStandards.grenadeIconSpacing) * (CoD.HudStandards.grenadeMaxCount - f58_local1),
					width = CoD.HudStandards.grenadeIconSize,
					height = CoD.HudStandards.grenadeIconSize,
					material = nil
				},
				ready = {
					alpha = CoD.HudStandards.iconAlpha,
					red = 1,
					green = 1,
					blue = 1
				},
				reserve = {
					alpha = CoD.HudStandards.iconAlpha,
					red = 0.6,
					green = 0.6,
					blue = 0.6
				},
				used = {
					alpha = 0,
					red = 1,
					green = 1,
					blue = 1
				},
				empty = {
					alpha = CoD.HudStandards.iconAlpha,
					red = 0.4,
					green = 0.2,
					blue = 0.2
				}
			}
		} )
	end
	return f58_local0
end

local f0_local63 = function ( f59_arg0, f59_arg1 )
	return {
		type = "UIElement",
		id = f59_arg0 .. "Container",
		states = {
			default = {
				topAnchor = true,
				rightAnchor = true,
				bottomAnchor = true,
				right = -CoD.HudStandards.grenadeGroupWidth * (f59_arg1 - 1),
				width = CoD.HudStandards.grenadeGroupWidth,
				alpha = 1
			},
			on = {
				alpha = 1
			},
			off = {
				alpha = 0
			}
		},
		children = f0_local62( f59_arg0 )
	}
end

local f0_local64 = function ()
	local f60_local0 = {
		type = "UIElement",
		id = "grenadeContainer",
		states = {
			default = {
				rightAnchor = true,
				bottomAnchor = true,
				width = CoD.HudStandards.weaponBoxWidth,
				height = CoD.HudStandards.grenadeBoxHeight,
				alpha = 1
			},
			on = {
				alpha = 1
			},
			off = {
				alpha = 0
			}
		}
	}
	local f60_local1 = {}
	local f60_local2 = {
		type = "UIImage",
		id = "grenadeBlur",
		states = {
			default = {
				leftAnchor = true,
				rightAnchor = true,
				bottomAnchor = true,
				bottom = -CoD.HudStandards.grenadeBoxHeight,
				height = -60,
				material = RegisterMaterial( "h1_hud_weapwidget_blur" ),
				alpha = CoD.HudStandards.blurAlpha
			}
		}
	}
	local f60_local3 = {
		type = "UIImage",
		id = "grenadeOverlay",
		states = {
			default = {
				leftAnchor = true,
				rightAnchor = true,
				bottomAnchor = true,
				bottom = CoD.HudStandards.grenadeBoxHeight,
				height = 60
			},
			on = {
				material = RegisterMaterial( "h1_hud_weapwidget_border_bottom" ),
				color = CoD.HudStandards.overlayTint,
				alpha = CoD.HudStandards.overlayAlpha
			},
			nvg_on = {
				material = RegisterMaterial( "h1_hud_weapwidget_border_nightvision_bottom" ),
				color = CoD.HudStandards.nvgOverlayTint,
				alpha = CoD.HudStandards.overlayAlphaNVG
			}
		}
	}
	local f60_local4 = f0_local63( "fragGrenade", 1 )
	local f60_local5 = f0_local63( "smokeGrenade", 2 )
	f60_local0.children = f60_local2
	return f60_local0
end

local f0_local65 = function ()
	local f61_local0 = "h1_hud_weapwidget_nullnum"
	local f61_local1 = "h1_hud_weapwidget_nullnum_nightvision"
	local f61_local2 = -31.66
	local f61_local3 = -55.99
	local f61_local4 = -6.67
	if Engine.GetCurrentLanguage() == CoD.Language.Russian or Engine.GetCurrentLanguage() == CoD.Language.Polish then
		f61_local0 = "h1_hud_weapwidget_nullnum_nimbus"
		f61_local1 = "h1_hud_weapwidget_nullnum_nightvision_nimbus"
		f61_local2 = -31.66
		f61_local3 = -55.99
	end
	local f61_local5 = {
		type = "UIElement",
		id = "primaryWeaponAmmoContainer",
		states = {
			default = {
				bottomAnchor = true,
				rightAnchor = true,
				bottom = -CoD.HudStandards.grenadeBoxHeight,
				width = CoD.HudStandards.weaponBoxWidth,
				height = CoD.HudStandards.weaponBoxHeight
			},
			on = {
				alpha = 1
			},
			off = {
				alpha = 0
			}
		},
		children = {
			{
				type = "UIImage",
				id = "primaryWeaponAmmoContainerBlur",
				states = {
					default = {
						leftAnchor = true,
						topAnchor = true,
						rightAnchor = true,
						bottomAnchor = true,
						material = RegisterMaterial( "h1_hud_weapwidget_blur" ),
						alpha = CoD.HudStandards.blurAlpha
					}
				}
			},
			{
				type = "UIImage",
				id = "primaryWeaponAmmoContainerOverlay",
				states = {
					default = {
						leftAnchor = true,
						topAnchor = true,
						rightAnchor = true,
						bottomAnchor = true
					},
					on = {
						material = RegisterMaterial( "h1_hud_weapwidget_border" ),
						color = CoD.HudStandards.overlayTint,
						alpha = CoD.HudStandards.overlayAlpha
					},
					nvg_on = {
						material = RegisterMaterial( "h1_hud_weapwidget_border_nightvision" ),
						color = CoD.HudStandards.nvgOverlayTint,
						alpha = CoD.HudStandards.overlayAlphaNVG
					}
				}
			},
			{
				type = "UIText",
				id = "primaryWeaponAmmoText",
				states = {
					default = {
						bottomAnchor = true,
						rightAnchor = true,
						bottom = -0.01,
						right = -5.33,
						width = 128,
						height = CoD.TextSettings.SP_HudAmmoCounterFont.Height,
						font = CoD.TextSettings.SP_HudAmmoCounterFont.Font,
						red = 1,
						green = 1,
						blue = 1,
						alpha = 1
					},
					on = {
						red = 1,
						green = 1,
						blue = 1,
						alpha = 1
					},
					off = {
						alpha = 0
					},
					low = f0_local12
				},
				properties = {
					text = "primaryWeaponAmmoText",
					textStyle = CoD.TextStyle.Shadowed
				}
			},
			{
				type = "UIElement",
				id = "primaryWeaponAmmoTextEmpty0",
				states = {
					default = {
						bottomAnchor = true,
						rightAnchor = true,
						bottom = f61_local4,
						right = f61_local2,
						width = 21.33,
						height = 42.66,
						alpha = 1
					},
					on = {
						alpha = 1
					},
					off = {
						alpha = 0
					}
				},
				children = {
					{
						type = "UIImage",
						id = "primaryWeaponAmmoTextEmpty0Image",
						states = {
							default = {
								bottomAnchor = true,
								rightAnchor = true,
								width = 21.33,
								height = 42.66
							},
							on = {
								material = RegisterMaterial( f61_local0 ),
								color = CoD.HudStandards.overlayTint,
								alpha = CoD.HudStandards.overlayAlpha * 0.65
							},
							nvg_on = {
								material = RegisterMaterial( f61_local1 ),
								color = CoD.HudStandards.nvgOverlayTint,
								alpha = CoD.HudStandards.overlayAlphaNVG * 0.5
							}
						}
					}
				}
			},
			{
				type = "UIElement",
				id = "primaryWeaponAmmoTextEmpty1",
				states = {
					default = {
						bottomAnchor = true,
						rightAnchor = true,
						bottom = f61_local4,
						right = f61_local3,
						width = 21.33,
						height = 42.66,
						alpha = 1
					},
					on = {
						alpha = 1
					},
					off = {
						alpha = 0
					}
				},
				children = {
					{
						type = "UIImage",
						id = "primaryWeaponAmmoTextEmpty1Image",
						states = {
							default = {
								bottomAnchor = true,
								rightAnchor = true,
								width = 21.33,
								height = 42.66
							},
							on = {
								material = RegisterMaterial( f61_local0 ),
								color = CoD.HudStandards.overlayTint,
								alpha = CoD.HudStandards.overlayAlpha * 0.65
							},
							nvg_on = {
								material = RegisterMaterial( f61_local1 ),
								color = CoD.HudStandards.nvgOverlayTint,
								alpha = CoD.HudStandards.overlayAlphaNVG * 0.5
							}
						}
					}
				}
			},
			{
				type = "UIText",
				id = "primaryWeaponText",
				states = {
					default = {
						alignment = LUI.Alignment.Right,
						bottom = -28,
						right = -6,
						rightAnchor = true,
						bottomAnchor = true,
						width = 350,
						height = CoD.TextSettings.SP_HudWeaponNameFont.Height,
						font = CoD.TextSettings.SP_HudWeaponNameFont.Font,
						alpha = 1
					},
					on = {
						alpha = 1
					},
					left = {
						alignment = LUI.Alignment.Right,
						bottom = -28,
						right = -6.33,
						rightAnchor = true,
						bottomAnchor = true,
						width = 350,
						height = CoD.TextSettings.SP_HudWeaponNameFont.Height,
						font = CoD.TextSettings.SP_HudWeaponNameFont.Font
					},
					right = {
						alignment = LUI.Alignment.Right,
						bottom = -28,
						right = -0.53,
						rightAnchor = true,
						bottomAnchor = true,
						width = 350,
						height = CoD.TextSettings.SP_HudWeaponNameFont.Height,
						font = CoD.TextSettings.SP_HudWeaponNameFont.Font,
						alpha = 1
					},
					off = {
						alpha = 0
					}
				},
				properties = {
					text = "primaryWeaponText",
					textStyle = CoD.TextStyle.ShadowedMore
				}
			},
			{
				type = "UIText",
				id = "primaryWeaponAttachmentsText",
				states = {
					default = {
						alignment = LUI.Alignment.Right,
						color = Colors.grey_84,
						bottom = -42.66,
						right = -6.33,
						rightAnchor = true,
						bottomAnchor = true,
						width = 256,
						height = CoD.TextSettings.SP_HudWeaponAttachmentsFont.Height,
						font = CoD.TextSettings.SP_HudWeaponAttachmentsFont.Font,
						alpha = 0.85
					},
					on = {
						alpha = 1
					},
					left = {
						bottom = -42.66,
						right = -6.33,
						rightAnchor = true,
						bottomAnchor = true,
						width = 256,
						height = CoD.TextSettings.SP_HudWeaponAttachmentsFont.Height
					},
					right = {
						bottom = -42.66,
						right = -6.33,
						rightAnchor = true,
						bottomAnchor = true,
						width = 256,
						height = CoD.TextSettings.SP_HudWeaponAttachmentsFont.Height
					},
					off = {
						alpha = 0
					}
				},
				properties = {
					text = "primaryWeaponAttachmentsText",
					textStyle = CoD.TextStyle.ShadowedMore
				}
			}
		}
	}
	local f61_local6 = {
		{
			id = "primaryWeaponAmmoContainerLabel12g",
			material = "h1_hud_weapwidget_firearms_labels_12g",
			material_nvg = "h1_hud_weapwidget_firearms_labels_12g_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel9x19Luger",
			material = "h1_hud_weapwidget_firearms_labels_9x19l",
			material_nvg = "h1_hud_weapwidget_firearms_labels_9x19l_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel45ACP",
			material = "h1_hud_weapwidget_firearms_labels_45acp",
			material_nvg = "h1_hud_weapwidget_firearms_labels_45acp_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabelJavelin",
			material = "h1_hud_weapwidget_firearms_labels_javelin",
			material_nvg = "h1_hud_weapwidget_firearms_labels_javelin_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabelStinger",
			material = "h1_hud_weapwidget_firearms_labels_stinger",
			material_nvg = "h1_hud_weapwidget_firearms_labels_stinger_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabelPG7G",
			material = "h1_hud_weapwidget_firearms_labels_pg7g",
			material_nvg = "h1_hud_weapwidget_firearms_labels_pg7g_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabelBelt556x45",
			material = "h1_hud_weapwidget_firearms_labels_b556x45",
			material_nvg = "h1_hud_weapwidget_firearms_labels_b556x45_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabelBelt762x51",
			material = "h1_hud_weapwidget_firearms_labels_b762x51",
			material_nvg = "h1_hud_weapwidget_firearms_labels_b762x51_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabelBelt762x39",
			material = "h1_hud_weapwidget_firearms_labels_b762x39",
			material_nvg = "h1_hud_weapwidget_firearms_labels_b762x39_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel762x54R",
			material = "h1_hud_weapwidget_firearms_labels_762x54r",
			material_nvg = "h1_hud_weapwidget_firearms_labels_762x54r_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel762x39R",
			material = "h1_hud_weapwidget_firearms_labels_762x39r",
			material_nvg = "h1_hud_weapwidget_firearms_labels_762x39r_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel762x33",
			material = "h1_hud_weapwidget_firearms_labels_762x33",
			material_nvg = "h1_hud_weapwidget_firearms_labels_762x33_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel762x39NATO",
			material = "h1_hud_weapwidget_firearms_labels_762x39n",
			material_nvg = "h1_hud_weapwidget_firearms_labels_762x39n_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel762x51NATO",
			material = "h1_hud_weapwidget_firearms_labels_762x51n",
			material_nvg = "h1_hud_weapwidget_firearms_labels_762x51n_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel556x45NATO",
			material = "h1_hud_weapwidget_firearms_labels_556x45n",
			material_nvg = "h1_hud_weapwidget_firearms_labels_556x45n_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel57x28",
			material = "h1_hud_weapwidget_firearms_labels_57x28",
			material_nvg = "h1_hud_weapwidget_firearms_labels_57x28_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel545x39",
			material = "h1_hud_weapwidget_firearms_labels_545x39",
			material_nvg = "h1_hud_weapwidget_firearms_labels_545x39_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel50BMG",
			material = "h1_hud_weapwidget_firearms_labels_50bmg",
			material_nvg = "h1_hud_weapwidget_firearms_labels_50bmg_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel50AE",
			material = "h1_hud_weapwidget_firearms_labels_50ae",
			material_nvg = "h1_hud_weapwidget_firearms_labels_50ae_nightvision"
		},
		{
			id = "primaryWeaponAmmoContainerLabel32ACP",
			material = "h1_hud_weapwidget_firearms_labels_32acp",
			material_nvg = "h1_hud_weapwidget_firearms_labels_32acp_nightvision"
		}
	}
	for f61_local7 = 1, #f61_local6, 1 do
		table.insert( f61_local5.children, {
			id = f61_local6[f61_local7].id,
			type = "UIElement",
			states = {
				default = {
					bottomAnchor = true,
					rightAnchor = true,
					alpha = 0
				},
				on = {
					alpha = 1
				},
				off = {
					alpha = 0
				}
			},
			children = {
				{
					id = f61_local6[f61_local7].id .. "Image",
					type = "UIImage",
					states = {
						default = {
							bottomAnchor = true,
							rightAnchor = true,
							width = f0_local11,
							height = f0_local10,
							bottom = CoD.HudStandards.labelsYpos
						},
						on = {
							color = CoD.HudStandards.overlayTint,
							alpha = CoD.HudStandards.overlayAlpha
						},
						nvg_on = {
							color = CoD.HudStandards.nvgOverlayTint,
							alpha = CoD.HudStandards.overlayAlphaNVG
						}
					}
				}
			}
		} )
	end
	return f61_local5
end

local f0_local66 = function ()
	local f62_local0 = {
		type = "UIElement",
		id = "weaponInfoPanel",
		states = {
			default = {
				bottomAnchor = true,
				rightAnchor = true,
				bottom = -CoD.HudStandards.borderY,
				right = -CoD.HudStandards.borderX
			}
		}
	}
	local f62_local1 = {}
	local f62_local2 = f0_local64()
	local f62_local3 = f0_local65()
	f62_local0.children = f62_local2
	return f62_local0
end

local f0_local67 = function ()
	return {
		type = "UIElement",
		id = "ammoStatusContainer",
		states = {
			default = {
				bottomAnchor = true,
				bottom = -575
			}
		},
		children = {
			{
				type = "UIImage",
				id = "ammoStatusBacker",
				states = {
					default = {
						width = 142.21,
						height = 71.1,
						material = RegisterMaterial( "h1_hud_ammo_status_bg" ),
						red = 1,
						green = 1,
						blue = 1,
						alpha = 0.5
					},
					on = {
						alpha = 0.5
					},
					reload = {
						red = 1,
						green = 1,
						blue = 1,
						alpha = 0.5
					},
					out = {
						alpha = 0.75,
						red = 1,
						green = 0.14,
						blue = 0.18
					},
					low = {
						alpha = 0.5,
						color = Colors.hud_low_ammo_yellow
					},
					off = {
						alpha = 0
					}
				}
			},
			{
				type = "UIText",
				id = "ammoStatusText",
				states = {
					default = {
						alignment = LUI.Alignment.Center,
						width = 256,
						bottom = 9.2,
						height = CoD.TextSettings.SP_HudAmmoStatusText.Height,
						font = CoD.TextSettings.SP_HudAmmoStatusText.Font,
						alpha = 1
					},
					on = {
						alpha = 1
					},
					reload = {
						red = 1,
						green = 1,
						blue = 1,
						alpha = 1
					},
					out = {
						alpha = 1,
						red = 1,
						green = 0.14,
						blue = 0.18
					},
					low = {
						alpha = 1,
						color = Colors.hud_low_ammo_yellow
					},
					off = {
						alpha = 0
					}
				},
				properties = {
					text = "ammoStatusText",
					textStyle = CoD.TextStyle.ShadowedMore
				}
			},
			{
				type = "UIImage",
				id = "ammoStatusGlow",
				states = {
					default = {
						width = 142.21,
						height = 71.1,
						material = RegisterMaterial( "h1_hud_ammo_status_glow" ),
						alpha = 0
					},
					reload = {
						red = 1,
						green = 1,
						blue = 1,
						alpha = 0.4
					},
					out = {
						red = 1,
						green = 0.14,
						blue = 0.18,
						alpha = 0.4
					},
					low = {
						alpha = 0.4,
						color = Colors.hud_low_ammo_yellow
					},
					off = {
						alpha = 0
					}
				}
			},
			{
				type = "UIImage",
				id = "ammoStatusScanlines",
				states = {
					default = {
						width = 284.42,
						height = 71.1,
						material = RegisterMaterial( "h1_hud_ammo_status_scanlines" ),
						alpha = 0
					},
					reload = {
						red = 1,
						green = 1,
						blue = 1,
						alpha = 1
					},
					out = {
						red = 1,
						green = 0.14,
						blue = 0.18,
						alpha = 1
					},
					low = {
						alpha = 1,
						color = Colors.hud_low_ammo_yellow
					},
					off = {
						alpha = 0
					}
				}
			}
		}
	}
end

local f0_local68 = function ()
	return {
		type = "UIElement",
		id = "actionSlotContainer",
		states = {
			default = {
				leftAnchor = true,
				topAnchor = false,
				rightAnchor = false,
				bottomAnchor = true,
				top = 0,
				left = -50,
				width = 128,
				height = 20,
				alpha = 1
			},
			on = {
				alpha = 1
			},
			off = {
				alpha = 0
			}
		},
		handlers = {
			isGamepadEnabled = f0_local55
		},
		children = {
			{
				type = "UIIntWatch",
				properties = {
					dataSource = "IsGamepadEnabled"
				},
				handlers = {
					int_watch_alert = MBh.EmitEventToParent( "isGamepadEnabled", {
						saveOriginal = true
					} )
				}
			},
			{
				type = "actionSlotDef"
			}
		}
	}
end

local f0_local69 = function ()
	return {
		type = "UIElement",
		id = "hudStanceContainer",
		states = {
			default = {
				topAnchor = true,
				leftAnchor = true,
				rightAnchor = true,
				bottomAnchor = true
			},
			on = {
				alpha = 1
			},
			off = {
				alpha = 0
			}
		},
		handlers = {
			isGamepadEnabled = f0_local56
		},
		children = {
			{
				type = "UIIntWatch",
				properties = {
					dataSource = "IsGamepadEnabled"
				},
				handlers = {
					int_watch_alert = MBh.EmitEventToParent( "isGamepadEnabled", {
						saveOriginal = true
					} )
				}
			},
			{
				type = "hudStanceIndicatorDef"
			}
		}
	}
end

LUI.MenuBuilder.registerDef( "WeaponInfoHudDef", function ()
	return {
		type = "UIElement",
		id = "weaponInfoHud",
		states = {
			default = {
				topAnchor = true,
				leftAnchor = true,
				rightAnchor = true,
				bottomAnchor = true
			},
			hud_on = {
				alpha = 1
			},
			hud_off = {
				alpha = 0
			}
		},
		handlers = {
			weapon_info_refresh = f0_local61,
			init = f0_local60
		},
		properties = {},
		children = {
			{
				type = "UITimer",
				id = "weaponInfoRefreshTimer",
				properties = {
					event = "weapon_info_refresh",
					group = "hud",
					interval = 10
				}
			},
			f0_local69(),
			f0_local66(),
			f0_local68(),
			f0_local67(),
			{
				type = "CompassHudDef"
			}
		}
	}
end )
LockTable( _M )
