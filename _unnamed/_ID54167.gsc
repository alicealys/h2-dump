// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49798( var_0 )
{
    if ( !_func_02F( level._ID49753 ) )
    {
        level._ID49753 = _func_1A5();
        level._ID49753._ID47246 = [];
        level._ID49753._ID46732 = 0;
    }

    if ( !_func_02F( level._ID49753._ID47246[var_0] ) )
    {
        var_1 = _unknown_0048( var_0 );
        var_1._ID48866 = level._ID49753._ID46732;
        level._ID49753._ID46732 = level._ID49753._ID46732 + 1;
        var_1._ID48245 = -1;
        level._ID49753._ID47246[var_0] = var_1;
    }

    return level._ID49753._ID47246[var_0];
}

_ID45926( var_0 )
{
    var_1 = _func_1A5();
    var_1._ID50910 = 22;
    var_1._ID54087 = 10000;
    var_1._ID54259 = 0;
    var_1._ID45134 = 1;
    var_1._ID53942 = 1;
    var_1._ID49085 = -180;
    var_1._ID52122 = 180;
    var_1._ID47970 = -180;
    var_1._ID51387 = 180;
    var_1._ID44285 = undefined;
    var_1._ID37062 = undefined;
    var_1._ID48550 = 1;
    var_1._ID25468 = undefined;
    var_1._ID52967 = 0;
    var_1._ID680 = var_0;
    var_1._ID49821 = 0;
    var_1._ID23606 = 0;
    var_1._ID23062 = 100000;
    var_1._ID44137 = 2.75;
    var_1._ID45309 = 0;
    var_1._ID48806 = 0;
    return var_1;
}

_ID48947()
{
    level._ID49753._ID51059 = 1;
}

_ID49481( var_0 )
{
    if ( _func_02F( level._ID49753._ID47246[var_0] ) )
    {
        level._ID49753._ID47246[var_0] = undefined;
        _unknown_0143();
    }
    else
    {

    }
}

_ID49015( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_0 ) )
        self._ID50910 = var_0;

    if ( _func_02F( var_1 ) )
        self._ID54087 = var_1;

    if ( _func_02F( var_2 ) )
        self._ID45134 = var_2;

    if ( _func_02F( var_3 ) )
        self._ID53942 = var_3;

    _unknown_0170();
    return self;
}

_ID48343( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID50910 = var_0;
    _unknown_0182();
    return self;
}

_ID53333( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID54087 = var_0;
    _unknown_0194();
    return self;
}

_ID54400( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID54259 = var_0;
    _unknown_01A6();
    return self;
}

_ID48173( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID45134 = var_0;
    _unknown_01B8();
    return self;
}

_ID48717( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID53942 = var_0;
    _unknown_01CA();
    return self;
}

_ID46614( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID44137 = var_0;
    _unknown_01DC();
    return self;
}

_ID49498( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_0 ) )
        self._ID47970 = _func_0F0( var_0 );

    if ( _func_02F( var_1 ) )
        self._ID51387 = _func_0F0( var_1 );

    if ( _func_02F( var_2 ) )
        self._ID49085 = _func_0F0( var_2 );

    if ( _func_02F( var_3 ) )
        self._ID52122 = _func_0F0( var_3 );

    if ( _func_02F( var_4 ) )
        self._ID48550 = var_4;

    _unknown_021D();
    return self;
}

_ID48674( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) || !_func_02F( var_1 ) )
        return self;

    self._ID23606 = var_0;
    self._ID23062 = var_1;
    _unknown_023B();
    return self;
}

_ID51166( var_0, var_1, var_2 )
{
    self._ID44285 = var_0;

    if ( _func_02F( var_1 ) )
        _unknown_02B9( var_1 );

    if ( _func_02F( var_2 ) )
        self._ID48550 = var_2;

    _unknown_025C();
    return self;
}

_ID45513( var_0 )
{
    self._ID37062 = var_0;
    _unknown_0267();
    return self;
}

_ID45137( var_0 )
{
    self._ID25468 = var_0;
    _unknown_0272();
    return self;
}

_ID44808( var_0 )
{
    level._ID49753._ID52021 = var_0;
    _unknown_0281();
    return self;
}

_ID44428( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID49821 = var_0;
    _unknown_0293();
    return self;
}

_ID48159( var_0 )
{
    self._ID48245 = var_0;
    _ID51166();
    return self;
}

_ID48308( var_0 )
{
    self._ID52967 = var_0;
    _unknown_02AA();
    return self;
}

_ID47992( var_0 )
{
    if ( !_func_02F( self._ID47218 ) )
        self._ID47218 = [];

    self._ID47218 = _ID42237::_ID3293( self._ID47218, var_0 );
    _unknown_02C5();
    return self;
}

_ID48015( var_0 )
{
    if ( _func_02F( self._ID47218 ) )
        self._ID47218 = _ID42237::_ID3321( self._ID47218, var_0 );

    _unknown_02DD();
    return self;
}

_ID47448( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID45309 = var_0;
    _unknown_02EF();
    return self;
}

_ID44640( var_0 )
{
    self._ID48806 = 1;
    self._ID49492 = 1.0;

    if ( _func_02F( var_0 ) && var_0 > 0 )
        self._ID49492 = var_0;

    _unknown_030E();
    return self;
}

_ID50670( var_0, var_1 )
{
    return self;
}

_ID44227()
{
    if ( _func_02F( level._ID49753 ) )
    {
        level._ID49753._ID47246 = [];
        _unknown_0329();
    }
}

_ID47615( var_0, var_1 )
{
    level endon( "stop_dynamic_dof" );

    if ( _func_02F( level._ID49753._ID20 ) )
        return;

    level._ID49753._ID20 = 1;

    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    if ( var_0 )
        _func_0DB( "r_dof_physical_bokehEnable", 1 );

    if ( !_func_02F( level._ID49753 ) && level._ID49753._ID47246.size <= 0 )
        return;

    if ( _func_02F( var_1 ) )
        thread _unknown_05D4( var_1 );

    level._ID794 _meth_84B8();
    var_2 = 0;
    var_3 = 0.05;
    var_4 = undefined;
    var_5 = 22.0;

    while ( level._ID49753._ID20 )
    {
        var_6 = level._ID794 _meth_8346();
        var_7 = undefined;
        var_8 = undefined;

        if ( level._ID794 _meth_806F() )
            var_8 = level._ID794 _meth_83F9()._ID65;
        else if ( _func_02F( level._ID794._ID743 ) )
            var_8 = level._ID794._ID743._ID65;

        if ( _func_02F( var_8 ) )
        {
            var_7 = var_8 - var_6;
            var_6 = _func_121( var_8, var_6 );
        }
        else
            var_7 = var_6;

        var_6 = ( _func_0F0( var_6[0] ), _func_0F0( var_6[1] ), _func_0F0( var_6[2] ) );
        var_7 = ( _func_0F0( var_7[0] ), _func_0F0( var_7[1] ), _func_0F0( var_7[2] ) );
        var_9 = _func_11F( var_6 );
        var_10 = level._ID794 _meth_80AF();

        if ( _func_02F( level._ID49753._ID52021 ) )
            var_10 = level._ID49753._ID52021;

        if ( _func_02F( level._ID49753._ID51059 ) )
        {
            var_4 = undefined;
            level._ID49753._ID51059 = undefined;
        }

        var_11 = undefined;
        var_12 = level._ID49753._ID47246;

        for ( var_26 = _func_1DA( var_12 ); _func_02F( var_26 ); var_26 = _func_1BF( var_12, var_26 ) )
        {
            var_13 = var_12[var_26];

            if ( !_func_02F( var_13 ) )
                continue;

            var_14 = 1;

            if ( _func_02F( var_13._ID44285 ) )
            {
                if ( _func_02F( var_13._ID37062 ) )
                {
                    if ( !_ID42407::_ID18252( var_13._ID44285._ID669, var_13._ID37062 ) )
                    {
                        if ( !_func_02F( var_13._ID44285._ID18304 ) )
                        {

                        }
                        else
                        {

                        }
                    }

                    var_13._ID45044 = var_13._ID44285 _meth_818C( var_13._ID37062 );
                }
                else
                    var_13._ID45044 = var_13._ID44285._ID740;

                if ( _func_02F( var_13._ID25468 ) )
                {
                    var_15 = _func_123( var_13._ID25468, var_13._ID44285._ID65 );
                    var_13._ID45044 = var_13._ID45044 + var_15;
                }

                if ( var_13._ID45309 != 0 )
                {
                    var_16 = undefined;
                    var_17 = undefined;

                    if ( _func_02F( var_13._ID53565 ) && _func_02F( var_13._ID52642 ) )
                    {
                        var_18 = var_13._ID45044 - var_13._ID53565;
                        var_19 = var_10 - var_13._ID52642;
                        var_16 = var_13._ID45044 + var_13._ID45309 * var_18;
                        var_17 = var_10 + var_13._ID45309 * var_19;
                    }

                    var_13._ID53565 = var_13._ID45044;
                    var_13._ID52642 = var_10;

                    if ( _func_02F( var_16 ) && _func_02F( var_17 ) )
                    {
                        var_13._ID45044 = var_16;
                        var_10 = var_17;
                    }
                }

                var_20 = var_13._ID23606 * var_13._ID23606;
                var_21 = var_13._ID23062 * var_13._ID23062;
                var_22 = _func_0F5( var_10, var_13._ID45044 );

                if ( var_22 < var_20 || var_22 > var_21 )
                    var_14 = 0;
            }

            var_13._ID43894 = _ID42237::_ID37527( var_13._ID48550, var_6, var_7 );

            if ( _func_02F( var_13._ID45044 ) && var_13._ID49821 )
            {
                var_23 = _unknown_0793( var_10, var_13._ID45044 );

                if ( !_func_02F( var_23["entity"] ) )
                    var_14 = 0;
                else if ( var_23["entity"] != var_13._ID44285 )
                {
                    var_24 = _func_0F5( var_10, var_13._ID45044 );
                    var_25 = _func_0F5( var_10, var_23["position"] );

                    if ( var_24 != var_25 )
                        var_14 = 0;
                }
            }

            if ( var_14 )
            {
                if ( var_13._ID52967 || var_13._ID43894[0] >= var_13._ID47970 && var_13._ID43894[0] <= var_13._ID51387 && var_13._ID43894[1] >= var_13._ID49085 && var_13._ID43894[1] <= var_13._ID52122 )
                {
                    if ( !_func_02F( var_11 ) )
                    {
                        var_11 = var_13;
                        continue;
                    }

                    var_11 = var_11 _unknown_084D( var_13 );
                }
            }
        }

        var_clear_3
        var_clear_0

        if ( _func_02F( var_11 ) )
        {
            var_27 = var_11._ID54087;

            if ( var_11._ID52967 )
            {
                var_28 = _ID42237::_ID37527( var_11._ID54087 < 0, 1024, var_11._ID54087 );
                var_29 = var_10 + var_9 * var_28;
                var_23 = _unknown_0858( var_10, var_29, var_11._ID47218 );
                var_27 = _func_0F3( var_10, var_23["position"] );
            }
            else if ( _func_02F( var_11._ID44285 ) )
            {
                var_27 = _func_0F3( var_11._ID45044, var_10 );

                if ( var_11._ID54087 >= 0 && var_27 > var_11._ID54087 )
                    var_27 = var_11._ID54087;
            }

            var_30 = _func_0E6( var_27 + var_11._ID54259, 1 );
            var_31 = undefined;

            if ( var_11._ID48806 )
            {
                if ( !_func_02F( var_11._ID49883 ) )
                {
                    var_11._ID43477 = var_11._ID50910;
                    var_11._ID46557 = 64;

                    if ( !_func_02F( var_4 ) )
                    {
                        var_11._ID49883 = var_11._ID46557;
                        var_11._ID50369 = var_11._ID43477;
                    }
                    else
                    {
                        var_11._ID49883 = var_11._ID43477;
                        var_11._ID50369 = var_11._ID46557;
                    }

                    var_11._ID52621 = var_11._ID50369 - var_11._ID49883 / var_11._ID49492 / var_3;
                }
                else
                {
                    var_11._ID49883 = var_11._ID49883 + var_11._ID52621;
                    var_11._ID49883 = _ID42237::_ID53482( var_11._ID49883, var_11._ID43477, var_11._ID46557 );

                    if ( var_11._ID49883 == var_11._ID50369 )
                        var_11._ID48806 = 0;
                }

                var_31 = var_11._ID49883;
            }
            else
                var_31 = var_11._ID50910;

            var_5 = _unknown_0980( var_31 * var_11._ID44137, var_3, var_11._ID53942, var_5 );
            level._ID794 _meth_84BA( var_31, var_30, var_11._ID45134, var_11._ID53942 );
            level._ID794 _meth_84CB( var_5, var_30 );
            var_4 = var_11;
        }

        wait(var_3);
    }
}

_ID47476( var_0, var_1, var_2 )
{
    var_3 = 1;
    var_4 = var_0;
    var_5 = undefined;
    var_6 = level._ID794;

    for ( var_7 = 0; var_3 && var_7 < 10; var_7++ )
    {
        var_5 = _func_06D( var_4, var_1, 1, var_6, 0, 1, 0 );
        var_8 = _func_0F5( var_4, var_1 );
        var_9 = var_5["entity"];
        var_10 = _func_119( var_1 - var_4 );

        if ( var_8 > 800 && var_5["surfacetype"] == "glass" )
        {
            var_4 = var_5["position"] + var_10 * 2;
            continue;
        }

        if ( _func_02F( var_2 ) && _func_02F( var_9 ) )
        {
            if ( _ID42237::_ID3303( var_2, var_9 ) )
                var_4 = var_5["position"] + var_10 * 2;
            else
                var_3 = 0;

            continue;
        }

        var_3 = 0;
    }

    return var_5;
}

_ID45607( var_0 )
{
    if ( var_0._ID48245 > self._ID48245 )
        return var_0;

    if ( var_0._ID48866 > self._ID48866 )
        return var_0;

    return self;
}

_ID53844( var_0, var_1, var_2, var_3 )
{
    var_4 = var_1 * var_2;

    if ( var_4 > 1.0 )
        var_4 = 1.0;

    var_5 = 1.0 / var_0;
    var_6 = 1.0 / var_3;
    var_6 += var_4 * var_5 - var_6;
    var_3 = 1.0 / var_6;
    var_3 = _func_0EE( var_3, 0.125, 512 );
    return var_3;
}

_ID51370( var_0 )
{
    if ( _func_02F( var_0 ) )
    {
        if ( _func_2CB( var_0 ) )
            wait(var_0);
        else if ( _func_02F( var_0._ID170 ) )
        {
            while ( _func_02F( var_0 ) )
                waittillframeend;
        }
        else
        {

        }
    }

    level notify( "stop_dynamic_dof" );
    _func_0DB( "r_dof_physical_bokehEnable", 0 );
    level._ID49753 = undefined;
    level._ID794 _meth_84B9();
}

_ID43386( var_0, var_1 )
{
    if ( !_func_02F( level._ID52015 ) )
        level._ID52015 = [];

    if ( _func_02F( var_0 ) )
    {
        if ( !_func_02F( level._ID52015[var_0] ) )
            level._ID52015[var_0] = _unknown_0B26( var_0 );

        if ( _func_02F( var_1 ) && var_1 )
            level._ID52015[var_0]._ID50394 = [];

        return level._ID52015[var_0];
    }

    return undefined;
}

_ID54416( var_0 )
{
    var_1 = _func_1A5();
    var_1._ID53185 = var_0;
    var_1._ID47126 = 0;
    var_1._ID50394 = [];
    return var_1;
}

_ID48800( var_0, var_1 )
{
    var_2 = self._ID50394.size;
    self._ID50394[var_2] = _unknown_0DA7( var_2 );
    self._ID50394[var_2]._ID49516 = self;

    if ( _func_02F( var_0 ) )
        self._ID50394[var_2] _unknown_0DCE( var_0 );

    return self._ID50394[var_2];
}

_ID51187( var_0 )
{
    return self;
}

_ID44437()
{
    return self._ID47126;
}

_ID48166()
{
    if ( !self._ID47126 )
    {
        var_0 = self._ID50394;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            var_1._ID47126 = undefined;
        }

        var_clear_2
        var_clear_0
        self._ID47126 = 1;
        _unknown_0BE7();
        jump loc_BEF
    }

    return self;
}

_ID50818()
{
    var_0 = _func_03D();
    var_1 = _func_03D();
    var_2 = 0.05;

    for ( var_3 = 1; var_3; var_1 = _func_03D() )
    {
        var_4 = var_1 - var_0;
        var_3 = 0;

        for ( var_5 = 0; var_5 < self._ID50394.size; var_5++ )
        {
            var_6 = self._ID50394[var_5];

            if ( !_func_02F( var_6._ID47126 ) )
            {
                var_3 = 1;

                if ( _func_02F( var_6._ID49168 ) && var_4 > var_6._ID49168 * 1000 )
                {
                    _unknown_0C61( var_6 );
                    var_6._ID47126 = 1;
                }
            }
        }

        wait(var_2);
    }

    self._ID47126 = 0;
}

_ID47881( var_0 )
{
    if ( _func_02F( var_0._ID51171 ) )
    {
        var_1 = var_0._ID51171;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2 _unknown_0D67();
        }

        var_clear_2
        var_clear_0
    }

    if ( _func_02F( var_0._ID53298 ) )
        var_0 _unknown_0D17();

    if ( _func_02F( var_0._ID53416 ) )
        var_0._ID53416 _unknown_0D12();

    if ( _func_02F( var_0._ID53953 ) )
        var_0 _unknown_0D38();

    var_0 _unknown_102D();

    if ( _func_02F( var_0._ID52534 ) )
        var_0 _unknown_0D3D();

    if ( _func_02F( var_0._ID50366 ) )
        var_0 thread _unknown_0D6B();

    if ( _func_02F( var_0._ID44330 ) )
        var_0 _unknown_0D82();

    if ( _func_02F( var_0._ID52913 ) )
        var_0 _unknown_0DA1();

    if ( _func_02F( var_0._ID45563 ) )
        var_0 _unknown_0DB4();

    if ( _func_02F( var_0._ID53633 ) )
        var_0 _unknown_0DC5();

    if ( _func_02F( var_0._ID53677 ) )
        var_0 _unknown_0DDB();

    if ( _func_02F( var_0.headtracking_list ) )
    {
        var_4 = var_0.headtracking_list;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_5 _unknown_0E02();
        }

        var_clear_2
        var_clear_0
    }
}

_ID51733()
{
    level._ID794 _meth_840B( self._ID44621, self._ID41914, self._ID54692, self._ID310, self._ID50928, self._ID43396, self._ID851, self._ID47969, self._ID49324, self._ID51650, self._ID13702 );
}

_ID53255()
{
    if ( _func_02F( self._ID53016 ) )
        _func_0B6( _func_007(), self._ID53016, self._ID52534 );
    else
        _func_0B6( _func_007(), level._ID34362._ID35414, self._ID52534 );
}

_ID49005()
{
    _func_076( self._ID53298, self._ID46916 );
}

_ID43864()
{
    if ( !_func_02F( self._ID49516._ID53935 ) )
        self._ID49516._ID53935 = _func_03B( "cg_fov" );

    if ( self._ID53953 == -1 )
        level._ID794 _meth_8032( self._ID49516._ID53935, self._ID49474, self._ID53678 );
    else
        level._ID794 _meth_8032( self._ID53953, self._ID49474, self._ID53678 );
}

_ID50446()
{
    self._ID30334 _meth_80B4( self._ID50366 );

    if ( _func_02F( self._ID30332 ) )
    {
        wait(self._ID30332);
        self._ID30334 _meth_80B6( self._ID50366 );
    }
}

_ID45097()
{
    if ( !_func_02F( self._ID49516._ID52386 ) )
        self._ID49516._ID52386 = _func_039( "sv_znear" );

    if ( self._ID44330 == -1 )
        _func_0DB( "sv_znear", self._ID49516._ID52386 );
    else
        _func_0DB( "sv_znear", self._ID44330 );
}

_ID51195()
{
    _func_192( self._ID52913, self._ID45514, self._ID49111._ID740, self._ID52046 );
}

_ID44860()
{
    _func_0DB( "r_mbEnable", self._ID45563 );
}

_ID45534()
{
    level._ID794 _meth_80A9( self._ID53633, self._ID43989, self._ID48365, self._ID52359, self._ID46861, self._ID49770, self._ID49464 );
}

_ID51960()
{
    level._ID794 _meth_80AA( self._ID53677, self._ID45152, self._ID43522, self._ID48507, self._ID54548 );
}

__cinseq_handle_headtracking_internal()
{
    switch ( self.headtracking_function_type )
    {

    }

    case "resume":
    case "pause":
    case "start":
    case "stop":
}

_ID48860()
{
    var_0 = self._ID50924;

    switch ( self._ID26246.size )
    {

    }

    case 8:
    case 7:
    case 6:
    case 5:
    case 4:
    case 3:
    case 2:
    case 1:
    case 0:
    default:
}

_ID43639( var_0 )
{
    var_1 = _func_1A5();
    var_1._ID680 = var_0;
    var_1._ID44015 = 0;
    var_1._ID48387 = 0;
    var_1._ID52566 = 0;
    var_1._ID51996 = 0;
    var_1.headtracking_list = [];
    return var_1;
}

_ID49915( var_0 )
{
    if ( _func_02F( self._ID49168 ) )
        return self;

    self._ID49168 = var_0;
    return self;
}

_ID43376( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    if ( !_func_02F( self._ID51171 ) )
        self._ID51171 = [];

    var_10 = _func_1A5();
    var_10._ID43794 = var_0;
    var_10._ID50924 = var_1;

    if ( !_func_02F( var_1 ) && _func_314( var_0 ) )
        var_10._ID50924 = level;

    var_10._ID26246 = [];
    var_11 = [ var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 ];

    for ( var_12 = 0; var_12 < var_11.size; var_12++ )
    {
        if ( _func_02F( var_11[var_12] ) )
        {
            var_10._ID26246[var_12] = var_11[var_12];
            continue;
        }

        break;
    }

    self._ID51171[self._ID51171.size] = var_10;
    return self;
}

_ID44392( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) || !_func_02F( var_1 ) )
        return self;

    self._ID53298 = var_0;
    self._ID46916 = var_1;
    return self;
}

_ID53036( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    _unknown_1565( 0, var_0 );
    return self;
}

_ID44049()
{
    var_0 = _func_1A5();
    var_0._ID44621 = 0;
    var_0._ID41914 = 0;
    var_0._ID54692 = 0;
    var_0._ID310 = 0;
    var_0._ID50928 = 0;
    var_0._ID43396 = 0;
    var_0._ID851 = 0;
    var_0._ID47969 = 1;
    var_0._ID51650 = 1;
    var_0._ID49324 = 1;
    var_0._ID13702 = 1;
    return var_0;
}

_ID43465( var_0 )
{
    self._ID53416 = var_0;
    return self;
}

_ID44191( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_0 ) || !_func_02F( var_1 ) )
        return self;

    self._ID53953 = var_0;
    self._ID49474 = var_1;
    self._ID53678 = 1;

    if ( _func_02F( var_2 ) )
        self._ID53678 = var_2;

    return self;
}

_ID43500( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID53953 = -1;
    self._ID49474 = var_0;
    self._ID53678 = 1;

    if ( _func_02F( var_1 ) )
        self._ID53678 = var_1;

    return self;
}

_ID48993( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    self._ID53016 = var_0;
    self._ID52534 = var_1;
    return self;
}

_ID50008( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_1 = 1;

    self._ID52534 = var_0;
    return self;
}

_ID44944( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    self._ID44330 = var_0;
    return self;
}

_ID53207()
{
    self._ID44330 = -1;
    return self;
}

_ID48161( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID794;

    self._ID50366 = var_0;
    self._ID30334 = var_1;

    if ( _func_02F( var_2 ) )
        self._ID30332 = var_2;

    return self;
}

_ID47198( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_0 ) || !_func_02F( var_1 ) )
        return self;

    self._ID52913 = var_0;
    self._ID45514 = var_1;
    self._ID49111 = level._ID794;

    if ( _func_02F( var_2 ) )
        self._ID49111 = var_2;

    self._ID52046 = 64;

    if ( _func_02F( var_3 ) )
        self._ID52046 = var_3;

    return self;
}

_ID47844( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    self._ID45563 = var_0;
    return self;
}

_ID51018( var_0 )
{
    _unknown_171F( 0 );
    return self;
}

_ID54217( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_0 ) || !_func_02F( var_1 ) || !_func_02F( var_2 ) || !_func_02F( var_3 ) || !_func_02F( var_4 ) || !_func_02F( var_5 ) || !_func_02F( var_6 ) )
        return self;

    self._ID53633 = var_0;
    self._ID43989 = var_1;
    self._ID48365 = var_2;
    self._ID52359 = var_3;
    self._ID46861 = var_4;
    self._ID49770 = var_5;
    self._ID49464 = var_6;
    return self;
}

_ID46222( var_0, var_1, var_2, var_3, var_4 )
{
    self._ID53677 = 50;

    if ( _func_02F( var_0 ) )
        self._ID53677 = var_0;

    self._ID45152 = 50;

    if ( _func_02F( var_1 ) )
        self._ID45152 = var_1;

    self._ID43522 = 20;

    if ( _func_02F( var_2 ) )
        self._ID43522 = var_2;

    self._ID48507 = 20;

    if ( _func_02F( var_3 ) )
        self._ID48507 = var_3;

    self._ID54548 = 1;

    if ( _func_02F( var_4 ) )
        self._ID54548 = var_4;

    return self;
}

cinseq_key_start_additive_headtracking( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    var_12 = _func_1A5();
    var_12.headtracking_function_type = "start";
    var_12.headtracking_entity = var_0;
    var_12.headtracking_type = "upperbody";

    if ( _func_02F( var_1 ) )
        var_12.headtracking_type = var_1;

    var_12.headtracking_target = level._ID794;

    if ( _func_02F( var_2 ) )
        var_12.headtracking_target = var_2;

    var_12.headtracking_radius = 200;

    if ( _func_02F( var_3 ) )
        var_12.headtracking_radius = var_3;

    var_12.headtracking_max_left = 60;

    if ( _func_02F( var_4 ) )
        var_12.headtracking_max_left = var_4;

    var_12.headtracking_max_right = 60;

    if ( _func_02F( var_5 ) )
        var_12.headtracking_max_right = var_5;

    var_12.headtracking_max_down = 30;

    if ( _func_02F( var_6 ) )
        var_12.headtracking_max_down = var_6;

    var_12.headtracking_max_up = 30;

    if ( _func_02F( var_7 ) )
        var_12.headtracking_max_up = var_7;

    var_12.headtracking_eye_tracking = 0;

    if ( _func_02F( var_8 ) )
        var_12.headtracking_eye_tracking = var_8;

    var_12.headtracking_paused_on_start = 0;

    if ( _func_02F( var_9 ) )
        var_12.headtracking_paused_on_start = var_9;

    var_12.headtracking_add_pitchdown = 10;

    if ( _func_02F( var_10 ) )
        var_12.headtracking_add_pitchdown = var_10;

    var_12.headtracking_yaw_offfset = 0;

    if ( _func_02F( var_11 ) )
        var_12.headtracking_yaw_offfset = var_11;

    self.headtracking_list[self.headtracking_list.size] = var_12;
    return self;
}

cinseq_key_stop_additive_headtracking( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    var_1 = _func_1A5();
    var_1.headtracking_function_type = "stop";
    var_1.headtracking_entity = var_0;
    self.headtracking_list[self.headtracking_list.size] = var_1;
    return self;
}

cinseq_key_pause_additive_headtracking( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    var_1 = _func_1A5();
    var_1.headtracking_function_type = "stop";
    var_1.headtracking_entity = var_0;
    self.headtracking_list[self.headtracking_list.size] = var_1;
    return self;
}

cinseq_key_resume_additive_headtracking( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return self;

    var_1 = _func_1A5();
    var_1.headtracking_function_type = "resume";
    var_1.headtracking_entity = var_0;
    self.headtracking_list[self.headtracking_list.size] = var_1;
    return self;
}

_ID47714()
{
    if ( self._ID51996 )
        _unknown_1453();

    if ( _func_02F( self._ID43463 ) )
    {
        var_0 = self._ID43463;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            _unknown_13CE( var_1 );
        }

        var_clear_2
        var_clear_0
    }

    if ( _func_02F( self._ID50241 ) )
    {
        var_3 = self._ID50241;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            _unknown_1A45( var_4 );
        }

        var_clear_2
        var_clear_0
    }

    if ( self._ID44015 )
        thread _unknown_14B7( self._ID48387 );

    if ( self._ID52566 )
        thread _unknown_1672();
}

_ID45917( var_0 )
{
    var_1 = _unknown_13D6( var_0._ID680 );

    if ( _func_02F( var_1 ) )
    {
        if ( _func_02F( var_0._ID50910 ) )
            var_1 _unknown_1451( var_0._ID50910 );

        if ( _func_02F( var_0._ID54087 ) )
            var_1 _unknown_1469( var_0._ID54087 );

        if ( _func_02F( var_0._ID45134 ) )
            var_1 _unknown_1486( var_0._ID45134 );

        if ( _func_02F( var_0._ID53942 ) )
            var_1 _unknown_149D( var_0._ID53942 );

        if ( _func_02F( var_0._ID44285 ) )
            var_1 _unknown_14DA( var_0._ID44285 );

        if ( _func_02F( var_0._ID37062 ) )
            var_1 _unknown_14F6( var_0._ID37062 );

        if ( _func_02F( var_0._ID28609 ) )
            var_1 _unknown_151A( var_0._ID28609 );

        if ( _func_02F( var_0._ID25468 ) )
            var_1 _unknown_14D6( var_0._ID25468 );

        if ( _func_02F( var_0._ID44137 ) )
            var_1 _unknown_14F9( var_0._ID44137 );

        if ( _func_02F( var_0._ID48806 ) )
            var_1 _unknown_156C( var_0._ID49492 );

        if ( _func_02F( var_0._ID45309 ) )
            var_1 _unknown_1577( var_0._ID45309 );
    }
}

_ID48940( var_0 )
{
    _unknown_1BDC( var_0 );
    return self;
}

_ID50321( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _unknown_1BEC( var_4 );
    var_5._ID50910 = var_0;
    var_5._ID54087 = var_1;
    var_5._ID45134 = var_2;
    var_5._ID53942 = var_3;
    return self;
}

_ID52391( var_0, var_1, var_2 )
{
    var_3 = _unknown_1C0E( var_2 );
    var_3._ID44285 = var_0;

    if ( _func_02F( var_1 ) )
        var_3._ID37062 = var_1;

    return self;
}

_ID52249( var_0, var_1 )
{
    var_2 = _unknown_1C2A( var_1 );
    var_2._ID37062 = var_0;
    return self;
}

_ID53584( var_0, var_1 )
{
    var_2 = _unknown_1C3B( var_1 );
    var_2._ID44137 = var_0;
    return self;
}

_ID54676( var_0, var_1, var_2 )
{
    var_3 = _unknown_1C4E( var_2 );
    return self;
}

_ID45003( var_0, var_1 )
{
    var_2 = _unknown_1C5A( var_1 );
    var_2._ID28609 = var_0;
    return self;
}

_ID44518( var_0, var_1 )
{
    var_2 = _unknown_1C6B( var_1 );
    var_2._ID25468 = var_0;
    return self;
}

_ID45145( var_0, var_1 )
{
    var_2 = _unknown_1C7C( var_1 );
    var_2._ID48806 = 1;
    var_2._ID49492 = 1.0;

    if ( _func_02F( var_0 ) )
        var_2._ID49492 = var_0;

    return self;
}

_ID44545( var_0, var_1 )
{
    var_2 = _unknown_1CA1( var_1 );
    var_2._ID45309 = var_0;
    return self;
}

_ID52303( var_0 )
{
    if ( !_func_02F( self._ID43463 ) )
        self._ID43463 = [];

    self._ID43463 = _ID42237::_ID3293( self._ID43463, var_0 );
    return self;
}

_ID44956( var_0 )
{
    self._ID44015 = 1;

    if ( _func_02F( var_0 ) )
        self._ID48387 = var_0;

    return self;
}

_ID48959()
{
    self._ID52566 = 1;
    return self;
}

_ID46727()
{
    self._ID51996 = 1;
    return self;
}

_ID49401( var_0 )
{
    if ( !_func_02F( self._ID50241 ) )
        self._ID50241 = [];

    if ( !_func_02F( var_0 ) )
        var_0 = self._ID680;

    if ( !_func_02F( self._ID50241[var_0] ) )
    {
        self._ID50241[var_0] = _func_1A5();
        self._ID50241[var_0]._ID680 = var_0;
    }

    return self._ID50241[var_0];
}
