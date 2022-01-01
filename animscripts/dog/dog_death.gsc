// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

_ID616()
{
    self endon( "killanimscript" );

    if ( isdefined( self._ID7._ID24881 ) )
    {
        wait 1.1;
        var_0 = self getdroptofloorposition();

        if ( isdefined( var_0 ) )
        {
            var_1 = _ID42237::_ID35164();
            var_1._ID740 = self._ID740;
            var_1._ID65 = self._ID65;
            self linkto( var_1 );
            var_1 moveto( var_0, 0.5 );
            wait 0.5;
            self unlink();
            var_1 delete();
        }
        else
            wait 0.5;

        return;
    }

    self unlink();

    if ( isdefined( self._ID322 ) && isdefined( self._ID322._ID1065 ) && self._ID322._ID1065 == self )
        self._ID322._ID1065 = undefined;

    self clearanim( %root, 0.2 );
    self setflaggedanimrestart( "dog_anim", %german_shepherd_death_front, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "dog_anim" );
}
