// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\trainer_mission_select_cam::_ID50320();
        return;
    }

    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" )
    {
        maps\trainer_beautiful_corner::_ID50786();
        return;
    }

    _unknown_006D();
    _ID42323::_ID616();
    _unknown_018B();
    thread _unknown_26EB();
    thread _unknown_2801();
    thread _unknown_2822();
    thread _unknown_284F();
    thread _unknown_28C6();
    thread _unknown_28E5();
    thread _ID43744();
    level._ID43135.greenberet_disabled = 1;
    _func_0DB( "fx_cast_shadow", 0 );
    _func_0DB( "ai_perf_disableStairsSteepMetrics", "1" );
    thread _unknown_2947( "h2_hidestaticmodelgroup_2", 2, 1 );
    thread _unknown_2951( "h2_showstaticmodelgroup_3", 3 );
    thread _unknown_295C( "h2_hidestaticmodelgroup_4", 4, 1 );
    thread _unknown_2967( "h2_hidestaticmodelgroup_1", 1, 1 );
    thread _unknown_29B4();
    thread _unknown_29BF();
    level._ID22796 = ::_unknown_29F6;
}

_ID28333()
{
    _ID42407::_ID32246();

    if ( level._ID8534 )
        level._ID54024 = 1.6;
    else
        level._ID54024 = 1.2;

    _func_036( "trainer_debug", "0" );
    level._ID52222 = 0;
    level._ID46977 = 0;
    level._ID52821 = 0;
    level._ID47018 = 1.5;
    level._ID12029 = ::_unknown_1EBB;
    level._ID35278 = ::_unknown_217D;
    level._ID48204 = _func_039( "objectiveAlpha" );
    level._ID54359 = 0;
    _func_0DB( "ui_hideGrenadeWidget", 1 );
    _func_150( &"MENU_TYPE_INVERT_AXIS" );
    _func_150( &"MENU_TYPE_INVERT_AXIS_CONFIRM" );
    _func_150( &"difficulty_selection_menu" );
    level._ID47716 = 0;
    level._ID44636 = [];
    level._ID46990 = undefined;
    level.pitbosstime = 30.0;
    level.studentmastertime = 19.7;
    level.faileddifficulty = 1000;
    level._ID54267 = 29.05;
    level._ID45602 = 240;
    level._ID53047 = 75;
    level._ID54224 = 43;
    level._ID46775 = 35;
    level._ID50219 = 5;
    level._ID45237 = 18;
    level._ID52214 = 2;
    level._ID51015 = 2;
    level._ID46466 = 160;
    level._ID46979 = 80;
    level._ID43514 = [];
    level._ID49991 = [];
    level._ID196["white"] = ( 1, 1, 1 );
    level._ID196["red"] = ( 1, 0, 0 );
    level._ID196["blue"] = ( 0.1, 0.3, 1 );
    _ID42407::_ID1951( "timed_ads", ::_unknown_04FE, "timed_ads" );
    _ID42407::_ID1951( "bullet_penetration", ::_unknown_0520, "bullet_penetration" );
    _ID42407::_ID1951( "frag", ::_unknown_0540, "frag" );
    _ID42407::_ID1951( "pit", ::_unknown_0560, "pit" );
    _ID42407::_ID1951( "course", ::_unknown_058B, "course" );
    _ID42407::_ID1951( "end", ::_unknown_05C4, "end" );

    if ( _ID42407::_ID20614() )
    {
        _ID42407::_ID1951( "so_killspree_trainer_start_map", level._ID47350 );
        _ID42407::_ID10126( level._ID47350 );
    }
    else
    {
        _ID42237::_ID3294( _func_1A2( "so_gate", "targetname" ), ::_meth_80B7 );
        _ID42407::_ID10126( ::_unknown_0577 );
        var_0 = _func_1A1( "pit", "targetname" );
    }

    _unknown_1878();
    _ID47043::_ID616();
    maps\ssdd_lighting::_ID616();
    _ID47110::_ID616();
    _ID44965::_ID616();
    _ID49556::_ID616();
    _ID42287::_ID521();
}

_ID49693()
{
    _ID42237::_ID14400( "never" );
    _ID42237::_ID14400( "can_talk" );
    _ID42237::_ID14402( "can_talk" );
    _ID42237::_ID14400( "start_anims" );
    _ID42237::_ID14400( "no_more_course_nags" );
    _ID42237::_ID14400( "firing_range_initialized" );
    _ID42237::_ID14400( "player_picked_up_rifle" );
    _ID42237::_ID14400( "player_facing_targets_for_hip_fire" );
    _ID42237::_ID14400( "hip_fire_done" );
    _ID42237::_ID14400( "firing_range_hip_and_ads_done" );
    _ID42237::_ID14400( "foley_turns_for_ads_demo" );
    _ID42237::_ID14400( "foley_done_talking_from_hip_ads_training" );
    _ID42237::_ID14400( "foley_done_talking_from_timed_ads_training" );
    _ID42237::_ID14400( "foley_turns_for_adstimed_demo" );
    _ID42237::_ID14400( "firing_range_timed_ads_done" );
    _ID42237::_ID14400( "firing_range_penetration_done" );
    _ID42237::_ID14400( "foley_done_talking_from_penetration_training" );
    _ID42237::_ID14400( "player_can_pick_up_frags" );
    _ID42237::_ID14400( "player_just_threw_a_frag" );
    _ID42237::_ID14400( "frags_have_been_spawned" );
    _ID42237::_ID14400( "player_picked_up_frags" );
    _ID42237::_ID14400( "h2_player_picking_up_frags" );
    _ID42237::_ID14400( "targets_hit_with_grenades" );
    _ID42237::_ID14400( "player_has_thrown_frag_into_target" );
    _ID42237::_ID14400( "firing_range_frags_done" );
    _ID42237::_ID14400( "foley_done_talking_from_frag_training" );
    _ID42237::_ID14400( "training_intro_trainees_pre_end_idle" );
    _ID42237::_ID14400( "training_intro_end_anims" );
    _ID42237::_ID14400( "obj_go_to_the_pit_given" );
    _ID42237::_ID14400( "obj_go_to_the_pit_done" );
    _ID42237::_ID14400( "dunn_dialogue_welcome_01" );
    _ID42237::_ID14400( "dunn_dialogue_welcome_02" );
    _ID42237::_ID14400( "dunn_finished_welcome_anim" );
    _ID42237::_ID14400( "sidearm_complete" );
    _ID42237::_ID14400( "case_flip_01" );
    _ID42237::_ID14400( "case_flip_02" );
    _ID42237::_ID14400( "button_press" );
    _ID42237::_ID14400( "dunn_finished_with_open_case_dialogue" );
    _ID42237::_ID14400( "melee_target_hit" );
    _ID42237::_ID14400( "course_end_targets_dead" );
    _ID42237::_ID14400( "sprinted" );
    _ID42237::_ID14400( "pit_dialogue_starting" );
    _ID42237::_ID14400( "course_start_targets_dead" );
    _ID42237::_ID14400( "course_first_floor_targets_dead" );
    _ID42237::_ID14400( "course_second_floor_targets_dead" );
    _ID42237::_ID14400( "course_end_targets_dead" );
    _ID42237::_ID14400( "dunn_finished_with_difficulty_selection_dialogue" );
    _ID42237::_ID14400( "player_done_with_course" );
    _ID42237::_ID14400( "end_sequence_starting" );
    _ID42237::_ID14400( "h2_helicopter_ending_exploder" );
    _ID42237::_ID14400( "first_pit_run_done" );
    _ID42237::_ID14400( "pit_stop_loop" );
}

_ID28284()
{
    _ID42272::_ID33575( "compass_map_trainer" );

    if ( _ID42407::_ID20614() )
        maps\so_killspree_trainer_aud::_ID616();
    else
        maps\trainer_aud::_ID616();

    maps\trainer_anim::_ID616();
    _unknown_04D6();
    level._ID50259 = [];
    level._ID46855 = [];
    level._ID45118 = [];
    level._ID47989 = [];
    level._ID50144 = _func_1A1( "plywood", "script_noteworthy" );
    level._ID50144 _meth_82C2( -90, 0.25, 0.1, 0.1 );
    level._ID48264 = _func_03D();
    level._ID52787 = _func_1A2( "target_rail_start_point", "targetname" );
    var_0 = _func_1A2( "target_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_1800 );
    var_1 = _func_1A2( "target_enemy", "script_noteworthy" );
    var_2 = _func_1A2( "target_friendly", "script_noteworthy" );
    level.target_ents = [];
    _ID42237::_ID3350( var_2, ::_unknown_1868, "friendly" );
    _ID42237::_ID3350( var_1, ::_unknown_1874, "enemy" );
    level._ID52991 = 0;
    level._ID44713 = 0;
    var_3 = _func_1A2( "target_enemy", "script_noteworthy" );
    var_4 = _func_1A2( "target_friendly", "script_noteworthy" );
    level._ID37340 = _ID42407::_ID3317( var_3, var_4 );
    level._ID35356 = _func_1A2( "speakers", "targetname" );
    level._ID51928 = 0;
    level._ID43062 = "m4_grunt_SSDD";
    level._ID48180 = 30;
    level._ID53299 = "deserteagle";
    var_5 = _func_1A2( "pit_weapons", "targetname" );
    _ID42237::_ID3350( var_5, ::_unknown_229D );
    level._ID8760 = [];
    level._ID8760["45"] = _func_0BC( 45 );
    level._ID8760["90"] = _func_0BC( 90 );
    var_6 = _ID42411::_ID49705();
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_unknown_22CE );
    _ID42237::_ID3350( _func_1A2( "ai_ambient", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_23B4 );
    _ID42237::_ID3350( _func_1A2( "ai_shooter", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2536 );
    _ID42407::_ID3343( "patrol", ::_unknown_23C9 );
    _ID42407::_ID3343( "runners", ::_unknown_2AF6 );
    _ID42237::_ID3350( _func_1A2( "friendlies_basketball", "targetname" ), _ID42407::_ID1947, ::_unknown_2E4E );
    _ID42237::_ID3350( _func_1A2( "h2_tank_shootingrange", "targetname" ), _ID42407::_ID1947, ::_unknown_2DD2 );
    _ID42237::_ID3350( _func_1A2( "h2_pit_ai", "targetname" ), _ID42407::_ID1947, ::_unknown_2E79 );
    _ID42237::_ID3350( _func_1A2( "trainees", "targetname" ), _ID42407::_ID1947, ::_unknown_2EBA );
    _func_1A1( "trainee_01", "script_noteworthy" ) thread _ID42407::_ID1947( ::_unknown_2ECE );
    level._ID388 = _ID42407::_ID35168( "foley", 1 );
    level._ID388._ID3189 = "foley";
    level._ID388._ID3190 = _func_06A( "script_origin", ( -2512.5, 5138.8, -56.1 ) );
    level._ID388._ID3190._ID65 = ( 0, -90, 180 );
    level.grenade_box = _func_1A1( "grenade_box", "targetname" );
    level.grenade_box _ID42407::_ID3428( "grenade_box" );
    level._ID46416 = _ID42407::_ID3311( _func_1A2( "frags", "script_noteworthy" ) );
    var_7 = level._ID46416;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_8 _meth_8053( level.grenade_box, "J_Box" );
    }

    var_clear_2
    var_clear_0
    level.anim_frags = [ level._ID46416[8], level._ID46416[12], level._ID46416[11] ];

    for ( var_10 = 0; var_10 < level.anim_frags.size; var_10++ )
        level.anim_frags[var_10] _ID42407::_ID3428( "grenade" + var_10 + 1 );

    level.foley_frag = level.anim_frags[2];
    level.player_additional_frag = level._ID46416[10];
    level.grenadeanimnode = level._ID388._ID3190;
    level.grenadeanimnode _ID42259::_ID3018( level.grenade_box, "training_intro_talk7" );
    level._ID388 _ID42407::_ID14803( "m4_grunt_SSDD", "primary" );
    level._ID54412 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    level._ID54412._ID740 = level._ID388._ID3190._ID740;
    level._ID54412._ID65 = level._ID388._ID3190._ID65;
    level._ID54244 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    level._ID54244._ID740 = level._ID388._ID3190._ID740;
    level._ID54244._ID65 = level._ID388._ID3190._ID65;
    _unknown_140E();
    level._ID46577 = _func_1A1( "pit_case_01", "targetname" );
    level._ID51674 = _func_1A1( "pit_case_02", "targetname" );
    level._ID46577._ID3189 = "training_case_01";
    level._ID51674._ID3189 = "training_case_02";
    level._ID46577 _ID42407::_ID3428();
    level._ID51674 _ID42407::_ID3428();
    level._ID49518 = [];
    level._ID49518[0] = level._ID46577;
    level._ID49518[1] = level._ID51674;
    level._ID50840 = _ID42407::_ID3339( _func_1A2( "trainees", "targetname" ), 1 );
    level._ID52085 = _ID42407::_ID35150( "translator", 1 );
    level._ID52085 _ID42407::_ID17509();
    level._ID52085._ID3189 = "translator";
    level._ID54742 = _ID42407::_ID35150( "trainee_01", 1 );
    level._ID54742 _ID42226::_ID32651( "head_trn_arab_g" );
    level._ID54742 _meth_80B8( "body_ally_arab_trn_smg_a" );
    level._ID54742._ID3189 = "trainee_01";
    level._ID54742 _ID42407::_ID17509();
    level._ID54742 _ID42407::_ID14803( "m4_grunt_SSDD", "primary" );
    level._ID54244 thread _ID42259::_ID3018( level._ID52085, "training_intro_begining" );
    level._ID52085 _ID45995::_ID48826( "head", level._ID794, 300, 90, 90, 30, 45, 0, 1, 10, 0 );
    level._ID54412 thread _ID42259::_ID3044( level._ID54742, "training_intro_idle", "stop_firing_range_anim" );
    _ID42237::_ID3350( level._ID50840, ::_unknown_0C70 );
    level._ID388._ID3190 thread _ID42259::_ID3018( level._ID388, "training_intro_begining" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    level._ID51435 = 1;
    level._ID25349 = [];
    _unknown_21C5();
    level._ID52735 = [];
    level._ID52735[0] = level._ID388;
    level._ID52735[1] = level._ID52085;
    level._ID52735[2] = level._ID54742;
    level._ID52735 = _ID42407::_ID3317( level._ID52735, level._ID50840 );
    level._ID53991 = _unknown_25B5( "gate_cqb_enter" );
    level._ID52018 = _unknown_25BE( "gate_cqb_exit" );
    level._ID50961 = _unknown_25C8( "gate_cqb_enter_main" );
    level._ID50961._ID48191 = -170;
    level._ID50961._ID43865 = 170;
    level._ID52018._ID48191 = -95;
    level._ID52018._ID43865 = 95;

    if ( !_ID42407::_ID20614() )
    {
        level._ID50961 thread _unknown_1A8A();
        level._ID794 _meth_831B();
    }

    if ( !_ID42407::_ID20614() )
    {
        level._ID53232 = _ID42407::_ID3339( _func_1A2( "friendlies_ambient", "targetname" ), 1 );
        thread _unknown_2964();
        level._ID50566 = _ID42407::_ID3339( _func_1A2( "friendlies_basketball", "targetname" ), 1 );
        thread _unknown_2E60( "runner_group_01" );
        thread _unknown_2E68( "runner_group_02" );
        thread _unknown_0CF5();
    }

    thread _unknown_0CDB();
    var_11 = _func_1A2( "laatpv_gate", "targetname" );
    var_12 = var_11;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        var_13 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_15 = _func_1A2( "dummies", "targetname" );
    _ID42237::_ID3294( var_15, ::_meth_80B7 );
    level._ID53419 = _func_1A1( "firing_range_area", "targetname" );
    thread _unknown_0C77();
    thread _unknown_2EEE();
    thread _unknown_2F10();
    thread _unknown_2F30();
    level._ID794 thread _unknown_0C7A();
    thread _unknown_321D();
    thread _unknown_3273();
}

precognitive_paranoia_think()
{
    thread _unknown_0C5C();
    thread _unknown_0C6F();
}

precognitive_paranoia_watch_death()
{
    self waittill( "death",  var_0  );

    if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
    {
        _ID42407::_ID16864( "PRECOGNITIVE_PARANOIA" );
        _func_034( "ui_deadquote", &"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN" );
        _ID42407::_ID23778();
    }
}

precognitive_paranoia_watch_damage()
{
    self endon( "death" );
    var_0 = 0;

    for (;;)
    {
        self waittill( "damage",  var_2, var_1  );

        if ( _func_02F( var_2 ) && _func_1B3( var_2 ) )
        {
            var_0 += var_1;

            if ( var_0 >= 150 )
            {
                if ( _ID42407::_ID20537() )
                    _ID42407::_ID39502();

                if ( _func_02F( self._ID22746 ) && self._ID22746 == 1 )
                    _ID42407::_ID36519();

                self _meth_814B();
                self _meth_8023();
                self _meth_8058( self._ID740, level._ID794 );
                break;
            }
        }
    }
}

_ID48335()
{
    level endon( "button_press" );

    for (;;)
    {
        level._ID794 waittill( "reload_start" );

        if ( _ID42237::_ID14385( "player_inside_course" ) )
            break;

        var_0 = self _meth_831C();

        if ( level._ID794 _meth_8304( var_0 ) < 100 )
            level._ID794 _meth_8302( var_0, 9999 );
    }
}

_ID54730()
{
    wait 0.5;
    level._ID51809 = level._ID49991.size;
    level._ID47807 = level._ID43514.size;
}

_ID47474()
{
    maps\ssdd_lighting::_ID43713( "timed_ads" );
    thread _unknown_0E51();
    _ID42475::_ID34575( "start_timed_ads_checkpoint" );
}

_ID46468()
{

}

_ID46874()
{
    maps\ssdd_lighting::_ID43713( "timed_ads" );
    _ID42475::_ID34575( "start_timed_ads_checkpoint" );
    _unknown_1036();
    thread _unknown_0E80();
    _ID42237::_ID14402( "firing_range_hip_and_ads_done" );
    _ID42237::_ID14402( "foley_done_talking_from_hip_ads_training" );
    _ID42407::_ID10226( 3, ::_unknown_11EC );
    thread _unknown_0F1E();
}

_ID54211()
{
    maps\ssdd_lighting::_ID43713( "bullet_penetration" );
    _ID42475::_ID34575( "start_bullet_penetration_checkpoint" );
    _unknown_106E();
    thread _unknown_0EB8();
    _ID42237::_ID14402( "firing_range_timed_ads_done" );
    _ID42237::_ID14402( "foley_done_talking_from_timed_ads_training" );
    thread _unknown_1309();
    thread _unknown_0F52();
}

_ID51053()
{
    maps\ssdd_lighting::_ID43713( "frag" );
    _ID42475::_ID34575( "start_frag_checkpoint" );
    _unknown_10A2();
    thread _unknown_0EEC();
    _ID42237::_ID14402( "firing_range_penetration_done" );
    _ID42237::_ID14402( "foley_done_talking_from_penetration_training" );
    thread _unknown_13CA();
    thread _unknown_0F85();
}

_ID49366()
{
    maps\ssdd_lighting::_ID43713( "pit" );
    _ID42475::_ID34575( "start_pit_checkpoint" );
    _ID42237::_ID14402( "foley_done_talking_from_frag_training" );
    _ID42237::_ID14402( "firing_range_frags_done" );
    level._ID794 _meth_8319( level._ID43062 );
    level._ID794 _meth_8320( level._ID43062 );
    var_0 = _func_1A1( "pit_start", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    thread _unknown_1603();
}

_ID52784()
{
    maps\ssdd_lighting::_ID43713( "course" );
    _ID42475::_ID34575( "start_course_checkpoint" );
    _ID42237::_ID14402( "dunn_finished_welcome_anim" );
    level.pitanimnode = _func_1A5();
    level.pitanimnode._ID740 = ( -3568, 2280, -192 );
    level.pitanimnode._ID65 = ( 0, -90, 0 );
    level._ID794 _meth_8319( level._ID53299 );
    level._ID794 _meth_8319( level._ID43062 );
    level._ID794 _meth_8320( level._ID43062 );
    var_0 = _func_1A1( "course_start_pit", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    thread _unknown_1843();
    _ID42407::_ID40561( "trainer_pit", 0 );
}

_ID45346()
{
    maps\ssdd_lighting::_ID43713( "end" );
    _ID42475::_ID34575( "start_end_checkpoint" );
    level._ID794 _meth_8319( level._ID53299 );
    level._ID794 _meth_8319( level._ID43062 );
    level._ID794 _meth_8320( level._ID43062 );
    var_0 = _func_1A1( "course_leave", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    _unknown_2489( "obj_course", &"TRAINER_OBJ_EXIT_THE_PIT", _func_1A1( "course_start", "targetname" ) );
    _unknown_24AB( "obj_course", "current" );
    thread _unknown_1E67();
    _ID42407::_ID40561( "trainer_pit", 0 );
}

_ID24574()
{
    var_0 = _func_1A1( "radio_org", "targetname" );

    for (;;)
    {
        var_0 _meth_80A1( "mus_training_radio_music_01", "done" );
        var_0 waittill( "done" );
        wait 1;
        var_0 _meth_80A1( "mus_training_radio_music_02", "done" );
        var_0 waittill( "done" );
        wait 1;
        var_0 _meth_80A1( "mus_training_radio_music_03", "done" );
        var_0 waittill( "done" );
        wait 1;
        var_0 _meth_80A1( "mus_training_radio_music_04", "done" );
        var_0 waittill( "done" );
        wait 1;
    }
}

_ID46745()
{
    var_0 = _ID42411::_ID35200( "heli_group_01" );
    thread maps\trainer_aud::aud_handle_veh_group( var_0, "pavelow", 1 );
    thread _unknown_3346();
}

_ID45999()
{
    thread _unknown_10CA();
    _ID42237::_ID14413( "start_anims" );
    thread _unknown_1298();
    _ID42237::_ID14413( "firing_range_hip_and_ads_done" );
    thread _unknown_1439();
}

_ID49618()
{
    _func_0DB( "g_friendlyNameDist", 196 );
    level._ID794 _meth_82D5();
    level._ID794 _meth_831B();
    var_0 = _func_1A1( "player_start_range", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A1( "ads_target_trigger_middle", "targetname" );
    var_2 = _func_1A1( "ads_target_trigger_front", "targetname" );
    var_3 = _func_1A1( "ads_target_trigger_rear", "targetname" );
    var_4 = _func_1A1( "timed_ads_target_trigger", "targetname" );
    var_1 thread _unknown_20AF();
    var_2 thread _unknown_20B4();
    var_3 thread _unknown_20B9();
    var_4 thread _unknown_20BE();
    level._ID50634 = var_2._ID37340;
    level._ID48544 = var_1._ID37340;
    level._ID53608 = var_4._ID37340;
    level._ID47786 = var_4._ID37340;
    level._ID388 _ID45995::_ID48826( "upperbody", level._ID794, undefined, undefined, undefined, undefined, undefined, 1, 1 );
    _ID42237::_ID14402( "firing_range_initialized" );
    _ID42237::_ID14413( "obj_go_to_the_pit_given" );
    _func_0DB( "g_friendlyNameDist", 15000 );
}

firing_range_anim_then_idle( var_0, var_1, var_2 )
{
    self notify( "stop_firing_range_anim" );
    self endon( "stop_firing_range_anim" );
    _ID42259::_ID3111( var_0, var_1 );
    thread _ID42259::_ID3044( var_0, var_2, "stop_firing_range_anim" );
}

firing_range_generic_trainees_anims()
{
    if ( !_func_02F( self._ID70 ) )
        return;

    _unknown_36FC();

    if ( _func_02F( self._ID922 ) )
        _ID42226::_ID32651( self._ID922 );

    var_0 = self._ID70 + "_idle";

    if ( _unknown_2E08( var_0, "generic" ) )
        level._ID54412 thread _ID42259::_ID3025( self, var_0, "stop_firing_range_anim" );

    _ID42237::_ID14413( "training_intro_trainees_pre_end_idle" );
    var_1 = self._ID70 + "_pre_end_idle";

    if ( _unknown_2E2F( var_1, "generic" ) )
        level._ID54412 thread _ID42259::_ID3025( self, var_1, "stop_firing_range_anim" );

    _ID42237::_ID14413( "training_intro_end_anims" );
    var_2 = self._ID70 + "_end";

    if ( _unknown_2E56( var_2, "generic" ) )
        level._ID54412 _ID42259::_ID3020( self, var_2, "stop_firing_range_anim" );

    var_3 = self._ID70 + "_end_idle";

    if ( _unknown_2E74( var_3, "generic" ) )
        level._ID54412 thread _ID42259::_ID3025( self, var_3, "stop_firing_range_anim" );
}

firing_range_player_pick_up_gun()
{
    var_0 = _func_1A1( "pickup_rifle", "targetname" );
    var_1 = _func_06A( "script_model", var_0._ID740 );
    var_1 _meth_80B8( var_0._ID669 );
    var_1 _ID42407::_ID3428( "intro_gun" );
    var_1 _meth_805A();
    level._ID794 _meth_82D6();
    _unknown_136B( [ var_1 ], "training_intro_gunpickup", var_0 );
    var_1 _meth_80B7();
}

firing_range_player_pick_up_grenades()
{
    _ID42237::_ID14402( "h2_player_picking_up_frags" );
    _unknown_1383( level.anim_frags, "training_intro_grenadepickup" );
    level._ID794 _meth_833D( level._ID794 _meth_8350() );
    level._ID794 _meth_80A1( "grenade_pickup" );
    var_0 = level.anim_frags;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _meth_805A();
        var_1._ID18497 = 1;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( level.anim_frags, _ID42259::_ID3090, "training_intro_grenadepickup", 0.0 );
    waittillframeend;
    _ID42237::_ID3294( level.anim_frags, ::_meth_814B );
    thread _unknown_1995( level.anim_frags, 3.0 );

    if ( level.player_additional_frag._ID18497 )
        thread _unknown_19A9( [ level.player_additional_frag ], 3.0 );

    _ID42237::_ID14388( "h2_player_picking_up_frags" );
}

firing_range_player_pick_up_additional_grenade( var_0 )
{
    level.player_additional_frag _meth_805A();
    level.player_additional_frag._ID18497 = 1;
}

firing_range_player_pick_up_items( var_0, var_1, var_2 )
{
    var_3 = level._ID388._ID3190;
    var_4 = _ID42407::_ID35028( "worldbody" );
    var_4 _meth_805A();
    var_3 _ID42259::_ID3038( var_4, var_1 );
    var_5 = var_4 _meth_818C( "tag_player" );
    var_6 = var_0;
    var_6[var_6.size] = var_4;
    var_3 _ID42259::_ID3016( var_6, var_1 );

    if ( _func_02F( var_2 ) )
        var_2 waittill( "trigger" );

    _ID42237::_ID3294( var_0, ::_meth_8059 );
    level._ID794 _meth_8328();
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    var_7 = _func_06A( "script_origin", level._ID794._ID740 );
    var_7._ID65 = level._ID794 _meth_8346();
    level._ID794 _meth_8083( var_7, undefined, 1.0, 0.0, 0.0, 0.0, 0.0 );
    var_8 = level._ID794 _ID42259::_ID53505( var_4, 50.0, 180.0, 0.35, 0.7 );
    var_7 _meth_82B8( var_4 _meth_818C( "tag_camera" ) - ( 0, 0, 60 ), var_8, var_8 * 0.2, var_8 * 0.2 );
    var_7 _meth_82BF( var_4 _meth_818D( "tag_camera" ), var_8, var_8 * 0.2, var_8 * 0.2 );
    wait(var_8);
    level._ID794 _meth_8084( var_4, "tag_player", 1.0, 0.0, 0.0, 0.0, 0.0, 1 );
    var_4 _ID42237::_ID10192( 0.3, ::_meth_8059 );

    if ( var_1 == "training_intro_gunpickup" )
        thread _unknown_15A1();
    else if ( var_1 == "training_intro_grenadepickup" )
        thread _unknown_15D0();

    var_3 thread _ID42259::_ID3099( var_6, var_1 );
    var_8 = 0.5;
    var_9 = var_4 _ID42407::_ID16120( var_1 );
    wait(_func_067( var_9 ) - var_8);
    var_10 = _func_092( var_5 + ( 0, 0, 40 ), var_5 - ( 0, 0, 40 ) );
    var_11 = _func_06A( "script_origin", var_3._ID740 + var_10 - var_5 );
    var_11._ID65 = var_3._ID65;
    var_4 _ID42259::_ID46811( undefined, var_3, var_11, var_8 );
    level._ID794 _meth_8055();
    var_7 _meth_80B7();
    var_4 _meth_80B7();
    level._ID794 _meth_8329();
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
}

h2_trainer_pickuprifle_cinematic()
{
    var_0 = _ID54167::_ID43386( "pickup_rifle_cin" );
    var_0 _ID54167::_ID48800( 0.6 ) _ID54167::_ID47198( 0.2, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( 0.2, 0.8, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

h2_trainer_pickupgrenade_cinematic()
{
    var_0 = _ID54167::_ID43386( "pickup_grenades_cin" );
    var_0 _ID54167::_ID48800( 0.7 ) _ID54167::_ID47198( 0.14, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.1 ) _ID54167::_ID47198( 0.14, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID53770()
{
    level._ID54244 thread _unknown_15DD( level._ID52085, "training_intro_begining", "training_intro_idle2" );
    level._ID388._ID3190 _unknown_15F1( level._ID388, "training_intro_begining", "training_intro_idle3" );
    _ID42237::_ID14413( "hip_fire_done" );
    level._ID54244 thread _unknown_1609( level._ID52085, "training_intro_talk2", "training_intro_idle" );
    level._ID388._ID3190 _unknown_161D( level._ID388, "training_intro_talk2", "training_intro_idle2" );
    _ID42237::_ID14413( "firing_range_hip_and_ads_done" );
    level._ID54244 thread _unknown_1635( level._ID52085, "training_intro_talk3", "training_intro_idle" );
    level._ID388._ID3190 _ID42259::_ID3111( level._ID388, "training_intro_talk3" );
    _ID42237::_ID14402( "foley_done_talking_from_hip_ads_training" );
}

_ID43121()
{
    level._ID388._ID3190 thread _ID42259::_ID3044( level._ID388, "training_intro_idle", "stop_firing_range_anim" );
    wait 0.05;
}

_ID45771()
{
    _ID42237::_ID14413( "firing_range_initialized" );
    var_0 = 1;
    thread _unknown_17C8();
    _ID42237::_ID14413( "ps_train_fly_welcome" );
    _ID42475::_ID34575( "aud_start_mix_practice_range" );
    _ID42237::_ID14413( "foley_anim_pickup_weapon" );
    thread _unknown_16D8();

    if ( !_unknown_32D1() )
    {
        _unknown_2AC8( "obj_rifle", &"TRAINER_PICK_UP_A_RIFLE_FROM", _func_1A1( "range_rifle", "script_noteworthy" ) );
        _unknown_2AEA( "obj_rifle", "current" );
        var_1 = _func_1A1( "pickup_rifle", "targetname" );

        if ( _func_02F( var_1 ) )
            var_1 _ID42407::_ID16953( "h2_weapon_m4_grunt_obj" );

        level._ID388 thread _unknown_194D( "nag_rifle_pickup_0", 2, "player_picked_up_rifle" );
    }
    else
        var_0 = 0;

    while ( !_unknown_3328() )
        wait 0.05;

    _ID42237::_ID14402( "player_picked_up_rifle" );
    _ID42407::ui_set_waypoint_center_fade_settings( 2000, 0, 0 );

    if ( var_0 == 0 )
    {
        _unknown_2B3A( "obj_rifle", &"TRAINER_SHOOT_EACH_TARGET_WHILE1", _func_1A1( "firing_range", "targetname" ) );
        _unknown_2B5D( "obj_rifle", "current" );
    }
    else
    {
        _unknown_2B8F( "obj_rifle", &"TRAINER_SHOOT_EACH_TARGET_WHILE1" );
        _unknown_2BA9( "obj_rifle", _func_1A1( "firing_range", "targetname" ) );
    }

    _ID42407::_ID1985( _ID42407::_ID1687, 2.0 );
    _ID42407::_ID1841( _ID42237::_ID14413, "player_facing_targets_for_hip_fire" );
    level._ID388 _ID42407::_ID1890( _ID42407::_ID10805, "train_fly_turnaround" );
    thread _ID42407::_ID11231();
    thread _ID42407::_ID10226( 8, ::_unknown_19E2, "player_facing_targets_for_hip_fire" );

    while ( !_ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), level._ID53419._ID740, level._ID8760["45"] ) )
        wait 0.05;

    _ID42237::_ID14402( "player_facing_targets_for_hip_fire" );
    _unknown_2CC1();
    level._ID388 thread _unknown_1A49( "nag_hip_fire_0", 2, "player_needs_to_fire_from_the_hip", "hip_fire_done" );

    if ( level._ID1333 )
        thread _unknown_2C58( "hip_attack", undefined );
    else
        thread _unknown_2C65( "pc_hip_attack", undefined );

    var_2 = 2;
    var_3 = 0;
    _unknown_1A94( level._ID45118, var_2, var_3, undefined, undefined, 1 );
    level._ID794 notify( "did_action_stop_ads" );
    _unknown_2D0B();
    var_4 = undefined;

    if ( level._ID794 _ID42237::_ID20583() )
        thread _unknown_2C95( "look_inversion", 5 );
    else
        thread _unknown_2CA2( "look_inversion_pc", 5 );

    _ID42475::_ID34575( "aud_start_mix_info_popup" );
    _unknown_2C62( "obj_rifle", "done" );
    _ID42237::_ID14402( "hip_fire_done" );
    level._ID388 waittill( "train_fly_pickyourtargets" );
    thread _ID42407::_ID4422( "ads_training" );
    level._ID388 waittill( "train_fly_crouchfirst" );
    _unknown_2C8D( "obj_rifle", "current" );
    thread _unknown_2CBB( "obj_rifle", &"TRAINER_SHOOT_EACH_TARGET_WHILE" );
    var_2 = 3;
    var_3 = 1;
    var_5 = 1;

    if ( level._ID794 _meth_8188() != "crouch" )
        thread _unknown_2D0A( "crouch" );

    level._ID388 thread _unknown_1B1C( "nag_ads_fire_0", 2, "player_needs_to_ADS", "firing_range_hip_and_ads_done" );
    level._ID388 thread _unknown_1B30( "nag_crouch_fire_0", 2, "player_needs_to_crouch", "firing_range_hip_and_ads_done" );
    _unknown_1B59( level._ID50634, var_2, var_3, var_5 );
    level._ID794 notify( "did_action_crouch" );
    level._ID794 notify( "did_action_ads_360" );
    level._ID794 notify( "did_action_ads" );
    _unknown_2DDF();
    _unknown_2D0C( "obj_rifle", "done" );
    _ID42237::_ID14402( "firing_range_hip_and_ads_done" );

    if ( level._ID794 _meth_8188() != "stand" )
        thread _unknown_2D7C( "stand" );
}

_ID49630( var_0 )
{
    level endon( var_0 );

    if ( !_ID42237::_ID14385( var_0 ) )
        thread _unknown_2E24( &"TRAINER_HINT_TURN_AROUND" );
}

_ID53853( var_0, var_1, var_2 )
{
    thread _unknown_1BB5( var_2 );
    level endon( var_2 );

    while ( !_ID42237::_ID14385( var_2 ) )
    {
        wait(_func_0BA( 25, 35 ));
        var_3 = 1;

        if ( _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            _unknown_2D1A( var_0 + var_3, undefined, 1 );
            _ID42237::_ID14402( "can_talk" );
            var_3++;

            if ( var_3 > var_1 )
                var_3 = 1;
        }
    }
}

_ID51471( var_0, var_1, var_2, var_3 )
{
    thread _unknown_1C03( var_3 );
    level endon( var_3 );
    var_4 = 1;

    while ( !_ID42237::_ID14385( var_3 ) )
    {
        level waittill( var_2 );

        if ( _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            _unknown_2D64( var_0 + var_4, undefined, 1 );
            _ID42237::_ID14402( "can_talk" );
            var_4++;

            if ( var_4 > var_1 )
                var_4 = 1;
        }
    }
}

_ID52899( var_0 )
{
    _ID42237::_ID14413( var_0 );
    wait 0.05;
    _ID42237::_ID14402( "can_talk" );
}

_ID50635( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = 0;

    if ( _func_02F( var_5 ) )
    {
        var_7 = [];

        while ( var_7.size < var_0.size )
        {
            wait 0.05;
            var_8 = var_0;

            for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
            {
                var_9 = var_8[var_10];

                if ( var_9._ID31245 == var_7.size )
                    var_7[var_7.size] = var_9;
            }

            var_clear_2
            var_clear_0
        }

        var_0 = var_7;
    }

    for (;;)
    {
        wait 0.05;

        if ( var_6 >= var_1 )
            break;

        var_11 = var_0;

        for ( var_13 = _func_1DA( var_11 ); _func_02F( var_13 ); var_13 = _func_1BF( var_11, var_13 ) )
        {
            var_9 = var_11[var_13];

            if ( var_6 >= var_1 )
                break;

            var_9 notify( "pop_up" );
            var_9 waittill( "hit" );

            if ( _func_02F( var_3 ) )
            {
                if ( level._ID794 _meth_8188() == "crouch" )
                    level._ID794 notify( "did_action_crouch" );
                else
                {
                    thread _unknown_2EEA( "crouch" );
                    level notify( "player_needs_to_crouch" );
                    continue;
                }
            }

            if ( _func_02F( var_2 ) )
            {
                if ( var_2 == 0 )
                {
                    if ( !level._ID794 _ID42407::_ID20652() )
                    {
                        var_6++;
                        level._ID794 notify( "did_action_stop_ads" );
                    }
                    else
                    {
                        thread _unknown_2F20( "stop_ads", undefined, 1 );
                        level notify( "player_needs_to_fire_from_the_hip" );
                    }
                }

                if ( var_2 == 1 )
                {
                    if ( level._ID794 _ID42407::_ID20652() )
                    {
                        var_6++;
                        level._ID794 notify( "did_action_ads" );
                        level._ID794 notify( "did_action_ads_360" );
                    }
                    else
                    {
                        if ( level._ID1333 )
                            thread _unknown_2F57( "ads_360" );
                        else
                            thread _unknown_2F63( "ads" );

                        level notify( "player_needs_to_ADS" );
                    }
                }
            }

            if ( _func_02F( var_4 ) )
            {
                waitframe;
                var_12 = _func_03D();

                if ( level._ID48264 == var_12 )
                {
                    var_6++;
                    _unknown_300B();
                    continue;
                }

                _unknown_3012();
                level notify( "player_needs_to_shoot_through_plywood" );
                continue;
            }
        }

        var_clear_3
        var_clear_0
    }

    _ID42237::_ID3350( var_0, ::_unknown_2CE1 );
}

_ID45300()
{
    var_0 = level._ID794 _meth_821F( "autoAim" );

    if ( !var_0 || !level._ID794 _ID42237::_ID20583() )
    {
        level._ID54359 = 1;
        _ID42237::_ID14402( "firing_range_timed_ads_done" );
        _ID42237::_ID14402( "foley_done_talking_from_timed_ads_training" );
        thread _unknown_1F53();
    }
    else
    {
        thread _unknown_1EA9();
        _ID42237::_ID14413( "firing_range_timed_ads_done" );
        thread _unknown_1F65();
    }
}

_ID50995()
{
    _ID42237::_ID14413( "foley_done_talking_from_hip_ads_training" );
    level._ID54244 thread _unknown_1B82( level._ID52085, "training_intro_talk4", "training_intro_idle2" );
    level._ID388._ID3190 _unknown_1B96( level._ID388, "training_intro_talk4", "training_intro_idle" );
    _ID42237::_ID14413( "firing_range_timed_ads_done" );
    level._ID54244 thread _unknown_1BAE( level._ID52085, "training_intro_talk5", "training_intro_idle" );
    level._ID388._ID3190 _ID42259::_ID3111( level._ID388, "training_intro_talk5" );
    _ID42237::_ID14402( "foley_done_talking_from_timed_ads_training" );
}

_ID47436()
{
    _ID42237::_ID14413( "firing_range_hip_and_ads_done" );
    thread _unknown_1F04();
    thread _ID42407::_ID4422( "timed_ads" );
    level._ID388 waittill( "train_fly_showemprivate" );
    _unknown_3011( "obj_timed_rifle", &"TRAINER_SHOOT_EACH_TARGET_AS", _func_1A1( "firing_range", "targetname" ) );
    _unknown_3034( "obj_timed_rifle", "current" );
    level._ID388 waittill( "train_fly_iftargetclose" );

    if ( level._ID794 _meth_8303( level._ID43062 ) < level._ID48180 )
    {
        _unknown_30A5( "reload" );
        wait 2.0;
    }

    var_0 = 0;
    var_1 = 0;
    level._ID388 thread _unknown_1EBF( "nag_ads_snap_0", 4, "player_needs_to_ADS", "firing_range_timed_ads_done" );

    for (;;)
    {
        if ( _unknown_387F() && var_0 != 0 )
        {
            if ( level._ID1333 )
                var_2 = _unknown_3372( "ads_switch" );
            else
                var_2 = _unknown_337F( "ads_switch_shoulder" );

            var_3 = 1;
            thread _unknown_3186( var_2._ID18611, 10, var_3 );
            wait 4;
        }

        level._ID45023 = 0;
        level._ID53596 = 0;
        level._ID53131 = 0;
        thread _unknown_204E();
        level waittill( "a timed target has been hit" );
        level _ID42237::_ID41123( "player_has_hit_too_many_from_hip", 10 );
        level notify( "times_up" );

        if ( level._ID45023 > 6 )
        {
            if ( level._ID53596 > 4 )
                break;
        }

        wait 1;
        var_0++;
        _ID42237::_ID3350( level._ID47786, ::_unknown_2E75 );

        if ( level._ID53596 < 4 )
            level._ID388 _unknown_309F( "timed_ads_not_snapping_0" + var_1, undefined, 1 );
        else
            level._ID388 _unknown_30B1( "timed_ads_too_slow_0" + var_1, undefined, 1 );

        var_1++;

        if ( var_1 > 2 )
            var_1 = 0;

        wait 1;

        if ( level._ID794 _meth_8303( level._ID43062 ) < level._ID48180 )
        {
            thread _unknown_3181( "reload" );

            while ( level._ID794 _meth_8303( level._ID43062 ) < level._ID48180 )
                wait 0.1;

            _unknown_3222();
            wait 1;
        }
    }

    wait 1;
    _unknown_3156( "obj_timed_rifle", "done" );
    _ID42237::_ID3350( level._ID47786, ::_unknown_2EEF );
    wait 0.5;
    _ID42237::_ID14402( "firing_range_timed_ads_done" );
}

_ID51009()
{
    level endon( "times_up" );
    var_0 = level._ID47786;
    var_1 = -1;

    for (;;)
    {
        for (;;)
        {
            wait 0.05;
            var_2 = _func_0B7( var_0.size );

            if ( var_2 != var_1 )
                break;
        }

        var_1 = var_2;
        var_0[var_2] notify( "pop_up" );
        var_0[var_2] waittill( "hit" );
        level notify( "a timed target has been hit" );

        if ( level._ID794 _ID42407::_ID20652() )
        {
            level._ID53596++;
            level._ID794 notify( "did_action_ads" );
            level._ID794 notify( "did_action_ads_360" );
        }
        else
        {
            level._ID53131++;

            if ( level._ID53131 > 2 )
            {
                level notify( "player_has_hit_too_many_from_hip" );
                break;
            }

            if ( level._ID1333 )
                thread _unknown_323B( "ads_360" );
            else
                thread _unknown_3247( "ads" );

            level notify( "player_needs_to_ADS" );
        }

        level._ID45023++;
        wait 0.1;
    }
}

_ID44307()
{
    thread _unknown_21F6();
    _ID42237::_ID14413( "firing_range_penetration_done" );
    thread _unknown_2273();
}

_ID48360()
{
    if ( level._ID54359 == 1 )
        _ID42237::_ID14413( "foley_done_talking_from_hip_ads_training" );

    _ID42237::_ID14413( "foley_done_talking_from_timed_ads_training" );
    level._ID54244 thread _unknown_1E11( level._ID52085, "training_intro_talk6", "training_intro_idle" );
    level._ID388._ID3190 _unknown_1E25( level._ID388, "training_intro_talk6", "training_intro_idle" );
    _ID42237::_ID14402( "foley_done_talking_from_penetration_training" );
}

_ID54438()
{
    thread _unknown_2237();
    thread _ID42407::_ID4422( "penetration" );
    level._ID388 waittill( "train_fly_theprivatehere" );
    _unknown_326F( "obj_penetration", &"TRAINER_SHOOT_A_TARGET_THROUGH", _func_1A1( "obj_penetration_origin", "targetname" ) );
    _unknown_3292( "obj_penetration", "current" );

    while ( !_ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), level._ID53419._ID740, level._ID8760["45"] ) )
        wait 0.05;

    level._ID388 thread _unknown_211B( "nag_penetration_fire_0", 2, "player_needs_to_shoot_through_plywood", "firing_range_penetration_done" );
    thread _unknown_22F3();
    var_0 = 1;
    var_1 = undefined;
    var_2 = undefined;
    var_3 = 1;
    _unknown_2154( level._ID50259, var_0, var_1, var_2, var_3 );
    thread _unknown_2487();
    _unknown_32F1( "obj_penetration", "done" );
    _ID42407::_ID10226( 3, ::_unknown_2346 );
    _unknown_33DD();
    _ID42237::_ID14402( "firing_range_penetration_done" );
}

_ID46051()
{
    level._ID50144 _meth_82C2( 90, 0.25, 0.1, 0.1 );
    level._ID50144 _meth_80A1( "trainer_target_up_wood" );
    level._ID50144._ID1251 = 1;
    level._ID50144 endon( "plywood_going_down" );
    level._ID50144 _meth_82C8();
    level._ID50144 _meth_82CA( 1 );
    wait 0.25;

    while ( level._ID50144._ID1251 == 1 )
    {
        level._ID50144 waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( !_func_02F( var_1 ) )
            continue;

        if ( !_func_02F( var_4 ) )
            continue;

        if ( _func_1B3( var_1 ) )
            level._ID48264 = _func_03D();
    }
}

_ID47661()
{
    level._ID50144 _meth_82C2( -90, 0.25, 0.1, 0.1 );
    level._ID50144 _meth_80A1( "trainer_target_up_wood" );
    level._ID50144 notify( "plywood_going_down" );
    level._ID50144._ID1251 = 0;
}

_ID51152()
{
    thread _unknown_2454();
    _ID42237::_ID14413( "firing_range_frags_done" );
    thread _unknown_25FC();
}

_ID50727()
{
    _ID42237::_ID14413( "foley_done_talking_from_penetration_training" );
    level.grenadeanimnode _ID42407::_ID1985( _ID42259::_ID3111, level.grenade_box, "training_intro_talk7" );
    _ID42407::_ID1890( _ID42237::_ID14402, "player_can_pick_up_frags" );
    thread _ID42407::_ID11231();
    thread _unknown_246E();
    level._ID54244 thread _unknown_1FCD( level._ID52085, "training_intro_talk7", "training_intro_idle" );
    level._ID388._ID3190 _unknown_1FE2( level._ID388, "training_intro_talk7", "training_intro_idle" );
    wait 0.05;
    _ID42237::_ID14402( "foley_done_talking_from_frag_training" );
}

firing_range_foley_frag()
{
    level._ID388 waittillmatch( "single anim",  "grab_grenade"  );
    var_0 = level.foley_frag._ID740;
    var_1 = level.foley_frag._ID65;
    level.foley_frag _meth_8053( level._ID388, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID388 waittillmatch( "single anim",  "drop_grenade"  );
    level.foley_frag._ID740 = var_0;
    level.foley_frag._ID65 = var_1;
    level.foley_frag _meth_8053( level.grenade_box, "J_Box" );
}

_ID48898()
{
    if ( !_ID42237::_ID14385( "frags_have_been_spawned" ) )
        thread _unknown_262E();

    thread _ID42407::_ID4422( "frags" );
    thread _unknown_24FC();
    wait 1;
    _ID42407::ui_reset_waypoint_center_fade_settings();
    _ID42237::_ID14413( "player_can_pick_up_frags" );
    var_0 = 0;

    if ( !_ID42237::_ID14385( "player_picked_up_frags" ) )
    {
        thread _unknown_2644();
        _unknown_34B6( "obj_frags", &"TRAINER_PICK_UP_THE_FRAG_GRENADES", _func_1A1( "frag_pickup", "targetname" ) );
        _unknown_34D9( "obj_frags", "current" );
    }
    else
        var_0 = 1;

    while ( level._ID794 _meth_8304( level._ID794 _meth_8350() ) < 3 )
        wait 0.05;

    _ID42407::ui_set_waypoint_center_fade_settings( 2000, 0, 0 );
    level._ID794 _meth_832B();
    _func_0DB( "ui_hideGrenadeWidget", 0 );

    if ( var_0 )
    {
        _unknown_350A( "obj_frags", &"TRAINER_THROW_A_GRENADE_INTO", _func_1A1( "frag_obj", "targetname" ) );
        _unknown_352D( "obj_frags", "current" );
        _unknown_3569( "obj_frags", _func_1A1( "frag_obj", "targetname" ) );
    }
    else
    {
        thread _unknown_3570( "obj_frags", &"TRAINER_THROW_A_GRENADE_INTO" );
        _unknown_355A( "obj_frags", "current" );
        _unknown_3596( "obj_frags", _func_1A1( "frag_obj", "targetname" ) );
    }

    thread _unknown_26A6();
    var_1 = 1;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = 1;

    while ( !_ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), level._ID53419._ID740, level._ID8760["45"] ) )
        wait 0.05;

    _ID42237::_ID14402( "training_intro_trainees_pre_end_idle" );
    level._ID54412 notify( "stop_firing_range_anim" );
    level._ID54412 thread _ID42259::_ID3044( level._ID54742, "training_intro_pre_end_idle", "stop_firing_range_anim" );
    _ID42237::_ID3350( level._ID46855, ::_unknown_2743, "targets_hit_with_grenades" );
    _ID42237::_ID3350( level._ID46855, ::_unknown_2748, "targets_hit_with_grenades" );
    thread _unknown_3638( "frag", undefined, 1 );
    _ID42237::_ID14413( "targets_hit_with_grenades" );
    _ID42237::_ID14402( "firing_range_frags_done" );
    _unknown_36D7();
    wait 1;
    _unknown_3606( "obj_frags", "done" );

    if ( level._ID794 _meth_8304( level._ID794 _meth_8350() ) > 0 )
    {
        level._ID794 _meth_8302( level._ID794 _meth_8350(), 0 );
        _func_0DB( "ui_hideGrenadeWidget", 1 );
    }

    _ID42237::_ID3350( level._ID46855, ::_unknown_33BE );
}

_ID48167()
{
    var_0 = 0;
    level._ID388 waittill( "train_fly_grenadedownrange" );
    level endon( "targets_hit_with_grenades" );
    thread _unknown_27AA();

    while ( !_ID42237::_ID14385( "targets_hit_with_grenades" ) )
    {
        wait 6;

        if ( !_ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), level._ID53419._ID740, level._ID8760["45"] ) )
        {
            thread _unknown_375C( &"TRAINER_HINT_TURN_AROUND" );

            while ( !_ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), level._ID53419._ID740, level._ID8760["45"] ) )
                wait 0.05;

            _unknown_377A();
            continue;
        }

        if ( !_ID42237::_ID14385( "player_just_threw_a_frag" ) )
        {
            level._ID388 _unknown_365A( "frag_nag_0" + var_0, undefined, 1 );
            var_0++;

            if ( var_0 > 2 )
                var_0 = 0;
        }
    }
}

_ID47831()
{
    level endon( "targets_hit_with_grenades" );

    for (;;)
    {
        level._ID794 _ID42237::_ID41098( "grenade_pullback", "did_action_frag" );
        _ID42237::_ID14402( "player_just_threw_a_frag" );
        wait 5;
        _ID42237::_ID14388( "player_just_threw_a_frag" );
    }
}

_ID54072( var_0 )
{
    level endon( var_0 );

    for (;;)
    {
        self waittill( "hit_with_grenade" );

        if ( !_ID42237::_ID14385( var_0 ) )
            _ID42237::_ID14402( var_0 );
    }
}

_ID52404( var_0 )
{
    level endon( var_0 );

    for (;;)
    {
        self notify( "pop_up" );
        self waittill( "hit" );
        wait 1;
    }
}

_ID46310( var_0 )
{
    self _meth_81BF();

    for (;;)
    {
        self waittill( "trigger" );

        if ( !_ID42237::_ID14385( var_0 ) )
            _ID42237::_ID14402( var_0 );

        break;
    }
}

_ID47152()
{
    var_0 = _func_1A2( "frags", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID16953 );
    _ID42237::_ID14421( "player_picked_up_frags", "firing_range_frags_done" );
    _ID42237::_ID3350( var_0, _ID42407::_ID36591 );
}

_ID43744()
{
    var_0 = _func_1A2( "frags", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID36591 );
}

_ID52219()
{
    _ID42237::_ID14402( "frags_have_been_spawned" );
    var_0 = _func_1A1( "frag_trigger", "script_noteworthy" );
    level._ID53022 = _func_1A2( "frags_pickup", "targetname" );
    var_1 = 4;
    level endon( "firing_range_frags_done" );
    _ID42237::_ID14413( "player_can_pick_up_frags" );

    for (;;)
    {
        wait 0.1;
        var_0 waittill( "trigger" );

        if ( _ID42237::_ID14385( "h2_player_picking_up_frags" ) )
            continue;

        if ( !level._ID794 _meth_8225( level.grenade_box._ID740, 45, 400 ) )
            continue;

        if ( level._ID794 _meth_8304( level._ID794 _meth_8350() ) > 3 )
            continue;

        if ( !_ID42237::_ID14385( "player_picked_up_frags" ) )
        {
            _ID42237::_ID14402( "player_picked_up_frags" );
            level._ID794 _meth_8319( level._ID794 _meth_8350() );
            level._ID794 _meth_8302( level._ID794 _meth_8350(), 0 );
            _unknown_29AC();
            thread _unknown_243F();
            continue;
        }

        var_2 = level._ID794 _meth_8304( level._ID794 _meth_8350() );
        var_3 = var_1 - var_2;

        if ( var_3 > 0 )
        {
            _unknown_2A18( var_3 );
            level._ID794 _meth_833D( level._ID794 _meth_8350() );
            level._ID794 _meth_80A1( "grenade_pickup" );
        }
    }
}

_ID53468( var_0 )
{
    level endon( "firing_range_frags_done" );
    var_1 = [];
    var_2 = level._ID53022;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3._ID18497 ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0

    if ( var_1.size == 0 )
        return;

    var_5 = 0;
    var_6 = undefined;
    var_7 = [];

    while ( var_5 < var_0 && var_1.size > 0 )
    {
        wait 0.05;
        var_6 = _ID42237::_ID16182( level._ID794._ID740, var_1 );

        if ( !_func_02F( var_6 ) )
            continue;

        var_1 = _ID42237::_ID3321( var_1, var_6 );
        var_6 _meth_805A();
        var_6._ID18497 = 1;
        var_7[var_7.size] = var_6;
        var_5++;
    }

    thread _unknown_2AE1( var_7, 3 );
}

_ID46261( var_0, var_1 )
{
    level endon( "firing_range_frags_done" );
    wait 0.5;

    while ( level._ID794 _meth_8304( level._ID794 _meth_8350() ) > 0 )
        wait 0.05;

    var_2 = _func_03D();

    for (;;)
    {
        wait 0.5;

        if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), level._ID53419._ID740, level._ID8760["45"] ) )
            break;

        if ( _func_03D() >= var_2 + var_1 * 1000 )
            break;
    }

    _ID42237::_ID3294( var_0, ::_meth_8059 );
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4._ID18497 = undefined;
    }

    var_clear_2
    var_clear_0
}

_ID46673()
{
    thread _unknown_2B99();
    _ID42407::ui_reset_waypoint_center_fade_settings();
    _ID42237::_ID14413( "sidearm_complete" );
    thread _unknown_2D6C();
}

h2_pitguy_intro()
{
    level.pitanimnode = _func_1A5();
    level.pitanimnode._ID740 = ( -3568, 2280, -192 );
    level.pitanimnode._ID65 = ( 0, -90, 0 );
    level.pitanimnode _ID42259::_ID3016( level._ID49518, "open_case_soldier" );
    level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_idle_soldier", "stop_idle" );
    thread _unknown_2C4E();
    level._ID388 waittill( "train_fly_fragstendtoroll" );
    thread _unknown_2C53();
    thread _ID42407::_ID4422( "find_the_pit" );
    level._ID388 waittill( "train_fly_thanksforhelp" );
    _ID42475::_ID34575( "aud_stop_mix_practice_range" );
    thread _unknown_45EB();
    _func_0DB( "objectiveAlpha", 1 );
    _unknown_39DA( "obj_course_locate", &"TRAINER_DEBRIEF_WITH_DUNN", _func_1A1( "origin_sidearm_table_babystep_1", "targetname" ) );
    _unknown_39FD( "obj_course_locate", "current" );
    _ID42237::_ID14402( "obj_go_to_the_pit_given" );
    _ID42407::_ID10226( 4, ::_unknown_3AAA, "obj_go_to_the_pit_done" );
    _ID42237::_ID14413( "player_passing_barracks" );
    _ID42237::_ID14413( "player_at_pit_stairs" );
    _unknown_3A5E( "obj_course_locate", _func_1A1( "origin_sidearm_table", "targetname" ) );
    _ID42237::_ID14413( "player_entering_course" );
    thread _unknown_4864();
    thread _unknown_4965();
    _ID42237::_ID14402( "obj_go_to_the_pit_done" );
    wait 0.05;
    _unknown_3B35();
    _unknown_3A62( "obj_course_locate", "done" );
    thread _unknown_2DA1();
}

blocker_range_removal()
{
    wait 6;
    var_0 = _func_1A1( "blocker_range", "targetname" );
    var_0 _ID42407::_ID18512();
}

_ID50367()
{
    _ID42237::_ID14413( "firing_range_frags_done" );
    _ID42237::_ID14413( "foley_done_talking_from_frag_training" );
    level._ID388._ID3190 notify( "stop_firing_range_anim" );
    level._ID54244 notify( "stop_firing_range_anim" );
    level._ID54244 thread _ID42259::_ID3111( level._ID52085, "training_intro_talk8" );
    level._ID388._ID3190 _ID42259::_ID3111( level._ID388, "training_intro_talk8" );
    _ID42237::_ID14402( "training_intro_end_anims" );
    level._ID388._ID3190 thread _unknown_26A9( level._ID388, "training_intro_end", "training_intro_end_idle" );
    level._ID54412 thread _unknown_26BA( level._ID54742, "training_intro_end", "training_intro_end_idle" );
    level._ID54244 thread _unknown_26CA( level._ID52085, "training_intro_end", "training_intro_end_idle" );
}

_ID54320()
{
    level._ID47197._ID53512 = 1;
    level._ID53623 _meth_8059();
    level._ID47197._ID3190 _ID42259::_ID3016( level._ID48853, "training_pit_sitting_welcome" );
    level._ID47197._ID3190 _ID42259::_ID3016( level._ID49518, "training_pit_open_case" );
    level._ID47197._ID3190 thread _ID42259::_ID3040( level._ID48853, "training_pit_sitting_idle", "stop_idle" );
    thread _unknown_2DE1();
    level._ID388 waittill( "train_fly_fragstendtoroll" );
    var_0 = _func_1A1( "blocker_range", "targetname" );
    var_0 _ID42407::_ID18512();
    thread _ID42407::_ID4422( "find_the_pit" );
    level._ID388 waittill( "train_fly_thanksforhelp" );
    _ID42475::_ID34575( "aud_stop_mix_practice_range" );
    thread _unknown_478A();
    _func_0DB( "objectiveAlpha", 1 );
    _unknown_3B7A( "obj_course_locate", &"TRAINER_DEBRIEF_WITH_DUNN", _func_1A1( "origin_sidearm_table_babystep_1", "targetname" ) );
    _unknown_3B9C( "obj_course_locate", "current" );
    _ID42237::_ID14402( "obj_go_to_the_pit_given" );
    _ID42407::_ID10226( 4, ::_unknown_3C4A, "obj_go_to_the_pit_done" );
    _ID42237::_ID14413( "player_passing_barracks" );
    _ID42237::_ID14413( "player_at_pit_stairs" );
    _unknown_3BFE( "obj_course_locate", _func_1A1( "origin_sidearm_table", "targetname" ) );
    _ID42237::_ID14413( "player_entering_course" );
    _ID42237::_ID14402( "obj_go_to_the_pit_done" );
    wait 0.05;
    _unknown_3CCC();
    _unknown_3BF9( "obj_course_locate", "done" );
    thread _unknown_2F37();
}

_ID45697()
{
    level._ID47197._ID3190 notify( "stop_idle" );
    level._ID47197._ID3190 _ID42259::_ID3099( level._ID48853, "training_pit_sitting_welcome" );
    level._ID47197._ID3190 notify( "stop_idle" );
    level._ID47197._ID3190 thread _ID42259::_ID3040( level._ID48853, "training_pit_sitting_idle", "stop_idle" );
    _ID42237::_ID14402( "dunn_finished_welcome_anim" );
}

_ID45416()
{
    _func_0DB( "objectiveAlpha", level._ID48204 );
    thread _ID42407::_ID4422( "sidearm" );
    level._ID47197 waittill( "readyToGo" );
    level.pitanimnode notify( "stop_idle" );
    level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_welcome_soldier" );

    if ( !level._ID794 _meth_831F( level._ID53299 ) )
        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_welcome_soldier_grab" );
    else
        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_welcome_soldier_sidearm" );

    var_0 = 1;

    if ( !level._ID794 _meth_831F( level._ID53299 ) )
    {
        level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_idle_soldier", "stop_idle" );
        var_0 = 0;
        _unknown_3CB1( "obj_sidearm", &"TRAINER_GET_A_PISTOL_FROM_THE", _func_1A1( "origin_sidearm_table", "targetname" ) );
        _unknown_3CD4( "obj_sidearm", "current" );
        var_1 = _func_1A1( "pickup_sidearm", "targetname" );

        if ( _func_02F( var_1 ) )
            var_1 _ID42407::_ID16953( "h2_weapon_desert_eagle_base_obj" );
    }

    while ( !level._ID794 _meth_831F( level._ID53299 ) )
        wait 0.05;

    if ( var_0 == 1 )
    {
        _unknown_3D03( "obj_sidearm", &"TRAINER_GET_A_PISTOL_FROM_THE", _func_1A1( "origin_course_01", "targetname" ) );
        _unknown_3D25( "obj_sidearm", "current" );
    }
    else
        wait 1;

    _unknown_3D5E( "obj_sidearm", undefined );
    _unknown_3D63( "obj_sidearm", &"TRAINER_SWITCH_TO_YOUR_RIFLE" );
    var_2 = level._ID794 _meth_831C();

    if ( var_2 == level._ID53299 )
    {
        if ( !var_0 )
        {
            level._ID47197 waittill( "readyToGo" );
            level.pitanimnode notify( "stop_idle" );
        }

        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_switchgun_VO1" );
        var_2 = level._ID794 _meth_831C();
        var_3 = 0;

        if ( var_2 != level._ID43062 )
        {
            level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_switchgun_idle", "stop_idle" );
            var_3 = 1;
            thread _unknown_3DE8( "primary" );
        }

        while ( level._ID794 _meth_831C() == level._ID53299 )
        {
            _unknown_3DFB( "primary" );
            wait 0.05;
        }

        _unknown_3E8F();

        if ( var_3 )
        {
            level._ID47197 waittill( "readyToGo" );
            level.pitanimnode notify( "stop_idle" );
            var_3 = 0;
        }

        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_switchgun_VO2" );

        if ( level._ID794 _meth_831C() != level._ID53299 )
        {
            level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_switchgun_idle", "stop_idle" );
            var_3 = 1;
            thread _unknown_3E4A( "sidearm" );
        }

        while ( level._ID794 _meth_831C() != level._ID53299 )
        {
            wait 0.05;
            _unknown_3EE6();
            _unknown_3E65( "sidearm" );
        }

        if ( var_3 )
        {
            level._ID47197 waittill( "readyToGo" );
            level.pitanimnode notify( "stop_idle" );
        }

        _unknown_3F06();
    }
    else
    {
        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_switchgun_VO1_switch" );
        var_3 = 0;

        if ( level._ID794 _meth_831C() != level._ID53299 )
        {
            level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_switchgun_idle", "stop_idle" );
            var_3 = 1;
            thread _unknown_3EB3( "sidearm" );
        }

        while ( level._ID794 _meth_831C() != level._ID53299 )
        {
            _unknown_3F4B();
            thread _unknown_3EC9( "sidearm" );
            wait 0.05;
        }

        if ( var_3 )
        {
            level._ID47197 waittill( "readyToGo" );
            level.pitanimnode notify( "stop_idle" );
        }

        _unknown_3F70();
    }

    _unknown_3E9D( "obj_sidearm", "done" );
    _ID42237::_ID14402( "sidearm_complete" );
    level notify( "sideArmTraining_end" );
}

_ID50489()
{
    thread _unknown_32BE();
    thread _unknown_3352();
}

_ID45844()
{
    if ( !_func_02F( level._ID47197._ID53512 ) )
        level._ID53623 _meth_8059();

    thread maps\trainer_aud::aud_handle_pit_scene_mix();
    thread _unknown_33A6();
    level.pitanimnode thread _ID42259::_ID3099( level._ID48853, "open_case_soldier" );
    thread _unknown_331C();
    _ID42237::_ID14413( "player_has_started_course" );
    level notify( "DunnIsReady" );
    level._ID53623 _meth_80B7();
    level.pitanimnode _ID42259::_ID3018( level._ID47197, "dunn_pit_outro" );
    waittillframeend;
    level._ID47197._ID4956 = undefined;
    thread _unknown_3334();
}

resetdunn()
{
    for (;;)
    {
        _ID42237::_ID14413( "player_course_jumped_down" );
        level._ID47197 _ID42407::_ID3136();
        level.pitanimnode notify( "stop_idle" );
        level notify( "clear_Dunn" );
        level.pitanimnode _ID42259::_ID3018( level._ID47197, "dunn_pit_outro" );
        wait 2;
        _ID42237::_ID14388( "player_course_jumped_down" );
    }
}

handledunnbeforepit()
{
    level endon( "DunnIsReady" );
    level._ID47197 waittillmatch( "single anim",  "end"  );
    var_0 = 0;
    level.pitanimnode _ID42259::_ID3099( level._ID48853, "stand_wait_idle" );
    level.pitanimnode _ID42259::_ID3099( level._ID48853, "stand_End_VO3" );

    for (;;)
    {
        if ( var_0 )
        {
            var_0 = 0;
            level.pitanimnode _ID42259::_ID3099( level._ID48853, "stand_End_VO4" );
            continue;
        }

        var_0 = 1;
        level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "stand_End_idle", "stop_idle" );
        level._ID47197 waittillmatch( "looping anim",  "end"  );
        level.pitanimnode notify( "stop_idle" );
    }
}

_ID49976()
{
    _ID42237::_ID14413( "dunn_notetrack_open_case_dialogue" );
    level._ID47197 _ID42407::_ID27080( "train_cpd_smileforcameras", "TAG_EYE" );
    _ID42237::_ID14402( "dunn_finished_with_open_case_dialogue" );
}

_ID50423()
{
    level._ID47197 = _ID42407::_ID35168( "pitguy", 1 );
    level._ID47197 _ID42407::_ID17509();
    level._ID47197._ID3189 = "dunn";
    level._ID47197._ID4956 = 1;
    level._ID47197 _ID45995::_ID48826( "head", level._ID794, 300, 45, 45, 30, 45, 0, 1, 10, 0 );
    level._ID53623 = _func_06A( "script_model", ( 0, 0, 0 ) );
    level._ID53623 _meth_80B8( "h2_viewmodel_desert_eagle_silver" );
    level._ID53623._ID740 = level._ID47197._ID740;
    level._ID53623._ID3189 = "pit_gun";
    level._ID53623 _ID42407::_ID3428();
    level._ID47197._ID3190 = _func_1A1( "node_dunn_training", "targetname" );
    level._ID48853 = [];
    level._ID48853[0] = level._ID47197;
    level._ID48853[1] = level._ID53623;
}

_ID44587()
{
    _ID42237::_ID14413( "case_flip_01" );
    level.pitanimnode thread _ID42259::_ID3111( level._ID46577, "open_case_soldier" );
    level._ID46577 _meth_80A1( "scn_trainer_case_open1" );
    var_0 = _func_1A2( "pit_weapons_case_01", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_45AE );
    _ID42237::_ID14413( "case_flip_02" );
    level.pitanimnode thread _ID42259::_ID3111( level._ID51674, "open_case_soldier" );
    level._ID51674 _meth_80A1( "scn_trainer_case_open2" );
    var_1 = _func_1A2( "pit_weapons_case_02", "script_noteworthy" );
    _ID42237::_ID3350( var_1, ::_unknown_45E0 );
    _ID42237::_ID14413( "button_press" );
    var_2 = _func_1A1( "switchToPit", "targetname" );
    _ID42237::_ID27077( "scn_training_fence_button", var_2._ID740 );
    thread _ID42407::_ID4422( "pit_course_start" );
    level._ID53991 thread _unknown_3A56();
    _ID42237::_ID14413( "player_course_stairs2" );
    var_3 = _func_1A2( "pit_weapons_table", "script_noteworthy" );
    _ID42237::_ID3350( var_3, ::_unknown_462A );
}

_ID44800()
{
    level endon( "clear_course" );
    level endon( "mission failed" );
    var_0 = 0;
    _func_034( "killhouse_too_slow", "0" );
    level._ID44400 = 1;
    var_1 = 0;
    var_2 = "none";
    _unknown_421C();
    var_3 = 0;

    for (;;)
    {
        if ( level._ID44400 )
            jump loc_3647

        if ( level._ID44400 )
        {

        }

        thread _unknown_3A59( level._ID44400 );

        if ( level._ID44400 )
        {
            level._ID52222 = 0;
            _unknown_4169( "obj_course", &"TRAINER_COMPLETE_COURSE", _func_1A1( "origin_course_01", "targetname" ) );
            _unknown_418B( "obj_course", "current" );
        }

        var_4 = _func_1A2( "course_triggers_01", "script_noteworthy" );
        _ID42407::_ID3319( var_4, "activate" );
        _ID42237::_ID14413( "player_has_started_course" );
        thread _unknown_4FD0();
        _ID42237::_ID14388( "dunn_finished_with_difficulty_selection_dialogue" );
        _unknown_41F1( "obj_course", _func_1A1( "origin_course_01", "targetname" ) );

        if ( level._ID52222 != 0 )
            _unknown_41FC( "obj_course", &"TRAINER_COMPLETE_COURSE" );

        _ID42237::_ID14388( "melee_target_hit" );
        level._ID47716 = 0;
        thread _unknown_3920();

        if ( level._ID44400 )
        {
            thread _unknown_3A27();
            _ID42407::_ID10226( 3, ::_unknown_4E4B );
        }

        level._ID46990 = undefined;
        thread _unknown_3980();
        var_5 = _func_1A2( "conversation_orgs_pit", "targetname" );
        var_6 = _ID42237::_ID16182( level._ID794._ID740, var_5 );

        if ( _ID42237::_ID8201() )
            var_6 _ID42407::_ID10226( 3, _ID42237::_ID27077, "train_ar3_getsome" );
        else if ( _ID42237::_ID8201() )
            var_6 _ID42407::_ID10226( 3, _ID42237::_ID27077, "train_ar4_bringit" );
        else
            var_6 _ID42407::_ID10226( 3, _ID42237::_ID27077, "train_ar5_comeon" );

        var_7 = level._ID794 _meth_8317();

        if ( var_7.size > 0 )
        {
            var_8 = var_7;

            for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
            {
                var_9 = var_8[var_10];

                if ( var_9 == "barrett" )
                {
                    continue;
                    continue;
                }

                level._ID794 _meth_833D( var_9 );
            }

            var_clear_2
            var_clear_0
        }

        level._ID52991 = 0;
        level._ID44713 = 0;

        if ( _func_03A( "killhouse_too_slow" ) >= 1 )
            thread _unknown_4E21( level._ID46466 );
        else
            thread _unknown_4E2C( level._ID46979 );

        thread _unknown_4AFF();

        if ( _func_02F( level._ID47144 ) )
            level._ID47144 _meth_808F();

        _unknown_4302( "obj_course", _func_1A1( "origin_course_02", "targetname" ) );
        _ID42237::_ID14413( "player_course_03a" );
        _unknown_431C( "obj_course", _func_1A1( "origin_course_03", "targetname" ) );
        _ID42237::_ID14413( "player_course_stairs2" );
        thread _unknown_3A28( "melee", "melee_target_hit" );
        _ID42237::_ID14413( "player_course_upstairs" );
        level._ID53991 thread _unknown_3C9F();
        level._ID52018 thread _unknown_3C79();
        _ID42237::_ID14388( "player_inside_course" );
        var_11 = _func_1A1( "course_end_blocker", "targetname" );
        var_11 _ID42407::_ID18512();
        _unknown_4371( "obj_course", _func_1A1( "origin_course_03a", "targetname" ) );
        _ID42237::_ID14413( "player_course_jumping_down" );
        _unknown_438B( "obj_course", _func_1A1( "origin_course_05", "targetname" ) );
        _ID42237::_ID14421( "player_course_end_02", "course_end_targets_dead" );
        _ID42237::_ID14413( "player_course_end_03" );
        _ID42237::_ID14388( "player_has_started_course" );
        var_12 = 1;
        var_13 = 0;
        var_14 = 0;

        for (;;)
        {
            level.light_nosprint = _func_1A1( "h2_no_sprint_light", "targetname" );
            _ID42237::_ID14413( "player_standing_on_sprint_marker" );
            _ID42237::_ID14388( "sprinted" );
            thread _unknown_3A18();
            _unknown_4489();
            _unknown_4E6C();
            thread _unknown_4E6F( "sprinted" );

            if ( level._ID1333 )
                thread _unknown_3AE8( "sprint", "sprinted" );
            else
                thread _unknown_3AF7( "sprint_pc", "sprinted" );

            if ( var_12 )
            {
                thread maps\trainer_aud::_ID43109( "train_cpd_sprint", level.pa_course_ext );
                var_12 = 0;
            }
            else
            {
                _unknown_4426( "obj_course", _func_1A1( "origin_course_05", "targetname" ) );
                level._ID52018 thread _unknown_3D62( undefined, 1 );
                thread _unknown_3AA1();
                thread _ID42407::_ID28864( "nag_sprint_0" + var_14 );
                var_14++;

                if ( var_14 > 3 )
                    var_14 = 0;
            }

            _ID42237::_ID14413( "player_sprint_door_close" );

            if ( !_ID42237::_ID14385( "sprinted" ) )
            {
                _unknown_446C( "obj_course", _func_1A1( "origin_course_sprint", "targetname" ) );
                level._ID52018 thread _unknown_3DD4( undefined, 1 );
                level._ID52018 thread _ID42407::_ID27079( "door_close_buzzer" );
                thread _unknown_3AEC();
                thread _ID42407::_ID28864( "nag_didnt_sprint_0" + var_13 );
                thread _unknown_4555( &"TRAINER_TRY_SPRINT_AGAIN", undefined, 1 );
                var_13++;

                if ( var_13 > 3 )
                    var_13 = 0;

                continue;
            }

            break;
        }

        _ID42237::_ID14413( "player_course_end" );
        _unknown_44BD( "obj_course", undefined );
        var_11 = _func_1A1( "course_end_blocker", "targetname" );
        var_11 _ID42407::_ID33997();
        var_3++;
        _unknown_458A();
        thread _unknown_3BD6();
        level._ID52018 thread _unknown_3E43( "player_course_end_close_gate" );
        _unknown_459C();
        _ID42237::_ID14388( "sprinted" );
        level notify( "test_cleared" );
        var_15 = _unknown_4D67( level._ID54267, 0 );

        while ( !_func_02F( level._ID46990 ) )
            wait 0.1;

        var_16 = _unknown_4FB0( var_3 );
        level._ID51689 = var_16;

        if ( level._ID46990 == 1000 )
        {
            var_16 = undefined;

            if ( level._ID47716 > 10 )
                var_16 = "train_cpd_targetswithknife";
            else if ( level._ID53270 && level._ID50525 )
                var_16 = "train_cpd_longandcivilians";
            else if ( level._ID45789 && level._ID50525 )
                var_16 = "train_cpd_longandtargets";
            else if ( level._ID45789 )
                var_16 = "train_cpd_targets";
            else if ( level._ID53270 )
                var_16 = "train_cpd_civilians";
            else
                var_16 = "train_cpd_needtorunagain";

            level._ID51689 = var_16;
            thread _unknown_3C62( "dunn_pit_outro_retry" );
        }
        else
        {
            if ( !_ID42237::_ID14385( "has_cheated" ) && !_ID49347::_ID44352() )
                level._ID794 _meth_80FE( "LB_KILLHOUSE", var_15 );

            thread _unknown_3C14();
        }

        var_2 = var_16;
        var_1 = var_15;
        level._ID53991 thread _unknown_3EDB();

        if ( level._ID46990 != 1000 )
        {
            if ( !_ID42237::_ID14385( "player_has_started_course" ) )
            {
                _unknown_45CB( "obj_course", _func_1A1( "course_start", "targetname" ) );
                _unknown_45D0( "obj_course", &"TRAINER_OBJ_EXIT_THE_PIT" );
                level._ID52222 = 1;
            }
        }
        else
            _unknown_45F1( "obj_course", _func_1A1( "origin_course_01", "targetname" ) );

        _ID42237::_ID14421( "player_inside_course", "player_done_with_course" );

        if ( _ID42237::_ID14385( "player_done_with_course" ) )
            break;

        level._ID44400 = 0;
    }
}

_ID51240()
{
    level notify( "starting sprint monitor" );
    level endon( "starting sprint monitor" );
    level endon( "sprinted" );
    level endon( "player_course_end" );
    var_0 = _func_1A1( "sprint_volume", "targetname" );

    for (;;)
    {
        wait 0.05;
        var_1 = level._ID794 _meth_8344();
        var_2 = _func_0F3( ( var_1[0], var_1[1], 0 ), ( 0, 0, 0 ) );

        if ( _func_02F( var_2 ) && var_2 > 250 && level._ID794 _meth_80B0( var_0 ) )
            _ID42237::_ID14402( "sprinted" );
    }
}

_ID48464()
{
    _ID42234::_ID13611( "light_red_flare" );
    level.light_nosprint _meth_81ED( 2000 );
}

_ID47495()
{
    _ID42234::_ID21260( "light_red_flare" );
    level.light_nosprint _meth_81ED( 1 );
}

_ID51974( var_0 )
{
    var_1 = level._ID16944[var_0];
    return level._ID1426[var_1];
}

_ID46129()
{
    level endon( "player_has_started_course" );
    level notify( "try_again_thread" );
    level endon( "try_again_thread" );
    thread _unknown_3DA2( "dunn_pit_outro" );
    _ID42237::_ID14421( "player_entering_course", "player_exiting_course_00" );
    _ID42475::_ID34575( "aud_start_mix_info_popup" );
    level._ID794 _meth_8334( 1 );
    _func_076( 2, 0.1 );
    _unknown_51CF();
    wait 1;
    level._ID794 _meth_8500( &"difficulty_selection_menu" );

    for (;;)
    {
        level._ID794 waittill( "menuresponse",  var_1, var_0  );

        if ( var_1 == "continue" || var_1 == "tryagain" )
            break;

        level._ID794 _meth_8500( &"difficulty_selection_menu" );
    }

    level notify( "clear_Dunn" );
    level.pitanimnode notify( "stop_idle" );
    waittillframeend;
    level.pitanimnode thread _ID42259::_ID3044( level._ID47197, "dunn_pit_outro_idle", "stop_idle" );
    _func_076( 0, 0.2 );
    level._ID794 _meth_8334( 0 );
    _ID42475::_ID34575( "aud_stop_mix_info_popup" );

    if ( var_1 == "tryagain" )
    {
        level.pitanimnode notify( "stop_idle" );
        level.pitanimnode _ID42259::_ID3111( level._ID47197, "dunn_pit_tryagain" );
        level.pitanimnode thread _ID42259::_ID3044( level._ID47197, "dunn_pit_outro_retry_idle", "stop_idle" );
        _unknown_478B( "obj_course", _func_1A1( "origin_course_01", "targetname" ) );
        _unknown_4790( "obj_course", &"TRAINER_COMPLETE_COURSE" );
        level._ID52222 = 0;
    }
    else
    {
        _ID42237::_ID14402( "player_done_with_course" );

        if ( !level._ID46977 )
        {
            level._ID46977 = 1;
            thread _unknown_413E();
        }

        level._ID53991 thread _unknown_4118( undefined, 1 );
        level.pitanimnode notify( "stop_idle" );
        level.pitanimnode _ID42259::_ID3111( level._ID47197, "h2_headupstairs_outro_out" );
        level.pitanimnode thread _ID42259::_ID3044( level._ID47197, "dunn_pit_outro_idle", "stop_idle" );
        _unknown_52D0();
        _unknown_489A();
        level notify( "kill_timer" );
        level notify( "clear_course" );
    }
}

handledunnanimation( var_0 )
{
    level endon( "clear_Dunn" );
    level.pitanimnode notify( "stop_idle" );
    waittillframeend;
    level.pitanimnode _ID42259::_ID3111( level._ID47197, var_0 );
    level.pitanimnode thread _ID42259::_ID3044( level._ID47197, var_0 + "_idle", "stop_idle" );
}

_ID52808( var_0, var_1 )
{
    thread _unknown_4855( var_0, undefined, undefined, 1 );
    thread _unknown_488B( var_1 );
}

_ID43878()
{
    var_0 = level._ID37340;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _unknown_45B4();

        if ( _func_02F( var_1._ID45489 ) )
            var_1 thread _unknown_458D();
    }

    var_clear_2
    var_clear_0
}

_ID47648()
{
    _unknown_3FA3( 10, "course_start_targets_dead", "player_course_03a" );
    _ID42237::_ID14413( "player_course_03a" );
    _unknown_3FB8( 3, "course_first_floor_targets_dead", "player_course_stairs" );
    _ID42237::_ID14413( "player_course_stairs" );
    _unknown_3FCE( 5, "course_second_floor_targets_dead", "player_course_jumped_down" );
    _ID42237::_ID14413( "player_course_jumped_down" );
    _unknown_3FE4( 6, "course_end_targets_dead", "player_course_end_03" );
    _ID42237::_ID14388( "course_start_targets_dead" );
    _ID42237::_ID14388( "course_first_floor_targets_dead" );
    _ID42237::_ID14388( "course_second_floor_targets_dead" );
    _ID42237::_ID14388( "course_end_targets_dead" );
}

_ID53663( var_0, var_1, var_2 )
{
    level endon( var_2 );

    for ( var_3 = 0; var_3 < var_0; var_3++ )
        level waittill( "target_killed" );

    _ID42237::_ID14402( var_1 );
}

_ID48172()
{
    var_0 = level._ID794 _meth_831C();
    var_1 = level._ID794 _meth_8317();
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];

        if ( var_3 == var_0 )
            continue;

        var_4 = level._ID794 _meth_8303( var_3 );

        if ( var_4 > 5 )
        {
            return 1;
            continue;
        }

        return 0;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID46639()
{
    _ID42237::_ID14413( "player_has_started_course" );
    _ID42237::_ID14388( "no_more_course_nags" );
    thread _unknown_41CE();
    thread _unknown_4196();
    thread _unknown_41FC();
    level.pa_course_ext = _func_1A2( "aud_pa_ext", "targetname" );
    level._ID47197 _meth_80B3();

    if ( _ID42237::_ID14385( "can_talk" ) )
    {
        _ID42237::_ID14388( "can_talk" );
        maps\trainer_aud::_ID43109( "train_cpd_clearfirstgogogo", level.pa_course_ext );
        _ID42237::_ID14402( "can_talk" );
    }

    _ID42237::_ID14421( "player_course_03a", "course_start_targets_dead" );

    if ( _ID42237::_ID14385( "course_start_targets_dead" ) )
    {
        if ( _ID42237::_ID14385( "can_talk" ) )
            thread _unknown_4162();
    }
    else if ( _ID42237::_ID14385( "can_talk" ) )
        thread _unknown_417E();

    _ID42237::_ID14421( "player_course_stairs2", "course_first_floor_targets_dead" );

    if ( _ID42237::_ID14385( "course_first_floor_targets_dead" ) )
    {
        if ( _ID42237::_ID14385( "can_talk" ) )
            thread _unknown_41AB();
    }

    _ID42237::_ID14413( "player_course_stairs2" );
    thread _ID49347::_ID46206();
    thread _unknown_41D9();
    _ID42237::_ID14421( "player_course_jumped_down", "course_second_floor_targets_dead" );

    if ( _ID42237::_ID14385( "course_second_floor_targets_dead" ) )
    {
        if ( _ID42237::_ID14385( "can_talk" ) )
            thread _unknown_41EA();
    }

    _ID42237::_ID14413( "player_course_jumped_down" );
    _ID42237::_ID14402( "no_more_course_nags" );
    _ID42237::_ID14413( "can_talk" );

    if ( _ID42237::_ID14385( "can_talk" ) && !_ID42237::_ID14385( "course_end_targets_dead" ) )
        thread _unknown_4226();

    _ID42237::_ID14413( "player_course_end_03" );
}

dialogue_course_move_into_the_building()
{
    _ID42237::_ID14388( "can_talk" );
    maps\trainer_aud::_ID43109( "train_cpd_areacleared", level.pa_course_ext );
    _ID42237::_ID14402( "can_talk" );
}

dialogue_course_missed_some_targets()
{
    _ID42237::_ID14388( "can_talk" );
    maps\trainer_aud::_ID43109( "train_cpd_missedsome", level.pa_course_ext );
    _ID42237::_ID14402( "can_talk" );
}

dialogue_course_up_the_stairs()
{
    _ID42237::_ID14388( "can_talk" );
    maps\trainer_aud::_ID43109( "train_cpd_upthestairs", level.pa_course_ext );
    _ID42237::_ID14402( "can_talk" );
}

dialogue_course_jump_down()
{
    _ID42237::_ID14388( "can_talk" );
    maps\trainer_aud::_ID43109( "train_cpd_jumpdown", level.pa_course_ext );
    _ID42237::_ID14402( "can_talk" );
}

dialogue_course_last_area()
{
    _ID42237::_ID14388( "can_talk" );
    maps\trainer_aud::_ID43109( "train_cpd_lastareamove", level.pa_course_ext );
    _ID42237::_ID14402( "can_talk" );
}

_ID47034()
{
    var_0 = 3;
    var_1 = 0;

    for (;;)
    {
        if ( _ID42237::_ID14385( "melee_target_hit" ) )
        {
            thread _ID49347::_ID54655();
            break;
        }

        if ( _ID42237::_ID14385( "can_talk" ) && !_ID42237::_ID14385( "melee_target_hit" ) )
        {
            if ( !_ID42237::_ID14385( "player_near_melee_target" ) )
            {
                wait 0.5;
                continue;
            }

            _ID42237::_ID14388( "can_talk" );
            maps\trainer_aud::_ID43109( "melee_nag_0" + var_1, level.pa_course_ext );
            _ID42237::_ID14402( "can_talk" );
            var_1++;

            if ( var_1 > 4 )
                var_1 = 0;

            _ID42237::_ID14425( "melee_target_hit", var_0 );
            continue;
        }

        wait 0.5;
    }
}

_ID49423()
{
    level notify( "starting_civilian_nags" );
    level endon( "starting_civilian_nags" );
    var_0 = [];
    var_0[0] = "train_cpd_watchout";
    var_0[1] = "train_cpd_awwkilled";
    var_0[2] = "train_cpd_acivilian";
    var_0[3] = "train_cpd_watchout_b";
    var_0[4] = "train_cpd_watchout_c";
    var_0[5] = "train_cpd_awwkilled_b";
    var_0[6] = "train_cpd_awwkilled_c";
    var_1 = 0;

    while ( !_ID42237::_ID14385( "player_course_jumped_down" ) )
    {
        level waittill( "civilian_killed" );

        if ( _ID42237::_ID14385( "player_course_jumped_down" ) )
            break;

        if ( !_ID42237::_ID14385( "player_inside_course" ) )
            break;

        if ( _ID42237::_ID14385( "no_more_course_nags" ) )
            break;

        if ( _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            maps\trainer_aud::_ID43109( var_0[var_1], level.pa_course_ext );
            _ID42237::_ID14402( "can_talk" );
            var_1++;

            if ( var_1 > 6 )
                var_1 = 0;

            _ID42237::_ID14425( "player_course_jumped_down", 5 );
        }
    }
}

_ID47139()
{
    level notify( "starting_hurry_nags" );
    level endon( "starting_hurry_nags" );
    thread _unknown_448C();
    var_0 = 0;

    while ( !_ID42237::_ID14385( "player_course_jumped_down" ) )
    {
        level waittill( "player_not_killing_targets_at_a_good_rate" );

        if ( !_ID42237::_ID14385( "player_inside_course" ) )
            break;

        if ( _ID42237::_ID14385( "no_more_course_nags" ) )
            break;

        if ( _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            maps\trainer_aud::_ID43109( "nag_hurry_0" + var_0, level.pa_course_ext );
            _ID42237::_ID14402( "can_talk" );
            var_0++;

            if ( var_0 > 4 )
                var_0 = 0;

            _ID42237::_ID14425( "player_course_jumped_down", 5 );
        }
    }
}

_ID43723()
{
    level notify( "track_player_kill_frequency" );
    level endon( "track_player_kill_frequency" );
    level endon( "player_course_jumped_down" );

    while ( !_ID42237::_ID14385( "player_course_jumped_down" ) )
    {
        var_0 = level._ID52991;
        level _ID42237::_ID41123( "target_killed", 8 );

        if ( var_0 == level._ID52991 )
            level notify( "player_not_killing_targets_at_a_good_rate" );

        wait 2;
    }
}

_ID43002()
{
    level notify( "starting_reload_nags" );
    level endon( "starting_reload_nags" );

    for (;;)
    {
        level._ID794 waittill( "reload_start" );

        if ( _ID42237::_ID14385( "player_course_jumped_down" ) )
            break;

        if ( !_ID42237::_ID14385( "player_inside_course" ) )
            break;

        if ( _ID42237::_ID14385( "no_more_course_nags" ) )
            break;

        if ( _ID42237::_ID14385( "can_talk" ) && _unknown_4449() )
        {
            _ID42237::_ID14388( "can_talk" );
            maps\trainer_aud::_ID43109( "train_cpd_justswitch", level.pa_course_ext );
            _ID42237::_ID14402( "can_talk" );
            break;
        }
    }
}

_ID50533()
{
    level notify( "starting_ADS_nags" );
    level endon( "starting_ADS_nags" );
    var_0 = 0;

    for (;;)
    {
        level waittill( "pit_target_hit_without_ADS" );

        if ( _ID42237::_ID14385( "player_course_jumped_down" ) )
            break;

        if ( !_ID42237::_ID14385( "player_inside_course" ) )
            break;

        if ( _ID42237::_ID14385( "no_more_course_nags" ) )
            break;

        if ( _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            maps\trainer_aud::_ID43109( "pit_ads_nag_0" + var_0, level.pa_course_ext );
            _ID42237::_ID14402( "can_talk" );
            var_0++;

            if ( var_0 > 2 )
                break;
        }
    }
}

_ID48869( var_0 )
{
    level endon( "player_has_started_course" );
    level endon( "player_inside_course" );

    if ( !var_0 )
        var_1 = 0;
    else
        var_1 = 1;

    wait 1;
    _ID42237::_ID14413( "dunn_finished_with_open_case_dialogue" );

    while ( !_ID42237::_ID14385( "player_inside_course" ) )
    {
        if ( _ID42237::_ID14385( "player_inside_course" ) )
            break;

        level._ID47197 _unknown_4D5E( "train_cpd_timerstarts" );

        if ( var_1 )
        {
            wait 3;
            level._ID47197 _ID49846( "train_cpd_putusin" );
            level._ID47197 _unknown_4D79( "train_cpd_socombrass" );
            wait 2;
            level._ID47197 _unknown_4D85( "train_cpd_realaction" );
            level._ID47197 _ID42407::_ID27080( "train_cpd_sigh", "TAG_EYE" );
            var_1 = 0;
            wait 15;
        }
        else
        {
            if ( _ID42237::_ID14385( "player_inside_course" ) )
                break;

            wait 30;
        }

        if ( _ID42237::_ID14385( "player_inside_course" ) )
            break;

        level._ID47197 waittillmatch( "looping anim",  "end"  );
        level.pitanimnode _ID42259::_ID3111( level._ID47197, "stand_End_VO3" );

        if ( _ID42237::_ID14385( "player_inside_course" ) )
            break;

        level.pitanimnode notify( "stop_idle" );
        level.pitanimnode thread _ID42259::_ID3044( level._ID47197, "stand_End_idle", "stop_idle" );
        wait 15;

        if ( _ID42237::_ID14385( "player_inside_course" ) )
            break;

        level._ID47197 waittillmatch( "looping anim",  "end"  );
        level.pitanimnode notify( "stop_idle" );
        level.pitanimnode _ID42259::_ID3111( level._ID47197, "stand_End_VO4" );
        level.pitanimnode thread _ID42259::_ID3044( level._ID47197, "stand_End_idle", "stop_idle" );

        if ( _ID42237::_ID14385( "player_inside_course" ) )
            break;

        wait 60;
    }
}

_ID11599( var_0, var_1 )
{
    if ( _func_02F( self._ID24481 ) )
    {
        while ( _func_02F( self._ID24481 ) )
            wait 0.05;
    }

    self._ID24481 = 1;
    var_2 = 90;

    if ( _func_02F( self._ID48191 ) )
        var_2 = self._ID48191;

    if ( _func_02F( var_0 ) )
        _ID42237::_ID14413( var_0 );

    var_3 = 4;

    if ( _func_02F( var_1 ) )
    {
        var_3 = 1.5;
        self _meth_82BF( self._ID65 + ( 0, var_2, 0 ), 1.5, 0.25, 0.25 );
    }
    else
        self _meth_82BF( self._ID65 + ( 0, var_2, 0 ), 4, 1.5, 1.5 );

    if ( _func_02F( self._ID47803 ) )
        self._ID47803 _ID42407::_ID18512();

    thread _ID42407::_ID27079( "scn_training_fence_open" );
    wait(var_3);
    self._ID24481 = undefined;
}

_ID11590( var_0, var_1 )
{
    if ( _func_02F( self._ID24481 ) )
    {
        while ( _func_02F( self._ID24481 ) )
            wait 0.05;
    }

    self._ID24481 = 1;
    var_2 = -90;

    if ( _func_02F( self._ID43865 ) )
        var_2 = self._ID43865;

    if ( _func_02F( var_0 ) )
        _ID42237::_ID14413( var_0 );

    var_3 = 2;

    if ( _func_02F( var_1 ) )
    {
        var_3 = 1;
        self _meth_82BF( self._ID65 + ( 0, var_2, 0 ), 1, 0.25, 0.25 );
    }
    else
        self _meth_82BF( self._ID65 + ( 0, var_2, 0 ), 2, 0.5, 0.5 );

    if ( _func_02F( self._ID47803 ) )
        self._ID47803 _ID42407::_ID33997();

    thread _ID42407::_ID27079( "scn_training_fence_close" );
    _ID42237::_ID3294( self._ID51925, ::_meth_82C8 );
    wait(var_3);
    self._ID24481 = undefined;
}

_ID45936()
{
    thread _unknown_497B();
    _ID49347::weapons_specialfeatures_reset();
    _ID49347::weapons_specialfeatures();
}

_ID44051()
{
    var_0 = _func_0DE();
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3._ID31388 ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    var_5 = _ID42407::_ID3317( level._ID12061["allies"]._ID3291, level._ID12061["axis"]._ID3291 );
    var_5 = _ID42407::_ID3317( var_5, level._ID12061["neutral"]._ID3291 );
    var_6 = var_5;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_3 = var_6[var_7];

        if ( _func_02F( var_3._ID31388 ) )
            var_5 = _ID42237::_ID3321( var_5, var_3 );
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID3350( var_1, ::_unknown_5D5C );
    var_8 = _func_1A1( "basketball", "targetname" );
    var_8 _meth_80B7();
    _ID42237::_ID3350( var_5, ::_unknown_5D74 );
    _ID42407::_ID3304( _func_1A2( "friendlies_basketball_AI", "targetname" ) );
    var_9 = _func_1A2( "h2_pit_ai", "targetname" );
    _ID42237::_ID3350( var_9, ::_unknown_5D96 );
    var_10 = _ID42407::_ID3339( _func_1A2( "friendlies_end_sequence", "targetname" ), 1 );
    var_11 = _func_1A1( "ending_sequence_node", "targetname" );
    var_12 = _func_1A2( "laatpv_gate", "targetname" );
    var_13 = var_12;

    for ( var_15 = _func_1DA( var_13 ); _func_02F( var_15 ); var_15 = _func_1BF( var_13, var_15 ) )
    {
        var_14 = var_13[var_15];
        var_14 _meth_8059();
        var_14._ID3189 = "laatpv";
        var_14 _ID42259::_ID32556();
        var_11 _ID42259::_ID3018( var_14, var_14._ID70 );
    }

    var_clear_2
    var_clear_0
    var_16 = _ID42407::_ID3339( _func_1A2( "friendly_ending_sequence", "targetname" ), 1 );
    var_17 = var_16;

    for ( var_19 = _func_1DA( var_17 ); _func_02F( var_19 ); var_19 = _func_1BF( var_17, var_19 ) )
    {
        var_18 = var_17[var_19];
        var_18._ID3189 = "generic";
        var_11 _ID42259::_ID3018( var_18, var_18._ID70 );

        if ( _func_02F( var_18._ID922 ) && var_18._ID922 == "no_gun" )
            var_18 _ID42407::_ID17509();
    }

    var_clear_2
    var_clear_0
    var_20 = _ID42407::_ID35168( "friendly_ending_foley", 1 );
    var_20._ID3189 = "foley";
    var_11 _ID42259::_ID3018( var_20, var_20._ID70 );
    _ID42237::_ID14413( "player_exiting_course_00" );
    level._ID794 _meth_83CD( "trainer_end" );
    level._ID794 _meth_80F6( 1 );
    thread _unknown_4C3A();
    thread _unknown_4C48();
    var_21 = _ID42411::_ID35200( "heli_group_pre_end" );
    thread maps\trainer_aud::aud_handle_veh_group( var_21, "apache", 0 );
    _ID42237::_ID14413( "player_exiting_course" );
    _ID42237::_ID14402( "end_sequence_starting" );
    _unknown_5CB6();
    _unknown_5280();
    level notify( "kill_timer" );
    level notify( "clear_course" );
    var_22 = _ID42411::_ID35200( "heli_group_01" );
    thread maps\trainer_aud::aud_handle_veh_group( var_22, "pavelow", 1 );
    _ID42237::_ID14413( "player_exiting_course_02" );
    level._ID50961 thread _unknown_4B59();
    _func_31C( 1 );
    thread _unknown_4C94( 0.1, 1 );
    level._ID794 _meth_830F( 0 );
    _unknown_51F0( "obj_course", "done" );
    var_23 = _ID42411::_ID35196( "ending_sequence_bradley" );
    var_24 = _ID42411::_ID35196( "ending_sequence_bridge" );
    thread _unknown_4CAC();
    var_25 = var_12;

    for ( var_26 = _func_1DA( var_25 ); _func_02F( var_26 ); var_26 = _func_1BF( var_25, var_26 ) )
    {
        var_14 = var_25[var_26];
        var_11 thread _ID42259::_ID3111( var_14, var_14._ID70 );
    }

    var_clear_1
    var_clear_0
    thread maps\trainer_aud::aud_handle_ending_latvees( var_12 );
    var_27 = var_16;

    for ( var_28 = _func_1DA( var_27 ); _func_02F( var_28 ); var_28 = _func_1BF( var_27, var_28 ) )
    {
        var_18 = var_27[var_28];
        var_11 thread _ID42259::_ID3111( var_18, var_18._ID70 );
    }

    var_clear_1
    var_clear_0
    var_11 thread _ID42259::_ID3111( var_20, var_20._ID70 );
    wait 12;
    var_29 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_29 _meth_808B( 1 );
    var_29._ID55 = 1;
    wait 2;
    _ID42407::_ID24793();
}

spawn_laatpv_on_the_side()
{
    level.shep_ending = _func_1A1( "shep_ending", "script_noteworthy" );
    level.shep_ending _ID42407::_ID1947( _ID42407::_ID17509 );
    wait 0.5;
    var_0 = _ID42411::_ID35196( "side_laatpv_ending_01" );
    wait 1.5;
    var_1 = _ID42411::_ID35196( "side_laatpv_ending_02" );
}

_ID49846( var_0, var_1 )
{
    var_2 = 1;
    var_3 = var_0 / var_1 / 0.05;
    var_4 = 0;

    while ( var_4 < var_1 )
    {
        var_2 -= var_3;

        if ( var_2 < 0 )
            break;

        level._ID794 _meth_81F1( var_2 );
        var_4 += 0.05;
        wait 0.05;
    }
}

_ID49956()
{
    _ID42475::_ID34575( "aud_start_mix_evacuation" );
    thread _ID42237::_ID27005( "emt_alarm_trainer_alert", ( 0, 0, 0 ) );
}

_ID48924()
{
    var_0 = _func_1A2( "radio_org_end", "targetname" );
    _ID42237::_ID14425( "player_exiting_course", 1 );
    thread _ID42407::_ID28864( "train_hqr_headedout" );
    _ID42237::_ID14413( "player_exiting_course" );
    var_1 = _ID42237::_ID16276( level._ID794._ID740, var_0 );
    _ID42237::_ID14413( "player_exiting_course_02" );
    var_1 = _ID42237::_ID16276( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_getamedic" );
}

_ID44417( var_0, var_1 )
{
    _ID42237::_ID14413( "player_exiting_course_02" );
    var_1 _ID42259::_ID3099( var_0, "wounded_pickup" );

    for (;;)
    {
        var_0[0] thread _ID42259::_ID3111( var_0[0], "wounded_carry" );
        var_0[1] _ID42259::_ID3111( var_0[1], "wounded_carry" );
    }
}

_ID54524()
{
    var_0 = _ID42237::_ID15808();
    self._ID37340 = [];
    self._ID50010 = [];
    self._ID48856 = [];
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2._ID922 ) )
            continue;

        if ( _func_02F( var_2._ID172 ) && var_2._ID172 == "script_model" )
        {
            if ( var_2._ID922 == "target_enemy" )
            {
                self._ID48856[self._ID48856.size] = var_2;
                self._ID37340[self._ID37340.size] = var_2;
            }
            else if ( var_2._ID922 == "target_friendly" )
            {
                self._ID50010[self._ID50010.size] = var_2;
                self._ID37340[self._ID37340.size] = var_2;
            }

            continue;
        }
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( self._ID922 ) && self._ID922 == "course_triggers_01" )
    {
        level._ID43514 = _ID42407::_ID3317( level._ID43514, self._ID50010 );
        level._ID49991 = _ID42407::_ID3317( level._ID49991, self._ID48856 );
    }

    for (;;)
    {
        _ID42237::_ID38863();
        self waittill( "activate" );
        _ID42237::_ID38865();
        self waittill( "trigger" );
        _ID42407::_ID3319( self._ID37340, "pop_up" );
    }
}

_ID46914( var_0 )
{
    if ( _func_039( "trainer_debug" ) == "1" )
    {
        self._ID51520 = _func_1A1( self._ID1191, "targetname" );
        self.aim_assist_target = _func_1A1( self._ID51520._ID1191, "targetname" );
        self.aim_assist_target _meth_805A();
        return;
    }

    self._ID44774 = undefined;
    self._ID51520 = _func_1A1( self._ID1191, "targetname" );
    self _meth_8053( self._ID51520 );
    self.aim_assist_target = _func_1A1( self._ID51520._ID1191, "targetname" );
    self.aim_assist_target._ID486 = 1000;
    self.aim_assist_target._ID626 = 1000;
    self.aim_assist_target _meth_805A();
    self.aim_assist_target _meth_82C9();
    self._ID4851 = undefined;

    if ( _func_02F( self.aim_assist_target._ID1191 ) )
        self._ID4851 = _func_1A1( self.aim_assist_target._ID1191, "targetname" );

    if ( _func_02F( self._ID4851 ) )
    {
        self.player_collision = _func_1A1( self._ID4851._ID1191, "targetname" );
        self.player_collision _meth_8053( self );
        self.player_collision _meth_82C9();
    }

    if ( !_func_02F( self._ID51520._ID922 ) )
        self._ID51520._ID922 = "standard";

    if ( self._ID51520._ID922 == "reverse" )
        self._ID51520 _meth_82C2( 90, 0.05 );
    else if ( self._ID51520._ID922 == "sideways" )
        self._ID51520 _meth_82C1( -180, 0.05 );
    else
        self._ID51520 _meth_82C2( -90, 0.05 );

    wait 0.1;
    self._ID44041 = undefined;
    self._ID45489 = undefined;
    self._ID51490 = undefined;
    self._ID53028 = undefined;
    self._ID50858 = undefined;

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "penetration_targets" )
        level._ID50259[level._ID50259.size] = self;

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "grenade_targets" )
        level._ID46855[level._ID46855.size] = self;

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "hip_targets" )
        level._ID45118[level._ID45118.size] = self;

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "use_rail" )
    {
        self._ID45489 = _ID42237::_ID16182( self._ID51520._ID740, level._ID52787, 10 );
        self._ID51490 = _func_1A1( self._ID45489._ID1191, "targetname" );
        self._ID44041 = [];
        self._ID44041[0] = self._ID45489;
        self._ID44041[1] = self._ID51490;
        var_1 = _func_0F3( self._ID44041[0]._ID740, self._ID44041[1]._ID740 );
        self._ID53028 = var_1 / 30;
        self._ID53028 = _ID42407::_ID30292( self._ID53028, 0 );
        self._ID50858 = var_1 / 22;
        self._ID50858 = _ID42407::_ID30292( self._ID50858, 0 );
        var_2 = self._ID44041;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
            var_3 = var_2[var_4];

        var_clear_2
        var_clear_0
        _unknown_538D();
    }

    for (;;)
    {
        self waittill( "pop_up" );
        _unknown_531B();

        if ( _func_02F( self._ID31388 ) && self._ID31388 == "melee" )
        {
            self._ID44774 = 1;
            var_5 = _func_1A1( "melee_clip", "targetname" );
            var_5 _ID42407::_ID33997();
        }

        if ( _func_02F( self._ID31190 ) )
            thread _unknown_5406( self._ID31190 );

        wait(_func_0BA( 0, 0.2 ));

        if ( _func_02F( self.player_collision ) )
            self.player_collision _meth_82C8();

        self _meth_80A1( "target_up_metal" );
        self _meth_82CA( 1 );

        if ( var_0 != "friendly" )
            self.aim_assist_target _meth_81C1();

        if ( self._ID51520._ID922 == "reverse" )
            self._ID51520 _meth_82C2( -90, 0.25 );
        else if ( self._ID51520._ID922 == "sideways" )
            self._ID51520 _meth_82C1( 180, 0.5 );
        else
            self._ID51520 _meth_82C2( 90, 0.25 );

        wait 0.25;

        if ( _func_02F( self._ID45489 ) )
            thread _unknown_53F9();

        for (;;)
        {
            self waittill( "damage",  var_15, var_14, var_13, var_12, var_11, var_10, var_9, var_8, var_7, var_6  );

            if ( !_func_02F( var_7 ) )
                continue;

            if ( !_func_02F( var_10 ) )
                continue;

            if ( var_10 == "MOD_IMPACT" )
                continue;

            if ( var_10 == "scripted_target_drop" )
                break;

            if ( var_10 == "timed_target_drop" )
            {
                var_16 = _ID42237::_ID16182( level._ID794._ID740, level._ID35356 );
                var_16 _meth_80A1( "target_mistake_buzzer" );
                break;
            }

            if ( _func_1B3( var_7 ) )
            {
                if ( _func_02F( self._ID44774 ) )
                {
                    if ( var_10 != "MOD_MELEE" )
                        continue;
                }

                self _meth_80A1( "target_metal_hit" );

                if ( var_0 == "friendly" )
                {
                    var_16 = _ID42237::_ID16182( level._ID794._ID740, level._ID35356 );
                    var_16 _meth_80A1( "target_mistake_buzzer" );

                    if ( _func_02F( var_7._ID44713 ) )
                        var_7._ID44713++;

                    level._ID44713++;

                    if ( !_ID42407::_ID20614() )
                    {
                        if ( _func_02F( level._ID43810 ) )
                        {
                            level._ID43810 _meth_80DE( level._ID44713 );
                            level._ID43810._ID196 = ( 0.9, 0.2, 0.2 );
                            level._ID43810 _meth_8090( 30, 900000, 700 );
                        }
                    }

                    level notify( "civilian_killed" );
                }
                else
                {
                    var_7 _ID42354::_ID29410( self, var_10, var_15 );

                    if ( _func_02F( var_7._ID52991 ) )
                        var_7._ID52991++;

                    level._ID52991++;

                    if ( var_10 == "MOD_MELEE" )
                        level._ID47716++;

                    level notify( "target_killed" );

                    if ( !_ID42407::_ID20614() )
                    {
                        if ( _func_02F( level._ID49811 ) )
                        {
                            level._ID49811 _meth_80DE( level._ID52991 );
                            level._ID49811 _meth_8090( 30, 900000, 700 );
                        }
                    }
                }

                if ( var_10 == "MOD_GRENADE_SPLASH" )
                    self notify( "hit_with_grenade" );

                break;
            }
        }

        if ( _func_02F( self._ID44774 ) )
        {
            self._ID44774 = 1;
            var_5 = _func_1A1( "melee_clip", "targetname" );
            var_5 thread _ID42407::_ID18512();
            _ID42237::_ID14402( "melee_target_hit" );
        }
        else if ( var_0 != "friendly" && !level._ID794 _ID42407::_ID20652() )
        {
            if ( _func_02F( var_10 ) && var_10 != "MOD_MELEE" && var_10 != "scripted_target_drop" )
                level notify( "pit_target_hit_without_ADS" );
        }

        self notify( "hit" );
        self notify( "target_going_back_down" );
        waittillframeend;
        self._ID486 = 1000;
        self.aim_assist_target _meth_81E0();

        if ( _func_02F( self.player_collision ) )
            self.player_collision _meth_82C9();

        if ( self._ID51520._ID922 == "reverse" )
            self._ID51520 _meth_82C2( 90, 0.25 );
        else if ( self._ID51520._ID922 == "sideways" )
            self._ID51520 _meth_82C1( -180, 0.5 );
        else
            self._ID51520 _meth_82C2( -90, 0.25 );

        self _meth_82CA( 0 );
        wait 0.25;
        level.target_ents = _ID42237::_ID3321( level.target_ents, self._ID51520 );
    }
}

_ID43485()
{
    if ( !_ID42407::_ID20614() )
        return;

    var_0 = self._ID740;
    var_1 = undefined;

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "melee" )
    {
        var_0 = ( -5723, 2547, -49 );
        var_1 = 2520;
    }

    for (;;)
    {
        var_2 = 0;
        var_3 = level._ID805;

        for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
        {
            var_4 = var_3[var_6];
            var_5 = 3136;

            if ( _func_0F6( var_4 _meth_8344() ) > 200 )
                var_5 = 16384;

            if ( _func_0F5( var_4._ID740, var_0 ) < var_5 )
            {
                var_2 = 1;

                if ( _func_02F( var_1 ) && var_4._ID740[1] < var_1 )
                    var_2 = 0;
            }
        }

        var_clear_3
        var_clear_0

        if ( !var_2 )
            return;

        wait 0.05;
    }
}

_ID52318()
{
    var_0 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_0._ID65 = self._ID51520._ID65;
    var_0._ID740 = self._ID51520._ID740;
    self._ID51520 thread _unknown_570F( var_0, self._ID4851, self.aim_assist_target );
    var_0 endon( "deleted_because_player_was_too_close" );
    var_0 endon( "death" );
    var_1 = level._ID805;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_0 thread _unknown_5722( var_2 );
    }

    var_clear_2
    var_clear_0
    thread _unknown_572A( var_0 );
    var_0 thread _ID42237::_ID27000( "scn_trainer_dummy_target_move" );

    for (;;)
    {
        var_0 _meth_82B8( self._ID51490._ID740, self._ID50858 );
        wait(self._ID50858);
        var_0 _meth_82B8( self._ID45489._ID740, self._ID50858 );
        wait(self._ID50858);
    }
}

_ID45807( var_0 )
{
    var_0 endon( "death" );
    self waittill( "target_going_back_down" );
    var_0 _meth_80B7();
}

_ID45825( var_0 )
{
    self endon( "death" );
    var_1 = 128;
    var_2 = var_1 * var_1;

    for (;;)
    {
        wait 0.05;

        if ( _func_0F5( var_0._ID740, self._ID740 ) < var_2 )
            break;
    }

    self notify( "deleted_because_player_was_too_close" );
    self _meth_80B7();
}

_ID50323( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    var_3 = _func_119( _func_11E( var_1._ID65 ) );
    var_4 = var_3 * 4 + ( 0, 0, 60 );

    for (;;)
    {
        wait 0.05;
        self._ID740 = var_0._ID740;
        var_1._ID740 = var_0._ID740 + ( 0, 0, 9.5 );
        var_2._ID740 = var_0._ID740 + var_4;
    }
}

_ID48685()
{
    if ( _ID42237::_ID3303( level.target_ents, self._ID51520 ) )
        return;

    if ( _ID42237::_ID8201() )
    {
        self._ID45489 = self._ID44041[0];
        self._ID51490 = self._ID44041[1];
    }
    else
    {
        self._ID45489 = self._ID44041[1];
        self._ID51490 = self._ID44041[0];
    }

    var_0 = _func_119( _func_11E( self._ID51520._ID65 ) );
    var_1 = var_0 * 4 + ( 0, 0, 60 );
    level.target_ents[level.target_ents.size] = self._ID51520;
    self._ID51520 _meth_82B8( self._ID45489._ID740, 0.1 );
    self._ID4851._ID740 = self._ID45489._ID740 + ( 0, 0, 9.5 );
    self.aim_assist_target._ID740 = self._ID45489._ID740 + var_1;
}

_ID46123( var_0 )
{
    if ( _ID42407::_ID20614() )
        return;

    self endon( "target_going_back_down" );
    _ID42237::_ID14413( var_0 );
    _unknown_58DF();
}

_ID53706()
{
    self notify( "damage",  1000, "worldspawn", undefined, undefined, "scripted_target_drop"  );
}

_ID49317()
{
    if ( self._ID170 == "weapon_fraggrenade" || self._ID170 == "weapon_flash_grenade" )
        self _meth_818A( 1, 0 );
    else
        self _meth_818A( 999, 999 );
}

_ID43982()
{
    _func_14C( "weapon_binocular" );
    _func_14C( "adrenaline_syringe_animated" );
    _func_14C( "clotting_powder_animated" );
    _func_14C( "com_bottle2" );
    _func_14C( "h2_viewmodel_desert_eagle_silver" );
    _func_14F( "black" );
    _func_14C( "h2_weapon_grenade_m67_prop_obj" );
    _func_14C( "h2_prop_npc_cigar" );
    _func_14C( "electronics_pda" );
    _func_14C( "weapon_m4" );
    _func_14C( "weapon_m4_clip" );
    _func_14C( "characters_accessories_pencil" );
    _func_14C( "mil_mre_chocolate01" );
    _func_14C( "h2_weapon_desert_eagle_base_obj" );
    _func_14C( "h2_weapon_m4_grunt_obj" );
    _func_14C( "head_seal_udt_d_lifesaver" );
    _func_14C( "h2_fav_propane_blow_torch" );
    _func_14C( "h2_cs_tool_wrench_adjustable_lrg_anim" );
    _func_14C( "h2_fav_plier" );
    _func_14C( "h2_characters_accessories_pencil" );
    _func_14C( "h2_com_clipboard_wpaper_anim" );
    _func_14C( "h2_rkl_cellphone_appicon" );
    _func_14C( "h2_com_kitchen_utensil_spatula_small_animated" );
    _func_14C( "h1_prop_price_cigar" );
    _func_14C( "head_trn_arab_a" );
    _func_14C( "head_trn_arab_b" );
    _func_14C( "head_trn_arab_c" );
    _func_14C( "head_trn_arab_d" );
    _func_14C( "head_trn_arab_e" );
    _func_14C( "head_trn_arab_f" );
    _func_14C( "head_trn_arab_g" );
    _func_14C( "body_ally_arab_trn_smg_a" );
    _func_14C( "body_ally_arab_trn_assault_a" );
    _func_14C( "head_army_i_casual_wht" );
    _func_14C( "head_army_j_casual_blk" );
    _func_14F( "objective" );
    _func_14F( "hud_icon_c4" );
    _func_14F( "hud_dpad" );
    _func_14F( "hud_arrow_right" );
    _func_14F( "hud_arrow_down" );
    _func_14F( "hud_icon_40mm_grenade" );
    _func_14F( "popmenu_bg" );
    _func_14F( "h1_hud_tutorial_blur" );
    _func_14F( "h1_hud_tutorial_border" );
    _func_14F( "h1_hud_timer_blur" );
    _func_14F( "h1_hud_timer_border" );
    _func_14F( "h1_timer_on_flare" );
    _func_14F( "h1_timer_warning_flare" );
    _func_14F( "h1_hud_fng_results_blur" );
    _func_14F( "h1_hud_fng_results_border" );
    _func_14F( "h2_hud_ssdd_results_blur" );
    _func_14F( "h2_hud_ssdd_stats_blur" );
    _func_14F( "h2_hud_ssdd_stats_border" );
    _func_14F( "h2_hud_ssdd_results_line" );
    _func_150( &"TRAINER_OBJ_GET_RIFLE_AMMO" );
    _func_150( &"TRAINER_KILLED_CIVVIES_PENALTY" );
    _func_150( &"TRAINER_TRY_SPRINT_AGAIN" );
    _func_150( &"TRAINER_KILLED_CIVVIES_NONE" );
    _func_150( &"TRAINER_ACCURACY_LABEL" );
    _func_150( &"TRAINER_MISSION_FAIL_FIRE_IN_CAMP" );
    _func_150( &"TRAINER_SHOOT_THE_TARGET_THROUGH" );
    _func_150( &"TRAINER_HINT_SIDEARM" );
    _func_150( &"TRAINER_HINT_OBJECTIVE_MARKER" );
    _func_150( &"TRAINER_HINT_OBJECTIVE_REMINDER" );
    _func_150( &"TRAINER_HINT_OBJECTIVE_REMINDER2" );
    _func_150( &"TRAINER_HINT_HOLDING_SPRINT" );
    _func_150( &"TRAINER_AXIS_OPTION_MENU1_ALL" );
    _func_150( &"TRAINER_AXIS_OPTION_MENU2_ALL" );
    _func_150( &"TRAINER_HINT_OBJECTIVE_MARKER" );
    _func_150( &"TRAINER_HINT_CHECK_OBJECTIVES_PAUSED" );
    _func_150( &"TRAINER_HINT_CHECK_OBJECTIVES_SCORES" );
    _func_150( &"TRAINER_HINT_CHECK_OBJECTIVES_SCORES_PS3" );
    _func_150( &"TRAINER_HINT_OBJECTIVE_MARKER" );
    _func_150( &"TRAINER_HINT_OBJECTIVE_REMINDER" );
    _func_150( &"TRAINER_HINT_OBJECTIVE_REMINDER2" );
    _func_150( &"TRAINER_HINT_ATTACK_PC" );
    _func_150( &"TRAINER_HINT_ATTACK" );
    _func_150( &"TRAINER_HINT_HIP_ATTACK_PC" );
    _func_150( &"TRAINER_HINT_HIP_ATTACK" );
    _func_150( &"TRAINER_HINT_ADS_360" );
    _func_150( &"TRAINER_HINT_ADS" );
    _func_150( &"TRAINER_HINT_ADS_TOGGLE" );
    _func_150( &"TRAINER_HINT_ADS_THROW_360" );
    _func_150( &"TRAINER_HINT_ADS_THROW" );
    _func_150( &"TRAINER_HINT_ADS_TOGGLE_THROW" );
    _func_150( &"TRAINER_HINT_STOP_ADS" );
    _func_150( &"TRAINER_HINT_STOP_ADS_TOGGLE" );
    _func_150( &"TRAINER_HINT_STOP_ADS_THROW" );
    _func_150( &"TRAINER_HINT_STOP_ADS_TOGGLE_THROW" );
    _func_150( &"TRAINER_HINT_BREATH_MELEE" );
    _func_150( &"TRAINER_HINT_BREATH_SPRINT" );
    _func_150( &"TRAINER_HINT_BREATH_BINOCULARS" );
    _func_150( &"TRAINER_HINT_MELEE_BREATH" );
    _func_150( &"TRAINER_HINT_MELEE" );
    _func_150( &"TRAINER_HINT_MELEE_BREATH_CLICK" );
    _func_150( &"TRAINER_HINT_MELEE_CLICK" );
    _func_150( &"TRAINER_HINT_PRONE" );
    _func_150( &"TRAINER_HINT_PRONE_HOLD" );
    _func_150( &"TRAINER_HINT_PRONE_TOGGLE" );
    _func_150( &"TRAINER_HINT_PRONE_STANCE" );
    _func_150( &"TRAINER_HINT_PRONE_DOUBLE" );
    _func_150( &"TRAINER_HINT_CROUCH_STANCE" );
    _func_150( &"TRAINER_HINT_CROUCH_HOLD" );
    _func_150( &"TRAINER_HINT_CROUCH" );
    _func_150( &"TRAINER_HINT_CROUCH_TOGGLE" );
    _func_150( &"TRAINER_HINT_STAND" );
    _func_150( &"TRAINER_HINT_STAND_STANCE" );
    _func_150( &"TRAINER_HINT_JUMP_STAND" );
    _func_150( &"TRAINER_HINT_JUMP" );
    _func_150( &"TRAINER_HINT_SPRINT_PC" );
    _func_150( &"TRAINER_HINT_SPRINT" );
    _func_150( &"TRAINER_HINT_SPRINT_BREATH_PC" );
    _func_150( &"TRAINER_HINT_SPRINT_BREATH" );
    _func_150( &"TRAINER_HINT_HOLDING_SPRINT" );
    _func_150( &"TRAINER_HINT_HOLDING_SPRINT_BREATH" );
    _func_150( &"TRAINER_HINT_RELOAD_USE" );
    _func_150( &"TRAINER_HINT_RELOAD" );
    _func_150( &"TRAINER_HINT_MANTLE" );
    _func_150( &"TRAINER_HINT_ADS_SWITCH" );
    _func_150( &"TRAINER_HINT_ADS_SWITCH_SHOULDER" );
    _func_150( &"TRAINER_HINT_ADS_SWITCH_THROW" );
    _func_150( &"TRAINER_HINT_ADS_SWITCH_THROW_SHOULDER" );
    _func_150( &"TRAINER_HINT_SIDEARM_SWAP" );
    _func_150( &"TRAINER_HINT_PRIMARY_SWAP" );
    _func_150( &"TRAINER_HINT_SIDEARM" );
    _func_150( &"TRAINER_HINT_SIDEARM_RELOAD" );
    _func_150( &"TRAINER_HINT_SIDEARM_RELOAD_USE" );
    _func_150( &"TRAINER_HINT_FRAG" );
    _func_150( &"TRAINER_HINT_CROSSHAIR_CHANGES" );
    _func_150( &"TRAINER_HINT_TURN_AROUND" );
    _func_150( &"TRAINER_HINT_ADS_ACCURACY" );
    _func_150( &"TRAINER_SHIP_TOO_SLOW" );
    _func_150( &"TRAINER_CIVVIES_KILLED" );
    _func_150( &"TRAINER_ENEMIES_KILLED" );
    _func_150( &"TRAINER_YOUR_TIME_IN_SECONDS" );
    _func_150( &"TRAINER_YOUR_TIME" );
    _func_150( &"TRAINER_YOUR_FINAL_TIME" );
    _func_150( &"TRAINER_IW_BEST_TIME" );
    _func_150( &"TRAINER_YOUR_DECK_TIME" );
    _func_150( &"TRAINER_IW_DECK_TIME" );
    _func_150( &"TRAINER_SHIP_OUT_OF_FLASH" );
    _func_150( &"TRAINER_SHIP_JUMPED_TOO_EARLY" );
    _func_150( &"TRAINER_HIT_FRIENDLY" );
    _func_150( &"TRAINER_HINT_FLASH" );
    _func_150( &"TRAINER_MISSED_ENEMY_PENALTY_NONE" );
    _func_150( &"TRAINER_MISSED_ENEMY_PENALTY" );
    _func_150( &"TRAINER_ACCURACY_BONUS" );
    _func_150( &"TRAINER_SHIP_LABEL" );
    _func_150( &"TRAINER_DECK_LABEL" );
    _func_150( &"TRAINER_ACCURACY_NA" );
    _func_150( &"TRAINER_ACCURACY_BONUS_ZERO" );
    _func_150( &"TRAINER_RESULT_YOURTIME_TEXT" );
    _func_150( &"TRAINER_RESULT_ENEMIESHIT_TEXT" );
    _func_150( &"TRAINER_RESULT_CIVILSHIT_TEXT" );
    _func_150( &"TRAINER_RESULT_ACCURACY_TEXT" );
    _func_150( &"TRAINER_RESULT_FINALTIME_TEXT" );
    _func_150( &"TRAINER_RESULT_PERSONALBEST_TEXT" );
    _func_150( &"TRAINER_RESULT_NEW_RECORD" );
    _func_150( &"TRAINER_RESULT_ENEMIESHIT_VALUE" );
    _func_150( &"TRAINER_RESULT_CIVILSHIT_VALUE" );
    _func_150( &"TRAINER_RESULT_ACCURACY_STAT" );
    _func_150( &"TRAINER_RESULT_TIME_VALUE" );
    _func_150( &"TRAINER_RESULT_TIME_BONUS" );
    _func_150( &"TRAINER_RESULT_TIME_PENALTY" );
    _func_150( &"TRAINER_RESULT_TIME_NULL" );
    _func_150( &"TRAINER_RESULT_RECOMMENDEDDIFF" );
    _func_150( &"TRAINER_RESULT_FAILEDCOURSE" );
    _func_150( &"TRAINER_RESULT_TRYAGAIN" );
    _func_150( &"TRAINER_RESULT_RECRUIT" );
    _func_150( &"TRAINER_RESULT_REGULAR" );
    _func_150( &"TRAINER_RESULT_HARDENED" );
    _func_150( &"TRAINER_RESULT_VETERAN" );
    _func_150( &"TRAINER_HINT_GRENADE_TOO_LOW" );
    _func_150( &"TRAINER_HINT_GL_TOO_LOW" );
    _func_150( &"TRAINER_AXIS_OPTION_MENU1" );
    _func_150( &"TRAINER_AXIS_OPTION_MENU2" );
    _func_150( &"TRAINER_AXIS_OPTION_MENU1B" );
    _func_150( &"TRAINER_AXIS_OPTION_MENU2B" );
    _func_150( &"TRAINER_AXIS_OPTION_YES" );
    _func_150( &"TRAINER_AXIS_OPTION_NO" );
    _func_150( &"TRAINER_AXIS_OPTION_MENU1_ALL" );
    _func_150( &"TRAINER_AXIS_OPTION_MENU2_ALL" );
    _func_150( &"TRAINER_LOOK_UP" );
    _func_150( &"TRAINER_LOOK_DOWN" );
    _func_150( &"TRAINER_HINT_LAUNCHER_ICON" );
    _func_150( &"TRAINER_FIRED_NEAR_FRIENDLY" );
    _func_150( &"TRAINER_USE_YOUR_OBJECTIVE_INDICATOR" );
    _func_150( &"TRAINER_PICK_UP_A_RIFLE_FROM" );
    _func_150( &"TRAINER_GET_A_PISTOL_FROM_THE" );
    _func_150( &"TRAINER_MELEE_THE_WATERMELON" );
    _func_150( &"TRAINER_GO_OUTSIDE_AND_REPORT" );
    _func_150( &"TRAINER_PICK_UP_THE_RIFLE_WITH" );
    _func_150( &"TRAINER_PICK_UP_THE_C4_EXPLOSIVE" );
    _func_150( &"TRAINER_RUN_THE_OBSTACLE_COURSE" );
    _func_150( &"OBJ_GO_TO_THE_PIT" );
    _func_150( &"TRAINER_CLIMB_THE_LADDER" );
    _func_150( &"TRAINER_OBJ_EXIT_THE_PIT" );
    _func_150( &"TRAINER_DEBRIEF_WITH_DUNN" );
    _func_150( &"TRAINER_COMPLETE_COURSE" );
    _func_150( &"TRAINER_DEBRIEF_WITH_CPT_PRICE" );
    _func_150( &"TRAINER_ENTER_STATION_NUMBER" );
    _func_150( &"TRAINER_SHOOT_EACH_TARGET_WHILE" );
    _func_150( &"TRAINER_SHOOT_EACH_TARGET_WHILE1" );
    _func_150( &"TRAINER_SHOOT_EACH_TARGET_AS" );
    _func_150( &"TRAINER_EQUIP_THE_MP5_AND_PICK" );
    _func_150( &"TRAINER_CLEAR_THE_CARGOSHIP_BRIDGE" );
    _func_150( &"TRAINER_SWITCH_TO_YOUR_RIFLE" );
    _func_150( &"TRAINER_PICK_UP_THE_FRAG_GRENADES" );
    _func_150( &"TRAINER_ENTER_THE_SAFETY_PIT" );
    _func_150( &"TRAINER_THROW_A_GRENADE_INTO" );
    _func_150( &"TRAINER_RETURN_TO_THE_SAFETY" );
    _func_150( &"TRAINER_FIRE_AT_THE_WALL_WITH" );
    _func_150( &"TRAINER_PLANT_THE_C4_EXPLOSIVE" );
    _func_150( &"TRAINER_FIRE_YOUR_GRENADE_LAUNCHER" );
    _func_150( &"TRAINER_CLIMB_THE_LADDER1" );
    _func_150( &"TRAINER_SHOOT_A_TARGET_THROUGH" );
    _func_150( &"TRAINER_SLIDE_DOWN_THE_ROPE" );
    _func_150( &"TRAINER_COMPLETE_THE_DECK_MOCKUP" );
    _func_150( &"TRAINER_RECOMMENDED_LABEL" );
    _func_150( &"TRAINER_RECOMMENDED_LABEL2" );
    _func_150( &"TRAINER_RECOMMENDED_EASY" );
    _func_150( &"TRAINER_RECOMMENDED_NORMAL" );
    _func_150( &"TRAINER_RECOMMENDED_HARD" );
    _func_150( &"TRAINER_RECOMMENDED_VETERAN" );
    _func_150( &"TRAINER_RECOMMENDED_TRY_AGAIN" );
    _func_152( "tank_rumble" );
}

_ID10760( var_0, var_1, var_2 )
{
    if ( !_func_02F( self ) )
        return;

    self endon( "death" );

    if ( _func_02F( var_2 ) && var_2 )
        _ID45995::_ID44171();

    _ID42407::_ID10805( var_0 );

    if ( _func_02F( var_2 ) && var_2 )
        _ID45995::_ID46847();

    if ( _func_02F( var_1 ) )
        _ID42237::_ID14402( var_1 );
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
    level._ID48851._ID983 = 1;
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

_ID48422( var_0, var_1, var_2, var_3 )
{
    _ID42237::_ID14400( var_0 );
    var_4 = level._ID25349.size;
    var_5 = _func_1A5();
    var_5._ID680 = var_0;
    var_5._ID19286 = var_4;
    var_5._ID36185 = "invisible";
    var_5._ID37557 = var_1;
    var_5._ID337 = var_2;
    var_5._ID47886 = 0;
    var_5.offsetpos = var_3;
    level._ID25349[var_0] = var_5;
    return var_5;
}

_ID51143( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];
    var_3._ID36185 = var_1;

    if ( !var_3._ID47886 )
    {
        _func_1E3( var_3._ID19286, var_3._ID36185, var_3._ID37557, var_3._ID337._ID740 );
        var_3._ID47886 = 1;
    }
    else if ( _func_02F( var_2 ) && var_2 )
        _func_114( var_3._ID19286, var_3._ID36185 );
    else
        _func_1E5( var_3._ID19286, var_3._ID36185 );

    if ( var_3._ID36185 == "done" )
        _ID42237::_ID14402( var_0 );
}

_ID45810( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID37557 = var_1;
    _func_115( var_2._ID19286, var_1 );
}

_ID54163( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];
    var_3._ID47623 = var_1;

    if ( _func_02F( var_2 ) )
        var_3.offsetpos = var_2;

    if ( !_func_02F( var_3._ID47623 ) )
    {
        _func_1E8( var_3._ID19286, ( 0, 0, 0 ) );
        return;
    }

    if ( _func_02F( var_3._ID47623 ) && _func_02F( var_3.offsetpos ) )
    {
        _func_194( var_3._ID19286, var_3._ID47623, var_3.offsetpos );
        return;
    }

    _func_1E8( var_3._ID19286, var_3._ID47623._ID740 );
}

_ID49571( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];

    if ( !var_2 )
        _func_115( var_3._ID19286, var_1 );
    else
        _func_115( var_3._ID19286, var_1, var_2 );
}

_ID52947( var_0, var_1, var_2, var_3 )
{
    _unknown_6479();
    level endon( "clearing_hints" );
    var_4 = _unknown_6693( var_0 );
    var_5 = var_4._ID18611;
    var_6 = var_4._ID44463;
    var_7 = var_4._ID52017;
    _ID42407::_ID18611( var_5, undefined, undefined, var_2, var_7 );

    if ( _func_02F( var_6 ) )
        level._ID18694 thread _ID42237::_ID47857( level._ID794, var_5, var_6, "clearing_hints" );

    if ( !_func_02F( var_3 ) )
    {
        var_8 = "did_action_" + var_0;

        for ( var_9 = 0; var_9 < level._ID54149[var_0].size; var_9++ )
        {
            var_4 = level._ID54149[var_0][var_9];
            _func_00E( var_8, var_4._ID48396 );
        }

        if ( _func_02F( var_1 ) )
            level._ID794 thread _unknown_6503( var_8, var_1 );

        level._ID794 waittill( var_8 );
        _unknown_64FB( 0.5 );
        wait 0.5;
        _unknown_64FF();
    }
}

_ID49084( var_0 )
{
    level endon( "clearing_hints" );
    _ID42237::_ID14413( var_0 );
    _unknown_6511();
}

_ID44409( var_0, var_1 )
{
    thread _unknown_64C1( var_0 );
    level endon( var_0 );
    wait(var_1);
    _unknown_6501();
    wait 2;
    var_2 = 6;

    for (;;)
    {
        if ( var_2 > 20.0 )
        {
            thread _unknown_6520();
            _func_00C();
            var_2 = 0;
        }

        var_2 += 0.05;
        wait 0.05;
    }
}

_ID44868( var_0 )
{
    level endon( "mission failed" );
    level endon( "navigationTraining_end" );
    level endon( "obj_go_to_the_pit_done" );
    wait 20;

    if ( level._ID794 _ID42237::_ID20583() )
        _unknown_64E4( "objectives", 6.0 );
    else
        _unknown_64F4( "objectives_pc", 6.0 );

    var_1 = 0;

    for (;;)
    {
        if ( !_ID42237::_ID14385( var_0 ) && var_1 > 20.0 )
        {
            thread _unknown_6580();
            _func_00C();
            var_1 = 0;
        }

        var_1 += 0.05;
        wait 0.05;
    }
}

_ID43551( var_0, var_1 )
{
    _unknown_65AE();
    level endon( "clearing_hints" );
    _ID42407::_ID18611( &"TRAINER_HINT_OBJECTIVE_MARKER", undefined, undefined, 1 );
    wait 5;
    wait 0.5;
    _unknown_65D2( 0.5 );
    _unknown_65D1();
}

_ID53988()
{
    level endon( "mission failed" );
    level endon( "navigationTraining_end" );
    level endon( "obj_go_to_the_pit_done" );
    _unknown_65E6();
    level endon( "clearing_hints" );
    _ID42407::_ID18611( &"TRAINER_HINT_OBJECTIVE_REMINDER", undefined, undefined, 1, "small_background" );
    wait 5;
    wait 2;
    _unknown_660B( 0.5 );
    _unknown_660B();
}

_ID7873()
{
    _ID42407::_ID18638( 0 );
    level notify( "clearing_hints" );
}

_ID44735( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    thread _ID42407::_ID18638( var_0 );
}

_ID46722( var_0, var_1, var_2 )
{
    _unknown_6630();
    level endon( "clearing_hints" );
    _ID42407::_ID18611( var_0, undefined, undefined, var_2 );

    if ( _func_02F( var_1 ) )
        wait(var_1);
    else
        return;

    _unknown_6655( 0.5 );
    wait 0.5;
    _unknown_6659();
}

_ID51856( var_0, var_1 )
{
    self endon( var_0 );
    wait(var_1);
    self notify( var_0 );
}

_ID46168( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( var_0 );
    self _meth_80B7();
}

_ID51117()
{
    level._ID54149 = [];
    _unknown_6886( "objectives", "pause", &"TRAINER_HINT_CHECK_OBJECTIVES_PAUSED", &"TRAINER_HINT_CHECK_OBJECTIVES_SCORES" );
    _unknown_689A( "objectives_pc", "+scores", &"TRAINER_HINT_CHECK_OBJECTIVES_SCORES", &"TRAINER_HINT_CHECK_OBJECTIVES_PAUSED" );
    _unknown_68A9( "pc_attack", "+attack", &"TRAINER_HINT_ATTACK_PC" );
    _unknown_68B9( "pc_attack", "+attack_akimbo_accessible", &"TRAINER_HINT_HIP_ATTACK_PC" );
    _unknown_68CD( "pc_hip_attack", "+attack", &"TRAINER_HINT_HIP_ATTACK_PC", undefined, "medium_background" );
    _unknown_68E2( "pc_hip_attack", "+attack_akimbo_accessible", &"TRAINER_HINT_HIP_ATTACK_PC", undefined, "medium_background" );
    _unknown_68F6( "hip_attack", "+attack", &"TRAINER_HINT_HIP_ATTACK", undefined, "medium_background" );
    _unknown_690A( "hip_attack", "+attack_akimbo_accessible", &"TRAINER_HINT_HIP_ATTACK_PC", undefined, "medium_background" );
    _unknown_691A( "attack", "+attack", &"TRAINER_HINT_ATTACK" );
    _unknown_692E( "attack", "+attack_akimbo_accessible", &"TRAINER_HINT_HIP_ATTACK_PC", undefined, "medium_background" );
    _unknown_6942( "stop_ads", "+speed_throw", &"TRAINER_HINT_STOP_ADS_THROW", &"TRAINER_HINT_STOP_ADS_TOGGLE_THROW" );
    _unknown_6951( "stop_ads", "+speed", &"TRAINER_HINT_STOP_ADS" );
    _unknown_6965( "stop_ads", "+toggleads_throw", &"TRAINER_HINT_STOP_ADS_TOGGLE_THROW", &"TRAINER_HINT_STOP_ADS_THROW" );
    _unknown_6975( "stop_ads", "toggleads", &"TRAINER_HINT_STOP_ADS_TOGGLE" );
    _unknown_6984( "ads_360", "+speed_throw", &"TRAINER_HINT_ADS_THROW_360" );
    _unknown_6994( "ads_360", "+speed", &"TRAINER_HINT_ADS_360" );
    _unknown_69A8( "ads", "+speed_throw", &"TRAINER_HINT_ADS_THROW", &"TRAINER_HINT_ADS_TOGGLE_THROW" );
    _unknown_69B7( "ads", "+speed", &"TRAINER_HINT_ADS" );
    _unknown_69CB( "ads", "+toggleads_throw", &"TRAINER_HINT_ADS_TOGGLE_THROW", &"TRAINER_HINT_ADS_THROW" );
    _unknown_69DB( "ads", "toggleads", &"TRAINER_HINT_ADS_TOGGLE" );
    _unknown_69EA( "ads_switch", "+speed_throw", &"TRAINER_HINT_ADS_SWITCH_THROW" );
    _unknown_69FA( "ads_switch", "+speed", &"TRAINER_HINT_ADS_SWITCH" );
    _unknown_6A0A( "ads_switch_shoulder", "+speed_throw", &"TRAINER_HINT_ADS_SWITCH_THROW_SHOULDER" );
    _unknown_6A1A( "ads_switch_shoulder", "+speed", &"TRAINER_HINT_ADS_SWITCH_SHOULDER" );
    _unknown_6A29( "breath", "+melee_breath", &"TRAINER_HINT_BREATH_MELEE" );
    _unknown_6A39( "breath", "+breath_sprint", &"TRAINER_HINT_BREATH_SPRINT" );
    _unknown_6A49( "breath", "+holdbreath", &"TRAINER_HINT_BREATH" );
    _unknown_6A5D( "melee", "+melee", &"TRAINER_HINT_MELEE", undefined, "small_background" );
    _unknown_6A71( "melee", "+melee_breath", &"TRAINER_HINT_MELEE", undefined, "small_background" );
    _unknown_6A86( "melee", "+melee_zoom", &"TRAINER_HINT_MELEE", undefined, "small_background" );
    _unknown_6A95( "prone", "goprone", &"TRAINER_HINT_PRONE" );
    _unknown_6AA5( "prone", "+stance", &"TRAINER_HINT_PRONE_STANCE" );
    _unknown_6AB5( "prone", "toggleprone", &"TRAINER_HINT_PRONE_TOGGLE" );
    _unknown_6AC5( "prone", "+prone", &"TRAINER_HINT_PRONE_HOLD" );
    _unknown_6AD4( "prone", "lowerstance", &"TRAINER_HINT_PRONE_DOUBLE" );
    _unknown_6AE8( "crouch", "+stance", &"TRAINER_HINT_CROUCH_STANCE", &"TRAINER_HINT_CROUCH_TOGGLE" );
    _unknown_6AFB( "crouch", "+togglecrouch", &"TRAINER_HINT_CROUCH_TOGGLE", &"TRAINER_HINT_CROUCH_STANCE" );
    _unknown_6B0F( "crouch", "+movedown", &"TRAINER_HINT_CROUCH_HOLD", &"TRAINER_HINT_CROUCH_STANCE" );
    _unknown_6B22( "crouch", "gocrouch", &"TRAINER_HINT_CROUCH", &"TRAINER_HINT_CROUCH_STANCE" );
    _unknown_6B37( "stand", "+stance", &"TRAINER_HINT_STAND_STANCE", undefined, "small_background" );
    _unknown_6B4B( "stand", "+gostand", &"TRAINER_HINT_STAND", undefined, "small_background" );
    _unknown_6B5F( "stand", "+moveup", &"TRAINER_HINT_STAND_UP", undefined, "small_background" );
    _unknown_6B73( "stand", "+togglecrouch", &"TRAINER_HINT_STAND", undefined, "small_background" );
    _unknown_6B88( "stand", "toggleprone", &"TRAINER_HINT_STAND", undefined, "small_background" );
    _unknown_6B97( "jump", "+gostand", &"TRAINER_HINT_JUMP_STAND" );
    _unknown_6BA7( "jump", "+moveup", &"TRAINER_HINT_JUMP" );
    _unknown_6BBB( "sprint", "+breath_sprint", &"TRAINER_HINT_SPRINT", undefined, "medium_background" );
    _unknown_6BD0( "sprint", "+sprint", &"TRAINER_HINT_SPRINT", undefined, "medium_background" );
    _unknown_6BE4( "sprint", "+sprint_zoom", &"TRAINER_HINT_SPRINT", undefined, "medium_background" );
    _unknown_6BF8( "sprint_pc", "+breath_sprint", &"TRAINER_HINT_SPRINT_PC", undefined, "medium_background" );
    _unknown_6C0C( "sprint_pc", "+sprint", &"TRAINER_HINT_SPRINT_PC", undefined, "medium_background" );
    _unknown_6C21( "sprint_pc", "+sprint_zoom", &"TRAINER_HINT_SPRINT_PC", undefined, "medium_background" );
    _unknown_6C30( "sprint2", "+breath_sprint", &"TRAINER_HINT_HOLDING_SPRINT" );
    _unknown_6C40( "sprint2", "+sprint", &"TRAINER_HINT_HOLDING_SPRINT" );
    _unknown_6C50( "sprint2", "+sprint_zoom", &"TRAINER_HINT_HOLDING_SPRINT" );
    _unknown_6C64( "reload", "+reload", &"TRAINER_HINT_RELOAD", undefined, "medium_background" );
    _unknown_6C78( "reload", "+usereload", &"TRAINER_HINT_RELOAD_USE", undefined, "medium_background" );
    _unknown_6C88( "mantle", "+gostand", &"TRAINER_HINT_MANTLE" );
    _unknown_6C98( "sidearm", "weapnext", &"TRAINER_HINT_SIDEARM_SWAP" );
    _unknown_6CA8( "primary", "weapnext", &"TRAINER_HINT_PRIMARY_SWAP" );
    _unknown_6CBC( "frag", "+frag", &"TRAINER_HINT_FRAG", undefined, "medium_background" );
    _unknown_6CCC( "flash", "+smoke", &"TRAINER_HINT_FLASH" );
    _unknown_6CDB( "swap_launcher", "+activate", &"TRAINER_HINT_SWAP" );
    _unknown_6CEB( "swap_launcher", "+usereload", &"TRAINER_HINT_SWAP_RELOAD" );
    _unknown_6CFB( "firemode", "+actionslot 2", &"TRAINER_HINT_FIREMODE" );
    _unknown_6D0B( "attack_launcher", "+attack", &"TRAINER_HINT_LAUNCHER_ATTACK" );
    _unknown_6D1A( "swap_explosives", "+activate", &"TRAINER_HINT_EXPLOSIVES" );
    _unknown_6D2A( "swap_explosives", "+usereload", &"TRAINER_HINT_EXPLOSIVES_RELOAD" );
    _unknown_6D3A( "plant_explosives", "+activate", &"TRAINER_HINT_EXPLOSIVES_PLANT" );
    _unknown_6D4A( "plant_explosives", "+usereload", &"TRAINER_HINT_EXPLOSIVES_PLANT_RELOAD" );
    _unknown_6D59( "equip_C4", "+actionslot 4", &"TRAINER_HINT_EQUIP_C4" );
    _unknown_6D69( "throw_C4", "+toggleads_throw", &"TRAINER_HINT_THROW_C4_TOGGLE" );
    _unknown_6D79( "throw_C4", "+speed_throw", &"TRAINER_HINT_THROW_C4_SPEED" );
    _unknown_6D89( "throw_C4", "+throw", &"TRAINER_HINT_THROW_C4" );
    _unknown_6D98( "detonate_C4", "+attack", &"TRAINER_DETONATE_C4" );
    _unknown_6DAC( "inspect_weapon", "+actionslot 2", &"TRAINER_HINT_WEAPON_INSPECT", &"TRAINER_HINT_WEAPON_INSPECT_PC" );
    _unknown_6DBF( "inspect_weapon_pc", "weapinspect", &"TRAINER_HINT_WEAPON_INSPECT_PC", &"TRAINER_HINT_WEAPON_INSPECT" );
    _unknown_6DD3( "look_inversion", "pause", &"TRAINER_HINT_INVERT_CONTROL", &"TRAINER_HINT_INVERT_CONTROL_PC" );
    _unknown_6DE6( "look_inversion_pc", "pause", &"TRAINER_HINT_INVERT_CONTROL_PC", &"TRAINER_HINT_INVERT_CONTROL" );
    _unknown_6E89();
    _unknown_6E18();
}

_ID44904( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( level._ID54149[var_0] ) )
        level._ID54149[var_0] = [];

    var_5 = _func_1A5();
    var_5._ID48396 = var_1;
    var_5._ID18611 = var_2;
    var_5._ID44463 = var_3;
    var_5._ID54630 = undefined;
    var_5._ID48140 = undefined;
    var_5._ID52017 = var_4;
    _func_150( var_2 );
    level._ID54149[var_0][level._ID54149[var_0].size] = var_5;
}

_ID50166( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID54149[var_0].size; var_1++ )
    {
        var_2 = level._ID54149[var_0][var_1];
        var_3 = _func_0E5( var_2._ID48396 );

        if ( !var_3["count"] )
            continue;

        return level._ID54149[var_0][var_1];
    }

    return level._ID54149[var_0][0];
}

_ID48182()
{
    if ( level._ID8534 )
    {
        _unknown_6F08( _func_097( "BUTTON_START" ), "BUTTON_START" );
        _unknown_6F17( _func_097( "BUTTON_A" ), "BUTTON_A" );
        _unknown_6F25( _func_097( "BUTTON_B" ), "BUTTON_B" );
        _unknown_6F33( _func_097( "BUTTON_X" ), "BUTTON_X" );
        _unknown_6F41( _func_097( "BUTTON_Y" ), "BUTTON_Y" );
        _unknown_6F50( _func_097( "BUTTON_LSTICK" ), "BUTTON_LSTICK" );
        _unknown_6F5E( _func_097( "BUTTON_RSTICK" ), "BUTTON_RSTICK" );
        _unknown_6F6C( _func_097( "BUTTON_LSHLDR" ), "BUTTON_LSHLDR" );
        _unknown_6F7A( _func_097( "BUTTON_RSHLDR" ), "BUTTON_RSHLDR" );
        _unknown_6F89( _func_097( "BUTTON_LTRIG" ), "BUTTON_LTRIG" );
        _unknown_6F97( _func_097( "BUTTON_RTRIG" ), "BUTTON_RTRIG" );
    }
    else
    {
        for ( var_0 = 0; var_0 < level._ID49067.size; var_0++ )
            _unknown_6FAF( _func_097( level._ID49067[var_0] ), level._ID49067[var_0] );

        for ( var_0 = 0; var_0 < level._ID43412.size; var_0++ )
            _unknown_6FCA( _func_097( level._ID43412[var_0] ), level._ID43412[var_0] );
    }
}

_ID53149( var_0 )
{
    var_1 = _func_1D9( level._ID54149 );

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        var_3 = level._ID54149[var_1[var_2]];

        for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        {
            if ( var_3[var_4]._ID48396 != var_0 )
                continue;

            return var_1[var_2];
        }
    }
}

_ID50827( var_0, var_1 )
{
    if ( var_0 == "" )
        return;

    var_2 = _func_1D9( level._ID54149 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = level._ID54149[var_2[var_3]];

        for ( var_5 = 0; var_5 < var_4.size; var_5++ )
        {
            if ( var_4[var_5]._ID48396 != var_0 )
                continue;

            var_4[var_5]._ID47576 = var_1;
        }
    }
}

_ID47823()
{
    level._ID49067 = "1234567890-=qwertyuiop[]asdfghjkl;'zxcvbnm,./";
    level._ID43412 = [];
    level._ID43412[level._ID43412.size] = "TAB";
    level._ID43412[level._ID43412.size] = "ENTER";
    level._ID43412[level._ID43412.size] = "ESCAPE";
    level._ID43412[level._ID43412.size] = "SPACE";
    level._ID43412[level._ID43412.size] = "BACKSPACE";
    level._ID43412[level._ID43412.size] = "UPARROW";
    level._ID43412[level._ID43412.size] = "DOWNARROW";
    level._ID43412[level._ID43412.size] = "LEFTARROW";
    level._ID43412[level._ID43412.size] = "RIGHTARROW";
    level._ID43412[level._ID43412.size] = "ALT";
    level._ID43412[level._ID43412.size] = "CTRL";
    level._ID43412[level._ID43412.size] = "SHIFT";
    level._ID43412[level._ID43412.size] = "CAPSLOCK";
    level._ID43412[level._ID43412.size] = "F1";
    level._ID43412[level._ID43412.size] = "F2";
    level._ID43412[level._ID43412.size] = "F3";
    level._ID43412[level._ID43412.size] = "F4";
    level._ID43412[level._ID43412.size] = "F5";
    level._ID43412[level._ID43412.size] = "F6";
    level._ID43412[level._ID43412.size] = "F7";
    level._ID43412[level._ID43412.size] = "F8";
    level._ID43412[level._ID43412.size] = "F9";
    level._ID43412[level._ID43412.size] = "F10";
    level._ID43412[level._ID43412.size] = "F11";
    level._ID43412[level._ID43412.size] = "F12";
    level._ID43412[level._ID43412.size] = "INS";
    level._ID43412[level._ID43412.size] = "DEL";
    level._ID43412[level._ID43412.size] = "PGDN";
    level._ID43412[level._ID43412.size] = "PGUP";
    level._ID43412[level._ID43412.size] = "HOME";
    level._ID43412[level._ID43412.size] = "END";
    level._ID43412[level._ID43412.size] = "MOUSE1";
    level._ID43412[level._ID43412.size] = "MOUSE2";
    level._ID43412[level._ID43412.size] = "MOUSE3";
    level._ID43412[level._ID43412.size] = "MOUSE4";
    level._ID43412[level._ID43412.size] = "MOUSE5";
    level._ID43412[level._ID43412.size] = "MWHEELUP";
    level._ID43412[level._ID43412.size] = "MWHEELDOWN";
    level._ID43412[level._ID43412.size] = "AUX1";
    level._ID43412[level._ID43412.size] = "AUX2";
    level._ID43412[level._ID43412.size] = "AUX3";
    level._ID43412[level._ID43412.size] = "AUX4";
    level._ID43412[level._ID43412.size] = "AUX5";
    level._ID43412[level._ID43412.size] = "AUX6";
    level._ID43412[level._ID43412.size] = "AUX7";
    level._ID43412[level._ID43412.size] = "AUX8";
    level._ID43412[level._ID43412.size] = "AUX9";
    level._ID43412[level._ID43412.size] = "AUX10";
    level._ID43412[level._ID43412.size] = "AUX11";
    level._ID43412[level._ID43412.size] = "AUX12";
    level._ID43412[level._ID43412.size] = "AUX13";
    level._ID43412[level._ID43412.size] = "AUX14";
    level._ID43412[level._ID43412.size] = "AUX15";
    level._ID43412[level._ID43412.size] = "AUX16";
    level._ID43412[level._ID43412.size] = "KP_HOME";
    level._ID43412[level._ID43412.size] = "KP_UPARROW";
    level._ID43412[level._ID43412.size] = "KP_PGUP";
    level._ID43412[level._ID43412.size] = "KP_LEFTARROW";
    level._ID43412[level._ID43412.size] = "KP_5";
    level._ID43412[level._ID43412.size] = "KP_RIGHTARROW";
    level._ID43412[level._ID43412.size] = "KP_END";
    level._ID43412[level._ID43412.size] = "KP_DOWNARROW";
    level._ID43412[level._ID43412.size] = "KP_PGDN";
    level._ID43412[level._ID43412.size] = "KP_ENTER";
    level._ID43412[level._ID43412.size] = "KP_INS";
    level._ID43412[level._ID43412.size] = "KP_DEL";
    level._ID43412[level._ID43412.size] = "KP_SLASH";
    level._ID43412[level._ID43412.size] = "KP_MINUS";
    level._ID43412[level._ID43412.size] = "KP_PLUS";
    level._ID43412[level._ID43412.size] = "KP_NUMLOCK";
    level._ID43412[level._ID43412.size] = "KP_STAR";
    level._ID43412[level._ID43412.size] = "KP_EQUALS";
    level._ID43412[level._ID43412.size] = "PAUSE";
    level._ID43412[level._ID43412.size] = "SEMICOLON";
    level._ID43412[level._ID43412.size] = "COMMAND";
    level._ID43412[level._ID43412.size] = "181";
    level._ID43412[level._ID43412.size] = "191";
    level._ID43412[level._ID43412.size] = "223";
    level._ID43412[level._ID43412.size] = "224";
    level._ID43412[level._ID43412.size] = "225";
    level._ID43412[level._ID43412.size] = "228";
    level._ID43412[level._ID43412.size] = "229";
    level._ID43412[level._ID43412.size] = "230";
    level._ID43412[level._ID43412.size] = "231";
    level._ID43412[level._ID43412.size] = "232";
    level._ID43412[level._ID43412.size] = "233";
    level._ID43412[level._ID43412.size] = "236";
    level._ID43412[level._ID43412.size] = "241";
    level._ID43412[level._ID43412.size] = "242";
    level._ID43412[level._ID43412.size] = "243";
    level._ID43412[level._ID43412.size] = "246";
    level._ID43412[level._ID43412.size] = "248";
    level._ID43412[level._ID43412.size] = "249";
    level._ID43412[level._ID43412.size] = "250";
    level._ID43412[level._ID43412.size] = "252";
}

_ID54344( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = undefined;
    var_3 = [];
    var_4 = [];
    var_5 = undefined;
    var_6 = undefined;
    var_7 = var_1;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];

        if ( var_8._ID172 == "script_brushmodel" )
        {
            var_4[var_4.size] = var_8;

            if ( _func_02F( var_8._ID922 ) && var_8._ID922 == "blocker" )
                var_6 = var_8;

            continue;
        }

        if ( var_8._ID172 == "script_origin" )
        {
            var_2 = var_8;
            continue;
        }

        if ( var_8._ID172 == "script_model" )
        {
            var_3[var_3.size] = var_8;
            continue;
        }

        if ( var_8._ID172 == "trigger_radius" )
        {
            var_5 = var_8;
            continue;
        }
    }

    var_clear_2
    var_clear_0
    var_10 = var_3;

    for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
    {
        var_11 = var_10[var_12];
        var_11 _meth_8053( var_2 );
    }

    var_clear_2
    var_clear_0
    var_13 = var_4;

    for ( var_15 = _func_1DA( var_13 ); _func_02F( var_15 ); var_15 = _func_1BF( var_13, var_15 ) )
    {
        var_14 = var_13[var_15];
        var_14 _meth_8053( var_2 );
    }

    var_clear_2
    var_clear_0
    var_16 = var_2;
    var_16._ID51925 = var_4;

    if ( _func_02F( var_5 ) )
        var_16._ID1224 = var_5;

    return var_16;
}

_ID53265()
{
    self._ID740 = self._ID740 + ( 0, 0, -1000 );
}

_ID49617()
{
    self._ID740 = self._ID740 + ( 0, 0, 1000 );
}

_ID47372()
{
    switch ( self._ID1282 )
    {

    }

    case "m1a1":
    case "laatpv_minigun":
    case "laatpv":
    case "latvee":
    case "cobra":
}

_ID53799()
{

}

_ID48430()
{

}

_ID44060()
{

}

_ID46754()
{
    self endon( "death" );
    self endon( "stop_default_drone_behavior" );

    if ( _func_02F( self._ID922 ) && self._ID922 == "ai_ambient" )
    {
        self._ID11572 = 1;
        self._ID31276 = 0;
    }

    if ( _func_02F( self._ID922 ) && self._ID922 == "runners" )
    {
        self waittill( "goal" );
        self _meth_80B7();
    }
}

_ID48033( var_0, var_1 )
{
    self endon( "death" );
    _unknown_7A1A();
    var_2 = undefined;
    var_3 = undefined;
    var_4 = 0;

    if ( _func_02F( self._ID1191 ) )
        var_2 = _func_0C8( self._ID1191, "targetname" );

    thread _unknown_786C();

    if ( _func_0D3( level._ID30895["generic"][var_0] ) )
    {
        var_4 = 1;

        if ( var_0 == "h2_training_basketball_guy2" )
        {
            var_5 = _func_1A1( "basketball", "targetname" );
            var_5._ID3189 = "basketball";
            var_5 _ID42407::_ID3428();
            self._ID12293 thread _ID42259::_ID3044( var_5, "training_basketball_loop", "stop_idle" );
        }

        self._ID12293 thread _ID42259::_ID3025( self, var_0, "stop_idle" );
        var_3 = var_0 + "_go";

        if ( _unknown_7A9D( var_3 ) )
            var_0 = var_3;
        else
            var_3 = undefined;
    }
    else
        self._ID12293 _ID42259::_ID3023( self, var_0 );

    if ( _func_02F( self._ID31190 ) )
    {
        if ( _func_02F( var_1 ) )
            _ID42237::_ID14421( self._ID31190, var_1 );
        else
            _ID42237::_ID14413( self._ID31190 );
    }

    if ( _func_02F( var_2 ) )
    {
        self._ID10998 = 1;
        self._ID11025 = 1;
    }

    if ( !var_4 )
        self._ID12293 _ID42259::_ID3020( self, var_0 );

    if ( _func_02F( var_3 ) )
    {
        self._ID12293 notify( "stop_idle" );
        self._ID12293 _ID42259::_ID3020( self, var_3 );
    }

    switch ( var_0 )
    {

    }

    if ( _func_02F( var_2 ) )
    {
        self _meth_81B1( var_2 );
        wait 1;
        self._ID10998 = 0;
        self._ID11025 = 0;
        self waittill( "goal" );

        if ( _func_02F( self._ID8931 ) && self._ID8931 )
            _ID42407::_ID8925( "off" );
    }
    else if ( _func_02F( level._ID30895["generic"][var_0 + "_idle"] ) )
        self._ID12293 thread _ID42259::_ID3025( self, var_0 + "_idle", "stop_idle" );

    if ( _unknown_7B6C( var_0 + "_react" ) )
    {
        if ( !var_4 )
            var_0 += "_idle";

        var_6 = var_0 + "_react";

        if ( _unknown_7B88( var_0 + "_react2" ) )
            var_7 = var_0 + "_react2";
        else
            var_7 = var_6;

        while ( _func_02F( self ) )
        {
            level waittill( "mortar_hit" );
            self._ID12293 notify( "stop_idle" );
            self notify( "stop_idle" );
            waitframe;

            if ( _func_0B7( 100 ) > 50 )
                _ID42259::_ID3020( self, var_6 );
            else
                _ID42259::_ID3020( self, var_7 );

            thread _ID42259::_ID3025( self, var_0, "stop_idle" );
        }

        return;
        case "civilian_run_2_crawldeath":
    }
}

_ID51288()
{
    self waittill( "death" );

    if ( _func_02F( self._ID12293 ) && !_func_1A8( self._ID12293 ) )
        self._ID12293 _meth_80B7();
}

_ID49547()
{
    self endon( "death" );
    self _meth_81AF( 1 );
    self _meth_8583();
    _ID42407::_ID13024( "_stealth_normal" );
    _ID42407::_ID13025( "_stealth_normal" );
    self._ID1298 = 1000;
    self._ID10998 = 1;
    wait 0.1;
    level._ID44636[level._ID44636.size] = self;
    thread _unknown_84F9();
}

_ID53409()
{
    thread _unknown_84FF();
    self endon( "death" );
    var_0 = self._ID70;
    var_1 = 0;

    if ( !_func_02F( self._ID12293 ) )
        self._ID12293 = self._ID988;

    var_2 = undefined;

    switch ( var_0 )
    {

    }

    case "training_basketball_rest":
    endswitch( 45 )  case "h2_parabolic_leaning_guy_smoking_idle" loc_7ED4 case "h2_training_bbq_guy" loc_7ED3 case "favela_run_and_wave" loc_7ED7 case "training_basketball_rest" loc_7ED6 case "roadkill_cover_radio_soldier3" loc_7ED6 case "roadkill_cover_spotter_idle" loc_7ED4 case "roadkill_cover_radio_soldier2" loc_7ED8 case "cliffhanger_welder_wing" loc_7ECC case "parabolic_leaning_guy_smoking_idle" loc_7ECE case "oilrig_balcony_smoke_idle" loc_7ED3 case "civilian_smoking_A" loc_7ED9 case "civilian_reader_2" loc_7ED8 case "civilian_reader_1" loc_7EDD case "civilian_texting_sitting" loc_7EDC case "civilian_texting_standing" loc_7EE1 case "sitting_guard_loadAK_idle" loc_7EE0 case "wounded_carry_fastwalk_carrier" loc_7EB8 case "unarmed_panickedrun_loop_V2" loc_7EAF case "DC_Burning_bunker_stumble" loc_7EB1 case "DC_Burning_artillery_reaction_v2_idle" loc_7EB7 case "DC_Burning_artillery_reaction_v1_idle" loc_7EBC case "bunker_toss_idle_guy1" loc_7EC1 case "afgan_caves_sleeping_guard_idle" loc_7EBD case "death_explosion_run_F_v1" loc_7EBD case "training_sleeping_in_chair" loc_7EBC case "killhouse_sas_2_idle" loc_7EC0 case "little_bird_casual_idle_guy1" loc_7EC5 case "parabolic_leaning_guy_idle" loc_7ECB case "parabolic_leaning_guy_idle_training" loc_7ED0 case "training_locals_sit" loc_7ED4 case "training_locals_groupB_guy2" loc_7ED9 case "training_locals_groupB_guy1" loc_7EDE case "training_locals_groupA_guy2" loc_7EE4 case "training_locals_groupA_guy1" loc_7EE9 case "training_locals_kneel" loc_7EC0 case "roadkill_latvee_map_sequence_quiet_idle" loc_7EBE case "h2_training_latveerepair_underguy" loc_7EB6 case "h2_roadkill_latvee_map_sequence_quiet_idle" loc_7EB5 case "h2_training_chilling_ground_ranger01" loc_7EB9 case "h2_training_chilling_ground_ranger02" loc_7EB7 case "h2_training_latveerepair_topguy" loc_7EB6 case "h2_training_burgertown_truck_soldier" loc_7EB0 case "h2_training_latveerepair_behindguy" loc_7EAA case "civilian_run_2_crawldeath" loc_7F26 default loc_7FBF
    thread _unknown_7DFE( var_0, var_2 );
    thread _unknown_8646();
    thread _unknown_86AC();
    case "training_locals_sit":
    case "roadkill_cover_spotter_idle":
    case "h2_parabolic_leaning_guy_smoking_idle":
    case "oilrig_balcony_smoke_idle":
    case "h2_training_bbq_guy":
    case "favela_run_and_wave":
    case "civilian_reader_2":
    case "roadkill_cover_radio_soldier2":
    case "parabolic_leaning_guy_smoking_idle":
    case "training_locals_groupB_guy2":
    case "civilian_smoking_A":
    case "civilian_reader_1":
    case "civilian_texting_sitting":
    case "civilian_texting_standing":
    case "sitting_guard_loadAK_idle":
    case "wounded_carry_fastwalk_carrier":
    case "unarmed_panickedrun_loop_V2":
    case "DC_Burning_bunker_stumble":
    case "death_explosion_run_F_v1":
    case "afgan_caves_sleeping_guard_idle":
    case "training_locals_kneel":
    case "killhouse_sas_2_idle":
    case "little_bird_casual_idle_guy1":
    case "parabolic_leaning_guy_idle":
    case "parabolic_leaning_guy_idle_training":
    case "training_locals_groupB_guy1":
    case "training_locals_groupA_guy2":
    case "training_locals_groupA_guy1":
    case "roadkill_latvee_map_sequence_quiet_idle":
    case "h2_training_latveerepair_topguy":
    case "h2_training_latveerepair_underguy":
    case "h2_roadkill_latvee_map_sequence_quiet_idle":
    case "h2_training_chilling_ground_ranger01":
    case "h2_training_burgertown_truck_soldier":
    case "h2_training_latveerepair_behindguy":
    case "civilian_run_2_crawldeath":
    default:
}

ai_ambient_shooter_think()
{
    var_0 = _func_1A1( "shooterAnimationNode", "targetname" );
    self._ID3189 = "generic";

    if ( _func_02F( self._ID988._ID70 ) && self._ID988._ID70 == "h2_training_shootingrange_formation_student" || self._ID988._ID70 == "h2_training_shootingrange_formation_teacher" )
        _ID42407::_ID14803( "scar_h", "primary" );
    else
        _ID42407::_ID14803( "m4_grunt_SSDD", "primary" );

    if ( _func_02F( self._ID70 ) )
    {
        var_0 _ID42259::_ID3044( self, self._ID70 );
        return;
    }

    var_1 = "Stand";
    var_2 = undefined;

    for (;;)
    {
        if ( !_func_02F( self ) )
            return;

        switch ( var_1 )
        {

        }

        case "Stand":
    }
}

_ID47732()
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID172 ) && self._ID172 == "script_model" )
        return;

    _ID42407::_ID32628( 1 );
    self._ID511 = 1;
    self._ID507 = 1;
    self._ID465 = 0;
}

_ID3012( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "generic";

    if ( _func_02F( level._ID30895[var_1][var_0] ) )
        return 1;
    else
        return 0;
}

_ID46818()
{
    self endon( "death" );

    for (;;)
    {
        self waittillmatch( "looping anim",  "end"  );
        thread _ID42237::_ID27077( "scn_trainer_mechanic" );
    }
}

_ID14519()
{
    self endon( "death" );
    thread _unknown_81D3();

    for (;;)
    {
        self waittillmatch( "looping anim",  "spark on"  );
        thread _unknown_81D0();
    }
}

_ID51000()
{
    self endon( "death" );
    self notify( "starting sparks" );
    self endon( "starting sparks" );
    self endon( "spark off" );

    for (;;)
    {
        _func_157( level._ID1426["welding_runner"], self, "tag_tip_fx" );
        self _meth_80A1( "elec_spark_welding_bursts" );
        wait(_func_0BA( 0.25, 0.5 ));
    }
}

_ID36557()
{
    self endon( "death" );

    for (;;)
    {
        self waittillmatch( "looping anim",  "spark off"  );
        self notify( "spark off" );
    }
}

_ID14520( var_0 )
{
    var_0 waittill( "death" );
}

_ID53576( var_0 )
{
    var_0._ID511 = 1;
    var_0._ID507 = 1;
    var_0 thread _ID42407::_ID22746();
    var_0 _ID42407::_ID10949();

    if ( var_0._ID1194 == "axis" )
        var_0 thread _unknown_828B();

    if ( var_0._ID1194 == "allies" )
        var_0 thread _unknown_829A();
}

_ID45781()
{

}

_ID52457()
{
    _ID42407::_ID14803( "m4_grunt_SSDD", "primary" );
    self._ID1194 = "allies";
}

_ID54175()
{
    if ( level._ID794 _meth_831F( level._ID43062 ) )
        return 1;
    else
        return 0;
}

_ID48594()
{
    if ( level._ID794 _ID42237::_ID20583() )
    {
        if ( level._ID794 _meth_821F( "autoAim" ) )
            return 1;
    }

    return 0;
}

_ID45711()
{
    var_0 = _func_1A1( "bridge_layer", "targetname" );
    var_1 = _func_1A1( "bridge_layer_bridge", "targetname" );
    var_0._ID3189 = "bridge_layer";
    var_0 _ID42407::_ID3428();
    var_1._ID3189 = "bridge_layer_bridge";
    var_1 _ID42407::_ID3428();
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_2._ID740 = var_0._ID740;
    var_2._ID65 = var_0._ID65;
    var_2 thread _ID42259::_ID3018( var_0, "bridge_raise" );
    var_2 _ID42259::_ID3018( var_1, "bridge_raise" );
    var_0 _meth_807C( "m1a1_abrams_idle_low" );
    _ID42237::_ID14413( "player_passing_barracks" );
    var_2 thread _ID42259::_ID3111( var_0, "bridge_raise" );
    var_2 _ID42259::_ID3111( var_1, "bridge_raise" );
}

_ID45742()
{
    level._ID43784 = undefined;
    level._ID45572 = undefined;
    level._ID52734 = level._ID794 _meth_8317();
    level._ID43198 = level._ID794 _meth_8304( level._ID52734[0] );
    level._ID49719 = level._ID794 _meth_8304( level._ID52734[1] );
    level._ID48508 = level._ID794 _meth_8303( level._ID52734[0] );
    level._ID46774 = level._ID794 _meth_8303( level._ID52734[1] );
    level._ID45001 = level._ID43198 + level._ID49719 + level._ID48508 + level._ID46774;
    level waittill( "test_cleared" );
    level._ID52734 = level._ID794 _meth_8317();
    level._ID43198 = level._ID794 _meth_8304( level._ID52734[0] );
    level._ID49719 = level._ID794 _meth_8304( level._ID52734[1] );
    level._ID48508 = level._ID794 _meth_8303( level._ID52734[0] );
    level._ID46774 = level._ID794 _meth_8303( level._ID52734[1] );
    level._ID54316 = level._ID43198 + level._ID49719 + level._ID48508 + level._ID46774;
    var_0 = level._ID45001 - level._ID54316;
    var_1 = level._ID52991;

    if ( var_1 == 0 || var_0 == 0 )
        level._ID45572 = 0;
    else
    {
        level._ID45572 = var_1 / var_0 * 100;
        level._ID45572 = _ID42407::_ID30292( level._ID45572, 0 );
    }

    if ( level._ID45572 == 0 )
        level._ID43784 = 0;
    else
    {
        if ( level._ID45572 > 200 )
            level._ID45572 = 200;

        level._ID43784 = level._ID45572 / 0.2 / 100;
        level._ID43784 = _ID42407::_ID30292( level._ID43784, 1 );
    }

    level notify( "accuracy_bonus" );
}

_ID21428( var_0, var_1 )
{
    level._ID53270 = 0;
    level._ID45789 = 0;
    level._ID50525 = 0;
    var_2 = level._ID44713;
    var_3 = level._ID52991;
    level notify( "kill_timer" );
    thread maps\trainer_aud::course_end_timer_buzzer();
    _unknown_8786();
    var_4 = 1.0;
    var_5 = _ID42237::_ID54738();

    if ( var_5 == "LANGUAGE_SPANISH" || var_5 == "LANGUAGE_GERMAN" || var_5 == "LANGUAGE_FRENCH" || var_5 == "LANGUAGE_POLISH" || var_5 == "LANGUAGE_PORTUGUESE" || var_5 == "LANGUAGE_SPANISHNA" || var_5 == "LANGUAGE_RUSSIAN" || var_5 == "LANGUAGE_RUSSIAN_PARTIAL" || var_5 == "LANGUAGE_ITALIAN" )
        var_4 = 1.2;

    var_6 = _func_0C1( 210 * var_4 );
    var_7 = 180;
    var_8 = 75;
    var_9 = -28;
    var_10 = -1 * var_6 - 20;
    var_11 = -100;
    var_12 = -35;
    var_13 = -133;
    var_14 = 12;
    var_15 = 18;
    var_16 = 30;
    var_17 = var_8 + var_15;
    var_18 = 0.45;
    var_19 = 0.6;
    var_20 = 0.7;
    var_21 = 0.5;
    var_22 = 0.25;
    level.resulthudelems = [];
    var_23 = _func_03D() - level._ID36040 / 1000;
    var_23 = _ID42407::_ID30292( var_23, 2 );
    level.backers = _ID42313::getstatbackers( var_9, var_8, var_6, var_7 );
    var_24 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_19, &"TRAINER_RESULT_YOURTIME_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_24;
    var_25 = _ID42407::settimeformat( var_23 );
    var_26 = undefined;
    var_27 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_19, var_25, undefined, var_26 );
    var_27._ID44 = "right";
    var_27 _meth_8090( 30, 900000, 700 );
    level.resulthudelems[level.resulthudelems.size] = var_27;
    var_17 += var_15;
    wait(var_21);
    var_28 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_ENEMIESHIT_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_28;
    var_29 = _ID42313::_ID50277( var_11, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_ENEMIESHIT_VALUE", undefined, var_3 );
    var_29._ID44 = "right";
    level.resulthudelems[level.resulthudelems.size] = var_29;

    if ( var_3 == level._ID51809 )
    {
        var_30 = 0;
        var_31 = undefined;
        var_25 = &"TRAINER_RESULT_TIME_NULL";
        var_26 = undefined;
    }
    else
    {
        var_31 = "penalty";
        var_32 = level._ID51809 - var_3;
        var_30 = var_32 * level._ID52214;
        var_25 = _ID42407::settimeformat( var_30, "+" );
        var_26 = undefined;
    }

    var_33 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_18, var_25, var_31, var_26 );
    var_33._ID44 = "right";
    level.resulthudelems[level.resulthudelems.size] = var_33;
    var_17 += var_14;
    wait(var_22);
    var_34 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_CIVILSHIT_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_34;
    var_35 = _ID42313::_ID50277( var_11, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_CIVILSHIT_VALUE", undefined, var_2 );
    var_35._ID44 = "right";
    level.resulthudelems[level.resulthudelems.size] = var_35;

    if ( var_2 == 0 )
    {
        var_36 = 0;
        var_31 = undefined;
        var_25 = &"TRAINER_RESULT_TIME_NULL";
        var_26 = undefined;
    }
    else
    {
        var_36 = var_2 * level._ID51015;
        var_31 = "penalty";
        var_25 = _ID42407::settimeformat( var_36, "+" );
        var_26 = undefined;
    }

    var_37 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_18, var_25, var_31, var_26 );
    var_37._ID44 = "right";
    level.resulthudelems[level.resulthudelems.size] = var_37;
    var_17 += var_14;
    wait(var_22);
    var_38 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_ACCURACY_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_38;
    var_39 = _ID42313::_ID50277( var_11, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_ACCURACY_STATS", undefined, level._ID45572 );
    var_39._ID44 = "right";
    level.resulthudelems[level.resulthudelems.size] = var_39;

    if ( level._ID43784 <= 0 )
    {
        var_31 = undefined;
        var_25 = &"TRAINER_RESULT_TIME_NULL";
        var_26 = undefined;
    }
    else
    {
        var_31 = "bonus";
        var_25 = _ID42407::settimeformat( level._ID43784, "-" );
        var_26 = undefined;
    }

    var_40 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_18, var_25, var_31, var_26 );
    var_40._ID44 = "right";
    level.resulthudelems[level.resulthudelems.size] = var_40;
    var_41 = var_23 - level._ID43784;
    var_41 += var_30;
    var_41 += var_36;
    var_41 = _ID42407::_ID30292( var_41, 2 );

    if ( var_23 > level._ID45602 )
        level._ID50525 = 1;

    if ( var_3 < level._ID45237 )
        level._ID45789 = 1;

    if ( var_2 > level._ID50219 )
        level._ID53270 = 1;

    var_42 = &"TRAINER_RESULT_RECOMMENDEDDIFF";
    var_31 = undefined;

    if ( var_41 > level._ID45602 || level._ID47716 > 10 || level._ID45789 == 1 || level._ID53270 == 1 )
    {
        var_42 = &"TRAINER_RESULT_FAILEDCOURSE";
        var_43 = &"TRAINER_RESULT_TRYAGAIN";
        var_31 = "penalty";
        level._ID46990 = level.faileddifficulty;
    }
    else if ( var_41 > level._ID53047 )
    {
        _func_034( "recommended_gameskill", "0" );
        var_43 = &"TRAINER_RESULT_RECRUIT";
        level._ID46990 = 0;
    }
    else if ( var_41 > level._ID54224 )
    {
        _func_034( "recommended_gameskill", "1" );
        var_43 = &"TRAINER_RESULT_REGULAR";
        level._ID46990 = 1;
    }
    else if ( var_41 > level._ID46775 )
    {
        _func_034( "recommended_gameskill", "2" );
        var_43 = &"TRAINER_RESULT_HARDENED";
        var_31 = "bonus";
        level._ID46990 = 2;
    }
    else
    {
        _func_034( "recommended_gameskill", "3" );
        var_43 = &"TRAINER_RESULT_VETERAN";
        var_31 = "bonus";
        level._ID46990 = 3;
    }

    if ( var_41 < level.pitbosstime )
        _ID42407::_ID16864( "PIT_BOSS" );

    if ( var_41 < level.studentmastertime )
        _ID42407::_ID16864( "STUDENT_MASTER" );

    var_44 = var_17 + var_16 * 0.5;
    level.hud_separatorlines[0] = _func_1AF();
    level.hud_separatorlines[0]._ID1331 = var_9;
    level.hud_separatorlines[0]._ID1339 = var_44;
    level.hud_separatorlines[0] _meth_80D3( "h2_hud_ssdd_results_line", var_6, 2 );
    level.hud_separatorlines[0]._ID44 = "right";
    level.hud_separatorlines[0]._ID45 = "top";
    level.hud_separatorlines[0]._ID983 = 2;
    level.hud_separatorlines[0]._ID408 = 0;
    level.hud_separatorlines[0]._ID499 = "right_adjustable";
    level.hud_separatorlines[0]._ID1284 = "top_adjustable";
    level.hud_separatorlines[0]._ID55 = 0.1;
    level.hud_separatorlines[0]._ID493 = 1;
    level.hud_separatorlines[0]._ID491 = 1;
    var_25 = _ID42407::settimeformat( var_41 );
    var_26 = undefined;
    var_17 += var_16;
    wait(var_22);
    var_45 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_19, &"TRAINER_RESULT_FINALTIME_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_45;
    var_46 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_20, var_25, var_31, var_26 );
    var_46._ID44 = "right";
    var_46 _meth_8090( 30, 900000, 1400 );
    level.resulthudelems[level.resulthudelems.size] = var_46;
    wait(var_22);
    var_47 = level._ID794 _meth_8233( _ID42237::_ID44046(), "timeTrialTime" );
    var_48 = _func_0C1( var_41 * 100 );
    var_49 = var_16;

    if ( level._ID46990 < level.faileddifficulty )
    {
        if ( var_48 < var_47 || var_47 == 0 && !_ID42237::_ID14385( "has_cheated" ) && !_ID49347::_ID44352() )
        {
            if ( var_47 > 0 )
            {
                var_17 += var_14 + 2;
                var_50 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_NEW_RECORD", "bonus" );
                var_50._ID44 = "right";
                var_50 _meth_8090( 30, 900000, 1400 );
                level.resulthudelems[level.resulthudelems.size] = var_50;
                var_49 = var_16 - 6;
            }

            level._ID794 _meth_8251( _ID42237::_ID44046(), "timeTrialTime", var_48 );
        }
        else
        {
            var_17 += var_14 + 2;
            var_50 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_PERSONALBEST_TEXT" );
            level.resulthudelems[level.resulthudelems.size] = var_50;
            var_25 = _ID42407::settimeformat( var_47 / 100 );
            var_26 = undefined;
            var_51 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_18, var_25, undefined, var_26 );
            var_51._ID44 = "right";
            level.resulthudelems[level.resulthudelems.size] = var_51;
        }
    }

    var_44 = var_17 + var_49 * 0.5;
    var_17 += var_49;
    level.hud_separatorlines[1] = _func_1AF();
    level.hud_separatorlines[1]._ID1331 = var_9;
    level.hud_separatorlines[1]._ID1339 = var_44;
    level.hud_separatorlines[1] _meth_80D3( "h2_hud_ssdd_results_line", var_6, 2 );
    level.hud_separatorlines[1]._ID44 = "right";
    level.hud_separatorlines[1]._ID45 = "top";
    level.hud_separatorlines[1]._ID983 = 2;
    level.hud_separatorlines[1]._ID408 = 0;
    level.hud_separatorlines[1]._ID499 = "right_adjustable";
    level.hud_separatorlines[1]._ID1284 = "top_adjustable";
    level.hud_separatorlines[1]._ID55 = 0.1;
    level.hud_separatorlines[1]._ID493 = 1;
    level.hud_separatorlines[1]._ID491 = 1;
    var_52 = _ID42313::_ID50277( var_13, var_17, undefined, undefined, var_18, var_42 );
    var_52._ID44 = "center";
    level.resulthudelems[level.resulthudelems.size] = var_52;
    var_17 += var_14 + 2;
    var_53 = _ID42313::_ID50277( var_13, var_17, undefined, undefined, var_20, var_43, var_31 );
    var_53._ID44 = "center";
    var_53 _meth_8090( 30, 900000, 1400 );
    level.resulthudelems[level.resulthudelems.size] = var_53;
    _ID42407::_ID10226( 180000, ::_unknown_8DCB );
    return var_41;
}

_ID45523( var_0 )
{
    level._ID794 waittill( var_0 );
    _ID42237::_ID14402( var_0 );
}

_ID53307()
{
    _func_00E( "sprinted", "+breath_sprint" );
    _func_00E( "sprinted", "+sprint" );
    _func_00E( "sprinted", "+sprint_zoom" );
}

_ID49691( var_0 )
{
    var_1 = undefined;

    if ( _ID42237::_ID14385( "first_pit_run_done" ) )
    {
        switch ( level._ID46990 )
        {

        }
    }
    else
    {
        _ID42237::_ID14402( "first_pit_run_done" );

        switch ( level._ID46990 )
        {

        }
    }

    return var_1;
    case 1000:
    case 3:
    case 2:
    case 1:
    case 0:
    case 1000:
    case 3:
    case 2:
    case 1:
    case 0:
}

check_kill_stats()
{
    self endon( "clear_course" );
    self waittill( "kill_stats_display_huds" );
    _unknown_8EF0();
}

_ID48344()
{
    if ( _func_02F( level._ID50006 ) )
        _ID42313::_ID51785( level._ID50006 );

    if ( _func_02F( level.resulthudelems ) )
    {
        var_0 = level.resulthudelems;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            var_1 _meth_808F();
        }

        var_clear_2
        var_clear_0
        level.resulthudelems = undefined;
    }

    if ( _func_02F( level.backers ) )
    {
        var_3 = level.backers;

        for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
        {
            var_1 = var_3[var_4];
            var_1 _meth_808F();
        }

        var_clear_2
        var_clear_0
        level.backers = undefined;
    }

    if ( _func_02F( level.hud_separatorlines ) )
    {
        var_5 = level.hud_separatorlines;

        for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
        {
            var_1 = var_5[var_6];
            var_1 _meth_808F();
        }

        var_clear_2
        var_clear_0
        level.hud_separatorlines = undefined;
    }

    if ( _func_02F( level.counterbackers ) )
    {
        var_7 = level.counterbackers;

        for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
        {
            var_1 = var_7[var_8];
            var_1 _meth_808F();
        }

        var_clear_2
        var_clear_0
        level.counterbackers = undefined;
    }

    if ( _func_02F( level.counterhudelems ) )
    {
        var_9 = level.counterhudelems;

        for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
        {
            var_1 = var_9[var_10];
            var_1 _meth_808F();
        }

        var_clear_2
        var_clear_0
        level.counterhudelems = undefined;
    }

    if ( _func_02F( level._ID49811 ) )
        level._ID49811 _meth_808F();

    if ( _func_02F( level._ID43810 ) )
        level._ID43810 _meth_808F();
}

_ID48185()
{
    level endon( "kill_sprint_hint" );
    wait 0.5;
    var_0 = _unknown_87D7( "sprint2" );
    _unknown_85DB( var_0._ID18611, 5 );
}

_ID47630( var_0 )
{
    _unknown_9012();
    level endon( "kill_timer" );
    level._ID19201 = 20;
    level._ID36040 = _func_03D();

    if ( level._ID44400 )
        level thread _unknown_9023();

    thread _unknown_937A();
    level._ID50006 = _ID42313::_ID15642();
    level._ID50006._ID37557._ID578 = &"TRAINER_YOUR_TIME";
    level._ID50006 _meth_80DA( 0.05 );
    var_1 = 210;
    var_2 = 40;
    var_3 = 14;
    var_4 = -28;
    var_5 = -230;
    var_6 = -35;
    var_7 = 16;
    var_8 = var_3 + 10;
    var_9 = 0.45;
    var_10 = 0.6;
    level.counterhudelems = [];
    level.counterbackers = _ID42313::getstatbackers( var_4, var_3, var_1, var_2, 1 );
    var_11 = _ID42313::_ID50277( var_5, var_8, undefined, undefined, var_9, &"TRAINER_RESULT_ENEMIESHIT_TEXT" );
    level.counterhudelems[level.counterhudelems.size] = var_11;
    level._ID49811 = _ID42313::_ID50277( var_6, var_8, undefined, undefined, var_10, &"TRAINER_RESULT_ENEMIESHIT_VALUE", undefined, level._ID52991 );
    level._ID49811._ID44 = "right";
    var_8 += var_7;
    var_12 = _ID42313::_ID50277( var_5, var_8, undefined, undefined, var_9, &"TRAINER_RESULT_CIVILSHIT_TEXT" );
    level.counterhudelems[level.counterhudelems.size] = var_12;
    level._ID43810 = _ID42313::_ID50277( var_6, var_8, undefined, undefined, var_10, &"TRAINER_RESULT_CIVILSHIT_VALUE", undefined, level._ID44713 );
    level._ID43810._ID44 = "right";
    wait(var_0);
    _ID42313::_ID51785( level._ID50006 );
    _unknown_90EC();
    level thread _unknown_919C();
}

_ID43057()
{
    level._ID794 endon( "death" );
    level endon( "kill_timer" );
    var_0 = _func_03A( "killhouse_too_slow" );
    _func_034( "killhouse_too_slow", var_0 + 1 );
    level notify( "mission failed" );

    if ( !_ID42237::_ID14385( "player_course_end" ) )
        _func_034( "ui_deadquote", &"TRAINER_SHIP_TOO_SLOW" );
    else
        _func_034( "ui_deadquote", &"TRAINER_SHIP_DIDNT_SPRINT" );

    _ID42407::_ID23778();
}

_ID48889( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( !_func_02F( var_0 ) )
        var_3 = -225;
    else
        var_3 = var_0;

    if ( !_func_02F( var_1 ) )
        var_4 = 100;
    else
        var_4 = var_1;

    if ( _func_02F( var_2 ) )
        var_5 = _func_1B0( var_2 );
    else
        var_5 = _func_1AF();

    var_5._ID44 = "right";
    var_5._ID45 = "middle";
    var_5._ID499 = "right";
    var_5._ID1284 = "top";
    var_5._ID1331 = var_3;
    var_5._ID1339 = var_4;
    var_5._ID393 = 1.3;
    var_5._ID196 = ( 0.8, 1, 0.8 );
    var_5._ID392 = "objective";
    var_5._ID445 = ( 0.26, 0.65, 0.32 );
    var_5._ID444 = 0.2;
    var_5._ID408 = 1;
    var_5._ID493 = 1;
    var_5._ID491 = 1;
    return var_5;
}

_ID54296()
{
    wait(_func_0BA( 0.5, 1.0 ));
}

_ID46666()
{
    level endon( "end_sequence_starting" );
    level endon( "pit_dialogue_starting" );
    var_0 = _func_1A2( "conversation_orgs", "targetname" );
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_2[0] = level._ID30909["conversation_01"];
    var_2[1] = level._ID30909["conversation_02"];
    var_2[2] = level._ID30909["conversation_03"];

    if ( _ID42237::_ID8201() )
    {
        var_2[0] = level._ID30909["conversation_03"];
        var_2[1] = level._ID30909["conversation_02"];
        var_2[2] = level._ID30909["conversation_01"];
    }

    var_3 = 0;

    for (;;)
    {
        var_4 = var_2[var_3];
        var_5 = var_4;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];
            var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
            var_1 _ID42237::_ID27077( var_6 );
            _unknown_9381();
        }

        var_clear_2
        var_clear_0
        var_3++;

        if ( var_3 > 2 )
            var_3 = 0;
    }
}

_ID45506()
{
    wait(_func_0BA( 0.1, 1.2 ));
}

_ID45967()
{
    level endon( "end_sequence_starting" );
    _ID42237::_ID14402( "pit_dialogue_starting" );
    var_0 = _func_1A2( "conversation_orgs_pit", "targetname" );
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_masonstime" );
    _unknown_9411();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar1_deserteagle" );
    _unknown_9428();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_yomamma" );
    _unknown_9440();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar1_veryfunny" );
    _unknown_9457();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_maxspeed" );
    _unknown_946E();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar3_triggertime" );
    _unknown_9485();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar1_onlydelta" );
    _unknown_949D();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_takecareofyourgf" );
    _unknown_94B4();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_keatingsays" );
    _unknown_94CB();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_headshot" );
    _unknown_94E2();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_funnyaccent" );
    _unknown_94FA();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar1_crosstraining" );
    _unknown_9511();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_slowmotion" );
    _unknown_9528();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar3_thatisgood" );
    _unknown_953F();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_skimask" );
    _unknown_9557();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_weirdman" );
    _unknown_956E();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_twomanteam" );
    _unknown_9585();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_wifewouldfreak" );
    _unknown_959C();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_howdumb" );
    _unknown_95B4();
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_fightanybody" );
    wait 5;
    thread _unknown_9595();
}

_ID52670( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = undefined;

    while ( !_ID42237::_ID14385( "player_done_with_course" ) )
    {
        var_2 = _ID42407::_ID3339( var_1, 1 );
        _ID42407::_ID41089( var_2 );
        waittillframeend;
    }
}

_ID51395()
{
    _ID42407::_ID17509();
    self._ID30407 = level._ID30895["generic"][self._ID70];
    self.forceplayfootsteps = 1;
    self._ID21930 = "sand";
    thread animscripts\notetracks::_ID11530( "drone_anim", "death" );
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

_ID49584()
{
    level endon( "mission failed" );

    for (;;)
    {
        _ID42237::_ID14413( "player_in_camp" );

        while ( _ID42237::_ID14385( "player_in_camp" ) )
        {
            level._ID794 _ID42237::_ID41098( "begin_firing", "player_not_in_camp" );

            if ( _ID42237::_ID14385( "player_in_camp" ) )
            {
                wait 0.5;
                _unknown_9551();
                _func_034( "ui_deadquote", &"TRAINER_MISSION_FAIL_FIRE_IN_CAMP" );
                _ID42407::_ID23778();
                level notify( "mission failed" );
                continue;
            }

            break;
        }
    }
}

_ID43119()
{
    while ( !_ID42237::_ID14385( "player_has_started_course" ) )
    {
        _ID42237::_ID14413( "player_in_camp" );
        _func_0DB( "cg_gundownanimdelaytime", 250 );
        level._ID794 _meth_813A( 0 );
        level._ID794 _meth_832A( 1 );

        while ( _ID42237::_ID14385( "player_in_camp" ) )
            wait 1;

        _func_0DB( "cg_gundownanimdelaytime", -1 );
        level._ID794 _meth_813A( 1 );
        level._ID794 _meth_832A( 0 );
    }

    level._ID794 _meth_8329();
}

_ID45084()
{
    level endon( "mission failed" );
    var_0 = 0;
    var_1 = _func_1A2( "conversation_orgs", "targetname" );

    for (;;)
    {
        _ID42237::_ID14413( "player_on_bball_court" );

        while ( _ID42237::_ID14385( "player_on_bball_court" ) )
        {
            wait 2;

            if ( _ID42237::_ID14385( "player_on_bball_court" ) )
            {
                if ( var_0 > 2 )
                    var_0 = 0;

                var_2 = _ID42237::_ID16182( level._ID794._ID740, var_1 );
                var_2 _ID42237::_ID27077( level._ID30909["court_nag_0" + var_0] );
                var_0++;
                wait(_func_0BA( 8, 12 ));
                continue;
            }

            break;
        }
    }
}

h2_ambient_ai_animation()
{
    thread _unknown_9B9C();
    _ID42407::_ID17509();
    _ID42259::_ID3111( self, self._ID70 );

    if ( _func_02F( self ) )
        thread _ID42259::_ID3044( self, self._ID922 );
}

h2_on_spawn_scriptedevent()
{
    var_0 = _func_1A2( "h2_training_triotalking", "targetname" );
    var_1 = _func_1A2( "h2_training_ai_ambient", "targetname" );
    var_2 = _ID42407::_ID3317( var_0, var_1 );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4._ID3189 = "generic";
        var_4 _ID42407::_ID3428();
        var_4 _ID42407::_ID1947( ::_unknown_98F7 );
    }

    var_clear_2
    var_clear_0
}

h2_pit_intro_animation()
{
    self endon( "death" );
    thread _unknown_9974();
    var_0 = _func_1A5();
    var_0._ID740 = ( -3546, 1751.26, -60 );

    if ( self._ID922 != "soldier01" )
        _ID42407::_ID17509();

    thread _unknown_9987( var_0 );
    _ID42237::_ID14413( "player_entering_course" );
    var_0 notify( "stop_loop" );
    var_0 thread _ID42259::_ID3044( self, "h2_training_shepherdwatching_" + self._ID922 + "_loop", "stop_loop" );
    _ID42237::_ID14402( "pit_stop_loop" );
    level._ID46102 _ID42407::_ID41135( 0.9, undefined, 1, 60 );
    var_0 notify( "stop_loop" );
    var_0 _ID42259::_ID3111( self, "h2_training_shepherdwatching_" + self._ID922 + "_forward" );
    var_0 _ID42259::_ID3044( self, "h2_training_shepherdwatching_" + self._ID922 + "_Endloop" );
}

h2_handle_pitanim( var_0 )
{
    var_0 _ID42259::_ID3111( self, "h2_training_shepherdwatching_" + self._ID922 + "_walk" );

    if ( !_ID42237::_ID14385( "pit_stop_loop" ) )
        var_0 _ID42259::_ID3044( self, "h2_training_shepherdwatching_" + self._ID922 + "_loop", "stop_loop" );
}

h2_pit_ai_delete()
{
    _ID42237::_ID14413( "player_course_end_03" );
    _ID42407::_ID36519();
    self _meth_80B7();
}

h2_pit_intro()
{
    var_0 = _func_1A2( "shepherd_intro", "targetname" );
    level._ID46102 = _func_1A1( "shepherd", "script_noteworthy" );
    level._ID46102 _ID42407::_ID1947( ::_unknown_76E6 );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID3189 = "generic";
        var_2 _ID42407::_ID3428();
        var_2 _ID42407::_ID1947( ::_unknown_9A44 );
    }

    var_clear_2
    var_clear_0
}

helicopter_dust_ending()
{
    _ID42237::_ID14413( "player_done_with_course" );
    _ID42234::_ID13611( "bumblebee_damage_oil_trainer" );
    _ID42234::_ID13611( "bumblebee_damage_smoke_trainer" );
    _ID42237::_ID14413( "h2_helicopter_ending_exploder" );
    _ID42234::_ID13611( "heli_dust_large_exploder" );
}

h2_tower01_ambient()
{
    _ID42237::_ID14413( "tower_01" );
    thread _ID42411::_ID35200( "f15_takeoff_01" );
}

h2_tower02_ambient()
{
    _ID42237::_ID14413( "tower_02" );
    thread _ID42411::_ID35200( "tower02_vehicles" );
}

cqb_timer_setup()
{
    level.digit_array_tenths = _unknown_9B3D( "tenths_plane" );
    level.digit_array_seconds = _unknown_9B47( "seconds_plane" );
    level.digit_array_tens_of_seconds = _unknown_9B5D( "tens_of_seconds_plane" );
    level.digit_array_minutes = _unknown_9B5A( "minutes_plane" );
    _unknown_9B7C( level.digit_array_seconds );
    _unknown_9B83( level.digit_array_tenths );
    _unknown_9B92( level.digit_array_tens_of_seconds );
    _unknown_9B90( level.digit_array_minutes );
}

cqb_timer_get_planes( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 <= 9; var_2++ )
        var_1[var_2] = _func_1A1( var_0 + "_" + _ID42237::_ID37877( var_2 ), "targetname" );

    return var_1;
}

cqb_timer_get_planes_seconds( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 <= 5; var_2++ )
        var_1[var_2] = _func_1A1( var_0 + "_" + _ID42237::_ID37877( var_2 ), "targetname" );

    return var_1;
}

cqb_digit_reset( var_0 )
{
    for ( var_1 = 1; var_1 <= 9; var_1++ )
        var_0[var_1] _meth_805A();

    var_0[0] _meth_8059();
}

cqb_digit_reset_seconds( var_0 )
{
    for ( var_1 = 1; var_1 <= 5; var_1++ )
        var_0[var_1] _meth_805A();

    var_0[0] _meth_8059();
}

cqb_timer_think()
{
    level endon( "kill_timer" );
    wait 0.1;
    level._ID36040 = _func_03D();
    _unknown_9C28( level.digit_array_seconds );
    _unknown_9C2F( level.digit_array_tenths );
    _unknown_9C3E( level.digit_array_tens_of_seconds );
    _unknown_9C3C( level.digit_array_minutes );
    var_0 = 9;
    var_1 = 9;
    var_2 = 9;
    var_3 = 9;

    for (;;)
    {
        var_4 = _func_03D() - level._ID36040 * 0.001;
        var_5 = _func_0E7( var_4 );
        var_6 = _func_0C1( var_4 - var_5 * 10 );
        var_7 = _func_0C1( _ID42237::_ID648( var_5, 10 ) );
        var_8 = _func_0C1( _ID42237::_ID648( var_5 * 0.1, 6 ) );
        var_9 = _func_0C1( _func_0E7( var_5 * 0.0168 ) );

        if ( var_6 != var_0 )
        {
            var_0 = var_6;
            _unknown_9CEB( var_6, level.digit_array_tenths );
        }

        if ( var_7 != var_1 )
        {
            var_1 = var_7;
            _unknown_9CFA( var_7, level.digit_array_seconds );
        }

        if ( var_8 != var_2 )
        {
            var_2 = var_8;
            _unknown_9D52( var_8, level.digit_array_tens_of_seconds );
        }

        if ( var_9 != var_3 )
        {
            var_3 = var_9;
            _unknown_9D18( var_9, level.digit_array_minutes );
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
    endswitch( 10 )  case 9 loc_9DFE case 8 loc_9DFE case 7 loc_9DFE case 6 loc_9DFE case 5 loc_9DFE case 4 loc_9DFE case 3 loc_9DFE case 2 loc_9DFE case 1 loc_9DFE case 0 loc_9DFE
}

cqb_timer_change_digit_seconds( var_0, var_1 )
{
    switch ( var_0 )
    {

    }

    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    endswitch( 6 )  case 5 loc_9ECF case 4 loc_9ECF case 3 loc_9ECF case 2 loc_9ECF case 1 loc_9ECF case 0 loc_9ECF
}

sand_ground_ending_trainer()
{
    _ID42237::_ID14413( "player_exiting_course_00" );
    _ID42234::_ID13611( "sand_ground_ending_trainer" );
}

h2_weapon_inspect_tutorial()
{
    var_0 = _func_1A1( "pickup_sidearm", "targetname" );

    while ( !_ID42237::_ID14385( "player_inside_course" ) )
    {
        if ( level._ID794 _meth_831F( level._ID53299 ) )
        {
            if ( level._ID794 _ID42237::_ID20583() )
                _unknown_9076( "inspect_weapon" );
            else
                _unknown_9082( "inspect_weapon_pc" );

            break;
        }

        waittillframeend;
    }
}

h2_gate_outro()
{
    var_0 = _func_1A2( "h2_gate_open", "targetname" );
    var_1 = _func_1A2( "h2_gate_close", "targetname" );
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _ID42407::_ID18512();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_done_with_course" );
    var_5 = var_0;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        var_3 _meth_8059();
    }

    var_clear_1
    var_clear_0
    var_7 = var_1;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_8 _ID42407::_ID18512();
    }

    var_clear_2
    var_clear_0
}

h2_sniper_ee()
{
    var_0 = _func_1A1( "h2_target_01_ee", "targetname" );
    var_1 = _func_1A1( "h2_target_02_ee", "targetname" );
    var_2 = _func_1A1( "h2_target_03_ee", "targetname" );
    _ID42237::_ID14400( "sniper_ee_complete" );
    _ID42237::_ID14400( "h2_target_01_ee_dead" );
    _ID42237::_ID14400( "h2_target_02_ee_dead" );
    _ID42237::_ID14400( "h2_target_03_ee_dead" );
    thread _unknown_A086( "h2_sniper_zone_01_ee", var_0 );
    thread _unknown_A08F( "h2_sniper_zone_02_ee", var_1 );
    thread _unknown_A098( "h2_sniper_zone_03_ee", var_2 );
    _ID42237::_ID14414( "h2_target_01_ee_dead", "h2_target_02_ee_dead", "h2_target_03_ee_dead" );
    _ID42237::_ID14402( "sniper_ee_complete" );
    _ID42407::_ID16864( "CLOWN_IN_TRAINING" );
}

h2_clown_sniper_ee( var_0, var_1 )
{
    var_2 = "barrett";

    while ( !_ID42237::_ID14385( "sniper_ee_complete" ) )
    {
        var_1 _meth_805A();
        _ID42237::_ID14413( var_0 );

        if ( level._ID794 _meth_831F( var_2 ) )
        {
            thread _unknown_A111( var_0, var_1 );
            var_1 _meth_82CA( 1 );

            while ( _ID42237::_ID14385( var_0 ) )
            {
                var_1 waittill( "damage",  var_5, var_3, var_3, var_3, var_3, var_3, var_3, var_3, var_4, var_3  );

                if ( _func_1B3( var_4 ) && var_5 == "barrett" )
                {
                    _func_156( level._ID1426["clown_confetti_firework_ee"], var_1._ID740 );
                    _ID42237::_ID14402( var_1._ID1193 + "_dead" );
                    var_1 thread _ID42407::_ID27079( "scn_trainer_clown_hit" );
                    var_1 _meth_80B7();
                    return;
                }
            }

            waittillframeend;
        }

        waittillframeend;
    }
}

h2_hide_show_clown( var_0, var_1 )
{
    var_1 endon( "death" );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        var_1 _meth_8059();
        _ID42237::_ID14426( var_0 );
        var_1 _meth_805A();
    }
}

h2_shootingrange_tank()
{
    var_0 = _func_1A1( "h2_tank_target", "targetname" );

    while ( !_ID42237::_ID14385( "player_entering_course" ) )
    {
        wait(_func_0BA( 8, 10 ));
        self _meth_826C( var_0, _ID42237::_ID28978( -5, 5 ) );
        self _meth_8272();
    }
}

h2_end_collision()
{
    var_0 = _func_1A2( "h2_end_collision", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_82C9();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_done_with_course" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _meth_82C8();
    }

    var_clear_1
    var_clear_0
}

h2_intro_gundown()
{
    while ( !_ID42237::_ID14385( "training_intro_end_anims" ) )
    {
        if ( _ID42237::_ID14385( "h2_intro_gundown" ) || _ID42237::_ID14385( "h2_intro_gundown2" ) || _ID42237::_ID14385( "h2_intro_gundown3" ) || _ID42237::_ID14385( "h2_intro_gundown4" ) )
            _func_0DB( "cg_gundownanimdelaytime", 50 );
        else
            _func_0DB( "cg_gundownanimdelaytime", -1 );

        waittillframeend;
    }
}
#using_animtree("script_model");

h2_ac130_animation()
{
    var_0 = _func_1A1( "h2_ac130", "targetname" );
    var_0._ID3189 = "ac130";
    var_0 _ID42407::_ID3428();
    var_1 = _func_1A5();
    var_1._ID740 = ( -7350, -5440, 8 );
    var_1 _ID42259::_ID3018( var_0, "ac130_intro" );
    var_0 _meth_8155( %h2_training_ac130_intro_rotors );
    _ID42237::_ID14413( "tower_02" );
    var_0 _meth_807C( "scn_trainer_tower_ac130_lp" );
    var_1 _ID42259::_ID3111( var_0, "ac130_intro", undefined, undefined, undefined, undefined, 0 );
}

h2_hide_staticdmodelgroup( var_0, var_1, var_2 )
{
    if ( _func_02F( var_2 ) && var_2 )
        _func_31B( var_1 );
    else
        _func_31C( var_1 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );

        if ( _func_02F( var_2 ) && var_2 )
            _func_31C( var_1 );
        else
            _func_31B( var_1 );

        _ID42237::_ID14426( var_0 );

        if ( _func_02F( var_2 ) && var_2 )
        {
            _func_31B( var_1 );
            continue;
        }

        _func_31C( var_1 );
    }
}

windstock_animations()
{
    var_0 = _func_1A2( "windstock_animated", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID3428( "windstock" );
        var_2 thread _ID42259::_ID3044( var_2, "windstock_animated_fast" );
    }

    var_clear_2
    var_clear_0
}

h2_basketball_guys_headswap()
{
    _ID42226::_ID32651( self._ID31388 );
}

h2_pit_ai_animation()
{
    self._ID3189 = "generic";
    _ID45995::_ID48826( "head", level._ID794, 2000, 85, 66, 0, 30, 0, 0 );

    if ( self._ID70 == "oilrig_balcony_smoke_idle" )
    {
        var_0 = _func_06A( "script_origin", self._ID740 );
        var_0._ID65 = self._ID65;
        var_0 _ID42259::_ID3044( self, self._ID70 );
    }
    else
        _ID42259::_ID3044( self, self._ID70 );
}

h2_loddistscale_outro()
{
    _ID42237::_ID14413( "player_done_with_course" );
    _func_0DB( "r_lodFOVFixedScale", 2 );
}

h2_tessellation_pit()
{
    _ID42237::_ID14413( "player_inside_course" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "displacement" ) )
            _ID42407::_ID1601( "r_tessellation", 0 );
        else
            _ID42407::_ID1601( "r_tessellation", 1 );

        waittillframeend;
    }
}

h2_hide_ai_pit()
{
    self endon( "death" );
    _ID42237::_ID14413( "h2_hide_ai_pit" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "h2_hide_ai_pit" ) )
            self _meth_805A();

        if ( !_ID42237::_ID14385( "h2_hide_ai_pit" ) )
            self _meth_8059();

        wait 1;
    }
}

init_scope_fov_setup()
{
    _ID42237::_ID14413( "player_course_stairs2" );
    _func_0DB( "r_lodFOVScaleOverride", 1 );
    _func_0DB( "r_lodFOVScaleOverrideStartMaxAngle", 65 );
    _func_0DB( "r_lodFOVScaleOverrideStartMinAngle", 55 );
    _func_0DB( "r_lodFOVScaleOverrideStopMaxAngle", 15 );
    _func_0DB( "r_lodFOVScaleOverrideStopMinAngle", 0 );
    _func_0DB( "r_lodFOVScaleOverrideAmount", 0.75 );
}

_ID22796()
{
    var_0 = self._ID669;

    if ( !_func_02F( level._ID40116[var_0] ) )
        return;

    self endon( "death" );

    for (;;)
    {
        self waittill( "weapon_fired" );

        if ( _func_0F5( level._ID794._ID740, self._ID740 ) > 1690000 )
            continue;

        _func_157( level._ID1426["abrams_deck_dust_trainer"], self, "tag_engine_exhaust" );
        var_1 = self _meth_818C( "tag_flash" );
        var_2 = _func_091( var_1, var_1 + ( 0, 0, -128 ) );
        _func_184( var_2, 192, 100, 1 );
    }
}

h2_force_body_for_trainees()
{
    switch ( self._ID70 )
    {

    }

    case "training_intro_soldier7":
    case "training_intro_soldier6":
    case "training_intro_soldier4":
    case "training_intro_soldier3":
    case "training_intro_soldier2":
    case "training_intro_soldier1":
}
