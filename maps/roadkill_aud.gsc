// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID8467();
    _ID19806();
    _ID19703();
    _ID22056();
    _ID22043();
    thread _ID22042();
    _ID9159();
    _ID28366();
    _ID29419();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_roadkill_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{

}

_ID22043()
{

}

_ID22042()
{
    wait 0.1;
}

_ID9159()
{

}

_ID28366()
{

}

_ID29419()
{
    _ID42475::_ID34640( "start_riverbank_checkpoint", ::_ID53361 );
    _ID42475::_ID34640( "start_convoy_checkpoint", ::_ID51477 );
    _ID42475::_ID34640( "start_ride_checkpoint", ::_ID54721 );
    _ID42475::_ID34640( "start_crazy_ride_checkpoint", ::_ID44313 );
    _ID42475::_ID34640( "start_crazy_ride_later_checkpoint", ::_ID43849 );
    _ID42475::_ID34640( "start_dismount_checkpoint", ::_ID43544 );
    _ID42475::_ID34640( "start_roadkill_school_fight_checkpoint", ::_ID49063 );
    _ID42475::_ID34640( "start_roadkill_endfight_checkpoint", ::_ID54419 );
    _ID42475::_ID34640( "start_roadkill_end_checkpoint", ::_ID48013 );
    _ID42475::_ID34640( "start_interior_vehicle_context", ::_ID51595 );
    _ID42475::_ID34640( "stop_interior_vehicle_context", ::_ID52093 );
    _ID42475::_ID34640( "start_stryker_01", ::_ID52388 );
    _ID42475::_ID34640( "start_stryker_02", ::_ID51872 );
    _ID42475::_ID34640( "scn_npc_technical_stop_to_shoot_01", ::scn_npc_technical_stop_to_shoot_01 );
    _ID42475::_ID34640( "start_technical_pickup_blocking_path", ::start_technical_pickup_blocking_path );
    _ID42475::_ID34640( "start_shellshock_mix", ::start_shellshock_mix );
    _ID42475::_ID34640( "stop_shellshock_mix", ::stop_shellshock_mix );
    _ID42475::_ID34640( "start_pushed_truck_mix", ::start_pushed_truck_mix );
    _ID42475::_ID34640( "stop_pushed_truck_mix", ::stop_pushed_truck_mix );
    _ID42475::_ID34640( "start_ambush_mix", ::start_ambush_mix );
    _ID42475::_ID34640( "start_ambush_flee_mix", ::start_ambush_flee_mix );
    _ID42475::_ID34640( "scn_plr_laatpv_05_flee_area_02", ::player_laatpv_flee_area_02 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID53361( var_0 )
{
    _ID42474::_ID4669( "exterior" );
    _ID42465::_ID23797( "fade_in_level_mix" );
    _ID42465::_ID23797( "intro_inside_vehicle_mix" );
    level.player thread _ID42407::_ID27080( "scn_roadkill_blackscreen_front", undefined, 1 );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    _ID42465::_ID23801( "fade_in_level_mix" );
}

_ID51477( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID54721( var_0 )
{
    _ID42474::_ID4669( "exterior_street" );
}

_ID44313( var_0 )
{
    _ID42474::_ID4669( "exterior_street" );
}

_ID43849( var_0 )
{
    _ID42474::_ID4669( "exterior_street" );
}

_ID43544( var_0 )
{
    _ID42474::_ID4669( "exterior_street" );
}

_ID49063( var_0 )
{
    _ID42474::_ID4669( "exterior_street" );
}

_ID54419( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID48013( var_0 )
{
    _ID42474::_ID4669( "exterior_street" );
}

_ID51595()
{
    enablecontext( "bullet_metal_vehicle" );
}

_ID52093()
{
    disablecontext( "bullet_metal_vehicle" );
}

_ID52388( var_0 )
{
    _ID42237::_ID14413( "convoy_oscar_mike_after_explosion" );
    wait 1.5;
    var_0 thread _ID42407::_ID27080( "scn_npc_stryker_enter_city_01", undefined, 1 );
}

_ID51872( var_0 )
{
    var_0 thread _ID42407::_ID27080( "scn_npc_stryker_enter_city_02", undefined, 1 );
}

start_shellshock_mix()
{
    _ID42465::_ID23797( "shellshock_intro_plr_get_up_mix" );
}

stop_shellshock_mix()
{
    _ID42465::_ID23801( "shellshock_intro_plr_get_up_mix" );
}

start_pushed_truck_mix()
{
    _ID42465::_ID23797( "ram_pickup_mix" );
}

stop_pushed_truck_mix()
{
    _ID42465::_ID23801( "ram_pickup_mix" );
}

start_ambush_mix()
{
    _ID42465::_ID23801( "vehicle_ride_mix" );
    _ID42465::_ID23797( "ambush_mix" );
}

start_ambush_flee_mix()
{
    _ID42465::_ID23797( "ambush_flee_mix" );
}

_ID46869( var_0, var_1, var_2 )
{
    _ID47662( var_0, 0.05 );

    if ( isdefined( var_1 ) )
        level.player thread _ID42407::_ID27079( var_1 );

    if ( isdefined( var_2 ) )
    {
        _ID42465::_ID23797( var_2 );

        if ( var_2 == "shellshock_intro_mix" )
        {
            _ID42465::_ID23801( "intro_inside_vehicle_mix" );
            _ID42465::_ID23801( "intro_inside_vehicle_explosion_mix" );
        }

        if ( var_2 == "shellshock_latvee_ambush_02_mix" )
        {
            _ID42465::_ID23801( "ambush_mix" );
            _ID42465::_ID23801( "ambush_flee_mix" );
            _ID42465::_ID23801( "shellshock_latvee_ambush_02_slomo_mix" );
            _ID42476::_ID34512( "slomo" );
        }
    }

    wait(var_0);

    if ( isdefined( var_2 ) )
        _ID42465::_ID23801( var_2 );

    _ID44578( 1 );
}

_ID47662( var_0, var_1 )
{
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "post_explosion_filter", var_1 );
}

_ID44578( var_0 )
{
    _ID42490::_ID34527( var_0 );
    wait(var_0 + 0.05);
    _ID42490::_ID34501( 0 );
    _ID42474::_ID4655( 0 );
}

_ID47919()
{
    wait 0.1;
    thread _ID53893( level._ID48503, "scn_friendly_open_latvee_arrive_01" );
    thread _ID53893( level._ID52834["detour"], "scn_laatpv_detour_arrive_01" );
    thread _ID53893( level._ID52834["player"], "scn_laatpv_player_arrive_01" );
    thread _ID53893( level._ID52834["rear"], "scn_laatpv_rear_arrive_01" );
}

_ID53893( var_0, var_1 )
{
    var_0 _ID50111();
    var_0 thread _ID42407::_ID27081( var_1 );
    var_0 waittill( "vehicle_flag_arrived" );
    var_0 _ID47418();
}

_ID51245( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    _ID50111();
    _ID42407::_ID27081( var_1 );
    _ID47418();
}

_ID46867()
{
    switch ( level._ID35897 )
    {
        case "default":
        case "intro":
        case "riverbank":
        case "move_out":
        case "convoy":
            _ID42237::_ID14413( "convoy_crosses_bridge3" );
            thread _ID50111();
            thread _ID42407::_ID27001( "scn_plr_laatpv_02_enter_city_01", undefined, 1, undefined, 0, 1 );
        case "ride":
            _ID42237::_ID14413( "shot_rings_out" );
            wait 1.5;
            thread _ID42237::_ID36516( "scn_plr_laatpv_02_enter_city_01" );
            thread _ID42407::_ID27001( "scn_plr_laatpv_02_enter_city_02", undefined, 1, 1, 0.1, 0.5 );
        case "ambush":
        case "ride_later":
        case "ride_end":
            _ID42237::_ID14413( "ambush" );
            thread _ID42237::_ID36516( "scn_plr_laatpv_02_enter_city_02" );
        case "end":
        case "dismount":
        case "school":
        case "endfight":
            break;
        default:
            break;
    }
}

_ID44074()
{
    thread _ID42407::_ID27081( "scn_plr_laatpv_03_shellshock_rev_01" );
}

_ID44789()
{
    thread _ID42407::_ID27081( "scn_plr_laatpv_05_flee_area_01" );
}

player_laatpv_flee_area_02( var_0 )
{
    _ID42407::_ID27081( "scn_plr_laatpv_05_flee_area_02" );
}

_ID47450()
{
    thread _ID42407::_ID27081( "scn_plr_laatpv_05_flee_area_03" );
}

player_laatpv_flee_area_04( var_0 )
{
    level._ID47723 thread _ID42407::_ID27081( "scn_plr_laatpv_05_flee_area_04" );
}

_ID50111()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID47418()
{
    wait 0.1;
    self vehicle_turnengineon();
    self._ID31138 = 0;
}

_ID47883()
{
    _ID42237::_ID14413( "h2_intro_done" );
    var_0 = _ID42407::_ID16262( "intro_soldier_01", "script_noteworthy" );
    var_1 = _ID42407::_ID16262( "intro_soldier_02", "script_noteworthy" );
    wait 2;
    wait 2;
    var_1 _ID42407::_ID27079( "roadkill_custom_target_acquired" );
}

_ID49024( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = "script_noteworthy";

    var_3 = _ID42407::_ID16262( var_0, var_2 );
    var_3 waittill( "trigger",  var_4  );
    var_4 _ID42407::_ID27080( var_1, undefined, 1 );
    return var_4;
}

_ID46321()
{
    var_0 = _ID49024( "pickup_arrival_node", "scn_roadkill_pickup_truck_appear_01", "script_noteworthy" );
    _ID42237::_ID14413( "bridge_truck_leaves" );
    var_0 _ID42407::_ID27080( "scn_roadkill_pickup_truck_leave_01", undefined, 1 );
}

_ID47719( var_0 )
{
    _ID42237::_ID27077( "scn_shellshock_intro_plr_getup", ( 0, 0, 0 ) );
}

scn_apache_show_building_scripted_sfx()
{
    _ID50111();
    _ID42407::_ID27081( self._ID43356 );
}

_ID53506()
{
    thread _ID50111();
    self playsound( "scn_roadkill_bridge_tank_crossing" );
}

_ID51695()
{
    thread _ID50111();
    _ID42237::_ID27000( "scn_npc_heli_idle_01", undefined, undefined, 1.5 );
}

_ID52617()
{
    _ID42237::_ID36516( "scn_npc_heli_idle_01" );
    self playsound( "scn_npc_heli_flyaway_01" );
}

_ID49995()
{
    wait 9;
    thread _ID42237::_ID27077( "AB_1_callout_contactclock_10_Custom", ( -8391.91, 6239.21, 681.8 ) );
    wait 5;
    thread _ID42237::_ID27077( "AB_1_callout_contactclock_1_Custom", ( -7496.85, 6590.91, 560.12 ) );
    wait 6;
    thread _ID42237::_ID27077( "AB_1_callout_contactclock_11_Custom", ( -8202.69, 7598.86, 528 ) );
}

plr_oob_gunfire_aud()
{
    level.player endon( "death" );
    var_0 = getent( "oob_gunfire_ent", "targetname" );

    for (;;)
    {
        var_0 thread _ID42407::_ID27079( "scn_h2_wpn_ak47_npc_close" );
        wait 0.1;
    }
}

scn_npc_technical_stop_to_shoot_01( var_0 )
{
    var_0 _ID50111();
    var_0 thread _ID42407::_ID27079( "scn_npc_technical_stop_to_shoot_01" );
}

start_technical_pickup_blocking_path()
{
    level._ID52139 thread _ID42407::_ID27079( "scn_npc_technical_pickup_blocking_path" );
}

scripted_sfx_intro_ride_explosion()
{
    self waittill( "death" );
    _ID42465::_ID23797( "intro_inside_vehicle_explosion_mix" );
    level.player thread _ID42407::_ID27079( "scn_mission_truck_intro_player_impact" );
}

bridge_layer_impact_snd()
{
    level endon( "bridge_baddies_retreat" );

    for (;;)
    {
        self waittill( "damage" );
        self playsound( "scn_roadkill_bridge_tank_impact" );
    }
}

bridge_lower_end()
{
    self playsound( "scn_roadkill_bridgedown_part2" );
    self waittillmatch( "single anim",  "bridge_lower_end"  );
    self setvolume( 0, 1.5 );
    thread _ID42407::_ID27079( "scn_roadkill_bridgedown_part2_end" );
    wait 1.5;
    self _meth_8561( "scn_roadkill_bridgedown_part2" );
}

dismount_rpg_slomo_mix()
{
    _ID42465::_ID23797( "shellshock_latvee_ambush_02_slomo_mix" );
    _ID42476::_ID34518( "slomo" );
    level.player _ID42407::_ID27079( "scn_ride_killer_rpg_shoot_slomo_in" );
}

traffic_jam_truck_impact_01( var_0 )
{
    _ID42237::_ID27077( "scn_npc_technical_pickup_impact_01", ( -3897.13, 8096.47, 462.814 ) );
}

traffic_jam_truck_impact_02( var_0 )
{
    _ID42237::_ID27077( "scn_npc_technical_pickup_impact_02", ( -3897.13, 8096.47, 462.814 ) );
}

school_latvee_sounds()
{
    thread _ID50111();
    thread _ID42407::_ID27081( self._ID43356, undefined );
}
