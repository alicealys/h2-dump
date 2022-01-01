// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
    {
        maps\favela_beautiful_corner::_ID616();
        return;
    }

    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\favela_mission_select_cam::_ID50320();
        return;
    }

    _ID42237::_ID3294( getentarray( "ammo_crate_part", "targetname" ), ::delete );
    _ID42237::_ID3294( getentarray( "ammo_crate_clip", "targetname" ), ::delete );
    _ID42237::_ID3294( getentarray( "ammo_cache", "targetname" ), ::delete );
    setdynamicdvar( "favela_trailer", "0" );
    setsaveddvar( "fx_cast_shadow", 0 );
    setsaveddvar( "r_lightGridEnableTweaks", 1 );
    setsaveddvar( "r_lightGridIntensity", 1.5 );
    setsaveddvar( "r_lightGridContrast", 0 );
    _ID42407::_ID10126( ::_ID51193 );
    _ID42407::_ID1951( "street", ::_ID51193 );
    _ID42407::_ID1951( "chase", ::_ID52389 );
    _ID42407::_ID1951( "favela", ::_ID49823 );
    _ID42407::_ID1951( "torture", ::_ID46020 );
    _ID42407::_ID1951( "soccer", ::_ID43704 );
    _ID42407::_ID1951( "hilltop", ::_ID49424 );
    _ID42407::_ID1951( "trailer1", ::_ID49588 );
    _ID42407::_ID1951( "trailer2", ::_ID48884 );
    _ID42407::_ID1951( "trailer3", ::_ID53227 );
    _ID42407::_ID1951( "end", ::_ID50552 );
    _ID45443::_ID616();
    _ID51362::_ID616();
    _ID42231::_ID48620( "vehicle_coupe_gold", "fx/explosions/small_vehicle_explosion", "fx/explosions/small_vehicle_explosion_favela" );
    _ID46622::_ID616();
    _ID51411::_ID616();
    maps\favela_lighting::_ID616();
    _ID42287::_ID521();
    animscripts\dog\dog_init::_ID19886();
    _ID52657::_ID616();
    _ID42323::_ID32417( "viewhands_player_tf141_favela" );
    _ID42323::_ID616();
    _ID45285::_ID49852();
    maps\favela_anim::_ID616();
    _ID42272::_ID33575( "compass_map_favela" );
    maps\favela_aud::_ID616();
    thread _ID43858::_ID616();
    level._ID46790 = getdvarfloat( "ai_friendlyFireBlockDuration" );
    level._ID2184 = 30000;
    level._ID2183 = 1;
    level._ID43523 = gettime();
    level._ID52071[0] = "trash_container_big2";
    level._ID52071[1] = "com_milk_carton";
    level._ID52071[2] = "com_bottle4";
    level._ID52071[3] = "trash_cup_tall3";
    level._ID52071[4] = "trash_plate1";
    level._ID52071[5] = "trash_can1";
    level._ID52071[6] = "trash_can2";
    level._ID52071[7] = "trash_can3";
    level._ID52071[8] = "trash_can4";

    foreach ( var_1 in level._ID52071 )
        precachemodel( var_1 );

    precachestring( &"FAVELA_OBJ_FIND_ROJAS" );
    precachestring( &"FAVELA_OBJ_CATCH_RUNNER" );
    precachestring( &"FAVELA_OBJ_REACH_TOP" );
    precachestring( &"FAVELA_OBJ_CAPTURE" );
    precachestring( &"FAVELA_KILLED_RUNNER" );
    precachestring( &"FAVELA_RUNNER_GOT_AWAY" );
    precachestring( &"FAVELA_ROJAS_KILLED" );
    precachestring( &"FAVELA_DUCK_HINT" );
    precachestring( &"FAVELA_DUCK_HINT_KEYBOARD" );
    precachestring( &"FAVELA_DEADQUOTE_KILL_ASSISTANT_TORTURE" );
    precachestring( &"FAVELA_OBJ_CAPTURE_ROJAS" );
    precachestring( &"FAVELA_OBJ_INTERCEPT" );
    precacheshader( "black" );
    precacherumble( "tank_rumble" );
    precacheitem( "rpg_straight" );
    precacheitem( "flash_grenade" );
    precachemodel( "com_bike_animated" );
    precachemodel( "h2_curtain_torn01_animated" );
    precachemodel( "machinery_car_battery" );
    precachemodel( "body_slum_civ_male_aa" );
    precachemodel( "h2_soccer_ball" );
    precachemodel( "h2_weapon_masada_grenadier_acog_black" );
    precachemodel( "h2_viewbody_stoccom" );
    precachemodel( "h2_body_vil_faust_assist_shot" );
    precachemodel( "h2_german_sheperd_dog_dark" );
    precachemodel( "h2_german_sheperd_dog_gray" );
    precachemodel( "h2_head_seal_soccom_e" );
    precachemodel( "hat_militia_bb_blk" );
    precachemodel( "body_seal_soccom_assault_b_blk_bloody" );
    precachemodel( "head_seal_soccom_e_bloody" );
    _ID42407::_ID3343( "delete_at_path_end", maps\favela_code::_ID49718 );
    _ID42407::_ID3343( "civilian_run_to_grid", maps\favela_code::_ID45133 );
    _ID42407::_ID3343( "delete_at_path_end_no_choke", maps\favela_code::_ID43843 );
    _ID42407::_ID3343( "seek_player", maps\favela_code::_ID44232 );
    _ID42407::_ID3343( "dog_seek_player", maps\favela_code::_ID45233 );
    _ID42407::_ID3343( "delete_at_goal", maps\favela_code::_ID53331 );
    _ID42407::_ID3343( "dont_see_player_no_choke", maps\favela_code::_ID51696 );
    _ID42407::_ID3343( "ignore_and_delete_on_goal_nosight", maps\favela_code::_ID46476, 1 );
    _ID42407::_ID3343( "window_smasher", maps\favela_code::_ID49949 );
    _ID42407::_ID3343( "ignored_until_goal", maps\favela_code::_ID51706 );
    _ID42407::_ID3343( "desert_eagle_guy", maps\favela_code::_ID50867 );
    _ID42407::_ID3343( "faust", maps\favela_code::_ID51386 );
    _ID42407::_ID3343( "civilian_driver", maps\favela_code::_ID44538 );
    var_3 = getspawnerteamarray( "axis" );
    var_4 = [];

    foreach ( var_6 in var_3 )
    {
        if ( var_6._ID170 == "actor_enemy_dog" )
            var_6 _ID42407::_ID1947( maps\favela_code::random_dog_model_swap );

        if ( !isdefined( var_6._ID31388 ) )
            continue;

        var_4[var_4.size] = var_6;
    }

    _ID42407::_ID3342( var_4, maps\favela_code::_ID46945 );
    _ID42407::_ID3342( getspawnerteamarray( "neutral" ), maps\favela_code::_ID44821 );
    _ID42237::_ID3350( getentarray( "play_sound", "targetname" ), maps\favela_code::_ID44571 );
    _ID42237::_ID3350( getentarray( "trigger_chance", "targetname" ), maps\favela_code::_ID54531 );
    _ID42237::_ID3350( getentarray( "physics_drop", "targetname" ), maps\favela_code::_ID53467 );
    _ID42237::_ID3350( getentarray( "trigger_cleanup", "targetname" ), maps\favela_code::_ID47431 );
    _ID42237::_ID3350( getentarray( "potted_plant", "targetname" ), maps\favela_code::_ID51266 );
    _ID42237::_ID3350( getentarray( "play_fx_trig", "targetname" ), maps\favela_code::_ID52450 );
    _ID42237::_ID3350( getentarray( "retreat_trigger", "targetname" ), maps\favela_code::_ID43655 );
    _ID42237::_ID3350( getentarray( "curtain_pulldown", "script_noteworthy" ), maps\favela_code::_ID46383 );
    _ID42237::_ID3350( getentarray( "curtain_pulldown_insun", "script_noteworthy" ), maps\favela_code::_ID46383, 0, 1 );
    _ID42237::_ID3350( getentarray( "curtain_pulldown_playerwait", "script_noteworthy" ), maps\favela_code::_ID46383, 1, 1 );
    _ID42237::_ID3350( getentarray( "curtain_pulldown_insun_cantsee", "script_noteworthy" ), maps\favela_code::_ID46383, 0, 1, 1 );
    _ID42237::_ID3350( getvehiclenodearray( "car_screech_node", "script_noteworthy" ), maps\favela_code::_ID43816 );
    _ID42407::_ID1892( "axis", maps\favela_code::_ID49898 );
    _ID42237::_ID14400( "favela_gate_dialog_done" );
    _ID42237::_ID14400( "car_getting_shot" );
    _ID42237::_ID14400( "driver_dead" );
    _ID42237::_ID14400( "player_is_ducking" );
    _ID42237::_ID14400( "soccer_start" );
    _ID42237::_ID14400( "torture_outro_started" );
    _ID42237::_ID14400( "torture_outro_done" );
    _ID42237::_ID14400( "player_is_unducking" );
    _ID42237::_ID14400( "player_dies_in_vehicle" );
    _ID42237::_ID14400( "player_starts_exiting_vehicle" );
    _ID42237::_ID14400( "favela_music" );
    _ID42237::_ID14400( "faust_music" );
    _ID42237::_ID14400( "opening_scene_started" );
    _ID42237::_ID14400( "favela_enemies_spawned" );
    _ID42237::_ID14400( "start_chase" );
    _ID42237::_ID14400( "block_alley" );
    _ID42237::_ID14400( "favela_move_friendlies" );
    _ID42237::_ID14400( "favela_civilians_fleeing" );
    _ID42237::_ID14400( "allow_meat_death" );
    _ID42237::_ID14400( "allow_royce_death" );
    _ID42237::_ID14400( "civilians_walla" );
    _ID42237::_ID14400( "torture_sequence_done" );
    _ID42237::_ID14400( "van_skid" );
    _ID42237::_ID14400( "makarov_alley_wounded" );
    _ID42237::_ID14400( "favela_civilians_alerted" );
    _ID42237::_ID14400( "favela_civilians_spawned" );
    _ID42237::_ID14400( "ending_sequence_ready" );
    _ID42237::_ID14400( "ending_sequence_started" );
    _ID42237::_ID14400( "ending_sequence_dialog" );
    _ID42237::_ID14400( "start_final_dialog" );
    _ID42237::_ID14400( "shutter_closed" );
    _ID42237::_ID14400( "soap_exits_car" );
    _ID42237::_ID14400( "faust_appearance_1_end" );
    _ID42237::_ID14400( "faust_appearance_2_end" );
    _ID42237::_ID14400( "faust_appearance_3_end" );
    _ID42237::_ID14400( "skipped_faust_appearance_2" );
    _ID42237::_ID14400( "skipped_faust_appearance_3" );
    _ID42237::_ID38863( "favela_opening_civilians_spawn", "targetname" );
    level._ID50107 = getdvar( "cg_cinematicFullScreen" );
    thread maps\favela_code::_ID49035();
    thread maps\favela_code::_ID48467();
    thread _ID50209();
    thread _ID53303();
    thread _ID51164();
    thread _ID53123();
    thread _ID54233();
    thread _ID53247();
    thread _ID44687();
    thread _ID54660();
    thread _ID44475();
    thread _ID50628();
    thread maps\favela_code::_ID45100();
    thread _ID52843();
    thread _ID50501();
    thread _ID52397();
    thread maps\favela_code::static_model_groups_setup();
    thread _ID42407::_ID10987( "favela_cancel_royce_anim" );
    thread _ID42407::_ID10987( "favela_move_friendlies" );
    objective_add( 1, "current", &"FAVELA_OBJ_FIND_ROJAS" );
    var_8 = _ID42407::_ID16219();

    if ( var_8 != "hard" && var_8 != "fu" )
    {
        setsaveddvar( "ai_accuracy_attackerCountMax", 4 );
        setsaveddvar( "ai_accuracy_attackerCountDecrease", 0.6 );
    }

    thread _ID54185();

    if ( getdvarint( "limited_mode" ) )
    {
        level._ID35897 = "torture";
        level._ID51625 = maps\favela_code::_ID44833;
        maps\favela_code::_ID52864();
    }

    _ID42237::_ID3350( getentarray( "animated_flag1", "targetname" ), maps\favela_code::_ID49493, "flag1" );
    _ID42237::_ID3350( getentarray( "animated_flag2", "targetname" ), maps\favela_code::_ID49493, "flag2" );
    _ID42237::_ID3350( getentarray( "animated_chicken", "targetname" ), maps\favela_code::_ID43233 );
    var_9 = getent( "spawn_allies_left_side_of_bus", "targetname" );
    var_9 thread maps\favela_code::sync_left_side_of_bus_spawning();
    maps\favela_code::hide_destructible_vehicles( 1, "hiding_car" );
    var_10 = getent( "fire_hydrant", "script_noteworthy" );
    var_10 _meth_848a( var_10._ID740 );
}

_ID51193()
{
    _ID42475::_ID34575( "start_street_checkpoint" );
    thread _ID42407::_ID4917( "allies" );
    thread _ID42407::_ID4917( "axis" );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showStance", 0 );
    thread maps\favela_code::_ID50932( 3.5, "traffic_car_groupA_1", "traffic_car_groupA_2" );
    thread maps\favela_code::_ID50932( 5.0, "traffic_car_groupB_1", "traffic_car_groupB_2" );
    _ID42237::_ID3350( getentarray( "street_civilian", "targetname" ), _ID42407::_ID35014, 1 );
    _ID42407::_ID10226( 8.0, maps\favela_code::_ID5237, "bike_path_1" );
    _ID42407::_ID10226( 13.0, maps\favela_code::_ID5237, "bike_path_2" );
    thread _ID48848();
    thread _ID51368();
}

_ID51368()
{
    thread _ID42407::_ID24582( "mus_favela_intro" );
    level waittill( "runner_shot" );
    _ID42407::_ID24584( 2.0 );
}

_ID52389()
{
    _ID42475::_ID34575( "start_chase_checkpoint" );
    thread _ID42407::_ID4917( "allies" );
    thread _ID42407::_ID4917( "axis" );
    maps\favela_code::_ID48221( "playerstart_chase" );
    setsaveddvar( "player_sprintUnlimited", "1" );
    setsaveddvar( "player_sprintSpeedScale", 1.4 );
    _ID42237::_ID14402( "start_chase" );
    maps\favela_lighting::_ID53193( "favela_chase" );
}

_ID46020()
{
    _ID42475::_ID34575( "start_torture_checkpoint" );
    setdvar( "favela_trailer", 1 );
    thread _ID49823();
}

delayed_autosave_torture()
{
    wait 0.4;
    thread _ID42407::_ID4433();
    thread maps\favela_code::_ID44453();
}

_ID49823()
{
    thread maps\favela_code::_ID51259( 1 );
    _ID42475::_ID34575( "start_favela_checkpoint" );
    thread maps\favela_code::_ID46533();
    thread _ID42407::_ID4917( "allies" );
    thread _ID42407::_ID4917( "axis" );
    thread _ID47473( 0.2, 1.3, 1.5 );
    level waittill( "black_screen_start" );
    level._ID794 _meth_830f( 0 );

    if ( !isdefined( level._ID50958 ) || !level._ID50958 )
    {
        level._ID794 setoffhandprimaryclass( "fraggrenade" );
        level._ID794 giveweapon( "fraggrenade" );
    }

    if ( !isdefined( level._ID52856 ) || !level._ID52856 )
    {
        level._ID794 setoffhandsecondaryclass( "flash_grenade" );
        level._ID794 giveweapon( "flash_grenade" );
    }

    level notify( "stop_monitoring_makarov_damage" );
    thread maps\favela_code::_ID49237();
    _ID42237::_ID3294( getcorpsearray(), ::delete );

    if ( isdefined( level._ID46628 ) )
        level._ID46628 delete();

    maps\favela_lighting::_ID53193( "favela_torture" );

    if ( !getdvarint( "limited_mode" ) )
        level _ID42407::_ID10226( 1.2, ::_ID44187 );

    level._ID794 cancelmantle();
    maps\favela_code::_ID48221( "playerstart_favela" );
    _ID42407::_ID1801( "favela_vision", "script_noteworthy" );
    thread _ID42407::_ID12548( "favela_cancel_royce_anim" );
    thread _ID42407::_ID12548( "favela_move_friendlies" );
    _ID42237::_ID14402( "civilians_walla" );
    level._ID10901 = undefined;
    level._ID794 setstance( "stand" );
    setsaveddvar( "player_sprintUnlimited", "0" );
    setsaveddvar( "player_sprintSpeedScale", 1.5 );
    setsaveddvar( "ai_friendlyFireBlockDuration", level._ID46790 );
    _ID42237::_ID14388( "player_near_stairs" );
    _ID42237::_ID14402( "block_alley" );
    level waittill( "black_screen_finish" );
    thread delayed_autosave_torture();
    thread maps\favela_aud::_ID51272();
    _ID51519();
    thread _ID48850();
    _ID42237::_ID14388( "give_favela_warning" );
    _ID42237::_ID38865( "favela_opening_civilians_spawn", "targetname" );
    getent( "favela_enter_player_clip", "targetname" ) delete();

    if ( getdvarint( "limited_mode" ) )
    {
        level._ID794 setorigin( ( -35.1303, -962.725, 640.078 ) );
        level._ID794 setplayerangles( ( 0.200222, 147.73, 0 ) );
        _ID42237::_ID14402( "torture_sequence_done" );
        _ID42237::_ID14402( "favela_move_friendlies" );
        _ID42237::_ID14402( "player_near_stairs" );
    }

    wait 0.05;
    thread maps\favela_code::_ID49786();
    level._ID794 thread _ID42237::_ID10192( 1, ::freezecontrols, 0 );
    _ID42237::_ID14413( "favela_move_friendlies" );
    _ID42237::_ID14402( "favela_music" );
    setsaveddvar( "compass", 1 );
    thread maps\favela_code::_ID54020();
    thread _ID53441();
    thread _ID53754();
    thread _ID44447();
    thread _ID48995();
    thread _ID53745();
    thread _ID46919();
    thread _ID46257();
    thread maps\favela_code::_ID53186();
    thread maps\favela_code::animated_soccer_goals();
    thread maps\favela_code::_ID49800();
}

_ID43704()
{
    _ID42475::_ID34575( "start_soccer_checkpoint" );
    thread maps\favela_code::_ID49800();
    thread _ID53441();
    _ID42237::_ID3294( getentarray( "delete_for_start_soccer", "script_noteworthy" ), ::delete );
    maps\favela_code::_ID48221( "playerstart_soccer" );
    _ID42407::_ID1801( "vision_shanty", "script_noteworthy" );
    _ID42237::_ID14402( "cleared_favela" );
    _ID42237::_ID14402( "civilians_walla" );
    thread maps\favela_code::_ID45009();
}

_ID49424()
{
    _ID42475::_ID34575( "start_hilltop_checkpoint" );
    thread _ID53441();
    maps\favela_code::_ID48221( "playerstart_hilltop" );
    _ID42407::_ID1801( "favela_hill", "script_noteworthy" );
    _ID42237::_ID14402( "civilians_walla" );
}

_ID49588()
{
    _ID42475::_ID34575( "start_trailer1_checkpoint" );
    _ID51466( "trailer_talkers_1" );
    level._ID794 _ID42407::_ID32353( 1 );
    maps\favela_code::_ID48221( "trailer_talkers_1_player" );
}

_ID48884()
{
    _ID42475::_ID34575( "start_trailer2_checkpoint" );
    _ID51466( "trailer_talkers_2" );
    level._ID794 _ID42407::_ID32353( 1 );
    maps\favela_code::_ID48221( "trailer_talkers_2_player" );
}

_ID53227()
{
    _ID42475::_ID34575( "start_trailer3_checkpoint" );
    _ID51466( "trailer_talkers_3" );
    level._ID794 _ID42407::_ID32353( 1 );
    maps\favela_code::_ID48221( "trailer_talkers_3_player" );
}

_ID51466( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = var_3 _ID42407::_ID35014( 1 );
        var_4 _ID42407::_ID32352( 1 );
        var_4._ID452 = 16;
        var_4 setgoalpos( var_4._ID740 );

        if ( !isdefined( var_3._ID70 ) )
            continue;

        var_4._ID3189 = "trailer";
        var_4 thread _ID42259::_ID3044( var_4, var_3._ID70 );
    }
}

_ID50552()
{
    _ID42475::_ID34575( "start_end_checkpoint" );
    thread _ID53441();
    maps\favela_code::_ID48221( "playerstart_end" );
    _ID42407::_ID1801( "favela_vision", "script_noteworthy" );
}

_ID53754()
{
    thread _ID44390();
}

_ID44390()
{
    _ID42237::_ID14413( "torture_sequence_done" );
    _ID42237::_ID14413( "player_near_stairs" );
    level._ID45288 _ID42259::_ID3111( level._ID45288, "favela_ryc_watchyourbg" );
    _ID42237::_ID14402( "favela_gate_dialog_done" );
}

_ID44187()
{
    var_0 = getent( "torture_node", "targetname" );
    var_1 = "torture_enemy_spawner";
    var_2[0] = _ID42407::_ID35168( var_1 );
    var_2[0] setmodel( "h2_body_vil_faust_assist_shot" );
    var_2[0]._ID3189 = "torture_enemy";
    var_2[0].cheat._ID54456 = 1;
    var_2[0] thread maps\favela_code::_ID53229();
    var_2[1] = _ID42407::_ID35168( "torture_friendly_1_spawner" );
    var_2[1]._ID3189 = "torture_friend1";
    var_2[2] = _ID42407::_ID35168( "torture_friendly_2_spawner" );
    var_2[2]._ID3189 = "torture_friend2";
    var_2[3] = _ID42407::_ID35028( "torture_torch" );
    var_2[3]._ID3189 = "torture_torch";
    var_2[4] = _ID42407::_ID35028( "pliers" );
    var_2[4]._ID3189 = "pliers";
    var_3 = getent( "garage_door_static", "targetname" );
    var_3 delete();
    var_4 = _ID42407::_ID35028( "torture_door" );
    var_4._ID3189 = "torture_door";
    thread maps\favela_code::_ID48078( "animated_chains" );
    level._ID45288 = _ID42407::_ID35168( "royce_spawner", 1 );
    level._ID45288 thread _ID42407::_ID22746();
    level._ID45288._ID3189 = "royce";
    level._ID45288 maps\favela_code::_ID32651( "head_seal_soccom_b" );
    level._ID45288 _ID42407::_ID14803( "m4_grenadier", "primary" );
    thread _ID51409( var_2[2] );
    setsaveddvar( "cg_gunDownAnimDelayTime", 250 );

    foreach ( var_6 in var_2 )
    {
        if ( isai( var_6 ) )
        {
            var_6 _ID42407::_ID17509();
            var_6 _ID42407::_ID32353( 1 );
            var_6 _ID42407::_ID32352( 1 );
        }
    }

    var_0 _ID42259::_ID3016( var_2, "torture" );
    var_8 = var_0 _ID42259::_ID15565( undefined, "tortureOutro" );
    _ID42259::_ID3017( var_4, "tortureOutro", var_8["origin"], var_8["angles"] );
    var_9 = var_2[0]._ID740;
    thread _ID50778( var_2[3] );
    var_0 thread _ID51661( var_2[2], var_4 );
    var_0 thread _ID42259::_ID3111( level._ID45288, "torture" );
    var_2[2] _ID45995::_ID48826( "head", level._ID794, 200, 45, 45, 45, 30, 0, 1 );
    var_0 thread _ID42259::_ID3099( var_2, "torture" );
    var_10 = getanimlength( level._ID30895["torture_friend2"]["torture"] );
    wait(var_10);

    if ( !_ID42237::_ID14385( "torture_outro_started" ) )
        var_0 _ID51206( var_2[2], var_4 );

    _ID42237::_ID14413( "torture_outro_done" );
    setsaveddvar( "cg_gunDownAnimDelayTime", -1 );
    _ID42237::_ID3294( var_2, ::delete );
    _ID42237::_ID14402( "torture_sequence_done" );
    _ID42237::_ID14402( "favela_move_friendlies" );
}

_ID51206( var_0, var_1 )
{
    _ID42237::_ID14402( "torture_outro_started" );
    var_2 = getent( "lightsoapfill", "targetname" );
    var_2 thread _ID48808( 3 );
    var_3[0] = var_0;
    var_3[1] = var_1;
    _ID42259::_ID3099( var_3, "tortureOutro" );
    _ID42237::_ID14402( "torture_outro_done" );
}

_ID48808( var_0 )
{
    _ID42237::_ID14413( "drop_door" );
    var_1 = self getlightintensity();
    var_2 = var_1 / var_0;

    while ( var_1 > 0 )
    {
        var_1 = _ID42237::_ID53482( var_1 - var_2, 0 );
        self setlightintensity( var_1 );
        waittillframeend;
    }
}

_ID51661( var_0, var_1 )
{
    level endon( "torture_outro_done" );
    _ID42237::_ID14413( "favela_move_friendlies" );

    if ( _ID42237::_ID14385( "torture_outro_started" ) )
        return;

    _ID51206( var_0, var_1 );
}

_ID46171( var_0 )
{
    var_1 = var_0._ID740;
    var_2 = var_0._ID740 + ( 0, 0, 45 );
    var_0._ID740 = var_2;
    _ID42237::_ID14413( "drop_door" );
    var_0 playsound( "scn_favela_garage_door" );
    var_0 moveto( var_1, 1.3, 0.1, 0.0 );
}

_ID48848()
{
    thread _ID53709();
    var_0 = _ID42407::_ID35028( "player_rig" );
    thread maps\favela_code::_ID53087();
    var_1 = _ID42411::_ID35196( "player_vehicle" );
    var_1 _meth_848a( getent( "van_light_origin", "targetname" )._ID740 );
    var_1 hidepart( "TAG_GLASS_FRONT_D" );
    var_2 = var_1._ID43838["vehicle_luxurysedan_2009_viewmodel_interior"];
    var_2 hidepart( "TAG_BROKEN_GLASS" );
    var_2 hidepart( "TAG_BLOOD" );
    var_2 hidepart( "TAG_STEERING_WHEEL_BLOOD" );
    var_2 hidepart( "TAG_KEY_CHAIN_BLOOD" );
    var_2 hidepart( "TAG_SHIFTER_BLOOD" );
    var_2 hidepart( "TAG_SUN_SHADE_BLOOD" );
    var_1 thread maps\favela_code::_ID45930();
    var_1 thread maps\favela_code::_ID46528();
    var_1 thread _ID42407::_ID27079( "scn_favela_driveup" );
    thread _ID48497( var_1, var_0 );
    thread _ID45542( var_1 );
    thread maps\favela_code::_ID50937();
    thread maps\favela_code::_ID50728( var_1, var_2 );
    playfxontag( level._ID1426["steam_coffee_slow"], var_1, "body_animate_jnt" );
    playfxontag( level._ID1426["spotlight_favela_player_car"], var_1, "body_animate_jnt" );
    var_3 = _ID42411::_ID35196( "van" );
    var_3 _ID42411::_ID16988();
    var_3 thread _ID51390();
    var_3._ID3189 = "van";
    var_3 _ID42259::_ID32556();
    playfxontag( level._ID1426["van_intro_fake_shadow"], var_3, "tag_origin" );
    var_4 = getent( "opening_scene_node", "targetname" );
    var_5 = getent( "makarov_spawner", "targetname" );
    var_6 = getent( "opening_driver_spawner", "targetname" );
    var_7 = getent( "opening_gunner1_spawner", "targetname" );
    var_8 = getent( "opening_gunner2_spawner", "targetname" );
    var_9 = var_5 _ID42407::_ID35014( 1 );
    var_9._ID3189 = "makarov";
    var_9 thread _ID42407::_ID22746();
    var_9._ID512 = 1;
    var_9._ID465 = 0;
    var_9.cheat._ID54456 = 1;
    var_9 thread maps\favela_code::bullet_holes_hood();
    var_10 = var_6 _ID42407::_ID35014( 1 );
    var_10._ID3189 = "driver";
    var_10 thread _ID49879();
    var_10 thread _ID49347::addspecialmonitors();
    var_10.cheat._ID48626 = 1;
    var_11 = var_7 _ID42407::_ID35014( 1 );
    var_11._ID3189 = "gunner1";
    var_11 thread _ID49879();
    var_11 thread _ID49347::addspecialmonitors();
    var_11.cheat._ID48626 = 1;
    var_12 = var_8 _ID42407::_ID35014( 1 );
    var_12._ID3189 = "gunner2";
    var_12 thread _ID49879();
    var_12 thread _ID49347::addspecialmonitors();
    var_12.cheat._ID48626 = 1;
    var_13[0] = var_9;
    var_13[1] = var_11;
    var_13[2] = var_12;
    thread maps\favela_code::_ID53387( var_4, var_13 );
    var_1 setflaggedanim( "car_intro", level._ID30895["car"]["intro"] );
    var_2 _ID42407::_ID3428( "car" );
    var_2 setflaggedanim( "car_intro", level._ID30895["car"]["intro"] );
    var_1 thread animscripts\shared::_ID11529( "car_intro" );
    var_3 setanim( level._ID30895["van"]["opening_scene"] );
    var_10 linkto( var_3, "tag_driver" );
    var_3 thread _ID42259::_ID3111( var_10, "opening_scene", "tag_driver" );
    var_1 vehicle_setspeed( 3, 5.0, 5.0 );
    var_3 vehicle_setspeed( 3, 5.0, 5.0 );
    wait 4;
    var_0 attach( "h2_weapon_masada_grenadier_acog_black", "TAG_WEAPON_LEFT", 1 );
    thread _ID48879( var_1 );
    var_1 resumespeed( 2.5 );
    var_3 resumespeed( 2.5 );
    var_14 = getvehiclenode( "van_last_node", "script_noteworthy" );
    var_14 waittill( "trigger" );
    var_13[0] thread maps\favela_code::_ID51042();

    foreach ( var_16 in var_13 )
        var_16 show();

    var_18 = getent( "street_civilian_clip", "targetname" );
    var_18 connectpaths();
    var_18 delete();
    _ID42237::_ID14402( "opening_scene_started" );
    var_19 = var_9 _ID42407::_ID16120( "opening_scene" );
    var_20 = getanimlength( var_19 );
    level thread _ID42407::_ID25088( "shootout_started", var_20 - 24 );
    var_3 thread _ID49583();
    wait 12;
    thread maps\favela_code::_ID53478();
    var_9 thread _ID49408( var_1 );
    thread _ID52414( var_2 );
    var_9 _ID42407::_ID41119( "shoot_car" );
    var_1 _ID42407::_ID10226( 0.7, _ID42407::_ID27080, "scn_favela_npc_door_open", "rear_door_left_jnt" );
    wait 3;
    var_9 _ID42407::_ID3136();
    var_21 = getnode( "runner_first_node", "targetname" );
    var_9._ID452 = 32;
    var_9 thread maps\favela_code::_ID53331( 1 );
    var_9 _ID42407::_ID32352( 1 );
    var_9 setgoalnode( var_21 );
    thread _ID42407::_ID10226( 1.0, _ID42237::_ID14402, "start_chase" );
    wait 2;
    thread _ID48683( var_1, var_0 );
    maps\favela_lighting::_ID53193( "favela_chase" );
}

_ID48879( var_0 )
{
    var_1 = 105;
    var_2 = 75;
    var_3 = 35;
    var_4 = 25;
    var_5 = 32;
    var_6 = -20;
    var_7 = 16;
    var_8 = -7;
    var_9 = var_1 + var_2;
    var_10 = var_1 - var_9 / 2;
    level._ID794 lerpviewangleclamp( 0.05, 0, 0, var_2, var_1, var_3, var_4 );
    level._ID794 _meth_85aa( var_3, 5, var_10, var_9 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    var_11 = -48;
    var_12 = 9.8;
    var_13 = 12.5;
    var_14 = 0.0;
    var_15 = 0.05;
    var_16 = 0;
    var_17 = 0;
    var_18 = 500;
    var_19 = 32;
    var_20 = 24;
    var_21 = _ID54167::_ID43386( "favela_intro" );
    var_21 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 8.0, var_18, 3.0, 3.0 );
    var_21 _ID54167::_ID48800( 0.05 ) _ID54167::_ID44956();
    thread h2_favela_introshakes();
    var_21 _ID54167::_ID48166();

    for (;;)
    {
        var_22 = var_0 gettagorigin( "tag_passenger" );
        var_22 = anglestoforward( vectornormalize( var_22 ) );
        var_23 = level._ID794 getplayerangles();
        var_23 = anglestoforward( var_23 );
        var_24 = _func_1fa( var_22[1], var_22[0] ) - _func_1fa( var_23[1], var_23[0] );
        var_24 -= 90;

        if ( var_14 > var_12 )
            var_24 -= 20;

        var_24 = angleclamp180( var_24 );

        if ( var_24 < var_11 )
        {
            var_16 = 5.6;
            var_17 = var_19;
        }
        else if ( var_23[2] > -0.27 )
        {
            var_16 = 8.0;
            var_17 = var_18;
        }
        else
        {
            var_16 = 8.0;
            var_17 = var_20;
        }

        var_21 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727() _ID54167::_ID50321( var_16, var_17, 3.0, 3.0 );
        var_21 _ID54167::_ID48166();

        if ( _ID42237::_ID14385( "player_is_ducking" ) || _ID42237::_ID14385( "player_dies_in_vehicle" ) )
            break;

        wait(var_15);
        var_14 += var_15;
    }

    var_25 = 0;
    var_26 = 0;

    for (;;)
    {
        var_25 = var_26;

        if ( _ID42237::_ID14385( "player_is_unducking" ) )
            var_26 = 1;
        else if ( _ID42237::_ID14385( "player_is_ducking" ) )
            var_26 = 2;

        if ( _ID42237::_ID14385( "player_dies_in_vehicle" ) )
        {
            var_21 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727() _ID54167::_ID50321( 2.0, 28, 5.0, 5.0 );
            var_21 _ID54167::_ID48166();
            wait 15;
        }

        if ( var_25 != var_26 )
        {
            if ( var_26 == 1 )
            {
                var_16 = 8.0;
                var_17 = var_18;
                level._ID794 lerpviewangleclamp( 0.6, 0.2, 0.4, 10, 10, 5, 5 );
                wait 0.6;
                level._ID794 lerpviewangleclamp( 0.1, 0, 0, var_2, var_1, var_3, var_4 );
                level._ID794 _meth_85aa( var_3, 5, var_10, var_9 );
            }

            if ( var_26 == 2 )
            {
                var_16 = 12.0;
                var_17 = var_19;
                level._ID794 lerpviewangleclamp( 0.6, 0.2, 0.4, -28, 28, 13, -13 );
                wait 0.6;
                level._ID794 lerpviewangleclamp( 0.1, 0, 0, var_6, var_5, var_7, var_8 );
            }

            level._ID794 setviewangleresistance( 50, 50, 20, 20 );
        }

        if ( _ID42237::_ID14385( "player_starts_exiting_vehicle" ) )
            break;

        var_21 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727() _ID54167::_ID50321( var_16, var_17, 2.0, 2.0 );
        var_21 _ID54167::_ID48166();
        wait(var_15);
        var_14 += var_15;
    }

    _ID42237::_ID14388( "player_starts_exiting_vehicle" );
    _ID42237::_ID14388( "player_is_unducking" );
    _ID42237::_ID14388( "player_dies_in_vehicle" );
    level._ID794 lerpviewangleclamp( 1.2, 0.5, 0.25, 0, 0, 0, 0 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    var_21 = _ID54167::_ID43386( "favela_exit_car" );
    var_21 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727() _ID54167::_ID50321( 5.6, 500, 2.0, 2.0 ) _ID54167::_ID47844( 2 ) _ID54167::_ID44956();
    var_21 _ID54167::_ID48800( 0.85 ) _ID54167::_ID50321( 48, 500, 3.0, 3.0 );
    var_21 _ID54167::_ID48800( 2.5 ) _ID54167::_ID47844( 0 ) _ID54167::_ID48959();
    var_21 _ID54167::_ID48800( 0.2 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_21 _ID54167::_ID48800( 0.5 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_21 _ID54167::_ID48800( 1.1 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_21 _ID54167::_ID48800( 2.15 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_21 _ID54167::_ID48166();
}

h2_favela_introshakes()
{
    var_0 = _ID54167::_ID43386( "favela_intro_shakes" );
    var_1 = 0.05;
    var_2 = 1.0;
    var_3 = 10000;
    var_4 = level._ID794;
    var_0 _ID54167::_ID48800( 10.6 ) _ID54167::_ID47198( 0.11, 1.2, var_4, var_3 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 11.4 ) _ID54167::_ID47198( 0.1, 0.8, var_4, var_3 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 12.65 ) _ID54167::_ID47198( 0.05, 1.8, var_4, var_3 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 16.1 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 23.9 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_5 = 12.6;

    for ( var_6 = 0.0; var_6 <= var_5; var_6 += 0.25 )
        var_0 _ID54167::_ID48800( var_6 ) _ID54167::_ID47198( var_1, var_2, var_4, var_3 );

    var_0 _ID54167::_ID48166();
}

_ID48497( var_0, var_1 )
{
    level endon( "exiting_vehicle" );
    thread maps\favela_code::_ID43730();
    _ID42407::_ID12569( 0 );
    var_2 = 90;
    var_1._ID740 = var_0 gettagorigin( "tag_passenger" );
    var_1._ID65 = var_0 gettagangles( "tag_passenger" );
    var_1 linkto( var_0, "tag_passenger" );
    var_1 thread maps\favela_code::_ID20307();
    var_1 thread _ID43443( var_0, var_1 );
    level._ID794 playerlinktodelta( var_1, "tag_player", 1.0, 0, 0, 0, 0 );
    level._ID794 allowprone( 0 );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowstand( 1 );
    _ID42237::_ID14388( "player_is_ducking" );
    level._ID794 endon( "death" );
    level._ID794 setstance( "stand" );
    notifyoncommand( "go_crouch", "+movedown" );
    notifyoncommand( "go_crouch", "+prone" );
    notifyoncommand( "go_crouch", "+stance" );
    notifyoncommand( "go_crouch", "lowerstance" );
    notifyoncommand( "go_crouch", "togglecrouch" );
    notifyoncommand( "go_crouch", "toggleprone" );
    notifyoncommand( "go_crouch", "goprone" );
    notifyoncommand( "go_crouch", "gocrouch" );
    notifyoncommand( "go_stand", "+stance" );
    notifyoncommand( "go_stand", "raisestance" );
    notifyoncommand( "go_stand", "togglecrouch" );
    notifyoncommand( "go_stand", "toggleprone" );
    notifyoncommand( "go_stand", "+moveup" );
    notifyoncommand( "go_stand", "+gostand" );

    if ( !level._ID8534 )
    {
        notifyoncommand( "go_crouch", "+togglecrouch" );
        notifyoncommand( "go_stand", "+togglecrouch" );
    }

    level waittill( "shootout_started" );

    for (;;)
    {
        level._ID794 waittill( "go_crouch" );
        var_1 notify( "stop_intro_idle" );
        _ID42237::_ID14402( "player_is_ducking" );
        _ID42237::_ID14388( "player_is_unducking" );
        level._ID794 enableinvulnerability();
        level._ID794 thread _ID42407::_ID27079( "scn_favela_player_ducking" );
        var_1 _ID42259::_ID3111( var_1, "duck_down", "tag_passenger" );
        var_1 thread _ID42259::_ID3044( var_1, "duck_down_idle", "stop_down_idle", "tag_passenger" );
        level._ID794 waittill( "go_stand" );
        _ID42237::_ID14402( "player_is_unducking" );
        level._ID794 thread _ID42407::_ID27079( "scn_favela_player_unducking" );
        var_1 notify( "stop_down_idle" );
        var_1 _ID42259::_ID3111( var_1, "duck_up", "tag_passenger" );
        var_1 thread _ID42259::_ID3044( var_1, "idle", "stop_intro_idle", "tag_passenger" );
        _ID42237::_ID14388( "player_is_ducking" );
        level._ID794 disableinvulnerability();
    }
}

_ID43443( var_0, var_1 )
{
    level endon( "exiting_vehicle" );
    level._ID794 waittill( "shot_next_frame" );
    _ID42237::_ID14402( "player_dies_in_vehicle" );
    level._ID794 playerlinktoblend( var_1, "tag_player", 2, 0.5, 0.5 );
    var_0 thread _ID42259::_ID3111( self, "die", "tag_passenger" );
    wait 1.5;
    level._ID53563 stopanimscripted();
    level._ID53563 _ID42407::_ID2286();
    level._ID53563 _ID42407::_ID36519();
    level._ID53563 kill();
}

_ID48683( var_0, var_1 )
{
    wait 1.2;
    level notify( "exiting_vehicle" );
    maps\favela_code::hide_destructible_vehicles( 0, "hiding_car" );
    var_0 notify( "door_open" );
    _ID42475::_ID34575( "start_player_exit_vehicle" );

    if ( isalive( level._ID794 ) )
    {
        _ID42237::_ID14402( "player_starts_exiting_vehicle" );
        var_1 _ID42259::_ID3111( var_1, "getout" );
        level._ID794 unlink();
        var_1 hide();
        level._ID794 disableinvulnerability();
        _ID42407::_ID12569( 1 );
        level._ID794 allowprone( 1 );
        level._ID794 allowcrouch( 1 );
        level._ID794 allowstand( 1 );
        level._ID794 setstance( "stand" );
        setsaveddvar( "player_sprintUnlimited", "1" );
        setsaveddvar( "player_sprintSpeedScale", 1.4 );
        var_1 delete();
    }

    if ( isdefined( level._ID53563 ) )
        _func_194( 1, level._ID53563, ( 0, 0, 70 ) );

    setsaveddvar( "objectiveFadeTooFar", 0.1 );
    wait 1;
    var_2 = _ID42237::_ID37527( level._ID15361 < 2, 10, 25 );
    setsaveddvar( "objectiveFadeTooFar", var_2 );
    stopfxontag( level._ID1426["spotlight_favela_player_car"], var_0, "body_animate_jnt" );
    setsaveddvar( "compass", 1 );
    setsaveddvar( "hud_showStance", 1 );
}

_ID51390()
{
    _ID42237::_ID14413( "van_skid" );
    thread _ID42407::_ID27079( "scn_favela_van_skid2stop" );
}

_ID49583()
{
    thread _ID42407::_ID10226( 2.3, _ID42407::_ID27079, "scn_favela_van_driverdoor_open" );
    thread _ID42407::_ID10226( 4.0, _ID42407::_ID27079, "scn_favela_van_driverdoor_close" );
}

_ID52278()
{
    wait 2.0;
    _ID42407::_ID28864( "favela_cmt_ready2move" );
    _ID42407::_ID28864( "favela_gst_good2go" );
    _ID42407::_ID28864( "favela_cmt_rogerthat" );
    _ID42237::_ID14413( "van_in_position" );
    thread _ID42407::_ID4434();
    wait 0.5;
    _ID42407::_ID28864( "favela_cmt_inposition" );
    wait 2.5;
    _ID42407::_ID28864( "favela_cmt_insight" );
    wait 0.9;
    _ID42407::_ID28864( "favela_cmt_needhimalive" );
    wait 0.2;
    _ID42407::_ID28864( "favela_cmt_getdown" );
}

_ID45542( var_0 )
{
    level._ID53563 = _ID42407::_ID35168( "soap_spawner", 1 );
    level._ID53563 _ID42407::_ID32352( 1 );
    level._ID53563._ID1258 = 0;
    level._ID53563._ID381 = 0;
    level._ID53563._ID11002 = 1;
    level._ID53563._ID7._ID11043 = 1;
    level._ID53563._ID628 = 0;
    level._ID53563._ID513 = 1;
    level._ID53563._ID3189 = "mactavish";
    level._ID53563._ID764 = 0;
    level._ID53563 thread _ID42407::_ID22746();
    level._ID53563 linkto( var_0, "tag_guy0" );
    var_0 thread _ID42259::_ID3111( level._ID53563, "intro", "tag_guy0" );
    _ID42237::_ID14413( "start_chase" );
    _ID42237::_ID14388( "runner_gets_away" );
    thread _ID42407::_ID27685( 180, 1 );
    level._ID53563 unlink();
    level._ID53563 thread maps\favela_code::_ID49910( 550, 400, undefined, undefined, 1 );
    setsaveddvar( "ai_friendlyFireBlockDuration", 0 );
    thread _ID42407::_ID4433();
    thread _ID45181();
    level._ID10901 = 1;
    objective_state_nomessage( 1, "done" );
    objective_add( 1, "current", &"FAVELA_OBJ_CATCH_RUNNER" );
    objective_state( 1, "current" );
    _ID42237::_ID14402( "soap_exits_car" );
    thread _ID44644();
    level._ID53563 thread maps\favela_code::_ID50609();
    wait 6;
    var_1 = _ID42407::_ID35168( "makarov_street_spawner", 1 );
    level._ID54299 = var_1;
    var_1 _ID42407::_ID32352( 1 );
    var_1 _ID42407::_ID32353( 1 );
    var_1._ID11002 = 1;
    var_1._ID7._ID11043 = 1;
    var_1._ID628 = 0;
    var_1._ID513 = 1;
    var_1._ID1258 = 0;
    var_1._ID34236 = 1;
    var_1.cheat._ID50282 = 1;
    var_1.cheat._ID54456 = 1;
    var_1 thread _ID42407::_ID22746();
    var_1 thread maps\favela_code::_ID46377();
    var_1 thread _ID52291();
    var_1 thread _ID51948();
    var_1 thread _ID43990();
    var_1 thread _ID48425();
    var_1 thread _ID50633();
    var_1 thread _ID48546();
    var_1 thread _ID45095();
    var_1 thread _ID50068();
}

_ID50068()
{
    level endon( "runner_shot" );
    _ID42237::_ID14413( "take_the_shot" );
    _func_194( 1, self, ( 0, 0, 70 ) );
    objective_setpointertextoverride( 1, &"FAVELA_OBJ_CAPTURE" );
    setsaveddvar( "objectiveFadeTooFar", 0.1 );
}

_ID48546()
{
    level endon( "take_the_shot" );
    self endon( "death" );
    self endon( "runner_shot" );
    var_0 = 500;
    var_1 = 2500;
    var_2 = 1.0;
    var_3 = 1.6;

    for (;;)
    {
        var_4 = distance( level._ID794._ID740, self._ID740 );

        if ( var_4 > var_1 )
        {
            setdvar( "ui_deadquote", "@FAVELA_RUNNER_GOT_AWAY" );
            _ID42407::_ID23778();
            return;
        }

        var_5 = self._ID24424;

        if ( var_4 < var_0 )
            var_5 += 0.1;
        else
            var_5 -= 0.1;

        self._ID24424 = clamp( var_5, var_2, var_3 );
        wait 0.1;
    }
}

_ID45181()
{
    level._ID53563 endon( "death" );
    level endon( "runner_shot" );
    var_0 = getent( "soapCarHitStart", "targetname" );
    var_1 = getent( "carHittingSoap", "targetname" );
    var_1._ID3189 = "car";
    var_1 _ID42259::_ID32556();
    var_2 = getent( "carHittingSoap2", "targetname" );
    var_2._ID3189 = "car2";
    var_2 _ID42259::_ID32556();
    var_3 = getent( "driverHittingSoap", "targetname" );
    var_3._ID3189 = "driver";
    var_4 = getent( "driverHittingSoap2", "targetname" );
    var_4._ID3189 = "driver2";
    var_5 = getent( "RunningCivilian", "targetname" );
    var_5._ID3189 = "generic";
    var_6 = getnode( "SoapNewObjective", "targetname" );
    var_7 = getnode( "civilianEndingNode", "targetname" );
    var_8 = [ var_1, var_2 ];
    var_0 _ID42259::_ID3016( var_8, "hit_by_car" );

    if ( isdefined( var_5 ) )
        var_0 _ID42259::_ID3018( var_5, "hit_by_car" );

    var_3 linkto( var_1, "tag_driver" );
    var_4 linkto( var_2, "tag_driver" );
    var_8[var_8.size] = level._ID53563;
    var_0 _ID42259::_ID3074( level._ID53563, "hit_by_car" );

    if ( isdefined( var_5 ) )
        var_0 thread _ID42259::_ID3111( var_5, "hit_by_car" );

    var_1 thread _ID42259::_ID3111( var_3, "hit_by_car", "tag_driver" );
    var_2 thread _ID42259::_ID3111( var_4, "hit_by_car", "tag_driver" );
    var_0 _ID42259::_ID3099( var_8, "hit_by_car" );

    if ( isdefined( var_5 ) )
        var_5 setgoalnode( var_7 );

    if ( isdefined( level._ID53563 ) )
    {
        level._ID53563 notify( "stop_dynamic_run_speed" );
        level._ID53563._ID24424 = 1;
        level._ID53563 setgoalnode( var_6 );
    }

    var_9 = getent( "chase_objective_location", "targetname" );
    objective_current( 1, var_9._ID740 );
    setsaveddvar( "objectiveFadeTooFar", 0.1 );
}

_ID44644()
{
    level endon( "runner_shot" );
    wait 7;
    _ID42407::_ID10226( 1.5, _ID42407::_ID28864, "favela_gst_onmyway" );
    _ID42237::_ID14413( "runner_in_alley" );
    _ID42407::_ID28864( "favela_gst_hesfast" );
    _ID42237::_ID14413( "take_the_shot" );
    thread _ID43869();
    level._ID53563 _ID42407::_ID10805( "favela_cmt_takeshot" );
}

_ID43869()
{
    level endon( "runner_shot" );
    wait 0.75;
    thread _ID42407::_ID24584( 0.25 );
    level._ID794 thread _ID42407::_ID27079( "mus_favela_legshot_pre_stinger" );
}

_ID52291()
{
    self endon( "death" );
    var_0 = getent( "teleport_runner_1", "targetname" );
    var_1 = getent( var_0._ID1191, "targetname" );
    var_0 waittill( "trigger" );

    if ( !_ID42237::_ID14385( "runner_in_alley" ) )
        return;

    self forceteleport( var_1._ID740, var_1._ID65 );
}

_ID51948()
{
    self endon( "death" );
    _ID42407::_ID14803( "ak47", "primary" );
    var_0 = getent( "teleport_runner_2", "targetname" );
    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = getnode( "back_alley_shooting_back", "targetname" );
    var_0 waittill( "trigger" );

    if ( !_ID42237::_ID14385( "runner_in_alley2" ) )
        return;

    self forceteleport( var_1._ID740, var_1._ID65 );
    var_2 thread _ID42259::_ID3111( self, "rojas_assistant_run_gun_alley" );
}

_ID43990()
{
    level endon( "stop_monitoring_makarov_damage" );
    _ID42407::_ID32326( "alley_death_fall" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( !isdefined( var_1 ) )
            continue;

        if ( var_1 != level._ID794 && var_1 != level._ID53563 )
            continue;

        if ( var_0 <= 1 )
            continue;

        if ( !isdefined( var_4 ) )
            continue;

        if ( issubstr( var_4, "GRENADE" ) )
        {
            thread _ID46340( var_3 );
            return;
        }

        if ( _ID43971() )
        {
            thread _ID46340( var_3 );
            return;
        }

        thread _ID54007();
    }
}

_ID43971()
{
    if ( isdefined( self._ID48017 ) )
        return 0;

    if ( !isdefined( self._ID253 ) )
        return 1;

    switch ( self._ID253 )
    {
        case "none":
            if ( _ID42237::_ID14385( "makarov_alley_wounded" ) )
                return 0;

            return 1;
        case "head":
        case "helmet":
        case "neck":
        case "torso_upper":
        case "torso_lower":
            return 1;
        default:
            return 0;
    }
}

_ID54007()
{
    level notify( "runner_shot" );

    if ( _ID42237::_ID14385( "makarov_alley_wounded" ) )
        return;

    _ID42237::_ID14402( "makarov_alley_wounded" );
    thread _ID51283();
    wait 1.0;
    level._ID53563 thread _ID42259::_ID3111( level._ID53563, "favela_cmt_hesdown" );
    wait 1.0;
    level notify( "makarov_wounded_successfully" );
    objective_state_nomessage( 1, "done" );
    thread _ID49823();
}

_ID51283()
{
    self endon( "deleted" );
    self endon( "death" );

    if ( _ID42237::_ID14385( "runner_disable_crawl" ) )
        _ID42407::_ID32326( "alley_death_fall_too_late" );

    _ID42407::_ID36519();
    level._ID46628 = self;
    level._ID46628 thread _ID42237::_ID27077( "scn_favela_death_crawl", level._ID46628._ID740 );
    self._ID24898 = 1;
    self._ID45747 = 1;
    self kill();
}

_ID46340( var_0 )
{
    level notify( "runner_shot" );

    if ( !_ID42237::_ID14385( "makarov_alley_wounded" ) )
    {
        _ID42407::_ID7854();
        _ID42407::_ID36519();
        self kill( var_0, level._ID794 );
    }

    setdvar( "ui_deadquote", "@FAVELA_KILLED_RUNNER" );
    _ID42407::_ID23778();
}

_ID48425()
{
    self endon( "runner_shot" );
    self waittill( "reached_path_end" );
    setdvar( "ui_deadquote", "@FAVELA_RUNNER_GOT_AWAY" );
    _ID42407::_ID23778();
}

_ID50633()
{
    self endon( "runner_shot" );
    _ID42237::_ID14413( "runner_gets_away" );
    setdvar( "ui_deadquote", "@FAVELA_RUNNER_GOT_AWAY" );
    _ID42407::_ID23778();
}

_ID47473( var_0, var_1, var_2 )
{
    setomnvar( "ui_expireHUD", 1 );
    setsaveddvar( "compass", 0 );
    thread maps\favela_aud::_ID54580();
    level._ID794 playlocalsound( "scn_favela_legshot_stinger" );
    var_3 = newhudelem();
    var_3._ID1331 = 0;
    var_3._ID1339 = 0;
    var_3 setshader( "black", 640, 480 );
    var_3._ID44 = "left";
    var_3._ID45 = "top";
    var_3._ID499 = "fullscreen";
    var_3._ID1284 = "fullscreen";
    var_3._ID408 = 1;
    var_3._ID55 = 0;

    if ( var_0 > 0 )
        var_3 fadeovertime( var_0 );

    var_3._ID55 = 1;
    wait(var_0);
    wait 0.05;
    level._ID794 freezecontrols( 1 );
    level notify( "black_screen_start" );
    wait(var_2);
    level notify( "black_screen_finish" );

    if ( var_1 > 0 )
        var_3 fadeovertime( var_1 );

    var_3._ID55 = 0;
    wait(var_1);
    var_3 destroy();
    thread maps\favela_code::animated_sheet();
}

_ID53709()
{
    var_0 = 110;
    var_1 = getent( "hotel_door_left", "targetname" );
    var_2 = getent( "hotel_door_right", "targetname" );
    var_1 rotateyaw( var_0 * -1, 0.05 );
    var_2 rotateyaw( var_0, 0.05 );
    _ID42237::_ID14413( "car_getting_shot" );
    _ID42237::_ID14413( "player_is_ducking" );
    wait 1;
    var_1 rotateyaw( var_0, 0.05 );
    var_2 rotateyaw( var_0 * -1, 0.05 );
}

_ID52414( var_0 )
{
    _ID42237::_ID14413( "driver_dead" );
    _ID42475::_ID34575( "start_interior_vehicle_open" );
    var_0 thread _ID42407::_ID27080( "scn_favela_car_glass_shatter", "TAG_GLASS_FRONT_D" );
    var_0 showpart( "TAG_GLASS_FRONT_D" );
    var_0 showpart( "TAG_BLOOD" );
    var_0 showpart( "TAG_STEERING_WHEEL_BLOOD" );
    var_0 showpart( "TAG_KEY_CHAIN_BLOOD" );
    var_0 showpart( "TAG_SHIFTER_BLOOD" );
    var_0 showpart( "TAG_SUN_SHADE_BLOOD" );
    wait 2.1;
    var_0 showpart( "TAG_BROKEN_GLASS" );
    var_0 hidepart( "TAG_GLASS_FRONT" );
    var_0 thread _ID42407::_ID27080( "scn_favela_car_glass_explode", "TAG_GLASS_FRONT_D" );
    earthquake( 0.7, 0.75, var_0._ID740, 72 );
    playfxontag( _ID42237::_ID16299( "car_glass_interior" ), var_0, "TAG_GLASS_FRONT_FX" );

    foreach ( var_2 in level._ID45590 )
    {
        if ( isdefined( var_2 ) )
            var_2 delete();
    }
}

_ID48621( var_0 )
{
    playfxontag( _ID42237::_ID16299( "bullet_head_blood_cam" ), var_0, "J_Head" );
    playfxontag( _ID42237::_ID16299( "blood_dashboard_splatter" ), var_0, "J_Head" );
    _ID42234::_ID13611( "car_smoking" );
    _ID42234::_ID13611( "road_ambient" );
    wait 0.1;
    var_0 _ID42407::_ID13025( "kill_custom_nameplate" );
    var_0 setmodel( "body_seal_soccom_assault_b_blk_bloody" );
    var_0 _ID42226::_ID32651( "head_seal_soccom_e_bloody" );
    _ID42237::_ID14402( "driver_dead" );
}

_ID50904( var_0 )
{
    var_1 = "scn_favela_merc_horn_loop";
    var_0 thread _ID42237::_ID27000( var_1, ( -40, -75, 10 ) );
    wait 60;
    var_0 notify( "stop sound" + var_1 );
}

_ID47740()
{
    wait 6.6;
    playfxontag( _ID42237::_ID16299( "blood" ), self, "J_Hip_RI" );
    wait 0.1;
    playfxontag( _ID42237::_ID16299( "blood" ), self, "J_SpineLower" );
}

_ID49841()
{
    wait 7.1;
    playfxontag( _ID42237::_ID16299( "blood" ), self, "J_Hip_RI" );
    wait 0.2;
    playfxontag( _ID42237::_ID16299( "blood" ), self, "J_SpineLower" );
    wait 1.2;
    playfxontag( _ID42237::_ID16299( "blood" ), self, "J_Head" );
}

_ID48882()
{
    wait 9.5;
    playfxontag( _ID42237::_ID16299( "blood" ), self, "J_Shoulder_RI" );
}

_ID49408( var_0 )
{
    self endon( "death" );
    var_1 = 15;
    var_2 = 10;
    var_3 = 15;
    var_4 = 29;
    var_5 = 8;
    var_6 = 0.1;
    var_7 = 0.3;
    var_8 = var_0 gettagorigin( "tag_glass_front_fx" );
    var_9 = var_0 gettagangles( "tag_glass_front_fx" );
    var_10 = anglestoright( var_9 );
    var_11 = anglestoup( var_9 );
    var_12 = var_8 - var_10 * var_4;
    var_13 = var_8 + var_10 * var_4;
    var_14 = var_8 + var_11 * var_5;
    var_15 = var_8 - var_11 * var_5;
    _ID42237::_ID14402( "car_getting_shot" );
    var_16 = [];

    for ( var_17 = 0; var_17 < var_1; var_17++ )
    {
        var_18 = randomfloatrange( var_4 * -1, var_4 );
        var_19 = randomfloatrange( var_5 * -1, var_5 );
        var_20 = var_8;
        var_20 += var_10 * var_18;
        var_20 += var_11 * var_19;
        var_16[var_16.size] = var_20;
    }

    for ( var_17 = 0; var_17 < var_1; var_17++ )
    {
        self shoot( 100.0, var_16[var_17] );
        var_21 = var_16[var_17];
        var_22 = vectornormalize( var_21 - self gettagorigin( "tag_flash" ) );
        level._ID45590[var_17] = spawnfx( _ID42237::_ID16299( "glass_exit" ), var_21, var_22 );
        _func_15e( level._ID45590[var_17], 1 );
        triggerfx( level._ID45590[var_17] );

        if ( !_ID42237::_ID14385( "player_is_ducking" ) )
        {
            if ( isalive( level._ID794 ) && var_17 >= var_2 && var_17 <= var_3 )
                thread _ID43181();
        }

        wait(randomfloatrange( var_6, var_7 ));
    }

    foreach ( var_24 in level._ID45590 )
    {
        if ( isdefined( var_24 ) )
            var_24 delete();
    }
}

_ID43181()
{
    level._ID794 notify( "shot_next_frame" );
    wait 0.05;
    level._ID794 enabledeathshield( 0 );
    level._ID794 enablehealthshield( 0 );
    level._ID794 disableinvulnerability();
    level._ID794 dodamage( level._ID794._ID486 + 50000, level._ID794 geteye() );
    wait 0.05;

    if ( isalive( level._ID794 ) )
        level._ID794 kill();
}

_ID49879()
{
    level waittill( "end_scene" );
    self._ID49 = 1;
    self._ID7._ID24881 = 1;
    self._ID24924 = 1;
    self setcontents( 0 );
    self kill();
}

_ID53441()
{
    var_0 = getent( "mission_objective_location_1", "targetname" );
    objective_add( 2, "invisible", &"FAVELA_OBJ_CAPTURE_ROJAS", ( 0, 0, 0 ) );
    objective_state_nomessage( 2, "active_waypoint" );
    objective_add( 3, "current", &"FAVELA_OBJ_SEARCH", var_0._ID740 );
    objective_position( 3, 1 );
    _ID42237::_ID14413( "cleared_favela" );
    wait 7;
    objective_state( 3, "done" );
    var_0 = getent( "mission_objective_location_end", "targetname" );
    objective_add( 4, "current", &"FAVELA_OBJ_REACH_TOP", var_0._ID740 );
    objective_position( 4, 1 );
}

_ID51519()
{
    level._ID51460 = _ID42407::_ID35168( "meat_spawner", 1 );
    level._ID51460 thread _ID42407::_ID22746();
    level._ID51460._ID3189 = "meat";
    level._ID51460 maps\favela_code::_ID32651( "head_seal_soccom_c" );
    level._ID51460 setmodel( "body_seal_soccom_assault_d" );
    level._ID51460._ID513 = 1;
    level._ID51460._ID37018 = 1000;
    level._ID45288._ID513 = 1;
    level._ID45288._ID37018 = 1000;
}

_ID48850()
{
    var_0 = getentarray( "fav_animated_chain", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID3189 = "chain";
        var_2 _ID42259::_ID32556();
        var_2 thread _ID42259::_ID3044( var_2, "idle" );
        var_3 = var_2 _ID42407::_ID16120( "idle" );
        var_4 = randomfloat( 1 );
        var_2 setanimtime( var_3[0], var_4 );
    }
}

_ID50209()
{
    _ID42407::_ID38928( "favela_opening_civilians_spawn", "targetname" );
    var_0 = getentarray( "favela_opening_civilian_spawner", "targetname" );
    thread maps\favela_code::_ID44427();
    _ID42237::_ID3350( var_0, ::_ID51317 );
    _ID42237::_ID3350( var_0, maps\favela_code::_ID50245 );
    thread maps\favela_code::_ID46935();
    thread maps\favela_code::_ID48139();
    thread _ID50623();
    _ID42237::_ID14402( "favela_civilians_spawned" );
}

_ID51317()
{
    if ( isdefined( self._ID922 ) )
        return;

    var_0 = _ID42407::_ID35014( 1 );
    var_0 endon( "death" );

    if ( !isdefined( level._ID49668 ) )
        level._ID49668 = [];

    level._ID49668[level._ID49668.size] = var_0;
    wait 0.05;
    var_0._ID38 = "noncombat";

    if ( !isdefined( self._ID70 ) )
    {
        var_0 waittill( "combat" );
        var_1 = getnode( "favela_civ_flee_node_opening", "targetname" );
        var_0 thread _ID42407::_ID14701( var_1, 0, maps\favela_code::_ID47339 );
        var_0 thread maps\favela_code::_ID49718();
        var_0._ID1258 = 0;
        return;
    }

    var_2 = undefined;

    if ( isdefined( self._ID31273 ) )
        var_2 = _ID42237::_ID15807();
    else
    {
        var_2 = spawn( "script_origin", self._ID740 );
        var_2._ID65 = self._ID65;
    }

    var_3 = self._ID70;
    var_2 thread _ID42259::_ID3025( var_0, var_3, "stop_idle_anim" );
    var_0 waittill( "combat" );
    _ID42237::_ID14402( "favela_civilians_fleeing" );
    wait(randomfloat( 1.5 ));
    var_2 notify( "stop_idle_anim" );
    var_0 notify( "stop_idle_anim" );
    var_0 stopanimscripted();
    var_0._ID1258 = 1;
    var_1 = getnode( "favela_civ_flee_node_opening", "targetname" );
    var_0 thread _ID42407::_ID14701( var_1, 0, maps\favela_code::_ID47339 );
    var_0 thread maps\favela_code::_ID49718();
}

_ID50623()
{
    var_0 = getent( "favela_civilians_scream_ent", "targetname" );
    var_1 = getent( var_0._ID1191, "targetname" );
    _ID42237::_ID14413( "favela_civilians_fleeing" );
    var_0 playsound( "scn_favela_civ_outofhere_screams" );
    var_0 moveto( var_1._ID740, 6.0, 4.0, 2.0 );
}

_ID53303()
{
    _ID42237::_ID14413( "favela_music" );
    level endon( "favela_music" );
    thread _ID48296();
    var_0 = "mus_favela_tension";
    var_1 = _ID42407::_ID24586( var_0 );

    while ( _ID42237::_ID14385( "favela_music" ) )
    {
        thread _ID42407::_ID24582( var_0 );
        wait(var_1);
    }
}

_ID48296()
{
    _ID42237::_ID14426( "favela_music" );
    _ID42407::_ID24584( 3 );
}

_ID53123()
{
    _ID42237::_ID14413( "upper_village_music" );
    level endon( "faust_appearance_1" );
    _ID42407::_ID28864( "favela_cmt_theirterritory" );
    var_0 = "mus_favela_uppervillage_start";
    var_1 = _ID42407::_ID24586( var_0 );

    while ( !_ID42237::_ID14385( "faust_appearance_1" ) )
    {
        thread _ID42407::_ID24582( var_0, 2.0 );
        wait(var_1);
    }
}

_ID47878()
{
    level endon( "faust_music" );
    thread _ID46902();
    var_0 = "mus_favela_moneyrun";
    var_1 = _ID42407::_ID24586( var_0 );

    while ( _ID42237::_ID14385( "faust_music" ) )
    {
        thread _ID42407::_ID24582( var_0 );
        wait(var_1);
    }
}

_ID46902()
{
    _ID42237::_ID14426( "faust_music" );
    _ID42407::_ID24584( 3 );
}

_ID54233()
{
    level endon( "cleared_favela" );
    var_0 = getentarray( "random_favela_background_runner", "targetname" );
    _ID42237::_ID14413( "favela_enemies_spawned" );

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_2 in var_0 )
        {
            if ( _ID42237::_ID14385( "cleared_favela" ) )
                return;

            var_2._ID216 = 1;
            var_2 thread _ID42407::_ID35014( 1 );
            wait(randomintrange( 4, 8 ));
        }
    }
}

_ID53247()
{
    _ID42237::_ID14413( "faust_appearance_1" );
    thread _ID42407::_ID4422( "faust_appearance_1" );
    thread _ID45507();
    var_0 = _ID42407::_ID35168( "faust_spawner_1", 1 );
    var_0._ID680 = "Rojas";
    var_0.cheat._ID54456 = 1;
    var_0 thread maps\favela_code::_ID45795( "faust", "run" );
    var_0 thread _ID49390( 2 );
    var_0 thread maps\favela_code::monitor_faust_run( "faust_appearance_1_end" );
    thread _ID42407::_ID24584( 3.0 );
    wait 3.2;
    _ID42237::_ID14402( "faust_music" );
    thread _ID47878();
}

_ID49390( var_0 )
{
    level notify( "objective_on_faust" );
    level endon( "objective_on_faust" );
    _func_194( 2, self, ( 0, 0, 70 ) );
    objective_setpointertextoverride( 2, &"FAVELA_OBJ_INTERCEPT" );
    setsaveddvar( "objectiveFadeTooFar", 0.1 );
    self waittill( "death" );
    objective_current( 2, ( 0, 0, 0 ) );
    objective_setpointertextoverride( 2 );
    setsaveddvar( "objectiveFadeTooFar", 25 );
}

_ID45507()
{
    _ID42407::_ID28864( "favela_cmt_spottedfaust" );
    _ID42407::_ID28864( "favela_cmt_unharmed" );
    wait 5.0;
    _ID42407::_ID28864( "favela_cmt_cutoff" );
}

_ID44687()
{
    _ID42237::_ID14413( "faust_appearance_2" );

    while ( !_ID42237::_ID14385( "faust_appearance_1_end" ) )
    {
        if ( _ID42237::_ID14385( "faust_appearance_3" ) || _ID42237::_ID14385( "faust_appearance_4" ) )
        {
            _ID42237::_ID14402( "skipped_faust_appearance_2" );
            return;
        }

        wait 0.5;
    }

    var_0 = _ID42407::_ID35168( "faust_spawner_2", 1 );
    var_0._ID680 = "Rojas";
    var_0.cheat._ID54456 = 1;
    var_0 thread maps\favela_code::_ID45795( "faust", "run" );
    var_0 thread _ID49390( 3 );
    var_0 thread maps\favela_code::monitor_faust_run( "faust_appearance_2_end" );
}

_ID54660()
{
    _ID42237::_ID14413( "faust_appearance_3" );
    thread _ID43263();

    while ( !_ID42237::_ID14385( "faust_appearance_2_end" ) && !_ID42237::_ID14385( "skipped_faust_appearance_2" ) )
    {
        if ( _ID42237::_ID14385( "faust_appearance_4" ) )
        {
            _ID42237::_ID14402( "skipped_faust_appearance_3" );
            return;
        }

        wait 0.5;
    }

    var_0 = _ID42407::_ID35168( "faust_spawner_3", 1 );
    var_0._ID680 = "Rojas";
    var_0.cheat._ID54456 = 1;
    var_0 thread maps\favela_code::_ID45795( "faust", "run" );
    var_0 thread _ID49390( 4 );
    var_0 thread maps\favela_code::monitor_faust_run( "faust_appearance_3_end" );
}

_ID43263()
{
    level endon( "ending_sequence_dialog" );
    level endon( "player_approaching_final_stairs" );
    level endon( "stop_all_misc_dialog" );
    _ID42407::_ID28864( "favela_cmt_backtowards" );

    if ( _ID42237::_ID14385( "ending_sequence_dialog" ) )
        return;

    _ID42407::_ID28864( "favela_cmt_doubleback" );
}

_ID44475()
{
    _ID42237::_ID14413( "faust_appearance_4" );

    while ( !_ID42237::_ID14385( "faust_appearance_3_end" ) && !_ID42237::_ID14385( "skipped_faust_appearance_3" ) )
        wait 0.5;

    var_0 = _ID42407::_ID35168( "faust_spawner_4", 1 );
    var_0._ID680 = "Rojas";
    var_0.cheat._ID54456 = 1;
    var_0 thread maps\favela_code::_ID45795( "faust", "run" );
    var_0 thread _ID49390( "end" );
}

_ID50628()
{
    _ID42237::_ID14413( "start_street_sequences_1" );
    thread _ID53656();
    thread _ID52527();
    thread _ID44275();
}

_ID53656()
{
    var_0 = getent( "civilian_180_runaway", "targetname" );
    var_1 = spawn( "script_origin", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_2 = var_0._ID70;
    var_3 = getnode( var_0._ID1191, "targetname" );
    var_4 = var_0 _ID42407::_ID35014( 1 );
    var_4 endon( "death" );
    var_4._ID49 = 1;
    var_4 _ID45995::_ID48826( "upperbody" );
    var_1 _ID42259::_ID3020( var_4, var_2 );
    var_4._ID452 = 32;
    var_4 thread maps\favela_code::_ID53331();
    var_4 setgoalnode( var_3 );
}

_ID52527()
{
    var_0 = getent( "wounded_guy_1", "targetname" );
    var_1 = getent( "wounded_guy_helper_1", "targetname" );
    var_2 = var_0._ID70;
    var_3 = var_1._ID70;
    var_4 = var_0 _ID42237::_ID15807();
    var_5 = getnode( var_1._ID1191, "targetname" );
    var_6 = var_0 _ID42407::_ID35014( 1 );
    var_7 = var_1 _ID42407::_ID35014( 1 );
    var_6._ID7._ID24881 = 1;
    var_4 thread _ID42259::_ID3023( var_6, var_2 );
    var_4 thread _ID42259::_ID3023( var_7, var_3 );
    var_7 endon( "death" );
    _ID42407::_ID38928( "wounded_guy_1_proximity", "targetname" );
    var_4 thread _ID42259::_ID3020( var_6, var_2 );
    var_4 _ID42259::_ID3020( var_7, var_3 );
    var_4 thread _ID42259::_ID3023( var_6, var_2 );
    var_7._ID452 = 32;
    var_7 thread maps\favela_code::_ID53331();
    var_7 setgoalnode( var_5 );
}

_ID44275()
{
    var_0 = getent( "destroyed_tanker", "targetname" );
    var_1 = getent( "force_explosion_car_2", "script_noteworthy" );
    level._ID54299 thread _ID42407::_ID10226( 0.0, ::_ID53850 );
    level._ID54299 _ID42407::_ID10226( 2.5, ::_ID53850 );
    var_1 thread _ID42407::_ID10226( 3.2, _ID42407::_ID10514 );
    level._ID54299 _ID42407::_ID10226( 4.0, ::_ID53850 );
    level._ID54299 _ID42407::_ID10226( 5.0, ::_ID53850 );
}

_ID53850( var_0 )
{
    var_1 = randomintrange( 5, 10 );

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        thread _ID42407::_ID27079( "scn_wpn_ak47_npc_close_flee" );
        wait(randomfloatrange( 0.1, 0.3 ));
    }
}

_ID44447()
{
    level._ID51460._ID452 = 32;
    level._ID45288._ID452 = 32;
    level._ID51460 _ID42407::_ID32335( "meat_first_node" );
    level._ID45288 _ID42407::_ID32335( "royce_first_node" );
    thread _ID53554();
    thread _ID51080();
    _ID42237::_ID14413( "favela_gate_dialog_done" );
    _ID42237::_ID14421( "soccer_start", "favela_civilians_fleeing" );
    var_0 = getnode( "favela_warning_node", "targetname" );

    if ( !_ID42237::_ID14385( "favela_civilians_alerted" ) )
    {
        level._ID45288 _ID42259::_ID3111( level._ID45288, "favela_ryc_warning" );
        level._ID51460 thread _ID42259::_ID3111( level._ID51460, "favela_met_rogerthat" );
        var_0 _ID42259::_ID3074( level._ID51460, "favela_warning_jump" );
    }

    level._ID51460 thread _ID42407::_ID32335( "favela_warning_guy_first_node" );
    level._ID45288 thread _ID42407::_ID32335( "favela_other_guy_first_node" );
    level._ID51460 _ID42407::_ID12445();
    level._ID45288 _ID42407::_ID12445();

    if ( !_ID42237::_ID14385( "favela_civilians_alerted" ) )
    {
        var_0 _ID42259::_ID3111( level._ID51460, "favela_warning_jump" );
        var_0 _ID42259::_ID3111( level._ID51460, "favela_warning_landing" );
    }

    _ID42237::_ID14402( "favela_enemies_spawned" );
    thread maps\favela_code::_ID54043();
    thread _ID42407::_ID1801( "favela_spawn_trigger", "script_noteworthy", level._ID794 );
    thread _ID42407::_ID4918( "allies" );
    thread _ID42407::_ID4918( "axis" );
}

_ID51080()
{
    level waittill( "soccer_start" );
    _ID42237::_ID14402( "soccer_start" );
}

_ID53554()
{
    _ID42237::_ID14413( "favela_civilians_spawned" );
    thread _ID43957();
    thread _ID47309();
}

_ID43957()
{
    level endon( "favela_civilians_alerted" );
    level._ID794 _ID42237::_ID41068( "grenade_fire", "weapon_fired" );
    thread _ID50235();
}

_ID47309()
{
    level endon( "favela_civilians_alerted" );
    _ID42237::_ID14413( "player_entered_favela" );
    thread _ID50235();
}

_ID50235()
{
    _ID42237::_ID14402( "favela_civilians_alerted" );
    wait 1.5;

    foreach ( var_1 in level._ID49668 )
    {
        if ( isdefined( var_1 ) )
            var_1._ID38 = "alert";
    }
}

_ID48995()
{
    _ID42237::_ID14413( "favela_enemies_spawned" );
    wait 7.0;
    _ID42407::_ID28864( "favela_cmt_fullbattalion" );
    _ID42407::_ID28864( "favela_ryc_withyou" );
    _ID42237::_ID14413( "player_in_lower_favela_shanty" );
    _ID42407::_ID28864( "favela_cmt_doingok" );
    _ID42407::_ID28864( "favela_ryc_nosign" );
    _ID42407::_ID28864( "favela_cmt_keepsearching" );
    wait 2.5;
    _ID42407::_ID28864( "favela_ryc_moveup" );
    _ID42237::_ID14402( "allow_meat_death" );
}

_ID53745()
{
    _ID42237::_ID14413( "cleared_favela" );
    thread maps\favela_code::_ID45009();
    _ID42407::_ID28864( "favela_cmt_cuthimoff" );
    _ID42407::_ID28864( "favela_cmt_keepgoing" );
    wait 1.0;
    _ID42407::_ID28864( "favela_cmt_notime" );
}

_ID46919()
{
    _ID42237::_ID14413( "allow_meat_death" );
    _ID42237::_ID14413( "player_midway_through_lower_favela" );
    level._ID51460 thread _ID54484();
    level._ID51460 _ID42407::_ID36519();
    wait 0.05;
    level._ID51460._ID486 = 1;
    level._ID51460 thread _ID50755();
}

_ID50755()
{
    self endon( "death" );
    _ID42237::_ID14413( "force_meat_death" );
    magicbullet( "dragunov", ( -5427, -77, 1790 ), self geteye() );
    wait 0.1;
    self kill();
}

_ID54484()
{
    self waittill( "death" );
    _ID42407::_ID28864( "favela_ryc_meatisdown" );
    _ID42237::_ID14402( "allow_royce_death" );
}

_ID46257()
{
    _ID42237::_ID14413( "force_meat_death" );
    _ID42237::_ID14413( "allow_royce_death" );
    level._ID45288 thread _ID43095();
    level._ID45288 _ID42407::_ID36519();
    wait 0.05;
    level._ID45288._ID486 = 1;
    level._ID45288 thread _ID51983();
}

_ID51983()
{
    self endon( "death" );
    _ID42237::_ID14413( "force_kill_royce" );
    magicbullet( "dragunov", ( -5427, -77, 1790 ), self geteye() );
    wait 0.1;
    self kill();
}

_ID43095()
{
    self waittill( "death" );
    var_0 = 0;

    if ( isdefined( self ) && isdefined( self._ID740 ) )
        var_0 = level._ID794 _ID42407::_ID27540( self._ID740, cos( 45 ) );

    if ( !var_0 )
        _ID42407::_ID28864( "favela_ryc_imhit" );
}

_ID51164()
{
    level endon( "faust_appearance_1" );
    _ID42237::_ID14413( "dialog_watch_rooftops" );
    _ID42407::_ID28864( "favela_cmt_watchrooftops" );
    wait 4.0;
    _ID42407::_ID28864( "favela_cmt_stilltracking" );
    _ID42407::_ID28864( "favela_gst_duffelbag" );
    _ID42407::_ID28864( "favela_cmt_intercept" );
    wait 12;
    _ID42407::_ID28864( "favela_cmt_yourside" );
    _ID42407::_ID28864( "favela_gst_pinyoudown" );
    _ID42407::_ID28864( "favela_cmt_lostsightagain" );
    _ID42407::_ID28864( "favela_gst_alleysbelow" );
    _ID42407::_ID28864( "favela_cmt_stayonhim" );
    wait 6;
    _ID42237::_ID14413( "dialog_faust_through_market" );
    _ID42407::_ID28864( "favela_gst_cuttingthru" );
    _ID42407::_ID28864( "favela_cmt_headforrooftops" );
    wait 3.0;
    _ID42407::_ID28864( "favela_gst_wayaround" );
    wait 6;
    _ID42237::_ID14413( "dialog_faust_in_sights" );
    _ID42407::_ID28864( "favela_gst_halfklick" );
    _ID42407::_ID28864( "favela_cmt_eyeopen" );
    wait 8;
    _ID42407::_ID28864( "favela_gst_legshot" );
    _ID42407::_ID28864( "favela_cmt_donotengage" );
    _ID42407::_ID28864( "favela_gst_rogerthat2" );
    wait 12;
    _ID42407::_ID28864( "favela_cmt_nowheretogo" );
    _ID42407::_ID28864( "favela_cmt_traphimuphere" );
    wait 12;
    _ID42407::_ID28864( "favela_gst_jumpedfence" );
    _ID42407::_ID28864( "favela_cmt_goingleft" );
    wait 12;
    _ID42407::_ID28864( "favela_cmt_closertoyourpart" );
}

_ID52843()
{
    level endon( "ending_sequence_dialog" );
    level endon( "player_approaching_final_stairs" );
    level endon( "stop_all_misc_dialog" );
    _ID42237::_ID14413( "player_at_final_bend" );
    _ID42407::_ID28864( "favela_cmt_motorcycle" );
    var_0 = getent( "nohesnot_location", "targetname" );
    var_0 _ID42237::_ID27077( "favela_gst_nohesnot" );
    _ID42407::_ID28864( "favela_cmt_dontshoothim" );
    wait 0.3;
    _ID42407::_ID28864( "favela_cmt_onthemove" );
    wait 4.0;
    _ID42407::_ID28864( "favela_cmt_anotherfence" );
    wait 4.0;
    _ID42407::_ID28864( "favela_cmt_corraling" );
    wait 10;
    _ID42407::_ID28864( "favela_gst_whereishe" );
    wait 0.2;
    _ID42407::_ID28864( "favela_cmt_slidingrooftops" );
    wait 0.2;
    _ID42407::_ID28864( "favela_gst_anotherlegshot" );
    wait 0.2;
    _ID42407::_ID28864( "favela_cmt_carryhimback" );
}

_ID50501()
{
    _ID42237::_ID14413( "player_approaching_final_stairs" );

    if ( _ID42237::_ID14385( "ending_sequence_dialog" ) )
        return;

    level endon( "ending_sequence_dialog" );
    _ID42407::_ID28876();
    _ID42407::_ID28864( "favela_cmt_farright" );
    _ID42407::_ID28864( "favela_gst_rogerthat" );
}

_ID52397()
{
    _ID42407::_ID38928( "ending_sequence", "targetname" );
    thread _ID51563();
    thread _ID42407::_ID4917( "allies" );
    thread _ID42407::_ID4917( "axis" );
    var_0 = getent( "ending_node", "targetname" );
    var_1 = _ID42407::_ID35168( "ending_soap_spawner", 1 );
    var_1._ID3189 = "mactavish";
    var_1 _ID42407::_ID32353( 1 );
    var_1 _ID42407::_ID32352( 1 );
    var_1 thread _ID42407::_ID22746();
    var_2 = _ID42407::_ID35168( "ending_faust_spawner", 1 );
    var_2._ID680 = "Rojas";
    var_2._ID3189 = "faust";
    var_2.cheat._ID54456 = 1;
    var_2 _ID42407::_ID32353( 1 );
    var_2 _ID42407::_ID32352( 1 );
    var_2 thread _ID42407::_ID22746();
    var_2 thread maps\favela_code::_ID44856();
    var_2 thread _ID49390( "end" );
    objective_current( 4, ( 0, 0, 0 ) );
    var_3 = getent( "ending_car", "targetname" );
    var_3 useanimtree( level._ID30900["car"] );
    var_3._ID3189 = "car";
    level._ID47319 = _ID42407::_ID35168( "ending_ghost_spawner", 1 );
    level._ID47319._ID3189 = "ghost";
    level._ID47319 _ID42407::_ID32353( 1 );
    level._ID47319 _ID42407::_ID32352( 1 );
    level._ID47319 thread _ID42407::_ID22746();
    var_4[0] = var_1;
    var_4[1] = var_2;
    var_4[2] = var_3;
    var_4[3] = level._ID47319;
    var_0 _ID42259::_ID3016( var_4, "ending_takedown" );
    _ID42237::_ID14413( "player_in_ending_area" );
    thread maps\favela_code::animated_payphone();
    var_2 _ID42407::_ID41135( 0.65, undefined, undefined, 7.0 );
    _ID42475::_ID34575( "start_ending_sequence_mix" );
    maps\favela_aud::set_ending_slowmo_timescale();
    _ID42237::_ID14402( "ending_sequence_started" );
    _ID42237::_ID14388( "faust_music" );
    _ID42237::_ID14388( "favela_music" );
    thread _ID42407::_ID24584( 1.0 );
    level._ID794 thread _ID42407::_ID27079( "mus_favela_moneyrun_endfall" );
    var_0 thread _ID42259::_ID3099( var_4, "ending_takedown" );
    wait 22.5;
    _ID13799();
    _ID42407::_ID24793();
}

_ID13799()
{
    _ID42475::_ID34575( "start_fade_out_level" );
    var_0 = 1.0;
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    var_1 = newhudelem();
    var_1._ID1331 = 0;
    var_1._ID1339 = 0;
    var_1 setshader( "black", 640, 480 );
    var_1._ID44 = "left";
    var_1._ID45 = "top";
    var_1._ID499 = "fullscreen";
    var_1._ID1284 = "fullscreen";
    var_1._ID55 = 0;
    var_1 fadeovertime( var_0 );
    var_1._ID55 = 1;
    wait(var_0);
    level._ID794 freezecontrols( 1 );
    _ID42407::_ID12569( 0 );
}

_ID51563()
{
    _ID42237::_ID14402( "ending_sequence_dialog" );

    if ( !_ID42237::_ID14385( "ending_sequence_started" ) )
        _ID42407::_ID28864( "favela_gst_getaway" );

    _ID42237::_ID14413( "ending_sequence_started" );
    _ID42237::_ID14402( "start_final_dialog" );
}

_ID45720()
{
    wait 0.15;

    if ( !_ID42407::_ID27540( self._ID740, undefined, 1 ) )
        return;

    var_0 = 0.5;
    var_1 = 0.65;
    var_2 = 0.1;
    var_3 = 0.2;
    var_4 = 2.0;
    _ID42475::_ID34575( "start_ending_slowmo" );
    objective_current( 2, ( 0, 0, 0 ) );
    level._ID794 thread _ID42407::_ID27079( "slomo_whoosh" );
    _ID42407::_ID34379();
    _ID42407::_ID34377( var_3 );
    _ID42407::_ID34374( var_0 );
    _ID42407::_ID34371();
    level._ID794 setmovespeedscale( var_2 );
    wait(var_4 * var_3);
    _ID42475::_ID34575( "stop_ending_slowmo" );
    level._ID794 thread _ID42407::_ID27079( "slomo_whoosh" );
    _ID42407::_ID34375( var_1 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
    level._ID794 setmovespeedscale( 1.0 );
    wait 1;
    objective_state( 2, "done" );
    objective_state_nomessage( 4, "done" );
}
#using_animtree("destructibles");

_ID54185()
{
    var_0 = getentarray( "destructible_toy", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( var_2._ID279 == "toy_ceiling_fan" )
            var_2 _meth_83d4( %me_fanceil1_spin, randomfloatrange( 0.25, 0.35 ) );
    }
}

_ID45095()
{
    self endon( "death" );
    var_0 = getent( "runner_shootback", "targetname" );
    var_1 = getnode( "runner_shootingback", "targetname" );
    var_0 waittill( "trigger" );
    self._ID3189 = "civilian_custom";
    _ID42407::_ID37393( var_1 );
    thread _ID42259::_ID3111( self, "rojas_assistant_run_gun" );
    self waittill( "damage" );
    self stopanimscripted();
}

_ID51409( var_0 )
{
    wait 3;
    var_0 _ID42407::_ID41119( "pull_start" );
    level._ID794 _meth_830f( 1 );
}

_ID50778( var_0 )
{
    level endon( "torture_sequence_done" );
    wait 7;
    playfxontag( level._ID1426["flare_ambient_favela"], var_0, "tag_fx_flame" );
    var_0 thread _ID42407::_ID27079( "scn_favela_captive_in_chair" );
}
