// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\favela_escape_mission_select_cam::_ID50320();
        return;
    }

    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
    {
        maps\favela_escape_beautiful_corner::main();
        return;
    }

    setsaveddvar( "fx_cast_shadow", 0 );
    level._ID49010 = 0.5;
    level._ID29811 = 1;
    level._ID10497 = 0.75;
    level._ID10527 = 1.75;
    setsaveddvar( "compassHideVehicles", "1" );
    var_0 = [];
    var_1 = [];
    var_0[var_0.size] = "ak47_drone_sound";
    var_1["ak47_drone_sound"] = "h2_solorun_ak47_npc_close";
    var_0[var_0.size] = "uzi_drone_sound";
    var_1["uzi_drone_sound"] = "h2_solorun_uzi_npc_close";
    var_0[var_0.size] = "glock_drone_sound";
    var_1["glock_drone_sound"] = "h2_solorun_g18_npc_close";
    var_0[var_0.size] = "fal_drone_sound";
    var_1["fal_drone_sound"] = "h2_solorun_fal_npc_close";
    level._ID52504 = var_0;
    level._ID46286 = var_1;
    level._ID8760["45"] = cos( 45 );
    _ID51196::main();
    _ID53782::main();
    _ID51855::main();
    _ID54620::main();
    _ID51773::main();
    _ID49233();
    precacherumble( "airliner_flyby" );
    precacherumble( "heli_loop" );
    precacherumble( "warbird_flyby" );
    precacherumble( "tank_rumble" );
    _ID42313::_ID54261();
    _ID19719();
    _ID49395();

    if ( isdefined( level._ID35897 ) && level._ID35897 == "no_game" )
    {
        _ID42237::_ID14402( "portalgroup1" );
        _ID42237::_ID14402( "portalgroup2" );
        _ID42237::_ID14402( "portalgroup2_farside" );
        _ID42237::_ID14402( "portalgroup3_facade" );
        _ID42237::_ID14402( "portalgroup3" );
        _ID42237::_ID14402( "portalgroup4" );
        _ID42237::_ID14402( "portalgroup5" );
        _ID42237::_ID14402( "portalgroup5_soccerfield" );
        _ID42237::_ID14402( "portalgroup6" );
        _ID42237::_ID14402( "portalgroup7" );
        _ID42237::_ID14402( "portalgroup_sidebuildings1" );
        _ID42237::_ID14402( "portalgroup_sidebuildings2" );
        _ID42237::_ID14402( "portalgroup_vistaEast" );
    }

    _ID47668();
    _ID52657::main();
    _ID42359::main();
    level._ID48251 = maps\favela_escape_code::_ID44784();
    level._ID14988 = maps\favela_escape_code::_ID51238;
    maps\favela_escape_code::_ID44223();
    _ID42287::init();
    maps\favela_escape_anim::main();
    _ID42323::main();
    _ID45285::_ID49852();
    thread _ID43858::main();
    _ID42237::_ID14402( "respawn_friendlies" );
    thread maps\favela_escape_code::_ID54598();
    thread _ID52140();
    thread _ID49739();
    thread _ID33511();
    thread maps\favela_escape_code::_ID48776();
    level.player thread _ID45896();
    thread maps\favela_escape_code::init_fx_alphathreshold();
    thread maps\favela_escape_code::helicopter_soccerfield_exploder();
    thread maps\favela_escape_code::playerjump_roof_fx();
    maps\favela_escape_aud::main();
    thread _ID46177();
    thread maps\favela_escape_code::_ID54253();
    thread _ID51773::_ID44134();
    thread maps\favela_escape_code::_ID53382();
    _ID42272::_ID33575( "compass_map_favela_escape" );
    thread _ID54366();
    thread maps\favela_escape_code::_ID49430();
    thread _ID52043();
    thread maps\favela_escape_code::animated_airconditioners_setup();
    thread static_model_group_setup();
    thread hide_objects_in_market( "killfunc_hide_objects_in_market", "objects_to_hide_in_market", "hide_objects_in_market_flag" );
    thread hide_objects_in_market( "killfunc_hide_objects_in_market", "cars_to_hide_in_market", "cars_to_hide_in_market" );
    thread hide_objects_in_market( "killfunc_hide_objects_in_market", "marketA", "objects_marketA" );
    thread hide_objects_in_market( "killfunc_hide_objects_in_market", "marketB", "objects_marketB" );
    thread hide_objects_in_market( "killfunc_hide_objects_in_market", "marketC", "objects_marketC" );
    maps\favela_escape_lighting::main();
    var_2 = getent( "vista_end", "targetname" );
    var_3 = getentarray( "vista_end_water", "targetname" );
    var_3 = _ID42237::_ID3293( var_3, var_2 );

    foreach ( var_5 in var_3 )
        var_5 hide();

    level.sunshadowworldheight = getdvar( "sm_sunShadowWorldHeight" );
    setsaveddvar( "sm_sunShadowWorldHeight", "900" );
    var_7 = getentarray( "keep_door", "script_noteworthy" );

    foreach ( var_9 in var_7 )
        var_9 _meth_848a( var_9.origin );

    level.tanksquishdamageimmunity = "MOD_EXPLOSIVE";
}

_ID45896()
{
    self endon( "death" );
    var_0 = getent( "market_mantle", "targetname" );
    var_1 = 110;
    var_2 = 60;

    for (;;)
    {
        var_0 waittill( "trigger" );

        for (;;)
        {
            var_3 = abs( angleclamp180( self.angles[1] - var_1 ) ) < var_2;

            if ( self istouching( var_0 ) && var_3 && level.player getstance() == "stand" )
            {
                setsaveddvar( "hud_forceMantleHint", var_3 );
                self _meth_830f( 0 );
                self allowjump( 0 );

                if ( self _meth_85a3() && self jumpbuttonpressed() && !self _meth_83c0() )
                    break;
            }
            else
            {
                setsaveddvar( "hud_forceMantleHint", 0 );
                self _meth_830f( 1 );
                self allowjump( 1 );
            }

            waittillframeend;
        }

        setsaveddvar( "hud_forceMantleHint", 0 );
        self allowjump( 1 );
        self disableweapons( 1 );
        level.player playsound( "scn_favela_escape_rooftop_mantle_player" );
        self setmovespeedscale( 0 );
        self _meth_830f( 0 );
        self allowcrouch( 0 );
        self allowprone( 0 );
        var_4 = 10000;

        while ( length2dsquared( level.player getvelocity() ) > var_4 )
            waittillframeend;

        _ID42407::_ID49392( "rooftop_mantle", undefined, 0, 0.5, 1, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
        self setmovespeedscale( 1 );
        self _meth_830f( 1 );
        self allowcrouch( 1 );
        self allowprone( 1 );
        self enableweapons();
        waittillframeend;
    }
}

_ID52043()
{
    level._ID43594 = [];
    var_0 = getentarray( "destructible_toy", "targetname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( issubstr( var_3._ID279, "toy_chicken" ) )
            var_1[var_1.size] = var_3;
    }

    _ID42237::_ID3350( var_1, ::_ID43200 );
}

_ID43200()
{
    self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8  );

    if ( !isplayernumber( var_1 ) )
        return;

    level._ID43594[level._ID43594.size] = gettime();

    if ( level._ID43594.size < 7 )
        return;

    var_9 = level._ID43594[level._ID43594.size - 7];
    var_10 = level._ID43594[level._ID43594.size - 1];

    if ( var_10 - var_9 > 10000 )
        return;

    _ID42407::_ID16864( "COLONEL_SANDERSON" );
}

_ID49233()
{
    precacheitem( "uzi" );
    precacheitem( "smoke_grenade_american" );
    precacheitem( "rpg_straight" );
    precacheitem( "rpg_straight_short_life" );
    precacheitem( "freerunner" );
    precacheitem( "ak47_drone_sound" );
    precacheitem( "uzi_drone_sound" );
    precacheitem( "glock_drone_sound" );
    precacheitem( "fal_drone_sound" );
    precacheshellshock( "favela_escape_player_recovery" );
    precachestring( &"FAVELA_ESCAPE_SOLORUN_KEEP_MOVING" );
    precachestring( &"FAVELA_ESCAPE_HINT_SPRINT" );
    precachestring( &"FAVELA_ESCAPE_HINT_SPRINT_PC" );
    precachestring( &"FAVELA_ESCAPE_HINT_SPRINT_PC_ALT" );
    precachestring( &"FAVELA_ESCAPE_CHOPPER_TIMER" );
    precachestring( &"FAVELA_ESCAPE_CHOPPER_TIMER_EXPIRED" );
    precachestring( &"FAVELA_ESCAPE_DEADQUOTE_FAILED_CHOPPER_JUMP" );
    precachemodel( "hat_militia_bb_blk" );
}

_ID19719()
{
    _ID42237::_ID14400( "friends_setup" );
    _ID42237::_ID14400( "introscreen_start_dialogue" );
    _ID42237::_ID14400( "pickup2_spawned" );
    _ID42237::_ID14400( "radiotower_runpath_dialogue_done" );
    _ID42237::_ID14400( "runpath_resume_dialogue" );
    _ID42237::_ID14400( "radiotower_start" );
    _ID42237::_ID14400( "radiotower_vehicles_start" );
    _ID42237::_ID14400( "radiotower_escape_technical_1_arrival" );
    _ID42237::_ID14400( "radiotower_escape_technical_2_arrival" );
    _ID42237::_ID14400( "radiotower_vehicle1_donut_done" );
    _ID42237::_ID14400( "radiotower_enemies_retreat" );
    _ID42237::_ID14400( "radiotower_exit" );
    _ID42237::_ID14400( "start_truck_break" );
    _ID42237::_ID14400( "hind_turret_shutdown" );
    _ID42237::_ID14400( "hind_fire" );
    _ID42237::_ID14400( "hind_reveal_rpg_dodge" );
    _ID42237::_ID14400( "hind_reveal_dodgestop" );
    _ID42237::_ID14400( "hind_reveal_bugout" );
    _ID42237::_ID14400( "market_introdialogue_done" );
    _ID42237::_ID14400( "market_chopper_spawned" );
    _ID42237::_ID14400( "market_evac_chopper_spawned" );
    _ID42237::_ID14400( "market_evac_chopper_bugout" );
    _ID42237::_ID14400( "market_evac_player_near_soccerfield" );
    _ID42237::_ID14400( "market_evac_chopper_incoming" );
    _ID42237::_ID14400( "market_evac_ambush_start" );
    _ID42237::_ID14400( "market_evac_enemies_depleted" );
    _ID42237::_ID14400( "market_evac_chopper_leaves_scene" );
    _ID42237::_ID14400( "market_evac_follow_sarge_climb" );
    _ID42237::_ID14400( "market_evac_soap_climbed_up" );
    _ID42237::_ID14400( "market_evac_player_mantled" );
    _ID42237::_ID14400( "market_evac_player_on_roof" );
    _ID42237::_ID14400( "roofrun_done" );
    _ID42237::_ID14400( "roofrun_sarge_bigjumped" );
    _ID42237::_ID14400( "roofrun_player_bigjump_start" );
    _ID42237::_ID14400( "player_jump_watcher_stop" );
    _ID42237::_ID14400( "player_fell_normally" );
    _ID42237::_ID14400( "bigjump_sargeplayer_interact_start" );
    _ID42237::_ID14400( "player_bigjump_done" );
    _ID42237::_ID14400( "player_recovery_blackscreen" );
    _ID42237::_ID14400( "player_recovery_done" );
    _ID42237::_ID14400( "solorun_objective_display" );
    _ID42237::_ID14400( "solorun_start" );
    _ID42237::_ID14400( "solorun_mob_start_shooting" );
    _ID42237::_ID14400( "solorun_player_at_balcony" );
    _ID42237::_ID14400( "solorun_player_progression_stalled" );
    _ID42237::_ID14400( "solorun_timer_start" );
    _ID42237::_ID14400( "timer_expired" );
    _ID42237::_ID14400( "chopperjump_player_jump" );
    _ID42237::_ID14400( "solorun_player_boarded_chopper" );
    _ID42237::_ID14400( "level_faded_to_black" );
    _ID42237::_ID14400( "runpath_dialogue_continue" );
    _ID42237::_ID14400( "no_wobble_roof" );
    _ID42237::_ID14400( "market_respawn_trigger" );
    _ID42237::_ID14400( "portalgroup1" );
    _ID42237::_ID14400( "portalgroup2" );
    _ID42237::_ID14400( "portalgroup2_farside" );
    _ID42237::_ID14400( "portalgroup3_facade" );
    _ID42237::_ID14400( "portalgroup3" );
    _ID42237::_ID14400( "portalgroup4" );
    _ID42237::_ID14400( "portalgroup5" );
    _ID42237::_ID14400( "portalgroup5_soccerfield" );
    _ID42237::_ID14400( "portalgroup6" );
    _ID42237::_ID14400( "portalgroup7" );
    _ID42237::_ID14400( "portalgroup_sidebuildings1" );
    _ID42237::_ID14400( "portalgroup_sidebuildings2" );
    _ID42237::_ID14400( "portalgroup_vistaEast" );
}

_ID49395()
{
    level._ID51248 = [];
    level._ID51248[0] = "weapon_ak47_tactical_clip";
    level._ID51248[1] = "weapon_rpd_clip";
    level._ID51248[2] = "weapon_m16_clip";
    level._ID51248[3] = "weapon_skorpion_clip";
    level._ID51248[4] = "weapon_saw_clip";
}

_ID46177()
{
    level._ID49240 = getentarray( "sbmodel_market_evac_helperclip", "targetname" );

    foreach ( var_1 in level._ID49240 )
        var_1 connectpaths();

    badplace_cylinder( "street_uphill_alley", -1, ( -388, 524, 1016 ), 90, 128, "allies" );
}

_ID52140()
{
    var_0 = getentarray( "starting_allies", "script_noteworthy" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2.targetname ) )
        {
            if ( var_2.targetname == "sarge" )
            {
                var_2._ID3189 = "sarge";
                var_2._ID52287 = 1;
                level._ID47826 = var_2;
            }
            else if ( var_2.targetname == "hero1" )
            {
                var_2._ID3189 = "hero1";
                var_2._ID52287 = 1;
                level._ID51527 = var_2;
            }
        }

        if ( isdefined( var_2._ID52287 ) )
            var_2 thread _ID42407::_ID22746();
        else
            var_2 thread _ID42407::_ID29701();

        var_2 maps\favela_escape_code::_ID49104( level._ID49010 );
        var_2 maps\favela_escape_code::_ID52666( 1 );
        var_2 maps\favela_escape_code::_ID53025();
        var_2 maps\favela_escape_code::_ID47730();
    }

    _ID42407::_ID1892( "allies", maps\favela_escape_code::_ID52666, 1 );
    _ID42237::_ID14402( "friends_setup" );
}

_ID49739()
{
    _ID42407::_ID1892( "axis", maps\favela_escape_code::_ID52666, 1 );
    var_0 = getentarray( "delete_at_path_end", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\favela_escape_code::_ID10240 );
    var_1 = getentarray( "ignore_til_pathend_or_damage", "script_noteworthy" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, maps\favela_escape_code::_ID50353 );
    var_2 = getentarray( "ignore_and_delete_at_path_end", "script_noteworthy" );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, maps\favela_escape_code::_ID51433 );
    var_3 = getentarray( "playerseek_at_path_end", "script_noteworthy" );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, maps\favela_escape_code::_ID49916 );
    var_4 = getentarray( "window_smash_stop_inside", "script_noteworthy" );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, maps\favela_escape_code::_ID43131 );
    var_5 = getentarray( "chaotic_above_shooter", "script_noteworthy" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, maps\favela_escape_code::_ID49951 );
    var_6 = getentarray( "solorun_chaser_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, maps\favela_escape_code::_ID43280 );
    var_7 = getentarray( "dont_shoot_player_in_back", "script_noteworthy" );
    _ID42237::_ID3350( var_7, _ID42407::_ID1947, maps\favela_escape_code::_ID51747 );
    var_8 = getent( "spawner_vista2_endhouse", "script_noteworthy" );
    var_8 thread _ID42407::_ID1947( maps\favela_escape_code::_ID47626 );
    var_9 = getentarray( "solorun_roofrunner", "script_noteworthy" );
    _ID42237::_ID3350( var_9, _ID42407::_ID1947, maps\favela_escape_code::_ID51747 );
    _ID42237::_ID3350( var_9, _ID42407::_ID1947, maps\favela_escape_code::_ID10240 );
}

_ID33511()
{
    var_0 = getentarray( "solorun_chopper", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\favela_escape_code::_ID49331 );
}

_ID54366()
{
    _ID42237::_ID14413( "introscreen_complete" );
    var_0 = 0;
    var_1 = getdvar( "objectiveFadeTooFar" );

    if ( isdefined( level._ID47826 ) )
    {
        _ID42237::_ID14413( "runpath_dialogue_continue" );
        objective_add( 1, "current", &"FAVELA_ESCAPE_OBJ_1ST_LZ" );
        _func_194( 1, level._ID47826 );
        _ID42237::_ID14413( "radiotower_runpath_dialogue_done" );
        objective_state( 1, "active" );
        objective_add( 2, "current", &"FAVELA_ESCAPE_OBJ_SUPPORT_SQUAD" );
        objective_position( 2, 1 );
        _func_194( 2, level._ID47826 );
        objective_setpointertextoverride( 2, &"FAVELA_ESCAPE_OBJ_FOLLOW_MARKER" );
        setsaveddvar( "objectiveFadeTooFar", 5 );
        var_0 = 1;
    }

    _ID42237::_ID14413( "market_introdialogue_done" );

    if ( var_0 )
    {
        objective_state( 2, "active" );
        objective_state_nomessage( 2, "done" );
        objective_add( 3, "current", &"FAVELA_ESCAPE_OBJ_THROUGH_MARKET" );
        objective_position( 3, 1 );
        objective_current( 3, ( -3154, -1875, 1096 ) );
        objective_setpointertextoverride( 3, "" );
        setsaveddvar( "objectiveFadeTooFar", var_1 );
    }

    _ID42237::_ID14413( "market_evac_chopper_incoming" );
    wait 4;
    _ID42407::_ID25327( 1 );
    objective_state_nomessage( 3, "done" );
    wait 5;
    objective_add( 4, "current", &"FAVELA_ESCAPE_OBJ_2ND_LZ", ( -3937, -1051, 1241 ) );

    if ( isdefined( level._ID7499 ) )
        _func_194( 4, level._ID7499 );

    thread _ID53904( 4 );
    _ID42237::_ID14413( "player_bigjump_done" );
    _ID42407::_ID25327( 4, 1 );
    objective_state_nomessage( 4, "active" );
    _ID42237::_ID14413( "solorun_objective_display" );
    objective_add( 5, "current", &"FAVELA_ESCAPE_OBJ_GET_BACK_TO_ROOF", ( -5924, -870, 816 ) );
    objective_position( 5, 1 );
    thread _ID45457( 5 );
    _ID42237::_ID14413( "solorun_player_at_balcony" );
    objective_state( 5, "active" );
    _ID42407::_ID25327( 5, 1 );
    objective_add( 6, "current", &"FAVELA_ESCAPE_OBJ_GET_TO_CHOPPER", ( -8354, 2045, 704 ) );
    objective_position( 6, 1 );
    thread _ID46183( 6 );
    _ID42237::_ID14413( "solorun_player_boarded_chopper" );
    wait 1.5;
    _ID42407::_ID25327( 6 );
    objective_state_nomessage( 4, "done" );
}

_ID47804()
{
    _ID42407::_ID38928( "solorun_houses_obj_update_0", "script_noteworthy" );
    setsaveddvar( "compass", 0 );
    _ID42237::_ID14413( "solorun_player_at_balcony" );
    setsaveddvar( "compass", 1 );
}

_ID53904( var_0 )
{
    level endon( "solorun_start" );
    _ID42237::_ID14413( "market_evac_chopper_leaves_scene" );
    _func_194( var_0, level._ID47826 );
    _ID42237::_ID14413( "roofrun_player_at_start_loc" );

    while ( isdefined( level._ID7499 ) )
        wait 0.05;

    for ( var_1 = undefined; !isdefined( var_1 ); var_1 = _ID42407::_ID16053( "veh_chopper_roofrun", "targetname" ) )
        wait 0.05;

    _func_194( var_0, var_1 );
    _ID42237::_ID14413( "player_jump_watcher_stop" );
    objective_current( var_0, ( 0, 0, 0 ) );
    _ID42237::_ID14413( "player_recovery_blackscreen" );
    objective_current( var_0, ( -6370.5, -944, 1044 ) );
}

_ID45457( var_0 )
{
    level endon( "solorun_player_at_balcony" );
    _ID42407::_ID38928( "solorun_houses_obj_update_0", "script_noteworthy" );
    objective_current( var_0, ( -4756, -384, 808 ) );
    _ID42407::_ID38928( "solorun_houses_obj_update_2", "script_noteworthy" );
    objective_current( var_0, ( -4760, 880, 804 ) );
    _ID42407::_ID38928( "solorun_houses_obj_update_3", "script_noteworthy" );
    objective_current( var_0, ( -5112, 864, 944 ) );
}

_ID46183( var_0 )
{
    level endon( "solorun_player_boarded_chopper" );
    _ID42407::_ID38928( "objective_breadcrumb_update_1", "script_noteworthy" );
    objective_current( var_0, ( -8442, 1409, 416 ) );
    _ID42407::_ID38928( "objective_breadcrumb_update_2", "script_noteworthy" );
    objective_current( var_0, ( -9108, 1522, 353 ) );
    _ID42407::_ID38928( "objective_breadcrumb_update_3", "script_noteworthy" );
    objective_current( var_0, ( -9086, 2224, -152 ) );
    _ID42407::_ID38929( "trig_end_glass_break" );
    _func_194( var_0, level._ID51492, ( 0, 0, -85 ) );
}

_ID47668()
{
    _ID42407::_ID10126( ::_ID46152 );
    _ID42407::_ID1951( "intro", ::_ID46152, "map start" );
    _ID42407::_ID1951( "street", ::_ID36017, "street after radiotower" );
    _ID42407::_ID1951( "street_mid", ::_ID45108, "street after first chopper reveal" );
    _ID42407::_ID1951( "street_vista2", ::_ID53863, "street second vista area" );
    _ID42407::_ID1951( "market", ::_ID43390, "market start" );
    _ID42407::_ID1951( "market_evac", ::_ID50331, "market evac goes wrong" );
    _ID42407::_ID1951( "market_evac_escape", ::_ID54047, "friendlies climb up to rooftops" );
    _ID42407::_ID1951( "roofrun", ::_ID45106, "roofrun start" );
    _ID42407::_ID1951( "roofrun_bigjump", ::_ID44603, "roofrun player jump" );
    _ID42407::_ID1951( "solorun", ::_ID49602, "player solo run" );
    _ID42407::_ID1951( "solorun_rooftops", ::_ID50179, "player solo run rooftops" );
    _ID42407::_ID1951( "solorun_chopper", ::_ID45904, "player jump to chopper" );
    _ID42407::_ID1951( "test", ::_ID45900, "[dev test]" );
}

_ID45900()
{
    _ID42237::_ID14402( "portalgroup1" );
    _ID42237::_ID14402( "portalgroup2" );
    _ID42237::_ID14402( "portalgroup2_farside" );
    _ID42237::_ID14402( "portalgroup3" );
    _ID42237::_ID14402( "portalgroup3_facade" );
    level.player.ignoreme = 1;
    level.player maps\favela_escape_code::_ID45573( ( 4892, 292, 1134 ), ( 0, 180, 0 ) );
    thread maps\favela_escape_code::_ID53414();
}

_ID46152()
{
    _ID42475::_ID34575( "start_intro_checkpoint" );
    _ID42237::_ID14402( "portalgroup1" );
    _ID42237::_ID14402( "portalgroup2" );
    _ID42237::_ID14402( "portalgroup2_farside" );
    _ID42237::_ID14402( "portalgroup3" );
    _ID42237::_ID14402( "portalgroup3_facade" );
    maps\favela_escape_lighting::_ID50564( "favela_escape" );
    level thread _ID49531();
}

_ID36017()
{
    _ID42475::_ID34575( "start_street_checkpoint" );
    _ID42237::_ID14402( "portalgroup1" );
    _ID42237::_ID14402( "portalgroup2" );
    _ID42237::_ID14402( "portalgroup2_farside" );
    _ID42237::_ID14402( "portalgroup3" );
    _ID42237::_ID14402( "portalgroup3_facade" );
    _ID42237::_ID14402( "radiotower_start" );
    _ID42237::_ID14402( "radiotower_enemies_retreat" );
    _ID42237::_ID14402( "radiotower_escape_technical_2_arrival" );
    maps\favela_escape_lighting::_ID50564( "favela_escape_radiotower" );
    thread maps\favela_escape_code::_ID53766( 0 );
    level._ID47826 _ID42407::_ID32315( "b" );
    maps\favela_escape_code::_ID44127( "struct_start_street" );
    maps\favela_escape_code::_ID44030( "trig_script_color_allies_b5" );
    thread _ID52327();
    thread _ID42407::_ID4422( "street_start" );
}

_ID45108()
{
    _ID42475::_ID34575( "start_street_mid_checkpoint" );
    _ID42237::_ID14402( "portalgroup3_facade" );
    _ID42237::_ID14402( "portalgroup3" );
    _ID42237::_ID14402( "portalgroup_sidebuildings1" );
    _ID42237::_ID14402( "portalgroup_sidebuildings2" );
    _ID42237::_ID14402( "portalgroup_vistaEast" );
    _ID42237::_ID14402( "hide_objects_in_market_flag" );
    _ID42237::_ID14402( "cars_to_hide_in_market" );
    maps\favela_escape_lighting::_ID50564( "favela_escape_street" );
    _ID42237::_ID14402( "radiotower_start" );
    level._ID47826 _ID42407::_ID32315( "b" );
    maps\favela_escape_code::_ID44127( "struct_start_street_mid" );
    thread _ID52327();
}

_ID53863()
{
    _ID42475::_ID34575( "start_street_vista2_checkpoint" );
    _ID42237::_ID14402( "portalgroup3_facade" );
    _ID42237::_ID14402( "portalgroup3" );
    _ID42237::_ID14402( "portalgroup_sidebuildings1" );
    _ID42237::_ID14402( "portalgroup_sidebuildings2" );
    _ID42237::_ID14402( "portalgroup_vistaEast" );
    _ID42237::_ID14402( "hide_objects_in_market_flag" );
    _ID42237::_ID14402( "cars_to_hide_in_market" );
    _ID42237::_ID14402( "radiotower_start" );
    maps\favela_escape_lighting::_ID50564( "favela_escape_street" );
    level._ID47826 _ID42407::_ID32315( "b" );
    maps\favela_escape_code::_ID44127( "struct_start_street_vista2" );
    maps\favela_escape_code::_ID44030( "uphill_advance_3" );
    thread _ID52327( "vista2" );
}

_ID43390()
{
    _ID42475::_ID34575( "start_market_checkpoint" );
    _ID42237::_ID14402( "portalgroup3" );
    _ID42237::_ID14402( "portalgroup4" );
    _ID42237::_ID14402( "portalgroup_sidebuildings1" );
    _ID42237::_ID14402( "portalgroup_sidebuildings2" );
    _ID42237::_ID14402( "hide_objects_in_market_flag" );
    _ID42237::_ID14402( "cars_to_hide_in_market" );
    _ID42237::_ID14402( "radiotower_start" );
    level._ID47826 _ID42407::_ID32315( "b" );
    maps\favela_escape_lighting::_ID50564( "favela_escape_street" );
    maps\favela_escape_code::_ID44127( "struct_start_market" );
    maps\favela_escape_code::_ID44030( "trig_spawn_market_start" );
    maps\favela_escape_code::_ID44030( "uphill_advance_6" );
    thread _ID48729( "market" );
    thread _ID45153();
    _ID42237::_ID38863( "market_advance_1", "targetname" );
    wait 10;
    _ID42237::_ID38865( "market_advance_1", "targetname" );
    maps\favela_escape_code::_ID45186( "market_advance_1" );
}

_ID50331()
{
    _ID42475::_ID34575( "start_market_evac_checkpoint" );
    _ID42237::_ID14402( "portalgroup4" );
    _ID42237::_ID14402( "portalgroup5" );
    _ID42237::_ID14402( "portalgroup_sidebuildings1" );
    _ID42237::_ID14402( "portalgroup_sidebuildings2" );
    _ID42237::_ID14402( "radiotower_start" );
    _ID42237::_ID14402( "market_introdialogue_done" );
    maps\favela_escape_lighting::_ID50564( "favela_escape_market" );
    maps\favela_escape_code::_ID51461( 1 );
    var_0 = maps\favela_escape_code::_ID46434();
    var_1 = var_0[0];
    level._ID47826 _ID42407::_ID32315( "b" );
    level._ID51527 _ID42407::_ID32315( "b" );
    var_1 _ID42407::_ID10959();
    var_1 notify( "death" );
    var_1 delete();
    _ID42237::_ID14402( "market_advance_4" );
    thread _ID44332();
    maps\favela_escape_code::_ID44127( "struct_start_market_evac" );
    thread _ID43714();
}

_ID54047()
{
    _ID42475::_ID34575( "start_market_evac_escape_checkpoint" );
    _ID42237::_ID14402( "portalgroup4" );
    _ID42237::_ID14402( "portalgroup5" );
    _ID42237::_ID14402( "portalgroup5_soccerfield" );
    _ID42237::_ID14402( "portalgroup_sidebuildings1" );
    _ID42237::_ID14402( "portalgroup_sidebuildings2" );
    _ID42237::_ID14402( "radiotower_start" );
    maps\favela_escape_lighting::_ID50564( "favela_escape_soccerfield" );
    maps\favela_escape_code::_ID51461( 1 );
    var_0 = maps\favela_escape_code::_ID46434();
    var_1 = var_0[0];
    var_2 = _ID42237::_ID16638( "struct_start_market_evac_escape_player", "targetname" );
    level.player maps\favela_escape_code::_ID45573( var_2.origin, var_2.angles );
    var_3 = getnode( "node_sarge_preclimb", "targetname" );
    var_4 = getnode( "node_hero1_preclimb", "targetname" );
    var_5 = getnode( "node_redshirt_preclimb", "targetname" );
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID47402, 128 );
    var_1 = maps\favela_escape_code::_ID47511();
    level._ID47826 forceteleport( var_3.origin, var_3.angles );
    level._ID51527 forceteleport( var_4.origin, var_4.angles );
    var_1 forceteleport( var_5.origin, var_5.angles );
    level._ID47826 setgoalnode( var_3 );
    level._ID51527 setgoalnode( var_4 );
    var_1 setgoalnode( var_5 );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13024, "climbing_ok" );
    waitframe;
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13025, "climbing_ok" );
    thread maps\favela_escape_code::_ID54728();
    thread _ID50923();
}

_ID45106()
{
    _ID42475::_ID34575( "start_roofrun_checkpoint" );
    _ID42237::_ID14402( "portalgroup4" );
    _ID42237::_ID14402( "portalgroup5" );
    _ID42237::_ID14402( "portalgroup5_soccerfield" );
    _ID42237::_ID14402( "portalgroup6" );
    _ID42237::_ID14402( "portalgroup_sidebuildings2" );
    _ID42237::_ID14402( "radiotower_start" );
    maps\favela_escape_lighting::_ID50564( "favela_escape_rooftops" );
    maps\favela_escape_code::_ID51461( 1 );
    var_0 = maps\favela_escape_code::_ID46434();
    var_1 = var_0[0];
    var_1 thread _ID42407::_ID22746();
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID7867 );
    var_2 = getnode( "node_roofrun_sarge_waitforplayer", "targetname" );
    var_3 = getnode( "node_roofrun_hero1_waitforplayer", "targetname" );
    var_4 = getnode( "node_roofrun_redshirt_waitforplayer", "targetname" );
    level._ID47826 thread maps\favela_escape_code::_ID45573( var_2.origin, var_2.angles );
    level._ID51527 thread maps\favela_escape_code::_ID45573( var_3.origin, var_3.angles );
    var_1 thread maps\favela_escape_code::_ID45573( var_4.origin, var_4.angles );
    level.player maps\favela_escape_code::_ID45573( ( -3552, -992, 1194 ), ( 0, 180, 0 ) );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13024, "roofrun_start" );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13024, "climbing_ok" );
    waitframe;
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13025, "roofrun_start" );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13025, "climbing_ok" );
    waitframe;
    thread maps\favela_escape_code::_ID54728();
    thread _ID50491();
}

_ID44603()
{
    _ID42475::_ID34575( "start_roofrun_bigjump_checkpoint" );
    _ID42237::_ID14402( "portalgroup4" );
    _ID42237::_ID14402( "portalgroup5_soccerfield" );
    _ID42237::_ID14402( "portalgroup6" );
    _ID42237::_ID14402( "portalgroup7" );
    _ID42237::_ID14402( "radiotower_start" );
    _ID42237::_ID14402( "market_introdialogue_done" );
    _ID42237::_ID14402( "market_evac_chopper_incoming" );
    _ID42237::_ID14402( "market_evac_player_on_roof" );
    thread maps\favela_escape_code::early_fall_kill_trig_remove();
    maps\favela_escape_lighting::_ID50564( "favela_escape_rooftops" );
    maps\favela_escape_code::_ID51461( 1 );
    var_0 = maps\favela_escape_code::_ID46434();
    var_1 = var_0[0];
    level._ID51544 = 0;
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13024, "roofrun_start" );
    var_2 = _ID42237::_ID16638( "roofrun_sarge_waitforplayer", "targetname" );
    level._ID47826 maps\favela_escape_code::_ID45573( var_2.origin, var_2.angles );
    var_3 = _ID42237::_ID16638( "struct_start_roofrun_player_jump_player", "targetname" );
    level.player maps\favela_escape_code::_ID45573( var_3.origin, var_3.angles );
    wait 0.05;
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13025, "roofrun_start" );
    waitframe;
    level._ID47826 thread maps\favela_escape_code::_ID46474( 1 );
    var_1 thread maps\favela_escape_code::_ID43901( 1 );
    level._ID51527 thread maps\favela_escape_code::_ID52461( 1 );
    thread maps\favela_escape_code::_ID50416();
    _ID42237::_ID14413( "player_recovery_done" );
    thread _ID49001();
}

_ID49602()
{
    _ID42475::_ID34575( "start_solorun_checkpoint" );
    _ID42237::_ID14402( "portalgroup4" );
    _ID42237::_ID14402( "portalgroup6" );
    _ID42237::_ID14402( "portalgroup7" );
    _ID42237::_ID14402( "solorun_objective_display" );
    _ID42237::_ID14402( "radiotower_start" );
    _ID42237::_ID14402( "market_introdialogue_done" );
    _ID42237::_ID14402( "market_evac_chopper_incoming" );
    _ID42237::_ID14402( "market_evac_player_on_roof" );
    thread maps\favela_escape_code::early_fall_kill_trig_remove();
    maps\favela_escape_lighting::_ID50564( "favela_escape" );
    maps\favela_escape_code::_ID51958();
    level.player takeallweapons();
    var_0 = _ID42237::_ID16638( "struct_solorun_beginning_start_player", "targetname" );
    level.player thread maps\favela_escape_code::_ID45573( var_0.origin, var_0.angles );
    thread maps\favela_escape_code::_ID52086();
    thread _ID49001();
}

_ID50179()
{
    _ID42475::_ID34575( "start_solorun_rooftops_checkpoint" );
    _ID42237::_ID14402( "portalgroup4" );
    _ID42237::_ID14402( "portalgroup6" );
    _ID42237::_ID14402( "portalgroup7" );
    _ID42237::_ID14402( "solorun_objective_display" );
    _ID42237::_ID14402( "radiotower_start" );
    _ID42237::_ID14402( "market_introdialogue_done" );
    _ID42237::_ID14402( "market_evac_chopper_incoming" );
    _ID42237::_ID14402( "market_evac_player_on_roof" );
    _ID42237::_ID14402( "solorun_start" );
    maps\favela_escape_lighting::_ID50564( "favela_escape_solorun_buildings" );
    maps\favela_escape_code::_ID51958();
    level.player takeallweapons();
    var_0 = _ID42237::_ID16638( "struct_solorun_rooftops_start_player", "targetname" );
    level.player maps\favela_escape_code::_ID45573( var_0.origin, var_0.angles );
    thread _ID49001( "rooftops" );
}

_ID45904()
{
    _ID42475::_ID34575( "start_solorun_chopper_checkpoint" );
    _ID42237::_ID14402( "portalgroup7" );
    _ID42237::_ID14402( "radiotower_start" );
    _ID42237::_ID14402( "market_evac_player_on_roof" );
    _ID42237::_ID14402( "solorun_player_at_balcony" );
    maps\favela_escape_lighting::_ID50564( "favela_escape_solorun_nearend" );
    maps\favela_escape_code::_ID51958();
    level.player takeallweapons();
    var_0 = _ID42237::_ID16638( "struct_solorun_chopper_start_player", "targetname" );
    level.player maps\favela_escape_code::_ID45573( var_0.origin, var_0.angles );
    thread _ID49001( "chopperjump" );
}

_ID49531()
{
    thread _ID49102();
    thread maps\favela_escape_code::_ID54569();
    thread maps\favela_escape_code::_ID52490();
    thread maps\favela_escape_code::_ID48509();
    thread maps\favela_escape_code::_ID51235();
    thread maps\favela_escape_code::_ID52540();
    thread maps\favela_escape_code::_ID44513();
    thread maps\favela_escape_code::_ID52719();
    thread maps\favela_escape_code::_ID50644();
    thread maps\favela_escape_code::_ID49152();
    thread maps\favela_escape_code::destroyed_car_no_burn();
    _ID42237::_ID14402( "portalgroup1" );
    _ID42237::_ID14402( "portalgroup2" );
    _ID42237::_ID14402( "radiotower_start" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( maps\favela_escape_code::_ID46434(), _ID42407::_ID22746 );
    thread maps\favela_escape_code::_ID47784();

    if ( getdvar( "introscreen" ) != "0" )
        level waittill( "introscreen_complete" );
    else
        _ID42237::_ID14402( "introscreen_start_dialogue" );

    _ID42237::_ID3350( getentarray( "animated_chicken", "targetname" ), maps\favela_escape_code::_ID43233 );
    thread maps\favela_escape_code::_ID52127();
    _ID42237::_ID14413( "player_start_moving" ) _ID42407::_ID38929( "trig_radiotower_brushpath_end" );
    _ID42237::_ID3350( maps\favela_escape_code::_ID46434(), maps\favela_escape_code::_ID43804 );
    thread maps\favela_escape_code::_ID43739();
    _ID42407::_ID10226( 0.75, maps\favela_escape_code::_ID46559 );
    thread maps\favela_escape_code::_ID52816();
    _ID42407::_ID38929( "trig_radiotower_exit" );
    _ID42237::_ID14402( "radiotower_exit" );
    thread _ID42407::_ID4422( "street_start" );
    thread maps\favela_escape_code::_ID43380();
    thread _ID52327();
}
#using_animtree("generic_human");

_ID49102()
{
    level endon( "radiotower_exit" );
    level endon( "cleaning_up_rojas" );
    var_0 = getent( "intro_anim_node", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_1._ID31152 = undefined;
    var_2 = var_1 _ID42407::_ID35014( 1 );
    level.rojas = var_2;
    var_3 = _ID42407::_ID35028( "rojas_restraints" );
    var_4 = "intro_rojas_idle";
    var_5 = "intro_rojas_death";
    var_0 thread _ID42259::_ID3025( var_2, var_4, "stop_idle_rojas" );
    var_0 thread _ID42259::_ID3044( var_3, "idle" );
    level thread _ID50490( var_2, var_0, var_3 );
    var_2.name = "Rojas";
    var_2.grenadeammo = 0;
    var_2.dropweapon = 0;
    var_2 _ID42407::_ID32226( 0 );
    var_2.cheat._ID54456 = 1;
    var_2.allowdeath = 1;
    var_2._ID9813 = %h2_favela_escape_crucified_death;
    var_2._ID24924 = 1;
    var_2._ID1190 = 1;
    var_2._ID3189 = "generic";
    var_2.health = 5000;
    var_2 _ID42407::_ID10949();
    var_2 _ID42407::_ID22746( 1 );
    var_2 _ID42407::_ID2286();
    var_2._ID52049 = 1;
    var_2 _ID42407::_ID1868( maps\favela_escape_code::_ID46526 );

    for (;;)
    {
        var_2 waittill( "damage",  var_6  );

        if ( var_6 <= 1 )
            continue;

        break;
    }

    var_0 notify( "stop_idle_rojas" );
    thread maps\favela_escape_aud::crucified_rojas_death();
    level.player thread _ID42279::_ID39696( 0, var_2 );
    level.player thread _ID42279::_ID39697( var_2 );
    var_2.team = "neutral";
    var_2.name = undefined;
    var_2 _ID42407::_ID29503( maps\favela_escape_code::_ID46526 );
    var_0 _ID42259::_ID3111( var_2, var_5 );
    var_0 _ID42259::_ID3038( var_2, var_5 );
}

_ID50490( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( "radiotower_exit" );
    level notify( "cleaning_up_rojas" );

    if ( isdefined( var_0 ) )
        var_0 _ID42407::_ID3136();

    var_1 _ID42407::_ID3136();
    var_2 _ID42407::_ID3136();
    wait 0.05;

    if ( isdefined( var_0 ) )
        var_0 delete();

    var_1 delete();
    var_2 delete();
}

_ID52327( var_0 )
{
    thread _ID48729( var_0 );
    thread maps\favela_escape_code::_ID46723();
    thread maps\favela_escape_code::_ID43553();
    thread maps\favela_escape_code::_ID46619();
    thread maps\favela_escape_code::_ID47074();
    thread maps\favela_escape_code::_ID53907();
    thread maps\favela_escape_code::_ID49960();
    thread maps\favela_escape_code::_ID43984();
    thread maps\favela_escape_code::_ID50759();
    thread maps\favela_escape_code::_ID54435();
    thread maps\favela_escape_code::_ID50921();
    thread _ID45153();
}

_ID48729( var_0 )
{
    var_1 = "street_advance";
    var_2 = 5;
    var_3 = "uphill_advance";
    var_4 = 6;
    var_5 = "market_advance";
    var_6 = 6;

    if ( !isdefined( var_0 ) )
    {
        thread maps\favela_escape_code::_ID52334( var_1, var_2 );
        _ID42237::_ID14413( var_1 + "_" + var_2 );
        thread maps\favela_escape_code::_ID52334( var_3, var_4 );
        _ID42237::_ID14413( var_3 + "_" + var_4 );
        thread maps\favela_escape_code::_ID52334( var_5, var_6 );
        _ID42237::_ID14413( var_5 + "_" + var_6 );
    }
    else
    {
        if ( var_0 == "vista2" )
        {
            thread maps\favela_escape_code::_ID52334( var_3, var_4, 3 );
            _ID42237::_ID14413( var_3 + "_" + var_4 );
            thread maps\favela_escape_code::_ID52334( var_5, var_6 );
            _ID42237::_ID14413( var_5 + "_" + var_6 );
        }

        if ( var_0 == "market" )
        {
            thread maps\favela_escape_code::_ID52334( var_3, var_4, 6 );
            _ID42237::_ID14413( var_3 + "_" + var_4 );
            thread maps\favela_escape_code::_ID52334( var_5, var_6 );
            _ID42237::_ID14413( var_5 + "_" + var_6 );
        }
    }
}

_ID45153()
{
    thread maps\favela_escape_code::_ID47028();
    thread _ID44332();

    foreach ( var_1 in level._ID49912 )
        var_1 maps\favela_escape_code::_ID43557( 1 );

    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID52666, 0 );
    _ID42407::_ID29534( "allies", maps\favela_escape_code::_ID52666 );
    thread maps\favela_escape_code::_ID52360();
    thread maps\favela_escape_code::_ID53495();
    thread maps\favela_escape_code::_ID50918();
    thread _ID43714();
}

_ID44332()
{
    _ID42237::_ID14413( "market_advance_4" );
    var_0 = _ID42411::_ID35195( "vehicle_market_fake_chopper_1" );
    var_0 vehicle_turnengineoff();
    _ID42237::_ID14413( "market_chopper_spawned" );
    wait 1;
    var_0 delete();
    _ID42237::_ID14413( "market_chopper_leaving_scene" );
    wait 5;
    var_0 = _ID42411::_ID35195( "vehicle_market_fake_chopper_2" );
    var_0 vehicle_turnengineoff();
    _ID42237::_ID14413( "market_evac_chopper_spawned" );
    wait 4;
    var_0 delete();
}

_ID43714()
{
    _ID42237::_ID14413( "market_evac_start" );
    thread maps\favela_escape_code::animated_soccer_goals();
    thread maps\favela_escape_code::_ID50205();
    thread maps\favela_escape_code::soccerfield_animated_wires();

    foreach ( var_1 in level._ID49912 )
        var_1 maps\favela_escape_code::_ID43557( 0 );

    level notify( "color_flags_advance_stop" );
    var_3 = _ID42237::_ID16640( "struct_market_evac_friendly_warp", "targetname" );
    _ID42237::_ID14402( "market_respawn_trigger" );

    foreach ( var_6, var_5 in level._ID49912 )
        var_5 thread _ID44511( var_3[var_6] );

    var_7 = maps\favela_escape_code::_ID46434();
    var_8 = undefined;

    if ( !_ID53899( var_7 ) )
    {
        if ( var_7.size )
        {
            foreach ( var_5 in var_7 )
            {
                var_5 maps\favela_escape_code::_ID44439();
                var_5 _ID42407::_ID10871();
                var_10 = [];
                var_10[0] = var_5;
                thread _ID42407::_ID2265( var_10, 1000 );
            }
        }

        var_12 = getent( "market_evac_redshirt_spawner", "targetname" );
        var_5 = var_12 _ID42407::_ID35014();
        var_5 maps\favela_escape_code::_ID53025();
        var_5 maps\favela_escape_code::_ID47730();
        var_8 = var_5;
    }
    else
        var_8 = var_7[0];

    _ID42271::_ID21251();
    var_8 maps\favela_escape_code::_ID45702();
    var_8 _ID42407::_ID32315( "p" );
    _ID42407::_ID27683( 85, 1 );
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID43941, 1.25 );
    _ID42407::_ID4917( "allies" );
    level thread maps\favela_escape_code::_ID51914();
    level thread maps\favela_escape_code::_ID43515();
    level._ID47826 _ID42407::_ID10226( 2, maps\favela_escape_code::_ID10742, "favesc_cmt_therespavelow" );
    thread _ID48811();
    _ID42237::_ID14413( "market_evac_chopper_incoming" );
    _ID42407::_ID4422( "market_evac_chopper_incoming" );
    var_7 = maps\favela_escape_code::_ID46434();

    foreach ( var_5 in var_7 )
        var_5 maps\favela_escape_code::_ID45702();

    _ID42475::_ID34575( "start_evac_fakefire_rpgs" );
    _ID42407::_ID10226( 0.5, maps\favela_escape_code::_ID45996 );
    _ID42407::_ID10226( 4, maps\favela_escape_code::_ID49455 );
    thread maps\favela_escape_code::_ID43528();
    _ID42237::_ID14402( "market_evac_ambush_start" );
    _ID42407::_ID27683( 90, 1 );
    setsaveddvar( "ai_friendlyFireBlockDuration", "0" );
    _ID42237::_ID14413( "market_evac_enemies_depleted" );
    thread _ID50923();
}

_ID44511( var_0 )
{
    if ( distance( self.origin, level.player.origin ) < 800 )
        return;

    if ( self != level._ID47826 && self != level._ID51527 )
    {
        if ( isdefined( self._ID23353 ) )
            return;
    }

    maps\favela_escape_code::_ID45599( var_0 );
}

_ID53899( var_0 )
{
    if ( !var_0.size )
        return 0;

    var_1 = var_0[0];

    if ( !isalive( var_1 ) )
        return 0;

    if ( isdefined( var_1._ID23353 ) )
        return 0;

    return 1;
}

_ID48811()
{
    _ID42237::_ID14413( "market_evac_friendlies_go_outside" );
    _ID42237::_ID3350( level._ID49912, ::_ID47005 );
    var_0 = getnode( "node_sarge_soccerfield_cover", "targetname" );
    var_1 = getnode( "node_hero1_soccerfield_cover", "targetname" );
    var_2 = getnode( "node_redshirt_soccerfield_cover", "targetname" );
    var_3 = maps\favela_escape_code::_ID47511();
    level._ID47826 thread _ID45853( var_0 );
    level._ID51527 thread _ID45853( var_1 );
    var_3 thread _ID45853( var_2 );
    _ID42237::_ID14413( "market_evac_enemies_depleted" );
}

_ID47005()
{
    thread _ID42407::_ID7867();
    thread _ID42407::_ID12492();
    thread maps\favela_escape_code::_ID43103();
    thread maps\favela_escape_code::_ID47402( 256 );
    thread _ID42407::_ID10877();
    thread _ID42407::_ID32294();
    thread _ID42407::_ID26354( 0 );
    thread maps\favela_escape_code::_ID52666( 0 );
}

_ID45853( var_0 )
{
    _ID42407::_ID13024( "climbing_ok" );
    var_1 = maps\favela_escape_code::_ID52328( var_0 );
    var_1 = _ID42237::_ID3321( var_1, var_0 );
    self setgoalnode( var_0 );
    _ID42237::_ID14413( "market_evac_enemies_depleted" );
    thread maps\favela_escape_code::_ID47802();
    thread maps\favela_escape_code::_ID49104( 5.0 );

    foreach ( var_3 in var_1 )
    {
        self setgoalnode( var_3 );
        self waittill( "goal" );
    }

    _ID42407::_ID10926();
    _ID42407::_ID13025( "climbing_ok" );
}

_ID50923()
{
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID43941, 1 );
    _ID42407::_ID27683( 90, 1 );
    thread maps\favela_escape_code::_ID46773();
    level._ID47826 thread maps\favela_escape_code::_ID10742( "favesc_cmt_gettorooftops" );
    _ID42237::_ID14413( "market_evac_friendlies_start_climbing" );
    var_0 = 1148;
    thread maps\favela_escape_code::_ID44491( var_0 );
    thread _ID51951();
    _ID42237::_ID14413( "market_evac_player_on_roof" );
    thread _ID50491();
}

_ID51951()
{
    var_0 = _ID42237::_ID16638( "market_evac_friendlies_climb_animspot", "targetname" );
    var_1 = "favela_escape_rooftop_traverse_L";
    var_2 = "favela_escape_rooftop_traverse_R";
    var_3 = "favela_escape_rooftop_traverse_M";
    var_4 = "favela_escape_rooftop_traverse_M_idle";
    var_5 = "favela_escape_rooftop_traverse_M_idle_2_run";
    var_6 = maps\favela_escape_code::_ID47511();
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13024, "roofrun_start" );
    var_6 maps\favela_escape_code::_ID45702();
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID19365 );
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID47402, 32 );
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID52680, 16 );
    var_7 = getnode( "node_roofrun_hero1_waitforplayer", "targetname" );
    var_8 = getnode( "node_roofrun_redshirt_waitforplayer", "targetname" );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID7867 );
    level._ID43221 = 0;
    level._ID51527 thread _ID49886( var_0, var_1, var_7 );
    var_6 thread _ID49886( var_0, var_2, var_8 );
    level._ID47826 thread _ID45741( var_0, var_3, var_4, var_5 );

    while ( level._ID43221 < level._ID49912.size )
        wait 0.05;

    _ID42237::_ID38863( "sbmodel_market_evac_playerblock", "targetname" );
}

_ID49886( var_0, var_1, var_2 )
{
    self endon( "death" );
    _ID42407::_ID13027( "climbing_ok" );
    var_0 _ID42259::_ID3027( self, var_1 );
    level._ID43221++;
    var_0 _ID42259::_ID3020( self, var_1 );
    self setgoalnode( var_2 );
    wait 0.05;
    _ID42407::_ID13025( "roofrun_start" );
}

_ID45741( var_0, var_1, var_2, var_3 )
{
    _ID42407::_ID13027( "climbing_ok" );
    _ID42237::_ID14402( "market_evac_follow_sarge_climb" );
    var_0 _ID42259::_ID3027( self, var_1 );
    level._ID43221++;
    var_0 _ID42259::_ID3020( self, var_1 );

    if ( _ID52658() )
    {
        _ID45995::_ID48826( "upperbody", level.player, 2000, 90, 90, 30, 30, 1, 0, 10, -70 );
        self setgoalpos( self.origin );
        var_0 thread maps\favela_escape_code::soap_random_idle_anims( self, var_2 );

        while ( _ID52658() )
            wait 0.05;

        _ID45995::_ID45228();
        var_0 notify( "sarge_idle_stop" );
        var_0 _ID42259::_ID3020( self, var_3 );
    }

    var_4 = getnode( "node_roofrun_sarge_waitforplayer", "targetname" );
    self setgoalnode( var_4 );
    wait 0.05;
    _ID42407::_ID13025( "roofrun_start" );
}

_ID52658()
{
    if ( _ID42237::_ID14385( "market_evac_player_mantled" ) )
        return 0;

    var_0 = getent( "trig_market_evac_mantlehelper", "targetname" );

    if ( level.player istouching( var_0 ) )
        return 0;

    return 1;
}

_ID50491()
{
    _ID42407::_ID4422( "roofrun_start" );
    level._ID51544 = 0;
    thread maps\favela_escape_code::_ID48487();
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID14413( "roofrun_player_at_start_loc" );
    thread maps\favela_escape_code::_ID46282( 0, "heli_loop", 10 );
    thread maps\favela_escape_code::early_fall_kill_trig_remove();
    thread maps\favela_escape_code::wibble_helicopter();
    thread _ID48936();
    _ID42407::_ID10226( 3, maps\favela_escape_code::_ID52646 );
    _ID42407::_ID27683( 90, 1 );
    setsaveddvar( "player_sprintUnlimited", "1" );
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID43645, 1.135 );

    foreach ( var_2, var_1 in level._ID49912 )
    {
        var_1._ID3189 = "freerunner";
        var_1 thread maps\favela_escape_code::_ID45772();

        if ( var_1 == level._ID47826 )
        {
            var_1 thread maps\favela_escape_code::_ID46474();
            continue;
        }

        if ( var_1 == level._ID51527 )
        {
            var_1 thread maps\favela_escape_code::_ID52461();
            continue;
        }

        var_1 thread maps\favela_escape_code::_ID43901();
    }

    thread maps\favela_escape_code::_ID44040();
    thread maps\favela_escape_code::_ID50416();
    _ID42237::_ID14413( "player_recovery_done" );
    thread _ID49001();
}

_ID48936()
{
    var_0 = getent( "veh_chopper_roofrun", "targetname" );
    var_1 = undefined;

    if ( isdefined( var_0._ID21855 ) )
        var_1 = var_0._ID21855;
    else
        var_0 waittill( "spawned",  var_1  );

    var_1._ID3189 = "chopper";
    var_1 thread maps\favela_escape_aud::_ID43449();
    var_1 waittill( "reached_dynamic_path_end" );
    _ID42237::_ID14413( "player_near_bigjump" );
    var_1 playsound( "pavelow_door_open" );
    var_1 setanim( var_1 _ID42407::_ID16120( "cargodoor_open" ) );
}

_ID49001( var_0 )
{
    _ID42237::_ID14402( "solorun_start" );
    var_1 = undefined;

    if ( !isdefined( var_0 ) )
        var_0 = "normal";

    _ID42407::_ID27683( 100, 0.1 );
    maps\favela_escape_code::_ID49651( 1.5, 0.1 );
    setsaveddvar( "player_sprintUnlimited", "1" );
    thread maps\favela_escape_code::_ID50162();
    level.player enableweapons();
    level.player giveweapon( "freerunner" );
    level.player switchtoweapon( "freerunner" );
    thread player_solorun_audio();

    if ( var_0 == "chopperjump" )
    {
        thread maps\favela_escape_code::_ID46207();
        thread maps\favela_escape_code::rooftop_slide_dust_exploder();
        thread maps\favela_escape_code::_ID43741();
        var_1 = 0;
        thread maps\favela_escape_code::_ID44500( var_1 );
    }
    else if ( var_0 == "rooftops" )
    {
        thread _ID44155();
        thread maps\favela_escape_code::_ID49658();
        thread maps\favela_escape_code::_ID44763();
        thread maps\favela_escape_code::_ID50249();
        thread maps\favela_escape_code::_ID49375();
        thread maps\favela_escape_code::_ID51547();
        thread maps\favela_escape_code::_ID51456( 0 );
        thread maps\favela_escape_code::_ID46755();
        thread maps\favela_escape_code::_ID50014();
        thread maps\favela_escape_code::_ID49927();
        thread maps\favela_escape_code::_ID52477();
        thread maps\favela_escape_code::_ID43973();
        thread maps\favela_escape_code::_ID46207();
        thread maps\favela_escape_code::rooftop_slide_dust_exploder();
        thread maps\favela_escape_code::_ID43741();
        thread maps\favela_escape_code::_ID51326();
        thread maps\favela_escape_code::_ID44500( var_1 );
    }
    else
    {
        thread maps\favela_escape_code::_ID53296( 0.75 );
        thread maps\favela_escape_code::_ID43129();
        thread _ID44155();
        thread maps\favela_escape_code::_ID49658();
        thread maps\favela_escape_code::_ID44763();
        thread maps\favela_escape_code::_ID50249();
        thread maps\favela_escape_code::_ID49375();
        thread maps\favela_escape_code::_ID51547();
        thread maps\favela_escape_code::_ID51456();
        thread maps\favela_escape_code::_ID46755();
        thread maps\favela_escape_code::_ID50014();
        thread maps\favela_escape_code::_ID49927();
        thread maps\favela_escape_code::_ID52477();
        thread maps\favela_escape_code::_ID43973();
        thread maps\favela_escape_code::_ID46207();
        thread maps\favela_escape_code::rooftop_slide_dust_exploder();
        thread maps\favela_escape_code::_ID43741();
        thread maps\favela_escape_code::_ID51326();
        thread maps\favela_escape_code::_ID44500( var_1 );
    }

    thread maps\favela_escape_code::player_on_slide_magic_bullet();
    level.slide_minimal_duration = 0.7;
    setsaveddvar( "sm_sunShadowWorldHeight", level.sunshadowworldheight );
    _ID42237::_ID14413( "solorun_player_boarded_chopper" );
    wait 9;
    var_2 = 4;
    var_3 = 3;
    _ID42475::_ID34575( "start_fade_out_level" );
    var_4 = _ID42313::_ID9125( "black", 0, level.player );
    var_4 fadeovertime( var_2 );
    var_4.alpha = 1;
    wait(var_2);
    _ID42237::_ID14402( "level_faded_to_black" );
    wait(var_3);
    _ID42407::_ID24793();
}

_ID44155()
{
    _ID42237::_ID14413( "solorun_player_near_balcony" );

    if ( _ID50986() )
        _ID42263::_ID1375();
}

_ID50986()
{
    var_0 = getent( "vol_solorun_ai_behind_player_near_balcony", "targetname" );
    var_1 = getaispeciesarray( "bad_guys", "all" );

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3.enemy ) )
            continue;

        if ( !isplayernumber( var_3.enemy ) )
            continue;

        if ( isdefined( var_3._ID23353 ) && isdefined( var_3._ID23353.target ) && isplayernumber( var_3._ID23353.target ) )
            return 0;

        if ( var_3.finalaccuracy < 0.021 && var_3.finalaccuracy > -1 )
            continue;

        if ( var_0 istouching( var_3 ) )
            return 0;

        if ( var_3._ID7._ID21978 > gettime() - 500 )
        {
            if ( var_3 animscripts\utility::_ID6884( 0 ) && var_3 canshootenemy( 0 ) )
                return 0;
        }

        if ( isdefined( var_3._ID7._ID2428 ) && var_3 animscripts\utility::_ID6884( 0 ) && var_3 canshootenemy( 0 ) )
            return 0;
    }

    if ( _ID42407::_ID27506() )
        return 0;

    return 1;
}

player_solorun_audio()
{
    level.player endon( "death" );
    level endon( "chopperjump_player_jump" );
    var_0 = spawn( "script_origin", level.player.origin );
    var_0 linkto( level.player );
    thread delete_player_breath_ent_on_death( var_0 );
    var_1 = 1200;
    var_2 = gettime() + var_1;

    for (;;)
    {
        if ( level.player issprinting() )
        {
            if ( gettime() >= var_2 )
            {
                var_0 playsound( "h2_plr_sprint_breath_vo" );
                var_2 = gettime() + var_1;
            }
        }

        if ( level.player _meth_83c0() )
        {
            var_0 playrumbleonentity();
            var_0 playsound( "h2_plr_sprint_jump_vo" );

            while ( level.player _meth_83c0() )
                wait 0.05;

            var_2 = gettime() + var_1;
        }

        wait 0.05;
    }
}

delete_player_breath_ent_on_death( var_0 )
{
    level.player waittill( "death" );
    var_0 playrumbleonentity();
    wait 0.05;
    var_0 delete();
}

static_model_group_setup()
{
    thread static_model_group_think( "static_model_group_flag_1", 1 );
    thread static_model_group_think( "objects_marketA", 2 );
    thread static_model_group_think( "objects_marketB", 3 );
    thread static_model_group_think( "objects_marketC", 4 );
}

static_model_group_think( var_0, var_1 )
{
    _func_31c( var_1 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        _func_31b( var_1 );
        _ID42237::_ID14426( var_0 );
        _func_31c( var_1 );
    }
}

hide_objects_in_market( var_0, var_1, var_2 )
{
    level endon( var_0 );

    for (;;)
    {
        if ( _ID42237::_ID14385( var_2 ) )
        {
            var_3 = getentarray( var_1, "script_noteworthy" );

            foreach ( var_5 in var_3 )
                var_5 show();
        }
        else
        {
            var_3 = getentarray( var_1, "script_noteworthy" );

            foreach ( var_5 in var_3 )
                var_5 hide();
        }

        level waittill( var_2 );
    }
}
