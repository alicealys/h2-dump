// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24940( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( level._ID15079 ) )
        return;

    if ( !_func_02F( level._ID15079[var_0] ) )
        return;

    if ( !_func_02F( var_1 ) )
    {
        call [[ level._ID15079[var_0] ]]();
        return;
    }

    if ( !_func_02F( var_2 ) )
    {
        call [[ level._ID15079[var_0] ]]( var_1 );
        return;
    }

    if ( !_func_02F( var_3 ) )
    {
        call [[ level._ID15079[var_0] ]]( var_1, var_2 );
        return;
    }

    if ( !_func_02F( var_4 ) )
    {
        call [[ level._ID15079[var_0] ]]( var_1, var_2, var_3 );
        return;
    }

    call [[ level._ID15079[var_0] ]]( var_1, var_2, var_3, var_4 );
}

_ID31862( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( level._ID15079[var_0] ) )
        return;

    if ( !_func_02F( var_1 ) )
    {
        self call [[ level._ID15079[var_0] ]]();
        return;
    }

    if ( !_func_02F( var_2 ) )
    {
        self call [[ level._ID15079[var_0] ]]( var_1 );
        return;
    }

    if ( !_func_02F( var_3 ) )
    {
        self call [[ level._ID15079[var_0] ]]( var_1, var_2 );
        return;
    }

    if ( !_func_02F( var_4 ) )
    {
        self call [[ level._ID15079[var_0] ]]( var_1, var_2, var_3 );
        return;
    }

    self call [[ level._ID15079[var_0] ]]( var_1, var_2, var_3, var_4 );
}

_ID45487( var_0, var_1 )
{
    var_0 = ( var_0[0] * var_1, var_0[1] * var_1, var_0[2] * var_1 );
    return var_0;
}

_ID28976( var_0 )
{
    return ( _func_0B8( var_0 ) - var_0 * 0.5, _func_0B8( var_0 ) - var_0 * 0.5, _func_0B8( var_0 ) - var_0 * 0.5 );
}

_ID28978( var_0, var_1 )
{
    var_2 = _func_0BA( var_0, var_1 );

    if ( _func_0B7( 2 ) == 0 )
        var_2 *= -1;

    var_3 = _func_0BA( var_0, var_1 );

    if ( _func_0B7( 2 ) == 0 )
        var_3 *= -1;

    var_4 = _func_0BA( var_0, var_1 );

    if ( _func_0B7( 2 ) == 0 )
        var_4 *= -1;

    return ( var_2, var_3, var_4 );
}

_ID28977( var_0, var_1 )
{
    var_2 = _func_0B8( var_1 );
    var_3 = _func_0B8( 360 );
    var_4 = _func_0BB( var_2 );
    var_5 = _func_0BC( var_2 );
    var_6 = _func_0BB( var_3 );
    var_7 = _func_0BC( var_3 );
    var_8 = ( var_5, var_7 * var_4, var_6 * var_4 );
    return _func_123( var_8, _func_11A( var_0 ) );
}

_ID46360( var_0 )
{
    return _func_0C3( _func_0F8( var_0 ) - 1 ) < 0.002;
}

_ID34160( var_0 )
{
    if ( var_0 >= 0 )
        return 1;

    return -1;
}

_ID648( var_0, var_1 )
{
    var_2 = _func_0C1( var_0 / var_1 );

    if ( var_0 * var_1 < 0 )
        var_2 -= 1;

    return var_0 - var_2 * var_1;
}

_ID37877( var_0 )
{
    return "" + var_0;
}

_ID38049( var_0 )
{
    if ( _func_02F( self._ID9472 ) )
    {
        if ( var_0 == self._ID9472 )
            return;
    }

    self._ID9472 = var_0;
}

_ID15698( var_0 )
{
    var_1 = [];
    var_1["axis"] = "allies";
    var_1["allies"] = "axis";
    return var_1[var_0];
}

_ID7866( var_0 )
{
    self._ID13288[var_0] = anim._ID10137;
}

_ID32287( var_0, var_1 )
{
    self._ID13288[var_0] = var_1;
}

_ID32186( var_0 )
{
    var_1 = _func_1D9( self._ID13288 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        self._ID13288[var_1[var_2]] = var_0;
}

_ID8201()
{
    return _func_0B7( 100 ) >= 50;
}

_ID7490( var_0, var_1 )
{
    var_2 = _func_0B7( var_1[var_1.size - 1] + 1 );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( var_2 <= var_1[var_3] )
            return var_0[var_3];
    }
}

_ID15649( var_0 )
{
    var_1 = [];
    var_2 = 0;

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_2 += var_0[var_3];
        var_1[var_3] = var_2;
    }

    return var_1;
}

_ID49172( var_0 )
{
    self waittillmatch( var_0,  "end"  );
}

_ID41148( var_0, var_1 )
{
    if ( var_0 != "death" )
        self endon( "death" );

    var_1 endon( "die" );
    self waittill( var_0 );
    var_1 notify( "returned",  var_0  );
}

_ID41150( var_0, var_1 )
{
    if ( var_0 != "death" )
        self endon( "death" );

    var_1 endon( "die" );
    self waittill( var_10,  var_11, var_11, var_11, var_11, var_11, var_11, var_11, var_11, var_11, var_11  );
    var_12 = [];
    var_12[0] = var_0;

    if ( _func_02F( var_2 ) )
        var_12[1] = var_2;

    if ( _func_02F( var_3 ) )
        var_12[2] = var_3;

    if ( _func_02F( var_4 ) )
        var_12[3] = var_4;

    if ( _func_02F( var_5 ) )
        var_12[4] = var_5;

    if ( _func_02F( var_6 ) )
        var_12[5] = var_6;

    if ( _func_02F( var_7 ) )
        var_12[6] = var_7;

    if ( _func_02F( var_8 ) )
        var_12[7] = var_8;

    if ( _func_02F( var_9 ) )
        var_12[8] = var_9;

    if ( _func_02F( var_10 ) )
        var_12[9] = var_10;

    if ( _func_02F( var_11 ) )
        var_12[10] = var_11;

    var_1 notify( "returned",  var_12  );
}

_ID41149( var_0, var_1 )
{
    var_1 endon( "die" );
    self waittill( var_0 );
    var_1 notify( "returned",  var_0  );
}

_ID41117( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );
    var_5 = _func_1A5();
    var_5._ID37657 = 0;

    if ( _func_02F( var_0 ) )
    {
        childthread _unknown_03F0( var_0, var_5 );
        var_5._ID37657++;
    }

    if ( _func_02F( var_1 ) )
    {
        childthread _unknown_0400( var_1, var_5 );
        var_5._ID37657++;
    }

    if ( _func_02F( var_2 ) )
    {
        childthread _unknown_0411( var_2, var_5 );
        var_5._ID37657++;
    }

    if ( _func_02F( var_3 ) )
    {
        childthread _unknown_0421( var_3, var_5 );
        var_5._ID37657++;
    }

    if ( _func_02F( var_4 ) )
    {
        childthread _unknown_0432( var_4, var_5 );
        var_5._ID37657++;
    }

    while ( var_5._ID37657 )
    {
        var_5 waittill( "returned" );
        var_5._ID37657--;
    }

    var_5 notify( "die" );
}

_ID41118( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    self endon( "death" );
    var_8 = _func_1A5();
    var_8._ID37657 = 0;

    if ( _func_02F( var_0 ) )
    {
        var_0 childthread _unknown_047B( var_1, var_8 );
        var_8._ID37657++;
    }

    if ( _func_02F( var_2 ) )
    {
        var_2 childthread _unknown_048D( var_3, var_8 );
        var_8._ID37657++;
    }

    if ( _func_02F( var_4 ) )
    {
        var_4 childthread _unknown_049F( var_5, var_8 );
        var_8._ID37657++;
    }

    if ( _func_02F( var_6 ) )
    {
        var_6 childthread _unknown_04B0( var_7, var_8 );
        var_8._ID37657++;
    }

    while ( var_8._ID37657 )
    {
        var_8 waittill( "returned" );
        var_8._ID37657--;
    }

    var_8 notify( "die" );
}

_ID41075( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_0 ) || var_0 != "death" && !_func_02F( var_1 ) || var_1 != "death" && !_func_02F( var_2 ) || var_2 != "death" && !_func_02F( var_3 ) || var_3 != "death" && !_func_02F( var_4 ) || var_4 != "death" && !_func_02F( var_5 ) || var_5 != "death" && !_func_02F( var_6 ) || var_6 != "death" )
        self endon( "death" );

    var_7 = _func_1A5();

    if ( _func_02F( var_0 ) )
        childthread _unknown_055A( var_0, var_7 );

    if ( _func_02F( var_1 ) )
        childthread _unknown_0567( var_1, var_7 );

    if ( _func_02F( var_2 ) )
        childthread _ID41075( var_2, var_7 );

    if ( _func_02F( var_3 ) )
        childthread _unknown_057D( var_3, var_7 );

    if ( _func_02F( var_4 ) )
        childthread _unknown_0589( var_4, var_7 );

    if ( _func_02F( var_5 ) )
        childthread _unknown_0594( var_5, var_7 );

    if ( _func_02F( var_6 ) )
        childthread _unknown_059F( var_6, var_7 );

    var_7 waittill( "returned",  var_7  );
    var_6 notify( "die" );
    return var_7;
}

_ID41077( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !_func_02F( var_0 ) || var_0 != "death" && !_func_02F( var_1 ) || var_1 != "death" && !_func_02F( var_2 ) || var_2 != "death" && !_func_02F( var_3 ) || var_3 != "death" && !_func_02F( var_4 ) || var_4 != "death" && !_func_02F( var_5 ) || var_5 != "death" && !_func_02F( var_6 ) || var_6 != "death" && !_func_02F( var_7 ) || var_7 != "death" )
        self endon( "death" );

    var_8 = _func_1A5();

    if ( _func_02F( var_0 ) )
        childthread _unknown_0658( var_0, var_8 );

    if ( _func_02F( var_1 ) )
        childthread _unknown_0665( var_1, var_8 );

    if ( _func_02F( var_2 ) )
        childthread _unknown_0671( var_2, var_8 );

    if ( _func_02F( var_3 ) )
        childthread _unknown_067D( var_3, var_8 );

    if ( _func_02F( var_4 ) )
        childthread _unknown_0688( var_4, var_8 );

    if ( _func_02F( var_5 ) )
        childthread _unknown_0693( var_5, var_8 );

    if ( _func_02F( var_6 ) )
        childthread _ID41077( var_6, var_8 );

    if ( _func_02F( var_7 ) )
        childthread _unknown_06AA( var_7, var_8 );

    var_8 waittill( "returned",  var_8  );
    var_7 notify( "die" );
    return var_8;
}

_ID41076( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _func_1A5();

    if ( _func_02F( var_0 ) )
        childthread _unknown_070D( var_0, var_6 );

    if ( _func_02F( var_1 ) )
        childthread _unknown_0718( var_1, var_6 );

    if ( _func_02F( var_2 ) )
        childthread _unknown_0723( var_2, var_6 );

    if ( _func_02F( var_3 ) )
        childthread _unknown_072E( var_3, var_6 );

    if ( _func_02F( var_4 ) )
        childthread _unknown_073A( var_4, var_6 );

    if ( _func_02F( var_5 ) )
        childthread _unknown_0745( var_5, var_6 );

    var_6 waittill( "returned",  var_6  );
    var_5 notify( "die" );
    return var_6;
}

_ID41072( var_0 )
{
    var_1 = _func_1A5();
    var_2 = 0;
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        childthread _unknown_0733( var_4, var_1 );

        if ( var_4 == "death" )
            var_2 = 1;
    }

    var_clear_2
    var_clear_0

    if ( !var_2 )
        self endon( "death" );

    var_1 waittill( "returned",  var_5  );
    var_0 notify( "die" );
    return var_5;
}

_ID41073( var_0 )
{
    var_1 = _func_1A5();
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        childthread _unknown_07C0( var_3, var_1 );
    }

    var_clear_2
    var_clear_0
    var_2 waittill( "returned",  var_5  );
    var_1 notify( "die" );
    return var_5;
}

_ID41070( var_0, var_1 )
{
    var_2 = _func_1A5();
    var_3 = 0;
    var_4 = var_0;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        childthread _unknown_07B9( var_5, var_2 );

        if ( var_5 == "death" )
            var_3 = 1;
    }

    var_clear_2
    var_clear_0

    if ( !var_3 )
        self endon( "death" );

    var_2 childthread _unknown_09DB( var_1 );
    var_3 waittill( "returned",  var_7  );
    var_2 notify( "die" );
    return var_7;
}

_ID41071( var_0, var_1 )
{
    var_2 = _func_1A5();
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        childthread _unknown_084D( var_4, var_2 );
    }

    var_clear_2
    var_clear_0
    var_2 thread _unknown_0A1A( var_1 );
    var_3 waittill( "returned",  var_6  );
    var_2 notify( "die" );
    return var_6;
}

_ID41078( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_1 ) || var_1 != "death" && !_func_02F( var_2 ) || var_2 != "death" && !_func_02F( var_3 ) || var_3 != "death" && !_func_02F( var_4 ) || var_4 != "death" && !_func_02F( var_5 ) || var_5 != "death" && !_func_02F( var_6 ) || var_6 != "death" )
        self endon( "death" );

    var_7 = _func_1A5();

    if ( _func_02F( var_1 ) )
        childthread _unknown_08A5( var_1, var_7 );

    if ( _func_02F( var_2 ) )
        childthread _unknown_08B0( var_2, var_7 );

    if ( _func_02F( var_3 ) )
        childthread _unknown_08BC( var_3, var_7 );

    if ( _func_02F( var_4 ) )
        childthread _unknown_08C7( var_4, var_7 );

    if ( _func_02F( var_5 ) )
        childthread _unknown_08D2( var_5, var_7 );

    if ( _func_02F( var_6 ) )
        childthread _unknown_08DD( var_6, var_7 );

    var_7 childthread _unknown_0AE5( var_0 );
    var_8 waittill( "returned",  var_8  );
    var_7 notify( "die" );
    return var_8;
}

_ID1657( var_0 )
{
    self endon( "die" );
    wait(var_0);
    self notify( "returned",  "timeout"  );
}

_ID41079( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _func_1A5();

    if ( _func_02F( var_1 ) )
        childthread _unknown_0964( var_1, var_6 );

    if ( _func_02F( var_2 ) )
        childthread _unknown_096F( var_2, var_6 );

    if ( _func_02F( var_3 ) )
        childthread _unknown_097A( var_3, var_6 );

    if ( _func_02F( var_4 ) )
        childthread _unknown_0986( var_4, var_6 );

    if ( _func_02F( var_5 ) )
        childthread _unknown_0991( var_5, var_6 );

    var_6 childthread _unknown_0B56( var_0 );
    var_7 waittill( "returned",  var_7  );
    var_6 notify( "die" );
    return var_7;
}

_ID41068( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( _func_02F( var_1 ) )
        self endon( var_1 );

    if ( _func_02F( var_2 ) )
        self endon( var_2 );

    if ( _func_02F( var_3 ) )
        self endon( var_3 );

    if ( _func_02F( var_4 ) )
        self endon( var_4 );

    if ( _func_02F( var_5 ) )
        self endon( var_5 );

    if ( _func_02F( var_6 ) )
        self endon( var_6 );

    if ( _func_02F( var_7 ) )
        self endon( var_7 );

    self waittill( var_0 );
}

_ID53925( var_0 )
{
    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        self endon( var_0[var_1] );

    self waittill( var_0[0] );
}

waittill_any_ent_in_array_is_notified( var_0, var_1 )
{
    for ( var_2 = 1; var_2 < var_0.size; var_2++ )
        var_0[var_2] endon( var_1 );

    var_0[0] waittill( var_1 );
}

_ID41069( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13 )
{
    if ( _func_02F( var_2 ) && _func_02F( var_3 ) )
        var_2 endon( var_3 );

    if ( _func_02F( var_4 ) && _func_02F( var_5 ) )
        var_4 endon( var_5 );

    if ( _func_02F( var_6 ) && _func_02F( var_7 ) )
        var_6 endon( var_7 );

    if ( _func_02F( var_8 ) && _func_02F( var_9 ) )
        var_8 endon( var_9 );

    if ( _func_02F( var_10 ) && _func_02F( var_11 ) )
        var_10 endon( var_11 );

    if ( _func_02F( var_12 ) && _func_02F( var_13 ) )
        var_12 endon( var_13 );

    var_0 waittill( var_1 );
}

_ID20747()
{
    var_0 = _func_03D();

    if ( _func_02F( self._ID14516 ) && var_0 < self._ID14516 )
        return 1;

    if ( _func_02F( self._ID8418 ) && var_0 < self._ID8418 )
        return 1;

    return 0;
}

_ID14396( var_0 )
{
    return _func_02F( level._ID14385[var_0] );
}

_ID14385( var_0 )
{
    return level._ID14385[var_0];
}

_ID14446( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_unknown_0D2B( var_2 ) )
            return 0;
    }

    var_clear_2
    var_clear_0
    return 1;
}

_ID19699()
{
    level._ID14385 = [];
    level._ID14447 = [];
    level._ID15520 = 0;

    if ( !_func_02F( level._ID34997 ) )
        level._ID34997 = ::_unknown_0D80;

    level._ID14409 = _func_1A5();
    level._ID14409 _unknown_0DB1();
}

_ID14400( var_0 )
{
    if ( !_func_02F( level._ID14385 ) )
        _unknown_0D78();

    level._ID14385[var_0] = 0;

    if ( !_func_02F( level._ID38807 ) )
    {
        _unknown_0F67();
        level._ID38807[var_0] = [];
    }
    else if ( !_func_02F( level._ID38807[var_0] ) )
        level._ID38807[var_0] = [];

    if ( _unknown_0DCA( var_0, "aa_" ) )
        thread [[ level._ID34997 ]]( var_0 );
}

_ID12438( var_0 )
{

}

_ID20932( var_0, var_1 )
{
    if ( var_1.size > var_0.size )
        return 0;

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_0[var_2] != var_1[var_2] )
            return 0;
    }

    return 1;
}

_ID14402( var_0, var_1 )
{
    level._ID14385[var_0] = 1;
    _unknown_0F80( var_0 );

    if ( _func_02F( var_1 ) )
        level notify( var_0,  var_1  );
    else
        level notify( var_0 );
}

_ID51014( var_0, var_1, var_2 )
{
    level._ID14385[var_0] = 1;
    _unknown_0F9F( var_0 );

    if ( _func_02F( var_2 ) )
        level notify( var_0,  var_1, var_2  );
    else if ( _func_02F( var_1 ) )
        level notify( var_0,  var_1  );
    else
        level notify( var_0 );
}

_ID3442()
{
    self._ID39468 = "generic" + level._ID15520;
    level._ID15520++;
}

_ID14413( var_0 )
{
    var_1 = undefined;

    while ( !_unknown_0E25( var_0 ) )
    {
        var_1 = undefined;
        level waittill( var_0,  var_1  );
    }

    if ( _func_02F( var_1 ) )
        return var_1;
}

_ID14388( var_0 )
{
    if ( !_unknown_0E3F( var_0 ) )
        return;

    level._ID14385[var_0] = 0;
    _unknown_0FF6( var_0 );
    level notify( var_0 );
}

_ID14426( var_0 )
{
    while ( _unknown_0E57( var_0 ) )
        level waittill( var_0 );
}

_ID41098( var_0, var_1 )
{
    self endon( var_0 );
    self waittill( var_1 );
}

_ID3350( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !_func_02F( var_2 ) )
    {
        var_11 = var_0;

        for ( var_13 = _func_1DA( var_11 ); _func_02F( var_13 ); var_13 = _func_1BF( var_11, var_13 ) )
        {
            var_12 = var_11[var_13];
            var_12 thread [[ var_1 ]]();
        }

        var_clear_2
        var_clear_0
    }
    else
    {
        if ( !_func_02F( var_3 ) )
        {
            var_14 = var_0;

            for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
            {
                var_12 = var_14[var_15];
                var_12 thread [[ var_1 ]]( var_2 );
            }

            var_clear_2
            var_clear_0
            return;
        }

        if ( !_func_02F( var_4 ) )
        {
            var_16 = var_0;

            for ( var_17 = _func_1DA( var_16 ); _func_02F( var_17 ); var_17 = _func_1BF( var_16, var_17 ) )
            {
                var_12 = var_16[var_17];
                var_12 thread [[ var_1 ]]( var_2, var_3 );
            }

            var_clear_2
            var_clear_0
            return;
        }

        if ( !_func_02F( var_5 ) )
        {
            var_18 = var_0;

            for ( var_19 = _func_1DA( var_18 ); _func_02F( var_19 ); var_19 = _func_1BF( var_18, var_19 ) )
            {
                var_12 = var_18[var_19];
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4 );
            }

            var_clear_2
            var_clear_0
            return;
        }

        if ( !_func_02F( var_6 ) )
        {
            var_20 = var_0;

            for ( var_21 = _func_1DA( var_20 ); _func_02F( var_21 ); var_21 = _func_1BF( var_20, var_21 ) )
            {
                var_12 = var_20[var_21];
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5 );
            }

            var_clear_2
            var_clear_0
            return;
        }

        if ( !_func_02F( var_7 ) )
        {
            var_22 = var_0;

            for ( var_23 = _func_1DA( var_22 ); _func_02F( var_23 ); var_23 = _func_1BF( var_22, var_23 ) )
            {
                var_12 = var_22[var_23];
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6 );
            }

            var_clear_2
            var_clear_0
            return;
        }

        if ( !_func_02F( var_8 ) )
        {
            var_24 = var_0;

            for ( var_25 = _func_1DA( var_24 ); _func_02F( var_25 ); var_25 = _func_1BF( var_24, var_25 ) )
            {
                var_12 = var_24[var_25];
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6, var_7 );
            }

            var_clear_2
            var_clear_0
            return;
        }

        if ( !_func_02F( var_9 ) )
        {
            var_26 = var_0;

            for ( var_27 = _func_1DA( var_26 ); _func_02F( var_27 ); var_27 = _func_1BF( var_26, var_27 ) )
            {
                var_12 = var_26[var_27];
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
            }

            var_clear_2
            var_clear_0
            return;
        }

        if ( !_func_02F( var_10 ) )
        {
            var_28 = var_0;

            for ( var_29 = _func_1DA( var_28 ); _func_02F( var_29 ); var_29 = _func_1BF( var_28, var_29 ) )
            {
                var_12 = var_28[var_29];
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 );
            }

            var_clear_2
            var_clear_0
            return;
        }

        var_30 = var_0;

        for ( var_31 = _func_1DA( var_30 ); _func_02F( var_31 ); var_31 = _func_1BF( var_30, var_31 ) )
        {
            var_12 = var_30[var_31];
            var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
        }

        var_clear_2
        var_clear_0
    }
}

_ID3294( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_4 ) )
    {
        var_5 = var_0;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];
            var_6 call [[ var_1 ]]( var_2, var_3, var_4 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    if ( _func_02F( var_3 ) )
    {
        var_8 = var_0;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_6 = var_8[var_9];
            var_6 call [[ var_1 ]]( var_2, var_3 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    if ( _func_02F( var_2 ) )
    {
        var_10 = var_0;

        for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
        {
            var_6 = var_10[var_11];
            var_6 call [[ var_1 ]]( var_2 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    var_12 = var_0;

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_6 = var_12[var_13];
        var_6 call [[ var_1 ]]();
    }

    var_clear_2
    var_clear_0
}

_ID24937( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_4 ) )
    {
        var_5 = var_0;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];
            call [[ var_1 ]]( var_6, var_2, var_3, var_4 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    if ( _func_02F( var_3 ) )
    {
        var_8 = var_0;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_6 = var_8[var_9];
            call [[ var_1 ]]( var_6, var_2, var_3 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    if ( _func_02F( var_2 ) )
    {
        var_10 = var_0;

        for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
        {
            var_6 = var_10[var_11];
            call [[ var_1 ]]( var_6, var_2 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    var_12 = var_0;

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_6 = var_12[var_13];
        call [[ var_1 ]]( var_6 );
    }

    var_clear_2
    var_clear_0
}

_ID3353( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _unknown_11E9( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_ID3354( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    _unknown_1200( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID38865( var_0, var_1 )
{
    if ( _func_02F( var_0 ) && _func_02F( var_1 ) )
    {
        var_2 = _func_1A2( var_0, var_1 );
        _unknown_121D( var_2, ::_unknown_1331 );
    }
    else
        _unknown_133B();
}

_ID38866()
{
    if ( _func_02F( self._ID29164 ) )
        self._ID740 = self._ID29164;

    self._ID38863 = undefined;
}

_ID38863( var_0, var_1 )
{
    if ( _func_02F( var_0 ) && _func_02F( var_1 ) )
    {
        var_2 = _func_1A2( var_0, var_1 );
        _unknown_1251( var_2, ::_unknown_1376 );
    }
    else
        _unknown_1380();
}

_ID38864()
{
    if ( !_func_02F( self._ID29164 ) )
        self._ID29164 = self._ID740;

    if ( self._ID740 == self._ID29164 )
        self._ID740 = self._ID740 + ( 0, 0, -10000 );

    self._ID38863 = 1;
}

_ID32480( var_0 )
{
    if ( !_func_02F( level._ID38807 ) )
        return;

    level._ID38807[var_0] = _unknown_14C1( level._ID38807[var_0] );
    _unknown_12A0( level._ID38807[var_0], ::_unknown_13DB );
}

_ID39659()
{
    var_0 = 1;

    if ( _func_02F( self._ID31196 ) )
    {
        var_0 = 0;
        var_1 = _unknown_1420( self._ID31196 );
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _unknown_1257( var_3 ) )
            {
                var_0 = 1;
                break;
            }
        }

        var_clear_2
        var_clear_0
    }

    var_5 = 1;

    if ( _func_02F( self._ID31193 ) )
    {
        var_1 = _unknown_145B( self._ID31193 );
        var_6 = var_1;

        for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
        {
            var_3 = var_6[var_7];

            if ( _unknown_1291( var_3 ) )
            {
                var_5 = 0;
                break;
            }
        }

        var_clear_2
        var_clear_0
    }

    [[ level._ID38817[var_0 && var_5] ]]();
}

_ID9141( var_0 )
{
    var_1 = _func_129( var_0, " " );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !_func_02F( level._ID14385[var_1[var_2]] ) )
            _unknown_12EB( var_1[var_2] );
    }

    return var_1;
}

_ID19824()
{
    level._ID38807 = [];
    level._ID38817[1] = ::_unknown_145F;
    level._ID38817[0] = ::_unknown_1478;
}

_ID16638( var_0, var_1 )
{
    var_2 = level._ID36711[var_1][var_0];

    if ( !_func_02F( var_2 ) )
        return undefined;

    if ( var_2.size > 1 )
        return undefined;

    return var_2[0];
}

_ID16640( var_0, var_1 )
{
    var_2 = level._ID36711[var_1][var_0];

    if ( !_func_02F( var_2 ) )
        return [];

    return var_2;
}

_ID36710()
{
    level._ID36711 = [];
    level._ID36711["target"] = [];
    level._ID36711["targetname"] = [];
    level._ID36711["script_noteworthy"] = [];
    level._ID36711["script_linkname"] = [];
    var_0 = level._ID36707;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        _unknown_1575( var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID1954( var_0 )
{
    if ( _func_02F( var_0._ID1193 ) )
    {
        if ( !_func_02F( level._ID36711["targetname"][var_0._ID1193] ) )
            level._ID36711["targetname"][var_0._ID1193] = [];

        var_1 = level._ID36711["targetname"][var_0._ID1193].size;
        level._ID36711["targetname"][var_0._ID1193][var_1] = var_0;
    }

    if ( _func_02F( var_0._ID1191 ) )
    {
        if ( !_func_02F( level._ID36711["target"][var_0._ID1191] ) )
            level._ID36711["target"][var_0._ID1191] = [];

        var_1 = level._ID36711["target"][var_0._ID1191].size;
        level._ID36711["target"][var_0._ID1191][var_1] = var_0;
    }

    if ( _func_02F( var_0._ID922 ) )
    {
        if ( !_func_02F( level._ID36711["script_noteworthy"][var_0._ID922] ) )
            level._ID36711["script_noteworthy"][var_0._ID922] = [];

        var_1 = level._ID36711["script_noteworthy"][var_0._ID922].size;
        level._ID36711["script_noteworthy"][var_0._ID922][var_1] = var_0;
    }

    if ( _func_02F( var_0._ID920 ) )
    {
        if ( !_func_02F( level._ID36711["script_linkname"][var_0._ID920] ) )
            level._ID36711["script_linkname"][var_0._ID920] = [];

        var_1 = level._ID36711["script_linkname"][var_0._ID920].size;
        level._ID36711["script_linkname"][var_0._ID920][0] = var_0;
    }
}

_ID14017()
{

}

_ID14015( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;
}

_ID14016( var_0, var_1 )
{

}

_ID14014()
{

}

_ID14013()
{

}

_ID14018( var_0 )
{

}

_ID3321( var_0, var_1 )
{
    var_2 = [];
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4 != var_1 )
            var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0
    return var_2;
}

_ID44115( var_0, var_1 )
{
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];

        if ( var_4 != var_1 )
            var_2[var_2.size] = var_4;
    }

    return var_2;
}

_ID3322( var_0, var_1 )
{
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_0 = _unknown_1769( var_0, var_3 );
    }

    var_clear_2
    var_clear_0
    return var_0;
}

_ID3332( var_0 )
{
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    var_clear_2
    return var_1;
}

_ID3324( var_0 )
{
    var_1 = [];
    var_2 = var_0;

    for ( var_8 = _func_1DA( var_2 ); _func_02F( var_8 ); var_8 = _func_1BF( var_2, var_8 ) )
    {
        var_3 = var_2[var_8];

        if ( !_func_02F( var_3 ) )
            continue;

        var_4 = 1;
        var_5 = var_1;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];

            if ( var_3 == var_6 )
            {
                var_4 = 0;
                break;
            }
        }

        var_clear_3
        var_clear_1

        if ( var_4 )
            var_1[var_1.size] = var_3;
    }

    var_clear_6
    var_clear_0
    return var_1;
}

_ID3315( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_4 ) )
    {
        var_5 = var_0;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];
            thread [[ var_1 ]]( var_6, var_2, var_3, var_4 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    if ( _func_02F( var_3 ) )
    {
        var_8 = var_0;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_6 = var_8[var_9];
            thread [[ var_1 ]]( var_6, var_2, var_3 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    if ( _func_02F( var_2 ) )
    {
        var_10 = var_0;

        for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
        {
            var_6 = var_10[var_11];
            thread [[ var_1 ]]( var_6, var_2 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    var_12 = var_0;

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_6 = var_12[var_13];
        thread [[ var_1 ]]( var_6 );
    }

    var_clear_2
    var_clear_0
}

_ID3314( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_4 ) )
    {
        var_5 = var_0;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];
            call [[ var_1 ]]( var_6, var_2, var_3, var_4 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    if ( _func_02F( var_3 ) )
    {
        var_8 = var_0;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_6 = var_8[var_9];
            call [[ var_1 ]]( var_6, var_2, var_3 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    if ( _func_02F( var_2 ) )
    {
        var_10 = var_0;

        for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
        {
            var_6 = var_10[var_11];
            call [[ var_1 ]]( var_6, var_2 );
        }

        var_clear_2
        var_clear_0
        return;
    }

    var_12 = var_0;

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_6 = var_12[var_13];
        call [[ var_1 ]]( var_6 );
    }

    var_clear_2
    var_clear_0
}

_ID1960( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        return var_0;

    if ( !_func_02F( var_0 ) )
        var_0[0] = var_1;
    else
        var_0[var_0.size] = var_1;

    return var_0;
}

_ID14386( var_0 )
{

}

_ID14421( var_0, var_1 )
{
    for (;;)
    {
        if ( _unknown_16E6( var_0 ) )
            return;

        if ( _unknown_16EE( var_1 ) )
            return;

        level _unknown_1768( var_0, var_1 );
    }
}

_ID14422( var_0, var_1 )
{
    for (;;)
    {
        if ( _ID3321( var_0 ) )
            return var_0;

        if ( _unknown_170B( var_1 ) )
            return var_1;

        var_2 = level _unknown_152E( var_0, var_1 );
        return var_2;
    }
}

_ID14428( var_0, var_1 )
{
    for (;;)
    {
        if ( !_unknown_1723( var_0 ) )
            return var_0;

        if ( !_unknown_172B( var_1 ) )
            return var_1;

        level _unknown_17A6( var_0, var_1 );
    }
}

_ID14429( var_0, var_1 )
{
    return _unknown_1A9C( var_0, var_1 );
}

_ID14415( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = [];

    if ( _func_02F( var_5 ) )
    {
        var_6[var_6.size] = var_0;
        var_6[var_6.size] = var_1;
        var_6[var_6.size] = var_2;
        var_6[var_6.size] = var_3;
        var_6[var_6.size] = var_4;
        var_6[var_6.size] = var_5;
    }
    else if ( _func_02F( var_4 ) )
    {
        var_6[var_6.size] = var_0;
        var_6[var_6.size] = var_1;
        var_6[var_6.size] = var_2;
        var_6[var_6.size] = var_3;
        var_6[var_6.size] = var_4;
    }
    else if ( _func_02F( var_3 ) )
    {
        var_6[var_6.size] = var_0;
        var_6[var_6.size] = var_1;
        var_6[var_6.size] = var_2;
        var_6[var_6.size] = var_3;
    }
    else if ( _func_02F( var_2 ) )
    {
        var_6[var_6.size] = var_0;
        var_6[var_6.size] = var_1;
        var_6[var_6.size] = var_2;
    }
    else if ( _func_02F( var_1 ) )
    {
        _unknown_1B0B( var_0, var_1 );
        return;
    }
    else
        return;

    for (;;)
    {
        for ( var_7 = 0; var_7 < var_6.size; var_7++ )
        {
            if ( _unknown_17D9( var_6[var_7] ) )
                return;
        }

        level _unknown_178C( var_0, var_1, var_2, var_3, var_4, var_5 );
    }
}

flag_wait_any_in_array( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _unknown_1807( var_2 ) )
            return;
    }

    var_clear_2
    var_clear_0
    level _unknown_17D1( var_0 );
}

_ID14417( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];

    if ( _func_02F( var_4 ) )
    {
        var_5[var_5.size] = var_0;
        var_5[var_5.size] = var_1;
        var_5[var_5.size] = var_2;
        var_5[var_5.size] = var_3;
        var_5[var_5.size] = var_4;
    }
    else if ( _func_02F( var_3 ) )
    {
        var_5[var_5.size] = var_0;
        var_5[var_5.size] = var_1;
        var_5[var_5.size] = var_2;
        var_5[var_5.size] = var_3;
    }
    else if ( _func_02F( var_2 ) )
    {
        var_5[var_5.size] = var_0;
        var_5[var_5.size] = var_1;
        var_5[var_5.size] = var_2;
    }
    else if ( _func_02F( var_1 ) )
    {
        var_6 = _unknown_1BC7( var_0, var_1 );
        return var_6;
    }
    else
        return;

    for (;;)
    {
        for ( var_7 = 0; var_7 < var_5.size; var_7++ )
        {
            if ( _unknown_188C( var_5[var_7] ) )
                return var_5[var_7];
        }

        var_6 = level _unknown_16B8( var_0, var_1, var_2, var_3, var_4 );
        return var_6;
    }
}

_ID14414( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_0 ) )
        _unknown_1910( var_0 );

    if ( _func_02F( var_1 ) )
        _unknown_191B( var_1 );

    if ( _func_02F( var_2 ) )
        _unknown_1925( var_2 );

    if ( _func_02F( var_3 ) )
        _unknown_1930( var_3 );
}

_ID14425( var_0, var_1 )
{
    var_2 = var_1 * 1000;
    var_3 = _func_03D();

    for (;;)
    {
        if ( _unknown_18EB( var_0 ) )
            break;

        if ( _func_03D() >= var_3 + var_2 )
            break;

        var_4 = var_2 - _func_03D() - var_3;
        var_5 = var_4 / 1000;
        _unknown_1D1C( var_0, var_5 );
    }
}

_ID14430( var_0, var_1 )
{
    var_2 = _func_03D();

    for (;;)
    {
        if ( !_unknown_191D( var_0 ) )
            break;

        if ( _func_03D() >= var_2 + var_1 * 1000 )
            break;

        _unknown_1D46( var_0, var_1 );
    }
}

_ID40867( var_0, var_1 )
{
    level endon( var_0 );
    wait(var_1);
}

_ID10192( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    thread _unknown_1D80( var_1, var_0, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
}

_ID10193( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( _unknown_1E3A() )
    {
        self endon( "death" );
        self endon( "stop_delay_call" );
    }

    wait(var_1);

    if ( _func_02F( var_10 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    else if ( _func_02F( var_9 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 );
    else if ( _func_02F( var_8 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
    else if ( _func_02F( var_7 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7 );
    else if ( _func_02F( var_6 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6 );
    else if ( _func_02F( var_5 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5 );
    else if ( _func_02F( var_4 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4 );
    else if ( _func_02F( var_3 ) )
        self call [[ var_0 ]]( var_2, var_3 );
    else if ( _func_02F( var_2 ) )
        self call [[ var_0 ]]( var_2 );
    else
        self call [[ var_0 ]]();
}

_ID10187( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    thread _unknown_1EB3( var_1, var_0, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
}

_ID10188( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    wait(var_1);

    if ( _func_02F( var_10 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    else if ( _func_02F( var_9 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 );
    else if ( _func_02F( var_8 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
    else if ( _func_02F( var_7 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7 );
    else if ( _func_02F( var_6 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6 );
    else if ( _func_02F( var_5 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5 );
    else if ( _func_02F( var_4 ) )
        self [[ var_0 ]]( var_2, var_3, var_4 );
    else if ( _func_02F( var_3 ) )
        self [[ var_0 ]]( var_2, var_3 );
    else if ( _func_02F( var_2 ) )
        self [[ var_0 ]]( var_2 );
    else
        self [[ var_0 ]]();
}

_ID24938( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    thread _unknown_1FBD( var_1, var_0, var_2, var_3, var_4, var_5 );
}

_ID24939( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    wait(var_1);

    if ( _func_02F( var_5 ) )
        call [[ var_0 ]]( var_2, var_3, var_4, var_5 );
    else if ( _func_02F( var_4 ) )
        call [[ var_0 ]]( var_2, var_3, var_4 );
    else if ( _func_02F( var_3 ) )
        call [[ var_0 ]]( var_2, var_3 );
    else if ( _func_02F( var_2 ) )
        call [[ var_0 ]]( var_2 );
    else
        call [[ var_0 ]]();
}

_ID20913()
{
    if ( !_func_02F( level._ID20913 ) )
        level._ID20913 = !_ID20914( _func_039( "mapname" ), "mp_" );

    return level._ID20913;
}

_ID20914()
{
    if ( !_func_02F( level._ID20914 ) )
        level._ID20914 = _unknown_2054( _func_039( "mapname" ), "so_td_" );

    return level._ID20914;
}

_ID36698( var_0, var_1 )
{
    if ( var_0.size < var_1.size )
        return 0;

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( _func_128( var_0[var_2] ) != _func_128( var_1[var_2] ) )
            return 0;
    }

    return 1;
}

_ID36696( var_0, var_1 )
{
    if ( var_0.size < var_1.size )
        return -1;

    if ( var_1.size == 0 )
        return 0;

    var_2 = 0;

    for ( var_3 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( _func_128( var_0[var_2] ) == _func_128( var_1[var_3] ) )
            var_3++;
        else
        {
            var_3 = 0;

            if ( _func_128( var_0[var_2] ) == _func_128( var_1[var_3] ) )
                var_3++;
            else if ( var_2 > var_0.size - var_1.size )
                return -1;
        }

        if ( var_3 >= var_1.size )
            return var_2 - var_3 + 1;
    }

    return -1;
}

_ID28148( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_0[0];

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( !_func_02F( var_3 ) )
        var_3 = 1;

    if ( !_func_02F( var_4 ) )
        var_4 = 0.05;

    for ( var_6 = 1; var_6 < var_0.size; var_6++ )
    {
        thread _unknown_2168( var_5, var_0[var_6], var_1, var_2, var_3, var_4 );
        var_5 = var_0[var_6];
    }
}

_ID11707( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_6 ) )
        var_6 = 0;

    var_5 = _func_03D() + var_5 * 1000;

    while ( _func_03D() < var_5 )
        wait 0.05;
}

_ID37022( var_0, var_1 )
{
    var_2 = [];
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_2[var_5] = var_4;
    }

    var_clear_2
    var_6 = var_1;

    for ( var_5 = _func_1DA( var_6 ); _func_02F( var_5 ); var_5 = _func_1BF( var_6, var_5 ) )
    {
        var_4 = var_6[var_5];
        var_2[var_5] = var_4;
    }

    var_clear_0
    return var_2;
}

_ID3296( var_0, var_1 )
{
    var_2 = [];
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_02F( var_4 ) )
            var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0
    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];

        if ( _func_02F( var_4 ) )
            var_2[var_2.size] = var_4;
    }

    var_clear_1
    var_clear_0
    return var_2;
}

array_flatten( var_0 )
{
    return _unknown_2272( var_0, [] );
}

array_flatten_internal( var_0, var_1 )
{
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3 ) )
        {
            if ( _func_0D3( var_3 ) )
            {
                var_1 = _unknown_2298( var_3, var_1 );
                continue;
            }

            var_1[var_1.size] = var_3;
        }
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID54589( var_0, var_1 )
{
    if ( !var_0.size )
        return var_1;

    var_2 = [];
    var_3 = _func_1D9( var_0 );
    var_3 = _unknown_2796( var_3 );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = var_3[var_4];
        var_2[var_2.size] = var_0[var_5];
    }

    var_3 = _func_1D9( var_1 );
    var_3 = _unknown_27B7( var_3 );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = var_3[var_4];
        var_2[var_2.size] = var_1[var_5];
    }

    return var_2;
}

_ID3300( var_0, var_1 )
{
    var_2 = [];
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_2[var_5] = var_4;
    }

    var_clear_2
    var_6 = var_1;

    for ( var_5 = _func_1DA( var_6 ); _func_02F( var_5 ); var_5 = _func_1BF( var_6, var_5 ) )
    {
        var_4 = var_6[var_5];
        var_2[var_5] = var_4;
    }

    var_clear_0
    return var_2;
}

_ID3320( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = _func_0B7( var_0.size );
        var_3 = var_0[var_1];
        var_0[var_1] = var_0[var_2];
        var_0[var_2] = var_3;
    }

    return var_0;
}

_ID3293( var_0, var_1 )
{
    var_0[var_0.size] = var_1;
    return var_0;
}

_ID44103( var_0 )
{
    var_1 = 0;
    var_2 = _unknown_2812( var_0.size, var_0.size, 1 );
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_1 += var_4;
    }

    var_clear_2
    var_clear_0
    return var_1 / var_2;
}

_ID3308( var_0 )
{
    var_1 = undefined;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1 = var_3;
        break;
    }

    var_clear_1
    var_clear_0
    return var_1;
}

_ID3312( var_0, var_1, var_2 )
{
    if ( var_2 == var_0.size )
    {
        var_3 = var_0;
        var_3[var_3.size] = var_1;
        return var_3;
    }

    var_3 = [];
    var_4 = 0;

    for ( var_5 = 0; var_5 < var_0.size; var_5++ )
    {
        if ( var_5 == var_2 )
        {
            var_3[var_5] = var_1;
            var_4 = 1;
        }

        var_3[var_5 + var_4] = var_0[var_5];
    }

    return var_3;
}

_ID3303( var_0, var_1 )
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

_ID3307( var_0, var_1 )
{
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == var_1 )
            return var_4;
    }

    var_clear_2
    return undefined;
}

array_find_closest_to_key( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;
    var_4 = var_0;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];
        var_6 = _func_0C3( var_1 - var_7 );

        if ( !_func_02F( var_3 ) || var_6 < var_3 )
        {
            var_2 = var_7;
            var_3 = var_6;
        }
    }

    var_clear_3

    if ( _func_02F( var_2 ) )
        return var_0[var_2];
}

_ID14539( var_0 )
{
    var_1 = ( 0, var_0[1], 0 );
    return var_1;
}

_ID14540( var_0 )
{
    var_1 = ( var_0[0], var_0[1], 0 );
    return var_1;
}

_ID11683( var_0, var_1, var_2, var_3 )
{
    level endon( "newpath" );
    var_4 = [];
    var_5 = _func_11A( var_0 - var_1 );
    var_6 = _func_11E( var_5 );
    var_7 = _func_11F( var_5 );
    var_8 = _func_11D( var_5 );
    var_9 = _func_0F3( var_0, var_1 );
    var_10 = [];
    var_11 = 0.1;
    var_10[0] = var_0;
    var_10[1] = var_0 + var_6 * var_9 * var_11 + var_7 * var_9 * -0.1;
    var_10[2] = var_1;
    var_10[3] = var_0 + var_6 * var_9 * -1 * var_11 + var_7 * var_9 * -0.1;
    var_10[4] = var_0;
    var_10[5] = var_0 + var_8 * var_9 * var_11 + var_7 * var_9 * -0.1;
    var_10[6] = var_1;
    var_10[7] = var_0 + var_8 * var_9 * -1 * var_11 + var_7 * var_9 * -0.1;
    var_10[8] = var_0;
    var_12 = var_2[0];
    var_13 = var_2[1];
    var_14 = var_2[2];
    _unknown_24F8( var_10, var_12, var_13, var_14, var_3 );
}

_ID15808()
{
    var_0 = [];

    if ( _func_02F( self._ID31273 ) )
    {
        var_1 = _unknown_2687();
        var_2 = var_1;

        for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
        {
            var_3 = var_2[var_5];
            var_4 = _func_1A2( var_3, "script_linkname" );

            if ( var_4.size > 0 )
                var_0 = _unknown_256A( var_0, var_4 );
        }

        var_clear_3
        var_clear_0
    }

    return var_0;
}

_ID15813()
{
    var_0 = [];

    if ( _func_02F( self._ID31273 ) )
    {
        var_1 = _unknown_26C9();
        var_2 = var_1;

        for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
        {
            var_3 = var_2[var_5];
            var_4 = _func_1F3( var_3, "script_linkname" );

            if ( var_4.size > 0 )
                var_0 = _unknown_25AC( var_0, var_4 );
        }

        var_clear_3
        var_clear_0
    }

    return var_0;
}

_ID15807()
{
    var_0 = _unknown_26D0();
    return var_0[0];
}

_ID15812()
{
    var_0 = _unknown_26EF();
    return var_0[0];
}

_ID15814()
{
    return _func_129( self._ID31273, " " );
}

_ID30398( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _func_1A2( var_0, "targetname" );
    _unknown_2126( var_5, var_1, var_2, var_3, var_4 );
    var_5 = _unknown_22BA( var_0, "targetname" );
    _unknown_2137( var_5, var_1, var_2, var_3, var_4 );
    var_5 = call [[ level._ID16458 ]]( var_0, "targetname" );
    _unknown_2149( var_5, var_1, var_2, var_3, var_4 );
    var_5 = _func_1F3( var_0, "targetname" );
    _unknown_2158( var_5, var_1, var_2, var_3, var_4 );
}

_ID30396( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _func_1A2( var_0, "script_noteworthy" );
    _unknown_2172( var_5, var_1, var_2, var_3, var_4 );
    var_5 = _unknown_2305( var_0, "script_noteworthy" );
    _unknown_2183( var_5, var_1, var_2, var_3, var_4 );
    var_5 = call [[ level._ID16458 ]]( var_0, "script_noteworthy" );
    _unknown_2194( var_5, var_1, var_2, var_3, var_4 );
    var_5 = _func_1F3( var_0, "script_noteworthy" );
    _unknown_21A4( var_5, var_1, var_2, var_3, var_4 );
}

_ID11682( var_0, var_1, var_2 )
{
    level endon( "newpath" );
    var_3 = [];
    var_4 = _func_11A( var_0 - var_1 );
    var_5 = _func_11E( var_4 );
    var_6 = _func_11F( var_4 );
    var_7 = _func_0F3( var_0, var_1 );
    var_8 = [];
    var_9 = 0.05;
    var_8[0] = var_0;
    var_8[1] = var_0 + var_5 * var_7 * var_9 + var_6 * var_7 * -0.2;
    var_8[2] = var_1;
    var_8[3] = var_0 + var_5 * var_7 * -1 * var_9 + var_6 * var_7 * -0.2;

    for ( var_10 = 0; var_10 < 4; var_10++ )
    {
        var_11 = var_10 + 1;

        if ( var_11 >= 4 )
            var_11 = 0;
    }
}

_ID11703( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = ( 0, 1, 0 );

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( !_func_02F( var_4 ) )
        var_4 = 0.05;

    if ( var_3 )
        var_5 = _func_0C1( var_4 / 0.05 );
    else
        var_5 = _func_0C1( var_1 / 0.05 );

    var_6 = [];
    var_7 = [];
    var_8 = _func_03D();

    for ( var_9 = var_8 + var_1 * 1000; var_8 < var_9 && _func_02F( var_0 ); var_8 = _func_03D() )
    {
        var_6[0] = var_0 _meth_8227( 1, 1, 1 );
        var_6[1] = var_0 _meth_8227( 1, 1, -1 );
        var_6[2] = var_0 _meth_8227( -1, 1, -1 );
        var_6[3] = var_0 _meth_8227( -1, 1, 1 );
        var_7[0] = var_0 _meth_8227( 1, -1, 1 );
        var_7[1] = var_0 _meth_8227( 1, -1, -1 );
        var_7[2] = var_0 _meth_8227( -1, -1, -1 );
        var_7[3] = var_0 _meth_8227( -1, -1, 1 );

        for ( var_10 = 0; var_10 < 4; var_10++ )
        {
            var_11 = var_10 + 1;

            if ( var_11 == 4 )
                var_11 = 0;
        }

        if ( !var_3 )
            return;

        wait(var_4);
    }
}

_ID11729( var_0, var_1, var_2, var_3, var_4 )
{
    _unknown_2973( var_0, var_1, var_2, var_3, var_4 );
}

_ID11727( var_0, var_1, var_2, var_3, var_4 )
{
    _unknown_2984( var_0, var_1, var_2, var_3, var_4 );
}

_ID53482( var_0, var_1, var_2 )
{
    if ( _func_02F( var_1 ) && _func_02F( var_2 ) )
    {
        if ( var_1 > var_2 )
            return _unknown_29F8( var_0, var_2, var_1 );
    }

    if ( _func_02F( var_1 ) && var_0 < var_1 )
        return var_1;

    if ( _func_02F( var_2 ) && var_0 > var_2 )
        return var_2;

    return var_0;
}

_ID16299( var_0 )
{
    return level._ID1426[var_0];
}

_ID15272( var_0 )
{
    return _func_02F( level._ID1426[var_0] );
}

_ID28567( var_0, var_1 )
{
    var_2 = var_1 + "," + var_0;

    if ( _func_02F( level._ID9386[var_2] ) )
        return;

    level._ID9386[var_2] = 1;
}

_ID14009( var_0 )
{

}

_ID54222( var_0 )
{
    return _func_155( var_0 );
}

_ID16384()
{
    return self._ID30743;
}

_ID28025()
{

}

_ID20964()
{
    return !self._ID11021;
}

_ID1417()
{
    if ( !_func_02F( self._ID11021 ) )
        self._ID11021 = 0;

    self._ID11021++;
    self _meth_8335();
}

_ID1431()
{
    if ( !_func_02F( self._ID11021 ) )
        self._ID11021 = 0;
    else if ( self._ID11021 > 0 )
    {
        self._ID11021--;

        if ( self._ID11021 == 0 )
            self _meth_8336();
    }
}

_ID29801()
{
    self._ID11021 = 0;
    self _meth_8336();
}

_ID1418()
{
    if ( !_func_02F( self._ID11022 ) )
        self._ID11022 = 0;

    self._ID11022++;
    self _meth_8328();
}

_ID1432()
{
    if ( !_func_02F( self._ID11022 ) )
        self._ID11022 = 0;

    self._ID11022--;

    if ( !self._ID11022 )
        self _meth_8329();
}

_ID21002()
{
    return !self._ID11022;
}

_ID1419()
{
    if ( !_func_02F( self._ID11023 ) )
        self._ID11023 = 0;

    self._ID11023++;
    self _meth_832C();
}

_ID1433()
{
    if ( !_func_02F( self._ID11023 ) )
        self._ID11023 = 0;

    self._ID11023--;

    if ( !self._ID11023 )
    {
        if ( _func_02F( level._ID18919 ) && level._ID18919 == 1 )
            return;
        else
            self _meth_832D();
    }
}

_ID21004()
{
    return !self._ID11023;
}

_ID1416()
{
    if ( !_func_02F( self._ID11016 ) )
        self._ID11016 = 0;

    self._ID11016++;
    self _meth_832A();
}

_ID1430()
{
    if ( !_func_02F( self._ID11016 ) )
        self._ID11016 = 0;

    self._ID11016--;

    if ( !self._ID11016 )
        self _meth_832B();
}

_ID20838()
{
    return !self._ID11016;
}

_ID1428( var_0, var_1 )
{
    if ( !self _meth_831F( var_0 ) )
        return;

    if ( self _meth_84D3( var_0 ) == var_1 )
        return;

    self _meth_84D2( var_0, var_1 );

    if ( var_1 )
        self notify( "WeaponDetonateEnabled",  var_0  );
    else
        self notify( "WeaponDetonateDisabled",  var_0  );
}

_ID28945( var_0 )
{
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1[var_1.size] = var_3;
    }

    var_clear_2

    if ( !var_1.size )
        return undefined;

    return var_1[_func_0B7( var_1.size )];
}

_ID28959( var_0 )
{
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1[var_1.size] = var_3;
    }

    var_clear_2

    if ( !var_1.size )
        return undefined;

    var_5 = _func_0B7( var_1.size * var_1.size );
    return var_1[var_1.size - 1 - _func_0C1( _func_0EC( var_5 ) )];
}

_ID35164()
{
    var_0 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_0 _meth_80B8( "tag_origin" );
    var_0 _meth_805A();

    if ( _func_02F( self._ID740 ) )
        var_0._ID740 = self._ID740;

    if ( _func_02F( self._ID65 ) )
        var_0._ID65 = self._ID65;

    return var_0;
}

_ID46831( var_0, var_1, var_2 )
{
    var_3 = _unknown_2CAE();

    if ( !_func_02F( var_1 ) && !_func_02F( var_2 ) )
        var_3 _meth_8053( self, var_0 );
    else
    {
        if ( !_func_02F( var_1 ) )
            var_1 = ( 0, 0, 0 );

        if ( !_func_02F( var_2 ) )
            var_2 = ( 0, 0, 0 );

        var_3 _meth_8053( self, var_0, var_1, var_2 );
    }

    var_3 thread _unknown_2D20( self );
    return var_3;
}

_ID54690( var_0 )
{
    self endon( "death" );
    var_0 waittill( "death" );
    self _meth_80B7();
}

_ID41123( var_0, var_1 )
{
    self endon( var_0 );
    wait(var_1);
}

_ID41125( var_0, var_1 )
{
    self endon( var_0 );
    wait(var_1);
    return "timeout";
}

_ID14012()
{
    level._ID14020 = 0;
    level._ID14010 = 1;
    _unknown_2D6C( "GAMEPRINTSTARTFILE:" );
}

_ID14010( var_0 )
{
    level._ID14020++;

    if ( level._ID14020 > 200 )
    {
        wait 0.05;
        level._ID14020 = 0;
    }
}

_ID14011( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( var_1 )
        _unknown_2D99( "GAMEPRINTENDFILE:GAMEPRINTP4ENABLED:" + var_0 );
    else
        _unknown_2DA6( "GAMEPRINTENDFILE:" + var_0 );

    var_2 = _func_03D() + 4000;

    while ( _func_03A( "LAUNCHER_PRINT_SUCCESS" ) == 0 && _func_039( "LAUNCHER_PRINT_FAIL" ) == "0" && _func_03D() < var_2 )
        wait 0.05;

    if ( !_func_03D() < var_2 )
    {
        _func_19F( "LAUNCHER_PRINT_FAIL:( TIMEOUT ): launcherconflict? restart launcher and try again? " );
        level._ID14010 = undefined;
        return 0;
    }

    var_3 = _func_039( "LAUNCHER_PRINT_FAIL" );

    if ( var_3 != "0" )
    {
        _func_19F( "LAUNCHER_PRINT_FAIL:( " + var_3 + " ): launcherconflict? restart launcher and try again? " );
        level._ID14010 = undefined;
        return 0;
    }

    level._ID14010 = undefined;
    return 1;
}

_ID22062( var_0 )
{
    level._ID14020 = 0;
    _unknown_2E18( "LAUNCHER_CLIP:" + var_0 );
}

_ID20725()
{
    if ( !_func_02F( self ) )
        return 0;

    return _func_02F( self._ID279 );
}

_ID26402()
{
    _ID42229::_ID36497();
}

_ID1792()
{
    _ID42234::_ID1793();
}

_ID16012( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = self._ID1191;

    var_1 = _func_1A1( var_0, "targetname" );

    if ( _func_02F( var_1 ) )
        return var_1;

    if ( _unknown_2AF7() )
    {
        var_1 = call [[ level._ID16463 ]]( var_0, "targetname" );

        if ( _func_02F( var_1 ) )
            return var_1;
    }

    var_1 = _unknown_2846( var_0, "targetname" );

    if ( _func_02F( var_1 ) )
        return var_1;

    var_1 = _func_1F2( var_0, "targetname" );

    if ( _func_02F( var_1 ) )
        return var_1;
}

_ID15862( var_0 )
{
    var_1 = _func_1A1( var_0, "script_noteworthy" );

    if ( _func_02F( var_1 ) )
        return var_1;

    if ( _unknown_2B3C() )
    {
        var_1 = call [[ level._ID16463 ]]( var_0, "script_noteworthy" );

        if ( _func_02F( var_1 ) )
            return var_1;
    }

    var_1 = _unknown_288B( var_0, "script_noteworthy" );

    if ( _func_02F( var_1 ) )
        return var_1;

    var_1 = _func_1F2( var_0, "script_noteworthy" );

    if ( _func_02F( var_1 ) )
        return var_1;
}

_ID11200( var_0, var_1 )
{
    var_2 = level._ID12307[var_0];
    _func_192( var_2["magnitude"], var_2["duration"], var_1, var_2["radius"] );
}

_ID27005( var_0, var_1 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );

    if ( !_func_02F( var_1 ) )
        var_1 = self._ID740;

    var_2._ID740 = var_1;
    var_2 _meth_807C( var_0 );
    return var_2;
}

_ID44467( var_0, var_1, var_2 )
{
    var_3 = _unknown_2F98( var_0, var_1 );

    if ( _func_02F( var_2 ) )
        self waittill( var_2 );

    var_3 _meth_80B2( var_0 );
    var_3 _meth_80B7();
}

_ID27078( var_0, var_1, var_2, var_3 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    var_4 = _func_06A( "script_origin", ( 0, 0, 1 ) );

    if ( !_func_02F( var_1 ) )
        var_1 = self._ID740;

    var_4._ID740 = var_1;
    var_4._ID65 = var_2;

    if ( _unknown_2C0C() )
    {
        if ( _func_02F( var_3 ) && var_3 )
            var_4 _meth_807B( var_0, "sounddone" );
        else
            var_4 _meth_80A1( var_0, "sounddone" );

        var_4 waittill( "sounddone" );
    }
    else if ( _func_02F( var_3 ) && var_3 )
        var_4 _meth_807B( var_0 );
    else
        var_4 _meth_80A1( var_0 );

    var_4 _meth_80B7();
}

_ID27077( var_0, var_1, var_2 )
{
    _unknown_3051( var_0, var_1, ( 0, 0, 0 ), var_2 );
}

_ID22644( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    if ( _func_02F( var_3 ) )
        var_2 = undefined;

    if ( _func_02F( var_2 ) && var_2 && !_func_02F( level._ID14353 ) || level._ID14353 == 1 )
        _func_06C( var_0, var_1, ( 0, 0, 0 ) );
    else
    {
        var_5 = _func_06A( "script_origin", ( 0, 0, 0 ) );

        if ( _func_02F( var_3 ) )
        {
            thread _unknown_3154( var_3, var_5 );
            self endon( var_3 );
        }

        var_5._ID740 = var_1;
        var_5 _meth_807C( var_0 );
        var_5 _meth_80E8();
    }
}

_ID22647( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    if ( _func_02F( var_3 ) && var_3 )
    {
        if ( !_func_02F( level._ID14353 ) || level._ID14353 == 1 )
            _func_06C( var_0, var_1, var_2 );
    }
    else
    {
        if ( _func_02F( level._ID9228 ) && level._ID9228 && _func_02F( var_5._ID22676 ) )
            var_7 = var_5._ID22676;
        else
            var_7 = _func_06A( "script_origin", ( 0, 0, 0 ) );

        if ( _func_02F( var_4 ) )
        {
            thread _unknown_31D1( var_4, var_7 );
            self endon( var_4 );
        }

        var_7._ID740 = var_1;
        var_7._ID65 = var_2;
        var_7 _meth_807C( var_0 );

        if ( _func_02F( level._ID9228 ) && level._ID9228 )
            var_5._ID22676 = var_7;
        else
            var_7 _meth_80E8();
    }
}

_ID22645( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _unknown_3200( var_0, var_1, ( 0, 0, 0 ), var_2, var_3, var_4, var_5 );
}

_ID22646( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( _func_02F( var_3 ) )
        self endon( var_3 );

    if ( var_5 >= var_6 )
    {
        for (;;)
            wait 0.05;
    }

    if ( !_func_1D0( var_0 ) )
    {
        for (;;)
            wait 0.05;
    }

    for (;;)
    {
        wait(_func_0BA( var_5, var_6 ));
        _unknown_3305( "createfx_looper" );
        thread _unknown_31B0( var_0, var_1, var_2, undefined );
        _unknown_332A( "createfx_looper" );
    }
}

_ID22650( var_0, var_1 )
{
    var_1 endon( "death" );
    self waittill( var_0 );
    var_1 _meth_80B7();
}

_ID9259( var_0 )
{
    var_1 = _ID42229::_ID9214( "loopfx", var_0 );
    var_1._ID40005["delay"] = _ID42229::_ID16402();
    return var_1;
}

_ID9265( var_0 )
{
    var_1 = _ID42229::_ID9214( "oneshotfx", var_0 );
    var_1._ID40005["delay"] = _ID42229::_ID16484();
    return var_1;
}

_ID9217( var_0 )
{
    var_1 = _ID42229::_ID9214( "exploder", var_0 );
    var_1._ID40005["delay"] = _ID42229::_ID16272();
    var_1._ID40005["exploder_type"] = "normal";
    return var_1;
}

_ID2812( var_0 )
{
    if ( var_0.size <= 1 )
        return var_0;

    var_1 = 0;

    for ( var_2 = var_0.size - 1; var_2 >= 1; var_2-- )
    {
        var_3 = var_0[var_2];
        var_4 = var_2;

        for ( var_5 = 0; var_5 < var_2; var_5++ )
        {
            var_6 = var_0[var_5];

            if ( _func_12A( var_6, var_3 ) > 0 )
            {
                var_3 = var_6;
                var_4 = var_5;
            }
        }

        if ( var_4 != var_2 )
        {
            var_0[var_4] = var_0[var_2];
            var_0[var_2] = var_3;
        }
    }

    return var_0;
}

_ID20554( var_0, var_1 )
{
    return _func_12A( var_0, var_1 ) > 0;
}

_ID27000( var_0, var_1, var_2, var_3 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    var_4 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_4 endon( "death" );
    thread _unknown_33D3( var_4 );

    if ( _func_02F( var_1 ) )
    {
        var_4._ID740 = self._ID740 + var_1;
        var_4._ID65 = self._ID65;
        var_4 _meth_8453( self );
    }
    else
    {
        var_4._ID740 = self._ID740;
        var_4._ID65 = self._ID65;
        var_4 _meth_8453( self );
    }

    if ( _func_02F( var_2 ) && var_2 > 0 )
        var_4 _meth_8076( 0, 0 );

    var_4 _meth_807C( var_0 );

    if ( _func_02F( var_2 ) && var_2 > 0 )
        var_4 _meth_8076( 1, var_2 );

    self waittill( "stop sound" + var_0 );

    if ( _func_02F( var_3 ) && var_3 > 0 )
    {
        var_4 _meth_8076( 0, var_3 );
        wait(var_3 + 0.05);
    }

    var_4 _meth_80B2( var_0 );
    var_4 _meth_80B7();
}

_ID36516( var_0 )
{
    self notify( "stop sound" + var_0 );
}

_ID10280( var_0 )
{
    var_0 endon( "death" );
    _unknown_2A39( "death", "disconnect" );

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();
}

_ID13138( var_0 )
{
    waittillframeend;
}

_ID9137( var_0, var_1 )
{
    _func_036( var_0, var_1 );
}

_ID40761( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13 )
{

}

_ID37067( var_0, var_1 )
{
    var_2 = self _meth_818C( var_0 );
    var_3 = self _meth_818D( var_0 );
    var_4 = _func_11F( var_3 );
    var_4 = _func_119( var_4 ) * var_1;
    return var_2 + var_4;
}

_ID37527( var_0, var_1, var_2 )
{
    if ( var_0 )
        return var_1;

    return var_2;
}

_ID9163( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    if ( !_func_02F( level._ID22529 ) )
        level._ID22529 = [];

    var_2 = _func_1A5();
    var_2._ID23038 = var_1;
    var_2._ID216 = 0;
    level._ID22529[var_0] = var_2;
}

_ID22530( var_0 )
{
    if ( !_func_02F( level._ID22529 ) )
        return 0;

    return _func_02F( level._ID22529[var_0] );
}

_ID22529( var_0 )
{
    var_1 = level._ID22529[var_0];

    while ( var_1._ID216 >= var_1._ID23038 )
        var_1 waittill( "unlocked" );

    var_1._ID216++;
}

_ID20560( var_0 )
{
    var_1 = level._ID22529[var_0];
    return var_1._ID216 > var_1._ID23038;
}

_ID39501( var_0 )
{
    thread _unknown_3582( var_0 );
    wait 0.05;
}

_ID39496( var_0 )
{
    thread _unknown_358F( var_0 );
}

_ID39499( var_0 )
{
    wait 0.05;
    var_1 = level._ID22529[var_0];
    var_1._ID216--;
    var_1 notify( "unlocked" );
}

_ID16023()
{
    var_0 = level._ID912;

    if ( _func_02F( level._ID37503 ) )
        var_0 = level._ID37503;

    return var_0;
}

_ID3333( var_0 )
{
    var_1 = [];

    for ( var_2 = var_0.size - 1; var_2 >= 0; var_2-- )
        var_1[var_1.size] = var_0[var_2];

    return var_1;
}

_ID11126( var_0, var_1 )
{
    return _func_0F9( var_0 - var_1 );
}

_ID15567( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _unknown_3613( var_0, var_1, var_2, var_3, var_4, var_5 );
    var_6 = _unknown_3604( var_6 );
    return var_6;
}

_ID15566( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = var_1.size;

    if ( !_func_02F( var_2 ) )
        var_2 = [];

    var_6 = undefined;

    if ( _func_02F( var_4 ) )
        var_6 = var_4 * var_4;

    var_7 = 0;

    if ( _func_02F( var_5 ) )
        var_7 = var_5 * var_5;

    if ( var_2.size == 0 && var_3 >= var_1.size && var_7 == 0 && !_func_02F( var_6 ) )
        return _func_1C0( var_1, var_0 );

    var_8 = [];
    var_9 = var_1;

    for ( var_16 = _func_1DA( var_9 ); _func_02F( var_16 ); var_16 = _func_1BF( var_9, var_16 ) )
    {
        var_10 = var_9[var_16];
        var_11 = 0;
        var_12 = var_2;

        for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
        {
            var_13 = var_12[var_14];

            if ( var_10 == var_13 )
            {
                var_11 = 1;
                break;
            }
        }

        var_clear_4
        var_clear_2

        if ( var_11 )
            continue;

        var_15 = _func_0F5( var_0, var_10._ID740 );

        if ( _func_02F( var_6 ) && var_15 > var_6 )
            continue;

        if ( var_15 < var_7 )
            continue;

        var_8[var_8.size] = var_10;
    }

    var_clear_7
    var_clear_0
    var_8 = _func_1C0( var_8, var_0 );

    if ( var_3 >= var_8.size )
        return var_8;

    var_17 = [];

    for ( var_18 = 0; var_18 < var_3; var_18++ )
        var_17[var_18] = var_8[var_18];

    return var_17;
}

_ID20583()
{
    if ( !level._ID8534 )
    {
        var_0 = self _meth_835B();

        if ( _func_02F( var_0 ) )
            return var_0;
        else
            return 0;
    }

    return 1;
}

_ID12140( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 1500;

    if ( !_func_02F( var_2 ) )
        var_2 = -12000;

    return _func_091( var_0 + ( 0, 0, var_1 ), var_0 + ( 0, 0, var_2 ) );
}

_ID1880( var_0, var_1 )
{
    if ( !_func_02F( level._ID10516 ) )
        level._ID10516 = [];

    level._ID10516[var_0] = var_1;
}

_ID1881( var_0, var_1 )
{
    if ( !_func_02F( level._ID10552 ) )
        level._ID10552 = [];

    level._ID10552[var_0] = var_1;
}

_ID41802( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_119( var_2 - var_0 );
    var_5 = _func_11F( var_1 );
    var_6 = _func_0FB( var_5, var_4 );
    return var_6 >= var_3;
}

_ID13080( var_0 )
{
    self notify( "entity_path_disconnect_thread" );
    self endon( "entity_path_disconnect_thread" );
    self endon( "death" );
    level endon( "game_ended" );
    var_1 = 0;
    self._ID14782 = 0;

    for (;;)
    {
        var_2 = self._ID740;
        var_3 = _unknown_2CB2( var_0, "path_disconnect" );
        var_4 = 0;
        var_5 = _func_0F5( self._ID740, var_2 ) > 0;

        if ( var_5 )
            var_4 = 1;

        if ( _func_02F( var_3 ) && var_3 == "path_disconnect" )
            var_4 = 1;

        if ( _func_03D() < self._ID14782 )
            var_4 = 1;

        var_6 = level._ID7313;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];

            if ( _func_0D4( var_7 ) && _func_0F5( self._ID740, var_7._ID740 ) < 250000 )
            {
                var_4 = 1;
                self._ID14782 = _func_0E6( _func_03D() + 30000, self._ID14782 );
            }
        }

        var_clear_2
        var_clear_0

        if ( var_4 != var_1 || var_5 )
        {
            if ( var_4 )
                self _meth_805E();
            else
                self _meth_805F();

            var_1 = var_4;
        }
    }
}

_ID22822( var_0, var_1 )
{
    if ( level._ID435 == "aliens" && _func_02F( level._ID2524 ) )
        return self [[ level._ID2524 ]]( var_0, var_1 );

    if ( _func_02F( level._ID5662 ) && _func_02F( level._ID5662["bots_make_entity_sentient"] ) )
        return self [[ level._ID5662["bots_make_entity_sentient"] ]]( var_0, var_1 );
}

_ID2232( var_0 )
{
    if ( _func_02F( level._ID5662 ) && _func_02F( level._ID5662["ai_3d_sighting_model"] ) )
        return self [[ level._ID5662["ai_3d_sighting_model"] ]]( var_0 );
}

_ID32225( var_0, var_1, var_2 )
{
    if ( !_func_02F( level._ID3055 ) )
        level._ID3055 = [];

    var_3 = _func_128( _func_039( "mapname" ) );
    var_4 = 1;

    if ( _unknown_3356( var_3, "mp_" ) )
        var_4 = 0;

    if ( var_4 )
        level._ID3055[var_0]["basic"] = var_1;
    else
        level._ID3055[var_0]["basic"] = var_2;
}

_ID16182( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 500000;

    var_3 = undefined;
    var_4 = var_1;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];

        if ( !_func_02F( var_5 ) )
            continue;

        var_6 = _func_0F3( var_5._ID740, var_0 );

        if ( var_6 >= var_2 )
            continue;

        var_2 = var_6;
        var_3 = var_5;
    }

    var_clear_3
    var_clear_0
    return var_3;
}

_ID16276( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 500000;

    var_3 = 0;
    var_4 = undefined;
    var_5 = var_1;

    for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
    {
        var_6 = var_5[var_8];
        var_7 = _func_0F3( var_6._ID740, var_0 );

        if ( var_7 <= var_3 || var_7 >= var_2 )
            continue;

        var_3 = var_7;
        var_4 = var_6;
    }

    var_clear_3
    var_clear_0
    return var_4;
}

_ID23719( var_0, var_1, var_2 )
{
    var_2 = _unknown_3942( _func_02F( var_2 ), var_2, ( 0, 0, 0 ) );
    self _meth_81E5( var_0, var_2 );

    switch ( var_1 )
    {

    }

    case "top":
    case "direct":
}

_ID13284( var_0 )
{
    return _func_0EB( var_0 + 6.1e-05 ) / _func_0EB( 2.0 ) + 2.84;
}

_ID22386( var_0 )
{
    if ( var_0 <= 0.0031308 )
        return var_0 * 12.92;
    else
        return _func_1F9( var_0, 0.416667 ) * 1.055 - 0.055;
}

_ID8616( var_0 )
{
    if ( !_func_02F( var_0._ID18295 ) )
    {
        if ( _func_242() )
        {
            var_1 = _func_0E6( var_0._ID29340, _func_0E6( var_0._ID17371, var_0._ID5320 ) );
            var_2 = _unknown_3B51( var_1 * _func_03F() );

            if ( var_1 > 0 )
            {
                var_0._ID29340 = var_0._ID29340 / var_1;
                var_0._ID17371 = var_0._ID17371 / var_1;
                var_0._ID5320 = var_0._ID5320 / var_1;
                var_0._ID29340 = _unknown_3B83( var_0._ID29340 );
                var_0._ID17371 = _unknown_3B8F( var_0._ID17371 );
                var_0._ID5320 = _unknown_3B9B( var_0._ID5320 );
                var_0._ID18295 = var_2;
            }
            else
                var_0._ID18295 = 0.0;
        }
        else
            var_0._ID18295 = 1.0;
    }

    if ( _func_02F( var_0._ID36820 ) && var_0._ID36820 )
    {
        if ( !_func_02F( var_0._ID18297 ) )
        {
            if ( _func_242() )
            {
                var_1 = _func_0E6( var_0._ID29340, var_0._ID17371, var_0._ID5320 );
                var_2 = _unknown_3BE9( var_1 * _func_03F() );

                if ( var_1 > 0 )
                {
                    var_0._ID36828 = var_0._ID36828 / var_1;
                    var_0._ID36821 = var_0._ID36821 / var_1;
                    var_0._ID36802 = var_0._ID36802 / var_1;
                    var_0._ID36828 = _unknown_3C1C( var_0._ID29340 );
                    var_0._ID36821 = _unknown_3C28( var_0._ID17371 );
                    var_0._ID36802 = _unknown_3C34( var_0._ID5320 );
                    var_0._ID18297 = var_2;
                    return;
                }

                var_0._ID18297 = 0.0;
                return;
            }
            else
                var_0._ID18297 = 1.0;
        }
    }
}

_ID8615( var_0 )
{
    if ( _func_02F( level._ID13292 ) )
    {
        switch ( level._ID13292 )
        {

        }

        return;
        case "normal_fog":
        case "dfog":
        default:
    }
}

_ID32314( var_0, var_1 )
{
    if ( _func_02F( var_0._ID36820 ) && var_0._ID36820 )
    {
        if ( !_func_1B3( self ) )
            _func_189( var_0._ID36107, var_0._ID17667, var_0._ID29340, var_0._ID17371, var_0._ID5320, var_0._ID18295, var_0._ID23114, var_1, var_0._ID36828, var_0._ID36821, var_0._ID36802, var_0._ID18297, var_0._ID36809, var_0._ID36800, var_0._ID36812, var_0._ID24929, var_0._ID34256, var_0._ID34258, var_0._ID34257, var_0._ID18338, var_0._ID18337, var_0._ID18339 );
        else
            self _meth_822F( var_0._ID36107, var_0._ID17667, var_0._ID29340, var_0._ID17371, var_0._ID5320, var_0._ID18295, var_0._ID23114, var_1, var_0._ID36828, var_0._ID36821, var_0._ID36802, var_0._ID18297, var_0._ID36809, var_0._ID36800, var_0._ID36812, var_0._ID24929, var_0._ID34256, var_0._ID34258, var_0._ID34257, var_0._ID18338, var_0._ID18337, var_0._ID18339 );
    }
    else if ( !_func_1B3( self ) )
        _func_189( var_0._ID36107, var_0._ID17667, var_0._ID29340, var_0._ID17371, var_0._ID5320, var_0._ID18295, var_0._ID23114, var_1, var_0._ID34256, var_0._ID34258, var_0._ID34257, var_0._ID18338, var_0._ID18337, var_0._ID18339 );
    else
        self _meth_822F( var_0._ID36107, var_0._ID17667, var_0._ID29340, var_0._ID17371, var_0._ID5320, var_0._ID18295, var_0._ID23114, var_1, var_0._ID34256, var_0._ID34258, var_0._ID34257, var_0._ID18338, var_0._ID18337, var_0._ID18339 );
}

_ID32313( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_func_02F( var_0._ID34256 ) )
    {
        var_0._ID34256 = 0;
        var_0._ID34258 = 0;
        var_0._ID34257 = 0;
    }

    if ( !_func_02F( var_0._ID18338 ) )
    {
        var_0._ID18338 = 0;
        var_0._ID18337 = 0;
        var_0._ID18339 = 1000;
    }

    _unknown_3E58( var_0 );
    _unknown_3EBF( var_0 );

    if ( _func_02F( var_0._ID3511 ) )
    {
        if ( level._ID688 && var_0._ID3511 )
        {
            if ( _func_1B3( self ) )
                self _meth_8231( var_1, var_0._ID3527, var_0._ID3514, var_0._ID3516, var_0._ID3515, var_0._ID3512, var_0._ID3520, var_0._ID48736, var_0._ID53208, var_0._ID51503, var_0._ID47968, var_0._ID3513, var_0._ID3525, var_0._ID3510, _func_0C1( var_0._ID3522 ), var_0._ID3521, var_0._ID3524, var_0._ID3523, var_0._ID3526, var_0._ID3518, var_0._ID3517, var_0._ID3519 );
            else
                _func_18C( var_1, var_0._ID3527, var_0._ID3514, var_0._ID3516, var_0._ID3515, var_0._ID3512, var_0._ID3520, var_0._ID48736, var_0._ID53208, var_0._ID51503, var_0._ID47968, var_0._ID3513, var_0._ID3525, var_0._ID3510, _func_0C1( var_0._ID3522 ), var_0._ID3521, var_0._ID3524, var_0._ID3523, var_0._ID3526, var_0._ID3518, var_0._ID3517, var_0._ID3519 );
        }
        else
            _unknown_3FB7( var_0, var_1 );
    }
    else
        _unknown_3FBE( var_0, var_1 );
}

_ID1891( var_0, var_1 )
{
    if ( !_func_02F( level._ID1426 ) )
        level._ID1426 = [];

    level._ID1426[var_0] = _func_155( var_1 );
}

_ID3336( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0.size - 1; var_2++ )
    {
        for ( var_3 = var_2 + 1; var_3 < var_0.size; var_3++ )
        {
            if ( var_0[var_3] [[ var_1 ]]() < var_0[var_2] [[ var_1 ]]() )
            {
                var_4 = var_0[var_3];
                var_0[var_3] = var_0[var_2];
                var_0[var_2] = var_4;
            }
        }
    }

    return var_0;
}

_ID3337( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = -1;

    for ( var_3 = 1; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];

        for ( var_5 = var_3 - 1; var_5 >= 0 && ![[ var_1 ]]( var_0[var_5], var_4 ); var_5-- )
            var_0[var_5 + 1] = var_0[var_5];

        var_0[var_5 + 1] = var_4;

        if ( var_2 > 0 && var_3 % var_2 == 0 )
            wait 0.05;
    }

    return var_0;
}

_ID18529()
{
    if ( !_func_02F( self._ID25546 ) )
        self._ID25546 = self _meth_80C5( 0 );

    self _meth_805A();
}

_ID34034()
{
    if ( !_func_0D4( self ) )
        self _meth_82C8();

    if ( _func_02F( self._ID25546 ) )
        self _meth_80C5( self._ID25546 );

    self _meth_8059();
}

_ID32677( var_0 )
{
    var_1 = _func_1A2();
    _func_032( "lighting_state", var_0 );

    if ( !_func_03A( "r_reflectionProbeGenerate" ) )
    {
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _func_02F( var_3._ID22321 ) && var_3._ID170 == "script_brushmodel" || var_3._ID170 == "script_model" )
            {
                if ( var_3._ID22321 == 0 )
                    continue;

                if ( var_3._ID22321 == var_0 )
                {
                    var_3 _unknown_41F9();
                    continue;
                }

                var_3 _unknown_41FC();
            }
        }

        var_clear_2
        var_clear_0
    }
}

_ID52356()
{
    return "rankedMatchData";
}

_ID48154()
{
    return "privateMatchData";
}

_ID48235()
{
    return "coopMatchData";
}

_ID45389()
{
    return "commonData";
}

_ID43624()
{
    return "hordeMatchData";
}

_ID44046()
{
    return "spData";
}

_ID18518( var_0 )
{
    thread _unknown_4275( var_0 );
}

_ID46060( var_0 )
{
    if ( !_func_02F( self._ID680 ) )
        return;

    level._ID794 endon( "death" );
    self endon( "death" );
    self._ID25523 = self._ID680;
    self._ID680 = " ";
    level waittill( var_0 );
    self._ID680 = self._ID25523;
}

_ID49667( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_4 ) )
    {
        var_4 = ( 0, 0, 0 );
        jump loc_42D5
    }

    var_5 = var_1 _unknown_3D53( var_2, var_3, var_4 );
    var_1 _unknown_42EA( var_0, var_2, var_5 );
    _func_157( var_0, var_5, "tag_origin" );
}

_ID47147( var_0, var_1, var_2 )
{
    if ( !_func_02F( self._ID53520 ) )
        self._ID53520 = [];

    var_1 = _func_128( var_1 );

    if ( !_func_02F( self._ID53520[var_1] ) )
        self._ID53520[var_1] = [];

    if ( !_func_02F( self._ID53520[var_1][var_0] ) )
        self._ID53520[var_1][var_0] = [];

    var_3 = self._ID53520[var_1][var_0].size;
    self._ID53520[var_1][var_0][var_3] = var_2;
}

_ID44034( var_0, var_1, var_2, var_3 )
{
    _unknown_4367( var_0, var_1, var_2, ::_func_158, var_3 );
}

_ID49360( var_0, var_1, var_2, var_3 )
{
    _unknown_4378( var_0, var_1, var_2, ::_func_159, var_3 );
}

_ID53319( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_4 ) )
        var_4 = 0;

    var_1 _unknown_439A( var_0, var_2, var_3 );

    if ( !var_4 )
        call [[ var_3 ]]( var_0, var_1, var_2 );
}

_ID50907( var_0, var_1, var_2 )
{
    if ( !_func_02F( self._ID53520 ) )
        return;

    var_1 = _func_128( var_1 );

    if ( !_func_02F( self._ID53520[var_1] ) )
        return;

    if ( !_func_02F( self._ID53520[var_1][var_0] ) )
        return;

    var_3 = self._ID53520[var_1][var_0];
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        call [[ var_2 ]]( var_0, var_5, "tag_origin" );
    }

    var_clear_2
    var_clear_0
    waittillframeend;
    var_7 = var_3;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_5 = var_7[var_8];
        var_5 _meth_80B7();
    }

    var_clear_1
    var_clear_0
    self._ID53520[var_1][var_0] = undefined;

    if ( self._ID53520[var_1].size == 0 )
        self._ID53520[var_1] = undefined;
}

_ID44574( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );

    if ( _func_02F( var_3 ) )
        self endon( var_3 );

    var_5 = _func_02F( var_4 );

    if ( level._ID8534 || !_func_02F( var_2 ) )
        self _meth_80E2( var_1 );
    else
    {
        if ( !_func_02F( var_0 ) )
        {
            level waittill( "level.players initialized" );
            var_0 = level._ID794;
        }

        var_6 = !var_0 _unknown_4151();

        while ( _func_02F( self ) )
        {
            if ( var_5 && !_func_02F( var_4 ) )
                break;

            if ( var_6 != var_0 _ID18529() )
            {
                var_6 = var_0 _unknown_4175();

                if ( var_6 )
                    self _meth_80E2( var_1 );
                else
                    self _meth_80E2( var_2 );
            }

            wait 0.1;
        }
    }
}

_ID47857( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );

    if ( _func_02F( var_3 ) )
        self endon( var_3 );

    var_4 = var_0 _unknown_41A5();
    var_5 = var_1;

    while ( _func_02F( self ) )
    {
        var_6 = var_0 _unknown_41B5();

        if ( var_6 != var_4 )
        {
            var_4 = var_6;
            var_5 = _unknown_4122( var_5 == var_1, var_2, var_1 );
            self _meth_80D1( var_5 );
        }

        wait 0.1;
    }
}

_ID54738()
{
    var_0 = _func_03A( "loc_language" );
    var_1 = "LANGUAGE_ENGLISH";

    switch ( var_0 )
    {

    }

    return var_1;
    case 16:
    case 15:
    case 14:
    case 13:
    case 12:
    case 11:
    case 10:
    case 9:
    case 8:
    case 7:
    case 6:
    case 5:
    case 4:
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID54006( var_0, var_1, var_2 )
{
    if ( var_0 < var_1 )
        return var_2;

    if ( var_0 > var_2 )
        return var_1;

    return var_0;
}

_ID49621( var_0, var_1 )
{
    return _unknown_46D1( var_0 / var_1 );
}

_ID44996( var_0, var_1, var_2 )
{
    if ( var_1 > var_2 )
        return _unknown_46D7( var_0, var_2, var_1 );

    var_3 = var_2 - var_1;
    return _unknown_46DD( var_0, var_3 ) - _unknown_46E2( var_1, var_3 );
}

_ID46275( var_0 )
{
    return var_0 * 100;
}

_ID46799( var_0, var_1 )
{
    return var_1 / 100 * var_0;
}

_ID47530( var_0, var_1 )
{
    return _unknown_4713( _unknown_470E( var_0 ), var_1 );
}

setaicount( var_0 )
{
    _func_0DB( "ai_count", var_0 );
}

resetaicount()
{
    _func_0DB( "ai_count", 32 );
}

setshadowmapon()
{
    _func_0DB( "sm_scriptAllowed", 1 );
}

setshadowmapoff()
{
    _func_0DB( "sm_scriptAllowed", 0 );
}
