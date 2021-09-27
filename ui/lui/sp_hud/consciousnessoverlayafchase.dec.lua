local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
player_wakeup_waterfall = {
	{
		keyTime = 0.2,
		keyTimeAdditive = false,
		durationOverride = 3.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Close_to_Vignette
	},
	{
		keyTime = 7,
		keyTimeAdditive = false,
		durationOverride = 10,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
shepherd_slam_player = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 0.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keyTime = 5.6,
		keyTimeAdditive = false,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_Close
	},
	{
		keyTime = 25.7,
		keyTimeAdditive = false,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Close_to_Vignette
	},
	{
		keyTime = 38.5,
		keyTimeAdditive = false,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
generic_wakeup_short = {
	{
		keyTimeAdditive = true,
		durationOverride = 10,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.roadkill_intro_segment1
	}
}
generic_wakeup_long = {
	{
		keyTimeAdditive = true,
		durationOverride = 20,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.roadkill_intro_segment1
	}
}
generic_fadeToBlack = {
	{
		keyTimeAdditive = true,
		durationOverride = 8,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Close
	}
}
generic_clear_effect = {
	{
		keyTimeAdditive = true,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.ClearEffect
	}
}
player_passout_finalWalk = {
	{
		keyTimeAdditive = true,
		durationOverride = 30,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.favela_escape_Fall_Segment1
	}
}
generic_fadeToVignette = {
	{
		keyTimeAdditive = true,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	}
}
player_passout_afterThrow = {
	{
		keyTimeAdditive = true,
		durationOverride = 5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keyTime = 60,
		keyTimeAdditive = true,
		durationOverride = 20,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
player_fakes_death = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 27.9,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keyTime = 28,
		keyTimeAdditive = false,
		durationOverride = 4,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
price_helps_player = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 10,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keyTime = 50,
		keyTimeAdditive = false,
		durationOverride = 2,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_Close
	}
}
price_and_shepherd_fight = {
	{
		keyTime = 0,
		keyTimeAdditive = false,
		durationOverride = 0.5,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.None_to_Vignette
	},
	{
		keyTime = 29,
		keyTimeAdditive = false,
		durationOverride = 75,
		keyframeTable = LUI.sp_hud.ConsciousnessOverlayCommon.Vignette_to_None
	}
}
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( player_wakeup_waterfall )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( shepherd_slam_player )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( generic_wakeup_short )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( generic_wakeup_long )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( generic_fadeToBlack )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( generic_clear_effect )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( player_passout_finalWalk )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( generic_fadeToVignette )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( player_passout_afterThrow )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( player_fakes_death )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( price_helps_player )
LUI.sp_hud.ConsciousnessOverlay.registerKeyframes( price_and_shepherd_fight )
LockTable( _M )
