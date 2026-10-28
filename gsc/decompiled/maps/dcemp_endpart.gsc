// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C201()
{
    soundscripts\_snd::snd_message( "start_tunnels_checkpoint" );
    maps\dcemp::_id_BD5B( 1 );
    common_scripts\utility::flag_set( "rain_fx" );
    common_scripts\utility::flag_set( "tunnels_main" );
    common_scripts\utility::flag_set( "start_rain_ambience" );
    _id_C998();
    waittillframeend;
    maps\_utility::delaythread( 0.5, maps\_weather::rainhard, 0.1 );
    maps\_utility::delaythread( 0.5, maps\_weather::lightning, _id_CD74::lightning_normal, _id_CD74::lightning_flash );
    maps\dcemp_code::_id_AF03( level.team, common_scripts\utility::getstructarray( "tunnels_start_points", "targetname" ) );
    maps\dcemp_code::_id_BB1C();
    level._id_A8A0 delete();
    maps\_utility::delaythread( 0.25, maps\_utility::activate_trigger_with_noteworthy, "tunnels_spawn_trigger" );
}

_id_CD4A()
{
    common_scripts\utility::flag_init( "tunnels_teleport_done" );
    common_scripts\utility::flag_init( "tunnels_teleport" );
    common_scripts\utility::flag_init( "tunnels_door_open" );
    common_scripts\utility::flag_init( "tunnels_door_open_done" );

    if ( !common_scripts\utility::flag_exist( "dc_emp_bunker" ) )
        common_scripts\utility::flag_init( "dc_emp_bunker" );
}

_id_B414()
{
    level.cosine["60"] = cos( 60 );
    _id_CD4A();
    level.drone_spawn_func = maps\dcemp_endpart_code::_id_C51F;
    maps\_utility::array_spawn_function_noteworthy( "tunnels_dead_guy", ::_id_C91C );
    maps\_utility::array_spawn_function_noteworthy( "tunnels_dead_check", ::_id_BD25 );
    wait 0.2;
    maps\_utility::add_wait( maps\_utility::trigger_wait_targetname, "tunnels_first_color_trig" );
    maps\_utility::add_func( ::_id_C998 );
    thread maps\_utility::do_wait();
    level thread _id_C73E();
    common_scripts\utility::flag_wait( "tunnels_main" );
    level thread _id_CBC9();
    maps\dcemp_endpart_code::_id_D04E();
    thread maps\_utility::battlechatter_off( "allies" );
    level.team["marine1"] maps\_utility::set_force_color( "g" );
    level.foley maps\_utility::set_force_color( "y" );
    level._id_ACC0 maps\_utility::set_force_color( "o" );

    if ( !common_scripts\utility::flag( "tunnels_indoor" ) )
        maps\_utility::activate_trigger_with_targetname( "tunnels_color_trigger" );

    level thread _id_C54F();
    level thread _id_B534();
    common_scripts\utility::flag_wait( "tunnels_foley_dialogue" );
    common_scripts\utility::flag_wait_either( "tunnels_door_open", "tunnels_teleport_done" );

    if ( common_scripts\utility::flag( "tunnels_door_open" ) )
    {
        maps\_utility::activate_trigger_with_targetname( "pre_teleport_color_trigger" );
        level.foley maps\_utility::delaythread( 4, maps\_utility::enable_ai_color );
        level._id_ACC0 maps\_utility::delaythread( 1, maps\_utility::enable_ai_color );
    }

    level waittill( "wait_for_ever" );
}

_id_B534()
{
    var_0 = getent( "tunnels_teleport_trigger", "targetname" );
    var_0 waittill( "trigger" );
    wait 1;
    maps\_loadout_code::saveplayerweaponstatepersistent( "dcemp" );

    if ( maps\_utility::is_default_start() )
        maps\_utility::nextmission();
    else
        iprintlnbold( "DEVELOPER: END OF SCRIPTED LEVEL" );
}

_id_C54F()
{
    common_scripts\utility::flag_wait( "tunnels_indoor" );
    common_scripts\utility::flag_clear( "_weather_lightning_enabled" );
    common_scripts\utility::flag_wait( "tunnels_teleport_done" );
    common_scripts\utility::flag_set( "_weather_lightning_enabled" );
}

_id_C73E()
{
    level endon( "tunnels_teleport" );
    var_0 = getent( "tunnel_door_animent", "targetname" );
    var_1 = getent( "tunnel_door_guys_org", "targetname" );
    var_2 = _id_D4D1( var_0 );
    common_scripts\utility::flag_wait( "tunnels_main" );
    common_scripts\utility::flag_wait( "tunnels_door_start" );
    level thread _id_BA56();
    var_3 = [];
    var_3[0] = level._id_ACC0;
    var_3[1] = level.foley;
    level thread _id_C3E4( var_0 );
    level._id_ACC0 maps\_utility::walkdist_zero();
    level.foley maps\_utility::walkdist_zero();

    foreach ( var_5 in var_3 )
        var_5.a._id_C55F = 5.5;

    var_1 maps\_anim::anim_reach( var_3, "DCemp_door_sequence" );
    var_0 thread maps\_anim::anim_single_solo( var_2, "DCemp_door_sequence" );
    var_1 maps\_anim::anim_single( var_3, "DCemp_door_sequence" );

    foreach ( var_5 in var_3 )
        var_5.a._id_C55F = undefined;

    common_scripts\utility::flag_set( "tunnels_door_open" );
    level.foley setgoalpos( level.foley.origin );
    common_scripts\utility::flag_set( "tunnels_foley_dialogue" );
}

_id_C3E4( var_0 )
{
    common_scripts\utility::flag_wait( "tunnels_teleport" );
    var_0 notify( "foley_idle_end" );
    level._id_ACC0 maps\_utility::anim_stopanimscripted();
    level.foley maps\_utility::anim_stopanimscripted();
}

_id_D4D1( var_0 )
{
    var_1 = getent( "tunnel_door", "targetname" );
    var_1 maps\_utility::assign_animtree( "tunnel_door" );
    var_2 = getent( "tunnel_door_col", "targetname" );
    var_2 linkto( var_1 );
    var_2 connectpaths();
    var_2 thread maps\dcemp_code::tunnel_door_not_solid_watcher();
    var_0 maps\_anim::anim_first_frame_solo( var_1, "DCemp_door_sequence" );
    return var_1;
}

_id_BA56()
{
    common_scripts\utility::flag_wait( "tunnels_door_teleport" );
    var_0 = common_scripts\utility::getstruct( "tunnels_door_foley", "script_noteworthy" );
    var_1 = common_scripts\utility::getstruct( "tunnels_door_dunn", "script_noteworthy" );
    var_2 = getent( "tunnels_door_volume", "targetname" );

    if ( !level.foley istouching( var_2 ) )
        level.foley forceteleport( var_0.origin, var_0.angles );

    if ( !level._id_ACC0 istouching( var_2 ) )
        level._id_ACC0 forceteleport( var_1.origin, var_1.angles );
}

_id_CBC9()
{
    common_scripts\utility::flag_wait( "tunnels_indoor" );
    level.team["marine1"] maps\_utility::dialogue_queue( "dcemp_ar1_feetdry" );
    wait 0.5;
    level._id_ACC0 maps\_utility::dialogue_queue( "dcemp_cpd_huah3" );
    level.foley maps\_utility::dialogue_queue( "dcemp_fly_cutchatter" );
    common_scripts\utility::flag_wait( "tunnels_door_start" );
    common_scripts\utility::flag_set( "dc_emp_bunker" );
    level._id_ACC0 common_scripts\utility::waittill_any_timeout( 4, "goal" );
    common_scripts\utility::flag_wait( "tunnels_foley_dialogue" );
    wait 0.65;
    common_scripts\utility::flag_wait( "tunnels_teleport_done" );
    wait 0.5;
    common_scripts\utility::flag_wait( "whitehouse_ambience" );
    level._id_ACC0 maps\_utility::dialogue_queue( "dcemp_cpd_partystarted" );
    level.foley maps\_utility::dialogue_queue( "dcemp_fly_rogerstayfrosty" );
}

_id_C91C()
{
    maps\dcemp_endpart_code::_id_CECD();
    var_0 = getent( self.target, "targetname" );
    var_0 maps\_anim::anim_generic_first_frame( self, "death_sitting_pose_v1" );
    common_scripts\utility::flag_wait( "tunnels_dunn_anim_end" );
    self delete();
}

_id_BD25()
{
    level endon( "tunnels_teleport" );
    level endon( "tunnels_dunn_anim_end" );
    self.animname = "dead_guy";
    maps\dcemp_endpart_code::_id_CECD();
    var_0 = getent( self.target, "targetname" );
    var_0 thread maps\_anim::anim_loop_solo( self, "hunted_woundedhostage_idle_start" );
    level thread _id_B619( self, var_0 );
    common_scripts\utility::flag_wait( "tunnels_main" );
    wait 0.1;
    common_scripts\utility::flag_wait( "tunnels_dead_check" );
    var_1 = getent( "parking_throw_flare", "script_noteworthy" );
    var_1 _meth_84A7( "normal" );
    level._id_ACC0 maps\_utility::disable_ai_color();
    level._id_ACC0 maps\_utility::walkdist_zero();
    var_0 maps\_anim::anim_reach_solo( level._id_ACC0, "hunted_woundedhostage_check" );
    var_0 maps\_utility::anim_stopanimscripted();
    var_2 = [];
    var_2[0] = level._id_ACC0;
    var_2[1] = self;
    level._id_ACC0 maps\_utility::walkdist_reset();
    var_0 maps\_anim::anim_single( var_2, "hunted_woundedhostage_check" );
    var_0 thread maps\_anim::anim_first_frame_solo( self, "hunted_woundedhostage_idle_end" );
    level._id_ACC0 maps\_utility::enable_ai_color();
    var_0 maps\_anim::anim_single_solo( level._id_ACC0, "hunted_woundedhostage_check_soldier_end" );
    level notify( "tunnels_dead_check_done" );
}

_id_B619( var_0, var_1 )
{
    level endon( "tunnels_dead_check_done" );
    common_scripts\utility::flag_wait( "tunnels_dunn_anim_end" );
    level._id_ACC0 maps\_utility::anim_stopanimscripted();

    if ( common_scripts\utility::flag( "tunnels_main" ) )
        level._id_ACC0 maps\_utility::enable_ai_color();

    var_0 maps\_utility::anim_stopanimscripted();
    var_1 maps\_utility::anim_stopanimscripted();
    var_0 delete();
}

_id_C998()
{
    common_scripts\utility::flag_clear( "spotlight_lightning" );
    var_0 = getentarray( "parking_lighting_primary", "script_noteworthy" );
    common_scripts\utility::array_call( var_0, ::setlightintensity, 0 );
    thread maps\_utility::set_vision_set( "dcemp_tunnels", 4 );
    thread maps\_utility::vision_set_fog_changes( "dcemp_tunnels", 4 );
}
