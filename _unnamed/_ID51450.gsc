// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2, var_3 )
{
    _ID42411::_ID6255( "stryker", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_003F );

    if ( !_func_02F( var_3 ) )
    {
        _ID42411::_ID6216( "vehicle_stryker", "vehicle_stryker_destroyed" );
        _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "exp_armor_vehicle" );
    }

    _ID42411::_ID6220( %stryker_movement, %stryker_movement_backwards, 10 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6237();
    _ID42411::_ID6223( 0.33 );
    level._ID1426["stryker_shell"] = _func_155( "fx/shellejects/stryker_shell" );
    _ID42411::_ID6251( "tankblast" );
}

_ID19731()
{
    thread _unknown_00B5();
    self._ID33746 = 170;
}

_ID50194()
{
    self endon( "death" );
    var_0 = [];
    var_0["fire"] = %stryker_cannon_fire;
    var_0["hatch"] = %stryker_shell_hatch;
    var_1 = _ID42237::_ID16299( "stryker_shell" );

    for (;;)
    {
        self waittill( "weapon_fired" );
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            self _meth_8157( var_3, 1, 0, 1 );
        }

        var_clear_2
        var_clear_0
        _func_157( var_1, self, "tag_ammo_fx" );
    }
}

_ID32509( var_0 )
{
    return var_0;
}

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 11; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID16493 = 1;
    return var_0;
}
