// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    if ( !_func_02F( level._ID30905 ) )
        level._ID30905 = [];

    if ( !_func_02F( level._ID30901 ) )
        level._ID30901 = [];

    if ( !_func_02F( level._ID30903 ) )
        level._ID30903 = [];

    if ( !_func_02F( level._ID30899 ) )
        level._ID30899 = [];

    if ( !_func_02F( level._ID30909 ) )
        level._ID30909 = [];

    if ( !_func_02F( level._ID30908 ) )
        level._ID30908 = [];

    if ( !_func_02F( level._ID30911 ) )
        level._ID30911 = [];

    if ( !_func_02F( level._ID30895 ) )
        level._ID30895[0][0] = 0;

    if ( !_func_02F( level._ID30908 ) )
        level._ID30908 = [];

    if ( !_func_02F( level._ID30902 ) )
        level._ID30902 = [];

    if ( !_func_02F( level._ID53525 ) )
        level._ID53525 = [];

    _ID42237::_ID9163( "moreThanThreeHack", 3 );

    if ( _ID42407::_ID20530() )
        _ID42237::_ID9163( "trace_part_for_efx", 12 );
    else
        _ID42237::_ID9163( "trace_part_for_efx" );

    level._ID49070 = _unknown_00F3();
    level._ID53529 = _unknown_00F1();
    level._ID46173 = _unknown_0104();

    if ( !level._ID46173 )
    {
        _func_0DB( "ai_grenadeReturn_minDistSqr", _func_0ED( 0 ) );
        _func_0DB( "ai_grenadeReturn_orientToToss", 1 );
    }

    var_0 = _unknown_0111();
    _func_0DB( "ai_useCoverMoveUpBehaviour", var_0 );
    var_1 = _unknown_0141();
    _func_0DB( "ai_ragdoll_unlink", var_1 );
    level._ID9277 = _ID53132();
    level._ID46221 = _unknown_015D();
    level._ID49979 = _unknown_0150();
    var_2 = _unknown_0137();
    _func_0DB( "xanim_disableFootIK", !var_2 );
    level._ID54349 = 0.3;
    level._ID43470 = 1;
}

_ID46076()
{
    return 1;
}

_ID53132()
{
    return 1;
}

_ID53981()
{
    var_0 = _ID42407::_ID16247( "ai_bulletWhizbyEnable", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 1;
}

_ID48262()
{
    var_0 = _ID42407::_ID16247( "ai_turnAnimsOverride", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 1;
}

_ID48616()
{
    var_0 = _ID42407::_ID16247( "ai_grenadeReturn_improvements", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 1;
}

_ID53374()
{
    var_0 = _ID42407::_ID16247( "ai_forcedTeleportToAnimStart", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 1;
}

_ID49236()
{
    var_0 = _ID42407::_ID16247( "ai_coverArrival_ignorePlayer", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 0;
}

_ID53652()
{
    switch ( level._ID912 )
    {

    }

    return 1;
    case "dcburning":
}

_ID52047()
{
    var_0 = _ID42407::_ID16247( "ai_use_rpg_repulsors", 1 );
    return var_0 > 0;
}

_ID49557()
{
    var_0 = _ID42407::_ID16247( "ai_use_grenade_dist_checks", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 0;
}

_ID12733( var_0, var_1 )
{
    self waittill( var_0 );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = var_3["guy"];

        if ( !_func_02F( var_4 ) )
            continue;

        var_4._ID1363--;
        var_4._ID1502 = _func_03D();
    }

    var_clear_3
    var_clear_0
}

_ID3016( var_0, var_1, var_2 )
{
    var_3 = _unknown_0B8C( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    _ID42237::_ID3315( var_0, ::_unknown_03DB, var_1, var_4, var_5 );
}

_ID3023( var_0, var_1, var_2 )
{
    var_3 = _unknown_0BB1( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    thread _unknown_0404( var_0, var_1, var_4, var_5, "generic" );
}

_ID51641( var_0, var_1 )
{
    _unknown_02F0( var_0._ID740, var_1 );
}

_ID46198( var_0, var_1 )
{
    self endon( "death" );

    while ( !_ID42237::_ID14446( var_1 ) )
    {
        self _meth_819B( "face point", var_0 );
        waittillframeend;
    }

    self _meth_819B( "face default" );
}

_ID3020( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _unknown_05E7( var_3, var_1, var_2, 0, "generic" );
}

_ID3024( var_0, var_1, var_2 )
{
    var_3 = var_0._ID52;
    var_0 _ID42407::_ID10949();
    _unknown_03DF( var_0, "gravity", var_1, var_2 );

    if ( var_3 )
        var_0 _ID42407::_ID12508();
}

_ID3029( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _unknown_0624( var_3, var_1, var_2, 0.25, "generic" );
}

_ID3027( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _unknown_0D11( var_3, var_1, var_2, "generic" );
}

_ID3028( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _unknown_0D35( var_3, var_1, var_2, "generic", ::_unknown_0ED3, ::_unknown_0EC0 );
}

_ID3067( var_0, var_1, var_2 )
{
    _unknown_0D49( var_0, var_1, var_2, undefined, ::_unknown_0EED, ::_unknown_0ED7 );
}

_ID3068( var_0, var_1, var_2 )
{
    _unknown_0D5C( var_0, var_1, var_2, undefined, ::_unknown_0F08, ::_unknown_0EEA );
}

_ID3025( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_2 ) && _func_02F( self._ID669 ) && _ID42407::_ID18252( self._ID669, var_2 ) )
    {
        var_4 = var_2;
        var_2 = var_3;
        var_3 = var_4;
    }

    var_5 = [];
    var_5["guy"] = var_0;
    var_5["entity"] = self;
    var_5["tag"] = var_3;
    var_6[0] = var_5;
    _unknown_059C( var_6, var_1, var_2, "generic" );
}

_ID2996( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_0CFE( var_3, var_2 );
    var_5 = var_4["origin"];
    var_6 = var_4["angles"];
    var_7 = undefined;
    var_8 = var_0;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_7 = var_9;
        thread _unknown_0594( var_9, var_1, var_2, var_5, var_6, var_9._ID3189, 0 );
    }

    var_clear_2
    var_clear_0
    var_7 _unknown_04ED( var_2 );
    self notify( var_2 );
}

_ID2997( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_0D52( var_3, var_2 );
    var_5 = var_4["origin"];
    var_6 = var_4["angles"];
    var_7 = var_0;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        thread _unknown_05E4( var_8, var_1, var_2, var_5, var_6, var_8._ID3189, 1 );
    }

    var_clear_2
    var_clear_0
    var_0[0] _unknown_053F( var_2 );
    self notify( var_2 );
}

_ID40955( var_0 )
{
    self endon( "finished_custom_animmode" + var_0 );
    self waittill( "death" );
}

_ID3021( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _unknown_0DB6( var_3, var_2 );
    var_7 = var_6["origin"];
    var_8 = var_6["angles"];
    thread _unknown_0638( var_0, var_1, var_2, var_7, var_8, "generic", 0, var_4, var_5 );
    var_0 _unknown_0589( var_2 );
    self notify( var_2 );
}

_ID3022( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _unknown_0DF1( var_3, var_2 );
    var_7 = var_6["origin"];
    var_8 = var_6["angles"];
    thread _unknown_0674( var_0, var_1, var_2, var_7, var_8, "generic", 1, var_4, var_5 );
    var_0 _unknown_05C5( var_2 );
    self notify( var_2 );
}

_ID3000( var_0, var_1, var_2, var_3 )
{
    var_4 = [];
    var_4[0] = var_0;
    _unknown_05A5( var_4, var_1, var_2, var_3 );
}

_ID2998( var_0, var_1, var_2, var_3 )
{
    var_4 = [];
    var_4[0] = var_0;
    _unknown_05D6( var_4, var_1, var_2, var_3 );
}

_ID3018( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_0E52( var_2, var_1 );
    var_5 = var_4["origin"];
    var_6 = var_4["angles"];
    thread _unknown_06A2( var_0, var_1, var_5, var_6, var_3 );
}

_ID3038( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _unknown_0576( var_3, var_1, var_2 );
    _unknown_162D( var_3, var_1, 1.0 );
}

_ID3417( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = self._ID3189;

    var_2 = 0;

    if ( _func_02F( level._ID30895[var_1] ) )
    {
        var_2 = 1;

        if ( _func_02F( level._ID30895[var_1][var_0] ) )
            return;
    }

    var_3 = 0;

    if ( _func_02F( level._ID30909[var_1] ) )
    {
        var_3 = 1;

        if ( _func_02F( level._ID30909[var_1][var_0] ) )
            return;
    }

    if ( var_2 || var_3 )
    {
        if ( var_2 )
        {
            var_4 = _func_1D9( level._ID30895[var_1] );
            var_5 = var_4;

            for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
                var_6 = var_5[var_7];

            var_clear_2
            var_clear_0
        }

        if ( var_3 )
        {
            var_4 = _func_1D9( level._ID30909[var_1] );
            var_8 = var_4;

            for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
                var_6 = var_8[var_9];

            var_clear_2
            var_clear_0
        }

        return;
    }

    var_10 = _func_1D9( level._ID30895 );
    var_10 = _ID42237::_ID3296( var_10, _func_1D9( level._ID30909 ) );
    var_11 = var_10;

    for ( var_13 = _func_1DA( var_11 ); _func_02F( var_13 ); var_13 = _func_1BF( var_11, var_13 ) )
        var_12 = var_11[var_13];

    var_clear_2
    var_clear_0
}

_ID3017( var_0, var_1, var_2, var_3, var_4 )
{
    var_0._ID14354 = _func_03D();

    if ( _func_02F( var_4 ) )
        var_5 = var_4;
    else
        var_5 = var_0._ID3189;

    var_0 _unknown_16A2( var_1, var_2, var_3, var_5 );

    if ( _func_0D4( var_0 ) )
    {
        var_0._ID1456 = var_1;
        var_0._ID1366 = var_5;
        var_0 _meth_81A6( animscripts\first_frame::_ID616 );
    }
    else
    {
        var_0 _meth_814B();

        if ( _func_0D3( level._ID30895[var_5][var_1] ) )
        {
            var_0 _meth_814D( level._ID30895[var_5][var_1][0], 1, 0, 0 );
            var_0 _meth_8120( level._ID30895[var_5][var_1][0], 0 );
        }
        else
        {
            var_0 _meth_814D( level._ID30895[var_5][var_1], 1, 0, 0 );
            var_0 _meth_8120( level._ID30895[var_5][var_1], 0 );
        }
    }
}

_ID2999( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    if ( _func_0D4( var_0 ) && var_0 _ID42407::_ID11498() )
        return;

    var_9 = undefined;

    if ( _func_02F( var_5 ) )
        var_9 = var_5;
    else
        var_9 = var_0._ID3189;

    if ( !_func_02F( var_8 ) || !var_8 )
        var_0 _unknown_173C( var_2, var_3, var_4, var_5, var_6 );

    var_0._ID1365 = var_1;
    var_0._ID1402 = var_2;
    var_0._ID1651 = self;
    var_0._ID1364 = var_2;
    var_0._ID1366 = var_9;
    var_0._ID1403 = var_6;
    var_0._ID1404 = var_7;
    var_0 _meth_81A6( animscripts\animmode::_ID616 );
}

_ID3040( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];
    var_6 = var_0;

    for ( var_9 = _func_1DA( var_6 ); _func_02F( var_9 ); var_9 = _func_1BF( var_6, var_9 ) )
    {
        var_7 = var_6[var_9];
        var_8 = [];
        var_8["guy"] = var_7;
        var_8["entity"] = self;
        var_8["tag"] = var_3;
        var_8["origin_offset"] = var_4;
        var_5[var_5.size] = var_8;
    }

    var_clear_3
    var_clear_0
    _unknown_092D( var_5, var_1, var_2 );
}

_ID3043( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _unknown_093F( var_3, var_1, var_2 );
}

_ID3042( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_0 ) )
        return;

    if ( var_0.size <= 0 )
        return;

    var_4 = var_0;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];
        var_6 = var_5["guy"];

        if ( !_func_02F( var_6 ) )
            continue;

        if ( !_func_02F( var_6._ID1363 ) )
            var_6._ID1363 = 0;

        var_6 endon( "death" );
        var_6._ID1363++;
    }

    var_clear_3
    var_clear_0
    var_8 = var_0[0]["guy"];

    if ( !_func_02F( var_2 ) )
        var_2 = "stop_loop";

    thread _unknown_07EA( var_2, var_0 );
    self endon( var_2 );
    var_9 = "looping anim";
    var_10 = undefined;

    if ( _func_02F( var_3 ) )
        var_10 = var_3;
    else
        var_10 = var_8._ID3189;

    if ( !_unknown_10C2( var_1, var_10 ) )
        return;

    var_11 = 0;
    var_12 = 0;

    for (;;)
    {
        for ( var_11 = _unknown_10F2( var_10, var_1 ); var_11 == var_12 && var_11 != 0; var_11 = _unknown_1106( var_10, var_1 ) )
        {

        }

        var_12 = var_11;
        var_13 = undefined;
        var_14 = 999999;
        var_15 = undefined;
        var_6 = undefined;
        var_16 = var_0;

        for ( var_34 = _func_1DA( var_16 ); _func_02F( var_34 ); var_34 = _func_1BF( var_16, var_34 ) )
        {
            var_5 = var_16[var_34];
            var_17 = var_5["entity"];
            var_6 = var_5["guy"];
            var_18 = var_17 _unknown_119E( var_5["tag"], var_1 );
            var_19 = var_18["origin"];
            var_20 = var_18["angles"];

            if ( _func_02F( var_5["origin_offset"] ) )
            {
                var_21 = var_5["origin_offset"];
                var_22 = _func_11F( var_20 );
                var_23 = _func_11E( var_20 );
                var_24 = _func_11D( var_20 );
                var_19 += var_22 * var_21[0];
                var_19 += var_23 * var_21[1];
                var_19 += var_24 * var_21[2];
            }

            if ( _func_02F( var_6._ID29521 ) )
            {
                var_6._ID29521 = undefined;
                var_0[var_34] = undefined;
                continue;
            }

            var_25 = 0;
            var_26 = 0;
            var_27 = 0;
            var_28 = 0;
            var_29 = undefined;
            var_30 = undefined;
            var_31 = undefined;

            if ( _func_02F( var_3 ) )
                var_31 = var_3;
            else
                var_31 = var_6._ID3189;

            if ( _func_02F( level._ID30901[var_31] ) && _func_02F( level._ID30901[var_31][var_1] ) && _func_02F( level._ID30901[var_31][var_1][var_11] ) )
            {
                var_25 = 1;
                var_29 = level._ID30901[var_31][var_1][var_11];
            }

            if ( _func_02F( level._ID30909[var_31] ) && _func_02F( level._ID30909[var_31][var_1] ) && _func_02F( level._ID30909[var_31][var_1][var_11] ) )
            {
                var_26 = 1;
                var_30 = level._ID30909[var_31][var_1][var_11];
            }

            if ( _func_02F( level._ID30899[var_31] ) && _func_02F( level._ID30899[var_31][var_11 + var_1] ) )
                var_6 _meth_80A1( level._ID30899[var_31][var_11 + var_1] );

            if ( _func_02F( level._ID30895[var_31] ) && _func_02F( level._ID30895[var_31][var_1] ) && !_func_0D4( var_6 ) || !var_6 _ID42407::_ID11498() )
                var_27 = 1;

            if ( var_27 )
            {
                if ( _func_02F( level._ID30902[var_31] ) && _func_02F( level._ID30902[var_31][var_1] ) )
                    var_32 = level._ID30902[var_31][var_1];
                else
                    var_32 = 0.2;

                if ( _unknown_1AD6( level._ID30895[var_31][var_1][var_11] ) )
                    var_6 _meth_83D4( level._ID30895[var_31][var_1][var_11], 1.0 );

                var_6 _unknown_1AC1( var_1, var_31 );
                var_6 _meth_8148( var_9, var_19, var_20, level._ID30895[var_31][var_1][var_11], undefined, undefined, var_32 );
                var_33 = _func_067( level._ID30895[var_31][var_1][var_11] );

                if ( var_33 < var_14 )
                {
                    var_14 = var_33;
                    var_13 = var_34;
                }

                thread _unknown_0D08( var_6, var_9, var_1, var_31, level._ID30895[var_31][var_1][var_11] );
                thread _unknown_0EA9( var_6, var_9, var_1 );
            }

            if ( var_25 || var_26 )
            {
                if ( _func_0D4( var_6 ) )
                {
                    if ( var_27 )
                        var_6 animscripts\face::_ID30763( var_29, var_30, 1.0 );
                    else
                        var_6 animscripts\face::_ID30763( var_29, var_30, 1.0, var_9 );
                }
                else
                    var_6 _ID42407::_ID27079( var_30 );

                var_15 = var_34;
            }
        }

        var_clear_12

        if ( !_func_02F( var_6 ) )
            break;

        if ( _func_02F( var_13 ) )
        {
            var_0[var_13]["guy"] waittillmatch( var_9,  "end"  );
            waitframe;
            continue;
        }

        if ( _func_02F( var_15 ) )
            var_0[var_15]["guy"] waittill( var_9 );
    }
}

_ID35866( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 notify( "stop_sequencing_notetracks" );
    thread _unknown_0FC2( var_0, var_1, self, var_2, var_3, var_4 );
}

_ID3103( var_0, var_1 )
{

}

_ID3102( var_0, var_1 )
{
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _unknown_0DCD( self, var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID3099( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    _unknown_0E17( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID3109( var_0, var_1, var_2, var_3 )
{
    _unknown_0E2A( var_0, var_1, var_2, 0.25, var_3 );
}

_ID3104( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = var_0;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];

        if ( !_func_02F( var_9 ) )
            continue;

        if ( !_func_02F( var_9._ID1363 ) )
            var_9._ID1363 = 0;

        var_9._ID1363++;
    }

    var_clear_2
    var_clear_0
    var_11 = _unknown_148F( var_2, var_1 );
    var_12 = var_11["origin"];
    var_13 = var_11["angles"];

    if ( !_func_02F( var_5 ) )
        var_5 = 0;

    var_14 = undefined;
    var_15 = 999999;

    if ( var_5 )
        var_15 = 0;

    var_16 = undefined;
    var_17 = undefined;
    var_18 = undefined;

    if ( _func_02F( var_6 ) && var_6 )
        var_19 = undefined;
    else
        var_19 = "single anim";

    var_7 = _ID42237::_ID37527( _func_02F( var_7 ), var_7, 1 );
    var_20 = var_0;

    for ( var_32 = _func_1DA( var_20 ); _func_02F( var_32 ); var_32 = _func_1BF( var_20, var_32 ) )
    {
        var_9 = var_20[var_32];
        var_21 = 0;
        var_22 = 0;
        var_23 = 0;
        var_24 = 0;
        var_25 = undefined;
        var_26 = undefined;
        var_27 = undefined;

        if ( _func_02F( var_4 ) )
            var_27 = var_4;
        else
            var_27 = var_9._ID3189;

        if ( _func_02F( level._ID30901[var_27] ) && _func_02F( level._ID30901[var_27][var_1] ) )
        {
            var_21 = 1;
            var_26 = level._ID30901[var_27][var_1];
            var_18 = var_26;
        }

        if ( _func_02F( level._ID30909[var_27] ) && _func_02F( level._ID30909[var_27][var_1] ) )
        {
            var_22 = 1;
            var_25 = level._ID30909[var_27][var_1];
        }

        if ( _func_02F( level._ID30895[var_27] ) && _func_02F( level._ID30895[var_27][var_1] ) && !_func_0D4( var_9 ) || !var_9 _ID42407::_ID11498() )
            var_23 = 1;

        if ( _func_02F( level._ID30899[var_27] ) && _func_02F( level._ID30899[var_27][var_1] ) )
            var_9 _meth_80A1( level._ID30899[var_27][var_1] );

        if ( var_23 )
        {
            if ( _func_02F( level._ID30902[var_27] ) && _func_02F( level._ID30902[var_27][var_1] ) )
                var_28 = level._ID30902[var_27][var_1];
            else
                var_28 = 0.2;

            var_9 _unknown_1D7D( var_1, var_27 );

            if ( _func_1B3( var_9 ) )
            {
                var_29 = level._ID30895[var_27]["root"];
                var_9 _meth_8155( var_29, 0, var_28 );
                var_30 = level._ID30895[var_27][var_1];
                var_9 _meth_811A( var_19, var_30, 1, var_28 );
            }
            else if ( var_9._ID172 == "misc_turret" )
            {
                var_30 = level._ID30895[var_27][var_1];
                var_9 _meth_811A( var_19, var_30, 1, var_28 );
            }
            else
            {
                var_30 = level._ID30895[var_27][var_1];

                if ( !var_21 && animscripts\face::_ID3186( var_30 ) )
                    var_9 animscripts\face::_ID51415();

                if ( _unknown_1E18( var_30 ) )
                    var_9 _meth_83D4( var_30, 1.0 );

                var_9 _meth_8148( var_19, var_12, var_13, var_30, undefined, undefined, var_28, !_func_02F( var_19 ), var_7 );
            }

            var_31 = _func_067( level._ID30895[var_27][var_1] );

            if ( var_31 < var_15 && !var_5 || var_31 > var_15 && var_5 )
            {
                var_15 = var_31;
                var_14 = var_32;
            }

            if ( _func_02F( var_19 ) )
            {
                thread _unknown_104A( var_9, var_19, var_1, var_27, level._ID30895[var_27][var_1] );
                thread _unknown_11EB( var_9, var_19, var_1 );
            }
        }

        if ( var_21 || var_22 )
        {
            if ( var_21 )
            {
                if ( var_22 )
                    var_9 thread _unknown_1DBD( var_1, var_21, var_25, level._ID30901[var_27][var_1] );

                thread _unknown_1CFA( var_9, var_1, level._ID30901[var_27][var_1] );
                var_17 = var_32;
            }
            else if ( _func_0D4( var_9 ) )
            {
                if ( var_23 )
                    var_9 animscripts\face::_ID30763( var_26, var_25, 1.0 );
                else
                {
                    if ( !_func_02F( var_9._ID11027 ) || !var_9._ID11027 )
                        var_9 thread _unknown_1D5F( "single dialogue" );

                    var_9 animscripts\face::_ID30763( var_26, var_25, 1.0, "single dialogue" );
                }
            }
            else
                var_9 thread _ID42407::_ID27079( var_25, "single dialogue" );

            var_16 = var_32;
        }
    }

    var_clear_8

    if ( _func_02F( var_14 ) )
    {
        var_33 = _func_1A5();
        var_33 thread _unknown_1263( var_0[var_14], var_1 );
        var_33 thread _unknown_1285( var_0[var_14], var_1, var_15, var_3 );
        var_33 waittill( var_1 );
    }
    else if ( _func_02F( var_17 ) )
    {
        var_33 = _func_1A5();
        var_33 thread _unknown_128C( var_0[var_17], var_1 );
        var_33 thread _unknown_12A2( var_0[var_17], var_1, var_18 );
        var_33 waittill( var_1 );
    }
    else if ( _func_02F( var_16 ) )
    {
        var_33 = _func_1A5();
        var_33 thread _unknown_12B4( var_0[var_16], var_1 );
        var_33 thread _unknown_12CE( var_0[var_16], var_1 );
        var_33 waittill( var_1 );
    }

    var_34 = var_0;

    for ( var_35 = _func_1DA( var_34 ); _func_02F( var_35 ); var_35 = _func_1BF( var_34, var_35 ) )
    {
        var_9 = var_34[var_35];

        if ( !_func_02F( var_9 ) )
            continue;

        if ( _func_1B3( var_9 ) )
        {
            var_27 = undefined;

            if ( _func_02F( var_4 ) )
                var_27 = var_4;
            else
                var_27 = var_9._ID3189;

            if ( _func_02F( level._ID30895[var_27][var_1] ) )
            {
                var_29 = level._ID30895[var_27]["root"];
                var_9 _meth_8155( var_29, 1, 0.2 );
                var_30 = level._ID30895[var_27][var_1];
                var_9 _meth_814C( var_30, 0.2 );
            }
        }

        var_9._ID1363--;
        var_9._ID1502 = _func_03D();
    }

    var_clear_1
    var_clear_0
    self notify( var_1 );
}

_ID3001( var_0, var_1 )
{
    self endon( var_1 );
    var_0 waittill( "death" );

    if ( _func_02F( var_0._ID3036 ) && var_0._ID3036 )
        return;

    self notify( var_1 );
}

_ID3014( var_0, var_1, var_2 )
{
    self endon( var_1 );
    var_3 = _func_067( var_2 );
    wait(var_3);
    self notify( var_1 );
}

_ID3003( var_0, var_1 )
{
    self endon( var_1 );
    var_0 waittill( "single dialogue" );
    self notify( var_1 );
}

_ID2988( var_0, var_1, var_2, var_3 )
{
    self endon( var_1 );
    var_0 endon( "death" );
    var_2 -= var_3;

    if ( var_3 > 0 && var_2 > 0 )
    {
        var_0 _ID42407::_ID41115( "single anim", "end", var_2 );
        var_0 _meth_814B();
    }
    else
        var_0 waittillmatch( "single anim",  "end"  );

    self notify( var_1 );
}

_ID3201( var_0, var_1, var_2 )
{
    if ( _func_02F( var_0._ID11572 ) && var_0._ID11572 )
        return;

    var_0 endon( "stop_sequencing_notetracks" );
    var_0 endon( "death" );
    var_0 animscripts\shared::_ID11529( var_1, undefined, undefined, 1 );
}

_ID1846( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID3208; var_1++ )
    {
        if ( _func_02F( self._ID3213[var_1] ) )
            continue;

        self._ID3213[var_1] = var_0;
        return;
    }

    var_2 = _func_1D9( self._ID3213 );
    var_3 = var_2[0];
    var_4 = self._ID3213[var_3]._ID12629;

    for ( var_1 = 1; var_1 < var_2.size; var_1++ )
    {
        var_5 = var_2[var_1];

        if ( self._ID3213[var_5]._ID12629 < var_4 )
        {
            var_4 = self._ID3213[var_5]._ID12629;
            var_3 = var_5;
        }
    }

    self._ID3213[var_3] = var_0;
}

_ID3206( var_0, var_1 )
{
    var_1 = _func_128( var_1 );
    var_2 = _func_1D9( self._ID3213 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];

        if ( self._ID3213[var_4]._ID3183 != var_0 )
            continue;

        if ( self._ID3213[var_4]._ID24954 != var_1 )
            continue;

        self._ID3213[var_4]._ID12629 = _func_03D() + 60000;
        return 1;
    }

    return 0;
}

_ID3212( var_0, var_1, var_2 )
{
    var_1 = _func_128( var_1 );
    _unknown_20F7();

    if ( var_1 == "end" )
        return;

    if ( _unknown_150D( var_0, var_1 ) )
        return;

    var_3 = _func_1A5();
    var_3._ID3183 = var_0;
    var_3._ID24954 = var_1;
    var_3._ID3189 = var_2;
    var_3._ID12629 = _func_03D() + 60000;
    _unknown_1512( var_3 );
}

_ID3209( var_0, var_1 )
{
    _unknown_2133();
    var_2 = _func_1A5();
    var_2._ID3183 = var_0;
    var_2._ID24954 = "#" + var_0;
    var_2._ID3189 = var_1;
    var_2._ID12629 = _func_03D() + 60000;

    if ( _ID3209( var_0, var_2._ID24954 ) )
        return;

    _unknown_154C( var_2 );
}

_ID3210( var_0, var_1, var_2 )
{
    _unknown_216F();
    var_0 = var_1 + var_0;
    var_3 = _func_1A5();
    var_3._ID3183 = var_0;
    var_3._ID24954 = "#" + var_0;
    var_3._ID3189 = var_2;
    var_3._ID12629 = _func_03D() + 60000;

    if ( _unknown_15A4( var_0, var_3._ID24954 ) )
        return;

    _unknown_158C( var_3 );
}

_ID25024( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 endon( "stop_sequencing_notetracks" );
    var_0 endon( "death" );

    if ( _func_02F( var_2 ) )
        var_6 = var_2;
    else
        var_6 = self;

    var_7 = undefined;

    if ( _func_02F( var_4 ) )
        var_7 = var_4;
    else
        var_7 = var_0._ID3189;

    var_8 = _func_1A5();
    var_8._ID10730 = [];
    var_9 = [];

    if ( _func_02F( var_7 ) && _func_02F( level._ID30905[var_7] ) )
    {
        if ( _func_02F( var_3 ) && _func_02F( level._ID30905[var_7][var_3] ) )
            var_9[var_3] = level._ID30905[var_7][var_3];

        if ( _func_02F( level._ID30905[var_7]["any"] ) )
            var_9["any"] = level._ID30905[var_7]["any"];
    }

    var_10 = var_9;

    for ( var_18 = _func_1DA( var_10 ); _func_02F( var_18 ); var_18 = _func_1BF( var_10, var_18 ) )
    {
        var_11 = var_10[var_18];
        var_12 = level._ID30905[var_7][var_18];

        for ( var_17 = _func_1DA( var_12 ); _func_02F( var_17 ); var_17 = _func_1BF( var_12, var_17 ) )
        {
            var_13 = var_12[var_17];
            var_14 = var_13;

            for ( var_16 = _func_1DA( var_14 ); _func_02F( var_16 ); var_16 = _func_1BF( var_14, var_16 ) )
            {
                var_15 = var_14[var_16];

                if ( _func_02F( var_15["dialog"] ) )
                {
                    var_8._ID10730[var_15["dialog"]] = 1;
                    continue;
                }

                if ( _func_02F( var_15["dialog_radio"] ) )
                    var_8._ID10730[var_15["dialog_radio"]] = 1;
            }

            var_clear_4
            var_clear_2
        }

        var_clear_6
        var_clear_1
    }

    var_clear_8
    var_22 = 0;
    var_23 = 0;

    for (;;)
    {
        var_8._ID10828 = 0;
        var_20 = undefined;

        if ( !var_22 && _func_02F( var_7 ) && _func_02F( var_3 ) )
        {
            var_22 = 1;
            var_24 = undefined;
            var_23 = _func_02F( level._ID30905[var_7] ) && _func_02F( level._ID30905[var_7][var_3] ) && _func_02F( level._ID30905[var_7][var_3]["start"] );

            if ( !var_23 )
                continue;

            var_20 = "start";
        }
        else
            var_0 waittill( var_1,  var_20  );

        if ( var_20 == "end" )
            return;

        var_25 = var_9;

        for ( var_18 = _func_1DA( var_25 ); _func_02F( var_18 ); var_18 = _func_1BF( var_25, var_18 ) )
        {
            var_11 = var_25[var_18];

            if ( _func_02F( level._ID30905[var_7][var_18][var_20] ) )
            {
                if ( _func_03A( "enableMW1GetArrayKeysAndForEach" ) != 0 )
                {
                    for ( var_26 = 0; var_26 < level._ID30905[var_7][var_18][var_20].size; var_26++ )
                    {
                        var_15 = level._ID30905[var_7][var_18][var_20][var_26];
                        _unknown_1985( var_15, var_0, var_8, var_6 );
                    }

                    continue;
                }

                var_27 = level._ID30905[var_7][var_18][var_20];

                for ( var_28 = _func_1DA( var_27 ); _func_02F( var_28 ); var_28 = _func_1BF( var_27, var_28 ) )
                {
                    var_15 = var_27[var_28];
                    _unknown_19B0( var_15, var_0, var_8, var_6 );
                }

                var_clear_1
                var_clear_0
            }
        }

        var_clear_2
        var_29 = _func_127( var_20, 0, 3 );

        if ( var_29 == "ps_" )
        {
            var_30 = _func_127( var_20, 3 );

            if ( _func_02F( var_0._ID3051 ) )
                var_0 thread [[ var_0._ID3051 ]]( var_30, "j_head", 1 );
            else
                var_0 thread _ID42407::_ID27080( var_30, undefined, 1 );

            continue;
        }

        if ( var_29 == "vo_" )
        {
            var_30 = _func_127( var_20, 3 );

            if ( _func_02F( var_0._ID3051 ) )
                var_0 thread [[ var_0._ID3051 ]]( var_30, "j_head", 1 );
            else
                var_0 thread _ID42407::_ID27080( var_30, "j_head", 1 );

            continue;
        }

        if ( var_29 == "sd_" )
        {
            var_30 = _func_127( var_20, 3 );
            var_0 thread _ID42407::_ID34400( var_30 );
            continue;
        }

        if ( var_29 == "fx_" )
        {
            if ( _unknown_19AA( var_20, var_0 ) )
                continue;
        }

        var_29 = _func_127( var_20, 0, 4 );

        if ( var_29 == "psr_" )
        {
            var_30 = _func_127( var_20, 4 );
            _ID42407::_ID28864( var_30 );
            continue;
        }

        switch ( var_20 )
        {

        }

        case "allowdeath false":
        case "allowdeath true":
        case "ignoreme false":
        case "ignoreme true":
        case "ignoreall false":
        case "ignoreall true":
    }
}

_ID50705( var_0, var_1 )
{
    var_2 = _func_129( _func_128( _func_127( var_0, 3 ) ), ",() " );

    if ( var_2.size == 2 )
    {
        if ( var_2[0] == "exploder" )
        {
            _ID42234::_ID13611( var_2[1] );
            return 1;
        }
        else if ( var_2[0] == "stop_exploder" )
        {
            _ID42407::_ID36481( var_2[1] );
            return 1;
        }
        else
        {
            _func_157( _ID42237::_ID16299( var_2[0] ), var_1, var_2[1] );
            return 1;
        }
    }
    else if ( var_2.size == 3 )
    {
        if ( var_2[0] == "playfxontag" )
        {
            _func_157( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "stopfxontag" )
        {
            _func_158( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "killfxontag" )
        {
            _func_159( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "attachmodel" )
        {
            var_1 _meth_801D( var_2[1], var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "detachmodel" )
        {
            var_1 _meth_802A( var_2[1], var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "stopfxontagwithoffset" )
        {
            _ID42237::_ID44034( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "killfxontagwithoffset" )
        {
            _ID42237::_ID49360( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
    }
    else if ( var_2[0] == "playfx" && var_2.size == 5 || var_2.size == 8 || var_2.size == 11 )
    {
        var_3 = _ID42237::_ID16299( var_2[1] );
        var_4 = ( _func_0C2( var_2[2] ), _func_0C2( var_2[3] ), _func_0C2( var_2[4] ) );
        var_5 = undefined;
        var_6 = undefined;

        if ( var_2.size >= 8 )
            var_5 = ( _func_0C2( var_2[5] ), _func_0C2( var_2[6] ), _func_0C2( var_2[7] ) );

        if ( var_2.size == 11 )
            var_6 = ( _func_0C2( var_2[8] ), _func_0C2( var_2[9] ), _func_0C2( var_2[10] ) );

        if ( !_func_02F( var_5 ) )
            _func_156( var_3, var_4 );
        else if ( !_func_02F( var_6 ) )
            _func_156( var_3, var_4, var_5 );
        else
            _func_156( var_3, var_4, var_5, var_6 );

        return 1;
    }
    else if ( var_2[0] == "playfxontagwithoffset" && var_2.size == 6 || var_2.size == 9 )
    {
        var_3 = _ID42237::_ID16299( var_2[1] );
        var_7 = var_2[2];
        var_8 = undefined;
        var_9 = ( _func_0C2( var_2[3] ), _func_0C2( var_2[4] ), _func_0C2( var_2[5] ) );

        if ( var_2.size == 9 )
            var_8 = ( _func_0C2( var_2[6] ), _func_0C2( var_2[7] ), _func_0C2( var_2[8] ) );

        _ID42237::_ID49667( var_3, var_1, var_7, var_9, var_8 );
        return 1;
    }

    return 0;
}

_ID3033( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_0["function"] ) )
    {
        if ( !_func_02F( var_0["function_args"] ) )
            self thread [[ var_0["function"] ]]( var_1 );
        else
            self thread [[ var_0["function"] ]]( var_1, var_0["function_args"] );
    }

    if ( _func_02F( var_0["flag"] ) )
        _ID42237::_ID14402( var_0["flag"] );

    if ( _func_02F( var_0["flag_clear"] ) )
        _ID42237::_ID14388( var_0["flag_clear"] );

    if ( _func_02F( var_0["notify"] ) )
        level notify( var_0["notify"] );

    if ( _func_02F( var_0["attach gun left"] ) )
    {
        var_1 _unknown_1F35();
        return;
    }

    if ( _func_02F( var_0["attach gun right"] ) )
    {
        var_1 _unknown_1F4E();
        return;
    }

    if ( _func_02F( var_0["detach gun"] ) )
    {
        var_1 _unknown_1F68( var_0 );
        return;
    }

    if ( _func_02F( var_0["attach model"] ) )
    {
        if ( _func_02F( var_0["selftag"] ) )
            var_1 _meth_801D( var_0["attach model"], var_0["selftag"] );
        else
            var_3 _meth_801D( var_0["attach model"], var_0["tag"] );

        return;
    }

    if ( _func_02F( var_0["detach model"] ) )
    {
        waitframe;

        if ( _func_02F( var_0["selftag"] ) )
            var_1 _meth_802A( var_0["detach model"], var_0["selftag"] );
        else
            var_3 _meth_802A( var_0["detach model"], var_0["tag"] );
    }

    if ( _func_02F( var_0["sound"] ) )
    {
        var_4 = undefined;

        if ( !_func_02F( var_0["sound_stays_death"] ) )
            var_4 = 1;

        var_5 = undefined;

        if ( _func_02F( var_0["sound_on_tag"] ) )
            var_5 = var_0["sound_on_tag"];

        var_1 thread _ID42407::_ID27080( var_0["sound"], var_5, var_4 );
    }

    if ( _func_02F( var_0["playersound"] ) )
        level._ID794 _meth_80A1( var_0["playersound"] );

    if ( !var_2._ID10828 )
    {
        if ( _func_02F( var_0["dialog"] ) && _func_02F( var_2._ID10730[var_0["dialog"]] ) )
        {
            var_6 = undefined;

            if ( _func_02F( var_0["dialog_do_notify_on_end"] ) && var_0["dialog_do_notify_on_end"] )
                var_6 = var_0["dialog"];

            var_1 animscripts\face::_ID30763( undefined, var_0["dialog"], 1.0, var_6 );
            var_2._ID10730[var_0["dialog"]] = undefined;
            var_2._ID10828 = 1;
        }
        else if ( _func_02F( var_0["dialog_radio"] ) && _func_02F( var_2._ID10730[var_0["dialog_radio"]] ) )
        {
            thread _ID42407::_ID28864( var_0["dialog_radio"] );
            var_2._ID10730[var_0["dialog_radio"]] = undefined;
            var_2._ID10828 = 1;
        }
    }

    if ( _func_02F( var_0["create model"] ) )
        _unknown_2069( var_1, var_0 );
    else if ( _func_02F( var_0["delete model"] ) )
        _unknown_209C( var_1, var_0 );

    if ( _func_02F( var_0["selftag"] ) )
    {
        if ( _func_02F( var_0["effect"] ) )
        {
            var_7 = _func_02F( var_0["moreThanThreeHack"] );

            if ( var_7 )
                _ID42237::_ID22529( "moreThanThreeHack" );

            _func_157( level._ID1426[var_0["effect"]], var_1, var_0["selftag"] );

            if ( var_7 )
                _ID42237::_ID39496( "moreThanThreeHack" );
        }

        if ( _func_02F( var_0["stop_effect"] ) )
            _func_158( level._ID1426[var_0["stop_effect"]], var_1, var_0["selftag"] );

        if ( _func_02F( var_0["swap_part_to_efx"] ) )
        {
            _func_157( level._ID1426[var_0["swap_part_to_efx"]], var_1, var_0["selftag"] );
            var_1 _meth_804E( var_0["selftag"] );
        }

        if ( _func_02F( var_0["trace_part_for_efx"] ) )
        {
            var_8 = undefined;
            var_9 = _ID42237::_ID16299( var_0["trace_part_for_efx"] );

            if ( _func_02F( var_0["trace_part_for_efx_water"] ) )
                var_8 = _ID42237::_ID16299( var_0["trace_part_for_efx_water"] );

            var_10 = 0;

            if ( _func_02F( var_0["trace_part_for_efx_delete_depth"] ) )
                var_10 = var_0["trace_part_for_efx_delete_depth"];

            var_1 thread _unknown_20D6( var_0["selftag"], var_9, var_8, var_10 );
        }

        if ( _func_02F( var_0["trace_part_for_efx_canceling"] ) )
            var_1 thread _unknown_20E8( var_0["selftag"] );
    }

    if ( _func_02F( var_0["tag"] ) && _func_02F( var_0["effect"] ) )
        _func_157( level._ID1426[var_0["effect"]], var_3, var_0["tag"] );

    if ( _func_02F( var_0["selftag"] ) && _func_02F( var_0["effect_looped"] ) )
        _func_157( level._ID1426[var_0["effect_looped"]], var_1, var_0["selftag"] );

    if ( _func_02F( var_0["lui_notify"] ) )
        _func_24D( var_0["lui_notify"], 0 );

    if ( _func_02F( var_0["omnvar"] ) )
        _func_032( var_0["omnvar"], var_0["value"] );
}

_ID38038( var_0 )
{
    self notify( "cancel_trace_for_part_" + var_0 );
}

_ID38037( var_0, var_1, var_2, var_3 )
{
    var_4 = "trace_part_for_efx";
    self endon( "cancel_trace_for_part_" + var_0 );
    var_5 = self _meth_818C( var_0 );
    var_6 = 0;
    var_7 = _func_1A5();
    var_7._ID21837 = self _meth_818C( var_0 );
    var_7._ID18722 = 0;
    var_7._ID26268 = var_0;
    var_7._ID18724 = 0;
    var_7._ID12315 = var_1;
    var_7._ID36216 = 0;
    var_7._ID21830 = _func_03D();

    while ( _func_02F( self ) && !var_7._ID18722 )
    {
        _ID42237::_ID22529( var_4 );
        _unknown_2215( var_7 );
        _ID42237::_ID39501( var_4 );

        if ( var_7._ID36216 == 1 && _func_03D() - var_7._ID21830 > 3000 )
            return;
    }

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( var_2 ) && var_7._ID18724 )
        var_1 = var_2;

    _func_156( var_1, var_7._ID21837 );

    if ( var_3 == 0 )
        self _meth_804E( var_0 );
    else
        thread _unknown_225B( var_7._ID21837[2] - var_3, var_0 );
}

_ID18560( var_0, var_1 )
{
    self endon( "entitydeleted" );

    while ( self _meth_818C( var_1 )[2] > var_0 )
        wait 0.05;

    self _meth_804E( var_1 );
}

_ID37552( var_0 )
{
    var_1 = undefined;

    if ( !_func_02F( self ) )
        return;

    var_0._ID9464 = self _meth_818C( var_0._ID26268 );

    if ( var_0._ID9464 != var_0._ID21837 )
    {
        var_0._ID21830 = _func_03D();
        var_0._ID36216 = 0;

        if ( !_func_08F( var_0._ID21837, var_0._ID9464, 0, self ) )
        {
            var_2 = _func_06D( var_0._ID21837, var_0._ID9464, 0, self );

            if ( var_2["fraction"] < 1.0 )
            {
                var_0._ID21837 = var_2["position"];
                var_0._ID18724 = var_2["surfacetype"] == "water";
                var_0._ID18722 = 1;
                return;
                jump loc_2326
            }
        }
    }
    else
        var_0._ID36216 = 1;

    var_0._ID21837 = var_0._ID9464;
}

_ID2987( var_0, var_1 )
{
    if ( !_func_02F( var_0._ID31557 ) )
        var_0._ID31557 = [];

    var_2 = var_0._ID31557.size;
    var_0._ID31557[var_2] = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_0._ID31557[var_2] _meth_80B8( var_1["create model"] );
    var_0._ID31557[var_2]._ID740 = var_0 _meth_818C( var_1["selftag"] );
    var_0._ID31557[var_2]._ID65 = var_0 _meth_818D( var_1["selftag"] );
}

_ID3080( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0._ID31557.size; var_2++ )
    {
        if ( _func_02F( var_1["explosion"] ) )
        {
            var_3 = _func_11F( var_0._ID31557[var_2]._ID65 );
            var_3 *= 120;
            var_3 += var_0._ID31557[var_2]._ID740;
            _func_156( level._ID1426[var_1["explosion"]], var_0._ID31557[var_2]._ID740 );
            _func_18F( var_0._ID31557[var_2]._ID740, 350, 700, 50 );
        }

        var_0._ID31557[var_2] _meth_80B7();
    }
}

_ID17506()
{
    if ( !_func_02F( self._ID17505 ) )
        return;

    self._ID17505 _meth_80B7();
    self._ID309 = 1;
    animscripts\shared::_ID26732( self._ID1302, "left" );
}

_ID17507()
{
    if ( !_func_02F( self._ID17505 ) )
        return;

    self._ID17505 _meth_80B7();
    self._ID309 = 1;
    animscripts\shared::_ID26732( self._ID1302, "right" );
}

_ID17502( var_0 )
{
    if ( _func_02F( self._ID17505 ) )
        return;

    var_1 = self _meth_818C( var_0["tag"] );
    var_2 = self _meth_818D( var_0["tag"] );
    var_3 = 0;

    if ( _func_02F( var_0["suspend"] ) )
        var_3 = var_0["suspend"];

    var_4 = _func_06A( "weapon_" + self._ID1302, var_1, var_3 );
    var_4._ID65 = var_2;
    self._ID17505 = var_4;
    animscripts\shared::_ID26732( self._ID1302, "none" );
    self._ID309 = 0;
}

_ID3419( var_0, var_1 )
{
    if ( !_func_02F( level._ID30895[var_1][var_0] ) )
        return 0;

    if ( !_func_0D3( level._ID30895[var_1][var_0] ) )
        return 0;

    return 1;
}

_ID3147( var_0, var_1 )
{
    var_2 = level._ID30895[var_0][var_1].size;
    var_3 = _func_0B7( var_2 );

    if ( var_2 > 1 )
    {
        var_4 = 0;
        var_5 = 0;

        for ( var_6 = 0; var_6 < var_2; var_6++ )
        {
            if ( _func_02F( level._ID30895[var_0][var_1 + "weight"] ) )
            {
                if ( _func_02F( level._ID30895[var_0][var_1 + "weight"][var_6] ) )
                {
                    var_4++;
                    var_5 += level._ID30895[var_0][var_1 + "weight"][var_6];
                }
            }
        }

        if ( var_4 == var_2 )
        {
            var_7 = _func_0B8( var_5 );
            var_5 = 0;

            for ( var_6 = 0; var_6 < var_2; var_6++ )
            {
                var_5 += level._ID30895[var_0][var_1 + "weight"][var_6];

                if ( var_7 < var_5 )
                {
                    var_3 = var_6;
                    break;
                }
            }
        }
    }

    return var_3;
}

_ID3065( var_0, var_1, var_2, var_3, var_4 )
{
    thread _unknown_26C6( var_0, var_1, var_4 );
    var_5 = _func_1A5();
    var_5._ID29048 = 0;
    var_6 = var_0;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_5._ID29048++;
        thread _unknown_2635( var_7, var_2, var_3, var_4, var_5 );
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        var_5 waittill( "reached_position" );

        if ( var_5._ID29048 <= 0 )
            return;
    }
}

_ID40872()
{
    self endon( "death" );
    self waittill( "anim_reach_complete" );
}

_ID19318( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 _unknown_2666();
    var_4._ID29048--;
    var_4 notify( "reached_position" );

    if ( _func_1A7( var_0 ) )
        _unknown_2A20( var_0, var_1, var_2, var_3 );
}

_ID15565( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;

    if ( _unknown_26C8( var_0 ) )
    {
        var_2 = self _meth_818C( var_0 );
        var_3 = self _meth_818D( var_0 );
    }
    else if ( _func_02F( level._ID53525[var_1] ) )
    {
        if ( _func_0D3( level._ID53525[var_1] ) )
        {
            var_3 = level._ID53525[var_1]["angles"];
            var_2 = level._ID53525[var_1]["origin"];
        }
        else
        {
            var_3 = level._ID53525[var_1]._ID65;
            var_2 = level._ID53525[var_1]._ID740;
        }
    }
    else
    {
        var_2 = self._ID740;
        var_3 = self._ID65;

        if ( !_func_02F( var_3 ) )
            var_3 = ( 0, 0, 0 );
    }

    var_4 = [];
    var_4["angles"] = var_3;
    var_4["origin"] = var_2;
    return var_4;
}

_ID46255( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( !_unknown_2757( self ) )
        return 0;

    var_1 = self _meth_83C5();

    if ( !_func_02F( var_1 ) )
        return 0;

    if ( var_1 == "" )
        return 0;

    if ( !_ID42407::_ID18252( var_1, var_0 ) )
        return 0;

    return 1;
}

_ID54080( var_0 )
{
    return _func_02F( var_0._ID170 );
}

_ID3076( var_0, var_1, var_2, var_3 )
{
    thread _unknown_279C( var_0 );
    _unknown_2818( var_0, var_1, var_2, var_3, ::_unknown_298F, ::_unknown_29A6 );
}

_ID23887( var_0 )
{
    var_1 = 0.3;
    waitframe;

    for (;;)
    {
        var_0 = _ID42407::_ID29506( var_0 );
        var_2 = [];
        var_3 = 0;
        var_4 = var_0;

        for ( var_8 = _func_1DA( var_4 ); _func_02F( var_8 ); var_8 = _func_1BF( var_4, var_8 ) )
        {
            var_5 = var_4[var_8];
            var_6 = var_5._ID451;

            if ( _func_02F( var_5._ID29041 ) )
                var_6 = var_5._ID29041;

            var_7 = _func_0F3( var_5._ID740, var_6 );
            var_2[var_5._ID39468] = var_7;

            if ( var_7 <= 4 )
            {
                var_0[var_8] = undefined;
                continue;
            }

            var_3 += var_7;
        }

        var_clear_8

        if ( var_0.size <= 1 )
            break;

        var_3 /= var_0.size;
        var_9 = var_0;

        for ( var_12 = _func_1DA( var_9 ); _func_02F( var_12 ); var_12 = _func_1BF( var_9, var_12 ) )
        {
            var_5 = var_9[var_12];
            var_10 = var_2[var_5._ID39468] - var_3;
            var_11 = var_10 * 0.003;

            if ( var_11 > var_1 )
                var_11 = var_1;
            else if ( var_11 < var_1 * -1 )
                var_11 = var_1 * -1;

            var_5._ID24424 = 1 + var_11;
        }

        var_clear_3
        var_clear_0
        wait 0.05;
    }

    var_13 = var_0;

    for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
    {
        var_5 = var_13[var_14];

        if ( _func_1A7( var_5 ) )
            var_5._ID24424 = 1;
    }

    var_clear_1
    var_clear_0
}

_ID3071( var_0, var_1 )
{
    if ( _func_0D3( var_0 ) )
    {
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            thread _unknown_2915( var_3, var_1 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    var_3 = var_0;
    var_3 endon( "new_anim_reach" );
    wait(var_1);
    var_3 notify( "goal" );
}

_ID3061( var_0, var_1, var_2, var_3, var_4 )
{
    return _unknown_2962( var_0, var_1, var_2, var_3, ::_unknown_2AD9, ::_unknown_2AF0, undefined, var_4 );
}

_ID3078( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = _ID42407::_ID50092();
    var_9 = _unknown_28C7( var_2, var_1 );
    var_10 = var_9["origin"];
    var_11 = var_9["angles"];

    if ( _func_02F( var_6 ) )
    {
        self._ID1244 = var_6;
        self._ID3370 = "stand";
    }

    var_12 = _func_1A5();
    var_13 = 0;
    var_14 = 0;
    var_15 = var_0;

    for ( var_19 = _func_1DA( var_15 ); _func_02F( var_19 ); var_19 = _func_1BF( var_15, var_19 ) )
    {
        var_16 = var_15[var_19];

        if ( _func_02F( var_6 ) )
            var_16._ID938 = self;

        if ( _func_02F( var_3 ) )
            var_17 = var_3;
        else
            var_17 = var_16._ID3189;

        if ( _func_02F( level._ID30895[var_17][var_1] ) )
        {
            if ( _func_0D3( level._ID30895[var_17][var_1] ) )
                var_18 = _func_071( var_10, var_11, level._ID30895[var_17][var_1][0] );
            else
                var_18 = _func_071( var_10, var_11, level._ID30895[var_17][var_1] );
        }
        else
            var_18 = var_10;

        var_14++;
        var_16 thread _unknown_2B7C( var_12, var_18, var_4, var_5, var_1, var_7, var_8 );
    }

    var_clear_4
    var_clear_0
    var_20 = 1;
    var_12 thread _unknown_2AAB( thisthread, var_0, self, var_6, var_8 );

    while ( var_14 )
    {
        var_12 waittill( "reach_notify",  var_22, var_21, var_16  );

        if ( _func_02F( var_16 ) )
            var_16._ID3075 = var_21;

        if ( !var_21 )
            var_20 = 0;

        var_14--;
    }

    _unknown_2AC1( var_0, self, var_6 );
    var_12 notify( "end_reach_thread_monitor" );
    return var_20;
}

_ID3069( var_0, var_1, var_2 )
{
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_1A7( var_4 ) && var_4._ID3075 )
        {
            var_4._ID452 = var_4._ID25551;
            var_4._ID938 = undefined;
            var_4._ID1044 = 0;
        }

        if ( _func_02F( var_4 ) )
            var_4._ID3075 = undefined;
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_2 ) )
        var_1._ID1244 = undefined;
}

_ID24057( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "end_reach_thread_monitor" );

    while ( _func_02F( var_0 ) )
        waittillframeend;

    var_5 = var_1;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _func_02F( var_6 ) )
        {
            var_6._ID3075 = 1;
            var_6._ID29039 = 1;
            var_6 notify( "goal",  var_4  );

            if ( _func_02F( var_6._ID680 ) )
                jump loc_2B9C

            continue;
        }
    }

    var_clear_2
    var_clear_0
    _unknown_2B79( var_1, var_2, var_3 );
}

_ID3070( var_0 )
{
    if ( !_func_1A7( var_0 ) )
        return;

    if ( _func_02F( var_0._ID25551 ) )
        var_0._ID452 = var_0._ID25551;

    var_0._ID938 = undefined;
    var_0._ID1044 = 0;
}

_ID3141( var_0, var_1, var_2 )
{
    var_3 = _unknown_2A99( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    var_6 = var_0;

    for ( var_10 = _func_1DA( var_6 ); _func_02F( var_10 ); var_10 = _func_1BF( var_6, var_10 ) )
    {
        var_7 = var_6[var_10];
        var_8 = _func_071( var_4, var_5, level._ID30895[var_7._ID3189][var_1] );
        var_9 = _func_072( var_4, var_5, level._ID30895[var_7._ID3189][var_1] );

        if ( _func_0D4( var_7 ) )
        {
            var_7 _meth_81D1( var_8 );
            continue;
        }

        var_7._ID740 = var_8;
        var_7._ID65 = var_9;
    }

    var_clear_4
    var_clear_0
}

_ID3047( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _unknown_2B0B( var_2, var_1 );
    var_7 = var_6["origin"];
    var_8 = var_6["angles"];
    var_9 = var_0;

    for ( var_13 = _func_1DA( var_9 ); _func_02F( var_13 ); var_13 = _func_1BF( var_9, var_13 ) )
    {
        var_10 = var_9[var_13];
        var_11 = _func_071( var_7, var_8, level._ID30895[var_10._ID3189][var_1] );
        var_12 = _func_072( var_7, var_8, level._ID30895[var_10._ID3189][var_1] );

        if ( _func_0D4( var_10 ) )
            continue;

        var_10 _meth_82B8( var_11, var_3, var_4, var_5 );
        var_10 _meth_82BF( var_12, var_3, var_4, var_5 );
    }

    var_clear_4
    var_clear_0
}

_ID3030( var_0, var_1, var_2 )
{
    var_3 = _unknown_2B7D( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    var_6 = _func_071( var_4, var_5, level._ID30895["generic"][var_1] );
    var_7 = _func_072( var_4, var_5, level._ID30895["generic"][var_1] );

    if ( _func_0D4( var_0 ) )
        var_0 _meth_81D1( var_6 );
    else
    {
        var_0._ID740 = var_6;
        var_0._ID65 = var_7;
    }
}

_ID3126( var_0, var_1, var_2 )
{
    return _unknown_2D8D( var_0, "generic", var_1, var_2 );
}

_ID3127( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_2BDB( var_3, var_2 );
    var_5 = var_4["origin"];
    var_6 = var_4["angles"];
    var_7 = _func_071( var_5, var_6, level._ID30895[var_1][var_2] );
    var_8 = _func_071( var_5, var_6, level._ID30895[var_1][var_2] );
    var_9 = _func_06A( "script_model", var_7 );
    var_9 _meth_80B8( var_0 );
    var_9._ID65 = var_8;
    return var_9;
}

_ID3128( var_0, var_1 )
{
    self _meth_801D( var_0, var_1 );
}

_ID3039( var_0, var_1 )
{
    var_2 = self _meth_818C( var_1 );
    var_3 = _func_06A( "script_model", var_2 );
    var_3 _meth_80B8( var_0 );
    var_3 _meth_8053( self, var_1, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    return var_3;
}

_ID3129( var_0, var_1, var_2 )
{
    var_3 = _unknown_2C5A( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    var_6 = _func_1A5();
    var_7 = var_0;

    for ( var_10 = _func_1DA( var_7 ); _func_02F( var_10 ); var_10 = _func_1BF( var_7, var_10 ) )
    {
        var_8 = var_7[var_10];
        var_9 = _func_071( var_4, var_5, level._ID30895[var_8._ID3189][var_1] );
        var_8._ID740 = var_9;
    }

    var_clear_3
    var_clear_0
}

_ID29040( var_0, var_1, var_2 )
{
    _ID42237::_ID41098( "death", "goal" );
    var_3 = _func_1A7( self ) && _func_0F5( self._ID740, var_1 ) <= 2500;
    var_0 notify( "reach_notify",  self, var_3, var_2  );
}

_ID4976( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );
    self endon( "new_anim_reach" );
    var_1 = [[ var_2 ]]( var_1 );
    thread _unknown_2EED( var_0, var_1, var_6 );
    _ID42407::_ID32336( var_1 );
    self._ID29041 = var_1;
    self._ID452 = 0;

    if ( _func_02F( self._ID7._ID50527 ) )
        self._ID452 = self._ID7._ID50527;

    self waittill( "goal" );

    if ( _func_02F( self._ID29039 ) )
        self._ID29039 = undefined;

    self notify( "anim_reach_complete" );
    [[ var_3 ]]();
    self notify( "new_anim_reach" );
}

_ID29045( var_0 )
{
    if ( _func_02F( self._ID9501 ) )
    {

    }

    self._ID25551 = self._ID452;
    self._ID25568 = self._ID760;
    self._ID25569 = self._ID761;
    self._ID760 = 128;
    self._ID761 = 128;

    if ( !_func_02F( self._ID26574 ) )
        _ID42407::_ID10871();

    _unknown_2FA9( 1 );
    self._ID14383 = self._ID381;
    self._ID381 = 0;

    if ( !_func_02F( self._ID938 ) )
    {
        self._ID25504 = self._ID10998;
        self._ID10998 = 1;
    }

    self._ID29041 = undefined;
    self._ID9501 = 1;
    return var_0;
}

_ID29046()
{
    _unknown_2FCF( 0 );
    self._ID381 = self._ID14383;
    self._ID14383 = undefined;
    self._ID760 = self._ID25568;
    self._ID761 = self._ID25569;
    self._ID10998 = self._ID25504;
    self._ID9501 = undefined;
}

_ID2995( var_0 )
{
    if ( _func_02F( self._ID11568 ) )
        return;

    self _meth_81AF( var_0 );
    return;
}

_ID29042( var_0 )
{
    var_0 = _unknown_2FDB( var_0 );
    self._ID10998 = 0;
    return var_0;
}

_ID29043( var_0 )
{
    var_1 = self _meth_8146( var_0 );
    var_0 = var_1;
    var_0 = _unknown_2FEF( var_0 );
    self._ID10998 = 1;
    return var_0;
}

_ID29044( var_0 )
{
    var_1 = self _meth_8146( var_0 );
    var_0 = var_1;
    var_0 = _unknown_3005( var_0 );
    self._ID10998 = 0;
    return var_0;
}

_ID32556()
{
    self _meth_811E( level._ID30900[self._ID3189] );
}

_ID3111( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );
    var_7[0] = var_0;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    _unknown_27E1( var_7, var_1, var_2, var_3, var_4, undefined, var_5, var_6 );
}

_ID3116( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_3[0] = var_0;
    _unknown_27FA( var_3, var_1, var_2, 0.25 );
}

_ID3110( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_4[0] = var_0;
    _unknown_2815( var_4, var_1, var_2, 0.25 );
}

_ID3066( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );
    var_5[0] = var_0;
    _unknown_2E2E( var_5, var_1, var_2, var_3, var_4 );
}

_ID3074( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_4[0] = var_0;
    return _unknown_2F1F( var_4, var_1, var_2, undefined, var_3 );
}

_ID3064( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_4[0] = var_0;
    _unknown_3213( var_4, var_1, var_2, var_3 );
}

_ID3063( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );
    var_5[0] = var_0;
    var_6 = _unknown_2EA3( var_2, var_1 );
    var_7 = var_6["origin"];
    var_8 = var_6["angles"];
    var_9 = var_0._ID3189;

    if ( _func_02F( level._ID30895[var_9][var_1] ) )
    {
        if ( _func_0D3( level._ID30895[var_9][var_1] ) )
            var_10 = level._ID30895[var_9][var_1][0];
        else
            var_10 = level._ID30895[var_9][var_1];

        var_7 = _func_071( var_7, var_8, var_10 );
    }

    var_11 = _func_06A( "script_origin", var_7 );
    var_11._ID65 = var_8;

    if ( _func_02F( var_3 ) )
        var_11._ID1244 = var_3;
    else
        var_11._ID1244 = self._ID1244;

    if ( _func_02F( var_4 ) )
        var_11._ID3370 = var_4;
    else
        var_11._ID3370 = self _meth_8035();

    var_0._ID938 = var_11;
    _unknown_32B8( var_5, var_1, var_2 );
    var_0._ID938 = undefined;
    var_11 _meth_80B7();

    while ( var_0._ID7._ID24414 != "stop" )
        wait 0.05;
}

_ID47538( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _unknown_2F5B( undefined, var_1 );
    var_6 = var_5["origin"];
    var_7 = var_5["angles"];

    if ( !_func_02F( var_4 ) )
        var_4 = var_0._ID3189;

    if ( _func_02F( level._ID30895[var_4][var_1] ) )
    {
        if ( _func_0D3( level._ID30895[var_4][var_1] ) )
            var_8 = level._ID30895[var_4][var_1][0];
        else
            var_8 = level._ID30895[var_4][var_1];

        var_6 = _func_071( var_6, var_7, var_8 );
        var_7 = _func_072( var_6, var_7, var_8 );
    }

    if ( !_func_02F( var_2 ) )
        var_2 = "exposed";

    var_9 = !_func_02F( var_0._ID31209 ) && _func_02F( var_0._ID25508 );
    var_10 = var_7[1];
    var_11 = _func_1A5();
    var_0 _ID42407::_ID2286();
    var_0._ID938 = undefined;
    var_0 _unknown_3210( var_6 );
    var_0 _unknown_3327( var_11, var_10, var_6, var_10, var_2 );
    var_12 = var_10 - var_0 animscripts\utility::_ID22635( "cover_trans_angles", var_2, var_11._ID54606 );

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    var_0 _unknown_333B( var_2, var_11, var_12, var_3 );
    var_0 _unknown_325F();
    var_0 _ID42407::_ID2358( undefined, var_9 );
}

_ID48735( var_0, var_1, var_2, var_3 )
{
    var_4 = animscripts\utility::_ID22630( "cover_trans", var_0 )[var_1._ID54606];
    var_5 = _func_067( var_4 );
    self._ID3262 = var_1._ID54606;
    self._ID3263 = var_0;
    self _meth_81F4( var_1._ID35897, var_2, 0 );
    wait(var_5 - var_3);
}

_ID48244( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_0 ) )
        return;

    if ( var_3 == "exposed" )
        var_5 = anim._ID3277["soldier"]["longestExposedApproachDist"];
    else
        var_5 = anim._ID3277["soldier"]["CoverTransLongestDist"][var_3];

    _ID42407::_ID32336( var_2 );
    self._ID29041 = var_2;
    self._ID452 = 0;
    var_6 = var_5 * var_5;

    while ( _func_0F5( self._ID740, var_2 ) > var_6 )
        wait 0.05;

    var_0._ID54606 = _unknown_3414( self, var_2, var_1, var_3 );
    var_0._ID35897 = animscripts\cover_arrival::_ID16137( var_2, var_1, var_3, var_0._ID54606 );
    var_6 = _func_0F8( animscripts\utility::_ID22635( "cover_trans_dist", var_3, var_0._ID54606 ) );

    while ( _func_0F5( self._ID740, var_2 ) > var_6 )
        wait 0.05;
}

_ID43521( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = "exposed";

    var_4 = _func_119( var_1 - var_0._ID740 );
    var_5 = _func_1A5();
    animscripts\exit_node::_ID6632( var_5, var_3, 1, var_2, var_4, 9, -1 );
    var_6 = 1;

    for ( var_7 = 2; var_7 <= 9; var_7++ )
    {
        if ( var_5._ID38684[var_7] > var_5._ID38684[var_6] )
            var_6 = var_7;
    }

    return var_5._ID38671[var_6];
}

_ID3062( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    _unknown_31F7( var_0, var_1, var_2, undefined, ::_unknown_3397, ::_unknown_3385, var_3 );
}

_ID3044( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    var_0 endon( "death" );

    if ( _func_02F( var_2 ) && _func_02F( self._ID669 ) && _ID42407::_ID18252( self._ID669, var_2 ) )
    {
        var_6 = var_2;
        var_2 = var_3;
        var_3 = var_6;
    }

    var_7 = [];
    var_7["guy"] = var_0;
    var_7["entity"] = self;
    var_7["tag"] = var_3;
    var_7["origin_offset"] = var_5;
    var_8[0] = var_7;
    _unknown_2A49( var_8, var_1, var_2, var_4 );
}

_ID3142( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_3[0] = var_0;
    _unknown_3307( var_3, var_1, var_2 );
}

_ID1845( var_0, var_1 )
{
    if ( !_func_02F( level._ID8406 ) )
        level._ID8406[var_0][0] = var_1;
    else if ( !_func_02F( level._ID8406[var_0] ) )
        level._ID8406[var_0][0] = var_1;
    else
    {
        for ( var_2 = 0; var_2 < level._ID8406[var_0].size; var_2++ )
        {
            if ( level._ID8406[var_0][var_2] == var_1 )
                return;
        }

        level._ID8406[var_0][level._ID8406[var_0].size] = var_1;
    }
}

_ID3108( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( _func_02F( var_0._ID21839 ) )
        _ID42407::_ID40847( var_0._ID21839, 0.5 );

    _ID42407::_ID15093( ::_unknown_3495, var_0, var_1, var_2, var_3 );

    if ( _func_1A7( var_0 ) )
        var_0._ID21839 = _func_03D();
}

_ID3026( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 endon( "death" );

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( _func_02F( var_0._ID21839 ) )
        _ID42407::_ID40847( var_0._ID21839, 0.5 );

    if ( _func_02F( var_4 ) )
        _ID42407::_ID15099( var_4, ::_unknown_34DF, var_0, var_1, var_2, var_3, "generic" );
    else
        _ID42407::_ID15093( ::_unknown_34F2, var_0, var_1, var_2, var_3, "generic" );

    if ( _func_1A7( var_0 ) )
        var_0._ID21839 = _func_03D();
}

_ID3005( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_81AF( 0 );
    }

    var_clear_2
    var_clear_0
}

_ID3059( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_81AF( 1 );
    }

    var_clear_2
    var_clear_0
}

_ID29631( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_128( var_1 );
    var_5 = level._ID30905[var_0][var_2][var_1];
    var_2 = _unknown_37B0( var_2 );
    var_6 = -1;

    if ( !_func_02F( var_5 ) || !_func_0D3( var_5 ) || var_5.size < 1 )
        return;

    for ( var_7 = 0; var_7 < var_5.size; var_7++ )
    {
        if ( _func_02F( var_5[var_7][var_3] ) )
        {
            if ( !_func_02F( var_4 ) || var_5[var_7][var_3] == var_4 )
            {
                var_6 = var_7;
                break;
            }
        }
    }

    if ( var_6 < 0 )
        return;

    if ( var_5.size == 1 )
        var_5 = [];
    else
        var_5 = _ID42407::_ID3325( var_5, var_6 );

    level._ID30905[var_0][var_2][var_1] = var_5;
}

_ID2062( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_128( var_1 );
    var_2 = _unknown_3825( var_2 );
    var_5 = _unknown_37D3( var_0, var_1, var_2 );
    level._ID30905[var_0][var_2][var_1][var_5] = [];
    level._ID30905[var_0][var_2][var_1][var_5]["dialog"] = var_3;
    level._ID30905[var_0][var_2][var_1][var_5]["dialog_do_notify_on_end"] = var_4;
}

_ID50350( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_128( var_1 );
    var_2 = _unknown_3865( var_2 );
    var_4 = _unknown_3813( var_0, var_1, var_2 );
    level._ID30905[var_0][var_2][var_1][var_4] = [];
    level._ID30905[var_0][var_2][var_1][var_4]["dialog_radio"] = var_3;
}

_ID1920( var_0, var_1, var_2 )
{
    var_1 = _func_128( var_1 );
    _unknown_3846( var_0, var_1, var_2 );
    return level._ID30905[var_0][var_2][var_1].size;
}

_ID1921( var_0, var_1, var_2 )
{
    var_1 = _func_128( var_1 );

    if ( !_func_02F( level._ID30905 ) )
        level._ID30905 = [];

    if ( !_func_02F( level._ID30905[var_0] ) )
        level._ID30905[var_0] = [];

    if ( !_func_02F( level._ID30905[var_0][var_2] ) )
        level._ID30905[var_0][var_2] = [];

    if ( !_func_02F( level._ID30905[var_0][var_2][var_1] ) )
        level._ID30905[var_0][var_2][var_1] = [];
}

_ID2069( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_1 = _func_128( var_1 );
    var_2 = _unknown_38FA( var_2 );
    var_6 = _unknown_38A8( var_0, var_1, var_2 );
    level._ID30905[var_0][var_2][var_1][var_6] = [];
    level._ID30905[var_0][var_2][var_1][var_6]["sound"] = var_3;

    if ( _func_02F( var_4 ) )
        level._ID30905[var_0][var_2][var_1][var_6]["sound_stays_death"] = 1;

    if ( _func_02F( var_5 ) )
        level._ID30905[var_0][var_2][var_1][var_6]["sound_on_tag"] = var_5;
}

_ID24948( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_3A35();
    _unknown_3927( var_4._ID3189, var_0, var_4._ID3091, var_1, var_2, var_3 );
}

_ID2067( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_128( var_1 );
    var_2 = _unknown_3972( var_2 );
    var_4 = _unknown_3920( var_0, var_1, var_2 );
    level._ID30905[var_0][var_2][var_1][var_4] = [];
    level._ID30905[var_0][var_2][var_1][var_4]["playersound"] = var_3;
}

_ID15753( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return "any";

    return var_0;
}

_ID2075( var_0, var_1, var_2 )
{
    if ( !_func_02F( level._ID30899[var_0] ) )
        level._ID30899[var_0] = [];

    level._ID30899[var_0][var_1] = var_2;
}

_ID2056( var_0, var_1, var_2, var_3 )
{
    var_2 = _func_128( var_2 );
    var_1 = _ID2056( var_1 );
    var_4 = _unknown_397A( var_0, var_2, var_1 );
    var_5 = [];
    var_5["sound"] = var_3;
    var_5["created_by_animSound"] = 1;
    level._ID30905[var_0][var_1][var_2][var_4] = var_5;
}

_ID2057( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_128( var_1 );
    var_4 = _unknown_39FF( var_4 );
    var_5 = _unknown_39AD( var_0, var_1, var_4 );
    var_6 = [];
    var_6["attach model"] = var_2;
    var_6["selftag"] = var_3;
    level._ID30905[var_0][var_4][var_1][var_5] = var_6;
}

_ID2059( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_128( var_1 );
    var_4 = _unknown_3A32( var_4 );
    var_5 = _unknown_39E0( var_0, var_1, var_4 );
    var_6 = [];
    var_6["detach model"] = var_2;
    var_6["selftag"] = var_3;
    level._ID30905[var_0][var_4][var_1][var_5] = var_6;
}

_ID2060( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_128( var_1 );
    var_2 = _unknown_3A64( var_2 );
    var_4 = _unknown_3A12( var_0, var_1, var_2 );
    var_5 = [];
    var_5["detach gun"] = 1;
    var_5["tag"] = "tag_weapon_right";

    if ( _func_02F( var_3 ) )
        var_5["suspend"] = var_3;

    level._ID30905[var_0][var_2][var_1][var_4] = var_5;
}

_ID2058( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_128( var_1 );
    var_3 = _unknown_3AA6( var_3 );
    var_5 = _unknown_3A54( var_0, var_1, var_3 );
    var_6 = [];
    var_6["function"] = var_2;
    var_6["function_args"] = var_4;
    level._ID30905[var_0][var_3][var_1][var_5] = var_6;
}

_ID2070( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID42237::_ID16299( var_3 );
    var_1 = _func_128( var_1 );
    var_2 = _unknown_3AE0( var_2 );
    var_6 = _unknown_3A8E( var_0, var_1, var_2 );
    var_7 = [];
    var_7["effect"] = var_3;
    var_7["selftag"] = var_4;

    if ( _func_02F( var_5 ) )
        var_7["moreThanThreeHack"] = var_5;

    level._ID30905[var_0][var_2][var_1][var_6] = var_7;
}

_ID2071( var_0, var_1, var_2, var_3, var_4 )
{
    _ID42237::_ID16299( var_3 );
    var_1 = _func_128( var_1 );
    var_2 = _unknown_3B25( var_2 );
    var_5 = _unknown_3AD3( var_0, var_1, var_2 );
    var_6 = [];
    var_6["stop_effect"] = var_3;
    var_6["selftag"] = var_4;
    level._ID30905[var_0][var_2][var_1][var_5] = var_6;
}

_ID24950( var_0, var_1, var_2 )
{
    var_3 = _unknown_3C34();
    _ID42237::_ID1891( var_1, var_1 );
    _unknown_3C0B( var_3._ID3189, var_0, var_3._ID3202, var_1, var_2 );
}

_ID24949( var_0, var_1, var_2 )
{
    var_3 = _unknown_3C53();
    _ID42237::_ID1891( var_1, var_1 );
    _unknown_3C02( var_3._ID3189, var_0, var_3._ID3202, var_1, var_2 );
}

_ID2072( var_0, var_1, var_2, var_3, var_4 )
{
    _ID42237::_ID16299( var_3 );
    var_1 = _func_128( var_1 );
    var_2 = _unknown_3B9C( var_2 );
    var_5 = _unknown_3B4A( var_0, var_1, var_2 );
    var_6 = [];
    var_6["swap_part_to_efx"] = var_3;
    var_6["selftag"] = var_4;
    level._ID30905[var_0][var_2][var_1][var_5] = var_6;
}

_ID24951( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _unknown_3CAF();

    if ( var_0 != "start" && !_func_068( var_6 _ID42407::_ID16120( var_6._ID3091 ), var_0 ) )
        return;

    _ID42237::_ID1891( var_3, var_3 );

    if ( _func_02F( var_4 ) )
        _ID42237::_ID1891( var_4, var_4 );

    _unknown_3CEE( var_6._ID3189, var_0, var_1, var_6._ID3091, var_2, var_3, var_4, var_5 );
}

_ID24947( var_0, var_1, var_2 )
{
    var_3 = _unknown_3CF5();

    if ( var_0 != "start" && !_func_068( var_3 _ID42407::_ID16120( var_3._ID3091 ), var_0 ) )
        return;

    _ID42237::_ID1891( var_2, var_2 );
    _unknown_3CA6( var_3._ID3189, var_0, var_3._ID3091, var_2, var_1, 1 );
}

_ID15664()
{
    var_0 = level._ID9434;
    return var_0;
}

_ID2073( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    _ID42237::_ID16299( var_5 );
    var_1 = _func_128( var_1 );
    var_3 = _unknown_3C63( var_3 );
    var_8 = _unknown_3C12( var_0, var_1, var_3 );
    var_9 = [];
    var_9["trace_part_for_efx"] = var_5;
    var_9["trace_part_for_efx_water"] = var_6;
    var_9["trace_part_for_efx_cancel"] = var_2;
    var_9["trace_part_for_efx_delete_depth"] = var_7;
    var_9["selftag"] = var_4;
    level._ID30905[var_0][var_3][var_1][var_8] = var_9;

    if ( _func_02F( var_2 ) )
    {
        var_9 = [];
        var_9["trace_part_for_efx_canceling"] = var_2;
        var_9["selftag"] = var_4;
        var_8 = _unknown_3C5D( var_0, var_2, var_3 );
        level._ID30905[var_0][var_3][var_2][var_8] = var_9;
    }
}

_ID2063( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_128( var_1 );
    var_3 = _unknown_3CD5( var_3 );
    var_4 = _unknown_3C83( var_0, var_1, var_3 );
    var_5 = [];
    var_5["flag"] = var_2;
    level._ID30905[var_0][var_3][var_1][var_4] = var_5;

    if ( !_func_02F( level._ID14385 ) || !_func_02F( level._ID14385[var_2] ) )
        _ID42237::_ID14400( var_2 );
}

_ID2064( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_128( var_1 );
    var_3 = _unknown_3D17( var_3 );
    var_4 = _unknown_3CC5( var_0, var_1, var_3 );
    var_5 = [];
    var_5["flag_clear"] = var_2;
    level._ID30905[var_0][var_3][var_1][var_4] = var_5;

    if ( !_func_02F( level._ID14385 ) || !_func_02F( level._ID14385[var_2] ) )
        _ID42237::_ID14400( var_2 );
}

_ID2066( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_128( var_1 );
    var_3 = _unknown_3D59( var_3 );
    var_4 = _unknown_3D07( var_0, var_1, var_3 );
    var_5 = [];
    var_5["notify"] = var_2;
    level._ID30905[var_0][var_3][var_1][var_4] = var_5;
}

_ID2065( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_128( var_1 );
    var_3 = _unknown_3D84( var_3 );
    var_4 = _unknown_3D31( var_0, var_1, var_3 );
    var_5 = [];
    var_5["lui_notify"] = var_2;
    level._ID30905[var_0][var_3][var_1][var_4] = var_5;
}

_ID2068( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_128( var_1 );
    var_4 = _unknown_3DB0( var_4 );
    var_5 = _unknown_3D5E( var_0, var_1, var_4 );
    var_6 = [];
    var_6["omnvar"] = var_2;
    var_6["value"] = var_3;
    level._ID30905[var_0][var_4][var_1][var_5] = var_6;
}
#using_animtree("generic_human");

_ID11015( var_0 )
{
    if ( !_func_02F( var_0 ) || var_0 )
    {
        self._ID4956 = 1;
        self _meth_814C( %head, 0.2 );
        self._ID13770 = undefined;
    }
    else
        self._ID4956 = undefined;
}

_ID3013( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    self endon( var_1 );
    var_3 = 0.05;
    var_0 notify( "newLookTarget" );
    waitframe;
    _unknown_3F7E();
    var_0 _meth_8155( %scripted_talking, level._ID43470, 0.2 );
    var_4 = "face_done_" + var_1;
    var_0 _meth_8116( var_4, var_2, 1, 0, 1 );
    thread _unknown_3FCA( var_0, var_1, var_2 );
    thread _unknown_409C( var_0, var_4, var_1 );
}

_ID14745( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    var_0 endon( "stop_loop" );
    self endon( var_1 );

    for (;;)
    {
        _unknown_3FC3();
        var_0 _meth_8155( %scripted_talking, level._ID43470, 0.4 );
        var_0 _meth_815D( "face_done_" + var_1, var_2, 1, 0, 1 );
        wait 0.05;
    }
}

_ID3015( var_0, var_1 )
{
    self endon( "death" );

    if ( _func_0D4( self ) && !_func_1A7( self ) )
        return;

    var_2 = 0.05;
    self notify( "newLookTarget" );
    self endon( "newLookTarget" );
    waitframe;

    if ( !_func_02F( var_1 ) && _func_02F( self._ID606 ) )
        var_1 = self._ID606;

    if ( self _meth_84FD() )
        var_3 = %generic_talker_blend;
    else
    {
        var_4 = self _meth_844F( "jnt_lips_L" );

        if ( var_4 != -1 )
            var_3 = %generic_talker_bs;
        else if ( self _meth_8147() )
            var_3 = %generic_talker_axis;
        else
            var_3 = %generic_talker_allies;
    }

    self _meth_8150( var_3, 1, 0, 1 );
    self _meth_8155( %scripted_talking, level._ID43470, 0.4 );
    _unknown_4084();
    _unknown_4102( var_0, var_3 );
    var_2 = 0.3;
    self _meth_814C( %scripted_talking, level._ID54349 );
    _unknown_40A1( 0 );
}

_ID32465( var_0, var_1 )
{
    self endon( var_0 );

    for (;;)
    {
        wait 0.2;
        self _meth_814E( var_1, 1, 0, 1 );
        self _meth_8155( %scripted_talking, level._ID43470, 0.4 );
        _unknown_40C9();
    }
}

_ID37173( var_0 )
{
    self endon( "death" );
    var_1 = %generic_talker_allies;

    if ( self _meth_8147() )
        var_1 = %generic_talker_axis;

    var_2 = self _meth_844F( "jnt_lips_L" );

    if ( var_2 != -1 )
        var_1 = %generic_talker_bs;

    self _meth_8150( var_1, 1, 0, 1 );
    self _meth_8155( %scripted_talking, level._ID43470, 0.4 );
    _unknown_411B();
    wait(var_0);
    var_3 = 0.3;
    self _meth_814C( %scripted_talking, level._ID54349 );
    _unknown_4134( 0 );
}

_ID16758( var_0, var_1 )
{
    var_2 = var_0[1] - var_1[1];
    var_2 = _func_0F0( var_2 );
    return var_2;
}

_ID22628( var_0, var_1 )
{
    self notify( "lookline" );
    self endon( "lookline" );
    self endon( var_1 );
    self endon( "death" );

    for (;;)
        wait 0.05;
}

_ID3073( var_0, var_1, var_2 )
{
    var_3 = _func_1A5();
    var_3._ID216 = var_0.size;
    var_4 = var_0;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        thread _unknown_425B( var_5, var_1, var_2, var_3 );
    }

    var_clear_2
    var_clear_0

    while ( var_3._ID216 )
        var_3 waittill( "reached_goal" );

    self notify( "stopReachIdle" );
}

_ID29049( var_0, var_1, var_2, var_3 )
{
    _unknown_3E25( var_0, var_1 );
    var_3._ID216--;
    var_3 notify( "reached_goal" );

    if ( var_3._ID216 > 0 )
        _unknown_3F39( var_0, var_2, "stopReachIdle" );
}

_ID10210( var_0, var_1, var_2, var_3 )
{
    if ( _func_068( var_3, "dialog" ) )
        self waittillmatch( "face_done_" + var_0,  "dialog"  );

    if ( var_1 )
        animscripts\face::_ID30763( undefined, var_2, 1.0 );
    else
        animscripts\face::_ID30763( undefined, var_2, 1.0, "single dialogue" );
}

_ID7918( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    var_0 waittillmatch( var_1,  "end"  );
    var_3 = 0.3;
    var_0 _meth_814C( %scripted_talking, level._ID54349 );
    _unknown_4238( 0 );
}

_ID3132( var_0, var_1, var_2 )
{
    var_3 = _unknown_3C19( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    _ID42237::_ID3350( var_0, ::_unknown_436A, var_1, var_4, var_5 );
}

_ID3133( var_0, var_1, var_2 )
{
    var_3[0] = var_0;
    _ID3133( var_3, var_1, var_2 );
}

_ID32454( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = undefined;

    if ( _func_02F( var_3 ) )
        var_5 = var_3;
    else
        var_5 = self._ID3189;

    if ( _func_02F( var_4 ) && var_4 )
        var_6 = level._ID30895[var_5][var_0][0];
    else if ( _func_0D3( level._ID30895[var_5][var_0] ) )
        var_6 = _ID42237::_ID28945( level._ID30895[var_5][var_0] );
    else
        var_6 = level._ID30895[var_5][var_0];

    if ( _func_0D4( self ) )
    {
        var_7 = _func_071( var_1, var_2, var_6 );
        var_8 = _func_072( var_1, var_2, var_6 );

        if ( _func_02F( self._ID3131 ) )
            var_7 = _ID42407::_ID17434( var_7 );

        self _meth_81D2( var_7, var_8 );
    }
    else if ( self._ID172 == "script_vehicle" )
        self _meth_8286( _func_071( var_1, var_2, var_6 ), _func_072( var_1, var_2, var_6 ) );
    else
    {
        self._ID740 = _func_071( var_1, var_2, var_6 );
        self._ID65 = _func_072( var_1, var_2, var_6 );
    }
}

_ID2991( var_0, var_1 )
{
    var_2 = [];
    var_2["guy"] = self;
    var_2["entity"] = self;
    return var_2;
}

_ID2990( var_0, var_1 )
{
    var_2 = [];
    var_2["guy"] = self;
    var_2["entity"] = var_0;
    var_2["tag"] = var_1;
    return var_2;
}

_ID1959()
{
    if ( !_func_02F( self._ID3213 ) )
        self._ID3213 = [];

    var_0 = 0;

    for ( var_1 = 0; var_1 < level._ID3213.size; var_1++ )
    {
        if ( self == level._ID3213[var_1] )
        {
            var_0 = 1;
            break;
        }
    }

    if ( !var_0 )
        level._ID3213[level._ID3213.size] = self;
}

_ID3094( var_0, var_1, var_2 )
{
    var_0 thread _ID3092( var_1, var_2 );
}

_ID3092( var_0, var_1, var_2 )
{
    _ID42237::_ID3350( var_0, ::_unknown_44EF, var_1, var_2 );
}

_ID3093( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( _func_02F( var_2 ) )
        var_3 = var_2;
    else
        var_3 = self._ID3189;

    var_4 = _ID42407::_ID16121( var_0, var_3 );

    if ( _func_0D3( var_4 ) )
        var_4 = var_4[0];

    self _meth_811A( "single anim", var_4, 1, 0, var_1 );
}

_ID3096( var_0, var_1, var_2 )
{
    _ID42237::_ID3350( var_0, ::_unknown_4544, var_1, var_2 );
}

_ID3090( var_0, var_1 )
{
    var_2 = _ID42407::_ID16120( var_0 );
    self _meth_8120( var_2, var_1 );
}

_ID21772( var_0, var_1 )
{
    if ( !_func_02F( self._ID21771 ) )
    {
        self._ID21771 = _func_03D();
        return;
    }

    var_2 = _func_03D();

    if ( self._ID21771 == var_2 )
    {
        self endon( "death" );
        wait 0.05;
    }

    self._ID21771 = var_2;
}

_ID32256( var_0, var_1 )
{
    var_0._ID9575 = animscripts\cover_arrival::_ID9576;
    var_0._ID36146 = level._ID30895[var_0._ID3189][var_1];
}

_ID9116( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = "generic";
    else
        level._ID30900[var_3] = var_0;

    var_5 = _func_1A5();
    var_5._ID3217 = var_0;
    var_5._ID669 = var_4;

    if ( _func_02F( var_4 ) )
        level._ID30904[var_3] = var_4;

    if ( _func_02F( var_2 ) )
        level._ID30895[var_3][var_1] = var_2;

    var_5._ID3189 = var_3;
    var_5._ID3091 = var_1;
    level._ID9434 = var_5;
}

_ID44809( var_0 )
{
    return _func_068( var_0, "animrate_forcedefault" );
}

_ID46811( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_0 ) )
        self endon( var_0 );

    var_4 = 0.05;
    var_5 = _func_0E7( var_3 / var_4 );

    for ( var_6 = 0; var_6 <= var_5; var_6++ )
    {
        var_7 = _func_11C( var_1._ID740, var_2._ID740, var_6 / var_5 );
        var_8 = _ID42407::_ID13198( var_1._ID65, var_2._ID65, var_6 / var_5 );
        self _meth_8598( var_7, var_8 );
        wait(var_4);
    }
}

_ID45303( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( var_0 );
    var_5 = 0.05;
    var_6 = _func_0E7( var_4 / var_5 );

    for ( var_7 = 0; var_7 <= var_6; var_7++ )
    {
        var_8 = var_2 _meth_818C( var_3 );
        var_9 = var_2 _meth_818D( var_3 );
        var_10 = _func_11C( var_1._ID740, var_8, var_7 / var_6 );
        var_11 = _ID42407::_ID13198( var_1._ID65, var_9, var_7 / var_6 );
        self _meth_8598( var_10, var_11 );
        wait(var_5);
    }

    for (;;)
    {
        var_8 = var_2 _meth_818C( var_3 );
        var_9 = var_2 _meth_818D( var_3 );
        self _meth_8598( var_8, var_9 );
        wait(var_5);
    }
}

_ID46741( var_0, var_1, var_2, var_3 )
{
    self endon( var_0 );
    var_4 = _func_315( var_3._ID740, var_3._ID65, var_1 );
    var_5 = _func_092( var_4 + ( 0, 0, 40 ), var_4 + ( 0, 0, -40 ) );
    var_6 = var_4[2] - var_5[2];
    var_7 = _func_1A5();
    var_7._ID65 = var_3._ID65;
    var_7._ID740 = var_3._ID740 - ( 0, 0, var_6 );
    wait(var_2);
    var_8 = _func_067( var_1 );
    _unknown_4741( var_0, var_3, var_7, var_8 - var_2 );
}

_ID45613( var_0 )
{
    self endon( "death" );
    var_1 = self _meth_831C();
    self _meth_82D5();

    if ( !self _meth_84EB() )
    {
        self _meth_80FA( var_1, "drop" );
        wait 0.1;
        wait(self _meth_859B() / 1000 - 0.1);
    }
    else
        waittillframeend;

    self notify( "viewmodelAnimStart" );
    self _meth_84C4( var_0 );
    self _meth_84C6( 1 );
    wait 0.1;
    self _meth_84C6( 0 );
    wait(self _meth_859B() / 1000 - 0.1);
    self _meth_8321( var_1 );
    wait 0.1;
    self _meth_82D6();
    wait(self _meth_859B() / 1000 - 0.05);
    self notify( "viewmodelAnimRaiseEnd" );
}

_ID53505( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0.05;
    var_6 = var_0 _meth_818D( "tag_player" );
    var_7 = _func_0F6( self._ID740 - var_0._ID740 );
    var_8 = self _meth_8346() - var_6;
    var_8 = ( animscripts\utility::_ID1735( var_8[0] ), animscripts\utility::_ID1735( var_8[1] ), animscripts\utility::_ID1735( var_8[2] ) );
    var_9 = var_4 - var_3;
    var_10 = _func_0F6( var_8 );
    var_11 = var_9 * _func_0EE( var_7 / var_1, 0, 1 );
    var_12 = var_9 * _func_0EE( var_10 / var_2, 0, 1 );
    var_13 = _ID42237::_ID37527( var_11 > var_12, var_11, var_12 );
    return _func_0E7( var_13 + var_3 / var_5 ) * var_5;
}
