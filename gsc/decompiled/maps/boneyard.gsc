// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C662()
{
    level._id_BF83 = "boneyard";
    _id_AB15::init();
    _id_D4E2::main();
    _id_AA09::main();
    _id_AACE::main();
    _id_CC16::main();
    maps\_load::main();
    maps\boneyard_anim::main();
    common_scripts\utility::flag_init( "intro" );
    common_scripts\utility::flag_wait( "intro" );
    maps\boneyard_lighting::main();
    maps\boneyard_aud::main();
    _id_C8B8();
    common_scripts\utility::flag_set( "lighting_kickoff_threads" );
}

main()
{
    precacheitem( "littlebird_FFAR" );
    precacheitem( "smoke_grenade_american" );
    precacheitem( "rpg_straight" );
    precacheitem( "rpg_distant_stable" );
    precacherumble( "c130_flyby" );
    precacherumble( "tank_rumble" );
    precachemodel( "hat_opforce_merc_b" );
    precachemodel( "h2_viewbody_sniper_uaz" );

    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\boneyard_mission_select_cam::_id_C490();
        return;
    }

    if ( getdvar( "beautiful_corner" ) == "1" )
    {
        _id_C662();
        return;
    }

    setsaveddvar( "fx_cast_shadow", 0 );
    setsaveddvar( "ai_perf_disableVehicleVisNotify", 0 );
    maps\_juggernaut::main();
    maps\_drone_ai::init();
    _id_B0E2();
    maps\_load::set_player_viewhand_model( "viewhands_player_marines" );
    animscripts\dog\dog_init::initdoganimations();
    _id_D4E2::main();
    _id_AA09::main();
    _id_AACE::main();
    _id_CC16::main();
    maps\_load::main();
    maps\boneyard_anim::main();
    maps\boneyard_lighting::main();
    maps\boneyard_aud::main();
    maps\_compass::setupminimap( "compass_map_boneyard" );
    thread _id_AB52::main();
    _id_C8B8();
    _id_C029();
    maps\boneyard_code::_id_A7FC();
    maps\boneyard_code::_id_A8B1();
    maps\boneyard_code::_id_AE86();
    maps\boneyard_code::_id_C553();
    maps\boneyard_code::_id_C3DA();
    maps\boneyard_code::_id_B2DA();
    maps\boneyard_code::_id_B188();
    _id_C076();
    maps\boneyard_code::_id_BF34();
    maps\boneyard_code::init_scope_fov_setup();
    thread maps\boneyard_code::viewhands_wibble_modifier();
    level.cosine["20"] = cos( 20 );
    level.cosine["60"] = cos( 60 );
    thread objectives();
    common_scripts\utility::flag_set( "lighting_kickoff_threads" );
    level._id_B64E = [];
    level._id_B64E["axis"] = "r";
    level._id_B64E["team3"] = "p";
    thread _id_C258();
    thread flyby();
    thread _id_C9C0();
    thread _id_D422();
    thread _id_CD75();
    common_scripts\utility::array_thread( getentarray( "airMask", "targetname" ), maps\boneyard_code::resetangle );
    common_scripts\utility::array_thread( getentarray( "airMask", "targetname" ), maps\boneyard_code::animatevariousmodel, "airMask", undefined, "higround_ascend" );
    setsaveddvar( "ai_eventDistNewEnemy", 512 );
    setsaveddvar( "ai_eventDistFootstepSprint", 640 );
    setsaveddvar( "ai_eventDistFootstep", 480 );
    setsaveddvar( "ai_eventDistFootstepWalk", 320 );
    maps\boneyard_code::portal_groups_init();
    maps\boneyard_code::bya_smodel_groups_init();
    setsaveddvar( "ai_perf_disableStairsSteepMetrics", "1" );
    setdvar( "truck_low_breaking_speed", 0.1 );
}

_id_C8B8()
{
    common_scripts\utility::flag_init( "delete_excess" );
    common_scripts\utility::flag_init( "suburban_target_btr80" );
    common_scripts\utility::flag_init( "littlebird_at_goal" );
    common_scripts\utility::flag_init( "btr80_target_littlebird" );
    common_scripts\utility::flag_init( "btr80_destroyed" );
    common_scripts\utility::flag_init( "littlebird_stage1" );
    common_scripts\utility::flag_init( "uaz_park" );
    common_scripts\utility::flag_init( "uaz_player_in_control" );
    common_scripts\utility::flag_init( "intro_btr80_dead" );
    common_scripts\utility::flag_init( "ride_uaz_arriving" );
    common_scripts\utility::flag_init( "uaz_mounted" );
    common_scripts\utility::flag_init( "ride_enemy_vehicles_spawn" );
    common_scripts\utility::flag_init( "uaz_driver_dead" );
    common_scripts\utility::flag_init( "music_boneyard_intro" );
    common_scripts\utility::flag_init( "music_boneyard_flyby" );
    common_scripts\utility::flag_init( "makarov_dialogue" );
    common_scripts\utility::flag_init( "ride_minigun_gunner_dead" );
    common_scripts\utility::flag_init( "player_loses_control_of_uaz" );
    common_scripts\utility::flag_init( "uaz_nag" );
    common_scripts\utility::flag_init( "obj_rallypoint" );
    common_scripts\utility::flag_init( "obj_ride" );
    common_scripts\utility::flag_init( "obj_ride_c130" );
    common_scripts\utility::flag_init( "uaz_first_friction_edit" );
    common_scripts\utility::flag_init( "uaz_second_friction_edit" );
    common_scripts\utility::flag_init( "uaz_third_friction_edit" );
}

_id_C029()
{
    createthreatbiasgroup( "aware_of_player" );
    createthreatbiasgroup( "ignore_player" );
    createthreatbiasgroup( "enemy_dog" );
    createthreatbiasgroup( "lowthreat" );
    setthreatbias( "allies", "aware_of_player", 0 );
    setthreatbias( "allies", "axis", -1000 );
    setthreatbias( "allies", "team3", -1000 );
    setthreatbias( "allies", "enemy_dog", -3000 );
    setignoremegroup( "allies", "ignore_player" );
    setthreatbias( "lowthreat", "axis", -2000 );
    setthreatbias( "lowthreat", "team3", -2000 );
}

_id_B0E2()
{
    maps\_utility::default_start( ::_id_B972 );
    maps\_utility::add_start( "intro", ::_id_B972, "Intro" );
    maps\_utility::add_start( "road", ::_id_CA0E, "Road" );
    maps\_utility::add_start( "flyby", ::_id_C57B, "Flyby" );
    maps\_utility::add_start( "higround", ::_id_BEC2, "Higround" );
    maps\_utility::add_start( "ride", ::_id_D537, "Ride" );
    maps\_utility::add_start( "ride_end", ::_id_B969, "Ride_end" );
}

objectives()
{
    var_0 = 0;

    switch ( level.start_point )
    {
        case "intro":
        default:
            common_scripts\utility::flag_wait( "obj_rallypoint" );
            var_0 = 0;
            var_1 = getent( "rallypoint", "targetname" );
            var_2 = getent( var_1.target, "targetname" );
            objective_add( var_0, "current", &"BONEYARD_OBJ_RALLYPOINT", var_2.origin );
            level thread _id_B0F2( var_0, var_2, var_1 );
        case "ride":
        case "higround":
        case "flyby":
            common_scripts\utility::flag_wait( "obj_ride" );
            objective_state( var_0, "done" );
            var_0 = 1;
            var_2 = getent( "rallypoint", "targetname" );
            objective_add( var_0, "current", &"BONEYARD_OBJ_RIDE", var_2.origin );
            objective_setpointertextoverride( var_0, &"BONEYARD_OBJ_RIDE_ICON" );
            objective_onentity( var_0, level._id_BE0D, ( -48, -32, 50 ) );
        case "ride_c130":
            common_scripts\utility::flag_wait( "obj_ride_c130" );
            level notify( "release_objective" );
            objective_state( var_0, "done" );
            var_0 = 2;
            var_2 = level._id_AC2D;
            objective_add( var_0, "current", &"BONEYARD_OBJ_C130", var_2.origin );
            setsaveddvar( "compass", 0 );
            thread maps\boneyard_code::_id_C4E2( var_0, level._id_AC2D );
    }

    common_scripts\utility::flag_wait( "uaz_park" );
    wait 0.5;
    objective_state_nomessage( var_0, "done" );
    wait 2;
    maps\boneyard_code::fade_out_level( 2.5 );

    if ( maps\_utility::is_default_start() )
        maps\_utility::nextmission();
    else
        iprintlnbold( "DEVELOPER: END OF SCRIPTED LEVEL" );
}

_id_B0F2( var_0, var_1, var_2 )
{
    common_scripts\utility::flag_wait( "objective_lerp" );
    var_1 moveto( var_2.origin, 60 );

    for ( var_3 = 0; var_3 < 6; var_3++ )
    {
        wait 10;
        objective_position( var_0, var_1.origin );
    }

    objective_position( var_0, var_2.origin );
}

_id_CD75()
{
    common_scripts\utility::flag_wait( "music_boneyard_intro" );
    maps\_utility::music_loop( "mus_boneyard_intro", 151 );
    common_scripts\utility::flag_wait( "music_boneyard_flyby" );
    maps\_utility::music_loop( "mus_boneyard_flyby", 184, 6 );
    common_scripts\utility::flag_wait( "ride_enemy_vehicles_spawn" );
    maps\_utility::music_play( "mus_boneyard_jeepride", 4 );
    common_scripts\utility::flag_wait( "music_boneyard_planechase" );
    maps\_utility::music_play( "mus_boneyard_planechase", 1 );
    common_scripts\utility::flag_wait( "player_loses_control_of_uaz" );
    wait 0.8;
    musicstop( 1.5 );
    level notify( "stop_music" );
    level.player maps\_utility::play_sound_on_entity( "mus_boneyard_planechase_end" );
}

_id_B972()
{
    soundscripts\_snd::snd_message( "start_intro_checkpoint" );
    level thread _id_CB2B();
}

_id_CB2B()
{
    getent( "littlebird", "targetname" ) maps\_utility::add_spawn_function( ::_id_CC54 );
    getent( "intro_littlebird", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_CC54, 1 );
    getent( "intro_littlebird_2", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_CC54, 1 );
    getent( "intro_littlebird_2", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_D38B );
    getent( "intro_laatpv", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_C2A0 );
    getent( "intro_btr80", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_C2CE );
    getent( "scene_a_suburban", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_C476 );
    level thread intro_player();
    level thread _id_BF91();
    level thread intro_dialogue();
    maps\_utility::activate_trigger_with_targetname( "intro_trigger" );
    common_scripts\_exploder::exploder( "intro_exploder" );
    level thread _id_BB8B();
    common_scripts\utility::flag_wait( "pullup_weapon" );
    wait 0.2;
    level.player.surprisedbymedistsq = squared( 5000 );
    var_0 = gettime();
    common_scripts\utility::flag_wait_or_timeout( "player_left_fuselage", 15 );
    maps\_utility::wait_for_buffer_time_to_pass( var_0, 5 );
    maps\_utility::activate_trigger_with_targetname( "intro_trigger_2" );
    common_scripts\utility::array_thread( getentarray( "littlebird_trigger", "targetname" ), ::_id_B90B );
    level thread _id_AC3F();
    wait 5;
    maps\_utility::activate_trigger_with_targetname( "intro_color_trigger" );
    common_scripts\utility::flag_wait( "intro_btr80_destroy" );
    wait 2;
    maps\_utility::activate_trigger_with_targetname( "intro_threeway_fight" );
    common_scripts\utility::flag_set( "switch_color" );
}

_id_BB8B()
{
    common_scripts\utility::flag_wait( "obj_rallypoint" );
    wait 1;
    maps\_introscreen::_id_B25C();
}

intro_player()
{
    level.player.ignoreme = 1;
    level.player common_scripts\utility::waittill_any_timeout( 6, "weapon_fired", "grenade_fire" );
    wait 6;
    level.player.ignoreme = 0;
}

intro_dialogue()
{
    thread intro_dialogue_part_2();
    wait 2.5;
    common_scripts\utility::flag_set( "music_boneyard_intro" );
    maps\_utility::radio_dialogue( "byard_pri_wipeoutus" );
    common_scripts\utility::flag_set( "obj_rallypoint" );
    common_scripts\utility::flag_wait_either( "intro_btr80_dead", "objective_lerp" );
    wait 1;
    maps\_utility::radio_dialogue( "byard_pri_backupplan" );
    wait 1;
    maps\_utility::radio_dialogue( "byard_pri_lzishot" );
    maps\_utility::radio_dialogue( "byard_nkl_ontheway" );
    maps\_utility::radio_dialogue( "byard_pri_sharpish" );
    common_scripts\utility::flag_wait( "let_them_fight" );
    common_scripts\utility::flag_set( "makarov_dialogue" );
    maps\_utility::radio_dialogue( "byard_pri_radiotraffic" );
    maps\_utility::radio_dialogue( "byard_pri_contactmakarov" );
    wait 2;
    level thread _id_C6ED();
}

intro_dialogue_part_2()
{
    level endon( "flyby_c130" );
    common_scripts\utility::flag_wait( "makarov_dialogue" );
    common_scripts\utility::flag_waitopen( "makarov_dialogue" );
    common_scripts\utility::flag_wait( "keep_moving" );
    maps\_utility::radio_dialogue( "byard_pri_headnorth" );
    common_scripts\utility::flag_wait( "road" );
    maps\_utility::radio_dialogue( "byard_pri_whereareyou" );
    maps\_utility::radio_dialogue( "byard_nkl_sandstorms" );
}

_id_C6ED()
{
    soundscripts\_snd::snd_message( "aud_start_mix_makarov_discussion" );
    wait 2;
    maps\_utility::radio_dialogue( "byard_pri_warhero" );
    wait 1.5;
    maps\_utility::radio_dialogue( "byard_pri_takecareofrest" );
    wait 1.5;
    maps\_utility::radio_dialogue( "byard_pri_onthischannel" );
    wait 0.5;
    maps\_utility::radio_dialogue( "byard_pri_lastaweek" );
    wait 1;
    maps\_utility::radio_dialogue( "byard_mkv_neitherwillyou" );
    wait 0.25;
    maps\_utility::radio_dialogue( "byard_pri_myfriend" );
    maps\_utility::radio_dialogue( "byard_mkv_cutsbothways" );
    maps\_utility::radio_dialogue( "byard_mkv_hotelbravo" );
    maps\_utility::radio_dialogue( "byard_pri_myregards" );
    wait 3;
    soundscripts\_snd::snd_message( "aud_stop_mix_makarov_discussion" );
    common_scripts\utility::flag_clear( "makarov_dialogue" );
}

_id_BF91()
{
    common_scripts\utility::flag_wait( "intro_rockets" );
    common_scripts\utility::array_thread( getentarray( "intro_first_rocket", "targetname" ), maps\boneyard_code::_id_C119 );
    common_scripts\utility::flag_wait( "intro_rockets_2" );
    common_scripts\utility::array_thread( getentarray( "intro_rocket_start", "targetname" ), maps\boneyard_code::_id_C119 );
}

_id_C2A0()
{
    var_0 = [];
    var_0[tolower( "MOD_PROJECTILE_SPLASH" )] = 1;
    var_0[tolower( "MOD_PROJECTILE" )] = 1;
    maps\boneyard_code::_id_B44E( var_0, undefined, 1, 9 );
    maps\_vehicle::force_kill();
}

_id_C2CE()
{
    maps\boneyard_code::_id_BDB7();
    thread maps\boneyard_code::_id_D587( self.script_team );
    thread _id_B86F();
    thread maps\boneyard_aud::aud_bone_intro_btr80();
    common_scripts\utility::flag_wait( "intro_btr80_pre_attack" );
    maps\_utility::ent_flag_set( "hold_fire" );
    thread maps\boneyard_code::_id_B1C6( level.intro_heli._id_CE98, ( 0, 0, 0 ), 1 );
    level.intro_heli._id_CE98 = undefined;
    common_scripts\utility::flag_wait( "intro_btr80_attack" );
    maps\_utility::ent_flag_clear( "hold_fire" );
    common_scripts\utility::flag_wait( "intro_btr80_attack_kill" );
    maps\boneyard_code::_id_B1C6( level.intro_heli, ( 0, 0, 0 ), 1 );
    wait 1;
    thread _id_B93E();
}

_id_B86F()
{
    common_scripts\utility::flag_wait( "intro_btr80_destroy" );
    level.intro_heli._id_CE98 = undefined;
    var_0 = [];
    var_0[tolower( "MOD_PROJECTILE_SPLASH" )] = 1;
    var_0[tolower( "MOD_PROJECTILE" )] = 1;
    maps\boneyard_code::_id_B44E( var_0, undefined, 1, 4 );
    common_scripts\utility::flag_set( "intro_btr80_dead" );
    maps\_vehicle::force_kill();
}

_id_B93E()
{
    self endon( "death" );

    while ( 1 && isalive( self ) )
    {
        var_0 = getaiarray( "axis" );
        var_0 = common_scripts\utility::array_add( var_0, level.player );
        maps\boneyard_code::_id_B1C6( var_0[0], ( 0, 0, 0 ), 1 );
    }
}

_id_D38B()
{
    level.intro_heli = self;
    common_scripts\utility::flag_wait( "intro_littlebird_strafe" );
    common_scripts\utility::array_thread( self.mgturret, ::_id_BBB7, self );
}

_id_C076()
{
    var_0 = getentarray( "vehicle_sweetener", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, ::_id_C3D5 );
    var_0 = getvehiclenodearray( "vehicle_sweetener", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, ::_id_C3D5 );
}

_id_C3D5()
{
    self waittill( "trigger", var_0 );
    var_0 playsound( self.script_soundalias );
}

_id_BBB7( var_0 )
{
    var_0 endon( "death" );
    self setconvergencetime( 0 );
    var_1 = anglestoforward( self.angles );
    var_2 = self.origin + 700 * var_1 + ( 0, 0, -80 );
    var_3 = spawn( "script_origin", var_2 );
    var_3 linkto( self );
    var_4 = self getmode();
    self setmode( "manual" );
    self settargetentity( var_3 );
    common_scripts\utility::flag_waitopen( "intro_littlebird_strafe" );
    var_3 delete();
    self cleartargetentity();
    self setmode( var_4 );
}

_id_C476()
{
    self endon( "death" );
    thread maps\boneyard_aud::aud_bone_scene_a_suburban();
    thread maps\boneyard_code::_id_D1DF( "scene_a_wave2" );
    var_0 = self.mgturret[0];
    var_0 waittill( "turret_ready" );
    var_1 = var_0 getturretowner();
    var_1 thread maps\boneyard_code::_id_D1DF( "scene_a_wave2" );
    var_2 = getent( "mg_target", "targetname" );
    var_0 thread animscripts\laatpv_turret\common::set_manual_target( var_2, 3, 6 );
    common_scripts\utility::flag_wait( "scene_a_wave2" );
    thread _id_AB71( self );

    for (;;)
    {
        self waittill( "damage", var_3, var_4 );

        if ( isdefined( self._id_AFA2 ) && var_4 == self._id_AFA2 )
            break;
    }

    maps\_vehicle::godoff();
    self notify( "death", self._id_AFA2, "MOD_PROJECTILE" );
}

_id_AB71( var_0 )
{
    var_1 = spawn( "script_origin", var_0.origin + ( 0, 0, 150 ) );
    var_1 linkto( var_0 );
    var_1 maps\_utility::waittill_player_lookat( undefined, undefined, undefined, 5, var_0 );
    var_2 = getent( "scene_a_rpg_guy", "targetname" ) maps\_utility::spawn_ai( 1 );
    var_2 endon( "death" );
    var_0._id_AFA2 = var_2;
    var_3 = getent( "scene_a_rpg_spot", "targetname" );
    var_2 maps\_utility::set_allowdeath( 1 );
    var_2.ignoreall = 1;
    var_2.ignoreme = 1;
    var_3 maps\_anim::anim_generic( var_2, "prone_2_stand" );
    var_2 setstablemissile( 1 );
    var_2.ignoreall = 0;
    var_2 setentitytarget( var_0, 1 );
    var_0 common_scripts\utility::waittill_notify_or_timeout( "death", 5 );
    var_2 setstablemissile( 0 );
    var_2 clearentitytarget();
    var_2.ignoreme = 0;
    var_2 maps\_utility::set_force_color( "p" );
    var_2.goalheight = 128;
    var_2 maps\boneyard_code::_id_AD71();
}

_id_CC54( var_0 )
{
    level notify( "road_heli_spawned" );
    common_scripts\utility::array_thread( self.mgturret, ::_id_C9CE );
    level.heli = self;
    self.script_ai_invulnerable = 1;
    waittillframeend;
    thread maps\boneyard_code::_id_D587( self.script_team );

    if ( !isdefined( var_0 ) )
        thread _id_C320();

    self._id_CE98 = spawn( "script_model", ( 0, 0, 0 ) );
    self._id_CE98 linkto( self, "tag_origin", ( 100, 0, 150 ), ( 0, 0, 0 ) );
    thread _id_AAEC( self._id_CE98 );
}

_id_C320()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "rpg_fired" );
        var_0 = missile_createrepulsorent( self, 2500, 1000 );
        wait 2.5;
        missile_deleteattractor( var_0 );
    }
}

_id_D5B7()
{
    if ( !isdefined( level.heli ) )
        return 0;

    if ( !isalive( level.heli ) )
        return 0;

    if ( level.heli.health < level.heli.healthbuffer )
        return 0;

    return 1;
}

_id_AAEC( var_0 )
{
    var_0 endon( "death" );
    self waittill( "death" );
    var_0 delete();
}

_id_C9CE()
{
    self setbottomarc( 18 );
    self setrightarc( 20 );
    self setleftarc( 20 );
    self setconvergencetime( 1.5, "yaw" );
    self setconvergencetime( 0.7, "pitch" );
}

_id_B90B()
{
    level endon( "spawn_littlebird" );
    self waittill( "trigger" );
    level notify( "spawn_littlebird", self.target );
}

_id_AC3F()
{
    level waittill( "spawn_littlebird", var_0 );
    var_1 = getent( var_0, "targetname" );
    var_2 = getent( "littlebird", "targetname" );
    level.heli = var_2 maps\boneyard_code::_id_C970( var_1 );
    common_scripts\utility::flag_clear( "littlebird_react" );
    level.heli thread maps\boneyard_code::_id_CD43( "strafe_path" );
}

_id_C4AC()
{
    common_scripts\utility::flag_wait( "flyby_c130" );

    if ( !_id_D5B7() )
    {
        var_0 = getent( "littlebird_flyby_start", "targetname" );
        var_1 = getent( "littlebird", "targetname" );
        level.heli = var_1 maps\boneyard_code::_id_C970( var_0 );
    }

    var_2 = level.heli;
    var_2 maps\_vehicle::godon();
    var_2 notify( "reaction_end" );
    var_3 = getent( "littlebird_flyby_standby", "targetname" );
    var_2 maps\_vehicle::_id_B2F5( "faster" );
    var_2 vehicle_setspeed( 65, 25, 25 );
    var_2 thread maps\_vehicle::vehicle_paths( var_3 );
    common_scripts\utility::flag_wait( "flyby_c130" );
    var_3 = getent( "flyby_chase_path", "targetname" );
    var_2 maps\_vehicle::_id_B2F5( "faster" );
    var_2 vehicle_setspeed( 60, 25, 25 );
    var_2 thread maps\_vehicle::vehicle_paths( var_3 );
    var_2 waittill( "reached_dynamic_path_end" );
    var_2 delete();
}

_id_CA0E()
{
    soundscripts\_snd::snd_message( "start_road_checkpoint" );
    level.player maps\boneyard_code::_id_BB00( getent( "start_road_player", "targetname" ) );
    maps\_utility::activate_trigger_with_targetname( "middle_road_start_trigger" );
    var_0 = getent( "littlebird", "targetname" );
    var_0 maps\_utility::add_spawn_function( ::_id_CC54 );
    common_scripts\utility::array_thread( getentarray( "littlebird_trigger", "targetname" ), ::_id_B90B );
    level thread _id_AC3F();
    getentarray( "littlebird_trigger", "targetname" )[0] notify( "trigger" );
    wait 1;
    common_scripts\utility::flag_set( "littlebird_react" );
    waittillframeend;
    level.heli notify( "react" );
    level.heli maps\_vehicle::mgon();
}

_id_C258()
{
    level thread _id_B04F();
    level thread _id_D306();
    level thread _id_B4A9();
    getent( "road_laatpv", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_B165 );
    var_0 = getentarray( "middle_road", "targetname" );

    foreach ( var_2 in var_0 )
        level maps\boneyard_code::_id_B2E4( "trigger", var_2 );

    level waittill( "waittill_stack", var_4 );
    var_5 = 1000;

    for (;;)
    {
        wait 0.5;
        var_6 = getaiarray( "axis", "team3" );

        if ( !isdefined( var_6[0] ) )
            continue;

        var_6 = sortbydistance( var_6, level.player.origin );

        if ( distance( var_6[0].origin, level.player.origin ) > var_5 )
            break;

        var_5 *= 0.95;
    }

    common_scripts\_exploder::exploder( "road_exploder" );
    level maps\boneyard_code::_id_C646();
}

_id_B165()
{
    var_0 = self.mgturret[0];
    var_0 waittill( "turret_ready" );
    var_1 = var_0 getturretowner();

    if ( _id_D5B7() )
        thread maps\boneyard_code::_id_B7DC( var_0, level.heli );

    common_scripts\utility::array_thread( self.riders, maps\boneyard_code::_id_D1DF, "road" );
    thread maps\boneyard_code::_id_D1DF( "road" );
    self waittill( "death" );
    level notify( "laatpv_dead" );
}

_id_B4A9()
{
    common_scripts\utility::flag_wait( "laatpv_destroy" );
    level.vttype = "truck_physics";
    level.vtmodel = "vehicle_pickup_roobars";
    level.vtclassname = "script_vehicle_pickup_roobars_physics";
    var_0 = level.vttype + level.vtmodel;
    level.vehicle_death_fx[var_0] = [];
    level.vehicle_death_fx[level.vtclassname] = [];
    maps\_vehicle::build_deathfx( "fx/explosions/small_vehicle_explosion", undefined, "car_explode", undefined, undefined, undefined, 0, 1 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_small_pm_a", "tag_fx_tire_right_r", "smallfire", undefined, undefined, 1, 0.1, 1 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_med_pm", "tag_fx_cab", "smallfire", undefined, undefined, 1, 0.11, 1 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_small_pm_a", "tag_engine_left", "smallfire", undefined, undefined, 1, 0.11, 1 );
    level.vehicle_deathmodel_delay[level.vtmodel] = 0;
    common_scripts\utility::flag_wait( "road" );
    maps\_utility::activate_trigger_with_targetname( "road_crash" );
}

_id_B04F()
{
    level endon( "stop_road_rockets" );
    var_0 = getentarray( "road_rocket_guys", "targetname" );

    for (;;)
    {
        common_scripts\utility::flag_wait( "road_rocket_guys" );

        if ( !_id_D5B7() )
            return;

        level.heli endon( "death" );
        var_1 = undefined;
        var_0 = sortbydistance( var_0, level.player.origin );

        for ( var_2 = var_0.size; var_2 > 0; var_2-- )
        {
            var_3 = var_0[var_2 - 1];
            var_3.count++;
            var_1 = var_3 maps\_utility::spawn_ai();

            if ( !maps\_utility::spawn_failed( var_1 ) )
                break;
        }

        if ( distance( level.player.origin, var_1.origin ) > 800 )
            var_1.ignoreme = 1;

        var_1._id_AB99 = level.heli;
        var_1 thread maps\boneyard_code::_id_B084();
        common_scripts\utility::flag_clear( "road_rocket_guys" );
    }
}

_id_D306()
{
    common_scripts\utility::array_thread( getentarray( "rocket_start", "targetname" ), maps\boneyard_code::_id_C393, 2 );
    common_scripts\utility::flag_wait( "flyby_c130" );
    soundscripts\_snd::snd_message( "aud_start_mix_ac130_passby" );
    var_0 = getent( "flyby_c130_spawner", "targetname" );
    var_1 = var_0 maps\_utility::spawn_vehicle();
    var_1 thread maps\_vehicle::gopath();
    level.player playsound( "scn_boneyard_ac130_flyby_front" );
    soundscripts\_snd::snd_message( "aud_plane_rattle_sounds" );
    common_scripts\utility::flag_wait( "flyby_angel_flare" );
    var_1 thread maps\boneyard_code::_id_D05F( 10 );
    wait 11;
    var_1 thread maps\boneyard_code::_id_D05F( 5 );
    soundscripts\_snd::snd_message( "aud_stop_mix_ac130_passby" );
}

_id_C57B()
{
    soundscripts\_snd::snd_message( "start_flyby_checkpoint" );
    level.player maps\boneyard_code::_id_BB00( getent( "start_flyby_player", "targetname" ) );
    var_0 = getent( "littlebird_flyby_start", "targetname" );
    var_1 = getent( "littlebird", "targetname" );
    level.heli = var_1 maps\boneyard_code::_id_C970( var_0 );
}

flyby()
{
    level thread _id_BADD();
    level._id_B578["axis"] = 10;
    level._id_B578["team3"] = 10;
    getent( "flyby_suburban", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_D32C );
    common_scripts\utility::flag_wait( "flyby_rockets" );
    level thread _id_C4AC();
    common_scripts\utility::flag_wait( "flyby_c130" );
    common_scripts\_exploder::exploder( "flyby_explosions" );
    common_scripts\utility::flag_set( "music_boneyard_flyby" );
    maps\_utility::activate_trigger_with_targetname( "flyby_area_trigger" );
    level thread _id_AE0C();
    common_scripts\utility::flag_wait( "flyby_vision_change" );
}

_id_AE0C()
{
    common_scripts\utility::flag_wait( "flyby_vision_change" );
    var_0 = maps\_utility::get_ai_group_ai( "flyby_axis" );
    var_1 = maps\_utility::get_ai_group_ai( "flyby_team3" );

    if ( var_0.size < 5 && var_1.size < 5 )
    {
        maps\_utility::activate_trigger_with_noteworthy( "flyby_advance_color_trigger" );
        common_scripts\utility::flag_set( "flyby_minigun_move" );
    }
}

_id_BADD()
{
    level endon( "higround_ascend" );
    common_scripts\utility::flag_wait( "flyby_c130" );
    common_scripts\utility::flag_waitopen( "makarov_dialogue" );
    maps\_utility::radio_dialogue( "byard_nkl_unsafetoland" );
    maps\_utility::radio_dialogue( "byard_pri_landtheplane" );
    maps\_utility::radio_dialogue( "byard_nkl_paidenough" );
    common_scripts\utility::flag_wait( "flyby_minigun_move" );
    wait 7;
    maps\_utility::radio_dialogue( "byard_pri_gettoplane" );
}

_id_D32C()
{
    self endon( "death" );
    level._id_D32C = self;
    common_scripts\utility::flag_wait( "flyby_suburban_go" );
    var_0 = getvehiclenode( "flyby_retreat_path", "targetname" );
    maps\boneyard_code::_id_B89F( var_0 );
    common_scripts\utility::flag_wait( "flyby_suburban_kill" );
    self vehphys_launch( ( -450, 50, 100 ), 1 );
    maps\_vehicle::godoff();
    maps\_vehicle::force_kill();
}

_id_BEC2()
{
    soundscripts\_snd::snd_message( "start_higround_checkpoint" );
    common_scripts\utility::flag_set( "music_boneyard_intro" );
    common_scripts\utility::flag_set( "music_boneyard_flyby" );
    var_0 = 0;
    var_1 = getent( "rallypoint", "targetname" );
    objective_add( var_0, "current", &"BONEYARD_OBJ_RALLYPOINT", var_1.origin );
    level.player maps\boneyard_code::_id_BB00( getent( "start_higround_player", "targetname" ) );
    var_2 = getvehiclenode( "higround_minigun_suburban_start", "script_noteworthy" );
    var_3 = getent( "higround_minigun_suburban", "script_noteworthy" );
    var_4 = var_3 maps\boneyard_code::_id_C970( var_2 );
    var_2 = getvehiclenode( "higround_btr80_start", "script_noteworthy" );
    var_5 = getent( "higround_btr80", "script_noteworthy" );
    var_4 = var_5 maps\boneyard_code::_id_C970( var_2 );
    common_scripts\utility::flag_set( "flyby_suburban_go" );
    var_7 = getent( "higround_start_trigger_off", "script_noteworthy" );
    var_7 common_scripts\utility::trigger_off();
    maps\_utility::activate_trigger_with_targetname( "higround_start_color_trigger" );
    maps\_utility::activate_trigger_with_noteworthy( "higround_start_ai_trigger" );
    common_scripts\utility::flag_wait_or_timeout( "higround_ascend", 3 );
    maps\_utility::activate_trigger_with_targetname( "higround_start_color_trigger_2" );
}

_id_C9C0()
{
    getent( "higround_btr80", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_C5BA );
    getent( "higround_minigun_suburban", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_BA35 );
    getent( "higround_littlebird", "targetname" ) maps\_utility::add_spawn_function( ::_id_CC54 );
    getent( "higround_littlebird", "targetname" ) maps\_utility::add_spawn_function( ::_id_CCE5 );
    maps\_utility::array_spawn_function_noteworthy( "higround_guy", ::_id_CBF9 );
    level thread _id_AB0D();
    common_scripts\utility::flag_wait( "flyby_suburban_go" );
    setthreatbias( "allies", "team3", 0 );
    level thread _id_BCDD();
    level thread _id_D35E( 4 );
}

_id_D35E( var_0 )
{
    common_scripts\utility::flag_wait( "higround_2" );
    common_scripts\utility::flag_wait_either( "btr80_at_end", "btr80_destroyed" );

    while ( level._id_CBF9 > var_0 )
        wait 0.5;

    maps\_utility::activate_trigger_with_noteworthy( "ride_start_trigger" );
}

_id_CBF9()
{
    level endon( "ride_uaz_arriving" );

    if ( !isdefined( level._id_CBF9 ) )
        level._id_CBF9 = 0;

    level._id_CBF9++;
    common_scripts\utility::waittill_either( "death", "pain_death" );
    level._id_CBF9--;
}

_id_BCDD()
{
    level endon( "ride_uaz_arriving" );
    common_scripts\utility::flag_wait( "higround_ascend" );
    var_0 = gettime();
    common_scripts\utility::flag_wait( "higround_2" );
    maps\_utility::wait_for_buffer_time_to_pass( var_0, 30 );
    maps\_utility::autosave_by_name( "higround_second_save" );
}

_id_AB0D()
{
    level endon( "higround_2" );
    common_scripts\utility::flag_wait( "higround_ascend" );
    common_scripts\utility::flag_waitopen( "makarov_dialogue" );
    maps\_utility::radio_dialogue( "byard_pri_gettransport" );
    var_0 = gettime();
    common_scripts\utility::flag_wait( "higround_1" );
    maps\_utility::wait_for_buffer_time_to_pass( var_0, 15 );
    maps\_utility::radio_dialogue( "byard_pri_foudntransport" );
}

_id_CCE5()
{
    self endon( "death" );
    level._id_AC64 endon( "death" );
    level endon( "obj_ride" );
    thread _id_D5BB();
    thread _id_C8C5();
    common_scripts\utility::flag_wait( "hunt_btr80" );
    self setmaxpitchroll( 25, 25 );
    self setyawspeed( 90, 45, 22.5, 0 );
    thread maps\boneyard_code::_id_D256( "hunt_btr80" );
    maps\boneyard_code::_id_C495( "higround_2" );

    if ( !common_scripts\utility::flag( "btr80_at_end" ) )
    {
        common_scripts\utility::flag_clear( "no_align" );
        maps\boneyard_code::_id_C1C3();
        self notify( "stop_hunt" );
        self clearlookatent();
        self clearturrettargetent();
        common_scripts\utility::flag_set( "btr80_target_littlebird" );
        maps\_vehicle::godon();
        self vehicle_setspeed( 70, 35, 10 );
        self neargoalnotifydist( 512 );
        self setvehgoalpos( level.player.origin + ( 0, 0, 768 ) );
        common_scripts\utility::waittill_any( "goal", "near_goal" );
        maps\_utility::flag_clear_delayed( "btr80_target_littlebird", 3 );
        maps\_utility::delaythread( 4, maps\_vehicle::godoff );
    }

    self notify( "stop_hunt" );
    thread maps\boneyard_code::_id_D256( "hunt_btr80_final" );
    maps\boneyard_code::_id_C495();
    self notify( "stop_hunt" );

    if ( common_scripts\utility::cointoss() )
    {
        var_0 = [];
        var_0[0] = level._id_AC64;
        thread maps\boneyard_code::fire_missile( var_0, 3 );
    }
    else
    {
        maps\boneyard_code::_id_C1C3();
        thread maps\_utility::flag_set_delayed( "btr80_target_littlebird", 3 );
        self._id_CE98 common_scripts\utility::delaycall( randomfloatrange( 4, 8 ), ::delete );
    }

    level.heli notify( "missed_final" );
    self clearlookatent();
    self clearturrettargetent();
    var_1 = getent( "higround_strafe_path_first", "targetname" );
    level.heli thread maps\_vehicle::vehicle_paths( var_1 );
    common_scripts\utility::flag_clear( "littlebird_react" );
    level.heli thread maps\boneyard_code::_id_CD43( "higround_strafe_path" );
}

_id_C8C5()
{
    level endon( "obj_ride" );
    level.heli endon( "death" );
    level.heli endon( "missed_final" );
    level._id_AC64 waittill( "death" );
    self clearlookatent();
    self clearturrettargetent();
    var_0 = getent( "higround_strafe_path_first", "targetname" );
    level.heli thread maps\_vehicle::vehicle_paths( var_0 );
    common_scripts\utility::flag_clear( "littlebird_react" );
    level.heli thread maps\boneyard_code::_id_CD43( "higround_strafe_path" );
}

_id_D5BB()
{
    level endon( "obj_ride" );
    level._id_AC64 endon( "death" );
    level.heli waittill( "death" );
    level._id_AC64._id_A838 = common_scripts\utility::array_remove( level._id_AC64._id_A838, level.heli );
}

_id_C5BA()
{
    self endon( "death" );
    level._id_AC64 = self;
    self.dontunloadonend = 1;
    thread _id_AA54();
    common_scripts\utility::flag_set( "suburban_target_btr80" );
    maps\boneyard_code::vehicle_set_health( 500 );
    maps\boneyard_code::_id_BDB7();
    common_scripts\utility::flag_wait( "flyby_suburban_go" );

    if ( isalive( level._id_D32C ) )
    {
        wait 2;
        maps\boneyard_code::_id_B1C6( level._id_D32C, ( 0, 0, 30 ), 1, 10 );
    }

    var_0 = self.mgturret[0];
    var_0 settoparc( 10 );
    maps\boneyard_code::_id_AFA6();
    wait 5;
    maps\_utility::ent_flag_clear( "hold_fire" );
    thread maps\boneyard_code::_id_D471();
    setthreatbias( "allies", "team3", 1000 );
    _id_CD25();
    wait 2;
    self notify( "clear_turret_target" );
    common_scripts\utility::flag_set( "higround_2" );
}

_id_CD25()
{
    self endon( "death" );

    for (;;)
    {
        common_scripts\utility::flag_wait( "btr80_target_littlebird" );

        if ( !isdefined( level.heli ) )
            return;

        level.heli endon( "death" );

        if ( self._id_A838.size == 0 )
            self._id_A838 = common_scripts\utility::array_add( self._id_A838, level.heli );
        else
            self._id_A838 = common_scripts\utility::array_insert( self._id_A838, level.heli, 0 );

        self notify( "clear_turret_target" );
        common_scripts\utility::flag_waitopen( "btr80_target_littlebird" );
        self._id_A838 = common_scripts\utility::array_remove( self._id_A838, level.heli );
    }
}

_id_AA54()
{
    self waittill( "death" );
    common_scripts\utility::flag_set( "btr80_destroyed" );
}

_id_BA35()
{
    self endon( "death" );
    level._id_CAEB = self;
    maps\_utility::magic_bullet_shield();
    var_0 = self.mgturret[0];
    var_0 waittill( "turret_ready" );
    var_1 = var_0 getturretowner();
    common_scripts\utility::flag_wait( "suburban_target_btr80" );
    var_0 = self.mgturret[0];
    var_0 animscripts\laatpv_turret\common::set_manual_target( level._id_AC64, 4, 5 );
    common_scripts\utility::flag_wait( "higround_ascend" );
    maps\_utility::stop_magic_bullet_shield();
    maps\boneyard_code::vehicle_set_health( 200 );
    common_scripts\utility::flag_wait( "btr80_target_suburban" );
    level._id_AC64._id_A838 = common_scripts\utility::array_add( level._id_AC64._id_A838, self );
}

_id_D537()
{
    soundscripts\_snd::snd_message( "start_ride_checkpoint" );
    common_scripts\utility::flag_set( "music_boneyard_intro" );
    common_scripts\utility::flag_set( "music_boneyard_flyby" );
    level.player maps\boneyard_code::_id_BB00( getent( "start_ride_player", "targetname" ) );
    var_0 = getent( "littlebird", "targetname" );
    var_0 maps\_utility::add_spawn_function( ::_id_CC54 );
}

_id_D422()
{
    var_0 = getentarray( "ride_vehicle", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, ::_id_B8F1 );
    getent( "ride_uaz", "script_noteworthy" ) maps\_utility::add_spawn_function( ::_id_C605 );
    var_1 = getent( "runway_suburban", "targetname" );
    var_1 maps\_utility::add_spawn_function( ::_id_BEBE );
    maps\_utility::array_spawn_function_noteworthy( "price", ::_id_B811 );
    maps\_utility::array_spawn_function_noteworthy( "uaz_driver", ::_id_B1C8 );
    maps\_utility::array_spawn_function_noteworthy( "ride_minigunner", ::_id_C422 );
    level thread _id_AC1D();
    level thread _id_C497();
    level thread _id_B407();
    level thread maps\boneyard_code::_id_B8D3();
    level thread _id_D28E();
    level thread _id_AA3C();
    level thread _id_B196();
    common_scripts\utility::flag_wait( "ride_uaz_arriving" );
    setdvar( "truck_low_breaking_speed", "" );
    maps\_utility::autosave_by_name( "ride_arriving_save" );
    common_scripts\utility::flag_wait( "ride_enemy_vehicles_spawn" );
    level.vttype = "truck_physics";
    level.vtmodel = "vehicle_pickup_roobars";
    level.vtclassname = "script_vehicle_pickup_roobars_physics";
    var_2 = level.vttype + level.vtmodel;
    level.vehicle_death_fx[level.vtclassname] = [];
    maps\_vehicle::build_deathfx( "fx/fire/firelp_med_pm", "tag_body", "smallfire", undefined, undefined, 1, 0, 1 );
    maps\_vehicle::build_deathfx( "fx/explosions/small_vehicle_explosion", undefined, "car_explode", undefined, undefined, undefined, 0.9, 1 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_small_pm_a", "tag_fx_tire_right_r", "smallfire", undefined, undefined, 1, 1, 1 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_med_pm", "tag_fx_cab", "smallfire", undefined, undefined, 1, 1.01, 1 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_small_pm_a", "tag_engine_left", "smallfire", undefined, undefined, 1, 1.01, 1 );
    level.vehicle_deathmodel_delay[level.vtmodel] = 1;
    maps\_utility::activate_trigger_with_targetname( "ride_initiate" );
    var_3 = level.player getweaponslistprimaries();

    foreach ( var_5 in var_3 )
    {
        if ( issubstr( tolower( var_5 ), "rpg" ) )
            continue;

        if ( level.player getfractionmaxammo( var_5 ) > 0.5 )
            continue;

        level.player givestartammo( var_5 );
    }

    common_scripts\utility::flag_wait( "uaz_mounted" );
    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "g_DisableAntilagOnLinkedVehicles", 1 );
    soundscripts\_snd::snd_message( "aud_start_mix_jeep_ride" );
    maps\_utility::set_custom_gameskill_func( maps\boneyard_code::_id_CE3E );
    common_scripts\utility::flag_wait( "blow_wing" );
    maps\_utility::autosave_by_name( "ride2" );
    common_scripts\utility::flag_wait( "c130_hatch_open" );
    maps\_utility::autosave_now();
    common_scripts\utility::flag_wait( "ride_driver_death" );
    soundscripts\_snd::snd_message( "aud_start_mix_driver_gets_shot" );
    common_scripts\utility::flag_set( "uaz_driver_dialogue" );
    level thread _id_C486();
    wait 2;
    level.player disableoffhandweapons();
    wait 1;
    common_scripts\utility::flag_set( "uaz_player_control" );
}

_id_B196()
{
    common_scripts\utility::flag_wait( "ride_uaz_arriving" );
    level.vttype = "suburban";
    level.vtmodel = "vehicle_suburban";
    level.vtclassname = "script_vehicle_suburban";
    var_0 = level.vttype + level.vtmodel;
    level.vehicle_death_fx[var_0] = [];
    maps\_vehicle::build_deathfx( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    maps\_vehicle::build_deathfx( "fx/explosions/small_vehicle_explosion", undefined, "scn_boneyard_sub_explode" );
    common_scripts\utility::flag_wait( "uaz_mounted" );
    level.vttype = "suburban";
    level.vtmodel = "vehicle_suburban";
    level.vtclassname = "script_vehicle_suburban";
    var_0 = level.vttype + level.vtmodel;
    level.vehicle_death_fx[var_0] = [];
    maps\_vehicle::build_deathfx( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    maps\_vehicle::build_deathfx( "fx/explosions/small_vehicle_explosion", undefined, "car_explode" );
}

_id_B91E()
{
    common_scripts\utility::flag_wait( "uaz_mounted" );
    wait 0.5;
    setculldist( 10000 );
    wait 11;
    setculldist( 13000 );
    wait 7;
    setculldist( 15500 );
    wait 20;
    setculldist( 20000 );
}

_id_D28E()
{
    common_scripts\utility::flag_wait( "ride_uaz_arriving" );
    common_scripts\utility::flag_waitopen( "makarov_dialogue" );

    if ( !common_scripts\utility::flag( "uaz_driver_mount" ) )
    {
        level thread _id_B74A();
        maps\_utility::radio_dialogue( "byard_nkl_oneminute" );
        maps\_utility::radio_dialogue( "byard_pri_muchtime" );
    }

    common_scripts\utility::flag_wait( "uaz_driver_mount" );

    if ( !common_scripts\utility::flag( "uaz_mounted" ) )
    {
        if ( common_scripts\utility::flag( "uaz_nag" ) )
            level.price maps\_utility::dialogue_queue( "byard_pri_getinjeep" );
        else
            level.price maps\_utility::dialogue_queue( "byard_pri_weareleaving" );
    }

    common_scripts\utility::flag_wait( "uaz_driver_dialogue" );
    var_0 = level.player.origin + ( 0, 0, 64 );
    wait 0.8;
    common_scripts\utility::flag_set( "uaz_driver_dead" );
    wait 1;
    level.price endon( "death" );
    common_scripts\utility::flag_wait( "uaz_player_in_control" );
    wait 3;
    level.price maps\_utility::dialogue_queue( "byard_pri_aimforramp" );
}

_id_B74A()
{
    level.price endon( "death" );
    level endon( "uaz_driver_mount" );
    wait 20;
    level.price maps\_utility::dialogue_queue( "byard_pri_getinjeep" );
    wait 30;
    level.price maps\_utility::dialogue_queue( "byard_pri_weareleaving" );
    common_scripts\utility::flag_set( "uaz_nag" );
}

_id_C486()
{
    wait 1.3;
    level.player viewkick( 256, level._id_ADB5 geteye() );
}

_id_B811()
{
    level.price = self;
    self.name = "Capt. Price";
    self.animname = "price";
    thread maps\_utility::magic_bullet_shield();
    common_scripts\utility::flag_wait( "uaz_player_in_control" );
    thread maps\boneyard_code::_id_B7CA();
}

_id_B8F1()
{
    if ( self.vehicle_spawner.targetname == "firstTruck" && self.vehicletype == "truck_physics" )
        level._id_BE27 = self;
    else if ( self.vehicle_spawner.targetname == "firstTruck" && self.vehicletype == "suburban_minigun" )
        level.ai_minivan_2 = self;
    else if ( self.vehicle_spawner.targetname == "firstMinivan" && self.vehicletype == "suburban" )
        level._id_BBB0 = self;
    else if ( self.vehicle_spawner.targetname == "rollOverTruck" && self.vehicletype == "truck_physics" && self.vehicle_spawner.origin[0] < 8400 )
        level.rollovertruck = self;

    thread maps\boneyard_code::_id_B711();
    thread maps\boneyard_code::_id_ADE2();
    self vehphys_disablecrashing();
    common_scripts\utility::array_thread( self.riders, ::_id_C48E );
    maps\_vehicle::godon();
}

_id_BEBE()
{
    level._id_C685 = self;
    thread _id_BDE7();
    self hidepart( "TAG_GLASS_RIGHT_BACK" );
    self hidepart( "TAG_GLASS_LEFT_BACK" );
    self hidepart( "TAG_GLASS_RIGHT_FRONT" );
}

_id_C48E()
{
    var_0 = level.gameskill;

    if ( var_0 == 0 )
        var_0 = 1;

    self.health *= var_0;
}

_id_C422()
{
    self endon( "death" );
    level._id_C422 = self;
    maps\_utility::add_func( maps\_utility::waittill_msg, "death" );
    maps\_utility::add_func( common_scripts\utility::flag_set, "ride_minigun_gunner_dead" );
    thread maps\_utility::do_funcs();
    wait 1;
    var_0 = self getturret();
    var_0 setaispread( 4 );
    common_scripts\utility::flag_wait( "uaz_mount_end" );

    for (;;)
    {
        self.ignoreall = 0;
        wait 0.65;
        self.ignoreall = 1;
        wait 1.75;
    }
}

_id_AC1D()
{
    level._id_AC2D = maps\boneyard_code::_id_BA8A();
    level endon( "uaz_park_crash" );
    common_scripts\utility::flag_wait( "uaz_mounted" );
    thread jeep_climb_in_cinematic();
    common_scripts\utility::flag_set( "can_save" );
    maps\_utility::autosave_by_name( "ride" );
    var_0 = getent( "ride_c130_spawner", "targetname" );
    var_1 = var_0 maps\_utility::spawn_vehicle();
    var_1 hide();
    wait 1;
    var_1 maps\_vehicle_code::lights_off( "running" );
    level._id_AC2D linkto( var_1, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    common_scripts\utility::flag_set( "obj_ride_c130" );
    var_1 thread maps\_vehicle::gopath();
    common_scripts\utility::flag_wait( "uaz_driver_dead" );
    var_1 thread _id_C4E6();

    for (;;)
    {
        level._id_AC2D._id_B473 waittill( "trigger", var_2 );

        if ( var_2 == level._id_BE0D )
            break;
    }

    common_scripts\utility::flag_set( "uaz_park" );
    thread jeep_ride_end_cinematic();
}

jeep_climb_in_cinematic()
{
    var_0 = _id_D397::_id_A97A( "jeep_climb_in" );
    var_0 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 3.5, 50, 32, 32 ) _id_D397::_id_AF9C();
    var_0 _id_D397::_id_BEA0( 0.3 ) _id_D397::_id_C491( 4.0, 40, 8, 8 );
    var_0 _id_D397::_id_BEA0( 0.4 ) _id_D397::_id_C491( 4.0, 25, 12, 12 );
    var_0 _id_D397::_id_BEA0( 0.85 ) _id_D397::_id_C491( 5.6, 50, 12, 12 );
    var_0 _id_D397::_id_BEA0( 1.5 ) _id_D397::_id_C491( 4.0, 45, 8, 8 );
    var_0 _id_D397::_id_BEA0( 1.9 ) _id_D397::_id_C491( 4.0, 27, 8, 8 );
    var_0 _id_D397::_id_BEA0( 3.15 ) _id_D397::_id_C491( 4.0, 20, 8, 8 );
    var_0 _id_D397::_id_BEA0( 4.15 ) _id_D397::_id_C491( 4.0, 15, 8, 8 );
    var_0 _id_D397::_id_BEA0( 4.35 ) _id_D397::_id_C491( 5.6, 220, 8, 8 );
    var_0 _id_D397::_id_BEA0( 4.9 ) _id_D397::_id_BF3F();
    var_0 _id_D397::_id_BEA0( 0.65 ) _id_D397::_id_B85E( 0.04, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 1.6 ) _id_D397::_id_B85E( 0.04, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 2.5 ) _id_D397::_id_B85E( 0.1, 0.5, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.1 );
    var_0 _id_D397::_id_BEA0( 3.05 ) _id_D397::_id_B85E( 0.06, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 3.8 ) _id_D397::_id_B85E( 0.08, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 4.15 ) _id_D397::_id_B85E( 0.12, 1.0, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.25 );
    var_0 _id_D397::_id_BEA0( 0.6 ) _id_D397::_id_BAE4( 2 );
    var_0 _id_D397::_id_BEA0( 2.0 ) _id_D397::_id_BAE4( 0 );
    var_0 _id_D397::_id_BC26();
}

jeep_ride_end_cinematic()
{
    thread stopdustfx();
    var_0 = _id_D397::_id_A97A( "jeep_ride_end" );
    var_0 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 11, 190, 32, 32 ) _id_D397::_id_AF9C();
    var_0 _id_D397::_id_BEA0( 0.85 ) _id_D397::_id_C491( 5.6, 45, 12, 12 );
    var_0 _id_D397::_id_BEA0( 1.65 ) _id_D397::_id_C491( 11, 190, 12, 12 );
    var_0 _id_D397::_id_BEA0( 2.0 ) _id_D397::_id_C491( 5.6, 20, 12, 12 );
    var_0 _id_D397::_id_BEA0( 3.85 ) _id_D397::_id_C491( 5.6, 70, 4, 4 );
    var_0 _id_D397::_id_BEA0( 4.9 ) _id_D397::_id_BF3F();
    var_0 _id_D397::_id_BEA0( 0.75 ) _id_D397::_id_B85E( 0.04, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 1.55 ) _id_D397::_id_B85E( 0.1, 0.8, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.15 );
    var_0 _id_D397::_id_BEA0( 2.25 ) _id_D397::_id_B85E( 0.5, 2.7, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.7 );
    var_0 _id_D397::_id_BEA0( 3.6 ) _id_D397::_id_B85E( 0.04, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 3.85 ) _id_D397::_id_B85E( 0.04, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 4.55 ) _id_D397::_id_B85E( 0.04, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.1 );
    var_0 _id_D397::_id_BEA0( 2.25 ) _id_D397::_id_BAE4( 2 );
    var_0 _id_D397::_id_BEA0( 3.0 ) _id_D397::_id_BAE4( 0 );
    var_0 _id_D397::_id_BEA0( 0.3 ) _id_D397::_id_A970( ::lerpviewangleclamp, level.player, 1.25, 0.4, 0.4, 0, 0, 0, 0 );
    var_0 _id_D397::_id_BC26();
}

stopdustfx()
{
    var_0 = maps\_utility::getfxarraybyid( "h2_particulate_pcloud" );

    foreach ( var_2 in var_0 )
        var_2 common_scripts\utility::pauseeffect();
}

_id_C4E6()
{
    if ( !isdefined( level._id_BE0D ) )
        return;

    self endon( "death" );
    level._id_BE0D endon( "death" );
    var_0 = -260;
    var_1 = 1524;

    for (;;)
    {
        var_2 = anglestoforward( self.angles );
        var_3 = self.origin + var_2 * var_0;

        if ( distance( self.origin, level._id_BE0D.origin ) < var_1 )
            break;

        wait 0.05;
    }

    common_scripts\utility::flag_set( "player_loses_control_of_uaz" );
    level._id_B5FF = gettime();
}

_id_C497()
{
    common_scripts\utility::flag_wait( "c130_takeoff" );
    var_0 = getent( "sound_engine_left", "script_noteworthy" );
    var_1 = getent( "sound_engine_right", "script_noteworthy" );
    var_2 = getent( "sound_c130_center", "script_noteworthy" );
    var_0 playloopsound( "veh_c130_left_engine_loop" );
    var_1 playloopsound( "veh_c130_right_engine_loop" );
    var_2 playloopsound( "veh_c130_main_loop" );
}

_id_AA3C()
{
    common_scripts\utility::flag_wait( "obj_ride" );

    if ( _id_D5B7() )
    {
        level.heli notify( "reaction_end" );
        level.heli notify( "stop_hunt" );
        level.heli clearlookatent();
        level.heli clearturrettargetent();
        var_0 = getent( "littlebird_ride_start", "targetname" );
        level.heli vehicle_setspeed( 40, 25, 25 );
        level.heli thread maps\_vehicle::vehicle_paths( var_0 );
    }

    common_scripts\utility::flag_wait( "littlebird_stage1" );

    if ( !_id_D5B7() )
    {
        var_1 = getent( "littlebird_ride_respawn", "targetname" );
        var_2 = getent( "littlebird", "targetname" );
        level.heli = var_2 maps\boneyard_code::_id_C970( var_1 );
    }

    level.heli maps\_vehicle::godon();
    var_3 = missile_createrepulsorent( level.heli, 5000, 1000 );
    var_0 = getent( "littlebird_ride_stage1", "targetname" );
    level.heli vehicle_setspeed( 65, 25, 25 );
    level.heli setmaxpitchroll( 25, 25 );
    level.heli thread maps\boneyard_code::_id_B89F( var_0 );
    common_scripts\utility::flag_wait( "blow_tanker_second" );
    var_4 = getentarray( "tanker_rocket_target", "targetname" );
    var_4 = maps\_utility::array_index_by_script_index( var_4 );
    level.heli thread maps\boneyard_code::fire_missile( var_4, var_4.size );
    common_scripts\utility::flag_wait( "blow_wing" );
    var_4 = getentarray( "tanker_rocket_target_2", "targetname" );
    var_4 = maps\_utility::array_index_by_script_index( var_4 );
    level.heli thread maps\boneyard_code::fire_missile( var_4, var_4.size );
}

_id_C31A()
{
    level endon( "ride_uaz_nodeath" );
    self._id_D200 = 0;

    for (;;)
    {
        self waittill( "damage", var_0, var_1 );

        if ( !isdefined( level._id_C422 ) || var_1 != level._id_C422 )
            continue;

        self._id_D200 += var_0;

        if ( self._id_D200 > 37000 )
            break;
    }

    maps\_vehicle::godoff();
    maps\_vehicle::force_kill();
    wait 1;
    level.player kill();
}

_id_B048()
{
    wait 10.1;
    level._id_BBB0 _meth_85BD( 6, 0.25, 0.25 );
}

_id_C7DF()
{
    wait 6.3;
    level._id_BE27 _meth_85BD( 6, 0.5, 0.5 );
    level._id_BE27.veh_topspeed = 43.5;
    wait 0.5;
    level._id_BE27 _meth_85BD( 2, 1.5, 1 );
    wait 0.5;
    level._id_BE27.veh_topspeed = 45;
    level._id_BE27 _meth_85BD( 2, 2, 3 );
}

_id_BDE7()
{
    wait 11.3;
    level._id_C685 _meth_85BD( 5, 0.35, 0.35 );
    wait 0.5;
    level._id_C685 _meth_85BD( 2, 2, 3 );
    wait 4;
    level._id_BE0D.veh_topspeed = 60;
    wait 2;
    level._id_BE0D.veh_topspeed = 100;
}

update_first_suburban_minigun()
{
    wait 2;
    level.ai_minivan_2.veh_topspeed = 36;
    wait 4;
    var_0 = ( 0, 0, 200 );
    var_1 = ( 10702, 2047, -110 );
    level.ai_minivan_2 vehphys_launch( var_0, ( 0, 0, 0 ), var_1 );
}

update_rollover_truck()
{
    wait 34.8;
    var_0 = ( 0, -105, 95 );
    var_1 = ( 29631, -6485, -102 );
    level.rollovertruck vehphys_launch( var_0, ( 0, 0, 0 ), var_1 );
}

_id_C52C()
{
    level.player endon( "death" );
    common_scripts\utility::flag_wait( "uaz_first_friction_edit" );
    level._id_BE0D _meth_85BD( 4, 0.7, 1 );
    common_scripts\utility::flag_wait( "uaz_drive" );
    level._id_BE0D _meth_85BD( 2, 1.25, 3 );
    common_scripts\utility::flag_wait( "blow_tanker_first" );
    thread _id_B048();
    thread _id_C7DF();
    thread update_first_suburban_minigun();
    thread update_rollover_truck();
    level._id_BE0D _meth_85BD( 0.2, 0.2, 1 );
    wait 0.6;
    level._id_BE0D.veh_topspeed = 20;
    level._id_BE0D _meth_85BD( 2, 1.25, 3 );
    wait 1.3;
    level._id_BE0D.veh_topspeed = 100;
    common_scripts\utility::flag_wait( "uaz_second_friction_edit" );
    level._id_BE0D _meth_85BD( 1, 0.8, 0.8 );
    wait 0.8;
    level._id_BE0D _meth_85BD( 2, 1.25, 3 );
    common_scripts\utility::flag_wait( "uaz_third_friction_edit" );
    level._id_BE0D _meth_85BD( 2, 0.7, 0.7 );
    wait 0.6;
    level._id_BE0D.veh_topspeed = 40;
    level._id_BE0D _meth_85BD( 2, 0.65, 0.65 );
    wait 0.6;
    level._id_BE0D.veh_topspeed = 100;
    level._id_BE0D _meth_85BD( 2, 1.25, 3 );
}

wait_for_bumps()
{
    wait 14;
    level.player thread play_bump_anim( "right" );
    wait 12.8;
    level.player thread play_bump_anim( "left" );
    wait 7.5;
    level.player thread play_bump_anim( "right" );
    wait 6.2;
    level.player thread play_bump_anim( "right" );
    wait 4.5;
    level.player thread play_bump_anim( "right" );
}

_id_C605()
{
    common_scripts\utility::flag_set( "ride_uaz_arriving" );
    thread maps\boneyard_aud::_id_CAB7();
    thread _id_C31A();
    level._id_BE0D = self;
    self hidepart( "tag_blood" );
    self hidepart( "TAG_BLOOD_steering_wheel" );
    thread maps\boneyard_code::_id_CF05();
    thread maps\boneyard_code::_id_B7A7();
    thread _id_B5E4();
    thread _id_BA5E();
    thread _id_BD72();
    thread _id_C52C();
    self vehphys_disablecrashing();
    self.dontunloadonend = 1;
    common_scripts\utility::flag_wait( "wait_for_player" );
    maps\_vehicle::vehicle_ai_event( "hide_attack_forward" );
    common_scripts\utility::flag_wait( "uaz_drive" );
    level.price maps\_utility::set_ignoreall( 1 );
    level.price maps\_utility::ai_ignore_everything();
    level.price notify( "stop tracking" );
    level.price notify( "killanimscript" );
    level.price.no_ai = 1;
    var_0 = level.price maps\_utility::getanim( "boneyard_jeep_ride_price" );
    level._id_BE0D thread maps\_anim::anim_single_solo( level.price, "boneyard_jeep_ride_price", "tag_guy0" );
    level._id_BE0D thread wait_for_bumps();
    level._id_BE0D.driver notify( "newanim" );
    level._id_BE0D.driver maps\_utility::anim_stopanimscripted();
    level._id_BE0D.riders = common_scripts\utility::array_remove( level._id_BE0D.riders, level._id_BE0D.driver );
    level._id_BE0D thread maps\_anim::anim_single_solo( level._id_BE0D.driver, "jeep_ride_driver", "tag_driver" );
    thread maps\boneyard_code::ride_uaz_vehicle();
    thread maps\boneyard_code::ride_global_shake();
    thread maps\boneyard_code::_id_C126();
    common_scripts\utility::flag_set( "littlebird_stage1" );
    common_scripts\utility::flag_wait( "uaz_mounted" );
    wait 2;
    common_scripts\utility::flag_wait( "uaz_player_in_control" );
    self vehphys_enablecrashing();
}

_id_B5E4()
{
    level endon( "uaz_mounted" );
    common_scripts\utility::flag_wait( "uaz_mount_end" );
    setdvar( "ui_deadquote", &"BONEYARD_DEADQUOTE_MOUNT" );
    maps\_utility::missionfailedwrapper();
}

_id_BA5E()
{
    level endon( "uaz_park" );
    level endon( "uaz_park_crash" );
    common_scripts\utility::flag_wait( "uaz_player_in_control" );
    thread _id_CE3A();

    if ( isdefined( level._id_D3BE ) )
        level._id_D3BE delete();

    var_0 = 15000;

    for (;;)
    {
        self waittill( "veh_jolt", var_1 );
        var_2 = abs( var_1[0] ) + abs( var_1[1] ) + abs( var_1[2] );

        if ( var_2 > var_0 )
            break;
    }

    thread maps\boneyard_code::ride_uaz_crash_player_death();
    maps\_vehicle::godoff();
    maps\_vehicle::force_kill();
    wait 1;
}

_id_CE3A()
{
    common_scripts\utility::flag_wait( "uaz_force_crash" );
    thread maps\boneyard_code::ride_uaz_crash_player_death();
    maps\_vehicle::godoff();
    maps\_vehicle::force_kill();
}

_id_BD72()
{
    level endon( "uaz_park" );
    level endon( "uaz_park_crash" );
    common_scripts\utility::flag_wait( "c130_takeoff_missed" );
    setdvar( "ui_deadquote", &"BONEYARD_DEADQUOTE_TAKEOFF" );
    maps\_utility::missionfailedwrapper();
}

_id_B1C8()
{
    self endon( "death" );
    level._id_ADB5 = self;
    self.name = "Rook";
    maps\_utility::disable_pain();
    thread maps\_utility::magic_bullet_shield();
    self.animname = "rook";
    thread _id_BD46();
    common_scripts\utility::flag_wait( "uaz_driver_mount" );
    common_scripts\utility::flag_clear( "can_save" );
    common_scripts\utility::flag_wait( "ride_littlebird_dodge" );
    level._id_BE0D thread maps\_utility::guy_runtovehicle_load( self, level._id_BE0D );
    self waittill( "boarding_vehicle" );
    maps\_utility::gun_remove();
    maps\_utility::flag_set_delayed( "ride_enemy_vehicles_spawn", 1 );
    common_scripts\utility::flag_wait( "uaz_driver_dead" );
    self playsound( "scn_bone_headshot" );
    playfxontag( common_scripts\utility::getfx( "blood" ), self, "tag_origin" );
    thread _id_C82F();
    wait 0.3;
    level._id_BE0D showpart( "tag_blood" );
    level._id_BE0D showpart( "TAG_BLOOD_steering_wheel" );
}

_id_C82F()
{
    self notify( "newanim" );
    maps\_utility::anim_stopanimscripted();
    level._id_BE0D.riders = common_scripts\utility::array_remove( level._id_BE0D.riders, self );
    var_0 = level._id_BE0D gettagorigin( "tag_driver" );
    var_1 = level._id_BE0D gettagangles( "tag_driver" );
    level._id_BE0D thread maps\_anim::anim_single_solo( self, "boneyard_driver_death", "tag_driver" );
    var_2 = maps\_utility::getanim( "boneyard_driver_death" );
    var_3 = getanimlength( var_2 );
    wait( var_3 );
    level._id_BE0D thread maps\_anim::anim_single_solo( self, "boneyard_driver_death_pushed", "tag_driver" );
    var_2 = maps\_utility::getanim( "boneyard_driver_death_pushed" );
    var_3 = getanimlength( var_2 );
    wait( var_3 - 0.15 );
    self setanim( var_2, 1, 0, 0 );
}

_id_BD46()
{
    common_scripts\utility::flag_wait( "obj_ride" );
    wait 1;
    self waittill( "unload" );

    if ( !( isdefined( level._id_AC64 ) && isalive( level._id_AC64 ) ) && !_id_D5B7() )
    {
        maps\_utility::gun_remove();
        self.weapon = self.secondaryweapon;
        maps\_utility::gun_recall();
    }

    self waittill( "jumpedout" );
    common_scripts\utility::flag_set( "ride_littlebird_dodge" );

    if ( isdefined( level._id_AC64 ) && isalive( level._id_AC64 ) )
    {
        var_0 = spawn( "script_origin", level._id_AC64.origin + ( 0, 0, 128 ) );
        var_0 linkto( level._id_AC64 );
        self setentitytarget( var_0, 1 );
        var_1 = missile_createattractorent( level._id_AC64, 20000, 512 );

        if ( !common_scripts\utility::flag( "uaz_driver_mount" ) )
            self waittill( "missile_fire" );

        self clearentitytarget();
    }

    if ( _id_D5B7() )
    {
        var_0 = spawn( "script_origin", level.heli.origin + ( 0, 0, -128 ) );
        var_0 linkto( level.heli );
        self setentitytarget( var_0, 1 );

        if ( !common_scripts\utility::flag( "uaz_driver_mount" ) )
            self waittill( "missile_fire" );

        self clearentitytarget();
    }

    self.a.rockets = 0;
}

_id_B407()
{
    var_0 = _id_C6C9( "tanker_first", 1 );
    common_scripts\utility::flag_wait( "blow_tanker_first" );
    wait 0.4;
    var_1 = getent( "blow_tanker_first_rocket", "targetname" );
    var_2 = getent( var_1.target, "targetname" );
    var_3 = magicbullet( "rpg_straight", var_1.origin, var_2.origin );
    var_4 = [];
    var_4[tolower( "MOD_PROJECTILE_SPLASH" )] = 1;
    var_4[tolower( "MOD_PROJECTILE" )] = 1;
    var_0 maps\boneyard_code::_id_B44E( var_4 );
    level.player enableinvulnerability();
    var_0 thread maps\_utility::destructible_force_explosion();
    var_0 waittill( "destroyed" );
    level.player disableinvulnerability();
    var_0 = _id_C6C9( "tanker_second", 1 );
    var_0 maps\boneyard_code::_id_B44E( var_4 );
    var_0 thread maps\_utility::destructible_force_explosion();
}

_id_C6C9( var_0, var_1 )
{
    var_2 = getentarray( var_0, "script_noteworthy" );
    var_3 = undefined;

    foreach ( var_3 in var_2 )
    {
        if ( var_3.classname == "script_model" )
            break;
    }

    if ( isdefined( var_1 ) )
        var_3 maps\_utility::destructible_disable_explosion();

    return var_3;
}

_id_B969()
{
    soundscripts\_snd::snd_message( "start_ride_end_checkpoint" );
    var_0 = getentarray( "ride_vehicle", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, ::_id_B8F1 );
    var_1 = getvehiclenode( "ride_end_start", "script_noteworthy" );
    var_2 = getent( "ride_uaz", "script_noteworthy" );
    level._id_BE0D = var_2 maps\boneyard_code::_id_C970( var_1 );
    var_1 = getvehiclenode( "ride_end_pickup_start", "targetname" );
    var_2 = getent( "runway_pickup", "targetname" );
    var_2 maps\boneyard_code::_id_C970( var_1 );
    var_1 = getvehiclenode( "ride_end_suburban_start", "script_noteworthy" );
    var_2 = getent( "runway_suburban", "targetname" );
    var_2 maps\boneyard_code::_id_C970( var_1 );
    common_scripts\utility::flag_set( "uaz_mounted" );
    level._id_D3BE delete();
    common_scripts\utility::flag_wait( "uaz_driver_dead" );
}

#using_animtree("player");

play_bump_anim( var_0 )
{
    if ( var_0 == "right" )
    {
        level.player _meth_84C7( "h2_boneyard_player_bump_reaction_left_add" );
        wait( getanimlength( %h2_boneyard_player_bump_reaction_left_add ) );
    }
    else
    {
        level.player _meth_84C7( "h2_boneyard_player_bump_reaction_right_add" );
        wait( getanimlength( %h2_boneyard_player_bump_reaction_right_add ) );
    }

    level.player _meth_84C7( 0 );
}

plane_cull_distance()
{
    common_scripts\utility::flag_wait( "uaz_park" );
    wait 1;
    setculldist( 1000 );
}
