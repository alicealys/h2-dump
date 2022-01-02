// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID46856::main();
    _ID48864::main();
    _ID50975::main();
    _ID51081::main();
    _ID49653::main();
    maps\gulag_anim::main();
    _ID42542::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_1" );
    _ID42542::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_2" );
    _ID42323::main();
    var_0 = getent( "cb2_stagelight", "targetname" );
    var_0 notify( "staging_on" );
    _ID43797::init();
    maps\gulag_aud::main();
    maps\gulag_lighting::main();
    _ID42337::main( level._ID805 );
    thread _ID49243();
    return 1;
}

_ID49243()
{
    var_0 = spawn( "script_origin", ( 5036.8, 2152.1, 3979.1 ) );
    var_0.angles = ( 19.9, -135.5, 0 );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "gulag_intro_flight", 0 );
    level.player _ID42407::_ID40561( "gulag_intro_flight", 0 );
    level.player lightset( "gulag_intro_flight" );
    _ID42237::_ID14400( "castle_tower_event" );
    _ID42407::_ID10226( 1, _ID42234::_ID13611, "main_building" );
    thread maps\gulag_code::_ID50384( "castle_tower_event", "castletower_2" );
    thread _ID42407::_ID14403( "castle_tower_event", 2 );
    _ID47287();
    return;
}

_ID47287()
{
    var_0 = getentarray( "intro_heli_1", "targetname" );
    var_1 = [];
    var_2 = 0;
    var_3 = [];

    if ( getdvar( "mscam_gulag_chopper_one" ) == "1" )
        var_3[var_3.size] = var_0[0];

    if ( getdvar( "mscam_gulag_chopper_two" ) == "1" )
        var_3[var_3.size] = var_0[1];

    if ( getdvar( "mscam_gulag_chopper_three" ) == "1" )
        var_3[var_3.size] = var_0[2];

    var_4 = level._ID30895["littlebird"]["spawn"];

    foreach ( var_6 in var_3 )
    {
        var_7 = var_6 _ID42407::_ID35192();
        var_7 thread _ID42411::_ID17021();
        var_7 thread maps\gulag::_ID46411( var_4[var_2] );
        var_1[var_1.size] = var_7;
        var_2++;
    }

    _ID42237::_ID3350( var_1, _ID42411::_ID16988 );
    _ID42237::_ID3350( var_1, maps\gulag_code::_ID54099 );

    foreach ( var_7 in var_1 )
    {
        var_7 thread maps\gulag_code::_ID45124();
        var_7 thread maps\gulag_code::_ID52832();

        if ( !issubstr( var_7.classname, "armed" ) )
            continue;

        level._ID47232 = var_7;
    }

    level._ID50956 = var_1;
}
