// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID54498::main();
    _ID43529::main();
    _ID52246::main();
    _ID42323::main();
    maps\boneyard_anim::main();
    maps\boneyard_lighting::main();
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( -5873.6, -4813.4, 181.9 );
    var_1 = ( 15.6, 55.6, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "boneyard", 1 );
    _ID42407::_ID14689( "boneyard", 1 );
    level.player lightset( "boneyard" );
    var_2 = getent( "intro_btr80", "script_noteworthy" );
    var_2 _ID42407::_ID1947( ::_ID49870 );
    var_2.origin = ( -5160, -2920, 22.4 );
    var_2._ID11577 = 1;
    var_3 = var_2 _ID42407::_ID35192();
}

_ID49870()
{
    waittillframeend;
    _ID42411::_ID14749();
}
