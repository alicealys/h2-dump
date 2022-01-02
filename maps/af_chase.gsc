// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" || getdvar( "beautiful_corner_hdr_demo" ) == "1" )
    {
        maps\af_chase_beautiful_corner::_ID50786();
        return;
    }

    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\af_chase_mission_select_cam::_ID50320();
        return;
    }

    maps\af_chase_knife_fight_code::_ID46096();
    level._ID52044 = 0;
    precachestring( &"AF_CHASE_PURSUE" );
    precachestring( &"AF_CHASE_MISSION_FAILED_IN_THE_OPEN" );
    precachestring( &"AF_CHASE_MISSION_FAILED_KEEP_UP" );
    precachestring( &"AF_CHASE_FAILED_TO_SHOOT_DOWN" );
    precachestring( &"AF_CHASE_PRESS_USE" );
    precachestring( &"AF_CHASE_PRESS_USE_KEYBOARD" );
    precachestring( &"AF_CHASE_HINT_CRAWL_RIGHT" );
    precachestring( &"AF_CHASE_HINT_CRAWL_LEFT" );
    precachestring( &"AF_CHASE_KILL_SHEPHERD" );
    precachestring( &"SCRIPT_WAYPOINT_SHEPHERD" );
    precachestring( &"AF_CHASE_FAILED_TO_CRAWL" );
    precachestring( &"AF_CHASE_FAILED_TO_PULL_KNIFE" );
    precacheitem( "m203" );
    precacherumble( "steady_rumble" );
    precacherumble( "smg_fire" );
    precacheitem( "m16_grenadier" );
    precacheitem( "rpg_straight_af_chase" );
    precacheitem( "rpg_af_chase" );
    precacheitem( "rpd" );
    precacheitem( "uzi" );
    precacheitem( "littlebird_FFAR" );
    precacheitem( "minigun_littlebird_spinnup" );
    precachemodel( "weapon_commando_knife" );
    precachemodel( "weapon_commando_knife_bloody" );
    precachemodel( "viewmodel_commando_knife" );
    precachemodel( "viewmodel_commando_knife_bloody" );
    precachemodel( "zodiac_head_roller" );
    precachemodel( "weapon_colt_anaconda" );
    precachemodel( "vehicle_pickup_destroyed" );
    precachemodel( "weapon_colt_anaconda_animated" );
    precachemodel( "fx_rifle_shell" );
    precachemodel( "body_desert_tf141_zodiac" );
    precachemodel( "vehicle_little_bird_bench_afghan" );
    precachemodel( "vehicle_little_bird_minigun_right" );
    precachemodel( "hat_opforce_arab_d" );
    precacherumble( "heavy_1s" );
    precacherumble( "heavy_2s" );
    precacherumble( "heavy_3s" );
    precacherumble( "light_1s" );
    precacherumble( "light_2s" );
    precacherumble( "light_3s" );
    precachemodel( "body_vil_shepherd_no_gun" );
    precachemodel( "prop_misc_literock_small_01" );
    precachemodel( "prop_misc_literock_small_02" );
    precachemodel( "prop_misc_literock_small_03" );
    precachemodel( "prop_misc_literock_small_04" );
    precachemodel( "prop_misc_literock_small_05" );
    precachemodel( "prop_misc_literock_small_06" );
    precachemodel( "prop_misc_literock_small_07" );
    precachemodel( "prop_misc_literock_small_08" );
    precachemodel( "viewbody_tf141" );
    precachemodel( "h2_vehicle_pavelow_low" );
    precachemodel( "body_desert_tf141_zodiac_wet" );
    precachemodel( "head_hero_price_zodiac_wet" );
    precacheshellshock( "af_chase_boatdrive_end" );
    precacheshader( "overlay_hunted_black" );
    precacheitem( "ending_knife" );
    precacheitem( "alt_ending_knife" );
    precacheshader( "hud_icon_commando_knife" );
    precacheshader( "reticle_center_throwingknife" );
    precacherumble( "tank_rumble" );
    precacherumble( "damage_light" );
    precacherumble( "damage_heavy" );
    level._ID53724 = gettime();
    _ID48548::main();
    _ID52272::main();
    _ID54615::main();
    setsaveddvar( "physVeh_limitTopSpeedWithBrakingFactor", 1 );
    _ID42407::_ID1951( "boatdrive_nofail", ::_ID53487, "", ::_ID312 );
    _ID42407::_ID1951( "boatdrive_begin", ::_ID43420, "", ::_ID312 );
    _ID42407::_ID1951( "boatdrive_lake", ::_ID54165, "", ::_ID312 );
    _ID42407::_ID1951( "boatdrive_lake_mid", ::_ID47690, "", ::_ID312 );
    _ID42407::_ID1951( "boatdrive_rapids", ::_ID51694, "", ::_ID312 );
    _ID42407::_ID1951( "boatdrive_below_rapids", ::_ID47253, "", ::_ID312 );
    _ID42407::_ID1951( "boatdrive_end", ::_ID49244, "", maps\af_chase_knife_fight::_ID48459 );
    _ID42407::_ID1951( "debug_boatdrive", ::_ID45594, "", ::_ID312 );
    _ID42407::_ID10126( ::_ID47474 );
    maps\af_chase_knife_fight::_ID53376();
    _ID53732();
    _ID42323::main();
    thread _ID44122();
    maps\af_chase_anim::_ID43266();
    thread maps\af_chase_knife_fight::_ID45160();
    _ID48669::_ID52537( "viewhands_player_tf141" );
    _ID45655::main();
    var_0 = getentarray( "script_vehicle_zodiac_player", "classname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, _ID48669::_ID50469 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID48364 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID44200 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID53340 );
    var_1 = getentarray( "rpg_bridge_guy", "script_noteworthy" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, maps\af_chase_code::_ID44939 );
    var_2 = getentarray( "actor_enemy_afghan_RPG", "classname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, maps\af_chase_code::_ID47566 );
    var_3 = 9000000;

    foreach ( var_5 in var_2 )
        var_5._ID31431 = var_3;

    thread maps\af_chase_code::_ID47957();
    var_7 = getentarray( "rope_splashers", "script_noteworthy" );
    _ID42237::_ID3350( var_7, _ID42407::_ID1947, maps\af_chase_code::_ID54639 );
    var_8 = getent( "enemy_chase_boat", "targetname" );
    var_8 _ID42407::_ID1947( maps\af_chase_code::_ID44610 );
    var_9 = getent( "rapids_trigger", "targetname" );
    var_9 thread maps\af_chase_code::_ID45596();
    var_9 thread maps\af_chase_code::_ID47093( "bump_small_after_rapids", "bump_big_after_rapids" );
    var_9 thread maps\af_chase_code::_ID44036();
    var_10 = [ "helicopterFireHill01_trigger", "helicopterFireHill02_trigger", "helicopterFireHill03_trigger", "helicopterFireHill04_trigger", "helicopterFireHill05_trigger" ];

    foreach ( var_12 in var_10 )
    {
        var_13 = getent( var_12, "targetname" );
        var_13 thread maps\af_chase_code::_ID47193();
    }

    var_15 = getent( "on_river_trigger", "targetname" );
    var_15 thread maps\af_chase_code::_ID48629();
    var_16 = getent( "boat_mount", "targetname" );
    var_16 thread maps\af_chase_code::_ID47428();
    var_17 = getent( "increase_enemy_boats_mid_lake", "script_noteworthy" );
    var_17 thread maps\af_chase_code::_ID47096( 2 );
    var_18 = getentarray( "trigger_multiple_speed", "classname" );
    _ID42237::_ID3350( var_18, maps\af_chase_code::_ID46266 );
    var_19 = getent( "enter_rapids", "targetname" );
    var_19 thread maps\af_chase_code::_ID44369();
    var_20 = getentarray( "script_vehicle_littlebird_armed", "classname" );
    _ID42237::_ID3350( var_20, _ID42407::_ID1947, _ID42411::_ID16988 );
    var_21 = getentarray( "script_vehicle_zodiac", "classname" );
    var_22 = getentarray( "script_vehicle_zodiac_physics", "classname" );
    _ID42237::_ID3350( var_22, _ID42407::_ID1947, maps\af_chase_code::_ID44200 );
    var_23 = _ID42237::_ID3296( var_21, var_22 );
    _ID42237::_ID3350( var_23, _ID42407::_ID1947, maps\af_chase_code::_ID51905 );
    _ID42237::_ID3350( var_23, _ID42407::_ID1947, maps\af_chase_code::_ID45377 );
    _ID42237::_ID3350( var_23, _ID42407::_ID1947, maps\af_chase_code::_ID53340 );
    var_24 = getentarray( "script_vehicle_pavelow", "classname" );
    _ID42237::_ID3350( var_24, _ID42407::_ID1947, maps\af_chase_code::_ID45902 );
    _ID42407::_ID1892( "axis", maps\af_chase_code::_ID46820 );
    _ID42407::_ID1892( "axis", maps\af_chase_code::_ID46114 );
    _ID42407::_ID1892( "axis", maps\af_chase_code::_ID51619 );
    thread maps\af_chase_code::_ID50404();
    var_25 = getentarray( "destructible_fake", "script_noteworthy" );
    _ID42237::_ID3350( var_25, maps\af_chase_code::_ID54470 );
    thread _ID52503();
    var_26 = getent( "end_caves_trigger", "targetname" );
    var_26 thread maps\af_chase_code::_ID49813();
    var_26 thread maps\af_chase_code::_ID45596();
    var_27 = getent( "helicopterFireAtHill01", "targetname" );
    var_27 _ID42407::_ID1947( maps\af_chase_code::new_helicopter_setup );
    var_28 = getent( "seaknight_fly_over", "targetname" );
    var_28 _ID42407::_ID1947( ::seaknight_fly_over_model );
    var_29 = _ID42237::_ID16640( "heli_attack_player_idle", "script_noteworthy" );
    _ID42237::_ID3350( var_29, maps\af_chase_code::_ID48083 );
    var_29 = getentarray( "heli_attack_player_idle", "script_noteworthy" );
    _ID42237::_ID3350( var_29, maps\af_chase_code::_ID48083 );
    var_30 = getentarray( "kill_destructibles_and_barrels_in_volume", "targetname" );
    _ID42237::_ID3350( var_30, maps\af_chase_code::_ID44724 );
    _ID42407::_ID1888( "boat_check_trailing", maps\af_chase_code::_ID54370, "trailing too far behind the enemy boat." );
    thread maps\af_chase_code::_ID52721( "river_flow" );
    thread maps\af_chase_zodiac::_ID54735();
    setsaveddvar( "ai_friendlyFireBlockDuration", "0" );
    setsaveddvar( "ragdoll_max_life", 20000 );
    setsaveddvar( "r_volumeLightScatterNeedsPrepass", 1 );
    var_31 = getentarray( "price_position_switch", "targetname" );
    _ID42237::_ID3350( var_31, maps\af_chase_code::_ID45906 );
    var_32 = getentarray( "bobbing_boat", "script_noteworthy" );
    _ID42237::_ID3350( var_32, _ID42407::_ID1947, maps\af_chase_code::_ID43202 );
    var_33 = getentarray( "crashable_whizby_boats", "script_noteworthy" );
    _ID42237::_ID3350( var_33, _ID42407::_ID1947, maps\af_chase_code::_ID46511 );
    var_34 = getent( "enemy_zodiacs_wipe_out", "targetname" );
    var_34 thread maps\af_chase_zodiac::_ID51949();
    var_35 = getentarray( "neutral_enemies", "targetname" );
    _ID42237::_ID3350( var_35, maps\af_chase_code::_ID46641 );
    var_36 = getent( "dialog_cave", "targetname" );
    var_36 thread maps\af_chase_code::_ID52533();
    thread maps\af_chase_code::_ID46043();
    thread maps\af_chase_code::_ID45831();
    thread maps\af_chase_code::_ID52462();
    thread maps\af_chase_code::_ID47094();

    if ( _ID42407::_ID20505() || issubstr( level._ID35897, "boat" ) )
        thread maps\af_chase_waterfall::main();

    var_37 = getent( "trigger_out_of_caves", "targetname" );

    if ( isdefined( var_37 ) )
        var_37 thread maps\af_chase_code::_ID54381();

    var_38 = getentarray( "open_area", "targetname" );
    _ID42237::_ID3350( var_38, maps\af_chase_code::_ID43265 );
    _ID42407::_ID4917();
    var_39 = getentarray( "sentry_technical", "script_noteworthy" );
    _ID42237::_ID3350( var_39, _ID42407::_ID1947, maps\af_chase_code::_ID52842 );
    var_40 = getentarray( "explode_barrels_in_radius", "targetname" );
    _ID42237::_ID3350( var_40, maps\af_chase_code::_ID47294 );
    thread _ID46483();
    thread _ID45286();
    setsaveddvar( "r_reactiveMotionVehicleEnabled", 1 );
    setsaveddvar( "r_reactiveMotionVehicleRadius", 200.0 );
    setsaveddvar( "r_reactiveMotionVehicleZOffset", -60.0 );
    setsaveddvar( "r_reactiveMotionEffectorStrengthScale", 1000 );
    maps\af_chase_code::_ID44976();
    var_41 = getent( "heli_spawner", "targetname" );
    var_41 _ID42407::_ID1947( ::add_target_name );
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
    _ID46213();

    foreach ( var_1 in level._ID2237 )
        _ID42237::_ID14400( "despawn_" + var_1 );

    setsaveddvar( "vehNotifyHitEntityWithVehContactEvent", 1 );
    level.player _ID42407::_ID13024( "disable_shooting" );
    level.player _ID42407::_ID13024( "zodiac_aim_helicopter" );
}

_ID312()
{

}

add_target_name()
{
    self.targetname = "heli_no_turret";
}

_ID46213()
{
    level._ID2237 = [ "ai_group_01", "ai_group_02", "ai_group_03", "ai_group_04", "ai_group_05", "ai_group_06", "ai_group_07", "ai_group_08", "ai_group_09", "ai_group_10", "ai_group_11" ];
}

_ID45286()
{
    foreach ( var_1 in level._ID2237 )
    {
        _ID42407::_ID3343( var_1, ::_ID45663, "despawn_" + var_1 );
        _ID42407::_ID3343( var_1, ::_ID53753, "despawn_" + var_1 );
    }
}

_ID45663( var_0 )
{
    for ( var_1 = 1; var_1 <= level._ID2237.size; var_1++ )
    {
        if ( isdefined( self._ID988.targetname ) && self._ID988.targetname == "H2_New_AI_" + var_1 )
        {
            self.accuracy = 0;
            self._ID4867 = 0;
            break;
        }
    }

    _ID42237::_ID14413( var_0 );

    if ( isdefined( self ) && isalive( self ) )
        self delete();
}

_ID53753( var_0 )
{
    self endon( var_0 );

    for (;;)
    {
        self waittill( "veh_contact",  var_1  );

        if ( !isdefined( level.player._ID40065 ) )
            break;

        if ( var_1 == level.player || var_1 == level.player._ID40065 )
        {
            if ( !_func_2a5( self ) )
            {
                self._ID34237 = 1;
                self kill();
                return;
            }

            var_2 = vectornormalize( self.origin - var_1.origin );
            var_2 *= 8000;
            self startragdollfromimpact( "torso_lower", var_2 );
            break;
        }
    }
}

_ID50787()
{
    level endon( "stop_music_at_splash" );
    musicstop( 0.4 );
    wait 1.5;
    var_0 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_0 endon( "death" );
    level._ID44901 = var_0;

    for (;;)
    {
        var_0 playsound( "mus_af_chase_startinboat", "sounddone" );
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
    level.player playerlinktoblend( var_0, "tag_player", 0.2, 0.1, 0.1 );
    var_0 useby( level.player );
    level.player._ID11803 = var_0;
    thread maps\af_chase_code::_ID53263();
    _ID53223();
}

_ID45594()
{
    _ID42237::_ID14402( "startPoint_boatDrive" );
    _ID42475::_ID34575( "start_debug_boatdrive_checkpoint" );
    maps\af_chase_code::_ID49209();
    var_0 = _ID42411::_ID35195( "players_boat" );
    level.player playerlinktoblend( var_0, "tag_player", 0.2, 0.1, 0.1 );
    var_0 useby( level.player );
    level.player._ID11803 = var_0;
    _ID42237::_ID3350( getentarray( "trigger_multiple", "code_classname" ), _ID42237::_ID38863 );
}

_ID47690()
{
    _ID42475::_ID34575( "start_boatdrive_lake_mid_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_mid_lake" );
    maps\af_chase_code::_ID49209();
    _ID42237::_ID14402( "exit_caves" );
    var_0 = getent( "players_boat", "targetname" );
    var_1 = _ID42237::_ID16638( "lake_mid_start_pose", "targetname" );
    var_0.origin = var_1.origin;
    var_0.angles = var_1.angles;
    var_2 = _ID42411::_ID35195( "players_boat" );
    var_3 = _ID42411::_ID35196( "enemy_chase_boat" );
    waitframe;
    level.player playerlinktoblend( var_2, "tag_player", 0.2, 0.1, 0.1 );
    var_2 useby( level.player );
    level.player._ID11803 = var_2;
    level.player._ID11803 _meth_85a2( 1 );
    var_2 vehicle_setspeedimmediate( 60, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_boatdrive_lake" );
    _ID53223();
}

_ID54165()
{
    _ID42475::_ID34575( "start_boatdrive_lake_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_lake" );
    maps\af_chase_code::_ID49209();
    var_0 = getent( "players_boat", "targetname" );
    var_1 = _ID42237::_ID16638( "lake_start_pose", "targetname" );
    var_0.origin = var_1.origin;
    var_0.angles = var_1.angles;
    var_2 = _ID42411::_ID35195( "players_boat" );
    var_3 = _ID42411::_ID35196( "enemy_chase_boat" );
    waitframe;
    level.player playerlinktoblend( var_2, "tag_player", 0.2, 0.1, 0.1 );
    var_2 useby( level.player );
    level.player._ID11803 = var_2;
    level.player._ID11803 _meth_85a2( 1 );
    var_2 vehicle_setspeedimmediate( 48, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_boatdrive_lake" );
    _ID53223();
}

_ID51694()
{
    _ID42475::_ID34575( "start_boatdrive_rapids_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_rapids" );
    maps\af_chase_code::_ID52505( "seaknight_fly_over", "enemy_heli_pos_rapids" );
    maps\af_chase_code::_ID49209();
    _ID42237::_ID14402( "exit_caves" );
    var_0 = getent( "players_boat", "targetname" );
    var_1 = _ID42237::_ID16638( "rapids_start_position", "targetname" );
    var_0.origin = var_1.origin;
    var_0.angles = var_1.angles;
    var_2 = _ID42411::_ID35195( "players_boat" );
    var_3 = _ID42411::_ID35196( "enemy_chase_boat" );
    var_4 = _ID42411::_ID35196( "seaknight_fly_over" );
    waitframe;
    level.player playerlinktoblend( var_2, "tag_player", 0.2, 0.1, 0.1 );
    var_2 useby( level.player );
    level.player._ID11803 = var_2;
    level.player._ID11803 _meth_85a2( 1 );
    var_2 vehicle_setspeedimmediate( 78, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_rapids" );
    _ID53223();
}

_ID47253()
{
    _ID42475::_ID34575( "start_boatdrive_river_below_rapids_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_below_rapids" );
    maps\af_chase_code::_ID52505( "seaknight_fly_over", "enemy_heli_pos_rapids" );
    maps\af_chase_code::_ID49209();
    _ID42237::_ID14402( "exit_caves" );
    _ID42237::_ID14402( "on_river" );
    var_0 = getent( "players_boat", "targetname" );
    var_1 = _ID42237::_ID16638( "below_rapids_start_position", "targetname" );
    var_0.origin = var_1.origin;
    var_0.angles = var_1.angles;
    var_2 = _ID42411::_ID35195( "players_boat" );
    var_3 = _ID42411::_ID35196( "enemy_chase_boat" );
    waitframe;
    level.player playerlinktoblend( var_2, "tag_player", 0.2, 0.1, 0.1 );
    var_2 useby( level.player );
    level.player._ID11803 = var_2;
    level.player._ID11803 _meth_85a2( 1 );
    var_2 vehicle_setspeedimmediate( 78, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_rapids" );
    _ID53223();
}

_ID49244()
{
    _ID42475::_ID34575( "start_boatdrive_end_checkpoint" );
    maps\af_chase_code::_ID43845( "enemy_chase_boat", "enemy_boat_pos_end" );
    var_0 = getent( "seaknight_pickup_boat_spot", "script_noteworthy" );
    thread maps\af_chase_code::_ID48797();
    maps\af_chase_code::_ID49209();
    _ID42237::_ID14402( "exit_caves" );
    _ID42237::_ID14402( "enemy_zodiacs_wipe_out" );
    var_1 = getent( "players_boat", "targetname" );
    var_2 = _ID42237::_ID16638( "end_start_position", "targetname" );
    var_1.origin = var_2.origin;
    var_1.angles = var_2.angles;
    var_3 = _ID42411::_ID35195( "players_boat" );
    var_4 = _ID42411::_ID35196( "enemy_chase_boat" );
    var_5 = _ID42411::_ID35195( "enemy_pickup_heli" );
    waitframe;
    level.player playerlinktoblend( var_3, "tag_player", 0.2, 0.1, 0.1 );
    var_3 useby( level.player );
    level.player._ID11803 = var_3;
    var_3 vehicle_setspeedimmediate( 57, 90, 90 );
    thread maps\af_chase_code::_ID53263();
    thread maps\af_chase_code::_ID52721( "river_current_start_boatdrive_end" );
    _ID53223();
}

_ID53487()
{
    _ID42475::_ID34575( "start_boatdrive_nofail_checkpoint" );
    setdvar( "scr_zodiac_test", 1 );
    level.player enableinvulnerability();
    thread _ID47474();
}

_ID52503()
{
    waitframe;

    switch ( level._ID35897 )
    {
        case "default":
        case "boatdrive_nofail":
        case "boatdrive_begin":
        case "boatdrive_lake":
        case "boatdrive_lake_mid":
        case "boatdrive_rapids":
        case "boatdrive_below_rapids":
        case "boatdrive_end":
        case "boatdrive_end_test":
            objective_add( _ID42407::_ID25268( "pursue" ), "current", &"AF_CHASE_PURSUE" );
            _func_194( _ID42407::_ID25268( "pursue" ), level._ID48502, ( 0, 0, 110 ) );
            _ID42237::_ID14413( "player_in_sight_of_boarding" );
            setsaveddvar( "objectiveHide", 1 );
            _ID42237::_ID14413( "price_fired_all_his_shots_at_heli" );
            objective_state( _ID42407::_ID25268( "pursue" ), "done" );
        case "end":
        case "crawl":
        case "kill":
        case "debug_boatdrive":
        case "wakeup":
        case "wakefast":
        case "turnbuckle":
        case "gloat":
        case "wounded":
        case "pullout":
        case "gun_drop":
        case "gun_kick":
        case "knife_fight":
        case "price_wakeup":
        case "knife_moment":
        case "walkoff":
        case "scene_fight_loop_B":
        case "scene_fight_loop_C":
        case "scene_fight_loop_D2":
        case "scene_fight_loop_D3":
        case "scene_fight_loop_E":
        case "on_foot_art_tweak":
            thread maps\af_chase_knife_fight::_ID49101();
            break;
    }

    endswitch( 32 )  case "on_foot_art_tweak" loc_1284 case "scene_fight_loop_E" loc_1284 case "scene_fight_loop_D3" loc_1284 case "scene_fight_loop_D2" loc_1284 case "scene_fight_loop_C" loc_1284 case "scene_fight_loop_B" loc_1284 case "walkoff" loc_1284 case "knife_moment" loc_1284 case "price_wakeup" loc_1284 case "knife_fight" loc_1284 case "gun_kick" loc_1284 case "gun_drop" loc_1284 case "pullout" loc_1284 case "wounded" loc_1284 case "gloat" loc_1284 case "turnbuckle" loc_1284 case "wakefast" loc_1284 case "wakeup" loc_1284 case "boatdrive_end_test" loc_121A case "debug_boatdrive" loc_1284 case "boatdrive_end" loc_121A case "boatdrive_below_rapids" loc_121A case "boatdrive_rapids" loc_121A case "boatdrive_lake_mid" loc_121A case "boatdrive_lake" loc_121A case "boatdrive_begin" loc_121A case "boatdrive_nofail" loc_121A case "default" loc_121A case "kill" loc_1284 case "crawl" loc_1284 case "end" loc_1284 default loc_128F
}

_ID44726()
{
    level._ID30908["afchase_shp_stillincaves"] = "afchase_shp_stillincaves";
    level._ID30908["afchase_shp_observe"] = "afchase_shp_observe";
    level._ID30908["afchase_shp_uavsupport"] = "afchase_shp_uavsupport";
    wait 1;
    _ID42237::_ID14413( "player_on_boat" );
    wait 10;
    level.player _ID42407::_ID28864( "afchase_shp_stillincaves" );
    wait 10;
    level.player _ID42407::_ID28864( "afchase_shp_observe" );
    _ID42237::_ID14413( "exit_caves" );
    wait 4;
    level.player _ID42407::_ID28864( "afchase_shp_uavsupport" );
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
        case "default":
        case "boatdrive_nofail":
        case "boatdrive_begin":
        case "boatdrive_lake":
        case "boatdrive_lake_mid":
        case "boatdrive_rapids":
        case "boatdrive_below_rapids":
        case "boatdrive_end":
        case "debug_boatdrive":
            var_0 = _ID42407::_ID24586( "mus_af_chase_startinboat" );
            _ID42407::_ID24577( "mus_af_chase_startinboat", var_0 );
            _ID42237::_ID14413( "test_boat_is_on_spline" );
            level notify( "stop_music" );
            musicstop( 4 );
            level.player thread _ID42407::_ID27079( "mus_af_chase_waterfall" );
        case "wakeup":
        case "wakefast":
        case "turnbuckle":
        case "gloat":
            _ID42237::_ID14413( "af_chase_final_fight" );
        case "gun_drop":
            _ID42407::_ID24587( "mus_af_chase_final_fight" );
        case "crawl":
        case "kill":
        case "wounded":
        case "pullout":
        case "gun_kick":
        case "price_wakeup":
        case "walkoff":
            _ID42237::_ID14413( "af_chase_final_ending" );
            _ID42407::_ID24587( "mus_af_chase_final_ending" );
            break;
        default:
            break;
    }
}

_ID53223()
{
    level._ID28543 _meth_859d();
    level._ID28543 _meth_8583();
}

seaknight_fly_over_model()
{
    self setmodel( "h2_vehicle_pavelow_low" );
}
