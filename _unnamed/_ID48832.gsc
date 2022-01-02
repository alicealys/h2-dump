// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_forest_tf141_shotgun" );
    self attach( "head_tf141_forest_b", "", 1 );
    self._ID18304 = "head_tf141_forest_b";
    self._ID40757 = "taskforce";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_forest_tf141_shotgun" );
    precachemodel( "head_tf141_forest_b" );
}
