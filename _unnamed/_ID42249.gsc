// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

_ID616()
{
    _ID42231::_ID10505( "toy_locker_double", "tag_origin", 150, undefined, 32, "no_melee" );
    _ID42231::_ID10493( %locker_broken_both_doors_1, #animtree, "setanimknob", undefined, 0, "locker_broken_both_doors_1" );
    _ID42231::_ID10517( "tag_fx", "fx/props/locker_double_des_02_right", undefined );
    _ID42231::_ID10541( "lockers_fast", undefined, 0 );
    _ID42231::_ID10493( %locker_broken_both_doors_2, #animtree, "setanimknob", undefined, 1, "locker_broken_both_doors_2" );
    _ID42231::_ID10517( "tag_fx", "fx/props/locker_double_des_01_left", undefined );
    _ID42231::_ID10541( "lockers_fast", undefined, 1 );
    _ID42231::_ID10493( %locker_broken_both_doors_4, #animtree, "setanimknob", undefined, 2, "locker_broken_both_doors_4" );
    _ID42231::_ID10517( "tag_fx", "fx/props/locker_double_des_03_both", undefined );
    _ID42231::_ID10541( "lockers_double", undefined, 2 );
    _ID42231::_ID10493( %locker_broken_door1_fast, #animtree, "setanimknob", undefined, 3, "locker_broken_door1_fast" );
    _ID42231::_ID10517( "tag_fx", "fx/props/locker_double_des_01_left", undefined );
    _ID42231::_ID10541( "lockers_fast", undefined, 3 );
    _ID42231::_ID10493( %locker_broken_door2_fast, #animtree, "setanimknob", undefined, 4, "locker_broken_door2_fast" );
    _ID42231::_ID10517( "tag_fx", "fx/props/locker_double_des_02_right", undefined );
    _ID42231::_ID10541( "lockers_fast", undefined, 4 );
    _ID42231::_ID10493( %locker_broken_both_doors_3, #animtree, "setanimknob", undefined, 5, "locker_broken_both_doors_3" );
    _ID42231::_ID10517( "tag_fx", "fx/misc/no_effect", undefined );
    _ID42231::_ID10541( "lockers_minor", undefined, 5 );
    _ID42231::_ID10493( %locker_broken_door1_slow, #animtree, "setanimknob", undefined, 6, "locker_broken_door1_slow" );
    _ID42231::_ID10517( "tag_fx", "fx/misc/no_effect", undefined );
    _ID42231::_ID10541( "lockers_minor", undefined, 6 );
    _ID42231::_ID10493( %locker_broken_door2_slow, #animtree, "setanimknob", undefined, 7, "locker_broken_door2_slow" );
    _ID42231::_ID10517( "tag_fx", "fx/misc/no_effect", undefined );
    _ID42231::_ID10541( "lockers_minor", undefined, 7 );
    _ID42231::_ID10548( undefined, "com_locker_double_destroyed", undefined, undefined, "no_melee" );
}
