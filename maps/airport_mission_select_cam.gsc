// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    maps\airport::_ID49693();
    maps\airport_challenge::_ID52260();
    _ID45908::main();
    _ID47439::main();
    _ID47204::main();
    _ID48878::main();
    _ID53660::main();
    maps\airport_anim::main();
    _ID42323::main();
    maps\airport_lighting::main();
    _ID42289::init();
    _ID42287::init();
    var_0 = getentarray( "script_model", "classname" );

    foreach ( var_2 in var_0 )
        var_2 hide();

    thread _ID49243();
}

_ID49243()
{
    var_0 = ( 5358.4, 2161.7, 308.9 );
    var_1 = ( 12.6, 161.5, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 95, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "airport", 0 );
    level.player _ID42407::_ID40561( "airport", 0 );
    level.player lightset( "airport" );
}
