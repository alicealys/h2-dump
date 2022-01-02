// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

main()
{
    _ID42231::_ID10505( "toy_airconditioner", "tag_origin", 0, undefined, 32 );
    _ID42231::_ID10493( %ex_airconditioner_fan, #animtree, "setanimknob", undefined, undefined, "ex_airconditioner_fan" );
    _ID42231::_ID10532( "airconditioner_running_loop" );
    _ID42231::_ID10548( "tag_origin", "com_ex_airconditioner", 300 );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/airconditioner_ex_explode", undefined );
    _ID42231::_ID10541( "airconditioner_burst" );
    _ID42231::_ID10512( 1000, 2000, 32, 32, 48 );
    _ID42231::_ID10548( undefined, "com_ex_airconditioner_dam", undefined, undefined, "no_melee" );
    _ID42231::_ID10535( "tag_fx", "com_ex_airconditioner_fan", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
