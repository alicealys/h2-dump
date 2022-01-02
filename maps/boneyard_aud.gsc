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
    _ID42465::_ID23797( "mix_boneyard_global" );
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
    _ID42475::_ID34640( "start_intro_checkpoint", ::_ID52384 );
    _ID42475::_ID34640( "start_road_checkpoint", ::_ID51104 );
    _ID42475::_ID34640( "start_flyby_checkpoint", ::_ID54105 );
    _ID42475::_ID34640( "start_higround_checkpoint", ::_ID44203 );
    _ID42475::_ID34640( "start_ride_checkpoint", ::_ID54721 );
    _ID42475::_ID34640( "start_ride_end_checkpoint", ::_ID48025 );
    _ID42475::_ID34640( "aud_start_mix_ac130_passby", ::_ID45693 );
    _ID42475::_ID34640( "aud_stop_mix_ac130_passby", ::_ID45036 );
    _ID42475::_ID34640( "aud_start_mix_makarov_discussion", ::_ID47605 );
    _ID42475::_ID34640( "aud_stop_mix_makarov_discussion", ::_ID49287 );
    _ID42475::_ID34640( "aud_start_mix_jeep_ride", ::_ID47573 );
    _ID42475::_ID34640( "aud_start_mix_driver_gets_shot", ::_ID52895 );
    _ID42475::_ID34640( "aud_plane_rattle_sounds", ::_ID51455 );
    _ID42475::_ID34640( "aud_start_evac_sequence", ::_ID53422 );
    _ID42475::_ID34640( "aud_start_level_fadeout", ::_ID47035 );
    _ID42475::_ID34640( "aud_bone_intro_littlebirds", ::aud_bone_intro_littlebirds );
    _ID42475::_ID34640( "aud_bone_front_suburban", ::aud_bone_front_suburban );
    _ID42475::_ID34640( "aud_bone_road_littlebird", ::aud_bone_road_littlebird );
    _ID42475::_ID34640( "aud_bone_road_laatpv", ::aud_bone_road_laatpv );
    _ID42475::_ID34640( "aud_bone_road_pickup", ::aud_bone_road_pickup );
    _ID42475::_ID34640( "aud_bone_afterslide_suburban", ::aud_bone_afterslide_suburban );
    _ID42475::_ID34640( "aud_bone_afterslide_turret_suburban", ::aud_bone_afterslide_turret_suburban );
    _ID42475::_ID34640( "aud_bone_afterslide_btr", ::aud_bone_afterslide_btr );
    _ID42475::_ID34640( "aud_start_jeep_wait_for_player", ::_ID43026 );
    _ID42475::_ID34640( "aud_start_uaz_reverse", ::_ID50620 );
    _ID42475::_ID34640( "aud_start_uaz_180", ::_ID52254 );
    _ID42475::_ID34640( "aud_start_uaz_roll_on_plane", ::_ID52108 );
    _ID42475::_ID34640( "aud_start_uaz_break_behind_plane", ::_ID51168 );
    _ID42475::_ID34640( "aud_start_uaz_accel_behind_plane", ::_ID48733 );
    _ID42475::_ID34640( "scn_crashing_suburban_01_arrival", ::scn_crashing_suburban_01_arrival );
    _ID42475::_ID34640( "scn_crashing_suburban_01_crash", ::scn_crashing_suburban_01_crash );
    _ID42475::_ID34640( "scn_bone_side_tbone_truck_01", ::scn_bone_side_tbone_truck_01 );
    _ID42475::_ID34640( "scn_bone_side_tbone_truck_02", ::scn_bone_side_tbone_truck_02 );
    _ID42475::_ID34640( "scn_ride_following_suburban_passby_01", ::scn_ride_following_suburban_passby_01 );
    _ID42475::_ID34640( "scn_ride_following_suburban_crash_01", ::scn_ride_following_suburban_crash_01 );
    _ID42475::_ID34640( "scn_ride_jeep_passby_front_01", ::scn_ride_jeep_passby_front_01 );
    _ID42475::_ID34640( "scn_ride_suburban_front_passby_01", ::scn_ride_suburban_front_passby_01 );
    _ID42475::_ID34640( "scn_ride_suburban_front_passby_02", ::scn_ride_suburban_front_passby_02 );
    _ID42475::_ID34640( "scn_ride_suburban_sniper_arrival_01", ::scn_ride_suburban_sniper_arrival_01 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID52384( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID51104( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID54105( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID44203( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID54721( var_0 )
{
    _ID42474::_ID4669( "exterior2" );
}

_ID48025( var_0 )
{
    _ID42474::_ID4669( "exterior2" );
}

_ID45693()
{
    _ID42465::_ID23797( "mix_ac130_passby" );
}

_ID45036()
{
    _ID42465::_ID23801( "mix_ac130_passby" );
}

_ID47605()
{
    _ID42465::_ID23797( "mix_makarov_discussion" );
}

_ID49287()
{
    _ID42465::_ID23801( "mix_makarov_discussion" );
}

_ID47573()
{
    _ID42465::_ID23797( "mix_jeep_ride" );
    _ID42407::_ID53910( 0 );
}

_ID52895()
{
    _ID42465::_ID23801( "mix_jeep_ride" );
    _ID42465::_ID23797( "mix_driver_gets_shot" );
}

_ID53422()
{
    _ID42465::_ID23797( "evac_mix" );
    _ID42490::_ID34526( "interior_plane_filter", 0.5 );
}

_ID47035()
{
    _ID42465::_ID23797( "boneyard_fade_to_black_end_mix" );
}

aud_bone_intro_littlebirds( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0._ID31138 = 1;

    if ( isdefined( var_0.script_noteworthy ) )
        var_0 thread _ID42407::_ID27001( "scn_bone_" + var_0.script_noteworthy + "_lp", undefined, 1 );
}

aud_bone_intro_btr80()
{
    self vehicle_turnengineoff();
    thread _ID42407::_ID27081( "scn_bone_intro_btr80" );
}

aud_bone_scene_a_suburban()
{
    self vehicle_turnengineoff();
    thread _ID42407::_ID27081( "scn_bone_scene_a_suburban" );
}

aud_bone_front_suburban( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread _ID42407::_ID27081( "scn_bone_front_suburban" );
}

aud_bone_road_littlebird( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0._ID31138 = 1;
    var_0 thread _ID42407::_ID27001( "scn_bone_road_littlebird_lp", undefined, 1 );
}

aud_bone_road_laatpv( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread _ID42407::_ID27081( "scn_bone_road_laatpv" );
    _ID42237::_ID14413( "laatpv_destroy" );
    var_0 thread _ID42407::_ID27081( "scn_bone_road_laatpv_reverse" );
}

aud_bone_road_pickup( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread _ID42407::_ID27081( "scn_bone_road_pickup" );
}

aud_bone_afterslide_suburban( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_suburban" );
    _ID42237::_ID14413( "flyby_suburban_go" );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_suburban_p2" );
}

aud_bone_afterslide_turret_suburban( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_turret_suburban" );
    _ID42237::_ID14413( "suburban_target_btr80" );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_turret_suburban_p1" );
    wait 1.0;
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p2", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_turret_suburban_p2" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p3", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_turret_suburban_p3" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p4", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_turret_suburban_p4" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p5", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_turret_suburban_p5" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p6", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_turret_suburban_p6" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_idle", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread _ID42407::_ID27001( "scn_bone_afterslide_turret_suburban_idle", undefined, 1 );
}

aud_bone_afterslide_btr( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_1 = spawn( "script_origin", self.origin );
    var_1 linkto( self );
    var_1 playloopsound( "scn_bone_afterslide_btr_idle" );
    var_1 setvolume( 0, 0 );
    _ID42237::_ID14413( "flyby_suburban_go" );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_btr" );
    var_2 = getvehiclenode( "scn_bone_afterslide_btr_p1", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_btr_p1" );
    var_2 = getvehiclenode( "scn_bone_afterslide_btr_p2", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_1 setvolume( 1, 1 );
    _ID42237::_ID14413( "higround_ascend" );
    var_1 setvolume( 0, 1 );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_btr_p2" );
    var_2 = getvehiclenode( "scn_bone_afterslide_btr_p3", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_1 setvolume( 1, 1 );
    _ID42237::_ID14413( "higround_2" );
    var_1 setvolume( 0, 0.5 );
    var_0 thread _ID42407::_ID27081( "scn_bone_afterslide_btr_p3" );
    wait 0.5;
    var_1 setvolume( 1, 2 );
}

_ID43026( var_0 )
{
    var_0 _ID42407::_ID27081( "scn_boneyard_uaz_skid_before_reverse", "TAG_HOOD" );
}

_ID50620( var_0 )
{
    _ID42237::_ID14413( "uaz_drive" );
    _ID42465::_ID23797( "uaz_reverse_mix" );
    var_1 = var_0 gettagorigin( "TAG_HOOD" );
    var_2 = spawn( "script_origin", var_1 );
    var_2 linkto( var_0 );
    var_2 playsound( "scn_boneyard_uaz_engine_reverse" );
    _ID42237::_ID14413( "blow_tanker_first" );
    var_2 setvolume( 0, 0.5 );
    _ID42465::_ID23801( "uaz_reverse_mix" );
    wait 0.5;
    var_2 playrumbleonentity();
    wait 0.1;
    var_2 delete();
}

_ID52254( var_0 )
{
    var_0 _ID42407::_ID27081( "scn_boneyard_uaz_180", "TAG_HOOD" );
}

_ID52108( var_0 )
{
    var_0 _ID42407::_ID27081( "scn_boneyard_uaz_susp_bump", "TAG_HOOD" );
}

_ID51168( var_0 )
{
    var_0 _ID42407::_ID27081( "scn_boneyard_uaz_brake_behind_plane", "TAG_HOOD" );
}

_ID48733( var_0 )
{
    wait 1.0;
    var_0 _ID42407::_ID27081( "scn_boneyard_uaz_accel_behind_plane", "TAG_HOOD" );
}

scn_crashing_suburban_01_arrival( var_0 )
{
    var_0 vehicle_turn_engine_off();
    var_0 thread _ID42407::_ID27079( "scn_crashing_suburban_01_arrival" );
}

scn_crashing_suburban_01_crash( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_crashing_suburban_01_crash" );
}

scn_ride_following_suburban_passby_01( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_ride_following_suburban_passby_01" );
}

scn_ride_following_suburban_crash_01( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_ride_following_suburban_crash_01" );
}

scn_ride_jeep_passby_front_01( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_ride_jeep_passby_front_01" );
}

scn_ride_suburban_front_passby_01( var_0 )
{
    while ( distancesquared( level.player.origin, var_0.origin ) > 9000000 )
        wait 0.1;

    var_0 thread _ID42407::_ID27079( "scn_ride_suburban_front_passby_01" );
}

scn_ride_suburban_front_passby_02( var_0 )
{
    while ( distancesquared( level.player.origin, var_0.origin ) > 9000000 )
        wait 0.1;

    var_0 thread _ID42407::_ID27079( "scn_ride_suburban_front_passby_02" );
}

scn_ride_suburban_sniper_arrival_01( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_ride_suburban_sniper_arrival_01" );
}

scn_bone_side_tbone_truck_01( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_bone_side_tbone_truck_01" );
}

scn_bone_side_tbone_truck_02( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_bone_side_tbone_truck_02" );
}

_ID51200()
{
    _ID42237::_ID14413( "introscreen_activate" );
    _ID42465::_ID23797( "fade_in_level_mix" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    wait 1.5;
    _ID42465::_ID23801( "fade_in_level_mix" );
}

_ID51455()
{
    var_0 = getentarray( "rattle1", "targetname" );
    var_1 = getentarray( "rattle2", "targetname" );

    foreach ( var_3 in var_0 )
        var_3 thread _ID42407::_ID27079( "emt_boneyard_inside_plane_rattle" );

    foreach ( var_3 in var_1 )
        var_3 thread _ID42407::_ID27079( "emt_boneyard_inside_plane_rattle_2" );
}

_ID51895()
{
    vehicle_turn_engine_off();
    var_0 = self gettagorigin( "TAG_HOOD" );
    var_1 = self gettagorigin( "TAG_WHEEL_BACK_LEFT" );
    level._ID3674._ID54347 = spawn( "script_origin", var_0 );
    level._ID3674._ID47616 = spawn( "script_origin", var_1 );
    level._ID3674._ID52833 = spawn( "script_origin", var_0 );
    level._ID3674._ID54347 linkto( self );
    level._ID3674._ID47616 linkto( self );
    level._ID3674._ID52833 linkto( self );
    level._ID3674._ID54347 playloopsound( "scn_boneyard_uaz_engine_front" );
    level._ID3674._ID47616 playloopsound( "scn_boneyard_uaz_engine_back" );
    level._ID3674._ID52833 playloopsound( "scn_boneyard_uaz_idle_front" );
    thread _ID49258();
    self waittill( "death" );
    level._ID3674._ID54347 stopsounds();
    level._ID3674._ID47616 stopsounds();
    level._ID3674._ID52833 stopsounds();
    wait 0.1;
    level._ID3674._ID54347 delete();
    level._ID3674._ID47616 delete();
    level._ID3674._ID52833 delete();
}

_ID49258()
{
    self endon( "death" );
    var_0 = 60;

    for (;;)
    {
        var_1 = self vehicle_getspeed();
        var_2 = clamp( 1 * var_1 / var_0, 0, 1 );
        level._ID3674._ID54347 setvolume( var_2, 0.1 );
        level._ID3674._ID47616 setvolume( var_2, 0.1 );
        level._ID3674._ID52833 setvolume( 1.0 - var_2, 0.1 );
        wait 0.1;
    }
}

vehicle_turn_engine_off()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}
