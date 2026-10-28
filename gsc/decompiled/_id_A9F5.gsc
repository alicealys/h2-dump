// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    maps\_props::add_smoking_notetracks( "generic" );
    level.scr_anim["generic"]["lean_smoke_idle"][0] = %parabolic_leaning_guy_smoking_idle;
    level.scr_anim["generic"]["lean_smoke_idle"][1] = %parabolic_leaning_guy_smoking_twitch;
    level.scr_anim["generic"]["lean_smoke_react"] = %parabolic_leaning_guy_react;
}
