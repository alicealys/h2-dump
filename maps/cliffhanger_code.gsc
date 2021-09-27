// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49840()
{
    level._ID43641 = maps\cliffhanger_stealth::_ID43641;
    _ID42323::_ID32417( "viewhands_player_arctic_wind" );
    _ID44905::_ID49306( "viewhands_player_arctic_wind", "vehicle_snowmobile_player" );
    _func_14E( "hind_turret_penetration" );
    _func_14E( "hind_FFAR" );
    _func_14E( "zippy_rockets" );
    _func_14E( "rpg_straight" );
    _func_14C( "com_computer_keyboard_obj" );
    _func_14E( "c4" );
    _func_14F( "overhead_obj_icon_world" );
    _func_14F( "hud_icon_heartbeat" );
    _func_14F( "hud_dpad" );
    _func_14F( "hud_arrow_left" );
    _func_14C( "weapon_ak47_clip" );
    _func_14C( "accessories_windsock_animated" );
    _func_14C( "h2_ch_megaphone_rig" );
    _func_14C( "com_roofvent1_snow_animated" );
    _func_14C( "ch_campfire_equipment_animated" );
    _func_14C( "head_hero_soap_arctic_interior" );
    _func_150( &"CLIFFHANGER_LINE1" );
    _func_150( &"CLIFFHANGER_LINE2" );
    _func_150( &"CLIFFHANGER_LINE3" );
    _func_150( &"CLIFFHANGER_LINE4" );
    _func_150( &"CLIFFHANGER_LINE5" );
    _func_150( &"SCRIPT_WAYPOINT_COVER" );
    _func_150( &"AUTOSAVE_AUTOSAVE" );
    _func_150( &"SCRIPT_WAYPOINT_COVER" );
    _func_150( &"SCRIPT_PLATFORM_HINT_STANDKEY" );
    _func_150( &"CLIFFHANGER_RUN_OVER" );
    _func_150( &"CLIFFHANGER_BOARD" );
    _func_150( &"CLIFFHANGER_E3_NOT_AS_PLANNED" );
    _func_150( &"CLIFFHANGER_HOW_TO_CLIMB" );
    _func_150( &"CLIFFHANGER_HOLD_ON_TIGHT" );
    _func_150( &"CLIFFHANGER_MAKES_FIRST_JUMP" );
    _func_150( &"CLIFFHANGER_E3_INTEREST_OF_TIME" );
    _func_150( &"CLIFFHANGER_E3_NOT_AS_PLANNED" );
    _func_150( &"CLIFFHANGER_LEFT_ICEPICK" );
    _func_150( &"CLIFFHANGER_RIGHT_ICEPICK" );
    _func_150( &"CLIFFHANGER_LEFT_ICEPICK_PC" );
    _func_150( &"CLIFFHANGER_RIGHT_ICEPICK_PC" );
    _func_150( &"CLIFFHANGER_HOW_TO_CLIMB_PC" );
    level._ID46111 = _ID42407::_ID52183;
    level._ID53839 = "kriss";
    _ID49383::_ID616();
    _ID53530::_ID616();
    _ID49506::_ID616();
    var_0 = _func_1A2( "destructible_tree", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_13DD );
    _ID42530::_ID616( "tag_origin" );
    _ID42323::_ID616();
    _ID42314::_ID19317();
    _ID42272::_ID33575( "compass_map_cliffhanger" );
    _ID42407::_ID1895( "hint_heartbeat_sensor", &"CLIFFHANGER_SWITCH_HEARTBEAT", ::_unknown_1163, undefined, "medium_background" );
    _ID45778::_ID616();
    _ID43691::_ID616();
    _ID48225::_ID616();
    _ID42316::_ID616();
    _ID43509::_ID616();
    _ID42315::_ID616();
    _ID47233::_ID616();
    maps\cliffhanger_anim::_ID43266();
    _ID42373::_ID616();
    maps\cliffhanger_stealth::_ID46260();
    _ID42339::_ID616();
    _ID47980::_ID45379();
    thread _unknown_1292();
    maps\cliffhanger_aud::_ID616();
    _ID42475::_ID34575( "aud_turnoff_hanger_door_transition" );
    level._ID46026 = [];
    thread maps\cliffhanger_snowmobile_code::_ID47380();
    var_1 = _func_1A2( "cliff_death_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID52408 );
    var_2 = _func_1A2( "high_threat_spawner", "targetname" );
    _ID42237::_ID3350( var_2, ::_unknown_134A );
    level._ID48831 = [];
    var_3 = _func_1A2( "tarmac_snowmobile", "script_noteworthy" );
    _ID42237::_ID3350( var_3, ::_unknown_1363 );
    var_4 = _func_1A2( "wind_blown_object", "targetname" );
    _ID42237::_ID3350( var_4, ::_unknown_13EF );
    var_5 = _func_1A2( "end_camp_spawner", "targetname" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID49185 );
    var_6 = _func_1A2( "speedy_littlebird_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID44110 );
    var_7 = _func_1A1( "ending_heli", "script_noteworthy" );
    var_7 _ID42407::_ID1947( maps\cliffhanger_snowmobile_code::_ID50770 );
    var_8 = _func_1A2( "magic_bullet_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_8, maps\cliffhanger_snowmobile_code::_ID45033 );
    var_9 = _func_1A2( "god_vehicle_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_9, maps\cliffhanger_snowmobile_code::_ID51332 );
    _ID42237::_ID3350( _func_1A2( "start_crate_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_090D );
    _ID42237::_ID3350( _func_1A2( "start_crate_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_092D );
    _ID42237::_ID3350( _func_1A2( "start_quonset_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0935 );
    _ID42237::_ID3350( _func_1A2( "right_side_start_guy", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0964 );
    _ID42237::_ID3350( _func_1A2( "2story_leaner", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0AF2 );
    _ID42237::_ID3350( _func_1A2( "2story_sitter", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0B0F );
    _ID42237::_ID3350( _func_1A2( "container_leaner", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0B1B );
    _ID42237::_ID3350( _func_1A2( "fence_walker", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_10ED );
    _ID42237::_ID3350( _func_1A2( "satbuilding_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_1101 );
    _ID42237::_ID3350( _func_1A2( "ridge_patroler", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_1115 );
    _ID42237::_ID3350( _func_1A2( "start_crate_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_112A );
    var_10 = _func_1A2( "ridge_guy_left", "script_noteworthy" );
    _ID42237::_ID3350( var_10, _ID42407::_ID1947, ::_unknown_1149 );
    _ID42237::_ID3350( var_10, _ID42407::_ID1947, ::_unknown_183F, "ridge_guy_left_first_alert" );
    var_11 = _func_1A2( "ridge_guy_right", "script_noteworthy" );
    _ID42237::_ID3350( var_11, _ID42407::_ID1947, ::_unknown_185A, "ridge_guy_right_first_alert" );
    _ID42237::_ID3350( _ID42237::_ID16640( "price_target_start", "script_noteworthy" ), ::_unknown_1171 );
    _ID42237::_ID3350( _ID42237::_ID16640( "price_target_stop", "script_noteworthy" ), ::_unknown_118B );
    _ID42237::_ID3350( _func_1A2( "blue_building_smoker", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0A86 );
    _ID42237::_ID3350( _func_1A2( "blue_building_loader", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0A9A );
    _ID42237::_ID3350( _func_1A2( "blue_building_smoker", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0AA0 );
    _ID42237::_ID3350( _func_1A2( "blue_building_loader", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0AB4 );
    _ID42237::_ID3350( _func_1A2( "round_building_loader", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_1B8B );
    _ID42237::_ID3350( _func_1A2( "fence_walker", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_063E, "fence_walker_dead" );
    _ID42237::_ID3350( _func_1A2( "satbuilding_smoker", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0656, "satbuilding_smoker_dead" );
    _ID42237::_ID3350( _func_1A2( "southeast_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_066E, "southeast_patroller_dead" );
    _ID42237::_ID3350( _func_1A2( "satbuilding_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0686, "satbuilding_patroller_dead" );
    var_12 = _func_1A2( "script_vehicle_mig29", "classname" );
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_unknown_1960 );
    _unknown_1775();
    thread _unknown_083F();
    thread _unknown_08A1();
    thread _unknown_0C0A();
    thread _unknown_12E7();
    thread _unknown_13B4();
    thread _unknown_13F5();
    thread _unknown_141D();
    thread _unknown_11C2();
    thread _unknown_119A();
    thread _unknown_11E9();
    thread _unknown_15B0();
    thread _unknown_072E();
    thread _unknown_0753( "blizzard_start", "blizzard_bmp", "keyboard_used" );
    thread _unknown_0763( "player_detonate", "tarmac_bmp", "player_starts_snowmobile_trip" );
    thread _unknown_0901();
    thread _unknown_0713();
    thread _unknown_0999();
    thread _unknown_252A();
    thread _unknown_25BC();
    thread _unknown_21FC();
    thread _unknown_223C();
    level._ID46470 = [];
    level._ID50125 = _func_06A( "script_origin", level._ID794._ID740 );
    level._ID50125 _meth_8053( level._ID794 );
    level._ID48211 = _func_06A( "script_origin", level._ID794._ID740 );
    level._ID48211 _meth_8053( level._ID794 );
    level._ID43687["sleep"] = ::_unknown_0731;
    var_13 = _func_1A1( "ending_heli_fly_off_trigger", "targetname" );
    var_13 thread maps\cliffhanger_snowmobile_code::_ID49356();
    var_14 = _func_1A2( "end_heli_trigger", "targetname" );
    thread _unknown_221E();
    thread maps\cliffhanger_lighting::_ID43891();
    thread _unknown_2507();
    thread _unknown_0DB3();
    thread _unknown_0DC6();
    var_15 = _func_1A1( "pan_metal", "targetname" );
    var_15 _ID42407::_ID3428( "pan_metal" );
    var_15 thread _ID42259::_ID3044( var_15, "idle" );
    thread _unknown_261A( 6, "blizzard_start" );
    var_16 = _func_1A2( "pan_copper", "targetname" );
    var_17 = var_16;

    for ( var_20 = _func_1DA( var_17 ); _func_02F( var_20 ); var_20 = _func_1BF( var_17, var_20 ) )
    {
        var_18 = var_17[var_20];
        var_19 = _func_0B7( 3 );
        var_18 _ID42407::_ID3428( "pan_copper" );
        var_18 _ID42407::_ID10226( var_19, _ID42259::_ID3044, var_18, "idle" );
    }

    var_clear_3
    var_clear_0
    _ID42411::_ID52468( "script_vehicle_uaz_winter_destructible", _ID51074::_ID32550, ::_unknown_25FE );
}

_ID53360( var_0 )
{
    var_1 = _func_11F( self._ID65 );
    var_2 = level._ID794._ID740 - self._ID740;

    if ( _func_0FB( var_1, var_2 ) < 0 && _func_02F( self._ID1644._ID5029._ID13251._ID9525 ) )
        self._ID1644._ID5029._ID13251._ID9525._ID3183 = "sleep_react_back";

    if ( !level._ID794._ID46030 )
    {
        var_3 = 250;
        self.stealth_grace_window_end_in_ms = _func_03D() + var_3;
        _ID42407::_ID10226( var_3 / 1000, _ID42407::_ID45216, 1 );
        _ID42386::_ID12779( var_0 );
    }
    else
        level._ID794 waittill( "stealth_takedown_ended" );

    return 1;
}

_ID47901( var_0 )
{
    self waittill( "death" );
    _ID42237::_ID14402( var_0 );
}

_ID53304()
{
    level endon( "start_busted_music" );
    _ID42237::_ID14413( "dialog_take_point" );
    var_0 = _func_1A2( "base_loudspeaker", "targetname" );
    var_1 = [];
    var_1[var_1.size] = "cliff_ru2_stolesandwich";
    var_1[var_1.size] = "cliff_ru3_competrov";
    var_1[var_1.size] = "cliff_ru3_indoctrination";
    var_1[var_1.size] = "cliff_ru3_ltpavlov";
    var_1[var_1.size] = "cliff_ru3_repteams";
    var_1[var_1.size] = "cliff_ru3_spareparts";
    var_1[var_1.size] = "cliff_ru3_cptkonovalov";
    var_1[var_1.size] = "cliff_ru4_ptborodin";
    var_2 = 0;
    var_3 = [];
    var_3[var_3.size] = "cliff_ru3_redalert";
    var_3[var_3.size] = "cliff_ru3_enemyforces";
    var_3[var_3.size] = "cliff_ru3_hostiletroops";
    var_3[var_3.size] = "cliff_ru3_cutthemoff";
    var_4 = 0;

    for (;;)
    {
        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        {
            var_5 = var_1[var_4];
            var_4++;

            if ( var_4 >= var_3.size )
                var_4 = 0;
        }
        else
        {
            var_5 = var_1[var_2];
            var_2++;

            if ( var_2 >= var_1.size )
                var_2 = 0;
        }

        var_6 = var_0;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];
            var_7 _meth_80A1( var_5 );
        }

        var_clear_2
        var_clear_0
        wait(_func_0B9( 16, 35 ));
    }
}

_ID51513()
{
    wait 1;
    _ID42237::_ID14413( "blizzard_start" );
    _func_0DB( "aim_aimAssistRangeScale", ".3" );
    _func_0DB( "aim_autoAimRangeScale", ".3" );
    _ID42237::_ID14413( "done_with_stealth_camp" );
    _func_0DB( "aim_aimAssistRangeScale", "1" );
    _func_0DB( "aim_autoAimRangeScale", "1" );
}

_ID43722( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( var_0 );
    var_3 = _ID42411::_ID35199( var_1 );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_1 == "blizzard_bmp" )
            var_5 thread _unknown_0A52();

        var_5 thread _ID42413::_ID9604();
        var_5 _ID42411::_ID16988();
        var_5 _meth_8223( 1 );
        var_5 thread _unknown_0AD1();
        var_5 thread _unknown_0A7D();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( var_2 );
    var_7 = var_3;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_5 = var_7[var_8];
        var_5 _meth_80B7();
    }

    var_clear_1
    var_clear_0
}

_ID46625( var_0, var_1 )
{
    var_2 = _ID42411::_ID35196( var_0 );
    var_2 thread _ID42413::_ID9604();
    var_2 _ID42411::_ID16988();
    var_2 _meth_8223( 1 );
    var_2 thread _unknown_0B20();
    var_2 thread _unknown_0ACE( 1 );
    _ID42237::_ID14413( var_1 );
    var_2 _meth_80B7();
}

_ID52686( var_0 )
{
    _func_157( level._ID1426["lighthaze_snow_headlights"], self, "tag_front_light_left" );
    _func_157( level._ID1426["lighthaze_snow_headlights"], self, "tag_front_light_right" );
    _func_157( level._ID1426["lighthaze_snow_spotlight"], self, "tag_turret_light" );
    self waittill( "death" );
}

_ID45189( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    self endon( "death" );
    thread _unknown_1771();
    _ID42407::_ID41104( level._ID794, 980 );
    self notify( "bmp_aim_at_player" );
    self _meth_826C( level._ID794 );
    _ID42407::_ID41104( level._ID794, 600 );

    for (;;)
    {
        var_1 = _func_0F4( self._ID740, level._ID794._ID740 );
        var_2 = var_1 - _func_0C3( self._ID740[2] - level._ID794._ID740[2] );

        if ( var_2 < 40 )
            self _meth_826D();
        else
        {
            self _meth_826C( level._ID794 );
            var_3 = _func_0B9( 4, 7 );

            for ( var_4 = 0; var_4 < var_3; var_4++ )
            {
                self _meth_8272();
                wait 0.35;
            }

            wait(_func_0BA( 0.2, 0.5 ));
            var_3 = _func_0B9( 4, 7 );

            for ( var_4 = 0; var_4 < var_3; var_4++ )
            {
                self _meth_8272();
                wait 0.35;
            }

            if ( var_0 )
            {
                var_5 = level._ID794 _meth_80AF();
                var_6 = ( self._ID740[0], self._ID740[1], var_5[2] );
                var_7 = _func_06D( self._ID740, level._ID794 _meth_80AF(), 0 );

                if ( var_1 > 600 || var_7["fraction"] < 1 )
                {
                    _ID42407::_ID41104( level._ID794, 600 );
                    continue;
                }
            }

            level._ID794 _meth_8057( level._ID794._ID486 + 1000, self._ID740 );
        }

        wait(_func_0BA( 0.2, 0.5 ));
    }
}

_ID47943()
{
    self endon( "death" );
    self endon( "bmp_aim_at_player" );
    var_0 = _func_1A2( "bmp_blizzard_target", "targetname" );

    for (;;)
    {
        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            self _meth_826C( var_0[var_1] );
            self waittill( "turret_on_target" );
            wait(_func_0BA( 10, 15 ));
        }
    }
}

_ID54051()
{
    if ( _func_02F( self._ID922 ) )
    {
        if ( self._ID922 == "truck_guys" )
            return;
    }

    if ( !_func_02F( self._ID31460 ) )
        return;

    self endon( "death" );
    level._ID28543 _ID42407::_ID41104( self, 300 );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    if ( _ID42407::_ID45216( 1 ) )
        thread _unknown_0D0C();
}

_ID46250()
{
    level._ID794 endon( "stealth_takedown_started" );
    level endon( "said_lets_split_up" );
    self._ID511 = 0;
    self._ID11566 = undefined;
    self._ID486 = 1;
    level._ID28543._ID381 = 0;
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 _meth_81B2( level._ID28543._ID740 );
    level._ID28543._ID452 = 8;
    self._ID11566 = undefined;

    if ( !_func_02F( level._ID28543._ID51797 ) )
        level._ID28543._ID51797 = 1;
    else
        level._ID28543._ID51797++;

    self waittill( "death" );
    level._ID28543._ID51797--;

    if ( level._ID28543._ID51797 < 1 )
    {
        level._ID28543._ID381 = 1;
        level._ID28543 _ID42407::_ID12445();
    }
}

_ID52815()
{
    var_0[3] = _func_1A5();
    var_0[3]._ID53757 = "west_base_guys_trigger";
    var_0[3]._ID45340 = "ridge_patroler_dead";
    _ID42237::_ID3350( var_0, ::_unknown_0E07 );
    var_1 = [];
    var_1[var_1.size] = "north_patroler";
    var_1[var_1.size] = "north_patroler_buddy";
    var_1[var_1.size] = "north_patroler2";
    var_1[var_1.size] = "north_patroler_buddy2";

    if ( _ID42237::_ID14385( "truckguys_dead" ) )
    {
        var_1[var_1.size] = "center_road_patrol";
        var_1[var_1.size] = "center_road_patrol_buddy";
        var_1[var_1.size] = "center_road_patrol2";
        var_1[var_1.size] = "center_road_patrol_buddy2";
    }

    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = _func_1A1( var_3, "script_noteworthy" );

        if ( _func_02F( var_4 ) )
        {
            var_4._ID216 = 1;
            var_4 = var_4 _ID42407::_ID35014();
        }
    }

    var_clear_3
    var_clear_0
}

_ID54520()
{
    if ( _ID42237::_ID14385( self._ID45340 ) )
        _func_1A1( self._ID53757, "targetname" ) notify( "trigger" );
}

_ID43421()
{
    _func_10C( "player" );
    level._ID794 _meth_8183( "player" );
    _func_10F( "player", "axis", 500 );
    _ID42237::_ID14413( "done_with_stealth_camp" );
    _func_10F( "player", "axis", 0 );
}

_ID49362( var_0 )
{
    level endon( "starting_hanger_backdoor_path" );
    level endon( "kill_variable_blizzard" );
    level endon( "custom_blizzard" );
    _ID42237::_ID14402( "blizzard_start" );
    var_1 = 1;
    var_2 = 1;

    for (;;)
    {
        var_3 = _func_0BA( 2, 5 );

        if ( var_1 )
        {
            var_1 = !var_1;

            if ( _func_02F( var_0 ) )
                var_3 = var_0;
        }

        while ( _ID42237::_ID14385( "player_indoors" ) )
            wait 0.25;

        _ID49359::_ID48147( var_2 );
        wait(var_3);

        if ( _func_0B7( 2 ) == 0 || _ID42237::_ID14385( "blizzard_intensity_extreme" ) )
            wait(_func_0BA( 1, 3 ));
        else
            wait(_func_0BA( 7, 9 ));

        if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
        {
            var_3 = _func_0BA( 1, 3 );

            while ( _ID42237::_ID14385( "player_indoors" ) )
                wait 0.25;

            _ID49359::_ID52737( var_2 );

            if ( _ID42237::_ID14385( "blizzard_intensity_extreme" ) )
            {
                wait(_func_0BA( 4, 6 ));
                continue;
            }

            wait(var_3);
        }
    }
}

_ID52403( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( var_0 );
    var_3 = _ID42407::_ID15617( level._ID28543._ID740 );
    var_4 = _func_0F3( var_3._ID740, level._ID28543._ID740 );

    if ( var_4 > var_2 )
    {
        var_1 = _func_1A1( var_1, "targetname" );
        level._ID28543 _meth_81D1( var_1._ID740, var_1._ID65 );
    }
    else
    {

    }
}

_ID52445()
{
    _ID42237::_ID14413( "satbuilding_smoker_dead" );
    _ID42237::_ID14413( "satbuilding_patroller_dead" );
    _ID42237::_ID14413( "southeast_patroller_dead" );
    _ID42237::_ID14413( "fence_walker_dead" );
    _ID42237::_ID14402( "satbuilding_area_guys_dead" );
}

_ID43967()
{
    waitframe;
    waitframe;

    if ( !_ID42237::_ID14385( "player_rides_snowmobile" ) )
    {
        if ( !_ID42237::_ID14385( "player_in_hanger" ) )
        {
            thread _unknown_10C9();
            _ID42237::_ID14413( "player_in_hanger" );
            _ID42407::_ID24584( 1 );
            wait 1.5;
        }

        if ( !_ID42237::_ID14385( "start_busted_music" ) )
        {
            thread _unknown_10E1();
            _ID42237::_ID14413( "start_busted_music" );
            wait 0.5;
            _ID42407::_ID24584( 1 );
            wait 1.25;
            _ID42407::_ID24587( "mus_cliffhanger_satellite_busted" );
        }

        if ( !_ID42237::_ID14385( "start_big_explosion" ) )
        {
            _ID42237::_ID14413( "start_big_explosion" );
            _ID42407::_ID24584( 0.5 );
            wait 0.75;
            _ID42237::_ID14413( "hanger_slowmo_ends" );
        }

        thread _unknown_1123();
        _ID42237::_ID14413( "player_rides_snowmobile" );
        _ID42407::_ID24584( 2 );
        wait 2.25;
    }

    thread _unknown_1132();
    _ID42237::_ID14413( "snowmobile_fog_clears" );
    wait 2.25;
    _ID42407::_ID24584( 2 );
    _ID42475::_ID34575( "aud_start_mix_snowmobile_descent" );
    level._ID794 thread _ID42407::_ID27079( "mus_cliffhanger_snowmobile_descent" );
}

_ID52294()
{
    level endon( "snowmobile_fog_clears" );
    var_0 = "mus_cliffhanger_snowmobile";
    var_1 = _ID42407::_ID24586( var_0 );

    for (;;)
    {
        _ID42407::_ID24587( var_0 );
        wait(var_1);
    }
}

_ID52129()
{
    level endon( "player_rides_snowmobile" );
    var_0 = "mus_cliffhanger_escape";
    var_1 = _ID42407::_ID24586( var_0 );

    for (;;)
    {
        _ID42407::_ID24587( var_0 );
        wait(var_1);
    }
}

_ID43495()
{
    level endon( "start_busted_music" );
    var_0 = "mus_cliffhanger_satellite";
    var_1 = _ID42407::_ID24586( var_0 );

    for (;;)
    {
        _ID42407::_ID24587( var_0 );
        wait(var_1);
    }
}

_ID48803()
{
    level endon( "player_in_hanger" );
    _ID42237::_ID14413( "first_two_guys_in_sight" );

    for (;;)
    {
        thread _unknown_11F2();
        _ID42237::_ID14413( "_stealth_spotted" );
        _ID42407::_ID24584( 0.2 );
        wait 0.5;
        thread _unknown_1218();
        _ID42475::_ID34575( "aud_start_mix_stealth_busted" );
        _ID42237::_ID14426( "_stealth_spotted" );
        _ID42475::_ID34575( "aud_stop_mix_stealth_busted" );
        _ID42407::_ID24584( 3 );
        wait 3.25;
    }
}

_ID48846()
{
    level endon( "player_in_hanger" );
    level endon( "_stealth_spotted" );
    var_0 = "mus_cliffhanger_stealth";
    var_1 = _ID42407::_ID24586( var_0 );

    if ( var_1 > 0 )
    {
        for (;;)
        {
            _ID42407::_ID24587( var_0 );
            wait(var_1);
        }
    }
}

_ID52010()
{
    level endon( "player_in_hanger" );
    level endon( "_stealth_spotted" );
    var_0 = "mus_cliffhanger_stealth_busted";
    var_1 = _ID42407::_ID24586( var_0 );

    for (;;)
    {
        _ID42407::_ID24587( var_0 );
        wait(var_1);
    }
}

_ID43549()
{
    var_0 = _func_1A1( "welding_light", "targetname" );
    var_0 _meth_81EB( 0 );
    _ID42237::_ID14413( "starting_hanger_backdoor_path" );
    var_1 = _func_1A1( "mig_origin", "targetname" );
    var_2 = _ID42407::_ID52253( "welder_wing" );
    var_2._ID3189 = "welder_wing";
    var_2 _ID42407::_ID17509();
    var_2.cheat._ID48626 = 1;
    var_2._ID49 = 1;
    var_2._ID511 = 1;
    var_2 _meth_801D( "machinery_welder_handle", "tag_inhand" );
    var_2 _meth_801D( "h2_civ_work_headgear_earmuffs" );
    var_2._ID18272 = "h2_civ_work_headgear_earmuffs";
    var_2._ID486 = 6;
    var_2 _ID42407::_ID32265( "death_back" );
    var_1 thread _ID42259::_ID3044( var_2, "welding", "stop_welding" );
    var_3 = _ID42407::_ID52253( "welder_engine" );
    var_3._ID3189 = "welder_engine";
    var_3 _ID42407::_ID17509();
    var_3.cheat._ID48626 = 1;
    var_3._ID49 = 1;
    var_3._ID511 = 1;
    var_3 _meth_801D( "machinery_welder_handle", "tag_inhand" );
    var_3 _meth_801D( "h2_civ_work_headgear_earmuffs" );
    var_3._ID18272 = "h2_civ_work_headgear_earmuffs";
    var_3._ID486 = 6;
    var_3 _ID42407::_ID32265( "death_back" );
    var_1 thread _ID42259::_ID3044( var_3, "welding", "stop_welding" );
    thread _unknown_13E8( var_3, "tag_tip_fx" );
    thread _unknown_13EA( var_3 );
    thread _unknown_1412( var_2, "tag_tip_fx" );
    thread _unknown_13ED( var_2 );
}

_ID14520( var_0 )
{
    var_1 = _func_1A1( "welding_light", "targetname" );
    var_0 waittill( "death" );
    var_1 _ID42237::_ID36516( "scn_cliffhanger_welders_loop" );
    var_1 _meth_81EB( 0 );
}

_ID53789( var_0 )
{
    var_0 waittill( "death" );
}

_ID54625( var_0, var_1 )
{
    var_0 endon( "death" );
    var_2 = 0.2;
    var_3 = 1.5;
    var_4 = 0;

    for (;;)
    {
        var_4 = _func_0B9( 1, 10 );

        while ( var_4 )
        {
            wait(_func_0BA( 0.05, 0.1 ));
            _func_157( level._ID1426["welding_runner"], var_0, var_1 );
            var_0 _meth_80A1( "elec_spark_welding_bursts" );
            var_4--;
            wait(_func_0BA( 0.05, 0.1 ));
        }

        wait(_func_0BA( var_2, var_3 ));
    }
}

_ID14519( var_0, var_1 )
{
    var_0 endon( "death" );
    var_2 = _func_1A1( "welding_light", "targetname" );
    var_2 _meth_8046( ( 0.909804, 0.482353, 0.2 ) );
    var_2 thread _ID42237::_ID27000( "scn_cliffhanger_welders_loop" );
    var_3 = 0.2;
    var_4 = 1.5;
    var_5 = 2;
    var_6 = 0;
    var_7 = var_5;
    var_8 = 0;
    var_9 = undefined;
    var_10 = undefined;
    var_11 = 0;

    for (;;)
    {
        var_8 = _func_0B9( 1, 10 );

        while ( var_8 )
        {
            wait(_func_0BA( 0.05, 0.1 ));
            _func_157( level._ID1426["welding_runner"], var_0, var_1 );
            var_0 _meth_80A1( "elec_spark_welding_bursts" );

            if ( var_11 )
                var_9 _meth_8059();

            var_2 _meth_81EB( var_5 );
            var_8--;
            wait(_func_0BA( 0.05, 0.1 ));
            var_2 _meth_81EB( var_6 );
        }

        var_2 _meth_81EB( var_6 );

        if ( var_11 )
            var_9 _meth_805A();

        wait(_func_0BA( var_3, var_4 ));
    }
}

_ID49793()
{
    _ID42237::_ID14413( "mig_landing" );
    _ID42475::_ID34575( "aud_mix_jet_landing" );
    var_0 = _func_1A1( "mig1", "targetname" );
    var_1 = var_0 _ID42407::_ID35192();
    var_1 notify( "stop_contrails" );
    var_1 _ID42413::_ID48392( 1 );
    var_1 _ID42237::_ID10187( 10, _ID42413::_ID48392, 0 );
    var_1._ID3189 = "mig";
    var_2 = _func_0C8( "jet_landing", "targetname" );
    var_1 thread _ID42407::_ID27079( "scn_cliffhanger_jet_landing" );
    var_2 _ID42259::_ID3111( var_1, "mig_landing1" );
    var_1 notify( "stop_engineeffects" );
    _ID42237::_ID14413( "give_c4_obj" );
    var_1 _meth_80B7();
}

_ID49693()
{
    _ID42237::_ID14400( "climb_group_flag" );
    _ID42237::_ID14400( "snow_doors" );
    _ID42237::_ID14400( "light_storm" );
    _ID42237::_ID14400( "found_fueling_station" );
    _ID42237::_ID14400( "brought_friends" );
    _ID42237::_ID14400( "script_attack_override" );
    _ID42237::_ID14400( "mission_fail" );
    _ID42237::_ID14400( "cliffhanger_player_has_put_his_snowgoggles" );
    _ID42237::_ID14400( "clifftop_fire_position" );
    _ID42237::_ID14400( "clifftop_firefight" );
    _ID42237::_ID14400( "clifftop_area_done" );
    _ID42237::_ID14400( "clifftop_patrollers_spawned" );
    _ID42237::_ID14400( "clifftop_patrol1_dead" );
    _ID42237::_ID14400( "clifftop_patrol2_dead" );
    _ID42237::_ID14400( "hk_gives_chase" );
    _ID42237::_ID14400( "soap_cliff_climb_finished" );
    _ID42237::_ID14400( "tent1_patrollers_dead" );
    _ID42237::_ID14400( "tent1_lookouts_dead" );
    _ID42237::_ID14400( "blue_bldg_guys_dead" );
    _ID42237::_ID14400( "2story_roof_guys_dead" );
    _ID42237::_ID14400( "2story_slackers_dead" );
    _ID42237::_ID14400( "party_guys_dead" );
    _ID42237::_ID14400( "radar_bldg_guys_dead" );
    _ID42237::_ID14400( "container_guys_dead" );
    _ID42237::_ID14400( "clifftop_guys_move" );
    _ID42237::_ID14400( "delay_weapon_switch" );
    _ID42237::_ID14400( "first_encounter_dialog_starting" );
    _ID42237::_ID14400( "second_encounter_dialog_starting" );
    _ID42237::_ID14400( "said_two_tangos_in_front" );
    _ID42237::_ID14400( "c4_plant" );
    _ID42237::_ID14400( "blizzard_start" );
    _ID42237::_ID14400( "conversation_active" );
    _ID42237::_ID14400( "someone_became_alert" );
    _ID42237::_ID14400( "said_lets_split_up" );
    _ID42237::_ID14400( "dialog_danger_interupt" );
    _ID42237::_ID14400( "player_has_been_seen" );
    _ID42237::_ID14400( "player_on_runway_said_4_warnings" );
    _ID42237::_ID14400( "kill_variable_blizzard" );
    _ID42237::_ID14400( "said_thermal" );
    _ID42237::_ID14400( "player_killed_someone" );
    _ID42237::_ID14400( "one_c4_planted" );
    _ID42237::_ID14400( "mig_c4_planted" );
    _ID42237::_ID14400( "fuel_c4_planted" );
    _ID42237::_ID14400( "said_they_are_respawning" );
    _ID42237::_ID14400( "truck_guys_alerted" );
    _ID42237::_ID14400( "said_path_clear" );
    _ID42237::_ID14400( "soap_is_back" );
    _ID42237::_ID14400( "whiteout_started" );
    _ID42237::_ID14400( "done_with_stealth_camp" );
    _ID42237::_ID14400( "satbuilding_area_guys_dead" );
    _ID42237::_ID14400( "player_detonate" );
    _ID42237::_ID14400( "fence_walker_dead" );
    _ID42237::_ID14400( "satbuilding_smoker_dead" );
    _ID42237::_ID14400( "southeast_patroller_dead" );
    _ID42237::_ID14400( "satbuilding_patroller_dead" );
    _ID42237::_ID14400( "jeep_blown_up" );
    _ID42237::_ID14400( "jeep_stopped" );
    _ID42237::_ID14400( "price_moving_to_hanger" );
    _ID42237::_ID14400( "start_big_explosion" );
    _ID42237::_ID14400( "end_big_explosion" );
    _ID42237::_ID14400( "player_reloading" );
    _ID42237::_ID14400( "capture_enemies_dead" );
    _ID42237::_ID14400( "cliffhanger_soap_told_player_to_go_upstairs" );
    _ID42237::_ID14400( "cliffhanger_soap_told_player_to_get_to_hangar" );
    _ID42237::_ID14400( "base_c4_order" );
    _ID42237::_ID14400( "base_c4_planted" );
    _ID42237::_ID14400( "base_c4_price_done" );
    _ID42237::_ID14400( "icepick_noturningback" );
    _ID42237::_ID14400( "icepick_fight_stopshort" );
    _ID42237::_ID14400( "icepick_guys_driver_dead" );
    _ID42237::_ID14400( "icepick_guys_passenger_dead" );
    _ID42237::_ID14400( "icepick_brawl_stopshort" );
    _ID42237::_ID14400( "locker_room_noturningback" );
    _ID42237::_ID14400( "lockerroom_moment" );
    _ID42237::_ID14400( "lockerroom_defender_dead" );
    _ID42237::_ID14400( "locker_room_brawl_stopshort" );
    _ID42237::_ID14400( "locker_brawl_becomes_uninteruptable" );
    _ID42237::_ID14400( "start_busted_music" );
    _ID42237::_ID14400( "hanger_slowmo_ends" );
    _ID42237::_ID14400( "truckride_players_in_truck" );
    _ID42237::_ID14400( "escape_with_soap" );
    _ID42237::_ID14400( "tarmac_escape" );
    _ID42237::_ID14400( "hanger_reinforcements" );
    _ID42237::_ID14400( "tarmac_snowmobiles_spawned" );
    _ID42237::_ID14400( "price_ditches_player" );
    _ID42237::_ID14400( "player_gets_on_snowmobile" );
    _ID42237::_ID14400( "avalanche_begins" );
    _ID42237::_ID14400( "stay_away_from_bmp" );
    _ID42237::_ID14400( "first_two_guys_in_sight" );
    _ID42237::_ID14400( "check_heart_beat_sensor" );
    _ID42237::_ID14400( "price_starts_moving" );
    _ID42237::_ID14400( "clifftop_snowmobile_guys_die" );
    _ID42237::_ID14400( "player_snowmobile_available" );
    _ID42237::_ID14400( "price_enters_heli" );
    _ID42237::_ID14400( "avalanche_ride_starts" );
    _ID42237::_ID14400( "ending_heli_flies_in" );
    _ID42237::_ID14400( "bad_heli_missile_killed" );
    _ID42237::_ID14400( "player_boards" );
    _ID42237::_ID14400( "player_survived_minijump" );
    _ID42237::_ID14400( "h2_ending_begins" );
    _ID42237::_ID14400( "h2_ending_ends" );
}

_ID48673()
{
    self endon( "death" );
    self _meth_81B2( self._ID740 );
    self._ID452 = 64;
    _ID42237::_ID14413( "near_camp_entrance" );
    _ID42407::_ID13027( "_stealth_normal" );
    _ID42338::_ID26367();
}

_ID49184()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16638( "struct_crate_patroller_enterhut", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( var_1 == self )
            break;
    }

    maps\cliffhanger_stealth::_ID46887();
}

_ID52747()
{
    self endon( "death" );
    self _meth_81B2( self._ID740 );
    self._ID452 = 64;
    _ID42237::_ID14413( "dialog_take_point" );
    _ID42407::_ID13027( "_stealth_normal" );
    _ID42338::_ID26367();
}

_ID50551()
{
    self endon( "death" );
    self endon( "enemy" );

    for (;;)
    {
        if ( _func_0F5( self._ID740, level._ID794._ID740 ) < _func_0ED( self._ID399 ) )
        {
            self._ID411 = 0.01;
            return;
        }

        wait 0.5;
    }
}

_ID43303()
{
    self._ID400 = 90;
    self._ID398 = 90;
    self._ID399 = 90;
}

_ID50741()
{
    self waittill( "death",  var_0  );

    if ( !_func_02F( var_0 ) )
        return;

    if ( _func_1B3( var_0 ) )
        _ID42237::_ID14402( "player_killed_one_first_two_encounters" );
}

_ID53997()
{
    self endon( "death" );

    if ( self._ID922 == "patrollers_1_rightguy" )
        _unknown_1BA3( "head_opforce_arctic_b" );

    var_0 = _ID42389::_ID36321();

    if ( _ID42237::_ID14385( var_0 ) )
        return;

    level endon( var_0 );
    _ID42237::_ID14413( "clifftop_guys_move" );
    waitframe;
    _ID42407::_ID13027( "_stealth_normal" );
    self notify( "stop_idle_proc" );
    self._ID31391 = 1;
    self._ID1191 = self._ID31388;
    thread _ID42338::_ID26367();
}

_ID32651( var_0 )
{
    if ( _func_02F( self._ID18304 ) )
        self _meth_802A( self._ID18304 );

    self _meth_801D( var_0, "", 1 );
    self._ID18304 = var_0;
}

_ID47496()
{
    var_0 = [];
    var_0["stand"] = 0;
    var_0["crouch"] = -800;
    var_0["prone"] = -500;
    var_1 = [];
    var_1["stand"] = 200;
    var_1["crouch"] = 0;
    var_1["prone"] = 0;
    var_2 = [];
    var_2["stand"] = 200;
    var_2["crouch"] = 0;
    var_2["prone"] = 0;
    _ID42389::_ID36318( var_0, var_1, var_2 );
}

_ID43225()
{
    var_0 = [];
    var_0[var_0.size] = "scoutsniper_ru1_passcig";
    var_0[var_0.size] = "scoutsniper_ru2_whoseturnisit";
    var_0[var_0.size] = "scoutsniper_ru1_wakeup";
    var_0[var_0.size] = "scoutsniper_ru2_buymotorbike";
    var_0[var_0.size] = "scoutsniper_ru1_tooexpensive";
    var_0[var_0.size] = "scoutsniper_ru2_illtakecareofit";
    var_0[var_0.size] = "scoutsniper_ru1_otherteam";
    var_0[var_0.size] = "scoutsniper_ru2_notwandering";
    var_0[var_0.size] = "scoutsniper_ru1_wandering";
    var_0[var_0.size] = "scoutsniper_ru2_zahkaevspayinggood";
    var_0[var_0.size] = "scoutsniper_ru1_wasteland";
    var_0[var_0.size] = "scoutsniper_ru2_whoseturnisit";
    var_0[var_0.size] = "scoutsniper_ru1_onourway";
    var_0[var_0.size] = "scoutsniper_ru1_passcig";
    var_0[var_0.size] = "scoutsniper_ru2_youidiot";
    var_0[var_0.size] = "scoutsniper_ru1_wakeup";
    var_0[var_0.size] = "scoutsniper_ru2_call";
    var_0[var_0.size] = "scoutsniper_ru1_tooexpensive";
    var_0[var_0.size] = "scoutsniper_ru2_americagoingtostartwar";
    var_0[var_0.size] = "scoutsniper_ru4_raise";
    var_0[var_0.size] = "scoutsniper_ru2_sendsomeonetocheck";
    var_0[var_0.size] = "scoutsniper_ru4_ifold";
    var_0[var_0.size] = "scoutsniper_ru2_andreibringingfood";
    var_0[var_0.size] = "scoutsniper_ru4_thisonesheavy";
    var_0[var_0.size] = "scoutsniper_ru2_quicklyaspossible";
    var_0[var_0.size] = "scoutsniper_ru4_didnteatbreakfast";
    var_0[var_0.size] = "scoutsniper_ru2_yescomrade";
    var_0[var_0.size] = "scoutsniper_ru4_takenzakhaevsoffer";
    var_0[var_0.size] = "scoutsniper_ru2_clearrotorblades";
    var_0[var_0.size] = "scoutsniper_ru2_radiationdosimeters";
    var_0[var_0.size] = "scoutsniper_ru4_canceltransactions";
    var_0[var_0.size] = "scoutsniper_ru2_dontbelieveatall";
    var_0[var_0.size] = "scoutsniper_ru4_cantwaitforshiftend";
    var_0[var_0.size] = "scoutsniper_ru2_ok";
    var_0[var_0.size] = "scoutsniper_ru4_hopeitdoesntrain";
    var_0[var_0.size] = "scoutsniper_ru2_professionaljob";
    level._ID51755 = var_0;
}

_ID47620()
{
    level._ID45921 = undefined;
    var_0 = undefined;
    _unknown_1D61();
    var_1 = _func_0E2( "axis" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_unknown_1E21 );
    level._ID49206 = _func_0B7( level._ID51755.size );

    while ( !_ID42237::_ID14385( "done_with_stealth_camp" ) )
    {
        _ID42237::_ID14426( "_stealth_spotted" );
        var_2 = undefined;
        var_3 = undefined;
        var_4 = _func_0DE( "axis" );
        var_5 = _ID42237::_ID15566( _ID42407::_ID16145(), var_4 );

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            if ( _func_02F( var_5[var_6]._ID31092 ) )
            {
                var_7 = var_5[var_6]._ID31092;
                var_2 = var_5[var_6];

                if ( var_2 _ID42407::_ID13023( "_stealth_normal" ) )
                {
                    if ( !var_2 _ID42407::_ID13019( "_stealth_normal" ) )
                        continue;
                }

                var_3 = _unknown_1ED9( var_5, var_6, var_7 );

                if ( !_func_02F( var_3 ) )
                    continue;

                if ( var_3 _ID42407::_ID13023( "_stealth_normal" ) )
                {
                    if ( !var_3 _ID42407::_ID13019( "_stealth_normal" ) )
                        continue;
                }

                var_8 = _func_0F3( var_3._ID740, var_2._ID740 );

                if ( var_8 > 220 )
                {
                    continue;
                    continue;
                }

                break;
            }
        }

        if ( _func_02F( var_3 ) )
        {
            if ( _func_02F( level._ID45921 ) )
            {
                if ( level._ID45921 == var_2 )
                    var_0 = var_3;
                else
                    var_0 = var_2;
            }
            else
                var_0 = var_2;

            var_0 _unknown_1F24( level._ID51755[level._ID49206] );
            level._ID49206++;

            if ( level._ID49206 >= level._ID51755.size )
                level._ID49206 = 0;

            level._ID45921 = var_0;
            wait 0.5;
            continue;
        }

        wait 2;
    }
}

_ID44470()
{
    if ( !_func_02F( self._ID31092 ) )
        return;

    self endon( "death" );
    _ID42407::_ID13024( "mission_dialogue_kill" );
    _unknown_1F54();
    _ID42407::_ID13025( "mission_dialogue_kill" );
}

_ID48118()
{
    self endon( "death" );
    self endon( "event_awareness" );
    self endon( "enemy" );
    _ID42237::_ID14415( "_stealth_spotted", "_stealth_found_corpse" );
}

_ID47194( var_0 )
{
    if ( _ID42407::_ID20503() )
        return;

    var_1 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_1 endon( "death" );
    thread _ID42407::_ID10281( var_1, "sounddone" );
    var_1._ID740 = self._ID740;
    var_1._ID65 = self._ID65;
    var_1 _meth_8053( self );
    var_1 _meth_80A1( var_0, "sounddone" );
    _unknown_1FEB( var_1 );

    if ( _func_1A7( self ) )
        self notify( "play_sound_done" );

    var_1 _meth_80B3();
    wait 0.05;
    var_1 _meth_80B7();
}

_ID54710( var_0 )
{
    self endon( "death" );
    self endon( "mission_dialogue_kill" );
    var_0 waittill( "sounddone" );
}

_ID54082( var_0, var_1, var_2 )
{
    for ( var_3 = var_1 + 1; var_3 < var_0.size; var_3++ )
    {
        if ( _func_02F( var_0[var_3]._ID31092 ) )
        {
            if ( var_0[var_3]._ID31092 == var_2 )
                return var_0[var_3];
        }
    }

    return undefined;
}

_ID47686()
{
    var_0 = [];
    var_0["stand"] = 0;
    var_0["crouch"] = -300;
    var_0["prone"] = -500;
    var_1 = [];
    var_1["stand"] = 0;
    var_1["crouch"] = 0;
    var_1["prone"] = 0;
    var_2 = [];
    var_2["stand"] = 200;
    var_2["crouch"] = 0;
    var_2["prone"] = 0;
    _ID42389::_ID36318( var_0, var_1, var_2 );
}

_ID51051()
{
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_0 _ID42389::_ID36236( self, "lean_balcony", "lean_react" );
}

_ID43782()
{
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_0 _ID42389::_ID36236( self, "sit_idle", "sit_react" );
}

_ID49895( var_0 )
{
    _ID42237::_ID14413( var_0 );
    thread _unknown_210D();
}

_ID46215()
{
    level notify( "camp_save" );
    _ID42407::_ID4439();
}

_ID50654()
{
    var_0 = _func_1A1( "force_ik_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_1B3( var_1 ) && !var_1 animscripts\utility::_ID20775() )
            var_1 _meth_85AB( 1 );
    }
}

_ID45429()
{
    var_0 = _func_1A1( "force_off_ik_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_2A5( var_1 ) )
            var_1 _meth_85AB( 0 );
    }
}

_ID50625( var_0 )
{
    if ( _ID42237::_ID14385( "mission_fail" ) )
        return;

    _ID42237::_ID14402( "mission_fail" );
    _func_034( "ui_deadquote", level._ID36699[var_0] );
    _ID42407::_ID23778();
}

_ID45244()
{
    if ( !_func_02F( level._ID53559 ) )
        level._ID53559 = 0;

    level._ID53559++;
    self._ID31190 = "base_c4_num_" + level._ID53559;
    _ID42237::_ID14400( self._ID31190 );
    waitframe;

    if ( self._ID922 == "mig_c4" )
        thread _unknown_223D();
    else
    {
        self _meth_8059();
        thread _ID42407::_ID1854( self._ID31190 );
    }

    self _meth_80C6();
    thread _ID42407::_ID43848( 0.86, [ "trigger" ] );
    self _meth_80E1( "HINT_ACTIVATE" );
    thread _ID42237::_ID44574( level._ID794, level._ID36699["hint_c4_plant"], level._ID36699["hint_c4_plant_keyboard_mouse"], "trigger" );
    self waittill( "trigger" );
    self _meth_80C7();
    level._ID794 thread _unknown_3723();
    _ID42237::_ID14413( "c4_placed" );
    thread _ID42407::_ID27079( "detpack_plant" );
    _ID42237::_ID14402( self._ID31190 );
    level._ID53559--;

    if ( self._ID922 == "mig_c4" )
        _ID42237::_ID14402( "mig_c4_planted" );
    else
        _ID42237::_ID14402( "fuel_c4_planted" );

    _ID42237::_ID14402( "one_c4_planted" );
    _func_0DB( "compass", 1 );
    _func_0DB( "actionSlotsHide", 0 );
    _func_0DB( "hud_showStance", 1 );
    _func_0DB( "ammoCounterHide", 0 );
    _ID42237::_ID14402( "base_c4_planted" );
    _ID42237::_ID14413( "player_detonate" );
    var_0 = _func_1A2( "possible_c4_models", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID51988()
{
    var_0 = _func_1A2( "possible_c4_models", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_4 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_4 _meth_8059();
    var_4 _meth_80B8( "weapon_c4_obj" );
    self._ID740 = var_4._ID740;

    for ( var_5 = undefined; !_ID42237::_ID14385( "mig_c4_planted" ); var_4 = var_5 )
    {
        var_5 = _ID42237::_ID16182( level._ID794._ID740, var_0 );

        if ( var_4 != var_5 )
        {
            var_4 _meth_805A();
            var_5 _meth_8059();
            var_5 _meth_80B8( "weapon_c4_obj" );
            self._ID740 = var_5._ID740;
        }

        wait 0.05;
    }

    var_5 _meth_80B8( "weapon_c4" );
    var_5 thread _ID43691::_ID27192();
}

_ID43316( var_0 )
{
    self notify( "follow_player" );
    self endon( "follow_player" );
    self endon( "stop_following_player" );
    self._ID452 = var_0 * 0.9;

    for (;;)
    {
        _ID42237::_ID14426( "_stealth_spotted" );

        if ( _func_0F3( level._ID794._ID740, self._ID740 ) > var_0 )
            self _meth_81B2( level._ID794._ID740 );

        wait 0.5;
    }
}

_ID54243( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = level._ID35897;

    var_1 = _ID42237::_ID16640( "start_point", "targetname" );
    var_2 = [];
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4._ID922 != var_0 )
            continue;

        var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0
    level._ID794 _meth_8343( var_2[0]._ID740 );
    level._ID794 _meth_8345( var_2[0]._ID65 );
}

_ID51401()
{
    wait 2;
    _unknown_2675( "obj_satellite", &"CLIFFHANGER_OBJ_COMPUTER", ( 0, 0, 0 ) );
    _unknown_2696( "obj_satellite", "active", 0 );
}

_ID52119()
{
    wait 4;
    _unknown_269B( "obj_follow_price", &"CLIFFHANGER_OBJ_FOLLOW", ( 0, 0, 0 ) );
    _unknown_26BC( "obj_follow_price", "current", 0 );
    _unknown_26ED( "obj_follow_price", 1 );
    _ID42237::_ID14413( "reached_top" );
    _unknown_2736( "obj_follow_price", level._ID28543, ( 0, 0, 60 ) );
    _ID42237::_ID14413( "price_go_to_climb_ridge" );
    _unknown_26F7( "obj_follow_price", "done" );
}

_ID48405()
{
    var_0 = _ID42407::_ID16268( "give_c4_obj" );
    var_1 = ( -5164, -24502.5, 999.5 );
    _unknown_2705( "obj_enter", &"CLIFFHANGER_OBJ_BASE", var_1 );
    _unknown_2725( "obj_enter", "current" );
    _unknown_2756( "obj_enter", 1 );
    _ID42237::_ID14413( "give_c4_obj" );
    _unknown_2743( "obj_enter", "done" );
}

_ID53454()
{
    var_0 = _func_1A1( "fuel_tank_c4", "script_noteworthy" );
    var_1 = var_0._ID740;
    _unknown_274D( "obj_fuel", &"CLIFFHANGER_OBJ_C4", var_1 );
    _unknown_276E( "obj_fuel", "current" );
    _unknown_279F( "obj_fuel", 1 );
    var_2 = _func_1A1( "mig_c4", "script_noteworthy" );
    var_1 = var_2._ID740;
    _unknown_2780( "obj_mig", &"CLIFFHANGER_OBJ_C4_MIG", var_1 );
    _unknown_27C6( "obj_mig", 1 );
    _unknown_27AB( "obj_mig", "current" );
    level _ID42407::_ID1985( _ID42237::_ID14413, "fuel_c4_planted" );
    level _ID42407::_ID1890( ::_unknown_27C3, "obj_fuel", "done" );
    thread _ID42407::_ID11231();
    level _ID42407::_ID1985( _ID42237::_ID14413, "mig_c4_planted" );
    level _ID42407::_ID1890( ::_unknown_27E3, "obj_mig", "done" );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "base_c4_planted" );
}

_ID52606()
{
    var_0 = _func_1A1( "fuel_tank_c4", "script_noteworthy" );
    var_1 = var_0._ID740;
    _unknown_27FE( "obj_fuel", &"CLIFFHANGER_OBJ_C4", var_1 );
    _unknown_281E( "obj_fuel", "current" );
    _unknown_284F( "obj_fuel", 1 );
    _ID42237::_ID14413( "fuel_c4_planted" );
    _unknown_283C( "obj_fuel", "done" );
}

_ID47089()
{
    var_0 = _func_1A1( "mig_c4", "script_noteworthy" );
    var_1 = var_0._ID740;
    _unknown_2846( "obj_mig", &"CLIFFHANGER_OBJ_C4_MIG", var_1 );
    _unknown_288C( "obj_mig", 1 );

    if ( !_ID42237::_ID14385( "mig_c4_planted" ) )
        _unknown_287B( "obj_mig", "current" );

    _ID42237::_ID14413( "mig_c4_planted" );
    _unknown_288F( "obj_mig", "done" );
}

_ID51337()
{
    var_0 = _func_1A1( "mig_c4", "script_noteworthy" );
    var_1 = var_0._ID740;
    _unknown_2899( "obj_mig", &"CLIFFHANGER_OBJ_FUEL_STATION", var_1 );
    _unknown_28DF( "obj_mig", 1 );

    if ( !_ID42237::_ID14385( "mig_c4_planted" ) )
        _unknown_28CD( "obj_mig", "current" );

    thread _unknown_3E2D();
    _ID42237::_ID14413( "mig_c4_planted" );
    _unknown_28E6( "obj_mig", "done" );
}

_ID51447()
{
    _ID42237::_ID14413( "cliffhanger_soap_told_player_to_get_to_hangar" );
    var_0 = _ID42407::_ID16268( "at_hanger_entrance" );
    var_1 = var_0._ID740;
    _unknown_28F6( "obj_goto_hanger", &"CLIFFHANGER_OBJ_GOTO_HANGER", var_1 );
    _unknown_2917( "obj_goto_hanger", "current" );
    _unknown_2948( "obj_goto_hanger", 1 );
    _ID42237::_ID14413( "at_hanger_entrance" );
    _unknown_2935( "obj_goto_hanger", "done" );
}

_ID44063()
{
    _ID42237::_ID14413( "player_on_backdoor_path" );
    _ID42237::_ID14413( "player_in_hanger" );
    _ID42237::_ID14413( "cliffhanger_soap_told_player_to_go_upstairs" );
    _unknown_298B( "obj_satellite", &"CLIFFHANGER_OBJ_COMPUTER" );
    _unknown_2967( "obj_satellite", "current" );
    _unknown_29C5( "obj_satellite", level._ID28543 );
    var_0 = _func_1A1( "dsm", "targetname" );
    _unknown_29C0( "obj_satellite", var_0._ID740 );
    _ID42237::_ID14413( "keyboard_used" );
    _unknown_299D( "obj_satellite", "done" );
}

_ID53089()
{
    _ID42237::_ID14413( "escape_with_soap" );

    if ( !_func_1A7( level._ID28543 ) )
        return;

    level._ID28543 endon( "death" );
    _unknown_29B6( "obj_exfiltrate", &"CLIFFHANGER_OBJ_EVACUATE", ( 0, 0, 0 ) );
    _unknown_2A29( "obj_exfiltrate", level._ID28543 );
    _unknown_29E1( "obj_exfiltrate", "current" );
    _ID42237::_ID14413( "player_slides_down_hill" );
    _unknown_2A48( "obj_exfiltrate", level._ID28543 );
    wait 2.1;
    _unknown_2A57( "obj_exfiltrate", level._ID28543 );
    _ID42237::_ID14413( "player_snowmobile_available" );
    _unknown_2A18( "obj_exfiltrate", "active", 0 );
}

_ID43733()
{
    if ( !_func_1A7( level._ID28543 ) )
        return;

    _unknown_2A28( "obj_snowmobile", &"CLIFFHANGER_OBJ_SNOWMOBILE", level._ID48727._ID740 + ( 0, 0, 48 ) );
    _unknown_2A49( "obj_snowmobile", "current" );
    _unknown_2A7A( "obj_snowmobile", 1 );
    _ID42237::_ID14413( "player_rides_snowmobile" );
    _ID42475::_ID34575( "aud_start_mix_snowmobile_ride" );
    _unknown_2A6F( "obj_snowmobile", "current" );
    _unknown_2A7C( "obj_snowmobile", "done", 0 );
    var_0 = _func_1A1( "objective_end_org", "targetname" );
    var_1 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_1 thread maps\cliffhanger_snowmobile_code::_ID53849();
    _func_1E3( 9, "current", &"CLIFFHANGER_OBJ_EXTRACT", ( 0, 0, 0 ) );
    _func_1E9( 9 );
    _func_1E7( 9, 1 );
    maps\cliffhanger_snowmobile_code::_ID45235( 9, "obj_1" );
    _ID42237::_ID14413( "player_starts_snowmobile_trip" );
    maps\cliffhanger_snowmobile_code::_ID45235( 9, "player_starts_snowmobile_trip" );
    _ID42237::_ID14413( "obj_2" );
    maps\cliffhanger_snowmobile_code::_ID45235( 9, "obj_2" );
    _ID42237::_ID14413( "obj_3" );
    maps\cliffhanger_snowmobile_code::_ID45235( 9, "obj_3" );
    _ID42237::_ID14413( "obj_4" );
    maps\cliffhanger_snowmobile_code::_ID45235( 9, "obj_4" );
    _ID42237::_ID14413( "obj_5" );
    maps\cliffhanger_snowmobile_code::_ID45235( 9, "obj_5" );
    _ID42237::_ID14413( "enemy_snowmobiles_wipe_out" );
    maps\cliffhanger_snowmobile_code::_ID45235( 9, "enemy_snowmobiles_wipe_out" );
    _ID42237::_ID14413( "player_reaches_hilltop" );
    _func_1E8( 9, var_1._ID740 );
    _func_1E8( 9, var_0._ID740 );
    _ID42237::_ID14413( "there_is_chopper" );
    _ID42407::_ID25327( 9 );
    _unknown_2B67( "obj_exfiltrate", "done", 0 );
    _func_0DB( "compass", "0" );
}

_ID48422( var_0, var_1, var_2 )
{
    _ID42237::_ID14400( var_0 );
    var_3 = _ID42407::_ID25268( var_0 );
    var_4 = _func_1A5();
    var_4._ID680 = var_0;
    var_4._ID19286 = var_3;
    var_4._ID36185 = "invisible";
    var_4._ID37557 = var_1;
    var_4._ID740 = var_2;
    var_4._ID47886 = 0;
    level._ID25349[var_0] = var_4;
    return var_4;
}

_ID51143( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];
    var_3._ID36185 = var_1;

    if ( _func_02F( var_2 ) )
        var_3._ID43631 = var_2;
    else
        var_3._ID43631 = 1;

    if ( !var_3._ID47886 )
    {
        _func_1E3( var_3._ID19286, var_3._ID36185, var_3._ID37557, var_3._ID740 );
        var_3._ID47886 = 1;
    }
    else if ( var_3._ID43631 )
        _func_1E5( var_3._ID19286, var_3._ID36185 );
    else
        _func_114( var_3._ID19286, var_3._ID36185 );

    if ( var_3._ID36185 == "done" )
        _ID42237::_ID14402( var_0 );
}

_ID45875( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID49034 = var_1;
    _func_1E7( _ID42407::_ID25268( var_0 ), var_2._ID49034 );
}

_ID45810( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID37557 = var_1;
    _func_115( var_2._ID19286, var_1 );
}

_ID54163( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID47623 = var_1;
    _func_1E8( var_2._ID19286, var_2._ID47623 );
    _func_0C7( var_2._ID19286, "" );
}

_ID54025( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    _func_0C7( var_2._ID19286, var_1 );
}

_ID49571( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];

    if ( !var_2 )
        _func_115( var_3._ID19286, var_1 );
    else
        _func_115( var_3._ID19286, var_1, var_2 );
}

_ID48160( var_0, var_1, var_2 )
{
    var_3 = _ID42407::_ID25268( var_0 );

    if ( _func_02F( var_2 ) )
        _func_194( var_3, var_1, var_2 );
    else
        _func_194( var_3, var_1 );
}

_ID43879()
{
    return undefined;
}

_ID46858()
{
    _func_14C( "machinery_welder_handle" );
    _func_14C( "h2_civ_work_headgear_earmuffs" );
    _func_14C( "com_propane_tank02_des_decal" );
    _func_14C( "h2_acs_module_obj" );
    _func_14F( "h2_overlay_frozen_l" );
    _func_14F( "h2_overlay_frozen_r" );
    _func_14F( "h2_overlays_snowgoggles_distortion_l" );
    _func_14F( "h2_overlays_snowgoggles_distortion_r" );
    _func_14F( "h2_overlays_snowgoggles_shadow_l" );
    _func_14F( "h2_overlays_snowgoggles_shadow_r" );
    _func_14F( "h2_overlays_snowgoggles_put" );
    _func_14F( "h1_hud_overlay_eyelids_vignette_blur" );
    _func_14F( "h2_overlays_snowgoggles_corner_blur_l" );
    _func_14F( "h2_overlays_snowgoggles_corner_blur_r" );
    _func_14F( "h1_hud_tutorial_blur" );
    _func_14F( "h1_hud_tutorial_border" );
    level._ID36699["fuel_station_obj"] = &"CLIFFHANGER_OBJ_FUEL_STATION";
    level._ID36699["use_satelite_obj"] = &"CLIFFHANGER_OBJ_USE_SATELITE";
    level._ID36699["goto_hanger_obj"] = &"CLIFFHANGER_OBJ_GOTO_HANGER";
    level._ID36699["obj_package"] = &"CLIFFHANGER_OBJ_PACKAGE";
    level._ID36699["obj_base"] = &"CLIFFHANGER_OBJ_BASE";
    level._ID36699["obj_c4"] = &"CLIFFHANGER_OBJ_C4";
    level._ID36699["obj_fuel"] = &"CLIFFHANGER_OBJ_FIND_FUEL";
    level._ID36699["obj_c4_mig"] = &"CLIFFHANGER_OBJ_C4_MIG";
    level._ID36699["hint_c4_plant"] = &"SCRIPT_PLATFORM_HINTSTR_PLANTEXPLOSIVES";
    level._ID36699["hint_c4_plant_keyboard_mouse"] = &"SCRIPT_PLATFORM_HINTSTR_PLANTEXPLOSIVES_KBM";
    level._ID36699["obj_snowmobile"] = &"CLIFFHANGER_OBJ_EVACUATE";
    var_0 = level._ID36699;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        _func_150( var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID50996()
{
    var_0 = _func_1A2( "base_c4_models", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
}

_ID27484()
{
    level._ID794 maps\cliffhanger_stealth::_ID48480();
    level._ID794 thread _ID42407::_ID46142();
    _ID42407::_ID27683( 90 );
    _unknown_2EE4();
}

_ID47318()
{
    level._ID794 _meth_831B();
    level._ID46851 = "alt_masada_silencer_mt_camo_on_h2";
    level._ID44005 = "masada_silencer_mt_camo_on_h2";
    level._ID794 _meth_8319( level._ID44005 );
    level._ID794 _meth_8320( level._ID46851 );
    level._ID50000 = "usp_silencer";
    level._ID794 _meth_8319( level._ID50000 );
    level._ID794 _meth_834F( "fraggrenade" );
    level._ID794 _meth_8319( "fraggrenade" );
    level._ID794 _meth_8324( "flash_grenade" );
    level._ID794 _meth_8319( "flash_grenade" );
}

_ID12882()
{
    wait 0.5;
    anim._ID33782 = ::_unknown_2F83;
}

_ID11213()
{

}

_ID47400()
{
    level endon( "stop_price_shield" );

    for (;;)
    {
        if ( _func_0F3( level._ID794._ID740, self._ID740 ) > 1300 )
        {
            _ID42407::_ID36519();

            while ( _func_0F3( level._ID794._ID740, self._ID740 ) > 1300 )
                wait 0.1;

            thread _ID42407::_ID22746();
        }

        wait 0.1;
    }
}

_ID49357()
{
    self waittill( "death" );
    thread _unknown_2C35( "fail_price_dead" );
}

_ID53107()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "animscript_shot" );

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
            continue;
    }
}

_ID52876( var_0 )
{
    self notify( "animscript_shot" );
    animscripts\utility::_ID33783( var_0 );
}

_ID43913()
{
    level._ID53700 = _func_1A1( "price_a", "targetname" );
    level._ID53700 _ID42407::_ID22825();
    level._ID53700._ID3189 = "price_a";
    level._ID44163 = _func_1A1( "price_b", "targetname" );
    level._ID44163 _ID42407::_ID22825();
    level._ID44163._ID3189 = "price_b";
    level._ID43623 = _func_1A1( "price_c", "targetname" );
    level._ID43623 _ID42407::_ID22825();
    level._ID43623._ID3189 = "price_c";
    level._ID51967 = _func_1A1( "price_d", "targetname" );
    level._ID51967 _ID42407::_ID22825();
    level._ID51967._ID3189 = "price_d";
    level._ID47792 = _func_1A1( "cake_a", "targetname" );
    level._ID47792 _ID42407::_ID22825();
    level._ID47792._ID3189 = "cake_a";
    level._ID50580 = _func_1A1( "cake_b", "targetname" );
    level._ID50580 _ID42407::_ID22825();
    level._ID50580._ID3189 = "cake_b";
    level._ID47278 = _func_1A1( "cake_c", "targetname" );
    level._ID47278 _ID42407::_ID22825();
    level._ID47278._ID3189 = "cake_c";
    level._ID44236 = _func_1A1( "cake_d", "targetname" );
    level._ID44236 _ID42407::_ID22825();
    level._ID44236._ID3189 = "cake_d";
    level._ID52192 = _func_1A1( "price_jump", "targetname" );
    level._ID52192 _ID42407::_ID22825();
    level._ID52192._ID3189 = "price_jump";
    var_0 = _func_1A1( "climbing_ref", "targetname" );
    var_1 = [];
    var_1[var_1.size] = level._ID53700;
    var_1[var_1.size] = level._ID44163;
    var_1[var_1.size] = level._ID43623;
    var_1[var_1.size] = level._ID51967;
    var_1[var_1.size] = level._ID47792;
    var_1[var_1.size] = level._ID50580;
    var_1[var_1.size] = level._ID47278;
    var_1[var_1.size] = level._ID44236;
    var_2 = [];
    var_2[var_2.size] = level._ID52192;
    level._ID53700 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    level._ID53700 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    level._ID44163 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    level._ID44163 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    level._ID43623 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    level._ID43623 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    level._ID51967 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    level._ID51967 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    level._ID47792 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    level._ID47792 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    level._ID50580 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    level._ID50580 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    level._ID47278 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    level._ID47278 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    level._ID44236 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    level._ID44236 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    level._ID52192 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    level._ID52192 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    var_0 _ID42259::_ID3016( var_1, "climbing_test_scene" );

    for (;;)
    {
        var_0 _ID42259::_ID3111( level._ID52192, "climbing_test_jump1" );
        wait 3;
        var_0 _ID42259::_ID3111( level._ID52192, "climbing_test_jump2" );
        wait 3;
        var_0 _ID42259::_ID3111( level._ID52192, "climbing_test_jump3" );
        wait 3;
        var_0 _ID42259::_ID3111( level._ID52192, "climbing_test_jump4" );
        wait 3;
        var_0 _ID42259::_ID3111( level._ID52192, "climbing_test_jump5" );
        wait 3;
        var_0 _ID42259::_ID3111( level._ID52192, "climbing_test_jump6" );
        wait 3;
    }
}

_ID52912()
{
    level._ID794 endon( "death" );
    level endon( "price_moving_to_hanger" );
    var_0 = [];
    var_0[var_0.size] = "cliff_pri_notsneaky";
    var_0[var_0.size] = "cliff_pri_dontalertthem";
    var_0[var_0.size] = "cliff_pri_sloppy";
    var_0[var_0.size] = "cliff_pri_silencers";
    var_1 = _func_0B7( var_0.size );
    var_2 = [];
    var_2[var_2.size] = "cliff_pri_theygoingback";
    var_2[var_2.size] = "cliff_pri_youreclear";
    var_2[var_2.size] = "cliff_pri_resthavegivenup";

    for (;;)
    {
        _ID42237::_ID14413( "_stealth_spotted" );
        wait 1;
        _ID42237::_ID14426( "_stealth_spotted" );
        wait 1;
        _unknown_36B6( var_0[var_1] );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;

        if ( _ID42237::_ID14385( "said_lets_split_up" ) )
        {
            wait 1;
            _unknown_36D6( var_2[_func_0B7( var_2.size )] );
        }
    }
}

_ID50870()
{
    _ID42237::_ID14413( "price_go_to_climb_ridge" );
    level endon( "start_big_explosion" );
    var_0 = [];
    var_0[var_0.size] = "cliff_pri_takecover";
    var_0[var_0.size] = "cliff_pri_beenspotted";
    var_0[var_0.size] = "cliff_pri_foundyou";
    var_0[var_0.size] = "cliff_pri_multipledirections";
    var_0 = _ID42237::_ID3320( var_0 );
    var_1 = 0;

    for (;;)
    {
        _ID42237::_ID14413( "_stealth_spotted" );
        _unknown_3729( var_0[var_1] );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;

        wait 1;
        _ID42237::_ID14426( "_stealth_spotted" );
        wait 1;
    }
}

_ID54669()
{
    var_0 = [];
    var_0[var_0.size] = "cliff_pri_tangoleft";
    var_0[var_0.size] = "cliff_pri_targetleft";
    var_1 = [];
    var_1[var_1.size] = "cliff_pri_hostileright";
    var_1[var_1.size] = "cliff_pri_targetright";
    var_2 = [];
    var_2[var_2.size] = "cliff_pri_tangosix";
    var_2[var_2.size] = "cliff_pri_targetbehindyou";
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    var_6 = 2;
    var_7 = 5000;
    level endon( "price_moving_to_hanger" );

    while ( !_ID42237::_ID14385( "done_with_stealth_camp" ) && !_ID42237::_ID14385( "price_moving_to_hanger" ) )
    {
        for (;;)
        {
            wait 0.5;
            var_8 = _func_0DE( "axis" );
            var_8 = _ID42237::_ID15566( level._ID794._ID740, var_8, undefined, undefined, 800, undefined );

            if ( var_8.size == 0 )
                continue;

            var_9 = var_8;

            for ( var_21 = _func_1DA( var_9 ); _func_02F( var_21 ); var_21 = _func_1BF( var_9, var_21 ) )
            {
                var_10 = var_9[var_21];

                if ( !var_10 _meth_81CA( level._ID794 ) )
                    continue;

                if ( var_10 _ID42407::_ID11498() )
                    continue;

                var_11 = level._ID794._ID740;
                var_12 = level._ID794._ID65;
                var_13 = var_10._ID740;
                var_14 = _func_119( var_13 - var_11 );
                var_15 = _func_11F( var_12 );
                var_16 = _func_0FB( var_15, var_14 );

                if ( var_16 >= 0.77 )
                    continue;

                var_17 = _func_03D();

                if ( var_16 < -0.77 )
                {
                    if ( var_17 > var_5 + var_7 )
                    {
                        var_5 = var_17;
                        var_18 = var_2[_func_0B7( var_2.size )];
                        thread _unknown_3840( var_18 );
                        wait(var_6);
                        break;
                    }
                    else
                        continue;
                }

                var_19 = _func_11E( var_12 );
                var_20 = _func_0FB( var_19, var_14 );

                if ( var_20 < 0 )
                {
                    if ( var_17 > var_3 + var_7 )
                    {
                        var_3 = var_17;
                        var_18 = var_0[_func_0B7( var_0.size )];
                        thread _unknown_3875( var_18 );
                        wait(var_6);
                        break;
                    }
                    else
                        continue;

                    continue;
                }

                if ( var_17 > var_4 + var_7 )
                {
                    var_4 = var_17;
                    var_18 = var_1[_func_0B7( var_1.size )];
                    thread _unknown_389E( var_18 );
                    wait(var_6);
                    break;
                    continue;
                }

                continue;
            }

            var_clear_11
            var_clear_0
        }
    }
}

_ID45142()
{
    self waittill( "death",  var_1, var_1  );

    if ( !_func_02F( var_0 ) )
        return;

    if ( _func_1B3( var_0 ) )
        _ID42237::_ID14402( "player_killed_someone" );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    if ( _ID42237::_ID14385( "conversation_active" ) )
        return;

    if ( !_ID42389::_ID36337() )
        return;

    if ( _ID42237::_ID14385( "price_moving_to_hanger" ) )
        return;

    if ( _func_1B3( var_0 ) )
    {
        wait 1;

        if ( !_ID42389::_ID36337() )
            return;

        if ( !_func_02F( level._ID45931 ) )
            level._ID45931 = _func_03D();
        else if ( _func_03D() < level._ID45931 + 15000 )
            return;

        level._ID45931 = _func_03D();

        if ( var_1 != "MOD_RIFLE_BULLET" && var_1 != "MOD_PISTOL_BULLET" )
            _unknown_3947( "cliff_pri_melee_plyr" );
        else
            _unknown_3950( "cliff_pri_killfirm_plyr" );
    }
}

_ID47447()
{
    self waittill( "trigger",  var_0  );
    var_0 notify( "target_stop" );
    var_0 thread _unknown_379D();
}

_ID51738()
{
    self waittill( "trigger",  var_0  );
    var_0 notify( "target_stop" );
}

_ID50053()
{
    level endon( "price_moving_to_hanger" );
    self endon( "death" );
    self endon( "target_stop" );

    for (;;)
    {
        _ID42407::_ID41104( level._ID794, 650 );
        _ID42407::_ID41136( 0.4 );

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
            return;

        if ( maps\cliffhanger_stealth::_ID48152() )
        {
            if ( !_func_02F( level._ID50286 ) )
                level._ID50286 = 0;

            thread _unknown_3805();
            return;
        }

        wait 3;
    }
}

_ID49465()
{
    var_0 = [];
    var_0[var_0.size] = "cliff_pri_hesmine";
    var_0[var_0.size] = "cliff_pri_takethisone";
    var_0[var_0.size] = "cliff_pri_ivegothim";
    var_0[var_0.size] = "cliff_pri_onesmine";
    var_0[var_0.size] = "cliff_pri_illtakehim";
    var_1 = _unknown_39EB( var_0[level._ID50286] );

    if ( !var_1 )
        return;

    level._ID50286++;

    if ( level._ID50286 >= var_0.size )
        level._ID50286 = 0;

    if ( _func_1A7( self ) )
    {
        var_2 = self _meth_80AF();
        var_3 = _func_119( level._ID28543._ID740 - var_2 );
        var_3 *= 20;
        var_4 = var_2 + var_3;
        _func_1C8( level._ID28543._ID1302, var_4, var_2 );

        if ( _func_1A7( self ) )
        {
            if ( _func_02F( self._ID22746 ) && self._ID22746 )
                _ID42407::_ID36519();

            self _meth_8058();
            return;
        }
    }
    else
    {
        wait 0.5;

        if ( _ID42237::_ID8201() )
            _unknown_3A50( "cliff_pri_nevermind" );
        else
            _unknown_3A59( "cliff_pri_maybenot" );
    }
}

_ID43702()
{
    level endon( "price_moving_to_hanger" );
    self waittill( "death",  var_0  );

    if ( !_func_02F( var_0 ) )
        return;

    if ( level._ID28543 == var_0 )
        _unknown_3A7F( "UK_pri_inform_killfirm_generic_s" );
}

_ID53892()
{
    var_0 = [];
    var_0[var_0.size] = "cliff_pri_foundabody";
    var_0[var_0.size] = "cliff_pri_keepquiet";
    var_0[var_0.size] = "cliff_pri_staycalm";
    level endon( "price_moving_to_hanger" );
    var_1 = 0;

    while ( !_ID42237::_ID14385( "done_with_stealth_camp" ) )
    {
        _ID42237::_ID14413( "_stealth_found_corpse" );

        if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
        {
            _unknown_3AC2( var_0[var_1] );
            var_1++;

            if ( var_1 >= var_0.size )
                var_1 = 0;
        }

        _ID42237::_ID14426( "_stealth_found_corpse" );
    }
}

_ID45458()
{
    var_0 = [];
    var_0[var_0.size] = "cliff_pri_outofsight";
    var_0[var_0.size] = "cliff_pri_hidealerted";
    var_0[var_0.size] = "cliff_pri_sightalertedone";
    self endon( "death" );
    _ID42407::_ID13031( "_stealth_normal" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    _ID42237::_ID14402( "someone_became_alert" );
    self endon( "jumpedout" );
    level _ID42407::_ID1985( ::_unknown_39EF, 3 );
    level _ID42407::_ID1890( _ID42237::_ID14388, "someone_became_alert" );
    thread _ID42407::_ID11231();
    level endon( "_stealth_spotted" );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    wait 2;

    if ( _ID42237::_ID14385( "price_moving_to_hanger" ) )
        return;

    var_1 = var_0[_func_0B7( var_0.size )];
    _unknown_3B69();
    _ID42407::_ID28864( var_1 );
}

_ID40939( var_0 )
{
    for (;;)
    {
        if ( _ID42389::_ID36337() )
        {
            wait(var_0);

            if ( _ID42389::_ID36337() )
                return;
        }

        wait 1;
    }
}

_ID44665()
{
    _ID42237::_ID14413( "give_c4_obj" );
    level._ID794 endon( "death" );
    level endon( "one_c4_planted" );
    var_0 = _func_1A1( "base_c4_models", "targetname" )._ID740;
    level._ID794 _ID42407::_ID41112( var_0, 600 );
    _unknown_3BA6( "cliff_pri_fuelingstation", 1, 2 );
    level._ID794 _ID42407::_ID41112( var_0, 180 );
    _ID42237::_ID14402( "found_fueling_station" );
    _unknown_3BC3( "cliff_pri_foundit", 1, 2 );
}

_ID44584()
{
    _ID42237::_ID14413( "give_c4_obj" );
    level endon( "one_c4_planted" );
    var_0 = 1;

    for (;;)
    {
        wait 50;

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        {
            _ID42237::_ID14426( "_stealth_spotted" );
            continue;
        }

        if ( _ID42237::_ID14385( "found_fueling_station" ) )
        {
            _unknown_3C00( "cliff_pri_goback", 1 );
            continue;
        }

        if ( var_0 )
        {
            _unknown_3C10( "cliff_pri_necorner", 0 );
            var_0 = 0;
            continue;
        }

        _unknown_3C1E( "cliff_pri_searchntheast", 0 );
        var_0 = 1;
    }
}

_ID49272()
{
    level endon( "player_on_backdoor_path" );
    wait 25;
    var_0 = 1;

    for (;;)
    {
        wait 40;

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        {
            _ID42237::_ID14426( "_stealth_spotted" );
            continue;
        }

        if ( var_0 )
        {
            _unknown_3C55( "cliff_pri_behindhangars", 1, 2 );
            var_0 = 0;
            continue;
        }

        _unknown_3C66( "cliff_pri_meetme", 1, 2 );
        var_0 = 1;
    }
}

_ID43520()
{
    self endon( "driver dead" );
    level endon( "jeep_stopped" );
    level endon( "price_moving_to_hanger" );
    level endon( "jeep_blown_up" );
    _unknown_3C8C( "cliff_pri_truckcoming", 1, 7 );
    wait 15;

    for (;;)
    {
        _ID42407::_ID41104( level._ID794, 1200 );
        var_0 = _ID42237::_ID41802( self._ID740, self._ID65, level._ID794._ID740, _func_0BC( 45 ) );

        if ( var_0 )
        {
            if ( _ID42237::_ID8201() )
                _unknown_3CBE( "cliff_pri_truckcomingback", 1, 2 );
            else
                _unknown_3CCD( "cliff_pri_truckiscoming", 1, 2 );

            wait 10;
            continue;
        }

        wait 1;
    }
}

_ID53180()
{
    _ID42237::_ID14413( "stay_away_from_bmp" );

    if ( _ID42237::_ID14385( "done_with_stealth_camp" ) )
        return;

    _unknown_3CF6( "cliff_pri_avoidarea", 1 );
}

_ID44683()
{
    level._ID794 endon( "death" );
    self waittill( "bmp_aim_at_player" );
    _unknown_3D1A( "cliff_pri_getoutofthere", 0 );
}

_ID51558()
{
    if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
        _unknown_3D22( "cliff_pri_holdup", 1 );

    _unknown_3D2C( "cliff_pri_activityonrunway", 1 );
    _unknown_3D35( "cliff_pri_footmobiles", 1 );
    wait 5;
}

_ID47660()
{
    if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
        wait 4;

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
    {
        _unknown_3D59( "cliff_pri_radiotraffic", 1 );
        wait 3;
    }

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
    {
        _unknown_3D6E( "cliff_pri_infarhangar", 1 );
        _unknown_3D77( "cliff_pri_oscarmike" );
    }
    else
        _unknown_3D84( "cliff_pri_getthereasap", 1 );

    _ID42237::_ID14402( "cliffhanger_soap_told_player_to_get_to_hangar" );
}

_ID53237()
{
    _ID42237::_ID14413( "first_two_guys_in_sight" );
    level endon( "done_with_stealth_camp" );
    level._ID794 endon( "death" );

    for (;;)
    {
        wait 1;
        var_0 = level._ID794 _meth_831C();

        if ( var_0 != level._ID46851 && var_0 != level._ID44005 && var_0 != level._ID50000 && var_0 != "h2_cheatpickaxe" && var_0 != "none" )
            break;
    }

    if ( _func_02F( level._ID28543._ID15093 ) )
    {
        while ( level._ID28543._ID15093.size > 0 )
            wait 0.5;
    }

    _unknown_3DF9( "cliff_pri_attractattn", 1 );
}

_ID50229()
{
    level endon( "player_killed_someone" );
    level endon( "_stealth_spotted" );
    level endon( "someone_became_alert" );
    _ID42237::_ID14413( "base_c4_planted" );
    _ID42407::_ID16864( "GHOST" );
    _unknown_3E25( "cliff_pri_prettysneaky", 1 );
}

_ID53079()
{
    level endon( "price_moving_to_hanger" );
    _ID42237::_ID14413( "jeep_blown_up" );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    wait 1;

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    _unknown_3E53( "cliff_pri_flamingwreck" );
}

_ID50317()
{
    level endon( "price_moving_to_hanger" );
    self waittill( "unloading" );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    _unknown_3E74( "cliff_pri_headsup", 1 );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    var_0 = _func_1A2( "truck_guys", "script_noteworthy" );
    var_1 = 0;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_1A7( var_3 ) )
            var_1++;
    }

    var_clear_2
    var_clear_0

    if ( var_1 == 4 )
        _unknown_3EBF( "cliff_pri_lookingaround", 1, 5 );
}

_ID45737( var_0, var_1 )
{
    if ( _ID42237::_ID14385( "tarmac_escape" ) )
        return;

    return _ID42407::_ID28864( var_0, var_1 );
}

_ID44871( var_0, var_1, var_2 )
{
    if ( _ID42237::_ID14385( "tarmac_escape" ) )
        return;

    if ( _func_02F( var_1 ) && var_1 == 1 )
        return _ID42407::_ID28864( var_0, var_2 );
    else
        return _ID42407::_ID28875( var_0 );
}

_ID50668( var_0, var_1 )
{
    if ( _ID42237::_ID14385( "tarmac_escape" ) )
        return;

    _ID42407::_ID28876();
    _ID42407::_ID28864( var_0 );
}

_ID50424()
{
    _ID42407::_ID28865();
}

_ID52449()
{
    wait 0.05;
    var_0 = _func_06A( "trigger_radius", ( -12266, -31591, 400 ), 0, 410, 700 );
    thread _ID42323::_ID38905( var_0 );
}

_ID44502()
{
    level endon( "start_big_explosion" );
    var_0 = level._ID794._ID740;

    for (;;)
    {
        if ( _func_0F3( var_0, level._ID794._ID740 ) > 64 )
            break;

        wait 0.05;
    }

    level._ID28543._ID511 = 1;
    level._ID794 _meth_80F3( 0 );
    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = _func_0BA( 0.1, 0.3 );
        var_3 _ID42407::_ID10226( var_4, ::_unknown_3FE1 );
    }

    var_clear_3
    var_clear_0
    wait 2;
    level._ID794 _meth_8058();
}

_ID53847()
{
    self._ID11575 = undefined;
}

_ID50349()
{
    var_0 = level._ID794 _meth_8317();
    var_1 = 0;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == level._ID44005 )
        {
            var_1 = 1;
            break;
        }
    }

    var_clear_2
    var_clear_0

    if ( !var_1 )
        return 1;

    if ( level._ID794 _meth_831C() == level._ID44005 )
        return 1;

    return 0;
}

_ID54574( var_0, var_1, var_2, var_3, var_4 )
{
    self notify( "start_dynamic_run_speed" );
    self endon( "death" );
    self endon( "stop_dynamic_run_speed" );
    self endon( "start_dynamic_run_speed" );

    if ( _ID42407::_ID13023( "_stealth_custom_anim" ) )
        _ID42407::_ID13031( "_stealth_custom_anim" );

    if ( !_func_02F( self._ID13019["dynamic_run_speed_stopped"] ) )
    {
        _ID42407::_ID13024( "dynamic_run_speed_stopped" );
        _ID42407::_ID13024( "dynamic_run_speed_stopping" );
    }
    else
    {
        _ID42407::_ID13021( "dynamic_run_speed_stopping" );
        _ID42407::_ID13021( "dynamic_run_speed_stopped" );
    }

    self._ID30395 = "";
    thread _unknown_4125();
    _ID42259::_ID32256( level._ID28543, "casual_crouch_exit_clifftop" );
    self._ID26587 = 1;
    var_5 = var_1 * var_1;

    for (;;)
    {
        wait 0.2;
        var_6 = level._ID805[0];
        var_7 = level._ID805;

        for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
        {
            var_8 = var_7[var_9];

            if ( _func_0F5( var_6._ID740, self._ID740 ) > _func_0F5( var_8._ID740, self._ID740 ) )
                var_6 = var_8;
        }

        var_clear_6
        var_clear_4
        var_10 = _func_11F( self._ID65 );
        var_11 = _func_119( var_6._ID740 - self._ID740 );
        var_12 = _func_0FB( var_10, var_11 );
        var_13 = _func_0F5( self._ID740, var_6._ID740 );

        if ( _func_02F( self._ID8931 ) && self._ID8931 )
            self._ID24424 = 1;

        if ( var_13 > 22500 && var_12 > -0.25 )
        {
            _unknown_41D9( "run" );
            continue;
        }

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        {
            _unknown_41EF( "cqb" );
            continue;
        }

        _unknown_41FB( "crouch" );
    }
}

_ID49255()
{
    self endon( "start_dynamic_run_speed" );
    self endon( "death" );
    self._ID24424 = 1;
    _ID42407::_ID7892();
    self _meth_81D6( "stand", "crouch", "prone" );
    self notify( "stop_loop" );
    _ID42407::_ID13021( "dynamic_run_speed_stopping" );
    _ID42407::_ID13021( "dynamic_run_speed_stopped" );
}

_ID43672( var_0 )
{
    if ( self._ID30395 == var_0 )
        return;

    self._ID30395 = var_0;

    switch ( var_0 )
    {

    }

    case "cqb":
    case "jog":
    case "crouch":
    case "run":
}

_ID45968()
{
    _ID42237::_ID14413( "player_climbs_past_safe_point" );
    _ID42234::_ID13611( 1 );
}

_ID47739()
{
    var_0 = _func_1A2( "extra_tarmac_migs", "script_noteworthy" );
    var_1 = _func_1A2( "extra_tarmac_mig_delayed", "script_noteworthy" );
    var_2 = var_0;
    var_2 = _ID42237::_ID3296( var_2, var_1 );
    wait 1;
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4._ID740 = var_4._ID740 + ( 0, 0, -5000 );
        var_4 _meth_805A();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_in_hanger" );
    var_6 = var_2;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];
        var_4._ID740 = var_4._ID740 + ( 0, 0, 5000 );
        var_4 _meth_8059();
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "start_big_explosion" );
    var_8 = var_0;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_4 = var_8[var_9];

        if ( var_4._ID172 == "script_model" )
            var_4 thread _ID42407::_ID10514();
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "jet_defenders_die" );
    var_10 = var_1;

    for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
    {
        var_4 = var_10[var_11];

        if ( !_func_02F( var_4 ) )
            continue;

        if ( var_4._ID172 == "script_model" )
            var_4 thread _ID42407::_ID10514();
    }

    var_clear_1
    var_clear_0
    _unknown_4523( "destructible_oilrig_1" );
    _ID42407::_ID26403( 56 );
    _ID42234::_ID13611( 55 );
}

_ID45814( var_0 )
{
    var_1 = _func_1A2( var_0, "script_noteworthy" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3 ) )
            continue;

        if ( var_3._ID172 != "script_model" )
            continue;

        var_3 _ID42407::_ID10514();
        _ID42475::_ID34575( "aud_handle_explosion", var_0, var_3 );
        wait(_func_0BA( 0.15, 0.25 ));
    }

    var_clear_2
    var_clear_0
}

_ID51722()
{
    wait 3;
    var_0 = _func_1A2( "hanger_late_spawner", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID45077()
{
    self._ID1204 = 1000;
}

_ID44385()
{
    self waittill( "spawned",  var_0  );
    var_0 _meth_85A2( 0 );
    var_0 thread _ID42413::_ID40083();
    var_0 _meth_823C();
    _ID42237::_ID14402( "tarmac_snowmobiles_spawned" );
    var_0 thread _unknown_45FE();
    var_0 waittill( "unloading" );
    level notify( "tarmac_snowmobile_unload" );
}

_ID48573()
{
    self endon( "death" );
    self endon( "unloading" );
    level waittill( "tarmac_snowmobile_unload" );
    self _meth_828D( 0, 45 );
    wait 1.75;
    thread _ID42411::_ID40298();
}

_ID53243( var_0, var_1 )
{
    level._ID794 _meth_8084( var_0, var_1, 0.0, 90, 90, 90, 30 );
}

_ID52402()
{
    self endon( "death" );
    _ID42237::_ID41098( "veh_collision", "driver_died" );
    var_0 = _func_1A1( "avalanche_progress_org", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = _func_119( var_1._ID740 - var_0._ID740 );
    _ID42407::_ID10226( 13, _ID42407::_ID31860 );

    for (;;)
    {
        self waittill( "driver_died",  var_3  );
        var_4 = level._ID51355 _meth_8290();
        var_5 = var_2 * var_4;
        var_5 = ( var_5[0], var_5[1], 10.0 );
        self _meth_823B( var_5, _func_0BA( 0.4, 0.8 ) );
        wait(_func_0BA( 0.05, 0.15 ));
    }
}

_ID45337()
{
    _ID47980::_ID45691( level._ID28543 );
    var_0 = level._ID47341;
    var_0._ID216 = 1;
    var_1 = var_0 _meth_809B();
    level._ID28543 = var_1;
    _ID42407::_ID35060( var_1 );
    var_1._ID3189 = "price";
    var_1 thread _ID42407::_ID22746();
    var_1 _ID42407::_ID1868( ::_unknown_4738 );
    return var_1;
}

_ID50455( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_1 ) )
        return;

    var_7 = var_1._ID170;

    if ( !_func_02F( var_7 ) )
        return;

    if ( var_7 != "script_vehicle_snowmobile" )
        return;

    var_8 = var_1._ID29965;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];

        if ( !_func_1A7( var_9 ) )
            continue;

        var_9 _meth_8057( 1000, self._ID740, self );
    }

    var_clear_2
    var_clear_0
}

_ID48501()
{
    var_0 = "flag_square";

    if ( _func_02F( self._ID922 ) )
        var_0 = self._ID922;

    var_1 = _ID42407::_ID35028( var_0 );
    var_1._ID740 = self._ID740;
    var_1._ID65 = self._ID65;
    self _meth_80B7();
    var_2 = _func_11A( var_1._ID65 );
    var_3 = _func_11F( var_2 );
    var_1 thread _unknown_47F9();
}

_ID44481()
{
    level endon( "player_in_hanger" );
    childthread _unknown_4852();
    waitframe;
    self._ID49144 = self._ID51577;
    var_0 = 1;

    for (;;)
    {
        if ( !_func_02F( self ) )
            return;

        if ( self._ID51577 == "fast" )
            var_1 = _func_0BA( 1.0, 1.4 );
        else
            var_1 = _func_0BA( 0.5, 0.8 );

        var_2 = "wind_animation_" + self._ID49144 + "_to_" + self._ID51577;
        var_3 = "wind_animation_" + self._ID51577 + "_looped";

        if ( self._ID51577 != self._ID49144 )
        {
            var_4 = level._ID30895[self._ID3189][var_2];
            self _meth_8155( var_4, 1, 0, var_0 );
            wait(_func_067( var_4 ) * var_0);
            self._ID49144 = self._ID51577;
        }

        var_5 = _func_0B7( level._ID30895[self._ID3189][var_3].size );
        var_6 = level._ID30895[self._ID3189][var_3][var_5];
        var_7 = 0.1;
        self _meth_8155( var_6, 1, var_7, var_0 );
        var_8 = var_1 - var_0;
        var_9 = var_8 * var_7;

        while ( self._ID51577 == self._ID49144 )
        {
            wait(var_7);

            if ( var_0 != var_1 )
            {
                var_0 += var_9;
                var_10 = self _meth_8159( var_6 );
                self _meth_8155( var_6, 1, var_7, var_0 );
                self _meth_8120( var_6, var_10 );
            }
        }

        self _meth_814C( var_6, 0.1 );
    }
}

_ID46230()
{
    for (;;)
    {
        if ( _func_02F( level._ID46419 ) && level._ID46419 == "hard" || level._ID46419 == "extreme" )
            self._ID51577 = "fast";
        else
            self._ID51577 = "slow";

        level waittill( "blizzard_level_change" );
        self._ID49144 = self._ID51577;
    }
}

_ID49747()
{
    _ID42237::_ID14413( "player_slides_down_hill" );

    for ( var_0 = 0; var_0 < level._ID9242.size; var_0++ )
    {
        var_1 = level._ID9242[var_0];

        if ( _func_02F( var_1._ID40005["soundalias"] ) )
        {
            if ( var_1._ID40005["soundalias"] == "velocity_whitenoise_loop" )
                continue;
        }

        if ( _func_02F( var_1._ID22654 ) )
            var_1._ID22654 _meth_80B7();
    }

    var_2 = _func_1A2( "script_model", "code_classname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_6 = level._ID53034;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_4 = _func_06A( "script_model", var_7["origin"] );
        var_4._ID65 = var_7["angles"];
        var_4 _meth_80B8( var_7["model"] );
        var_7["owner"]._ID44896 = var_4;
    }

    var_clear_2
    var_clear_0
}

_ID50201()
{
    var_0 = undefined;
    var_1 = _func_1A2( self._ID1191, "targetname" );
    var_2 = undefined;
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4._ID172 == "script_brushmodel" )
        {
            var_0 = var_4;
            continue;
        }

        var_2 = var_4;
    }

    var_clear_2
    var_clear_0
    var_1 = undefined;
    self waittill( "damage" );
    var_0 _meth_80B7();

    if ( _func_02F( self._ID44896 ) )
    {
        var_6 = _ID42237::_ID28976( 100 );
        var_6 = _ID42407::_ID32530( var_6, _func_0C3( var_6[2] ) );
        var_2 _meth_82CC( var_2._ID740, var_6 + ( 0, 0, 50 ) );
    }

    self _meth_80B7();
}

_ID53030()
{
    _ID42237::_ID14426( "keyboard_used" );
    level endon( "keyboard_used" );
    level waittill( "price_enter" );

    for (;;)
    {
        wait(_func_0BA( 2, 8 ));
        var_0 = _func_1A1( "locker_brawl", "targetname" );
        var_0 notify( "stop_satellite_idle" );
        level._ID28543 waittillmatch( "looping anim",  "end"  );
        var_0 _ID42259::_ID3111( level._ID28543, "satellite_idle_breaker" );
        var_0 thread _ID42259::_ID3044( level._ID28543, "satellite_idle", "stop_satellite_idle" );
    }
}

_ID47717()
{
    var_0 = _func_1A2( "slope_tree", "targetname" );
    var_1 = _ID42237::_ID16638( "top_of_hill", "targetname" );
    var_0 = _ID42237::_ID15566( var_1._ID740, var_0 );

    if ( level._ID15361 == 0 )
        var_0 = _ID42407::_ID3305( var_0, 2, 3 );
    else if ( level._ID15361 == 1 )
        var_0 = _ID42407::_ID3305( var_0, 1, 2 );

    var_2 = _func_1A2( "slope_tree_clip", "targetname" );
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4._ID8089 = var_2[var_5];
        var_2[var_5] = undefined;
    }

    var_clear_2
    var_6 = var_2;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( var_0, maps\cliffhanger_snowmobile_code::_ID54682 );
}

_ID52061()
{
    self endon( "death" );
    var_0 = _func_1A1( "h2_hanger_enemies_enter", "targetname" );
    childthread _unknown_4C8F( var_0 );
    thread _unknown_4CE3();

    if ( self._ID922 == "hanger_capture_petrov" )
        thread _unknown_4CFC();

    level waittill( "kill_price" );
    wait(_func_0BA( 0.3, 0.5 ));
    self _meth_81B2( self._ID740 );
    self._ID452 = 20;
    self _meth_814B();
    self _meth_820F( level._ID28543 );
    self._ID507 = 0;

    for (;;)
    {
        self _meth_81F7();
        wait(_func_0BA( 0.1, 0.2 ));
    }
}

_ID47966( var_0 )
{
    level._ID794 endon( "player_shot" );
    var_0 _ID42259::_ID3111( self, "runin_in" );

    if ( _func_039( "player_has_witnessed_capture" ) == "1" )
    {
        _ID42237::_ID14402( "player_can_see_capture" );
        waitframe;
    }

    _unknown_4D2C( var_0 );

    if ( _ID42237::_ID14385( "player_can_see_capture" ) )
        var_0 _ID42259::_ID3111( self, "runin_comply" );

    if ( self._ID3189 == "petrov" )
        thread _unknown_53CD();

    if ( _ID42237::_ID14385( "player_can_see_capture" ) )
        var_0 _ID42259::_ID3111( self, "runin_comply_wait" );

    var_0 _ID42259::_ID3111( self, "runin_out" );
}

_ID46798( var_0 )
{
    if ( _ID42237::_ID14385( "player_can_see_capture" ) )
        return;

    var_0 thread _ID42259::_ID3111( self, "runin_optional" );

    if ( self._ID3189 == "petrov" )
    {
        var_1 = [];
        var_1[var_1.size] = "cliff_pet_capturedcomrade";
        var_1[var_1.size] = "cliff_pet_surrender";
        var_1[var_1.size] = "cliff_pet_willdie";
        var_1[var_1.size] = "cliff_pet_handsup";
        var_1[var_1.size] = "cliff_pet_verywell";
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _ID42237::_ID14385( "player_can_see_capture" ) )
            {
                level notify( "petrov_optional_encouragement_lines" );
                return;
            }

            _ID42407::_ID10805( var_3 );
        }

        var_clear_2
        var_clear_0
    }
    else
    {
        level endon( "petrov_optional_encouragement_lines" );
        var_0 waittill( "runin_optional" );
    }
}

_ID48338()
{
    self endon( "death" );
    self _meth_8056( 3 );
    self waittill( "damage" );
    _ID42237::_ID14402( "drop_megaphone" );
    level notify( "kill_price" );
    self _meth_814B();
}

_ID47103()
{
    while ( !_ID42237::_ID14385( "drop_megaphone" ) )
        waittillframeend;

    _ID42237::_ID14388( "drop_megaphone" );
    self _meth_802A( "h2_ch_megaphone_rig", "TAG_INHAND" );
    var_0 = _func_06A( "script_model", self _meth_818C( "TAG_INHAND" ) );
    var_0._ID65 = self _meth_818D( "TAG_INHAND" );
    var_0 _meth_80B8( "h2_ch_megaphone_rig" );
    var_0 _meth_82CC();
    self waittill( "delete" );
    var_0 _meth_80B7();
}

_ID48183( var_0 )
{
    var_1 = [];
    var_1[var_1.size] = "cliff_ru1_gogogo";
    var_1[var_1.size] = "cliff_ru1_freezedropit";
    var_1[var_1.size] = "cliff_ru1_handsup";
    var_1[var_1.size] = "cliff_ru2_movemove";
    var_1[var_1.size] = "cliff_ru2_doitnow";
    var_1[var_1.size] = "cliff_ru2_handsintheair";
    var_1[var_1.size] = "cliff_ru3_letsgoletsgo";
    var_1[var_1.size] = "cliff_ru3_dropitdropit";
    var_1[var_1.size] = "cliff_ru3_stopdontmove";
    var_1[var_1.size] = "cliff_ru4_dropitmfer";
    var_1[var_1.size] = "cliff_ru4_dropyourweapon";
    var_1[var_1.size] = "cliff_ru4_dropitnow";
    var_1[var_1.size] = "cliff_ru4_shutupdropit";
    var_1[var_1.size] = "cliff_ru4_shutmouth";
    var_1 = _ID42237::_ID3320( var_1 );
    var_2 = 0;
    var_3 = _func_03D();
    var_4 = var_3 + 4000;
    var_5 = var_3 + 8000;

    while ( !_ID42237::_ID14385( "start_big_explosion" ) )
    {
        var_6 = _func_03D();
        var_7 = 1;

        if ( var_6 > var_4 )
            var_7 = 0.5;

        if ( var_6 > var_5 )
            var_7 = 0;

        wait(_func_0BA( 1, 3 ));
        wait(var_7);
        var_8 = var_0[_func_0B7( var_0.size )];

        if ( _func_1A7( var_8 ) )
        {
            var_9 = var_1[var_2];
            var_8 _ID42259::_ID3020( var_8, var_9 );
        }
        else
            wait 0.5;

        var_2++;

        if ( var_2 >= var_1.size )
            var_2 = 0;
    }
}

_ID52381()
{
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID50575( var_0, var_1 )
{
    level endon( "locker_brawl_becomes_uninteruptable" );
    var_1 waittill( "death" );
    var_0 notify( "single anim",  "end"  );
    var_0 _meth_814B();
    var_0 _meth_85B4( 0, 0.5 );
    var_0._ID45703 = 1;
    var_2 = _func_1A1( "locker_brawl", "targetname" );
    var_3 = level._ID51506;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 notify( "single anim",  "end"  );
        var_2 _ID42259::_ID3016( level._ID51506, "locker_brawl" );
    }

    var_clear_2
    var_clear_0
}

_ID47305()
{
    _unknown_5064();

    if ( _func_02F( level._ID48340 ) )
    {
        level._ID48340 maps\cliffhanger_stealth::_ID46710();
        level._ID48340 _meth_80B7();
    }

    var_0 = _func_1A1( "locker_brawl_spawner", "targetname" );
    var_1 = _func_1A1( "locker_brawl", "targetname" );
    var_1 _ID42259::_ID3074( level._ID28543, "locker_brawl" );
    level._ID28543._ID45703 = 1;
    var_2 = var_0 _ID42407::_ID35014();

    if ( _ID42407::_ID35060( var_2 ) )
        return;

    var_2 _ID42407::_ID32226( 0 );
    level._ID28543._ID45703 = undefined;
    var_2._ID465 = 0;
    var_2._ID3189 = "defender";
    var_2._ID49 = 1;
    var_2._ID486 = 1;
    var_2 _ID42407::_ID17509();
    var_2._ID24898 = 1;
    thread _unknown_50F1( level._ID28543, var_2 );
    var_3 = [];
    var_3[0] = var_2;
    var_3[1] = level._ID28543;
    var_3 = _ID42237::_ID3296( var_3, level._ID51506 );
    var_4 = _func_1A1( "price_locker_brawl_end_dest", "targetname" );
    level._ID28543 _meth_81B2( var_4._ID740 );
    var_1 thread _ID42259::_ID3099( var_3, "locker_brawl" );
    level._ID28543 waittillmatch( "single anim",  "end"  );
    level._ID28543 _meth_802A( "weapon_parabolic_knife", "TAG_INHAND", 0 );
}

_ID51049( var_0 )
{
    var_1 = _func_1A1( "locker_brawl", "targetname" );
    thread _unknown_51F2( var_0 );
    _ID42237::_ID14413( "keyboard_used" );
    var_1 notify( "stop_satellite_idle" );
    _unknown_51D6();
}

_ID43061()
{
    level._ID28543 endon( "death" );
    var_0 = _func_1A1( "h2_hanger_enemies_enter", "targetname" );
    level._ID28543 _ID42407::_ID32265( "capture_death" );
    var_0 _ID42259::_ID3111( level._ID28543, "capture_intro" );
    var_0 thread _ID42259::_ID3044( level._ID28543, "capture_idle", "stop_capture_idle" );
    _ID42237::_ID14413( "start_big_explosion" );
    var_0 notify( "stop_capture_idle" );
    level._ID28543 animscripts\shared::_ID26732( level._ID28543._ID1302, "chest" );
    var_0 _ID42259::_ID3111( level._ID28543, "capture_pullout" );
    level._ID28543._ID14794 = 1;
    level._ID28543._ID381 = 1;
    level._ID28543._ID452 = 2000;
    _ID42237::_ID14413( "capture_enemies_dead" );
    level._ID28543._ID14794 = undefined;
    level._ID28543 _ID42407::_ID10896();
}

_ID45963( var_0 )
{
    if ( _ID42237::_ID14385( "keyboard_used" ) )
        return;

    level endon( "keyboard_used" );
    var_1 = _func_1A1( "locker_brawl", "targetname" );

    if ( _func_02F( level._ID28543._ID45703 ) )
        var_1 _ID42259::_ID3074( level._ID28543, "enter" );

    var_2["price"] = level._ID28543;
    var_1 notify( "satellite_stop" );
    var_1 thread _ID42259::_ID3111( var_0, "price_enter" );
    level._ID28543 _ID45995::_ID48826( "head", level._ID794, 200, 45, 20, 30, 45, 1, 1 );
    var_1 _ID42259::_ID3099( var_2, "enter" );
    var_1 thread _ID42259::_ID3044( var_0, "satellite_loop" );
    var_1 thread _ID42259::_ID3044( level._ID28543, "satellite_idle", "stop_satellite_idle" );
    level notify( "price_enter" );
}

_ID47866( var_0 )
{
    var_1 = _ID42237::_ID16638( var_0, "targetname" );
    self._ID36313 = var_1;
}

_ID50816()
{
    _ID42411::_ID40197( "running" );
    _ID42411::_ID40197( "landing" );
}

_ID43296()
{
    _ID42237::_ID14413( "price_starts_moving" );
    level._ID28543._ID24424 = 1;

    if ( _func_02F( level._ID28543._ID700 ) && _func_0C3( level._ID28543._ID700._ID65[1] - level._ID28543._ID65[1] ) < 5 )
    {
        level._ID28543 _meth_819B( "face current" );
        _ID42259::_ID32256( level._ID28543, "casual_crouch_exit" );
    }

    _func_1A1( "price_starts_moving", "targetname" ) notify( "trigger" );
    level._ID28543._ID381 = 0;
    level._ID28543._ID9568 = undefined;
    level._ID28543 _ID45995::_ID45228();
    level._ID28543 _ID42407::_ID10896();
    level._ID28543 _meth_81D6( "crouch" );
    _ID42407::_ID27683( 90, 2 );
    _ID42237::_ID14413( "first_two_guys_in_sight" );
    level._ID28543 thread _unknown_4F42( undefined, 300 );
}

_ID51359()
{
    level endon( "first_two_guys_in_sight" );
    _ID42237::_ID14413( "soap_cliff_climb_finished" );

    if ( !_ID42237::_ID14385( "price_starts_moving" ) )
        level._ID28543 _ID45995::_ID48826( ::_unknown_547C, level._ID794, 400, 70, 55, 30, 45, 1, 0, 22.5 );
}

_ID46128()
{
    return level._ID30895["price"]["soap_cliff_crouch_idle_look_add"];
}

_ID45436()
{
    level endon( "first_two_guys_in_sight" );
    _ID42237::_ID14413( "check_heart_beat_sensor" );
    _ID42407::_ID46640();
    thread _unknown_5495();
    level._ID28543 _unknown_5D8C( "cliff_pri_checksensor", 1, 1 );
    level._ID794 thread _ID42407::_ID11090( "hint_heartbeat_sensor", 30 );

    while ( level._ID794 _meth_831C() != level._ID44005 )
        wait 0.5;

    level._ID28543 _unknown_5DB6( "cliff_pri_seeme", 1, 1 );
    level._ID28543 _unknown_5DC4( "cliff_pri_bluedot", 1, 1 );
    wait 0.1;
    level._ID28543 _unknown_5DD6( "cliff_pri_whitedots", 1, 1 );
    _ID42237::_ID14402( "price_starts_moving" );
    _ID42407::_ID50178();
}

_ID50023()
{
    _func_0DB( "cg_drawcrosshair", "0" );
    level._ID19265 = _ID42313::_ID9251( "hud_dpad", 32, 32 );
    level._ID19265._ID493 = 1;
    level._ID19265 _ID42313::_ID32753( "TOP", undefined, 0, 175 );
    level._ID19266 = _ID42313::_ID9251( "hud_icon_heartbeat", 32, 32 );
    level._ID19266._ID493 = 1;
    level._ID19266 _ID42313::_ID32753( "TOP", undefined, -32, 175 );
    level._ID19267 = _ID42313::_ID9251( "hud_arrow_left", 24, 24 );
    level._ID19267._ID493 = 1;
    level._ID19267 _ID42313::_ID32753( "TOP", undefined, 0, 179 );
    level._ID19267._ID983 = 1;
    level._ID19267._ID196 = ( 1, 1, 0 );
    level._ID19267._ID55 = 0.7;

    while ( !level._ID794 _unknown_5082() )
        wait 0.5;

    level._ID19265 _ID42313::_ID32753( "CENTER", "BOTTOM", 320, -20, 2 );
    level._ID19266 _ID42313::_ID32753( "CENTER", "BOTTOM", 288, -20, 2 );
    level._ID19267 _ID42313::_ID32753( "CENTER", "BOTTOM", 320, -20, 2 );
    level._ID19265 _meth_808C( 2, 20, 20 );
    level._ID19266 _meth_808C( 2, 20, 20 );
    level._ID19267 _meth_808C( 2, 15, 15 );
    wait 1.7;
    level._ID19265 _meth_808B( 0.3 );
    level._ID19265._ID55 = 0;
    level._ID19266 _meth_808B( 0.3 );
    level._ID19266._ID55 = 0;
    level._ID19267 _meth_808B( 0.3 );
    level._ID19267._ID55 = 0;
    level._ID19265 _meth_808F();
    level._ID19266 _meth_808F();
    level._ID19267 _meth_808F();
    _func_0DB( "cg_drawcrosshair", "1" );
}

_ID54704( var_0 )
{
    var_1 = _func_1A5();
    var_1._ID740 = var_0[0]._ID740;
    var_1._ID65 = var_0[0]._ID65;
    var_2 = undefined;
    var_3 = var_0[0]._ID3057;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4._ID3189 == "chair" )
        {
            var_2 = var_4;
            break;
        }
    }

    var_clear_2
    var_clear_0
    var_0[0]._ID3058 = 1;
    var_1 _ID42259::_ID3018( var_2, "throatstab" );
    var_1 _ID42407::_ID10226( 0.25, _ID42259::_ID3111, var_2, "throatstab" );
    return var_1;
}

_ID48595( var_0 )
{
    var_1 = _func_1A5();
    var_1._ID65 = var_0[1]._ID65;
    var_2 = level._ID30895["generic"]["patrol_cold_crossed"][0];
    var_3 = _func_094( var_2, 0, 1 );
    var_4 = _func_067( var_2 );
    var_5 = var_3 / var_4 * 0.3;
    var_6 = _func_11F( var_1._ID65 );
    var_1._ID740 = var_0[1]._ID740 + var_6 * _func_0F6( var_5 );
    return var_1;
}

_ID54621()
{
    level endon( "clifftop_patrol1_dead" );
    level._ID794 waittill( "stealth_takedown_started" );
    level._ID28543 _meth_81B2( level._ID28543._ID740 );
    _ID42475::_ID34575( "aud_mix_stealth_takedown" );

    if ( !_ID42237::_ID14385( "mig_landing" ) )
        _ID42237::_ID14402( "mig_landing" );
}

_ID44159( var_0, var_1, var_2 )
{
    level._ID794._ID49929 waittillmatch( "single anim",  "right_soldier_start"  );
    thread _ID42259::_ID3111( var_1, var_0 );
    wait 0.05;
    var_1 _meth_8120( var_1 _ID42407::_ID16120( var_0 ), level._ID794._ID49929 _meth_8159( level._ID794._ID49929 _ID42407::_ID16120( var_0 ) ) );
}

_ID44124()
{
    level._ID794 endon( "stealth_takedown_started" );
    level endon( "clifftop_patrol1_dead" );
    level endon( "clifftop_patrol_alerted" );
    _ID42237::_ID14413( "first_two_guys_in_sight" );
    level._ID28543._ID49606 = 1;
    var_0 = _ID42407::_ID15816( "patrollers_1_rightguy", "script_noteworthy" );
    var_1 = _ID42407::_ID15816( "patrollers_1_leftguy", "script_noteworthy" );
    var_0 _unknown_4969();
    var_1 _unknown_496E();
    var_0._ID3189 = "rightguy";
    var_1._ID3189 = "leftguy";
    thread _unknown_5944( var_0, var_1 );
    level._ID794 thread _ID42407::_ID51500( [ var_0, var_1 ], "double_takedown", 145, 45, 60, 0, 0.25, ::_unknown_58AD, "viewmodel_ice_picker_03", "viewmodel_ice_picker", undefined, [ ::_unknown_58CC ], undefined, 0.5, 1 );
    level._ID28543 thread _unknown_58E3();
    childthread _unknown_59D9( [ var_0, var_1 ] );
    _ID42237::_ID14413( "price_two_guys_in_sight" );
    level endon( "interupt_first_encounter" );
    thread _unknown_5A57();
    thread _unknown_5A50();
    level._ID794 _ID42407::_ID41104( level._ID28543, 300 );
    _ID42237::_ID14402( "first_encounter_dialog_starting" );
    level._ID28543 _unknown_6122( "cliff_pri_noidea", 0, 1 );
    _ID42237::_ID14402( "mig_landing" );
    level._ID28543 _unknown_6137( "cliff_pri_youtakeleft", 0, 1 );
    thread _unknown_5A7A();
    level._ID28543 _meth_80A1( "Cliff_pri_onthree" );
    wait 1;
    level._ID28543 _meth_80A1( "Cliff_pri_one" );
    wait 1;
    level._ID28543 _meth_80A1( "Cliff_pri_two" );
    wait 1;
    level._ID28543 _meth_80A1( "Cliff_pri_three" );
    wait 0.2;
    _ID42237::_ID14402( "first_encounter_dialog_finished" );

    if ( _func_1A7( var_0 ) && _ID42407::_ID45216( 1 ) )
        var_0 thread maps\cliffhanger_stealth::_ID45583( var_1 );
    else if ( _func_1A7( var_1 ) && _ID42407::_ID45216( 1 ) )
        var_1 thread maps\cliffhanger_stealth::_ID45583( var_0 );
    else
        thread _unknown_5AD9();
}

double_takedown_cinematic( var_0, var_1 )
{
    level endon( "clifftop_patrol1_dead" );
    level._ID794 waittill( "stealth_takedown_started" );
    var_2 = _ID54167::_ID43386( "double_takedown" );
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.5, -1, 16, 16 ) _ID54167::_ID52391( var_1, "tag_eye" ) _ID54167::_ID44956();
    var_2 _ID54167::_ID48800( 2.8 ) _ID54167::_ID50321( 3.5, -1, 16, 16 ) _ID54167::_ID52391( var_0, "tag_eye" ) _ID54167::_ID44545( 1 );
    var_2 _ID54167::_ID48800( 4.8 ) _ID54167::_ID50321( 3.5, -1, 16, 16 ) _ID54167::_ID52391( var_0, "tag_eye" ) _ID54167::_ID44518( 1 ) _ID54167::_ID44545( 1 );
    var_2 _ID54167::_ID48800( 6.5 ) _ID54167::_ID48959();
    var_2 _ID54167::_ID48800( 2.4 ) _ID54167::_ID47198( 0.12, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.2 );
    var_2 _ID54167::_ID48800( 3.35 ) _ID54167::_ID47198( 0.1, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_2 _ID54167::_ID48800( 4.25 ) _ID54167::_ID47198( 0.12, 0.8, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.3 );
    var_2 _ID54167::_ID48166();
}

_ID50746( var_0 )
{
    for (;;)
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( var_2._ID38 == "alert" || var_2._ID38 == "combat" )
            {
                level notify( "clifftop_patrol_alerted" );
                return;
            }
        }

        var_clear_2
        var_clear_0
        waittillframeend;
    }
}

_ID44550()
{
    _ID42237::_ID14413( "price_go_to_climb_ridge" );
    var_0 = _func_1A1( "price_ledgeclimb", "targetname" );
    var_1 = 250000;
    var_2 = _func_22D( var_0._ID740, level._ID28543._ID740 );

    if ( _ID42237::_ID14385( "price_at_climbing_spot" ) || var_2 < var_1 )
    {
        var_0 _ID42259::_ID3074( level._ID28543, "soap_separation" );
        var_0 _ID42259::_ID3111( level._ID28543, "soap_separation" );
    }
    else
    {
        var_0 _ID42259::_ID3074( level._ID28543, "soap_separation_run" );
        var_0 _ID42259::_ID3111( level._ID28543, "soap_separation_run" );
    }

    var_0 _ID42259::_ID3111( level._ID28543, "ledge_climb" );
    level._ID28543._ID9575 = undefined;
    level._ID28543._ID36146 = undefined;
    level._ID28543._ID26587 = undefined;
    level._ID28543._ID11568 = undefined;
    level._ID28543 _meth_81AF( 0 );
    level._ID28543 _ID42407::_ID12445();
    _func_1A1( "price_position_on_ridge", "targetname" ) notify( "trigger" );
}

_ID44974()
{
    wait 2;
    level._ID28543._ID381 = 1;
    level._ID28543 _ID42407::_ID12445();
}

_ID43100()
{
    level._ID28543._ID381 = 0;
    level._ID28543 _ID42407::_ID10871();
    var_0 = _func_11F( level._ID28543._ID65 );
    level._ID28543 _meth_81B2( level._ID28543._ID740 + 24 * var_0 );
    level._ID28543._ID452 = 64;
}

_ID53790()
{
    level endon( "first_encounter_dialog_starting" );
    level endon( "second_encounter_dialog_starting" );
    level endon( "interupt_first_encounter" );
    level endon( "interupt_second_encounter" );
    wait 3;
    level._ID28543 _ID42407::_ID10805( "cliff_pri_getoverhere" );
}

_ID52442()
{
    level endon( "first_encounter_dialog_finished" );
    maps\cliffhanger_stealth::_ID45007( "airfield_in_sight", "clifftop_patrol1_dead" );
    wait 0.5;

    if ( !_ID42237::_ID14385( "first_encounter_dialog_finished" ) )
        level._ID28543 _meth_80B3();

    _ID42237::_ID14402( "interupt_first_encounter" );
    _ID42237::_ID14402( "mig_landing" );
    var_0 = _ID42407::_ID15816( "patrollers_1_rightguy", "script_noteworthy" );
    var_1 = _ID42407::_ID15816( "patrollers_1_leftguy", "script_noteworthy" );

    if ( _func_1A7( var_0 ) )
        var_0._ID11566 = undefined;

    if ( _func_1A7( var_1 ) )
        var_1._ID11566 = undefined;

    level._ID28543 _ID42407::_ID10871();
    level._ID28543._ID381 = 0;
    level._ID28543 _meth_81B2( level._ID28543._ID740 );
    _ID42237::_ID14413( "clifftop_patrol1_dead" );
    level._ID28543._ID381 = 0;
    level._ID28543 _ID42407::_ID12445();
}

_ID53276()
{
    self._ID3189 = "generic";
    _unknown_4D8D( "head_opforce_arctic_b" );
    thread _unknown_5E38();
    level._ID794 thread maps\cliffhanger_aud::aud_setup_sitter_takedown();
    level._ID794 thread _ID42407::_ID51500( [ self ], "throatstab", 130, 45, 60, 0, 0.25, ::_unknown_5C6E, undefined, "weapon_parabolic_knife", undefined, undefined, undefined, 0.5, 2 );
    self waittill( "stealth_takedown_started" );
    self notify( "pain_death" );
}

stealth_takedown_cinematic()
{
    self waittill( "stealth_takedown_started" );
    var_0 = _ID54167::_ID43386( "stealth_takedown" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 16, 16 ) _ID54167::_ID52391( self, "tag_eye" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 5.8 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID47198( 0.12, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 1.75 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.25 ) _ID54167::_ID47198( 0.12, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48800( 3.3 ) _ID54167::_ID47198( 0.12, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 3.75 ) _ID54167::_ID47198( 0.08, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.3 );
    var_0 _ID54167::_ID48800( 4.8 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID45302()
{
    level endon( "interupt_first_encounter" );
    level endon( "_stealth_spotted" );
    _ID42237::_ID14413( "first_encounter_dialog_finished" );
    _ID42237::_ID14413( "clifftop_patrol1_dead" );
    level._ID28543._ID49606 = undefined;
    wait 0.5;

    if ( !_ID42237::_ID14385( "player_killed_one_first_two_encounters" ) )
    {
        level._ID28543 _ID42407::_ID10805( "cliff_pri_doeverything" );
        level._ID53574 = 1;
    }
    else
    {
        level._ID28543 _ID42407::_ID10805( "cliff_pri_nicelydone" );
        _ID42237::_ID14402( "said_nicely_done" );
    }
}

_ID53814()
{
    var_0 = 0;
    _ID42237::_ID14413( "clifftop_patrol1_dead" );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        var_0 = 1;

    level._ID28543._ID49606 = undefined;
    wait 0.5;

    if ( var_0 )
    {
        level._ID28543 _ID42407::_ID10805( "cliff_pri_dontalertthem" );
        _ID42237::_ID14402( "said_dont_alert_them" );
    }
}

_ID47396()
{
    level endon( "_stealth_spotted" );
    level endon( "clifftop_patrol2_dead" );
    _ID42237::_ID14413( "second_two_guys_in_sight" );
    level endon( "interupt_second_encounter" );
    thread _unknown_6118();
    thread _unknown_5FF6();
    level._ID794 _ID42407::_ID41104( level._ID28543, 300 );
    _ID42237::_ID14388( "player_killed_one_first_two_encounters" );
    _ID42237::_ID14402( "second_encounter_dialog_starting" );

    if ( _ID42237::_ID14385( "said_nicely_done" ) )
        level._ID28543 _ID42407::_ID10805( "cliff_pri_sameplan" );
    else
        level._ID28543 _ID42407::_ID10805( "cliff_pri_youtakeleft" );

    level._ID28543 _meth_80A1( "Cliff_pri_onthree" );
    wait 1;
    level._ID28543 _meth_80A1( "Cliff_pri_one" );
    wait 1;
    level._ID28543 _meth_80A1( "Cliff_pri_two" );
    wait 1;
    level._ID28543 _meth_80A1( "Cliff_pri_three" );
    wait 0.2;
    _ID42237::_ID14402( "second_encounter_dialog_finished" );
    var_0 = _ID42407::_ID15816( "patrollers_2_rightguy", "script_noteworthy" );
    var_1 = _ID42407::_ID15816( "patrollers_2_leftguy", "script_noteworthy" );

    if ( _func_1A7( var_0 ) )
        var_0 thread maps\cliffhanger_stealth::_ID45583( var_1 );
}

_ID47211()
{
    level endon( "second_encounter_dialog_finished" );
    maps\cliffhanger_stealth::_ID45007( "player_passing_second_encounter" );
    wait 0.5;

    if ( !_ID42237::_ID14385( "second_encounter_dialog_finished" ) )
        level._ID28543 _meth_80B3();

    _ID42237::_ID14402( "interupt_second_encounter" );
    var_0 = _ID42407::_ID15816( "patrollers_2_rightguy", "script_noteworthy" );
    var_1 = _ID42407::_ID15816( "patrollers_2_leftguy", "script_noteworthy" );

    if ( _func_1A7( var_0 ) )
        var_0._ID11566 = undefined;

    if ( _func_1A7( var_1 ) )
        var_1._ID11566 = undefined;

    level._ID28543 _ID42407::_ID10871();
    level._ID28543._ID381 = 0;
    level._ID28543 _meth_81B2( level._ID28543._ID740 );
    _ID42237::_ID14413( "clifftop_patrol2_dead" );
    level._ID28543._ID381 = 0;
    level._ID28543 _ID42407::_ID12445();
}

_ID51119()
{
    level endon( "interupt_second_encounter" );
    level endon( "_stealth_spotted" );
    _ID42237::_ID14413( "second_encounter_dialog_finished" );
    _ID42237::_ID14413( "clifftop_patrol2_dead" );
    wait 0.5;

    if ( !_ID42237::_ID14385( "player_killed_one_first_two_encounters" ) )
    {
        if ( _func_02F( level._ID53574 ) )
            level._ID28543 _ID42407::_ID10805( "cliff_pri_somework" );
        else
            level._ID28543 _ID42407::_ID10805( "cliff_pri_doeverything" );

        return;
    }

    if ( _ID42237::_ID14385( "said_nicely_done" ) )
        level._ID28543 _ID42407::_ID10805( "cliff_pri_nicework" );
    else
        level._ID28543 _ID42407::_ID10805( "cliff_pri_nicelydone" );

    _ID42237::_ID14402( "said_nicely_done" );
}

_ID54421()
{
    var_0 = 0;
    _ID42237::_ID14413( "clifftop_patrol2_dead" );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        var_0 = 1;

    if ( _ID42237::_ID14385( "interupt_second_encounter" ) )
        var_0 = 1;

    wait 0.5;

    if ( var_0 )
    {
        if ( _ID42237::_ID14385( "said_dont_alert_them" ) )
            level._ID28543 _ID42407::_ID10805( "cliff_pri_notsneaky" );
        else
        {
            level._ID28543 _ID42407::_ID10805( "cliff_pri_dontalertthem" );
            _ID42237::_ID14402( "said_dont_alert_them" );
        }
    }
}

_ID46538()
{
    _ID42237::_ID14413( "price_go_to_climb_ridge" );
    var_0 = 30;
    thread _ID49359::_ID48147( var_0 );
    _ID42237::_ID14402( "whiteout_started" );
    _ID42475::_ID34575( "aud_add_snowstorm_ambience", var_0 );
    wait 2;
    _ID42237::_ID14402( "blizzard_halfway" );
    maps\cliffhanger_stealth::_ID47363();
    _ID42407::_ID40868( "blizzard_finish", 20 );
    _unknown_4E93( 8 );
}

_ID52847()
{
    _ID42237::_ID14421( "clifftop_patrol2_dead", "price_go_to_climb_ridge" );
    wait 3;
    _ID42237::_ID14413( "blizzard_halfway" );
    _ID42237::_ID14402( "player_react_to_storm" );

    if ( !_ID42237::_ID14385( "someone_became_alert" ) || !_ID42237::_ID14385( "_stealth_spotted" ) )
        level._ID28543 _ID42407::_ID10805( "cliff_pri_stormsbrewing" );

    level._ID794 _meth_80A1( "scn_wind_draft_start_storm" );
    _ID42237::_ID14402( "said_storm_brewing" );
}

_ID51936()
{
    _ID42237::_ID14413( "price_at_climbing_spot" );
    _ID42237::_ID14413( "said_storm_brewing" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) || _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    level endon( "someone_became_alert" );
    _unknown_5B0F( "cliff_pri_splitup" );
    wait 0.2;
    _unknown_5B1C( "cliff_pri_coverofstorm" );
    wait 0.5;
    _unknown_5B28( "cliff_pri_likeaghost" );
    wait 0.2;
    _unknown_5B35( "cliff_pri_keepeyeonheart" );
    _ID42237::_ID14402( "said_lets_split_up" );
}

_ID50597()
{
    level endon( "base_c4_planted" );
    _ID42237::_ID14413( "give_c4_obj" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) || _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    thread _unknown_5B69( "cliff_pri_tappedcomms" );
    thread _unknown_5B71( "cliff_pri_yourein_2" );
    thread _unknown_5B79( "cliff_pri_yourein_3" );
}

_ID50588()
{
    var_0 = 15;
    thread _ID49359::_ID54702( var_0, var_0 );
    _ID42237::_ID14413( "price_go_to_climb_ridge" );
    thread _unknown_64C0();
}

_ID48539()
{
    level notify( "kill_variable_blizzard" );
    var_0 = 10;
    thread _ID49359::_ID48104( undefined, var_0 );
    _ID42475::_ID34575( "aud_remove_snowstorm_ambience", var_0 );
    wait(var_0);
    maps\cliffhanger_stealth::_ID52956();
}

_ID44747()
{
    self._ID764 = 200;
    thread _ID42407::_ID10896();

    if ( _func_02F( self._ID31463 ) )
        thread _ID42386::_ID12797( self._ID740 );

    self._ID452 = 400;
    self._ID377 = level._ID794;
    self _meth_81B3( level._ID794 );
}

_ID50016()
{
    level._ID794 endon( "detonate" );
    thread _unknown_65BA();
    _unknown_660B();
    thread _unknown_65A6();
}

_ID53362()
{
    _ID42237::_ID14388( "can_save" );
    level notify( "kill_price" );
    level._ID28543._ID511 = 0;
    level._ID28543 _ID42407::_ID36519();
    wait 0.5;

    if ( _func_1A7( level._ID28543 ) )
    {
        level._ID28543._ID49 = 1;
        level._ID28543 _meth_814B();
        level._ID28543 _meth_8058();
    }

    wait 2.5;
    _func_034( "ui_deadquote", &"CLIFFHANGER_PRICE_DIED" );
    _ID42407::_ID23778();
    level._ID794 waittill( "detonate" );
}

_ID50898()
{
    level endon( "stop_detecting_player_shot" );
    level._ID794 endon( "detonate" );
    level._ID794 endon( "death" );
    level._ID28543 endon( "death" );
    wait 0.1;
    var_0 = "";
    var_1 = 0;

    for (;;)
    {
        if ( _ID42237::_ID14385( "player_steps_into_view" ) || level._ID794 _meth_8135() )
        {
            level._ID794 _ID42407::_ID10226( 1, _ID42407::_ID31877, "player_shot" );
            return;
        }

        if ( level._ID794 _meth_8136() && !level._ID794 _meth_8137() )
        {
            level._ID794 _ID42407::_ID10226( 1, _ID42407::_ID31877, "player_shot" );
            return;
        }

        wait 0.05;
    }
}

_ID49182()
{
    if ( !_func_1A7( level._ID28543 ) )
        return;

    level._ID28543 endon( "death" );
    level._ID28543._ID11575 = 1;
    _ID42237::_ID14413( "start_big_explosion" );
    level._ID28543._ID11575 = undefined;
    level._ID28543 _ID42407::_ID10896();

    if ( level._ID28543 _ID42407::_ID13023( "_stealth_enabled" ) )
        level._ID28543 _ID42407::_ID13021( "_stealth_enabled" );

    var_0 = level._ID28543._ID4867;
    level._ID28543._ID4867 = 5000;
    level._ID28543 _meth_81B2( level._ID28543._ID740 );
    level._ID28543 _ID42407::_ID10871();
    level._ID28543._ID452 = 64;
    _ID42237::_ID14413( "capture_enemies_dead" );
    level._ID28543._ID4867 = var_0;
}

_ID50381()
{
    level._ID794 endon( "player_shot" );
    var_0 = _func_1A1( "h2_hanger_enemies_enter", "targetname" );
    var_0 waittill( "runin_out" );
}

_ID47010()
{
    if ( !_func_1A7( level._ID28543 ) )
        return;

    level._ID28543 endon( "death" );
    _ID42237::_ID14413( "player_can_see_capture" );
    _func_034( "player_has_witnessed_capture", 1 );
    level._ID28543 _ID42407::_ID10805( "plan_b" );
    level notify( "stop_detecting_player_shot" );
    level._ID794 _meth_8319( "c4" );

    if ( _func_03A( "sf_use_ignoreammo" ) == 1 )
        _func_0DB( "player_sustainAmmo", 0 );

    level._ID794 _meth_8301( "c4", 0 );

    if ( _func_03A( "sf_use_ignoreammo" ) == 1 )
        _func_0DB( "player_sustainAmmo", 1 );

    level._ID794 _meth_8301( "c4", 0 );
    level._ID43171 = level._ID794 _meth_831C();
    level._ID794 _meth_8320( "c4" );
    level._ID794 _meth_832C();
    level._ID794 _meth_832A();
    _func_0DB( "actionSlotsHide", 1 );
    level._ID794 endon( "detonate" );
    _ID42237::_ID14413( "player_steps_into_view" );
    level._ID794 notify( "player_shot" );
}

_ID43323()
{
    if ( _ID42237::_ID14385( "player_can_see_capture" ) )
        return;

    level endon( "player_can_see_capture" );
    level._ID54221 _ID42407::_ID10805( "cliff_pet_capturedcomrade" );
    level._ID54221 _ID42407::_ID10805( "cliff_pet_surrender" );
    level._ID54221 _ID42407::_ID10805( "cliff_pet_willdie" );
    level._ID54221 _ID42407::_ID10805( "cliff_pet_handsup" );
    level._ID54221 _ID42407::_ID10805( "cliff_pet_verywell" );
}

_ID43852()
{
    level._ID794 waittill( "detonate" );
    _ID42237::_ID14402( "player_detonate" );
    _func_0DB( "actionSlotsHide", 0 );
}

_ID52513()
{
    level._ID28543 notify( "stop personal effect" );
    level._ID28543 _ID42407::_ID12467();
    thread _unknown_6D42( "off" );
    var_0 = _func_1A1( "soap_waiting_node", "targetname" );

    if ( _ID42237::_ID14385( "brought_friends" ) )
        var_0 _ID42259::_ID3064( level._ID28543, "hunted_open_barndoor", undefined, "Cover Right" );

    var_0 thread _ID42259::_ID3111( level._ID28543, "hunted_open_barndoor" );
    var_1 = _ID42407::_ID35028( "locker_1" );
    var_2 = _ID42407::_ID35028( "locker_2" );
    level._ID51506 = [];
    level._ID51506[level._ID51506.size] = var_1;
    level._ID51506[level._ID51506.size] = var_2;
    var_3 = _func_1A1( "locker_brawl", "targetname" );
    var_3 _ID42259::_ID3016( level._ID51506, "locker_brawl" );
    var_4 = _func_1A1( "hanger_entrance_door", "targetname" );
    var_5 = _func_1A2( var_4._ID1191, "targetname" );

    for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        var_5[var_6] _meth_8053( var_4, "jnt_door" );

    var_4 _ID42407::_ID3428( "door" );
    var_4 thread _ID42259::_ID3111( var_4, "open_door_anim" );

    for ( var_6 = 0; var_6 < var_5.size; var_6++ )
    {
        if ( var_5[var_6]._ID170 == "script_brushmodel" )
            var_5[var_6] _meth_805F();
    }

    level._ID28543 _ID42407::_ID10896();
    thread _ID42407::_ID4917( "axis" );
}

_ID52471()
{
    var_0 = _ID42407::_ID52253( "hanger_capture_enemy1" );
    var_1 = _ID42407::_ID52253( "hanger_capture_enemy2" );
    var_2 = _ID42407::_ID52253( "hanger_capture_enemy3" );
    var_3 = _ID42407::_ID52253( "hanger_capture_enemy4" );
    var_4 = _ID42407::_ID52253( "hanger_capture_enemy5" );
    var_5 = _ID42407::_ID52253( "hanger_capture_enemy6" );
    var_6 = _ID42407::_ID52253( "hanger_capture_petrov" );
    var_0._ID3189 = "guard1";
    var_1._ID3189 = "guard2";
    var_2._ID3189 = "guard3";
    var_3._ID3189 = "guard4";
    var_4._ID3189 = "guard5";
    var_5._ID3189 = "guard6";
    var_6._ID3189 = "petrov";
    var_7 = [];
    var_7[var_7.size] = var_0;
    var_7[var_7.size] = var_1;
    var_7[var_7.size] = var_2;
    var_7[var_7.size] = var_3;
    var_7[var_7.size] = var_4;
    var_7[var_7.size] = var_5;
    var_7[var_7.size] = var_6;
    _ID42237::_ID3350( var_7, ::_unknown_6BE0 );
    _ID42237::_ID3350( var_7, ::_unknown_6B45 );
    _ID42237::_ID3350( var_7, ::_unknown_634B );
    var_8 = var_7;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_9 _ID42407::_ID10973();

        if ( var_9._ID3189 == "guard1" || var_9._ID3189 == "guard6" )
            var_9 _meth_81D6( "crouch" );

        var_9.cheat._ID48626 = 1;
    }

    var_clear_2
    var_clear_0
}

_ID48633()
{
    thread _unknown_6C40();
    thread _unknown_6B84();
    thread _unknown_6B7B();
    thread _ID42407::_ID12467();
    self.cheat.ignorewolfthink = 1;
    self.cheat._ID48626 = 1;
    self _meth_81D6( "stand" );
}

_ID52560()
{
    var_0 = _func_1A2( "hanger_capture_enemies", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_unknown_6B8F );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID49200()
{
    self endon( "death" );
    var_0 = [];
    var_0[var_0.size] = "capture_shoutingA";
    var_0[var_0.size] = "capture_shoutingB";
    self waittill( "goal" );
    wait 1;
    _ID42259::_ID3020( self, var_0[_func_0B7( var_0.size )] );
}

_ID53642()
{
    self endon( "death" );
    var_0 = [];
    var_0[var_0.size] = "explosion_reactA";
    var_0[var_0.size] = "explosion_reactB";
    var_0[var_0.size] = "explosion_reactC";
    var_0[var_0.size] = "explosion_reactD";
    var_0[var_0.size] = "explosion_reactE";
    _ID42237::_ID14413( "start_big_explosion" );
    wait(_func_0BA( 0, 0.5 ));
    self._ID49 = 1;
    self._ID486 = 1;
    self._ID7._ID28253 = "stand";
    _ID42259::_ID3020( self, var_0[_func_0B7( var_0.size )] );
}

_ID54542()
{
    self endon( "death" );
    _ID42237::_ID14413( "start_big_explosion" );
    wait(_func_0BA( 0, 0.5 ));
    self._ID49 = 1;
    self._ID486 = 1;
    self._ID7._ID28253 = "stand";
    var_0 = _func_06A( "script_origin", ( -8944.6, -25958.3, 895.999 ) );
    var_0._ID65 = ( 0, -44.613, 0 );
    var_0 _ID42259::_ID3111( self, "react" );
}

_ID49460()
{
    var_0 = _func_1A1( "hangar_leftdoor_goal", "targetname" );
    var_1 = _func_1A1( "hangar_leftdoor_start", "targetname" );
    var_2 = _func_1A2( "hangar_leftdoor", "targetname" );
    var_2 thread _unknown_6D20( var_0, var_1 );
    var_3 = _func_1A1( "hangar_rightdoor_goal", "targetname" );
    var_4 = _func_1A1( "hangar_rightdoor_start", "targetname" );
    var_5 = _func_1A2( "hangar_rightdoor", "targetname" );
    var_5 thread _unknown_6D49( var_3, var_4 );
    wait 0.3;
    var_6 = _func_1A1( "hanger_door_shadowbrush", "targetname" );
    var_6 _meth_80B7();
    _ID42475::_ID34575( "aud_change_hanger_ambience" );
    _ID42475::_ID34575( "aud_activate_hanger_door_transition" );
    _ID42475::_ID34575( "aud_start_mix_mactavish_trapped" );
}

_ID48081( var_0, var_1 )
{
    var_2 = 5.75;
    var_3 = var_0._ID740 - var_1._ID740 * ( 1, 1, 0 );
    var_4 = self;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 _meth_82B8( var_5._ID740 + var_3, var_2, 1, 0.4 );

        if ( _func_02F( var_5._ID31139 ) && var_5._ID31139 )
            var_5 _meth_805F();
    }

    var_clear_2
    var_clear_0
    self[0] _meth_80A1( "door_hanger_metal_open" );
    wait(var_2);
    var_7 = self;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_5 = var_7[var_8];

        if ( _func_02F( var_5._ID31139 ) && var_5._ID31139 )
            var_5 _meth_805E();
    }

    var_clear_1
    var_clear_0
}

_ID51599()
{
    var_0 = _func_1A1( "hangar_leftdoor_goal", "targetname" );
    var_1 = _func_1A2( "hangar_leftdoor", "targetname" );
    var_1 thread _unknown_6E67( var_0 );
    var_2 = _func_1A1( "hangar_rightdoor_goal", "targetname" );
    var_3 = _func_1A2( "hangar_rightdoor", "targetname" );
    var_3 thread _unknown_6E83( var_2 );
}

_ID53779( var_0 )
{
    var_1 = var_0._ID740 - self[0]._ID740 * ( 1, 1, 0 );
    var_2 = self;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID740 = var_3._ID740 + var_1;

        if ( _func_02F( var_3._ID31139 ) && var_3._ID31139 )
            var_3 _meth_805E();
    }

    var_clear_2
    var_clear_0
}

_ID52675()
{
    self endon( "death" );
    self._ID11575 = 1;
    self._ID452 = 8;
    self._ID31212 = 1;
    _ID42237::_ID14413( "start_big_explosion" );
    self._ID49 = 1;
    wait 3;
    self._ID11575 = undefined;
}

_ID48102( var_0, var_1 )
{
    if ( !_func_1A7( level._ID28543 ) )
        return;

    level._ID28543 endon( "death" );
    _ID42237::_ID14413( "start_big_explosion" );
    _ID42475::_ID34575( "aud_stop_mix_mactavish_trapped" );
    _ID42475::_ID34575( "aud_start_mix_slowmo_explosion" );
    _ID42407::_ID34379();
    _ID42407::_ID34377( 0.3 );
    _ID42407::_ID34374( 0.05 );
    _ID42407::_ID34371();
    wait 0.5;
    level._ID794 _meth_8055();
    level._ID794 _meth_813A( 0 );
    level._ID794 _meth_80FA( "c4", "drop" );
    waittillframeend;
    wait(level._ID794 _meth_859B() - 50 / 1000);
    level._ID794 _meth_84A8();
    level._ID794 _meth_8329();
    level._ID794 _meth_831A( "c4" );
    level._ID794 _meth_832D();
    level._ID794 _meth_832B();
    var_2 = level._ID43171;

    if ( !level._ID794 _meth_831F( var_2 ) )
    {
        var_2 = level._ID794 _meth_8317()[0];

        if ( !_func_02F( var_2 ) )
            var_2 = level._ID794 _meth_8316()[0];
    }

    level._ID794 _meth_8320( var_2 );
    level._ID794 _meth_813A( 1 );
    level._ID794 _meth_81F1( 1 );
    level._ID794 _meth_8123( 1 );
    level._ID794 _meth_8122( 1 );
    thread _unknown_709F();
    _ID42237::_ID14413( "end_big_explosion" );
    var_3 = _func_0DE( "axis" );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5._ID4867 = 0;
    }

    var_clear_2
    var_clear_0
    wait 0.5;
    _ID42407::_ID34375( 1 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
    level._ID28543 _ID42407::_ID17508();
    var_3 = _func_0DE( "axis" );
    var_7 = var_3;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_5 = var_7[var_8];
        var_5._ID4867 = _unknown_70C9();
    }

    var_clear_1
    var_clear_0
    level._ID794 _meth_80A1( "scn_cliff_c4_explosion_snowwave" );
    wait 2;
    _ID42237::_ID14402( "hanger_slowmo_ends" );
    _ID42475::_ID34575( "aud_stop_mix_slowmo_explosion" );
    wait 1;
    _ID42475::_ID34575( "aud_base_alarm_system" );
    _ID42407::_ID4918( "axis" );
    wait 2;
    _ID42407::_ID4422( "slowmo_ends" );
}

_ID52644()
{
    return 0.42;
}

_ID54154( var_0, var_1 )
{
    _ID42234::_ID13611( 8 );
    level._ID794 _meth_80A1( "scn_hangar_explo_front" );
    wait 0.2;
    _ID42234::_ID13611( 12 );
    wait 0.1;
    _ID42234::_ID13611( 10 );
    wait 0.2;
    _ID42237::_ID14402( "end_big_explosion" );
    wait 0.2;
    _unknown_665F( "mig1" );
    wait 0.2;
    _unknown_666C( "mig2" );
    wait 0.5;

    if ( _func_02F( level._ID52581 ) )
    {
        var_2 = level._ID52581;
        var_2 = _ID42407::_ID29506( var_2 );
        var_2 = _ID42237::_ID15566( level._ID794._ID740, var_2 );

        for ( var_3 = 6; var_3 < var_2.size; var_3++ )
        {
            var_4 = _ID42237::_ID28976( 10 );
            var_4 = ( var_4[0], var_4[1], _func_0C3( var_4[2] ) );
            var_4 += var_2[var_3]._ID740;
            _ID45456::_ID54623( var_2[var_3] );
            var_2[var_3] _meth_8058();
            wait 0.05;
        }
    }
}

_ID47876()
{
    level._ID794 waittill( "reload_start" );
    _ID42237::_ID14402( "player_reloading" );
}

_ID47580()
{
    _ID42407::_ID1892( "axis", ::_unknown_7224 );
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _unknown_7249();
    }

    var_clear_2
    var_clear_0
}

_ID24832()
{
    self._ID464 = 0;
}

_ID48543()
{
    if ( self._ID172 == "script_brushmodel" )
        self _meth_805F();

    self _meth_80B7();
}

_ID53499()
{
    self._ID4867 = _unknown_721D();
}

_ID50305( var_0 )
{
    var_1 = _func_1AF();
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1._ID499 = "center";
    var_1._ID1284 = "middle";
    var_1._ID1331 = 0;
    var_1._ID1339 = 0;
    var_1 _meth_80D1( var_0 );
    var_1._ID55 = 0;
    var_1._ID408 = 1;
    var_1._ID983 = 150;
    var_1._ID393 = 1.75;
    return var_1;
}

_ID53109()
{
    var_0 = [];
    var_0["e3"] = 1;
    return _func_02F( var_0[level._ID35897] );
}

_ID46691()
{
    _ID42237::_ID14400( "broke_stealth" );
    _ID42237::_ID14415( "_stealth_spotted", "someone_became_alert" );
    _ID42237::_ID14402( "broke_stealth" );
}

_ID50888( var_0 )
{
    wait 3;

    if ( !_func_1A7( level._ID28543 ) )
        return;

    if ( !level._ID28543._ID256 )
        return;

    if ( !_ID42263::_ID4452() )
        return;

    _func_08B( var_0 );
}

_ID47130( var_0 )
{
    self _meth_84A7( "force_off" );

    while ( _func_02F( var_0 ) )
    {
        while ( _func_02F( var_0 ) && _ID42237::_ID11126( self._ID740, level._ID794._ID740 ) > 1000000 )
            wait 0.5;

        self _meth_84A7( "force_fully_on" );

        while ( _func_02F( var_0 ) && _ID42237::_ID11126( self._ID740, level._ID794._ID740 ) < 1210000 )
            wait 0.5;

        self _meth_84A7( "force_off" );
    }

    self _meth_84A7( "force_off" );
    self _meth_81EB( 0 );
    wait 0.1;
    self _meth_80B7();
}

_ID54287()
{
    var_0 = _func_1A2( "generator_spotlight", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_73D3, thisthread );
    var_1 = _func_1A1( "generator_linkedtolight", "script_noteworthy" );
    var_1 waittill( "exploded" );
}

_ID53010( var_0, var_1, var_2 )
{
    level notify( "wibble_changing_" + var_0 );
    level endon( "wibble_changing_" + var_0 );
    var_3 = var_2 * 10;
    var_4 = var_1 - level._ID45970[var_0] / var_3;

    while ( var_3 > 0 )
    {
        level._ID45970[var_0] = level._ID45970[var_0] + var_4;
        _func_2F1( 0, var_0, level._ID45970[var_0] );
        var_3--;
        wait 0.1;
    }
}

_ID47676()
{
    for (;;)
    {
        level waittill( "player_indoors",  var_1, var_0  );

        if ( _func_02F( var_1 ) )
        {
            if ( _func_02F( var_1._ID31388 ) && var_1._ID31388 == "cliffhanger_hangar" )
                var_2 = 0;
            else
                var_2 = 0.3;

            thread _unknown_7497( "x", var_2, 2 );
            thread _unknown_74A2( "y", var_2, 1 );
        }
    }
}

_ID52966()
{
    _ID42237::_ID14400( "wibble_changing" );
    level endon( "player_gets_on_snowmobile" );
    childthread _unknown_74CF();
    level._ID45970["x"] = 0;
    level._ID45970["y"] = 0;
    wait 1;

    for (;;)
    {
        if ( _func_02F( level._ID46419 ) && level._ID46419 == "hard" || level._ID46419 == "extreme" )
        {
            var_0 = 0.7;
            var_1 = 0.5;
        }
        else
        {
            var_0 = 0.5;
            var_1 = 0.3;
        }

        if ( !_ID42237::_ID14385( "player_indoors" ) )
        {
            thread _unknown_7515( "x", var_0, 2 );
            thread _unknown_751F( "y", var_1, 1 );
        }

        level waittill( "blizzard_level_change" );
    }
}

_ID53739()
{
    _func_0DB( "actionSlotsHide", 1 );
    _func_0DB( "compass", 0 );
    _func_0DB( "hud_showStance", 0 );
    _func_0DB( "ammoCounterHide", 1 );
    thread _unknown_7635();
    var_0 = _func_1A1( "c4_planting_node", "targetname" );
    var_1 = _ID42407::_ID35028( "worldbody" );
    var_1 _meth_805A();
    var_0 _ID42259::_ID3018( var_1, "planting_c4" );
    var_2 = self _meth_8188();
    self _meth_8121( 1 );
    self _meth_8122( 0 );
    self _meth_8123( 0 );
    self _meth_80F6();
    self _meth_8328( 1, 200, 0.1 );
    var_3 = 0.2;
    var_4 = 0.5;

    if ( var_2 == "crouch" )
        var_3 = 0.25;
    else if ( var_2 == "prone" )
    {
        var_3 = 0.95;
        var_4 = 0.95;
    }

    var_5 = _ID42259::_ID53505( var_1, 40, 100, var_3, var_4 );
    self _meth_8087( var_1, "tag_player", var_5, var_5 / 2, var_5 / 2 );
    wait(var_5);
    var_1 _meth_8059();
    thread _unknown_7682();
    var_0 _ID42259::_ID3111( var_1, "planting_c4" );
    self _meth_8055();
    var_1 _meth_80B7();
    self _meth_8122( 1 );
    self _meth_8123( 1 );
    self _meth_8329();
    self _meth_80F7();
}

h2_c4_install_cin()
{
    var_0 = _ID54167::_ID43386( "cin_install_c4" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 16.0, 34.0, 16.0, 16.0 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.35 ) _ID54167::_ID50321( 3.0, 13.0, 3.0, 3.0 );
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID50321( 3.0, 18.5, 2.0, 2.0 );
    var_0 _ID54167::_ID48800( 2.15 ) _ID54167::_ID50321( 16.0, 30.0, 6.0, 6.0 );
    var_0 _ID54167::_ID48800( 2.65 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 2.65 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 1.05 ) _ID54167::_ID47198( 0.12, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.2 );
    var_0 _ID54167::_ID48166();
}

_ID47745()
{
    var_0 = _func_1A2( "possible_c4_models", "targetname" );
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    var_1 _meth_805A();
}

_ID44374( var_0, var_1, var_2 )
{
    if ( var_2 )
        thread maps\cliffhanger_anim::_ID48737( self );

    if ( var_1 )
        _ID42259::_ID3108( self, var_0 );
    else
        _ID42407::_ID10805( var_0 );

    if ( var_2 )
        maps\cliffhanger_anim::_ID50919( self );
}

_ID49754( var_0 )
{
    self _meth_80F3( 1 );
    var_1 = _func_06A( "script_origin", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_2 = _ID42407::_ID35028( "worldbody" );
    var_2 _meth_805A();
    var_3 = [];
    var_3["left"] = _func_06A( "script_origin", var_0 _meth_818C( "tag_wheel_front_left" ) );
    var_3["right"] = _func_06A( "script_origin", var_0 _meth_818C( "tag_wheel_front_right" ) );
    var_4 = _ID42407::_ID15611( level._ID794._ID740, var_3, 500 );
    var_3["left"] _meth_80B7();
    var_3["right"] _meth_80B7();
    var_1 _ID42259::_ID3018( var_2, "mounting_snowmobile_" + var_4 );
    var_5 = 0;
    var_6 = level._ID794 _meth_8188();

    if ( var_6 == "crouch" )
        var_5 = 0.25;
    else if ( var_6 == "prone" )
        var_5 = 0.85;

    level._ID794 _meth_8121( 1 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    wait(var_5);
    self _meth_8328( 1, 200, 0.1 );
    _func_0DB( "objectiveHide", 1 );
    var_7 = _ID42259::_ID53505( var_2, 60, 80, 0.2, 0.75 );
    self _meth_8087( var_2, "tag_player", var_7, var_7 / 2, var_7 / 2 );
    wait(var_7);
    self _meth_8084( var_2, "tag_player", 1, 0, 0, 0, 0, 1 );
    var_8 = _func_039( "sv_znear" );
    _func_0DB( "sv_znear", 1.0 );
    var_2 _meth_8059();
    _unknown_79A2( var_0 );
    var_1 thread _ID42259::_ID3111( var_2, "mounting_snowmobile_" + var_4 );
    var_9 = _func_067( var_2 _ID42407::_ID16120( "mounting_snowmobile_" + var_4 ) );
    var_2 _ID42259::_ID46811( "stop_lerp", var_1, var_0, var_9 );
    _func_0DB( "sv_znear", var_8 );
    self _meth_8055();
    var_2 _meth_80B7();
    var_1 _meth_80B7();
    self _meth_8122( 1 );
    self _meth_8123( 1 );
    self _meth_8329();
    _func_0DB( "objectiveHide", 0 );
    self _meth_80F3( 0 );
}

_ID45987( var_0 )
{
    var_0._ID3189 = "snowmobile_player";
    var_0 _meth_8155( var_0 _ID42407::_ID16120( "rpm_min" ), 1 );
    var_0 _meth_8155( var_0 _ID42407::_ID16120( "rpm_max" ), 0 );
    var_0 _meth_8155( var_0 _ID42407::_ID16120( "speedometer_0" ), 1 );
}

_ID52128( var_0 )
{
    var_1 = _func_039( "r_znear" );
    _func_0DB( "r_znear", 1 );
    level._ID794 _meth_830B( 0 );
    level._ID794 _meth_813A( 0 );
    level._ID794 _meth_830C( 0 );
    level._ID794 _meth_830D( 0 );
    level._ID794 _meth_8124( 0 );
    level._ID794 _meth_830E( 0 );
    level._ID794 _meth_8139( 0 );
    level._ID794 _meth_8517( 0 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_8121( 1 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 0 );
    wait 0.5;
    var_2 = var_0 == "on";
    var_3 = "h2_vm_snowgoggle_takeoff";
    var_4 = _ID49359::_ID48243;
    var_5 = 0.5;

    if ( var_2 )
    {
        var_5 = 0.35;
        var_4 = _ID49359::_ID47801;
        var_3 = "h2_vm_snowgoggle_puton";
    }

    level._ID794 thread _ID42259::_ID45613( var_3 );
    level._ID794 waittill( "viewmodelAnimStart" );
    _ID42407::_ID10226( 0.25, var_4, level._ID794, var_5 );
    level._ID794 waittill( "viewmodelAnimRaiseEnd" );
    level._ID794 _meth_830B( 1 );
    level._ID794 _meth_813A( 1 );
    level._ID794 _meth_830C( 1 );
    level._ID794 _meth_830D( 1 );
    level._ID794 _meth_8124( 1 );
    level._ID794 _meth_830E( 1 );

    if ( !_func_02F( level._ID50570 ) || !level._ID50570 )
        level._ID794 _meth_8139( 1 );

    level._ID794 _meth_8517( 1 );
    level._ID794 _meth_830F( 1 );
    level._ID794 _meth_8121( 1 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
    _func_0DB( "r_znear", var_1 );
    _func_0DB( "fx_alphathreshold", 0 );
}

_ID50722()
{
    var_0 = _func_1A1( "acs_node", "targetname" );
    var_1 = _func_1A1( "dsm", "targetname" );
    var_1._ID3189 = "acs_module";
    var_1 _ID42407::_ID3428();
    var_2 = _ID42407::_ID35028( "acs_wires" );
    var_3 = _ID42407::_ID35028( "worldbody" );
    var_3 _meth_805A();
    var_1 _ID42407::_ID16953();
    var_0 _ID42259::_ID3018( var_3, "pickup_acs" );
    var_0 _ID42259::_ID3018( var_1, "pickup_acs" );
    var_0 _ID42259::_ID3018( var_2, "pickup_acs" );
    var_0 waittill( "start_anims" );
    _func_0DB( "actionSlotsHide", 1 );
    _func_0DB( "compass", 0 );
    _func_0DB( "hud_showStance", 0 );
    var_1 _ID42407::_ID36591();
    self _meth_8122( 0 );
    self _meth_8123( 0 );
    self _meth_8328( 1, 200, 0.1 );
    var_4 = _ID42259::_ID53505( var_3, 40, 100, 0.2, 0.75 );
    self _meth_8087( var_3, "tag_player", var_4, var_4 / 2, var_4 / 2 );
    wait(var_4);
    var_3 _meth_8059();
    thread _unknown_7CDF();
    var_0 thread _ID42259::_ID3111( var_1, "pickup_acs" );
    var_0 thread _ID42259::_ID3111( var_2, "pickup_acs" );
    var_0 _ID42259::_ID3111( var_3, "pickup_acs" );
    self _meth_8055();
    var_3 _meth_80B7();
    self _meth_8122( 1 );
    self _meth_8123( 1 );
    self _meth_8329();
    var_0 _meth_80B7();
    var_1 _meth_80B7();
    _func_0DB( "compass", 1 );
    _func_0DB( "actionSlotsHide", 0 );
    _func_0DB( "hud_showStance", 1 );
    level._ID28543 _ID45995::_ID45228();
    var_5 = _ID42407::_ID16300( "light_godray_cliffhanger_hangar" );
    var_5 = _ID42237::_ID3296( var_5, _ID42407::_ID16300( "cliff_underdoor_hangar_snow" ) );
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 _ID42237::_ID26402();
    }

    var_clear_2
    var_clear_0
    _func_0DB( "fx_alphathreshold", 10 );
}

h2_pickup_acs_cin()
{
    var_0 = _ID54167::_ID43386( "pickup_acs_cin" );
    var_0 _ID54167::_ID48800( 0.25 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 1.6 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.25 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.1 ) _ID54167::_ID47198( 0.1, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48800( 1.6 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID52858()
{
    waittillframeend;
    _ID42237::_ID14415( "blizzard_start", "done_with_stealth_camp", "player_in_hanger" );
    var_0 = _ID42407::_ID16300( "cliff_mountain_clouds_01" );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "cliff_mountain_clouds_02" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "cliff_mountain_clouds_03_blured" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "cliff_mountain_clouds_03" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "cliff_mountain_clouds_04" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "cliff_mountain_clouds_05" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "snow_blowoff_ledge_runner" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "snow_blowoff_ledge_interval_runner" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "cliff_ice_parts_falling_runner" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "cliff_snow_ledge_xxxlarge_swirl" ) );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42237::_ID26402();
    }

    var_clear_2
    var_clear_0
}

_ID54496( var_0 )
{
    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "actionSlotsHide", 1 );
    _func_0DB( "hud_showStance", 0 );
    _func_0DB( "cg_drawcrosshair", "0" );
    level._ID794 notify( "noHealthOverlay" );
    var_1 = 1.5;
    _ID42475::_ID34575( "start_fade_to_death" );
    _func_148( "black_bw", var_1 );
    wait(var_1);
    wait 0.5;

    if ( _func_02F( var_0 ) )
        [[ var_0 ]]();
    else
        _ID42349::_ID47176();

    _ID42407::_ID23778();
}

_ID49051( var_0 )
{
    var_1 = _func_1A2( "chair_clip", "targetname" );
    _ID42407::_ID3304( var_1 );
}

_ID43817( var_0 )
{
    var_1 = [];
    var_1["aug_reflex"] = "ak47_arctic_reflex";
    var_1["aug_scope"] = "ak47_arctic_acog";
    var_1["ump45_arctic"] = "kriss";
    var_1["ump45_reflex"] = "kriss_reflex";
    var_1["kriss_eotech"] = "kriss_reflex";
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_4 == var_0 )
            return var_3;
    }

    var_clear_2
    return var_0;
}
#using_animtree("vehicles");

_ID44501( var_0 )
{
    var_0[0]._ID40152 = %h2_uaz_driver_exit_into_stand_door_winter;
    var_0[1]._ID40152 = %h2_uaz_passenger_exit_into_stand_door_winter;
    var_0[2]._ID40152 = %h2_uaz_rear_driver_exit_into_stand_door_winter;
    var_0[3]._ID40152 = %h2_uaz_passenger2_exit_into_stand_door_winter;
    return var_0;
}

h2_delete_icicles()
{
    _ID42237::_ID14413( "player_detonate" );
    var_0 = _func_1A2( "hanging_object", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID31529 ) && var_2._ID31529 == "icicle_delete" )
            var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

hide_snow_decals()
{
    var_0 = _func_1A2( "snow_door", "script_noteworthy" );

    for (;;)
    {
        _ID42237::_ID14413( "snow_doors" );
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2 _meth_805A();
        }

        var_clear_4
        var_clear_2
        _ID42237::_ID14426( "snow_doors" );
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];
            var_2 _meth_8059();
        }

        var_clear_1
        var_clear_0
    }
}

swap_decals_on_propane_tank()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );

    for (;;)
    {
        if ( _func_02F( self._ID13610 ) )
        {
            var_1 = _func_06A( "script_model", self._ID740 );
            var_1._ID65 = self._ID65;
            var_1 _meth_80B8( "com_propane_tank02_des_decal" );
            var_2 = var_0;

            for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
            {
                var_3 = var_2[var_4];
                var_3 _meth_80B7();
            }

            var_clear_2
            var_clear_0
            return;
        }

        waittillframeend;
    }
}

cliffhanger_polygonoffscale_override( var_0, var_1 )
{
    if ( !_func_02F( level._ID1332 ) || !level._ID1332 )
        return;

    var_2 = _func_03B( "sm_polygonOffsetScale" );
    _func_0DB( "sm_polygonOffsetScale", var_0 );
    level waittill( var_1 );
    _func_0DB( "sm_polygonOffsetScale", var_2 );
}

tarped_mig_monitor()
{
    var_0 = _func_1A1( "tarp_to_delete1", "targetname" );
    var_1 = _func_1A1( "tarp_to_delete2", "targetname" );
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _func_1A2( "destructible_toy", "targetname" );
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _func_02F( var_6._ID31388 ) && var_6._ID31388 == "tarped_mig1" )
            var_2 = var_6;

        if ( _func_02F( var_6._ID31388 ) && var_6._ID31388 == "tarped_mig2" )
            var_3 = var_6;
    }

    var_clear_2
    var_clear_0
    thread _unknown_82DD( var_2, var_0 );
    thread _unknown_82E4( var_3, var_1 );
}

wait_until_explode( var_0, var_1 )
{
    var_0 waittill( "exploded" );
    var_1 _meth_80B7();
}

snowmobile_visionset_setup()
{
    var_0 = _func_1A1( "snowmobile_visionset_trigger", "targetname" );
    var_1 = var_0._ID740;
    var_0._ID740 = var_0._ID740 + ( 0, 0, -1000 );
    _ID42237::_ID14413( "keyboard_used" );
    var_0._ID740 = var_1;
}
