local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
function Property( f1_arg0, f1_arg1 )
	local f1_local0 = {}
	assert( f1_arg0, "No property name given" )
	f1_local0.propName = f1_arg0
	f1_local0.propAlias = f1_arg1
	f1_local0.isProperty = true
	f1_local0.func = function ( f2_arg0 )
		local f2_local0 = assert
		local f2_local1
		if f2_arg0[f1_local0.propName] == nil and (f1_local0.propAlias == nil or f2_arg0[f1_local0.propAlias] == nil) then
			f2_local1 = false
		else
			f2_local1 = true
		end
		f2_local0( f2_local1, "Could not find property named " .. f1_local0.propName )
		if f2_arg0[f1_local0.propName] ~= nil then
			return f2_arg0[f1_local0.propName]
		else
			return f2_arg0[f1_local0.propAlias]
		end
	end
	
	return f1_local0
end

function PropertyOrDefault( f3_arg0, f3_arg1 )
	local f3_local0 = {}
	assert( f3_arg0, "No property name given" )
	f3_local0.propName = f3_arg0
	f3_local0.propAlias = propAlias
	f3_local0.isProperty = true
	f3_local0.func = function ( f4_arg0 )
		local f4_local0 = assert
		local f4_local1
		if f4_arg0[f3_local0.propName] == nil and f3_arg1 == nil then
			f4_local1 = false
		else
			f4_local1 = true
		end
		f4_local0( f4_local1, "Could not find property named " .. f3_local0.propName .. " and no default value is given." )
		if f4_arg0[f3_local0.propName] ~= nil then
			return f4_arg0[f3_local0.propName]
		else
			return f3_arg1
		end
	end
	
	return f3_local0
end

function OppositeProperty( f5_arg0 )
	local f5_local0 = {}
	assert( f5_arg0, "No property name given" )
	f5_local0.propName = f5_arg0
	f5_local0.isProperty = true
	f5_local0.func = function ( f6_arg0 )
		assert( f6_arg0[f5_local0.propName] ~= nil, "Could not find property named " .. f5_local0.propName )
		if type( f6_arg0[f5_local0.propName] ) == "number" then
			return -f6_arg0[f5_local0.propName]
		elseif type( f6_arg0[f5_local0.propName] ) == "boolean" then
			return not f6_arg0[f5_local0.propName]
		else
			assert( false, "Property " .. f5_local0.propName .. " should be a number or a boolean for use with the OppositeProperty helper" )
		end
	end
	
	return f5_local0
end

function HalfProperty( f7_arg0 )
	local f7_local0 = {}
	assert( f7_arg0, "No property name given" )
	f7_local0.propName = f7_arg0
	f7_local0.isProperty = true
	f7_local0.func = function ( f8_arg0 )
		assert( f8_arg0[f7_local0.propName] ~= nil, "Could not find property named " .. f7_local0.propName )
		if type( f8_arg0[f7_local0.propName] ) == "number" then
			return 0.5 * f8_arg0[f7_local0.propName]
		else
			assert( false, "Property " .. f7_local0.propName .. " should be a number for use with the HalfProperty helper" )
		end
	end
	
	return f7_local0
end

function HalfOppositeProperty( f9_arg0 )
	local f9_local0 = {}
	assert( f9_arg0, "No property name given" )
	f9_local0.propName = f9_arg0
	f9_local0.isProperty = true
	f9_local0.func = function ( f10_arg0 )
		assert( f10_arg0[f9_local0.propName] ~= nil, "Could not find property named " .. f9_local0.propName )
		if type( f10_arg0[f9_local0.propName] ) == "number" then
			return -0.5 * f10_arg0[f9_local0.propName]
		else
			assert( false, "Property " .. f9_local0.propName .. " should be a number for use with the HalfOppositeProperty helper" )
		end
	end
	
	return f9_local0
end

function RunPropertyFunc( f11_arg0 )
	return function ( f12_arg0, f12_arg1 )
		if f12_arg0.properties[f11_arg0] and type( f12_arg0.properties[f11_arg0] ) == "function" then
			f12_arg0.properties[f11_arg0]( f12_arg0, f12_arg1 )
		end
	end
	
end

function ParentProperty( f13_arg0 )
	local f13_local0 = f13_arg0
	return function ( f14_arg0, f14_arg1 )
		assert( f14_arg1, "ParentProperty can only be included inside the property section" )
		return f14_arg1[f13_local0]
	end
	
end

function TryProperty( f15_arg0 )
	local f15_local0 = f15_arg0
	return function ( f16_arg0 )
		return f16_arg0[f15_local0]
	end
	
end

function NegateProperty( f17_arg0 )
	local f17_local0 = {}
	assert( f17_arg0, "No input given" )
	f17_local0.isProperty = true
	f17_local0.func = function ( f18_arg0 )
		return -f17_arg0.func( f18_arg0 )
	end
	
	return f17_local0
end

function IndexProperty( f19_arg0, f19_arg1 )
	local f19_local0 = {}
	assert( f19_arg0, "No input given" )
	assert( f19_arg1, "No index given" )
	f19_local0.index = f19_arg1
	f19_local0.isProperty = true
	f19_local0.func = function ( f20_arg0 )
		local f20_local0 = f19_arg0.func( f20_arg0 )
		return f20_local0[f19_local0.index]
	end
	
	return f19_local0
end

function SumProperties( f21_arg0, f21_arg1 )
	local f21_local0 = {}
	assert( f21_arg0, "No input given" )
	assert( f21_arg1, "No input given" )
	f21_local0.isProperty = true
	f21_local0.func = function ( f22_arg0 )
		return f21_arg0.func( f22_arg0 ) + f21_arg1.func( f22_arg0 )
	end
	
	return f21_local0
end

function Function( f23_arg0 )
	local f23_local0 = f23_arg0
	return function ( f24_arg0 )
		return f23_local0( f24_arg0 )
	end
	
end

function BaseState( f25_arg0, f25_arg1 )
	local f25_local0 = f25_arg0
	local f25_local1 = f25_arg1
	if not f25_local1 then
		f25_local1 = {}
	end
	return function ( f26_arg0 )
		assert( f26_arg0 )
		assert( f26_arg0.states )
		assert( f26_arg0.states[f25_local0], "Could not find base state " .. f25_local0 )
		assert( type( f26_arg0.states[f25_local0] ) == "table", "Must only use BaseState on non-derived states! state = " .. f25_local0 )
		local f26_local0 = {}
		for f26_local4, f26_local5 in pairs( f26_arg0.states[f25_local0] ) do
			f26_local0[f26_local4] = f26_local5
		end
		for f26_local4, f26_local5 in pairs( f25_local1 ) do
			f26_local0[f26_local4] = f26_local5
		end
		return f26_local0
	end
	
end

function OpenMenu( f27_arg0, f27_arg1, f27_arg2, f27_arg3 )
	local f27_local0 = f27_arg0
	local f27_local1 = f27_arg1
	local f27_local2 = f27_arg2
	local f27_local3 = f27_arg3
	return function ( f28_arg0, f28_arg1 )
		LUI.FlowManager.RequestAddMenu( f28_arg0, f27_local0, f27_local1, f28_arg1.controller, f27_local2, f27_local3 )
	end
	
end

function PopupMenu( f29_arg0, f29_arg1, f29_arg2, f29_arg3 )
	local f29_local0 = f29_arg0
	local f29_local1 = f29_arg1
	local f29_local2 = f29_arg2
	local f29_local3 = f29_arg3
	return function ( f30_arg0, f30_arg1 )
		LUI.FlowManager.RequestPopupMenu( f30_arg0, f29_local0, f29_local1, f30_arg1.controller, f29_local2, f29_local3 )
	end
	
end

function LeaveMenu()
	return function ( f32_arg0, f32_arg1 )
		LUI.FlowManager.RequestLeaveMenu( f32_arg0 )
	end
	
end

function RestoreMenu( f33_arg0, f33_arg1, f33_arg2 )
	return function ( f34_arg0, f34_arg1 )
		LUI.FlowManager.RequestRestoreMenu( f34_arg0, f33_arg0, f33_arg1, f34_arg1.controller, f33_arg2 )
	end
	
end

function CloseAllMenus()
	return function ( f36_arg0, f36_arg1 )
		LUI.FlowManager.RequestCloseAllMenus( f36_arg0, nil )
	end
	
end

function OpenOldMenu( f37_arg0 )
	local f37_local0 = f37_arg0
	return function ( f38_arg0, f38_arg1 )
		LUI.FlowManager.RequestOldMenu( f38_arg0, f37_local0 )
	end
	
end

function EmitEvent( f39_arg0 )
	local f39_local0 = f39_arg0
	if type( f39_local0 ) == "string" then
		f39_local0 = {
			name = f39_local0
		}
	end
	return function ( f40_arg0, f40_arg1 )
		f40_arg0:processEvent( f39_local0 )
	end
	
end

function EmitEventToParent( f41_arg0, f41_arg1 )
	local f41_local0
	if f41_arg1 then
		f41_local0 = f41_arg1.saveOriginal
		if not f41_local0 then
		
		else
			local f41_local1 = f41_arg0
			if not f41_local0 and type( f41_local1 ) == "string" then
				f41_local1 = {
					name = f41_local1
				}
			end
			return function ( f42_arg0, f42_arg1 )
				if f41_local0 then
					local f42_local0 = {}
					if type( f41_local1 ) == "string" then
						f42_local0.name = f41_local1
					else
						for f42_local4, f42_local5 in pairs( f41_local1 ) do
							f42_local0[f42_local4] = f42_local5
						end
					end
					f42_local0.original = f42_arg1
					return f42_arg0:dispatchEventToParent( f42_local0 )
				else
					return f42_arg0:dispatchEventToParent( f41_local1 )
				end
			end
			
		end
	end
	f41_local0 = false
end

function EmitEventToRoot( f43_arg0 )
	local f43_local0 = f43_arg0
	if type( f43_local0 ) == "string" then
		f43_local0 = {
			name = f43_local0
		}
	end
	return function ( f44_arg0, f44_arg1 )
		f44_arg0:dispatchEventToRoot( f43_local0 )
	end
	
end

function EmitOmnvarUpdateEventToRoot( f45_arg0 )
	return function ( f46_arg0 )
		f46_arg0:dispatchEventToRoot( {
			name = "omnvar_update",
			omnvar = f45_arg0,
			value = Game.GetOmnvar( f45_arg0 )
		} )
	end
	
end

f0_local0 = function ( f47_arg0, f47_arg1 )
	local f47_local0 = type( f47_arg0 )
	if f47_local0 == "function" then
		assert( f47_arg1.properties, "Item built that didn't get it's properties set!" )
		DebugPrint( "defaultDuration is " .. f47_arg0( f47_arg1.properties ) )
		return f47_arg0( f47_arg1.properties )
	elseif f47_local0 == "table" and f47_arg0.isProperty then
		assert( f47_arg1.properties, "Item built that didn't get it's properties set!" )
		DebugPrint( "defaultDuration is " .. f47_arg0.func( f47_arg1.properties ) )
		return f47_arg0.func( f47_arg1.properties )
	else
		return f47_arg0
	end
end

function AnimateToStateWithEvent( f48_arg0, f48_arg1, f48_arg2, f48_arg3 )
	local f48_local0 = f48_arg0
	local f48_local1 = f48_arg1
	local f48_local2 = f48_arg2
	local f48_local3 = f48_arg3
	return function ( f49_arg0, f49_arg1 )
		local f49_local0
		if f49_arg1 then
			f49_local0 = f49_arg1.duration
			if not f49_local0 then
			
			else
				local f49_local1 = f0_local0( f48_local2, f49_arg0 )
				local f49_local2 = f0_local0( f48_local3, f49_arg0 )
				if f49_arg0:hasAnimationState( f48_local0 ) then
					if Engine.GetDvarBool( "lui_print_anim_states" ) then
						local f49_local3 = "None"
						if f49_arg0.id ~= nil then
							f49_local3 = f49_arg0.id
						end
						DebugPrint( "LUI: AnimateToStateWithEvent: id: " .. f49_local3 .. " state: " .. f48_local0 )
					end
					f49_arg0:animateToState( f48_local0, f49_local0, f49_local1, f49_local2 )
				end
			end
		end
		f49_local0 = f0_local0( f48_local1, f49_arg0 )
	end
	
end

function AnimateToState( f50_arg0, f50_arg1, f50_arg2, f50_arg3 )
	local f50_local0 = f50_arg0
	local f50_local1 = f50_arg1
	local f50_local2 = f50_arg2
	local f50_local3 = f50_arg3
	return function ( f51_arg0, f51_arg1 )
		local f51_local0 = LUI.FormatAnimStateFinishEvent( f50_local0 )
		if f51_arg0.m_eventHandlers[f51_local0] then
			DebugPrint( "LUI Warning: AnimateLoop is overwriting an event handler " .. f50_local0 )
		end
		f51_arg0:registerEventHandler( f51_local0, nil )
		local f51_local1
		if f51_arg1 then
			f51_local1 = f51_arg1.duration
			if not f51_local1 then
			
			else
				local f51_local2 = f0_local0( f50_local2, f51_arg0 )
				local f51_local3 = f0_local0( f50_local3, f51_arg0 )
				if f51_arg0:hasAnimationState( f50_local0 ) then
					if Engine.GetDvarBool( "lui_print_anim_states" ) then
						local f51_local4 = "None"
						if f51_arg0.id ~= nil then
							f51_local4 = f51_arg0.id
						end
						DebugPrint( "LUI: AnimateToState: id: " .. f51_local4 .. " state: " .. f50_local0 )
					end
					f51_arg0:animateToState( f50_local0, f51_local1, f51_local2, f51_local3 )
				end
			end
		end
		f51_local1 = f0_local0( f50_local1, f51_arg0 )
	end
	
end

function ChooseAnimateToState( f52_arg0, f52_arg1, f52_arg2 )
	local f52_local0 = f52_arg0
	local f52_local1 = f52_arg1
	local f52_local2 = f52_arg2
	return function ( f53_arg0, f53_arg1 )
		local f53_local0 = f52_local2[1]
		if not f53_arg1 or not f53_arg1.duration then
			local f53_local1 = f0_local0( f52_local2[2], f53_arg0 )
		end
		local f53_local2 = f0_local0( f52_local2[3], f53_arg0 )
		local f53_local3 = f0_local0( f52_local2[4], f53_arg0 )
		if f52_local0( f53_arg0, f53_arg1 ) then
			f53_local0 = f52_local1[1]
			if f53_arg1 then
				local f53_local4 = f53_arg1.duration
			end
			local f53_local1 = f53_local4 or f0_local0( f52_local1[2], f53_arg0 )
			f53_local2 = f0_local0( f52_local1[3], f53_arg0 )
			f53_local3 = f0_local0( f52_local1[4], f53_arg0 )
		end
		if f53_arg0:hasAnimationState( f53_local0 ) then
			if Engine.GetDvarBool( "lui_print_anim_states" ) then
				local f53_local5 = "None"
				if f53_arg0.id ~= nil then
					f53_local5 = f53_arg0.id
				end
				DebugPrint( "LUI: ChooseAnimateToState: id: " .. f53_local5 .. " state: " .. f53_local0 )
			end
			f53_arg0:animateToState( f53_local0, f53_local1, f53_local2, f53_local3 )
		end
	end
	
end

function AnimateLoop( f54_arg0, f54_arg1, f54_arg2 )
	local f54_local0 = f54_arg0
	local f54_local1 = f54_arg1
	local f54_local2 = f54_arg2
	return function ( f55_arg0, f55_arg1 )
		f55_arg0:animateInLoop( f54_local0, f54_local1, f54_local2 )
	end
	
end

function AnimateSequence( f56_arg0 )
	local f56_local0 = f56_arg0
	local f56_local1 = requireFocus
	return function ( f57_arg0, f57_arg1 )
		f57_arg0:animateInSequence( f56_local0, f56_local1 )
	end
	
end

function AnimateSequenceAndClose( f58_arg0 )
	local f58_local0 = f58_arg0
	local f58_local1 = requireFocus
	return function ( f59_arg0, f59_arg1 )
		if Engine.GetDvarBool( "lui_print_anim_states" ) then
			local f59_local0 = "None"
			if f59_arg0.id ~= nil then
				f59_local0 = f59_arg0.id
			end
			DebugPrint( "LUI: AnimateSequence: id: " .. f59_local0 )
		end
		for f59_local3, f59_local4 in ipairs( f58_local0 ) do
			local f59_local5 = LUI.FormatAnimStateFinishEvent( f59_local4[1] )
			if f59_arg0.m_eventHandlers[f59_local5] then
				DebugPrint( "LUI Warning: AnimateSequence is overwriting an event handler " .. f59_local4[1] )
			end
			if Engine.GetDvarBool( "lui_print_anim_states" ) then
				DebugPrint( "\t->" .. f59_local4[1] )
			end
			f59_arg0:registerEventHandler( f59_local5, nil )
		end
		f59_local0 = assert
		f59_local1 = f58_local0
		if f59_local1 then
			f59_local1 = #f58_local0
		end
		f59_local0( f59_local1, "AnimateSequence does not have animation states!" )
		f59_local0 = f58_local0[1]
		f59_local1 = f58_local0[#f58_local0]
		f59_local2 = LUI.FormatAnimStateFinishEvent( f59_local0[1] )
		if #f58_local0 == 1 then
			DebugPrint( "LUI Warning: AnimateSequence only has one animation state! " .. f58_local0[1][1] )
		else
			f59_arg0:registerEventHandler( f59_local2, LUI.UIElement.intAnimate( f58_local0, f58_local1, 0, true ) )
		end
		f59_arg0:animateToState( f59_local0[1], f59_local0[2], f59_local0[3], f59_local0[4] )
	end
	
end

function BuildSpriteAnim( f60_arg0, f60_arg1, f60_arg2, f60_arg3, f60_arg4, f60_arg5, f60_arg6 )
	if f60_arg0.states == nil then
		f60_arg0.states = {}
	end
	for f60_local3, f60_local4 in ipairs( f60_arg2 ) do
		f60_arg0.states["animstate_" .. f60_arg1 .. "_" .. f60_local3] = {
			material = RegisterMaterial( f60_local4 )
		}
	end
	if f60_arg4 then
		f60_arg0.states.endstate = f60_arg4
	end
	f60_local0 = {}
	for f60_local1 = 1, #f60_arg2, 1 do
		f60_local0[f60_local1] = {
			"animstate_" .. f60_arg1 .. "_" .. f60_local1,
			1000 / f60_arg3
		}
	end
	if f60_arg4 then
		f60_local0[#f60_arg2 + 1] = {
			"endstate",
			0
		}
	end
	if f60_arg0.properties == nil then
		f60_arg0.properties = {}
	end
	f60_local1 = f60_arg6
	f60_arg0.properties["spriteanime_" .. f60_arg1] = f60_local0
	if f60_arg5 then
		return function ( f61_arg0, f61_arg1 )
			f61_arg0:animateInLoop( f61_arg0.properties["spriteanime_" .. f61_arg1], nil, nil, true, f60_local1 )
		end
		
	else
		return function ( f62_arg0, f62_arg1 )
			f62_arg0:animateInSequence( f62_arg0.properties["spriteanime_" .. f62_arg1], nil, true, f60_local1 )
		end
		
	end
end

function DoMultiple( f63_arg0 )
	local f63_local0 = f63_arg0
	return function ( f64_arg0, f64_arg1 )
		for f64_local3, f64_local4 in ipairs( f63_local0 ) do
			assert( type( f64_local4 ) == "function" )
			f64_local4( f64_arg0, f64_arg1 )
		end
	end
	
end

function HandleSilently( f65_arg0 )
	return function ( f66_arg0, f66_arg1 )
		if not f66_arg1.dispatchChildren then
			f66_arg0:dispatchEventToChildren( f66_arg1 )
		end
		return f65_arg0( f66_arg0, f66_arg1 )
	end
	
end

function DvarUpdateFilter( f67_arg0, f67_arg1 )
	local f67_local0 = f67_arg0
	return function ( f68_arg0, f68_arg1 )
		if f68_arg1.dvar ~= f67_local0 then
			return f68_arg0:dispatchEventToChildren( f68_arg1 )
		else
			return f67_arg1( f68_arg0, f68_arg1 )
		end
	end
	
end

function SplitDvarUpdateEvent( ... )
	local f69_local0 = {
		...
	}
	local f69_local1 = {}
	for f69_local2 = 1, #f69_local0, 1 do
		f69_local1[f69_local0[f69_local2]] = true
	end
	return function ( f70_arg0, f70_arg1 )
		if f69_local1[f70_arg1.dvar] then
			f70_arg0:processEvent( {
				name = f70_arg1.dvar,
				dvar = f70_arg1.dvar,
				value = f70_arg1.value
			} )
		else
			f70_arg0:dispatchEventToChildren( f70_arg1 )
		end
	end
	
end

function OmnvarUpdateFilter( f71_arg0, f71_arg1 )
	return {
		[f71_arg0] = f71_arg1
	}
end

function HandlePrint( f72_arg0 )
	local f72_local0 = f72_arg0
	return function ( f73_arg0, f73_arg1 )
		DebugPrint( f72_local0 )
	end
	
end

function UpdateTextWithCall( f74_arg0, ... )
	local f74_local0 = {
		...
	}
	return function ( f75_arg0, f75_arg1 )
		if f74_arg0 ~= nil then
			local f75_local0 = f74_arg0( unpack( f74_local0 ) )
			if f75_local0 ~= nil then
				f75_arg0:setText( f75_local0 )
			end
		end
	end
	
end

function NewButtonPrompt( f76_arg0, f76_arg1, f76_arg2, f76_arg3, f76_arg4, f76_arg5, f76_arg6 )
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
	if f76_arg1 ~= nil and f76_arg1 ~= "" then
		self:setText( f76_arg1 )
	end
	if f76_arg4 then
		f76_arg2.qualifier = f76_arg4
	end
	if f76_arg2 ~= nil and f76_arg3 ~= nil then
		self:registerEventHandler( "gamepad_button", function ( element, event )
			if not element.disabled and event.down == true then
				if event.button == f76_arg0 and (f76_arg4 == nil or event.qualifier == f76_arg4) then
					f76_arg2:processEvent( {
						name = f76_arg3,
						controller = event.controller
					} )
					if f76_arg6 and LUI.FlowManager.IsTopMenuModal() then
						return 
					else
						return true
					end
				elseif CoD.isPC and event.button == "key_shortcut" and (event.key == f76_arg5 or event.bind1 == bindPlayer) then
					f76_arg2:processEvent( {
						name = f76_arg3,
						controller = event.controller
					} )
					return true
				end
			end
		end )
	end
	return self
end

function CreateArrowButtonFactory( f78_arg0, f78_arg1, f78_arg2, f78_arg3, f78_arg4 )
	local f78_local0 = 12
	if f78_arg1 then
		f78_local0 = -f78_local0 or f78_local0
	end
	local f78_local1 = 12
	local f78_local2 = 0.9
	local self = LUI.UIImage.new()
	self.id = "arrow_gfx"
	local f78_local4 = self
	local f78_local5 = self.registerAnimationState
	local f78_local6 = "default"
	local f78_local7 = {
		material = RegisterMaterial( "h1_deco_option_scrollbar_arrows" ),
		topAnchor = true,
		bottomAnchor = false,
		leftAnchor = true,
		rightAnchor = false,
		top = 10
	}
	local f78_local8
	if f78_arg1 then
		f78_local8 = 25
		if not f78_local8 then
		
		else
			f78_local7.left = f78_local8
			f78_local7.width = f78_local0
			f78_local7.height = f78_local1
			f78_local7.red = 1
			f78_local7.green = 1
			f78_local7.blue = 1
			f78_local7.alpha = 0
			f78_local5( f78_local4, f78_local6, f78_local7 )
			self:animateToState( "default" )
			self:registerAnimationState( "disabled", {
				red = 1,
				green = 1,
				blue = 1,
				alpha = 0.3,
				width = f78_local0,
				height = f78_local1
			} )
			self:registerAnimationState( "unselected", {
				red = 1,
				green = 1,
				blue = 1,
				alpha = 0.5,
				width = f78_local0,
				height = f78_local1
			} )
			self:registerAnimationState( "hover", {
				red = 1,
				green = 1,
				blue = 1,
				alpha = 1,
				width = f78_local0,
				height = f78_local1
			} )
			self:registerAnimationState( "pulse", {
				red = 0.86,
				green = 0.81,
				blue = 0.33,
				alpha = 1,
				width = f78_local0 * f78_local2,
				height = f78_local1 * f78_local2
			} )
			f78_local4 = self
			f78_local5 = self.registerEventHandler
			f78_local6 = "content_arrow_"
			if f78_arg1 then
				f78_local7 = "left"
				if not f78_local7 then
				
				else
					f78_local5( f78_local4, f78_local6 .. f78_local7, function ( f79_arg0, f79_arg1 )
						if self.hasFocus then
							local f79_local0 = MBh.AnimateSequence( {
								{
									"pulse",
									100
								},
								{
									"hover",
									200
								}
							} )
							f79_local0( f79_arg0, f79_arg1 )
						else
							local f79_local0 = MBh.AnimateSequence( {
								{
									"pulse",
									100
								},
								{
									"unselected",
									200
								}
							} )
							f79_local0( f79_arg0, f79_arg1 )
						end
					end )
					f78_local5 = yOffset
					f78_local4 = LUI.UIButton.new()
					f78_local4.id = "arrow_" .. f78_arg0
					f78_local4.m_requireFocusType = FocusType.MouseOver
					f78_local7 = f78_local4
					f78_local6 = f78_local4.registerAnimationState
					f78_local8 = "default"
					local f78_local9 = {
						topAnchor = true,
						bottomAnchor = true,
						leftAnchor = f78_arg1,
						rightAnchor = not f78_arg1,
						top = 0,
						bottom = 0
					}
					local f78_local10
					if f78_arg1 then
						f78_local10 = 1
						if not f78_local10 then
						
						else
							f78_local10 = f78_arg3 * f78_local10
							local f78_local11
							if f78_arg1 then
								f78_local11 = 0
								if not f78_local11 then
								
								else
									f78_local9.left = f78_local10 + 10 * f78_local11 - 11
									if f78_arg1 then
										f78_local10 = 1
										if not f78_local10 then
										
										else
											f78_local10 = f78_arg3 * f78_local10
											if f78_arg1 then
												f78_local11 = 1
												if not f78_local11 then
												
												else
													f78_local9.right = f78_local10 + 10 * f78_local11 + 11
													f78_local6( f78_local7, f78_local8, f78_local9 )
													f78_local4.properties = f78_local4.properties or {}
													f78_local4.properties.muteAction = true
													f78_local4:animateToState( "default" )
													f78_local6 = function ( f80_arg0, f80_arg1 )
														if self.visible then
															self:animateToState( "default" )
															self.visible = nil
															f80_arg0.gainFocusSFX = nil
														end
													end
													
													f78_local4:registerEventHandler( "hide_arrows", f78_local6 )
													f78_local8 = f78_local4
													f78_local7 = f78_local4.registerEventHandler
													f78_local9 = "hide_arrow_"
													if f78_arg1 then
														f78_local10 = "left"
														if not f78_local10 then
														
														else
															f78_local7( f78_local8, f78_local9 .. f78_local10, f78_local6 )
															f78_local7 = function ( f81_arg0, f81_arg1 )
																if not self.visible then
																	self.hasFocus = false
																	self:animateToState( "unselected" )
																	self.visible = true
																	f81_arg0.gainFocusSFX = CoD.SFX.MouseOver
																end
															end
															
															f78_local4:registerEventHandler( "show_arrows", f78_local7 )
															f78_local9 = f78_local4
															f78_local8 = f78_local4.registerEventHandler
															f78_local10 = "show_arrow_"
															if f78_arg1 then
																f78_local11 = "left"
																if not f78_local11 then
																
																else
																	f78_local8( f78_local9, f78_local10 .. f78_local11, f78_local7 )
																	f78_local8 = function ( f82_arg0, f82_arg1 )
																		if self.visible then
																			self:animateToState( "disabled" )
																		end
																	end
																	
																	f78_local4:registerEventHandler( "disable_arrows", f78_local7 )
																	f78_local10 = f78_local4
																	f78_local9 = f78_local4.registerEventHandler
																	f78_local11 = "disable_arrow_"
																	local f78_local12
																	if f78_arg1 then
																		f78_local12 = "left"
																		if not f78_local12 then
																		
																		else
																			f78_local9( f78_local10, f78_local11 .. f78_local12, f78_local7 )
																			f78_local4:registerEventHandler( "button_over", function ( element, event )
																				self.hasFocus = true
																				self:animateToState( "hover" )
																			end )
																			f78_local4:registerEventHandler( "button_up", function ( element, event )
																				self.hasFocus = false
																				if self:getAnimationStateName() == "hover" then
																					self:animateToState( "unselected" )
																				end
																			end )
																			f78_local4:processEvent( {
																				name = "hide_arrows"
																			} )
																			f78_local4:addElement( self )
																			if f78_arg4 ~= nil then
																				if f78_arg1 then
																					f78_local9 = "left"
																					if not f78_local9 then
																					
																					else
																						f78_arg2:registerEventHandler( "button_" .. f78_local9, f78_arg4 )
																					end
																				end
																				f78_local9 = "right"
																			end
																			if not Engine.IsConsoleGame() then
																				if f78_arg4 ~= nil then
																					f78_local4:registerEventHandler( "button_action", f78_arg4 )
																				end
																				f78_local9 = LUI.UIButtonRepeater.new( "leftmouse", "button_action", f78_local4 )
																				f78_local9:disable()
																				f78_local9:registerEventHandler( "button_up", f78_local9.disable )
																				f78_local9:registerEventHandler( "button_over", f78_local9.enable )
																				f78_local9:registerEventHandler( "button_over_disable", f78_local9.disable )
																				f78_local4:addElement( f78_local9 )
																				f78_local4.shareFocus = true
																				if useText then
																					f78_local9:setMinDelay( 240 )
																				end
																			end
																			return f78_local4
																		end
																	end
																	f78_local12 = "right"
																end
															end
															f78_local11 = "right"
														end
													end
													f78_local10 = "right"
												end
											end
											f78_local11 = 0
										end
									end
									f78_local10 = -1
								end
							end
							f78_local11 = -1
						end
					end
					f78_local10 = -1
				end
			end
			f78_local7 = "right"
		end
	end
	f78_local8 = 10
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
