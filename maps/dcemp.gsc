// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" )
    {
        maps\dcemp_beautiful_corner::_ID50786();
        return;
    }

    _unknown_007A();
    _ID42407::_ID10126( ::_unknown_1B9A );
    _ID42407::_ID1951( "intro", ::_unknown_1BA8, "[intro] -> play end of dc burning", ::_unknown_0282 );
    _ID42407::_ID1951( "iss", ::_unknown_1BCB, "[iss] -> see the emp up close and personal", ::_unknown_02E5 );
    _ID42407::_ID1951( "emp", ::_unknown_1C0E, "[emp] -> see the emp effects from the ground", ::_unknown_06B4 );
    _ID42407::_ID1951( "street", ::_unknown_1CAA, "[street] -> find cover off the street", ::_unknown_092D );
    _ID42407::_ID1951( "corner", ::_unknown_1D11, "[corner] -> watch the plane crash", ::_unknown_0C13 );
    _ID42407::_ID1951( "meetup", ::_unknown_1DD2, "[meetup] -> meetup with some allies", ::_unknown_0DB5 );
    _ID42407::_ID1951( "lobby", ::_unknown_1E39, "[lobby] -> sneak through the lobby", ::_unknown_0FC2 );
    _ID42407::_ID1951( "office", ::_unknown_1ED7, "[office] -> fight through the office", ::_unknown_12C2 );
    _ID42407::_ID1951( "parking", ::_unknown_1F7F, "[parking] -> traverse the parking deck", ::_unknown_1414 );
    _ID42407::_ID1951( "plaza", ::_unknown_1FCD, "[plaza] -> continue through the plaza", ::_unknown_180E );
    _ID42407::_ID1951( "tunnels", maps\dcemp_endpart::_ID49665, "[tunnels] -> traverse the tunnels", maps\dcemp_endpart::_ID46100 );
    _unknown_0283();
    thread _unknown_20B1();
    thread maps\dcemp_code::hide_elements_intro();
    thread maps\dcemp_code::static_model_group_setup();
    thread maps\dcemp_code::fire_react_trigger();
    thread maps\dcemp_code::hide_mannequins();
}

_ID46512()
{
    _ID42237::_ID14400( "intro_fx" );
    _ID42237::_ID14400( "iss_fx" );
    _ID42237::_ID14400( "rain_fx" );
    _ID42237::_ID14400( "rain_fx2" );
    _ID42237::_ID14400( "end_fx" );
    _ID42237::_ID14400( "script2model_intro" );
    _ID42237::_ID14400( "script2model_iss" );
    _ID42237::_ID14400( "script2model_end" );
    _ID42237::_ID14400( "team_initialized" );
    _ID42237::_ID14400( "spotlight_lightning" );
    _ID42237::_ID14400( "iss_player_first_controls" );
    _ID42237::_ID14400( "iss_player_drive_controls" );
    _ID42237::_ID14400( "iss_organize_ents" );
    _ID42237::_ID14400( "iss_see_icbm" );
    _ID42237::_ID14400( "iss_stop_sounds" );
    _ID42237::_ID14400( "iss_space_nuke" );
    _ID42237::_ID14400( "iss_destroy_first_wave" );
    _ID42237::_ID14400( "iss_destroy_blast_wave" );
    _ID42237::_ID14400( "iss_done" );
    _ID42237::_ID14400( "iss_start_dialogue" );
    _ID42237::_ID14400( "iss_start_breathing" );
    _ID42237::_ID14400( "iss_copythat" );
    _ID42237::_ID14400( "iss_anyword" );
    _ID42237::_ID14400( "iss_nag_dialogue" );
    _ID42237::_ID14400( "iss_lights_out" );
    _ID42237::_ID14400( "emp_main" );
    _ID42237::_ID14400( "emp_jet_crash" );
    _ID42237::_ID14400( "emp_heli_crash" );
    _ID42237::_ID14400( "emp_heli_crash_go" );
    _ID42237::_ID14400( "street_main" );
    _ID42237::_ID14400( "do_player_crash_fx" );
    _ID42237::_ID14400( "street_crash_cop" );
    _ID42237::_ID14400( "street_crash_left" );
    _ID42237::_ID14400( "street_guy_fall" );
    _ID42237::_ID14400( "street_crash_hide" );
    _ID42237::_ID14400( "street_crash_left2" );
    _ID42237::_ID14400( "Sandler_can_jump" );
    _ID42237::_ID14400( "squadReadyToLeave" );
    _ID42237::_ID14400( "street_crash_heli_first" );
    _ID42237::_ID14400( "street_crash_btr_first" );
    _ID42237::_ID14400( "street_crash_heli_hide" );
    _ID42237::_ID14400( "street_crash_heli_done" );
    _ID42237::_ID14400( "street_safe" );
    _ID42237::_ID14400( "street_btr_death" );
    _ID42237::_ID14400( "street_btr_scene_done" );
    _ID42237::_ID14400( "corner_start_crash_scene" );
    _ID42237::_ID14400( "corner_engine_crash" );
    _ID42237::_ID14400( "corner_engine_hit" );
    _ID42237::_ID14400( "corner_main" );
    _ID42237::_ID14400( "corner_look_outside" );
    _ID42237::_ID14400( "corner_moveout" );
    _ID42237::_ID14400( "corner_crash_scene_done" );
    _ID42237::_ID14400( "start_rain_ambience" );
    _ID42237::_ID14400( "meetup_main" );
    _ID42237::_ID14400( "meetup_moveout" );
    _ID42237::_ID14400( "meetup_challenge_start" );
    _ID42237::_ID14400( "meetup_challenge_done" );
    _ID42237::_ID14400( "meetup_do_scripted_scene" );
    _ID42237::_ID14400( "meetup_runner_safe" );
    _ID42237::_ID14400( "meetup_runner_leave" );
    _ID42237::_ID14400( "meetup_runner_sprint" );
    _ID42237::_ID14400( "lobby_main" );
    _ID42237::_ID14400( "lobby_check" );
    _ID42237::_ID14400( "lobby_clear" );
    _ID42237::_ID14400( "lobby_door_ready" );
    _ID42237::_ID14400( "lobby_robo_death" );
    _ID42237::_ID14400( "lobby_door_kick" );
    _ID42237::_ID14400( "office_main" );
    _ID42237::_ID14400( "office_done" );
    _ID42237::_ID14400( "office_go_red" );
    _ID42237::_ID14400( "office_enemies_wave3" );
    _ID42237::_ID14400( "parking_main" );
    _ID42237::_ID14400( "parking_moveout" );
    _ID42237::_ID14400( "parking_moveout2" );
    _ID42237::_ID14400( "parking_moveout3" );
    _ID42237::_ID14400( "parking_checking_body" );
    _ID42237::_ID14400( "parking_btr_shot_at" );
    _ID42237::_ID14400( "parking_open_fire" );
    _ID42237::_ID14400( "plaza_to_street" );
    _ID42237::_ID14400( "plaza_show_enemies" );
    _ID42237::_ID14400( "plaza_open_fire" );
    _ID42237::_ID14400( "plaza_prepare_throw" );
    _ID42237::_ID14400( "plaza_throw_react" );
    _ID42237::_ID14400( "plaza_flare_thrown" );
    _ID42237::_ID14400( "plaza_moveout_exit" );
    _ID42237::_ID14400( "plaza_moveout_exit2" );
    _ID42237::_ID14400( "tunnels_main" );
    _ID42237::_ID14400( "emp_lighting_flash" );
    _ID42237::_ID14400( "office1" );
    _ID42237::_ID14400( "foley_street_dialog_end" );
    _ID42237::_ID14400( "parking_dialog_resume" );
    _ID42237::_ID14400( "player_and_squad_safe" );
    _ID42237::_ID14400( "tunnels_foley_dialogue" );
    _ID42237::_ID14400( "intro_heli_crashing" );
}

_ID44616()
{
    if ( !_func_02F( level._ID15079 ) )
        level._ID15079 = [];

    level._ID15079["create_triggerfx"] = maps\dcemp_code::_ID50336;

    if ( _func_039( "createfx" ) == "on" )
    {
        _ID42237::_ID14402( "rain_fx" );
        _ID42237::_ID14402( "end_fx" );
    }
}

_ID46438()
{
    _func_14C( "ch_street_light_01_on" );
    _func_14C( "iss_prop_3" );
    _func_14C( "iss_prop_5" );
    _func_14C( "com_outdoor_switch" );
    _func_14C( "iss_prop_7" );
    _func_14C( "iss_grip_1" );
    _func_14C( "iss_prop_1" );
    _func_14C( "iss_grip_2" );
    _func_14C( "iss_prop_8" );
    _func_14C( "iss_sail_frame" );
    _func_14C( "iss_sail_center" );
    _func_14C( "iss_prop_6" );
    _func_14C( "iss_prop_9" );
    _func_14C( "bg_iss" );
    _ID42407::_ID10226( 0.5, maps\dcemp_code::_ID52244 );
}

_ID49840()
{
    _unknown_0612();
    var_0 = _func_1A2( "trigger_multiple_dyn_photo_copier", "classname" );
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "trigger_multiple_dyn_copier_no_light", "classname" ) );
    _ID42237::_ID3294( var_0, ::_meth_80B7 );
    _ID47681::_ID616();
    var_1 = _func_1A2( "mask_ents", "targetname" );
    _ID42407::_ID22998( var_1 );
    _ID42407::_ID23000( var_1 );
    _ID49022::_ID616();
    _ID54334::_ID616();
    _ID48462::_ID616();
    _ID52596::_ID616();
    maps\dc_crashsite::_ID616();
    maps\dcemp_anim::_ID616();
    _ID42323::_ID616();
    level._ID45979 = 4.5;
    thread _ID54017::_ID53823();
    _ID42287::_ID521();
    maps\dcemp_aud::_ID616();
    _ID42272::_ID33575( "compass_map_dcemp" );
    maps\dcemp_code::_ID53122();
    _func_14C( "hud_space_helmet_overlay" );
    _func_14C( "prop_photocopier_destroyed" );
    _func_14C( "prop_photocopier_destroyed_top" );
    _func_14C( "prop_photocopier_destroyed_right_shelf" );
    _func_14C( "prop_photocopier_destroyed_left_feeder" );
    _func_14C( "com_tv2_d" );
    _func_14C( "com_newspaperbox_red_dam" );
    _func_14C( "com_newspaperbox_red_des" );
    _func_14C( "com_newspaperbox_red_door" );
    _func_14C( "com_newspaperbox_blue_dam" );
    _func_14C( "com_newspaperbox_blue_door" );
    _func_14C( "com_newspaperbox_blue_des" );
    _func_14C( "me_electricbox2_dest" );
    _func_14C( "me_electricbox2_door_upper" );
    _func_14C( "me_electricbox2_door" );
    _func_14C( "me_electricbox4_dest" );
    _func_14C( "me_electricbox4_door" );
    _func_14C( "com_filecabinetblackclosed_dam" );
    _func_14C( "com_filecabinetblackclosed_des" );
    _func_14C( "com_filecabinetblackclosed_drawer" );
    _func_14C( "me_lightfluohang_double_destroyed" );
    _func_14C( "vehicle_mi-28_d_animated" );
    _func_14C( "projectile_us_smoke_grenade" );
    _func_14C( "tag_origin" );
    _func_14C( "vehicle_van_white_door_rb" );
    _func_14C( "bc_military_tire01" );
    _func_14C( "vehicle_van_white_hood" );
    _func_14C( "rubble_large_slab_02" );
    _func_14C( "727_seats_row_left" );
    _func_14C( "ch_street_light_01_off" );
    _func_14C( "iss_sail_center" );
    _func_152( "tank_rumble" );
    _func_152( "damage_heavy" );
    _func_152( "steady_rumble" );
    _func_14F( "white" );
    _func_14D( "default" );
    _func_14D( "nosound" );
    _func_14C( "body_us_army_assault_a_dead_elevator" );
    _func_14C( "head_us_army_d_dead_elevator" );
    _func_14C( "com_firehydrant_dest" );
    _func_14C( "com_firehydrant_dam" );
    _func_14C( "com_firehydrant_cap" );
    _func_155( "fx/props/firehydrant_leak" );
    _func_155( "fx/props/firehydrant_exp" );
    _func_155( "fx/props/firehydrant_spray_10sec" );
    level._ID10114 = 128;
    _func_14C( "rappelrope100_ri" );
    _func_14C( "mil_emergency_flare" );
    _func_001( "heli_spotlight" );
    _func_14E( "rpg_straight" );
    _func_14C( "com_door_01_handleleft2" );
    _func_150( &"DCEMP_ISS_INTROSCREEN1" );
    _func_150( &"DCEMP_ISS_INTROSCREEN2" );
    _func_150( &"DCEMP_ISS_INTROSCREEN3" );
    _func_150( &"DCEMP_OBJ_CRASH_SITE" );
    _func_150( &"DCEMP_OBJ_FIND_SHELTER" );
    _func_150( &"DCEMP_OBJ_FOLLOW_SGT_FOLEY" );
    _func_150( &"DCEMP_OBJ_WHISKEY_HOTEL" );
    _func_14C( "h2_ch_street_light_01_bulb_off" );
    maps\dcemp_code::_ID51939();
    maps\dcemp_code::_ID53013();
    var_2 = _func_1A1( "meetup_door_left", "targetname" );
    var_3 = _func_1A1( "office_door_clip", "targetname" );
    var_3 _meth_8053( var_2 );
    var_2 _ID42237::_ID10192( 0.1, ::_meth_82C1, 90, 0.1 );
    var_3 _ID42237::_ID10192( 0.2, ::_meth_805E );
    level._ID52635 = 0;
    level._ID43135.greenberet_disabled = 1;
}

_ID20294()
{
    _ID42237::_ID14402( "player_crash_done" );
    thread maps\dcemp_code::dancing_lights_setup();
    thread maps\dcemp_code::portal_group_setup();
    var_0 = _func_1A2( "emp_show", "targetname" );
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "emp_light", "targetname" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42237::_ID16640( "fx_flare", "targetname" ) );
    _ID42237::_ID3350( var_0, maps\dcemp_code::_ID50616 );
    thread _unknown_09BB();
    thread maps\dcemp_code::_ID52639();
    _unknown_26A5();
    maps\dc_crashsite::_ID49092();
    thread maps\dcemp_aud::intro_heli_sequence_snd();
}

_ID48379()
{
    if ( level._ID35897 == "emp" )
    {
        _func_1A1( "heli_crash_site_spotlight_emp_start", "targetname" ) _ID42407::_ID1947( maps\dcemp_code::_ID54159 );
        _func_1A1( "btr80s_end_emp_start", "targetname" ) _ID42407::_ID1947( maps\dcemp_code::_ID48888 );
    }
    else
    {
        _func_1A1( "heli_crash_site_spotlight", "targetname" ) _ID42407::_ID1947( maps\dcemp_code::_ID54159 );
        _func_1A1( "btr80s_end", "targetname" ) _ID42407::_ID1947( maps\dcemp_code::_ID48888 );
    }

    _ID42237::_ID3350( _func_1A2( "helis_crash_rappel", "targetname" ), _ID42407::_ID1947, maps\dcemp_code::_ID43518 );
    _ID42237::_ID3350( _func_1A2( "helis_crash_distant", "targetname" ), _ID42407::_ID1947, maps\dcemp_code::_ID53824 );
    thread maps\dcemp_aud::crashsite_heli_rappel();
    _ID42237::_ID14413( "first_wave_done" );
    wait 4;
    _ID42407::_ID10226( 0, _ID42411::_ID35200, "helis_crash_distant" );
}

_ID43138()
{
    _ID42237::_ID14413( "emp_entity_cleanup_done" );
    thread _ID42407::_ID32515( "dcemp_iss", 0 );
    thread _ID42407::_ID40561( "dcemp_iss", 0 );
    _ID42475::_ID34575( "start_iss_ambience" );
    level._ID794 _meth_8328();
    level._ID794 _meth_8334( 1 );
    level._ID44755 = level._ID794 _meth_8346();
    level._ID48005 = level._ID794 _meth_8188();
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8189( "stand" );
    level._ID794 _meth_83CD( "space" );
    _func_0DB( "actionSlotsHide", "1" );
    _func_032( "ui_astronauthelmet", 1 );
    thread maps\dcemp_code::_ID43656( level._ID1049["space"], 1 );
    var_0 = _func_11F( ( 5, 210, 0 ) );
    _func_04D( var_0 );
    maps\dcemp_code::_ID51481();
    _ID42237::_ID14402( "iss_fx" );
    maps\dcemp_code::_ID44777();
    thread maps\dcemp_code::_ID52244();
    _ID42407::_ID1985( _ID42237::_ID14413, "script2model_iss" );
    _ID42407::_ID1890( maps\dcemp_code::_ID53267 );
    thread _ID42407::_ID11231();

    if ( !_func_02F( level._ID41743 ) )
        level._ID41743 = _ID42313::_ID9125( "white", 1 );

    _ID42237::_ID14413( "iss_organize_ents" );
    var_1 = undefined;
    var_1 = "0 0 0";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_1 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_1 );
    wait 0.5;
    level._ID46101 = maps\dcemp_code::_ID46540();
    thread _unknown_0D81();
    _func_054( level._ID46101["camera"]._ID740, ( 0.2, 0.2, 0.2 ) );
    thread _unknown_0CD7();
    thread _unknown_0C66();
    thread _unknown_0D95();
    wait 0.5;
    var_2 = 1;
    _ID42237::_ID14402( "dc_emp_missile" );
    level._ID41743 _meth_808B( 4 );
    level._ID41743._ID55 = 0;
    _ID42237::_ID14413( "iss_start_dialogue" );
    thread maps\dcemp_code::missile_pre_launch();
    wait 13;
    _ID42237::_ID14402( "iss_see_icbm" );
    _unknown_0CD6();
    wait 3.35;
    _ID42237::_ID14402( "iss_stop_sounds" );
    level._ID41743._ID55 = 1;
    var_2 = 0.1;
    _ID42475::_ID34575( "stop_iss_ambience" );
    _func_055();
    _func_050();
    _ID42237::_ID14402( "iss_done" );
}

_ID44102( var_0 )
{
    self endon( "iss_wait_player_see_icbm" );
    level._ID45730 endon( "death" );

    if ( _func_02F( var_0 ) )
        thread _ID42407::_ID25088( "iss_wait_player_see_icbm", var_0 );

    while ( !self _meth_8225( level._ID45730._ID740, _func_03A( "cg_fov" ), 200 ) )
        wait 0.1;

    return 1;
}

_ID53383()
{
    level endon( "iss_nag_dialogue" );

    for (;;)
    {
        if ( !_func_02F( level._ID794 _unknown_0CF9( 0.5 ) ) )
            thread _ID42407::_ID28864( "dcemp_iss_rotateview" );

        if ( _func_02F( level._ID794 _unknown_0D0E( 13 ) ) )
            break;
    }
}

_ID53524()
{
    _ID42237::_ID14413( "iss_start_dialogue" );
    _ID42407::_ID28864( "dcemp_iss_requestfeed" );
    wait 1;
    _ID42407::_ID28864( "dcemp_iss_theywantyou" );
    _ID42237::_ID14413( "iss_see_icbm" );
    wait 1.5;
    thread _ID42407::_ID14403( "iss_nag_dialogue", 30 );
    _unknown_0D61();
    _ID42237::_ID14402( "iss_nag_dialogue" );
    wait 0.5;
    _ID42407::_ID28876();
    wait 0.5;
    _ID42407::_ID28864( "dcemp_iss_thereitis" );
    _ID42237::_ID14413( "iss_copythat" );
    _ID42407::_ID28864( "dcemp_hsc_copythat" );
    wait 1;
    _ID42407::_ID28864( "dcemp_hsc_keeptracking" );
    wait 1.5;
    _ID42407::_ID28864( "dcemp_iss_notscheduled" );
    wait 2.5;
    thread _ID42407::_ID28864( "dcemp_hsc_standby" );
    _ID42237::_ID14413( "iss_anyword" );
    thread _ID42407::_ID28864( "dcemp_iss_anyword" );
}

_ID48593()
{
    _ID42237::_ID14413( "iss_nag_dialogue" );
    thread _ID42407::_ID14403( "iss_copythat", 8 );
    thread _ID42407::_ID14403( "iss_anyword", 33.4 );
    level._ID45730 _meth_828E( 55, 100 );
    level._ID45730 waittill( "reached_end_node" );
    _ID42234::_ID13611( "space_nuke" );
    level._ID45730 _meth_80B7();
    _ID42237::_ID14402( "iss_space_nuke" );
    _ID42237::_ID14402( "dc_emp_missile_hit" );
    _ID42237::_ID14402( "iss_lights_out" );
    thread maps\dcemp_aud::iss_emp_exp_interrupt();
    thread _unknown_0F20();
    wait 0.5;
    wait 3.5;
    maps\dcemp_code::_ID45685();
    wait 1.5;
    _ID42234::_ID13611( "iss_explodes" );
    level._ID794 thread _ID42407::_ID27079( "scn_iss_explosion" );
    wait 0.35;
    wait 1.85;
    thread _ID42237::_ID27077( "scn_dcemp_space_transition_out", ( 0, 0, 0 ) );
    level._ID41743 _meth_808B( 4 );
    level._ID41743._ID55 = 0.15;
    thread maps\dcemp_code::_ID43378();
    wait 0.1;
    wait 0.5;
    thread maps\dcemp_code::_ID45146();
    _ID42234::_ID13611( "sat_destroy" );
}

_ID48178()
{
    var_0 = 45;
    var_1 = -2000;
    var_2 = 115;
    var_3 = level._ID46101["node"];
    var_4 = level._ID46101["camera"]._ID700;
    var_3._ID65 = var_3._ID65 + ( 0, var_0, 0 );
    var_3._ID740 = var_3._ID740 + ( var_1, 0, 0 );
    var_4._ID65 = var_4._ID65 + ( 0, var_0, 0 );
    var_4._ID740 = var_4._ID740 + ( var_1, 0, 0 );
    var_3 _meth_82C1( var_0 * -1, var_2 );
    var_3 _meth_82B9( var_1 * -1, var_2 );
    var_4 _meth_82C1( var_0 * -1, var_2 );
    var_4 _meth_82B9( var_1 * -1, var_2 );
    var_3 thread _ID42259::_ID3111( level._ID46101["model"], "ISS_animation" );
    var_4 thread _ID42259::_ID3111( level._ID46101["camera"], "ISS_animation" );
    level._ID46101["camera"] _meth_8155( level._ID46101["camera"] _ID42407::_ID16120( "ISS_animation" ), 1, 0, 0 );
    wait 3.5;
    level._ID794 _meth_8334( 0 );
    wait 1.0;
    thread _ID42407::_ID14403( "iss_start_dialogue", 2.5 );
    thread _ID42407::_ID14403( "iss_start_breathing", 0.5 );
    var_4 _ID42259::_ID3111( level._ID46101["camera"], "ISS_animation" );
    var_4 thread _ID42259::_ID3044( level._ID46101["camera"], "ISS_idle" );
    var_2 = 15;
    _ID42237::_ID14413( "iss_space_nuke" );
    wait 6;
    var_4 notify( "stop_loop" );
    level._ID46101["camera"]._ID700 = _func_06A( "script_origin", level._ID46101["camera"]._ID740 );
    level._ID46101["camera"]._ID700._ID65 = level._ID46101["camera"]._ID65;
    level._ID46101["camera"]._ID700 _meth_8053( var_3 );
    level._ID46101["camera"] _meth_8053( level._ID46101["camera"]._ID700 );
    level._ID46101["camera"]._ID700 thread _ID42259::_ID3111( level._ID46101["camera"], "ISS_float_away" );
}

_ID50677()
{
    level._ID794 _ID42407::_ID10226( 0.5, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 3, _ID42407::_ID27079, "breathing_heartbeat" );
    _ID42237::_ID14413( "iss_destroy_first_wave" );
    level._ID794 _ID42407::_ID10226( 0, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 0.5, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 1, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 1.5, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 2, _ID42407::_ID27079, "breathing_heartbeat" );
    _ID42237::_ID14413( "iss_destroy_blast_wave" );
    wait 0.35;
    level._ID794 _ID42407::_ID10226( 0, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 1, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 2, _ID42407::_ID27079, "breathing_heartbeat" );
}

_ID45295()
{
    _ID42237::_ID14413( "iss_start_breathing" );
    thread _unknown_11F9();
    _ID42237::_ID14413( "iss_nag_dialogue" );
}

_ID52589()
{
    while ( !_ID42237::_ID14385( "iss_space_nuke" ) )
    {
        level._ID794 _ID42407::_ID27079( "scn_dcemp_iss_helmet_breathe_slow" );
        wait 2;
    }
}

h2_iss_cinematic()
{
    var_0 = _ID54167::_ID43386( "iss_setup" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 0.0, 0.0, 0.0, 0, 0, 0, 0 ) _ID54167::_ID43376( ::_meth_80AA, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 5.1 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 4.0, 2.0, 2.0, 18, 35, 15, 18 ) _ID54167::_ID43376( ::_meth_80AA, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 10.5 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 2.0, 1.0, 1.0, 5, 10, 8, 12 ) _ID54167::_ID43376( ::_meth_80AA, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 14.8 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 4.0, 2.0, 2.0, 45, 55, 15, 40 ) _ID54167::_ID43376( ::_meth_80AA, level._ID794, 50, 50, 20, 20 );
    var_1 = 0.5;
    var_2 = 10000;
    var_3 = level._ID794;
    var_0 _ID54167::_ID48800( 12.4 ) _ID54167::_ID47198( 0.09, var_1, var_3, var_2 ) _ID54167::_ID43376( ::_unknown_14C8, level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 15.4 ) _ID54167::_ID47198( 0.11, var_1, var_3, var_2 ) _ID54167::_ID43376( ::_unknown_14E8, level._ID794, 0.05 );
    var_4 = 5500;
    var_5 = 47000;
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 10.0, var_5, 16.0, 16.0 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 5.0 ) _ID54167::_ID50321( 18.0, var_4, 8.0, 8.0 );
    var_0 _ID54167::_ID48800( 10.8 ) _ID54167::_ID50321( 14.0, 17, 12.0, 12.0 );
    var_0 _ID54167::_ID48800( 15.5 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48166();
    _ID42237::_ID14413( "iss_nag_dialogue" );
    var_0 = _ID54167::_ID43386( "iss_finale" );
    var_0 _ID54167::_ID48800( 36.3 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 6.7, 3.0, 3.0, 20, 15, 10, 4 );
    var_0 _ID54167::_ID48800( 43.0 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 1.3, 0.6, 0.7, 0, 0, 0, 0 );
    var_0 _ID54167::_ID48800( 43.1 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 48.5 ) _ID54167::_ID47844( 0 );
    var_6 = 0.11;
    var_7 = 0.17;
    var_8 = 0.22;
    var_9 = 0.25;
    var_10 = 0.5;
    var_11 = 0.75;
    var_2 = 100000;
    var_3 = level._ID794;
    var_0 _ID54167::_ID48800( 36.35 ) _ID54167::_ID47198( 0.05, 4.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 41.85 ) _ID54167::_ID47198( var_6, var_9, var_3, var_2 );
    var_0 _ID54167::_ID48800( 41.95 ) _ID54167::_ID47198( var_6, var_9, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.05 ) _ID54167::_ID47198( var_6, var_9, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.15 ) _ID54167::_ID47198( var_6, var_9, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.25 ) _ID54167::_ID47198( var_6, var_9, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.35 ) _ID54167::_ID47198( var_7, var_11, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.65 ) _ID54167::_ID47198( var_6, var_9 * 2, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.85 ) _ID54167::_ID47198( var_6, var_9 * 2, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.05 ) _ID54167::_ID47198( var_8, var_10 * 2, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.25 ) _ID54167::_ID47198( var_6, var_10 * 3, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.65 ) _ID54167::_ID47198( var_7, var_11 * 3, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.65 ) _ID54167::_ID47198( var_6, var_9 * 2, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.85 ) _ID54167::_ID47198( var_6, var_9 * 2, var_3, var_2 );
    var_0 _ID54167::_ID48800( 40.5 ) _ID54167::_ID47198( 0.04, 4.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 41.5 ) _ID54167::_ID47198( 0.04, 3.7, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.0 ) _ID54167::_ID47198( 0.04, 3.3, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.25 ) _ID54167::_ID47198( 0.05, 3.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.45 ) _ID54167::_ID47198( 0.05, 2.7, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.6 ) _ID54167::_ID47198( 0.06, 2.3, var_3, var_2 );
    var_0 _ID54167::_ID48800( 42.8 ) _ID54167::_ID47198( 0.06, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.0 ) _ID54167::_ID47198( 0.07, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.2 ) _ID54167::_ID47198( 0.08, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.4 ) _ID54167::_ID47198( 0.09, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.5 ) _ID54167::_ID47198( 0.1, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.6 ) _ID54167::_ID47198( 0.11, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.7 ) _ID54167::_ID47198( 0.12, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.8 ) _ID54167::_ID47198( 0.13, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 43.9 ) _ID54167::_ID47198( 0.14, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 44.0 ) _ID54167::_ID47198( 0.15, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 44.1 ) _ID54167::_ID47198( 0.17, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 44.15 ) _ID54167::_ID47198( 0.19, 2.0, var_3, var_2 );
    var_0 _ID54167::_ID48800( 44.0 ) _ID54167::_ID47198( 0.3, 4.3, var_3, var_2 );
    var_0 _ID54167::_ID48800( 36.35 ) _ID54167::_ID43376( ::_unknown_18E1, level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 41.15 ) _ID54167::_ID43376( ::_unknown_190A, level._ID794, 3.1, 1.1, 0.05, 0.5 );
    var_0 _ID54167::_ID48800( 47.85 ) _ID54167::_ID43376( ::_unknown_1919, level._ID794, 0.5 );
    var_0 _ID54167::_ID48166();
}

h2_iss_rumblehelpersystem( var_0 )
{
    level._ID794 _meth_80B4( "tank_rumble" );
    wait(var_0);
    level._ID794 _meth_80B6( "tank_rumble" );
}

h2_iss_rumbleincrement( var_0, var_1, var_2, var_3 )
{
    var_4 = 0;

    while ( var_4 <= var_0 )
    {
        var_2 = var_1 * var_2;
        var_3 = 1 / var_1 * var_3;

        if ( var_3 < 0.05 )
            var_3 = 0.05;

        var_4 += var_3;
        thread _unknown_196E( var_2 );
        wait(var_3);
    }
}

_ID44620()
{
    _ID42237::_ID14413( "iss_done" );
    maps\dcemp_code::_ID52524();
    maps\dcemp_code::_ID43675();
    maps\dcemp_code::_ID50330();
    thread maps\dcemp_code::remove_ais_after_space();
    _ID42475::_ID34575( "start_iss_fadeout_mix" );
    level._ID794 _meth_83CD( "dcemp" );
    var_0 = undefined;
    var_0 = "-42263 6917 183";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_0 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_0 );
    _func_032( "ui_astronauthelmet", 0 );
    _func_0DB( "actionSlotsHide", "0" );
    _ID42237::_ID3350( _func_1A2( "street_crash_car", "script_noteworthy" ), maps\dcemp_code::_ID50039 );
    _ID42237::_ID3350( _func_1A2( "street_cars_bounce", "targetname" ), maps\dcemp_code::_ID49988 );
    thread maps\dcemp_code::heli_falling_kill_player();
    var_1 = _func_1A2( "emp_delete", "targetname" );
    var_1 = _ID42237::_ID3296( var_1, _func_1A2( "emp_swap", "targetname" ) );
    _ID42237::_ID3350( var_1, maps\dcemp_code::_ID50616 );
    wait 2;
    _ID42234::_ID13611( "emp_flash" );
    thread maps\dcemp_code::animatedoor();
    thread _unknown_1AB2();
    thread _unknown_1B26();
    thread _unknown_1B1B();
    thread maps\dcemp_code::_ID52210();
    thread maps\dcemp_code::_ID45321();
    thread _unknown_1B1E();
    thread _unknown_1AC2();
    _ID42407::_ID1985( _ID42237::_ID14413, "emp_jet_crash" );
    _ID42407::_ID1890( _ID42407::_ID14403, "street_main", 3.25 );
    thread _ID42407::_ID11231();
}

_ID43710()
{
    _ID42237::_ID14413( "emp_entity_cleanup_done" );
    _func_1E3( level._ID52635, "invisible", &"DCEMP_OBJ_CRASH_SITE" );
    _func_114( level._ID52635, "done" );
}

_ID50123()
{
    level._ID794 _meth_8334( 1 );
    _func_076( 0, 0 );
    level._ID794 _meth_8098( undefined );
    thread maps\dcemp_code::_ID53870( 0 );
    level._ID794 _meth_8084( level._ID794._ID45272, "tag_player", 1, 60, 60, 40, 20, 1 );
    level._ID794 _meth_8329();
    _func_0DB( "hud_showStance", 1 );
    _func_0DB( "compass", 1 );
    _func_0DB( "ammoCounterHide", 0 );
    _func_0DB( "ui_hideAmmoStatus", 1 );
    level._ID794 _meth_822E( 1 );
    _ID42272::_ID33575( "compass_map_dcemp_static" );
    wait 0.35;
    level._ID794 _meth_8084( level._ID794._ID45272, "tag_player", 1, 60, 60, 40, 20, 1 );
    level._ID794 _meth_80A9( 0.1, 0.1, 0, 60, 60, 40, 20 );
    level._ID794 _meth_8098( undefined );

    if ( _func_02F( level._ID44755 ) )
        level._ID794 _meth_8345( level._ID44755 );
    else
        level._ID794 _meth_8345( level._ID794._ID45272._ID65 );

    level._ID794 _meth_8334( 0 );
    level._ID794 _meth_8122( 1 );

    if ( _func_02F( level._ID48005 ) )
        level._ID794 _meth_8189( level._ID48005 );

    var_0 = 1.5;

    if ( _func_03A( "r_dcburning_culldist" ) == 1 )
        _func_08E( 23000 );

    _ID42237::_ID14402( "emp_back_from_whiteout" );
    level._ID41743 _meth_808B( 4 );
    level._ID41743._ID55 = 0;
}

_ID50974()
{
    _ID42237::_ID14413( "emp_heli_crash" );
    _ID42237::_ID14413( "emp_jet_crash" );
    wait 2.5;
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_whatsgoinon" );
}

_ID50720()
{
    _ID42237::_ID14413( "iss_done" );
    thread maps\dcemp_code::_ID51040();
    thread _ID42237::_ID27077( "scn_dcemp_emp_main", level._ID794._ID740 + ( 0, 0, 100 ) );
    _ID42475::_ID34575( "start_emp_mix" );
}

_ID45706()
{
    _ID42237::_ID14413( "emp_entity_cleanup_done" );
    thread _ID42407::_ID4917();
    _unknown_3538();
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32353, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32352, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10877 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26355 );
    _ID42237::_ID3350( level._ID1194, maps\dcemp_code::_ID50164, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10949 );
    level._ID388 thread _unknown_1D46();
    level._ID44224 thread _unknown_1D8F();
    level._ID1194["marine1"] thread _unknown_1DD3();
}

_ID49922()
{
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_1 = _func_0C8( var_0._ID1191, "targetname" );
    self._ID452 = 16;
    self _meth_81B1( var_1 );
    var_2 = _func_1A1( "crash_node", "targetname" );
    var_0._ID740 = var_1._ID740;
    var_0._ID65 = var_1._ID65 + ( 0, -90, 0 );
    var_2 _ID42259::_ID3020( self, "DCemp_react_guyA_react" );
    _ID42259::_ID3020( self, "corner_standR_alert_2_look" );
    thread _ID42259::_ID3025( self, "corner_standR_look_idle" );
    _ID42237::_ID14413( "emp_heli_crash_go" );
    wait 2.25;
    self notify( "stop_loop" );
    thread _ID42259::_ID3020( self, "corner_standR_look_2_alert_fast" );
    _ID42237::_ID14413( "emp_heli_crash" );
    self notify( "stop_loop" );
    _ID42259::_ID3020( self, "corner_standR_painC" );
    _ID42237::_ID14413( "emp_jet_crash" );
    self _meth_80A1( "generic_pain_american_" + _func_0B9( 1, 9 ) );
    _ID42259::_ID3020( self, "corner_standR_flinchB" );
    _ID42259::_ID3020( self, "corner_standR_alert_2_look" );
    thread _ID42259::_ID3025( self, "corner_standR_look_idle" );
}

_ID49749()
{
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( var_1._ID1191, "targetname" );
    self._ID452 = 16;
    self _meth_81B1( var_0 );
    var_2 = _func_1A1( "crash_node", "targetname" );
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65 + ( 0, -90, 0 );
    var_2 _ID42259::_ID3020( self, "DCemp_react_guyB_react" );
    _ID42259::_ID3020( self, "CornerCrR_alert_2_look" );
    thread _ID42259::_ID3025( self, "CornerCrR_look_idle" );
    _ID42237::_ID14413( "emp_heli_crash" );
    self notify( "stop_loop" );
    self _meth_80A1( "generic_pain_american_" + _func_0B9( 1, 9 ) );
    thread _ID42259::_ID3024( self, "bog_b_spotter_react" );
    var_3 = _func_067( _ID42407::_ID16122( "bog_b_spotter_react" ) );
    _ID42407::_ID10226( var_3 * 0.93, _ID42407::_ID3136 );
}

_ID46231()
{
    var_0 = _ID42237::_ID16638( "intro_heli_free_start", "targetname" );
    maps\dcemp_code::_ID45039( var_0 );
    self _meth_81B2( var_0._ID740 );
    self._ID452 = 8;
    _ID42407::_ID10877();
    _ID42407::_ID10912();
    _ID42407::_ID41232();
    _ID42407::_ID26355();
    wait 2.5;
    wait(level._ID45979);
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "dcemp_BHrescue_soldier" );
    _ID42407::_ID10226( 5.5, ::_unknown_2057 );
    var_1 = _ID42237::_ID3293( level._ID48113, self );
    var_0 thread _unknown_1FF3();
    var_0 thread _ID42259::_ID3099( var_1, "dcemp_BHrescue" );
    var_2 = _func_067( _ID42407::_ID16122( "dcemp_BHrescue_soldier" ) );
    wait(var_2 - 0.6);
    _ID42407::_ID3136();
    var_0 = _func_06A( "script_origin", self._ID740 );
    var_0._ID65 = self._ID65 + ( 0, -7, 0 );
    var_0 maps\dcemp_code::_ID54506( self, "corner_standR_trans_IN_3" );
    var_0 _meth_80B7();
    var_0 = _func_0C8( self._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self._ID452 = 16;
    _ID42407::_ID12452();
    _ID42407::_ID12480();
    self _meth_81B1( var_0 );
    self waittill( "goal" );
    _ID42407::_ID10877();
    _ID42407::_ID10912();
}

h2_player_rescue_anim()
{
    var_0 = _ID42407::_ID35028( "player_rig" );
    var_0 _meth_805A();
    thread _unknown_20B6( var_0 );
    var_1 = _ID42237::_ID16638( "firelight_helico_crash_02_struct", "script_noteworthy" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );
    var_1 notify( "stop_dynamic_light_behavior" );
    _ID42259::_ID3018( var_0, "dcemp_BHrescue" );
    waitframe;
    thread _ID42259::_ID3111( var_0, "dcemp_BHrescue" );
    level._ID794 _meth_8122( 0 );
    waitframe;
    var_2 _meth_81EB( 0 );
    level._ID794 _meth_8328( 1, 200 );
    var_3 = level._ID794 _ID42259::_ID53505( var_0, 60, 50, 0.25, 0.5 );
    level._ID794 _meth_8087( var_0, "tag_player", var_3, var_3 / 2, var_3 / 2 );
    wait(var_3);
    var_0 _meth_8059();
    wait(_func_067( var_0 _ID42407::_ID16120( "dcemp_BHrescue" ) ) - var_3);
    level._ID794 _meth_8329();
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8055();
    var_0 _meth_80B7();
}

player_rescue_cinematic( var_0 )
{
    var_1 = _ID54167::_ID43386( "player_rescue_cinematic" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_1 _ID54167::_ID48800( 6.7 ) _ID54167::_ID47844( 0 );
    var_1 _ID54167::_ID48800( 1.1 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 1.4 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 3.85 ) _ID54167::_ID47198( 0.1, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 4.45 ) _ID54167::_ID47198( 0.08, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_1 _ID54167::_ID48166();
}

_ID43548()
{
    var_0 = _func_1A1( "crash_site_clip", "targetname" );
    var_0 _meth_80B7();
    level notify( "player_unlinked" );
    wait 0.25;
    var_1 = level._ID794._ID45272;
    var_2 = _func_1A1( "movement_grid_exit", "targetname" );
    _ID42475::_ID34575( "start_exterior_ambience" );
    var_3 = 1;
    var_1 _meth_82B8( var_2._ID740, var_3, var_3 * 0.5, var_3 * 0.5 );
    var_1 waittill( "movedone" );
    level._ID794 _meth_8055();
    level._ID794 _meth_8121( 1 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_830F( 1 );
    level._ID794 _meth_830C( 1 );
    var_4 = _func_1A1( "intro_heli_after_emp_clip", "targetname" );
    var_4 _meth_82C8();
    _func_0DB( "ui_hidemap", 0 );
    _func_0DB( "hud_showStance", "1" );
    _func_0DB( "compass", "1" );
}

_ID49819()
{
    _ID42237::_ID14413( "street_main" );
    _ID42237::_ID14388( "allow_ammo_pickups" );
    _ID42237::_ID14402( "street_crash_heli_first" );
    thread _ID42407::_ID4433();
    var_0 = undefined;
    var_0 = "-42263 6917 183";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_0 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_0 );
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    _ID42407::_ID10226( 3, maps\dcemp_code::_ID46186 );
    _ID42407::_ID10226( 1, _ID42407::_ID1801, "meetup_allies", "target" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32353, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32352, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10877 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10912 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26355 );
    _ID42237::_ID3350( level._ID1194, maps\dcemp_code::_ID50164, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10949 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41232 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID13024, "street_hide" );
    level._ID794 _ID42407::_ID5278( 0.8 );
    _ID42237::_ID14402( "dc_emp_afternath" );
    var_1 = 3.15;
    thread _ID42407::_ID14403( "street_crash_btr_first", 2.5 + var_1 );
    _ID42407::_ID10226( 2.5 + var_1, maps\dcemp_code::_ID45538 );
    wait 1.65;
    level._ID388 notify( "stop_loop" );
    level._ID388 thread _ID42259::_ID3020( level._ID388, "corner_standR_look_2_alert" );
    level._ID388 thread _ID42407::_ID10805( "dcemp_fly_seekshelter" );
    level._ID52635++;
    _func_1E3( level._ID52635, "active", &"DCEMP_OBJ_FIND_SHELTER" );
    _func_194( level._ID52635, level._ID44224, ( 0, 0, 70 ) );
    _func_1E9( level._ID52635 );
    level._ID1194["dunn"] thread _unknown_25B3();
    wait 1.0;
    level._ID1194["foley"] thread _unknown_2654();
    wait 0.5;
    level._ID1194["marine1"] thread _unknown_2522();
    thread maps\dcemp_code::_ID46871();
    _ID42237::_ID14413( "street_safe" );
    _ID42237::_ID14402( "corner_main" );
}

_ID51693()
{
    var_0 = _func_1A1( "street_marine2_anim0a", "targetname" );
    _ID42407::_ID12492();
    var_1 = _func_1A5();
    var_1._ID740 = self._ID740;
    var_1._ID65 = self._ID65 + ( 0, -12, 0 );
    var_1 thread _ID42259::_ID3024( self, "corner_standR_trans_OUT_6" );
    wait 0.5;
    _ID42407::_ID3136();
    self _meth_8053( var_0 );
    var_0 _ID42237::_ID10192( 0.25, ::_meth_82BB, 8, 0.5 );
    var_0 thread _ID42259::_ID3020( self, "gulag_sewer_slide" );
    var_2 = _func_067( _ID42407::_ID16122( "gulag_sewer_slide" ) );
    wait(var_2 * 0.28);
    self _meth_8055();
    _ID42407::_ID3136();
    var_1._ID740 = self._ID740;
    var_1._ID65 = ( 0, 80, 0 );
    var_1 _ID42259::_ID3029( self, "stand_2_run_F_2" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    self._ID7._ID50527 = 4.6;
    var_0 _ID42259::_ID3027( self, "run_turn_R45" );
    var_0 _ID42259::_ID3029( self, "run_turn_R45" );
    thread _ID42259::_ID3024( self, "run_react_stumble_non_loop" );
    self _meth_80A1( "generic_pain_american_" + _func_0B9( 1, 9 ) );
    _ID42237::_ID14413( "street_btr_death" );
    thread _ID42259::_ID3020( self, "bog_b_spotter_react" );
    self _meth_80A1( "generic_pain_american_" + _func_0B9( 1, 9 ) );
    wait 0.05;
    self _meth_8120( _ID42407::_ID16122( "bog_b_spotter_react" ), 0.1 );
    var_2 = _func_067( _ID42407::_ID16122( "bog_b_spotter_react" ) );
    wait(var_2 * 0.72 - 0.05);
    _ID42407::_ID3136();
    _ID42407::_ID10226( 0.5, _ID42407::_ID10805, "dcemp_ar1_whatsgoinon" );
    var_3 = _func_06A( "script_origin", self._ID740 );
    var_3._ID65 = self._ID65;
    self _meth_8053( var_3 );
    var_3 _ID42237::_ID10192( 0.25, ::_meth_82C1, 25, 0.5 );
    var_3 _ID42259::_ID3029( self, "crouch_2run_F" );
    self _meth_8055();
    var_3 _meth_80B7();
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "run_turn_R45" );
    var_0 _ID42259::_ID3029( self, "run_turn_R45" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "run_react_flinch_non_loop" );
    var_0 _ID42259::_ID3029( self, "run_react_flinch_non_loop" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_4 = _func_1A1( "safeZoneAnimationNode", "targetname" );
    var_4 _ID42259::_ID3074( self, "safe_zone_in" );
    self._ID7._ID50527 = undefined;
    _ID42237::_ID14402( "Sandler_can_jump" );
    var_4 _ID42259::_ID3111( self, "safe_zone_in" );
    var_4 thread _ID42259::_ID3044( self, "safe_zone_idle", "exit_shelter" );
    _unknown_2961();
    _ID42407::_ID10926();
    _ID42407::_ID12452();
    var_0 = _func_0C8( "street_macey_hide_node", "targetname" );
    self _meth_81B1( var_0 );
    _ID42407::_ID12508();
    self._ID24424 = 1.0;
}

_ID52394()
{
    _ID42407::_ID3136();
    _ID42407::_ID10226( 2.75, _ID42407::_ID10805, "dcemp_cpd_notgood" );
    _ID42407::_ID12492();
    maps\dcemp_code::_ID54506( self, "CornerCrR_trans_OUT_F" );
    var_0 = _ID42237::_ID16638( "street_marine1_anim0", "targetname" );
    var_0 _ID42259::_ID3027( self, "run_reaction_L_quick" );
    _ID42407::_ID10226( 0, _ID42407::_ID10805, "dcemp_cpd_whoa" );
    var_0 _ID42259::_ID3029( self, "run_reaction_L_quick" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0._ID740 = self._ID740;
    var_0 _ID42259::_ID3029( self, "run_turn_R45" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    self._ID7._ID50527 = 4.6;
    var_0 _ID42259::_ID3027( self, "run_reaction_R_quick" );
    _ID42407::_ID10226( 0.0, _ID42407::_ID10805, "dcemp_cpd_holy" );
    var_0 _ID42259::_ID3029( self, "run_reaction_R_quick" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0._ID740 = self._ID740;
    var_0 _ID42259::_ID3029( self, "run_turn_L45" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "exposed_idle_reactB" );
    var_0 thread _ID42259::_ID3020( self, "exposed_idle_reactB" );
    var_1 = _func_067( _ID42407::_ID16122( "exposed_idle_reactB" ) );
    self _meth_80A1( "generic_pain_american_" + _func_0B9( 1, 9 ) );
    wait(var_1 - 0.75);
    _ID42407::_ID3136();
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "run_pain_fallonknee_03" );
    level._ID388 _ID42407::_ID10226( 0.5, _ID42407::_ID10805, "dcemp_fly_justkeepmovin" );
    var_1 = _func_067( _ID42407::_ID16122( "run_pain_fallonknee_03" ) );
    _ID42407::_ID10226( var_1 - 0.5, _ID42407::_ID10805, "dcemp_cpd_lookout" );
    var_0 _ID42259::_ID3029( self, "run_pain_fallonknee_03" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    _ID42407::_ID10926();
    var_2 = _func_1A1( "safeZoneAnimationNode", "targetname" );
    var_2 _ID42259::_ID3074( self, "safe_zone_in" );
    var_2 _ID42259::_ID3111( self, "safe_zone_in" );
    self._ID7._ID50527 = undefined;
    var_2 thread _ID42259::_ID3044( self, "safe_zone_idle", "exit_shelter" );
    _unknown_2B15();
    _ID42407::_ID10926();
    _ID42407::_ID12452();
    var_0 = _func_0C8( "street_marine1_hide_node", "targetname" );
    self _meth_81B1( var_0 );
    _ID42407::_ID12508();
    self._ID24424 = 1.0;
}

_ID49447()
{
    _ID42407::_ID3136();
    var_0 = _ID42237::_ID16638( "street_macey_anim0", "targetname" );
    _ID42407::_ID12492();
    maps\dcemp_code::_ID54506( self, "corner_standR_trans_OUT_6" );
    maps\dcemp_code::_ID54506( self, "run_turn_L90" );
    maps\dcemp_code::_ID54506( self, "run_turn_L45" );
    _ID42407::_ID10912();
    _ID42407::_ID10877();
    self._ID7._ID28253 = "stand";
    var_0 _ID42259::_ID3027( self, "exposed_idle_reactB" );
    var_0 thread _ID42259::_ID3020( self, "exposed_idle_reactB" );
    var_1 = _func_067( _ID42407::_ID16122( "exposed_idle_reactB" ) );
    self _meth_80A1( "generic_pain_american_" + _func_0B9( 1, 9 ) );
    _ID42407::_ID10226( var_1 - 1.0, _ID42407::_ID10805, "dcemp_fly_dontstop" );
    wait(var_1 - 0.75);
    _ID42407::_ID3136();
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    self._ID7._ID50527 = 4.6;
    var_0 _ID42259::_ID3027( self, "run_pain_fallonknee" );
    self _meth_80A1( "generic_pain_american_" + _func_0B9( 1, 9 ) );
    var_0 _ID42259::_ID3029( self, "run_pain_fallonknee" );
    _ID42407::_ID10226( 0, _ID42407::_ID10805, "dcemp_fly_gogogo" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "slide_across_car" );
    self _meth_80A1( "generic_pain_american_" + _func_0B9( 1, 9 ) );
    var_0 _ID42259::_ID3029( self, "slide_across_car" );
    level._ID44224 _ID42407::_ID10226( 1.0, _ID42407::_ID10805, "dcemp_cpd_EMP" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "run_react_duck_non_loop" );
    self _meth_80A1( "generic_pain_american_" + _func_0B9( 1, 9 ) );
    var_0 _ID42259::_ID3029( self, "run_react_duck_non_loop" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2 = _func_1A1( "safeZoneAnimationNode", "targetname" );
    var_2 _ID42259::_ID3074( self, "safe_zone_in" );
    self._ID7._ID50527 = undefined;
    var_2 _ID42259::_ID3111( self, "safe_zone_in" );
    var_2 thread _ID42259::_ID3044( self, "safe_zone_idle", "FoleyCanGo" );
    _unknown_2CB1();
    _ID42407::_ID10926();
    _ID42407::_ID12452();
    _ID42407::_ID12480();
    var_0 = _func_0C8( "corner_macey_hide_node", "targetname" );
    self _meth_81B1( var_0 );
    _ID42407::_ID12508();
    self._ID24424 = 1.0;
}

_ID54096()
{
    _ID42237::_ID3350( _func_1A2( "meetup_allies", "targetname" ), _ID42407::_ID1947, ::_unknown_2CB1 );
    _func_1A1( "street_btr", "targetname" ) _ID42407::_ID1947( maps\dcemp_code::_ID52799 );
    _func_1A1( "street_crash_motorcycle", "targetname" ) thread maps\dcemp_code::_ID43406();
    _ID42237::_ID3350( _func_1A2( "street_crash_heli", "script_noteworthy" ), maps\dcemp_code::_ID46972 );
    _ID42237::_ID3350( _ID42237::_ID16640( "street_crash_heli_anim", "script_noteworthy" ), maps\dcemp_code::_ID48472 );
    _ID42237::_ID3350( _func_1A2( "corner_truck_engine_crash", "targetname" ), maps\dcemp_code::_ID52276 );
    thread _unknown_2EC8();
    var_0 = _func_1A1( "hide_clip", "targetname" );
    var_0 _meth_805F();
    var_0 _meth_82C9();
    _ID42407::_ID1985( _ID42237::_ID14413, "emp_entity_cleanup_done" );
    _ID42407::_ID1890( _ID42407::_ID1805, "street_btr_spawner" );
    thread _ID42407::_ID11231();
}

_ID53318( var_0, var_1 )
{
    var_2 = 0;

    if ( var_0 != 0 )
        var_3 = var_1 / var_0;
    else
        var_3 = var_1;

    while ( var_2 < var_1 )
    {
        var_2 = _ID42237::_ID53482( var_2 + var_3, var_1 );
        self _meth_81EB( var_2 );
        waittillframeend;
    }
}

_ID54476()
{
    _unknown_2DAB();
    var_0 = _func_1A1( "safeZoneAnimationNode", "targetname" );

    if ( self._ID922 == "marine3" )
    {
        var_0 thread _ID42259::_ID3044( self, "safe_zone_idle", "exit_shelter" );
        _unknown_2DC6();
        return;
    }

    self._ID1194 = "neutral";
    var_1 = _ID42237::_ID16638( self._ID1191, "targetname" );
    self _meth_81D2( var_1._ID740, var_1._ID65 );
    _ID42237::_ID14413( "street_marine2_hide" );
    self._ID1194 = "allies";
    wait 0.5;
    var_0 _ID42259::_ID3074( self, "safe_zone_in" );
    var_0 _ID42259::_ID3111( self, "safe_zone_in" );
    var_0 thread _ID42259::_ID3044( self, "safe_zone_idle", "exit_shelter" );
    _unknown_2E1B();
}

readytoexittheshelter()
{
    if ( !_func_02F( level.soldierreadytoexit ) )
        level.soldierreadytoexit = 0;

    level.soldierreadytoexit++;
    waittillframeend;

    if ( level.soldierreadytoexit == 5 )
        _ID42237::_ID14402( "squadReadyToLeave" );
}

_ID48551()
{
    maps\dcemp_code::_ID51011( self );
    _ID42407::_ID13024( "street_hide" );
    thread _ID42407::_ID22746();
    maps\dcemp_code::_ID50164( 1 );
    _ID42407::_ID10949();
    _ID42407::_ID26355();
    _ID42407::_ID41232();
}

_ID43187()
{
    _ID42237::_ID14413( "corner_main" );
    thread _unknown_2EDF();
    var_0 = undefined;
    var_0 = "-42263 6917 183";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_0 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_0 );
    var_1 = level._ID1194;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID1299 = 0;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID12452 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID12480 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID12508 );
    _ID42237::_ID14413( "corner_look_outside" );
    thread maps\dcemp_code::_ID46890();
    level._ID388 thread _unknown_2F7D();
    level._ID1194["dunn"] thread _unknown_3053();
    level._ID1194["marine1"] thread _unknown_2FE4();
    level._ID1194["marine2"] thread _unknown_3020();
    level._ID1194["marine3"] thread _unknown_3058();
    _ID42237::_ID14413( "corner_moveout" );
    level._ID52635++;
    _func_1E3( level._ID52635, "active", &"DCEMP_OBJ_FOLLOW_SGT_FOLEY", level._ID388._ID740 );
    _func_1E9( level._ID52635 );
    _func_194( level._ID52635, level._ID388, ( 0, 0, 70 ) );
    thread _unknown_2FCB();
    _ID42407::_ID1985( _ID42407::_ID3355, level._ID1194, "corner_at_plane" );
    _ID42407::_ID1890( _ID42237::_ID14402, "meetup_main" );
    thread _ID42407::_ID11231();
}

_ID43757()
{
    _ID42237::_ID14413( "allow_ammo_pickups" );
    _func_1E5( level._ID52635, "done" );
}

_ID50838()
{
    wait 4.5;
    var_0 = level._ID1194["marine1"];
    var_0 _ID42407::_ID10805( "dcemp_ar1_thisisweird" );
    wait 0.5;
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_soquiet" );
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_heywhatthe" );
    var_0 _ID42407::_ID10805( "dcemp_ar1_minedowntoo" );
    wait 0.5;
    level._ID388 thread _ID42407::_ID10805( "dcemp_fly_empblast" );
}

_ID49221()
{
    _ID42407::_ID12467();
    self waittillmatch( "single anim",  "end"  );
    self _meth_81B2( self._ID740 );
    thread _ID42407::_ID14403( "corner_moveout", 1.0 );
    var_0 = _ID42237::_ID16638( "corner_anim2a", "targetname" );
    var_0 _ID42259::_ID3027( self, "patrol_jog_360_once" );
    var_0 _ID42259::_ID3029( self, "CQB_walk_turn_9" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "patrol_jog_360_once" );
    var_0 thread _ID42259::_ID3024( self, "patrol_jog_360_once" );
    var_1 = _func_067( _ID42407::_ID16122( "patrol_jog_360_once" ) );
    wait(var_1 * 0.79);
    self _meth_814C( _ID42407::_ID16122( "patrol_jog_360_once" ), 0.2 );
    self notify( "killanimscript" );
    _ID42407::_ID10896();
    self._ID38 = "noncombat";
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3074( self, "hunted_woundedhostage_check" );
    var_2 = [];
    var_2[var_2.size] = self;
    var_2[var_2.size] = level._ID48865;
    level._ID48865 _meth_80C5( 0 );
    var_0 notify( "stop_loop" );
    var_0 _ID42259::_ID3099( var_2, "hunted_woundedhostage_check" );
    thread _ID42407::_ID10805( "dcemp_fly_dammit" );
    self notify( "corner_at_plane" );
    var_0 _ID42259::_ID3029( self, "DCemp_wounded_check_end" );
    self._ID7._ID28253 = "stand";
    self _meth_81B2( self._ID740 );
}

_ID46983()
{
    _ID42407::_ID12467();
    self waittillmatch( "single anim",  "end"  );
    var_0 = _ID42237::_ID16638( "corner_anim1", "targetname" );
    var_0 _ID42259::_ID3027( self, "patrol_jog_look_up_once" );
    var_0 _ID42259::_ID3029( self, "patrol_jog_look_up_once" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "CQB_walk_turn_9" );
    var_0 _ID42259::_ID3029( self, "CQB_walk_turn_9" );
    _ID42407::_ID10896();
    _ID42407::_ID32329( "casual_killer_jog" );
    self._ID38 = "noncombat";
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "casual_killer_jog_stop" );
    level endon( "meetup_go" );
    self notify( "corner_at_plane" );
    _ID42259::_ID3029( self, "casual_killer_jog_stop" );
    self _meth_81B2( self._ID740 );
}

_ID53006()
{
    _ID42407::_ID12467();
    self waittillmatch( "single anim",  "end"  );
    maps\dcemp_code::_ID50164( 0 );
    waitframe;
    var_0 = _ID42237::_ID16638( "corner_anim1", "targetname" );
    self._ID7._ID50527 = 6;
    var_0 _ID42259::_ID3027( self, "patrol_jog_360_once" );
    self._ID7._ID50527 = undefined;
    var_0 _ID42259::_ID3029( self, "patrol_jog_360_once" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    _ID42407::_ID12467();
    var_0 _ID42259::_ID3027( self, "CQB_walk_turn_9" );
    self notify( "corner_at_plane" );
    var_0 _ID42259::_ID3029( self, "CQB_walk_turn_9" );
    var_0 = _func_0C8( "corner_anim4", "targetname" );
    _ID42407::_ID14701( var_0 );
    _ID42407::_ID10896();
    maps\dcemp_code::_ID50164( 1 );
}

_ID48822()
{
    _ID42407::_ID12467();
    self waittillmatch( "single anim",  "end"  );
    maps\dcemp_code::_ID50164( 0 );
    waitframe;
    var_0 = _ID42237::_ID16638( "corner_anim5b", "targetname" );
    var_0 _ID42259::_ID3027( self, "CQB_walk_turn_9" );
    var_0 _ID42259::_ID3029( self, "CQB_walk_turn_9" );
    _ID42407::_ID10896();
    var_0 = _func_0C8( "corner_anim5", "targetname" );
    _ID42407::_ID14701( var_0 );
    maps\dcemp_code::_ID50164( 1 );
    self notify( "corner_at_plane" );
}

_ID53996()
{
    _ID42407::_ID12467();
    self waittillmatch( "single anim",  "end"  );
    var_0 = _ID42237::_ID16638( "corner_anim3", "targetname" );
    var_0 _ID42259::_ID3027( self, "combatwalk_F_spin" );
    var_0 _ID42259::_ID3029( self, "combatwalk_F_spin" );
    _ID42407::_ID10896();
    _ID42407::_ID32329( "casual_killer_jog" );
    self._ID38 = "noncombat";
    thread _ID42407::_ID10805( "dcemp_cpd_checkitout" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "casual_killer_jog_stop" );
    level endon( "meetup_go" );
    self notify( "corner_at_plane" );
    var_0 _ID42259::_ID3029( self, "casual_killer_jog_stop" );
    self _meth_81B2( self._ID740 );
}

_ID53168()
{
    _func_1A1( "corner_engine", "targetname" ) thread maps\dcemp_code::_ID49853();
    _ID42237::_ID14413( "street_crash_heli_done" );
    wait 2.5;
    _ID42237::_ID14402( "corner_start_crash_scene" );
    _ID42237::_ID14413( "corner_engine_hit" );
    _ID42234::_ID13611( "corner_fire_trails" );
    maps\dcemp_code::_ID48390();
    wait 1.0;
    var_0 = _func_1A1( "planeTurbine_fire_light", "targetname" );
    var_0 thread _unknown_32C1( 120, 5600 );
    var_0 = _func_1A1( "planeTurbine_fire_light02", "targetname" );
    var_0 thread _unknown_32D5( 120, 8600 );
}

_ID50903()
{
    _func_1A1( "meetup_runner", "targetname" ) _ID42407::_ID1947( ::_unknown_361A );
    _ID42237::_ID14413( "meetup_main" );
    var_0 = undefined;
    var_0 = "-42263 6917 183";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_0 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_0 );
    level._ID388 thread _unknown_35DB();
    level._ID44224 thread _unknown_35E9();
    level._ID1194["marine1"] thread _unknown_3604();
    level._ID1194["marine2"] thread _unknown_3616();
    level._ID1194["marine3"] thread _unknown_362D();
    _ID42237::_ID14413( "meetup_show_guys" );
    thread _ID42237::_ID27077( "elm_thunder_distant", level._ID794._ID740 + ( 0, 0, 60 ) );
    _ID42407::_ID10226( 3, _ID42422::_ID28930, 20 );
    _ID42407::_ID10226( 0, _ID42422::_ID22327, _ID52596::_ID22335, _ID52596::_ID22333 );
    thread _ID42237::_ID27077( "elm_thunder_strike", level._ID794._ID740 + ( 0, 0, 60 ) );
    _ID42407::_ID10226( 6, _ID42237::_ID14402, "start_rain_ambience" );
    _ID42407::_ID10226( 6, ::_unknown_3786 );
    thread _unknown_3C56();
    wait 1;
    thread _ID42407::_ID4422( "meetup_main" );
    level._ID388 _meth_820F( level._ID1194["marine1"] );
    level._ID388 _ID42237::_ID10192( 2, ::_meth_820F );
    level._ID388 _ID42237::_ID10192( 2.75, ::_meth_820F, level._ID44224 );
    level._ID388 _ID42237::_ID10192( 5.5, ::_meth_820F );
    level._ID388 thread _ID42259::_ID3015( "done_talking", undefined );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_regroup" );
    level._ID388 notify( "done_talking" );
    level._ID44224 thread _ID42407::_ID10805( "dcemp_cpd_huah2" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32353, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32352, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26355 );
    _ID42237::_ID3350( level._ID1194, maps\dcemp_code::_ID50164, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41232 );
    _ID42237::_ID14402( "meetup_moveout" );
    _func_0DB( "cg_crosshairEnemyColor", "0" );
    _ID42407::_ID10226( 4, _ID42407::_ID1801, "meetup_runner", "target" );
    thread _ID42407::_ID14403( "rain_started", 11 );
    thread _ID42407::_ID14403( "rain_mask_on", 11 );
    _ID42237::_ID14413( "meetup_challenge_start" );
    var_1 = _func_06A( "script_origin", level._ID46628 _meth_80AF() + ( 0, 0, 16 ) );
    var_1 _meth_8053( level._ID46628 );
    level._ID44224 _meth_8173( var_1 );
    level._ID44224 _ID42407::_ID12477();
    level._ID44224 _ID42407::_ID32352( 0 );
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_star" );
    _ID42237::_ID14402( "meetup_challenge_done" );
    var_2 = [ level._ID44224, level._ID1194["marine1"], level._ID1194["marine3"], level._ID388 ];
    _ID42237::_ID3350( var_2, _ID42407::_ID7892 );
    wait 1.25;
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_willfire" );
    thread maps\dcemp_code::_ID51684();
    _ID42237::_ID14402( "meetup_runner_safe" );
    _ID42407::_ID10226( 0, _ID42422::_ID22327, _ID52596::_ID22335, _ID52596::_ID22333 );
    level._ID46628 _ID42407::_ID10805( "dcemp_ar3_dontshoot" );
    _func_0DB( "cg_crosshairEnemyColor", "1" );
    wait 0.5;
    level._ID388 _ID42407::_ID10805( "dcemp_fly_properresponse" );
    _ID42237::_ID14402( "foley_street_dialog_end" );
    _ID42237::_ID14413( "lobby_main" );
    var_1 _meth_80B7();
    thread maps\dcemp_code::kill_office_enemies_with_cheat();
}

_ID52267()
{
    _ID42237::_ID14413( "meetup_moveout" );
    wait 1.5;
    _unknown_3889( "corner_flash_1" );
}

_ID47751()
{
    _ID42237::_ID14413( "meetup_moveout" );
    _ID42407::_ID12492();
    _ID42407::_ID7892();
    var_0 = _func_0C8( "corner_flash_3", "targetname" );
    self._ID452 = 120;
    self _meth_81B1( var_0 );
    self waittill( "goal" );
    _ID42407::_ID10926();
}

_ID43991()
{
    _ID42237::_ID14413( "meetup_moveout" );
    wait 2;
    _unknown_38CC( "corner_flash_4" );
}

_ID51926()
{
    _ID42237::_ID14413( "meetup_moveout" );
    wait 3;
    _ID42407::_ID32329( "casual_killer_jog" );
    var_0 = _func_0C8( "corner_flash_5", "targetname" );
    self _meth_81B1( var_0 );
}

_ID53665()
{
    _ID42237::_ID14413( "meetup_moveout" );
    wait 1.5;
    _ID42407::_ID32329( "casual_killer_jog" );
    var_0 = _func_0C8( "corner_flash_2", "targetname" );
    self _meth_81B1( var_0 );
}

_ID54018( var_0, var_1 )
{
    var_2 = _ID42237::_ID16638( var_1, "targetname" );
    var_0._ID740 = self._ID740;
    var_0._ID65 = _func_11A( var_2._ID740 - self._ID740 );
    self _meth_819B( "face angle", var_0._ID65[1] );
    self _meth_81B2( self._ID740 );
    wait 0.5;
    var_0 thread maps\dcemp_code::_ID54506( self, "patrol_bored_2_walk" );
    _ID42407::_ID7892();
    _ID42407::_ID10877();
    _ID42407::_ID10912();
    waitframe;
    _ID42407::_ID32328( "patrol_bored_patrolwalk" );
    self _meth_81B2( var_2._ID740 );
    self._ID452 = 16;
}

_ID44012()
{
    self endon( "movingout" );
    self waittill( "goal" );
    _ID42259::_ID3024( self, "patrol_bored_walk_2_bored" );
    self _meth_81B2( self._ID740 );
}

_ID45193( var_0 )
{
    self _meth_820F();
    self notify( "movingout" );
    _ID42407::_ID7892();
    _ID42407::_ID12452();
    waitframe;
    _ID42407::_ID32329( "casual_killer_jog" );
    var_1 = _func_0C8( var_0, "targetname" );
    var_2 = _func_06A( "script_origin", self._ID740 );
    var_2._ID65 = self._ID65;
    self _meth_8053( var_2 );
    _ID42407::_ID10912();
    var_3 = 0.75;
    var_2 _meth_82BF( _func_11A( var_1._ID740 - var_2._ID740 ), var_3, var_3 );
    var_2 thread _ID42259::_ID3029( self, "casual_killer_jog_start" );
    var_2 waittill( "rotatedone" );
    self _meth_8055();
    self _meth_81B1( var_1 );
    var_2 _meth_80B7();
    _ID42407::_ID10226( 3, _ID42407::_ID12480 );
}

_ID45268()
{
    thread maps\dcemp_code::sun_angles_change_setup();
    level._ID46628 = self;
    self._ID3189 = "runner";
    maps\dcemp_code::_ID50164( 1 );
    thread _ID42407::_ID22746();
    self._ID680 = "";
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_1 = _func_1A1( "meetup_door_left", "targetname" );
    var_2 = _func_1A1( "office_door_clip", "targetname" );
    var_2 _meth_8053( var_1 );
    var_2 _meth_805F();
    var_3 = 1.25;
    var_1 _ID42237::_ID10192( 2.0, ::_meth_82C1, -90, var_3, 0, var_3 );
    var_2 _ID42237::_ID10192( 2.5 + var_3, ::_meth_805E );
    _ID42407::_ID10226( 1.75, _ID42234::_ID13611, "meetup_dooropen" );
    _ID42407::_ID10973();
    _ID42407::_ID10888();
    _ID42407::_ID26355();
    _ID42407::_ID41232();
    _ID42407::_ID32294();
    var_0 _ID42259::_ID3029( self, "cargoship_open_cargo_guyL" );
    thread _unknown_3B60( var_0 );
    var_0 = _func_1A1( var_0._ID1191, "targetname" );
    wait 2.05;
    _ID42237::_ID14402( "meetup_challenge_start" );
    var_0 = _func_1A1( var_0._ID1191, "targetname" );
    wait 7.6;
    _ID42237::_ID14413( "meetup_runner_safe" );
    self._ID680 = "Pvt. Vaughan";
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    _ID42237::_ID14413( "meetup_do_scripted_scene" );
    var_4 = [];
    var_4[var_4.size] = self;
    var_4[var_4.size] = level._ID44224;
    var_0 maps\dcemp_code::_ID54506( self, "DCemp_run_sequence_runner" );
    var_0 = _func_1A1( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "unarmed_climb_wall" );
    self _meth_8053( var_0 );
    _ID42407::_ID17509();
    var_0 thread _ID42259::_ID3029( self, "unarmed_climb_wall" );
    self waittillmatch( "single anim",  "footstep_right_large"  );
    self waittillmatch( "single anim",  "footstep_right_large"  );
    wait 0.25;
    var_0 _meth_82BB( 4, 0.35 );
    self waittillmatch( "single anim",  "footstep_left_small"  );
    wait 0.5;
    var_5 = _func_11F( var_0._ID65 );
    var_5 *= 16;
    var_0 _meth_82B8( var_0._ID740 + var_5, 0.5 );
    var_0 waittill( "unarmed_climb_wall" );
    _ID42407::_ID17508();
    self _meth_8055();
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 64;
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 64;
    self waittill( "goal" );
    _ID42407::_ID36519();
    self _meth_80B7();
}

meetup_runner_running( var_0 )
{
    var_0 _ID42259::_ID3111( self, "h2_DCemp_run_sequence_runner" );
    _ID42237::_ID14402( "meetup_do_scripted_scene" );
}

meetup_rain_ripples()
{
    wait 18;
    _ID42234::_ID13611( "rain_ripple_street" );
}

_ID48201()
{
    thread maps\dcemp_code::_ID54649();
    thread maps\dcemp_code::_ID49543();
    _ID42407::_ID1985( _ID42407::_ID38929, "lobby_vision_change" );
    level._ID794 _ID42407::_ID1890( _ID42407::_ID5278, 0.65 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "lobby_robo_death" );
    level._ID794 _ID42407::_ID1890( _ID42407::_ID5278, 0.77 );
    thread _ID42407::_ID11231();
    _ID42234::_ID13611( "moon" );
    var_0 = undefined;
    var_0 = "-42263 6917 183";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_0 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_0 );
    _ID42237::_ID14413( "lobby_main" );
    level._ID794._ID511 = 0;
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID7892 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID12480 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID12452 );
    _ID42237::_ID3294( level._ID1194, ::_meth_820F );
    thread _ID42407::_ID4422( "lobby_main" );
    level._ID388 _ID42407::_ID10226( 0.5, _ID42407::_ID10805, "dcemp_fly_heardtheman" );
    level._ID388 thread _ID42259::_ID3024( level._ID388, "exposed_tracking_turn180L" );
    wait 1.5;
    _func_1E3( level._ID52635, "active", &"DCEMP_OBJ_GET_TO_WHISKEY_HOTEL" );
    level._ID52635 = 3;
    _func_1E3( level._ID52635, "invisible", &"DCEMP_OBJ_FOLLOW_SGT_FOLEY" );
    _func_1E7( level._ID52635, 1 );
    _func_114( level._ID52635, "current" );
    _func_194( level._ID52635, level._ID388, ( 0, 0, 70 ) );
    _unknown_3E78();
    thread _unknown_3E27();
    _ID42237::_ID14402( "office_main" );
}

_ID53577()
{
    level._ID388 _ID42407::_ID1985( _ID42407::_ID41116, "reached_path_end" );
    level._ID44224 _ID42407::_ID1985( _ID42407::_ID41116, "reached_path_end" );
    _ID42407::_ID1985( _ID42237::_ID14413, "meetup_movein" );
    _ID42407::_ID11231();
    level._ID388 thread _ID42407::_ID10805( "dcemp_fly_dunnyoureup" );
    wait 1.5;
    level._ID44224 thread _ID42407::_ID10805( "dcemp_cpd_huah2" );
    _ID42237::_ID14402( "lobby_check" );
    _ID42237::_ID14413( "lobby_clear" );
    thread maps\dcemp_code::hide_stuff_from_offices();
    wait 1;
    level._ID1194["marine2"] _ID42407::_ID10805( "dcemp_ar2_gotoursix" );
    level._ID388 thread _ID42407::_ID10805( "dcemp_fly_copythat" );
    _ID42237::_ID14413( "lobby_robo_death" );
    var_0 = _ID42237::_ID3321( level._ID1194, level._ID44224 );
    var_0 = _ID42237::_ID3321( var_0, level._ID388 );
    _ID42237::_ID3350( var_0, _ID42407::_ID32353, 0 );
    _ID42237::_ID3350( var_0, _ID42407::_ID32352, 0 );
    _ID42237::_ID3350( var_0, _ID42407::_ID41231 );
    _ID42237::_ID3350( var_0, _ID42407::_ID12480 );
    _ID42237::_ID3350( var_0, _ID42407::_ID12452 );
    _ID42237::_ID3350( var_0, _ID42407::_ID26353 );
    _ID42237::_ID3350( var_0, maps\dcemp_code::_ID50164, 0 );
    _ID42237::_ID3350( var_0, _ID42407::_ID12508 );
    _ID42407::_ID38929( "office_ally_color_2" );
    _ID42237::_ID14402( "office_go_red" );
    var_0 = _ID42407::_ID3328( var_0 );
    _ID42237::_ID3350( var_0, _ID42407::_ID32315, "red" );
    _func_0DB( "ai_friendlyFireBlockDuration", "2000" );
}

_ID49219()
{
    var_0 = _func_0C9( "lobby_start_nodes", "targetname" );
    var_1 = [];
    var_1["dunn"] = ::_unknown_3FDE;
    var_1["foley"] = ::_unknown_4069;
    var_1["marine3"] = ::_unknown_40FC;
    var_1["marine2"] = ::_unknown_418E;
    var_1["marine1"] = ::_unknown_41C1;
    var_2 = var_0;

    for ( var_6 = _func_1DA( var_2 ); _func_02F( var_6 ); var_6 = _func_1BF( var_2, var_6 ) )
    {
        var_3 = var_2[var_6];
        var_4 = 0;
        var_5 = var_3._ID922;

        switch ( var_5 )
        {

        }

        level._ID1194[var_5] _meth_81D6( "stand", "crouch", "prone" );
        level._ID1194[var_5] _ID42407::_ID10226( var_4, var_1[var_5], var_3 );
        level._ID1194[var_5] _ID42407::_ID10226( var_4, _ID42407::_ID32294 );
        case "marine2":
        case "marine3":
        case "marine1":
        case "foley":
        case "dunn":
    }

    var_clear_4
    var_clear_0
}

_ID49778( var_0 )
{
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    self notify( "reached_path_end" );
    _ID42237::_ID14413( "lobby_check" );
    _ID42407::_ID12467();
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    thread _ID42259::_ID3020( self, "corner_standR_trans_CQB_OUT_8" );
    wait 2.3;
    _ID42407::_ID3136();
    var_0 thread _ID42259::_ID3029( self, "combatwalk_F_spin" );
    var_1 = _func_067( _ID42407::_ID16122( "combatwalk_F_spin" ) );
    wait(var_1 - 1.5);
    thread _ID42407::_ID10805( "dcemp_cpd_clear" );
    thread _ID42407::_ID14403( "lobby_clear", 1 );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    _ID42407::_ID14701( var_0 );
    _ID42407::_ID41231();
    _ID42407::_ID12480();
    _ID42407::_ID12452();
    _ID42407::_ID10949();
    _ID42407::_ID10973();
    _ID42407::_ID10888();
    _ID42407::_ID10896();
    _ID42237::_ID14413( "lobby_robo_death" );
    _ID42407::_ID10226( 0.5, _ID42407::_ID10805, "dcemp_cpd_sonofa" );
    _ID42407::_ID32353( 0 );
    _ID42407::_ID32352( 0 );
    _ID42407::_ID12477();
    thread _ID42259::_ID3020( self, "corner_standR_flinchB" );
    var_1 = _func_067( _ID42407::_ID16122( "corner_standR_flinchB" ) );
    wait(var_1 * 0.65);
    _ID42407::_ID3136();
    var_0 = _ID42237::_ID16638( "lobby_door_open2a", "targetname" );
    var_2 = _func_06A( "script_origin", self._ID740 );
    var_2._ID65 = ( 0, 225, 0 );
    var_2 thread _ID42259::_ID3029( self, "exposed_tracking_turn180L" );
    thread _unknown_4224();
    var_2 waittill( "exposed_tracking_turn180L" );
    var_0 thread _ID42259::_ID3029( self, "breach_kick_kickerR1_enter" );
    wait 0.25;
    _ID42407::_ID10909();
    _ID42407::_ID32315( "red" );
    wait 0.05;
    self._ID452 = 32;
    _ID42407::_ID1985( _ID42407::_ID41116, "goal" );
    _ID42407::_ID1985( _ID42237::_ID14413, "office_go_red" );
    _ID42407::_ID11232();
    _ID42407::_ID26353();
    _ID42407::_ID12508();
    _ID42407::_ID12538();
    _ID42407::_ID12460();
    maps\dcemp_code::_ID50164( 0 );
}

_ID43676()
{
    wait 1.15;

    if ( level._ID388 _ID42407::_ID13019( "lobby_door_ready" ) )
        level._ID388._ID45366 thread _ID42259::_ID3020( level._ID388, "CQB_stand_grenade_throw" );
}

_ID48563( var_0 )
{
    _ID42407::_ID13024( "lobby_door_ready" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    self notify( "reached_path_end" );
    _ID42237::_ID14413( "lobby_clear" );
    _ID42407::_ID12467();
    wait 2;
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "patrol_jog_360_once" );
    var_0 thread _ID42259::_ID3020( self, "patrol_jog_360_once" );
    var_1 = _func_067( _ID42407::_ID16122( "patrol_jog_360_once" ) );
    wait(var_1 * 0.68 - 0.05);
    _ID42407::_ID3136();
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self._ID45366 = var_0;
    _ID42407::_ID14701( var_0 );
    _ID42237::_ID14402( "lobby_door_ready" );
    _ID42407::_ID10896();
    var_2 = _ID42237::_ID16638( "lobby_arrive_foley", "targetname" );
    var_2 _ID42259::_ID3027( self, "run_2_stand_90R" );
    var_2 _ID42259::_ID3020( self, "run_2_stand_90R" );
    self._ID452 = 8;
    self _meth_81B1( var_0 );
    _ID42407::_ID13025( "lobby_door_ready" );
    _ID42237::_ID14413( "office_player_near_door" );
    thread _ID42259::_ID3020( self, "stand_exposed_wave_down" );
    _ID42407::_ID10949();
    _ID42407::_ID10973();
    _ID42407::_ID10888();
    _ID42237::_ID14413( "lobby_robo_death" );
    _ID42407::_ID10226( 1.5, _ID42407::_ID10805, "dcemp_fly_contact" );
    _ID42259::_ID3024( self, "exposed_idle_reactB" );
    _ID42237::_ID14413( "lobby_door_kick" );
    _ID42407::_ID41231();
    _ID42407::_ID32353( 0 );
    _ID42407::_ID32352( 0 );
    _ID42407::_ID12452();
    wait 2.25;
    var_0 thread _ID42259::_ID3020( self, "stand_2_run_F_2" );
    var_1 = _func_067( _ID42407::_ID16122( "stand_2_run_F_2" ) );
    wait(var_1 * 0.82);
    _ID42407::_ID3136();
    thread _ID42259::_ID3029( self, "run_turn_R45" );
    _ID42407::_ID10226( 2, _ID42407::_ID12480 );
    _ID42407::_ID32315( "red" );
    wait 0.05;
    self._ID452 = 32;
    _ID42407::_ID1985( _ID42407::_ID41116, "goal" );
    _ID42407::_ID1985( _ID42237::_ID14413, "office_go_red" );
    _ID42407::_ID11232();
    _ID42407::_ID26353();
    _ID42407::_ID12508();
    _ID42407::_ID12538();
    _ID42407::_ID12460();
    maps\dcemp_code::_ID50164( 0 );
}

_ID54465( var_0 )
{
    _ID42407::_ID10912();
    maps\dcemp_code::_ID54506( self, "stand_2_run_L" );
    maps\dcemp_code::_ID54506( self, "run_turn_L45" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42407::_ID12480();
    self notify( "reached_path_end" );
    _ID42237::_ID14413( "lobby_clear" );
    _ID42407::_ID12467();
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    _ID42407::_ID14701( var_0 );
    _ID42407::_ID10896();
    _ID42237::_ID14413( "lobby_door_ready" );
    _ID42237::_ID14413( "office_player_near_door" );
    wait 0.5;

    if ( level._ID388 _ID42407::_ID13019( "lobby_door_ready" ) )
    {
        self _meth_820F( level._ID388 );
        _ID42237::_ID10192( 1, ::_meth_820F );
    }

    wait 0.5;
    var_0 = _ID42237::_ID16638( "lobby_door_open", "targetname" );
    var_1 = _func_1A1( "lobby_door_left", "targetname" );
    var_2 = _func_1A2( var_1._ID1191, "targetname" );
    var_3 = undefined;
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_02F( var_5._ID31388 ) && var_5._ID31388 == "door_coll" )
            var_3 = var_5;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3294( var_2, ::_meth_8053, var_1 );
    level._ID1194["marine3"] _ID42407::_ID10226( 1.5, _ID42407::_ID10805, "dcemp_ar3_star" );
    var_0 thread _ID42259::_ID3020( self, "hunted_open_barndoor" );
    var_1 thread _ID42407::_ID19212( "scn_dcemp_lobby_door_slow_open" );

    if ( _func_02F( var_3 ) )
        var_3 _meth_805F();

    var_7 = _func_067( _ID42407::_ID16122( "hunted_open_barndoor" ) );
    wait(var_7 * 0.77 - 0.1);
    thread maps\dcemp_code::_ID44438();
    wait 0.1;
    var_0 = _func_1A5();
    var_0._ID740 = self._ID740;
    var_0._ID65 = ( 0, 48, 0 );
    _ID42237::_ID14402( "lobby_robo_death" );
    thread _ID42407::_ID27079( "scn_dcemp_lobby_door_ally_death" );
    var_0 thread _ID42259::_ID3020( self, "airport_security_guard_pillar_death_R" );
    var_7 = _func_067( _ID42407::_ID16122( "airport_security_guard_pillar_death_R" ) );
    _ID42407::_ID10226( 0.1, animscripts\shared::_ID12143 );
    wait(var_7 - 0.1);
    _ID42407::_ID36519();
    self._ID49 = 1;
    self._ID48281 = 1;
    self._ID7._ID24881 = 1;
    self._ID24924 = 1;
    self _meth_8058();
}

_ID53610( var_0 )
{
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    self notify( "reached_path_end" );
    _ID42237::_ID14413( "lobby_clear" );
    _ID42407::_ID12467();
    wait 0.5;
    var_0 = _func_0C8( "lobby_lookaround_node", "target" );
    self._ID452 = 16;
    self _meth_81B1( var_0 );
    wait 5.5;
    maps\dcemp_code::_ID50164( 0 );
    var_0 = _func_0C8( "lobby_rear_security", "targetname" );
    _ID42407::_ID14701( var_0 );
    _ID42407::_ID10896();

    if ( _ID42237::_ID14385( "office_go_red" ) )
        return;

    level endon( "office_go_red" );
    _ID42237::_ID14413( "lobby_door_kick" );
    var_0 = _func_0C8( "office_entry_cover_right", "targetname" );
    self _meth_81B1( var_0 );
}

_ID43856( var_0 )
{
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    self notify( "reached_path_end" );
    _ID42237::_ID14413( "lobby_clear" );
    _ID42407::_ID12467();
    wait 2.2;
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    _ID42407::_ID14701( var_0 );
    _ID42407::_ID10896();

    if ( _ID42237::_ID14385( "office_go_red" ) )
        return;

    level endon( "office_go_red" );
    _ID42237::_ID14413( "lobby_door_kick" );
    wait 2.5;
    var_0 = _func_0C8( "lobby_end_dunn", "targetname" );
    self _meth_81B1( var_0 );
}

_ID44329()
{
    thread maps\dcemp_code::_ID54300( "office_ally_color_", 2, 6 );
    _ID42237::_ID3350( _func_1A2( "office_enemies_wave1", "script_noteworthy" ), _ID42407::_ID1947, maps\dcemp_code::_ID47959 );
    _ID42237::_ID3350( _func_1A2( "office_enemies_wave1_runner", "targetname" ), _ID42407::_ID1947, maps\dcemp_code::_ID48084 );
    _ID42237::_ID3350( _func_1A2( "office_enemies_wave3", "targetname" ), _ID42407::_ID1947, _ID42237::_ID14402, "office_enemies_wave3" );
    var_0 = undefined;
    var_0 = "-42263 6917 183";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_0 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_0 );
    thread _unknown_4AAD();
    var_1 = _func_1A1( "office_suppressive_fire_target", "targetname" );
    _ID42407::_ID1985( _ID42237::_ID14413, "office_ally_color_1" );
    _ID42407::_ID1890( _ID42407::_ID1805, "office_ally_color_1" );
    var_1 _ID42407::_ID1855( ::_meth_80A1, "scn_dcemp_interior_movement" );
    _ID42407::_ID1890( _ID42422::_ID28924, 15 );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "office_main" );
    _ID42407::_ID1801( "office_enemies_wave1", "target" );
    _ID42237::_ID14413( "lobby_robo_death" );
    _ID42237::_ID14388( "_weather_lightning_enabled" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10226, 0.1, _ID42407::_ID32295 );
    _ID42407::_ID10226( 1.5, _ID42407::_ID4422, "office_main" );
    thread _ID42407::_ID4918();
    thread _ID42237::_ID27077( "RU_callout_custom", ( -43611, 14086, -2.468 ) );
    var_2 = _ID42407::_ID15817( "office_enemies_wave1", "script_noteworthy" );
    _ID42407::_ID1985( _ID42407::_ID41090, var_2, 2 );
    _ID42407::_ID1985( _ID42407::_ID38928, "office_enemies_wave1_runner", "target" );
    _ID42407::_ID1841( _ID42237::_ID14413, "office_ally_color_4" );
    _ID42407::_ID11231();
    maps\dcemp_code::_ID51481();
    _ID42237::_ID14402( "rain_fx" );
    _ID42234::_ID13611( "moon" );
    var_2 = _ID42407::_ID15817( "office_enemies_wave1", "script_noteworthy" );
    var_3 = _func_1A2( "office_enemies_wave2", "targetname" );

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
        var_3[var_4] _meth_80B7();

    _ID42237::_ID3350( var_2, _ID42407::_ID32315, "blue" );
    _ID42407::_ID1805( "office_enemy_color_1" );
    _ID42407::_ID1801( "office_enemies_wave2", "target" );
    level._ID1194["marine1"] _ID42407::_ID36519();
    wait 0.1;
    var_2 = _ID42407::_ID15817( "office_enemies_wave1", "script_noteworthy" );
    var_2 = _ID42237::_ID3296( var_2, _ID42407::_ID15817( "office_enemies_wave2", "script_noteworthy" ) );
    _ID42407::_ID1985( _ID42407::_ID41090, var_2, 4 );
    _ID42407::_ID1890( _ID42407::_ID1805, "office_enemy_color_2" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42407::_ID41090, var_2, 8 );
    _ID42407::_ID1890( _ID42407::_ID10226, 0.2, _ID42407::_ID1805, "office_enemy_color_3" );
    _ID42407::_ID1890( maps\dcemp_code::_ID45763 );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "office_predict_wave3" );
    thread _ID42407::_ID4422( "office2" );
    var_2 = _ID42407::_ID15817( "office_enemies_wave1", "script_noteworthy" );
    var_2 = _ID42237::_ID3296( var_2, _ID42407::_ID15817( "office_enemies_wave2", "script_noteworthy" ) );
    var_3 = _func_1A2( "office_enemies_wave3", "targetname" );

    if ( var_2.size < var_3.size )
    {
        for ( var_4 = 0; var_4 < var_2.size; var_4++ )
            var_3[var_4] _meth_80B7();
    }
    else
        _ID42237::_ID3294( var_3, ::_meth_80B7 );

    thread _unknown_4BC9();
    _ID42407::_ID1985( _ID42237::_ID14413, "office_enemies_wave1_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "office_enemies_wave2_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "office_enemies_wave3_dead" );
    _ID42407::_ID1890( _ID42237::_ID14402, "office_done" );
    _ID42407::_ID1890( _ID42407::_ID10226, 2, _ID42407::_ID4422, "office_done" );
    _ID42407::_ID1890( _ID42407::_ID10226, 2, _ID42237::_ID14402, "parking_main" );
    thread _ID42407::_ID11231();
    thread _unknown_4C2D();
}

_ID52343()
{
    wait 9.5;
    var_0 = level._ID1194;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID1363 = 0;
    }

    var_clear_2
    var_clear_0
}

_ID51790()
{
    _ID42237::_ID14413( "office_enemies_wave3" );
    wait 0.5;
    var_0 = _func_0DE( "axis" );
    _ID42407::_ID1985( _ID42407::_ID41090, var_0, var_0.size - 1 );
    _ID42407::_ID1890( _ID42407::_ID4917 );
    thread _ID42407::_ID11231();
}

_ID46270()
{
    _ID42237::_ID14413( "parking_player_jumped_down" );

    if ( _ID42237::_ID14385( "office_done" ) )
        return;

    if ( _func_1A7( level._ID1194["marine1"] ) )
        level._ID1194["marine1"] _meth_8058();

    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_1A7( var_2 ) )
        {
            var_2._ID287 = 1;
            var_2 _meth_8058();
        }

        wait(_func_0B8( 0.5 ));
    }

    var_clear_2
    var_clear_0
    wait 0.1;
    var_4 = _ID42237::_ID16640( "parking_start_points", "targetname" );
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        level._ID1194[var_6._ID922] thread maps\dcemp_code::_ID45039( var_6 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14402( "parking_main" );
}

_ID50954()
{
    _ID42237::_ID3350( _func_1A2( "parking_btr_guys", "targetname" ), _ID42407::_ID1947, ::_unknown_50BE );
    thread maps\dcemp_code::_ID46514();
    thread maps\dcemp_code::_ID50556();
    thread maps\dcemp_code::_ID53234();
    thread maps\dcemp_code::_ID45270();
    var_0 = undefined;
    var_0 = "-42263 6917 183";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_0 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_0 );
    _ID42407::_ID1985( _ID42237::_ID14413, "parking_vision_set" );
    _ID42407::_ID1890( maps\dcemp_code::_ID44696 );
    level._ID794 _ID42407::_ID1890( _ID42407::_ID5278, 0.8 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "parking_player_near_btr" );
    _ID42407::_ID1890( _ID42237::_ID14402, "rain_fx2" );
    thread _ID42407::_ID11231();
    thread _unknown_4E88();
    _ID42237::_ID14413( "office_done" );
    thread _ID42407::_ID4917();

    if ( level._ID35897 != "parking" )
    {
        level._ID1194["marine2"]._ID922 = "marine1";
        level._ID1194["marine2"]._ID3189 = "marine1";
        level._ID1194["marine1"] = level._ID1194["marine2"];
        level._ID1194["marine2"] = undefined;
    }

    _ID42237::_ID14413( "parking_main" );
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    _unknown_4EFB();
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26355 );
    _ID42237::_ID3350( level._ID1194, maps\dcemp_code::_ID50164, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10949 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32352, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10871 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID13024, "parking_start_at_node" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID13024, "parking_start_at_node2" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10226, 0.1, _ID42407::_ID32294 );
    level._ID388 thread _unknown_4FAE( "parking_btr_node_foley" );
    level._ID44224 _ID42407::_ID10226( 1, ::_unknown_4FB7, "parking_btr_node_dunn" );
    level._ID1194["marine1"] _ID42407::_ID10226( 1.5, ::_unknown_4FC6, "parking_btr_node_marine1" );
    _ID42237::_ID14388( "_weather_lightning_enabled" );
    _unknown_4FCB();
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41232 );
    _ID42237::_ID14402( "parking_moveout" );
    _ID42237::_ID14402( "_weather_lightning_enabled" );
    _unknown_4FDB();
    _ID42237::_ID14413( "parking_btr_guys_dead" );
    thread _ID42407::_ID4422( "parking_lot_done" );
}

_ID47119()
{
    var_0 = _func_1A2( "parking_pickup_flare", "script_noteworthy" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];
        var_2 _ID42407::_ID10226( 0, maps\dcemp_code::_ID45893, 1100, 0.65 );
        var_2 _meth_81EF( 0.3 );
    }

    _ID42237::_ID14402( "spotlight_lightning" );
}

_ID51770()
{
    _unknown_501B();

    if ( _ID42237::_ID14385( "parking_player_jumped_down" ) )
        return;

    level endon( "parking_open_fire" );
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_huaah" );
    wait 0.25;
    level._ID1194["marine1"] _ID42407::_ID10805( "dcemp_ar2_clear" );
    level._ID388 thread _ID42407::_ID10805( "dcemp_fly_roomclear" );
}

_ID51024()
{
    if ( _ID42237::_ID14385( "parking_player_jumped_down" ) )
        return;

    level endon( "parking_player_jumped_down" );
    var_0 = level._ID1194;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        while ( var_1._ID20918 )
            wait 0.1;
    }

    var_clear_2
    var_clear_0
}

_ID45320()
{
    level endon( "parking_open_fire" );
    _ID42407::_ID3355( level._ID1194, "parking_start_at_node2" );
    wait 1.5;
    level._ID388 _ID42407::_ID10805( "dcemp_fly_smokeem" );
    _ID42237::_ID14402( "parking_open_fire" );
}

_ID47108()
{
    if ( _ID42237::_ID14385( "parking_player_jumped_down" ) )
        return;

    level endon( "parking_open_fire" );
    level._ID388 waittill( "parking_start_at_node" );
    _ID42237::_ID14413( "parking_vision_set" );
    level thread maps\dcemp_code::_ID43293( "triple" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_oldexecbuilding" );
    level._ID44224 thread _ID42407::_ID10805( "dcemp_cpd_gottagoout" );
}

_ID43327( var_0 )
{
    thread _unknown_5172();
    var_1 = _func_0C8( var_0, "targetname" );
    _unknown_5161( var_1 );
    maps\dcemp_code::_ID43261();
    var_1 = _func_0C8( var_1._ID1191, "targetname" );

    switch ( self._ID922 )
    {

    }

    case "marine1":
    case "foley":
    case "dunn":
}

_ID45015( var_0 )
{
    if ( _ID42237::_ID14385( "parking_open_fire" ) )
        return;

    level endon( "parking_open_fire" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42407::_ID13025( "parking_start_at_node" );
    _ID42237::_ID14413( "parking_moveout" );

    switch ( self._ID922 )
    {

    }

    case "marine1":
    case "foley":
    case "dunn":
}

_ID49131()
{
    _ID42237::_ID14421( "parking_moveout3", "parking_open_fire" );
    var_0 = _func_1A1( "parking_btr_aim_node", "targetname" );
    self _meth_8173( var_0 );
    _ID42407::_ID12477();
    _ID42407::_ID32352( 0 );
    self._ID25542 = self._ID10;
    self._ID25544 = self._ID4867;
    self._ID25552 = self._ID464;
    self._ID4867 = 100;
    self._ID10 = 100;
    self._ID464 = 0;
    _ID42237::_ID14413( "parking_open_fire" );

    while ( !_ID42237::_ID14385( "parking_btr_guys_dead" ) )
    {
        var_1 = self _meth_818C( "TAG_FLASH" );
        var_2 = _func_119( var_0._ID740 - var_1 );
        var_3 = _func_11F( self _meth_818D( "TAG_FLASH" ) );

        if ( _func_0FB( var_2, var_3 ) > 0.7 )
            self _meth_81F7();
        else if ( !_ID42407::_ID27540( self _meth_80AF() ) && _func_0F5( self._ID740, level._ID794._ID740 ) > _func_0ED( 512 ) )
        {
            var_4 = _func_06D( self _meth_80AF(), var_0._ID740, 0, self );

            if ( !_func_02F( var_4["entity"] ) || !_func_1B3( var_4["entity"] ) )
                _func_1C8( self._ID1302, self _meth_80AF(), var_0._ID740 );
        }

        wait 0.1;
    }

    self _meth_8174();
    self notify( "stop_custom_aim" );
    _ID42407::_ID10909();
    self._ID4867 = self._ID25544;
    self._ID10 = self._ID25542;
    self._ID464 = self._ID25552;
}

_ID50846( var_0 )
{
    if ( _ID42237::_ID14385( "parking_open_fire" ) )
        return;

    level endon( "parking_open_fire" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42237::_ID14413( "parking_checking_body" );
    wait 1.0;
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    _ID42407::_ID12467();
    var_0 _ID42259::_ID3027( self, "combatwalk_F_spin" );
    var_0 _ID42259::_ID3029( self, "combatwalk_F_spin" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42237::_ID14413( "parking_moveout2" );
    _ID42407::_ID10896();
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42237::_ID14413( "parking_player_near_btr" );
    thread _ID42407::_ID10805( "dcemp_ar2_gotavisual" );
    self._ID7._ID24414 = "stop";
    _ID42259::_ID3020( self, "CornerStndR_alert_signal_enemy_spotted" );
    _ID42237::_ID14402( "parking_moveout3" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self waittill( "goal" );
    _ID42407::_ID14450( "parking_dialog_resume", _ID42407::_ID10805, "dcemp_ar2_clearshot" );
    _ID42407::_ID13025( "parking_start_at_node2" );
}

_ID54356( var_0 )
{
    if ( _ID42237::_ID14385( "parking_open_fire" ) )
        return;

    level endon( "parking_open_fire" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42237::_ID14413( "parking_checking_body" );
    wait 2.5;
    _ID42407::_ID12467();
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42237::_ID14413( "parking_moveout2" );
    _ID42407::_ID10896();
    _ID42407::_ID10226( 2, _ID42407::_ID10805, "dcemp_fly_keepquiet" );
    var_0 = _func_0C8( "parking_moveup2_foley", "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42237::_ID14413( "parking_moveout3" );
    thread maps\dcemp_aud::parking_foley_dialog();
    self._ID7._ID24414 = "stop";
    _ID42259::_ID3020( self, "CornerStndR_alert_signal_move_out" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42407::_ID13025( "parking_start_at_node2" );
}

_ID49828( var_0 )
{
    if ( _ID42237::_ID14385( "parking_open_fire" ) )
        return;

    level endon( "parking_open_fire" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42237::_ID14413( "parking_player_jumped_down" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    level._ID388 thread _ID42407::_ID10805( "dcemp_fly_checkvitals" );
    var_0 _ID42259::_ID3074( self, "hunted_woundedhostage_check" );
    var_1 = [];
    var_1[var_1.size] = self;
    var_1[var_1.size] = level._ID43366;
    _ID42237::_ID14402( "parking_checking_body" );
    var_0 notify( "stop_loop" );
    var_0 _ID42259::_ID3099( var_1, "hunted_woundedhostage_check" );
    thread _ID42407::_ID10805( "dcemp_cpd_gonner" );
    var_0 _ID42259::_ID3029( self, "hunted_woundedhostage_check_soldier_end" );
    _ID42237::_ID14402( "parking_moveout2" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 100;
    self waittill( "goal" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42237::_ID14413( "parking_moveout3" );
    var_0 = _func_0C8( "parking_moveup2_marine1", "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    _ID42407::_ID13025( "parking_start_at_node2" );
    _ID42259::_ID3029( self, "CornerStndR_alert_2_lean" );
    self _meth_81A6( maps\dcemp_code::_ID49110 );
}

_ID46329( var_0 )
{
    self endon( "parking_start_at_node2" );
    _ID42237::_ID14413( "parking_open_fire" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    _ID42407::_ID3136();
    self _meth_81B1( var_0 );
    self._ID452 = 8;
}

_ID47349( var_0 )
{
    self endon( "parking_start_at_node2" );
    _ID42237::_ID14413( "parking_open_fire" );
    var_0 = _func_0C8( "parking_moveup2_foley", "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    _ID42407::_ID3136();
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
}

_ID53141( var_0 )
{
    self endon( "parking_start_at_node2" );
    _ID42237::_ID14413( "parking_open_fire" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( "parking_moveup2_marine1", "targetname" );
    _ID42407::_ID3136();
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
}

_ID51772()
{
    var_0 = _ID42237::_ID16638( "parking_btr_anim_node", "targetname" );
    level._ID48721[3] = _func_06A( "script_origin", var_0._ID740 + ( 0, 0, 40 ) );
    level._ID48721[4] = _func_06A( "script_origin", var_0._ID740 + ( 0, 0, 40000 ) );
    var_1 = level._ID48721;
    var_1[3] _ID42407::_ID27079( "dcemp_rs1_cananyone" );
    var_1[3] _ID42407::_ID27079( "dcemp_rs2_shutup" );

    if ( !_ID42237::_ID14385( "parking_btr_shot_at" ) )
    {
        var_1[0] _meth_80A1( "dcemp_rs3_wecanhearyou", "sounddone" );
        var_1[0] waittill( "sounddone" );
    }
    else
        var_1[4] _ID42407::_ID27079( "dcemp_rs3_wecanhearyou" );

    if ( !_ID42237::_ID14385( "parking_btr_shot_at" ) )
    {
        var_1[1] _meth_80A1( "dcemp_rs4_howthehell", "sounddone" );
        var_1[1] waittill( "sounddone" );
    }
    else
        var_1[4] _ID42407::_ID27079( "dcemp_rs4_howthehell" );

    if ( !_ID42237::_ID14385( "parking_btr_shot_at" ) )
    {
        var_1[2] _meth_80A1( "dcemp_rs5_shutupandhelp", "sounddone" );
        var_1[2] waittill( "sounddone" );
    }
    else
        var_1[4] _ID42407::_ID27079( "dcemp_rs5_shutupandhelp" );

    var_1[3] _ID42407::_ID27079( "dcemp_rs1_getusout" );
    var_1[3] _ID42407::_ID27079( "dcemp_rs2_whatthehell" );

    if ( !_ID42237::_ID14385( "parking_btr_shot_at" ) )
    {
        var_1[2] _meth_80A1( "dcemp_rs5_juststaycalm", "sounddone" );
        var_1[2] waittill( "sounddone" );
    }
    else
        var_1[4] _ID42407::_ID27079( "dcemp_rs5_juststaycalm" );

    if ( !_ID42237::_ID14385( "parking_btr_shot_at" ) )
    {
        var_1[1] _meth_80A1( "dcemp_rs4_notbudging", "sounddone" );
        var_1[1] waittill( "sounddone" );
    }
    else
        var_1[4] _ID42407::_ID27079( "dcemp_rs4_notbudging" );

    if ( !_ID42237::_ID14385( "parking_btr_shot_at" ) )
    {
        var_1[0] _meth_80A1( "dcemp_rs3_maybewecan", "sounddone" );
        var_1[0] waittill( "sounddone" );
    }
    else
        var_1[4] _ID42407::_ID27079( "dcemp_rs3_maybewecan" );

    if ( !_ID42237::_ID14385( "parking_btr_shot_at" ) )
    {
        var_1[2] _meth_80A1( "dcemp_rs5_wedonthavetime", "sounddone" );
        var_1[2] waittill( "sounddone" );
    }
    else
        var_1[4] _ID42407::_ID27079( "dcemp_rs5_wedonthavetime" );

    var_1[3] _ID42407::_ID27079( "dcemp_rs2_ouch" );
    var_1[3] _ID42407::_ID27079( "dcemp_rs1_comeon" );
    var_1[3] _meth_80B7();
    var_1[4] _meth_80B7();
}

_ID48721()
{
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    self._ID7._ID24881 = 1;
    self._ID34237 = 1;
    self._ID24924 = 1;
    thread _ID42407::_ID22746();
    self _meth_8043( "grenade danger" );
    self _meth_8043( "bulletwhizby" );
    _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID1985( _ID42407::_ID41116, "damage" );
    _ID42407::_ID1985( _ID42407::_ID41116, "ai_event" );
    _ID42407::_ID1890( _ID42237::_ID14402, "parking_open_fire" );
    _ID42407::_ID1890( _ID42237::_ID14402, "parking_btr_shot_at" );
    thread _ID42407::_ID11232();

    if ( !_func_02F( level._ID48721 ) )
        level._ID48721 = [];

    level._ID48721[level._ID48721.size] = self;

    if ( level._ID48721.size == 3 )
        thread _unknown_5ABF();

    switch ( self._ID31039 )
    {

    }

    self notify( "sounddone" );
    self _meth_80B3();
    var_1 = _func_067( _ID42407::_ID16122( self._ID31039 ) );
    wait(var_1 - _func_0BA( 1.5, 2.25 ));
    thread _ID42237::_ID27077( "generic_death_russian_" + _func_0B9( 1, 8 ), self _meth_80AF() );
    thread maps\dcemp_code::_ID51627( "killshot" );
    wait 1;
    self._ID49 = 1;
    _ID42407::_ID36519();
    self _meth_8058();
    case "DCemp_BTR_moment_guy2":
    case "DCemp_BTR_moment_guy1":
}

_ID52428()
{
    _ID42237::_ID3350( _func_1A2( "plaza_enemies", "targetname" ), _ID42407::_ID1947, maps\dcemp_code::_ID54672 );
    _ID42407::_ID1985( _ID42237::_ID14413, "parking_high_spec" );
    var_0 = level._ID1194;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( var_1._ID922 == "marine1" )
            continue;

        var_1 _ID42407::_ID13024( "plaza_at_tree" );
        var_1 _ID42407::_ID1985( _ID42407::_ID13027, "plaza_at_tree" );
    }

    var_clear_2
    var_clear_0
    var_3 = undefined;
    var_3 = "-42263 6917 183";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_3 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_3 );
    thread _unknown_5A3A();
    _ID42407::_ID1890( _ID42237::_ID14402, "plaza_to_street" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "plaza_player_exit1" );
    _ID42407::_ID1890( _ID42237::_ID14402, "plaza_open_fire" );
    thread _ID42407::_ID11231();
    wait 1;
    level._ID1194["marine1"] _ID42407::_ID10226( 0, ::_unknown_5FB4 );
    level._ID44224 _ID42407::_ID10226( 0.25, ::_unknown_602E );
    level._ID388 _ID42407::_ID10226( 0.5, ::_unknown_6090 );
    level._ID1194["marine1"] thread _unknown_5F87();
    level._ID44224 thread _unknown_5FB2();
    level._ID388 thread _unknown_5FD8();
    thread _unknown_5E5A();
    maps\dcemp_code::_ID44777();
}

_ID49012()
{
    thread maps\dcemp_code::tunnel_lamps();
    level._ID388 _ID42407::_ID10805( "dcemp_fly_moveup" );
    wait 1;
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_whatabout" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_whataboutem" );
    _ID42237::_ID14421( "plaza_to_street", "plaza_show_enemies" );

    if ( !_ID42237::_ID14385( "plaza_show_enemies" ) )
    {
        _ID42237::_ID14388( "_weather_lightning_enabled" );
        thread _unknown_6165();
        _ID42237::_ID14413( "plaza_player_ready_for_throw" );
        var_0 = _ID42237::_ID16638( "plaza_lookat_node", "targetname" );
        var_0 _ID42407::_ID1985( _ID42407::_ID41136, 0.5 );
        _ID42407::_ID1985( _ID42407::_ID1687, 10 );
        _ID42407::_ID1890( _ID42237::_ID14402, "plaza_show_enemies" );
        thread _ID42407::_ID11232();
        _ID42237::_ID14413( "plaza_show_enemies" );
    }

    _func_0DB( "aim_aimAssistRangeScale", "0" );
    _func_0DB( "aim_autoAimRangeScale", "0" );
    _func_0DB( "cg_crosshairEnemyColor", "0" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32352, 0 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID12477 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10973 );
    var_1 = level._ID1194;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID25552 = var_2._ID464;
        var_2._ID464 = 0;
    }

    var_clear_2
    var_clear_0
    thread _ID42407::_ID3339( _func_1A2( "plaza_enemies", "targetname" ), 1 );
    _unknown_6233();
    level._ID44224 thread _ID42407::_ID10805( "dcemp_cpd_conact" );
    thread _ID42407::_ID14403( "_weather_lightning_enabled", 3 );
    _ID42237::_ID14402( "plaza_open_fire" );
    _func_0DB( "ai_friendlyFireBlockDuration", "2000" );
    _func_0DB( "aim_aimAssistRangeScale", "1" );
    _func_0DB( "aim_autoAimRangeScale", "1" );
    _func_0DB( "cg_crosshairEnemyColor", "1" );
    level._ID794 _ID42407::_ID5279( 1 );
    thread _ID42407::_ID4918();
    _ID42407::_ID1805( "plaza_enemy_color_1" );
    _ID42407::_ID1805( "plaza_ally_color_1" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10909 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10896 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41231 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26353 );
    _ID42237::_ID3294( level._ID1194, ::_meth_81D6, "prone", "crouch", "stand" );
    thread _ID42407::_ID3339( _func_1A2( "plaza_backup", "targetname" ), 1 );
    _ID42237::_ID3350( _func_0DE( "axis" ), _ID42407::_ID32315, "blue" );
    _ID42237::_ID14413( "plaza_flare_thrown" );
    _ID42237::_ID3350( level._ID1194, maps\dcemp_code::_ID50164, 0 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32315, "red" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32388, 1.0 );
    var_4 = level._ID1194;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2._ID464 = var_2._ID25552;
    }

    var_clear_1
    var_clear_0
    thread _unknown_61A0();
    _ID42237::_ID14413( "parking_plaza_guys_dead" );
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    thread _ID42407::_ID4422( "plaza_guys_dead" );
    thread _ID42407::_ID4917( "allies" );
    wait 2.5;
    level._ID1194["marine1"] _ID42407::_ID10805( "dcemp_ar2_streetclear" );
    level._ID388 thread _ID42407::_ID10805( "dcemp_fly_oscarmike" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10871 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41232 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26355 );
    _ID42237::_ID3350( level._ID1194, maps\dcemp_code::_ID50164, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID13024, "plaza_moveout_exit" );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID13024, "plaza_moveout_exit2" );
    var_6 = level._ID1194;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_2 = var_6[var_7];
        var_2 _ID42407::_ID1985( _ID42407::_ID13027, "plaza_moveout_exit" );
    }

    var_clear_1
    var_clear_0
    _ID42407::_ID1985( _ID42237::_ID14413, "plaza_player_exit1" );
    _ID42407::_ID1890( _ID42237::_ID14402, "plaza_moveout_exit" );
    thread _ID42407::_ID11231();
    var_8 = level._ID1194;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_2 = var_8[var_9];
        var_2 _ID42407::_ID1985( _ID42407::_ID13027, "plaza_moveout_exit2" );
    }

    var_clear_1
    var_clear_0
    _ID42407::_ID1985( _ID42237::_ID14413, "plaza_player_exit2" );
    _ID42407::_ID1890( _ID42237::_ID14402, "plaza_moveout_exit2" );
    thread _ID42407::_ID11231();
    level._ID1194["marine1"] thread _unknown_64D6();
    wait 0.5;
    level._ID44224 thread _unknown_6497();
    wait 0.25;
    level._ID388 _unknown_6527();
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41231 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26353 );
    _ID42237::_ID3350( level._ID1194, maps\dcemp_code::_ID50164, 0 );
    _func_0DB( "ai_friendlyFireBlockDuration", "2000" );
}

_ID48734()
{
    _ID42237::_ID14413( "tunnels_dunn_anim_end" );

    if ( _ID42237::_ID14385( "parking_plaza_guys_dead" ) )
        return;

    if ( _ID42237::_ID14385( "parking_high_spec" ) )
        return;

    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID287 = 1;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3294( var_0, ::_meth_8058 );
}

_ID46181()
{
    if ( _ID42237::_ID14385( "plaza_flare_thrown" ) )
        return;

    level endon( "plaza_flare_thrown" );
    self endon( "plaza_moveup_kill_backup" );
    _ID42237::_ID14413( "plaza_open_fire" );
    self notify( "stop_loop" );

    if ( _func_02F( self._ID43977 ) )
        self._ID43977 notify( "stop_loop" );

    _ID42407::_ID3136();
    self._ID24424 = 1.25;
    self _meth_8055();
    var_0 = _ID42237::_ID16638( "parking_jumpdown_stairs2", "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
}

_ID50200()
{
    if ( _ID42237::_ID14385( "plaza_flare_thrown" ) )
        return;

    level endon( "plaza_flare_thrown" );
    self endon( "plaza_moveup_kill_backup" );
    _ID42237::_ID14413( "plaza_open_fire" );
    self notify( "stop_loop" );

    if ( _func_02F( self._ID43977 ) )
        self._ID43977 notify( "stop_loop" );

    _ID42407::_ID3136();
    self._ID24424 = 1.25;
    self _meth_8055();
    var_0 = _ID42237::_ID16638( "park_lookup_foley", "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
}

_ID50239()
{
    self endon( "corner_trans_out" );
    _ID42237::_ID14413( "plaza_open_fire" );
    self notify( "stop_loop" );

    if ( _func_02F( self._ID43977 ) )
        self._ID43977 notify( "stop_loop" );

    _ID42407::_ID3136();
    self._ID24424 = 1.25;
    self _meth_8055();
    var_0 = _ID42237::_ID16638( "street_flarethrow_node", "targetname" );
    var_0 _ID42259::_ID3027( self, "street_flare_throw" );
    _unknown_65DA();
}

_ID50969()
{
    if ( _ID42237::_ID14385( "plaza_open_fire" ) )
        return;

    level endon( "plaza_open_fire" );
    var_0 = _func_0C8( "park_moveup_marine1", "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 4;
    self waittill( "goal" );
    self._ID43977 = var_0;
    var_0 _ID42259::_ID3020( self, "coverstand_look_moveup" );
    var_0 thread _ID42259::_ID3025( self, "coverstand_look_idle" );
    thread _ID42407::_ID10805( "dcemp_ar2_gotoursixgo" );
    wait 1;
    _ID42237::_ID14413( "plaza_player_at_stairs" );
    var_0 notify( "stop_loop" );
    var_0 thread _ID42259::_ID3020( self, "coverstand_trans_OUT_R" );
    var_1 = _func_067( _ID42407::_ID16122( "coverstand_trans_OUT_R" ) );
    wait(var_1 * 0.84);
    _ID42407::_ID3136();
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 thread _ID42259::_ID3020( self, "gulag_sewer_slide" );
    var_1 = _func_067( _ID42407::_ID16122( "gulag_sewer_slide" ) );
    wait(var_1 * 0.3);
    _ID42407::_ID3136();
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 thread _ID42259::_ID3020( self, "favela_civ_warning_landing" );
    var_1 = _func_067( _ID42407::_ID16122( "favela_civ_warning_landing" ) );
    wait(var_1 * 0.1);
    _ID42407::_ID3136();
    _ID42259::_ID3029( self, "stand_2_run_R" );
    thread _ID42259::_ID3020( self, "run_turn_R45" );
    var_1 = _func_067( _ID42407::_ID16122( "run_turn_R45" ) );
    wait(var_1 - 0.3);
    _ID42407::_ID3136();
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    _ID42407::_ID10226( 2, maps\dcemp_code::_ID50164, 0 );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self waittill( "goal" );
    _ID42237::_ID14413( "plaza_to_street" );
    wait 2.25;
    _ID42407::_ID12467();
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self notify( "plaza_moveup_kill_backup" );
}

_ID43472()
{
    if ( _ID42237::_ID14385( "plaza_open_fire" ) )
        return;

    level endon( "plaza_open_fire" );
    var_0 = _func_0C8( "park_moveup_dunn", "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 24;
    _ID42407::_ID10877();
    self waittill( "goal" );
    thread _ID42259::_ID3024( self, "run_turn_L90" );
    wait 0.75;
    self _meth_814C( _ID42407::_ID16122( "run_turn_L90" ), 0.2 );
    self notify( "killanimscript" );
    _ID42407::_ID12452();
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    _ID42407::_ID10226( 0.5, _ID42407::_ID10805, "dcemp_cpd_itsclear" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self waittill( "goal" );
    _ID42407::_ID13025( "plaza_at_tree" );
    _ID42237::_ID14413( "plaza_to_street" );
    wait 0.5;
    _ID42407::_ID12467();
    var_1 = _func_06A( "script_origin", self._ID740 );
    self _meth_8053( var_1 );
    var_1 _meth_82C1( -6.6, 0.5 );
    var_1 _ID42259::_ID3029( self, "corner_standR_trans_CQB_OUT_8" );
    self _meth_8055();
    var_1 _meth_80B7();
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0._ID740 = self._ID740;
    var_0 maps\dcemp_code::_ID54506( self, "patrol_jog_look_up_once" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    maps\dcemp_code::_ID50164( 0 );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self notify( "plaza_moveup_kill_backup" );
}

_ID44267()
{
    _ID42407::_ID13024( "corner_trans_out" );

    if ( _ID42237::_ID14385( "plaza_open_fire" ) )
        return;

    level endon( "plaza_open_fire" );
    var_0 = _func_0C8( "park_moveup_foley", "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self waittill( "goal" );
    _ID42407::_ID13025( "plaza_at_tree" );
    _ID42237::_ID14413( "plaza_to_street" );
    _ID42407::_ID12467();
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self waittill( "goal" );
    _ID42407::_ID13025( "corner_trans_out" );
    _ID42237::_ID14413( "plaza_show_enemies" );
    self._ID7._ID24414 = "stop";
    thread _ID42259::_ID3020( self, "CornerStndR_alert_signal_enemy_spotted" );
    thread _unknown_687E();
}

_ID53650()
{
    _ID42237::_ID14421( "plaza_prepare_throw", "plaza_open_fire" );
    _ID42407::_ID1985( _ID42407::_ID1687, 2.0 );
    _ID42407::_ID1890( _ID42407::_ID10805, "dcemp_fly_staaar" );
    _ID42407::_ID1841( _ID42237::_ID14413, "plaza_open_fire" );
    thread _ID42407::_ID11231();
    var_0 = _func_06A( "script_origin", self._ID740 );
    self _meth_8053( var_0 );
    var_0 _meth_82C1( 17.9, 0.5 );
    var_0 _ID42259::_ID3029( self, "corner_standR_trans_CQB_OUT_9" );
    self _meth_8055();
    var_0 _meth_80B7();
    _unknown_6902();
}

_ID47226()
{
    var_0 = _ID42237::_ID16638( "street_flarethrow_node", "targetname" );
    var_0 _ID42259::_ID3020( self, "street_flare_throw" );
    _ID42237::_ID14402( "plaza_flare_thrown" );

    if ( _ID42237::_ID14385( "plaza_open_fire" ) )
        return;

    self _meth_81B2( self._ID740 );
    self._ID452 = 8;
    self _meth_81D6( "crouch" );
}

_ID46724()
{
    level endon( "plaza_open_fire" );
    wait 1;
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_freezingmonsoon" );
    level._ID1194["marine1"] _ID42407::_ID10805( "dcemp_ar2_huah" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_quietseesomething" );
}

_ID43245()
{
    level endon( "plaza_open_fire" );
    wait 1;
    level thread _ID42407::_ID15093( maps\dcemp_code::_ID43293, "triple" );
    level thread _ID42407::_ID15093( maps\dcemp_code::_ID43293, "double" );
    wait 0.5;
    level._ID388 _ID42407::_ID10805( "dcemp_fly_holdyourfire" );
    wait 1;
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_aretheyfriendly" );
    wait 0.5;
    level._ID388 _ID42407::_ID10805( "dcemp_fly_dontknowstar" );
    wait 1;
    level._ID388 thread _ID42407::_ID10805( "dcemp_fly_coverme" );
    _ID42237::_ID14402( "plaza_prepare_throw" );
    _ID42407::_ID1985( _ID42407::_ID1687, 3.5 );
    level._ID44224 _ID42407::_ID1890( _ID42407::_ID10805, "dcemp_cpd_saytexas" );
    _ID42407::_ID1841( _ID42237::_ID14413, "plaza_open_fire" );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "plaza_throw_react" );
    wait 3.5;
}

_ID50988()
{
    var_0 = _func_0C8( "plaza_moveout_marine1", "targetname" );
    var_1 = _ID42237::_ID14385( "tunnels_dunn_anim_end" ) && !_ID42237::_ID14385( "parking_high_spec" );

    if ( !var_1 )
    {
        self _meth_81B1( var_0 );
        self._ID452 = 8;
        self waittill( "goal" );
        _ID42407::_ID13025( "plaza_moveout_exit" );
        _ID42237::_ID14413( "plaza_moveout_exit" );
        wait 1;
        var_2 = _func_06A( "script_origin", self._ID740 );
        var_2._ID65 = self._ID65;
        self _meth_8053( var_2 );
        var_2 _meth_82C1( 15, 1 );
        var_2 _ID42259::_ID3029( self, "crouch_2run_R" );
        self _meth_8055();
        var_2 _meth_80B7();
        _ID42259::_ID3029( self, "run_turn_L45" );
    }

    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self waittill( "goal" );
    _ID42407::_ID13025( "plaza_moveout_exit2" );
    _ID42237::_ID14413( "plaza_moveout_exit2" );
    wait 0.5;
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 _ID42259::_ID3027( self, "jump_across_100_lunge" );
    var_0 _ID42259::_ID3029( self, "jump_across_100_lunge" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 90;
}

_ID47353()
{
    var_0 = _func_0C8( "plaza_moveout_dunn", "targetname" );
    var_1 = _ID42237::_ID14385( "tunnels_dunn_anim_end" ) && !_ID42237::_ID14385( "parking_high_spec" );

    if ( !var_1 )
    {
        self _meth_81B1( var_0 );
        self._ID452 = 8;
        self waittill( "goal" );
        _ID42259::_ID3020( self, "corner_standR_alert_2_look" );
        thread _ID42259::_ID3025( self, "corner_standR_look_idle" );
        _ID42407::_ID13025( "plaza_moveout_exit" );
        _ID42237::_ID14413( "plaza_moveout_exit" );
        wait 0.5;
        self notify( "stop_loop" );
        _ID42407::_ID3136();
        maps\dcemp_code::_ID54506( self, "corner_standR_trans_OUT_9" );
    }

    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self waittill( "goal" );
    _ID42407::_ID13025( "plaza_moveout_exit2" );
    _ID42237::_ID14413( "plaza_moveout_exit2" );
    wait 1;
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 90;
}

_ID46969()
{
    var_0 = _func_0C8( "plaza_moveout_foley", "targetname" );
    var_1 = _ID42237::_ID14385( "tunnels_dunn_anim_end" ) && !_ID42237::_ID14385( "parking_high_spec" );

    if ( !var_1 )
    {
        self _meth_81B1( var_0 );
        self._ID452 = 8;
        self waittill( "goal" );
        _ID42407::_ID13025( "plaza_moveout_exit" );
        _ID42237::_ID14413( "plaza_moveout_exit" );
        thread _ID42407::_ID10805( "dcemp_fly_watchmovement" );
        maps\dcemp_code::_ID54506( self, "corner_standR_trans_OUT_6" );
    }

    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 8;
    self waittill( "goal" );
    _ID42407::_ID13025( "plaza_moveout_exit2" );
    _ID42237::_ID14413( "plaza_moveout_exit2" );
    thread _ID42407::_ID10805( "dcemp_fly_moveup" );
    self._ID7._ID24414 = "stop";
    _ID42259::_ID3020( self, "CornerStndR_alert_signal_move_out" );
    wait 1;
    var_0 = _func_1A1( var_0._ID1191, "targetname" );
    thread _ID42259::_ID3020( self, "corner_standR_trans_OUT_6" );
    var_2 = _func_067( _ID42407::_ID16122( "corner_standR_trans_OUT_6" ) );
    wait(var_2 - 0.61);
    _ID42407::_ID3136();
    self _meth_8053( var_0 );
    var_0 _ID42237::_ID10192( 0.25, ::_meth_82BB, 8, 0.5 );
    var_0 thread _ID42259::_ID3020( self, "gulag_sewer_slide" );
    var_2 = _func_067( _ID42407::_ID16122( "gulag_sewer_slide" ) );
    wait(var_2 * 0.28);
    self _meth_8055();
    _ID42407::_ID3136();
    thread _ID42259::_ID3024( self, "stand_2_run_F_2", "gravity_run" );
    _ID42237::_ID14402( "tunnels_main" );
}

_ID35812()
{
    maps\dcemp_code::_ID50330();
    _ID42237::_ID14402( "intro_fx" );
    _func_31A( "street", 1 );
    _func_31A( "street2", 1 );
    _ID42475::_ID34575( "start_intro_checkpoint" );
    _unknown_71DA();
    _unknown_5DA3();
    thread maps\dcemp_code::_ID53870( 0 );
}

_ID43506()
{
    _ID42475::_ID34575( "start_iss_checkpoint" );
    _func_31A( "street", 1 );
    _func_31A( "street2", 1 );
    var_0 = maps\dc_crashsite::_ID52955();
    var_1 = _ID42407::_ID35028( "player_rig" );
    var_2[0] = var_1;
    var_3 = _func_1A1( "crash_node", "targetname" );
    var_3 _ID42259::_ID3016( var_2, "dcburning_BHrescue" );
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_8084( var_1, "tag_player", 1, 0, 0, 0, 0, 1 );
    _ID42237::_ID14402( "crash_fade_up" );
    _ID42237::_ID14402( "redshirt_headshot" );
    thread maps\dc_crashsite::_ID47240( var_0["top_left"], var_0["bot_right"], var_1 );
    wait 0.05;
    level._ID794 _meth_8055();
    _unknown_7268();
    thread _ID42407::_ID14403( "emp_entity_cleanup_done", 0.05 );
}

_ID52032()
{
    _ID42475::_ID34575( "start_emp_checkpoint" );
    _ID42237::_ID14402( "intro_fx" );
    thread maps\dcemp_code::_ID53870( 0 );
    thread _unknown_55AE();
    _func_31A( "street", 1 );
    _func_31A( "street2", 1 );
    _unknown_72A4();
    var_0 = _func_1A1( "heli_crash_site_spotlight", "targetname" );
    var_0._ID1191 = "emp_start_crash_heli_spot_node";
    var_1 = _ID42411::_ID35196( "heli_crash_site_spotlight_emp_start" );
    var_1 thread _ID42411::_ID16988();
    var_1 _meth_828D( 30 );
    var_1 _meth_829E( 20, 20 );
    var_2 = _ID42411::_ID35200( "btr80s_end_emp_start" );
    _ID42237::_ID3350( var_2, _ID42411::_ID16988 );
    _ID42237::_ID3350( var_2, _ID42411::_ID23509 );
    _ID42237::_ID3350( var_2, maps\dc_crashsite::_ID51292 );
    var_3 = maps\dc_crashsite::_ID52955();
    var_4 = _ID42407::_ID35028( "player_rig" );
    var_5[0] = var_4;
    var_6 = _func_1A1( "crash_node", "targetname" );
    var_6 thread _ID42259::_ID3099( var_5, "dcburning_BHrescue" );
    var_4 _meth_8120( var_4 _ID42407::_ID16120( "dcburning_BHrescue" ), 1 );
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_8084( var_4, "tag_player", 1, 0, 0, 0, 0, 1 );
    thread maps\dc_crashsite::_ID47240( var_3["top_left"], var_3["bot_right"], var_4 );
    _unknown_5F18();
    level._ID794 _meth_831B();
    level._ID794 _meth_8319( "m4m203_eotech" );
    level._ID794 _meth_8320( "m4m203_eotech" );
    level._ID794 _meth_8301( "m203_m4_eotech", 0 );
    level._ID794 _meth_8302( "m203_m4_eotech", 0 );
    level._ID794 _meth_8301( "m4m203_eotech", 0 );
    level._ID794 _meth_8302( "m4m203_eotech", 0 );
    _func_0DB( "ui_hidemap", 1 );
    _func_0DB( "hud_showStance", "0" );
    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", "1" );
    _ID42237::_ID14402( "crash_fade_up" );
    wait 1;
    _ID42237::_ID14402( "redshirt_headshot" );
    _ID42237::_ID14402( "crash_cut_to_black" );
    _ID42237::_ID14402( "iss_done" );
    thread maps\dc_crashsite::_ID43497();
    var_7 = _func_1A2( "emp_show", "targetname" );
    var_7 = _ID42237::_ID3296( var_7, _func_1A2( "emp_light", "targetname" ) );
    var_7 = _ID42237::_ID3296( var_7, _ID42237::_ID16640( "fx_flare", "targetname" ) );
    _ID42237::_ID3350( var_7, maps\dcemp_code::_ID50616 );
}

_ID36017()
{
    _unknown_7453( 1 );
    _func_31A( "street", 1 );
    _func_31A( "street2", 1 );
    level.sunpitch = -20;
    level.sunheading = 55;
    _ID42475::_ID34575( "start_street_checkpoint" );
    maps\dcemp_code::_ID50330();
    _ID42237::_ID14402( "intro_fx" );
    thread maps\dcemp_code::_ID53870( 0 );
    _unknown_6015();
    thread _ID42407::_ID4917();
    wait 0.1;
    var_0 = _ID42237::_ID16638( level._ID388._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    level._ID388 maps\dcemp_code::_ID45039( var_0 );
    level._ID388._ID452 = 16;
    level._ID388 _meth_81B1( var_0 );
    var_0 = _ID42237::_ID16638( level._ID44224._ID1191, "targetname" );
    var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    level._ID44224 maps\dcemp_code::_ID45039( var_0 );
    level._ID44224._ID452 = 16;
    level._ID44224 _meth_81B1( var_0 );
    var_0 = _func_0C8( level._ID1194["marine1"]._ID1191, "targetname" );
    var_0 = _func_0C8( var_0._ID1191, "targetname" );
    level._ID1194["marine1"] maps\dcemp_code::_ID45039( var_0 );
    level._ID1194["marine1"]._ID452 = 16;
    level._ID1194["marine1"] _meth_81B1( var_0 );
    _ID42237::_ID14402( "emp_entity_cleanup_done" );
    thread _ID42407::_ID14403( "street_main", 0.5 );
}

_ID54077()
{
    _unknown_7551( 1 );
    _func_31A( "street", 1 );
    _func_31A( "street2", 1 );
    level.sunpitch = -20;
    level.sunheading = 55;
    _ID42475::_ID34575( "start_corner_checkpoint" );
    maps\dcemp_code::_ID50330();
    _ID42237::_ID14402( "intro_fx" );
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    _ID42237::_ID3350( _func_1A2( "street_crash_heli", "script_noteworthy" ), maps\dcemp_code::_ID46972 );
    _ID42237::_ID3350( _ID42237::_ID16640( "street_crash_heli_anim", "script_noteworthy" ), maps\dcemp_code::_ID48472 );
    _ID42237::_ID3350( _func_1A2( "meetup_allies", "targetname" ), _ID42407::_ID1947, ::_unknown_61B5 );
    _ID42407::_ID1801( "meetup_allies", "target" );
    level._ID43168 _meth_80B7();
    wait 0.05;
    _func_1A1( "street_btr", "targetname" ) _ID42407::_ID1947( maps\dcemp_code::_ID52799 );
    _func_1A1( "street_crash_motorcycle", "targetname" ) thread maps\dcemp_code::_ID43406();
    _ID42237::_ID3350( _func_1A2( "street_crash_car", "script_noteworthy" ), maps\dcemp_code::_ID50039 );
    _ID42237::_ID3350( _func_1A2( "street_crash_heli", "script_noteworthy" ), maps\dcemp_code::_ID46972 );
    _ID42237::_ID3350( _func_1A2( "corner_truck_engine_crash", "targetname" ), maps\dcemp_code::_ID52276 );
    thread _unknown_63AB();
    _ID42234::_ID13611( "hide_heli_crash" );
    var_0 = _func_1DC( "street_hide_glass" );
    var_1 = _func_11F( ( 0, 345, 0 ) );
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _ID42237::_ID24938( 1, ::_func_1DF, var_3, var_1 * 200 );
    }

    var_clear_2
    var_clear_0
    thread _ID42407::_ID4917();
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26355 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41232 );
    var_5 = [];
    var_5 = _ID42237::_ID3293( var_5, _func_0C8( "street_marine1_hide_node", "targetname" ) );
    var_5 = _ID42237::_ID3293( var_5, _func_0C8( "street_macey_hide_node", "targetname" ) );
    var_5 = _ID42237::_ID3293( var_5, _func_0C8( "corner_macey_hide_node", "targetname" ) );
    var_5 = _ID42237::_ID3293( var_5, _func_0C8( "corner_start2", "targetname" ) );
    var_5 = _ID42237::_ID3293( var_5, _func_0C8( "corner_start3", "targetname" ) );
    maps\dcemp_code::_ID51298( level._ID1194, var_5 );
    maps\dcemp_code::_ID47900();
    var_6 = level._ID1194;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7._ID38 = "alert";
    }

    var_clear_2
    var_clear_0
    var_9 = _func_0C8( "corner_macey_hide_node", "targetname" );
    level._ID388 _ID42237::_ID10192( 0.5, ::_meth_81B1, var_9 );
    thread _ID42407::_ID14403( "corner_main", 0.5 );
    thread _ID42407::_ID14403( "street_crash_heli_done", 0.5 );
    _func_1E3( level._ID52635, "active", &"DCEMP_OBJ_FIND_SHELTER", _ID42237::_ID16638( "hide_obj", "targetname" )._ID740 );
    _func_1E9( level._ID52635 );
}

_ID51788()
{
    _unknown_775E( 1 );
    _func_31A( "street", 1 );
    _func_31A( "street2", 1 );
    level.sunpitch = -20;
    level.sunheading = 55;
    _ID42475::_ID34575( "start_meetup_checkpoint" );
    maps\dcemp_code::_ID50330();
    _ID42237::_ID14402( "intro_fx" );
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    _ID42237::_ID3350( _func_1A2( "street_crash_heli", "script_noteworthy" ), maps\dcemp_code::_ID46972 );
    _ID42237::_ID3350( _ID42237::_ID16640( "street_crash_heli_anim", "script_noteworthy" ), maps\dcemp_code::_ID48472 );
    _ID42237::_ID3350( _func_1A2( "meetup_allies", "targetname" ), _ID42407::_ID1947, ::_unknown_63C2 );
    _ID42407::_ID1801( "meetup_allies", "target" );
    level._ID43168 _meth_80B7();
    maps\dcemp_code::_ID48390();
    wait 0.05;
    thread _ID42407::_ID4917();
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26355 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41232 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32329, "casual_killer_jog" );
    maps\dcemp_code::_ID51298( level._ID1194, _ID42237::_ID16640( "meetup_ai_nodes", "targetname" ) );
    maps\dcemp_code::_ID47900();
    thread _ID42407::_ID14403( "meetup_main", 0.5 );
    _func_1E3( level._ID52635, "active", &"DCEMP_OBJ_FOLLOW_SGT_FOLEY", level._ID388._ID740 );
    _func_1E9( level._ID52635 );
    _func_194( level._ID52635, level._ID388, ( 0, 0, 70 ) );
}

_ID35838()
{
    _unknown_785E( 1 );
    _func_31A( "street", 1 );
    _func_31A( "street2", 1 );
    level.sunpitch = -20;
    level.sunheading = 55;
    _ID42475::_ID34575( "start_lobby_checkpoint" );
    _ID42237::_ID14402( "intro_fx" );
    _ID42237::_ID14402( "start_rain_ambience" );
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    _ID42237::_ID3350( _func_1A2( "meetup_allies", "targetname" ), _ID42407::_ID1947, ::_unknown_64A2 );
    _ID42407::_ID1801( "meetup_allies", "target" );
    waitframe;
    level._ID43168 _meth_80B7();
    maps\dcemp_code::_ID48390();
    thread _ID42407::_ID4917();
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32353, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32352, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26355 );
    _ID42237::_ID3350( level._ID1194, maps\dcemp_code::_ID50164, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41232 );
    var_0 = [];
    var_0 = _ID42237::_ID3293( var_0, _ID42237::_ID16638( "meetup_runner_dunn", "targetname" ) );
    var_0 = _ID42237::_ID3293( var_0, _ID42237::_ID16638( "meetup_runner_foley", "targetname" ) );
    var_0 = _ID42237::_ID3293( var_0, _ID42237::_ID16638( "meetup_runner_1", "targetname" ) );
    var_0 = _ID42237::_ID3293( var_0, _ID42237::_ID16638( "meetup_runner_2", "targetname" ) );
    var_0 = _ID42237::_ID3293( var_0, _ID42237::_ID16638( "meetup_runner_3", "targetname" ) );
    maps\dcemp_code::_ID51298( level._ID1194, var_0 );
    var_1 = _ID42237::_ID16638( "meetup_runner_anim_node", "targetname" );
    level._ID44224 maps\dcemp_code::_ID45039( var_1 );
    maps\dcemp_code::_ID47900();
    thread _ID42407::_ID14403( "lobby_main", 0.5 );
    var_2 = _func_1A1( "meetup_door_left", "targetname" );
    var_3 = _func_1A1( "office_door_clip", "targetname" );
    var_3 _meth_8053( var_2 );
    var_3 _ID42237::_ID10192( 0.5, ::_meth_805F );
    var_2 _ID42237::_ID10192( 1, ::_meth_82C1, -90, 0.5 );
    var_3 _ID42237::_ID10192( 2.0, ::_meth_805E );
    thread _ID42422::_ID28930( 1 );
    _ID42407::_ID10226( 1, _ID42422::_ID22327, _ID52596::_ID22335, _ID52596::_ID22333 );
    _func_1E3( level._ID52635, "active", &"DCEMP_OBJ_WHISKEY_HOTEL", level._ID388._ID740 );
    _func_1E9( level._ID52635 );
    _func_194( level._ID52635, level._ID388, ( 0, 0, 70 ) );
}

_ID35868()
{
    _unknown_7A02( 1 );
    _func_31A( "street2", 1 );
    level.sunpitch = -20;
    level.sunheading = 55;
    _ID42475::_ID34575( "start_office_checkpoint" );
    _ID42237::_ID14402( "intro_fx" );
    _ID42237::_ID14402( "start_rain_ambience" );
    _ID42234::_ID13611( "moon" );
    thread maps\dcemp_code::_ID51795( 0 );
    _ID42237::_ID3350( _func_1A2( "meetup_allies", "targetname" ), _ID42407::_ID1947, ::_unknown_6641 );
    _ID42407::_ID1801( "meetup_allies", "target" );
    thread maps\dcemp_code::_ID54649();
    _ID42407::_ID10226( 0.1, _ID42407::_ID1801, "office_ally_color_1", "target" );
    _ID42407::_ID10226( 0.5, _ID42407::_ID1801, "office_ally_color_2", "target" );
    level._ID43168 _meth_80B7();
    thread _ID42407::_ID4917();
    wait 0.05;
    level._ID1194["marine3"] _meth_8058();
    level._ID1194["marine2"] thread _ID42407::_ID22746();
    maps\dcemp_code::_ID51298( level._ID1194, _ID42237::_ID16640( "office_start_points1", "targetname" ) );
    maps\dcemp_code::_ID47900();
    level._ID1194 = _ID42407::_ID3328( level._ID1194 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32315, "red" );
    var_0 = _func_1A1( "lobby_door_left", "targetname" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    var_2 = undefined;
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_02F( var_4._ID31388 ) && var_4._ID31388 == "door_coll" )
            var_2 = var_4;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3294( var_1, ::_meth_8053, var_0 );
    var_0 thread _ID42407::_ID19212( "scn_dcemp_lobby_door_slow_open" );

    if ( _func_02F( var_2 ) )
        var_2 _meth_805F();

    var_0 = _func_1A1( "lobby_door_right", "targetname" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    _ID42237::_ID3294( var_1, ::_meth_8053, var_0 );
    var_0 _meth_805F();
    _ID42237::_ID14402( "lobby_door_kick" );
    var_6 = 0.4;
    var_0 _meth_82C2( 90, var_6 );
    var_0 _meth_80A1( "scn_dcemp_lobby_door_kick" );
    thread _ID42407::_ID14403( "office_main", 0.25 );
    thread _ID42422::_ID28924( 1 );
    _ID42407::_ID10226( 1, _ID42422::_ID22327, _ID52596::_ID22335, _ID52596::_ID22333 );
    _func_1E3( level._ID52635, "active", &"DCEMP_OBJ_WHISKEY_HOTEL", level._ID388._ID740 );
    _func_1E9( level._ID52635 );
    _func_194( level._ID52635, level._ID388, ( 0, 0, 70 ) );
}

_ID53859()
{
    _unknown_7BC4( 1 );
    level.sunpitch = -24;
    level.sunheading = -14;
    _ID42475::_ID34575( "start_parking_checkpoint" );
    _ID42237::_ID14402( "rain_fx" );
    _ID42237::_ID14402( "start_rain_ambience" );
    _ID42234::_ID13611( "moon" );
    thread maps\dcemp_code::_ID51795( 0 );
    thread maps\dcemp_code::_ID54649();
    level._ID43168 _meth_80B7();
    thread _ID42407::_ID4917();
    waitframe;
    maps\dcemp_code::_ID51298( level._ID1194, _ID42237::_ID16640( "parking_start_points", "targetname" ) );
    maps\dcemp_code::_ID47900();
    thread _ID42407::_ID14403( "office_done", 0.15 );
    thread _ID42407::_ID14403( "parking_main", 0.25 );
    thread _ID42422::_ID28924( 0.05 );
    _ID42407::_ID10226( 0.05, _ID42422::_ID22327, _ID52596::_ID22335, _ID52596::_ID22333 );
    _func_1E3( level._ID52635, "active", &"DCEMP_OBJ_WHISKEY_HOTEL", level._ID388._ID740 );
    _func_1E9( level._ID52635 );
    _func_194( level._ID52635, level._ID388, ( 0, 0, 70 ) );
}

_ID43920()
{
    _unknown_7C78( 1 );
    level.sunpitch = -20;
    level.sunheading = 55;
    _ID42475::_ID34575( "start_plaza_checkpoint" );
    level._ID794 _ID42407::_ID5278( 0.8 );
    _ID42237::_ID14402( "rain_fx" );
    _ID42237::_ID14402( "rain_on" );
    _ID42237::_ID14402( "start_rain_ambience" );
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    thread maps\dcemp_code::_ID44696( 0.1 );
    thread maps\dcemp_code::_ID53234();
    thread maps\dcemp_code::_ID45270();
    _ID42237::_ID38863( "parking_btr_guys", "target" );
    _ID42237::_ID14402( "parking_main" );
    _ID42237::_ID14402( "spotlight_lightning" );
    level._ID43168 _meth_80B7();
    thread _ID42407::_ID4917();
    waitframe;
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID26355 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID41232 );
    _ID42237::_ID3350( level._ID1194, maps\dcemp_code::_ID50164, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10949 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID32352, 1 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10871 );
    maps\dcemp_code::_ID51298( level._ID1194, _ID42237::_ID16640( "plaza_start_points", "targetname" ) );
    maps\dcemp_code::_ID47900();
    _ID42237::_ID14402( "parking_btr_guys_dead" );
    thread _ID42422::_ID28924( 0.05 );
    _ID42407::_ID10226( 0.05, _ID42422::_ID22327, _ID52596::_ID22335, _ID52596::_ID22333 );
    _func_1E3( level._ID52635, "active", &"DCEMP_OBJ_WHISKEY_HOTEL", level._ID388._ID740 );
    _func_1E9( level._ID52635 );
    _func_194( level._ID52635, level._ID388, ( 0, 0, 70 ) );
}

startmap_light_setup()
{
    thread maps\dcemp_code::_ID43656( level._ID1049["helicopterstage"], 2 );
    var_0 = _func_1A1( "planeTurbine_fire_light", "targetname" );
    var_0 _meth_81EB( 0 );
    var_0 = _func_1A1( "planeTurbine_fire_light02", "targetname" );
    var_0 _meth_81EB( 0 );
    var_0 = _func_1A1( "light_entry_lobby", "script_noteworthy" );
    var_0 _meth_81EB( 0 );
    level.sunpitch = -20;
    level.sunheading = 55;
    _ID42237::_ID3350( _func_1A2( "emp_light_column", "script_noteworthy" ), ::_unknown_6998, 0, 3000 );
    _ID42237::_ID3350( _func_1A2( "emp_light_door", "script_noteworthy" ), ::_unknown_69AC, 0, 600 );
    _ID42237::_ID3350( _func_1A2( "emp_light_window_high", "script_noteworthy" ), ::_unknown_69C0, 0, 500 );
    _ID42237::_ID3350( _func_1A2( "emp_light_window_low", "script_noteworthy" ), ::_unknown_69D4, 0, 250 );
    _ID42237::_ID3350( _func_1A2( "emp_light_ground", "script_noteworthy" ), ::_unknown_69E8, 0, 4000 );
}

_ID48475( var_0 )
{
    level._ID1194 = [];
    _ID42407::_ID1892( "allies", ::_unknown_7E5E );
    _ID42237::_ID3350( _func_1A2( "intro_team", "targetname" ), _ID42407::_ID1947, maps\dcemp_code::_ID48925 );
    _ID42407::_ID1801( "intro_team", "target" );
    _ID42237::_ID14413( "team_initialized" );
    var_1 = _func_1A1( "mask_ents", "targetname" );
    var_1 _ID42407::_ID1786();
    var_1 _ID42407::_ID1794();

    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    if ( var_0 )
        level._ID794 _meth_822E( 1 );
}

_ID46537()
{
    self._ID8274 = ::_unknown_7EBC;
}

_ID43051( var_0 )
{
    self endon( "stop_going_to_node" );
    self endon( "stop_color_move" );
    self endon( "death" );
    self waittill( "goal" );
    var_0 notify( "trigger",  self  );
}

_ID43005()
{
    _ID42237::_ID14400( "dc_emp_missile" );
    _ID42237::_ID14400( "dc_emp_missile_hit" );
    _ID42237::_ID14400( "dc_emp_afternath" );

    if ( !_ID42237::_ID14396( "dc_emp_bunker" ) )
        _ID42237::_ID14400( "dc_emp_bunker" );

    switch ( level._ID35897 )
    {

    }

    case "default":
    case "tunnels":
    case "plaza":
    case "parking":
    case "office":
    case "lobby":
    case "meetup":
    case "corner":
    case "street":
    case "emp":
    case "iss":
    case "intro":
    default:
}
