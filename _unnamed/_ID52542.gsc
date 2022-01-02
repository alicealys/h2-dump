// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

main()
{
    _ID42231::_ID10505( "toy_light_ceiling_fluorescent_single", "tag_origin", 150, undefined, 32, "no_melee" );
    _ID42231::_ID10544( 15 );
    _ID42231::_ID10517( "tag_fx", "fx/misc/light_fluorescent_single_blowout_runner" );
    _ID42231::_ID10517( "tag_swing_center_fx", "fx/misc/light_blowout_swinging_runner" );
    _ID42231::_ID10517( "tag_swing_center_fx_far", "fx/misc/light_blowout_swinging_runner" );
    _ID42231::_ID10512( 20, 2000, 64, 40, 80 );
    _ID42231::_ID10493( %light_fluorescent_single_swing, #animtree, "setanimknob", undefined, 0, "light_fluorescent_single_swing" );
    _ID42231::_ID10541( "fluorescent_light_fall", undefined, 0 );
    _ID42231::_ID10541( "fluorescent_light_bulb", undefined, 0 );
    _ID42231::_ID10493( %light_fluorescent_single_swing_02, #animtree, "setanimknob", undefined, 1, "light_fluorescent_single_swing_02" );
    _ID42231::_ID10541( "fluorescent_light_hinge", undefined, 1 );
    _ID42231::_ID10541( "fluorescent_light_bulb", undefined, 1 );
    _ID42231::_ID10493( %light_fluorescent_single_swing_03, #animtree, "setanimknob", undefined, 2, "light_fluorescent_single_swing_03" );
    _ID42231::_ID10541( "fluorescent_light_fall", undefined, 2 );
    _ID42231::_ID10541( "fluorescent_light_bulb", undefined, 2 );
    _ID42231::_ID10493( %light_fluorescent_single_null, #animtree, "setanimknob", undefined, 3, "light_fluorescent_single_null" );
    _ID42231::_ID10548( undefined, "me_lightfluohang_single_destroyed", undefined, undefined, "no_melee" );
}
