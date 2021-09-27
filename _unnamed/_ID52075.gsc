// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "r_reflectionProbeGenerate" ) == "1" )
        return;

    var_0 = _ID42407::_ID46050();
    var_1 = [];
    var_2 = [];
    level._ID43603 = [];
    var_3 = var_0;

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];

        if ( !_func_02F( var_4._ID40005["exploder_type"] ) || var_4._ID40005["exploder_type"] != "exploderanim" )
            continue;

        var_5 = var_4._ID40005["exploder"] + "";

        if ( !_func_02F( level._ID43603[var_5] ) )
        {
            level._ID43603[var_5] = 0.0;
            var_1[var_5] = [];
            var_2[var_5] = [];
        }

        if ( _func_125( var_4._ID669._ID1193, "exploderanimend" ) )
        {
            var_2[var_5][var_2[var_5].size] = var_4._ID669;
            continue;
        }

        var_1[var_5][var_1[var_5].size] = var_4._ID669;
    }

    var_clear_3
    var_clear_0
    var_0 = undefined;
    var_7 = var_1;

    for ( var_5 = _func_1DA( var_7 ); _func_02F( var_5 ); var_5 = _func_1BF( var_7, var_5 ) )
    {
        var_8 = var_7[var_5];
        var_9 = level._ID43603[var_5];
        var_10 = var_8;

        for ( var_16 = _func_1DA( var_10 ); _func_02F( var_16 ); var_16 = _func_1BF( var_10, var_16 ) )
        {
            var_11 = var_10[var_16];
            var_12 = var_11 _unknown_01DB();
            var_13 = _unknown_01FF( var_12 );
            var_14 = _func_067( _ID42407::_ID16121( var_12, var_13 ) );
            var_15 = 0.0;

            if ( _func_02F( var_11._ID916 ) && var_11._ID916 > 0.0 )
                var_15 += var_11._ID916;

            if ( _func_02F( var_11._ID31122 ) && var_11._ID31122 > 0.0 )
                var_15 += var_11._ID31122;

            var_9 = _func_0E6( var_15 + var_14, var_9 );
            var_11 thread _unknown_021E( var_12 );
        }

        var_clear_6
        var_clear_0
        level._ID43603[var_5] = var_9;
    }

    var_clear_9
    var_17 = var_2;

    for ( var_5 = _func_1DA( var_17 ); _func_02F( var_5 ); var_5 = _func_1BF( var_17, var_5 ) )
    {
        var_18 = var_17[var_5];

        if ( var_18.size == 0 )
            continue;

        var_19 = var_1[var_5];
        thread _unknown_01FC( var_5, var_19, var_18 );
    }

    var_clear_2
}

_ID45509( var_0, var_1, var_2 )
{
    for (;;)
    {
        level waittill( "exploding_" + var_0 );
        level _unknown_0225( var_0, var_1, var_2 );

        if ( !level._ID9228 )
            return;
    }
}

_ID52200( var_0, var_1, var_2 )
{
    level notify( "exploder_animend_swap_" + var_0 );
    level endon( "exploder_animend_swap_" + var_0 );
    var_3 = level._ID43603[var_0] + 0.1;
    var_4 = undefined;

    if ( level._ID9228 )
    {
        var_4 = _ID42234::_ID43302();

        if ( var_4 < var_3 )
            return;

        var_4 -= var_3;
    }

    wait(var_3);
    var_5 = var_2;

    for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
    {
        var_6 = var_5[var_8];

        if ( !_func_02F( var_6 ) )
            continue;

        var_7 = var_6 _unknown_02D8();
        var_7 _meth_8059();
        var_7 _meth_82C8();

        if ( _func_02F( var_7._ID989 ) && var_7._ID989 & 1 )
            var_7 _meth_805F();
    }

    var_clear_3
    var_clear_0
    var_9 = var_1;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_6 = var_9[var_11];

        if ( !_func_02F( var_6 ) )
            continue;

        var_10 = var_6 _unknown_031E();

        if ( level._ID9228 )
        {
            var_10 _meth_805A();
            var_10 _meth_82C9();
            continue;
        }

        var_10 _meth_80B7();
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_4 ) )
    {
        wait(var_4);
        var_12 = var_2;

        for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
        {
            var_6 = var_12[var_13];

            if ( !_func_02F( var_6 ) )
                continue;

            var_7 = var_6 _unknown_0364();

            if ( !_func_02F( var_6._ID43009 ) )
            {
                var_7 _meth_805A();
                var_7 _meth_82C9();
                continue;
            }

            var_7 _meth_80B7();
            var_6._ID43009 = undefined;
        }

        var_clear_1
        var_clear_0
    }
}

_ID47274()
{
    if ( _func_02F( self._ID43009 ) )
        return self._ID43009;

    return self;
}

_ID47271( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "play_exploder_anim" );

        if ( _func_02F( self._ID43009 ) )
        {
            if ( !_func_02F( self._ID31122 ) || self._ID31122 <= 0.0 )
                waittillframeend;

            self._ID43009 thread _unknown_03F3( var_0 );
            continue;
        }

        thread _unknown_03FC( var_0 );
    }
}

_ID43320()
{
    var_0 = undefined;
    var_1 = _func_129( self._ID1193, ":;, " );

    if ( var_1.size > 1 && _func_02F( var_1[1] ) )
        var_0 = var_1[1];
    else if ( _func_02F( self._ID31295 ) )
        var_0 = self._ID31295 + "_anim";
    else
        var_0 = self._ID669 + "_anim";

    return var_0;
}

_ID51468( var_0 )
{
    var_1 = _unknown_0451( var_0 );

    if ( _func_02F( var_1 ) )
    {
        _ID42407::_ID3428( var_1 );
        _ID42259::_ID3111( self, var_0 );
    }
}

_ID50915( var_0 )
{
    var_1 = undefined;

    for ( var_2 = 0; var_2 < level._ID43404.size; var_2++ )
    {
        var_3 = _func_1D9( level._ID30895[level._ID43404[var_2]] );

        if ( _ID42237::_ID3303( var_3, var_0 ) )
        {
            var_1 = level._ID43404[var_2];
            break;
        }
    }

    return var_1;
}
