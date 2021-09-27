// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34619( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "oneshot";
    var_7 = undefined;
    var_8 = "3d";
    return _unknown_00C9( var_0, var_6, var_7, var_8, var_1, var_2, var_3, var_4, var_5 );
}

_ID34609( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "oneshot";
    var_7 = var_1;
    var_8 = "3d";
    return _unknown_00EC( var_0, var_6, var_7, var_8, var_2, var_3, var_4, var_5 );
}

_ID34606( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "oneshot";
    var_6 = undefined;
    var_7 = "2d";
    return _unknown_010E( var_0, var_5, var_6, var_7, var_1, var_2, var_3, var_4 );
}

_ID34629( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "loop";
    var_7 = undefined;
    var_8 = "3d";
    return _unknown_0133( var_0, var_6, var_7, var_8, var_1, var_2, var_3, var_4, var_5 );
}

_ID34627( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "loop";
    var_7 = var_1;
    var_8 = "3d";
    return _unknown_0156( var_0, var_6, var_7, var_8, var_2, var_3, var_4, var_5 );
}

_ID34626( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "loop";
    var_6 = undefined;
    var_7 = "2d";
    return _unknown_0178( var_0, var_5, var_6, var_7, var_1, var_2, var_3, var_4 );
}

_ID34612( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = "oneshot";
    var_9 = undefined;
    var_10 = "3d";
    return _unknown_01A2( var_0, var_8, var_9, var_10, var_3, var_4, var_5, var_6, var_7, var_1, var_2 );
}

_ID34611( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = "oneshot";
    var_9 = var_1;
    var_10 = "3d";
    return _unknown_01D6( var_0, var_8, var_9, var_10, var_4, var_5, var_6, var_7, ( 0, 0, 0 ), var_2, var_3 );
}

_ID34610( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = "oneshot";
    var_8 = undefined;
    var_9 = "2d";
    return _unknown_0208( var_0, var_7, var_8, var_9, var_3, var_4, var_5, var_6, ( 0, 0, 0 ), var_1, var_2 );
}

_ID34616( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = "loop";
    var_9 = undefined;
    var_10 = "3d";
    return _unknown_0232( var_0, var_8, var_9, var_10, var_3, var_4, var_5, var_6, var_7, var_1, var_2 );
}

_ID34615( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = "loop";
    var_9 = var_3;
    var_10 = "3d";
    return _unknown_0265( var_0, var_8, var_9, var_10, var_4, var_5, var_6, var_7, ( 0, 0, 0 ), var_1, var_2 );
}

_ID34614( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = "loop";
    var_8 = undefined;
    var_9 = "2d";
    return _unknown_0297( var_0, var_7, var_8, var_9, var_3, var_4, var_5, var_6, ( 0, 0, 0 ), var_1, var_2 );
}

_ID34632( var_0 )
{

}

_ID34735( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    var_12 = var_3 == "3d" && !_func_02F( var_2 );
    var_13 = self;

    if ( !var_12 )
        var_13 = level._ID794;

    if ( !_func_02F( var_13 ) )
        return;

    var_14 = var_13._ID740;

    if ( _func_02F( var_2 ) )
        var_14 = var_2;

    var_15 = _func_06A( "script_origin", var_14 );
    var_13 thread _unknown_031C( var_0, var_1, var_12, var_2, var_3, var_15, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    return var_15;
}

_ID34740( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 )
{
    var_13 = self;
    var_14 = "sndx_play_alias_" + _ID42475::_ID34587();
    level endon( var_14 );
    var_5 endon( "death" );
    var_6 = _ID42463::_ID3891( undefined, var_6 );
    var_7 = _ID42463::_ID3891( 0.0, var_7 );
    var_8 = _ID42463::_ID3891( 0.1, var_8 );
    var_9 = _ID42463::_ID3891( 1.0, var_9 );
    var_10 = _ID42463::_ID3891( ( 0, 0, 0 ), var_10 );
    var_11 = _ID42463::_ID3891( 0, var_11 );
    var_12 = _ID42463::_ID3891( 0, var_12 );

    if ( var_2 )
    {
        var_15 = "tag_origin";

        if ( _func_02F( var_13._ID669 ) || var_13._ID669 != "" || var_13 _meth_844F( var_15 ) < 0 )
            var_15 = "";

        var_5 _meth_8053( var_13, var_15, var_10, ( 0, 0, 0 ) );
        var_5 thread _unknown_0427( var_8, var_14, var_13 );
    }

    if ( var_11 > 0 )
    {
        if ( var_12 )
            _ID42463::_ID4247( var_11 );
        else
            wait(var_11);
    }

    if ( var_1 == "oneshot" )
    {
        var_16 = "sounddone";
        var_17 = var_7;
        var_5 _unknown_047C( var_0, var_16, var_17 );
        var_5 thread _unknown_0468( 0.05, var_14, var_16 );
    }
    else
        var_5 _unknown_04A1( var_0 );

    var_5 _meth_8076( 0, 0 );

    if ( _func_031( var_6 ) )
        var_5 thread _unknown_0493( var_8, var_14, var_6 );

    var_5 _meth_8076( var_9, var_7 );
}

_ID34737( var_0, var_1, var_2 )
{
    level endon( var_1 );
    self endon( "death" );
    var_3 = self;
    var_2 waittill( "death" );
    var_3 thread _unknown_04BF( var_0, var_1 );
}

_ID34738( var_0, var_1, var_2 )
{
    level endon( var_1 );
    self endon( "death" );
    var_3 = self;
    var_3 waittill( var_2 );
    var_3 thread _unknown_04D9( undefined, var_1 );
}

_ID34739( var_0, var_1, var_2 )
{
    level endon( var_1 );
    self endon( "death" );
    var_3 = self;
    level waittill( var_2 );
    var_3 thread _unknown_04F2( var_0, var_1 );
}

_ID34736( var_0, var_1 )
{
    level notify( var_1 );
    var_2 = self;

    if ( _func_02F( var_2 ) )
    {
        if ( _func_02F( var_0 ) )
        {
            var_2 _meth_8076( 0, var_0 );
            wait(var_0);
            waitframe;
        }

        if ( _func_02F( var_2 ) )
            var_2 _meth_80B7();
    }
}

_ID34605( var_0, var_1, var_2 )
{
    if ( _func_1D0( var_0 ) )
    {
        self._ID17491 = _ID42475::_ID34587();
        self._ID34565 = 1;
        var_1 = _ID42463::_ID3891( undefined, var_1 );
        var_2 = _ID42463::_ID3891( 0, var_2 );
        self _meth_80A1( var_0, var_1, 0, var_2 );
    }
    else
    {

    }
}

_ID34625( var_0 )
{
    if ( _func_1D0( var_0 ) )
    {
        if ( !_func_02F( self._ID34564 ) )
        {
            self _meth_807C( var_0 );
            self._ID17491 = _ID42475::_ID34587();
            self._ID34564 = 1;
        }
        else
        {

        }
    }
    else
    {

    }
}

_ID34683()
{
    if ( _func_02F( self._ID34565 ) )
    {
        self._ID34565 = undefined;
        self _meth_80B3();
    }
    else if ( _func_02F( self._ID34564 ) )
    {
        self._ID34564 = undefined;
        self _meth_80B2();
        self notify( "sounddone" );
    }
}

_ID34608( var_0, var_1, var_2, var_3 )
{
    if ( _func_1D0( var_0 ) )
    {
        var_4 = 0.1;
        var_5 = _func_06A( "script_origin", var_1 );
        var_5 _meth_807C( var_0 );
        level waittill( var_2 );

        if ( _func_02F( var_3 ) )
            var_4 = var_3;

        if ( _func_02F( var_5 ) )
        {
            var_5 _meth_8076( 0, var_4 );
            wait 0.05;
            var_5 _meth_80B7();
            return;
        }
    }
    else
    {

    }
}
