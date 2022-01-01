// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_sp_cobra_pilot_woodland_velinda" );
    self attach( "head_sp_cobra_pilot_velinda", "", 1 );
    self._ID18304 = "head_sp_cobra_pilot_velinda";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_sp_cobra_pilot_woodland_velinda" );
    precachemodel( "head_sp_cobra_pilot_velinda" );
}
