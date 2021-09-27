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
	local self = LUI.UIImage.new( f6_local5 )
	self:addElement( self )
	self:registerAnimationState( "online", {
		material = RegisterMaterial( "h1_ui_social_bg_online" )
	} )
	self:registerAnimationState( "offline", {
		material = RegisterMaterial( "h1_ui_social_bg_offline" )
	} )
	self:hide()
	local f6_local7 = CoD.CreateState( 1, 13, 5, 72, CoD.AnchorTypes.TopLeft )
	f6_local7.material = RegisterMaterial( "h1_ui_social_deco_online" )
	local self = LUI.UIImage.new( f6_local7 )
	self:addElement( self )
	self:hide()
	local self = LUI.UIElement.new( CoD.CreateState( 22, 120, f6_local2, f6_local3, CoD.AnchorTypes.TopLeft ) )
	self:addElement( self )
	local f6_local10 = CoD.TextSettings.Font46
	local f6_local11 = CoD.CreateState( nil, 0, nil, f6_local10.Height, CoD.AnchorTypes.TopLeft )
	f6_local11.font = f6_local10.Font
	f6_local11.alignment = LUI.Alignment.Left
	local self = LUI.UIText.new( f6_local11 )
	self:addElement( self )
	self:registerAnimationState( "online", {
		color = GenericMenuColors.text_highlight
	} )
	self:registerAnimationState( "offline", {
		color = Colors.grey_4
	} )
	self:registerAnimationState( "recent", {
		color = Colors.white
	} )
	local f6_local13 = CoD.TextSettings.Font24
	local f6_local14 = CoD.CreateState( 2, 34, nil, f6_local13.Height + 34, CoD.AnchorTypes.TopLeft )
	f6_local14.font = f6_local13.Font
	f6_local14.alignment = LUI.Alignment.Left
	local self = LUI.UIText.new( f6_local14 )
	self:addElement( self )
	self:registerAnimationState( "online", {
		color = Colors.white
	} )
	self:registerAnimationState( "offline", {
		color = Colors.grey_4
	} )
	self:registerAnimationState( "recent", {
		color = Colors.white
	} )
	self.presenceBackground = self
	self.presenceDeco = self
	self.presenceHeader = self
	self.presenceText = self
	f6_arg0.playerDetails = self
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
	local f15_local2 = function ( f79_arg0, f79_arg1, f79_arg2, f79_arg3 )
		f79_arg0.menu.currentTab.reportFunc( f79_arg1.controller, f79_arg2 )
		f79_arg0.menu:AddDescription( f79_arg3 )
		f79_arg0.menu:FocusMainList()
	end
	
	f15_arg0:AddButton( "@MENU_REPORT_OFFENSIVE", function ( f80_arg0, f80_arg1 )
		f15_local2( f80_arg0, f80_arg1, Friends.Constants.reportOffensiveLobbyPlayer, "@MENU_REPORT_OFFENSIVE_SUBMIT" )
	end, nil, nil, nil, nil, true )
	f15_arg0:AddButton( "@MENU_REPORT_EXPLOITING", function ( f81_arg0, f81_arg1 )
		f15_local2( f81_arg0, f81_arg1, Friends.Constants.reportExploitingLobbyPlayer, "@MENU_REPORT_EXPLOITING_SUBMIT" )
	end, nil, nil, nil, nil, true )
	f15_arg0:AddButton( "@MENU_REPORT_CHEATING", function ( f82_arg0, f82_arg1 )
		f15_local2( f82_arg0, f82_arg1, Friends.Constants.reportCheatingLobbyPlayer, "@MENU_REPORT_CHEATING_SUBMIT" )
	end, nil, nil, nil, nil, true )
	f15_arg0:AddButton( "@MENU_REPORT_BOOSTING", function ( f83_arg0, f83_arg1 )
		f15_local2( f83_arg0, f83_arg1, Friends.Constants.reportBoostingLobbyPlayer, "@MENU_REPORT_BOOSTING_SUBMIT" )
	end, nil, nil, nil, nil, true )
	if Engine.EmblemsEnabled() then
		f15_arg0:AddButton( "@MENU_REPORT_EMBLEM", function ( f84_arg0, f84_arg1 )
			f15_local2( f84_arg0, f84_arg1, Friends.Constants.reportEmblemLobbyPlayer, "@MENU_REPORT_EMBLEM_SUBMIT" )
		end, nil, nil, nil, nil, true )
	end
	f15_arg0.reportOptions = f15_local0
	f15_arg0.list = f15_local1
	f15_local0:clearSavedState()
end

function OnReport( f16_arg0, f16_arg1 )
	f16_arg0.menu:RemoveDescription()
	f16_arg0.menu:RemoveReportOptions()
	f16_arg0.menu.playerOptions:processEvent( {
		name = "lose_focus",
		immediate = true
	} )
	f16_arg0.menu.playerOptions:animateToState( "hidden" )
	f16_arg0.menu.playerOptions.m_inputDisabled = true
	f16_arg0.menu:AddReportOptions()
	f16_arg0.menu.reportOptions:processEvent( {
		name = "gain_focus",
		immediate = true
	} )
end

LUI.FriendsMenu.InviteSentCommon = function ( f17_arg0 )
	f17_arg0:FocusMainList()
end

LUI.FriendsMenu.RemoveChangeStatusOptions = function ( f18_arg0 )
	if f18_arg0.statusOptions ~= nil then
		f18_arg0:removeElement( f18_arg0.statusOptions )
		f18_arg0.statusOptions = nil
	end
end

LUI.FriendsMenu.OnClanSetToCoLeader = function ( f19_arg0, f19_arg1 )
	Clan.SetToCoLeader( f19_arg1.controller )
	f19_arg0.menu:FocusMainList()
end

LUI.FriendsMenu.OnClanSetToClanMember = function ( f20_arg0, f20_arg1 )
	Clan.SetToClanMember( f20_arg1.controller )
	f20_arg0.menu:FocusMainList()
end

LUI.FriendsMenu.OnClanTransferLeadership = function ( f21_arg0, f21_arg1 )
	LUI.FlowManager.RequestAddMenu( f21_arg0, "transferownership_warning", true, f21_arg1.controller, false, data )
end

LUI.FriendsMenu.AddChangeStatusOptions = function ( f22_arg0, f22_arg1 )
	local f22_local0 = f22_arg0:BuildSublist()
	f22_local0.id = "ReportOptions"
	f22_arg0:addElement( f22_local0 )
	local f22_local1 = f22_arg0.list
	f22_arg0.list = f22_local0
	local f22_local2 = function ()
		return Friends.GetEliteClanFriendMemberStatusIndex( f22_arg1, f22_arg0.focusedButton.friendIndex ) == ClanMemberStatus.CoLeader
	end
	
	local f22_local3 = function ()
		return Friends.GetEliteClanFriendMemberStatusIndex( f22_arg1, f22_arg0.focusedButton.friendIndex ) == ClanMemberStatus.Member
	end
	
	local f22_local4 = Friends.GetEliteClanFriendMemberStatus( f22_arg1, f22_arg0.focusedButton.friendIndex )
	f22_arg0:AddButton( "CLANS_STATUS_COLEADER", LUI.FriendsMenu.OnClanSetToCoLeader, f22_local2, nil, nil, nil, true )
	f22_arg0:AddButton( "CLANS_STATUS_MEMBER", LUI.FriendsMenu.OnClanSetToClanMember, f22_local3, nil, nil, nil, true )
	if Clan.AmILeader( f22_arg1 ) then
		f22_arg0:AddButton( "CLANS_TRANSFER_OWNERSHIP", LUI.FriendsMenu.OnClanTransferLeadership, nil, nil, nil, nil, true )
	end
	f22_arg0.statusOptions = f22_local0
	f22_arg0.statusOptions:registerEventHandler( "popup_inactive", function ( element, event )
		f22_arg0:FocusMainList()
	end )
	f22_arg0.list = f22_local1
	f22_local0:clearSavedState()
end

function OnChangeStatus( f23_arg0, f23_arg1 )
	f23_arg0.menu.playerOptions:processEvent( {
		name = "lose_focus",
		immediate = true
	} )
	f23_arg0.menu.playerOptions:animateToState( "hidden" )
	f23_arg0.menu.playerOptions.m_inputDisabled = true
	f23_arg0.menu:AddChangeStatusOptions( f23_arg1.controller )
	f23_arg0.menu.statusOptions:processEvent( {
		name = "gain_focus",
		immediate = true
	} )
end

LUI.FriendsMenu.AddInviteToClanButton = function ( f24_arg0, f24_arg1, f24_arg2, f24_arg3 )
	assert( f24_arg2 )
	assert( f24_arg3 )
	local f24_local0 = not Engine.InFrontend()
	return f24_arg0:AddButton( "LUA_MENU_CLAN_INVITE_TO_CLAN", function ( f6_arg0, f6_arg1 )
		if Engine.IsChatRestricted() then
			LUI.FlowManager.RequestAddMenu( f6_arg0, "user_generated_content_restriction_popup", true, f6_arg1.controller )
		else
			f24_arg3( f6_arg1.controller )
		end
	end
	, function ()
		local f5_local0 = f24_local0
		if not f5_local0 then
			f5_local0 = not f24_arg2( f24_arg1, f24_arg0.focusedButton.friendIndex )
		end
		return f5_local0
	end
	, nil, nil, nil, true )
end

LUI.FriendsMenu.AddOnlineFriendOptions = function ( f25_arg0 )
	local f25_local0 = f25_arg0:BuildSublist()
	f25_local0.id = "OnlineFriendOptions"
	f25_arg0:addElement( f25_local0 )
	local f25_local1 = f25_arg0.controller
	local f25_local2 = f25_arg0.list
	f25_arg0.list = f25_local0
	local f25_local3 = not Engine.InFrontend()
	local f25_local4 = Engine.InLobby()
	local f25_local5 = nil
	if Engine.IsMultiplayer() then
		local f25_local6 = function ()
			local f6_local0
			if Engine.GetOnlineGame() then
				f6_local0 = not Friends.IsFriendInvitable( f25_local1 )
			else
				f6_local0 = true
			end
			return f6_local0
		end
		
		local f25_local7
		if f25_local3 or f25_local4 then
			f25_local7 = "@MENU_INVITE_TO_GAME"
			if not f25_local7 then
			
			else
				f25_local5 = f25_arg0:AddButton( f25_local7, function ( f7_arg0, f7_arg1 )
					f7_arg0.menu:InviteSentCommon()
					Friends.InviteOnlineFriend( f7_arg1.controller )
				end, f25_local6, nil, nil, nil, true )
				f25_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f25_local7 = "@MENU_INVITE_TO_PARTY"
	end
	f25_local5 = f25_arg0:AddButton( "@MENU_JOIN_GAME", function ( f9_arg0, f9_arg1 )
		Friends.JoinOnlineFriend( f9_arg1.controller )
	end, function ()
		local f8_local0
		if Engine.UserCanPlayOnline( f25_local1 ) then
			f8_local0 = not Friends.IsFriendJoinable( f25_local1 )
		else
			f8_local0 = true
		end
		return f8_local0
	end, nil, nil, nil, true )
	f25_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	if Clan.IsEnabled() and Engine.IsMultiplayer() and Clan.AlreadyMember( f25_local1 ) then
		f25_local5 = LUI.FriendsMenu.AddInviteToClanButton( f25_arg0, f25_local1, Clan.CanISendInviteToFriend, Clan.InviteFriendToClan )
		f25_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Engine.IsXbox360() or Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
		f25_local5 = f25_arg0:AddButton( "@XBOXLIVE_VIEW_PROFILE", function ( f11_arg0, f11_arg1 )
			Friends.ShowOnlineFriendGamercard( f11_arg1.controller )
		end, function ()
			return not Friends.CanShowFriendGamercard( f25_local1 )
		end, nil, nil, nil, true )
		f25_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	f25_arg0:AddButton( "@MENU_REPORT_PLAYER", OnReport, nil, nil, nil, nil, true )
	f25_arg0.playerOptions = f25_local0
	f25_arg0.list = f25_local2
	f25_local0:clearSavedState()
end

LUI.FriendsMenu.AddPartyManagementOptions = function ( f26_arg0 )
	local f26_local0 = f26_arg0:BuildSublist()
	f26_local0.id = "PartyOptions"
	f26_arg0:addElement( f26_local0 )
	local f26_local1 = f26_arg0.controller
	local f26_local2 = f26_arg0.list
	f26_arg0.list = f26_local0
	local f26_local3 = {}
	if Engine.IsConsoleGame() or Engine.IsPCApp() then
		local f26_local4 = {}
		local f26_local5
		if Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
			f26_local5 = LobbyMember.Options.xboxProfile
			if not f26_local5 then
			
			else
				local f26_local6 = LobbyMember.Options.toggleMute
				local f26_local7 = LobbyMember.Options.tryMigrateHost
				local f26_local8 = LobbyMember.Options.reportPlayer
				local f26_local9 = LobbyMember.Options.kickPlayer
				f26_local4[1] = f26_local5
				f26_local4[2] = f26_local6
				f26_local4[3] = f26_local7
				f26_local4[4] = f26_local8
				f26_local4[5] = f26_local9
				f26_local3 = f26_local4
			end
		end
		f26_local5 = LobbyMember.Options.psSendFriendInvite
	else
		f26_local3 = {
			LobbyMember.Options.toggleMute,
			LobbyMember.Options.tryMigrateHost,
			LobbyMember.Options.reportPlayer,
			LobbyMember.Options.kickPlayer
		}
	end
	local f26_local4 = nil
	for f26_local5 = 1, #f26_local3, 1 do
		local f26_local8 = f26_local5
		if not f26_local3[f26_local8].exclude or f26_local3[f26_local8].exclude( f26_local1 ) == false then
			local f26_local9 = function ()
				return f26_local3[f26_local8].disabled( f26_local1 )
			end
			
			local f26_local10 = f26_local3[f26_local8].customActionFunc
			if not f26_local10 then
				f26_local10 = f26_local3[f26_local8].action
			end
			f26_local4 = f26_arg0:AddButton( f26_local3[f26_local8].text, f26_local10, f26_local9, nil, nil, nil, true )
			f26_local4:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
		end
	end
	f26_arg0.playerOptions = f26_local0
	f26_arg0.list = f26_local2
	f26_local0:clearSavedState()
end

LUI.FriendsMenu.AddOnlineFriendHelp = function ( f27_arg0 )
	local f27_local0 = f27_arg0.controller
	local f27_local1 = f27_arg0
	local f27_local2 = CoD.UsingController() and "button_left" or "button_page_up"
	local f27_local3 = CoD.UsingController() and "button_right" or "button_page_down"
	f27_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = f27_local2,
		helper_text = Engine.Localize( "@LUA_MENU_PAGE_UP" ),
		side = "right",
		clickable = true,
		priority = -1000,
		func = function ( f4_arg0, f4_arg1 )
			f27_local1:Page( -LUI.FriendsMenu.NumButtons )
		end
	} )
	f27_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = f27_local3,
		helper_text = Engine.Localize( "@LUA_MENU_PAGE_DOWN" ),
		side = "right",
		clickable = true,
		priority = -1000,
		func = function ( f5_arg0, f5_arg1 )
			f27_local1:Page( LUI.FriendsMenu.NumButtons )
		end
	} )
	f27_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = "button_alt1",
		helper_text = Engine.Localize( "@LUA_MENU_TOP" ),
		side = "right",
		clickable = true,
		priority = -1000
	}, function ( f6_arg0, f6_arg1 )
		f27_local1:JumpToTop()
	end )
	if PlatformShouldShowGameInvites() and Friends.CountPendingPlaystationInvites and Friends.CountPendingPlaystationInvites( f27_local0 ) > 0 then
		f27_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@PLATFORM_VIEW_GAME_INVITES" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f7_arg0, f7_arg1 )
			if PlatformShouldShowGameInvites() and Friends.CountPendingPlaystationInvites and Friends.CountPendingPlaystationInvites( f7_arg1.controller ) > 0 then
				Engine.Exec( "gameInvitesReceived", f7_arg1.controller )
			end
		end )
	end
end

LUI.FriendsMenu.AddAllFriendOptions = function ( f28_arg0 )
	LUI.FriendsMenu.AddOnlineFriendOptions( f28_arg0 )
end

LUI.FriendsMenu.AddAllFriendHelp = function ( f29_arg0 )
	if PlatformShouldShowGameInvites() and Friends.CountPendingPlaystationInvites and Friends.CountPendingPlaystationInvites( f29_arg0.controller ) > 0 then
		f29_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@PLATFORM_VIEW_GAME_INVITES" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f21_arg0, f21_arg1 )
			if PlatformShouldShowGameInvites() and Friends.CountPendingPlaystationInvites and Friends.CountPendingPlaystationInvites( f21_arg1.controller ) > 0 then
				Engine.Exec( "gameInvitesReceived", f21_arg1.controller )
			end
		end )
	end
end

LUI.FriendsMenu.AddRecentPlayerOptions = function ( f30_arg0 )
	local f30_local0 = f30_arg0:BuildSublist()
	f30_local0.id = "RecentPlayerOptions"
	f30_arg0:addElement( f30_local0 )
	local f30_local1 = f30_arg0.controller
	local f30_local2 = f30_arg0.list
	f30_arg0.list = f30_local0
	if not Engine.IsXbox360() and not Engine.IsXB3() and not Engine.IsPCApp() then
		local f30_local3 = Engine.IsPS4()
	end
	local f30_local4 = not Engine.InFrontend()
	local f30_local5 = Engine.InLobby()
	local f30_local6 = nil
	if Engine.IsMultiplayer() and not Engine.IsPC() then
		local f30_local7 = function ()
			local f22_local0
			if Engine.GetOnlineGame() then
				f22_local0 = not Friends.IsRecentPlayerInvitable( f30_local1 )
			else
				f22_local0 = true
			end
			return f22_local0
		end
		
		local f30_local8
		if f30_local4 or f30_local5 then
			f30_local8 = Engine.Localize( "@MENU_INVITE_TO_GAME" )
			if not f30_local8 then
			
			else
				f30_local6 = f30_arg0:AddButton( f30_local8, function ( f23_arg0, f23_arg1 )
					f23_arg0.menu:InviteSentCommon()
					Friends.InviteRecentPlayer( f23_arg1.controller )
				end, f30_local7, nil, nil, nil, true )
				f30_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f30_local8 = Engine.Localize( "@MENU_INVITE_TO_PARTY" )
	end
	if not Engine.IsPCApp() then
		f30_local6 = f30_arg0:AddButton( "@MENU_JOIN_GAME", function ( f25_arg0, f25_arg1 )
			Friends.JoinRecentPlayer( f30_local1 )
		end, function ()
			local f24_local0
			if Engine.UserCanPlayOnline( f30_local1 ) then
				f24_local0 = not Friends.IsRecentPlayerJoinable( f30_local1 )
			else
				f24_local0 = true
			end
			return f24_local0
		end, nil, nil, nil, true )
		f30_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Clan.IsEnabled() and Engine.IsMultiplayer() and Clan.AlreadyMember( f30_local1 ) then
		f30_local6 = LUI.FriendsMenu.AddInviteToClanButton( f30_arg0, f30_local1, Clan.CanISendInviteToRecentPlayer, Clan.InviteRecentPlayerToClan )
		f30_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Engine.IsXbox360() or Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
		f30_arg0:AddButton( "@XBOXLIVE_VIEW_PROFILE", function ( f26_arg0, f26_arg1 )
			Friends.ShowRecentPlayerGamercard( f30_local1 )
		end, nil, nil, nil, nil, true )
	end
	if not Engine.IsPS4() then
		local f30_local7
		if Engine.IsXB3() or Engine.IsPCApp() then
			f30_local7 = "@LUA_MENU_FRIEND_FOLLOW"
			if not f30_local7 then
			
			else
				f30_local6 = f30_arg0:AddButton( f30_local7, function ( f28_arg0, f28_arg1 )
					Friends.RequestRecentPlayerAsFriend( f30_local1 )
				end, function ()
					return Friends.IsRecentPlayerAFriend( f30_local1 )
				end, nil, nil, nil, true )
				f30_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f30_local7 = "@MENU_FRIEND_REQUEST"
	end
	f30_arg0:AddButton( "@MENU_REPORT_PLAYER", OnReport, nil, nil, nil, nil, true )
	f30_arg0.playerOptions = f30_local0
	f30_arg0.list = f30_local2
	f30_local0:clearSavedState()
end

LUI.FriendsMenu.AddRecentPlayerHelp = function ( f31_arg0 )
	f31_arg0:AddOnlineFriendHelp()
end

LUI.FriendsMenu.AddLivePartyPlayerOptions = function ( f32_arg0 )
	local f32_local0 = f32_arg0:BuildSublist()
	f32_local0.id = "RecentPlayerOptions"
	f32_arg0:addElement( f32_local0 )
	local f32_local1 = f32_arg0.controller
	local f32_local2 = f32_arg0.list
	f32_arg0.list = f32_local0
	if not Engine.IsXbox360() and not Engine.IsXB3() and not Engine.IsPCApp() then
		local f32_local3 = Engine.IsPS4()
	end
	local f32_local4 = not Engine.InFrontend()
	local f32_local5 = Engine.InLobby()
	local f32_local6 = nil
	if Engine.IsMultiplayer() then
		local f32_local7 = function ()
			local f32_local0 = Friends.IsLivePartyLocal( f32_local1 )
			if not f32_local0 then
				if Engine.GetOnlineGame() then
					f32_local0 = not Friends.IsLivePartyFriendInvitable( f32_local1 )
				else
					f32_local0 = true
				end
			end
			return f32_local0
		end
		
		local f32_local8
		if f32_local4 or f32_local5 then
			f32_local8 = Engine.Localize( "@MENU_INVITE_TO_GAME" )
			if not f32_local8 then
			
			else
				f32_local6 = f32_arg0:AddButton( f32_local8, function ( f33_arg0, f33_arg1 )
					f33_arg0.menu:InviteSentCommon()
					Friends.InviteLivePartyFriend( f33_arg1.controller )
				end, f32_local7, nil, nil, nil, true )
				f32_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f32_local8 = Engine.Localize( "@MENU_INVITE_TO_PARTY" )
	end
	f32_local6 = f32_arg0:AddButton( "@MENU_JOIN_GAME", function ( f35_arg0, f35_arg1 )
		Friends.JoinLivePartyFriend( f35_arg1.controller )
	end, function ()
		local f34_local0 = Friends.IsLivePartyLocal( f32_local1 )
		if not f34_local0 then
			if Engine.UserCanPlayOnline( f32_local1 ) then
				f34_local0 = not Friends.IsLivePartyFriendJoinable( f32_local1 )
			else
				f34_local0 = true
			end
		end
		return f34_local0
	end, nil, nil, nil, true )
	f32_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	if Clan.IsEnabled() and Engine.IsMultiplayer() and Clan.AlreadyMember( f32_local1 ) then
		f32_local6 = LUI.FriendsMenu.AddInviteToClanButton( f32_arg0, f32_local1, Clan.CanISendInviteToLiveParty, Clan.InviteLivePartyToClan )
		f32_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Engine.IsXbox360() or Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
		f32_arg0:AddButton( "@XBOXLIVE_VIEW_PROFILE", function ( f36_arg0, f36_arg1 )
			Friends.ShowLivePartyFriendGamercard( f36_arg1.controller )
		end, nil, nil, nil, nil, true )
	end
	f32_local6 = f32_arg0:AddButton( "@MENU_REPORT_PLAYER", OnReport, function ()
		return Friends.IsLivePartyFriendMe( f32_local1, f32_arg0.focusedButton.friendIndex )
	end, nil, nil, nil, true )
	f32_local6:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	f32_arg0.playerOptions = f32_local0
	f32_arg0.list = f32_local2
	f32_local0:clearSavedState()
end

LUI.FriendsMenu.AddLivePartyPlayerHelp = function ( f33_arg0 )
	local f33_local0 = f33_arg0
	if Engine.GetOnlineGame() then
		f33_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_alt2",
			helper_text = Engine.Localize( "@PLATFORM_INVITE_XBOX_LIVE_PARTY" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f14_arg0, f14_arg1 )
			Engine.PlaySound( CoD.SFX.MouseClick )
			Friends.InviteAllLiveParty( f14_arg1.controller )
		end )
	end
	if Engine.GetOnlineGame() and PlatformShouldShowPartyGameInvites() then
		f33_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@MENU_INVITE_FRIENDS" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f15_arg0, f15_arg1 )
			if Friends.OpenSystemFriendsList then
				Friends.OpenSystemFriendsList( f15_arg1.controller )
			else
				Engine.Exec( "xshowfriendslist" )
			end
		end )
	end
	if PlatformShouldShowPartyUI() then
		f33_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_select",
			helper_text = Engine.Localize( "@PLATFORM_PARTY_UI" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f16_arg0, f16_arg1 )
			Friends.OpenLivePartyUI( f16_arg1.controller )
		end )
	end
	if PlatformShouldShowPartyGameInvites() and Friends.HasPartyGameInvite() then
		f33_arg0:AddHelp( {
			name = "add_button_helper_text",
			button_ref = "button_start",
			helper_text = Engine.Localize( "@XBOXLIVE_PARTY_INVITE_ACCEPT" ),
			side = "right",
			clickable = true,
			priority = -1000
		}, function ( f17_arg0, f17_arg1 )
			if Friends.HasPartyGameInvite() then
				Engine.PlaySound( CoD.SFX.MouseClick )
				Friends.AcceptLivePartyInvitation( f17_arg1.controller )
			end
		end )
	end
end

LUI.FriendsMenu.OnClanKickMemberFromClan = function ( f34_arg0, f34_arg1 )
	LUI.FlowManager.RequestAddMenu( f34_arg0, "kickclanmember_warning", true, f34_arg1.controller, false )
end

LUI.FriendsMenu.AddClanMemberOptions = function ( f35_arg0 )
	local f35_local0 = f35_arg0:BuildSublist()
	f35_local0.id = "ClanMemberOptions"
	f35_arg0:addElement( f35_local0 )
	local f35_local1 = f35_arg0.controller
	local f35_local2 = f35_arg0.list
	f35_arg0.list = f35_local0
	local f35_local3 = not Engine.InFrontend()
	local f35_local4 = Engine.InLobby()
	local f35_local5 = nil
	if Engine.IsMultiplayer() then
		local f35_local6 = function ()
			local f18_local0
			if Engine.GetOnlineGame() then
				f18_local0 = Friends.IsEliteClanFriendMe( f35_local1, f35_arg0.focusedButton.friendIndex )
			else
				f18_local0 = true
			end
			return f18_local0
		end
		
		local f35_local7
		if f35_local3 or f35_local4 then
			f35_local7 = "@MENU_INVITE_TO_GAME"
			if not f35_local7 then
			
			else
				f35_local5 = f35_arg0:AddButton( f35_local7, function ( f19_arg0, f19_arg1 )
					f19_arg0.menu:InviteSentCommon()
					Friends.InviteEliteClanFriend( f19_arg1.controller )
				end, f35_local6, nil, nil, nil, true )
				f35_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f35_local7 = "@MENU_INVITE_TO_PARTY"
	end
	f35_local5 = f35_arg0:AddButton( "@MENU_JOIN_GAME", function ( f21_arg0, f21_arg1 )
		Friends.JoinEliteClanFriend( f21_arg1.controller )
	end, function ()
		local f20_local0
		if Engine.UserCanPlayOnline( f35_local1 ) then
			f20_local0 = Friends.IsEliteClanFriendMe( f35_local1, f35_arg0.focusedButton.friendIndex )
		else
			f20_local0 = true
		end
		return f20_local0
	end, nil, nil, nil, true )
	f35_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	if Engine.IsXbox360() or Engine.IsXB3() or Engine.IsPCApp() or Engine.IsPS4() then
		f35_local5 = f35_arg0:AddButton( "@XBOXLIVE_VIEW_PROFILE", function ( f22_arg0, f22_arg1 )
			Friends.ShowEliteClanFriendGamercard( f22_arg1.controller )
		end, nil, nil, nil, nil, true )
		f35_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Clan.CanIChangeMemberStatus( f35_local1 ) then
		f35_local5 = f35_arg0:AddButton( "CLANS_CHANGE_MEMBER_STATUS", OnChangeStatus, function ()
			return Friends.IsEliteClanFriendMe( f35_local1, f35_arg0.focusedButton.friendIndex )
		end, nil, nil, nil, nil, true )
		f35_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if Clan.CanIKickMember( f35_local1 ) then
		f35_local5 = f35_arg0:AddButton( "LUA_MENU_CLAN_KICK_FROM_CLAN", LUI.FriendsMenu.OnClanKickMemberFromClan, function ()
			return Friends.IsEliteClanFriendMe( f35_local1, f35_arg0.focusedButton.friendIndex )
		end, nil, nil, nil, true )
		f35_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	end
	if not Engine.IsPS4() then
		local f35_local8
		if Engine.IsXB3() or Engine.IsPCApp() then
			f35_local8 = "@LUA_MENU_FRIEND_FOLLOW"
			if not f35_local8 then
			
			else
				f35_local5 = f35_arg0:AddButton( f35_local8, function ( f26_arg0, f26_arg1 )
					Friends.RequestEliteClanPlayerAsFriend( f35_local1 )
				end, function ()
					local f25_local0 = Friends.IsEliteClanFriendMe( f35_local1, f35_arg0.focusedButton.friendIndex )
					if not f25_local0 then
						f25_local0 = Friends.IsEliteClanPlayerAFriend( f35_local1 )
					end
					return f25_local0
				end, nil, nil, nil, true )
				f35_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
			end
		end
		f35_local8 = "@MENU_FRIEND_REQUEST"
	end
	f35_local5 = f35_arg0:AddButton( "@MENU_REPORT_PLAYER", OnReport, function ()
		return Friends.IsEliteClanFriendMe( f35_local1, f35_arg0.focusedButton.friendIndex )
	end, nil, nil, nil, true )
	f35_local5:setDisabledRefreshRate( LUI.FriendsMenu.ButtonRefreshRate )
	f35_arg0.playerOptions = f35_local0
	f35_arg0.list = f35_local2
	f35_local0:clearSavedState()
end

LUI.FriendsMenu.AddClanHelp = function ( f36_arg0 )
	f36_arg0:AddOnlineFriendHelp()
end

LUI.FriendsMenu.AddPartyManagementHelp = function ( f37_arg0 )
	local f37_local0 = f37_arg0
	f37_local0.sublistFocused = false
	local f37_local1 = function ( f13_arg0, f13_arg1 )
		f37_local0.subPanel:processEvent( {
			name = "lose_focus"
		} )
		f37_local0.list:processEvent( {
			name = "gain_focus",
			flowType = FocusType.Gamepad
		} )
		f37_local0.sublistFocused = false
	end
	
	local f37_local2 = function ( f14_arg0, f14_arg1 )
		f37_local0:RemoveDescription()
		f37_local0.list:processEvent( {
			name = "lose_focus"
		} )
		if f37_local0.sublistFocused == false then
			f37_local0.subPanel:processEvent( {
				name = "gain_focus",
				flowType = FocusType.Gamepad
			} )
		end
		if f37_local0.focusedButton ~= nil then
			f37_local0.focusedButton:SetHighlight( false )
			f37_local0.focusedButton = nil
		end
		f37_local0.sublistFocused = true
	end
	
	f37_arg0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = "button_left",
		button_ref2 = "button_right",
		helper_text = Engine.Localize( "@LUA_MENU_NAVIGATE" ),
		side = "right",
		clickable = false,
		priority = -1000,
		func = f37_local1,
		func2 = f37_local2,
		leftIconClickFunc = f37_local1,
		rightIconClickFunc = f37_local2
	} )
end

LUI.FriendsMenu.AddMoreOptionsDescription = function ( f38_arg0 )
	f38_arg0:AddDescription( "@LUA_MENU_FRIENDS_OPTIONS", Engine.Localize( CoD.UsingController() and ButtonMap.button_action.string or ButtonMap.button_action.keyboard_mouse_string ) )
	f38_arg0.currentTab:helpFunc()
end

LUI.FriendsMenu.UpdateScrollText = function ( f39_arg0, f39_arg1, f39_arg2 )
	f39_arg0.scrollText:setText( Engine.Localize( "@MPUI_X_SLASH_Y_WIDE", f39_arg1, f39_arg2 ) )
	if f39_arg0.friendCount > LUI.FriendsMenu.NumButtons then
		f39_arg0.upArrow:show()
		f39_arg0.downArrow:show()
	else
		f39_arg0.upArrow:hide()
		f39_arg0.downArrow:hide()
	end
end

function OnFocusFriend( f40_arg0, f40_arg1 )
	if Engine.IsPC() and f40_arg0.menu.playerOptions ~= nil then
		return 
	elseif f40_arg0.menu.highlightedButton ~= f40_arg0 then
		if f40_arg0.menu.highlightedButton ~= nil then
			f40_arg0.menu.highlightedButton:SetHighlight( false )
		end
		f40_arg0.menu.currentTab.xuidFunc( f40_arg0.menu.controller, f40_arg0.friendIndex )
		f40_arg0.menu.playerCard:feedContent( f40_arg0.data )
		f40_arg0.menu:RefreshPlayerDetails( f40_arg0.data )
		f40_arg0.menu:AddMoreOptionsDescription()
		if Engine.IsPC() then
			f40_arg0.menu:RemoveReportOptions()
			f40_arg0.menu:RemovePlayerOptions()
		end
	end
	f40_arg0:SetHighlight( true )
	if f40_arg0.menu.focusedButton and f40_arg0.menu.focusedButton ~= f40_arg0 then
		f40_arg0.menu.focusedButton:SetHighlight( false )
		f40_arg0.menu.focusedButton:setFocus( false )
	end
	f40_arg0.menu:RemoveChangeStatusOptions()
	f40_arg0.menu:UpdateScrollText( f40_arg0.friendIndex + 1, f40_arg0.menu.friendCount )
	f40_arg0.menu.focusedButton = f40_arg0
	f40_arg0.menu.highlightedButton = nil
	f40_arg0.menu.list:setLayoutCached( false )
end

function OnSelectFriend( f41_arg0, f41_arg1 )
	f41_arg0.menu:RemoveReportOptions()
	f41_arg0.menu:RemovePlayerOptions()
	if Engine.IsPC() and f41_arg0 ~= f41_arg0.menu.focusedButton then
		OnFocusFriend( f41_arg0, f41_arg1 )
	end
	Friends.UpdatePartyDvars( f41_arg0.menu.controller, f41_arg0.friendIndex )
	LUI.ButtonHelperText.ClearHelperTextObjects( f41_arg0.menu.help, {
		side = "right"
	} )
	LUI.FriendsMenu.Menu:AddHelpButtons()
	f41_arg0.menu:RemoveDescription()
	f41_arg0.menu.currentTab.optionsFunc( f41_arg0.menu )
	f41_arg0.menu.list:processEvent( {
		name = "lose_focus"
	} )
	f41_arg0.menu.playerOptions:processEvent( {
		name = "gain_focus"
	} )
	f41_arg0.menu.highlightedButton = f41_arg0
	f41_arg0.menu.list:setLayoutCached( false )
end

LUI.FriendsMenu.Page = function ( f42_arg0, f42_arg1 )
	if f42_arg0.focusedButton ~= nil then
		local f42_local0 = f42_arg0.focusedButton.index
		local f42_local1 = LUI.clamp( f42_arg0.focusedButton.index + f42_arg0.friendOffset - 1 + f42_arg1, 0, math.max( 0, f42_arg0.friendCount - 1 ) )
		local f42_local2 = f42_arg0.friendOffset
		f42_arg0.friendOffset = LUI.clamp( f42_arg0.friendOffset + f42_arg1, 0, math.max( 0, f42_arg0.friendCount - LUI.FriendsMenu.NumButtons ) )
		local f42_local3 = 1 + f42_local1 - f42_arg0.friendOffset
		if f42_local0 ~= f42_local3 then
			LUI.UIElement.processNavigationEvent( f42_arg0.focusedButton, nil, LUI.FriendsMenu.GetButtonForIndex( f42_arg0, f42_local3 ) )
		end
		if f42_local2 ~= f42_arg0.friendOffset then
			f42_arg0.currentTab.xuidFunc( f42_arg0.controller, f42_local1 )
			f42_arg0:RefreshList()
		end
	end
end

function OnFriendGamepadButton( f43_arg0, f43_arg1 )
	if f43_arg1.down and f43_arg0:isInFocus() then
		if f43_arg1.qualifier == ButtonQualifiers.Mousewheel then
			if f43_arg1.button == "up" then
				f43_arg0.menu:Page( -1 )
			elseif f43_arg1.button == "down" then
				f43_arg0.menu:Page( 1 )
			end
			return true
		elseif f43_arg1.button == "up" and f43_arg0.index == 1 then
			f43_arg0.menu:Page( -1 )
			return true
		elseif f43_arg1.button == "down" and f43_arg0.index == LUI.FriendsMenu.NumButtons then
			f43_arg0.menu:Page( 1 )
			return true
		end
	end
	return LUI.UIButton.GamepadButton( f43_arg0, f43_arg1 )
end

LUI.FriendsMenu.OnBackButton = function ( f44_arg0, f44_arg1, f44_arg2 )
	if f44_arg2.reportOptions then
		f44_arg2:RemoveReportOptions()
		f44_arg2.playerOptions.m_inputDisabled = false
		f44_arg2.playerOptions:animateToState( "default" )
		f44_arg2.playerOptions:processEvent( {
			name = "gain_focus"
		} )
		Engine.PlaySound( CoD.SFX.SelectBack )
	elseif f44_arg2.playerOptions then
		f44_arg2:FocusMainList()
		f44_arg2:AddHelpButtons()
		f44_arg2:AddMoreOptionsDescription()
		Engine.PlaySound( CoD.SFX.SelectBack )
	elseif f44_arg2.statusOptions then
		f44_arg2:RemoveChangeStatusOptions()
		f44_arg2.playerOptions:animateToState( "default" )
		f44_arg2.playerOptions:processEvent( {
			name = "gain_focus"
		} )
		f44_arg0.menu.playerOptions.m_inputDisabled = false
	elseif LUI.FriendsMenu.ActiveSublist then
		assert( LUI.FriendsMenu.ActiveSublistOwner ~= nil )
		removeOptionsSubList( LUI.FriendsMenu.ActiveSublistOwner:getParent() )
		f44_arg2:AddHelpButtons()
		f44_arg2.currentTab:helpFunc()
		Engine.PlaySound( CoD.SFX.SelectBack )
	else
		LUI.FlowManager.RequestLeaveMenu( f44_arg0 )
	end
end

LUI.FriendsMenu.FocusMainList = function ( f45_arg0 )
	if LUI.FriendsMenu.FriendsMenuHasFocus() then
		f45_arg0:RemoveReportOptions()
		f45_arg0:RemovePlayerOptions()
		f45_arg0:RemoveChangeStatusOptions()
		if f45_arg0.focusedButton ~= nil then
			f45_arg0.focusedButton:setFocus( true )
			f45_arg0.list:saveState()
		end
		f45_arg0.list:processEvent( {
			name = "gain_focus"
		} )
	end
end

LUI.FriendsMenu.TickRefresh = function ( f46_arg0 )
	f46_arg0:RefreshList()
end

LUI.FriendsMenu.GetButtonForIndex = function ( f47_arg0, f47_arg1 )
	return f47_arg0.list:getChildById( "FriendsListItem" .. f47_arg1 )
end

LUI.FriendsMenu.RefreshList = function ( f48_arg0 )
	if Engine.IsXB3() or Engine.IsPCApp() then
		Engine.ExecNow( "friends_refresh" )
	end
	Engine.ExecNow( "refreshfacebookfriends" )
	local f48_local0 = f48_arg0.friendCount
	f48_arg0.friendCount = f48_arg0.currentTab.countFunc( f48_arg0.controller )
	f48_arg0.friendData = {}
	local f48_local1 = f48_arg0.focusedButton and f48_arg0.focusedButton.friendIndex or 0
	if f48_arg0.focusedButton ~= nil then
		local f48_local2 = f48_arg0.focusedButton.data
		local f48_local3 = f48_arg0.focusedButton.data.xuid
	end
	local f48_local4 = f48_local2 and f48_local3 or -1
	local f48_local5 = f48_local1
	local f48_local6, f48_local7 = f48_arg0.currentTab.cursorFunc( f48_arg0.controller, LUI.FriendsMenu.NumButtons, f48_local1, f48_arg0.friendOffset )
	f48_local5 = f48_local7
	f48_arg0.friendOffset = f48_local6
	for f48_local6 = 1, LUI.FriendsMenu.NumButtons, 1 do
		local f48_local9 = LUI.FriendsMenu.GetButtonForIndex( f48_arg0, f48_local6 )
		if f48_local9 ~= nil then
			local f48_local10 = f48_local6 + f48_arg0.friendOffset - 1
			if f48_local10 < f48_arg0.friendCount then
				f48_local9.friendIndex = f48_local10
				f48_local9:animateToState( "default" )
				local f48_local11 = {
					xuid = f48_arg0.currentTab.xuidGetFunc( f48_arg0.controller, f48_local10 ),
					gamertag = CoD.FormatClanAndGamerTags( f48_arg0.currentTab.clanTagFunc( f48_arg0.controller, f48_local10 ), f48_arg0.currentTab.gamerTagFunc( f48_arg0.controller, f48_local10 ) ),
					presence = f48_arg0.currentTab.presenceFunc( f48_arg0.controller, f48_local10 )
				}
				if f48_arg0.currentTab.isOnlineFunc then
					f48_local11.isOnline = f48_arg0.currentTab.isOnlineFunc( f48_arg0.controller, f48_local10 )
				else
					f48_local11.defaultHeader = Engine.Localize( f48_arg0.currentTab.defaultHeader )
				end
				f48_local11.rank = f48_arg0.currentTab.rankFunc( f48_arg0.controller, f48_local10 )
				f48_local11.prestige = f48_arg0.currentTab.prestigeFunc( f48_arg0.controller, f48_local10 )
				f48_local11.rankIcons = f48_arg0.currentTab.rankIconsFunc( f48_arg0.controller, f48_local10 )
				f48_local11.background = f48_arg0.currentTab.backgroundFunc( f48_arg0.controller, f48_local10 )
				f48_local11.emblem = f48_arg0.currentTab.emblemFunc( f48_arg0.controller, f48_local10 )
				if f48_arg0.currentTab.clanPositionFunc then
					f48_local11.clanPosition = f48_arg0.currentTab.clanPositionFunc( f48_arg0.controller, f48_local10 )
				end
				f48_local9:Refresh( f48_local11 )
				f48_local9:makeFocusable()
				if not Engine.IsConsoleGame() then
					f48_local9:setHandleMouseButton( true )
				end
				if f48_local11.isOnline == true then
					if f48_local9.isSelected ~= true then
						f48_local9.onlineDeco:show()
					end
				end
				f48_local9.onlineDeco:hide()
			end
			f48_local9:animateToState( "hidden" )
			f48_local9:makeNotFocusable()
			if not Engine.IsConsoleGame() then
				f48_local9:setHandleMouseButton( false )
			end
		end
	end
	if f48_arg0.friendCount > 0 then
		f48_arg0:RemoveNoFriends()
		if f48_local0 and f48_local0 < 1 then
			f48_arg0:FocusMainList()
		end
		if f48_arg0.focusedButton ~= nil then
			f48_local6 = LUI.FriendsMenu.GetButtonForIndex( f48_arg0, f48_local5 - f48_arg0.friendOffset + 1 )
			if f48_local1 ~= f48_local5 then
				if f48_arg0.focusedButton:isInFocus() then
					LUI.UIElement.processNavigationEvent( f48_arg0.focusedButton, {
						controller = f48_arg0.controller
					}, f48_local6 )
				else
					f48_arg0.focusedButton:SetHighlight( false )
					f48_local6:SetHighlight( true )
					f48_arg0.highlightedButton = f48_local6
					f48_arg0.focusedButton:setFocus( false )
					f48_local6:setFocus( true )
					f48_arg0.list:saveState()
					f48_local6:setFocus( false )
					f48_arg0:UpdateScrollText( f48_local5 + 1, f48_arg0.friendCount )
				end
				f48_arg0.focusedButton = f48_local6
			elseif f48_local4 ~= -1 and f48_local6 ~= nill and f48_local4 ~= f48_local6.data.xuid then
				f48_arg0:JumpToTop()
			end
			f48_arg0.playerCard:feedContent( f48_arg0.focusedButton.data )
			f48_arg0:RefreshPlayerDetails( f48_arg0.focusedButton.data )
		end
		f48_arg0.subContainer:animateToState( "default" )
	else
		f48_arg0:AddNoFriends( f48_arg0.currentTab.noFriends, f48_arg0.controller )
		f48_arg0.subContainer:animateToState( "hidden" )
	end
	if f48_local0 ~= f48_arg0.friendCount then
		f48_arg0.list:updateNavigation()
	end
end

LUI.FriendsMenu.JumpToTop = function ( f49_arg0 )
	f49_arg0:RemovePlayerOptions()
	f49_arg0:RemoveReportOptions()
	f49_arg0:RemoveChangeStatusOptions()
	f49_arg0.friendOffset = 0
	f49_arg0.currentTab.xuidFunc( f49_arg0.controller, 0 )
	f49_arg0.list:processEvent( {
		name = "lose_focus"
	} )
	f49_arg0.list:clearSavedState()
	f49_arg0:RefreshList()
	if LUI.FriendsMenu.FriendsMenuHasFocus() then
		f49_arg0.list:processEvent( {
			name = "gain_focus",
			flowType = FocusType.Gamepad
		} )
	end
end

LUI.FriendsMenu.ChangeTab = function ( f50_arg0, f50_arg1 )
	f50_arg0.currentTab = f50_arg1
	f50_arg0.currentTab:subPanelFunc()
	f50_arg0:JumpToTop()
	f50_arg0:AddHelpButtons()
	f50_arg0.currentTab:helpFunc()
end

LUI.FriendsMenu.AddSubPanel = function ( f51_arg0 )
	removeOptionsSubList()
	if f51_arg0.subPanel then
		f51_arg0:removeElement( f51_arg0.subPanel )
		f51_arg0.subPanel = nil
	end
	local subPanel = LUI.UIElement.new( CoD.CreateState( -382, -195, nil, 182, CoD.AnchorTypes.Right ) )
	f51_arg0:addElement( subPanel )
	f51_arg0.subPanel = subPanel
	
end

function PartyPrivacyDisplayFunc()
	local f52_local0 = Lobby.IsPrivatePartyOpen()
	local f52_local1 = nil
	if f52_local0 then
		f52_local1 = Lobby.PrivacySettings.Open
	else
		f52_local1 = Lobby.PrivacySettings.Closed
	end
	return Lobby.PrivacySettings.Texts[f52_local1]
end

function PartyPrivacySetFunc( f53_arg0 )
	if Lobby.IsPrivatePartyOpen() then
		if f53_arg0 == 0 then
			Lobby.TogglePrivatePartyOpen()
		end
	elseif f53_arg0 == 1 then
		Lobby.TogglePrivatePartyOpen()
	end
end

f0_local0 = function ()
	local f54_local0 = Engine.GetDvarInt( "party_partyPlayerCountNum" )
	if f54_local0 < PLAYER_LIMIT_MIN then
		f54_local0 = PLAYER_LIMIT_MIN
	end
	return f54_local0
end

f0_local1 = function ()
	return Engine.GetDvarInt( "party_maxPrivatePartyPlayers" )
end

f0_local2 = function ( f56_arg0 )
	local f56_local0 = f0_local0()
	if f56_arg0 < f56_local0 then
		f56_arg0 = f56_local0
	end
	if PLAYER_LIMIT_MAX < f56_arg0 then
		f56_arg0 = PLAYER_LIMIT_MAX
	end
	Engine.SetDvarInt( "party_maxPrivatePartyPlayers", f56_arg0 )
end

function PlayerLimitDisplayFunc()
	return f0_local1()
end

function PlayerLimitSetFunc( f58_arg0 )
	f0_local2( f58_arg0 )
end

function removeOptionsSubList( f59_arg0 )
	if LUI.FriendsMenu.ActiveSublist then
		LUI.FriendsMenu.ActiveSublist:clearSavedState()
		local f59_local0 = LUI.FriendsMenu.ActiveSublist:getParent()
		f59_local0:removeElement( LUI.FriendsMenu.ActiveSublist )
		LUI.FriendsMenu.ActiveSublist = nil
		LUI.FriendsMenu.ActiveSublistOwner = nil
		if f59_arg0 then
			f59_arg0:processEvent( {
				name = "gain_focus"
			} )
		end
		LUI.FriendsMenu.Menu:AddHelpButtons()
		LUI.FriendsMenu.Menu.currentTab.helpFunc( LUI.FriendsMenu.Menu )
	end
end

function addOptionsSublist( f60_arg0, f60_arg1, f60_arg2, f60_arg3, f60_arg4, f60_arg5, f60_arg6 )
	removeOptionsSubList()
	local f60_local0 = 24
	local f60_local1 = 4
	local f60_local2 = 7
	local f60_local3 = false
	local f60_local4 = f60_local1 + f60_local0 * f60_arg4
	if f60_local2 * f60_local0 < f60_local4 then
		f60_local4 = f60_local2 * f60_local0
		f60_local3 = true
	end
	local f60_local5, f60_local6, f60_local7, f60_local8 = f60_arg0:getRect()
	local f60_local9 = 1
	if Engine.GetLuiRootScale then
		f60_local9 = Engine.GetLuiRootScale()
	end
	local f60_local10, f60_local11, f60_local12, f60_local13 = f60_arg2:getRect()
	local f60_local14 = (f60_local6 - f60_local11 + f60_local8 - f60_local6) / f60_local9
	local f60_local15 = LUI.SubList.CreateSublist( CoD.CreateState( (f60_local5 - f60_local10) / f60_local9, f60_local14, (f60_local7 - f60_local10) / f60_local9, f60_local14 + f60_local4, CoD.AnchorTypes.TopLeft ), f60_local1 / 2 )
	f60_local15.vertList.id = "partyManagementOptions_sublist"
	f60_local15.vertList.buttonCount = f60_arg4
	f60_local15.vertList.parent = f60_arg2
	f60_local15.vertList.button = f60_arg0
	for f60_local19, f60_local20 in ipairs( f60_arg3 ) do
		local f60_local21 = LUI.SubList.CreateSubListButton( f60_local19, f60_local0, 20, -12, 14 )
		f60_local21.text:setText( f60_local20.label )
		f60_local21:addEventHandler( "button_action", function ( f30_arg0, f30_arg1 )
			f60_arg5( f60_local20.value )
			removeOptionsSubList( f60_arg1 )
			f60_local15.vertList.button:setText( Engine.ToUpperCase( Engine.Localize( f60_arg6() ) ) )
			f60_arg2:AddHelpButtons()
			f60_arg2.currentTab:helpFunc()
		end )
		f60_local21.listDefaultFocus = f60_local20.isDefault
		f60_local15.vertList:addElement( f60_local21 )
	end
	if f60_local3 == true then
		LUI.Options.InitScrollingList( f60_local15.vertList, nil, {
			rows = f60_local2,
			scrollBarLeftOffset = 0
		} )
	end
	f60_arg2:insertElement( f60_local15, 1 )
	LUI.FriendsMenu.ActiveSublist = f60_local15
	LUI.FriendsMenu.ActiveSublistOwner = f60_arg0
	f60_arg1:processEvent( {
		name = "lose_focus"
	} )
	f60_local15.vertList:processEvent( {
		name = "gain_focus"
	} )
	LUI.ButtonHelperText.ClearHelperTextObjects( f60_arg2.help, {
		side = "all"
	} )
	LUI.FriendsMenu.Menu:AddHelpButtons()
end

LUI.FriendsMenu.AddPartyManagementSubPanel = function ( f61_arg0 )
	if not Lobby.IsPrivatePartyHost() then
		return 
	elseif f61_arg0.subPanel then
		f61_arg0:removeElement( f61_arg0.subPanel )
		f61_arg0.subPanel = nil
	end
	local f61_local0 = f61_arg0
	local subPanel = LUI.UIElement.new( CoD.CreateState( -247, -191, nil, 178, CoD.AnchorTypes.Right ) )
	local f61_local2 = CoD.CreateState( -150, 30, nil, nil, CoD.AnchorTypes.Top )
	f61_local2.height = 15
	f61_local2.width = 250
	local self = LUI.UIVerticalList.new( f61_local2 )
	self.buttonCount = 0
	local f61_local4 = f61_arg0.list
	f61_arg0.list = self
	local f61_local5 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.TopLeftRight )
	f61_local5.font = CoD.TextSettings.TitleFontSmaller.Font
	f61_local5.color = Colors.h1.light_grey
	f61_local5.height = 15
	f61_local5.alignment = LUI.Alignment.Left
	if Engine.IsConsoleGame() or Engine.IsPCApp() then
		local self = LUI.UIText.new( f61_local5 )
		self:setText( Engine.Localize( "@PATCH_MENU_PARTY_PRIVACY_CAPS" ) )
		self:addElement( self )
		local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 8, 5, CoD.AnchorTypes.TopLeft ) )
		self.id = "sublistDivider_partyPrivacy"
		local f61_local8 = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.LeftRight )
		f61_local8.height = 1
		f61_local8.material = RegisterMaterial( "white" )
		f61_local8.color = GenericButtonSettings.Common.content_focus_color
		self:addElement( LUI.UIImage.new( f61_local8 ) )
		self:addElement( self )
		f61_arg0:AddSpacing( 2 )
		f61_arg0:AddButton( PartyPrivacyDisplayFunc(), function ( f33_arg0, f33_arg1 )
			local f33_local0 = {}
			for f33_local1 = 1, Lobby.PrivacySettings.NumOptions, 1 do
				local f33_local4 = f33_local1 - 1
				local f33_local5 = false
				if Lobby.IsPrivatePartyOpen() then
					if f33_local4 == 1 then
						f33_local5 = true
					end
				elseif f33_local4 == 0 then
					f33_local5 = true
				end
				f33_local0[f33_local1] = {
					label = Engine.ToUpperCase( Engine.Localize( Lobby.PrivacySettings.Texts[f33_local4] ) ),
					value = f33_local4,
					isDefault = f33_local5
				}
			end
			if f33_arg0 == LUI.FriendsMenu.ActiveSublistOwner then
				removeOptionsSubList()
			else
				addOptionsSublist( f33_arg0, self, f61_local0, f33_local0, Lobby.PrivacySettings.NumOptions, PartyPrivacySetFunc, PartyPrivacyDisplayFunc )
			end
		end, nil, nil, nil, {
			hasSublist = true
		}, true )
	end
	f61_arg0:AddSpacing( 70 )
	local self = LUI.UIText.new( f61_local5 )
	self:setText( Engine.Localize( "@PATCH_MENU_PLAYER_LIMIT_CAPS" ) )
	self:addElement( self )
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 8, 5, CoD.AnchorTypes.TopLeft ) )
	self.id = "sublistDivider_partyLimit"
	self:addElement( LUI.UIImage.new( dividerState ) )
	self:addElement( self )
	f61_arg0:AddSpacing( 2 )
	f61_arg0:AddButton( PlayerLimitDisplayFunc(), function ( f34_arg0, f34_arg1 )
		local f34_local0 = f0_local0()
		local f34_local1 = PLAYER_LIMIT_MAX - f34_local0 + 1
		local f34_local2 = {}
		for f34_local3 = 1, f34_local1, 1 do
			local f34_local6 = f34_local0 + f34_local3 - 1
			f34_local2[f34_local3] = {
				label = f34_local6,
				value = f34_local6,
				isDefault = f34_local6 == f0_local1()
			}
		end
		if f34_arg0 == LUI.FriendsMenu.ActiveSublistOwner then
			removeOptionsSubList()
		else
			addOptionsSublist( f34_arg0, self, f61_local0, f34_local2, f34_local1, PlayerLimitSetFunc, PlayerLimitDisplayFunc )
		end
	end, nil, nil, nil, {
		hasSublist = true
	}, true )
	f61_arg0.list = f61_local4
	subPanel:addElement( self )
	f61_arg0:addElement( subPanel )
	f61_arg0.subPanel = subPanel
	
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
	noFriends = function ( f63_arg0 )
		if Clan.IsDownloadingData( f63_arg0 ) then
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
LUI.FriendsMenu.AddTabs = function ( f64_arg0, f64_arg1, f64_arg2 )
	local f64_local0
	if not f64_arg1 then
		f64_local0 = Engine.IsXbox360()
		if not f64_local0 then
			f64_local0 = Engine.IsXB3()
		end
	else
		f64_local0 = false
	end
	local f64_local1 = {}
	if not f64_arg1 then
		f64_local1[#f64_local1 + 1] = LUI.FriendsMenu.OnlineFriendsTab
		f64_local1[#f64_local1 + 1] = LUI.FriendsMenu.RecentPlayersTab
		if Engine.InFrontend() then
			f64_local1[#f64_local1 + 1] = LUI.FriendsMenu.PartyManagementTab
		end
	end
	local f64_local2 = {
		defState = CoD.CreateState( nil, nil, nil, nil, CoD.AnchorTypes.TopLeftRight )
	}
	local f64_local3
	if f64_local0 then
		f64_local3 = #f64_local1 + 1
		if not f64_local3 then
		
		else
			f64_local2.numOfTabs = f64_local3
			f64_local2.isHidden = f64_arg1
			f64_local3 = LUI.MenuBuilder.BuildRegisteredType( "MFTabManager", f64_local2 )
			f64_local3:keepRightBumperAlignedToHeader( true )
			f64_local3.tabSelected = 1
			f64_arg0:addElement( f64_local3 )
			if f64_arg2 then
				f64_local3.tabSelected = #f64_local1
			end
			if f64_local0 then
				f64_local1[#f64_local1 + 1] = LUI.FriendsMenu.LivePartyTab
				if Friends.HasPartyGameInvite() and not f64_arg2 then
					f64_local3.tabSelected = #f64_local1
				end
			end
			for f64_local4 = 1, #f64_local1, 1 do
				local f64_local7 = f64_local4
				f64_local3:addTab( f64_arg0.controller, f64_local1[f64_local7].label, function ()
					f64_arg0:ChangeTab( f64_local1[f64_local7] )
				end )
			end
			f64_local3:refreshTab( f64_arg0.controller )
		end
	end
	f64_local3 = #f64_local1
end

LUI.FriendsMenu.AddScrollText = function ( f65_arg0 )
	local f65_local0 = 547
	local f65_local1 = CoD.TextSettings.TitleFontTiny
	local f65_local2 = CoD.CreateState( 0, f65_local0, 267, f65_local0 + 14, CoD.AnchorTypes.TopLeft )
	local f65_local3 = Engine.GetServerType()
	local f65_local4 = nil
	if f65_local3 == 0 then
		f65_local4 = Colors.white
	elseif f65_local3 == 1 then
		f65_local4 = Colors.grey_5
	else
		f65_local4 = Colors.grey_4
	end
	f65_local2.color = f65_local4
	f65_local2.font = f65_local1.Font
	f65_local2.alignment = LUI.Alignment.Center
	local self = LUI.UIText.new( f65_local2 )
	f65_arg0.subContainer:addElement( self )
	f65_arg0.scrollText = self
	local f65_local6 = 32
	local f65_local7 = CoD.DesignGridHelper( 2 )
	local f65_local8 = CoD.CreateState( CoD.DesignGridHelper( 2.4 ) - f65_local6, f65_local0 - 8, nil, nil, CoD.AnchorTypes.TopLeft )
	f65_local8.width = f65_local6
	f65_local8.height = f65_local6
	f65_local8.material = RegisterMaterial( "s1_icon_up" )
	if Engine.IsPC() then
		f65_local8.alpha = 0.8
		f65_local8.scale = 0
	end
	local self = LUI.UIImage.new( f65_local8 )
	self:hide()
	f65_arg0.subContainer:addElement( self )
	f65_arg0.upArrow = self
	if Engine.IsPC() then
		local self = f65_arg0
		self:setHandleMouseButton( true )
		self:setHandleMouseMove( true )
		self.m_requireFocusType = FocusType.MouseOver
		self:registerEventHandler( "leftmousedown", function ( element, event )
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
			self.focusedButton:setFocus( true )
			OnFriendGamepadButton( self.focusedButton, {
				down = true,
				button = "up",
				name = "gamepad_button"
			} )
		end )
		self:registerAnimationState( "hightlight", {
			alpha = 1,
			scale = 0
		} )
		self:registerAnimationState( "pulse", {
			scale = -0.1
		} )
		self:registerEventHandler( "mouseenter", function ( element, event )
			element:animateToState( "hightlight" )
		end )
		self:registerEventHandler( "mouseleave", MBh.AnimateToState( "default" ) )
	end
	f65_local8.material = RegisterMaterial( "s1_icon_down" )
	f65_local8.left = CoD.DesignGridHelper( 4.2 )
	f65_local8.top = f65_local0 - 9
	local self = LUI.UIImage.new( f65_local8 )
	if Engine.IsPC() then
		local f65_local11 = f65_arg0
		self:setHandleMouseButton( true )
		self:setHandleMouseMove( true )
		self.m_requireFocusType = FocusType.MouseOver
		self:registerEventHandler( "leftmousedown", function ( element, event )
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
			f65_local11.focusedButton:setFocus( true )
			OnFriendGamepadButton( f65_local11.focusedButton, {
				down = true,
				button = "down",
				name = "gamepad_button"
			} )
		end )
		self:registerAnimationState( "hightlight", {
			alpha = 1,
			scale = 0
		} )
		self:registerAnimationState( "pulse", {
			scale = -0.1
		} )
		self:registerEventHandler( "mouseenter", function ( element, event )
			element:animateToState( "hightlight" )
		end )
		self:registerEventHandler( "mouseleave", MBh.AnimateToState( "default" ) )
	end
	self:hide()
	f65_arg0.subContainer:addElement( self )
	f65_arg0.downArrow = self
end

LUI.FriendsMenu.AddHelpButtons = function ( f66_arg0 )
	LUI.ButtonHelperText.ClearHelperTextObjects( f66_arg0.help, {
		side = "all"
	} )
	local f66_local0 = f66_arg0
	f66_arg0:AddBackButton( function ( f56_arg0, f56_arg1 )
		LUI.FriendsMenu.OnBackButton( f56_arg0, f56_arg1, f66_local0 )
	end )
end

function OnLiveConnectionUpdate( f67_arg0, f67_arg1 )
	if f67_arg1.signed_in == nil then
		local f67_local0 = Engine.IsNetworkConnected()
		if f67_local0 then
			f67_local0 = Engine.IsUserSignedInToLive()
		end
		f67_arg1.signed_in = f67_local0
	end
	if f67_arg1.signed_in == false then
		LUI.FlowManager.RequestLeaveMenu( f67_arg0 )
	end
end

LUI.FriendsMenu.AddRefreshTimer = function ( f68_arg0 )
	local self = LUI.UITimer.new( 1000, "TickRefresh", nil, false )
	self.id = "RefreshTimer"
	local f68_local1 = f68_arg0
	f68_arg0:addEventHandler( "TickRefresh", function ( f57_arg0, f57_arg1 )
		f68_local1:TickRefresh()
	end )
	f68_arg0:addElement( self )
end

LUI.FriendsMenu.OnClose = function ()
	Friends.SetExclusiveController( -1 )
end

LUI.FriendsMenu.new = function ( f70_arg0, f70_arg1 )
	local f70_local0 = f70_arg1.isClanRoster and "CLANS_ROSTER" or "@LUA_MENU_SOCIAL_TITLE"
	local f70_local1 = CoD.DesignGridHelper( 6 )
	local f70_local2 = LUI.MenuTemplate.new( f70_arg0, {
		menu_title = f70_local0,
		menu_title_width = f70_local1,
		menu_width = f70_local1,
		menu_top_indent = LUI.FriendsMenu.TopOffset,
		menu_height = LUI.FriendsMenu.NumButtons * LUI.FriendsListItem.Height,
		do_not_add_friends_helper = true,
		uppercase_title = true,
		disableDeco = true,
		spacing = 8
	} )
	f70_local2:setClass( LUI.FriendsMenu )
	local f70_local3 = f70_arg1.exclusiveController
	if not f70_local3 then
		f70_local3 = Engine.GetFirstActiveController()
	end
	f70_local2.controller = f70_local3
	f70_local2.list.noWrap = true
	LUI.FriendsMenu.Menu = f70_local2
	Friends.SetExclusiveController( f70_local2.controller )
	f70_local3 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f70_local3.alpha = 1
	
	local subContainer = LUI.UIElement.new( f70_local3 )
	subContainer:registerAnimationState( "default", f70_local3 )
	subContainer:registerAnimationState( "hidden", {
		alpha = 0
	} )
	f70_local2:addElement( subContainer )
	f70_local2.subContainer = subContainer
	
	f70_local2:registerEventHandler( "live_connection", OnLiveConnectionUpdate )
	f70_local2:registerEventHandler( "unhandled_leftmouseup", function ( element, event )
		removeOptionsSubList()
	end )
	f70_local2:registerEventHandler( "unhandled_rightmouseup", function ( element, event )
		removeOptionsSubList()
	end )
	f70_local2:AddScrollText()
	f70_local2:AddPlayerDetails()
	f70_local2:AddPlayerCard()
	for f70_local5 = 1, LUI.FriendsMenu.NumButtons, 1 do
		local f70_local8 = LUI.FriendsListItem.new( f70_local2.controller )
		f70_local8.id = "FriendsListItem" .. f70_local5
		f70_local8:registerEventHandler( "button_over", OnFocusFriend )
		f70_local8:registerEventHandler( "button_action", OnSelectFriend )
		f70_local8:registerEventHandler( "gamepad_button", OnFriendGamepadButton )
		f70_local8.menu = f70_local2
		f70_local8.index = f70_local5
		f70_local2.list:addElement( f70_local8 )
	end
	f70_local2:AddTabs( f70_arg1.isClanRoster, f70_arg1.defaultToRecent )
	f70_local2:AddRefreshTimer()
	Engine.ExecNow( "eliteclan_refresh", f70_local2.controller )
	return f70_local2
end

function popup_friend_invite_sent( f71_arg0, f71_arg1 )
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
