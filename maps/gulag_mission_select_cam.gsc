// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID46856::_ID616();
    _ID48864::_ID616();
    _ID50975::_ID616();
    _ID51081::_ID616();
    _ID49653::_ID616();
    maps\gulag_anim::_ID616();
    _ID42542::_ID616( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_1" );
    _ID42542::_ID616( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_2" );
    _ID42323::_ID616();
    var_0 = _func_1A1( "cb2_stagelight", "targetname" );
    var_0 notify( "staging_on" );
    _ID43797::_ID521();
    maps\gulag_aud::_ID616();
    maps\gulag_lighting::_ID616();
    _ID42337::_ID616( level._ID805 );
    thread _unknown_0079();
    return 1;
}

_ID49243()
{
    var_0 = _func_06A( "script_origin", ( 5036.8, 2152.1, 3979.1 ) );
    var_0._ID65 = ( 19.9, -135.5, 0 );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    level._ID794 _meth_8032( 85, 0.1 );
    level._ID794._ID511 = 1;
    _func_0DB( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "gulag_intro_flight", 0 );
    level._ID794 _ID42407::_ID40561( "gulag_intro_flight", 0 );
    level._ID794 _meth_83CD( "gulag_intro_flight" );
    _ID42237::_ID14400( "castle_tower_event" );
    _ID42407::_ID10226( 1, _ID42234::_ID13611, "main_building" );
    thread maps\gulag_code::_ID50384( "castle_tower_event", "castletower_2" );
    thread _ID42407::_ID14403( "castle_tower_event", 2 );
    _unknown_0148();
    return;
}

_ID47287()
{
    var_0 = _func_1A2( "intro_heli_1", "targetname" );
    var_1 = [];
    var_2 = 0;
    var_3 = [];

    if ( _func_039( "mscam_gulag_chopper_one" ) == "1" )
        var_3[var_3.size] = var_0[0];

    if ( _func_039( "mscam_gulag_chopper_two" ) == "1" )
        var_3[var_3.size] = var_0[1];

    if ( _func_039( "mscam_gulag_chopper_three" ) == "1" )
        var_3[var_3.size] = var_0[2];

    var_4 = level._ID30895["littlebird"]["spawn"];
    var_5 = var_3;

    for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
    {
        var_6 = var_5[var_8];
        var_7 = var_6 _ID42407::_ID35192();
        var_7 thread _ID42411::_ID17021();
        var_7 thread maps\gulag::_ID46411( var_4[var_2] );
        var_1[var_1.size] = var_7;
        var_2++;
    }

    var_clear_3
    var_clear_0
    _ID42237::_ID3350( var_1, _ID42411::_ID16988 );
    _ID42237::_ID3350( var_1, maps\gulag_code::_ID54099 );
    var_9 = var_1;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_7 = var_9[var_10];
        var_7 thread maps\gulag_code::_ID45124();
        var_7 thread maps\gulag_code::_ID52832();

        if ( !_func_125( var_7._ID170, "armed" ) )
            continue;

        level._ID47232 = var_7;
    }

    var_clear_1
    var_clear_0
    level._ID50956 = var_1;
}