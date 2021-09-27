// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID51026()
{
    level._ID1426["plant_large_thrower"] = _func_155( "fx/props/plant_large_thrower" );
    level._ID1426["plant_medium_thrower"] = _func_155( "fx/props/plant_medium_thrower" );
    level._ID1426["plant_small_thrower"] = _func_155( "fx/props/plant_small_thrower" );
    _ID42237::_ID30398( "potted_plant", ::_unknown_003D );
}

_ID51266()
{
    var_0 = _func_11F( self._ID65 );
    var_1 = _func_11D( self._ID65 );
    var_2 = self._ID740;
    var_3 = undefined;

    if ( _func_02F( self._ID1191 ) )
        var_3 = _func_1A1( self._ID1191, "targetname" );

    thread _unknown_0097();

    if ( _func_02F( var_3 ) )
        thread _unknown_00AA( var_3 );

    self waittill( "fall" );
    var_4 = undefined;

    switch ( self._ID669 )
    {

    }

    self _meth_80B7();
    _func_156( var_4, var_2, var_0, var_1 );
    case "com_potted_plant_large":
    case "com_potted_plant_medium":
    case "com_potted_plant_small":
    default:
}

_ID44286()
{
    self endon( "fall" );
    self _meth_82CA( 1 );
    self waittill( "damage" );
    self notify( "fall" );
}

_ID54611( var_0 )
{
    self endon( "fall" );
    var_0 waittill( "trigger" );
    wait(_func_0BA( 0.0, 0.2 ));
    self notify( "fall" );
}
