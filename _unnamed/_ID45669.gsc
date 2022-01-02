// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

main()
{
    _ID42231::_ID10505( "toy_ceiling_fan", "tag_origin", 0, undefined, 32 );
    _ID42231::_ID10493( %me_fanceil1_spin, #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin" );
    _ID42231::_ID10548( "tag_origin", "me_fanceil1", 150 );
    _ID42231::_ID10493( %me_fanceil1_spin_stop, #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin_stop" );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/ceiling_fan_explosion" );
    _ID42231::_ID10541( "ceiling_fan_sparks" );
    _ID42231::_ID10512( 1000, 2000, 32, 5, 32 );
    _ID42231::_ID10548( undefined, "me_fanceil1_des", undefined, undefined, "no_melee" );
    _ID42231::_ID10535( "tag_fx", undefined, 150, undefined, undefined, undefined, 1.0 );
}
