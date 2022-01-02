// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

main()
{
    _ID42231::_ID10505( "toy_wall_fan", "tag_swivel", 0, undefined, 32 );
    _ID42231::_ID10493( %wall_fan_rotate, #animtree, "setanimknob", undefined, undefined, "wall_fan_rotate" );
    _ID42231::_ID10532( "wall_fan_fanning" );
    _ID42231::_ID10548( "tag_wobble", "cs_wallfan1", 150 );
    _ID42231::_ID10493( %wall_fan_stop, #animtree, "setanimknob", undefined, undefined, "wall_fan_wobble" );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/wallfan_explosion_dmg" );
    _ID42231::_ID10541( "wall_fan_sparks" );
    _ID42231::_ID10548( "tag_wobble", "cs_wallfan1", 150, undefined, "no_melee" );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/wallfan_explosion_des" );
    _ID42231::_ID10541( "wall_fan_break" );
    _ID42231::_ID10548( undefined, "cs_wallfan1_dmg", undefined, undefined, "no_melee" );
}
