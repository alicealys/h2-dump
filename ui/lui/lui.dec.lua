LUI = {
	roots = {},
	createMenu = {},
	Alignment = {
		None = 0,
		Left = 1,
		Center = 2,
		Right = 3,
		Top = 4,
		Middle = 5,
		Bottom = 6
	},
	HorizontalAlignment = {
		None = 0,
		Left = 1,
		Center = 2,
		Right = 3,
		Full = 4,
		RTL_ForcedLeft = 5
	},
	VerticalAlignment = {
		None = 0,
		Top = 1,
		Middle = 2,
		Bottom = 3,
		Full = 4,
		BottomInMiddle = 5
	},
	AutoScroll = {
		None = 0,
		AnchoredEdges = 1,
		FixedFocus = 2,
		FixedFocusNoWrap = 3
	},
	GlowState = {
		None = 0,
		Blue = 1,
		Orange = 2,
		LightRed = 3,
		LightGreen = 4,
		ElementColor = 5
	},
	Easing = {
		Linear = 0,
		InQuadratic = 1,
		OutQuadratic = 2,
		InOutQuadratic = 3,
		InCubic = 4,
		OutCubic = 5,
		InOutCubic = 6,
		InQuartic = 7,
		OutQuartic = 8,
		InOutQuartic = 9,
		InQuintic = 10,
		OutQuintic = 11,
		InOutQuintic = 12,
		InSine = 13,
		OutSine = 14,
		InOutSine = 15,
		InBack = 16,
		OutBack = 17,
		InOutBack = 18,
		OutElasticLight = 19,
		OutElasticMedium = 20,
		OutElasticHeavy = 21,
		OutElasticDrastic = 22,
		Snap = 23
	},
	savedMenuStates = {},
	floatingFocus = {
		x = nil,
		y = nil
	},
	ActiveScoped = nil,
	PreviousMenuName = nil,
	CachedEvents = {
		process_events = {
			name = "process_events",
			immediate = true
		},
		transition_complete = {
			name = "transistion_complete_default",
			lateness = 0
		},
		gamepad_button = {
			name = "gamepad_button",
			controller = 0,
			button = "primary",
			down = true,
			immediate = true
		}
	}
}
if nil ~= hpairs then
	pairs = hpairs
end
function InheritFrom( f1_arg0 )
	if not f1_arg0 then
		error( "LUI Error: Did not specify base class in InheritFrom!" )
	end
	local f1_local0 = {}
	setmetatable( f1_local0, {
		__index = f1_arg0
	} )
	f1_local0.m_eventHandlers = {}
	setmetatable( f1_local0.m_eventHandlers, {
		__index = f1_arg0.m_eventHandlers
	} )
	return f1_local0
end

LUI.AccessorInternal = function ( f2_arg0, f2_arg1 )
	if type( f2_arg0 ) == "table" and f2_arg0.isProperty == true then
		assert( not f2_arg0.isBeingDereferenced, "Circular property reference!" )
		f2_arg0.isBeingDereferenced = true
		local f2_local0 = LUI.AccessorInternal( f2_arg0.func( f2_arg1 ), f2_arg1 )
		f2_arg0.isBeingDereferenced = nil
		return f2_local0
	else
		return f2_arg0
	end
end

LUI.Accessor = function ( f3_arg0 )
	local f3_local0 = f3_arg0
	return function ( f4_arg0, f4_arg1 )
		return LUI.AccessorInternal( f3_local0[f4_arg1], f4_arg0 )
	end
	
end

LUI.Mutator = function ( f5_arg0 )
	local f5_local0 = f5_arg0
	return function ( f6_arg0, f6_arg1, f6_arg2 )
		f5_local0[f6_arg1] = f6_arg2
	end
	
end

LUI.InheritCopy = function ( f7_arg0, f7_arg1, f7_arg2 )
	for f7_local3, f7_local4 in pairs( f7_arg1 ) do
		if f7_arg0[f7_local3] == nil then
			f7_arg0[f7_local3] = f7_local4
		end
		if f7_arg2 and type( f7_arg0[f7_local3] ) == "table" and type( f7_local4 ) == "table" then
			LUI.InheritCopy( f7_arg0[f7_local3], f7_local4, f7_arg2 )
		end
	end
	f7_local0 = getmetatable( f7_arg1 )
	if f7_local0 and f7_local0.debugReference then
		for f7_local4, f7_local5 in pairs( f7_local0.debugReference ) do
			if not f7_arg0[f7_local4] then
				f7_arg0[f7_local4] = f7_local5
			end
		end
	end
end

LUI.InheritProxy = function ( f8_arg0 )
	local f8_local0 = {}
	setmetatable( f8_local0, {
		__index = LUI.Accessor( f8_arg0 ),
		__newindex = LUI.Mutator( f8_arg0 ),
		debugReference = f8_arg0
	} )
	return f8_local0
end

LUI.ShallowCopy = function ( f9_arg0 )
	local f9_local0 = {}
	for f9_local4, f9_local5 in pairs( f9_arg0 ) do
		f9_local0[f9_local4] = f9_local5
	end
	return f9_local0
end

LUI.DeepCopy = function ( f10_arg0 )
	if type( f10_arg0 ) == "function" then
		return f10_arg0
	elseif type( f10_arg0 ) == "table" then
		local f10_local0 = {}
		for f10_local4, f10_local5 in pairs( f10_arg0 ) do
			f10_local0[f10_local4] = LUI.DeepCopy( f10_local5 )
		end
		return f10_local0
	end
	return f10_arg0
end

LUI.Append = function ( f11_arg0 )
	if f11_arg0 then
		for f11_local6, f11_local7 in ipairs( REG1 ) do
			for f11_local3, f11_local4 in pairs( f11_local7 ) do
				f11_arg0[f11_local3] = f11_local4
			end
		end
	end
	return f11_arg0
end

LUI.Merge = function ( ... )
	return LUI.Append( {}, ... )
end

LUI.ConcatenateToTable = function ( f13_arg0, f13_arg1 )
	if f13_arg1 == nil then
		return 
	end
	for f13_local3, f13_local4 in ipairs( f13_arg1 ) do
		table.insert( f13_arg0, f13_local4 )
	end
end

LUI.clamp = function ( f14_arg0, f14_arg1, f14_arg2 )
	if f14_arg0 < f14_arg1 then
		return f14_arg1
	elseif f14_arg2 < f14_arg0 then
		return f14_arg2
	else
		return f14_arg0
	end
end

LUI.Debug = {}
LUI.Debug.DimensionsAsString = function ( f15_arg0 )
	return "(" .. f15_arg0.left .. ", " .. f15_arg0.top .. ", " .. f15_arg0.right .. ", " .. f15_arg0.bottom .. ")"
end

LUI.FormatAnimStateFinishEvent = function ( f16_arg0 )
	return "transition_complete_" .. f16_arg0
end

LUI.FormatAnimStateFinishStepEvent = function ( f17_arg0 )
	return "transition_step_complete_" .. f17_arg0
end

function LockTable( f18_arg0 )
	local f18_local0 = getmetatable( f18_arg0 )
	if not f18_local0 then
		f18_local0 = {}
		setmetatable( f18_arg0, f18_local0 )
	end
	f18_local0.__newindex = function ( f19_arg0, f19_arg1, f19_arg2 )
		error( "LUI Error: Tried to create module variable " .. f19_arg1, 2 )
	end
	
end

require( "LUI.MenuBuilderHelpers" )
MBh = LUI.MenuBuilderHelpers.helpers
require( "LUI.LUIElement" )
require( "LUI.LUIRoot" )
require( "LUI.LUITimer" )
require( "LUI.LUIButtonRepeater" )
require( "LUI.LUIImage" )
require( "LUI.LUILitImage" )
require( "LUI.LUIBorder" )
require( "LUI.LUILine" )
require( "LUI.LUIText" )
require( "LUI.LUIAnimNumber" )
require( "LUI.LUIButton" )
require( "LUI.LUIBindButton" )
require( "LUI.LUIMouseCursor" )
require( "LUI.LUIVerticalList" )
require( "LUI.LUIHorizontalList" )
require( "LUI.LUIHorizontalSlideList" )
require( "LUI.LUIBarrelList" )
require( "LUI.LUIGrid" )
require( "LUI.LUIProgressBar" )
require( "LUI.LUIScrollable" )
require( "LUI.LUIScrollbarHelper" )
require( "LUI.LUIVerticalScrollbar" )
require( "LUI.LUIHorizontalScrollbar" )
require( "LUI.LUISafeAreaOverlay" )
require( "LUI.LUICountdown" )
require( "LUI.LUILongCountdown" )
require( "LUI.LUITechyDigits" )
require( "LUI.LUICharacterWindow" )
require( "LUI.LUIBackgroundPanel" )
require( "LUI.LUIScrollIndicator" )
require( "LUI.FlowManager" )
require( "LUI.HudManager" )
require( "LUI.MenuBuilder" )
require( "LUI.LUIMarqueeText" )
require( "LUI.LUIStencilText" )
require( "LUI.ComScore" )
if nil ~= debug then
	debug.postdeploymentfunction = function ()
		for f20_local3, f20_local4 in pairs( LUI.roots ) do
			f20_local4.debugReload = true
		end
	end
	
end
LargestElements = {}
LargestElementsSize = {}
LargestElementsCount = {}
function CountFieldsHelper( f21_arg0, f21_arg1 )
	if f21_arg1[f21_arg0] then
		return 
	end
	f21_arg1[f21_arg0] = true
	local f21_local0 = 0
	for f21_local4, f21_local5 in pairs( f21_arg0 ) do
		if type( f21_local4 ) == "table" then
			f21_local0 = f21_local0 + CountFieldsHelper( f21_local4, f21_arg1 )
		end
		f21_local0 = f21_local0 + 1
	end
	return f21_local0
end

function CountFields( f22_arg0 )
	return CountFieldsHelper( f22_arg0, {} )
end

function CountReferencesHelper( f23_arg0, f23_arg1 )
	if f23_arg1[f23_arg0] then
		return 
	end
	f23_arg1[f23_arg0] = true
	if type( f23_arg0 ) == "userdata" then
		local f23_local0 = getmetatable( f23_arg0 )
		if not f23_local0 then
			return 
		end
		f23_arg0 = f23_local0.__index
		if not f23_arg0 then
			return 
		elseif type( f23_arg0 ) == "table" and f23_arg0.id then
			local f23_local1 = CountFields( f23_arg0 )
			if not LargestElementsSize[f23_arg0.id] or LargestElementsSize[f23_arg0.id] < f23_local1 then
				LargestElements[f23_arg0.id] = f23_arg0
				LargestElementsSize[f23_arg0.id] = f23_local1
			end
			if not LargestElementsCount[f23_arg0.id] then
				LargestElementsCount[f23_arg0.id] = 0
			end
			LargestElementsCount[f23_arg0.id] = LargestElementsCount[f23_arg0.id] + 1
		end
	end
	if type( f23_arg0 ) ~= "table" then
		return 
	end
	for f23_local3, f23_local4 in pairs( f23_arg0 ) do
		CountReferencesHelper( f23_local4, f23_arg1 )
	end
end

function CountReferences( f24_arg0 )
	local f24_local0 = {
		[f24_arg0] = true
	}
	if type( f24_arg0 ) == "userdata" then
		local f24_local1 = getmetatable( f24_arg0 )
		if not f24_local1 then
			return 0
		end
		f24_arg0 = f24_local1.__index
		if not f24_arg0 then
			return 0
		end
	end
	if type( f24_arg0 ) ~= "table" then
		return 0
	end
	for f24_local4, f24_local5 in pairs( f24_arg0 ) do
		CountReferencesHelper( f24_local5, f24_local0 )
	end
	f24_local1 = 0
	for f24_local5, f24_local6 in pairs( f24_local0 ) do
		f24_local1 = f24_local1 + 1
	end
	return f24_local1
end

function EnableGlobals()
	local f25_local0 = getmetatable( _G )
	if not f25_local0 then
		f25_local0 = {}
		setmetatable( _G, f25_local0 )
	end
	f25_local0.__newindex = nil
end

function DisableGlobals()
	local f26_local0 = getmetatable( _G )
	if not f26_local0 then
		f26_local0 = {}
		setmetatable( _G, f26_local0 )
	end
	f26_local0.__newindex = function ( f27_arg0, f27_arg1, f27_arg2 )
		error( "LUI Error: Tried to create global variable " .. f27_arg1, 2 )
	end
	
end

function LUITestFunction()
	DebugPrint( "Running LUITestFunction()" )
end

if not Engine.IsDevelopmentBuild() then
	function print()
		
	end
	
	function printf()
		
	end
	
end
function FormatTimeMinutesSeconds( f31_arg0 )
	local f31_local0 = math.floor( f31_arg0 / 60 )
	return string.format( "%02d:%02d", f31_local0, f31_arg0 - f31_local0 * 60 )
end

LUI.AdjustAlignmentForLanguage = function ( f32_arg0 )
	if Engine.IsRightToLeftLanguage() then
		if f32_arg0 == LUI.Alignment.Left then
			f32_arg0 = LUI.Alignment.Right
		elseif f32_arg0 == LUI.Alignment.Right then
			f32_arg0 = LUI.Alignment.Left
		end
	end
	return f32_arg0
end

LUI.Round = function ( f33_arg0 )
	return math.floor( f33_arg0 + 0.5 )
end

LUI.StringSplit = function ( f34_arg0, f34_arg1 )
	local f34_local0 = {}
	local f34_local1 = "(.-)" .. f34_arg1
	local f34_local2 = 1
	local f34_local3, f34_local4, f34_local5 = f34_arg0:find( f34_local1, 1 )
	while f34_local3 do
		if f34_local3 ~= 1 or f34_local5 ~= "" then
			table.insert( f34_local0, f34_local5 )
		end
		f34_local2 = f34_local4 + 1
		f34_local3, f34_local4, f34_local5 = f34_arg0:find( f34_local1, f34_local2 )
	end
	if f34_local2 <= #f34_arg0 then
		table.insert( f34_local0, f34_arg0:sub( f34_local2 ) )
	end
	return f34_local0
end

