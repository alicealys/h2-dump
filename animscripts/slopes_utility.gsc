// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46894()
{
    var_0 = 15;
    var_1 = ( self.velocity[0], self.velocity[1], 0 );
    var_2 = vectornormalize( var_1 );
    var_3 = anglestoforward( self.angles );

    if ( length2d( var_1 ) > var_0 && vectordot( var_2, var_3 ) > 0.95 )
    {
        var_4 = _ID42237::_ID45487( self.velocity, 0.2 );
        var_5 = self.origin + var_4;
    }
    else
        var_5 = self.origin + var_3 * var_0;

    return var_5;
}

_ID51343()
{
    var_0 = _ID46894() + ( 0, 0, 30 );
    var_1 = var_0 - ( 0, 0, 60 );
    var_2 = self aiphysicstrace( var_0, var_1, 15, 30, 1, 1 );
    var_3 = var_2["position"] - self.origin;
    var_4 = length( var_3 );

    if ( var_4 < 0.01 )
        return 0;

    return asin( var_3[2] / var_4 );
}

_ID44300()
{
    if ( isdefined( self.noslopeanimation ) && self.noslopeanimation )
        return undefined;

    var_0 = _ID51343();
    return _ID45088( var_0 );
}

_ID45088( var_0 )
{
    var_1 = abs( var_0 );

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
