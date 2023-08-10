// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    thread init_animsounds();
}

init_animsounds()
{
    waittillframeend;
    maps\_anim::addonstart_animsound( "player_rig", "player_stealth_kill", "scn_oilrig_plr_waterkill" );
}
