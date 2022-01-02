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
    thread _ID51200();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_invasion_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    thread _ID45450();
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
    _ID42475::_ID34640( "start_latvee_checkpoint", ::_ID52399 );
    _ID42475::_ID34640( "start_yards_checkpoint", ::_ID51356 );
    _ID42475::_ID34640( "start_bmp_checkpoint", ::_ID48395 );
    _ID42475::_ID34640( "start_pizza_checkpoint", ::_ID47234 );
    _ID42475::_ID34640( "start_gas_checkpoint", ::_ID50025 );
    _ID42475::_ID34640( "start_crash_checkpoint", ::_ID54460 );
    _ID42475::_ID34640( "start_nates_roof_checkpoint", ::_ID43255 );
    _ID42475::_ID34640( "start_attack_dinner_checkpoint", ::_ID46145 );
    _ID42475::_ID34640( "start_defend_dinner_checkpoint", ::_ID50698 );
    _ID42475::_ID34640( "start_diner_checkpoint", ::_ID45208 );
    _ID42475::_ID34640( "start_burgertown_checkpoint", ::_ID50326 );
    _ID42475::_ID34640( "start_vip_escort_checkpoint", ::_ID50338 );
    _ID42475::_ID34640( "start_defend_BT_checkpoint", ::_ID53537 );
    _ID42475::_ID34640( "start_helis_checkpoint", ::_ID51814 );
    _ID42475::_ID34640( "start_convoy_checkpoint", ::_ID51477 );
    _ID42475::_ID34640( "start_btr80_smash_checkpoint", ::_ID44672 );
    _ID42475::_ID34640( "start_interior_vehicle_open", ::_ID50271 );
    _ID42475::_ID34640( "start_player_exit_vehicle", ::_ID44791 );
    _ID42475::_ID34640( "start_fade_out_level", ::_ID52274 );
    _ID42475::_ID34640( "stop_laatpv_ride_intro", ::_ID44007 );
    _ID42475::_ID34640( "start_plr_latvee_engine", ::_ID45264 );
    _ID42475::_ID34640( "stop_plr_latvee_engine", ::_ID51457 );
    _ID42475::_ID34640( "intro_btr_showing_up", ::_ID47163 );
    _ID42475::_ID34640( "start_convoy_bradley_01", ::_ID49425 );
    _ID42475::_ID34640( "stop_convoy_bradley_01", ::_ID47987 );
    _ID42475::_ID34640( "start_convoy_bradley_02", ::_ID54274 );
    _ID42475::_ID34640( "stop_convoy_bradley_02", ::_ID49832 );
    _ID42475::_ID34640( "start_convoy_laatpv_01", ::_ID53866 );
    _ID42475::_ID34640( "stop_convoy_laatpv_01", ::_ID53043 );
    _ID42475::_ID34640( "start_convoy_laatpv_02", ::_ID47960 );
    _ID42475::_ID34640( "stop_convoy_laatpv_02", ::_ID43176 );
    _ID42475::_ID34640( "start_convoy_laatpv_03", ::_ID44618 );
    _ID42475::_ID34640( "stop_convoy_laatpv_03", ::_ID44945 );
    _ID42475::_ID34640( "start_gas_station_truck", ::_ID50542 );
    _ID42475::_ID34640( "stop_gas_station_truck", ::_ID51675 );
    _ID42475::_ID34640( "start_btr80_intro_01", ::_ID47813 );
    _ID42475::_ID34640( "stop_btr80_intro_01", ::_ID52775 );
    _ID42475::_ID34640( "start_bm21_nate_rooftop_01", ::_ID49436 );
    _ID42475::_ID34640( "stop_bm21_nate_rooftop_01", ::_ID43448 );
    _ID42475::_ID34640( "start_bm21_nate_rooftop_02", ::_ID50604 );
    _ID42475::_ID34640( "stop_bm21_nate_rooftop_02", ::_ID50822 );
    _ID42475::_ID34640( "start_bm21_north_01", ::_ID51335 );
    _ID42475::_ID34640( "stop_bm21_north_01", ::_ID52709 );
    _ID42475::_ID34640( "start_bm21_north_02", ::_ID51671 );
    _ID42475::_ID34640( "stop_bm21_north_02", ::_ID47146 );
    _ID42475::_ID34640( "play_additionnal_fs_sfx", ::_ID52187 );
    _ID42475::_ID34640( "player_predator_use", ::_ID51106 );
    _ID42475::_ID34640( "player_predator_end", ::_ID50400 );
    _ID42475::_ID34640( "start_carrier_putdown", ::start_carrier_putdown );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID52399( var_0 )
{
    _ID42474::_ID4669( "interior_vehicle_open" );
    _ID42465::_ID23797( "laatpv_ride_intro" );
    level.player _ID42407::_ID27080( "scn_player_intro_blackscreen", undefined, undefined );
}

_ID51356( var_0 )
{
    _ID42474::_ID4669( "exterior0" );
}

_ID48395( var_0 )
{
    _ID42474::_ID4669( "exterior0" );
}

_ID47234( var_0 )
{
    _ID42474::_ID4669( "exterior0" );
}

_ID50025( var_0 )
{
    _ID42474::_ID4669( "exterior1" );
}

_ID54460( var_0 )
{
    _ID42474::_ID4669( "exterior1" );
}

_ID43255( var_0 )
{
    _ID42474::_ID4669( "exterior_roof" );
}

_ID46145( var_0 )
{
    _ID42474::_ID4669( "exterior1" );
}

_ID50698( var_0 )
{
    _ID42474::_ID4669( "interior" );
}

_ID45208( var_0 )
{
    _ID42474::_ID4669( "interior" );
}

_ID50326( var_0 )
{
    _ID42474::_ID4669( "interior" );
}

_ID50338( var_0 )
{
    _ID42474::_ID4669( "exterior1" );
}

_ID53537( var_0 )
{
    _ID42474::_ID4669( "exterior1" );
}

_ID51814( var_0 )
{
    _ID42474::_ID4669( "exterior1" );
}

_ID51477( var_0 )
{
    _ID42474::_ID4669( "exterior1" );
}

_ID44672( var_0 )
{
    _ID42474::_ID4669( "exterior1" );
}

_ID50271()
{
    _ID42474::_ID4669( "interior_vehicle_open" );
}

_ID44791()
{
    _ID42474::_ID4669( "exterior0" );
}

_ID52274()
{
    _ID42465::_ID23797( "fade_out_level_mix" );
}

_ID47163()
{
    _ID42465::_ID23797( "intro_btr_showing_up" );
}

_ID45264( var_0 )
{
    _ID42407::_ID27001( "scn_invasion_plr_laatpv_intro_01", "tag_engine_right", 1, 1 );
}

_ID51457()
{
    level._ID51831 _ID42237::_ID36516( "scn_invasion_plr_laatpv_intro_01" );
    level._ID51831 thread _ID42407::_ID27081( "scn_invasion_plr_laatpv_brake_01", "tag_wheel_front_right" );
    level._ID51831 _ID42407::_ID27001( "scn_invasion_plr_laatpv_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID49425( var_0 )
{
    _ID42407::_ID27001( "scn_invasion_bradley_approach_01", "tag_engine_right", 1, 1 );
}

_ID47987( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_bradley_approach_01" );
    thread _ID42407::_ID27081( "scn_invasion_bradley_breaking_01", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_bradley_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID54274( var_0 )
{
    _ID42407::_ID27001( "scn_invasion_bradley_approach_02", "tag_engine_right", 1, 1 );
}

_ID49832( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_bradley_approach_02" );
    thread _ID42407::_ID27081( "scn_invasion_bradley_breaking_02", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_bradley_idle_02", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID53866( var_0 )
{
    _ID42407::_ID27001( "scn_invasion_laatpv_approach_01", "tag_engine_right", 1, 1 );
}

_ID53043( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_laatpv_approach_01" );
    thread _ID42407::_ID27081( "scn_invasion_laatpv_breaking_01", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_laatpv_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID47960( var_0 )
{
    _ID42407::_ID27001( "scn_invasion_laatpv_approach_02", "tag_engine_right", 1, 1 );
}

_ID43176( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_laatpv_approach_02" );
    thread _ID42407::_ID27081( "scn_invasion_laatpv_breaking_02", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_laatpv_idle_02", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID44618( var_0 )
{
    _ID42407::_ID27001( "scn_invasion_laatpv_approach_03", "tag_engine_right", 1, 1 );
}

_ID44945( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_laatpv_approach_03" );
    thread _ID42407::_ID27081( "scn_invasion_laatpv_breaking_03", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_laatpv_idle_03", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID50542( var_0 )
{
    _ID42407::_ID27001( "scn_invasion_gas_truck_approach_01", "tag_engine_right", 1, 1, 1.0, 0.1 );
}

_ID51675( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_gas_truck_approach_01" );
    thread _ID42407::_ID27081( "scn_invasion_gas_truck_breaking_01", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_gas_truck_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID47813( var_0 )
{
    thread _ID42407::_ID27081( "scn_invasion_btr80_intro_brake_01", "tag_wheel_front_right" );
}

_ID52775( var_0 )
{
    thread _ID42407::_ID27081( "scn_invasion_btr80_intro_brake_01", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_btr80_intro_idle_01", "tag_engine_right", 1, 1, 1.0, 0.3 );
}

_ID49436( var_0 )
{
    _ID42407::_ID27001( "scn_invasion_bm21_engine_01", "tag_engine_right", 1, 1 );
}

_ID43448( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_bm21_engine_01" );
    thread _ID42407::_ID27081( "scn_invasion_bm21_break_01", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_bm21_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID50604( var_0 )
{
    _ID42407::_ID27001( "scn_invasion_bm21_engine_02", "tag_engine_right", 1, 1 );
}

_ID50822( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_bm21_engine_02" );
    thread _ID42407::_ID27081( "scn_invasion_bm21_break_02", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_bm21_idle_02", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID51335( var_0 )
{
    thread _ID51834();
    _ID42407::_ID27001( "scn_invasion_bm21_north_lp_01", "tag_engine_right", 1, 1, 1, 1 );
}

_ID52709( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_bm21_north_lp_01" );
    thread _ID42407::_ID27081( "scn_invasion_bm21_north_brake_01", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_bm21_north_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID51671( var_0 )
{
    thread _ID51834();
    _ID42407::_ID27001( "scn_invasion_bm21_north_lp_02", "tag_engine_right", 1, 1, 1, 1 );
}

_ID47146( var_0 )
{
    _ID42237::_ID36516( "scn_invasion_bm21_north_lp_02" );
    thread _ID42407::_ID27081( "scn_invasion_bm21_north_brake_02", "tag_wheel_front_right" );
    _ID42407::_ID27001( "scn_invasion_bm21_north_idle_02", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_ID51106()
{
    level.player thread _ID42407::_ID27001( "predator_drone_ambient_lp", undefined, 1, 1, 0.5, 0.5 );
    _ID42465::_ID23797( "predator_missile_mix" );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "predator_missile_filter", 0.5 );
    enablecontext( "predator_missile" );
}

_ID50400()
{
    _ID42237::_ID36516( "predator_drone_ambient_lp" );
    _ID42465::_ID23801( "predator_missile_mix" );
    _ID42490::_ID34527( 0.5 );
    _ID42474::_ID4655( 0 );
    disablecontext();
}

start_carrier_putdown()
{
    level._ID52761 _ID42407::_ID27081( "scn_invasion_raptor_civ_drop", undefined );
}

_ID51200()
{
    _ID42237::_ID14413( "introscreen_activate" );
    _ID42465::_ID23797( "fade_in_intro_mix" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    wait 0.6;
    _ID42465::_ID23801( "fade_in_intro_mix" );
}

_ID44007()
{
    _ID42465::_ID23801( "laatpv_ride_intro" );
}

_ID48725( var_0 )
{
    self waittill( "death" );
    self playsound( var_0 );
}

_ID51834()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID43433()
{
    _ID42465::_ID23797( "havoc_attacking_mix" );
    self waittill( "death" );
    wait 11;
    _ID42465::_ID23801( "havoc_attacking_mix" );
}

_ID50143( var_0 )
{
    var_0 endon( "death" );
    self waittill( "death" );
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

_ID51157()
{
    wait 4.1;
    var_0 = _ID42407::_ID16053( "latvee_player", "targetname" );
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_1 linkto( var_0, "tag_body", ( 48, 10, 20 ), ( 0, 0, 0 ) );
    var_0 thread _ID50143( var_1 );
    level._ID47338 = var_1;
}

_ID47461( var_0 )
{
    _ID42407::_ID4945();

    if ( isdefined( level._ID47338 ) )
        level._ID47338 _ID42407::_ID15093( ::_ID47250, var_0 );
}

_ID47250( var_0 )
{
    self endon( "death" );
    self playsound( var_0, "vo_done" );
    self waittill( "vo_done" );
}

_ID52187()
{
    if ( self == level._ID52761 )
        thread _ID42407::_ID27079( "scn_invasion_raptor_fs_layer" );
}

_ID47993()
{
    var_0 = distancesquared( level.player.origin, self.origin );

    if ( var_0 < 900000000 )
        thread _ID42407::_ID27079( "veh_jet_passenger_slow_linear_short" );
    else
        thread _ID42407::_ID27079( "veh_jet_passenger_slow_linear_long" );
}

_ID45450()
{
    var_0 = getentarray( "ambient_zones_nates_before_explosion", "targetname" );
    var_1 = getentarray( "ambient_zones_nates_after_explosion", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 _ID42237::_ID38864();

    level waittill( "move_president_to_prep" );
    thread _ID46590( var_1 );
    thread _ID49422( var_0 );
}

_ID46590( var_0 )
{
    foreach ( var_2 in var_0 )
        var_2 _ID42237::_ID38866();
}

_ID49422( var_0 )
{
    foreach ( var_2 in var_0 )
        var_2 _ID42237::_ID38864();
}
