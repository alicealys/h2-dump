// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    var_0 = _func_1A2( "static_destructible", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_0015 );
}

_ID50419()
{
    self _meth_82CA( 1 );

    if ( _func_02F( self._ID31388 ) )
        self._ID46761 = _func_155( self._ID31388 );

    var_0 = _ID42237::_ID35164();
    var_0 _meth_8053( self );

    for (;;)
    {
        if ( _func_02F( self._ID279 ) )
            self waittill( "exploded" );
        else
        {
            self waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

            if ( var_5 != "MOD_MELEE" && var_5 != "MOD_IMPACT" )
                continue;
        }

        if ( _func_02F( self._ID46761 ) )
            _func_157( self._ID46761, var_0, "tag_origin" );

        var_6 = _func_1A1( self._ID1191, "targetname" );

        if ( _func_02F( var_6 ) )
            var_6 _meth_80B7();

        if ( _func_02F( self._ID31388 ) )
            self _meth_80B7();

        wait 15;
        var_0 _meth_80B7();
        break;
    }

    wait 0.05;
}
