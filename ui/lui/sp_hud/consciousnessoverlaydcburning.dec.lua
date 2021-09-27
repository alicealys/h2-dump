local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
chopper_impact = {
	{
		keyTime = 0.05,
		keyTimeAdditive = false,
		durationOverride = 7.15,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.static_vignette_custom
	}
}
chopper_crash = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 0,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.InstantBlack
	},
	{
		keyTime = 0.25,
		keyTimeAdditive = false,
		durationOverride = 1.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Close_to_Vignette
	},
	{
		keyTime = 8.5,
		keyTimeAdditive = false,
		durationOverride = 5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
wake_after_crash = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 1.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Close_to_Vignette
	},
	{
		keyTime = 1.5,
		keyTimeAdditive = false,
		durationOverride = 2.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Close_to_Vignette
	},
	{
		keyTime = 10,
		keyTimeAdditive = false,
		durationOverride = 8,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	},
	{
		keyTime = 99,
		keyTimeAdditive = false,
		durationOverride = 1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_vignette
	}
}
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( chopper_impact )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( chopper_crash )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( wake_after_crash )
LockTable( _M )
