// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_AB15::init();
    _id_B342::main();
    _id_D0E9::main();
    _id_C028::main();
    maps\roadkill_anim::main();
    _id_B42D::main();
    common_scripts\utility::flag_init( "intro_started" );
    common_scripts\utility::flag_init( "ambush" );
    common_scripts\utility::flag_init( "roadkill_town_dialogue" );
    maps\_load::main();
    maps\roadkill_aud::main();
    maps\roadkill_lighting::main();
    common_scripts\utility::run_thread_on_targetname( "helper_model", maps\_utility::self_delete );
    thread maps\_introscreen::_id_B956( 2 );
    setsaveddvar( "sm_sunSampleSizeNear", "0.6" );
    thread _id_C05B();
    return 1;
}

_id_C05B()
{
    var_0 = spawn( "script_origin", ( -1864.8, -4774.4, 144.5 ) );
    var_0.angles = ( -5.8, 80.5, 0 );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level maps\_utility::vision_set_fog_changes( "roadkill", 0 );
    level.player maps\_utility::vision_set_fog_changes( "roadkill", 0 );
    level.player lightset( "roadkill" );
    return;
}
