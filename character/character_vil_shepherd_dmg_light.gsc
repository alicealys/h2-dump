// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_vil_shepherd_no_gun_dmg" );
    self attach( "h2_head_vil_shepherd_dmg_light", "", 1 );
    self._ID18304 = "h2_head_vil_shepherd_dmg_light";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_vil_shepherd_no_gun_dmg" );
    precachemodel( "h2_head_vil_shepherd_dmg_light" );
}
