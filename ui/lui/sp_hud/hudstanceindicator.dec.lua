local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = 1000
f0_local1 = 1000
f0_local2 = 50
local f0_local3 = 0
local f0_local4 = 1
local f0_local5 = 2
local f0_local6 = 3
local f0_local7 = nil
local f0_local8 = function ( f1_arg0 )
	f1_arg0.stanceImage:animateToState( "off", 0 )
	f1_arg0.stanceImage.timeToFade = 0
end

local f0_local9 = function ( f2_arg0, f2_arg1 )
	if f0_local7 == nil then
		f0_local7 = Engine.IsDevelopmentBuild()
	end
	if f2_arg0.stanceImage == nil then
		f2_arg0.stanceImage = f2_arg0:getChildById( "stanceImage" )
	end
	local f2_local0 = Game.GetPlayerStance()
	local f2_local1 = Engine.GetDvarBool( "hud_showStanceCarry" )
	if f2_local1 then
		f2_local0 = f0_local6
	end
	if f2_arg0.stanceImage.current_stance == f2_local0 then
		if f2_arg0.stanceImage.timeToFade > 0 then
			f2_arg0.stanceImage.timeToFade = f2_arg0.stanceImage.timeToFade - f2_arg1.timeElapsed
			if f2_arg0.stanceImage.timeToFade <= 0 and (not f0_local7 or not Engine.GetDvarBool( "cg_debugHUDVisibility" )) then
				f2_arg0.stanceImage:animateToState( "off", f0_local1 )
			end
		end
	else
		if f2_local0 == f0_local3 then
			f2_arg0.stanceImage:animateToState( "standing", 0 )
			f2_arg0.stanceImage.timeToFade = f0_local0
		elseif f2_local0 == f0_local4 then
			f2_arg0.stanceImage:animateToState( "crouched", 0 )
			f2_arg0.stanceImage.timeToFade = 0
		elseif f2_local0 == f0_local5 then
			f2_arg0.stanceImage:animateToState( "prone", 0 )
			f2_arg0.stanceImage.timeToFade = 0
		elseif f2_local0 == f0_local6 then
			f2_arg0.stanceImage:animateToState( "carry", 0 )
			f2_arg0.stanceImage.timeToFade = 0
		end
		f2_arg0.stanceImage.isCarryOverride = f2_local1
		f2_arg0.stanceImage.current_stance = f2_local0
	end
end

local f0_local10 = function ()
	return {
		type = "UIImage",
		id = "stanceImage",
		states = {
			default = {
				rightAnchor = true,
				bottomAnchor = true,
				leftAnchor = true,
				topAnchor = true,
				material = RegisterMaterial( "stance_stand" ),
				alpha = 0
			},
			off = {
				alpha = 0
			},
			standing = {
				material = RegisterMaterial( "stance_stand" ),
				alpha = 0.9
			},
			crouched = {
				material = RegisterMaterial( "stance_crouch" ),
				alpha = 0.9
			},
			prone = {
				material = RegisterMaterial( "stance_prone" ),
				alpha = 0.9
			},
			carry = {
				material = RegisterMaterial( "stance_carry" ),
				alpha = 0.9
			}
		}
	}
end

LUI.MenuBuilder.registerDef( "hudStanceIndicatorDef", function ()
	local f4_local0 = {
		type = "UIElement",
		id = "hudStanceIndicator",
		states = {
			default = {
				bottomAnchor = true,
				leftAnchor = true,
				bottom = -CoD.HudStandards.borderY + 2.67,
				left = 200,
				width = 63.99,
				height = 32,
				alpha = CoD.iconAlpha
			},
			gamepad = {
				bottomAnchor = true,
				leftAnchor = true,
				bottom = -CoD.HudStandards.borderY + 2.67,
				left = 136,
				width = 63.99,
				height = 32
			},
			keyboard = {
				bottomAnchor = true,
				leftAnchor = true,
				bottom = -CoD.HudStandards.borderY + 2.67,
				left = 200,
				width = 63.99,
				height = 32
			}
		},
		handlers = {
			omnvar_update = {
				ui_expireHUD = f0_local8
			},
			weapon_info_refresh = f0_local9
		}
	}
	local f4_local1 = {}
	f4_local0.children = f0_local10()
	return f4_local0
end )
LockTable( _M )
