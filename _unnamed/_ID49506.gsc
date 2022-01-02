// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    thread _ID19637();
}

_ID19637()
{
    waitframe;
    _ID42259::_ID2075( "price", "price_climb_start", "scn_cliffhanger_price_beginclimb" );
    _ID42259::_ID2075( "price", "price_climb_mid", "scn_cliffhanger_price_midclimb" );
    _ID42259::_ID2075( "price", "price_jump", "scn_cliffhanger_price_jump" );
    _ID42259::_ID2056( "price", "price_jump", "scn_cliffhanger_price_jump_dx", "scn_cliffhanger_price_jump_dx" );
    _ID42259::_ID2056( "price", "price_jump", "impact", "scn_cliffhanger_price_land" );
    _ID42259::_ID2075( "price", "hill_slide", "scn_cliffhanger_price_hillslide" );
    _ID42259::_ID2075( "price", "crash_rescue", "scn_cliffhanger_price_crash_rescue" );
    _ID42259::_ID2075( "price", "icepick_fight", "scn_cliffhanger_price_icepick_fight" );
    _ID42259::_ID2075( "snowmobile", "icepick_fight", "scn_cliffhanger_snowmobile_icepick_fight" );
    _ID42259::_ID2075( "price", "locker_brawl", "scn_cliffhanger_price_locker_fight" );
    _ID42259::_ID2075( "generic", "sleep_react", "scn_relaxed_guard_chair_fall" );
    _ID42259::_ID2075( "generic", "sleep_react_back", "scn_relaxed_guard_chair_fall" );
    _ID42259::_ID2075( "generic", "c4plant", "scn_cliffhanger_plant_c4" );
    _ID42259::_ID2075( "price", "climb_catch", "scn_cliffhanger_price_bigjump_slide" );
}
