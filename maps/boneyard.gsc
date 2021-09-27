// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50786()
{
    level._ID49027 = "boneyard";
    _ID43797::_ID521();
    _ID54498::_ID616();
    _ID43529::_ID616();
    _ID43726::_ID616();
    _ID52246::_ID616();
    _ID42323::_ID616();
    maps\boneyard_anim::_ID616();
    _ID42237::_ID14400( "intro" );
    _ID42237::_ID14413( "intro" );
    maps\boneyard_lighting::_ID616();
    maps\boneyard_aud::_ID616();
    _unknown_00DB();
    _ID42237::_ID14402( "lighting_kickoff_threads" );
}

_ID616()
{
    _func_14E( "littlebird_FFAR" );
    _func_14E( "smoke_grenade_american" );
    _func_14E( "rpg_straight" );
    _func_14E( "rpg_distant_stable" );
    _func_152( "c130_flyby" );
    _func_152( "tank_rumble" );
    _func_14C( "hat_opforce_merc_b" );
    _func_14C( "h2_viewbody_sniper_uaz" );

    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\boneyard_mission_select_cam::_ID50320();
        return;
    }

    if ( _func_039( "beautiful_corner" ) == "1" )
    {
        _unknown_009C();
        return;
    }

    _func_0DB( "fx_cast_shadow", 0 );
    _func_0DB( "ai_perf_disableVehicleVisNotify", 0 );
    _ID42320::_ID616();
    _ID42287::_ID521();
    _unknown_01C2();
    _ID42323::_ID32417( "viewhands_player_marines" );
    animscripts\dog\dog_init::_ID19886();
    _ID54498::_ID616();
    _ID43529::_ID616();
    _ID43726::_ID616();
    _ID52246::_ID616();
    _ID42323::_ID616();
    maps\boneyard_anim::_ID616();
    maps\boneyard_lighting::_ID616();
    maps\boneyard_aud::_ID616();
    _ID42272::_ID33575( "compass_map_boneyard" );
    thread _ID43858::_ID616();
    _unknown_0192();
    _unknown_01DB();
    maps\boneyard_code::_ID43004();
    maps\boneyard_code::_ID43185();
    maps\boneyard_code::_ID44678();
    maps\boneyard_code::_ID50515();
    maps\boneyard_code::_ID50138();
    maps\boneyard_code::_ID45786();
    maps\boneyard_code::_ID45448();
    _unknown_041B();
    maps\boneyard_code::_ID48948();
    maps\boneyard_code::init_scope_fov_setup();
    thread maps\boneyard_code::viewhands_wibble_modifier();
    level._ID8760["20"] = _func_0BC( 20 );
    level._ID8760["60"] = _func_0BC( 60 );
    thread _unknown_0266();
    _ID42237::_ID14402( "lighting_kickoff_threads" );
    level._ID46670 = [];
    level._ID46670["axis"] = "r";
    level._ID46670["team3"] = "p";
    thread _unknown_05B5();
    thread _unknown_06A4();
    thread _unknown_0749();
    thread _unknown_08C2();
    thread _unknown_030C();
    _ID42237::_ID3350( _func_1A2( "airMask", "targetname" ), maps\boneyard_code::resetangle );
    _ID42237::_ID3350( _func_1A2( "airMask", "targetname" ), maps\boneyard_code::animatevariousmodel, "airMask", undefined, "higround_ascend" );
    _func_0DB( "ai_eventDistNewEnemy", 512 );
    _func_0DB( "ai_eventDistFootstepSprint", 640 );
    _func_0DB( "ai_eventDistFootstep", 480 );
    _func_0DB( "ai_eventDistFootstepWalk", 320 );
    maps\boneyard_code::portal_groups_init();
    maps\boneyard_code::bya_smodel_groups_init();
    _func_0DB( "ai_perf_disableStairsSteepMetrics", "1" );
    _func_034( "truck_low_breaking_speed", 0.1 );
}

_ID51384()
{
    _ID42237::_ID14400( "delete_excess" );
    _ID42237::_ID14400( "suburban_target_btr80" );
    _ID42237::_ID14400( "littlebird_at_goal" );
    _ID42237::_ID14400( "btr80_target_littlebird" );
    _ID42237::_ID14400( "btr80_destroyed" );
    _ID42237::_ID14400( "littlebird_stage1" );
    _ID42237::_ID14400( "uaz_park" );
    _ID42237::_ID14400( "uaz_player_in_control" );
    _ID42237::_ID14400( "intro_btr80_dead" );
    _ID42237::_ID14400( "ride_uaz_arriving" );
    _ID42237::_ID14400( "uaz_mounted" );
    _ID42237::_ID14400( "ride_enemy_vehicles_spawn" );
    _ID42237::_ID14400( "uaz_driver_dead" );
    _ID42237::_ID14400( "music_boneyard_intro" );
    _ID42237::_ID14400( "music_boneyard_flyby" );
    _ID42237::_ID14400( "makarov_dialogue" );
    _ID42237::_ID14400( "ride_minigun_gunner_dead" );
    _ID42237::_ID14400( "player_loses_control_of_uaz" );
    _ID42237::_ID14400( "uaz_nag" );
    _ID42237::_ID14400( "obj_rallypoint" );
    _ID42237::_ID14400( "obj_ride" );
    _ID42237::_ID14400( "obj_ride_c130" );
    _ID42237::_ID14400( "uaz_first_friction_edit" );
    _ID42237::_ID14400( "uaz_second_friction_edit" );
    _ID42237::_ID14400( "uaz_third_friction_edit" );
}

_ID49193()
{
    _func_10C( "aware_of_player" );
    _func_10C( "ignore_player" );
    _func_10C( "enemy_dog" );
    _func_10C( "lowthreat" );
    _func_10F( "allies", "aware_of_player", 0 );
    _func_10F( "allies", "axis", -1000 );
    _func_10F( "allies", "team3", -1000 );
    _func_10F( "allies", "enemy_dog", -3000 );
    _func_111( "allies", "ignore_player" );
    _func_10F( "lowthreat", "axis", -2000 );
    _func_10F( "lowthreat", "team3", -2000 );
}

_ID45282()
{
    _ID42407::_ID10126( ::_unknown_04E4 );
    _ID42407::_ID1951( "intro", ::_unknown_04F0, "Intro" );
    _ID42407::_ID1951( "road", ::_unknown_076E, "Road" );
    _ID42407::_ID1951( "flyby", ::_unknown_087C, "Flyby" );
    _ID42407::_ID1951( "higround", ::_unknown_08FF, "Higround" );
    _ID42407::_ID1951( "ride", ::_unknown_0AAD, "Ride" );
    _ID42407::_ID1951( "ride_end", ::_unknown_10A9, "Ride_end" );
}

_ID25349()
{
    var_0 = 0;

    switch ( level._ID35897 )
    {

    }

    _ID42237::_ID14413( "uaz_park" );
    wait 0.5;
    _func_114( var_0, "done" );
    wait 2;
    maps\boneyard_code::_ID13799( 2.5 );

    if ( _ID42407::_ID20505() )
    {
        _ID42407::_ID24793();
        return;
    }

    _func_19F( "DEVELOPER: END OF SCRIPTED LEVEL" );
    return;
    case "ride_c130":
    case "ride":
    case "higround":
    case "intro":
    default:
}

_ID45298( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( "objective_lerp" );
    var_1 _meth_82B8( var_2._ID740, 60 );

    for ( var_3 = 0; var_3 < 6; var_3++ )
    {
        wait 10;
        _func_1E8( var_0, var_1._ID740 );
    }

    _func_1E8( var_0, var_2._ID740 );
}

_ID52597()
{
    _ID42237::_ID14413( "music_boneyard_intro" );
    _ID42407::_ID24577( "mus_boneyard_intro", 151 );
    _ID42237::_ID14413( "music_boneyard_flyby" );
    _ID42407::_ID24577( "mus_boneyard_flyby", 184, 6 );
    _ID42237::_ID14413( "ride_enemy_vehicles_spawn" );
    _ID42407::_ID24582( "mus_boneyard_jeepride", 4 );
    _ID42237::_ID14413( "music_boneyard_planechase" );
    _ID42407::_ID24582( "mus_boneyard_planechase", 1 );
    _ID42237::_ID14413( "player_loses_control_of_uaz" );
    wait 0.8;
    _func_078( 1.5 );
    level notify( "stop_music" );
    level._ID794 _ID42407::_ID27079( "mus_boneyard_planechase_end" );
}

_ID47474()
{
    _ID42475::_ID34575( "start_intro_checkpoint" );
    level thread _unknown_070C();
}

_ID52011()
{
    _func_1A1( "littlebird", "targetname" ) _ID42407::_ID1947( ::_unknown_08E8 );
    _func_1A1( "intro_littlebird", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_08FA, 1 );
    _func_1A1( "intro_littlebird_2", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_090D, 1 );
    _func_1A1( "intro_littlebird_2", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_0886 );
    _func_1A1( "intro_laatpv", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_0841 );
    _func_1A1( "intro_btr80", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_085E );
    _func_1A1( "scene_a_suburban", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_08F1 );
    level thread _unknown_07EF();
    level thread _unknown_0869();
    level thread _unknown_0805();
    _ID42407::_ID1805( "intro_trigger" );
    _ID42234::_ID13611( "intro_exploder" );
    level thread _unknown_080A();
    _ID42237::_ID14413( "pullup_weapon" );
    wait 0.2;
    level._ID794._ID1062 = _func_0ED( 5000 );
    var_0 = _func_03D();
    _ID42237::_ID14425( "player_left_fuselage", 15 );
    _ID42407::_ID40847( var_0, 5 );
    _ID42407::_ID1805( "intro_trigger_2" );
    _ID42237::_ID3350( _func_1A2( "littlebird_trigger", "targetname" ), ::_unknown_0A07 );
    level thread _unknown_0A1F();
    wait 5;
    _ID42407::_ID1805( "intro_color_trigger" );
    _ID42237::_ID14413( "intro_btr80_destroy" );
    wait 2;
    _ID42407::_ID1805( "intro_threeway_fight" );
    _ID42237::_ID14402( "switch_color" );
}

_ID48011()
{
    _ID42237::_ID14413( "obj_rallypoint" );
    wait 1;
    _ID42318::_ID45660();
}

_ID20307()
{
    level._ID794._ID511 = 1;
    level._ID794 _ID42237::_ID41078( 6, "weapon_fired", "grenade_fire" );
    wait 6;
    level._ID794._ID511 = 0;
}

_ID20225()
{
    thread _unknown_08EC();
    wait 2.5;
    _ID42237::_ID14402( "music_boneyard_intro" );
    _ID42407::_ID28864( "byard_pri_wipeoutus" );
    _ID42237::_ID14402( "obj_rallypoint" );
    _ID42237::_ID14421( "intro_btr80_dead", "objective_lerp" );
    wait 1;
    _ID42407::_ID28864( "byard_pri_backupplan" );
    wait 1;
    _ID42407::_ID28864( "byard_pri_lzishot" );
    _ID42407::_ID28864( "byard_nkl_ontheway" );
    _ID42407::_ID28864( "byard_pri_sharpish" );
    _ID42237::_ID14413( "let_them_fight" );
    _ID42237::_ID14402( "makarov_dialogue" );
    _ID42407::_ID28864( "byard_pri_radiotraffic" );
    _ID42407::_ID28864( "byard_pri_contactmakarov" );
    wait 2;
    level thread _unknown_0979();
}

intro_dialogue_part_2()
{
    level endon( "flyby_c130" );
    _ID42237::_ID14413( "makarov_dialogue" );
    _ID42237::_ID14426( "makarov_dialogue" );
    _ID42237::_ID14413( "keep_moving" );
    _ID42407::_ID28864( "byard_pri_headnorth" );
    _ID42237::_ID14413( "road" );
    _ID42407::_ID28864( "byard_pri_whereareyou" );
    _ID42407::_ID28864( "byard_nkl_sandstorms" );
}

_ID50925()
{
    _ID42475::_ID34575( "aud_start_mix_makarov_discussion" );
    wait 2;
    _ID42407::_ID28864( "byard_pri_warhero" );
    wait 1.5;
    _ID42407::_ID28864( "byard_pri_takecareofrest" );
    wait 1.5;
    _ID42407::_ID28864( "byard_pri_onthischannel" );
    wait 0.5;
    _ID42407::_ID28864( "byard_pri_lastaweek" );
    wait 1;
    _ID42407::_ID28864( "byard_mkv_neitherwillyou" );
    wait 0.25;
    _ID42407::_ID28864( "byard_pri_myfriend" );
    _ID42407::_ID28864( "byard_mkv_cutsbothways" );
    _ID42407::_ID28864( "byard_mkv_hotelbravo" );
    _ID42407::_ID28864( "byard_pri_myregards" );
    wait 3;
    _ID42475::_ID34575( "aud_stop_mix_makarov_discussion" );
    _ID42237::_ID14388( "makarov_dialogue" );
}

_ID49041()
{
    _ID42237::_ID14413( "intro_rockets" );
    _ID42237::_ID3350( _func_1A2( "intro_first_rocket", "targetname" ), maps\boneyard_code::_ID49433 );
    _ID42237::_ID14413( "intro_rockets_2" );
    _ID42237::_ID3350( _func_1A2( "intro_rocket_start", "targetname" ), maps\boneyard_code::_ID49433 );
}

_ID49824()
{
    var_0 = [];
    var_0[_func_128( "MOD_PROJECTILE_SPLASH" )] = 1;
    var_0[_func_128( "MOD_PROJECTILE" )] = 1;
    maps\boneyard_code::_ID46158( var_0, undefined, 1, 9 );
    _ID42411::_ID14749();
}

_ID49870()
{
    maps\boneyard_code::_ID48567();
    thread maps\boneyard_code::_ID54663( self._ID31474 );
    thread _unknown_0B0A();
    thread maps\boneyard_aud::aud_bone_intro_btr80();
    _ID42237::_ID14413( "intro_btr80_pre_attack" );
    _ID42407::_ID13025( "hold_fire" );
    thread maps\boneyard_code::_ID45510( level._ID20273._ID52888, ( 0, 0, 0 ), 1 );
    level._ID20273._ID52888 = undefined;
    _ID42237::_ID14413( "intro_btr80_attack" );
    _ID42407::_ID13021( "hold_fire" );
    _ID42237::_ID14413( "intro_btr80_attack_kill" );
    maps\boneyard_code::_ID45510( level._ID20273, ( 0, 0, 0 ), 1 );
    wait 1;
    thread _unknown_0B7E();
}

_ID47215()
{
    _ID42237::_ID14413( "intro_btr80_destroy" );
    level._ID20273._ID52888 = undefined;
    var_0 = [];
    var_0[_func_128( "MOD_PROJECTILE_SPLASH" )] = 1;
    var_0[_func_128( "MOD_PROJECTILE" )] = 1;
    maps\boneyard_code::_ID46158( var_0, undefined, 1, 4 );
    _ID42237::_ID14402( "intro_btr80_dead" );
    _ID42411::_ID14749();
}

_ID47422()
{
    self endon( "death" );

    while ( 1 && _func_1A7( self ) )
    {
        var_0 = _func_0DE( "axis" );
        var_0 = _ID42237::_ID3293( var_0, level._ID794 );
        maps\boneyard_code::_ID45510( var_0[0], ( 0, 0, 0 ), 1 );
    }
}

_ID54155()
{
    level._ID20273 = self;
    _ID42237::_ID14413( "intro_littlebird_strafe" );
    _ID42237::_ID3350( self._ID23512, ::_unknown_0C29, self );
}

_ID49270()
{
    var_0 = _func_1A2( "vehicle_sweetener", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_0C3A );
    var_0 = _func_1F3( "vehicle_sweetener", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_0C4D );
}

_ID50133()
{
    self waittill( "trigger",  var_0  );
    var_0 _meth_80A1( self._ID31438 );
}

_ID48055( var_0 )
{
    var_0 endon( "death" );
    self _meth_813C( 0 );
    var_1 = _func_11F( self._ID65 );
    var_2 = self._ID740 + 700 * var_1 + ( 0, 0, -80 );
    var_3 = _func_06A( "script_origin", var_2 );
    var_3 _meth_8053( self );
    var_4 = self _meth_806D();
    self _meth_806C( "manual" );
    self _meth_810F( var_3 );
    _ID42237::_ID14426( "intro_littlebird_strafe" );
    var_3 _meth_80B7();
    self _meth_8111();
    self _meth_806C( var_4 );
}

_ID50294()
{
    self endon( "death" );
    thread maps\boneyard_aud::aud_bone_scene_a_suburban();
    thread maps\boneyard_code::_ID53727( "scene_a_wave2" );
    var_0 = self._ID23512[0];
    var_0 waittill( "turret_ready" );
    var_1 = var_0 _meth_80F2();
    var_1 thread maps\boneyard_code::_ID53727( "scene_a_wave2" );
    var_2 = _func_1A1( "mg_target", "targetname" );
    var_0 thread animscripts\laatpv_turret\common::_ID32371( var_2, 3, 6 );
    _ID42237::_ID14413( "scene_a_wave2" );
    thread _unknown_0D52( self );

    for (;;)
    {
        self waittill( "damage",  var_4, var_3  );

        if ( _func_02F( self._ID44962 ) && var_4 == self._ID44962 )
            break;
    }

    _ID42411::_ID16987();
    self notify( "death",  self._ID44962, "MOD_PROJECTILE"  );
}

_ID43889( var_0 )
{
    var_1 = _func_06A( "script_origin", var_0._ID740 + ( 0, 0, 150 ) );
    var_1 _meth_8053( var_0 );
    var_1 _ID42407::_ID41135( undefined, undefined, undefined, 5, var_0 );
    var_2 = _func_1A1( "scene_a_rpg_guy", "targetname" ) _ID42407::_ID35014( 1 );
    var_2 endon( "death" );
    var_0._ID44962 = var_2;
    var_3 = _func_1A1( "scene_a_rpg_spot", "targetname" );
    var_2 _ID42407::_ID32187( 1 );
    var_2._ID507 = 1;
    var_2._ID511 = 1;
    var_3 _ID42259::_ID3020( var_2, "prone_2_stand" );
    var_2 _meth_8097( 1 );
    var_2._ID507 = 0;
    var_2 _meth_8173( var_0, 1 );
    var_0 _ID42237::_ID41123( "death", 5 );
    var_2 _meth_8097( 0 );
    var_2 _meth_8174();
    var_2._ID511 = 0;
    var_2 _ID42407::_ID32315( "p" );
    var_2._ID450 = 128;
    var_2 maps\boneyard_code::_ID44401();
}

_ID52308( var_0 )
{
    level notify( "road_heli_spawned" );
    _ID42237::_ID3350( self._ID23512, ::_unknown_0EAA );
    level._ID18342 = self;
    self._ID31024 = 1;
    waitframe;
    thread maps\boneyard_code::_ID54663( self._ID31474 );

    if ( !_func_02F( var_0 ) )
        thread _unknown_0EAA();

    self._ID52888 = _func_06A( "script_model", ( 0, 0, 0 ) );
    self._ID52888 _meth_8053( self, "tag_origin", ( 100, 0, 150 ), ( 0, 0, 0 ) );
    thread _unknown_0EF7( self._ID52888 );
}

_ID49952()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "rpg_fired" );
        var_0 = _func_1AB( self, 2500, 1000 );
        wait 2.5;
        _func_1AD( var_0 );
    }
}

_ID54711()
{
    if ( !_func_02F( level._ID18342 ) )
        return 0;

    if ( !_func_1A7( level._ID18342 ) )
        return 0;

    if ( level._ID18342._ID486 < level._ID18342._ID18313 )
        return 0;

    return 1;
}

_ID43756( var_0 )
{
    var_0 endon( "death" );
    self waittill( "death" );
    var_0 _meth_80B7();
}

_ID51662()
{
    self _meth_8162( 18 );
    self _meth_815F( 20 );
    self _meth_8160( 20 );
    self _meth_813C( 1.5, "yaw" );
    self _meth_813C( 0.7, "pitch" );
}

_ID47371()
{
    level endon( "spawn_littlebird" );
    self waittill( "trigger" );
    level notify( "spawn_littlebird",  self._ID1191  );
}

_ID44095()
{
    level waittill( "spawn_littlebird",  var_0  );
    var_1 = _func_1A1( var_0, "targetname" );
    var_2 = _func_1A1( "littlebird", "targetname" );
    level._ID18342 = var_2 maps\boneyard_code::_ID51568( var_1 );
    _ID42237::_ID14388( "littlebird_react" );
    level._ID18342 thread maps\boneyard_code::_ID52547( "strafe_path" );
}

_ID50348()
{
    _ID42237::_ID14413( "flyby_c130" );

    if ( !_unknown_0FC5() )
    {
        var_0 = _func_1A1( "littlebird_flyby_start", "targetname" );
        var_1 = _func_1A1( "littlebird", "targetname" );
        level._ID18342 = var_1 maps\boneyard_code::_ID51568( var_0 );
    }

    var_2 = level._ID18342;
    var_2 _ID42411::_ID16988();
    var_2 notify( "reaction_end" );
    var_3 = _func_1A1( "littlebird_flyby_standby", "targetname" );
    var_2 _ID42411::_ID45813( "faster" );
    var_2 _meth_828D( 65, 25, 25 );
    var_2 thread _ID42411::_ID40218( var_3 );
    _ID42237::_ID14413( "flyby_c130" );
    var_3 = _func_1A1( "flyby_chase_path", "targetname" );
    var_2 _ID42411::_ID45813( "faster" );
    var_2 _meth_828D( 60, 25, 25 );
    var_2 thread _ID42411::_ID40218( var_3 );
    var_2 waittill( "reached_dynamic_path_end" );
    var_2 _meth_80B7();
}

_ID51726()
{
    _ID42475::_ID34575( "start_road_checkpoint" );
    level._ID794 maps\boneyard_code::_ID47872( _func_1A1( "start_road_player", "targetname" ) );
    _ID42407::_ID1805( "middle_road_start_trigger" );
    var_0 = _func_1A1( "littlebird", "targetname" );
    var_0 _ID42407::_ID1947( ::_unknown_1052 );
    _ID42237::_ID3350( _func_1A2( "littlebird_trigger", "targetname" ), ::_unknown_10A4 );
    level thread _unknown_10BD();
    _func_1A2( "littlebird_trigger", "targetname" )[0] notify( "trigger" );
    wait 1;
    _ID42237::_ID14402( "littlebird_react" );
    waitframe;
    level._ID18342 notify( "react" );
    level._ID18342 _ID42411::_ID23510();
}

_ID49752()
{
    level thread _unknown_11DD();
    level thread _unknown_1211();
    level thread _unknown_11B3();
    _func_1A1( "road_laatpv", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_11A3 );
    var_0 = _func_1A2( "middle_road", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        level maps\boneyard_code::_ID45796( "trigger", var_2 );
    }

    var_clear_2
    var_clear_0
    level waittill( "waittill_stack",  var_2, var_4  );
    var_5 = 1000;

    for (;;)
    {
        wait 0.5;
        var_6 = _func_0DE( "axis", "team3" );

        if ( !_func_02F( var_6[0] ) )
            continue;

        var_6 = _func_1C0( var_6, level._ID794._ID740 );

        if ( _func_0F3( var_6[0]._ID740, level._ID794._ID740 ) > var_5 )
            break;

        var_5 *= 0.95;
    }

    _ID42234::_ID13611( "road_exploder" );
    level maps\boneyard_code::_ID50758();
}

_ID45413()
{
    var_0 = self._ID23512[0];
    var_0 waittill( "turret_ready" );
    var_1 = var_0 _meth_80F2();

    if ( _unknown_1185() )
        thread maps\boneyard_code::_ID47068( var_0, level._ID18342 );

    _ID42237::_ID3350( self._ID29965, maps\boneyard_code::_ID53727, "road" );
    thread maps\boneyard_code::_ID53727( "road" );
    self waittill( "death" );
    level notify( "laatpv_dead" );
}

_ID46249()
{
    _ID42237::_ID14413( "laatpv_destroy" );
    level._ID40830 = "truck_physics";
    level._ID40793 = "vehicle_pickup_roobars";
    level._ID40791 = "script_vehicle_pickup_roobars_physics";
    var_0 = level._ID40830 + level._ID40793;
    level._ID40106[var_0] = [];
    level._ID40106[level._ID40791] = [];
    _ID42411::_ID6213( "fx/explosions/small_vehicle_explosion", undefined, "car_explode", undefined, undefined, undefined, 0, 1 );
    _ID42411::_ID6213( "fx/fire/firelp_small_pm_a", "tag_fx_tire_right_r", "smallfire", undefined, undefined, 1, 0.1, 1 );
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "tag_fx_cab", "smallfire", undefined, undefined, 1, 0.11, 1 );
    _ID42411::_ID6213( "fx/fire/firelp_small_pm_a", "tag_engine_left", "smallfire", undefined, undefined, 1, 0.11, 1 );
    level._ID40114[level._ID40793] = 0;
    _ID42237::_ID14413( "road" );
    _ID42407::_ID1805( "road_crash" );
}

_ID45135()
{
    level endon( "stop_road_rockets" );
    var_0 = _func_1A2( "road_rocket_guys", "targetname" );

    for (;;)
    {
        _ID42237::_ID14413( "road_rocket_guys" );

        if ( !_unknown_1271() )
            return;

        level._ID18342 endon( "death" );
        var_1 = undefined;
        var_0 = _func_1C0( var_0, level._ID794._ID740 );

        for ( var_2 = var_0.size; var_2 > 0; var_2-- )
        {
            var_3 = var_0[var_2 - 1];
            var_3._ID216++;
            var_1 = var_3 _ID42407::_ID35014();

            if ( !_ID42407::_ID35060( var_1 ) )
                break;
        }

        if ( _func_0F3( level._ID794._ID740, var_1._ID740 ) > 800 )
            var_1._ID511 = 1;

        var_1._ID43929 = level._ID18342;
        var_1 thread maps\boneyard_code::_ID45188();
        _ID42237::_ID14388( "road_rocket_guys" );
    }
}

_ID54022()
{
    _ID42237::_ID3350( _func_1A2( "rocket_start", "targetname" ), maps\boneyard_code::_ID50067, 2 );
    _ID42237::_ID14413( "flyby_c130" );
    _ID42475::_ID34575( "aud_start_mix_ac130_passby" );
    var_0 = _func_1A1( "flyby_c130_spawner", "targetname" );
    var_1 = var_0 _ID42407::_ID35192();
    var_1 thread _ID42411::_ID17021();
    level._ID794 _meth_80A1( "scn_boneyard_ac130_flyby_front" );
    _ID42475::_ID34575( "aud_plane_rattle_sounds" );
    _ID42237::_ID14413( "flyby_angel_flare" );
    var_1 thread maps\boneyard_code::_ID53343( 10 );
    wait 11;
    var_1 thread maps\boneyard_code::_ID53343( 5 );
    _ID42475::_ID34575( "aud_stop_mix_ac130_passby" );
}

_ID50555()
{
    _ID42475::_ID34575( "start_flyby_checkpoint" );
    level._ID794 maps\boneyard_code::_ID47872( _func_1A1( "start_flyby_player", "targetname" ) );
    var_0 = _func_1A1( "littlebird_flyby_start", "targetname" );
    var_1 = _func_1A1( "littlebird", "targetname" );
    level._ID18342 = var_1 maps\boneyard_code::_ID51568( var_0 );
}

_ID14624()
{
    level thread _unknown_1537();
    level._ID46456["axis"] = 10;
    level._ID46456["team3"] = 10;
    _func_1A1( "flyby_suburban", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_1565 );
    _ID42237::_ID14413( "flyby_rockets" );
    level thread _unknown_13F0();
    _ID42237::_ID14413( "flyby_c130" );
    _ID42234::_ID13611( "flyby_explosions" );
    _ID42237::_ID14402( "music_boneyard_flyby" );
    _ID42407::_ID1805( "flyby_area_trigger" );
    level thread _unknown_157B();
    _ID42237::_ID14413( "flyby_vision_change" );
}

_ID44556()
{
    _ID42237::_ID14413( "flyby_vision_change" );
    var_0 = _ID42407::_ID15543( "flyby_axis" );
    var_1 = _ID42407::_ID15543( "flyby_team3" );

    if ( var_0.size < 5 && var_1.size < 5 )
    {
        _ID42407::_ID1804( "flyby_advance_color_trigger" );
        _ID42237::_ID14402( "flyby_minigun_move" );
    }
}

_ID47837()
{
    level endon( "higround_ascend" );
    _ID42237::_ID14413( "flyby_c130" );
    _ID42237::_ID14426( "makarov_dialogue" );
    _ID42407::_ID28864( "byard_nkl_unsafetoland" );
    _ID42407::_ID28864( "byard_pri_landtheplane" );
    _ID42407::_ID28864( "byard_nkl_paidenough" );
    _ID42237::_ID14413( "flyby_minigun_move" );
    wait 7;
    _ID42407::_ID28864( "byard_pri_gettoplane" );
}

_ID54060()
{
    self endon( "death" );
    level._ID54060 = self;
    _ID42237::_ID14413( "flyby_suburban_go" );
    var_0 = _func_1F2( "flyby_retreat_path", "targetname" );
    maps\boneyard_code::_ID47263( var_0 );
    _ID42237::_ID14413( "flyby_suburban_kill" );
    self _meth_823B( ( -450, 50, 100 ), 1 );
    _ID42411::_ID16987();
    _ID42411::_ID14749();
}

_ID48834()
{
    _ID42475::_ID34575( "start_higround_checkpoint" );
    _ID42237::_ID14402( "music_boneyard_intro" );
    _ID42237::_ID14402( "music_boneyard_flyby" );
    var_0 = 0;
    var_1 = _func_1A1( "rallypoint", "targetname" );
    _func_1E3( var_0, "current", &"BONEYARD_OBJ_RALLYPOINT", var_1._ID740 );
    level._ID794 maps\boneyard_code::_ID47872( _func_1A1( "start_higround_player", "targetname" ) );
    var_2 = _func_1F2( "higround_minigun_suburban_start", "script_noteworthy" );
    var_3 = _func_1A1( "higround_minigun_suburban", "script_noteworthy" );
    var_4 = var_3 maps\boneyard_code::_ID51568( var_2 );
    var_2 = _func_1F2( "higround_btr80_start", "script_noteworthy" );
    var_5 = _func_1A1( "higround_btr80", "script_noteworthy" );
    var_4 = var_5 maps\boneyard_code::_ID51568( var_2 );
    _ID42237::_ID14402( "flyby_suburban_go" );
    var_7 = _func_1A1( "higround_start_trigger_off", "script_noteworthy" );
    var_7 _ID42237::_ID38863();
    _ID42407::_ID1805( "higround_start_color_trigger" );
    _ID42407::_ID1804( "higround_start_ai_trigger" );
    _ID42237::_ID14425( "higround_ascend", 3 );
    _ID42407::_ID1805( "higround_start_color_trigger_2" );
}

_ID51648()
{
    _func_1A1( "higround_btr80", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_1873 );
    _func_1A1( "higround_minigun_suburban", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_18D4 );
    _func_1A1( "higround_littlebird", "targetname" ) _ID42407::_ID1947( ::_unknown_155E );
    _func_1A1( "higround_littlebird", "targetname" ) _ID42407::_ID1947( ::_unknown_181A );
    _ID42407::_ID3343( "higround_guy", ::_unknown_17FE );
    level thread _unknown_1823();
    _ID42237::_ID14413( "flyby_suburban_go" );
    _func_10F( "allies", "team3", 0 );
    level thread _unknown_182E();
    level thread _unknown_181A( 4 );
}

_ID54110( var_0 )
{
    _ID42237::_ID14413( "higround_2" );
    _ID42237::_ID14421( "btr80_at_end", "btr80_destroyed" );

    while ( level._ID52217 > var_0 )
        wait 0.5;

    _ID42407::_ID1804( "ride_start_trigger" );
}

_ID52217()
{
    level endon( "ride_uaz_arriving" );

    if ( !_func_02F( level._ID52217 ) )
        level._ID52217 = 0;

    level._ID52217++;
    _ID42237::_ID41098( "death", "pain_death" );
    level._ID52217--;
}

_ID48349()
{
    level endon( "ride_uaz_arriving" );
    _ID42237::_ID14413( "higround_ascend" );
    var_0 = _func_03D();
    _ID42237::_ID14413( "higround_2" );
    _ID42407::_ID40847( var_0, 30 );
    _ID42407::_ID4422( "higround_second_save" );
}

_ID43789()
{
    level endon( "higround_2" );
    _ID42237::_ID14413( "higround_ascend" );
    _ID42237::_ID14426( "makarov_dialogue" );
    _ID42407::_ID28864( "byard_pri_gettransport" );
    var_0 = _func_03D();
    _ID42237::_ID14413( "higround_1" );
    _ID42407::_ID40847( var_0, 15 );
    _ID42407::_ID28864( "byard_pri_foudntransport" );
}

_ID52453()
{
    self endon( "death" );
    level._ID44132 endon( "death" );
    level endon( "obj_ride" );
    thread _unknown_19A2();
    thread _unknown_198E();
    _ID42237::_ID14413( "hunt_btr80" );
    self _meth_829E( 25, 25 );
    self _meth_829C( 90, 45, 22.5, 0 );
    thread maps\boneyard_code::_ID53846( "hunt_btr80" );
    maps\boneyard_code::_ID50325( "higround_2" );

    if ( !_ID42237::_ID14385( "btr80_at_end" ) )
    {
        _ID42237::_ID14388( "no_align" );
        maps\boneyard_code::_ID49603();
        self notify( "stop_hunt" );
        self _meth_8270();
        self _meth_826D();
        _ID42237::_ID14402( "btr80_target_littlebird" );
        _ID42411::_ID16988();
        self _meth_828D( 70, 35, 10 );
        self _meth_8264( 512 );
        self _meth_8265( level._ID794._ID740 + ( 0, 0, 768 ) );
        _ID42237::_ID41068( "goal", "near_goal" );
        _ID42407::_ID14389( "btr80_target_littlebird", 3 );
        _ID42407::_ID10226( 4, _ID42411::_ID16987 );
    }

    self notify( "stop_hunt" );
    thread maps\boneyard_code::_ID53846( "hunt_btr80_final" );
    maps\boneyard_code::_ID50325();
    self notify( "stop_hunt" );

    if ( _ID42237::_ID8201() )
    {
        var_0 = [];
        var_0[0] = level._ID44132;
        thread maps\boneyard_code::_ID14269( var_0, 3 );
    }
    else
    {
        maps\boneyard_code::_ID49603();
        thread _ID42407::_ID14403( "btr80_target_littlebird", 3 );
        self._ID52888 _ID42237::_ID10192( _func_0BA( 4, 8 ), ::_meth_80B7 );
    }

    level._ID18342 notify( "missed_final" );
    self _meth_8270();
    self _meth_826D();
    var_1 = _func_1A1( "higround_strafe_path_first", "targetname" );
    level._ID18342 thread _ID42411::_ID40218( var_1 );
    _ID42237::_ID14388( "littlebird_react" );
    level._ID18342 thread maps\boneyard_code::_ID52547( "higround_strafe_path" );
}

_ID51397()
{
    level endon( "obj_ride" );
    level._ID18342 endon( "death" );
    level._ID18342 endon( "missed_final" );
    level._ID44132 waittill( "death" );
    self _meth_8270();
    self _meth_826D();
    var_0 = _func_1A1( "higround_strafe_path_first", "targetname" );
    level._ID18342 thread _ID42411::_ID40218( var_0 );
    _ID42237::_ID14388( "littlebird_react" );
    level._ID18342 thread maps\boneyard_code::_ID52547( "higround_strafe_path" );
}

_ID54715()
{
    level endon( "obj_ride" );
    level._ID44132 endon( "death" );
    level._ID18342 waittill( "death" );
    level._ID44132._ID43064 = _ID42237::_ID3321( level._ID44132._ID43064, level._ID18342 );
}

_ID50618()
{
    self endon( "death" );
    level._ID44132 = self;
    self._ID11584 = 1;
    thread _unknown_1B9A();
    _ID42237::_ID14402( "suburban_target_btr80" );
    maps\boneyard_code::_ID40247( 500 );
    maps\boneyard_code::_ID48567();
    _ID42237::_ID14413( "flyby_suburban_go" );

    if ( _func_1A7( level._ID54060 ) )
    {
        wait 2;
        maps\boneyard_code::_ID45510( level._ID54060, ( 0, 0, 30 ), 1, 10 );
    }

    var_0 = self._ID23512[0];
    var_0 _meth_8161( 10 );
    maps\boneyard_code::_ID44966();
    wait 5;
    _ID42407::_ID13021( "hold_fire" );
    thread maps\boneyard_code::_ID54385();
    _func_10F( "allies", "team3", 1000 );
    _unknown_1BE2();
    wait 2;
    self notify( "clear_turret_target" );
    _ID42237::_ID14402( "higround_2" );
}

_ID52517()
{
    self endon( "death" );

    for (;;)
    {
        _ID42237::_ID14413( "btr80_target_littlebird" );

        if ( !_func_02F( level._ID18342 ) )
            return;

        level._ID18342 endon( "death" );

        if ( self._ID43064.size == 0 )
            self._ID43064 = _ID42237::_ID3293( self._ID43064, level._ID18342 );
        else
            self._ID43064 = _ID42237::_ID3312( self._ID43064, level._ID18342, 0 );

        self notify( "clear_turret_target" );
        _ID42237::_ID14426( "btr80_target_littlebird" );
        self._ID43064 = _ID42237::_ID3321( self._ID43064, level._ID18342 );
    }
}

_ID43604()
{
    self waittill( "death" );
    _ID42237::_ID14402( "btr80_destroyed" );
}

_ID47669()
{
    self endon( "death" );
    level._ID51947 = self;
    _ID42407::_ID22746();
    var_0 = self._ID23512[0];
    var_0 waittill( "turret_ready" );
    var_1 = var_0 _meth_80F2();
    _ID42237::_ID14413( "suburban_target_btr80" );
    var_0 = self._ID23512[0];
    var_0 animscripts\laatpv_turret\common::_ID32371( level._ID44132, 4, 5 );
    _ID42237::_ID14413( "higround_ascend" );
    _ID42407::_ID36519();
    maps\boneyard_code::_ID40247( 200 );
    _ID42237::_ID14413( "btr80_target_suburban" );
    level._ID44132._ID43064 = _ID42237::_ID3293( level._ID44132._ID43064, self );
}

_ID54583()
{
    _ID42475::_ID34575( "start_ride_checkpoint" );
    _ID42237::_ID14402( "music_boneyard_intro" );
    _ID42237::_ID14402( "music_boneyard_flyby" );
    level._ID794 maps\boneyard_code::_ID47872( _func_1A1( "start_ride_player", "targetname" ) );
    var_0 = _func_1A1( "littlebird", "targetname" );
    var_0 _ID42407::_ID1947( ::_unknown_1990 );
}

_ID54306()
{
    var_0 = _func_1A2( "ride_vehicle", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_unknown_1EA2 );
    _func_1A1( "ride_uaz", "script_noteworthy" ) _ID42407::_ID1947( ::_unknown_21CD );
    var_1 = _func_1A1( "runway_suburban", "targetname" );
    var_1 _ID42407::_ID1947( ::_unknown_1EFC );
    _ID42407::_ID3343( "price", ::_unknown_1EC7 );
    _ID42407::_ID3343( "uaz_driver", ::_unknown_2293 );
    _ID42407::_ID3343( "ride_minigunner", ::_unknown_1F2C );
    level thread _unknown_1F50();
    level thread _unknown_20E3();
    level thread _unknown_2354();
    level thread maps\boneyard_code::_ID47315();
    level thread _unknown_1EAF();
    level thread _unknown_210E();
    level thread _unknown_1E7D();
    _ID42237::_ID14413( "ride_uaz_arriving" );
    _func_034( "truck_low_breaking_speed", "" );
    _ID42407::_ID4422( "ride_arriving_save" );
    _ID42237::_ID14413( "ride_enemy_vehicles_spawn" );
    level._ID40830 = "truck_physics";
    level._ID40793 = "vehicle_pickup_roobars";
    level._ID40791 = "script_vehicle_pickup_roobars_physics";
    var_2 = level._ID40830 + level._ID40793;
    level._ID40106[level._ID40791] = [];
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "tag_body", "smallfire", undefined, undefined, 1, 0, 1 );
    _ID42411::_ID6213( "fx/explosions/small_vehicle_explosion", undefined, "car_explode", undefined, undefined, undefined, 0.9, 1 );
    _ID42411::_ID6213( "fx/fire/firelp_small_pm_a", "tag_fx_tire_right_r", "smallfire", undefined, undefined, 1, 1, 1 );
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "tag_fx_cab", "smallfire", undefined, undefined, 1, 1.01, 1 );
    _ID42411::_ID6213( "fx/fire/firelp_small_pm_a", "tag_engine_left", "smallfire", undefined, undefined, 1, 1.01, 1 );
    level._ID40114[level._ID40793] = 1;
    _ID42407::_ID1805( "ride_initiate" );
    var_3 = level._ID794 _meth_8317();
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_125( _func_128( var_5 ), "rpg" ) )
            continue;

        if ( level._ID794 _meth_833F( var_5 ) > 0.5 )
            continue;

        level._ID794 _meth_833C( var_5 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "uaz_mounted" );
    _func_0DB( "ui_hidemap", 1 );
    _func_0DB( "g_DisableAntilagOnLinkedVehicles", 1 );
    _ID42475::_ID34575( "aud_start_mix_jeep_ride" );
    _ID42407::_ID32255( maps\boneyard_code::_ID52798 );
    _ID42237::_ID14413( "blow_wing" );
    _ID42407::_ID4422( "ride2" );
    _ID42237::_ID14413( "c130_hatch_open" );
    _ID42407::_ID4433();
    _ID42237::_ID14413( "ride_driver_death" );
    _ID42475::_ID34575( "aud_start_mix_driver_gets_shot" );
    _ID42237::_ID14402( "uaz_driver_dialogue" );
    level thread _unknown_206C();
    wait 2;
    level._ID794 _meth_832A();
    wait 1;
    _ID42237::_ID14402( "uaz_player_control" );
}

_ID45462()
{
    _ID42237::_ID14413( "ride_uaz_arriving" );
    level._ID40830 = "suburban";
    level._ID40793 = "vehicle_suburban";
    level._ID40791 = "script_vehicle_suburban";
    var_0 = level._ID40830 + level._ID40793;
    level._ID40106[var_0] = [];
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/explosions/small_vehicle_explosion", undefined, "scn_boneyard_sub_explode" );
    _ID42237::_ID14413( "uaz_mounted" );
    level._ID40830 = "suburban";
    level._ID40793 = "vehicle_suburban";
    level._ID40791 = "script_vehicle_suburban";
    var_0 = level._ID40830 + level._ID40793;
    level._ID40106[var_0] = [];
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/explosions/small_vehicle_explosion", undefined, "car_explode" );
}

_ID47390()
{
    _ID42237::_ID14413( "uaz_mounted" );
    wait 0.5;
    _func_08E( 10000 );
    wait 11;
    _func_08E( 13000 );
    wait 7;
    _func_08E( 15500 );
    wait 20;
    _func_08E( 20000 );
}

_ID53902()
{
    _ID42237::_ID14413( "ride_uaz_arriving" );
    _ID42237::_ID14426( "makarov_dialogue" );

    if ( !_ID42237::_ID14385( "uaz_driver_mount" ) )
    {
        level thread _unknown_2147();
        _ID42407::_ID28864( "byard_nkl_oneminute" );
        _ID42407::_ID28864( "byard_pri_muchtime" );
    }

    _ID42237::_ID14413( "uaz_driver_mount" );

    if ( !_ID42237::_ID14385( "uaz_mounted" ) )
    {
        if ( _ID42237::_ID14385( "uaz_nag" ) )
            level._ID28543 _ID42407::_ID10805( "byard_pri_getinjeep" );
        else
            level._ID28543 _ID42407::_ID10805( "byard_pri_weareleaving" );
    }

    _ID42237::_ID14413( "uaz_driver_dialogue" );
    var_0 = level._ID794._ID740 + ( 0, 0, 64 );
    wait 0.8;
    _ID42237::_ID14402( "uaz_driver_dead" );
    wait 1;
    level._ID28543 endon( "death" );
    _ID42237::_ID14413( "uaz_player_in_control" );
    wait 3;
    level._ID28543 _ID42407::_ID10805( "byard_pri_aimforramp" );
}

_ID46922()
{
    level._ID28543 endon( "death" );
    level endon( "uaz_driver_mount" );
    wait 20;
    level._ID28543 _ID42407::_ID10805( "byard_pri_getinjeep" );
    wait 30;
    level._ID28543 _ID42407::_ID10805( "byard_pri_weareleaving" );
    _ID42237::_ID14402( "uaz_nag" );
}

_ID50310()
{
    wait 1.3;
    level._ID794 _meth_81BB( 256, level._ID44469 _meth_80AF() );
}

_ID47121()
{
    level._ID28543 = self;
    self._ID680 = "Capt. Price";
    self._ID3189 = "price";
    thread _ID42407::_ID22746();
    _ID42237::_ID14413( "uaz_player_in_control" );
    thread maps\boneyard_code::_ID47050();
}

_ID47345()
{
    if ( self._ID40264._ID1193 == "firstTruck" && self._ID1282 == "truck_physics" )
        level._ID48679 = self;
    else if ( self._ID40264._ID1193 == "firstTruck" && self._ID1282 == "suburban_minigun" )
        level.ai_minivan_2 = self;
    else if ( self._ID40264._ID1193 == "firstMinivan" && self._ID1282 == "suburban" )
        level._ID48048 = self;
    else if ( self._ID40264._ID1193 == "rollOverTruck" && self._ID1282 == "truck_physics" && self._ID40264._ID740[0] < 8400 )
        level.rollovertruck = self;

    thread maps\boneyard_code::_ID46865();
    thread maps\boneyard_code::_ID44514();
    self _meth_823C();
    _ID42237::_ID3350( self._ID29965, ::_unknown_231F );
    _ID42411::_ID16988();
}

_ID48830()
{
    level._ID50821 = self;
    thread _unknown_2579();
    self _meth_804E( "TAG_GLASS_RIGHT_BACK" );
    self _meth_804E( "TAG_GLASS_LEFT_BACK" );
    self _meth_804E( "TAG_GLASS_RIGHT_FRONT" );
}

_ID50318()
{
    var_0 = level._ID15361;

    if ( var_0 == 0 )
        var_0 = 1;

    self._ID486 = self._ID486 * var_0;
}

_ID50210()
{
    self endon( "death" );
    level._ID50210 = self;
    _ID42407::_ID1890( _ID42407::_ID41116, "death" );
    _ID42407::_ID1890( _ID42237::_ID14402, "ride_minigun_gunner_dead" );
    thread _ID42407::_ID11204();
    wait 1;
    var_0 = self _meth_81A0();
    var_0 _meth_8114( 4 );
    _ID42237::_ID14413( "uaz_mount_end" );

    for (;;)
    {
        self._ID507 = 0;
        wait 0.65;
        self._ID507 = 1;
        wait 1.75;
    }
}

_ID44061()
{
    level._ID44077 = maps\boneyard_code::_ID47754();
    level endon( "uaz_park_crash" );
    _ID42237::_ID14413( "uaz_mounted" );
    thread _unknown_2414();
    _ID42237::_ID14402( "can_save" );
    _ID42407::_ID4422( "ride" );
    var_0 = _func_1A1( "ride_c130_spawner", "targetname" );
    var_1 = var_0 _ID42407::_ID35192();
    var_1 _meth_805A();
    wait 1;
    var_1 _ID42413::_ID22345( "running" );
    level._ID44077 _meth_8053( var_1, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    _ID42237::_ID14402( "obj_ride_c130" );
    var_1 thread _ID42411::_ID17021();
    _ID42237::_ID14413( "uaz_driver_dead" );
    var_1 thread _unknown_25B8();

    for (;;)
    {
        level._ID44077._ID46195 waittill( "trigger",  var_2  );

        if ( var_2 == level._ID48653 )
            break;
    }

    _ID42237::_ID14402( "uaz_park" );
    thread _unknown_2543();
}

jeep_climb_in_cinematic()
{
    var_0 = _ID54167::_ID43386( "jeep_climb_in" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.5, 50, 32, 32 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.3 ) _ID54167::_ID50321( 4.0, 40, 8, 8 );
    var_0 _ID54167::_ID48800( 0.4 ) _ID54167::_ID50321( 4.0, 25, 12, 12 );
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID50321( 5.6, 50, 12, 12 );
    var_0 _ID54167::_ID48800( 1.5 ) _ID54167::_ID50321( 4.0, 45, 8, 8 );
    var_0 _ID54167::_ID48800( 1.9 ) _ID54167::_ID50321( 4.0, 27, 8, 8 );
    var_0 _ID54167::_ID48800( 3.15 ) _ID54167::_ID50321( 4.0, 20, 8, 8 );
    var_0 _ID54167::_ID48800( 4.15 ) _ID54167::_ID50321( 4.0, 15, 8, 8 );
    var_0 _ID54167::_ID48800( 4.35 ) _ID54167::_ID50321( 5.6, 220, 8, 8 );
    var_0 _ID54167::_ID48800( 4.9 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.65 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.6 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.5 ) _ID54167::_ID47198( 0.1, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 3.05 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 3.8 ) _ID54167::_ID47198( 0.08, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 4.15 ) _ID54167::_ID47198( 0.12, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.25 );
    var_0 _ID54167::_ID48800( 0.6 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 2.0 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48166();
}

jeep_ride_end_cinematic()
{
    thread _unknown_27B5();
    var_0 = _ID54167::_ID43386( "jeep_ride_end" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 11, 190, 32, 32 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID50321( 5.6, 45, 12, 12 );
    var_0 _ID54167::_ID48800( 1.65 ) _ID54167::_ID50321( 11, 190, 12, 12 );
    var_0 _ID54167::_ID48800( 2.0 ) _ID54167::_ID50321( 5.6, 20, 12, 12 );
    var_0 _ID54167::_ID48800( 3.85 ) _ID54167::_ID50321( 5.6, 70, 4, 4 );
    var_0 _ID54167::_ID48800( 4.9 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.75 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.55 ) _ID54167::_ID47198( 0.1, 0.8, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48800( 2.25 ) _ID54167::_ID47198( 0.5, 2.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.7 );
    var_0 _ID54167::_ID48800( 3.6 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 3.85 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 4.55 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 2.25 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 3.0 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.3 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 1.25, 0.4, 0.4, 0, 0, 0, 0 );
    var_0 _ID54167::_ID48166();
}

stopdustfx()
{
    var_0 = _ID42407::_ID16300( "h2_particulate_pcloud" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42237::_ID26402();
    }

    var_clear_2
    var_clear_0
}

_ID50406()
{
    if ( !_func_02F( level._ID48653 ) )
        return;

    self endon( "death" );
    level._ID48653 endon( "death" );
    var_0 = -260;
    var_1 = 1524;

    for (;;)
    {
        var_2 = _func_11F( self._ID65 );
        var_3 = self._ID740 + var_2 * var_0;

        if ( _func_0F3( self._ID740, level._ID48653._ID740 ) < var_1 )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "player_loses_control_of_uaz" );
    level._ID46591 = _func_03D();
}

_ID50327()
{
    _ID42237::_ID14413( "c130_takeoff" );
    var_0 = _func_1A1( "sound_engine_left", "script_noteworthy" );
    var_1 = _func_1A1( "sound_engine_right", "script_noteworthy" );
    var_2 = _func_1A1( "sound_c130_center", "script_noteworthy" );
    var_0 _meth_807C( "veh_c130_left_engine_loop" );
    var_1 _meth_807C( "veh_c130_right_engine_loop" );
    var_2 _meth_807C( "veh_c130_main_loop" );
}

_ID43580()
{
    _ID42237::_ID14413( "obj_ride" );

    if ( _unknown_2390() )
    {
        level._ID18342 notify( "reaction_end" );
        level._ID18342 notify( "stop_hunt" );
        level._ID18342 _meth_8270();
        level._ID18342 _meth_826D();
        var_0 = _func_1A1( "littlebird_ride_start", "targetname" );
        level._ID18342 _meth_828D( 40, 25, 25 );
        level._ID18342 thread _ID42411::_ID40218( var_0 );
    }

    _ID42237::_ID14413( "littlebird_stage1" );

    if ( !_unknown_23D5() )
    {
        var_1 = _func_1A1( "littlebird_ride_respawn", "targetname" );
        var_2 = _func_1A1( "littlebird", "targetname" );
        level._ID18342 = var_2 maps\boneyard_code::_ID51568( var_1 );
    }

    level._ID18342 _ID42411::_ID16988();
    var_3 = _func_1AB( level._ID18342, 5000, 1000 );
    var_0 = _func_1A1( "littlebird_ride_stage1", "targetname" );
    level._ID18342 _meth_828D( 65, 25, 25 );
    level._ID18342 _meth_829E( 25, 25 );
    level._ID18342 thread maps\boneyard_code::_ID47263( var_0 );
    _ID42237::_ID14413( "blow_tanker_second" );
    var_4 = _func_1A2( "tanker_rocket_target", "targetname" );
    var_4 = _ID42407::_ID3311( var_4 );
    level._ID18342 thread maps\boneyard_code::_ID14269( var_4, var_4.size );
    _ID42237::_ID14413( "blow_wing" );
    var_4 = _func_1A2( "tanker_rocket_target_2", "targetname" );
    var_4 = _ID42407::_ID3311( var_4 );
    level._ID18342 thread maps\boneyard_code::_ID14269( var_4, var_4.size );
}

_ID49946()
{
    level endon( "ride_uaz_nodeath" );
    self._ID53760 = 0;

    for (;;)
    {
        self waittill( "damage",  var_1, var_0  );

        if ( !_func_02F( level._ID50210 ) || var_1 != level._ID50210 )
            continue;

        self._ID53760 = self._ID53760 + var_0;

        if ( self._ID53760 > 37000 )
            break;
    }

    _ID42411::_ID16987();
    _ID42411::_ID14749();
    wait 1;
    level._ID794 _meth_8058();
}

_ID45128()
{
    wait 10.1;
    level._ID48048 _meth_85BD( 6, 0.25, 0.25 );
}

_ID51167()
{
    wait 6.3;
    level._ID48679 _meth_85BD( 6, 0.5, 0.5 );
    level._ID48679._ID1278 = 43.5;
    wait 0.5;
    level._ID48679 _meth_85BD( 2, 1.5, 1 );
    wait 0.5;
    level._ID48679._ID1278 = 45;
    level._ID48679 _meth_85BD( 2, 2, 3 );
}

_ID48615()
{
    wait 11.3;
    level._ID50821 _meth_85BD( 5, 0.35, 0.35 );
    wait 0.5;
    level._ID50821 _meth_85BD( 2, 2, 3 );
    wait 4;
    level._ID48653._ID1278 = 60;
    wait 2;
    level._ID48653._ID1278 = 100;
}

update_first_suburban_minigun()
{
    wait 2;
    level.ai_minivan_2._ID1278 = 36;
    wait 4;
    var_0 = ( 0, 0, 200 );
    var_1 = ( 10702, 2047, -110 );
    level.ai_minivan_2 _meth_823B( var_0, ( 0, 0, 0 ), var_1 );
}

update_rollover_truck()
{
    wait 34.8;
    var_0 = ( 0, -105, 95 );
    var_1 = ( 29631, -6485, -102 );
    level.rollovertruck _meth_823B( var_0, ( 0, 0, 0 ), var_1 );
}

_ID50476()
{
    level._ID794 endon( "death" );
    _ID42237::_ID14413( "uaz_first_friction_edit" );
    level._ID48653 _meth_85BD( 4, 0.7, 1 );
    _ID42237::_ID14413( "uaz_drive" );
    level._ID48653 _meth_85BD( 2, 1.25, 3 );
    _ID42237::_ID14413( "blow_tanker_first" );
    thread _unknown_2D20();
    thread _unknown_2D2B();
    thread _unknown_2D58();
    thread _unknown_2D6E();
    level._ID48653 _meth_85BD( 0.2, 0.2, 1 );
    wait 0.6;
    level._ID48653._ID1278 = 20;
    level._ID48653 _meth_85BD( 2, 1.25, 3 );
    wait 1.3;
    level._ID48653._ID1278 = 100;
    _ID42237::_ID14413( "uaz_second_friction_edit" );
    level._ID48653 _meth_85BD( 1, 0.8, 0.8 );
    wait 0.8;
    level._ID48653 _meth_85BD( 2, 1.25, 3 );
    _ID42237::_ID14413( "uaz_third_friction_edit" );
    level._ID48653 _meth_85BD( 2, 0.7, 0.7 );
    wait 0.6;
    level._ID48653._ID1278 = 40;
    level._ID48653 _meth_85BD( 2, 0.65, 0.65 );
    wait 0.6;
    level._ID48653._ID1278 = 100;
    level._ID48653 _meth_85BD( 2, 1.25, 3 );
}

wait_for_bumps()
{
    wait 14;
    level._ID794 thread _unknown_303C( "right" );
    wait 12.8;
    level._ID794 thread _unknown_304B( "left" );
    wait 7.5;
    level._ID794 thread _unknown_305A( "right" );
    wait 6.2;
    level._ID794 thread _unknown_3069( "right" );
    wait 4.5;
    level._ID794 thread _unknown_3078( "right" );
}

_ID50693()
{
    _ID42237::_ID14402( "ride_uaz_arriving" );
    thread maps\boneyard_aud::_ID51895();
    thread _unknown_2E13();
    level._ID48653 = self;
    self _meth_804E( "tag_blood" );
    self _meth_804E( "TAG_BLOOD_steering_wheel" );
    thread maps\boneyard_code::_ID52997();
    thread maps\boneyard_code::_ID47015();
    thread _unknown_2F5E();
    thread _unknown_2F6C();
    thread _unknown_2F97();
    thread _unknown_2EA9();
    self _meth_823C();
    self._ID11584 = 1;
    _ID42237::_ID14413( "wait_for_player" );
    _ID42411::_ID40066( "hide_attack_forward" );
    _ID42237::_ID14413( "uaz_drive" );
    level._ID28543 _ID42407::_ID32352( 1 );
    level._ID28543 _ID42407::_ID2286();
    level._ID28543 notify( "stop tracking" );
    level._ID28543 notify( "killanimscript" );
    level._ID28543._ID24817 = 1;
    var_0 = level._ID28543 _ID42407::_ID16120( "boneyard_jeep_ride_price" );
    level._ID48653 thread _ID42259::_ID3111( level._ID28543, "boneyard_jeep_ride_price", "tag_guy0" );
    level._ID48653 thread _unknown_2F60();
    level._ID48653._ID11783 notify( "newanim" );
    level._ID48653._ID11783 _ID42407::_ID3136();
    level._ID48653._ID29965 = _ID42237::_ID3321( level._ID48653._ID29965, level._ID48653._ID11783 );
    level._ID48653 thread _ID42259::_ID3111( level._ID48653._ID11783, "jeep_ride_driver", "tag_driver" );
    thread maps\boneyard_code::ride_uaz_vehicle();
    thread maps\boneyard_code::ride_global_shake();
    thread maps\boneyard_code::_ID49446();
    _ID42237::_ID14402( "littlebird_stage1" );
    _ID42237::_ID14413( "uaz_mounted" );
    wait 2;
    _ID42237::_ID14413( "uaz_player_in_control" );
    self _meth_823D();
}

_ID46564()
{
    level endon( "uaz_mounted" );
    _ID42237::_ID14413( "uaz_mount_end" );
    _func_034( "ui_deadquote", &"BONEYARD_DEADQUOTE_MOUNT" );
    _ID42407::_ID23778();
}

_ID47710()
{
    level endon( "uaz_park" );
    level endon( "uaz_park_crash" );
    _ID42237::_ID14413( "uaz_player_in_control" );
    thread _unknown_309B();

    if ( _func_02F( level._ID54206 ) )
        level._ID54206 _meth_80B7();

    var_0 = 15000;

    for (;;)
    {
        self waittill( "veh_jolt",  var_1  );
        var_2 = _func_0C3( var_1[0] ) + _func_0C3( var_1[1] ) + _func_0C3( var_1[2] );

        if ( var_2 > var_0 )
            break;
    }

    thread maps\boneyard_code::ride_uaz_crash_player_death();
    _ID42411::_ID16987();
    _ID42411::_ID14749();
    wait 1;
}

_ID52794()
{
    _ID42237::_ID14413( "uaz_force_crash" );
    thread maps\boneyard_code::ride_uaz_crash_player_death();
    _ID42411::_ID16987();
    _ID42411::_ID14749();
}

_ID48498()
{
    level endon( "uaz_park" );
    level endon( "uaz_park_crash" );
    _ID42237::_ID14413( "c130_takeoff_missed" );
    _func_034( "ui_deadquote", &"BONEYARD_DEADQUOTE_TAKEOFF" );
    _ID42407::_ID23778();
}

_ID45512()
{
    self endon( "death" );
    level._ID44469 = self;
    self._ID680 = "Rook";
    _ID42407::_ID10949();
    thread _ID42407::_ID22746();
    self._ID3189 = "rook";
    thread _unknown_31A5();
    _ID42237::_ID14413( "uaz_driver_mount" );
    _ID42237::_ID14388( "can_save" );
    _ID42237::_ID14413( "ride_littlebird_dodge" );
    level._ID48653 thread _ID42407::_ID17584( self, level._ID48653 );
    self waittill( "boarding_vehicle" );
    _ID42407::_ID17509();
    _ID42407::_ID14403( "ride_enemy_vehicles_spawn", 1 );
    _ID42237::_ID14413( "uaz_driver_dead" );
    self _meth_80A1( "scn_bone_headshot" );
    _func_157( _ID42237::_ID16299( "blood" ), self, "tag_origin" );
    thread _unknown_31D7();
    wait 0.3;
    level._ID48653 _meth_8051( "tag_blood" );
    level._ID48653 _meth_8051( "TAG_BLOOD_steering_wheel" );
}

_ID51247()
{
    self notify( "newanim" );
    _ID42407::_ID3136();
    level._ID48653._ID29965 = _ID42237::_ID3321( level._ID48653._ID29965, self );
    var_0 = level._ID48653 _meth_818C( "tag_driver" );
    var_1 = level._ID48653 _meth_818D( "tag_driver" );
    level._ID48653 thread _ID42259::_ID3111( self, "boneyard_driver_death", "tag_driver" );
    var_2 = _ID42407::_ID16120( "boneyard_driver_death" );
    var_3 = _func_067( var_2 );
    wait(var_3);
    level._ID48653 thread _ID42259::_ID3111( self, "boneyard_driver_death_pushed", "tag_driver" );
    var_2 = _ID42407::_ID16120( "boneyard_driver_death_pushed" );
    var_3 = _func_067( var_2 );
    wait(var_3 - 0.15);
    self _meth_8155( var_2, 1, 0, 0 );
}

_ID48454()
{
    _ID42237::_ID14413( "obj_ride" );
    wait 1;
    self waittill( "unload" );

    if ( !_func_02F( level._ID44132 ) && _func_1A7( level._ID44132 ) && !_unknown_29D0() )
    {
        _ID42407::_ID17509();
        self._ID1302 = self._ID949;
        _ID42407::_ID17508();
    }

    self waittill( "jumpedout" );
    _ID42237::_ID14402( "ride_littlebird_dodge" );

    if ( _func_02F( level._ID44132 ) && _func_1A7( level._ID44132 ) )
    {
        var_0 = _func_06A( "script_origin", level._ID44132._ID740 + ( 0, 0, 128 ) );
        var_0 _meth_8053( level._ID44132 );
        self _meth_8173( var_0, 1 );
        var_1 = _func_1A9( level._ID44132, 20000, 512 );

        if ( !_ID42237::_ID14385( "uaz_driver_mount" ) )
            self waittill( "missile_fire" );

        self _meth_8174();
    }

    if ( _unknown_2A42() )
    {
        var_0 = _func_06A( "script_origin", level._ID18342._ID740 + ( 0, 0, -128 ) );
        var_0 _meth_8053( level._ID18342 );
        self _meth_8173( var_0, 1 );

        if ( !_ID42237::_ID14385( "uaz_driver_mount" ) )
            self waittill( "missile_fire" );

        self _meth_8174();
    }

    self._ID7._ID30103 = 0;
}

_ID46087()
{
    var_0 = _unknown_33E1( "tanker_first", 1 );
    _ID42237::_ID14413( "blow_tanker_first" );
    wait 0.4;
    var_1 = _func_1A1( "blow_tanker_first_rocket", "targetname" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );
    var_3 = _func_1C8( "rpg_straight", var_1._ID740, var_2._ID740 );
    var_4 = [];
    var_4[_func_128( "MOD_PROJECTILE_SPLASH" )] = 1;
    var_4[_func_128( "MOD_PROJECTILE" )] = 1;
    var_0 maps\boneyard_code::_ID46158( var_4 );
    level._ID794 _meth_80F6();
    var_0 thread _ID42407::_ID10514();
    var_0 waittill( "destroyed" );
    level._ID794 _meth_80F7();
    var_0 = _unknown_344E( "tanker_second", 1 );
    var_0 maps\boneyard_code::_ID46158( var_4 );
    var_0 thread _ID42407::_ID10514();
}

_ID50889( var_0, var_1 )
{
    var_2 = _func_1A2( var_0, "script_noteworthy" );
    var_3 = undefined;
    var_4 = var_2;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_3 = var_4[var_5];

        if ( var_3._ID170 == "script_model" )
            break;
    }

    var_clear_1
    var_clear_0

    if ( _func_02F( var_1 ) )
        var_3 _ID42407::_ID10510();

    return var_3;
}

_ID47465()
{
    _ID42475::_ID34575( "start_ride_end_checkpoint" );
    var_0 = _func_1A2( "ride_vehicle", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_unknown_3034 );
    var_1 = _func_1F2( "ride_end_start", "script_noteworthy" );
    var_2 = _func_1A1( "ride_uaz", "script_noteworthy" );
    level._ID48653 = var_2 maps\boneyard_code::_ID51568( var_1 );
    var_1 = _func_1F2( "ride_end_pickup_start", "targetname" );
    var_2 = _func_1A1( "runway_pickup", "targetname" );
    var_2 maps\boneyard_code::_ID51568( var_1 );
    var_1 = _func_1F2( "ride_end_suburban_start", "script_noteworthy" );
    var_2 = _func_1A1( "runway_suburban", "targetname" );
    var_2 maps\boneyard_code::_ID51568( var_1 );
    _ID42237::_ID14402( "uaz_mounted" );
    level._ID54206 _meth_80B7();
    _ID42237::_ID14413( "uaz_driver_dead" );
}
#using_animtree("player");

play_bump_anim( var_0 )
{
    if ( var_0 == "right" )
    {
        level._ID794 _meth_84C7( "h2_boneyard_player_bump_reaction_left_add" );
        wait(_func_067( %h2_boneyard_player_bump_reaction_left_add ));
    }
    else
    {
        level._ID794 _meth_84C7( "h2_boneyard_player_bump_reaction_right_add" );
        wait(_func_067( %h2_boneyard_player_bump_reaction_right_add ));
    }

    level._ID794 _meth_84C7( 0 );
}

plane_cull_distance()
{
    _ID42237::_ID14413( "uaz_park" );
    wait 1;
    _func_08E( 1000 );
}