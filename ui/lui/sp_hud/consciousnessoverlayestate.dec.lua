local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
player_wakeup_drag = {
	{
		keytime = 0,
		keyTimeAdditive = false,
		durationOverride = 0.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.black_overlay
	},
	{
		keytime = 0.5,
		keyTimeAdditive = false,
		durationOverride = 12,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	},
	{
		keytime = 99,
		keyTimeAdditive = false,
		durationOverride = 0.1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.ClearEffect
	}
}
ghost_drag_player_unconscious = {
	{
		keytime = 4.65,
		keyTimeAdditive = false,
		durationOverride = 3,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keytime = 99,
		keyTimeAdditive = false,
		durationOverride = 0.1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
player_wakeup_pavelow = {
	{
		keytime = 0,
		keyTimeAdditive = false,
		durationOverride = 0.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.black_overlay
	},
	{
		keytime = 0.5,
		keyTimeAdditive = false,
		durationOverride = 15,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	},
	{
		keytime = 99,
		keyTimeAdditive = false,
		durationOverride = 0.1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.ClearEffect
	}
}
shepherd_shot_player = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 9,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	},
	{
		keyTime = 9,
		keyTimeAdditive = false,
		durationOverride = 11,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keytime = 99,
		keyTimeAdditive = false,
		durationOverride = 0.1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.ClearEffect
	}
}
player_tossed = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 0.25,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.black_overlay
	},
	{
		keyTime = 0.25,
		keyTimeAdditive = false,
		durationOverride = 6,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	},
	{
		keyTime = 6.25,
		keyTimeAdditive = false,
		durationOverride = 6,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keytime = 99,
		keyTimeAdditive = false,
		durationOverride = 0.1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.ClearEffect
	}
}
gazed_up_player = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 0.1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.black_overlay
	},
	{
		keyTime = 0.1,
		keyTimeAdditive = false,
		durationOverride = 16,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	},
	{
		keyTime = 22,
		keyTimeAdditive = false,
		durationOverride = 15,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keytime = 99,
		keyTimeAdditive = false,
		durationOverride = 0.1,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.ClearEffect
	}
}
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( player_wakeup_drag )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( ghost_drag_player_unconscious )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( player_wakeup_pavelow )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( shepherd_shot_player )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( player_tossed )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( gazed_up_player )
LockTable( _M )
