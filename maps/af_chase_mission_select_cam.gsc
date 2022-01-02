// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID48548::main();
    _ID52272::main();
    _ID54615::main();
    _ID42407::_ID10126( maps\af_chase::_ID47474 );
    maps\af_chase_knife_fight::_ID53376();
    maps\af_chase::_ID53732();
    _ID42323::main();
    maps\af_chase_anim::_ID43266();
    _ID48270::main();
    _ID48669::_ID52537( "viewhands_player_tf141" );
    _ID45655::main();
    var_0 = getentarray( "script_vehicle_zodiac_player", "classname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, _ID48669::_ID50469 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID48364 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID44200 );
    _ID49243();
    return 1;
}

_ID49243()
{
    var_0 = spawn( "script_origin", ( -17560.4, -25627.9, 372.9 ) );
    var_0.angles = ( 1.8, -34.9, 0 );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    level.player lerpfov( 70, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "af_chase_caves_end", 0 );
    level.player _ID42407::_ID40561( "af_chase_caves_end", 0 );
    level.player lightset( "af_chase_caves_end" );
    return;
}
