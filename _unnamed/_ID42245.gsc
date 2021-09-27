// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

_ID38030( var_0 )
{
    _ID42231::_ID10505( "toy_chicken" + var_0, "tag_origin", 0, undefined, 32 );
    _ID42231::_ID10493( %chicken_cage_loop_01, #animtree, "setanimknob", undefined, 0, "chicken_cage_loop_01", 1.6 );
    _ID42231::_ID10493( %chicken_cage_loop_02, #animtree, "setanimknob", undefined, 1, "chicken_cage_loop_02", 1.6 );
    _ID42231::_ID10532( "animal_chicken_idle_loop" );
    _ID42231::_ID10548( "tag_origin", "chicken" + var_0, 25 );
    _ID42231::_ID10517( "tag_origin", "fx/props/chicken_exp" + var_0 );
    _ID42231::_ID10493( %chicken_cage_death, #animtree, "setanimknob", undefined, 0, "chicken_cage_death" );
    _ID42231::_ID10493( %chicken_cage_death_02, #animtree, "setanimknob", undefined, 1, "chicken_cage_death_02" );
    _ID42231::_ID10541( "animal_chicken_death" );
    _ID42231::_ID10548( undefined, "chicken" + var_0, undefined, undefined, "no_melee" );
}
