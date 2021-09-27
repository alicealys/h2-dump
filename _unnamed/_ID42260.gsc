// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("animated_props");

_ID616()
{
    waitframe;
    _unknown_0052();
    thread _unknown_018C();
    level._ID19579 = [];
    level._ID3056 = #animtree;

    if ( !_func_02F( level._ID3055 ) )
        level._ID3055 = [];

    if ( !_func_02F( level._ID3054 ) )
        level._ID3054 = [];

    var_0 = _func_1A2( "animated_model", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_008E );

    if ( _func_02F( level._ID19579 ) && level._ID19579.size )
    {
        var_1 = " ";
        var_2 = level._ID19579;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            var_1 += var_3 + " ";
        }

        var_clear_2
        var_clear_0
    }

    var_5 = var_0;

    for ( var_12 = _func_1DA( var_5 ); _func_02F( var_12 ); var_12 = _func_1BF( var_5, var_12 ) )
    {
        var_6 = var_5[var_12];

        if ( _func_02F( level._ID3054[var_6._ID669] ) )
        {
            var_6 thread [[ level._ID3054[var_6._ID669] ]]();
            continue;
        }

        var_7 = _func_1D9( level._ID3055[var_6._ID669] );
        var_8 = 0;
        var_9 = var_7;

        for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
        {
            var_10 = var_9[var_11];

            if ( var_10 == "still" )
            {
                var_8 = 1;
                break;
            }
        }

        var_clear_2
        var_clear_0

        if ( var_8 )
            var_6 thread _unknown_015B();
        else
            var_6 thread _unknown_0154();
    }

    var_clear_2
    var_clear_0
}

_ID19836()
{
    if ( _func_02F( level._ID41775 ) )
        return;

    level._ID41775 = _func_1A5();
    level._ID41775._ID855 = 0.4;
    level._ID41775._ID1318 = 1;
    level._ID41775._ID40040 = 0.2;
}

_ID23870()
{
    if ( !_func_02F( level._ID3055[self._ID669] ) )
    {
        if ( !_unknown_018D( level._ID19579, self._ID669 ) )
            level._ID19579[level._ID19579.size] = self._ID669;
    }
}

_ID2814( var_0, var_1 )
{
    if ( var_0.size <= 0 )
        return 0;

    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == var_1 )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID3175()
{
    self _meth_811E( #animtree );
    var_0 = _func_1D9( level._ID3055[self._ID669] );
    var_1 = var_0[_func_0B7( var_0.size )];
    var_2 = level._ID3055[self._ID669][var_1];
    self _meth_8155( var_2, 1, self _meth_8159( var_2 ), 1 );
    self _meth_8120( var_2, _func_0BA( 0, 1 ) );
}

_ID3177()
{
    self endon( "removed" );
    childthread _unknown_0252();
    self _meth_811E( #animtree );
    var_0 = "strong";

    for (;;)
    {
        childthread _unknown_0240( var_0 );
        level waittill( "windchange",  var_0  );
    }
}

_ID5289( var_0 )
{
    level endon( "windchange" );
    var_1 = level._ID41775._ID1318;
    var_2 = level._ID41775._ID855 + _func_0B8( level._ID41775._ID40040 );
    self _meth_8155( level._ID3055[self._ID669]["still"], 1, self _meth_8159( level._ID3055[self._ID669]["still"] ), var_2 );
    self _meth_8155( level._ID3055[self._ID669][var_0], var_1, self _meth_8159( level._ID3055[self._ID669][var_0] ), var_2 );
}

_ID49623()
{
    var_0 = _func_1D9( level._ID3055[self._ID669] );
    return _ID42237::_ID3303( var_0, "heli" );
}

_ID44900()
{
    if ( !_unknown_02CF() )
        return;

    self._ID50300 = 0.0;
    self._ID43834 = 0.025;
    self._ID54335 = 2000;

    if ( _func_02F( level._ID54335 ) )
        self._ID54335 = level._ID54335;

    self._ID45020 = self._ID54335 * self._ID54335;
    childthread _unknown_0358();
    childthread _unknown_0380();
}

_ID45950( var_0, var_1, var_2 )
{
    var_2 = var_2 - var_0 / var_1 - var_0;
    var_3 = _func_0EE( var_2, 0.0, 1.0 );
    return var_3 * var_3 * 3 - 2 * var_3;
}

_ID50594( var_0 )
{
    var_1 = _func_0F5( var_0._ID740, self._ID740 );
    self._ID45250 = var_0._ID740;
    return 1.0 - _func_0EE( var_1 / self._ID45020, 0.0, 1.0 );
}

_ID45726( var_0 )
{
    var_1 = _func_0F5( var_0._ID740, self._ID740 );
    self._ID45250 = var_0._ID740;
    return 1.0 - _func_0EE( _func_0EC( var_1 / self._ID45020 ), 0.0, 1.0 );
}

_ID54156()
{
    var_0 = 1e+08.0;
    var_1 = 0;

    for ( var_2 = 0; var_2 < level._ID46405.size; var_2++ )
    {
        var_3 = level._ID46405[var_2];

        if ( !_func_02F( var_3 ) )
            continue;

        var_4 = _func_0F5( var_3._ID740, self._ID740 );

        if ( var_4 < var_0 )
        {
            var_0 = var_4;
            var_1 = var_2;
        }
    }

    return level._ID46405[var_1];
}

_ID48958()
{
    if ( self._ID50300 > 0.0 )
    {
        var_0 = _func_0EE( self._ID50300 - self._ID43834, 0.0, 1.0 );
        var_1 = _unknown_03EA( 0.0, 1.0, var_0 );
        self._ID50300 = var_1;
    }
}

_ID54689()
{
    var_0 = 0.15;

    if ( _func_02F( level._ID52661 ) && level._ID52661 )
        var_0 = level._ID52661;

    for (;;)
    {
        var_1 = _unknown_042E();

        if ( _func_02F( var_1 ) )
        {
            var_2 = 0;

            if ( _func_02F( level._ID44935 ) )
                var_2 = self [[ level._ID44935 ]]( var_1 );
            else
                var_2 = _unknown_0432( var_1 );

            if ( var_2 < level._ID43124 )
                var_2 = 0;

            if ( var_2 > 0 )
            {
                var_3 = _unknown_043F( 0.0, 1.0, var_2 );
                self._ID50300 = var_3;
            }
            else
                _unknown_0486();
        }
        else
            _unknown_048F();

        wait(var_0);
    }
}

_ID49629()
{
    self _meth_811E( #animtree );
    self _meth_8155( level._ID3055[self._ID669]["strong"], 1.0, 0.05, 1.0 );
    self _meth_8155( level._ID3055[self._ID669]["heli"], 0.0, 0.05, 1.0 );
    self _meth_814C( level._ID3055[self._ID669]["still"], 0.0 );
    var_0 = 0.15;

    if ( _func_02F( level._ID52661 ) && level._ID52661 )
        var_0 = level._ID52661;

    var_1 = 0.0;

    for (;;)
    {
        var_2 = self _meth_815A( level._ID3055[self._ID669]["heli"] );
        var_3 = self._ID50300 - var_2;
        var_4 = _func_0EE( var_3, -1 * self._ID43834, self._ID43834 );
        var_5 = var_2 + var_4;

        if ( _func_02F( level._ID51047 ) && level._ID51047 )
            self _meth_814C( level._ID3055[self._ID669]["still"], 0.0 );

        if ( var_5 != var_1 )
        {
            var_1 = var_5;
            self _meth_8155( level._ID3055[self._ID669]["strong"], 1.0 - var_5, var_0, 1.0 );
            self _meth_8155( level._ID3055[self._ID669]["heli"], var_5, var_0, 1.0 );
            self _meth_8155( level._ID3055[self._ID669]["still"], 0.0, var_0, 1.0 );
            wait(var_0);
            continue;
        }

        wait 0.5;
    }
}

_ID54389()
{
    level._ID46405 = [];
    var_0 = _func_1A2();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID1282 ) )
        {
            if ( var_2 _ID42411::_ID20763() )
                var_2 thread _unknown_0652();
        }
    }

    var_clear_2
    var_clear_0
}

_ID49009()
{
    if ( _func_1A8( self ) )
        self waittill( "spawned",  var_0  );
    else
        var_0 = self;

    level._ID46405[level._ID46405.size] = var_0;
    var_1 waittill( "death",  var_1  );

    if ( _func_02F( var_1 ) )
    {
        waitframe;

        if ( _func_02F( var_0._ID9056 ) && var_0._ID9056 )
            var_0 waittill( "crash_done" );
    }

    level._ID46405 = _ID42237::_ID3321( level._ID46405, var_0 );
}

_ID51416()
{
    self notify( "removed" );
}
