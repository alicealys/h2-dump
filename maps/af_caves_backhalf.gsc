// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49259()
{
    _func_14D( "af_cave_collapse" );
    _func_14E( "hellfire_missile_af_caves_end" );
    _func_14C( "weapon_rpd_MG_Setup" );
    _func_14E( "m4_grenadier" );
    _func_14C( "com_computer_keyboard_obj" );
    _func_14C( "h2_cave_sniper_tower_destroyed" );
    _func_14C( "h2_cave_monitor_screen_unlocked" );
    _func_14C( "com_barrel_piece2_1" );
    _func_150( &"AF_CAVES_USE_KEYBOARD" );
    _func_150( &"AF_CAVES_USE_KEYBOARD_PC" );
    level._ID51305 = 0;
    level._ID54214 = 0;
    level._ID50798 = 0;
    level._ID52697 = 0;
    level._ID47663 = _func_1A2( "riotshield", "targetname" );
    level._ID52273 = 2;
    level._ID44523 = 0;
    level._ID44987 = [];
    level._ID52691 = 0;
    var_0 = _func_1A2( "trigger_multiple", "classname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID922 ) && _func_127( var_2._ID922, 0, 19 ) == "colornodes_backhalf" )
            level._ID44987 = _ID42237::_ID3293( level._ID44987, var_2 );
    }

    var_clear_2
    var_clear_0
    _func_036( "caves_fire", "1" );
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
    var_0 = _func_1A2( "camo_right_damaged", "targetname" );
    var_1 = _func_1A2( "camo_left_damaged", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID18512 );
    _ID42237::_ID3350( var_1, _ID42407::_ID18512 );
    var_2 = _func_1A2( "rock_rubble1", "targetname" );
    var_3 = _func_1A1( "rock_rubble1_col", "targetname" );
    var_3 _meth_82C9();
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_3 _meth_805F();
    var_7 = _func_1A2( "netting_destroyed", "targetname" );
    var_8 = var_7;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_9 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_11 = _func_1A2( "generic_damage", "targetname" );
    _ID42237::_ID3350( var_11, ::_unknown_15F2 );
    _unknown_1379();
    var_12 = _ID42407::_ID16729();
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_unknown_14E1 );
    _ID42237::_ID3350( _func_1F3( "plane_sound", "script_noteworthy" ), _ID42549::_ID26746 );
    _ID42237::_ID3350( _func_1F3( "uav_sound", "script_noteworthy" ), _ID53327::_ID26746 );
    _ID42237::_ID3350( _func_1F3( "fire_missile", "script_noteworthy" ), _ID53327::_ID44024 );
    _ID42407::_ID3344( "hostiles_ledge_fight", ::_unknown_0590 );
    _ID42407::_ID3343( "ledge_prone_guy", ::_unknown_0594 );
    _ID42407::_ID3343( "overlook_heli_fastropers", ::_unknown_082D );
    _ID42407::_ID3343( "skylight_heli_fastropers", ::_unknown_085B );
    _ID42407::_ID3343( "riotshield_flanker", ::_unknown_0876 );
    _ID42407::_ID3343( "shotgun_flanker", ::_unknown_0892 );
    _ID42407::_ID3343( "airstrip_littlebird_hostiles", ::_unknown_11A1 );
    _ID42407::_ID3343( "airstrip_heli_fastropers", ::_unknown_11A3 );
    _ID42407::_ID3344( "ambient_airstrip", ::_unknown_16A1 );
    _ID42407::_ID3344( "airstrip_runners", ::_unknown_119A );
    _ID42407::_ID3343( "ignored", ::_unknown_1874 );
    var_13 = _func_1A1( "littlebird_airstrip", "targetname" );
    var_13 thread _ID42407::_ID1947( ::_unknown_11C6 );
    var_14 = _func_1A1( "blackhawk_airstrip", "targetname" );
    var_14 thread _ID42407::_ID1947( ::_unknown_1195 );
    thread _unknown_18A7();
    thread _unknown_1873();
}

_ID46295()
{
    thread _unknown_053E();
}

_ID51541()
{
    _ID42237::_ID14413( "steamroom_halfway_point" );
    level._ID35278 = ::_unknown_08D8;
    thread _unknown_0583();
    thread _unknown_06B4();
    thread _unknown_1388();
    thread _unknown_057D();
    _func_1A1( "cell_hook1", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook1", "cell_hook" );
    _func_1A1( "cell_hook2", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook2", "cell_hook" );
    _ID42237::_ID14413( "obj_ledge_traverse_complete" );
    thread _unknown_07EA();
}

_ID49214()
{
    level endon( "control_room_explosion" );
    _ID42237::_ID14413( "player_clear_steamroom" );
    _func_078();
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
    level._ID28543 _meth_81AF( 0 );
    level._ID28543._ID764 = 50;
    level._ID28543 _ID42407::_ID12445();
    level._ID28543 thread maps\af_caves_code::_ID52482( "m4_grenadier" );
    _unknown_16CB( "colornodes_backhalf_ledge_start", "script_noteworthy", 1 );
    _unknown_16D9( "colornodes_backhalf_ledge", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_backhalf_ledge_start" );
    thread maps\af_caves_code::military_convoy_loop( "canyon_convoy", "control_room_breached", 3, 4.5 );
    var_0 = _ID42411::_ID35200( "air_convoy_ledge" );
    var_0[0] thread _ID42407::_ID27079( "scn_af_caves_heli_convoy" );
    thread _unknown_0A1E();
    _ID42237::_ID14413( "player_clear_steamroom" );
    thread _ID42407::_ID4422( "ledge_start" );
    var_1 = _ID42411::_ID35200( "zodiacs_canyon_start" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID3189 = "zodiac";
        var_3 _ID42407::_ID3428();
        var_3 _meth_8155( var_3 _ID42407::_ID16120( "bounce" ) );
    }

    var_clear_2
    var_clear_0
    var_5 = _ID42411::_ID35200( "zodiacs_canyon" );
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7._ID3189 = "zodiac";
        var_7 _ID42407::_ID3428();
        var_7 _meth_8155( var_7 _ID42407::_ID16120( "bounce" ) );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_ledge_stairs_01" );
    level._ID28543._ID511 = 1;
    level._ID28543._ID512 = 1;
    thread _unknown_07C7( "ledge_gunners_dead" );
    var_9 = _ID42411::_ID35196( "uav_bridge_01" );
    var_9 thread _unknown_0920();
    _ID42237::_ID14413( "player_ledge_corner_01" );
    thread _unknown_18CF( "jets_canyon_01", "shephered_ledge_dialogue_done" );
    _ID42237::_ID14413( "player_crossed_bridge" );
    level._ID52273 = 0.1;
    _ID42237::_ID14413( "player_ledge_last_stairs" );
    level._ID28543._ID511 = 0;
    level._ID28543._ID512 = 0;
    _ID42237::_ID14413( "player_inside_overlook" );
    thread _unknown_080C();
    level._ID794 notify( "done_with_ledge_sequence" );
    _ID42407::_ID4918( "allies" );
    _ID42407::_ID4918( "axis" );
    level._ID28543 _ID42407::_ID32226( 1 );
    thread _unknown_0A1A();
}

animatelamp()
{
    var_0 = _func_1A1( "cave_wired_lights_02", "targetname" );
    var_0._ID3189 = "lights";
    var_0 _ID42259::_ID32556();
    var_1 = var_0 _ID42407::_ID16120( "idle" );
    var_0 _meth_8155( var_1 );
}

_ID53944( var_0 )
{
    level._ID794 endon( "death" );
    level._ID28543 endon( "death" );
    level._ID28543._ID4867 = 0.1;
    level._ID28543._ID25499 = level._ID28543._ID4867;
    level._ID46878 = _func_03D();
    wait 0.05;

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        if ( _unknown_09F9() && _unknown_08CB( level._ID52273 ) )
            level._ID28543._ID4867 = 50;
        else
            level._ID28543._ID4867 = level._ID28543._ID25499;

        wait 2;
    }

    level._ID28543._ID4867 = 2;
}

_ID44754( var_0 )
{
    var_1 = _func_03D();
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
    self._ID511 = 1;
    _ID42237::_ID14413( "player_ledge_bridge_crossing" );
    self._ID511 = 0;
}

_ID50243()
{
    self._ID309 = 0;
    var_0 = undefined;

    switch ( level._ID15361 )
    {

    }

    endswitch( 4 )  case 3 loc_997 case 2 loc_998 case 1 loc_998 case 0 loc_999
    self._ID525 = 0;
    self._ID513 = 1;
    self._ID1060 = 0;
    self._ID11002 = 1;
    self._ID4867 = self._ID4867 * var_0;
    self._ID10 = self._ID10 * var_0;

    while ( _func_02F( self ) )
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

        if ( _func_02F( var_2 ) && var_2 == level._ID28543 )
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

            level._ID46878 = _func_03D();
            continue;
        }

        if ( _func_02F( var_2 ) && _func_1B3( var_2 ) )
        {
            level._ID52697++;

            if ( level._ID52697 > 4 )
                thread _ID42372::_ID21309( 71 );
        }
    }

    case 1:
    case 2:
    case 0:
}

_ID47166()
{
    _ID42237::_ID14413( "steamroom_done" );
    _ID42237::_ID14402( "obj_ledge_traverse_given" );
    _ID42237::_ID14413( "player_clear_steamroom" );
    _ID42237::_ID14413( "steamroom_ambush_finish_dialogue_ended" );
    _ID42407::_ID28864( "afcaves_pri_pickupriotsheild" );
    _ID42407::_ID10226( 2, ::_unknown_0B1C, "ledge_gunners_dead", "player_crossed_bridge" );
    wait 1;
    _ID42237::_ID14413( "can_talk" );
    _ID42237::_ID14388( "can_talk" );
    _ID42237::_ID14402( "shephered_ledge_dialogue_starting" );
    _ID42407::_ID28864( "afcaves_sc4_gettingthis" );
    _ID42237::_ID14402( "shephered_ledge_dialogue_done" );
    _ID42237::_ID14402( "can_talk" );
    _ID42237::_ID14413( "ledge_gunners_dead" );
    level._ID794 notify( "done_with_ledge_sequence" );
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

        if ( !_unknown_0C3A() && _unknown_0C52() )
        {
            if ( _ID42237::_ID14385( "can_talk" ) )
            {
                _ID42237::_ID14388( "can_talk" );

                if ( var_2 == 3 )
                    var_2 = 0;

                _ID42407::_ID28864( "pickupriotsheild_0" + var_2 );
                var_2++;
                _ID42237::_ID14402( "can_talk" );
                level._ID794 _ID42237::_ID41123( "weapon_change", 5 );
            }
        }
        else if ( _unknown_0C84() )
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
            else if ( !_unknown_0CB0() )
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
            else if ( !_unknown_0CE2() )
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

        level._ID794 _ID42237::_ID41123( "weapon_change", 1 );
        wait 1;
    }
}

_ID45729()
{
    while ( _func_02F( self ) )
        wait 2;

    var_0 = _ID42411::_ID35196( "uav_bridge_02" );
}

_ID50439()
{
    if ( level._ID794 _meth_8188() == "crouch" )
        return 1;
    else
        return 0;
}

_ID50769()
{
    if ( !_unknown_0DD7() )
        return 0;
    else
    {
        var_0 = level._ID794 _meth_831C();

        if ( var_0 == "riotshield" )
            return 1;
        else
            return 0;
    }
}

_ID48978()
{
    var_0 = level._ID794 _meth_8316();

    if ( !_func_02F( var_0 ) )
        return 0;

    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_125( var_2, "riotshield" ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID49119()
{
    var_0 = 1048576;
    var_1 = level._ID47663;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2 ) )
            continue;

        if ( _func_0F5( var_2._ID740, level._ID794._ID740 ) < var_0 )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID50630()
{
    thread _unknown_0E99();
    thread _unknown_0F04();
    thread price_screen();
    thread _unknown_1033();
    thread _unknown_105B();
    _ID42237::_ID14413( "player_enter_skylight" );
    thread _unknown_107E();
}

_ID48807()
{
    _ID42237::_ID14413( "obj_ledge_traverse_complete" );
    _unknown_1D28( "colornodes_backhalf_overlook_to_breach", "script_noteworthy", 1 );
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543._ID35499 = undefined;
    level._ID28543._ID382 = 1024;
    level._ID14382 = 1024;
    var_0 = _ID42411::_ID35196( "blackhawk_skylight_01" );
    var_1 = var_0._ID740;
    var_0._ID28405 = 3;
    var_0 thread maps\af_caves_aud::_ID46647();
    _ID42237::_ID14413( "player_enter_skylight" );
    _ID42237::_ID14402( "unload_skylight_dudes" );
    var_2 = _func_1A1( "volume_overlook", "targetname" );
    var_3 = var_2 _ID42407::_ID15547( "axis" );
    _ID42237::_ID3350( var_3, ::_unknown_1DD9 );
    var_4 = _func_1A2( "smoke_org_skylight", "targetname" );
    thread _unknown_1E0B( var_4, "stop_smoke" );
    wait 1;
    _ID42237::_ID14402( "smoke_thrown" );

    if ( _func_02F( var_0 ) )
        _ID42407::_ID10226( 2, _ID42237::_ID27077, "afcaves_sc5_papaquebec", var_1 );

    thread _unknown_104A();
    wait 10.5;

    if ( _func_02F( var_0 ) )
    {
        var_5 = _ID42237::_ID16638( "skylight1_heli_depart", "targetname" );
        var_0 thread _unknown_0FE9( var_5 );
    }
}

_ID53613()
{
    thread _unknown_0FE4();
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
    if ( !_func_02F( self ) )
        return;

    self endon( "death" );
    thread _ID42411::_ID40218( var_0 );
    self waittill( "reached_dynamic_path_end" );
    self _meth_80B7();
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

    if ( _unknown_1112() )
    {
        level._ID28543 _unknown_1EB4( "afcaves_pri_sheildsthrowfrags" );

        if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
            return;

        wait 10;
    }
    else if ( _unknown_1143() )
    {
        level._ID28543 _unknown_1EDF( "afcaves_pri_sheildsuseflash" );

        if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
            return;

        wait 10;
    }

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    level._ID28543 _unknown_1F16( "afcaves_pri_trytoflank" );

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    wait 10;

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    level._ID28543 _unknown_1F4D( "afcaves_pri_hitfromsides" );

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    wait 10;

    if ( _ID42237::_ID14385( "player_in_skylight_area" ) || _ID42237::_ID14385( "overlook_dudes_decimated" ) )
        return;

    level._ID28543 _unknown_1F83( "afcaves_pri_flankandhitsides" );
}

_ID52478()
{
    if ( level._ID794 _meth_8304( "fraggrenade" ) > 0 )
        return 1;
    else
        return 0;
}

_ID46267()
{
    if ( level._ID794 _meth_8304( "flash_grenade" ) > 0 )
        return 1;
    else
        return 0;
}

_ID51902()
{
    while ( !_ID42237::_ID14385( "player_in_skylight_area" ) )
        wait 3;

    thread _ID42407::_ID4422( "skylight" );
    level._ID28543 _unknown_1FCB( "afcaves_pri_usingthermal" );
    level._ID28543 _unknown_1FD6( "afcaves_pri_moveright" );
    _ID42237::_ID14402( "price_has_given_flank_hint" );
    wait 5;

    if ( _ID42237::_ID14385( "player_going_around_skylight_flank" ) || _ID42237::_ID14385( "player_on_other_side_skylight" ) || _ID42237::_ID14385( "player_approaching_breach" ) )
    {
        _ID42237::_ID14402( "stop_smoke" );
        return;
    }

    var_0 = _func_1A1( "skylight_flanker", "script_noteworthy" );
    var_0 notify( "trigger",  level._ID794  );

    if ( _ID42237::_ID14385( "can_talk" ) )
    {
        _ID42237::_ID14388( "can_talk" );
        level._ID28543 _unknown_2038( "afcaves_pri_drawfire" );
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
        level._ID28543 _unknown_2087( "afcaves_pri_switchingtotherm" );
        _ID42237::_ID14402( "can_talk" );
    }
}

_ID43771()
{
    self endon( "death" );
    self._ID511 = 1;
    self waittill( "jumpedout" );
    self._ID511 = 0;
}

_ID53576( var_0 )
{
    if ( var_0._ID1194 == "axis" )
        var_0 thread _unknown_1385();
}

_ID50059()
{
    self waittill( "death",  var_0  );

    if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
        level notify( "player_killed_an_enemy" );

    if ( _func_02F( self._ID31114 ) && self._ID31114 == "overlook_dudes_dead" )
    {
        level._ID51305++;

        if ( level._ID51305 > 4 )
            _ID42237::_ID14402( "overlook_dudes_decimated" );
    }
}

_ID47114()
{
    self endon( "death" );
    self._ID511 = 1;
    self waittill( "jumpedout" );
    self._ID511 = 0;

    if ( self._ID172 == "actor_enemy_riotshield" )
    {
        _ID42360::_ID30024();
        wait(_func_0BA( 4.8, 5.2 ));
        _ID42360::_ID30023();
    }
}

_ID44406( var_0 )
{
    self endon( "death" );
    self._ID1258 = 0;

    if ( self._ID172 == "actor_enemy_riotshield" )
    {
        _ID42360::_ID30024();
        wait(_func_0BA( 4.8, 5.2 ));

        if ( _func_02F( var_0 ) )
            wait(_func_0BA( 7, 8 ));

        _ID42360::_ID30023();
    }
}

_ID44056()
{
    self endon( "death" );
    self._ID452 = 64;
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

    if ( _func_02F( var_0 ) )
    {
        var_2 = _ID42237::_ID16638( "overlook_heli_depart", "targetname" );
        var_0 thread _unknown_13AF( var_2 );
    }

    _ID42237::_ID14402( "heli_left_overlook" );
}

barrel_explosive()
{
    var_0 = _func_1A1( "combat_cave_barrel", "targetname" );
    var_0 _meth_82CA( 1 );

    for (;;)
    {
        var_0 waittill( "damage",  var_1  );

        if ( var_1 <= 0 )
            continue;

        var_2 = var_0._ID740 + ( 0, 0, 15 );
        _func_156( _ID42237::_ID16299( "barrelexp" ), var_2 );
        var_0 _meth_81E1( var_0._ID740, 512, 150, 25 );
        var_3 = _func_1A1( var_0._ID1191, "targetname" );
        var_3 _meth_80B7();
        var_0 _meth_80B8( "com_barrel_piece2_1" );
        break;
    }
}

tarp_wind_idle()
{
    var_0 = _func_1A1( "combat_cave_tarp", "targetname" );
    var_0 thread maps\af_caves_code::scripted_anim_props( "combat_cave_tarp_wind", "heli_tarp" );
    var_1 = _func_1A1( "blackhawk_overlook_rappel", "targetname" );
    _ID42237::_ID14413( "heli_left_overlook" );
    wait 5.0;
    var_0 _ID42407::_ID3136();
    var_0 thread maps\af_caves_code::scripted_anim_props( "combat_cave_tarp", "heli_tarp" );
}

_ID52028()
{
    thread _unknown_1626();
    thread _unknown_15F3();
    thread _unknown_1962();
    thread _unknown_19B9();
    thread _unknown_1959();
    thread _unknown_2069();
    thread _unknown_209F();
    thread _unknown_20C4();
    thread _unknown_161C();
    thread _unknown_18AB();
    thread _unknown_18F0();
    thread _unknown_19F4();
    thread _unknown_173F();
    _ID42237::_ID14413( "obj_escape_complete" );
    thread _unknown_1B86();
}

_ID54517()
{
    var_0 = _func_1A2( "countdown_tv", "script_noteworthy" );
    _ID42237::_ID3350( var_0, maps\af_caves_code::_ID49655 );
    _ID42237::_ID14413( "obj_door_controls_given" );
}

_ID53696()
{
    level endon( "skylight_dudes_dead" );
    _ID42237::_ID14413( "player_enter_skylight" );
    _ID42237::_ID14421( "player_on_other_side_skylight", "player_has_flanked_skylight" );
    var_0 = _func_0DE( "axis" );
    _ID42237::_ID3350( var_0, ::_unknown_168E );
}

_ID44926()
{
    self endon( "death" );
    var_0 = _func_1A1( "volume_skylight_defend", "targetname" );
    var_1 = _func_1A1( "volume_skylight_breach_hall", "targetname" );

    for (;;)
    {
        wait 1;

        if ( level._ID794 _meth_80B0( var_0 ) || level._ID794 _meth_80B0( var_1 ) )
        {
            thread _unknown_2370();
            level._ID28543._ID4867 = 50;
            continue;
        }

        self notify( "stop_seeking" );
        self _meth_81B2( self._ID740 );
        self _meth_81B5( var_0 );
        self._ID452 = 2048;
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
    var_0 = _func_1A1( "breach_safe_volume", "targetname" );
    var_1 = var_0 _ID42407::_ID15547( "axis" );
    _ID42237::_ID3350( var_1, ::_unknown_23E0 );
    _unknown_23A8( "skylight_finished_colornodes", "script_noteworthy", 1 );
    _ID42407::_ID1804( "skylight_finished_colornodes" );
    _ID42237::_ID14413( "breach_door_closed" );
    level._ID34352 = "af_caves_indoors_breachroom";
    level._ID28543._ID382 = 64;
    level._ID14382 = undefined;
    _unknown_23D6( "colornodes_backhalf_breach_start", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_backhalf_breach_start" );
    var_2 = _func_1A2( "c4barrelPacks", "targetname" );
    _ID42237::_ID3350( var_2, ::_unknown_265D );
    var_2 = _func_1A2( "c4barrelPacks", "script_noteworthy" );
    _ID42237::_ID3350( var_2, ::_unknown_2670 );
    _ID42237::_ID14413( "control_room_getting_breached" );
    thread maps\af_caves_aud::_ID48248( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "none", "af_caves_int" );
    var_1 = _func_0DE( "axis" );
    _ID42237::_ID3350( var_1, ::_unknown_1884 );
    _ID42237::_ID14413( "control_room_breached" );
    level._ID794 _meth_81F1( 1 );
    thread _unknown_2631();
    thread _unknown_1928();
    thread _unknown_1AEA();
    _ID42237::_ID14413( "control_room_cleared" );
    thread _unknown_18CB();
    _ID42237::_ID14413( "obj_door_controls_given" );
    thread _unknown_2535( 20 );
    thread _unknown_1C56();
    _ID42475::_ID34575( "start_escape_sequence" );
    var_3 = _func_1A2( "keyboard", "targetname" );
    _ID42237::_ID3350( var_3, ::_unknown_19AB );
    _ID42237::_ID14413( "keyboard_activated" );
    var_4 = _func_1A2( "player_unlock_door", "targetname" );
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_8 = _func_1A1( "computer_lock", "targetname" );
    var_8 _meth_80B8( "h2_cave_monitor_screen_unlocked" );
    _ID42237::_ID14413( "player_approaching_exit_to_airstrip" );
    thread _unknown_19BE();
    var_9 = _func_0C8( "node_price_escape_final", "targetname" );
    level._ID28543 _meth_81B1( var_9 );
    _ID42237::_ID14413( "player_touching_cave_exit" );
    wait 0.3;
    _unknown_25F9();
    _ID42237::_ID14402( "player_escaped" );
}

_ID50058()
{
    self endon( "death" );
    wait 0.5;
    self._ID486 = 1;

    if ( level._ID15361 < 3 )
    {
        if ( _func_02F( self._ID922 ) && self._ID922 == "veteran" )
            self _meth_80B7();
    }

    for (;;)
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( _func_02F( var_1 ) && _func_1B3( var_1 ) )
            self _meth_8058();
    }
}

_ID53833()
{
    _ID42237::_ID14413( "control_room_cleared" );
    level._ID28543._ID4867 = 2;
    thread _ID42407::_ID4422( "control_room_cleared" );
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543 _meth_81AF( 1 );
    wait 5.0;
    var_0 = _func_1A1( "price_computer_node", "targetname" );
    var_0 _ID42259::_ID3074( level._ID28543, "laptop_stand_idle_start" );
    var_0 _ID42259::_ID3111( level._ID28543, "laptop_stand_idle_start" );
    _ID42237::_ID14402( "price_keyboard" );
    thread _unknown_1A69();
    level._ID28543 thread _unknown_1A84();
    _ID42237::_ID14413( "control_room_door_opened" );
    level._ID28543 _ID42407::_ID10871();
    var_0 notify( "stop_idle" );
    maps\af_caves_aud::stop_price_typing_loop( level._ID28543 );
    level._ID28543 _ID42407::_ID3136();
    var_1 = _func_0C8( "node_price_escape_cover", "targetname" );
    level._ID28543 _meth_81B1( var_1 );
}

price_screen()
{
    var_0 = _func_1A1( "price_typing_controlroom", "targetname" );
    var_0 _meth_805A();
    _ID42237::_ID14413( "price_keyboard" );
    var_0 _meth_8059();
}

_ID48782()
{
    var_0 = _func_1A1( "price_computer_node", "targetname" );
    level._ID28543 endon( "stop_loop" );
    var_0 thread _ID42259::_ID3044( level._ID28543, "laptop_stand_idle", "stop_idle" );
    _ID42237::_ID14413( "control_room_door_opened" );
    var_0 notify( "stop_idle" );
    var_0 _ID42259::_ID3111( level._ID28543, "laptop_stand_yell" );
}

_ID49323()
{
    var_0 = _func_06A( "script_origin", self._ID740 + ( 0, 0, 32 ) );
    var_0 thread _unknown_1B41( "control_room_door_opened" );
    var_0 endon( "death" );
    level endon( "control_room_door_opened" );

    for (;;)
        self waittillmatch( "looping anim",  "end"  );
}

_ID43236( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( var_0 );
    self _meth_80B3();
    wait 0.1;
    self _meth_80B7();
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
        thread _ID42237::_ID27077( "af_caves_selfdestruct", level._ID794._ID740 );
        level._ID794 _meth_80B4( "damage_heavy" );

        if ( _ID42237::_ID14385( "player_touching_cave_exit" ) )
            break;

        var_0++;

        if ( var_0 > 6 )
        {
            level thread _unknown_27CF();
            break;
        }

        if ( var_0 == 1 )
        {
            _func_192( 0.2, 1.75, level._ID794._ID740, 1000 );
            wait 1;
            continue;
        }

        if ( var_0 == 2 )
        {
            _func_192( 0.3, 1.75, level._ID794._ID740, 1000 );
            wait 1.5;
            continue;
        }

        if ( var_0 == 5 )
        {
            _ID42234::_ID13611( "control_room_detonate" );
            _func_192( 0.3, 1.75, level._ID794._ID740, 1000 );
            wait 1;
            continue;
        }

        _func_192( 0.4, 1.75, level._ID794._ID740, 1000 );
        wait 0.75;
    }
}

_ID51751()
{
    _ID42407::_ID16953( "com_computer_keyboard_obj" );
    self _meth_80C6();
    thread _ID42237::_ID44574( level._ID794, &"AF_CAVES_USE_KEYBOARD", &"AF_CAVES_USE_KEYBOARD_PC", "trigger" );
    self waittill( "trigger" );
    var_0 = _func_1A2( "keyboard", "targetname" );
    _ID42407::_ID3319( var_0, "trigger" );
    self _meth_80C7();
    _ID42407::_ID36591();
    var_1 = level._ID794 _meth_8188();
    var_2 = 0.5;

    if ( var_1 == "crouch" )
        var_2 = 0.5;
    else if ( var_1 == "prone" )
        var_2 = 0.8;

    level._ID794 _meth_8189( "stand" );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    var_3 = _func_06A( "script_origin", self._ID740 );
    var_3._ID65 = self._ID65;
    _ID42407::_ID3428( "keyboard" );
    self _meth_80B8( "com_computer_keyboard_black_animated" );
    level._ID794 thread _ID42407::_ID27079( "scn_afcaves_plr_keyboard_typing" );
    thread _unknown_1E2A( self );
    thread _unknown_1D95();
    var_3 _ID42407::_ID49392( "keyboard_control", [ self ], 0, var_2, 1, 0 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
    var_3 _meth_80B7();

    if ( !_ID42237::_ID14385( "keyboard_activated" ) )
    {
        level notify( "keyboard_activated" );
        _ID42237::_ID14402( "keyboard_activated" );
    }
}

animation_dof_computer_typing()
{
    level._ID794 waittill( "player_anim_started" );
    var_0 = _ID54167::_ID43386( "computer_typing" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 8, 8 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 3.0 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 0.8 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 0.9 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.3 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.5 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.8 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.95 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.15 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.25 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48166();
}

handledeathwhiletyping( var_0 )
{
    level endon( "obj_escape_complete" );
    level endon( "kill_timer" );
    level endon( "keyboard_activated" );
    level waittill( "mission failed" );
    level._ID794._ID49929 _meth_814B();
    level._ID794._ID49929 _meth_80B7();
    var_0 _meth_814B();
    level._ID794 _meth_8055();
    level._ID794 _meth_8334( 0 );
}

_ID53848()
{
    _ID42237::_ID14413( "obj_overlook_to_skylight_complete" );
    _ID42237::_ID14402( "obj_breach_given" );
    wait(_func_0BA( 1, 1.25 ));

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
    var_0 = _func_1A1( "control_room_volume", "script_noteworthy" );

    if ( level._ID794 _meth_80B0( var_0 ) )
        thread _ID42407::_ID4422( "timer_start" );

    level._ID28543 notify( "nag_anim" );
    _ID42237::_ID14402( "obj_door_controls_given" );
    _ID42237::_ID14413( "control_room_door_opened" );
    wait 2;
    level._ID28543 _unknown_2B1C( "afcaves_pri_run" );
    wait 0.5;

    if ( !_ID42237::_ID14385( "player_touching_cave_exit" ) )
        level._ID28543 _unknown_2B35( "afcaves_pri_gonnablow" );
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
        level._ID28543 _unknown_2B68( "breach_nag_0" + var_0 );
        var_0++;

        if ( var_0 > 3 )
            var_0 = 0;

        wait(_func_0BA( 10, 15 ));
    }
}

_ID50714( var_0, var_1 )
{
    var_2 = self._ID48191;
    var_3 = 4;
    self _meth_82BF( self._ID65 + ( 0, var_2, 0 ), 4, 1.5, 1.5 );
    thread _ID42407::_ID27079( "af_caves_escape_door_open" );
    wait(var_3);

    if ( _func_02F( var_1 ) )
        _ID42237::_ID14402( var_1 );
}

_ID53775( var_0, var_1 )
{
    var_2 = self._ID43865;
    var_3 = 7;
    self _meth_82BF( self._ID65 + ( 0, var_2, 0 ), var_3, 0.5, 0.5 );
    wait(var_3 - 1);

    if ( var_0 == "left" )
        thread _ID42407::_ID27079( "af_caves_escape_door_close" );

    if ( _func_02F( var_1 ) )
        _ID42237::_ID14402( var_1 );
}

control_room_doors()
{
    var_0 = _func_1A2( "exitdoor_right", "targetname" );
    var_1 = _func_1A2( "exitdoor_left", "targetname" );
    var_2 = _func_1A1( "controlroom_col", "targetname" );
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _meth_82C1( 80, 4 );
    }

    var_clear_2
    var_clear_0
    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];
        var_4 _meth_82C1( -85, 4 );
    }

    var_clear_1
    var_clear_0
    var_2 thread _ID42407::_ID27079( "af_caves_escape_door_close" );
    _ID42237::_ID14402( "control_room_doors_closed" );
    _ID42237::_ID14413( "keyboard_activated" );
    var_8 = var_0;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_4 = var_8[var_9];
        var_4 _meth_82C1( -85, 4 );
    }

    var_clear_1
    var_clear_0
    var_10 = var_1;

    for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
    {
        var_4 = var_10[var_11];
        var_4 _meth_82C1( 90, 4 );
    }

    var_clear_1
    var_clear_0
    var_2 thread _ID42407::_ID27079( "af_caves_escape_door_close" );
    var_2 _meth_805F();
    var_2 _meth_80B7();
    _ID42237::_ID14402( "control_room_door_opened" );
}

_ID50015()
{
    _ID42237::_ID14413( "control_room_explosion" );
    _func_078();
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
    var_0 = _func_1A1( "trigger_breach_icon", "targetname" );
    var_0 _ID42237::_ID38863();
    wait 2;
    var_1 = level._ID6008[2];
    var_1 _meth_805A();
    var_2 = _func_1A1( "breach_solid", "targetname" );
    var_2 _meth_82C9();
    var_2 _meth_805F();
    var_3 = _func_1A1( "blast_door_slam", "targetname" );
    var_3._ID740 = var_1._ID740;
    var_4 = var_3._ID65;
    var_3._ID65 = var_3._ID65 + ( 0, -74, 0 );
    _ID42237::_ID14413( "player_approaching_breach" );
    var_5 = _ID42407::_ID35168( "control_room_door_close_guy", 1 );
    var_5 _ID42407::_ID32353( 1 );
    var_5 _ID42407::_ID32352( 1 );
    var_5 thread _ID42407::_ID22746();
    var_6 = _func_0C8( "sheppard_door_peek", "targetname" );
    var_6 _ID42259::_ID3027( var_5, "alert2look_cornerR" );
    var_6 _ID42259::_ID3020( var_5, "alert2look_cornerR" );
    _ID42237::_ID14402( "breach_door_closed" );
    var_3 _meth_82C1( 74, 0.5 );
    var_3 thread _ID42237::_ID27077( "scn_afcaves_doorslam_brace", var_3._ID740 );
    var_2 _meth_82C8();
    var_2 _meth_805E();
    wait 0.66;
    var_3 _meth_805A();
    var_3 _meth_82C9();
    var_1 _meth_8059();
    _ID42237::_ID14402( "obj_breach_show" );
    wait 0.5;
    var_0 _ID42237::_ID38865();

    if ( _func_02F( var_5 ) )
    {
        var_5 _ID42407::_ID36519();
        var_5 _meth_80B7();
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
    level.digit_array_hundredths = _unknown_25EC( "hundredths_plane" );
    level.digit_array_tenths = _unknown_25F6( "tenths_plane" );
    level.digit_array_seconds = _unknown_2600( "seconds_plane" );
    level.digit_array_tens_of_seconds = _unknown_2609( "tens_of_seconds_plane" );
    level.timer_dots = _func_1A2( "timer_dot", "targetname" );
    level.large_tv = _func_1A2( "large_tv_img", "targetname" );
    var_0 = level.digit_array_hundredths;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        _unknown_2630( var_1 );
    }

    var_clear_2
    var_clear_0
    var_3 = level.digit_array_tenths;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        _unknown_2651( var_4 );
    }

    var_clear_2
    var_clear_0
    var_6 = level.digit_array_seconds;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        _unknown_2672( var_7 );
    }

    var_clear_2
    var_clear_0
    var_9 = level.digit_array_tens_of_seconds;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];
        _unknown_2693( var_10 );
    }

    var_clear_2
    var_clear_0
    var_12 = level.timer_dots;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        var_13 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_15 = level.large_tv;

    for ( var_17 = _func_1DA( var_15 ); _func_02F( var_17 ); var_17 = _func_1BF( var_15, var_17 ) )
    {
        var_16 = var_15[var_17];
        var_16 _meth_805A();
    }

    var_clear_2
    var_clear_0
}

digit_reset( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
}

cqb_timer_get_planes( var_0 )
{
    var_1 = [];
    var_2 = [];

    for ( var_3 = 0; var_3 <= 9; var_3++ )
    {
        var_1 = _func_1A2( var_0 + "_" + _ID42237::_ID37877( var_3 ), "targetname" );
        var_4 = var_1;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_2[var_6][var_3] = var_5;
        }

        var_clear_2
    }

    return var_2;
}

cqb_digit_reset( var_0, var_1 )
{
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_4 != var_1 )
        {
            var_3 _meth_805A();
            continue;
        }

        var_3 _meth_8059();
    }

    var_clear_2
}

cqb_timer_think()
{
    level endon( "danger_close_last_missile_has_hit" );
    wait 0.1;
    level._ID36040 = _func_03D();
    var_0 = level.digit_array_hundredths;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        _unknown_27BF( var_1, 0 );
    }

    var_clear_2
    var_clear_0
    var_3 = level.digit_array_tenths;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        _unknown_27E2( var_4, 3 );
    }

    var_clear_2
    var_clear_0
    var_6 = level.digit_array_seconds;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        _unknown_2804( var_7, 9 );
    }

    var_clear_2
    var_clear_0
    var_9 = level.digit_array_tens_of_seconds;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];
        _unknown_2827( var_10, 1 );
    }

    var_clear_2
    var_clear_0
    var_12 = level.timer_dots;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        var_13 _meth_8059();
    }

    var_clear_2
    var_clear_0
    var_15 = level.large_tv;

    for ( var_17 = _func_1DA( var_15 ); _func_02F( var_17 ); var_17 = _func_1BF( var_15, var_17 ) )
    {
        var_16 = var_15[var_17];
        var_16 _meth_8059();
    }

    var_clear_2
    var_clear_0
    var_18 = 1;
    var_19 = 1;
    var_20 = 1;
    var_21 = 3;
    var_22 = 0;

    for (;;)
    {
        var_23 = 20 - _func_03D() - level._ID36040 * 0.001;
        var_24 = _func_0E7( var_23 );
        var_25 = _func_0C1( var_23 - var_24 * 10 );
        var_26 = _func_0C1( _ID42237::_ID648( var_24, 10 ) );
        var_27 = _func_0C1( _func_0E7( var_24 * 0.1 ) );
        var_22 = _ID42237::_ID37527( var_22 == 0, 5, 0 );

        if ( var_22 != var_18 )
        {
            var_18 = var_22;
            var_28 = level.digit_array_hundredths;

            for ( var_30 = _func_1DA( var_28 ); _func_02F( var_30 ); var_30 = _func_1BF( var_28, var_30 ) )
            {
                var_29 = var_28[var_30];
                _unknown_29D4( var_22, var_29 );
            }

            var_clear_2
            var_clear_0
        }

        if ( var_25 != var_19 )
        {
            var_19 = var_25;
            var_31 = level.digit_array_tenths;

            for ( var_33 = _func_1DA( var_31 ); _func_02F( var_33 ); var_33 = _func_1BF( var_31, var_33 ) )
            {
                var_32 = var_31[var_33];
                _unknown_29B5( var_25, var_32 );
            }

            var_clear_2
            var_clear_0
        }

        if ( var_26 != var_20 )
        {
            var_20 = var_26;
            var_34 = level.digit_array_seconds;

            for ( var_36 = _func_1DA( var_34 ); _func_02F( var_36 ); var_36 = _func_1BF( var_34, var_36 ) )
            {
                var_35 = var_34[var_36];
                _unknown_29E0( var_26, var_35 );
            }

            var_clear_2
            var_clear_0
        }

        if ( var_27 != var_21 )
        {
            var_21 = var_27;
            var_37 = level.digit_array_tens_of_seconds;

            for ( var_39 = _func_1DA( var_37 ); _func_02F( var_39 ); var_39 = _func_1BF( var_37, var_39 ) )
            {
                var_38 = var_37[var_39];
                _unknown_2A0B( var_27, var_38 );
            }

            var_clear_2
            var_clear_0
        }

        wait 0.05;
    }
}

cqb_timer_change_digit( var_0, var_1 )
{
    switch ( var_0 )
    {

    }

    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    endswitch( 10 )  case 9 loc_2AFB case 8 loc_2AFB case 7 loc_2AFB case 6 loc_2AFB case 5 loc_2AFB case 4 loc_2AFB case 3 loc_2AFB case 2 loc_2AFB case 1 loc_2AFB case 0 loc_2AFB
}

cqb_timer_change_digit_hundredths( var_0, var_1 )
{
    switch ( var_0 )
    {

    }

    case 5:
    endswitch( 2 )  case 5 loc_2B78 case 0 loc_2B78
}

_ID54646()
{
    thread _unknown_2CED();
    thread _unknown_2BB2();
    thread _unknown_2BC9();
    thread _unknown_2F66();
    thread _unknown_2FC1();
    thread _unknown_2BB0();
    thread _unknown_2FC9();
    thread _unknown_3128();
    thread _unknown_2BC6();
}

_ID52974()
{
    _ID42237::_ID14413( "tower_explosion" );
    var_0 = _func_1A1( "tower_trigger", "targetname" );
    var_0 notify( "trigger" );
}

tower_destroyed()
{
    var_0 = _func_1A1( "sniper_tower_clean", "targetname" );
    _ID42237::_ID14413( "tower_explosion" );
    _func_31C( 1 );
    var_0 _meth_80B8( "h2_cave_sniper_tower_destroyed" );
}

_ID53135()
{
    _ID42237::_ID14413( "danger_close_dialogue_end" );
    wait 2;
    var_0 = _func_1A2( "airstrip_runners", "targetname" );
    _ID42407::_ID3339( var_0, 1 );
    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );
    var_1 = _func_1A2( "ambient_airstrip", "targetname" );
    _ID42407::_ID3339( var_1, 1 );
}

_ID51553()
{
    var_0 = _func_1A2( "camo_right_damaged", "targetname" );
    var_1 = _func_1A2( "camo_left_damaged", "targetname" );
    var_2 = _func_1A2( "camo_right_pristine", "targetname" );
    var_3 = _func_1A2( "camo_left_pristine", "targetname" );
    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );
    _ID42237::_ID3350( var_2, _ID42407::_ID18512 );
    _ID42237::_ID3350( var_3, _ID42407::_ID18512 );
    _ID42237::_ID3350( var_0, _ID42407::_ID33997 );
    _ID42237::_ID3350( var_1, _ID42407::_ID33997 );
}

h2_airstrip_player_explosion( var_0 )
{
    _func_0DB( "hud_showStance", "0" );
    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "actionSlotsHide", 1 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_8328( 1 );
    level._ID794 _meth_81F1( 0 );
    level._ID794 _meth_80F6();
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_8189( "stand" );
    var_1 = _ID42237::_ID35164();
    var_1._ID740 = level._ID794._ID740;
    var_1._ID65 = var_0._ID65;
    _func_157( _ID42237::_ID16299( "cave_explosion_exit" ), var_1, "tag_origin" );
    _func_192( 1, 1, level._ID794._ID740, 100 );
    level notify( "player_invulnerable" );
    wait 0.25;
    var_2 = _func_093( level._ID794._ID740, 2 );
    var_3 = _ID42407::_ID35028( "worldbody", var_2 );
    var_3._ID65 = var_0._ID65;
    level._ID794 _meth_8086( var_3, "tag_player" );
    var_4 = _func_1A1( "controlroom_explosion_light", "targetname" );
    var_3 _meth_848A( var_4._ID740 );
    thread _unknown_2DF5( var_3 );
    var_5 = _func_067( var_3 _ID42407::_ID16120( "explosion" ) );
    var_3 thread _ID42259::_ID3111( var_3, "explosion" );
    _ID42237::_ID24938( 0.5, ::_func_157, _ID42237::_ID16299( "player_cave_escape" ), var_3, "tag_origin" );
    wait(var_5);
    level._ID794._ID50232 = var_3;
    var_1 _meth_80B7();
    level._ID794 _meth_81F1( 0.2 );
}

animation_dof_explosion_knockout( var_0 )
{
    var_1 = _ID54167::_ID43386( "Explosion Knock-out" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, -1, 8, 8 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 1.25 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.9 ) _ID54167::_ID47198( 0.12, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 1.05 ) _ID54167::_ID47198( 0.12, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.8 );
    var_1 _ID54167::_ID48166();
}

h2_airstrip_player_explosion_wake()
{
    level._ID794 _meth_8055();
    level._ID794 _meth_8189( "crouch" );
    var_0 = level._ID794._ID50232;
    _ID42259::_ID3018( var_0, "explosion_wake" );
    waitframe;
    level._ID794._ID740 = var_0 _meth_818C( "tag_player" );
    level._ID794._ID65 = var_0 _meth_818D( "tag_player" );
    level._ID794 _meth_8086( var_0, "tag_player" );
    waittillframeend;
    thread _unknown_2F6D( var_0 );
    wait 2;
    _ID42259::_ID3111( var_0, "explosion_wake" );
    level._ID794 _meth_8055();
    var_0 _meth_80B7();
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_8121( 1 );
    level._ID794 _meth_830F( 1 );
    level._ID794 _meth_830C( 1 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
}

animation_dof_explosion_wake( var_0 )
{
    var_1 = _ID54167::_ID43386( "Explosion Wake" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.5, -1, 8, 8 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 15.0 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 40, 0.05, 0 );
    var_1 _ID54167::_ID48800( 0.1 ) _ID54167::_ID43500( 9.5, 0 );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::_func_032, undefined, "ui_consciousness_init", 1 ) _ID54167::_ID43376( ::_func_032, undefined, "ui_consciousness_play", 1 ) _ID54167::_ID43376( ::_func_0DB, undefined, "ui_consciousnessVignetteDarkness", 0.5 );
    var_1 _ID54167::_ID48800( 3.35 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 8.95 ) _ID54167::_ID47198( 0.06, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.5 );
    var_1 _ID54167::_ID48800( 10.4 ) _ID54167::_ID47198( 0.08, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48166();
}

_ID44851()
{
    _ID42237::_ID14413( "obj_escape_complete" );
    _ID42407::_ID4917( "allies" );
    thread _ID42407::_ID4917( "axis" );
    level._ID794 _meth_82FF( "af_caves_selfdestruct" );
    var_0 = _func_1A1( "cave_exit_playerview_01", "targetname" );
    _unknown_3032( var_0 );
    level._ID794 _meth_80F5();
    _ID42475::_ID34575( "start_escape_cave_collapse" );
    level._ID5261 = _ID42313::_ID9125( "black", 1 );
    level._ID5261._ID408 = 0;
    _ID42237::_ID3350( level._ID53400, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID51874, _ID42237::_ID26402 );
    level._ID28543._ID512 = 1;
    level._ID28543 _ID42407::_ID10949();
    level._ID28543._ID507 = 1;
    level._ID28543 _meth_81AF( 1 );
    var_1 = _ID42407::_ID3339( _func_1A2( "airstrip_danger_close_shooters", "targetname" ), 1 );
    _ID42237::_ID3350( var_1, ::_unknown_3308 );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3.cheat.ignorewolfthink = 1;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14402( "player_detonated_explosives" );
    var_5 = 17;
    level._ID794 _meth_818E( "af_cave_collapse", var_5 );
    thread _ID42407::_ID4433( 1 );
    level._ID794 _meth_8121( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_830C( 0 );
    level._ID794 _meth_8122( 1 );
    _func_076( 2, 0.1 );
    _func_0DB( "ui_hidemap", 1 );
    _func_0DB( "hud_showStance", "0" );
    thread _unknown_351D();
    var_6 = _func_1A2( "rock_rubble1", "targetname" );
    var_7 = _func_1A1( "rock_rubble1_col", "targetname" );
    var_7 _meth_82C8();
    var_8 = var_6;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_9 _meth_8059();
    }

    var_clear_2
    var_clear_0
    var_7 _meth_805E();
    level._ID28543._ID24424 = 0.5;
    _func_0DB( "g_friendlyNameDist", 0 );
    var_11 = _func_06A( "script_origin", ( 9206.93, 5198.42, -3251.71 ) );
    var_12 = _func_1A1( "price_fighting_cave_exit", "targetname" );
    var_11 _ID42259::_ID3018( level._ID28543, var_12._ID70 );
    wait 0.1;
    wait 2;
    var_11 thread _unknown_3221();
    _ID42237::_ID14402( "danger_close_dialogue_start" );
    wait 1;
    _ID42475::_ID34575( "end_first_blackout" );
    level._ID5261 _meth_808B( 2 );
    level._ID5261._ID55 = 0;
    wait 1;
    var_11 thread _ID42259::_ID3111( level._ID28543, var_12._ID70 );
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    wait 2.5;
    _func_076( 0.2, 1.5 );
    wait 1;
    _func_076( 2, 1.5 );
    wait 1.5;
    _func_076( 0.2, 1 );
    thread _ID42234::_ID13611( "under_fire_2" );
    wait 1;
    thread _ID42234::_ID13611( "under_fire" );
    _func_076( 0, 0.5 );
    wait 2;
    _func_076( 0, 2 );
    _ID42475::_ID34575( "start_second_blackout" );
    wait 2;
    _ID42237::_ID14413( "danger_close_dialogue_end" );
    wait 1.5;
    _ID42407::_ID14403( "price_falling_back", 0.1 );
    var_13 = _func_0C8( "node_price_fallback", "targetname" );
    level._ID28543 _meth_81B1( var_13 );
    level._ID28543._ID452 = 32;
    wait 0.5;
    _ID42475::_ID34575( "end_second_blackout" );
    wait 1;
    level._ID794 _meth_8334( 0 );
    var_14 = var_1;

    for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
    {
        var_3 = var_14[var_15];
        var_3.cheat.ignorewolfthink = 0;
    }

    var_clear_1
    var_clear_0
    thread _unknown_358E();
    thread _unknown_35F1();
    wait 1;
    _func_0DB( "ui_hidemap", 0 );
    _func_0DB( "hud_showStance", "1" );
    _func_0DB( "compass", "1" );
    wait 1;
    _func_0DB( "g_friendlyNameDist", 15000 );
    level._ID28543._ID24424 = 1.0;
    level._ID794 _meth_81F1( 1 );
    _ID42475::_ID34575( "end_escape_cave_collapse" );
    wait 3;
    _func_0DB( "ammoCounterHide", "0" );
    _func_0DB( "actionSlotsHide", 0 );
    level._ID794 _meth_8329();
    level._ID794 _meth_80F7();
    wait 3;
    level._ID28543._ID512 = 0;
    level._ID28543 _ID42407::_ID12508();
    level._ID28543._ID507 = 0;
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543 _ID42407::_ID12445();
    level._ID28543._ID382 = 0;
    level._ID14382 = 0;
    _unknown_3A1C( "colornodes_backhalf_airstrip_start", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_backhalf_airstrip_start" );
    _unknown_3A32( "colornodes_backhalf_airstrip", "script_noteworthy", 1 );
    thread _unknown_3B37( "littlebird_airstrip", "player_airstrip_start" );
    _ID42407::_ID10226( 1, _ID42411::_ID35196, "blackhawk_airstrip" );
    _ID42237::_ID14413( "player_airstrip_start" );
    level._ID28543 _meth_81AF( 0 );
    _ID42237::_ID14413( "player_airstrip_midpoint" );
    thread _ID42407::_ID4422( "airstrip_fight_start" );
    level._ID28543._ID382 = 1024;
    level._ID14382 = 1024;
    _ID42237::_ID14413( "player_approaching_end_tent" );
    thread _ID42407::_ID4422( "airstrip_fight_start" );
    _ID42237::_ID14413( "player_entering_end_tent" );
    _ID42237::_ID14413( "level_exit" );
    level._ID28543._ID512 = 1;
    level._ID28543 _ID42407::_ID10949();
    level._ID28543 _ID42407::_ID32353( 1 );
    level._ID28543 _ID42407::_ID32352( 0 );
    _ID42475::_ID34575( "start_end_black_screen" );
    level._ID794 _meth_80F6();
    level._ID794._ID511 = 1;
    level._ID5261 _meth_808B( 3 );
    level._ID5261._ID55 = 1;
    level._ID28543 _unknown_3AEF( "afcaves_pri_rivernearby" );
    _ID42325::_ID30753( "af_caves" );
    _ID42407::_ID24793();
}

_ID47822()
{
    level._ID794 _meth_8334( 1 );
}

_ID47528()
{
    self endon( "death" );
    self._ID464 = 0;

    while ( !_ID42237::_ID14385( "danger_close_last_missile_has_hit" ) )
    {
        self._ID452 = 32;
        wait 0.1;
    }

    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );

    if ( _func_02F( self._ID22746 ) && self._ID22746 )
        _ID42407::_ID36519();

    self _meth_8058();
}

_ID53054()
{
    self endon( "death" );
    thread _unknown_3703();
    thread _unknown_3712();
    _ID42237::_ID14402( "unload_airstrip_blackhawk_dudes" );
    self waittill( "unloaded" );
    var_0 = _ID42237::_ID16638( "blackhawk_airstrip_heli_depart", "targetname" );
    thread _ID42411::_ID40218( var_0 );
    self _meth_828D( 50 );
    self waittill( "reached_dynamic_path_end" );
    self _meth_80B7();
}

_ID43453()
{
    self endon( "death" );
    var_0 = _func_1A2( "blackhawk_crash_loc", "script_noteworthy" );

    for (;;)
    {
        self._ID26573 = _ID42237::_ID16182( self._ID740, var_0 );
        wait 1;
    }
}

blackhawk_airstrip_collide_with_tower()
{
    self endon( "crash_done" );
    self waittill( "deathspin" );
    var_0 = _func_1A1( "tower_script_origin", "targetname" );
    var_1 = _func_1A1( "tower_trigger", "targetname" );

    while ( !_ID42237::_ID14385( "tower_explosion" ) )
    {
        if ( _func_0F5( self._ID740, var_0._ID740 ) <= 90000 )
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
    self._ID511 = 1;
    self._ID507 = 1;
    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );
    self _meth_8057( self._ID486 + 1000, self._ID740 );
}

_ID50929()
{
    self endon( "death" );
    self._ID12571 = 1;
    self waittill( "unloaded" );
    self _meth_828D( 10 );
    thread _ID42407::_ID40191( 32 );
    wait 2;
    self _meth_828D( 50 );
    var_0 = _ID42237::_ID16638( "airstrip_littlebird_01_depart", "targetname" );
    thread _ID42411::_ID40218( var_0 );
    self waittill( "reached_dynamic_path_end" );
    self _meth_80B7();
}

_ID53785()
{
    self endon( "death" );
    _ID42407::_ID8925( "on" );
    self._ID511 = 1;
    self waittill( "jumpedout" );
    self._ID511 = 0;
}

_ID54684()
{
    self endon( "death" );
    _ID42407::_ID8925( "on" );
    self._ID511 = 1;
    self waittill( "jumpedout" );
    self._ID511 = 0;
}

_ID49535()
{
    var_0 = _func_1A2( "missileOrgs", "targetname" );
    var_0 = _ID42237::_ID15567( level._ID794._ID740, var_0 );
    var_1 = undefined;
    var_2 = 0;
    var_3 = var_0;

    for ( var_7 = _func_1DA( var_3 ); _func_02F( var_7 ); var_7 = _func_1BF( var_3, var_7 ) )
    {
        var_4 = var_3[var_7];
        var_2++;
        var_5 = _func_1A1( var_4._ID1191, "targetname" );
        var_6 = _func_1C8( "hellfire_missile_af_caves_end", var_4._ID740, var_5._ID740 );
        var_6 thread _ID42407::_ID27079( "scn_afcaves_incoming" );

        if ( var_2 == var_0.size )
            var_1 = 1;

        var_6 thread _unknown_3928( var_1 );
        wait 0.2;
    }

    var_clear_4
    var_clear_0
    wait 2;
    _ID42237::_ID14402( "start_airstrip_aftermath_fx" );
    wait 2;
    _ID42237::_ID14402( "danger_close_moment_over" );
}

_ID43910( var_0 )
{
    var_1 = _func_06A( "script_origin", self._ID740 );
    var_1 _meth_8053( self );
    self waittill( "death" );

    if ( _func_02F( var_0 ) )
    {
        _ID42237::_ID14402( "danger_close_last_missile_has_hit" );
        var_1 thread _ID42237::_ID27077( "exp_javelin_armor_destroy" );
        _func_192( 0.5, 1.5, level._ID794._ID740, 5000 );
        thread _ID42234::_ID13611( "rpg_damage" );
        _func_18F( var_1._ID740, 512, 1000, 1000 );
    }
    else
        _func_192( 0.2, 2.5, level._ID794._ID740, 5000 );

    level._ID794 _meth_80B4( "damage_heavy" );
    wait 0.05;
    var_1 _meth_80B7();

    if ( _func_02F( var_0 ) )
    {
        _func_076( 3, 0.1 );
        wait 1;
        _func_076( 0, 3 );
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
    level._ID28543 thread _unknown_3E6A( "afcaves_pri_fallback2" );
    _ID42237::_ID14413( "danger_close_moment_over" );
    level._ID28543 _unknown_3E7E( "afcaves_pri_sincewhen" );
    thread _ID42407::_ID4422( "airstrip_fight_start" );
    wait 1.5;
    _ID42237::_ID14402( "obj_level_end_given" );
    level._ID28543 _unknown_3E9D( "afcaves_pri_stayclose" );
    _ID42407::_ID4918( "allies" );
    level._ID28543 _ID42407::_ID32226( 1 );
    wait 2;

    if ( !_ID42237::_ID14385( "player_airstrip_start" ) )
        level._ID28543 thread _unknown_3EC4( "afcaves_pri_tothewest" );

    _ID42237::_ID14413( "player_airstrip_start" );
    _ID42407::_ID28864( "afcaves_schq_riskyforflightops" );
    _ID42407::_ID28864( "afcaves_shp_takezodiacs" );
    _ID42407::_ID28864( "afcaves_schq_yessir2" );
    _ID42407::_ID4918( "axis" );
    _ID42237::_ID14413( "player_airstrip_midpoint" );
    _ID42237::_ID14413( "player_entering_end_tent" );
    level._ID28543 _unknown_3F09( "afcaves_pri_gettingaway2" );
    wait 10;

    if ( !_ID42237::_ID14385( "level_exit" ) )
        level._ID28543 _unknown_3F1F( "afcaves_pri_followmeletsgo" );
}

_ID53498()
{

}

_ID54378()
{
    var_0 = _func_1A1( "tower_trigger", "targetname" );
    var_0 waittill( "trigger" );
    _func_18F( var_0._ID740, 256, 1000, 900 );
    _func_192( 0.2, 1, level._ID794._ID740, 1024 );
    level._ID794 _meth_80B4( "damage_light" );
    var_0 thread _ID42237::_ID27077( "explo_wood_tower", var_0._ID740 );
    var_1 = _func_1A1( "tower_victims", "targetname" );
    var_2 = _func_1A1( "tower_mg", "script_noteworthy" );
    var_3 = var_2 _meth_80F2();

    if ( _func_1A7( var_3 ) )
        var_3 notify( "stop_using_built_in_burst_fire" );

    var_2 _meth_805A();
    var_1 = _func_1A1( "tower_victims", "targetname" );
    _ID42237::_ID3350( _func_0E1(), maps\af_caves_code::_ID46868, var_1 );
}

_ID47206()
{
    self endon( "death" );

    for (;;)
    {
        _func_157( _ID42237::_ID16299( "littlebird_fire_trail" ), self, "tag_deathfx" );
        wait 0.1;
    }
}

_ID50171()
{
    var_0 = _ID42411::_ID35196( "littlebird_crasher" );
    var_0._ID26573 = _func_1A1( "airstip_crash", "script_noteworthy" );
    var_0 _meth_826F( level._ID794 );
    var_0 _ID42411::_ID16988();
    _ID42237::_ID14413( "danger_close_moment_over" );
    var_0 thread _unknown_3D14();
    wait 2.5;
    var_0 _ID42411::_ID16987();
    var_0 notify( "death" );
    var_0 _meth_8270();
    var_0 waittill( "crash_done" );
    _ID42234::_ID13611( "helicrash_01" );
    _func_192( 0.3, 1, level._ID794._ID740, 1024 );
    level._ID794 _meth_80B4( "damage_light" );
    var_1 = _func_1A2( "netting_pristine", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_5 = _func_1A2( "netting_destroyed", "targetname" );
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 _meth_8059();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_approaching_end_tent" );
}

_ID47981()
{
    _ID42237::_ID14413( "shephered_ledge_dialogue_starting" );
    var_0 = 2;
    _func_1E3( var_0, "active", &"AF_CAVES_OBJ_LEDGE_TRAVERSE" );
    _func_1E9( var_0 );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "player_ledge_stairs_01" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
    var_1 = _func_1A1( "obj_ledge_gunners", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_ledge_end" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _func_114( var_0, "done" );
    _ID42237::_ID14402( "obj_ledge_traverse_complete" );
}

_ID46943()
{
    _ID42237::_ID14413( "obj_ledge_traverse_complete" );
    var_0 = 0;
    _func_1E5( var_0, "current" );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "player_inside_overlook" );
    _func_114( var_0, "done" );
    _ID42237::_ID14413( "player_inside_overlook" );
    var_0 = 3;
    _func_1E3( var_0, "current", &"AF_CAVES_OBJ_FLANK_AND_KILL" );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14415( "price_has_given_flank_hint", "obj_overlook_to_skylight_complete" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
    var_1 = _func_1A1( "obj_flank_skylight_01", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14415( "player_going_around_skylight_flank", "player_on_other_side_skylight", "obj_overlook_to_skylight_complete" );
    var_1 = _func_1A1( "obj_flank_skylight_02", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14415( "skylight_dudes_dead", "player_right_near_breach", "obj_overlook_to_skylight_complete" );
    _func_114( var_0, "done" );

    if ( !_ID42237::_ID14385( "obj_overlook_to_skylight_complete" ) )
        _ID42237::_ID14402( "obj_overlook_to_skylight_complete" );
}

_ID45639()
{
    _ID42237::_ID14413( "obj_breach_given" );
    var_0 = 4;
    _func_1E3( var_0, "active", &"AF_CAVES_OBJ_BREACH", ( 0, 0, 0 ) );
    var_1 = _func_1A1( "obj_flank_skylight_03", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _func_1E5( var_0, "current" );
    _ID42237::_ID14413( "obj_breach_show" );
    var_2 = _func_1A2( "obj_breach", "targetname" );
    _ID42367::_ID3438( var_2 );
    var_3 = _ID42367::_ID15588( var_2 );
    _ID42367::_ID25325( var_0, var_3[0], var_3[1], var_3[2], var_3[3] );
    _func_1E9( var_0 );
    _ID42237::_ID14413( "control_room_breached" );
    _ID42407::_ID25326( var_0 );
    _ID42237::_ID14413( "control_room_cleared" );
    _func_1E5( var_0, "done" );
    _ID42237::_ID14402( "obj_breach_complete" );
}

_ID50718()
{
    _ID42237::_ID14413( "obj_door_controls_given" );
    var_0 = 6;
    var_1 = _func_1A1( "keyboard", "targetname" );
    _func_1E3( var_0, "active", &"AF_CAVES_OBJ_DOOR_CONTROLS", var_1._ID740 );
    _func_1E9( var_0 );
    _func_1E7( var_0, 1 );
    _func_0C7( var_0, &"AF_CAVES_OVERRIDE" );
    _ID42237::_ID14413( "control_room_door_opened" );
    _func_114( var_0, "done" );
    var_0 = 5;
    _func_115( var_0, &"AF_CAVES_OBJ_ESCAPE" );
    _func_1E5( var_0, "current" );
    _ID42237::_ID14402( "obj_door_controls_complete" );
}

_ID25282()
{
    _ID42237::_ID14413( "obj_escape_given" );
    var_0 = 5;
    _func_1E3( var_0, "invisible", &"AF_CAVES_OBJ_ESCAPE" );
    _func_114( var_0, "current" );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "player_escaped" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
    _func_114( var_0, "done" );
    _ID42237::_ID14402( "obj_escape_complete" );
}

_ID45392()
{
    _ID42237::_ID14413( "obj_level_end_given" );
    var_0 = 6;
    _func_1E3( var_0, "active", &"AF_CAVES_FOLLOW_PRICE" );
    _func_1E9( var_0 );
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
    wait(_func_0BA( 2.8, 3.2 ));
    _ID42360::_ID30023();
}

_ID47372()
{
    switch ( self._ID1282 )
    {

    }

    case "zodiac_physics":
    case "zodiac":
    case "littlebird":
}

_ID43768()
{
    _func_157( _ID42237::_ID16299( "zodiac_wake_geotrail_oilrig" ), self, "tag_origin" );
}

_ID47879()
{
    self endon( "death" );

    if ( self._ID170 == "script_vehicle_littlebird_armed" )
    {
        thread _ID42508::_ID18360();
        waitframe;
        var_0 = self._ID23512;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            var_1 _meth_806C( "manual" );
            var_1 _meth_80EA();
        }

        var_clear_2
        var_clear_0
    }
}

_ID38942( var_0, var_1, var_2 )
{
    var_3 = _func_1A2( var_0, var_1 );

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
    _ID45397( var_0, 3 );
}

_ID45397( var_0 )
{
    _unknown_4876( var_0, 1.5 );
}

_ID52910( var_0, var_1 )
{
    var_2 = 0.5;
    level endon( "clearing_hints" );

    if ( _func_02F( level._ID48851 ) )
        level._ID48851 _ID42313::_ID10476();

    level._ID48851 = _ID42313::_ID9220( "default", 1.5 );
    level._ID48851 _ID42313::_ID32753( "BOTTOM", undefined, 0, -60 );
    level._ID48851._ID196 = ( 1, 1, 1 );
    level._ID48851 _meth_80D1( var_0 );
    level._ID48851._ID55 = 0;
    level._ID48851 _meth_808B( 0.5 );
    level._ID48851._ID55 = 1;
    level._ID48851._ID983 = 2;
    wait 0.5;
    level._ID48851 endon( "death" );

    if ( _func_02F( var_1 ) )
        wait(var_1);
    else
        return;

    level._ID48851 _meth_808B( var_2 );
    level._ID48851._ID55 = 0;
    wait(var_2);
    level._ID48851 _ID42313::_ID10476();
}

_ID43811()
{
    if ( !_func_02F( self ) )
        return;

    self endon( "death" );
    self _meth_81B7();
    self endon( "stop_seeking" );

    if ( self._ID172 == "actor_enemy_riotshield" )
        thread _unknown_48E9();

    var_0 = _func_0F3( self._ID740, level._ID794._ID740 );

    while ( _func_1A7( self ) )
    {
        wait 1;
        self._ID452 = var_0;
        self _meth_81B3( level._ID794 );
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
        var_3 = var_0;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            _func_156( _ID42237::_ID16299( "smokescreen" ), var_4._ID740 );
            var_4 thread _ID42237::_ID27077( "smokegrenade_explode_default" );
            wait(_func_0BA( 0.1, 0.3 ));
        }

        var_clear_2
        var_clear_0
        wait 28;

        if ( _ID42237::_ID14385( var_1 ) )
            break;
    }
}

_ID54344( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = undefined;
    var_3 = [];
    var_4 = [];
    var_5 = var_1;

    for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
    {
        var_6 = var_5[var_8];

        if ( var_6._ID172 == "script_brushmodel" )
        {
            var_4[var_4.size] = var_6;

            if ( _func_02F( self._ID922 ) && self._ID922 == "blocker" )
                var_7 = var_6;

            continue;
        }

        if ( var_6._ID172 == "script_model" )
        {
            var_3[var_3.size] = var_6;
            continue;
        }
    }

    var_clear_2
    var_clear_0
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_2._ID740 = var_4[0]._ID740;
    var_2._ID65 = var_4[0]._ID65;
    var_9 = var_3;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];
        var_10 _meth_8053( var_2 );
    }

    var_clear_2
    var_clear_0
    var_12 = var_4;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        var_13 _meth_8053( var_2 );
    }

    var_clear_2
    var_clear_0
    var_15 = var_2;
    return var_15;
}

_ID46609( var_0 )
{
    level endon( "obj_escape_complete" );
    level endon( "kill_timer" );
    thread _unknown_4B4B();
    wait(var_0);
    level thread _unknown_4B5B();
}

_ID43021()
{
    level endon( "obj_escape_complete" );
    level endon( "kill_timer" );

    for (;;)
    {
        wait 1;
        level._ID794 thread _ID42407::_ID27079( "countdown_beep" );
    }
}

_ID43057()
{
    level._ID794 endon( "death" );
    level endon( "kill_timer" );
    level notify( "mission failed" );
    _func_078( 1 );
    level._ID794 _meth_82FF( "af_caves_selfdestruct" );
    _func_156( _ID42237::_ID16299( "player_death_explosion" ), level._ID794._ID740 );
    _func_192( 1, 1, level._ID794._ID740, 100 );
    level._ID794 _meth_8058();
    _func_034( "ui_deadquote", &"AF_CAVES_RAN_OUT_OF_TIME" );
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
    self._ID486 = 1;
    self._ID507 = 1;
    self._ID287 = 1;
    _ID42407::_ID10949();
    _ID42407::_ID32187( 1 );
    _ID42407::_ID17509();
    thread _unknown_4CFB();
    var_0 = self._ID988;
    var_1 = self._ID988._ID70;
    self._ID9813 = level._ID30895["generic"][var_1 + "_death"];
    self._ID51391 = [];
    self._ID49421 = [];

    if ( _func_02F( self._ID31190 ) )
    {
        var_0 _ID42259::_ID3023( self, var_1 );
        _ID42237::_ID14413( self._ID31190 );
    }

    var_2 = undefined;
    var_3 = undefined;

    switch ( var_1 )
    {

    }

    if ( self._ID51391.size )
        thread _unknown_4DC1( self._ID51391, "smoke" );

    if ( self._ID49421.size )
        thread _unknown_4DD1( self._ID49421, "fire" );

    if ( _func_02F( var_2 ) )
    {
        var_0 thread _ID42259::_ID3021( self, "gravity", var_1 );
        wait 0.1;
        self _meth_8155( level._ID30895["generic"][var_1], 1, 0.2, var_2 );
        var_4 = _func_067( level._ID30895["generic"][var_1] );

        if ( !_func_02F( var_3 ) )
            var_3 = 3;

        wait(var_4 * var_3);
    }
    else
    {
        var_0 _ID42259::_ID3021( self, "gravity", var_1 );

        if ( _func_02F( var_3 ) )
            _ID42259::_ID3021( self, "gravity", var_1 );
    }

    switch ( var_1 )
    {

    }

    self._ID9813 = undefined;
    _ID42407::_ID3136();
    self._ID34237 = 1;

    if ( _func_02F( self._ID22746 ) && self._ID22746 )
        _ID42407::_ID36519();

    self _meth_8058();
    case "civilian_crawl_1":
    case "civilian_crawl_2":
    case "hunted_dazed_walk_C_limp":
    case "hunted_dazed_walk_B_blind":
    case "civilian_leaning_death":
    case "civilian_leaning_death":
}

_ID46631( var_0, var_1 )
{
    if ( _func_039( "caves_fire" ) == "0" )
        return;

    self endon( "death" );
    var_2 = undefined;

    if ( var_1 == "fire" )
        var_2 = _ID42237::_ID16299( "body_fire_01" );
    else if ( var_1 == "smoke" )
        var_2 = _ID42237::_ID16299( "body_smoke_01" );

    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        thread _unknown_4ED6( var_2, var_4, var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID50278( var_0, var_1, var_2 )
{
    var_3 = 0;

    if ( var_2 == "smoke" )
        var_3 = 3;

    thread _unknown_502B( var_0, var_1, var_3 );
    self endon( "death" );

    for (;;)
    {
        wait(var_3);
        _func_157( var_0, self, var_1 );
        wait 0.2;
        _func_158( var_0, self, var_1 );
    }
}

_ID49639()
{
    self endon( "death" );
    self._ID511 = 1;
}

_ID50581()
{
    level._ID794 _meth_831A( level._ID834 );
    level._ID794 _meth_831A( level._ID949 );
    level._ID794 _meth_8319( "masada_digital_eotech" );
    level._ID794 _meth_8319( "deserteagle" );
    level._ID794 _meth_8320( "masada_digital_eotech" );
}

_ID9847()
{
    wait 0.2;
    var_0 = _func_1A1( "airstrip_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    wait 1;
    var_1 = _func_1A2( "ambient_airstrip", "targetname" );
    _ID42407::_ID3339( var_1, 1 );
}

_ID50414()
{
    var_0 = _func_1A2( "c4_barrel", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_4FCB );
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
    var_0 _meth_82CA( 1 );
    var_0._ID47357 = undefined;

    switch ( level._ID15361 )
    {

    }

    while ( !_ID42237::_ID14385( "player_detonated_explosives" ) )
    {
        var_0 waittill( "damage",  var_9, var_8, var_7, var_6, var_5, var_4, var_3, var_2, var_1  );

        if ( _func_02F( var_2 ) && _func_1B3( var_2 ) )
        {
            if ( var_9 & 8 )
                continue;

            if ( _func_02F( level._ID21836 ) && level._ID21836 == _func_03D() && level._ID15361 != 3 )
                continue;

            if ( var_0._ID47357 > 0 )
                var_0._ID47357 = var_0._ID47357 - 1;

            if ( _func_02F( var_5 ) && _func_125( var_5, "MOD_GRENADE" ) || _func_125( var_5, "MOD_EXPLOSIVE" ) || _func_125( var_5, "MOD_PROJECTILE" ) )
                break;

            if ( var_0._ID47357 == 0 )
                break;
        }
    }

    thread _unknown_514B();
    _ID42237::_ID14402( "player_detonated_explosives" );
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID49028()
{
    level notify( "c4_barrels_exploding" );
    level endon( "c4_barrels_exploding" );
    level endon( "pre_explosion_happening" );
    level endon( "player_touching_cave_exit" );
    level endon( "player_escaped" );
    level endon( "player_invulnerable" );
    level._ID794 _meth_82FF( "af_caves_selfdestruct" );
    _func_156( _ID42237::_ID16299( "player_death_explosion" ), level._ID794._ID740 );
    _func_192( 1, 1, level._ID794._ID740, 100 );
    _func_034( "ui_deadquote", &"AF_CAVES_MISSIONFAIL_EXPLOSIVES" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
    level._ID794 _meth_8058();
}

_ID49164()
{
    thread _unknown_5159();
    wait(_func_0BA( 0, 0.6 ));

    if ( _ID42237::_ID8201() )
        _func_157( _ID42237::_ID16299( "light_c4_blink_nodlight" ), self, "tag_fx" );
    else
        _func_157( _ID42237::_ID16299( "c4_light_blink_dlight" ), self, "tag_fx" );

    _ID42237::_ID14413( "end_cave_collapse" );
    self _meth_80B7();
}

control_room_shadows()
{
    var_0 = _func_1A1( "control_room_volume", "targetname" );
    var_1 = _func_1A2( "script_model", "code_classname" );
    var_2 = [];
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_237( var_4._ID740, var_0 ) )
            var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0
    var_6 = var_2;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];

        if ( !_func_02F( var_7 ) || _func_2A5( var_7 ) )
            continue;

        var_7 _meth_8095();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "control_room_getting_breached" );
    var_9 = var_2;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_7 = var_9[var_10];

        if ( !_func_02F( var_7 ) || _func_2A5( var_7 ) )
            continue;

        var_7 _meth_8096();
    }

    var_clear_1
    var_clear_0
}

_ID54556()
{
    self._ID511 = 1;
}

_ID50972()
{
    level._ID53400 = [];
    level._ID51874 = [];
    var_0 = _func_1A1( "fx_volume_start_to_ledge", "targetname" );
    var_1 = _func_1A1( "fx_volume_ledge_to_airstrip", "targetname" );
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );

    for ( var_3 = 0; var_3 < level._ID9242.size; var_3++ )
    {
        var_4 = level._ID9242[var_3];
        var_2._ID740 = var_4._ID40005["origin"];

        if ( var_2 _meth_80B0( var_0 ) )
        {
            level._ID53400[level._ID53400.size] = var_4;
            continue;
        }

        if ( var_2 _meth_80B0( var_1 ) )
        {
            level._ID51874[level._ID51874.size] = var_4;
            continue;
        }
    }

    var_2 _meth_80B7();
}

after_death_vfx( var_0, var_1, var_2 )
{
    self waittill( "death" );
    var_3 = _func_06A( "script_model", self _meth_818C( var_1 ) );
    var_3._ID65 = self _meth_818D( var_1 );
    var_3 _meth_80B8( "tag_origin" );
    var_3 _meth_805A();
    var_4 = var_3 _ID42407::_ID17434( var_3._ID740 );
    var_3._ID740 = var_4 + ( 0, 0, 10 );

    for (;;)
    {
        wait(var_2);
        _func_157( var_0, var_3, "tag_origin" );
        wait 0.2;
        _func_158( var_0, var_3, "tag_origin" );
    }
}

bombardment_animate_environment()
{
    var_0 = _func_1A1( "explosion_enviro", "targetname" );
    var_0._ID3189 = "bombardment_enviro";
    var_0 _ID42259::_ID32556();
    _ID42237::_ID14413( "danger_close_last_missile_has_hit" );
    wait 0.4;
    var_0 _ID42259::_ID3111( var_0, "bombardment" );
}
