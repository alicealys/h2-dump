// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    maps\dcburning::_ID45768();
    _ID46668::main();
    _ID54230::main( "h2_vehicle_blackhawk_minigun_hero_exterior", undefined, "script_vehicle_blackhawk_minigun" );
    maps\dc_crashsite::main();
    _ID46630::main();
    maps\dcburning_lighting::main();
    _ID44311::main();
    _ID54152::main();
    _ID42323::main();
    maps\dcburning_anim::main();
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( -22034, 1240, -268 );
    var_1 = ( -6.2, 96.5, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "dcburning_trenches", 0 );
    level.player _ID42407::_ID40561( "dcburning_trenches", 0 );
    level.player lightset( "dcburning" );
}
