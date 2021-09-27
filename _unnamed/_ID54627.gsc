// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID54348( var_0 )
{
    _ID42231::_ID10505( "toy_oxygen_tank_" + var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    _ID42231::_ID10528( 12, 0.2, 64, "allies" );
    _ID42231::_ID10532( "oxygen_tank_leak_loop" );
    _ID42231::_ID10517( "tag_cap", "fx/props/oxygen_tank" + var_0 + "_cap" );
    _ID42231::_ID10531( "tag_cap", "fx/distortion/oxygen_tank_leak", 0.4 );
    _ID42231::_ID10548( undefined, "machinery_oxygen_tank" + var_0 + "_dam", 300, undefined, 32, "no_melee" );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/oxygen_tank" + var_0 + "_explosion", 0 );
    _ID42231::_ID10541( "oxygen_tank_explode" );
    _ID42231::_ID10512( 7000, 8000, 150, 16, 150 );
    _ID42231::_ID10548( undefined, "machinery_oxygen_tank" + var_0 + "_des", undefined, undefined, "no_melee" );
}
