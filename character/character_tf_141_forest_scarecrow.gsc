// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_forest_tf141_assault_b" );
    self attach( "head_tf141_scarecrow", "", 1 );
    self._ID18304 = "head_tf141_scarecrow";
    self._ID40757 = "taskforce";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_forest_tf141_assault_b" );
    precachemodel( "head_tf141_scarecrow" );
}
