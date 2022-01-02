// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\trainer_mission_select_cam::_ID50320();
        return;
    }

    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
    {
        maps\trainer_beautiful_corner::_ID50786();
        return;
    }

    _ID28333();
    _ID42323::main();
    _ID28284();
    thread helicopter_dust_ending();
    thread sand_ground_ending_trainer();
    thread h2_gate_outro();
    thread h2_sniper_ee();
    thread h2_end_collision();
    thread h2_intro_gundown();
    thread h2_ac130_animation();
    level._ID43135.greenberet_disabled = 1;
    setsaveddvar( "fx_cast_shadow", 0 );
    setsaveddvar( "ai_perf_disableStairsSteepMetrics", "1" );
    thread h2_hide_staticdmodelgroup( "h2_hidestaticmodelgroup_2", 2, 1 );
    thread h2_hide_staticdmodelgroup( "h2_showstaticmodelgroup_3", 3 );
    thread h2_hide_staticdmodelgroup( "h2_hidestaticmodelgroup_4", 4, 1 );
    thread h2_hide_staticdmodelgroup( "h2_hidestaticmodelgroup_1", 1, 1 );
    thread h2_loddistscale_outro();
    thread h2_tessellation_pit();
    level._ID22796 = ::_ID22796;
}

_ID28333()
{
    _ID42407::_ID32246();

    if ( level._ID8534 )
        level._ID54024 = 1.6;
    else
        level._ID54024 = 1.2;

    setdynamicdvar( "trainer_debug", "0" );
    level._ID52222 = 0;
    level._ID46977 = 0;
    level._ID52821 = 0;
    level._ID47018 = 1.5;
    level._ID12029 = ::_ID46754;
    level._ID35278 = ::_ID53576;
    level._ID48204 = getdvar( "objectiveAlpha" );
    level._ID54359 = 0;
    setsaveddvar( "ui_hideGrenadeWidget", 1 );
    precachestring( &"MENU_TYPE_INVERT_AXIS" );
    precachestring( &"MENU_TYPE_INVERT_AXIS_CONFIRM" );
    precachestring( &"difficulty_selection_menu" );
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
    level.color["white"] = ( 1, 1, 1 );
    level.color["red"] = ( 1, 0, 0 );
    level.color["blue"] = ( 0.1, 0.3, 1 );
    _ID42407::_ID1951( "timed_ads", ::_ID46874, "timed_ads" );
    _ID42407::_ID1951( "bullet_penetration", ::_ID54211, "bullet_penetration" );
    _ID42407::_ID1951( "frag", ::_ID51053, "frag" );
    _ID42407::_ID1951( "pit", ::_ID49366, "pit" );
    _ID42407::_ID1951( "course", ::_ID52784, "course" );
    _ID42407::_ID1951( "end", ::_ID45346, "end" );

    if ( _ID42407::_ID20614() )
    {
        _ID42407::_ID1951( "so_killspree_trainer_start_map", level._ID47350 );
        _ID42407::_ID10126( level._ID47350 );
    }
    else
    {
        _ID42237::_ID3294( getentarray( "so_gate", "targetname" ), ::delete );
        _ID42407::_ID10126( ::_ID47474 );
        var_0 = getent( "pit", "targetname" );
    }

    _ID43982();
    _ID47043::main();
    maps\ssdd_lighting::main();
    _ID47110::main();
    _ID44965::main();
    _ID49556::main();
    _ID42287::init();
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
        maps\so_killspree_trainer_aud::main();
    else
        maps\trainer_aud::main();

    maps\trainer_anim::main();
    _ID49693();
    level._ID50259 = [];
    level._ID46855 = [];
    level._ID45118 = [];
    level._ID47989 = [];
    level._ID50144 = getent( "plywood", "script_noteworthy" );
    level._ID50144 rotateroll( -90, 0.25, 0.1, 0.1 );
    level._ID48264 = gettime();
    level._ID52787 = getentarray( "target_rail_start_point", "targetname" );
    var_0 = getentarray( "target_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID54524 );
    var_1 = getentarray( "target_enemy", "script_noteworthy" );
    var_2 = getentarray( "target_friendly", "script_noteworthy" );
    level.target_ents = [];
    _ID42237::_ID3350( var_2, ::_ID46914, "friendly" );
    _ID42237::_ID3350( var_1, ::_ID46914, "enemy" );
    level._ID52991 = 0;
    level._ID44713 = 0;
    var_3 = getentarray( "target_enemy", "script_noteworthy" );
    var_4 = getentarray( "target_friendly", "script_noteworthy" );
    level._ID37340 = _ID42407::_ID3317( var_3, var_4 );
    level._ID35356 = getentarray( "speakers", "targetname" );
    level._ID51928 = 0;
    level._ID43062 = "m4_grunt_SSDD";
    level._ID48180 = 30;
    level._ID53299 = "deserteagle";
    var_5 = getentarray( "pit_weapons", "targetname" );
    _ID42237::_ID3350( var_5, ::_ID53265 );
    level._ID8760 = [];
    level._ID8760["45"] = cos( 45 );
    level._ID8760["90"] = cos( 90 );
    var_6 = _ID42411::_ID49705();
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_ID47372 );
    _ID42237::_ID3350( getentarray( "ai_ambient", "script_noteworthy" ), _ID42407::_ID1947, ::_ID53409 );
    _ID42237::_ID3350( getentarray( "ai_shooter", "script_noteworthy" ), _ID42407::_ID1947, ::ai_ambient_shooter_think );
    _ID42407::_ID3343( "patrol", ::_ID49547 );
    _ID42407::_ID3343( "runners", ::_ID51395 );
    _ID42237::_ID3350( getentarray( "friendlies_basketball", "targetname" ), _ID42407::_ID1947, ::h2_basketball_guys_headswap );
    _ID42237::_ID3350( getentarray( "h2_tank_shootingrange", "targetname" ), _ID42407::_ID1947, ::h2_shootingrange_tank );
    _ID42237::_ID3350( getentarray( "h2_pit_ai", "targetname" ), _ID42407::_ID1947, ::h2_pit_ai_animation );
    _ID42237::_ID3350( getentarray( "trainees", "targetname" ), _ID42407::_ID1947, ::h2_hide_ai_pit );
    getent( "trainee_01", "script_noteworthy" ) thread _ID42407::_ID1947( ::h2_hide_ai_pit );
    level._ID388 = _ID42407::_ID35168( "foley", 1 );
    level._ID388._ID3189 = "foley";
    level._ID388._ID3190 = spawn( "script_origin", ( -2512.5, 5138.8, -56.1 ) );
    level._ID388._ID3190.angles = ( 0, -90, 180 );
    level.grenade_box = getent( "grenade_box", "targetname" );
    level.grenade_box _ID42407::_ID3428( "grenade_box" );
    level._ID46416 = _ID42407::_ID3311( getentarray( "frags", "script_noteworthy" ) );

    foreach ( var_8 in level._ID46416 )
        var_8 linkto( level.grenade_box, "J_Box" );

    level.anim_frags = [ level._ID46416[8], level._ID46416[12], level._ID46416[11] ];

    for ( var_10 = 0; var_10 < level.anim_frags.size; var_10++ )
        level.anim_frags[var_10] _ID42407::_ID3428( "grenade" + ( var_10 + 1 ) );

    level.foley_frag = level.anim_frags[2];
    level.player_additional_frag = level._ID46416[10];
    level.grenadeanimnode = level._ID388._ID3190;
    level.grenadeanimnode _ID42259::_ID3018( level.grenade_box, "training_intro_talk7" );
    level._ID388 _ID42407::_ID14803( "m4_grunt_SSDD", "primary" );
    level._ID54412 = spawn( "script_origin", ( 0, 0, 0 ) );
    level._ID54412.origin = level._ID388._ID3190.origin;
    level._ID54412.angles = level._ID388._ID3190.angles;
    level._ID54244 = spawn( "script_origin", ( 0, 0, 0 ) );
    level._ID54244.origin = level._ID388._ID3190.origin;
    level._ID54244.angles = level._ID388._ID3190.angles;
    _ID50423();
    level._ID46577 = getent( "pit_case_01", "targetname" );
    level._ID51674 = getent( "pit_case_02", "targetname" );
    level._ID46577._ID3189 = "training_case_01";
    level._ID51674._ID3189 = "training_case_02";
    level._ID46577 _ID42407::_ID3428();
    level._ID51674 _ID42407::_ID3428();
    level._ID49518 = [];
    level._ID49518[0] = level._ID46577;
    level._ID49518[1] = level._ID51674;
    level._ID50840 = _ID42407::_ID3339( getentarray( "trainees", "targetname" ), 1 );
    level._ID52085 = _ID42407::_ID35150( "translator", 1 );
    level._ID52085 _ID42407::_ID17509();
    level._ID52085._ID3189 = "translator";
    level._ID54742 = _ID42407::_ID35150( "trainee_01", 1 );
    level._ID54742 _ID42226::_ID32651( "head_trn_arab_g" );
    level._ID54742 setmodel( "body_ally_arab_trn_smg_a" );
    level._ID54742._ID3189 = "trainee_01";
    level._ID54742 _ID42407::_ID17509();
    level._ID54742 _ID42407::_ID14803( "m4_grunt_SSDD", "primary" );
    level._ID54244 thread _ID42259::_ID3018( level._ID52085, "training_intro_begining" );
    level._ID52085 _ID45995::_ID48826( "head", level.player, 300, 90, 90, 30, 45, 0, 1, 10, 0 );
    level._ID54412 thread _ID42259::_ID3044( level._ID54742, "training_intro_idle", "stop_firing_range_anim" );
    _ID42237::_ID3350( level._ID50840, ::firing_range_generic_trainees_anims );
    level._ID388._ID3190 thread _ID42259::_ID3018( level._ID388, "training_intro_begining" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    level._ID51435 = 1;
    level._ID25349 = [];
    _ID51117();
    level._ID52735 = [];
    level._ID52735[0] = level._ID388;
    level._ID52735[1] = level._ID52085;
    level._ID52735[2] = level._ID54742;
    level._ID52735 = _ID42407::_ID3317( level._ID52735, level._ID50840 );
    level._ID53991 = _ID54344( "gate_cqb_enter" );
    level._ID52018 = _ID54344( "gate_cqb_exit" );
    level._ID50961 = _ID54344( "gate_cqb_enter_main" );
    level._ID50961._ID48191 = -170;
    level._ID50961._ID43865 = 170;
    level._ID52018._ID48191 = -95;
    level._ID52018._ID43865 = 95;

    if ( !_ID42407::_ID20614() )
    {
        level._ID50961 thread _ID11599();
        level.player takeallweapons();
    }

    if ( !_ID42407::_ID20614() )
    {
        level._ID53232 = _ID42407::_ID3339( getentarray( "friendlies_ambient", "targetname" ), 1 );
        thread _ID45711();
        level._ID50566 = _ID42407::_ID3339( getentarray( "friendlies_basketball", "targetname" ), 1 );
        thread _ID52670( "runner_group_01" );
        thread _ID52670( "runner_group_02" );
        thread _ID46745();
    }

    thread _ID24574();
    var_11 = getentarray( "laatpv_gate", "targetname" );

    foreach ( var_13 in var_11 )
        var_13 hide();

    var_15 = getentarray( "dummies", "targetname" );
    _ID42237::_ID3294( var_15, ::delete );
    level._ID53419 = getent( "firing_range_area", "targetname" );
    thread _ID54730();
    thread _ID49584();
    thread _ID43119();
    thread _ID45084();
    level.player thread _ID48335();
    thread windstock_animations();
    thread init_scope_fov_setup();
}

precognitive_paranoia_think()
{
    thread precognitive_paranoia_watch_death();
    thread precognitive_paranoia_watch_damage();
}

precognitive_paranoia_watch_death()
{
    self waittill( "death",  var_0  );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
    {
        _ID42407::_ID16864( "PRECOGNITIVE_PARANOIA" );
        setdvar( "ui_deadquote", &"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN" );
        _ID42407::_ID23778();
    }
}

precognitive_paranoia_watch_damage()
{
    self endon( "death" );
    var_0 = 0;

    for (;;)
    {
        self waittill( "damage",  var_1, var_2  );

        if ( isdefined( var_2 ) && isplayernumber( var_2 ) )
        {
            var_0 += var_1;

            if ( var_0 >= 150 )
            {
                if ( _ID42407::_ID20537() )
                    _ID42407::_ID39502();

                if ( isdefined( self._ID22746 ) && self._ID22746 == 1 )
                    _ID42407::_ID36519();

                self stopanimscripted();
                self startragdoll();
                self kill( self.origin, level.player );
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
        level.player waittill( "reload_start" );

        if ( _ID42237::_ID14385( "player_inside_course" ) )
            break;

        var_0 = self getcurrentweapon();

        if ( level.player getweaponammostock( var_0 ) < 100 )
            level.player setweaponammostock( var_0, 9999 );
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
    thread _ID45999();
    _ID42475::_ID34575( "start_timed_ads_checkpoint" );
}

_ID46468()
{

}

_ID46874()
{
    maps\ssdd_lighting::_ID43713( "timed_ads" );
    _ID42475::_ID34575( "start_timed_ads_checkpoint" );
    _ID43121();
    thread _ID49618();
    _ID42237::_ID14402( "firing_range_hip_and_ads_done" );
    _ID42237::_ID14402( "foley_done_talking_from_hip_ads_training" );
    _ID42407::_ID10226( 3, ::_ID45300 );
    thread firing_range_player_pick_up_gun();
}

_ID54211()
{
    maps\ssdd_lighting::_ID43713( "bullet_penetration" );
    _ID42475::_ID34575( "start_bullet_penetration_checkpoint" );
    _ID43121();
    thread _ID49618();
    _ID42237::_ID14402( "firing_range_timed_ads_done" );
    _ID42237::_ID14402( "foley_done_talking_from_timed_ads_training" );
    thread _ID44307();
    thread firing_range_player_pick_up_gun();
}

_ID51053()
{
    maps\ssdd_lighting::_ID43713( "frag" );
    _ID42475::_ID34575( "start_frag_checkpoint" );
    _ID43121();
    thread _ID49618();
    _ID42237::_ID14402( "firing_range_penetration_done" );
    _ID42237::_ID14402( "foley_done_talking_from_penetration_training" );
    thread _ID51152();
    thread firing_range_player_pick_up_gun();
}

_ID49366()
{
    maps\ssdd_lighting::_ID43713( "pit" );
    _ID42475::_ID34575( "start_pit_checkpoint" );
    _ID42237::_ID14402( "foley_done_talking_from_frag_training" );
    _ID42237::_ID14402( "firing_range_frags_done" );
    level.player giveweapon( level._ID43062 );
    level.player switchtoweapon( level._ID43062 );
    var_0 = getent( "pit_start", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    thread _ID46673();
}

_ID52784()
{
    maps\ssdd_lighting::_ID43713( "course" );
    _ID42475::_ID34575( "start_course_checkpoint" );
    _ID42237::_ID14402( "dunn_finished_welcome_anim" );
    level.pitanimnode = spawnstruct();
    level.pitanimnode.origin = ( -3568, 2280, -192 );
    level.pitanimnode.angles = ( 0, -90, 0 );
    level.player giveweapon( level._ID53299 );
    level.player giveweapon( level._ID43062 );
    level.player switchtoweapon( level._ID43062 );
    var_0 = getent( "course_start_pit", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    thread _ID50489();
    _ID42407::_ID40561( "trainer_pit", 0 );
}

_ID45346()
{
    maps\ssdd_lighting::_ID43713( "end" );
    _ID42475::_ID34575( "start_end_checkpoint" );
    level.player giveweapon( level._ID53299 );
    level.player giveweapon( level._ID43062 );
    level.player switchtoweapon( level._ID43062 );
    var_0 = getent( "course_leave", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    _ID48422( "obj_course", &"TRAINER_OBJ_EXIT_THE_PIT", getent( "course_start", "targetname" ) );
    _ID51143( "obj_course", "current" );
    thread _ID45936();
    _ID42407::_ID40561( "trainer_pit", 0 );
}

_ID24574()
{
    var_0 = getent( "radio_org", "targetname" );

    for (;;)
    {
        var_0 playsound( "mus_training_radio_music_01", "done" );
        var_0 waittill( "done" );
        wait 1;
        var_0 playsound( "mus_training_radio_music_02", "done" );
        var_0 waittill( "done" );
        wait 1;
        var_0 playsound( "mus_training_radio_music_03", "done" );
        var_0 waittill( "done" );
        wait 1;
        var_0 playsound( "mus_training_radio_music_04", "done" );
        var_0 waittill( "done" );
        wait 1;
    }
}

_ID46745()
{
    var_0 = _ID42411::_ID35200( "heli_group_01" );
    thread maps\trainer_aud::aud_handle_veh_group( var_0, "pavelow", 1 );
    thread h2_tower01_ambient();
}

_ID45999()
{
    thread _ID49618();
    _ID42237::_ID14413( "start_anims" );
    thread _ID45771();
    _ID42237::_ID14413( "firing_range_hip_and_ads_done" );
    thread _ID45300();
}

_ID49618()
{
    setsaveddvar( "g_friendlyNameDist", 196 );
    level.player disableweaponpickup();
    level.player takeallweapons();
    var_0 = getent( "player_start_range", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getent( "ads_target_trigger_middle", "targetname" );
    var_2 = getent( "ads_target_trigger_front", "targetname" );
    var_3 = getent( "ads_target_trigger_rear", "targetname" );
    var_4 = getent( "timed_ads_target_trigger", "targetname" );
    var_1 thread _ID54524();
    var_2 thread _ID54524();
    var_3 thread _ID54524();
    var_4 thread _ID54524();
    level._ID50634 = var_2._ID37340;
    level._ID48544 = var_1._ID37340;
    level._ID53608 = var_4._ID37340;
    level._ID47786 = var_4._ID37340;
    level._ID388 _ID45995::_ID48826( "upperbody", level.player, undefined, undefined, undefined, undefined, undefined, 1, 1 );
    _ID42237::_ID14402( "firing_range_initialized" );
    _ID42237::_ID14413( "obj_go_to_the_pit_given" );
    setsaveddvar( "g_friendlyNameDist", 15000 );
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
    if ( !isdefined( self._ID70 ) )
        return;

    h2_force_body_for_trainees();

    if ( isdefined( self.script_noteworthy ) )
        _ID42226::_ID32651( self.script_noteworthy );

    var_0 = self._ID70 + "_idle";

    if ( _ID3012( var_0, "generic" ) )
        level._ID54412 thread _ID42259::_ID3025( self, var_0, "stop_firing_range_anim" );

    _ID42237::_ID14413( "training_intro_trainees_pre_end_idle" );
    var_1 = self._ID70 + "_pre_end_idle";

    if ( _ID3012( var_1, "generic" ) )
        level._ID54412 thread _ID42259::_ID3025( self, var_1, "stop_firing_range_anim" );

    _ID42237::_ID14413( "training_intro_end_anims" );
    var_2 = self._ID70 + "_end";

    if ( _ID3012( var_2, "generic" ) )
        level._ID54412 _ID42259::_ID3020( self, var_2, "stop_firing_range_anim" );

    var_3 = self._ID70 + "_end_idle";

    if ( _ID3012( var_3, "generic" ) )
        level._ID54412 thread _ID42259::_ID3025( self, var_3, "stop_firing_range_anim" );
}

firing_range_player_pick_up_gun()
{
    var_0 = getent( "pickup_rifle", "targetname" );
    var_1 = spawn( "script_model", var_0.origin );
    var_1 setmodel( var_0.model );
    var_1 _ID42407::_ID3428( "intro_gun" );
    var_1 hide();
    level.player enableweaponpickup();
    firing_range_player_pick_up_items( [ var_1 ], "training_intro_gunpickup", var_0 );
    var_1 delete();
}

firing_range_player_pick_up_grenades()
{
    _ID42237::_ID14402( "h2_player_picking_up_frags" );
    firing_range_player_pick_up_items( level.anim_frags, "training_intro_grenadepickup" );
    level.player givemaxammo( level.player getoffhandprimaryclass() );
    level.player playsound( "grenade_pickup" );

    foreach ( var_1 in level.anim_frags )
    {
        var_1 hide();
        var_1._ID18497 = 1;
    }

    _ID42237::_ID3350( level.anim_frags, _ID42259::_ID3090, "training_intro_grenadepickup", 0.0 );
    waittillframeend;
    _ID42237::_ID3294( level.anim_frags, ::stopanimscripted );
    thread _ID46261( level.anim_frags, 3.0 );

    if ( level.player_additional_frag._ID18497 )
        thread _ID46261( [ level.player_additional_frag ], 3.0 );

    _ID42237::_ID14388( "h2_player_picking_up_frags" );
}

firing_range_player_pick_up_additional_grenade( var_0 )
{
    level.player_additional_frag hide();
    level.player_additional_frag._ID18497 = 1;
}

firing_range_player_pick_up_items( var_0, var_1, var_2 )
{
    var_3 = level._ID388._ID3190;
    var_4 = _ID42407::_ID35028( "worldbody" );
    var_4 hide();
    var_3 _ID42259::_ID3038( var_4, var_1 );
    var_5 = var_4 gettagorigin( "tag_player" );
    var_6 = var_0;
    var_6[var_6.size] = var_4;
    var_3 _ID42259::_ID3016( var_6, var_1 );

    if ( isdefined( var_2 ) )
        var_2 waittill( "trigger" );

    _ID42237::_ID3294( var_0, ::show );
    level.player disableweapons();
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    var_7 = spawn( "script_origin", level.player.origin );
    var_7.angles = level.player getplayerangles();
    level.player playerlinkto( var_7, undefined, 1.0, 0.0, 0.0, 0.0, 0.0 );
    var_8 = level.player _ID42259::_ID53505( var_4, 50.0, 180.0, 0.35, 0.7 );
    var_7 moveto( var_4 gettagorigin( "tag_camera" ) - ( 0, 0, 60 ), var_8, var_8 * 0.2, var_8 * 0.2 );
    var_7 rotateto( var_4 gettagangles( "tag_camera" ), var_8, var_8 * 0.2, var_8 * 0.2 );
    wait(var_8);
    level.player playerlinktodelta( var_4, "tag_player", 1.0, 0.0, 0.0, 0.0, 0.0, 1 );
    var_4 _ID42237::_ID10192( 0.3, ::show );

    if ( var_1 == "training_intro_gunpickup" )
        thread h2_trainer_pickuprifle_cinematic();
    else if ( var_1 == "training_intro_grenadepickup" )
        thread h2_trainer_pickupgrenade_cinematic();

    var_3 thread _ID42259::_ID3099( var_6, var_1 );
    var_8 = 0.5;
    var_9 = var_4 _ID42407::_ID16120( var_1 );
    wait(getanimlength( var_9 ) - var_8);
    var_10 = playerphysicstrace( var_5 + ( 0, 0, 40 ), var_5 - ( 0, 0, 40 ) );
    var_11 = spawn( "script_origin", var_3.origin + var_10 - var_5 );
    var_11.angles = var_3.angles;
    var_4 _ID42259::_ID46811( undefined, var_3, var_11, var_8 );
    level.player unlink();
    var_7 delete();
    var_4 delete();
    level.player enableweapons();
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
}

h2_trainer_pickuprifle_cinematic()
{
    var_0 = _ID54167::_ID43386( "pickup_rifle_cin" );
    var_0 _ID54167::_ID48800( 0.6 ) _ID54167::_ID47198( 0.2, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( 0.2, 0.8, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48166();
}

h2_trainer_pickupgrenade_cinematic()
{
    var_0 = _ID54167::_ID43386( "pickup_grenades_cin" );
    var_0 _ID54167::_ID48800( 0.7 ) _ID54167::_ID47198( 0.14, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.1 ) _ID54167::_ID47198( 0.14, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID53770()
{
    level._ID54244 thread firing_range_anim_then_idle( level._ID52085, "training_intro_begining", "training_intro_idle2" );
    level._ID388._ID3190 firing_range_anim_then_idle( level._ID388, "training_intro_begining", "training_intro_idle3" );
    _ID42237::_ID14413( "hip_fire_done" );
    level._ID54244 thread firing_range_anim_then_idle( level._ID52085, "training_intro_talk2", "training_intro_idle" );
    level._ID388._ID3190 firing_range_anim_then_idle( level._ID388, "training_intro_talk2", "training_intro_idle2" );
    _ID42237::_ID14413( "firing_range_hip_and_ads_done" );
    level._ID54244 thread firing_range_anim_then_idle( level._ID52085, "training_intro_talk3", "training_intro_idle" );
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
    thread _ID53770();
    _ID42237::_ID14413( "ps_train_fly_welcome" );
    _ID42475::_ID34575( "aud_start_mix_practice_range" );
    _ID42237::_ID14413( "foley_anim_pickup_weapon" );
    thread firing_range_player_pick_up_gun();

    if ( !_ID54175() )
    {
        _ID48422( "obj_rifle", &"TRAINER_PICK_UP_A_RIFLE_FROM", getent( "range_rifle", "script_noteworthy" ) );
        _ID51143( "obj_rifle", "current" );
        var_1 = getent( "pickup_rifle", "targetname" );

        if ( isdefined( var_1 ) )
            var_1 _ID42407::_ID16953( "h2_weapon_m4_grunt_obj" );

        level._ID388 thread _ID53853( "nag_rifle_pickup_0", 2, "player_picked_up_rifle" );
    }
    else
        var_0 = 0;

    while ( !_ID54175() )
        wait 0.05;

    _ID42237::_ID14402( "player_picked_up_rifle" );
    _ID42407::ui_set_waypoint_center_fade_settings( 2000, 0, 0 );

    if ( var_0 == 0 )
    {
        _ID48422( "obj_rifle", &"TRAINER_SHOOT_EACH_TARGET_WHILE1", getent( "firing_range", "targetname" ) );
        _ID51143( "obj_rifle", "current" );
    }
    else
    {
        _ID45810( "obj_rifle", &"TRAINER_SHOOT_EACH_TARGET_WHILE1" );
        _ID54163( "obj_rifle", getent( "firing_range", "targetname" ) );
    }

    _ID42407::_ID1985( _ID42407::_ID1687, 2.0 );
    _ID42407::_ID1841( _ID42237::_ID14413, "player_facing_targets_for_hip_fire" );
    level._ID388 _ID42407::_ID1890( _ID42407::_ID10805, "train_fly_turnaround" );
    thread _ID42407::_ID11231();
    thread _ID42407::_ID10226( 8, ::_ID49630, "player_facing_targets_for_hip_fire" );

    while ( !_ID42237::_ID41802( level.player.origin, level.player getplayerangles(), level._ID53419.origin, level._ID8760["45"] ) )
        wait 0.05;

    _ID42237::_ID14402( "player_facing_targets_for_hip_fire" );
    _ID7873();
    level._ID388 thread _ID51471( "nag_hip_fire_0", 2, "player_needs_to_fire_from_the_hip", "hip_fire_done" );

    if ( level._ID1333 )
        thread _ID52947( "hip_attack", undefined );
    else
        thread _ID52947( "pc_hip_attack", undefined );

    var_2 = 2;
    var_3 = 0;
    _ID50635( level._ID45118, var_2, var_3, undefined, undefined, 1 );
    level.player notify( "did_action_stop_ads" );
    _ID7873();
    var_4 = undefined;

    if ( level.player _ID42237::_ID20583() )
        thread _ID52947( "look_inversion", 5 );
    else
        thread _ID52947( "look_inversion_pc", 5 );

    _ID42475::_ID34575( "aud_start_mix_info_popup" );
    _ID51143( "obj_rifle", "done" );
    _ID42237::_ID14402( "hip_fire_done" );
    level._ID388 waittill( "train_fly_pickyourtargets" );
    thread _ID42407::_ID4422( "ads_training" );
    level._ID388 waittill( "train_fly_crouchfirst" );
    _ID51143( "obj_rifle", "current" );
    thread _ID45810( "obj_rifle", &"TRAINER_SHOOT_EACH_TARGET_WHILE" );
    var_2 = 3;
    var_3 = 1;
    var_5 = 1;

    if ( level.player getstance() != "crouch" )
        thread _ID52947( "crouch" );

    level._ID388 thread _ID51471( "nag_ads_fire_0", 2, "player_needs_to_ADS", "firing_range_hip_and_ads_done" );
    level._ID388 thread _ID51471( "nag_crouch_fire_0", 2, "player_needs_to_crouch", "firing_range_hip_and_ads_done" );
    _ID50635( level._ID50634, var_2, var_3, var_5 );
    level.player notify( "did_action_crouch" );
    level.player notify( "did_action_ads_360" );
    level.player notify( "did_action_ads" );
    _ID7873();
    _ID51143( "obj_rifle", "done" );
    _ID42237::_ID14402( "firing_range_hip_and_ads_done" );

    if ( level.player getstance() != "stand" )
        thread _ID52947( "stand" );
}

_ID49630( var_0 )
{
    level endon( var_0 );

    if ( !_ID42237::_ID14385( var_0 ) )
        thread _ID46722( &"TRAINER_HINT_TURN_AROUND" );
}

_ID53853( var_0, var_1, var_2 )
{
    thread _ID52899( var_2 );
    level endon( var_2 );

    while ( !_ID42237::_ID14385( var_2 ) )
    {
        wait(randomfloatrange( 25, 35 ));
        var_3 = 1;

        if ( _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID10760( var_0 + var_3, undefined, 1 );
            _ID42237::_ID14402( "can_talk" );
            var_3++;

            if ( var_3 > var_1 )
                var_3 = 1;
        }
    }
}

_ID51471( var_0, var_1, var_2, var_3 )
{
    thread _ID52899( var_3 );
    level endon( var_3 );
    var_4 = 1;

    while ( !_ID42237::_ID14385( var_3 ) )
    {
        level waittill( var_2 );

        if ( _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID10760( var_0 + var_4, undefined, 1 );
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

    if ( isdefined( var_5 ) )
    {
        var_7 = [];

        while ( var_7.size < var_0.size )
        {
            wait 0.05;

            foreach ( var_9 in var_0 )
            {
                if ( var_9._ID31245 == var_7.size )
                    var_7[var_7.size] = var_9;
            }
        }

        var_0 = var_7;
    }

    for (;;)
    {
        wait 0.05;

        if ( var_6 >= var_1 )
            break;

        foreach ( var_9 in var_0 )
        {
            if ( var_6 >= var_1 )
                break;

            var_9 notify( "pop_up" );
            var_9 waittill( "hit" );

            if ( isdefined( var_3 ) )
            {
                if ( level.player getstance() == "crouch" )
                    level.player notify( "did_action_crouch" );
                else
                {
                    thread _ID52947( "crouch" );
                    level notify( "player_needs_to_crouch" );
                    continue;
                }
            }

            if ( isdefined( var_2 ) )
            {
                if ( var_2 == 0 )
                {
                    if ( !level.player _ID42407::_ID20652() )
                    {
                        var_6++;
                        level.player notify( "did_action_stop_ads" );
                    }
                    else
                    {
                        thread _ID52947( "stop_ads", undefined, 1 );
                        level notify( "player_needs_to_fire_from_the_hip" );
                    }
                }

                if ( var_2 == 1 )
                {
                    if ( level.player _ID42407::_ID20652() )
                    {
                        var_6++;
                        level.player notify( "did_action_ads" );
                        level.player notify( "did_action_ads_360" );
                    }
                    else
                    {
                        if ( level._ID1333 )
                            thread _ID52947( "ads_360" );
                        else
                            thread _ID52947( "ads" );

                        level notify( "player_needs_to_ADS" );
                    }
                }
            }

            if ( isdefined( var_4 ) )
            {
                waitframe;
                var_12 = gettime();

                if ( level._ID48264 == var_12 )
                {
                    var_6++;
                    _ID7873();
                    continue;
                }

                _ID7873();
                level notify( "player_needs_to_shoot_through_plywood" );
                continue;
            }
        }
    }

    _ID42237::_ID3350( var_0, ::_ID53706 );
}

_ID45300()
{
    var_0 = level.player getlocalplayerprofiledata( "autoAim" );

    if ( !var_0 || !level.player _ID42237::_ID20583() )
    {
        level._ID54359 = 1;
        _ID42237::_ID14402( "firing_range_timed_ads_done" );
        _ID42237::_ID14402( "foley_done_talking_from_timed_ads_training" );
        thread _ID44307();
    }
    else
    {
        thread _ID47436();
        _ID42237::_ID14413( "firing_range_timed_ads_done" );
        thread _ID44307();
    }
}

_ID50995()
{
    _ID42237::_ID14413( "foley_done_talking_from_hip_ads_training" );
    level._ID54244 thread firing_range_anim_then_idle( level._ID52085, "training_intro_talk4", "training_intro_idle2" );
    level._ID388._ID3190 firing_range_anim_then_idle( level._ID388, "training_intro_talk4", "training_intro_idle" );
    _ID42237::_ID14413( "firing_range_timed_ads_done" );
    level._ID54244 thread firing_range_anim_then_idle( level._ID52085, "training_intro_talk5", "training_intro_idle" );
    level._ID388._ID3190 _ID42259::_ID3111( level._ID388, "training_intro_talk5" );
    _ID42237::_ID14402( "foley_done_talking_from_timed_ads_training" );
}

_ID47436()
{
    _ID42237::_ID14413( "firing_range_hip_and_ads_done" );
    thread _ID50995();
    thread _ID42407::_ID4422( "timed_ads" );
    level._ID388 waittill( "train_fly_showemprivate" );
    _ID48422( "obj_timed_rifle", &"TRAINER_SHOOT_EACH_TARGET_AS", getent( "firing_range", "targetname" ) );
    _ID51143( "obj_timed_rifle", "current" );
    level._ID388 waittill( "train_fly_iftargetclose" );

    if ( level.player getweaponammoclip( level._ID43062 ) < level._ID48180 )
    {
        _ID52947( "reload" );
        wait 2.0;
    }

    var_0 = 0;
    var_1 = 0;
    level._ID388 thread _ID51471( "nag_ads_snap_0", 4, "player_needs_to_ADS", "firing_range_timed_ads_done" );

    for (;;)
    {
        if ( _ID48594() && var_0 != 0 )
        {
            if ( level._ID1333 )
                var_2 = _ID50166( "ads_switch" );
            else
                var_2 = _ID50166( "ads_switch_shoulder" );

            var_3 = 1;
            thread _ID46722( var_2._ID18611, 10, var_3 );
            wait 4;
        }

        level._ID45023 = 0;
        level._ID53596 = 0;
        level._ID53131 = 0;
        thread _ID51009();
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
        _ID42237::_ID3350( level._ID47786, ::_ID53706 );

        if ( level._ID53596 < 4 )
            level._ID388 _ID10760( "timed_ads_not_snapping_0" + var_1, undefined, 1 );
        else
            level._ID388 _ID10760( "timed_ads_too_slow_0" + var_1, undefined, 1 );

        var_1++;

        if ( var_1 > 2 )
            var_1 = 0;

        wait 1;

        if ( level.player getweaponammoclip( level._ID43062 ) < level._ID48180 )
        {
            thread _ID52947( "reload" );

            while ( level.player getweaponammoclip( level._ID43062 ) < level._ID48180 )
                wait 0.1;

            _ID7873();
            wait 1;
        }
    }

    wait 1;
    _ID51143( "obj_timed_rifle", "done" );
    _ID42237::_ID3350( level._ID47786, ::_ID53706 );
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
            var_2 = randomint( var_0.size );

            if ( var_2 != var_1 )
                break;
        }

        var_1 = var_2;
        var_0[var_2] notify( "pop_up" );
        var_0[var_2] waittill( "hit" );
        level notify( "a timed target has been hit" );

        if ( level.player _ID42407::_ID20652() )
        {
            level._ID53596++;
            level.player notify( "did_action_ads" );
            level.player notify( "did_action_ads_360" );
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
                thread _ID52947( "ads_360" );
            else
                thread _ID52947( "ads" );

            level notify( "player_needs_to_ADS" );
        }

        level._ID45023++;
        wait 0.1;
    }
}

_ID44307()
{
    thread _ID54438();
    _ID42237::_ID14413( "firing_range_penetration_done" );
    thread _ID51152();
}

_ID48360()
{
    if ( level._ID54359 == 1 )
        _ID42237::_ID14413( "foley_done_talking_from_hip_ads_training" );

    _ID42237::_ID14413( "foley_done_talking_from_timed_ads_training" );
    level._ID54244 thread firing_range_anim_then_idle( level._ID52085, "training_intro_talk6", "training_intro_idle" );
    level._ID388._ID3190 firing_range_anim_then_idle( level._ID388, "training_intro_talk6", "training_intro_idle" );
    _ID42237::_ID14402( "foley_done_talking_from_penetration_training" );
}

_ID54438()
{
    thread _ID48360();
    thread _ID42407::_ID4422( "penetration" );
    level._ID388 waittill( "train_fly_theprivatehere" );
    _ID48422( "obj_penetration", &"TRAINER_SHOOT_A_TARGET_THROUGH", getent( "obj_penetration_origin", "targetname" ) );
    _ID51143( "obj_penetration", "current" );

    while ( !_ID42237::_ID41802( level.player.origin, level.player getplayerangles(), level._ID53419.origin, level._ID8760["45"] ) )
        wait 0.05;

    level._ID388 thread _ID51471( "nag_penetration_fire_0", 2, "player_needs_to_shoot_through_plywood", "firing_range_penetration_done" );
    thread _ID46051();
    var_0 = 1;
    var_1 = undefined;
    var_2 = undefined;
    var_3 = 1;
    _ID50635( level._ID50259, var_0, var_1, var_2, var_3 );
    thread _ID52219();
    _ID51143( "obj_penetration", "done" );
    _ID42407::_ID10226( 3, ::_ID47661 );
    _ID7873();
    _ID42237::_ID14402( "firing_range_penetration_done" );
}

_ID46051()
{
    level._ID50144 rotateroll( 90, 0.25, 0.1, 0.1 );
    level._ID50144 playsound( "trainer_target_up_wood" );
    level._ID50144._ID1251 = 1;
    level._ID50144 endon( "plywood_going_down" );
    level._ID50144 solid();
    level._ID50144 setcandamage( 1 );
    wait 0.25;

    while ( level._ID50144._ID1251 == 1 )
    {
        level._ID50144 waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( !isdefined( var_1 ) )
            continue;

        if ( !isdefined( var_4 ) )
            continue;

        if ( isplayernumber( var_1 ) )
            level._ID48264 = gettime();
    }
}

_ID47661()
{
    level._ID50144 rotateroll( -90, 0.25, 0.1, 0.1 );
    level._ID50144 playsound( "trainer_target_up_wood" );
    level._ID50144 notify( "plywood_going_down" );
    level._ID50144._ID1251 = 0;
}

_ID51152()
{
    thread _ID48898();
    _ID42237::_ID14413( "firing_range_frags_done" );
    thread _ID46673();
}

_ID50727()
{
    _ID42237::_ID14413( "foley_done_talking_from_penetration_training" );
    level.grenadeanimnode _ID42407::_ID1985( _ID42259::_ID3111, level.grenade_box, "training_intro_talk7" );
    _ID42407::_ID1890( _ID42237::_ID14402, "player_can_pick_up_frags" );
    thread _ID42407::_ID11231();
    thread firing_range_foley_frag();
    level._ID54244 thread firing_range_anim_then_idle( level._ID52085, "training_intro_talk7", "training_intro_idle" );
    level._ID388._ID3190 firing_range_anim_then_idle( level._ID388, "training_intro_talk7", "training_intro_idle" );
    wait 0.05;
    _ID42237::_ID14402( "foley_done_talking_from_frag_training" );
}

firing_range_foley_frag()
{
    level._ID388 waittillmatch( "single anim",  "grab_grenade"  );
    var_0 = level.foley_frag.origin;
    var_1 = level.foley_frag.angles;
    level.foley_frag linkto( level._ID388, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID388 waittillmatch( "single anim",  "drop_grenade"  );
    level.foley_frag.origin = var_0;
    level.foley_frag.angles = var_1;
    level.foley_frag linkto( level.grenade_box, "J_Box" );
}

_ID48898()
{
    if ( !_ID42237::_ID14385( "frags_have_been_spawned" ) )
        thread _ID52219();

    thread _ID42407::_ID4422( "frags" );
    thread _ID50727();
    wait 1;
    _ID42407::ui_reset_waypoint_center_fade_settings();
    _ID42237::_ID14413( "player_can_pick_up_frags" );
    var_0 = 0;

    if ( !_ID42237::_ID14385( "player_picked_up_frags" ) )
    {
        thread _ID47152();
        _ID48422( "obj_frags", &"TRAINER_PICK_UP_THE_FRAG_GRENADES", getent( "frag_pickup", "targetname" ) );
        _ID51143( "obj_frags", "current" );
    }
    else
        var_0 = 1;

    while ( level.player getweaponammostock( level.player getoffhandprimaryclass() ) < 3 )
        wait 0.05;

    _ID42407::ui_set_waypoint_center_fade_settings( 2000, 0, 0 );
    level.player enableoffhandweapons();
    setsaveddvar( "ui_hideGrenadeWidget", 0 );

    if ( var_0 )
    {
        _ID48422( "obj_frags", &"TRAINER_THROW_A_GRENADE_INTO", getent( "frag_obj", "targetname" ) );
        _ID51143( "obj_frags", "current" );
        _ID54163( "obj_frags", getent( "frag_obj", "targetname" ) );
    }
    else
    {
        thread _ID45810( "obj_frags", &"TRAINER_THROW_A_GRENADE_INTO" );
        _ID51143( "obj_frags", "current" );
        _ID54163( "obj_frags", getent( "frag_obj", "targetname" ) );
    }

    thread _ID48167();
    var_1 = 1;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = 1;

    while ( !_ID42237::_ID41802( level.player.origin, level.player getplayerangles(), level._ID53419.origin, level._ID8760["45"] ) )
        wait 0.05;

    _ID42237::_ID14402( "training_intro_trainees_pre_end_idle" );
    level._ID54412 notify( "stop_firing_range_anim" );
    level._ID54412 thread _ID42259::_ID3044( level._ID54742, "training_intro_pre_end_idle", "stop_firing_range_anim" );
    _ID42237::_ID3350( level._ID46855, ::_ID52404, "targets_hit_with_grenades" );
    _ID42237::_ID3350( level._ID46855, ::_ID54072, "targets_hit_with_grenades" );
    thread _ID52947( "frag", undefined, 1 );
    _ID42237::_ID14413( "targets_hit_with_grenades" );
    _ID42237::_ID14402( "firing_range_frags_done" );
    _ID7873();
    wait 1;
    _ID51143( "obj_frags", "done" );

    if ( level.player getweaponammostock( level.player getoffhandprimaryclass() ) > 0 )
    {
        level.player setweaponammostock( level.player getoffhandprimaryclass(), 0 );
        setsaveddvar( "ui_hideGrenadeWidget", 1 );
    }

    _ID42237::_ID3350( level._ID46855, ::_ID53706 );
}

_ID48167()
{
    var_0 = 0;
    level._ID388 waittill( "train_fly_grenadedownrange" );
    level endon( "targets_hit_with_grenades" );
    thread _ID47831();

    while ( !_ID42237::_ID14385( "targets_hit_with_grenades" ) )
    {
        wait 6;

        if ( !_ID42237::_ID41802( level.player.origin, level.player getplayerangles(), level._ID53419.origin, level._ID8760["45"] ) )
        {
            thread _ID46722( &"TRAINER_HINT_TURN_AROUND" );

            while ( !_ID42237::_ID41802( level.player.origin, level.player getplayerangles(), level._ID53419.origin, level._ID8760["45"] ) )
                wait 0.05;

            _ID7873();
            continue;
        }

        if ( !_ID42237::_ID14385( "player_just_threw_a_frag" ) )
        {
            level._ID388 _ID10760( "frag_nag_0" + var_0, undefined, 1 );
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
        level.player _ID42237::_ID41098( "grenade_pullback", "did_action_frag" );
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
    self enablegrenadetouchdamage();

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
    var_0 = getentarray( "frags", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID16953 );
    _ID42237::_ID14421( "player_picked_up_frags", "firing_range_frags_done" );
    _ID42237::_ID3350( var_0, _ID42407::_ID36591 );
}

_ID43744()
{
    var_0 = getentarray( "frags", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID36591 );
}

_ID52219()
{
    _ID42237::_ID14402( "frags_have_been_spawned" );
    var_0 = getent( "frag_trigger", "script_noteworthy" );
    level._ID53022 = getentarray( "frags_pickup", "targetname" );
    var_1 = 4;
    level endon( "firing_range_frags_done" );
    _ID42237::_ID14413( "player_can_pick_up_frags" );

    for (;;)
    {
        wait 0.1;
        var_0 waittill( "trigger" );

        if ( _ID42237::_ID14385( "h2_player_picking_up_frags" ) )
            continue;

        if ( !level.player worldpointinreticle_circle( level.grenade_box.origin, 45, 400 ) )
            continue;

        if ( level.player getweaponammostock( level.player getoffhandprimaryclass() ) > 3 )
            continue;

        if ( !_ID42237::_ID14385( "player_picked_up_frags" ) )
        {
            _ID42237::_ID14402( "player_picked_up_frags" );
            level.player giveweapon( level.player getoffhandprimaryclass() );
            level.player setweaponammostock( level.player getoffhandprimaryclass(), 0 );
            _ID43744();
            thread firing_range_player_pick_up_grenades();
            continue;
        }

        var_2 = level.player getweaponammostock( level.player getoffhandprimaryclass() );
        var_3 = var_1 - var_2;

        if ( var_3 > 0 )
        {
            _ID53468( var_3 );
            level.player givemaxammo( level.player getoffhandprimaryclass() );
            level.player playsound( "grenade_pickup" );
        }
    }
}

_ID53468( var_0 )
{
    level endon( "firing_range_frags_done" );
    var_1 = [];

    foreach ( var_3 in level._ID53022 )
    {
        if ( !isdefined( var_3._ID18497 ) )
            var_1[var_1.size] = var_3;
    }

    if ( var_1.size == 0 )
        return;

    var_5 = 0;
    var_6 = undefined;
    var_7 = [];

    while ( var_5 < var_0 && var_1.size > 0 )
    {
        wait 0.05;
        var_6 = _ID42237::_ID16182( level.player.origin, var_1 );

        if ( !isdefined( var_6 ) )
            continue;

        var_1 = _ID42237::_ID3321( var_1, var_6 );
        var_6 hide();
        var_6._ID18497 = 1;
        var_7[var_7.size] = var_6;
        var_5++;
    }

    thread _ID46261( var_7, 3 );
}

_ID46261( var_0, var_1 )
{
    level endon( "firing_range_frags_done" );
    wait 0.5;

    while ( level.player getweaponammostock( level.player getoffhandprimaryclass() ) > 0 )
        wait 0.05;

    var_2 = gettime();

    for (;;)
    {
        wait 0.5;

        if ( _ID42237::_ID41802( level.player.origin, level.player getplayerangles(), level._ID53419.origin, level._ID8760["45"] ) )
            break;

        if ( gettime() >= var_2 + var_1 * 1000 )
            break;
    }

    _ID42237::_ID3294( var_0, ::show );

    foreach ( var_4 in var_0 )
        var_4._ID18497 = undefined;
}

_ID46673()
{
    thread h2_pitguy_intro();
    _ID42407::ui_reset_waypoint_center_fade_settings();
    _ID42237::_ID14413( "sidearm_complete" );
    thread _ID50489();
}

h2_pitguy_intro()
{
    level.pitanimnode = spawnstruct();
    level.pitanimnode.origin = ( -3568, 2280, -192 );
    level.pitanimnode.angles = ( 0, -90, 0 );
    level.pitanimnode _ID42259::_ID3016( level._ID49518, "open_case_soldier" );
    level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_idle_soldier", "stop_idle" );
    thread _ID50367();
    level._ID388 waittill( "train_fly_fragstendtoroll" );
    thread blocker_range_removal();
    thread _ID42407::_ID4422( "find_the_pit" );
    level._ID388 waittill( "train_fly_thanksforhelp" );
    _ID42475::_ID34575( "aud_stop_mix_practice_range" );
    thread _ID46666();
    setsaveddvar( "objectiveAlpha", 1 );
    _ID48422( "obj_course_locate", &"TRAINER_DEBRIEF_WITH_DUNN", getent( "origin_sidearm_table_babystep_1", "targetname" ) );
    _ID51143( "obj_course_locate", "current" );
    _ID42237::_ID14402( "obj_go_to_the_pit_given" );
    _ID42407::_ID10226( 4, ::_ID44868, "obj_go_to_the_pit_done" );
    _ID42237::_ID14413( "player_passing_barracks" );
    _ID42237::_ID14413( "player_at_pit_stairs" );
    _ID54163( "obj_course_locate", getent( "origin_sidearm_table", "targetname" ) );
    _ID42237::_ID14413( "player_entering_course" );
    thread cqb_timer_setup();
    thread h2_weapon_inspect_tutorial();
    _ID42237::_ID14402( "obj_go_to_the_pit_done" );
    wait 0.05;
    _ID7873();
    _ID51143( "obj_course_locate", "done" );
    thread _ID45416();
}

blocker_range_removal()
{
    wait 6;
    var_0 = getent( "blocker_range", "targetname" );
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
    level._ID388._ID3190 thread firing_range_anim_then_idle( level._ID388, "training_intro_end", "training_intro_end_idle" );
    level._ID54412 thread firing_range_anim_then_idle( level._ID54742, "training_intro_end", "training_intro_end_idle" );
    level._ID54244 thread firing_range_anim_then_idle( level._ID52085, "training_intro_end", "training_intro_end_idle" );
}

_ID54320()
{
    level._ID47197._ID53512 = 1;
    level._ID53623 show();
    level._ID47197._ID3190 _ID42259::_ID3016( level._ID48853, "training_pit_sitting_welcome" );
    level._ID47197._ID3190 _ID42259::_ID3016( level._ID49518, "training_pit_open_case" );
    level._ID47197._ID3190 thread _ID42259::_ID3040( level._ID48853, "training_pit_sitting_idle", "stop_idle" );
    thread _ID50367();
    level._ID388 waittill( "train_fly_fragstendtoroll" );
    var_0 = getent( "blocker_range", "targetname" );
    var_0 _ID42407::_ID18512();
    thread _ID42407::_ID4422( "find_the_pit" );
    level._ID388 waittill( "train_fly_thanksforhelp" );
    _ID42475::_ID34575( "aud_stop_mix_practice_range" );
    thread _ID46666();
    setsaveddvar( "objectiveAlpha", 1 );
    _ID48422( "obj_course_locate", &"TRAINER_DEBRIEF_WITH_DUNN", getent( "origin_sidearm_table_babystep_1", "targetname" ) );
    _ID51143( "obj_course_locate", "current" );
    _ID42237::_ID14402( "obj_go_to_the_pit_given" );
    _ID42407::_ID10226( 4, ::_ID44868, "obj_go_to_the_pit_done" );
    _ID42237::_ID14413( "player_passing_barracks" );
    _ID42237::_ID14413( "player_at_pit_stairs" );
    _ID54163( "obj_course_locate", getent( "origin_sidearm_table", "targetname" ) );
    _ID42237::_ID14413( "player_entering_course" );
    _ID42237::_ID14402( "obj_go_to_the_pit_done" );
    wait 0.05;
    _ID7873();
    _ID51143( "obj_course_locate", "done" );
    thread _ID45416();
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
    setsaveddvar( "objectiveAlpha", level._ID48204 );
    thread _ID42407::_ID4422( "sidearm" );
    level._ID47197 waittill( "readyToGo" );
    level.pitanimnode notify( "stop_idle" );
    level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_welcome_soldier" );

    if ( !level.player hasweapon( level._ID53299 ) )
        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_welcome_soldier_grab" );
    else
        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_welcome_soldier_sidearm" );

    var_0 = 1;

    if ( !level.player hasweapon( level._ID53299 ) )
    {
        level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_idle_soldier", "stop_idle" );
        var_0 = 0;
        _ID48422( "obj_sidearm", &"TRAINER_GET_A_PISTOL_FROM_THE", getent( "origin_sidearm_table", "targetname" ) );
        _ID51143( "obj_sidearm", "current" );
        var_1 = getent( "pickup_sidearm", "targetname" );

        if ( isdefined( var_1 ) )
            var_1 _ID42407::_ID16953( "h2_weapon_desert_eagle_base_obj" );
    }

    while ( !level.player hasweapon( level._ID53299 ) )
        wait 0.05;

    if ( var_0 == 1 )
    {
        _ID48422( "obj_sidearm", &"TRAINER_GET_A_PISTOL_FROM_THE", getent( "origin_course_01", "targetname" ) );
        _ID51143( "obj_sidearm", "current" );
    }
    else
        wait 1;

    _ID54163( "obj_sidearm", undefined );
    _ID45810( "obj_sidearm", &"TRAINER_SWITCH_TO_YOUR_RIFLE" );
    var_2 = level.player getcurrentweapon();

    if ( var_2 == level._ID53299 )
    {
        if ( !var_0 )
        {
            level._ID47197 waittill( "readyToGo" );
            level.pitanimnode notify( "stop_idle" );
        }

        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_switchgun_VO1" );
        var_2 = level.player getcurrentweapon();
        var_3 = 0;

        if ( var_2 != level._ID43062 )
        {
            level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_switchgun_idle", "stop_idle" );
            var_3 = 1;
            thread _ID52947( "primary" );
        }

        while ( level.player getcurrentweapon() == level._ID53299 )
        {
            _ID52947( "primary" );
            wait 0.05;
        }

        _ID7873();

        if ( var_3 )
        {
            level._ID47197 waittill( "readyToGo" );
            level.pitanimnode notify( "stop_idle" );
            var_3 = 0;
        }

        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_switchgun_VO2" );

        if ( level.player getcurrentweapon() != level._ID53299 )
        {
            level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_switchgun_idle", "stop_idle" );
            var_3 = 1;
            thread _ID52947( "sidearm" );
        }

        while ( level.player getcurrentweapon() != level._ID53299 )
        {
            wait 0.05;
            _ID7873();
            _ID52947( "sidearm" );
        }

        if ( var_3 )
        {
            level._ID47197 waittill( "readyToGo" );
            level.pitanimnode notify( "stop_idle" );
        }

        _ID7873();
    }
    else
    {
        level.pitanimnode _ID42259::_ID3099( level._ID48853, "sitting_switchgun_VO1_switch" );
        var_3 = 0;

        if ( level.player getcurrentweapon() != level._ID53299 )
        {
            level.pitanimnode thread _ID42259::_ID3040( level._ID48853, "sitting_switchgun_idle", "stop_idle" );
            var_3 = 1;
            thread _ID52947( "sidearm" );
        }

        while ( level.player getcurrentweapon() != level._ID53299 )
        {
            _ID7873();
            thread _ID52947( "sidearm" );
            wait 0.05;
        }

        if ( var_3 )
        {
            level._ID47197 waittill( "readyToGo" );
            level.pitanimnode notify( "stop_idle" );
        }

        _ID7873();
    }

    _ID51143( "obj_sidearm", "done" );
    _ID42237::_ID14402( "sidearm_complete" );
    level notify( "sideArmTraining_end" );
}

_ID50489()
{
    thread _ID45844();
    thread _ID44587();
}

_ID45844()
{
    if ( !isdefined( level._ID47197._ID53512 ) )
        level._ID53623 show();

    thread maps\trainer_aud::aud_handle_pit_scene_mix();
    thread _ID44800();
    level.pitanimnode thread _ID42259::_ID3099( level._ID48853, "open_case_soldier" );
    thread handledunnbeforepit();
    _ID42237::_ID14413( "player_has_started_course" );
    level notify( "DunnIsReady" );
    level._ID53623 delete();
    level.pitanimnode _ID42259::_ID3018( level._ID47197, "dunn_pit_outro" );
    waittillframeend;
    level._ID47197._ID4956 = undefined;
    thread resetdunn();
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
    level._ID47197 _ID45995::_ID48826( "head", level.player, 300, 45, 45, 30, 45, 0, 1, 10, 0 );
    level._ID53623 = spawn( "script_model", ( 0, 0, 0 ) );
    level._ID53623 setmodel( "h2_viewmodel_desert_eagle_silver" );
    level._ID53623.origin = level._ID47197.origin;
    level._ID53623._ID3189 = "pit_gun";
    level._ID53623 _ID42407::_ID3428();
    level._ID47197._ID3190 = getent( "node_dunn_training", "targetname" );
    level._ID48853 = [];
    level._ID48853[0] = level._ID47197;
    level._ID48853[1] = level._ID53623;
}

_ID44587()
{
    _ID42237::_ID14413( "case_flip_01" );
    level.pitanimnode thread _ID42259::_ID3111( level._ID46577, "open_case_soldier" );
    level._ID46577 playsound( "scn_trainer_case_open1" );
    var_0 = getentarray( "pit_weapons_case_01", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID49617 );
    _ID42237::_ID14413( "case_flip_02" );
    level.pitanimnode thread _ID42259::_ID3111( level._ID51674, "open_case_soldier" );
    level._ID51674 playsound( "scn_trainer_case_open2" );
    var_1 = getentarray( "pit_weapons_case_02", "script_noteworthy" );
    _ID42237::_ID3350( var_1, ::_ID49617 );
    _ID42237::_ID14413( "button_press" );
    var_2 = getent( "switchToPit", "targetname" );
    _ID42237::_ID27077( "scn_training_fence_button", var_2.origin );
    thread _ID42407::_ID4422( "pit_course_start" );
    level._ID53991 thread _ID11599();
    _ID42237::_ID14413( "player_course_stairs2" );
    var_3 = getentarray( "pit_weapons_table", "script_noteworthy" );
    _ID42237::_ID3350( var_3, ::_ID49617 );
}

_ID44800()
{
    level endon( "clear_course" );
    level endon( "mission failed" );
    var_0 = 0;
    setdvar( "killhouse_too_slow", "0" );
    level._ID44400 = 1;
    var_1 = 0;
    var_2 = "none";
    _ID7873();
    var_3 = 0;

    for (;;)
    {
        if ( level._ID44400 )
            jump loc_3647

        if ( level._ID44400 )
        {

        }

        thread _ID48869( level._ID44400 );

        if ( level._ID44400 )
        {
            level._ID52222 = 0;
            _ID48422( "obj_course", &"TRAINER_COMPLETE_COURSE", getent( "origin_course_01", "targetname" ) );
            _ID51143( "obj_course", "current" );
        }

        var_4 = getentarray( "course_triggers_01", "script_noteworthy" );
        _ID42407::_ID3319( var_4, "activate" );
        _ID42237::_ID14413( "player_has_started_course" );
        thread cqb_timer_setup();
        _ID42237::_ID14388( "dunn_finished_with_difficulty_selection_dialogue" );
        _ID54163( "obj_course", getent( "origin_course_01", "targetname" ) );

        if ( level._ID52222 != 0 )
            _ID45810( "obj_course", &"TRAINER_COMPLETE_COURSE" );

        _ID42237::_ID14388( "melee_target_hit" );
        level._ID47716 = 0;
        thread _ID47648();

        if ( level._ID44400 )
        {
            thread _ID49423();
            _ID42407::_ID10226( 3, ::_ID45967 );
        }

        level._ID46990 = undefined;
        thread _ID46639();
        var_5 = getentarray( "conversation_orgs_pit", "targetname" );
        var_6 = _ID42237::_ID16182( level.player.origin, var_5 );

        if ( _ID42237::_ID8201() )
            var_6 _ID42407::_ID10226( 3, _ID42237::_ID27077, "train_ar3_getsome" );
        else if ( _ID42237::_ID8201() )
            var_6 _ID42407::_ID10226( 3, _ID42237::_ID27077, "train_ar4_bringit" );
        else
            var_6 _ID42407::_ID10226( 3, _ID42237::_ID27077, "train_ar5_comeon" );

        var_7 = level.player getweaponslistprimaries();

        if ( var_7.size > 0 )
        {
            foreach ( var_9 in var_7 )
            {
                if ( var_9 == "barrett" )
                {
                    continue;
                    continue;
                }

                level.player givemaxammo( var_9 );
            }
        }

        level._ID52991 = 0;
        level._ID44713 = 0;

        if ( getdvarint( "killhouse_too_slow" ) >= 1 )
            thread _ID47630( level._ID46466 );
        else
            thread _ID47630( level._ID46979 );

        thread _ID45742();

        if ( isdefined( level._ID47144 ) )
            level._ID47144 destroy();

        _ID54163( "obj_course", getent( "origin_course_02", "targetname" ) );
        _ID42237::_ID14413( "player_course_03a" );
        _ID54163( "obj_course", getent( "origin_course_03", "targetname" ) );
        _ID42237::_ID14413( "player_course_stairs2" );
        thread _ID52808( "melee", "melee_target_hit" );
        _ID42237::_ID14413( "player_course_upstairs" );
        level._ID53991 thread _ID11590();
        level._ID52018 thread _ID11599();
        _ID42237::_ID14388( "player_inside_course" );
        var_11 = getent( "course_end_blocker", "targetname" );
        var_11 _ID42407::_ID18512();
        _ID54163( "obj_course", getent( "origin_course_03a", "targetname" ) );
        _ID42237::_ID14413( "player_course_jumping_down" );
        _ID54163( "obj_course", getent( "origin_course_05", "targetname" ) );
        _ID42237::_ID14421( "player_course_end_02", "course_end_targets_dead" );
        _ID42237::_ID14413( "player_course_end_03" );
        _ID42237::_ID14388( "player_has_started_course" );
        var_12 = 1;
        var_13 = 0;
        var_14 = 0;

        for (;;)
        {
            level.light_nosprint = getent( "h2_no_sprint_light", "targetname" );
            _ID42237::_ID14413( "player_standing_on_sprint_marker" );
            _ID42237::_ID14388( "sprinted" );
            thread _ID51240();
            _ID7873();
            _ID53307();
            thread _ID45523( "sprinted" );

            if ( level._ID1333 )
                thread _ID52808( "sprint", "sprinted" );
            else
                thread _ID52808( "sprint_pc", "sprinted" );

            if ( var_12 )
            {
                thread maps\trainer_aud::_ID43109( "train_cpd_sprint", level.pa_course_ext );
                var_12 = 0;
            }
            else
            {
                _ID54163( "obj_course", getent( "origin_course_05", "targetname" ) );
                level._ID52018 thread _ID11599( undefined, 1 );
                thread _ID47495();
                thread _ID42407::_ID28864( "nag_sprint_0" + var_14 );
                var_14++;

                if ( var_14 > 3 )
                    var_14 = 0;
            }

            _ID42237::_ID14413( "player_sprint_door_close" );

            if ( !_ID42237::_ID14385( "sprinted" ) )
            {
                _ID54163( "obj_course", getent( "origin_course_sprint", "targetname" ) );
                level._ID52018 thread _ID11590( undefined, 1 );
                level._ID52018 thread _ID42407::_ID27079( "door_close_buzzer" );
                thread _ID48464();
                thread _ID42407::_ID28864( "nag_didnt_sprint_0" + var_13 );
                thread _ID46722( &"TRAINER_TRY_SPRINT_AGAIN", undefined, 1 );
                var_13++;

                if ( var_13 > 3 )
                    var_13 = 0;

                continue;
            }

            break;
        }

        _ID42237::_ID14413( "player_course_end" );
        _ID54163( "obj_course", undefined );
        var_11 = getent( "course_end_blocker", "targetname" );
        var_11 _ID42407::_ID33997();
        var_3++;
        _ID7873();
        thread _ID43878();
        level._ID52018 thread _ID11590( "player_course_end_close_gate" );
        _ID7873();
        _ID42237::_ID14388( "sprinted" );
        level notify( "test_cleared" );
        var_15 = _ID21428( level._ID54267, 0 );

        while ( !isdefined( level._ID46990 ) )
            wait 0.1;

        var_16 = _ID49691( var_3 );
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
            thread handledunnanimation( "dunn_pit_outro_retry" );
        }
        else
        {
            if ( !_ID42237::_ID14385( "has_cheated" ) && !_ID49347::_ID44352() )
                level.player uploadtime( "LB_KILLHOUSE", var_15 );

            thread _ID46129();
        }

        var_2 = var_16;
        var_1 = var_15;
        level._ID53991 thread _ID11599();

        if ( level._ID46990 != 1000 )
        {
            if ( !_ID42237::_ID14385( "player_has_started_course" ) )
            {
                _ID54163( "obj_course", getent( "course_start", "targetname" ) );
                _ID45810( "obj_course", &"TRAINER_OBJ_EXIT_THE_PIT" );
                level._ID52222 = 1;
            }
        }
        else
            _ID54163( "obj_course", getent( "origin_course_01", "targetname" ) );

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
    var_0 = getent( "sprint_volume", "targetname" );

    for (;;)
    {
        wait 0.05;
        var_1 = level.player getvelocity();
        var_2 = distance( ( var_1[0], var_1[1], 0 ), ( 0, 0, 0 ) );

        if ( isdefined( var_2 ) && var_2 > 250 && level.player istouching( var_0 ) )
            _ID42237::_ID14402( "sprinted" );
    }
}

_ID48464()
{
    _ID42234::_ID13611( "light_red_flare" );
    level.light_nosprint _meth_81ed( 2000 );
}

_ID47495()
{
    _ID42234::_ID21260( "light_red_flare" );
    level.light_nosprint _meth_81ed( 1 );
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
    thread handledunnanimation( "dunn_pit_outro" );
    _ID42237::_ID14421( "player_entering_course", "player_exiting_course_00" );
    _ID42475::_ID34575( "aud_start_mix_info_popup" );
    level.player freezecontrols( 1 );
    setblur( 2, 0.1 );
    _ID48344();
    wait 1;
    level.player openluimenu( &"difficulty_selection_menu" );

    for (;;)
    {
        level.player waittill( "menuresponse",  var_0, var_1  );

        if ( var_1 == "continue" || var_1 == "tryagain" )
            break;

        level.player openluimenu( &"difficulty_selection_menu" );
    }

    level notify( "clear_Dunn" );
    level.pitanimnode notify( "stop_idle" );
    waittillframeend;
    level.pitanimnode thread _ID42259::_ID3044( level._ID47197, "dunn_pit_outro_idle", "stop_idle" );
    setblur( 0, 0.2 );
    level.player freezecontrols( 0 );
    _ID42475::_ID34575( "aud_stop_mix_info_popup" );

    if ( var_1 == "tryagain" )
    {
        level.pitanimnode notify( "stop_idle" );
        level.pitanimnode _ID42259::_ID3111( level._ID47197, "dunn_pit_tryagain" );
        level.pitanimnode thread _ID42259::_ID3044( level._ID47197, "dunn_pit_outro_retry_idle", "stop_idle" );
        _ID54163( "obj_course", getent( "origin_course_01", "targetname" ) );
        _ID45810( "obj_course", &"TRAINER_COMPLETE_COURSE" );
        level._ID52222 = 0;
    }
    else
    {
        _ID42237::_ID14402( "player_done_with_course" );

        if ( !level._ID46977 )
        {
            level._ID46977 = 1;
            thread _ID45936();
        }

        level._ID53991 thread _ID11590( undefined, 1 );
        level.pitanimnode notify( "stop_idle" );
        level.pitanimnode _ID42259::_ID3111( level._ID47197, "h2_headupstairs_outro_out" );
        level.pitanimnode thread _ID42259::_ID3044( level._ID47197, "dunn_pit_outro_idle", "stop_idle" );
        _ID48344();
        _ID7873();
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
    thread _ID52947( var_0, undefined, undefined, 1 );
    thread _ID49084( var_1 );
}

_ID43878()
{
    foreach ( var_1 in level._ID37340 )
    {
        var_1 _ID53706();

        if ( isdefined( var_1._ID45489 ) )
            var_1 thread _ID48685();
    }
}

_ID47648()
{
    _ID53663( 10, "course_start_targets_dead", "player_course_03a" );
    _ID42237::_ID14413( "player_course_03a" );
    _ID53663( 3, "course_first_floor_targets_dead", "player_course_stairs" );
    _ID42237::_ID14413( "player_course_stairs" );
    _ID53663( 5, "course_second_floor_targets_dead", "player_course_jumped_down" );
    _ID42237::_ID14413( "player_course_jumped_down" );
    _ID53663( 6, "course_end_targets_dead", "player_course_end_03" );
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
    var_0 = level.player getcurrentweapon();
    var_1 = level.player getweaponslistprimaries();

    foreach ( var_3 in var_1 )
    {
        if ( var_3 == var_0 )
            continue;

        var_4 = level.player getweaponammoclip( var_3 );

        if ( var_4 > 5 )
        {
            return 1;
            continue;
        }

        return 0;
    }

    return 0;
}

_ID46639()
{
    _ID42237::_ID14413( "player_has_started_course" );
    _ID42237::_ID14388( "no_more_course_nags" );
    thread _ID43002();
    thread _ID47139();
    thread _ID50533();
    level.pa_course_ext = getentarray( "aud_pa_ext", "targetname" );
    level._ID47197 playrumbleonentity();

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
            thread dialogue_course_move_into_the_building();
    }
    else if ( _ID42237::_ID14385( "can_talk" ) )
        thread dialogue_course_missed_some_targets();

    _ID42237::_ID14421( "player_course_stairs2", "course_first_floor_targets_dead" );

    if ( _ID42237::_ID14385( "course_first_floor_targets_dead" ) )
    {
        if ( _ID42237::_ID14385( "can_talk" ) )
            thread dialogue_course_up_the_stairs();
    }

    _ID42237::_ID14413( "player_course_stairs2" );
    thread _ID49347::_ID46206();
    thread _ID47034();
    _ID42237::_ID14421( "player_course_jumped_down", "course_second_floor_targets_dead" );

    if ( _ID42237::_ID14385( "course_second_floor_targets_dead" ) )
    {
        if ( _ID42237::_ID14385( "can_talk" ) )
            thread dialogue_course_jump_down();
    }

    _ID42237::_ID14413( "player_course_jumped_down" );
    _ID42237::_ID14402( "no_more_course_nags" );
    _ID42237::_ID14413( "can_talk" );

    if ( _ID42237::_ID14385( "can_talk" ) && !_ID42237::_ID14385( "course_end_targets_dead" ) )
        thread dialogue_course_last_area();

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
    thread _ID43723();
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
        level.player waittill( "reload_start" );

        if ( _ID42237::_ID14385( "player_course_jumped_down" ) )
            break;

        if ( !_ID42237::_ID14385( "player_inside_course" ) )
            break;

        if ( _ID42237::_ID14385( "no_more_course_nags" ) )
            break;

        if ( _ID42237::_ID14385( "can_talk" ) && _ID48172() )
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

        level._ID47197 _ID10760( "train_cpd_timerstarts" );

        if ( var_1 )
        {
            wait 3;
            level._ID47197 _ID10760( "train_cpd_putusin" );
            level._ID47197 _ID10760( "train_cpd_socombrass" );
            wait 2;
            level._ID47197 _ID10760( "train_cpd_realaction" );
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
    if ( isdefined( self._ID24481 ) )
    {
        while ( isdefined( self._ID24481 ) )
            wait 0.05;
    }

    self._ID24481 = 1;
    var_2 = 90;

    if ( isdefined( self._ID48191 ) )
        var_2 = self._ID48191;

    if ( isdefined( var_0 ) )
        _ID42237::_ID14413( var_0 );

    var_3 = 4;

    if ( isdefined( var_1 ) )
    {
        var_3 = 1.5;
        self rotateto( self.angles + ( 0, var_2, 0 ), 1.5, 0.25, 0.25 );
    }
    else
        self rotateto( self.angles + ( 0, var_2, 0 ), 4, 1.5, 1.5 );

    if ( isdefined( self._ID47803 ) )
        self._ID47803 _ID42407::_ID18512();

    thread _ID42407::_ID27079( "scn_training_fence_open" );
    wait(var_3);
    self._ID24481 = undefined;
}

_ID11590( var_0, var_1 )
{
    if ( isdefined( self._ID24481 ) )
    {
        while ( isdefined( self._ID24481 ) )
            wait 0.05;
    }

    self._ID24481 = 1;
    var_2 = -90;

    if ( isdefined( self._ID43865 ) )
        var_2 = self._ID43865;

    if ( isdefined( var_0 ) )
        _ID42237::_ID14413( var_0 );

    var_3 = 2;

    if ( isdefined( var_1 ) )
    {
        var_3 = 1;
        self rotateto( self.angles + ( 0, var_2, 0 ), 1, 0.25, 0.25 );
    }
    else
        self rotateto( self.angles + ( 0, var_2, 0 ), 2, 0.5, 0.5 );

    if ( isdefined( self._ID47803 ) )
        self._ID47803 _ID42407::_ID33997();

    thread _ID42407::_ID27079( "scn_training_fence_close" );
    _ID42237::_ID3294( self._ID51925, ::solid );
    wait(var_3);
    self._ID24481 = undefined;
}

_ID45936()
{
    thread _ID44051();
    _ID49347::weapons_specialfeatures_reset();
    _ID49347::weapons_specialfeatures();
}

_ID44051()
{
    var_0 = getaiarray();
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( !isdefined( var_3._ID31388 ) )
            var_1[var_1.size] = var_3;
    }

    var_5 = _ID42407::_ID3317( level._ID12061["allies"]._ID3291, level._ID12061["axis"]._ID3291 );
    var_5 = _ID42407::_ID3317( var_5, level._ID12061["neutral"]._ID3291 );

    foreach ( var_3 in var_5 )
    {
        if ( isdefined( var_3._ID31388 ) )
            var_5 = _ID42237::_ID3321( var_5, var_3 );
    }

    _ID42237::_ID3350( var_1, ::_ID47688 );
    var_8 = getent( "basketball", "targetname" );
    var_8 delete();
    _ID42237::_ID3350( var_5, ::_ID47688 );
    _ID42407::_ID3304( getentarray( "friendlies_basketball_AI", "targetname" ) );
    var_9 = getentarray( "h2_pit_ai", "targetname" );
    _ID42237::_ID3350( var_9, ::_ID47688 );
    var_10 = _ID42407::_ID3339( getentarray( "friendlies_end_sequence", "targetname" ), 1 );
    var_11 = getent( "ending_sequence_node", "targetname" );
    var_12 = getentarray( "laatpv_gate", "targetname" );

    foreach ( var_14 in var_12 )
    {
        var_14 show();
        var_14._ID3189 = "laatpv";
        var_14 _ID42259::_ID32556();
        var_11 _ID42259::_ID3018( var_14, var_14._ID70 );
    }

    var_16 = _ID42407::_ID3339( getentarray( "friendly_ending_sequence", "targetname" ), 1 );

    foreach ( var_18 in var_16 )
    {
        var_18._ID3189 = "generic";
        var_11 _ID42259::_ID3018( var_18, var_18._ID70 );

        if ( isdefined( var_18.script_noteworthy ) && var_18.script_noteworthy == "no_gun" )
            var_18 _ID42407::_ID17509();
    }

    var_20 = _ID42407::_ID35168( "friendly_ending_foley", 1 );
    var_20._ID3189 = "foley";
    var_11 _ID42259::_ID3018( var_20, var_20._ID70 );
    _ID42237::_ID14413( "player_exiting_course_00" );
    level.player lightset( "trainer_end" );
    level.player enableinvulnerability( 1 );
    thread _ID49956();
    thread _ID48924();
    var_21 = _ID42411::_ID35200( "heli_group_pre_end" );
    thread maps\trainer_aud::aud_handle_veh_group( var_21, "apache", 0 );
    _ID42237::_ID14413( "player_exiting_course" );
    _ID42237::_ID14402( "end_sequence_starting" );
    _ID48344();
    _ID7873();
    level notify( "kill_timer" );
    level notify( "clear_course" );
    var_22 = _ID42411::_ID35200( "heli_group_01" );
    thread maps\trainer_aud::aud_handle_veh_group( var_22, "pavelow", 1 );
    _ID42237::_ID14413( "player_exiting_course_02" );
    level._ID50961 thread _ID11590();
    _func_31c( 1 );
    thread _ID49846( 0.1, 1 );
    level.player _meth_830f( 0 );
    _ID51143( "obj_course", "done" );
    var_23 = _ID42411::_ID35196( "ending_sequence_bradley" );
    var_24 = _ID42411::_ID35196( "ending_sequence_bridge" );
    thread spawn_laatpv_on_the_side();

    foreach ( var_14 in var_12 )
        var_11 thread _ID42259::_ID3111( var_14, var_14._ID70 );

    thread maps\trainer_aud::aud_handle_ending_latvees( var_12 );

    foreach ( var_18 in var_16 )
        var_11 thread _ID42259::_ID3111( var_18, var_18._ID70 );

    var_11 thread _ID42259::_ID3111( var_20, var_20._ID70 );
    wait 12;
    var_29 = _ID42313::_ID9125( "black", 0, level.player );
    var_29 fadeovertime( 1 );
    var_29.alpha = 1;
    wait 2;
    _ID42407::_ID24793();
}

spawn_laatpv_on_the_side()
{
    level.shep_ending = getent( "shep_ending", "script_noteworthy" );
    level.shep_ending _ID42407::_ID1947( _ID42407::_ID17509 );
    wait 0.5;
    var_0 = _ID42411::_ID35196( "side_laatpv_ending_01" );
    wait 1.5;
    var_1 = _ID42411::_ID35196( "side_laatpv_ending_02" );
}

_ID49846( var_0, var_1 )
{
    var_2 = 1;
    var_3 = var_0 / ( var_1 / 0.05 );
    var_4 = 0;

    while ( var_4 < var_1 )
    {
        var_2 -= var_3;

        if ( var_2 < 0 )
            break;

        level.player setmovespeedscale( var_2 );
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
    var_0 = getentarray( "radio_org_end", "targetname" );
    _ID42237::_ID14425( "player_exiting_course", 1 );
    thread _ID42407::_ID28864( "train_hqr_headedout" );
    _ID42237::_ID14413( "player_exiting_course" );
    var_1 = _ID42237::_ID16276( level.player.origin, var_0 );
    _ID42237::_ID14413( "player_exiting_course_02" );
    var_1 = _ID42237::_ID16276( level.player.origin, var_0 );
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

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( var_2.script_noteworthy ) )
            continue;

        if ( isdefined( var_2.code_classname ) && var_2.code_classname == "script_model" )
        {
            if ( var_2.script_noteworthy == "target_enemy" )
            {
                self._ID48856[self._ID48856.size] = var_2;
                self._ID37340[self._ID37340.size] = var_2;
            }
            else if ( var_2.script_noteworthy == "target_friendly" )
            {
                self._ID50010[self._ID50010.size] = var_2;
                self._ID37340[self._ID37340.size] = var_2;
            }

            continue;
        }
    }

    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "course_triggers_01" )
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
    if ( getdvar( "trainer_debug" ) == "1" )
    {
        self._ID51520 = getent( self.target, "targetname" );
        self.aim_assist_target = getent( self._ID51520.target, "targetname" );
        self.aim_assist_target hide();
        return;
    }

    self._ID44774 = undefined;
    self._ID51520 = getent( self.target, "targetname" );
    self linkto( self._ID51520 );
    self.aim_assist_target = getent( self._ID51520.target, "targetname" );
    self.aim_assist_target.health = 1000;
    self.aim_assist_target.maxhealth = 1000;
    self.aim_assist_target hide();
    self.aim_assist_target notsolid();
    self._ID4851 = undefined;

    if ( isdefined( self.aim_assist_target.target ) )
        self._ID4851 = getent( self.aim_assist_target.target, "targetname" );

    if ( isdefined( self._ID4851 ) )
    {
        self.player_collision = getent( self._ID4851.target, "targetname" );
        self.player_collision linkto( self );
        self.player_collision notsolid();
    }

    if ( !isdefined( self._ID51520.script_noteworthy ) )
        self._ID51520.script_noteworthy = "standard";

    if ( self._ID51520.script_noteworthy == "reverse" )
        self._ID51520 rotateroll( 90, 0.05 );
    else if ( self._ID51520.script_noteworthy == "sideways" )
        self._ID51520 rotateyaw( -180, 0.05 );
    else
        self._ID51520 rotateroll( -90, 0.05 );

    wait 0.1;
    self._ID44041 = undefined;
    self._ID45489 = undefined;
    self._ID51490 = undefined;
    self._ID53028 = undefined;
    self._ID50858 = undefined;

    if ( isdefined( self._ID31388 ) && self._ID31388 == "penetration_targets" )
        level._ID50259[level._ID50259.size] = self;

    if ( isdefined( self._ID31388 ) && self._ID31388 == "grenade_targets" )
        level._ID46855[level._ID46855.size] = self;

    if ( isdefined( self._ID31388 ) && self._ID31388 == "hip_targets" )
        level._ID45118[level._ID45118.size] = self;

    if ( isdefined( self._ID31388 ) && self._ID31388 == "use_rail" )
    {
        self._ID45489 = _ID42237::_ID16182( self._ID51520.origin, level._ID52787, 10 );
        self._ID51490 = getent( self._ID45489.target, "targetname" );
        self._ID44041 = [];
        self._ID44041[0] = self._ID45489;
        self._ID44041[1] = self._ID51490;
        var_1 = distance( self._ID44041[0].origin, self._ID44041[1].origin );
        self._ID53028 = var_1 / 30;
        self._ID53028 = _ID42407::_ID30292( self._ID53028, 0 );
        self._ID50858 = var_1 / 22;
        self._ID50858 = _ID42407::_ID30292( self._ID50858, 0 );

        foreach ( var_3 in self._ID44041 )
        {

        }

        _ID48685();
    }

    for (;;)
    {
        self waittill( "pop_up" );
        _ID43485();

        if ( isdefined( self._ID31388 ) && self._ID31388 == "melee" )
        {
            self._ID44774 = 1;
            var_5 = getent( "melee_clip", "targetname" );
            var_5 _ID42407::_ID33997();
        }

        if ( isdefined( self._ID31190 ) )
            thread _ID46123( self._ID31190 );

        wait(randomfloatrange( 0, 0.2 ));

        if ( isdefined( self.player_collision ) )
            self.player_collision solid();

        self playsound( "target_up_metal" );
        self setcandamage( 1 );

        if ( var_0 != "friendly" )
            self.aim_assist_target enableaimassist();

        if ( self._ID51520.script_noteworthy == "reverse" )
            self._ID51520 rotateroll( -90, 0.25 );
        else if ( self._ID51520.script_noteworthy == "sideways" )
            self._ID51520 rotateyaw( 180, 0.5 );
        else
            self._ID51520 rotateroll( 90, 0.25 );

        wait 0.25;

        if ( isdefined( self._ID45489 ) )
            thread _ID52318();

        for (;;)
        {
            self waittill( "damage",  var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13, var_14, var_15  );

            if ( !isdefined( var_7 ) )
                continue;

            if ( !isdefined( var_10 ) )
                continue;

            if ( var_10 == "MOD_IMPACT" )
                continue;

            if ( var_10 == "scripted_target_drop" )
                break;

            if ( var_10 == "timed_target_drop" )
            {
                var_16 = _ID42237::_ID16182( level.player.origin, level._ID35356 );
                var_16 playsound( "target_mistake_buzzer" );
                break;
            }

            if ( isplayernumber( var_7 ) )
            {
                if ( isdefined( self._ID44774 ) )
                {
                    if ( var_10 != "MOD_MELEE" )
                        continue;
                }

                self playsound( "target_metal_hit" );

                if ( var_0 == "friendly" )
                {
                    var_16 = _ID42237::_ID16182( level.player.origin, level._ID35356 );
                    var_16 playsound( "target_mistake_buzzer" );

                    if ( isdefined( var_7._ID44713 ) )
                        var_7._ID44713++;

                    level._ID44713++;

                    if ( !_ID42407::_ID20614() )
                    {
                        if ( isdefined( level._ID43810 ) )
                        {
                            level._ID43810 setvalue( level._ID44713 );
                            level._ID43810.color = ( 0.9, 0.2, 0.2 );
                            level._ID43810 setpulsefx( 30, 900000, 700 );
                        }
                    }

                    level notify( "civilian_killed" );
                }
                else
                {
                    var_7 _ID42354::_ID29410( self, var_10, var_15 );

                    if ( isdefined( var_7._ID52991 ) )
                        var_7._ID52991++;

                    level._ID52991++;

                    if ( var_10 == "MOD_MELEE" )
                        level._ID47716++;

                    level notify( "target_killed" );

                    if ( !_ID42407::_ID20614() )
                    {
                        if ( isdefined( level._ID49811 ) )
                        {
                            level._ID49811 setvalue( level._ID52991 );
                            level._ID49811 setpulsefx( 30, 900000, 700 );
                        }
                    }
                }

                if ( var_10 == "MOD_GRENADE_SPLASH" )
                    self notify( "hit_with_grenade" );

                break;
            }
        }

        if ( isdefined( self._ID44774 ) )
        {
            self._ID44774 = 1;
            var_5 = getent( "melee_clip", "targetname" );
            var_5 thread _ID42407::_ID18512();
            _ID42237::_ID14402( "melee_target_hit" );
        }
        else if ( var_0 != "friendly" && !level.player _ID42407::_ID20652() )
        {
            if ( isdefined( var_10 ) && var_10 != "MOD_MELEE" && var_10 != "scripted_target_drop" )
                level notify( "pit_target_hit_without_ADS" );
        }

        self notify( "hit" );
        self notify( "target_going_back_down" );
        waittillframeend;
        self.health = 1000;
        self.aim_assist_target disableaimassist();

        if ( isdefined( self.player_collision ) )
            self.player_collision notsolid();

        if ( self._ID51520.script_noteworthy == "reverse" )
            self._ID51520 rotateroll( 90, 0.25 );
        else if ( self._ID51520.script_noteworthy == "sideways" )
            self._ID51520 rotateyaw( -180, 0.5 );
        else
            self._ID51520 rotateroll( -90, 0.25 );

        self setcandamage( 0 );
        wait 0.25;
        level.target_ents = _ID42237::_ID3321( level.target_ents, self._ID51520 );
    }
}

_ID43485()
{
    if ( !_ID42407::_ID20614() )
        return;

    var_0 = self.origin;
    var_1 = undefined;

    if ( isdefined( self._ID31388 ) && self._ID31388 == "melee" )
    {
        var_0 = ( -5723, 2547, -49 );
        var_1 = 2520;
    }

    for (;;)
    {
        var_2 = 0;

        foreach ( var_4 in level._ID805 )
        {
            var_5 = 3136;

            if ( length( var_4 getvelocity() ) > 200 )
                var_5 = 16384;

            if ( distancesquared( var_4.origin, var_0 ) < var_5 )
            {
                var_2 = 1;

                if ( isdefined( var_1 ) && var_4.origin[1] < var_1 )
                    var_2 = 0;
            }
        }

        if ( !var_2 )
            return;

        wait 0.05;
    }
}

_ID52318()
{
    var_0 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_0.angles = self._ID51520.angles;
    var_0.origin = self._ID51520.origin;
    self._ID51520 thread _ID50323( var_0, self._ID4851, self.aim_assist_target );
    var_0 endon( "deleted_because_player_was_too_close" );
    var_0 endon( "death" );

    foreach ( var_2 in level._ID805 )
        var_0 thread _ID45825( var_2 );

    thread _ID45807( var_0 );
    var_0 thread _ID42237::_ID27000( "scn_trainer_dummy_target_move" );

    for (;;)
    {
        var_0 moveto( self._ID51490.origin, self._ID50858 );
        wait(self._ID50858);
        var_0 moveto( self._ID45489.origin, self._ID50858 );
        wait(self._ID50858);
    }
}

_ID45807( var_0 )
{
    var_0 endon( "death" );
    self waittill( "target_going_back_down" );
    var_0 delete();
}

_ID45825( var_0 )
{
    self endon( "death" );
    var_1 = 128;
    var_2 = var_1 * var_1;

    for (;;)
    {
        wait 0.05;

        if ( distancesquared( var_0.origin, self.origin ) < var_2 )
            break;
    }

    self notify( "deleted_because_player_was_too_close" );
    self delete();
}

_ID50323( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    var_3 = vectornormalize( anglestoright( var_1.angles ) );
    var_4 = var_3 * 4 + ( 0, 0, 60 );

    for (;;)
    {
        wait 0.05;
        self.origin = var_0.origin;
        var_1.origin = var_0.origin + ( 0, 0, 9.5 );
        var_2.origin = var_0.origin + var_4;
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

    var_0 = vectornormalize( anglestoright( self._ID51520.angles ) );
    var_1 = var_0 * 4 + ( 0, 0, 60 );
    level.target_ents[level.target_ents.size] = self._ID51520;
    self._ID51520 moveto( self._ID45489.origin, 0.1 );
    self._ID4851.origin = self._ID45489.origin + ( 0, 0, 9.5 );
    self.aim_assist_target.origin = self._ID45489.origin + var_1;
}

_ID46123( var_0 )
{
    if ( _ID42407::_ID20614() )
        return;

    self endon( "target_going_back_down" );
    _ID42237::_ID14413( var_0 );
    _ID53706();
}

_ID53706()
{
    self notify( "damage",  1000, "worldspawn", undefined, undefined, "scripted_target_drop"  );
}

_ID49317()
{
    if ( self.classname == "weapon_fraggrenade" || self.classname == "weapon_flash_grenade" )
        self itemweaponsetammo( 1, 0 );
    else
        self itemweaponsetammo( 999, 999 );
}

_ID43982()
{
    precachemodel( "weapon_binocular" );
    precachemodel( "adrenaline_syringe_animated" );
    precachemodel( "clotting_powder_animated" );
    precachemodel( "com_bottle2" );
    precachemodel( "h2_viewmodel_desert_eagle_silver" );
    precacheshader( "black" );
    precachemodel( "h2_weapon_grenade_m67_prop_obj" );
    precachemodel( "h2_prop_npc_cigar" );
    precachemodel( "electronics_pda" );
    precachemodel( "weapon_m4" );
    precachemodel( "weapon_m4_clip" );
    precachemodel( "characters_accessories_pencil" );
    precachemodel( "mil_mre_chocolate01" );
    precachemodel( "h2_weapon_desert_eagle_base_obj" );
    precachemodel( "h2_weapon_m4_grunt_obj" );
    precachemodel( "head_seal_udt_d_lifesaver" );
    precachemodel( "h2_fav_propane_blow_torch" );
    precachemodel( "h2_cs_tool_wrench_adjustable_lrg_anim" );
    precachemodel( "h2_fav_plier" );
    precachemodel( "h2_characters_accessories_pencil" );
    precachemodel( "h2_com_clipboard_wpaper_anim" );
    precachemodel( "h2_rkl_cellphone_appicon" );
    precachemodel( "h2_com_kitchen_utensil_spatula_small_animated" );
    precachemodel( "h1_prop_price_cigar" );
    precachemodel( "head_trn_arab_a" );
    precachemodel( "head_trn_arab_b" );
    precachemodel( "head_trn_arab_c" );
    precachemodel( "head_trn_arab_d" );
    precachemodel( "head_trn_arab_e" );
    precachemodel( "head_trn_arab_f" );
    precachemodel( "head_trn_arab_g" );
    precachemodel( "body_ally_arab_trn_smg_a" );
    precachemodel( "body_ally_arab_trn_assault_a" );
    precachemodel( "head_army_i_casual_wht" );
    precachemodel( "head_army_j_casual_blk" );
    precacheshader( "objective" );
    precacheshader( "hud_icon_c4" );
    precacheshader( "hud_dpad" );
    precacheshader( "hud_arrow_right" );
    precacheshader( "hud_arrow_down" );
    precacheshader( "hud_icon_40mm_grenade" );
    precacheshader( "popmenu_bg" );
    precacheshader( "h1_hud_tutorial_blur" );
    precacheshader( "h1_hud_tutorial_border" );
    precacheshader( "h1_hud_timer_blur" );
    precacheshader( "h1_hud_timer_border" );
    precacheshader( "h1_timer_on_flare" );
    precacheshader( "h1_timer_warning_flare" );
    precacheshader( "h1_hud_fng_results_blur" );
    precacheshader( "h1_hud_fng_results_border" );
    precacheshader( "h2_hud_ssdd_results_blur" );
    precacheshader( "h2_hud_ssdd_stats_blur" );
    precacheshader( "h2_hud_ssdd_stats_border" );
    precacheshader( "h2_hud_ssdd_results_line" );
    precachestring( &"TRAINER_OBJ_GET_RIFLE_AMMO" );
    precachestring( &"TRAINER_KILLED_CIVVIES_PENALTY" );
    precachestring( &"TRAINER_TRY_SPRINT_AGAIN" );
    precachestring( &"TRAINER_KILLED_CIVVIES_NONE" );
    precachestring( &"TRAINER_ACCURACY_LABEL" );
    precachestring( &"TRAINER_MISSION_FAIL_FIRE_IN_CAMP" );
    precachestring( &"TRAINER_SHOOT_THE_TARGET_THROUGH" );
    precachestring( &"TRAINER_HINT_SIDEARM" );
    precachestring( &"TRAINER_HINT_OBJECTIVE_MARKER" );
    precachestring( &"TRAINER_HINT_OBJECTIVE_REMINDER" );
    precachestring( &"TRAINER_HINT_OBJECTIVE_REMINDER2" );
    precachestring( &"TRAINER_HINT_HOLDING_SPRINT" );
    precachestring( &"TRAINER_AXIS_OPTION_MENU1_ALL" );
    precachestring( &"TRAINER_AXIS_OPTION_MENU2_ALL" );
    precachestring( &"TRAINER_HINT_OBJECTIVE_MARKER" );
    precachestring( &"TRAINER_HINT_CHECK_OBJECTIVES_PAUSED" );
    precachestring( &"TRAINER_HINT_CHECK_OBJECTIVES_SCORES" );
    precachestring( &"TRAINER_HINT_CHECK_OBJECTIVES_SCORES_PS3" );
    precachestring( &"TRAINER_HINT_OBJECTIVE_MARKER" );
    precachestring( &"TRAINER_HINT_OBJECTIVE_REMINDER" );
    precachestring( &"TRAINER_HINT_OBJECTIVE_REMINDER2" );
    precachestring( &"TRAINER_HINT_ATTACK_PC" );
    precachestring( &"TRAINER_HINT_ATTACK" );
    precachestring( &"TRAINER_HINT_HIP_ATTACK_PC" );
    precachestring( &"TRAINER_HINT_HIP_ATTACK" );
    precachestring( &"TRAINER_HINT_ADS_360" );
    precachestring( &"TRAINER_HINT_ADS" );
    precachestring( &"TRAINER_HINT_ADS_TOGGLE" );
    precachestring( &"TRAINER_HINT_ADS_THROW_360" );
    precachestring( &"TRAINER_HINT_ADS_THROW" );
    precachestring( &"TRAINER_HINT_ADS_TOGGLE_THROW" );
    precachestring( &"TRAINER_HINT_STOP_ADS" );
    precachestring( &"TRAINER_HINT_STOP_ADS_TOGGLE" );
    precachestring( &"TRAINER_HINT_STOP_ADS_THROW" );
    precachestring( &"TRAINER_HINT_STOP_ADS_TOGGLE_THROW" );
    precachestring( &"TRAINER_HINT_BREATH_MELEE" );
    precachestring( &"TRAINER_HINT_BREATH_SPRINT" );
    precachestring( &"TRAINER_HINT_BREATH_BINOCULARS" );
    precachestring( &"TRAINER_HINT_MELEE_BREATH" );
    precachestring( &"TRAINER_HINT_MELEE" );
    precachestring( &"TRAINER_HINT_MELEE_BREATH_CLICK" );
    precachestring( &"TRAINER_HINT_MELEE_CLICK" );
    precachestring( &"TRAINER_HINT_PRONE" );
    precachestring( &"TRAINER_HINT_PRONE_HOLD" );
    precachestring( &"TRAINER_HINT_PRONE_TOGGLE" );
    precachestring( &"TRAINER_HINT_PRONE_STANCE" );
    precachestring( &"TRAINER_HINT_PRONE_DOUBLE" );
    precachestring( &"TRAINER_HINT_CROUCH_STANCE" );
    precachestring( &"TRAINER_HINT_CROUCH_HOLD" );
    precachestring( &"TRAINER_HINT_CROUCH" );
    precachestring( &"TRAINER_HINT_CROUCH_TOGGLE" );
    precachestring( &"TRAINER_HINT_STAND" );
    precachestring( &"TRAINER_HINT_STAND_STANCE" );
    precachestring( &"TRAINER_HINT_JUMP_STAND" );
    precachestring( &"TRAINER_HINT_JUMP" );
    precachestring( &"TRAINER_HINT_SPRINT_PC" );
    precachestring( &"TRAINER_HINT_SPRINT" );
    precachestring( &"TRAINER_HINT_SPRINT_BREATH_PC" );
    precachestring( &"TRAINER_HINT_SPRINT_BREATH" );
    precachestring( &"TRAINER_HINT_HOLDING_SPRINT" );
    precachestring( &"TRAINER_HINT_HOLDING_SPRINT_BREATH" );
    precachestring( &"TRAINER_HINT_RELOAD_USE" );
    precachestring( &"TRAINER_HINT_RELOAD" );
    precachestring( &"TRAINER_HINT_MANTLE" );
    precachestring( &"TRAINER_HINT_ADS_SWITCH" );
    precachestring( &"TRAINER_HINT_ADS_SWITCH_SHOULDER" );
    precachestring( &"TRAINER_HINT_ADS_SWITCH_THROW" );
    precachestring( &"TRAINER_HINT_ADS_SWITCH_THROW_SHOULDER" );
    precachestring( &"TRAINER_HINT_SIDEARM_SWAP" );
    precachestring( &"TRAINER_HINT_PRIMARY_SWAP" );
    precachestring( &"TRAINER_HINT_SIDEARM" );
    precachestring( &"TRAINER_HINT_SIDEARM_RELOAD" );
    precachestring( &"TRAINER_HINT_SIDEARM_RELOAD_USE" );
    precachestring( &"TRAINER_HINT_FRAG" );
    precachestring( &"TRAINER_HINT_CROSSHAIR_CHANGES" );
    precachestring( &"TRAINER_HINT_TURN_AROUND" );
    precachestring( &"TRAINER_HINT_ADS_ACCURACY" );
    precachestring( &"TRAINER_SHIP_TOO_SLOW" );
    precachestring( &"TRAINER_CIVVIES_KILLED" );
    precachestring( &"TRAINER_ENEMIES_KILLED" );
    precachestring( &"TRAINER_YOUR_TIME_IN_SECONDS" );
    precachestring( &"TRAINER_YOUR_TIME" );
    precachestring( &"TRAINER_YOUR_FINAL_TIME" );
    precachestring( &"TRAINER_IW_BEST_TIME" );
    precachestring( &"TRAINER_YOUR_DECK_TIME" );
    precachestring( &"TRAINER_IW_DECK_TIME" );
    precachestring( &"TRAINER_SHIP_OUT_OF_FLASH" );
    precachestring( &"TRAINER_SHIP_JUMPED_TOO_EARLY" );
    precachestring( &"TRAINER_HIT_FRIENDLY" );
    precachestring( &"TRAINER_HINT_FLASH" );
    precachestring( &"TRAINER_MISSED_ENEMY_PENALTY_NONE" );
    precachestring( &"TRAINER_MISSED_ENEMY_PENALTY" );
    precachestring( &"TRAINER_ACCURACY_BONUS" );
    precachestring( &"TRAINER_SHIP_LABEL" );
    precachestring( &"TRAINER_DECK_LABEL" );
    precachestring( &"TRAINER_ACCURACY_NA" );
    precachestring( &"TRAINER_ACCURACY_BONUS_ZERO" );
    precachestring( &"TRAINER_RESULT_YOURTIME_TEXT" );
    precachestring( &"TRAINER_RESULT_ENEMIESHIT_TEXT" );
    precachestring( &"TRAINER_RESULT_CIVILSHIT_TEXT" );
    precachestring( &"TRAINER_RESULT_ACCURACY_TEXT" );
    precachestring( &"TRAINER_RESULT_FINALTIME_TEXT" );
    precachestring( &"TRAINER_RESULT_PERSONALBEST_TEXT" );
    precachestring( &"TRAINER_RESULT_NEW_RECORD" );
    precachestring( &"TRAINER_RESULT_ENEMIESHIT_VALUE" );
    precachestring( &"TRAINER_RESULT_CIVILSHIT_VALUE" );
    precachestring( &"TRAINER_RESULT_ACCURACY_STAT" );
    precachestring( &"TRAINER_RESULT_TIME_VALUE" );
    precachestring( &"TRAINER_RESULT_TIME_BONUS" );
    precachestring( &"TRAINER_RESULT_TIME_PENALTY" );
    precachestring( &"TRAINER_RESULT_TIME_NULL" );
    precachestring( &"TRAINER_RESULT_RECOMMENDEDDIFF" );
    precachestring( &"TRAINER_RESULT_FAILEDCOURSE" );
    precachestring( &"TRAINER_RESULT_TRYAGAIN" );
    precachestring( &"TRAINER_RESULT_RECRUIT" );
    precachestring( &"TRAINER_RESULT_REGULAR" );
    precachestring( &"TRAINER_RESULT_HARDENED" );
    precachestring( &"TRAINER_RESULT_VETERAN" );
    precachestring( &"TRAINER_HINT_GRENADE_TOO_LOW" );
    precachestring( &"TRAINER_HINT_GL_TOO_LOW" );
    precachestring( &"TRAINER_AXIS_OPTION_MENU1" );
    precachestring( &"TRAINER_AXIS_OPTION_MENU2" );
    precachestring( &"TRAINER_AXIS_OPTION_MENU1B" );
    precachestring( &"TRAINER_AXIS_OPTION_MENU2B" );
    precachestring( &"TRAINER_AXIS_OPTION_YES" );
    precachestring( &"TRAINER_AXIS_OPTION_NO" );
    precachestring( &"TRAINER_AXIS_OPTION_MENU1_ALL" );
    precachestring( &"TRAINER_AXIS_OPTION_MENU2_ALL" );
    precachestring( &"TRAINER_LOOK_UP" );
    precachestring( &"TRAINER_LOOK_DOWN" );
    precachestring( &"TRAINER_HINT_LAUNCHER_ICON" );
    precachestring( &"TRAINER_FIRED_NEAR_FRIENDLY" );
    precachestring( &"TRAINER_USE_YOUR_OBJECTIVE_INDICATOR" );
    precachestring( &"TRAINER_PICK_UP_A_RIFLE_FROM" );
    precachestring( &"TRAINER_GET_A_PISTOL_FROM_THE" );
    precachestring( &"TRAINER_MELEE_THE_WATERMELON" );
    precachestring( &"TRAINER_GO_OUTSIDE_AND_REPORT" );
    precachestring( &"TRAINER_PICK_UP_THE_RIFLE_WITH" );
    precachestring( &"TRAINER_PICK_UP_THE_C4_EXPLOSIVE" );
    precachestring( &"TRAINER_RUN_THE_OBSTACLE_COURSE" );
    precachestring( &"OBJ_GO_TO_THE_PIT" );
    precachestring( &"TRAINER_CLIMB_THE_LADDER" );
    precachestring( &"TRAINER_OBJ_EXIT_THE_PIT" );
    precachestring( &"TRAINER_DEBRIEF_WITH_DUNN" );
    precachestring( &"TRAINER_COMPLETE_COURSE" );
    precachestring( &"TRAINER_DEBRIEF_WITH_CPT_PRICE" );
    precachestring( &"TRAINER_ENTER_STATION_NUMBER" );
    precachestring( &"TRAINER_SHOOT_EACH_TARGET_WHILE" );
    precachestring( &"TRAINER_SHOOT_EACH_TARGET_WHILE1" );
    precachestring( &"TRAINER_SHOOT_EACH_TARGET_AS" );
    precachestring( &"TRAINER_EQUIP_THE_MP5_AND_PICK" );
    precachestring( &"TRAINER_CLEAR_THE_CARGOSHIP_BRIDGE" );
    precachestring( &"TRAINER_SWITCH_TO_YOUR_RIFLE" );
    precachestring( &"TRAINER_PICK_UP_THE_FRAG_GRENADES" );
    precachestring( &"TRAINER_ENTER_THE_SAFETY_PIT" );
    precachestring( &"TRAINER_THROW_A_GRENADE_INTO" );
    precachestring( &"TRAINER_RETURN_TO_THE_SAFETY" );
    precachestring( &"TRAINER_FIRE_AT_THE_WALL_WITH" );
    precachestring( &"TRAINER_PLANT_THE_C4_EXPLOSIVE" );
    precachestring( &"TRAINER_FIRE_YOUR_GRENADE_LAUNCHER" );
    precachestring( &"TRAINER_CLIMB_THE_LADDER1" );
    precachestring( &"TRAINER_SHOOT_A_TARGET_THROUGH" );
    precachestring( &"TRAINER_SLIDE_DOWN_THE_ROPE" );
    precachestring( &"TRAINER_COMPLETE_THE_DECK_MOCKUP" );
    precachestring( &"TRAINER_RECOMMENDED_LABEL" );
    precachestring( &"TRAINER_RECOMMENDED_LABEL2" );
    precachestring( &"TRAINER_RECOMMENDED_EASY" );
    precachestring( &"TRAINER_RECOMMENDED_NORMAL" );
    precachestring( &"TRAINER_RECOMMENDED_HARD" );
    precachestring( &"TRAINER_RECOMMENDED_VETERAN" );
    precachestring( &"TRAINER_RECOMMENDED_TRY_AGAIN" );
    precacherumble( "tank_rumble" );
}

_ID10760( var_0, var_1, var_2 )
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );

    if ( isdefined( var_2 ) && var_2 )
        _ID45995::_ID44171();

    _ID42407::_ID10805( var_0 );

    if ( isdefined( var_2 ) && var_2 )
        _ID45995::_ID46847();

    if ( isdefined( var_1 ) )
        _ID42237::_ID14402( var_1 );
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
    level._ID48851.sort = 1;
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

_ID48422( var_0, var_1, var_2, var_3 )
{
    _ID42237::_ID14400( var_0 );
    var_4 = level._ID25349.size;
    var_5 = spawnstruct();
    var_5.name = var_0;
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
        objective_add( var_3._ID19286, var_3._ID36185, var_3._ID37557, var_3._ID337.origin );
        var_3._ID47886 = 1;
    }
    else if ( isdefined( var_2 ) && var_2 )
        objective_state_nomessage( var_3._ID19286, var_3._ID36185 );
    else
        objective_state( var_3._ID19286, var_3._ID36185 );

    if ( var_3._ID36185 == "done" )
        _ID42237::_ID14402( var_0 );
}

_ID45810( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID37557 = var_1;
    objective_string( var_2._ID19286, var_1 );
}

_ID54163( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];
    var_3._ID47623 = var_1;

    if ( isdefined( var_2 ) )
        var_3.offsetpos = var_2;

    if ( !isdefined( var_3._ID47623 ) )
    {
        objective_current( var_3._ID19286, ( 0, 0, 0 ) );
        return;
    }

    if ( isdefined( var_3._ID47623 ) && isdefined( var_3.offsetpos ) )
    {
        _func_194( var_3._ID19286, var_3._ID47623, var_3.offsetpos );
        return;
    }

    objective_current( var_3._ID19286, var_3._ID47623.origin );
}

_ID49571( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];

    if ( !var_2 )
        objective_string( var_3._ID19286, var_1 );
    else
        objective_string( var_3._ID19286, var_1, var_2 );
}

_ID52947( var_0, var_1, var_2, var_3 )
{
    _ID7873();
    level endon( "clearing_hints" );
    var_4 = _ID50166( var_0 );
    var_5 = var_4._ID18611;
    var_6 = var_4._ID44463;
    var_7 = var_4._ID52017;
    _ID42407::_ID18611( var_5, undefined, undefined, var_2, var_7 );

    if ( isdefined( var_6 ) )
        level._ID18694 thread _ID42237::_ID47857( level.player, var_5, var_6, "clearing_hints" );

    if ( !isdefined( var_3 ) )
    {
        var_8 = "did_action_" + var_0;

        for ( var_9 = 0; var_9 < level._ID54149[var_0].size; var_9++ )
        {
            var_4 = level._ID54149[var_0][var_9];
            notifyoncommand( var_8, var_4._ID48396 );
        }

        if ( isdefined( var_1 ) )
            level.player thread _ID51856( var_8, var_1 );

        level.player waittill( var_8 );
        _ID44735( 0.5 );
        wait 0.5;
        _ID7873();
    }
}

_ID49084( var_0 )
{
    level endon( "clearing_hints" );
    _ID42237::_ID14413( var_0 );
    _ID7873();
}

_ID44409( var_0, var_1 )
{
    thread _ID49084( var_0 );
    level endon( var_0 );
    wait(var_1);
    _ID43551();
    wait 2;
    var_2 = 6;

    for (;;)
    {
        if ( var_2 > 20.0 )
        {
            thread _ID53988();
            refreshhudcompass();
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

    if ( level.player _ID42237::_ID20583() )
        _ID52947( "objectives", 6.0 );
    else
        _ID52947( "objectives_pc", 6.0 );

    var_1 = 0;

    for (;;)
    {
        if ( !_ID42237::_ID14385( var_0 ) && var_1 > 20.0 )
        {
            thread _ID53988();
            refreshhudcompass();
            var_1 = 0;
        }

        var_1 += 0.05;
        wait 0.05;
    }
}

_ID43551( var_0, var_1 )
{
    _ID7873();
    level endon( "clearing_hints" );
    _ID42407::_ID18611( &"TRAINER_HINT_OBJECTIVE_MARKER", undefined, undefined, 1 );
    wait 5;
    wait 0.5;
    _ID44735( 0.5 );
    _ID7873();
}

_ID53988()
{
    level endon( "mission failed" );
    level endon( "navigationTraining_end" );
    level endon( "obj_go_to_the_pit_done" );
    _ID7873();
    level endon( "clearing_hints" );
    _ID42407::_ID18611( &"TRAINER_HINT_OBJECTIVE_REMINDER", undefined, undefined, 1, "small_background" );
    wait 5;
    wait 2;
    _ID44735( 0.5 );
    _ID7873();
}

_ID7873()
{
    _ID42407::_ID18638( 0 );
    level notify( "clearing_hints" );
}

_ID44735( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    thread _ID42407::_ID18638( var_0 );
}

_ID46722( var_0, var_1, var_2 )
{
    _ID7873();
    level endon( "clearing_hints" );
    _ID42407::_ID18611( var_0, undefined, undefined, var_2 );

    if ( isdefined( var_1 ) )
        wait(var_1);
    else
        return;

    _ID44735( 0.5 );
    wait 0.5;
    _ID7873();
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
    self delete();
}

_ID51117()
{
    level._ID54149 = [];
    _ID44904( "objectives", "pause", &"TRAINER_HINT_CHECK_OBJECTIVES_PAUSED", &"TRAINER_HINT_CHECK_OBJECTIVES_SCORES" );
    _ID44904( "objectives_pc", "+scores", &"TRAINER_HINT_CHECK_OBJECTIVES_SCORES", &"TRAINER_HINT_CHECK_OBJECTIVES_PAUSED" );
    _ID44904( "pc_attack", "+attack", &"TRAINER_HINT_ATTACK_PC" );
    _ID44904( "pc_attack", "+attack_akimbo_accessible", &"TRAINER_HINT_HIP_ATTACK_PC" );
    _ID44904( "pc_hip_attack", "+attack", &"TRAINER_HINT_HIP_ATTACK_PC", undefined, "medium_background" );
    _ID44904( "pc_hip_attack", "+attack_akimbo_accessible", &"TRAINER_HINT_HIP_ATTACK_PC", undefined, "medium_background" );
    _ID44904( "hip_attack", "+attack", &"TRAINER_HINT_HIP_ATTACK", undefined, "medium_background" );
    _ID44904( "hip_attack", "+attack_akimbo_accessible", &"TRAINER_HINT_HIP_ATTACK_PC", undefined, "medium_background" );
    _ID44904( "attack", "+attack", &"TRAINER_HINT_ATTACK" );
    _ID44904( "attack", "+attack_akimbo_accessible", &"TRAINER_HINT_HIP_ATTACK_PC", undefined, "medium_background" );
    _ID44904( "stop_ads", "+speed_throw", &"TRAINER_HINT_STOP_ADS_THROW", &"TRAINER_HINT_STOP_ADS_TOGGLE_THROW" );
    _ID44904( "stop_ads", "+speed", &"TRAINER_HINT_STOP_ADS" );
    _ID44904( "stop_ads", "+toggleads_throw", &"TRAINER_HINT_STOP_ADS_TOGGLE_THROW", &"TRAINER_HINT_STOP_ADS_THROW" );
    _ID44904( "stop_ads", "toggleads", &"TRAINER_HINT_STOP_ADS_TOGGLE" );
    _ID44904( "ads_360", "+speed_throw", &"TRAINER_HINT_ADS_THROW_360" );
    _ID44904( "ads_360", "+speed", &"TRAINER_HINT_ADS_360" );
    _ID44904( "ads", "+speed_throw", &"TRAINER_HINT_ADS_THROW", &"TRAINER_HINT_ADS_TOGGLE_THROW" );
    _ID44904( "ads", "+speed", &"TRAINER_HINT_ADS" );
    _ID44904( "ads", "+toggleads_throw", &"TRAINER_HINT_ADS_TOGGLE_THROW", &"TRAINER_HINT_ADS_THROW" );
    _ID44904( "ads", "toggleads", &"TRAINER_HINT_ADS_TOGGLE" );
    _ID44904( "ads_switch", "+speed_throw", &"TRAINER_HINT_ADS_SWITCH_THROW" );
    _ID44904( "ads_switch", "+speed", &"TRAINER_HINT_ADS_SWITCH" );
    _ID44904( "ads_switch_shoulder", "+speed_throw", &"TRAINER_HINT_ADS_SWITCH_THROW_SHOULDER" );
    _ID44904( "ads_switch_shoulder", "+speed", &"TRAINER_HINT_ADS_SWITCH_SHOULDER" );
    _ID44904( "breath", "+melee_breath", &"TRAINER_HINT_BREATH_MELEE" );
    _ID44904( "breath", "+breath_sprint", &"TRAINER_HINT_BREATH_SPRINT" );
    _ID44904( "breath", "+holdbreath", &"TRAINER_HINT_BREATH" );
    _ID44904( "melee", "+melee", &"TRAINER_HINT_MELEE", undefined, "small_background" );
    _ID44904( "melee", "+melee_breath", &"TRAINER_HINT_MELEE", undefined, "small_background" );
    _ID44904( "melee", "+melee_zoom", &"TRAINER_HINT_MELEE", undefined, "small_background" );
    _ID44904( "prone", "goprone", &"TRAINER_HINT_PRONE" );
    _ID44904( "prone", "+stance", &"TRAINER_HINT_PRONE_STANCE" );
    _ID44904( "prone", "toggleprone", &"TRAINER_HINT_PRONE_TOGGLE" );
    _ID44904( "prone", "+prone", &"TRAINER_HINT_PRONE_HOLD" );
    _ID44904( "prone", "lowerstance", &"TRAINER_HINT_PRONE_DOUBLE" );
    _ID44904( "crouch", "+stance", &"TRAINER_HINT_CROUCH_STANCE", &"TRAINER_HINT_CROUCH_TOGGLE" );
    _ID44904( "crouch", "+togglecrouch", &"TRAINER_HINT_CROUCH_TOGGLE", &"TRAINER_HINT_CROUCH_STANCE" );
    _ID44904( "crouch", "+movedown", &"TRAINER_HINT_CROUCH_HOLD", &"TRAINER_HINT_CROUCH_STANCE" );
    _ID44904( "crouch", "gocrouch", &"TRAINER_HINT_CROUCH", &"TRAINER_HINT_CROUCH_STANCE" );
    _ID44904( "stand", "+stance", &"TRAINER_HINT_STAND_STANCE", undefined, "small_background" );
    _ID44904( "stand", "+gostand", &"TRAINER_HINT_STAND", undefined, "small_background" );
    _ID44904( "stand", "+moveup", &"TRAINER_HINT_STAND_UP", undefined, "small_background" );
    _ID44904( "stand", "+togglecrouch", &"TRAINER_HINT_STAND", undefined, "small_background" );
    _ID44904( "stand", "toggleprone", &"TRAINER_HINT_STAND", undefined, "small_background" );
    _ID44904( "jump", "+gostand", &"TRAINER_HINT_JUMP_STAND" );
    _ID44904( "jump", "+moveup", &"TRAINER_HINT_JUMP" );
    _ID44904( "sprint", "+breath_sprint", &"TRAINER_HINT_SPRINT", undefined, "medium_background" );
    _ID44904( "sprint", "+sprint", &"TRAINER_HINT_SPRINT", undefined, "medium_background" );
    _ID44904( "sprint", "+sprint_zoom", &"TRAINER_HINT_SPRINT", undefined, "medium_background" );
    _ID44904( "sprint_pc", "+breath_sprint", &"TRAINER_HINT_SPRINT_PC", undefined, "medium_background" );
    _ID44904( "sprint_pc", "+sprint", &"TRAINER_HINT_SPRINT_PC", undefined, "medium_background" );
    _ID44904( "sprint_pc", "+sprint_zoom", &"TRAINER_HINT_SPRINT_PC", undefined, "medium_background" );
    _ID44904( "sprint2", "+breath_sprint", &"TRAINER_HINT_HOLDING_SPRINT" );
    _ID44904( "sprint2", "+sprint", &"TRAINER_HINT_HOLDING_SPRINT" );
    _ID44904( "sprint2", "+sprint_zoom", &"TRAINER_HINT_HOLDING_SPRINT" );
    _ID44904( "reload", "+reload", &"TRAINER_HINT_RELOAD", undefined, "medium_background" );
    _ID44904( "reload", "+usereload", &"TRAINER_HINT_RELOAD_USE", undefined, "medium_background" );
    _ID44904( "mantle", "+gostand", &"TRAINER_HINT_MANTLE" );
    _ID44904( "sidearm", "weapnext", &"TRAINER_HINT_SIDEARM_SWAP" );
    _ID44904( "primary", "weapnext", &"TRAINER_HINT_PRIMARY_SWAP" );
    _ID44904( "frag", "+frag", &"TRAINER_HINT_FRAG", undefined, "medium_background" );
    _ID44904( "flash", "+smoke", &"TRAINER_HINT_FLASH" );
    _ID44904( "swap_launcher", "+activate", &"TRAINER_HINT_SWAP" );
    _ID44904( "swap_launcher", "+usereload", &"TRAINER_HINT_SWAP_RELOAD" );
    _ID44904( "firemode", "+actionslot 2", &"TRAINER_HINT_FIREMODE" );
    _ID44904( "attack_launcher", "+attack", &"TRAINER_HINT_LAUNCHER_ATTACK" );
    _ID44904( "swap_explosives", "+activate", &"TRAINER_HINT_EXPLOSIVES" );
    _ID44904( "swap_explosives", "+usereload", &"TRAINER_HINT_EXPLOSIVES_RELOAD" );
    _ID44904( "plant_explosives", "+activate", &"TRAINER_HINT_EXPLOSIVES_PLANT" );
    _ID44904( "plant_explosives", "+usereload", &"TRAINER_HINT_EXPLOSIVES_PLANT_RELOAD" );
    _ID44904( "equip_C4", "+actionslot 4", &"TRAINER_HINT_EQUIP_C4" );
    _ID44904( "throw_C4", "+toggleads_throw", &"TRAINER_HINT_THROW_C4_TOGGLE" );
    _ID44904( "throw_C4", "+speed_throw", &"TRAINER_HINT_THROW_C4_SPEED" );
    _ID44904( "throw_C4", "+throw", &"TRAINER_HINT_THROW_C4" );
    _ID44904( "detonate_C4", "+attack", &"TRAINER_DETONATE_C4" );
    _ID44904( "inspect_weapon", "+actionslot 2", &"TRAINER_HINT_WEAPON_INSPECT", &"TRAINER_HINT_WEAPON_INSPECT_PC" );
    _ID44904( "inspect_weapon_pc", "weapinspect", &"TRAINER_HINT_WEAPON_INSPECT_PC", &"TRAINER_HINT_WEAPON_INSPECT" );
    _ID44904( "look_inversion", "pause", &"TRAINER_HINT_INVERT_CONTROL", &"TRAINER_HINT_INVERT_CONTROL_PC" );
    _ID44904( "look_inversion_pc", "pause", &"TRAINER_HINT_INVERT_CONTROL_PC", &"TRAINER_HINT_INVERT_CONTROL" );
    _ID47823();
    _ID48182();
}

_ID44904( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( level._ID54149[var_0] ) )
        level._ID54149[var_0] = [];

    var_5 = spawnstruct();
    var_5._ID48396 = var_1;
    var_5._ID18611 = var_2;
    var_5._ID44463 = var_3;
    var_5._ID54630 = undefined;
    var_5._ID48140 = undefined;
    var_5._ID52017 = var_4;
    precachestring( var_2 );
    level._ID54149[var_0][level._ID54149[var_0].size] = var_5;
}

_ID50166( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID54149[var_0].size; var_1++ )
    {
        var_2 = level._ID54149[var_0][var_1];
        var_3 = getkeybinding( var_2._ID48396 );

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
        _ID50827( getcommandfromkey( "BUTTON_START" ), "BUTTON_START" );
        _ID50827( getcommandfromkey( "BUTTON_A" ), "BUTTON_A" );
        _ID50827( getcommandfromkey( "BUTTON_B" ), "BUTTON_B" );
        _ID50827( getcommandfromkey( "BUTTON_X" ), "BUTTON_X" );
        _ID50827( getcommandfromkey( "BUTTON_Y" ), "BUTTON_Y" );
        _ID50827( getcommandfromkey( "BUTTON_LSTICK" ), "BUTTON_LSTICK" );
        _ID50827( getcommandfromkey( "BUTTON_RSTICK" ), "BUTTON_RSTICK" );
        _ID50827( getcommandfromkey( "BUTTON_LSHLDR" ), "BUTTON_LSHLDR" );
        _ID50827( getcommandfromkey( "BUTTON_RSHLDR" ), "BUTTON_RSHLDR" );
        _ID50827( getcommandfromkey( "BUTTON_LTRIG" ), "BUTTON_LTRIG" );
        _ID50827( getcommandfromkey( "BUTTON_RTRIG" ), "BUTTON_RTRIG" );
    }
    else
    {
        for ( var_0 = 0; var_0 < level._ID49067.size; var_0++ )
            _ID50827( getcommandfromkey( level._ID49067[var_0] ), level._ID49067[var_0] );

        for ( var_0 = 0; var_0 < level._ID43412.size; var_0++ )
            _ID50827( getcommandfromkey( level._ID43412[var_0] ), level._ID43412[var_0] );
    }
}

_ID53149( var_0 )
{
    var_1 = getarraykeys( level._ID54149 );

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

    var_2 = getarraykeys( level._ID54149 );

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
    var_1 = getentarray( var_0, "targetname" );
    var_2 = undefined;
    var_3 = [];
    var_4 = [];
    var_5 = undefined;
    var_6 = undefined;

    foreach ( var_8 in var_1 )
    {
        if ( var_8.code_classname == "script_brushmodel" )
        {
            var_4[var_4.size] = var_8;

            if ( isdefined( var_8.script_noteworthy ) && var_8.script_noteworthy == "blocker" )
                var_6 = var_8;

            continue;
        }

        if ( var_8.code_classname == "script_origin" )
        {
            var_2 = var_8;
            continue;
        }

        if ( var_8.code_classname == "script_model" )
        {
            var_3[var_3.size] = var_8;
            continue;
        }

        if ( var_8.code_classname == "trigger_radius" )
        {
            var_5 = var_8;
            continue;
        }
    }

    foreach ( var_11 in var_3 )
        var_11 linkto( var_2 );

    foreach ( var_14 in var_4 )
        var_14 linkto( var_2 );

    var_16 = var_2;
    var_16._ID51925 = var_4;

    if ( isdefined( var_5 ) )
        var_16._ID1224 = var_5;

    return var_16;
}

_ID53265()
{
    self.origin = self.origin + ( 0, 0, -1000 );
}

_ID49617()
{
    self.origin = self.origin + ( 0, 0, 1000 );
}

_ID47372()
{
    switch ( self._ID1282 )
    {
        case "latvee":
        case "laatpv":
        case "laatpv_minigun":
            thread _ID53799();
            break;
        case "m1a1":
            thread _ID48430();
            break;
        case "cobra":
            thread _ID44060();
            break;
    }
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

    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "ai_ambient" )
    {
        self._ID11572 = 1;
        self._ID31276 = 0;
    }

    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "runners" )
    {
        self waittill( "goal" );
        self delete();
    }
}

_ID48033( var_0, var_1 )
{
    self endon( "death" );
    _ID47732();
    var_2 = undefined;
    var_3 = undefined;
    var_4 = 0;

    if ( isdefined( self.target ) )
        var_2 = getnode( self.target, "targetname" );

    thread _ID51288();

    if ( isarray( level._ID30895["generic"][var_0] ) )
    {
        var_4 = 1;

        if ( var_0 == "h2_training_basketball_guy2" )
        {
            var_5 = getent( "basketball", "targetname" );
            var_5._ID3189 = "basketball";
            var_5 _ID42407::_ID3428();
            self._ID12293 thread _ID42259::_ID3044( var_5, "training_basketball_loop", "stop_idle" );
        }

        self._ID12293 thread _ID42259::_ID3025( self, var_0, "stop_idle" );
        var_3 = var_0 + "_go";

        if ( _ID3012( var_3 ) )
            var_0 = var_3;
        else
            var_3 = undefined;
    }
    else
        self._ID12293 _ID42259::_ID3023( self, var_0 );

    if ( isdefined( self._ID31190 ) )
    {
        if ( isdefined( var_1 ) )
            _ID42237::_ID14421( self._ID31190, var_1 );
        else
            _ID42237::_ID14413( self._ID31190 );
    }

    if ( isdefined( var_2 ) )
    {
        self._ID10998 = 1;
        self._ID11025 = 1;
    }

    if ( !var_4 )
        self._ID12293 _ID42259::_ID3020( self, var_0 );

    if ( isdefined( var_3 ) )
    {
        self._ID12293 notify( "stop_idle" );
        self._ID12293 _ID42259::_ID3020( self, var_3 );
    }

    switch ( var_0 )
    {
        case "civilian_run_2_crawldeath":
            self kill();
            break;
    }

    if ( isdefined( var_2 ) )
    {
        self setgoalnode( var_2 );
        wait 1;
        self._ID10998 = 0;
        self._ID11025 = 0;
        self waittill( "goal" );

        if ( isdefined( self._ID8931 ) && self._ID8931 )
            _ID42407::_ID8925( "off" );
    }
    else if ( isdefined( level._ID30895["generic"][var_0 + "_idle"] ) )
        self._ID12293 thread _ID42259::_ID3025( self, var_0 + "_idle", "stop_idle" );

    if ( _ID3012( var_0 + "_react" ) )
    {
        if ( !var_4 )
            var_0 += "_idle";

        var_6 = var_0 + "_react";

        if ( _ID3012( var_0 + "_react2" ) )
            var_7 = var_0 + "_react2";
        else
            var_7 = var_6;

        while ( isdefined( self ) )
        {
            level waittill( "mortar_hit" );
            self._ID12293 notify( "stop_idle" );
            self notify( "stop_idle" );
            waitframe;

            if ( randomint( 100 ) > 50 )
                _ID42259::_ID3020( self, var_6 );
            else
                _ID42259::_ID3020( self, var_7 );

            thread _ID42259::_ID3025( self, var_0, "stop_idle" );
        }
    }
}

_ID51288()
{
    self waittill( "death" );

    if ( isdefined( self._ID12293 ) && !isspawner( self._ID12293 ) )
        self._ID12293 delete();
}

_ID49547()
{
    self endon( "death" );
    self pushplayer( 1 );
    self _meth_8583();
    _ID42407::_ID13024( "_stealth_normal" );
    _ID42407::_ID13025( "_stealth_normal" );
    self.walkdist = 1000;
    self._ID10998 = 1;
    wait 0.1;
    level._ID44636[level._ID44636.size] = self;
    thread h2_hide_ai_pit();
}

_ID53409()
{
    thread h2_hide_ai_pit();
    self endon( "death" );
    var_0 = self._ID70;
    var_1 = 0;

    if ( !isdefined( self._ID12293 ) )
        self._ID12293 = self._ID988;

    var_2 = undefined;

    switch ( var_0 )
    {
        case "h2_training_latveerepair_behindguy":
            _ID42407::_ID17509();
            self attach( "h2_com_clipboard_wpaper_anim", "TAG_INHAND", 1 );
            self attach( "h2_characters_accessories_pencil", "TAG_WEAPON_RIGHT", 1 );
            break;
        case "h2_training_burgertown_truck_soldier":
            _ID42407::_ID17509();
            self attach( "h2_com_clipboard_wpaper_anim", "TAG_INHAND", 1 );
            self attach( "h2_characters_accessories_pencil", "TAG_WEAPON_RIGHT", 1 );
            break;
        case "h2_training_latveerepair_topguy":
            self attach( "h2_fav_propane_blow_torch", "TAG_INHAND", 1 );
            _ID42407::_ID17509();
            break;
        case "h2_training_chilling_ground_ranger02":
            self attach( "h2_rkl_cellphone_appicon", "TAG_WEAPON_LEFT", 1 );
            _ID42407::_ID17509();
            break;
        case "h2_training_chilling_ground_ranger01":
            break;
        case "h2_roadkill_latvee_map_sequence_quiet_idle":
            self attach( "characters_accessories_pencil", "TAG_INHAND", 1 );
            _ID42407::_ID17509();
            break;
        case "h2_training_latveerepair_underguy":
            thread _ID46818();
            _ID42407::_ID17509();
            var_3 = getent( "h2_prop_wrench", "targetname" );
            self attach( "h2_cs_tool_wrench_adjustable_lrg_anim", "TAG_INHAND" );
            var_3 hide();
            break;
        case "roadkill_latvee_map_sequence_quiet_idle":
            self attach( "characters_accessories_pencil", "TAG_INHAND", 1 );
            _ID42407::_ID17509();
            break;
        case "training_locals_kneel":
            _ID42407::_ID17509();
            self._ID52855 = spawn( "script_model", ( 0, 0, 0 ) );
            self._ID52855 setmodel( "weapon_m4" );
            self._ID52855 hidepart( "TAG_THERMAL_SCOPE" );
            self._ID52855 hidepart( "TAG_FOREGRIP" );
            self._ID52855 hidepart( "TAG_ACOG_2" );
            self._ID52855 hidepart( "TAG_HEARTBEAT" );
            self._ID52855 hidepart( "TAG_RED_DOT" );
            self._ID52855 hidepart( "TAG_SHOTGUN" );
            self._ID52855 hidepart( "TAG_SILENCER" );
            self._ID52855.origin = self gettagorigin( "tag_inhand" );
            self._ID52855.angles = self gettagangles( "tag_inhand" );
            self._ID52855 linkto( self, "tag_inhand" );
            thread _ID42237::_ID10280( self._ID52855 );
            break;
        case "training_locals_groupA_guy1":
        case "training_locals_groupA_guy2":
        case "training_locals_groupB_guy1":
        case "training_locals_groupB_guy2":
        case "training_locals_sit":
            break;
        case "parabolic_leaning_guy_idle_training":
        case "parabolic_leaning_guy_idle":
        case "little_bird_casual_idle_guy1":
        case "killhouse_sas_2_idle":
            break;
        case "training_sleeping_in_chair":
            _ID42407::_ID17509();
            self._ID12293 = getent( self.target, "targetname" );
            break;
        case "civilian_run_2_crawldeath":
        case "death_explosion_run_F_v1":
            _ID42407::_ID17509();
            self._ID34237 = 1;
            self._ID24924 = 1;
            break;
        case "afgan_caves_sleeping_guard_idle":
            _ID42407::_ID17509();
            self._ID12293.origin = self._ID12293.origin + ( 0, 0, 26 );
            break;
        case "bunker_toss_idle_guy1":
        case "DC_Burning_artillery_reaction_v1_idle":
        case "DC_Burning_artillery_reaction_v2_idle":
        case "DC_Burning_bunker_stumble":
            _ID42407::_ID17509();
            break;
        case "unarmed_panickedrun_loop_V2":
            _ID42407::_ID32328( "unarmed_panickedrun_loop_V2" );
            _ID42407::_ID17509();
            self._ID10998 = 1;
            self._ID11025 = 1;
            self.goalradius = 16;
            self waittill( "goal" );
            _ID42407::_ID7892();
            wait 1;
            _ID42407::_ID17508();
            var_1 = 1;
            return;
        case "wounded_carry_fastwalk_carrier":
            var_4 = getent( self.target, "targetname" );
            var_5 = var_4 _ID42407::_ID35014();
            self._ID12293 _ID42259::_ID3023( self, var_0 );
            self._ID12293 _ID42259::_ID3023( var_5, "wounded_carry_fastwalk_wounded" );
            _ID42407::_ID17509();
            var_5 _ID42407::_ID17509();
            var_1 = 1;
            var_6 = getent( self._ID31273, "script_linkname" );

            if ( isdefined( self._ID31190 ) )
                _ID42237::_ID14413( self._ID31190 );

            while ( distance( var_6.origin, self.origin ) > 128 )
            {
                thread _ID42259::_ID3020( self, var_0 );
                _ID42259::_ID3020( var_5, "wounded_carry_fastwalk_wounded" );
            }

            thread _ID42259::_ID3020( self, "wounded_carry_putdown_closet_carrier" );
            _ID42259::_ID3020( var_5, "wounded_carry_putdown_closet_wounded" );
            thread _ID42259::_ID3025( var_5, "wounded_carry_closet_idle_wounded" );
            thread _ID42259::_ID3025( self, "wounded_carry_closet_idle_carrier" );
            return;
        case "sitting_guard_loadAK_idle":
            _ID42407::_ID17509();
            self attach( "weapon_m4_clip", "tag_inhand" );
            break;
        case "civilian_texting_standing":
        case "civilian_texting_sitting":
            _ID42407::_ID17509();
            self attach( "electronics_pda", "tag_inhand" );
            break;
        case "civilian_reader_1":
        case "civilian_reader_2":
            _ID42407::_ID17509();
            self attach( "open_book_static", "tag_inhand" );
            break;
        case "civilian_smoking_A":
        case "oilrig_balcony_smoke_idle":
        case "parabolic_leaning_guy_smoking_idle":
            thread _ID42358::_ID3551();
            break;
        case "cliffhanger_welder_wing":
            _ID42407::_ID17509();
            self._ID12293.origin = self._ID12293.origin + ( 0, 0, -3 );
            self attach( "machinery_welder_handle", "tag_inhand" );
            thread _ID14519();
            thread _ID42237::_ID27000( "scn_trainer_welders_working_loop" );
            break;
        case "roadkill_cover_radio_soldier2":
            break;
        case "roadkill_cover_spotter_idle":
            _ID42407::_ID17509();
            self attach( "weapon_binocular", "TAG_INHAND", 1 );
            break;
        case "roadkill_cover_radio_soldier3":
            self attach( "mil_mre_chocolate01", "TAG_INHAND", 1 );
            break;
        case "training_basketball_rest":
            _ID42407::_ID17509();
            self attach( "com_bottle2", "TAG_INHAND", 1 );
            break;
        case "favela_run_and_wave":
            break;
        case "h2_training_bbq_guy":
            _ID42407::_ID17509();
            self attach( "h2_com_kitchen_utensil_spatula_small_animated", "TAG_WEAPON_RIGHT" );
            break;
        case "h2_parabolic_leaning_guy_smoking_idle":
            _ID42407::_ID17509();
            thread _ID42358::_ID3551();
            break;
        default:
            _ID42407::_ID17509();
            break;
    }

    thread _ID48033( var_0, var_2 );
    thread h2_on_spawn_scriptedevent();
    thread h2_pit_intro();
}

ai_ambient_shooter_think()
{
    var_0 = getent( "shooterAnimationNode", "targetname" );
    self._ID3189 = "generic";

    if ( isdefined( self._ID988._ID70 ) && ( self._ID988._ID70 == "h2_training_shootingrange_formation_student" || self._ID988._ID70 == "h2_training_shootingrange_formation_teacher" ) )
        _ID42407::_ID14803( "scar_h", "primary" );
    else
        _ID42407::_ID14803( "m4_grunt_SSDD", "primary" );

    if ( isdefined( self._ID70 ) )
    {
        var_0 _ID42259::_ID3044( self, self._ID70 );
        return;
    }

    var_1 = "Stand";
    var_2 = undefined;

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        switch ( var_1 )
        {
            case "Stand":
                var_2 = randomint( 8 );

                if ( var_2 == 7 )
                    var_1 = "Crouch";

                _ID42259::_ID3111( self, "h2_training_stand_" + var_2 );
                continue;
            case "Crouch":
                var_2 = randomint( 4 );

                if ( var_2 == 3 )
                    var_1 = "Stand";

                _ID42259::_ID3111( self, "h2_training_crouch_" + var_2 );
                continue;
        }
    }
}

_ID47732()
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self.code_classname ) && self.code_classname == "script_model" )
        return;

    _ID42407::_ID32628( 1 );
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.grenadeawareness = 0;
}

_ID3012( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "generic";

    if ( isdefined( level._ID30895[var_1][var_0] ) )
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
    thread _ID36557();

    for (;;)
    {
        self waittillmatch( "looping anim",  "spark on"  );
        thread _ID51000();
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
        playfxontag( level._ID1426["welding_runner"], self, "tag_tip_fx" );
        self playsound( "elec_spark_welding_bursts" );
        wait(randomfloatrange( 0.25, 0.5 ));
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
    var_0.ignoreme = 1;
    var_0.ignoreall = 1;
    var_0 thread _ID42407::_ID22746();
    var_0 _ID42407::_ID10949();

    if ( var_0.team == "axis" )
        var_0 thread _ID52457();

    if ( var_0.team == "allies" )
        var_0 thread _ID45781();
}

_ID45781()
{

}

_ID52457()
{
    _ID42407::_ID14803( "m4_grunt_SSDD", "primary" );
    self.team = "allies";
}

_ID54175()
{
    if ( level.player hasweapon( level._ID43062 ) )
        return 1;
    else
        return 0;
}

_ID48594()
{
    if ( level.player _ID42237::_ID20583() )
    {
        if ( level.player getlocalplayerprofiledata( "autoAim" ) )
            return 1;
    }

    return 0;
}

_ID45711()
{
    var_0 = getent( "bridge_layer", "targetname" );
    var_1 = getent( "bridge_layer_bridge", "targetname" );
    var_0._ID3189 = "bridge_layer";
    var_0 _ID42407::_ID3428();
    var_1._ID3189 = "bridge_layer_bridge";
    var_1 _ID42407::_ID3428();
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2.origin = var_0.origin;
    var_2.angles = var_0.angles;
    var_2 thread _ID42259::_ID3018( var_0, "bridge_raise" );
    var_2 _ID42259::_ID3018( var_1, "bridge_raise" );
    var_0 playloopsound( "m1a1_abrams_idle_low" );
    _ID42237::_ID14413( "player_passing_barracks" );
    var_2 thread _ID42259::_ID3111( var_0, "bridge_raise" );
    var_2 _ID42259::_ID3111( var_1, "bridge_raise" );
}

_ID45742()
{
    level._ID43784 = undefined;
    level._ID45572 = undefined;
    level._ID52734 = level.player getweaponslistprimaries();
    level._ID43198 = level.player getweaponammostock( level._ID52734[0] );
    level._ID49719 = level.player getweaponammostock( level._ID52734[1] );
    level._ID48508 = level.player getweaponammoclip( level._ID52734[0] );
    level._ID46774 = level.player getweaponammoclip( level._ID52734[1] );
    level._ID45001 = level._ID43198 + level._ID49719 + level._ID48508 + level._ID46774;
    level waittill( "test_cleared" );
    level._ID52734 = level.player getweaponslistprimaries();
    level._ID43198 = level.player getweaponammostock( level._ID52734[0] );
    level._ID49719 = level.player getweaponammostock( level._ID52734[1] );
    level._ID48508 = level.player getweaponammoclip( level._ID52734[0] );
    level._ID46774 = level.player getweaponammoclip( level._ID52734[1] );
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
    _ID48344();
    var_4 = 1.0;
    var_5 = _ID42237::_ID54738();

    if ( var_5 == "LANGUAGE_SPANISH" || var_5 == "LANGUAGE_GERMAN" || var_5 == "LANGUAGE_FRENCH" || var_5 == "LANGUAGE_POLISH" || var_5 == "LANGUAGE_PORTUGUESE" || var_5 == "LANGUAGE_SPANISHNA" || var_5 == "LANGUAGE_RUSSIAN" || var_5 == "LANGUAGE_RUSSIAN_PARTIAL" || var_5 == "LANGUAGE_ITALIAN" )
        var_4 = 1.2;

    var_6 = int( 210 * var_4 );
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
    var_23 = ( gettime() - level._ID36040 ) / 1000;
    var_23 = _ID42407::_ID30292( var_23, 2 );
    level.backers = _ID42313::getstatbackers( var_9, var_8, var_6, var_7 );
    var_24 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_19, &"TRAINER_RESULT_YOURTIME_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_24;
    var_25 = _ID42407::settimeformat( var_23 );
    var_26 = undefined;
    var_27 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_19, var_25, undefined, var_26 );
    var_27.alignx = "right";
    var_27 setpulsefx( 30, 900000, 700 );
    level.resulthudelems[level.resulthudelems.size] = var_27;
    var_17 += var_15;
    wait(var_21);
    var_28 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_ENEMIESHIT_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_28;
    var_29 = _ID42313::_ID50277( var_11, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_ENEMIESHIT_VALUE", undefined, var_3 );
    var_29.alignx = "right";
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
    var_33.alignx = "right";
    level.resulthudelems[level.resulthudelems.size] = var_33;
    var_17 += var_14;
    wait(var_22);
    var_34 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_CIVILSHIT_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_34;
    var_35 = _ID42313::_ID50277( var_11, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_CIVILSHIT_VALUE", undefined, var_2 );
    var_35.alignx = "right";
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
    var_37.alignx = "right";
    level.resulthudelems[level.resulthudelems.size] = var_37;
    var_17 += var_14;
    wait(var_22);
    var_38 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_ACCURACY_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_38;
    var_39 = _ID42313::_ID50277( var_11, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_ACCURACY_STATS", undefined, level._ID45572 );
    var_39.alignx = "right";
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
    var_40.alignx = "right";
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
        setdvar( "recommended_gameskill", "0" );
        var_43 = &"TRAINER_RESULT_RECRUIT";
        level._ID46990 = 0;
    }
    else if ( var_41 > level._ID54224 )
    {
        setdvar( "recommended_gameskill", "1" );
        var_43 = &"TRAINER_RESULT_REGULAR";
        level._ID46990 = 1;
    }
    else if ( var_41 > level._ID46775 )
    {
        setdvar( "recommended_gameskill", "2" );
        var_43 = &"TRAINER_RESULT_HARDENED";
        var_31 = "bonus";
        level._ID46990 = 2;
    }
    else
    {
        setdvar( "recommended_gameskill", "3" );
        var_43 = &"TRAINER_RESULT_VETERAN";
        var_31 = "bonus";
        level._ID46990 = 3;
    }

    if ( var_41 < level.pitbosstime )
        _ID42407::_ID16864( "PIT_BOSS" );

    if ( var_41 < level.studentmastertime )
        _ID42407::_ID16864( "STUDENT_MASTER" );

    var_44 = var_17 + var_16 * 0.5;
    level.hud_separatorlines[0] = newhudelem();
    level.hud_separatorlines[0].x = var_9;
    level.hud_separatorlines[0].y = var_44;
    level.hud_separatorlines[0] setshader( "h2_hud_ssdd_results_line", var_6, 2 );
    level.hud_separatorlines[0].alignx = "right";
    level.hud_separatorlines[0].aligny = "top";
    level.hud_separatorlines[0].sort = 2;
    level.hud_separatorlines[0].foreground = 0;
    level.hud_separatorlines[0].horzalign = "right_adjustable";
    level.hud_separatorlines[0].vertalign = "top_adjustable";
    level.hud_separatorlines[0].alpha = 0.1;
    level.hud_separatorlines[0].hidewheninmenu = 1;
    level.hud_separatorlines[0].hidewhendead = 1;
    var_25 = _ID42407::settimeformat( var_41 );
    var_26 = undefined;
    var_17 += var_16;
    wait(var_22);
    var_45 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_19, &"TRAINER_RESULT_FINALTIME_TEXT" );
    level.resulthudelems[level.resulthudelems.size] = var_45;
    var_46 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_20, var_25, var_31, var_26 );
    var_46.alignx = "right";
    var_46 setpulsefx( 30, 900000, 1400 );
    level.resulthudelems[level.resulthudelems.size] = var_46;
    wait(var_22);
    var_47 = level.player getplayerdata( _ID42237::_ID44046(), "timeTrialTime" );
    var_48 = int( var_41 * 100 );
    var_49 = var_16;

    if ( level._ID46990 < level.faileddifficulty )
    {
        if ( ( var_48 < var_47 || var_47 == 0 ) && ( !_ID42237::_ID14385( "has_cheated" ) && !_ID49347::_ID44352() ) )
        {
            if ( var_47 > 0 )
            {
                var_17 += ( var_14 + 2 );
                var_50 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_NEW_RECORD", "bonus" );
                var_50.alignx = "right";
                var_50 setpulsefx( 30, 900000, 1400 );
                level.resulthudelems[level.resulthudelems.size] = var_50;
                var_49 = var_16 - 6;
            }

            level.player setplayerdata( _ID42237::_ID44046(), "timeTrialTime", var_48 );
        }
        else
        {
            var_17 += ( var_14 + 2 );
            var_50 = _ID42313::_ID50277( var_10, var_17, undefined, undefined, var_18, &"TRAINER_RESULT_PERSONALBEST_TEXT" );
            level.resulthudelems[level.resulthudelems.size] = var_50;
            var_25 = _ID42407::settimeformat( var_47 / 100 );
            var_26 = undefined;
            var_51 = _ID42313::_ID50277( var_12, var_17, undefined, undefined, var_18, var_25, undefined, var_26 );
            var_51.alignx = "right";
            level.resulthudelems[level.resulthudelems.size] = var_51;
        }
    }

    var_44 = var_17 + var_49 * 0.5;
    var_17 += var_49;
    level.hud_separatorlines[1] = newhudelem();
    level.hud_separatorlines[1].x = var_9;
    level.hud_separatorlines[1].y = var_44;
    level.hud_separatorlines[1] setshader( "h2_hud_ssdd_results_line", var_6, 2 );
    level.hud_separatorlines[1].alignx = "right";
    level.hud_separatorlines[1].aligny = "top";
    level.hud_separatorlines[1].sort = 2;
    level.hud_separatorlines[1].foreground = 0;
    level.hud_separatorlines[1].horzalign = "right_adjustable";
    level.hud_separatorlines[1].vertalign = "top_adjustable";
    level.hud_separatorlines[1].alpha = 0.1;
    level.hud_separatorlines[1].hidewheninmenu = 1;
    level.hud_separatorlines[1].hidewhendead = 1;
    var_52 = _ID42313::_ID50277( var_13, var_17, undefined, undefined, var_18, var_42 );
    var_52.alignx = "center";
    level.resulthudelems[level.resulthudelems.size] = var_52;
    var_17 += ( var_14 + 2 );
    var_53 = _ID42313::_ID50277( var_13, var_17, undefined, undefined, var_20, var_43, var_31 );
    var_53.alignx = "center";
    var_53 setpulsefx( 30, 900000, 1400 );
    level.resulthudelems[level.resulthudelems.size] = var_53;
    _ID42407::_ID10226( 180000, ::_ID48344 );
    return var_41;
}

_ID45523( var_0 )
{
    level.player waittill( var_0 );
    _ID42237::_ID14402( var_0 );
}

_ID53307()
{
    notifyoncommand( "sprinted", "+breath_sprint" );
    notifyoncommand( "sprinted", "+sprint" );
    notifyoncommand( "sprinted", "+sprint_zoom" );
}

_ID49691( var_0 )
{
    var_1 = undefined;

    if ( _ID42237::_ID14385( "first_pit_run_done" ) )
    {
        switch ( level._ID46990 )
        {
            case 1000:
                var_1 = "end_of_course_try_again";
                break;
            case 0:
                var_2 = randomintrange( 1, 4 );
                var_1 = "end_of_course_easy_0" + var_2;
                break;
            case 1:
                var_2 = randomintrange( 1, 4 );
                var_1 = "end_of_course_reg_0" + var_2;
                break;
            case 2:
                var_2 = randomintrange( 1, 4 );
                var_1 = "end_of_course_hard_0" + var_2;
                break;
            case 3:
                var_2 = randomintrange( 1, 3 );
                var_1 = "end_of_course_vet_0" + var_2;
                break;
        }
    }
    else
    {
        _ID42237::_ID14402( "first_pit_run_done" );

        switch ( level._ID46990 )
        {
            case 1000:
                var_1 = "end_of_course_try_again";
                break;
            case 0:
                var_1 = "end_of_course_easy_02";
                break;
            case 1:
                var_1 = "end_of_course_reg_03";
                break;
            case 2:
                var_1 = "end_of_course_hard_03";
                break;
            case 3:
                var_1 = "end_of_course_vet_01";
                break;
        }
    }

    return var_1;
}

check_kill_stats()
{
    self endon( "clear_course" );
    self waittill( "kill_stats_display_huds" );
    _ID48344();
}

_ID48344()
{
    if ( isdefined( level._ID50006 ) )
        _ID42313::_ID51785( level._ID50006 );

    if ( isdefined( level.resulthudelems ) )
    {
        foreach ( var_1 in level.resulthudelems )
            var_1 destroy();

        level.resulthudelems = undefined;
    }

    if ( isdefined( level.backers ) )
    {
        foreach ( var_1 in level.backers )
            var_1 destroy();

        level.backers = undefined;
    }

    if ( isdefined( level.hud_separatorlines ) )
    {
        foreach ( var_1 in level.hud_separatorlines )
            var_1 destroy();

        level.hud_separatorlines = undefined;
    }

    if ( isdefined( level.counterbackers ) )
    {
        foreach ( var_1 in level.counterbackers )
            var_1 destroy();

        level.counterbackers = undefined;
    }

    if ( isdefined( level.counterhudelems ) )
    {
        foreach ( var_1 in level.counterhudelems )
            var_1 destroy();

        level.counterhudelems = undefined;
    }

    if ( isdefined( level._ID49811 ) )
        level._ID49811 destroy();

    if ( isdefined( level._ID43810 ) )
        level._ID43810 destroy();
}

_ID48185()
{
    level endon( "kill_sprint_hint" );
    wait 0.5;
    var_0 = _ID50166( "sprint2" );
    _ID46722( var_0._ID18611, 5 );
}

_ID47630( var_0 )
{
    _ID48344();
    level endon( "kill_timer" );
    level._ID19201 = 20;
    level._ID36040 = gettime();

    if ( level._ID44400 )
        level thread check_kill_stats();

    thread cqb_timer_think();
    level._ID50006 = _ID42313::_ID15642();
    level._ID50006._ID37557.label = &"TRAINER_YOUR_TIME";
    level._ID50006 settenthstimerup( 0.05 );
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
    level._ID49811.alignx = "right";
    var_8 += var_7;
    var_12 = _ID42313::_ID50277( var_5, var_8, undefined, undefined, var_9, &"TRAINER_RESULT_CIVILSHIT_TEXT" );
    level.counterhudelems[level.counterhudelems.size] = var_12;
    level._ID43810 = _ID42313::_ID50277( var_6, var_8, undefined, undefined, var_10, &"TRAINER_RESULT_CIVILSHIT_VALUE", undefined, level._ID44713 );
    level._ID43810.alignx = "right";
    wait(var_0);
    _ID42313::_ID51785( level._ID50006 );
    _ID48344();
    level thread _ID43057();
}

_ID43057()
{
    level.player endon( "death" );
    level endon( "kill_timer" );
    var_0 = getdvarint( "killhouse_too_slow" );
    setdvar( "killhouse_too_slow", var_0 + 1 );
    level notify( "mission failed" );

    if ( !_ID42237::_ID14385( "player_course_end" ) )
        setdvar( "ui_deadquote", &"TRAINER_SHIP_TOO_SLOW" );
    else
        setdvar( "ui_deadquote", &"TRAINER_SHIP_DIDNT_SPRINT" );

    _ID42407::_ID23778();
}

_ID48889( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( !isdefined( var_0 ) )
        var_3 = -225;
    else
        var_3 = var_0;

    if ( !isdefined( var_1 ) )
        var_4 = 100;
    else
        var_4 = var_1;

    if ( isdefined( var_2 ) )
        var_5 = newclienthudelem( var_2 );
    else
        var_5 = newhudelem();

    var_5.alignx = "right";
    var_5.aligny = "middle";
    var_5.horzalign = "right";
    var_5.vertalign = "top";
    var_5.x = var_3;
    var_5.y = var_4;
    var_5.fontscale = 1.3;
    var_5.color = ( 0.8, 1, 0.8 );
    var_5.font = "objective";
    var_5.glowcolor = ( 0.26, 0.65, 0.32 );
    var_5.glowalpha = 0.2;
    var_5.foreground = 1;
    var_5.hidewheninmenu = 1;
    var_5.hidewhendead = 1;
    return var_5;
}

_ID54296()
{
    wait(randomfloatrange( 0.5, 1.0 ));
}

_ID46666()
{
    level endon( "end_sequence_starting" );
    level endon( "pit_dialogue_starting" );
    var_0 = getentarray( "conversation_orgs", "targetname" );
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
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

        foreach ( var_6 in var_4 )
        {
            var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
            var_1 _ID42237::_ID27077( var_6 );
            _ID54296();
        }

        var_3++;

        if ( var_3 > 2 )
            var_3 = 0;
    }
}

_ID45506()
{
    wait(randomfloatrange( 0.1, 1.2 ));
}

_ID45967()
{
    level endon( "end_sequence_starting" );
    _ID42237::_ID14402( "pit_dialogue_starting" );
    var_0 = getentarray( "conversation_orgs_pit", "targetname" );
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_masonstime" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar1_deserteagle" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_yomamma" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar1_veryfunny" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_maxspeed" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar3_triggertime" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar1_onlydelta" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_takecareofyourgf" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_keatingsays" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_headshot" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_funnyaccent" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar1_crosstraining" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_slowmotion" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar3_thatisgood" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_skimask" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_weirdman" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_twomanteam" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar2_wifewouldfreak" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_howdumb" );
    _ID45506();
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 _ID42237::_ID27077( "train_ar4_fightanybody" );
    wait 5;
    thread _ID46666();
}

_ID52670( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );
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

_ID49584()
{
    level endon( "mission failed" );

    for (;;)
    {
        _ID42237::_ID14413( "player_in_camp" );

        while ( _ID42237::_ID14385( "player_in_camp" ) )
        {
            level.player _ID42237::_ID41098( "begin_firing", "player_not_in_camp" );

            if ( _ID42237::_ID14385( "player_in_camp" ) )
            {
                wait 0.5;
                _ID48344();
                setdvar( "ui_deadquote", &"TRAINER_MISSION_FAIL_FIRE_IN_CAMP" );
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
        setsaveddvar( "cg_gundownanimdelaytime", 250 );
        level.player allowfire( 0 );
        level.player disableoffhandweapons( 1 );

        while ( _ID42237::_ID14385( "player_in_camp" ) )
            wait 1;

        setsaveddvar( "cg_gundownanimdelaytime", -1 );
        level.player allowfire( 1 );
        level.player disableoffhandweapons( 0 );
    }

    level.player enableweapons();
}

_ID45084()
{
    level endon( "mission failed" );
    var_0 = 0;
    var_1 = getentarray( "conversation_orgs", "targetname" );

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

                var_2 = _ID42237::_ID16182( level.player.origin, var_1 );
                var_2 _ID42237::_ID27077( level._ID30909["court_nag_0" + var_0] );
                var_0++;
                wait(randomfloatrange( 8, 12 ));
                continue;
            }

            break;
        }
    }
}

h2_ambient_ai_animation()
{
    thread h2_hide_ai_pit();
    _ID42407::_ID17509();
    _ID42259::_ID3111( self, self._ID70 );

    if ( isdefined( self ) )
        thread _ID42259::_ID3044( self, self.script_noteworthy );
}

h2_on_spawn_scriptedevent()
{
    var_0 = getentarray( "h2_training_triotalking", "targetname" );
    var_1 = getentarray( "h2_training_ai_ambient", "targetname" );
    var_2 = _ID42407::_ID3317( var_0, var_1 );

    foreach ( var_4 in var_2 )
    {
        var_4._ID3189 = "generic";
        var_4 _ID42407::_ID3428();
        var_4 _ID42407::_ID1947( ::h2_ambient_ai_animation );
    }
}

h2_pit_intro_animation()
{
    self endon( "death" );
    thread h2_pit_ai_delete();
    var_0 = spawnstruct();
    var_0.origin = ( -3546, 1751.26, -60 );

    if ( self.script_noteworthy != "soldier01" )
        _ID42407::_ID17509();

    thread h2_handle_pitanim( var_0 );
    _ID42237::_ID14413( "player_entering_course" );
    var_0 notify( "stop_loop" );
    var_0 thread _ID42259::_ID3044( self, "h2_training_shepherdwatching_" + self.script_noteworthy + "_loop", "stop_loop" );
    _ID42237::_ID14402( "pit_stop_loop" );
    level._ID46102 _ID42407::_ID41135( 0.9, undefined, 1, 60 );
    var_0 notify( "stop_loop" );
    var_0 _ID42259::_ID3111( self, "h2_training_shepherdwatching_" + self.script_noteworthy + "_forward" );
    var_0 _ID42259::_ID3044( self, "h2_training_shepherdwatching_" + self.script_noteworthy + "_Endloop" );
}

h2_handle_pitanim( var_0 )
{
    var_0 _ID42259::_ID3111( self, "h2_training_shepherdwatching_" + self.script_noteworthy + "_walk" );

    if ( !_ID42237::_ID14385( "pit_stop_loop" ) )
        var_0 _ID42259::_ID3044( self, "h2_training_shepherdwatching_" + self.script_noteworthy + "_loop", "stop_loop" );
}

h2_pit_ai_delete()
{
    _ID42237::_ID14413( "player_course_end_03" );
    _ID42407::_ID36519();
    self delete();
}

h2_pit_intro()
{
    var_0 = getentarray( "shepherd_intro", "targetname" );
    level._ID46102 = getent( "shepherd", "script_noteworthy" );
    level._ID46102 _ID42407::_ID1947( ::precognitive_paranoia_think );

    foreach ( var_2 in var_0 )
    {
        var_2._ID3189 = "generic";
        var_2 _ID42407::_ID3428();
        var_2 _ID42407::_ID1947( ::h2_pit_intro_animation );
    }
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
    level.digit_array_tenths = cqb_timer_get_planes( "tenths_plane" );
    level.digit_array_seconds = cqb_timer_get_planes( "seconds_plane" );
    level.digit_array_tens_of_seconds = cqb_timer_get_planes_seconds( "tens_of_seconds_plane" );
    level.digit_array_minutes = cqb_timer_get_planes( "minutes_plane" );
    cqb_digit_reset( level.digit_array_seconds );
    cqb_digit_reset( level.digit_array_tenths );
    cqb_digit_reset_seconds( level.digit_array_tens_of_seconds );
    cqb_digit_reset( level.digit_array_minutes );
}

cqb_timer_get_planes( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 <= 9; var_2++ )
        var_1[var_2] = getent( var_0 + "_" + _ID42237::_ID37877( var_2 ), "targetname" );

    return var_1;
}

cqb_timer_get_planes_seconds( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 <= 5; var_2++ )
        var_1[var_2] = getent( var_0 + "_" + _ID42237::_ID37877( var_2 ), "targetname" );

    return var_1;
}

cqb_digit_reset( var_0 )
{
    for ( var_1 = 1; var_1 <= 9; var_1++ )
        var_0[var_1] hide();

    var_0[0] show();
}

cqb_digit_reset_seconds( var_0 )
{
    for ( var_1 = 1; var_1 <= 5; var_1++ )
        var_0[var_1] hide();

    var_0[0] show();
}

cqb_timer_think()
{
    level endon( "kill_timer" );
    wait 0.1;
    level._ID36040 = gettime();
    cqb_digit_reset( level.digit_array_seconds );
    cqb_digit_reset( level.digit_array_tenths );
    cqb_digit_reset_seconds( level.digit_array_tens_of_seconds );
    cqb_digit_reset( level.digit_array_minutes );
    var_0 = 9;
    var_1 = 9;
    var_2 = 9;
    var_3 = 9;

    for (;;)
    {
        var_4 = ( gettime() - level._ID36040 ) * 0.001;
        var_5 = floor( var_4 );
        var_6 = int( ( var_4 - var_5 ) * 10 );
        var_7 = int( _ID42237::_ID648( var_5, 10 ) );
        var_8 = int( _ID42237::_ID648( var_5 * 0.1, 6 ) );
        var_9 = int( floor( var_5 * 0.0168 ) );

        if ( var_6 != var_0 )
        {
            var_0 = var_6;
            cqb_timer_change_digit( var_6, level.digit_array_tenths );
        }

        if ( var_7 != var_1 )
        {
            var_1 = var_7;
            cqb_timer_change_digit( var_7, level.digit_array_seconds );
        }

        if ( var_8 != var_2 )
        {
            var_2 = var_8;
            cqb_timer_change_digit_seconds( var_8, level.digit_array_tens_of_seconds );
        }

        if ( var_9 != var_3 )
        {
            var_3 = var_9;
            cqb_timer_change_digit( var_9, level.digit_array_minutes );
        }

        wait 0.05;
    }
}

cqb_timer_change_digit( var_0, var_1 )
{
    switch ( var_0 )
    {
        case 0:
            var_1[9] hide();
            var_1[0] show();
            break;
        case 1:
            var_1[0] hide();
            var_1[1] show();
            break;
        case 2:
            var_1[1] hide();
            var_1[2] show();
            break;
        case 3:
            var_1[2] hide();
            var_1[3] show();
            break;
        case 4:
            var_1[3] hide();
            var_1[4] show();
            break;
        case 5:
            var_1[4] hide();
            var_1[5] show();
            break;
        case 6:
            var_1[5] hide();
            var_1[6] show();
            break;
        case 7:
            var_1[6] hide();
            var_1[7] show();
            break;
        case 8:
            var_1[7] hide();
            var_1[8] show();
            break;
        case 9:
            var_1[8] hide();
            var_1[9] show();
            break;
    }
}

cqb_timer_change_digit_seconds( var_0, var_1 )
{
    switch ( var_0 )
    {
        case 0:
            var_1[5] hide();
            var_1[0] show();
            break;
        case 1:
            var_1[0] hide();
            var_1[1] show();
            break;
        case 2:
            var_1[1] hide();
            var_1[2] show();
            break;
        case 3:
            var_1[2] hide();
            var_1[3] show();
            break;
        case 4:
            var_1[3] hide();
            var_1[4] show();
            break;
        case 5:
            var_1[4] hide();
            var_1[5] show();
            break;
    }
}

sand_ground_ending_trainer()
{
    _ID42237::_ID14413( "player_exiting_course_00" );
    _ID42234::_ID13611( "sand_ground_ending_trainer" );
}

h2_weapon_inspect_tutorial()
{
    var_0 = getent( "pickup_sidearm", "targetname" );

    while ( !_ID42237::_ID14385( "player_inside_course" ) )
    {
        if ( level.player hasweapon( level._ID53299 ) )
        {
            if ( level.player _ID42237::_ID20583() )
                _ID52947( "inspect_weapon" );
            else
                _ID52947( "inspect_weapon_pc" );

            break;
        }

        waittillframeend;
    }
}

h2_gate_outro()
{
    var_0 = getentarray( "h2_gate_open", "targetname" );
    var_1 = getentarray( "h2_gate_close", "targetname" );

    foreach ( var_3 in var_0 )
        var_3 _ID42407::_ID18512();

    _ID42237::_ID14413( "player_done_with_course" );

    foreach ( var_3 in var_0 )
        var_3 show();

    foreach ( var_8 in var_1 )
        var_8 _ID42407::_ID18512();
}

h2_sniper_ee()
{
    var_0 = getent( "h2_target_01_ee", "targetname" );
    var_1 = getent( "h2_target_02_ee", "targetname" );
    var_2 = getent( "h2_target_03_ee", "targetname" );
    _ID42237::_ID14400( "sniper_ee_complete" );
    _ID42237::_ID14400( "h2_target_01_ee_dead" );
    _ID42237::_ID14400( "h2_target_02_ee_dead" );
    _ID42237::_ID14400( "h2_target_03_ee_dead" );
    thread h2_clown_sniper_ee( "h2_sniper_zone_01_ee", var_0 );
    thread h2_clown_sniper_ee( "h2_sniper_zone_02_ee", var_1 );
    thread h2_clown_sniper_ee( "h2_sniper_zone_03_ee", var_2 );
    _ID42237::_ID14414( "h2_target_01_ee_dead", "h2_target_02_ee_dead", "h2_target_03_ee_dead" );
    _ID42237::_ID14402( "sniper_ee_complete" );
    _ID42407::_ID16864( "CLOWN_IN_TRAINING" );
}

h2_clown_sniper_ee( var_0, var_1 )
{
    var_2 = "barrett";

    while ( !_ID42237::_ID14385( "sniper_ee_complete" ) )
    {
        var_1 hide();
        _ID42237::_ID14413( var_0 );

        if ( level.player hasweapon( var_2 ) )
        {
            thread h2_hide_show_clown( var_0, var_1 );
            var_1 setcandamage( 1 );

            while ( _ID42237::_ID14385( var_0 ) )
            {
                var_1 waittill( "damage",  var_3, var_4, var_3, var_3, var_3, var_3, var_3, var_3, var_3, var_5  );

                if ( isplayernumber( var_4 ) && var_5 == "barrett" )
                {
                    playfx( level._ID1426["clown_confetti_firework_ee"], var_1.origin );
                    _ID42237::_ID14402( var_1.targetname + "_dead" );
                    var_1 thread _ID42407::_ID27079( "scn_trainer_clown_hit" );
                    var_1 delete();
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
        var_1 show();
        _ID42237::_ID14426( var_0 );
        var_1 hide();
    }
}

h2_shootingrange_tank()
{
    var_0 = getent( "h2_tank_target", "targetname" );

    while ( !_ID42237::_ID14385( "player_entering_course" ) )
    {
        wait(randomfloatrange( 8, 10 ));
        self setturrettargetent( var_0, _ID42237::_ID28978( -5, 5 ) );
        self fireweapon();
    }
}

h2_end_collision()
{
    var_0 = getentarray( "h2_end_collision", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 notsolid();

    _ID42237::_ID14413( "player_done_with_course" );

    foreach ( var_2 in var_0 )
        var_2 solid();
}

h2_intro_gundown()
{
    while ( !_ID42237::_ID14385( "training_intro_end_anims" ) )
    {
        if ( _ID42237::_ID14385( "h2_intro_gundown" ) || _ID42237::_ID14385( "h2_intro_gundown2" ) || _ID42237::_ID14385( "h2_intro_gundown3" ) || _ID42237::_ID14385( "h2_intro_gundown4" ) )
            setsaveddvar( "cg_gundownanimdelaytime", 50 );
        else
            setsaveddvar( "cg_gundownanimdelaytime", -1 );

        waittillframeend;
    }
}
#using_animtree("script_model");

h2_ac130_animation()
{
    var_0 = getent( "h2_ac130", "targetname" );
    var_0._ID3189 = "ac130";
    var_0 _ID42407::_ID3428();
    var_1 = spawnstruct();
    var_1.origin = ( -7350, -5440, 8 );
    var_1 _ID42259::_ID3018( var_0, "ac130_intro" );
    var_0 setanim( %h2_training_ac130_intro_rotors );
    _ID42237::_ID14413( "tower_02" );
    var_0 playloopsound( "scn_trainer_tower_ac130_lp" );
    var_1 _ID42259::_ID3111( var_0, "ac130_intro", undefined, undefined, undefined, undefined, 0 );
}

h2_hide_staticdmodelgroup( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) && var_2 )
        _func_31b( var_1 );
    else
        _func_31c( var_1 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );

        if ( isdefined( var_2 ) && var_2 )
            _func_31c( var_1 );
        else
            _func_31b( var_1 );

        _ID42237::_ID14426( var_0 );

        if ( isdefined( var_2 ) && var_2 )
        {
            _func_31b( var_1 );
            continue;
        }

        _func_31c( var_1 );
    }
}

windstock_animations()
{
    var_0 = getentarray( "windstock_animated", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42407::_ID3428( "windstock" );
        var_2 thread _ID42259::_ID3044( var_2, "windstock_animated_fast" );
    }
}

h2_basketball_guys_headswap()
{
    _ID42226::_ID32651( self._ID31388 );
}

h2_pit_ai_animation()
{
    self._ID3189 = "generic";
    _ID45995::_ID48826( "head", level.player, 2000, 85, 66, 0, 30, 0, 0 );

    if ( self._ID70 == "oilrig_balcony_smoke_idle" )
    {
        var_0 = spawn( "script_origin", self.origin );
        var_0.angles = self.angles;
        var_0 _ID42259::_ID3044( self, self._ID70 );
    }
    else
        _ID42259::_ID3044( self, self._ID70 );
}

h2_loddistscale_outro()
{
    _ID42237::_ID14413( "player_done_with_course" );
    setsaveddvar( "r_lodFOVFixedScale", 2 );
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
            self hide();

        if ( !_ID42237::_ID14385( "h2_hide_ai_pit" ) )
            self show();

        wait 1;
    }
}

init_scope_fov_setup()
{
    _ID42237::_ID14413( "player_course_stairs2" );
    setsaveddvar( "r_lodFOVScaleOverride", 1 );
    setsaveddvar( "r_lodFOVScaleOverrideStartMaxAngle", 65 );
    setsaveddvar( "r_lodFOVScaleOverrideStartMinAngle", 55 );
    setsaveddvar( "r_lodFOVScaleOverrideStopMaxAngle", 15 );
    setsaveddvar( "r_lodFOVScaleOverrideStopMinAngle", 0 );
    setsaveddvar( "r_lodFOVScaleOverrideAmount", 0.75 );
}

_ID22796()
{
    var_0 = self.model;

    if ( !isdefined( level._ID40116[var_0] ) )
        return;

    self endon( "death" );

    for (;;)
    {
        self waittill( "weapon_fired" );

        if ( distancesquared( level.player.origin, self.origin ) > 1690000 )
            continue;

        playfxontag( level._ID1426["abrams_deck_dust_trainer"], self, "tag_engine_exhaust" );
        var_1 = self gettagorigin( "tag_flash" );
        var_2 = physicstrace( var_1, var_1 + ( 0, 0, -128 ) );
        physicsexplosionsphere( var_2, 192, 100, 1 );
    }
}

h2_force_body_for_trainees()
{
    switch ( self._ID70 )
    {
        case "training_intro_soldier1":
            self setmodel( "body_ally_arab_trn_assault_a" );
            break;
        case "training_intro_soldier2":
            self setmodel( "body_ally_arab_trn_smg_a" );
            break;
        case "training_intro_soldier3":
            self setmodel( "body_ally_arab_trn_smg_a" );
            break;
        case "training_intro_soldier4":
            self setmodel( "body_ally_arab_trn_assault_a" );
            break;
        case "training_intro_soldier6":
            self setmodel( "body_ally_arab_trn_smg_a" );
            break;
        case "training_intro_soldier7":
            self setmodel( "body_ally_arab_trn_assault_a" );
            break;
    }
}
