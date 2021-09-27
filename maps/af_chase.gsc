// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" || _func_039( "beautiful_corner_hdr_demo" ) == "1" )
    {
        maps\af_chase_beautiful_corner::_ID50786();
        return;
    }

    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\af_chase_mission_select_cam::_ID50320();
        return;
    }

    maps\af_chase_knife_fight_code::_ID46096();
    level._ID52044 = 0;
    _func_150( &"AF_CHASE_PURSUE" );
    _func_150( &"AF_CHASE_MISSION_FAILED_IN_THE_OPEN" );
    _func_150( &"AF_CHASE_MISSION_FAILED_KEEP_UP" );
    _func_150( &"AF_CHASE_FAILED_TO_SHOOT_DOWN" );
    _func_150( &"AF_CHASE_PRESS_USE" );
    _func_150( &"AF_CHASE_PRESS_USE_KEYBOARD" );
    _func_150( &"AF_CHASE_HINT_CRAWL_RIGHT" );
    _func_150( &"AF_CHASE_HINT_CRAWL_LEFT" );
    _func_150( &"AF_CHASE_KILL_SHEPHERD" );
    _func_150( &"SCRIPT_WAYPOINT_SHEPHERD" );
    _func_150( &"AF_CHASE_FAILED_TO_CRAWL" );
    _func_150( &"AF_CHASE_FAILED_TO_PULL_KNIFE" );
    _func_14E( "m203" );
    _func_152( "steady_rumble" );
    _func_152( "smg_fire" );
    _func_14E( "m16_grenadier" );
    _func_14E( "rpg_straight_af_chase" );
    _func_14E( "rpg_af_chase" );
    _func_14E( "rpd" );
    _func_14E( "uzi" );
    _func_14E( "littlebird_FFAR" );
    _func_14E( "minigun_littlebird_spinnup" );
    _func_14C( "weapon_commando_knife" );
    _func_14C( "weapon_commando_knife_bloody" );
    _func_14C( "viewmodel_commando_knife" );
    _func_14C( "viewmodel_commando_knife_bloody" );
    _func_14C( "zodiac_head_roller" );
    _func_14C( "weapon_colt_anaconda" );
    _func_14C( "vehicle_pickup_destroyed" );
    _func_14C( "weapon_colt_anaconda_animated" );
    _func_14C( "fx_rifle_shell" );
    _func_14C( "body_desert_tf141_zodiac" );
    _func_14C( "vehicle_little_bird_bench_afghan" );
    _func_14C( "vehicle_little_bird_minigun_right" );
    _func_14C( "hat_opforce_arab_d" );
    _func_152( "heavy_1s" );
    _func_152( "heavy_2s" );
    _func_152( "heavy_3s" );
    _func_152( "light_1s" );
    _func_152( "light_2s" );
    _func_152( "light_3s" );
    _func_14C( "body_vil_shepherd_no_gun" );
    _func_14C( "prop_misc_literock_small_01" );
    _func_14C( "prop_misc_literock_small_02" );
    _func_14C( "prop_misc_literock_small_03" );
    _func_14C( "prop_misc_literock_small_04" );
    _func_14C( "prop_misc_literock_small_05" );
    _func_14C( "prop_misc_literock_small_06" );
    _func_14C( "prop_misc_literock_small_07" );
    _func_14C( "prop_misc_literock_small_08" );
    _func_14C( "viewbody_tf141" );
    _func_14C( "h2_vehicle_pavelow_low" );
    _func_14C( "body_desert_tf141_zodiac_wet" );
    _func_14C( "head_hero_price_zodiac_wet" );
    _func_14D( "af_chase_boatdrive_end" );
    _func_14F( "overlay_hunted_black" );
    _func_14E( "ending_knife" );
    _func_14E( "alt_ending_knife" );
    _func_14F( "hud_icon_commando_knife" );
    _func_14F( "reticle_center_throwingknife" );
    _func_152( "tank_rumble" );
    _func_152( "damage_light" );
    _func_152( "damage_heavy" );
    level._ID53724 = _func_03D();
    _ID48548::_ID616();
    _ID52272::_ID616();
    _ID54615::_ID616();
    _func_0DB( "physVeh_limitTopSpeedWithBrakingFactor", 1 );
    _ID42407::_ID1951( "boatdrive_nofail", ::_unknown_068A, "", ::_unknown_0498 );
    _ID42407::_ID1951( "boatdrive_begin", ::_unknown_0544, "", ::_unknown_04AA );
    _ID42407::_ID1951( "boatdrive_lake", ::_unknown_05C4, "", ::_unknown_04BC );
    _ID42407::_ID1951( "boatdrive_lake_mid", ::_unknown_05A0, "", ::_unknown_04CE );
    _ID42407::_ID1951( "boatdrive_rapids", ::_unknown_061B, "", ::_unknown_04E0 );
    _ID42407::_ID1951( "boatdrive_below_rapids", ::_unknown_066A, "", ::_unknown_04F2 );
    _ID42407::_ID1951( "boatdrive_end", ::_unknown_06B8, "", maps\af_chase_knife_fight::_ID48459 );
    _ID42407::_ID1951( "debug_boatdrive", ::_unknown_05CD, "", ::_unknown_0516 );
    _ID42407::_ID10126( ::_unknown_059A );
    maps\af_chase_knife_fight::_ID53376();
    _unknown_04EB();
    _ID42323::_ID616();
    thread _unknown_07A6();
    maps\af_chase_anim::_ID43266();
    thread maps\af_chase_knife_fight::_ID45160();
    _ID48669::_ID52537( "viewhands_player_tf141" );
    _ID45655::_ID616();
    var_0 = _func_1A2( "script_vehicle_zodiac_player", "classname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, _ID48669::_ID50469 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID48364 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID44200 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID53340 );
    var_1 = _func_1A2( "rpg_bridge_guy", "script_noteworthy" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, maps\af_chase_code::_ID44939 );
    var_2 = _func_1A2( "actor_enemy_afghan_RPG", "classname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, maps\af_chase_code::_ID47566 );
    var_3 = 9000000;
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5._ID31431 = var_3;
    }

    var_clear_2
    var_clear_0
    thread maps\af_chase_code::_ID47957();
    var_7 = _func_1A2( "rope_splashers", "script_noteworthy" );
    _ID42237::_ID3350( var_7, _ID42407::_ID1947, maps\af_chase_code::_ID54639 );
    var_8 = _func_1A1( "enemy_chase_boat", "targetname" );
    var_8 _ID42407::_ID1947( maps\af_chase_code::_ID44610 );
    var_9 = _func_1A1( "rapids_trigger", "targetname" );
    var_9 thread maps\af_chase_code::_ID45596();
    var_9 thread maps\af_chase_code::_ID47093( "bump_small_after_rapids", "bump_big_after_rapids" );
    var_9 thread maps\af_chase_code::_ID44036();
    var_10 = [ "helicopterFireHill01_trigger", "helicopterFireHill02_trigger", "helicopterFireHill03_trigger", "helicopterFireHill04_trigger", "helicopterFireHill05_trigger" ];
    var_11 = var_10;

    for ( var_14 = _func_1DA( var_11 ); _func_02F( var_14 ); var_14 = _func_1BF( var_11, var_14 ) )
    {
        var_12 = var_11[var_14];
        var_13 = _func_1A1( var_12, "targetname" );
        var_13 thread maps\af_chase_code::_ID47193();
    }

    var_clear_3
    var_clear_0
    var_15 = _func_1A1( "on_river_trigger", "targetname" );
    var_15 thread maps\af_chase_code::_ID48629();
    var_16 = _func_1A1( "boat_mount", "targetname" );
    var_16 thread maps\af_chase_code::_ID47428();
    var_17 = _func_1A1( "increase_enemy_boats_mid_lake", "script_noteworthy" );
    var_17 thread maps\af_chase_code::_ID47096( 2 );
    var_18 = _func_1A2( "trigger_multiple_speed", "classname" );
    _ID42237::_ID3350( var_18, maps\af_chase_code::_ID46266 );
    var_19 = _func_1A1( "enter_rapids", "targetname" );
    var_19 thread maps\af_chase_code::_ID44369();
    var_20 = _func_1A2( "script_vehicle_littlebird_armed", "classname" );
    _ID42237::_ID3350( var_20, _ID42407::_ID1947, _ID42411::_ID16988 );
    var_21 = _func_1A2( "script_vehicle_zodiac", "classname" );
    var_22 = _func_1A2( "script_vehicle_zodiac_physics", "classname" );
    _ID42237::_ID3350( var_22, _ID42407::_ID1947, maps\af_chase_code::_ID44200 );
    var_23 = _ID42237::_ID3296( var_21, var_22 );
    _ID42237::_ID3350( var_23, _ID42407::_ID1947, maps\af_chase_code::_ID51905 );
    _ID42237::_ID3350( var_23, _ID42407::_ID1947, maps\af_chase_code::_ID45377 );
    _ID42237::_ID3350( var_23, _ID42407::_ID1947, maps\af_chase_code::_ID53340 );
    var_24 = _func_1A2( "script_vehicle_pavelow", "classname" );
    _ID42237::_ID3350( var_24, _ID42407::_ID1947, maps\af_chase_code::_ID45902 );
    _ID42407::_ID1892( "axis", maps\af_chase_code::_ID46820 );
    _ID42407::_ID1892( "axis", maps\af_chase_code::_ID46114 );
    _ID42407::_ID1892( "axis", maps\af_chase_code::_ID51619 );
    thread maps\af_chase_code::_ID50404();
    var_25 = _func_1A2( "destructible_fake", "script_noteworthy" );
    _ID42237::_ID3350( var_25, maps\af_chase_code::_ID54470 );
    thread _unknown_096C();
    var_26 = _func_1A1( "end_caves_trigger", "targetname" );
    var_26 thread maps\af_chase_code::_ID49813();
    var_26 thread maps\af_chase_code::_ID45596();
    var_27 = _func_1A1( "helicopterFireAtHill01", "targetname" );
    var_27 _ID42407::_ID1947( maps\af_chase_code::new_helicopter_setup );
    var_28 = _func_1A1( "seaknight_fly_over", "targetname" );
    var_28 _ID42407::_ID1947( ::_unknown_0A8E );
    var_29 = _ID42237::_ID16640( "heli_attack_player_idle", "script_noteworthy" );
    _ID42237::_ID3350( var_29, maps\af_chase_code::_ID48083 );
    var_29 = _func_1A2( "heli_attack_player_idle", "script_noteworthy" );
    _ID42237::_ID3350( var_29, maps\af_chase_code::_ID48083 );
    var_30 = _func_1A2( "kill_destructibles_and_barrels_in_volume", "targetname" );
    _ID42237::_ID3350( var_30, maps\af_chase_code::_ID44724 );
    _ID42407::_ID1888( "boat_check_trailing", maps\af_chase_code::_ID54370, "trailing too far behind the enemy boat." );
    thread maps\af_chase_code::_ID52721( "river_flow" );
    thread maps\af_chase_zodiac::_ID54735();
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    _func_0DB( "ragdoll_max_life", 20000 );
    _func_0DB( "r_volumeLightScatterNeedsPrepass", 1 );
    var_31 = _func_1A2( "price_position_switch", "targetname" );
    _ID42237::_ID3350( var_31, maps\af_chase_code::_ID45906 );
    var_32 = _func_1A2( "bobbing_boat", "script_noteworthy" );
    _ID42237::_ID3350( var_32, _ID42407::_ID1947, maps\af_chase_code::_ID43202 );
    var_33 = _func_1A2( "crashable_whizby_boats", "script_noteworthy" );
    _ID42237::_ID3350( var_33, _ID42407::_ID1947, maps\af_chase_code::_ID46511 );
    var_34 = _func_1A1( "enemy_zodiacs_wipe_out", "targetname" );
    var_34 thread maps\af_chase_zodiac::_ID51949();
    var_35 = _func_1A2( "neutral_enemies", "targetname" );
    _ID42237::_ID3350( var_35, maps\af_chase_code::_ID46641 );
    var_36 = _func_1A1( "dialog_cave", "targetname" );
    var_36 thread maps\af_chase_code::_ID52533();
    thread maps\af_chase_code::_ID46043();
    thread maps\af_chase_code::_ID45831();
    thread maps\af_chase_code::_ID52462();
    thread maps\af_chase_code::_ID47094();

    if ( _ID42407::_ID20505() || _func_125( level._ID35897, "boat" ) )
        thread maps\af_chase_waterfall::_ID616();

    var_37 = _func_1A1( "trigger_out_of_caves", "targetname" );

    if ( _func_02F( var_37 ) )
        var_37 thread maps\af_chase_code::_ID54381();

    var_38 = _func_1A2( "open_area", "targetname" );
    _ID42237::_ID3350( var_38, maps\af_chase_code::_ID43265 );
    _ID42407::_ID4917();
    var_39 = _func_1A2( "sentry_technical", "script_noteworthy" );
    _ID42237::_ID3350( var_39, _ID42407::_ID1947, maps\af_chase_code::_ID52842 );
    var_40 = _func_1A2( "explode_barrels_in_radius", "targetname" );
    _ID42237::_ID3350( var_40, maps\af_chase_code::_ID47294 );
    thread _unknown_0BB0();
    thread _unknown_0938();
    _func_0DB( "r_reactiveMotionVehicleEnabled", 1 );
    _func_0DB( "r_reactiveMotionVehicleRadius", 200.0 );
    _func_0DB( "r_reactiveMotionVehicleZOffset", -60.0 );
    _func_0DB( "r_reactiveMotionEffectorStrengthScale", 1000 );
    maps\af_chase_code::_ID44976();
    var_41 = _func_1A1( "heli_spawner", "targetname" );
    var_41 _ID42407::_ID1947( ::_unknown_095E );
    thread maps\af_chase_code::lod_scale_setup();
}

_ID53732()
{
    _ID42237::_ID14400( "no_more_physics_effects" );
    _ID42237::_ID14400( "player_in_open" );
    _ID42237::_ID14400( "zodiac_catchup" );
    _ID42237::_ID14400( "player_in_sight_of_boarding" );
    _ID42237::_ID14400( "player_on_boat" );
    _ID42237::_ID14400( "exit_caves" );
    _ID42237::_ID14400( "enemy_zodiacs_wipe_out" );
    _ID42237::_ID14400( "on_river" );
    _ID42237::_ID14400( "zodiac_boarding" );
    _ID42237::_ID14400( "enemy_heli_takes_off" );
    _ID42237::_ID14400( "price_anim_on_boat" );
    _ID42237::_ID14400( "rapids_head_bobbing" );
    _ID42237::_ID14400( "heli_firing" );
    _ID42237::_ID14400( "player_zodiac_on_ground" );
    _ID42237::_ID14400( "price_is_soaked" );
    _ID42237::_ID14400( "shepherd_got_away" );
    _ID42237::_ID14400( "startPoint_boatDrive" );
    _unknown_09FA();
    var_0 = level._ID2237;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        _ID42237::_ID14400( "despawn_" + var_1 );
    }

    var_clear_2
    var_clear_0
    _func_0DB( "vehNotifyHitEntityWithVehContactEvent", 1 );
    level._ID794 _ID42407::_ID13024( "disable_shooting" );
    level._ID794 _ID42407::_ID13024( "zodiac_aim_helicopter" );
}

_ID312()
{

}

add_target_name()
{
    self._ID1193 = "heli_no_turret";
}

_ID46213()
{
    level._ID2237 = [ "ai_group_01", "ai_group_02", "ai_group_03", "ai_group_04", "ai_group_05", "ai_group_06", "ai_group_07", "ai_group_08", "ai_group_09", "ai_group_10", "ai_group_11" ];
}

_ID45286()
{
    var_0 = level._ID2237;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        _ID42407::_ID3343( var_1, ::_unknown_0ABF, "despawn_" + var_1 );
        _ID42407::_ID3343( var_1, ::_unknown_0AE4, "despawn_" + var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID45663( var_0 )
{
    for ( var_1 = 1; var_1 <= level._ID2237.size; var_1++ )
    {
        if ( _func_02F( self._ID988._ID1193 ) && self._ID988._ID1193 == "H2_New_AI_" + var_1 )
        {
            self._ID10 = 0;
            self._ID4867 = 0;
            break;
        }
    }

    _ID42237::_ID14413( var_0 );

    if ( _func_02F( self ) && _func_1A7( self ) )
        self _meth_80B7();
}

_ID53753( var_0 )
{
    self endon( var_0 );

    for (;;)
    {
        self waittill( "veh_contact",  var_1  );

        if ( !_func_02F( level._ID794._ID40065 ) )
            break;

        if ( var_1 == level._ID794 || var_1 == level._ID794._ID40065 )
        {
            if ( !_func_2A5( self ) )
            {
                self._ID34237 = 1;
                self _meth_8058();
                return;
            }

            var_2 = _func_119( self._ID740 - var_1._ID740 );
            var_2 *= 8000;
            self _meth_8024( "torso_lower", var_2 );
            break;
        }
    }
}

_ID50787()
{
    level endon( "stop_music_at_splash" );
    _func_078( 0.4 );
    wait 1.5;
    var_0 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_0 endon( "death" );
    level._ID44901 = var_0;

    for (;;)
    {
        var_0 _meth_80A1( "mus_af_chase_startinboat", "sounddone" );
        var_0 waittill( "sounddone" );
    }
}

_ID47474()
{
    _ID42475::_ID34575( "start_default_checkpoint" );
    var_0 = _ID42411::_ID35195( "players_boat" );
    var_1 = _ID42411::_ID35196( "enemy_chase_boat" );
    maps\af_chase_code::_ID49209();
    thread maps\af_chase_code::_ID52748();
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID45435( 15 );
    _func_194( _ID42407::_ID25268( "pursue" ), var_1 );
    thread _ID42318::_ID44189();
    var_1 thread maps\af_chase_aud::_ID45417();
    thread _ID42313::_ID13791( 0.75 );
    wait 3;
    _ID42237::_ID14413( "player_on_boat" );
    _ID42297::_ID39221();
    maps\af_chase_aud::_ID50797();
    thread maps\af_chase_code::_ID45435( 10, 30 );
}

_ID43420()
{
    _ID42475::_ID34575( "start_boatdrive_begin_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_boatdrive_begin" );
    maps\af_chase_code::_ID49209();
    var_0 = _ID42411::_ID35195( "players_boat" );
    var_1 = _ID42411::_ID35196( "enemy_chase_boat" );
    waitframe;
    level._ID794 _meth_8087( var_0, "tag_player", 0.2, 0.1, 0.1 );
    var_0 _meth_80A0( level._ID794 );
    level._ID794._ID11803 = var_0;
    thread maps\af_chase_code::_ID53263();
    _unknown_0F25();
}

_ID45594()
{
    _ID42237::_ID14402( "startPoint_boatDrive" );
    _ID42475::_ID34575( "start_debug_boatdrive_checkpoint" );
    maps\af_chase_code::_ID49209();
    var_0 = _ID42411::_ID35195( "players_boat" );
    level._ID794 _meth_8087( var_0, "tag_player", 0.2, 0.1, 0.1 );
    var_0 _meth_80A0( level._ID794 );
    level._ID794._ID11803 = var_0;
    _ID42237::_ID3350( _func_1A2( "trigger_multiple", "code_classname" ), _ID42237::_ID38863 );
}

_ID47690()
{
    _ID42475::_ID34575( "start_boatdrive_lake_mid_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_mid_lake" );
    maps\af_chase_code::_ID49209();
    _ID42237::_ID14402( "exit_caves" );
    var_0 = _func_1A1( "players_boat", "targetname" );
    var_1 = _ID42237::_ID16638( "lake_mid_start_pose", "targetname" );
    var_0._ID740 = var_1._ID740;
    var_0._ID65 = var_1._ID65;
    var_2 = _ID42411::_ID35195( "players_boat" );
    var_3 = _ID42411::_ID35196( "enemy_chase_boat" );
    waitframe;
    level._ID794 _meth_8087( var_2, "tag_player", 0.2, 0.1, 0.1 );
    var_2 _meth_80A0( level._ID794 );
    level._ID794._ID11803 = var_2;
    level._ID794._ID11803 _meth_85A2( 1 );
    var_2 _meth_828E( 60, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_boatdrive_lake" );
    _unknown_1018();
}

_ID54165()
{
    _ID42475::_ID34575( "start_boatdrive_lake_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_lake" );
    maps\af_chase_code::_ID49209();
    var_0 = _func_1A1( "players_boat", "targetname" );
    var_1 = _ID42237::_ID16638( "lake_start_pose", "targetname" );
    var_0._ID740 = var_1._ID740;
    var_0._ID65 = var_1._ID65;
    var_2 = _ID42411::_ID35195( "players_boat" );
    var_3 = _ID42411::_ID35196( "enemy_chase_boat" );
    waitframe;
    level._ID794 _meth_8087( var_2, "tag_player", 0.2, 0.1, 0.1 );
    var_2 _meth_80A0( level._ID794 );
    level._ID794._ID11803 = var_2;
    level._ID794._ID11803 _meth_85A2( 1 );
    var_2 _meth_828E( 48, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_boatdrive_lake" );
    _unknown_10B1();
}

_ID51694()
{
    _ID42475::_ID34575( "start_boatdrive_rapids_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_rapids" );
    maps\af_chase_code::_ID52505( "seaknight_fly_over", "enemy_heli_pos_rapids" );
    maps\af_chase_code::_ID49209();
    _ID42237::_ID14402( "exit_caves" );
    var_0 = _func_1A1( "players_boat", "targetname" );
    var_1 = _ID42237::_ID16638( "rapids_start_position", "targetname" );
    var_0._ID740 = var_1._ID740;
    var_0._ID65 = var_1._ID65;
    var_2 = _ID42411::_ID35195( "players_boat" );
    var_3 = _ID42411::_ID35196( "enemy_chase_boat" );
    var_4 = _ID42411::_ID35196( "seaknight_fly_over" );
    waitframe;
    level._ID794 _meth_8087( var_2, "tag_player", 0.2, 0.1, 0.1 );
    var_2 _meth_80A0( level._ID794 );
    level._ID794._ID11803 = var_2;
    level._ID794._ID11803 _meth_85A2( 1 );
    var_2 _meth_828E( 78, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_rapids" );
    _unknown_1167();
}

_ID47253()
{
    _ID42475::_ID34575( "start_boatdrive_river_below_rapids_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_below_rapids" );
    maps\af_chase_code::_ID52505( "seaknight_fly_over", "enemy_heli_pos_rapids" );
    maps\af_chase_code::_ID49209();
    _ID42237::_ID14402( "exit_caves" );
    _ID42237::_ID14402( "on_river" );
    var_0 = _func_1A1( "players_boat", "targetname" );
    var_1 = _ID42237::_ID16638( "below_rapids_start_position", "targetname" );
    var_0._ID740 = var_1._ID740;
    var_0._ID65 = var_1._ID65;
    var_2 = _ID42411::_ID35195( "players_boat" );
    var_3 = _ID42411::_ID35196( "enemy_chase_boat" );
    waitframe;
    level._ID794 _meth_8087( var_2, "tag_player", 0.2, 0.1, 0.1 );
    var_2 _meth_80A0( level._ID794 );
    level._ID794._ID11803 = var_2;
    level._ID794._ID11803 _meth_85A2( 1 );
    var_2 _meth_828E( 78, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_rapids" );
    _unknown_121C();
}

_ID49244()
{
    _ID42475::_ID34575( "start_boatdrive_end_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_end" );
    var_0 = _func_1A1( "seaknight_pickup_boat_spot", "script_noteworthy" );
    thread maps\af_chase_code::_ID48797();
    maps\af_chase_code::_ID49209();
    _ID42237::_ID14402( "exit_caves" );
    _ID42237::_ID14402( "enemy_zodiacs_wipe_out" );
    var_1 = _func_1A1( "players_boat", "targetname" );
    var_2 = _ID42237::_ID16638( "end_start_position", "targetname" );
    var_1._ID740 = var_2._ID740;
    var_1._ID65 = var_2._ID65;
    var_3 = _ID42411::_ID35195( "players_boat" );
    var_4 = _ID42411::_ID35196( "enemy_chase_boat" );
    var_5 = _ID42411::_ID35195( "enemy_pickup_heli" );
    waitframe;
    level._ID794 _meth_8087( var_3, "tag_player", 0.2, 0.1, 0.1 );
    var_3 _meth_80A0( level._ID794 );
    level._ID794._ID11803 = var_3;
    var_3 _meth_828E( 57, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_boatdrive_end" );
    _unknown_12D5();
}

_ID53487()
{
    _ID42475::_ID34575( "start_boatdrive_nofail_checkpoint" );
    _func_034( "scr_zodiac_test", 1 );
    level._ID794 _meth_80F6();
    thread _unknown_1089();
}

_ID52503()
{
    waitframe;

    switch ( level._ID35897 )
    {

    }

    case "on_foot_art_tweak":
    case "scene_fight_loop_E":
    case "scene_fight_loop_D3":
    case "scene_fight_loop_D2":
    case "scene_fight_loop_C":
    case "scene_fight_loop_B":
    case "walkoff":
    case "knife_moment":
    case "price_wakeup":
    case "knife_fight":
    case "gun_kick":
    case "gun_drop":
    case "pullout":
    case "boatdrive_end_test":
    case "wounded":
    case "gloat":
    case "boatdrive_end":
    case "turnbuckle":
    case "boatdrive_below_rapids":
    case "wakefast":
    case "boatdrive_rapids":
    case "wakeup":
    case "boatdrive_lake":
    case "debug_boatdrive":
    case "boatdrive_lake_mid":
    case "boatdrive_begin":
    case "boatdrive_nofail":
    case "default":
    case "kill":
    case "crawl":
    case "end":
    default:
}

_ID44726()
{
    level._ID30908["afchase_shp_stillincaves"] = "afchase_shp_stillincaves";
    level._ID30908["afchase_shp_observe"] = "afchase_shp_observe";
    level._ID30908["afchase_shp_uavsupport"] = "afchase_shp_uavsupport";
    wait 1;
    _ID42237::_ID14413( "player_on_boat" );
    wait 10;
    level._ID794 _ID42407::_ID28864( "afchase_shp_stillincaves" );
    wait 10;
    level._ID794 _ID42407::_ID28864( "afchase_shp_observe" );
    _ID42237::_ID14413( "exit_caves" );
    wait 4;
    level._ID794 _ID42407::_ID28864( "afchase_shp_uavsupport" );
}

_ID44122()
{
    waitframe;
    var_0 = level._ID35897;

    if ( _ID42407::_ID20505() )
        return;

    if ( var_0 == "boatdrive_nofail" )
        return;

    if ( var_0 == "boatdrive_begin" )
        return;

    if ( var_0 == "boatdrive_lake" )
        return;

    if ( var_0 == "boatdrive_lake_mid" )
        return;

    if ( var_0 == "boatdrive_rapids" )
        return;

    if ( var_0 == "boatdrive_below_rapids" )
        return;

    _ID42407::_ID29534( "axis", maps\af_chase_code::_ID46820 );
    _ID42407::_ID29534( "axis", maps\af_chase_code::_ID46114 );
    _ID42237::_ID14402( "stop_boat_dialogue" );

    if ( var_0 == "boatdrive_end" )
        return;

    if ( var_0 == "boatdrive_end_test" )
        return;

    thread maps\af_chase_knife_fight::_ID52987();
}

_ID46483()
{
    switch ( level._ID35897 )
    {

    }

    case "walkoff":
    case "price_wakeup":
    case "gun_kick":
    case "gun_drop":
    case "pullout":
    case "gloat":
    case "wounded":
    case "debug_boatdrive":
    case "turnbuckle":
    case "boatdrive_end":
    case "wakefast":
    case "wakeup":
    case "boatdrive_below_rapids":
    case "boatdrive_rapids":
    case "boatdrive_lake_mid":
    case "boatdrive_lake":
    case "boatdrive_begin":
    case "boatdrive_nofail":
    case "default":
    case "kill":
    case "crawl":
    default:
}

_ID53223()
{
    level._ID28543 _meth_859D();
    level._ID28543 _meth_8583();
}

seaknight_fly_over_model()
{
    self _meth_80B8( "h2_vehicle_pavelow_low" );
}
