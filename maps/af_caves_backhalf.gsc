// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49259()
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
    level._ID51305 = 0;
    level._ID54214 = 0;
    level._ID50798 = 0;
    level._ID52697 = 0;
    level._ID47663 = getentarray( "riotshield", "targetname" );
    level._ID52273 = 2;
    level._ID44523 = 0;
    level._ID44987 = [];
    level._ID52691 = 0;
    var_0 = getentarray( "trigger_multiple", "classname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2.script_noteworthy ) && getsubstr( var_2.script_noteworthy, 0, 19 ) == "colornodes_backhalf" )
            level._ID44987 = _ID42237::_ID3293( level._ID44987, var_2 );
    }

    setdynamicdvar( "caves_fire", "1" );
    _ID42237::_ID14400( "can_talk" );
    _ID42237::_ID14402( "can_talk" );
    _ID42237::_ID14400( "ledge_sequence_dialogue_over" );
    _ID42237::_ID14400( "shephered_ledge_dialogue_starting" );
    _ID42237::_ID14400( "shephered_ledge_dialogue_done" );
    _ID42237::_ID14400( "unload_overlook_dudes" );
    _ID42237::_ID14400( "overlook_dudes_decimated" );
    _ID42237::_ID14400( "heli_left_overlook" );
    _ID42237::_ID14400( "unload_skylight_dudes" );
    _ID42237::_ID14400( "smoke_thrown" );
    _ID42237::_ID14400( "price_has_given_flank_hint" );
    _ID42237::_ID14400( "stop_smoke" );
    _ID42237::_ID14400( "start_breach_nags" );
    _ID42237::_ID14400( "breach_door_closed" );
    _ID42237::_ID14400( "control_room_breached" );
    _ID42237::_ID14400( "control_room_explosion" );
    _ID42237::_ID14400( "control_room_getting_breached" );
    _ID42237::_ID14400( "control_room_door_opened" );
    _ID42237::_ID14400( "control_room_doors_closed" );
    _ID42237::_ID14400( "keyboard_activated" );
    _ID42237::_ID14400( "player_detonated_explosives" );
    _ID42237::_ID14400( "price_at_the_keyboard" );
    _ID42237::_ID14400( "price_keyboard" );
    _ID42237::_ID14400( "start_airstrip_aftermath_fx" );
    _ID42237::_ID14400( "end_cave_collapse" );
    _ID42237::_ID14400( "player_escaped" );
    _ID42237::_ID14400( "danger_close_dialogue_start" );
    _ID42237::_ID14400( "danger_close_dialogue_end" );
    _ID42237::_ID14400( "price_falling_back" );
    _ID42237::_ID14400( "danger_close_moment_over" );
    _ID42237::_ID14400( "danger_close_last_missile_has_hit" );
    _ID42237::_ID14400( "unload_airstrip_blackhawk_dudes" );
    _ID42237::_ID14400( "obj_ledge_traverse_given" );
    _ID42237::_ID14400( "obj_ledge_traverse_complete" );
    _ID42237::_ID14400( "obj_overlook_to_skylight_given" );
    _ID42237::_ID14400( "obj_overlook_to_skylight_complete" );
    _ID42237::_ID14400( "obj_breach_given" );
    _ID42237::_ID14400( "obj_breach_show" );
    _ID42237::_ID14400( "obj_breach_complete" );
    _ID42237::_ID14400( "obj_door_controls_given" );
    _ID42237::_ID14400( "obj_door_controls_complete" );
    _ID42237::_ID14400( "obj_escape_given" );
    _ID42237::_ID14400( "obj_escape_complete" );
    _ID42237::_ID14400( "obj_laatpv_given" );
    _ID42237::_ID14400( "obj_laatpv_complete" );
    _ID42237::_ID14400( "obj_laatpv_gunner_given" );
    _ID42237::_ID14400( "obj_laatpv_gunner_complete" );
    _ID42237::_ID14400( "obj_level_end_given" );
    _ID42237::_ID14400( "obj_level_end_complete" );
    _ID42237::_ID14400( "obj_shepherd_location_found" );
}

_ID45437()
{
    var_0 = getentarray( "camo_right_damaged", "targetname" );
    var_1 = getentarray( "camo_left_damaged", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID18512 );
    _ID42237::_ID3350( var_1, _ID42407::_ID18512 );
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
    _ID42237::_ID3350( var_11, ::_ID45907 );
    _ID47838();
    var_12 = _ID42407::_ID16729();
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_ID47372 );
    _ID42237::_ID3350( getvehiclenodearray( "plane_sound", "script_noteworthy" ), _ID42549::_ID26746 );
    _ID42237::_ID3350( getvehiclenodearray( "uav_sound", "script_noteworthy" ), _ID53327::_ID26746 );
    _ID42237::_ID3350( getvehiclenodearray( "fire_missile", "script_noteworthy" ), _ID53327::_ID44024 );
    _ID42407::_ID3344( "hostiles_ledge_fight", ::_ID50243 );
    _ID42407::_ID3343( "ledge_prone_guy", ::_ID45280 );
    _ID42407::_ID3343( "overlook_heli_fastropers", ::_ID43771 );
    _ID42407::_ID3343( "skylight_heli_fastropers", ::_ID47114 );
    _ID42407::_ID3343( "riotshield_flanker", ::_ID44406 );
    _ID42407::_ID3343( "shotgun_flanker", ::_ID44056 );
    _ID42407::_ID3343( "airstrip_littlebird_hostiles", ::_ID54684 );
    _ID42407::_ID3343( "airstrip_heli_fastropers", ::_ID53785 );
    _ID42407::_ID3344( "ambient_airstrip", ::_ID54101 );
    _ID42407::_ID3344( "airstrip_runners", ::_ID49048 );
    _ID42407::_ID3343( "ignored", ::_ID54556 );
    var_13 = getent( "littlebird_airstrip", "targetname" );
    var_13 thread _ID42407::_ID1947( ::_ID50929 );
    var_14 = getent( "blackhawk_airstrip", "targetname" );
    var_14 thread _ID42407::_ID1947( ::_ID53054 );
    thread _ID50972();
    thread control_room_shadows();
}

_ID46295()
{
    thread _ID51541();
}

_ID51541()
{
    _ID42237::_ID14413( "steamroom_halfway_point" );
    level._ID35278 = ::_ID53576;
    thread _ID54187();
    thread _ID47166();
    thread _ID47981();
    thread _ID49214();
    getent( "cell_hook1", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook1", "cell_hook" );
    getent( "cell_hook2", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook2", "cell_hook" );
    _ID42237::_ID14413( "obj_ledge_traverse_complete" );
    thread _ID50630();
}

_ID49214()
{
    level endon( "control_room_explosion" );
    _ID42237::_ID14413( "player_clear_steamroom" );
    musicstop();
    var_0 = _ID42407::_ID24586( "mus_af_caves_goingloud" );

    while ( !_ID42237::_ID14385( "control_room_explosion" ) )
    {
        _ID42407::_ID24587( "mus_af_caves_goingloud" );
        wait(var_0);
        _ID42407::_ID24584( 1 );
        wait 1.1;
    }
}

_ID54187()
{
    _ID42237::_ID14413( "steamroom_done" );
    maps\af_caves_code::_ID51663();
    level._ID28543._ID16983 = 64;
    level._ID28543 pushplayer( 0 );
    level._ID28543.pathrandompercent = 50;
    level._ID28543 _ID42407::_ID12445();
    level._ID28543 thread maps\af_caves_code::_ID52482( "m4_grenadier" );
    _ID38942( "colornodes_backhalf_ledge_start", "script_noteworthy", 1 );
    _ID38942( "colornodes_backhalf_ledge", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_backhalf_ledge_start" );
    thread maps\af_caves_code::military_convoy_loop( "canyon_convoy", "control_room_breached", 3, 4.5 );
    var_0 = _ID42411::_ID35200( "air_convoy_ledge" );
    var_0[0] thread _ID42407::_ID27079( "scn_af_caves_heli_convoy" );
    thread _ID53402();
    _ID42237::_ID14413( "player_clear_steamroom" );
    thread _ID42407::_ID4422( "ledge_start" );
    var_1 = _ID42411::_ID35200( "zodiacs_canyon_start" );

    foreach ( var_3 in var_1 )
    {
        var_3._ID3189 = "zodiac";
        var_3 _ID42407::_ID3428();
        var_3 setanim( var_3 _ID42407::_ID16120( "bounce" ) );
    }

    var_5 = _ID42411::_ID35200( "zodiacs_canyon" );

    foreach ( var_7 in var_5 )
    {
        var_7._ID3189 = "zodiac";
        var_7 _ID42407::_ID3428();
        var_7 setanim( var_7 _ID42407::_ID16120( "bounce" ) );
    }

    _ID42237::_ID14413( "player_ledge_stairs_01" );
    level._ID28543.ignoreme = 1;
    level._ID28543.ignorerandombulletdamage = 1;
    thread _ID53944( "ledge_gunners_dead" );
    var_9 = _ID42411::_ID35196( "uav_bridge_01" );
    var_9 thread _ID45729();
    _ID42237::_ID14413( "player_ledge_corner_01" );
    thread _ID54324( "jets_canyon_01", "shephered_ledge_dialogue_done" );
    _ID42237::_ID14413( "player_crossed_bridge" );
    level._ID52273 = 0.1;
    _ID42237::_ID14413( "player_ledge_last_stairs" );
    level._ID28543.ignoreme = 0;
    level._ID28543.ignorerandombulletdamage = 0;
    _ID42237::_ID14413( "player_inside_overlook" );
    thread animatelamp();
    level.player notify( "done_with_ledge_sequence" );
    _ID42407::_ID4918( "allies" );
    _ID42407::_ID4918( "axis" );
    level._ID28543 _ID42407::_ID32226( 1 );
    thread _ID53613();
}

animatelamp()
{
    var_0 = getent( "cave_wired_lights_02", "targetname" );
    var_0._ID3189 = "lights";
    var_0 _ID42259::_ID32556();
    var_1 = var_0 _ID42407::_ID16120( "idle" );
    var_0 setanim( var_1 );
}

_ID53944( var_0 )
{
    level.player endon( "death" );
    level._ID28543 endon( "death" );
    level._ID28543._ID4867 = 0.1;
    level._ID28543._ID25499 = level._ID28543._ID4867;
    level._ID46878 = gettime();
    wait 0.05;

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        if ( _ID50769() && _ID44754( level._ID52273 ) )
            level._ID28543._ID4867 = 50;
        else
            level._ID28543._ID4867 = level._ID28543._ID25499;

        wait 2;
    }

    level._ID28543._ID4867 = 2;
}

_ID44754( var_0 )
{
    var_1 = gettime();
    var_2 = var_1 - level._ID46878;

    if ( var_1 == level._ID46878 )
        return 0;
    else if ( var_2 > var_0 * 1000 )
        return 1;
    else
        return 0;
}

_ID45280()
{
    self endon( "death" );
    self.ignoreme = 1;
    _ID42237::_ID14413( "player_ledge_bridge_crossing" );
    self.ignoreme = 0;
}

_ID50243()
{
    self.dropweapon = 0;
    var_0 = undefined;

    switch ( level._ID15361 )
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
    self._ID11002 = 1;
    self._ID4867 = self._ID4867 * var_0;
    self.accuracy = self.accuracy * var_0;

    while ( isdefined( self ) )
    {
        self waittill( "death",  var_2  );

        if ( _ID42237::_ID14385( "ledge_gunners_dead" ) )
        {
            if ( !_ID42237::_ID14385( "player_inside_overlook" ) && level._ID54214 == 0 )
            {
                level._ID54214 = 1;
                _ID42407::_ID28864( "riot_killfirm_final" );
            }
        }

        if ( isdefined( var_2 ) && var_2 == level._ID28543 )
        {
            if ( _ID42237::_ID14385( "can_talk" ) && !_ID42237::_ID14385( "ledge_gunners_dead" ) )
            {
                wait 0.05;
                _ID42237::_ID14388( "can_talk" );

                if ( level._ID50798 == 3 )
                    level._ID50798 = 0;

                _ID42407::_ID28864( "riot_killfirm_0" + level._ID50798 );
                level._ID50798++;
                _ID42237::_ID14402( "can_talk" );
            }

            level._ID46878 = gettime();
            continue;
        }

        if ( isdefined( var_2 ) && isplayernumber( var_2 ) )
        {
            level._ID52697++;

            if ( level._ID52697 > 4 )
                thread _ID42372::_ID21309( 71 );
        }
    }
}

_ID47166()
{
    _ID42237::_ID14413( "steamroom_done" );
    _ID42237::_ID14402( "obj_ledge_traverse_given" );
    _ID42237::_ID14413( "player_clear_steamroom" );
    _ID42237::_ID14413( "steamroom_ambush_finish_dialogue_ended" );
    _ID42407::_ID28864( "afcaves_pri_pickupriotsheild" );
    _ID42407::_ID10226( 2, ::_ID43972, "ledge_gunners_dead", "player_crossed_bridge" );
    wait 1;
    _ID42237::_ID14413( "can_talk" );
    _ID42237::_ID14388( "can_talk" );
    _ID42237::_ID14402( "shephered_ledge_dialogue_starting" );
    _ID42407::_ID28864( "afcaves_sc4_gettingthis" );
    _ID42237::_ID14402( "shephered_ledge_dialogue_done" );
    _ID42237::_ID14402( "can_talk" );
    _ID42237::_ID14413( "ledge_gunners_dead" );
    level.player notify( "done_with_ledge_sequence" );
    wait 3;
    _ID42237::_ID14402( "ledge_sequence_dialogue_over" );
}

_ID43972( var_0, var_1 )
{
    _ID42237::_ID14413( "player_ledge_stairs_01" );
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    var_6 = 0;

    for (;;)
    {
        if ( _ID42237::_ID14385( var_0 ) || _ID42237::_ID14385( var_1 ) )
            return;

        if ( !_ID48978() && _ID49119() )
        {
            if ( _ID42237::_ID14385( "can_talk" ) )
            {
                _ID42237::_ID14388( "can_talk" );

                if ( var_2 == 3 )
                    var_2 = 0;

                _ID42407::_ID28864( "pickupriotsheild_0" + var_2 );
                var_2++;
                _ID42237::_ID14402( "can_talk" );
                level.player _ID42237::_ID41123( "weapon_change", 5 );
            }
        }
        else if ( _ID48978() )
        {
            if ( level._ID44523 == 0 )
            {
                if ( _ID42237::_ID14385( "can_talk" ) )
                {
                    _ID42237::_ID14388( "can_talk" );
                    _ID42407::_ID28864( "afcaves_pri_takepoint2" );
                    level._ID44523 = 1;
                    _ID42237::_ID14402( "can_talk" );
                }
            }
            else if ( !_ID50769() )
            {
                if ( _ID42237::_ID14385( "can_talk" ) )
                {
                    _ID42237::_ID14388( "can_talk" );

                    if ( var_4 == 2 )
                        var_4 = 0;

                    _ID42407::_ID28864( "switchriotsheild_0" + var_4 );
                    var_4++;
                    _ID42237::_ID14402( "can_talk" );
                }
            }
            else if ( !_ID50439() )
            {
                if ( _ID42237::_ID14385( "can_talk" ) )
                {
                    _ID42237::_ID14388( "can_talk" );

                    if ( var_3 == 2 )
                        var_3 = 0;

                    _ID42407::_ID28864( "crouchriotsheild_0" + var_3 );
                    var_3++;
                    _ID42237::_ID14402( "can_talk" );
                }
            }
            else if ( level._ID44523 == 1 )
            {
                if ( var_6 < 3 && _ID42237::_ID14385( "can_talk" ) )
                {
                    _ID42237::_ID14388( "can_talk" );
                    _ID42407::_ID28864( "catwalk_enemy_chatter_0" + var_6 );
                    var_6++;

                    if ( var_6 == 0 )
                    {
                        _ID42407::_ID28864( "catwalk_enemy_chatter_0" + var_6 );
                        var_6++;
                    }

                    _ID42237::_ID14402( "can_talk" );
                }
                else if ( _ID42237::_ID14385( "can_talk" ) )
                {
                    _ID42237::_ID14388( "can_talk" );

                    if ( var_5 == 1 )
                        var_5 = 0;

                    _ID42407::_ID28864( "riotsheildmove_0" + var_5 );
                    var_5++;
                    _ID42237::_ID14402( "can_talk" );
                }
            }
        }

        level.player _ID42237::_ID41123( "weapon_change", 1 );
        wait 1;
    }
}

_ID45729()
{
    while ( isdefined( self ) )
        wait 2;

    var_0 = _ID42411::_ID35196( "uav_bridge_02" );
}

_ID50439()
{
    if ( level.player getstance() == "crouch" )
        return 1;
    else
        return 0;
}

_ID50769()
{
    if ( !_ID48978() )
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

_ID48978()
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

_ID49119()
{
    var_0 = 1048576;

    foreach ( var_2 in level._ID47663 )
    {
        if ( !isdefined( var_2 ) )
            continue;

        if ( distancesquared( var_2.origin, level.player.origin ) < var_0 )
            return 1;
    }

    return 0;
}

_ID50630()
{
    thread _ID48807();
    thread _ID52989();
    thread _ID46943();
    thread barrel_explosive();
    thread tarp_wind_idle();
    _ID42237::_ID14413( "player_enter_skylight" );
    thread _ID52028();
}

_ID48807()
{
    _ID42237::_ID14413( "obj_ledge_traverse_complete" );
    _ID38942( "colornodes_backhalf_overlook_to_breach", "script_noteworthy", 1 );
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543._ID35499 = undefined;
    level._ID28543.fixednodesaferadius = 1024;
    level._ID14382 = 1024;
    var_0 = _ID42411::_ID35196( "blackhawk_skylight_01" );
    var_1 = var_0.origin;
    var_0._ID28405 = 3;
    var_0 thread maps\af_caves_aud::_ID46647();
    _ID42237::_ID14413( "player_enter_skylight" );
    _ID42237::_ID14402( "unload_skylight_dudes" );
    var_2 = getent( "volume_overlook", "targetname" );
    var_3 = var_2 _ID42407::_ID15547( "axis" );
    _ID42237::_ID3350( var_3, ::_ID43811 );
    var_4 = getentarray( "smoke_org_skylight", "targetname" );
    thread _ID49809( var_4, "stop_smoke" );
    wait 1;
    _ID42237::_ID14402( "smoke_thrown" );

    if ( isdefined( var_0 ) )
        _ID42407::_ID10226( 2, _ID42237::_ID27077, "afcaves_sc5_papaquebec", var_1 );

    thread _ID51902();
    wait 10.5;

    if ( isdefined( var_0 ) )
    {
        var_5 = _ID42237::_ID16638( "skylight1_heli_depart", "targetname" );
        var_0 thread _ID51122( var_5 );
    }
}

_ID53613()
{
    thread _ID51125();
    level endon( "player_in_skylight_area" );
    _ID42237::_ID14413( "overlook_dudes_dead" );
    thread _ID42407::_ID4422( "overlook_dudes_dead" );
}

_ID51125()
{
    var_0 = 0;
    level endon( "player_in_skylight_area" );

    for (;;)
    {
        level waittill( "player_killed_an_enemy" );
        var_0++;

        if ( var_0 > 2 )
        {
            thread _ID42407::_ID4422( "overlook_timed_autosave" );
            var_0 = 0;
        }
    }
}

_ID51122( var_0 )
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );
    thread _ID42411::_ID40218( var_0 );
    self waittill( "reached_dynamic_path_end" );
    self delete();
}

_ID52989()
{
    _ID42237::_ID14413( "ledge_sequence_dialogue_over" );
    _ID42407::_ID28864( "afcaves_schq_escourtgoldeagle" );
    _ID42407::_ID28864( "afcaves_pri_mustbeshepherd" );
    _ID42237::_ID14402( "obj_shepherd_location_found" );
    _ID42237::_ID14413( "player_inside_overlook" );

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    wait 10;

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    if ( _ID52478() )
    {
        level._ID28543 _ID10760( "afcaves_pri_sheildsthrowfrags" );

        if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
            return;

        wait 10;
    }
    else if ( _ID46267() )
    {
        level._ID28543 _ID10760( "afcaves_pri_sheildsuseflash" );

        if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
            return;

        wait 10;
    }

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    level._ID28543 _ID10760( "afcaves_pri_trytoflank" );

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    wait 10;

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    level._ID28543 _ID10760( "afcaves_pri_hitfromsides" );

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    wait 10;

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    level._ID28543 _ID10760( "afcaves_pri_flankandhitsides" );
}

_ID52478()
{
    if ( level.player getweaponammostock( "fraggrenade" ) > 0 )
        return 1;
    else
        return 0;
}

_ID46267()
{
    if ( level.player getweaponammostock( "flash_grenade" ) > 0 )
        return 1;
    else
        return 0;
}

_ID51902()
{
    while ( !_ID42237::_ID14385( "player_in_skylight_area" ) )
        wait 3;

    thread _ID42407::_ID4422( "skylight" );
    level._ID28543 _ID10760( "afcaves_pri_usingthermal" );
    level._ID28543 _ID10760( "afcaves_pri_moveright" );
    _ID42237::_ID14402( "price_has_given_flank_hint" );
    wait 5;

    if ( _ID42237::_ID14385( "player_going_around_skylight_flank" ) || _ID42237::_ID14385( "player_on_other_side_skylight" ) || _ID42237::_ID14385( "player_approaching_breach" ) )
    {
        _ID42237::_ID14402( "stop_smoke" );
        return;
    }

    var_0 = getent( "skylight_flanker", "script_noteworthy" );
    var_0 notify( "trigger",  level.player  );

    if ( _ID42237::_ID14385( "can_talk" ) )
    {
        _ID42237::_ID14388( "can_talk" );
        level._ID28543 _ID10760( "afcaves_pri_drawfire" );
        _ID42237::_ID14402( "can_talk" );
    }

    wait 15;

    if ( _ID42237::_ID14385( "player_going_around_skylight_flank" ) || _ID42237::_ID14385( "player_on_other_side_skylight" ) || _ID42237::_ID14385( "player_approaching_breach" ) )
    {
        _ID42237::_ID14402( "stop_smoke" );
        return;
    }

    if ( _ID42237::_ID14385( "can_talk" ) )
    {
        _ID42237::_ID14388( "can_talk" );
        level._ID28543 _ID10760( "afcaves_pri_switchingtotherm" );
        _ID42237::_ID14402( "can_talk" );
    }
}

_ID43771()
{
    self endon( "death" );
    self.ignoreme = 1;
    self waittill( "jumpedout" );
    self.ignoreme = 0;
}

_ID53576( var_0 )
{
    if ( var_0.team == "axis" )
        var_0 thread _ID50059();
}

_ID50059()
{
    self waittill( "death",  var_0  );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
        level notify( "player_killed_an_enemy" );

    if ( isdefined( self._ID31114 ) && self._ID31114 == "overlook_dudes_dead" )
    {
        level._ID51305++;

        if ( level._ID51305 > 4 )
            _ID42237::_ID14402( "overlook_dudes_decimated" );
    }
}

_ID47114()
{
    self endon( "death" );
    self.ignoreme = 1;
    self waittill( "jumpedout" );
    self.ignoreme = 0;

    if ( self.code_classname == "actor_enemy_riotshield" )
    {
        _ID42360::_ID30024();
        wait(randomfloatrange( 4.8, 5.2 ));
        _ID42360::_ID30023();
    }
}

_ID44406( var_0 )
{
    self endon( "death" );
    self.usechokepoints = 0;

    if ( self.code_classname == "actor_enemy_riotshield" )
    {
        _ID42360::_ID30024();
        wait(randomfloatrange( 4.8, 5.2 ));

        if ( isdefined( var_0 ) )
            wait(randomfloatrange( 7, 8 ));

        _ID42360::_ID30023();
    }
}

_ID44056()
{
    self endon( "death" );
    self.goalradius = 64;
}

_ID53402()
{
    var_0 = _ID42411::_ID35196( "blackhawk_overlook_rappel" );
    var_0 endon( "death" );
    var_0 thread maps\af_caves_aud::_ID44468();
    _ID42237::_ID14413( "player_inside_overlook" );
    _ID42237::_ID14402( "unload_overlook_dudes" );
    var_1 = _ID42411::_ID35196( "blackhawk_overlook_01" );
    var_1 thread maps\af_caves_aud::_ID46923();
    var_0 waittill( "unloaded" );
    wait 5;

    if ( isdefined( var_0 ) )
    {
        var_2 = _ID42237::_ID16638( "overlook_heli_depart", "targetname" );
        var_0 thread _ID51122( var_2 );
    }

    _ID42237::_ID14402( "heli_left_overlook" );
}

barrel_explosive()
{
    var_0 = getent( "combat_cave_barrel", "targetname" );
    var_0 setcandamage( 1 );

    for (;;)
    {
        var_0 waittill( "damage",  var_1  );

        if ( var_1 <= 0 )
            continue;

        var_2 = var_0.origin + ( 0, 0, 15 );
        playfx( _ID42237::_ID16299( "barrelexp" ), var_2 );
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
    _ID42237::_ID14413( "heli_left_overlook" );
    wait 5.0;
    var_0 _ID42407::_ID3136();
    var_0 thread maps\af_caves_code::scripted_anim_props( "combat_cave_tarp", "heli_tarp" );
}

_ID52028()
{
    thread _ID52209();
    thread _ID54517();
    thread _ID50873();
    thread _ID48327();
    thread _ID50015();
    thread _ID45639();
    thread _ID50718();
    thread _ID25282();
    thread _ID53696();
    thread _ID53848();
    thread _ID53406();
    thread cqb_timer_setup();
    thread price_screen();
    _ID42237::_ID14413( "obj_escape_complete" );
    thread _ID54646();
}

_ID54517()
{
    var_0 = getentarray( "countdown_tv", "script_noteworthy" );
    _ID42237::_ID3350( var_0, maps\af_caves_code::_ID49655 );
    _ID42237::_ID14413( "obj_door_controls_given" );
}

_ID53696()
{
    level endon( "skylight_dudes_dead" );
    _ID42237::_ID14413( "player_enter_skylight" );
    _ID42237::_ID14421( "player_on_other_side_skylight", "player_has_flanked_skylight" );
    var_0 = getaiarray( "axis" );
    _ID42237::_ID3350( var_0, ::_ID44926 );
}

_ID44926()
{
    self endon( "death" );
    var_0 = getent( "volume_skylight_defend", "targetname" );
    var_1 = getent( "volume_skylight_breach_hall", "targetname" );

    for (;;)
    {
        wait 1;

        if ( level.player istouching( var_0 ) || level.player istouching( var_1 ) )
        {
            thread _ID43811();
            level._ID28543._ID4867 = 50;
            continue;
        }

        self notify( "stop_seeking" );
        self setgoalpos( self.origin );
        self setgoalvolumeauto( var_0 );
        self.goalradius = 2048;
        level._ID28543._ID4867 = 2;
    }
}

_ID52209()
{
    level endon( "mission failed" );
    _ID42237::_ID14421( "player_right_near_breach", "skylight_dudes_dead" );
    thread _ID42407::_ID4422( "breach" );
    _ID42237::_ID14402( "stop_smoke" );
    _ID42237::_ID14402( "obj_overlook_to_skylight_complete" );
    var_0 = getent( "breach_safe_volume", "targetname" );
    var_1 = var_0 _ID42407::_ID15547( "axis" );
    _ID42237::_ID3350( var_1, ::_ID43811 );
    _ID38942( "skylight_finished_colornodes", "script_noteworthy", 1 );
    _ID42407::_ID1804( "skylight_finished_colornodes" );
    _ID42237::_ID14413( "breach_door_closed" );
    level._ID34352 = "af_caves_indoors_breachroom";
    level._ID28543.fixednodesaferadius = 64;
    level._ID14382 = undefined;
    _ID38942( "colornodes_backhalf_breach_start", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_backhalf_breach_start" );
    var_2 = getentarray( "c4barrelPacks", "targetname" );
    _ID42237::_ID3350( var_2, ::_ID49164 );
    var_2 = getentarray( "c4barrelPacks", "script_noteworthy" );
    _ID42237::_ID3350( var_2, ::_ID49164 );
    _ID42237::_ID14413( "control_room_getting_breached" );
    thread maps\af_caves_aud::_ID48248( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "none", "af_caves_int" );
    var_1 = getaiarray( "axis" );
    _ID42237::_ID3350( var_1, ::_ID50058 );
    _ID42237::_ID14413( "control_room_breached" );
    level.player setmovespeedscale( 1 );
    thread _ID50414();
    thread _ID48702();
    thread control_room_doors();
    _ID42237::_ID14413( "control_room_cleared" );
    thread _ID53833();
    _ID42237::_ID14413( "obj_door_controls_given" );
    thread _ID46609( 20 );
    thread cqb_timer_think();
    _ID42475::_ID34575( "start_escape_sequence" );
    var_3 = getentarray( "keyboard", "targetname" );
    _ID42237::_ID3350( var_3, ::_ID51751 );
    _ID42237::_ID14413( "keyboard_activated" );
    var_4 = getentarray( "player_unlock_door", "targetname" );

    foreach ( var_6 in var_4 )
        var_6 hide();

    var_8 = getent( "computer_lock", "targetname" );
    var_8 setmodel( "h2_cave_monitor_screen_unlocked" );
    _ID42237::_ID14413( "player_approaching_exit_to_airstrip" );
    thread _ID46446();
    var_9 = getnode( "node_price_escape_final", "targetname" );
    level._ID28543 setgoalnode( var_9 );
    _ID42237::_ID14413( "player_touching_cave_exit" );
    wait 0.3;
    _ID54232();
    _ID42237::_ID14402( "player_escaped" );
}

_ID50058()
{
    self endon( "death" );
    wait 0.5;
    self.health = 1;

    if ( level._ID15361 < 3 )
    {
        if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "veteran" )
            self delete();
    }

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( isdefined( var_1 ) && isplayernumber( var_1 ) )
            self kill();
    }
}

_ID53833()
{
    _ID42237::_ID14413( "control_room_cleared" );
    level._ID28543._ID4867 = 2;
    thread _ID42407::_ID4422( "control_room_cleared" );
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543 pushplayer( 1 );
    wait 5.0;
    var_0 = getent( "price_computer_node", "targetname" );
    var_0 _ID42259::_ID3074( level._ID28543, "laptop_stand_idle_start" );
    var_0 _ID42259::_ID3111( level._ID28543, "laptop_stand_idle_start" );
    _ID42237::_ID14402( "price_keyboard" );
    thread _ID48782();
    level._ID28543 thread _ID49323();
    _ID42237::_ID14413( "control_room_door_opened" );
    level._ID28543 _ID42407::_ID10871();
    var_0 notify( "stop_idle" );
    maps\af_caves_aud::stop_price_typing_loop( level._ID28543 );
    level._ID28543 _ID42407::_ID3136();
    var_1 = getnode( "node_price_escape_cover", "targetname" );
    level._ID28543 setgoalnode( var_1 );
}

price_screen()
{
    var_0 = getent( "price_typing_controlroom", "targetname" );
    var_0 hide();
    _ID42237::_ID14413( "price_keyboard" );
    var_0 show();
}

_ID48782()
{
    var_0 = getent( "price_computer_node", "targetname" );
    level._ID28543 endon( "stop_loop" );
    var_0 thread _ID42259::_ID3044( level._ID28543, "laptop_stand_idle", "stop_idle" );
    _ID42237::_ID14413( "control_room_door_opened" );
    var_0 notify( "stop_idle" );
    var_0 _ID42259::_ID3111( level._ID28543, "laptop_stand_yell" );
}

_ID49323()
{
    var_0 = spawn( "script_origin", self.origin + ( 0, 0, 32 ) );
    var_0 thread _ID43236( "control_room_door_opened" );
    var_0 endon( "death" );
    level endon( "control_room_door_opened" );

    for (;;)
        self waittillmatch( "looping anim",  "end"  );
}

_ID43236( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( var_0 );
    self playrumbleonentity();
    wait 0.1;
    self delete();
}

_ID48702()
{
    _ID42237::_ID14413( "breach_room_guys_dead" );
    _ID42237::_ID14402( "control_room_cleared" );
}

_ID46446()
{
    level notify( "pre_explosion_happening" );
    var_0 = 0;

    for (;;)
    {
        thread _ID42234::_ID13611( "escape_tunnel_pre_explosion" );
        thread _ID42237::_ID27077( "af_caves_selfdestruct", level.player.origin );
        level.player playrumblelooponentity( "damage_heavy" );

        if ( _ID42237::_ID14385( "player_touching_cave_exit" ) )
            break;

        var_0++;

        if ( var_0 > 6 )
        {
            level thread _ID43057();
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
            _ID42234::_ID13611( "control_room_detonate" );
            earthquake( 0.3, 1.75, level.player.origin, 1000 );
            wait 1;
            continue;
        }

        earthquake( 0.4, 1.75, level.player.origin, 1000 );
        wait 0.75;
    }
}

_ID51751()
{
    _ID42407::_ID16953( "com_computer_keyboard_obj" );
    self makeusable();
    thread _ID42237::_ID44574( level.player, &"AF_CAVES_USE_KEYBOARD", &"AF_CAVES_USE_KEYBOARD_PC", "trigger" );
    self waittill( "trigger" );
    var_0 = getentarray( "keyboard", "targetname" );
    _ID42407::_ID3319( var_0, "trigger" );
    self makeunusable();
    _ID42407::_ID36591();
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
    _ID42407::_ID3428( "keyboard" );
    self setmodel( "com_computer_keyboard_black_animated" );
    level.player thread _ID42407::_ID27079( "scn_afcaves_plr_keyboard_typing" );
    thread handledeathwhiletyping( self );
    thread animation_dof_computer_typing();
    var_3 _ID42407::_ID49392( "keyboard_control", [ self ], 0, var_2, 1, 0 );
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
    var_3 delete();

    if ( !_ID42237::_ID14385( "keyboard_activated" ) )
    {
        level notify( "keyboard_activated" );
        _ID42237::_ID14402( "keyboard_activated" );
    }
}

animation_dof_computer_typing()
{
    level.player waittill( "player_anim_started" );
    var_0 = _ID54167::_ID43386( "computer_typing" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 8, 8 ) _ID54167::_ID52391( level.player._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 3.0 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 0.8 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 0.9 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.3 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.5 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.8 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.95 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 2.15 ) _ID54167::_ID47198( 0.04, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 2.25 ) _ID54167::_ID47198( 0.08, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.15 );
    var_0 _ID54167::_ID48166();
}

handledeathwhiletyping( var_0 )
{
    level endon( "obj_escape_complete" );
    level endon( "kill_timer" );
    level endon( "keyboard_activated" );
    level waittill( "mission failed" );
    level.player._ID49929 stopanimscripted();
    level.player._ID49929 delete();
    var_0 stopanimscripted();
    level.player unlink();
    level.player freezecontrols( 0 );
}

_ID53848()
{
    _ID42237::_ID14413( "obj_overlook_to_skylight_complete" );
    _ID42237::_ID14402( "obj_breach_given" );
    wait(randomfloatrange( 1, 1.25 ));

    if ( !_ID42237::_ID14385( "control_room_breached" ) )
        _ID42407::_ID28864( "afcaves_sc6_severeddet" );

    if ( !_ID42237::_ID14385( "control_room_getting_breached" ) )
        _ID42407::_ID28864( "afcaves_schq_chargeshot" );

    _ID42237::_ID14402( "start_breach_nags" );
    _ID42237::_ID14413( "control_room_cleared" );
    wait 1;
    _ID42407::_ID28864( "afcaves_shp_sitecompromised" );
    _ID42407::_ID28864( "afcaves_shp_directive116" );
    _ID42237::_ID14402( "obj_escape_given" );
    var_0 = getent( "control_room_volume", "script_noteworthy" );

    if ( level.player istouching( var_0 ) )
        thread _ID42407::_ID4422( "timer_start" );

    level._ID28543 notify( "nag_anim" );
    _ID42237::_ID14402( "obj_door_controls_given" );
    _ID42237::_ID14413( "control_room_door_opened" );
    wait 2;
    level._ID28543 _ID10760( "afcaves_pri_run" );
    wait 0.5;

    if ( !_ID42237::_ID14385( "player_touching_cave_exit" ) )
        level._ID28543 _ID10760( "afcaves_pri_gonnablow" );
}

_ID53406()
{
    level endon( "control_room_getting_breached" );
    level endon( "control_room_breached" );
    level endon( "control_room_cleared" );
    _ID42237::_ID14413( "breach_door_closed" );
    _ID42237::_ID14413( "start_breach_nags" );
    wait 1;
    var_0 = 0;

    for (;;)
    {
        level._ID28543 _ID10760( "breach_nag_0" + var_0 );
        var_0++;

        if ( var_0 > 3 )
            var_0 = 0;

        wait(randomfloatrange( 10, 15 ));
    }
}

_ID50714( var_0, var_1 )
{
    var_2 = self._ID48191;
    var_3 = 4;
    self rotateto( self.angles + ( 0, var_2, 0 ), 4, 1.5, 1.5 );
    thread _ID42407::_ID27079( "af_caves_escape_door_open" );
    wait(var_3);

    if ( isdefined( var_1 ) )
        _ID42237::_ID14402( var_1 );
}

_ID53775( var_0, var_1 )
{
    var_2 = self._ID43865;
    var_3 = 7;
    self rotateto( self.angles + ( 0, var_2, 0 ), var_3, 0.5, 0.5 );
    wait(var_3 - 1);

    if ( var_0 == "left" )
        thread _ID42407::_ID27079( "af_caves_escape_door_close" );

    if ( isdefined( var_1 ) )
        _ID42237::_ID14402( var_1 );
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

    var_2 thread _ID42407::_ID27079( "af_caves_escape_door_close" );
    _ID42237::_ID14402( "control_room_doors_closed" );
    _ID42237::_ID14413( "keyboard_activated" );

    foreach ( var_4 in var_0 )
        var_4 rotateyaw( -85, 4 );

    foreach ( var_4 in var_1 )
        var_4 rotateyaw( 90, 4 );

    var_2 thread _ID42407::_ID27079( "af_caves_escape_door_close" );
    var_2 connectpaths();
    var_2 delete();
    _ID42237::_ID14402( "control_room_door_opened" );
}

_ID50015()
{
    _ID42237::_ID14413( "control_room_explosion" );
    musicstop();
    var_0 = _ID42407::_ID24586( "mus_af_caves_controlroom" );
    _ID42237::_ID14413( "control_room_cleared" );

    for (;;)
    {
        _ID42407::_ID24587( "mus_af_caves_controlroom" );
        wait(var_0);
        _ID42407::_ID24584( 1 );
        wait 1.1;
    }
}

_ID50873()
{
    var_0 = getent( "trigger_breach_icon", "targetname" );
    var_0 _ID42237::_ID38863();
    wait 2;
    var_1 = level._ID6008[2];
    var_1 hide();
    var_2 = getent( "breach_solid", "targetname" );
    var_2 notsolid();
    var_2 connectpaths();
    var_3 = getent( "blast_door_slam", "targetname" );
    var_3.origin = var_1.origin;
    var_4 = var_3.angles;
    var_3.angles = var_3.angles + ( 0, -74, 0 );
    _ID42237::_ID14413( "player_approaching_breach" );
    var_5 = _ID42407::_ID35168( "control_room_door_close_guy", 1 );
    var_5 _ID42407::_ID32353( 1 );
    var_5 _ID42407::_ID32352( 1 );
    var_5 thread _ID42407::_ID22746();
    var_6 = getnode( "sheppard_door_peek", "targetname" );
    var_6 _ID42259::_ID3027( var_5, "alert2look_cornerR" );
    var_6 _ID42259::_ID3020( var_5, "alert2look_cornerR" );
    _ID42237::_ID14402( "breach_door_closed" );
    var_3 rotateyaw( 74, 0.5 );
    var_3 thread _ID42237::_ID27077( "scn_afcaves_doorslam_brace", var_3.origin );
    var_2 solid();
    var_2 disconnectpaths();
    wait 0.66;
    var_3 hide();
    var_3 notsolid();
    var_1 show();
    _ID42237::_ID14402( "obj_breach_show" );
    wait 0.5;
    var_0 _ID42237::_ID38865();

    if ( isdefined( var_5 ) )
    {
        var_5 _ID42407::_ID36519();
        var_5 delete();
    }
}

_ID48327()
{
    level waittill( "A door in breach group 1 has been activated." );
    level notify( "breach_activated" );
    _ID42237::_ID14402( "control_room_getting_breached" );
    wait 2.3;
    _ID42237::_ID14402( "control_room_explosion" );
    wait 0.7;
    _ID42237::_ID14402( "control_room_breached" );
}

_ID47201()
{
    self endon( "death" );
    self._ID11575 = 1;
    level waittill( "A door in breach group 1 has been activated." );
    wait 12;
    self._ID11575 = undefined;
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
        var_1 = getentarray( var_0 + "_" + _ID42237::_ID37877( var_3 ), "targetname" );

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
    level._ID36040 = gettime();

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
        var_23 = 20 - ( gettime() - level._ID36040 ) * 0.001;
        var_24 = floor( var_23 );
        var_25 = int( ( var_23 - var_24 ) * 10 );
        var_26 = int( _ID42237::_ID648( var_24, 10 ) );
        var_27 = int( floor( var_24 * 0.1 ) );
        var_22 = _ID42237::_ID37527( var_22 == 0, 5, 0 );

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

_ID54646()
{
    thread _ID44851();
    thread _ID53135();
    thread _ID51553();
    thread _ID47063();
    thread _ID54378();
    thread _ID52974();
    thread _ID53498();
    thread _ID45392();
    thread tower_destroyed();
}

_ID52974()
{
    _ID42237::_ID14413( "tower_explosion" );
    var_0 = getent( "tower_trigger", "targetname" );
    var_0 notify( "trigger" );
}

tower_destroyed()
{
    var_0 = getent( "sniper_tower_clean", "targetname" );
    _ID42237::_ID14413( "tower_explosion" );
    _func_31c( 1 );
    var_0 setmodel( "h2_cave_sniper_tower_destroyed" );
}

_ID53135()
{
    _ID42237::_ID14413( "danger_close_dialogue_end" );
    wait 2;
    var_0 = getentarray( "airstrip_runners", "targetname" );
    _ID42407::_ID3339( var_0, 1 );
    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );
    var_1 = getentarray( "ambient_airstrip", "targetname" );
    _ID42407::_ID3339( var_1, 1 );
}

_ID51553()
{
    var_0 = getentarray( "camo_right_damaged", "targetname" );
    var_1 = getentarray( "camo_left_damaged", "targetname" );
    var_2 = getentarray( "camo_right_pristine", "targetname" );
    var_3 = getentarray( "camo_left_pristine", "targetname" );
    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );
    _ID42237::_ID3350( var_2, _ID42407::_ID18512 );
    _ID42237::_ID3350( var_3, _ID42407::_ID18512 );
    _ID42237::_ID3350( var_0, _ID42407::_ID33997 );
    _ID42237::_ID3350( var_1, _ID42407::_ID33997 );
}

h2_airstrip_player_explosion( var_0 )
{
    setsaveddvar( "hud_showStance", "0" );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "actionSlotsHide", 1 );
    level.player _meth_830f( 0 );
    level.player disableweapons( 1 );
    level.player setmovespeedscale( 0 );
    level.player enableinvulnerability();
    level.player freezecontrols( 1 );
    level.player setstance( "stand" );
    var_1 = _ID42237::_ID35164();
    var_1.origin = level.player.origin;
    var_1.angles = var_0.angles;
    playfxontag( _ID42237::_ID16299( "cave_explosion_exit" ), var_1, "tag_origin" );
    earthquake( 1, 1, level.player.origin, 100 );
    level notify( "player_invulnerable" );
    wait 0.25;
    var_2 = getgroundposition( level.player.origin, 2 );
    var_3 = _ID42407::_ID35028( "worldbody", var_2 );
    var_3.angles = var_0.angles;
    level.player playerlinktoabsolute( var_3, "tag_player" );
    var_4 = getent( "controlroom_explosion_light", "targetname" );
    var_3 _meth_848a( var_4.origin );
    thread animation_dof_explosion_knockout( var_3 );
    var_5 = getanimlength( var_3 _ID42407::_ID16120( "explosion" ) );
    var_3 thread _ID42259::_ID3111( var_3, "explosion" );
    _ID42237::_ID24938( 0.5, ::playfxontag, _ID42237::_ID16299( "player_cave_escape" ), var_3, "tag_origin" );
    wait(var_5);
    level.player._ID50232 = var_3;
    var_1 delete();
    level.player setmovespeedscale( 0.2 );
}

animation_dof_explosion_knockout( var_0 )
{
    var_1 = _ID54167::_ID43386( "Explosion Knock-out" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, -1, 8, 8 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 1.25 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.9 ) _ID54167::_ID47198( 0.12, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_1 _ID54167::_ID48800( 1.05 ) _ID54167::_ID47198( 0.12, 1.0, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.8 );
    var_1 _ID54167::_ID48166();
}

h2_airstrip_player_explosion_wake()
{
    level.player unlink();
    level.player setstance( "crouch" );
    var_0 = level.player._ID50232;
    _ID42259::_ID3018( var_0, "explosion_wake" );
    waitframe;
    level.player.origin = var_0 gettagorigin( "tag_player" );
    level.player.angles = var_0 gettagangles( "tag_player" );
    level.player playerlinktoabsolute( var_0, "tag_player" );
    waittillframeend;
    thread animation_dof_explosion_wake( var_0 );
    wait 2;
    _ID42259::_ID3111( var_0, "explosion_wake" );
    level.player unlink();
    var_0 delete();
    level.player freezecontrols( 1 );
    level.player allowstand( 1 );
    level.player _meth_830f( 1 );
    level.player allowjump( 1 );
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
}

animation_dof_explosion_wake( var_0 )
{
    var_1 = _ID54167::_ID43386( "Explosion Wake" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.5, -1, 8, 8 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 15.0 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 40, 0.05, 0 );
    var_1 _ID54167::_ID48800( 0.1 ) _ID54167::_ID43500( 9.5, 0 );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_init", 1 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_play", 1 ) _ID54167::_ID43376( ::setsaveddvar, undefined, "ui_consciousnessVignetteDarkness", 0.5 );
    var_1 _ID54167::_ID48800( 3.35 ) _ID54167::_ID47198( 0.06, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_1 _ID54167::_ID48800( 8.95 ) _ID54167::_ID47198( 0.06, 1.0, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.5 );
    var_1 _ID54167::_ID48800( 10.4 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_1 _ID54167::_ID48166();
}

_ID44851()
{
    _ID42237::_ID14413( "obj_escape_complete" );
    _ID42407::_ID4917( "allies" );
    thread _ID42407::_ID4917( "axis" );
    level.player playlocalsound( "af_caves_selfdestruct" );
    var_0 = getent( "cave_exit_playerview_01", "targetname" );
    h2_airstrip_player_explosion( var_0 );
    level.player nightvisiongogglesforceoff();
    _ID42475::_ID34575( "start_escape_cave_collapse" );
    level._ID5261 = _ID42313::_ID9125( "black", 1 );
    level._ID5261.foreground = 0;
    _ID42237::_ID3350( level._ID53400, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID51874, _ID42237::_ID26402 );
    level._ID28543.ignorerandombulletdamage = 1;
    level._ID28543 _ID42407::_ID10949();
    level._ID28543.ignoreall = 1;
    level._ID28543 pushplayer( 1 );
    var_1 = _ID42407::_ID3339( getentarray( "airstrip_danger_close_shooters", "targetname" ), 1 );
    _ID42237::_ID3350( var_1, ::_ID47528 );

    foreach ( var_3 in var_1 )
        var_3.cheat.ignorewolfthink = 1;

    _ID42237::_ID14402( "player_detonated_explosives" );
    var_5 = 17;
    level.player shellshock( "af_cave_collapse", var_5 );
    thread _ID42407::_ID4433( 1 );
    level.player allowstand( 0 );
    level.player allowprone( 0 );
    level.player _meth_830f( 0 );
    level.player allowjump( 0 );
    level.player allowcrouch( 1 );
    setblur( 2, 0.1 );
    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "hud_showStance", "0" );
    thread _ID50171();
    var_6 = getentarray( "rock_rubble1", "targetname" );
    var_7 = getent( "rock_rubble1_col", "targetname" );
    var_7 solid();

    foreach ( var_9 in var_6 )
        var_9 show();

    var_7 disconnectpaths();
    level._ID28543._ID24424 = 0.5;
    setsaveddvar( "g_friendlyNameDist", 0 );
    var_11 = spawn( "script_origin", ( 9206.93, 5198.42, -3251.71 ) );
    var_12 = getent( "price_fighting_cave_exit", "targetname" );
    var_11 _ID42259::_ID3018( level._ID28543, var_12._ID70 );
    wait 0.1;
    wait 2;
    var_11 thread h2_airstrip_player_explosion_wake();
    _ID42237::_ID14402( "danger_close_dialogue_start" );
    wait 1;
    _ID42475::_ID34575( "end_first_blackout" );
    level._ID5261 fadeovertime( 2 );
    level._ID5261.alpha = 0;
    wait 1;
    var_11 thread _ID42259::_ID3111( level._ID28543, var_12._ID70 );
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    wait 2.5;
    setblur( 0.2, 1.5 );
    wait 1;
    setblur( 2, 1.5 );
    wait 1.5;
    setblur( 0.2, 1 );
    thread _ID42234::_ID13611( "under_fire_2" );
    wait 1;
    thread _ID42234::_ID13611( "under_fire" );
    setblur( 0, 0.5 );
    wait 2;
    setblur( 0, 2 );
    _ID42475::_ID34575( "start_second_blackout" );
    wait 2;
    _ID42237::_ID14413( "danger_close_dialogue_end" );
    wait 1.5;
    _ID42407::_ID14403( "price_falling_back", 0.1 );
    var_13 = getnode( "node_price_fallback", "targetname" );
    level._ID28543 setgoalnode( var_13 );
    level._ID28543.goalradius = 32;
    wait 0.5;
    _ID42475::_ID34575( "end_second_blackout" );
    wait 1;
    level.player freezecontrols( 0 );

    foreach ( var_3 in var_1 )
        var_3.cheat.ignorewolfthink = 0;

    thread _ID49535();
    thread missile_lighting();
    wait 1;
    setsaveddvar( "ui_hidemap", 0 );
    setsaveddvar( "hud_showStance", "1" );
    setsaveddvar( "compass", "1" );
    wait 1;
    setsaveddvar( "g_friendlyNameDist", 15000 );
    level._ID28543._ID24424 = 1.0;
    level.player setmovespeedscale( 1 );
    _ID42475::_ID34575( "end_escape_cave_collapse" );
    wait 3;
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "actionSlotsHide", 0 );
    level.player enableweapons();
    level.player disableinvulnerability();
    wait 3;
    level._ID28543.ignorerandombulletdamage = 0;
    level._ID28543 _ID42407::_ID12508();
    level._ID28543.ignoreall = 0;
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543 _ID42407::_ID12445();
    level._ID28543.fixednodesaferadius = 0;
    level._ID14382 = 0;
    _ID38942( "colornodes_backhalf_airstrip_start", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_backhalf_airstrip_start" );
    _ID38942( "colornodes_backhalf_airstrip", "script_noteworthy", 1 );
    thread _ID54324( "littlebird_airstrip", "player_airstrip_start" );
    _ID42407::_ID10226( 1, _ID42411::_ID35196, "blackhawk_airstrip" );
    _ID42237::_ID14413( "player_airstrip_start" );
    level._ID28543 pushplayer( 0 );
    _ID42237::_ID14413( "player_airstrip_midpoint" );
    thread _ID42407::_ID4422( "airstrip_fight_start" );
    level._ID28543.fixednodesaferadius = 1024;
    level._ID14382 = 1024;
    _ID42237::_ID14413( "player_approaching_end_tent" );
    thread _ID42407::_ID4422( "airstrip_fight_start" );
    _ID42237::_ID14413( "player_entering_end_tent" );
    _ID42237::_ID14413( "level_exit" );
    level._ID28543.ignorerandombulletdamage = 1;
    level._ID28543 _ID42407::_ID10949();
    level._ID28543 _ID42407::_ID32353( 1 );
    level._ID28543 _ID42407::_ID32352( 0 );
    _ID42475::_ID34575( "start_end_black_screen" );
    level.player enableinvulnerability();
    level.player.ignoreme = 1;
    level._ID5261 fadeovertime( 3 );
    level._ID5261.alpha = 1;
    level._ID28543 _ID10760( "afcaves_pri_rivernearby" );
    _ID42325::_ID30753( "af_caves" );
    _ID42407::_ID24793();
}

_ID47822()
{
    level.player freezecontrols( 1 );
}

_ID47528()
{
    self endon( "death" );
    self.grenadeammo = 0;

    while ( !_ID42237::_ID14385( "danger_close_last_missile_has_hit" ) )
    {
        self.goalradius = 32;
        wait 0.1;
    }

    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );

    if ( isdefined( self._ID22746 ) && self._ID22746 )
        _ID42407::_ID36519();

    self kill();
}

_ID53054()
{
    self endon( "death" );
    thread _ID43453();
    thread blackhawk_airstrip_collide_with_tower();
    _ID42237::_ID14402( "unload_airstrip_blackhawk_dudes" );
    self waittill( "unloaded" );
    var_0 = _ID42237::_ID16638( "blackhawk_airstrip_heli_depart", "targetname" );
    thread _ID42411::_ID40218( var_0 );
    self vehicle_setspeed( 50 );
    self waittill( "reached_dynamic_path_end" );
    self delete();
}

_ID43453()
{
    self endon( "death" );
    var_0 = getentarray( "blackhawk_crash_loc", "script_noteworthy" );

    for (;;)
    {
        self._ID26573 = _ID42237::_ID16182( self.origin, var_0 );
        wait 1;
    }
}

blackhawk_airstrip_collide_with_tower()
{
    self endon( "crash_done" );
    self waittill( "deathspin" );
    var_0 = getent( "tower_script_origin", "targetname" );
    var_1 = getent( "tower_trigger", "targetname" );

    while ( !_ID42237::_ID14385( "tower_explosion" ) )
    {
        if ( distancesquared( self.origin, var_0.origin ) <= 90000 )
        {
            var_1 notify( "trigger" );
            _ID42237::_ID14402( "tower_explosion" );
            return;
        }

        waittillframeend;
    }
}

_ID49048()
{
    self endon( "death" );
    self.ignoreme = 1;
    self.ignoreall = 1;
    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );
    self dodamage( self.health + 1000, self.origin );
}

_ID50929()
{
    self endon( "death" );
    self._ID12571 = 1;
    self waittill( "unloaded" );
    self vehicle_setspeed( 10 );
    thread _ID42407::_ID40191( 32 );
    wait 2;
    self vehicle_setspeed( 50 );
    var_0 = _ID42237::_ID16638( "airstrip_littlebird_01_depart", "targetname" );
    thread _ID42411::_ID40218( var_0 );
    self waittill( "reached_dynamic_path_end" );
    self delete();
}

_ID53785()
{
    self endon( "death" );
    _ID42407::_ID8925( "on" );
    self.ignoreme = 1;
    self waittill( "jumpedout" );
    self.ignoreme = 0;
}

_ID54684()
{
    self endon( "death" );
    _ID42407::_ID8925( "on" );
    self.ignoreme = 1;
    self waittill( "jumpedout" );
    self.ignoreme = 0;
}

_ID49535()
{
    var_0 = getentarray( "missileOrgs", "targetname" );
    var_0 = _ID42237::_ID15567( level.player.origin, var_0 );
    var_1 = undefined;
    var_2 = 0;

    foreach ( var_4 in var_0 )
    {
        var_2++;
        var_5 = getent( var_4.target, "targetname" );
        var_6 = magicbullet( "hellfire_missile_af_caves_end", var_4.origin, var_5.origin );
        var_6 thread _ID42407::_ID27079( "scn_afcaves_incoming" );

        if ( var_2 == var_0.size )
            var_1 = 1;

        var_6 thread _ID43910( var_1 );
        wait 0.2;
    }

    wait 2;
    _ID42237::_ID14402( "start_airstrip_aftermath_fx" );
    wait 2;
    _ID42237::_ID14402( "danger_close_moment_over" );
}

_ID43910( var_0 )
{
    var_1 = spawn( "script_origin", self.origin );
    var_1 linkto( self );
    self waittill( "death" );

    if ( isdefined( var_0 ) )
    {
        _ID42237::_ID14402( "danger_close_last_missile_has_hit" );
        var_1 thread _ID42237::_ID27077( "exp_javelin_armor_destroy" );
        earthquake( 0.5, 1.5, level.player.origin, 5000 );
        thread _ID42234::_ID13611( "rpg_damage" );
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
    maps\af_caves_lighting::_ID51110( "af_caves_explosion" );
    wait 0.2;
    maps\af_caves_lighting::_ID51110( "af_caves_outdoors_explosion_airstrip" );
    wait 0.2;
    maps\af_caves_lighting::_ID51110( "af_caves_explosion" );
    wait 0.1;
    maps\af_caves_lighting::_ID51110( "af_caves_outdoors_explosion_airstrip" );
    wait 0.1;
    maps\af_caves_lighting::_ID51110( "af_caves_explosion" );
    wait 0.1;
    maps\af_caves_lighting::_ID51110( "af_caves_outdoors_explosion_airstrip" );
    wait 0.1;
    maps\af_caves_lighting::_ID51110( "af_caves_explosion" );
    wait 0.2;
    maps\af_caves_lighting::_ID51110( "af_caves_outdoors_explosion_airstrip" );
    wait 0.2;
    maps\af_caves_lighting::_ID51110( "af_caves_explosion" );
    wait 0.3;
    maps\af_caves_lighting::_ID51110( "af_caves_outdoors_airstrip" );
}

_ID47063()
{
    _ID42237::_ID14413( "obj_escape_complete" );
    _ID42237::_ID14413( "danger_close_dialogue_start" );
    _ID42407::_ID28864( "afcaves_shp_dangerclose" );
    _ID42407::_ID28864( "afcaves_schq_100meters" );
    _ID42237::_ID14402( "danger_close_dialogue_end" );
    _ID42407::_ID28864( "afcaves_shp_sendit" );
    thread _ID42407::_ID28864( "afcaves_schq_firemissionclose" );
    _ID42237::_ID14413( "price_falling_back" );
    level._ID28543 thread _ID10760( "afcaves_pri_fallback2" );
    _ID42237::_ID14413( "danger_close_moment_over" );
    level._ID28543 _ID10760( "afcaves_pri_sincewhen" );
    thread _ID42407::_ID4422( "airstrip_fight_start" );
    wait 1.5;
    _ID42237::_ID14402( "obj_level_end_given" );
    level._ID28543 _ID10760( "afcaves_pri_stayclose" );
    _ID42407::_ID4918( "allies" );
    level._ID28543 _ID42407::_ID32226( 1 );
    wait 2;

    if ( !_ID42237::_ID14385( "player_airstrip_start" ) )
        level._ID28543 thread _ID10760( "afcaves_pri_tothewest" );

    _ID42237::_ID14413( "player_airstrip_start" );
    _ID42407::_ID28864( "afcaves_schq_riskyforflightops" );
    _ID42407::_ID28864( "afcaves_shp_takezodiacs" );
    _ID42407::_ID28864( "afcaves_schq_yessir2" );
    _ID42407::_ID4918( "axis" );
    _ID42237::_ID14413( "player_airstrip_midpoint" );
    _ID42237::_ID14413( "player_entering_end_tent" );
    level._ID28543 _ID10760( "afcaves_pri_gettingaway2" );
    wait 10;

    if ( !_ID42237::_ID14385( "level_exit" ) )
        level._ID28543 _ID10760( "afcaves_pri_followmeletsgo" );
}

_ID53498()
{

}

_ID54378()
{
    var_0 = getent( "tower_trigger", "targetname" );
    var_0 waittill( "trigger" );
    radiusdamage( var_0.origin, 256, 1000, 900 );
    earthquake( 0.2, 1, level.player.origin, 1024 );
    level.player playrumblelooponentity( "damage_light" );
    var_0 thread _ID42237::_ID27077( "explo_wood_tower", var_0.origin );
    var_1 = getent( "tower_victims", "targetname" );
    var_2 = getent( "tower_mg", "script_noteworthy" );
    var_3 = var_2 getturretowner();

    if ( isalive( var_3 ) )
        var_3 notify( "stop_using_built_in_burst_fire" );

    var_2 hide();
    var_1 = getent( "tower_victims", "targetname" );
    _ID42237::_ID3350( getcorpsearray(), maps\af_caves_code::_ID46868, var_1 );
}

_ID47206()
{
    self endon( "death" );

    for (;;)
    {
        playfxontag( _ID42237::_ID16299( "littlebird_fire_trail" ), self, "tag_deathfx" );
        wait 0.1;
    }
}

_ID50171()
{
    var_0 = _ID42411::_ID35196( "littlebird_crasher" );
    var_0._ID26573 = getent( "airstip_crash", "script_noteworthy" );
    var_0 setlookatent( level.player );
    var_0 _ID42411::_ID16988();
    _ID42237::_ID14413( "danger_close_moment_over" );
    var_0 thread _ID47206();
    wait 2.5;
    var_0 _ID42411::_ID16987();
    var_0 notify( "death" );
    var_0 clearlookatent();
    var_0 waittill( "crash_done" );
    _ID42234::_ID13611( "helicrash_01" );
    earthquake( 0.3, 1, level.player.origin, 1024 );
    level.player playrumblelooponentity( "damage_light" );
    var_1 = getentarray( "netting_pristine", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 hide();

    var_5 = getentarray( "netting_destroyed", "targetname" );

    foreach ( var_7 in var_5 )
        var_7 show();

    _ID42237::_ID14413( "player_approaching_end_tent" );
}

_ID47981()
{
    _ID42237::_ID14413( "shephered_ledge_dialogue_starting" );
    var_0 = 2;
    objective_add( var_0, "active", &"AF_CAVES_OBJ_LEDGE_TRAVERSE" );
    _func_1e9( var_0 );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "player_ledge_stairs_01" );
    objective_current( var_0, ( 0, 0, 0 ) );
    var_1 = getent( "obj_ledge_gunners", "targetname" );
    objective_current( var_0, var_1.origin );
    _ID42237::_ID14413( "player_ledge_end" );
    objective_current( var_0, ( 0, 0, 0 ) );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    objective_state_nomessage( var_0, "done" );
    _ID42237::_ID14402( "obj_ledge_traverse_complete" );
}

_ID46943()
{
    _ID42237::_ID14413( "obj_ledge_traverse_complete" );
    var_0 = 0;
    objective_state( var_0, "current" );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "player_inside_overlook" );
    objective_state_nomessage( var_0, "done" );
    _ID42237::_ID14413( "player_inside_overlook" );
    var_0 = 3;
    objective_add( var_0, "current", &"AF_CAVES_OBJ_FLANK_AND_KILL" );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14415( "price_has_given_flank_hint", "obj_overlook_to_skylight_complete" );
    objective_current( var_0, ( 0, 0, 0 ) );
    var_1 = getent( "obj_flank_skylight_01", "targetname" );
    objective_current( var_0, var_1.origin );
    _ID42237::_ID14415( "player_going_around_skylight_flank", "player_on_other_side_skylight", "obj_overlook_to_skylight_complete" );
    var_1 = getent( "obj_flank_skylight_02", "targetname" );
    objective_current( var_0, var_1.origin );
    _ID42237::_ID14415( "skylight_dudes_dead", "player_right_near_breach", "obj_overlook_to_skylight_complete" );
    objective_state_nomessage( var_0, "done" );

    if ( !_ID42237::_ID14385( "obj_overlook_to_skylight_complete" ) )
        _ID42237::_ID14402( "obj_overlook_to_skylight_complete" );
}

_ID45639()
{
    _ID42237::_ID14413( "obj_breach_given" );
    var_0 = 4;
    objective_add( var_0, "active", &"AF_CAVES_OBJ_BREACH", ( 0, 0, 0 ) );
    var_1 = getent( "obj_flank_skylight_03", "targetname" );
    objective_current( var_0, var_1.origin );
    objective_state( var_0, "current" );
    _ID42237::_ID14413( "obj_breach_show" );
    var_2 = getentarray( "obj_breach", "targetname" );
    _ID42367::_ID3438( var_2 );
    var_3 = _ID42367::_ID15588( var_2 );
    _ID42367::_ID25325( var_0, var_3[0], var_3[1], var_3[2], var_3[3] );
    _func_1e9( var_0 );
    _ID42237::_ID14413( "control_room_breached" );
    _ID42407::_ID25326( var_0 );
    _ID42237::_ID14413( "control_room_cleared" );
    objective_state( var_0, "done" );
    _ID42237::_ID14402( "obj_breach_complete" );
}

_ID50718()
{
    _ID42237::_ID14413( "obj_door_controls_given" );
    var_0 = 6;
    var_1 = getent( "keyboard", "targetname" );
    objective_add( var_0, "active", &"AF_CAVES_OBJ_DOOR_CONTROLS", var_1.origin );
    _func_1e9( var_0 );
    objective_position( var_0, 1 );
    objective_setpointertextoverride( var_0, &"AF_CAVES_OVERRIDE" );
    _ID42237::_ID14413( "control_room_door_opened" );
    objective_state_nomessage( var_0, "done" );
    var_0 = 5;
    objective_string( var_0, &"AF_CAVES_OBJ_ESCAPE" );
    objective_state( var_0, "current" );
    _ID42237::_ID14402( "obj_door_controls_complete" );
}

_ID25282()
{
    _ID42237::_ID14413( "obj_escape_given" );
    var_0 = 5;
    objective_add( var_0, "invisible", &"AF_CAVES_OBJ_ESCAPE" );
    objective_state_nomessage( var_0, "current" );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "player_escaped" );
    objective_current( var_0, ( 0, 0, 0 ) );
    objective_state_nomessage( var_0, "done" );
    _ID42237::_ID14402( "obj_escape_complete" );
}

_ID45392()
{
    _ID42237::_ID14413( "obj_level_end_given" );
    var_0 = 6;
    objective_add( var_0, "active", &"AF_CAVES_FOLLOW_PRICE" );
    _func_1e9( var_0 );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "level_exit" );
    _ID42237::_ID14402( "obj_level_end_complete" );
}

_ID46361()
{
    _ID42237::_ID14413( "obj_laatpv_given" );
    _ID42237::_ID14413( "obj_laatpv_complete" );
}

_ID50203()
{
    _ID42237::_ID14413( "obj_laatpv_gunner_given" );
    _ID42237::_ID14413( "obj_laatpv_gunner_complete" );
}

_ID47838()
{
    level._ID30908["afcaves_schq_catwalk"] = "afcaves_schq_catwalk";
    level._ID30908["afcaves_sc4_uavonline"] = "afcaves_sc4_uavonline";
    level._ID30908["afcaves_pri_pickupriotsheild"] = "afcaves_pri_pickupriotsheild";
    level._ID30908["afcaves_pri_takepoint2"] = "afcaves_pri_takepoint2";
    level._ID30908["afcaves_sc4_gettingthis"] = "afcaves_sc4_gettingthis";
    level._ID30908["afcaves_schq_facialrecog"] = "afcaves_schq_facialrecog";
    level._ID30908["afcaves_shp_burntherest"] = "afcaves_shp_burntherest";
    level._ID30908["afcaves_shp_shepout"] = "afcaves_shp_shepout";
    level._ID30908["catwalk_enemy_chatter_00"] = "afcaves_sc5_50meters";
    level._ID30908["catwalk_enemy_chatter_01"] = "afcaves_schq_prejudice";
    level._ID30908["catwalk_enemy_chatter_02"] = "afcaves_schq_2enemies";
    level._ID30908["riotsheildmove_00"] = "afcaves_pri_moveup";
    level._ID30908["riotsheildmove_01"] = "afcaves_pri_takepointdraw";
    level._ID30908["crouchriotsheild_00"] = "afcaves_pri_staylow";
    level._ID30908["crouchriotsheild_01"] = "afcaves_pri_keeplow";
    level._ID30908["crouchriotsheild_02"] = "afcaves_pri_crouchdown";
    level._ID30908["switchriotsheild_00"] = "afcaves_pri_switchtosheild";
    level._ID30908["switchriotsheild_01"] = "afcaves_pri_bringup";
    level._ID30908["switchriotsheild_02"] = "afcaves_pri_giveuscover";
    level._ID30908["pickupriotsheild_00"] = "afcaves_pri_pickupriotsheild2";
    level._ID30908["pickupriotsheild_01"] = "afcaves_pri_pickupriotsheild3";
    level._ID30908["pickupriotsheild_02"] = "afcaves_pri_grabasheild";
    level._ID30908["riot_killfirm_final"] = "afcaves_pri_wereclearmove";
    level._ID30908["riot_killfirm_00"] = "afcaves_pri_goodnight2";
    level._ID30908["riot_killfirm_01"] = "afcaves_pri_hesdown2";
    level._ID30908["riot_killfirm_02"] = "afcaves_pri_gotem";
    level._ID30908["riot_killfirm_03"] = "afcaves_pri_gotone2";
    level._ID30908["afcaves_schq_escourtgoldeagle"] = "afcaves_schq_escourtgoldeagle";
    level._ID30908["afcaves_pri_mustbeshepherd"] = "afcaves_pri_mustbeshepherd";
    level._ID30908["afcaves_sc5_rapellingin"] = "afcaves_sc5_rapellingin";
    level._ID30909["price"]["afcaves_pri_trytoflank"] = "afcaves_pri_trytoflank";
    level._ID30909["price"]["afcaves_pri_sheildsuseflash"] = "afcaves_pri_sheildsuseflash";
    level._ID30909["price"]["afcaves_pri_hitfromsides"] = "afcaves_pri_hitfromsides";
    level._ID30909["price"]["afcaves_pri_sheildsthrowfrags"] = "afcaves_pri_sheildsthrowfrags";
    level._ID30909["price"]["afcaves_pri_flankandhitsides"] = "afcaves_pri_flankandhitsides";
    level._ID30908["afcaves_sc6_severeddet"] = "afcaves_sc6_severeddet";
    level._ID30908["afcaves_schq_chargeshot"] = "afcaves_schq_chargeshot";
    level._ID30909["price"]["breach_nag_00"] = "afcaves_pri_getframecharge";
    level._ID30909["price"]["breach_nag_01"] = "afcaves_pri_breachthedoor";
    level._ID30909["price"]["breach_nag_02"] = "afcaves_pri_blowthedoor";
    level._ID30909["price"]["breach_nag_03"] = "afcaves_pri_chargedoit";
    level._ID30909["price"]["afcaves_pri_drawfire"] = "afcaves_pri_drawfire";
    level._ID30909["price"]["afcaves_pri_moveright"] = "afcaves_pri_moveright";
    level._ID30909["price"]["afcaves_pri_usingthermal"] = "afcaves_pri_usingthermal";
    level._ID30909["price"]["afcaves_pri_switchingtotherm"] = "afcaves_pri_switchingtotherm";
    level._ID30909["price"]["afcaves_pri_eyesup"] = "afcaves_pri_eyesup";
    level._ID30909["price"]["afcaves_pri_dooropen"] = "afcaves_pri_dooropen";
    level._ID30909["price"]["afcaves_pri_overridecontrol"] = "afcaves_pri_overridecontrol";
    level._ID30909["price"]["afcaves_pri_getdooropen"] = "afcaves_pri_getdooropen";
    level._ID30909["price"]["afcaves_pri_usekeyboard"] = "afcaves_pri_usekeyboard";
    level._ID30909["price"]["afcaves_pri_openthedoor"] = "afcaves_pri_openthedoor";
    level._ID30909["price"]["afcaves_pri_comeoncomeon"] = "afcaves_pri_comeoncomeon";
    level._ID30908["afcaves_shp_sitecompromised"] = "afcaves_shp_sitecompromised";
    level._ID30908["afcaves_shp_directive116"] = "afcaves_shp_directive116";
    level._ID30909["price"]["afcaves_pri_run"] = "afcaves_pri_run";
    level._ID30909["price"]["afcaves_pri_gonnablow"] = "afcaves_pri_gonnablow";
    level._ID30908["afcaves_schq_riskyforflightops"] = "afcaves_schq_riskyforflightops";
    level._ID30908["afcaves_shp_takezodiacs"] = "afcaves_shp_takezodiacs";
    level._ID30908["afcaves_schq_yessir2"] = "afcaves_schq_yessir2";
    level._ID30909["price"]["afcaves_pri_gettingaway2"] = "afcaves_pri_gettingaway2";
    level._ID30909["price"]["afcaves_pri_rivernearby"] = "afcaves_pri_rivernearby";
    level._ID30909["price"]["afcaves_pri_stayclose"] = "afcaves_pri_stayclose";
    level._ID30909["price"]["afcaves_pri_headforlatvee"] = "afcaves_pri_headforlatvee";
    level._ID30909["price"]["afcaves_pri_followmeletsgo"] = "afcaves_pri_followmeletsgo";
    level._ID30909["price"]["afcaves_pri_tothewest"] = "afcaves_pri_tothewest";
    level._ID30909["price"]["afcaves_pri_cometome"] = "afcaves_pri_cometome";
    level._ID30909["price"]["afcaves_pri_towerahead"] = "afcaves_pri_towerahead";
    level._ID30909["price"]["afcaves_pri_forwardtotower"] = "afcaves_pri_forwardtotower";
    level._ID30909["price"]["afcaves_pri_movewesttower"] = "afcaves_pri_movewesttower";
    level._ID30909["price"]["afcaves_pri_targetswest"] = "afcaves_pri_targetswest";
    level._ID30909["price"]["afcaves_pri_sniperfromtower"] = "afcaves_pri_sniperfromtower";
    level._ID30908["afcaves_shp_dangerclose"] = "afcaves_shp_dangerclose";
    level._ID30908["afcaves_schq_100meters"] = "afcaves_schq_100meters";
    level._ID30908["afcaves_shp_sendit"] = "afcaves_shp_sendit";
    level._ID30908["afcaves_schq_firemissionclose"] = "afcaves_schq_firemissionclose";
    level._ID30909["price"]["afcaves_pri_fallback2"] = "afcaves_pri_fallback2";
    level._ID30909["price"]["afcaves_pri_sincewhen"] = "afcaves_pri_sincewhen";
}

_ID53721()
{
    self endon( "death" );
    _ID42360::_ID30024();
    wait(randomfloatrange( 2.8, 3.2 ));
    _ID42360::_ID30023();
}

_ID47372()
{
    switch ( self._ID1282 )
    {
        case "zodiac":
        case "zodiac_physics":
            thread _ID43768();
            break;
        case "littlebird":
            thread _ID47879();
            break;
    }
}

_ID43768()
{
    playfxontag( _ID42237::_ID16299( "zodiac_wake_geotrail_oilrig" ), self, "tag_origin" );
}

_ID47879()
{
    self endon( "death" );

    if ( self.classname == "script_vehicle_littlebird_armed" )
    {
        thread _ID42508::_ID18360();
        waitframe;

        foreach ( var_1 in self._ID23512 )
        {
            var_1 setmode( "manual" );
            var_1 stopfiring();
        }
    }
}

_ID38942( var_0, var_1, var_2 )
{
    var_3 = getentarray( var_0, var_1 );

    if ( var_2 == 1 )
        _ID42237::_ID3350( var_3, _ID42237::_ID38865 );
    else
        _ID42237::_ID3350( var_3, _ID42237::_ID38863 );
}

_ID10760( var_0 )
{
    self endon( "death" );
    _ID42407::_ID10805( var_0 );
}

_ID47134( var_0 )
{
    _ID52910( var_0, 3 );
}

_ID45397( var_0 )
{
    _ID52910( var_0, 1.5 );
}

_ID52910( var_0, var_1 )
{
    var_2 = 0.5;
    level endon( "clearing_hints" );

    if ( isdefined( level._ID48851 ) )
        level._ID48851 _ID42313::_ID10476();

    level._ID48851 = _ID42313::_ID9220( "default", 1.5 );
    level._ID48851 _ID42313::_ID32753( "BOTTOM", undefined, 0, -60 );
    level._ID48851.color = ( 1, 1, 1 );
    level._ID48851 settext( var_0 );
    level._ID48851.alpha = 0;
    level._ID48851 fadeovertime( 0.5 );
    level._ID48851.alpha = 1;
    level._ID48851.sort = 2;
    wait 0.5;
    level._ID48851 endon( "death" );

    if ( isdefined( var_1 ) )
        wait(var_1);
    else
        return;

    level._ID48851 fadeovertime( var_2 );
    level._ID48851.alpha = 0;
    wait(var_2);
    level._ID48851 _ID42313::_ID10476();
}

_ID43811()
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );
    self cleargoalvolume();
    self endon( "stop_seeking" );

    if ( self.code_classname == "actor_enemy_riotshield" )
        thread _ID53721();

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

_ID49809( var_0, var_1 )
{
    level endon( var_1 );

    for (;;)
    {
        var_2 = undefined;

        foreach ( var_4 in var_0 )
        {
            playfx( _ID42237::_ID16299( "smokescreen" ), var_4.origin );
            var_4 thread _ID42237::_ID27077( "smokegrenade_explode_default" );
            wait(randomfloatrange( 0.1, 0.3 ));
        }

        wait 28;

        if ( _ID42237::_ID14385( var_1 ) )
            break;
    }
}

_ID54344( var_0 )
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

_ID46609( var_0 )
{
    level endon( "obj_escape_complete" );
    level endon( "kill_timer" );
    thread _ID43021();
    wait(var_0);
    level thread _ID43057();
}

_ID43021()
{
    level endon( "obj_escape_complete" );
    level endon( "kill_timer" );

    for (;;)
    {
        wait 1;
        level.player thread _ID42407::_ID27079( "countdown_beep" );
    }
}

_ID43057()
{
    level.player endon( "death" );
    level endon( "kill_timer" );
    level notify( "mission failed" );
    musicstop( 1 );
    level.player playlocalsound( "af_caves_selfdestruct" );
    playfx( _ID42237::_ID16299( "player_death_explosion" ), level.player.origin );
    earthquake( 1, 1, level.player.origin, 100 );
    level.player kill();
    setdvar( "ui_deadquote", &"AF_CAVES_RAN_OUT_OF_TIME" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
    level notify( "kill_timer" );
}

_ID54232()
{
    level notify( "kill_timer" );
}

_ID48423()
{

}

_ID45907()
{

}

_ID54324( var_0, var_1 )
{
    _ID42237::_ID14413( var_1 );
    _ID42411::_ID35200( var_0 );
}

_ID54101()
{
    self endon( "death" );
    self.health = 1;
    self.ignoreall = 1;
    self.diequietly = 1;
    _ID42407::_ID10949();
    _ID42407::_ID32187( 1 );
    _ID42407::_ID17509();
    thread _ID49639();
    var_0 = self._ID988;
    var_1 = self._ID988._ID70;
    self._ID9813 = level._ID30895["generic"][var_1 + "_death"];
    self._ID51391 = [];
    self._ID49421 = [];

    if ( isdefined( self._ID31190 ) )
    {
        var_0 _ID42259::_ID3023( self, var_1 );
        _ID42237::_ID14413( self._ID31190 );
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
            self._ID51391[0] = "tag_origin";
            var_3 = 2;
            break;
        case "hunted_dazed_walk_C_limp":
            self playsound( "scn_afcaves_walk_c_limp_npc_foley" );
            var_3 = 4;
            var_2 = 0.7;
            self._ID51391[0] = "tag_origin";
            break;
        case "civilian_crawl_2":
            self playsound( "scn_afcaves_civilian_crawl_2_npc_foley" );
            var_2 = 0.5;
            self._ID51391[0] = "tag_bipod";
            self._ID49421[0] = "tag_shield_back";
            self._ID7._ID28253 = "prone";
            break;
        case "civilian_crawl_1":
            self playsound( "scn_afcaves_civilian_crawl_1_npc_foley" );
            self._ID51391[0] = "tag_origin";
            self._ID49421[0] = "tag_shield_back";
            self._ID7._ID28253 = "prone";
            break;
    }

    if ( self._ID51391.size )
        thread _ID46631( self._ID51391, "smoke" );

    if ( self._ID49421.size )
        thread _ID46631( self._ID49421, "fire" );

    if ( isdefined( var_2 ) )
    {
        var_0 thread _ID42259::_ID3021( self, "gravity", var_1 );
        wait 0.1;
        self setanim( level._ID30895["generic"][var_1], 1, 0.2, var_2 );
        var_4 = getanimlength( level._ID30895["generic"][var_1] );

        if ( !isdefined( var_3 ) )
            var_3 = 3;

        wait(var_4 * var_3);
    }
    else
    {
        var_0 _ID42259::_ID3021( self, "gravity", var_1 );

        if ( isdefined( var_3 ) )
            _ID42259::_ID3021( self, "gravity", var_1 );
    }

    switch ( var_1 )
    {
        case "civilian_leaning_death":
            self._ID7._ID24881 = 1;
            break;
    }

    self._ID9813 = undefined;
    _ID42407::_ID3136();
    self._ID34237 = 1;

    if ( isdefined( self._ID22746 ) && self._ID22746 )
        _ID42407::_ID36519();

    self kill();
}

_ID46631( var_0, var_1 )
{
    if ( getdvar( "caves_fire" ) == "0" )
        return;

    self endon( "death" );
    var_2 = undefined;

    if ( var_1 == "fire" )
        var_2 = _ID42237::_ID16299( "body_fire_01" );
    else if ( var_1 == "smoke" )
        var_2 = _ID42237::_ID16299( "body_smoke_01" );

    foreach ( var_4 in var_0 )
        thread _ID50278( var_2, var_4, var_1 );
}

_ID50278( var_0, var_1, var_2 )
{
    var_3 = 0;

    if ( var_2 == "smoke" )
        var_3 = 3;

    thread after_death_vfx( var_0, var_1, var_3 );
    self endon( "death" );

    for (;;)
    {
        wait(var_3);
        playfxontag( var_0, self, var_1 );
        wait 0.2;
        stopfxontag( var_0, self, var_1 );
    }
}

_ID49639()
{
    self endon( "death" );
    self.ignoreme = 1;
}

_ID50581()
{
    level.player takeweapon( level._ID834 );
    level.player takeweapon( level._ID949 );
    level.player giveweapon( "masada_digital_eotech" );
    level.player giveweapon( "deserteagle" );
    level.player switchtoweapon( "masada_digital_eotech" );
}

_ID9847()
{
    wait 0.2;
    var_0 = getent( "airstrip_player", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    wait 1;
    var_1 = getentarray( "ambient_airstrip", "targetname" );
    _ID42407::_ID3339( var_1, 1 );
}

_ID50414()
{
    var_0 = getentarray( "c4_barrel", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID51124 );
}

_ID51124()
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
    var_0._ID47357 = undefined;

    switch ( level._ID15361 )
    {
        case 0:
            var_0._ID47357 = 5;
            break;
        case 1:
            var_0._ID47357 = 4;
            break;
        case 2:
            var_0._ID47357 = 2;
            break;
        case 3:
            var_0._ID47357 = 1;
            break;
    }

    while ( !_ID42237::_ID14385( "player_detonated_explosives" ) )
    {
        var_0 waittill( "damage",  var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9  );

        if ( isdefined( var_2 ) && isplayernumber( var_2 ) )
        {
            if ( var_9 & 8 )
                continue;

            if ( isdefined( level._ID21836 ) && level._ID21836 == gettime() && level._ID15361 != 3 )
                continue;

            if ( var_0._ID47357 > 0 )
                var_0._ID47357 = var_0._ID47357 - 1;

            if ( isdefined( var_5 ) && ( issubstr( var_5, "MOD_GRENADE" ) || issubstr( var_5, "MOD_EXPLOSIVE" ) || issubstr( var_5, "MOD_PROJECTILE" ) ) )
                break;

            if ( var_0._ID47357 == 0 )
                break;
        }
    }

    thread _ID49028();
    _ID42237::_ID14402( "player_detonated_explosives" );
}

_ID49028()
{
    level notify( "c4_barrels_exploding" );
    level endon( "c4_barrels_exploding" );
    level endon( "pre_explosion_happening" );
    level endon( "player_touching_cave_exit" );
    level endon( "player_escaped" );
    level endon( "player_invulnerable" );
    level.player playlocalsound( "af_caves_selfdestruct" );
    playfx( _ID42237::_ID16299( "player_death_explosion" ), level.player.origin );
    earthquake( 1, 1, level.player.origin, 100 );
    setdvar( "ui_deadquote", &"AF_CAVES_MISSIONFAIL_EXPLOSIVES" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
    level.player kill();
}

_ID49164()
{
    thread _ID51124();
    wait(randomfloatrange( 0, 0.6 ));

    if ( _ID42237::_ID8201() )
        playfxontag( _ID42237::_ID16299( "light_c4_blink_nodlight" ), self, "tag_fx" );
    else
        playfxontag( _ID42237::_ID16299( "c4_light_blink_dlight" ), self, "tag_fx" );

    _ID42237::_ID14413( "end_cave_collapse" );
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
        if ( !isdefined( var_7 ) || _func_2a5( var_7 ) )
            continue;

        var_7 dontcastshadows();
    }

    _ID42237::_ID14413( "control_room_getting_breached" );

    foreach ( var_7 in var_2 )
    {
        if ( !isdefined( var_7 ) || _func_2a5( var_7 ) )
            continue;

        var_7 castshadows();
    }
}

_ID54556()
{
    self.ignoreme = 1;
}

_ID50972()
{
    level._ID53400 = [];
    level._ID51874 = [];
    var_0 = getent( "fx_volume_start_to_ledge", "targetname" );
    var_1 = getent( "fx_volume_ledge_to_airstrip", "targetname" );
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );

    for ( var_3 = 0; var_3 < level._ID9242.size; var_3++ )
    {
        var_4 = level._ID9242[var_3];
        var_2.origin = var_4._ID40005["origin"];

        if ( var_2 istouching( var_0 ) )
        {
            level._ID53400[level._ID53400.size] = var_4;
            continue;
        }

        if ( var_2 istouching( var_1 ) )
        {
            level._ID51874[level._ID51874.size] = var_4;
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
    var_4 = var_3 _ID42407::_ID17434( var_3.origin );
    var_3.origin = var_4 + ( 0, 0, 10 );

    for (;;)
    {
        wait(var_2);
        playfxontag( var_0, var_3, "tag_origin" );
        wait 0.2;
        stopfxontag( var_0, var_3, "tag_origin" );
    }
}

bombardment_animate_environment()
{
    var_0 = getent( "explosion_enviro", "targetname" );
    var_0._ID3189 = "bombardment_enviro";
    var_0 _ID42259::_ID32556();
    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );
    wait 0.4;
    var_0 _ID42259::_ID3111( var_0, "bombardment" );
}
