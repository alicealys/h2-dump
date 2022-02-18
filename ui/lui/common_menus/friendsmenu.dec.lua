local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.FriendsMenu = InheritFrom( LUI.MenuTemplate )
LUI.FriendsMenu.NumButtons = 7
LUI.FriendsMenu.TopOffset = 30
LUI.FriendsMenu.ContentTop = LUI.MenuTemplate.ListTop + LUI.FriendsMenu.TopOffset
LUI.FriendsMenu.ButtonRefreshRate = 1000
LUI.FriendsMenu.ActiveSublist = nil
LUI.FriendsMenu.ActiveSublistOwner = nil
LUI.FriendsMenu.Menu = nil
PLAYER_LIMIT_MIN = 2
PLAYER_LIMIT_MAX = 18
LUI.FriendsMenu.FriendsMenuHasFocus = function ()
	return LUI.FlowManager.IsMenuTopmost( Engine.GetLuiRoot(), "FriendsMenu" )
end

function PlatformShouldShowGameInvites()
	local f2_local0 = Engine.IsPS3()
	if not f2_local0 then
		f2_local0 = Engine.IsPS4()
	end
	return f2_local0
end

function PlatformShouldShowPartyGameInvites()
	local f3_local0 = Engine.IsXB3()
	if not f3_local0 then
		f3_local0 = Engine.IsPCApp()
	end
	return f3_local0
end

function PlatformShouldShowPartyUI()
	return Engine.IsXbox360()
end

LUI.FriendsMenu.AddPlayerCard = function ( f5_arg0 )
	local f5_local0 = LUI.FriendsMenu.ContentTop
	local f5_local1 = CoD.DesignGridHelper( 8 )
	local self = LUI.UIElement.new( CoD.CreateState( f5_local1, f5_local0, f5_local1 + CoD.DesignGridHelper( 11 ), f5_local0 + CoD.DesignGridHelper( 3 ), CoD.AnchorTypes.TopLeft ) )
	self.id = "playercardcontainer_id"
	f5_arg0.subContainer:addElement( self )
	self:addElement( LUI.UIElement.new( CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.All ) ) )
	local f5_local3 = CoD.CreateState( 96.5, 22, nil, nil, CoD.AnchorTypes.TopLeft )
	f5_local3.scale = CoD.DesignGridHelper( 11, 1 ) / LUI.Playercard.Width - 1
	
	local playerCard = LUI.Playercard.new( f5_local3, {
		emblemDataSource = EmblemDataSource.Profile,
		controller = f5_arg0.controller
	} )
	self:addElement( playerCard )
	f5_arg0.playerCard = playerCard
	
end

LUI.FriendsMenu.AddPlayerDetails = function ( f6_arg0 )
	local f6_local0 = LUI.FriendsMenu.ContentTop
	local f6_local1 = CoD.DesignGridHelper( 8 )
	local f6_local2 = CoD.DesignGridHelper( 11, 1 )
	local f6_local3 = CoD.DesignGridHelper( 10.2 )
	local self = LUI.UIElement.new( CoD.CreateState( f6_local1, f6_local0, f6_local1 + f6_local2, f6_local0 + f6_local3, CoD.AnchorTypes.TopLeft ) )
	self.id = "playerdetailescontainer_id"
	f6_arg0.subContainer:addElement( self )
	local f6_local5 = CoD.CreateState( 0, 104, nil, nil, CoD.AnchorTypes.TopLeft )
	f6_local5.width = CoD.DesignGridHelper( 11, 1 )
	f6_local5.height = CoD.DesignGridHelper( 1.5, 1 )
	local f6_local6 = LUI.UIImage.new( f6_local5 )
	self:addElement( f6_local6 )
	f6_local6:registerAnimationState( "online", {
		material = RegisterMaterial( "h1_ui_social_bg_online" )
	} )
	f6_local6:registerAnimationState( "offline", {
		material = RegisterMaterial( "h1_ui_social_bg_offline" )
	} )
	f6_local6:hide()
	local f6_local7 = CoD.CreateState( 1, 13, 5, 72, CoD.AnchorTypes.TopLeft )
	f6_local7.material = RegisterMaterial( "h1_ui_social_deco_online" )
	local f6_local8 = LUI.UIImage.new( f6_local7 )
	f6_local6:addElement( f6_local8 )
	f6_local8:hide()
	local f6_local9 = LUI.UIElement.new( CoD.CreateState( 22, 120, f6_local2, f6_local3, CoD.AnchorTypes.TopLeft ) )
	self:addElement( f6_local9 )
	local f6_local10 = CoD.TextSettings.Font46
	local f6_local11 = CoD.CreateState( nil, 0, nil, f6_local10.Height, CoD.AnchorTypes.TopLeft )
	f6_local11.font = f6_local10.Font
	f6_local11.alignment = LUI.Alignment.Left
	local f6_local12 = LUI.UIText.new( f6_local11 )
	f6_local9:addElement( f6_local12 )
	f6_local12:registerAnimationState( "online", {
		color = GenericMenuColors.text_highlight
	} )
	f6_local12:registerAnimationState( "offline", {
		color = Colors.grey_4
	} )
	f6_local12:registerAnimationState( "recent", {
		color = Colors.white
	} )
	local f6_local13 = CoD.TextSettings.Font24
	local f6_local14 = CoD.CreateState( 2, 34, nil, f6_local13.Height + 34, CoD.AnchorTypes.TopLeft )
	f6_local14.font = f6_local13.Font
	f6_local14.alignment = LUI.Alignment.Left
	local f6_local15 = LUI.UIText.new( f6_local14 )
	f6_local9:addElement( f6_local15 )
	f6_local15:registerAnimationState( "online", {
		color = Colors.white
	} )
	f6_local15:registerAnimationState( "offline", {
		color = Colors.grey_4
	} )
	f6_local15:registerAnimationState( "recent", {
		color = Colors.white
	} )
	f6_local9.presenceBackground = f6_local6
	f6_local9.presenceDeco = f6_local8
	f6_local9.presenceHeader = f6_local12
	f6_local9.presenceText = f6_local15
	f6_arg0.playerDetails = f6_local9
end

LUI.FriendsMenu.RefreshPlayerDetails = function ( f7_arg0, f7_arg1 )
	f7_arg0.playerDetails.presenceText:setText( Engine.MarkLocalized( f7_arg1.presence ) )
	f7_arg0.playerDetails.presenceBackground:show()
	if f7_arg1.isOnline == true then
		f7_arg0.playerDetails.presenceBackground:animateToState( "online" )
		f7_arg0.playerDetails.presenceText:animateToState( "online" )
		f7_arg0.playerDetails.presenceHeader:animateToState( "online" )
		f7_arg0.playerDetails.presenceHeader:setText( Engine.ToUpperCase( Engine.Localize( "@XBOXLIVE_ONLINE" ) ) )
		f7_arg0.playerDetails.presenceDeco:show()
	elseif f7_arg1.isOnline == false then
		f7_arg0.playerDetails.presenceBackground:animateToState( "offline" )
		f7_arg0.playerDetails.presenceText:animateToState( "offline" )
		f7_arg0.playerDetails.presenceHeader:animateToState( "offline" )
		f7_arg0.playerDetails.presenceHeader:setText( Engine.ToUpperCase( Engine.Localize( "@XBOXLIVE_OFFLINE" ) ) )
		f7_arg0.playerDetails.presenceDeco:hide()
	elseif f7_arg1.defaultHeader then
		f7_arg0.playerDetails.presenceBackground:show()
		f7_arg0.playerDetails.presenceHeader:setText( f7_arg1.defaultHeader )
		f7_arg0.playerDetails.presenceBackground:animateToState( "offline" )
		f7_arg0.playerDetails.presenceText:animateToState( "recent" )
		f7_arg0.playerDetails.presenceHeader:animateToState( "recent" )
		f7_arg0.playerDetails.presenceDeco:hide()
	end
end

LUI.FriendsMenu.RemoveDescription = function ( f8_arg0 )
	if f8_arg0.description then
		f8_arg0.subContainer:removeElement( f8_arg0.description )
		f8_arg0.description = nil
	end
end

LUI.FriendsMenu.AddDescription = function ( f9_arg0, f9_arg1, f9_arg2 )
	if not f9_arg0.description then
		local f9_local0 = CoD.DesignGridHelper( 8 )
		local f9_local1 = LUI.FriendsMenu.ContentTop + CoD.DesignGridHelper( 5 )
		local f9_local2 = CoD.DesignGridHelper( 11, 1 )
		local self = LUI.UIElement.new( CoD.CreateState( f9_local0, f9_local1, f9_local0 + f9_local2, f9_local1 + LUI.FriendsMenu.NumButtons * LUI.FriendsListItem.Height - CoD.DesignGridHelper( 7 ), CoD.AnchorTypes.TopLeft ) )
		self.id = "descriptioncontainer_id"
		f9_arg0.subContainer:addElement( self )
		self:addElement( LUI.UIElement.new( CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.All ) ) )
		local f9_local4 = CoD.TextSettings.Font24
		local f9_local5 = f9_local4.Height / 2
		local f9_local6 = f9_local2 / 2
		local f9_local7 = CoD.CreateState( -f9_local6, -f9_local5, f9_local6, f9_local5, CoD.AnchorTypes.None )
		f9_local7.font = f9_local4.Font
		
		local text = LUI.UIText.new( f9_local7 )
		text:setTextStyle( CoD.TextStyle.ForceUpperCase )
		self:addElement( text )
		self.text = text
		
		f9_arg0.description = self
	end
	if f9_arg2 then
		f9_arg0.description.text:setText( Engine.Localize( f9_arg1, Engine.MarkLocalized( f9_arg2 ) ) )
	else
		f9_arg0.description.text:setText( Engine.Localize( f9_arg1 ) )
	end
end

LUI.FriendsMenu.RemoveNoFriends = function ( f10_arg0 )
	if f10_arg0.noFriends then
		f10_arg0:removeElement( f10_arg0.noFriends )
		f10_arg0.noFriends = nil
	end
end

LUI.FriendsMenu.AddNoFriends = function ( f11_arg0, f11_arg1, f11_arg2 )
	local f11_local0 = nil
	if type( f11_arg1 ) == "function" then
		f11_local0 = f11_arg1( f11_arg2 )
	else
		f11_local0 = f11_arg1
	end
	if not f11_arg0.noFriends then
		local f11_local1 = CoD.TextSettings.TitleFontSmall
		local f11_local2 = f11_local1.Height / 2
		local f11_local3 = CoD.CreateState( 0, -f11_local2, 0, f11_local2, CoD.AnchorTypes.LeftRight )
		f11_local3.font = f11_local1.Font
		local self = LUI.UIText.new( f11_local3 )
		f11_arg0:addElement( self )
		f11_arg0.noFriends = self
	end
	f11_arg0.noFriends:setText( Engine.Localize( f11_local0 ) )
end

LUI.FriendsMenu.BuildSublist = function ( f12_arg0 )
	local f12_local0 = CoD.DesignGridHelper( 8 )
	local f12_local1 = LUI.FriendsMenu.ContentTop + 192
	local f12_local2 = CoD.CreateState( f12_local0, f12_local1, f12_local0 + CoD.DesignGridHelper( 11, 1 ), f12_local1 + LUI.FriendsMenu.NumButtons * LUI.FriendsListItem.Height - CoD.DesignGridHelper( 7 ), CoD.AnchorTypes.TopLeft )
	f12_local2.alpha = 1
	local self = LUI.UIVerticalList.new( f12_local2 )
	self:registerAnimationState( "default", f12_local2 )
	self:registerAnimationState( "hidden", {
		alpha = 0
	} )
	self.buttonCount = 0
	return self
end

LUI.FriendsMenu.RemovePlayerOptions = function ( f13_arg0 )
	if f13_arg0.playerOptions ~= nil then
		f13_arg0:removeElement( f13_arg0.playerOptions )
		f13_arg0.playerOptions = nil
	end
end

LUI.FriendsMenu.RemoveReportOptions = function ( f14_arg0 )
	if f14_arg0.reportOptions ~= nil then
		f14_arg0:removeElement( f14_arg0.reportOptions )
		f14_arg0.reportOptions = nil
	end
end

LUI.FriendsMenu.AddReportOptions = function ( f15_arg0 )
	local f15_local0 = f15_arg0:BuildSublist()
	f15_local0.id = "ReportOptions"
	f15_arg0:addElement( f15_local0 )
	local f15_local1 = f15_arg0.list
	f15_arg0.list = f15_local0
	local f15_local2 = function ( f16_arg0, f16_arg1, f16_arg2, f16_arg3 )
		f16_arg0.menu.currentTab.reportFunc( f16_arg1.controller, f16_arg2 )
		f16_arg0.menu:AddDescription( f16_arg3 )
		f16_arg0.menu:FocusMainList()
	end
	
	f15_arg0:AddButton( "@MENU_REPORT_OFFENSIVE", function ( f17_arg0, f17_arg1 )
		f15_local2( f17_arg0, f17_arg1, Friends.Constants.reportOffensiveLobbyPlayer, "@MENU_REPORT_OFFENSIVE_SUBMIT" )
	end, nil, nil, nil, nil, true )
	f15_arg0:AddButton( "@MENU_REPORT_EXPLOITING", function ( f18_arg0, f18_arg1 )
		f15_local2( f18_arg0, f18_arg1, Friends.Constants.reportExploitingLobbyPlayer, "@MENU_REPORT_EXPLOITING_SUBMIT" )
	end, nil, nil, nil, nil, true )
	f15_arg0:AddButton( "@MENU_REPORT_CHEATING", function ( f19_arg0, f19_arg1 )
		f15_local2( f19_arg0, f19_arg1, Friends.Constants.reportCheatingLobbyPlayer, "@MENU_REPORT_CHEATING_SUBMIT" )
	end, nil, nil, nil, nil, true )
	f15_arg0:AddButton( "@MENU_REPORT_BOOSTING", function ( f20_arg0, f20_arg1 )
		f15_local2( f20_arg0, f20_arg1, Friends.Constants.reportBoostingLobbyPlayer, "@MENU_REPORT_BOOSTING_SUBMIT" )
	end, nil, nil, nil, nil, true )
	if Engine.EmblemsEnabled() then
		f15_arg0:AddButton( "@MENU_REPORT_EMBLEM", function ( f21_arg0, f21_arg1 )
			f15_local2( f21_arg0, f21_arg1, Friends.Constants.reportEmblemLobbyPlayer, "@MENU_REPORT_EMBLEM_SUBMIT" )
		end, nil, nil, nil, nil, true )
	end
	f15_arg0.reportOptions = f15_local0
	f15_arg0.list = f15_local1
	f15_local0:clearSavedState()
end

function OnReport( f22_arg0, f22_arg1 )
	f22_arg0.menu:RemoveDescription()
	f22_arg0.menu:RemoveReportOptions()
	f22_arg0.menu.playerOptions:processEvent( {
		name = "lose_focus",
		immediate = true
	} )
	f22_arg0.menu.playerOptions:animateToState( "hidden" )
	f22_arg0.menu.playerOptions.m_inputDisabled = true
	f22_arg0.menu:AddReportOptions()
	f22_arg0.menu.reportOptions:processEvent( {
		name = "gain_focus",
		immediate = true
	} )
end

LUI.FriendsMenu.InviteSentCommon = function ( f23_arg0 )
	f23_arg0:FocusMainList()
end

LUI.FriendsMenu.RemoveChangeStatusOptions = function ( f24_arg0 )
	if f24_arg0.statusOptions ~= nil then
		f24_arg0:removeElement( f24_arg0.statusOptions )
		f24_arg0.statusOptions = nil
	end
end

LUI.FriendsMenu.OnClanSetToCoLeader = function ( f25_arg0, f25_arg1 )
	Clan.SetToCoLeader( f25_arg1.controller )
	f25_arg0.menu:FocusMainList()
end

LUI.FriendsMenu.OnClanSetToClanMember = function ( f26_arg0, f26_arg1 )
	Clan.SetToClanMember( f26_arg1.controller )
	f26_arg0.menu:FocusMainList()
end

LUI.FriendsMenu.OnClanTransferLeadership = function ( f27_arg0, f27_arg1 )
	LUI.FlowManager.RequestAddMenu( f27_arg0, "transferownership_warning", true, f27_arg1.controller, false, data )
end

LUI.FriendsMenu.AddChangeStatusOptions = function ( f28_arg0, f28_arg1 )
	local f28_local0 = f28_arg0:BuildSublist()
	f28_local0.id = "ReportOptions"
	f28_arg0:addElement( f28_local0 )
	local f28_local1 = f28_arg0.list
	f28_arg0.list = f28_local0
	local f28_local2 = function ()
		return Friends.GetEliteClanFriendMemberStatusIndex( f28_arg1, f28_arg0.focusedButton.friendIndex ) == ClanMemberStatus.CoLeader
	end
	
	local f28_local3 = function ()
		return Friends.GetEliteClanFriendMemberStatusIndex( f28_arg1, f28_arg0.focusedButton.friendIndex ) == ClanMemberStatus.Member
	end
	
	local f28_local4 = Friends.GetEliteClanFriendMemberStatus( f28_arg1, f28_arg0.focusedButton.friendIndex )
	f28_arg0:AddButton( "CLANS_STATUS_COLEADER", LUI.FriendsMenu.OnClanSetToCoLeader, f28_local2, nil, nil, nil, true )
	f28_arg0:AddButton( "CLANS_STATUS_MEMBER", LUI.FriendsMenu.OnClanSetToClanMember, f28_local3, nil, nil, nil, true )
	if Clan.AmILeader( f28_arg1 ) then
		f28_arg0:AddButton( "CLANS_TRANSFER_OWNERSHIP", LUI.FriendsMenu.OnClanTransferLeadership, nil, nil, nil, nil, true )
	end
	f28_arg0.statusOptions = f28_local0
	f28_arg0.statusOptions:registerEventHandler( "popup_inactive", function ( element, event )
		f28_arg0:FocusMainList()
	end )
	f28_arg0.list = f28_local1
	f28_local0:clearSavedState()
end

function OnChangeStatus( f32_arg0, f32_arg1 )
	f32_arg0.menu.playerOptions:processEvent( {
		name = "lose_focus",
		immediate = true
	} )
	f32_arg0.menu.playerOptions:animateToState( "hidden" )
	f32_arg0.menu.playerOptions.m_inputDisabled = true
	f32_arg0.menu:AddChangeStatusOptions( f32_arg1.controller )
	f32_arg0.menu.statusOptions:processEvent( {
		name = "gain_focus",
		immediate = true
	} )
end

LUI.FriendsMenu.AddInviteToClanButton = function ( f33_arg0, f33_arg1, f33_arg2, f33_arg3 )
	assert( f33_arg2 )
	assert( f33_arg3 )
	local f33_local0 = not Engine.InFrontend()
	return f33_arg0:AddButton( "LUA_MENU_CLAN_INVITE_TO_CLAN", function ( f35_arg0, f35_arg1 )
		if Engine.IsChatRestricted() then
			LUI.FlowManager.RequestAddMenu( f35_arg0, "user_generated_content_restriction_popup", true, f35_arg1.controller )
		else
			f33_arg3( f35_arg1.controller )
		end
	end
	, function ()
		local f34_local0 = f33_local0
		if not f34_local0 then
			f34_local0 = not f33_arg2( f33_arg1, f33_arg0.focusedButton.friendIndex )
		end
		return f34_local0
	end
	, nil, nil, nil, true )
end

LUI.FriendsMenu.AddOnlineFriendOptions = function ( f36_arg0 )
	local f36_local0 = f36_arg0:BuildSublist()
	f36_local0.id = "OnlineFriendOptions"
	f36_arg0:addElement( f36_local0 )
	local f36_local1 = f36_arg0.controller
	local f36_local2 = f36_arg0.list
	f36_arg0.list = f36_local0
	local f36_local3 = not Engine.InFrontend()
	local f36_local4 = Engine.InLobby()
	local f36_local5 = nil
	if Engine.IsMultiplayer() then
		local f36_local6 = function ()
			local f37_local0
			if Engine.GetOnlineGame() then
				f37_local0 = not Friends.IsFriendInvitable( f36_local1 )
			else
				f37_local0 = true
			end
			return f37_local0
		end
		
		local f36_local7
		if f36_local3 or f36_local4 then
			f36_local7 = "@MENU_INVITE_TO_GAME"
			if not f36_local7 then
			
			else
				f36_local5 = f36_arg0:AddButton( f36_local7, function ( f38_arg0, f38_arg1 )
					f38_arg0.menu:InviteSentCommon()
					Friends.InviteOnlineFriend( f38_arg1.controller )
				end, f36_local6, nil, nil, nil, true )
				f36_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f36_local7 = "@MENU_INVITE_TO_PARTY"
	end
	f36_local5 = f36_arg0:AddButton( "@MENU_JOIN_GAME", function ( f40_arg0, f40_arg1 )
		Friends.JoinOnlineFriend( f40_arg1.controller )
	end, function ()
		local f39_local0
		if Engine.UserCanPlayOnline( f36_local1 ) then
			f39_local0 = not Friends.IsFriendJoinable( f36_local1 )
		else
			f39_local0 = true
		end
		return f39_local0
	end, nil, nil, nil, true )
	f36_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	if Clan.IsEnabled() and Engine.IsMultiplayer() and Clan.AlreadyMember( f36_local1 ) then
		f36_local5 = LUI.FriendsMenu.AddInviteToClanButton( f36_arg0, f36_local1, Clan.CanISendInviteToFriend, Clan.InviteFriendToClan )
		f36_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Engine.IsXbox360() or Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
		f36_local5 = f36_arg0:AddButton( "@XBOXLIVE_VIEW_PROFILE", function ( f42_arg0, f42_arg1 )
			Friends.ShowOnlineFriendGamercard( f42_arg1.controller )
		end, function ()
			return not Friends.CanShowFriendGamercard( f36_local1 )
		end, nil, nil, nil, true )
		f36_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	f36_arg0:AddButton( "@MENU_REPORT_PLAYER", OnReport, nil, nil, nil, nil, true )
	f36_arg0.playerOptions = f36_local0
	f36_arg0.list = f36_local2
	f36_local0:clearSavedState()
end

LUI.FriendsMenu.AddPartyManagementOptions = function ( f43_arg0 )
	local f43_local0 = f43_arg0:BuildSublist()
	f43_local0.id = "PartyOptions"
	f43_arg0:addElement( f43_local0 )
	local f43_local1 = f43_arg0.controller
	local f43_local2 = f43_arg0.list
	f43_arg0.list = f43_local0
	local f43_local3 = {}
	if Engine.IsConsoleGame() or Engine.IsPCApp() then
		local f43_local4 = {}
		local f43_local5
		if Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
			f43_local5 = LobbyMember.Options.xboxProfile
			if not f43_local5 then
			
			else
				local f43_local6 = LobbyMember.Options.toggleMute
				local f43_local7 = LobbyMember.Options.tryMigrateHost
				local f43_local8 = LobbyMember.Options.reportPlayer
				local f43_local9 = LobbyMember.Options.kickPlayer
				f43_local4[1] = f43_local5
				f43_local4[2] = f43_local6
				f43_local4[3] = f43_local7
				f43_local4[4] = f43_local8
				f43_local4[5] = f43_local9
				f43_local3 = f43_local4
			end
		end
		f43_local5 = LobbyMember.Options.psSendFriendInvite
	else
		f43_local3 = {
			LobbyMember.Options.toggleMute,
			LobbyMember.Options.tryMigrateHost,
			LobbyMember.Options.reportPlayer,
			LobbyMember.Options.kickPlayer
		}
	end
	local f43_local4 = nil
	for f43_local5 = 1, #f43_local3, 1 do
		local f43_local8 = f43_local5
		if not f43_local3[f43_local8].exclude or f43_local3[f43_local8].exclude( f43_local1 ) == false then
			local f43_local9 = function ()
				return f43_local3[f43_local8].disabled( f43_local1 )
			end
			
			local f43_local10 = f43_local3[f43_local8].customActionFunc
			if not f43_local10 then
				f43_local10 = f43_local3[f43_local8].action
			end
			f43_local4 = f43_arg0:AddButton( f43_local3[f43_local8].text, f43_local10, f43_local9, nil, nil, nil, true )
			f43_local4:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
		end
	end
	f43_arg0.playerOptions = f43_local0
	f43_arg0.list = f43_local2
	f43_local0:clearSavedState()
end

LUI.FriendsMenu.AddOnlineFriendHelp = function ( f45_arg0 )
	local f45_local0 = f45_arg0.controller
	local f45_local1 = f45_arg0
	local f45_local2 = CoD.UsingController() and "button_left" or "button_page_up"
	local f45_local3 = CoD.UsingController() and "button_right" or "button_page_down"
	f45_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = f45_local2,
		helper_text = Engine.Localize( "@LUA_MENU_PAGE_UP" ),
		side = "right",
		clickable = true,
		priority = -1000,
		func = function ( f46_arg0, f46_arg1 )
			f45_local1:Page( -LUI.FriendsMenu.NumButtons )
		end
	} )
	f45_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = f45_local3,
		helper_text = Engine.Localize( "@LUA_MENU_PAGE_DOWN" ),
		side = "right",
		clickable = true,
		priority = -1000,
		func = function ( f47_arg0, f47_arg1 )
			f45_local1:Page( LUI.FriendsMenu.NumButtons )
		end
	} )
	f45_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = "button_alt1",
		helper_text = Engine.Localize( "@LUA_MENU_TOP" ),
		side = "right",
		clickable = true,
		priority = -1000
	}, function ( f48_arg0, f48_arg1 )
		f45_local1:JumpToTop()
	end )
	if PlatformShouldShowGameInvites() and Friends.CountPendingPlaystationInvites and Friends.CountPendingPlaystationInvites( f45_local0 ) > 0 then
		f45_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@PLATFORM_VIEW_GAME_INVITES" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f49_arg0, f49_arg1 )
			if PlatformShouldShowGameInvites() and Friends.CountPendingPlaystationInvites and Friends.CountPendingPlaystationInvites( f49_arg1.controller ) > 0 then
				Engine.Exec( "gameInvitesReceived", f49_arg1.controller )
			end
		end )
	end
end

LUI.FriendsMenu.AddAllFriendOptions = function ( f50_arg0 )
	LUI.FriendsMenu.AddOnlineFriendOptions( f50_arg0 )
end

LUI.FriendsMenu.AddAllFriendHelp = function ( f51_arg0 )
	if PlatformShouldShowGameInvites() and Friends.CountPendingPlaystationInvites and Friends.CountPendingPlaystationInvites( f51_arg0.controller ) > 0 then
		f51_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@PLATFORM_VIEW_GAME_INVITES" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f52_arg0, f52_arg1 )
			if PlatformShouldShowGameInvites() and Friends.CountPendingPlaystationInvites and Friends.CountPendingPlaystationInvites( f52_arg1.controller ) > 0 then
				Engine.Exec( "gameInvitesReceived", f52_arg1.controller )
			end
		end )
	end
end

LUI.FriendsMenu.AddRecentPlayerOptions = function ( f53_arg0 )
	local f53_local0 = f53_arg0:BuildSublist()
	f53_local0.id = "RecentPlayerOptions"
	f53_arg0:addElement( f53_local0 )
	local f53_local1 = f53_arg0.controller
	local f53_local2 = f53_arg0.list
	f53_arg0.list = f53_local0
	if not Engine.IsXbox360() and not Engine.IsXB3() and not Engine.IsPCApp() then
		local f53_local3 = Engine.IsPS4()
	end
	local f53_local4 = not Engine.InFrontend()
	local f53_local5 = Engine.InLobby()
	local f53_local6 = nil
	if Engine.IsMultiplayer() and not Engine.IsPC() then
		local f53_local7 = function ()
			local f54_local0
			if Engine.GetOnlineGame() then
				f54_local0 = not Friends.IsRecentPlayerInvitable( f53_local1 )
			else
				f54_local0 = true
			end
			return f54_local0
		end
		
		local f53_local8
		if f53_local4 or f53_local5 then
			f53_local8 = Engine.Localize( "@MENU_INVITE_TO_GAME" )
			if not f53_local8 then
			
			else
				f53_local6 = f53_arg0:AddButton( f53_local8, function ( f55_arg0, f55_arg1 )
					f55_arg0.menu:InviteSentCommon()
					Friends.InviteRecentPlayer( f55_arg1.controller )
				end, f53_local7, nil, nil, nil, true )
				f53_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f53_local8 = Engine.Localize( "@MENU_INVITE_TO_PARTY" )
	end
	if not Engine.IsPCApp() then
		f53_local6 = f53_arg0:AddButton( "@MENU_JOIN_GAME", function ( f57_arg0, f57_arg1 )
			Friends.JoinRecentPlayer( f53_local1 )
		end, function ()
			local f56_local0
			if Engine.UserCanPlayOnline( f53_local1 ) then
				f56_local0 = not Friends.IsRecentPlayerJoinable( f53_local1 )
			else
				f56_local0 = true
			end
			return f56_local0
		end, nil, nil, nil, true )
		f53_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Clan.IsEnabled() and Engine.IsMultiplayer() and Clan.AlreadyMember( f53_local1 ) then
		f53_local6 = LUI.FriendsMenu.AddInviteToClanButton( f53_arg0, f53_local1, Clan.CanISendInviteToRecentPlayer, Clan.InviteRecentPlayerToClan )
		f53_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Engine.IsXbox360() or Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
		f53_arg0:AddButton( "@XBOXLIVE_VIEW_PROFILE", function ( f58_arg0, f58_arg1 )
			Friends.ShowRecentPlayerGamercard( f53_local1 )
		end, nil, nil, nil, nil, true )
	end
	if not Engine.IsPS4() then
		local f53_local7
		if Engine.IsXB3() or Engine.IsPCApp() then
			f53_local7 = "@LUA_MENU_FRIEND_FOLLOW"
			if not f53_local7 then
			
			else
				f53_local6 = f53_arg0:AddButton( f53_local7, function ( f60_arg0, f60_arg1 )
					Friends.RequestRecentPlayerAsFriend( f53_local1 )
				end, function ()
					return Friends.IsRecentPlayerAFriend( f53_local1 )
				end, nil, nil, nil, true )
				f53_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f53_local7 = "@MENU_FRIEND_REQUEST"
	end
	f53_arg0:AddButton( "@MENU_REPORT_PLAYER", OnReport, nil, nil, nil, nil, true )
	f53_arg0.playerOptions = f53_local0
	f53_arg0.list = f53_local2
	f53_local0:clearSavedState()
end

LUI.FriendsMenu.AddRecentPlayerHelp = function ( f61_arg0 )
	f61_arg0:AddOnlineFriendHelp()
end

LUI.FriendsMenu.AddLivePartyPlayerOptions = function ( f62_arg0 )
	local f62_local0 = f62_arg0:BuildSublist()
	f62_local0.id = "RecentPlayerOptions"
	f62_arg0:addElement( f62_local0 )
	local f62_local1 = f62_arg0.controller
	local f62_local2 = f62_arg0.list
	f62_arg0.list = f62_local0
	if not Engine.IsXbox360() and not Engine.IsXB3() and not Engine.IsPCApp() then
		local f62_local3 = Engine.IsPS4()
	end
	local f62_local4 = not Engine.InFrontend()
	local f62_local5 = Engine.InLobby()
	local f62_local6 = nil
	if Engine.IsMultiplayer() then
		local f62_local7 = function ()
			local f63_local0 = Friends.IsLivePartyLocal( f62_local1 )
			if not f63_local0 then
				if Engine.GetOnlineGame() then
					f63_local0 = not Friends.IsLivePartyFriendInvitable( f62_local1 )
				else
					f63_local0 = true
				end
			end
			return f63_local0
		end
		
		local f62_local8
		if f62_local4 or f62_local5 then
			f62_local8 = Engine.Localize( "@MENU_INVITE_TO_GAME" )
			if not f62_local8 then
			
			else
				f62_local6 = f62_arg0:AddButton( f62_local8, function ( f64_arg0, f64_arg1 )
					f64_arg0.menu:InviteSentCommon()
					Friends.InviteLivePartyFriend( f64_arg1.controller )
				end, f62_local7, nil, nil, nil, true )
				f62_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f62_local8 = Engine.Localize( "@MENU_INVITE_TO_PARTY" )
	end
	f62_local6 = f62_arg0:AddButton( "@MENU_JOIN_GAME", function ( f66_arg0, f66_arg1 )
		Friends.JoinLivePartyFriend( f66_arg1.controller )
	end, function ()
		local f65_local0 = Friends.IsLivePartyLocal( f62_local1 )
		if not f65_local0 then
			if Engine.UserCanPlayOnline( f62_local1 ) then
				f65_local0 = not Friends.IsLivePartyFriendJoinable( f62_local1 )
			else
				f65_local0 = true
			end
		end
		return f65_local0
	end, nil, nil, nil, true )
	f62_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	if Clan.IsEnabled() and Engine.IsMultiplayer() and Clan.AlreadyMember( f62_local1 ) then
		f62_local6 = LUI.FriendsMenu.AddInviteToClanButton( f62_arg0, f62_local1, Clan.CanISendInviteToLiveParty, Clan.InviteLivePartyToClan )
		f62_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Engine.IsXbox360() or Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
		f62_arg0:AddButton( "@XBOXLIVE_VIEW_PROFILE", function ( f67_arg0, f67_arg1 )
			Friends.ShowLivePartyFriendGamercard( f67_arg1.controller )
		end, nil, nil, nil, nil, true )
	end
	f62_local6 = f62_arg0:AddButton( "@MENU_REPORT_PLAYER", OnReport, function ()
		return Friends.IsLivePartyFriendMe( f62_local1, f62_arg0.focusedButton.friendIndex )
	end, nil, nil, nil, true )
	f62_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	f62_arg0.playerOptions = f62_local0
	f62_arg0.list = f62_local2
	f62_local0:clearSavedState()
end

LUI.FriendsMenu.AddLivePartyPlayerHelp = function ( f69_arg0 )
	local f69_local0 = f69_arg0
	if Engine.GetOnlineGame() then
		f69_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_alt2",
			helper_text = Engine.Localize( "@PLATFORM_INVITE_XBOX_LIVE_PARTY" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f70_arg0, f70_arg1 )
			Engine.PlaySound( CoD.SFX.MouseClick )
			Friends.InviteAllLiveParty( f70_arg1.controller )
		end )
	end
	if Engine.GetOnlineGame() and PlatformShouldShowPartyGameInvites() then
		f69_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@MENU_INVITE_FRIENDS" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f71_arg0, f71_arg1 )
			if Friends.OpenSystemFriendsList then
				Friends.OpenSystemFriendsList( f71_arg1.controller )
			else
				Engine.Exec( "xshowfriendslist" )
			end
		end )
	end
	if PlatformShouldShowPartyUI() then
		f69_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_select",
			helper_text = Engine.Localize( "@PLATFORM_PARTY_UI" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f72_arg0, f72_arg1 )
			Friends.OpenLivePartyUI( f72_arg1.controller )
		end )
	end
	if PlatformShouldShowPartyGameInvites() and Friends.HasPartyGameInvite() then
		f69_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@XBOXLIVE_PARTY_INVITE_ACCEPT" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f73_arg0, f73_arg1 )
			if Friends.HasPartyGameInvite() then
				Engine.PlaySound( CoD.SFX.MouseClick )
				Friends.AcceptLivePartyInvitation( f73_arg1.controller )
			end
		end )
	end
end

LUI.FriendsMenu.OnClanKickMemberFromClan = function ( f74_arg0, f74_arg1 )
	LUI.FlowManager.RequestAddMenu( f74_arg0, "kickclanmember_warning", true, f74_arg1.controller, false )
end

LUI.FriendsMenu.AddClanMemberOptions = function ( f75_arg0 )
	local f75_local0 = f75_arg0:BuildSublist()
	f75_local0.id = "ClanMemberOptions"
	f75_arg0:addElement( f75_local0 )
	local f75_local1 = f75_arg0.controller
	local f75_local2 = f75_arg0.list
	f75_arg0.list = f75_local0
	local f75_local3 = not Engine.InFrontend()
	local f75_local4 = Engine.InLobby()
	local f75_local5 = nil
	if Engine.IsMultiplayer() then
		local f75_local6 = function ()
			local f76_local0
			if Engine.GetOnlineGame() then
				f76_local0 = Friends.IsEliteClanFriendMe( f75_local1, f75_arg0.focusedButton.friendIndex )
			else
				f76_local0 = true
			end
			return f76_local0
		end
		
		local f75_local7
		if f75_local3 or f75_local4 then
			f75_local7 = "@MENU_INVITE_TO_GAME"
			if not f75_local7 then
			
			else
				f75_local5 = f75_arg0:AddButton( f75_local7, function ( f77_arg0, f77_arg1 )
					f77_arg0.menu:InviteSentCommon()
					Friends.InviteEliteClanFriend( f77_arg1.controller )
				end, f75_local6, nil, nil, nil, true )
				f75_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f75_local7 = "@MENU_INVITE_TO_PARTY"
	end
	f75_local5 = f75_arg0:AddButton( "@MENU_JOIN_GAME", function ( f79_arg0, f79_arg1 )
		Friends.JoinEliteClanFriend( f79_arg1.controller )
	end, function ()
		local f78_local0
		if Engine.UserCanPlayOnline( f75_local1 ) then
			f78_local0 = Friends.IsEliteClanFriendMe( f75_local1, f75_arg0.focusedButton.friendIndex )
		else
			f78_local0 = true
		end
		return f78_local0
	end, nil, nil, nil, true )
	f75_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	if Engine.IsXbox360() or Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
		f75_local5 = f75_arg0:AddButton( "@XBOXLIVE_VIEW_PROFILE", function ( f80_arg0, f80_arg1 )
			Friends.ShowEliteClanFriendGamercard( f80_arg1.controller )
		end, nil, nil, nil, nil, true )
		f75_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Clan.CanIChangeMemberStatus( f75_local1 ) then
		f75_local5 = f75_arg0:AddButton( "CLANS_CHANGE_MEMBER_STATUS", OnChangeStatus, function ()
			return Friends.IsEliteClanFriendMe( f75_local1, f75_arg0.focusedButton.friendIndex )
		end, nil, nil, nil, nil, true )
		f75_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Clan.CanIKickMember( f75_local1 ) then
		f75_local5 = f75_arg0:AddButton( "LUA_MENU_CLAN_KICK_FROM_CLAN", LUI.FriendsMenu.OnClanKickMemberFromClan, function ()
			return Friends.IsEliteClanFriendMe( f75_local1, f75_arg0.focusedButton.friendIndex )
		end, nil, nil, nil, true )
		f75_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if not Engine.IsPS4() then
		local f75_local8
		if Engine.IsXB3() or Engine.IsPCApp() then
			f75_local8 = "@LUA_MENU_FRIEND_FOLLOW"
			if not f75_local8 then
			
			else
				f75_local5 = f75_arg0:AddButton( f75_local8, function ( f84_arg0, f84_arg1 )
					Friends.RequestEliteClanPlayerAsFriend( f75_local1 )
				end, function ()
					local f83_local0 = Friends.IsEliteClanFriendMe( f75_local1, f75_arg0.focusedButton.friendIndex )
					if not f83_local0 then
						f83_local0 = Friends.IsEliteClanPlayerAFriend( f75_local1 )
					end
					return f83_local0
				end, nil, nil, nil, true )
				f75_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f75_local8 = "@MENU_FRIEND_REQUEST"
	end
	f75_local5 = f75_arg0:AddButton( "@MENU_REPORT_PLAYER", OnReport, function ()
		return Friends.IsEliteClanFriendMe( f75_local1, f75_arg0.focusedButton.friendIndex )
	end, nil, nil, nil, true )
	f75_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	f75_arg0.playerOptions = f75_local0
	f75_arg0.list = f75_local2
	f75_local0:clearSavedState()
end

LUI.FriendsMenu.AddClanHelp = function ( f86_arg0 )
	f86_arg0:AddOnlineFriendHelp()
end

LUI.FriendsMenu.AddPartyManagementHelp = function ( f87_arg0 )
	local f87_local0 = f87_arg0
	f87_local0.sublistFocused = false
	local f87_local1 = function ( f88_arg0, f88_arg1 )
		f87_local0.subPanel:processEvent( {
			name = "lose_focus"
		} )
		f87_local0.list:processEvent( {
			name = "gain_focus",
			flowType = FocusType.Gamepad
		} )
		f87_local0.sublistFocused = false
	end
	
	local f87_local2 = function ( f89_arg0, f89_arg1 )
		f87_local0:RemoveDescription()
		f87_local0.list:processEvent( {
			name = "lose_focus"
		} )
		if f87_local0.sublistFocused == false then
			f87_local0.subPanel:processEvent( {
				name = "gain_focus",
				flowType = FocusType.Gamepad
			} )
		end
		if f87_local0.focusedButton ~= nil then
			f87_local0.focusedButton:SetHighlight( false )
			f87_local0.focusedButton = nil
		end
		f87_local0.sublistFocused = true
	end
	
	f87_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = "button_left",
		button_ref2 = "button_right",
		helper_text = Engine.Localize( "@LUA_MENU_NAVIGATE" ),
		side = "right",
		clickable = false,
		priority = -1000,
		func = f87_local1,
		func2 = f87_local2,
		leftIconClickFunc = f87_local1,
		rightIconClickFunc = f87_local2
	} )
end

LUI.FriendsMenu.AddMoreOptionsDescription = function ( f90_arg0 )
	f90_arg0:AddDescription( "@LUA_MENU_FRIENDS_OPTIONS", Engine.Localize( CoD.UsingController() and ButtonMap.button_action.string or ButtonMap.button_action.keyboard_mouse_string ) )
	f90_arg0.currentTab:helpFunc()
end

LUI.FriendsMenu.UpdateScrollText = function ( f91_arg0, f91_arg1, f91_arg2 )
	f91_arg0.scrollText:setText( Engine.Localize( "@MPUI_X_SLASH_Y_WIDE", f91_arg1, f91_arg2 ) )
	if f91_arg0.friendCount > LUI.FriendsMenu.NumButtons then
		f91_arg0.upArrow:show()
		f91_arg0.downArrow:show()
	else
		f91_arg0.upArrow:hide()
		f91_arg0.downArrow:hide()
	end
end

function OnFocusFriend( f92_arg0, f92_arg1 )
	if Engine.IsPC() and f92_arg0.menu.playerOptions ~= nil then
		return 
	elseif f92_arg0.menu.highlightedButton ~= f92_arg0 then
		if f92_arg0.menu.highlightedButton ~= nil then
			f92_arg0.menu.highlightedButton:SetHighlight( false )
		end
		f92_arg0.menu.currentTab.xuidFunc( f92_arg0.menu.controller, f92_arg0.friendIndex )
		f92_arg0.menu.playerCard:feedContent( f92_arg0.data )
		f92_arg0.menu:RefreshPlayerDetails( f92_arg0.data )
		f92_arg0.menu:AddMoreOptionsDescription()
		if Engine.IsPC() then
			f92_arg0.menu:RemoveReportOptions()
			f92_arg0.menu:RemovePlayerOptions()
		end
	end
	f92_arg0:SetHighlight( true )
	if f92_arg0.menu.focusedButton and f92_arg0.menu.focusedButton ~= f92_arg0 then
		f92_arg0.menu.focusedButton:SetHighlight( false )
		f92_arg0.menu.focusedButton:setFocus( false )
	end
	f92_arg0.menu:RemoveChangeStatusOptions()
	f92_arg0.menu:UpdateScrollText( f92_arg0.friendIndex + 1, f92_arg0.menu.friendCount )
	f92_arg0.menu.focusedButton = f92_arg0
	f92_arg0.menu.highlightedButton = nil
	f92_arg0.menu.list:setLayoutCached( false )
end

function OnSelectFriend( f93_arg0, f93_arg1 )
	f93_arg0.menu:RemoveReportOptions()
	f93_arg0.menu:RemovePlayerOptions()
	if Engine.IsPC() and f93_arg0 ~= f93_arg0.menu.focusedButton then
		OnFocusFriend( f93_arg0, f93_arg1 )
	end
	Friends.UpdatePartyDvars( f93_arg0.menu.controller, f93_arg0.friendIndex )
	LUI.ButtonHelperText.ClearHelperTextObjects( f93_arg0.menu.help, {
		side = "right"
	} )
	LUI.FriendsMenu.Menu:AddHelpButtons()
	f93_arg0.menu:RemoveDescription()
	f93_arg0.menu.currentTab.optionsFunc( f93_arg0.menu )
	f93_arg0.menu.list:processEvent( {
		name = "lose_focus"
	} )
	f93_arg0.menu.playerOptions:processEvent( {
		name = "gain_focus"
	} )
	f93_arg0.menu.highlightedButton = f93_arg0
	f93_arg0.menu.list:setLayoutCached( false )
end

LUI.FriendsMenu.Page = function ( f94_arg0, f94_arg1 )
	if f94_arg0.focusedButton ~= nil then
		local f94_local0 = f94_arg0.focusedButton.index
		local f94_local1 = LUI.clamp( f94_arg0.focusedButton.index + f94_arg0.friendOffset - 1 + f94_arg1, 0, math.max( 0, f94_arg0.friendCount - 1 ) )
		local f94_local2 = f94_arg0.friendOffset
		f94_arg0.friendOffset = LUI.clamp( f94_arg0.friendOffset + f94_arg1, 0, math.max( 0, f94_arg0.friendCount - LUI.FriendsMenu.NumButtons ) )
		local f94_local3 = 1 + f94_local1 - f94_arg0.friendOffset
		if f94_local0 ~= f94_local3 then
			LUI.UIElement.processNavigationEvent( f94_arg0.focusedButton, nil, LUI.FriendsMenu.GetButtonForIndex( f94_arg0, f94_local3 ) )
		end
		if f94_local2 ~= f94_arg0.friendOffset then
			f94_arg0.currentTab.xuidFunc( f94_arg0.controller, f94_local1 )
			f94_arg0:RefreshList()
		end
	end
end

function OnFriendGamepadButton( f95_arg0, f95_arg1 )
	if f95_arg1.down and f95_arg0:isInFocus() then
		if f95_arg1.qualifier == ButtonQualifiers.Mousewheel then
			if f95_arg1.button == "up" then
				f95_arg0.menu:Page( -1 )
			elseif f95_arg1.button == "down" then
				f95_arg0.menu:Page( 1 )
			end
			return true
		elseif f95_arg1.button == "up" and f95_arg0.index == 1 then
			f95_arg0.menu:Page( -1 )
			return true
		elseif f95_arg1.button == "down" and f95_arg0.index == LUI.FriendsMenu.NumButtons then
			f95_arg0.menu:Page( 1 )
			return true
		end
	end
	return LUI.UIButton.GamepadButton( f95_arg0, f95_arg1 )
end

LUI.FriendsMenu.OnBackButton = function ( f96_arg0, f96_arg1, f96_arg2 )
	if f96_arg2.reportOptions then
		f96_arg2:RemoveReportOptions()
		f96_arg2.playerOptions.m_inputDisabled = false
		f96_arg2.playerOptions:animateToState( "default" )
		f96_arg2.playerOptions:processEvent( {
			name = "gain_focus"
		} )
		Engine.PlaySound( CoD.SFX.SelectBack )
	elseif f96_arg2.playerOptions then
		f96_arg2:FocusMainList()
		f96_arg2:AddHelpButtons()
		f96_arg2:AddMoreOptionsDescription()
		Engine.PlaySound( CoD.SFX.SelectBack )
	elseif f96_arg2.statusOptions then
		f96_arg2:RemoveChangeStatusOptions()
		f96_arg2.playerOptions:animateToState( "default" )
		f96_arg2.playerOptions:processEvent( {
			name = "gain_focus"
		} )
		f96_arg0.menu.playerOptions.m_inputDisabled = false
	elseif LUI.FriendsMenu.ActiveSublist then
		assert( LUI.FriendsMenu.ActiveSublistOwner ~= nil )
		removeOptionsSubList( LUI.FriendsMenu.ActiveSublistOwner:getParent() )
		f96_arg2:AddHelpButtons()
		f96_arg2.currentTab:helpFunc()
		Engine.PlaySound( CoD.SFX.SelectBack )
	else
		LUI.FlowManager.RequestLeaveMenu( f96_arg0 )
	end
end

LUI.FriendsMenu.FocusMainList = function ( f97_arg0 )
	if LUI.FriendsMenu.FriendsMenuHasFocus() then
		f97_arg0:RemoveReportOptions()
		f97_arg0:RemovePlayerOptions()
		f97_arg0:RemoveChangeStatusOptions()
		if f97_arg0.focusedButton ~= nil then
			f97_arg0.focusedButton:setFocus( true )
			f97_arg0.list:saveState()
		end
		f97_arg0.list:processEvent( {
			name = "gain_focus"
		} )
	end
end

LUI.FriendsMenu.TickRefresh = function ( f98_arg0 )
	f98_arg0:RefreshList()
end

LUI.FriendsMenu.GetButtonForIndex = function ( f99_arg0, f99_arg1 )
	return f99_arg0.list:getChildById( "FriendsListItem" .. f99_arg1 )
end

LUI.FriendsMenu.RefreshList = function ( f100_arg0 )
	if Engine.IsXB3() or Engine.IsPCApp() then
		Engine.ExecNow( "friends_refresh" )
	end
	Engine.ExecNow( "refreshfacebookfriends" )
	local f100_local0 = f100_arg0.friendCount
	f100_arg0.friendCount = f100_arg0.currentTab.countFunc( f100_arg0.controller )
	f100_arg0.friendData = {}
	local f100_local1 = f100_arg0.focusedButton and f100_arg0.focusedButton.friendIndex or 0
	if f100_arg0.focusedButton ~= nil then
		local f100_local2 = f100_arg0.focusedButton.data
		local f100_local3 = f100_arg0.focusedButton.data.xuid
	end
	local f100_local4 = f100_local2 and f100_local3 or -1
	local f100_local5 = f100_local1
	f100_arg0.friendOffset, f100_local5 = f100_arg0.currentTab.cursorFunc( f100_arg0.controller, LUI.FriendsMenu.NumButtons, f100_local1, f100_arg0.friendOffset )
	for f100_local6 = 1, LUI.FriendsMenu.NumButtons, 1 do
		local f100_local9 = LUI.FriendsMenu.GetButtonForIndex( f100_arg0, f100_local6 )
		if f100_local9 ~= nil then
			local f100_local10 = f100_local6 + f100_arg0.friendOffset - 1
			if f100_local10 < f100_arg0.friendCount then
				f100_local9.friendIndex = f100_local10
				f100_local9:animateToState( "default" )
				local f100_local11 = {
					xuid = f100_arg0.currentTab.xuidGetFunc( f100_arg0.controller, f100_local10 ),
					gamertag = CoD.FormatClanAndGamerTags( f100_arg0.currentTab.clanTagFunc( f100_arg0.controller, f100_local10 ), f100_arg0.currentTab.gamerTagFunc( f100_arg0.controller, f100_local10 ) ),
					presence = f100_arg0.currentTab.presenceFunc( f100_arg0.controller, f100_local10 )
				}
				if f100_arg0.currentTab.isOnlineFunc then
					f100_local11.isOnline = f100_arg0.currentTab.isOnlineFunc( f100_arg0.controller, f100_local10 )
				else
					f100_local11.defaultHeader = Engine.Localize( f100_arg0.currentTab.defaultHeader )
				end
				f100_local11.rank = f100_arg0.currentTab.rankFunc( f100_arg0.controller, f100_local10 )
				f100_local11.prestige = f100_arg0.currentTab.prestigeFunc( f100_arg0.controller, f100_local10 )
				f100_local11.rankIcons = f100_arg0.currentTab.rankIconsFunc( f100_arg0.controller, f100_local10 )
				f100_local11.background = f100_arg0.currentTab.backgroundFunc( f100_arg0.controller, f100_local10 )
				f100_local11.emblem = f100_arg0.currentTab.emblemFunc( f100_arg0.controller, f100_local10 )
				if f100_arg0.currentTab.clanPositionFunc then
					f100_local11.clanPosition = f100_arg0.currentTab.clanPositionFunc( f100_arg0.controller, f100_local10 )
				end
				f100_local9:Refresh( f100_local11 )
				f100_local9:makeFocusable()
				if not Engine.IsConsoleGame() then
					f100_local9:setHandleMouseButton( true )
				end
				if f100_local11.isOnline == true then
					if f100_local9.isSelected ~= true then
						f100_local9.onlineDeco:show()
					end
				end
				f100_local9.onlineDeco:hide()
			end
			f100_local9:animateToState( "hidden" )
			f100_local9:makeNotFocusable()
			if not Engine.IsConsoleGame() then
				f100_local9:setHandleMouseButton( false )
			end
		end
	end
	if f100_arg0.friendCount > 0 then
		f100_arg0:RemoveNoFriends()
		if f100_local0 and f100_local0 < 1 then
			f100_arg0:FocusMainList()
		end
		if f100_arg0.focusedButton ~= nil then
			local f100_local6 = LUI.FriendsMenu.GetButtonForIndex( f100_arg0, f100_local5 - f100_arg0.friendOffset + 1 )
			if f100_local1 ~= f100_local5 then
				if f100_arg0.focusedButton:isInFocus() then
					LUI.UIElement.processNavigationEvent( f100_arg0.focusedButton, {
						controller = f100_arg0.controller
					}, f100_local6 )
				else
					f100_arg0.focusedButton:SetHighlight( false )
					f100_local6:SetHighlight( true )
					f100_arg0.highlightedButton = f100_local6
					f100_arg0.focusedButton:setFocus( false )
					f100_local6:setFocus( true )
					f100_arg0.list:saveState()
					f100_local6:setFocus( false )
					f100_arg0:UpdateScrollText( f100_local5 + 1, f100_arg0.friendCount )
				end
				f100_arg0.focusedButton = f100_local6
			elseif f100_local4 ~= -1 and f100_local6 ~= nill and f100_local4 ~= f100_local6.data.xuid then
				f100_arg0:JumpToTop()
			end
			f100_arg0.playerCard:feedContent( f100_arg0.focusedButton.data )
			f100_arg0:RefreshPlayerDetails( f100_arg0.focusedButton.data )
		end
		f100_arg0.subContainer:animateToState( "default" )
	else
		f100_arg0:AddNoFriends( f100_arg0.currentTab.noFriends, f100_arg0.controller )
		f100_arg0.subContainer:animateToState( "hidden" )
	end
	if f100_local0 ~= f100_arg0.friendCount then
		f100_arg0.list:updateNavigation()
	end
end

LUI.FriendsMenu.JumpToTop = function ( f101_arg0 )
	f101_arg0:RemovePlayerOptions()
	f101_arg0:RemoveReportOptions()
	f101_arg0:RemoveChangeStatusOptions()
	f101_arg0.friendOffset = 0
	f101_arg0.currentTab.xuidFunc( f101_arg0.controller, 0 )
	f101_arg0.list:processEvent( {
		name = "lose_focus"
	} )
	f101_arg0.list:clearSavedState()
	f101_arg0:RefreshList()
	if LUI.FriendsMenu.FriendsMenuHasFocus() then
		f101_arg0.list:processEvent( {
			name = "gain_focus",
			flowType = FocusType.Gamepad
		} )
	end
end

LUI.FriendsMenu.ChangeTab = function ( f102_arg0, f102_arg1 )
	f102_arg0.currentTab = f102_arg1
	f102_arg0.currentTab:subPanelFunc()
	f102_arg0:JumpToTop()
	f102_arg0:AddHelpButtons()
	f102_arg0.currentTab:helpFunc()
end

LUI.FriendsMenu.AddSubPanel = function ( f103_arg0 )
	removeOptionsSubList()
	if f103_arg0.subPanel then
		f103_arg0:removeElement( f103_arg0.subPanel )
		f103_arg0.subPanel = nil
	end
	local subPanel = LUI.UIElement.new( CoD.CreateState( -382, -195, nil, 182, CoD.AnchorTypes.Right ) )
	f103_arg0:addElement( subPanel )
	f103_arg0.subPanel = subPanel
	
end

function PartyPrivacyDisplayFunc()
	local f104_local0 = Lobby.IsPrivatePartyOpen()
	local f104_local1 = nil
	if f104_local0 then
		f104_local1 = Lobby.PrivacySettings.Open
	else
		f104_local1 = Lobby.PrivacySettings.Closed
	end
	return Lobby.PrivacySettings.Texts[f104_local1]
end

function PartyPrivacySetFunc( f105_arg0 )
	if Lobby.IsPrivatePartyOpen() then
		if f105_arg0 == 0 then
			Lobby.TogglePrivatePartyOpen()
		end
	elseif f105_arg0 == 1 then
		Lobby.TogglePrivatePartyOpen()
	end
end

f0_local0 = function ()
	local f106_local0 = Engine.GetDvarInt( "party_partyPlayerCountNum" )
	if f106_local0 < PLAYER_LIMIT_MIN then
		f106_local0 = PLAYER_LIMIT_MIN
	end
	return f106_local0
end

f0_local1 = function ()
	return Engine.GetDvarInt( "party_maxPrivatePartyPlayers" )
end

f0_local2 = function ( f108_arg0 )
	local f108_local0 = f0_local0()
	if f108_arg0 < f108_local0 then
		f108_arg0 = f108_local0
	end
	if PLAYER_LIMIT_MAX < f108_arg0 then
		f108_arg0 = PLAYER_LIMIT_MAX
	end
	Engine.SetDvarInt( "party_maxPrivatePartyPlayers", f108_arg0 )
end

function PlayerLimitDisplayFunc()
	return f0_local1()
end

function PlayerLimitSetFunc( f110_arg0 )
	f0_local2( f110_arg0 )
end

function removeOptionsSubList( f111_arg0 )
	if LUI.FriendsMenu.ActiveSublist then
		LUI.FriendsMenu.ActiveSublist:clearSavedState()
		local f111_local0 = LUI.FriendsMenu.ActiveSublist:getParent()
		f111_local0:removeElement( LUI.FriendsMenu.ActiveSublist )
		LUI.FriendsMenu.ActiveSublist = nil
		LUI.FriendsMenu.ActiveSublistOwner = nil
		if f111_arg0 then
			f111_arg0:processEvent( {
				name = "gain_focus"
			} )
		end
		LUI.FriendsMenu.Menu:AddHelpButtons()
		LUI.FriendsMenu.Menu.currentTab.helpFunc( LUI.FriendsMenu.Menu )
	end
end

function addOptionsSublist( f112_arg0, f112_arg1, f112_arg2, f112_arg3, f112_arg4, f112_arg5, f112_arg6 )
	removeOptionsSubList()
	local f112_local0 = 24
	local f112_local1 = 4
	local f112_local2 = 7
	local f112_local3 = false
	local f112_local4 = f112_local1 + f112_local0 * f112_arg4
	if f112_local2 * f112_local0 < f112_local4 then
		f112_local4 = f112_local2 * f112_local0
		f112_local3 = true
	end
	local f112_local5, f112_local6, f112_local7, f112_local8 = f112_arg0:getRect()
	local f112_local9 = 1
	if Engine.GetLuiRootScale then
		f112_local9 = Engine.GetLuiRootScale()
	end
	local f112_local10, f112_local11, f112_local12, f112_local13 = f112_arg2:getRect()
	local f112_local14 = (f112_local6 - f112_local11 + f112_local8 - f112_local6) / f112_local9
	local f112_local15 = LUI.SubList.CreateSublist( CoD.CreateState( (f112_local5 - f112_local10) / f112_local9, f112_local14, (f112_local7 - f112_local10) / f112_local9, f112_local14 + f112_local4, CoD.AnchorTypes.TopLeft ), f112_local1 / 2 )
	f112_local15.vertList.id = "partyManagementOptions_sublist"
	f112_local15.vertList.buttonCount = f112_arg4
	f112_local15.vertList.parent = f112_arg2
	f112_local15.vertList.button = f112_arg0
	for f112_local19, f112_local20 in ipairs( f112_arg3 ) do
		local f112_local21 = LUI.SubList.CreateSubListButton( f112_local19, f112_local0, 20, -12, 14 )
		f112_local21.text:setText( f112_local20.label )
		f112_local21:addEventHandler( "button_action", function ( f113_arg0, f113_arg1 )
			f112_arg5( f112_local20.value )
			removeOptionsSubList( f112_arg1 )
			f112_local15.vertList.button:setText( Engine.ToUpperCase( Engine.Localize( f112_arg6() ) ) )
			f112_arg2:AddHelpButtons()
			f112_arg2.currentTab:helpFunc()
		end )
		f112_local21.listDefaultFocus = f112_local20.isDefault
		f112_local15.vertList:addElement( f112_local21 )
	end
	if f112_local3 == true then
		LUI.Options.InitScrollingList( f112_local15.vertList, nil, {
			rows = f112_local2,
			scrollBarLeftOffset = 0
		} )
	end
	f112_arg2:insertElement( f112_local15, 1 )
	LUI.FriendsMenu.ActiveSublist = f112_local15
	LUI.FriendsMenu.ActiveSublistOwner = f112_arg0
	f112_arg1:processEvent( {
		name = "lose_focus"
	} )
	f112_local15.vertList:processEvent( {
		name = "gain_focus"
	} )
	LUI.ButtonHelperText.ClearHelperTextObjects( f112_arg2.help, {
		side = "all"
	} )
	LUI.FriendsMenu.Menu:AddHelpButtons()
end

LUI.FriendsMenu.AddPartyManagementSubPanel = function ( f114_arg0 )
	if not Lobby.IsPrivatePartyHost() then
		return 
	elseif f114_arg0.subPanel then
		f114_arg0:removeElement( f114_arg0.subPanel )
		f114_arg0.subPanel = nil
	end
	local f114_local0 = f114_arg0
	local subPanel = LUI.UIElement.new( CoD.CreateState( -247, -191, nil, 178, CoD.AnchorTypes.Right ) )
	local f114_local2 = CoD.CreateState( -150, 30, nil, nil, CoD.AnchorTypes.Top )
	f114_local2.height = 15
	f114_local2.width = 250
	local f114_local3 = LUI.UIVerticalList.new( f114_local2 )
	f114_local3.buttonCount = 0
	local f114_local4 = f114_arg0.list
	f114_arg0.list = f114_local3
	local f114_local5 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.TopLeftRight )
	f114_local5.font = CoD.TextSettings.TitleFontSmaller.Font
	f114_local5.color = Colors.h1.light_grey
	f114_local5.height = 15
	f114_local5.alignment = LUI.Alignment.Left
	if Engine.IsConsoleGame() or Engine.IsPCApp() then
		local f114_local6 = LUI.UIText.new( f114_local5 )
		f114_local6:setText( Engine.Localize( "@PATCH_MENU_PARTY_PRIVACY_CAPS" ) )
		f114_local3:addElement( f114_local6 )
		local f114_local7 = LUI.UIElement.new( CoD.CreateState( 0, 0, 8, 5, CoD.AnchorTypes.TopLeft ) )
		f114_local7.id = "sublistDivider_partyPrivacy"
		local f114_local8 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.LeftRight )
		f114_local8.height = 1
		f114_local8.material = RegisterMaterial( "white" )
		f114_local8.color = GenericButtonSettings.Common.content_focus_color
		f114_local7:addElement( LUI.UIImage.new( f114_local8 ) )
		f114_local3:addElement( f114_local7 )
		f114_arg0:AddSpacing( 2 )
		f114_arg0:AddButton( PartyPrivacyDisplayFunc(), function ( f115_arg0, f115_arg1 )
			local f115_local0 = {}
			for f115_local1 = 1, Lobby.PrivacySettings.NumOptions, 1 do
				local f115_local4 = f115_local1 - 1
				local f115_local5 = false
				if Lobby.IsPrivatePartyOpen() then
					if f115_local4 == 1 then
						f115_local5 = true
					end
				elseif f115_local4 == 0 then
					f115_local5 = true
				end
				f115_local0[f115_local1] = {
					label = Engine.ToUpperCase( Engine.Localize( Lobby.PrivacySettings.Texts[f115_local4] ) ),
					value = f115_local4,
					isDefault = f115_local5
				}
			end
			if f115_arg0 == LUI.FriendsMenu.ActiveSublistOwner then
				removeOptionsSubList()
			else
				addOptionsSublist( f115_arg0, f114_local3, f114_local0, f115_local0, Lobby.PrivacySettings.NumOptions, PartyPrivacySetFunc, PartyPrivacyDisplayFunc )
			end
		end, nil, nil, nil, {
			hasSublist = true
		}, true )
	end
	f114_arg0:AddSpacing( 70 )
	local f114_local6 = LUI.UIText.new( f114_local5 )
	f114_local6:setText( Engine.Localize( "@PATCH_MENU_PLAYER_LIMIT_CAPS" ) )
	f114_local3:addElement( f114_local6 )
	local f114_local7 = LUI.UIElement.new( CoD.CreateState( 0, 0, 8, 5, CoD.AnchorTypes.TopLeft ) )
	f114_local7.id = "sublistDivider_partyLimit"
	f114_local7:addElement( LUI.UIImage.new( dividerState ) )
	f114_local3:addElement( f114_local7 )
	f114_arg0:AddSpacing( 2 )
	f114_arg0:AddButton( PlayerLimitDisplayFunc(), function ( f116_arg0, f116_arg1 )
		local f116_local0 = f0_local0()
		local f116_local1 = PLAYER_LIMIT_MAX - f116_local0 + 1
		local f116_local2 = {}
		for f116_local3 = 1, f116_local1, 1 do
			local f116_local6 = f116_local0 + f116_local3 - 1
			f116_local2[f116_local3] = {
				label = f116_local6,
				value = f116_local6,
				isDefault = f116_local6 == f0_local1()
			}
		end
		if f116_arg0 == LUI.FriendsMenu.ActiveSublistOwner then
			removeOptionsSubList()
		else
			addOptionsSublist( f116_arg0, f114_local3, f114_local0, f116_local2, f116_local1, PlayerLimitSetFunc, PlayerLimitDisplayFunc )
		end
	end, nil, nil, nil, {
		hasSublist = true
	}, true )
	f114_arg0.list = f114_local4
	subPanel:addElement( f114_local3 )
	f114_arg0:addElement( subPanel )
	f114_arg0.subPanel = subPanel
	
end

LUI.FriendsMenu.OnlineFriendsTab = {
	label = "@LUA_MENU_FRIENDS",
	noFriends = Engine.IsPCApp() and "@PLATFORM_NO_FRIENDS_XBOXLIVE" or "@PLATFORM_NO_FRIENDS",
	cursorFunc = Friends.GetOnlineFriendsCursorPos,
	countFunc = Friends.GetOnlineFriendsCount,
	clanTagFunc = Friends.GetOnlineFriendClanTag,
	gamerTagFunc = Friends.GetOnlineFriendGamertag,
	presenceFunc = Friends.GetOnlineFriendPresence,
	isOnlineFunc = Friends.GetOnlineFriendIsOnline,
	rankFunc = Friends.GetOnlineFriendRank,
	rankIconsFunc = Friends.GetOnlineFriendCustomRankIcons,
	prestigeFunc = Friends.GetOnlineFriendPrestige,
	backgroundFunc = Friends.GetOnlineFriendBackground,
	emblemFunc = Friends.GetOnlineFriendPatch,
	xuidFunc = Friends.SetOnlineFriendStoredXUID,
	xuidGetFunc = Friends.GetOnlineFriendXUID,
	reportFunc = Friends.ReportOnlineFriend,
	optionsFunc = LUI.FriendsMenu.AddOnlineFriendOptions,
	helpFunc = LUI.FriendsMenu.AddOnlineFriendHelp,
	subPanelFunc = LUI.FriendsMenu.AddSubPanel
}
LUI.FriendsMenu.RecentPlayersTab = {
	label = "@MENU_RECENT_PLAYERS",
	noFriends = "@LUA_MENU_NO_RECENT_PLAYERS",
	cursorFunc = Friends.GetRecentPlayersCursorPos,
	countFunc = Friends.GetRecentPlayersCount,
	clanTagFunc = Friends.GetRecentPlayerClanTag,
	gamerTagFunc = Friends.GetRecentPlayerGamertag,
	presenceFunc = Friends.GetRecentPlayerPresence,
	rankFunc = Friends.GetRecentPlayerRank,
	rankIconsFunc = Friends.GetRecentPlayerCustomRankIcons,
	prestigeFunc = Friends.GetRecentPlayerPrestige,
	backgroundFunc = Friends.GetRecentPlayerBackground,
	emblemFunc = Friends.GetRecentPlayerPatch,
	xuidFunc = Friends.SetRecentPlayerStoredXUID,
	xuidGetFunc = Friends.GetRecentPlayerXUID,
	reportFunc = Friends.ReportRecentPlayer,
	optionsFunc = LUI.FriendsMenu.AddRecentPlayerOptions,
	helpFunc = LUI.FriendsMenu.AddRecentPlayerHelp,
	subPanelFunc = LUI.FriendsMenu.AddSubPanel,
	defaultHeader = "@MENU_RECENT_CAPS"
}
LUI.FriendsMenu.ReturnTrue = function ()
	return true
end

LUI.FriendsMenu.LivePartyTab = {
	label = "@XBOXLIVE_LIVE_PARTY",
	noFriends = "@PLATFORM_NOT_IN_PARTY",
	cursorFunc = Friends.GetLivePartyFriendsCursorPos,
	countFunc = Friends.GetLivePartyFriendsCount,
	clanTagFunc = Friends.GetLivePartyFriendClanTag,
	gamerTagFunc = Friends.GetLivePartyFriendGamertag,
	presenceFunc = Friends.GetLivePartyFriendPresence,
	rankFunc = Friends.GetLivePartyFriendRank,
	rankIconsFunc = Friends.GetLivePartyFriendCustomRankIcons,
	prestigeFunc = Friends.GetLivePartyFriendPrestige,
	isOnlineFunc = LUI.FriendsMenu.ReturnTrue,
	backgroundFunc = Friends.GetLivePartyFriendBackground,
	emblemFunc = Friends.GetLivePartyFriendPatch,
	xuidFunc = Friends.SetLivePartyFriendStoredXUID,
	xuidGetFunc = Friends.GetLivePartyFriendXUID,
	reportFunc = Friends.ReportLivePartyFriend,
	optionsFunc = LUI.FriendsMenu.AddLivePartyPlayerOptions,
	helpFunc = LUI.FriendsMenu.AddLivePartyPlayerHelp,
	subPanelFunc = LUI.FriendsMenu.AddSubPanel
}
LUI.FriendsMenu.ClanTab = {
	label = "CLANS_CLANS",
	noFriends = function ( f118_arg0 )
		if Clan.IsDownloadingData( f118_arg0 ) then
			return "MENU_DOWNLOADING"
		else
			return "CLANS_NOT_IN_CLAN_HEADER"
		end
	end,
	cursorFunc = Friends.GetEliteClanFriendsCursorPos,
	countFunc = Friends.GetEliteClanFriendsCount,
	clanTagFunc = Friends.GetEliteClanFriendClanTag,
	gamerTagFunc = Friends.GetEliteClanFriendGamertag,
	presenceFunc = Friends.GetEliteClanFriendPresence,
	rankFunc = Friends.GetEliteClanFriendRank,
	rankIconsFunc = Friends.GetEliteClanFriendCustomRankIcons,
	prestigeFunc = Friends.GetEliteClanFriendPrestige,
	backgroundFunc = Friends.GetEliteClanFriendBackground,
	emblemFunc = Friends.GetEliteClanFriendPatch,
	clanPositionFunc = Friends.GetEliteClanFriendMemberStatus,
	xuidFunc = Friends.SetEliteClanFriendStoredXUID,
	xuidGetFunc = Friends.GetEliteClanFriendXUID,
	reportFunc = Friends.ReportEliteClanFriend,
	optionsFunc = LUI.FriendsMenu.AddClanMemberOptions,
	helpFunc = LUI.FriendsMenu.AddClanHelp,
	subPanelFunc = LUI.FriendsMenu.AddSubPanel
}
LUI.FriendsMenu.PartyManagementTab = {
	label = "@MENU_MANAGE_PARTY",
	noFriends = " ",
	cursorFunc = Friends.GetPartyManagementCursorPos,
	countFunc = Friends.GetPartyManagementCount,
	clanTagFunc = Friends.GetPartyManagementClanTag,
	gamerTagFunc = Friends.GetPartyManagementGamertag,
	presenceFunc = Friends.GetPartyManagementPresence,
	rankFunc = Friends.GetPartyManagementRank,
	isOnlineFunc = LUI.FriendsMenu.ReturnTrue,
	rankIconsFunc = Friends.GetPartyManagementCustomRankIcons,
	prestigeFunc = Friends.GetPartyManagementPrestige,
	backgroundFunc = Friends.GetPartyManagementBackground,
	emblemFunc = Friends.GetPartyManagementPatch,
	xuidFunc = Friends.SetPartyManagementStoredXUID,
	xuidGetFunc = Friends.GetPartyManagementXUID,
	reportFunc = Friends.ReportPartyManagement,
	optionsFunc = LUI.FriendsMenu.AddPartyManagementOptions,
	helpFunc = LUI.FriendsMenu.AddPartyManagementHelp,
	subPanelFunc = LUI.FriendsMenu.AddPartyManagementSubPanel
}
LUI.FriendsMenu.AddTabs = function ( f119_arg0, f119_arg1, f119_arg2 )
	local f119_local0
	if not f119_arg1 then
		f119_local0 = Engine.IsXbox360()
		if not f119_local0 then
			f119_local0 = Engine.IsXB3()
		end
	else
		f119_local0 = false
	end
	local f119_local1 = {}
	if not f119_arg1 then
		f119_local1[#f119_local1 + 1] = LUI.FriendsMenu.OnlineFriendsTab
		f119_local1[#f119_local1 + 1] = LUI.FriendsMenu.RecentPlayersTab
		if Engine.InFrontend() then
			f119_local1[#f119_local1 + 1] = LUI.FriendsMenu.PartyManagementTab
		end
	end
	local f119_local2 = {
		defState = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.TopLeftRight )
	}
	local f119_local3
	if f119_local0 then
		f119_local3 = #f119_local1 + 1
		if not f119_local3 then
		
		else
			f119_local2.numOfTabs = f119_local3
			f119_local2.isHidden = f119_arg1
			f119_local3 = LUI.MenuBuilder.BuildRegisteredType( "MFTabManager", f119_local2 )
			f119_local3:keepRightBumperAlignedToHeader( true )
			f119_local3.tabSelected = 1
			f119_arg0:addElement( f119_local3 )
			if f119_arg2 then
				f119_local3.tabSelected = #f119_local1
			end
			if f119_local0 then
				f119_local1[#f119_local1 + 1] = LUI.FriendsMenu.LivePartyTab
				if Friends.HasPartyGameInvite() and not f119_arg2 then
					f119_local3.tabSelected = #f119_local1
				end
			end
			for f119_local4 = 1, #f119_local1, 1 do
				local f119_local7 = f119_local4
				f119_local3:addTab( f119_arg0.controller, f119_local1[f119_local7].label, function ()
					f119_arg0:ChangeTab( f119_local1[f119_local7] )
				end )
			end
			f119_local3:refreshTab( f119_arg0.controller )
		end
	end
	f119_local3 = #f119_local1
end

LUI.FriendsMenu.AddScrollText = function ( f121_arg0 )
	local f121_local0 = 547
	local f121_local1 = CoD.TextSettings.TitleFontTiny
	local f121_local2 = CoD.CreateState( 0, f121_local0, 267, f121_local0 + 14, CoD.AnchorTypes.TopLeft )
	local f121_local3 = Engine.GetServerType()
	local f121_local4 = nil
	if f121_local3 == 0 then
		f121_local4 = Colors.white
	elseif f121_local3 == 1 then
		f121_local4 = Colors.grey_5
	else
		f121_local4 = Colors.grey_4
	end
	f121_local2.color = f121_local4
	f121_local2.font = f121_local1.Font
	f121_local2.alignment = LUI.Alignment.Center
	local self = LUI.UIText.new( f121_local2 )
	f121_arg0.subContainer:addElement( self )
	f121_arg0.scrollText = self
	local f121_local6 = 32
	local f121_local7 = CoD.DesignGridHelper( 2 )
	local f121_local8 = CoD.CreateState( CoD.DesignGridHelper( 2.4 ) - f121_local6, f121_local0 - 8, nil, nil, CoD.AnchorTypes.TopLeft )
	f121_local8.width = f121_local6
	f121_local8.height = f121_local6
	f121_local8.material = RegisterMaterial( "s1_icon_up" )
	if Engine.IsPC() then
		f121_local8.alpha = 0.8
		f121_local8.scale = 0
	end
	local f121_local9 = LUI.UIImage.new( f121_local8 )
	f121_local9:hide()
	f121_arg0.subContainer:addElement( f121_local9 )
	f121_arg0.upArrow = f121_local9
	if Engine.IsPC() then
		local f121_local10 = f121_arg0
		f121_local9:setHandleMouseButton( true )
		f121_local9:setHandleMouseMove( true )
		f121_local9.m_requireFocusType = FocusType.MouseOver
		f121_local9:registerEventHandler( "leftmousedown", function ( element, event )
			element:animateInSequence( {
				{
					"hightlight",
					0
				},
				{
					"pulse",
					100
				},
				{
					"hightlight",
					100
				}
			} )
			f121_local10.focusedButton:setFocus( true )
			OnFriendGamepadButton( f121_local10.focusedButton, {
				down = true,
				button = "up",
				name = "gamepad_button"
			} )
		end )
		f121_local9:registerAnimationState( "hightlight", {
			alpha = 1,
			scale = 0
		} )
		f121_local9:registerAnimationState( "pulse", {
			scale = -0.1
		} )
		f121_local9:registerEventHandler( "mouseenter", function ( element, event )
			element:animateToState( "hightlight" )
		end )
		f121_local9:registerEventHandler( "mouseleave", MBh.AnimateToState( "default" ) )
	end
	f121_local8.material = RegisterMaterial( "s1_icon_down" )
	f121_local8.left = CoD.DesignGridHelper( 4.2 )
	f121_local8.top = f121_local0 - 9
	local f121_local10 = LUI.UIImage.new( f121_local8 )
	if Engine.IsPC() then
		local f121_local11 = f121_arg0
		f121_local10:setHandleMouseButton( true )
		f121_local10:setHandleMouseMove( true )
		f121_local10.m_requireFocusType = FocusType.MouseOver
		f121_local10:registerEventHandler( "leftmousedown", function ( element, event )
			element:animateInSequence( {
				{
					"hightlight",
					0
				},
				{
					"pulse",
					100
				},
				{
					"hightlight",
					100
				}
			} )
			f121_local11.focusedButton:setFocus( true )
			OnFriendGamepadButton( f121_local11.focusedButton, {
				down = true,
				button = "down",
				name = "gamepad_button"
			} )
		end )
		f121_local10:registerAnimationState( "hightlight", {
			alpha = 1,
			scale = 0
		} )
		f121_local10:registerAnimationState( "pulse", {
			scale = -0.1
		} )
		f121_local10:registerEventHandler( "mouseenter", function ( element, event )
			element:animateToState( "hightlight" )
		end )
		f121_local10:registerEventHandler( "mouseleave", MBh.AnimateToState( "default" ) )
	end
	f121_local10:hide()
	f121_arg0.subContainer:addElement( f121_local10 )
	f121_arg0.downArrow = f121_local10
end

LUI.FriendsMenu.AddHelpButtons = function ( f126_arg0 )
	LUI.ButtonHelperText.ClearHelperTextObjects( f126_arg0.help, {
		side = "all"
	} )
	local f126_local0 = f126_arg0
	f126_arg0:AddBackButton( function ( f127_arg0, f127_arg1 )
		LUI.FriendsMenu.OnBackButton( f127_arg0, f127_arg1, f126_local0 )
	end )
end

function OnLiveConnectionUpdate( f128_arg0, f128_arg1 )
	if f128_arg1.signed_in == nil then
		local f128_local0 = Engine.IsNetworkConnected()
		if f128_local0 then
			f128_local0 = Engine.IsUserSignedInToLive()
		end
		f128_arg1.signed_in = f128_local0
	end
	if f128_arg1.signed_in == false then
		LUI.FlowManager.RequestLeaveMenu( f128_arg0 )
	end
end

LUI.FriendsMenu.AddRefreshTimer = function ( f129_arg0 )
	local self = LUI.UITimer.new( 1000, "TickRefresh", nil, false )
	self.id = "RefreshTimer"
	local f129_local1 = f129_arg0
	f129_arg0:addEventHandler( "TickRefresh", function ( f130_arg0, f130_arg1 )
		f129_local1:TickRefresh()
	end )
	f129_arg0:addElement( self )
end

LUI.FriendsMenu.OnClose = function ()
	Friends.SetExclusiveController( -1 )
end

LUI.FriendsMenu.new = function ( f132_arg0, f132_arg1 )
	local f132_local0 = f132_arg1.isClanRoster and "CLANS_ROSTER" or "@LUA_MENU_SOCIAL_TITLE"
	local f132_local1 = CoD.DesignGridHelper( 6 )
	local f132_local2 = LUI.MenuTemplate.new( f132_arg0, {
		menu_title = f132_local0,
		menu_title_width = f132_local1,
		menu_width = f132_local1,
		menu_top_indent = LUI.FriendsMenu.TopOffset,
		menu_height = LUI.FriendsMenu.NumButtons * LUI.FriendsListItem.Height,
		do_not_add_friends_helper = true,
		uppercase_title = true,
		disableDeco = true,
		spacing = 8
	} )
	f132_local2:setClass( LUI.FriendsMenu )
	local f132_local3 = f132_arg1.exclusiveController
	if not f132_local3 then
		f132_local3 = Engine.GetFirstActiveController()
	end
	f132_local2.controller = f132_local3
	f132_local2.list.noWrap = true
	LUI.FriendsMenu.Menu = f132_local2
	Friends.SetExclusiveController( f132_local2.controller )
	f132_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f132_local3.alpha = 1
	
	local subContainer = LUI.UIElement.new( f132_local3 )
	subContainer:registerAnimationState( "default", f132_local3 )
	subContainer:registerAnimationState( "hidden", {
		alpha = 0
	} )
	f132_local2:addElement( subContainer )
	f132_local2.subContainer = subContainer
	
	f132_local2:registerEventHandler( "live_connection", OnLiveConnectionUpdate )
	f132_local2:registerEventHandler( "unhandled_leftmouseup", function ( element, event )
		removeOptionsSubList()
	end )
	f132_local2:registerEventHandler( "unhandled_rightmouseup", function ( element, event )
		removeOptionsSubList()
	end )
	f132_local2:AddScrollText()
	f132_local2:AddPlayerDetails()
	f132_local2:AddPlayerCard()
	for f132_local5 = 1, LUI.FriendsMenu.NumButtons, 1 do
		local f132_local8 = LUI.FriendsListItem.new( f132_local2.controller )
		f132_local8.id = "FriendsListItem" .. f132_local5
		f132_local8:registerEventHandler( "button_over", OnFocusFriend )
		f132_local8:registerEventHandler( "button_action", OnSelectFriend )
		f132_local8:registerEventHandler( "gamepad_button", OnFriendGamepadButton )
		f132_local8.menu = f132_local2
		f132_local8.index = f132_local5
		f132_local2.list:addElement( f132_local8 )
	end
	f132_local2:AddTabs( f132_arg1.isClanRoster, f132_arg1.defaultToRecent )
	f132_local2:AddRefreshTimer()
	Engine.ExecNow( "eliteclan_refresh", f132_local2.controller )
	return f132_local2
end

function popup_friend_invite_sent( f135_arg0, f135_arg1 )
	return LUI.MenuBuilder.BuildRegisteredType( "generic_confirmation_popup", {
		popup_title = Engine.Localize( "@MENU_POPUP_INVITE_SENT" ),
		message_text = Engine.Localize( "@MENU_POPUP_INVITE_SENT" ),
		dialog_top = -100,
		dialog_bottom = 100
	} )
end

LUI.MenuBuilder.registerType( "FriendsMenu", LUI.FriendsMenu.new )
LUI.MenuBuilder.registerPopupType( "popup_friend_invite_sent", popup_friend_invite_sent )
LUI.FlowManager.RegisterStackPopBehaviour( "FriendsMenu", LUI.FriendsMenu.OnClose )
LUI.FlowManager.RegisterStackPushBehaviour( "FriendsMenu", function ()
	if Engine.IsPS4() then
		Engine.HidePsStoreIcon()
	end
end )
LockTable( _M )
