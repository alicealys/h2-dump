// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" )
    {
        maps\cliffhanger_beautiful_corner::_ID50786();
        return;
    }

    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\cliffhanger_mission_select_cam::_ID50320();
        return;
    }

    var_0 = _func_1A2();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_125( var_2._ID170, "trigger_multiple_bcs" ) )
            var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_0 = undefined;
    _func_0DB( "com_cinematicEndInWhite", 1 );
    var_4 = _func_1A1( "price", "script_noteworthy" );
    var_4._ID31217 = "Capt. MacTavish";
    level._ID45017 = 500;
    level._ID50860 = 200;
    level._ID46686 = 1;
    level._ID52290 = 1;
    _func_0DB( "r_subdomainlimit", 0 );
    _func_0DB( "vehNotifyHitEntityWithVehContactEvent", 0 );
    _ID49383::_ID616();
    maps\cliffhanger_lighting::_ID616();
    _ID43695::_ID616();
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", "1" );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", "-1519 -29658 1252" );
    _func_0DB( "fx_cast_shadow", 0 );
    maps\cliffhanger_code::_ID49693();
    _ID42407::_ID10126( ::_unknown_057D );
    _ID42407::_ID1951( "cave", ::_unknown_058B, "With soap", ::_unknown_0192 );
    _ID42407::_ID1951( "e3", ::_unknown_05A9, "E3", ::_unknown_01A4 );
    _ID42407::_ID1951( "climb", ::_unknown_05CA, "Icepicks", ::_unknown_01B6 );
    _ID42407::_ID1951( "jump", ::_unknown_05F4, "Make the jump", ::_unknown_01C8 );
    _ID42407::_ID1951( "clifftop", ::_unknown_05F3, "Learn heartbeat sensor", ::_unknown_0205 );
    _ID42407::_ID1951( "camp", ::_unknown_062D, "sneak through", ::_unknown_02CF );
    _ID42407::_ID1951( "c4", ::_unknown_065F, "plant it on the tanks", ::_unknown_02ED );
    _ID42407::_ID1951( "goto_hanger", ::_unknown_0699, "Go there", ::_unknown_0314 );
    _ID42407::_ID1951( "hangerpath", ::_unknown_06DF, "Find it", ::_unknown_033C );
    _ID42407::_ID1951( "hanger", ::_unknown_071A, "Be there", ::_unknown_03F1 );
    _ID42407::_ID1951( "satellite", ::_unknown_04A9, "Got DSM", ::_unknown_04E5 );
    _ID42407::_ID1951( "tarmac", ::_unknown_0549, "escape", ::_unknown_05B5 );
    _ID42407::_ID1951( "icepick", maps\cliffhanger_snowmobile::_ID50756, "Watch Soap stab", maps\cliffhanger_snowmobile::_ID52489 );
    _ID42407::_ID1951( "snowmobile", maps\cliffhanger_snowmobile::_ID46598, "Ride it to the finish", maps\cliffhanger_snowmobile::_ID52489 );
    _ID42407::_ID1951( "ending", maps\cliffhanger_snowmobile::_ID46598, "Jump over the cliff", maps\cliffhanger_snowmobile::_ID52489 );
    _func_0DB( "ai_friendlyFireBlockDuration", 0 );
    thread _unknown_0815();
    maps\cliffhanger_code::_ID49840();

    if ( _func_03A( "limited_mode" ) )
        level._ID51625 = maps\cliffhanger_code::_ID43817;

    waitframe;

    if ( _ID42407::_ID20505() || level._ID35897 == "cave" || level._ID35897 == "climb" || level._ID35897 == "jump" || level._ID35897 == "clifftop" )
        level._ID43135.greenberet_disabled = 1;

    _ID42237::_ID3350( _func_1A2( "snow_fuel_tank", "script_noteworthy" ), maps\cliffhanger_code::swap_decals_on_propane_tank );
    thread _unknown_0815();
}

_ID51630()
{
    thread _ID42318::_ID53900();
    _ID42237::_ID14402( "climb_group_flag" );
    var_0 = _func_1A2( "player_climb", "targetname" );
    var_0 = _ID42237::_ID3320( var_0 );
    var_1 = _func_1F3( "plane_sound", "script_noteworthy" );
    _ID42237::_ID3350( var_1, _ID42549::_ID26746 );
    var_2 = _func_1F2( "cliff_plane_sound", "script_noteworthy" );
    var_2 thread maps\cliffhanger_aud::_ID47416();
    _ID42234::_ID13611( 256 );
    var_3 = level._ID805;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 thread _ID47980::_ID51825( var_0[var_5]._ID740, var_0[var_5]._ID65 );
    }

    var_clear_2
    _ID42237::_ID3350( var_0, _ID42407::_ID31860 );
    _ID47980::_ID48158();
}

_ID46164()
{
    level._ID28543 _meth_81AF( 1 );
    level._ID28543._ID11568 = 1;

    if ( maps\cliffhanger_code::_ID53109() )
        return;

    _ID42237::_ID14402( "climb_group_flag" );
    level._ID15018 = 0;
    _func_0DB( "g_friendlyfiredist", 175 );
    var_0 = _ID42237::_ID16638( "price_clifftopstart", "targetname" );
    level._ID28543._ID24424 = 0.6;
    level._ID28543._ID452 = 16;
    _ID42407::_ID1805( "price_start_clifftop" );
    _ID42407::_ID4422( "clifftop" );
    maps\cliffhanger_code::tarped_mig_monitor();
    maps\cliffhanger_stealth::_ID52956();
    level._ID28543 _ID42407::_ID32226( 0 );
    _ID42237::_ID14402( "delay_weapon_switch" );
    level._ID43135.greenberet_disabled = undefined;
    maps\cliffhanger_code::_ID47318();
    thread _ID49347::weapons_specialfeatures( 1 );
    _ID42237::_ID3350( _func_1A2( "patrollers_1_leftguy", "script_noteworthy" ), _ID42407::_ID1947, maps\cliffhanger_code::_ID53997 );
    _ID42237::_ID3350( _func_1A2( "patrollers_1_rightguy", "script_noteworthy" ), _ID42407::_ID1947, maps\cliffhanger_code::_ID53997 );
    level _ID42407::_ID1985( _ID42237::_ID14413, "clifftop_patrol2_dead" );
    level _ID42407::_ID1985( _ID42237::_ID14413, "clifftop_patrol1_dead" );
    level _ID42407::_ID1890( _ID42237::_ID14402, "clifftop_area_done" );
    thread _ID42407::_ID11231();
    thread maps\cliffhanger_code::_ID49895( "clifftop_patrol1_dead" );
    thread maps\cliffhanger_code::_ID49895( "clifftop_patrol2_dead" );
    thread maps\cliffhanger_code::_ID49793();
    thread _unknown_0539();
    level._ID28543._ID9568 = [];
    level._ID28543._ID9568["crouch"] = level._ID30895["price"]["soap_cliff_crouch_idle"];
    thread maps\cliffhanger_code::_ID45436();
    thread maps\cliffhanger_code::_ID43296();
    _ID42237::_ID3350( _func_1A2( "clifftop_guys", "targetname" ), _ID42407::_ID1947, maps\cliffhanger_code::_ID54051 );
    _ID42237::_ID14400( "player_killed_one_first_two_encounters" );
    _ID42237::_ID3350( _func_1A2( "clifftop_guys", "targetname" ), _ID42407::_ID1947, maps\cliffhanger_code::_ID50741 );
    _ID42237::_ID14400( "said_dont_alert_them" );
    _ID42237::_ID14400( "said_nicely_done" );
    _ID42237::_ID14400( "interupt_first_encounter" );
    _ID42237::_ID14400( "first_encounter_dialog_finished" );
    thread maps\cliffhanger_code::_ID44124();
    thread maps\cliffhanger_code::_ID45302();
    thread maps\cliffhanger_code::_ID53814();
    _ID42237::_ID14400( "blizzard_halfway" );
    level _ID42407::_ID1985( _ID42237::_ID14413, "airfield_in_sight" );
    level _ID42407::_ID1890( maps\cliffhanger_code::_ID50588 );
    thread _ID42407::_ID11231();
    _ID42237::_ID14400( "said_storm_brewing" );
    _ID42237::_ID14400( "player_react_to_storm" );
    thread _unknown_0601();
    thread maps\cliffhanger_code::_ID52847();
    _ID42237::_ID14400( "interupt_second_encounter" );
    _ID42237::_ID14400( "second_encounter_dialog_finished" );
    thread maps\cliffhanger_code::_ID47396();
    thread maps\cliffhanger_code::_ID51119();
    thread maps\cliffhanger_code::_ID51936();
    thread maps\cliffhanger_code::_ID44550();
    _ID42237::_ID14413( "first_two_guys_in_sight" );
    _ID42237::_ID14402( "clifftop_guys_move" );
    _ID42407::_ID4422( "first_encounter" );
    _ID42237::_ID14413( "dialog_take_point" );
}

_ID51711()
{
    level._ID794 endon( "stealth_takedown_started" );
    level _ID42237::_ID41068( "clifftop_patrol1_dead", "clifftop_patrol_alerted" );

    if ( !_ID42237::_ID14385( "mig_landing" ) )
        _ID42237::_ID14402( "mig_landing" );
}

_ID44432()
{
    _ID42237::_ID14413( "player_react_to_storm" );
    wait 0.5;
    maps\cliffhanger_code::_ID52128( "on" );
}

_ID52467()
{
    _ID42407::_ID4439();
    thread maps\cliffhanger_code::_ID50597();
    thread maps\cliffhanger_stealth::_ID53224();
    _ID42407::_ID27683( 90, 2 );
    thread maps\cliffhanger_code::_ID49895( "give_c4_obj" );
    thread maps\cliffhanger_stealth::_ID46731();
}

_ID50707()
{
    thread maps\cliffhanger_code::_ID44584();
    thread maps\cliffhanger_code::_ID44665();
    _ID42237::_ID3350( _func_1A2( "base_c4_models", "targetname" ), maps\cliffhanger_code::_ID45244 );
    _ID42237::_ID14413( "player_halfway_to_c4" );
    _ID42407::_ID4439();
    thread maps\cliffhanger_code::_ID51558();
    thread maps\cliffhanger_code::_ID52815();
    thread _unknown_0B77();
    _ID42237::_ID14413( "one_c4_planted" );
    _ID42407::_ID4439();
}

_ID48499()
{
    level _ID42407::_ID1985( maps\cliffhanger_code::_ID47660 );
    level _ID42407::_ID1890( _ID42237::_ID14402, "price_moving_to_hanger" );
    thread _ID42407::_ID11231();
    thread maps\cliffhanger_code::_ID49272();
    thread maps\cliffhanger_code::_ID49895( "player_halfway_to_hanger" );
    thread _ID42407::_ID27683( 90, 2 );
    _ID42237::_ID14413( "starting_hanger_backdoor_path" );
    thread _unknown_0B96();
    thread _unknown_0BAA();
}

_ID50647()
{
    _ID42237::_ID14402( "price_moving_to_hanger" );
    level._ID28543 _ID42407::_ID36519();
    level._ID28543 _meth_80B7();
    var_0 = _func_1A1( "price_hanger_start", "targetname" );
    level._ID47341._ID31460 = undefined;
    level._ID47341._ID740 = var_0._ID740;
    level._ID28543 = maps\cliffhanger_code::_ID45337();
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 _ID42407::_ID14803( "ak47_arctic", "primary" );
    level._ID28543 maps\cliffhanger_code::_ID32651( "head_hero_soap_arctic_interior" );
    _ID42407::_ID4439();
    var_1 = _func_1A1( "soap_waiting_node", "targetname" );
    var_1 thread _ID42259::_ID3044( level._ID28543, "hangar_waiting_loop", "stop_loop" );
    _ID42407::_ID27683( 90, 2 );
    _ID42237::_ID14413( "player_on_backdoor_path" );
    var_1 notify( "stop_loop" );
    thread maps\cliffhanger_code::_ID48539();
    var_2 = _func_0DF( "axis", "all" );
    var_3 = _ID42407::_ID15816( "welder_wing", "script_noteworthy" );

    if ( _func_1A7( var_3 ) )
        var_2 = _ID42237::_ID3321( var_2, var_3 );

    var_4 = _ID42407::_ID15816( "welder_engine", "script_noteworthy" );

    if ( _func_1A7( var_4 ) )
        var_2 = _ID42237::_ID3321( var_2, var_4 );

    if ( _func_1A7( level._ID48340 ) )
        level._ID48340 _meth_828D( 0, 15 );

    _ID42237::_ID14402( "script_attack_override" );
    _ID42237::_ID14402( "done_with_stealth_camp" );
    var_5 = level._ID28543;
    var_5 _ID42407::_ID10871();
    var_6 = _func_0C8( "price_behind_barrel", "targetname" );
    var_5 _meth_81B1( var_6 );
    var_5._ID452 = 20;
    var_5._ID381 = 1;
    var_7 = [];
    var_8 = var_2;

    for ( var_11 = _func_1DA( var_8 ); _func_02F( var_11 ); var_11 = _func_1BF( var_8, var_11 ) )
    {
        var_9 = var_8[var_11];
        var_10 = _func_0F3( var_9._ID740, level._ID794._ID740 );

        if ( var_10 > 1000 )
        {
            var_9 _meth_80B7();
            continue;
        }

        if ( _func_02F( var_9._ID29969 ) )
        {
            var_9 _meth_80B7();
            continue;
        }

        var_7[var_7.size] = var_9;
    }

    var_clear_3
    var_clear_0
    _ID42389::_ID10971();

    if ( var_7.size > 0 )
    {
        var_12 = var_7;

        for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
        {
            var_9 = var_12[var_13];
            var_9 thread maps\cliffhanger_code::_ID44747();
        }

        var_clear_1
        var_clear_0

        for (;;)
        {
            var_14 = 1;
            var_15 = var_7;

            for ( var_16 = _func_1DA( var_15 ); _func_02F( var_16 ); var_16 = _func_1BF( var_15, var_16 ) )
            {
                var_9 = var_15[var_16];

                if ( _func_1A7( var_9 ) )
                {
                    if ( var_9 _ID42407::_ID11498() )
                        continue;

                    var_9._ID452 = 400;
                    var_9._ID377 = level._ID794;
                    var_9 _meth_81B3( level._ID794 );
                    var_14 = 0;
                }
            }

            var_clear_1
            var_clear_0

            if ( var_14 )
            {
                break;
                continue;
            }

            if ( _ID42237::_ID14385( "player_on_backdoor_path" ) )
                _ID42237::_ID14402( "brought_friends" );

            wait 1;
        }
    }
}

_ID46185()
{
    _ID42237::_ID14413( "player_on_backdoor_path" );

    if ( _ID42237::_ID14385( "brought_friends" ) )
        level._ID28543 maps\cliffhanger_code::_ID44374( "cliff_pri_broughtfriends", 0, 1 );
    else
    {
        level._ID28543 _ID45995::_ID48826( "head", level._ID794, 200, 30, 30, 30, 45, 0, 1 );
        var_0 = _func_1A1( "soap_waiting_node", "targetname" );
        var_0 _ID42259::_ID3111( level._ID28543, "hangar_waiting" );
        level._ID28543 _ID45995::_ID45228();
        var_0 _ID42259::_ID3018( level._ID28543, "hunted_open_barndoor" );
    }

    for (;;)
    {
        if ( _func_0F3( level._ID794._ID740, level._ID28543._ID740 ) < 350 )
            break;

        wait 0.25;
    }

    var_1 = _func_1A1( "locker_brawl", "targetname" );
    var_2 = _func_1A1( "hangar_satellite", "targetname" );
    var_2 _ID42407::_ID3428( "satellite" );
    var_1 thread _ID42259::_ID3044( var_2, "satellite_loop", "satellite_stop" );
    maps\cliffhanger_code::_ID52513();
    var_3 = _func_1A1( "solar_panel", "targetname" );
    var_3 _meth_848A( ( -8860, -25895, 950 ) );
    level._ID794 thread maps\cliffhanger_code::_ID50722();
    var_4 = _func_0C8( "price_prep_for_locker_brawl_node", "targetname" );
    wait 0.05;
    level._ID28543 _meth_81B1( var_4 );
    level._ID28543._ID452 = 8;
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 _ID42407::_ID14803( "ak47_arctic", "primary" );
    _ID42237::_ID14388( "locker_brawl_breaks_out" );
    _ID42237::_ID14413( "locker_brawl_breaks_out" );
    maps\cliffhanger_code::_ID47305();
    thread maps\cliffhanger_code::_ID51049( var_2 );
    wait 2;
    var_5 = _ID42407::_ID16268( "keyboard_used" );
    var_5 _ID42237::_ID38863();
    _ID42407::_ID27683( 100, 2 );
    level._ID28543 _ID42407::_ID12467();
    _ID42237::_ID14413( "player_in_hanger" );
    thread _unknown_0C08();
    wait 2;
    _ID42237::_ID14402( "cliffhanger_soap_told_player_to_go_upstairs" );
    thread maps\cliffhanger_code::_ID53030();
    var_6 = _func_1A1( "dsm", "targetname" );
    var_6 _meth_80C6();
    var_6 thread _ID42237::_ID44574( level._ID794, &"CLIFFHANGER_USE_SATELITE", &"CLIFFHANGER_USE_SATELITE_PC", "trigger" );
    _ID42237::_ID14388( "keyboard_used" );
    var_6 waittill( "trigger" );
    var_6 _meth_80C7();
    var_7 = _func_1A1( "acs_node", "targetname" );
    var_7 notify( "start_anims" );
    _ID42237::_ID14413( "acs_picked_up" );

    if ( _ID42263::_ID4452() )
        _func_087( "keyboard_used", &"CLIFFHANGER_USE_SATELITE", "keyboard_used", 0 );

    thread _ID42237::_ID27077( "dsm_pickup", var_6._ID740 );
    _ID42237::_ID14402( "keyboard_used" );
    level._ID28543 _ID45995::_ID45228();
    var_5 _meth_80B7();
    wait 2.2;
}

_ID54179()
{
    _ID42475::_ID34575( "start_satellite_checkpoint" );
    _ID42237::_ID14402( "done_with_stealth_camp" );
    _ID42237::_ID14402( "base_c4_price_done" );
    _ID42237::_ID14402( "price_moving_to_hanger" );
    _unknown_0F46();
    maps\cliffhanger_stealth::_ID43641();
    var_0 = _func_1A1( "start_satellite_player", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    var_1 = _func_1A1( "price_hanger_start", "targetname" );
    level._ID28543 _meth_81D2( var_1._ID740, var_1._ID65 );
    level._ID28543 _ID42407::_ID14803( "ak47_arctic", "primary" );
    _ID49359::_ID48104();
    thread maps\cliffhanger_code::_ID43061();
    _ID42237::_ID14402( "player_in_hanger" );
    _ID42237::_ID14402( "reached_top" );
}

error_screen()
{
    level endon( "player_slides_down_hill" );
    var_0 = _func_1A1( "error_screen", "targetname" );
    var_0 _meth_805A();
    var_0.is_visible = 0;
    _ID42237::_ID14413( "acs_picked_up" );

    for (;;)
    {
        if ( _func_02F( var_0.is_visible ) && var_0.is_visible )
        {
            var_0 _meth_805A();
            var_0.is_visible = 0;
        }
        else
        {
            var_0 _meth_8059();
            var_0.is_visible = 1;
        }

        wait 1;
    }
}

_ID52831()
{
    _ID42237::_ID14402( "start_busted_music" );
    thread maps\cliffhanger_code::_ID49460();
    thread maps\cliffhanger_code::_ID52471();
    thread maps\cliffhanger_code::_ID52560();
    _func_0DB( "r_corpseRemovalThreshold", "0.75" );
    var_0 = _func_23E( "hangar_lamp", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_8403( 0, 1 );
    }

    var_clear_2
    var_clear_0
    _ID42234::_ID13611( 333 );

    if ( _func_02F( level._ID28543._ID1644 ) )
        level._ID28543 _ID42389::_ID36248();

    _ID42389::_ID10971();
    level._ID794._ID511 = 1;
    thread maps\cliffhanger_code::_ID43852();
    maps\cliffhanger_code::_ID50016();
    level._ID794._ID511 = 0;
    _ID42237::_ID14413( "player_detonate" );
    var_4 = _func_08A( "player_detonate", &"CLIFFHANGER_USE_SATELITE", "player_detonate", 0 );
    thread maps\cliffhanger_code::_ID50888( var_4 );
    wait 0.1;
    level._ID52581 = _func_0DE( "axis" );
    _ID42237::_ID14402( "start_big_explosion" );
    _ID42407::_ID10226( 1, _ID42237::_ID14402, "hanger_reinforcements" );
    level._ID794 _meth_81F1( 0.3 );
    level._ID794 _ID42237::_ID10192( 1.5, ::_meth_8334, 0 );
    thread maps\cliffhanger_code::_ID48102();
    thread maps\cliffhanger_code::_ID49182();
    thread maps\cliffhanger_code::_ID54154();
}

_ID45476( var_0 )
{
    _ID42475::_ID34575( "start_tarmac_checkpoint" );
    level notify( "kill_variable_blizzard" );
    maps\cliffhanger_code::_ID51599();
    _ID42237::_ID14402( "done_with_stealth_camp" );
    _ID42237::_ID14402( "base_c4_price_done" );
    _ID42237::_ID14402( "price_moving_to_hanger" );
    _ID42237::_ID14402( "start_big_explosion" );

    if ( !_func_02F( var_0 ) )
    {
        _unknown_110A();
        maps\cliffhanger_stealth::_ID43641();
    }
    else
    {
        level._ID47341._ID31460 = undefined;
        level._ID28543 = maps\cliffhanger_code::_ID45337();
        level._ID28543 _ID42407::_ID10871();
        level._ID28543 _ID42407::_ID14803( "ak47_arctic", "primary" );
    }

    if ( _func_02F( level._ID28543._ID1644 ) )
        level._ID28543 _ID42389::_ID36248();

    _ID42389::_ID10971();
    var_1 = _func_1A1( "price_capture_node", "targetname" );
    level._ID794 _ID42407::_ID37404( var_1 );
    level._ID794 _meth_8083( var_1, undefined, 1, 0, 0, 0, 0 );
    var_2 = _func_0C8( "price_tarmac_path", "targetname" );
    level._ID28543 _meth_81D2( var_2._ID740, var_2._ID65 );
    level._ID28543 _ID42407::_ID14803( "ak47_arctic", "primary" );
    _ID49359::_ID48104();
    _ID42237::_ID14402( "player_in_hanger" );
    _ID42237::_ID14402( "reached_top" );
    _ID42237::_ID14402( "hanger_reinforcements" );
    _ID42237::_ID14402( "hanger_slowmo_ends" );
    _ID42237::_ID14402( "start_busted_music" );
    var_3 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_3._ID55 = 1;

    if ( _func_02F( level._ID52233 ) )
        level._ID52233._ID55 = 1;

    _ID42407::_ID10226( 1.75, maps\cliffhanger_code::_ID54154 );
    wait 3.75;
    var_3 _meth_808B( 2 );
    var_3._ID55 = 0;

    if ( _func_02F( level._ID52233 ) )
    {
        level._ID52233 _meth_808B( 2 );
        level._ID52233._ID55 = 0;
    }

    var_1 _meth_80B7();
    wait 0.8;
    wait 1.2;
    var_3 _meth_808F();

    if ( _func_02F( level._ID52233 ) )
        level._ID52233 _meth_808F();
}

_ID53508()
{
    if ( !_func_1A7( level._ID28543 ) )
        return;

    level._ID28543 endon( "death" );
    _func_034( "player_has_witnessed_capture", "" );
    _ID42237::_ID14402( "tarmac_escape" );
    _ID42237::_ID14400( "price_reaches_bottom" );
    _ID42237::_ID14413( "hanger_reinforcements" );
    _ID42407::_ID1892( "axis", maps\cliffhanger_code::_ID53499 );
    _ID42407::_ID1985( _ID42237::_ID14413, "destroy_tarmac_jeeps" );
    _ID42407::_ID1890( maps\cliffhanger_code::_ID45814, "destructible_tarmac_jeep_center" );
    _ID42407::_ID1890( maps\cliffhanger_code::_ID45814, "destructible_oilrig_2" );
    thread _ID42407::_ID11231();
    thread maps\cliffhanger_snowmobile::_ID53546();
    level._ID28543._ID625 = 200;
    level._ID28543 _ID42407::_ID32315( "g" );
    _ID42234::_ID13611( 54 );
    _ID42234::_ID13611( 56 );
    thread maps\cliffhanger_code::_ID46625( "tarmac_bmp_spawner", "player_starts_snowmobile_trip" );
    var_0 = _func_1A2( "hanger_reinforce_spawner", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    thread _unknown_11A5();
    thread maps\cliffhanger_code::_ID51722();
    level._ID794 _ID42407::_ID13021( "_stealth_enabled" );
    level._ID794._ID630 = 8000;
    var_1 = _func_1A2( "blue_house_bottom_door", "targetname" );
    _ID42407::_ID3304( var_1 );
    var_2 = _func_1A2( "blue_house_top_door", "targetname" );
    _ID42407::_ID3304( var_2 );
    _ID50343::_ID46928();
    level notify( "stop_price_shield" );

    if ( !_func_02F( level._ID28543._ID22746 ) )
        level._ID28543 thread _ID42407::_ID22746();

    _ID42237::_ID30396( "tarmac_hanger_gate", maps\cliffhanger_code::_ID48543 );
    _ID42237::_ID14413( "hanger_slowmo_ends" );
    level._ID28543._ID512 = 1;
    level._ID28543._ID86 = 0;
    level._ID28543._ID4867 = 1.8;
    level._ID28543._ID513 = 1;
    level._ID28543._ID760 = 350;
    level._ID28543._ID761 = 350;
    level._ID28543 _ID42407::_ID32226( 0 );
    maps\cliffhanger_code::_ID47580();
    maps\cliffhanger_snowmobile::_ID53114();
    thread maps\cliffhanger_snowmobile::_ID48314();
    _ID42237::_ID14413( "player_slides_down_hill" );
    _func_0DB( "r_corpseRemovalThreshold", "0.55" );
    _ID42237::_ID14413( "price_reaches_bottom" );
    _ID42407::_ID4422( "slide_down_hill" );
    _ID42234::_ID21260( 333 );
    thread _unknown_141C();
    thread maps\cliffhanger_snowmobile_code::_ID45130();
    maps\cliffhanger_snowmobile::_ID51739();
}

_ID45182()
{
    _ID42237::_ID14413( "destroy_mack" );
    maps\cliffhanger_code::_ID45814( "destructible_oilrig_3" );
    _ID42237::_ID14413( "destroy_jeeps" );
    maps\cliffhanger_code::_ID45814( "destructible_jeeps" );
    wait 0.3;
    maps\cliffhanger_code::_ID45814( "destructible_jeeps_delayed" );
}

_ID44857()
{
    _unknown_13E3();
}

_ID53629()
{
    _ID42475::_ID34575( "start_cave_checkpoint" );
    _unknown_13F0();
    _ID42475::_ID34575( "aud_start_mix_mig_passby" );
    level._ID794 _ID42237::_ID10192( 2, ::_meth_80A1, "scn_cliffhanger_intro_wind_front" );
}

_ID54246()
{
    _ID42475::_ID34575( "start_e3_checkpoint" );
    _unknown_1414();
    thread _unknown_1313();
}

_ID47072()
{
    wait 0.05;
    level._ID51435 = 1;
    level._ID25349 = [];
    maps\cliffhanger_code::_ID52119();
    maps\cliffhanger_code::_ID51337();
    maps\cliffhanger_code::_ID53089();
    maps\cliffhanger_code::_ID43733();
}

_ID35685()
{
    _ID42475::_ID34575( "start_climb_checkpoint" );
    _unknown_1442();
}

_ID44881()
{
    _ID42475::_ID34575( "start_clifftop_checkpoint" );
    _ID42237::_ID14402( "reached_top" );
    _unknown_1458();
    maps\cliffhanger_stealth::_ID43641();
    maps\cliffhanger_code::_ID54243( "clifftop" );
    var_0 = _ID42237::_ID16638( "price_clifftopstart", "targetname" );
    level._ID28543 _meth_81D2( var_0._ID740, var_0._ID65 );
}

_ID45895()
{
    _ID42475::_ID34575( "start_jump_checkpoint" );
    _unknown_148B();
    level notify( "player_shimmy_stop" );
    var_0 = _func_1A1( "player_big_jump_start", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    thread _ID47980::_ID48068();
    thread _ID47980::_ID49118();
    thread _ID49359::_ID52463();
}

_ID47189( var_0 )
{
    _ID42475::_ID34575( "start_camp_checkpoint" );
    _ID42237::_ID14402( "price_go_to_climb_ridge" );
    _ID42237::_ID14402( "reached_top" );
    _ID42237::_ID14402( "first_two_guys_in_sight" );
    _ID42237::_ID14402( "said_lets_split_up" );

    if ( !_func_02F( var_0 ) )
    {
        _unknown_14F1();
        maps\cliffhanger_stealth::_ID43641();
    }

    maps\cliffhanger_code::_ID54243( "camp" );
    thread maps\cliffhanger_code::_ID49362( 0.05 );
    maps\cliffhanger_stealth::_ID47363();
    _ID49359::_ID48147( 0.1 );
    _ID49359::_ID47801( level._ID794, 0.05 );
}

_ID53372()
{
    _ID42475::_ID34575( "start_c4_checkpoint" );
    _ID42237::_ID14402( "price_go_to_climb_ridge" );
    _ID42237::_ID14402( "dialog_take_point" );
    _ID42237::_ID14402( "reached_top" );
    _ID42237::_ID14402( "first_two_guys_in_sight" );
    _ID42237::_ID14402( "said_lets_split_up" );
    _unknown_1552();
    maps\cliffhanger_stealth::_ID43641();
    _ID42407::_ID1805( "tarmac_guys_trigger" );
    _ID42237::_ID14402( "start_truck_patrol" );
    thread maps\cliffhanger_stealth::_ID46731();
    maps\cliffhanger_code::_ID54243( "c4" );
    thread maps\cliffhanger_stealth::_ID53224();
    thread maps\cliffhanger_code::_ID49362();
    maps\cliffhanger_stealth::_ID47363();
    _ID49359::_ID48147( 0.1 );
    _ID49359::_ID47801( level._ID794, 0.05 );
}

_ID45274()
{
    _ID42475::_ID34575( "start_goto_hanger_checkpoint" );
    _ID42237::_ID14402( "price_go_to_climb_ridge" );
    _ID42237::_ID14402( "dialog_take_point" );
    _ID42237::_ID14402( "reached_top" );
    _ID42237::_ID14402( "first_two_guys_in_sight" );
    _ID42237::_ID14402( "said_lets_split_up" );
    _ID42237::_ID14402( "base_c4_planted" );
    _unknown_15D2();
    maps\cliffhanger_stealth::_ID43641();
    _ID42237::_ID14402( "fence_walker_dead" );
    _ID42237::_ID14402( "center_building_patroler_dead" );
    _ID42237::_ID14402( "center_building_patroler_buddy_dead" );
    _ID42237::_ID14402( "ridge_patroler_dead" );
    _ID42407::_ID1805( "tarmac_guys_trigger" );
    _ID42237::_ID14402( "start_truck_patrol" );
    thread maps\cliffhanger_stealth::_ID46731();
    maps\cliffhanger_code::_ID54243();
    thread maps\cliffhanger_stealth::_ID53224();
    thread maps\cliffhanger_code::_ID49362();
    maps\cliffhanger_stealth::_ID47363();
    _ID49359::_ID48147( 0.1 );
    _ID49359::_ID47801( level._ID794, 0.05 );
}

_ID54446()
{
    _ID42475::_ID34575( "start_hangerpath_checkpoint" );
    _ID42237::_ID14402( "price_go_to_climb_ridge" );
    _ID42237::_ID14402( "dialog_take_point" );
    _ID42237::_ID14402( "reached_top" );
    _ID42237::_ID14402( "first_two_guys_in_sight" );
    _ID42237::_ID14402( "said_lets_split_up" );
    _ID42237::_ID14402( "base_c4_planted" );
    _ID42237::_ID14402( "price_moving_to_hanger" );
    _unknown_1676();
    maps\cliffhanger_stealth::_ID43641();
    thread maps\cliffhanger_code::_ID49362();
    maps\cliffhanger_stealth::_ID47363();
    maps\cliffhanger_code::_ID54243();
    var_0 = _func_1A1( "price_hanger_start", "targetname" );
    level._ID28543 _ID42407::_ID37404( var_0 );
    _ID49359::_ID48147( 0.1 );
    _ID49359::_ID47801( level._ID794, 0.05 );
}

_ID53127()
{
    _ID42475::_ID34575( "start_hanger_checkpoint" );
    _ID42237::_ID14402( "reached_top" );
    _ID42237::_ID14402( "dialog_take_point" );
    _ID42237::_ID14402( "first_two_guys_in_sight" );
    _ID42237::_ID14402( "done_with_stealth_camp" );
    _ID42237::_ID14402( "base_c4_planted" );
    _ID42237::_ID14402( "price_moving_to_hanger" );
    _unknown_16EA();
    maps\cliffhanger_stealth::_ID43641();
    var_0 = _func_1A1( "player_hanger_start", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    var_1 = _func_1A1( "price_hanger_start", "targetname" );
    level._ID28543 _meth_81D2( var_1._ID740, var_1._ID65 );
    _ID49359::_ID48104();
    _ID49359::_ID47801( level._ID794, 0.05 );
}

_ID45912()
{
    level._ID47341 = _func_1A1( "price", "script_noteworthy" );
    maps\cliffhanger_code::_ID27484();
    maps\cliffhanger_code::_ID46858();
    maps\cliffhanger_code::_ID50996();
    thread maps\cliffhanger_code::_ID12882();
}

_ID52994()
{
    level._ID51435 = 1;
    level._ID25349 = [];

    if ( !_ID42407::_ID20542( [ "tarmac", "icepick", "snowmobile" ], level._ID35897 ) )
        maps\cliffhanger_code::_ID51401();

    switch ( level._ID35897 )
    {

    }

    case "icepick":
    case "tarmac":
    case "satellite":
    case "hanger":
    case "hangerpath":
    case "goto_hanger":
    case "camp":
    case "clifftop":
    case "climb":
    case "cave":
    case "e3":
    case "c4":
    case "jump":
    case "default":
    case "ending":
    case "snowmobile":
    default:
}

_ID43438()
{
    var_0 = _func_1A2( "tarp_high", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B8( "h2_ch_tarpaulin1_soft_snow" );
    }

    var_clear_2
    var_clear_0
}

_ID46365()
{
    var_0 = _func_1A1( "moving_cable", "targetname" );
    var_0 _ID42407::_ID3428( "cable" );
    var_0 thread _ID42259::_ID3044( var_0, "lab_tank_assembly_cable_slow", "cable_end" );
    _ID42237::_ID14413( "keyboard_used" );
    var_0 notify( "cable_end" );
    var_0 thread _ID42259::_ID3044( var_0, "lab_tank_assembly_cable_fast" );
}

_ID53178()
{
    _ID42237::_ID14413( "light_storm" );
    thread _ID49359::_ID48104( 25 );
}

_ID46047()
{
    level endon( "player_on_backdoor_path" );

    for (;;)
    {
        _ID42237::_ID14413( "custom_blizzard" );
        _ID49359::_ID51422();
        _ID42237::_ID14413( "heavy_blizzard" );
        _ID49359::_ID48147();
        thread maps\cliffhanger_code::_ID49362( 8 );
    }
}

_ID45185()
{
    var_0 = _func_1A2( "shadow_zone", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_1930 );

    for (;;)
    {
        _func_0DB( "r_useLightGridDefaultModelLightingLookup", "1" );
        _func_0DB( "r_lightGridDefaultModelLightingLookup", " -58673 -1644 -7589 " );
        level._ID794 waittill( "player_in_shadow" );
        _func_0DB( "r_useLightGridDefaultModelLightingLookup", "1" );
        _func_0DB( "r_lightGridDefaultModelLightingLookup", " -25970 -24856 -5137 " );
        level._ID794 waittill( "player_out_shadow" );
        waittillframeend;
    }
}

_ID53639()
{
    for (;;)
    {
        var_0 = undefined;

        while ( !_func_1B3( var_0 ) )
            self waittill( "trigger",  var_0  );

        var_0 notify( "player_in_shadow" );

        while ( var_0 _meth_80B0( self ) )
            waittillframeend;

        var_0 notify( "player_out_shadow" );
        waittillframeend;
    }
}