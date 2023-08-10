// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_B708::main();
    _id_BEE0::main();
    _id_C71F::main();
    _id_C789::main();
    _id_C1F5::main();
    maps\gulag_anim::main();
    vehicle_scripts\_littlebird::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_1" );
    vehicle_scripts\_littlebird::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_2" );
    maps\_load::main();
    var_0 = getent( "cb2_stagelight", "targetname" );
    var_0 notify( "staging_on" );
    _id_AB15::init();
    maps\gulag_aud::main();
    maps\gulag_lighting::main();
    maps\_nightvision::main( level.players );
    thread _id_C05B();
    return 1;
}

_id_C05B()
{
    var_0 = spawn( "script_origin", ( 5036.8, 2152.1, 3979.1 ) );
    var_0.angles = ( 19.9, -135.5, 0 );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level maps\_utility::vision_set_fog_changes( "gulag_intro_flight", 0 );
    level.player maps\_utility::vision_set_fog_changes( "gulag_intro_flight", 0 );
    level.player lightset( "gulag_intro_flight" );
    common_scripts\utility::flag_init( "castle_tower_event" );
    maps\_utility::delaythread( 1, common_scripts\_exploder::exploder, "main_building" );
    thread maps\gulag_code::_id_C4D0( "castle_tower_event", "castletower_2" );
    thread maps\_utility::flag_set_delayed( "castle_tower_event", 2 );
    _id_B8B7();
    return;
}

_id_B8B7()
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

    var_4 = level.scr_anim["littlebird"]["spawn"];

    foreach ( var_6 in var_3 )
    {
        var_7 = var_6 maps\_utility::spawn_vehicle();
        var_7 thread maps\_vehicle::gopath();
        var_7 thread maps\gulag::_id_B54B( var_4[var_2] );
        var_1[var_1.size] = var_7;
        var_2++;
    }

    common_scripts\utility::array_thread( var_1, maps\_vehicle::godon );
    common_scripts\utility::array_thread( var_1, maps\gulag_code::_id_D353 );

    foreach ( var_7 in var_1 )
    {
        var_7 thread maps\gulag_code::_id_B044();
        var_7 thread maps\gulag_code::_id_CE60();

        if ( !issubstr( var_7.classname, "armed" ) )
            continue;

        level._id_B880 = var_7;
    }

    level._id_C70C = var_1;
}
