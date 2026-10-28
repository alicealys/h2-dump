local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
roadkill_intro = {
	{
		keyTime = 0,
		keyTimeAdditive = true,
		durationOverride = 2,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Close_to_Vignette
	},
	{
		keyTime = 0.5,
		keyTimeAdditive = true,
		durationOverride = 10,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	},
	{
		keyTime = 99,
		keyTimeAdditive = true,
		durationOverride = 4.3,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	}
}
roadkill_crash = {
	{
		keyTime = 0,
		keyTimeAdditive = true,
		durationOverride = 1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Close_to_Vignette
	},
	{
		keyTime = 6.5,
		keyTimeAdditive = true,
		durationOverride = 8,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
roadkill_closeeyes = {
	{
		keyTime = 0,
		keyTimeAdditive = true,
		durationOverride = 0.75,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keyTime = 99,
		keyTimeAdditive = true,
		durationOverride = 4.3,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_Close
	}
}
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( roadkill_intro )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( roadkill_crash )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( roadkill_closeeyes )
LockTable( _M )
