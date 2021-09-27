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
	return function ( f13_arg0, f13_arg1 )
		return LUI.AccessorInternal( f3_local0[f13_arg1], f13_arg0 )
	end
	
end

LUI.Mutator = function ( f4_arg0 )
	local f4_local0 = f4_arg0
	return function ( f14_arg0, f14_arg1, f14_arg2 )
		f4_local0[f14_arg1] = f14_arg2
	end
	
end

LUI.InheritCopy = function ( f5_arg0, f5_arg1, f5_arg2 )
	for f5_local3, f5_local4 in pairs( f5_arg1 ) do
		if f5_arg0[f5_local3] == nil then
			f5_arg0[f5_local3] = f5_local4
		end
		if f5_arg2 and type( f5_arg0[f5_local3] ) == "table" and type( f5_local4 ) == "table" then
			LUI.InheritCopy( f5_arg0[f5_local3], f5_local4, f5_arg2 )
		end
	end
	f5_local0 = getmetatable( f5_arg1 )
	if f5_local0 and f5_local0.debugReference then
		for f5_local4, f5_local5 in pairs( f5_local0.debugReference ) do
			if not f5_arg0[f5_local4] then
				f5_arg0[f5_local4] = f5_local5
			end
		end
	end
end

LUI.InheritProxy = function ( f6_arg0 )
	local f6_local0 = {}
	setmetatable( f6_local0, {
		__index = LUI.Accessor( f6_arg0 ),
		__newindex = LUI.Mutator( f6_arg0 ),
		debugReference = f6_arg0
	} )
	return f6_local0
end

LUI.ShallowCopy = function ( f7_arg0 )
	local f7_local0 = {}
	for f7_local4, f7_local5 in pairs( f7_arg0 ) do
		f7_local0[f7_local4] = f7_local5
	end
	return f7_local0
end

LUI.DeepCopy = function ( f8_arg0 )
	if type( f8_arg0 ) == "function" then
		return f8_arg0
	elseif type( f8_arg0 ) == "table" then
		local f8_local0 = {}
		for f8_local4, f8_local5 in pairs( f8_arg0 ) do
			f8_local0[f8_local4] = LUI.DeepCopy( f8_local5 )
		end
		return f8_local0
	end
	return f8_arg0
end

LUI.Append = function ( f9_arg0 )
	if f9_arg0 then
		for f9_local6, f9_local7 in ipairs( REG1 ) do
			for f9_local3, f9_local4 in pairs( f9_local7 ) do
				f9_arg0[f9_local3] = f9_local4
			end
		end
	end
	return f9_arg0
end

LUI.Merge = function ( ... )
	return LUI.Append( {}, ... )
end

LUI.ConcatenateToTable = function ( f11_arg0, f11_arg1 )
	if f11_arg1 == nil then
		return 
	end
	for f11_local3, f11_local4 in ipairs( f11_arg1 ) do
		table.insert( f11_arg0, f11_local4 )
	end
end

LUI.clamp = function ( f12_arg0, f12_arg1, f12_arg2 )
	if f12_arg0 < f12_arg1 then
		return f12_arg1
	elseif f12_arg2 < f12_arg0 then
		return f12_arg2
	else
		return f12_arg0
	end
end

LUI.Debug = {}
LUI.Debug.DimensionsAsString = function ( f13_arg0 )
	return "(" .. f13_arg0.left .. ", " .. f13_arg0.top .. ", " .. f13_arg0.right .. ", " .. f13_arg0.bottom .. ")"
end

LUI.FormatAnimStateFinishEvent = function ( f14_arg0 )
	return "transition_complete_" .. f14_arg0
end

LUI.FormatAnimStateFinishStepEvent = function ( f15_arg0 )
	return "transition_step_complete_" .. f15_arg0
end

function LockTable( f16_arg0 )
	local f16_local0 = getmetatable( f16_arg0 )
	if not f16_local0 then
		f16_local0 = {}
		setmetatable( f16_arg0, f16_local0 )
	end
	f16_local0.__newindex = function ( f20_arg0, f20_arg1, f20_arg2 )
		error( "LUI Error: Tried to create module variable " .. f20_arg1, 2 )
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
		for f17_local3, f17_local4 in pairs( LUI.roots ) do
			f17_local4.debugReload = true
		end
	end
	
end
LargestElements = {}
LargestElementsSize = {}
LargestElementsCount = {}
function CountFieldsHelper( f18_arg0, f18_arg1 )
	if f18_arg1[f18_arg0] then
		return 
	end
	f18_arg1[f18_arg0] = true
	local f18_local0 = 0
	for f18_local4, f18_local5 in pairs( f18_arg0 ) do
		if type( f18_local4 ) == "table" then
			f18_local0 = f18_local0 + CountFieldsHelper( f18_local4, f18_arg1 )
		end
		f18_local0 = f18_local0 + 1
	end
	return f18_local0
end

function CountFields( f19_arg0 )
	return CountFieldsHelper( f19_arg0, {} )
end

function CountReferencesHelper( f20_arg0, f20_arg1 )
	if f20_arg1[f20_arg0] then
		return 
	end
	f20_arg1[f20_arg0] = true
	if type( f20_arg0 ) == "userdata" then
		local f20_local0 = getmetatable( f20_arg0 )
		if not f20_local0 then
			return 
		end
		f20_arg0 = f20_local0.__index
		if not f20_arg0 then
			return 
		elseif type( f20_arg0 ) == "table" and f20_arg0.id then
			local f20_local1 = CountFields( f20_arg0 )
			if not LargestElementsSize[f20_arg0.id] or LargestElementsSize[f20_arg0.id] < f20_local1 then
				LargestElements[f20_arg0.id] = f20_arg0
				LargestElementsSize[f20_arg0.id] = f20_local1
			end
			if not LargestElementsCount[f20_arg0.id] then
				LargestElementsCount[f20_arg0.id] = 0
			end
			LargestElementsCount[f20_arg0.id] = LargestElementsCount[f20_arg0.id] + 1
		end
	end
	if type( f20_arg0 ) ~= "table" then
		return 
	end
	for f20_local3, f20_local4 in pairs( f20_arg0 ) do
		CountReferencesHelper( f20_local4, f20_arg1 )
	end
end

function CountReferences( f21_arg0 )
	local f21_local0 = {
		[f21_arg0] = true
	}
	if type( f21_arg0 ) == "userdata" then
		local f21_local1 = getmetatable( f21_arg0 )
		if not f21_local1 then
			return 0
		end
		f21_arg0 = f21_local1.__index
		if not f21_arg0 then
			return 0
		end
	end
	if type( f21_arg0 ) ~= "table" then
		return 0
	end
	for f21_local4, f21_local5 in pairs( f21_arg0 ) do
		CountReferencesHelper( f21_local5, f21_local0 )
	end
	f21_local1 = 0
	for f21_local5, f21_local6 in pairs( f21_local0 ) do
		f21_local1 = f21_local1 + 1
	end
	return f21_local1
end

function EnableGlobals()
	local f22_local0 = getmetatable( _G )
	if not f22_local0 then
		f22_local0 = {}
		setmetatable( _G, f22_local0 )
	end
	f22_local0.__newindex = nil
end

function DisableGlobals()
	local f23_local0 = getmetatable( _G )
	if not f23_local0 then
		f23_local0 = {}
		setmetatable( _G, f23_local0 )
	end
	f23_local0.__newindex = function ( f56_arg0, f56_arg1, f56_arg2 )
		error( "LUI Error: Tried to create global variable " .. f56_arg1, 2 )
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
function FormatTimeMinutesSeconds( f27_arg0 )
	local f27_local0 = math.floor( f27_arg0 / 60 )
	return string.format( "%02d:%02d", f27_local0, f27_arg0 - f27_local0 * 60 )
end

LUI.AdjustAlignmentForLanguage = function ( f28_arg0 )
	if Engine.IsRightToLeftLanguage() then
		if f28_arg0 == LUI.Alignment.Left then
			f28_arg0 = LUI.Alignment.Right
		elseif f28_arg0 == LUI.Alignment.Right then
			f28_arg0 = LUI.Alignment.Left
		end
	end
	return f28_arg0
end

LUI.Round = function ( f29_arg0 )
	return math.floor( f29_arg0 + 0.5 )
end

LUI.StringSplit = function ( f30_arg0, f30_arg1 )
	local f30_local0 = {}
	local f30_local1 = "(.-)" .. f30_arg1
	local f30_local2 = 1
	local f30_local3, f30_local4, f30_local5 = f30_arg0:find( f30_local1, 1 )
	while f30_local3 do
		if f30_local3 ~= 1 or f30_local5 ~= "" then
			table.insert( f30_local0, f30_local5 )
		end
		f30_local2 = f30_local4 + 1
		local f30_local6, f30_local7, f30_local8 = f30_arg0:find( f30_local1, f30_local2 )
		f30_local5 = f30_local8
		f30_local4 = f30_local7
		f30_local3 = f30_local6
	end
	if f30_local2 <= #f30_arg0 then
		table.insert( f30_local0, f30_arg0:sub( f30_local2 ) )
	end
	return f30_local0
end

