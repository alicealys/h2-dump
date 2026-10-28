// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    thread init_animsounds();
}

init_animsounds()
{
    waittillframeend;
    maps\_anim::addonstart_animsound( "price", "price_climb_start", "scn_cliffhanger_price_beginclimb" );
    maps\_anim::addonstart_animsound( "price", "price_climb_mid", "scn_cliffhanger_price_midclimb" );
    maps\_anim::addonstart_animsound( "price", "price_jump", "scn_cliffhanger_price_jump" );
    maps\_anim::addnotetrack_animsound( "price", "price_jump", "scn_cliffhanger_price_jump_dx", "scn_cliffhanger_price_jump_dx" );
    maps\_anim::addnotetrack_animsound( "price", "price_jump", "impact", "scn_cliffhanger_price_land" );
    maps\_anim::addonstart_animsound( "price", "hill_slide", "scn_cliffhanger_price_hillslide" );
    maps\_anim::addonstart_animsound( "price", "crash_rescue", "scn_cliffhanger_price_crash_rescue" );
    maps\_anim::addonstart_animsound( "price", "icepick_fight", "scn_cliffhanger_price_icepick_fight" );
    maps\_anim::addonstart_animsound( "snowmobile", "icepick_fight", "scn_cliffhanger_snowmobile_icepick_fight" );
    maps\_anim::addonstart_animsound( "price", "locker_brawl", "scn_cliffhanger_price_locker_fight" );
    maps\_anim::addonstart_animsound( "generic", "sleep_react", "scn_relaxed_guard_chair_fall" );
    maps\_anim::addonstart_animsound( "generic", "sleep_react_back", "scn_relaxed_guard_chair_fall" );
    maps\_anim::addonstart_animsound( "generic", "c4plant", "scn_cliffhanger_plant_c4" );
    maps\_anim::addonstart_animsound( "price", "climb_catch", "scn_cliffhanger_price_bigjump_slide" );
}
