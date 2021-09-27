local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
f0_local0 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setUseStencil( true )
	return self
end

f0_local1 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupPopulationMap()
	return self
end

f0_local2 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupLeakyWatermark()
	return self
end

local f0_local3 = function ( menu, controller )
	local self = LUI.UIElement.new( controller.defAnimState )
	local f4_local1 = nil
	if controller then
		f4_local1 = controller.compassType
	end
	self:setupMinimap( f4_local1 )
	return self
end

local f0_local4 = function ( menu, controller )
	local self = LUI.UIElement.new( controller.defAnimState )
	local f5_local1 = nil
	if controller then
		f5_local1 = controller.compassType
	end
	self:setupMinimapIcons( f5_local1 )
	return self
end

local f0_local5 = function ( f6_arg0, f6_arg1 )
	if not LUI.UIElement.setupCompass then
		return LUI.UIImage.new( f6_arg0, f6_arg1 )
	else
		local self = LUI.UIElement.new()
		self:setupCompass()
		return self
	end
end

local f0_local6 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupUIBindText( controller.dataSource, controller.textFormat, controller.param1 or 0 )
	self:setClass( LUI.UIText )
	return self
end

local f0_local7 = function ( menu, controller )
	local self = LUI.UIImage.new()
	self:setupUIBindImage( controller.dataSource, controller.param1 or 0 )
	return self
end

local f0_local8 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupUIIntWatch( controller.dataSource, controller.param1 or 0 )
	return self
end

local f0_local9 = function ( f10_arg0, f10_arg1, f10_arg2 )
	if f10_arg2 and f10_arg2.textStyle then
		f10_arg0:setTextStyle( f10_arg2.textStyle )
	end
end

local f0_local10 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupUIScorebar( controller.dataSource )
	self.m_maxWidth = controller.maxWidth
	self.m_maxScore = controller.maxScore
	return self
end

local f0_local11 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupActionSlot( controller.slot )
	return self
end

local f0_local12 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupWorldBlur()
	return self
end

local f0_local13 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupScreenshotViewer()
	return self
end

local f0_local14 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupTiles( controller.squareSize )
	self:setTileVertically( controller.tileVertically )
	self:setTileHorizontally( controller.tileHorizontally )
	return self
end

local f0_local15 = function ( menu, controller )
	local self = LUI.UIElement.new()
	self:setupScreenshotViewer()
	return self
end

function buildOwnerDraw( menu, controller )
	local self = LUI.UIElement.new( controller.defAnimState )
	self:setupOwnerdraw( controller.ownerDraw, controller.ownerDrawTextScale, controller.ownerDrawTextStyle )
	return self
end

function buildTextEdit( menu, controller )
	local self = LUI.UIElement.new()
	self:setupTextEdit( controller.max_length, controller.password_field )
	return self
end

function buildLoadingDots( menu, controller )
	local self = LUI.UIElement.new()
	if self.setLoadingDots then
		self:setLoadingDots()
	end
	return self
end

function buildContentServerImage( menu, controller )
	local self = LUI.UIElement.new( controller.defAnimState )
	self:setupContentServerImage()
	self.setFileId = function ( f13_arg0, f13_arg1, f13_arg2 )
		f13_arg0.m_fileId = f13_arg1 or ""
		f13_arg0.m_waitingForDownload = true
		f13_arg0.m_thumbName = f13_arg2 or ""
	end
	
	self:setFileId( controller.file_id, controller.thumbName )
	return self
end

function buildEntityContainer( menu, controller )
	local self = LUI.UIElement.new()
	local f21_local1 = -1
	local f21_local2 = 0
	local f21_local3 = 0
	local f21_local4 = 0
	if controller.entityNum then
		f21_local1 = controller.entityNum
	end
	if controller.offsetX then
		f21_local2 = controller.offsetX
	end
	if controller.offsetY then
		f21_local3 = controller.offsetY
	end
	if controller.offsetZ then
		f21_local4 = controller.offsetZ
	end
	if controller.tag then
		self:setupEntityContainer( f21_local1, f21_local2, f21_local3, f21_local4, controller.tag )
	else
		self:setupEntityContainer( f21_local1, f21_local2, f21_local3, f21_local4 )
	end
	if controller.clampToEdge then
		self:setEntityContainerClamp( true )
	end
	if controller.scaleWithDistance then
		self:setEntityContainerScale( true )
	end
	if controller.transferRotation then
		local f21_local5 = 0
		local f21_local6 = 0
		local f21_local7 = 0
		if controller.pitchOffset then
			f21_local5 = controller.pitchOffset
		end
		if controller.yawOffset then
			f21_local6 = controller.yawOffset
		end
		if controller.rollOffset then
			f21_local7 = controller.rollOffset
		end
		self:setEntityContainerTransferRotation( true, f21_local5, f21_local6, f21_local7 )
	end
	return self
end

m_types_build = {
	UIElement = LUI.UIElement.build,
	UIText = LUI.UIText.build,
	UIBindText = f0_local6,
	UIBindImage = f0_local7,
	UIIntWatch = f0_local8,
	UIImage = LUI.UIImage.build,
	UILitImage = LUI.UILitImage.build,
	UIButton = LUI.UIButton.build,
	UITimer = LUI.UITimer.build,
	UIStencil = f0_local0,
	UIVerticalList = LUI.UIVerticalList.build,
	UIVerticalScrollbar = LUI.UIVerticalScrollbar.build,
	UIHorizontalList = LUI.UIHorizontalList.build,
	UIHorizontalSlideList = LUI.UIHorizontalSlideList.build,
	UIBarrelList = LUI.UIBarrelList.build,
	UIGrid = LUI.UIGrid.build,
	UIVerticalNavigator = LUI.UIVerticalNavigator.build,
	UIHorizontalNavigator = LUI.UIHorizontalNavigator.build,
	UIHorizontalAlignGroup = LUI.UIHorizontalAlignGroup.build,
	UICountdown = LUI.UICountdown.build,
	UILongCountdown = LUI.UILongCountdown.build,
	UITechyDigits = LUI.UITechyDigits.build,
	UIBindButton = LUI.UIBindButton.build,
	UILoadingDots = buildLoadingDots,
	UIBackgroundPanel = LUI.UIBackgroundPanel.build,
	UIScrollIndicator = LUI.UIScrollIndicator.build,
	UIBorder = LUI.UIBorder.build,
	UILine = LUI.UILine.build,
	UIProgressBar = LUI.UIProgressBar.build,
	UIPopulationMap = f0_local1,
	UILeakyWatermark = f0_local2,
	UIMinimap = f0_local3,
	UIMinimapIcons = f0_local4,
	UICompass = f0_local5,
	UIScorebar = f0_local10,
	UIWorldBlur = f0_local12,
	UISafeAreaOverlay = LUI.UISafeAreaOverlay.new,
	UIActionSlot = f0_local11,
	UIScreenshotViewer = f0_local13,
	UICharacterWindow = LUI.UICharacterWindow.build,
	UIOwnerdraw = buildOwnerDraw,
	UITextEdit = buildTextEdit,
	UITiledImage = f0_local14,
	UIEntityContainer = buildEntityContainer,
	ContentServerImage = buildContentServerImage
}
m_types_postbuild = {
	UIText = LUI.UIText.postbuild,
	UICountdown = LUI.UICountdown.postbuild,
	UIBindText = f0_local9,
	UIButton = LUI.UIButton.postbuild,
	UIGenericButton = LUI.UIButton.postbuild
}
m_popups = {}
m_definitions = {}
m_debugData = {
	lastRequestedMenu = {},
	currentDef = {},
	definitionStack = {}
}
baseAssert = assert
local f0_local16 = function ( f22_arg0, f22_arg1 )
	m_debugData.currentDef = f22_arg0
	m_debugData.definitionStack[#m_debugData.definitionStack + 1] = {
		type = f22_arg0.type,
		id = f22_arg0.id,
		childNum = f22_arg1
	}
end

local f0_local17 = function ()
	m_debugData.definitionStack[#m_debugData.definitionStack] = nil
end

local f0_local18 = function ()
	for f24_local4, f24_local5 in ipairs( m_debugData.definitionStack ) do
		local f24_local3 = f24_local4 .. ") type: " .. f24_local5.type
		if f24_local5.id then
			f24_local3 = f24_local3 .. " id: " .. f24_local5.id
		end
		if f24_local5.childNum then
			f24_local3 = f24_local3 .. " childNum: " .. f24_local5.childNum
		end
		DebugPrint( f24_local3 )
	end
	DebugPrint( "Current itemDef: " )
	defPrint( m_debugData.currentDef )
end

local f0_local19 = function ( f25_arg0, f25_arg1, ... )
	if not f25_arg0 then
		if type( f25_arg1 ) == "string" then
			DebugPrint( "Error: " .. string.format( f25_arg1, ... ) )
		end
		DebugPrint( "Error Making Menu: " .. tostring( m_debugData.lastRequestedMenu[#m_debugData.lastRequestedMenu] ) )
		f0_local18()
		if type( f25_arg1 ) == "string" then
			baseAssert( f25_arg0, "Assert : " .. f25_arg1, ... )
		else
			baseAssert( f25_arg0, ... )
		end
	end
end

function defPrint( f26_arg0, f26_arg1 )
	if not f26_arg1 then
		f26_arg1 = 0
	end
	for f26_local4, f26_local5 in pairs( f26_arg0 ) do
		local f26_local6 = string.rep( "  ", f26_arg1 ) .. f26_local4 .. ": "
		if type( f26_local5 ) == "table" then
			DebugPrint( f26_local6 )
			defPrint( f26_local5, f26_arg1 + 1 )
		else
			DebugPrint( f26_local6 .. tostring( f26_local5 ) )
		end
		local f26_local3 = getmetatable( f26_arg0 )
		if f26_local3 and f26_local3.__index then
			DebugPrint( f26_local6 .. "__index" )
			defPrint( f26_local3.__index, f26_arg1 + 1 )
		end
	end
end

assert = f0_local19
function registerDef( f27_arg0, f27_arg1 )
	assert( m_definitions[f27_arg0] == nil, "This type has already been registered! " .. f27_arg0 )
	assert( m_types_build[f27_arg0] == nil, "This type is a basic element type that has been registered! " .. f27_arg0 )
	assert( type( f27_arg1 ) == "function", "Attempting to register old style type definition!  See wiki for info on how to update your def.  def = " .. f27_arg0 )
	m_definitions[f27_arg0] = f27_arg1
end

function registerPopupDef( f28_arg0, f28_arg1, f28_arg2, f28_arg3 )
	assert( m_popups[f28_arg0] == nil, "This popup has already been registered! " .. f28_arg0 )
	m_popups[f28_arg0] = {
		priority = f28_arg2 or LUI.UIRoot.childPriorities.modal,
		immediateProcessing = not f28_arg3
	}
	registerDef( f28_arg0, f28_arg1 )
end

function registerType( f29_arg0, f29_arg1 )
	assert( m_definitions[f29_arg0] == nil, "This type has already been registered! " .. f29_arg0 )
	assert( m_types_build[f29_arg0] == nil, "This type is a basic element type that has been registered! " .. f29_arg0 )
	assert( type( f29_arg1 ) == "function", "The buildFunction for this type is not a function!  typeName = " .. f29_arg0 )
	m_types_build[f29_arg0] = f29_arg1
end

function registerPopupType( f30_arg0, f30_arg1, f30_arg2, f30_arg3 )
	assert( m_popups[f30_arg0] == nil, "This popup has already been registered! " .. f30_arg0 )
	m_popups[f30_arg0] = {
		priority = f30_arg2 or LUI.UIRoot.childPriorities.modal,
		immediateProcessing = not f30_arg3
	}
	registerType( f30_arg0, f30_arg1 )
end

function isDefRegistered( f31_arg0 )
	return m_definitions[f31_arg0] ~= nil
end

function getPopupData( f32_arg0 )
	return m_popups[f32_arg0]
end

g_keyWordList = hashset( {
	"properties",
	"children",
	"childrenFeeder",
	"states",
	"id",
	"type",
	"handlers"
} )
function validateName( f33_arg0 )
	if g_keyWordList[f33_arg0] then
		assert( false, "It appears that you are using the keyword '" .. f33_arg0 .. "' as a member name, are you sure this is set up correctly?" )
	end
end

function prepareStates( f34_arg0, f34_arg1, f34_arg2, f34_arg3, f34_arg4 )
	if f34_arg1.states then
		assert( f34_arg1.states.default, "No default state provided for element definition" )
		for f34_local3, f34_local4 in pairs( f34_arg1.states ) do
			validateName( f34_local3 )
			f34_local4 = LUI.UIElement.buildState( f34_local4, f34_arg1, f34_arg2 )
			if f34_arg1.debug or f34_arg2 and f34_arg2.debug then
				DebugPrint( "Printing out formatted state:" )
				defPrint( builtState )
			end
			f34_arg0:registerAnimationState( f34_local3, f34_local4 )
			if not (f34_local3 ~= "default" or f34_arg3 and f34_arg4) or f34_local4.animateOnRefresh then
				f34_arg0:animateToStateInC( f34_local3 )
			end
		end
	end
end

function prepareStatesNew( f35_arg0, f35_arg1, f35_arg2, f35_arg3, f35_arg4 )
	if f35_arg1.states then
		f35_arg0.states = {}
		assert( f35_arg1.states.default, "No default state provided for element definition" )
		for f35_local4, f35_local3 in pairs( f35_arg1.states ) do
			validateName( f35_local4 )
			if not (f35_local4 ~= "default" or f35_arg3 and f35_arg4) or f35_local3.animateOnRefresh then
				f35_local3 = LUI.UIElement.buildState( f35_local3, f35_arg1, f35_arg2 )
				if f35_arg1.debug or f35_arg2 and f35_arg2.debug then
					DebugPrint( "Printing out formatted state:" )
					defPrint( builtState )
				end
				f35_arg0:registerAnimationState( f35_local4, f35_local3 )
				f35_arg0:animateToStateInC( f35_local4 )
			end
			f35_arg0.states[f35_local4] = f35_local3
		end
	end
end

function buildChildren( f36_arg0, f36_arg1, f36_arg2, f36_arg3 )
	assert( not f36_arg2.type, "It appears that the children list is not a list but instead is a single element definition." )
	for f36_local3, f36_local4 in ipairs( f36_arg2 ) do
		local f36_local5 = buildItems( f36_local4, f36_arg1, f36_arg0, f36_local3, f36_arg3 )
		f36_local5:close()
		f36_arg0:addElement( f36_local5 )
	end
	f36_arg0:processEvent( {
		name = "update_navigation"
	} )
end

local f0_local20 = function ( f37_arg0, f37_arg1 )
	if type( f37_arg0 ) == "table" and f37_arg0.isProperty then
		return f37_arg0.func( f37_arg1 )
	else
		return f37_arg0
	end
end

function buildItems( f38_arg0, f38_arg1, f38_arg2, f38_arg3, f38_arg4 )
	assert( f38_arg0.type, "No type in itemDef!" )
	f0_local16( f38_arg0, f38_arg3 )
	Memory.CheckLow()
	local f38_local0 = f38_arg4 or f38_arg0.disabled
	if m_definitions[f38_arg0.type] then
		local f38_local1 = nil
		if type( m_definitions[f38_arg0.type] ) == "function" then
			f38_local1 = m_definitions[f38_arg0.type]()
		else
			f38_local1 = m_definitions[f38_arg0.type]
		end
		f38_arg0.type = nil
		if not f38_local1.properties then
			f38_local1.properties = {}
		end
		if f38_arg0.properties and f38_local1.properties then
			for f38_local5, f38_local6 in pairs( f38_arg0.properties ) do
				validateName( f38_local5 )
				f38_local1.properties[f38_local5] = f38_local6
			end
			f38_arg0.properties = nil
		end
		for f38_local5, f38_local6 in pairs( f38_arg0 ) do
			f38_local1[f38_local5] = f38_local6
		end
		f38_local2 = buildItems( f38_local1, f38_arg1, f38_arg2, f38_local0 )
		if f38_local2 and f38_local2.properties then
			f38_local2.m_ownerController = f38_local2.properties.exclusiveController
		end
		f0_local17()
		return f38_local2
	else
		assert( m_types_build[f38_arg0.type], "Unknown type for element definition: " .. f38_arg0.type )
		local f38_local1 = f38_arg0.properties or f38_arg1
		if f38_local1 then
			for f38_local5, f38_local6 in pairs( f38_local1 ) do
				validateName( f38_local5 )
				if type( f38_local6 ) == "table" and f38_local6.isProperty then
					f38_local1[f38_local5] = f38_local6.func( f38_arg1 )
				end
			end
		end
		local f38_local2 = nil
		local f38_local3 = true
		if f38_arg2 and f38_arg0.id then
			f38_local2 = f38_arg2:getChildById( f38_arg0.id )
		end
		if not f38_local2 then
			f38_local3 = false
			f38_local2 = m_types_build[f38_arg0.type]( f38_arg0, f38_local1, f38_arg3 )
			assert( f38_local2, "registerType " .. f38_arg0.type .. " must return a UI Element." )
		end
		f38_local2._marked = true
		f38_local2._fromMenuBuilder = true
		f38_local2._isRefresh = f38_local3
		if f38_arg1 and f38_arg1.exclusiveController and not f38_local1.exclusiveController then
			f38_local1.exclusiveController = f38_arg1.exclusiveController
		end
		if f38_local1 then
			f38_local2.m_ownerController = f38_local1.exclusiveController
		end
		if not (not f38_local1 or not f38_local1.debug) or f38_arg0.debug then
			DebugPrint( "Printing out item Props:" )
			defPrint( f38_local1 )
			DebugPrint( "Printing out item Def:" )
			defPrint( f38_arg0 )
			f38_local1.debug = nil
			f38_arg0.debug = nil
		end
		if f38_arg0.focusable == true or f38_arg0.focusable == nil and f38_local2.focusable then
			f38_local2:makeFocusable()
		elseif f38_arg0.focusable == false then
			f38_local2:makeNotFocusable()
		end
		if f38_arg0.handleMouseMove == false then
			f38_local2:setHandleMouseMove( false )
		end
		if f38_arg0.handleMouseButton == false then
			f38_local2:setHandleMouseButton( false )
		end
		if f38_arg0.ignoreMouseFocus then
			f38_local2:makeFocusable()
			f38_local2.m_ignoreMouseFocus = true
		end
		if f38_arg0.useGameTime ~= nil then
			f38_local2:setUseGameTime( f38_arg0.useGameTime )
		end
		f38_local2.m_outsideParentList = f38_local2.m_outsideParentList or false
		f38_local2.m_requireFocusType = f38_arg0.requireFocusType
		if f38_arg0.childrenFeeder then
			local f38_local4 = f38_arg0.childrenFeeder
			if type( f38_local4 ) == "table" and f38_local4.isProperty then
				f38_local4 = f38_arg0.childrenFeeder.func( f38_local1 )
			end
			assert( type( f38_local4 ) == "function", "Feeders must be a function or referenced by the MBh.Property helper" )
			f38_arg0.children = f38_local4( f38_local1 )
			f38_local2.childrenFeeder = f38_local4
			f38_local2:registerEventHandler( "menu_refresh", HandleMenuRefresh )
		end
		if f38_arg0.children then
			for f38_local7, f38_local8 in ipairs( f38_arg0.children ) do
				if f38_local8.disabledFunc then
					f38_local2:registerEventHandler( "menu_refresh", HandleMenuRefresh )
					f38_local2.children = f38_arg0.children
					break
				end
			end
		end
		if f38_arg0.id then
			f38_local2.id = f38_arg0.id
		end
		if f38_arg0.listDefaultFocus then
			f38_local2.listDefaultFocus = true
		end
		assert( not f38_arg0.additionalHandlers, "The additional_handlers must be specified inside the 'properties' tables, not in the main definition" )
		prepareStates( f38_local2, f38_arg0, f38_local1, f38_local3, f38_local0 )
		if f38_arg0.handlers then
			for f38_local7, f38_local8 in pairs( f38_arg0.handlers ) do
				if f38_local7 == "omnvar_update" then
					assert( type( f38_local8 ) == "table", "omnvar_update should be a table of handlers for specific omnvars" )
					local f38_local9 = f38_local2:getRootParent()
					f38_local9 = f38_local9.eventCatcher
					for f38_local13, f38_local14 in pairs( f38_local8 ) do
						f38_local9:registerOmnvarHandler( f38_local2, f38_local13, f0_local20( f38_local14, f38_local1 ) )
					end
				end
				if f38_local7 == "dvar_update" then
					assert( type( f38_local8 ) == "table", "dvar_update should be a table of handlers for specific dvars" )
					local f38_local9 = f38_local2:getRootParent()
					f38_local9 = f38_local9.eventCatcher
					for f38_local13, f38_local14 in pairs( f38_local8 ) do
						f38_local9:registerDvarHandler( f38_local2, f38_local13, f0_local20( f38_local14, f38_local1 ) )
					end
				end
				f38_local2:registerEventHandler( f38_local7, f0_local20( f38_local8, f38_local1 ) )
			end
		else
			f38_arg0.handlers = {}
		end
		if f38_local1 and f38_local1.additional_handlers then
			assert( not f38_local1.additional_handlers.omnvar_update, "Omnvar_update events don't support being an 'additional_handler'" )
			assert( not f38_local1.additional_handlers.dvar_update, "Dvar_update events don't support being an 'additional_handler'" )
			for f38_local7, f38_local8 in pairs( f38_local1.additional_handlers ) do
				if not (not f38_local3 or not f38_arg0.handlers[f38_local7]) or not f38_local3 then
					f38_local2:addEventHandler( f38_local7, f38_local8 )
				end
			end
			f38_local1.additional_handlers = nil
		end
		f38_local2.properties = f38_local1
		if f38_arg0.children then
			buildChildren( f38_local2, f38_local1, f38_arg0.children, f38_local0 )
		end
		if f38_local2.disabledStateChange then
			if f38_local2.disabled then
				f38_local2:processEvent( {
					name = "disable"
				} )
			else
				f38_local2:processEvent( {
					name = "enable"
				} )
			end
		end
		if f38_local2.locked then
			f38_local2:processEvent( {
				name = "lock"
			} )
		end
		if f38_arg0.isSignInMenu then
			f38_local2.isSignInMenu = f38_arg0.isSignInMenu
		end
		if m_types_postbuild[f38_arg0.type] ~= nil then
			m_types_postbuild[f38_arg0.type]( f38_local2, f38_arg0, f38_local1 )
		end
		f0_local17()
		return f38_local2
	end
end

function buildMenu( f39_arg0, f39_arg1 )
	m_debugData.lastRequestedMenu[#m_debugData.lastRequestedMenu + 1] = f39_arg0
	m_debugData.definitionStack = {}
	if not f39_arg1 then
		f39_arg1 = {}
	end
	local f39_local0 = buildItems( {
		type = f39_arg0,
		properties = f39_arg1
	}, {}, nil )
	m_debugData.lastRequestedMenu[#m_debugData.lastRequestedMenu] = nil
	return f39_local0
end

function unmarkChildren( f40_arg0 )
	local f40_local0 = f40_arg0:getFirstChild()
	while f40_local0 ~= nil do
		local f40_local1 = f40_local0:getNextSibling()
		f40_local0._marked = false
		unmarkChildren( f40_local0 )
		f40_local0 = f40_local1
	end
end

function closeUnmarkedChildren( f41_arg0 )
	local f41_local0 = f41_arg0:getFirstChild()
	while f41_local0 ~= nil do
		local f41_local1 = f41_local0:getNextSibling()
		if f41_local0._fromMenuBuilder and not f41_local0._marked then
			f41_local0:close()
		else
			closeUnmarkedChildren( f41_local0 )
		end
		f41_local0 = f41_local1
	end
end

function HandleMenuRefresh( f42_arg0, f42_arg1 )
	m_debugData.lastRequestedMenu[#m_debugData.lastRequestedMenu + 1] = f42_arg0.builtByNewBuilder
	unmarkChildren( f42_arg0 )
	local f42_local0 = f42_arg0.children
	if f42_arg0.childrenFeeder then
		f42_local0 = f42_arg0.childrenFeeder( f42_arg0.properties )
	end
	local f42_local1 = f42_arg0:getAllFocusedChildren()
	if #f42_local1 > 0 then
		f42_arg0:saveState()
	end
	m_debugData.definitionStack = {}
	buildChildren( f42_arg0, f42_arg0.properties, f42_local0 )
	closeUnmarkedChildren( f42_arg0 )
	if #f42_local1 > 0 then
		local f42_local2, f42_local3 = f42_arg0:restoreState( true )
		if f42_local3 == 0 then
			f42_arg0:clearSavedState()
			f42_arg0:processEvent( {
				name = "gain_focus"
			} )
		end
	end
	f42_arg0:processEvent( {
		name = "element_refresh",
		dispatchChildren = true
	} )
	m_debugData.lastRequestedMenu[#m_debugData.lastRequestedMenu] = nil
end

function BuildAddChild( f43_arg0, f43_arg1 )
	local f43_local0 = nil
	if type( f43_arg1 ) == "table" then
		f43_local0 = buildItems( f43_arg1, f43_arg0.properties or {}, f43_arg0 )
	else
		f43_local0 = f43_arg1
	end
	f43_arg0:addElement( f43_local0 )
	return f43_local0
end

function BuildRegisteredType( f44_arg0, f44_arg1 )
	assert( type( f44_arg0 ) == "string" )
	assert( m_types_build[f44_arg0], "Could not find a constructor for " .. f44_arg0 .. "." .. (m_definitions[f44_arg0] and " Use 'LUI.MenuBuilder.BuildAddChild' to build elements registered using the deprecated MenuBuilder" or "") )
	return m_types_build[f44_arg0]( nil, f44_arg1 )
end

function AnimStateBasedOn( f45_arg0, f45_arg1 )
	return setmetatable( f45_arg1, {
		__index = f45_arg0
	} )
end

LockTable( _M )
