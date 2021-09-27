// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID38165()
{
    self endon( "killanimscript" );
    self endon( "stop tracking" );
    self endon( "melee" );
    _unknown_003E( %aim_2, %aim_4, %aim_6, %aim_8 );
}

_ID38149( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0;
    var_6 = 0;
    var_7 = ( 0, 0, 0 );
    var_8 = 1;
    var_9 = 0;
    var_10 = 0;
    var_11 = 10;
    var_12 = ( 0, 0, 0 );
    var_13 = 0;
    var_14 = 0;
    var_15 = 0;
    var_16 = 0;
    var_17 = 0.1;
    var_18 = 0;

    if ( self._ID1244 == "dog" )
    {
        var_19 = 0;
        self._ID33785 = self._ID322;
    }
    else
    {
        var_19 = 1;
        var_20 = 0;
        var_21 = 0;

        if ( _func_02F( self._ID8867 ) )
            var_20 = anim._ID8868;

        var_22 = self._ID912;

        if ( var_22 == "cover_multi" )
        {
            if ( self._ID217._ID36185 == "right" )
                var_22 = "cover_right";
            else if ( self._ID217._ID36185 == "left" )
                var_22 = "cover_left";
        }

        if ( var_22 == "cover_left" || var_22 == "cover_right" && _func_02F( self._ID7._ID8746 ) && self._ID7._ID8746 == "lean" )
            var_21 = self._ID8893._ID65[1] - self._ID65[1];

        var_12 = ( var_20, var_21, 0 );
    }

    for (;;)
    {
        _unknown_0340();

        if ( self _meth_844F( "tag_flash" ) == -1 )
        {
            wait 0.05;
            continue;
        }

        var_23 = animscripts\shared::_ID16587();
        var_24 = self._ID33810;

        if ( _func_02F( self._ID33785 ) )
        {
            if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
                var_24 = animscripts\combat_utility::_ID15797( self._ID33785 );
            else
                var_24 = self._ID33785 _meth_809E();
        }
        else if ( _func_02F( var_24 ) && _func_02F( self._ID50737 ) && _func_02F( self._ID322 ) )
            var_24 = self._ID322 _meth_809E();

        if ( !_func_02F( var_24 ) && animscripts\utility::_ID33934() )
            var_24 = _unknown_028F( var_23 );

        var_25 = _func_02F( self._ID25834 ) || _func_02F( self._ID25683 );
        var_26 = _func_02F( var_24 );
        var_27 = ( 0, 0, 0 );

        if ( var_26 )
            var_27 = var_24;

        var_28 = 0;
        var_29 = _func_02F( self._ID36397 );

        if ( var_29 )
            var_28 = self._ID36397;

        if ( _func_02F( self._ID700 ) && _func_02F( self._ID700._ID46953 ) && self._ID700._ID46953 != 0 )
            var_25 = 1;

        var_7 = self _meth_81C7( var_23, var_27, var_26, var_12, var_28, var_29, var_25 );
        var_30 = var_7[0];
        var_31 = var_7[1];
        var_7 = undefined;
        var_32 = undefined;

        if ( self._ID7._ID28253 == "prone" )
        {
            var_32 = self._ID54135;
            var_30 = _func_0EE( var_30, var_32._ID307, var_32._ID1252 );
            var_31 = _func_0EE( var_31, var_32._ID590, var_32._ID894 );
        }
        else
        {
            var_32 = _func_1A5();
            var_32._ID894 = self._ID894;
            var_32._ID590 = self._ID590;
            var_32._ID1252 = self._ID1252;
            var_32._ID307 = self._ID307;
        }

        if ( animscripts\utility::_ID20915() )
        {
            var_33 = self._ID65[2] * -1;
            var_34 = var_30 * _func_0BC( var_33 ) - var_31 * _func_0BB( var_33 );
            var_35 = var_30 * _func_0BB( var_33 ) + var_31 * _func_0BC( var_33 );
            var_30 = var_34;
            var_31 = var_35;
            var_30 = _func_0EE( var_30, var_32._ID307, var_32._ID1252 );
            var_31 = _func_0EE( var_31, var_32._ID590, var_32._ID894 );
        }

        if ( var_10 > 0 )
        {
            var_10 -= 1;
            var_11 = _func_0E6( 10, var_11 - 5 );
        }
        else if ( self._ID866 && self._ID866 != var_9 )
        {
            var_10 = 2;
            var_11 = 30;
        }
        else
            var_11 = 10;

        var_36 = _func_0ED( var_11 );
        var_9 = self._ID866;
        var_37 = var_31 - var_5;

        if ( _func_0ED( var_37 ) > var_36 )
        {
            var_31 = var_5 + _func_0EE( var_37, -1 * var_11, var_11 );
            var_31 = _func_0EE( var_31, var_32._ID590, var_32._ID894 );
        }

        var_38 = var_30 - var_6;

        if ( _func_0ED( var_38 ) > var_36 )
        {
            var_30 = var_6 + _func_0EE( var_38, -1 * var_11, var_11 );
            var_30 = _func_0EE( var_30, var_32._ID307, var_32._ID1252 );
        }

        var_8 = 0;
        var_5 = var_31;
        var_6 = var_30;
        _unknown_04DF( var_0, var_1, var_2, var_3, var_4, var_30, var_31, var_32 );
        wait 0.05;
    }
}

_ID38152( var_0 )
{
    var_1 = undefined;
    var_2 = _func_11F( self._ID65 );

    if ( _func_02F( self._ID8923 ) )
    {
        if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
            var_1 = animscripts\combat_utility::_ID15797( self._ID8923 );
        else
            var_1 = self._ID8923 _meth_809E();

        if ( _func_02F( self._ID8927 ) )
        {
            if ( _func_0FB( _func_119( var_1 - var_0 ), var_2 ) < 0.177 )
                var_1 = undefined;
        }
        else if ( _func_0FB( _func_119( var_1 - var_0 ), var_2 ) < 0.643 )
            var_1 = undefined;
    }

    if ( !_func_02F( var_1 ) && _func_02F( self._ID8921 ) )
    {
        var_1 = self._ID8921;

        if ( _func_02F( self._ID8926 ) )
        {
            if ( _func_0FB( _func_119( var_1 - var_0 ), var_2 ) < 0.177 )
                var_1 = undefined;
        }
        else if ( _func_0FB( _func_119( var_1 - var_0 ), var_2 ) < 0.643 )
            var_1 = undefined;
    }

    return var_1;
}

_ID38150( var_0, var_1 )
{
    if ( animscripts\utility::_ID29285() )
    {
        var_2 = self._ID322 _meth_809E() - self._ID322._ID740;
        var_3 = self _meth_81CD( self._ID322 ) + var_2;
        return _unknown_0544( var_3 - var_0, var_1 );
    }

    var_4 = 0;
    var_5 = 0;

    if ( _func_02F( self._ID700 ) && _func_02F( anim._ID20711[self._ID700._ID1244] ) && _func_0F5( self._ID740, self._ID700._ID740 ) < 16 )
        var_5 = _func_0F0( self._ID65[1] - self._ID700._ID65[1] );
    else
    {
        var_6 = self _meth_819E();

        if ( _func_02F( var_6 ) )
        {
            var_5 = _func_0F0( self._ID65[1] - var_6[1] );
            var_4 = _func_0F0( 360 - var_6[0] );
        }
    }

    return ( var_4, var_5, 0 );
}

_ID38153( var_0, var_1 )
{
    var_2 = _func_11A( var_0 );
    var_3 = 0;
    var_4 = 0;

    if ( self._ID1012 == "up" )
    {
        if ( !_func_02F( self._ID23165 ) || _func_02F( self._ID23165 ) && !self._ID23165 )
            var_3 = -40;
    }
    else if ( self._ID1012 == "down" )
    {
        if ( !_func_02F( self._ID23165 ) || _func_02F( self._ID23165 ) && !self._ID23165 )
        {
            var_3 = 40;
            var_4 = 12;
        }
    }

    var_5 = 360 - var_2[0];
    var_5 = _func_0F0( var_5 + var_1[0] + var_3 );

    if ( _func_02F( self._ID36397 ) )
        var_6 = self._ID36397 - var_2[1];
    else
    {
        var_7 = _func_0F0( self._ID278 - self._ID65[1] ) * 0.5;
        var_6 = var_7 + self._ID65[1] - var_2[1];
    }

    var_6 = _func_0F0( var_6 + var_1[1] + var_4 );
    return ( var_5, var_6, 0 );
}

_ID38151( var_0, var_1, var_2 )
{
    if ( _func_02F( self._ID25834 ) || _func_02F( self._ID25683 ) )
    {
        if ( var_1 > self._ID894 || var_1 < self._ID590 )
            var_1 = 0;

        if ( var_0 > self._ID1252 || var_0 < self._ID307 )
            var_0 = 0;
    }
    else if ( var_2 && _func_0C3( var_1 ) > anim._ID23081 || _func_0C3( var_0 ) > anim._ID23080 )
    {
        var_1 = 0;
        var_0 = 0;
    }
    else
    {
        if ( self._ID475 )
            var_1 = _func_0EE( var_1, -10, 10 );
        else
            var_1 = _func_0EE( var_1, self._ID590, self._ID894 );

        var_0 = _func_0EE( var_0, self._ID307, self._ID1252 );
    }

    return ( var_0, var_1, 0 );
}

_ID38154( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = 0;
    var_9 = 0;
    var_10 = 0;
    var_11 = 0;
    var_12 = 0;
    var_13 = 0.1;

    if ( _func_02F( self._ID2423 ) )
        var_13 = self._ID2423;

    if ( var_6 > 0 )
    {
        var_11 = _func_0EE( var_6 / self._ID50389._ID894 * self._ID7._ID2433, 0, 1 );
        var_10 = 1;
    }
    else if ( var_6 < 0 )
    {
        var_9 = _func_0EE( var_6 / self._ID50389._ID590 * self._ID7._ID2433, 0, 1 );
        var_10 = 1;
    }

    if ( var_5 > 0 )
    {
        var_12 = var_5 / var_7._ID1252 * self._ID7._ID2433;
        var_10 = 1;
    }
    else if ( var_5 < 0 )
    {
        var_8 = var_5 / var_7._ID307 * self._ID7._ID2433;
        var_10 = 1;
    }

    self _meth_8156( var_0, var_8, var_13, 1, 1 );
    self _meth_8156( var_1, var_9, var_13, 1, 1 );
    self _meth_8156( var_2, var_11, var_13, 1, 1 );
    self _meth_8156( var_3, var_12, var_13, 1, 1 );

    if ( _func_02F( var_4 ) )
        self _meth_8156( var_4, var_10, var_13, 1, 1 );
}

_ID32548( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) || var_1 <= 0 )
    {
        self._ID7._ID2433 = var_0;
        self._ID7._ID2435 = var_0;
        self._ID7._ID2434 = var_0;
        self._ID7._ID2437 = 0;
    }
    else
    {
        if ( !_func_02F( self._ID7._ID2433 ) )
            self._ID7._ID2433 = 0;

        self._ID7._ID2435 = self._ID7._ID2433;
        self._ID7._ID2434 = var_0;
        self._ID7._ID2437 = _func_0C1( var_1 * 20 );
    }

    self._ID7._ID2436 = 0;
}

_ID19507()
{
    if ( self._ID7._ID2436 < self._ID7._ID2437 )
    {
        self._ID7._ID2436++;
        var_0 = 1.0 * self._ID7._ID2436 / self._ID7._ID2437;
        self._ID7._ID2433 = self._ID7._ID2435 * 1 - var_0 + self._ID7._ID2434 * var_0;
    }
}
