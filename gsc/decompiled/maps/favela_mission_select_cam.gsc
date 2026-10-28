// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    common_scripts\utility::flag_init( "player_approaching_final_stairs" );
    common_scripts\utility::flag_init( "ending_sequence_ready" );
    common_scripts\utility::flag_init( "ending_sequence_started" );
    common_scripts\utility::flag_init( "ending_sequence_dialog" );
    _id_AB15::init();
    _id_B61E::main();
    _id_C8A2::main();
    _id_B183::main();
    _id_CBBD::main();
    maps\favela_anim::main();
    _id_C8D3::main();
    maps\_load::set_player_viewhand_model( "viewhands_player_tf141_favela" );
    maps\_load::main();
    maps\favela_lighting::main();
    thread _id_C05B();
    return 1;
}

_id_C05B()
{
    getent( "favela_enter_player_clip", "targetname" ) delete();
    thread maps\favela::_id_D3A9();
    var_0 = spawn( "script_origin", ( -2912.7, 99.8, 620 ) );
    var_0.angles = ( -10.5, -125.6, 0 );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level maps\_utility::vision_set_fog_changes( "favela_shanty", 0 );
    level.player maps\_utility::vision_set_fog_changes( "favela_shanty", 0 );
    level.player lightset( "favela_shanty" );
    return;
}
