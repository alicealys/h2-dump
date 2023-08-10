// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    thread init_animsounds();
}

init_animsounds()
{
    waittillframeend;
    maps\_anim::addnotetrack_animsound( "playerview", "crash", "sfx", "scn_suv_crash" );
}
