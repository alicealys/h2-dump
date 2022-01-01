// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\oilrig_mission_select_cam::_ID50320();
        return;
    }

    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
    {
        maps\oilrig_beautiful_corner::_ID50786();
        return;
    }

    _ID28333();
    _ID42323::_ID616();
    _ID28284();
}

_ID28333()
{
    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
        return;

    setdvar( "breach_debug", "0" );
    setdvar( "breach_weapons", "1" );
    setdvar( "breach_requires_friendlies_in_position", "0" );
    setdvar( "hostage_missionfail", "1" );
    _ID45768();
    setdvar( "disable_ambush_slowmo", "1" );
    setdvar( "use_node_script_flag_wait_in_color_system", 1 );
    setsaveddvar( "ai_force_combat_close", 1 );
    setsaveddvar( "ai_stairsPerfectFriendlyAimInMeleeRange", 1 );
    level._ID46370 = 3;
    level._ID12029 = ::_ID46754;
    setdynamicdvar( "oilrig_debug", "0" );
    level._ID47460 = 262144;
    level._ID53103 = 0;
    level._ID26673 = 0;
    level._ID43928 = 0;
    level._ID39431 = 0;
    level._ID49673 = 6;
    level._ID35278 = ::_ID53576;
    level._ID49251 = undefined;
    level._ID44080 = [];
    level._ID49132 = 0;
    level._ID46473 = [];
    level._ID45452 = 3;
    level._ID18995 = 8;
    level._ID49648 = [];
    level._ID8760["25"] = cos( 25 );
    level._ID8760["35"] = cos( 35 );
    level._ID8760["45"] = cos( 45 );
    level._ID8760["60"] = cos( 60 );
    level._ID8760["65"] = cos( 65 );
    level._ID43315 = 262144;
    var_0 = getentarray( "trigger_multiple", "classname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID922 ) && getsubstr( var_2._ID922, 0, 10 ) == "colornodes" )
            level._ID46473 = _ID42237::_ID3293( level._ID46473, var_2 );
    }

    _ID42407::_ID1951( "debug", ::_ID46468, "debug" );
    _ID42407::_ID1951( "underwater", ::_ID51638, "underwater" );
    _ID42407::_ID1951( "surface", ::_ID52069, "surface" );
    _ID42407::_ID1951( "rig", ::_ID50038, "rig" );
    _ID42407::_ID1951( "deck1", ::_ID48190, "deck1" );
    _ID42407::_ID1951( "heli", ::_ID44586, "ambush" );
    _ID42407::_ID1951( "deck2", ::_ID53219, "deck2" );
    _ID42407::_ID1951( "deck3", ::_ID44642, "deck3" );
    _ID42407::_ID1951( "escape", ::_ID35741, "escape" );
    _ID42407::_ID10126( ::_ID47474 );
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
    _ID42367::_ID1851( ::_ID46835 );
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
    thread _ID50454();
    initialize_portal_flags();
    _ID42237::_ID3350( getentarray( "redshirt_trigger", "targetname" ), ::_ID48960 );
    _ID42237::_ID3350( getentarray( "compassTriggers", "targetname" ), ::_ID48500 );
    setsaveddvar( "r_specularColorScale", "1.4" );
    thread _ID53488();
    level._ID44826 = 0.8;
    level._ID49194 = 0.1;
    level._ID28001 = level._ID44826;
    level._ID794 _ID46010( level._ID44826 );
    thread _ID43999();
    thread _ID47940();
    _ID46797();
    thread maps\jake_tools::_ID18542();
    _ID50972();
    var_0 = [];
    var_0[0] = "heli_ambush";
    var_0[1] = "heli_deck2";
    var_0[2] = "heli_patrol_02";
    thread _ID44580( var_0 );
    createthreatbiasgroup( "player" );
    createthreatbiasgroup( "ignored" );
    createthreatbiasgroup( "oblivious" );
    level._ID794 setthreatbiasgroup( "player" );
    setignoremegroup( "allies", "oblivious" );
    setignoremegroup( "axis", "oblivious" );
    setignoremegroup( "player", "oblivious" );
    setignoremegroup( "oblivious", "allies" );
    setignoremegroup( "oblivious", "axis" );
    setignoremegroup( "oblivious", "oblivious" );
    _ID42237::_ID3350( getentarray( "hostiles_ambush", "targetname" ), _ID42407::_ID1947, ::_ID49560 );
    _ID42237::_ID3350( getentarray( "patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_ID54045 );
    _ID42237::_ID3350( getentarray( "rappel", "script_noteworthy" ), _ID42407::_ID1947, ::_ID45486 );
    _ID42237::_ID3350( getentarray( "army", "script_noteworthy" ), _ID42407::_ID1947, ::_ID52407 );
    _ID42407::_ID3343( "turret_guys", ::_ID52541 );
    _ID42407::_ID3343( "left_deck3_dudes", ::_ID45753 );
    _ID42237::_ID3350( getvehiclenodearray( "plane_sound", "script_noteworthy" ), _ID42549::_ID26746 );
    _ID42407::_ID3344( "hostiles_deck2_smoke", ::ai_dont_change_floor_spawn );
    thread _ID27337();

    if ( _ID42407::_ID20614() )
    {
        var_1 = getentarray( "sub_dds_01", "targetname" );
        var_2 = getentarray( "dds_door_01", "targetname" );
        _ID42237::_ID3350( var_1, _ID42407::_ID18512 );
        _ID42237::_ID3350( var_2, _ID42407::_ID18512 );
        var_1 = getentarray( "sub_dds_02", "targetname" );
        var_2 = getentarray( "dds_door_02", "targetname" );
        _ID42237::_ID3350( var_1, _ID42407::_ID18512 );
        _ID42237::_ID3350( var_2, _ID42407::_ID18512 );
    }

    _ID42237::_ID14402( "init_gameplay_lighting" );
    var_3 = getent( "oilr_water_plane_01", "targetname" );
    var_3 hide();
    var_4 = getent( "oilr_water_plane_02", "targetname" );
    var_4 hide();
    var_5 = getent( "water_plane_distortion", "targetname" );
    var_5 hide();
    thread dof_water_takedown_and_climb();
    thread deck_2_monitor_and_sync_ais_before_3rd_floor();
    thread info_volume_objects_hide();
    init_custom_death_anim();
    _ID42237::_ID3350( getentarray( "breach_custom_death", "script_noteworthy" ), _ID42407::_ID1947, _ID42407::_ID32326, "stand_death_shoulder_stumble" );
    var_6 = getent( "ai_sync_before_entering_breach_room", "script_noteworthy" );
    var_6 _ID42407::_ID1947( ::manhandler_first_breach_right_door_spawn_func );
    thread _ID42407::_ID1892( "allies", ::replacemodelforwetallies );
    thread h2_intro_zodiac_wibble();
}

_ID27337()
{
    level._ID794 waittill( "death",  var_0  );

    if ( isdefined( var_0 ) && var_0._ID172 == "misc_turret" )
    {
        if ( issubstr( var_0._ID669, "little_bird" ) )
        {
            level notify( "new_quote_string" );
            setdvar( "ui_deadquote", &"OILRIG_MISSIONFAIL_HELI_DEATH" );
        }
    }
}

_ID47474()
{
    _ID51638();
}

_ID46468()
{
    _ID42237::_ID14402( "above_water_visuals" );
    _ID45905( "Rig" );
    thread _ID42367::_ID10246( 0 );
    thread _ID42367::_ID10246( 1 );
    thread _ID42367::_ID10246( 2 );
    thread _ID42367::_ID10246( 3 );
    thread _ID42367::_ID10246( 4 );
    thread _ID42367::_ID10246( 5 );
    thread _ID45005( 1 );
    level._ID794 _ID46010( 1 );
    var_0 = getent( "org_stealth_kill", "targetname" );
    var_1 = _ID48579( "02", var_0 );
    var_1._ID740 = level._ID794._ID740 + ( 0, 0, 100 );
    var_1 thread _ID43617::_ID43978();
    wait 3;
    var_0 _ID42259::_ID3018( var_1, "intro_sequence" );
}

_ID51638()
{
    _ID42475::_ID34575( "start_underwater_checkpoint" );
    _ID43711();
}

_ID52069()
{
    _ID42475::_ID34575( "start_surface_checkpoint" );
    _ID42237::_ID14402( "sdv_01_arriving" );
    _ID54636();
    _ID42237::_ID14402( "player_is_done_swimming" );
    _ID42237::_ID14402( "player_breaks_surface" );
    var_0 = getent( "org_stealth_kill", "targetname" );
    _ID54059();
    level._ID794 setorigin( var_0._ID740 + ( 0, -65, 0 ) );
    level._ID794 setplayerangles( var_0._ID65 );
    level._ID794 disableweapons();
    thread _ID43059();
    thread _ID51811();
    wait 0.05;
    _ID48905();
    thread _ID52921();
}

_ID51811()
{
    wait 1;
    var_0 = 0;
    var_1 = _ID42407::_ID3317( level._ID43029, level._ID51575 );

    for (;;)
    {
        wait 0.05;

        foreach ( var_3 in var_1 )
            var_3 notify( "finished_swim_animation" );

        var_0++;
    }
}

_ID50038( var_0 )
{
    _ID42475::_ID34575( "start_rig_checkpoint" );
    _ID45905( "Rig", var_0 );
    thread _ID45717();
    _ID42237::_ID14402( "player_slitting_throat" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    thread _ID54379();
    thread _ID48391();
}

_ID48190()
{
    _ID42475::_ID34575( "start_deck1_checkpoint" );
    thread _ID48391();
    _ID42237::_ID14402( "above_water_visuals" );
    maps\jake_tools::_ID38942( "colornodes_deck1", "script_noteworthy", 1 );
    _ID45905( "Deck1" );
    thread _ID53620();
    thread garage_door_think();
    var_0 = getent( "door_deck1", "targetname" );
    var_0 delete();
    var_1 = getent( "door_deck1_animated", "targetname" );
    var_1 hide();
    _ID42407::_ID24587( "mus_oilrig_suspense_01_music_alt" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    _ID42237::_ID14402( "obj_hostages_secure_given" );
    _ID42237::_ID14402( "player_at_lower_breach" );
    _ID42237::_ID14402( "railing_patroller_dead" );
    _ID42237::_ID14402( "lower_room_breached" );
    _ID42237::_ID14402( "lower_room_cleared" );
    thread _ID46465();
}

_ID44586()
{
    _ID42475::_ID34575( "start_heli_checkpoint" );
    thread _ID48391();
    _ID42237::_ID14402( "above_water_visuals" );
    _ID45905( "Heli" );
    thread _ID42367::_ID10246( 0 );
    thread _ID42367::_ID10246( 1 );
    thread _ID42367::_ID10246( 2 );
    thread _ID42367::_ID10246( 3 );
    thread _ID45005( 1 );
    _ID42407::_ID24587( "mus_oilrig_fight_music_01" );
    thread _ID46346();
    level._ID794 _ID46010( 1 );
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
}

_ID53219()
{
    _ID42475::_ID34575( "start_deck2_checkpoint" );
    thread _ID48391();
    _ID42237::_ID14402( "player_at_stairs_to_deck_2" );
    _ID42237::_ID14402( "player_approaching_deck_2" );
    maps\jake_tools::_ID38942( "colornodes_deck2", "script_noteworthy", 1 );
    _ID42237::_ID14402( "above_water_visuals" );
    _ID45905( "Deck2" );
    thread _ID51991();
    level._ID794 _ID46010( 1 );
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
}

_ID44642()
{
    _ID42475::_ID34575( "start_deck3_checkpoint" );
    thread _ID48391();
    _ID42237::_ID14402( "player_at_stairs_to_top_deck" );
    _ID42237::_ID14402( "above_water_visuals" );
    _ID45905( "Deck3" );
    thread _ID50801();
    level._ID794 _ID46010( 1 );
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    _ID42237::_ID14402( "obj_explosives_locate_given" );
    thread _ID54040();
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
    thread _ID45005( 1 );
    thread _ID48391();
    _ID42237::_ID14402( "above_water_visuals" );
    _ID45905( "Escape" );
    _ID42237::_ID14402( "barracks_cleared" );
    level._ID794 _ID46010( 1 );
    thread _ID43690();
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    thread _ID50414();
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
        case "underwater":
            var_9 = var_1;
            break;
        case "surface":
            var_9 = var_2;
            break;
        case "rig":
            var_9 = var_3;
            break;
        case "deck1":
            var_9 = var_4;
            break;
        case "heli":
            var_9 = var_5;
            break;
        case "deck2":
            var_9 = var_6;
            break;
        case "deck3":
            var_9 = var_7;
            break;
        case "escape":
            var_9 = var_8;
            break;
        default:
            var_9 = var_0;
            break;
    }

    return var_9;
}

initialize_portal_flags()
{
    var_0 = portal_group_start_point_initializer();

    foreach ( var_2 in var_0 )
        _ID42237::_ID14402( var_2 );
}

_ID43711()
{
    enableforcedsunshadows();
    level._ID39431 = 1;
    _ID54636();
    thread _ID48905();
    thread _ID49878();
    thread _ID39450();
    thread _ID50535();
    thread _ID54059();
    thread _ID43059();
    thread _ID44985( level._ID794 );
    thread hide_show_props();
    thread vision_set_change_underwater();
    _ID42237::_ID14413( "start_surface_sequences" );
    thread _ID52921();
}

_ID39450()
{
    thread _ID45969( 0, 6500 );
    var_0 = getent( "underwater_box", "targetname" );
    var_0 show();
    var_1 = getent( "org_stealth_kill", "targetname" );
    _ID42237::_ID14402( "underwater_sequence_lighting" );
    thread bring_back_rig();
    var_2 = getent( "ally_submarine", "targetname" );
    var_2 _ID42407::_ID3428( "submarine_02" );
    var_2 thread submarine_02_dds();
    var_2 thread _ID47858();
    var_3 = _ID48579( "01", var_1 );
    var_4 = _ID48579( "02", var_1 );
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
    level._ID794 thread _ID47544( var_3, var_1 );
    thread h2_sub_intro_cin();
    wait 0.5;
    _ID42237::_ID3350( level._ID43029, ::_ID44335, var_3, var_1 );
    _ID42237::_ID3350( level._ID51575, ::_ID44335, var_4, var_1 );
    wait 1;
    _ID42237::_ID3350( level._ID48906, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID54394, _ID42237::_ID26402 );
    var_6 = getent( "dds_door_01", "targetname" );
    var_6._ID51935 = getent( "dds_door_01_seal", "targetname" );
    var_6._ID51935 linkto( var_6 );
    _ID42237::_ID14413( "player_attached_to_sdv" );
    _ID42237::_ID3350( level._ID805, _ID42402::_ID27642 );
    _ID42237::_ID14413( "open_dds_door" );
    var_6 _ID50261();
    wait 1;
    level._ID794 playrumblelooponentity( "light_3s" );
    wait 3.5;
    thread h2_tweak_cull_dist();
    _ID42237::_ID14402( "intro_anim_sequence_starting" );
    var_1 _ID42259::_ID3099( var_5, "intro_sequence" );
    _ID42237::_ID14413( "sdv_01_passing" );
    _ID42237::_ID14413( "sdv_01_arriving" );
    thread _ID45969( 3, 2500 );
    _ID42237::_ID14413( "player_ready_to_be_helped_from_water" );
    thread _ID45969( 0, 0 );
    var_2 delete();
    var_4 delete();
    var_7 = getent( "player_submarine", "targetname" );
    var_7 delete();
    var_0 hide();
}

h2_sub_intro_cin()
{
    var_0 = _ID54167::_ID43386( "sub_ride" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 98.65 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 72.5 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 12.0, 4.0, 8.0, 55, 43, 22, 20 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
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
    setculldist( 3000 );
    wait 21;
    var_0 = 3000;
}

_ID47449()
{
    level endon( "player_breaks_surface" );

    while ( !_ID42237::_ID14385( "player_breaks_surface" ) )
    {
        level._ID794 shellshock( "slowview", 0.1 );
        wait 0.1;
    }
}

_ID48905()
{
    _ID45905( "Rig", 0, 1 );
    _ID42237::_ID3294( level._ID51388, ::hide );
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
    var_0 = getent( "org_stealth_kill", "targetname" );
    level._ID47769 = spawn( "script_origin", var_0._ID740 );
    level._ID47769._ID740 = var_0._ID740;
    level._ID47769._ID65 = var_0._ID65;
    level._ID49527 = _ID42407::_ID35168( "hostile_stealthkill_player" );
    level._ID49527 _ID42358::_ID3551();
    level._ID54409 = _ID42407::_ID35168( "hostile_stealthkill_friendly" );
    level._ID49527._ID3189 = "hostile_stealthkill_player";
    level._ID54409._ID3189 = "hostile_stealthkill_friendly";
    level._ID49527 thread _ID43892();
    level._ID54409 thread _ID43892();
    level._ID49527 thread disable_weapon_in_wolfmode();
    level._ID54409 thread disable_weapon_in_wolfmode();
    level._ID47769 thread _ID43236( "lower_room_breached" );
}

disable_weapon_in_wolfmode()
{
    self.cheat._ID48626 = 1;
}

_ID43236( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( var_0 );

    if ( isdefined( self ) )
        self delete();
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
    var_0 thread _ID50493();
    thread _ID42411::_ID17021( var_0 );
    var_0 waittill( "reached_dynamic_path_end" );
    var_0 delete();
}

_ID47478()
{
    wait 1;
    var_0 = 10;
    var_1 = 20;
    self moveto( self._ID740 + ( 0, 0, var_1 ), var_0, 1, 1 );
    wait(var_0);
    self delete();
}

_ID47858()
{
    self endon( "death" );
    var_0 = spawn( "script_origin", self._ID740 + ( 0, -900, -1800 ) );
    var_0 linkto( self );

    while ( !_ID42237::_ID14385( "player_ready_to_be_helped_from_water" ) )
    {
        var_0 playrumblelooponentity( "mig_rumble" );
        wait 0.4;
    }

    var_0 delete();
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
    level._ID794 disableweapons();
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID794 _meth_830f( 0 );
    level._ID794 allowjump( 0 );
    var_2 = _ID42407::_ID35028( "player_rig" );
    var_2 thread _ID45577();
    var_0 _ID42259::_ID3018( var_2, "underwater_player_start", "origin_animate_jnt" );
    var_2 linkto( var_0, "origin_animate_jnt" );
    level._ID794 setorigin( var_2 gettagorigin( "tag_player" ) );
    level._ID794 setplayerangles( var_2 gettagangles( "tag_player" ) );
    wait 1;
    level._ID794 playerlinktodelta( var_2, "tag_player", 1, 55, 43, 5, 20, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    _ID42237::_ID14402( "player_attached_to_sdv" );
    _ID42237::_ID14413( "intro_anim_sequence_starting" );
    var_0 thread _ID42259::_ID3111( var_2, "underwater_player_start", "origin_animate_jnt" );
    _ID42237::_ID14413( "sdv_01_arriving" );
    wait 4;
    wait 15.5;
    _ID42237::_ID14402( "player_breaks_surface" );
    var_3 = getent( "water_plane_distortion", "targetname" );
    var_3 show();
    _ID46805( 0 );
    thread _ID42407::_ID41628( "player_ready_to_be_helped_from_water", undefined );
    thread _ID53509();
    var_2 hide();
    _ID42237::_ID14413( "player_is_done_swimming" );
    var_2 delete();
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
    var_7 = ( var_3 - var_1 ) / var_0 * 20;
    var_8 = ( var_4 - var_2 ) / var_0 * 20;
    var_9 = var_1;
    var_10 = var_2;
    var_11 = 0;
    _ID42237::_ID14402( "player_turn_rate_slowed" );

    while ( _ID42237::_ID14385( "player_turn_rate_slowed" ) )
    {
        var_12 = level._ID794 getnormalizedcameramovement();
        var_13 = var_12[0];
        var_14 = var_12[1];
        var_15 = _ID42237::_ID37527( abs( var_13 ) > 0.001, 1, -3 );
        var_16 = _ID42237::_ID37527( abs( var_14 ) > 0.001, 1, -3 );
        var_9 = clamp( var_9 + var_7 * var_15, var_1, var_3 );
        var_10 = clamp( var_10 + var_8 * var_16, var_2, var_4 );

        if ( level._ID794 _ID42237::_ID20583() )
        {
            setsaveddvar( "aim_turnrate_yaw", var_10 );
            setsaveddvar( "aim_turnrate_pitch", var_9 );
            level._ID794 disableslowaim();
            var_11 = 0;
        }
        else
        {
            if ( !var_11 )
                level._ID794 enableslowaim();

            var_11 = 1;
        }

        var_17 = var_13;
        var_18 = var_14;
        waittillframeend;
    }

    setsaveddvar( "aim_turnrate_yaw", var_6 );
    setsaveddvar( "aim_turnrate_pitch", var_5 );
    level._ID794 disableslowaim();
}

_ID46805( var_0 )
{
    var_1 = getentarray( "water_plane", "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( var_0 )
        {
            var_3 show();
            continue;
        }

        var_3 hide();
    }
}

_ID43059()
{
    var_0 = getent( "org_stealth_kill", "targetname" );
    var_1 = getent( "grate_blocker", "targetname" );
    var_1 hide();
    var_1 notsolid();
    _ID42237::_ID14413( "sdv_01_arriving" );
    _ID42237::_ID3350( level._ID805, _ID42402::_ID36528 );
    _ID42237::_ID14413( "player_breaks_surface" );
    _ID45969( 0, 0 );
    thread _ID45447();
}

_ID45447()
{
    var_0 = getent( "org_water_level", "targetname" );
    var_0._ID740 = var_0._ID740 + ( 0, 0, 0 );
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_1._ID740 = level._ID794._ID740 + ( 0, 0, 10 );
    var_1._ID65 = var_0._ID65;
    var_2 = spawn( "script_model", var_1._ID740 );
    var_2 setmodel( "tag_origin" );
    var_2._ID740 = var_1._ID740;
    var_2._ID65 = var_1._ID65;
    var_1 thread _ID53041();
    var_1 thread _ID50970();
    var_2 thread _ID47553( var_1 );
    var_3 = 1;
    var_4 = 9;
    var_2._ID740 = level._ID794._ID740 + ( 0, 0, var_4 );
    var_1._ID740 = level._ID794._ID740 + ( 0, 0, var_4 );
    var_2 _ID42407::_ID22172( level._ID794, "tag_origin", var_3, 1, 90, 90, 50, 4 );
    _ID42407::_ID10226( 0, ::_ID53243, var_2, "tag_origin" );
}

_ID53243( var_0, var_1 )
{
    level._ID794 playerlinktodelta( var_0, var_1, 0.0, 90, 90, 50, 4, 1 );
}

_ID53041()
{
    self endon( "death" );
    var_0 = 2.4;
    var_1 = 3.2;
    self moveto( self._ID740 + ( 0, 0, var_1 / 2 ), var_0, 1, 1 );
    wait(var_0);

    while ( isdefined( self ) )
    {
        self moveto( self._ID740 + ( 0, 0, var_1 * -1 ), var_0, 1, 1 );
        wait(var_0);
        self moveto( self._ID740 + ( 0, 0, var_1 ), var_0, 1, 1 );
        wait(var_0);
    }
}

_ID50970()
{
    self endon( "death" );
    var_0 = 4;
    var_1 = 6;
    self rotateroll( var_0 / 2, var_1, var_1 / 2, var_1 / 2 );
    wait(var_1);

    while ( isdefined( self ) )
    {
        self rotateroll( var_0 * -1, var_1, var_1 / 2, var_1 / 2 );
        wait(var_1);
        self rotateroll( var_0, var_1, var_1 / 2, var_1 / 2 );
        wait(var_1);
    }
}

_ID47553( var_0 )
{
    var_1 = 1;
    var_2 = 0.05;
    var_3 = getent( "org_grate_top_left", "targetname" );
    var_4 = getent( "org_grate_bot_right", "targetname" );
    var_5 = var_3._ID740[0];
    var_6 = var_4._ID740[1];
    var_7 = var_4._ID740[0];
    var_8 = var_3._ID740[1];
    var_9 = undefined;
    var_10 = undefined;

    for ( var_11 = undefined; !_ID42237::_ID14385( "player_ready_to_be_helped_from_water" ); self._ID740 = var_15 )
    {
        wait(var_2);
        var_12 = level._ID794 getnormalizedmovement();
        var_13 = anglestoforward( level._ID794._ID65 );
        var_14 = anglestoright( level._ID794._ID65 );
        var_13 *= ( var_12[0] * var_1 );
        var_14 *= ( var_12[1] * var_1 );
        var_15 = self._ID740 + var_13 + var_14;
        var_15 = ( var_15[0], var_15[1], var_0._ID740[2] );
        var_9 = _ID42237::_ID53482( var_15[0], var_7, var_5 );
        var_10 = _ID42237::_ID53482( var_15[1], var_8, var_6 );
        var_11 = var_0._ID740[2];
        var_15 = ( var_9, var_10, var_11 );
        self._ID65 = ( level._ID794._ID65[0], level._ID794._ID65[1], var_0._ID65[2] );
    }

    if ( isdefined( var_0 ) )
        var_0 delete();

    if ( isdefined( self ) )
        self delete();
}

_ID45577()
{
    self waittillmatch( "single anim",  "end"  );
    _ID42237::_ID14402( "player_is_done_swimming" );
}

_ID44335( var_0, var_1 )
{
    var_0 _ID42259::_ID3018( self, "sdv_ride_in", "origin_animate_jnt" );
    self linkto( var_0, "origin_animate_jnt" );
    _ID42237::_ID14413( "intro_anim_sequence_starting" );
    var_0 thread _ID42259::_ID3111( self, "sdv_ride_in", "origin_animate_jnt" );
    self waittillmatch( "single anim",  "end"  );
    self notify( "finished_swim_animation" );
}

_ID52921()
{
    thread change_light_set_surface();
    thread animated_crane_hooks();
    thread _ID51699();
    thread _ID44279();
    thread _ID45717();
    thread _ID45241();
    thread _ID54365();
    thread _ID44478();
    level._ID794 thread _ID44906();
    _ID42237::_ID3350( level._ID43029, ::_ID52509 );
    _ID42237::_ID3350( level._ID51575, ::_ID52509 );
    thread _ID47951();
    thread _ID50283();
    thread _ID46073();
    _ID42237::_ID14413( "obj_stealthkill_complete" );
    thread _ID54379();
    thread _ID48078( "animated_chains" );
}

_ID44985( var_0 )
{
    if ( !isdefined( level._ID794 ) )
        level waittill( "level.players initialized" );

    setomnvar( "ui_divinggoggles", 1 );
    level waittill( "open_dds_door" );
    setomnvar( "ui_divinggoggles", 2 );
    _ID42237::_ID14413( "player_removing_mask" );
    setomnvar( "ui_divinggoggles", 3 );
}

_ID54365()
{
    level endon( "obj_stealthkill_complete" );
    var_0 = getent( "org_water_level", "targetname" );
    var_1 = var_0._ID740[2];
    _ID42237::_ID14413( "player_starting_stealth_kill" );

    for (;;)
    {
        wait 0.05;
        var_2 = level._ID794 geteye();

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
    var_0 = getent( "org_stealth_kill", "targetname" );
    var_1 = [];
    var_1[0] = _ID43272( "allies", "water_helper_01" );
    var_1[1] = _ID43272( "allies", "water_helper_02" );
    var_1[0]._ID3189 = "water_helper_01";
    var_1[1]._ID3189 = "water_helper_02";
    var_1[0] _ID42226::_ID32651( "h2_head_seal_udt_f_lifesaver" );
    var_1[1] _ID42226::_ID32651( "h2_head_seal_udt_i_lifesaver" );
    var_0 _ID42259::_ID3016( var_1, "surface_helpout" );
    _ID42237::_ID14413( "player_ready_to_be_helped_from_water" );
    var_0 _ID42259::_ID3099( var_1, "surface_helpout" );
    _ID42237::_ID14413( "lower_room_breached" );
    _ID42237::_ID3350( var_1, ::_ID47688 );
}

_ID50283()
{
    _ID42237::_ID14413( "player_looking_at_floating_body" );
    _ID42237::_ID3294( level._ID51388, ::show );
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
    level._ID49527 thread _ID48759();
    level._ID54409 thread _ID48759();
}

_ID48759()
{
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    _ID46805( 1 );
    self waittillmatch( "single anim",  "grab"  );
    self playrumbleonentity();
    wait 0.05;

    if ( self._ID3189 == "hostile_stealthkill_player" )
        thread _ID42407::_ID27079( "grate_enemy_grabbed_grunt_01" );
    else
        thread _ID42407::_ID27079( "grate_enemy_grabbed_grunt_02" );

    self waittillmatch( "single anim",  "end"  );
    self delete();
}

_ID51699()
{
    _ID42237::_ID14413( "player_is_done_swimming" );
    _ID42237::_ID14413( "enemy_lull_in_conversation" );
    _ID47846();
    _ID42237::_ID14402( "obj_stealthkill_given" );
}

_ID44906()
{
    var_0 = getent( "org_water_exit", "targetname" );
    var_0._ID740 = var_0._ID740 + ( 0, 0, 10 );
    var_1 = getent( "org_stealth_kill", "targetname" );
    _ID42237::_ID14413( "player_is_done_swimming" );
    setsaveddvar( "compass", "1" );
    level._ID794 _ID46010( level._ID49194 );
    var_2 = _ID42407::_ID35028( "player_rig" );
    var_2 thread _ID50421();
    var_2 hide();
    var_1 _ID42259::_ID3018( var_2, "player_stealth_kill" );
    thread _ID47153();
    thread _ID47799();
    _ID49772();
    setsaveddvar( "compass", "0" );
    level._ID49527._ID1257 = 0;
    level._ID794 playerlinktoblend( var_2, "tag_player", 1, 0, 0 );
    wait 0.5;
    _ID42237::_ID14402( "player_starting_stealth_kill" );
    var_1 thread _ID42259::_ID3111( var_2, "player_stealth_kill" );
    var_2 show();
    thread water_planes_changes();
    thread drop_weapon_ai();
    var_2 waittillmatch( "single anim",  "throat"  );
    _ID42237::_ID14402( "player_slitting_throat" );
    var_2 waittillmatch( "single anim",  "teleport"  );
    _ID42237::_ID14402( "player_looking_at_floating_body" );
    _ID42475::_ID34575( "aud_start_stealth_kill_amb_transition" );
    var_2 waittillmatch( "single anim",  "help"  );
    _ID42237::_ID14402( "player_ready_to_be_helped_from_water" );
    _ID42407::_ID14403( "player_pulled_halfway_out_of_water", 2 );
    _ID42407::_ID14403( "player_removing_mask", 3.15 );
    _ID46805( 0 );
    var_2 waittillmatch( "single anim",  "end"  );
    level._ID794 unlink();
    thread _ID42407::_ID4422( "rig_start" );
    var_2 delete();
    _ID42237::_ID14402( "player_done_being_helped_from_water" );
    thread _ID42402::_ID39444( 0 );
    _ID42237::_ID3350( level._ID49941, _ID42237::_ID26402 );
    var_3 = getent( "mantle_platform", "targetname" );
    var_3 show();
    var_3 solid();
    thread _ID52218();
    _ID42237::_ID14402( "obj_stealthkill_complete" );
}

_ID47799()
{
    level endon( "player_starting_stealth_kill" );
    var_0 = undefined;
    var_1 = getent( "trig_player_near_grate_guard", "script_noteworthy" );
    var_2 = getent( var_1._ID1191, "targetname" );

    for (;;)
    {
        wait 0.05;

        if ( _ID42237::_ID14385( "player_near_grate_guard" ) )
        {
            var_0 = _ID42237::_ID41802( level._ID794 geteye(), level._ID794 getplayerangles(), var_2._ID740, level._ID8760["25"] );

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
    thread _ID52736();

    while ( !_ID42237::_ID14385( "player_starting_stealth_kill" ) )
    {
        _ID42237::_ID14413( "player_looking_at_grate_guard" );
        thread _ID42407::_ID18611( var_0, undefined, 100, undefined, "medium_background" );
        objective_current( 1, ( 0, 0, 0 ) );
        _ID42237::_ID14402( "player_in_position_for_stealth_kill" );

        while ( _ID42237::_ID14385( "player_looking_at_grate_guard" ) )
            wait 0.05;

        _ID42237::_ID14388( "player_in_position_for_stealth_kill" );
        thread _ID42407::_ID18638();
        objective_current( 1, var_1._ID740 );
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

        if ( _ID42237::_ID14385( "player_looking_at_grate_guard" ) && level._ID794 meleebuttonpressed() )
            break;
    }
}

_ID52218()
{
    level notify( "player_in_water" );
    level endon( "player_out_of_water" );
    thread _ID54636();
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID794 _meth_830f( 0 );
    level._ID794 allowjump( 0 );
    level._ID794 _ID46010( level._ID49194 );
    level._ID794 disableweapons();
    var_0 = getent( "trig_out_of_water", "targetname" );
    var_0 waittill( "trigger" );
    level._ID794 allowcrouch( 1 );
    level._ID794 allowprone( 1 );
    level._ID794 _meth_830f( 1 );
    level._ID794 allowjump( 1 );
    level._ID794 _ID46010( level._ID44826 );
    level._ID794 enableweapons();
    _ID42237::_ID14388( "player_turn_rate_slowed" );
    var_1 = getent( "trig_in_water", "targetname" );

    while ( level._ID794 istouching( var_1 ) )
        wait 0.05;

    thread _ID47382();
}

_ID47382()
{
    level notify( "player_out_of_water" );
    level endon( "player_in_water" );
    level endon( "lower_decks_closed_off" );
    thread _ID48391();
    var_0 = getent( "trig_in_water", "targetname" );
    var_0 waittill( "trigger" );
    level._ID794 thread _ID42237::_ID27077( "splash_player_water_enter" );
    thread _ID52218();
}

_ID50421()
{
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    wait 2.8;
}

_ID52509()
{
    var_0 = getent( "org_stealth_kill", "targetname" );
    self waittill( "finished_swim_animation" );
    self unlink();

    if ( self._ID3189 == "sdv02_pilot" )
        level._ID47769 thread _ID42259::_ID3044( self, "surface_idle", "stop_idle" );
    else
        var_0 thread _ID42259::_ID3044( self, "surface_idle", "stop_idle" );

    if ( self._ID3189 == "sdv02_pilot" )
        thread _ID49343();
    else
    {
        _ID42237::_ID14413( "player_looking_at_floating_body" );
        self delete();
    }
}

_ID44478()
{
    _ID42237::_ID14413( "player_ready_to_be_helped_from_water" );
    var_0 = getent( "node_gear_takeoff", "targetname" );
    var_0 _ID42259::_ID3023( level._ID49792, "oilrig_seal_surface_rebreather_off_guy2" );
    var_0 _ID42259::_ID3023( level._ID48061, "oilrig_seal_surface_rebreather_off_guy1" );
    var_1 = undefined;

    foreach ( var_3 in level._ID37355 )
    {
        if ( isdefined( var_3._ID922 ) && var_3._ID922 == "mask_remove_guy" )
        {
            var_1 = var_3;
            break;
        }
    }

    var_1 _ID42259::_ID3023( var_1, "oilrig_seal_surface_mask_off" );
    var_5 = spawn( "script_origin", var_1 gettagorigin( "TAG_ORIGIN" ) );
    var_5._ID65 = var_1 gettagangles( "TAG_ORIGIN" );
    thread maps\oilrig_anim::_ID44366( "mask_off_oilrig_seal_surface_mask_off", "oilrig_seal_surface_mask_off_prop", var_5, "player_pulled_halfway_out_of_water" );
    var_1 setgoalpos( var_1._ID740 );
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
    var_1 thread _ID47688();
    var_5 delete();
}

_ID45114( var_0 )
{
    level endon( "player_approaching_gear_friendlies" );
    level endon( "player_looking_at_gear_friendlies" );
    var_1 = undefined;

    for (;;)
    {
        wait 0.05;
        var_1 = _ID42237::_ID41802( level._ID794 geteye(), level._ID794 getplayerangles(), var_0._ID740, level._ID8760["25"] );

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

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    self delete();
    var_1 = undefined;

    foreach ( var_3 in level._ID37355 )
    {
        if ( isdefined( var_3._ID922 ) && var_3._ID922 == "fin_remove_guy" )
        {
            var_1 = var_3;
            break;
        }
    }

    level._ID47769 _ID42259::_ID3023( var_1, "oilrig_seal_surface_fins_off" );
    thread maps\oilrig_anim::_ID44366( "fins_off_oilrig_seal_surface_fins_off", "oilrig_seal_surface_fins_off_prop", level._ID47769, "player_ready_to_be_helped_from_water" );
    var_1 setgoalpos( var_1._ID740 );
    _ID42237::_ID14413( "player_ready_to_be_helped_from_water" );
    var_1 thread _ID42407::_ID27079( "oilrig_seal_surface_fins_off" );
    level._ID47769 _ID42259::_ID3020( var_1, "oilrig_seal_surface_fins_off" );
    var_1 _ID42407::_ID12445();
    _ID42237::_ID14413( "lower_room_breached" );
    var_1 thread _ID47688();
}

_ID54379()
{
    level._ID34352 = "oilrig";
    maps\jake_tools::_ID38942( "colornodes_rig", "script_noteworthy", 1 );
    thread _ID45619( 1 );
    thread _ID46465();
    thread _ID49125();
    thread _ID52631();
    thread _ID52739();
    thread _ID45115();
    thread _ID54613();
    thread _ID52052();
    thread _ID52942();
    thread _ID49757();
    thread _ID49149( "lower_room_breached", "lower_room_cleared" );
    thread friendlies_pushplayer_until( [ "railing_patroller_dead", "player_at_lower_breach", "player_looking_at_railing" ] );
    var_0 = _ID43272( "allies", "water_helper_01" );
    var_0 _ID42237::_ID10192( 10, ::pushplayer, 0 );
    thread breach_a_hide_objects();
    _ID42237::_ID14413( "lower_room_cleared" );
    thread friendlies_pushplayer_until( "player_above_first_breach_room" );
    thread garage_door_think();
    thread animated_palette();
    disableforcedsunshadows();
    thread _ID53620();
}

friendlies_pushplayer_until( var_0 )
{
    var_1 = _ID42407::_ID3328( level._ID51388 );
    _ID42237::_ID3294( var_1, ::pushplayer, 1 );

    if ( isarray( var_0 ) )
        _ID42237::flag_wait_any_in_array( var_0 );
    else
        _ID42237::_ID14413( var_0 );

    var_1 = _ID42407::_ID3328( var_1 );
    _ID42237::_ID3294( var_1, ::pushplayer, 0 );
}

_ID49757()
{
    _ID42237::_ID14413( "player_at_lower_breach" );
    _ID42237::_ID14413( "follow_team_in_stairs_after_deck1_breach" );
    _ID50236();
    _ID42237::_ID14413( "lower_room_breached" );
    _ID51102();
}

_ID49125()
{
    _ID42237::_ID14413( "lower_room_breached" );
    var_0 = getent( "volume_first_room", "script_noteworthy" );
    wait 2;
    var_1 = getnode( "node_deck1_door", "targetname" );
    level._ID44035 _ID42407::_ID10871();
    _ID42237::_ID14413( "lower_room_cleared" );
    wait 0.5;
    level._ID44035 setgoalnode( var_1 );
    var_2 = getent( "door_deck1", "targetname" );
    var_2 delete();
    var_3 = getent( "door_deck1_animated", "targetname" );
    var_3 hide();
    var_4 = getent( "breachB_hide_vent", "targetname" );
    var_4 notsolid();
    var_4 hide();
    _ID42237::_ID14413( "player_approaching_deck1" );
    level._ID44035 _ID42407::_ID12445();
}

_ID46345( var_0 )
{
    for (;;)
    {
        wait 0.05;

        while ( _ID42237::_ID41802( level._ID794 geteye(), level._ID794 getplayerangles(), self._ID740, level._ID8760["45"] ) )
            wait 0.1;

        if ( distance( self._ID740, level._ID794._ID740 ) > 512 )
            break;
    }

    self forceteleport( var_0._ID740, var_0._ID65 );
    self setgoalpos( self._ID740 );
    self setgoalnode( var_0 );
}

_ID52631()
{
    _ID42237::_ID14413( "player_at_lower_breach" );
    var_0 = getent( "origin_breach1_dialogue", "targetname" );
    var_0 thread _ID42237::_ID27000( "oilrig_muffled_1st_breach_voices" );
    var_1 = getentarray( "hostiles_ambient_breach1", "targetname" );
    var_2 = _ID42407::_ID3339( var_1 );
    _ID42237::_ID3350( var_2, ::_ID44003, var_0 );
    level waittill( "A door in breach group 100 has been activated." );
    thread _ID45393();
    thread maps\oilrig_aud::_ID54685();
    _ID42237::_ID3294( var_2, ::delete );
    level waittill( "breach_explosion" );
    _ID42237::_ID14402( "lower_room_breached" );
    var_0 notify( "stop soundoilrig_muffled_1st_breach_voices" );
    thread _ID54544( var_0, 100 );
}

_ID45016()
{
    level endon( "player_at_lower_breach" );
    wait(randomfloatrange( 4, 6 ));

    while ( _ID42237::_ID14385( "player_dealing_with_rail" ) )
        wait 0.5;

    _ID42407::_ID28864( "oilrig_nsl_keepittight" );
    wait(randomfloatrange( 6, 8 ));

    while ( _ID42237::_ID14385( "player_dealing_with_rail" ) )
        wait 0.5;

    _ID42407::_ID28864( "oilrig_nsl_readyweapons" );
    wait(randomfloatrange( 6, 8 ));

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
    thread _ID48073();
    thread _ID45016();
    _ID42237::_ID14413( "railing_patroller_dead" );
    wait 2;
    _ID42407::_ID28864( "oilrig_roomclear_ghost_03" );
    _ID42237::_ID14413( "player_at_lower_breach" );
    _ID42407::_ID28864( "oilrig_sbc_civilhostages" );
    _ID42407::_ID28864( "oilrig_nsl_tm1tobreach" );
    thread _ID48912( 100 );
    _ID42237::_ID14413( "lower_room_cleared" );
    _ID42407::_ID28864( "oilrig_roomclear_ghost_05" );
    _ID42407::_ID28864( "oilrig_nsl_wereclear" );
    var_0 = randomint( 2 );
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
    var_0 = getent( "volume_first_room", "script_noteworthy" );

    while ( !_ID42237::_ID14385( "upper_room_breached" ) )
    {
        if ( level._ID794 istouching( var_0 ) )
            _ID48374();

        wait(randomfloatrange( 8, 14 ));
    }
}

_ID48374()
{
    var_0 = randomint( 4 );
    _ID42407::_ID28864( "room1_manhandler_nag_0" + var_0 );
}

_ID48073()
{
    level endon( "mission failed" );
    level endon( "railing_patroller_dead" );
    _ID42237::_ID3350( level._ID805, ::_ID48652 );
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
    var_0 = getent( "railing_org", "targetname" );

    for (;;)
    {
        wait 0.25;

        if ( self adsbuttonpressed() )
        {
            var_1 = self geteye();

            if ( _ID42237::_ID41802( var_1, self getplayerangles(), var_0._ID740, level._ID8760["25"] ) )
                _ID42237::_ID14402( "player_looking_at_railing" );
        }
    }
}

_ID54704( var_0 )
{
    var_1 = var_0[0];
    _ID43019( var_1 );
    var_2 = spawnstruct();
    var_2._ID740 = var_1._ID740;
    var_2._ID65 = var_1._ID65;
    return var_2;
}

_ID43019( var_0 )
{
    var_0._ID43194 = 1;

    if ( isdefined( var_0._ID22746 ) )
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
    var_0 = getentarray( "hostile_railing", "targetname" );
    var_1 = var_0[randomintrange( 0, 2 )];
    var_2 = var_1 _ID42407::_ID35014();
    var_2._ID511 = 1;
    var_2._ID3189 = "generic";
    var_2 _ID42358::_ID3551();
    thread delete_railing_guy( var_2 );
    var_2._ID43194 = 0;
    var_2 thread _ID43846( "noncombat" );
    var_2 thread dof_takedown_smoking_guy();
    level._ID794 thread _ID42407::_ID51500( [ var_2 ], "smoker_takedown", 130, 45, 60, 0, 0.25, ::_ID54704, undefined, "weapon_parabolic_knife", undefined, undefined, undefined, undefined, 4 );
    var_2 thread _ID50435();
    level._ID49820 = var_2;
    var_3 = getnode( var_2._ID1191, "targetname" );
    var_3 thread _ID42259::_ID3025( var_2, "oilrig_balcony_smoke_idle", "stop_idle" );
    var_2 thread _ID42407::_ID22746();
    thread _ID44758( var_2 );
    var_2 thread _ID44325( var_3 );
    var_2 thread _ID51725();
    var_2 waittill( "damage" );

    if ( var_2._ID43194 == 0 )
    {
        var_2 setcontents( 0 );
        var_2._ID54440 = 1;
        level._ID794._ID52561 = 0;
        _ID42237::_ID14402( "railing_patroller_dead" );
        thread _ID52031();
        var_3 notify( "stop_idle" );
        var_3 thread _ID42237::_ID27077( "railing_death_sound" );

        if ( isdefined( var_2._ID22746 ) )
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
        var_2 = distancesquared( self._ID740, level._ID794._ID740 );

        if ( level._ID794 issprinting() && var_2 < var_0 || var_2 < var_1 )
            break;

        waittillframeend;
    }

    level notify( "stealth_broken" );
    var_3 = getnode( self._ID1191, "targetname" );
    var_3 notify( "stop_idle" );
    self notify( "stop_idle" );
    _ID42407::_ID3136();
    _ID42407::_ID4918( "axis" );
    _ID54322();
}

_ID52031()
{
    var_0 = getentarray( "first_breach_safe_volumes", "targetname" );

    foreach ( var_2 in var_0 )
        var_2._ID740 = var_2._ID740 + ( 0, 0, 20000 );
}

_ID44325( var_0 )
{
    if ( !isdefined( self ) )
        return;

    level endon( "railing_patroller_dead" );
    level waittill( "stealth_broken" );
    var_0 notify( "stop_idle" );
    self notify( "stop_idle" );
    thread _ID42407::_ID27081( "RU_1_resp_ack_co_gnrc_affirm_custom", "j_head" );
    _ID42407::_ID3136();
    _ID42407::_ID4918( "axis" );
    _ID54322();
}

_ID50435()
{
    var_0 = spawn( "script_origin", ( 0, 0, 0 ) );
    self waittill( "damage" );

    if ( isdefined( self ) && !_func_2a5( self ) )
        self.ignore_safe_volume = 1;

    self waittillmatch( "single anim",  "splash"  );
    var_0._ID740 = self._ID740;
    playfx( _ID42237::_ID16299( "body_splash_railing" ), var_0._ID740 );
    var_0 _ID42407::_ID27079( "scn_body_splash" );
    wait 10;
    var_0 delete();
}

_ID43034()
{
    self._ID47852 = 1;
    wait 0.5;
    self waittill( "goal" );
    level waittill( "A door in breach group 100 has been activated." );
    self pushplayer( 0 );
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
    var_0 = getnode( "node_railing_friendly", "targetname" );
    var_0 notify( "stop_idle" );
    level._ID44035 notify( "stop_idle" );
    level._ID44035 _ID42407::_ID12445();
    level._ID44035._ID452 = 8;
    level._ID44035 _ID42367::_ID1944();
    thread _ID42407::_ID4422( "lower_breach" );
    level._ID44035 thread _ID43034();
    level waittill( "A door in breach group 100 has been activated." );
    var_1 = getent( "volume_first_room", "script_noteworthy" );
    level._ID52474 = getnodearray( "node_hostage_bottom", "targetname" );
    level waittill( "slowmo_breach_friendlies_assigned" );
    var_2 = [];

    if ( isdefined( var_1.breaching_friendly1 ) )
    {
        var_2[var_2.size] = var_1.breaching_friendly1;
        var_1.breaching_friendly1.friendly_breach_finished_flag = "friendly1_lower_breach_done";
    }

    if ( isdefined( var_1.breaching_friendly2 ) )
    {
        var_2[var_2.size] = var_1.breaching_friendly2;
        var_1.breaching_friendly2.friendly_breach_finished_flag = "friendly2_lower_breach_done";
    }

    _ID42237::_ID14413( "lower_room_cleared" );
    _ID42237::_ID3350( level._ID48906, _ID42407::_ID29840 );
    wait 1;

    foreach ( var_4 in var_2 )
    {
        if ( isalive( var_4 ) && isdefined( var_4.friendly_breach_finished_flag ) )
        {
            _ID42237::_ID14413( var_4.friendly_breach_finished_flag );
            var_4.friendly_breach_finished_flag = undefined;
        }
    }

    var_6 = getent( "deck1_after_breach_stairs_transition", "script_noteworthy" );
    var_6 thread sync_allies_in_deck1_stairs_after_breach();
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
            self delete();
        }
    }
}

_ID44758( var_0 )
{
    level endon( "railing_patroller_dead" );
    var_0 endon( "stealth_takedown_started" );
    var_1 = getnode( "node_railing_friendly", "targetname" );
    level._ID44035 _ID42407::_ID10871();
    level._ID44035 pushplayer( 1 );
    level._ID44035 setgoalnode( var_1 );
    level._ID44035 _ID42367::_ID29570();
    var_1 _ID42259::_ID3027( level._ID44035, "railing_execute_reach" );
    var_1 _ID42259::_ID3020( level._ID44035, "railing_execute_reach" );
    var_1 thread _ID42259::_ID3025( level._ID44035, "railing_execute_idle", "stop_idle" );
    _ID42237::_ID14421( "player_alerted_railing", "player_broke_stealth" );
    wait 5;
    level._ID44035 thread _ID45725( var_0, var_1 );
}

_ID45725( var_0, var_1 )
{
    self notify( "stop_idle" );
    var_1 notify( "stop_idle" );
    var_1 thread _ID42259::_ID3020( self, "railing_execute_shoot" );
    var_2 = var_0 gettagorigin( "tag_eye" );
    magicbullet( self._ID1302, self gettagorigin( "tag_flash" ), var_2 );
    thread _ID42237::_ID27077( "bullet_impact_headshot", var_2 );
    bullettracer( self gettagorigin( "tag_flash" ), var_2, 1 );
    self waittillmatch( "single anim",  "end"  );
    var_1 thread _ID42259::_ID3025( level._ID44035, "railing_execute_idle", "stop_idle" );
}

_ID53620()
{
    _ID42237::_ID3350( getentarray( "triggers_deck1_hall", "targetname" ), _ID42237::_ID38865 );
    thread _ID49149( "upper_room_breached", "upper_room_cleared" );
    thread _ID51430();
    thread _ID43207();
    thread _ID53838();
    thread _ID45488();
    thread _ID50076();
    thread _ID52037();
    thread _ID50046();
    thread _ID47895();
    thread _ID53956();
    thread _ID52417();
    thread _ID43926();
    thread _ID54112();
    thread _ID47273();
    thread _ID46459();
    thread _ID49576();
    thread _ID53868();
    thread _ID45787();
    thread friendly_c4_react();
    thread breach_b_hide_objects();
}

friendly_c4_react()
{
    var_0 = getent( "c4_origin", "targetname" );
    var_1 = level._ID35507;
    _ID42237::_ID14413( "ambush_c4_triggered" );

    foreach ( var_3 in var_1 )
    {
        if ( distancesquared( var_0._ID740, var_3._ID740 ) < 250000 )
        {
            var_3 _ID42407::_ID32628( 0 );
            var_4 = randomfloatrange( 4.5, 6.5 );
            var_3 thread _ID42407::_ID14510( var_4 );
            var_3 _ID42407::_ID32628( 1 );
        }
    }
}

_ID51430()
{
    _ID42237::_ID14413( "lower_room_cleared" );
    _ID50236();
    thread _ID48994();
    _ID42237::_ID14413( "upper_room_breached" );
    _ID51102();
    thread _ID54322();
}

_ID45488()
{
    _ID42237::_ID14413( "player_ignoring_heli_flyby" );
    var_0 = getent( "origin_ambush_discovery_dialogue", "targetname" );
    var_0 thread _ID42237::_ID27000( "oilrig_muffled_2nd_breach_voices" );
    var_1 = getentarray( "hostiles_ambient_deckbreach", "targetname" );
    var_2 = _ID42407::_ID3339( var_1 );
    _ID42237::_ID3350( var_2, ::_ID44003, var_0 );
    level waittill( "A door in breach group 200 has been activated." );
    thread _ID43478();
    thread _ID45393();
    thread maps\oilrig_aud::_ID52265();
    _ID42237::_ID3294( var_2, ::delete );
    level waittill( "breach_explosion" );
    _ID42237::_ID14402( "upper_room_breached" );
    var_0 notify( "stop soundoilrig_muffled_2nd_breach_voices" );
    thread _ID54544( var_0, 200 );
}

_ID43478()
{
    var_0 = getent( "volume_first_room", "script_noteworthy" );
    var_1 = var_0 _ID42407::_ID15547();

    if ( var_1.size )
    {
        foreach ( var_3 in var_1 )
        {
            if ( var_3 != level._ID44035 )
            {
                if ( isdefined( var_3._ID22746 ) )
                    var_3 _ID42407::_ID36519();

                var_3 delete();
            }
        }
    }
}

_ID50076()
{
    _ID42237::_ID14413( "player_approaching_deck1" );
    var_0 = _ID42411::_ID35195( "heli_patrol_02" );
    var_0 thread _ID50493();
    var_0 thread maps\oilrig_aud::vehicle_turn_engine_off();
    _ID42237::_ID14413( "player_at_door_to_deck1" );
    thread _ID42411::_ID17021( var_0 );
    var_0 thread maps\oilrig_aud::heli_patrol_02_flyby();
    _ID42234::_ID13611( 200 );
    thread _ID45619( 1 );
    var_0 waittill( "reached_dynamic_path_end" );
    var_0 delete();
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
    _ID53903();
    level endon( "player_ignoring_heli_flyby" );
    wait 4.5;
    _ID42237::_ID14402( "heli_flyby_finished" );
    level endon( "player_at_last_breach_building" );

    if ( !_ID42237::_ID14385( "player_at_last_breach_building" ) )
        _ID44751();
}

_ID52037()
{
    level waittill( "A door in breach group 200 has been activated." );
    level._ID794 _ID46010( 1 );
}

_ID50046()
{
    _ID42237::_ID14421( "heli_flyby_finished", "player_ignoring_heli_flyby" );
    level._ID34352 = "oilrig";
    maps\jake_tools::_ID38942( "colornodes_upper_room_setup", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_upper_room_setup" );
    var_0 = getentarray( "breach_upper_desk", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID44059 );
    var_1 = getentarray( "ambush_damage_triggers", "targetname" );
    _ID42237::_ID3350( var_1, ::_ID49252 );
}

_ID49252()
{
    _ID42237::_ID14413( "ambush_c4_triggered" );
    wait 2;
    thread _ID43230();
}

_ID44059()
{
    level endon( "upper_room_cleared" );

    while ( !_ID42237::_ID14385( "upper_room_cleared" ) )
    {
        self waittill( "trigger",  var_0  );

        if ( isdefined( var_0._ID1194 ) && var_0._ID1194 == "axis" )
        {
            radiusdamage( self._ID740, self._ID851, 500, 500 );
            break;
        }
    }
}

_ID52417()
{
    level endon( "mission failed" );
    var_0 = getent( "volume_ambush_room", "script_noteworthy" );
    var_0 endon( "breached" );
    _ID42237::_ID14413( "player_at_last_breach_building" );
    thread _ID42407::_ID4422( "deck1_breach" );
    _ID42407::_ID28864( "oilrig_sbc_hostatposition" );
    level._ID44035 maps\jake_tools::_ID10760( "oilrig_nsl_copythat" );
    wait 4;
    thread _ID48912( 200 );
}

_ID47273()
{
    level endon( "mission failed" );
    level endon( "missionfailed" );
    thread _ID47488();
    var_0 = level._ID794;
    var_1 = getent( "volume_ambush_room", "script_noteworthy" );
    level waittill( "A door in breach group 200 has been activated." );
    _ID42237::_ID3350( level._ID45175, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID49941, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID54394, _ID42237::_ID26402 );
    _ID42237::_ID14413( "upper_room_breached" );
    var_2 = [];
    var_2[0] = getent( "origin_c4_friendly", "targetname" );
    var_2[1] = getent( "origin_c4_friendly2", "targetname" );
    var_3 = [];
    var_3[0] = getnode( "ambush_guard_01", "targetname" );
    var_3[1] = getnode( "ambush_guard_02", "targetname" );
    var_4 = _ID42237::_ID16276( level._ID794._ID740, var_2 );
    var_5 = _ID42237::_ID16276( level._ID794._ID740, var_3 );
    _ID42237::_ID14402( "lower_decks_closed_off" );
    var_6 = getent( "door_deck1_animated", "targetname" );
    var_6 show();
    var_6._ID3189 = "door";
    var_6 _ID42259::_ID32556();
    var_7 = getent( "breachB_hide_vent", "targetname" );
    var_7 show();
    var_8 = getentarray( "bottom_deck_destructibles", "script_noteworthy" );
    _ID42237::_ID3350( var_8, ::_ID53369 );
    var_9 = getnodearray( "node_team2_scaffolding", "targetname" );
    level._ID37355 = _ID42407::_ID3339( getentarray( "team2_escort", "targetname" ), 1 );
    level._ID37355[0] thread _ID42407::_ID37393( var_9[0] );
    level._ID37355[1] thread _ID42407::_ID37393( var_9[1] );
    _ID42237::_ID14413( "upper_room_cleared" );
    _ID42237::_ID3350( level._ID54394, _ID42407::_ID29840 );
    thread _ID42407::_ID4422( "deck1_breach_finished" );
    var_10 = [];
    var_10[0] = level._ID49792;
    var_10[1] = level._ID48061;
    var_11 = _ID42237::_ID16276( level._ID794._ID740, var_10 );
    var_11 thread _ID46545( var_4, var_5 );
    _ID42237::_ID14402( "obj_hostages_secure_complete" );
    _ID42407::_ID28864( "oilrig_roomclear_ghost_05" );
    _ID42407::_ID28864( "oilrig_nsl_clear" );
    level._ID44035 maps\jake_tools::_ID10760( "oilrig_nsl_strongholdsec" );
    level._ID44035 _ID42407::_ID8925( "off" );
    level._ID44035 clearenemy();
    level._ID49792 _ID42407::_ID8925( "off" );
    level._ID49792 clearenemy();
    level._ID48061 _ID42407::_ID8925( "off" );
    level._ID48061 clearenemy();
    level._ID44035._ID38 = "noncombat";
    level._ID49792._ID38 = "noncombat";
    level._ID48061._ID38 = "noncombat";
    var_12 = getent( "pa_speaker", "targetname" );
    var_12 _ID42407::_ID27079( "oilrig_enc_maerhoffer" );
    _ID42407::_ID28864( "oilrig_ns1_havecompany" );
    level._ID44035 thread maps\jake_tools::_ID10760( "oilrig_nsl_goingloud" );
    var_12 _ID42407::_ID10226( 5, _ID42407::_ID27079, "oilrig_enc_team5" );
    wait 2;
    thread _ID43201( var_1 );
    _ID42237::_ID14402( "obj_c4_ambush_plant_given" );
    thread _ID42407::_ID4422( "obj_c4_ambush_plant_given" );
    wait 2;
    level._ID44035 thread _ID48542();
    _ID42237::_ID14413( "player_has_started_planting_c4" );
    level._ID44035._ID38 = "alert";
    level._ID49792._ID38 = "alert";
    level._ID48061._ID38 = "alert";
    level._ID49792 _ID42407::_ID8925( "on" );
    level._ID48061 _ID42407::_ID8925( "on" );
    _ID42237::_ID14425( "obj_c4_ambush_plant_complete", 6 );

    if ( !_ID42237::_ID14385( "obj_c4_ambush_plant_complete" ) )
        _ID42237::_ID14402( "obj_c4_ambush_plant_complete" );

    thread _ID47759();
    thread _ID42407::_ID4422( "c4_planted" );
    thread _ID49388();
    _ID42407::_ID28864( "oilrig_ns2_c4placed" );
    maps\jake_tools::_ID38942( "colornodes_ambush_setup", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_ambush_setup" );
    thread _ID54485();
    thread _ID42407::_ID28864( "oilrig_nsl_ambushthem" );
    _ID42237::_ID14402( "obj_ambush_given" );
    thread _ID53045();
    _ID42237::_ID14413( "ambush_enemies_spawned" );
    level._ID44035 thread _ID52482( "m4m203_reflex" );
    level._ID49792 thread _ID52482( "mp5_reflex" );
    level._ID48061 thread _ID52482( "mp5_reflex" );
    thread _ID45619();
    _ID48994();
    _ID42237::_ID14421( "ambush_enemies_alerted", "ambush_enemies_alerted_prematurely" );
    thread _ID45393();
    wait 1;
    _ID54322();
    _ID47645( "dummy_spawner_ballsout_intro" );
    thread _ID46346();
    _ID42237::_ID14413( "player_passing_ambush_gate" );
    thread _ID42407::_ID4422( "past_ambush_gate" );
}

_ID54485()
{
    var_0 = spawn( "script_origin", ( 1553.33, 208.546, -1055.5 ) );
    var_0 _ID42259::_ID3074( level._ID44035, "soap_go_up_scaffolding" );
    _ID42237::_ID14402( "soap_reached_scaffold" );
    var_0 = spawn( "script_origin", ( 1642.48, 135.2, -1055.5 ) );
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
        var_2 = level._ID794 getweaponslistprimaries();
        var_3 = level._ID794 getcurrentweapon();

        foreach ( var_5 in var_2 )
        {
            if ( var_5 == "scar_h_thermal_silencer" && var_3 != "scar_h_thermal_silencer" && var_0 == 0 )
            {
                level._ID794 takeweapon( "scar_h_thermal_silencer" );
                level._ID794 giveweapon( "scar_h_thermal" );
                var_0 = 1;

                if ( isdefined( level._ID794._ID25540 ) && level._ID794._ID25540 == "scar_h_thermal_silencer" )
                    level._ID794._ID25540 = "scar_h_thermal";
            }

            if ( var_5 == "m4m203_silencer_reflex" && var_3 != "m4m203_silencer_reflex" && var_1 == 0 )
            {
                level._ID794 takeweapon( "m4m203_silencer_reflex" );
                level._ID794 giveweapon( "m4m203_reflex" );
                var_1 = 1;

                if ( isdefined( level._ID794._ID25540 ) && level._ID794._ID25540 == "m4m203_silencer_reflex" )
                    level._ID794._ID25540 = "m4m203_reflex";
            }
        }
    }
}

_ID49906()
{
    var_0 = getent( "prison_sequence_dummies_walk", "script_noteworthy" );
    var_1 = getent( "prison_sequence_dummies_run", "script_noteworthy" );
    var_2 = var_0;
    var_3 = var_1;
    var_4 = var_3._ID740 + ( 0, 0, 36 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    var_5 = getent( "volume_ambush_room", "script_noteworthy" );
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

    while ( _ID42237::_ID41802( level._ID794 geteye(), level._ID794 getplayerangles(), var_6[0]._ID740, level._ID8760["45"] ) )
        wait 0.1;

    foreach ( var_10 in var_6 )
        var_10 hide();

    if ( isdefined( level._ID22889 ) )
    {
        if ( level._ID22889 istouching( var_5 ) )
        {
            if ( isdefined( level._ID22889._ID22746 ) )
                level._ID22889 _ID42407::_ID36519();

            level._ID22889 delete();
        }
    }

    var_2 _ID42259::_ID3016( var_7, "prisoner_manhandle_walk" );
    var_3 _ID42259::_ID3016( var_8, "prisoner_manhandle_run" );

    foreach ( var_10 in var_6 )
        var_10 show();

    var_14 = getent( "player_looking_at_prisoner_sequence", "targetname" );
    var_14 _ID42237::_ID38865();
    thread _ID49345();
    _ID42237::_ID14421( "player_looking_at_prisoner_sequence", "trig_prisoner_sequence_failsafe" );
    _ID42237::_ID3350( var_7, ::_ID26776, var_2, "prisoner_manhandle_walk" );
    _ID42237::_ID3350( var_8, ::_ID26776, var_3, "prisoner_manhandle_run" );
}

_ID26776( var_0, var_1 )
{
    if ( !isalive( self ) )
        return;

    self endon( "death" );
    var_0 _ID42259::_ID3111( self, var_1 );

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    self delete();
}

_ID49345()
{
    var_0 = getent( "trig_prisoner_sequence_failsafe", "targetname" );
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
    var_2 = getent( var_0._ID1191, "targetname" );
    var_3 = getent( var_2._ID1191, "targetname" );
    _ID42407::_ID10871();
    _ID42407::_ID8925( "on" );
    self setgoalnode( var_1 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    wait(randomfloatrange( 2, 4 ));
    var_0 _ID42259::_ID3027( self, "C4_plant_start" );
    self setgoalpos( self._ID740 );

    while ( level._ID794 istouching( var_3 ) )
        wait 0.05;

    var_0 thread _ID42259::_ID3020( self, "C4_plant" );
    thread c4_in_hand( var_2 );
    wait 2;
    self setgoalnode( var_1 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    _ID42407::_ID12445();
    _ID42237::_ID14413( "ambush_c4_triggered" );
    var_2 delete();
}

_ID49388()
{
    level endon( "ambush_c4_triggered" );
    level endon( "obj_explosives_locate_given" );
    wait 2;
    thread _ID45721();
    var_0 = getent( "ambush_area", "targetname" );
    var_1 = 0;
    var_2 = 0;

    for (;;)
    {
        wait 0.05;

        if ( level._ID794 getcurrentweapon() != "c4" && var_1 == 0 && !_ID42237::_ID14385( "player_on_ladder" ) )
        {
            wait 0.5;
            _ID42407::_ID18638();
            thread _ID42407::_ID18611( &"OILRIG_HINT_C4_SWITCH" );
            var_1 = 1;
            var_2 = 0;
        }
        else if ( level._ID794 getcurrentweapon() == "c4" && var_1 == 1 )
        {
            _ID42407::_ID18638();
            var_1 = 0;
        }

        if ( !level._ID794 istouching( var_0 ) && var_2 == 0 && var_1 == 0 )
        {
            _ID42407::_ID18638();
            var_2 = 1;
            var_1 = 0;
        }

        if ( level._ID794 istouching( var_0 ) && var_2 == 1 && var_1 == 0 )
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
    var_0 = getent( "ambush_area", "targetname" );
    var_0 endon( "trigger" );
    wait(randomintrange( 14, 18 ));
    thread _ID42407::_ID28864( "oilrig_nsl_elevatedposwait" );
}

_ID48542()
{
    level endon( "obj_ambush_complete" );
    var_0 = getnode( "node_guard_scaffolding", "targetname" );
    _ID42407::_ID10871();
    self setgoalnode( var_0 );
    self._ID38 = "alert";
    level._ID44035 _ID42407::_ID8925( "on" );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    var_1 = getnodearray( "friendlyStartHeli", "targetname" );
    var_0 = undefined;

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID922 ) && var_3._ID922 == "nodePrice" )
        {
            var_0 = var_3;
            break;
        }
    }

    var_5 = getent( "ambush_area", "targetname" );
    var_5 waittill( "trigger" );
    _ID42237::_ID14413( "soap_reached_scaffold" );
    self._ID452 = 182;
    self setgoalnode( var_0 );
    self pushplayer( 1 );
    var_6 = getent( "colornodes_heli_deck1", "script_noteworthy" );
    var_6 waittill( "trigger" );
    self pushplayer( 0 );
}

_ID43201( var_0 )
{
    level endon( "obj_c4_ambush_plant_complete" );
    level endon( "player_has_started_planting_c4" );
    level endon( "c4_placement_started" );
    wait(randomintrange( 4, 6 ));
    _ID42407::_ID28864( "oilrig_nsl_donthavetime" );
    wait(randomintrange( 4, 6 ));
    _ID42407::_ID28864( "oilrig_nsl_plantc4" );
    wait(randomintrange( 4, 6 ));
    _ID42407::_ID28864( "oilrig_nsl_donthavetime" );
    wait 4;
    _ID42237::_ID14402( "friendlies_had_to_plant_C4" );
    thread _ID51819();
}

_ID51819()
{
    _ID42237::_ID14402( "oilrig_mission_failed" );
    setdvar( "ui_deadquote", &"OILRIG_MISSIONFAIL_EXPLOSIVES_NOTPLANTED" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID43207( var_0 )
{
    _ID42237::_ID14413( "upper_room_breached" );
    var_1 = getentarray( "c4_hostiles", "targetname" );
    var_2 = getentarray( "c4_hostiles2", "targetname" );
    var_3 = _ID42237::_ID16276( level._ID794._ID740, var_1 );
    var_4 = _ID42237::_ID16276( level._ID794._ID740, var_2 );
    level._ID52916 = [];
    var_3 thread _ID48410( "execution_slamwall_hostage_death", "c4bodywall", undefined, ::return_deadbody_pos );
    var_4 thread _ID48410( "execution_hostile2_death", undefined, ::choose_body_ground_anim, ::return_deadbody_pos );
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    level._ID44035 thread force_m4_weapon();
    level._ID44035 notify( "stop personal effect" );
    _ID42237::_ID14413( "ambush_c4_triggered" );
    level._ID44035 thread animscripts\utility::_ID26591();
}

choose_body_ground_anim( var_0, var_1 )
{
    var_2 = anglestoforward( var_1._ID65 );
    var_3 = anglestoforward( level._ID794._ID65 );
    var_4 = vectordot( var_2, var_3 );

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
    var_7 = getent( var_6._ID1191, "targetname" );
    var_5 _ID42259::_ID3023( var_6, var_0 );
    var_8 = _ID42412::_ID8613( var_6 );
    var_8 setanim( var_4, 1, 0.2 );
    var_8 notsolid();
    var_8._ID46157 = var_1;
    var_8._ID3189 = "generic";
    level._ID52916[level._ID52916.size] = var_8;
    var_9 = var_1;

    if ( isdefined( var_2 ) )
        var_9 = level._ID794 [[ var_2 ]]( var_7, var_8 );

    var_7 thread dof_hiding_c4( var_9 );
    var_8 thread playfirstframeplantanim( getanimlength( var_4 ), var_9, var_4 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    thread _ID52229( var_7, var_1, var_8, var_2, var_3 );
    _ID42237::_ID14413( "ambush_c4_triggered" );
    var_7 notify( "clear_c4" );
    var_8 delete();
}

playfirstframeplantanim( var_0, var_1, var_2 )
{
    wait(var_0);
    self clearanim( var_2, 0 );
    _ID42259::_ID3018( self, var_1 );
}

_ID52229( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_0 _ID43691::_ID53929( undefined, ( 0, 0, 0 ), ( 0, 0, 0 ), var_0._ID740, undefined, undefined, var_1, undefined, undefined, undefined, 1, undefined, var_2, var_3, var_4 );
    var_0 thread disable_hud_c4_plant();
    var_0 thread _ID50020();
    var_0 thread _ID50453( var_5 );
    var_0 waittill( "c4_detonation" );

    if ( !_ID42237::_ID14385( "ambush_c4_triggered" ) )
        _ID42237::_ID14402( "ambush_c4_triggered" );
}

_ID50453( var_0 )
{
    self endon( "c4_planted" );
    level endon( "ambush_c4_triggered" );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    var_0 thread _ID45475();
}

_ID45475()
{
    self endon( "death" );
    self hide();
    wait 0.15;
    stopfxontag( _ID42237::_ID16299( "c4_light_blink" ), self, "tag_fx" );
}

_ID46459()
{
    var_0 = getent( "volume_ambush_room_exterior_front", "script_noteworthy" );
    var_1 = getent( "volume_ambush_room_exterior_side", "script_noteworthy" );
    var_2 = getent( "volume_ambush_room", "script_noteworthy" );
    var_3 = getent( "volume_c4_ambush", "targetname" );
    _ID42237::_ID14413( "ambush_c4_triggered" );
    _ID42237::_ID14402( "ambush_enemies_alerted" );
    _ID42407::_ID13828();
    thread _ID42237::_ID27077( "oilrig_ambush_explosion", var_2._ID740 );
    thread maps\oilrig_aud::breach_2_fire_sounds();

    if ( getdvarint( "disable_ambush_slowmo" ) == 1 )
        earthquake( 0.6, 2, level._ID794._ID740, 1500 );

    level._ID794 playrumblelooponentity( "damage_heavy" );
    _ID42234::_ID13611( 1 );

    if ( level._ID794 istouching( var_2 ) )
    {
        playfx( _ID42237::_ID16299( "player_death_explosion" ), level._ID794._ID740 );
        level._ID794 kill();
    }
    else if ( level._ID794 istouching( var_0 ) || level._ID794 istouching( var_1 ) )
    {
        playfx( _ID42237::_ID16299( "player_death_explosion" ), level._ID794._ID740 );
        radiusdamage( level._ID794._ID740, 500, 75, 50 );
        level._ID794 _meth_859f( var_2._ID740 );
    }

    thread _ID45805();
    physicsexplosionsphere( var_2._ID740, 300, 300, 10.0, 0 );
    var_4 = var_2 _ID42407::_ID15547();

    foreach ( var_6 in var_4 )
    {
        if ( isdefined( var_6._ID22746 ) )
            var_6 _ID42407::_ID36519();

        if ( var_6 _ID42407::_ID20542( level._ID35507, var_6 ) )
        {
            level thread _ID42297::_ID23776();
            return;
        }

        var_6 dodamage( var_6._ID486 + 1000, var_6._ID740, level._ID794 );
    }

    var_4 = var_3 _ID42407::_ID15547();

    foreach ( var_6 in var_4 )
    {
        if ( isdefined( var_6 ) && isalive( var_6 ) )
        {
            var_6._ID14521 = "allies";
            var_6 _ID42407::_ID14510( 5 );
        }
    }

    wait 1;
    thread _ID49029();
    wait 5;
    _ID42407::_ID24927();
}

_ID47488()
{
    var_0 = getent( "ambush_room_anchor", "targetname" );
    var_1 = getent( "ambush_room_anchor_destroyed", "targetname" );
    var_2 = var_0._ID740 - var_1._ID740;
    var_3 = getentarray( "ambush_office_destroyed", "script_noteworthy" );

    foreach ( var_5 in var_3 )
    {
        if ( var_5._ID170 == "light_spot" || var_5._ID170 == "light_omni" )
        {
            var_5._ID53354 = var_5 getlightintensity();
            var_5 setlightintensity( 0 );
            continue;
        }

        var_5 hide();
    }

    _ID42237::_ID14413( "ambush_c4_triggered" );
    var_3 = getentarray( "ambush_office_destroyed", "script_noteworthy" );

    foreach ( var_5 in var_3 )
        var_5._ID740 = var_5._ID740 + var_2;

    wait 0.5;
    var_3 = getentarray( "ambush_office_destroyed", "script_noteworthy" );

    foreach ( var_5 in var_3 )
    {
        if ( var_5._ID170 == "light_spot" || var_5._ID170 == "light_omni" )
        {
            var_5 setlightintensity( var_5._ID53354 );
            continue;
        }

        var_5 show();
    }

    var_11 = getentarray( "ambush_office", "script_noteworthy" );

    foreach ( var_5 in var_11 )
    {
        if ( var_5._ID170 == "light_spot" || var_5._ID170 == "light_omni" )
        {
            var_5 setlightintensity( 0 );
            continue;
        }

        var_5._ID740 = var_5._ID740 - var_2;
        var_5 setcontents( 0 );
        var_5 hide();
    }
}

_ID49029()
{
    _ID42234::_ID13611( "exploder_ambush_afterfx" );
    _ID42237::_ID14402( "ambush_aftermath" );
    var_0 = getent( "volume_ambush_room", "script_noteworthy" );
    var_1 = getentarray( "com_vending_can_new2_destroyed", "script_noteworthy" );

    foreach ( var_3 in var_1 )
    {
        if ( ispointinvolume( var_3._ID740, var_0 ) )
            var_3 setmodel( "com_vending_can_new2_destroyed" );
    }

    wait 2;
    var_5 = getentarray( "breach_room_2_destructible_triggers", "script_noteworthy" );
    _ID42237::_ID3350( var_5, ::_ID43230 );
}

_ID43230()
{
    if ( !isdefined( self ) )
        return;

    if ( level._ID794 istouching( self ) )
        return;

    radiusdamage( self._ID740, self._ID851, 500, 500 );
    self delete();
}

_ID49576()
{
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    _ID42237::_ID14425( "player_in_ambush_position", 8 );
    wait 5;
    thread _ID45005();
    var_0 = getentarray( "hostiles_ambush", "targetname" );
    var_1 = _ID42407::_ID3339( var_0 );
    _ID42237::_ID14402( "ambush_enemies_spawned" );

    foreach ( var_3 in var_1 )
        var_3.cheat._ID48626 = 1;

    level endon( "ambush_enemies_alerted_prematurely" );
    var_5 = getent( "ambush_enemies_approaching", "targetname" );
    var_5 waittill( "trigger" );
    _ID42237::_ID14402( "ambush_enemies_approaching" );
    var_5 = getent( "enemies_discovered_bodies", "targetname" );
    var_5 waittill( "trigger" );
    _ID42237::_ID14402( "enemies_discovered_bodies" );
}

_ID46334()
{
    level endon( "ambush_enemies_alerted" );
    _ID45034();
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
    var_0 = getaiarray( "axis" );
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_2 = var_1._ID740 + ( 0, 0, -512 );
    thread _ID51389( var_2 );
    wait 2;
    var_3 = level._ID44035 _ID42407::_ID16120( "oilrig_nsl_standby2" );
    level._ID44035 setanim( var_3 );
    _ID42407::_ID28864( "oilrig_nsl_standby2" );
    thread _ID51389( var_2 );
    _ID42237::_ID14413( "enemies_discovered_bodies" );
    wait 1;
    thread _ID45662();
    wait 1;
    var_3 = level._ID44035 _ID42407::_ID16120( "oilrig_nsl_doit" );
    level._ID44035 setanim( var_3 );
    _ID42407::_ID28864( "oilrig_nsl_doit" );
    _ID42237::_ID14402( "ambush_enemies_alerted" );
}

_ID45662()
{
    var_0 = getent( "origin_ambush_discovery_dialogue", "targetname" );
    var_0 thread _ID42407::_ID27081( "temp_vo_alarm" );

    if ( !_ID42237::_ID14385( "ambush_c4_triggered" ) )
    {
        _ID42237::_ID14413( "ambush_c4_triggered" );
        var_0 delete();
    }
}

_ID54544( var_0, var_1 )
{
    var_2 = randomint( 2 );
    var_3 = "oilrig_mrc_killhostages_room_" + var_1 + "_0" + var_2;
    wait 0.5;
    var_4 = _ID42407::_ID15601( level._ID794._ID740, "axis" );

    if ( isdefined( var_4 ) )
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
    self kill();
    wait 0.1;
    var_0 = 8000;
    self startragdollfromimpact( "torso_lower", var_0 * ( 0, -1, 0.5 ) );
}

_ID45805()
{
    var_0 = getent( "hostile_c4_blowup", "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_2 = var_1._ID740 + ( 0, 20, 35 );
    var_1 thread _ID53544();

    if ( getdvarint( "disable_ambush_slowmo" ) != 1 )
        _ID42407::_ID45369( 0.15, 0.2, 0.4, 10 );
}

_ID46346()
{
    thread _ID54040();
    thread _ID47283();
    thread _ID49342();
    _ID42237::_ID14413( "player_at_stairs_to_deck_2" );
    thread _ID51991();
}

_ID49342()
{
    maps\jake_tools::_ID38942( "colornodes_deck1_postbreach", "script_noteworthy", 1 );
    thread deck1_postbreach_color_nodes_monitor();
    _ID42237::_ID14413( "obj_explosives_locate_given" );
    level._ID48061 _ID42407::_ID32628( 0 );
    level._ID48061 _ID42367::_ID29570();
    level._ID48061 thread _ID42407::_ID36519();
}

deck1_postbreach_color_nodes_monitor()
{
    var_0 = getentarray( "colornodes_deck1_postbreach", "script_noteworthy" );
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
    _ID47645( "dummy_spawner_ballsout" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID12445 );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "off" );
    wait 2;

    if ( _ID42237::_ID14385( "deck1_postbreach_color_nodes_activated" ) )
        level._ID44035 pushplayer( 0 );
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

    while ( isdefined( var_0 ) && var_3 < var_2 )
    {
        level._ID794 waittill( "damage",  var_4, var_5  );

        if ( !isdefined( var_0 ) )
            break;

        if ( !isdefined( var_0._ID23512 ) )
            break;

        if ( isdefined( var_5 ) && isdefined( var_0._ID23512 ) && _ID42407::_ID20542( var_0._ID23512, var_5 ) )
        {
            level._ID794 enableinvulnerability();
            wait(var_1);
            var_3++;
            var_1 /= 1.3;
            level._ID794 disableinvulnerability();
        }
    }

    level._ID794 disableinvulnerability();
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
        wait(randomfloatrange( 15, 25 ));

        if ( isdefined( var_0 ) && isdefined( var_0._ID14343 ) && var_0._ID14343 == 1 )
        {
            while ( isdefined( var_0._ID14343 ) && var_0._ID14343 == 1 )
                wait 0.5;
        }

        if ( !level._ID794 _ID42407::_ID27729() )
        {
            while ( var_2 == var_3 )
            {
                wait 0.05;
                var_2 = randomint( 5 );
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
            var_4 = randomint( 4 );
        }

        if ( _ID42237::_ID14385( var_1 ) )
            break;

        _ID42407::_ID28864( "oilrig_nsl_takeoutbird_withrocket_0" + var_4 );
        var_5 = var_4;
    }
}

_ID51991()
{
    thread _ID43607();
    thread _ID54724();
    thread _ID53604();
    thread _ID44961();
    thread _ID44243();
    thread _ID48981();
    thread soap_stairs_anim();
    _ID42237::_ID14413( "player_at_end_of_deck2" );
    thread _ID54724();
    thread _ID50801();
}

_ID53604()
{
    _ID42237::_ID14413( "player_at_deck1_midpoint" );
    _ID42407::_ID4917( "allies" );
    thread _ID42407::_ID4422( "deck2_start" );
    wait(randomfloatrange( 1, 2 ));
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
    var_1 = getentarray( "zodiacs_grate", "targetname" );
    _ID42237::_ID3294( var_1, ::delete );
    _ID42237::_ID3350( var_0, ::_ID50079 );
}

_ID50079()
{
    playfxontag( _ID42237::_ID16299( "zodiac_wake_geotrail_oilrig" ), self, "tag_origin" );
}

_ID48981()
{
    var_0 = getentarray( "hostiles_rappel_deck2", "targetname" );
    _ID42237::_ID14413( "player_approaching_deck_2" );
    maps\jake_tools::_ID38942( "colornodes_deck2", "script_noteworthy", 1 );
    _ID42237::_ID14413( "player_at_deck_2" );
    thread _ID42407::_ID4422( "rappel_firefight" );
    thread _ID43937();
    var_1 = _ID50606( var_0 );
}

_ID43937()
{
    level._ID794._ID511 = 1;
    _ID42237::_ID14425( "rappel_dudes_failsafe", 5 );
    level._ID794._ID511 = 0;
}

_ID52777()
{
    self setcontents( 0 );
}

hot_potato_achievement_think()
{
    self waittill( "death",  var_0, var_1, var_2  );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
    {
        if ( isdefined( var_2 ) && var_2 == "fraggrenade" )
            _ID42407::_ID16864( "HOT_POTATO" );
    }
}

_ID44243()
{
    level endon( "heli_not_killed_in_time" );
    _ID42237::_ID14413( "player_deck2_littlebird" );
    var_0 = _ID42411::_ID35195( "heli_deck2" );
    level._ID18342 = var_0;
    var_0 thread hot_potato_achievement_think();
    _ID42237::_ID3350( var_0._ID29965, ::_ID52777 );
    _ID42237::_ID14421( "player_looking_deck2_littlebird", "player_deck2_littlebird_failsafe" );
    _ID42407::_ID10226( 2, ::_ID43734 );
    thread _ID42411::_ID17021( var_0 );
    var_0 vehicle_setspeed( 10 );
    var_0 thread maps\oilrig_aud::heli_deck2_audio();
    _ID42475::_ID34575( "aud_start_mix_lbs_reveal" );

    foreach ( var_2 in var_0._ID23512 )
    {
        var_2 _ID42413::_ID39304( "manual" );
        var_2 setmode( "manual" );
    }

    var_0._ID11585 = 1;
    thread _ID48371( var_0 );
    thread _ID46897( var_0 );
    var_0 setlookatent( level._ID794 );
    var_0 thread _ID44207();
    var_0 _ID42407::_ID10226( 3, _ID42508::_ID18413, "tag_barrel", 1 );
    thread _ID43381( var_0 );
    thread _ID50725( var_0 );
    _ID42237::_ID14421( "player_shoots_or_aims_rocket_at_intimidating_heli", "deck_2_heli_is_finished_intimidating" );
    var_0 = _ID42508::_ID4977( var_0 );
    wait 1;
    thread _ID54279( var_0, "heli_deck2_shot_down" );
    _ID42237::_ID14413( "heli_deck2_shot_down" );
    var_0 thread heli_additive_animations();
    thread _ID42407::_ID4422( "heli_deck2_dead" );
    wait 1.5;
    thread _ID53687();
    wait 2;
    _ID42407::_ID28864( "oilrig_nsl_clocksticking" );
}

_ID50725( var_0 )
{
    level endon( "heli_deck2_shot_down" );
    _ID42237::_ID14413( "top_deck_room_breached" );
    _ID42237::_ID14402( "heli_not_killed_in_time" );

    if ( isdefined( var_0 ) )
        var_0 delete();

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
        var_0 waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( !isdefined( var_2 ) || !isplayernumber( var_2 ) )
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

    foreach ( var_4 in var_0 )
    {
        var_5 = spawn( "script_model", var_4._ID740 );
        var_5 setmodel( "weapon_us_smoke_grenade_burnt" );
        var_5._ID65 = ( 0, 0, 90 );
    }

    for (;;)
    {
        var_7 = undefined;

        foreach ( var_4 in var_0 )
        {
            var_4 thread _ID42237::_ID27077( "h1_wpn_smoke_pop" );
            wait(randomfloatrange( 0.1, 0.3 ));
        }

        foreach ( var_4 in var_0 )
            playfx( _ID42237::_ID16299( "smokescreen" ), var_4._ID740 );

        wait 28;

        if ( _ID42237::_ID14385( var_1 ) || _ID42237::_ID14385( var_2 ) )
        {
            wait 4;

            foreach ( var_4 in var_0 )
                playfx( _ID42237::_ID16299( "smokescreen_oilrig_fadeout" ), var_4._ID740 );

            break;
        }
    }
}

deck_2_monitor_and_sync_ais_before_3rd_floor()
{
    _ID42237::_ID14402( "deck_2_sync_ais_before_3rd_floor" );
    level.deck2_to_deck3_allies_in_zone = [];
    var_0 = getent( "deck2_to_deck3_allies_monitor", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( _ID42237::_ID3303( level.deck2_to_deck3_allies_in_zone, var_1 ) )
            continue;

        level.deck2_to_deck3_allies_in_zone[level.deck2_to_deck3_allies_in_zone.size] = var_1;

        if ( _ID42237::_ID14385( "deck_2_sync_ais_before_3rd_floor" ) )
            thread deck_2_ais_before_3rd_floor_inside_zone( var_0 );
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

            if ( isalive( var_2 ) && var_2 istouching( var_0 ) )
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
    thread _ID50276();
    thread _ID53078();
    level._ID34354 = 1;
    thread _ID45661();
    thread _ID49149( "top_deck_room_breached", "barracks_cleared" );
    thread _ID53812();
    thread _ID48777();
    thread _ID46824();
    thread _ID50214();
    thread _ID42407::_ID4422( "deck3_start" );
    thread _ID45892();
    thread _ID50414();
    _ID42237::_ID14413( "barracks_cleared" );
    thread _ID43690();
}

_ID53078()
{
    _ID42237::_ID14413( "player_at_stairs_to_top_deck" );
    var_0 = getentarray( "breach_save_deck3", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID43012 );
}

_ID43012()
{
    level endon( "breach_deck3_autosave_threaded" );
    level endon( "A door in breach group 300 has been activated." );
    var_0 = undefined;
    var_1 = getent( self._ID31273, "script_linkname" );
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

        var_0 = getaiarray( "axis" );

        foreach ( var_6 in var_0 )
        {
            if ( var_6 istouching( self ) )
            {
                var_3 = 1;
                break;
            }
        }

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
    var_0 = getentarray( "samsite_turret", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID52126 );
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

    foreach ( var_1 in self._ID23757 )
        self attach( "projectile_slamraam_missile", var_1, 1 );

    var_3 = 4.4;
    wait(randomfloatrange( 0, 1.5 ));
    var_4 = getent( self._ID1191, "targetname" );

    while ( !_ID42237::_ID14385( "top_deck_room_breached" ) )
    {
        self detach( "projectile_slamraam_missile", self._ID23757[0] );
        earthquake( 0.3, 0.5, self._ID740, 1600 );
        magicbullet( "slamraam_missile_dcburning", self gettagorigin( self._ID23757[0] ), var_4._ID740 );
        self._ID23757 = _ID42237::_ID3321( self._ID23757, self._ID23757[0] );

        if ( self._ID23757.size < 1 )
            break;

        self rotateyaw( 45, var_3, var_3 / 2, var_3 / 2 );
        wait(var_3);
        wait(randomfloatrange( 0, 2 ));
        self rotateyaw( -45, var_3, var_3 / 2, var_3 / 2 );
        wait(var_3);
        wait(randomfloatrange( 0, 1.5 ));
    }
}

_ID45661()
{
    _ID42237::_ID14421( "player_near_breach_topdeck_right", "player_near_breach_topdeck_left" );
    _ID50236();
    _ID42237::_ID14413( "top_deck_room_breached" );
    _ID51102();
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
    thread _ID47337();

    if ( !_ID42407::_ID20614() )
    {
        foreach ( var_1 in level._ID35507 )
        {
            if ( !isdefined( var_1 ) )
                continue;

            var_1._ID11014 = 1;
        }
    }

    if ( !_ID42407::_ID20614() )
        thread _ID42407::_ID4422( "deck3_firefight_start" );

    _ID42237::_ID14413( "player_on_right_top_deck" );
    var_3 = getentarray( "smoke_deck3", "targetname" );
    thread _ID49809( var_3 );
    wait 1;
    _ID42237::_ID14402( "smoke_thrown" );
    wait 2;

    if ( !_ID42407::_ID20614() )
    {
        foreach ( var_1 in level._ID35507 )
        {
            if ( !isdefined( var_1 ) )
                continue;

            var_1._ID11014 = undefined;
        }
    }

    _ID42237::_ID14402( "smoke_firefight" );

    if ( !_ID42407::_ID20614() )
        thread _ID43379();

    _ID42237::_ID14425( "player_approaching_topdeck_building", 28 );

    if ( !_ID42237::_ID14385( "player_approaching_topdeck_building" ) )
    {
        if ( !_ID42407::_ID20614() )
        {
            if ( !_ID42237::_ID14385( "player_approaching_topdeck_building" ) )
                thread _ID43637();
        }
    }

    _ID42237::_ID14425( "player_approaching_topdeck_building", 28 );

    if ( !_ID42237::_ID14385( "player_approaching_topdeck_building" ) )
        thread _ID47385();

    _ID42237::_ID14421( "player_near_breach_topdeck_right", "player_near_breach_topdeck_left" );

    if ( !_ID42407::_ID20614() )
    {
        thread _ID42407::_ID4422( "deck3_breach_approach" );
        _ID42237::_ID14402( "player_got_deck3_autosave" );
        thread _ID48912( 300 );
    }

    _ID42237::_ID14413( "derrick_room_getting_breached" );
    thread maps\oilrig_aud::_ID46492();
    _ID42407::_ID4917( "allies" );

    if ( !_ID42237::_ID14385( "stop_smoke" ) )
        _ID42237::_ID14402( "stop_smoke" );

    _ID42237::_ID3350( level._ID48906, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID49941, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID45175, _ID42237::_ID26402 );
    var_6 = getaiarray();
    thread _ID47401();
    _ID42237::_ID3350( var_6, ::_ID52742 );
    level waittill( "breach_explosion" );
    _ID42237::_ID14402( "top_deck_room_breached" );
}

_ID43379()
{
    _ID46988();
    wait 1;
    thread _ID43637();
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
    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID31433 ) )
        return;

    if ( !_ID42407::_ID20614() )
    {
        if ( _ID42407::_ID20542( level._ID35507, self ) )
            return;
    }

    if ( isdefined( self ) )
    {
        if ( isdefined( self._ID22746 ) )
            _ID42407::_ID36519();

        self delete();
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
    var_0 = getentarray( "c4_barrel", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID51124 );
    var_1 = getentarray( "c4barrelPacks", "script_noteworthy" );
    _ID42237::_ID3350( var_1, ::_ID49164 );
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

    _ID42237::_ID14413( "derrick_room_getting_breached" );

    while ( !_ID42237::_ID14385( "player_detonated_explosives" ) )
    {
        var_0 waittill( "damage",  var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9  );

        if ( isdefined( var_2 ) && isplayernumber( var_2 ) )
        {
            if ( var_9 & 8 )
                continue;

            if ( isdefined( var_5 ) && ( issubstr( var_5, "MOD_GRENADE" ) || issubstr( var_5, "MOD_EXPLOSIVE" ) || issubstr( var_5, "MOD_PROJECTILE" ) ) )
                break;

            if ( var_0._ID47357 > 0 )
                var_0._ID47357 = var_0._ID47357 - 1;

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
    level._ID794 playlocalsound( "oilrig_ambush_explosion" );
    playfx( _ID42237::_ID16299( "player_death_explosion" ), level._ID794._ID740 );
    earthquake( 1, 1, level._ID794._ID740, 100 );
    setdvar( "ui_deadquote", &"OILRIG_MISSIONFAIL_EXPLOSIVES" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID49164()
{
    _ID42237::_ID14413( "derrick_room_getting_breached" );
    self show();
    self notsolid();
    wait(randomfloatrange( 0, 0.6 ));
    playfxontag( _ID42237::_ID16299( "light_c4_blink_nodlight" ), self, "tag_fx" );
    _ID42237::_ID14413( "player_on_board_littlebird" );
    self delete();
}

_ID43690()
{
    _ID42407::_ID4918( "allies" );
    thread _ID46834();
    thread _ID49664();
    thread _ID43203();
    thread _ID46262();
    thread _ID25282();
    thread play_fx_on_chopper();
    enableforcedsunshadows();
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
    var_0 = getaiarray( "axis" );
    thread _ID42407::_ID2265( var_0, 512 );
    thread _ID50236();
    var_1 = "tag_player_attach_right";
    wait 1;
    maps\jake_tools::_ID38942( "colornodes_escape", "script_noteworthy", 1 );
    maps\jake_tools::_ID38942( "colornodes_escape_start", "script_noteworthy", 1 );
    _ID42407::_ID1804( "colornodes_escape_start" );
    var_2 = _ID42407::_ID3339( getentarray( "littlebird_riders_left", "targetname" ) );

    foreach ( var_4 in var_2 )
        var_4 thread handleleftsoldier();

    var_6 = _ID42407::_ID3339( getentarray( "littlebird_riders_right", "targetname" ) );
    var_6 = _ID42237::_ID3293( var_6, level._ID44035 );
    level._ID44035._ID31455 = 4;
    level._ID53676 = _ID42411::_ID35195( "littlebird_escape" );
    thread _ID42297::_ID14940( level._ID53676 );
    var_7 = getent( "obj_escape", "targetname" );
    _ID42237::_ID14402( "littlebird_escape_spawned" );
    thread spawn_weapon_m14();
    level._ID53676 thread maps\oilrig_aud::_ID46817();
    _ID42237::_ID14413( "player_headed_out_of_barracks" );
    _ID42475::_ID34575( "aud_start_mix_escape" );
    level._ID44035 _ID42407::_ID10871();
    var_8 = _ID42237::_ID16638( "pickup_node_before_stage", "script_noteworthy" );
    level._ID53676 thread soap_gets_on_littlebird();

    foreach ( var_4 in var_2 )
    {
        var_4 _ID42407::_ID10871();

        if ( !isdefined( var_4._ID22746 ) )
            var_4 thread _ID42407::_ID22746();

        var_4 _ID42407::_ID32628( 1 );
        var_4._ID511 = 1;
        var_4._ID465 = 0;
        var_4 setthreatbiasgroup( "oblivious" );
    }

    _ID42237::_ID14413( "player_approaching_derrick_building_exit" );
    level._ID53676 _ID42411::_ID17021();
    _ID42237::_ID14402( "littlebird_escape_moving" );

    foreach ( var_4 in level._ID35507 )
    {
        if ( isdefined( var_4 ) && isalive( var_4 ) )
        {
            var_4._ID24727 = 1;
            var_4 _ID42407::_ID10896();
            var_4._ID52882 = "run";
        }
    }

    setsaveddvar( "cg_gunDownAnimDelayTime", 250 );
    thread _ID50565();
    level._ID53676 waittill( "touch_down" );
    _ID42237::_ID14402( "escape_littlebird_landed" );
    level._ID53676 thread _ID52364( var_1 );
    level._ID53676 thread player_gets_weapon_from_soap_on_littlebird( var_1 );
    thread helicopter_objects_hide();
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
    level._ID53676 setmaxpitchroll( 50, 50 );
    _ID42237::_ID14402( "littlebird_escape_lifted_off" );
    thread _ID51102();
    level._ID53676 _ID42411::_ID40066( "idle_alert_to_casual" );
    level._ID53676 vehicle_setspeed( 17 );
    _ID42237::_ID14413( "heli_escape_path_01" );
    var_14 = _ID42411::_ID35196( "blackhawk_main_deck" );
    var_15 = getent( "view_derrick_building_01", "targetname" );
    _ID42237::_ID14413( "heli_escape_path_03" );
    var_16 = _ID42407::_ID3339( getentarray( "friendlies_deck3_stairs", "targetname" ) );
    _ID42237::_ID14413( "heli_escape_path_04" );
    var_17 = _ID42411::_ID35196( "littlebird_wingman_01_drone" );
    var_17 _ID42411::_ID40066( "idle_alert_to_casual" );
    var_17 vehicle_setspeed( 28 );
    _ID42237::_ID14413( "heli_escape_path_05" );
    level._ID53676 vehicle_setspeed( 22 );
    _ID42237::_ID14413( "heli_escape_path_06" );
    var_18 = _ID42411::_ID35196( "littlebird_wingman_02_drone" );
    var_18 _ID42411::_ID40066( "idle_alert_to_casual" );
    var_18 vehicle_setspeed( 33 );
    var_17 vehicle_setspeed( 33 );
    _ID42400::_ID32545( "script_vehicle_littlebird_bench", "vfx/unique/no_fx" );
    var_19 = _ID42411::_ID35200( "jets_escape_flight_03" );
    level._ID53676 vehicle_setspeed( 28 );
    _ID42237::_ID14413( "heli_escape_path_07" );
    _ID42237::_ID14413( "heli_escape_path_09" );
    var_18 vehicle_setspeed( 30 );
    var_17 vehicle_setspeed( 31 );
    wait 4.5;
    _ID51686();
}

handleleftsoldier()
{
    var_0 = getnode( self._ID1191, "targetname" );
    self setgoalnode( var_0 );
    var_1 = getent( "littlebird_riders_left_node", "targetname" );
    _ID42237::_ID14413( "escape_littlebird_landed" );
    self._ID3189 = "generic";
    var_1 _ID42259::_ID3111( self, self._ID70 );
    var_1 thread _ID42259::_ID3044( self, self._ID70 + "_idle" );
    _ID42237::_ID14413( "player_on_board_littlebird" );
    _ID42407::_ID36519();
    self delete();
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
    var_2 = getentarray( "submarine_03", "targetname" );

    foreach ( var_4 in var_2 )
    {
        if ( isdefined( var_4._ID31388 ) && var_4._ID31388 == "sub" )
        {
            var_0 = var_4;
            continue;
        }

        var_1 = var_4;
    }

    level._ID51672 = spawn( "script_origin", var_0._ID740 );
    level._ID51672._ID740 = var_0._ID740;
    level._ID51672._ID65 = var_0._ID65;
    var_1 linkto( var_0 );
    var_0 linkto( level._ID51672 );
    var_6 = 12;
    var_7 = 1024;
    level._ID51672 moveto( level._ID51672._ID740 + ( 0, 0, -1 * var_7 ), 0.1 );
    var_0 show();
    var_1 show();
    _ID42237::_ID14413( "sub_comes_through_ice" );
    level._ID51672 moveto( var_0._ID740 + ( 0, 0, var_7 ), var_6, var_6 / 3, var_6 / 3 );
}

_ID44270( var_0 )
{
    for (;;)
        wait 0.05;
}

_ID52364( var_0 )
{
    var_1 = self gettagorigin( var_0 );
    var_2 = 30;
    var_3 = 50;
    var_4 = 0;
    var_5 = spawn( "trigger_radius", var_1, var_4, var_2, var_3 );
    var_6 = _ID42237::_ID35164();
    var_6._ID740 = self gettagorigin( var_0 );
    var_6._ID65 = self gettagangles( var_0 );
    var_6._ID65 = var_6._ID65 + ( 0, 0, 0 );
    var_6 linkto( self, var_0, ( 0, 0, 0 ), ( 0, -90, 0 ) );
    var_5 waittill( "trigger" );
    thread dof_climb_in_heli();
    _ID42475::_ID34575( "aud_start_player_inside_helicopter" );
    level._ID794 freezecontrols( 1 );
    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "hud_showStance", "0" );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "actionSlotsHide", 1 );
    var_7 = level._ID794 getstance();
    level._ID794 allowprone( 0 );
    level._ID794 allowcrouch( 0 );
    level._ID794 _meth_830f( 0 );
    level._ID794 allowjump( 0 );
    level._ID794 disableweapons();
    var_8 = 1.0;
    var_9 = 5;
    var_10 = 5;
    var_11 = 5;
    var_12 = 5;
    level._ID794.worldbody_rig = _ID42407::_ID35028( "worldbody" );
    level._ID794.worldbody_rig hide();
    _ID42259::_ID3018( level._ID794.worldbody_rig, "escape_in", var_0 );
    var_13 = 0.7;
    var_14 = spawn( "script_origin", level._ID794._ID740 );
    var_14._ID65 = level._ID794 getplayerangles();
    level._ID794 playerlinkto( var_14, undefined, 1.0, 0.0, 0.0, 0.0, 0.0 );
    var_14 moveto( level._ID794.worldbody_rig gettagorigin( "tag_camera" ) - ( 0, 0, 60 ), var_13, var_13 * 0.2, var_13 * 0.2 );
    var_14 rotateto( level._ID794.worldbody_rig gettagangles( "tag_camera" ), var_13, var_13 * 0.2, var_13 * 0.2 );
    wait(var_13);
    level._ID794 playerlinktodelta( level._ID794.worldbody_rig, "tag_player", var_8, var_9, var_10, var_11, var_12, 1 );
    level._ID794.worldbody_rig show();
    _ID42259::_ID3111( level._ID794.worldbody_rig, "escape_in", var_0 );
    thread _ID42259::_ID3044( level._ID794.worldbody_rig, "escape_idle", undefined, var_0 );
    level._ID794 lerpviewangleclamp( 0.5, 0.1, 0.1, 40, 40, 10, 20 );
    level._ID794.worldbody_rig linkto( self, "tag_origin" );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    level._ID794 freezecontrols( 0 );
    level._ID794 enableweapons();
    _ID42237::_ID14402( "player_on_board_littlebird" );
}

soap_gets_on_littlebird()
{
    level._ID44035 _ID42407::_ID13024( "on_board_littlebird" );
    var_0 = _ID42237::_ID16638( "gag_stage_littlebird_load", "script_noteworthy" );
    var_1 = spawn( "script_origin", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_1._ID740 = _ID42237::_ID12140( var_1._ID740, 40.0, -40.0 );
    thread final_stair_animation_monitoring();
    thread handleghostmovement( var_1 );
    var_1 _ID42259::_ID3074( level._ID44035, "escape_in" );
    _ID42237::_ID14413( "escape_littlebird_landed" );

    while ( _ID42237::_ID14385( "stair_in_use" ) )
        waittillframeend;

    var_1 _ID42259::_ID3111( level._ID44035, "escape_in" );
    level._ID44035 linkto( self );
    level._ID44035 _ID42407::_ID13025( "on_board_littlebird" );
    thread _ID42259::_ID3044( level._ID44035, "escape_idle", undefined, "tag_detach_right" );
    level._ID44035 thread handle_soap_headtracking();
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
    var_0 = getnode( "ghost_end_node", "targetname" );
    level._ID49792 setgoalnode( var_0 );
}

player_gets_weapon_from_soap_on_littlebird( var_0 )
{
    _ID42237::_ID14413( "player_on_board_littlebird" );
    level._ID44035 _ID42407::_ID13027( "on_board_littlebird" );
    var_1 = _ID42407::_ID35028( "weapon_m14", self._ID740 );
    var_1 linkto( self );
    waittillframeend;
    thread _ID42259::_ID3111( var_1, "escape_departure", var_0 );
    thread _ID42259::_ID3111( level._ID44035, "escape_departure", "tag_detach_right" );
    thread _ID42259::_ID3111( level._ID794.worldbody_rig, "escape_departure", var_0 );
    thread dof_departure_and_heli_ride();
    level._ID794 lerpviewangleclamp( 0.75, 0.3, 0.3, 0, 0, 0, 0 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    level._ID794 disableweapons();
    _ID42237::_ID14413( "player_switches_weapon_on_littlebird" );
    var_1 delete();
    level._ID794 takeallweapons();
    level._ID794 giveweapon( "m14_scoped_arctic" );
    level._ID794 switchtoweapon( "m14_scoped_arctic" );
    level._ID794 enableweapons();
    level._ID794 lerpviewangleclamp( 0.5, 0.1, 0.1, 60, 40, 10, 30 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    level._ID794 _meth_85aa( 180, -5, -10, 180 );
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
    var_0 = _ID42407::_ID3339( getentarray( "friendlies_samsite_02", "targetname" ) );
}

_ID48999()
{
    _ID42237::_ID14413( "littlebird_escape_lifted_off" );
    var_0 = _ID42407::_ID3339( getentarray( "friendlies_samsite_03", "targetname" ) );
}

_ID51686()
{
    var_0 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_0 fadeovertime( 3 );
    var_0._ID55 = 1;
    wait 3;
    _ID42407::_ID24793();
}

_ID44279()
{
    _ID42237::_ID14413( "obj_stealthkill_given" );
    var_0 = 1;
    var_1 = level._ID49527;
    objective_add( var_0, "active", &"OILRIG_OBJ_STEALTHKILL", var_1._ID740 );
    _func_1e9( var_0 );
    _ID42237::_ID14413( "obj_stealthkill_complete" );
    _ID42475::_ID34575( "aud_stop_mix_stealth_kill" );
    objective_state( var_0, "done" );
}

_ID46465()
{
    var_0 = getentarray( "obj_breach1", "targetname" );
    var_1 = 2;
    _ID42237::_ID14413( "obj_hostages_secure_given" );
    objective_add( var_1, "invisible", &"OILRIG_OBJ_HOSTAGES_SECURE" );
    _func_194( var_1, level._ID44035 );
    objective_state( var_1, "current" );
    objective_string( var_1, &"OILRIG_OBJ_HOSTAGES_SECURE", level._ID49673 );
    _ID42237::_ID14413( "player_at_lower_breach" );
    _ID42237::_ID14413( "railing_patroller_dead" );
    _ID42367::_ID25325( var_1, 0, 1 );
    objective_string( var_1, &"OILRIG_OBJ_HOSTAGES_SECURE", level._ID49673 );
    _ID42237::_ID14413( "lower_room_breached" );
    _ID42407::_ID25326( var_1 );
    objective_setpointertextoverride( var_1 );
    _ID42237::_ID14413( "lower_room_cleared" );
    objective_string( var_1, &"OILRIG_OBJ_HOSTAGES_SECURE", level._ID49673 - 4 );
    _func_194( var_1, level._ID49792 );
    _ID42237::_ID14413( "player_at_last_breach_building" );
    _ID42367::_ID25325( var_1, 2, 3 );
    _ID42237::_ID14413( "upper_room_breached" );
    _ID42407::_ID25326( var_1 );
    objective_setpointertextoverride( var_1 );
    _ID42237::_ID14413( "obj_hostages_secure_complete" );
    objective_state( var_1, "done" );
    objective_string( var_1, &"OILRIG_OBJ_HOSTAGES_SECURE_DONE" );
}

_ID43926()
{
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    var_0 = 3;
    objective_add( var_0, "invisible", &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    objective_state( var_0, "current" );
    objective_string( var_0, &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    _func_1e9( var_0 );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    objective_state( var_0, "done" );
}

_ID50020()
{
    level._ID49132++;
    var_0 = level._ID49132;
    level._ID44080[level._ID44080.size] = self;
    objective_string( 3, &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    objective_additionalposition( 3, var_0, self._ID740 );
    objective_string( 3, &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    self waittill( "c4_planted" );

    if ( !_ID42237::_ID14385( "player_has_started_planting_c4" ) )
        _ID42237::_ID14402( "player_has_started_planting_c4" );

    level._ID44080 = _ID42237::_ID3321( level._ID44080, self );
    waitframe;
    objective_additionalposition( 3, var_0, ( 0, 0, 0 ) );

    if ( level._ID44080.size < 2 )
        _ID42237::_ID14402( "obj_c4_ambush_plant_complete" );

    objective_string( 3, &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
}

_ID54112()
{
    _ID42237::_ID14413( "obj_ambush_given" );
    var_0 = 4;
    objective_add( var_0, "active", &"OILRIG_OBJ_AMBUSH" );
    _func_1e9( var_0 );
    _func_194( var_0, level._ID44035 );
    _ID42237::_ID14413( "obj_ambush_complete" );
    objective_state( var_0, "done" );
}

_ID54040()
{
    _ID42237::_ID14413( "obj_explosives_locate_given" );
    var_0 = 5;
    objective_add( var_0, "active", &"OILRIG_OBJ_EXPLOSIVES_LOCATE" );
    _func_1e9( var_0 );
    _func_194( var_0, level._ID44035 );
    _ID42237::_ID14413( "player_on_right_top_deck" );
    objective_current( var_0, ( 0, 0, 0 ) );
    var_1 = getentarray( "obj_breach3", "targetname" );
    _ID42367::_ID25325( var_0, 4, 5 );
    _ID42237::_ID14413( "top_deck_room_breached" );
    _ID42407::_ID25326( var_0 );
    objective_setpointertextoverride( var_0 );
    _ID42237::_ID14413( "obj_explosives_locate_complete" );
    objective_state( var_0, "done" );
}

_ID25282()
{
    _ID42237::_ID14413( "obj_escape_given" );
    var_0 = 6;
    objective_add( var_0, "active", &"OILRIG_OBJ_ESCAPE" );
    _func_1e9( var_0 );
    _func_194( var_0, level._ID44035 );
    _ID42237::_ID14413( "player_at_helipad_stairs" );
    _ID42237::_ID14413( "escape_littlebird_landed" );
    objective_current( var_0, ( 0, 0, 0 ) );
    var_1 = getent( "obj_escape", "targetname" );
    var_1._ID740 = level._ID53676 gettagorigin( "tag_guy3" );
    var_1._ID740 = var_1._ID740 + ( 0, 0, 30 );
    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "obj_escape_complete" );
    objective_state( var_0, "done" );
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
    musicstop();
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
    musicstop();
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
    musicstop();
    _ID42237::_ID14413( "obj_c4_ambush_plant_given" );
    _ID42407::_ID24587( "mus_oilrig_suspense_01_music_alt" );
    _ID42237::_ID14421( "ambush_enemies_alerted", "ambush_enemies_alerted_prematurely" );
    musicstop();
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
    musicstop();
}

_ID46834()
{
    _ID42237::_ID14413( "barracks_cleared" );
    musicstop();
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
        var_0 thread _ID52457();

    if ( var_0._ID1194 == "allies" )
        var_0 thread _ID45781();
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
        thread _ID46395();

    var_0 = undefined;
    var_1 = undefined;

    switch ( level._ID15361 )
    {
        case 0:
            var_0 = 1;
            var_1 = 1.5;
            break;
        case 1:
            var_0 = 1.5;
            var_1 = 1.5;
            break;
        case 2:
            var_0 = 2;
            var_1 = 1;
            break;
        case 3:
            var_0 = 2;
            var_1 = 1;
            break;
    }

    self._ID4867 = self._ID4867 * var_1;

    while ( !isdefined( self._ID11624 ) )
        wait 0.05;

    self._ID11624 = self._ID11624 * var_0;

    if ( _ID42237::_ID14385( "need_to_check_axis_death" ) && level._ID15361 < 2 )
        thread _ID50059();
}

_ID50059()
{
    self waittill( "death",  var_0  );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
        level notify( "player_killed_an_enemy" );
}

_ID45486()
{
    self endon( "death" );
    self._ID3189 = "generic";
    var_0 = self._ID988;
    var_1 = undefined;
    var_2 = undefined;
    self hide();
    self._ID511 = 1;
    var_0 _ID42259::_ID3018( self, self._ID70 );
    var_3 = spawn( "script_origin", self._ID988._ID740 );
    thread _ID42237::_ID10280( var_3 );
    var_3._ID65 = self._ID988._ID65;

    switch ( self._ID70 )
    {
        case "oilrig_rappel_over_rail_R":
            var_1 = "oilrig_rappelrope_50ft";
            var_2 = "oilrig_rappelrope_over_rail_R";
            break;
        case "oilrig_rappel_2_crouch":
            var_1 = "oilrig_rappelrope_80ft";
            var_2 = "oilrig_rappelrope_2_crouch";
            break;
        default:
            break;
    }

    var_4 = spawn( "script_model", var_3._ID740 );
    var_4 setmodel( var_1 );
    var_4._ID3189 = "rope";
    var_4 _ID42407::_ID3428();
    var_3 _ID42259::_ID3018( var_4, var_2 );
    self._ID52896 = self._ID486;
    self._ID486 = 3;
    self show();
    self._ID49 = 1;
    thread _ID50884();
    var_3 thread _ID44405( var_4, var_2 );
    var_0 thread _ID42259::_ID3020( self, self._ID70 );
    wait 1.5;
    self._ID511 = 0;
    self waittill( "over_solid_ground" );
    self._ID486 = self._ID52896;
}

_ID44405( var_0, var_1 )
{
    _ID42259::_ID3111( var_0, var_1 );
    _ID42237::_ID14413( "player_at_stairs_to_top_deck" );

    if ( isdefined( self ) )
        self delete();

    if ( isdefined( var_0 ) )
        var_0 delete();
}

_ID50884()
{
    self endon( "over_solid_ground" );

    if ( !isdefined( self ) )
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

    if ( isdefined( self._ID29965 ) )
    {
        foreach ( var_1 in self._ID29965 )
        {
            var_1._ID511 = 1;
            var_1 setthreatbiasgroup( "oblivious" );
        }
    }

    thread _ID42508::_ID18413( undefined, 1 );
    self waittill( "damage" );
    self._ID11585 = 1;
    _ID42508::_ID4977( self );
    wait 2;
    thread _ID48512();
}

_ID44580( var_0 )
{
    foreach ( var_2 in var_0 )
        thread _ID43652( var_2 );
}

_ID43652( var_0 )
{
    _ID42237::_ID14400( var_0 + "_shot_down" );
    var_1 = _ID42411::_ID49802( var_0 );
    level._ID49251 = var_1;
    level._ID49251._ID12571 = 1;
    _ID42237::_ID3350( var_1._ID23512, ::_ID47364 );
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
        if ( self isfiringturret() )
        {
            for (;;)
            {
                if ( !self isfiringturret() )
                    break;

                wait 0.05;
            }
        }

        wait 0.05;
    }
}

_ID43999()
{
    var_0 = getent( "derrick_thing", "targetname" );
    var_1 = 2;
    var_2 = 300;
    var_0 thread rotating_drill( var_2, var_1 );
}

_ID52928()
{
    _ID42237::_ID14402( "player_broke_stealth" );
}

_ID47778()
{
    level endon( "mission failed" );

    while ( !isdefined( self._ID6081 ) )
        wait 0.1;

    while ( self._ID6081 == 0 )
        wait 0.1;

    wait(randomfloatrange( 1, 2 ));
    var_0 = level._ID52474[0];
    level._ID52474 = _ID42237::_ID3321( level._ID52474, var_0 );
    self endon( "death" );
    self notify( "stop_idle" );
    self setgoalnode( var_0 );
    self._ID452 = 64;
    self._ID38 = "noncombat";
    self waittill( "goal" );
}

_ID51389( var_0 )
{
    var_1 = randomint( 21 );

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
    var_0 = randomint( 4 );
    _ID42407::_ID28864( "oilrig_nsl_outtogether_0" + var_0 );
}

_ID47516()
{
    var_0 = randomint( 3 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID28864( "oilrig_ns2_fireat4_0" + var_0 );
    _ID42407::_ID4918( "allies" );
}

_ID53687()
{
    var_0 = randomint( 6 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID28864( "oilrig_heli_grats_0" + var_0 );
    _ID42407::_ID4918( "allies" );
}

_ID46988()
{
    _ID42407::_ID4917( "allies" );
    var_0 = randomint( 5 );
    _ID42407::_ID28864( "oilrig_enemy_smoke_0" + var_0 );
    _ID42407::_ID4918( "allies" );
}

_ID43637()
{
    level endon( "player_approaching_topdeck_building" );

    if ( level._ID794 _ID42407::_ID27469() )
    {
        var_0 = randomint( 2 );
        _ID42407::_ID28864( "oilrig_use_thermal_0" + var_0 );
    }
    else
    {
        var_0 = randomint( 2 );
        _ID42407::_ID28864( "oilrig_find_thermal_0" + var_0 );
    }

    _ID50257( 7 );
}

_ID50257( var_0 )
{
    level endon( "oilrig_timeout_func" );
    level endon( "player_approaching_topdeck_building" );
    thread _ID45401( var_0 );

    for (;;)
    {
        wait 0.1;

        while ( !level._ID794 _ID42407::_ID27469() )
            wait 0.5;

        if ( level._ID794 adsbuttonpressed() )
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
    var_0 = randomint( 4 );
    _ID42407::_ID28864( "oilrig_heloapproach_0" + var_0 );
}

_ID43734()
{
    var_0 = randomint( 3 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID28864( "oilrig_ambush_helo_alert_0" + var_0 );
    _ID42407::_ID4918( "allies" );
}

_ID44751()
{
    var_0 = randomint( 3 );
    _ID42407::_ID28864( "dialogue_heli_all_clear_0" + var_0 );
}

_ID48481( var_0 )
{
    var_1 = undefined;

    foreach ( var_3 in var_0 )
    {
        var_1 = var_3 _ID42407::_ID15547( "axis" );

        if ( var_1.size )
            return 0;
    }

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
            wait(randomfloatrange( 5, 8 ));
        else
            wait(randomfloatrange( 12, 18 ));

        if ( var_0 == 300 )
        {
            var_2 = getentarray( "breach_safe_volume", "targetname" );

            if ( !_ID48481( var_2 ) || !_ID42237::_ID14385( "left_deck3_dudes_spawned" ) )
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
        case 0:
            var_0 = 500;
            break;
        case 1:
            var_0 = 500;
            break;
        case 2:
            var_0 = 500;
            break;
        case 3:
            var_0 = 500;
            break;
    }

    var_1 = getentarray( "easy", "script_noteworthy" );

    if ( level._ID15361 > 0 )
        _ID42237::_ID3294( var_1, ::delete );

    level._ID794._ID25531 = level._ID794._ID1204;
    level._ID794._ID1204 = level._ID794._ID1204 + var_0;
    _ID42237::_ID14402( "difficulty_initialized" );
}

_ID47645( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_2 = getent( var_1._ID31273, "script_linkname" );
    var_2 notify( "trigger",  level._ID794  );
}

_ID46797()
{
    _ID42237::_ID3350( level._ID46473, _ID42237::_ID38863 );
}

_ID45005( var_0, var_1 )
{
    var_2 = getent( "gate_01", "targetname" );
    var_2 connectpaths();

    if ( isdefined( var_0 ) )
        var_2 moveto( var_2._ID740 - ( 0, -170, 0 ), 1 );
    else
    {
        if ( !isdefined( var_1 ) )
            _ID42237::_ID14421( "ambush_enemies_approaching", "ambush_enemies_alerted_prematurely" );

        var_2 thread _ID42407::_ID27079( "scn_oilrig_fence_open" );
        var_2 moveto( var_2._ID740 - ( 0, -170, 0 ), 8, 3, 3 );
        wait 8;
    }

    _ID42237::_ID14402( "ambush_gate_opened" );
}

_ID45768()
{
    precacheitem( "slamraam_missile_dcburning" );
    precachemodel( "h2_prop_npc_cigar" );
    precachemodel( "com_floodlight" );
    precachemodel( "tag_turret" );
    precachemodel( "prop_seal_udt_flippers" );
    precachemodel( "prop_seal_udt_goggles" );
    precachemodel( "prop_seal_udt_draeger" );
    precachemodel( "furniture_chair_metal01" );
    precachemodel( "com_restaurantchair_2" );
    precachemodel( "furniture_long_desk_animate" );
    _ID42358::add_smoking_prop_assets( "cigarette" );
    precachemodel( "h2_head_seal_udt_f_lifesaver" );
    precachemodel( "h2_head_seal_udt_i_lifesaver" );
    precachemodel( "body_hero_seal_udt_ghost_wet" );
    precachemodel( "body_hero_seal_udt_soap_wet" );
    precachemodel( "body_seal_udt_assault_a_wet" );
    precachemodel( "body_seal_udt_assault_b_wet" );
    precachemodel( "body_seal_udt_smg_wet" );
    precachemodel( "head_hero_ghost_udt_wet" );
    precachemodel( "head_hero_soap_udt_wet" );
    precachemodel( "head_seal_udt_d_lifesaver_wet" );
    precachemodel( "head_seal_udt_f_lifesaver_wet" );
    precachemodel( "head_seal_udt_i_lifesaver_wet" );
    precachemodel( "head_seal_udt_asia_lifesaver_wet" );
    precachemodel( "head_seal_udt_a_wet" );
    precachemodel( "head_seal_udt_c_wet" );
    precachemodel( "head_seal_udt_d_wet" );
    precachemodel( "head_seal_udt_e_wet" );
    precachemodel( "head_seal_udt_f_wet" );
    precachemodel( "head_seal_udt_i_wet" );
    precachemodel( "head_seal_udt_asia_wet" );
    precachemodel( "viewhands_udt" );
    precachemodel( "viewhands_udt_wet" );
    precachemodel( "viewbody_udt" );
    precachemodel( "viewbody_udt_wet" );
    precachemodel( "com_blackhawk_spotlight_on_mg_setup" );
    precacheturret( "heli_spotlight" );
    precacheturret( "player_view_controller" );
    precacheitem( "rpg_nodamage" );
    precacheitem( "m14_scoped_arctic" );
    precacheitem( "m4m203_reflex" );
    precacheitem( "scar_h_thermal" );
    precacheitem( "mp5_reflex" );
    precacheitem( "mp5_silencer_reflex" );
    precachemodel( "weapon_rpd_MG_Setup" );
    precachemodel( "furniture_chair_metal01" );
    precachemodel( "com_restaurantchair_2" );
    precachemodel( "oilrig_rappelrope_80ft" );
    precachemodel( "oilrig_rappelrope_50ft" );
    precachemodel( "viewhands_player_udt" );
    precacherumble( "light_3s" );
    precacherumble( "damage_heavy" );
    precacherumble( "tank_rumble" );
    precacherumble( "pistol_fire" );
    precacherumble( "mig_rumble" );
    precachemodel( "weapon_parabolic_knife" );
    precachemodel( "weapon_us_smoke_grenade_burnt" );
    precachemodel( "com_vending_can_new2_destroyed" );
    precachemodel( "h2_head_opforce_merc_f" );
    precacheitem( "missile_mi28" );
    precachestring( &"OILRIG_MISSIONFAIL_HELI_DEATH" );
    precachestring( &"OILRIG_MISSIONFAIL_EXPLOSIVES_NOTPLANTED" );
    precachestring( &"SCRIPT_DEBUG_LEVEL_END" );
    precachestring( &"OILRIG_OBJ_STEALTHKILL" );
    precachestring( &"OILRIG_OBJ_HOSTAGES_SECURE" );
    precachestring( &"OILRIG_OBJ_C4_AMBUSH_PLANT" );
    precachestring( &"OILRIG_OBJ_AMBUSH" );
    precachestring( &"OILRIG_OBJ_EXPLOSIVES_LOCATE" );
    precachestring( &"OILRIG_HINT_AMBUSH_COVER" );
    precachestring( &"OILRIG_HINT_C4_SWITCH" );
    precachestring( &"OILRIG_MISSIONFAIL_ENEMIES_ALERTED_HOSTAGES_KILLED" );
    precachestring( &"OILRIG_HINT_C4_DETONATE" );
    precachestring( &"SCRIPT_PLATFORM_OILRIG_HINT_STEALTH_KILL" );
    precachestring( &"OILRIG_HINT_THERMAL_WEAPON_USE" );
    precachestring( &"OILRIG_HINT_THERMAL_WEAPON_FIND" );
    precacheshader( "h1_hud_tutorial_blur" );
    precacheshader( "h1_hud_tutorial_border" );
}

_ID45905( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    waitframe;

    if ( isdefined( var_1 ) && var_1 != 1 )
    {
        var_3 = getentarray( "team2", "targetname" );
        level._ID37355 = _ID42407::_ID3339( var_3 );
        _ID42237::_ID3350( level._ID37355, ::_ID52814 );
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
        _ID42237::_ID3350( level._ID35507, ::_ID46555 );
    }

    level._ID51388 = [];
    level._ID51388 = _ID42407::_ID3317( level._ID35507, level._ID37355 );

    if ( _ID42407::_ID20505() )
        return;

    var_4 = level._ID35507;
    var_5 = getnodearray( "friendlyStart" + var_0, "targetname" );

    while ( var_4.size > 0 )
    {
        wait 0.05;

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            if ( isdefined( var_5[var_6]._ID922 ) )
            {
                switch ( var_5[var_6]._ID922 )
                {
                    case "nodePrice":
                        level._ID44035 _ID42407::_ID37393( var_5[var_6] );
                        var_4 = _ID42237::_ID3321( var_4, level._ID44035 );
                        var_5 = _ID42237::_ID3321( var_5, var_5[var_6] );
                        continue;
                    case "nodeFriendly02":
                        level._ID49792 _ID42407::_ID37393( var_5[var_6] );
                        var_4 = _ID42237::_ID3321( var_4, level._ID49792 );
                        var_5 = _ID42237::_ID3321( var_5, var_5[var_6] );
                        continue;
                    case "nodeFriendly03":
                        level._ID48061 _ID42407::_ID37393( var_5[var_6] );
                        var_4 = _ID42237::_ID3321( var_4, level._ID48061 );
                        var_5 = _ID42237::_ID3321( var_5, var_5[var_6] );
                        continue;
                    default:
                        continue;
                }
            }
        }
    }

    if ( isdefined( var_2 ) && var_2 == 1 )
    {
        var_7 = getnodearray( "playerStart" + var_0, "targetname" );
        _ID42407::_ID37442( var_7 );
    }
}

_ID52814()
{
    wait 0.5;
    _ID42407::_ID8925( "on" );
    thread _ID42407::_ID22746();
    _ID42407::_ID32628( 1 );
    self setthreatbiasgroup( "oblivious" );
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

    if ( isdefined( self._ID922 ) && self._ID922 == "body_discover" )
        self._ID1258 = 0;

    self._ID511 = 1;
    var_0 = self._ID24424;
    self._ID24424 = 0.7;
    self setthreatbiasgroup( "oblivious" );
    self._ID3189 = "generic";
    _ID42407::_ID8925( "on" );
    wait 0.5;
    thread _ID46334();
    thread _ID46571();
    _ID42237::_ID14421( "ambush_enemies_alerted", "ambush_enemies_alerted_prematurely" );
    wait 1;
    self._ID511 = 0;
    self setthreatbiasgroup( "axis" );
    _ID42407::_ID8925( "off" );
    self._ID24424 = var_0;
}

_ID54045()
{
    self endon( "death" );
    self._ID511 = 1;
    self setthreatbiasgroup( "oblivious" );
    maps\jake_tools::_ID32520( 1000 );
    self._ID10998 = 1;
    self setthreatbiasgroup( "oblivious" );
    self clearenemy();
    wait 0.1;
    thread _ID42338::_ID26367();
}

_ID44003( var_0 )
{
    level endon( "breach_explosion" );

    for (;;)
    {
        self waittill( "damage",  var_1, var_2  );

        if ( isplayernumber( var_2 ) )
            thread _ID46690( var_0 );
    }
}

_ID46690( var_0 )
{
    level notify( "doing_generic_mission_fail" );
    level endon( "doing_generic_mission_fail" );
    wait 0.5;
    thread _ID54338();

    if ( isdefined( var_0 ) )
        var_0 thread _ID42237::_ID27077( "weap_deserteagle_fire_npc" );

    wait 0.25;
    level._ID794 thread _ID42237::_ID27000( "emt_oilrig_alarm_alert" );

    if ( isdefined( var_0 ) )
        var_0 thread _ID42237::_ID27077( "weap_deserteagle_fire_npc" );

    wait 0.5;
    thread _ID48512();
}

_ID54338()
{
    var_0 = getentarray( "blood_spatters", "targetname" );
}

_ID48512()
{
    _ID42237::_ID14402( "oilrig_mission_failed" );
    setdvar( "ui_deadquote", &"OILRIG_MISSIONFAIL_ENEMIES_ALERTED_HOSTAGES_KILLED" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID46571()
{
    self endon( "death" );
    thread _ID48112();
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
    var_0 = getent( "exposed_ambush_spot", "targetname" );

    for (;;)
    {
        wait 1.5;

        if ( self istouching( var_0 ) )
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

    foreach ( var_3 in var_0 )
    {
        wait(randomfloatrange( 0.25, 1 ));
        var_4 = var_3 _ID42407::_ID35014();
        var_1[var_1.size] = var_4;
    }

    return var_1;
}

_ID46435()
{
    self._ID48297 = self._ID740;
    self._ID44067 = self._ID65;
    self rotateyaw( 160, 0.5 );
    self moveto( self._ID740 + ( 3, 0, 0 ), 0.1 );
    self connectpaths();
}

_ID47956()
{
    self._ID48297 = self._ID740;
    self._ID44067 = self._ID65;
    self rotateyaw( -110, 0.5 );
    self moveto( self._ID740 + ( 3, 0, 0 ), 0.1 );
    self connectpaths();
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
    if ( !isdefined( var_0 ) )
        var_0 = 1024;

    var_1 = getaiarray( "axis" );
    thread _ID42407::_ID2265( var_1, var_0 );
}

_ID48415( var_0, var_1 )
{
    var_2 = spawn( "script_model", var_1._ID740 + ( 0, 0, 0 ) );
    var_2 setmodel( "vehicle_submarine_nuclear" );
    var_2._ID740 = var_1._ID740;
    var_2._ID65 = var_1._ID65;
    var_2._ID135 = undefined;
    var_2._ID51860 = undefined;
    var_3 = getentarray( "submarine_" + var_0, "targetname" );

    foreach ( var_5 in var_3 )
    {
        if ( isdefined( var_5._ID31388 ) && var_5._ID31388 == "sub" )
        {
            var_2._ID135 = var_5;
            continue;
        }

        var_2._ID51860 = var_5;
    }

    var_2._ID9725 = undefined;
    var_2._ID45822 = undefined;

    if ( var_0 == "01" )
    {
        var_2._ID45822 = getentarray( "sub_dds_01", "targetname" );

        foreach ( var_5 in var_2._ID45822 )
        {
            if ( isdefined( var_5._ID922 ) && var_5._ID922 == "body" )
            {
                var_2._ID9725 = spawn( "script_origin", var_5._ID740 );
                var_2._ID9725._ID65 = var_5._ID65;
                var_2._ID9725._ID65 = var_5._ID65;
                break;
            }
        }

        foreach ( var_5 in var_2._ID45822 )
            var_5 linkto( var_2._ID9725 );
    }
    else
        var_2._ID9725 = getent( "sub_dds_" + var_0, "targetname" );

    var_2._ID51261 = getent( "dds_door_" + var_0, "targetname" );
    var_2._ID51261._ID51935 = undefined;

    if ( var_0 == "01" )
    {
        var_2._ID51261._ID51935 = getent( "dds_door_01_seal", "targetname" );
        var_2._ID51261._ID51935 linkto( var_2._ID51261 );
    }

    var_2._ID135._ID740 = var_2._ID740;
    var_2._ID135._ID65 = var_2._ID65;
    var_2._ID3189 = "submarine_" + var_0;

    if ( var_2._ID3189 == "submarine_01" )
        var_2._ID135 linkto( var_2, "TAG_ORIGIN", ( -10, 0, -324 ), ( 0, 0, 0 ) );
    else
        var_2._ID135 linkto( var_2, "TAG_ORIGIN", ( -10, 0, -348 ), ( 0, 0, 0 ) );

    var_2._ID135 show();
    var_2._ID51261 linkto( var_2._ID9725 );
    var_2._ID9725._ID740 = var_2._ID740;
    var_2._ID9725._ID65 = var_2._ID65;
    var_2._ID9725 linkto( var_2, "TAG_ORIGIN", ( 330, 0, 100 ), ( 0, 0, 0 ) );
    var_2 _ID42407::_ID3428();
    var_2 hidepart( "origin_animate_jnt" );
    var_2 thread _ID49553();
    return var_2;
}

_ID48579( var_0, var_1 )
{
    var_2 = spawn( "script_model", var_1._ID740 + ( 0, 0, 0 ) );
    var_2 setmodel( "vehicle_submarine_sdv" );
    var_2._ID740 = var_1._ID740;
    var_2._ID65 = var_1._ID65;
    var_2._ID3189 = "sdv_" + var_0;
    var_2 _ID42407::_ID3428();
    var_2 thread _ID47468();
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
        case "sdv_01":
            self waittillmatch( "single anim",  "passing"  );
            _ID42237::_ID14402( "sdv_01_passing" );
            break;
    }

    self waittillmatch( "single anim",  "arrival"  );
    self notify( "arriving" );
    _ID42237::_ID14402( var_2 );
    self waittillmatch( "single anim",  "stop"  );
    self._ID24481 = 0;
    self notify( "stopped_moving" );
    _ID42237::_ID14402( var_1 );
    self waittillmatch( "single anim",  "end"  );
}

_ID49553()
{

}

_ID50261()
{
    self rotateto( self._ID65 + ( 0, -90, 0 ), 12, 2, 2 );
    self playsound( "scn_subhatch_open" );
}

_ID54636()
{
    var_0 = getent( "killtrigger_ocean", "targetname" );
    var_0 notify( "turn_off" );
}

_ID48391()
{
    var_0 = getent( "killtrigger_ocean", "targetname" );
    var_0 notify( "turn_off" );
    var_0 endon( "turn_off" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( isdefined( var_1 ) && isplayernumber( var_1 ) )
        {
            var_2 = _ID42237::_ID35164();
            var_2._ID740 = var_1._ID740;
            var_2._ID65 = var_1._ID65;
            var_1 playerlinktoblend( var_2, "tag_origin", 0.05 );
            var_1 kill();

            if ( _ID42407::_ID20614() )
            {
                setdvar( "ui_deadquote", &"OILRIG_MISSIONFAIL_WATER_DEATH" );
                level notify( "mission failed" );
                _ID42407::_ID23778();
            }

            break;
        }
    }
}

_ID43272( var_0, var_1 )
{
    var_2 = getaiarray( "allies" );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( isdefined( var_5._ID922 ) && var_5._ID922 == var_1 )
            var_3 = _ID42237::_ID3293( var_3, var_5 );
    }

    if ( var_3.size == 0 )
    {

    }

    return var_3[0];
}

_ID46010( var_0 )
{
    level._ID28001 = var_0;
    self setmovespeedscale( var_0 );
}

_ID46897( var_0 )
{
    var_0 endon( "death" );
    var_1 = 32;
    var_2 = 0;
    var_3 = undefined;
    var_4 = undefined;

    while ( isdefined( var_0 ) )
    {
        wait(randomfloatrange( 15, 25 ));
        var_5 = undefined;
        level._ID35507 = _ID42407::_ID29506( level._ID35507 );
        var_6 = _ID42237::_ID15567( level._ID794._ID740, level._ID35507 );

        while ( !isdefined( var_5 ) )
        {
            wait 1.5;
            var_6 = _ID42407::_ID29506( var_6 );

            foreach ( var_4 in var_6 )
            {
                if ( !isdefined( var_4 ) )
                    continue;

                var_8 = level._ID794 geteye();

                if ( _ID42237::_ID41802( var_8, level._ID794 getplayerangles(), var_4._ID740, level._ID8760["45"] ) )
                {
                    continue;
                    continue;
                }

                var_3 = spawn( "script_origin", var_0._ID740 + ( 0, 0, -200 ) );
                var_0 thread _ID42237::_ID10280( var_3 );
                var_3 linkto( var_0 );

                if ( !bullettracepassed( var_4 gettagorigin( "tag_flash" ) + ( 0, 0, var_1 ), var_3._ID740, 1, var_4 ) )
                {
                    var_3 delete();
                    continue;
                    continue;
                }

                var_5 = var_4;
                break;
            }
        }

        if ( isdefined( var_3 ) && bullettracepassed( var_5 gettagorigin( "tag_flash" ) + ( 0, 0, var_1 ), var_3._ID740, 1, var_5 ) )
        {
            if ( !isdefined( var_5 ) )
                continue;

            magicbullet( "rpg_nodamage", var_5 gettagorigin( "tag_flash" ) + ( 0, 0, var_1 ), var_3._ID740 );
            var_3 delete();
            var_2 = _ID42237::_ID41802( level._ID794 geteye(), level._ID794 getplayerangles(), var_0._ID740, level._ID8760["45"] );
            wait 0.5;

            if ( var_2 )
                _ID47516();
        }
    }
}

_ID45619( var_0 )
{
    level endon( "oilrig_stealth_monitor_off" );
    level._ID53103 = 1;
    level thread _ID46565();
    var_1 = getaiarray( "axis" );
    _ID42237::_ID3350( var_1, ::_ID46395 );
    level._ID794 thread _ID53029();
    level waittill( "stealth_broken" );
    level._ID794._ID52561 = 0;

    if ( isdefined( var_0 ) )
        thread _ID46690();
}

_ID46395()
{
    self endon( "death" );

    if ( isdefined( self._ID922 ) && self._ID922 == "not_alerted" )
        return;

    self notify( "running_stealth_monitor_on_me" );
    self endon( "running_stealth_monitor_on_me" );
    level endon( "oilrig_stealth_monitor_off" );
    thread _ID49303();
    self addaieventlistener( "grenade danger" );
    self addaieventlistener( "gunshot" );
    self addaieventlistener( "silenced_shot" );
    self addaieventlistener( "bulletwhizby" );
    self addaieventlistener( "projectile_impact" );
    wait 0.5;

    while ( isalive( self ) )
    {
        self waittill( "ai_event",  var_0, var_1  );

        if ( var_0 == "grenade danger" && var_1._ID669 != "h2_projectile_cheat_soccer_ball" || var_0 == "damage" || var_0 == "gunshot" || var_0 == "bulletwhizby" || var_0 == "projectile_impact" || var_0 == "explode" )
            break;
    }

    wait 1;

    if ( isalive( self ) )
        thread _ID48687();
}

_ID48687()
{
    if ( isdefined( self ) && isalive( self ) && !isdefined( self._ID54440 ) )
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

    while ( isdefined( self ) )
    {
        wait 1;

        if ( !_ID42237::_ID41802( self._ID740, self._ID65, level._ID794._ID740 + ( 0, 0, 32 ), level._ID8760["45"] ) )
            continue;

        if ( !sighttracepassed( self._ID740 + ( 0, 0, 32 ), level._ID794._ID740 + ( 0, 0, 32 ), 0, self ) )
            continue;

        if ( distancesquared( self._ID740, level._ID794._ID740 ) < level._ID43315 )
            break;
    }

    thread _ID48687();
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

    foreach ( var_1 in level._ID35507 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        var_1._ID511 = 1;
        var_1 setthreatbiasgroup( "oblivious" );
    }
}

_ID54322()
{
    level._ID794._ID511 = 0;

    foreach ( var_1 in level._ID35507 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        var_1._ID511 = 0;
        var_1 setthreatbiasgroup( "allies" );
    }
}

_ID45969( var_0, var_1 )
{
    wait(var_0);
    setculldist( var_1 );
}

_ID43426( var_0 )
{
    self endon( "death" );
    var_0 waittill( "trigger" );
    self notify( "landing" );
    _ID42407::_ID40118();
    self setgoalyaw( var_0._ID65[1] );
    _ID42544::_ID40185( undefined, var_0 );
    self notify( "landed" );
}

_ID53488()
{
    var_0 = getentarray( "script_origin", "classname" );
    var_1 = _ID42407::_ID3317( var_0, level._ID36707 );
    _ID42237::_ID3350( var_1, ::_ID44414 );
}

_ID44414()
{
    if ( !isdefined( self._ID31190 ) )
        return;

    _ID42237::_ID14400( self._ID31190 );

    if ( getdvar( "oilrig_debug" ) == "1" )
        thread _ID42407::_ID9904( self._ID31190, self._ID740, 9999 );

    self waittill( "trigger" );
    _ID42237::_ID14402( self._ID31190 );

    if ( getdvar( "oilrig_debug" ) == "1" )
        iprintlnbold( "flag: " + self._ID31190 + " has been set" );
}

_ID50236()
{
    _ID42237::_ID3350( level._ID35507, ::_ID54181 );
}

_ID51102()
{
    foreach ( var_1 in level._ID35507 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        var_1 notify( "stop_adjust_movement_speed" );
        var_1._ID24424 = 1.0;

        if ( isdefined( var_1._ID50147 ) )
            var_1._ID50147 = 1;
    }
}

_ID54181()
{
    if ( !isdefined( self ) )
        return;

    self notify( "stop_adjust_movement_speed" );
    self endon( "death" );
    self endon( "stop_adjust_movement_speed" );

    for (;;)
    {
        wait(randomfloatrange( 0.5, 1.5 ));

        while ( _ID53164() )
        {
            self._ID24424 = 2.5;
            wait 0.05;
        }

        self._ID24424 = 1.0;

        if ( isdefined( self._ID50147 ) )
            self._ID50147 = 1;
    }
}

_ID53164()
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );

    if ( !isdefined( self._ID451 ) )
        return 0;

    if ( self._ID603 || self._ID1012 != "none" )
        return 0;

    if ( distancesquared( self._ID740, self._ID451 ) <= level._ID47460 )
        return 0;

    if ( distance2dsquared( self._ID740, level._ID794._ID740 ) <= 63504 && abs( self._ID740[2] - level._ID794._ID740[2] ) < 72 )
        return 0;

    if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 getplayerangles(), self._ID740, level._ID8760["60"] ) )
        return 0;

    return 1;
}

_ID50972()
{
    level._ID49941 = [];
    level._ID45175 = [];
    level._ID48906 = [];
    level._ID54394 = [];
    var_0 = getent( "effects_underwater", "script_noteworthy" );
    var_1 = getent( "effects_lower_rig", "script_noteworthy" );
    var_2 = getent( "effects_mid_decks", "script_noteworthy" );
    var_3 = getent( "effects_top_deck", "script_noteworthy" );
    var_4 = spawn( "script_origin", ( 0, 0, 0 ) );

    for ( var_5 = 0; var_5 < level._ID9242.size; var_5++ )
    {
        var_6 = level._ID9242[var_5];
        var_4._ID740 = var_6._ID40005["origin"];

        if ( var_4 istouching( var_0 ) )
        {
            level._ID49941[level._ID49941.size] = var_6;
            continue;
        }

        if ( var_4 istouching( var_1 ) )
        {
            level._ID45175[level._ID45175.size] = var_6;
            continue;
        }

        if ( var_4 istouching( var_2 ) )
        {
            level._ID48906[level._ID48906.size] = var_6;
            continue;
        }

        if ( var_4 istouching( var_3 ) )
        {
            if ( issubstr( var_6._ID40005["fxid"], "oilrig_burnoff_fire" ) )
                continue;

            level._ID54394[level._ID54394.size] = var_6;
            continue;
        }
    }

    var_4 delete();
}

_ID48500()
{
    for (;;)
    {
        wait 1;
        self waittill( "trigger" );
        setsaveddvar( "ui_hidemap", 0 );
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

    foreach ( var_3 in level._ID6082 )
    {
        var_3._ID11014 = 1;
        var_3 _ID42407::_ID10949();
    }

    _ID42237::_ID14413( var_1 );
    level._ID6082 = _ID42407::_ID29506( level._ID6082 );

    foreach ( var_3 in level._ID6082 )
    {
        var_3._ID11014 = undefined;
        var_3 _ID42407::_ID12508();
    }
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
            var_1 = getentarray( self._ID1191, "targetname" );
            var_0 = level._ID46370 - level._ID35507.size;

            for ( var_3 = 0; var_3 < var_0; var_3++ )
            {
                var_2 = var_1[var_3] _ID42407::_ID35014( 1 );

                if ( isdefined( var_2 ) )
                {
                    var_2 _ID42407::_ID32315( "r" );
                    level._ID35507 = _ID42237::_ID3293( level._ID35507, var_2 );
                    var_2 thread _ID53083();
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
    if ( !isdefined( self ) )
        return;

    _ID42231::_ID7827();

    if ( isdefined( self ) )
        self delete();
}

_ID47688( var_0 )
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( var_0 ) && var_0.size > 0 )
    {
        if ( _ID42407::_ID20542( var_0, self ) )
            return;
    }

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    if ( !issentient( self ) )
    {

    }

    self delete();
}

_ID43226( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        var_4 = var_3 _ID42407::_ID15547();

        if ( var_4.size )
            var_1 = _ID42407::_ID3317( var_1, var_4 );
    }

    if ( var_1.size )
        return 0;
    else
        return 1;
}

_ID52482( var_0 )
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );

    while ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 getplayerangles(), self._ID740, level._ID8760["65"] ) || self._ID834 != self._ID7._ID41701["right"] )
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
    if ( !isdefined( self ) )
        return;

    self endon( "death" );
    waitframe;

    if ( level._ID15361 == 0 )
        self delete();
}

ai_dont_change_floor_spawn()
{
    self.dontchangefloor = 1;
}

_ID50454()
{
    var_0 = getent( "white_brush_delete", "targetname" );

    if ( isdefined( var_0 ) )
        var_0 delete();

    var_0 = getent( "black_brush_delete", "targetname" );

    if ( isdefined( var_0 ) )
        var_0 delete();
}

_ID48078( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );
    _ID42237::_ID3350( var_1, ::_ID51132 );
}

_ID51132( var_0 )
{
    self._ID3189 = self._ID669;
    _ID42407::_ID3428();
    var_1 = randomfloatrange( 0.8, 1.5 );
    var_2 = _ID42407::_ID16120( "idle" )[0];
    self _meth_83d4( var_2, var_1 );
    thread _ID42259::_ID3044( self, "idle", "stop_looping_chains" );
}

heli_additive_animations()
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    self._ID3189 = "attack_littlebird";
    self setanim( level._ID30895[self._ID3189]["front_react"] );
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
    var_0 = getent( "oilr_water_plane_01", "targetname" );
    var_1 = getent( "oilr_water_plane_02", "targetname" );
    var_2 = getent( "oilr_water_plane_near", "targetname" );
    var_3 = getent( "water_plane_distortion", "targetname" );
    _ID42237::_ID14413( "player_slitting_throat" );
    wait 1.4;
    var_0 show();
    var_2 hide();
    wait 6;
    thread replacemodelforwetplayer();
    var_3 hide();
    _ID42237::_ID14413( "player_has_started_planting_c4" );
    var_0 hide();
    var_1 show();
}

replacemodelforwetallies()
{
    if ( _ID42237::_ID14385( "upper_room_breached" ) || !isdefined( self ) )
        return;

    if ( !_ID42237::_ID14385( "player_slitting_throat" ) )
        _ID42237::_ID14413( "player_slitting_throat" );

    self.oldmodel = self._ID669;
    self.oldhead = self._ID18304;

    switch ( self._ID18304 )
    {
        case "head_hero_ghost_udt":
        case "head_hero_soap_udt":
        case "head_seal_udt_d_lifesaver":
        case "head_seal_udt_f_lifesaver":
        case "head_seal_udt_i_lifesaver":
        case "head_seal_udt_asia_lifesaver":
        case "head_seal_udt_a":
        case "head_seal_udt_c":
        case "head_seal_udt_d":
        case "head_seal_udt_e":
        case "head_seal_udt_f":
        case "head_seal_udt_i":
        case "head_seal_udt_asia":
            _ID42226::_ID32651( self._ID18304 + "_wet" );
            break;
        default:
            break;
    }

    switch ( self._ID669 )
    {
        case "body_hero_seal_udt_ghost":
        case "body_hero_seal_udt_soap":
        case "body_seal_udt_assault_a":
        case "body_seal_udt_assault_b":
        case "body_seal_udt_smg":
            self setmodel( self._ID669 + "_wet" );
            break;
        default:
            break;
    }

    _ID42237::_ID14413( "upper_room_breached" );
    wait 1.0;

    if ( isdefined( self ) )
    {
        _ID42226::_ID32651( self.oldhead );
        self setmodel( self.oldmodel );
    }
}

replacemodelforwetplayer()
{
    level._ID30904["player_rig"] = "viewhands_udt_wet";
    level._ID794 setviewmodel( "viewhands_udt_wet" );
    _ID42237::_ID14413( "obj_c4_ambush_plant_complete" );
    level._ID30904["player_rig"] = "viewhands_udt";
    level._ID794 setviewmodel( "viewhands_udt" );
    level._ID30904["h2_active_breacher_rig"] = "viewbody_udt";
    level._ID30904["worldbody"] = "viewbody_udt";
}

soap_stairs_anim()
{
    var_0 = getnode( "stairs_anim_node", "targetname" );
    var_1 = getent( "stairs_anim_trigger", "targetname" );
    var_1 waittill( "trigger" );
    var_0 _ID42259::_ID3074( level._ID44035, "stairs_turn" );
    var_0 _ID42259::_ID3111( level._ID44035, "stairs_turn" );
    level._ID44035 _ID42407::_ID12445();
}

drop_weapon_ai()
{
    wait 2.1;
    level._ID49527 dropweapon( level._ID49527._ID1302, "right", 1 );
}

submarine_02_dds()
{
    self._ID9725 = getent( "sub_dds_02", "targetname" );
    self._ID51261 = getent( "dds_door_02", "targetname" );
    self._ID51261 linkto( self._ID9725 );
    self._ID9725._ID740 = self._ID740;
    self._ID9725._ID65 = self._ID65;
    self._ID9725 linkto( self, "TAG_ORIGIN", ( 330, 0, 100 ), ( 0, 0, 0 ) );
}

rotating_drill( var_0, var_1 )
{
    for (;;)
    {
        self rotatevelocity( ( 0, var_0, 0 ), var_1 );
        wait(var_1);
    }
}

garage_door_think()
{
    var_0 = getent( "door_clip_deck1", "targetname" );
    var_0 notsolid();
    _ID42237::_ID14413( "upper_room_cleared" );
    var_0 solid();
}

c4_in_hand( var_0 )
{
    wait 1;
    self attach( "weapon_c4", "tag_inhand" );
    var_1 = getanimlength( level._ID30895["generic"]["C4_plant_start"] );
    wait(var_1 - 1);
    var_0 show();
    self detach( "weapon_c4", "tag_inhand" );
    playfxontag( _ID42237::_ID16299( "light_c4_blink_nodlight" ), var_0, "tag_fx" );
    var_0 _ID42407::_ID27079( "c4_bounce_default" );
}

hide_show_props()
{
    var_0 = getscriptablearray( "icechunks_hide", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 hide();

    _func_31c( 1 );
    _ID42237::_ID14413( "player_breaks_surface" );

    foreach ( var_2 in var_0 )
        var_2 show();

    _func_31b( 1 );
}

animated_palette()
{
    var_0 = getent( "animated_palette", "targetname" );
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
    var_0 = getentarray( "animated_crane_hook", "targetname" );
    _ID42237::_ID3350( var_0, ::animated_hooks_think );
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
    playfxontag( level._ID1426["aircraft_spotlight_cockpit_oilrig"], level._ID53676, "tag_origin" );
}

delete_railing_guy( var_0 )
{
    var_1 = getent( "railing_guy_trig", "targetname" );
    var_2 = var_0 _ID42237::_ID46831( "j_mainroot" );
    var_2 = spawn( "script_model", var_0 getorigin() );
    var_2 setmodel( "tag_origin" );
    var_2 linkto( var_0, "j_mainroot" );

    while ( !var_2 istouching( var_1 ) )
        waittillframeend;

    var_0 kill();
    var_0 delete();
    playfx( level._ID1426["water_object_splash_wide_tall_oilrig"], var_2._ID740 );
    var_2 _ID42407::_ID27079( "scn_oilrig_smoker_water_splash" );
    var_2 delete();
}

spawn_weapon_m14()
{
    var_0 = spawn( "script_model", level._ID53676._ID740 );
    var_0 setmodel( "h2_weapon_m14ebr_scoped_arctic" );
    var_0 linkto( level._ID53676, "tag_detach_left", ( -18, 10, 28 ), ( 286.082, 300.887, -33.5348 ) );
    _ID42237::_ID14413( "littlebird_escape_lifted_off" );
    var_0 delete();
}

bring_back_rig()
{
    var_0 = getent( "oilrig_underwater_node", "targetname" );
    var_1 = getent( "oilrig_underwater_node_start", "targetname" );
    var_2 = var_1._ID740 - var_0._ID740;
    var_3 = getentarray( "oilrig_underwater", "targetname" );

    foreach ( var_5 in var_3 )
        var_5._ID740 = var_5._ID740 - var_2;
}

disable_hud_c4_plant()
{
    self waittill( "c4_anim_plant" );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "actionSlotsHide", 1 );
    wait 5;
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "compass", 1 );
    setsaveddvar( "actionSlotsHide", 0 );
}

breach_b_hide_objects()
{
    level endon( "player_at_deck1_midpoint" );
    var_0 = [];
    var_1 = [ "leaking", "animated_crane_hook", "com_wall_fan_blade_rotate", "derrick_thing", "animated_palette", "exploderanim, h2_oilrig_c4room_wires_anim", "ceiling_support" ];

    foreach ( var_3 in var_1 )
    {
        var_4 = getentarray( var_3, "targetname" );
        var_0 = _ID42237::_ID3296( var_0, var_4 );
    }

    var_6 = getentarray( "leaking", "targetname" );
    var_7 = [];

    foreach ( var_9 in var_6 )
    {
        if ( !isdefined( var_9._ID31388 ) )
            continue;

        var_7[var_7.size] = var_9;
    }

    var_0 = _ID42237::_ID3322( var_0, var_7 );

    for (;;)
    {
        _ID42237::_ID14413( "breach_B" );

        foreach ( var_12 in var_0 )
            var_12 hide();

        _func_31c( 2 );
        _ID42237::_ID14426( "breach_B" );

        foreach ( var_12 in var_0 )
            var_12 show();

        _func_31b( 2 );
    }
}

breach_a_hide_objects()
{
    level endon( "ambush_c4_triggered" );
    var_0 = getentarray( "ceiling_support", "targetname" );
    var_1 = getentarray( "leaking", "targetname" );
    var_2 = getentarray( "ambush_office", "script_noteworthy" );
    var_3 = [];

    foreach ( var_5 in var_1 )
    {
        if ( !isdefined( var_5._ID31388 ) )
            continue;

        var_3[var_3.size] = var_5;
    }

    var_7 = _ID42237::_ID3296( var_0, var_3 );
    var_8 = _ID42237::_ID3296( var_7, var_2 );

    for (;;)
    {
        _ID42237::_ID14413( "breach_A_hide" );

        foreach ( var_10 in var_8 )
            var_10 hide();

        _func_31c( 4 );
        _ID42237::_ID14426( "breach_A_hide" );

        foreach ( var_10 in var_8 )
            var_10 show();

        _func_31b( 4 );
    }
}

helicopter_objects_hide()
{
    _ID42237::_ID14413( "player_on_board_littlebird" );
    _func_31c( 2 );
    _func_31c( 3 );
    _func_31c( 6 );
    var_0 = getentarray( "ambush_office_destroyed", "script_noteworthy" );
    var_1 = [ "leaking", "animated_crane_hook", "com_wall_fan_blade_rotate", "exploderanim, h2_oilrig_c4room_wires_anim", "ceiling_support", "oilrig_underwater" ];
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        var_5 = getentarray( var_4, "targetname" );
        var_2 = _ID42237::_ID3296( var_2, var_5 );
    }

    var_7 = getentarray( "leaking", "targetname" );
    var_8 = [];

    foreach ( var_10 in var_7 )
    {
        if ( !isdefined( var_10._ID31388 ) )
            continue;

        var_8[var_8.size] = var_10;
    }

    var_2 = _ID42237::_ID3322( var_2, var_8 );

    foreach ( var_13 in var_2 )
        var_13 hide();

    foreach ( var_16 in var_0 )
        var_16 hide();
}

final_stair_animation_monitoring()
{
    var_0 = getent( "end_stair_script_trigger", "targetname" );

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
    var_0 = getent( "base_volume", "targetname" );
    var_1 = getent( "first_volume", "targetname" );
    var_2 = getent( "second_volume", "targetname" );
    var_3 = getent( "third_volume", "targetname" );
    var_4 = getent( "top_volume", "targetname" );
    var_5 = getentarray( "script_model", "code_classname" );
    var_6 = [];

    foreach ( var_8 in var_5 )
    {
        if ( var_8._ID669 == "mil_frame_charge" || var_8._ID669 == "h2_oilr_door_breaching_undamaged" || var_8._ID669 == "viewhands_player_udt" || var_8._ID669 == "oilrig_water_plane" || var_8._ID669 == "oilrig_water_plane_far" || var_8._ID669 == "oilrig_water_plane_near" || var_8._ID669 == "h2_oilr_water_under_top" || var_8._ID669 == "h2_fav_garage_door_03_animated" || var_8._ID669 == "weapon_c4" || var_8._ID669 == "h2_oilr_water_under_02" || var_8._ID669 == "h2_oilr_water_under" || var_8._ID669 == "h2_oilr_water_under_top" || var_8._ID669 == "intel_item_laptop" )
            var_6 = _ID42237::_ID3293( var_6, var_8 );
    }

    var_10 = _ID42237::_ID3322( var_5, var_6 );
    thread floor_volume( var_10, var_0, "base_floor" );
    thread floor_volume( var_10, var_1, "first_floor" );
    thread floor_volume( var_10, var_2, "second_floor" );
    thread floor_volume( var_10, var_3, "third_floor" );
    thread floor_volume( var_10, var_4, "top_floor" );
}

floor_volume( var_0, var_1, var_2 )
{
    level endon( "death" );
    var_3 = [];

    foreach ( var_5 in var_0 )
    {
        if ( ispointinvolume( var_5._ID740, var_1 ) )
            var_3[var_3.size] = var_5;
    }

    foreach ( var_5 in var_3 )
    {
        var_5 hide();
        var_5 dontcastshadows();
    }

    for (;;)
    {
        _ID42237::_ID14413( var_2 );

        foreach ( var_5 in var_3 )
        {
            if ( !isdefined( var_5 ) || _func_2a5( var_5 ) )
                continue;

            var_5 show();
            var_5 castshadows();
        }

        _ID42237::_ID14426( var_2 );

        foreach ( var_5 in var_3 )
        {
            if ( !isdefined( var_5 ) || _func_2a5( var_5 ) )
                continue;

            var_5 hide();
            var_5 dontcastshadows();
        }
    }
}

manhandler_first_breach_right_door_spawn_func()
{
    self.manhandler_additional_wait_func = ::ai_sync_before_entering_1st_breach_room_right_door;
}

ai_sync_before_entering_1st_breach_room_right_door()
{
    var_0 = [ level._ID49792, level._ID48061 ];
    var_1 = anglestoforward( self._ID65 );
    var_2 = gettime();

    while ( gettime() - var_2 < 3000 )
    {
        var_3 = 1;

        foreach ( var_5 in var_0 )
        {
            if ( !isalive( var_5 ) )
                continue;

            if ( vectordot( var_5._ID740 - self._ID740, var_1 ) > 0 )
            {
                var_3 = 0;
                break;
            }
        }

        if ( var_3 )
            return;

        wait 0.2;
    }
}

h2_intro_zodiac_wibble()
{
    _ID42237::_ID14413( "player_starting_stealth_kill" );
    var_0 = getent( "zodiacs_grate", "targetname" );

    while ( !_ID42237::_ID14385( "player_at_lower_breach" ) )
    {
        var_0 rotatepitch( 1, 2 );
        wait 2;
        var_0 rotatepitch( -1, 2 );
        wait 2;
    }
}
#using_animtree("generic_human");

init_custom_death_anim()
{
    level._ID30895["generic"]["stand_death_shoulder_stumble"] = %h2_stand_death_shoulder_stumble;
}
