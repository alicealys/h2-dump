// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49840()
{
    level._ID43641 = maps\cliffhanger_stealth::_ID43641;
    _ID42323::_ID32417( "viewhands_player_arctic_wind" );
    _ID44905::_ID49306( "viewhands_player_arctic_wind", "vehicle_snowmobile_player" );
    precacheitem( "hind_turret_penetration" );
    precacheitem( "hind_FFAR" );
    precacheitem( "zippy_rockets" );
    precacheitem( "rpg_straight" );
    precachemodel( "com_computer_keyboard_obj" );
    precacheitem( "c4" );
    precacheshader( "overhead_obj_icon_world" );
    precacheshader( "hud_icon_heartbeat" );
    precacheshader( "hud_dpad" );
    precacheshader( "hud_arrow_left" );
    precachemodel( "weapon_ak47_clip" );
    precachemodel( "accessories_windsock_animated" );
    precachemodel( "h2_ch_megaphone_rig" );
    precachemodel( "com_roofvent1_snow_animated" );
    precachemodel( "ch_campfire_equipment_animated" );
    precachemodel( "head_hero_soap_arctic_interior" );
    precachestring( &"CLIFFHANGER_LINE1" );
    precachestring( &"CLIFFHANGER_LINE2" );
    precachestring( &"CLIFFHANGER_LINE3" );
    precachestring( &"CLIFFHANGER_LINE4" );
    precachestring( &"CLIFFHANGER_LINE5" );
    precachestring( &"SCRIPT_WAYPOINT_COVER" );
    precachestring( &"AUTOSAVE_AUTOSAVE" );
    precachestring( &"SCRIPT_WAYPOINT_COVER" );
    precachestring( &"SCRIPT_PLATFORM_HINT_STANDKEY" );
    precachestring( &"CLIFFHANGER_RUN_OVER" );
    precachestring( &"CLIFFHANGER_BOARD" );
    precachestring( &"CLIFFHANGER_E3_NOT_AS_PLANNED" );
    precachestring( &"CLIFFHANGER_HOW_TO_CLIMB" );
    precachestring( &"CLIFFHANGER_HOLD_ON_TIGHT" );
    precachestring( &"CLIFFHANGER_MAKES_FIRST_JUMP" );
    precachestring( &"CLIFFHANGER_E3_INTEREST_OF_TIME" );
    precachestring( &"CLIFFHANGER_E3_NOT_AS_PLANNED" );
    precachestring( &"CLIFFHANGER_LEFT_ICEPICK" );
    precachestring( &"CLIFFHANGER_RIGHT_ICEPICK" );
    precachestring( &"CLIFFHANGER_LEFT_ICEPICK_PC" );
    precachestring( &"CLIFFHANGER_RIGHT_ICEPICK_PC" );
    precachestring( &"CLIFFHANGER_HOW_TO_CLIMB_PC" );
    level._ID46111 = _ID42407::_ID52183;
    level._ID53839 = "kriss";
    _ID49383::main();
    _ID53530::main();
    _ID49506::main();
    var_0 = getentarray( "destructible_tree", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID50201 );
    _ID42530::main( "tag_origin" );
    _ID42323::main();
    _ID42314::_ID19317();
    _ID42272::_ID33575( "compass_map_cliffhanger" );
    _ID42407::_ID1895( "hint_heartbeat_sensor", &"CLIFFHANGER_SWITCH_HEARTBEAT", ::_ID50349, undefined, "medium_background" );
    _ID45778::main();
    _ID43691::main();
    _ID48225::main();
    _ID42316::main();
    _ID43509::main();
    _ID42315::main();
    _ID47233::main();
    maps\cliffhanger_anim::_ID43266();
    _ID42373::main();
    maps\cliffhanger_stealth::_ID46260();
    _ID42339::main();
    _ID47980::_ID45379();
    thread _ID47739();
    maps\cliffhanger_aud::main();
    _ID42475::_ID34575( "aud_turnoff_hanger_door_transition" );
    level._ID46026 = [];
    thread maps\cliffhanger_snowmobile_code::_ID47380();
    var_1 = getentarray( "cliff_death_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID52408 );
    var_2 = getentarray( "high_threat_spawner", "targetname" );
    _ID42237::_ID3350( var_2, ::_ID45077 );
    level._ID48831 = [];
    var_3 = getentarray( "tarmac_snowmobile", "script_noteworthy" );
    _ID42237::_ID3350( var_3, ::_ID44385 );
    var_4 = getentarray( "wind_blown_object", "targetname" );
    _ID42237::_ID3350( var_4, ::_ID48501 );
    var_5 = getentarray( "end_camp_spawner", "targetname" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID49185 );
    var_6 = getentarray( "speedy_littlebird_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID44110 );
    var_7 = getent( "ending_heli", "script_noteworthy" );
    var_7 _ID42407::_ID1947( maps\cliffhanger_snowmobile_code::_ID50770 );
    var_8 = getentarray( "magic_bullet_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_8, maps\cliffhanger_snowmobile_code::_ID45033 );
    var_9 = getentarray( "god_vehicle_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_9, maps\cliffhanger_snowmobile_code::_ID51332 );
    _ID42237::_ID3350( getentarray( "start_crate_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_ID48673 );
    _ID42237::_ID3350( getentarray( "start_crate_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_ID49184 );
    _ID42237::_ID3350( getentarray( "start_quonset_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_ID48673 );
    _ID42237::_ID3350( getentarray( "right_side_start_guy", "script_noteworthy" ), _ID42407::_ID1947, ::_ID52747 );
    _ID42237::_ID3350( getentarray( "2story_leaner", "script_noteworthy" ), _ID42407::_ID1947, ::_ID51051 );
    _ID42237::_ID3350( getentarray( "2story_sitter", "script_noteworthy" ), _ID42407::_ID1947, ::_ID43782 );
    _ID42237::_ID3350( getentarray( "container_leaner", "script_noteworthy" ), _ID42407::_ID1947, ::_ID51051 );
    _ID42237::_ID3350( getentarray( "fence_walker", "script_noteworthy" ), _ID42407::_ID1947, ::_ID50053 );
    _ID42237::_ID3350( getentarray( "satbuilding_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_ID50053 );
    _ID42237::_ID3350( getentarray( "ridge_patroler", "script_noteworthy" ), _ID42407::_ID1947, ::_ID50053 );
    _ID42237::_ID3350( getentarray( "start_crate_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_ID50053 );
    var_10 = getentarray( "ridge_guy_left", "script_noteworthy" );
    _ID42237::_ID3350( var_10, _ID42407::_ID1947, ::_ID50053 );
    _ID42237::_ID3350( var_10, _ID42407::_ID1947, ::_ID47866, "ridge_guy_left_first_alert" );
    var_11 = getentarray( "ridge_guy_right", "script_noteworthy" );
    _ID42237::_ID3350( var_11, _ID42407::_ID1947, ::_ID47866, "ridge_guy_right_first_alert" );
    _ID42237::_ID3350( _ID42237::_ID16640( "price_target_start", "script_noteworthy" ), ::_ID47447 );
    _ID42237::_ID3350( _ID42237::_ID16640( "price_target_stop", "script_noteworthy" ), ::_ID51738 );
    _ID42237::_ID3350( getentarray( "blue_building_smoker", "script_noteworthy" ), _ID42407::_ID1947, ::_ID43303 );
    _ID42237::_ID3350( getentarray( "blue_building_loader", "script_noteworthy" ), _ID42407::_ID1947, ::_ID43303 );
    _ID42237::_ID3350( getentarray( "blue_building_smoker", "script_noteworthy" ), _ID42407::_ID1947, ::_ID50551 );
    _ID42237::_ID3350( getentarray( "blue_building_loader", "script_noteworthy" ), _ID42407::_ID1947, ::_ID50551 );
    _ID42237::_ID3350( getentarray( "round_building_loader", "script_noteworthy" ), _ID42407::_ID1947, ::_ID53276 );
    _ID42237::_ID3350( getentarray( "fence_walker", "script_noteworthy" ), _ID42407::_ID1947, ::_ID47901, "fence_walker_dead" );
    _ID42237::_ID3350( getentarray( "satbuilding_smoker", "script_noteworthy" ), _ID42407::_ID1947, ::_ID47901, "satbuilding_smoker_dead" );
    _ID42237::_ID3350( getentarray( "southeast_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_ID47901, "southeast_patroller_dead" );
    _ID42237::_ID3350( getentarray( "satbuilding_patroller", "script_noteworthy" ), _ID42407::_ID1947, ::_ID47901, "satbuilding_patroller_dead" );
    var_12 = getentarray( "script_vehicle_mig29", "classname" );
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_ID50816 );
    _ID47717();
    thread _ID43421();
    thread _ID52445();
    thread _ID47620();
    thread _ID53892();
    thread _ID53180();
    thread _ID53237();
    thread _ID50229();
    thread _ID50870();
    thread _ID52912();
    thread _ID54669();
    thread _ID45968();
    thread _ID51513();
    thread _ID43722( "blizzard_start", "blizzard_bmp", "keyboard_used" );
    thread _ID43722( "player_detonate", "tarmac_bmp", "player_starts_snowmobile_trip" );
    thread _ID43967();
    thread _ID53304();
    thread _ID43549();
    thread h2_delete_icicles();
    thread snowmobile_visionset_setup();
    thread _ID54287();
    thread _ID52966();
    level._ID46470 = [];
    level._ID50125 = spawn( "script_origin", level.player.origin );
    level._ID50125 linkto( level.player );
    level._ID48211 = spawn( "script_origin", level.player.origin );
    level._ID48211 linkto( level.player );
    level._ID43687["sleep"] = ::_ID53360;
    var_13 = getent( "ending_heli_fly_off_trigger", "targetname" );
    var_13 thread maps\cliffhanger_snowmobile_code::_ID49356();
    var_14 = getentarray( "end_heli_trigger", "targetname" );
    thread _ID46691();
    thread maps\cliffhanger_lighting::_ID43891();
    thread _ID52858();
    thread _ID50654();
    thread _ID45429();
    var_15 = getent( "pan_metal", "targetname" );
    var_15 _ID42407::_ID3428( "pan_metal" );
    var_15 thread _ID42259::_ID3044( var_15, "idle" );
    thread cliffhanger_polygonoffscale_override( 6, "blizzard_start" );
    var_16 = getentarray( "pan_copper", "targetname" );

    foreach ( var_18 in var_16 )
    {
        var_19 = randomint( 3 );
        var_18 _ID42407::_ID3428( "pan_copper" );
        var_18 _ID42407::_ID10226( var_19, _ID42259::_ID3044, var_18, "idle" );
    }

    _ID42411::_ID52468( "script_vehicle_uaz_winter_destructible", _ID51074::_ID32550, ::_ID44501 );
}

_ID53360( var_0 )
{
    var_1 = anglestoforward( self.angles );
    var_2 = level.player.origin - self.origin;

    if ( vectordot( var_1, var_2 ) < 0 && isdefined( self._ID1644._ID5029._ID13251._ID9525 ) )
        self._ID1644._ID5029._ID13251._ID9525._ID3183 = "sleep_react_back";

    if ( !level.player._ID46030 )
    {
        var_3 = 250;
        self.stealth_grace_window_end_in_ms = gettime() + var_3;
        _ID42407::_ID10226( var_3 / 1000, _ID42407::_ID45216, 1 );
        _ID42386::_ID12779( var_0 );
    }
    else
        level.player waittill( "stealth_takedown_ended" );

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
    var_0 = getentarray( "base_loudspeaker", "targetname" );
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

        foreach ( var_7 in var_0 )
            var_7 playsound( var_5 );

        wait(randomintrange( 16, 35 ));
    }
}

_ID51513()
{
    wait 1;
    _ID42237::_ID14413( "blizzard_start" );
    setsaveddvar( "aim_aimAssistRangeScale", ".3" );
    setsaveddvar( "aim_autoAimRangeScale", ".3" );
    _ID42237::_ID14413( "done_with_stealth_camp" );
    setsaveddvar( "aim_aimAssistRangeScale", "1" );
    setsaveddvar( "aim_autoAimRangeScale", "1" );
}

_ID43722( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( var_0 );
    var_3 = _ID42411::_ID35199( var_1 );

    foreach ( var_5 in var_3 )
    {
        if ( var_1 == "blizzard_bmp" )
            var_5 thread _ID52686();

        var_5 thread _ID42413::_ID9604();
        var_5 _ID42411::_ID16988();
        var_5 setmotiontrackervisible( 1 );
        var_5 thread _ID47943();
        var_5 thread _ID45189();
    }

    _ID42237::_ID14413( var_2 );

    foreach ( var_5 in var_3 )
        var_5 delete();
}

_ID46625( var_0, var_1 )
{
    var_2 = _ID42411::_ID35196( var_0 );
    var_2 thread _ID42413::_ID9604();
    var_2 _ID42411::_ID16988();
    var_2 setmotiontrackervisible( 1 );
    var_2 thread _ID47943();
    var_2 thread _ID45189( 1 );
    _ID42237::_ID14413( var_1 );
    var_2 delete();
}

_ID52686( var_0 )
{
    playfxontag( level._ID1426["lighthaze_snow_headlights"], self, "tag_front_light_left" );
    playfxontag( level._ID1426["lighthaze_snow_headlights"], self, "tag_front_light_right" );
    playfxontag( level._ID1426["lighthaze_snow_spotlight"], self, "tag_turret_light" );
    self waittill( "death" );
}

_ID45189( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    self endon( "death" );
    thread _ID44683();
    _ID42407::_ID41104( level.player, 980 );
    self notify( "bmp_aim_at_player" );
    self setturrettargetent( level.player );
    _ID42407::_ID41104( level.player, 600 );

    for (;;)
    {
        var_1 = distance2d( self.origin, level.player.origin );
        var_2 = var_1 - abs( self.origin[2] - level.player.origin[2] );

        if ( var_2 < 40 )
            self clearturrettargetent();
        else
        {
            self setturrettargetent( level.player );
            var_3 = randomintrange( 4, 7 );

            for ( var_4 = 0; var_4 < var_3; var_4++ )
            {
                self fireweapon();
                wait 0.35;
            }

            wait(randomfloatrange( 0.2, 0.5 ));
            var_3 = randomintrange( 4, 7 );

            for ( var_4 = 0; var_4 < var_3; var_4++ )
            {
                self fireweapon();
                wait 0.35;
            }

            if ( var_0 )
            {
                var_5 = level.player geteye();
                var_6 = ( self.origin[0], self.origin[1], var_5[2] );
                var_7 = bullettrace( self.origin, level.player geteye(), 0 );

                if ( var_1 > 600 || var_7["fraction"] < 1 )
                {
                    _ID42407::_ID41104( level.player, 600 );
                    continue;
                }
            }

            level.player dodamage( level.player.health + 1000, self.origin );
        }

        wait(randomfloatrange( 0.2, 0.5 ));
    }
}

_ID47943()
{
    self endon( "death" );
    self endon( "bmp_aim_at_player" );
    var_0 = getentarray( "bmp_blizzard_target", "targetname" );

    for (;;)
    {
        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            self setturrettargetent( var_0[var_1] );
            self waittill( "turret_on_target" );
            wait(randomfloatrange( 10, 15 ));
        }
    }
}

_ID54051()
{
    if ( isdefined( self.script_noteworthy ) )
    {
        if ( self.script_noteworthy == "truck_guys" )
            return;
    }

    if ( !isdefined( self._ID31460 ) )
        return;

    self endon( "death" );
    level._ID28543 _ID42407::_ID41104( self, 300 );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    if ( _ID42407::_ID45216( 1 ) )
        thread _ID46250();
}

_ID46250()
{
    level.player endon( "stealth_takedown_started" );
    level endon( "said_lets_split_up" );
    self.ignoreme = 0;
    self._ID11566 = undefined;
    self.health = 1;
    level._ID28543.fixednode = 0;
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 setgoalpos( level._ID28543.origin );
    level._ID28543.goalradius = 8;
    self._ID11566 = undefined;

    if ( !isdefined( level._ID28543._ID51797 ) )
        level._ID28543._ID51797 = 1;
    else
        level._ID28543._ID51797++;

    self waittill( "death" );
    level._ID28543._ID51797--;

    if ( level._ID28543._ID51797 < 1 )
    {
        level._ID28543.fixednode = 1;
        level._ID28543 _ID42407::_ID12445();
    }
}

_ID52815()
{
    var_0[3] = spawnstruct();
    var_0[3]._ID53757 = "west_base_guys_trigger";
    var_0[3]._ID45340 = "ridge_patroler_dead";
    _ID42237::_ID3350( var_0, ::_ID54520 );
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

    foreach ( var_3 in var_1 )
    {
        var_4 = getent( var_3, "script_noteworthy" );

        if ( isdefined( var_4 ) )
        {
            var_4.count = 1;
            var_4 = var_4 _ID42407::_ID35014();
        }
    }
}

_ID54520()
{
    if ( _ID42237::_ID14385( self._ID45340 ) )
        getent( self._ID53757, "targetname" ) notify( "trigger" );
}

_ID43421()
{
    createthreatbiasgroup( "player" );
    level.player setthreatbiasgroup( "player" );
    setthreatbias( "player", "axis", 500 );
    _ID42237::_ID14413( "done_with_stealth_camp" );
    setthreatbias( "player", "axis", 0 );
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
        var_3 = randomfloatrange( 2, 5 );

        if ( var_1 )
        {
            var_1 = !var_1;

            if ( isdefined( var_0 ) )
                var_3 = var_0;
        }

        while ( _ID42237::_ID14385( "player_indoors" ) )
            wait 0.25;

        _ID49359::_ID48147( var_2 );
        wait(var_3);

        if ( randomint( 2 ) == 0 || _ID42237::_ID14385( "blizzard_intensity_extreme" ) )
            wait(randomfloatrange( 1, 3 ));
        else
            wait(randomfloatrange( 7, 9 ));

        if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
        {
            var_3 = randomfloatrange( 1, 3 );

            while ( _ID42237::_ID14385( "player_indoors" ) )
                wait 0.25;

            _ID49359::_ID52737( var_2 );

            if ( _ID42237::_ID14385( "blizzard_intensity_extreme" ) )
            {
                wait(randomfloatrange( 4, 6 ));
                continue;
            }

            wait(var_3);
        }
    }
}

_ID52403( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( var_0 );
    var_3 = _ID42407::_ID15617( level._ID28543.origin );
    var_4 = distance( var_3.origin, level._ID28543.origin );

    if ( var_4 > var_2 )
    {
        var_1 = getent( var_1, "targetname" );
        level._ID28543 teleport( var_1.origin, var_1.angles );
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
            thread _ID48803();
            _ID42237::_ID14413( "player_in_hanger" );
            _ID42407::_ID24584( 1 );
            wait 1.5;
        }

        if ( !_ID42237::_ID14385( "start_busted_music" ) )
        {
            thread _ID43495();
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

        thread _ID52129();
        _ID42237::_ID14413( "player_rides_snowmobile" );
        _ID42407::_ID24584( 2 );
        wait 2.25;
    }

    thread _ID52294();
    _ID42237::_ID14413( "snowmobile_fog_clears" );
    wait 2.25;
    _ID42407::_ID24584( 2 );
    _ID42475::_ID34575( "aud_start_mix_snowmobile_descent" );
    level.player thread _ID42407::_ID27079( "mus_cliffhanger_snowmobile_descent" );
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
        thread _ID48846();
        _ID42237::_ID14413( "_stealth_spotted" );
        _ID42407::_ID24584( 0.2 );
        wait 0.5;
        thread _ID52010();
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
    var_0 = getent( "welding_light", "targetname" );
    var_0 setlightintensity( 0 );
    _ID42237::_ID14413( "starting_hanger_backdoor_path" );
    var_1 = getent( "mig_origin", "targetname" );
    var_2 = _ID42407::_ID52253( "welder_wing" );
    var_2._ID3189 = "welder_wing";
    var_2 _ID42407::_ID17509();
    var_2.cheat._ID48626 = 1;
    var_2.allowdeath = 1;
    var_2.ignoreme = 1;
    var_2 attach( "machinery_welder_handle", "tag_inhand" );
    var_2 attach( "h2_civ_work_headgear_earmuffs" );
    var_2._ID18272 = "h2_civ_work_headgear_earmuffs";
    var_2.health = 6;
    var_2 _ID42407::_ID32265( "death_back" );
    var_1 thread _ID42259::_ID3044( var_2, "welding", "stop_welding" );
    var_3 = _ID42407::_ID52253( "welder_engine" );
    var_3._ID3189 = "welder_engine";
    var_3 _ID42407::_ID17509();
    var_3.cheat._ID48626 = 1;
    var_3.allowdeath = 1;
    var_3.ignoreme = 1;
    var_3 attach( "machinery_welder_handle", "tag_inhand" );
    var_3 attach( "h2_civ_work_headgear_earmuffs" );
    var_3._ID18272 = "h2_civ_work_headgear_earmuffs";
    var_3.health = 6;
    var_3 _ID42407::_ID32265( "death_back" );
    var_1 thread _ID42259::_ID3044( var_3, "welding", "stop_welding" );
    thread _ID54625( var_3, "tag_tip_fx" );
    thread _ID53789( var_3 );
    thread _ID14519( var_2, "tag_tip_fx" );
    thread _ID14520( var_2 );
}

_ID14520( var_0 )
{
    var_1 = getent( "welding_light", "targetname" );
    var_0 waittill( "death" );
    var_1 _ID42237::_ID36516( "scn_cliffhanger_welders_loop" );
    var_1 setlightintensity( 0 );
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
        var_4 = randomintrange( 1, 10 );

        while ( var_4 )
        {
            wait(randomfloatrange( 0.05, 0.1 ));
            playfxontag( level._ID1426["welding_runner"], var_0, var_1 );
            var_0 playsound( "elec_spark_welding_bursts" );
            var_4--;
            wait(randomfloatrange( 0.05, 0.1 ));
        }

        wait(randomfloatrange( var_2, var_3 ));
    }
}

_ID14519( var_0, var_1 )
{
    var_0 endon( "death" );
    var_2 = getent( "welding_light", "targetname" );
    var_2 setlightcolor( ( 0.909804, 0.482353, 0.2 ) );
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
        var_8 = randomintrange( 1, 10 );

        while ( var_8 )
        {
            wait(randomfloatrange( 0.05, 0.1 ));
            playfxontag( level._ID1426["welding_runner"], var_0, var_1 );
            var_0 playsound( "elec_spark_welding_bursts" );

            if ( var_11 )
                var_9 show();

            var_2 setlightintensity( var_5 );
            var_8--;
            wait(randomfloatrange( 0.05, 0.1 ));
            var_2 setlightintensity( var_6 );
        }

        var_2 setlightintensity( var_6 );

        if ( var_11 )
            var_9 hide();

        wait(randomfloatrange( var_3, var_4 ));
    }
}

_ID49793()
{
    _ID42237::_ID14413( "mig_landing" );
    _ID42475::_ID34575( "aud_mix_jet_landing" );
    var_0 = getent( "mig1", "targetname" );
    var_1 = var_0 _ID42407::_ID35192();
    var_1 notify( "stop_contrails" );
    var_1 _ID42413::_ID48392( 1 );
    var_1 _ID42237::_ID10187( 10, _ID42413::_ID48392, 0 );
    var_1._ID3189 = "mig";
    var_2 = getnode( "jet_landing", "targetname" );
    var_1 thread _ID42407::_ID27079( "scn_cliffhanger_jet_landing" );
    var_2 _ID42259::_ID3111( var_1, "mig_landing1" );
    var_1 notify( "stop_engineeffects" );
    _ID42237::_ID14413( "give_c4_obj" );
    var_1 delete();
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
    self setgoalpos( self.origin );
    self.goalradius = 64;
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
    self setgoalpos( self.origin );
    self.goalradius = 64;
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
        if ( distancesquared( self.origin, level.player.origin ) < squared( self.footstepdetectdistsprint ) )
        {
            self.fovcosine = 0.01;
            return;
        }

        wait 0.5;
    }
}

_ID43303()
{
    self.footstepdetectdistwalk = 90;
    self.footstepdetectdist = 90;
    self.footstepdetectdistsprint = 90;
}

_ID50741()
{
    self waittill( "death",  var_0  );

    if ( !isdefined( var_0 ) )
        return;

    if ( isplayernumber( var_0 ) )
        _ID42237::_ID14402( "player_killed_one_first_two_encounters" );
}

_ID53997()
{
    self endon( "death" );

    if ( self.script_noteworthy == "patrollers_1_rightguy" )
        _ID32651( "head_opforce_arctic_b" );

    var_0 = _ID42389::_ID36321();

    if ( _ID42237::_ID14385( var_0 ) )
        return;

    level endon( var_0 );
    _ID42237::_ID14413( "clifftop_guys_move" );
    waitframe;
    _ID42407::_ID13027( "_stealth_normal" );
    self notify( "stop_idle_proc" );
    self._ID31391 = 1;
    self.target = self._ID31388;
    thread _ID42338::_ID26367();
}

_ID32651( var_0 )
{
    if ( isdefined( self._ID18304 ) )
        self detach( self._ID18304 );

    self attach( var_0, "", 1 );
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
    _ID43225();
    var_1 = getspawnerteamarray( "axis" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_ID44470 );
    level._ID49206 = randomint( level._ID51755.size );

    while ( !_ID42237::_ID14385( "done_with_stealth_camp" ) )
    {
        _ID42237::_ID14426( "_stealth_spotted" );
        var_2 = undefined;
        var_3 = undefined;
        var_4 = getaiarray( "axis" );
        var_5 = _ID42237::_ID15566( _ID42407::_ID16145(), var_4 );

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            if ( isdefined( var_5[var_6]._ID31092 ) )
            {
                var_7 = var_5[var_6]._ID31092;
                var_2 = var_5[var_6];

                if ( var_2 _ID42407::_ID13023( "_stealth_normal" ) )
                {
                    if ( !var_2 _ID42407::_ID13019( "_stealth_normal" ) )
                        continue;
                }

                var_3 = _ID54082( var_5, var_6, var_7 );

                if ( !isdefined( var_3 ) )
                    continue;

                if ( var_3 _ID42407::_ID13023( "_stealth_normal" ) )
                {
                    if ( !var_3 _ID42407::_ID13019( "_stealth_normal" ) )
                        continue;
                }

                var_8 = distance( var_3.origin, var_2.origin );

                if ( var_8 > 220 )
                {
                    continue;
                    continue;
                }

                break;
            }
        }

        if ( isdefined( var_3 ) )
        {
            if ( isdefined( level._ID45921 ) )
            {
                if ( level._ID45921 == var_2 )
                    var_0 = var_3;
                else
                    var_0 = var_2;
            }
            else
                var_0 = var_2;

            var_0 _ID47194( level._ID51755[level._ID49206] );
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
    if ( !isdefined( self._ID31092 ) )
        return;

    self endon( "death" );
    _ID42407::_ID13024( "mission_dialogue_kill" );
    _ID48118();
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

    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_1 endon( "death" );
    thread _ID42407::_ID10281( var_1, "sounddone" );
    var_1.origin = self.origin;
    var_1.angles = self.angles;
    var_1 linkto( self );
    var_1 playsound( var_0, "sounddone" );
    _ID54710( var_1 );

    if ( isalive( self ) )
        self notify( "play_sound_done" );

    var_1 playrumbleonentity();
    wait 0.05;
    var_1 delete();
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
        if ( isdefined( var_0[var_3]._ID31092 ) )
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
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_0 _ID42389::_ID36236( self, "lean_balcony", "lean_react" );
}

_ID43782()
{
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_0 _ID42389::_ID36236( self, "sit_idle", "sit_react" );
}

_ID49895( var_0 )
{
    _ID42237::_ID14413( var_0 );
    thread _ID46215();
}

_ID46215()
{
    level notify( "camp_save" );
    _ID42407::_ID4439();
}

_ID50654()
{
    var_0 = getent( "force_ik_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isplayernumber( var_1 ) && !var_1 animscripts\utility::_ID20775() )
            var_1 _meth_85ab( 1 );
    }
}

_ID45429()
{
    var_0 = getent( "force_off_ik_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_2a5( var_1 ) )
            var_1 _meth_85ab( 0 );
    }
}

_ID50625( var_0 )
{
    if ( _ID42237::_ID14385( "mission_fail" ) )
        return;

    _ID42237::_ID14402( "mission_fail" );
    setdvar( "ui_deadquote", level._ID36699[var_0] );
    _ID42407::_ID23778();
}

_ID45244()
{
    if ( !isdefined( level._ID53559 ) )
        level._ID53559 = 0;

    level._ID53559++;
    self._ID31190 = "base_c4_num_" + level._ID53559;
    _ID42237::_ID14400( self._ID31190 );
    waitframe;

    if ( self.script_noteworthy == "mig_c4" )
        thread _ID51988();
    else
    {
        self show();
        thread _ID42407::_ID1854( self._ID31190 );
    }

    self makeusable();
    thread _ID42407::_ID43848( 0.86, [ "trigger" ] );
    self setcursorhint( "HINT_ACTIVATE" );
    thread _ID42237::_ID44574( level.player, level._ID36699["hint_c4_plant"], level._ID36699["hint_c4_plant_keyboard_mouse"], "trigger" );
    self waittill( "trigger" );
    self makeunusable();
    level.player thread _ID53739();
    _ID42237::_ID14413( "c4_placed" );
    thread _ID42407::_ID27079( "detpack_plant" );
    _ID42237::_ID14402( self._ID31190 );
    level._ID53559--;

    if ( self.script_noteworthy == "mig_c4" )
        _ID42237::_ID14402( "mig_c4_planted" );
    else
        _ID42237::_ID14402( "fuel_c4_planted" );

    _ID42237::_ID14402( "one_c4_planted" );
    setsaveddvar( "compass", 1 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    _ID42237::_ID14402( "base_c4_planted" );
    _ID42237::_ID14413( "player_detonate" );
    var_0 = getentarray( "possible_c4_models", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID51988()
{
    var_0 = getentarray( "possible_c4_models", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 hide();

    var_4 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_4 show();
    var_4 setmodel( "weapon_c4_obj" );
    self.origin = var_4.origin;

    for ( var_5 = undefined; !_ID42237::_ID14385( "mig_c4_planted" ); var_4 = var_5 )
    {
        var_5 = _ID42237::_ID16182( level.player.origin, var_0 );

        if ( var_4 != var_5 )
        {
            var_4 hide();
            var_5 show();
            var_5 setmodel( "weapon_c4_obj" );
            self.origin = var_5.origin;
        }

        wait 0.05;
    }

    var_5 setmodel( "weapon_c4" );
    var_5 thread _ID43691::_ID27192();
}

_ID43316( var_0 )
{
    self notify( "follow_player" );
    self endon( "follow_player" );
    self endon( "stop_following_player" );
    self.goalradius = var_0 * 0.9;

    for (;;)
    {
        _ID42237::_ID14426( "_stealth_spotted" );

        if ( distance( level.player.origin, self.origin ) > var_0 )
            self setgoalpos( level.player.origin );

        wait 0.5;
    }
}

_ID54243( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = level._ID35897;

    var_1 = _ID42237::_ID16640( "start_point", "targetname" );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( var_4.script_noteworthy != var_0 )
            continue;

        var_2[var_2.size] = var_4;
    }

    level.player setorigin( var_2[0].origin );
    level.player setplayerangles( var_2[0].angles );
}

_ID51401()
{
    wait 2;
    _ID48422( "obj_satellite", &"CLIFFHANGER_OBJ_COMPUTER", ( 0, 0, 0 ) );
    _ID51143( "obj_satellite", "active", 0 );
}

_ID52119()
{
    wait 4;
    _ID48422( "obj_follow_price", &"CLIFFHANGER_OBJ_FOLLOW", ( 0, 0, 0 ) );
    _ID51143( "obj_follow_price", "current", 0 );
    _ID45875( "obj_follow_price", 1 );
    _ID42237::_ID14413( "reached_top" );
    _ID48160( "obj_follow_price", level._ID28543, ( 0, 0, 60 ) );
    _ID42237::_ID14413( "price_go_to_climb_ridge" );
    _ID51143( "obj_follow_price", "done" );
}

_ID48405()
{
    var_0 = _ID42407::_ID16268( "give_c4_obj" );
    var_1 = ( -5164, -24502.5, 999.5 );
    _ID48422( "obj_enter", &"CLIFFHANGER_OBJ_BASE", var_1 );
    _ID51143( "obj_enter", "current" );
    _ID45875( "obj_enter", 1 );
    _ID42237::_ID14413( "give_c4_obj" );
    _ID51143( "obj_enter", "done" );
}

_ID53454()
{
    var_0 = getent( "fuel_tank_c4", "script_noteworthy" );
    var_1 = var_0.origin;
    _ID48422( "obj_fuel", &"CLIFFHANGER_OBJ_C4", var_1 );
    _ID51143( "obj_fuel", "current" );
    _ID45875( "obj_fuel", 1 );
    var_2 = getent( "mig_c4", "script_noteworthy" );
    var_1 = var_2.origin;
    _ID48422( "obj_mig", &"CLIFFHANGER_OBJ_C4_MIG", var_1 );
    _ID45875( "obj_mig", 1 );
    _ID51143( "obj_mig", "current" );
    level _ID42407::_ID1985( _ID42237::_ID14413, "fuel_c4_planted" );
    level _ID42407::_ID1890( ::_ID51143, "obj_fuel", "done" );
    thread _ID42407::_ID11231();
    level _ID42407::_ID1985( _ID42237::_ID14413, "mig_c4_planted" );
    level _ID42407::_ID1890( ::_ID51143, "obj_mig", "done" );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "base_c4_planted" );
}

_ID52606()
{
    var_0 = getent( "fuel_tank_c4", "script_noteworthy" );
    var_1 = var_0.origin;
    _ID48422( "obj_fuel", &"CLIFFHANGER_OBJ_C4", var_1 );
    _ID51143( "obj_fuel", "current" );
    _ID45875( "obj_fuel", 1 );
    _ID42237::_ID14413( "fuel_c4_planted" );
    _ID51143( "obj_fuel", "done" );
}

_ID47089()
{
    var_0 = getent( "mig_c4", "script_noteworthy" );
    var_1 = var_0.origin;
    _ID48422( "obj_mig", &"CLIFFHANGER_OBJ_C4_MIG", var_1 );
    _ID45875( "obj_mig", 1 );

    if ( !_ID42237::_ID14385( "mig_c4_planted" ) )
        _ID51143( "obj_mig", "current" );

    _ID42237::_ID14413( "mig_c4_planted" );
    _ID51143( "obj_mig", "done" );
}

_ID51337()
{
    var_0 = getent( "mig_c4", "script_noteworthy" );
    var_1 = var_0.origin;
    _ID48422( "obj_mig", &"CLIFFHANGER_OBJ_FUEL_STATION", var_1 );
    _ID45875( "obj_mig", 1 );

    if ( !_ID42237::_ID14385( "mig_c4_planted" ) )
        _ID51143( "obj_mig", "current" );

    thread hide_snow_decals();
    _ID42237::_ID14413( "mig_c4_planted" );
    _ID51143( "obj_mig", "done" );
}

_ID51447()
{
    _ID42237::_ID14413( "cliffhanger_soap_told_player_to_get_to_hangar" );
    var_0 = _ID42407::_ID16268( "at_hanger_entrance" );
    var_1 = var_0.origin;
    _ID48422( "obj_goto_hanger", &"CLIFFHANGER_OBJ_GOTO_HANGER", var_1 );
    _ID51143( "obj_goto_hanger", "current" );
    _ID45875( "obj_goto_hanger", 1 );
    _ID42237::_ID14413( "at_hanger_entrance" );
    _ID51143( "obj_goto_hanger", "done" );
}

_ID44063()
{
    _ID42237::_ID14413( "player_on_backdoor_path" );
    _ID42237::_ID14413( "player_in_hanger" );
    _ID42237::_ID14413( "cliffhanger_soap_told_player_to_go_upstairs" );
    _ID45810( "obj_satellite", &"CLIFFHANGER_OBJ_COMPUTER" );
    _ID51143( "obj_satellite", "current" );
    _ID48160( "obj_satellite", level._ID28543 );
    var_0 = getent( "dsm", "targetname" );
    _ID54163( "obj_satellite", var_0.origin );
    _ID42237::_ID14413( "keyboard_used" );
    _ID51143( "obj_satellite", "done" );
}

_ID53089()
{
    _ID42237::_ID14413( "escape_with_soap" );

    if ( !isalive( level._ID28543 ) )
        return;

    level._ID28543 endon( "death" );
    _ID48422( "obj_exfiltrate", &"CLIFFHANGER_OBJ_EVACUATE", ( 0, 0, 0 ) );
    _ID48160( "obj_exfiltrate", level._ID28543 );
    _ID51143( "obj_exfiltrate", "current" );
    _ID42237::_ID14413( "player_slides_down_hill" );
    _ID48160( "obj_exfiltrate", level._ID28543 );
    wait 2.1;
    _ID48160( "obj_exfiltrate", level._ID28543 );
    _ID42237::_ID14413( "player_snowmobile_available" );
    _ID51143( "obj_exfiltrate", "active", 0 );
}

_ID43733()
{
    if ( !isalive( level._ID28543 ) )
        return;

    _ID48422( "obj_snowmobile", &"CLIFFHANGER_OBJ_SNOWMOBILE", level._ID48727.origin + ( 0, 0, 48 ) );
    _ID51143( "obj_snowmobile", "current" );
    _ID45875( "obj_snowmobile", 1 );
    _ID42237::_ID14413( "player_rides_snowmobile" );
    _ID42475::_ID34575( "aud_start_mix_snowmobile_ride" );
    _ID51143( "obj_snowmobile", "current" );
    _ID51143( "obj_snowmobile", "done", 0 );
    var_0 = getent( "objective_end_org", "targetname" );
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_1 thread maps\cliffhanger_snowmobile_code::_ID53849();
    objective_add( 9, "current", &"CLIFFHANGER_OBJ_EXTRACT", ( 0, 0, 0 ) );
    _func_1e9( 9 );
    objective_position( 9, 1 );
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
    objective_current( 9, var_1.origin );
    objective_current( 9, var_0.origin );
    _ID42237::_ID14413( "there_is_chopper" );
    _ID42407::_ID25327( 9 );
    _ID51143( "obj_exfiltrate", "done", 0 );
    setsaveddvar( "compass", "0" );
}

_ID48422( var_0, var_1, var_2 )
{
    _ID42237::_ID14400( var_0 );
    var_3 = _ID42407::_ID25268( var_0 );
    var_4 = spawnstruct();
    var_4.name = var_0;
    var_4._ID19286 = var_3;
    var_4._ID36185 = "invisible";
    var_4._ID37557 = var_1;
    var_4.origin = var_2;
    var_4._ID47886 = 0;
    level._ID25349[var_0] = var_4;
    return var_4;
}

_ID51143( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];
    var_3._ID36185 = var_1;

    if ( isdefined( var_2 ) )
        var_3._ID43631 = var_2;
    else
        var_3._ID43631 = 1;

    if ( !var_3._ID47886 )
    {
        objective_add( var_3._ID19286, var_3._ID36185, var_3._ID37557, var_3.origin );
        var_3._ID47886 = 1;
    }
    else if ( var_3._ID43631 )
        objective_state( var_3._ID19286, var_3._ID36185 );
    else
        objective_state_nomessage( var_3._ID19286, var_3._ID36185 );

    if ( var_3._ID36185 == "done" )
        _ID42237::_ID14402( var_0 );
}

_ID45875( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID49034 = var_1;
    objective_position( _ID42407::_ID25268( var_0 ), var_2._ID49034 );
}

_ID45810( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID37557 = var_1;
    objective_string( var_2._ID19286, var_1 );
}

_ID54163( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID47623 = var_1;
    objective_current( var_2._ID19286, var_2._ID47623 );
    objective_setpointertextoverride( var_2._ID19286, "" );
}

_ID54025( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    objective_setpointertextoverride( var_2._ID19286, var_1 );
}

_ID49571( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];

    if ( !var_2 )
        objective_string( var_3._ID19286, var_1 );
    else
        objective_string( var_3._ID19286, var_1, var_2 );
}

_ID48160( var_0, var_1, var_2 )
{
    var_3 = _ID42407::_ID25268( var_0 );

    if ( isdefined( var_2 ) )
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
    precachemodel( "machinery_welder_handle" );
    precachemodel( "h2_civ_work_headgear_earmuffs" );
    precachemodel( "com_propane_tank02_des_decal" );
    precachemodel( "h2_acs_module_obj" );
    precacheshader( "h2_overlay_frozen_l" );
    precacheshader( "h2_overlay_frozen_r" );
    precacheshader( "h2_overlays_snowgoggles_distortion_l" );
    precacheshader( "h2_overlays_snowgoggles_distortion_r" );
    precacheshader( "h2_overlays_snowgoggles_shadow_l" );
    precacheshader( "h2_overlays_snowgoggles_shadow_r" );
    precacheshader( "h2_overlays_snowgoggles_put" );
    precacheshader( "h1_hud_overlay_eyelids_vignette_blur" );
    precacheshader( "h2_overlays_snowgoggles_corner_blur_l" );
    precacheshader( "h2_overlays_snowgoggles_corner_blur_r" );
    precacheshader( "h1_hud_tutorial_blur" );
    precacheshader( "h1_hud_tutorial_border" );
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

    foreach ( var_1 in level._ID36699 )
        precachestring( var_1 );
}

_ID50996()
{
    var_0 = getentarray( "base_c4_models", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 hide();
}

_ID27484()
{
    level.player maps\cliffhanger_stealth::_ID48480();
    level.player thread _ID42407::_ID46142();
    _ID42407::_ID27683( 90 );
    _ID47318();
}

_ID47318()
{
    level.player takeallweapons();
    level._ID46851 = "alt_masada_silencer_mt_camo_on_h2";
    level._ID44005 = "masada_silencer_mt_camo_on_h2";
    level.player giveweapon( level._ID44005 );
    level.player switchtoweapon( level._ID46851 );
    level._ID50000 = "usp_silencer";
    level.player giveweapon( level._ID50000 );
    level.player setoffhandprimaryclass( "fraggrenade" );
    level.player giveweapon( "fraggrenade" );
    level.player setoffhandsecondaryclass( "flash_grenade" );
    level.player giveweapon( "flash_grenade" );
}

_ID12882()
{
    wait 0.5;
    anim._ID33782 = ::_ID52876;
}

_ID11213()
{

}

_ID47400()
{
    level endon( "stop_price_shield" );

    for (;;)
    {
        if ( distance( level.player.origin, self.origin ) > 1300 )
        {
            _ID42407::_ID36519();

            while ( distance( level.player.origin, self.origin ) > 1300 )
                wait 0.1;

            thread _ID42407::_ID22746();
        }

        wait 0.1;
    }
}

_ID49357()
{
    self waittill( "death" );
    thread _ID50625( "fail_price_dead" );
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
    level._ID53700 = getent( "price_a", "targetname" );
    level._ID53700 _ID42407::_ID22825();
    level._ID53700._ID3189 = "price_a";
    level._ID44163 = getent( "price_b", "targetname" );
    level._ID44163 _ID42407::_ID22825();
    level._ID44163._ID3189 = "price_b";
    level._ID43623 = getent( "price_c", "targetname" );
    level._ID43623 _ID42407::_ID22825();
    level._ID43623._ID3189 = "price_c";
    level._ID51967 = getent( "price_d", "targetname" );
    level._ID51967 _ID42407::_ID22825();
    level._ID51967._ID3189 = "price_d";
    level._ID47792 = getent( "cake_a", "targetname" );
    level._ID47792 _ID42407::_ID22825();
    level._ID47792._ID3189 = "cake_a";
    level._ID50580 = getent( "cake_b", "targetname" );
    level._ID50580 _ID42407::_ID22825();
    level._ID50580._ID3189 = "cake_b";
    level._ID47278 = getent( "cake_c", "targetname" );
    level._ID47278 _ID42407::_ID22825();
    level._ID47278._ID3189 = "cake_c";
    level._ID44236 = getent( "cake_d", "targetname" );
    level._ID44236 _ID42407::_ID22825();
    level._ID44236._ID3189 = "cake_d";
    level._ID52192 = getent( "price_jump", "targetname" );
    level._ID52192 _ID42407::_ID22825();
    level._ID52192._ID3189 = "price_jump";
    var_0 = getent( "climbing_ref", "targetname" );
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
    level.player endon( "death" );
    level endon( "price_moving_to_hanger" );
    var_0 = [];
    var_0[var_0.size] = "cliff_pri_notsneaky";
    var_0[var_0.size] = "cliff_pri_dontalertthem";
    var_0[var_0.size] = "cliff_pri_sloppy";
    var_0[var_0.size] = "cliff_pri_silencers";
    var_1 = randomint( var_0.size );
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
        _ID44871( var_0[var_1] );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;

        if ( _ID42237::_ID14385( "said_lets_split_up" ) )
        {
            wait 1;
            _ID44871( var_2[randomint( var_2.size )] );
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
        _ID50668( var_0[var_1] );
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
            var_8 = getaiarray( "axis" );
            var_8 = _ID42237::_ID15566( level.player.origin, var_8, undefined, undefined, 800, undefined );

            if ( var_8.size == 0 )
                continue;

            foreach ( var_10 in var_8 )
            {
                if ( !var_10 cansee( level.player ) )
                    continue;

                if ( var_10 _ID42407::_ID11498() )
                    continue;

                var_11 = level.player.origin;
                var_12 = level.player.angles;
                var_13 = var_10.origin;
                var_14 = vectornormalize( var_13 - var_11 );
                var_15 = anglestoforward( var_12 );
                var_16 = vectordot( var_15, var_14 );

                if ( var_16 >= 0.77 )
                    continue;

                var_17 = gettime();

                if ( var_16 < -0.77 )
                {
                    if ( var_17 > var_5 + var_7 )
                    {
                        var_5 = var_17;
                        var_18 = var_2[randomint( var_2.size )];
                        thread _ID44871( var_18 );
                        wait(var_6);
                        break;
                    }
                    else
                        continue;
                }

                var_19 = anglestoright( var_12 );
                var_20 = vectordot( var_19, var_14 );

                if ( var_20 < 0 )
                {
                    if ( var_17 > var_3 + var_7 )
                    {
                        var_3 = var_17;
                        var_18 = var_0[randomint( var_0.size )];
                        thread _ID44871( var_18 );
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
                    var_18 = var_1[randomint( var_1.size )];
                    thread _ID44871( var_18 );
                    wait(var_6);
                    break;
                    continue;
                }

                continue;
            }
        }
    }
}

_ID45142()
{
    self waittill( "death",  var_0, var_1  );

    if ( !isdefined( var_0 ) )
        return;

    if ( isplayernumber( var_0 ) )
        _ID42237::_ID14402( "player_killed_someone" );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    if ( _ID42237::_ID14385( "conversation_active" ) )
        return;

    if ( !_ID42389::_ID36337() )
        return;

    if ( _ID42237::_ID14385( "price_moving_to_hanger" ) )
        return;

    if ( isplayernumber( var_0 ) )
    {
        wait 1;

        if ( !_ID42389::_ID36337() )
            return;

        if ( !isdefined( level._ID45931 ) )
            level._ID45931 = gettime();
        else if ( gettime() < level._ID45931 + 15000 )
            return;

        level._ID45931 = gettime();

        if ( var_1 != "MOD_RIFLE_BULLET" && var_1 != "MOD_PISTOL_BULLET" )
            _ID44871( "cliff_pri_melee_plyr" );
        else
            _ID44871( "cliff_pri_killfirm_plyr" );
    }
}

_ID47447()
{
    self waittill( "trigger",  var_0  );
    var_0 notify( "target_stop" );
    var_0 thread _ID50053();
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
        _ID42407::_ID41104( level.player, 650 );
        _ID42407::_ID41136( 0.4 );

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
            return;

        if ( maps\cliffhanger_stealth::_ID48152() )
        {
            if ( !isdefined( level._ID50286 ) )
                level._ID50286 = 0;

            thread _ID49465();
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
    var_1 = _ID44871( var_0[level._ID50286] );

    if ( !var_1 )
        return;

    level._ID50286++;

    if ( level._ID50286 >= var_0.size )
        level._ID50286 = 0;

    if ( isalive( self ) )
    {
        var_2 = self geteye();
        var_3 = vectornormalize( level._ID28543.origin - var_2 );
        var_3 *= 20;
        var_4 = var_2 + var_3;
        magicbullet( level._ID28543.weapon, var_4, var_2 );

        if ( isalive( self ) )
        {
            if ( isdefined( self._ID22746 ) && self._ID22746 )
                _ID42407::_ID36519();

            self kill();
            return;
        }
    }
    else
    {
        wait 0.5;

        if ( _ID42237::_ID8201() )
            _ID44871( "cliff_pri_nevermind" );
        else
            _ID44871( "cliff_pri_maybenot" );
    }
}

_ID43702()
{
    level endon( "price_moving_to_hanger" );
    self waittill( "death",  var_0  );

    if ( !isdefined( var_0 ) )
        return;

    if ( level._ID28543 == var_0 )
        _ID44871( "UK_pri_inform_killfirm_generic_s" );
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
            _ID44871( var_0[var_1] );
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
    level _ID42407::_ID1985( ::_ID40939, 3 );
    level _ID42407::_ID1890( _ID42237::_ID14388, "someone_became_alert" );
    thread _ID42407::_ID11231();
    level endon( "_stealth_spotted" );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    wait 2;

    if ( _ID42237::_ID14385( "price_moving_to_hanger" ) )
        return;

    var_1 = var_0[randomint( var_0.size )];
    _ID50424();
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
    level.player endon( "death" );
    level endon( "one_c4_planted" );
    var_0 = getent( "base_c4_models", "targetname" ).origin;
    level.player _ID42407::_ID41112( var_0, 600 );
    _ID44871( "cliff_pri_fuelingstation", 1, 2 );
    level.player _ID42407::_ID41112( var_0, 180 );
    _ID42237::_ID14402( "found_fueling_station" );
    _ID44871( "cliff_pri_foundit", 1, 2 );
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
            _ID44871( "cliff_pri_goback", 1 );
            continue;
        }

        if ( var_0 )
        {
            _ID44871( "cliff_pri_necorner", 0 );
            var_0 = 0;
            continue;
        }

        _ID44871( "cliff_pri_searchntheast", 0 );
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
            _ID44871( "cliff_pri_behindhangars", 1, 2 );
            var_0 = 0;
            continue;
        }

        _ID44871( "cliff_pri_meetme", 1, 2 );
        var_0 = 1;
    }
}

_ID43520()
{
    self endon( "driver dead" );
    level endon( "jeep_stopped" );
    level endon( "price_moving_to_hanger" );
    level endon( "jeep_blown_up" );
    _ID44871( "cliff_pri_truckcoming", 1, 7 );
    wait 15;

    for (;;)
    {
        _ID42407::_ID41104( level.player, 1200 );
        var_0 = _ID42237::_ID41802( self.origin, self.angles, level.player.origin, cos( 45 ) );

        if ( var_0 )
        {
            if ( _ID42237::_ID8201() )
                _ID44871( "cliff_pri_truckcomingback", 1, 2 );
            else
                _ID44871( "cliff_pri_truckiscoming", 1, 2 );

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

    _ID44871( "cliff_pri_avoidarea", 1 );
}

_ID44683()
{
    level.player endon( "death" );
    self waittill( "bmp_aim_at_player" );
    _ID50668( "cliff_pri_getoutofthere", 0 );
}

_ID51558()
{
    if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
        _ID44871( "cliff_pri_holdup", 1 );

    _ID44871( "cliff_pri_activityonrunway", 1 );
    _ID44871( "cliff_pri_footmobiles", 1 );
    wait 5;
}

_ID47660()
{
    if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
        wait 4;

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
    {
        _ID44871( "cliff_pri_radiotraffic", 1 );
        wait 3;
    }

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
    {
        _ID44871( "cliff_pri_infarhangar", 1 );
        _ID44871( "cliff_pri_oscarmike" );
    }
    else
        _ID44871( "cliff_pri_getthereasap", 1 );

    _ID42237::_ID14402( "cliffhanger_soap_told_player_to_get_to_hangar" );
}

_ID53237()
{
    _ID42237::_ID14413( "first_two_guys_in_sight" );
    level endon( "done_with_stealth_camp" );
    level.player endon( "death" );

    for (;;)
    {
        wait 1;
        var_0 = level.player getcurrentweapon();

        if ( var_0 != level._ID46851 && var_0 != level._ID44005 && var_0 != level._ID50000 && var_0 != "h2_cheatpickaxe" && var_0 != "none" )
            break;
    }

    if ( isdefined( level._ID28543._ID15093 ) )
    {
        while ( level._ID28543._ID15093.size > 0 )
            wait 0.5;
    }

    _ID44871( "cliff_pri_attractattn", 1 );
}

_ID50229()
{
    level endon( "player_killed_someone" );
    level endon( "_stealth_spotted" );
    level endon( "someone_became_alert" );
    _ID42237::_ID14413( "base_c4_planted" );
    _ID42407::_ID16864( "GHOST" );
    _ID44871( "cliff_pri_prettysneaky", 1 );
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

    _ID44871( "cliff_pri_flamingwreck" );
}

_ID50317()
{
    level endon( "price_moving_to_hanger" );
    self waittill( "unloading" );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    _ID44871( "cliff_pri_headsup", 1 );

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    var_0 = getentarray( "truck_guys", "script_noteworthy" );
    var_1 = 0;

    foreach ( var_3 in var_0 )
    {
        if ( isalive( var_3 ) )
            var_1++;
    }

    if ( var_1 == 4 )
        _ID44871( "cliff_pri_lookingaround", 1, 5 );
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

    if ( isdefined( var_1 ) && var_1 == 1 )
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
    var_0 = spawn( "trigger_radius", ( -12266, -31591, 400 ), 0, 410, 700 );
    thread _ID42323::_ID38905( var_0 );
}

_ID44502()
{
    level endon( "start_big_explosion" );
    var_0 = level.player.origin;

    for (;;)
    {
        if ( distance( var_0, level.player.origin ) > 64 )
            break;

        wait 0.05;
    }

    level._ID28543.ignoreme = 1;
    level.player enabledeathshield( 0 );
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
    {
        var_4 = randomfloatrange( 0.1, 0.3 );
        var_3 _ID42407::_ID10226( var_4, ::_ID53847 );
    }

    wait 2;
    level.player kill();
}

_ID53847()
{
    self._ID11575 = undefined;
}

_ID50349()
{
    var_0 = level.player getweaponslistprimaries();
    var_1 = 0;

    foreach ( var_3 in var_0 )
    {
        if ( var_3 == level._ID44005 )
        {
            var_1 = 1;
            break;
        }
    }

    if ( !var_1 )
        return 1;

    if ( level.player getcurrentweapon() == level._ID44005 )
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

    if ( !isdefined( self._ID13019["dynamic_run_speed_stopped"] ) )
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
    thread _ID49255();
    _ID42259::_ID32256( level._ID28543, "casual_crouch_exit_clifftop" );
    self._ID26587 = 1;
    var_5 = var_1 * var_1;

    for (;;)
    {
        wait 0.2;
        var_6 = level._ID805[0];

        foreach ( var_8 in level._ID805 )
        {
            if ( distancesquared( var_6.origin, self.origin ) > distancesquared( var_8.origin, self.origin ) )
                var_6 = var_8;
        }

        var_10 = anglestoforward( self.angles );
        var_11 = vectornormalize( var_6.origin - self.origin );
        var_12 = vectordot( var_10, var_11 );
        var_13 = distancesquared( self.origin, var_6.origin );

        if ( isdefined( self._ID8931 ) && self._ID8931 )
            self._ID24424 = 1;

        if ( var_13 > 22500 && var_12 > -0.25 )
        {
            _ID43672( "run" );
            continue;
        }

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        {
            _ID43672( "cqb" );
            continue;
        }

        _ID43672( "crouch" );
    }
}

_ID49255()
{
    self endon( "start_dynamic_run_speed" );
    self endon( "death" );
    self._ID24424 = 1;
    _ID42407::_ID7892();
    self allowedstances( "stand", "crouch", "prone" );
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
        case "sprint":
            if ( isdefined( self._ID8931 ) && self._ID8931 )
                self._ID24424 = 1;
            else
                self._ID24424 = 1.15;

            _ID42407::_ID32328( "DRS_sprint" );
            self allowedstances( "stand", "crouch", "prone" );
            _ID42407::_ID10896();
            self notify( "stop_loop" );
            _ID42407::_ID13021( "dynamic_run_speed_stopped" );
            break;
        case "run":
            self._ID24424 = 1;
            _ID42407::_ID7892();
            self allowedstances( "stand", "crouch", "prone" );
            _ID42407::_ID10896();
            self notify( "stop_loop" );
            _ID42407::_ID13021( "dynamic_run_speed_stopped" );
            break;
        case "jog":
            self._ID24424 = 1;
            _ID42407::_ID32328( "DRS_combat_jog" );
            self allowedstances( "stand", "crouch", "prone" );
            _ID42407::_ID10896();
            self notify( "stop_loop" );
            _ID42407::_ID13021( "dynamic_run_speed_stopped" );
            break;
        case "crouch":
            self._ID24424 = 1;
            _ID42407::_ID7892();
            self allowedstances( "crouch" );
            _ID42407::_ID10896();
            self notify( "stop_loop" );
            _ID42407::_ID13021( "dynamic_run_speed_stopped" );
            break;
        case "cqb":
            self._ID24424 = 1;
            _ID42407::_ID12467();
            self allowedstances( "stand", "crouch", "prone" );
            self notify( "stop_loop" );
            _ID42407::_ID13021( "dynamic_run_speed_stopped" );
            break;
    }
}

_ID45968()
{
    _ID42237::_ID14413( "player_climbs_past_safe_point" );
    _ID42234::_ID13611( 1 );
}

_ID47739()
{
    var_0 = getentarray( "extra_tarmac_migs", "script_noteworthy" );
    var_1 = getentarray( "extra_tarmac_mig_delayed", "script_noteworthy" );
    var_2 = var_0;
    var_2 = _ID42237::_ID3296( var_2, var_1 );
    wait 1;

    foreach ( var_4 in var_2 )
    {
        var_4.origin = var_4.origin + ( 0, 0, -5000 );
        var_4 hide();
    }

    _ID42237::_ID14413( "player_in_hanger" );

    foreach ( var_4 in var_2 )
    {
        var_4.origin = var_4.origin + ( 0, 0, 5000 );
        var_4 show();
    }

    _ID42237::_ID14413( "start_big_explosion" );

    foreach ( var_4 in var_0 )
    {
        if ( var_4.code_classname == "script_model" )
            var_4 thread _ID42407::_ID10514();
    }

    _ID42237::_ID14413( "jet_defenders_die" );

    foreach ( var_4 in var_1 )
    {
        if ( !isdefined( var_4 ) )
            continue;

        if ( var_4.code_classname == "script_model" )
            var_4 thread _ID42407::_ID10514();
    }

    _ID45814( "destructible_oilrig_1" );
    _ID42407::_ID26403( 56 );
    _ID42234::_ID13611( 55 );
}

_ID45814( var_0 )
{
    var_1 = getentarray( var_0, "script_noteworthy" );

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        if ( var_3.code_classname != "script_model" )
            continue;

        var_3 _ID42407::_ID10514();
        _ID42475::_ID34575( "aud_handle_explosion", var_0, var_3 );
        wait(randomfloatrange( 0.15, 0.25 ));
    }
}

_ID51722()
{
    wait 3;
    var_0 = getentarray( "hanger_late_spawner", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID45077()
{
    self.threatbias = 1000;
}

_ID44385()
{
    self waittill( "spawned",  var_0  );
    var_0 _meth_85a2( 0 );
    var_0 thread _ID42413::_ID40083();
    var_0 vehphys_disablecrashing();
    _ID42237::_ID14402( "tarmac_snowmobiles_spawned" );
    var_0 thread _ID48573();
    var_0 waittill( "unloading" );
    level notify( "tarmac_snowmobile_unload" );
}

_ID48573()
{
    self endon( "death" );
    self endon( "unloading" );
    level waittill( "tarmac_snowmobile_unload" );
    self vehicle_setspeed( 0, 45 );
    wait 1.75;
    thread _ID42411::_ID40298();
}

_ID53243( var_0, var_1 )
{
    level.player playerlinktodelta( var_0, var_1, 0.0, 90, 90, 90, 30 );
}

_ID52402()
{
    self endon( "death" );
    _ID42237::_ID41098( "veh_collision", "driver_died" );
    var_0 = getent( "avalanche_progress_org", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = vectornormalize( var_1.origin - var_0.origin );
    _ID42407::_ID10226( 13, _ID42407::_ID31860 );

    for (;;)
    {
        self waittill( "driver_died",  var_3  );
        var_4 = level._ID51355 vehicle_getspeed();
        var_5 = var_2 * var_4;
        var_5 = ( var_5[0], var_5[1], 10.0 );
        self vehphys_launch( var_5, randomfloatrange( 0.4, 0.8 ) );
        wait(randomfloatrange( 0.05, 0.15 ));
    }
}

_ID45337()
{
    _ID47980::_ID45691( level._ID28543 );
    var_0 = level._ID47341;
    var_0.count = 1;
    var_1 = var_0 stalingradspawn();
    level._ID28543 = var_1;
    _ID42407::_ID35060( var_1 );
    var_1._ID3189 = "price";
    var_1 thread _ID42407::_ID22746();
    var_1 _ID42407::_ID1868( ::_ID50455 );
    return var_1;
}

_ID50455( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_1 ) )
        return;

    var_7 = var_1.classname;

    if ( !isdefined( var_7 ) )
        return;

    if ( var_7 != "script_vehicle_snowmobile" )
        return;

    foreach ( var_9 in var_1._ID29965 )
    {
        if ( !isalive( var_9 ) )
            continue;

        var_9 dodamage( 1000, self.origin, self );
    }
}

_ID48501()
{
    var_0 = "flag_square";

    if ( isdefined( self.script_noteworthy ) )
        var_0 = self.script_noteworthy;

    var_1 = _ID42407::_ID35028( var_0 );
    var_1.origin = self.origin;
    var_1.angles = self.angles;
    self delete();
    var_2 = vectortoangles( var_1.angles );
    var_3 = anglestoforward( var_2 );
    var_1 thread _ID44481();
}

_ID44481()
{
    level endon( "player_in_hanger" );
    childthread _ID46230();
    waitframe;
    self._ID49144 = self._ID51577;
    var_0 = 1;

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        if ( self._ID51577 == "fast" )
            var_1 = randomfloatrange( 1.0, 1.4 );
        else
            var_1 = randomfloatrange( 0.5, 0.8 );

        var_2 = "wind_animation_" + self._ID49144 + "_to_" + self._ID51577;
        var_3 = "wind_animation_" + self._ID51577 + "_looped";

        if ( self._ID51577 != self._ID49144 )
        {
            var_4 = level._ID30895[self._ID3189][var_2];
            self setanim( var_4, 1, 0, var_0 );
            wait(getanimlength( var_4 ) * var_0);
            self._ID49144 = self._ID51577;
        }

        var_5 = randomint( level._ID30895[self._ID3189][var_3].size );
        var_6 = level._ID30895[self._ID3189][var_3][var_5];
        var_7 = 0.1;
        self setanim( var_6, 1, var_7, var_0 );
        var_8 = var_1 - var_0;
        var_9 = var_8 * var_7;

        while ( self._ID51577 == self._ID49144 )
        {
            wait(var_7);

            if ( var_0 != var_1 )
            {
                var_0 += var_9;
                var_10 = self getanimtime( var_6 );
                self setanim( var_6, 1, var_7, var_0 );
                self setanimtime( var_6, var_10 );
            }
        }

        self clearanim( var_6, 0.1 );
    }
}

_ID46230()
{
    for (;;)
    {
        if ( isdefined( level._ID46419 ) && ( level._ID46419 == "hard" || level._ID46419 == "extreme" ) )
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

        if ( isdefined( var_1._ID40005["soundalias"] ) )
        {
            if ( var_1._ID40005["soundalias"] == "velocity_whitenoise_loop" )
                continue;
        }

        if ( isdefined( var_1._ID22654 ) )
            var_1._ID22654 delete();
    }

    var_2 = getentarray( "script_model", "code_classname" );

    foreach ( var_4 in var_2 )
        var_4 delete();

    foreach ( var_7 in level._ID53034 )
    {
        var_4 = spawn( "script_model", var_7["origin"] );
        var_4.angles = var_7["angles"];
        var_4 setmodel( var_7["model"] );
        var_7["owner"]._ID44896 = var_4;
    }
}

_ID50201()
{
    var_0 = undefined;
    var_1 = getentarray( self.target, "targetname" );
    var_2 = undefined;

    foreach ( var_4 in var_1 )
    {
        if ( var_4.code_classname == "script_brushmodel" )
        {
            var_0 = var_4;
            continue;
        }

        var_2 = var_4;
    }

    var_1 = undefined;
    self waittill( "damage" );
    var_0 delete();

    if ( isdefined( self._ID44896 ) )
    {
        var_6 = _ID42237::_ID28976( 100 );
        var_6 = _ID42407::_ID32530( var_6, abs( var_6[2] ) );
        var_2 physicslaunchclient( var_2.origin, var_6 + ( 0, 0, 50 ) );
    }

    self delete();
}

_ID53030()
{
    _ID42237::_ID14426( "keyboard_used" );
    level endon( "keyboard_used" );
    level waittill( "price_enter" );

    for (;;)
    {
        wait(randomfloatrange( 2, 8 ));
        var_0 = getent( "locker_brawl", "targetname" );
        var_0 notify( "stop_satellite_idle" );
        level._ID28543 waittillmatch( "looping anim",  "end"  );
        var_0 _ID42259::_ID3111( level._ID28543, "satellite_idle_breaker" );
        var_0 thread _ID42259::_ID3044( level._ID28543, "satellite_idle", "stop_satellite_idle" );
    }
}

_ID47717()
{
    var_0 = getentarray( "slope_tree", "targetname" );
    var_1 = _ID42237::_ID16638( "top_of_hill", "targetname" );
    var_0 = _ID42237::_ID15566( var_1.origin, var_0 );

    if ( level._ID15361 == 0 )
        var_0 = _ID42407::_ID3305( var_0, 2, 3 );
    else if ( level._ID15361 == 1 )
        var_0 = _ID42407::_ID3305( var_0, 1, 2 );

    var_2 = getentarray( "slope_tree_clip", "targetname" );

    foreach ( var_5, var_4 in var_0 )
    {
        var_4._ID8089 = var_2[var_5];
        var_2[var_5] = undefined;
    }

    foreach ( var_7 in var_2 )
        var_7 delete();

    _ID42237::_ID3350( var_0, maps\cliffhanger_snowmobile_code::_ID54682 );
}

_ID52061()
{
    self endon( "death" );
    var_0 = getent( "h2_hanger_enemies_enter", "targetname" );
    childthread _ID47966( var_0 );
    thread _ID48338();

    if ( self.script_noteworthy == "hanger_capture_petrov" )
        thread _ID47103();

    level waittill( "kill_price" );
    wait(randomfloatrange( 0.3, 0.5 ));
    self setgoalpos( self.origin );
    self.goalradius = 20;
    self stopanimscripted();
    self setlookatentity( level._ID28543 );
    self.ignoreall = 0;

    for (;;)
    {
        self shoot();
        wait(randomfloatrange( 0.1, 0.2 ));
    }
}

_ID47966( var_0 )
{
    level.player endon( "player_shot" );
    var_0 _ID42259::_ID3111( self, "runin_in" );

    if ( getdvar( "player_has_witnessed_capture" ) == "1" )
    {
        _ID42237::_ID14402( "player_can_see_capture" );
        waitframe;
    }

    _ID46798( var_0 );

    if ( _ID42237::_ID14385( "player_can_see_capture" ) )
        var_0 _ID42259::_ID3111( self, "runin_comply" );

    if ( self._ID3189 == "petrov" )
        thread _ID47010();

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

        foreach ( var_3 in var_1 )
        {
            if ( _ID42237::_ID14385( "player_can_see_capture" ) )
            {
                level notify( "petrov_optional_encouragement_lines" );
                return;
            }

            _ID42407::_ID10805( var_3 );
        }
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
    self setnormalhealth( 3 );
    self waittill( "damage" );
    _ID42237::_ID14402( "drop_megaphone" );
    level notify( "kill_price" );
    self stopanimscripted();
}

_ID47103()
{
    while ( !_ID42237::_ID14385( "drop_megaphone" ) )
        waittillframeend;

    _ID42237::_ID14388( "drop_megaphone" );
    self detach( "h2_ch_megaphone_rig", "TAG_INHAND" );
    var_0 = spawn( "script_model", self gettagorigin( "TAG_INHAND" ) );
    var_0.angles = self gettagangles( "TAG_INHAND" );
    var_0 setmodel( "h2_ch_megaphone_rig" );
    var_0 physicslaunchclient();
    self waittill( "delete" );
    var_0 delete();
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
    var_3 = gettime();
    var_4 = var_3 + 4000;
    var_5 = var_3 + 8000;

    while ( !_ID42237::_ID14385( "start_big_explosion" ) )
    {
        var_6 = gettime();
        var_7 = 1;

        if ( var_6 > var_4 )
            var_7 = 0.5;

        if ( var_6 > var_5 )
            var_7 = 0;

        wait(randomfloatrange( 1, 3 ));
        wait(var_7);
        var_8 = var_0[randomint( var_0.size )];

        if ( isalive( var_8 ) )
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
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID50575( var_0, var_1 )
{
    level endon( "locker_brawl_becomes_uninteruptable" );
    var_1 waittill( "death" );
    var_0 notify( "single anim",  "end"  );
    var_0 stopanimscripted();
    var_0 _meth_85b4( 0, 0.5 );
    var_0._ID45703 = 1;
    var_2 = getent( "locker_brawl", "targetname" );

    foreach ( var_4 in level._ID51506 )
    {
        var_4 notify( "single anim",  "end"  );
        var_2 _ID42259::_ID3016( level._ID51506, "locker_brawl" );
    }
}

_ID47305()
{
    _ID52381();

    if ( isdefined( level._ID48340 ) )
    {
        level._ID48340 maps\cliffhanger_stealth::_ID46710();
        level._ID48340 delete();
    }

    var_0 = getent( "locker_brawl_spawner", "targetname" );
    var_1 = getent( "locker_brawl", "targetname" );
    var_1 _ID42259::_ID3074( level._ID28543, "locker_brawl" );
    level._ID28543._ID45703 = 1;
    var_2 = var_0 _ID42407::_ID35014();

    if ( _ID42407::_ID35060( var_2 ) )
        return;

    var_2 _ID42407::_ID32226( 0 );
    level._ID28543._ID45703 = undefined;
    var_2.grenadeawareness = 0;
    var_2._ID3189 = "defender";
    var_2.allowdeath = 1;
    var_2.health = 1;
    var_2 _ID42407::_ID17509();
    var_2._ID24898 = 1;
    thread _ID50575( level._ID28543, var_2 );
    var_3 = [];
    var_3[0] = var_2;
    var_3[1] = level._ID28543;
    var_3 = _ID42237::_ID3296( var_3, level._ID51506 );
    var_4 = getent( "price_locker_brawl_end_dest", "targetname" );
    level._ID28543 setgoalpos( var_4.origin );
    var_1 thread _ID42259::_ID3099( var_3, "locker_brawl" );
    level._ID28543 waittillmatch( "single anim",  "end"  );
    level._ID28543 detach( "weapon_parabolic_knife", "TAG_INHAND", 0 );
}

_ID51049( var_0 )
{
    var_1 = getent( "locker_brawl", "targetname" );
    thread _ID45963( var_0 );
    _ID42237::_ID14413( "keyboard_used" );
    var_1 notify( "stop_satellite_idle" );
    _ID43061();
}

_ID43061()
{
    level._ID28543 endon( "death" );
    var_0 = getent( "h2_hanger_enemies_enter", "targetname" );
    level._ID28543 _ID42407::_ID32265( "capture_death" );
    var_0 _ID42259::_ID3111( level._ID28543, "capture_intro" );
    var_0 thread _ID42259::_ID3044( level._ID28543, "capture_idle", "stop_capture_idle" );
    _ID42237::_ID14413( "start_big_explosion" );
    var_0 notify( "stop_capture_idle" );
    level._ID28543 animscripts\shared::_ID26732( level._ID28543.weapon, "chest" );
    var_0 _ID42259::_ID3111( level._ID28543, "capture_pullout" );
    level._ID28543._ID14794 = 1;
    level._ID28543.fixednode = 1;
    level._ID28543.goalradius = 2000;
    _ID42237::_ID14413( "capture_enemies_dead" );
    level._ID28543._ID14794 = undefined;
    level._ID28543 _ID42407::_ID10896();
}

_ID45963( var_0 )
{
    if ( _ID42237::_ID14385( "keyboard_used" ) )
        return;

    level endon( "keyboard_used" );
    var_1 = getent( "locker_brawl", "targetname" );

    if ( isdefined( level._ID28543._ID45703 ) )
        var_1 _ID42259::_ID3074( level._ID28543, "enter" );

    var_2["price"] = level._ID28543;
    var_1 notify( "satellite_stop" );
    var_1 thread _ID42259::_ID3111( var_0, "price_enter" );
    level._ID28543 _ID45995::_ID48826( "head", level.player, 200, 45, 20, 30, 45, 1, 1 );
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

    if ( isdefined( level._ID28543.node ) && abs( level._ID28543.node.angles[1] - level._ID28543.angles[1] ) < 5 )
    {
        level._ID28543 orientmode( "face current" );
        _ID42259::_ID32256( level._ID28543, "casual_crouch_exit" );
    }

    getent( "price_starts_moving", "targetname" ) notify( "trigger" );
    level._ID28543.fixednode = 0;
    level._ID28543._ID9568 = undefined;
    level._ID28543 _ID45995::_ID45228();
    level._ID28543 _ID42407::_ID10896();
    level._ID28543 allowedstances( "crouch" );
    _ID42407::_ID27683( 90, 2 );
    _ID42237::_ID14413( "first_two_guys_in_sight" );
    level._ID28543 thread _ID54574( undefined, 300 );
}

_ID51359()
{
    level endon( "first_two_guys_in_sight" );
    _ID42237::_ID14413( "soap_cliff_climb_finished" );

    if ( !_ID42237::_ID14385( "price_starts_moving" ) )
        level._ID28543 _ID45995::_ID48826( ::_ID46128, level.player, 400, 70, 55, 30, 45, 1, 0, 22.5 );
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
    thread _ID51359();
    level._ID28543 _ID44374( "cliff_pri_checksensor", 1, 1 );
    level.player thread _ID42407::_ID11090( "hint_heartbeat_sensor", 30 );

    while ( level.player getcurrentweapon() != level._ID44005 )
        wait 0.5;

    level._ID28543 _ID44374( "cliff_pri_seeme", 1, 1 );
    level._ID28543 _ID44374( "cliff_pri_bluedot", 1, 1 );
    wait 0.1;
    level._ID28543 _ID44374( "cliff_pri_whitedots", 1, 1 );
    _ID42237::_ID14402( "price_starts_moving" );
    _ID42407::_ID50178();
}

_ID50023()
{
    setsaveddvar( "cg_drawcrosshair", "0" );
    level._ID19265 = _ID42313::_ID9251( "hud_dpad", 32, 32 );
    level._ID19265.hidewheninmenu = 1;
    level._ID19265 _ID42313::_ID32753( "TOP", undefined, 0, 175 );
    level._ID19266 = _ID42313::_ID9251( "hud_icon_heartbeat", 32, 32 );
    level._ID19266.hidewheninmenu = 1;
    level._ID19266 _ID42313::_ID32753( "TOP", undefined, -32, 175 );
    level._ID19267 = _ID42313::_ID9251( "hud_arrow_left", 24, 24 );
    level._ID19267.hidewheninmenu = 1;
    level._ID19267 _ID42313::_ID32753( "TOP", undefined, 0, 179 );
    level._ID19267.sort = 1;
    level._ID19267.color = ( 1, 1, 0 );
    level._ID19267.alpha = 0.7;

    while ( !level.player _ID50349() )
        wait 0.5;

    level._ID19265 _ID42313::_ID32753( "CENTER", "BOTTOM", 320, -20, 2 );
    level._ID19266 _ID42313::_ID32753( "CENTER", "BOTTOM", 288, -20, 2 );
    level._ID19267 _ID42313::_ID32753( "CENTER", "BOTTOM", 320, -20, 2 );
    level._ID19265 scaleovertime( 2, 20, 20 );
    level._ID19266 scaleovertime( 2, 20, 20 );
    level._ID19267 scaleovertime( 2, 15, 15 );
    wait 1.7;
    level._ID19265 fadeovertime( 0.3 );
    level._ID19265.alpha = 0;
    level._ID19266 fadeovertime( 0.3 );
    level._ID19266.alpha = 0;
    level._ID19267 fadeovertime( 0.3 );
    level._ID19267.alpha = 0;
    level._ID19265 destroy();
    level._ID19266 destroy();
    level._ID19267 destroy();
    setsaveddvar( "cg_drawcrosshair", "1" );
}

_ID54704( var_0 )
{
    var_1 = spawnstruct();
    var_1.origin = var_0[0].origin;
    var_1.angles = var_0[0].angles;
    var_2 = undefined;

    foreach ( var_4 in var_0[0]._ID3057 )
    {
        if ( var_4._ID3189 == "chair" )
        {
            var_2 = var_4;
            break;
        }
    }

    var_0[0]._ID3058 = 1;
    var_1 _ID42259::_ID3018( var_2, "throatstab" );
    var_1 _ID42407::_ID10226( 0.25, _ID42259::_ID3111, var_2, "throatstab" );
    return var_1;
}

_ID48595( var_0 )
{
    var_1 = spawnstruct();
    var_1.angles = var_0[1].angles;
    var_2 = level._ID30895["generic"]["patrol_cold_crossed"][0];
    var_3 = getangledelta( var_2, 0, 1 );
    var_4 = getanimlength( var_2 );
    var_5 = var_3 / var_4 * 0.3;
    var_6 = anglestoforward( var_1.angles );
    var_1.origin = var_0[1].origin + var_6 * length( var_5 );
    return var_1;
}

_ID54621()
{
    level endon( "clifftop_patrol1_dead" );
    level.player waittill( "stealth_takedown_started" );
    level._ID28543 setgoalpos( level._ID28543.origin );
    _ID42475::_ID34575( "aud_mix_stealth_takedown" );

    if ( !_ID42237::_ID14385( "mig_landing" ) )
        _ID42237::_ID14402( "mig_landing" );
}

_ID44159( var_0, var_1, var_2 )
{
    level.player._ID49929 waittillmatch( "single anim",  "right_soldier_start"  );
    thread _ID42259::_ID3111( var_1, var_0 );
    wait 0.05;
    var_1 setanimtime( var_1 _ID42407::_ID16120( var_0 ), level.player._ID49929 getanimtime( level.player._ID49929 _ID42407::_ID16120( var_0 ) ) );
}

_ID44124()
{
    level.player endon( "stealth_takedown_started" );
    level endon( "clifftop_patrol1_dead" );
    level endon( "clifftop_patrol_alerted" );
    _ID42237::_ID14413( "first_two_guys_in_sight" );
    level._ID28543._ID49606 = 1;
    var_0 = _ID42407::_ID15816( "patrollers_1_rightguy", "script_noteworthy" );
    var_1 = _ID42407::_ID15816( "patrollers_1_leftguy", "script_noteworthy" );
    var_0 _ID43303();
    var_1 _ID43303();
    var_0._ID3189 = "rightguy";
    var_1._ID3189 = "leftguy";
    thread double_takedown_cinematic( var_0, var_1 );
    level.player thread _ID42407::_ID51500( [ var_0, var_1 ], "double_takedown", 145, 45, 60, 0, 0.25, ::_ID48595, "viewmodel_ice_picker_03", "viewmodel_ice_picker", undefined, [ ::_ID44159 ], undefined, 0.5, 1 );
    level._ID28543 thread _ID54621();
    childthread _ID50746( [ var_0, var_1 ] );
    _ID42237::_ID14413( "price_two_guys_in_sight" );
    level endon( "interupt_first_encounter" );
    thread _ID52442();
    thread _ID53790();
    level.player _ID42407::_ID41104( level._ID28543, 300 );
    _ID42237::_ID14402( "first_encounter_dialog_starting" );
    level._ID28543 _ID44374( "cliff_pri_noidea", 0, 1 );
    _ID42237::_ID14402( "mig_landing" );
    level._ID28543 _ID44374( "cliff_pri_youtakeleft", 0, 1 );
    thread _ID43100();
    level._ID28543 playsound( "Cliff_pri_onthree" );
    wait 1;
    level._ID28543 playsound( "Cliff_pri_one" );
    wait 1;
    level._ID28543 playsound( "Cliff_pri_two" );
    wait 1;
    level._ID28543 playsound( "Cliff_pri_three" );
    wait 0.2;
    _ID42237::_ID14402( "first_encounter_dialog_finished" );

    if ( isalive( var_0 ) && _ID42407::_ID45216( 1 ) )
        var_0 thread maps\cliffhanger_stealth::_ID45583( var_1 );
    else if ( isalive( var_1 ) && _ID42407::_ID45216( 1 ) )
        var_1 thread maps\cliffhanger_stealth::_ID45583( var_0 );
    else
        thread _ID44974();
}

double_takedown_cinematic( var_0, var_1 )
{
    level endon( "clifftop_patrol1_dead" );
    level.player waittill( "stealth_takedown_started" );
    var_2 = _ID54167::_ID43386( "double_takedown" );
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.5, -1, 16, 16 ) _ID54167::_ID52391( var_1, "tag_eye" ) _ID54167::_ID44956();
    var_2 _ID54167::_ID48800( 2.8 ) _ID54167::_ID50321( 3.5, -1, 16, 16 ) _ID54167::_ID52391( var_0, "tag_eye" ) _ID54167::_ID44545( 1 );
    var_2 _ID54167::_ID48800( 4.8 ) _ID54167::_ID50321( 3.5, -1, 16, 16 ) _ID54167::_ID52391( var_0, "tag_eye" ) _ID54167::_ID44518( 1 ) _ID54167::_ID44545( 1 );
    var_2 _ID54167::_ID48800( 6.5 ) _ID54167::_ID48959();
    var_2 _ID54167::_ID48800( 2.4 ) _ID54167::_ID47198( 0.12, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.2 );
    var_2 _ID54167::_ID48800( 3.35 ) _ID54167::_ID47198( 0.1, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.15 );
    var_2 _ID54167::_ID48800( 4.25 ) _ID54167::_ID47198( 0.12, 0.8, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.3 );
    var_2 _ID54167::_ID48166();
}

_ID50746( var_0 )
{
    for (;;)
    {
        foreach ( var_2 in var_0 )
        {
            if ( var_2.alertlevel == "alert" || var_2.alertlevel == "combat" )
            {
                level notify( "clifftop_patrol_alerted" );
                return;
            }
        }

        waittillframeend;
    }
}

_ID44550()
{
    _ID42237::_ID14413( "price_go_to_climb_ridge" );
    var_0 = getent( "price_ledgeclimb", "targetname" );
    var_1 = 250000;
    var_2 = distance2dsquared( var_0.origin, level._ID28543.origin );

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
    level._ID28543 pushplayer( 0 );
    level._ID28543 _ID42407::_ID12445();
    getent( "price_position_on_ridge", "targetname" ) notify( "trigger" );
}

_ID44974()
{
    wait 2;
    level._ID28543.fixednode = 1;
    level._ID28543 _ID42407::_ID12445();
}

_ID43100()
{
    level._ID28543.fixednode = 0;
    level._ID28543 _ID42407::_ID10871();
    var_0 = anglestoforward( level._ID28543.angles );
    level._ID28543 setgoalpos( level._ID28543.origin + 24 * var_0 );
    level._ID28543.goalradius = 64;
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
        level._ID28543 playrumbleonentity();

    _ID42237::_ID14402( "interupt_first_encounter" );
    _ID42237::_ID14402( "mig_landing" );
    var_0 = _ID42407::_ID15816( "patrollers_1_rightguy", "script_noteworthy" );
    var_1 = _ID42407::_ID15816( "patrollers_1_leftguy", "script_noteworthy" );

    if ( isalive( var_0 ) )
        var_0._ID11566 = undefined;

    if ( isalive( var_1 ) )
        var_1._ID11566 = undefined;

    level._ID28543 _ID42407::_ID10871();
    level._ID28543.fixednode = 0;
    level._ID28543 setgoalpos( level._ID28543.origin );
    _ID42237::_ID14413( "clifftop_patrol1_dead" );
    level._ID28543.fixednode = 0;
    level._ID28543 _ID42407::_ID12445();
}

_ID53276()
{
    self._ID3189 = "generic";
    _ID32651( "head_opforce_arctic_b" );
    thread stealth_takedown_cinematic();
    level.player thread maps\cliffhanger_aud::aud_setup_sitter_takedown();
    level.player thread _ID42407::_ID51500( [ self ], "throatstab", 130, 45, 60, 0, 0.25, ::_ID54704, undefined, "weapon_parabolic_knife", undefined, undefined, undefined, 0.5, 2 );
    self waittill( "stealth_takedown_started" );
    self notify( "pain_death" );
}

stealth_takedown_cinematic()
{
    self waittill( "stealth_takedown_started" );
    var_0 = _ID54167::_ID43386( "stealth_takedown" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 16, 16 ) _ID54167::_ID52391( self, "tag_eye" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 5.8 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID47198( 0.12, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_0 _ID54167::_ID48800( 1.75 ) _ID54167::_ID47198( 0.06, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 2.25 ) _ID54167::_ID47198( 0.12, 0.4, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.15 );
    var_0 _ID54167::_ID48800( 3.3 ) _ID54167::_ID47198( 0.12, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_0 _ID54167::_ID48800( 3.75 ) _ID54167::_ID47198( 0.08, 1.0, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.3 );
    var_0 _ID54167::_ID48800( 4.8 ) _ID54167::_ID47198( 0.06, 0.4, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
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
    thread _ID47211();
    thread _ID53790();
    level.player _ID42407::_ID41104( level._ID28543, 300 );
    _ID42237::_ID14388( "player_killed_one_first_two_encounters" );
    _ID42237::_ID14402( "second_encounter_dialog_starting" );

    if ( _ID42237::_ID14385( "said_nicely_done" ) )
        level._ID28543 _ID42407::_ID10805( "cliff_pri_sameplan" );
    else
        level._ID28543 _ID42407::_ID10805( "cliff_pri_youtakeleft" );

    level._ID28543 playsound( "Cliff_pri_onthree" );
    wait 1;
    level._ID28543 playsound( "Cliff_pri_one" );
    wait 1;
    level._ID28543 playsound( "Cliff_pri_two" );
    wait 1;
    level._ID28543 playsound( "Cliff_pri_three" );
    wait 0.2;
    _ID42237::_ID14402( "second_encounter_dialog_finished" );
    var_0 = _ID42407::_ID15816( "patrollers_2_rightguy", "script_noteworthy" );
    var_1 = _ID42407::_ID15816( "patrollers_2_leftguy", "script_noteworthy" );

    if ( isalive( var_0 ) )
        var_0 thread maps\cliffhanger_stealth::_ID45583( var_1 );
}

_ID47211()
{
    level endon( "second_encounter_dialog_finished" );
    maps\cliffhanger_stealth::_ID45007( "player_passing_second_encounter" );
    wait 0.5;

    if ( !_ID42237::_ID14385( "second_encounter_dialog_finished" ) )
        level._ID28543 playrumbleonentity();

    _ID42237::_ID14402( "interupt_second_encounter" );
    var_0 = _ID42407::_ID15816( "patrollers_2_rightguy", "script_noteworthy" );
    var_1 = _ID42407::_ID15816( "patrollers_2_leftguy", "script_noteworthy" );

    if ( isalive( var_0 ) )
        var_0._ID11566 = undefined;

    if ( isalive( var_1 ) )
        var_1._ID11566 = undefined;

    level._ID28543 _ID42407::_ID10871();
    level._ID28543.fixednode = 0;
    level._ID28543 setgoalpos( level._ID28543.origin );
    _ID42237::_ID14413( "clifftop_patrol2_dead" );
    level._ID28543.fixednode = 0;
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
        if ( isdefined( level._ID53574 ) )
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
    _ID49362( 8 );
}

_ID52847()
{
    _ID42237::_ID14421( "clifftop_patrol2_dead", "price_go_to_climb_ridge" );
    wait 3;
    _ID42237::_ID14413( "blizzard_halfway" );
    _ID42237::_ID14402( "player_react_to_storm" );

    if ( !_ID42237::_ID14385( "someone_became_alert" ) || !_ID42237::_ID14385( "_stealth_spotted" ) )
        level._ID28543 _ID42407::_ID10805( "cliff_pri_stormsbrewing" );

    level.player playsound( "scn_wind_draft_start_storm" );
    _ID42237::_ID14402( "said_storm_brewing" );
}

_ID51936()
{
    _ID42237::_ID14413( "price_at_climbing_spot" );
    _ID42237::_ID14413( "said_storm_brewing" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) || _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    level endon( "someone_became_alert" );
    _ID45737( "cliff_pri_splitup" );
    wait 0.2;
    _ID45737( "cliff_pri_coverofstorm" );
    wait 0.5;
    _ID45737( "cliff_pri_likeaghost" );
    wait 0.2;
    _ID45737( "cliff_pri_keepeyeonheart" );
    _ID42237::_ID14402( "said_lets_split_up" );
}

_ID50597()
{
    level endon( "base_c4_planted" );
    _ID42237::_ID14413( "give_c4_obj" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) || _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    thread _ID45737( "cliff_pri_tappedcomms" );
    thread _ID45737( "cliff_pri_yourein_2" );
    thread _ID45737( "cliff_pri_yourein_3" );
}

_ID50588()
{
    var_0 = 15;
    thread _ID49359::_ID54702( var_0, var_0 );
    _ID42237::_ID14413( "price_go_to_climb_ridge" );
    thread _ID46538();
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
    self.pathrandompercent = 200;
    thread _ID42407::_ID10896();

    if ( isdefined( self._ID31463 ) )
        thread _ID42386::_ID12797( self.origin );

    self.goalradius = 400;
    self.favoriteenemy = level.player;
    self setgoalentity( level.player );
}

_ID50016()
{
    level.player endon( "detonate" );
    thread _ID50898();
    _ID50381();
    thread _ID53362();
}

_ID53362()
{
    _ID42237::_ID14388( "can_save" );
    level notify( "kill_price" );
    level._ID28543.ignoreme = 0;
    level._ID28543 _ID42407::_ID36519();
    wait 0.5;

    if ( isalive( level._ID28543 ) )
    {
        level._ID28543.allowdeath = 1;
        level._ID28543 stopanimscripted();
        level._ID28543 kill();
    }

    wait 2.5;
    setdvar( "ui_deadquote", &"CLIFFHANGER_PRICE_DIED" );
    _ID42407::_ID23778();
    level.player waittill( "detonate" );
}

_ID50898()
{
    level endon( "stop_detecting_player_shot" );
    level.player endon( "detonate" );
    level.player endon( "death" );
    level._ID28543 endon( "death" );
    wait 0.1;
    var_0 = "";
    var_1 = 0;

    for (;;)
    {
        if ( _ID42237::_ID14385( "player_steps_into_view" ) || level.player isthrowinggrenade() )
        {
            level.player _ID42407::_ID10226( 1, _ID42407::_ID31877, "player_shot" );
            return;
        }

        if ( level.player isfiring() && !level.player ismeleeing() )
        {
            level.player _ID42407::_ID10226( 1, _ID42407::_ID31877, "player_shot" );
            return;
        }

        wait 0.05;
    }
}

_ID49182()
{
    if ( !isalive( level._ID28543 ) )
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
    level._ID28543 setgoalpos( level._ID28543.origin );
    level._ID28543 _ID42407::_ID10871();
    level._ID28543.goalradius = 64;
    _ID42237::_ID14413( "capture_enemies_dead" );
    level._ID28543._ID4867 = var_0;
}

_ID50381()
{
    level.player endon( "player_shot" );
    var_0 = getent( "h2_hanger_enemies_enter", "targetname" );
    var_0 waittill( "runin_out" );
}

_ID47010()
{
    if ( !isalive( level._ID28543 ) )
        return;

    level._ID28543 endon( "death" );
    _ID42237::_ID14413( "player_can_see_capture" );
    setdvar( "player_has_witnessed_capture", 1 );
    level._ID28543 _ID42407::_ID10805( "plan_b" );
    level notify( "stop_detecting_player_shot" );
    level.player giveweapon( "c4" );

    if ( getdvarint( "sf_use_ignoreammo" ) == 1 )
        setsaveddvar( "player_sustainAmmo", 0 );

    level.player setweaponammoclip( "c4", 0 );

    if ( getdvarint( "sf_use_ignoreammo" ) == 1 )
        setsaveddvar( "player_sustainAmmo", 1 );

    level.player setweaponammoclip( "c4", 0 );
    level._ID43171 = level.player getcurrentweapon();
    level.player switchtoweapon( "c4" );
    level.player disableweaponswitch();
    level.player disableoffhandweapons();
    setsaveddvar( "actionSlotsHide", 1 );
    level.player endon( "detonate" );
    _ID42237::_ID14413( "player_steps_into_view" );
    level.player notify( "player_shot" );
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
    level.player waittill( "detonate" );
    _ID42237::_ID14402( "player_detonate" );
    setsaveddvar( "actionSlotsHide", 0 );
}

_ID52513()
{
    level._ID28543 notify( "stop personal effect" );
    level._ID28543 _ID42407::_ID12467();
    thread _ID52128( "off" );
    var_0 = getent( "soap_waiting_node", "targetname" );

    if ( _ID42237::_ID14385( "brought_friends" ) )
        var_0 _ID42259::_ID3064( level._ID28543, "hunted_open_barndoor", undefined, "Cover Right" );

    var_0 thread _ID42259::_ID3111( level._ID28543, "hunted_open_barndoor" );
    var_1 = _ID42407::_ID35028( "locker_1" );
    var_2 = _ID42407::_ID35028( "locker_2" );
    level._ID51506 = [];
    level._ID51506[level._ID51506.size] = var_1;
    level._ID51506[level._ID51506.size] = var_2;
    var_3 = getent( "locker_brawl", "targetname" );
    var_3 _ID42259::_ID3016( level._ID51506, "locker_brawl" );
    var_4 = getent( "hanger_entrance_door", "targetname" );
    var_5 = getentarray( var_4.target, "targetname" );

    for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        var_5[var_6] linkto( var_4, "jnt_door" );

    var_4 _ID42407::_ID3428( "door" );
    var_4 thread _ID42259::_ID3111( var_4, "open_door_anim" );

    for ( var_6 = 0; var_6 < var_5.size; var_6++ )
    {
        if ( var_5[var_6].classname == "script_brushmodel" )
            var_5[var_6] connectpaths();
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
    _ID42237::_ID3350( var_7, ::_ID52675 );
    _ID42237::_ID3350( var_7, ::_ID54542 );
    _ID42237::_ID3350( var_7, ::_ID52061 );

    foreach ( var_9 in var_7 )
    {
        var_9 _ID42407::_ID10973();

        if ( var_9._ID3189 == "guard1" || var_9._ID3189 == "guard6" )
            var_9 allowedstances( "crouch" );

        var_9.cheat._ID48626 = 1;
    }
}

_ID48633()
{
    thread _ID52675();
    thread _ID53642();
    thread _ID49200();
    thread _ID42407::_ID12467();
    self.cheat.ignorewolfthink = 1;
    self.cheat._ID48626 = 1;
    self allowedstances( "stand" );
}

_ID52560()
{
    var_0 = getentarray( "hanger_capture_enemies", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_ID48633 );
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
    _ID42259::_ID3020( self, var_0[randomint( var_0.size )] );
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
    wait(randomfloatrange( 0, 0.5 ));
    self.allowdeath = 1;
    self.health = 1;
    self._ID7._ID28253 = "stand";
    _ID42259::_ID3020( self, var_0[randomint( var_0.size )] );
}

_ID54542()
{
    self endon( "death" );
    _ID42237::_ID14413( "start_big_explosion" );
    wait(randomfloatrange( 0, 0.5 ));
    self.allowdeath = 1;
    self.health = 1;
    self._ID7._ID28253 = "stand";
    var_0 = spawn( "script_origin", ( -8944.6, -25958.3, 895.999 ) );
    var_0.angles = ( 0, -44.613, 0 );
    var_0 _ID42259::_ID3111( self, "react" );
}

_ID49460()
{
    var_0 = getent( "hangar_leftdoor_goal", "targetname" );
    var_1 = getent( "hangar_leftdoor_start", "targetname" );
    var_2 = getentarray( "hangar_leftdoor", "targetname" );
    var_2 thread _ID48081( var_0, var_1 );
    var_3 = getent( "hangar_rightdoor_goal", "targetname" );
    var_4 = getent( "hangar_rightdoor_start", "targetname" );
    var_5 = getentarray( "hangar_rightdoor", "targetname" );
    var_5 thread _ID48081( var_3, var_4 );
    wait 0.3;
    var_6 = getent( "hanger_door_shadowbrush", "targetname" );
    var_6 delete();
    _ID42475::_ID34575( "aud_change_hanger_ambience" );
    _ID42475::_ID34575( "aud_activate_hanger_door_transition" );
    _ID42475::_ID34575( "aud_start_mix_mactavish_trapped" );
}

_ID48081( var_0, var_1 )
{
    var_2 = 5.75;
    var_3 = ( var_0.origin - var_1.origin ) * ( 1, 1, 0 );

    foreach ( var_5 in self )
    {
        var_5 moveto( var_5.origin + var_3, var_2, 1, 0.4 );

        if ( isdefined( var_5._ID31139 ) && var_5._ID31139 )
            var_5 connectpaths();
    }

    self[0] playsound( "door_hanger_metal_open" );
    wait(var_2);

    foreach ( var_5 in self )
    {
        if ( isdefined( var_5._ID31139 ) && var_5._ID31139 )
            var_5 disconnectpaths();
    }
}

_ID51599()
{
    var_0 = getent( "hangar_leftdoor_goal", "targetname" );
    var_1 = getentarray( "hangar_leftdoor", "targetname" );
    var_1 thread _ID53779( var_0 );
    var_2 = getent( "hangar_rightdoor_goal", "targetname" );
    var_3 = getentarray( "hangar_rightdoor", "targetname" );
    var_3 thread _ID53779( var_2 );
}

_ID53779( var_0 )
{
    var_1 = ( var_0.origin - self[0].origin ) * ( 1, 1, 0 );

    foreach ( var_3 in self )
    {
        var_3.origin = var_3.origin + var_1;

        if ( isdefined( var_3._ID31139 ) && var_3._ID31139 )
            var_3 disconnectpaths();
    }
}

_ID52675()
{
    self endon( "death" );
    self._ID11575 = 1;
    self.goalradius = 8;
    self._ID31212 = 1;
    _ID42237::_ID14413( "start_big_explosion" );
    self.allowdeath = 1;
    wait 3;
    self._ID11575 = undefined;
}

_ID48102( var_0, var_1 )
{
    if ( !isalive( level._ID28543 ) )
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
    level.player unlink();
    level.player allowfire( 0 );
    level.player _meth_80fa( "c4", "drop" );
    waittillframeend;
    wait(( level.player _meth_859b() - 50 ) / 1000);
    level.player _meth_84a8();
    level.player enableweapons();
    level.player takeweapon( "c4" );
    level.player enableweaponswitch();
    level.player enableoffhandweapons();
    var_2 = level._ID43171;

    if ( !level.player hasweapon( var_2 ) )
    {
        var_2 = level.player getweaponslistprimaries()[0];

        if ( !isdefined( var_2 ) )
            var_2 = level.player getweaponslistall()[0];
    }

    level.player switchtoweapon( var_2 );
    level.player allowfire( 1 );
    level.player setmovespeedscale( 1 );
    level.player allowprone( 1 );
    level.player allowcrouch( 1 );
    thread _ID47876();
    _ID42237::_ID14413( "end_big_explosion" );
    var_3 = getaiarray( "axis" );

    foreach ( var_5 in var_3 )
        var_5._ID4867 = 0;

    wait 0.5;
    _ID42407::_ID34375( 1 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
    level._ID28543 _ID42407::_ID17508();
    var_3 = getaiarray( "axis" );

    foreach ( var_5 in var_3 )
        var_5._ID4867 = _ID52644();

    level.player playsound( "scn_cliff_c4_explosion_snowwave" );
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
    level.player playsound( "scn_hangar_explo_front" );
    wait 0.2;
    _ID42234::_ID13611( 12 );
    wait 0.1;
    _ID42234::_ID13611( 10 );
    wait 0.2;
    _ID42237::_ID14402( "end_big_explosion" );
    wait 0.2;
    _ID45814( "mig1" );
    wait 0.2;
    _ID45814( "mig2" );
    wait 0.5;

    if ( isdefined( level._ID52581 ) )
    {
        var_2 = level._ID52581;
        var_2 = _ID42407::_ID29506( var_2 );
        var_2 = _ID42237::_ID15566( level.player.origin, var_2 );

        for ( var_3 = 6; var_3 < var_2.size; var_3++ )
        {
            var_4 = _ID42237::_ID28976( 10 );
            var_4 = ( var_4[0], var_4[1], abs( var_4[2] ) );
            var_4 += var_2[var_3].origin;
            _ID45456::_ID54623( var_2[var_3] );
            var_2[var_3] kill();
            wait 0.05;
        }
    }
}

_ID47876()
{
    level.player waittill( "reload_start" );
    _ID42237::_ID14402( "player_reloading" );
}

_ID47580()
{
    _ID42407::_ID1892( "axis", ::_ID24832 );
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
        var_2 _ID24832();
}

_ID24832()
{
    self.grenadeammo = 0;
}

_ID48543()
{
    if ( self.code_classname == "script_brushmodel" )
        self connectpaths();

    self delete();
}

_ID53499()
{
    self._ID4867 = _ID52644();
}

_ID50305( var_0 )
{
    var_1 = newhudelem();
    var_1.alignx = "center";
    var_1.aligny = "middle";
    var_1.horzalign = "center";
    var_1.vertalign = "middle";
    var_1.x = 0;
    var_1.y = 0;
    var_1 settext( var_0 );
    var_1.alpha = 0;
    var_1.foreground = 1;
    var_1.sort = 150;
    var_1.fontscale = 1.75;
    return var_1;
}

_ID53109()
{
    var_0 = [];
    var_0["e3"] = 1;
    return isdefined( var_0[level._ID35897] );
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

    if ( !isalive( level._ID28543 ) )
        return;

    if ( !level._ID28543.damageshield )
        return;

    if ( !_ID42263::_ID4452() )
        return;

    commitsave( var_0 );
}

_ID47130( var_0 )
{
    self _meth_84a7( "force_off" );

    while ( isdefined( var_0 ) )
    {
        while ( isdefined( var_0 ) && _ID42237::_ID11126( self.origin, level.player.origin ) > 1000000 )
            wait 0.5;

        self _meth_84a7( "force_fully_on" );

        while ( isdefined( var_0 ) && _ID42237::_ID11126( self.origin, level.player.origin ) < 1210000 )
            wait 0.5;

        self _meth_84a7( "force_off" );
    }

    self _meth_84a7( "force_off" );
    self setlightintensity( 0 );
    wait 0.1;
    self delete();
}

_ID54287()
{
    var_0 = getentarray( "generator_spotlight", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID47130, thisthread );
    var_1 = getent( "generator_linkedtolight", "script_noteworthy" );
    var_1 waittill( "exploded" );
}

_ID53010( var_0, var_1, var_2 )
{
    level notify( "wibble_changing_" + var_0 );
    level endon( "wibble_changing_" + var_0 );
    var_3 = var_2 * 10;
    var_4 = ( var_1 - level._ID45970[var_0] ) / var_3;

    while ( var_3 > 0 )
    {
        level._ID45970[var_0] = level._ID45970[var_0] + var_4;
        _func_2f1( 0, var_0, level._ID45970[var_0] );
        var_3--;
        wait 0.1;
    }
}

_ID47676()
{
    for (;;)
    {
        level waittill( "player_indoors",  var_0, var_1  );

        if ( isdefined( var_1 ) )
        {
            if ( isdefined( var_1._ID31388 ) && var_1._ID31388 == "cliffhanger_hangar" )
                var_2 = 0;
            else
                var_2 = 0.3;

            thread _ID53010( "x", var_2, 2 );
            thread _ID53010( "y", var_2, 1 );
        }
    }
}

_ID52966()
{
    _ID42237::_ID14400( "wibble_changing" );
    level endon( "player_gets_on_snowmobile" );
    childthread _ID47676();
    level._ID45970["x"] = 0;
    level._ID45970["y"] = 0;
    wait 1;

    for (;;)
    {
        if ( isdefined( level._ID46419 ) && ( level._ID46419 == "hard" || level._ID46419 == "extreme" ) )
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
            thread _ID53010( "x", var_0, 2 );
            thread _ID53010( "y", var_1, 1 );
        }

        level waittill( "blizzard_level_change" );
    }
}

_ID53739()
{
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    thread _ID47745();
    var_0 = getent( "c4_planting_node", "targetname" );
    var_1 = _ID42407::_ID35028( "worldbody" );
    var_1 hide();
    var_0 _ID42259::_ID3018( var_1, "planting_c4" );
    var_2 = self getstance();
    self allowstand( 1 );
    self allowcrouch( 0 );
    self allowprone( 0 );
    self enableinvulnerability();
    self disableweapons( 1, 200, 0.1 );
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
    self playerlinktoblend( var_1, "tag_player", var_5, var_5 / 2, var_5 / 2 );
    wait(var_5);
    var_1 show();
    thread h2_c4_install_cin();
    var_0 _ID42259::_ID3111( var_1, "planting_c4" );
    self unlink();
    var_1 delete();
    self allowcrouch( 1 );
    self allowprone( 1 );
    self enableweapons();
    self disableinvulnerability();
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
    var_0 _ID54167::_ID48800( 1.05 ) _ID54167::_ID47198( 0.12, 0.4, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.2 );
    var_0 _ID54167::_ID48166();
}

_ID47745()
{
    var_0 = getentarray( "possible_c4_models", "targetname" );
    var_1 = _ID42237::_ID16182( level.player.origin, var_0 );
    var_1 hide();
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
    self enabledeathshield( 1 );
    var_1 = spawn( "script_origin", var_0.origin );
    var_1.angles = var_0.angles;
    var_2 = _ID42407::_ID35028( "worldbody" );
    var_2 hide();
    var_3 = [];
    var_3["left"] = spawn( "script_origin", var_0 gettagorigin( "tag_wheel_front_left" ) );
    var_3["right"] = spawn( "script_origin", var_0 gettagorigin( "tag_wheel_front_right" ) );
    var_4 = _ID42407::_ID15611( level.player.origin, var_3, 500 );
    var_3["left"] delete();
    var_3["right"] delete();
    var_1 _ID42259::_ID3018( var_2, "mounting_snowmobile_" + var_4 );
    var_5 = 0;
    var_6 = level.player getstance();

    if ( var_6 == "crouch" )
        var_5 = 0.25;
    else if ( var_6 == "prone" )
        var_5 = 0.85;

    level.player allowstand( 1 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    wait(var_5);
    self disableweapons( 1, 200, 0.1 );
    setsaveddvar( "objectiveHide", 1 );
    var_7 = _ID42259::_ID53505( var_2, 60, 80, 0.2, 0.75 );
    self playerlinktoblend( var_2, "tag_player", var_7, var_7 / 2, var_7 / 2 );
    wait(var_7);
    self playerlinktodelta( var_2, "tag_player", 1, 0, 0, 0, 0, 1 );
    var_8 = getdvar( "sv_znear" );
    setsaveddvar( "sv_znear", 1.0 );
    var_2 show();
    _ID45987( var_0 );
    var_1 thread _ID42259::_ID3111( var_2, "mounting_snowmobile_" + var_4 );
    var_9 = getanimlength( var_2 _ID42407::_ID16120( "mounting_snowmobile_" + var_4 ) );
    var_2 _ID42259::_ID46811( "stop_lerp", var_1, var_0, var_9 );
    setsaveddvar( "sv_znear", var_8 );
    self unlink();
    var_2 delete();
    var_1 delete();
    self allowcrouch( 1 );
    self allowprone( 1 );
    self enableweapons();
    setsaveddvar( "objectiveHide", 0 );
    self enabledeathshield( 0 );
}

_ID45987( var_0 )
{
    var_0._ID3189 = "snowmobile_player";
    var_0 setanim( var_0 _ID42407::_ID16120( "rpm_min" ), 1 );
    var_0 setanim( var_0 _ID42407::_ID16120( "rpm_max" ), 0 );
    var_0 setanim( var_0 _ID42407::_ID16120( "speedometer_0" ), 1 );
}

_ID52128( var_0 )
{
    var_1 = getdvar( "r_znear" );
    setsaveddvar( "r_znear", 1 );
    level.player allowads( 0 );
    level.player allowfire( 0 );
    level.player allowjump( 0 );
    level.player allowsprint( 0 );
    level.player allowlean( 0 );
    level.player _meth_830e( 0 );
    level.player allowmelee( 0 );
    level.player _meth_8517( 0 );
    level.player _meth_830f( 0 );
    level.player allowstand( 1 );
    level.player allowcrouch( 1 );
    level.player allowprone( 0 );
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

    level.player thread _ID42259::_ID45613( var_3 );
    level.player waittill( "viewmodelAnimStart" );
    _ID42407::_ID10226( 0.25, var_4, level.player, var_5 );
    level.player waittill( "viewmodelAnimRaiseEnd" );
    level.player allowads( 1 );
    level.player allowfire( 1 );
    level.player allowjump( 1 );
    level.player allowsprint( 1 );
    level.player allowlean( 1 );
    level.player _meth_830e( 1 );

    if ( !isdefined( level._ID50570 ) || !level._ID50570 )
        level.player allowmelee( 1 );

    level.player _meth_8517( 1 );
    level.player _meth_830f( 1 );
    level.player allowstand( 1 );
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
    setsaveddvar( "r_znear", var_1 );
    setsaveddvar( "fx_alphathreshold", 0 );
}

_ID50722()
{
    var_0 = getent( "acs_node", "targetname" );
    var_1 = getent( "dsm", "targetname" );
    var_1._ID3189 = "acs_module";
    var_1 _ID42407::_ID3428();
    var_2 = _ID42407::_ID35028( "acs_wires" );
    var_3 = _ID42407::_ID35028( "worldbody" );
    var_3 hide();
    var_1 _ID42407::_ID16953();
    var_0 _ID42259::_ID3018( var_3, "pickup_acs" );
    var_0 _ID42259::_ID3018( var_1, "pickup_acs" );
    var_0 _ID42259::_ID3018( var_2, "pickup_acs" );
    var_0 waittill( "start_anims" );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showStance", 0 );
    var_1 _ID42407::_ID36591();
    self allowcrouch( 0 );
    self allowprone( 0 );
    self disableweapons( 1, 200, 0.1 );
    var_4 = _ID42259::_ID53505( var_3, 40, 100, 0.2, 0.75 );
    self playerlinktoblend( var_3, "tag_player", var_4, var_4 / 2, var_4 / 2 );
    wait(var_4);
    var_3 show();
    thread h2_pickup_acs_cin();
    var_0 thread _ID42259::_ID3111( var_1, "pickup_acs" );
    var_0 thread _ID42259::_ID3111( var_2, "pickup_acs" );
    var_0 _ID42259::_ID3111( var_3, "pickup_acs" );
    self unlink();
    var_3 delete();
    self allowcrouch( 1 );
    self allowprone( 1 );
    self enableweapons();
    var_0 delete();
    var_1 delete();
    setsaveddvar( "compass", 1 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    level._ID28543 _ID45995::_ID45228();
    var_5 = _ID42407::_ID16300( "light_godray_cliffhanger_hangar" );
    var_5 = _ID42237::_ID3296( var_5, _ID42407::_ID16300( "cliff_underdoor_hangar_snow" ) );

    foreach ( var_7 in var_5 )
        var_7 _ID42237::_ID26402();

    setsaveddvar( "fx_alphathreshold", 10 );
}

h2_pickup_acs_cin()
{
    var_0 = _ID54167::_ID43386( "pickup_acs_cin" );
    var_0 _ID54167::_ID48800( 0.25 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 1.6 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.25 ) _ID54167::_ID47198( 0.06, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID47198( 0.06, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.1 ) _ID54167::_ID47198( 0.1, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.15 );
    var_0 _ID54167::_ID48800( 1.6 ) _ID54167::_ID47198( 0.06, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
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

    foreach ( var_2 in var_0 )
        var_2 _ID42237::_ID26402();
}

_ID54496( var_0 )
{
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "cg_drawcrosshair", "0" );
    level.player notify( "noHealthOverlay" );
    var_1 = 1.5;
    _ID42475::_ID34575( "start_fade_to_death" );
    visionsetnaked( "black_bw", var_1 );
    wait(var_1);
    wait 0.5;

    if ( isdefined( var_0 ) )
        [[ var_0 ]]();
    else
        _ID42349::_ID47176();

    _ID42407::_ID23778();
}

_ID49051( var_0 )
{
    var_1 = getentarray( "chair_clip", "targetname" );
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

    foreach ( var_4, var_3 in var_1 )
    {
        if ( var_4 == var_0 )
            return var_3;
    }

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
    var_0 = getentarray( "hanging_object", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID31529 ) && var_2._ID31529 == "icicle_delete" )
            var_2 delete();
    }
}

hide_snow_decals()
{
    var_0 = getentarray( "snow_door", "script_noteworthy" );

    for (;;)
    {
        _ID42237::_ID14413( "snow_doors" );

        foreach ( var_2 in var_0 )
            var_2 hide();

        _ID42237::_ID14426( "snow_doors" );

        foreach ( var_2 in var_0 )
            var_2 show();
    }
}

swap_decals_on_propane_tank()
{
    var_0 = getentarray( self.target, "targetname" );

    for (;;)
    {
        if ( isdefined( self._ID13610 ) )
        {
            var_1 = spawn( "script_model", self.origin );
            var_1.angles = self.angles;
            var_1 setmodel( "com_propane_tank02_des_decal" );

            foreach ( var_3 in var_0 )
                var_3 delete();

            return;
        }

        waittillframeend;
    }
}

cliffhanger_polygonoffscale_override( var_0, var_1 )
{
    if ( !isdefined( level._ID1332 ) || !level._ID1332 )
        return;

    var_2 = getdvarfloat( "sm_polygonOffsetScale" );
    setsaveddvar( "sm_polygonOffsetScale", var_0 );
    level waittill( var_1 );
    setsaveddvar( "sm_polygonOffsetScale", var_2 );
}

tarped_mig_monitor()
{
    var_0 = getent( "tarp_to_delete1", "targetname" );
    var_1 = getent( "tarp_to_delete2", "targetname" );
    var_2 = undefined;
    var_3 = undefined;
    var_4 = getentarray( "destructible_toy", "targetname" );

    foreach ( var_6 in var_4 )
    {
        if ( isdefined( var_6._ID31388 ) && var_6._ID31388 == "tarped_mig1" )
            var_2 = var_6;

        if ( isdefined( var_6._ID31388 ) && var_6._ID31388 == "tarped_mig2" )
            var_3 = var_6;
    }

    thread wait_until_explode( var_2, var_0 );
    thread wait_until_explode( var_3, var_1 );
}

wait_until_explode( var_0, var_1 )
{
    var_0 waittill( "exploded" );
    var_1 delete();
}

snowmobile_visionset_setup()
{
    var_0 = getent( "snowmobile_visionset_trigger", "targetname" );
    var_1 = var_0.origin;
    var_0.origin = var_0.origin + ( 0, 0, -1000 );
    _ID42237::_ID14413( "keyboard_used" );
    var_0.origin = var_1;
}
