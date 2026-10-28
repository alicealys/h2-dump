local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
player_punched_by_price = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 0.75,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.InstantBlack
	},
	{
		keyTime = 0.75,
		keyTimeAdditive = false,
		durationOverride = 0.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Close_to_Vignette
	},
	{
		keyTime = 2.25,
		keyTimeAdditive = false,
		durationOverride = 0.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_Close
	},
	{
		keyTime = 2.75,
		keyTimeAdditive = false,
		durationOverride = 1.25,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Close_to_Vignette
	},
	{
		keyTime = 3.4,
		keyTimeAdditive = false,
		durationOverride = 4,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
roof_collapse_wakeup = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 0.05,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.InstantVignette
	},
	{
		keyTime = 17,
		keyTimeAdditive = false,
		durationOverride = 9,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( player_punched_by_price )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( roof_collapse_wakeup )
LockTable( _M )
