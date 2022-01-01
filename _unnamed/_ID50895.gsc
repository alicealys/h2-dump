// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    var_0 = getentarray( "static_destructible", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID50419 );
}

_ID50419()
{
    self setcandamage( 1 );

    if ( isdefined( self._ID31388 ) )
        self._ID46761 = loadfx( self._ID31388 );

    var_0 = _ID42237::_ID35164();
    var_0 linkto( self );

    for (;;)
    {
        if ( isdefined( self._ID279 ) )
            self waittill( "exploded" );
        else
        {
            self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

            if ( var_5 != "MOD_MELEE" && var_5 != "MOD_IMPACT" )
                continue;
        }

        if ( isdefined( self._ID46761 ) )
            playfxontag( self._ID46761, var_0, "tag_origin" );

        var_6 = getent( self._ID1191, "targetname" );

        if ( isdefined( var_6 ) )
            var_6 delete();

        if ( isdefined( self._ID31388 ) )
            self delete();

        wait 15;
        var_0 delete();
        break;
    }

    wait 0.05;
}
