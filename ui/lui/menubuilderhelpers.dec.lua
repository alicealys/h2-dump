local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
function Property( f1_arg0, f1_arg1 )
	local f1_local0 = {}
	assert( f1_arg0, "No property name given" )
	f1_local0.propName = f1_arg0
	f1_local0.propAlias = f1_arg1
	f1_local0.isProperty = true
	f1_local0.func = function ( f41_arg0 )
		local f41_local0 = assert
		local f41_local1
		if f41_arg0[f1_local0.propName] == nil and (f1_local0.propAlias == nil or f41_arg0[f1_local0.propAlias] == nil) then
			f41_local1 = false
		else
			f41_local1 = true
		end
		f41_local0( f41_local1, "Could not find property named " .. f1_local0.propName )
		if f41_arg0[f1_local0.propName] ~= nil then
			return f41_arg0[f1_local0.propName]
		else
			return f41_arg0[f1_local0.propAlias]
		end
	end
	
	return f1_local0
end

function PropertyOrDefault( f2_arg0, f2_arg1 )
	local f2_local0 = {}
	assert( f2_arg0, "No property name given" )
	f2_local0.propName = f2_arg0
	f2_local0.propAlias = propAlias
	f2_local0.isProperty = true
	f2_local0.func = function ( f13_arg0 )
		local f13_local0 = assert
		local f13_local1
		if f13_arg0[f2_local0.propName] == nil and f2_arg1 == nil then
			f13_local1 = false
		else
			f13_local1 = true
		end
		f13_local0( f13_local1, "Could not find property named " .. f2_local0.propName .. " and no default value is given." )
		if f13_arg0[f2_local0.propName] ~= nil then
			return f13_arg0[f2_local0.propName]
		else
			return f2_arg1
		end
	end
	
	return f2_local0
end

function OppositeProperty( f3_arg0 )
	local f3_local0 = {}
	assert( f3_arg0, "No property name given" )
	f3_local0.propName = f3_arg0
	f3_local0.isProperty = true
	f3_local0.func = function ( f15_arg0 )
		assert( f15_arg0[f3_local0.propName] ~= nil, "Could not find property named " .. f3_local0.propName )
		if type( f15_arg0[f3_local0.propName] ) == "number" then
			return -f15_arg0[f3_local0.propName]
		elseif type( f15_arg0[f3_local0.propName] ) == "boolean" then
			return not f15_arg0[f3_local0.propName]
		else
			assert( false, "Property " .. f3_local0.propName .. " should be a number or a boolean for use with the OppositeProperty helper" )
		end
	end
	
	return f3_local0
end

function HalfProperty( f4_arg0 )
	local f4_local0 = {}
	assert( f4_arg0, "No property name given" )
	f4_local0.propName = f4_arg0
	f4_local0.isProperty = true
	f4_local0.func = function ( f17_arg0 )
		assert( f17_arg0[f4_local0.propName] ~= nil, "Could not find property named " .. f4_local0.propName )
		if type( f17_arg0[f4_local0.propName] ) == "number" then
			return 0.5 * f17_arg0[f4_local0.propName]
		else
			assert( false, "Property " .. f4_local0.propName .. " should be a number for use with the HalfProperty helper" )
		end
	end
	
	return f4_local0
end

function HalfOppositeProperty( f5_arg0 )
	local f5_local0 = {}
	assert( f5_arg0, "No property name given" )
	f5_local0.propName = f5_arg0
	f5_local0.isProperty = true
	f5_local0.func = function ( f21_arg0 )
		assert( f21_arg0[f5_local0.propName] ~= nil, "Could not find property named " .. f5_local0.propName )
		if type( f21_arg0[f5_local0.propName] ) == "number" then
			return -0.5 * f21_arg0[f5_local0.propName]
		else
			assert( false, "Property " .. f5_local0.propName .. " should be a number for use with the HalfOppositeProperty helper" )
		end
	end
	
	return f5_local0
end

function RunPropertyFunc( f6_arg0 )
	return function ( f22_arg0, f22_arg1 )
		if f22_arg0.properties[f6_arg0] and type( f22_arg0.properties[f6_arg0] ) == "function" then
			f22_arg0.properties[f6_arg0]( f22_arg0, f22_arg1 )
		end
	end
	
end

function ParentProperty( f7_arg0 )
	local f7_local0 = f7_arg0
	return function ( f23_arg0, f23_arg1 )
		assert( f23_arg1, "ParentProperty can only be included inside the property section" )
		return f23_arg1[f7_local0]
	end
	
end

function TryProperty( f8_arg0 )
	local f8_local0 = f8_arg0
	return function ( f24_arg0 )
		return f24_arg0[f8_local0]
	end
	
end

function NegateProperty( f9_arg0 )
	local f9_local0 = {}
	assert( f9_arg0, "No input given" )
	f9_local0.isProperty = true
	f9_local0.func = function ( f25_arg0 )
		return -f9_arg0.func( f25_arg0 )
	end
	
	return f9_local0
end

function IndexProperty( f10_arg0, f10_arg1 )
	local f10_local0 = {}
	assert( f10_arg0, "No input given" )
	assert( f10_arg1, "No index given" )
	f10_local0.index = f10_arg1
	f10_local0.isProperty = true
	f10_local0.func = function ( f26_arg0 )
		local f26_local0 = f10_arg0.func( f26_arg0 )
		return f26_local0[f10_local0.index]
	end
	
	return f10_local0
end

function SumProperties( f11_arg0, f11_arg1 )
	local f11_local0 = {}
	assert( f11_arg0, "No input given" )
	assert( f11_arg1, "No input given" )
	f11_local0.isProperty = true
	f11_local0.func = function ( f27_arg0 )
		return f11_arg0.func( f27_arg0 ) + f11_arg1.func( f27_arg0 )
	end
	
	return f11_local0
end

function Function( f12_arg0 )
	local f12_local0 = f12_arg0
	return function ( f28_arg0 )
		return f12_local0( f28_arg0 )
	end
	
end

function BaseState( f13_arg0, f13_arg1 )
	local f13_local0 = f13_arg0
	local f13_local1 = f13_arg1
	if not f13_local1 then
		f13_local1 = {}
	end
	return function ( f29_arg0 )
		assert( f29_arg0 )
		assert( f29_arg0.states )
		assert( f29_arg0.states[f13_local0], "Could not find base state " .. f13_local0 )
		assert( type( f29_arg0.states[f13_local0] ) == "table", "Must only use BaseState on non-derived states! state = " .. f13_local0 )
		local f29_local0 = {}
		for f29_local4, f29_local5 in pairs( f29_arg0.states[f13_local0] ) do
			f29_local0[f29_local4] = f29_local5
		end
		for f29_local4, f29_local5 in pairs( f13_local1 ) do
			f29_local0[f29_local4] = f29_local5
		end
		return f29_local0
	end
	
end

function OpenMenu( f14_arg0, f14_arg1, f14_arg2, f14_arg3 )
	local f14_local0 = f14_arg0
	local f14_local1 = f14_arg1
	local f14_local2 = f14_arg2
	local f14_local3 = f14_arg3
	return function ( f30_arg0, f30_arg1 )
		LUI.FlowManager.RequestAddMenu( f30_arg0, f14_local0, f14_local1, f30_arg1.controller, f14_local2, f14_local3 )
	end
	
end

function PopupMenu( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
	local f15_local0 = f15_arg0
	local f15_local1 = f15_arg1
	local f15_local2 = f15_arg2
	local f15_local3 = f15_arg3
	return function ( f31_arg0, f31_arg1 )
		LUI.FlowManager.RequestPopupMenu( f31_arg0, f15_local0, f15_local1, f31_arg1.controller, f15_local2, f15_local3 )
	end
	
end

function LeaveMenu()
	return function ( f33_arg0, f33_arg1 )
		LUI.FlowManager.RequestLeaveMenu( f33_arg0 )
	end
	
end

function RestoreMenu( f17_arg0, f17_arg1, f17_arg2 )
	return function ( f34_arg0, f34_arg1 )
		LUI.FlowManager.RequestRestoreMenu( f34_arg0, f17_arg0, f17_arg1, f34_arg1.controller, f17_arg2 )
	end
	
end

function CloseAllMenus()
	return function ( f37_arg0, f37_arg1 )
		LUI.FlowManager.RequestCloseAllMenus( f37_arg0, nil )
	end
	
end

function OpenOldMenu( f19_arg0 )
	local f19_local0 = f19_arg0
	return function ( f38_arg0, f38_arg1 )
		LUI.FlowManager.RequestOldMenu( f38_arg0, f19_local0 )
	end
	
end

function EmitEvent( f20_arg0 )
	local f20_local0 = f20_arg0
	if type( f20_local0 ) == "string" then
		f20_local0 = {
			name = f20_local0
		}
	end
	return function ( f39_arg0, f39_arg1 )
		f39_arg0:processEvent( f20_local0 )
	end
	
end

function EmitEventToParent( f21_arg0, f21_arg1 )
	local f21_local0
	if f21_arg1 then
		f21_local0 = f21_arg1.saveOriginal
		if not f21_local0 then
		
		else
			local f21_local1 = f21_arg0
			if not f21_local0 and type( f21_local1 ) == "string" then
				f21_local1 = {
					name = f21_local1
				}
			end
			return function ( f40_arg0, f40_arg1 )
				if f21_local0 then
					local f40_local0 = {}
					if type( f21_local1 ) == "string" then
						f40_local0.name = f21_local1
					else
						for f40_local4, f40_local5 in pairs( f21_local1 ) do
							f40_local0[f40_local4] = f40_local5
						end
					end
					f40_local0.original = f40_arg1
					return f40_arg0:dispatchEventToParent( f40_local0 )
				else
					return f40_arg0:dispatchEventToParent( f21_local1 )
				end
			end
			
		end
	end
	f21_local0 = false
end

function EmitEventToRoot( f22_arg0 )
	local f22_local0 = f22_arg0
	if type( f22_local0 ) == "string" then
		f22_local0 = {
			name = f22_local0
		}
	end
	return function ( f44_arg0, f44_arg1 )
		f44_arg0:dispatchEventToRoot( f22_local0 )
	end
	
end

function EmitOmnvarUpdateEventToRoot( f23_arg0 )
	return function ( f46_arg0 )
		f46_arg0:dispatchEventToRoot( {
			name = "omnvar_update",
			omnvar = f23_arg0,
			value = Game.GetOmnvar( f23_arg0 )
		} )
	end
	
end

f0_local0 = function ( f24_arg0, f24_arg1 )
	local f24_local0 = type( f24_arg0 )
	if f24_local0 == "function" then
		assert( f24_arg1.properties, "Item built that didn't get it's properties set!" )
		DebugPrint( "defaultDuration is " .. f24_arg0( f24_arg1.properties ) )
		return f24_arg0( f24_arg1.properties )
	elseif f24_local0 == "table" and f24_arg0.isProperty then
		assert( f24_arg1.properties, "Item built that didn't get it's properties set!" )
		DebugPrint( "defaultDuration is " .. f24_arg0.func( f24_arg1.properties ) )
		return f24_arg0.func( f24_arg1.properties )
	else
		return f24_arg0
	end
end

function AnimateToStateWithEvent( f25_arg0, f25_arg1, f25_arg2, f25_arg3 )
	local f25_local0 = f25_arg0
	local f25_local1 = f25_arg1
	local f25_local2 = f25_arg2
	local f25_local3 = f25_arg3
	return function ( f47_arg0, f47_arg1 )
		local f47_local0
		if f47_arg1 then
			f47_local0 = f47_arg1.duration
			if not f47_local0 then
			
			else
				local f47_local1 = f0_local0( f25_local2, f47_arg0 )
				local f47_local2 = f0_local0( f25_local3, f47_arg0 )
				if f47_arg0:hasAnimationState( f25_local0 ) then
					if Engine.GetDvarBool( "lui_print_anim_states" ) then
						local f47_local3 = "None"
						if f47_arg0.id ~= nil then
							f47_local3 = f47_arg0.id
						end
						DebugPrint( "LUI: AnimateToStateWithEvent: id: " .. f47_local3 .. " state: " .. f25_local0 )
					end
					f47_arg0:animateToState( f25_local0, f47_local0, f47_local1, f47_local2 )
				end
			end
		end
		f47_local0 = f0_local0( f25_local1, f47_arg0 )
	end
	
end

function AnimateToState( f26_arg0, f26_arg1, f26_arg2, f26_arg3 )
	local f26_local0 = f26_arg0
	local f26_local1 = f26_arg1
	local f26_local2 = f26_arg2
	local f26_local3 = f26_arg3
	return function ( f48_arg0, f48_arg1 )
		local f48_local0 = LUI.FormatAnimStateFinishEvent( f26_local0 )
		if f48_arg0.m_eventHandlers[f48_local0] then
			DebugPrint( "LUI Warning: AnimateLoop is overwriting an event handler " .. f26_local0 )
		end
		f48_arg0:registerEventHandler( f48_local0, nil )
		local f48_local1
		if f48_arg1 then
			f48_local1 = f48_arg1.duration
			if not f48_local1 then
			
			else
				local f48_local2 = f0_local0( f26_local2, f48_arg0 )
				local f48_local3 = f0_local0( f26_local3, f48_arg0 )
				if f48_arg0:hasAnimationState( f26_local0 ) then
					if Engine.GetDvarBool( "lui_print_anim_states" ) then
						local f48_local4 = "None"
						if f48_arg0.id ~= nil then
							f48_local4 = f48_arg0.id
						end
						DebugPrint( "LUI: AnimateToState: id: " .. f48_local4 .. " state: " .. f26_local0 )
					end
					f48_arg0:animateToState( f26_local0, f48_local1, f48_local2, f48_local3 )
				end
			end
		end
		f48_local1 = f0_local0( f26_local1, f48_arg0 )
	end
	
end

function ChooseAnimateToState( f27_arg0, f27_arg1, f27_arg2 )
	local f27_local0 = f27_arg0
	local f27_local1 = f27_arg1
	local f27_local2 = f27_arg2
	return function ( f18_arg0, f18_arg1 )
		local f18_local0 = f27_local2[1]
		if not f18_arg1 or not f18_arg1.duration then
			local f18_local1 = f0_local0( f27_local2[2], f18_arg0 )
		end
		local f18_local2 = f0_local0( f27_local2[3], f18_arg0 )
		local f18_local3 = f0_local0( f27_local2[4], f18_arg0 )
		if f27_local0( f18_arg0, f18_arg1 ) then
			f18_local0 = f27_local1[1]
			if f18_arg1 then
				local f18_local4 = f18_arg1.duration
			end
			local f18_local1 = f18_local4 or f0_local0( f27_local1[2], f18_arg0 )
			f18_local2 = f0_local0( f27_local1[3], f18_arg0 )
			f18_local3 = f0_local0( f27_local1[4], f18_arg0 )
		end
		if f18_arg0:hasAnimationState( f18_local0 ) then
			if Engine.GetDvarBool( "lui_print_anim_states" ) then
				local f18_local5 = "None"
				if f18_arg0.id ~= nil then
					f18_local5 = f18_arg0.id
				end
				DebugPrint( "LUI: ChooseAnimateToState: id: " .. f18_local5 .. " state: " .. f18_local0 )
			end
			f18_arg0:animateToState( f18_local0, f18_local1, f18_local2, f18_local3 )
		end
	end
	
end

function AnimateLoop( f28_arg0, f28_arg1, f28_arg2 )
	local f28_local0 = f28_arg0
	local f28_local1 = f28_arg1
	local f28_local2 = f28_arg2
	return function ( f19_arg0, f19_arg1 )
		f19_arg0:animateInLoop( f28_local0, f28_local1, f28_local2 )
	end
	
end

function AnimateSequence( f29_arg0 )
	local f29_local0 = f29_arg0
	local f29_local1 = requireFocus
	return function ( f20_arg0, f20_arg1 )
		f20_arg0:animateInSequence( f29_local0, f29_local1 )
	end
	
end

function AnimateSequenceAndClose( f30_arg0 )
	local f30_local0 = f30_arg0
	local f30_local1 = requireFocus
	return function ( f21_arg0, f21_arg1 )
		if Engine.GetDvarBool( "lui_print_anim_states" ) then
			local f21_local0 = "None"
			if f21_arg0.id ~= nil then
				f21_local0 = f21_arg0.id
			end
			DebugPrint( "LUI: AnimateSequence: id: " .. f21_local0 )
		end
		for f21_local3, f21_local4 in ipairs( f30_local0 ) do
			local f21_local5 = LUI.FormatAnimStateFinishEvent( f21_local4[1] )
			if f21_arg0.m_eventHandlers[f21_local5] then
				DebugPrint( "LUI Warning: AnimateSequence is overwriting an event handler " .. f21_local4[1] )
			end
			if Engine.GetDvarBool( "lui_print_anim_states" ) then
				DebugPrint( "	->" .. f21_local4[1] )
			end
			f21_arg0:registerEventHandler( f21_local5, nil )
		end
		f21_local0 = assert
		f21_local1 = f30_local0
		if f21_local1 then
			f21_local1 = #f30_local0
		end
		f21_local0( f21_local1, "AnimateSequence does not have animation states!" )
		f21_local0 = f30_local0[1]
		f21_local1 = f30_local0[#f30_local0]
		f21_local2 = LUI.FormatAnimStateFinishEvent( f21_local0[1] )
		if #f30_local0 == 1 then
			DebugPrint( "LUI Warning: AnimateSequence only has one animation state! " .. f30_local0[1][1] )
		else
			f21_arg0:registerEventHandler( f21_local2, LUI.UIElement.intAnimate( f30_local0, f30_local1, 0, true ) )
		end
		f21_arg0:animateToState( f21_local0[1], f21_local0[2], f21_local0[3], f21_local0[4] )
	end
	
end

function BuildSpriteAnim( f31_arg0, f31_arg1, f31_arg2, f31_arg3, f31_arg4, f31_arg5, f31_arg6 )
	if f31_arg0.states == nil then
		f31_arg0.states = {}
	end
	for f31_local3, f31_local4 in ipairs( f31_arg2 ) do
		f31_arg0.states["animstate_" .. f31_arg1 .. "_" .. f31_local3] = {
			material = RegisterMaterial( f31_local4 )
		}
	end
	if f31_arg4 then
		f31_arg0.states.endstate = f31_arg4
	end
	f31_local0 = {}
	for f31_local1 = 1, #f31_arg2, 1 do
		f31_local0[f31_local1] = {
			"animstate_" .. f31_arg1 .. "_" .. f31_local1,
			1000 / f31_arg3
		}
	end
	if f31_arg4 then
		f31_local0[#f31_arg2 + 1] = {
			"endstate",
			0
		}
	end
	if f31_arg0.properties == nil then
		f31_arg0.properties = {}
	end
	f31_local1 = f31_arg6
	f31_arg0.properties["spriteanime_" .. f31_arg1] = f31_local0
	if f31_arg5 then
		return function ( f15_arg0, f15_arg1 )
			f15_arg0:animateInLoop( f15_arg0.properties["spriteanime_" .. f15_arg1], nil, nil, true, f31_local1 )
		end
		
	else
		return function ( f16_arg0, f16_arg1 )
			f16_arg0:animateInSequence( f16_arg0.properties["spriteanime_" .. f16_arg1], nil, true, f31_local1 )
		end
		
	end
end

function DoMultiple( f32_arg0 )
	local f32_local0 = f32_arg0
	return function ( f17_arg0, f17_arg1 )
		for f17_local3, f17_local4 in ipairs( f32_local0 ) do
			assert( type( f17_local4 ) == "function" )
			f17_local4( f17_arg0, f17_arg1 )
		end
	end
	
end

function HandleSilently( f33_arg0 )
	return function ( f18_arg0, f18_arg1 )
		if not f18_arg1.dispatchChildren then
			f18_arg0:dispatchEventToChildren( f18_arg1 )
		end
		return f33_arg0( f18_arg0, f18_arg1 )
	end
	
end

function DvarUpdateFilter( f34_arg0, f34_arg1 )
	local f34_local0 = f34_arg0
	return function ( f19_arg0, f19_arg1 )
		if f19_arg1.dvar ~= f34_local0 then
			return f19_arg0:dispatchEventToChildren( f19_arg1 )
		else
			return f34_arg1( f19_arg0, f19_arg1 )
		end
	end
	
end

function SplitDvarUpdateEvent( ... )
	local f35_local0 = {}
	table.insert( f35_local0, ... )
	local f35_local1 = {}
	for f35_local2 = 1, #f35_local0, 1 do
		f35_local1[f35_local0[f35_local2]] = true
	end
	return function ( f20_arg0, f20_arg1 )
		if f35_local1[f20_arg1.dvar] then
			f20_arg0:processEvent( {
				name = f20_arg1.dvar,
				dvar = f20_arg1.dvar,
				value = f20_arg1.value
			} )
		else
			f20_arg0:dispatchEventToChildren( f20_arg1 )
		end
	end
	
end

function OmnvarUpdateFilter( f36_arg0, f36_arg1 )
	return {
		[f36_arg0] = f36_arg1
	}
end

function HandlePrint( f37_arg0 )
	local f37_local0 = f37_arg0
	return function ( f21_arg0, f21_arg1 )
		DebugPrint( f37_local0 )
	end
	
end

function UpdateTextWithCall( f38_arg0, ... )
	local f38_local0 = {}
	table.insert( f38_local0, ... )
	return function ( f22_arg0, f22_arg1 )
		if f38_arg0 ~= nil then
			local f22_local0 = f38_arg0( unpack( f38_local0 ) )
			if f22_local0 ~= nil then
				f22_arg0:setText( f22_local0 )
			end
		end
	end
	
end

function NewButtonPrompt( f39_arg0, f39_arg1, f39_arg2, f39_arg3, f39_arg4, f39_arg5, f39_arg6 )
	local self = LUI.UIText.new( {
		topAnchor = true,
		leftAnchor = true,
		bottomAnchor = false,
		rightAnchor = false,
		top = 0,
		left = 0,
		bottom = 15,
		right = 200,
		alpha = 1
	} )
	if f39_arg1 ~= nil and f39_arg1 ~= "" then
		self:setText( f39_arg1 )
	end
	if f39_arg4 then
		f39_arg2.qualifier = f39_arg4
	end
	if f39_arg2 ~= nil and f39_arg3 ~= nil then
		self:registerEventHandler( "gamepad_button", function ( element, event )
			if not element.disabled and event.down == true then
				if event.button == f39_arg0 and (f39_arg4 == nil or event.qualifier == f39_arg4) then
					f39_arg2:processEvent( {
						name = f39_arg3,
						controller = event.controller
					} )
					if f39_arg6 and LUI.FlowManager.IsTopMenuModal() then
						return 
					else
						return true
					end
				elseif CoD.isPC and event.button == "key_shortcut" and (event.key == f39_arg5 or event.bind1 == bindPlayer) then
					f39_arg2:processEvent( {
						name = f39_arg3,
						controller = event.controller
					} )
					return true
				end
			end
		end )
	end
	return self
end

function CreateArrowButtonFactory( f40_arg0, f40_arg1, f40_arg2, f40_arg3, f40_arg4 )
	local f40_local0 = 12
	if f40_arg1 then
		f40_local0 = -f40_local0 or f40_local0
	end
	local f40_local1 = 12
	local f40_local2 = 0.9
	local self = LUI.UIImage.new()
	self.id = "arrow_gfx"
	local self = self
	local f40_local5 = self.registerAnimationState
	local f40_local6 = "default"
	local f40_local7 = {
		material = RegisterMaterial( "h1_deco_option_scrollbar_arrows" ),
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = 10
	}
	local f40_local8
	if f40_arg1 then
		f40_local8 = 25
		if not f40_local8 then
		
		else
			f40_local7.left = f40_local8
			f40_local7.width = f40_local0
			f40_local7.height = f40_local1
			f40_local7.red = 1
			f40_local7.green = 1
			f40_local7.blue = 1
			f40_local7.alpha = 0
			f40_local5( self, f40_local6, f40_local7 )
			self:animateToState( "default" )
			self:registerAnimationState( "disabled", {
				red = 1,
				green = 1,
				blue = 1,
				alpha = 0.3,
				width = f40_local0,
				height = f40_local1
			} )
			self:registerAnimationState( "unselected", {
				red = 1,
				green = 1,
				blue = 1,
				alpha = 0.5,
				width = f40_local0,
				height = f40_local1
			} )
			self:registerAnimationState( "hover", {
				red = 1,
				green = 1,
				blue = 1,
				alpha = 1,
				width = f40_local0,
				height = f40_local1
			} )
			self:registerAnimationState( "pulse", {
				red = 0.86,
				green = 0.81,
				blue = 0.33,
				alpha = 1,
				width = f40_local0 * f40_local2,
				height = f40_local1 * f40_local2
			} )
			self = self
			f40_local5 = self.registerEventHandler
			f40_local6 = "content_arrow_"
			if f40_arg1 then
				f40_local7 = "left"
				if not f40_local7 then
				
				else
					f40_local5( self, f40_local6 .. f40_local7, function ( f24_arg0, f24_arg1 )
						if self.hasFocus then
							local f24_local0 = MBh.AnimateSequence( {
								{
									"pulse",
									100
								},
								{
									"hover",
									200
								}
							} )
							f24_local0( f24_arg0, f24_arg1 )
						else
							local f24_local0 = MBh.AnimateSequence( {
								{
									"pulse",
									100
								},
								{
									"unselected",
									200
								}
							} )
							f24_local0( f24_arg0, f24_arg1 )
						end
					end )
					f40_local5 = yOffset
					self = LUI.UIButton.new()
					self.id = "arrow_" .. f40_arg0
					self.m_requireFocusType = FocusType.MouseOver
					f40_local7 = self
					f40_local6 = self.registerAnimationState
					f40_local8 = "default"
					local self = {
						topAnchor = true,
						bottomAnchor = true,
						leftAnchor = f40_arg1,
						rightAnchor = not f40_arg1,
						top = 0,
						bottom = 0
					}
					local f40_local10
					if f40_arg1 then
						f40_local10 = 1
						if not f40_local10 then
						
						else
							f40_local10 = f40_arg3 * f40_local10
							local f40_local11
							if f40_arg1 then
								f40_local11 = 0
								if not f40_local11 then
								
								else
									self.left = f40_local10 + 10 * f40_local11 - 11
									if f40_arg1 then
										f40_local10 = 1
										if not f40_local10 then
										
										else
											f40_local10 = f40_arg3 * f40_local10
											f40_local11
											if f40_arg1 then
												f40_local11 = 1
												if not f40_local11 then
												
												else
													self.right = f40_local10 + 10 * f40_local11 + 11
													f40_local6( f40_local7, f40_local8, self )
													self.properties = self.properties or {}
													self.properties.muteAction = true
													self:animateToState( "default" )
													f40_local6 = function ( f25_arg0, f25_arg1 )
														if self.visible then
															self:animateToState( "default" )
															self.visible = nil
															f25_arg0.gainFocusSFX = nil
														end
													end
													
													self:registerEventHandler( "hide_arrows", f40_local6 )
													f40_local8 = self
													f40_local7 = self.registerEventHandler
													self = "hide_arrow_"
													if f40_arg1 then
														f40_local10 = "left"
														if not f40_local10 then
														
														else
															f40_local7( f40_local8, self .. f40_local10, f40_local6 )
															f40_local7 = function ( f26_arg0, f26_arg1 )
																if not self.visible then
																	self.hasFocus = false
																	self:animateToState( "unselected" )
																	self.visible = true
																	f26_arg0.gainFocusSFX = CoD.SFX.MouseOver
																end
															end
															
															self:registerEventHandler( "show_arrows", f40_local7 )
															self = self
															f40_local8 = self.registerEventHandler
															f40_local10 = "show_arrow_"
															f40_local11
															if f40_arg1 then
																f40_local11 = "left"
																if not f40_local11 then
																
																else
																	f40_local8( self, f40_local10 .. f40_local11, f40_local7 )
																	f40_local8 = function ( f27_arg0, f27_arg1 )
																		if self.visible then
																			self:animateToState( "disabled" )
																		end
																	end
																	
																	self:registerEventHandler( "disable_arrows", f40_local7 )
																	f40_local10 = self
																	self = self.registerEventHandler
																	f40_local11 = "disable_arrow_"
																	local f40_local12
																	if f40_arg1 then
																		f40_local12 = "left"
																		if not f40_local12 then
																		
																		else
																			self( f40_local10, f40_local11 .. f40_local12, f40_local7 )
																			self:registerEventHandler( "button_over", function ( element, event )
																				self.hasFocus = true
																				self:animateToState( "hover" )
																			end )
																			self:registerEventHandler( "button_up", function ( element, event )
																				self.hasFocus = false
																				if self:getAnimationStateName() == "hover" then
																					self:animateToState( "unselected" )
																				end
																			end )
																			self:processEvent( {
																				name = "hide_arrows"
																			} )
																			self:addElement( self )
																			if f40_arg4 ~= nil then
																				if f40_arg1 then
																					self = "left"
																					if not self then
																					
																					else
																						f40_arg2:registerEventHandler( "button_" .. self, f40_arg4 )
																					end
																				end
																				self = "right"
																			end
																			if not Engine.IsConsoleGame() then
																				if f40_arg4 ~= nil then
																					self:registerEventHandler( "button_action", f40_arg4 )
																				end
																				self = LUI.UIButtonRepeater.new( "leftmouse", "button_action", self )
																				self:disable()
																				self:registerEventHandler( "button_up", self.disable )
																				self:registerEventHandler( "button_over", self.enable )
																				self:registerEventHandler( "button_over_disable", self.disable )
																				self:addElement( self )
																				self.shareFocus = true
																				if useText then
																					self:setMinDelay( 240 )
																				end
																			end
																			return self
																		end
																	end
																	f40_local12 = "right"
																end
															end
															f40_local11 = "right"
														end
													end
													f40_local10 = "right"
												end
											end
											f40_local11 = 0
										end
									end
									f40_local10 = -1
								end
							end
							f40_local11 = -1
						end
					end
					f40_local10 = -1
				end
			end
			f40_local7 = "right"
		end
	end
	f40_local8 = 10
end

helpers = {
	Property = Property,
	PropertyOrDefault = PropertyOrDefault,
	OppositeProperty = OppositeProperty,
	HalfProperty = HalfProperty,
	HalfOppositeProperty = HalfOppositeProperty,
	RunPropertyFunc = RunPropertyFunc,
	NegateProperty = NegateProperty,
	IndexProperty = IndexProperty,
	SumProperties = SumProperties,
	Function = Function,
	BaseState = BaseState,
	AnimateToState = AnimateToState,
	AnimateToStateWithEvent = AnimateToStateWithEvent,
	BuildSpriteAnim = BuildSpriteAnim,
	DoMultiple = DoMultiple,
	HandleSilently = HandleSilently,
	DvarUpdateFilter = DvarUpdateFilter,
	OmnvarUpdateFilter = OmnvarUpdateFilter,
	SplitDvarUpdateEvent = SplitDvarUpdateEvent,
	AnimateLoop = AnimateLoop,
	AnimateSequence = AnimateSequence,
	TryProperty = TryProperty,
	ParentProperty = ParentProperty,
	OpenMenu = OpenMenu,
	PopupMenu = PopupMenu,
	LeaveMenu = LeaveMenu,
	RestoreMenu = RestoreMenu,
	CloseAllMenus = CloseAllMenus,
	OpenOldMenu = OpenOldMenu,
	HandlePrint = HandlePrint,
	UpdateTextWithCall = UpdateTextWithCall,
	EmitEvent = EmitEvent,
	EmitEventToParent = EmitEventToParent,
	EmitEventToRoot = EmitEventToRoot,
	EmitOmnvarUpdateEventToRoot = EmitOmnvarUpdateEventToRoot,
	ChooseAnimateToState = ChooseAnimateToState,
	AnimateSequenceAndClose = AnimateSequenceAndClose,
	NewButtonPrompt = NewButtonPrompt,
	CreateArrowButtonFactory = CreateArrowButtonFactory
}
LockTable( _M )
