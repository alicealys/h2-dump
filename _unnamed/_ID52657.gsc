// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("script_model");

main()
{
    level._ID30900["hiding_door"] = #animtree;
    level._ID30904["hiding_door"] = "com_door_01_handleleft";
    level._ID30895["hiding_door"]["close"] = %doorpeek_close_door;
    level._ID30895["hiding_door"]["death_1"] = %doorpeek_deatha_door;
    level._ID30895["hiding_door"]["death_2"] = %doorpeek_deathb_door;
    level._ID30895["hiding_door"]["fire_1"] = %doorpeek_firea_door;
    level._ID30895["hiding_door"]["fire_2"] = %doorpeek_fireb_door;
    level._ID30895["hiding_door"]["fire_3"] = %doorpeek_firec_door;
    level._ID30895["hiding_door"]["peek"] = %doorpeek_idle_door;
    level._ID30895["hiding_door"]["grenade"] = %doorpeek_grenade_door;
    level._ID30895["hiding_door"]["idle"][0] = %doorpeek_idle_door;
    level._ID30895["hiding_door"]["jump"] = %doorpeek_jump_door;
    level._ID30895["hiding_door"]["kick"] = %doorpeek_kick_door;
    level._ID30895["hiding_door"]["open"] = %doorpeek_open_door;
    precachemodel( level._ID30904["hiding_door"] );
    _ID42259::_ID2069( "hiding_door", "sound door death", "any", "scn_doorpeek_door_open_death" );
    _ID42259::_ID2069( "hiding_door", "sound door open", "any", "scn_doorpeek_door_open" );
    _ID42259::_ID2069( "hiding_door", "sound door slam", "any", "scn_doorpeek_door_slam" );
    _ID49187();
    thread _ID25064();
}
#using_animtree("generic_human");

_ID49187()
{
    level._ID30895["hiding_door_guy"]["close"] = %doorpeek_close;
    level._ID30895["hiding_door_guy"]["death_1"] = %doorpeek_deatha;
    level._ID30895["hiding_door_guy"]["death_2"] = %doorpeek_deathb;
    level._ID30895["hiding_door_guy"]["fire_1"] = %doorpeek_firea;
    level._ID30895["hiding_door_guy"]["fire_2"] = %doorpeek_fireb;
    level._ID30895["hiding_door_guy"]["fire_3"] = %doorpeek_firec;
    level._ID30895["hiding_door_guy"]["peek"] = %doorpeek_idle;
    level._ID30895["hiding_door_guy"]["grenade"] = %doorpeek_grenade;
    level._ID30895["hiding_door_guy"]["idle"][0] = %doorpeek_idle;
    level._ID30895["hiding_door_guy"]["jump"] = %doorpeek_jump;
    level._ID30895["hiding_door_guy"]["kick"] = %doorpeek_kick;
    level._ID30895["hiding_door_guy"]["open"] = %doorpeek_open;
}

_ID25064()
{
    wait 0.05;
    _ID42259::_ID2058( "hiding_door_guy", "grenade_throw", _ID45285::_ID54272 );
}
