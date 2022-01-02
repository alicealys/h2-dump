// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID39983()
{
    return weaponisauto( self.weapon ) || weaponburstcount( self.weapon ) > 0;
}

_ID39995()
{
    return weaponissemiauto( self.weapon );
}

_ID4463()
{
    if ( _ID39983() )
        return 0.1 / weaponfiretime( self.weapon );
    else
        return 0.5;
}

_ID6455()
{
    if ( _ID39983() )
        return 0.1 / weaponfiretime( self.weapon );
    else
        return 0.2;
}

_ID40967()
{
    return 0.25;
}

_ID33772( var_0 )
{
    if ( !_ID39983() || isdefined( var_0 ) && var_0 == 1 )
    {
        var_1 = 0.5 + randomfloat( 1 );
        return weaponfiretime( self.weapon ) * var_1;
    }
    else
        return weaponfiretime( self.weapon );
}

_ID29364()
{
    if ( self.weapon == "none" )
    {
        self._ID6323 = 0;
        return 0;
    }

    if ( !isdefined( self._ID6323 ) )
        self._ID6323 = weaponclipsize( self.weapon );
    else
        self._ID6323 = weaponclipsize( self.weapon );

    if ( self._ID6323 <= 0 )
        return 0;
    else
        return 1;
}

_ID1988( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 3.0;

    if ( !isdefined( var_3 ) )
        var_2 = 1;

    if ( !isdefined( var_4 ) )
        var_4 = "rifle";

    var_0 = tolower( var_0 );
    anim._ID2479[var_0]["type"] = var_1;
    anim._ID2479[var_0]["time"] = var_2;
    anim._ID2479[var_0]["clipsize"] = var_3;
    anim._ID2479[var_0]["anims"] = var_4;
}

_ID2138( var_0 )
{
    anim._ID2479[tolower( var_0 )]["type"] = "turret";
}
