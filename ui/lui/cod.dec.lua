local f0_local0 = false
local f0_local1 = false
Memory = {
	InGame = {
		lowFreeBytes = 307200
	},
	Frontend = {
		lowFreeBytes = 1048576
	},
	CheckLow = function ()
		local f1_local0 = Engine.GetBytesFree()
		local f1_local1 = Memory.InGame.lowFreeBytes
		if Engine.InFrontend() then
			f1_local1 = Memory.Frontend.lowFreeBytes
		end
		if f1_local0 < f1_local1 then
			DebugPrint( "LUI: Low on memory, running GC now.  BytesFree = " .. Engine.GetBytesFree() )
			collectgarbage( "collect" )
		end
	end
}
MaxLocalClients = Engine.MaxLocalClientCount()
ScreenResolution = {
	HD = {
		width = Engine.GetDisplayWidth() / Engine.GetDisplayHeight() * 720,
		height = 720,
		name = "HD"
	}
}
currentScreenResolution = "HD"
Teams = {
	free = 0,
	axis = 1,
	allies = 2,
	spectator = 3
}
otherTeamLookup = {
	2,
	1
}
spectatorFakeTeam = 2
StreamingCount = 32
CoD = {
	Language = {
		English = 0,
		French = 1,
		German = 2,
		Italian = 3,
		Spanish = 4,
		Russian = 5,
		Polish = 6,
		Portuguese = 7,
		Japanese_full = 8,
		Japanese_partial = 9,
		Traditional_chinese = 10,
		Simplified_chinese = 11,
		Arabic = 12,
		Czech = 13,
		Spanishna = 14,
		Korean = 15,
		English_safe = 16,
		Russian_partial = 17
	}
}
font_default = "fonts/default.otf"
font_defaultBold = "fonts/defaultBold.otf"
font_bank = "fonts/bank.ttf"
currentLanguage = Engine.GetCurrentLanguage()
if CoD.Language.Russian == currentLanguage or CoD.Language.Russian_partial == currentLanguage or CoD.Language.Polish == currentLanguage or CoD.Language.Japanese_full == currentLanguage or CoD.Language.Japanese_partial == currentLanguage or CoD.Language.Traditional_chinese == currentLanguage or CoD.Language.Simplified_chinese == currentLanguage or CoD.Language.Arabic == currentLanguage or CoD.Language.Korean == currentLanguage then
	font_bank = font_defaultBold
end
local f0_local2 = function ( f2_arg0 )
	return f2_arg0 * 720 / 1080
end

Font13 = {
	Font = RegisterFont( font_default, 13 ),
	Height = f0_local2( 13 )
}
Font14 = {
	Font = RegisterFont( font_default, 14 ),
	Height = f0_local2( 14 )
}
Font15 = {
	Font = RegisterFont( font_default, 15 ),
	Height = f0_local2( 15 )
}
Font16 = {
	Font = RegisterFont( font_default, 16 ),
	Height = f0_local2( 16 )
}
Font18 = {
	Font = RegisterFont( font_default, 18 ),
	Height = f0_local2( 18 )
}
Font19 = {
	Font = RegisterFont( font_default, 19 ),
	Height = f0_local2( 19 )
}
Font21 = {
	Font = RegisterFont( font_default, 21 ),
	Height = f0_local2( 21 )
}
Font23 = {
	Font = RegisterFont( font_default, 23 ),
	Height = f0_local2( 23 )
}
Font24 = {
	Font = RegisterFont( font_default, 24 ),
	Height = f0_local2( 24 )
}
Font27 = {
	Font = RegisterFont( font_default, 27 ),
	Height = f0_local2( 27 )
}
Font28 = {
	Font = RegisterFont( font_default, 28 ),
	Height = f0_local2( 28 )
}
Font30 = {
	Font = RegisterFont( font_default, 30 ),
	Height = f0_local2( 30 )
}
Font32 = {
	Font = RegisterFont( font_default, 32 ),
	Height = f0_local2( 32 )
}
Font34 = {
	Font = RegisterFont( font_default, 34 ),
	Height = f0_local2( 34 )
}
Font37 = {
	Font = RegisterFont( font_default, 37 ),
	Height = f0_local2( 37 )
}
Font40 = {
	Font = RegisterFont( font_default, 40 ),
	Height = f0_local2( 40 )
}
Font43 = {
	Font = RegisterFont( font_default, 43 ),
	Height = f0_local2( 43 )
}
Font46 = {
	Font = RegisterFont( font_default, 46 ),
	Height = f0_local2( 46 )
}
Font60 = {
	Font = RegisterFont( font_default, 60 ),
	Height = f0_local2( 60 )
}
Font73 = {
	Font = RegisterFont( font_default, 73 ),
	Height = f0_local2( 73 )
}
Font76 = {
	Font = RegisterFont( font_default, 76 ),
	Height = f0_local2( 76 )
}
Font86 = {
	Font = RegisterFont( font_default, 86 ),
	Height = f0_local2( 86 )
}
Font128 = {
	Font = RegisterFont( font_default, 128 ),
	Height = f0_local2( 128 )
}
Font162 = {
	Font = RegisterFont( font_default, 162 ),
	Height = f0_local2( 162 )
}
Font350 = {
	Font = RegisterFont( font_default, 350 ),
	Height = f0_local2( 350 )
}
FontBold36 = {
	Font = RegisterFont( font_defaultBold, 36 ),
	Height = f0_local2( 36 )
}
FontBold46 = {
	Font = RegisterFont( font_defaultBold, 46 ),
	Height = f0_local2( 46 )
}
FontBold95 = {
	Font = RegisterFont( font_defaultBold, 95 ),
	Height = f0_local2( 95 )
}
FontBold110 = {
	Font = RegisterFont( font_defaultBold, 110 ),
	Height = f0_local2( 110 )
}
BodyFont = {
	Font = RegisterFont( font_default, 35 ),
	Height = f0_local2( 35 )
}
BodyFontBold = {
	Font = RegisterFont( font_defaultBold, 48 ),
	Height = f0_local2( 48 )
}
BodyFontSmall = {
	Font = RegisterFont( font_default, 24 ),
	Height = f0_local2( 24 )
}
BodyFontTiny = {
	Font = RegisterFont( font_default, 20 ),
	Height = f0_local2( 20 )
}
BodyFontVeryTiny = {
	Font = RegisterFont( font_default, 18 ),
	Height = f0_local2( 18 )
}
BodyFont18 = {
	Font = RegisterFont( font_default, 27 ),
	Height = f0_local2( 27 )
}
BodyFontBold18 = {
	Font = RegisterFont( font_defaultBold, 27 ),
	Height = f0_local2( 27 )
}
BodyFont24 = {
	Font = RegisterFont( font_default, 36 ),
	Height = f0_local2( 36 )
}
BodyFontBold24 = {
	Font = RegisterFont( font_defaultBold, 36 ),
	Height = f0_local2( 36 )
}
TitleFontLarge = {
	Font = RegisterFont( font_default, 105 ),
	Height = f0_local2( 105 )
}
H1TitleFont = {
	Font = RegisterFont( font_default, 50 ),
	Height = f0_local2( 50 )
}
H1TitleFont27 = {
	Font = RegisterFont( font_default, 27 ),
	Height = f0_local2( 27 )
}
H2TitleFont = {
	Font = RegisterFont( font_bank, 56 ),
	Height = f0_local2( 56 )
}
TitleFont = {
	Font = RegisterFont( font_defaultBold, 75 ),
	Height = f0_local2( 75 )
}
TitleFont50 = {
	Font = RegisterFont( font_defaultBold, 75 ),
	Height = f0_local2( 75 )
}
TitleFontBold = {
	Font = RegisterFont( font_defaultBold, 75 ),
	Height = f0_local2( 75 )
}
TitleFontMediumLargeBold = {
	Font = RegisterFont( font_defaultBold, 54 ),
	Height = f0_local2( 54 )
}
TitleFontMediumLarge = {
	Font = RegisterFont( font_default, 54 ),
	Height = f0_local2( 54 )
}
TitleFontMedium = {
	Font = RegisterFont( font_default, 45 ),
	Height = f0_local2( 45 )
}
TitleFontMediumBold = {
	Font = RegisterFont( font_defaultBold, 45 ),
	Height = f0_local2( 45 )
}
TitleFontSmall = {
	Font = RegisterFont( font_default, 36 ),
	Height = f0_local2( 36 )
}
TitleFontSmaller = {
	Font = RegisterFont( font_default, 30 ),
	Height = f0_local2( 30 )
}
TitleFontSmallBold = {
	Font = RegisterFont( font_defaultBold, 36 ),
	Height = f0_local2( 36 )
}
TitleFontBold22 = {
	Font = RegisterFont( font_default, 36 ),
	Height = f0_local2( 36 )
}
TitleFontTiny = {
	Font = RegisterFont( font_default, 27 ),
	Height = f0_local2( 27 )
}
TitleFontTinyBold = {
	Font = RegisterFont( font_defaultBold, 27 ),
	Height = f0_local2( 27 )
}
TitleFont22 = {
	Font = RegisterFont( font_default, 22 ),
	Height = f0_local2( 22 )
}
TitleFont18 = {
	Font = RegisterFont( font_default, 18 ),
	Height = f0_local2( 18 )
}
TitleFontVeryTiny = {
	Font = RegisterFont( font_default, 15 ),
	Height = f0_local2( 15 )
}
HudDigitsFont = {
	Font = RegisterFont( font_default, 54 ),
	Height = f0_local2( 54 )
}
HudDigitsFontMedium = {
	Font = RegisterFont( font_default, 80 ),
	Height = f0_local2( 80 )
}
HudDigitsFontBig = {
	Font = RegisterFont( font_default, 105 ),
	Height = f0_local2( 105 )
}
HudMessageFont = {
	Font = RegisterFont( font_default, 45 ),
	Height = f0_local2( 45 )
}
HudAmmoCounterFont = {
	Font = RegisterFont( font_bank, 105 ),
	Height = 64
}
MP_RankUpFont = {
	Font = RegisterFont( font_default, 210 ),
	Height = f0_local2( 210 )
}
SP_HudAmmoCounterFont = {
	Font = RegisterFont( font_bank, 34 ),
	Height = 34
}
SP_HudWeaponNameFont = {
	Font = RegisterFont( font_defaultBold, 15 ),
	Height = 15
}
SP_HudWeaponAttachmentsFont = {
	Font = RegisterFont( font_defaultBold, 11 ),
	Height = 11
}
SP_HudCursorHintAttachment = {
	Font = RegisterFont( font_defaultBold, 20 ),
	Height = 20
}
SP_HudAmmoStatusText = {
	Font = RegisterFont( font_bank, 16 ),
	Height = 16
}
SP_HudItemAmmoFont = {
	Font = RegisterFont( font_defaultBold, 14 ),
	Height = 14
}
SP_HudItemKeybindFont = {
	Font = RegisterFont( font_defaultBold, 14 ),
	Height = 14
}
SP_HudCarbon27 = {
	Font = RegisterFont( font_defaultBold, 27 ),
	Height = 27
}
SP_SubtitleFont = {
	Font = RegisterFont( font_defaultBold, 20 ),
	Height = 20
}
SP_PredatorDroneFont = {
	Font = RegisterFont( font_defaultBold, 16 ),
	Height = 16
}
CoD.TextSettings = {
	Font13 = Font13,
	Font14 = Font14,
	Font15 = Font15,
	Font16 = Font16,
	Font18 = Font18,
	Font19 = Font19,
	Font21 = Font21,
	Font23 = Font23,
	Font24 = Font24,
	Font27 = Font27,
	Font28 = Font28,
	Font30 = Font30,
	Font32 = Font32,
	Font34 = Font34,
	Font37 = Font37,
	Font40 = Font40,
	Font43 = Font43,
	Font46 = Font46,
	Font60 = Font60,
	Font73 = Font73,
	Font76 = Font76,
	Font86 = Font86,
	Font128 = Font128,
	Font162 = Font162,
	Font350 = Font350,
	FontBold36 = FontBold36,
	FontBold46 = FontBold46,
	FontBold95 = FontBold95,
	FontBold110 = FontBold110,
	BodyFont = BodyFont,
	BodyFontBold = BodyFontBold,
	BodyFontSmall = BodyFontSmall,
	BodyFontTiny = BodyFontTiny,
	BodyFontVeryTiny = BodyFontVeryTiny,
	BodyFont18 = BodyFont18,
	BodyFontBold18 = BodyFontBold18,
	BodyFont24 = BodyFont24,
	BodyFontBold24 = BodyFontBold24,
	TitleFontLarge = TitleFontLarge,
	TitleFont = TitleFont,
	TitleFontBold = TitleFontBold,
	TitleFontMediumLargeBold = TitleFontMediumLargeBold,
	TitleFontMediumLarge = TitleFontMediumLarge,
	TitleFontMedium = TitleFontMedium,
	TitleFontMediumBold = TitleFontMediumBold,
	TitleFontSmall = TitleFontSmall,
	TitleFontSmaller = TitleFontSmaller,
	TitleFontSmallBold = TitleFontSmallBold,
	TitleFontTiny = TitleFontTiny,
	TitleFontTinyBold = TitleFontTinyBold,
	TitleFontVeryTiny = TitleFontVeryTiny,
	TitleFont22 = TitleFont22,
	TitleFont18 = TitleFont18,
	HudDigitsFont = HudDigitsFont,
	HudDigitsFontMedium = HudDigitsFontMedium,
	HudDigitsFontBig = HudDigitsFontBig,
	HudMessageFont = HudMessageFont,
	HudAmmoCounterFont = HudAmmoCounterFont,
	TitleFont50 = TitleFont50,
	TitleFontBold22 = TitleFontBold22,
	MP_RankUpFont = MP_RankUpFont,
	SP_HudAmmoCounterFont = SP_HudAmmoCounterFont,
	SP_HudWeaponNameFont = SP_HudWeaponNameFont,
	SP_HudWeaponAttachmentsFont = SP_HudWeaponAttachmentsFont,
	SP_HudCursorHintAttachment = SP_HudCursorHintAttachment,
	SP_HudItemAmmoFont = SP_HudItemAmmoFont,
	SP_HudItemKeybindFont = SP_HudItemKeybindFont,
	SP_HudAmmoStatusText = SP_HudAmmoStatusText,
	SP_HudCarbon27 = SP_HudCarbon27,
	H1TitleFont = H1TitleFont,
	H2TitleFont = H2TitleFont,
	H1TitleFont27 = H1TitleFont27,
	TinyFont = BodyFontSmall,
	SmallFont = BodyFont,
	NormalFont = BodyFont,
	BigFont = TitleFont,
	ExtraBigFont = TitleFont,
	BoldFont = BodyFont,
	SplitScreenFont = BodyFont,
	PopupFont = BodyFontSmall
}
CoD.BindTextSource = {
	None = 0
}
CoD.TextStyle = {
	None = 0,
	Blinking = 1,
	Shadowed = 2,
	ShadowedMore = 4,
	Outlined = 8,
	OutlinedMore = 16,
	ForceUpperCase = 32,
	ForceLowerCase = 64,
	Monospace = 128,
	Screen = 256,
	Html = 512,
	MW2Title = 2048
}
CoD.isPC = not Engine.IsConsoleGame()
CoD.FullHDToHD = 0.67
CoD.LastLevelIndex = 18
CoD.LimitedModeMaxPlayers = 18
CoD.MaxClassNameLength = 11
CoD.PlayMode = {
	None = 0,
	SP = 1,
	Core = 2,
	Aliens = 3,
	SquadVsSquad = 4,
	Count = 5
}
CoD.Ownerdraw = {
	CGSpectatorControls = 61,
	CGChangeZoomHint = 70,
	CGHoldBreathHint = 71,
	CGCursorHint = 72,
	CGCursorHintAttachment = 212,
	CGDropWeaponHint = 213,
	CGToggleThermalHint = 76,
	CGToggleHybridHint = 77,
	CGMantleHint = 80,
	CGVarGrenadeHint = 85,
	CGDoubleTapDetonateHint = 86,
	CGDeadQuote = 97,
	CGMissionObjectiveHeader = 99,
	CGMissionObjectiveList = 100,
	CGMissionObjectiveBackdrop = 101,
	CGSaving = 111,
	CGLowHealthOverlay = 112,
	CGAmmoMagazine = 117,
	CGInvalidCmdHint = 113,
	CGVehicleReticle = 200,
	CGHudTargetsVehicle = 201,
	CGHudTargetsJavelin = 202,
	UIRecordLevel = 365,
	UIMissilePosition = 384,
	UIMissileInfo = 385,
	UIIOTD = 387,
	CGPlayerFullmapMap = 181,
	CGPlayerFullmapPointers = 182,
	CGPlayerFullmapPlayer = 183,
	CGPlayerFullmapFriends = 185,
	CGPlayerFullmapEnemies = 188,
	CGPlayerFullmapLocationSelector = 186,
	CGPlayerFullmapSentries = 189,
	CGPlayerFullmapVehicles = 190,
	CGPlayerFullmapPlanes = 191,
	CGPlayerFullmapPortableRadars = 192,
	CGPlayerFullmapTrophySystems = 193,
	CGPlayerFullmapScramblers = 194,
	CGPlayerUpgradeChallengeProgress = 195,
	CGLoadingAnimation = 391
}
HintBackgroundWidth = {
	Medium = 720,
	Small = 450
}
CoD.GetHintBackgroundState = function ( f3_arg0 )
	local f3_local0 = "default"
	DebugPrint( f3_arg0 )
	if f3_arg0 <= HintBackgroundWidth.Small then
		f3_local0 = "small"
	elseif f3_arg0 <= HintBackgroundWidth.Medium then
		f3_local0 = "medium"
	end
	return f3_local0
end

CoD.OwnerdrawAlignment = {
	None = 0,
	TextCenter = 2,
	TextTopLeft = 1
}
CoD.Background = {
	Default = "h1_menu_background_vignette",
	Campaign = "sp_menus_bg_campaign",
	CampaignRecruit = "sp_menus_bg_recruit",
	CampaignRegular = "sp_menus_bg_regular",
	CampaignHardened = "sp_menus_bg_hardened",
	CampaignVeteran = "sp_menus_bg_veteran",
	SPLockout = "sp_menus_bg_start_screen",
	Attract = "attract"
}
CoD.Music = {
	MainSPMusic = "mus_main_menu",
	MainMPMusicList = {
		"music_mp_main_menu_lp_01",
		"music_mp_main_menu_lp_02",
		"music_mp_main_menu_lp_03",
		"music_mp_main_menu_lp_04",
		"music_mp_main_menu_lp_05",
		"music_mp_main_menu_lp_06",
		"music_mp_main_menu_lp_07",
		"music_mp_main_menu_lp_08",
		"music_mp_main_menu_lp_09",
		"music_mp_main_menu_lp_10",
		"music_mp_main_menu_lp_11",
		"music_mp_main_menu_lp_12",
		"music_mp_main_menu_lp_13",
		"music_mp_main_menu_lp_14",
		"music_mp_main_menu_lp_15"
	},
	MainSPMusicPlaying = nil,
	MainMPMusicPlaying = nil,
	MainSquadMusic = "music_mainmenu_squad",
	MainExtinctMusic = "music_mainmenu_extinct",
	MainRorkeMusic = "music_mainmenu_rorke_files"
}
CoD.SFX = {
	MenuAppear = "h1_ui_main_menu_appear",
	MainMenuAppear = "h1_ui_main_menu_appear",
	SubMenuCampainAppear = "h1_ui_sub_menu_campain_appear",
	MenuAccept = "h1_ui_menu_accept",
	MenuBack = "h1_ui_menu_back",
	MenuAcceptDisabled = "h1_ui_menu_lock_scroll_press",
	MenuScroll = "h1_ui_menu_scroll",
	PopupAppears = "h1_ui_menu_warning_box_appear",
	PopupDisappears = "h1_ui_menu_warning_box_appear",
	PauseMenuResume = "h1_ui_pause_menu_resume",
	PauseMenuBack = "h1_ui_menu_back",
	H1TabChange = "h1_ui_menu_change_tab",
	MouseOver = "h1_ui_menu_scroll",
	MouseClick = "h1_ui_menu_accept",
	ButtonX = "ui_button_clear",
	LeaveMenu = "ui_leave_screen",
	Error = "ui_button_error",
	RestrictClass = "ui_enter_screen",
	TabLeft = "ui_enter_screen",
	TabRight = "ui_enter_screen",
	SelectBack = "ui_mouse_over",
	AdjustSafeArea = "ui_mouse_over",
	DenyAdjustSafeArea = "ui_button_error",
	ChangeScreen = "ui_mouse_over",
	AdjustSlider = "ui_mouse_over",
	OtherAdjust = "ui_mouse_over",
	SubMenuMouseOver = "ui_mouse_over",
	DenySelect = "ui_button_error",
	CaC = {
		weapon_assault = "ui_cac_equip_wpn_assault",
		weapon_smg = "ui_cac_equip_wpn_smg",
		weapon_sniper = "ui_cac_equip_wpn_sniper",
		weapon_shotgun = "ui_cac_equip_wpn_shotgun",
		weapon_heavy = "ui_cac_equip_wpn_heavy",
		weapon_special = "ui_cac_equip_wpn_special",
		weapon_pistol = "ui_cac_equip_wpn_pistol",
		weapon_projectile = "ui_cac_equip_wpn_launcher",
		weapon_sec_special = "ui_cac_equip_wpn_special",
		attachment = "ui_cac_equip_attachment",
		equipment_tactical = "ui_cac_equip_tactical",
		equipment_lethal = "ui_cac_equip_leathal",
		perk = "ui_cac_equip_perk",
		uav = "ui_cac_equip_ks_uav"
	}
}
CoD.KeyboardInputTypes = {
	Normal = 0,
	Email = 1,
	Password = 2
}
CoD.ReasonStrings = {
	"MP_SCORE_LIMIT_REACHED",
	"MP_TIME_LIMIT_REACHED",
	"MP_PLAYERS_FORFEITED",
	"MP_TARGET_DESTROYED",
	"MP_BOMB_DEFUSED",
	"MP_SAS_ELIMINATED",
	"MP_SPETSNAZ_ELIMINATED",
	"MP_SAS_FORFEITED",
	"MP_SPETSNAZ_FORFEITED",
	"MP_SAS_MISSION_ACCOMPLISHED",
	"MP_SPETSNAZ_MISSION_ACCOMPLISHED",
	"MP_ENEMIES_ELIMINATED",
	"MP_MATCH_TIE",
	"GAME_OBJECTIVECOMPLETED",
	"GAME_OBJECTIVEFAILED",
	"MP_SWITCHING_SIDES",
	"MP_ROUND_LIMIT_REACHED",
	"MP_ENDED_GAME",
	"MP_HOST_ENDED_GAME",
	"MP_PREVENT_STAT_LOSS"
}
CoD.SwapFactionReasonStrings = function ()
	CoD.ReasonStrings[6] = "MP_MARINES_ELIMINATED"
	CoD.ReasonStrings[7] = "MP_OPFOR_ELIMINATED"
	CoD.ReasonStrings[8] = "MP_MARINES_FORFEITED"
	CoD.ReasonStrings[9] = "MP_OPFOR_FORFEITED"
	CoD.ReasonStrings[10] = "MP_MARINES_MISSION_ACCOMPLISHED"
	CoD.ReasonStrings[11] = "MP_OPFOR_MISSION_ACCOMPLISHED"
end

CoD.RestoreFactionReasonStrings = function ()
	CoD.ReasonStrings[6] = "MP_SAS_ELIMINATED"
	CoD.ReasonStrings[7] = "MP_SPETSNAZ_ELIMINATED"
	CoD.ReasonStrings[8] = "MP_SAS_FORFEITED"
	CoD.ReasonStrings[9] = "MP_SPETSNAZ_FORFEITED"
	CoD.ReasonStrings[10] = "MP_SAS_MISSION_ACCOMPLISHED"
	CoD.ReasonStrings[11] = "MP_SPETSNAZ_MISSION_ACCOMPLISHED"
end

CoD.AntiCheat = {
	Ban = {
		FEATURE_BAN_LIVE_MP = 1,
		FEATURE_BAN_LIVE_EXTINCTION = 2,
		FEATURE_BAN_LEADERBOARD_WRITE_MP = 3,
		FEATURE_BAN_LEADERBOARD_WRITE_EXTINCTION = 4,
		FEATURE_BAN_MP_SPLITSCREEN = 5,
		FEATURE_BAN_CLAN_TAGS = 6,
		FEATURE_BAN_VOICE_CHAT = 7,
		FEATURE_BAN_PRESTIGE = 8,
		FEATURE_BAN_BOT_GAMES = 9,
		FEATURE_BAN_SEARCH_DEDICATED_SERVER = 10,
		FEATURE_BAN_ALLOCATE_DEDICATED_SERVER = 11,
		FEATURE_BAN_HOSTING = 12,
		FEATURE_BAN_PRESTIGE_EXTRAS = 13,
		FEATURE_BAN_LOOT = 14,
		FEATURE_BAN_LIVESTREAMING_MP = 15,
		FEATURE_BAN_ALLOW_DEBUG_TEXT = 16,
		FEATURE_BAN_ALLOW_TELEMETRY = 17,
		FEATURE_BAN_EMBLEM_EDITOR = 18,
		FEATURE_BAN_TIMED_REWARDS = 19,
		FEATURE_BAN_ACTIVITY_REWARDS = 20
	}
}
CoD.PlayOnlineFailure = {
	OPFR_XBOXLIVE_SIGNEDOUTOFLIVE = 1,
	OPFR_XBOXLIVE_MPNOTALLOWED = 8,
	OPFR_PLATFORM_PSPLUS_REQUIRED = 16,
	OPFR_PLATFORM_UPDATE_REQUIRED = 17
}
CoD.UI3DScaleMode = {
	Clip = 0,
	ScaleFullScreen = 1,
	ScaleVirtualScreen = 2
}
CoD.CompassType = {
	Partial = 0,
	Full = 1
}
DesignGridDims = {
	horz_gutter = 67.33,
	vert_gutter = 28,
	grid_width = 26.67,
	grid_spacing = 40,
	num_grids = 28
}
CoD.DesignGridHelper = function ( f6_arg0, f6_arg1 )
	local f6_local0 = DesignGridDims.grid_spacing * f6_arg0
	if f6_arg1 then
		f6_local0 = f6_local0 + f6_arg1 * DesignGridDims.grid_width
	end
	return f6_local0
end

GenericMenuDims = {
	MenuStartX = 66,
	MenuStartY = 96,
	menu_left = 67.33,
	menu_right_narrow = 390,
	menu_right = 293,
	menu_right_standard = 307.33,
	menu_right_med = 525,
	menu_right_more = 565,
	menu_right_wide = 640,
	menu_top = 125.33,
	menu_top_low = 215,
	menu_top_scroll = 95,
	menu_bottom = 600,
	menu_bottom_scroll = 542,
	menu_bottom_tall = 700,
	TitleTop = 55 - DesignGridDims.vert_gutter,
	menu_list_height = 25,
	SubmenuWidth = 480,
	OptionMenuWidth = 480,
	menu_width_standard = GenericMenuDims.menu_right_standard - GenericMenuDims.menu_left
}
GenericInGameMenuDims = {
	menu_left = 0,
	menu_right = 450,
	menu_top = 100,
	menu_bottom = 600
}
GenericTitleBarDims = {
	TitleBarHeight = 30,
	TitleBarLCapWidth = 10,
	TitleBarRCapWidth = 4
}
GenericFooterDims = {
	Height = 36,
	BuildNumberHeight = 35,
	TopMargin_WithBackground = -72,
	TopMargin_WithoutBackground = -40,
	DashWidth = 18,
	DashGradientSpacing = 7
}
GenericPopupDims = {
	Width = 432
}
DialogPopupDims = {
	Width = 400,
	Height = 85
}
DialogWidgetDims = {
	Width = 30,
	Height = 30
}
LoadingAnimationDims = {
	Width = 120,
	Height = 120
}
GenericMenuAnimationSettings = {
	ButtonFadeInStartFade = 360,
	ButtonFadeInDuration = 133,
	ButtonFadeInDelay = 20,
	ButtonWidgetFadeInStartFade = 150,
	ButtonGlowTime = 3500,
	ButtonGlowScaleX01 = 1.4,
	ButtonGlowScaleX02 = 1.6,
	ButtonGlowScaleY01 = 1.8,
	ButtonGlowScaleY02 = 2.1,
	ButtonGlowAlpha01 = 0.5,
	ButtonGlowAlpha02 = 0.65,
	ButtonBgLinesTime = 7000,
	ButtonBgLinesScaleX01 = 1.19,
	ButtonBgLinesScaleX02 = 1.2,
	ButtonBgLinesScaleY01 = 2.2,
	ButtonBgLinesScaleY02 = 2.2,
	ButtonBgLinesAlpha01 = 1,
	ButtonBgLinesAlpha02 = 1,
	ButtonBgLinesOffSetY01 = -2,
	ButtonBgLinesOffSetY02 = 2,
	ButtonGreenLineDelay = 10000,
	ButtonGreenLineFadeinTime = 150,
	ButtonGreenLineFullAlphaTime = 200,
	ButtonGreenLineFadeOutTime = 150,
	ButtonGreenLineScale = 0.42,
	ButtonGreenLineYOffset1 = -10,
	ButtonGreenLineYOffset2 = 9,
	ButtonActivateFlashTime = 150,
	ButtonActivateFlashAlpha01 = 1,
	ButtonActivateFlashAlpha02 = 0.5,
	ButtonActivateFlashAlpha03 = 0,
	ButtonActivateBorderDelay = 60,
	ButtonActivateBorderTime = 200,
	ButtonActivateBorderScaleX01 = 1,
	ButtonActivateBorderScaleX02 = 1.3,
	ButtonActivateBorderScaleY01 = 1,
	ButtonActivateBorderScaleY02 = 2,
	ButtonActivateBorderAlpha01 = 0.6,
	ButtonActivateBorderAlpha02 = 0,
	DotDuration = 166.67,
	ButtonHelper = {
		Delay = 200,
		Duration = 100
	}
}
GenericPopupAnimationSettings = {
	Background = {
		DelayIn = 0,
		DurationIn = 1,
		DelayOut = 0,
		DurationOut = 1
	},
	Window = {
		DelayIn = 33,
		DurationIn = 33,
		DelayOut = 0,
		DurationOut = 33
	},
	BackgroundTitle = {
		DelayIn = 1,
		DurationIn = 1
	},
	Title = {
		DelayIn = 1,
		DurationIn = 1
	},
	Text = {
		DelayIn = 1,
		DurationIn = 1
	},
	Buttons = {
		DelayIn = 1,
		DurationIn = 1
	},
	Global = {
		DelayOut = 1,
		DurationOut = 1
	}
}
LevelSelectMinimapBlipSettings = {
	initialSize = 8,
	finalSize = 48,
	pulseCount = 2,
	pulseDelay = 500,
	pulseDuration = 1000,
	delay = 1000
}
PauseMenuAnimationSettings = {
	Background = {
		DelayIn = 0,
		DurationIn = 125,
		DelayOut = 0,
		DurationOut = 125
	},
	MissionsObjectiveLine = {
		DelayIn = 0,
		DurationIn = 0
	},
	MissionsObjectiveTitle = {
		DelayIn = 0,
		DurationIn = 0
	},
	MissionsObjectiveList = {
		DelayIn = 0,
		DurationIn = 0
	},
	Intel = {
		DelayIn = 0,
		DurationIn = 0
	},
	MapBG = {
		DelayIn = 0,
		DurationIn = 0
	},
	Map = {
		DelayIn = 0,
		DurationIn = 0
	},
	MapGlitch = {
		DelayIn = 9767,
		DurationIn = 233
	},
	SubContainer = {
		DelayOut = 67,
		DurationOut = 67
	}
}
GenericButtonDims = {
	button_height = 27,
	button_width = 500,
	pad_button_width = 35
}
FriendsWidgetDims = {
	Width = 50,
	Height = 36
}
LevelSelectMenu = {
	BlackBarDims = {
		BottomLargeBar = 95,
		TopSmallBar = 97,
		BottomSmallBar = 100
	},
	ScrollingListDims = {
		menu_top = 100,
		menu_bottom = 446,
		menu_left = 0,
		menu_right = 475
	}
}
SplitScreenMenu = {
	ButtonPos1 = 50,
	ButtonPos2 = 80,
	ButtonPos3 = 110,
	ButtonPos4 = 140,
	ButtonPos5 = 170,
	ButtonPos6 = 200
}
S1MenuDims = {
	safe_area_horz = 66,
	safe_area_vert = 36,
	menu_top = CoD.TextSettings.TitleFontLarge.Height + 24 + 6,
	menu_left = 0,
	menu_right = CoD.DesignGridHelper( 5, 1 ),
	menu_bottom = 400,
	menu_extras_left = 270,
	menu_button_height = 34,
	menu_padding = 8
}
H1MenuDims = {
	spacing = 9.33,
	popupTitleBgHeight = 35,
	popupTitleBgFontHeight = 20,
	popupTitleTextTopOffset = 9
}
local f0_local3 = {
	[0] = "LANGUAGE_ENGLISH"
}
local f0_local4 = "LANGUAGE_FRENCH"
local f0_local5 = "LANGUAGE_GERMAN"
local f0_local6 = "LANGUAGE_ITALIAN"
local f0_local7 = "LANGUAGE_SPANISH"
local f0_local8 = "LANGUAGE_RUSSIAN"
local f0_local9 = "LANGUAGE_POLISH"
local f0_local10 = "LANGUAGE_PORTUGUESE"
local f0_local11 = "LANGUAGE_JAPANESE_FULL"
local f0_local12 = "LANGUAGE_JAPANESE_PARTIAL"
local f0_local13 = "LANGUAGE_TRADITIONAL_CHINESE"
local f0_local14 = "LANGUAGE_SIMPLIFIED_CHINESE"
local f0_local15 = "LANGUAGE_ARABIC"
local f0_local16 = "LANGUAGE_CZECH"
local f0_local17 = "LANGUAGE_SPANISHNA"
local f0_local18 = "LANGUAGE_KOREAN"
local f0_local19 = "LANGUAGE_ENGLISH_SAFE"
local f0_local20 = "MAX_LANGUAGES"
f0_local3[1] = f0_local4
f0_local3[2] = f0_local5
f0_local3[3] = f0_local6
f0_local3[4] = f0_local7
f0_local3[5] = f0_local8
f0_local3[6] = f0_local9
f0_local3[7] = f0_local10
f0_local3[8] = f0_local11
f0_local3[9] = f0_local12
f0_local3[10] = f0_local13
f0_local3[11] = f0_local14
f0_local3[12] = f0_local15
f0_local3[13] = f0_local16
f0_local3[14] = f0_local17
f0_local3[15] = f0_local18
f0_local3[16] = f0_local19
f0_local3[17] = f0_local20
Languages = f0_local3
ButtonMap = {
	button_action = {
		string = "@LUA_MENU_PAD_PRIMARY_BUTTON",
		keyboard_string = "@PLATFORM_KB_PRIMARY_BUTTON",
		keyboard_mouse_string = "@PLATFORM_KB_MOUSE_PRIMARY_BUTTON",
		raw_button = "primary"
	},
	button_secondary = {
		string = "@LUA_MENU_PAD_SECONDARY_BUTTON",
		keyboard_string = "@PLATFORM_KB_SECONDARY_BUTTON",
		raw_button = "secondary"
	},
	button_alt1 = {
		string = "@LUA_MENU_PAD_ALT1_BUTTON",
		keyboard_string = "@PLATFORM_KB_ALT1_BUTTON",
		raw_button = "alt1"
	},
	button_alt2 = {
		string = "@LUA_MENU_PAD_ALT2_BUTTON",
		keyboard_string = "@PLATFORM_KB_ALT2_BUTTON",
		raw_button = "alt2"
	},
	button_right_trigger = {
		string = "@LUA_MENU_PAD_RIGHT_TRIGGER_BUTTON",
		keyboard_string = "@PLATFORM_KB_RIGHT_TRIGGER_BUTTON",
		raw_button = "right_trigger"
	},
	button_left_trigger = {
		string = "@LUA_MENU_PAD_LEFT_TRIGGER_BUTTON",
		keyboard_string = "@PLATFORM_KB_LEFT_TRIGGER_BUTTON",
		raw_button = "left_trigger"
	},
	button_shoulderr = {
		string = "@LUA_MENU_PAD_RIGHT_SHOULDER_BUTTON",
		keyboard_string = "@PLATFORM_KB_RIGHT_SHOULDER_BUTTON",
		raw_button = "shoulderr"
	},
	button_shoulderl = {
		string = "@LUA_MENU_PAD_LEFT_SHOULDER_BUTTON",
		keyboard_string = "@PLATFORM_KB_LEFT_SHOULDER_BUTTON",
		raw_button = "shoulderl"
	},
	button_right_trigger_vita = {
		string = "@LUA_MENU_PAD_RIGHT_SHOULDER_BUTTON",
		keyboard_string = "@PLATFORM_KB_RIGHT_TRIGGER_BUTTON",
		raw_button = "right_trigger"
	},
	button_left_trigger_vita = {
		string = "@LUA_MENU_PAD_LEFT_SHOULDER_BUTTON",
		keyboard_string = "@PLATFORM_KB_LEFT_TRIGGER_BUTTON",
		raw_button = "left_trigger"
	},
	button_shoulderr_vita = {
		string = "@LUA_MENU_PAD_RIGHT_TRIGGER_BUTTON",
		keyboard_string = "@PLATFORM_KB_RIGHT_SHOULDER_BUTTON",
		raw_button = "shoulderr"
	},
	button_shoulderl_vita = {
		string = "@LUA_MENU_PAD_LEFT_TRIGGER_BUTTON",
		keyboard_string = "@PLATFORM_KB_LEFT_SHOULDER_BUTTON",
		raw_button = "shoulderl"
	},
	button_select = {
		string = "@LUA_MENU_PAD_BACK_BUTTON",
		keyboard_string = "@PLATFORM_KB_BACK_BUTTON",
		raw_button = "select"
	},
	button_start = {
		string = "@LUA_MENU_PAD_START_BUTTON",
		keyboard_string = "@PLATFORM_KB_START_BUTTON",
		raw_button = "start"
	},
	button_dpad_left = {
		string = "@LUA_MENU_PAD_DPAD_LEFT_BUTTON",
		keyboard_string = "@PLATFORM_KB_DPAD_LEFT_BUTTON",
		raw_button = "dpad_left"
	},
	button_dpad_right = {
		string = "@LUA_MENU_PAD_DPAD_RIGHT_BUTTON",
		keyboard_string = "@PLATFORM_KB_DPAD_RIGHT_BUTTON",
		raw_button = "dpad_right"
	},
	button_dpad_up = {
		string = "@LUA_MENU_PAD_DPAD_UP_BUTTON",
		keyboard_string = "@PLATFORM_KB_DPAD_UP_BUTTON",
		raw_button = "dpad_up"
	},
	button_dpad_down = {
		string = "@LUA_MENU_PAD_DPAD_DOWN_BUTTON",
		keyboard_string = "@PLATFORM_KB_DPAD_DOWN_BUTTON",
		raw_button = "dpad_down"
	},
	button_left = {
		string = "@LUA_MENU_PAD_DPAD_LEFT_BUTTON",
		keyboard_string = "@KEY_LEFTARROW",
		raw_button = "left"
	},
	button_right = {
		string = "@LUA_MENU_PAD_DPAD_RIGHT_BUTTON",
		keyboard_string = "@KEY_RIGHTARROW",
		raw_button = "right"
	},
	button_left_stick = {
		string = "@PLATFORM_LEFT_STICK_GAMEPAD",
		raw_button = "left_stick"
	},
	button_right_stick = {
		string = "@PLATFORM_RIGHT_STICK_GAMEPAD",
		raw_button = "right_stick"
	},
	button_l3 = {
		string = "@LUA_MENU_PAD_LEFT_STICK",
		keyboard_string = "@PLATFORM_KB_L3_BUTTON",
		raw_button = "l6"
	},
	button_r3 = {
		string = "@LUA_MENU_PAD_RIGHT_STICK",
		keyboard_string = "@PLATFORM_KB_L3_BUTTON",
		raw_button = "l7"
	},
	button_page_up = {
		string = "@PLATFORM_PAGE_UP",
		keyboard_string = "@PLATFORM_KB_PAGE_UP_BUTTON",
		raw_button = "page_up"
	},
	button_page_down = {
		string = "@PLATFORM_PAGE_DOWN",
		keyboard_string = "@PLATFORM_KB_PAGE_DOWN_BUTTON",
		raw_button = "page_down"
	},
	button_ins = {
		string = "@PLATFORM_KB_INS",
		keyboard_string = "@PLATFORM_KB_INS",
		raw_button = "ins"
	},
	button_del = {
		string = "@PLATFORM_KB_DEL",
		keyboard_string = "@PLATFORM_KB_DEL",
		raw_button = "del"
	},
	button_home = {
		string = "@PLATFORM_KB_HOME_BUTTON",
		keyboard_string = "@PLATFORM_KB_HOME_BUTTON",
		raw_button = "home"
	},
	button_end = {
		string = "@PLATFORM_KB_END_BUTTON",
		keyboard_string = "@PLATFORM_KB_END_BUTTON",
		raw_button = "end"
	},
	button_mousewheel = {
		keyboard_mouse_string = "@PLATFORM_MOUSE_WHEEL"
	},
	button_mousedrag = {
		keyboard_string = "@KEY_MOUSE1"
	},
	button_backspace = {
		keyboard_string = Engine.ToUpperCase( Engine.Localize( "@KEY_BACKSPACE" ) )
	}
}
ButtonQualifiers = {
	Gamepad = "gamepad",
	DPad = "dpad",
	Keyboard = "keyboard",
	Mousewheel = "mousewheel"
}
ButtonMaterial = {
	LB = "s1_cac_weapon_class_tab_lb",
	RB = "s1_cac_weapon_class_tab_rb"
}
CoD.Material = {
	NewSticker = "icon_new_2",
	RestrictedIcon = "icon_new",
	DlcLockedIcon = "weapon_locked_dlc_64",
	LoadingAnim = "loading_animation",
	LockedIcon = "icon_lock_mini",
	Star = "collection_complete_star_icon",
	NewStickerSP = "icon_new_sp"
}
CoD.DifficultyList = {
	{
		text = Engine.Localize( "@MENU_RECRUIT_CAPS" ),
		textRecommended = Engine.Localize( "@MENU_RECRUIT_CAPS_REC" ),
		description = Engine.Localize( "@MENU_REGULAR_DESC_FULL" ),
		tipText = Engine.Localize( "@GAME_DIFFICULTY_EASY" ),
		buttonHelperText = Engine.Localize( "@MENU_DIFFICULTY_BUTTON_RECRUIT" ),
		value = 0,
		video = CoD.Background.CampaignRecruit,
		specOps = false
	},
	{
		text = Engine.Localize( "@MENU_REGULAR_CAPS" ),
		textRecommended = Engine.Localize( "@MENU_REGULAR_CAPS_REC" ),
		description = Engine.Localize( "@MENU_SKILLED_DESC_FULL" ),
		tipText = Engine.Localize( "@GAME_DIFFICULTY_MEDIUM" ),
		buttonHelperText = Engine.Localize( "@MENU_DIFFICULTY_BUTTON_REGULAR" ),
		value = 1,
		video = CoD.Background.CampaignRegular,
		specOps = true
	},
	{
		text = Engine.Localize( "@MENU_HARDENED_CAPS" ),
		textRecommended = Engine.Localize( "@MENU_HARDENED_CAPS_REC" ),
		description = Engine.Localize( "@MENU_HARDENED_DESC" ),
		tipText = Engine.Localize( "@GAME_DIFFICULTY_HARD" ),
		buttonHelperText = Engine.Localize( "@MENU_DIFFICULTY_BUTTON_HARDENED" ),
		value = 2,
		video = CoD.Background.CampaignHardened,
		specOps = true
	},
	{
		text = Engine.Localize( "@MENU_VETERAN_CAPS" ),
		textRecommended = Engine.Localize( "@MENU_VETERAN_CAPS_REC" ),
		description = Engine.Localize( "@MENU_VETERAN_DESC" ),
		tipText = Engine.Localize( "@GAME_DIFFICULTY_FU" ),
		buttonHelperText = Engine.Localize( "@MENU_DIFFICULTY_BUTTON_VETERAN" ),
		value = 3,
		video = CoD.Background.CampaignVeteran,
		specOps = true
	}
}
function isMuseumMission()
	local f7_local0
	if Engine.GetDvarString( "mapname" ) ~= "ending" or Engine.GetDvarString( "ui_char_museum_mode" ) ~= "free" then
		f7_local0 = false
	else
		f7_local0 = true
	end
	return f7_local0
end

function isEndgameFinale()
	local f8_local0
	if Engine.GetDvarString( "mapname" ) == "ending" then
		f8_local0 = not isMuseumMission()
	else
		f8_local0 = false
	end
	return f8_local0
end

function isCreditsPlaying()
	local f9_local0
	if Engine.GetDvarString( "mapname" ) == "ending" and Engine.GetDvarString( "ui_char_museum_mode" ) ~= "free" then
		f9_local0 = Engine.GetDvarBool( "credits_active" )
	else
		f9_local0 = false
	end
	return f9_local0
end

function isNoRussian()
	return Engine.GetDvarString( "mapname" ) == "airport"
end

function isIntelCheatsAllowed()
	local f11_local0
	if isNoRussian() then
		f11_local0 = Engine.InFrontend()
	else
		f11_local0 = true
	end
	return f11_local0
end

IntelsTable = {
	File = "sp/_intel_items.csv",
	Cols = {
		Number = 0,
		DvarSet = 1,
		BitOffset = 2,
		MapName = 3,
		Origin = 4
	},
	Max = 64
}
function GetIntelCount( f12_arg0 )
	local f12_local0 = {}
	for f12_local1 = 1, IntelsTable.Max, 1 do
		if f12_arg0 == Engine.TableLookup( IntelsTable.File, IntelsTable.Cols.Number, f12_local1, IntelsTable.Cols.MapName ) then
			f12_local0[#f12_local0 + 1] = f12_local1
		end
	end
	local f12_local1 = #f12_local0
	if f12_local1 > 0 then
		local f12_local2 = 0
		for f12_local6, f12_local7 in ipairs( f12_local0 ) do
			if Engine.GetPlayerIntelIsFound( f12_local7 ) then
				f12_local2 = f12_local2 + 1
			end
		end
		return f12_local1, f12_local2
	else
		return 0, 0
	end
end

function SetIntelText( f13_arg0 )
	assert( f13_arg0 )
	local f13_local0 = Engine.GetDvarString( "mapname" )
	if isEndgameFinale() then
		f13_local0 = "af_chase"
	end
	local f13_local1, f13_local2 = GetIntelCount( f13_local0 )
	if f13_local1 > 0 then
		f13_arg0:setText( Engine.Localize( "@LUA_MENU_INTEL_FOUND", f13_local2, f13_local1 ) )
	end
end

CoD.ChangeCampaignBackground = function ( f14_arg0, f14_arg1, f14_arg2 )
	local f14_local0 = f14_arg2 + 1
	local f14_local1 = assert
	local f14_local2
	if 1 > f14_local0 or f14_local0 > #CoD.DifficultyList then
		f14_local2 = false
	else
		f14_local2 = true
	end
	f14_local1( f14_local2, "The difficulty value (+1) isn't comprised between 1 and #CoD.DifficultyList." )
	PersistentBackground.ChangeBackground( nil, CoD.DifficultyList[2].video )
end

CoD.GetSentinelColor = function ()
	return Colors.s1.team1_mlg
end

CoD.GetDarkerSentinelColor = function ()
	return Colors.s1.team1_mlg_dark
end

CoD.GetAtlasColor = function ()
	return Colors.s1.team2_mlg
end

CoD.GetDarkerAtlasColor = function ()
	return Colors.s1.team2_mlg_dark
end

CoD.HudStandards = {
	borderY = 21.33,
	borderX = 43.33,
	blurAlpha = 0.9,
	overlayAlpha = 0.3,
	overlayAlphaNVG = 0.35,
	iconAlpha = 0.9,
	overlayTint = {
		r = 0,
		g = 0,
		b = 0
	},
	nvgOverlayTint = {
		r = 0.4,
		g = 1,
		b = 0.6
	},
	labelsXpos = -25.66,
	labelsYpos = -6.67,
	icoXpos = -2.33,
	icoYpos = -7.33,
	boxSpacing = 40.33,
	ticksYpos = 5.33,
	ticksYposWeapon = -31,
	equipOffsetX = 49.99,
	equipOffsetY = -20,
	weaponBoxWidth = 345,
	weaponBoxHeight = 95,
	grenadeBoxHeight = 29,
	grenadeGroupWidth = 60,
	grenadeIconSize = 35,
	grenadeIconSpacing = -25,
	grenadeMaxCount = 4
}
Colors = {
	mp = {
		aar_score_gold = {
			r = 0.81,
			g = 0.65,
			b = 0.26
		},
		aar_vert_divider_green = {
			r = 0.15,
			g = 0.31,
			b = 0.18
		},
		aar_border_outline_green = {
			r = 0.09,
			g = 0.22,
			b = 0.11
		},
		ally_color = {
			r = 0.09,
			g = 0.09,
			b = 0.09
		},
		ally_outline_color = {
			r = 0.37,
			g = 0.37,
			b = 0.37
		},
		ally_highlight_color = {
			r = 0.42,
			g = 0.42,
			b = 0.42
		},
		ally_row_bg_color = {
			r = 0.09,
			g = 0.09,
			b = 0.09
		},
		axis_color = {
			r = 0.09,
			g = 0.09,
			b = 0.09
		},
		axis_outline_color = {
			r = 0.37,
			g = 0.37,
			b = 0.37
		},
		axis_highlight_color = {
			r = 0.42,
			g = 0.42,
			b = 0.42
		},
		axis_row_bg_color = {
			r = 0.09,
			g = 0.09,
			b = 0.09
		},
		first_place_color = {
			r = 0.78,
			g = 0.55,
			b = 0
		},
		second_place_color = {
			r = 0.49,
			g = 0.49,
			b = 0.47
		},
		third_place_color = {
			r = 0.67,
			g = 0.5,
			b = 0.42
		},
		free_highlight_color = {
			r = 0.26,
			g = 0.64,
			b = 0.32
		}
	},
	s1 = {
		text_unfocused = {
			r = 0.87,
			g = 0.87,
			b = 0.87
		},
		text_focused = {
			r = 0.24,
			g = 1,
			b = 0.36
		},
		text_disabled = {
			r = 0.7,
			g = 0.7,
			b = 0.7
		},
		text_conflict_unfocused = {
			r = 0.5,
			g = 0.2,
			b = 0.2
		},
		text_blue = {
			r = 0.55,
			g = 0.82,
			b = 0.98
		},
		background_focused = {
			r = 1,
			g = 0.38,
			b = 0,
			a = 0.35
		},
		background_equipped = {
			r = 1,
			g = 1,
			b = 1,
			a = 0.2
		},
		background_rarity_mtx = {
			r = 1,
			g = 1,
			b = 1,
			a = 0.7
		},
		background_rarity0 = {
			r = 1,
			g = 1,
			b = 1,
			a = 0.45
		},
		background_rarity1 = {
			r = 1,
			g = 1,
			b = 1,
			a = 0.45
		},
		background_rarity2 = {
			r = 1,
			g = 1,
			b = 1,
			a = 0.45
		},
		background_rarity3 = {
			r = 1,
			g = 1,
			b = 1,
			a = 0.7
		},
		text_rarity_mtx = {
			r = 1,
			g = 0.89,
			b = 0.63,
			a = 1
		},
		text_rarity0 = {
			r = 0.87,
			g = 0.87,
			b = 0.87,
			a = 1
		},
		text_rarity1 = {
			r = 0.85,
			g = 1,
			b = 0.63,
			a = 1
		},
		text_rarity2 = {
			r = 0.63,
			g = 0.85,
			b = 1,
			a = 1
		},
		text_rarity3 = {
			r = 1,
			g = 0.89,
			b = 0.63,
			a = 1
		},
		team1 = {
			r = 0.21,
			g = 0.45,
			b = 0.62
		},
		team2 = {
			r = 0.7,
			g = 0.62,
			b = 0.22
		},
		team1_mlg = {
			r = 0.51,
			g = 0.84,
			b = 1
		},
		team1_mlg_dark = {
			r = 0.25,
			g = 0.42,
			b = 0.5
		},
		team2_mlg = {
			r = 0.78,
			g = 0.24,
			b = 0.24
		},
		team2_mlg_dark = {
			r = 0.39,
			g = 0.12,
			b = 0.12
		},
		perk_type1 = {
			r = 0.78,
			g = 1,
			b = 0.63
		},
		perk_type2 = {
			r = 0.67,
			g = 0.86,
			b = 1
		},
		stat_gain = {
			r = 0.51,
			g = 0.8,
			b = 0.35
		},
		stat_loss = {
			r = 0.94,
			g = 0.48,
			b = 0.48
		},
		overload_red = {
			r = 1,
			g = 0.44,
			b = 0.44
		}
	},
	h1 = {
		light_red = {
			r = 1,
			g = 0.12,
			b = 0.22
		},
		light_green = {
			r = 0.27,
			g = 0.65,
			b = 0.33
		},
		light_grey = {
			r = 0.83,
			g = 0.83,
			b = 0.83
		},
		medium_grey = {
			r = 0.46,
			g = 0.46,
			b = 0.46
		},
		second_medium_grey = {
			r = 0.69,
			g = 0.69,
			b = 0.69
		},
		dark_grey = {
			r = 0.24,
			g = 0.24,
			b = 0.24
		},
		black = {
			r = 0,
			g = 0,
			b = 0
		},
		yellow = {
			r = 1,
			g = 0.9,
			b = 0.06
		},
		current_tab_select_text = {
			r = 1,
			g = 1,
			b = 1
		},
		ally_blue = {
			r = 0.44,
			g = 0.81,
			b = 1
		},
		enemy_red = {
			r = 1,
			g = 0.02,
			b = 0.01
		}
	},
	h2 = {
		yellow = {
			r = 0.86,
			g = 0.81,
			b = 0.34
		},
		grey = {
			r = 0.6,
			g = 0.6,
			b = 0.6
		},
		title_yellow = {
			r = 0.93,
			g = 0.9,
			b = 0.65
		},
		title_brown = {
			r = 0.42,
			g = 0.34,
			b = 0.15
		}
	},
	mw1_green = {
		r = 0.27,
		g = 0.65,
		b = 0.32
	},
	white = {
		r = 1,
		g = 1,
		b = 1
	},
	dark_grey = {
		r = 0.2,
		g = 0.2,
		b = 0.2
	},
	black = {
		r = 0,
		g = 0,
		b = 0
	},
	magenta = {
		r = 1,
		g = 0,
		b = 1
	},
	frontend_private_party_player_name = {
		r = 1,
		g = 0.89,
		b = 0.44
	},
	frontend_hilite = {
		r = 0.2,
		g = 0.8,
		b = 0.2
	},
	frontend_hilite_focused = {
		r = 0.1,
		g = 0.4,
		b = 0.1
	},
	frontend_lowlite = {
		r = 0.9,
		g = 0.6,
		b = 0
	},
	frontend_lowlite_focused = {
		r = 0.45,
		g = 0.3,
		b = 0
	},
	alien_frontend_hilite = {
		r = 1,
		g = 0.24,
		b = 0.04
	},
	window_title_text_color = {
		r = 0.8,
		g = 0.8,
		b = 0.8
	},
	window_border_color = {
		r = 0.4,
		g = 0.4,
		b = 0.4
	},
	orange = {
		r = 0.9,
		g = 0.6,
		b = 0
	},
	cyan = {
		r = 0.35,
		g = 0.7,
		b = 0.9
	},
	ally_cyan = {
		r = 0.35,
		g = 1,
		b = 1
	},
	green = {
		r = 0,
		g = 1,
		b = 0
	},
	blue = {
		r = 0,
		g = 0.45,
		b = 0.7
	},
	pea_green = {
		r = 0.55,
		g = 0.77,
		b = 0.24
	},
	seafoam_blue = {
		r = 0.45,
		g = 0.8,
		b = 0.78
	},
	very_dark_cyan = {
		r = 0.07,
		g = 0.1,
		b = 0.11
	},
	yellow = {
		r = 0.9,
		g = 0.78,
		b = 0.1
	},
	red = {
		r = 1,
		g = 0,
		b = 0
	},
	maroon = {
		r = 0.5,
		g = 0,
		b = 0
	},
	grey_125 = {
		r = 0.12,
		g = 0.12,
		b = 0.12
	},
	grey_14 = {
		r = 0.14,
		g = 0.14,
		b = 0.14
	},
	grey_2 = {
		r = 0.2,
		g = 0.2,
		b = 0.2
	},
	grey_22 = {
		r = 0.22,
		g = 0.22,
		b = 0.22
	},
	grey_25 = {
		r = 0.25,
		g = 0.25,
		b = 0.25
	},
	grey_4 = {
		r = 0.4,
		g = 0.4,
		b = 0.4
	},
	grey_5 = {
		r = 0.5,
		g = 0.5,
		b = 0.5
	},
	grey_6 = {
		r = 0.6,
		g = 0.6,
		b = 0.6
	},
	grey_75 = {
		r = 0.75,
		g = 0.75,
		b = 0.75
	},
	grey_84 = {
		r = 0.84,
		g = 0.84,
		b = 0.84
	},
	grey_87 = {
		r = 0.87,
		g = 0.87,
		b = 0.87
	},
	light_grey = {
		r = 0.85,
		g = 0.85,
		b = 0.85
	},
	cac_label_text = {
		r = 0.5,
		g = 0.5,
		b = 0.5
	},
	cac_item_text = {
		r = 0.9,
		g = 0.9,
		b = 0.9
	},
	cac_ability_text = {
		r = 0.8,
		g = 0.8,
		b = 0.8
	},
	cac_focus_text = {
		r = 0,
		g = 0,
		b = 0
	},
	cac_button = {
		r = 0.2,
		g = 0.2,
		b = 0.2
	},
	cac_button_focus = {
		r = 0.9,
		g = 0.9,
		b = 0.9
	},
	cac_border = {
		r = 0.5,
		g = 0.5,
		b = 0.5
	},
	cac_medium_background = {
		r = 0.31,
		g = 0.31,
		b = 0.31
	},
	build_number = {
		r = 0.75,
		g = 0.75,
		b = 0.75
	},
	primary_text_color = {
		r = 1,
		g = 1,
		b = 1
	},
	secondary_text_color = {
		r = 1,
		g = 1,
		b = 1
	},
	generic_button_bg_color = {
		r = 0.07,
		g = 0.07,
		b = 0.07
	},
	generic_menu_bg_color = {
		r = 0.13,
		g = 0.13,
		b = 0.13
	},
	generic_menu_frame_color = {
		r = 0.5,
		g = 0.5,
		b = 0.5
	},
	generic_menu_frame_alt_color = {
		r = 0.45,
		g = 0.45,
		b = 0.45
	},
	generic_screen_dim_color = {
		r = 0,
		g = 0,
		b = 0,
		a = 0.5
	},
	generic_button_text_default_color = {
		r = 0.49,
		g = 0.49,
		b = 0.49,
		a = 1
	},
	generic_description_text_default_color = {
		r = 0.73,
		g = 0.73,
		b = 0.73
	},
	generic_button_text_focus_color = {
		r = 1,
		g = 1,
		b = 1,
		a = 1
	},
	generic_button_content_focus_color = {
		r = 1,
		g = 1,
		b = 1,
		a = 1
	},
	generic_button_text_disabled_color = {
		r = 1,
		g = 1,
		b = 1,
		a = 0.35
	},
	generic_button_text_over_disabled_color = {
		r = 1,
		g = 1,
		b = 1,
		a = 1
	},
	generic_button_text_over_disabled_pulse_color = {
		r = 1,
		g = 1,
		b = 1,
		a = 0.65
	},
	generic_button_border_color = {
		r = 0.22,
		g = 0.22,
		b = 0.22,
		a = 1
	},
	generic_highlight_glow = {
		r = 0.8,
		g = 0.8,
		b = 0.8
	},
	generic_highlight_glow_alpha = 0.3,
	s1Hud_dark_blue_grey = {
		r = 0.32,
		g = 0.33,
		b = 0.34
	},
	s1Hud_med_grey = {
		r = 0.55,
		g = 0.55,
		b = 0.55
	},
	s1Hud_red = {
		r = 1,
		g = 0.37,
		b = 0.29
	},
	s1Hud_bright_red = {
		r = 0.95,
		g = 0.21,
		b = 0.25
	},
	s1Hud_gold = {
		r = 1,
		g = 0.78,
		b = 0.29
	},
	s1Hud_canary = {
		r = 1,
		g = 0.93,
		b = 0.44
	},
	s1Hud_aqua = {
		r = 0.72,
		g = 0.99,
		b = 0.99
	},
	s1Hud_amber = {
		r = 0.95,
		g = 0.53,
		b = 0.25
	},
	s1Hud_maui_blue = {
		r = 0.42,
		g = 0.8,
		b = 1
	},
	s1Hud_blueParrot = {
		r = 0.73,
		g = 0.95,
		b = 0.96
	},
	s1Hud_burgundy = {
		r = 0.72,
		g = 0.2,
		b = 0.2
	},
	s1Hud_bayCrab = {
		r = 0.85,
		g = 0.35,
		b = 0.35
	},
	s1Hud_skinTone = {
		r = 1,
		g = 0.73,
		b = 0.58
	},
	s1Hud_ikura = {
		r = 0.95,
		g = 0.42,
		b = 0
	},
	s1Hud_strawberry = {
		r = 0.72,
		g = 0,
		b = 0
	},
	s1Hud_vanillaMacaron = {
		r = 1,
		g = 0.96,
		b = 0.89
	},
	s1Hud_cardboardYellow = {
		r = 0.85,
		g = 0.76,
		b = 0.35
	},
	upgrades_yellow = {
		r = 1,
		g = 0.92,
		b = 0.43
	},
	upgrades_dark_orange = {
		r = 0.38,
		g = 0.16,
		b = 0.03
	},
	goldenrod = {
		r = 1,
		g = 0.75,
		b = 0.06
	},
	s1Hud_contractedYellow = {
		r = 0.96,
		g = 0.96,
		b = 0.58
	},
	s1Hud_shadow = {
		r = 1,
		g = 0.83,
		b = 0.62
	},
	s1Hud_expanded = {
		r = 0.33,
		g = 0.24,
		b = 0.08
	},
	s1Hud_StockBrown = {
		r = 0.67,
		g = 0.59,
		b = 0.41
	},
	sea_green = {
		r = 0.28,
		g = 0.9,
		b = 0.55
	},
	hud_warning = {
		r = 0.89,
		g = 0.24,
		b = 0.28
	},
	hud_low_ammo_yellow = {
		r = 1,
		g = 0.99,
		b = 0.14
	}
}
GenericMenuColors = {
	selected = Colors.h2.yellow,
	text_highlight = Colors.h2.yellow,
	divider = Colors.h2.yellow,
	title_divider = Colors.h2.grey,
	line = Colors.h2.yellow,
	outline = Colors.h2.yellow
}
Swatches = {
	GenericMenu = {
		Background = Colors.very_dark_cyan,
		Border = Colors.window_border_color,
		BackgroundAlpha = 0.4,
		BorderAlpha = 0.4
	},
	Overlay = {
		Color = Colors.very_dark_cyan,
		Alpha = 0.4,
		AlphaMedium = 0.7,
		AlphaMore = 0.85
	},
	HUD = {
		Highlight = Colors.s1Hud_gold,
		HighlightAlt = GenericMenuColors.text_highlight,
		AccentLine = Colors.s1Hud_dark_blue_grey,
		AccentLineAlpha = 0.35,
		ActiveState = Colors.white,
		InactiveState = Colors.s1Hud_red,
		PrimaryFontColor = Colors.white,
		SecondaryFontColor = Colors.s1Hud_med_grey,
		HeatGaugeCool = Colors.s1Hud_aqua,
		HeatGaugeHot = Colors.red,
		Allies = Colors.s1Hud_maui_blue,
		Enemies = Colors.s1Hud_burgundy,
		Me = Colors.white,
		Party = Colors.s1Hud_aqua,
		Normal = Colors.white,
		Warning = Colors.s1Hud_bright_red,
		Caution = Colors.s1Hud_bright_red,
		PingBad = Colors.s1Hud_bayCrab,
		PingMedium = Colors.s1Hud_cardboardYellow,
		PingGood = Colors.green,
		ScoreEnemy = Colors.grey_87,
		ScoreLosing = Colors.grey_87,
		ScoreTied = Colors.grey_87,
		ScoreWinning = Colors.grey_87,
		WeaponName = Colors.s1Hud_maui_blue,
		HeatLow = Colors.s1Hud_skinTone,
		HeatMedium = Colors.s1Hud_ikura,
		HeatHigh = Colors.s1Hud_strawberry,
		KillstreakEarned = Colors.s1Hud_canary
	},
	MatchCountdown = {
		Time = Colors.mw1_green
	},
	Scoreboard = {
		DefaultRowBG = Colors.black,
		DefaultRowBgAlpha = 0.25,
		MyRowBG = Colors.white,
		DeadRowBG = Colors.red,
		SpectatedPlayerHL = Colors.s1Hud_canary
	},
	RoundEnd = {
		OtherTeam = Colors.grey_87,
		MatchBonus = Colors.s1Hud_canary,
		Reason = Colors.grey_87,
		FFAPlayer = Colors.grey_5,
		FFAMeWinning = Colors.white
	},
	Upgrades = {
		FillAlpha = 0.05,
		Focused = Colors.upgrades_yellow,
		Purchased = Colors.upgrades_dark_orange,
		Points = Colors.goldenrod,
		ChallengeProgress = Colors.upgrades_yellow,
		Error = Colors.maroon
	},
	ExoSuit = {
		MainTint = Colors.s1Hud_vanillaMacaron,
		WeaknessNormal = Colors.s1Hud_vanillaMacaron,
		WeaknessDamaged = Colors.s1Hud_cardboardYellow,
		WeaknessCritical = Colors.s1Hud_burgundy,
		AttachmentNormal = Colors.white,
		AttachmentCooldown = Colors.grey_6,
		AttachmentReady = Colors.s1Hud_blueParrot
	},
	CombatRecord = {
		DebugFontColor = Colors.yellow,
		FontColor = Colors.white,
		FontAlpha = 1,
		SeperatorColor = Colors.grey_5,
		SeperatorAlpha = 1,
		Career = {
			RankAndLevel = {
				BackgroundColor = Colors.grey_2,
				BackgroundAlpha = 1,
				BarMin = {
					Color = Colors.grey_25,
					Alpha = 1
				},
				BarMid = {
					Color = Colors.grey_75,
					Alpha = 1,
					Color2 = Colors.grey_5,
					Alpha2 = 1
				},
				BarMax = {
					Color = Colors.grey_5,
					Alpha = 1
				}
			}
		},
		Trends = {
			Col = {
				HeaderDate = {
					Color = Colors.grey_125,
					Alpha = 1
				},
				HeaderTime = {
					Color = Colors.grey_25,
					Alpha = 1
				},
				Body = {
					Color = Colors.grey_5,
					Alpha = 1
				}
			},
			Line = {
				Color = Colors.white,
				Alpha = 1
			},
			Point = {
				Color = Colors.white,
				Alpha = 1
			}
		},
		Weapons = {
			Image = {
				Color = Colors.grey_25,
				Alpha = 1
			}
		},
		GameModes = {
			TextTitle = {
				Color = Colors.grey_25,
				Alpha = 1
			}
		}
	},
	OpLeaderboard = {
		DebugFontColor = Colors.yellow,
		FontColor = Colors.white,
		FontAlpha = 1,
		Header = {
			BackgroundColor = Colors.grey_75,
			BackgroundAlpha = 0,
			FontColor = Colors.white,
			FontAlpha = 1
		},
		PlayerLine = {
			Color = Colors.grey_5,
			Alpha = 0,
			FontColor = Colors.sea_green,
			FontAlpha = 1
		},
		List = {
			SelectedColor = Colors.orange,
			SelectedAlpha = 0,
			BackgroundColor = Colors.black,
			BackgroundAlpha = 0,
			BackgroundYouColor = Colors.grey_25,
			BackgroundYouAlpha = 0,
			FontColor = Colors.generic_button_text_default_color,
			FontAlpha = 1,
			FontFocusedColor = Colors.generic_button_text_focus_color,
			FontFocusedAlpha = 1
		},
		Footer = {
			FontColor = Colors.white,
			FontAlpha = 1
		}
	}
}
BrightnessGuideConstants = {
	not_visible = {
		item_id = "bg_not_visible",
		color_default = 0.02
	},
	barely_visible = {
		item_id = "bg_barely_visible",
		color_default = 0.06
	},
	easily_visible = {
		item_id = "bg_easily_visible",
		color_default = 0.19
	}
}
f0_local3 = 2
if Engine.IsAsianLanguage() or Engine.IsRightToLeftLanguage() then
	f0_local3 = 0
end
GenericButtonSettings = {
	Variants = {
		Plain = "Plain",
		Info = "Info",
		Select = "Select",
		Slider = "Slider",
		Checkbox = "Checkbox",
		Input = "Input"
	},
	Common = {
		force_enable_action_button = false,
		force_disable_action_button = false,
		y_offset = -3,
		disable_height_guard = false,
		text_align_without_content = LUI.Alignment.Left,
		text_align_with_content = LUI.Alignment.Left,
		text_padding_without_content = 10,
		text_padding_with_content = 10,
		text_padding_focus_without_content = 10,
		text_padding_focus_with_content = 10,
		content_cap_width = 32,
		content_background_margin_top = 0,
		content_background_margin_bottom = 0,
		label_align = LUI.Alignment.Center,
		over_disabled_animation_duration = 300,
		visual_focus_animation_duration = 0,
		content_margin = 12,
		content_width = 220,
		content_arrows_margin = 0,
		content_slider_height = 10,
		content_slider_width = 180,
		text_default_color = Colors.generic_button_text_default_color,
		text_focus_color = Colors.generic_button_text_focus_color,
		text_lock_color = Colors.generic_button_text_focus_color,
		content_default_color = Colors.generic_button_text_default_color,
		pinned_color = Colors.h2.yellow,
		content_focus_color = Colors.h2.yellow,
		content_focus_color_without_bg = Colors.h2.yellow,
		content_lock_color = Colors.generic_button_content_focus_color,
		text_disabled_color = Colors.generic_button_text_disabled_color,
		text_over_disabled_color = Colors.generic_button_text_over_disabled_color,
		text_over_disabled_pulse_color = Colors.generic_button_text_over_disabled_pulse_color,
		border_color = Colors.generic_button_border_color,
		negative_color = false,
		disable_highlight_glow = true,
		field_edited_func = function ()
			
		end,
		max_length = 20,
		password_field = false,
		keyboard_type = CoD.KeyboardInputTypes.Normal,
		text_alignment = LUI.Alignment.Left,
		field_name = "Placeholder Field Name",
		loading_icon_margin = 5,
		loading_icon_height = 32,
		fadeIn = false,
		H1OptionButton = false,
		lockedHighlight = false
	},
	Styles = {
		GradientButton = {
			y_offset = f0_local3,
			height = 33.33,
			lt_cap_width = 170.67,
			rt_cap_width = 85.33,
			content_cap_width = 0,
			content_margin = 26,
			content_width = 236,
			content_background_margin_top = 7,
			content_background_margin_bottom = 12,
			action_button_margin = 23,
			slide_in_min_duration = 60,
			slide_in_duration_step = 25,
			focus_animation_distance = 0,
			focus_animation_duration = 0,
			focus_glow_animation_duration = 1200,
			focus_action_button_glow_max_alpha = 0.35,
			focus_glow_max_alpha = 0.35
		},
		FlatButton = {
			SubStyles = {
				Default = {
					background_padding = CoD.TextSettings.BodyFontSmall.Height
				},
				CacRecap = {
					background_padding = CoD.TextSettings.BodyFontSmall.Height,
					background_bypass = true,
					cacrecap_substyle = true
				},
				SubMenu = {
					border_padding = 0,
					border_height = 0,
					submenu_substyle = true,
					anim_interval = 750,
					anim_1_alpha = 0.8,
					anim_2_alpha = 0.5
				}
			},
			height = 32,
			cacrecap_substyle = false,
			submenu_substyle = false,
			y_offset = f0_local3,
			text_align_without_content = LUI.Alignment.Left,
			text_padding_with_content = 20,
			text_padding_without_content = 20,
			text_padding_focus_without_content = 20,
			text_padding_focus_with_content = 20,
			content_background_margin_top = 5,
			content_background_margin_bottom = 10,
			prompt_width = 36,
			action_button_margin = 1,
			border_padding = 4,
			border_height = 1,
			background_padding = 0,
			background_bypass = false
		},
		GlassButton = {
			SubStyles = {
				Default = {
					y_offset = f0_local3,
					height = 33.33,
					ghost_width = 0,
					ghost_height = 0,
					rt_cap_width = 85.33,
					action_button_margin = 11,
					border_padding = 7
				},
				Popup = {
					y_offset = f0_local3,
					height = 33.33,
					ghost_width = 0,
					ghost_height = 0,
					rt_cap_width = 85.33,
					action_button_margin = 11,
					popup_substyle = true,
					force_disable_action_button = true,
					anim_interval = 750,
					anim_1_alpha = 0.8,
					anim_2_alpha = 0.5,
					border_padding = 7
				},
				YesNoPopup = {
					y_offset = f0_local3,
					height = 33.33,
					ghost_width = 0,
					ghost_height = 0,
					rt_cap_width = 85.33,
					action_button_margin = 11,
					popup_substyle = true,
					force_disable_action_button = true,
					anim_interval = 750,
					anim_1_alpha = 0.8,
					anim_2_alpha = 0.5,
					border_padding = 35
				},
				SubMenu = {
					y_offset = f0_local3,
					height = 33.33,
					ghost_width = 0,
					ghost_height = 0,
					rt_cap_width = 85.33,
					action_button_margin = 11,
					submenu_substyle = true,
					force_disable_action_button = true,
					anim_interval = 750,
					anim_1_alpha = 0.8,
					anim_2_alpha = 0.5,
					border_padding = 7,
					text_align_without_content = LUI.Alignment.Left
				}
			},
			popup_substyle = false,
			submenu_substyle = false,
			text_align_without_content = LUI.Alignment.Center,
			text_padding_without_content = 12,
			content_background_margin_top = 5,
			content_background_margin_bottom = 2,
			lt_cap_width = 10.67,
			border_height = 1,
			lock_padding = 7
		}
	}
}
FocusType = {
	MenuFlow = 0,
	MouseOver = 1,
	ListSelection = 2,
	Gamepad = 3
}
DvarTypeTable = {
	DvarBool = 0,
	DvarFloat = 1,
	DvarInt = 5,
	DvarEnum = 6,
	DvarString = 7
}
SliderBounds = {
	Brightness = {
		Min = -0.4,
		Max = 0.2,
		Step = -0.01
	},
	PCBrightness = {
		Min = -0.4,
		Max = 0.2,
		Step = -0.01
	},
	HorzMargin = {
		Min = 0.9,
		Max = 1,
		Step = 0
	},
	MouseSensitivity = {
		Min = 1,
		Max = 30,
		Step = 1
	},
	MouseAcceleration = {
		Min = 0,
		Max = 1,
		Step = 0.04
	},
	VertMargin = {
		Min = 0.9,
		Max = 1,
		Step = 0
	},
	Volume = {
		Min = 0,
		Max = 1,
		Step = 0.02,
		PCStep = 0.02
	},
	VoiceRecord = {
		Min = 0,
		Max = 65535,
		Step = 655
	},
	VoiceThreshold = {
		Min = 0,
		Max = 65535,
		Step = 655
	},
	FOV = {
		Min = 1,
		Max = 1.6,
		Step = 0.02
	}
}
MousePitchTable = {
	PitchFloat = 0.02
}
VirtualLobbyModes = {
	LUI_MODE_PRELOBBY = 0,
	LUI_MODE_LOBBY = 1,
	LUI_MODE_CAC = 2,
	LUI_MODE_CAO = 3,
	LUI_MODE_OBSCURED = 4,
	LUI_MODE_CLANPROFILE = 5,
	LUI_MODE_CAC_WEAP = 6,
	LUI_MODE_CAO_CHARACTER = 7,
	LUI_MODE_CAO_CAMOUFLAGE = 8
}
f0_local4 = Engine.GetDvarBool
Engine.GetDvarBool = function ( f20_arg0 )
	local f20_local0 = f0_local4( f20_arg0 )
	local f20_local1 = type( f20_local0 )
	if f20_local1 == "number" then
		return f20_local0 ~= 0
	elseif f20_local1 == "boolean" then
		return f20_local0
	else
		return nil
	end
end

CoD.SetMaterial = function ( f21_arg0, f21_arg1, f21_arg2, f21_arg3, f21_arg4, f21_arg5, f21_arg6 )
	if f21_arg2 == nil then
		f21_arg2 = 1
	end
	if f21_arg3 == nil then
		f21_arg3 = 0
	end
	if f21_arg4 == nil then
		f21_arg0:registerAnimationState( "changeMaterial", {
			material = f21_arg1,
			alpha = f21_arg2
		} )
	else
		f21_arg0:registerAnimationState( "changeMaterial", {
			material = f21_arg1,
			alpha = f21_arg2,
			red = f21_arg4,
			green = f21_arg5,
			blue = f21_arg6
		} )
	end
	f21_arg0:animateToState( "changeMaterial", f21_arg3 )
end

CoD.UsingController = function ()
	local f22_local0 = Engine.IsConsoleGame()
	if not f22_local0 then
		f22_local0 = Engine.IsGamepadEnabled()
	end
	return f22_local0
end

CoD.MuteStrategies = {
	MuteStrategyUnmute = 0,
	MuteStrategyMuteAll = 1,
	MuteStrategyMuteAllButParty = 2,
	MuteStrategyMuteAllButFriends = 3,
	MuteStrategyUnmuteAllButFriends = 4,
	MuteStrategyUnmuteAllButParty = 5
}
CoD.WeaponListPrimary = {
	iw5_bal27 = 1,
	iw5_bal27atlas = 1,
	iw5_ak12 = 1,
	iw5_m182spr = 1,
	iw5_hbra3 = 1,
	iw5_himar = 1,
	iw5_arx160 = 1,
	iw5_sn6 = 1,
	iw5_mp11 = 1,
	iw5_hmr9 = 1,
	iw5_sac3 = 1,
	iw5_asm1 = 1,
	iw5_kf5 = 1,
	iw5_mors = 1,
	iw5_gm6 = 1,
	iw5_m990 = 1,
	iw5_thor = 1,
	iw5_uts19 = 1,
	iw5_rhino = 1,
	iw5_maul = 1,
	iw5_lsat = 1,
	iw5_asaw = 1,
	iw5_em1 = 1,
	iw5_em1gold = 1,
	iw5_em1atlas = 1,
	iw5_epm3 = 1,
	iw5_exoxmg = 1,
	iw5_riotshieldt6 = 1,
	iw5_ak47 = 1,
	iw5_m16 = 1,
	iw5_fad = 1,
	iw5_acr = 1,
	iw5_type95 = 1,
	iw5_m14 = 1,
	iw5_scar = 1,
	iw5_g36c = 1,
	iw5_cm901 = 1,
	iw5_mp5 = 1,
	iw5_mp7 = 1,
	iw5_m9 = 1,
	iw5_p90 = 1,
	iw5_barrett = 1,
	iw5_rsass = 1,
	iw5_dragunov = 1,
	iw5_msr = 1,
	iw5_as50 = 1,
	iw5_ksg = 1,
	iw5_1887 = 1,
	iw5_striker = 1,
	iw5_aa12 = 1,
	iw5_usas12 = 1,
	iw5_spas12 = 1,
	xm45 = 1,
	iw5_m60 = 1,
	iw5_mk46 = 1,
	iw5_pecheneg = 1,
	iw5_sa80 = 1,
	iw5_mg36 = 1,
	iw5_l96a1 = 1,
	iw5_m60jugg = 1,
	s1_kriss = 1,
	s1_ak12 = 1,
	s1_sc2010 = 1,
	s1_m27 = 1,
	s1_vks = 1,
	s1_imbel = 1,
	s1_fp6 = 1,
	s1_pp19 = 1,
	s1_vepr = 1,
	s1_honeybadger = 1,
	s1_l115a3 = 1,
	s1_maul = 1,
	s1_microtar = 1,
	s1_alienmaul = 1,
	s1_alienhoneybadger = 1,
	s1_alienmk32 = 1,
	s1_alienvks = 1,
	s1_alienfp6 = 1,
	s1_alienak12 = 1,
	iw5_alienacr = 1,
	s1_alienm27 = 1,
	s1_alienp226 = 1
}
CoD.WeaponListSecondary = {
	iw5_titan45 = 1,
	iw5_titan45atlas = 1,
	iw5_vbr = 1,
	iw5_pbw = 1,
	iw5_rw1 = 1,
	iw5_maaws = 1,
	iw5_mahem = 1,
	iw5_exocrossbow = 1,
	iw5_exocrossbowblops2 = 1,
	s1_p226 = 1,
	s1_m9a1 = 1,
	iw5_44magnum = 1,
	iw5_usp45 = 1,
	iw5_deserteagle = 1,
	iw5_mp412 = 1,
	iw5_g18 = 1,
	iw5_fmg9 = 1,
	iw5_mp9 = 1,
	iw5_skorpion = 1,
	iw5_p99 = 1,
	iw5_fnfiveseven = 1,
	m320 = 1,
	rpg = 1,
	stinger = 1,
	javelin = 1,
	xm45 = 1,
	iw5_usp45jugg = 1,
	iw5_mp412jugg = 1,
	alienaxe = 1
}
CoD.WeaponListKillstreak = {
	radar_mp = 1,
	airstrike_mp = 1,
	helicopter_mp = 1
}
CoD.WeaponListSpecial = {
	briefcase_bomb_mp = 1,
	briefcase_bomb_defuse_mp = 1
}
CoD.UsingKillstreakRemote = function ()
	return false
end

CoD.UsingAccuracyGreeble1 = function ( f24_arg0 )
	return Game.GetPlayerWeaponGreebleName( f24_arg0 ) == "accuracy_level1"
end

CoD.UsingAccuracyGreeble2 = function ( f25_arg0 )
	return Game.GetPlayerWeaponGreebleName( f25_arg0 ) == "accuracy_level2"
end

CoD.UsingCombatKnife = function ( f26_arg0 )
	local f26_local0 = string.find( f26_arg0, "_" )
	local f26_local1 = nil
	if f26_local0 ~= nil then
		f26_local1 = string.sub( f26_arg0, 1, f26_local0 - 1 )
		if f26_local1 == "iw5" then
			f26_local1 = string.sub( f26_arg0, 1, string.find( f26_arg0, "_", f26_local0 + 1 ) - 1 )
		end
		if f26_local1 == "iw5_combatknife" then
			return true
		else
			return false
		end
	else
		return false
	end
end

CoD.ColorizeState = function ( f27_arg0, f27_arg1 )
	if not f27_arg1 then
		f27_arg1 = {}
	end
	if not f27_arg0 then
		DebugPrint( "Warning: Calling CoD.ColorizeState without specifying a color" )
		return f27_arg1
	end
	f27_arg1.red = f27_arg0.r
	f27_arg1.green = f27_arg0.g
	f27_arg1.blue = f27_arg0.b
	local f27_local0 = f27_arg0.a
	if not f27_local0 then
		f27_local0 = f27_arg1.alpha or 1
	end
	f27_arg1.alpha = f27_local0
	return f27_arg1
end

CoD.PrintModuleLoad = function ( f28_arg0 )
	
end

CoD.StatsGroup = {
	Ranked = 0,
	Private = 1,
	Coop = 2,
	Common = 4,
	SP = 5
}
CoD.GetStatsGroupForGameMode = function ()
	return Engine.GetStatsGroupForGameMode()
end

if f0_local0 then
	f0_local4 = profile.beginuserevent
	f0_local5 = profile.enduserevent
	profile.beginuserevent = function ( f30_arg0 )
		if type( f30_arg0 ) ~= "number" then
			f30_arg0 = profile.lookupusereventid( f30_arg0 ) or profile.createuserevent( f30_arg0, "duration" )
		end
		f0_local4( f30_arg0 )
		return f30_arg0
	end
	
	profile.enduserevent = function ( f31_arg0 )
		if type( f31_arg0 ) ~= "number" then
			f31_arg0 = profile.lookupusereventid( f31_arg0 )
		end
		f0_local5( f31_arg0 )
	end
	
else
	profile.beginuserevent = function ()
		
	end
	
	profile.enduserevent = function ()
		
	end
	
	profile.createuserevent = function ()
		
	end
	
	profile.lookupusereventid = function ()
		
	end
	
end
if f0_local1 then
	function run_gc( f36_arg0 )
		local f36_local0
		if f36_arg0 then
			f36_local0 = " (" .. f36_arg0 .. ")"
			if not f36_local0 then
			
			else
				local f36_local1 = collectgarbage( "count" )
				collectgarbage( "collect" )
				local f36_local2 = collectgarbage( "count" )
				DebugPrint( "LUI - Ran GC cycle, cleared " .. f36_local1 - f36_local2 .. "kb. " .. f36_local2 .. "kb remaining." .. f36_local0 )
			end
		end
		f36_local0 = ""
	end
	
else
	function run_gc()
		collectgarbage( "collect" )
	end
	
end
function hashset( f38_arg0 )
	local f38_local0 = {}
	for f38_local4, f38_local5 in pairs( f38_arg0 ) do
		f38_local0[f38_local5] = true
	end
	return f38_local0
end

f0_local4 = {}
f0_local5 = {}
CoD.StartEventSound = function ()
	f0_local4[#f0_local4 + 1] = nil
	f0_local5[#f0_local5 + 1] = 0
end

CoD.PlayEventSound = function ( f40_arg0, f40_arg1 )
	if 0 < #f0_local5 and f0_local5[#f0_local5] < f40_arg1 then
		f0_local4[#f0_local4] = f40_arg0
		f0_local5[#f0_local5] = f40_arg1
	end
end

CoD.EndEventSound = function ()
	if f0_local4[#f0_local4] then
		Engine.PlaySound( f0_local4[#f0_local4] )
	end
	f0_local4[#f0_local4] = nil
	f0_local5[#f0_local5] = nil
end

function bit( f42_arg0 )
	return 2 ^ (f42_arg0 - 1)
end

function hasbit( f43_arg0, f43_arg1 )
	return f43_arg1 <= f43_arg0 % (f43_arg1 + f43_arg1)
end

function setbit( f44_arg0, f44_arg1 )
	if hasbit( f44_arg0, f44_arg1 ) then
		local f44_local0 = f44_arg0
	end
	return f44_local0 or f44_arg0 + f44_arg1
end

function clearbit( f45_arg0, f45_arg1 )
	return hasbit( f45_arg0, f45_arg1 ) and f45_arg0 - f45_arg1 or f45_arg0
end

function IsCurrentSticksLayoutSouthpaw()
	return Engine.GetProfileData( "gpadSticksConfig" ) == "thumbstick_southpaw"
end

function IsCurrentSticksLayoutLegacy()
	return Engine.GetProfileData( "gpadSticksConfig" ) == "thumbstick_legacy"
end

function IsCurrentSticksLayoutLegacySouthpaw()
	return Engine.GetProfileData( "gpadSticksConfig" ) == "thumbstick_legacysouthpaw"
end

CoD.CreateState = function ( f49_arg0, f49_arg1, f49_arg2, f49_arg3, f49_arg4 )
	return {
		left = f49_arg0,
		top = f49_arg1,
		right = f49_arg2,
		bottom = f49_arg3,
		leftAnchor = f49_arg4.leftAnchor,
		topAnchor = f49_arg4.topAnchor,
		rightAnchor = f49_arg4.rightAnchor,
		bottomAnchor = f49_arg4.bottomAnchor
	}
end

CoD.AnchorTypes = {
	All = {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = true
	},
	None = {
		leftAnchor = false,
		topAnchor = false,
		rightAnchor = false,
		bottomAnchor = false
	},
	Top = {
		leftAnchor = false,
		topAnchor = true,
		rightAnchor = false,
		bottomAnchor = false
	},
	TopLeft = {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = false,
		bottomAnchor = false
	},
	TopRight = {
		leftAnchor = false,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = false
	},
	TopLeftRight = {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = false
	},
	Bottom = {
		leftAnchor = false,
		topAnchor = false,
		rightAnchor = false,
		bottomAnchor = true
	},
	BottomLeft = {
		leftAnchor = true,
		topAnchor = false,
		rightAnchor = false,
		bottomAnchor = true
	},
	BottomRight = {
		leftAnchor = false,
		topAnchor = false,
		rightAnchor = true,
		bottomAnchor = true
	},
	BottomLeftRight = {
		leftAnchor = true,
		topAnchor = false,
		rightAnchor = true,
		bottomAnchor = true
	},
	TopBottom = {
		leftAnchor = false,
		topAnchor = true,
		rightAnchor = false,
		bottomAnchor = true
	},
	TopBottomLeft = {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = false,
		bottomAnchor = true
	},
	TopBottomRight = {
		leftAnchor = false,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = true
	},
	Left = {
		leftAnchor = true,
		topAnchor = false,
		rightAnchor = false,
		bottomAnchor = false
	},
	Right = {
		leftAnchor = false,
		topAnchor = false,
		rightAnchor = true,
		bottomAnchor = false
	},
	LeftRight = {
		leftAnchor = true,
		topAnchor = false,
		rightAnchor = true,
		bottomAnchor = false
	}
}
if Engine.UsingSplitscreenUpscaling() then
	GenericMenuDims.menu_top = GenericMenuDims.menu_top - 10
	GenericMenuDims.menu_bottom = GenericMenuDims.menu_top + GenericButtonSettings.Styles.GradientButton.height * 6
	GenericMenuDims.menu_bottom_tall = GenericMenuDims.menu_top + GenericButtonSettings.Styles.GradientButton.height * 9
end
CoD.IsUsingAspectRatio = function ( f50_arg0 )
	return math.abs( f50_arg0 - Engine.GetAspectRatio() ) < 0.01
end

CoD.Depths = {
	Default = 1,
	BehindVirtualLobby = 0.01
}
LootTable = {
	File = "mp/loot.csv",
	Cols = {
		Ref = 0,
		Type = 1,
		GUID = 2,
		Rarity = 3,
		Value = 4,
		Purchase = 5,
		Lootdrop = 6
	}
}
CallingCardTable = {
	File = "mp/callingcards.csv",
	Cols = {
		Ref = 0,
		Image = 1,
		Name = 2,
		Cost = 3,
		UnlockLevel = 4,
		UnlockPLevel = 5,
		Hidden = 6,
		Category = 7,
		AwardTag = 8,
		ClanEntitlement = 9,
		WedgeR = 10,
		WedgeG = 11,
		WedgeB = 12,
		AnimatedTable = 13,
		IsDLC = 14,
		Guid = 15
	}
}
EmblemIconTable = {
	File = "mp/emblemsorbackings.csv",
	Cols = {
		Type = 0,
		ID = 1,
		SortKey = 2,
		Image = 3,
		Name = 4,
		Cost = 5,
		UnlockLevel = 6,
		UnlockPLevel = 7,
		UnclassifyAt = 8,
		Category = 9,
		IconType = 10,
		OutlineSize = 11,
		Challenge = 12,
		DLCLevelRequired = 14,
		DLCEarlyAccess = 15,
		IsDLC = 19,
		Guid = 20
	}
}
EmblemDataSource = {
	Edit = 0,
	Pool = 1,
	Cache = 2,
	Profile = 3,
	Clan = 4,
	RemoteClan = 5
}
function IsStreamingInstall()
	if Engine.UsingStreamingInstall() then
		local f51_local0, f51_local1 = Engine.StreamingCheckInstall()
		if f51_local0 ~= 1 then
			return true
		end
	end
	return false
end

CoD.LargestFontWithoutBreaks = function ( f52_arg0, f52_arg1, f52_arg2 )
	assert( f52_arg2 and type( f52_arg2 ) == "table" )
	assert( #f52_arg2 > 0 )
	local f52_local0 = f52_arg2
	table.sort( f52_local0, function ( f53_arg0, f53_arg1 )
		return f53_arg1.Height < f53_arg0.Height
	end )
	for f52_local4, f52_local5 in ipairs( f52_local0 ) do
		local f52_local6, f52_local7, f52_local8, f52_local9 = GetTextDimensions( f52_arg0, f52_local5.Font, f52_local5.Height )
		if f52_local8 - f52_local6 < f52_arg1 then
			return f52_local5, true
		end
	end
	return f52_local0[1], false
end

CoD.GetPlacementStringForNum = function ( f54_arg0 )
	local f54_local0 = {
		"LUA_MENU_1ST",
		"LUA_MENU_2ND",
		"LUA_MENU_3RD",
		"LUA_MENU_4TH",
		"LUA_MENU_5TH",
		"LUA_MENU_6TH",
		"LUA_MENU_7TH",
		"LUA_MENU_8TH",
		"LUA_MENU_9TH",
		"LUA_MENU_10TH",
		"LUA_MENU_11TH",
		"LUA_MENU_12TH",
		"LUA_MENU_13TH",
		"LUA_MENU_14TH",
		"LUA_MENU_15TH",
		"LUA_MENU_16TH",
		"LUA_MENU_17TH",
		"LUA_MENU_18TH"
	}
	if f54_arg0 and f54_arg0 > 0 and f54_arg0 < #f54_local0 then
		return Engine.Localize( f54_local0[f54_arg0] )
	else
		return f54_arg0
	end
end

CoD.GameDVREnableCount = 0
CoD.GameDVREnable = function ()
	CoD.GameDVREnableCount = CoD.GameDVREnableCount - 1
	if CoD.GameDVREnableCount == 0 then
		Engine.GameDVRProhibitSharePlayScreen( false )
		Engine.GameDVRProhibitRecording( false )
		Engine.GameDVRProhibitScreenshots( false )
	end
end

CoD.GameDVRDisable = function ()
	Engine.GameDVRProhibitSharePlayScreen( true )
	Engine.GameDVRProhibitRecording( true )
	Engine.GameDVRProhibitScreenshots( true )
	CoD.GameDVREnableCount = CoD.GameDVREnableCount + 1
end

CoD.ChangeDifficulty = function ( f57_arg0 )
	DebugPrint( "setting player 1 & 2 difficulty to " .. f57_arg0 )
	Engine.SetDvarInt( "g_gameskill_player_1", f57_arg0 )
	Engine.SetDvarInt( "g_gameskill_player_2", f57_arg0 )
	Engine.SetDvarInt( "g_gameskill", f57_arg0 )
	Engine.Exec( "profile_difficultySave " .. f57_arg0 )
	Engine.Exec( "updategamerprofile" )
end

CoD.FormatClanAndGamerTags = function ( f58_arg0, f58_arg1 )
	local f58_local0 = ""
	if f58_arg0 and f58_arg0 ~= "" then
		f58_local0 = f58_local0 .. "[" .. f58_arg0 .. "]"
	end
	return f58_local0 .. f58_arg1
end

CoD.IsCoDAccountRegistrationAvailableInMyRegion = function ()
	if Engine.IsAsianLanguage() or Engine.IsRightToLeftLanguage() or Engine.GetCurrentLanguage() == CoD.Language.Arabic then
		return false
	else
		return true
	end
end

CoD.IsCPEnabled = function ()
	return Engine.GetDvarInt( "ui_enable_cp" ) == 1
end

CoD.IsCampaignOnly = function ()
	return true
end

CoD.SetHDREnabled = function ( f62_arg0, f62_arg1 )
	Engine.SetProfileData( "hdrEnabled", f62_arg1, f62_arg0 )
	Engine.ApplyHDRProfileValues( f62_arg0 )
end

f0_local6 = CoD
f0_local7 = "AllowCheat"
f0_local8 = Engine.IsDevelopmentBuild()
if not f0_local8 then
	f0_local8 = Engine.GetDvarBool( "ship_progression_cheat" )
end
f0_local6[f0_local7] = f0_local8
CoD.AllowUnlockAllInShip = false
CoD.IsCampaignCompleted = function ( f63_arg0, f63_arg1 )
	local f63_local0 = false
	if CoD.AllowCheat then
		f63_local0 = Engine.GetDvarBool( "ui_cheat_unlock_all_mission" )
	end
	local f63_local1 = function ()
		local f64_local0
		if CoD.AllowCheat or Engine.GetDvarBool( "mis_cheat" ) then
			f64_local0 = not f63_local0
		else
			f64_local0 = true
		end
		return f64_local0
	end
	
	local f63_local2 = function ( f65_arg0, f65_arg1 )
		if not (not f65_arg1 or not Engine.GetDvarBool( "profileMenuOption_hasUnlockedAll_SP" )) or not f63_local1() then
			return true
		else
			local f65_local0 = Engine.GetHighestDifficultyForLevel( f65_arg0 - 1, Engine.GetControllerForLocalClient( 0 ) )
			if f65_local0 == nil or f65_local0 == "" then
				return false
			else
				return true
			end
		end
	end
	
	for f63_local3 = 1, CoD.LastLevelIndex, 1 do
		if f63_local3 ~= 4 and not f63_local2( f63_local3, CoD.AllowUnlockAllInShip ) then
			return false
		end
	end
	return true
end

CoD.InitializeCheat = function ( f66_arg0, f66_arg1 )
	if not CoD.AllowCheat or Engine.GetDvarBool( "limited_mode" ) then
		return 
	elseif Engine.GetDvarBool( "ui_cheat_unlock_all_mission" ) == nil then
		Engine.SetDvarBool( "ui_cheat_unlock_all_mission", CoD.AllowCheat, true )
	end
	local f66_local0 = function ( f67_arg0, f67_arg1 )
		Engine.SetDvarBool( "ui_cheat_unlock_all_mission", not Engine.GetDvarBool( "ui_cheat_unlock_all_mission" ), true )
		if f66_arg1 then
			f66_arg1( f67_arg0, f67_arg1 )
		end
	end
	
	local self = LUI.UIBindButton.new()
	self.id = "level_select_cheat_button"
	self:registerEventHandler( "button_l3", f66_local0 )
	self:registerEventHandler( "key_insert", f66_local0 )
	f66_arg0:addElement( self )
end

CoD.CanToggleHDRRuntime = function ()
	return Engine.IsPS4()
end

CoD.IsHDRAvailable = function ()
	return Engine.GetDvarBool( "r_hdrDisplaySupport" )
end

CoD.IsHDRUnavailable = function ()
	return not CoD.IsHDRAvailable()
end

CoD.IsHDREnabled = function ()
	local f71_local0 = CoD.IsHDRAvailable()
	if f71_local0 then
		if CoD.CanToggleHDRRuntime() then
			f71_local0 = Engine.GetProfileData( "hdrEnabled", Engine.GetControllerForLocalClient( 0 ) )
		else
			f71_local0 = true
		end
	end
	return f71_local0
end

CoD.IsHDRDisabled = function ()
	return not CoD.IsHDREnabled()
end

