// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

_ID616()
{
    self endon( "killanimscript" );
    self endon( "stop_flashbang_effect" );
    wait(randomfloatrange( 0, 0.4 ));
    self clearanim( %root, 0.1 );
    var_0 = _ID42407::_ID14506();

    if ( var_0 > 2 && randomint( 100 ) > 60 )
        self setflaggedanimrestart( "flashed_anim", %german_shepherd_run_pain, 1, 0.2, self._ID3195 * 0.75 );
    else
        self setflaggedanimrestart( "flashed_anim", %german_shepherd_run_flashbang_b, 1, 0.2, self._ID3195 );

    var_1 = getanimlength( %german_shepherd_run_flashbang_b ) * self._ID3195;

    if ( var_0 < var_1 )
        animscripts\notetracks::_ID11534( var_0, "flashed_anim" );
    else
        animscripts\shared::_ID11529( "flashed_anim" );

    self._ID14514 = 0;
    self notify( "stop_flashbang_effect" );
}
