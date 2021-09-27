// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19772()
{
    if ( _func_02F( level._ID30018 ) )
        return;

    level._ID30018 = 1;
    level._ID1426["riot_shield_dmg"] = _func_155( "fx/misc/riot_shield_dmg" );

    if ( !_func_02F( level._ID36742 ) )
        level._ID36742 = [];

    level._ID36742["riotshield"] = ::_unknown_0035;
    animscripts\riotshield\riotshield::_ID19774();
}

_ID36741()
{
    animscripts\riotshield\riotshield::_ID19773();
}

_ID30024()
{
    animscripts\riotshield\riotshield::_ID30024();
}

_ID30012()
{
    animscripts\riotshield\riotshield::_ID30012();
}

_ID30023()
{
    animscripts\riotshield\riotshield::_ID30023();
}

_ID30011()
{
    animscripts\riotshield\riotshield::_ID30011();
}

_ID30014()
{
    if ( self._ID36736 != "riotshield" )
        return;

    self._ID199 = "cover";
    self._ID452 = 2048;
    self._ID51437 = undefined;
    animscripts\riotshield\riotshield::_ID30017();
    var_0 = self _meth_81FE();

    if ( _func_02F( var_0 ) )
        self _meth_8200( var_0 );
}

_ID17441( var_0, var_1, var_2 )
{
    var_3 = [];
    var_4 = var_0;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_5._ID199 != "no_cover" )
            continue;

        var_3[var_3.size] = var_5;
    }

    var_clear_2
    var_clear_0
    var_7 = _func_1A5();
    var_8 = var_3;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_5 = var_8[var_9];

        if ( _func_02F( var_5._ID17437 ) && _func_02F( var_5._ID17437._ID2237 ) )
            var_5._ID17437._ID2237 = _ID42237::_ID3321( var_5._ID17437._ID2237, var_5 );

        var_5._ID17437 = var_7;
    }

    var_clear_1
    var_clear_0
    var_7._ID2237 = var_3;
    var_7._ID14549 = 1;
    var_7._ID35001 = 50;
    var_7 thread _unknown_01D2();
    return var_7;
}

_ID17451( var_0, var_1 )
{
    self._ID2237 = _ID42407::_ID3328( self._ID2237 );
    self._ID409 = var_0;

    if ( _func_02F( var_1 ) )
        self._ID35001 = var_1;

    var_2 = self._ID2237;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID452 = 25;
        var_3._ID23429 = _func_0ED( 160 );
        var_3._ID51437 = 1;
        var_3._ID760 = 128;
        var_3._ID761 = 128;
    }

    var_clear_2
    var_clear_0
    _unknown_01EF();
    thread _unknown_029A();
}

_ID17459()
{
    self endon( "break_group" );

    if ( self._ID2237.size == 0 )
        return;

    while ( self._ID2237.size )
    {
        _ID42407::_ID41089( self._ID2237, 1 );

        if ( self._ID17457 != "stopped" )
            self waittill( "goal" );

        self._ID2237 = _ID42407::_ID3328( self._ID2237 );
        _unknown_022B();
    }
}

_ID17463( var_0 )
{
    if ( self._ID2237.size == 0 )
        return;

    if ( _func_02F( var_0 ) )
        self._ID409 = var_0;
    else
        var_0 = self._ID409;

    var_1 = _unknown_0398();
    var_2 = ( self._ID409[1], -1 * self._ID409[0], 0 );
    var_3 = var_2 * self._ID35001;
    var_4 = _unknown_02B9( var_1, var_3 );
    var_5 = [];

    for ( var_6 = 0; var_6 < self._ID2237.size; var_6++ )
    {
        if ( _func_02F( self._ID2237[var_6] ) )
        {
            var_5[var_6] = _func_0FB( var_4 - self._ID2237[var_6]._ID740, var_2 );
            continue;
        }

        var_5[var_6] = 0;
    }

    for ( var_6 = 1; var_6 < var_5.size; var_6++ )
    {
        var_7 = var_5[var_6];
        var_8 = self._ID2237[var_6];

        for ( var_9 = var_6 - 1; var_9 >= 0; var_9-- )
        {
            if ( var_7 < var_5[var_9] )
                break;

            var_5[var_9 + 1] = var_5[var_9];
            self._ID2237[var_9 + 1] = self._ID2237[var_9];
        }

        var_5[var_9 + 1] = var_7;
        self._ID2237[var_9 + 1] = var_8;
    }
}

_ID17440()
{
    for (;;)
    {
        if ( self._ID14549 > 0 )
        {
            self._ID2237 = _ID42407::_ID3328( self._ID2237 );

            if ( self._ID2237.size <= self._ID14549 )
            {
                var_0 = self._ID2237;

                for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
                {
                    var_1 = var_0[var_2];
                    var_1 _unknown_02A2();
                }

                var_clear_2
                var_clear_0
                self notify( "break_group" );
                break;
            }
        }

        wait 1;
    }
}

_ID17452( var_0, var_1 )
{
    return var_0 - self._ID2237.size - 1 / 2 * var_1;
}

_ID17456( var_0, var_1 )
{
    self notify( "new_goal_set" );
    self._ID17457 = "moving";

    if ( _func_02F( var_1 ) )
        self._ID409 = var_1;
    else
        var_1 = self._ID409;

    var_2 = ( var_1[1], -1 * var_1[0], 0 );
    var_3 = var_2 * self._ID35001;
    var_4 = _unknown_03C6( var_0, var_3 );

    for ( var_5 = 0; var_5 < self._ID2237.size; var_5++ )
    {
        var_6 = self._ID2237[var_5];

        if ( _func_02F( var_6 ) )
            var_6 _meth_81B2( var_4 );

        var_4 += var_3;
    }

    thread _unknown_0410();
}

_ID7366()
{
    self endon( "new_goal_set" );

    for (;;)
    {
        wait 0.5;
        var_0 = 0;
        var_1 = self._ID2237;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( _func_02F( var_2 ) && _func_1A7( var_2 ) )
                var_0++;
        }

        var_clear_4
        var_clear_2
        var_4 = 0;

        for ( var_5 = 0; var_5 < self._ID2237.size; var_5++ )
        {
            var_2 = self._ID2237[var_5];

            if ( _func_02F( var_2 ) )
            {
                var_6 = _func_0E6( 45, var_2._ID452 );

                if ( _func_0F5( var_2._ID740, var_2._ID451 ) < _func_0ED( var_6 ) )
                    var_4++;
            }
        }

        if ( var_4 == var_0 )
        {
            self notify( "goal" );
            self._ID17457 = "stopped";
        }
    }
}

_ID7367()
{
    self endon( "break_group" );

    for (;;)
    {
        wait 0.5;
        var_0 = 0;
        var_1 = self._ID2237;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( _func_02F( var_2 ) && _func_1A7( var_2 ) )
                var_0++;
        }

        var_clear_5
        var_clear_3
        var_4 = 0;
        var_5 = _func_11B( self._ID409 );

        for ( var_6 = 0; var_6 < self._ID2237.size; var_6++ )
        {
            var_2 = self._ID2237[var_6];

            if ( _func_02F( var_2 ) )
            {
                if ( _func_0C3( var_2._ID65[1] - var_5 ) < 45 )
                    var_4++;
            }
        }

        if ( var_4 == var_0 )
            self notify( "goal_yaw" );
    }
}

_ID17465()
{
    var_0 = self._ID2237;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_1A7( var_1 ) )
            var_1 _unknown_0447();
    }

    var_clear_2
    var_clear_0
}

_ID17443()
{
    var_0 = self._ID2237;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_1A7( var_1 ) )
            var_1 _unknown_0471();
    }

    var_clear_2
    var_clear_0
}

_ID17464()
{
    var_0 = self._ID2237;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_1A7( var_1 ) )
            var_1 _unknown_049A();
    }

    var_clear_2
    var_clear_0
}

_ID17442()
{
    var_0 = self._ID2237;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_1A7( var_1 ) )
            var_1 _unknown_04C4();
    }

    var_clear_2
    var_clear_0
}

_ID17454( var_0 )
{
    self._ID409 = var_0;
    var_1 = _func_11B( var_0 );
    var_2 = self._ID2237;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3 ) )
            continue;

        if ( _func_02F( var_3._ID322 ) && _func_0F5( var_3._ID740, var_3._ID322._ID740 ) < _func_0ED( var_3._ID760 ) )
            continue;

        var_3 _meth_819B( "face angle", var_1 );
        var_3._ID597 = 1;
    }

    var_clear_2
    var_clear_0
    wait 0.1;
}

_ID17467()
{
    var_0 = self._ID2237;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_02F( var_1 ) )
            continue;

        var_1 _meth_819B( "face default" );
        var_1._ID597 = 0;
    }

    var_clear_2
    var_clear_0
}

_ID17447()
{
    _unknown_0706();
    var_0 = self._ID2237;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_02F( var_1 ) )
            continue;

        var_1._ID452 = 2048;
        var_1._ID760 = 400;
        var_1._ID761 = 400;
    }

    var_clear_2
    var_clear_0
}

_ID17439()
{
    var_0 = ( 0, 0, 0 );
    var_1 = 0;
    var_2 = self._ID2237;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3 ) )
        {
            var_0 += var_3._ID740;
            var_1++;
        }
    }

    var_clear_2
    var_clear_0

    if ( var_1 )
        var_0 = 1 / var_1 * var_0;

    return var_0;
}
