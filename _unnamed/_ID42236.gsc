// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_02F( level._ID26672 ) )
        return;

    level._ID26672 = 1;
    level._ID1553 = 25;
    var_0 = _func_1A2( "pipe_shootable", "targetname" );

    if ( !var_0.size )
        return;

    level._ID1555 = _func_1A5();
    level._ID1555._ID25228 = 0;
    var_0 thread _unknown_01C2();
    var_0 thread _unknown_0188();
    thread _unknown_004C( var_0 );
    level._ID46179 = 0;
}

_ID28284( var_0 )
{
    waitframe;

    if ( level._ID9228 )
        return;

    _ID42237::_ID3350( var_0, ::_unknown_0063 );
}

_ID26674()
{
    self _meth_82CA( 1 );
    self _meth_82CB( 0 );
    self._ID26668 = [];
    var_0 = undefined;
    self._ID44537 = 0;

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "use_bullet_hitnormal" )
        self._ID44537 = 1;
    else if ( _func_02F( self._ID1191 ) )
    {
        var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
        self._ID7 = var_0._ID740;
        var_1 = _func_11F( var_0._ID65 );
        var_1 *= 128;
        self._ID97 = self._ID7 + var_1;
    }
    else
    {
        var_1 = _func_11F( self._ID65 );
        var_2 = var_1 * 64;
        self._ID7 = self._ID740 + var_2;
        var_2 = var_1 * -64;
        self._ID97 = self._ID740 + var_2;
    }

    thread _unknown_0108();
}

_ID26670()
{
    var_0 = ( 0, 0, 0 );
    var_1 = 0;
    var_2 = 4;

    for (;;)
    {
        self waittill( "damage",  var_6, var_0, var_5, var_4, var_3  );

        if ( var_1 )
        {
            if ( _func_0B7( 100 ) <= 33 )
                continue;
        }

        var_1 = 1;
        var_7 = _unknown_0168( var_5, var_0, var_6, var_4 );

        if ( var_7 )
            var_2--;

        if ( var_2 <= 0 )
            break;
    }

    self _meth_82CA( 0 );
}

_ID26669( var_0, var_1, var_2, var_3 )
{
    if ( level._ID1555._ID25228 > 8 )
        return 0;

    if ( !_func_02F( level._ID1555._ID1554[var_2] ) )
        var_1 = _unknown_02D4( var_1, var_2 );
    else
        var_1 = self [[ level._ID1555._ID1554[var_2] ]]( var_1, var_2 );

    if ( !_func_02F( var_1 ) )
        return 0;

    if ( _func_02F( var_3._ID170 ) && var_3._ID170 == "worldspawn" )
        return 0;

    var_4 = self._ID26668;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_0F5( var_1, var_5._ID740 ) < 25 )
            return 0;
    }

    var_clear_2
    var_clear_0

    if ( self._ID44537 )
    {
        var_7 = var_1 - var_0;
        var_8 = var_1 + var_0;
        var_9 = _func_06D( var_7, var_8, 0 );
        var_10 = var_9["normal"];
    }
    else
        var_10 = _func_0F1( self._ID7, self._ID97, var_1 );

    thread _unknown_02B0( var_1, var_10, var_3 );
    var_11 = _unknown_0276( level._ID1555._ID15248[self._ID922] );

    if ( var_11 )
        thread _unknown_0298( var_11, var_1, var_10 );

    return 1;
}

_ID45249( var_0 )
{
    var_1 = 0;

    if ( _func_033( "ui_gasmask" ) != 0 && self._ID922 == "steam" || self._ID922 == "water" && _func_02F( level._ID1426["screen_heavy_rain_cgoshp"] ) && _func_02F( level._ID1555._ID15248[self._ID922] ) )
        return level._ID1555._ID15248[self._ID922];

    return var_1;
}

_ID49260( var_0, var_1, var_2 )
{
    var_3 = _func_03D();
    var_4 = undefined;

    for (;;)
    {
        wait 0.1;
        var_5 = _func_03D();

        if ( var_5 - var_3 > var_0 * 1000 + 2000 )
        {
            if ( _func_02F( var_4 ) )
            {
                var_4 _meth_80B7();
                level._ID46179 = 0;
            }

            return;
        }

        var_6 = _func_0F5( var_1, level._ID794 _meth_80AF() );
        var_7 = var_1 - level._ID794._ID740;
        var_8 = _func_0FB( var_7, _func_11F( level._ID794._ID65 ) );

        if ( var_6 < 12000 && var_8 > 0 )
        {
            if ( !level._ID46179 )
            {
                level._ID46179 = 1;
                var_4 = _func_15B( level._ID1426["screen_heavy_rain_cgoshp"], level._ID794._ID740 );
                _func_15C( var_4 );
            }

            continue;
        }

        if ( level._ID46179 && _func_02F( var_4 ) )
        {
            var_4 _meth_80B7();
            level._ID46179 = 0;
        }
    }
}

_ID26671( var_0, var_1, var_2 )
{
    var_3 = level._ID1555._ID15248[self._ID922];
    var_4 = _func_0C1( level._ID1553 / var_3 );
    var_5 = level._ID1555._ID1637[self._ID922 + "_hit"];
    var_6 = level._ID1555._ID1637[self._ID922 + "_loop"];
    var_7 = level._ID1555._ID1637[self._ID922 + "_end"];
    var_8 = _func_06A( "script_origin", var_0 );
    var_8 _meth_805A();
    var_8 _meth_80A1( var_5 );
    var_8 _meth_807C( var_6 );
    self._ID26668[self._ID26668.size] = var_8;
    level._ID1555._ID25228++;

    if ( _ID42237::_ID20913() || self._ID922 != "steam" )
        thread _unknown_0467( var_0, var_1, var_2, var_8 );

    _func_156( level._ID1555._ID1426[self._ID922], var_0, var_1 );
    wait(var_3);

    for ( var_4--; level._ID1555._ID25228 <= 8 && var_4 > 0; var_4-- )
    {
        _func_156( level._ID1555._ID1426[self._ID922], var_0, var_1 );
        wait(var_3);
    }

    var_8 _meth_80A1( var_7 );
    wait 0.5;
    var_8 _meth_80B2( var_6 );
    var_8 _meth_80B7();
    self._ID26668 = _ID42237::_ID3332( self._ID26668 );
    level._ID1555._ID25228--;
}

_ID26667( var_0, var_1, var_2, var_3 )
{
    if ( !_unknown_04E9() )
        return;

    var_3 endon( "death" );
    var_4 = var_3._ID740 + _func_119( var_1 ) * 40;
    var_5 = level._ID1555._ID1422[self._ID922];

    for (;;)
    {
        if ( !_func_02F( self._ID9644 ) )
            self _meth_81E1( var_4, 36, var_5, var_5 * 0.75, undefined, "MOD_TRIGGER_HURT" );
        else
            self _meth_81E1( var_4, 36, var_5, var_5 * 0.75, var_2, "MOD_TRIGGER_HURT" );

        wait 0.4;
    }
}

_ID2714()
{
    if ( !_ID42237::_ID20913() )
        return 0;

    if ( !_func_02F( level._ID26673 ) )
        return 1;

    return level._ID26673;
}

_ID23489()
{
    level._ID1555._ID1554 = [];
    level._ID1555._ID1554["MOD_UNKNOWN"] = ::_unknown_0592;
    level._ID1555._ID1554["MOD_PISTOL_BULLET"] = ::_unknown_059D;
    level._ID1555._ID1554["MOD_RIFLE_BULLET"] = ::_unknown_05AB;
    level._ID1555._ID1554["MOD_GRENADE"] = ::_unknown_05BA;
    level._ID1555._ID1554["MOD_GRENADE_SPLASH"] = ::_unknown_05C8;
    level._ID1555._ID1554["MOD_PROJECTILE"] = ::_unknown_05D5;
    level._ID1555._ID1554["MOD_PROJECTILE_SPLASH"] = ::_unknown_05E3;
    level._ID1555._ID1554["MOD_TRIGGER_HURT"] = ::_unknown_05F0;
    level._ID1555._ID1554["MOD_EXPLOSIVE"] = ::_unknown_05FE;
    level._ID1555._ID1554["MOD_EXPLOSIVE_BULLET"] = ::_unknown_060B;
}

_ID26664( var_0, var_1 )
{
    return var_0;
}

_ID26666( var_0, var_1 )
{
    if ( self._ID44537 )
        return undefined;

    var_2 = _func_119( _func_0F1( self._ID7, self._ID97, var_0 ) );
    var_0 = _func_0F2( self._ID7, self._ID97, var_0 );
    return var_0 + var_2 * 4;
}

_ID26665( var_0, var_1 )
{
    return undefined;
}

_ID28382()
{
    var_0 = 0;
    var_1 = 0;
    var_2 = self;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3._ID922 == "water" )
            var_3._ID922 = "steam";

        if ( var_3._ID922 == "steam" )
        {
            var_3 _meth_80E8();
            var_0 = 1;
            continue;
        }

        if ( var_3._ID922 == "fire" )
        {
            var_3 _meth_80E8();
            var_1 = 1;
            continue;
        }
    }

    var_clear_2
    var_clear_0

    if ( var_0 )
    {
        level._ID1555._ID1426["steam"] = _func_155( "fx/impacts/pipe_steam" );
        level._ID1555._ID1637["steam_hit"] = "mtl_steam_pipe_hit";
        level._ID1555._ID1637["steam_loop"] = "mtl_steam_pipe_hiss_loop";
        level._ID1555._ID1637["steam_end"] = "mtl_steam_pipe_hiss_loop_end";
        level._ID1555._ID15248["steam"] = 3;
        level._ID1555._ID1422["steam"] = 5;
    }

    if ( var_1 )
    {
        level._ID1555._ID1426["fire"] = _func_155( "fx/impacts/pipe_fire" );
        level._ID1555._ID1637["fire_hit"] = "mtl_gas_pipe_hit";
        level._ID1555._ID1637["fire_loop"] = "mtl_gas_pipe_flame_loop";
        level._ID1555._ID1637["fire_end"] = "mtl_gas_pipe_flame_end";
        level._ID1555._ID15248["fire"] = 3;
        level._ID1555._ID1422["fire"] = 5;
    }
}
