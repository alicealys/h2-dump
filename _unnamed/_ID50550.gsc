// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID42231::_ID10505( "toy_firehydrant", "tag_origin", 250, undefined, 32, "no_melee" );
    _ID42231::_ID10544( 11 );
    _ID42231::_ID10548( undefined, undefined, 500, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_cap", "fx/props/firehydrant_leak", 0.1 );
    _ID42231::_ID10532( "firehydrant_spray_loop" );
    _ID42231::_ID10528( 12, 0.2 );
    _ID42231::_ID10548( undefined, undefined, 800, undefined, 5, "no_melee" );
    _ID42231::_ID10517( "tag_fx", "fx/props/firehydrant_exp", 0 );
    _ID42231::_ID10517( "tag_fx", "fx/props/firehydrant_spray_10sec", 0 );
    _ID42231::_ID10541( "firehydrant_burst" );
    _ID42231::_ID10512( 17000, 18000, 96, 32, 48 );
    _ID42231::_ID10548( undefined, "com_firehydrant_dest", undefined, undefined, "no_melee" );
    _ID42231::_ID10535( "tag_fx", "com_firehydrant_dam", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    _ID42231::_ID10535( "tag_cap", "com_firehydrant_cap", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
