local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = 10
f0_local1 = {
	{
		value = "TRK_ALLTIME",
		display = Engine.Localize( "@LUA_MENU_LB_FILTER_DURATION_ALLTIME" )
	},
	{
		value = "TRK_WEEKLY",
		display = Engine.Localize( "@LUA_MENU_LB_FILTER_DURATION_WEEKLY" )
	},
	{
		value = "TRK_MONTHLY",
		display = Engine.Localize( "@LUA_MENU_LB_FILTER_DURATION_MONTHLY" )
	}
}
f0_local2 = {
	{
		value = "none",
		display = Engine.Localize( "@LUA_MENU_PLAYERS_FILTER" ) .. Engine.Localize( "@LUA_MENU_LB_FILTER_GROUP_ALL" )
	},
	{
		value = "friends",
		display = Engine.Localize( "@LUA_MENU_PLAYERS_FILTER" ) .. Engine.Localize( "@LUA_MENU_LB_FILTER_GROUP_FRIENDS" )
	}
}
if Engine.IsRightToLeftLanguage() then
	f0_local2 = {
		{
			value = "none",
			display = Engine.Localize( "@LUA_MENU_LB_FILTER_GROUP_ALL" ) .. Engine.Localize( "@LUA_MENU_PLAYERS_FILTER" )
		},
		{
			value = "friends",
			display = Engine.Localize( "@LUA_MENU_LB_FILTER_GROUP_FRIENDS" ) .. Engine.Localize( "@LUA_MENU_PLAYERS_FILTER" )
		}
	}
end
local f0_local3 = {
	{
		display = Engine.Localize( "@LUA_MENU_TOP" )
	}
}
local f0_local4 = nil
local f0_local5 = {
	socialFilter = 1,
	durationFilter = 1,
	isBusy = false,
	isNewFilter = false,
	playerRank = -1,
	startValue = -1,
	selectedRow = -1,
	isTimeTrial = false,
	currentPlayerCount = 0,
	exitedWhileUpdating = false,
	currentPlayerRow = -1,
	currentPlayerIndex = -1,
	fetchingShown = false
}
local f0_local6 = 572
local f0_local7 = 27
local f0_local8 = 12
local f0_local9 = 7.5
local f0_local10 = 5
function SPLeaderboardDataCanShowSelectButton()
	local f1_local0 = Engine.IsXB3()
	if not f1_local0 then
		f1_local0 = Engine.IsPS4()
	end
	return f1_local0
end

function SPLeaderboardDataUpdateStatus( f2_arg0, f2_arg1 )
	if f2_arg1.playerIndex then
		f0_local5.currentPlayerIndex = f2_arg1.playerIndex + 1
	end
	if f2_arg1.isUpdating then
		SPLeaderboardDataShowFetching( f2_arg0, f2_arg1.controller )
		f0_local5.isBusy = true
	else
		SPLeaderboardDataRefresh( f2_arg0 )
		f0_local5.isBusy = false
	end
end

function SPLeaderboardDataReadDelay( f3_arg0, f3_arg1 )
	SPLeaderboardDataShowFetching( f3_arg0, f3_arg1.controller )
	f0_local5.isBusy = true
	if f3_arg0.leaderboardRefreshRetryTimer ~= nil then
		LUI.UITimer.Reset( f3_arg0.leaderboardRefreshRetryTimer )
	else
		local self = LUI.UITimer.new( 1000, "leaderboardRefreshRetry", nil, false )
		self.id = "leaderboardRefreshRetry"
		f3_arg0:registerEventHandler( "leaderboardRefreshRetry", function ( element, event )
			if Leaderboards.IsUpdating() then
				return 
			else
				f0_local5.isBusy = false
				event.timer:close()
				element.leaderboardRefreshRetryTimer = nil
				Leaderboards.UpdateLeaderboard( element.exclusiveController, Leaderboards.GetOffset( element.exclusiveController ) )
			end
		end )
		f3_arg0:addElement( self )
		f3_arg0.leaderboardRefreshRetryTimer = self
	end
end

function GetRowFromRank( f4_arg0 )
	return f4_arg0 - f0_local5.startValue + 1
end

function SPLeaderboardDataFillRow( f5_arg0, f5_arg1, f5_arg2, f5_arg3, f5_arg4, f5_arg5, f5_arg6, f5_arg7 )
	local f5_local0 = f5_arg1:getChildById( "background" )
	f5_local0:setImage( RegisterMaterial( f5_arg5 ) )
	local f5_local1
	if f5_arg7 then
		f5_local1 = "^3"
		if not f5_local1 then
		
		else
			local f5_local2 = f5_local0:getChildById( "rank" )
			f5_local2:setText( f5_local1 .. f5_arg2 )
			if f5_arg7 then
				f5_arg3 = Engine.GetUsernameByController( f5_arg0.properties.exclusiveController )
			end
			if f5_arg3 then
				local f5_local3 = f5_local0:getChildById( "name" )
				f5_local3:setText( f5_local1 .. f5_arg3 )
			end
			local f5_local3 = f5_local0:getChildById( "score" )
			f5_local3:setText( f5_local1 .. f5_arg4 )
			if f5_arg6 then
				f5_arg1.m_focusable = true
			end
			f5_arg1:setAlpha( 1 )
		end
	end
	f5_local1 = ""
end

function SPLeaderboardDataFillRankRow( f6_arg0, f6_arg1, f6_arg2, f6_arg3, f6_arg4 )
	local f6_local0 = f6_arg0.list:getChildById( "row" .. f6_arg1 )
	local f6_local1 = "h1_leaderboard_row01"
	if f6_arg1 % 2 == 1 then
		f6_local1 = "h1_leaderboard_row02"
	end
	local f6_local2
	if f0_local5.playerRank == nil or f0_local5.playerRank <= 0 then
		f6_local2 = false
	else
		f6_local2 = true
	end
	local f6_local3
	if f6_arg1 == f0_local5.currentPlayerRow then
		f6_local3 = f6_local2
	else
		f6_local3 = false
	end
	SPLeaderboardDataFillRow( f6_arg0, f6_local0, f6_arg2, f6_arg3, f6_arg4, f6_local1, true, f6_local3 )
end

function SPLeaderboardDataFillPlayerRow( f7_arg0 )
	local f7_local0 = f7_arg0.list:getChildById( "playerHeader" )
	local f7_local1 = Leaderboards.GetPlayerValue( f7_arg0.properties.exclusiveController, 0 )
	if f7_local1 then
		SPLeaderboardDataFillRow( f7_arg0, f7_local0, f7_local1, playerName, Leaderboards.GetPlayerValue( f7_arg0.properties.exclusiveController, 2 ), "h1_leaderboard_rowplayer", false, false )
	end
	f7_local0:setAlpha( 1 )
end

function disableRow( f8_arg0, f8_arg1 )
	local f8_local0 = f8_arg0.list:getChildById( "row" .. f8_arg1 )
	f8_local0.m_focusable = false
	f8_local0:setAlpha( 0 )
end

function SPLeaderboardCreateRow( f9_arg0, f9_arg1, f9_arg2, f9_arg3, f9_arg4, f9_arg5, f9_arg6, f9_arg7, f9_arg8 )
	local self = LUI.UIButton.new( CoD.CreateState( 0, 0, f0_local6, f0_local7, CoD.AnchorTypes.TopLeft ) )
	if not SPLeaderboardDataCanShowSelectButton() then
		self.properties = {
			muteAction = true
		}
	end
	self.id = f9_arg1
	self.m_focusable = false
	self.m_ignoreMouseFocus = false
	self:setAlpha( f9_arg2 )
	local self = LUI.UIImage.new( {
		leftAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		rightAnchor = true,
		alpha = 1
	} )
	self.id = "background"
	if f9_arg3 then
		self:setImage( RegisterMaterial( f9_arg3 ) )
	end
	local self = LUI.UIText.new( {
		leftAnchor = true,
		topAnchor = true,
		font = CoD.TextSettings.Font14.Font,
		color = f9_arg7,
		alignment = LUI.Alignment.Center,
		width = 142,
		top = f0_local9,
		height = f0_local8
	} )
	self.id = "rank"
	if f9_arg4 then
		self:setText( f9_arg4 )
	end
	local self = LUI.UIText.new( {
		leftAnchor = true,
		topAnchor = true,
		font = CoD.TextSettings.Font14.Font,
		color = f9_arg7,
		alignment = LUI.Alignment.Center,
		left = 147,
		width = 270,
		top = f0_local9,
		height = f0_local8
	} )
	self.id = "name"
	if Engine.IsPC() then
		self:setupAutoScaleText()
	end
	if f9_arg5 then
		self:setText( f9_arg5 )
	end
	local self = LUI.UIText.new( {
		leftAnchor = true,
		topAnchor = true,
		font = CoD.TextSettings.Font14.Font,
		color = f9_arg7,
		alignment = LUI.Alignment.Center,
		left = 422,
		width = 142,
		top = f0_local9,
		height = f0_local8
	} )
	self.id = "score"
	local self = LUI.UIImage.new( {
		leftAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		color = Colors.h1.dark_grey,
		left = 142,
		width = 1
	} )
	self.id = "leftLine"
	local self = LUI.UIImage.new( {
		leftAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		color = Colors.h1.dark_grey,
		left = 422,
		width = 1
	} )
	self.id = "rightLine"
	if f9_arg6 then
		self:setText( f9_arg6 )
	end
	if f9_arg8 then
		self:registerAnimationState( "default", {
			color = f9_arg7
		} )
		self:registerAnimationState( "focused", {
			color = f9_arg8
		} )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "focused", 133 ) )
		self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 133 ) )
		self:registerAnimationState( "default", {
			color = f9_arg7
		} )
		self:registerAnimationState( "focused", {
			color = f9_arg8
		} )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "focused", 133 ) )
		self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 133 ) )
		self:registerAnimationState( "default", {
			color = f9_arg7
		} )
		self:registerAnimationState( "focused", {
			color = f9_arg8
		} )
		self:registerEventHandler( "button_over", MBh.AnimateToState( "focused", 133 ) )
		self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 133 ) )
	end
	self:addElement( self )
	self:addElement( self )
	self:addElement( self )
	self:addElement( self )
	self:addElement( self )
	self:addElement( self )
	f9_arg0.list:addElement( self )
	return self
end

function HandleRowAction( f10_arg0, f10_arg1 )
	if Engine.IsConsoleGame() or Engine.IsPCApp() then
		Leaderboards.ShowGamercard( f10_arg1.controller, 0 )
	end
end

function SPLeaderboardDataAddRow( f11_arg0, f11_arg1 )
	local f11_local0 = SPLeaderboardCreateRow( f11_arg0, "row" .. f11_arg1, 0, nil, nil, nil, nil, Colors.h1.second_medium_grey, Colors.white )
	local f11_local1 = f11_local0:getChildById( "background" )
	local self = LUI.UIImage.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		color = Colors.grey,
		alpha = 0,
		alignment = LUI.Alignment.Center,
		material = RegisterMaterial( "btn_focused_rect_innerglow" )
	} )
	self:setup9SliceImage( 6.67, 6.67, 0.2, 0.2 )
	self:registerAnimationState( "default", {
		alpha = 0
	} )
	self:registerAnimationState( "focused", {
		alpha = 1
	} )
	self:registerEventHandler( "button_over", MBh.AnimateToState( "focused", 133 ) )
	self:registerEventHandler( "button_up", MBh.AnimateToState( "default", 133 ) )
	f11_local1:addElement( self )
	f11_local1:registerEventHandler( "button_action", HandleRowAction )
	f11_arg0.list:addElement( f11_local0 )
	LUI.UIVerticalList.SetNoWrap( f11_arg0.list, true )
	return f11_local0
end

function SPLeaderboardDataAddPlayerHeader( f12_arg0, f12_arg1 )
	local f12_local0 = Engine.GetUsernameByController( f12_arg1 )
	local f12_local1 = "0"
	if f0_local5.isTimeTrial then
		f12_local1 = Engine.Localize( "--:--" )
	end
	local f12_local2 = SPLeaderboardCreateRow( f12_arg0, "playerHeader", 0, "h1_leaderboard_rowplayer", Engine.Localize( "@LUA_MENU_LB_UNRANKED" ), f12_local0, f12_local1, Colors.h1.yellow, nil )
	local self = LUI.UIImage.new( {
		leftAnchor = true,
		rightAnchor = true,
		bottomAnchor = true,
		color = Colors.grey_4,
		bottom = -2,
		height = 1
	} )
	self.id = "doubleLine"
	f12_local2:addElement( self )
	return f12_local2
end

function SPLeaderboardDataAddHeader( f13_arg0 )
	local f13_local0 = ""
	if f0_local5.isTimeTrial then
		f13_local0 = Engine.Localize( "@LUA_MENU_LB_TIME_HEADER" )
	else
		f13_local0 = Engine.Localize( "@LUA_MENU_LB_SCORE_HEADER" )
	end
	return SPLeaderboardCreateRow( f13_arg0, "header", 1, "h1_leaderboard_header", Engine.ToUpperCase( Engine.Localize( "@LUA_MENU_LB_RANK_HEADER" ) ), Engine.ToUpperCase( Engine.Localize( "@LUA_MENU_LB_PLAYER_HEADER" ) ), Engine.ToUpperCase( f13_local0 ), Colors.white, nil )
end

function SPLeaderboardDataShowFetching( f14_arg0, f14_arg1 )
	if not f0_local5.fetchingShown then
		local f14_local0 = f14_arg0:getChildById( "listCenteredContainer" )
		if f14_local0 then
			f14_local0:processEvent( {
				name = "show_no_result",
				text = Engine.Localize( "@LUA_MENU_LEADERBOARD_REFRESH" )
			} )
			local self = LUI.UITimer.new( 2000, "leaderboardFetchingPopup", nil, false )
			f14_local0:registerEventHandler( "leaderboardFetchingPopup", function ( element, event )
				event.timer:close()
				f14_local0.leaderboardFetchingTimer = nil
				LUI.FlowManager.RequestAddMenu( element, "leaderboard_fetching_data", false, f14_arg1, false )
			end )
			f14_local0.leaderboardFetchingTimer = self
			f14_local0:addElement( self )
		end
		f0_local5.fetchingShown = true
	end
end

function SPLeaderboardDataHideFetching( f15_arg0 )
	if f0_local5.fetchingShown then
		local f15_local0 = f15_arg0:getChildById( "listCenteredContainer" )
		if f15_local0 then
			f15_local0:processEvent( {
				name = "hide_no_result"
			} )
			if f15_local0.leaderboardFetchingTimer then
				LUI.UITimer.Stop( f15_local0.leaderboardFetchingTimer )
				f15_local0.leaderboardFetchingTimer:close()
				f15_local0.leaderboardFetchingTimer = nil
			else
				LUI.FlowManager.RequestLeaveMenuByName( "leaderboard_fetching_data", nil, false, true )
			end
		end
		f0_local5.fetchingShown = false
	end
end

function SPLeaderboardDataRefresh( f16_arg0 )
	local f16_local0 = f0_local5.isBusy
	f0_local5.currentPlayerCount = Leaderboards.GetPlayerCount()
	if f16_local0 ~= f0_local5.isBusy then
		return 
	elseif f0_local5.currentPlayerCount == 0 then
		if not Leaderboards.IsUpdating() or not f0_local5.isBusy then
			SPLeaderboardDataHideFetching( f16_arg0 )
			SPLeaderboardDataFillPlayerRow( f16_arg0 )
			ShowNoResultContainer( f16_arg0 )
		end
		return 
	end
	SPLeaderboardDataHideFetching( f16_arg0 )
	HideNoResultContainer( f16_arg0 )
	f0_local5.playerRank = Leaderboards.GetPlayerValue( f16_arg0.properties.exclusiveController, 0 )
	f0_local5.playerRank = tonumber( f0_local5.playerRank )
	if f0_local5.isNewFilter and f0_local5.playerRank ~= nil then
		f0_local5.startValue = math.min( f0_local5.playerRank - f0_local10 + 1, f0_local5.currentPlayerCount - f0_local0 + 1 )
		f0_local5.startValue = math.max( f0_local5.startValue, 1 )
		Leaderboards.UpdateOffset( f16_arg0.properties.exclusiveController, SPLeaderboardDataCalcPaging( f16_arg0.properties.exclusiveController, f0_local5.startValue - 1 ) )
		Leaderboards.Refresh()
		Leaderboards.UpdateLeaderboard( f16_arg0.properties.exclusiveController, f0_local5.startValue )
		f0_local5.isNewFilter = false
		return 
	elseif f0_local5.selectedRow == -1 and f0_local5.playerRank ~= nil then
		f0_local5.currentPlayerRow = GetRowFromRank( f0_local5.currentPlayerIndex )
	end
	SPLeaderboardDataFillPlayerRow( f16_arg0 )
	local f16_local1 = math.min( f0_local5.startValue + f0_local0 - 1, f0_local5.currentPlayerCount )
	assert( f0_local5.startValue > 0 )
	for f16_local2 = f0_local5.startValue, f16_local1, 1 do
		local f16_local5 = Leaderboards.GetValue( f16_arg0.properties.exclusiveController, f16_local2 - 1, 0 )
		local f16_local6 = Leaderboards.GetValue( f16_arg0.properties.exclusiveController, f16_local2 - 1, 1 )
		local f16_local7 = Leaderboards.GetValue( f16_arg0.properties.exclusiveController, f16_local2 - 1, 2 )
		if f16_arg0.properties.leaderBoardData.challenge == "LB_GB_TOTALXP_LT" then
			f16_local5 = Leaderboards.GetValue( f16_arg0.properties.exclusiveController, f16_local2 - 1, 0 )
			f16_local6 = Leaderboards.GetValue( f16_arg0.properties.exclusiveController, f16_local2 - 1, 3 )
			f16_local7 = Leaderboards.GetValue( f16_arg0.properties.exclusiveController, f16_local2 - 1, 4 )
		end
		assert( not Leaderboards.IsUpdating() )
		SPLeaderboardDataFillRankRow( f16_arg0, f16_local2 - f0_local5.startValue - 1, f16_local5, f16_local6, f16_local7 )
	end
	local f16_local2 = f0_local0 - f16_local1
	if f16_local2 > 0 then
		for f16_local3 = f0_local0 - f16_local2 - 1, f0_local0, 1 do
			disableRow( f16_arg0, f16_local3, rank, player_name, score_value )
		end
	end
	SPLeaderboardUpdatePlayerCountContainer( f16_arg0 )
	if f0_local5.selectedRow == -1 then
		if f0_local5.playerRank ~= nil then
			if f0_local5.currentPlayerRow < 1 or f0_local0 < f0_local5.currentPlayerRow then
				highlightRow( f16_arg0, f16_arg0.properties.exclusiveController, 1 )
			else
				highlightRow( f16_arg0, f16_arg0.properties.exclusiveController, f0_local5.currentPlayerRow )
			end
		elseif f0_local5.startValue == 1 then
			highlightRow( f16_arg0, f16_arg0.properties.exclusiveController, 1 )
		else
			highlightRow( f16_arg0, f16_arg0.properties.exclusiveController, f0_local10 )
		end
	end
end

function SPLeaderboardDataCalcPaging( f17_arg0, f17_arg1 )
	local f17_local0 = Leaderboards.GetOffset( f17_arg0 )
	if f17_arg1 < f17_local0 or f17_local0 + f0_local0 * 2 <= f17_arg1 then
		return math.max( f17_arg1 - f0_local0, 0 )
	else
		return f17_local0
	end
end

function backButtonHandler( f18_arg0 )
	LUI.FlowManager.RequestLeaveMenu( f18_arg0 )
end

function highlightRow( f19_arg0, f19_arg1, f19_arg2 )
	if f0_local5.selectedRow == f19_arg2 and (f19_arg2 == 1 or f19_arg2 == f0_local0 or f19_arg2 == f0_local5.currentPlayerCount) then
		return 
	elseif f0_local5.selectedRow ~= -1 then
		local f19_local0 = f19_arg0.list:getChildById( "row" .. f0_local5.selectedRow )
		f19_local0:processEvent( {
			name = "lose_focus"
		} )
	end
	local f19_local0 = f19_arg0.list:getChildById( "row" .. f19_arg2 )
	f19_local0:processEvent( {
		name = "gain_focus"
	} )
	f0_local5.selectedRow = f19_arg2
	Leaderboards.UpdateCurrentIndex( f19_arg1, f0_local5.selectedRow - 1 + f0_local5.startValue - 1 )
	SPLeaderboardUpdatePlayerCountContainer( f19_arg0 )
end

function changeStartValue( f20_arg0, f20_arg1, f20_arg2 )
	if Leaderboards.IsUpdating() or f0_local5.isBusy then
		return 
	elseif f0_local5.currentPlayerCount == 0 then
		return 
	end
	local f20_local0 = f0_local10
	local f20_local1 = f0_local5.startValue + f20_arg1 - f0_local10 - f0_local5.selectedRow
	local f20_local2 = f0_local5.currentPlayerCount - f0_local0 + 1
	if f20_local2 < 1 then
		f20_local1 = 1
		f20_local0 = LUI.clamp( f0_local5.selectedRow + f20_arg1, 1, f0_local5.currentPlayerCount )
	elseif f20_local1 < 1 then
		local f20_local3 = f20_local1 - 1
		f20_local1 = 1
		f20_local0 = math.max( f0_local10 + f20_local3, 1 )
	elseif f20_local2 < f20_local1 then
		local f20_local3 = f20_local1 - f20_local2
		f20_local1 = f20_local2
		f20_local0 = math.min( f0_local10 + f20_local3, f0_local0 )
	end
	f0_local5.currentPlayerRow = f0_local5.currentPlayerRow - f20_local1 - f0_local5.startValue
	setStartValue( f20_arg0, f20_arg2, f20_local1, f20_local0 )
end

function setStartValue( f21_arg0, f21_arg1, f21_arg2, f21_arg3 )
	local f21_local0 = f21_arg2 ~= f0_local5.startValue
	f0_local5.startValue = f21_arg2
	highlightRow( f21_arg0, f21_arg1.controller, f21_arg3 )
	if f21_local0 then
		Leaderboards.UpdateOffset( f21_arg1.controller, SPLeaderboardDataCalcPaging( f21_arg1.controller, f21_arg2 - 1 ) )
		SPLeaderboardDataRefresh( f21_arg0 )
	end
end

function SendKey( f22_arg0, f22_arg1, f22_arg2 )
	local f22_local0 = Engine.GetLuiRoot()
	f22_arg2.controller = f22_arg1.controller
	f22_arg2.fake = true
	LUI.UIRoot.ProcessEvent( f22_local0, f22_arg2 )
end

function SPLeaderboardCreatePlayerCountContainer( f23_arg0 )
	local self = LUI.UIText.new( {
		leftAnchor = true,
		topAnchor = true,
		width = f0_local6,
		alpha = 0
	} )
	local self = LUI.UIText.new( {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = true,
		font = CoD.TextSettings.Font18.Font,
		color = Colors.white,
		alignment = LUI.Alignment.Center,
		height = CoD.TextSettings.Font18.Height
	} )
	self:setText( "-- / --" )
	self.id = "playerCountContainer"
	local self = LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = Engine.IsPC(),
		leftAnchor = Engine.IsPC(),
		rightAnchor = Engine.IsPC(),
		material = RegisterMaterial( "h1_deco_option_scrollbar_arrows" ),
		color = Colors.white,
		alpha = Engine.IsPC() and 0.5 or 1,
		scale = 0,
		zRot = 90
	} )
	if Engine.IsPC() then
		local self = f23_arg0
		self:setHandleMouseButton( true )
		self:setHandleMouseMove( true )
		self.m_requireFocusType = FocusType.MouseOver
		self:registerEventHandler( "leftmousedown", function ( element, event )
			if f0_local5.startValue + f0_local5.selectedRow - 1 > 1 then
				self:animateInSequence( {
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
				SendKey( element, event, {
					target = self,
					down = "true",
					button = "up",
					name = "gamepad_button"
				} )
			end
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
	local self = LUI.UIImage.new( {
		topAnchor = true,
		bottomAnchor = Engine.IsPC(),
		leftAnchor = Engine.IsPC(),
		rightAnchor = Engine.IsPC(),
		material = RegisterMaterial( "h1_deco_option_scrollbar_arrows" ),
		color = Colors.white,
		alpha = Engine.IsPC() and 0.5 or 1,
		scale = 0,
		zRot = -90
	} )
	if Engine.IsPC() then
		local self = f23_arg0
		self:setHandleMouseButton( true )
		self:setHandleMouseMove( true )
		self.m_requireFocusType = FocusType.MouseOver
		self:registerEventHandler( "leftmousedown", function ( element, event )
			if f0_local5.startValue + f0_local5.selectedRow - 1 < f0_local5.currentPlayerCount then
				self:animateInSequence( {
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
				SendKey( element, event, {
					target = self,
					down = "true",
					button = "down",
					name = "gamepad_button"
				} )
			end
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
	local self = LUI.UIImage.new( {
		topAnchor = true,
		color = Colors.black,
		alpha = 0.5
	} )
	self:addElement( self )
	self:addElement( self )
	if Engine.IsPC() then
		self.arrowUp = LUI.UIElement.new( {
			topAnchor = true
		} )
		self.arrowDown = LUI.UIElement.new( {
			topAnchor = true
		} )
		self:addElement( self.arrowUp )
		self:addElement( self.arrowDown )
		self.arrowUp:addElement( self )
		self.arrowDown:addElement( self )
	else
		self:addElement( self )
		self:addElement( self )
		self.arrowUp = self
		self.arrowDown = self
	end
	self.text = self
	self.background = self
	f23_arg0.playerCountContainer = self
end

function GetLastVisibleRow( f24_arg0 )
	local f24_local0 = nil
	if f0_local0 < f0_local5.currentPlayerCount then
		f24_local0 = f24_arg0:getChildById( "row" .. f0_local0 )
	else
		f24_local0 = f24_arg0:getChildById( "row" .. f0_local5.currentPlayerCount )
	end
	return f24_local0
end

function SPLeaderboardUpdatePlayerCountContainer( f25_arg0 )
	if f25_arg0.playerCountContainer then
		if f0_local5.currentPlayerCount < 1 then
			f25_arg0.playerCountContainer:setAlpha( 0 )
		else
			f25_arg0.playerCountContainer:setAlpha( 1 )
			local f25_local0 = f0_local5.startValue + f0_local5.selectedRow - 1 .. " / " .. f0_local5.currentPlayerCount
			f25_arg0.playerCountContainer.text:setText( f25_local0 )
			local f25_local1 = 0
			if f0_local5.usePersistentRelativeBottom then
				f25_local1 = f0_local5.persistentRelativeBottom
			else
				local f25_local2 = GetLastVisibleRow( f25_arg0.list )
				local f25_local3, f25_local4, f25_local5, f25_local6 = f25_local2:getRect()
				local f25_local7 = 1
				if Engine.GetLuiRootScale then
					f25_local7 = Engine.GetLuiRootScale()
				end
				local f25_local8, f25_local9, f25_local10, f25_local11 = f25_arg0:getRect()
				f25_local1 = (f25_local4 - f25_local9 + f25_local6 - f25_local4) / f25_local7
				f0_local5.persistentRelativeBottom = f25_local1
			end
			f25_arg0:addElement( f25_arg0.playerCountContainer )
			f25_arg0.playerCountContainer:setTopBottom( true, false, f25_local1 + 15, f25_local1 + 15 + CoD.TextSettings.Font18.Height )
			local f25_local2, f25_local3, f25_local4, f25_local5 = GetTextDimensions( f25_local0, CoD.TextSettings.Font18.Font, CoD.TextSettings.Font18.Height )
			local f25_local6, f25_local7 = GetMaterialDimensions( RegisterMaterial( "h1_deco_option_scrollbar_arrows" ) )
			f25_local6 = f25_local6 / 2
			f25_local7 = f25_local7 / 2
			local f25_local8 = f0_local6 / 2
			local f25_local10 = (f25_local4 - f25_local2) / 2 + f25_local6 + 15
			local f25_local11 = -3
			f25_arg0.playerCountContainer.arrowUp:setLeftRight( true, false, f25_local8 - f25_local10, f25_local8 - f25_local10 + f25_local6 )
			f25_arg0.playerCountContainer.arrowUp:setTopBottom( true, false, f25_local11, f25_local7 + f25_local11 )
			f25_arg0.playerCountContainer.arrowDown:setLeftRight( true, false, f25_local8 + f25_local10 - f25_local6, f25_local8 + f25_local10 )
			f25_arg0.playerCountContainer.arrowDown:setTopBottom( true, false, f25_local11, f25_local7 + f25_local11 )
			f25_arg0.playerCountContainer.background:setLeftRight( true, false, f25_local8 - f25_local10 - 10, f25_local8 + f25_local10 + 10 )
			f25_arg0.playerCountContainer.background:setTopBottom( true, false, f25_local11 - 3, f25_local7 + f25_local11 + 3 )
		end
	end
end

function SPLeaderboardCreateListCenteredContainer( f26_arg0 )
	local f26_local0 = 16
	local self = LUI.UIImage.new( {
		leftAnchor = true,
		topAnchor = true,
		top = 327,
		height = f26_local0 + 18,
		left = 0,
		width = 25,
		material = RegisterMaterial( "h1_leaderboard_header" ),
		alpha = 0
	} )
	self.id = "listCenteredContainer"
	self:setup3SliceRatio( 12, 0.02 )
	local self = LUI.UIText.new( {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = true,
		font = CoD.TextSettings.Font24.Font,
		color = Colors.white,
		alignment = LUI.Alignment.Center,
		height = f26_local0,
		top = 10
	} )
	self.textField = self
	self:addElement( self )
	self:registerAnimationState( "default", {
		alpha = 0
	} )
	self:registerAnimationState( "visible", {
		alpha = 1
	} )
	self:registerEventHandler( "show_no_result", function ( element, event )
		local f8_local0, f8_local1, f8_local2, f8_local3 = GetTextDimensions( event.text, CoD.TextSettings.Font24.Font, 16 )
		local f8_local4 = f8_local2 - f8_local0
		local f8_local5 = f0_local6 / 2 - (f8_local4 + 25) / 2
		element:setLeftRight( true, false, f8_local5, f8_local5 + f8_local4 + 25 )
		element.textField:setText( event.text )
		element:animateToState( "visible", 133 )
	end )
	self:registerEventHandler( "hide_no_result", MBh.AnimateToState( "default", 0 ) )
	f26_arg0:addElement( self )
end

function ShowNoResultContainer( f27_arg0 )
	for f27_local0 = 1, f0_local0, 1 do
		local f27_local3 = f27_arg0.list:getChildById( "row" .. f27_local0 )
		local f27_local4 = "h1_leaderboard_row01"
		if f27_local0 % 2 == 1 then
			f27_local4 = "h1_leaderboard_row02"
		end
		SPLeaderboardDataFillRow( f27_arg0, f27_local3, "", "", "", f27_local4, false, false )
	end
	f27_arg0:dispatchEventToRoot( LUI.ButtonHelperText.CommonEvents.removeSelectButton )
	local f27_local0 = f27_arg0:getChildById( "listCenteredContainer" )
	if f27_local0 then
		f27_local0:processEvent( {
			name = "show_no_result",
			text = Engine.Localize( "@MENU_SP_LB_EMPTY" )
		} )
	end
end

function HideNoResultContainer( f28_arg0 )
	for f28_local0 = 1, f0_local0, 1 do
		disableRow( f28_arg0, f28_local0 )
	end
	if SPLeaderboardDataCanShowSelectButton() then
		f28_arg0:dispatchEventToRoot( LUI.ButtonHelperText.CommonEvents.addSelectButton )
	end
	local f28_local0 = f28_arg0:getChildById( "listCenteredContainer" )
	if f28_local0 then
		f28_local0:processEvent( {
			name = "hide_no_result"
		} )
	end
end

function previousEntryFunc( f29_arg0, f29_arg1 )
	changeStartValue( f0_local4, -1, f29_arg1 )
end

function nextEntryFunc( f30_arg0, f30_arg1 )
	changeStartValue( f0_local4, 1, f30_arg1 )
end

function previousPageFunc( f31_arg0, f31_arg1 )
	changeStartValue( f0_local4, -f0_local0, f31_arg1 )
end

function nextPageFunc( f32_arg0, f32_arg1 )
	changeStartValue( f0_local4, f0_local0, f32_arg1 )
end

function gotoHandler( f33_arg0, f33_arg1 )
	if Leaderboards.IsUpdating() or f0_local5.isBusy then
		return 
	elseif f0_local4 then
		changeStartValue( f0_local4, -f0_local5.startValue - f0_local0, f33_arg1 )
	end
end

function leaveMenuHandler( f34_arg0, f34_arg1 )
	SPLeaderboardDataHideFetching( f34_arg0 )
	f0_local5.exitedWhileUpdating = Leaderboards.IsUpdating()
	UPVAL1 = nil
end

function gamepadButtonHandler( f35_arg0, f35_arg1 )
	if f35_arg1.down then
		local f35_local0 = Engine.GetLuiRoot()
		local f35_local1 = LUI.FlowManager.GetTopMenuInfo( f35_local0.flowManager.menuInfoStack, true )
		if f35_local1.menu == f35_arg0 then
			if f35_arg1.button == "up" then
				previousEntryFunc( f35_arg0, f35_arg1 )
				return true
			elseif f35_arg1.button == "down" then
				nextEntryFunc( f35_arg0, f35_arg1 )
				return true
			elseif f35_arg1.button == "page_up" then
				previousPageFunc( f35_arg0, f35_arg1 )
				return true
			elseif f35_arg1.button == "page_down" then
				nextPageFunc( f35_arg0, f35_arg1 )
				return true
			end
		end
	end
	return LUI.UIButton.GamepadButton( f35_arg0, f35_arg1 )
end

function SPLeaderboardDataCreateMenu( f36_arg0, f36_arg1 )
	local f36_local0 = LUI.MenuTemplate.new( f36_arg0, {
		menu_title = Engine.ToUpperCase( Engine.Localize( f36_arg1.leaderBoardData.challengeName ) ),
		menu_top_indent = LUI.MenuTemplate.spMenuOffset + LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing,
		menu_width = GenericMenuDims.OptionMenuWidth,
		spacing = 0,
		showSelectButton = false
	} )
	f0_local5.isTimeTrial = f36_arg1.isTimeTrial
	f0_local5.isBusy = false
	if f0_local5.isTimeTrial then
		LUI.MenuTemplate.SetBreadCrumb( f36_local0, Engine.Localize( "@LUA_MENU_TIME_TRIAL_LEADERBOARD" ) )
	else
		LUI.MenuTemplate.SetBreadCrumb( f36_local0, Engine.Localize( "@LUA_MENU_ARCADE_LEADERBOARD" ) )
	end
	UPVAL1 = f36_local0
	assert( f36_arg1.startValue )
	f0_local5.startValue = f36_arg1.startValue
	f0_local5.selectedRow = -1
	if not Leaderboards.IsUpdating() then
		Leaderboards.Clear()
	end
	if not f0_local5.isNewFilter then
		f0_local5.socialFilter = 1
		f0_local5.durationFilter = 1
		f0_local5.playerRank = -1
	end
	local f36_local1 = f36_arg0.exclusiveController
	if not f36_local1 then
		f36_local1 = Engine.GetFirstActiveController()
	end
	local f36_local2 = function ( f13_arg0, f13_arg1 )
		local f13_local0 = assert
		local f13_local1
		if f0_local5.durationFilter < 1 or f0_local5.durationFilter > #f0_local1 then
			f13_local1 = false
		else
			f13_local1 = true
		end
		f13_local0( f13_local1 )
		f13_local0 = assert
		f13_local1
		if f0_local5.socialFilter < 1 or f0_local5.socialFilter > #f0_local2 then
			f13_local1 = false
		else
			f13_local1 = true
		end
		f13_local0( f13_local1 )
		Engine.SetDvarString( "lb_filter", f0_local2[f0_local5.socialFilter].value )
		Engine.SetDvarInt( "lb_maxrows", f0_local0 * 3 )
		if not f0_local5.isNewFilter then
			Leaderboards.Clear()
		end
		if f36_arg1.newFilter then
			f0_local5.isNewFilter = true
		end
		Leaderboards.Open( f36_arg1.leaderBoardData.challenge, f0_local1[f0_local5.durationFilter].value )
		if Leaderboards.IsUpdating() then
			DebugPrint( "Leaderboard was already updating!" )
		else
			Leaderboards.UpdateLeaderboard( f36_local1, Leaderboards.GetOffset( f36_local1 ) )
		end
		if not (Leaderboards.IsUpdating() or f0_local5.isBusy) or f0_local5.exitedWhileUpdating and not Leaderboards.IsUpdating() then
			f0_local5.usePersistentRelativeBottom = true
			SPLeaderboardDataRefresh( f13_arg0 )
			f0_local5.usePersistentRelativeBottom = false
			if f0_local5.exitedWhileUpdating then
				f0_local5.isBusy = false
			end
		end
	end
	
	f36_local0:registerEventHandler( "leaderboard_read_delayfail", SPLeaderboardDataReadDelay )
	f36_local0:registerEventHandler( "leaderboard_update_status", SPLeaderboardDataUpdateStatus )
	f36_local0:registerEventHandler( "menu_create", f36_local2 )
	local f36_local3 = function ( f14_arg0, f14_arg1 )
		if Leaderboards.IsUpdating() or f0_local5.isBusy then
			return 
		elseif f0_local5.socialFilter == #f0_local2 then
			f0_local5.socialFilter = 1
		else
			f0_local5.socialFilter = f0_local5.socialFilter + 1
		end
		f0_local5.isNewFilter = true
		LUI.FlowManager.RequestAddMenu( f36_local0, "sp_leaderboard_data", true, f14_arg1.controller, true, {
			leaderBoardData = f36_arg1.leaderBoardData,
			startValue = 1,
			isTimeTrial = f0_local5.isTimeTrial
		}, {
			reload = true
		} )
	end
	
	f36_local0:addElement( LUI.H1MenuTab.new( {
		title = function ( f17_arg0 )
			return f0_local1[f17_arg0].display
		end,
		top = LUI.MenuTemplate.spMenuOffset + LUI.MenuTemplate.ListTop,
		tabCount = #f0_local1,
		width = f0_local6,
		clickTabBtnAction = function ( f15_arg0, f15_arg1, f15_arg2 )
			local f15_local0 = true
			local f15_local1 = true
			if Leaderboards.IsUpdating() or f0_local5.isBusy then
				return 
			else
				f0_local5.durationFilter = f15_arg2
				f0_local5.isNewFilter = true
				LUI.FlowManager.RequestAddMenu( f15_arg0, "sp_leaderboard_data", true, f15_arg1.controller, true, {
					leaderBoardData = f36_arg1.leaderBoardData,
					startValue = 1,
					isTimeTrial = f0_local5.isTimeTrial
				}, {
					reload = true
				} )
				CoD.PlayEventSound( CoD.SFX.H1TabChange, 10 )
			end
		end,
		activeIndex = f0_local5.durationFilter,
		underTabTextFunc = function ( f18_arg0 )
			return f0_local1[f18_arg0].display
		end,
		enableRightLeftNavigation = true,
		exclusiveController = f36_local0.exclusiveController,
		tabChangeLockedFunc = function ( f16_arg0 )
			local f16_local0
			if not Leaderboards.IsUpdating() then
				f16_local0 = not f0_local5.isBusy
			else
				f16_local0 = false
			end
			return f16_local0
		end
	} ) )
	SPLeaderboardDataAddHeader( f36_local0 )
	SPLeaderboardDataAddPlayerHeader( f36_local0, f36_local1 )
	for f36_local4 = 1, f0_local0, 1 do
		SPLeaderboardDataAddRow( f36_local0, f36_local4 )
	end
	SPLeaderboardCreatePlayerCountContainer( f36_local0 )
	SPLeaderboardCreateListCenteredContainer( f36_local0 )
	local f36_local4 = 0
	if f0_local5.socialFilter == #f0_local2 then
		f36_local4 = 1
	else
		f36_local4 = f0_local5.socialFilter + 1
	end
	f36_local0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = "button_alt2",
		helper_text = f0_local2[f36_local4].display,
		side = "right",
		clickable = true
	}, f36_local3 )
	f36_local0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = "button_alt1",
		helper_text = Engine.Localize( f0_local3[1].display ),
		side = "right",
		clickable = true
	}, gotoHandler )
	local f36_local5 = CoD.UsingController() and "button_left_trigger" or "button_page_up"
	local f36_local6 = CoD.UsingController() and "button_right_trigger" or "button_page_down"
	if Engine.IsVita( f36_local0.exclusiveController ) then
		f36_local5 = "button_left"
		f36_local6 = "button_right"
	end
	f36_local0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = f36_local5,
		helper_text = Engine.Localize( "@LUA_MENU_PREV_PAGE" ),
		side = "right",
		clickable = true,
		imageSize = 24,
		priority = 10
	}, previousPageFunc )
	f36_local0:AddHelp( {
		name = "add_button_helper_text",
		button_ref = f36_local6,
		helper_text = Engine.Localize( "@LUA_MENU_NEXT_PAGE" ),
		side = "right",
		clickable = true,
		imageSize = 24,
		priority = 5
	}, nextPageFunc )
	LUI.MenuTemplate.AddListDivider( f36_local0, -(LUI.H1MenuTab.tabChangeHoldingElementHeight + H1MenuDims.spacing) )
	f36_local0:registerEventHandler( "gamepad_button", gamepadButtonHandler )
	f36_local0:registerEventHandler( "menu_close", leaveMenuHandler )
	local f36_local7 = f36_local0:AddBackButton( backButtonHandler )
	return f36_local0
end

LUI.MenuBuilder.registerType( "sp_leaderboard_data", SPLeaderboardDataCreateMenu )
LockTable( _M )
