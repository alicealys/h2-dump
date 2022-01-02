// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

main()
{
    _ID42231::_ID10505( "toy_ceiling_fan_blades02", "tag_origin", 0, undefined, 32 );
    _ID42231::_ID10493( %me_fanceil1_spin, #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin" );
    _ID42231::_ID10548( "tag_origin", "h2_us_ceiling_fan_blades_02_animated", 150 );
    _ID42231::_ID10493( %me_fanceil1_spin_stop, #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin_stop" );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/h2_us_ceiling_fan_02_dest" );
    _ID42231::_ID10541( "ceiling_fan_blades" );
    _ID42231::_ID10512( 1000, 2000, 32, 5, 32 );
    _ID42231::_ID10548( undefined, "h2_us_ceiling_fan_blades_02_dest_animated", undefined, undefined, "no_melee" );
    _ID42231::_ID10535( "tag_fx", undefined, 150, undefined, undefined, undefined, 1.0 );
}
