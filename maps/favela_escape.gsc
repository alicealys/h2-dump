// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\favela_escape_mission_select_cam::_ID50320();
        return;
    }

    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" )
    {
        maps\favela_escape_beautiful_corner::_ID616();
        return;
    }

    _func_0DB( "fx_cast_shadow", 0 );
    level._ID49010 = 0.5;
    level._ID29811 = 1;
    level._ID10497 = 0.75;
    level._ID10527 = 1.75;
    _func_0DB( "compassHideVehicles", "1" );
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
    level._ID8760["45"] = _func_0BC( 45 );
    _ID51196::_ID616();
    _ID53782::_ID616();
    _ID51855::_ID616();
    _ID54620::_ID616();
    _ID51773::_ID616();
    _unknown_023C();
    _func_152( "airliner_flyby" );
    _func_152( "heli_loop" );
    _func_152( "warbird_flyby" );
    _func_152( "tank_rumble" );
    _ID42313::_ID54261();
    _unknown_0287();
    _unknown_0341();

    if ( _func_02F( level._ID35897 ) && level._ID35897 == "no_game" )
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

    _unknown_057A();
    _ID52657::_ID616();
    _ID42359::_ID616();
    level._ID48251 = maps\favela_escape_code::_ID44784();
    level._ID14988 = maps\favela_escape_code::_ID51238;
    maps\favela_escape_code::_ID44223();
    _ID42287::_ID521();
    maps\favela_escape_anim::_ID616();
    _ID42323::_ID616();
    _ID45285::_ID49852();
    thread _ID43858::_ID616();
    _ID42237::_ID14402( "respawn_friendlies" );
    thread maps\favela_escape_code::_ID54598();
    thread _unknown_0422();
    thread _unknown_0461();
    thread _unknown_04B8();
    thread maps\favela_escape_code::_ID48776();
    level._ID794 thread _unknown_02A8();
    thread maps\favela_escape_code::init_fx_alphathreshold();
    thread maps\favela_escape_code::helicopter_soccerfield_exploder();
    thread maps\favela_escape_code::playerjump_roof_fx();
    maps\favela_escape_aud::_ID616();
    thread _unknown_0434();
    thread maps\favela_escape_code::_ID54253();
    thread _ID51773::_ID44134();
    thread maps\favela_escape_code::_ID53382();
    _ID42272::_ID33575( "compass_map_favela_escape" );
    thread _unknown_04FB();
    thread maps\favela_escape_code::_ID49430();
    thread _unknown_0332();
    thread maps\favela_escape_code::animated_airconditioners_setup();
    thread _unknown_0CFC();
    thread _unknown_0D23( "killfunc_hide_objects_in_market", "objects_to_hide_in_market", "hide_objects_in_market_flag" );
    thread _unknown_0D32( "killfunc_hide_objects_in_market", "cars_to_hide_in_market", "cars_to_hide_in_market" );
    thread _unknown_0D42( "killfunc_hide_objects_in_market", "marketA", "objects_marketA" );
    thread _unknown_0D52( "killfunc_hide_objects_in_market", "marketB", "objects_marketB" );
    thread _unknown_0D62( "killfunc_hide_objects_in_market", "marketC", "objects_marketC" );
    maps\favela_escape_lighting::_ID616();
    var_2 = _func_1A1( "vista_end", "targetname" );
    var_3 = _func_1A2( "vista_end_water", "targetname" );
    var_3 = _ID42237::_ID3293( var_3, var_2 );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 _meth_805A();
    }

    var_clear_2
    var_clear_0
    level.sunshadowworldheight = _func_039( "sm_sunShadowWorldHeight" );
    _func_0DB( "sm_sunShadowWorldHeight", "900" );
    var_7 = _func_1A2( "keep_door", "script_noteworthy" );
    var_8 = var_7;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_9 _meth_848A( var_9._ID740 );
    }

    var_clear_2
    var_clear_0
    level.tanksquishdamageimmunity = "MOD_EXPLOSIVE";
}

_ID45896()
{
    self endon( "death" );
    var_0 = _func_1A1( "market_mantle", "targetname" );
    var_1 = 110;
    var_2 = 60;

    for (;;)
    {
        var_0 waittill( "trigger" );

        for (;;)
        {
            var_3 = _func_0C3( _func_0F0( self._ID65[1] - var_1 ) ) < var_2;

            if ( self _meth_80B0( var_0 ) && var_3 && level._ID794 _meth_8188() == "stand" )
            {
                _func_0DB( "hud_forceMantleHint", var_3 );
                self _meth_830F( 0 );
                self _meth_830C( 0 );

                if ( self _meth_85A3() && self _meth_83EB() && !self _meth_83C0() )
                    break;
            }
            else
            {
                _func_0DB( "hud_forceMantleHint", 0 );
                self _meth_830F( 1 );
                self _meth_830C( 1 );
            }

            waittillframeend;
        }

        _func_0DB( "hud_forceMantleHint", 0 );
        self _meth_830C( 1 );
        self _meth_8328( 1 );
        level._ID794 _meth_80A1( "scn_favela_escape_rooftop_mantle_player" );
        self _meth_81F1( 0 );
        self _meth_830F( 0 );
        self _meth_8122( 0 );
        self _meth_8123( 0 );
        var_4 = 10000;

        while ( _func_0F9( level._ID794 _meth_8344() ) > var_4 )
            waittillframeend;

        _ID42407::_ID49392( "rooftop_mantle", undefined, 0, 0.5, 1, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
        self _meth_81F1( 1 );
        self _meth_830F( 1 );
        self _meth_8122( 1 );
        self _meth_8123( 1 );
        self _meth_8329();
        waittillframeend;
    }
}

_ID52043()
{
    level._ID43594 = [];
    var_0 = _func_1A2( "destructible_toy", "targetname" );
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_125( var_3._ID279, "toy_chicken" ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( var_1, ::_unknown_0558 );
}

_ID43200()
{
    self waittill( "damage",  var_8, var_8, var_8, var_8, var_8, var_8, var_8, var_8, var_8  );

    if ( !_func_1B3( var_1 ) )
        return;

    level._ID43594[level._ID43594.size] = _func_03D();

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
    _func_14E( "uzi" );
    _func_14E( "smoke_grenade_american" );
    _func_14E( "rpg_straight" );
    _func_14E( "rpg_straight_short_life" );
    _func_14E( "freerunner" );
    _func_14E( "ak47_drone_sound" );
    _func_14E( "uzi_drone_sound" );
    _func_14E( "glock_drone_sound" );
    _func_14E( "fal_drone_sound" );
    _func_14D( "favela_escape_player_recovery" );
    _func_150( &"FAVELA_ESCAPE_SOLORUN_KEEP_MOVING" );
    _func_150( &"FAVELA_ESCAPE_HINT_SPRINT" );
    _func_150( &"FAVELA_ESCAPE_HINT_SPRINT_PC" );
    _func_150( &"FAVELA_ESCAPE_HINT_SPRINT_PC_ALT" );
    _func_150( &"FAVELA_ESCAPE_CHOPPER_TIMER" );
    _func_150( &"FAVELA_ESCAPE_CHOPPER_TIMER_EXPIRED" );
    _func_150( &"FAVELA_ESCAPE_DEADQUOTE_FAILED_CHOPPER_JUMP" );
    _func_14C( "hat_militia_bb_blk" );
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
    level._ID49240 = _func_1A2( "sbmodel_market_evac_helperclip", "targetname" );
    var_0 = level._ID49240;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _meth_805F();
    }

    var_clear_2
    var_clear_0
    _func_020( "street_uphill_alley", -1, ( -388, 524, 1016 ), 90, 128, "allies" );
}

_ID52140()
{
    var_0 = _func_1A2( "starting_allies", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID1193 ) )
        {
            if ( var_2._ID1193 == "sarge" )
            {
                var_2._ID3189 = "sarge";
                var_2._ID52287 = 1;
                level._ID47826 = var_2;
            }
            else if ( var_2._ID1193 == "hero1" )
            {
                var_2._ID3189 = "hero1";
                var_2._ID52287 = 1;
                level._ID51527 = var_2;
            }
        }

        if ( _func_02F( var_2._ID52287 ) )
            var_2 thread _ID42407::_ID22746();
        else
            var_2 thread _ID42407::_ID29701();

        var_2 maps\favela_escape_code::_ID49104( level._ID49010 );
        var_2 maps\favela_escape_code::_ID52666( 1 );
        var_2 maps\favela_escape_code::_ID53025();
        var_2 maps\favela_escape_code::_ID47730();
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID1892( "allies", maps\favela_escape_code::_ID52666, 1 );
    _ID42237::_ID14402( "friends_setup" );
}

_ID49739()
{
    _ID42407::_ID1892( "axis", maps\favela_escape_code::_ID52666, 1 );
    var_0 = _func_1A2( "delete_at_path_end", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\favela_escape_code::_ID10240 );
    var_1 = _func_1A2( "ignore_til_pathend_or_damage", "script_noteworthy" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, maps\favela_escape_code::_ID50353 );
    var_2 = _func_1A2( "ignore_and_delete_at_path_end", "script_noteworthy" );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, maps\favela_escape_code::_ID51433 );
    var_3 = _func_1A2( "playerseek_at_path_end", "script_noteworthy" );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, maps\favela_escape_code::_ID49916 );
    var_4 = _func_1A2( "window_smash_stop_inside", "script_noteworthy" );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, maps\favela_escape_code::_ID43131 );
    var_5 = _func_1A2( "chaotic_above_shooter", "script_noteworthy" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, maps\favela_escape_code::_ID49951 );
    var_6 = _func_1A2( "solorun_chaser_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, maps\favela_escape_code::_ID43280 );
    var_7 = _func_1A2( "dont_shoot_player_in_back", "script_noteworthy" );
    _ID42237::_ID3350( var_7, _ID42407::_ID1947, maps\favela_escape_code::_ID51747 );
    var_8 = _func_1A1( "spawner_vista2_endhouse", "script_noteworthy" );
    var_8 thread _ID42407::_ID1947( maps\favela_escape_code::_ID47626 );
    var_9 = _func_1A2( "solorun_roofrunner", "script_noteworthy" );
    _ID42237::_ID3350( var_9, _ID42407::_ID1947, maps\favela_escape_code::_ID51747 );
    _ID42237::_ID3350( var_9, _ID42407::_ID1947, maps\favela_escape_code::_ID10240 );
}

_ID33511()
{
    var_0 = _func_1A2( "solorun_chopper", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\favela_escape_code::_ID49331 );
}

_ID54366()
{
    _ID42237::_ID14413( "introscreen_complete" );
    var_0 = 0;
    var_1 = _func_039( "objectiveFadeTooFar" );

    if ( _func_02F( level._ID47826 ) )
    {
        _ID42237::_ID14413( "runpath_dialogue_continue" );
        _func_1E3( 1, "current", &"FAVELA_ESCAPE_OBJ_1ST_LZ" );
        _func_194( 1, level._ID47826 );
        _ID42237::_ID14413( "radiotower_runpath_dialogue_done" );
        _func_1E5( 1, "active" );
        _func_1E3( 2, "current", &"FAVELA_ESCAPE_OBJ_SUPPORT_SQUAD" );
        _func_1E7( 2, 1 );
        _func_194( 2, level._ID47826 );
        _func_0C7( 2, &"FAVELA_ESCAPE_OBJ_FOLLOW_MARKER" );
        _func_0DB( "objectiveFadeTooFar", 5 );
        var_0 = 1;
    }

    _ID42237::_ID14413( "market_introdialogue_done" );

    if ( var_0 )
    {
        _func_1E5( 2, "active" );
        _func_114( 2, "done" );
        _func_1E3( 3, "current", &"FAVELA_ESCAPE_OBJ_THROUGH_MARKET" );
        _func_1E7( 3, 1 );
        _func_1E8( 3, ( -3154, -1875, 1096 ) );
        _func_0C7( 3, "" );
        _func_0DB( "objectiveFadeTooFar", var_1 );
    }

    _ID42237::_ID14413( "market_evac_chopper_incoming" );
    wait 4;
    _ID42407::_ID25327( 1 );
    _func_114( 3, "done" );
    wait 5;
    _func_1E3( 4, "current", &"FAVELA_ESCAPE_OBJ_2ND_LZ", ( -3937, -1051, 1241 ) );

    if ( _func_02F( level._ID7499 ) )
        _func_194( 4, level._ID7499 );

    thread _unknown_0DDE( 4 );
    _ID42237::_ID14413( "player_bigjump_done" );
    _ID42407::_ID25327( 4, 1 );
    _func_114( 4, "active" );
    _ID42237::_ID14413( "solorun_objective_display" );
    _func_1E3( 5, "current", &"FAVELA_ESCAPE_OBJ_GET_BACK_TO_ROOF", ( -5924, -870, 816 ) );
    _func_1E7( 5, 1 );
    thread _unknown_0E47( 5 );
    _ID42237::_ID14413( "solorun_player_at_balcony" );
    _func_1E5( 5, "active" );
    _ID42407::_ID25327( 5, 1 );
    _func_1E3( 6, "current", &"FAVELA_ESCAPE_OBJ_GET_TO_CHOPPER", ( -8354, 2045, 704 ) );
    _func_1E7( 6, 1 );
    thread _unknown_0E9D( 6 );
    _ID42237::_ID14413( "solorun_player_boarded_chopper" );
    wait 1.5;
    _ID42407::_ID25327( 6 );
    _func_114( 4, "done" );
}

_ID47804()
{
    _ID42407::_ID38928( "solorun_houses_obj_update_0", "script_noteworthy" );
    _func_0DB( "compass", 0 );
    _ID42237::_ID14413( "solorun_player_at_balcony" );
    _func_0DB( "compass", 1 );
}

_ID53904( var_0 )
{
    level endon( "solorun_start" );
    _ID42237::_ID14413( "market_evac_chopper_leaves_scene" );
    _func_194( var_0, level._ID47826 );
    _ID42237::_ID14413( "roofrun_player_at_start_loc" );

    while ( _func_02F( level._ID7499 ) )
        wait 0.05;

    for ( var_1 = undefined; !_func_02F( var_1 ); var_1 = _ID42407::_ID16053( "veh_chopper_roofrun", "targetname" ) )
        wait 0.05;

    _func_194( var_0, var_1 );
    _ID42237::_ID14413( "player_jump_watcher_stop" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
    _ID42237::_ID14413( "player_recovery_blackscreen" );
    _func_1E8( var_0, ( -6370.5, -944, 1044 ) );
}

_ID45457( var_0 )
{
    level endon( "solorun_player_at_balcony" );
    _ID42407::_ID38928( "solorun_houses_obj_update_0", "script_noteworthy" );
    _func_1E8( var_0, ( -4756, -384, 808 ) );
    _ID42407::_ID38928( "solorun_houses_obj_update_2", "script_noteworthy" );
    _func_1E8( var_0, ( -4760, 880, 804 ) );
    _ID42407::_ID38928( "solorun_houses_obj_update_3", "script_noteworthy" );
    _func_1E8( var_0, ( -5112, 864, 944 ) );
}

_ID46183( var_0 )
{
    level endon( "solorun_player_boarded_chopper" );
    _ID42407::_ID38928( "objective_breadcrumb_update_1", "script_noteworthy" );
    _func_1E8( var_0, ( -8442, 1409, 416 ) );
    _ID42407::_ID38928( "objective_breadcrumb_update_2", "script_noteworthy" );
    _func_1E8( var_0, ( -9108, 1522, 353 ) );
    _ID42407::_ID38928( "objective_breadcrumb_update_3", "script_noteworthy" );
    _func_1E8( var_0, ( -9086, 2224, -152 ) );
    _ID42407::_ID38929( "trig_end_glass_break" );
    _func_194( var_0, level._ID51492, ( 0, 0, -85 ) );
}

_ID47668()
{
    _ID42407::_ID10126( ::_unknown_10A0 );
    _ID42407::_ID1951( "intro", ::_unknown_10AB, "map start" );
    _ID42407::_ID1951( "street", ::_unknown_10D0, "street after radiotower" );
    _ID42407::_ID1951( "street_mid", ::_unknown_110A, "street after first chopper reveal" );
    _ID42407::_ID1951( "street_vista2", ::_unknown_113C, "street second vista area" );
    _ID42407::_ID1951( "market", ::_unknown_1173, "market start" );
    _ID42407::_ID1951( "market_evac", ::_unknown_11B7, "market evac goes wrong" );
    _ID42407::_ID1951( "market_evac_escape", ::_unknown_11F6, "friendlies climb up to rooftops" );
    _ID42407::_ID1951( "roofrun", ::_unknown_1257, "roofrun start" );
    _ID42407::_ID1951( "roofrun_bigjump", ::_unknown_12BE, "roofrun player jump" );
    _ID42407::_ID1951( "solorun", ::_unknown_131A, "player solo run" );
    _ID42407::_ID1951( "solorun_rooftops", ::_unknown_1356, "player solo run rooftops" );
    _ID42407::_ID1951( "solorun_chopper", ::_unknown_1392, "player jump to chopper" );
    _ID42407::_ID1951( "test", ::_unknown_1144, "[dev test]" );
}

_ID45900()
{
    _ID42237::_ID14402( "portalgroup1" );
    _ID42237::_ID14402( "portalgroup2" );
    _ID42237::_ID14402( "portalgroup2_farside" );
    _ID42237::_ID14402( "portalgroup3" );
    _ID42237::_ID14402( "portalgroup3_facade" );
    level._ID794._ID511 = 1;
    level._ID794 maps\favela_escape_code::_ID45573( ( 4892, 292, 1134 ), ( 0, 180, 0 ) );
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
    level thread _unknown_1459();
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
    thread _unknown_1595();
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
    thread _unknown_1608();
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
    thread _unknown_167F( "vista2" );
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
    thread _unknown_170A( "market" );
    thread _unknown_1749();
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
    var_1 _meth_80B7();
    _ID42237::_ID14402( "market_advance_4" );
    thread _unknown_180A();
    maps\favela_escape_code::_ID44127( "struct_start_market_evac" );
    thread _unknown_1830();
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
    level._ID794 maps\favela_escape_code::_ID45573( var_2._ID740, var_2._ID65 );
    var_3 = _func_0C8( "node_sarge_preclimb", "targetname" );
    var_4 = _func_0C8( "node_hero1_preclimb", "targetname" );
    var_5 = _func_0C8( "node_redshirt_preclimb", "targetname" );
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID47402, 128 );
    var_1 = maps\favela_escape_code::_ID47511();
    level._ID47826 _meth_81D2( var_3._ID740, var_3._ID65 );
    level._ID51527 _meth_81D2( var_4._ID740, var_4._ID65 );
    var_1 _meth_81D2( var_5._ID740, var_5._ID65 );
    level._ID47826 _meth_81B1( var_3 );
    level._ID51527 _meth_81B1( var_4 );
    var_1 _meth_81B1( var_5 );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13024, "climbing_ok" );
    waitframe;
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13025, "climbing_ok" );
    thread maps\favela_escape_code::_ID54728();
    thread _unknown_1A1B();
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
    var_2 = _func_0C8( "node_roofrun_sarge_waitforplayer", "targetname" );
    var_3 = _func_0C8( "node_roofrun_hero1_waitforplayer", "targetname" );
    var_4 = _func_0C8( "node_roofrun_redshirt_waitforplayer", "targetname" );
    level._ID47826 thread maps\favela_escape_code::_ID45573( var_2._ID740, var_2._ID65 );
    level._ID51527 thread maps\favela_escape_code::_ID45573( var_3._ID740, var_3._ID65 );
    var_1 thread maps\favela_escape_code::_ID45573( var_4._ID740, var_4._ID65 );
    level._ID794 maps\favela_escape_code::_ID45573( ( -3552, -992, 1194 ), ( 0, 180, 0 ) );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13024, "roofrun_start" );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13024, "climbing_ok" );
    waitframe;
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13025, "roofrun_start" );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13025, "climbing_ok" );
    waitframe;
    thread maps\favela_escape_code::_ID54728();
    thread _unknown_1BC4();
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
    level._ID47826 maps\favela_escape_code::_ID45573( var_2._ID740, var_2._ID65 );
    var_3 = _ID42237::_ID16638( "struct_start_roofrun_player_jump_player", "targetname" );
    level._ID794 maps\favela_escape_code::_ID45573( var_3._ID740, var_3._ID65 );
    wait 0.05;
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID13025, "roofrun_start" );
    waitframe;
    level._ID47826 thread maps\favela_escape_code::_ID46474( 1 );
    var_1 thread maps\favela_escape_code::_ID43901( 1 );
    level._ID51527 thread maps\favela_escape_code::_ID52461( 1 );
    thread maps\favela_escape_code::_ID50416();
    _ID42237::_ID14413( "player_recovery_done" );
    thread _unknown_1D0A();
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
    level._ID794 _meth_831B();
    var_0 = _ID42237::_ID16638( "struct_solorun_beginning_start_player", "targetname" );
    level._ID794 thread maps\favela_escape_code::_ID45573( var_0._ID740, var_0._ID65 );
    thread maps\favela_escape_code::_ID52086();
    thread _unknown_1D90();
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
    level._ID794 _meth_831B();
    var_0 = _ID42237::_ID16638( "struct_solorun_rooftops_start_player", "targetname" );
    level._ID794 maps\favela_escape_code::_ID45573( var_0._ID740, var_0._ID65 );
    thread _unknown_1E18( "rooftops" );
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
    level._ID794 _meth_831B();
    var_0 = _ID42237::_ID16638( "struct_solorun_chopper_start_player", "targetname" );
    level._ID794 maps\favela_escape_code::_ID45573( var_0._ID740, var_0._ID65 );
    thread _unknown_1E78( "chopperjump" );
}

_ID49531()
{
    thread _unknown_1B91();
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

    if ( _func_039( "introscreen" ) != "0" )
        level waittill( "introscreen_complete" );
    else
        _ID42237::_ID14402( "introscreen_start_dialogue" );

    _ID42237::_ID3350( _func_1A2( "animated_chicken", "targetname" ), maps\favela_escape_code::_ID43233 );
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
    thread _unknown_1CE9();
}
#using_animtree("generic_human");

_ID49102()
{
    level endon( "radiotower_exit" );
    level endon( "cleaning_up_rojas" );
    var_0 = _func_1A1( "intro_anim_node", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_1._ID31152 = undefined;
    var_2 = var_1 _ID42407::_ID35014( 1 );
    level.rojas = var_2;
    var_3 = _ID42407::_ID35028( "rojas_restraints" );
    var_4 = "intro_rojas_idle";
    var_5 = "intro_rojas_death";
    var_0 thread _ID42259::_ID3025( var_2, var_4, "stop_idle_rojas" );
    var_0 thread _ID42259::_ID3044( var_3, "idle" );
    level thread _unknown_1D34( var_2, var_0, var_3 );
    var_2._ID680 = "Rojas";
    var_2._ID464 = 0;
    var_2._ID309 = 0;
    var_2 _ID42407::_ID32226( 0 );
    var_2.cheat._ID54456 = 1;
    var_2._ID49 = 1;
    var_2._ID9813 = %h2_favela_escape_crucified_death;
    var_2._ID24924 = 1;
    var_2._ID1190 = 1;
    var_2._ID3189 = "generic";
    var_2._ID486 = 5000;
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
    level._ID794 thread _ID42279::_ID39696( 0, var_2 );
    level._ID794 thread _ID42279::_ID39697( var_2 );
    var_2._ID1194 = "neutral";
    var_2._ID680 = undefined;
    var_2 _ID42407::_ID29503( maps\favela_escape_code::_ID46526 );
    var_0 _ID42259::_ID3111( var_2, var_5 );
    var_0 _ID42259::_ID3038( var_2, var_5 );
}

_ID50490( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( "radiotower_exit" );
    level notify( "cleaning_up_rojas" );

    if ( _func_02F( var_0 ) )
        var_0 _ID42407::_ID3136();

    var_1 _ID42407::_ID3136();
    var_2 _ID42407::_ID3136();
    wait 0.05;

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();

    var_1 _meth_80B7();
    var_2 _meth_80B7();
}

_ID52327( var_0 )
{
    thread _unknown_1E67( var_0 );
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
    thread _unknown_1ED3();
}

_ID48729( var_0 )
{
    var_1 = "street_advance";
    var_2 = 5;
    var_3 = "uphill_advance";
    var_4 = 6;
    var_5 = "market_advance";
    var_6 = 6;

    if ( !_func_02F( var_0 ) )
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
    thread _unknown_1FAA();
    var_0 = level._ID49912;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 maps\favela_escape_code::_ID43557( 1 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID52666, 0 );
    _ID42407::_ID29534( "allies", maps\favela_escape_code::_ID52666 );
    thread maps\favela_escape_code::_ID52360();
    thread maps\favela_escape_code::_ID53495();
    thread maps\favela_escape_code::_ID50918();
    thread _unknown_200D();
}

_ID44332()
{
    _ID42237::_ID14413( "market_advance_4" );
    var_0 = _ID42411::_ID35195( "vehicle_market_fake_chopper_1" );
    var_0 _meth_8295();
    _ID42237::_ID14413( "market_chopper_spawned" );
    wait 1;
    var_0 _meth_80B7();
    _ID42237::_ID14413( "market_chopper_leaving_scene" );
    wait 5;
    var_0 = _ID42411::_ID35195( "vehicle_market_fake_chopper_2" );
    var_0 _meth_8295();
    _ID42237::_ID14413( "market_evac_chopper_spawned" );
    wait 4;
    var_0 _meth_80B7();
}

_ID43714()
{
    _ID42237::_ID14413( "market_evac_start" );
    thread maps\favela_escape_code::animated_soccer_goals();
    thread maps\favela_escape_code::_ID50205();
    thread maps\favela_escape_code::soccerfield_animated_wires();
    var_0 = level._ID49912;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 maps\favela_escape_code::_ID43557( 0 );
    }

    var_clear_2
    var_clear_0
    level notify( "color_flags_advance_stop" );
    var_3 = _ID42237::_ID16640( "struct_market_evac_friendly_warp", "targetname" );
    _ID42237::_ID14402( "market_respawn_trigger" );
    var_4 = level._ID49912;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 thread _unknown_2153( var_3[var_6] );
    }

    var_clear_2
    var_7 = maps\favela_escape_code::_ID46434();
    var_8 = undefined;

    if ( !_unknown_2177( var_7 ) )
    {
        if ( var_7.size )
        {
            var_9 = var_7;

            for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
            {
                var_5 = var_9[var_11];
                var_5 maps\favela_escape_code::_ID44439();
                var_5 _ID42407::_ID10871();
                var_10 = [];
                var_10[0] = var_5;
                thread _ID42407::_ID2265( var_10, 1000 );
            }

            var_clear_2
            var_clear_0
        }

        var_12 = _func_1A1( "market_evac_redshirt_spawner", "targetname" );
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
    thread _unknown_222F();
    _ID42237::_ID14413( "market_evac_chopper_incoming" );
    _ID42407::_ID4422( "market_evac_chopper_incoming" );
    var_7 = maps\favela_escape_code::_ID46434();
    var_13 = var_7;

    for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
    {
        var_5 = var_13[var_14];
        var_5 maps\favela_escape_code::_ID45702();
    }

    var_clear_1
    var_clear_0
    _ID42475::_ID34575( "start_evac_fakefire_rpgs" );
    _ID42407::_ID10226( 0.5, maps\favela_escape_code::_ID45996 );
    _ID42407::_ID10226( 4, maps\favela_escape_code::_ID49455 );
    thread maps\favela_escape_code::_ID43528();
    _ID42237::_ID14402( "market_evac_ambush_start" );
    _ID42407::_ID27683( 90, 1 );
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    _ID42237::_ID14413( "market_evac_enemies_depleted" );
    thread _unknown_22F5();
}

_ID44511( var_0 )
{
    if ( _func_0F3( self._ID740, level._ID794._ID740 ) < 800 )
        return;

    if ( self != level._ID47826 && self != level._ID51527 )
    {
        if ( _func_02F( self._ID23353 ) )
            return;
    }

    maps\favela_escape_code::_ID45599( var_0 );
}

_ID53899( var_0 )
{
    if ( !var_0.size )
        return 0;

    var_1 = var_0[0];

    if ( !_func_1A7( var_1 ) )
        return 0;

    if ( _func_02F( var_1._ID23353 ) )
        return 0;

    return 1;
}

_ID48811()
{
    _ID42237::_ID14413( "market_evac_friendlies_go_outside" );
    _ID42237::_ID3350( level._ID49912, ::_unknown_2321 );
    var_0 = _func_0C8( "node_sarge_soccerfield_cover", "targetname" );
    var_1 = _func_0C8( "node_hero1_soccerfield_cover", "targetname" );
    var_2 = _func_0C8( "node_redshirt_soccerfield_cover", "targetname" );
    var_3 = maps\favela_escape_code::_ID47511();
    level._ID47826 thread _unknown_2361( var_0 );
    level._ID51527 thread _unknown_2369( var_1 );
    var_3 thread _unknown_236F( var_2 );
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
    self _meth_81B1( var_0 );
    _ID42237::_ID14413( "market_evac_enemies_depleted" );
    thread maps\favela_escape_code::_ID47802();
    thread maps\favela_escape_code::_ID49104( 5.0 );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        self _meth_81B1( var_3 );
        self waittill( "goal" );
    }

    var_clear_2
    var_clear_0
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
    thread _unknown_2472();
    _ID42237::_ID14413( "market_evac_player_on_roof" );
    thread _unknown_250A();
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
    var_7 = _func_0C8( "node_roofrun_hero1_waitforplayer", "targetname" );
    var_8 = _func_0C8( "node_roofrun_redshirt_waitforplayer", "targetname" );
    _ID42237::_ID3350( level._ID49912, _ID42407::_ID7867 );
    level._ID43221 = 0;
    level._ID51527 thread _unknown_254C( var_0, var_1, var_7 );
    var_6 thread _unknown_2555( var_0, var_2, var_8 );
    level._ID47826 thread _unknown_2571( var_0, var_3, var_4, var_5 );

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
    self _meth_81B1( var_2 );
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

    if ( _unknown_261F() )
    {
        _ID45995::_ID48826( "upperbody", level._ID794, 2000, 90, 90, 30, 30, 1, 0, 10, -70 );
        self _meth_81B2( self._ID740 );
        var_0 thread maps\favela_escape_code::soap_random_idle_anims( self, var_2 );

        while ( _unknown_2649() )
            wait 0.05;

        _ID45995::_ID45228();
        var_0 notify( "sarge_idle_stop" );
        var_0 _ID42259::_ID3020( self, var_3 );
    }

    var_4 = _func_0C8( "node_roofrun_sarge_waitforplayer", "targetname" );
    self _meth_81B1( var_4 );
    wait 0.05;
    _ID42407::_ID13025( "roofrun_start" );
}

_ID52658()
{
    if ( _ID42237::_ID14385( "market_evac_player_mantled" ) )
        return 0;

    var_0 = _func_1A1( "trig_market_evac_mantlehelper", "targetname" );

    if ( level._ID794 _meth_80B0( var_0 ) )
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
    thread _unknown_2727();
    _ID42407::_ID10226( 3, maps\favela_escape_code::_ID52646 );
    _ID42407::_ID27683( 90, 1 );
    _func_0DB( "player_sprintUnlimited", "1" );
    _ID42237::_ID3350( level._ID49912, maps\favela_escape_code::_ID43645, 1.135 );
    var_0 = level._ID49912;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
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

    var_clear_2
    thread maps\favela_escape_code::_ID44040();
    thread maps\favela_escape_code::_ID50416();
    _ID42237::_ID14413( "player_recovery_done" );
    thread _unknown_27CE();
}

_ID48936()
{
    var_0 = _func_1A1( "veh_chopper_roofrun", "targetname" );
    var_1 = undefined;

    if ( _func_02F( var_0._ID21855 ) )
        var_1 = var_0._ID21855;
    else
        var_0 waittill( "spawned",  var_1  );

    var_1._ID3189 = "chopper";
    var_1 thread maps\favela_escape_aud::_ID43449();
    var_1 waittill( "reached_dynamic_path_end" );
    _ID42237::_ID14413( "player_near_bigjump" );
    var_1 _meth_80A1( "pavelow_door_open" );
    var_1 _meth_8155( var_1 _ID42407::_ID16120( "cargodoor_open" ) );
}

_ID49001( var_0 )
{
    _ID42237::_ID14402( "solorun_start" );
    var_1 = undefined;

    if ( !_func_02F( var_0 ) )
        var_0 = "normal";

    _ID42407::_ID27683( 100, 0.1 );
    maps\favela_escape_code::_ID49651( 1.5, 0.1 );
    _func_0DB( "player_sprintUnlimited", "1" );
    thread maps\favela_escape_code::_ID50162();
    level._ID794 _meth_8329();
    level._ID794 _meth_8319( "freerunner" );
    level._ID794 _meth_8320( "freerunner" );
    thread _unknown_2947();

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
        thread _unknown_2927();
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
        thread _unknown_2986();
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
    _func_0DB( "sm_sunShadowWorldHeight", level.sunshadowworldheight );
    _ID42237::_ID14413( "solorun_player_boarded_chopper" );
    wait 9;
    var_2 = 4;
    var_3 = 3;
    _ID42475::_ID34575( "start_fade_out_level" );
    var_4 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_4 _meth_808B( var_2 );
    var_4._ID55 = 1;
    wait(var_2);
    _ID42237::_ID14402( "level_faded_to_black" );
    wait(var_3);
    _ID42407::_ID24793();
}

_ID44155()
{
    _ID42237::_ID14413( "solorun_player_near_balcony" );

    if ( _unknown_2A35() )
        _ID42263::_ID1375();
}

_ID50986()
{
    var_0 = _func_1A1( "vol_solorun_ai_behind_player_near_balcony", "targetname" );
    var_1 = _func_0DF( "bad_guys", "all" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3._ID322 ) )
            continue;

        if ( !_func_1B3( var_3._ID322 ) )
            continue;

        if ( _func_02F( var_3._ID23353 ) && _func_02F( var_3._ID23353._ID1191 ) && _func_1B3( var_3._ID23353._ID1191 ) )
            return 0;

        if ( var_3._ID378 < 0.021 && var_3._ID378 > -1 )
            continue;

        if ( var_0 _meth_80B0( var_3 ) )
            return 0;

        if ( var_3._ID7._ID21978 > _func_03D() - 500 )
        {
            if ( var_3 animscripts\utility::_ID6884( 0 ) && var_3 _meth_81C9( 0 ) )
                return 0;
        }

        if ( _func_02F( var_3._ID7._ID2428 ) && var_3 animscripts\utility::_ID6884( 0 ) && var_3 _meth_81C9( 0 ) )
            return 0;
    }

    var_clear_2
    var_clear_0

    if ( _ID42407::_ID27506() )
        return 0;

    return 1;
}

player_solorun_audio()
{
    level._ID794 endon( "death" );
    level endon( "chopperjump_player_jump" );
    var_0 = _func_06A( "script_origin", level._ID794._ID740 );
    var_0 _meth_8053( level._ID794 );
    thread _unknown_2B99( var_0 );
    var_1 = 1200;
    var_2 = _func_03D() + var_1;

    for (;;)
    {
        if ( level._ID794 _meth_83E5() )
        {
            if ( _func_03D() >= var_2 )
            {
                var_0 _meth_80A1( "h2_plr_sprint_breath_vo" );
                var_2 = _func_03D() + var_1;
            }
        }

        if ( level._ID794 _meth_83C0() )
        {
            var_0 _meth_80B3();
            var_0 _meth_80A1( "h2_plr_sprint_jump_vo" );

            while ( level._ID794 _meth_83C0() )
                wait 0.05;

            var_2 = _func_03D() + var_1;
        }

        wait 0.05;
    }
}

delete_player_breath_ent_on_death( var_0 )
{
    level._ID794 waittill( "death" );
    var_0 _meth_80B3();
    wait 0.05;
    var_0 _meth_80B7();
}

static_model_group_setup()
{
    thread _unknown_2C1C( "static_model_group_flag_1", 1 );
    thread _unknown_2C26( "objects_marketA", 2 );
    thread _unknown_2C2F( "objects_marketB", 3 );
    thread _unknown_2C39( "objects_marketC", 4 );
}

static_model_group_think( var_0, var_1 )
{
    _func_31C( var_1 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        _func_31B( var_1 );
        _ID42237::_ID14426( var_0 );
        _func_31C( var_1 );
    }
}

hide_objects_in_market( var_0, var_1, var_2 )
{
    level endon( var_0 );

    for (;;)
    {
        if ( _ID42237::_ID14385( var_2 ) )
        {
            var_3 = _func_1A2( var_1, "script_noteworthy" );
            var_4 = var_3;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];
                var_5 _meth_8059();
            }

            var_clear_1
            var_clear_0
        }
        else
        {
            var_3 = _func_1A2( var_1, "script_noteworthy" );
            var_7 = var_3;

            for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
            {
                var_5 = var_7[var_8];
                var_5 _meth_805A();
            }

            var_clear_1
            var_clear_0
        }

        level waittill( var_2 );
    }
}
