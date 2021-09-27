// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52838()
{
    self endon( "head_tracking_end" );
    self endon( "death" );
    self._ID52838 = 1;
    self._ID51764 = self._ID680;

    for (;;)
    {
        wait 0.2;

        if ( _func_0F3( self._ID740, level._ID794._ID740 ) <= 200 && _ID42407::_ID27540( self._ID740 ) )
        {
            self _meth_81C2( 60, 60, _func_0BA( 0.5, 2.0 ) );
            self _meth_820F( level._ID794, 1, _func_0B7( 5 ) == 0 );
            _ID42407::_ID45375( 5, 7 );
            self _meth_8210( 1 );
            _ID42407::_ID45375( 5, 7 );
        }
    }
}

_ID51252( var_0, var_1 )
{
    self notify( "head_tracking_end" );
    self._ID52838 = 0;
    var_2 = _func_02F( var_1 ) && var_1;

    if ( _func_02F( var_0 ) && var_0 )
        self _meth_820F();
    else
        self _meth_8210( 1, var_2 );
}

_ID48826( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_0 = _unknown_0310( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID794;

    if ( !_func_02F( var_2 ) )
        var_2 = 200;

    if ( !_func_02F( var_7 ) )
        var_7 = 0;

    if ( !_func_02F( var_9 ) )
        var_9 = 10;

    if ( !_func_02F( var_10 ) )
        var_10 = 0;

    var_3 = _unknown_033D( var_3, 0, 180, 60 );
    var_4 = _unknown_0348( var_4, 0, 180, 60 );
    var_5 = _unknown_0351( var_5, 0, 90, 30 );
    var_6 = _unknown_035B( var_6, 0, 90, 30 );
    var_11 = !_func_02F( self._ID49521 );

    if ( var_11 )
        self._ID49521 = _func_1A5();

    var_12 = var_5 != 0 || var_6 != 0;
    _unknown_01A9( var_0, var_1, var_12, var_7 );
    self._ID49521._ID51294 = 1;
    self._ID49521._ID53346 = var_2 * var_2;
    self._ID49521._ID45548 = 0.125;
    self._ID49521._ID49981 = var_3;
    self._ID49521._ID52168 = var_4;
    self._ID49521._ID44656 = var_5;
    self._ID49521._ID53875 = var_6;
    self._ID49521._ID44923 = var_9;
    self._ID49521._ID48064 = var_10;

    if ( _func_02F( var_8 ) )
        self._ID49521._ID26401 = var_8;
    else if ( !_func_02F( self._ID49521._ID26401 ) )
        self._ID49521._ID26401 = 0;

    if ( var_11 )
        thread _unknown_02A3();
}

_ID45228()
{
    if ( _func_02F( self._ID49521 ) )
        self._ID49521._ID51294 = 0;
}

_ID46847()
{
    if ( _func_02F( self._ID49521 ) )
        self._ID49521._ID26401 = 1;
}

_ID44171()
{
    if ( _func_02F( self._ID49521 ) )
        self._ID49521._ID26401 = 0;
}
#using_animtree("generic_human");

_ID46948( var_0, var_1, var_2, var_3 )
{
    var_4 = !_func_02F( self._ID49521._ID1244 ) || self._ID49521._ID1244 != var_0;
    var_5 = !_func_02F( self._ID49521._ID1191 ) || self._ID49521._ID1191 != var_1;
    var_6 = _func_02F( self._ID49521._ID48751 ) && self._ID49521._ID48751;
    var_7 = var_6 != var_2;
    var_8 = _func_02F( self._ID49521._ID54118 ) && self._ID49521._ID54118;
    var_9 = var_8 != var_3;

    if ( var_4 )
    {
        var_10 = _unknown_0312( self._ID49521._ID1244 );
        var_11 = var_10[0];
        var_12 = var_10[1];
        var_clear_2
        var_13 = _unknown_0323( var_0 );
        var_14 = var_13[0];
        var_15 = var_13[1];
        var_clear_2
        _unknown_034A( %h2_headtracking_addleft, var_11, var_14 );
        _unknown_0357( %h2_headtracking_addright, var_12, var_15 );
    }

    if ( var_7 )
    {
        var_16 = _unknown_035A( self._ID49521._ID48751 );
        var_17 = var_16[0];
        var_18 = var_16[1];
        var_clear_2
        var_19 = _unknown_036B( var_2 );
        var_20 = var_19[0];
        var_21 = var_19[1];
        var_clear_2
        _unknown_038D( %h2_headtracking_addup, var_17, var_20 );
        _unknown_039A( %h2_headtracking_adddown, var_18, var_21 );
    }

    if ( var_9 || var_5 )
    {
        var_22 = _func_02F( self._ID49521._ID36185 ) && self._ID49521._ID36185 == ::_unknown_0456;

        if ( var_22 )
        {
            if ( var_8 )
                self _meth_8210();
            else
                self _meth_820F( var_1, 1, 0, 1 );
        }
    }

    self._ID49521._ID1244 = var_0;
    self._ID49521._ID1191 = var_1;
    self._ID49521._ID48751 = var_2;
    self._ID49521._ID54118 = var_3;
}

_ID51144( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return [ undefined, undefined ];

    return [[ var_0 ]]();
}

_ID46430( var_0 )
{
    if ( _func_02F( var_0 ) && var_0 )
        return [ %h2_lookat_head_45up, %h2_lookat_head_45down ];

    return [ undefined, undefined ];
}

_ID49663( var_0, var_1, var_2 )
{
    if ( _func_02F( var_1 ) && _func_02F( var_2 ) )
    {
        self _meth_814C( var_1, 0.35 );
        self _meth_8156( var_2, 1, 0.35 );
        return;
    }

    if ( _func_02F( var_2 ) )
    {
        self _meth_8156( var_2, 1, 0 );
        self _meth_8156( var_0, 0, 0 );
        return;
    }

    if ( _func_02F( var_1 ) )
        self _meth_814C( var_0, 0.35 );
}

_ID50050()
{
    self endon( "death" );
    self endon( "additive_headtracking_killed" );
    self._ID49521._ID36185 = ::_unknown_04F8;
    self._ID49521._ID53938 = 0;
    self._ID49521._ID47320 = 0;
    self._ID49521._ID51183 = 0;
    self._ID49521._ID48018 = 0;

    for (;;)
    {
        if ( _unknown_04E3() )
        {
            if ( self._ID49521._ID36185 != ::_unknown_0542 )
            {
                if ( self._ID49521._ID54118 )
                    self _meth_820F( self._ID49521._ID1191, 1, 0, 1 );

                self._ID49521._ID36185 = ::_unknown_055C;
                _unknown_052A();
            }
        }
        else if ( self._ID49521._ID36185 != ::_unknown_0556 && self._ID49521._ID36185 != ::_unknown_059B )
        {
            if ( self._ID49521._ID54118 )
                self _meth_8210();

            self._ID49521._ID36185 = ::_unknown_05AD;
            _unknown_055D();
        }

        [[ self._ID49521._ID36185 ]]();
        waittillframeend;
    }
}

_ID49216()
{
    if ( !self._ID49521._ID51294 || self._ID49521._ID26401 )
        return 0;

    if ( _func_0F5( self._ID740, self._ID49521._ID1191._ID740 ) > self._ID49521._ID53346 )
        return 0;

    var_0 = _unknown_065F();

    if ( var_0 < 0 - self._ID49521._ID52168 || var_0 > self._ID49521._ID49981 )
        return 0;

    self._ID49521._ID43279 = var_0;
    return 1;
}

_ID46396()
{
    self._ID49521._ID50853 = 1;
    self._ID49521._ID54213 = 1;
    self._ID49521._ID53938 = self._ID49521._ID47320;
    self._ID49521._ID51183 = self._ID49521._ID48018;
}

_ID53708()
{
    self _meth_814C( %h2_headtracking_addleft, 0 );
    self _meth_814C( %h2_headtracking_addright, 0 );
    self _meth_814C( %h2_headtracking_addup, 0 );
    self _meth_814C( %h2_headtracking_adddown, 0 );
    self._ID49521 = undefined;
    self notify( "additive_headtracking_killed" );
}

_ID44269()
{
    if ( !self._ID49521._ID51294 )
    {
        if ( self _meth_815A( %h2_headtracking_addleft ) == 0.0 && self _meth_815A( %h2_headtracking_addright ) == 0.0 && self _meth_815A( %h2_headtracking_addup ) == 0.0 && self _meth_815A( %h2_headtracking_adddown ) == 0.0 )
            _unknown_0671();
    }
}

_ID43742()
{
    var_0 = _func_0EE( self._ID49521._ID43279, 0 - self._ID49521._ID52168, self._ID49521._ID49981 );
    _unknown_06EB( var_0 );

    if ( self._ID49521._ID48751 )
    {
        var_1 = _unknown_0764();
        var_1 = _func_0EE( var_1, 0 - self._ID49521._ID53875, self._ID49521._ID44656 );
        _unknown_073C( var_1 );
    }
}

_ID50795()
{
    var_0 = self _meth_815A( %h2_headtracking_addup );
    var_1 = self _meth_815A( %h2_headtracking_adddown );
    return var_1 - var_0 * 45;
}

_ID53764()
{
    _unknown_0731( 0 );

    if ( self._ID49521._ID48751 )
        _unknown_076D( 0 );

    if ( self._ID49521._ID50853 == 1 && self._ID49521._ID54213 == 1 )
        self._ID49521._ID36185 = ::_unknown_070C;
}

_ID48192( var_0 )
{
    var_1 = self._ID49521._ID50853;

    if ( var_1 < 1 )
        var_1 = _func_0C4( var_1 + self._ID49521._ID45548, 1 );
    else if ( _func_0C3( var_0 - self._ID49521._ID53938 ) > 10 )
        var_1 = self._ID49521._ID45548;

    self._ID49521._ID50853 = var_1;
    var_2 = var_1 * var_1 * 3 - 2 * var_1;
    var_3 = var_2 * var_0 + 1 - var_2 * self._ID49521._ID53938;
    self _meth_8156( %h2_headtracking_addleft, _func_0EE( var_3 / 90, 0, 2 ), 0.1 );
    self _meth_8156( %h2_headtracking_addright, _func_0EE( var_3 / -90, 0, 2 ), 0.1 );
    self._ID49521._ID47320 = var_3;

    if ( var_1 == 1 )
        self._ID49521._ID53938 = var_0;
}

_ID46122( var_0 )
{
    var_1 = self._ID49521._ID54213;

    if ( var_1 < 1 )
        var_1 = _func_0C4( var_1 + self._ID49521._ID45548, 1 );
    else if ( _func_0C3( var_0 - self._ID49521._ID51183 ) > 7.5 )
        var_1 = self._ID49521._ID45548;

    self._ID49521._ID54213 = var_1;
    var_2 = var_1 * var_1 * 3 - 2 * var_1;
    var_3 = var_2 * var_0 + 1 - var_2 * self._ID49521._ID51183;
    self _meth_8156( %h2_headtracking_adddown, _func_0EE( var_3 / 45, 0, 2 ), 0.1 );
    self _meth_8156( %h2_headtracking_addup, _func_0EE( var_3 / -45, 0, 2 ), 0.1 );
    self._ID49521._ID48018 = var_3;

    if ( var_1 == 1 )
        self._ID49521._ID51183 = var_0;
}

_ID53039()
{
    var_0 = self._ID49521._ID1191._ID740;
    var_1 = self._ID740;
    var_2 = _func_11B( var_0 - var_1 );
    var_3 = self._ID65[1] + self._ID49521._ID48064;
    var_4 = _func_0F0( var_2 - var_3 );
    return var_4;
}

_ID53640()
{
    var_0 = self._ID49521._ID1191 _meth_80AF();
    var_1 = _func_11A( var_0 - self _meth_80AF() );
    var_2 = _func_0F0( var_1[0] + self._ID49521._ID44923 );
    var_3 = self _meth_818D( "J_HEAD" );
    var_4 = _func_256( var_3 );
    var_5 = _func_11A( 0 - var_4["right"] );
    var_6 = _func_0F0( var_1[1] - var_5[1] );

    if ( var_6 < 0 - self._ID49521._ID52168 || var_6 > self._ID49521._ID49981 )
        return 0;

    var_7 = _func_0F0( var_5[0] );
    var_2 -= var_7 - _unknown_08EB();
    return var_2;
}

_ID54619( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_0 ) )
        return var_3;

    return _func_0EE( var_0, var_1, var_2 );
}

_ID50687( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return ::_unknown_09D9;

    if ( _func_031( var_0 ) )
    {
        switch ( var_0 )
        {

        }
    }

    if ( _func_314( var_0 ) )
    {
        return var_0;
        case "upperbody":
        case "fullbody":
        case "head":
        default:
    }
}

_ID45723()
{
    return [ %h2_lookat_head_90l, %h2_lookat_head_90r ];
}

_ID48636()
{
    return [ %h2_lookat_upper_90l, %h2_lookat_upper_90r ];
}

_ID48069()
{
    return [ %h2_lookat_full_90l, %h2_lookat_full_90r ];
}
