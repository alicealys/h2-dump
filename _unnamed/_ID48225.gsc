// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    level._ID30895["generic"]["coffee_idle"][0] = %cargoship_stunned_coffee_react_idle;
    level._ID30895["generic"]["coffee_react"] = %exposed_idle_twitch_v4;
    _ID31296();
}
#using_animtree("script_model");

_ID31296()
{
    level._ID30895["chair"]["sleep_react"] = %parabolic_guard_sleeper_react_chair;
    level._ID30900["chair"] = #animtree;
    level._ID30904["chair"] = "com_folding_chair";
}
