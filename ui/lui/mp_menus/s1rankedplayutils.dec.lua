RankedPlay = {
	PromotionSlotCount = 3,
	RelegationSlotCount = 3,
	Divisions = {
		Unranked = -1,
		Bronze = 0,
		Silver = 1,
		Gold = 2,
		Platinum = 3,
		Diamond = 4,
		Master = 5,
		GrandMaster = 6
	},
	PromotionSlot = {
		Incomplete = 0,
		Win = 1,
		Loss = 2
	},
	BalanceState = {
		Even = 0,
		Favorable = 1,
		Unfavorable = 2
	},
	PredictionFlagBits = {
		Win = bit( 1 ),
		Lose = bit( 2 ),
		Quit = bit( 3 ),
		Ranked = bit( 4 )
	}
}
DivisionTable = {
	File = "mp/divisiontable.csv",
	Cols = {
		Ref = 0,
		MinPoints = 1,
		MaxPoints = 2,
		Name = 3,
		Icon = 4
	},
	FirstRow = Engine.TableLookupGetRowNum( DivisionTable.File, DivisionTable.Cols.Ref, "bronze" )
}
RankedPlay.IsRankedPlay = function ( f1_arg0 )
	return hasbit( Engine.GetPlayerData( f1_arg0, CoD.StatsGroup.Common, "round", "matchPrediction" ), RankedPlay.PredictionFlagBits.Ranked )
end

RankedPlay.GetMinDivision = function ()
	return RankedPlay.Divisions.Bronze
end

RankedPlay.GetMaxDivision = function ()
	return RankedPlay.Divisions.Master
end

RankedPlay.GetPlayerIsMinDivision = function ( f4_arg0 )
	if not RankedPlay.IsPlayerRanked( f4_arg0 ) then
		return true
	else
		return RankedPlay.GetPlayerDivision( f4_arg0 ) == RankedPlay.GetPlayerPreviousDivision( f4_arg0 )
	end
end

RankedPlay.GetPlayerIsMaxDivision = function ( f5_arg0 )
	if not RankedPlay.IsPlayerRanked( f5_arg0 ) then
		return false
	elseif RankedPlay.GetPlayerIsGrandMaster( f5_arg0 ) then
		return true
	else
		return RankedPlay.GetPlayerDivision( f5_arg0 ) == RankedPlay.GetPlayerNextDivision( f5_arg0 )
	end
end

RankedPlay.GetPlayerIsGrandMaster = function ( f6_arg0 )
	return false
end

RankedPlay.GetPlayerDivision = function ( f7_arg0 )
	if RankedPlay.GetPlayerIsGrandMaster( f7_arg0 ) then
		return RankedPlay.Divisions.GrandMaster
	else
		return RankedPlay.GetDivisionFromDP( RankedPlay.GetPlayerDP( f7_arg0 ) )
	end
end

RankedPlay.GetDivisionFromDP = function ( f8_arg0 )
	local f8_local0 = RankedPlay.Divisions.Bronze
	local f8_local1 = nil
	local f8_local2 = DivisionTable.FirstRow
	while true do
		f8_local1 = tonumber( Engine.TableLookupByRow( DivisionTable.File, f8_local2, DivisionTable.Cols.MinPoints ) )
		if not f8_local1 then
			break
		elseif f8_local1 <= f8_arg0 then
			f8_local0 = f8_local2 - DivisionTable.FirstRow
			f8_local2 = f8_local2 + 1
		end
	end
	return f8_local0
end

RankedPlay.IsPlayerRanked = function ( f9_arg0 )
	local f9_local0 = RankedPlay.GetPlayerDivision( f9_arg0 ) ~= RankedPlay.Divisions.Unranked
	if not f9_local0 then
		DebugPrint( "Somehow the player is not ranked, all players should be ranked in s1" )
	end
	return f9_local0
end

RankedPlay.GetPlayerPreviousDivision = function ( f10_arg0 )
	if not RankedPlay.IsPlayerRanked( f10_arg0 ) then
		return RankedPlay.Divisions.Unranked
	else
		return math.max( RankedPlay.GetPlayerDivision( f10_arg0 ) - 1, RankedPlay.GetMinDivision() )
	end
end

RankedPlay.GetPlayerNextDivision = function ( f11_arg0 )
	if not RankedPlay.IsPlayerRanked( f11_arg0 ) then
		return RankedPlay.Divisions.Unranked
	elseif RankedPlay.GetPlayerIsGrandMaster( f11_arg0 ) then
		return RankedPlay.Divisions.GrandMaster
	else
		return math.min( RankedPlay.GetPlayerDivision( f11_arg0 ) + 1, RankedPlay.GetMaxDivision() )
	end
end

RankedPlay.GetPlayerMMR = function ( f12_arg0 )
	return Engine.GetPlayerData( f12_arg0, CoD.StatsGroup.Ranked, "mmr" )
end

RankedPlay.GetPlayerDP = function ( f13_arg0 )
	return Engine.GetPlayerData( f13_arg0, CoD.StatsGroup.Ranked, "division" )
end

RankedPlay.GetPlayerMatchDP = function ( f14_arg0 )
	local f14_local0 = 0
	local f14_local1 = Engine.GetPlayerData( f14_arg0, CoD.StatsGroup.Common, "round", "matchDp" )
	if f14_local1 then
		f14_local0 = f14_local1 + -128
	end
	return f14_local0
end

RankedPlay.MaxRelegationSlot = function ()
	return RankedPlay.RelegationSlotCount
end

RankedPlay.MaxPromotionSlot = function ()
	local f16_local0 = RankedPlay.PromotionSlotCount
	local f16_local1 = assert
	local f16_local2
	if f16_local0 < 3 or f16_local0 % 2 ~= 1 then
		f16_local2 = false
	else
		f16_local2 = true
	end
	f16_local1( f16_local2, "RankedPlay must have an odd number of Promotion Slots >= 3" )
	assert( f16_local0 <= 8, "RankedPlay Promotion Slots are stored as flags in a byte, cannot have more than 8" )
	return f16_local0
end

RankedPlay.MinPromotionWins = function ()
	return math.floor( RankedPlay.MaxPromotionSlot() / 2 + 0.5 )
end

RankedPlay.GetPlayerInRelegation = function ( f18_arg0 )
	return RankedPlay.GetPlayerDP( f18_arg0 ) == RankedPlay.GetDivisionMinDP( RankedPlay.GetPlayerDivision( f18_arg0 ) )
end

RankedPlay.GetPlayerInPromotion = function ( f19_arg0 )
	return RankedPlay.GetPlayerDP( f19_arg0 ) == RankedPlay.GetDivisionMaxDP( RankedPlay.GetPlayerDivision( f19_arg0 ) )
end

RankedPlay.GetPlayerAllPromotionSlots = function ( f20_arg0 )
	local f20_local0 = {}
	for f20_local1 = 1, RankedPlay.MaxPromotionSlot(), 1 do
		local f20_local4 = Engine.GetRankedPromotionSlot( f20_arg0, f20_local1 - 1 )
		if f20_local4 == RankedPlay.PromotionSlot.Incomplete then
			table.insert( f20_local0, f20_local4 )
		else
			table.insert( f20_local0, 1, f20_local4 )
		end
	end
	return f20_local0
end

RankedPlay.GetPlayerAllRelegationSlots = function ( f21_arg0 )
	local f21_local0 = {}
	local f21_local1 = Engine.GetPlayerData( f21_arg0, CoD.StatsGroup.Ranked, "divisionRelegationCounter" )
	for f21_local2 = 1, RankedPlay.MaxRelegationSlot(), 1 do
		if f21_local2 <= f21_local1 then
			table.insert( f21_local0, RankedPlay.PromotionSlot.Loss )
		else
			table.insert( f21_local0, RankedPlay.PromotionSlot.Incomplete )
		end
	end
	return f21_local0
end

RankedPlay.GetPlayerHasRelegationMark = function ( f22_arg0 )
	return Engine.GetPlayerData( f22_arg0, CoD.StatsGroup.Ranked, "divisionRelegationCounter" ) > 0
end

RankedPlay.GetPlayerPromotionSuccessful = function ( f23_arg0 )
	local f23_local0 = RankedPlay.GetPlayerDP( f23_arg0 )
	return RankedPlay.GetDivisionFromDP( f23_local0 - RankedPlay.GetPlayerMatchDP( f23_arg0 ) ) < RankedPlay.GetDivisionFromDP( f23_local0 )
end

RankedPlay.GetMatchBalanceState = function ( f24_arg0 )
	local f24_local0 = Engine.GetPlayerData( f24_arg0, CoD.StatsGroup.Common, "round", "matchPrediction" )
	if hasbit( f24_local0, RankedPlay.PredictionFlagBits.Win ) then
		return RankedPlay.BalanceState.Favorable
	elseif hasbit( f24_local0, RankedPlay.PredictionFlagBits.Lose ) then
		return RankedPlay.BalanceState.Unfavorable
	else
		return RankedPlay.BalanceState.Even
	end
end

RankedPlay.GetMatchBalanceString = function ( f25_arg0 )
	local f25_local0 = nil
	local f25_local1 = RankedPlay.GetMatchBalanceState( f25_arg0 )
	if f25_local1 == RankedPlay.BalanceState.Even then
		f25_local0 = Engine.Localize( "@LUA_MENU_RANKED_EVEN_MATCHUP" )
	elseif f25_local1 == RankedPlay.BalanceState.Favorable then
		f25_local0 = Engine.Localize( "@LUA_MENU_RANKED_FAVORED_MATCHUP" )
	elseif f25_local1 == RankedPlay.BalanceState.Unfavorable then
		f25_local0 = Engine.Localize( "@LUA_MENU_RANKED_UNFAVORED_MATCHUP" )
	else
		error( "LUI Error: Unknown Balance State (" .. f25_local1 .. ")" )
	end
	return f25_local0
end

RankedPlay.GetDivisionMinDP = function ( f26_arg0 )
	return tonumber( Engine.TableLookupByRow( DivisionTable.File, math.max( f26_arg0, RankedPlay.GetMinDivision() ) + DivisionTable.FirstRow, DivisionTable.Cols.MinPoints ) )
end

RankedPlay.GetDivisionMaxDP = function ( f27_arg0 )
	return tonumber( Engine.TableLookupByRow( DivisionTable.File, math.max( f27_arg0, RankedPlay.GetMinDivision() ) + DivisionTable.FirstRow, DivisionTable.Cols.MaxPoints ) )
end

RankedPlay.GetDivisionName = function ( f28_arg0 )
	return Engine.Localize( Engine.TableLookupByRow( DivisionTable.File, math.max( f28_arg0, RankedPlay.GetMinDivision() ) + DivisionTable.FirstRow, DivisionTable.Cols.Name ) )
end

RankedPlay.GetDivisionIcon = function ( f29_arg0 )
	return RegisterMaterial( Engine.TableLookupByRow( DivisionTable.File, math.max( f29_arg0, RankedPlay.GetMinDivision() ) + DivisionTable.FirstRow, DivisionTable.Cols.Icon ) )
end

RankedPlay.GetNormalizedDP = function ( f30_arg0 )
	return f30_arg0 - RankedPlay.GetDivisionMinDP( RankedPlay.GetDivisionFromDP( f30_arg0 ) )
end

RankedPlay.GetPlayerPromotionMessage = function ( f31_arg0 )
	return Engine.Localize( "@LUA_MENU_DIVISION_PROMOTION_MESSAGE", RankedPlay.MinPromotionWins(), RankedPlay.MaxPromotionSlot(), RankedPlay.GetDivisionName( RankedPlay.GetPlayerNextDivision( f31_arg0 ) ) )
end

RankedPlay.GetPlayerRelegationMessage = function ( f32_arg0 )
	return Engine.Localize( "@LUA_MENU_DIVISION_RELEGATION_MESSAGE", RankedPlay.MaxRelegationSlot() )
end

RankedPlay.GetCurrentSeason = function ( f33_arg0 )
	return Engine.Localize( "@LUA_MENU_SEASON_TITLE", Engine.GetPlayerData( f33_arg0, CoD.StatsGroup.Ranked, "currentSeason" ) )
end

RankedPlay.GetSeasonEndDate = function ( f34_arg0 )
	return ""
end

