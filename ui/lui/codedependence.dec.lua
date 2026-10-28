function ModuleInaccessible( f1_arg0 )
	assert( not _G[f1_arg0] )
	_G[f1_arg0] = setmetatable( {}, {
		__index = function ( f2_arg0, f2_arg1 )
			return function ()
				assert( false, "Functions from the " .. f1_arg0 .. " module are not allowed to be called from this scope." )
			end
			
		end
	} )
end

if Engine then
	Engine.UsingSplitscreenUpscaling = Engine.UsingSplitscreenUpscaling or function ()
		return false
	end
	
	Engine.IsNetworkConnected = Engine.IsNetworkConnected or function ()
		return true
	end
	
	Engine.HasAcceptedInvite = Engine.HasAcceptedInvite or function ()
		return false
	end
	
	Engine.SetAndEnableCustomClanTag = Engine.SetAndEnableCustomClanTag or function ()
		
	end
	
	Engine.CanViewClanTags = Engine.CanViewClanTags or function ()
		return true
	end
	
	Engine.IsUserUGCRestricted = Engine.IsUserUGCRestricted or function ()
		return false
	end
	
	Engine.AllowOnline = Engine.AllowOnline or function ()
		return true
	end
	
	Engine.IsSpecialRegion = Engine.IsSpecialRegion or function ()
		return false
	end
	
	Engine.HasSnapshot = Engine.HasSnapshot or function ()
		return true
	end
	
	Engine.ClearCustomClanTag = Engine.ClearCustomClanTag or function ()
		
	end
	
	Engine.GetCurrentDayMonthYear = Engine.GetCurrentDayMonthYear or function ()
		return 1, 1, 2100
	end
	
	Engine.GetCurrentYear = Engine.GetCurrentYear or function ()
		return 2100
	end
	
	Engine.UserCanAccessFriendsList = Engine.UserCanAccessFriendsList or function ()
		return false
	end
	
	Engine.AnyoneHasSeasonPass = Engine.AnyoneHasSeasonPass or function ()
		return false
	end
	
	Engine.IsProfanity = Engine.IsProfanity or function ()
		return false
	end
	
	Engine.IsChatRestricted = Engine.IsChatRestricted or function ()
		return false
	end
	
	Engine.UserCanAccessStore = Engine.UserCanAccessStore or function ()
		return false
	end
	
	Engine.UserIsGuest = Engine.UserIsGuest or function ()
		return false
	end
	
	Engine.ShowXB3GoldUpsell = Engine.ShowXB3GoldUpsell or function ()
		return false
	end
	
	Engine.DoWeHaveStats = Engine.DoWeHaveStats or function ()
		return false
	end
	
	Engine.FormatTimeHoursMinutesSeconds = Engine.FormatTimeHoursMinutesSeconds or function ()
		return "Time here"
	end
	
	Engine.FormatTimeDaysHoursMinutesSeconds = Engine.FormatTimeDaysHoursMinutesSeconds or function ()
		return "Time here"
	end
	
	Engine.FormatTimeDaysHoursMinutesSecondsTight = Engine.FormatTimeDaysHoursMinutesSecondsTight or function ()
		return "Time here"
	end
	
	Engine.FormatTimeDaysHoursMinutesTight = Engine.FormatTimeDaysHoursMinutesTight or function ()
		return "Time here"
	end
	
	Engine.GetFormattedTime = Engine.GetFormattedTime or function ()
		return "Time here"
	end
	
	Engine.GetTimeUTC = Engine.GetTimeUTC or function ()
		return 0
	end
	
	Engine.GetTimeMsecs = Engine.GetTimeMsecs or function ()
		return 0
	end
	
	Engine.IsPC = Engine.IsPC or function ()
		return false
	end
	
	Engine.GetControllerForLocalClient = Engine.GetControllerForLocalClient or function ()
		return 0
	end
	
	Engine.PartyEveryoneHasMap = Engine.PartyEveryoneHasMap or function ()
		return true
	end
	
	Engine.IsActiveLocalClientPrimary = Engine.IsActiveLocalClientPrimary or function ()
		return true
	end
	
	Engine.HasSaveDevice = Engine.HasSaveDevice or function ()
		return true
	end
	
	Engine.SetPlayerCostumeFieldUpdate = Engine.SetPlayerCostumeFieldUpdate or function ()
		return true
	end
	
	Engine.ToUpperCase = Engine.ToUpperCase or function ( f37_arg0 )
		return "UPPER: " .. f37_arg0
	end
	
	Engine.Inventory_GetAllItems = Engine.Inventory_GetAllItems or function ()
		return {}
	end
	
	Engine.GetCombatRecordWeaponStatsData = Engine.GetCombatRecordWeaponStatsData or function ()
		return nil
	end
	
	Engine.LocalClientProfileCanSave = Engine.LocalClientProfileCanSave or function ()
		return true
	end
	
	Engine.GetAspectRatio = Engine.GetAspectRatio or function ()
		return 1.78
	end
	
	Engine.AnyoneHasBadReputation = Engine.AnyoneHasBadReputation or function ()
		return false
	end
	
	Engine.EmblemIsLayerLinked = Engine.EmblemIsLayerLinked or function ()
		return false
	end
	
	Engine.SetSelectedLayerColor = Engine.SetSelectedLayerColor or function ()
		
	end
	
	Engine.UsingStreamingInstall = Engine.UsingStreamingInstall or function ()
		return false
	end
	
	Engine.Help = Engine.Help or function ()
		
	end
	
	Engine.ForceUpdateArenas = Engine.ForceUpdateArenas or function ()
		
	end
	
	Engine.IsMainThread = Engine.IsMainThread or function ()
		return true
	end
	
	Engine.IsRightToLeftLanguage = Engine.IsRightToLeftLanguage or function ()
		return false
	end
	
	Engine.ShouldPromptForLanguage = Engine.ShouldPromptForLanguage or function ()
		return false
	end
	
	Engine.GetSupportedLanguages = Engine.GetSupportedLanguages or function ()
		return {
			id = 0,
			name = Engine.Localize( "@MENU_ENGLISH" )
		}
	end
	
	Engine.SetLanguage = Engine.SetLanguage or function ()
		
	end
	
	Engine.IsLanguageChoiceAllowed = Engine.IsLanguageChoiceAllowed or function ()
		return false
	end
	
	Engine.ShowSubtitlesOption = Engine.ShowSubtitlesOption or function ()
		return true
	end
	
	Engine.CheckPlayerData = Engine.CheckPlayerData or function ()
		return false
	end
	
	Engine.GetLootWeaponBaseName = Engine.GetLootWeaponBaseName or function ( f56_arg0 )
		return f56_arg0
	end
	
	Engine.GetOverflowLootGuid = Engine.GetOverflowLootGuid or function ()
		return "0x0"
	end
	
	Engine.SetOverflowLootGuid = Engine.SetOverflowLootGuid or function ()
		
	end
	
	Engine.Inventory_GetArmorySlotsUsed = Engine.Inventory_GetArmorySlotsUsed or function ()
		return 0
	end
	
	Engine.Inventory_GetItemTypeByReference = Engine.Inventory_GetItemTypeByReference or function ()
		return 0
	end
	
	Engine.IsAnyUserUGCRestricted = Engine.IsAnyUserUGCRestricted or function ()
		return false
	end
	
	Engine.GetFormattedTag = Engine.GetFormattedTag or function ()
		return ""
	end
	
	Engine.Inventory_IsItemUsableForPlayer = Engine.Inventory_IsItemUsableForPlayer or function ()
		return false
	end
	
	Engine.GetRankedPromotionSlot = Engine.GetRankedPromotionSlot or function ()
		return 0
	end
	
	Engine.LookupStatsTableColumnForGUID = Engine.LookupStatsTableColumnForGUID or function ()
		return ""
	end
	
	Engine.LookupCostumeTableColumnForGUID = Engine.LookupCostumeTableColumnForGUID or function ()
		return ""
	end
	
	Engine.LookupCostumeOverrideTableColumnForGUID = Engine.LookupCostumeOverrideTableColumnForGUID or function ()
		return ""
	end
	
	Engine.GetItemGUIDFromReference = Engine.GetItemGUIDFromReference or function ()
		return 0
	end
	
	Engine.GetRawItemGUID = Engine.GetRawItemGUID or function ()
		return 0
	end
	
	Engine.IsDownloadOfAllEmblemsFinished = Engine.IsDownloadOfAllEmblemsFinished or function ()
		return true
	end
	
	Engine.IsCoopMPMode = Engine.IsCoopMPMode or function ()
		return false
	end
	
	Engine.PopupErrorOnBlockedClanTag = Engine.PopupErrorOnBlockedClanTag or function ()
		return false
	end
	
	Engine.IsCurrentLanguageJapanese = Engine.IsCurrentLanguageJapanese or function ()
		return false
	end
	
	Engine.Inventory_GetItemExpirationType = Engine.Inventory_GetItemExpirationType or function ()
		return 0
	end
	
	Engine.PlatformXUIDToHexXUID = Engine.PlatformXUIDToHexXUID or function ( f75_arg0 )
		return f75_arg0
	end
	
	Engine.GetIntroMovieViewed = Engine.GetIntroMovieViewed or function ( f76_arg0, f76_arg1 )
		return false
	end
	
	Engine.Content_IsEnumerationDone = Engine.Content_IsEnumerationDone or function ()
		return true
	end
	
	Engine.DLC_CanPurchase = Engine.DLC_CanPurchase or function ()
		return false
	end
	
	Engine.DLC_CanPurchasePackName = Engine.DLC_CanPurchasePackName or function ()
		return false
	end
	
	Engine.DLC_GetFirstName = Engine.DLC_GetFirstName or function ()
		return ""
	end
	
	Engine.DLC_GetPackName = Engine.DLC_GetPackName or function ()
		return nil
	end
	
	Engine.Inventory_IsItemLootRoll = Engine.Inventory_IsItemLootRoll or function ()
		return false
	end
	
	Engine.PartyMemberMissingMapPack = Engine.PartyMemberMissingMapPack or function ()
		return false, "", ""
	end
	
	Engine.GetAnyNewCACItemBreadcrumbState = Engine.GetAnyNewCACItemBreadcrumbState or function ()
		return false
	end
	
	Engine.GetNewItemCategoryBreadcrumbState = Engine.GetNewItemCategoryBreadcrumbState or function ()
		return false
	end
	
	Engine.GetNewItemBreadcrumbState = Engine.GetNewItemBreadcrumbState or function ()
		return false
	end
	
	Engine.SetNewItemBreadcrumbState = Engine.SetNewItemBreadcrumbState or function ()
		
	end
	
	Engine.HasActiveEmblem = Engine.HasActiveEmblem or function ()
		return false
	end
	
	Engine.HasAcceptedEULA = Engine.HasAcceptedEULA or function ()
		return true
	end
	
	Engine.AcceptEULA = Engine.AcceptEULA or function ()
		
	end
	
	Engine.WantsDisplayKillstreakCounter = Engine.WantsDisplayKillstreakCounter or function ()
		return true
	end
	
	Engine.DisplayKillstreakCounterToggle = Engine.DisplayKillstreakCounterToggle or function ()
		
	end
	
	Engine.WantsDisplayMedalSplashes = Engine.WantsDisplayMedalSplashes or function ()
		return true
	end
	
	Engine.DisplayMedalSplashesToggle = Engine.DisplayMedalSplashesToggle or function ()
		
	end
	
	Engine.ShouldDisplayWeaponEmblems = Engine.ShouldDisplayWeaponEmblems or function ()
		
	end
	
	Engine.DisplayWeaponEmblemsToggle = Engine.DisplayWeaponEmblemsToggle or function ()
		
	end
	
	Engine.ShaderUploadFrontendOptionsAreAvailable = Engine.ShaderUploadFrontendOptionsAreAvailable or function ()
		return false
	end
	
	Engine.ShaderUploadFrontendSystemIsAvailable = Engine.ShaderUploadFrontendSystemIsAvailable or function ()
		return false
	end
	
	Engine.DismissControllerRemovedPopup = Engine.DismissControllerRemovedPopup or function ()
		return false
	end
	
	Engine.setup9SliceImageNoScale = Engine.setup9SliceImageNoScale or function ()
		return false
	end
	
	Engine.setup8SliceOverlayImage = Engine.setup8SliceOverlayImage or function ()
		return false
	end
	
end
if Game then
	if not Engine.IsConsoleGame() then
		local f0_local0 = Game.GetNumPlayersOnTeam
		Game.GetNumPlayersOnTeam = function ( f102_arg0 )
			return f0_local0( f102_arg0 )
		end
		
	end
	Game.IsKillCamEntityActive = Game.IsKillCamEntityActive or function ()
		return false
	end
	
	Game.IsSpectatorCameraActive = Game.IsSpectatorCameraActive or function ()
		return false
	end
	
	Game.StartBlur = Game.StartBlur or function ()
		
	end
	
	Game.GetMapDisplayName = Game.GetMapDisplayName or function ()
		return "OINK"
	end
	
	Game.IsStunned = Game.IsStunned or function ()
		return false
	end
	
	Game.GetPlayerWeaponPrimaryFireType = Game.GetPlayerWeaponPrimaryFireType or function ()
		return 0
	end
	
	Game.GetPlayerWeaponClipType = Game.GetPlayerWeaponClipType or function ()
		return 0
	end
	
	Game.IsWeaponOverheated = Game.IsWeaponOverheated or function ()
		return false
	end
	
	Game.GetPlayerFragWeapon = Game.GetPlayerFragWeapon or function ()
		return "none"
	end
	
	Game.GetPlayerSmokeWeapon = Game.GetPlayerSmokeWeapon or function ()
		return "none"
	end
	
	Game.GetPlayerWeaponBaseName = Game.GetPlayerWeaponBaseName or function ()
		
	end
	
	Game.IsWeaponInAltMode = Game.IsWeaponInAltMode or function ()
		return false
	end
	
	Game.AnyUnderbarrelWeaponEquipped = Game.AnyUnderbarrelWeaponEquipped or function ()
		return false
	end
	
	Game.IsRadarEnabled = Game.IsRadarEnabled or function ()
		return false
	end
	
	Game.GetPerkIndexForName = Game.GetPerkIndexForName or function ()
		return 0
	end
	
	Game.SpectatingThirdPerson = Game.SpectatingThirdPerson or function ()
		return false
	end
	
	Game.PlayerViewPitchClampRange = Game.PlayerViewPitchClampRange or function ()
		return 0
	end
	
	Game.PlayerViewYawClampRange = Game.PlayerViewYawClampRange or function ()
		return 0
	end
	
	Game.IsThermalVisionOn = Game.IsThermalVisionOn or function ()
		return false
	end
	
else
	ModuleInaccessible( "Game" )
end
if Store then
	Store.RequestContentServerImages = Store.RequestContentServerImages or function ()
		
	end
	
	Store.GetCategoryForDLCName = Store.GetCategoryForDLCName or function ()
		return 0
	end
	
	Store.OneClickPurchase_ShowProductPicker = Store.OneClickPurchase_ShowProductPicker or function ()
		
	end
	
	Store.OneClickPurchase_ShowPurchaseDialog = Store.OneClickPurchase_ShowPurchaseDialog or function ()
		
	end
	
	Store.GetProductIdsForDlcNames = Store.GetProductIdsForDlcNames or function ()
		
	end
	
	Store.IsOneClickPurchaseEnabled = Store.IsOneClickPurchaseEnabled or function ()
		return false
	end
	
	Store.ShowEmptyStoreDialog = Store.ShowEmptyStoreDialog or function ()
		
	end
	
	Store.IsReady = Store.IsReady or function ()
		return false
	end
	
	Store.GetProductGroupInfo = Store.GetProductGroupInfo or function ()
		return {}
	end
	
	Store.GetAnyNewStoreItemBreadcrumbState = Store.GetAnyNewStoreItemBreadcrumbState or function ()
		return false
	end
	
	Store.GetNewStoreItemCategoryBreadcrumbState = Store.GetNewStoreItemCategoryBreadcrumbState or function ()
		return false
	end
	
	Store.GetNewStoreItemBreadcrumbState = Store.GetNewStoreItemBreadcrumbState or function ()
		return true
	end
	
	Store.SetNewStoreItemBreadcrumbState = Store.SetNewStoreItemBreadcrumbState or function ()
		
	end
	
else
	ModuleInaccessible( "Store" )
end
if Friends then
	Friends.HasPartyGameInvite = Friends.HasPartyGameInvite or function ()
		return false
	end
	
	Friends.AcceptLivePartyInvitation = Friends.AcceptLivePartyInvitation or function ()
		
	end
	
	Friends.CanShowFriendGamercard = Friends.CanShowFriendGamercard or function ()
		return true
	end
	
	Friends.GetEliteClanFriendMemberStatus = Friends.GetEliteClanFriendMemberStatus or function ( f138_arg0, f138_arg1 )
		return ""
	end
	
	Friends.IsUserInBlockList = Friends.IsUserInBlockList or function ( f139_arg0 )
		return false
	end
	
	Friends.GetOnlineFriendXUID = Friends.GetOnlineFriendXUID or function ( f140_arg0, f140_arg1 )
		return "0"
	end
	
	Friends.GetRecentPlayerXUID = Friends.GetRecentPlayerXUID or function ( f141_arg0, f141_arg1 )
		return "0"
	end
	
	Friends.GetLivePartyFriendXUID = Friends.GetLivePartyFriendXUID or function ( f142_arg0, f142_arg1 )
		return "0"
	end
	
	Friends.GetEliteClanFriendXUID = Friends.GetEliteClanFriendXUID or function ( f143_arg0, f143_arg1 )
		return "0"
	end
	
	Friends.GetEliteClanFriendMemberStatus = Friends.GetEliteClanFriendMemberStatus or function ( f144_arg0, f144_arg1 )
		return ""
	end
	
else
	ModuleInaccessible( "Friends" )
end
if Squad then
	Squad.PostMatch = Squad.PostMatch or function ()
		return ""
	end
	
	Squad.GetHostSquadName = Squad.GetHostSquadName or function ()
		return ""
	end
	
	Squad.UpdateReportPlayerCardCache = Squad.UpdateReportPlayerCardCache or function ()
		return ""
	end
	
	Squad.GetReportPlayercard = Squad.GetReportPlayercard or function ()
		
	end
	
	Squad.GetClanTagForReport = Squad.GetClanTagForReport or function ()
		return ""
	end
	
	Squad.GetCompareInfoForLobby = Squad.GetCompareInfoForLobby or function ()
		return {}
	end
	
else
	ModuleInaccessible( "Squad" )
end
if Leaderboards then
	Leaderboards.GetPlayerValue = Leaderboards.GetPlayerValue or function ( f151_arg0, f151_arg1 )
		return ""
	end
	
	Leaderboards.GetValue = Leaderboards.GetValue or function ( f152_arg0, f152_arg1, f152_arg2 )
		return ""
	end
	
	Leaderboards.GetOffset = Leaderboards.GetOffset or function ( f153_arg0 )
		return 0
	end
	
	Leaderboards.GetCurrentIndex = Leaderboards.GetCurrentIndex or function ( f154_arg0 )
		return 0
	end
	
	Leaderboards.UpdateLeaderboard = Leaderboards.UpdateLeaderboard or function ( f155_arg0, f155_arg1 )
		
	end
	
	Leaderboards.UpdateCurrentIndex = Leaderboards.UpdateCurrentIndex or function ( f156_arg0, f156_arg1 )
		
	end
	
	Leaderboards.OnSelect = Leaderboards.OnSelect or function ( f157_arg0 )
		
	end
	
else
	ModuleInaccessible( "Leaderboards" )
end
if Lobby then
	Lobby.ShowMemberInfo = Lobby.ShowMemberInfo or function ( f158_arg0, f158_arg1, f158_arg2 )
		return true
	end
	
	Lobby.UnsetAllMLGSpectators = Lobby.UnsetAllMLGSpectators or function ()
		
	end
	
	Lobby.EnteringLobby = Lobby.EnteringLobby or function ()
		return false
	end
	
	Lobby.EnteredLobby = Lobby.EnteredLobby or function ()
		
	end
	
	Lobby.GetPlayerLimit = Lobby.GetPlayerLimit or function ()
		return -1
	end
	
	Lobby.SetPlayerLimit = Lobby.SetPlayerLimit or function ()
		
	end
	
	Lobby.IsUsingMLGRules = Lobby.IsUsingMLGRules or function ()
		return false
	end
	
	Lobby.SetUsingMLGRules = Lobby.SetUsingMLGRules or function ( f165_arg0 )
		
	end
	
	Lobby.CreateCostumeGuid = Lobby.CreateCostumeGuid or function ()
		return 0
	end
	
	Lobby.GetIPAddress = Lobby.GetIPAddress or function ()
		return ""
	end
	
	Lobby.GetGeographicRegion = Lobby.GetGeographicRegion or function ()
		return ""
	end
	
	Lobby.GetBandwidth = Lobby.GetBandwidth or function ()
		return ""
	end
	
	Lobby.IsOnWifi = Lobby.IsOnWifi or function ()
		return false
	end
	
else
	ModuleInaccessible( "Lobby" )
end
if LobbyMember then
	LobbyMember.SelectedMember_SetLocalMemberMLGSpectator = LobbyMember.SelectedMember_SetLocalMemberMLGSpectator or function ()
		
	end
	
end
Clan = Clan or {}
Clan.IsEnabled = Clan.IsEnabled or function ()
	return false
end

Clan.IsDownloadingData = Clan.IsDownloadingData or function ()
	return false
end

Clan.GetCurrentClanWarName = Clan.GetCurrentClanWarName or function ()
	return ""
end

Clan.GetClanInfo = Clan.GetClanInfo or function ()
	return {}
end

Clan.GetProposalInfo = Clan.GetProposalInfo or function ()
	return {}
end

Clan.GetClanWarInfo = Clan.GetClanWarInfo or function ()
	return {}
end

Clan.GetIntelData = Clan.GetIntelData or function ()
	return {}
end

Clan.GetRemoteClanIntelData = Clan.GetRemoteClanIntelData or function ()
	return {}
end

Clan.IsEntitlementUnlocked = Clan.IsEntitlementUnlocked or function ()
	return false
end

Clan.GetRemoteName = Clan.GetRemoteName or function ()
	return ""
end

Clan.CanAccessClanManage = Clan.CanAccessClanManage or function ()
	return false
end

Clan.GetTokenCountAsString = Clan.GetTokenCountAsString or function ()
	return "0"
end

Clan.SavePlayerEmblemToClan = Clan.SavePlayerEmblemToClan or function ()
	
end

MLG = MLG or {}
MLG.HighlightClientNum = MLG.HighlightClientNum or function ()
	
end

MLG.IsThirdPerson = MLG.IsThirdPerson or function ()
	
end

CoDAnywhere = CoDAnywhere or {}
CoDAnywhere.HasUCDSaveGame = CoDAnywhere.HasUCDSaveGame or function ()
	return false
end

CoDAnywhere.HasUCDAccount = CoDAnywhere.HasUCDAccount or function ()
	return false
end

CoDAnywhere.ServiceAvailable = CoDAnywhere.ServiceAvailable or function ()
	return true
end

Playlist = Playlist or {}
Playlist.GetPlaylistIdFromNum = Playlist.GetPlaylistIdFromNum or function ()
	return 1
end

Playlist.GetPartyMissingMapPacks = Playlist.GetPartyMissingMapPacks or function ()
	return false, "", ""
end

if Playlist then
	Playlist.GetCanShowItem = Playlist.GetCanShowItem or function ()
		return true
	end
	
else
	ModuleInaccessible( "Playlist" )
end
MatchRules = MatchRules or {}
MatchRules.SelectSaveDevice = MatchRules.SelectSaveDevice or function ()
	
end

MatchRules.HasSelectedSaveDevice = MatchRules.HasSaveDevice or function ()
	return true
end

MatchRules.HasMLGRecipeInFastFile = MatchRules.HasMLGRecipeInFastFile or function ()
	return false
end

