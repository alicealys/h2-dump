// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID39983()
{
    return _func_1B8( self._ID1302 ) || _func_1BC( self._ID1302 ) > 0;
}

_ID39995()
{
    return _func_1B9( self._ID1302 );
}

_ID4463()
{
    if ( _unknown_0019() )
        return 0.1 / _func_1B6( self._ID1302 );
    else
        return 0.5;
}

_ID6455()
{
    if ( _unknown_002F() )
        return 0.1 / _func_1B6( self._ID1302 );
    else
        return 0.2;
}

_ID40967()
{
    return 0.25;
}

_ID33772( var_0 )
{
    if ( !_unknown_004D() || _func_02F( var_0 ) && var_0 == 1 )
    {
        var_1 = 0.5 + _func_0B8( 1 );
        return _func_1B6( self._ID1302 ) * var_1;
    }
    else
        return _func_1B6( self._ID1302 );
}

_ID29364()
{
    if ( self._ID1302 == "none" )
    {
        self._ID6323 = 0;
        return 0;
    }

    if ( !_func_02F( self._ID6323 ) )
        self._ID6323 = _func_1B7( self._ID1302 );
    else
        self._ID6323 = _func_1B7( self._ID1302 );

    if ( self._ID6323 <= 0 )
        return 0;
    else
        return 1;
}

_ID1988( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 3.0;

    if ( !_func_02F( var_3 ) )
        var_2 = 1;

    if ( !_func_02F( var_4 ) )
        var_4 = "rifle";

    var_0 = _func_128( var_0 );
    anim._ID2479[var_0]["type"] = var_1;
    anim._ID2479[var_0]["time"] = var_2;
    anim._ID2479[var_0]["clipsize"] = var_3;
    anim._ID2479[var_0]["anims"] = var_4;
}

_ID2138( var_0 )
{
    anim._ID2479[_func_128( var_0 )]["type"] = "turret";
}
