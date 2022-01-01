// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_work_civ_male_a" );
    self attach( "head_work_civ_welder", "", 1 );
    self._ID18304 = "head_work_civ_welder";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_work_civ_male_a" );
    precachemodel( "head_work_civ_welder" );
}
