local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
player_killed = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 2,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keyTime = 11,
		keyTimeAdditive = false,
		durationOverride = 99,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	},
	{
		keyTime = 60,
		keyTimeAdditive = false,
		durationOverride = 1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	}
}
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( player_killed )
LockTable( _M )
