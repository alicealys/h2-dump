// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\estate_mission_select_cam::_ID50320();
        return;
    }

    if ( maps\estate_beautiful_corner::_ID50786() )
        return;

    _ID42411::_ID6235( "script_vehicle_pavelow", "key_light", "tag_light_tail2", "fx/lights/pavelow_lighting_estate", "sheppard", 0.2 );
    _ID42407::_ID10126( ::_unknown_01C5 );
    _ID42407::_ID1951( "intro", ::_unknown_01D4, "Intro", ::_unknown_0606 );
    _ID42407::_ID1951( "ambush", ::_unknown_0202, "Ambush", ::_unknown_0618 );
    _ID42407::_ID1951( "forest_fight", ::_unknown_0252, "Forest Fight", ::_unknown_062A );
    _ID42407::_ID1951( "house_approach", ::_unknown_02C9, "House Approach", ::_unknown_063C );
    _ID42407::_ID1951( "house_breach", ::_unknown_0305, "House Breach" );
    _ID42407::_ID1951( "house_briefing", ::_unknown_034F, "House Briefing" );
    _ID42407::_ID1951( "house_defense", ::_unknown_03A5, "House Defense" );
    _ID42407::_ID1951( "escape", ::_unknown_0418, "Escape to LZ" );
    _ID42407::_ID1951( "ending", ::_unknown_04D9, "Ending Sequence" );
    _ID42407::_ID1951( "ending_body_throw", ::_unknown_0509 );
    _ID42407::_ID1951( "alt_ending", ::_unknown_04C3, "Alternate Ending" );
    _ID42407::_ID1951( "ending_noslowmo", ::_unknown_0531 );
    _ID42407::_ID1951( "diskdrive", ::_unknown_0558 );
    _ID42407::_ID1951( "helicopter_tweak", ::_unknown_056F );
    _ID42407::_ID1951( "helicopter_tweak_2", ::_unknown_0584 );
    _ID42407::_ID1951( "ending_pavelow_heli_tweak", ::_unknown_059C );
    _ID42407::_ID1951( "ending_shadow_heli_tweak", ::_unknown_05B8 );
    _ID42407::_ID1951( "fakeRPG_tweak", ::_unknown_05D4 );
    maps\estate_code::_ID49693();
    _ID45614::_ID616();
    thread _ID43858::_ID616();
    maps\estate_code::_ID49840();

    if ( _func_039( "loc_arabic_sku" ) == "1" )
    {
        var_0 = _func_1A1( "blowup_doll", "targetname" );
        var_0 _meth_805A();
    }

    _func_2F1( 0, "xyzw", 0.35, 0.4, 0.5, 0.5 );
}

_ID43360()
{
    _ID42237::_ID14402( "ending_flag" );
    thread _unknown_065A();
    thread maps\estate_code::_ID53250();
    thread maps\estate_code::_ID50897();
    thread maps\estate_code::_ID51906();
    thread maps\estate_code::_ID46441();
    thread maps\estate_code::_ID46675();
    thread maps\estate_code::_ID44572();
    thread _ID54017::_ID53823();
    thread maps\estate_code::_ID43060();
    thread _unknown_0BC5();
    thread _unknown_0FC2();
    thread _unknown_1247();
    _ID42237::_ID3350( _func_1A2( "boathouse_lamp", "targetname" ), maps\estate_code::animatescriptedmodel, "lamp" );
    _ID42237::_ID3350( _func_1A2( "flower_pot", "targetname" ), maps\estate_code::animatescriptedmodel, "flower" );
    _ID42237::_ID3350( _func_1A2( "chandelier_small", "targetname" ), maps\estate_code::animatescriptedmodel, "chandelier_small" );
    _ID42237::_ID3350( _func_1A2( "chandelier_big", "targetname" ), maps\estate_code::animatescriptedmodel, "chandelier_big" );
    thread _unknown_1570( "static_model_group_start_flag", "death", 1 );

    if ( !_ID42237::_ID14385( "skip_forestfight" ) )
    {
        thread _unknown_0816();
        thread _unknown_085E();
        thread _unknown_088F();
        thread _unknown_089B();
        thread _unknown_08A6();
        thread _unknown_088F();
        thread _unknown_08CA();
        thread _unknown_08D3();
        thread _unknown_0869();
    }

    if ( _ID42237::_ID14385( "skip_forestfight" ) )
        _ID42237::_ID14402( "start_ambush_music" );

    if ( !_ID42237::_ID14385( "skip_houseapproach" ) )
    {
        thread _unknown_092A();
        thread _unknown_090D();
        thread _unknown_0958();
        thread _unknown_091C();
        thread _unknown_09D5();
        thread _unknown_094D();
        thread maps\estate_code::_ID51071();
    }

    if ( !_ID42237::_ID14385( "skip_breachandclear" ) )
    {
        thread _unknown_0A0D();
        thread _unknown_0942();
        thread _unknown_0A4B();
        thread _unknown_0A53();
        thread _unknown_0A5A();
        thread maps\estate_code::_ID46841();
        thread maps\estate_code::_ID46239();
        thread maps\estate_code::_ID53329();
        thread maps\estate_code::_ID53588();
        thread maps\estate_code::_ID54458();
        thread maps\estate_code::_ID50657();
        thread maps\estate_code::_ID46931();
        thread maps\estate_code::_ID52620();
        thread maps\estate_code::_ID46007();
        thread maps\estate_code::_ID53073();
        thread maps\estate_code::_ID48306();
        thread maps\estate_code::_ID52393();
        thread maps\estate_code::_ID54468();
        thread maps\estate_code::_ID52003();
        thread maps\estate_code::_ID47498();
        thread maps\estate_code::_ID51440();
        thread maps\estate_code::_ID45947();
        thread maps\estate_code::_ID54647();
        thread maps\estate_code::_ID47884();
        thread maps\estate_code::_ID52559();
        thread maps\estate_code::_ID46191( "breach0_diningroom", "breaching_number_0" );
        thread maps\estate_code::_ID46191( "breach0_foyerhall", "breaching_number_0" );
        thread maps\estate_code::_ID46191( "breach0_bathroomrush", "breaching_number_0" );
        thread maps\estate_code::_ID47824( "breach0_diningroom", "breach0_diningroom_cancel", "foyer_breached_first" );
        thread maps\estate_code::_ID47824( "breach0_foyerhall", "breach0_foyerhall_cancel", "foyer_breached_first" );
        thread maps\estate_code::_ID46369( "breach0_diningroom_spawntrig", "breach0_diningroom_cancel", "breaching_number_0", "breach0_diningroom" );
        thread maps\estate_code::_ID46369( "breach0_foyerhall_spawntrig", "breach0_foyerhall_cancel", "breaching_number_0", "breach0_foyerhall" );
        thread maps\estate_code::_ID46369( "breach0_bathroomrush_spawntrig", undefined, "breaching_number_0", "breach0_bathroomrush" );
        thread maps\estate_code::_ID43781();
        thread maps\estate_code::_ID46191( "breach1_foyertodining", "breaching_number_1" );
        thread maps\estate_code::_ID46191( "breach1_officerush", "breaching_number_1" );
        thread maps\estate_code::_ID47824( "breach1_foyertodining", "breach1_foyertodining_cancel", "kitchen_breached_first" );
        thread maps\estate_code::_ID47824( "breach1_officerush", "breach1_officerush_cancel", "kitchen_breached_first" );
        thread maps\estate_code::_ID46369( "breach1_foyertodining_spawntrig", "breach1_foyertodining_cancel", "breaching_number_1", "breach1_foyertodining" );
        thread maps\estate_code::_ID46369( "breach1_officerush_spawntrig", undefined, "breaching_number_1", "breach1_officerush" );
        thread maps\estate_code::_ID46191( "breach2_stairdown", "breaching_number_2" );
        thread maps\estate_code::_ID47824( "breach2_stairdown", "breach2_stairdown_cancel", "basement_breached_first" );
        thread maps\estate_code::_ID46369( "breach2_stairdown_spawntrig", "breach2_stairdown_cancel", "breaching_number_2", "breach2_stairdown" );
    }

    if ( _ID42237::_ID14385( "skip_breachandclear" ) )
    {
        thread _ID42367::_ID10246( 0 );
        thread _ID42367::_ID10246( 1 );
        thread _ID42367::_ID10246( 2 );
        thread _ID42367::_ID10246( 3 );
        thread _ID42367::_ID10246( 4 );
        thread _ID42367::_ID10246( 5 );
        thread maps\estate_code::_ID52587();
        thread _unknown_0BF5();
    }

    if ( !_ID42237::_ID14385( "skip_housebriefing" ) )
    {
        thread maps\estate_code::_ID44888();
        thread _unknown_0CDA();
        thread maps\estate_code::_ID53598();
        thread maps\estate_code::_ID48519();
        thread maps\estate_code::_ID54219();
        thread _unknown_0D26();
        thread maps\estate_code::_ID47757();
        thread maps\estate_code::_ID43633();
        thread maps\estate_code::_ID52098();
    }

    if ( _ID42237::_ID14385( "skip_housebriefing" ) && !_ID42237::_ID14385( "skip_defense" ) )
    {
        thread maps\estate_code::_ID44888();
        thread maps\estate_code::_ID53598();
        thread maps\estate_code::_ID48519();
        thread maps\estate_code::_ID54219();
        thread _unknown_0D5F();
        thread maps\estate_code::_ID47757();
        thread maps\estate_code::_ID43633();
        thread maps\estate_code::_ID52098();
    }
}

_ID50973()
{
    _ID42475::_ID34575( "startIntro_checkpoint" );
    thread _unknown_053A();
    maps\estate_code::_ID43284();
    var_0 = _func_1A2( "broken_fence", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
    thread maps\estate_code::_ID48698();
    thread _unknown_099D();
    thread _unknown_09B7();
    thread maps\estate_code::_ID49861();
    thread maps\estate_code::_ID52872();
    thread maps\estate_code::_ID48845();
}

_ID54637()
{
    _ID42237::_ID14402( "ending_flag" );
    _ID42475::_ID34575( "startAmbush_checkpoint" );
    _ID42237::_ID14402( "skip_intro" );
    _ID42237::_ID14402( "print_first_objective" );
    thread _unknown_05A9();
    maps\estate_code::_ID48845();
    var_0 = _func_1A1( "player_ambush_start", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    maps\estate_code::_ID43284();
    var_1 = _func_0C8( "ghost_ambush_start", "targetname" );
    level._ID47319 _meth_81D2( var_1._ID740, var_1._ID65 );
    var_2 = _func_1A2( "starterguy", "script_noteworthy" );
    var_3 = _func_0C9( "friendly_ambush_start", "targetname" );
    var_4 = var_2.size <= var_3.size;
    var_5 = var_2;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6._ID740 = var_3[var_7]._ID740;
        var_6._ID65 = var_3[var_7]._ID65;
    }

    var_clear_2
    maps\estate_code::_ID49861();
    maps\estate_code::_ID52872();
    _ID42407::_ID1805( "ambush_start_redshirts" );
    _ID42407::_ID1805( "ambush_start_ghost" );
}

_ID47330()
{
    _ID42237::_ID14402( "ending_flag" );
    _ID42475::_ID34575( "startForestFight_checkpoint" );
    _ID42237::_ID14402( "skip_intro" );
    _ID42237::_ID14402( "skip_ambush" );
    _ID42237::_ID14402( "bouncing_betty_done" );
    _ID42237::_ID14402( "print_first_objective" );
    _ID42237::_ID14402( "deploy_rpg_ambush" );
    _ID42237::_ID14402( "deploy_mortar_attack" );
    _ID42237::_ID14402( "ambush_complete" );
    thread _unknown_068C();
    var_0 = _func_1A1( "player_forestfight_start", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    maps\estate_code::_ID43284();
    var_1 = _func_0C8( "ghost_ambush_start", "targetname" );
    level._ID47319 _meth_81D2( var_1._ID740, var_1._ID65 );
    var_2 = _func_1A2( "starterguy", "script_noteworthy" );
    var_3 = _func_0C9( "friendly_forestfight_start", "targetname" );
    var_4 = _func_0C9( "forestfight_friendlykill", "script_noteworthy" );
    var_5 = var_2.size <= var_3.size;
    var_6 = var_2;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7._ID740 = var_3[var_8]._ID740;
        var_7._ID65 = var_3[var_8]._ID65;
    }

    var_clear_2
    maps\estate_code::_ID49861();
    maps\estate_code::_ID52872();
    _ID42407::_ID1805( "forestfight_start_redshirts" );
    _ID42407::_ID1805( "ambush_start_ghost" );
    wait 0.05;
    var_9 = var_4;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];
        _func_18F( var_10._ID740, var_10._ID851, 1000, 180 );
    }

    var_clear_2
    var_clear_0
    wait 3;
    _ID42237::_ID14402( "smoke_screen_activated" );
    wait 3;
    _ID42237::_ID14402( "spawn_first_ghillies" );
}

_ID45804()
{
    _ID42237::_ID14402( "ending_flag" );
    _ID42475::_ID34575( "startHouseApproach_checkpoint" );
    _ID42237::_ID14402( "skip_intro" );
    _ID42237::_ID14402( "skip_ambush" );
    _ID42237::_ID14402( "skip_forestfight" );
    _ID42237::_ID14402( "bouncing_betty_done" );
    _ID42237::_ID14402( "print_first_objective" );
    _ID42237::_ID14402( "forestfight_littlebird_1" );
    _ID42237::_ID14402( "player_is_out_of_ambush_zone" );
    thread _unknown_07B9();
    var_0 = _func_1A1( "player_houseapproach_start", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    maps\estate_code::_ID43284();
    var_1 = _func_0C8( "ghost_houseapproach_start", "targetname" );
    level._ID47319 _meth_81D2( var_1._ID740, var_1._ID65 );
    maps\estate_code::_ID48309( "houseapproach" );
}

_ID43620()
{
    _ID42237::_ID14402( "ending_flag" );
    _ID42475::_ID34575( "startHouseBreach_checkpoint" );
    _ID42237::_ID14402( "skip_intro" );
    _ID42237::_ID14402( "skip_ambush" );
    _ID42237::_ID14402( "skip_forestfight" );
    _ID42237::_ID14402( "skip_houseapproach" );
    _ID42237::_ID14402( "bouncing_betty_done" );
    _ID42237::_ID14402( "print_first_objective" );
    _ID42237::_ID14402( "futilejeeps_destroyed" );
    _ID42237::_ID14402( "deploy_house_defense_jeeps" );
    _ID42237::_ID14402( "forestfight_littlebird_1" );
    _ID42237::_ID14402( "player_is_out_of_ambush_zone" );
    thread _unknown_0858();
    var_0 = _func_1A1( "breach_tweak_start", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    maps\estate_code::_ID43284();
    var_1 = _func_0C8( "ghost_breachstart_node", "targetname" );
    level._ID47319 _meth_81D2( var_1._ID740, var_1._ID65 );
    maps\estate_code::_ID48309( "breachhouse" );
    var_2 = _func_1A1( "house_approach_friendlytrigger", "targetname" );
    var_2 notify( "trigger" );
}

_ID52143()
{
    _ID42237::_ID14402( "ending_flag" );
    _ID42475::_ID34575( "startHouseBriefing_checkpoint" );
    _ID42237::_ID14402( "skip_intro" );
    _ID42237::_ID14402( "skip_ambush" );
    _ID42237::_ID14402( "skip_forestfight" );
    _ID42237::_ID14402( "skip_houseapproach" );
    _ID42237::_ID14402( "skip_breachandclear" );
    _ID42237::_ID14402( "bouncing_betty_done" );
    _ID42237::_ID14402( "print_first_objective" );
    _ID42237::_ID14402( "futilejeeps_destroyed" );
    _ID42237::_ID14402( "house_exterior_has_been_breached" );
    _ID42237::_ID14402( "house_interior_breaches_done" );
    _ID42237::_ID14402( "forestfight_littlebird_1" );
    _ID42237::_ID14402( "player_is_out_of_ambush_zone" );
    level notify( "breaching_number_3" );
    thread _unknown_0920();
    level._ID47335 = "zone_house";
    var_0 = _func_1A1( "briefing_tweak_start", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    maps\estate_code::_ID43284();
    var_1 = _func_0C8( "ghost_breachstart_node", "targetname" );
    level._ID47319 _meth_81D2( var_1._ID740, var_1._ID65 );
    maps\estate_code::_ID48309( "housebriefing" );
    var_2 = _func_1A1( "house_approach_friendlytrigger", "targetname" );
    var_2 notify( "trigger" );
    _ID42237::_ID14402( "all_enemies_killed_up_to_house_capture" );
}

_ID46682()
{
    _ID42237::_ID14402( "ending_flag" );
    _ID42475::_ID34575( "startHouseDefense_checkpoint" );
    _ID42237::_ID14402( "skip_intro" );
    _ID42237::_ID14402( "skip_ambush" );
    _ID42237::_ID14402( "skip_forestfight" );
    _ID42237::_ID14402( "skip_houseapproach" );
    _ID42237::_ID14402( "skip_breachandclear" );
    _ID42237::_ID14402( "skip_housebriefing" );
    _ID42237::_ID14402( "bouncing_betty_done" );
    _ID42237::_ID14402( "print_first_objective" );
    _ID42237::_ID14402( "futilejeeps_destroyed" );
    _ID42237::_ID14402( "house_exterior_has_been_breached" );
    _ID42237::_ID14402( "house_interior_breaches_done" );
    _ID42237::_ID14402( "forestfight_littlebird_1" );
    _ID42237::_ID14402( "player_is_out_of_ambush_zone" );
    _ID42237::_ID14402( "dsm_ready_to_use" );
    _ID42237::_ID14402( "house_briefing_is_over" );
    _ID42237::_ID14402( "download_started" );
    _ID42237::_ID14402( "skip_house_defense_dialogue" );
    level._ID47335 = "zone_house";
    level notify( "breaching_number_3" );
    thread _unknown_0A25();
    var_0 = _func_1A1( "briefing_tweak_start", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    maps\estate_code::_ID43284();
    var_1 = _func_0C8( "ghost_earlydefense_start", "targetname" );
    level._ID47319 _meth_81D2( var_1._ID740, var_1._ID65 );
    maps\estate_code::_ID48309( "housebriefing" );
    var_2 = _func_1A1( "house_approach_friendlytrigger", "targetname" );
    var_2 notify( "trigger" );
    _ID42237::_ID14402( "scarecrow_to_earlydefense_start" );
    _ID42237::_ID14402( "ozone_to_earlydefense_start" );
    _ID42237::_ID14402( "all_enemies_killed_up_to_house_capture" );
    wait 1;
    var_1 = _func_0C8( "ghost_earlydefense_start", "targetname" );
    level._ID47319 _meth_81B1( var_1 );
    thread _unknown_11E8();
    thread _unknown_1245();
}

_ID44462()
{
    _ID42237::_ID14402( "ending_flag" );
    _ID42475::_ID34575( "startEscape_checkpoint" );
    var_0 = _func_1A1( "final_area_fence", "targetname" );
    var_0 _meth_80B7();
    var_1 = _func_1A2( "broken_fence", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_8059();
    }

    var_clear_2
    var_clear_0
    var_5 = _func_1A1( "dsm", "targetname" );
    var_6 = _func_1A1( "dsm_obj", "targetname" );
    var_5 _meth_805A();
    var_6 _meth_805A();
    _ID42237::_ID14402( "skip_intro" );
    _ID42237::_ID14402( "skip_ambush" );
    _ID42237::_ID14402( "skip_forestfight" );
    _ID42237::_ID14402( "skip_houseapproach" );
    _ID42237::_ID14402( "skip_breachandclear" );
    _ID42237::_ID14402( "skip_housebriefing" );
    _ID42237::_ID14402( "skip_defense" );
    _ID42237::_ID14402( "bouncing_betty_done" );
    _ID42237::_ID14402( "print_first_objective" );
    _ID42237::_ID14402( "futilejeeps_destroyed" );
    _ID42237::_ID14402( "house_exterior_has_been_breached" );
    _ID42237::_ID14402( "house_interior_breaches_done" );
    _ID42237::_ID14402( "forestfight_littlebird_1" );
    _ID42237::_ID14402( "player_is_out_of_ambush_zone" );
    _ID42237::_ID14402( "house_briefing_is_over" );
    _ID42237::_ID14402( "download_started" );
    _ID42237::_ID14402( "skip_house_defense_dialogue" );
    _ID42237::_ID14402( "download_complete" );
    _ID42237::_ID14402( "dsm_recovered" );
    level._ID47335 = "zone_house";
    level notify( "breaching_number_3" );
    thread _unknown_0BB8();
    var_7 = _func_1A1( "briefing_tweak_start", "targetname" );
    level._ID794 _ID42407::_ID37404( var_7 );
    maps\estate_code::_ID43284();
    var_8 = _func_0C8( "ghost_earlydefense_start", "targetname" );
    level._ID47319 _meth_81D2( var_8._ID740, var_8._ID65 );
    maps\estate_code::_ID48309( "housebriefing" );
    var_9 = _func_1A1( "house_approach_friendlytrigger", "targetname" );
    var_9 notify( "trigger" );
    _ID42237::_ID14402( "scarecrow_to_earlydefense_start" );
    _ID42237::_ID14402( "ozone_to_earlydefense_start" );
    _ID42237::_ID14402( "all_enemies_killed_up_to_house_capture" );
    wait 1;
    level._ID46243 _ID42407::_ID36519();
    level._ID45604 _ID42407::_ID36519();
}

_ID50796()
{
    _ID42475::_ID34575( "startAltEnding_checkpoint" );
    var_0 = _func_1A1( "final_area_fence", "targetname" );
    var_0 _meth_80B7();
    var_1 = _func_1A2( "broken_fence", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_8059();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14402( "test_whole_ending" );
    _ID42237::_ID14402( "test_ending" );
    _ID42237::_ID14402( "play_ending_sequence" );
    _ID42237::_ID14402( "point_of_no_return" );
    thread _unknown_1CA0();
    thread maps\estate_code::_ID43284();
    thread _unknown_1A29();
    level._ID794 _meth_80F3( 1 );
    level._ID8862 = 1;
    wait 5;
    _ID42237::_ID14402( "finish_line" );
    _ID42237::_ID14402( "test_alt_ending" );
    _unknown_1653();
}

_ID52656()
{
    _ID42475::_ID34575( "startEnding_checkpoint" );
    var_0 = _func_1A1( "final_area_fence", "targetname" );
    var_0 _meth_80B7();
    _ID42407::_ID32515( "estate_end" );
    _ID42237::_ID14402( "test_whole_ending" );
    _ID42237::_ID14402( "test_ending" );
    _ID42237::_ID14402( "play_ending_sequence" );
    _ID42237::_ID14402( "point_of_no_return" );
    thread _unknown_1D11();
    thread maps\estate_code::_ID43284();
    thread _unknown_1A9A();
    level._ID794 _meth_80F3( 1 );
    level._ID8862 = 1;
    wait 5;
    _ID42237::_ID14402( "finish_line" );
    thread maps\estate_code::_ID53250();
    _unknown_16C0();
}

_ID50484()
{
    _ID42475::_ID34575( "startEndingBodyTossOnly_checkpoint" );
    _ID42237::_ID14402( "play_ending_sequence" );
    _ID42237::_ID14402( "test_ending_body_toss" );
    level._ID794 _meth_80F3( 1 );
    level._ID8862 = 1;
    _unknown_16E8();
}

_ID48106()
{
    _ID42475::_ID34575( "startEndingMeh_checkpoint" );
    var_0 = _func_1A1( "final_area_fence", "targetname" );
    var_0 _meth_80B7();
    _ID42237::_ID14402( "test_whole_ending" );
    _ID42237::_ID14402( "test_ending" );
    _ID42237::_ID14402( "play_ending_sequence" );
    _ID42237::_ID14402( "test_with_pavelow_already_in_place" );
    _ID42237::_ID14402( "no_slow_mo" );
    level._ID794 _meth_80F3( 1 );
    level._ID8862 = 1;
    thread maps\estate_code::_ID43284();
    _unknown_173D();
}

_ID44210()
{
    _ID42475::_ID34575( "startDiskdrive_checkpoint" );
    _ID42237::_ID14402( "download_started" );
    _ID42237::_ID14402( "download_test" );
    thread maps\estate_code::_ID53598();
    thread maps\estate_code::_ID48519();
}

_ID48624()
{
    _ID42475::_ID34575( "startHeliTweak_checkpoint" );
    _ID42237::_ID14402( "skip_intro" );
    var_0 = "md500_rush_3";
    _unknown_13FA( var_0 );
}

_ID46821()
{
    _ID42475::_ID34575( "startHeliTweak2_checkpoint" );
    _ID42237::_ID14402( "skip_intro" );
    var_0 = "boathouse_mi17";
    thread _unknown_1415( var_0 );
    var_0 = "boathouse_md500";
    thread _unknown_141F( var_0 );
}

_ID45292()
{
    _ID42475::_ID34575( "startHeliTweakPavelowEnd_checkpoint" );
    _ID42237::_ID14402( "skip_intro" );
    _ID42237::_ID14402( "point_of_no_return" );
    var_0 = _ID42237::_ID16638( "ending_chopper_node", "targetname" );
    level._ID794 _ID42407::_ID37441( var_0 );
    thread _unknown_1BCD();
}

_ID53244()
{
    _ID42475::_ID34575( "startHeliTweakShadowBirdsEnd" );
    _ID42237::_ID14402( "skip_intro" );
    _ID42237::_ID14402( "enter_the_littlebirds" );
    var_0 = _ID42237::_ID16638( "ending_chopper_node", "targetname" );
    level._ID794 _ID42407::_ID37441( var_0 );
    thread _unknown_1C9D();
}

_ID49268()
{
    _ID42475::_ID34575( "startFakeRPGTweak_checkpoint" );
    wait 5;
    maps\estate_code::_ID44143();
}

_ID52011()
{
    wait 2;
    _ID42318::_ID53688();
    _ID42475::_ID34575( "aud_start_stealth_infiltration_mix" );
    _ID42237::_ID14402( "slam_zoom_done" );
    level._ID794 _meth_8189( "crouch" );
    wait 1.8;
    _ID42475::_ID34575( "aud_ambient_chainsaw" );
    _ID42237::_ID14402( "start_ghost_intro_nav" );
    wait 5;
    _ID42237::_ID14402( "print_first_objective" );
}

_ID20225()
{
    _ID42237::_ID14413( "slam_zoom_done" );
    _ID42407::_ID28864( "est_snp1_inposition" );
    level._ID47319 _ID42407::_ID10805( "est_gst_engageonsight" );
    _ID42407::_ID28864( "est_sld1_rogerthat" );
    _ID42407::_ID28864( "est_sld2_solidcopy" );
    level._ID47319 _ID42407::_ID10805( "est_gst_letsgoletsgo" );
}

_ID25349()
{
    _ID42237::_ID14413( "print_first_objective" );
    var_0 = _func_1A1( "objective_location_makarov", "targetname" );
    _func_1E3( 1, "current", &"ESTATE_OBJ_ASSASSINATE", var_0._ID740 );
    _ID42237::_ID14421( "futilejeeps_destroyed", "deploy_house_defense_jeeps" );
    _func_1E3( 2, "current", &"ESTATE_OBJ_SAFEHOUSE" );
    _func_1E9( 2 );
    _func_1E7( 2, 1 );
    _func_114( 1, "active" );
    var_1 = _func_1A2( "breach_objective_exterior", "targetname" );
    _ID42367::_ID3438( var_1 );
    var_2 = _ID42367::_ID15588( var_1 );
    _ID42367::_ID25325( 2, var_2[0], var_2[1], var_2[2], var_2[3] );
    thread _unknown_1483( "0" );
    thread _unknown_148C( "1" );
    thread _unknown_1494( "2" );
    _ID42237::_ID14413( "house_exterior_has_been_breached" );
    _ID42407::_ID25326( 2 );
    wait 1;
    var_3 = _func_1A2( "breach_objective_interior", "targetname" );
    _ID42367::_ID3438( var_3 );
    level._ID52745 = 0;
    level._ID51069 = var_3.size;
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 thread _unknown_1500( var_5._ID31433 );
    }

    var_clear_2
    var_clear_0
    var_2 = _ID42367::_ID15588( var_3 );
    _ID42367::_ID25325( 2, var_2[0], var_2[1], var_2[2], var_2[3] );
    thread _unknown_1505( "3" );
    thread _unknown_150D( "4" );
    thread _unknown_1515( "5" );
    thread _unknown_1538();
    _ID42237::_ID14413( "house_interior_breaches_done" );
    _ID42237::_ID14413( "all_enemies_killed_up_to_house_capture" );
    _ID42237::_ID14413( "ghost_gives_regroup_order" );
    _func_1E5( 2, "done" );
    _func_114( 1, "done" );
    var_7 = _ID42237::_ID16638( "ghost_talknode", "targetname" );
    _func_1E3( 3, "current", &"ESTATE_OBJ_REGROUP", var_7._ID740 );
    thread _unknown_2068();
    _ID42237::_ID14413( "house_briefing_is_over" );
    _func_1E5( 3, "done" );
    var_8 = _func_1A1( "dsm", "targetname" );
    _func_1E3( 4, "current", &"ESTATE_OBJ_INTEL", var_8._ID740 );
    _ID42237::_ID14413( "download_started" );
    _func_114( 4, "done" );
    _func_1E3( 4, "current", &"ESTATE_OBJ_DOWNLOAD", var_8._ID740 );
    _func_1E5( 4, "current" );
    _func_0C7( 4, &"ESTATE_OBJ_POINTER_PROTECT" );
    _ID42237::_ID14413( "download_complete" );
    _func_114( 4, "done" );
    _func_1E3( 4, "current", &"ESTATE_OBJ_RETRIEVE", var_8._ID740 );
    _func_1E5( 4, "current" );
    _func_0C7( 4, &"ESTATE_OBJ_POINTER_RETRIEVE" );
    _ID42237::_ID14413( "dsm_recovered" );
    var_9 = _ID42237::_ID16638( "ending_chopper_node", "targetname" );
    _func_1E5( 4, "done" );
    _func_1E3( 5, "current", &"ESTATE_OBJ_LZ", var_9._ID740 );
    _ID42237::_ID14413( "made_it_to_lz" );
    _func_114( 5, "done" );
}

_ID44167( var_0 )
{
    level waittill( "breaching_number_" + var_0 );
    _ID42237::_ID14402( "house_exterior_has_been_breached" );
}

_ID51084( var_0 )
{
    level waittill( "breaching_number_" + var_0 );

    if ( _func_02F( level._ID43135._ID46552 ) && level._ID43135._ID46552 && var_0 == "4" )
    {
        var_1 = level._ID7757;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2 _meth_80B7();
        }

        var_clear_2
        var_clear_0
    }

    level._ID52745++;

    if ( level._ID52745 >= level._ID51069 )
        _ID42237::_ID14402( "house_interior_breaches_done" );
}

_ID45738()
{
    level waittill( "slomo_breach_over" );
    wait 3;
    _ID42407::_ID4422( "breach_completed" );
}

_ID45419( var_0 )
{
    level waittill( "breaching_number_" + var_0 );
    self _meth_80B7();
    var_1 = _func_1A2( "breach_objective_interior", "targetname" );
    _ID42367::_ID3438( var_1 );
    _ID42407::_ID25326( 2 );
    var_2 = _ID42367::_ID15588( var_1 );
    _ID42367::_ID25325( 2, var_2[0], var_2[1], var_2[2], var_2[3] );
}

_ID47667()
{
    if ( _ID42237::_ID14385( "ambush_complete" ) )
        thread maps\estate_code::_ID53502( level._ID794._ID740 );

    if ( !_ID42237::_ID14385( "ambush_complete" ) )
    {
        _ID42237::_ID14413( "bouncing_betty_activated" );
        _ID42407::_ID4917( "allies" );
        _ID42407::_ID4917( "axis" );
        thread maps\estate_code::_ID54083();
        thread _ID42407::_ID4422( "bouncing_betty_sequence" );
        _ID42237::_ID14413( "bouncing_betty_done" );
        _ID42237::_ID14402( "smoke_screen_activated" );
        _ID42237::_ID14413( "slow_motion_ambush_done" );
        wait 1;
    }

    _ID42407::_ID4918( "allies" );
    _ID42407::_ID4918( "axis" );
}

_ID47787()
{
    _ID42237::_ID14413( "deploy_mortar_attack" );
    wait 1;
    thread _ID54017::_ID43738( "1" );
    wait 2;
    thread _unknown_17ED();
    level._ID46243 _ID42407::_ID10805( "est_scr_presighted" );
    wait 3;
    level._ID47319 _ID42407::_ID10805( "est_gst_counterattack" );
    wait 3;
    level._ID14382 = 256;

    if ( !_ID42237::_ID14385( "player_is_out_of_ambush_zone" ) )
        level._ID47319 _ID42407::_ID10805( "est_gst_loseeminsmoke" );

    wait 5;
    thread _unknown_183F();
}

_ID51217()
{
    var_0 = _func_1A1( "forest_friendly_colortrig", "targetname" );
    var_0 notify( "trigger" );
    var_1 = _func_0DE( "allies" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _ID42407::_ID10896();
    }

    var_clear_2
    var_clear_0
}

_ID52805()
{
    _ID42237::_ID14413( "player_is_out_of_ambush_zone" );
    _ID42407::_ID4422( "into_the_forest" );
}

_ID50733()
{
    wait 3;

    if ( _func_02F( level._ID9413 ) && level._ID9413 >= 3 )
        wait 5;

    if ( !_ID42237::_ID14385( "player_is_out_of_ambush_zone" ) )
    {
        _ID42237::_ID14388( "can_save" );
        thread maps\estate_code::_ID44914();
    }
}

_ID48670()
{
    _ID42407::_ID3344( "forest_defender_rpg_ambush", ::_unknown_18D9 );
    _ID42237::_ID14413( "deploy_rpg_ambush" );
    var_0 = _func_1A1( "forest_defender_rpg_ambush_activator", "targetname" );
    var_0 notify( "trigger" );
}

_ID45042()
{
    self endon( "death" );
    _ID42237::_ID14415( "approaching_house", "stop_smokescreens" );
    wait(_func_0BA( 2, 4.25 ));
    var_0 = _func_1A1( "futilejeep_javelin_sourcepoint1", "targetname" );
    var_0 thread _ID42407::_ID27079( "weap_cheytac_fire_special" );
    _ID45456::_ID54623( self );
    self _meth_8058();
}

_ID48931()
{
    _ID42237::_ID14413( "bouncing_betty_done" );

    if ( !_ID42237::_ID14385( "ambush_complete" ) )
        wait 10;

    var_0 = _func_1A1( "forest_spawn_activator", "targetname" );
    var_0 notify( "trigger" );
}

_ID53051()
{
    _ID42407::_ID3344( "forest_defender", maps\estate_code::_ID45797 );
    _ID42407::_ID3344( "forest_defender", maps\estate_code::_ID47399 );
}

_ID52111()
{
    _ID42237::_ID14413( "spawn_first_ghillies" );
    thread maps\estate_code::_ID53173( "early_sniper" );
}

_ID43313()
{
    level endon( "smokepot1" );
    _ID42237::_ID14413( "smoke_screen_activated" );
    var_0 = _func_1A2( "smokepot1", "targetname" );
    var_0 = _ID42237::_ID3320( var_0 );

    for (;;)
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            wait 5;
            var_2 thread maps\estate_code::_ID44008();
            level._ID43592++;
            thread maps\estate_code::_ID48138();
        }

        var_clear_2
        var_clear_0
        wait 30;
    }
}

_ID52412()
{
    _ID42237::_ID14413( "smokepot1" );
    thread maps\estate_code::_ID47763();
}

_ID51169()
{
    _ID42237::_ID14413( "smoke_screen_activated" );
    thread maps\estate_code::_ID48778();
    thread maps\estate_code::_ID51898();
    thread maps\estate_code::_ID43740();
}

_ID53963( var_0 )
{
    var_1 = _func_1A1( "heli_tweak", "targetname" );
    level._ID794 _ID42407::_ID37404( var_1 );
    var_2 = _ID42411::_ID35196( var_0 );
}

_ID44410()
{
    _ID42237::_ID14413( "approaching_house" );
    thread _ID42407::_ID4422( "approaching_house" );
}

_ID53795()
{
    _ID42237::_ID14413( "autosave_housearrival" );
    thread _ID42407::_ID4422( "arrival_house" );
}

_ID48726()
{
    level _ID42237::_ID41068( "breaching_number_0", "breaching_number_1", "breaching_number_2" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    level._ID47319._ID4867 = 1000000;
    level._ID45604._ID4867 = 1000000;
    level._ID46243._ID4867 = 1000000;
}

_ID43932()
{
    _ID42237::_ID14413( "deploy_house_defense_jeeps" );
    var_0 = _ID42411::_ID35196( "house_defense_jeep1_frontyard" );
    var_1 = _ID42411::_ID35196( "house_defense_jeep2_frontyard" );
    var_0 thread maps\estate_aud::_ID47409();
    var_1 thread maps\estate_aud::_ID47409();
}

_ID46443()
{
    _ID42237::_ID14413( "house_approach_dialogue" );
    level._ID47319 _ID42407::_ID10805( "est_gst_clearperimieter" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID14413( "house_perimeter_softened" );
    level._ID47319 _ID42407::_ID10805( "est_gst_breachnclear" );
    level._ID14382 = 64;
    level._ID47319._ID382 = 64;
    level._ID46243._ID382 = 64;
    level._ID45604._ID382 = 64;
}

_ID43565()
{
    _ID42237::_ID14413( "deploy_futile_jeep" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    thread _ID42407::_ID28864( "est_snp1_trucksleaving" );
    wait 1;
    var_0 = _ID42411::_ID35196( "futile_escape_jeep1" );
    var_0 thread _unknown_1C11();
    var_0 _ID42411::_ID16988();
    var_1 = _ID42411::_ID35196( "futile_escape_jeep2" );
    var_1 thread _unknown_1C24();
    var_1 _ID42411::_ID16988();
    var_0 thread maps\estate_aud::_ID47409();
    var_1 thread maps\estate_aud::_ID47409();
    wait 3;
    level._ID47319 thread _ID42407::_ID10805( "est_gst_trucksgetaway" );
    wait 1.5;
    wait 2.0;
    thread _ID42407::_ID28864( "est_snp1_firingjavelin" );
    wait 2;
    var_0 thread _unknown_1C50( "futilejeep_javelin_sourcepoint1" );
    level._ID47319 thread _ID42407::_ID10805( "est_gst_dangerclose" );
    wait 1;
    level._ID47319 thread _ID42407::_ID10805( "est_gst_bulletproofed" );
    wait 2;
    var_0 _ID42411::_ID16987();
    wait 1;
    thread _ID42407::_ID28864( "est_snp1_twoaway" );
    var_1 thread _unknown_1C82( "futilejeep_javelin_sourcepoint2" );
    wait 3;
    var_1 _ID42411::_ID16987();
    wait 2.75;
    thread _ID42407::_ID28864( "est_snp1_neutralized" );
    wait 2;
    _ID42237::_ID14402( "futilejeeps_destroyed" );
}

_ID45658( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    var_2 = _func_1C8( "javelin_estate_jeep", var_1._ID740, self._ID740 );
    var_2 thread _ID45211( self );
    var_2 _meth_81E5( self );
    var_2 _meth_81E9();
}

_ID45211()
{
    if ( !_func_02F( self._ID40264 ) )
        return;

    if ( !_func_02F( self._ID40264._ID1193 ) )
        return;

    self waittill( "death" );
    _ID42234::_ID13611( self._ID40264._ID1193 + "_destroyed" );
}

_ID52536( var_0 )
{
    var_1 = _func_06A( "script_origin", self._ID740 );
    var_1 _meth_8053( self );
    self waittill( "death" );
    _func_192( 1.2, 1.5, var_1._ID740, 1600 );
    _func_18F( var_0._ID740, 128, 25000, 25000 );
    wait 0.05;
    var_1 _meth_80B7();
}

_ID48273()
{
    _ID42237::_ID14413( "futilejeeps_destroyed" );
    thread _ID42407::_ID28864( "est_snp1_decoys" );
    wait 6;

    if ( !_ID42237::_ID14385( "house_perimeter_softened" ) )
        level._ID14382 = 1040;

    var_0 = _func_1A1( "house_approach_friendlytrigger", "targetname" );
    var_0 notify( "trigger" );
    wait 1;
    _ID42237::_ID14402( "deploy_house_defense_jeeps" );
    wait 2.15;
    level._ID47319 _ID42407::_ID10805( "est_gst_advancingonhouse" );
    _ID42407::_ID4918( "allies" );
    _ID42407::_ID4918( "axis" );
    maps\estate_code::_ID43694();
}

_ID48493()
{
    _ID42237::_ID14413( "house_interior_breaches_done" );
    wait 2.5;
    var_0 = [];
    var_0 = _func_0DE( "axis" );
    level._ID49835 = var_0.size;
    var_1 = _func_1A1( "enemy_presence_volume", "targetname" );

    if ( level._ID49835 )
    {
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            var_3 thread _unknown_1E4B();

            if ( var_3 _meth_80B0( var_1 ) )
            {
                var_3._ID452 = 128;
                var_3 thread _unknown_1E56();
                continue;
            }

            _ID45456::_ID54623( var_3 );
            var_3 _meth_8058();
        }

        var_clear_2
        var_clear_0
    }
    else
        _ID42237::_ID14402( "all_enemies_killed_up_to_house_capture" );
}

_ID53609()
{
    self endon( "death" );
    wait(_func_0BA( 7, 10 ));
    self _meth_81B3( level._ID794 );
}

_ID53121()
{
    self waittill( "death" );
    level._ID49835--;

    if ( !level._ID49835 )
        _ID42237::_ID14402( "all_enemies_killed_up_to_house_capture" );
}

_ID54404()
{
    _ID42237::_ID14413( "save_the_game_indoors" );
}

_ID52659()
{
    _ID42237::_ID14413( "save_the_game_downstairs" );
}

_ID47452()
{
    var_0 = _func_1A1( "fake_backwards_door", "targetname" );
    var_1 = _func_1A1( "fake_backwards_door_clip", "targetname" );

    if ( !_ID42237::_ID14385( "skip_breachandclear" ) )
        level _ID42237::_ID41068( "breaching_number_0", "breaching_number_1", "breaching_number_2" );

    level waittill( "breach_explosion" );
    var_0 _meth_80B7();
    var_1 _meth_80B7();
}

_ID49844()
{
    level._ID46243 endon( "death" );
    level._ID46243._ID40757 = "taskforce";
    level._ID46243._ID8774 = "TF";
    level._ID46243 _ID42407::_ID10871();
    level._ID46243 _ID42407::_ID10896();
    level._ID46243._ID452 = 16;

    if ( !_ID42237::_ID14385( "skip_house_defense_dialogue" ) )
    {
        var_0 = _ID42237::_ID16638( "scarecrow_photonode_new", "targetname" );
        var_0 _ID42259::_ID3027( level._ID46243, "estate_house_photoshoot" );
        _ID42407::_ID10226( 10, _ID42237::_ID14402, "photographs_done" );
        var_0 _ID42259::_ID3029( level._ID46243, "estate_house_photoshoot" );
    }

    var_1 = _func_0C8( "scarecrow_earlydefense_start", "targetname" );
    level._ID46243 _meth_81B1( var_1 );
    level._ID46243 waittill( "goal" );
    _ID42237::_ID14413( "scarecrow_to_earlydefense_start" );
    _ID42407::_ID28864( "est_scr_inposition" );
    level._ID46243 _ID42407::_ID36519();

    switch ( level._ID15361 )
    {

    }

    level._ID46243 thread maps\estate_code::_ID48337( "scarecrow" );
    level._ID46243 thread maps\estate_code::_ID53351();
    _ID42237::_ID14413( "dsm_compromised" );
    level._ID46243._ID486 = 1;
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID54739()
{
    level._ID45604 endon( "death" );
    level._ID45604._ID40757 = "taskforce";
    level._ID45604._ID8774 = "TF";
    level._ID45604 _ID42407::_ID10871();
    level._ID45604 _ID42407::_ID10896();
    level._ID45604._ID452 = 16;
    var_0 = _func_0C8( "ozone_housebriefing_start", "targetname" );
    level._ID45604 _meth_81B1( var_0 );
    level._ID45604 waittill( "goal" );
    _ID42237::_ID14413( "ozone_to_earlydefense_start" );
    var_0 = _func_0C8( "ozone_earlydefense_start", "targetname" );
    level._ID45604 _meth_81B1( var_0 );
    level._ID45604 waittill( "goal" );
    _ID42237::_ID14413( "defense_battle_begins" );
    _ID42407::_ID28864( "est_ozn_readyengage" );
    level._ID45604 _ID42407::_ID36519();

    switch ( level._ID15361 )
    {

    }

    level._ID45604 thread maps\estate_code::_ID48337( "ozone" );
    level._ID45604 thread maps\estate_code::_ID53351();
    _ID42237::_ID14413( "dsm_compromised" );
    level._ID45604._ID486 = 1;
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID49848()
{
    var_0 = _ID42237::_ID16638( "ghost_talknode", "targetname" );
    var_0 _ID42259::_ID3027( level._ID47319, "estate_ghost_radio" );
    level._ID47319 _ID45995::_ID48826( "head", level._ID794, 200, 65, 65, 30, 45, 1, 1, 10, 0 );
    var_0 _ID42259::_ID3029( level._ID47319, "estate_ghost_radio" );
}

_ID48901()
{
    _ID42237::_ID14413( "all_enemies_killed_up_to_house_capture" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    wait 5;
    thread _ID42407::_ID4422( "house_briefing_sequence" );
    level._ID47319._ID40757 = "taskforce";
    level._ID47319._ID8774 = "TF";
    thread _unknown_2195();
    thread _unknown_21F2();
    level._ID47319 _ID42407::_ID10871();
    _unknown_224D();
    _ID42237::_ID14402( "ozone_to_earlydefense_start" );
    var_0 = _func_0C8( "ghost_cover_front", "targetname" );
    level._ID47319 _meth_81B1( var_0 );
    level._ID47319 _ID42407::_ID7892();
    _ID42407::_ID28864( "est_ozn_onmyway" );
    wait 2;
    _ID42407::_ID28864( "est_pri_searching" );
    _ID42407::_ID28864( "est_pri_gettingcloser" );
    _ID42407::_ID28864( "est_pri_goingsilent" );
    _ID42237::_ID14402( "house_briefing_dialogue_done" );
    thread _unknown_232D();
    wait 10;
    var_0 = _func_0C8( "ghost_earlydefense_start", "targetname" );
    level._ID47319 _meth_81B1( var_0 );
}

_ID50375()
{
    _ID42237::_ID14413( "download_started" );

    if ( !_ID42237::_ID14385( "skip_house_defense_dialogue" ) )
    {
        wait 3;
        _ID42237::_ID14413( "house_briefing_dialogue_done" );
        _ID42407::_ID28864( "est_ozn_stockup" );
        _ID42237::_ID14413( "photographs_done" );
        _ID42407::_ID28864( "est_gst_withintel" );
        _ID42407::_ID28864( "est_gst_weaponscache" );
        _ID42237::_ID14402( "scarecrow_to_earlydefense_start" );
    }

    _ID42237::_ID14402( "defense_battle_begins" );
    _ID42407::_ID4422( "defense_started" );
    wait 1;
    level._ID47319._ID4867 = 1;
    level._ID45604._ID4867 = 1;
    level._ID46243._ID4867 = 1;
    level._ID47319._ID1204 = -1000;
    level._ID47319._ID40757 = "taskforce";
    level._ID47319._ID8774 = "TF";
    level._ID46243._ID40757 = "taskforce";
    level._ID46243._ID8774 = "TF";
    level._ID45604._ID40757 = "taskforce";
    level._ID45604._ID8774 = "TF";
    _ID42407::_ID4918( "allies" );
    _ID42407::_ID4918( "axis" );
}

_ID50396()
{
    level endon( "download_started" );

    while ( !_ID42237::_ID14385( "download_started" ) )
    {
        wait 10;
        _ID42407::_ID28864( "est_gst_filesoff" );
        wait 8;
        _ID42407::_ID28864( "est_gst_startdownload" );
        wait 30;
    }
}

_ID48203()
{
    level endon( "stop_blur_cycler" );

    for (;;)
    {
        level._ID794 _unknown_2468( 0.6, 2 );
        level._ID794 _unknown_2476( 0.1, 0.8 );
        level._ID794 _unknown_2482( 0.2, 1 );
        level._ID794 _unknown_2490( 0.1, 0.7 );
        level._ID794 _unknown_249F( 0.5, 1.1 );
    }
}

_ID52156( var_0, var_1 )
{
    level endon( "stop_blur_cycler" );
    self notify( "blurview_stop" );
    self endon( "blurview_stop" );
    self _meth_82E4( var_0, var_1 );
    wait 0.05;
    self _meth_82E4( 0, var_1 );
}

_ID53553( var_0 )
{
    wait 3.55;
    thread _ID42407::_ID28864( "est_gst_hanginthere" );
}

_ID48587()
{
    wait 3;

    if ( level._ID13120[level._ID13116] == "" )
        _ID46103::_ID9777( level._ID13116 );
    else
        thread _ID46103::_ID39899( level._ID13120[level._ID13116], level._ID13116 );

    if ( level._ID29941 == "" )
        _ID46103::_ID9778();
    else
        thread _ID46103::_ID39913( level._ID29941 );
}

_ID47755()
{
    var_0 = _func_1A2( "ending_attacker", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_258C );
    wait 1;
    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID464 = 0;
        var_3._ID4867 = 0.2;
        var_3 _ID42407::_ID1868( ::_unknown_2591 );
    }

    var_clear_2
    var_clear_0
}

_ID44168( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_1A7( self ) )
    {
        if ( var_1 == level._ID794 )
        {
            level._ID45559++;

            if ( level._ID15361 == 0 )
            {
                level._ID794._ID86 = 0;
                _ID42237::_ID14402( "drag_sequence_killcount_achieved" );
            }

            if ( level._ID15361 == 1 )
            {
                level._ID794._ID86 = 0;
                _ID42237::_ID14402( "drag_sequence_killcount_achieved" );
            }

            if ( level._ID15361 == 2 )
            {
                if ( level._ID45559 > 1 )
                {
                    level._ID794._ID86 = 0;
                    _ID42237::_ID14402( "drag_sequence_killcount_achieved" );
                }
            }

            if ( level._ID15361 == 3 )
            {
                if ( level._ID45559 > 1 )
                {
                    level._ID794._ID86 = 0;
                    _ID42237::_ID14402( "drag_sequence_killcount_achieved" );
                }
            }
        }
    }
}

_ID50942()
{
    var_0 = self _meth_809B();

    if ( _func_02F( var_0 ) )
    {
        var_0 endon( "death" );
        wait 1;
        var_0._ID464 = 0;
        var_0._ID4867 = 0.2;
    }
}

_ID50475()
{
    level._ID794._ID86 = 0;
    wait 5;
    level._ID794._ID86 = 0.15;
    wait 3;
    level._ID794._ID86 = 0.2;
}

_ID46721()
{
    level endon( "ending_normal_death" );
    level endon( "drag_sequence_killcount_achieved" );
    _ID42237::_ID14413( "drag_sequence_slacker_check" );

    if ( !_ID42237::_ID14385( "drag_sequence_killcount_achieved" ) )
    {
        level notify( "ending_slacker_death" );
        level._ID794 _meth_8057( 25 / level._ID794._ID255, level._ID794._ID740 );
        wait 1.5;
        level._ID794 _meth_8057( 35 / level._ID794._ID255, level._ID794._ID740 );
        wait 0.5;
        level._ID794 _meth_8057( 25 / level._ID794._ID255, level._ID794._ID740 );
        wait 2.5;
        level._ID794 _meth_8057( 30 / level._ID794._ID255, level._ID794._ID740 );
        wait 0.15;
        level._ID794 _meth_8057( 30 / level._ID794._ID255, level._ID794._ID740 );
        wait 0.25;
        level._ID794 _meth_8057( 15 / level._ID794._ID255, level._ID794._ID740 );
        wait 0.2;
        level._ID794 _meth_8057( 15 / level._ID794._ID255, level._ID794._ID740 );
        wait 3;
        level._ID794 _meth_8057( 45 / level._ID794._ID255, level._ID794._ID740 );
        wait 0.15;
        level._ID794 _meth_8057( 75 / level._ID794._ID255, level._ID794._ID740 );
        wait 0.15;
        level._ID794 _meth_8057( 85 / level._ID794._ID255, level._ID794._ID740 );
        thread _unknown_27FA();
    }
}

_ID46242()
{
    level._ID794 _meth_831B();
    level._ID794._ID511 = 1;
    level._ID794 _meth_818E( "estate_bouncingbetty", 9 );
    _func_034( "ui_deadquote", &"ESTATE_FAKE_DEATH_QUOTE" );
    _ID42407::_ID23778();
}

_ID46467()
{
    level endon( "stop_player_breathing" );

    for (;;)
    {
        level._ID794 _ID42407::_ID27079( "breathing_hurt" );
        wait(0.1 + _func_0B8( 0.8 ));
    }
}

_ID52762()
{
    _ID42237::_ID14413( "play_ending_sequence" );
    _func_1E8( 5, ( 0, 0, 0 ) );
    thread _unknown_2CEB();
    thread _unknown_2F02();
    var_0 = undefined;

    if ( _ID42237::_ID14385( "test_ending" ) )
        thread _ID54017::_ID43738( "2" );

    if ( !_ID42237::_ID14385( "test_ending_body_toss" ) )
    {
        thread _unknown_2CCC();
        thread _unknown_2D35();
        thread _ID42407::_ID4917( "allies" );
        thread _ID42407::_ID4917( "axis" );
    }

    var_0 = _func_1AF();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 _meth_80D3( "black", 640, 480 );
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 0;
    var_0._ID983 = 1;
    var_0._ID408 = 1;
    var_0 maps\estate_code::_ID5263( 0.05, 6 );

    if ( !_ID42237::_ID14385( "test_ending_body_toss" ) )
    {
        _ID42475::_ID34575( "aud_stop_escape_mix" );
        _ID42475::_ID34575( "aud_start_finale_mix" );
        _ID42475::_ID34575( "aud_start_escape_bs_0_3_mix" );
        level._ID794 _meth_80A1( "scn_estate_escape_shellshock_01" );
        level._ID794 _meth_8334( 1 );
        level._ID794 _meth_8123( 0 );
        level._ID794 _meth_8122( 0 );
        level._ID794 _meth_8121( 1 );
        level._ID794 _meth_818E( "estate_bouncingbetty", 11 );
        _ID42237::_ID14402( "begin_ending_music" );
        _func_0DB( "compass", 0 );
        _func_0DB( "hud_showStance", "0" );
        level._ID794 _meth_8189( "stand" );
        var_1 = _ID42237::_ID16638( "ghost_dragnode", "targetname" );
        var_2 = _ID42407::_ID35028( "worldbody" );
        var_2._ID65 = ( 0, 0, 0 );
        level._ID794 _meth_8328();
        level._ID794 _meth_831B();

        if ( !_ID42237::_ID14385( "test_ending_body_toss" ) )
            level._ID47319._ID86 = 0;

        level._ID794._ID86 = 0;
        level._ID794._ID512 = 1;
        thread _unknown_2D41();
        var_1 _ID42259::_ID3018( level._ID47319, "estate_ending_drag" );
        var_1 _ID42259::_ID3018( var_2, "estate_ending_drag" );
        level._ID794 _meth_8084( var_2, "tag_player", 1, 30, 30, 30, 3 );
        level._ID47319 _ID42237::_ID18518( "begin_overlapped_gasoline_sequence" );
        var_1 _ID42259::_ID3018( level._ID47319, "estate_ending_drag" );
        var_3 = _ID42237::_ID35164();
        var_3 _meth_8053( var_2, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        level._ID794 _meth_8098( var_3 );
        wait 1;
        _ID42475::_ID34575( "aud_stop_escape_bs_0_3_mix" );
        thread _unknown_2974();
        level._ID794 _meth_8319( "ak47_woodland_grenadier" );
        wait 2;
        thread _unknown_2A43();
        level._ID794 _meth_8334( 0 );
        level._ID794 _meth_80A9( 0, 0, 0, 3, 3, 5, 2 );
        level._ID794 _meth_80AA( 50, 50, 20, 20 );
        var_0 thread maps\estate_code::_ID29877( 3, 0 );
        _func_032( "ui_consciousness_init", 1 );
        _func_0DB( "ui_consciousnessVignetteDarkness", 0.5 );
        _func_032( "ui_consciousness_play", 1 );
        _ID42407::_ID4422( "drag_started" );
        thread _unknown_2F93();
        thread _unknown_2FC3();
        var_1 thread _ID42259::_ID3111( var_2, "estate_ending_drag" );
        var_1 _ID42259::_ID3111( level._ID47319, "estate_ending_drag" );
        level._ID794 _meth_80A9( 1, 1, 1, 30, 30, 30, 5 );
        level._ID794 _meth_80AA( 50, 50, 20, 20 );
        level._ID794 _meth_8329();
        level._ID794 _meth_8320( "ak47_woodland_grenadier" );
        level._ID794 thread _unknown_2A6E();

        if ( !_ID42237::_ID14385( "test_ending_body_toss" ) && !_ID42237::_ID14385( "test_ending" ) )
            level._ID47319 _ID42407::_ID36519();

        if ( !_ID42237::_ID14385( "test_ending_body_toss" ) )
            level._ID47319 _meth_80B7();

        var_2 waittillmatch( "single anim",  "mortarhit"  );
        thread _unknown_3072( "ending_mortarhit_1" );
        var_2 waittillmatch( "single anim",  "mortarhit"  );
        thread _unknown_3086( "ending_mortarhit_2" );
        level notify( "stop_blur_cycler" );
        _ID42407::_ID10226( 2, ::_unknown_2A63, var_0 );
        var_2 waittillmatch( "single anim",  "mortarhit"  );
        thread _unknown_30A9( "ending_mortarhit_3" );
        level._ID794 thread _ID42298::_ID17386( "left" );
        var_2 waittillmatch( "single anim",  "mortarhit"  );
        thread _unknown_30C7( "ending_mortarhit_4" );
        var_2 waittillmatch( "single anim",  "helicopterbuzz"  );
        var_2 waittillmatch( "single anim",  "gettingfuzzy"  );
        _ID42237::_ID14402( "enter_the_littlebirds" );
        thread _ID54017::_ID49923( "2" );
        _ID42475::_ID34575( "aud_start_escape_bs_2_2_mix" );
        var_0 maps\estate_code::_ID5263( 3, 12 );
        level._ID794 _ID42237::_ID10192( 3, ::_meth_831B );
        level._ID794 _meth_8334( 1 );
        level._ID794 _meth_832A();
        _func_0DB( "cg_drawCrosshair", 0 );
        _func_0DB( "ui_hidemap", 1 );
        _func_0DB( "compass", "0" );
        _func_0DB( "ammoCounterHide", "1" );
        _func_0DB( "actionSlotsHide", "1" );
        var_4 = _func_0DE( "axis" );
        var_5 = var_4;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];
            _ID45456::_ID54623( var_6 );
            var_6 _meth_8058();
        }

        var_clear_2
        var_clear_0
        wait 1;
        _ID42475::_ID34575( "aud_stop_escape_bs_2_2_mix" );
    }

    _ID42237::_ID3350( _func_1A2( "ending_actors", "targetname" ), _ID42407::_ID1947, ::_unknown_3292 );
    _ID42407::_ID1801( "ending_actors", "target" );
    wait 0.1;
    thread _unknown_32E1();
    var_8 = undefined;
    var_9 = undefined;
    var_1 = _ID42237::_ID16638( "ending_chopper_node", "targetname" );
    var_10 = [];
    var_11 = level._ID48935;

    for ( var_13 = _func_1DA( var_11 ); _func_02F( var_13 ); var_13 = _func_1BF( var_11, var_13 ) )
    {
        var_12 = var_11[var_13];

        if ( var_12._ID922 == "gasolineGuy" )
        {
            var_8 = var_12;
            var_8 _meth_805A();
            var_8.cheat._ID48626 = 1;
            var_8.cheat.ignorewolfthink = 1;
            continue;
        }

        if ( !_ID42237::_ID14385( "test_alt_ending" ) && var_12._ID922 == "alt_ending_dead_guy" )
        {
            continue;
            continue;
        }

        if ( _ID42237::_ID14385( "test_alt_ending" ) && var_12._ID922 == "alt_ending_dead_guy" )
        {
            var_12._ID922 = "ghost_ending_dead";
            var_12._ID3189 = "ghost_ending_dead";
            var_9 = var_12;
            var_9 _meth_805A();
            continue;
        }

        if ( _ID42237::_ID14385( "test_alt_ending" ) && var_12._ID922 == "ghost_ending_dead" )
        {
            continue;
            continue;
        }

        if ( !_ID42237::_ID14385( "test_alt_ending" ) && var_12._ID922 == "ghost_ending_dead" )
        {
            var_9 = var_12;
            var_9 _meth_805A();
            continue;
        }

        if ( !_ID42237::_ID14385( "test_alt_ending" ) && var_12._ID922 == "alt_ending_guy" )
        {
            continue;
            continue;
        }

        if ( _ID42237::_ID14385( "test_alt_ending" ) && var_12._ID922 == "alt_ending_guy" )
        {
            var_12._ID922 = "ghost_ending";
            var_12._ID3189 = "ghost_ending";
            var_10[var_10.size] = var_12;
            continue;
        }

        if ( _ID42237::_ID14385( "test_alt_ending" ) && var_12._ID922 == "ghost_ending" )
        {
            continue;
            continue;
        }

        var_10[var_10.size] = var_12;
    }

    var_clear_2
    var_clear_0

    if ( _ID42237::_ID14385( "test_with_pavelow_already_in_place" ) || _ID42237::_ID14385( "test_ending_body_toss" ) )
    {
        var_14 = _ID42411::_ID35195( "final_pavelow_liftoff_1" );
        var_14._ID3189 = "pavelow";
        level._ID48434 = var_14;
    }
    else
    {
        level._ID48434 _meth_80B7();
        var_14 = _ID42411::_ID35195( "animated_pavelow" );
        var_14._ID3189 = "pavelow";
        level._ID48434 = var_14;
    }

    level._ID48434 _ID42411::_ID40197( "sheppard" );
    level._ID794 _meth_831B();
    level._ID794 _meth_8328( 1 );
    var_2 = _ID42407::_ID35028( "worldbody" );
    var_1 _ID42259::_ID3018( var_2, "estate_ending_part1" );
    level._ID794 _meth_8084( var_2, "tag_player", 1, 10, 10, 10, 2 );
    var_1 _ID42259::_ID3018( var_14, "estate_ending_part1" );
    var_3 = _ID42237::_ID35164();
    var_3 _meth_8053( var_2, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 _meth_8098( var_3 );
    var_15 = level._ID48935["ghost_ending"];
    var_15 _ID42237::_ID18518( "begin_overlapped_gasoline_sequence" );
    var_16 = level._ID48935["shepherd_ending"];
    var_16 _ID42407::_ID17509();

    if ( !_ID42237::_ID14385( "test_ending_body_toss" ) )
    {
        wait 2;
        var_0 _ID42407::_ID10226( 0.5, maps\estate_code::_ID29877, 3, 0 );
        _func_032( "ui_consciousness_play", 0 );
        _func_032( "ui_consciousness_play", 3 );
        level._ID794 _ID42237::_ID10192( 0.5, ::_meth_8334, 0 );
        level._ID794 _meth_80A9( 1, 1, 1, 3, 3, 3, 3 );
        _ID42237::_ID14402( "made_it_to_lz" );
        var_14 thread _ID42407::_ID27079( "scn_estate_finale_heli_landing_01" );
        level._ID794 _meth_80A1( "scn_estate_finale_foley_plr_01" );
        var_1 thread _ID42259::_ID3099( var_10, "estate_ending_part1" );
        var_1 thread _ID42259::_ID3111( var_2, "estate_ending_part1" );
        var_14 _meth_8155( level._ID30895["pavelow"]["estate_ending_part1"] );
        thread _unknown_2E23();
        level._ID794 _meth_80A9( 7, 1, 1, 30, 30, 30, 15 );
        level._ID794 _meth_80AA( 50, 50, 20, 20 );
        level._ID45428 = _func_03D();
        thread _unknown_33AE( 0.12, 20, 14 );
        level._ID48935["guy1_ending"] _meth_805A();
        level._ID48935["guy2_ending"] _meth_805A();
        level._ID48935["guy1_ending"].cheat._ID48626 = 1;
        level._ID48935["guy1_ending"].cheat.ignorewolfthink = 1;
        level._ID48935["guy2_ending"].cheat._ID48626 = 1;
        level._ID48935["guy2_ending"].cheat.ignorewolfthink = 1;
        thread _unknown_3467( var_16, var_15 );
        var_16 _ID42407::_ID41119( "pistol_pullout" );
        var_17 = _func_06A( "script_origin", ( 0, 0, 0 ) );
        var_17 _meth_8053( var_16, "tag_weapon_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        var_16 _meth_801D( "weapon_colt_anaconda_animated", "tag_weapon_right" );
        var_16 thread maps\estate_anim::play_shepherd_ending_gun_anim();
        level._ID794 _meth_80A9( 1, 0.5, 0.5, 0, 0, 0, 0 );
        level._ID794 _meth_80AA( 50, 50, 20, 20 );
        level._ID48935["guy1_ending"] _meth_8059();
        level._ID48935["guy2_ending"] _meth_8059();
        var_16 _ID42407::_ID41119( "shepherd_fire2" );
        var_17 _meth_80A1( "scn_estate_deserteagle_fire_shepherd" );
        _func_157( _ID42237::_ID16299( "anaconda_muzzle_flash" ), var_16, "tag_flash" );
        _func_032( "ui_consciousness_play", 0 );
        _func_032( "ui_consciousness_play", 4 );
        level._ID794 _meth_80B4( "shepherd_pistol" );
        level._ID794 _ID42237::_ID10192( 1.3, ::_meth_80B4, "shot_collapse" );
        level.dosoftpulseoverlay = 1;
        level._ID794 _meth_8056( 1 );
        var_18 = var_16 _meth_80AF();
        level._ID794 _meth_8057( 99 / level._ID794._ID255, var_18 );
        level._ID794 _ID42407::_ID10226( 0.3, ::_unknown_3458 );
        level notify( "stop_player_breathing" );
        _func_0DB( "g_friendlyNameDist", 0 );

        if ( _ID42237::_ID14385( "no_slow_mo" ) )
            _ID42407::_ID10226( 1.5, ::_unknown_36CC, 3 );

        var_16 _ID42407::_ID41119( "shepherd_fire1" );
        var_17 _meth_80A1( "h2_wpn_desert_eagle_npc_close" );
        _func_157( _ID42237::_ID16299( "anaconda_muzzle_flash" ), var_16, "tag_flash" );
        var_16 _ID42407::_ID41119( "pistol_putaway" );
        var_17 _meth_80B7();
        var_16 _meth_802A( "weapon_colt_anaconda_animated", "tag_weapon_right" );
        level._ID794 _ID42237::_ID10192( 0.8, ::_meth_80B4, "dsm_rummage" );
        var_16 _ID42407::_ID41119( "dsm_pullout" );
        var_19 = _ID42407::_ID35028( "dsm" );
        var_19 _meth_8053( var_16, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        var_19 _meth_8155( var_19 _ID42407::_ID16120( "estate_ending_part1" ) );
        var_16 thread _unknown_3507( var_19 );
        var_16 _ID42407::_ID41119( "trigger_part2" );
        level._ID794 _meth_80A1( "scn_estate_finale_betrayal_screen_fadeout_01" );
        level.dosoftpulseoverlay = 0;
        var_0 thread maps\estate_code::_ID5263( 7, 6 );
        wait 8;
    }

    var_20 = level._ID48935["guy1_ending"];
    var_21 = level._ID48935["guy2_ending"];
    var_1 = _ID42237::_ID16638( "ending_chopper_node2", "targetname" );
    var_10 = [];
    var_10[var_10.size] = var_20;
    var_10[var_10.size] = var_21;
    _ID42237::_ID3350( level._ID48935, _ID42407::_ID17509 );
    thread _unknown_397C();
    var_1 _ID42259::_ID3018( var_2, "estate_ending_part2" );
    level._ID794 _meth_8084( var_2, "tag_player", 1, 10, 10, 5, 5 );
    var_0 thread maps\estate_code::_ID29877( 3, 0 );
    _func_032( "ui_consciousness_play", 0 );
    _func_032( "ui_consciousness_play", 5 );
    level._ID794 _meth_80A9( 1, 1, 1, 0, 0, 0, 0 );
    thread _unknown_3734( var_8, var_16, var_0 );
    var_1 thread _ID42259::_ID3111( var_2, "estate_ending_part2" );
    var_1 thread _ID42259::_ID3099( var_10, "estate_ending_part2" );
    wait 1;
    _ID42237::_ID14402( "begin_overlapped_gasoline_sequence" );
    level._ID794 _meth_80A1( "scn_estate_finale_throw_plr_01" );
    wait 1.8;
    level._ID794 _meth_80B4( "bodytoss_impact" );
    level._ID794 thread _ID42407::_ID27079( "scn_estate_betrayal_drop_plr_01" );
    wait 1.3;
    level._ID48935["ghost_ending"] _meth_805A();
    var_9 _meth_8059();
    var_10[var_10.size] = var_9;
    var_1 _ID42259::_ID3016( var_10, "estate_ending_part2_2ndbody" );
    var_1 thread _ID42259::_ID3099( var_10, "estate_ending_part2_2ndbody" );
    var_20 _ID42407::_ID41119( "ghost_throw_release" );

    if ( !_ID42237::_ID14385( "no_slow_mo" ) )
        thread _unknown_3889( 10.5 );

    thread _unknown_36D8( 0.05, 2, 1, 0.1 );
    wait 2.2;
    var_0 thread maps\estate_code::_ID5263( 0.8, 3 );
    thread _unknown_36F7( 0.12, 2, 1, 0.1 );
    wait 0.8;
    var_20 _meth_805A();
    var_21 _meth_805A();
    var_8 _meth_8059();
    var_16 _meth_8059();
    var_8 _meth_8052();
    var_16 thread _ID42407::_ID27079( "scn_estate_shepherd_light_fire_foley_01" );
    var_8 thread _ID42407::_ID27079( "scn_estate_soldier_gas_01" );
    var_0 thread maps\estate_code::_ID29877( 5, 0 );
    _func_032( "ui_consciousness_play", 0 );
    _func_032( "ui_consciousness_play", 6 );
    wait 3;
}

dragged_by_ghost_cinseq()
{
    var_0 = _ID54167::_ID43386( "dragged_by_ghost" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, 150, 32, 32 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 8.5 ) _ID54167::_ID50321( 2.0, 80, 4, 4 );
    var_0 _ID54167::_ID48800( 12.5 ) _ID54167::_ID50321( 2.0, 300, 4, 4 );
    var_0 _ID54167::_ID48800( 16.5 ) _ID54167::_ID50321( 2.0, 80, 4, 4 );
    var_0 _ID54167::_ID48800( 18.5 ) _ID54167::_ID50321( 2.0, 300, 4, 4 );
    var_0 _ID54167::_ID48800( 20.5 ) _ID54167::_ID50321( 2.0, 80, 4, 4 );
    var_0 _ID54167::_ID48800( 22.5 ) _ID54167::_ID50321( 2.0, 300, 4, 4 );
    var_0 _ID54167::_ID48800( 24.5 ) _ID54167::_ID50321( 2.0, 80, 4, 4 );
    var_0 _ID54167::_ID48800( 26.5 ) _ID54167::_ID50321( 2.0, 300, 4, 4 );
    var_0 _ID54167::_ID48800( 29.8 ) _ID54167::_ID48959() _ID54167::_ID46727();
    var_0 _ID54167::_ID48800( 19.8 ) _ID54167::_ID43376( ::_unknown_377E, undefined, 0.2, 2.4, 1.5 );
    var_0 _ID54167::_ID48800( 22.2 ) _ID54167::_ID43376( ::_unknown_3799, undefined, 0.35, 3.8, 2.5 );
    var_0 _ID54167::_ID48166();
}

h2_dragged_blink( var_0, var_1, var_2 )
{
    var_3 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_3 _meth_808B( 0.45 * var_1 );
    var_3._ID55 = var_0;
    _func_076( var_2, 0.45 * var_1 );
    wait(0.55 * var_1);
    var_3 _meth_808B( 0.45 * var_1 );
    var_3._ID55 = 0.0;
    _func_076( 0.0, 0.45 * var_1 );
    wait(0.45 * var_1);
    var_3 _meth_808F();
}

delete_dsm( var_0 )
{
    _ID42407::_ID41119( "dsm_putaway" );
    var_0 _meth_80B7();
}

_ID47519()
{
    self _meth_8056( 1 );
}

_ID45958()
{
    level endon( "finish_line" );
    _ID42237::_ID14413( "point_of_no_return" );
    level._ID48434 = _ID42411::_ID35195( "final_pavelow_liftoff_1" );
    level._ID48434._ID3189 = "pavelow";
    level._ID48434 _meth_828D( 15 );
    var_0 = _ID42237::_ID16638( level._ID48434._ID1191, "targetname" );
    level._ID48434 _meth_8265( var_0._ID740, 0 );
    level._ID48434 _ID42237::_ID41068( "goal", "near_goal" );
    var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    level._ID48434 _meth_8265( var_1._ID740, 0 );
    level._ID48434 _ID42237::_ID41068( "goal", "near_goal" );
    var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    level._ID48434 _meth_8265( var_2._ID740, 1 );
    level._ID48434 _ID42237::_ID41068( "goal", "near_goal" );

    if ( !_ID42237::_ID14385( "finish_line" ) )
        thread maps\estate_code::_ID44914();
}

_ID45940()
{
    _ID42237::_ID14413( "thunderone_heli" );
    var_0 = _ID42411::_ID35195( "ending_treecutter_heli_1" );
    var_0 _ID42411::_ID16988();
    var_0 thread _ID42407::_ID27079( "scn_estate_finale_heli_flyby" );
    var_0 _meth_828D( 12 );
    var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _meth_8265( var_1._ID740, 0 );
    var_0 _meth_8268( 195 );
    var_0 waittill( "goal" );
    var_0 _meth_828D( 8 );
    wait 0.6;
    var_0 _meth_8268( 210 );
    var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    var_0 _meth_8265( var_2._ID740, 1 );
    var_0 _ID42237::_ID41068( "goal", "near_goal" );
    wait 1;
    var_3 = _ID42237::_ID16638( var_2._ID1191, "targetname" );
    var_0 _meth_8265( var_3._ID740, 0 );
    wait 0.5;
    var_0 _meth_8268( 190 );
    var_0 _ID42237::_ID41068( "goal", "near_goal" );
    wait 2;
    var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
    var_0 _meth_8265( var_4._ID740 );
    var_0 _meth_828D( 50 );
    var_0 _meth_8269();
    wait 1;
    var_0 _ID42411::_ID16987();
    var_0 _meth_80B7();
}

_ID54129()
{
    level._ID46975 = _func_06A( "script_origin", ( 0.25, 0, 0 ) );

    for (;;)
    {
        _func_0DB( "sm_sunSampleSizeNear", level._ID46975._ID740[0] );
        wait 0.05;
    }
}

_ID45231( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0.25;

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( !_func_02F( var_3 ) )
        var_3 = 1;

    level._ID46975 _meth_82B8( ( var_0, 0, 0 ), var_1, var_2, var_3 );
}

_ID47261()
{
    _ID42237::_ID14413( "enter_the_littlebirds" );
    var_0 = _ID42407::_ID10226( 1, _ID42411::_ID35196, "ending_shadowops_heli_1" );
    var_1 = _ID42407::_ID10226( 4, _ID42411::_ID35196, "ending_shadowops_heli_2" );
    var_2 = _ID42407::_ID10226( 4, _ID42411::_ID35196, "ending_shadowops_heli_3" );
    var_3 = _ID42407::_ID10226( 2.5, _ID42411::_ID35196, "ending_shadowops_heli_4" );
    var_4 = _func_1A1( "ending_shouter_trig", "targetname" );
    var_4 waittill( "trigger" );
    var_5 = _func_1A2( "ending_shouter", "targetname" );
    _ID42237::_ID3320( var_5 );
    var_6 = ( 9612.3, 4611.8, -683.5 );
    _ID42407::_ID10226( 1.5, _ID42237::_ID27077, "scn_estate_finale_soldiers_walla", var_6 );
    var_7 = var_5;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];

        if ( var_9 > 2 )
            break;

        if ( var_9 == 0 )
            var_8 _ID42407::_ID27079( "est_tf2_coverthem" );

        if ( var_9 == 1 )
            var_8 _ID42407::_ID27079( "est_tf2_spreadout" );

        if ( var_9 == 2 )
            var_8 _ID42407::_ID27079( "est_tf1_gogogo" );

        if ( var_9 == 3 )
            var_8 _ID42407::_ID27079( "est_tf3_straferidgeline" );

        if ( var_9 == 4 )
            var_8 _ID42407::_ID27079( "est_tf4_rogerthat" );

        if ( var_9 == 5 )
            var_8 _ID42407::_ID27079( "est_tf1_goldeagle" );
    }

    var_clear_2
}

_ID53735( var_0, var_1 )
{
    wait 6.5;
    thread _ID42407::_ID28864( "est_hp2_watchforsnipers" );
    wait 10.5;
    wait 2.05;
    wait 1.5;
    wait 12;
    _ID42407::_ID28864( "est_hp2_sanitized" );
    _ID42407::_ID28864( "est_hp1_holdingpattern" );
}

_ID51555()
{
    var_0 = _ID42237::_ID16638( "redsmoke", "targetname" );
    _func_156( _ID42237::_ID16299( "redsmoke" ), var_0._ID740 );
    _ID42407::_ID28864( "est_gst_gotyouroach" );
    _ID42407::_ID28864( "est_gst_redsmoke" );
    _ID42407::_ID28864( "est_fp1_visual" );
    _ID42237::_ID14402( "drag_sequence_slacker_check" );
    _ID42407::_ID28864( "est_gst_clearedhot" );
    _ID42407::_ID28864( "est_fp1_clearedhot" );
    _ID42237::_ID14402( "thunderone_heli" );
    _ID42407::_ID28864( "est_hp1_gunsgunsguns" );
    wait 9;
    _ID42407::_ID28864( "est_hp1_rocketattck" );
    _ID42407::_ID28864( "est_hp2_hitemhard" );
    _ID42407::_ID28864( "est_hp1_imonit" );
    _ID42407::_ID28864( "est_hp1_linedup" );
}

_ID49959()
{
    thread _unknown_3D17( "ending_mortarhit_a" );
    wait 1;
    thread _unknown_3D21( "ending_mortarhit_b" );
    wait 0.75;
    thread _unknown_3D2E( "ending_mortarhit_c" );
    level._ID794 thread _ID42298::_ID17386( "right" );
    wait 0.6;
    thread _unknown_3D45( "ending_mortarhit_d" );
    wait 1;
    thread _unknown_3D50( "ending_mortarhit_e" );
    wait 0.5;
    thread _unknown_3D5C( "ending_mortarhit_f" );
    wait 0.25;
    thread _unknown_3D69( "ending_mortarhit_g" );
    wait 0.6;
    thread _unknown_3D76( "ending_mortarhit_h" );
    level._ID794 thread _ID42298::_ID17386( "left" );
    wait 0.45;
    thread _unknown_3D8D( "ending_mortarhit_i" );
}

_ID49289( var_0 )
{
    var_1 = _ID42237::_ID16638( var_0, "targetname" );
    var_1 _ID42237::_ID27077( level._ID30909["mortar"]["incomming"] );
    _func_192( 0.5, 1.4, level._ID794._ID740, 2000 );
    _func_1CD( "artillery_rumble", var_1._ID740 );
    var_1 thread _ID42237::_ID27077( level._ID30909["mortar"]["dirt"] );
    _func_156( level._ID1426["mortar"]["dirt"], var_1._ID740 );
}

_ID54510()
{
    if ( !_ID42237::_ID14385( "no_slow_mo" ) )
    {
        _func_078( 6 );
        wait 7;
        _func_077( "mus_estate_betrayal" );
    }
    else
    {
        _func_078( 1 );
        wait 1.5;
        _func_077( "mus_estate_betrayal" );
    }
}

_ID51012( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( "begin_overlapped_gasoline_sequence" );
    level._ID48434 _meth_80B7();
    thread _unknown_3EC1();
    var_3 = _ID42237::_ID16638( "ending_chopper_node2", "targetname" );
    var_4 = _ID42407::_ID35028( "cigar" );
    var_1._ID7534 = var_4;
    var_0 _meth_801D( "accessories_gas_canister_highrez", "tag_inhand" );
    var_5 = [];
    var_5[var_5.size] = var_0;
    var_5[var_5.size] = var_1;
    var_5[var_5.size] = var_4;
    var_1 thread _unknown_3F07();
    var_3 thread _ID42259::_ID3099( var_5, "estate_ending_part3" );
    var_0 thread maps\estate_anim::play_cannister_guy_cannister_anim();
    _ID42237::_ID14413( "cigar_flicked" );
    wait 0.15;
    _ID42237::_ID14402( "cigar_flareup" );
    var_6 = _ID42411::_ID35199( "final_pavelow_liftoff_2" );
    var_7 = _func_1A1( "final_pavelow_flyover", "targetname" );
    var_6[0] thread _ID42413::_ID43156( var_7 );
    wait 0.1;
    _ID42475::_ID34575( "aud_start_slowmo_burning_mix" );

    if ( !_ID42237::_ID14385( "no_slow_mo" ) )
        thread _unknown_3FBA( 140, 0.1 );

    wait 0.6;
    level._ID794 _meth_80A1( "scn_estate_betrayal_slomo_01" );
    _func_156( _ID42237::_ID16299( "gasoline_fire_on_player_ignite" ), level._ID794._ID740 + ( -6, 56, 54 ) );
    _func_156( _ID42237::_ID16299( "gasoline_fire_on_player" ), level._ID794._ID740 + ( -6, 56, 54 ) );
    wait 0.1;
    _func_076( 2, 3 );
    wait 1.2;
    level._ID794 _meth_80A1( "scn_estate_betrayal_heli_slomo_01" );
    wait 0.5;
    wait 1;
    var_2 thread maps\estate_code::_ID5263( 2, 6 );
    wait 2;
    _ID42237::_ID14402( "end_the_mission" );
}

_ID49831( var_0 )
{
    self _meth_829D( var_0 );

    if ( var_0 == "faster" )
        self _meth_829E( 25, 50 );
}

_ID51369()
{
    wait 2;
    level._ID794 _meth_80A9( 1, 1, 1, 0, 0, 0, 0 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 5;
    _ID42407::_ID28864( "est_pri_underattack" );
}

_ID45014()
{
    _ID42407::_ID41119( "cigar_box_pullout" );
    var_0 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_0 _meth_80B8( "prop_cigarette_pack" );
    var_0 _meth_8053( self, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    wait 0.25;
    var_1 = self._ID7534;
    _ID42407::_ID41119( "lighter_pullout" );
    var_0 _meth_80B7();
    _ID42407::_ID41119( "lighter_on" );
    _func_157( _ID42237::_ID16299( "cigar_glow_puff" ), var_1, "tag_cigarglow" );
    wait 1;
    _func_157( _ID42237::_ID16299( "cigar_smoke_puff" ), self, "tag_eye" );
    _ID42407::_ID41119( "shepherd_exhale" );
    _func_157( _ID42237::_ID16299( "cigar_exhale_estate" ), self, "tag_eye" );
    _ID42407::_ID41119( "shepherd_exhale" );
    _func_157( _ID42237::_ID16299( "cigar_glow_puff" ), var_1, "tag_cigarglow" );
    wait 1;
    _func_157( _ID42237::_ID16299( "cigar_smoke_puff" ), self, "tag_eye" );
    _ID42407::_ID41119( "shepherd_exhale" );
    _func_157( _ID42237::_ID16299( "cigar_exhale_estate" ), self, "tag_eye" );
    _ID42407::_ID41119( "shepher_flick" );
    _ID42237::_ID14402( "cigar_flicked" );
    _func_157( _ID42237::_ID16299( "cigar_glow" ), var_1, "tag_cigarglow" );
    _ID42237::_ID14413( "cigar_flareup" );
}

_ID53916( var_0, var_1 )
{
    var_2 = 0.1;
    var_3 = 1;
    var_4 = 0.1;
    var_5 = 0.31;

    if ( _func_02F( var_1 ) )
        var_6 = var_1;

    var_7 = var_0;
    _ID42407::_ID34379();
    _ID42407::_ID34377( var_5 );
    _ID42407::_ID34374( var_2 );
    _ID42407::_ID34371();
    level._ID794 _meth_81F1( var_4 );
    wait(var_7 * var_5);
    _ID42407::_ID34375( var_3 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
    level._ID794 _meth_81F1( 1.0 );
}

_ID44249()
{
    self.cheat._ID48626 = 1;
    self.cheat.ignorewolfthink = 1;

    if ( !_func_02F( level._ID48935 ) )
        level._ID48935 = [];

    self._ID3189 = self._ID922;
    self._ID1194 = "allies";
    level._ID48935[self._ID922] = self;

    if ( !_func_125( self._ID922, "ghost_ending" ) && !_func_125( self._ID922, "shepherd_ending" ) )
        thread _ID49347::addspecialmonitors();

    thread _ID42407::_ID22746();
}

_ID53759()
{
    _ID42237::_ID14413( "end_the_mission" );
    wait 1.9;
    _ID42407::_ID24793();
}

remove_objective_ghost()
{
    _ID42237::_ID14388( "player_close" );
    _ID42237::_ID14413( "player_close" );
    _func_1E8( 3, ( 0, 0, 0 ) );
}

ending_drag_cinseq()
{

}

meeting_shepherd_cinseq()
{
    var_0 = _ID54167::_ID43386( "meeting_shepherd" );
    var_1 = level._ID48935["shepherd_ending"];
    var_1 _meth_804E( "J_Holster_gun" );
    thread _unknown_454D();
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 24, 250, 32, 32 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 3.5 ) _ID54167::_ID50321( 2.8, -1, 4, 4 ) _ID54167::_ID52391( level._ID48935["ghost_ending"], "tag_eye" ) _ID54167::_ID44518( -1.0 ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 7.0 ) _ID54167::_ID50321( 2.8, -1, 4, 4 ) _ID54167::_ID52391( var_1, "tag_eye" ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 22.5 ) _ID54167::_ID50321( 5.6, -1, 4, 4 ) _ID54167::_ID52391( var_1, "tag_eye" ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 25.0 ) _ID54167::_ID50321( 5.6, -1, 6, 6 ) _ID54167::_ID52391( var_1, "tag_eye" ) _ID54167::_ID44518( -1.0 ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 26.5 ) _ID54167::_ID50321( 5.6, -1, 4, 4 ) _ID54167::_ID52391( var_1, "tag_eye" ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 31.5 ) _ID54167::_ID50321( 5.6, -1, 6, 6 ) _ID54167::_ID52391( var_1, "tag_eye" ) _ID54167::_ID44518( -1.0 ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 34.0 ) _ID54167::_ID50321( 5.6, -1, 6, 6 ) _ID54167::_ID52391( var_1, "tag_eye" ) _ID54167::_ID44518( -2.0 ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 34.5 ) _ID54167::_ID50321( 5.6, -1, 6, 6 ) _ID54167::_ID52391( var_1, "tag_eye" ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 39.5 ) _ID54167::_ID50321( 5.6, -1, 6, 6 ) _ID54167::_ID52391( level._ID48935["guy2_ending"], "tag_eye" ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 42.5 ) _ID54167::_ID50321( 5.6, 500, 6, 6 );
    var_0 _ID54167::_ID48800( 43.85 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 24.75 ) _ID54167::_ID44191( 53, 0.05, 0 );
    var_0 _ID54167::_ID48800( 26.85 ) _ID54167::_ID43500( 4.5, 0 );
    var_0 _ID54167::_ID48800( 26.35 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 30.0 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 24.75 ) _ID54167::_ID43376( ::_unknown_45FD, level._ID794, 0.5 );
    var_0 _ID54167::_ID48800( 3.9 ) _ID54167::_ID47198( 0.12, 0.5, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 5.1 ) _ID54167::_ID47198( 0.12, 0.4, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 7.25 ) _ID54167::_ID47198( 0.14, 0.8, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 22.5 ) _ID54167::_ID47198( 0.14, 0.75, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 24.75 ) _ID54167::_ID47198( 0.35, 1.0, level._ID794, 1000 );
    var_0 _ID54167::_ID48800( 25.5 ) _ID54167::_ID47198( 0.12, 0.5, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 25.75 ) _ID54167::_ID47198( 0.12, 0.5, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48800( 26.4 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 27.2 ) _ID54167::_ID47198( 0.1, 0.4, level._ID794, 1000 );
    var_0 _ID54167::_ID48800( 27.4 ) _ID54167::_ID47198( 0.1, 0.5, level._ID794, 1000 );
    var_0 _ID54167::_ID48800( 30.25 ) _ID54167::_ID47198( 0.12, 0.5, level._ID794, 1000 );
    var_0 _ID54167::_ID48800( 30.65 ) _ID54167::_ID47198( 0.1, 0.7, level._ID794, 1000 );
    var_0 _ID54167::_ID48800( 32.1 ) _ID54167::_ID47198( 0.12, 0.4, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 32.8 ) _ID54167::_ID47198( 0.1, 0.2, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 33.85 ) _ID54167::_ID47198( 0.12, 1.0, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48800( 39.85 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 40.3 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 1000 );
    var_0 _ID54167::_ID48800( 40.8 ) _ID54167::_ID47198( 0.12, 0.5, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48166();
}

meet_shepherd_whiteflash( var_0 )
{
    var_1 = _ID42313::_ID9125( "white", 1 );
    var_1 thread _ID42313::_ID13803( 0, var_0 );
}

thrown_and_burned_cinseq()
{
    var_0 = _ID54167::_ID43386( "thrown_and_burned" );
    var_1 = level._ID48935["shepherd_ending"];

    if ( _ID42407::_ID18252( var_1._ID669, "J_Holster_gun" ) )
        var_1 _meth_8051( "J_Holster_gun" );

    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, -1, 8, 8 ) _ID54167::_ID52391( level._ID48935["guy2_ending"], "tag_eye" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 3.0 ) _ID54167::_ID50321( 5.6, 10, 6, 6 );
    var_0 _ID54167::_ID48800( 4.2 ) _ID54167::_ID50321( 5.6, 300, 6, 6 );
    var_0 _ID54167::_ID48800( 5.75 ) _ID54167::_ID50321( 2.8, -1, 6, 6 ) _ID54167::_ID52391( level._ID48935["ghost_ending_dead"], "tag_eye" ) _ID54167::_ID44518( 0.5 ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 12.2 ) _ID54167::_ID50321( 3.5, -1, 6, 6 ) _ID54167::_ID52391( level._ID48935["gasolineGuy"], "tag_eye" ) _ID54167::_ID44545( 1 );
    var_0 _ID54167::_ID48800( 21.0 ) _ID54167::_ID50321( 3.5, -1, 4, 4 ) _ID54167::_ID52391( level._ID48935["shepherd_ending"], "tag_eye" ) _ID54167::_ID44545( 2 );
    var_0 _ID54167::_ID48800( 49.0 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 4.85 ) _ID54167::_ID44191( 48, 0.75, 0 );
    var_0 _ID54167::_ID48800( 6.0 ) _ID54167::_ID43500( 3.35, 0 );
    var_0 _ID54167::_ID48800( 9.35 ) _ID54167::_ID44191( 57, 0.05, 0 );
    var_0 _ID54167::_ID48800( 10.0 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 2.5, 0.7, 1.5, 0, 0, 4, -4 );
    var_0 _ID54167::_ID48800( 18.3 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 4.5, 2.0, 2.0, 0, 0, 1, -1 );
    var_0 _ID54167::_ID48800( 20.2 ) _ID54167::_ID43500( 5.15, 0 );
    var_0 _ID54167::_ID48800( 26.85 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 3.5, 2.0, 1.0, 0, 0, 0, 0 );
    var_0 _ID54167::_ID48800( 2.65 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 9.5 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 25.8 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 26.7 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 2.0 ) _ID54167::_ID47198( 0.1, 0.4, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.65 ) _ID54167::_ID47198( 0.12, 0.85, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID47198( 0.1, 0.5, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 6.75 ) _ID54167::_ID47198( 0.1, 0.4, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 8.45 ) _ID54167::_ID47198( 0.08, 0.3, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 13.35 ) _ID54167::_ID47198( 0.05, 0.45, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 14.15 ) _ID54167::_ID47198( 0.05, 0.45, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 16.6 ) _ID54167::_ID47198( 0.05, 0.45, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 17.65 ) _ID54167::_ID47198( 0.05, 0.45, level._ID794, 1000 );
    var_0 _ID54167::_ID48800( 18.3 ) _ID54167::_ID47198( 0.05, 0.45, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 27.25 ) _ID54167::_ID47198( 0.12, 1.0, level._ID794, 1000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48166();
}

hiding_shepherd_name()
{
    var_0 = level._ID48935["shepherd_ending"];
    var_0 _ID42237::_ID18518( "begin_overlapped_gasoline_sequence" );
}

static_group_monitor( var_0, var_1, var_2 )
{
    level endon( var_1 );
    _func_31C( var_2 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        _func_31B( var_2 );
        _ID42237::_ID14426( var_0 );
        _func_31C( var_2 );
    }
}
