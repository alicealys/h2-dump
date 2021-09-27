// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\oilrig_mission_select_cam::_ID50320();
        return;
    }

    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" )
    {
        maps\oilrig_beautiful_corner::_ID50786();
        return;
    }

    _unknown_0046();
    _ID42323::_ID616();
    _unknown_011D();
}

_ID28333()
{
    if ( _func_039( "r_reflectionProbeGenerate" ) == "1" )
        return;

    _func_034( "breach_debug", "0" );
    _func_034( "breach_weapons", "1" );
    _func_034( "breach_requires_friendlies_in_position", "0" );
    _func_034( "hostage_missionfail", "1" );
    _unknown_202A();
    _func_034( "disable_ambush_slowmo", "1" );
    _func_034( "use_node_script_flag_wait_in_color_system", 1 );
    _func_0DB( "ai_force_combat_close", 1 );
    _func_0DB( "ai_stairsPerfectFriendlyAimInMeleeRange", 1 );
    level._ID46370 = 3;
    level._ID12029 = ::_unknown_25D4;
    _func_036( "oilrig_debug", "0" );
    level._ID47460 = 262144;
    level._ID53103 = 0;
    level._ID26673 = 0;
    level._ID43928 = 0;
    level._ID39431 = 0;
    level._ID49673 = 6;
    level._ID35278 = ::_unknown_1E48;
    level._ID49251 = undefined;
    level._ID44080 = [];
    level._ID49132 = 0;
    level._ID46473 = [];
    level._ID45452 = 3;
    level._ID18995 = 8;
    level._ID49648 = [];
    level._ID8760["25"] = _func_0BC( 25 );
    level._ID8760["35"] = _func_0BC( 35 );
    level._ID8760["45"] = _func_0BC( 45 );
    level._ID8760["60"] = _func_0BC( 60 );
    level._ID8760["65"] = _func_0BC( 65 );
    level._ID43315 = 262144;
    var_0 = _func_1A2( "trigger_multiple", "classname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID922 ) && _func_127( var_2._ID922, 0, 10 ) == "colornodes" )
            level._ID46473 = _ID42237::_ID3293( level._ID46473, var_2 );
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID1951( "debug", ::_unknown_0423, "debug" );
    _ID42407::_ID1951( "underwater", ::_unknown_045C, "underwater" );
    _ID42407::_ID1951( "surface", ::_unknown_046F, "surface" );
    _ID42407::_ID1951( "rig", ::_unknown_04B6, "rig" );
    _ID42407::_ID1951( "deck1", ::_unknown_04D6, "deck1" );
    _ID42407::_ID1951( "heli", ::_unknown_0516, "ambush" );
    _ID42407::_ID1951( "deck2", ::_unknown_0548, "deck2" );
    _ID42407::_ID1951( "deck3", ::_unknown_0578, "deck3" );
    _ID42407::_ID1951( "escape", ::_unknown_05A4, "escape" );
    _ID42407::_ID10126( ::_unknown_04A4 );
    level._ID51248 = [];
    level._ID51248[0] = "weapon_g36_clip";
    level._ID51248[1] = "weapon_mini_uzi_clip";
    level._ID51248[2] = "weapon_mp5_clip";
    level._ID51248[3] = "weapon_g3_clip";
    level._ID51248[4] = "weapon_ump45_clip";
    level._ID51248[5] = "weapon_m16_clip";
    level._ID51248[6] = "weapon_fn2000_clip";
    level._ID51248[7] = "weapon_kriss_clip";
    level._ID51248[8] = "weapon_rpd_clip";
    level._ID51248[9] = "weapon_ak74u_clip";
    level._ID51248[10] = "weapon_ak47_tactical_clip";
    level._ID51248[11] = "weapon_dragunov_clip";
    level._ID51248[12] = "weapon_saw_clip";
    level._ID51248[13] = "weapon_famas_clip";
    level._ID47275 = "viewbody_udt_wet";
    level._ID30904["worldbody"] = "viewbody_udt_wet";
    _ID43691::_ID616();
    _ID42289::_ID521();
    _ID42508::_ID28414();
    _ID51744::_ID616();
    _ID43617::_ID616();
    _ID54046::_ID616();
    _ID52779::_ID616();
    thread _ID43858::_ID616();
    maps\oilrig_anim::_ID616();
}

_ID28284()
{
    maps\oilrig_lighting::_ID616();

    if ( !_ID42407::_ID20614() )
        maps\oilrig_aud::_ID616();

    _ID46436::_ID521();
    _ID42367::_ID34366();
    _ID42367::_ID1851( ::_unknown_23C9 );
    level._ID14918 = 0;
    _ID42237::_ID14400( "sdv_01_passing" );
    _ID42237::_ID14400( "oilrig_mission_failed" );
    _ID42237::_ID14400( "player_attached_to_sdv" );
    _ID42237::_ID14400( "difficulty_initialized" );
    _ID42237::_ID14400( "player_broke_stealth" );
    _ID42237::_ID14400( "heli_safezones_setup" );
    _ID42237::_ID14400( "intro_anim_sequence_starting" );
    _ID42237::_ID14400( "open_dds_door" );
    _ID42237::_ID14400( "sdv_02_at_end_of_path" );
    _ID42237::_ID14400( "sdv_01_at_end_of_path" );
    _ID42237::_ID14400( "player_is_surfacing" );
    _ID42237::_ID14400( "player_is_done_swimming" );
    _ID42237::_ID14400( "start_underwater_heli" );
    _ID42237::_ID14400( "player_turn_rate_slowed" );
    _ID42237::_ID14400( "obj_stealthkill_given" );
    _ID42237::_ID14400( "obj_stealthkill_complete" );
    _ID42237::_ID14400( "obj_hostages_secure_given" );
    _ID42237::_ID14400( "obj_hostages_secure_complete" );
    _ID42237::_ID14400( "obj_c4_ambush_plant_given" );
    _ID42237::_ID14400( "obj_c4_ambush_plant_complete" );
    _ID42237::_ID14400( "obj_ambush_given" );
    _ID42237::_ID14400( "obj_ambush_complete" );
    _ID42237::_ID14400( "obj_explosives_locate_given" );
    _ID42237::_ID14400( "obj_explosives_locate_complete" );
    _ID42237::_ID14400( "player_has_started_planting_c4" );
    _ID42237::_ID14400( "obj_escape_given" );
    _ID42237::_ID14400( "obj_escape_complete" );
    _ID42237::_ID14400( "player_approaching_oilrig_legs" );
    _ID42237::_ID14400( "player_breaks_surface" );
    _ID42237::_ID14400( "player_slitting_throat" );
    _ID42237::_ID14400( "sdv_01_arriving" );
    _ID42237::_ID14400( "player_pulled_halfway_out_of_water" );
    _ID42237::_ID14400( "player_removing_mask" );
    _ID42237::_ID14400( "player_looking_at_gear_friendlies" );
    _ID42237::_ID14400( "enemy_lull_in_conversation" );
    _ID42237::_ID14400( "player_looking_at_grate_guard" );
    _ID42237::_ID14400( "start_surface_sequences" );
    _ID42237::_ID14400( "player_in_position_for_stealth_kill" );
    _ID42237::_ID14400( "player_performing_underwater_kill" );
    _ID42237::_ID14400( "player_ready_to_be_helped_from_water" );
    _ID42237::_ID14400( "player_looking_at_floating_body" );
    _ID42237::_ID14400( "player_starting_stealth_kill" );
    _ID42237::_ID14400( "player_done_being_helped_from_water" );
    _ID42237::_ID14400( "lower_decks_closed_off" );
    _ID42237::_ID14400( "player_dealing_with_rail" );
    _ID42237::_ID14400( "player_looking_at_railing" );
    _ID42237::_ID14400( "railing_patroller_dead" );
    _ID42237::_ID14400( "lower_room_breached" );
    _ID42237::_ID14400( "start_nagging_to_go_to_deck1" );
    _ID42237::_ID14400( "heli_flyby_finished" );
    _ID42237::_ID14400( "friendly1_lower_breach_done" );
    _ID42237::_ID14400( "friendly2_lower_breach_done" );
    _ID42237::_ID14400( "follow_team_in_stairs_after_deck1_breach" );
    _ID42237::_ID14400( "upper_room_breached" );
    _ID42237::_ID14400( "trig_prisoner_sequence_failsafe" );
    _ID42237::_ID14400( "friendlies_had_to_plant_C4" );
    _ID42237::_ID14400( "ambush_c4_triggered" );
    _ID42237::_ID14400( "ambush_enemies_spawned" );
    _ID42237::_ID14400( "ambush_enemies_alerted" );
    _ID42237::_ID14400( "ambush_enemies_alerted_prematurely" );
    _ID42237::_ID14400( "ambush_enemies_approaching" );
    _ID42237::_ID14400( "ambush_gate_opened" );
    _ID42237::_ID14400( "enemies_discovered_bodies" );
    _ID42237::_ID14400( "soap_reached_scaffold" );
    _ID42237::_ID14400( "deck1_postbreach_color_nodes_activated" );
    _ID42237::_ID14400( "deck_2_heli_is_finished_intimidating" );
    _ID42237::_ID14400( "player_shoots_or_aims_rocket_at_intimidating_heli" );
    _ID42237::_ID14400( "deck_2_sync_ais_before_3rd_floor" );
    _ID42237::_ID14400( "zodiacs_evaced" );
    _ID42237::_ID14400( "need_to_check_axis_death" );
    _ID42237::_ID14400( "done_with_smoke_dialogue" );
    _ID42237::_ID14400( "heli_not_killed_in_time" );
    _ID42237::_ID14400( "smoke_thrown" );
    _ID42237::_ID14400( "stop_smoke" );
    _ID42237::_ID14400( "smoke_firefight" );
    _ID42237::_ID14400( "top_deck_room_breached" );
    _ID42237::_ID14400( "player_detonated_explosives" );
    _ID42237::_ID14400( "derrick_room_getting_breached" );
    _ID42237::_ID14400( "player_got_deck3_autosave" );
    _ID42237::_ID14400( "left_deck3_dudes_spawned" );
    _ID42237::_ID14400( "player_on_board_littlebird" );
    _ID42237::_ID14400( "littlebird_escape_lifted_off" );
    _ID42237::_ID14400( "littlebird_escape_spawned" );
    _ID42237::_ID14400( "sub_comes_through_ice" );
    _ID42237::_ID14400( "littlebird_escape_moving" );
    _ID42237::_ID14400( "escape_littlebird_landed" );
    _ID42237::_ID14400( "stair_in_use" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    thread _unknown_2B7C();
    _unknown_09E1();
    _ID42237::_ID3350( _func_1A2( "redshirt_trigger", "targetname" ), ::_unknown_2B08 );
    _ID42237::_ID3350( _func_1A2( "compassTriggers", "targetname" ), ::_unknown_2AED );
    _func_0DB( "r_specularColorScale", "1.4" );
    thread _unknown_2A47();
    level._ID44826 = 0.8;
    level._ID49194 = 0.1;
    level._ID28001 = level._ID44826;
    level._ID794 _unknown_2926( level._ID44826 );
    thread _unknown_2483();
    thread _unknown_255A();
    _unknown_2590();
    thread maps\jake_tools::_ID18542();
    _unknown_2AF3();
    var_0 = [];
    var_0[0] = "heli_ambush";
    var_0[1] = "heli_deck2";
    var_0[2] = "heli_patrol_02";
    thread _unknown_247E( var_0 );
    _func_10C( "player" );
    _func_10C( "ignored" );
    _func_10C( "oblivious" );
    level._ID794 _meth_8183( "player" );
    _func_111( "allies", "oblivious" );
    _func_111( "axis", "oblivious" );
    _func_111( "player", "oblivious" );
    _func_111( "oblivious", "allies" );
    _func_111( "oblivious", "axis" );
    _func_111( "oblivious", "oblivious" );
    _ID42237::_ID3350( _func_1A2( "hostiles_ambush", "targetname" ), _ID42407::_ID1947, ::_unknown_2794 );
    _ID42237::_ID3350( _func_1A2( "patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_27CD );
    _ID42237::_ID3350( _func_1A2( "rappel", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2481 );
    _ID42237::_ID3350( _func_1A2( "army", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2445 );
    _ID42407::_ID3343( "turret_guys", ::_unknown_2CA3 );
    _ID42407::_ID3343( "left_deck3_dudes", ::_unknown_2CA8 );
    _ID42237::_ID3350( _func_1F3( "plane_sound", "script_noteworthy" ), _ID42549::_ID26746 );
    _ID42407::_ID3344( "hostiles_deck2_smoke", ::_unknown_2CD3 );
    thread _unknown_09AD();

    if ( _ID42407::_ID20614() )
    {
        var_1 = _func_1A2( "sub_dds_01", "targetname" );
        var_2 = _func_1A2( "dds_door_01", "targetname" );
        _ID42237::_ID3350( var_1, _ID42407::_ID18512 );
        _ID42237::_ID3350( var_2, _ID42407::_ID18512 );
        var_1 = _func_1A2( "sub_dds_02", "targetname" );
        var_2 = _func_1A2( "dds_door_02", "targetname" );
        _ID42237::_ID3350( var_1, _ID42407::_ID18512 );
        _ID42237::_ID3350( var_2, _ID42407::_ID18512 );
    }

    _ID42237::_ID14402( "init_gameplay_lighting" );
    var_3 = _func_1A1( "oilr_water_plane_01", "targetname" );
    var_3 _meth_805A();
    var_4 = _func_1A1( "oilr_water_plane_02", "targetname" );
    var_4 _meth_805A();
    var_5 = _func_1A1( "water_plane_distortion", "targetname" );
    var_5 _meth_805A();
    thread _unknown_2D9D();
    thread _unknown_1E1B();
    thread _unknown_3352();
    _unknown_343C();
    _ID42237::_ID3350( _func_1A2( "breach_custom_death", "script_noteworthy" ), _ID42407::_ID1947, _ID42407::_ID32326, "stand_death_shoulder_stumble" );
    var_6 = _func_1A1( "ai_sync_before_entering_breach_room", "script_noteworthy" );
    var_6 _ID42407::_ID1947( ::_unknown_342E );
    thread _ID42407::_ID1892( "allies", ::_unknown_3100 );
    thread _unknown_3465();
}

_ID27337()
{
    level._ID794 waittill( "death",  var_0  );

    if ( _func_02F( var_0 ) && var_0._ID172 == "misc_turret" )
    {
        if ( _func_125( var_0._ID669, "little_bird" ) )
        {
            level notify( "new_quote_string" );
            _func_034( "ui_deadquote", &"OILRIG_MISSIONFAIL_HELI_DEATH" );
        }
    }
}

_ID47474()
{
    _unknown_0B03();
}

_ID46468()
{
    _ID42237::_ID14402( "above_water_visuals" );
    _unknown_2895( "Rig" );
    thread _ID42367::_ID10246( 0 );
    thread _ID42367::_ID10246( 1 );
    thread _ID42367::_ID10246( 2 );
    thread _ID42367::_ID10246( 3 );
    thread _ID42367::_ID10246( 4 );
    thread _ID42367::_ID10246( 5 );
    thread _unknown_27EC( 1 );
    level._ID794 _unknown_2B94( 1 );
    var_0 = _func_1A1( "org_stealth_kill", "targetname" );
    var_1 = _unknown_2B0B( "02", var_0 );
    var_1._ID740 = level._ID794._ID740 + ( 0, 0, 100 );
    var_1 thread _ID43617::_ID43978();
    wait 3;
    var_0 _ID42259::_ID3018( var_1, "intro_sequence" );
}

_ID51638()
{
    _ID42475::_ID34575( "start_underwater_checkpoint" );
    _unknown_0CEE();
}

_ID52069()
{
    _ID42475::_ID34575( "start_surface_checkpoint" );
    _ID42237::_ID14402( "sdv_01_arriving" );
    _unknown_2BAD();
    _ID42237::_ID14402( "player_is_done_swimming" );
    _ID42237::_ID14402( "player_breaks_surface" );
    var_0 = _func_1A1( "org_stealth_kill", "targetname" );
    _unknown_0E8C();
    level._ID794 _meth_8343( var_0._ID740 + ( 0, -65, 0 ) );
    level._ID794 _meth_8345( var_0._ID65 );
    level._ID794 _meth_8328();
    thread _unknown_0FF7();
    thread _unknown_0C16();
    wait 0.05;
    _unknown_0E6E();
    thread _unknown_10FE();
}

_ID51811()
{
    wait 1;
    var_0 = 0;
    var_1 = _ID42407::_ID3317( level._ID43029, level._ID51575 );

    for (;;)
    {
        wait 0.05;
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            var_3 notify( "finished_swim_animation" );
        }

        var_clear_2
        var_clear_0
        var_0++;
    }
}

_ID50038( var_0 )
{
    _ID42475::_ID34575( "start_rig_checkpoint" );
    _unknown_29CC( "Rig", var_0 );
    thread _unknown_2669();
    _ID42237::_ID14402( "player_slitting_throat" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    thread _unknown_1453();
    thread _unknown_2C78();
}

_ID48190()
{
    _ID42475::_ID34575( "start_deck1_checkpoint" );
    thread _ID49125();
    _ID42237::_ID14402( "above_water_visuals" );
    maps\jake_tools::_ID38942( "colornodes_deck1", "script_noteworthy", 1 );
    _unknown_2A16( "Deck1" );
    thread _unknown_179F();
    thread _unknown_3388();
    var_0 = _func_1A1( "door_deck1", "targetname" );
    var_0 _meth_80B7();
    var_1 = _func_1A1( "door_deck1_animated", "targetname" );
    var_1 _meth_805A();
    _ID42407::_ID24587( "mus_oilrig_suspense_01_music_alt" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    _ID42237::_ID14402( "obj_hostages_secure_given" );
    _ID42237::_ID14402( "player_at_lower_breach" );
    _ID42237::_ID14402( "railing_patroller_dead" );
    _ID42237::_ID14402( "lower_room_breached" );
    _ID42237::_ID14402( "lower_room_cleared" );
    thread _unknown_2634();
}

_ID44586()
{
    _ID42475::_ID34575( "start_heli_checkpoint" );
    thread _unknown_2D18();
    _ID42237::_ID14402( "above_water_visuals" );
    _unknown_2A9A( "Heli" );
    thread _ID42367::_ID10246( 0 );
    thread _ID42367::_ID10246( 1 );
    thread _ID42367::_ID10246( 2 );
    thread _ID42367::_ID10246( 3 );
    thread _unknown_29E5( 1 );
    _ID42407::_ID24587( "mus_oilrig_fight_music_01" );
    thread _unknown_1ECC();
    level._ID794 _unknown_2D99( 1 );
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
}

_ID53219()
{
    _ID42475::_ID34575( "start_deck2_checkpoint" );
    thread _unknown_2D82();
    _ID42237::_ID14402( "player_at_stairs_to_deck_2" );
    _ID42237::_ID14402( "player_approaching_deck_2" );
    maps\jake_tools::_ID38942( "colornodes_deck2", "script_noteworthy", 1 );
    _ID42237::_ID14402( "above_water_visuals" );
    _unknown_2B22( "Deck2" );
    thread _unknown_1FED();
    level._ID794 _unknown_2DFB( 1 );
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
}

_ID44642()
{
    _ID42475::_ID34575( "start_deck3_checkpoint" );
    thread _unknown_2DE4();
    _ID42237::_ID14402( "player_at_stairs_to_top_deck" );
    _ID42237::_ID14402( "above_water_visuals" );
    _unknown_2B6E( "Deck3" );
    thread _unknown_21C2();
    level._ID794 _unknown_2E48( 1 );
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    _ID42237::_ID14402( "obj_explosives_locate_given" );
    thread _unknown_27E3();
}

_ID35741()
{
    _ID42475::_ID34575( "start_escape_checkpoint" );
    thread _ID42367::_ID10246( 0 );
    thread _ID42367::_ID10246( 1 );
    thread _ID42367::_ID10246( 2 );
    thread _ID42367::_ID10246( 3 );
    thread _ID42367::_ID10246( 4 );
    thread _ID42367::_ID10246( 5 );
    thread _unknown_2B01( 1 );
    thread _unknown_2E66();
    _ID42237::_ID14402( "above_water_visuals" );
    _unknown_2BE9( "Escape" );
    _ID42237::_ID14402( "barracks_cleared" );
    level._ID794 _unknown_2EC6( 1 );
    thread _unknown_246A();
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    thread _unknown_23E4();
    wait 0.5;
    level notify( "A door in breach group 300 has been activated." );
}

portal_group_start_point_initializer()
{
    var_0 = [];
    var_1 = [];
    var_2 = [ "portal_base_flag", "portal_firstfloor_flag" ];
    var_3 = [ "portal_base_flag", "portal_firstfloor_flag", "portal_firstbreach_flag" ];
    var_4 = [ "portal_base_flag", "portal_firstfloor_flag", "portal_secondfloor_flag" ];
    var_5 = [ "portal_base_flag", "portal_firstfloor_flag", "portal_secondfloor_flag", "portal_thirdfloor_flag", "portal_secondbreach_flag" ];
    var_6 = [ "portal_secondfloor_flag", "portal_thirdfloor_flag", "portal_topfloor_flag" ];
    var_7 = [ "portal_thirdfloor_flag", "portal_topfloor_flag" ];
    var_8 = [ "portal_thirdfloor_flag", "portal_topfloor_flag", "portal_topfloorbreach_flag" ];

    switch ( level._ID35897 )
    {

    }

    return var_8;
    case "escape":
    case "deck3":
    case "deck2":
    case "heli":
    case "deck1":
    case "rig":
    case "surface":
    case "underwater":
    default:
}

initialize_portal_flags()
{
    var_0 = _unknown_1086();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42237::_ID14402( var_2 );
    }

    var_clear_2
    var_clear_0
}

_ID43711()
{
    _func_051();
    level._ID39431 = 1;
    _unknown_2FB5();
    thread _unknown_1226();
    thread _unknown_29C7();
    thread _unknown_112E();
    thread _unknown_12EE();
    thread _unknown_128A();
    thread _unknown_13D3();
    thread _unknown_14F1( level._ID794 );
    thread _unknown_36DE();
    thread _unknown_3734();
    _ID42237::_ID14413( "start_surface_sequences" );
    thread _unknown_14E6();
}

_ID39450()
{
    thread _unknown_3162( 0, 6500 );
    var_0 = _func_1A1( "underwater_box", "targetname" );
    var_0 _meth_8059();
    var_1 = _func_1A1( "org_stealth_kill", "targetname" );
    _ID42237::_ID14402( "underwater_sequence_lighting" );
    thread _unknown_37BF();
    var_2 = _func_1A1( "ally_submarine", "targetname" );
    var_2 _ID42407::_ID3428( "submarine_02" );
    var_2 thread _unknown_36F7();
    var_2 thread _unknown_134F();
    var_3 = _unknown_2FEB( "01", var_1 );
    var_4 = _unknown_2FF4( "02", var_1 );
    var_2 thread _ID43617::_ID44404();
    var_3 thread _ID43617::_ID53359();
    var_4 thread _ID43617::_ID43978();
    var_5 = [];
    var_5[0] = var_2;
    var_5[1] = var_3;
    var_5[2] = var_4;
    var_1 _ID42259::_ID3016( var_5, "intro_sequence" );
    var_3 thread _ID43617::_ID47323();
    wait 1;
    level._ID794 thread _unknown_13DD( var_3, var_1 );
    thread _unknown_1272();
    wait 0.5;
    _ID42237::_ID3350( level._ID43029, ::_unknown_1578, var_3, var_1 );
    _ID42237::_ID3350( level._ID51575, ::_unknown_1583, var_4, var_1 );
    wait 1;
    _ID42237::_ID3350( level._ID48906, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID54394, _ID42237::_ID26402 );
    var_6 = _func_1A1( "dds_door_01", "targetname" );
    var_6._ID51935 = _func_1A1( "dds_door_01_seal", "targetname" );
    var_6._ID51935 _meth_8053( var_6 );
    _ID42237::_ID14413( "player_attached_to_sdv" );
    _ID42237::_ID3350( level._ID805, _ID42402::_ID27642 );
    _ID42237::_ID14413( "open_dds_door" );
    var_6 _unknown_30F0();
    wait 1;
    level._ID794 _meth_80B4( "light_3s" );
    wait 3.5;
    thread _unknown_136B();
    _ID42237::_ID14402( "intro_anim_sequence_starting" );
    var_1 _ID42259::_ID3099( var_5, "intro_sequence" );
    _ID42237::_ID14413( "sdv_01_passing" );
    _ID42237::_ID14413( "sdv_01_arriving" );
    thread _unknown_32A6( 3, 2500 );
    _ID42237::_ID14413( "player_ready_to_be_helped_from_water" );
    thread _unknown_32B4( 0, 0 );
    var_2 _meth_80B7();
    var_4 _meth_80B7();
    var_7 = _func_1A1( "player_submarine", "targetname" );
    var_7 _meth_80B7();
    var_0 _meth_805A();
}

h2_sub_intro_cin()
{
    var_0 = _ID54167::_ID43386( "sub_ride" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 98.65 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 72.5 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 12.0, 4.0, 8.0, 55, 43, 22, 20 ) _ID54167::_ID43376( ::_meth_80AA, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 20.5 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 21.4 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 23.15 ) _ID54167::_ID47198( 0.1, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 26.2 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 35.0 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 );
    var_0 _ID54167::_ID48800( 89.5 ) _ID54167::_ID47198( 0.06, 0.6, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 98.65 ) _ID54167::_ID47198( 0.08, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48166();
}

h2_tweak_cull_dist()
{
    wait 30;
    _func_08E( 3000 );
    wait 21;
    var_0 = 3000;
}

_ID47449()
{
    level endon( "player_breaks_surface" );

    while ( !_ID42237::_ID14385( "player_breaks_surface" ) )
    {
        level._ID794 _meth_818E( "slowview", 0.1 );
        wait 0.1;
    }
}

_ID48905()
{
    _unknown_3073( "Rig", 0, 1 );
    _ID42237::_ID3294( level._ID51388, ::_meth_805A );
    level._ID43029 = [];
    level._ID43029[0] = _ID42407::_ID35150( "sdv01_pilot" );
    level._ID43029[0]._ID3189 = "sdv01_pilot";
    level._ID43029[1] = _ID42407::_ID35150( "sdv01_copilot" );
    level._ID43029[1]._ID3189 = "sdv01_copilot";
    level._ID43029[2] = _ID42407::_ID35150( "sdv01_swimmer1" );
    level._ID43029[2]._ID3189 = "sdv01_swimmer1";
    level._ID51575 = [];
    level._ID51575[0] = _ID42407::_ID35150( "sdv02_pilot" );
    level._ID51575[0]._ID3189 = "sdv02_pilot";
    level._ID51575[1] = _ID42407::_ID35150( "sdv02_copilot" );
    level._ID51575[1]._ID3189 = "sdv02_copilot";
    level._ID51575[2] = _ID42407::_ID35150( "sdv02_swimmer1" );
    level._ID51575[2]._ID3189 = "sdv02_swimmer1";
    level._ID51575[3] = _ID42407::_ID35150( "sdv02_swimmer2" );
    level._ID51575[3]._ID3189 = "sdv02_swimmer2";
    _ID42237::_ID3350( level._ID51575, _ID42402::_ID14920 );
    _ID42237::_ID3350( level._ID43029, _ID42402::_ID14920 );
    _ID42237::_ID14413( "sdv_01_arriving" );
    _ID42237::_ID3350( level._ID51575, _ID42402::_ID14923 );
    _ID42237::_ID3350( level._ID43029, _ID42402::_ID14923 );
}

_ID54059()
{
    var_0 = _func_1A1( "org_stealth_kill", "targetname" );
    level._ID47769 = _func_06A( "script_origin", var_0._ID740 );
    level._ID47769._ID740 = var_0._ID740;
    level._ID47769._ID65 = var_0._ID65;
    level._ID49527 = _ID42407::_ID35168( "hostile_stealthkill_player" );
    level._ID49527 _ID42358::_ID3551();
    level._ID54409 = _ID42407::_ID35168( "hostile_stealthkill_friendly" );
    level._ID49527._ID3189 = "hostile_stealthkill_player";
    level._ID54409._ID3189 = "hostile_stealthkill_friendly";
    level._ID49527 thread _unknown_1739();
    level._ID54409 thread _unknown_1740();
    level._ID49527 thread _unknown_173C();
    level._ID54409 thread _unknown_1743();
    level._ID47769 thread _unknown_1750( "lower_room_breached" );
}

disable_weapon_in_wolfmode()
{
    self.cheat._ID48626 = 1;
}

_ID43236( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( var_0 );

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID43892()
{
    self._ID511 = 1;
    level._ID47769 thread _ID42259::_ID3044( self, "grate_idle", "stop_idle" );
}

_ID43053()
{
    _ID42237::_ID14413( "start_underwater_heli" );
    _ID42237::_ID14413( "sdv_02_arriving" );
    var_0 = _ID42411::_ID35195( "heli_patrol_01" );
    var_0 thread _unknown_3009();
    thread _ID42411::_ID17021( var_0 );
    var_0 waittill( "reached_dynamic_path_end" );
    var_0 _meth_80B7();
}

_ID47478()
{
    wait 1;
    var_0 = 10;
    var_1 = 20;
    self _meth_82B8( self._ID740 + ( 0, 0, var_1 ), var_0, 1, 1 );
    wait(var_0);
    self _meth_80B7();
}

_ID47858()
{
    self endon( "death" );
    var_0 = _func_06A( "script_origin", self._ID740 + ( 0, -900, -1800 ) );
    var_0 _meth_8053( self );

    while ( !_ID42237::_ID14385( "player_ready_to_be_helped_from_water" ) )
    {
        var_0 _meth_80B4( "mig_rumble" );
        wait 0.4;
    }

    var_0 _meth_80B7();
}

_ID50535()
{
    wait 8;
    _ID42407::_ID28864( "oilrig_sbc_drydock" );
    wait 2;
    _ID42407::_ID28864( "oilrig_sbo_fullpressure" );
    _ID42407::_ID28864( "oilrig_sbc_deployment" );
    _ID42237::_ID14402( "open_dds_door" );
    wait 10;
    _ID42407::_ID28864( "oilrig_sbo_tm1away" );
    wait 5;
    _ID42407::_ID28864( "oilrig_sbo_zerooneniner" );
    _ID42237::_ID14413( "sdv_01_passing" );
    _ID42407::_ID28864( "oilrig_sbc_ussdallas" );
    wait 3;
    _ID42237::_ID14402( "player_approaching_oilrig_legs" );
    _ID42237::_ID14402( "start_underwater_heli" );
    wait 3;
    _ID42407::_ID28864( "oilrig_sbo_depth20" );
    _ID42237::_ID14413( "sdv_02_arriving" );
    _ID42237::_ID14402( "start_surface_sequences" );
    _ID42407::_ID28864( "oilrig_sbc_tm2objective" );
    wait 3;
    thread _ID42318::_ID45075();
    _ID42237::_ID14413( "sdv_01_stopping" );
    wait 5;
}

_ID47544( var_0, var_1 )
{
    level._ID794 _meth_8328();
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_830C( 0 );
    var_2 = _ID42407::_ID35028( "player_rig" );
    var_2 thread _unknown_1AC0();
    var_0 _ID42259::_ID3018( var_2, "underwater_player_start", "origin_animate_jnt" );
    var_2 _meth_8053( var_0, "origin_animate_jnt" );
    level._ID794 _meth_8343( var_2 _meth_818C( "tag_player" ) );
    level._ID794 _meth_8345( var_2 _meth_818D( "tag_player" ) );
    wait 1;
    level._ID794 _meth_8084( var_2, "tag_player", 1, 55, 43, 5, 20, 1 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    _ID42237::_ID14402( "player_attached_to_sdv" );
    _ID42237::_ID14413( "intro_anim_sequence_starting" );
    var_0 thread _ID42259::_ID3111( var_2, "underwater_player_start", "origin_animate_jnt" );
    _ID42237::_ID14413( "sdv_01_arriving" );
    wait 4;
    wait 15.5;
    _ID42237::_ID14402( "player_breaks_surface" );
    var_3 = _func_1A1( "water_plane_distortion", "targetname" );
    var_3 _meth_8059();
    _unknown_1A6E( 0 );
    thread _ID42407::_ID41628( "player_ready_to_be_helped_from_water", undefined );
    thread _unknown_1A2E();
    var_2 _meth_805A();
    _ID42237::_ID14413( "player_is_done_swimming" );
    var_2 _meth_80B7();
}

_ID53509()
{
    self endon( "death" );
    var_0 = 1;
    var_1 = 5;
    var_2 = 5;
    var_3 = 30;
    var_4 = 50;
    var_5 = 90;
    var_6 = 260;
    var_7 = var_3 - var_1 / var_0 * 20;
    var_8 = var_4 - var_2 / var_0 * 20;
    var_9 = var_1;
    var_10 = var_2;
    var_11 = 0;
    _ID42237::_ID14402( "player_turn_rate_slowed" );

    while ( _ID42237::_ID14385( "player_turn_rate_slowed" ) )
    {
        var_12 = level._ID794 _meth_8318();
        var_13 = var_12[0];
        var_14 = var_12[1];
        var_15 = _ID42237::_ID37527( _func_0C3( var_13 ) > 0.001, 1, -3 );
        var_16 = _ID42237::_ID37527( _func_0C3( var_14 ) > 0.001, 1, -3 );
        var_9 = _func_0EE( var_9 + var_7 * var_15, var_1, var_3 );
        var_10 = _func_0EE( var_10 + var_8 * var_16, var_2, var_4 );

        if ( level._ID794 _ID42237::_ID20583() )
        {
            _func_0DB( "aim_turnrate_yaw", var_10 );
            _func_0DB( "aim_turnrate_pitch", var_9 );
            level._ID794 _meth_8106();
            var_11 = 0;
        }
        else
        {
            if ( !var_11 )
                level._ID794 _meth_8105();

            var_11 = 1;
        }

        var_17 = var_13;
        var_18 = var_14;
        waittillframeend;
    }

    _func_0DB( "aim_turnrate_yaw", var_6 );
    _func_0DB( "aim_turnrate_pitch", var_5 );
    level._ID794 _meth_8106();
}

_ID46805( var_0 )
{
    var_1 = _func_1A2( "water_plane", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_0 )
        {
            var_3 _meth_8059();
            continue;
        }

        var_3 _meth_805A();
    }

    var_clear_2
    var_clear_0
}

_ID43059()
{
    var_0 = _func_1A1( "org_stealth_kill", "targetname" );
    var_1 = _func_1A1( "grate_blocker", "targetname" );
    var_1 _meth_805A();
    var_1 _meth_82C9();
    _ID42237::_ID14413( "sdv_01_arriving" );
    _ID42237::_ID3350( level._ID805, _ID42402::_ID36528 );
    _ID42237::_ID14413( "player_breaks_surface" );
    _unknown_3960( 0, 0 );
    thread _unknown_1C12();
}

_ID45447()
{
    var_0 = _func_1A1( "org_water_level", "targetname" );
    var_0._ID740 = var_0._ID740 + ( 0, 0, 0 );
    var_1 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_1._ID740 = level._ID794._ID740 + ( 0, 0, 10 );
    var_1._ID65 = var_0._ID65;
    var_2 = _func_06A( "script_model", var_1._ID740 );
    var_2 _meth_80B8( "tag_origin" );
    var_2._ID740 = var_1._ID740;
    var_2._ID65 = var_1._ID65;
    var_1 thread _unknown_1CD0();
    var_1 thread _unknown_1CEE();
    var_2 thread _unknown_1D09( var_1 );
    var_3 = 1;
    var_4 = 9;
    var_2._ID740 = level._ID794._ID740 + ( 0, 0, var_4 );
    var_1._ID740 = level._ID794._ID740 + ( 0, 0, var_4 );
    var_2 _ID42407::_ID22172( level._ID794, "tag_origin", var_3, 1, 90, 90, 50, 4 );
    _ID42407::_ID10226( 0, ::_unknown_1D12, var_2, "tag_origin" );
}

_ID53243( var_0, var_1 )
{
    level._ID794 _meth_8084( var_0, var_1, 0.0, 90, 90, 50, 4, 1 );
}

_ID53041()
{
    self endon( "death" );
    var_0 = 2.4;
    var_1 = 3.2;
    self _meth_82B8( self._ID740 + ( 0, 0, var_1 / 2 ), var_0, 1, 1 );
    wait(var_0);

    while ( _func_02F( self ) )
    {
        self _meth_82B8( self._ID740 + ( 0, 0, var_1 * -1 ), var_0, 1, 1 );
        wait(var_0);
        self _meth_82B8( self._ID740 + ( 0, 0, var_1 ), var_0, 1, 1 );
        wait(var_0);
    }
}

_ID50970()
{
    self endon( "death" );
    var_0 = 4;
    var_1 = 6;
    self _meth_82C2( var_0 / 2, var_1, var_1 / 2, var_1 / 2 );
    wait(var_1);

    while ( _func_02F( self ) )
    {
        self _meth_82C2( var_0 * -1, var_1, var_1 / 2, var_1 / 2 );
        wait(var_1);
        self _meth_82C2( var_0, var_1, var_1 / 2, var_1 / 2 );
        wait(var_1);
    }
}

_ID47553( var_0 )
{
    var_1 = 1;
    var_2 = 0.05;
    var_3 = _func_1A1( "org_grate_top_left", "targetname" );
    var_4 = _func_1A1( "org_grate_bot_right", "targetname" );
    var_5 = var_3._ID740[0];
    var_6 = var_4._ID740[1];
    var_7 = var_4._ID740[0];
    var_8 = var_3._ID740[1];
    var_9 = undefined;
    var_10 = undefined;

    for ( var_11 = undefined; !_ID42237::_ID14385( "player_ready_to_be_helped_from_water" ); self._ID740 = var_15 )
    {
        wait(var_2);
        var_12 = level._ID794 _meth_82FE();
        var_13 = _func_11F( level._ID794._ID65 );
        var_14 = _func_11E( level._ID794._ID65 );
        var_13 *= var_12[0] * var_1;
        var_14 *= var_12[1] * var_1;
        var_15 = self._ID740 + var_13 + var_14;
        var_15 = ( var_15[0], var_15[1], var_0._ID740[2] );
        var_9 = _ID42237::_ID53482( var_15[0], var_7, var_5 );
        var_10 = _ID42237::_ID53482( var_15[1], var_8, var_6 );
        var_11 = var_0._ID740[2];
        var_15 = ( var_9, var_10, var_11 );
        self._ID65 = ( level._ID794._ID65[0], level._ID794._ID65[1], var_0._ID65[2] );
    }

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID45577()
{
    self waittillmatch( "single anim",  "end"  );
    _ID42237::_ID14402( "player_is_done_swimming" );
}

_ID44335( var_0, var_1 )
{
    var_0 _ID42259::_ID3018( self, "sdv_ride_in", "origin_animate_jnt" );
    self _meth_8053( var_0, "origin_animate_jnt" );
    _ID42237::_ID14413( "intro_anim_sequence_starting" );
    var_0 thread _ID42259::_ID3111( self, "sdv_ride_in", "origin_animate_jnt" );
    self waittillmatch( "single anim",  "end"  );
    self notify( "finished_swim_animation" );
}

_ID52921()
{
    thread _unknown_41CD();
    thread _unknown_41E0();
    thread _unknown_2060();
    thread _unknown_33C4();
    thread _unknown_34BC();
    thread _unknown_2026();
    thread _unknown_1FE2();
    thread _unknown_21BB();
    level._ID794 thread _unknown_2087();
    _ID42237::_ID3350( level._ID43029, ::_unknown_21A9 );
    _ID42237::_ID3350( level._ID51575, ::_unknown_21B3 );
    thread _unknown_201D();
    thread _unknown_204C();
    thread _unknown_207F();
    _ID42237::_ID14413( "obj_stealthkill_complete" );
    thread _unknown_22D3();
    thread _unknown_3DEE( "animated_chains" );
}

_ID44985( var_0 )
{
    if ( !_func_02F( level._ID794 ) )
        level waittill( "level.players initialized" );

    _func_032( "ui_divinggoggles", 1 );
    level waittill( "open_dds_door" );
    _func_032( "ui_divinggoggles", 2 );
    _ID42237::_ID14413( "player_removing_mask" );
    _func_032( "ui_divinggoggles", 3 );
}

_ID54365()
{
    level endon( "obj_stealthkill_complete" );
    var_0 = _func_1A1( "org_water_level", "targetname" );
    var_1 = var_0._ID740[2];
    _ID42237::_ID14413( "player_starting_stealth_kill" );

    for (;;)
    {
        wait 0.05;
        var_2 = level._ID794 _meth_80AF();

        if ( var_2[2] < var_1 )
        {
            level notify( "player_is_below_water" );
            continue;
        }

        level notify( "player_is_above_water" );
    }
}

_ID47951()
{
    var_0 = _func_1A1( "org_stealth_kill", "targetname" );
    var_1 = [];
    var_1[0] = _unknown_3BBA( "allies", "water_helper_01" );
    var_1[1] = _unknown_3BC8( "allies", "water_helper_02" );
    var_1[0]._ID3189 = "water_helper_01";
    var_1[1]._ID3189 = "water_helper_02";
    var_1[0] _ID42226::_ID32651( "h2_head_seal_udt_f_lifesaver" );
    var_1[1] _ID42226::_ID32651( "h2_head_seal_udt_i_lifesaver" );
    var_0 _ID42259::_ID3016( var_1, "surface_helpout" );
    _ID42237::_ID14413( "player_ready_to_be_helped_from_water" );
    var_0 _ID42259::_ID3099( var_1, "surface_helpout" );
    _ID42237::_ID14413( "lower_room_breached" );
    _ID42237::_ID3350( var_1, ::_unknown_3E8E );
}

_ID50283()
{
    _ID42237::_ID14413( "player_looking_at_floating_body" );
    _ID42237::_ID3294( level._ID51388, ::_meth_8059 );
}

_ID45241()
{
    level endon( "player_starting_stealth_kill" );
    _ID42237::_ID14413( "player_breaks_surface" );
    level._ID54409 maps\jake_tools::_ID10760( "oilrig_mrc1_killyou" );
    _ID42407::_ID14403( "enemy_lull_in_conversation", 1 );
    wait 0.75;
    level._ID54409 thread maps\jake_tools::_ID10760( "oilrig_mrc1_givemeone" );
    wait 1.5;
    level._ID49527 maps\jake_tools::_ID10760( "oilrig_mrc2_foff" );
    _ID42237::_ID14413( "obj_stealthkill_given" );
    wait 0.4;
    level._ID54409 maps\jake_tools::_ID10760( "oilrig_mrc1_limoallday" );
    level._ID49527 maps\jake_tools::_ID10760( "oilrig_mrc2_complain" );
    level._ID54409 maps\jake_tools::_ID10760( "oilrig_mrc1_theitalians" );
    level._ID49527 maps\jake_tools::_ID10760( "oilrig_mrc2_noclue" );
}

_ID46073()
{
    level._ID49527 thread _unknown_2229();
    level._ID54409 thread _unknown_2230();
}

_ID48759()
{
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    _unknown_2090( 1 );
    self waittillmatch( "single anim",  "grab"  );
    self _meth_80B3();
    wait 0.05;

    if ( self._ID3189 == "hostile_stealthkill_player" )
        thread _ID42407::_ID27079( "grate_enemy_grabbed_grunt_01" );
    else
        thread _ID42407::_ID27079( "grate_enemy_grabbed_grunt_02" );

    self waittillmatch( "single anim",  "end"  );
    self _meth_80B7();
}

_ID51699()
{
    _ID42237::_ID14413( "player_is_done_swimming" );
    _ID42237::_ID14413( "enemy_lull_in_conversation" );
    _unknown_38C6();
    _ID42237::_ID14402( "obj_stealthkill_given" );
}

_ID44906()
{
    var_0 = _func_1A1( "org_water_exit", "targetname" );
    var_0._ID740 = var_0._ID740 + ( 0, 0, 10 );
    var_1 = _func_1A1( "org_stealth_kill", "targetname" );
    _ID42237::_ID14413( "player_is_done_swimming" );
    _func_0DB( "compass", "1" );
    level._ID794 _unknown_3D86( level._ID49194 );
    var_2 = _ID42407::_ID35028( "player_rig" );
    var_2 thread _unknown_242E();
    var_2 _meth_805A();
    var_1 _ID42259::_ID3018( var_2, "player_stealth_kill" );
    thread _unknown_23C3();
    thread _unknown_23A3();
    _unknown_23F7();
    _func_0DB( "compass", "0" );
    level._ID49527._ID1257 = 0;
    level._ID794 _meth_8087( var_2, "tag_player", 1, 0, 0 );
    wait 0.5;
    _ID42237::_ID14402( "player_starting_stealth_kill" );
    var_1 thread _ID42259::_ID3111( var_2, "player_stealth_kill" );
    var_2 _meth_8059();
    thread _unknown_43C8();
    thread _unknown_4466();
    var_2 waittillmatch( "single anim",  "throat"  );
    _ID42237::_ID14402( "player_slitting_throat" );
    var_2 waittillmatch( "single anim",  "teleport"  );
    _ID42237::_ID14402( "player_looking_at_floating_body" );
    _ID42475::_ID34575( "aud_start_stealth_kill_amb_transition" );
    var_2 waittillmatch( "single anim",  "help"  );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    _ID42407::_ID14403( "player_pulled_halfway_out_of_water", 2 );
    _ID42407::_ID14403( "player_removing_mask", 3.15 );
    _unknown_21FC( 0 );
    var_2 waittillmatch( "single anim",  "end"  );
    level._ID794 _meth_8055();
    thread _ID42407::_ID4422( "rig_start" );
    var_2 _meth_80B7();
    _ID42237::_ID14402( "player_done_being_helped_from_water" );
    thread _ID42402::_ID39444( 0 );
    _ID42237::_ID3350( level._ID49941, _ID42237::_ID26402 );
    var_3 = _func_1A1( "mantle_platform", "targetname" );
    var_3 _meth_8059();
    var_3 _meth_82C8();
    thread _unknown_24EE();
    _ID42237::_ID14402( "obj_stealthkill_complete" );
}

_ID47799()
{
    level endon( "player_starting_stealth_kill" );
    var_0 = undefined;
    var_1 = _func_1A1( "trig_player_near_grate_guard", "script_noteworthy" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );

    for (;;)
    {
        wait 0.05;

        if ( _ID42237::_ID14385( "player_near_grate_guard" ) )
        {
            var_0 = _ID42237::_ID41802( level._ID794 _meth_80AF(), level._ID794 _meth_8346(), var_2._ID740, level._ID8760["25"] );

            if ( var_0 )
                _ID42237::_ID14402( "player_looking_at_grate_guard" );
            else
                _ID42237::_ID14388( "player_looking_at_grate_guard" );

            continue;
        }

        _ID42237::_ID14388( "player_looking_at_grate_guard" );
    }
}

_ID47153()
{
    level endon( "player_starting_stealth_kill" );
    var_0 = &"SCRIPT_PLATFORM_OILRIG_HINT_STEALTH_KILL";
    var_1 = level._ID49527;
    thread _unknown_2564();

    while ( !_ID42237::_ID14385( "player_starting_stealth_kill" ) )
    {
        _ID42237::_ID14413( "player_looking_at_grate_guard" );
        thread _ID42407::_ID18611( var_0, undefined, 100, undefined, "medium_background" );
        _func_1E8( 1, ( 0, 0, 0 ) );
        _ID42237::_ID14402( "player_in_position_for_stealth_kill" );

        while ( _ID42237::_ID14385( "player_looking_at_grate_guard" ) )
            wait 0.05;

        _ID42237::_ID14388( "player_in_position_for_stealth_kill" );
        thread _ID42407::_ID18638();
        _func_1E8( 1, var_1._ID740 );
    }

    thread _ID42407::_ID18638();
}

_ID52736()
{
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    thread _ID42407::_ID18638();
}

_ID49772()
{
    while ( !_ID42237::_ID14385( "player_starting_stealth_kill" ) )
    {
        wait 0.05;

        if ( _ID42237::_ID14385( "player_looking_at_grate_guard" ) && level._ID794 _meth_834A() )
            break;
    }
}

_ID52218()
{
    level notify( "player_in_water" );
    level endon( "player_out_of_water" );
    thread _unknown_3F84();
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_830C( 0 );
    level._ID794 _unknown_3FE9( level._ID49194 );
    level._ID794 _meth_8328();
    var_0 = _func_1A1( "trig_out_of_water", "targetname" );
    var_0 waittill( "trigger" );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
    level._ID794 _meth_830F( 1 );
    level._ID794 _meth_830C( 1 );
    level._ID794 _unknown_4024( level._ID44826 );
    level._ID794 _meth_8329();
    _ID42237::_ID14388( "player_turn_rate_slowed" );
    var_1 = _func_1A1( "trig_in_water", "targetname" );

    while ( level._ID794 _meth_80B0( var_1 ) )
        wait 0.05;

    thread _unknown_26D7();
}

_ID47382()
{
    level notify( "player_out_of_water" );
    level endon( "player_in_water" );
    level endon( "lower_decks_closed_off" );
    thread _unknown_4027();
    var_0 = _func_1A1( "trig_in_water", "targetname" );
    var_0 waittill( "trigger" );
    level._ID794 thread _ID42237::_ID27077( "splash_player_water_enter" );
    thread _unknown_26DB();
}

_ID50421()
{
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    wait 2.8;
}

_ID52509()
{
    var_0 = _func_1A1( "org_stealth_kill", "targetname" );
    self waittill( "finished_swim_animation" );
    self _meth_8055();

    if ( self._ID3189 == "sdv02_pilot" )
        level._ID47769 thread _ID42259::_ID3044( self, "surface_idle", "stop_idle" );
    else
        var_0 thread _ID42259::_ID3044( self, "surface_idle", "stop_idle" );

    if ( self._ID3189 == "sdv02_pilot" )
        thread _unknown_283D();
    else
    {
        _ID42237::_ID14413( "player_looking_at_floating_body" );
        self _meth_80B7();
    }
}

_ID44478()
{
    _ID42237::_ID14413( "player_ready_to_be_helped_from_water" );
    var_0 = _func_1A1( "node_gear_takeoff", "targetname" );
    var_0 _ID42259::_ID3023( level._ID49792, "oilrig_seal_surface_rebreather_off_guy2" );
    var_0 _ID42259::_ID3023( level._ID48061, "oilrig_seal_surface_rebreather_off_guy1" );
    var_1 = undefined;
    var_2 = level._ID37355;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID922 ) && var_3._ID922 == "mask_remove_guy" )
        {
            var_1 = var_3;
            break;
        }
    }

    var_clear_2
    var_clear_0
    var_1 _ID42259::_ID3023( var_1, "oilrig_seal_surface_mask_off" );
    var_5 = _func_06A( "script_origin", var_1 _meth_818C( "TAG_ORIGIN" ) );
    var_5._ID65 = var_1 _meth_818D( "TAG_ORIGIN" );
    thread maps\oilrig_anim::_ID44366( "mask_off_oilrig_seal_surface_mask_off", "oilrig_seal_surface_mask_off_prop", var_5, "player_pulled_halfway_out_of_water" );
    var_1 _meth_81B2( var_1._ID740 );
    level._ID49792._ID11025 = 1;
    level._ID48061._ID11025 = 1;
    level._ID49792._ID10998 = 1;
    level._ID48061._ID10998 = 1;
    level._ID48061._ID53334 = level._ID48061._ID525;
    level._ID48061._ID525 = 40;
    level._ID49792._ID53334 = level._ID48061._ID525;
    level._ID49792._ID525 = 40;
    var_0 _ID42259::_ID3023( level._ID49792, "oilrig_seal_surface_rebreather_off_guy2" );
    var_0 _ID42259::_ID3023( level._ID48061, "oilrig_seal_surface_rebreather_off_guy1" );
    thread maps\oilrig_anim::_ID44366( "rebreather_off_oilrig_seal_surface_rebreather_off_guy2", "oilrig_seal_surface_rebreather_off_guy2_prop", var_0, "player_done_being_helped_from_water" );
    thread maps\oilrig_anim::_ID44366( "rebreather_off_oilrig_seal_surface_rebreather_off_guy1", "oilrig_seal_surface_rebreather_off_guy1_prop", var_0, "player_done_being_helped_from_water" );
    _ID42237::_ID14413( "player_pulled_halfway_out_of_water" );
    var_1 thread _ID42407::_ID27079( "oilrig_seal_surface_mask_off" );
    var_1 thread _ID42259::_ID3020( var_1, "oilrig_seal_surface_mask_off" );
    _ID42237::_ID14413( "player_done_being_helped_from_water" );
    var_0 thread _ID42259::_ID3020( level._ID49792, "oilrig_seal_surface_rebreather_off_guy2" );
    var_0 _ID42259::_ID3020( level._ID48061, "oilrig_seal_surface_rebreather_off_guy1" );
    wait 2;
    level._ID49792._ID11025 = 0;
    level._ID48061._ID11025 = 0;
    level._ID49792._ID10998 = 0;
    level._ID48061._ID10998 = 0;
    _ID42237::_ID14413( "player_at_lower_breach" );
    level._ID49792._ID525 = level._ID49792._ID53334;
    level._ID48061._ID525 = level._ID48061._ID53334;
    _ID42237::_ID14413( "lower_room_breached" );
    var_1 thread _unknown_44E4();
    var_5 _meth_80B7();
}

_ID45114( var_0 )
{
    level endon( "player_approaching_gear_friendlies" );
    level endon( "player_looking_at_gear_friendlies" );
    var_1 = undefined;

    for (;;)
    {
        wait 0.05;
        var_1 = _ID42237::_ID41802( level._ID794 _meth_80AF(), level._ID794 _meth_8346(), var_0._ID740, level._ID8760["25"] );

        if ( var_1 )
            _ID42237::_ID14402( "player_looking_at_gear_friendlies" );
    }
}

_ID49343()
{
    var_0 = [];
    var_0[0] = self;
    var_0[1] = level._ID49527;
    var_0[2] = level._ID54409;
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    level._ID47769 notify( "stop_idle" );
    level._ID47769 _ID42259::_ID3099( var_0, "stealth_kill" );
    self waittillmatch( "single anim",  "end"  );

    if ( _func_02F( self._ID22746 ) )
        _ID42407::_ID36519();

    self _meth_80B7();
    var_1 = undefined;
    var_2 = level._ID37355;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID922 ) && var_3._ID922 == "fin_remove_guy" )
        {
            var_1 = var_3;
            break;
        }
    }

    var_clear_2
    var_clear_0
    level._ID47769 _ID42259::_ID3023( var_1, "oilrig_seal_surface_fins_off" );
    thread maps\oilrig_anim::_ID44366( "fins_off_oilrig_seal_surface_fins_off", "oilrig_seal_surface_fins_off_prop", level._ID47769, "player_ready_to_be_helped_from_water" );
    var_1 _meth_81B2( var_1._ID740 );
    _ID42237::_ID14413( "player_ready_to_be_helped_from_water" );
    var_1 thread _ID42407::_ID27079( "oilrig_seal_surface_fins_off" );
    level._ID47769 _ID42259::_ID3020( var_1, "oilrig_seal_surface_fins_off" );
    var_1 _ID42407::_ID12445();
    _ID42237::_ID14413( "lower_room_breached" );
    var_1 thread _unknown_45F3();
}

_ID54379()
{
    level._ID34352 = "oilrig";
    maps\jake_tools::_ID38942( "colornodes_rig", "script_noteworthy", 1 );
    thread _unknown_4424( 1 );
    thread _unknown_3CA6();
    thread _unknown_2BB1();
    thread _unknown_2BF9();
    thread _unknown_3DA7();
    thread _unknown_2CF2();
    thread _unknown_2DC3();
    thread _unknown_2C50();
    thread _unknown_2C90();
    thread _unknown_2BC5();
    thread _unknown_45EE( "lower_room_breached", "lower_room_cleared" );
    thread _unknown_2BD2( [ "railing_patroller_dead", "player_at_lower_breach", "player_looking_at_railing" ] );
    var_0 = _unknown_43F1( "allies", "water_helper_01" );
    var_0 _ID42237::_ID10192( 10, ::_meth_81AF, 0 );
    thread _unknown_4BF6();
    _ID42237::_ID14413( "lower_room_cleared" );
    thread _unknown_2BFE( "player_above_first_breach_room" );
    thread _unknown_4AC9();
    thread _unknown_4B0D();
    _func_053();
    thread _unknown_2EF0();
}

friendlies_pushplayer_until( var_0 )
{
    var_1 = _ID42407::_ID3328( level._ID51388 );
    _ID42237::_ID3294( var_1, ::_meth_81AF, 1 );

    if ( _func_0D3( var_0 ) )
        _ID42237::flag_wait_any_in_array( var_0 );
    else
        _ID42237::_ID14413( var_0 );

    var_1 = _ID42407::_ID3328( var_1 );
    _ID42237::_ID3294( var_1, ::_meth_81AF, 0 );
}

_ID49757()
{
    _ID42237::_ID14413( "player_at_lower_breach" );
    _ID42237::_ID14413( "follow_team_in_stairs_after_deck1_breach" );
    _unknown_45E3();
    _ID42237::_ID14413( "lower_room_breached" );
    _unknown_45F3();
}

_ID49125()
{
    _ID42237::_ID14413( "lower_room_breached" );
    var_0 = _func_1A1( "volume_first_room", "script_noteworthy" );
    wait 2;
    var_1 = _func_0C8( "node_deck1_door", "targetname" );
    level._ID44035 _ID42407::_ID10871();
    _ID42237::_ID14413( "lower_room_cleared" );
    wait 0.5;
    level._ID44035 _meth_81B1( var_1 );
    var_2 = _func_1A1( "door_deck1", "targetname" );
    var_2 _meth_80B7();
    var_3 = _func_1A1( "door_deck1_animated", "targetname" );
    var_3 _meth_805A();
    var_4 = _func_1A1( "breachB_hide_vent", "targetname" );
    var_4 _meth_82C9();
    var_4 _meth_805A();
    _ID42237::_ID14413( "player_approaching_deck1" );
    level._ID44035 _ID42407::_ID12445();
}

_ID46345( var_0 )
{
    for (;;)
    {
        wait 0.05;

        while ( _ID42237::_ID41802( level._ID794 _meth_80AF(), level._ID794 _meth_8346(), self._ID740, level._ID8760["45"] ) )
            wait 0.1;

        if ( _func_0F3( self._ID740, level._ID794._ID740 ) > 512 )
            break;
    }

    self _meth_81D2( var_0._ID740, var_0._ID65 );
    self _meth_81B2( self._ID740 );
    self _meth_81B1( var_0 );
}

_ID52631()
{
    _ID42237::_ID14413( "player_at_lower_breach" );
    var_0 = _func_1A1( "origin_breach1_dialogue", "targetname" );
    var_0 thread _ID42237::_ID27000( "oilrig_muffled_1st_breach_voices" );
    var_1 = _func_1A2( "hostiles_ambient_breach1", "targetname" );
    var_2 = _ID42407::_ID3339( var_1 );
    _ID42237::_ID3350( var_2, ::_unknown_43A3, var_0 );
    level waittill( "A door in breach group 100 has been activated." );
    thread _unknown_466C();
    thread maps\oilrig_aud::_ID54685();
    _ID42237::_ID3294( var_2, ::_meth_80B7 );
    level waittill( "breach_explosion" );
    _ID42237::_ID14402( "lower_room_breached" );
    var_0 notify( "stop soundoilrig_muffled_1st_breach_voices" );
    thread _unknown_36B6( var_0, 100 );
}

_ID45016()
{
    level endon( "player_at_lower_breach" );
    wait(_func_0BA( 4, 6 ));

    while ( _ID42237::_ID14385( "player_dealing_with_rail" ) )
        wait 0.5;

    _ID42407::_ID28864( "oilrig_nsl_keepittight" );
    wait(_func_0BA( 6, 8 ));

    while ( _ID42237::_ID14385( "player_dealing_with_rail" ) )
        wait 0.5;

    _ID42407::_ID28864( "oilrig_nsl_readyweapons" );
    wait(_func_0BA( 6, 8 ));

    while ( _ID42237::_ID14385( "player_dealing_with_rail" ) )
        wait 0.5;

    _ID42407::_ID28864( "oilrig_nsl_moveup2" );
}

_ID52052()
{
    level endon( "mission failed" );
    _ID42407::_ID28864( "oilrig_nsl_sect1alpha" );
    _ID42407::_ID28864( "oilrig_sbc_rogerhtlsix" );
    _ID42237::_ID14402( "obj_hostages_secure_given" );
    thread _unknown_2F1B();
    thread _unknown_2EAB();
    _ID42237::_ID14413( "railing_patroller_dead" );
    wait 2;
    _ID42407::_ID28864( "oilrig_roomclear_ghost_03" );
    _ID42237::_ID14413( "player_at_lower_breach" );
    _ID42407::_ID28864( "oilrig_sbc_civilhostages" );
    _ID42407::_ID28864( "oilrig_nsl_tm1tobreach" );
    thread _unknown_4284( 100 );
    _ID42237::_ID14413( "lower_room_cleared" );
    _ID42407::_ID28864( "oilrig_roomclear_ghost_05" );
    _ID42407::_ID28864( "oilrig_nsl_wereclear" );
    var_0 = _func_0B7( 2 );
    _ID42407::_ID28864( "oilrig_hostsec_0" + var_0 );
    _ID42237::_ID14402( "lower_room_cleared" );
    _ID42407::_ID28864( "oilrig_sbc_secandevac" );
    _ID42407::_ID28864( "oilrig_deck2_movenag_start" );
    _ID42237::_ID14402( "start_nagging_to_go_to_deck1" );
    _ID42237::_ID14413( "player_above_first_breach_room" );
    _ID42407::_ID28864( "oilrig_nsl_eyesopen" );
}

_ID52942()
{
    level endon( "upper_room_breached" );
    _ID42237::_ID14413( "start_nagging_to_go_to_deck1" );
    var_0 = _func_1A1( "volume_first_room", "script_noteworthy" );

    while ( !_ID42237::_ID14385( "upper_room_breached" ) )
    {
        if ( level._ID794 _meth_80B0( var_0 ) )
            _unknown_2FD5();

        wait(_func_0BA( 8, 14 ));
    }
}

_ID48374()
{
    var_0 = _func_0B7( 4 );
    _ID42407::_ID28864( "room1_manhandler_nag_0" + var_0 );
}

_ID48073()
{
    level endon( "mission failed" );
    level endon( "railing_patroller_dead" );
    _ID42237::_ID3350( level._ID805, ::_unknown_3026 );
    _ID42237::_ID14421( "player_looking_at_railing", "player_at_lower_breach" );

    if ( !_ID42237::_ID14385( "railing_patroller_dead" ) )
    {
        _ID42237::_ID14402( "player_dealing_with_rail" );
        _ID42407::_ID28864( "oilrig_ns1_visbyrailing" );
        _ID42237::_ID14388( "player_dealing_with_rail" );
    }

    if ( !_ID42237::_ID14385( "railing_patroller_dead" ) )
    {
        _ID42237::_ID14402( "player_dealing_with_rail" );
        _ID42407::_ID28864( "oilrig_nsl_suppweapons" );
        _ID42237::_ID14388( "player_dealing_with_rail" );
    }
}

_ID48652()
{
    self endon( "death" );
    level endon( "railing_patroller_dead" );
    level endon( "player_at_lower_breach" );
    level endon( "player_looking_at_railing" );
    var_0 = _func_1A1( "railing_org", "targetname" );

    for (;;)
    {
        wait 0.25;

        if ( self _meth_8349() )
        {
            var_1 = self _meth_80AF();

            if ( _ID42237::_ID41802( var_1, self _meth_8346(), var_0._ID740, level._ID8760["25"] ) )
                _ID42237::_ID14402( "player_looking_at_railing" );
        }
    }
}

_ID54704( var_0 )
{
    var_1 = var_0[0];
    _unknown_30FF( var_1 );
    var_2 = _func_1A5();
    var_2._ID740 = var_1._ID740;
    var_2._ID65 = var_1._ID65;
    return var_2;
}

_ID43019( var_0 )
{
    var_0._ID43194 = 1;

    if ( _func_02F( var_0._ID22746 ) )
        var_0 _ID42407::_ID36519();

    _ID42237::_ID14402( "railing_patroller_dead" );
}

_ID43846( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        self._ID38 = var_0;
        waittillframeend;
    }
}

_ID45115()
{
    level endon( "stealth_broken" );
    var_0 = _func_1A2( "hostile_railing", "targetname" );
    var_1 = var_0[_func_0B9( 0, 2 )];
    var_2 = var_1 _ID42407::_ID35014();
    var_2._ID511 = 1;
    var_2._ID3189 = "generic";
    var_2 _ID42358::_ID3551();
    thread _unknown_4F8E( var_2 );
    var_2._ID43194 = 0;
    var_2 thread _unknown_3192( "noncombat" );
    var_2 thread _unknown_4C50();
    level._ID794 thread _ID42407::_ID51500( [ var_2 ], "smoker_takedown", 130, 45, 60, 0, 0.25, ::_unknown_318F, undefined, "weapon_parabolic_knife", undefined, undefined, undefined, undefined, 4 );
    var_2 thread _unknown_3265();
    level._ID49820 = var_2;
    var_3 = _func_0C8( var_2._ID1191, "targetname" );
    var_3 thread _ID42259::_ID3025( var_2, "oilrig_balcony_smoke_idle", "stop_idle" );
    var_2 thread _ID42407::_ID22746();
    thread _unknown_3336( var_2 );
    var_2 thread _unknown_327D( var_3 );
    var_2 thread _unknown_324A();
    var_2 waittill( "damage" );

    if ( var_2._ID43194 == 0 )
    {
        var_2 _meth_80C5( 0 );
        var_2._ID54440 = 1;
        level._ID794._ID52561 = 0;
        _ID42237::_ID14402( "railing_patroller_dead" );
        thread _unknown_329B();
        var_3 notify( "stop_idle" );
        var_3 thread _ID42237::_ID27077( "railing_death_sound" );

        if ( _func_02F( var_2._ID22746 ) )
            var_2 _ID42407::_ID36519();

        var_2._ID52049 = 1;
        var_3 _ID42259::_ID3020( var_2, "railing_death" );
        level._ID794._ID52561 = undefined;
    }
}

_ID51725()
{
    self endon( "stealth_takedown_started" );
    self endon( "death" );
    level endon( "railing_patroller_dead" );
    self endon( "stealth_takedown_started" );
    var_0 = 90000;
    var_1 = 1225;

    for (;;)
    {
        var_2 = _func_0F5( self._ID740, level._ID794._ID740 );

        if ( level._ID794 _meth_83E5() && var_2 < var_0 || var_2 < var_1 )
            break;

        waittillframeend;
    }

    level notify( "stealth_broken" );
    var_3 = _func_0C8( self._ID1191, "targetname" );
    var_3 notify( "stop_idle" );
    self notify( "stop_idle" );
    _ID42407::_ID3136();
    _ID42407::_ID4918( "axis" );
    _unknown_4AB1();
}

_ID52031()
{
    var_0 = _func_1A2( "first_breach_safe_volumes", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID740 = var_2._ID740 + ( 0, 0, 20000 );
    }

    var_clear_2
    var_clear_0
}

_ID44325( var_0 )
{
    if ( !_func_02F( self ) )
        return;

    level endon( "railing_patroller_dead" );
    level waittill( "stealth_broken" );
    var_0 notify( "stop_idle" );
    self notify( "stop_idle" );
    thread _ID42407::_ID27081( "RU_1_resp_ack_co_gnrc_affirm_custom", "j_head" );
    _ID42407::_ID3136();
    _ID42407::_ID4918( "axis" );
    _unknown_4B27();
}

_ID50435()
{
    var_0 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    self waittill( "damage" );

    if ( _func_02F( self ) && !_func_2A5( self ) )
        self.ignore_safe_volume = 1;

    self waittillmatch( "single anim",  "splash"  );
    var_0._ID740 = self._ID740;
    _func_156( _ID42237::_ID16299( "body_splash_railing" ), var_0._ID740 );
    var_0 _ID42407::_ID27079( "scn_body_splash" );
    wait 10;
    var_0 _meth_80B7();
}

_ID43034()
{
    self._ID47852 = 1;
    wait 0.5;
    self waittill( "goal" );
    level waittill( "A door in breach group 100 has been activated." );
    self _meth_81AF( 0 );
    thread _ID42259::_ID3111( self, "breach_react" );
    self._ID47852 = undefined;
}

_ID54613()
{
    _ID42237::_ID14413( "player_at_lower_breach" );
    _ID42237::_ID14413( "railing_patroller_dead" );
    maps\jake_tools::_ID38942( "colornodes_lower_breach", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_lower_breach" );
    wait 1.5;
    var_0 = _func_0C8( "node_railing_friendly", "targetname" );
    var_0 notify( "stop_idle" );
    level._ID44035 notify( "stop_idle" );
    level._ID44035 _ID42407::_ID12445();
    level._ID44035._ID452 = 8;
    level._ID44035 _ID42367::_ID1944();
    thread _ID42407::_ID4422( "lower_breach" );
    level._ID44035 thread _unknown_34DD();
    level waittill( "A door in breach group 100 has been activated." );
    var_1 = _func_1A1( "volume_first_room", "script_noteworthy" );
    level._ID52474 = _func_0C9( "node_hostage_bottom", "targetname" );
    level waittill( "slowmo_breach_friendlies_assigned" );
    var_2 = [];

    if ( _func_02F( var_1.breaching_friendly1 ) )
    {
        var_2[var_2.size] = var_1.breaching_friendly1;
        var_1.breaching_friendly1.friendly_breach_finished_flag = "friendly1_lower_breach_done";
    }

    if ( _func_02F( var_1.breaching_friendly2 ) )
    {
        var_2[var_2.size] = var_1.breaching_friendly2;
        var_1.breaching_friendly2.friendly_breach_finished_flag = "friendly2_lower_breach_done";
    }

    _ID42237::_ID14413( "lower_room_cleared" );
    _ID42237::_ID3350( level._ID48906, _ID42407::_ID29840 );
    wait 1;
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_1A7( var_4 ) && _func_02F( var_4.friendly_breach_finished_flag ) )
        {
            _ID42237::_ID14413( var_4.friendly_breach_finished_flag );
            var_4.friendly_breach_finished_flag = undefined;
        }
    }

    var_clear_2
    var_clear_0
    var_6 = _func_1A1( "deck1_after_breach_stairs_transition", "script_noteworthy" );
    var_6 thread _unknown_360C();
    var_6 _ID42237::_ID38865();
    maps\jake_tools::_ID38942( "colornodes_after_lower_breach", "script_noteworthy", 1 );
    maps\jake_tools::_ID38942( "colornodes_deck1", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_after_lower_breach" );
    thread _ID42407::_ID4422( "lower_breach_finished" );
}

sync_allies_in_deck1_stairs_after_breach()
{
    self endon( "death" );
    var_0 = [];

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( _ID42237::_ID3303( var_0, var_1 ) )
            continue;

        var_0[var_0.size] = var_1;

        if ( var_0.size >= 2 )
        {
            _ID42237::_ID14402( "follow_team_in_stairs_after_deck1_breach" );
            self _meth_80B7();
        }
    }
}

_ID44758( var_0 )
{
    level endon( "railing_patroller_dead" );
    var_0 endon( "stealth_takedown_started" );
    var_1 = _func_0C8( "node_railing_friendly", "targetname" );
    level._ID44035 _ID42407::_ID10871();
    level._ID44035 _meth_81AF( 1 );
    level._ID44035 _meth_81B1( var_1 );
    level._ID44035 _ID42367::_ID29570();
    var_1 _ID42259::_ID3027( level._ID44035, "railing_execute_reach" );
    var_1 _ID42259::_ID3020( level._ID44035, "railing_execute_reach" );
    var_1 thread _ID42259::_ID3025( level._ID44035, "railing_execute_idle", "stop_idle" );
    _ID42237::_ID14421( "player_alerted_railing", "player_broke_stealth" );
    wait 5;
    level._ID44035 thread _unknown_3719( var_0, var_1 );
}

_ID45725( var_0, var_1 )
{
    self notify( "stop_idle" );
    var_1 notify( "stop_idle" );
    var_1 thread _ID42259::_ID3020( self, "railing_execute_shoot" );
    var_2 = var_0 _meth_818C( "tag_eye" );
    _func_1C8( self._ID1302, self _meth_818C( "tag_flash" ), var_2 );
    thread _ID42237::_ID27077( "bullet_impact_headshot", var_2 );
    _func_01E( self _meth_818C( "tag_flash" ), var_2, 1 );
    self waittillmatch( "single anim",  "end"  );
    var_1 thread _ID42259::_ID3025( level._ID44035, "railing_execute_idle", "stop_idle" );
}

_ID53620()
{
    _ID42237::_ID3350( _func_1A2( "triggers_deck1_hall", "targetname" ), _ID42237::_ID38865 );
    thread _unknown_4F03( "upper_room_breached", "upper_room_cleared" );
    thread _unknown_3802();
    thread _unknown_3BB1();
    thread _unknown_4701();
    thread _unknown_381B();
    thread _unknown_385D();
    thread _unknown_3899();
    thread _unknown_38A3();
    thread _unknown_3881();
    thread _unknown_3892();
    thread _unknown_38E5();
    thread _unknown_465C();
    thread _unknown_4699();
    thread _unknown_3909();
    thread _unknown_3C8D();
    thread _unknown_3DAC();
    thread _unknown_3DF4();
    thread _unknown_3E50();
    thread _unknown_382E();
    thread _unknown_54E1();
}

friendly_c4_react()
{
    var_0 = _func_1A1( "c4_origin", "targetname" );
    var_1 = level._ID35507;
    _ID42237::_ID14413( "ambush_c4_triggered" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];

        if ( _func_0F5( var_0._ID740, var_3._ID740 ) < 250000 )
        {
            var_3 _ID42407::_ID32628( 0 );
            var_4 = _func_0BA( 4.5, 6.5 );
            var_3 thread _ID42407::_ID14510( var_4 );
            var_3 _ID42407::_ID32628( 1 );
        }
    }

    var_clear_2
    var_clear_0
}

_ID51430()
{
    _ID42237::_ID14413( "lower_room_cleared" );
    _unknown_4F24();
    thread _unknown_4ECA();
    _ID42237::_ID14413( "upper_room_breached" );
    _unknown_4F39();
    thread _unknown_4EEE();
}

_ID45488()
{
    _ID42237::_ID14413( "player_ignoring_heli_flyby" );
    var_0 = _func_1A1( "origin_ambush_discovery_dialogue", "targetname" );
    var_0 thread _ID42237::_ID27000( "oilrig_muffled_2nd_breach_voices" );
    var_1 = _func_1A2( "hostiles_ambient_deckbreach", "targetname" );
    var_2 = _ID42407::_ID3339( var_1 );
    _ID42237::_ID3350( var_2, ::_unknown_4C20, var_0 );
    level waittill( "A door in breach group 200 has been activated." );
    thread _unknown_394C();
    thread _unknown_4EEE();
    thread maps\oilrig_aud::_ID52265();
    _ID42237::_ID3294( var_2, ::_meth_80B7 );
    level waittill( "breach_explosion" );
    _ID42237::_ID14402( "upper_room_breached" );
    var_0 notify( "stop soundoilrig_muffled_2nd_breach_voices" );
    thread _unknown_3F38( var_0, 200 );
}

_ID43478()
{
    var_0 = _func_1A1( "volume_first_room", "script_noteworthy" );
    var_1 = var_0 _ID42407::_ID15547();

    if ( var_1.size )
    {
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( var_3 != level._ID44035 )
            {
                if ( _func_02F( var_3._ID22746 ) )
                    var_3 _ID42407::_ID36519();

                var_3 _meth_80B7();
            }
        }

        var_clear_2
        var_clear_0
    }
}

_ID50076()
{
    _ID42237::_ID14413( "player_approaching_deck1" );
    var_0 = _ID42411::_ID35195( "heli_patrol_02" );
    var_0 thread _unknown_49B4();
    var_0 thread maps\oilrig_aud::vehicle_turn_engine_off();
    _ID42237::_ID14413( "player_at_door_to_deck1" );
    thread _ID42411::_ID17021( var_0 );
    var_0 thread maps\oilrig_aud::heli_patrol_02_flyby();
    _ID42234::_ID13611( 200 );
    thread _unknown_4F3B( 1 );
    var_0 waittill( "reached_dynamic_path_end" );
    var_0 _meth_80B7();
}

_ID47895()
{
    level endon( "mission failed" );
    level endon( "player_at_door_to_deck1" );
    _ID42237::_ID14413( "player_approaching_deck1" );
    _ID42407::_ID28864( "oilrig_sbc_lowprofile" );
    _ID42407::_ID28864( "oilrig_nsl_rogerthat" );
}

_ID53956()
{
    level endon( "mission failed" );
    _ID42237::_ID14413( "player_at_door_to_deck1" );
    thread maps\oilrig_aud::deck_1_disable_enemy_battlechatter();
    _unknown_4AEE();
    level endon( "player_ignoring_heli_flyby" );
    wait 4.5;
    _ID42237::_ID14402( "heli_flyby_finished" );
    level endon( "player_at_last_breach_building" );

    if ( !_ID42237::_ID14385( "player_at_last_breach_building" ) )
        _unknown_4B23();
}

_ID52037()
{
    level waittill( "A door in breach group 200 has been activated." );
    level._ID794 _unknown_4F47( 1 );
}

_ID50046()
{
    _ID42237::_ID14421( "heli_flyby_finished", "player_ignoring_heli_flyby" );
    level._ID34352 = "oilrig";
    maps\jake_tools::_ID38942( "colornodes_upper_room_setup", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_upper_room_setup" );
    var_0 = _func_1A2( "breach_upper_desk", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_3B26 );
    var_1 = _func_1A2( "ambush_damage_triggers", "targetname" );
    _ID42237::_ID3350( var_1, ::_unknown_3B34 );
}

_ID49252()
{
    _ID42237::_ID14413( "ambush_c4_triggered" );
    wait 2;
    thread _unknown_4007();
}

_ID44059()
{
    level endon( "upper_room_cleared" );

    while ( !_ID42237::_ID14385( "upper_room_cleared" ) )
    {
        self waittill( "trigger",  var_0  );

        if ( _func_02F( var_0._ID1194 ) && var_0._ID1194 == "axis" )
        {
            _func_18F( self._ID740, self._ID851, 500, 500 );
            break;
        }
    }
}

_ID52417()
{
    level endon( "mission failed" );
    var_0 = _func_1A1( "volume_ambush_room", "script_noteworthy" );
    var_0 endon( "breached" );
    _ID42237::_ID14413( "player_at_last_breach_building" );
    thread _ID42407::_ID4422( "deck1_breach" );
    _ID42407::_ID28864( "oilrig_sbc_hostatposition" );
    level._ID44035 maps\jake_tools::_ID10760( "oilrig_nsl_copythat" );
    wait 4;
    thread _unknown_4C2B( 200 );
}

_ID47273()
{
    level endon( "mission failed" );
    level endon( "missionfailed" );
    thread _unknown_4008();
    var_0 = level._ID794;
    var_1 = _func_1A1( "volume_ambush_room", "script_noteworthy" );
    level waittill( "A door in breach group 200 has been activated." );
    _ID42237::_ID3350( level._ID45175, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID49941, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID54394, _ID42237::_ID26402 );
    _ID42237::_ID14413( "upper_room_breached" );
    var_2 = [];
    var_2[0] = _func_1A1( "origin_c4_friendly", "targetname" );
    var_2[1] = _func_1A1( "origin_c4_friendly2", "targetname" );
    var_3 = [];
    var_3[0] = _func_0C8( "ambush_guard_01", "targetname" );
    var_3[1] = _func_0C8( "ambush_guard_02", "targetname" );
    var_4 = _ID42237::_ID16276( level._ID794._ID740, var_2 );
    var_5 = _ID42237::_ID16276( level._ID794._ID740, var_3 );
    _ID42237::_ID14402( "lower_decks_closed_off" );
    var_6 = _func_1A1( "door_deck1_animated", "targetname" );
    var_6 _meth_8059();
    var_6._ID3189 = "door";
    var_6 _ID42259::_ID32556();
    var_7 = _func_1A1( "breachB_hide_vent", "targetname" );
    var_7 _meth_8059();
    var_8 = _func_1A2( "bottom_deck_destructibles", "script_noteworthy" );
    _ID42237::_ID3350( var_8, ::_unknown_5357 );
    var_9 = _func_0C9( "node_team2_scaffolding", "targetname" );
    level._ID37355 = _ID42407::_ID3339( _func_1A2( "team2_escort", "targetname" ), 1 );
    level._ID37355[0] thread _ID42407::_ID37393( var_9[0] );
    level._ID37355[1] thread _ID42407::_ID37393( var_9[1] );
    _ID42237::_ID14413( "upper_room_cleared" );
    _ID42237::_ID3350( level._ID54394, _ID42407::_ID29840 );
    thread _ID42407::_ID4422( "deck1_breach_finished" );
    var_10 = [];
    var_10[0] = level._ID49792;
    var_10[1] = level._ID48061;
    var_11 = _ID42237::_ID16276( level._ID794._ID740, var_10 );
    var_11 thread _unknown_3F41( var_4, var_5 );
    _ID42237::_ID14402( "obj_hostages_secure_complete" );
    _ID42407::_ID28864( "oilrig_roomclear_ghost_05" );
    _ID42407::_ID28864( "oilrig_nsl_clear" );
    level._ID44035 maps\jake_tools::_ID10760( "oilrig_nsl_strongholdsec" );
    level._ID44035 _ID42407::_ID8925( "off" );
    level._ID44035 _meth_8172();
    level._ID49792 _ID42407::_ID8925( "off" );
    level._ID49792 _meth_8172();
    level._ID48061 _ID42407::_ID8925( "off" );
    level._ID48061 _meth_8172();
    level._ID44035._ID38 = "noncombat";
    level._ID49792._ID38 = "noncombat";
    level._ID48061._ID38 = "noncombat";
    var_12 = _func_1A1( "pa_speaker", "targetname" );
    var_12 _ID42407::_ID27079( "oilrig_enc_maerhoffer" );
    _ID42407::_ID28864( "oilrig_ns1_havecompany" );
    level._ID44035 thread maps\jake_tools::_ID10760( "oilrig_nsl_goingloud" );
    var_12 _ID42407::_ID10226( 5, _ID42407::_ID27079, "oilrig_enc_team5" );
    wait 2;
    thread _unknown_40A8( var_1 );
    _ID42237::_ID14402( "obj_c4_ambush_plant_given" );
    thread _ID42407::_ID4422( "obj_c4_ambush_plant_given" );
    wait 2;
    level._ID44035 thread _unknown_4086();
    _ID42237::_ID14413( "player_has_started_planting_c4" );
    level._ID44035._ID38 = "alert";
    level._ID49792._ID38 = "alert";
    level._ID48061._ID38 = "alert";
    level._ID49792 _ID42407::_ID8925( "on" );
    level._ID48061 _ID42407::_ID8925( "on" );
    _ID42237::_ID14425( "obj_c4_ambush_plant_complete", 6 );

    if ( !_ID42237::_ID14385( "obj_c4_ambush_plant_complete" ) )
        _ID42237::_ID14402( "obj_c4_ambush_plant_complete" );

    thread _unknown_3F83();
    thread _ID42407::_ID4422( "c4_planted" );
    thread _unknown_40A2();
    _ID42407::_ID28864( "oilrig_ns2_c4placed" );
    maps\jake_tools::_ID38942( "colornodes_ambush_setup", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_ambush_setup" );
    thread _unknown_3F9C();
    thread _ID42407::_ID28864( "oilrig_nsl_ambushthem" );
    _ID42237::_ID14402( "obj_ambush_given" );
    thread _unknown_4117();
    _ID42237::_ID14413( "ambush_enemies_spawned" );
    level._ID44035 thread _unknown_556A( "m4m203_reflex" );
    level._ID49792 thread _unknown_5575( "mp5_reflex" );
    level._ID48061 thread _unknown_557F( "mp5_reflex" );
    thread _unknown_5375();
    _unknown_540C();
    _ID42237::_ID14421( "ambush_enemies_alerted", "ambush_enemies_alerted_prematurely" );
    thread _unknown_53E9();
    wait 1;
    _unknown_5437();
    _unknown_4F7C( "dummy_spawner_ballsout_intro" );
    thread _unknown_4468();
    _ID42237::_ID14413( "player_passing_ambush_gate" );
    thread _ID42407::_ID4422( "past_ambush_gate" );
}

_ID54485()
{
    var_0 = _func_06A( "script_origin", ( 1553.33, 208.546, -1055.5 ) );
    var_0 _ID42259::_ID3074( level._ID44035, "soap_go_up_scaffolding" );
    _ID42237::_ID14402( "soap_reached_scaffold" );
    var_0 = _func_06A( "script_origin", ( 1642.48, 135.2, -1055.5 ) );
    var_0 _ID42259::_ID3020( level._ID44035, "soap_go_up_scaffolding" );
}

_ID47759()
{
    level endon( "ambush_enemies_alerted" );
    level endon( "ambush_enemies_alerted_prematurely" );
    level._ID794 endon( "death" );
    var_0 = 0;
    var_1 = 0;

    for (;;)
    {
        if ( var_0 == 1 && var_1 == 1 )
            break;

        wait 1;
        var_2 = level._ID794 _meth_8317();
        var_3 = level._ID794 _meth_831C();
        var_4 = var_2;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( var_5 == "scar_h_thermal_silencer" && var_3 != "scar_h_thermal_silencer" && var_0 == 0 )
            {
                level._ID794 _meth_831A( "scar_h_thermal_silencer" );
                level._ID794 _meth_8319( "scar_h_thermal" );
                var_0 = 1;

                if ( _func_02F( level._ID794._ID25540 ) && level._ID794._ID25540 == "scar_h_thermal_silencer" )
                    level._ID794._ID25540 = "scar_h_thermal";
            }

            if ( var_5 == "m4m203_silencer_reflex" && var_3 != "m4m203_silencer_reflex" && var_1 == 0 )
            {
                level._ID794 _meth_831A( "m4m203_silencer_reflex" );
                level._ID794 _meth_8319( "m4m203_reflex" );
                var_1 = 1;

                if ( _func_02F( level._ID794._ID25540 ) && level._ID794._ID25540 == "m4m203_silencer_reflex" )
                    level._ID794._ID25540 = "m4m203_reflex";
            }
        }

        var_clear_2
        var_clear_0
    }
}

_ID49906()
{
    var_0 = _func_1A1( "prison_sequence_dummies_walk", "script_noteworthy" );
    var_1 = _func_1A1( "prison_sequence_dummies_run", "script_noteworthy" );
    var_2 = var_0;
    var_3 = var_1;
    var_4 = var_3._ID740 + ( 0, 0, 36 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    var_5 = _func_1A1( "volume_ambush_room", "script_noteworthy" );
    var_6 = var_5 _ID42407::_ID15547( "neutral" );
    var_7 = [];
    var_7[0] = level._ID37355[0];
    var_7[1] = var_6[0];
    var_7[0]._ID3189 = "manhandle_soldier_walk";
    var_7[1]._ID3189 = "manhandle_prisoner_walk";
    var_8 = [];
    var_8[0] = level._ID37355[1];
    var_8[1] = var_6[1];
    var_8[0]._ID3189 = "manhandle_soldier_run";
    var_8[1]._ID3189 = "manhandle_prisoner_run";
    _ID42237::_ID14413( "player_has_started_planting_c4" );

    while ( _ID42237::_ID41802( level._ID794 _meth_80AF(), level._ID794 _meth_8346(), var_6[0]._ID740, level._ID8760["45"] ) )
        wait 0.1;

    var_9 = var_6;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];
        var_10 _meth_805A();
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( level._ID22889 ) )
    {
        if ( level._ID22889 _meth_80B0( var_5 ) )
        {
            if ( _func_02F( level._ID22889._ID22746 ) )
                level._ID22889 _ID42407::_ID36519();

            level._ID22889 _meth_80B7();
        }
    }

    var_2 _ID42259::_ID3016( var_7, "prisoner_manhandle_walk" );
    var_3 _ID42259::_ID3016( var_8, "prisoner_manhandle_run" );
    var_12 = var_6;

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_10 = var_12[var_13];
        var_10 _meth_8059();
    }

    var_clear_1
    var_clear_0
    var_14 = _func_1A1( "player_looking_at_prisoner_sequence", "targetname" );
    var_14 _ID42237::_ID38865();
    thread _unknown_436F();
    _ID42237::_ID14421( "player_looking_at_prisoner_sequence", "trig_prisoner_sequence_failsafe" );
    _ID42237::_ID3350( var_7, ::_unknown_4379, var_2, "prisoner_manhandle_walk" );
    _ID42237::_ID3350( var_8, ::_unknown_4387, var_3, "prisoner_manhandle_run" );
}

_ID26776( var_0, var_1 )
{
    if ( !_func_1A7( self ) )
        return;

    self endon( "death" );
    var_0 _ID42259::_ID3111( self, var_1 );

    if ( _func_02F( self._ID22746 ) )
        _ID42407::_ID36519();

    self _meth_80B7();
}

_ID49345()
{
    var_0 = _func_1A1( "trig_prisoner_sequence_failsafe", "targetname" );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "trig_prisoner_sequence_failsafe" );
}

_ID47855()
{
    self endon( "death" );
}

_ID46545( var_0, var_1 )
{
    self endon( "death" );
    level._ID794 endon( "death" );
    level._ID794 endon( "death" );
    var_2 = _func_1A1( var_0._ID1191, "targetname" );
    var_3 = _func_1A1( var_2._ID1191, "targetname" );
    _ID42407::_ID10871();
    _ID42407::_ID8925( "on" );
    self _meth_81B1( var_1 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    wait(_func_0BA( 2, 4 ));
    var_0 _ID42259::_ID3027( self, "C4_plant_start" );
    self _meth_81B2( self._ID740 );

    while ( level._ID794 _meth_80B0( var_3 ) )
        wait 0.05;

    var_0 thread _ID42259::_ID3020( self, "C4_plant" );
    thread _unknown_5D3C( var_2 );
    wait 2;
    self _meth_81B1( var_1 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    _ID42407::_ID12445();
    _ID42237::_ID14413( "ambush_c4_triggered" );
    var_2 _meth_80B7();
}

_ID49388()
{
    level endon( "ambush_c4_triggered" );
    level endon( "obj_explosives_locate_given" );
    wait 2;
    thread _unknown_44FF();
    var_0 = _func_1A1( "ambush_area", "targetname" );
    var_1 = 0;
    var_2 = 0;

    for (;;)
    {
        wait 0.05;

        if ( level._ID794 _meth_831C() != "c4" && var_1 == 0 && !_ID42237::_ID14385( "player_on_ladder" ) )
        {
            wait 0.5;
            _ID42407::_ID18638();
            thread _ID42407::_ID18611( &"OILRIG_HINT_C4_SWITCH" );
            var_1 = 1;
            var_2 = 0;
        }
        else if ( level._ID794 _meth_831C() == "c4" && var_1 == 1 )
        {
            _ID42407::_ID18638();
            var_1 = 0;
        }

        if ( !level._ID794 _meth_80B0( var_0 ) && var_2 == 0 && var_1 == 0 )
        {
            _ID42407::_ID18638();
            var_2 = 1;
            var_1 = 0;
        }

        if ( level._ID794 _meth_80B0( var_0 ) && var_2 == 1 && var_1 == 0 )
        {
            _ID42407::_ID18638();
            var_2 = 0;
        }
    }
}

_ID45721()
{
    _ID42237::_ID14421( "ambush_c4_triggered", "obj_explosives_locate_given" );
    thread _ID42407::_ID18638();
}

_ID53045()
{
    level endon( "ambush_enemies_alerted_prematurely" );
    level endon( "ambush_c4_triggered" );
    var_0 = _func_1A1( "ambush_area", "targetname" );
    var_0 endon( "trigger" );
    wait(_func_0B9( 14, 18 ));
    thread _ID42407::_ID28864( "oilrig_nsl_elevatedposwait" );
}

_ID48542()
{
    level endon( "obj_ambush_complete" );
    var_0 = _func_0C8( "node_guard_scaffolding", "targetname" );
    _ID42407::_ID10871();
    self _meth_81B1( var_0 );
    self._ID38 = "alert";
    level._ID44035 _ID42407::_ID8925( "on" );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    var_1 = _func_0C9( "friendlyStartHeli", "targetname" );
    var_0 = undefined;
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID922 ) && var_3._ID922 == "nodePrice" )
        {
            var_0 = var_3;
            break;
        }
    }

    var_clear_2
    var_clear_0
    var_5 = _func_1A1( "ambush_area", "targetname" );
    var_5 waittill( "trigger" );
    _ID42237::_ID14413( "soap_reached_scaffold" );
    self._ID452 = 182;
    self _meth_81B1( var_0 );
    self _meth_81AF( 1 );
    var_6 = _func_1A1( "colornodes_heli_deck1", "script_noteworthy" );
    var_6 waittill( "trigger" );
    self _meth_81AF( 0 );
}

_ID43201( var_0 )
{
    level endon( "obj_c4_ambush_plant_complete" );
    level endon( "player_has_started_planting_c4" );
    level endon( "c4_placement_started" );
    wait(_func_0B9( 4, 6 ));
    _ID42407::_ID28864( "oilrig_nsl_donthavetime" );
    wait(_func_0B9( 4, 6 ));
    _ID42407::_ID28864( "oilrig_nsl_plantc4" );
    wait(_func_0B9( 4, 6 ));
    _ID42407::_ID28864( "oilrig_nsl_donthavetime" );
    wait 4;
    _ID42237::_ID14402( "friendlies_had_to_plant_C4" );
    thread _unknown_4737();
}

_ID51819()
{
    _ID42237::_ID14402( "oilrig_mission_failed" );
    _func_034( "ui_deadquote", &"OILRIG_MISSIONFAIL_EXPLOSIVES_NOTPLANTED" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID43207( var_0 )
{
    _ID42237::_ID14413( "upper_room_breached" );
    var_1 = _func_1A2( "c4_hostiles", "targetname" );
    var_2 = _func_1A2( "c4_hostiles2", "targetname" );
    var_3 = _ID42237::_ID16276( level._ID794._ID740, var_1 );
    var_4 = _ID42237::_ID16276( level._ID794._ID740, var_2 );
    level._ID52916 = [];
    var_3 thread _unknown_47E5( "execution_slamwall_hostage_death", "c4bodywall", undefined, ::_unknown_47D8 );
    var_4 thread _unknown_47F5( "execution_hostile2_death", undefined, ::_unknown_47DD, ::_unknown_47E8 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    level._ID44035 thread _unknown_6007();
    level._ID44035 notify( "stop personal effect" );
    _ID42237::_ID14413( "ambush_c4_triggered" );
    level._ID44035 thread animscripts\utility::_ID26591();
}

choose_body_ground_anim( var_0, var_1 )
{
    var_2 = _func_11F( var_1._ID65 );
    var_3 = _func_11F( level._ID794._ID65 );
    var_4 = _func_0FB( var_2, var_3 );

    if ( var_4 > 0 )
        return "c4bodyground2";
    else
        return "c4bodyground";
}

return_deadbody_pos( var_0 )
{
    return var_0;
}

_ID48410( var_0, var_1, var_2, var_3 )
{
    var_4 = level._ID30895["generic"][var_0];
    var_5 = self;
    var_6 = _ID42407::_ID35014();
    var_6 _ID42407::_ID17509();
    var_7 = _func_1A1( var_6._ID1191, "targetname" );
    var_5 _ID42259::_ID3023( var_6, var_0 );
    var_8 = _ID42412::_ID8613( var_6 );
    var_8 _meth_8155( var_4, 1, 0.2 );
    var_8 _meth_82C9();
    var_8._ID46157 = var_1;
    var_8._ID3189 = "generic";
    level._ID52916[level._ID52916.size] = var_8;
    var_9 = var_1;

    if ( _func_02F( var_2 ) )
        var_9 = level._ID794 [[ var_2 ]]( var_7, var_8 );

    var_7 thread _unknown_5E3F( var_9 );
    var_8 thread _unknown_48F6( _func_067( var_4 ), var_9, var_4 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    thread _unknown_490F( var_7, var_1, var_8, var_2, var_3 );
    _ID42237::_ID14413( "ambush_c4_triggered" );
    var_7 notify( "clear_c4" );
    var_8 _meth_80B7();
}

playfirstframeplantanim( var_0, var_1, var_2 )
{
    wait(var_0);
    self _meth_814C( var_2, 0 );
    _ID42259::_ID3018( self, var_1 );
}

_ID52229( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_0 _ID43691::_ID53929( undefined, ( 0, 0, 0 ), ( 0, 0, 0 ), var_0._ID740, undefined, undefined, var_1, undefined, undefined, undefined, 1, undefined, var_2, var_3, var_4 );
    var_0 thread _unknown_61C4();
    var_0 thread _unknown_538F();
    var_0 thread _unknown_4992( var_5 );
    var_0 waittill( "c4_detonation" );

    if ( !_ID42237::_ID14385( "ambush_c4_triggered" ) )
        _ID42237::_ID14402( "ambush_c4_triggered" );
}

_ID50453( var_0 )
{
    self endon( "c4_planted" );
    level endon( "ambush_c4_triggered" );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    var_0 thread _unknown_49CF();
}

_ID45475()
{
    self endon( "death" );
    self _meth_805A();
    wait 0.15;
    _func_158( _ID42237::_ID16299( "c4_light_blink" ), self, "tag_fx" );
}

_ID46459()
{
    var_0 = _func_1A1( "volume_ambush_room_exterior_front", "script_noteworthy" );
    var_1 = _func_1A1( "volume_ambush_room_exterior_side", "script_noteworthy" );
    var_2 = _func_1A1( "volume_ambush_room", "script_noteworthy" );
    var_3 = _func_1A1( "volume_c4_ambush", "targetname" );
    _ID42237::_ID14413( "ambush_c4_triggered" );
    _ID42237::_ID14402( "ambush_enemies_alerted" );
    _ID42407::_ID13828();
    thread _ID42237::_ID27077( "oilrig_ambush_explosion", var_2._ID740 );
    thread maps\oilrig_aud::breach_2_fire_sounds();

    if ( _func_03A( "disable_ambush_slowmo" ) == 1 )
        _func_192( 0.6, 2, level._ID794._ID740, 1500 );

    level._ID794 _meth_80B4( "damage_heavy" );
    _ID42234::_ID13611( 1 );

    if ( level._ID794 _meth_80B0( var_2 ) )
    {
        _func_156( _ID42237::_ID16299( "player_death_explosion" ), level._ID794._ID740 );
        level._ID794 _meth_8058();
    }
    else if ( level._ID794 _meth_80B0( var_0 ) || level._ID794 _meth_80B0( var_1 ) )
    {
        _func_156( _ID42237::_ID16299( "player_death_explosion" ), level._ID794._ID740 );
        _func_18F( level._ID794._ID740, 500, 75, 50 );
        level._ID794 _meth_859F( var_2._ID740 );
    }

    thread _unknown_4CA3();
    _func_184( var_2._ID740, 300, 300, 10.0, 0 );
    var_4 = var_2 _ID42407::_ID15547();
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _func_02F( var_6._ID22746 ) )
            var_6 _ID42407::_ID36519();

        if ( var_6 _ID42407::_ID20542( level._ID35507, var_6 ) )
        {
            level thread _ID42297::_ID23776();
            return;
        }

        var_6 _meth_8057( var_6._ID486 + 1000, var_6._ID740, level._ID794 );
    }

    var_clear_2
    var_clear_0
    var_4 = var_3 _ID42407::_ID15547();
    var_8 = var_4;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_6 = var_8[var_9];

        if ( _func_02F( var_6 ) && _func_1A7( var_6 ) )
        {
            var_6._ID14521 = "allies";
            var_6 _ID42407::_ID14510( 5 );
        }
    }

    var_clear_1
    var_clear_0
    wait 1;
    thread _unknown_4C59();
    wait 5;
    _ID42407::_ID24927();
}

_ID47488()
{
    var_0 = _func_1A1( "ambush_room_anchor", "targetname" );
    var_1 = _func_1A1( "ambush_room_anchor_destroyed", "targetname" );
    var_2 = var_0._ID740 - var_1._ID740;
    var_3 = _func_1A2( "ambush_office_destroyed", "script_noteworthy" );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_5._ID170 == "light_spot" || var_5._ID170 == "light_omni" )
        {
            var_5._ID53354 = var_5 _meth_81EA();
            var_5 _meth_81EB( 0 );
            continue;
        }

        var_5 _meth_805A();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "ambush_c4_triggered" );
    var_3 = _func_1A2( "ambush_office_destroyed", "script_noteworthy" );
    var_7 = var_3;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_5 = var_7[var_8];
        var_5._ID740 = var_5._ID740 + var_2;
    }

    var_clear_1
    var_clear_0
    wait 0.5;
    var_3 = _func_1A2( "ambush_office_destroyed", "script_noteworthy" );
    var_9 = var_3;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_5 = var_9[var_10];

        if ( var_5._ID170 == "light_spot" || var_5._ID170 == "light_omni" )
        {
            var_5 _meth_81EB( var_5._ID53354 );
            continue;
        }

        var_5 _meth_8059();
    }

    var_clear_1
    var_clear_0
    var_11 = _func_1A2( "ambush_office", "script_noteworthy" );
    var_12 = var_11;

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_5 = var_12[var_13];

        if ( var_5._ID170 == "light_spot" || var_5._ID170 == "light_omni" )
        {
            var_5 _meth_81EB( 0 );
            continue;
        }

        var_5._ID740 = var_5._ID740 - var_2;
        var_5 _meth_80C5( 0 );
        var_5 _meth_805A();
    }

    var_clear_1
    var_clear_0
}

_ID49029()
{
    _ID42234::_ID13611( "exploder_ambush_afterfx" );
    _ID42237::_ID14402( "ambush_aftermath" );
    var_0 = _func_1A1( "volume_ambush_room", "script_noteworthy" );
    var_1 = _func_1A2( "com_vending_can_new2_destroyed", "script_noteworthy" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_237( var_3._ID740, var_0 ) )
            var_3 _meth_80B8( "com_vending_can_new2_destroyed" );
    }

    var_clear_2
    var_clear_0
    wait 2;
    var_5 = _func_1A2( "breach_room_2_destructible_triggers", "script_noteworthy" );
    _ID42237::_ID3350( var_5, ::_unknown_4E33 );
}

_ID43230()
{
    if ( !_func_02F( self ) )
        return;

    if ( level._ID794 _meth_80B0( self ) )
        return;

    _func_18F( self._ID740, self._ID851, 500, 500 );
    self _meth_80B7();
}

_ID49576()
{
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    _ID42237::_ID14425( "player_in_ambush_position", 8 );
    wait 5;
    thread _unknown_5A71();
    var_0 = _func_1A2( "hostiles_ambush", "targetname" );
    var_1 = _ID42407::_ID3339( var_0 );
    _ID42237::_ID14402( "ambush_enemies_spawned" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3.cheat._ID48626 = 1;
    }

    var_clear_2
    var_clear_0
    level endon( "ambush_enemies_alerted_prematurely" );
    var_5 = _func_1A1( "ambush_enemies_approaching", "targetname" );
    var_5 waittill( "trigger" );
    _ID42237::_ID14402( "ambush_enemies_approaching" );
    var_5 = _func_1A1( "enemies_discovered_bodies", "targetname" );
    var_5 waittill( "trigger" );
    _ID42237::_ID14402( "enemies_discovered_bodies" );
}

_ID46334()
{
    level endon( "ambush_enemies_alerted" );
    _unknown_4F30();
    _ID42237::_ID14402( "ambush_enemies_alerted_prematurely" );
}

_ID45034()
{
    self endon( "death" );
    _ID42237::_ID41068( "damage", "enemy", "alerted", "bulletwhizby", "flashbang", "grenade danger", "explode", "pain_death" );
}

_ID53868()
{
    level endon( "ambush_enemies_alerted_prematurely" );
    level endon( "ambush_c4_triggered" );
    _ID42237::_ID14413( "ambush_enemies_approaching" );
    wait 0.5;
    _ID42237::_ID14413( "ambush_gate_opened" );
    wait 1;
    var_0 = _func_0DE( "axis" );
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_2 = var_1._ID740 + ( 0, 0, -512 );
    thread _unknown_5A8C( var_2 );
    wait 2;
    var_3 = level._ID44035 _ID42407::_ID16120( "oilrig_nsl_standby2" );
    level._ID44035 _meth_8155( var_3 );
    _ID42407::_ID28864( "oilrig_nsl_standby2" );
    thread _unknown_5AAD( var_2 );
    _ID42237::_ID14413( "enemies_discovered_bodies" );
    wait 1;
    thread _unknown_501E();
    wait 1;
    var_3 = level._ID44035 _ID42407::_ID16120( "oilrig_nsl_doit" );
    level._ID44035 _meth_8155( var_3 );
    _ID42407::_ID28864( "oilrig_nsl_doit" );
    _ID42237::_ID14402( "ambush_enemies_alerted" );
}

_ID45662()
{
    var_0 = _func_1A1( "origin_ambush_discovery_dialogue", "targetname" );
    var_0 thread _ID42407::_ID27081( "temp_vo_alarm" );

    if ( !_ID42237::_ID14385( "ambush_c4_triggered" ) )
    {
        _ID42237::_ID14413( "ambush_c4_triggered" );
        var_0 _meth_80B7();
    }
}

_ID54544( var_0, var_1 )
{
    var_2 = _func_0B7( 2 );
    var_3 = "oilrig_mrc_killhostages_room_" + var_1 + "_0" + var_2;
    wait 0.5;
    var_4 = _ID42407::_ID15601( level._ID794._ID740, "axis" );

    if ( _func_02F( var_4 ) )
        var_4 thread _ID42407::_ID27081( level._ID30909[var_3], "tag_origin" );
}

_ID45787()
{
    _ID42237::_ID14421( "ambush_enemies_alerted", "ambush_enemies_alerted_prematurely" );
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID4918( "allies" );
    wait 1.5;
    _ID42237::_ID14402( "obj_ambush_complete" );
    thread maps\oilrig_aud::aud_handle_alarm();
}

_ID53544()
{
    self._ID9813 = level._ID30895["generic"]["guy_blown_out_door_death"];
    self _meth_8058();
    wait 0.1;
    var_0 = 8000;
    self _meth_8024( "torso_lower", var_0 * ( 0, -1, 0.5 ) );
}

_ID45805()
{
    var_0 = _func_1A1( "hostile_c4_blowup", "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_2 = var_1._ID740 + ( 0, 20, 35 );
    var_1 thread _unknown_5161();

    if ( _func_03A( "disable_ambush_slowmo" ) != 1 )
        _ID42407::_ID45369( 0.15, 0.2, 0.4, 10 );
}

_ID46346()
{
    thread _unknown_59E4();
    thread _unknown_51D1();
    thread _unknown_51BB();
    _ID42237::_ID14413( "player_at_stairs_to_deck_2" );
    thread _unknown_527E();
}

_ID49342()
{
    maps\jake_tools::_ID38942( "colornodes_deck1_postbreach", "script_noteworthy", 1 );
    thread _unknown_51EC();
    _ID42237::_ID14413( "obj_explosives_locate_given" );
    level._ID48061 _ID42407::_ID32628( 0 );
    level._ID48061 _ID42367::_ID29570();
    level._ID48061 thread _ID42407::_ID36519();
}

deck1_postbreach_color_nodes_monitor()
{
    var_0 = _func_1A2( "colornodes_deck1_postbreach", "script_noteworthy" );
    _ID42237::waittill_any_ent_in_array_is_notified( var_0, "trigger" );
    _ID42237::_ID14402( "deck1_postbreach_color_nodes_activated" );
}

_ID47283()
{
    _ID42407::_ID4917( "allies" );
    wait 2;
    _ID42407::_ID28864( "oilrig_nsl_coverblown" );
    _ID42407::_ID28864( "oilrig_sbc_possibleexpl" );
    _ID42407::_ID28864( "oilrig_sbc_secthatloc" );
    _ID42407::_ID28864( "oilrig_nsl_callforexfil" );
    _ID42237::_ID14402( "obj_explosives_locate_given" );
    thread _ID42407::_ID28864( "oilrig_nsl_centcom" );
    _unknown_5D6C( "dummy_spawner_ballsout" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID12445 );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "off" );
    wait 2;

    if ( _ID42237::_ID14385( "deck1_postbreach_color_nodes_activated" ) )
        level._ID44035 _meth_81AF( 0 );
    else
    {
        maps\jake_tools::_ID38942( "colornodes_heli_deck1", "script_noteworthy", 1 );
        _ID42407::_ID1804( "colornodes_heli_deck1" );
    }

    wait 3;
    _ID42407::_ID4918( "allies" );
    wait 3;
    _ID42407::_ID28864( "oilrig_nsl_move2" );
}

_ID48371( var_0 )
{
    if ( level._ID15361 > 1 )
        return;

    var_1 = 1.25;
    var_2 = 20;

    if ( level._ID15361 == 0 )
    {
        var_1 = 2.5;
        var_2 = 40;
    }

    var_3 = 0;

    while ( _func_02F( var_0 ) && var_3 < var_2 )
    {
        level._ID794 waittill( "damage",  var_5, var_4  );

        if ( !_func_02F( var_0 ) )
            break;

        if ( !_func_02F( var_0._ID23512 ) )
            break;

        if ( _func_02F( var_5 ) && _func_02F( var_0._ID23512 ) && _ID42407::_ID20542( var_0._ID23512, var_5 ) )
        {
            level._ID794 _meth_80F6();
            wait(var_1);
            var_3++;
            var_1 /= 1.3;
            level._ID794 _meth_80F7();
        }
    }

    level._ID794 _meth_80F7();
}

_ID54279( var_0, var_1 )
{
    level endon( var_1 );
    level endon( "player_at_end_of_deck2" );
    var_2 = 1;
    var_3 = 1;
    var_4 = 1;
    var_5 = 1;

    while ( !_ID42237::_ID14385( var_1 ) )
    {
        wait(_func_0BA( 15, 25 ));

        if ( _func_02F( var_0 ) && _func_02F( var_0._ID14343 ) && var_0._ID14343 == 1 )
        {
            while ( _func_02F( var_0._ID14343 ) && var_0._ID14343 == 1 )
                wait 0.5;
        }

        if ( !level._ID794 _ID42407::_ID27729() )
        {
            while ( var_2 == var_3 )
            {
                wait 0.05;
                var_2 = _func_0B7( 5 );
            }

            if ( _ID42237::_ID14385( var_1 ) )
                break;

            _ID42407::_ID28864( "oilrig_nsl_takeoutbird_0" + var_2 );
            var_3 = var_2;
            continue;
        }

        while ( var_4 == var_5 )
        {
            wait 0.05;
            var_4 = _func_0B7( 4 );
        }

        if ( _ID42237::_ID14385( var_1 ) )
            break;

        _ID42407::_ID28864( "oilrig_nsl_takeoutbird_withrocket_0" + var_4 );
        var_5 = var_4;
    }
}

_ID51991()
{
    thread _unknown_5CC2();
    thread _unknown_614E();
    thread _unknown_54C0();
    thread _unknown_54F0();
    thread _unknown_553B();
    thread _unknown_5510();
    thread _unknown_6929();
    _ID42237::_ID14413( "player_at_end_of_deck2" );
    thread _unknown_6171();
    thread _unknown_565B();
}

_ID53604()
{
    _ID42237::_ID14413( "player_at_deck1_midpoint" );
    _ID42407::_ID4917( "allies" );
    thread _ID42407::_ID4422( "deck2_start" );
    wait(_func_0BA( 1, 2 ));
    _ID42407::_ID28864( "oilrig_sbc_gettolz" );
    thread _ID42407::_ID28864( "oilrig_nsl_copythat2" );
    _ID42237::_ID14402( "zodiacs_evaced" );
    wait 4;
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14413( "player_approaching_deck2_flank_path" );
    _ID42407::_ID28864( "oilrig_nsl_splitup" );
    thread _ID42407::_ID4422( "split_up" );
    _ID42237::_ID14413( "player_at_end_of_deck2" );
    _ID42407::_ID28864( "oilrig_nsl_rescuethemselves" );
    wait 2;

    if ( !_ID42237::_ID14385( "player_on_right_top_deck" ) )
        _ID42407::_ID28864( "oilrig_nsl_moveup" );
}

_ID44961()
{
    _ID42237::_ID14413( "player_at_stairs_to_deck_2" );
    var_0 = _ID42411::_ID35200( "zodiacs_evac" );
    var_0[0] thread maps\oilrig_aud::aud_zodiac_hostage_extraction();
    var_1 = _func_1A2( "zodiacs_grate", "targetname" );
    _ID42237::_ID3294( var_1, ::_meth_80B7 );
    _ID42237::_ID3350( var_0, ::_unknown_55D3 );
}

_ID50079()
{
    _func_157( _ID42237::_ID16299( "zodiac_wake_geotrail_oilrig" ), self, "tag_origin" );
}

_ID48981()
{
    var_0 = _func_1A2( "hostiles_rappel_deck2", "targetname" );
    _ID42237::_ID14413( "player_approaching_deck_2" );
    maps\jake_tools::_ID38942( "colornodes_deck2", "script_noteworthy", 1 );
    _ID42237::_ID14413( "player_at_deck_2" );
    thread _ID42407::_ID4422( "rappel_firefight" );
    thread _unknown_5638();
    var_1 = _unknown_6242( var_0 );
}

_ID43937()
{
    level._ID794._ID511 = 1;
    _ID42237::_ID14425( "rappel_dudes_failsafe", 5 );
    level._ID794._ID511 = 0;
}

_ID52777()
{
    self _meth_80C5( 0 );
}

hot_potato_achievement_think()
{
    self waittill( "death",  var_2, var_2, var_2  );

    if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
    {
        if ( _func_02F( var_2 ) && var_2 == "fraggrenade" )
            _ID42407::_ID16864( "HOT_POTATO" );
    }
}

_ID44243()
{
    level endon( "heli_not_killed_in_time" );
    _ID42237::_ID14413( "player_deck2_littlebird" );
    var_0 = _ID42411::_ID35195( "heli_deck2" );
    level._ID18342 = var_0;
    var_0 thread _unknown_56BB();
    _ID42237::_ID3350( var_0._ID29965, ::_unknown_56BF );
    _ID42237::_ID14421( "player_looking_deck2_littlebird", "player_deck2_littlebird_failsafe" );
    _ID42407::_ID10226( 2, ::_unknown_604D );
    thread _ID42411::_ID17021( var_0 );
    var_0 _meth_828D( 10 );
    var_0 thread maps\oilrig_aud::heli_deck2_audio();
    _ID42475::_ID34575( "aud_start_mix_lbs_reveal" );
    var_1 = var_0._ID23512;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42413::_ID39304( "manual" );
        var_2 _meth_806C( "manual" );
    }

    var_clear_2
    var_clear_0
    var_0._ID11585 = 1;
    thread _unknown_5653( var_0 );
    thread _unknown_64C9( var_0 );
    var_0 _meth_826F( level._ID794 );
    var_0 thread _unknown_57B4();
    var_0 _ID42407::_ID10226( 3, _ID42508::_ID18413, "tag_barrel", 1 );
    thread _unknown_57CC( var_0 );
    thread _unknown_57BE( var_0 );
    _ID42237::_ID14421( "player_shoots_or_aims_rocket_at_intimidating_heli", "deck_2_heli_is_finished_intimidating" );
    var_0 = _ID42508::_ID4977( var_0 );
    wait 1;
    thread _unknown_56C7( var_0, "heli_deck2_shot_down" );
    _ID42237::_ID14413( "heli_deck2_shot_down" );
    var_0 thread _unknown_67E0();
    thread _ID42407::_ID4422( "heli_deck2_dead" );
    wait 1.5;
    thread _unknown_60C5();
    wait 2;
    _ID42407::_ID28864( "oilrig_nsl_clocksticking" );
}

_ID50725( var_0 )
{
    level endon( "heli_deck2_shot_down" );
    _ID42237::_ID14413( "top_deck_room_breached" );
    _ID42237::_ID14402( "heli_not_killed_in_time" );

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();

    wait 0.5;
    _ID42237::_ID14402( "heli_deck2_shot_down" );
}

_ID44207()
{
    wait 5;
    _ID42237::_ID14402( "deck_2_heli_is_finished_intimidating" );
}

_ID43381( var_0 )
{
    level endon( "deck_2_heli_is_finished_intimidating" );
    level endon( "player_shoots_or_aims_rocket_at_intimidating_heli" );

    for (;;)
    {
        var_0 waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

        if ( !_func_02F( var_2 ) || !_func_1B3( var_2 ) )
        {
            continue;
            continue;
        }

        _ID42237::_ID14402( "player_shoots_or_aims_rocket_at_intimidating_heli" );
        break;
    }
}

_ID49809( var_0 )
{
    var_1 = "derrick_room_getting_breached";
    var_2 = "stop_smoke";
    var_3 = var_0;

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];
        var_5 = _func_06A( "script_model", var_4._ID740 );
        var_5 _meth_80B8( "weapon_us_smoke_grenade_burnt" );
        var_5._ID65 = ( 0, 0, 90 );
    }

    var_clear_3
    var_clear_0

    for (;;)
    {
        var_7 = undefined;
        var_8 = var_0;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_4 = var_8[var_9];
            var_4 thread _ID42237::_ID27077( "h1_wpn_smoke_pop" );
            wait(_func_0BA( 0.1, 0.3 ));
        }

        var_clear_5
        var_clear_4
        var_10 = var_0;

        for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
        {
            var_4 = var_10[var_11];
            _func_156( _ID42237::_ID16299( "smokescreen" ), var_4._ID740 );
        }

        var_clear_3
        var_clear_2
        wait 28;

        if ( _ID42237::_ID14385( var_1 ) || _ID42237::_ID14385( var_2 ) )
        {
            wait 4;
            var_12 = var_0;

            for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
            {
                var_4 = var_12[var_13];
                _func_156( _ID42237::_ID16299( "smokescreen_oilrig_fadeout" ), var_4._ID740 );
            }

            var_clear_1
            var_clear_0
            break;
        }
    }
}

deck_2_monitor_and_sync_ais_before_3rd_floor()
{
    _ID42237::_ID14402( "deck_2_sync_ais_before_3rd_floor" );
    level.deck2_to_deck3_allies_in_zone = [];
    var_0 = _func_1A1( "deck2_to_deck3_allies_monitor", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( _ID42237::_ID3303( level.deck2_to_deck3_allies_in_zone, var_1 ) )
            continue;

        level.deck2_to_deck3_allies_in_zone[level.deck2_to_deck3_allies_in_zone.size] = var_1;

        if ( _ID42237::_ID14385( "deck_2_sync_ais_before_3rd_floor" ) )
            thread _unknown_5A4B( var_0 );
    }
}

deck_2_ais_before_3rd_floor_inside_zone( var_0 )
{
    _ID42237::_ID14388( "deck_2_sync_ais_before_3rd_floor" );

    while ( level.deck2_to_deck3_allies_in_zone.size )
    {
        waittillframeend;

        for ( var_1 = level.deck2_to_deck3_allies_in_zone.size - 1; var_1 >= 0; var_1-- )
        {
            var_2 = level.deck2_to_deck3_allies_in_zone[var_1];

            if ( _func_1A7( var_2 ) && var_2 _meth_80B0( var_0 ) )
                continue;

            var_3 = level.deck2_to_deck3_allies_in_zone.size - 1;
            level.deck2_to_deck3_allies_in_zone[var_1] = level.deck2_to_deck3_allies_in_zone[var_3];
            level.deck2_to_deck3_allies_in_zone[var_3] = undefined;
        }
    }

    _ID42237::_ID14402( "deck_2_sync_ais_before_3rd_floor" );
}

_ID50801()
{
    _ID42237::_ID14402( "need_to_check_axis_death" );
    level._ID34352 = "oilrig";
    thread _unknown_5B2E();
    thread _unknown_5AFA();
    level._ID34354 = 1;
    thread _unknown_5B9A();
    thread _unknown_6971( "top_deck_room_breached", "barracks_cleared" );
    thread _unknown_5BC5();
    thread _unknown_5C50();
    thread _unknown_61A7();
    thread _unknown_61C2();
    thread _ID42407::_ID4422( "deck3_start" );
    thread _unknown_5C93();
    thread _unknown_5C9D();
    _ID42237::_ID14413( "barracks_cleared" );
    thread _unknown_5D3C();
}

_ID53078()
{
    _ID42237::_ID14413( "player_at_stairs_to_top_deck" );
    var_0 = _func_1A2( "breach_save_deck3", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_5B62 );
}

_ID43012()
{
    level endon( "breach_deck3_autosave_threaded" );
    level endon( "A door in breach group 300 has been activated." );
    var_0 = undefined;
    var_1 = _func_1A1( self._ID31273, "script_linkname" );
    var_2 = 0;

    for (;;)
    {
        self waittill( "trigger" );
        var_3 = 0;

        if ( var_2 == 0 )
        {
            var_2 = 1;
            var_4 = var_1 _ID42407::_ID15547( "axis" );
            thread _ID42407::_ID2265( var_4, 128 );
        }

        var_0 = _func_0DE( "axis" );
        var_5 = var_0;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];

            if ( var_6 _meth_80B0( self ) )
            {
                var_3 = 1;
                break;
            }
        }

        var_clear_2
        var_clear_0

        if ( var_3 == 0 )
        {
            thread _ID42407::_ID4422( "deck3_breach" );
            level notify( "breach_deck3_autosave_threaded" );
            break;
            continue;
        }

        wait 2;
    }
}

_ID50276()
{
    _ID42237::_ID14413( "player_at_stairs_to_top_deck" );
    var_0 = _func_1A2( "samsite_turret", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_5C46 );
}

_ID52126()
{
    self._ID23757 = [];
    self._ID23757[0] = "tag_missle1";
    self._ID23757[1] = "tag_missle2";
    self._ID23757[2] = "tag_missle3";
    self._ID23757[3] = "tag_missle4";
    self._ID23757[4] = "tag_missle5";
    self._ID23757[5] = "tag_missle6";
    self._ID23757[6] = "tag_missle7";
    self._ID23757[7] = "tag_missle8";
    var_0 = self._ID23757;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        self _meth_801D( "projectile_slamraam_missile", var_1, 1 );
    }

    var_clear_2
    var_clear_0
    var_3 = 4.4;
    wait(_func_0BA( 0, 1.5 ));
    var_4 = _func_1A1( self._ID1191, "targetname" );

    while ( !_ID42237::_ID14385( "top_deck_room_breached" ) )
    {
        self _meth_802A( "projectile_slamraam_missile", self._ID23757[0] );
        _func_192( 0.3, 0.5, self._ID740, 1600 );
        _func_1C8( "slamraam_missile_dcburning", self _meth_818C( self._ID23757[0] ), var_4._ID740 );
        self._ID23757 = _ID42237::_ID3321( self._ID23757, self._ID23757[0] );

        if ( self._ID23757.size < 1 )
            break;

        self _meth_82C1( 45, var_3, var_3 / 2, var_3 / 2 );
        wait(var_3);
        wait(_func_0BA( 0, 2 ));
        self _meth_82C1( -45, var_3, var_3 / 2, var_3 / 2 );
        wait(var_3);
        wait(_func_0BA( 0, 1.5 ));
    }
}

_ID45661()
{
    _ID42237::_ID14421( "player_near_breach_topdeck_right", "player_near_breach_topdeck_left" );
    _unknown_6AD5();
    _ID42237::_ID14413( "top_deck_room_breached" );
    _unknown_6AE4();
}

_ID47337()
{
    var_0 = 0;

    for (;;)
    {
        level waittill( "player_killed_an_enemy" );
        var_0++;

        if ( _ID42237::_ID14385( "player_got_deck3_autosave" ) )
        {
            _ID42237::_ID14388( "need_to_check_axis_death" );
            break;
        }

        if ( var_0 > 5 )
        {
            thread _ID42407::_ID4422( "deck3" );
            var_0 = 0;
        }
    }
}

_ID53812()
{
    _ID42237::_ID14413( "player_at_stairs_to_top_deck" );
    thread _unknown_5E04();

    if ( !_ID42407::_ID20614() )
    {
        var_0 = level._ID35507;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];

            if ( !_func_02F( var_1 ) )
                continue;

            var_1._ID11014 = 1;
        }

        var_clear_2
        var_clear_0
    }

    if ( !_ID42407::_ID20614() )
        thread _ID42407::_ID4422( "deck3_firefight_start" );

    _ID42237::_ID14413( "player_on_right_top_deck" );
    var_3 = _func_1A2( "smoke_deck3", "targetname" );
    thread _unknown_5D17( var_3 );
    wait 1;
    _ID42237::_ID14402( "smoke_thrown" );
    wait 2;

    if ( !_ID42407::_ID20614() )
    {
        var_4 = level._ID35507;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_1 = var_4[var_5];

            if ( !_func_02F( var_1 ) )
                continue;

            var_1._ID11014 = undefined;
        }

        var_clear_2
        var_clear_0
    }

    _ID42237::_ID14402( "smoke_firefight" );

    if ( !_ID42407::_ID20614() )
        thread _unknown_5F3B();

    _ID42237::_ID14425( "player_approaching_topdeck_building", 28 );

    if ( !_ID42237::_ID14385( "player_approaching_topdeck_building" ) )
    {
        if ( !_ID42407::_ID20614() )
        {
            if ( !_ID42237::_ID14385( "player_approaching_topdeck_building" ) )
                thread _unknown_6643();
        }
    }

    _ID42237::_ID14425( "player_approaching_topdeck_building", 28 );

    if ( !_ID42237::_ID14385( "player_approaching_topdeck_building" ) )
        thread _unknown_5FA2();

    _ID42237::_ID14421( "player_near_breach_topdeck_right", "player_near_breach_topdeck_left" );

    if ( !_ID42407::_ID20614() )
    {
        thread _ID42407::_ID4422( "deck3_breach_approach" );
        _ID42237::_ID14402( "player_got_deck3_autosave" );
        thread _unknown_66D1( 300 );
    }

    _ID42237::_ID14413( "derrick_room_getting_breached" );
    thread maps\oilrig_aud::_ID46492();
    _ID42407::_ID4917( "allies" );

    if ( !_ID42237::_ID14385( "stop_smoke" ) )
        _ID42237::_ID14402( "stop_smoke" );

    _ID42237::_ID3350( level._ID48906, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID49941, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID45175, _ID42237::_ID26402 );
    var_6 = _func_0DE();
    thread _unknown_601B();
    _ID42237::_ID3350( var_6, ::_unknown_600C );
    level waittill( "breach_explosion" );
    _ID42237::_ID14402( "top_deck_room_breached" );
}

_ID43379()
{
    _unknown_66E2();
    wait 1;
    thread _unknown_66F3();
    _ID42237::_ID14402( "done_with_smoke_dialogue" );
}

_ID48777()
{
    level endon( "top_deck_room_breached" );
    _ID42237::_ID14413( "player_approaching_topdeck_building" );

    if ( !_ID42237::_ID14385( "top_deck_room_breached" ) )
        _ID42407::_ID28864( "oilrig_sbc_hostconfirmed" );

    if ( !_ID42237::_ID14385( "top_deck_room_breached" ) )
        _ID42407::_ID28864( "oilrig_nsl_behinddoors" );
}

_ID52742()
{
    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID31433 ) )
        return;

    if ( !_ID42407::_ID20614() )
    {
        if ( _ID42407::_ID20542( level._ID35507, self ) )
            return;
    }

    if ( _func_02F( self ) )
    {
        if ( _func_02F( self._ID22746 ) )
            _ID42407::_ID36519();

        self _meth_80B7();
    }
}

_ID47385()
{
    maps\jake_tools::_ID38931( "smoke_flankers" );
}

_ID47401()
{
    _ID42372::_ID21309( 17 );
    _ID42372::_ID21309( 18 );
    _ID42372::_ID21309( 19 );
    _ID42372::_ID21309( 20 );
}

_ID45892()
{
    maps\jake_tools::_ID38942( "colornodes_deck3", "script_noteworthy", 1 );
}

_ID50414()
{
    var_0 = _func_1A2( "c4_barrel", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_610F );
    var_1 = _func_1A2( "c4barrelPacks", "script_noteworthy" );
    _ID42237::_ID3350( var_1, ::_unknown_6192 );
    level waittill( "A door in breach group 300 has been activated." );
    _ID42237::_ID14402( "derrick_room_getting_breached" );
}

_ID51124()
{
    if ( _ID42407::_ID20614() )
        level endon( "special_op_terminated" );

    level endon( "mission failed" );
    level endon( "missionfailed" );
    level endon( "player_detonated_explosives" );
    var_0 = self;
    var_0 _meth_82CA( 1 );
    var_0._ID47357 = undefined;

    switch ( level._ID15361 )
    {

    }

    _ID42237::_ID14413( "derrick_room_getting_breached" );

    while ( !_ID42237::_ID14385( "player_detonated_explosives" ) )
    {
        var_0 waittill( "damage",  var_9, var_8, var_7, var_6, var_5, var_4, var_3, var_2, var_1  );

        if ( _func_02F( var_2 ) && _func_1B3( var_2 ) )
        {
            if ( var_9 & 8 )
                continue;

            if ( _func_02F( var_5 ) && _func_125( var_5, "MOD_GRENADE" ) || _func_125( var_5, "MOD_EXPLOSIVE" ) || _func_125( var_5, "MOD_PROJECTILE" ) )
                break;

            if ( var_0._ID47357 > 0 )
                var_0._ID47357 = var_0._ID47357 - 1;

            if ( var_0._ID47357 == 0 )
                break;
        }
    }

    thread _unknown_628B();
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
    level._ID794 _meth_82FF( "oilrig_ambush_explosion" );
    _func_156( _ID42237::_ID16299( "player_death_explosion" ), level._ID794._ID740 );
    _func_192( 1, 1, level._ID794._ID740, 100 );
    _func_034( "ui_deadquote", &"OILRIG_MISSIONFAIL_EXPLOSIVES" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID49164()
{
    _ID42237::_ID14413( "derrick_room_getting_breached" );
    self _meth_8059();
    self _meth_82C9();
    wait(_func_0BA( 0, 0.6 ));
    _func_157( _ID42237::_ID16299( "light_c4_blink_nodlight" ), self, "tag_fx" );
    _ID42237::_ID14413( "player_on_board_littlebird" );
    self _meth_80B7();
}

_ID43690()
{
    _ID42407::_ID4918( "allies" );
    thread _unknown_67EC();
    thread _unknown_63A1();
    thread _unknown_664D();
    thread _unknown_635F();
    thread _unknown_6751();
    thread _unknown_74DE();
    _func_051();
}

_ID46262()
{
    level endon( "mission failed" );
    _ID42237::_ID14413( "barracks_cleared" );
    _ID42237::_ID14402( "obj_explosives_locate_complete" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    wait 0.5;
    _ID42475::_ID34575( "aud_start_mix_room_clear" );
    _ID42407::_ID28864( "oilrig_roomclear_ghost_05" );
    _ID42407::_ID28864( "oilrig_nsl_roomclear" );
    _ID42407::_ID28864( "oilrig_nsl_allhostsec" );
    _ID42237::_ID14402( "obj_escape_given" );
    _ID42407::_ID28864( "oilrig_sbc_phase2" );
    _ID42475::_ID34575( "aud_stop_mix_room_clear" );

    if ( !_ID42237::_ID14385( "player_on_board_littlebird" ) )
        _ID42407::_ID28864( "oilrig_rmv_goplat" );

    if ( !_ID42237::_ID14385( "player_on_board_littlebird" ) )
        _ID42407::_ID28864( "oilrig_gm1_copies" );

    if ( !_ID42237::_ID14385( "player_on_board_littlebird" ) )
        _ID42407::_ID28864( "oilrig_f15_twof15s" );

    if ( !_ID42237::_ID14385( "player_on_board_littlebird" ) )
        _ID42407::_ID28864( "oilrig_rmv_bluesky" );

    if ( !_ID42237::_ID14385( "player_on_board_littlebird" ) )
        _ID42407::_ID28864( "oilrig_f15_copies" );

    _ID42237::_ID14413( "littlebird_escape_lifted_off" );
    _ID42407::_ID28864( "oilrig_rmv_localairspace" );
    _ID42407::_ID28864( "oilrig_gm1_hunteractual" );
    _ID42407::_ID28864( "oilrig_rmv_samsitesneut" );
}

_ID49664()
{
    _ID42237::_ID14413( "barracks_cleared" );
    thread _ID42407::_ID4422( "escape" );
    var_0 = _func_0DE( "axis" );
    thread _ID42407::_ID2265( var_0, 512 );
    thread _unknown_7024();
    var_1 = "tag_player_attach_right";
    wait 1;
    maps\jake_tools::_ID38942( "colornodes_escape", "script_noteworthy", 1 );
    maps\jake_tools::_ID38942( "colornodes_escape_start", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_escape_start" );
    var_2 = _ID42407::_ID3339( _func_1A2( "littlebird_riders_left", "targetname" ) );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 thread _unknown_6612();
    }

    var_clear_2
    var_clear_0
    var_6 = _ID42407::_ID3339( _func_1A2( "littlebird_riders_right", "targetname" ) );
    var_6 = _ID42237::_ID3293( var_6, level._ID44035 );
    level._ID44035._ID31455 = 4;
    level._ID53676 = _ID42411::_ID35195( "littlebird_escape" );
    thread _ID42297::_ID14940( level._ID53676 );
    var_7 = _func_1A1( "obj_escape", "targetname" );
    _ID42237::_ID14402( "littlebird_escape_spawned" );
    thread _unknown_76AF();
    level._ID53676 thread maps\oilrig_aud::_ID46817();
    _ID42237::_ID14413( "player_headed_out_of_barracks" );
    _ID42475::_ID34575( "aud_start_mix_escape" );
    level._ID44035 _ID42407::_ID10871();
    var_8 = _ID42237::_ID16638( "pickup_node_before_stage", "script_noteworthy" );
    level._ID53676 thread _unknown_679F();
    var_9 = var_2;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_4 = var_9[var_10];
        var_4 _ID42407::_ID10871();

        if ( !_func_02F( var_4._ID22746 ) )
            var_4 thread _ID42407::_ID22746();

        var_4 _ID42407::_ID32628( 1 );
        var_4._ID511 = 1;
        var_4._ID465 = 0;
        var_4 _meth_8183( "oblivious" );
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "player_approaching_derrick_building_exit" );
    level._ID53676 _ID42411::_ID17021();
    _ID42237::_ID14402( "littlebird_escape_moving" );
    var_11 = level._ID35507;

    for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
    {
        var_4 = var_11[var_12];

        if ( _func_02F( var_4 ) && _func_1A7( var_4 ) )
        {
            var_4._ID24727 = 1;
            var_4 _ID42407::_ID10896();
            var_4._ID52882 = "run";
        }
    }

    var_clear_1
    var_clear_0
    _func_0DB( "cg_gunDownAnimDelayTime", 250 );
    thread _unknown_6755();
    level._ID53676 waittill( "touch_down" );
    _ID42237::_ID14402( "escape_littlebird_landed" );
    level._ID53676 thread _unknown_67B8( var_1 );
    level._ID53676 thread _unknown_68BA( var_1 );
    thread _unknown_7881();
    level._ID44035 _ID42407::_ID13027( "on_board_littlebird" );

    while ( level._ID53676._ID29965.size < 2 )
        wait 0.1;

    wait 1;
    level._ID53676 _ID42411::_ID40066( "idle_alert_to_casual" );
    _ID42237::_ID14413( "player_on_board_littlebird" );
    _ID42237::_ID14402( "obj_escape_complete" );
    _ID42237::_ID3350( level._ID48906, _ID42237::_ID26402 );
    _ID42234::_ID13611( "ride_smoke" );
    var_13 = _ID42237::_ID16638( "heli_escape_path", "targetname" );
    level._ID53676 thread _ID42411::_ID40218( var_13 );
    level._ID53676 _meth_829E( 50, 50 );
    _ID42237::_ID14402( "littlebird_escape_lifted_off" );
    thread _unknown_723A();
    level._ID53676 _ID42411::_ID40066( "idle_alert_to_casual" );
    level._ID53676 _meth_828D( 17 );
    _ID42237::_ID14413( "heli_escape_path_01" );
    var_14 = _ID42411::_ID35196( "blackhawk_main_deck" );
    var_15 = _func_1A1( "view_derrick_building_01", "targetname" );
    _ID42237::_ID14413( "heli_escape_path_03" );
    var_16 = _ID42407::_ID3339( _func_1A2( "friendlies_deck3_stairs", "targetname" ) );
    _ID42237::_ID14413( "heli_escape_path_04" );
    var_17 = _ID42411::_ID35196( "littlebird_wingman_01_drone" );
    var_17 _ID42411::_ID40066( "idle_alert_to_casual" );
    var_17 _meth_828D( 28 );
    _ID42237::_ID14413( "heli_escape_path_05" );
    level._ID53676 _meth_828D( 22 );
    _ID42237::_ID14413( "heli_escape_path_06" );
    var_18 = _ID42411::_ID35196( "littlebird_wingman_02_drone" );
    var_18 _ID42411::_ID40066( "idle_alert_to_casual" );
    var_18 _meth_828D( 33 );
    var_17 _meth_828D( 33 );
    _ID42400::_ID32545( "script_vehicle_littlebird_bench", "vfx/unique/no_fx" );
    var_19 = _ID42411::_ID35200( "jets_escape_flight_03" );
    level._ID53676 _meth_828D( 28 );
    _ID42237::_ID14413( "heli_escape_path_07" );
    _ID42237::_ID14413( "heli_escape_path_09" );
    var_18 _meth_828D( 30 );
    var_17 _meth_828D( 31 );
    wait 4.5;
    _unknown_6A7D();
}

handleleftsoldier()
{
    var_0 = _func_0C8( self._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    var_1 = _func_1A1( "littlebird_riders_left_node", "targetname" );
    _ID42237::_ID14413( "escape_littlebird_landed" );
    self._ID3189 = "generic";
    var_1 _ID42259::_ID3111( self, self._ID70 );
    var_1 thread _ID42259::_ID3044( self, self._ID70 + "_idle" );
    _ID42237::_ID14413( "player_on_board_littlebird" );
    _ID42407::_ID36519();
    self _meth_80B7();
}

_ID50565()
{
    _ID42237::_ID14413( "player_on_board_littlebird" );
    var_0 = _ID42411::_ID35200( "jets_escape_flight_01a" );
    _ID42237::_ID14413( "littlebird_escape_lifted_off" );
    wait 12;
    var_1 = _ID42411::_ID35200( "jets_escape_flight_01" );
}

_ID45541()
{
    var_0 = undefined;
    var_1 = undefined;
    var_2 = _func_1A2( "submarine_03", "targetname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_02F( var_4._ID31388 ) && var_4._ID31388 == "sub" )
        {
            var_0 = var_4;
            continue;
        }

        var_1 = var_4;
    }

    var_clear_2
    var_clear_0
    level._ID51672 = _func_06A( "script_origin", var_0._ID740 );
    level._ID51672._ID740 = var_0._ID740;
    level._ID51672._ID65 = var_0._ID65;
    var_1 _meth_8053( var_0 );
    var_0 _meth_8053( level._ID51672 );
    var_6 = 12;
    var_7 = 1024;
    level._ID51672 _meth_82B8( level._ID51672._ID740 + ( 0, 0, -1 * var_7 ), 0.1 );
    var_0 _meth_8059();
    var_1 _meth_8059();
    _ID42237::_ID14413( "sub_comes_through_ice" );
    level._ID51672 _meth_82B8( var_0._ID740 + ( 0, 0, var_7 ), var_6, var_6 / 3, var_6 / 3 );
}

_ID44270( var_0 )
{
    for (;;)
        wait 0.05;
}

_ID52364( var_0 )
{
    var_1 = self _meth_818C( var_0 );
    var_2 = 30;
    var_3 = 50;
    var_4 = 0;
    var_5 = _func_06A( "trigger_radius", var_1, var_4, var_2, var_3 );
    var_6 = _ID42237::_ID35164();
    var_6._ID740 = self _meth_818C( var_0 );
    var_6._ID65 = self _meth_818D( var_0 );
    var_6._ID65 = var_6._ID65 + ( 0, 0, 0 );
    var_6 _meth_8053( self, var_0, ( 0, 0, 0 ), ( 0, -90, 0 ) );
    var_5 waittill( "trigger" );
    thread _unknown_786A();
    _ID42475::_ID34575( "aud_start_player_inside_helicopter" );
    level._ID794 _meth_8334( 1 );
    _func_0DB( "ui_hidemap", 1 );
    _func_0DB( "hud_showStance", "0" );
    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "actionSlotsHide", 1 );
    var_7 = level._ID794 _meth_8188();
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_830C( 0 );
    level._ID794 _meth_8328();
    var_8 = 1.0;
    var_9 = 5;
    var_10 = 5;
    var_11 = 5;
    var_12 = 5;
    level._ID794.worldbody_rig = _ID42407::_ID35028( "worldbody" );
    level._ID794.worldbody_rig _meth_805A();
    _ID42259::_ID3018( level._ID794.worldbody_rig, "escape_in", var_0 );
    var_13 = 0.7;
    var_14 = _func_06A( "script_origin", level._ID794._ID740 );
    var_14._ID65 = level._ID794 _meth_8346();
    level._ID794 _meth_8083( var_14, undefined, 1.0, 0.0, 0.0, 0.0, 0.0 );
    var_14 _meth_82B8( level._ID794.worldbody_rig _meth_818C( "tag_camera" ) - ( 0, 0, 60 ), var_13, var_13 * 0.2, var_13 * 0.2 );
    var_14 _meth_82BF( level._ID794.worldbody_rig _meth_818D( "tag_camera" ), var_13, var_13 * 0.2, var_13 * 0.2 );
    wait(var_13);
    level._ID794 _meth_8084( level._ID794.worldbody_rig, "tag_player", var_8, var_9, var_10, var_11, var_12, 1 );
    level._ID794.worldbody_rig _meth_8059();
    _ID42259::_ID3111( level._ID794.worldbody_rig, "escape_in", var_0 );
    thread _ID42259::_ID3044( level._ID794.worldbody_rig, "escape_idle", undefined, var_0 );
    level._ID794 _meth_80A9( 0.5, 0.1, 0.1, 40, 40, 10, 20 );
    level._ID794.worldbody_rig _meth_8053( self, "tag_origin" );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    level._ID794 _meth_8334( 0 );
    level._ID794 _meth_8329();
    _ID42237::_ID14402( "player_on_board_littlebird" );
}

soap_gets_on_littlebird()
{
    level._ID44035 _ID42407::_ID13024( "on_board_littlebird" );
    var_0 = _ID42237::_ID16638( "gag_stage_littlebird_load", "script_noteworthy" );
    var_1 = _func_06A( "script_origin", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_1._ID740 = _ID42237::_ID12140( var_1._ID740, 40.0, -40.0 );
    thread _unknown_7D83();
    thread _unknown_6D62( var_1 );
    var_1 _ID42259::_ID3074( level._ID44035, "escape_in" );
    _ID42237::_ID14413( "escape_littlebird_landed" );

    while ( _ID42237::_ID14385( "stair_in_use" ) )
        waittillframeend;

    var_1 _ID42259::_ID3111( level._ID44035, "escape_in" );
    level._ID44035 _meth_8053( self );
    level._ID44035 _ID42407::_ID13025( "on_board_littlebird" );
    thread _ID42259::_ID3044( level._ID44035, "escape_idle", undefined, "tag_detach_right" );
    level._ID44035 thread _unknown_6DAA();
}

handle_soap_headtracking()
{
    _ID45995::_ID48826( "head", undefined, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42237::_ID14413( "player_on_board_littlebird" );
    _ID45995::_ID45228();
}

handleghostmovement( var_0 )
{
    level._ID49792._ID3189 = "generic";
    var_0 _ID42259::_ID3074( level._ID49792, "escape_in" );

    while ( _ID42237::_ID14385( "stair_in_use" ) )
        waittillframeend;

    var_0 _ID42259::_ID3111( level._ID49792, "escape_in" );
    var_0 = _func_0C8( "ghost_end_node", "targetname" );
    level._ID49792 _meth_81B1( var_0 );
}

player_gets_weapon_from_soap_on_littlebird( var_0 )
{
    _ID42237::_ID14413( "player_on_board_littlebird" );
    level._ID44035 _ID42407::_ID13027( "on_board_littlebird" );
    var_1 = _ID42407::_ID35028( "weapon_m14", self._ID740 );
    var_1 _meth_8053( self );
    waittillframeend;
    thread _ID42259::_ID3111( var_1, "escape_departure", var_0 );
    thread _ID42259::_ID3111( level._ID44035, "escape_departure", "tag_detach_right" );
    thread _ID42259::_ID3111( level._ID794.worldbody_rig, "escape_departure", var_0 );
    thread _unknown_7B92();
    level._ID794 _meth_80A9( 0.75, 0.3, 0.3, 0, 0, 0, 0 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    level._ID794 _meth_8328();
    _ID42237::_ID14413( "player_switches_weapon_on_littlebird" );
    var_1 _meth_80B7();
    level._ID794 _meth_831B();
    level._ID794 _meth_8319( "m14_scoped_arctic" );
    level._ID794 _meth_8320( "m14_scoped_arctic" );
    level._ID794 _meth_8329();
    level._ID794 _meth_80A9( 0.5, 0.1, 0.1, 60, 40, 10, 30 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    level._ID794 _meth_85AA( 180, -5, -10, 180 );
}

_ID43203()
{
    _ID42237::_ID14413( "barracks_cleared" );
    _ID42237::_ID14413( "player_exiting_derrick_building" );
    var_0 = _ID42237::_ID16638( "samsite1_heli_unload", "targetname" );
    var_1 = _ID42411::_ID35196( "blackhawk_samsite_01" );
    var_1 waittill( "reached_dynamic_path_end" );
    _ID42237::_ID14413( "littlebird_escape_lifted_off" );
    var_2 = var_1._ID29965;
    var_1 _ID42411::_ID40218( var_0 );
    wait 4.5;
    var_3 = _ID42237::_ID16182( level._ID794._ID740, var_2 );
    var_3 thread _ID42407::_ID27079( "oilrig_gm1_samssecure" );
}

_ID54048()
{
    _ID42237::_ID14413( "littlebird_escape_lifted_off" );
    var_0 = _ID42407::_ID3339( _func_1A2( "friendlies_samsite_02", "targetname" ) );
}

_ID48999()
{
    _ID42237::_ID14413( "littlebird_escape_lifted_off" );
    var_0 = _ID42407::_ID3339( _func_1A2( "friendlies_samsite_03", "targetname" ) );
}

_ID51686()
{
    var_0 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_0 _meth_808B( 3 );
    var_0._ID55 = 1;
    wait 3;
    _ID42407::_ID24793();
}

_ID44279()
{
    _ID42237::_ID14413( "obj_stealthkill_given" );
    var_0 = 1;
    var_1 = level._ID49527;
    _func_1E3( var_0, "active", &"OILRIG_OBJ_STEALTHKILL", var_1._ID740 );
    _func_1E9( var_0 );
    _ID42237::_ID14413( "obj_stealthkill_complete" );
    _ID42475::_ID34575( "aud_stop_mix_stealth_kill" );
    _func_1E5( var_0, "done" );
}

_ID46465()
{
    var_0 = _func_1A2( "obj_breach1", "targetname" );
    var_1 = 2;
    _ID42237::_ID14413( "obj_hostages_secure_given" );
    _func_1E3( var_1, "invisible", &"OILRIG_OBJ_HOSTAGES_SECURE" );
    _func_194( var_1, level._ID44035 );
    _func_1E5( var_1, "current" );
    _func_115( var_1, &"OILRIG_OBJ_HOSTAGES_SECURE", level._ID49673 );
    _ID42237::_ID14413( "player_at_lower_breach" );
    _ID42237::_ID14413( "railing_patroller_dead" );
    _ID42367::_ID25325( var_1, 0, 1 );
    _func_115( var_1, &"OILRIG_OBJ_HOSTAGES_SECURE", level._ID49673 );
    _ID42237::_ID14413( "lower_room_breached" );
    _ID42407::_ID25326( var_1 );
    _func_0C7( var_1 );
    _ID42237::_ID14413( "lower_room_cleared" );
    _func_115( var_1, &"OILRIG_OBJ_HOSTAGES_SECURE", level._ID49673 - 4 );
    _func_194( var_1, level._ID49792 );
    _ID42237::_ID14413( "player_at_last_breach_building" );
    _ID42367::_ID25325( var_1, 2, 3 );
    _ID42237::_ID14413( "upper_room_breached" );
    _ID42407::_ID25326( var_1 );
    _func_0C7( var_1 );
    _ID42237::_ID14413( "obj_hostages_secure_complete" );
    _func_1E5( var_1, "done" );
    _func_115( var_1, &"OILRIG_OBJ_HOSTAGES_SECURE_DONE" );
}

_ID43926()
{
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    var_0 = 3;
    _func_1E3( var_0, "invisible", &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    _func_1E5( var_0, "current" );
    _func_115( var_0, &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    _func_1E9( var_0 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    _func_1E5( var_0, "done" );
}

_ID50020()
{
    level._ID49132++;
    var_0 = level._ID49132;
    level._ID44080[level._ID44080.size] = self;
    _func_115( 3, &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    _func_117( 3, var_0, self._ID740 );
    _func_115( 3, &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    self waittill( "c4_planted" );

    if ( !_ID42237::_ID14385( "player_has_started_planting_c4" ) )
        _ID42237::_ID14402( "player_has_started_planting_c4" );

    level._ID44080 = _ID42237::_ID3321( level._ID44080, self );
    waitframe;
    _func_117( 3, var_0, ( 0, 0, 0 ) );

    if ( level._ID44080.size < 2 )
        _ID42237::_ID14402( "obj_c4_ambush_plant_complete" );

    _func_115( 3, &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
}

_ID54112()
{
    _ID42237::_ID14413( "obj_ambush_given" );
    var_0 = 4;
    _func_1E3( var_0, "active", &"OILRIG_OBJ_AMBUSH" );
    _func_1E9( var_0 );
    _func_194( var_0, level._ID44035 );
    _ID42237::_ID14413( "obj_ambush_complete" );
    _func_1E5( var_0, "done" );
}

_ID54040()
{
    _ID42237::_ID14413( "obj_explosives_locate_given" );
    var_0 = 5;
    _func_1E3( var_0, "active", &"OILRIG_OBJ_EXPLOSIVES_LOCATE" );
    _func_1E9( var_0 );
    _func_194( var_0, level._ID44035 );
    _ID42237::_ID14413( "player_on_right_top_deck" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
    var_1 = _func_1A2( "obj_breach3", "targetname" );
    _ID42367::_ID25325( var_0, 4, 5 );
    _ID42237::_ID14413( "top_deck_room_breached" );
    _ID42407::_ID25326( var_0 );
    _func_0C7( var_0 );
    _ID42237::_ID14413( "obj_explosives_locate_complete" );
    _func_1E5( var_0, "done" );
}

_ID25282()
{
    _ID42237::_ID14413( "obj_escape_given" );
    var_0 = 6;
    _func_1E3( var_0, "active", &"OILRIG_OBJ_ESCAPE" );
    _func_1E9( var_0 );
    _func_194( var_0, level._ID44035 );
    _ID42237::_ID14413( "player_at_helipad_stairs" );
    _ID42237::_ID14413( "escape_littlebird_landed" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
    var_1 = _func_1A1( "obj_escape", "targetname" );
    var_1._ID740 = level._ID53676 _meth_818C( "tag_guy3" );
    var_1._ID740 = var_1._ID740 + ( 0, 0, 30 );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "obj_escape_complete" );
    _func_1E5( var_0, "done" );
}

_ID54109()
{

}

_ID49878()
{
    _ID42237::_ID14413( "player_approaching_oilrig_legs" );
    _ID42407::_ID24587( "mus_oilrig_underwater_music" );
}

_ID45717()
{
    level endon( "lower_room_breached" );
    _ID42237::_ID14413( "player_slitting_throat" );
    _func_078();
    var_0 = _ID42407::_ID24586( "mus_oilrig_sneak_music" );

    while ( !_ID42237::_ID14385( "lower_room_breached" ) )
    {
        _ID42407::_ID24587( "mus_oilrig_sneak_music" );
        wait(var_0);
        _ID42407::_ID24584( 1 );
        wait 1.1;
    }
}

_ID52739()
{
    level endon( "upper_room_breached" );
    _ID42237::_ID14413( "lower_room_breached" );
    _func_078();
    _ID42237::_ID14413( "lower_room_cleared" );
    var_0 = _ID42407::_ID24586( "mus_oilrig_suspense_01_music_alt" );

    while ( !_ID42237::_ID14385( "upper_room_breached" ) )
    {
        _ID42407::_ID24587( "mus_oilrig_suspense_01_music_alt" );
        wait(var_0);
        _ID42407::_ID24584( 1 );
        wait 1.1;
    }
}

_ID53838()
{
    level endon( "player_at_stairs_to_deck_2" );
    _ID42237::_ID14413( "upper_room_breached" );
    _func_078();
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    _ID42407::_ID24587( "mus_oilrig_suspense_01_music_alt" );
    _ID42237::_ID14421( "ambush_enemies_alerted", "ambush_enemies_alerted_prematurely" );
    _func_078();
    wait 0.05;
    var_0 = _ID42407::_ID24586( "mus_oilrig_fight_music_01" );

    while ( !_ID42237::_ID14385( "player_at_stairs_to_deck_2" ) )
    {
        _ID42407::_ID24587( "mus_oilrig_fight_music_01" );
        wait(var_0);
        _ID42407::_ID24584( 1 );
        wait 1.1;
    }
}

_ID43607()
{
    _ID42237::_ID14413( "player_at_stairs_to_deck_2" );
    _ID42407::_ID24584( 5 );
    _ID42237::_ID14413( "zodiacs_evaced" );
    level endon( "smoke_thrown" );
    var_0 = _ID42407::_ID24586( "mus_oilrig_fight_music_01" );

    while ( !_ID42237::_ID14385( "smoke_thrown" ) )
    {
        _ID42407::_ID24587( "mus_oilrig_fight_music_01" );
        wait(var_0);
        _ID42407::_ID24584( 1 );
        wait 1.1;
    }
}

_ID46824()
{
    level endon( "top_deck_room_breached" );
    _ID42237::_ID14413( "smoke_thrown" );
    _ID42407::_ID24584( 4 );
    wait 4.1;
    var_0 = _ID42407::_ID24586( "mus_oilrig_top_deck_music_01" );

    while ( !_ID42237::_ID14385( "top_deck_room_breached" ) )
    {
        _ID42407::_ID24587( "mus_oilrig_top_deck_music_01" );
        wait(var_0);
        _ID42407::_ID24584( 1 );
        wait 1.1;
    }
}

_ID50214()
{
    _ID42237::_ID14413( "top_deck_room_breached" );
    _func_078();
}

_ID46834()
{
    _ID42237::_ID14413( "barracks_cleared" );
    _func_078();
    wait 0.5;
    _ID42407::_ID24587( "mus_oilrig_victory_music" );
}

_ID43576()
{

}

_ID52407()
{
    _ID42407::_ID32226( 0 );
}

_ID53576( var_0 )
{
    if ( var_0._ID1194 == "axis" )
        var_0 thread _unknown_7626();

    if ( var_0._ID1194 == "allies" )
        var_0 thread _unknown_7631();
}

_ID45781()
{
    _ID42237::_ID14413( "player_ready_to_be_helped_from_water" );
    thread animscripts\utility::_ID26591();
}

_ID52457()
{
    self endon( "death" );

    if ( _ID42407::_ID18177() )
        _ID42407::_ID8925( "on" );

    if ( level._ID53103 == 1 )
        thread _unknown_7C85();

    var_0 = undefined;
    var_1 = undefined;

    switch ( level._ID15361 )
    {

    }

    self._ID4867 = self._ID4867 * var_1;

    while ( !_func_02F( self._ID11624 ) )
        wait 0.05;

    self._ID11624 = self._ID11624 * var_0;

    if ( _ID42237::_ID14385( "need_to_check_axis_death" ) && level._ID15361 < 2 )
    {
        thread _unknown_7714();
        return;
        case 3:
        case 2:
        case 1:
        case 0:
    }
}

_ID50059()
{
    self waittill( "death",  var_0  );

    if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
        level notify( "player_killed_an_enemy" );
}

_ID45486()
{
    self endon( "death" );
    self._ID3189 = "generic";
    var_0 = self._ID988;
    var_1 = undefined;
    var_2 = undefined;
    self _meth_805A();
    self._ID511 = 1;
    var_0 _ID42259::_ID3018( self, self._ID70 );
    var_3 = _func_06A( "script_origin", self._ID988._ID740 );
    thread _ID42237::_ID10280( var_3 );
    var_3._ID65 = self._ID988._ID65;

    switch ( self._ID70 )
    {

    }

    var_4 = _func_06A( "script_model", var_3._ID740 );
    var_4 _meth_80B8( var_1 );
    var_4._ID3189 = "rope";
    var_4 _ID42407::_ID3428();
    var_3 _ID42259::_ID3018( var_4, var_2 );
    self._ID52896 = self._ID486;
    self._ID486 = 3;
    self _meth_8059();
    self._ID49 = 1;
    thread _unknown_783F();
    var_3 thread _unknown_7839( var_4, var_2 );
    var_0 thread _ID42259::_ID3020( self, self._ID70 );
    wait 1.5;
    self._ID511 = 0;
    self waittill( "over_solid_ground" );
    self._ID486 = self._ID52896;
    case "oilrig_rappel_over_rail_R":
    case "oilrig_rappel_2_crouch":
    default:
}

_ID44405( var_0, var_1 )
{
    _ID42259::_ID3111( var_0, var_1 );
    _ID42237::_ID14413( "player_at_stairs_to_top_deck" );

    if ( _func_02F( self ) )
        self _meth_80B7();

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();
}

_ID50884()
{
    self endon( "over_solid_ground" );

    if ( !_func_02F( self ) )
        return;

    _ID42407::_ID32265( "fastrope_fall" );
    self waittill( "death" );
    thread _ID42237::_ID27077( "generic_death_falling" );
}

_ID45259( var_0 )
{
    var_0 endon( "death" );
    var_0 notify( "over_solid_ground" );
    var_0 _ID42407::_ID7854();
}

_ID43147( var_0 )
{
    var_0 endon( "death" );
    var_0 _ID42407::_ID7854();
}

_ID44889()
{
    level endon( "obj_hostages_secure_complete" );
}

_ID50493()
{
    self endon( "death" );

    if ( _func_02F( self._ID29965 ) )
    {
        var_0 = self._ID29965;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            var_1._ID511 = 1;
            var_1 _meth_8183( "oblivious" );
        }

        var_clear_2
        var_clear_0
    }

    thread _ID42508::_ID18413( undefined, 1 );
    self waittill( "damage" );
    self._ID11585 = 1;
    _ID42508::_ID4977( self );
    wait 2;
    thread _unknown_7C6C();
}

_ID44580( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        thread _unknown_797F( var_2 );
    }

    var_clear_2
    var_clear_0
}

_ID43652( var_0 )
{
    _ID42237::_ID14400( var_0 + "_shot_down" );
    var_1 = _ID42411::_ID49802( var_0 );
    level._ID49251 = var_1;
    level._ID49251._ID12571 = 1;
    _ID42237::_ID3350( var_1._ID23512, ::_unknown_79C0 );
    wait 1;
    var_1 _ID42237::_ID41098( "death", "crash_done" );
    _ID42237::_ID14402( var_0 + "_shot_down" );
}

_ID47364()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16299( "minigun_shell_eject" );

    for (;;)
    {
        if ( self _meth_80EB() )
        {
            for (;;)
            {
                if ( !self _meth_80EB() )
                    break;

                wait 0.05;
            }
        }

        wait 0.05;
    }
}

_ID43999()
{
    var_0 = _func_1A1( "derrick_thing", "targetname" );
    var_1 = 2;
    var_2 = 300;
    var_0 thread _unknown_8572( var_2, var_1 );
}

_ID52928()
{
    _ID42237::_ID14402( "player_broke_stealth" );
}

_ID47778()
{
    level endon( "mission failed" );

    while ( !_func_02F( self._ID6081 ) )
        wait 0.1;

    while ( self._ID6081 == 0 )
        wait 0.1;

    wait(_func_0BA( 1, 2 ));
    var_0 = level._ID52474[0];
    level._ID52474 = _ID42237::_ID3321( level._ID52474, var_0 );
    self endon( "death" );
    self notify( "stop_idle" );
    self _meth_81B1( var_0 );
    self._ID452 = 64;
    self._ID38 = "noncombat";
    self waittill( "goal" );
}

_ID51389( var_0 )
{
    var_1 = _func_0B7( 21 );

    if ( var_1 < 10 )
        var_2 = "oilrig_merc_chatter_0" + var_1;
    else
        var_2 = "oilrig_merc_chatter_" + var_1;

    thread _ID42237::_ID27077( level._ID30909[var_2], var_0 );
}

_ID45680()
{

}

_ID47846()
{
    var_0 = _func_0B7( 4 );
    _ID42407::_ID28864( "oilrig_nsl_outtogether_0" + var_0 );
}

_ID47516()
{
    var_0 = _func_0B7( 3 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID28864( "oilrig_ns2_fireat4_0" + var_0 );
    _ID42407::_ID4918( "allies" );
}

_ID53687()
{
    var_0 = _func_0B7( 6 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID28864( "oilrig_heli_grats_0" + var_0 );
    _ID42407::_ID4918( "allies" );
}

_ID46988()
{
    _ID42407::_ID4917( "allies" );
    var_0 = _func_0B7( 5 );
    _ID42407::_ID28864( "oilrig_enemy_smoke_0" + var_0 );
    _ID42407::_ID4918( "allies" );
}

_ID43637()
{
    level endon( "player_approaching_topdeck_building" );

    if ( level._ID794 _ID42407::_ID27469() )
    {
        var_0 = _func_0B7( 2 );
        _ID42407::_ID28864( "oilrig_use_thermal_0" + var_0 );
    }
    else
    {
        var_0 = _func_0B7( 2 );
        _ID42407::_ID28864( "oilrig_find_thermal_0" + var_0 );
    }

    _unknown_7BD5( 7 );
}

_ID50257( var_0 )
{
    level endon( "oilrig_timeout_func" );
    level endon( "player_approaching_topdeck_building" );
    thread _unknown_7BF8( var_0 );

    for (;;)
    {
        wait 0.1;

        while ( !level._ID794 _ID42407::_ID27469() )
            wait 0.5;

        if ( level._ID794 _meth_8349() )
            break;
    }
}

_ID45401( var_0 )
{
    wait(var_0);
    level notify( "oilrig_timeout_func" );
}

_ID53903()
{
    var_0 = _func_0B7( 4 );
    _ID42407::_ID28864( "oilrig_heloapproach_0" + var_0 );
}

_ID43734()
{
    var_0 = _func_0B7( 3 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID28864( "oilrig_ambush_helo_alert_0" + var_0 );
    _ID42407::_ID4918( "allies" );
}

_ID44751()
{
    var_0 = _func_0B7( 3 );
    _ID42407::_ID28864( "dialogue_heli_all_clear_0" + var_0 );
}

_ID48481( var_0 )
{
    var_1 = undefined;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1 = var_3 _ID42407::_ID15547( "axis" );

        if ( var_1.size )
            return 0;
    }

    var_clear_2
    var_clear_0
    return 1;
}

_ID48912( var_0 )
{
    level notify( "breach_nag_called" );
    level endon( "breach_nag_called" );
    level endon( "lower_room_cleared" );
    level endon( "upper_room_cleared" );
    level endon( "A door in breach group " + var_0 + " has been activated." );
    var_1 = 0;

    for (;;)
    {
        if ( var_0 == 300 )
            wait(_func_0BA( 5, 8 ));
        else
            wait(_func_0BA( 12, 18 ));

        if ( var_0 == 300 )
        {
            var_2 = _func_1A2( "breach_safe_volume", "targetname" );

            if ( !_unknown_7D03( var_2 ) || !_ID42237::_ID14385( "left_deck3_dudes_spawned" ) )
            {
                wait 3;
                continue;
            }
        }

        _ID42407::_ID28864( "breach_nag_0" + var_1 );
        var_1++;

        if ( var_1 > 3 )
            var_1 = 0;
    }
}

_ID47940()
{
    var_0 = undefined;

    switch ( level._ID15361 )
    {

    }

    var_1 = _func_1A2( "easy", "script_noteworthy" );

    if ( level._ID15361 > 0 )
        _ID42237::_ID3294( var_1, ::_meth_80B7 );

    level._ID794._ID25531 = level._ID794._ID1204;
    level._ID794._ID1204 = level._ID794._ID1204 + var_0;
    _ID42237::_ID14402( "difficulty_initialized" );
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID47645( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    var_2 = _func_1A1( var_1._ID31273, "script_linkname" );
    var_2 notify( "trigger",  level._ID794  );
}

_ID46797()
{
    _ID42237::_ID3350( level._ID46473, _ID42237::_ID38863 );
}

_ID45005( var_0, var_1 )
{
    var_2 = _func_1A1( "gate_01", "targetname" );
    var_2 _meth_805F();

    if ( _func_02F( var_0 ) )
        var_2 _meth_82B8( var_2._ID740 - ( 0, -170, 0 ), 1 );
    else
    {
        if ( !_func_02F( var_1 ) )
            _ID42237::_ID14421( "ambush_enemies_approaching", "ambush_enemies_alerted_prematurely" );

        var_2 thread _ID42407::_ID27079( "scn_oilrig_fence_open" );
        var_2 _meth_82B8( var_2._ID740 - ( 0, -170, 0 ), 8, 3, 3 );
        wait 8;
    }

    _ID42237::_ID14402( "ambush_gate_opened" );
}

_ID45768()
{
    _func_14E( "slamraam_missile_dcburning" );
    _func_14C( "h2_prop_npc_cigar" );
    _func_14C( "com_floodlight" );
    _func_14C( "tag_turret" );
    _func_14C( "prop_seal_udt_flippers" );
    _func_14C( "prop_seal_udt_goggles" );
    _func_14C( "prop_seal_udt_draeger" );
    _func_14C( "furniture_chair_metal01" );
    _func_14C( "com_restaurantchair_2" );
    _func_14C( "furniture_long_desk_animate" );
    _ID42358::add_smoking_prop_assets( "cigarette" );
    _func_14C( "h2_head_seal_udt_f_lifesaver" );
    _func_14C( "h2_head_seal_udt_i_lifesaver" );
    _func_14C( "body_hero_seal_udt_ghost_wet" );
    _func_14C( "body_hero_seal_udt_soap_wet" );
    _func_14C( "body_seal_udt_assault_a_wet" );
    _func_14C( "body_seal_udt_assault_b_wet" );
    _func_14C( "body_seal_udt_smg_wet" );
    _func_14C( "head_hero_ghost_udt_wet" );
    _func_14C( "head_hero_soap_udt_wet" );
    _func_14C( "head_seal_udt_d_lifesaver_wet" );
    _func_14C( "head_seal_udt_f_lifesaver_wet" );
    _func_14C( "head_seal_udt_i_lifesaver_wet" );
    _func_14C( "head_seal_udt_asia_lifesaver_wet" );
    _func_14C( "head_seal_udt_a_wet" );
    _func_14C( "head_seal_udt_c_wet" );
    _func_14C( "head_seal_udt_d_wet" );
    _func_14C( "head_seal_udt_e_wet" );
    _func_14C( "head_seal_udt_f_wet" );
    _func_14C( "head_seal_udt_i_wet" );
    _func_14C( "head_seal_udt_asia_wet" );
    _func_14C( "viewhands_udt" );
    _func_14C( "viewhands_udt_wet" );
    _func_14C( "viewbody_udt" );
    _func_14C( "viewbody_udt_wet" );
    _func_14C( "com_blackhawk_spotlight_on_mg_setup" );
    _func_001( "heli_spotlight" );
    _func_001( "player_view_controller" );
    _func_14E( "rpg_nodamage" );
    _func_14E( "m14_scoped_arctic" );
    _func_14E( "m4m203_reflex" );
    _func_14E( "scar_h_thermal" );
    _func_14E( "mp5_reflex" );
    _func_14E( "mp5_silencer_reflex" );
    _func_14C( "weapon_rpd_MG_Setup" );
    _func_14C( "furniture_chair_metal01" );
    _func_14C( "com_restaurantchair_2" );
    _func_14C( "oilrig_rappelrope_80ft" );
    _func_14C( "oilrig_rappelrope_50ft" );
    _func_14C( "viewhands_player_udt" );
    _func_152( "light_3s" );
    _func_152( "damage_heavy" );
    _func_152( "tank_rumble" );
    _func_152( "pistol_fire" );
    _func_152( "mig_rumble" );
    _func_14C( "weapon_parabolic_knife" );
    _func_14C( "weapon_us_smoke_grenade_burnt" );
    _func_14C( "com_vending_can_new2_destroyed" );
    _func_14C( "h2_head_opforce_merc_f" );
    _func_14E( "missile_mi28" );
    _func_150( &"OILRIG_MISSIONFAIL_HELI_DEATH" );
    _func_150( &"OILRIG_MISSIONFAIL_EXPLOSIVES_NOTPLANTED" );
    _func_150( &"SCRIPT_DEBUG_LEVEL_END" );
    _func_150( &"OILRIG_OBJ_STEALTHKILL" );
    _func_150( &"OILRIG_OBJ_HOSTAGES_SECURE" );
    _func_150( &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    _func_150( &"OILRIG_OBJ_AMBUSH" );
    _func_150( &"OILRIG_OBJ_EXPLOSIVES_LOCATE" );
    _func_150( &"OILRIG_HINT_AMBUSH_COVER" );
    _func_150( &"OILRIG_HINT_C4_SWITCH" );
    _func_150( &"OILRIG_MISSIONFAIL_ENEMIES_ALERTED_HOSTAGES_KILLED" );
    _func_150( &"OILRIG_HINT_C4_DETONATE" );
    _func_150( &"SCRIPT_PLATFORM_OILRIG_HINT_STEALTH_KILL" );
    _func_150( &"OILRIG_HINT_THERMAL_WEAPON_USE" );
    _func_150( &"OILRIG_HINT_THERMAL_WEAPON_FIND" );
    _func_14F( "h1_hud_tutorial_blur" );
    _func_14F( "h1_hud_tutorial_border" );
}

_ID45905( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    waitframe;

    if ( _func_02F( var_1 ) && var_1 != 1 )
    {
        var_3 = _func_1A2( "team2", "targetname" );
        level._ID37355 = _ID42407::_ID3339( var_3 );
        _ID42237::_ID3350( level._ID37355, ::_unknown_8244 );
        level._ID35507 = [];
        level._ID44035 = _ID42407::_ID35150( "price" );
        level._ID44035._ID3189 = "soap";
        level._ID49792 = _ID42407::_ID35150( "friendly02" );
        level._ID48061 = _ID42407::_ID35150( "friendly03" );
        level._ID44035 _ID42407::_ID14803( "mp5_silencer_reflex", "primary" );
        level._ID49792 _ID42407::_ID14803( "mp5_silencer_reflex", "primary" );
        level._ID48061 _ID42407::_ID14803( "mp5_silencer_reflex", "primary" );
        level._ID35507[0] = level._ID44035;
        level._ID35507[1] = level._ID49792;
        level._ID35507[2] = level._ID48061;
        _ID42237::_ID3350( level._ID35507, _ID42367::_ID1944 );
        _ID42237::_ID3350( level._ID35507, ::_unknown_82CE );
    }

    level._ID51388 = [];
    level._ID51388 = _ID42407::_ID3317( level._ID35507, level._ID37355 );

    if ( _ID42407::_ID20505() )
        return;

    var_4 = level._ID35507;
    var_5 = _func_0C9( "friendlyStart" + var_0, "targetname" );

    while ( var_4.size > 0 )
    {
        wait 0.05;

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            if ( _func_02F( var_5[var_6]._ID922 ) )
            {
                switch ( var_5[var_6]._ID922 )
                {

                }

                case "nodeFriendly03":
                case "nodeFriendly02":
                case "nodePrice":
                default:
            }
        }
    }

    if ( _func_02F( var_2 ) && var_2 == 1 )
    {
        var_7 = _func_0C9( "playerStart" + var_0, "targetname" );
        _ID42407::_ID37442( var_7 );
    }
}

_ID52814()
{
    wait 0.5;
    _ID42407::_ID8925( "on" );
    thread _ID42407::_ID22746();
    _ID42407::_ID32628( 1 );
    self _meth_8183( "oblivious" );
    self._ID511 = 1;
}

_ID46555()
{
    _ID42407::_ID8925( "on" );
    thread _ID42407::_ID22746();
    _ID42407::_ID32628( 1 );
    wait 0.05;

    if ( self == level._ID44035 || self == level._ID49792 )
    {
        self._ID86 = 0.5;
        self._ID4867 = self._ID4867 * 0.7;
    }
}

_ID46835( var_0 )
{
    level notify( "breach_explosion" );
}

_ID49560()
{
    self endon( "death" );

    if ( _func_02F( self._ID922 ) && self._ID922 == "body_discover" )
        self._ID1258 = 0;

    self._ID511 = 1;
    var_0 = self._ID24424;
    self._ID24424 = 0.7;
    self _meth_8183( "oblivious" );
    self._ID3189 = "generic";
    _ID42407::_ID8925( "on" );
    wait 0.5;
    thread _unknown_772E();
    thread _unknown_84DE();
    _ID42237::_ID14421( "ambush_enemies_alerted", "ambush_enemies_alerted_prematurely" );
    wait 1;
    self._ID511 = 0;
    self _meth_8183( "axis" );
    _ID42407::_ID8925( "off" );
    self._ID24424 = var_0;
}

_ID54045()
{
    self endon( "death" );
    self._ID511 = 1;
    self _meth_8183( "oblivious" );
    maps\jake_tools::_ID32520( 1000 );
    self._ID10998 = 1;
    self _meth_8183( "oblivious" );
    self _meth_8172();
    wait 0.1;
    thread _ID42338::_ID26367();
}

_ID44003( var_0 )
{
    level endon( "breach_explosion" );

    for (;;)
    {
        self waittill( "damage",  var_2, var_1  );

        if ( _func_1B3( var_2 ) )
            thread _unknown_852A( var_0 );
    }
}

_ID46690( var_0 )
{
    level notify( "doing_generic_mission_fail" );
    level endon( "doing_generic_mission_fail" );
    wait 0.5;
    thread _unknown_855D();

    if ( _func_02F( var_0 ) )
        var_0 thread _ID42237::_ID27077( "weap_deserteagle_fire_npc" );

    wait 0.25;
    level._ID794 thread _ID42237::_ID27000( "emt_oilrig_alarm_alert" );

    if ( _func_02F( var_0 ) )
        var_0 thread _ID42237::_ID27077( "weap_deserteagle_fire_npc" );

    wait 0.5;
    thread _unknown_8595();
}

_ID54338()
{
    var_0 = _func_1A2( "blood_spatters", "targetname" );
}

_ID48512()
{
    _ID42237::_ID14402( "oilrig_mission_failed" );
    _func_034( "ui_deadquote", &"OILRIG_MISSIONFAIL_ENEMIES_ALERTED_HOSTAGES_KILLED" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID46571()
{
    self endon( "death" );
    thread _unknown_85E1();
    level endon( "ambush_enemies_alerted" );
    level endon( "ambush_enemies_alerted_prematurely" );
    self waittill( "enemy" );
    _ID42237::_ID14402( "ambush_enemies_alerted_prematurely" );
}

_ID48112()
{
    self endon( "death" );
    level endon( "ambush_enemies_alerted" );
    level endon( "ambush_enemies_alerted_prematurely" );
    var_0 = _func_1A1( "exposed_ambush_spot", "targetname" );

    for (;;)
    {
        wait 1.5;

        if ( self _meth_80B0( var_0 ) )
        {
            if ( _ID42237::_ID14385( "player_in_exposed_ambush_spot" ) )
                break;
        }
    }

    _ID42237::_ID14402( "ambush_enemies_alerted_prematurely" );
}

_ID50606( var_0 )
{
    var_0 = _ID42237::_ID3320( var_0 );
    var_1 = [];
    var_2 = var_0;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        wait(_func_0BA( 0.25, 1 ));
        var_4 = var_3 _ID42407::_ID35014();
        var_1[var_1.size] = var_4;
    }

    var_clear_3
    var_clear_0
    return var_1;
}

_ID46435()
{
    self._ID48297 = self._ID740;
    self._ID44067 = self._ID65;
    self _meth_82C1( 160, 0.5 );
    self _meth_82B8( self._ID740 + ( 3, 0, 0 ), 0.1 );
    self _meth_805F();
}

_ID47956()
{
    self._ID48297 = self._ID740;
    self._ID44067 = self._ID65;
    self _meth_82C1( -110, 0.5 );
    self _meth_82B8( self._ID740 + ( 3, 0, 0 ), 0.1 );
    self _meth_805F();
}

_ID48303()
{
    self._ID740 = self._ID48297;
    self._ID65 = self._ID44067;
}

_ID51020()
{
    self._ID740 = self._ID48297;
    self._ID65 = self._ID44067;
}

_ID54724( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 1024;

    var_1 = _func_0DE( "axis" );
    thread _ID42407::_ID2265( var_1, var_0 );
}

_ID48415( var_0, var_1 )
{
    var_2 = _func_06A( "script_model", var_1._ID740 + ( 0, 0, 0 ) );
    var_2 _meth_80B8( "vehicle_submarine_nuclear" );
    var_2._ID740 = var_1._ID740;
    var_2._ID65 = var_1._ID65;
    var_2._ID135 = undefined;
    var_2._ID51860 = undefined;
    var_3 = _func_1A2( "submarine_" + var_0, "targetname" );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_02F( var_5._ID31388 ) && var_5._ID31388 == "sub" )
        {
            var_2._ID135 = var_5;
            continue;
        }

        var_2._ID51860 = var_5;
    }

    var_clear_2
    var_clear_0
    var_2._ID9725 = undefined;
    var_2._ID45822 = undefined;

    if ( var_0 == "01" )
    {
        var_2._ID45822 = _func_1A2( "sub_dds_01", "targetname" );
        var_7 = var_2._ID45822;

        for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
        {
            var_5 = var_7[var_8];

            if ( _func_02F( var_5._ID922 ) && var_5._ID922 == "body" )
            {
                var_2._ID9725 = _func_06A( "script_origin", var_5._ID740 );
                var_2._ID9725._ID65 = var_5._ID65;
                var_2._ID9725._ID65 = var_5._ID65;
                break;
            }
        }

        var_clear_1
        var_clear_0
        var_9 = var_2._ID45822;

        for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
        {
            var_5 = var_9[var_10];
            var_5 _meth_8053( var_2._ID9725 );
        }

        var_clear_1
        var_clear_0
    }
    else
        var_2._ID9725 = _func_1A1( "sub_dds_" + var_0, "targetname" );

    var_2._ID51261 = _func_1A1( "dds_door_" + var_0, "targetname" );
    var_2._ID51261._ID51935 = undefined;

    if ( var_0 == "01" )
    {
        var_2._ID51261._ID51935 = _func_1A1( "dds_door_01_seal", "targetname" );
        var_2._ID51261._ID51935 _meth_8053( var_2._ID51261 );
    }

    var_2._ID135._ID740 = var_2._ID740;
    var_2._ID135._ID65 = var_2._ID65;
    var_2._ID3189 = "submarine_" + var_0;

    if ( var_2._ID3189 == "submarine_01" )
        var_2._ID135 _meth_8053( var_2, "TAG_ORIGIN", ( -10, 0, -324 ), ( 0, 0, 0 ) );
    else
        var_2._ID135 _meth_8053( var_2, "TAG_ORIGIN", ( -10, 0, -348 ), ( 0, 0, 0 ) );

    var_2._ID135 _meth_8059();
    var_2._ID51261 _meth_8053( var_2._ID9725 );
    var_2._ID9725._ID740 = var_2._ID740;
    var_2._ID9725._ID65 = var_2._ID65;
    var_2._ID9725 _meth_8053( var_2, "TAG_ORIGIN", ( 330, 0, 100 ), ( 0, 0, 0 ) );
    var_2 _ID42407::_ID3428();
    var_2 _meth_804E( "origin_animate_jnt" );
    var_2 thread _unknown_8A8D();
    return var_2;
}

_ID48579( var_0, var_1 )
{
    var_2 = _func_06A( "script_model", var_1._ID740 + ( 0, 0, 0 ) );
    var_2 _meth_80B8( "vehicle_submarine_sdv" );
    var_2._ID740 = var_1._ID740;
    var_2._ID65 = var_1._ID65;
    var_2._ID3189 = "sdv_" + var_0;
    var_2 _ID42407::_ID3428();
    var_2 thread _unknown_8A9F();
    return var_2;
}

_ID47468()
{
    var_0 = self._ID3189 + "_starting";
    var_1 = self._ID3189 + "_stopping";
    var_2 = self._ID3189 + "_arriving";
    _ID42237::_ID14400( var_0 );
    _ID42237::_ID14400( var_2 );
    _ID42237::_ID14400( var_1 );
    self waittillmatch( "single anim",  "start"  );
    _ID42237::_ID14402( var_0 );
    self._ID24481 = 1;
    self notify( "moving" );

    switch ( self._ID3189 )
    {

    }

    self waittillmatch( "single anim",  "arrival"  );
    self notify( "arriving" );
    _ID42237::_ID14402( var_2 );
    self waittillmatch( "single anim",  "stop"  );
    self._ID24481 = 0;
    self notify( "stopped_moving" );
    _ID42237::_ID14402( var_1 );
    self waittillmatch( "single anim",  "end"  );
    case "sdv_01":
}

_ID49553()
{

}

_ID50261()
{
    self _meth_82BF( self._ID65 + ( 0, -90, 0 ), 12, 2, 2 );
    self _meth_80A1( "scn_subhatch_open" );
}

_ID54636()
{
    var_0 = _func_1A1( "killtrigger_ocean", "targetname" );
    var_0 notify( "turn_off" );
}

_ID48391()
{
    var_0 = _func_1A1( "killtrigger_ocean", "targetname" );
    var_0 notify( "turn_off" );
    var_0 endon( "turn_off" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( _func_02F( var_1 ) && _func_1B3( var_1 ) )
        {
            var_2 = _ID42237::_ID35164();
            var_2._ID740 = var_1._ID740;
            var_2._ID65 = var_1._ID65;
            var_1 _meth_8087( var_2, "tag_origin", 0.05 );
            var_1 _meth_8058();

            if ( _ID42407::_ID20614() )
            {
                _func_034( "ui_deadquote", &"OILRIG_MISSIONFAIL_WATER_DEATH" );
                level notify( "mission failed" );
                _ID42407::_ID23778();
            }

            break;
        }
    }
}

_ID43272( var_0, var_1 )
{
    var_2 = _func_0DE( "allies" );
    var_3 = [];
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_02F( var_5._ID922 ) && var_5._ID922 == var_1 )
            var_3 = _ID42237::_ID3293( var_3, var_5 );
    }

    var_clear_2
    var_clear_0

    if ( var_3.size == 0 )
    {

    }

    return var_3[0];
}

_ID46010( var_0 )
{
    level._ID28001 = var_0;
    self _meth_81F1( var_0 );
}

_ID46897( var_0 )
{
    var_0 endon( "death" );
    var_1 = 32;
    var_2 = 0;
    var_3 = undefined;
    var_4 = undefined;

    while ( _func_02F( var_0 ) )
    {
        wait(_func_0BA( 15, 25 ));
        var_5 = undefined;
        level._ID35507 = _ID42407::_ID29506( level._ID35507 );
        var_6 = _ID42237::_ID15567( level._ID794._ID740, level._ID35507 );

        while ( !_func_02F( var_5 ) )
        {
            wait 1.5;
            var_6 = _ID42407::_ID29506( var_6 );
            var_7 = var_6;

            for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
            {
                var_4 = var_7[var_9];

                if ( !_func_02F( var_4 ) )
                    continue;

                var_8 = level._ID794 _meth_80AF();

                if ( _ID42237::_ID41802( var_8, level._ID794 _meth_8346(), var_4._ID740, level._ID8760["45"] ) )
                {
                    continue;
                    continue;
                }

                var_3 = _func_06A( "script_origin", var_0._ID740 + ( 0, 0, -200 ) );
                var_0 thread _ID42237::_ID10280( var_3 );
                var_3 _meth_8053( var_0 );

                if ( !_func_08F( var_4 _meth_818C( "tag_flash" ) + ( 0, 0, var_1 ), var_3._ID740, 1, var_4 ) )
                {
                    var_3 _meth_80B7();
                    continue;
                    continue;
                }

                var_5 = var_4;
                break;
            }

            var_clear_2
            var_clear_0
        }

        if ( _func_02F( var_3 ) && _func_08F( var_5 _meth_818C( "tag_flash" ) + ( 0, 0, var_1 ), var_3._ID740, 1, var_5 ) )
        {
            if ( !_func_02F( var_5 ) )
                continue;

            _func_1C8( "rpg_nodamage", var_5 _meth_818C( "tag_flash" ) + ( 0, 0, var_1 ), var_3._ID740 );
            var_3 _meth_80B7();
            var_2 = _ID42237::_ID41802( level._ID794 _meth_80AF(), level._ID794 _meth_8346(), var_0._ID740, level._ID8760["45"] );
            wait 0.5;

            if ( var_2 )
                _unknown_8997();
        }
    }
}

_ID45619( var_0 )
{
    level endon( "oilrig_stealth_monitor_off" );
    level._ID53103 = 1;
    level thread _unknown_8F12();
    var_1 = _func_0DE( "axis" );
    _ID42237::_ID3350( var_1, ::_unknown_8EA7 );
    level._ID794 thread _unknown_8EFA();
    level waittill( "stealth_broken" );
    level._ID794._ID52561 = 0;

    if ( _func_02F( var_0 ) )
        thread _unknown_8C60();
}

_ID46395()
{
    self endon( "death" );

    if ( _func_02F( self._ID922 ) && self._ID922 == "not_alerted" )
        return;

    self notify( "running_stealth_monitor_on_me" );
    self endon( "running_stealth_monitor_on_me" );
    level endon( "oilrig_stealth_monitor_off" );
    thread _unknown_8F43();
    self _meth_8043( "grenade danger" );
    self _meth_8043( "gunshot" );
    self _meth_8043( "silenced_shot" );
    self _meth_8043( "bulletwhizby" );
    self _meth_8043( "projectile_impact" );
    wait 0.5;

    while ( _func_1A7( self ) )
    {
        self waittill( "ai_event",  var_1, var_0  );

        if ( var_0 == "grenade danger" && var_1._ID669 != "h2_projectile_cheat_soccer_ball" || var_0 == "damage" || var_0 == "gunshot" || var_0 == "bulletwhizby" || var_0 == "projectile_impact" || var_0 == "explode" )
            break;
    }

    wait 1;

    if ( _func_1A7( self ) )
        thread _unknown_8FBB();
}

_ID48687()
{
    if ( _func_02F( self ) && _func_1A7( self ) && !_func_02F( self._ID54440 ) )
    {
        level notify( "stealth_broken" );
        _ID42407::_ID3136();
        self notify( "alerted" );
    }
}

_ID53029()
{

}

_ID45393()
{
    level notify( "oilrig_stealth_monitor_off" );
    level._ID53103 = 0;
}

_ID49303()
{
    self endon( "stealth_takedown_started" );
    self endon( "death" );
    level endon( "oilrig_stealth_monitor_off" );

    while ( _func_02F( self ) )
    {
        wait 1;

        if ( !_ID42237::_ID41802( self._ID740, self._ID65, level._ID794._ID740 + ( 0, 0, 32 ), level._ID8760["45"] ) )
            continue;

        if ( !_func_090( self._ID740 + ( 0, 0, 32 ), level._ID794._ID740 + ( 0, 0, 32 ), 0, self ) )
            continue;

        if ( _func_0F5( self._ID740, level._ID794._ID740 ) < level._ID43315 )
            break;
    }

    thread _unknown_906B();
}

_ID46565()
{
    level endon( "oilrig_stealth_monitor_off" );
    level waittill( "destructible_exploded" );
    level notify( "stealth_broken" );
}

_ID48994()
{
    level._ID794._ID511 = 1;
    var_0 = level._ID35507;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_02F( var_1 ) )
            continue;

        var_1._ID511 = 1;
        var_1 _meth_8183( "oblivious" );
    }

    var_clear_2
    var_clear_0
}

_ID54322()
{
    level._ID794._ID511 = 0;
    var_0 = level._ID35507;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_02F( var_1 ) )
            continue;

        var_1._ID511 = 0;
        var_1 _meth_8183( "allies" );
    }

    var_clear_2
    var_clear_0
}

_ID45969( var_0, var_1 )
{
    wait(var_0);
    _func_08E( var_1 );
}

_ID43426( var_0 )
{
    self endon( "death" );
    var_0 waittill( "trigger" );
    self notify( "landing" );
    _ID42407::_ID40118();
    self _meth_8266( var_0._ID65[1] );
    _ID42544::_ID40185( undefined, var_0 );
    self notify( "landed" );
}

_ID53488()
{
    var_0 = _func_1A2( "script_origin", "classname" );
    var_1 = _ID42407::_ID3317( var_0, level._ID36707 );
    _ID42237::_ID3350( var_1, ::_unknown_91C8 );
}

_ID44414()
{
    if ( !_func_02F( self._ID31190 ) )
        return;

    _ID42237::_ID14400( self._ID31190 );

    if ( _func_039( "oilrig_debug" ) == "1" )
        thread _ID42407::_ID9904( self._ID31190, self._ID740, 9999 );

    self waittill( "trigger" );
    _ID42237::_ID14402( self._ID31190 );

    if ( _func_039( "oilrig_debug" ) == "1" )
        _func_19F( "flag: " + self._ID31190 + " has been set" );
}

_ID50236()
{
    _ID42237::_ID3350( level._ID35507, ::_unknown_9257 );
}

_ID51102()
{
    var_0 = level._ID35507;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_02F( var_1 ) )
            continue;

        var_1 notify( "stop_adjust_movement_speed" );
        var_1._ID24424 = 1.0;

        if ( _func_02F( var_1._ID50147 ) )
            var_1._ID50147 = 1;
    }

    var_clear_2
    var_clear_0
}

_ID54181()
{
    if ( !_func_02F( self ) )
        return;

    self notify( "stop_adjust_movement_speed" );
    self endon( "death" );
    self endon( "stop_adjust_movement_speed" );

    for (;;)
    {
        wait(_func_0BA( 0.5, 1.5 ));

        while ( _unknown_92DD() )
        {
            self._ID24424 = 2.5;
            wait 0.05;
        }

        self._ID24424 = 1.0;

        if ( _func_02F( self._ID50147 ) )
            self._ID50147 = 1;
    }
}

_ID53164()
{
    if ( !_func_02F( self ) )
        return;

    self endon( "death" );

    if ( !_func_02F( self._ID451 ) )
        return 0;

    if ( self._ID603 || self._ID1012 != "none" )
        return 0;

    if ( _func_0F5( self._ID740, self._ID451 ) <= level._ID47460 )
        return 0;

    if ( _func_22D( self._ID740, level._ID794._ID740 ) <= 63504 && _func_0C3( self._ID740[2] - level._ID794._ID740[2] ) < 72 )
        return 0;

    if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), self._ID740, level._ID8760["60"] ) )
        return 0;

    return 1;
}

_ID50972()
{
    level._ID49941 = [];
    level._ID45175 = [];
    level._ID48906 = [];
    level._ID54394 = [];
    var_0 = _func_1A1( "effects_underwater", "script_noteworthy" );
    var_1 = _func_1A1( "effects_lower_rig", "script_noteworthy" );
    var_2 = _func_1A1( "effects_mid_decks", "script_noteworthy" );
    var_3 = _func_1A1( "effects_top_deck", "script_noteworthy" );
    var_4 = _func_06A( "script_origin", ( 0, 0, 0 ) );

    for ( var_5 = 0; var_5 < level._ID9242.size; var_5++ )
    {
        var_6 = level._ID9242[var_5];
        var_4._ID740 = var_6._ID40005["origin"];

        if ( var_4 _meth_80B0( var_0 ) )
        {
            level._ID49941[level._ID49941.size] = var_6;
            continue;
        }

        if ( var_4 _meth_80B0( var_1 ) )
        {
            level._ID45175[level._ID45175.size] = var_6;
            continue;
        }

        if ( var_4 _meth_80B0( var_2 ) )
        {
            level._ID48906[level._ID48906.size] = var_6;
            continue;
        }

        if ( var_4 _meth_80B0( var_3 ) )
        {
            if ( _func_125( var_6._ID40005["fxid"], "oilrig_burnoff_fire" ) )
                continue;

            level._ID54394[level._ID54394.size] = var_6;
            continue;
        }
    }

    var_4 _meth_80B7();
}

_ID48500()
{
    for (;;)
    {
        wait 1;
        self waittill( "trigger" );
        _func_0DB( "ui_hidemap", 0 );
        _ID42272::_ID33575( self._ID922 );
    }
}

_ID46754()
{

}

_ID49149( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    level._ID6082 = _ID42407::_ID29506( level._ID6082 );
    var_2 = level._ID6082;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID11014 = 1;
        var_3 _ID42407::_ID10949();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( var_1 );
    level._ID6082 = _ID42407::_ID29506( level._ID6082 );
    var_5 = level._ID6082;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        var_3._ID11014 = undefined;
        var_3 _ID42407::_ID12508();
    }

    var_clear_1
    var_clear_0
}

_ID48960()
{
    for (;;)
    {
        self waittill( "trigger" );
        level._ID6082 = _ID42407::_ID29506( level._ID6082 );
        var_0 = undefined;
        var_1 = undefined;
        level._ID35507 = _ID42407::_ID29506( level._ID35507 );
        var_2 = undefined;

        if ( level._ID35507.size < level._ID46370 )
        {
            var_1 = _func_1A2( self._ID1191, "targetname" );
            var_0 = level._ID46370 - level._ID35507.size;

            for ( var_3 = 0; var_3 < var_0; var_3++ )
            {
                var_2 = var_1[var_3] _ID42407::_ID35014( 1 );

                if ( _func_02F( var_2 ) )
                {
                    var_2 _ID42407::_ID32315( "r" );
                    level._ID35507 = _ID42237::_ID3293( level._ID35507, var_2 );
                    var_2 thread _unknown_95E6();
                }
            }
        }

        wait 10;
    }
}

_ID53083()
{
    self endon( "death" );
    level._ID48061 = self;
}

_ID53369()
{
    if ( !_func_02F( self ) )
        return;

    _ID42231::_ID7827();

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID47688( var_0 )
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( var_0 ) && var_0.size > 0 )
    {
        if ( _ID42407::_ID20542( var_0, self ) )
            return;
    }

    if ( _func_02F( self._ID22746 ) )
        _ID42407::_ID36519();

    if ( !_func_0D6( self ) )
    {

    }

    self _meth_80B7();
}

_ID43226( var_0 )
{
    var_1 = [];
    var_2 = var_0;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = var_3 _ID42407::_ID15547();

        if ( var_4.size )
            var_1 = _ID42407::_ID3317( var_1, var_4 );
    }

    var_clear_3
    var_clear_0

    if ( var_1.size )
        return 0;
    else
        return 1;
}

_ID52482( var_0 )
{
    if ( !_func_02F( self ) )
        return;

    self endon( "death" );

    while ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), self._ID740, level._ID8760["65"] ) || self._ID834 != self._ID7._ID41701["right"] )
        wait 1;

    _ID42407::_ID14803( var_0, "primary" );
}

_ID45753()
{
    if ( !_ID42237::_ID14385( "left_deck3_dudes_spawned" ) )
        _ID42237::_ID14402( "left_deck3_dudes_spawned" );
}

_ID52541()
{
    if ( !_func_02F( self ) )
        return;

    self endon( "death" );
    waitframe;

    if ( level._ID15361 == 0 )
        self _meth_80B7();
}

ai_dont_change_floor_spawn()
{
    self.dontchangefloor = 1;
}

_ID50454()
{
    var_0 = _func_1A1( "white_brush_delete", "targetname" );

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();

    var_0 = _func_1A1( "black_brush_delete", "targetname" );

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();
}

_ID48078( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    _ID42237::_ID3350( var_1, ::_unknown_979A );
}

_ID51132( var_0 )
{
    self._ID3189 = self._ID669;
    _ID42407::_ID3428();
    var_1 = _func_0BA( 0.8, 1.5 );
    var_2 = _ID42407::_ID16120( "idle" )[0];
    self _meth_83D4( var_2, var_1 );
    thread _ID42259::_ID3044( self, "idle", "stop_looping_chains" );
}

heli_additive_animations()
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    self._ID3189 = "attack_littlebird";
    self _meth_8155( level._ID30895[self._ID3189]["front_react"] );
}

dof_water_takedown_and_climb()
{
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    var_0 = _ID54167::_ID43386( "oilrig_underwater_stealthkill" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, 60, 8.0, 8.0 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.45 ) _ID54167::_ID50321( 2.8, 30, 10.0, 10.0 );
    var_0 _ID54167::_ID48800( 0.7 ) _ID54167::_ID50321( 2.8, 220, 12.0, 12.0 );
    var_0 _ID54167::_ID48800( 1.95 ) _ID54167::_ID50321( 4.8, 20, 8.0, 8.0 );
    var_0 _ID54167::_ID48800( 2.7 ) _ID54167::_ID50321( 5.8, 20, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 3.0 ) _ID54167::_ID50321( 8.8, 10, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 5.6 ) _ID54167::_ID50321( 5.8, 40, 8.0, 16.0 );
    var_0 _ID54167::_ID48800( 7.4 ) _ID54167::_ID50321( 4.8, 85, 20.0, 16.0 );
    var_0 _ID54167::_ID48800( 11.0 ) _ID54167::_ID50321( 4.0, 60, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 13.0 ) _ID54167::_ID50321( 5.6, 35, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 13.8 ) _ID54167::_ID50321( 5.6, 180, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 15.0 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 15.05 ) _ID54167::_ID46727();
    var_0 _ID54167::_ID48800( 2.9 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 11.5 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.55 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.4 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.9 ) _ID54167::_ID47198( 0.1, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48800( 5.6 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 7.6 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 10.65 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 11.5 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 12.65 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 12.9 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 14.4 ) _ID54167::_ID47198( 0.08, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 15.6 ) _ID54167::_ID47198( 0.04, 0.2, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

dof_takedown_smoking_guy()
{
    self waittill( "stealth_takedown_started" );
    var_0 = _ID54167::_ID43386( "oilrig_takedown_smoking_guy" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.5, -1, 8.0, 16.0 ) _ID54167::_ID52391( self, "tag_eye" ) _ID54167::_ID44545( 3 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 2.55 ) _ID54167::_ID50321( 3.5, 20, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 3.35 ) _ID54167::_ID50321( 2.8, -1, 16.0, 16.0 ) _ID54167::_ID52391( self, "tag_eye" ) _ID54167::_ID44545( 3 );
    var_0 _ID54167::_ID48800( 3.35 ) _ID54167::_ID50321( 4.0, -1, 16.0, 16.0 ) _ID54167::_ID52391( self, "tag_eye" ) _ID54167::_ID44545( 3 );
    var_0 _ID54167::_ID48800( 4.4 ) _ID54167::_ID50321( 3.5, 300, 16.0, 24.0 );
    var_0 _ID54167::_ID48800( 5.15 ) _ID54167::_ID50321( 3.5, 20, 24.0, 24.0 );
    var_0 _ID54167::_ID48800( 5.4 ) _ID54167::_ID50321( 3.5, 50, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 5.6 ) _ID54167::_ID50321( 3.5, 180, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 5.75 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.25 ) _ID54167::_ID47198( 0.1, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48800( 2.0 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.9 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48166();
}

dof_hiding_c4( var_0 )
{
    self waittill( "c4_anim_plant" );

    if ( var_0 == "c4bodywall" )
    {
        var_1 = _ID54167::_ID43386( "oilrig_hidingC4_bodywall" );
        var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, -1, 8.0, 8.0 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
        var_1 _ID54167::_ID48800( 4.75 ) _ID54167::_ID48959();
        var_1 _ID54167::_ID48800( 1.35 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
        var_1 _ID54167::_ID48800( 2.85 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
        var_1 _ID54167::_ID48166();
    }
    else if ( var_0 == "c4bodyground" )
    {
        var_1 = _ID54167::_ID43386( "oilrig_hidingC4_bodyground" );
        var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, -1, 8.0, 8.0 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
        var_1 _ID54167::_ID48800( 3.5 ) _ID54167::_ID48959();
        var_1 _ID54167::_ID48800( 1.3 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
        var_1 _ID54167::_ID48800( 1.9 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
        var_1 _ID54167::_ID48800( 2.15 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
        var_1 _ID54167::_ID48166();
    }
    else
    {
        var_1 = _ID54167::_ID43386( "oilrig_hidingC4_bodyground2" );
        var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, -1, 8.0, 8.0 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
        var_1 _ID54167::_ID48800( 3.6 ) _ID54167::_ID48959();
        var_1 _ID54167::_ID48800( 1.3 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
        var_1 _ID54167::_ID48800( 1.9 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
        var_1 _ID54167::_ID48800( 2.15 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
        var_1 _ID54167::_ID48166();
    }
}

dof_climb_in_heli()
{
    var_0 = _ID54167::_ID43386( "oilrig_climb_heli" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, 50, 8.0, 8.0 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.6 ) _ID54167::_ID50321( 3.5, 32, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 1.0 ) _ID54167::_ID50321( 4.0, 80, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 1.5 ) _ID54167::_ID50321( 5.6, 180, 8.0, 8.0 );
    var_0 _ID54167::_ID48800( 2.35 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.8 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 1.15 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.6 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

dof_departure_and_heli_ride()
{
    var_0 = _ID54167::_ID43386( "oilrig_heli_ride" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, 200, 16.0, 32.0 ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.87 ) _ID54167::_ID50321( 3.5, 30, 32.0, 32.0 ) _ID54167::_ID44545( 1 );
    var_0 _ID54167::_ID48800( 2.45 ) _ID54167::_ID50321( 4.0, 22, 20.0, 20.0 );
    var_0 _ID54167::_ID48800( 2.8 ) _ID54167::_ID50321( 5.6, 10, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 3.05 ) _ID54167::_ID50321( 20, 250, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 3.85 ) _ID54167::_ID50321( 36, 5.0, 16.0, 16.0 );
    var_0 _ID54167::_ID48800( 4.45 ) _ID54167::_ID50321( 6.8, 250, 10.0, 5.0 );
    var_0 _ID54167::_ID48800( 47.7 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 2.45 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 = 34.0;

    for ( var_2 = 1.5; var_2 <= var_1; var_2 += 0.3 )
        var_0 _ID54167::_ID48800( var_2 ) _ID54167::_ID47198( 0.08, 1.0, level._ID794, 10000 );

    var_0 _ID54167::_ID48166();
}

water_planes_changes()
{
    var_0 = _func_1A1( "oilr_water_plane_01", "targetname" );
    var_1 = _func_1A1( "oilr_water_plane_02", "targetname" );
    var_2 = _func_1A1( "oilr_water_plane_near", "targetname" );
    var_3 = _func_1A1( "water_plane_distortion", "targetname" );
    _ID42237::_ID14413( "player_slitting_throat" );
    wait 1.4;
    var_0 _meth_8059();
    var_2 _meth_805A();
    wait 6;
    thread _unknown_A4E0();
    var_3 _meth_805A();
    _ID42237::_ID14413( "player_has_started_planting_c4" );
    var_0 _meth_805A();
    var_1 _meth_8059();
}

replacemodelforwetallies()
{
    if ( _ID42237::_ID14385( "upper_room_breached" ) || !_func_02F( self ) )
        return;

    if ( !_ID42237::_ID14385( "player_slitting_throat" ) )
        _ID42237::_ID14413( "player_slitting_throat" );

    self.oldmodel = self._ID669;
    self.oldhead = self._ID18304;

    switch ( self._ID18304 )
    {

    }

    switch ( self._ID669 )
    {

    }

    _ID42237::_ID14413( "upper_room_breached" );
    wait 1.0;

    if ( _func_02F( self ) )
    {
        _ID42226::_ID32651( self.oldhead );
        self _meth_80B8( self.oldmodel );
        return;
        case "head_seal_udt_asia":
        case "head_seal_udt_i":
        case "head_seal_udt_f":
        case "head_seal_udt_e":
        case "head_seal_udt_d":
        case "head_seal_udt_c":
        case "head_seal_udt_a":
        case "head_seal_udt_asia_lifesaver":
        case "head_seal_udt_i_lifesaver":
        case "head_seal_udt_f_lifesaver":
        case "head_seal_udt_d_lifesaver":
        case "head_hero_soap_udt":
        case "head_hero_ghost_udt":
        default:
        case "body_seal_udt_smg":
        case "body_seal_udt_assault_b":
        case "body_seal_udt_assault_a":
        case "body_hero_seal_udt_soap":
        case "body_hero_seal_udt_ghost":
        default:
    }
}

replacemodelforwetplayer()
{
    level._ID30904["player_rig"] = "viewhands_udt_wet";
    level._ID794 _meth_834E( "viewhands_udt_wet" );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    level._ID30904["player_rig"] = "viewhands_udt";
    level._ID794 _meth_834E( "viewhands_udt" );
    level._ID30904["h2_active_breacher_rig"] = "viewbody_udt";
    level._ID30904["worldbody"] = "viewbody_udt";
}

soap_stairs_anim()
{
    var_0 = _func_0C8( "stairs_anim_node", "targetname" );
    var_1 = _func_1A1( "stairs_anim_trigger", "targetname" );
    var_1 waittill( "trigger" );
    var_0 _ID42259::_ID3074( level._ID44035, "stairs_turn" );
    var_0 _ID42259::_ID3111( level._ID44035, "stairs_turn" );
    level._ID44035 _ID42407::_ID12445();
}

drop_weapon_ai()
{
    wait 2.1;
    level._ID49527 _meth_81CE( level._ID49527._ID1302, "right", 1 );
}

submarine_02_dds()
{
    self._ID9725 = _func_1A1( "sub_dds_02", "targetname" );
    self._ID51261 = _func_1A1( "dds_door_02", "targetname" );
    self._ID51261 _meth_8053( self._ID9725 );
    self._ID9725._ID740 = self._ID740;
    self._ID9725._ID65 = self._ID65;
    self._ID9725 _meth_8053( self, "TAG_ORIGIN", ( 330, 0, 100 ), ( 0, 0, 0 ) );
}

rotating_drill( var_0, var_1 )
{
    for (;;)
    {
        self _meth_82C7( ( 0, var_0, 0 ), var_1 );
        wait(var_1);
    }
}

garage_door_think()
{
    var_0 = _func_1A1( "door_clip_deck1", "targetname" );
    var_0 _meth_82C9();
    _ID42237::_ID14413( "upper_room_cleared" );
    var_0 _meth_82C8();
}

c4_in_hand( var_0 )
{
    wait 1;
    self _meth_801D( "weapon_c4", "tag_inhand" );
    var_1 = _func_067( level._ID30895["generic"]["C4_plant_start"] );
    wait(var_1 - 1);
    var_0 _meth_8059();
    self _meth_802A( "weapon_c4", "tag_inhand" );
    _func_157( _ID42237::_ID16299( "light_c4_blink_nodlight" ), var_0, "tag_fx" );
    var_0 _ID42407::_ID27079( "c4_bounce_default" );
}

hide_show_props()
{
    var_0 = _func_23E( "icechunks_hide", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
    _func_31C( 1 );
    _ID42237::_ID14413( "player_breaks_surface" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _meth_8059();
    }

    var_clear_1
    var_clear_0
    _func_31B( 1 );
}

animated_palette()
{
    var_0 = _func_1A1( "animated_palette", "targetname" );
    var_0 _ID42407::_ID3428( "h2_suspended_palette" );
    var_0 _ID42259::_ID3044( var_0, "idle" );
}

force_m4_weapon()
{
    _ID42237::_ID14413( "player_has_started_planting_c4" );
    _ID42407::_ID14803( "m4_grenadier", "primary" );
}

change_light_set_surface()
{
    _ID42237::_ID14413( "player_breaks_surface" );
    wait 0.5;
    level._ID794 _ID42407::_ID48929( "oilrig_sneaky_swim" );
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    wait 12;
    level._ID794 _ID42407::_ID48929( "oilrig" );
}

animated_crane_hooks()
{
    var_0 = _func_1A2( "animated_crane_hook", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_A8C6 );
}

animated_hooks_think()
{
    _ID42407::_ID3428( "animated_crane_hook" );
    thread _ID42259::_ID3044( self, "idle", "stop_idle" );
    _ID42237::_ID14413( "player_has_started_planting_c4" );
    self notify( "stop_idle" );
}

vision_set_change_underwater()
{
    wait 4;
    level._ID794 _ID42407::_ID48929( "oilrig_sdv" );
    wait 4;
    level._ID794 _ID42407::_ID32515( "oilrig_sdv", 0 );
    wait 15;
    level._ID794 _ID42407::_ID32515( "oilrig_underwater", 2 );
    wait 6;
    level._ID794 _ID42407::_ID48929( "oilrig_underwater" );
}

play_fx_on_chopper()
{
    _ID42237::_ID14413( "littlebird_escape_spawned" );
    _func_157( level._ID1426["aircraft_spotlight_cockpit_oilrig"], level._ID53676, "tag_origin" );
}

delete_railing_guy( var_0 )
{
    var_1 = _func_1A1( "railing_guy_trig", "targetname" );
    var_2 = var_0 _ID42237::_ID46831( "j_mainroot" );
    var_2 = _func_06A( "script_model", var_0 _meth_809C() );
    var_2 _meth_80B8( "tag_origin" );
    var_2 _meth_8053( var_0, "j_mainroot" );

    while ( !var_2 _meth_80B0( var_1 ) )
        waittillframeend;

    var_0 _meth_8058();
    var_0 _meth_80B7();
    _func_156( level._ID1426["water_object_splash_wide_tall_oilrig"], var_2._ID740 );
    var_2 _ID42407::_ID27079( "scn_oilrig_smoker_water_splash" );
    var_2 _meth_80B7();
}

spawn_weapon_m14()
{
    var_0 = _func_06A( "script_model", level._ID53676._ID740 );
    var_0 _meth_80B8( "h2_weapon_m14ebr_scoped_arctic" );
    var_0 _meth_8053( level._ID53676, "tag_detach_left", ( -18, 10, 28 ), ( 286.082, 300.887, -33.5348 ) );
    _ID42237::_ID14413( "littlebird_escape_lifted_off" );
    var_0 _meth_80B7();
}

bring_back_rig()
{
    var_0 = _func_1A1( "oilrig_underwater_node", "targetname" );
    var_1 = _func_1A1( "oilrig_underwater_node_start", "targetname" );
    var_2 = var_1._ID740 - var_0._ID740;
    var_3 = _func_1A2( "oilrig_underwater", "targetname" );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5._ID740 = var_5._ID740 - var_2;
    }

    var_clear_2
    var_clear_0
}

disable_hud_c4_plant()
{
    self waittill( "c4_anim_plant" );
    _func_0DB( "hud_showStance", 0 );
    _func_0DB( "compass", 0 );
    _func_0DB( "actionSlotsHide", 1 );
    wait 5;
    _func_0DB( "hud_showStance", 1 );
    _func_0DB( "compass", 1 );
    _func_0DB( "actionSlotsHide", 0 );
}

breach_b_hide_objects()
{
    level endon( "player_at_deck1_midpoint" );
    var_0 = [];
    var_1 = [ "leaking", "animated_crane_hook", "com_wall_fan_blade_rotate", "derrick_thing", "animated_palette", "exploderanim, h2_oilrig_c4room_wires_anim", "ceiling_support" ];
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = _func_1A2( var_3, "targetname" );
        var_0 = _ID42237::_ID3296( var_0, var_4 );
    }

    var_clear_3
    var_clear_0
    var_6 = _func_1A2( "leaking", "targetname" );
    var_7 = [];
    var_8 = var_6;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];

        if ( !_func_02F( var_9._ID31388 ) )
            continue;

        var_7[var_7.size] = var_9;
    }

    var_clear_2
    var_clear_0
    var_0 = _ID42237::_ID3322( var_0, var_7 );

    for (;;)
    {
        _ID42237::_ID14413( "breach_B" );
        var_11 = var_0;

        for ( var_13 = _func_1DA( var_11 ); _func_02F( var_13 ); var_13 = _func_1BF( var_11, var_13 ) )
        {
            var_12 = var_11[var_13];
            var_12 _meth_805A();
        }

        var_clear_4
        var_clear_2
        _func_31C( 2 );
        _ID42237::_ID14426( "breach_B" );
        var_14 = var_0;

        for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
        {
            var_12 = var_14[var_15];
            var_12 _meth_8059();
        }

        var_clear_1
        var_clear_0
        _func_31B( 2 );
    }
}

breach_a_hide_objects()
{
    level endon( "ambush_c4_triggered" );
    var_0 = _func_1A2( "ceiling_support", "targetname" );
    var_1 = _func_1A2( "leaking", "targetname" );
    var_2 = _func_1A2( "ambush_office", "script_noteworthy" );
    var_3 = [];
    var_4 = var_1;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( !_func_02F( var_5._ID31388 ) )
            continue;

        var_3[var_3.size] = var_5;
    }

    var_clear_2
    var_clear_0
    var_7 = _ID42237::_ID3296( var_0, var_3 );
    var_8 = _ID42237::_ID3296( var_7, var_2 );

    for (;;)
    {
        _ID42237::_ID14413( "breach_A_hide" );
        var_9 = var_8;

        for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
        {
            var_10 = var_9[var_11];
            var_10 _meth_805A();
        }

        var_clear_4
        var_clear_2
        _func_31C( 4 );
        _ID42237::_ID14426( "breach_A_hide" );
        var_12 = var_8;

        for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
        {
            var_10 = var_12[var_13];
            var_10 _meth_8059();
        }

        var_clear_1
        var_clear_0
        _func_31B( 4 );
    }
}

helicopter_objects_hide()
{
    _ID42237::_ID14413( "player_on_board_littlebird" );
    _func_31C( 2 );
    _func_31C( 3 );
    _func_31C( 6 );
    var_0 = _func_1A2( "ambush_office_destroyed", "script_noteworthy" );
    var_1 = [ "leaking", "animated_crane_hook", "com_wall_fan_blade_rotate", "exploderanim, h2_oilrig_c4room_wires_anim", "ceiling_support", "oilrig_underwater" ];
    var_2 = [];
    var_3 = var_1;

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];
        var_5 = _func_1A2( var_4, "targetname" );
        var_2 = _ID42237::_ID3296( var_2, var_5 );
    }

    var_clear_3
    var_clear_0
    var_7 = _func_1A2( "leaking", "targetname" );
    var_8 = [];
    var_9 = var_7;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];

        if ( !_func_02F( var_10._ID31388 ) )
            continue;

        var_8[var_8.size] = var_10;
    }

    var_clear_2
    var_clear_0
    var_2 = _ID42237::_ID3322( var_2, var_8 );
    var_12 = var_2;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        var_13 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_15 = var_0;

    for ( var_17 = _func_1DA( var_15 ); _func_02F( var_17 ); var_17 = _func_1BF( var_15, var_17 ) )
    {
        var_16 = var_15[var_17];
        var_16 _meth_805A();
    }

    var_clear_2
    var_clear_0
}

final_stair_animation_monitoring()
{
    var_0 = _func_1A1( "end_stair_script_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( var_1 == level._ID49792 || var_1 == level._ID44035 )
            break;
    }

    _ID42237::_ID14402( "stair_in_use" );
    wait 1.25;
    _ID42237::_ID14388( "stair_in_use" );
}

info_volume_objects_hide()
{
    _ID42237::_ID14413( "player_attached_to_sdv" );
    var_0 = _func_1A1( "base_volume", "targetname" );
    var_1 = _func_1A1( "first_volume", "targetname" );
    var_2 = _func_1A1( "second_volume", "targetname" );
    var_3 = _func_1A1( "third_volume", "targetname" );
    var_4 = _func_1A1( "top_volume", "targetname" );
    var_5 = _func_1A2( "script_model", "code_classname" );
    var_6 = [];
    var_7 = var_5;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];

        if ( var_8._ID669 == "mil_frame_charge" || var_8._ID669 == "h2_oilr_door_breaching_undamaged" || var_8._ID669 == "viewhands_player_udt" || var_8._ID669 == "oilrig_water_plane" || var_8._ID669 == "oilrig_water_plane_far" || var_8._ID669 == "oilrig_water_plane_near" || var_8._ID669 == "h2_oilr_water_under_top" || var_8._ID669 == "h2_fav_garage_door_03_animated" || var_8._ID669 == "weapon_c4" || var_8._ID669 == "h2_oilr_water_under_02" || var_8._ID669 == "h2_oilr_water_under" || var_8._ID669 == "h2_oilr_water_under_top" || var_8._ID669 == "intel_item_laptop" )
            var_6 = _ID42237::_ID3293( var_6, var_8 );
    }

    var_clear_2
    var_clear_0
    var_10 = _ID42237::_ID3322( var_5, var_6 );
    thread _unknown_B039( var_10, var_0, "base_floor" );
    thread _unknown_B044( var_10, var_1, "first_floor" );
    thread _unknown_B04E( var_10, var_2, "second_floor" );
    thread _unknown_B059( var_10, var_3, "third_floor" );
    thread _unknown_B063( var_10, var_4, "top_floor" );
}

floor_volume( var_0, var_1, var_2 )
{
    level endon( "death" );
    var_3 = [];
    var_4 = var_0;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_237( var_5._ID740, var_1 ) )
            var_3[var_3.size] = var_5;
    }

    var_clear_2
    var_clear_0
    var_7 = var_3;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_5 = var_7[var_8];
        var_5 _meth_805A();
        var_5 _meth_8095();
    }

    var_clear_1
    var_clear_0

    for (;;)
    {
        _ID42237::_ID14413( var_2 );
        var_9 = var_3;

        for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
        {
            var_5 = var_9[var_10];

            if ( !_func_02F( var_5 ) || _func_2A5( var_5 ) )
                continue;

            var_5 _meth_8059();
            var_5 _meth_8096();
        }

        var_clear_3
        var_clear_2
        _ID42237::_ID14426( var_2 );
        var_11 = var_3;

        for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
        {
            var_5 = var_11[var_12];

            if ( !_func_02F( var_5 ) || _func_2A5( var_5 ) )
                continue;

            var_5 _meth_805A();
            var_5 _meth_8095();
        }

        var_clear_1
        var_clear_0
    }
}

manhandler_first_breach_right_door_spawn_func()
{
    self.manhandler_additional_wait_func = ::_unknown_B183;
}

ai_sync_before_entering_1st_breach_room_right_door()
{
    var_0 = [ level._ID49792, level._ID48061 ];
    var_1 = _func_11F( self._ID65 );
    var_2 = _func_03D();

    while ( _func_03D() - var_2 < 3000 )
    {
        var_3 = 1;
        var_4 = var_0;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( !_func_1A7( var_5 ) )
                continue;

            if ( _func_0FB( var_5._ID740 - self._ID740, var_1 ) > 0 )
            {
                var_3 = 0;
                break;
            }
        }

        var_clear_2
        var_clear_0

        if ( var_3 )
            return;

        wait 0.2;
    }
}

h2_intro_zodiac_wibble()
{
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    var_0 = _func_1A1( "zodiacs_grate", "targetname" );

    while ( !_ID42237::_ID14385( "player_at_lower_breach" ) )
    {
        var_0 _meth_82C0( 1, 2 );
        wait 2;
        var_0 _meth_82C0( -1, 2 );
        wait 2;
    }
}
#using_animtree("generic_human");

init_custom_death_anim()
{
    level._ID30895["generic"]["stand_death_shoulder_stumble"] = %h2_stand_death_shoulder_stumble;
}
