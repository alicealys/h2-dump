// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID44293()
{
    level._ID54582 = getdvar( "player_sprintSpeedScale" );
    _ID42407::_ID1951( "run", ::_ID43558, "run", ::_ID43090 );
    _ID42407::_ID1951( "cafe", ::_ID53666, "cafe", ::_ID47024 );
    _ID42407::_ID1951( "evac", ::_ID53090, "evac", ::_ID49550 );
    waitframe;
    var_0 = getentarray( "cafe_ceiling_chunk", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID31860 );
    var_1 = getentarray( "cafe_ceiling_chunk_small", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID31860 );
    var_2 = getentarray( "cafe_ceiling_pristine", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID31860 );
    var_3 = getent( "cafeteria_hallway_rubble", "targetname" );
    var_3 thread maps\gulag_ending_code::_ID45290();
    maps\gulag_ending_anim::_ID48239();
    level._ID1426["breach_door"] = loadfx( "fx/explosions/breach_wall_concrete" );
    level._ID1553 = 2.5;
    var_4 = getent( "hookup_rope_ent", "targetname" );

    if ( isdefined( var_4 ) )
        var_4 delete();

    _ID42237::_ID14400( "player_approaches_rescue_breach" );
    _ID42237::_ID14400( "intro_helis_go" );
    _ID42237::_ID14400( "player_near_tv" );
    _ID42237::_ID14400( "stop_tv_loop" );
    _ID42237::_ID14400( "f15s_spawn" );
    _ID42237::_ID14400( "anti_air_missiles_fire" );
    _ID42237::_ID14400( "aa_hit" );
    _ID42237::_ID14400( "f15s_attack" );
    _ID42237::_ID14400( "player_heli_uses_modified_yaw" );
    _ID42237::_ID14400( "intro_helis_spawned" );
    _ID42237::_ID14400( "player_lands" );
    _ID42237::_ID14400( "cell_door1" );
    _ID42237::_ID14400( "cell_door2" );
    _ID42237::_ID14400( "cell_door3" );
    _ID42237::_ID14400( "cell_door4" );
    _ID42237::_ID14400( "cell_door_weapons" );
    _ID42237::_ID14400( "access_control_room" );
    _ID42237::_ID14400( "going_in_hot" );
    _ID42237::_ID14400( "gulag_cell_doors_enabled" );
    _ID42237::_ID14400( "player_exited_bathroom" );
    _ID42237::_ID14400( "player_rappels_from_bathroom" );
    _ID42237::_ID14400( "rope_drops_now" );
    _ID42237::_ID14400( "cell_duty" );
    _ID42237::_ID14400( "cellblock_player_starts_rappel" );
    _ID42237::_ID14400( "bathroom_second_wave_trigger" );
    _ID42237::_ID14400( "player_died_to_cave_in" );
    _ID42237::_ID14400( "chase_brush_kill_volume_2_activates" );
    _ID42237::_ID14400( "match_up_for_final_room" );
    _ID42237::_ID14400( "rescue_begins" );
    _ID42237::_ID14400( "time_to_evac" );
    _ID42237::_ID14400( "enable_interior_fx" );
    _ID42237::_ID14400( "enable_endlog_fx" );
    _ID42237::_ID14400( "player_falls_down" );
    _ID42237::_ID14400( "player_evac" );
    _ID42237::_ID14400( "controlled_player_rumble" );
    _ID42237::_ID14400( "evac_begins" );
    _ID42237::_ID14400( "do_cafeteria_anims" );
    _ID42237::_ID14400( "cafeteria_lights_off" );
    precacheitem( "smoke_grenade_american" );
    precacheitem( "m4m203_reflex_arctic" );
    precacheitem( "f15_sam" );
    precacheitem( "sam" );
    precacheitem( "cobra_seeker" );
    precacheitem( "rpg_straight" );
    precacheitem( "cobra_Sidewinder" );
    precacheitem( "claymore" );
    precacheitem( "mp5_silencer_reflex" );
    precacheturret( "player_view_controller" );
    precacherumble( "heavy_1s" );
    precacherumble( "heavy_2s" );
    precacherumble( "heavy_3s" );
    precacherumble( "light_1s" );
    precacherumble( "light_2s" );
    precacherumble( "light_3s" );
    precacheitem( "m14_scoped_arctic" );
    precacheitem( "fraggrenade" );
    precacheitem( "flash_grenade" );
    precacheitem( "claymore" );
    precachemodel( "h1_cs_light_alarm_blue_on" );
    precachemodel( "h1_cs_light_alarm_on" );
    precacheitem( "m4m203_acog" );
    thread maps\gulag_ending_code::_ID49706();
    var_5 = getentarray( "turnaround_trigger", "targetname" );
    _ID42237::_ID3350( var_5, maps\gulag_ending_code::_ID46626 );
    var_6 = getentarray( "ceiling_collapse", "targetname" );
    _ID42237::_ID3350( var_6, maps\gulag_ending_code::_ID50448 );
    var_7 = getent( "chase_brush", "targetname" );
    var_7 hide();
    var_7 connectpaths();
    var_8 = getent( "price_spawner", "targetname" );
    var_8 thread _ID42407::_ID1947( maps\gulag_ending_code::_ID44629 );
    var_9 = _ID42237::_ID16638( "set_friendly_endpoint", "targetname" );
    var_9 thread maps\gulag_ending_code::_ID51861();
    _ID42407::_ID3344( "endlog_redshirt_spawner", maps\gulag_ending_code::_ID44567 );
    var_10 = getent( "ending_window_littlebird", "script_noteworthy" );
    var_10 _ID42407::_ID1947( maps\gulag_ending_code::_ID47589 );
    var_11 = getentarray( "delete_tree", "targetname" );
    _ID42237::_ID3350( var_11, maps\gulag_ending_code::_ID47891 );
    thread maps\gulag_ending_code::_ID46444();
    _ID42237::_ID14413( "rescue_begins" );
    var_12 = getent( "evac_rock", "targetname" );
    var_12 notsolid();
    thread maps\gulag_ending_code::_ID44732();
    _ID42407::_ID29534( "allies", _ID42407::_ID12467 );
    thread maps\gulag_ending_code::_ID47526();
    var_13 = getentarray( "trigger_damage", "targetname" );
    _ID42237::_ID3350( var_13, maps\gulag_ending_code::_ID54305 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    _ID42237::_ID14413( "escape_the_gulag" );
    var_14 = getentarray( "stumble_trigger", "targetname" );
    _ID42237::_ID3350( var_14, maps\gulag_ending_code::_ID43283 );
}

_ID43558()
{
    _ID42237::_ID14402( "rescue_begins" );
    _ID42475::_ID34575( "start_run_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_hallways" );
    var_0 = [];
    var_1 = getent( "price_spawner", "targetname" );
    var_0[var_0.size] = var_1;
    var_1 = getent( "endlog_soap_spawner", "targetname" );
    var_0[var_0.size] = var_1;
    var_1 = getentarray( "endlog_redshirt_spawner", "targetname" )[0];
    var_0[var_0.size] = var_1;
    var_2 = _ID42407::_ID3339( var_0 );
    var_3 = _ID42237::_ID16638( "ending_breach_org", "targetname" );
    level._ID794 setorigin( var_3._ID740 );
    level._ID794 setplayerangles( var_3._ID65 );
    maps\gulag_ending_code::_ID54691();
    var_3 thread _ID42259::_ID3099( var_2, "price_rescue" );
    wait 0.05;

    foreach ( var_5 in var_2 )
    {
        var_6 = var_5 _ID42407::_ID16120( "price_rescue" );
        var_5 setanimtime( var_6, 0.75 );
    }
}

_ID43090()
{
    if ( level._ID912 == "endlog" || level._ID35897 == "run" )
        wait 0.05;

    maps\gulag_ending_code::_ID54628();
    setsaveddvar( "ai_friendlyFireBlockDuration", 0 );
    thread maps\gulag_ending_code::_ID43761();
    var_0 = getentarray( "hillside_brushmodel", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 hide();

    var_4 = getentarray( "hillside_model", "targetname" );

    foreach ( var_2 in var_4 )
        var_2 hide();

    var_7 = _ID42237::_ID16640( "friendly_escape_org", "targetname" );
    var_7 = _ID42407::_ID3310( var_7 );
    var_8 = getaiarray( "allies" );
    var_9 = [];
    var_9["soap"] = ( 0, 1, 1 );
    var_9["price"] = ( 1, 0.501961, 0 );
    var_9["redshirt"] = ( 1, 0, 0.501961 );
    thread maps\gulag_ending_code::_ID47856( var_8 );

    foreach ( var_11 in var_8 )
        var_11 thread maps\gulag_ending_code::_ID45885();

    thread maps\gulag_ending_code::_ID45227();
    thread maps\gulag_ending_code::_ID54280();
    _ID42237::_ID14400( "modify_ai_moveplaybackrate" );
    _ID42407::_ID10226( 11.5, _ID42237::_ID14402, "modify_ai_moveplaybackrate" );
    thread maps\gulag_ending_code::_ID49253();
    _ID42407::_ID1805( "friendly_escape_trigger" );
    _ID42407::_ID4422( "run_autosave" );
    wait 1;
    var_13 = getent( "ending_window_littlebird", "script_noteworthy" );
    var_14 = _ID42237::_ID16638( var_13._ID1191, "targetname" );
    var_13._ID740 = var_14._ID740;
    _ID42237::_ID14413( "there_is_chopper" );
    _ID42237::_ID14413( "exit_collapses" );
    _ID42237::_ID24938( 1.5, ::setsaveddvar, "player_sprintSpeedScale", level._ID54582 );
    setsaveddvar( "player_sprintUnlimited", 1 );
    _ID42237::_ID14402( "soap_speed_boost" );
    level._ID54653 = 1;
    maps\gulag_ending_code::_ID43994( 0.25, 4, level._ID28543._ID740, 5000 );
    thread maps\gulag_ending_code::_ID53931();
    wait 0.2;
    wait 1;
    level._ID54653 = 4;
    maps\gulag_ending_code::_ID54628();
    _ID42237::_ID14413( "enter_final_room" );
    thread maps\gulag_ending_code::_ID49389();
}

_ID46241()
{
    var_0 = getent( "endlog_soap_spawner", "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_2 = getent( "price_spawner", "targetname" );
    var_3 = var_2 _ID42407::_ID35014();
    var_4 = getentarray( "endlog_redshirt_spawner", "targetname" );
    var_5 = var_4[0] _ID42407::_ID35014();
    var_6 = _ID42407::_ID35028( "player_rig" );
    var_7 = [];
    var_7[var_7.size] = var_1;
    var_7[var_7.size] = var_3;
    var_7[var_7.size] = var_5;
    var_7[var_7.size] = var_6;
    var_1._ID3189 = "gulag_end_animatic_soap";
    var_3._ID3189 = "gulag_end_animatic_price";
    var_5._ID3189 = "gulag_end_animatic_soldier";
    var_6._ID3189 = "player_rig";
    _ID42237::_ID9137( "altview", 0 );

    if ( getdvarint( "altview" ) )
    {
        level._ID794 setorigin( ( -4594, -765, 180 ) );
        level._ID794 setplayerangles( ( -21, -88, 0 ) );
    }
    else
        level._ID794 playerlinktoblend( var_6, "tag_player", 0, 0, 0 );

    level._ID794 takeallweapons();
    var_8 = getent( "mound_scene_export", "targetname" );

    for (;;)
        var_8 _ID42259::_ID3099( var_7, "ending" );
}

_ID53666()
{
    _ID42475::_ID34575( "start_cafeteria_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_ending" );
    var_0 = _ID42237::_ID16640( "start_cafe_friendly", "targetname" );
    var_1 = _ID42407::_ID3310( var_0 );
    maps\gulag_ending_code::_ID47048( var_1 );
    var_2 = getaiarray( "allies" );

    foreach ( var_4 in var_2 )
        var_4 thread maps\gulag_ending_code::_ID45885();

    var_6 = _ID42237::_ID16638( "start_cafe_player", "targetname" );
    level._ID794 setorigin( var_6._ID740 );
    level._ID794 setplayerangles( var_6._ID65 );
    maps\gulag_ending_code::_ID54691();
    level._ID43155 = getentarray( "cafe_table", "targetname" );
    _ID42237::_ID3350( level._ID43155, maps\gulag_ending_code::_ID52256 );
    var_7 = _ID42237::_ID16640( "cafe_table_org", "targetname" );
    _ID42237::_ID3350( var_7, maps\gulag_ending_code::_ID46074 );
    var_8 = _ID42237::_ID16640( "cafe_table_eq_org", "targetname" );
    _ID42237::_ID3350( var_8, maps\gulag_ending_code::_ID53575 );
    thread maps\gulag_ending_code::_ID49389();
    var_9 = getent( "hunted_swing_light", "targetname" );
}

_ID47024()
{
    maps\gulag_ending_code::_ID54628();
    level._ID53563 notify( "stop_going_to_node" );
    level._ID28543 notify( "stop_going_to_node" );
    level._ID46875 notify( "stop_going_to_node" );
    var_0 = [];
    var_0["soap"] = level._ID53563;
    var_0["price"] = level._ID28543;
    var_0["redshirt"] = level._ID46875;
    var_0["chains"] = level._ID46553;

    foreach ( var_2 in var_0 )
    {
        var_2._ID465 = 0;

        if ( !isdefined( var_2._ID22746 ) )
            var_2 thread _ID42407::_ID22746();

        var_2._ID512 = 1;
        var_2._ID86 = 0;
    }

    var_4 = [];
    var_4[var_4.size] = level._ID28543;
    var_4[var_4.size] = level._ID46875;
    var_5 = getent( "mound_scene_export", "targetname" );
    _ID42237::_ID14413( "do_cafeteria_anims" );
    level notify( "cafeteria_sequence_begins" );

    foreach ( var_2 in var_0 )
        var_2._ID24424 = 1;

    maps\gulag_ending_code::_ID43169();
    _ID42407::_ID10226( 1.5, maps\gulag_ending_code::_ID44720 );
    level._ID37750 = gettime();

    for ( var_8 = 0; var_8 < 3; var_8++ )
        _ID42407::_ID10226( 4.7, _ID42234::_ID13611, "end_scene_rock" );

    _ID42407::_ID10226( 4.75, _ID42234::_ID13611, "end_scene_rock" );
    _ID42407::_ID10226( 4.85, _ID42234::_ID13611, "end_scene_rock" );
    var_9 = getent( "cafeteria_scriptednode", "targetname" );
    var_9 thread _ID42259::_ID3099( var_0, "cafe_entrance" );
    wait 4.2;
    maps\gulag_ending_code::_ID43994( 0.25, 4, level._ID794._ID740, 5000 );
    wait 0.05;
    wait 2;
    _ID42407::_ID10226( 1, _ID42237::_ID14402, "player_falls_down" );
    level._ID53563 _ID42407::_ID10226( 2, _ID42407::_ID10805, "gulag_cmt_roachisdown" );
    level._ID53563 _ID42407::_ID10226( 3.1, _ID42407::_ID10805, "gulag_cmt_roach" );
    wait 2;
    _ID42237::_ID14426( "player_falls_down" );
}

_ID53090()
{
    _ID42475::_ID34575( "start_evac_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_ending" );
    var_0 = getent( "price_spawner", "targetname" );
    var_0 _ID42407::_ID35014();
    var_0 = getent( "endlog_soap_spawner", "targetname" );
    var_0 _ID42407::_ID35014();
    var_0 = getentarray( "endlog_redshirt_spawner", "targetname" )[0];
    var_0 _ID42407::_ID35014();
}

_ID47587( var_0, var_1 )
{
    for (;;)
    {
        foreach ( var_3 in var_0 )
        {
            var_4 = var_3 _ID42407::_ID16120( var_1 );
            var_5 = var_3 getanimtime( var_4 );
        }

        wait 0.05;
    }
}

_ID50480( var_0 )
{
    level._ID794 endon( "death" );
    _ID42237::_ID14413( "player_uses_rig" );
    var_0["ending_rope1"] waittillmatch( "single anim",  "switch_rope"  );
    var_0["ending_rope1"] hide();
    var_0["ending_rope"] show();
}

_ID49550()
{
    setsaveddvar( "ui_hidemap", 1 );
    var_0 = getent( "cafeteria_stagelight", "targetname" );
    var_0 thread _ID42407::_ID25088( "staging_on", 1 );
    level._ID794 setmovespeedscale( 1 );
    var_1 = getaiarray( "allies" );

    foreach ( var_3 in var_1 )
        var_3 _ID42407::_ID3136();

    _ID42237::_ID14402( "time_to_evac" );
    level._ID794 setblurforplayer( 0, 1 );
    level._ID794 playersetgroundreferenceent( undefined );
    level notify( "stop_cavein" );
    setsaveddvar( "g_friendlyNameDist", 0 );

    if ( level._ID35897 == "evac" )
        wait 0.05;

    level._ID48582 = 0.1;
    var_5 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_5._ID55 = 1;
    _ID42475::_ID34575( "start_evac_rock_falling_black_screen" );

    if ( isdefined( level._ID5261 ) )
        level._ID5261._ID55 = 0;

    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    wait 5.2;
    thread maps\gulag_ending_code::_ID43462();
    thread maps\gulag_ending_code::_ID43267();
    var_5 fadeovertime( 0.15 );
    var_5._ID55 = 0;
    _ID42475::_ID34575( "stop_evac_rock_falling_black_screen" );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "actionSlotsHide", 1 );
    var_6 = _ID42407::_ID35028( "player_rig" );
    var_7 = _ID42407::_ID35028( "player_rig" );
    var_7 hide();
    level._ID27625 = var_6;
    var_8 = _ID42407::_ID35028( "player_carabiner" );
    var_9 = getent( "mound_scene_export", "targetname" );
    level._ID53563 _ID42407::_ID14803( "m4m203_acog", "primary" );
    var_10 = [];
    var_10["price"] = level._ID28543;
    var_10["redshirt"] = level._ID46875;
    var_10["player_rig"] = var_6;
    var_10["strangle_chain"] = level._ID46553;
    var_11 = _ID42407::_ID35028( "rock" );
    var_11 hide();
    var_10["anim_rock"] = var_11;
    var_12 = _ID42407::_ID35028( "pavelow" );
    var_10["pavelow"] = var_12;
    var_13 = _ID42407::_ID35028( "ending_rope1" );
    var_14 = _ID42407::_ID35028( "ending_rope" );
    var_14 hide();
    var_10["ending_rope1"] = var_13;
    var_10["ending_rope"] = var_14;
    thread _ID50480( var_10 );
    var_10["ending_rope1"] makeusable();
    var_13 _meth_848a( level._ID53563._ID740 );
    var_8 _meth_848a( level._ID53563._ID740 );
    var_15 = getent( "evac_rock", "targetname" );
    var_15 _ID42407::_ID1958();
    var_15 castshadows();
    var_15._ID26717 linkto( var_11, "body_animate", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_16 = 15;
    var_17 = 15;
    var_18 = 15;
    var_19 = 15;
    thread _ID42263::_ID1376();
    level._ID794 playerlinktodelta( var_6, "tag_player", 1, 0, 0, 0, 0, 1 );
    level._ID794 takeallweapons();
    _ID42234::_ID13611( "bomb_exploder" );
    _ID42407::_ID10226( 20, _ID42234::_ID13611, "evac_exploder" );
    var_9 _ID42259::_ID3018( var_7, "fly_away" );
    var_9 _ID42407::_ID10226( 20.16, _ID42259::_ID3111, var_7, "fly_away" );
    var_20 = gettime();
    var_9 thread _ID42259::_ID3099( var_10, "evac" );
    var_9 thread _ID42259::_ID3111( level._ID53563, "evac" );
    _ID42237::_ID14402( "evac_begins" );
    _ID42407::_ID10226( 6.7, _ID42407::_ID28864, "gulag_plp_seeflare" );
    level._ID53563 thread _ID51148();
    var_6 waittillmatch( "single anim",  "end"  );
    var_0 notify( "staging_off" );
    level._ID794 unlink();
    level._ID794 allowcrouch( 1 );
    level._ID794 allowprone( 1 );
    setsaveddvar( "ui_hidemap", 0 );
    setsaveddvar( "g_friendlyNameDist", 175 );
    thread maps\gulag_ending_code::_ID45617();
    var_21 = [];
    var_21["carabiner"] = var_8;
    var_21["rig"] = var_6;
    var_9 _ID42259::_ID3016( var_21, "hookup" );
    var_6 hide();
    var_8 hide();
    var_22 = _ID42237::_ID35164();
    var_22 linkto( var_7, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_23 = _ID42407::_ID16268( "player_uses_rig" );
    var_23 thread _ID42237::_ID44574( level._ID794, &"GULAG_SPIE_HINT", &"GULAG_SPIE_HINT_PC", "trigger" );
    setsaveddvar( "hud_drawhud", 1 );
    _ID42237::_ID14413( "player_uses_rig" );
    thread _ID49461();
    var_23 _ID42237::_ID38863();
    _ID42475::_ID34575( "start_evac_player" );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );

    if ( isdefined( level._ID53563._ID53196 ) )
        return;

    var_24 = gettime() - var_20;
    var_24 *= 0.001;
    var_25 = 0;

    if ( var_24 < 18 )
    {
        var_25 = 1;
        var_26 = 0.5;
        level._ID794 playerlinktoblend( var_6, "tag_player", var_26, var_26 * 0.4, var_26 * 0.4 );
        _ID42407::_ID10226( var_26, ::_ID48339, var_22, var_6 );
        wait(var_26);
        level._ID794 playerlinktodelta( var_6, "tag_player", 1, 0, 0, 0, 0, 1 );
        thread _ID54094( var_9, var_21 );
    }
    else
    {
        var_26 = 0.5;
        level._ID794 playerlinktoblend( var_7, "tag_player", var_26, var_26 * 0.4, var_26 * 0.4 );
        level._ID794 _ID42237::_ID10192( var_26, ::playersetgroundreferenceent, var_22 );
        level._ID794 _ID42237::_ID10192( var_26 + 0.05, ::playerlinktodelta, var_6, "tag_player", 1, 35, 10, 55, 15, 1 );
    }

    _ID42237::_ID14413( "player_gets_pulled" );
    thread _ID51818();
    setsaveddvar( "g_friendlyNameDist", 0 );
    var_9 notify( "stop_loop" );
    level._ID794 notify( "stop_opening_fov" );
    level._ID28543 _ID42237::_ID10192( 5.05, ::playsound, "gulag_pri_yes" );
    var_9 thread _ID42259::_ID3111( var_6, "fly_away" );
    var_6 thread _ID42407::_ID27079( "scn_gulag_evac_player_leaving" );
    thread _ID45623();
    thread maps\gulag_ending_code::_ID45151();
    _ID42407::_ID10226( 3.0, maps\gulag_lighting::_ID46054, "gulag_rappel" );
    var_27 = var_6 _ID42407::_ID16120( "fly_away" );
    _ID42475::_ID34575( "final_explosion_mix" );
    wait 7.85;
    var_5 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_5._ID55 = 1;
    _ID42407::_ID24793();
}

_ID49461()
{
    var_0 = _ID54167::_ID43386( "gulag_clip_on_rope" );
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 2.25 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, 11, 1, 1 ) _ID54167::_ID45145( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 1.85 ) _ID54167::_ID50321( 12, 300, 6, 6 );
    var_0 _ID54167::_ID48800( 2.35 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 2.0 ) _ID54167::_ID54217( 1.0, 0.15, 0.15, 35, 10, 55, 15 ) _ID54167::_ID46222();
    var_0 _ID54167::_ID48800( 3.2 ) _ID54167::_ID54217( 1.6, 0.25, 0.25, 10, 10, 55, 10 ) _ID54167::_ID46222();
    var_0 _ID54167::_ID48800( 1.05 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48166();
}

_ID51818()
{
    var_0 = _ID54167::_ID43386( "gulag_helicopter_escape_pull" );
    var_0 _ID54167::_ID48800( 0.65 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 8.0 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID44191( 80, 1.0, 0 );
    var_0 _ID54167::_ID48800( 3.75 ) _ID54167::_ID43500( 2.65, 0 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 12, 300, 16, 16 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.6 ) _ID54167::_ID50321( 1.0, 300, 2, 2 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID50321( 1.0, 1200, 2, 2 );
    var_0 _ID54167::_ID48800( 8.0 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID54217( 0.5, 0.15, 0.15, 10, 10, 10, 10 ) _ID54167::_ID46222();
    var_0 _ID54167::_ID48800( 3.65 ) _ID54167::_ID54217( 2.5, 0.8, 0.8, 10, 10, 45, 10 ) _ID54167::_ID46222();
    var_0 _ID54167::_ID48166();
}

_ID45623()
{
    wait 1;
    playrumbleonposition( "heavy_3s", level._ID794._ID740 );
    level._ID794 playrumblelooponentity( "damage_heavy" );
    level._ID794 _meth_80b5( "light_1s" );
}

_ID45864( var_0, var_1 )
{
    _ID42237::_ID14413( "player_evac" );
    _ID52351( var_0, var_1 );
}

_ID52351( var_0, var_1 )
{
    level._ID794 playerlinktoblend( var_0, "tag_player", var_1, var_1 * 0.4, var_1 * 0.4 );
    wait(var_1);
    var_2 = 18;
    level._ID794 playerlinktodelta( var_0, "tag_player", var_2, var_2, var_2, var_2, 1 );
}

_ID48339( var_0, var_1 )
{
    level._ID794 playersetgroundreferenceent( var_0 );
    wait 1;
    _ID42407::_ID25888( 0.5, var_1, "tag_player", 35, 10, 55, 15 );
}

_ID47741( var_0, var_1 )
{
    level._ID794 playersetgroundreferenceent( var_0 );
}

_ID54094( var_0, var_1 )
{
    if ( _ID42237::_ID14385( "player_gets_pulled" ) )
        return;

    level endon( "player_gets_pulled" );
    var_1["carabiner"] show();
    var_1["rig"] show();
    var_0 _ID42259::_ID3099( var_1, "hookup" );
    var_0 _ID42259::_ID3044( var_1["rig"], "idle" );
}

_ID51148()
{
    _ID42237::_ID14400( "player_gets_pulled" );
    self waittillmatch( "single anim",  "player"  );
    _ID42237::_ID14402( "player_gets_pulled" );
}

_ID45125()
{
    waitframe;
    var_0 = level._ID35897;

    if ( _ID42407::_ID20505() )
        return;

    _ID42407::_ID29534( "allies", _ID42407::_ID12467 );

    if ( var_0 == "rescue" )
        return;

    _ID42237::_ID14388( "enable_interior_fx" );
    _ID42237::_ID14402( "rescue_begins" );
    _ID42237::_ID14402( "escape_the_gulag" );
    wait 0.05;
    disableforcedsunshadows();

    if ( level._ID912 != "endlog" )
    {
        var_1 = getent( "gulag_endlog_destructibles", "script_noteworthy" );
        var_1 _ID42407::_ID1786();
        var_1 _ID42407::_ID1794();
    }

    if ( var_0 == "run" )
        return;

    thread maps\gulag_ending_code::_ID43761();
    thread maps\gulag_ending_code::_ID54280();
    maps\gulag_ending_code::_ID48193();
    _ID42237::_ID14402( "enter_final_room" );
    _ID42237::_ID14402( "exit_collapses" );
    _ID42237::_ID14402( "match_up_for_final_room" );
    _ID42237::_ID14402( "big_earthquake_hits" );
    wait 0.05;
    level._ID28543 _ID42407::_ID14803( "ak47", "primary" );
    level notify( "skip_stumble_trigger_think" );

    if ( var_0 == "cafe" )
        return;

    level notify( "stop_minor_earthquakes" );
    level._ID794 takeallweapons();
    _ID42237::_ID14402( "player_falls_down" );

    if ( var_0 == "evac" )
        return;
}
