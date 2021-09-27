// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    var_0 = _func_1A2( "leaking", "targetname" );

    if ( !var_0.size )
        return;

    var_0 thread _unknown_011D();
    var_0 thread _unknown_00D6();
    _ID42237::_ID3350( var_0, ::_unknown_0029 );
}

_ID46947()
{
    switch ( self._ID922 )
    {

    }

    thread _unknown_00AE();
    case "barrel_water":
    case "barrel_sludge":
    case "barrel_acid":
    case "barrel_oil":
}

_ID48232()
{
    self._ID7 = self._ID740;
    self._ID1251 = _func_11D( self._ID65 );
    var_0 = _func_11D( ( 0, 90, 0 ) );
    self._ID25988 = self._ID7 + self._ID1251 * 22;
    self._ID7 = self._ID7 + self._ID1251 * 1.5;
    self._ID97 = self._ID7 + self._ID1251 * 41.4;
    self._ID40767 = 25861.7;
    self._ID47574 = self._ID40767;
    var_1 = _func_0FB( self._ID1251, var_0 );
    var_2 = self._ID97;

    if ( var_1 < 0 )
        var_2 = self._ID7;

    var_1 = _func_0C3( 1 - _func_0C3( var_1 ) );
    self._ID47285 = _func_091( self._ID25988, self._ID25988 + ( 0, 0, -80 ) )[2];
    self._ID50962 = var_2[2] + var_1 * 14;
}

_ID54313()
{
    self _meth_82CA( 1 );
    self._ID44932 = _func_02F( level._ID1426["leak_interactive_pool"] ) && _func_02F( level._ID1426["leak_interactive_pool"][self._ID922] );
    self._ID52115 = _func_02F( level._ID1426["leak_interactive_drain"] ) && _func_02F( level._ID1426["leak_interactive_drain"][self._ID922] );
    self endon( "drained" );

    for (;;)
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( var_4 == "MOD_MELEE" || var_4 == "MOD_IMPACT" )
            continue;

        var_3 = self [[ level._ID45410[var_4] ]]( var_3, var_4 );

        if ( !_func_02F( var_3 ) )
            continue;

        thread _unknown_01DA( var_3 );
    }
}

_ID44496( var_0 )
{
    var_1 = _func_0F2( self._ID7, self._ID97, var_0 );
    var_2 = undefined;

    if ( var_1 == self._ID7 )
        var_2 = self._ID1251 * -1;
    else if ( var_1 == self._ID97 )
        var_2 = self._ID1251;
    else
        var_2 = _func_0F1( self._ID7, self._ID97, var_0 );

    var_3 = var_0[2] - self._ID47285;

    if ( var_3 < 0.02 )
        var_3 = 0;

    var_4 = var_3 / self._ID50962 - self._ID47285 * self._ID40767;

    if ( self._ID47574 > var_4 )
    {
        if ( self._ID44932 )
            thread _unknown_0277( var_0, var_2 );

        thread _ID42237::_ID27077( level._ID1637["leak_interactive_leak"][self._ID922], var_0 );

        while ( self._ID47574 > var_4 )
        {
            _func_156( level._ID1426["leak_interactive_leak"][self._ID922], var_0, var_2 );
            self._ID47574 = self._ID47574 - 100;
            wait 0.1;
        }

        if ( self._ID52115 )
            _func_156( level._ID1426["leak_interactive_drain"][self._ID922], var_0, var_2 );
    }

    if ( self._ID47574 / self._ID40767 <= 0.05 )
        self notify( "drained" );
}

_ID44850( var_0, var_1 )
{
    self._ID44932 = 0;
    _func_156( level._ID1426["leak_interactive_pool"][self._ID922], var_0, var_1 );
    wait 0.5;
    self._ID44932 = 1;
}

_ID23489()
{
    level._ID45410 = [];
    level._ID45410["MOD_UNKNOWN"] = ::_unknown_033D;
    level._ID45410["MOD_PISTOL_BULLET"] = ::_unknown_0346;
    level._ID45410["MOD_RIFLE_BULLET"] = ::_unknown_0350;
    level._ID45410["MOD_GRENADE"] = ::_unknown_035D;
    level._ID45410["MOD_GRENADE_SPLASH"] = ::_unknown_0367;
    level._ID45410["MOD_PROJECTILE"] = ::_unknown_0372;
    level._ID45410["MOD_PROJECTILE_SPLASH"] = ::_unknown_037C;
    level._ID45410["MOD_MELEE"] = ::_unknown_0391;
    level._ID45410["MOD_HEAD_SHOT"] = ::_unknown_039B;
    level._ID45410["MOD_CRUSH"] = ::_unknown_03A6;
    level._ID45410["MOD_TELEFRAG"] = ::_unknown_03B0;
    level._ID45410["MOD_FALLING"] = ::_unknown_03BB;
    level._ID45410["MOD_SUICIDE"] = ::_unknown_03C5;
    level._ID45410["MOD_TRIGGER_HURT"] = ::_unknown_03C6;
    level._ID45410["MOD_EXPLOSIVE"] = ::_unknown_03D0;
    level._ID45410["MOD_IMPACT"] = ::_unknown_03E5;
    level._ID45410["MOD_EXPLOSIVE_BULLET"] = ::_unknown_03E3;
}

_ID54308( var_0, var_1 )
{
    return var_0;
}

_ID51827( var_0, var_1 )
{
    var_2 = _func_119( _func_0F1( self._ID7, self._ID97, var_0 ) );
    var_0 = _func_0F2( self._ID7, self._ID97, var_0 );
    return var_0 + var_2 * 4;
}

_ID53932( var_0, var_1 )
{
    return undefined;
}

_ID48533( var_0, var_1 )
{

}

_ID28382()
{
    for ( var_0 = 0; var_0 < self.size; var_0++ )
    {
        if ( self[var_0]._ID922 != "barrel_oil" )
            continue;

        level._ID1426["leak_interactive_leak"][self[var_0]._ID922] = _func_155( "fx/impacts/barrel_leak" );
        level._ID1426["leak_interactive_pool"][self[var_0]._ID922] = _func_155( "fx/misc/oilsplash_decal_spawner" );
        level._ID1426["leak_interactive_drain"][self[var_0]._ID922] = _func_155( "fx/impacts/barrel_drain" );
        level._ID1637["leak_interactive_leak"][self[var_0]._ID922] = "h1_oil_spill_start";
        break;
    }

    for ( var_0 = 0; var_0 < self.size; var_0++ )
    {
        if ( self[var_0]._ID922 != "barrel_acid" )
            continue;

        level._ID1426["leak_interactive_leak"][self[var_0]._ID922] = _func_155( "fx/impacts/barrel_leak" );
        level._ID1426["leak_interactive_pool"][self[var_0]._ID922] = _func_155( "fx/misc/oilsplash_decal_spawner" );
        level._ID1426["leak_interactive_drain"][self[var_0]._ID922] = _func_155( "fx/impacts/barrel_drain" );
        level._ID1637["leak_interactive_leak"][self[var_0]._ID922] = "h1_oil_spill_start";
        break;
    }

    for ( var_0 = 0; var_0 < self.size; var_0++ )
    {
        if ( self[var_0]._ID922 != "barrel_water" )
            continue;

        level._ID1426["leak_interactive_leak"][self[var_0]._ID922] = _func_155( "fx/impacts/barrel_leak_water" );
        level._ID1637["leak_interactive_leak"][self[var_0]._ID922] = "h1_oil_spill_start";
        break;
    }

    for ( var_0 = 0; var_0 < self.size; var_0++ )
    {
        if ( self[var_0]._ID922 != "barrel_sludge" )
            continue;

        level._ID1426["leak_interactive_leak"][self[var_0]._ID922] = _func_155( "fx/impacts/barrel_leak" );
        level._ID1426["leak_interactive_pool"][self[var_0]._ID922] = _func_155( "fx/misc/oilsplash_decal_spawner" );
        level._ID1426["leak_interactive_drain"][self[var_0]._ID922] = _func_155( "fx/impacts/barrel_drain" );
        level._ID1637["leak_interactive_leak"][self[var_0]._ID922] = "h1_oil_spill_start";
        break;
    }
}
