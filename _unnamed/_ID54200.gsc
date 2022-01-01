// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID51026()
{
    level._ID1426["plant_large_thrower"] = loadfx( "fx/props/plant_large_thrower" );
    level._ID1426["plant_medium_thrower"] = loadfx( "fx/props/plant_medium_thrower" );
    level._ID1426["plant_small_thrower"] = loadfx( "fx/props/plant_small_thrower" );
    _ID42237::_ID30398( "potted_plant", ::_ID51266 );
}

_ID51266()
{
    var_0 = anglestoforward( self._ID65 );
    var_1 = anglestoup( self._ID65 );
    var_2 = self._ID740;
    var_3 = undefined;

    if ( isdefined( self._ID1191 ) )
        var_3 = getent( self._ID1191, "targetname" );

    thread _ID44286();

    if ( isdefined( var_3 ) )
        thread _ID54611( var_3 );

    self waittill( "fall" );
    var_4 = undefined;

    switch ( self._ID669 )
    {
        case "com_potted_plant_small":
            var_4 = _ID42237::_ID16299( "plant_small_thrower" );
            break;
        case "com_potted_plant_medium":
            var_4 = _ID42237::_ID16299( "plant_medium_thrower" );
            break;
        case "com_potted_plant_large":
            var_4 = _ID42237::_ID16299( "plant_large_thrower" );
            break;
    }

    endswitch( 4 )  case "com_potted_plant_large" loc_BD case "com_potted_plant_medium" loc_AD case "com_potted_plant_small" loc_9D default loc_CD
    self delete();
    playfx( var_4, var_2, var_0, var_1 );
}

_ID44286()
{
    self endon( "fall" );
    self setcandamage( 1 );
    self waittill( "damage" );
    self notify( "fall" );
}

_ID54611( var_0 )
{
    self endon( "fall" );
    var_0 waittill( "trigger" );
    wait(randomfloatrange( 0.0, 0.2 ));
    self notify( "fall" );
}
