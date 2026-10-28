local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
PushAndPopsTable = {}
function new()
	local f1_local0 = {}
	setmetatable( f1_local0, {
		__index = _M
	} )
	f1_local0.menuInfoStack = {}
	f1_local0.debug = true
	f1_local0.flowEvents = {}
	f1_local0.menuInfoData = {}
	setmetatable( f1_local0.menuInfoData, {
		__mode = "k"
	} )
	return f1_local0
end

function RegisterStackPushBehaviour( f2_arg0, f2_arg1 )
	PushAndPopsTable[f2_arg0] = PushAndPopsTable[f2_arg0] or {}
	PushAndPopsTable[f2_arg0].pushFunc = f2_arg1 or PushAndPopsTable[f2_arg0].pushFunc
end

function RegisterStackPopBehaviour( f3_arg0, f3_arg1 )
	PushAndPopsTable[f3_arg0] = PushAndPopsTable[f3_arg0] or {}
	PushAndPopsTable[f3_arg0].popFunc = f3_arg1 or PushAndPopsTable[f3_arg0].popFunc
end

function RegisterStackResumeBehaviour( f4_arg0, f4_arg1 )
	PushAndPopsTable[f4_arg0] = PushAndPopsTable[f4_arg0] or {}
	PushAndPopsTable[f4_arg0].resumeFunc = f4_arg1 or PushAndPopsTable[f4_arg0].resumeFunc
end

function RegisterMenuStack( f5_arg0, f5_arg1 )
	PushAndPopsTable[f5_arg0] = PushAndPopsTable[f5_arg0] or {}
	PushAndPopsTable[f5_arg0].stackMenuList = f5_arg1 or PushAndPopsTable[f5_arg0].stackMenuList
end

function tryAddMouseCursor( f6_arg0 )
	if Engine.UsesMouseCursor() and not f6_arg0:getChildById( "mouse_cursor" ) then
		f6_arg0:addElement( LUI.UIMouseCursor.new( {
			material = RegisterMaterial( "ui_cursor" )
		} ) )
	end
end

function GetMenuBuildProps( f7_arg0, f7_arg1 )
	local f7_local0 = {}
	if f7_arg0.menuInfoData[f7_arg1] and f7_arg0.menuInfoData[f7_arg1].buildData then
		f7_local0 = f7_arg0.menuInfoData[f7_arg1].buildData
	end
	f7_local0.exclusiveController = f7_arg1.exclusiveControllerIndex
	return f7_local0
end

function SetMenuBuildProps( f8_arg0, f8_arg1, f8_arg2 )
	f8_arg0.menuInfoData[f8_arg1] = f8_arg0.menuInfoData[f8_arg1] or {}
	f8_arg0.menuInfoData[f8_arg1].buildData = f8_arg2
end

function SetNextMapToLoad( f9_arg0 )
	local f9_local0 = Engine.GetLuiRoot()
	f9_local0.flowManager.nextMapToLoad = f9_arg0
end

function GetNextMapToLoad()
	local f10_local0 = Engine.GetLuiRoot()
	return f10_local0.flowManager.nextMapToLoad
end

function GetMenuScopedData( f11_arg0, f11_arg1 )
	if not f11_arg0.menuInfoData[f11_arg1] then
		f11_arg0.menuInfoData[f11_arg1] = {}
	end
	if not f11_arg0.menuInfoData[f11_arg1].scopedData then
		f11_arg0.menuInfoData[f11_arg1].scopedData = {}
	end
	return f11_arg0.menuInfoData[f11_arg1].scopedData
end

function GetMenuScopedDataFromElement( f12_arg0 )
	if f12_arg0._scoped then
		return f12_arg0._scoped
	else
		local f12_local0 = f12_arg0:getParent()
		if f12_local0 then
			return GetMenuScopedDataFromElement( f12_local0 )
		else
			DebugPrint( "WARNING: could not find scoped data for supplied menu element. This is expected if you've just hit LUI Reload, otherwise not so much." )
			return {}
		end
	end
end

function GetTopMenuScopedData()
	local f13_local0 = Engine.GetLuiRoot()
	f13_local0 = f13_local0.flowManager
	return f13_local0:GetMenuScopedData( f13_local0.menuInfoStack[#f13_local0.menuInfoStack] )
end

function GetBottomMenuScopedData()
	local f14_local0 = Engine.GetLuiRoot()
	f14_local0 = f14_local0.flowManager
	return f14_local0:GetMenuScopedData( f14_local0.menuInfoStack[1] )
end

function GetMenuScopedDataByMenuName( f15_arg0 )
	local f15_local0 = Engine.GetLuiRoot()
	f15_local0 = f15_local0.flowManager
	for f15_local1 = #f15_local0.menuInfoStack, 1, -1 do
		local f15_local4 = f15_local0.menuInfoStack[f15_local1]
		if f15_local4.name == f15_arg0 then
			return f15_local0:GetMenuScopedData( f15_local4 )
		end
	end
	if f15_arg0 then
		DebugPrint( "WARNING: could not find scoped data for menu named " .. f15_arg0 .. ". This is expected if you've just hit LUI Reload, otherwise not so much." )
	end
	return {}
end

function GetMenuScopedDataFindByMenuType( f16_arg0 )
	if f16_arg0 == nil then
		DebugPrint( "WARNING: GetMenuScopedDataFindByMenuType called with not name or empty name parameter." )
		return {}
	end
	local f16_local0 = Engine.GetLuiRoot()
	f16_local0 = f16_local0.flowManager
	for f16_local1 = #f16_local0.menuInfoStack, 1, -1 do
		local f16_local4 = f16_local0.menuInfoStack[f16_local1]
		if string.find( f16_local4.name, f16_arg0 ) ~= nil then
			return f16_local0:GetMenuScopedData( f16_local4 )
		end
	end
	DebugPrint( "WARNING: could not find scoped data for menu named " .. f16_arg0 .. ". This is expected if you've just hit LUI Reload, otherwise not so much." )
	return {}
end

function IsTopSignInMenu( f17_arg0 )
	local f17_local0 = false
	local f17_local1 = f17_arg0.flowManager
	if f17_local1.menuInfoStack then
		local f17_local2 = f17_local1.menuInfoStack[#f17_local1.menuInfoStack]
		if f17_local2 and f17_local2.menu and f17_local2.menu.isSignInMenu then
			f17_local0 = true
		end
	end
	return f17_local0
end

function IsExclusiveMenu( f18_arg0, f18_arg1 )
	local f18_local0 = false
	local f18_local1 = f18_arg0.flowManager
	if f18_local1.menuInfoStack then
		local f18_local2 = f18_local1.menuInfoStack[#f18_local1.menuInfoStack]
		if f18_local2 and f18_local2.menu and f18_local2.menu.m_ownerController and f18_local2.menu.m_ownerController == f18_arg1 then
			f18_local0 = true
		end
	end
	return f18_local0
end

function PushMenuInfo( f19_arg0, f19_arg1, f19_arg2 )
	if f19_arg1.isModal or #f19_arg0.menuInfoStack == 0 then
		table.insert( f19_arg0.menuInfoStack, f19_arg1 )
	else
		local f19_local0 = #f19_arg0.menuInfoStack + 1
		while f19_local0 > 1 and f19_arg0.menuInfoStack[f19_local0 - 1].isModal do
			f19_local0 = f19_local0 - 1
		end
		if f19_arg2 then
			f19_local0 = math.max( 1, f19_local0 - 1 )
		end
		table.insert( f19_arg0.menuInfoStack, f19_local0, f19_arg1 )
	end
	if not f19_arg2 and PushAndPopsTable[f19_arg1.name] and PushAndPopsTable[f19_arg1.name].stackMenuList then
		local f19_local0 = Engine.GetLuiRoot()
		local f19_local1 = {
			stackData = {}
		}
		local f19_local2 = PushAndPopsTable[f19_arg1.name].stackMenuList
		if type( f19_local2 ) == "function" then
			f19_local2 = f19_local2()
		end
		if f19_local2 then
			for f19_local3 = 1, #f19_local2, 1 do
				f19_local1.stackData[f19_local3] = {
					name = f19_local2[f19_local3]
				}
			end
			f19_arg0:setStack( f19_local0, f19_local1 )
		end
	end
	if PushAndPopsTable[f19_arg1.name] and PushAndPopsTable[f19_arg1.name].pushFunc then
		PushAndPopsTable[f19_arg1.name].pushFunc()
	end
	if #f19_arg0.menuInfoStack == 1 then
		local f19_local0 = Engine.GetLuiRoot()
		f19_local0:processEvent( {
			name = "non_empty_menu_stack"
		} )
	end
end

function PopMenuInfo( f20_arg0, f20_arg1 )
	local f20_local0 = nil
	local f20_local1 = #f20_arg0.menuInfoStack
	while f20_local1 >= 1 and (not (f20_arg1 or not f20_arg0.menuInfoStack[f20_local1].isModal) or f20_arg1 and f20_arg0.menuInfoStack[f20_local1] ~= f20_arg1) do
		f20_local1 = f20_local1 - 1
	end
	if f20_local1 >= 1 then
		f20_local0 = f20_arg0.menuInfoStack[f20_local1]
		if f20_local0 then
			if PushAndPopsTable[f20_local0.name] and PushAndPopsTable[f20_local0.name].popFunc then
				PushAndPopsTable[f20_local0.name].popFunc()
			end
			table.remove( f20_arg0.menuInfoStack, f20_local1 )
		end
	end
	if f20_local0 and #f20_arg0.menuInfoStack == 0 then
		local f20_local2 = Engine.GetLuiRoot()
		f20_local2:processEvent( {
			name = "empty_menu_stack"
		} )
	else
		local f20_local2 = f20_arg0.menuInfoStack[#f20_arg0.menuInfoStack]
		if f20_local2 and PushAndPopsTable[f20_local2.name] and PushAndPopsTable[f20_local2.name].resumeFunc then
			PushAndPopsTable[f20_local2.name].resumeFunc()
		end
	end
	return f20_local0
end

function GetTopMenuInfo( f21_arg0, f21_arg1 )
	local f21_local0 = nil
	local f21_local1 = #f21_arg0
	if not f21_arg1 then
	
	else
		if 1 <= f21_local1 then
			f21_local0 = f21_arg0[f21_local1]
		end
		return f21_local0
	end
	while 1 <= f21_local1 and f21_arg0[f21_local1].isModal do
		f21_local1 = f21_local1 - 1
	end
	if 1 <= f21_local1 then
		f21_local0 = f21_arg0[f21_local1]
	end
	return f21_local0
end

f0_local0 = function ( f22_arg0 )
	local f22_local0 = false
	local f22_local1 = f22_arg0[#f22_arg0]
	if f22_local1 and f22_local1.isModal then
		f22_local0 = true
	end
	return f22_local0
end

function IsTopMenuModal()
	local f23_local0 = Engine.GetLuiRoot()
	if not f23_local0 then
		return false
	else
		return f0_local0( f23_local0.flowManager.menuInfoStack )
	end
end

function IsElementAChildOf( f24_arg0, f24_arg1 )
	if not f24_arg0 or not f24_arg1 then
		return false
	end
	while f24_arg0 do
		if f24_arg0 == f24_arg1 then
			return true
		end
		f24_arg0 = f24_arg0:getParent()
	end
	return false
end

function GetPreviousMenuId()
	local f25_local0 = Engine.GetLuiRoot()
	if not f25_local0 then
		return nil
	else
		return f25_local0.flowManager.previousMenuId
	end
end

function CloseMenuInfo( f26_arg0, f26_arg1, f26_arg2 )
	if f26_arg1.menu then
		if not f26_arg2 then
			f26_arg1.menu:processEvent( {
				name = "lose_focus"
			} )
		end
		if not f26_arg2 or f26_arg1.menu.alwaysSendMenuClose then
			f26_arg1.menu:processEvent( {
				name = "menu_close",
				dispatchChildren = true,
				controller = f26_arg1.exclusiveControllerIndex
			} )
		end
		f26_arg1.menu:clearSavedState()
		f26_arg1.menu:closeTree()
		f26_arg1.menu:close()
		f26_arg1.menu = nil
	end
end

function RestoreMenuInfo( f27_arg0, f27_arg1, f27_arg2, f27_arg3, f27_arg4 )
	local f27_local0 = false
	if f27_arg1.menu and f27_arg4 and f27_arg4.replaceTop then
		f27_arg1.menu:closeTree()
		f27_arg1.menu:close()
		f27_arg1.menu = nil
	end
	if not f27_arg1.menu then
		LUI.ActiveScoped = f27_arg0:GetMenuScopedData( f27_arg1 )
		f27_arg1.menu = LUI.MenuBuilder.buildMenu( f27_arg1.name, f27_arg0:GetMenuBuildProps( f27_arg1 ) )
		tryAddMouseCursor( f27_arg2 )
		f27_arg0.menuRoot:addElement( f27_arg1.menu )
		local f27_local1 = {
			name = "update_navigation",
			dispatchChildren = true
		}
		local f27_local2 = {
			name = "menu_create",
			dispatchChildren = true,
			controller = f27_arg1.exclusiveControllerIndex
		}
		if f27_arg4 ~= nil then
			f27_local2.userData = f27_arg4.userData
			f27_local1.userData = f27_arg4.userData
		end
		f27_arg1.menu:processEvent( f27_local1 )
		f27_arg1.menu:processEvent( f27_local2 )
		LUI.ActiveScoped = nil
		f27_local0 = true
	end
	if GetTopMenuInfo( f27_arg0.menuInfoStack, true ) == f27_arg1 then
		if f27_arg3 then
			f27_arg1.menu:processEvent( {
				name = "popup_inactive",
				dispatchChildren = true
			} )
		end
		local f27_local1, f27_local2 = f27_arg1.menu:restoreState( nil, nil, f27_arg4 )
		if not f27_local1 or f27_local2 == 0 then
			DebugPrint( "LUI Warning: no saved state found for menu " .. f27_arg1.name )
			f27_arg1.menu:processEvent( {
				name = "gain_focus",
				controller = f27_arg4 and f27_arg4.controller
			} )
		end
	elseif f27_local0 then
		f27_arg1.menu:processEvent( {
			name = "popup_active",
			dispatchChildren = true
		} )
	end
	return f27_arg1.menu
end

function CloseAllModalMenus( f28_arg0 )
	for f28_local0 = #f28_arg0.menuInfoStack, 1, -1 do
		local f28_local3 = f28_arg0.menuInfoStack[f28_local0]
		if f28_local3.menu and f28_local3.isModal then
			f28_arg0:CloseMenuInfo( f28_local3 )
			f28_arg0:PopMenuInfo( f28_local3 )
		end
	end
end

function CloseVisibleInStack( f29_arg0, f29_arg1 )
	local f29_local0 = true
	for f29_local1 = #f29_arg0.menuInfoStack, 1, -1 do
		local f29_local4 = f29_arg0.menuInfoStack[f29_local1]
		if f29_local4.menu and not f29_local4.isModal then
			if f29_local0 then
				if f29_arg1 then
					f29_arg0.previousMenuId = f29_local4.menu.id
					f29_local4.menu:clearSavedState()
				else
					f29_local4.menu:saveState()
				end
				f29_local4.menu:processEvent( {
					name = "lose_focus"
				} )
				LUI.PreviousMenuName = f29_local4.name
			end
			f29_local4.menu:processEvent( {
				name = "menu_close",
				dispatchChildren = true,
				controller = f29_local4.exclusiveControllerIndex
			} )
			f29_local4.menu:closeTree()
			f29_local4.menu:close()
			f29_local4.menu = nil
			f29_local0 = false
		end
	end
end

f0_local1 = function ( f30_arg0, f30_arg1, f30_arg2 )
	local f30_local0 = {
		name = f30_arg0,
		menu = f30_arg1,
		isOldMenu = f30_arg2
	}
	setmetatable( f30_local0, {
		__mode = "v"
	} )
	return f30_local0
end

function printStack( f31_arg0 )
	DebugPrint( "Menu Stack:" )
	DebugPrint( "Top" )
	for f31_local0 = #f31_arg0.menuInfoStack, 1, -1 do
		local f31_local3 = f31_arg0.menuInfoStack[f31_local0]
		local f31_local4 = "Not Visible"
		local f31_local5 = ""
		if f31_local3.menu ~= nil then
			f31_local4 = "Visible"
		end
		if f31_local3.isOldMenuthen then
			f31_local5 = " Old Menu"
		end
		DebugPrint( f31_local0 .. ") " .. f31_local3.name .. " " .. f31_local4 .. f31_local5 )
	end
	DebugPrint( "Bottom" )
end

function setupRoot( f32_arg0, f32_arg1 )
	f32_arg0.menuRoot = f32_arg1
	f32_arg0.menuRoot = LUI.UIElement.new( {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = true,
		left = 0,
		top = 0,
		right = 0,
		bottom = 0
	} )
	if not Engine.UsingSplitscreenUpscaling() then
		f32_arg0.menuRoot:setupLetterboxElement()
	end
	f32_arg0.menuRoot:setPriority( LUI.UIRoot.childPriorities.menuRoot )
	f32_arg1:addElement( f32_arg0.menuRoot )
	for f32_local3, f32_local4 in pairs( m_flowEvents ) do
		f32_arg1:registerEventHandler( f32_local3, f32_local4 )
	end
end

function RequestOldMenu( f33_arg0, f33_arg1, f33_arg2, f33_arg3 )
	local f33_local0 = {
		name = "openOldMenu",
		menu = f33_arg1,
		replaceTop = f33_arg2,
		controller = f33_arg3
	}
	local f33_local1 = Engine.GetLuiRoot()
	LUI.UIRoot.BlockButtonInput( f33_local1, true, "RequestOldMenu" )
	LUI.UIRoot.ProcessEvent( f33_local1, f33_local0 )
end

function RequestAddMenu( f34_arg0, f34_arg1, f34_arg2, f34_arg3, f34_arg4, f34_arg5, f34_arg6 )
	local f34_local0 = {
		name = "addmenu",
		menu = f34_arg1,
		exclusiveController = f34_arg2,
		controller = f34_arg3,
		replaceTop = f34_arg4,
		data = f34_arg5
	}
	local f34_local1
	if f34_arg6 then
		f34_local1 = f34_arg6.reload
		if not f34_local1 then
		
		else
			f34_local0.reload = f34_local1
			f34_local1 = LUI.MenuBuilder.getPopupData( f34_arg1 )
			if f34_local1 then
				f34_local0.immediate = f34_local1.immediateProcessing
			end
			local f34_local2 = Engine.GetLuiRoot()
			LUI.UIRoot.BlockButtonInput( f34_local2, true, "RequestAddMenu" )
			LUI.UIRoot.ProcessEvent( f34_local2, f34_local0 )
		end
	end
	f34_local1 = nil
end

function RequestPopupMenu( f35_arg0, f35_arg1, f35_arg2, f35_arg3, f35_arg4, f35_arg5 )
	local f35_local0 = {
		name = "popupmenu",
		menu = f35_arg1,
		exclusiveController = f35_arg2,
		controller = f35_arg3,
		replaceTop = f35_arg4,
		data = f35_arg5,
		immediate = true
	}
	local f35_local1 = Engine.GetLuiRoot()
	LUI.UIRoot.BlockButtonInput( f35_local1, true, "RequestPopupMenu " .. f35_arg1 )
	LUI.UIRoot.ProcessEvent( f35_local1, f35_local0 )
end

function RequestLeaveMenu( f36_arg0, f36_arg1, f36_arg2, f36_arg3, f36_arg4 )
	local f36_local0 = {
		name = "leavemenu",
		element = f36_arg0,
		userData = f36_arg1,
		immediate = f36_arg2,
		controller = f36_arg3
	}
	local f36_local1 = Engine.GetLuiRoot()
	LUI.UIRoot.BlockButtonInput( f36_local1, true, "RequestLeaveMenu" )
	LUI.UIRoot.ProcessEvent( f36_local1, f36_local0 )
	if not f36_arg4 then
		Engine.PlaySound( CoD.SFX.PauseMenuBack )
	end
end

function RequestLeaveMenuByName( f37_arg0, f37_arg1, f37_arg2, f37_arg3 )
	local f37_local0 = {
		name = "leavemenu",
		menu = f37_arg0,
		userData = f37_arg1,
		immediate = f37_arg2
	}
	LUI.UIRoot.BlockButtonInput( Engine.GetLuiRoot(), true, "RequestLeaveMenuByName" )
	local f37_local1 = Engine.GetLuiRoot()
	f37_local1:processEvent( f37_local0 )
	if not f37_arg3 then
		Engine.PlaySound( CoD.SFX.PauseMenuBack )
	end
end

function RequestRestoreMenu( f38_arg0, f38_arg1, f38_arg2, f38_arg3, f38_arg4, f38_arg5 )
	local f38_local0 = {
		name = "restoreMenu",
		menu = f38_arg1,
		immediate = true,
		replaceTop = f38_arg4,
		exclusiveController = f38_arg2,
		controller = f38_arg3,
		userData = f38_arg5
	}
	local f38_local1 = Engine.GetLuiRoot()
	LUI.UIRoot.BlockButtonInput( f38_local1, true, "RequestRestoreMenu" )
	LUI.UIRoot.ProcessEvent( f38_local1, f38_local0 )
end

function RequestLeaveTopMenuImmediately( f39_arg0, f39_arg1, f39_arg2, f39_arg3 )
	LUI.UIRoot.ProcessEvent( Engine.GetLuiRoot(), {
		name = "leavemenu",
		menu = f39_arg1,
		toOldMenu = f39_arg2,
		userData = f39_arg3,
		immediate = true
	} )
end

function RequestCloseAllMenus( f40_arg0, f40_arg1 )
	DebugPrint( "FlowManager: RequestCloseAllMenus" )
	LUI.UIRoot.ProcessEvent( Engine.GetLuiRoot(), {
		name = "closeallmenus",
		menu = f40_arg1
	} )
	LUI.PreviousMenuName = nil
end

function RequestSetStack( f41_arg0, f41_arg1, f41_arg2 )
	if f41_arg2 == nil then
		f41_arg2 = true
	end
	LUI.UIRoot.ProcessEvent( Engine.GetLuiRoot(), {
		name = "setStack",
		stackData = f41_arg1,
		immediate = f41_arg2
	} )
end

function RequestAddMenuAndSetStack( f42_arg0, f42_arg1, f42_arg2, f42_arg3, f42_arg4, f42_arg5, f42_arg6 )
	local f42_local0 = {
		name = "addmenu_setstack",
		menu = f42_arg1,
		exclusiveController = f42_arg2,
		controller = f42_arg3,
		replaceTop = f42_arg4,
		data = f42_arg5,
		immediate = true,
		stackData = f42_arg6
	}
	local f42_local1 = Engine.GetLuiRoot()
	LUI.UIRoot.BlockButtonInput( f42_local1, true, "RequestAddMenuAndSetStack" )
	LUI.UIRoot.ProcessEvent( f42_local1, f42_local0 )
end

function openOldMenuHandler( f43_arg0, f43_arg1 )
	f43_arg0.flowManager:openOldMenu( f43_arg1, f43_arg0 )
	LUI.UIRoot.BlockButtonInput( f43_arg0, false, "openOldMenu" )
	LUI.UIRoot.BlockMouseMove( f43_arg0, false, "openOldMenu" )
end

function openOldMenu( f44_arg0, f44_arg1, f44_arg2 )
	local f44_local0 = f44_arg1.menu
	f44_arg0:CloseAllModalMenus()
	local f44_local1 = GetTopMenuInfo( f44_arg0.menuInfoStack )
	local self = LUI.UIElement.new()
	local f44_local3 = f0_local1( f44_local0, self, true )
	f44_arg0:CloseVisibleInStack( f44_arg1.replaceTop )
	local f44_local4 = f44_arg2:getChildById( "mouse_cursor" )
	if f44_local4 then
		f44_local4:close()
	end
	f44_arg0.menuRoot:addElement( self )
	if f44_arg1.replaceTop then
		f44_arg0:PopMenuInfo()
	end
	f44_arg0:PushMenuInfo( f44_local3 )
	if f44_arg0.debug then
		f44_arg0:printStack()
	end
	Engine.SetLuiInUse( false )
	Engine.OpenOldMenu( f44_local0, f44_arg1.controller, f44_arg1.ignorePriority )
	return f44_local3.menu
end

function closeAllMenusHandler( f45_arg0, f45_arg1 )
	DebugPrint( "FlowManager: handling close all menus" )
	f45_arg0.flowManager:closeAllMenus( f45_arg0, f45_arg1 )
end

function closeAllMenus( f46_arg0, f46_arg1, f46_arg2 )
	Engine.SetLuiInUse( false )
	for f46_local0 = #f46_arg0.menuInfoStack, 1, -1 do
		local f46_local3 = f46_arg0.menuInfoStack[f46_local0]
		f46_arg0:CloseMenuInfo( f46_local3, true )
		f46_arg0:PopMenuInfo( f46_local3 )
	end
	local f46_local0 = f46_arg1:getChildById( "mouse_cursor" )
	if f46_local0 then
		f46_local0:close()
	end
	f46_arg0.menuInfoStack = {}
end

function IsInStack( f47_arg0, f47_arg1 )
	local f47_local0 = false
	for f47_local4, f47_local5 in ipairs( f47_arg0.menuInfoStack ) do
		if f47_local5.name == f47_arg1 and not f47_local5.isOldMenu then
			f47_local0 = true
			break
		end
	end
	return f47_local0
end

function IsInStackRoot( f48_arg0 )
	local f48_local0 = Engine.GetLuiRoot()
	assert( f48_local0 )
	return IsInStack( f48_local0.flowManager, f48_arg0 )
end

function AnyActiveMenusInStack( f49_arg0 )
	local f49_local0 = f49_arg0.flowManager
	if f49_local0.menuInfoStack then
		for f49_local4, f49_local5 in ipairs( f49_local0.menuInfoStack ) do
			if f49_local5.menu ~= nil then
				return true
			end
		end
	end
	return false
end

function IsMenuOpenAndVisible( f50_arg0, f50_arg1 )
	local f50_local0 = f50_arg0.flowManager
	if f50_local0.menuInfoStack then
		for f50_local4, f50_local5 in ipairs( f50_local0.menuInfoStack ) do
			if f50_local5.name == f50_arg1 and f50_local5.menu ~= nil then
				return f50_local5.menu
			end
		end
	end
	return false
end

function IsMenuInStack( f51_arg0, f51_arg1 )
	local f51_local0 = f51_arg0.flowManager
	if f51_local0.menuInfoStack then
		for f51_local4, f51_local5 in ipairs( f51_local0.menuInfoStack ) do
			if f51_local5.name == f51_arg1 then
				return true
			end
		end
	end
	return false
end

function IsMenuTopmost( f52_arg0, f52_arg1 )
	local f52_local0 = f52_arg0.flowManager
	if f52_local0.menuInfoStack then
		local f52_local1 = f52_local0.menuInfoStack[#f52_local0.menuInfoStack]
		if f52_local1 ~= nil and f52_local1.name == f52_arg1 then
			return true
		end
	end
	return false
end

function GetTopOpenAndVisibleMenuName( f53_arg0 )
	local f53_local0 = nil
	if not f53_arg0 then
		f53_arg0 = Engine.GetLuiRoot()
	end
	if f53_arg0 then
		local f53_local1 = f53_arg0.flowManager
		if f53_local1.menuInfoStack then
			for f53_local5, f53_local6 in ipairs( f53_local1.menuInfoStack ) do
				if f53_local6.name and f53_local6.menu and not f53_local6.isModal then
					f53_local0 = f53_local6.name
				end
			end
		end
	end
	return f53_local0
end

function GetTopOpenAndVisibleMenu( f54_arg0 )
	local f54_local0 = nil
	if not f54_arg0 then
		f54_arg0 = Engine.GetLuiRoot()
	end
	if f54_arg0 then
		local f54_local1 = f54_arg0.flowManager
		if f54_local1.menuInfoStack then
			for f54_local5, f54_local6 in ipairs( f54_local1.menuInfoStack ) do
				if f54_local6.name and f54_local6.menu and not f54_local6.isModal then
					f54_local0 = f54_local6.menu
				end
			end
		end
	end
	return f54_local0
end

function restoreMenuHandler( f55_arg0, f55_arg1 )
	f55_arg0.flowManager:restoreMenu( f55_arg1, f55_arg0 )
	LUI.UIRoot.BlockButtonInput( f55_arg0, false, "restoreMenu" )
	LUI.UIRoot.BlockMouseMove( f55_arg0, false, "restoreMenu" )
end

function restoreMenu( f56_arg0, f56_arg1, f56_arg2 )
	local f56_local0 = f56_arg1.menu
	Engine.SetLuiInUse( true )
	if not IsInStack( f56_arg0, f56_local0 ) then
		return addMenu( f56_arg0, f56_arg1, f56_arg2 )
	end
	local f56_local1 = GetTopMenuInfo( f56_arg0.menuInfoStack, true )
	if f56_local1.name == f56_local0 then
		return f56_local1.menu
	end
	local f56_local2 = nil
	local f56_local3 = false
	for f56_local4 = #f56_arg0.menuInfoStack, 1, -1 do
		local f56_local7 = f56_arg0.menuInfoStack[f56_local4]
		if f56_local7.name ~= f56_local0 then
		
		else
			f56_local2 = f56_local7
			break
		end
		if f56_local7.isPopup then
			f56_local3 = true
		end
		f56_arg0:CloseMenuInfo( f56_local7 )
		f56_arg0:PopMenuInfo( f56_arg0.menuInfoStack[f56_local4] )
	end
	assert( f56_local2 )
	return f56_arg0:RestoreMenuInfo( f56_local2, f56_arg2, f56_local3, f56_arg1 )
end

f0_local2 = function ( f57_arg0, f57_arg1, f57_arg2, f57_arg3 )
	local f57_local0 = f57_arg2.menu
	f57_local0:processEvent( {
		name = "update_navigation",
		dispatchChildren = true
	} )
	f57_local0:processEvent( {
		name = "menu_create",
		dispatchChildren = true,
		controller = f57_arg1
	} )
	if f57_arg2 == f57_arg0.menuInfoStack[#f57_arg0.menuInfoStack] then
		f57_local0:processEvent( {
			name = "gain_focus",
			controller = f57_arg1,
			focusType = FocusType.MenuFlow
		} )
	elseif not f57_arg2.isModal then
		f57_local0:processEvent( {
			name = "popup_active",
			dispatchChildren = true
		} )
	end
end

local f0_local3 = function ( f58_arg0, f58_arg1, f58_arg2 )
	local f58_local0 = f58_arg0.menuInfoStack[#f58_arg0.menuInfoStack]
	if f58_local0 then
		assert( f58_local0 ~= f58_arg1 )
		local f58_local1 = f58_local0.isModal
		if f58_local1 then
			f58_local1 = not f58_arg1.isModal
		end
		if f58_local0.menu and not f58_local1 then
			f58_local0.menu:saveState()
			f58_local0.menu:processEvent( {
				name = "lose_focus",
				immediate = true
			} )
			f58_local0.menu:processEvent( {
				name = "popup_active",
				dispatchChildren = true,
				popup_name = f58_arg2
			} )
		else
			for f58_local2 = #f58_arg0.menuInfoStack, 1, -1 do
				if f58_arg0.menuInfoStack[f58_local2].menu and not f58_arg0.menuInfoStack[f58_local2].isPopup then
					f58_arg0.menuInfoStack[f58_local2].menu:processEvent( {
						name = "popup_active",
						dispatchChildren = true,
						popup_name = f58_arg2
					} )
					break
				end
			end
		end
	end
end

function addMenuHandler( f59_arg0, f59_arg1 )
	f59_arg0.flowManager:addMenu( f59_arg1, f59_arg0 )
	LUI.UIRoot.BlockButtonInput( f59_arg0, false, "addMenu" )
	LUI.UIRoot.BlockMouseMove( f59_arg0, false, "addMenu" )
end

function addMenuAndSetStackHandler( f60_arg0, f60_arg1 )
	f60_arg0.flowManager:addMenu( f60_arg1, f60_arg0 )
	f60_arg0.flowManager:setStack( f60_arg0, f60_arg1 )
	LUI.UIRoot.BlockButtonInput( f60_arg0, false, "addMenu_setStack" )
	LUI.UIRoot.BlockMouseMove( f60_arg0, false, "addMenu_setStack" )
end

function addMenu( f61_arg0, f61_arg1, f61_arg2 )
	local f61_local0 = f61_arg1.menu
	local f61_local1 = IsMenuOpenAndVisible( f61_arg2, f61_local0 )
	local f61_local2 = LUI.MenuBuilder.getPopupData( f61_local0 )
	Engine.SetLuiInUse( true )
	local f61_local3 = nil
	if f61_arg1.exclusiveController then
		DebugPrint( "Setting exclusiveControllerIndex to " .. tostring( f61_arg1.controller ) )
		f61_local3 = f61_arg1.controller
	end
	if f61_local1 and not f61_arg1.reload then
		return 
	end
	local f61_local4 = Engine.GetBytesFree()
	if not f61_local2 then
		f61_arg0:CloseVisibleInStack( f61_arg1.replaceTop )
	end
	local f61_local5 = f0_local1( f61_local0 )
	f61_arg0:SetMenuBuildProps( f61_local5, f61_arg1.data )
	f61_local5.exclusiveControllerIndex = f61_local3
	if f61_local2 then
		f61_local5.isPopup = true
		f61_local5.isModal = true
		if f61_arg1.replaceTop == true then
			DebugPrint( "Replacing top with a modal dialog is not supported!" )
		end
	elseif f61_arg1.replaceTop then
		f61_arg0:PopMenuInfo()
	end
	local f61_local6 = f61_arg0:GetMenuScopedData( f61_local5 )
	local f61_local7 = f61_arg0:GetMenuBuildProps( f61_local5 )
	if f61_local3 then
		f61_local6.exclusiveControllerIndex = f61_local3
	end
	for f61_local11, f61_local12 in pairs( f61_local7 ) do
		f61_local6[f61_local11] = f61_local12
	end
	LUI.ActiveScoped = f61_local6
	if f61_local5.isPopup then
		f0_local3( f61_arg0, f61_local5, f61_local0 )
	end
	f61_arg0:PushMenuInfo( f61_local5 )
	f61_local8 = LUI.MenuBuilder.buildMenu( f61_local0, f61_local7 )
	assert( f61_local8, "Could not build " .. f61_local0 )
	if f61_local2 then
		f61_local8:setPriority( f61_local2.priority )
	end
	f61_local5.menu = f61_local8
	f61_arg0.menuRoot:addElement( f61_local8 )
	tryAddMouseCursor( f61_arg2 )
	f0_local2( f61_arg0, f61_local3, f61_local5, f61_local0 )
	if f61_arg0.debug then
		f61_arg0:printStack()
	end
	f61_local9 = Engine.GetBytesFree()
	if not Engine.BBPrint( "lua_menu_info", "menu_name %s memory_delta_bytes %d init_free_bytes %d post_free_bytes %d in_game %d completed_menu %d", f61_local0, f61_local9 - f61_local4, f61_local4, f61_local9, Engine.InFrontend(), true ) then
		DebugPrint( "Failed to write to blackbox" )
	end
	LUI.ActiveScoped = nil
	return f61_local5.menu
end

function popupMenuHandler( f62_arg0, f62_arg1 )
	assert( f62_arg1.menu )
	if not LUI.MenuBuilder.m_popups[f62_arg1.menu] then
		LUI.MenuBuilder.m_popups[f62_arg1.menu] = {
			priority = LUI.UIRoot.childPriorities.modal
		}
	end
	f62_arg0.flowManager:addMenu( f62_arg1, f62_arg0 )
	LUI.UIRoot.BlockButtonInput( f62_arg0, false, "popupMenu " .. f62_arg1.menu )
	LUI.UIRoot.BlockMouseMove( f62_arg0, false, "popupMenu " .. f62_arg1.menu )
end

function leaveMenuHandler( f63_arg0, f63_arg1 )
	f63_arg0.flowManager:leaveMenu( f63_arg0, f63_arg1 )
	LUI.UIRoot.BlockButtonInput( f63_arg0, false, "leaveMenu" )
	LUI.UIRoot.BlockMouseMove( f63_arg0, false, "leaveMenu" )
end

function leaveMenuByNameHandler( f64_arg0, f64_arg1 )
	RequestLeaveMenuByName( f64_arg1.menu )
	LUI.UIRoot.BlockButtonInput( f64_arg0, false, "leaveMenuByName" )
	LUI.UIRoot.BlockMouseMove( f64_arg0, false, "leaveMenuByName" )
end

function leaveMenu( f65_arg0, f65_arg1, f65_arg2 )
	local f65_local0 = nil
	if f65_arg2.element then
		for f65_local1 = #f65_arg0.menuInfoStack, 1, -1 do
			local f65_local4 = f65_arg0.menuInfoStack[f65_local1]
			if f65_local4.menu and IsElementAChildOf( f65_arg2.element, f65_local4.menu ) then
				f65_local0 = f65_local4
				break
			end
		end
		if not f65_local0 then
			DebugPrint( "Warning: LeaveMenu was called with an element ref, but that element was not found, it is likely the menu was already closed." )
			return nil
		end
	end
	if not f65_local0 and f65_arg2.menu then
		for f65_local1 = #f65_arg0.menuInfoStack, 1, -1 do
			local f65_local4 = f65_arg0.menuInfoStack[f65_local1]
			if f65_local4.name == f65_arg2.menu then
				f65_local0 = f65_local4
				break
			end
		end
		if not f65_local0 then
			DebugPrint( "Warning: LeaveMenu was called with a menu name, but that menu was not found in the stack, it is likely the menu was already closed: " .. f65_arg2.menu )
			return nil
		end
	end
	if not f65_local0 and not f65_arg2.menu and not f65_arg2.element then
		f65_local0 = GetTopMenuInfo( f65_arg0.menuInfoStack, true )
	end
	if not f65_local0 then
		DebugPrint( "WARNING: LeaveMenu failed because the requested menu could not be found or the menu stack is empty." )
		return 
	elseif not f65_local0.isPopup then
		LUI.PreviousMenuName = f65_local0.name
	end
	if f65_local0.menu then
		f65_arg0:CloseMenuInfo( f65_local0 )
	end
	f65_arg0:PopMenuInfo( f65_local0 )
	local f65_local1 = GetTopMenuInfo( f65_arg0.menuInfoStack, f65_local0.isModal )
	local f65_local2 = Engine.SetLuiInUse
	local f65_local3
	if f65_local1 ~= nil then
		f65_local3 = not f65_local1.isOldMenu
	else
		f65_local3 = false
	end
	f65_local2( f65_local3 )
	if f65_local1 then
		if f65_local1.isOldMenu then
			f65_local2 = f65_arg1:getChildById( "mouse_cursor" )
			if f65_local2 then
				f65_local2:close()
			end
		else
			return f65_arg0:RestoreMenuInfo( f65_local1, f65_arg1, f65_local0.isPopup, f65_arg2 )
		end
	end
	f65_local2 = f65_arg1:getChildById( "mouse_cursor" )
	if f65_local2 then
		f65_local2:close()
	end
	return nil
end

function setStackHandler( f66_arg0, f66_arg1 )
	f66_arg0.flowManager:setStack( f66_arg0, f66_arg1 )
end

function setStack( f67_arg0, f67_arg1, f67_arg2 )
	DebugPrint( "FlowManager: Rewriting menu stack " )
	local f67_local0 = GetTopMenuInfo( f67_arg0.menuInfoStack )
	if f67_arg0.debug then
		local f67_local1 = ""
		for f67_local6, f67_local7 in ipairs( f67_arg0.menuInfoStack ) do
			local f67_local8 = f67_local1
			local f67_local5
			if f67_local6 > 1 then
				f67_local5 = " > "
				if not f67_local5 then
				
				else
					f67_local1 = f67_local8 .. f67_local5 .. f67_local7.name
				end
			end
			f67_local5 = ""
		end
		DebugPrint( "    Current stack: " .. f67_local1 )
		f67_local2 = ""
		for f67_local7, f67_local8 in ipairs( f67_arg2.stackData ) do
			local f67_local5 = f67_local2
			local f67_local9
			if f67_local7 > 1 then
				f67_local9 = " > "
				if not f67_local9 then
				
				else
					f67_local2 = f67_local5 .. f67_local9 .. f67_local8.name
				end
			end
			f67_local9 = ""
		end
		DebugPrint( "    Requesting: " .. f67_local2 .. " > " .. f67_local0.name )
	end
	local f67_local1 = 0
	for f67_local6, f67_local7 in ipairs( f67_arg0.menuInfoStack ) do
		if not (not f67_arg2.stackData[f67_local6] or f67_arg2.stackData[f67_local6].name ~= f67_local7.name) or f67_local6 == #f67_arg2.stackData + 1 and f67_local0.name == f67_local7.name then
			f67_local1 = f67_local6
		end
	end
	for f67_local2 = #f67_arg0.menuInfoStack - 1, f67_local1 + 1, -1 do
		if not f67_arg0.menuInfoStack[f67_local2 + 1] or not f67_arg0.menuInfoStack[f67_local2 + 1].isModal then
			f67_arg0:CloseMenuInfo( f67_arg0.menuInfoStack[f67_local2] )
			f67_arg0:PopMenuInfo( f67_arg0.menuInfoStack[f67_local2] )
		end
	end
	for f67_local2 = f67_local1 + 1, #f67_arg2.stackData, 1 do
		f67_local7 = f0_local1( f67_arg2.stackData[f67_local2].name )
		f67_arg0:SetMenuBuildProps( f67_local7, f67_arg2.stackData[f67_local2].data )
		f67_arg0:PushMenuInfo( f67_local7, true )
	end
end

function CheckRestoreFocus( f68_arg0 )
	if f68_arg0.menuInfoStack[#f68_arg0.menuInfoStack] and f68_arg0.menuInfoStack[#f68_arg0.menuInfoStack].menu and not f68_arg0.menuInfoStack[#f68_arg0.menuInfoStack].menu:getFirstInFocus() then
		DebugPrint( "FLowManager: No child in focus, trying to restore focus.  This should probably only happen when using a mouse" )
		f68_arg0.menuInfoStack[#f68_arg0.menuInfoStack].menu:processEvent( {
			name = "gain_focus"
		} )
	end
end

function SaveMenuStack( f69_arg0 )
	local f69_local0 = f69_arg0.flowManager
	local f69_local1 = {}
	if f69_local0.menuInfoStack then
		for f69_local8, f69_local9 in ipairs( f69_local0.menuInfoStack ) do
			local f69_local10 = {}
			for f69_local5, f69_local6 in pairs( f69_local9 ) do
				if f69_local5 == "menu" then
					if f69_local6 then
						f69_local10.menu = true
					else
						f69_local10.menu = false
						goto basicblock_9:
					end
				end
				f69_local10[f69_local5] = f69_local6
			end
			if f69_local0.menuInfoData[f69_local9] and f69_local0.menuInfoData[f69_local9].scopedData then
				DebugPrint( "WARNING: Menu scoped data lost during the debug luiReload process, UI may act inconsistent" )
			end
			f69_local1[#f69_local1 + 1] = f69_local10
		end
	end
	return serialize.persist( {}, f69_local1 )
end

function RestoreMenuStack( f70_arg0, f70_arg1 )
	if f70_arg1 then
		local f70_local0 = f70_arg0.flowManager
		for f70_local7, f70_local8 in ipairs( serialize.unpersist( {}, f70_arg1 ) ) do
			local f70_local9 = f0_local1()
			for f70_local4, f70_local5 in pairs( f70_local8 ) do
				if f70_local4 ~= "menu" then
					f70_local9[f70_local4] = f70_local5
				end
			end
			f70_local0:PushMenuInfo( f70_local9, false )
			if f70_local8.menu then
				if not f70_local8.isOldMenu then
					LUI.ActiveScoped = f70_local0:GetMenuScopedData( f70_local9 )
					f70_local9.menu = LUI.MenuBuilder.buildMenu( f70_local8.name, f70_local0:GetMenuBuildProps( f70_local9 ) )
					f70_local0.menuRoot:addElement( f70_local9.menu )
					f70_local9.menu:processEvent( {
						name = "update_navigation",
						dispatchChildren = true
					} )
					f70_local9.menu:processEvent( {
						name = "menu_create",
						dispatchChildren = true,
						stackRestore = true,
						controller = f70_local9.exclusiveControllerIndex
					} )
					LUI.ActiveScoped = nil
				else
					Engine.SetLuiInUse( false )
					Engine.OpenOldMenu( f70_local8.name )
				end
			end
		end
		f70_local1 = f70_local0.menuInfoStack[#f70_local0.menuInfoStack]
		if f70_local1 and f70_local1.menu then
			Engine.SetLuiInUse( true )
			f70_local1.menu:processEvent( {
				name = "gain_focus"
			} )
			tryAddMouseCursor( f70_arg0 )
		end
	end
end

function BlockInputForDelayedMenuAction()
	LUI.UIRoot.BlockButtonInput( Engine.GetLuiRoot(), true, "BlockInputFordelayedMenuAction" )
	LUI.UIRoot.BlockMouseMove( Engine.GetLuiRoot(), true, "BlockInputFordelayedMenuAction" )
end

function UnblockInputForDelayedMenuAction()
	LUI.UIRoot.BlockButtonInput( Engine.GetLuiRoot(), false, "UnblockInputForDelayedMenuAction" )
	LUI.UIRoot.BlockMouseMove( Engine.GetLuiRoot(), false, "UnblockInputForDelayedMenuAction" )
end

LUI.FlowManager.PushMenuStackToDVar = function ()
	local f73_local0 = Engine.GetLuiRoot()
	f73_local0 = f73_local0.flowManager
	local f73_local1 = ""
	if f73_local0.menuInfoStack then
		for f73_local5, f73_local6 in ipairs( f73_local0.menuInfoStack ) do
			if not f73_local6.isPopup then
				f73_local1 = f73_local1 .. f73_local6.name .. "/"
			end
		end
	end
	Engine.SetDvarString( "ui_loadMenuName", f73_local1 )
end

m_flowEvents = {
	addmenu = addMenuHandler,
	addmenu_setstack = addMenuAndSetStackHandler,
	openOldMenu = openOldMenuHandler,
	popupmenu = popupMenuHandler,
	leavemenu = leaveMenuHandler,
	leavemenubyname = leaveMenuByNameHandler,
	restoreMenu = restoreMenuHandler,
	closeallmenus = closeAllMenusHandler,
	setStack = setStackHandler
}
LockTable( _M )
