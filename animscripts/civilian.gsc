// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID217()
{
    self endon( "killanimscript" );
    self clearanim( %animscript_root, 0.2 );
    animscripts\utility::_ID39726();

    if ( animscripts\utility::_ID20775() )
        var_0 = "idle_combat";
    else
        var_0 = "idle_noncombat";

    var_1 = undefined;

    if ( isdefined( self._ID3189 ) && isdefined( level._ID30895[self._ID3189] ) )
        var_1 = level._ID30895[self._ID3189][var_0];

    if ( !isdefined( var_1 ) )
    {
        if ( !isdefined( level._ID30895["default_civilian"] ) )
            return;

        var_1 = level._ID30895["default_civilian"][var_0];
    }

    thread _ID24328();

    for (;;)
    {
        self setflaggedanimknoball( "idle", _ID42237::_ID28945( var_1 ), %animscript_root, 1, 0.2, 1 );
        self waittillmatch( "idle",  "end"  );
    }
}

_ID24328()
{
    self endon( "killanimscript" );

    while ( !isdefined( self._ID7272 ) )
        wait 1;
}

_ID1042()
{
    _ID217();
}

_ID15731()
{
    return anim._ID7698[randomint( anim._ID7698.size )];
}
