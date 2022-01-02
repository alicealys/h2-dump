// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_arab_smg_a_hamed" );
    self attach( "head_trn_hamed", "", 1 );
    self._ID18304 = "head_trn_hamed";
    self._ID40757 = "arab";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_opforce_arab_smg_a_hamed" );
    precachemodel( "head_trn_hamed" );
}
