// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    level._ID30895["generic"]["sleep_idle"][0] = %parabolic_guard_sleeper_idle;
    level._ID30895["generic"]["sleep_react"] = %parabolic_guard_sleeper_react;
    _ID31296();
}
#using_animtree("script_model");

_ID31296()
{
    level._ID30895["chair"]["sleep_react"] = %parabolic_guard_sleeper_react_chair;
    level._ID30900["chair"] = #animtree;
    level._ID30904["chair"] = "com_folding_chair";
}
