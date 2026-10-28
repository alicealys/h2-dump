// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("destructibles");

main()
{
    level._destructible_preanims["light_fluorescent_swing"] = %light_fluorescent_swing;
    level._destructible_preanims["light_fluorescent_null"] = %light_fluorescent_null;
    level._destructible_preanims["light_fluorescent_swing_02"] = %light_fluorescent_swing_02;
    level._effect["spotlight_fx"] = loadfx( "fx/misc/fluorescent_spotlight" );
}
