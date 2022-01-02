// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_complete_sp_usmc_ghillie_price" );
    self attach( "head_usmc_ghillie_price", "", 1 );
    self._ID18304 = "head_usmc_ghillie_price";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_complete_sp_usmc_ghillie_price" );
    precachemodel( "head_usmc_ghillie_price" );
}
