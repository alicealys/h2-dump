if not HudUtility then
	HudUtility = {}
end
HudUtility.hud_state_on = {
	alpha = 1
}
HudUtility.hud_state_off = {
	alpha = 0
}
HudUtility.HudMenuFilter = function ( f1_arg0 )
	return function ( f5_arg0, f5_arg1 )
		assert( f5_arg0.properties.HudMenuName, f5_arg0.id .. " is missing self.properties.HideEventName" )
		if f5_arg1.menu == f5_arg0.properties.HudMenuName or f5_arg0.properties.HudMenuName2 and f5_arg1.menu == f5_arg0.properties.HudMenuName2 then
			f1_arg0( f5_arg0, f5_arg1 )
		elseif not LUI.EventCatcher.isDirectDispatchEventType( f5_arg1.name ) then
			f5_arg0:dispatchEventToChildren( f5_arg1 )
		end
	end
	
end

HudUtility.ShowHudNoFilter = function ( f2_arg0 )
	if f2_arg0.hidden or f2_arg0.hidden == nil then
		f2_arg0.hidden = false
		f2_arg0.hideTimer = 0
		f2_arg0:animateToState( "hud_on", 50 )
	end
end

HudUtility.ShowHud = HudUtility.HudMenuFilter( HudUtility.ShowHudNoFilter )
HudUtility.HideHudNoFilter = function ( f3_arg0 )
	if not f3_arg0.hidden then
		f3_arg0.hidden = true
		if Engine.GetDvarBool( "hideHudFast" ) then
			f3_arg0:animateToState( "hud_off", 0 )
		else
			local f3_local0 = 8000
			if f3_arg0.properties.HudMenuName == "Ammo" then
				f3_local0 = Engine.GetDvarFloat( "hud_fade_ammodisplay" ) * 1000
			elseif f3_arg0.properties.HudMenuName == "Stance" then
				f3_local0 = Engine.GetDvarFloat( "hud_fade_stance" ) * 1000
			elseif f3_arg0.properties.HudMenuName == "Offhand" then
				f3_local0 = Engine.GetDvarFloat( "hud_fade_offhand" ) * 1000
			end
			f3_arg0.hideTimer = f3_local0
		end
	end
end

HudUtility.HideHud = HudUtility.HudMenuFilter( HudUtility.HideHudNoFilter )
HudUtility.HideTimer = function ( f4_arg0, f4_arg1 )
	if f4_arg0.hideTimer and f4_arg0.hideTimer > 0 then
		f4_arg0.hideTimer = f4_arg0.hideTimer - f4_arg1.timeElapsed
		if f4_arg0.hideTimer <= 0 then
			f4_arg0:animateToState( "hud_off", 500 )
		end
	end
end

