// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C06B()
{
    precacheshellshock( "af_cave_collapse" );
    precacheitem( "hellfire_missile_af_caves_end" );
    precachemodel( "weapon_rpd_MG_Setup" );
    precacheitem( "m4_grenadier" );
    precachemodel( "com_computer_keyboard_obj" );
    precachemodel( "h2_cave_sniper_tower_destroyed" );
    precachemodel( "h2_cave_monitor_screen_unlocked" );
    precachemodel( "com_barrel_piece2_1" );
    precachestring( &"AF_CAVES_USE_KEYBOARD" );
    precachestring( &"AF_CAVES_USE_KEYBOARD_PC" );
    level._id_C869 = 0;
    level._id_D3C6 = 0;
    level._id_C66E = 0;
    level._id_CDD9 = 0;
    level._id_BA2F = getentarray( "riotshield", "targetname" );
    level._id_CC31 = 2;
    level._id_ADEB = 0;
    level._id_AFBB = [];
    level._id_CDD3 = 0;
    var_0 = getentarray( "trigger_multiple", "classname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2.script_noteworthy ) && getsubstr( var_2.script_noteworthy, 0, 19 ) == "colornodes_backhalf" )
            level._id_AFBB = common_scripts\utility::array_add( level._id_AFBB, var_2 );
    }

    setdynamicdvar( "caves_fire", "1" );
    common_scripts\utility::flag_init( "can_talk" );
    common_scripts\utility::flag_set( "can_talk" );
    common_scripts\utility::flag_init( "ledge_sequence_dialogue_over" );
    common_scripts\utility::flag_init( "shephered_ledge_dialogue_starting" );
    common_scripts\utility::flag_init( "shephered_ledge_dialogue_done" );
    common_scripts\utility::flag_init( "unload_overlook_dudes" );
    common_scripts\utility::flag_init( "overlook_dudes_decimated" );
    common_scripts\utility::flag_init( "heli_left_overlook" );
    common_scripts\utility::flag_init( "unload_skylight_dudes" );
    common_scripts\utility::flag_init( "smoke_thrown" );
    common_scripts\utility::flag_init( "price_has_given_flank_hint" );
    common_scripts\utility::flag_init( "stop_smoke" );
    common_scripts\utility::flag_init( "start_breach_nags" );
    common_scripts\utility::flag_init( "breach_door_closed" );
    common_scripts\utility::flag_init( "control_room_breached" );
    common_scripts\utility::flag_init( "control_room_explosion" );
    common_scripts\utility::flag_init( "control_room_getting_breached" );
    common_scripts\utility::flag_init( "control_room_door_opened" );
    common_scripts\utility::flag_init( "control_room_doors_closed" );
    common_scripts\utility::flag_init( "keyboard_activated" );
    common_scripts\utility::flag_init( "player_detonated_explosives" );
    common_scripts\utility::flag_init( "price_at_the_keyboard" );
    common_scripts\utility::flag_init( "price_keyboard" );
    common_scripts\utility::flag_init( "start_airstrip_aftermath_fx" );
    common_scripts\utility::flag_init( "end_cave_collapse" );
    common_scripts\utility::flag_init( "player_escaped" );
    common_scripts\utility::flag_init( "danger_close_dialogue_start" );
    common_scripts\utility::flag_init( "danger_close_dialogue_end" );
    common_scripts\utility::flag_init( "price_falling_back" );
    common_scripts\utility::flag_init( "danger_close_moment_over" );
    common_scripts\utility::flag_init( "danger_close_last_missile_has_hit" );
    common_scripts\utility::flag_init( "unload_airstrip_blackhawk_dudes" );
    common_scripts\utility::flag_init( "obj_ledge_traverse_given" );
    common_scripts\utility::flag_init( "obj_ledge_traverse_complete" );
    common_scripts\utility::flag_init( "obj_overlook_to_skylight_given" );
    common_scripts\utility::flag_init( "obj_overlook_to_skylight_complete" );
    common_scripts\utility::flag_init( "obj_breach_given" );
    common_scripts\utility::flag_init( "obj_breach_show" );
    common_scripts\utility::flag_init( "obj_breach_complete" );
    common_scripts\utility::flag_init( "obj_door_controls_given" );
    common_scripts\utility::flag_init( "obj_door_controls_complete" );
    common_scripts\utility::flag_init( "obj_escape_given" );
    common_scripts\utility::flag_init( "obj_escape_complete" );
    common_scripts\utility::flag_init( "obj_laatpv_given" );
    common_scripts\utility::flag_init( "obj_laatpv_complete" );
    common_scripts\utility::flag_init( "obj_laatpv_gunner_given" );
    common_scripts\utility::flag_init( "obj_laatpv_gunner_complete" );
    common_scripts\utility::flag_init( "obj_level_end_given" );
    common_scripts\utility::flag_init( "obj_level_end_complete" );
    common_scripts\utility::flag_init( "obj_shepherd_location_found" );
}

_id_B17D()
{
    var_0 = getentarray( "camo_right_damaged", "targetname" );
    var_1 = getentarray( "camo_left_damaged", "targetname" );
    common_scripts\utility::array_thread( var_0, maps\_utility::hide_entity );
    common_scripts\utility::array_thread( var_1, maps\_utility::hide_entity );
    var_2 = getentarray( "rock_rubble1", "targetname" );
    var_3 = getent( "rock_rubble1_col", "targetname" );
    var_3 notsolid();

    foreach ( var_5 in var_2 )
        var_5 hide();

    var_3 connectpaths();
    var_7 = getentarray( "netting_destroyed", "targetname" );

    foreach ( var_9 in var_7 )
        var_9 hide();

    var_11 = getentarray( "generic_damage", "targetname" );
    common_scripts\utility::array_thread( var_11, ::_id_B353 );
    _id_BADE();
    var_12 = maps\_utility::getvehiclespawnerarray();
    common_scripts\utility::array_thread( var_12, maps\_utility::add_spawn_function, ::_id_B90C );
    common_scripts\utility::array_thread( getvehiclenodearray( "plane_sound", "script_noteworthy" ), vehicle_scripts\_mig29::plane_sound_node );
    common_scripts\utility::array_thread( getvehiclenodearray( "uav_sound", "script_noteworthy" ), _id_D04F::plane_sound_node );
    common_scripts\utility::array_thread( getvehiclenodearray( "fire_missile", "script_noteworthy" ), _id_D04F::_id_ABF8 );
    maps\_utility::array_spawn_function_targetname( "hostiles_ledge_fight", ::_id_C443 );
    maps\_utility::array_spawn_function_noteworthy( "ledge_prone_guy", ::_id_B0E0 );
    maps\_utility::array_spawn_function_noteworthy( "overlook_heli_fastropers", ::_id_AAFB );
    maps\_utility::array_spawn_function_noteworthy( "skylight_heli_fastropers", ::_id_B80A );
    maps\_utility::array_spawn_function_noteworthy( "riotshield_flanker", ::_id_AD76 );
    maps\_utility::array_spawn_function_noteworthy( "shotgun_flanker", ::_id_AC18 );
    maps\_utility::array_spawn_function_noteworthy( "airstrip_littlebird_hostiles", ::_id_D59C );
    maps\_utility::array_spawn_function_noteworthy( "airstrip_heli_fastropers", ::_id_D219 );
    maps\_utility::array_spawn_function_targetname( "ambient_airstrip", ::_id_D355 );
    maps\_utility::array_spawn_function_targetname( "airstrip_runners", ::_id_BF98 );
    maps\_utility::array_spawn_function_noteworthy( "ignored", ::_id_D51C );
    var_13 = getent( "littlebird_airstrip", "targetname" );
    var_13 thread maps\_utility::add_spawn_function( ::_id_C6F1 );
    var_14 = getent( "blackhawk_airstrip", "targetname" );
    var_14 thread maps\_utility::add_spawn_function( ::_id_CF3E );
    thread _id_C71C();
    thread control_room_shadows();
}

_id_B4D7()
{
    thread _id_C955();
}

_id_C955()
{
    common_scripts\utility::flag_wait( "steamroom_halfway_point" );
    level.spawnercallbackthread = ::_id_D148;
    thread _id_D3AB();
    thread _id_B83E();
    thread _id_BB6D();
    thread _id_C03E();
    getent( "cell_hook1", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook1", "cell_hook" );
    getent( "cell_hook2", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook2", "cell_hook" );
    common_scripts\utility::flag_wait( "obj_ledge_traverse_complete" );
    thread _id_C5C6();
}

_id_C03E()
{
    level endon( "control_room_explosion" );
    common_scripts\utility::flag_wait( "player_clear_steamroom" );
    musicstop();
    var_0 = maps\_utility::musiclength( "mus_af_caves_goingloud" );

    while ( !common_scripts\utility::flag( "control_room_explosion" ) )
    {
        maps\_utility::musicplaywrapper( "mus_af_caves_goingloud" );
        wait( var_0 );
        maps\_utility::music_stop( 1 );
        wait 1.1;
    }
}

_id_D3AB()
{
    common_scripts\utility::flag_wait( "steamroom_done" );
    maps\af_caves_code::_id_C9CF();
    level.price.goalvolume = 64;
    level.price pushplayer( 0 );
    level.price.pathrandompercent = 50;
    level.price maps\_utility::enable_ai_color();
    level.price thread maps\af_caves_code::_id_CD02( "m4_grenadier" );
    triggersenable( "colornodes_backhalf_ledge_start", "script_noteworthy", 1 );
    triggersenable( "colornodes_backhalf_ledge", "script_noteworthy", 1 );
    maps\_utility::activate_trigger_with_noteworthy( "colornodes_backhalf_ledge_start" );
    thread maps\af_caves_code::military_convoy_loop( "canyon_convoy", "control_room_breached", 3, 4.5 );
    var_0 = maps\_vehicle::spawn_vehicles_from_targetname_and_drive( "air_convoy_ledge" );
    var_0[0] thread maps\_utility::play_sound_on_entity( "scn_af_caves_heli_convoy" );
    thread _id_D09A();
    common_scripts\utility::flag_wait( "player_clear_steamroom" );
    thread maps\_utility::autosave_by_name( "ledge_start" );
    var_1 = maps\_vehicle::spawn_vehicles_from_targetname_and_drive( "zodiacs_canyon_start" );

    foreach ( var_3 in var_1 )
    {
        var_3.animname = "zodiac";
        var_3 maps\_utility::assign_animtree();
        var_3 setanim( var_3 maps\_utility::getanim( "bounce" ) );
    }

    var_5 = maps\_vehicle::spawn_vehicles_from_targetname_and_drive( "zodiacs_canyon" );

    foreach ( var_7 in var_5 )
    {
        var_7.animname = "zodiac";
        var_7 maps\_utility::assign_animtree();
        var_7 setanim( var_7 maps\_utility::getanim( "bounce" ) );
    }

    common_scripts\utility::flag_wait( "player_ledge_stairs_01" );
    level.price.ignoreme = 1;
    level.price.ignorerandombulletdamage = 1;
    thread _id_D2B8( "ledge_gunners_dead" );
    var_9 = maps\_vehicle::spawn_vehicle_from_targetname_and_drive( "uav_bridge_01" );
    var_9 thread _id_B2A1();
    common_scripts\utility::flag_wait( "player_ledge_corner_01" );
    thread _id_D434( "jets_canyon_01", "shephered_ledge_dialogue_done" );
    common_scripts\utility::flag_wait( "player_crossed_bridge" );
    level._id_CC31 = 0.1;
    common_scripts\utility::flag_wait( "player_ledge_last_stairs" );
    level.price.ignoreme = 0;
    level.price.ignorerandombulletdamage = 0;
    common_scripts\utility::flag_wait( "player_inside_overlook" );
    thread animatelamp();
    level.player notify( "done_with_ledge_sequence" );
    maps\_utility::battlechatter_on( "allies" );
    maps\_utility::battlechatter_on( "axis" );
    level.price maps\_utility::set_battlechatter( 1 );
    thread _id_D16D();
}

animatelamp()
{
    var_0 = getent( "cave_wired_lights_02", "targetname" );
    var_0.animname = "lights";
    var_0 maps\_anim::setanimtree();
    var_1 = var_0 maps\_utility::getanim( "idle" );
    var_0 setanim( var_1 );
}

_id_D2B8( var_0 )
{
    level.player endon( "death" );
    level.price endon( "death" );
    level.price.baseaccuracy = 0.1;
    level.price.old_baseaccuracy = level.price.baseaccuracy;
    level._id_B71E = gettime();
    wait 0.05;

    while ( !common_scripts\utility::flag( var_0 ) )
    {
        if ( _id_C651() && _id_AED2( level._id_CC31 ) )
            level.price.baseaccuracy = 50;
        else
            level.price.baseaccuracy = level.price.old_baseaccuracy;

        wait 2;
    }

    level.price.baseaccuracy = 2;
}

_id_AED2( var_0 )
{
    var_1 = gettime();
    var_2 = var_1 - level._id_B71E;

    if ( var_1 == level._id_B71E )
        return 0;
    else if ( var_2 > var_0 * 1000 )
        return 1;
    else
        return 0;
}

_id_B0E0()
{
    self endon( "death" );
    self.ignoreme = 1;
    common_scripts\utility::flag_wait( "player_ledge_bridge_crossing" );
    self.ignoreme = 0;
}

_id_C443()
{
    self.dropweapon = 0;
    var_0 = undefined;

    switch ( level.gameskill )
    {
        case 0:
            var_1 = 1;
            var_0 = 1000;
            break;
        case 1:
            var_1 = 1.3;
            var_0 = 1000;
            break;
        case 2:
            var_1 = 1.5;
            var_0 = 1000;
            break;
        case 3:
            var_1 = 1.5;
            var_0 = 1000;
            break;
    }

    self.interval = 0;
    self.ignoresuppression = 1;
    self.suppressionwait = 0;
    self.disablebulletwhizbyreaction = 1;
    self.baseaccuracy *= var_0;
    self.accuracy *= var_0;

    while ( isdefined( self ) )
    {
        self waittill( "death", var_2 );

        if ( common_scripts\utility::flag( "ledge_gunners_dead" ) )
        {
            if ( !common_scripts\utility::flag( "player_inside_overlook" ) && level._id_D3C6 == 0 )
            {
                level._id_D3C6 = 1;
                maps\_utility::radio_dialogue( "riot_killfirm_final" );
            }
        }

        if ( isdefined( var_2 ) && var_2 == level.price )
        {
            if ( common_scripts\utility::flag( "can_talk" ) && !common_scripts\utility::flag( "ledge_gunners_dead" ) )
            {
                wait 0.05;
                common_scripts\utility::flag_clear( "can_talk" );

                if ( level._id_C66E == 3 )
                    level._id_C66E = 0;

                maps\_utility::radio_dialogue( "riot_killfirm_0" + level._id_C66E );
                level._id_C66E++;
                common_scripts\utility::flag_set( "can_talk" );
            }

            level._id_B71E = gettime();
            continue;
        }

        if ( isdefined( var_2 ) && isplayer( var_2 ) )
        {
            level._id_CDD9++;

            if ( level._id_CDD9 > 4 )
                thread maps\_spawner::kill_spawnernum( 71 );
        }
    }
}

_id_B83E()
{
    common_scripts\utility::flag_wait( "steamroom_done" );
    common_scripts\utility::flag_set( "obj_ledge_traverse_given" );
    common_scripts\utility::flag_wait( "player_clear_steamroom" );
    common_scripts\utility::flag_wait( "steamroom_ambush_finish_dialogue_ended" );
    maps\_utility::radio_dialogue( "afcaves_pri_pickupriotsheild" );
    maps\_utility::delaythread( 2, ::_id_ABC4, "ledge_gunners_dead", "player_crossed_bridge" );
    wait 1;
    common_scripts\utility::flag_wait( "can_talk" );
    common_scripts\utility::flag_clear( "can_talk" );
    common_scripts\utility::flag_set( "shephered_ledge_dialogue_starting" );
    maps\_utility::radio_dialogue( "afcaves_sc4_gettingthis" );
    common_scripts\utility::flag_set( "shephered_ledge_dialogue_done" );
    common_scripts\utility::flag_set( "can_talk" );
    common_scripts\utility::flag_wait( "ledge_gunners_dead" );
    level.player notify( "done_with_ledge_sequence" );
    wait 3;
    common_scripts\utility::flag_set( "ledge_sequence_dialogue_over" );
}

_id_ABC4( var_0, var_1 )
{
    common_scripts\utility::flag_wait( "player_ledge_stairs_01" );
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    var_6 = 0;

    for (;;)
    {
        if ( common_scripts\utility::flag( var_0 ) || common_scripts\utility::flag( var_1 ) )
            return;

        if ( !_id_BF52() && _id_BFDF() )
        {
            if ( common_scripts\utility::flag( "can_talk" ) )
            {
                common_scripts\utility::flag_clear( "can_talk" );

                if ( var_2 == 3 )
                    var_2 = 0;

                maps\_utility::radio_dialogue( "pickupriotsheild_0" + var_2 );
                var_2++;
                common_scripts\utility::flag_set( "can_talk" );
                level.player common_scripts\utility::waittill_notify_or_timeout( "weapon_change", 5 );
            }
        }
        else if ( _id_BF52() )
        {
            if ( level._id_ADEB == 0 )
            {
                if ( common_scripts\utility::flag( "can_talk" ) )
                {
                    common_scripts\utility::flag_clear( "can_talk" );
                    maps\_utility::radio_dialogue( "afcaves_pri_takepoint2" );
                    level._id_ADEB = 1;
                    common_scripts\utility::flag_set( "can_talk" );
                }
            }
            else if ( !_id_C651() )
            {
                if ( common_scripts\utility::flag( "can_talk" ) )
                {
                    common_scripts\utility::flag_clear( "can_talk" );

                    if ( var_4 == 2 )
                        var_4 = 0;

                    maps\_utility::radio_dialogue( "switchriotsheild_0" + var_4 );
                    var_4++;
                    common_scripts\utility::flag_set( "can_talk" );
                }
            }
            else if ( !_id_C507() )
            {
                if ( common_scripts\utility::flag( "can_talk" ) )
                {
                    common_scripts\utility::flag_clear( "can_talk" );

                    if ( var_3 == 2 )
                        var_3 = 0;

                    maps\_utility::radio_dialogue( "crouchriotsheild_0" + var_3 );
                    var_3++;
                    common_scripts\utility::flag_set( "can_talk" );
                }
            }
            else if ( level._id_ADEB == 1 )
            {
                if ( var_6 < 3 && common_scripts\utility::flag( "can_talk" ) )
                {
                    common_scripts\utility::flag_clear( "can_talk" );
                    maps\_utility::radio_dialogue( "catwalk_enemy_chatter_0" + var_6 );
                    var_6++;

                    if ( var_6 == 0 )
                    {
                        maps\_utility::radio_dialogue( "catwalk_enemy_chatter_0" + var_6 );
                        var_6++;
                    }

                    common_scripts\utility::flag_set( "can_talk" );
                }
                else if ( common_scripts\utility::flag( "can_talk" ) )
                {
                    common_scripts\utility::flag_clear( "can_talk" );

                    if ( var_5 == 1 )
                        var_5 = 0;

                    maps\_utility::radio_dialogue( "riotsheildmove_0" + var_5 );
                    var_5++;
                    common_scripts\utility::flag_set( "can_talk" );
                }
            }
        }

        level.player common_scripts\utility::waittill_notify_or_timeout( "weapon_change", 1 );
        wait 1;
    }
}

_id_B2A1()
{
    while ( isdefined( self ) )
        wait 2;

    var_0 = maps\_vehicle::spawn_vehicle_from_targetname_and_drive( "uav_bridge_02" );
}

_id_C507()
{
    if ( level.player getstance() == "crouch" )
        return 1;
    else
        return 0;
}

_id_C651()
{
    if ( !_id_BF52() )
        return 0;
    else
    {
        var_0 = level.player getcurrentweapon();

        if ( var_0 == "riotshield" )
            return 1;
        else
            return 0;
    }
}

_id_BF52()
{
    var_0 = level.player getweaponslistall();

    if ( !isdefined( var_0 ) )
        return 0;

    foreach ( var_2 in var_0 )
    {
        if ( issubstr( var_2, "riotshield" ) )
            return 1;
    }

    return 0;
}

_id_BFDF()
{
    var_0 = 1048576;

    foreach ( var_2 in level._id_BA2F )
    {
        if ( !isdefined( var_2 ) )
            continue;

        if ( distancesquared( var_2.origin, level.player.origin ) < var_0 )
            return 1;
    }

    return 0;
}

_id_C5C6()
{
    thread _id_BEA7();
    thread _id_CEFD();
    thread _id_B75F();
    thread barrel_explosive();
    thread tarp_wind_idle();
    common_scripts\utility::flag_wait( "player_enter_skylight" );
    thread _id_CB3C();
}

_id_BEA7()
{
    common_scripts\utility::flag_wait( "obj_ledge_traverse_complete" );
    triggersenable( "colornodes_backhalf_overlook_to_breach", "script_noteworthy", 1 );
    level.price maps\_utility::cqb_walk( "off" );
    level.price.neverenablecqb = 1;
    level.price.sprint = undefined;
    level.price.fixednodesaferadius = 1024;
    level.fixednodesaferadius_default = 1024;
    var_0 = maps\_vehicle::spawn_vehicle_from_targetname_and_drive( "blackhawk_skylight_01" );
    var_1 = var_0.origin;
    var_0.preferred_crash_style = 3;
    var_0 thread maps\af_caves_aud::_id_B637();
    common_scripts\utility::flag_wait( "player_enter_skylight" );
    common_scripts\utility::flag_set( "unload_skylight_dudes" );
    var_2 = getent( "volume_overlook", "targetname" );
    var_3 = var_2 maps\_utility::get_ai_touching_volume( "axis" );
    common_scripts\utility::array_thread( var_3, ::_id_AB23 );
    var_4 = getentarray( "smoke_org_skylight", "targetname" );
    thread _id_C291( var_4, "stop_smoke" );
    wait 1;
    common_scripts\utility::flag_set( "smoke_thrown" );

    if ( isdefined( var_0 ) )
        maps\_utility::delaythread( 2, common_scripts\utility::play_sound_in_space, "afcaves_sc5_papaquebec", var_1 );

    thread _id_CABE();
    wait 10.5;

    if ( isdefined( var_0 ) )
    {
        var_5 = common_scripts\utility::getstruct( "skylight1_heli_depart", "targetname" );
        var_0 thread _id_C7B2( var_5 );
    }
}

_id_D16D()
{
    thread _id_C7B5();
    level endon( "player_in_skylight_area" );
    common_scripts\utility::flag_wait( "overlook_dudes_dead" );
    thread maps\_utility::autosave_by_name( "overlook_dudes_dead" );
}

_id_C7B5()
{
    var_0 = 0;
    level endon( "player_in_skylight_area" );

    for (;;)
    {
        level waittill( "player_killed_an_enemy" );
        var_0++;

        if ( var_0 > 2 )
        {
            thread maps\_utility::autosave_by_name( "overlook_timed_autosave" );
            var_0 = 0;
        }
    }
}

_id_C7B2( var_0 )
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );
    thread maps\_vehicle::vehicle_paths( var_0 );
    self waittill( "reached_dynamic_path_end" );
    self delete();
}

_id_CEFD()
{
    common_scripts\utility::flag_wait( "ledge_sequence_dialogue_over" );
    maps\_utility::radio_dialogue( "afcaves_schq_escourtgoldeagle" );
    maps\_utility::radio_dialogue( "afcaves_pri_mustbeshepherd" );
    common_scripts\utility::flag_set( "obj_shepherd_location_found" );
    common_scripts\utility::flag_wait( "player_inside_overlook" );

    if ( common_scripts\utility::flag( "player_in_skylight_area" ) || common_scripts\utility::flag( "overlook_dudes_decimated" ) )
        return;

    wait 10;

    if ( common_scripts\utility::flag( "player_in_skylight_area" ) || common_scripts\utility::flag( "overlook_dudes_decimated" ) )
        return;

    if ( _id_CCFE() )
    {
        level.price dialogue_execute( "afcaves_pri_sheildsthrowfrags" );

        if ( common_scripts\utility::flag( "player_in_skylight_area" ) || common_scripts\utility::flag( "overlook_dudes_decimated" ) )
            return;

        wait 10;
    }
    else if ( _id_B4BB() )
    {
        level.price dialogue_execute( "afcaves_pri_sheildsuseflash" );

        if ( common_scripts\utility::flag( "player_in_skylight_area" ) || common_scripts\utility::flag( "overlook_dudes_decimated" ) )
            return;

        wait 10;
    }

    if ( common_scripts\utility::flag( "player_in_skylight_area" ) || common_scripts\utility::flag( "overlook_dudes_decimated" ) )
        return;

    level.price dialogue_execute( "afcaves_pri_trytoflank" );

    if ( common_scripts\utility::flag( "player_in_skylight_area" ) || common_scripts\utility::flag( "overlook_dudes_decimated" ) )
        return;

    wait 10;

    if ( common_scripts\utility::flag( "player_in_skylight_area" ) || common_scripts\utility::flag( "overlook_dudes_decimated" ) )
        return;

    level.price dialogue_execute( "afcaves_pri_hitfromsides" );

    if ( common_scripts\utility::flag( "player_in_skylight_area" ) || common_scripts\utility::flag( "overlook_dudes_decimated" ) )
        return;

    wait 10;

    if ( common_scripts\utility::flag( "player_in_skylight_area" ) || common_scripts\utility::flag( "overlook_dudes_decimated" ) )
        return;

    level.price dialogue_execute( "afcaves_pri_flankandhitsides" );
}

_id_CCFE()
{
    if ( level.player getweaponammostock( "fraggrenade" ) > 0 )
        return 1;
    else
        return 0;
}

_id_B4BB()
{
    if ( level.player getweaponammostock( "flash_grenade" ) > 0 )
        return 1;
    else
        return 0;
}

_id_CABE()
{
    while ( !common_scripts\utility::flag( "player_in_skylight_area" ) )
        wait 3;

    thread maps\_utility::autosave_by_name( "skylight" );
    level.price dialogue_execute( "afcaves_pri_usingthermal" );
    level.price dialogue_execute( "afcaves_pri_moveright" );
    common_scripts\utility::flag_set( "price_has_given_flank_hint" );
    wait 5;

    if ( common_scripts\utility::flag( "player_going_around_skylight_flank" ) || common_scripts\utility::flag( "player_on_other_side_skylight" ) || common_scripts\utility::flag( "player_approaching_breach" ) )
    {
        common_scripts\utility::flag_set( "stop_smoke" );
        return;
    }

    var_0 = getent( "skylight_flanker", "script_noteworthy" );
    var_0 notify( "trigger", level.player );

    if ( common_scripts\utility::flag( "can_talk" ) )
    {
        common_scripts\utility::flag_clear( "can_talk" );
        level.price dialogue_execute( "afcaves_pri_drawfire" );
        common_scripts\utility::flag_set( "can_talk" );
    }

    wait 15;

    if ( common_scripts\utility::flag( "player_going_around_skylight_flank" ) || common_scripts\utility::flag( "player_on_other_side_skylight" ) || common_scripts\utility::flag( "player_approaching_breach" ) )
    {
        common_scripts\utility::flag_set( "stop_smoke" );
        return;
    }

    if ( common_scripts\utility::flag( "can_talk" ) )
    {
        common_scripts\utility::flag_clear( "can_talk" );
        level.price dialogue_execute( "afcaves_pri_switchingtotherm" );
        common_scripts\utility::flag_set( "can_talk" );
    }
}

_id_AAFB()
{
    self endon( "death" );
    self.ignoreme = 1;
    self waittill( "jumpedout" );
    self.ignoreme = 0;
}

_id_D148( var_0 )
{
    if ( var_0.team == "axis" )
        var_0 thread _id_C38B();
}

_id_C38B()
{
    self waittill( "death", var_0 );

    if ( isdefined( var_0 ) && isplayer( var_0 ) )
        level notify( "player_killed_an_enemy" );

    if ( isdefined( self.script_deathflag ) && self.script_deathflag == "overlook_dudes_dead" )
    {
        level._id_C869++;

        if ( level._id_C869 > 4 )
            common_scripts\utility::flag_set( "overlook_dudes_decimated" );
    }
}

_id_B80A()
{
    self endon( "death" );
    self.ignoreme = 1;
    self waittill( "jumpedout" );
    self.ignoreme = 0;

    if ( self.code_classname == "actor_enemy_riotshield" )
    {
        maps\_riotshield::riotshield_sprint_on();
        wait( randomfloatrange( 4.8, 5.2 ) );
        maps\_riotshield::riotshield_sprint_off();
    }
}

_id_AD76( var_0 )
{
    self endon( "death" );
    self.usechokepoints = 0;

    if ( self.code_classname == "actor_enemy_riotshield" )
    {
        maps\_riotshield::riotshield_sprint_on();
        wait( randomfloatrange( 4.8, 5.2 ) );

        if ( isdefined( var_0 ) )
            wait( randomfloatrange( 7, 8 ) );

        maps\_riotshield::riotshield_sprint_off();
    }
}

_id_AC18()
{
    self endon( "death" );
    self.goalradius = 64;
}

_id_D09A()
{
    var_0 = maps\_vehicle::spawn_vehicle_from_targetname_and_drive( "blackhawk_overlook_rappel" );
    var_0 endon( "death" );
    var_0 thread maps\af_caves_aud::_id_ADB4();
    common_scripts\utility::flag_wait( "player_inside_overlook" );
    common_scripts\utility::flag_set( "unload_overlook_dudes" );
    var_1 = maps\_vehicle::spawn_vehicle_from_targetname_and_drive( "blackhawk_overlook_01" );
    var_1 thread maps\af_caves_aud::_id_B74B();
    var_0 waittill( "unloaded" );
    wait 5;

    if ( isdefined( var_0 ) )
    {
        var_2 = common_scripts\utility::getstruct( "overlook_heli_depart", "targetname" );
        var_0 thread _id_C7B2( var_2 );
    }

    common_scripts\utility::flag_set( "heli_left_overlook" );
}

barrel_explosive()
{
    var_0 = getent( "combat_cave_barrel", "targetname" );
    var_0 setcandamage( 1 );

    for (;;)
    {
        var_0 waittill( "damage", var_1 );

        if ( var_1 <= 0 )
            continue;

        var_2 = var_0.origin + ( 0, 0, 15 );
        playfx( common_scripts\utility::getfx( "barrelexp" ), var_2 );
        var_0 radiusdamage( var_0.origin, 512, 150, 25 );
        var_3 = getent( var_0.target, "targetname" );
        var_3 delete();
        var_0 setmodel( "com_barrel_piece2_1" );
        break;
    }
}

tarp_wind_idle()
{
    var_0 = getent( "combat_cave_tarp", "targetname" );
    var_0 thread maps\af_caves_code::scripted_anim_props( "combat_cave_tarp_wind", "heli_tarp" );
    var_1 = getent( "blackhawk_overlook_rappel", "targetname" );
    common_scripts\utility::flag_wait( "heli_left_overlook" );
    wait 5.0;
    var_0 maps\_utility::anim_stopanimscripted();
    var_0 thread maps\af_caves_code::scripted_anim_props( "combat_cave_tarp", "heli_tarp" );
}

_id_CB3C()
{
    thread _id_CBF1();
    thread _id_D4F5();
    thread _id_C6B9();
    thread _id_BCC7();
    thread _id_C35F();
    thread _id_B247();
    thread _id_C61E();
    thread obj_escape();
    thread _id_D1C0();
    thread _id_D258();
    thread _id_D09E();
    thread cqb_timer_setup();
    thread price_screen();
    common_scripts\utility::flag_wait( "obj_escape_complete" );
    thread _id_D576();
}

_id_D4F5()
{
    var_0 = getentarray( "countdown_tv", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, maps\af_caves_code::_id_C1F7 );
    common_scripts\utility::flag_wait( "obj_door_controls_given" );
}

_id_D1C0()
{
    level endon( "skylight_dudes_dead" );
    common_scripts\utility::flag_wait( "player_enter_skylight" );
    common_scripts\utility::flag_wait_either( "player_on_other_side_skylight", "player_has_flanked_skylight" );
    var_0 = getaiarray( "axis" );
    common_scripts\utility::array_thread( var_0, ::_id_AF7E );
}

_id_AF7E()
{
    self endon( "death" );
    var_0 = getent( "volume_skylight_defend", "targetname" );
    var_1 = getent( "volume_skylight_breach_hall", "targetname" );

    for (;;)
    {
        wait 1;

        if ( level.player istouching( var_0 ) || level.player istouching( var_1 ) )
        {
            thread _id_AB23();
            level.price.baseaccuracy = 50;
            continue;
        }

        self notify( "stop_seeking" );
        self setgoalpos( self.origin );
        self setgoalvolumeauto( var_0 );
        self.goalradius = 2048;
        level.price.baseaccuracy = 2;
    }
}

_id_CBF1()
{
    level endon( "mission failed" );
    common_scripts\utility::flag_wait_either( "player_right_near_breach", "skylight_dudes_dead" );
    thread maps\_utility::autosave_by_name( "breach" );
    common_scripts\utility::flag_set( "stop_smoke" );
    common_scripts\utility::flag_set( "obj_overlook_to_skylight_complete" );
    var_0 = getent( "breach_safe_volume", "targetname" );
    var_1 = var_0 maps\_utility::get_ai_touching_volume( "axis" );
    common_scripts\utility::array_thread( var_1, ::_id_AB23 );
    triggersenable( "skylight_finished_colornodes", "script_noteworthy", 1 );
    maps\_utility::activate_trigger_with_noteworthy( "skylight_finished_colornodes" );
    common_scripts\utility::flag_wait( "breach_door_closed" );
    level.slomobasevision = "af_caves_indoors_breachroom";
    level.price.fixednodesaferadius = 64;
    level.fixednodesaferadius_default = undefined;
    triggersenable( "colornodes_backhalf_breach_start", "script_noteworthy", 1 );
    maps\_utility::activate_trigger_with_noteworthy( "colornodes_backhalf_breach_start" );
    var_2 = getentarray( "c4barrelPacks", "targetname" );
    common_scripts\utility::array_thread( var_2, ::_id_C00C );
    var_2 = getentarray( "c4barrelPacks", "script_noteworthy" );
    common_scripts\utility::array_thread( var_2, ::_id_C00C );
    common_scripts\utility::flag_wait( "control_room_getting_breached" );
    thread maps\af_caves_aud::_id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "none", "af_caves_int" );
    var_1 = getaiarray( "axis" );
    common_scripts\utility::array_thread( var_1, ::_id_C38A );
    common_scripts\utility::flag_wait( "control_room_breached" );
    level.player setmovespeedscale( 1 );
    thread _id_C4EE();
    thread _id_BE3E();
    thread control_room_doors();
    common_scripts\utility::flag_wait( "control_room_cleared" );
    thread _id_D249();
    common_scripts\utility::flag_wait( "obj_door_controls_given" );
    thread _id_B611( 20 );
    thread cqb_timer_think();
    soundscripts\_snd::snd_message( "start_escape_sequence" );
    var_3 = getentarray( "keyboard", "targetname" );
    common_scripts\utility::array_thread( var_3, ::_id_CA27 );
    common_scripts\utility::flag_wait( "keyboard_activated" );
    var_4 = getentarray( "player_unlock_door", "targetname" );

    foreach ( var_6 in var_4 )
        var_6 hide();

    var_8 = getent( "computer_lock", "targetname" );
    var_8 setmodel( "h2_cave_monitor_screen_unlocked" );
    common_scripts\utility::flag_wait( "player_approaching_exit_to_airstrip" );
    thread _id_B56E();
    var_9 = getnode( "node_price_escape_final", "targetname" );
    level.price setgoalnode( var_9 );
    common_scripts\utility::flag_wait( "player_touching_cave_exit" );
    wait 0.3;
    _id_D3D8();
    common_scripts\utility::flag_set( "player_escaped" );
}

_id_C38A()
{
    self endon( "death" );
    wait 0.5;
    self.health = 1;

    if ( level.gameskill < 3 )
    {
        if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "veteran" )
            self delete();
    }

    for (;;)
    {
        self waittill( "damage", var_0, var_1, var_2, var_3, var_4 );

        if ( isdefined( var_1 ) && isplayer( var_1 ) )
            self kill();
    }
}

_id_D249()
{
    common_scripts\utility::flag_wait( "control_room_cleared" );
    level.price.baseaccuracy = 2;
    thread maps\_utility::autosave_by_name( "control_room_cleared" );
    level.price maps\_utility::cqb_walk( "off" );
    level.price.neverenablecqb = 1;
    level.price pushplayer( 1 );
    wait 5.0;
    var_0 = getent( "price_computer_node", "targetname" );
    var_0 maps\_anim::anim_reach_solo( level.price, "laptop_stand_idle_start" );
    var_0 maps\_anim::anim_single_solo( level.price, "laptop_stand_idle_start" );
    common_scripts\utility::flag_set( "price_keyboard" );
    thread _id_BE8E();
    level.price thread _id_C0AB();
    common_scripts\utility::flag_wait( "control_room_door_opened" );
    level.price maps\_utility::disable_ai_color();
    var_0 notify( "stop_idle" );
    maps\af_caves_aud::stop_price_typing_loop( level.price );
    level.price maps\_utility::anim_stopanimscripted();
    var_1 = getnode( "node_price_escape_cover", "targetname" );
    level.price setgoalnode( var_1 );
}

price_screen()
{
    var_0 = getent( "price_typing_controlroom", "targetname" );
    var_0 hide();
    common_scripts\utility::flag_wait( "price_keyboard" );
    var_0 show();
}

_id_BE8E()
{
    var_0 = getent( "price_computer_node", "targetname" );
    level.price endon( "stop_loop" );
    var_0 thread maps\_anim::anim_loop_solo( level.price, "laptop_stand_idle", "stop_idle" );
    common_scripts\utility::flag_wait( "control_room_door_opened" );
    var_0 notify( "stop_idle" );
    var_0 maps\_anim::anim_single_solo( level.price, "laptop_stand_yell" );
}

_id_C0AB()
{
    var_0 = spawn( "script_origin", self.origin + ( 0, 0, 32 ) );
    var_0 thread _id_A8E4( "control_room_door_opened" );
    var_0 endon( "death" );
    level endon( "control_room_door_opened" );

    for (;;)
        self waittillmatch( "looping anim", "end" );
}

_id_A8E4( var_0 )
{
    self endon( "death" );
    common_scripts\utility::flag_wait( var_0 );
    self playrumbleonentity();
    wait 0.1;
    self delete();
}

_id_BE3E()
{
    common_scripts\utility::flag_wait( "breach_room_guys_dead" );
    common_scripts\utility::flag_set( "control_room_cleared" );
}

_id_B56E()
{
    level notify( "pre_explosion_happening" );
    var_0 = 0;

    for (;;)
    {
        thread common_scripts\_exploder::exploder( "escape_tunnel_pre_explosion" );
        thread common_scripts\utility::play_sound_in_space( "af_caves_selfdestruct", level.player.origin );
        level.player playrumblelooponentity( "damage_heavy" );

        if ( common_scripts\utility::flag( "player_touching_cave_exit" ) )
            break;

        var_0++;

        if ( var_0 > 6 )
        {
            level thread _id_A831();
            break;
        }

        if ( var_0 == 1 )
        {
            earthquake( 0.2, 1.75, level.player.origin, 1000 );
            wait 1;
            continue;
        }

        if ( var_0 == 2 )
        {
            earthquake( 0.3, 1.75, level.player.origin, 1000 );
            wait 1.5;
            continue;
        }

        if ( var_0 == 5 )
        {
            common_scripts\_exploder::exploder( "control_room_detonate" );
            earthquake( 0.3, 1.75, level.player.origin, 1000 );
            wait 1;
            continue;
        }

        earthquake( 0.4, 1.75, level.player.origin, 1000 );
        wait 0.75;
    }
}

_id_CA27()
{
    maps\_utility::glow( "com_computer_keyboard_obj" );
    self makeusable();
    thread common_scripts\utility::_id_AE1E( level.player, &"AF_CAVES_USE_KEYBOARD", &"AF_CAVES_USE_KEYBOARD_PC", "trigger" );
    self waittill( "trigger" );
    var_0 = getentarray( "keyboard", "targetname" );
    maps\_utility::array_notify( var_0, "trigger" );
    self makeunusable();
    maps\_utility::stopglow();
    var_1 = level.player getstance();
    var_2 = 0.5;

    if ( var_1 == "crouch" )
        var_2 = 0.5;
    else if ( var_1 == "prone" )
        var_2 = 0.8;

    level.player setstance( "stand" );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    var_3 = spawn( "script_origin", self.origin );
    var_3.angles = self.angles;
    maps\_utility::assign_animtree( "keyboard" );
    self setmodel( "com_computer_keyboard_black_animated" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_afcaves_plr_keyboard_typing" );
    thread handledeathwhiletyping( self );
    thread animation_dof_computer_typing();
    var_3 maps\_utility::_id_C0F0( "keyboard_control", [ self ], 0, var_2, 1, 0 );
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
    var_3 delete();

    if ( !common_scripts\utility::flag( "keyboard_activated" ) )
    {
        level notify( "keyboard_activated" );
        common_scripts\utility::flag_set( "keyboard_activated" );
    }
}

animation_dof_computer_typing()
{
    level.player waittill( "player_anim_started" );
    var_0 = _id_D397::_id_A97A( "computer_typing" );
    var_0 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 5.6, -1, 8, 8 ) _id_D397::_id_CCA7( level.player._id_C309, "tag_dof" ) _id_D397::_id_AE01( 1 ) _id_D397::_id_AF9C();
    var_0 _id_D397::_id_BEA0( 3.0 ) _id_D397::_id_BF3F();
    var_0 _id_D397::_id_BEA0( 0.5 ) _id_D397::_id_B85E( 0.04, 0.2, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 0.8 ) _id_D397::_id_B85E( 0.04, 0.2, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 0.9 ) _id_D397::_id_B85E( 0.04, 0.2, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 1.0 ) _id_D397::_id_B85E( 0.04, 0.2, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 1.3 ) _id_D397::_id_B85E( 0.04, 0.2, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 1.5 ) _id_D397::_id_B85E( 0.04, 0.2, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 1.8 ) _id_D397::_id_B85E( 0.04, 0.2, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 1.95 ) _id_D397::_id_B85E( 0.04, 0.2, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 2.15 ) _id_D397::_id_B85E( 0.04, 0.2, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 2.25 ) _id_D397::_id_B85E( 0.08, 0.7, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.15 );
    var_0 _id_D397::_id_BC26();
}

handledeathwhiletyping( var_0 )
{
    level endon( "obj_escape_complete" );
    level endon( "kill_timer" );
    level endon( "keyboard_activated" );
    level waittill( "mission failed" );
    level.player._id_C309 stopanimscripted();
    level.player._id_C309 delete();
    var_0 stopanimscripted();
    level.player unlink();
    level.player freezecontrols( 0 );
}

_id_D258()
{
    common_scripts\utility::flag_wait( "obj_overlook_to_skylight_complete" );
    common_scripts\utility::flag_set( "obj_breach_given" );
    wait( randomfloatrange( 1, 1.25 ) );

    if ( !common_scripts\utility::flag( "control_room_breached" ) )
        maps\_utility::radio_dialogue( "afcaves_sc6_severeddet" );

    if ( !common_scripts\utility::flag( "control_room_getting_breached" ) )
        maps\_utility::radio_dialogue( "afcaves_schq_chargeshot" );

    common_scripts\utility::flag_set( "start_breach_nags" );
    common_scripts\utility::flag_wait( "control_room_cleared" );
    wait 1;
    maps\_utility::radio_dialogue( "afcaves_shp_sitecompromised" );
    maps\_utility::radio_dialogue( "afcaves_shp_directive116" );
    common_scripts\utility::flag_set( "obj_escape_given" );
    var_0 = getent( "control_room_volume", "script_noteworthy" );

    if ( level.player istouching( var_0 ) )
        thread maps\_utility::autosave_by_name( "timer_start" );

    level.price notify( "nag_anim" );
    common_scripts\utility::flag_set( "obj_door_controls_given" );
    common_scripts\utility::flag_wait( "control_room_door_opened" );
    wait 2;
    level.price dialogue_execute( "afcaves_pri_run" );
    wait 0.5;

    if ( !common_scripts\utility::flag( "player_touching_cave_exit" ) )
        level.price dialogue_execute( "afcaves_pri_gonnablow" );
}

_id_D09E()
{
    level endon( "control_room_getting_breached" );
    level endon( "control_room_breached" );
    level endon( "control_room_cleared" );
    common_scripts\utility::flag_wait( "breach_door_closed" );
    common_scripts\utility::flag_wait( "start_breach_nags" );
    wait 1;
    var_0 = 0;

    for (;;)
    {
        level.price dialogue_execute( "breach_nag_0" + var_0 );
        var_0++;

        if ( var_0 > 3 )
            var_0 = 0;

        wait( randomfloatrange( 10, 15 ) );
    }
}

_id_C61A( var_0, var_1 )
{
    var_2 = self._id_BC3F;
    var_3 = 4;
    self rotateto( self.angles + ( 0, var_2, 0 ), 4, 1.5, 1.5 );
    thread maps\_utility::play_sound_on_entity( "af_caves_escape_door_open" );
    wait( var_3 );

    if ( isdefined( var_1 ) )
        common_scripts\utility::flag_set( var_1 );
}

_id_D20F( var_0, var_1 )
{
    var_2 = self._id_AB59;
    var_3 = 7;
    self rotateto( self.angles + ( 0, var_2, 0 ), var_3, 0.5, 0.5 );
    wait( var_3 - 1 );

    if ( var_0 == "left" )
        thread maps\_utility::play_sound_on_entity( "af_caves_escape_door_close" );

    if ( isdefined( var_1 ) )
        common_scripts\utility::flag_set( var_1 );
}

control_room_doors()
{
    var_0 = getentarray( "exitdoor_right", "targetname" );
    var_1 = getentarray( "exitdoor_left", "targetname" );
    var_2 = getent( "controlroom_col", "targetname" );

    foreach ( var_4 in var_0 )
        var_4 rotateyaw( 80, 4 );

    foreach ( var_4 in var_1 )
        var_4 rotateyaw( -85, 4 );

    var_2 thread maps\_utility::play_sound_on_entity( "af_caves_escape_door_close" );
    common_scripts\utility::flag_set( "control_room_doors_closed" );
    common_scripts\utility::flag_wait( "keyboard_activated" );

    foreach ( var_4 in var_0 )
        var_4 rotateyaw( -85, 4 );

    foreach ( var_4 in var_1 )
        var_4 rotateyaw( 90, 4 );

    var_2 thread maps\_utility::play_sound_on_entity( "af_caves_escape_door_close" );
    var_2 connectpaths();
    var_2 delete();
    common_scripts\utility::flag_set( "control_room_door_opened" );
}

_id_C35F()
{
    common_scripts\utility::flag_wait( "control_room_explosion" );
    musicstop();
    var_0 = maps\_utility::musiclength( "mus_af_caves_controlroom" );
    common_scripts\utility::flag_wait( "control_room_cleared" );

    for (;;)
    {
        maps\_utility::musicplaywrapper( "mus_af_caves_controlroom" );
        wait( var_0 );
        maps\_utility::music_stop( 1 );
        wait 1.1;
    }
}

_id_C6B9()
{
    var_0 = getent( "trigger_breach_icon", "targetname" );
    var_0 common_scripts\utility::trigger_off();
    wait 2;
    var_1 = level.breach_doors[2];
    var_1 hide();
    var_2 = getent( "breach_solid", "targetname" );
    var_2 notsolid();
    var_2 connectpaths();
    var_3 = getent( "blast_door_slam", "targetname" );
    var_3.origin = var_1.origin;
    var_4 = var_3.angles;
    var_3.angles += ( 0, -74, 0 );
    common_scripts\utility::flag_wait( "player_approaching_breach" );
    var_5 = maps\_utility::spawn_targetname( "control_room_door_close_guy", 1 );
    var_5 maps\_utility::set_ignoreme( 1 );
    var_5 maps\_utility::set_ignoreall( 1 );
    var_5 thread maps\_utility::magic_bullet_shield();
    var_6 = getnode( "sheppard_door_peek", "targetname" );
    var_6 maps\_anim::anim_generic_reach( var_5, "alert2look_cornerR" );
    var_6 maps\_anim::anim_generic( var_5, "alert2look_cornerR" );
    common_scripts\utility::flag_set( "breach_door_closed" );
    var_3 rotateyaw( 74, 0.5 );
    var_3 thread common_scripts\utility::play_sound_in_space( "scn_afcaves_doorslam_brace", var_3.origin );
    var_2 solid();
    var_2 disconnectpaths();
    wait 0.66;
    var_3 hide();
    var_3 notsolid();
    var_1 show();
    common_scripts\utility::flag_set( "obj_breach_show" );
    wait 0.5;
    var_0 common_scripts\utility::trigger_on();

    if ( isdefined( var_5 ) )
    {
        var_5 maps\_utility::stop_magic_bullet_shield();
        var_5 delete();
    }
}

_id_BCC7()
{
    level waittill( "A door in breach group 1 has been activated." );
    level notify( "breach_activated" );
    common_scripts\utility::flag_set( "control_room_getting_breached" );
    wait 2.3;
    common_scripts\utility::flag_set( "control_room_explosion" );
    wait 0.7;
    common_scripts\utility::flag_set( "control_room_breached" );
}

_id_B861()
{
    self endon( "death" );
    self.dontevershoot = 1;
    level waittill( "A door in breach group 1 has been activated." );
    wait 12;
    self.dontevershoot = undefined;
}

cqb_timer_setup()
{
    level.digit_array_hundredths = cqb_timer_get_planes( "hundredths_plane" );
    level.digit_array_tenths = cqb_timer_get_planes( "tenths_plane" );
    level.digit_array_seconds = cqb_timer_get_planes( "seconds_plane" );
    level.digit_array_tens_of_seconds = cqb_timer_get_planes( "tens_of_seconds_plane" );
    level.timer_dots = getentarray( "timer_dot", "targetname" );
    level.large_tv = getentarray( "large_tv_img", "targetname" );

    foreach ( var_1 in level.digit_array_hundredths )
        digit_reset( var_1 );

    foreach ( var_4 in level.digit_array_tenths )
        digit_reset( var_4 );

    foreach ( var_7 in level.digit_array_seconds )
        digit_reset( var_7 );

    foreach ( var_10 in level.digit_array_tens_of_seconds )
        digit_reset( var_10 );

    foreach ( var_13 in level.timer_dots )
        var_13 hide();

    foreach ( var_16 in level.large_tv )
        var_16 hide();
}

digit_reset( var_0 )
{
    foreach ( var_2 in var_0 )
        var_2 hide();
}

cqb_timer_get_planes( var_0 )
{
    var_1 = [];
    var_2 = [];

    for ( var_3 = 0; var_3 <= 9; var_3++ )
    {
        var_1 = getentarray( var_0 + "_" + common_scripts\utility::tostring( var_3 ), "targetname" );

        foreach ( var_6, var_5 in var_1 )
            var_2[var_6][var_3] = var_5;
    }

    return var_2;
}

cqb_digit_reset( var_0, var_1 )
{
    foreach ( var_4, var_3 in var_0 )
    {
        if ( var_4 != var_1 )
        {
            var_3 hide();
            continue;
        }

        var_3 show();
    }
}

cqb_timer_think()
{
    level endon( "danger_close_last_missile_has_hit" );
    wait 0.1;
    level.start_time = gettime();

    foreach ( var_1 in level.digit_array_hundredths )
        cqb_digit_reset( var_1, 0 );

    foreach ( var_4 in level.digit_array_tenths )
        cqb_digit_reset( var_4, 3 );

    foreach ( var_7 in level.digit_array_seconds )
        cqb_digit_reset( var_7, 9 );

    foreach ( var_10 in level.digit_array_tens_of_seconds )
        cqb_digit_reset( var_10, 1 );

    foreach ( var_13 in level.timer_dots )
        var_13 show();

    foreach ( var_16 in level.large_tv )
        var_16 show();

    var_18 = 1;
    var_19 = 1;
    var_20 = 1;
    var_21 = 3;
    var_22 = 0;

    for (;;)
    {
        var_23 = 20 - ( gettime() - level.start_time ) * 0.001;
        var_24 = floor( var_23 );
        var_25 = int( ( var_23 - var_24 ) * 10 );
        var_26 = int( common_scripts\utility::mod( var_24, 10 ) );
        var_27 = int( floor( var_24 * 0.1 ) );
        var_22 = common_scripts\utility::ter_op( var_22 == 0, 5, 0 );

        if ( var_22 != var_18 )
        {
            var_18 = var_22;

            foreach ( var_29 in level.digit_array_hundredths )
                cqb_timer_change_digit_hundredths( var_22, var_29 );
        }

        if ( var_25 != var_19 )
        {
            var_19 = var_25;

            foreach ( var_32 in level.digit_array_tenths )
                cqb_timer_change_digit( var_25, var_32 );
        }

        if ( var_26 != var_20 )
        {
            var_20 = var_26;

            foreach ( var_35 in level.digit_array_seconds )
                cqb_timer_change_digit( var_26, var_35 );
        }

        if ( var_27 != var_21 )
        {
            var_21 = var_27;

            foreach ( var_38 in level.digit_array_tens_of_seconds )
                cqb_timer_change_digit( var_27, var_38 );
        }

        wait 0.05;
    }
}

cqb_timer_change_digit( var_0, var_1 )
{
    switch ( var_0 )
    {
        case 0:
            var_1[1] hide();
            var_1[0] show();
            break;
        case 1:
            var_1[2] hide();
            var_1[1] show();
            break;
        case 2:
            var_1[3] hide();
            var_1[2] show();
            break;
        case 3:
            var_1[4] hide();
            var_1[3] show();
            break;
        case 4:
            var_1[5] hide();
            var_1[4] show();
            break;
        case 5:
            var_1[6] hide();
            var_1[5] show();
            break;
        case 6:
            var_1[7] hide();
            var_1[6] show();
            break;
        case 7:
            var_1[8] hide();
            var_1[7] show();
            break;
        case 8:
            var_1[9] hide();
            var_1[8] show();
            break;
        case 9:
            var_1[0] hide();
            var_1[9] show();
            break;
    }
}

cqb_timer_change_digit_hundredths( var_0, var_1 )
{
    switch ( var_0 )
    {
        case 0:
            var_1[5] hide();
            var_1[0] show();
            break;
        case 5:
            var_1[0] hide();
            var_1[5] show();
            break;
    }
}

_id_D576()
{
    thread _id_AF33();
    thread _id_CF8F();
    thread _id_C961();
    thread _id_B7D7();
    thread _id_D46A();
    thread _id_CEEE();
    thread _id_D0FA();
    thread _id_B150();
    thread tower_destroyed();
}

_id_CEEE()
{
    common_scripts\utility::flag_wait( "tower_explosion" );
    var_0 = getent( "tower_trigger", "targetname" );
    var_0 notify( "trigger" );
}

tower_destroyed()
{
    var_0 = getent( "sniper_tower_clean", "targetname" );
    common_scripts\utility::flag_wait( "tower_explosion" );
    _func_31C( 1 );
    var_0 setmodel( "h2_cave_sniper_tower_destroyed" );
}

_id_CF8F()
{
    common_scripts\utility::flag_wait( "danger_close_dialogue_end" );
    wait 2;
    var_0 = getentarray( "airstrip_runners", "targetname" );
    maps\_utility::array_spawn( var_0, 1 );
    common_scripts\utility::flag_wait( "danger_close_last_missile_has_hit" );
    var_1 = getentarray( "ambient_airstrip", "targetname" );
    maps\_utility::array_spawn( var_1, 1 );
}

_id_C961()
{
    var_0 = getentarray( "camo_right_damaged", "targetname" );
    var_1 = getentarray( "camo_left_damaged", "targetname" );
    var_2 = getentarray( "camo_right_pristine", "targetname" );
    var_3 = getentarray( "camo_left_pristine", "targetname" );
    common_scripts\utility::flag_wait( "danger_close_last_missile_has_hit" );
    common_scripts\utility::array_thread( var_2, maps\_utility::hide_entity );
    common_scripts\utility::array_thread( var_3, maps\_utility::hide_entity );
    common_scripts\utility::array_thread( var_0, maps\_utility::show_entity );
    common_scripts\utility::array_thread( var_1, maps\_utility::show_entity );
}

h2_airstrip_player_explosion( var_0 )
{
    setsaveddvar( "hud_showStance", "0" );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "actionSlotsHide", 1 );
    level.player _meth_830F( 0 );
    level.player disableweapons( 1 );
    level.player setmovespeedscale( 0 );
    level.player enableinvulnerability();
    level.player freezecontrols( 1 );
    level.player setstance( "stand" );
    var_1 = common_scripts\utility::spawn_tag_origin();
    var_1.origin = level.player.origin;
    var_1.angles = var_0.angles;
    playfxontag( common_scripts\utility::getfx( "cave_explosion_exit" ), var_1, "tag_origin" );
    earthquake( 1, 1, level.player.origin, 100 );
    level notify( "player_invulnerable" );
    wait 0.25;
    var_2 = getgroundposition( level.player.origin, 2 );
    var_3 = maps\_utility::spawn_anim_model( "worldbody", var_2 );
    var_3.angles = var_0.angles;
    level.player playerlinktoabsolute( var_3, "tag_player" );
    var_4 = getent( "controlroom_explosion_light", "targetname" );
    var_3 _meth_848A( var_4.origin );
    thread animation_dof_explosion_knockout( var_3 );
    var_5 = getanimlength( var_3 maps\_utility::getanim( "explosion" ) );
    var_3 thread maps\_anim::anim_single_solo( var_3, "explosion" );
    common_scripts\utility::noself_delaycall( 0.5, ::playfxontag, common_scripts\utility::getfx( "player_cave_escape" ), var_3, "tag_origin" );
    wait( var_5 );
    level.player._id_C438 = var_3;
    var_1 delete();
    level.player setmovespeedscale( 0.2 );
}

animation_dof_explosion_knockout( var_0 )
{
    var_1 = _id_D397::_id_A97A( "Explosion Knock-out" );
    var_1 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 4.0, -1, 8, 8 ) _id_D397::_id_CCA7( var_0, "tag_dof" ) _id_D397::_id_AE01( 1 ) _id_D397::_id_AF9C();
    var_1 _id_D397::_id_BEA0( 1.25 ) _id_D397::_id_BF3F();
    var_1 _id_D397::_id_BEA0( 0.9 ) _id_D397::_id_B85E( 0.12, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.1 );
    var_1 _id_D397::_id_BEA0( 1.05 ) _id_D397::_id_B85E( 0.12, 1.0, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.8 );
    var_1 _id_D397::_id_BC26();
}

h2_airstrip_player_explosion_wake()
{
    level.player unlink();
    level.player setstance( "crouch" );
    var_0 = level.player._id_C438;
    maps\_anim::anim_first_frame_solo( var_0, "explosion_wake" );
    waittillframeend;
    level.player.origin = var_0 gettagorigin( "tag_player" );
    level.player.angles = var_0 gettagangles( "tag_player" );
    level.player playerlinktoabsolute( var_0, "tag_player" );
    waitframe();
    thread animation_dof_explosion_wake( var_0 );
    wait 2;
    maps\_anim::anim_single_solo( var_0, "explosion_wake" );
    level.player unlink();
    var_0 delete();
    level.player freezecontrols( 1 );
    level.player allowstand( 1 );
    level.player _meth_830F( 1 );
    level.player allowjump( 1 );
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
}

animation_dof_explosion_wake( var_0 )
{
    var_1 = _id_D397::_id_A97A( "Explosion Wake" );
    var_1 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 3.5, -1, 8, 8 ) _id_D397::_id_CCA7( var_0, "tag_dof" ) _id_D397::_id_AE01( 1 ) _id_D397::_id_AF9C();
    var_1 _id_D397::_id_BEA0( 15.0 ) _id_D397::_id_BF3F();
    var_1 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_AC9F( 40, 0.05, 0 );
    var_1 _id_D397::_id_BEA0( 0.1 ) _id_D397::_id_A9EC( 9.5, 0 );
    var_1 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_A970( ::setomnvar, undefined, "ui_consciousness_init", 1 ) _id_D397::_id_A970( ::setomnvar, undefined, "ui_consciousness_play", 1 ) _id_D397::_id_A970( ::setsaveddvar, undefined, "ui_consciousnessVignetteDarkness", 0.5 );
    var_1 _id_D397::_id_BEA0( 3.35 ) _id_D397::_id_B85E( 0.06, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.1 );
    var_1 _id_D397::_id_BEA0( 8.95 ) _id_D397::_id_B85E( 0.06, 1.0, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.5 );
    var_1 _id_D397::_id_BEA0( 10.4 ) _id_D397::_id_B85E( 0.08, 0.5, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.1 );
    var_1 _id_D397::_id_BC26();
}

_id_AF33()
{
    common_scripts\utility::flag_wait( "obj_escape_complete" );
    maps\_utility::battlechatter_off( "allies" );
    thread maps\_utility::battlechatter_off( "axis" );
    level.player playlocalsound( "af_caves_selfdestruct" );
    var_0 = getent( "cave_exit_playerview_01", "targetname" );
    h2_airstrip_player_explosion( var_0 );
    level.player nightvisiongogglesforceoff();
    soundscripts\_snd::snd_message( "start_escape_cave_collapse" );
    level.black_overlay = maps\_hud_util::create_client_overlay( "black", 1 );
    level.black_overlay.foreground = 0;
    common_scripts\utility::array_thread( level._id_D098, common_scripts\utility::pauseeffect );
    common_scripts\utility::array_thread( level._id_CAA2, common_scripts\utility::pauseeffect );
    level.price.ignorerandombulletdamage = 1;
    level.price maps\_utility::disable_pain();
    level.price.ignoreall = 1;
    level.price pushplayer( 1 );
    var_1 = maps\_utility::array_spawn( getentarray( "airstrip_danger_close_shooters", "targetname" ), 1 );
    common_scripts\utility::array_thread( var_1, ::_id_B9A8 );

    foreach ( var_3 in var_1 )
        var_3.cheat.ignorewolfthink = 1;

    common_scripts\utility::flag_set( "player_detonated_explosives" );
    var_5 = 17;
    level.player shellshock( "af_cave_collapse", var_5 );
    thread maps\_utility::autosave_now( 1 );
    level.player allowstand( 0 );
    level.player allowprone( 0 );
    level.player _meth_830F( 0 );
    level.player allowjump( 0 );
    level.player allowcrouch( 1 );
    setblur( 2, 0.1 );
    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "hud_showStance", "0" );
    thread _id_C3FB();
    var_6 = getentarray( "rock_rubble1", "targetname" );
    var_7 = getent( "rock_rubble1_col", "targetname" );
    var_7 solid();

    foreach ( var_9 in var_6 )
        var_9 show();

    var_7 disconnectpaths();
    level.price.moveplaybackrate = 0.5;
    setsaveddvar( "g_friendlyNameDist", 0 );
    var_11 = spawn( "script_origin", ( 9206.93, 5198.42, -3251.71 ) );
    var_12 = getent( "price_fighting_cave_exit", "targetname" );
    var_11 maps\_anim::anim_first_frame_solo( level.price, var_12.animation );
    wait 0.1;
    wait 2;
    var_11 thread h2_airstrip_player_explosion_wake();
    common_scripts\utility::flag_set( "danger_close_dialogue_start" );
    wait 1;
    soundscripts\_snd::snd_message( "end_first_blackout" );
    level.black_overlay fadeovertime( 2 );
    level.black_overlay.alpha = 0;
    wait 1;
    var_11 thread maps\_anim::anim_single_solo( level.price, var_12.animation );
    level.price maps\_utility::disable_ai_color();
    level.price maps\_utility::cqb_walk( "off" );
    level.price.neverenablecqb = 1;
    wait 2.5;
    setblur( 0.2, 1.5 );
    wait 1;
    setblur( 2, 1.5 );
    wait 1.5;
    setblur( 0.2, 1 );
    thread common_scripts\_exploder::exploder( "under_fire_2" );
    wait 1;
    thread common_scripts\_exploder::exploder( "under_fire" );
    setblur( 0, 0.5 );
    wait 2;
    setblur( 0, 2 );
    soundscripts\_snd::snd_message( "start_second_blackout" );
    wait 2;
    common_scripts\utility::flag_wait( "danger_close_dialogue_end" );
    wait 1.5;
    maps\_utility::flag_set_delayed( "price_falling_back", 0.1 );
    var_13 = getnode( "node_price_fallback", "targetname" );
    level.price setgoalnode( var_13 );
    level.price.goalradius = 32;
    wait 0.5;
    soundscripts\_snd::snd_message( "end_second_blackout" );
    wait 1;
    level.player freezecontrols( 0 );

    foreach ( var_3 in var_1 )
        var_3.cheat.ignorewolfthink = 0;

    thread _id_C17F();
    thread missile_lighting();
    wait 1;
    setsaveddvar( "ui_hidemap", 0 );
    setsaveddvar( "hud_showStance", "1" );
    setsaveddvar( "compass", "1" );
    wait 1;
    setsaveddvar( "g_friendlyNameDist", 15000 );
    level.price.moveplaybackrate = 1.0;
    level.player setmovespeedscale( 1 );
    soundscripts\_snd::snd_message( "end_escape_cave_collapse" );
    wait 3;
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "actionSlotsHide", 0 );
    level.player enableweapons();
    level.player disableinvulnerability();
    wait 3;
    level.price.ignorerandombulletdamage = 0;
    level.price maps\_utility::enable_pain();
    level.price.ignoreall = 0;
    level.price maps\_utility::cqb_walk( "off" );
    level.price.neverenablecqb = 1;
    level.price maps\_utility::enable_ai_color();
    level.price.fixednodesaferadius = 0;
    level.fixednodesaferadius_default = 0;
    triggersenable( "colornodes_backhalf_airstrip_start", "script_noteworthy", 1 );
    maps\_utility::activate_trigger_with_noteworthy( "colornodes_backhalf_airstrip_start" );
    triggersenable( "colornodes_backhalf_airstrip", "script_noteworthy", 1 );
    thread _id_D434( "littlebird_airstrip", "player_airstrip_start" );
    maps\_utility::delaythread( 1, maps\_vehicle::spawn_vehicle_from_targetname_and_drive, "blackhawk_airstrip" );
    common_scripts\utility::flag_wait( "player_airstrip_start" );
    level.price pushplayer( 0 );
    common_scripts\utility::flag_wait( "player_airstrip_midpoint" );
    thread maps\_utility::autosave_by_name( "airstrip_fight_start" );
    level.price.fixednodesaferadius = 1024;
    level.fixednodesaferadius_default = 1024;
    common_scripts\utility::flag_wait( "player_approaching_end_tent" );
    thread maps\_utility::autosave_by_name( "airstrip_fight_start" );
    common_scripts\utility::flag_wait( "player_entering_end_tent" );
    common_scripts\utility::flag_wait( "level_exit" );
    level.price.ignorerandombulletdamage = 1;
    level.price maps\_utility::disable_pain();
    level.price maps\_utility::set_ignoreme( 1 );
    level.price maps\_utility::set_ignoreall( 0 );
    soundscripts\_snd::snd_message( "start_end_black_screen" );
    level.player enableinvulnerability();
    level.player.ignoreme = 1;
    level.black_overlay fadeovertime( 3 );
    level.black_overlay.alpha = 1;
    level.price dialogue_execute( "afcaves_pri_rivernearby" );
    maps\_loadout_code::saveplayerweaponstatepersistent( "af_caves" );
    maps\_utility::nextmission();
}

_id_BACE()
{
    level.player freezecontrols( 1 );
}

_id_B9A8()
{
    self endon( "death" );
    self.grenadeammo = 0;

    while ( !common_scripts\utility::flag( "danger_close_last_missile_has_hit" ) )
    {
        self.goalradius = 32;
        wait 0.1;
    }

    common_scripts\utility::flag_wait( "danger_close_last_missile_has_hit" );

    if ( isdefined( self.magic_bullet_shield ) && self.magic_bullet_shield )
        maps\_utility::stop_magic_bullet_shield();

    self kill();
}

_id_CF3E()
{
    self endon( "death" );
    thread _id_A9BD();
    thread blackhawk_airstrip_collide_with_tower();
    common_scripts\utility::flag_set( "unload_airstrip_blackhawk_dudes" );
    self waittill( "unloaded" );
    var_0 = common_scripts\utility::getstruct( "blackhawk_airstrip_heli_depart", "targetname" );
    thread maps\_vehicle::vehicle_paths( var_0 );
    self vehicle_setspeed( 50 );
    self waittill( "reached_dynamic_path_end" );
    self delete();
}

_id_A9BD()
{
    self endon( "death" );
    var_0 = getentarray( "blackhawk_crash_loc", "script_noteworthy" );

    for (;;)
    {
        self.perferred_crash_location = common_scripts\utility::getclosest( self.origin, var_0 );
        wait 1;
    }
}

blackhawk_airstrip_collide_with_tower()
{
    self endon( "crash_done" );
    self waittill( "deathspin" );
    var_0 = getent( "tower_script_origin", "targetname" );
    var_1 = getent( "tower_trigger", "targetname" );

    while ( !common_scripts\utility::flag( "tower_explosion" ) )
    {
        if ( distancesquared( self.origin, var_0.origin ) <= 90000 )
        {
            var_1 notify( "trigger" );
            common_scripts\utility::flag_set( "tower_explosion" );
            return;
        }

        waitframe();
    }
}

_id_BF98()
{
    self endon( "death" );
    self.ignoreme = 1;
    self.ignoreall = 1;
    common_scripts\utility::flag_wait( "danger_close_last_missile_has_hit" );
    self dodamage( self.health + 1000, self.origin );
}

_id_C6F1()
{
    self endon( "death" );
    self.enablerocketdeath = 1;
    self waittill( "unloaded" );
    self vehicle_setspeed( 10 );
    thread maps\_utility::vehicle_liftoff( 32 );
    wait 2;
    self vehicle_setspeed( 50 );
    var_0 = common_scripts\utility::getstruct( "airstrip_littlebird_01_depart", "targetname" );
    thread maps\_vehicle::vehicle_paths( var_0 );
    self waittill( "reached_dynamic_path_end" );
    self delete();
}

_id_D219()
{
    self endon( "death" );
    maps\_utility::cqb_walk( "on" );
    self.ignoreme = 1;
    self waittill( "jumpedout" );
    self.ignoreme = 0;
}

_id_D59C()
{
    self endon( "death" );
    maps\_utility::cqb_walk( "on" );
    self.ignoreme = 1;
    self waittill( "jumpedout" );
    self.ignoreme = 0;
}

_id_C17F()
{
    var_0 = getentarray( "missileOrgs", "targetname" );
    var_0 = common_scripts\utility::get_array_of_farthest( level.player.origin, var_0 );
    var_1 = undefined;
    var_2 = 0;

    foreach ( var_4 in var_0 )
    {
        var_2++;
        var_5 = getent( var_4.target, "targetname" );
        var_6 = magicbullet( "hellfire_missile_af_caves_end", var_4.origin, var_5.origin );
        var_6 thread maps\_utility::play_sound_on_entity( "scn_afcaves_incoming" );

        if ( var_2 == var_0.size )
            var_1 = 1;

        var_6 thread _id_AB86( var_1 );
        wait 0.2;
    }

    wait 2;
    common_scripts\utility::flag_set( "start_airstrip_aftermath_fx" );
    wait 2;
    common_scripts\utility::flag_set( "danger_close_moment_over" );
}

_id_AB86( var_0 )
{
    var_1 = spawn( "script_origin", self.origin );
    var_1 linkto( self );
    self waittill( "death" );

    if ( isdefined( var_0 ) )
    {
        common_scripts\utility::flag_set( "danger_close_last_missile_has_hit" );
        var_1 thread common_scripts\utility::play_sound_in_space( "exp_javelin_armor_destroy" );
        earthquake( 0.5, 1.5, level.player.origin, 5000 );
        thread common_scripts\_exploder::exploder( "rpg_damage" );
        radiusdamage( var_1.origin, 512, 1000, 1000 );
    }
    else
        earthquake( 0.2, 2.5, level.player.origin, 5000 );

    level.player playrumblelooponentity( "damage_heavy" );
    wait 0.05;
    var_1 delete();

    if ( isdefined( var_0 ) )
    {
        setblur( 3, 0.1 );
        wait 1;
        setblur( 0, 3 );
    }
}

missile_lighting()
{
    wait 0.5;
    maps\af_caves_lighting::_id_C7A6( "af_caves_explosion" );
    wait 0.2;
    maps\af_caves_lighting::_id_C7A6( "af_caves_outdoors_explosion_airstrip" );
    wait 0.2;
    maps\af_caves_lighting::_id_C7A6( "af_caves_explosion" );
    wait 0.1;
    maps\af_caves_lighting::_id_C7A6( "af_caves_outdoors_explosion_airstrip" );
    wait 0.1;
    maps\af_caves_lighting::_id_C7A6( "af_caves_explosion" );
    wait 0.1;
    maps\af_caves_lighting::_id_C7A6( "af_caves_outdoors_explosion_airstrip" );
    wait 0.1;
    maps\af_caves_lighting::_id_C7A6( "af_caves_explosion" );
    wait 0.2;
    maps\af_caves_lighting::_id_C7A6( "af_caves_outdoors_explosion_airstrip" );
    wait 0.2;
    maps\af_caves_lighting::_id_C7A6( "af_caves_explosion" );
    wait 0.3;
    maps\af_caves_lighting::_id_C7A6( "af_caves_outdoors_airstrip" );
}

_id_B7D7()
{
    common_scripts\utility::flag_wait( "obj_escape_complete" );
    common_scripts\utility::flag_wait( "danger_close_dialogue_start" );
    maps\_utility::radio_dialogue( "afcaves_shp_dangerclose" );
    maps\_utility::radio_dialogue( "afcaves_schq_100meters" );
    common_scripts\utility::flag_set( "danger_close_dialogue_end" );
    maps\_utility::radio_dialogue( "afcaves_shp_sendit" );
    thread maps\_utility::radio_dialogue( "afcaves_schq_firemissionclose" );
    common_scripts\utility::flag_wait( "price_falling_back" );
    level.price thread dialogue_execute( "afcaves_pri_fallback2" );
    common_scripts\utility::flag_wait( "danger_close_moment_over" );
    level.price dialogue_execute( "afcaves_pri_sincewhen" );
    thread maps\_utility::autosave_by_name( "airstrip_fight_start" );
    wait 1.5;
    common_scripts\utility::flag_set( "obj_level_end_given" );
    level.price dialogue_execute( "afcaves_pri_stayclose" );
    maps\_utility::battlechatter_on( "allies" );
    level.price maps\_utility::set_battlechatter( 1 );
    wait 2;

    if ( !common_scripts\utility::flag( "player_airstrip_start" ) )
        level.price thread dialogue_execute( "afcaves_pri_tothewest" );

    common_scripts\utility::flag_wait( "player_airstrip_start" );
    maps\_utility::radio_dialogue( "afcaves_schq_riskyforflightops" );
    maps\_utility::radio_dialogue( "afcaves_shp_takezodiacs" );
    maps\_utility::radio_dialogue( "afcaves_schq_yessir2" );
    maps\_utility::battlechatter_on( "axis" );
    common_scripts\utility::flag_wait( "player_airstrip_midpoint" );
    common_scripts\utility::flag_wait( "player_entering_end_tent" );
    level.price dialogue_execute( "afcaves_pri_gettingaway2" );
    wait 10;

    if ( !common_scripts\utility::flag( "level_exit" ) )
        level.price dialogue_execute( "afcaves_pri_followmeletsgo" );
}

_id_D0FA()
{

}

_id_D46A()
{
    var_0 = getent( "tower_trigger", "targetname" );
    var_0 waittill( "trigger" );
    radiusdamage( var_0.origin, 256, 1000, 900 );
    earthquake( 0.2, 1, level.player.origin, 1024 );
    level.player playrumblelooponentity( "damage_light" );
    var_0 thread common_scripts\utility::play_sound_in_space( "explo_wood_tower", var_0.origin );
    var_1 = getent( "tower_victims", "targetname" );
    var_2 = getent( "tower_mg", "script_noteworthy" );
    var_3 = var_2 getturretowner();

    if ( isalive( var_3 ) )
        var_3 notify( "stop_using_built_in_burst_fire" );

    var_2 hide();
    var_1 = getent( "tower_victims", "targetname" );
    common_scripts\utility::array_thread( getcorpsearray(), maps\af_caves_code::_id_B714, var_1 );
}

_id_B866()
{
    self endon( "death" );

    for (;;)
    {
        playfxontag( common_scripts\utility::getfx( "littlebird_fire_trail" ), self, "tag_deathfx" );
        wait 0.1;
    }
}

_id_C3FB()
{
    var_0 = maps\_vehicle::spawn_vehicle_from_targetname_and_drive( "littlebird_crasher" );
    var_0.perferred_crash_location = getent( "airstip_crash", "script_noteworthy" );
    var_0 setlookatent( level.player );
    var_0 maps\_vehicle::godon();
    common_scripts\utility::flag_wait( "danger_close_moment_over" );
    var_0 thread _id_B866();
    wait 2.5;
    var_0 maps\_vehicle::godoff();
    var_0 notify( "death" );
    var_0 clearlookatent();
    var_0 waittill( "crash_done" );
    common_scripts\_exploder::exploder( "helicrash_01" );
    earthquake( 0.3, 1, level.player.origin, 1024 );
    level.player playrumblelooponentity( "damage_light" );
    var_1 = getentarray( "netting_pristine", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 hide();

    var_5 = getentarray( "netting_destroyed", "targetname" );

    foreach ( var_7 in var_5 )
        var_7 show();

    common_scripts\utility::flag_wait( "player_approaching_end_tent" );
}

_id_BB6D()
{
    common_scripts\utility::flag_wait( "shephered_ledge_dialogue_starting" );
    var_0 = 2;
    objective_add( var_0, "active", &"AF_CAVES_OBJ_LEDGE_TRAVERSE" );
    objective_current( var_0 );
    objective_onentity( var_0, level.price, ( 0, 0, 70 ) );
    common_scripts\utility::flag_wait( "player_ledge_stairs_01" );
    objective_position( var_0, ( 0, 0, 0 ) );
    var_1 = getent( "obj_ledge_gunners", "targetname" );
    objective_position( var_0, var_1.origin );
    common_scripts\utility::flag_wait( "player_ledge_end" );
    objective_position( var_0, ( 0, 0, 0 ) );
    objective_onentity( var_0, level.price, ( 0, 0, 70 ) );
    objective_state_nomessage( var_0, "done" );
    common_scripts\utility::flag_set( "obj_ledge_traverse_complete" );
}

_id_B75F()
{
    common_scripts\utility::flag_wait( "obj_ledge_traverse_complete" );
    var_0 = 0;
    objective_state( var_0, "current" );
    objective_onentity( var_0, level.price, ( 0, 0, 70 ) );
    common_scripts\utility::flag_wait( "player_inside_overlook" );
    objective_state_nomessage( var_0, "done" );
    common_scripts\utility::flag_wait( "player_inside_overlook" );
    var_0 = 3;
    objective_add( var_0, "current", &"AF_CAVES_OBJ_FLANK_AND_KILL" );
    objective_onentity( var_0, level.price, ( 0, 0, 70 ) );
    common_scripts\utility::flag_wait_any( "price_has_given_flank_hint", "obj_overlook_to_skylight_complete" );
    objective_position( var_0, ( 0, 0, 0 ) );
    var_1 = getent( "obj_flank_skylight_01", "targetname" );
    objective_position( var_0, var_1.origin );
    common_scripts\utility::flag_wait_any( "player_going_around_skylight_flank", "player_on_other_side_skylight", "obj_overlook_to_skylight_complete" );
    var_1 = getent( "obj_flank_skylight_02", "targetname" );
    objective_position( var_0, var_1.origin );
    common_scripts\utility::flag_wait_any( "skylight_dudes_dead", "player_right_near_breach", "obj_overlook_to_skylight_complete" );
    objective_state_nomessage( var_0, "done" );

    if ( !common_scripts\utility::flag( "obj_overlook_to_skylight_complete" ) )
        common_scripts\utility::flag_set( "obj_overlook_to_skylight_complete" );
}

_id_B247()
{
    common_scripts\utility::flag_wait( "obj_breach_given" );
    var_0 = 4;
    objective_add( var_0, "active", &"AF_CAVES_OBJ_BREACH", ( 0, 0, 0 ) );
    var_1 = getent( "obj_flank_skylight_03", "targetname" );
    objective_position( var_0, var_1.origin );
    objective_state( var_0, "current" );
    common_scripts\utility::flag_wait( "obj_breach_show" );
    var_2 = getentarray( "obj_breach", "targetname" );
    maps\_slowmo_breach::assign_script_breachgroup_to_ents( var_2 );
    var_3 = maps\_slowmo_breach::get_breach_indices_from_ents( var_2 );
    maps\_slowmo_breach::objective_breach( var_0, var_3[0], var_3[1], var_3[2], var_3[3] );
    objective_current( var_0 );
    common_scripts\utility::flag_wait( "control_room_breached" );
    maps\_utility::objective_clearadditionalpositions( var_0 );
    common_scripts\utility::flag_wait( "control_room_cleared" );
    objective_state( var_0, "done" );
    common_scripts\utility::flag_set( "obj_breach_complete" );
}

_id_C61E()
{
    common_scripts\utility::flag_wait( "obj_door_controls_given" );
    var_0 = 6;
    var_1 = getent( "keyboard", "targetname" );
    objective_add( var_0, "active", &"AF_CAVES_OBJ_DOOR_CONTROLS", var_1.origin );
    objective_current( var_0 );
    _func_1E7( var_0, 1 );
    objective_setpointertextoverride( var_0, &"AF_CAVES_OVERRIDE" );
    common_scripts\utility::flag_wait( "control_room_door_opened" );
    objective_state_nomessage( var_0, "done" );
    var_0 = 5;
    objective_string( var_0, &"AF_CAVES_OBJ_ESCAPE" );
    objective_state( var_0, "current" );
    common_scripts\utility::flag_set( "obj_door_controls_complete" );
}

obj_escape()
{
    common_scripts\utility::flag_wait( "obj_escape_given" );
    var_0 = 5;
    objective_add( var_0, "invisible", &"AF_CAVES_OBJ_ESCAPE" );
    objective_state_nomessage( var_0, "current" );
    objective_onentity( var_0, level.price, ( 0, 0, 70 ) );
    common_scripts\utility::flag_wait( "player_escaped" );
    objective_position( var_0, ( 0, 0, 0 ) );
    objective_state_nomessage( var_0, "done" );
    common_scripts\utility::flag_set( "obj_escape_complete" );
}

_id_B150()
{
    common_scripts\utility::flag_wait( "obj_level_end_given" );
    var_0 = 6;
    objective_add( var_0, "active", &"AF_CAVES_FOLLOW_PRICE" );
    objective_current( var_0 );
    objective_onentity( var_0, level.price, ( 0, 0, 70 ) );
    common_scripts\utility::flag_wait( "level_exit" );
    common_scripts\utility::flag_set( "obj_level_end_complete" );
}

_id_B519()
{
    common_scripts\utility::flag_wait( "obj_laatpv_given" );
    common_scripts\utility::flag_wait( "obj_laatpv_complete" );
}

_id_C41B()
{
    common_scripts\utility::flag_wait( "obj_laatpv_gunner_given" );
    common_scripts\utility::flag_wait( "obj_laatpv_gunner_complete" );
}

_id_BADE()
{
    level.scr_radio["afcaves_schq_catwalk"] = "afcaves_schq_catwalk";
    level.scr_radio["afcaves_sc4_uavonline"] = "afcaves_sc4_uavonline";
    level.scr_radio["afcaves_pri_pickupriotsheild"] = "afcaves_pri_pickupriotsheild";
    level.scr_radio["afcaves_pri_takepoint2"] = "afcaves_pri_takepoint2";
    level.scr_radio["afcaves_sc4_gettingthis"] = "afcaves_sc4_gettingthis";
    level.scr_radio["afcaves_schq_facialrecog"] = "afcaves_schq_facialrecog";
    level.scr_radio["afcaves_shp_burntherest"] = "afcaves_shp_burntherest";
    level.scr_radio["afcaves_shp_shepout"] = "afcaves_shp_shepout";
    level.scr_radio["catwalk_enemy_chatter_00"] = "afcaves_sc5_50meters";
    level.scr_radio["catwalk_enemy_chatter_01"] = "afcaves_schq_prejudice";
    level.scr_radio["catwalk_enemy_chatter_02"] = "afcaves_schq_2enemies";
    level.scr_radio["riotsheildmove_00"] = "afcaves_pri_moveup";
    level.scr_radio["riotsheildmove_01"] = "afcaves_pri_takepointdraw";
    level.scr_radio["crouchriotsheild_00"] = "afcaves_pri_staylow";
    level.scr_radio["crouchriotsheild_01"] = "afcaves_pri_keeplow";
    level.scr_radio["crouchriotsheild_02"] = "afcaves_pri_crouchdown";
    level.scr_radio["switchriotsheild_00"] = "afcaves_pri_switchtosheild";
    level.scr_radio["switchriotsheild_01"] = "afcaves_pri_bringup";
    level.scr_radio["switchriotsheild_02"] = "afcaves_pri_giveuscover";
    level.scr_radio["pickupriotsheild_00"] = "afcaves_pri_pickupriotsheild2";
    level.scr_radio["pickupriotsheild_01"] = "afcaves_pri_pickupriotsheild3";
    level.scr_radio["pickupriotsheild_02"] = "afcaves_pri_grabasheild";
    level.scr_radio["riot_killfirm_final"] = "afcaves_pri_wereclearmove";
    level.scr_radio["riot_killfirm_00"] = "afcaves_pri_goodnight2";
    level.scr_radio["riot_killfirm_01"] = "afcaves_pri_hesdown2";
    level.scr_radio["riot_killfirm_02"] = "afcaves_pri_gotem";
    level.scr_radio["riot_killfirm_03"] = "afcaves_pri_gotone2";
    level.scr_radio["afcaves_schq_escourtgoldeagle"] = "afcaves_schq_escourtgoldeagle";
    level.scr_radio["afcaves_pri_mustbeshepherd"] = "afcaves_pri_mustbeshepherd";
    level.scr_radio["afcaves_sc5_rapellingin"] = "afcaves_sc5_rapellingin";
    level.scr_sound["price"]["afcaves_pri_trytoflank"] = "afcaves_pri_trytoflank";
    level.scr_sound["price"]["afcaves_pri_sheildsuseflash"] = "afcaves_pri_sheildsuseflash";
    level.scr_sound["price"]["afcaves_pri_hitfromsides"] = "afcaves_pri_hitfromsides";
    level.scr_sound["price"]["afcaves_pri_sheildsthrowfrags"] = "afcaves_pri_sheildsthrowfrags";
    level.scr_sound["price"]["afcaves_pri_flankandhitsides"] = "afcaves_pri_flankandhitsides";
    level.scr_radio["afcaves_sc6_severeddet"] = "afcaves_sc6_severeddet";
    level.scr_radio["afcaves_schq_chargeshot"] = "afcaves_schq_chargeshot";
    level.scr_sound["price"]["breach_nag_00"] = "afcaves_pri_getframecharge";
    level.scr_sound["price"]["breach_nag_01"] = "afcaves_pri_breachthedoor";
    level.scr_sound["price"]["breach_nag_02"] = "afcaves_pri_blowthedoor";
    level.scr_sound["price"]["breach_nag_03"] = "afcaves_pri_chargedoit";
    level.scr_sound["price"]["afcaves_pri_drawfire"] = "afcaves_pri_drawfire";
    level.scr_sound["price"]["afcaves_pri_moveright"] = "afcaves_pri_moveright";
    level.scr_sound["price"]["afcaves_pri_usingthermal"] = "afcaves_pri_usingthermal";
    level.scr_sound["price"]["afcaves_pri_switchingtotherm"] = "afcaves_pri_switchingtotherm";
    level.scr_sound["price"]["afcaves_pri_eyesup"] = "afcaves_pri_eyesup";
    level.scr_sound["price"]["afcaves_pri_dooropen"] = "afcaves_pri_dooropen";
    level.scr_sound["price"]["afcaves_pri_overridecontrol"] = "afcaves_pri_overridecontrol";
    level.scr_sound["price"]["afcaves_pri_getdooropen"] = "afcaves_pri_getdooropen";
    level.scr_sound["price"]["afcaves_pri_usekeyboard"] = "afcaves_pri_usekeyboard";
    level.scr_sound["price"]["afcaves_pri_openthedoor"] = "afcaves_pri_openthedoor";
    level.scr_sound["price"]["afcaves_pri_comeoncomeon"] = "afcaves_pri_comeoncomeon";
    level.scr_radio["afcaves_shp_sitecompromised"] = "afcaves_shp_sitecompromised";
    level.scr_radio["afcaves_shp_directive116"] = "afcaves_shp_directive116";
    level.scr_sound["price"]["afcaves_pri_run"] = "afcaves_pri_run";
    level.scr_sound["price"]["afcaves_pri_gonnablow"] = "afcaves_pri_gonnablow";
    level.scr_radio["afcaves_schq_riskyforflightops"] = "afcaves_schq_riskyforflightops";
    level.scr_radio["afcaves_shp_takezodiacs"] = "afcaves_shp_takezodiacs";
    level.scr_radio["afcaves_schq_yessir2"] = "afcaves_schq_yessir2";
    level.scr_sound["price"]["afcaves_pri_gettingaway2"] = "afcaves_pri_gettingaway2";
    level.scr_sound["price"]["afcaves_pri_rivernearby"] = "afcaves_pri_rivernearby";
    level.scr_sound["price"]["afcaves_pri_stayclose"] = "afcaves_pri_stayclose";
    level.scr_sound["price"]["afcaves_pri_headforlatvee"] = "afcaves_pri_headforlatvee";
    level.scr_sound["price"]["afcaves_pri_followmeletsgo"] = "afcaves_pri_followmeletsgo";
    level.scr_sound["price"]["afcaves_pri_tothewest"] = "afcaves_pri_tothewest";
    level.scr_sound["price"]["afcaves_pri_cometome"] = "afcaves_pri_cometome";
    level.scr_sound["price"]["afcaves_pri_towerahead"] = "afcaves_pri_towerahead";
    level.scr_sound["price"]["afcaves_pri_forwardtotower"] = "afcaves_pri_forwardtotower";
    level.scr_sound["price"]["afcaves_pri_movewesttower"] = "afcaves_pri_movewesttower";
    level.scr_sound["price"]["afcaves_pri_targetswest"] = "afcaves_pri_targetswest";
    level.scr_sound["price"]["afcaves_pri_sniperfromtower"] = "afcaves_pri_sniperfromtower";
    level.scr_radio["afcaves_shp_dangerclose"] = "afcaves_shp_dangerclose";
    level.scr_radio["afcaves_schq_100meters"] = "afcaves_schq_100meters";
    level.scr_radio["afcaves_shp_sendit"] = "afcaves_shp_sendit";
    level.scr_radio["afcaves_schq_firemissionclose"] = "afcaves_schq_firemissionclose";
    level.scr_sound["price"]["afcaves_pri_fallback2"] = "afcaves_pri_fallback2";
    level.scr_sound["price"]["afcaves_pri_sincewhen"] = "afcaves_pri_sincewhen";
}

_id_D1D9()
{
    self endon( "death" );
    maps\_riotshield::riotshield_sprint_on();
    wait( randomfloatrange( 2.8, 3.2 ) );
    maps\_riotshield::riotshield_sprint_off();
}

_id_B90C()
{
    switch ( self.vehicletype )
    {
        case "zodiac_physics":
        case "zodiac":
            thread _id_AAF8();
            break;
        case "littlebird":
            thread _id_BB07();
            break;
    }
}

_id_AAF8()
{
    playfxontag( common_scripts\utility::getfx( "zodiac_wake_geotrail_oilrig" ), self, "tag_origin" );
}

_id_BB07()
{
    self endon( "death" );

    if ( self.classname == "script_vehicle_littlebird_armed" )
    {
        thread vehicle_scripts\_attack_heli::heli_default_missiles_on();
        waittillframeend;

        foreach ( var_1 in self.mgturret )
        {
            var_1 setmode( "manual" );
            var_1 stopfiring();
        }
    }
}

triggersenable( var_0, var_1, var_2 )
{
    var_3 = getentarray( var_0, var_1 );

    if ( var_2 == 1 )
        common_scripts\utility::array_thread( var_3, common_scripts\utility::trigger_on );
    else
        common_scripts\utility::array_thread( var_3, common_scripts\utility::trigger_off );
}

dialogue_execute( var_0 )
{
    self endon( "death" );
    maps\_utility::dialogue_queue( var_0 );
}

_id_B81E( var_0 )
{
    _id_CEAE( var_0, 3 );
}

_id_B155( var_0 )
{
    _id_CEAE( var_0, 1.5 );
}

_id_CEAE( var_0, var_1 )
{
    var_2 = 0.5;
    level endon( "clearing_hints" );

    if ( isdefined( level._id_BED3 ) )
        level._id_BED3 maps\_hud_util::destroyelem();

    level._id_BED3 = maps\_hud_util::createfontstring( "default", 1.5 );
    level._id_BED3 maps\_hud_util::setpoint( "BOTTOM", undefined, 0, -60 );
    level._id_BED3.color = ( 1, 1, 1 );
    level._id_BED3 settext( var_0 );
    level._id_BED3.alpha = 0;
    level._id_BED3 fadeovertime( 0.5 );
    level._id_BED3.alpha = 1;
    level._id_BED3.sort = 2;
    wait 0.5;
    level._id_BED3 endon( "death" );

    if ( isdefined( var_1 ) )
        wait( var_1 );
    else
        return;

    level._id_BED3 fadeovertime( var_2 );
    level._id_BED3.alpha = 0;
    wait( var_2 );
    level._id_BED3 maps\_hud_util::destroyelem();
}

_id_AB23()
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );
    self cleargoalvolume();
    self endon( "stop_seeking" );

    if ( self.code_classname == "actor_enemy_riotshield" )
        thread _id_D1D9();

    var_0 = distance( self.origin, level.player.origin );

    while ( isalive( self ) )
    {
        wait 1;
        self.goalradius = var_0;
        self setgoalentity( level.player );
        var_0 -= 175;

        if ( var_0 < 512 )
        {
            var_0 = 512;
            return;
        }
    }
}

_id_C291( var_0, var_1 )
{
    level endon( var_1 );

    for (;;)
    {
        var_2 = undefined;

        foreach ( var_4 in var_0 )
        {
            playfx( common_scripts\utility::getfx( "smokescreen" ), var_4.origin );
            var_4 thread common_scripts\utility::play_sound_in_space( "smokegrenade_explode_default" );
            wait( randomfloatrange( 0.1, 0.3 ) );
        }

        wait 28;

        if ( common_scripts\utility::flag( var_1 ) )
            break;
    }
}

_id_D448( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );
    var_2 = undefined;
    var_3 = [];
    var_4 = [];

    foreach ( var_6 in var_1 )
    {
        if ( var_6.code_classname == "script_brushmodel" )
        {
            var_4[var_4.size] = var_6;

            if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "blocker" )
                var_7 = var_6;

            continue;
        }

        if ( var_6.code_classname == "script_model" )
        {
            var_3[var_3.size] = var_6;
            continue;
        }
    }

    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2.origin = var_4[0].origin;
    var_2.angles = var_4[0].angles;

    foreach ( var_10 in var_3 )
        var_10 linkto( var_2 );

    foreach ( var_13 in var_4 )
        var_13 linkto( var_2 );

    var_15 = var_2;
    return var_15;
}

_id_B611( var_0 )
{
    level endon( "obj_escape_complete" );
    level endon( "kill_timer" );
    thread _id_A80D();
    wait( var_0 );
    level thread _id_A831();
}

_id_A80D()
{
    level endon( "obj_escape_complete" );
    level endon( "kill_timer" );

    for (;;)
    {
        wait 1;
        level.player thread maps\_utility::play_sound_on_entity( "countdown_beep" );
    }
}

_id_A831()
{
    level.player endon( "death" );
    level endon( "kill_timer" );
    level notify( "mission failed" );
    musicstop( 1 );
    level.player playlocalsound( "af_caves_selfdestruct" );
    playfx( common_scripts\utility::getfx( "player_death_explosion" ), level.player.origin );
    earthquake( 1, 1, level.player.origin, 100 );
    level.player kill();
    setdvar( "ui_deadquote", &"AF_CAVES_RAN_OUT_OF_TIME" );
    level notify( "mission failed" );
    maps\_utility::missionfailedwrapper();
    level notify( "kill_timer" );
}

_id_D3D8()
{
    level notify( "kill_timer" );
}

_id_BD27()
{

}

_id_B353()
{

}

_id_D434( var_0, var_1 )
{
    common_scripts\utility::flag_wait( var_1 );
    maps\_vehicle::spawn_vehicles_from_targetname_and_drive( var_0 );
}

_id_D355()
{
    self endon( "death" );
    self.health = 1;
    self.ignoreall = 1;
    self.diequietly = 1;
    maps\_utility::disable_pain();
    maps\_utility::set_allowdeath( 1 );
    maps\_utility::gun_remove();
    thread _id_C1E7();
    var_0 = self.spawner;
    var_1 = self.spawner.animation;
    self.deathanim = level.scr_anim["generic"][var_1 + "_death"];
    self._id_C8BF = [];
    self._id_C10D = [];

    if ( isdefined( self.script_flag ) )
    {
        var_0 maps\_anim::anim_generic_first_frame( self, var_1 );
        common_scripts\utility::flag_wait( self.script_flag );
    }

    var_2 = undefined;
    var_3 = undefined;

    switch ( var_1 )
    {
        case "civilian_leaning_death":
            self playsound( "scn_afcaves_leaning_death_npc_foley" );
            break;
        case "hunted_dazed_walk_B_blind":
            self playsound( "scn_afcaves_walk_b_blind_npc_foley" );
            self._id_C8BF[0] = "tag_origin";
            var_3 = 2;
            break;
        case "hunted_dazed_walk_C_limp":
            self playsound( "scn_afcaves_walk_c_limp_npc_foley" );
            var_3 = 4;
            var_2 = 0.7;
            self._id_C8BF[0] = "tag_origin";
            break;
        case "civilian_crawl_2":
            self playsound( "scn_afcaves_civilian_crawl_2_npc_foley" );
            var_2 = 0.5;
            self._id_C8BF[0] = "tag_bipod";
            self._id_C10D[0] = "tag_shield_back";
            self.a.pose = "prone";
            break;
        case "civilian_crawl_1":
            self playsound( "scn_afcaves_civilian_crawl_1_npc_foley" );
            self._id_C8BF[0] = "tag_origin";
            self._id_C10D[0] = "tag_shield_back";
            self.a.pose = "prone";
            break;
    }

    if ( self._id_C8BF.size )
        thread _id_B627( self._id_C8BF, "smoke" );

    if ( self._id_C10D.size )
        thread _id_B627( self._id_C10D, "fire" );

    if ( isdefined( var_2 ) )
    {
        var_0 thread maps\_anim::anim_generic_custom_animmode( self, "gravity", var_1 );
        wait 0.1;
        self setanim( level.scr_anim["generic"][var_1], 1, 0.2, var_2 );
        var_4 = getanimlength( level.scr_anim["generic"][var_1] );

        if ( !isdefined( var_3 ) )
            var_3 = 3;

        wait( var_4 * var_3 );
    }
    else
    {
        var_0 maps\_anim::anim_generic_custom_animmode( self, "gravity", var_1 );

        if ( isdefined( var_3 ) )
            maps\_anim::anim_generic_custom_animmode( self, "gravity", var_1 );
    }

    switch ( var_1 )
    {
        case "civilian_leaning_death":
            self.a.nodeath = 1;
            break;
    }

    self.deathanim = undefined;
    maps\_utility::anim_stopanimscripted();
    self.skipdeathanim = 1;

    if ( isdefined( self.magic_bullet_shield ) && self.magic_bullet_shield )
        maps\_utility::stop_magic_bullet_shield();

    self kill();
}

_id_B627( var_0, var_1 )
{
    if ( getdvar( "caves_fire" ) == "0" )
        return;

    self endon( "death" );
    var_2 = undefined;

    if ( var_1 == "fire" )
        var_2 = common_scripts\utility::getfx( "body_fire_01" );
    else if ( var_1 == "smoke" )
        var_2 = common_scripts\utility::getfx( "body_smoke_01" );

    foreach ( var_4 in var_0 )
        thread _id_C466( var_2, var_4, var_1 );
}

_id_C466( var_0, var_1, var_2 )
{
    var_3 = 0;

    if ( var_2 == "smoke" )
        var_3 = 3;

    thread after_death_vfx( var_0, var_1, var_3 );
    self endon( "death" );

    for (;;)
    {
        wait( var_3 );
        playfxontag( var_0, self, var_1 );
        wait 0.2;
        stopfxontag( var_0, self, var_1 );
    }
}

_id_C1E7()
{
    self endon( "death" );
    self.ignoreme = 1;
}

_id_C595()
{
    level.player takeweapon( level.primaryweapon );
    level.player takeweapon( level.secondaryweapon );
    level.player giveweapon( "masada_digital_eotech" );
    level.player giveweapon( "deserteagle" );
    level.player switchtoweapon( "masada_digital_eotech" );
}

debug()
{
    wait 0.2;
    var_0 = getent( "airstrip_player", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    wait 1;
    var_1 = getentarray( "ambient_airstrip", "targetname" );
    maps\_utility::array_spawn( var_1, 1 );
}

_id_C4EE()
{
    var_0 = getentarray( "c4_barrel", "targetname" );
    common_scripts\utility::array_thread( var_0, ::_id_C7B4 );
}

_id_C7B4()
{
    level endon( "mission failed" );
    level endon( "missionfailed" );
    level endon( "player_detonated_explosives" );
    level endon( "pre_explosion_happening" );
    level endon( "player_touching_cave_exit" );
    level endon( "player_escaped" );
    level endon( "player_invulnerable" );
    var_0 = self;
    var_0 setcandamage( 1 );
    var_0._id_B8FD = undefined;

    switch ( level.gameskill )
    {
        case 0:
            var_0._id_B8FD = 5;
            break;
        case 1:
            var_0._id_B8FD = 4;
            break;
        case 2:
            var_0._id_B8FD = 2;
            break;
        case 3:
            var_0._id_B8FD = 1;
            break;
    }

    while ( !common_scripts\utility::flag( "player_detonated_explosives" ) )
    {
        var_0 waittill( "damage", var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 );

        if ( isdefined( var_2 ) && isplayer( var_2 ) )
        {
            if ( var_9 & 8 )
                continue;

            if ( isdefined( level.last_player_damage ) && level.last_player_damage == gettime() && level.gameskill != 3 )
                continue;

            if ( var_0._id_B8FD > 0 )
                var_0._id_B8FD -= 1;

            if ( isdefined( var_5 ) && ( issubstr( var_5, "MOD_GRENADE" ) || issubstr( var_5, "MOD_EXPLOSIVE" ) || issubstr( var_5, "MOD_PROJECTILE" ) ) )
                break;

            if ( var_0._id_B8FD == 0 )
                break;
        }
    }

    thread _id_BF84();
    common_scripts\utility::flag_set( "player_detonated_explosives" );
}

_id_BF84()
{
    level notify( "c4_barrels_exploding" );
    level endon( "c4_barrels_exploding" );
    level endon( "pre_explosion_happening" );
    level endon( "player_touching_cave_exit" );
    level endon( "player_escaped" );
    level endon( "player_invulnerable" );
    level.player playlocalsound( "af_caves_selfdestruct" );
    playfx( common_scripts\utility::getfx( "player_death_explosion" ), level.player.origin );
    earthquake( 1, 1, level.player.origin, 100 );
    setdvar( "ui_deadquote", &"AF_CAVES_MISSIONFAIL_EXPLOSIVES" );
    level notify( "mission failed" );
    maps\_utility::missionfailedwrapper();
    level.player kill();
}

_id_C00C()
{
    thread _id_C7B4();
    wait( randomfloatrange( 0, 0.6 ) );

    if ( common_scripts\utility::cointoss() )
        playfxontag( common_scripts\utility::getfx( "light_c4_blink_nodlight" ), self, "tag_fx" );
    else
        playfxontag( common_scripts\utility::getfx( "c4_light_blink_dlight" ), self, "tag_fx" );

    common_scripts\utility::flag_wait( "end_cave_collapse" );
    self delete();
}

control_room_shadows()
{
    var_0 = getent( "control_room_volume", "targetname" );
    var_1 = getentarray( "script_model", "code_classname" );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( ispointinvolume( var_4.origin, var_0 ) )
            var_2[var_2.size] = var_4;
    }

    foreach ( var_7 in var_2 )
    {
        if ( !isdefined( var_7 ) || _func_2A5( var_7 ) )
            continue;

        var_7 dontcastshadows();
    }

    common_scripts\utility::flag_wait( "control_room_getting_breached" );

    foreach ( var_7 in var_2 )
    {
        if ( !isdefined( var_7 ) || _func_2A5( var_7 ) )
            continue;

        var_7 castshadows();
    }
}

_id_D51C()
{
    self.ignoreme = 1;
}

_id_C71C()
{
    level._id_D098 = [];
    level._id_CAA2 = [];
    var_0 = getent( "fx_volume_start_to_ledge", "targetname" );
    var_1 = getent( "fx_volume_ledge_to_airstrip", "targetname" );
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );

    for ( var_3 = 0; var_3 < level.createfxent.size; var_3++ )
    {
        var_4 = level.createfxent[var_3];
        var_2.origin = var_4.v["origin"];

        if ( var_2 istouching( var_0 ) )
        {
            level._id_D098[level._id_D098.size] = var_4;
            continue;
        }

        if ( var_2 istouching( var_1 ) )
        {
            level._id_CAA2[level._id_CAA2.size] = var_4;
            continue;
        }
    }

    var_2 delete();
}

after_death_vfx( var_0, var_1, var_2 )
{
    self waittill( "death" );
    var_3 = spawn( "script_model", self gettagorigin( var_1 ) );
    var_3.angles = self gettagangles( var_1 );
    var_3 setmodel( "tag_origin" );
    var_3 hide();
    var_4 = var_3 maps\_utility::groundpos( var_3.origin );
    var_3.origin = var_4 + ( 0, 0, 10 );

    for (;;)
    {
        wait( var_2 );
        playfxontag( var_0, var_3, "tag_origin" );
        wait 0.2;
        stopfxontag( var_0, var_3, "tag_origin" );
    }
}

bombardment_animate_environment()
{
    var_0 = getent( "explosion_enviro", "targetname" );
    var_0.animname = "bombardment_enviro";
    var_0 maps\_anim::setanimtree();
    common_scripts\utility::flag_wait( "danger_close_last_missile_has_hit" );
    wait 0.4;
    var_0 maps\_anim::anim_single_solo( var_0, "bombardment" );
}
