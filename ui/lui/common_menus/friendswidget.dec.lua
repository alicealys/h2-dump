local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.FriendsWidget = {}
LUI.FriendsWidget.REASON_ALLOWED = 1
LUI.FriendsWidget.REASON_NOT_ALLOWED = 0
LUI.FriendsWidget.REASON_GUEST = -1
LUI.FriendsWidget.REASON_WRONG_CONTROLLER = -2
LUI.FriendsWidget.CanControllerAccessFriendsList = function ( f1_arg0 )
	if not Engine.HasActiveLocalClient( f1_arg0 ) then
		return LUI.FriendsWidget.REASON_NOT_ALLOWED
	elseif not Engine.IsUserSignedInToLive( f1_arg0 ) then
		return LUI.FriendsWidget.REASON_NOT_ALLOWED
	elseif not Engine.UserCanAccessFriendsList( f1_arg0 ) then
		return LUI.FriendsWidget.REASON_NOT_ALLOWED
	elseif Engine.IsUserAGuest( f1_arg0 ) then
		return LUI.FriendsWidget.REASON_GUEST
	elseif Engine.IsPS3() and f1_arg0 ~= 0 then
		return LUI.FriendsWidget.REASON_WRONG_CONTROLLER
	else
		return LUI.FriendsWidget.REASON_ALLOWED
	end
end

LUI.FriendsWidget.CanSomeoneAccessFriendslist = function ()
	if not Engine.IsNetworkConnected() then
		return false
	end
	for f2_local0 = 0, Engine.GetMaxControllerCount() - 1, 1 do
		if LUI.FriendsWidget.CanControllerAccessFriendsList( f2_local0 ) == LUI.FriendsWidget.REASON_ALLOWED then
			return true
		end
	end
	return false
end

LUI.FriendsWidget.CanSPUserAccessFriendsList = function ()
	if not Engine.IsNetworkConnected() then
		return false
	else
		return LUI.FriendsWidget.CanControllerAccessFriendsList( Engine.GetFirstActiveController() ) == LUI.FriendsWidget.REASON_ALLOWED
	end
end

LUI.FriendsWidget.OpenFriends = function ( f4_arg0, f4_arg1 )
	local f4_local0 = false
	if Engine.IsNetworkConnected() then
		local f4_local1 = LUI.FriendsWidget.CanControllerAccessFriendsList( f4_arg1.controller )
		if f4_local1 == LUI.FriendsWidget.REASON_ALLOWED then
			LUI.FlowManager.RequestAddMenu( f4_arg0, "FriendsMenu", true, f4_arg1.controller, false, {} )
			f4_local0 = true
		elseif f4_local1 == LUI.FriendsWidget.REASON_GUEST then
			LUI.FlowManager.RequestAddMenu( f4_arg0, "mp_no_guest_popup", false, f4_arg1.controller, false )
			f4_local0 = true
		elseif f4_local1 == LUI.FriendsWidget.REASON_WRONG_CONTROLLER then
			LUI.FlowManager.RequestAddMenu( f4_arg0, "mp_wrong_controller_popup", false, f4_arg1.controller, false )
			f4_local0 = true
		end
	end
	return f4_local0
end

function RepeatSystemUpdate( f5_arg0 )
	local systemUpdateTimer = LUI.UITimer.new( 1000, "TickSystemUpdate", nil, false )
	systemUpdateTimer.id = "SystemUpdateTimer"
	f5_arg0:registerEventHandler( "TickSystemUpdate", function ( element, event )
		OnSystemsUpdate( element, event )
	end )
	f5_arg0:addElement( systemUpdateTimer )
	f5_arg0.systemUpdateTimer = systemUpdateTimer
	
end

function OnSystemsUpdate( f6_arg0, f6_arg1 )
	if f6_arg0.systemUpdateTimer ~= nil then
		local f6_local0 = Engine.IsMultiplayer()
		if f6_local0 then
			f6_local0 = LUI.FriendsWidget.CanSomeoneAccessFriendslist()
		end
		if f6_local0 then
			f6_arg0.systemUpdateTimer:close()
			f6_arg0.systemUpdateTimer = nil
		end
	elseif LUI.FlowManager.IsMenuOpenAndVisible( Engine.GetLuiRoot(), "mp_main_menu" ) then
		RepeatSystemUpdate( f6_arg0 )
	end
	if Engine.IsMultiplayer() then
		if LUI.FriendsWidget.CanSomeoneAccessFriendslist() then
			f6_arg0:processEvent( {
				name = "show_widget"
			} )
		else
			f6_arg0:processEvent( {
				name = "hide_widget"
			} )
		end
	elseif LUI.FriendsWidget.CanSPUserAccessFriendsList() then
		f6_arg0:processEvent( {
			name = "show_widget"
		} )
	else
		f6_arg0:processEvent( {
			name = "hide_widget"
		} )
	end
end

function online_friends_widget()
	return {
		type = "UIElement",
		states = {
			default = {
				topAnchor = false,
				bottomAnchor = true,
				leftAnchor = false,
				rightAnchor = true,
				bottom = -35,
				right = -100,
				width = FriendsWidgetDims.Width,
				height = FriendsWidgetDims.Height,
				alpha = 1
			},
			disabled = MBh.BaseState( "default", {
				alpha = 0
			} )
		},
		handlers = {
			show_widget = function ( f13_arg0, f13_arg1 )
				local f13_local0 = f13_arg0:getParent()
				if f13_local0 then
					local f13_local1 = LUI.ButtonHelperText.CommonEvents.addFriendsButton
					f13_local1.dispatchChildren = true
					f13_local0:processEvent( f13_local1 )
					f13_arg0:animateToState( "default", 100 )
					if Engine.IsXB3() or not Engine.IsConsoleGame() then
						Engine.ExecNow( "friends_widget_refresh" )
					end
					local f13_local2 = Engine.GetLuiRoot()
					if f13_local2 then
						local f13_local3 = LUI.FlowManager.GetTopMenuInfo( f13_local2.flowManager.menuInfoStack, true )
						if f13_local3.isPopup then
							local f13_local4 = f13_local0:getFirstDescendentById( (f13_local1.button_ref or f13_local1.id) .. "_id" )
							if f13_local4 then
								f13_local4:processEvent( {
									name = "popup_active",
									dispatchChildren = true,
									popup_name = f13_local3.name
								} )
							end
						end
					end
				end
			end
			,
			hide_widget = function ( f14_arg0, f14_arg1 )
				local f14_local0 = f14_arg0:getParent()
				if f14_local0 then
					local f14_local1 = LUI.ButtonHelperText.CommonEvents.removeFriendsButton
					f14_local1.dispatchChildren = true
					f14_local0:processEvent( f14_local1 )
					f14_arg0:animateToState( "disabled", 0 )
				end
			end
			,
			menu_create = OnSystemsUpdate,
			live_connection = OnSystemsUpdate,
			network_connection = OnSystemsUpdate,
			social_presence = OnSystemsUpdate
		}
	}
end

LUI.MenuBuilder.registerDef( "online_friends_widget", online_friends_widget )
LockTable( _M )
