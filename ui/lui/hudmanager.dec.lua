local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
f0_local0 = nil
function new()
	local f1_local0 = {}
	setmetatable( f1_local0, {
		__index = _M
	} )
	return f1_local0
end

function setupRoot( f2_arg0, f2_arg1 )
	f2_arg1:registerEventHandler( "init_hud", hudRootEventHandler( initHud ) )
	f2_arg1:registerEventHandler( "close_hud", closeHudHandler )
	f2_arg1:registerOmnvarHandler( "ui_use_mlg_hud", resetHud )
	f2_arg1:registerOmnvarHandler( "ui_round_end", hudRootEventHandler( updateRoundEnd ) )
	f2_arg1:registerEventHandler( "intermission_began", hudRootEventHandler( beginIntermission ) )
	f2_arg1:registerEventHandler( "show_host_migration", showHostMigrationHandler )
	f2_arg1:registerEventHandler( "add_hudelement_gsc", addHudElementHandlerGsc )
	f2_arg1:registerEventHandler( "remove_hudelement_gsc", removeHudElementHandlerGsc )
end

function hudRootEventHandler( f3_arg0 )
	return function ( f11_arg0, f11_arg1 )
		f3_arg0( f11_arg0.hudManager, f11_arg1, f11_arg0 )
	end
	
end

function registerHud( f4_arg0 )
	UPVAL0 = f4_arg0
end

function openRegisteredHud( f5_arg0 )
	profile.beginuserevent( "hud_create" )
	local f5_local0 = LUI.MenuBuilder.buildMenu( f0_local0 )
	profile.enduserevent( "hud_create" )
	run_gc()
	f5_arg0.hud = f5_local0
	f5_arg0.hudContainer.hud = f5_local0
	f5_arg0.hudContainer:addElement( f5_local0 )
	f5_local0:processEvent( {
		name = "menu_create",
		dispatchChildren = true
	} )
end

function closeRegisteredHud( f6_arg0 )
	if f6_arg0.hudContainer then
		f6_arg0.hudContainer:removeElement( f6_arg0.hudContainer.hud )
		f6_arg0.hudContainer.hud:close()
		f6_arg0.hudContainer.hud = nil
	elseif f6_arg0.hud then
		f6_arg0.hud:close()
	end
	f6_arg0.hud = nil
end

function initHud( f7_arg0, f7_arg1, f7_arg2 )
	if not f0_local0 then
		return 
	end
	local f7_local0 = Engine.GetDvarBool( "virtualLobbyActive" )
	if not f7_arg0.hudContainer then
		f7_arg0.hudContainer = LUI.UIElement.new( {
			left = 0,
			right = 0,
			top = 0,
			bottom = 0,
			leftAnchor = true,
			rightAnchor = true,
			topAnchor = true,
			bottomAnchor = true
		} )
		f7_arg0.hudContainer.id = "hudContainer"
		local f7_local1 = function ()
			
		end
		
		f7_arg0.hudContainer:registerEventHandler( "mousemove", f7_local1 )
		f7_arg0.hudContainer:registerEventHandler( "mousedown", f7_local1 )
		f7_arg0.hudContainer:registerEventHandler( "mouseup", f7_local1 )
		f7_arg0.hudContainer:registerEventHandler( "gamepad_sticks", f7_local1 )
		f7_arg0.hudContainer:setPriority( LUI.UIRoot.childPriorities.hudContainer )
		f7_arg2:addElement( f7_arg0.hudContainer )
		if not f7_arg2.m_hudElemLayer then
			local m_deadQuoteHud = LUI.UIElement.new( {
				left = 0,
				right = 0,
				top = 0,
				bottom = 0,
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true
			} )
			m_deadQuoteHud:setHudElemLayer()
			m_deadQuoteHud:setPriority( LUI.UIRoot.childPriorities.hudElems )
			f7_arg2:addElement( m_deadQuoteHud )
			f7_arg2.m_hudElemLayer = m_deadQuoteHud
		end
		if not Engine.IsMultiplayer() then
			if not f7_arg2.m_hudElemLayerDotMenu then
				local m_deadQuoteHud = LUI.UIElement.new( {
					left = 0,
					right = 0,
					top = 0,
					bottom = 0,
					leftAnchor = true,
					rightAnchor = true,
					topAnchor = true,
					bottomAnchor = true
				} )
				m_deadQuoteHud:setHudElemLayerDotMenu()
				m_deadQuoteHud:setPriority( LUI.UIRoot.childPriorities.hudElemsDotMenu )
				f7_arg2:addElement( m_deadQuoteHud )
				f7_arg2.m_hudElemLayerDotMenu = m_deadQuoteHud
			end
			if not f7_arg2.m_deadQuoteHud then
				local m_deadQuoteHud = LUI.sp_hud.gameInfo.deadQuoteDef()
				m_deadQuoteHud:setPriority( LUI.UIRoot.childPriorities.deadQuoteHud )
				f7_arg2:addElement( m_deadQuoteHud )
				f7_arg2.m_deadQuoteHud = m_deadQuoteHud
				
			else
				LUI.sp_hud.gameInfo.resetDeadQuoteAnimState( f7_arg2.m_deadQuoteHud )
			end
			if not Engine.IsConsoleGame() and not f7_arg2.m_objectivesHud then
				local m_deadQuoteHud = LUI.Objectives.new()
				m_deadQuoteHud:setPriority( LUI.UIRoot.childPriorities.objectivesHud )
				f7_arg2:addElement( m_deadQuoteHud )
				f7_arg2.m_objectivesHud = m_deadQuoteHud
			end
		end
	end
	if not GameX.GetScreenWidth() then
		LUI.UIRoot.ProcessEvent( f7_arg2, {
			name = "init_hud"
		} )
		return 
	elseif not Engine.HasSnapshot() then
		LUI.UIRoot.ProcessEvent( f7_arg2, {
			name = "init_hud"
		} )
		return 
	elseif not f7_arg0.hud then
		openRegisteredHud( f7_arg0 )
	end
	if f7_local0 then
		return 
	end
end

function closeHudHandler( f8_arg0, f8_arg1 )
	local f8_local0 = f8_arg0.hudManager
	if f8_local0 then
		f8_local0:closeHud( f8_arg1, f8_arg0 )
		f8_local0:endIntermission( f8_arg1, f8_arg0 )
	end
end

function closeHud( f9_arg0, f9_arg1, f9_arg2 )
	if f9_arg0.hudContainer then
		f9_arg0.hudContainer:close()
		f9_arg0.hudContainer = nil
	end
	if f9_arg0.hud then
		closeRegisteredHud( f9_arg0 )
	end
end

function resetHud( f10_arg0, f10_arg1 )
	f10_arg0:processEvent( {
		name = "close_hud",
		immediate = true
	} )
	f10_arg0:processEvent( {
		name = "init_hud",
		immediate = true
	} )
end

function getHud( f11_arg0 )
	return f11_arg0.hud
end

function updateRoundEnd( f12_arg0, f12_arg1, f12_arg2 )
	if f12_arg1.value > 0 then
		openRoundEndScreen( f12_arg0, f12_arg1, f12_arg2 )
	else
		closeRoundEndScreen( f12_arg0, f12_arg1, f12_arg2 )
	end
end

function openRoundEndScreen( f13_arg0, f13_arg1, f13_arg2 )
	if not f13_arg0.roundEndScreen then
		LUI.FlowManager.RequestCloseAllMenus()
		f13_arg0.roundEndScreen = LUI.MenuBuilder.BuildAddChild( f13_arg2, {
			type = "roundEnd"
		} )
		f13_arg0.roundEndScreen:setPriority( LUI.UIRoot.childPriorities.roundEndHud )
		Engine.SetDvarBool( "ui_drawCrosshair", false )
	end
	if not f13_arg2.talkerRoot then
		local f13_local0, f13_local1, f13_local2, f13_local3 = GameX.GetAdjustedSafeZoneSize()
		local f13_local4 = Engine.UsingSplitscreenUpscaling() and 5 or 15
		f13_arg2.talkerRoot = LUI.UIElement.new( {
			topAnchor = true,
			bottomAnchor = true,
			leftAnchor = true,
			rightAnchor = true,
			left = f13_local0 + f13_local4,
			top = f13_local1 + f13_local4,
			right = f13_local2 - f13_local4,
			bottom = f13_local3 - f13_local4
		} )
		f13_arg2.talkerRoot:addElement( LUI.MenuBuilder.BuildRegisteredType( "talkerHudDef", {} ) )
		f13_arg2:addElement( f13_arg2.talkerRoot )
	end
end

function closeRoundEndScreen( f14_arg0, f14_arg1, f14_arg2 )
	if f14_arg0.roundEndScreen then
		f14_arg0.roundEndScreen:processEvent( {
			name = "menu_close"
		} )
		f14_arg0.roundEndScreen:close()
		f14_arg0.roundEndScreen = nil
		Engine.SetDvarBool( "ui_drawCrosshair", true )
	end
	if f14_arg2.talkerRoot and not f14_arg0.finalScoresScreen then
		f14_arg2.talkerRoot:close()
		f14_arg2.talkerRoot = nil
	end
end

function beginIntermission( f15_arg0, f15_arg1, f15_arg2 )
	f15_arg0:closeHud( f15_arg1, f15_arg2 )
	f15_arg0:closeRoundEndScreen( f15_arg1, f15_arg2 )
	LUI.FlowManager.RequestCloseAllMenus()
	if Engine.GetDvarBool( "squad_match" ) then
		Squad.PostMatch( Engine.GetClientMatchData( "alliesScore" ), Engine.GetClientMatchData( "axisScore" ), Engine.GetClientMatchData( "alliesKills" ), Engine.GetClientMatchData( "alliesDeaths" ), false )
	end
	if not f15_arg0.finalScoresScreen then
		f15_arg0.finalScoresScreen = LUI.MenuBuilder.BuildRegisteredType( "scoreboard", {
			defAlpha = 1,
			winningTeam = Game.GetOmnvar( "ui_game_victor" ),
			overrideScoreColoring = true,
			ignoreTitleTopOffsets = true
		} )
		f15_arg2:addElement( f15_arg0.finalScoresScreen )
	end
	if not f15_arg2.talkerRoot then
		local f15_local0, f15_local1, f15_local2, f15_local3 = GameX.GetAdjustedSafeZoneSize()
		local f15_local4 = Engine.UsingSplitscreenUpscaling() and 5 or 15
		f15_arg2.talkerRoot = LUI.UIElement.new( {
			topAnchor = true,
			bottomAnchor = true,
			leftAnchor = true,
			rightAnchor = true,
			left = f15_local0 + f15_local4,
			top = f15_local1 + f15_local4,
			right = f15_local2 - f15_local4,
			bottom = f15_local3 - f15_local4
		} )
		f15_arg2.talkerRoot:addElement( LUI.MenuBuilder.BuildRegisteredType( "talkerHudDef", {} ) )
		f15_arg2:addElement( f15_arg2.talkerRoot )
	end
end

function endIntermission( f16_arg0, f16_arg1, f16_arg2 )
	if f16_arg0.finalScoresScreen then
		f16_arg0.finalScoresScreen:close()
		f16_arg0.finalScoresScreen = nil
	end
	if f16_arg2.talkerRoot and not f16_arg0.roundEndScreen then
		f16_arg2.talkerRoot:close()
		f16_arg2.talkerRoot = nil
	end
end

function showHostMigrationHandler( f17_arg0, f17_arg1 )
	LUI.FlowManager.RequestAddMenu( nil, "host_migration_main" )
	f17_arg0:processEvent( {
		name = "show_host_migration_triggered"
	} )
end

function registerHudElement( f18_arg0 )
	assert( "HudManager.registerHudElement has been deprecated. Remove this call and follow examples in OverlayHud.lua to add a new hud element" )
end

function addHudElementHandlerGsc( f19_arg0, f19_arg1 )
	assert( "add_hudelement_gsc has been deprecated.  Use SetOmnvar and follow examples in OverlayHud.lua to add new hud elements" )
end

function removeHudElementHandlerGsc( f20_arg0, f20_arg1 )
	assert( "remove_hudelement_gsc has been deprecated.  Use SetOmnvar and follow examples in OverlayHud.lua to add new hud elements" )
end

LockTable( _M )
