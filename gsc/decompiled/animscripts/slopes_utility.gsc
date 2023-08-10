// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B72E()
{
    var_0 = 15;
    var_1 = ( self.velocity[0], self.velocity[1], 0 );
    var_2 = vectornormalize( var_1 );
    var_3 = anglestoforward( self.angles );

    if ( length2d( var_1 ) > var_0 && vectordot( var_2, var_3 ) > 0.95 )
    {
        var_4 = common_scripts\utility::_id_B1AF( self.velocity, 0.2 );
        var_5 = self.origin + var_4;
    }
    else
        var_5 = self.origin + var_3 * var_0;

    return var_5;
}

_id_C88F()
{
    var_0 = _id_B72E() + ( 0, 0, 30 );
    var_1 = var_0 - ( 0, 0, 60 );
    var_2 = self aiphysicstrace( var_0, var_1, 15, 30, 1, 1 );
    var_3 = var_2["position"] - self.origin;
    var_4 = length( var_3 );

    if ( var_4 < 0.01 )
        return 0;

    return asin( var_3[2] / var_4 );
}

_id_AD0C()
{
    if ( isdefined( self.noslopeanimation ) && self.noslopeanimation )
        return undefined;

    var_0 = _id_C88F();
    return _id_B020( var_0 );
}

_id_B020( var_0 )
{
    var_1 = abs( var_0 );

    if ( var_1 < 5.5 )
        return undefined;

    if ( var_1 > 45 )
        return undefined;

    if ( var_1 > 22.5 )
        return common_scripts\utility::ter_op( var_0 < 0, "30down", "30up" );

    if ( var_1 > 12.5 )
        return common_scripts\utility::ter_op( var_0 < 0, "15down", "15up" );

    return common_scripts\utility::ter_op( var_0 < 0, "10down", "10up" );
}
