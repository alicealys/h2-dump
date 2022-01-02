// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID42237::_ID14400( "player_approaching_final_stairs" );
    _ID42237::_ID14400( "ending_sequence_ready" );
    _ID42237::_ID14400( "ending_sequence_started" );
    _ID42237::_ID14400( "ending_sequence_dialog" );
    _ID43797::init();
    _ID46622::main();
    _ID51362::main();
    _ID45443::main();
    _ID52157::main();
    maps\favela_anim::main();
    _ID51411::main();
    _ID42323::_ID32417( "viewhands_player_tf141_favela" );
    _ID42323::main();
    maps\favela_lighting::main();
    thread _ID49243();
    return 1;
}

_ID49243()
{
    getent( "favela_enter_player_clip", "targetname" ) delete();
    thread maps\favela::_ID54185();
    var_0 = spawn( "script_origin", ( -2912.7, 99.8, 620 ) );
    var_0.angles = ( -10.5, -125.6, 0 );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "favela_shanty", 0 );
    level.player _ID42407::_ID40561( "favela_shanty", 0 );
    level.player lightset( "favela_shanty" );
    return;
}
