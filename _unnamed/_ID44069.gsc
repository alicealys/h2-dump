// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_soap_arctic" );
    self attach( "head_hero_soap_arctic", "", 1 );
    self._ID18304 = "head_hero_soap_arctic";
    self._ID40757 = "british";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_hero_soap_arctic" );
    precachemodel( "head_hero_soap_arctic" );
}
