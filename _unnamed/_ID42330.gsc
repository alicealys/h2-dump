// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID17529( var_0 )
{
    self endon( "death" );
    self notify( "end_mg_behavior" );
    self endon( "end_mg_behavior" );
    self._ID6732 = 1;
    self._ID41300 = 0;

    if ( !_ID42331::_ID39915( var_0 ) )
    {
        self notify( "continue_cover_script" );
        return;
    }

    self._ID21799 = undefined;
    thread _unknown_0186();
    var_1 = _func_11F( var_0._ID65 );
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    thread _unknown_0081( var_2 );
    var_2._ID740 = var_0._ID740 + var_1 * 500;

    if ( _func_02F( self._ID21799 ) )
        var_2._ID740 = self._ID21799;

    var_0 _meth_810F( var_2 );
    var_3 = undefined;

    for (;;)
    {
        if ( !_func_1A7( self._ID9442 ) )
        {
            _unknown_0106();
            self waittill( "new_enemy" );
        }

        _unknown_0113();
        _unknown_00C2( var_2 );

        if ( !_func_1A7( self._ID9442 ) )
            continue;

        if ( self _meth_81CA( self._ID9442 ) )
            continue;

        self waittill( "saw_enemy" );
    }
}

_ID37284( var_0 )
{
    _ID42237::_ID41098( "death", "end_mg_behavior" );
    var_0 _meth_80B7();
}

_ID33759( var_0 )
{
    self endon( "death" );
    self endon( "new_enemy" );
    self._ID9442 endon( "death" );
    var_1 = self._ID9442;

    while ( self _meth_81CA( var_1 ) )
    {
        var_2 = _func_11A( var_1 _meth_80AF() - var_0._ID740 );
        var_2 = _func_11F( var_2 );
        var_0 _meth_82B8( var_0._ID740 + var_2 * 12, 0.1 );
        wait 0.1;
    }

    if ( _func_1B3( var_1 ) )
    {
        self endon( "saw_enemy" );
        var_3 = var_1 _meth_80AF();
        var_2 = _func_11A( var_3 - var_0._ID740 );
        var_2 = _func_11F( var_2 );
        var_4 = 150;
        var_5 = _func_0F3( var_0._ID740, self._ID21799 ) / var_4;

        if ( var_5 > 0 )
        {
            var_0 _meth_82B8( self._ID21799, var_5 );
            wait(var_5);
        }

        var_6 = var_0._ID740 + var_2 * 180;
        var_7 = _unknown_027B( self _meth_80AF(), var_0._ID740, var_6 );

        if ( !_func_02F( var_7 ) )
            var_7 = var_0._ID740;

        var_0 _meth_82B8( var_0._ID740 + var_2 * 80 + ( 0, 0, _func_0BA( 15, 50 ) * -1 ), 3, 1, 1 );
        wait 3.5;
        var_0 _meth_82B8( var_7 + var_2 * -20, 3, 1, 1 );
    }

    wait(_func_0BA( 2.5, 4 ));
    _unknown_021A();
}

_ID32292( var_0 )
{
    if ( var_0 )
    {
        self._ID6732 = 1;

        if ( self._ID41300 )
            self._ID39235 notify( "startfiring" );
    }
    else
    {
        self._ID6732 = 0;
        self._ID39235 notify( "stopfiring" );
    }
}

_ID36487()
{
    self._ID41300 = 0;
    self._ID39235 notify( "stopfiring" );
}

_ID35756()
{
    self._ID41300 = 1;

    if ( self._ID6732 )
        self._ID39235 notify( "startfiring" );
}

_ID9167()
{
    if ( _func_02F( level._ID23492 ) )
    {
        level._ID23492[level._ID23492.size] = self;
        return;
    }

    level._ID23492 = [];
    level._ID23492[level._ID23492.size] = self;
    waitframe;
    var_0 = _func_1A5();
    _ID42237::_ID3350( level._ID23492, ::_unknown_02A8, var_0 );
    var_1 = level._ID23492;
    level._ID23492 = undefined;
    var_0 waittill( "gunner_died" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !_func_1A7( var_1[var_2] ) )
            continue;

        var_1[var_2] notify( "stop_using_built_in_burst_fire" );
        var_1[var_2] thread _unknown_02FA();
    }
}

_ID23491( var_0 )
{
    self waittill( "death" );
    var_0 notify( "gunner_died" );
}

_ID23511( var_0 )
{
    wait 1;
    level notify( "new_mg_firing_team" + var_0[0]._ID922 );
    level endon( "new_mg_firing_team" + var_0[0]._ID922 );

    for (;;)
    {
        _unknown_033E( var_0 );
        _unknown_0328( var_0 );
    }
}

_ID34933( var_0 )
{
    var_1 = undefined;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !_func_1A7( var_0[var_2] ) )
            continue;

        var_1 = var_0[var_2];
        break;
    }

    if ( !_func_02F( var_1 ) )
        return;
}

_ID34932()
{
    self endon( "death" );

    for (;;)
    {
        self._ID39235 _meth_80E9();
        wait(_func_0BA( 0.3, 0.7 ));
        self._ID39235 _meth_80EA();
        wait(_func_0BA( 0.1, 1.1 ));
    }
}

_ID12211( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] endon( "death" );

    var_2 = 0;
    var_3 = 1;

    for (;;)
    {
        if ( _func_1A7( var_0[var_2] ) )
            var_0[var_2] _unknown_0361( 1 );

        if ( _func_1A7( var_0[var_3] ) )
            var_0[var_3] _unknown_036F( 0 );

        var_4 = var_2;
        var_2 = var_3;
        var_3 = var_4;
        wait(_func_0BA( 2.3, 3.5 ));
    }
}

_ID35476( var_0, var_1 )
{
    _unknown_039A();
    self endon( "death" );
    self endon( "new_enemy" );
    var_1 endon( "death" );

    while ( self _meth_81CA( var_1 ) )
    {
        var_2 = _func_11A( var_1 _meth_80AF() - var_0._ID740 );
        var_2 = _func_11F( var_2 );
        var_0 _meth_82B8( var_0._ID740 + var_2 * 10, 0.2 );
        wait 0.2;
    }

    var_2 = _func_11A( var_1 _meth_80AF() - var_0._ID740 );
    var_2 = _func_11F( var_2 );
    var_3 = 150;
    var_4 = _func_0F3( var_0._ID740, self._ID21799 ) / var_3;
    var_0 _meth_82B8( self._ID21799, var_4 );
    wait(var_4);
    var_5 = var_0._ID740;
    var_0 _meth_82B8( var_0._ID740 + var_2 * 80 + ( 0, 0, -25 ), 3, 1, 1 );
    wait 3.5;
    var_0 _meth_82B8( var_5 + var_2 * -20, 3, 1, 1 );
    wait 1;
    _unknown_042D();
}

_ID16003( var_0, var_1, var_2 )
{
    var_3 = _func_0F3( var_1, var_2 ) * 0.05;

    if ( var_3 < 5 )
        var_3 = 5;

    if ( var_3 > 20 )
        var_3 = 20;

    var_4 = var_2 - var_1;
    var_4 = ( var_4[0] / var_3, var_4[1] / var_3, var_4[2] / var_3 );
    var_5 = ( 0, 0, 0 );
    var_6 = undefined;

    for ( var_7 = 0; var_7 < var_3 + 2; var_7++ )
    {
        var_8 = _func_06D( var_0, var_1 + var_5, 0, undefined );

        if ( var_8["fraction"] < 1 )
        {
            var_6 = var_8["position"];
            break;
        }

        var_5 += var_4;
    }

    return var_6;
}

_ID29318()
{
    self endon( "death" );
    self endon( "end_mg_behavior" );
    self._ID9442 = undefined;

    for (;;)
    {
        _unknown_0583();
        wait 0.05;
    }
}

_ID29322()
{
    if ( !_func_1A7( self._ID322 ) )
        return;

    if ( !self _meth_81CA( self._ID322 ) )
        return;

    self._ID21799 = self._ID322 _meth_80AF();
    self notify( "saw_enemy" );

    if ( !_func_1A7( self._ID9442 ) || self._ID9442 != self._ID322 )
    {
        self._ID9442 = self._ID322;
        self notify( "new_enemy" );
    }
}
