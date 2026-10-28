local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
dangerclose_wakeup = {
	{
		keyTime = 0,
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
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( dangerclose_wakeup )
LockTable( _M )
