// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_sp_cobra_pilot_woodland_zack" );
    self attach( "head_sp_cobra_pilot_zack_wglasses", "", 1 );
    self._ID18304 = "head_sp_cobra_pilot_zack_wglasses";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_sp_cobra_pilot_woodland_zack" );
    precachemodel( "head_sp_cobra_pilot_zack_wglasses" );
}
