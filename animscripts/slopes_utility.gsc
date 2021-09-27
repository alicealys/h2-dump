// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46894()
{
    var_0 = 15;
    var_1 = ( self._ID1283[0], self._ID1283[1], 0 );
    var_2 = _func_119( var_1 );
    var_3 = _func_11F( self._ID65 );

    if ( _func_0F7( var_1 ) > var_0 && _func_0FB( var_2, var_3 ) > 0.95 )
    {
        var_4 = _ID42237::_ID45487( self._ID1283, 0.2 );
        var_5 = self._ID740 + var_4;
    }
    else
        var_5 = self._ID740 + var_3 * var_0;

    return var_5;
}

_ID51343()
{
    var_0 = _unknown_004E() + ( 0, 0, 30 );
    var_1 = var_0 - ( 0, 0, 60 );
    var_2 = self _meth_83F2( var_0, var_1, 15, 30, 1, 1 );
    var_3 = var_2["position"] - self._ID740;
    var_4 = _func_0F6( var_3 );

    if ( var_4 < 0.01 )
        return 0;

    return _func_0BE( var_3[2] / var_4 );
}

_ID44300()
{
    if ( _func_02F( self.noslopeanimation ) && self.noslopeanimation )
        return undefined;

    var_0 = _unknown_00BD();
    return _unknown_00E4( var_0 );
}

_ID45088( var_0 )
{
    var_1 = _func_0C3( var_0 );

    if ( var_1 < 5.5 )
        return undefined;

    if ( var_1 > 45 )
        return undefined;

    if ( var_1 > 22.5 )
        return _ID42237::_ID37527( var_0 < 0, "30down", "30up" );

    if ( var_1 > 12.5 )
        return _ID42237::_ID37527( var_0 < 0, "15down", "15up" );

    return _ID42237::_ID37527( var_0 < 0, "10down", "10up" );
}
