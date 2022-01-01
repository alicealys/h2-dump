// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24940( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( level._ID15079 ) )
        return;

    if ( !isdefined( level._ID15079[var_0] ) )
        return;

    if ( !isdefined( var_1 ) )
    {
        call [[ level._ID15079[var_0] ]]();
        return;
    }

    if ( !isdefined( var_2 ) )
    {
        call [[ level._ID15079[var_0] ]]( var_1 );
        return;
    }

    if ( !isdefined( var_3 ) )
    {
        call [[ level._ID15079[var_0] ]]( var_1, var_2 );
        return;
    }

    if ( !isdefined( var_4 ) )
    {
        call [[ level._ID15079[var_0] ]]( var_1, var_2, var_3 );
        return;
    }

    call [[ level._ID15079[var_0] ]]( var_1, var_2, var_3, var_4 );
}

_ID31862( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( level._ID15079[var_0] ) )
        return;

    if ( !isdefined( var_1 ) )
    {
        self call [[ level._ID15079[var_0] ]]();
        return;
    }

    if ( !isdefined( var_2 ) )
    {
        self call [[ level._ID15079[var_0] ]]( var_1 );
        return;
    }

    if ( !isdefined( var_3 ) )
    {
        self call [[ level._ID15079[var_0] ]]( var_1, var_2 );
        return;
    }

    if ( !isdefined( var_4 ) )
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
    return ( randomfloat( var_0 ) - var_0 * 0.5, randomfloat( var_0 ) - var_0 * 0.5, randomfloat( var_0 ) - var_0 * 0.5 );
}

_ID28978( var_0, var_1 )
{
    var_2 = randomfloatrange( var_0, var_1 );

    if ( randomint( 2 ) == 0 )
        var_2 *= -1;

    var_3 = randomfloatrange( var_0, var_1 );

    if ( randomint( 2 ) == 0 )
        var_3 *= -1;

    var_4 = randomfloatrange( var_0, var_1 );

    if ( randomint( 2 ) == 0 )
        var_4 *= -1;

    return ( var_2, var_3, var_4 );
}

_ID28977( var_0, var_1 )
{
    var_2 = randomfloat( var_1 );
    var_3 = randomfloat( 360 );
    var_4 = sin( var_2 );
    var_5 = cos( var_2 );
    var_6 = sin( var_3 );
    var_7 = cos( var_3 );
    var_8 = ( var_5, var_7 * var_4, var_6 * var_4 );
    return rotatevector( var_8, vectortoangles( var_0 ) );
}

_ID46360( var_0 )
{
    return abs( lengthsquared( var_0 ) - 1 ) < 0.002;
}

_ID34160( var_0 )
{
    if ( var_0 >= 0 )
        return 1;

    return -1;
}

_ID648( var_0, var_1 )
{
    var_2 = int( var_0 / var_1 );

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
    if ( isdefined( self._ID9472 ) )
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
    var_1 = getarraykeys( self._ID13288 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        self._ID13288[var_1[var_2]] = var_0;
}

_ID8201()
{
    return randomint( 100 ) >= 50;
}

_ID7490( var_0, var_1 )
{
    var_2 = randomint( var_1[var_1.size - 1] + 1 );

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
    self waittill( var_0,  var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11  );
    var_12 = [];
    var_12[0] = var_0;

    if ( isdefined( var_2 ) )
        var_12[1] = var_2;

    if ( isdefined( var_3 ) )
        var_12[2] = var_3;

    if ( isdefined( var_4 ) )
        var_12[3] = var_4;

    if ( isdefined( var_5 ) )
        var_12[4] = var_5;

    if ( isdefined( var_6 ) )
        var_12[5] = var_6;

    if ( isdefined( var_7 ) )
        var_12[6] = var_7;

    if ( isdefined( var_8 ) )
        var_12[7] = var_8;

    if ( isdefined( var_9 ) )
        var_12[8] = var_9;

    if ( isdefined( var_10 ) )
        var_12[9] = var_10;

    if ( isdefined( var_11 ) )
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
    var_5 = spawnstruct();
    var_5._ID37657 = 0;

    if ( isdefined( var_0 ) )
    {
        childthread _ID41148( var_0, var_5 );
        var_5._ID37657++;
    }

    if ( isdefined( var_1 ) )
    {
        childthread _ID41148( var_1, var_5 );
        var_5._ID37657++;
    }

    if ( isdefined( var_2 ) )
    {
        childthread _ID41148( var_2, var_5 );
        var_5._ID37657++;
    }

    if ( isdefined( var_3 ) )
    {
        childthread _ID41148( var_3, var_5 );
        var_5._ID37657++;
    }

    if ( isdefined( var_4 ) )
    {
        childthread _ID41148( var_4, var_5 );
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
    var_8 = spawnstruct();
    var_8._ID37657 = 0;

    if ( isdefined( var_0 ) )
    {
        var_0 childthread _ID41148( var_1, var_8 );
        var_8._ID37657++;
    }

    if ( isdefined( var_2 ) )
    {
        var_2 childthread _ID41148( var_3, var_8 );
        var_8._ID37657++;
    }

    if ( isdefined( var_4 ) )
    {
        var_4 childthread _ID41148( var_5, var_8 );
        var_8._ID37657++;
    }

    if ( isdefined( var_6 ) )
    {
        var_6 childthread _ID41148( var_7, var_8 );
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
    if ( ( !isdefined( var_0 ) || var_0 != "death" ) && ( !isdefined( var_1 ) || var_1 != "death" ) && ( !isdefined( var_2 ) || var_2 != "death" ) && ( !isdefined( var_3 ) || var_3 != "death" ) && ( !isdefined( var_4 ) || var_4 != "death" ) && ( !isdefined( var_5 ) || var_5 != "death" ) && ( !isdefined( var_6 ) || var_6 != "death" ) )
        self endon( "death" );

    var_7 = spawnstruct();

    if ( isdefined( var_0 ) )
        childthread _ID41148( var_0, var_7 );

    if ( isdefined( var_1 ) )
        childthread _ID41148( var_1, var_7 );

    if ( isdefined( var_2 ) )
        childthread _ID41148( var_2, var_7 );

    if ( isdefined( var_3 ) )
        childthread _ID41148( var_3, var_7 );

    if ( isdefined( var_4 ) )
        childthread _ID41148( var_4, var_7 );

    if ( isdefined( var_5 ) )
        childthread _ID41148( var_5, var_7 );

    if ( isdefined( var_6 ) )
        childthread _ID41148( var_6, var_7 );

    var_7 waittill( "returned",  var_8  );
    var_7 notify( "die" );
    return var_8;
}

_ID41077( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( ( !isdefined( var_0 ) || var_0 != "death" ) && ( !isdefined( var_1 ) || var_1 != "death" ) && ( !isdefined( var_2 ) || var_2 != "death" ) && ( !isdefined( var_3 ) || var_3 != "death" ) && ( !isdefined( var_4 ) || var_4 != "death" ) && ( !isdefined( var_5 ) || var_5 != "death" ) && ( !isdefined( var_6 ) || var_6 != "death" ) && ( !isdefined( var_7 ) || var_7 != "death" ) )
        self endon( "death" );

    var_8 = spawnstruct();

    if ( isdefined( var_0 ) )
        childthread _ID41150( var_0, var_8 );

    if ( isdefined( var_1 ) )
        childthread _ID41150( var_1, var_8 );

    if ( isdefined( var_2 ) )
        childthread _ID41150( var_2, var_8 );

    if ( isdefined( var_3 ) )
        childthread _ID41150( var_3, var_8 );

    if ( isdefined( var_4 ) )
        childthread _ID41150( var_4, var_8 );

    if ( isdefined( var_5 ) )
        childthread _ID41150( var_5, var_8 );

    if ( isdefined( var_6 ) )
        childthread _ID41150( var_6, var_8 );

    if ( isdefined( var_7 ) )
        childthread _ID41150( var_7, var_8 );

    var_8 waittill( "returned",  var_9  );
    var_8 notify( "die" );
    return var_9;
}

_ID41076( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = spawnstruct();

    if ( isdefined( var_0 ) )
        childthread _ID41149( var_0, var_6 );

    if ( isdefined( var_1 ) )
        childthread _ID41149( var_1, var_6 );

    if ( isdefined( var_2 ) )
        childthread _ID41149( var_2, var_6 );

    if ( isdefined( var_3 ) )
        childthread _ID41149( var_3, var_6 );

    if ( isdefined( var_4 ) )
        childthread _ID41149( var_4, var_6 );

    if ( isdefined( var_5 ) )
        childthread _ID41149( var_5, var_6 );

    var_6 waittill( "returned",  var_7  );
    var_6 notify( "die" );
    return var_7;
}

_ID41072( var_0 )
{
    var_1 = spawnstruct();
    var_2 = 0;

    foreach ( var_4 in var_0 )
    {
        childthread _ID41148( var_4, var_1 );

        if ( var_4 == "death" )
            var_2 = 1;
    }

    if ( !var_2 )
        self endon( "death" );

    var_1 waittill( "returned",  var_6  );
    var_1 notify( "die" );
    return var_6;
}

_ID41073( var_0 )
{
    var_1 = spawnstruct();

    foreach ( var_3 in var_0 )
        childthread _ID41149( var_3, var_1 );

    var_1 waittill( "returned",  var_5  );
    var_1 notify( "die" );
    return var_5;
}

_ID41070( var_0, var_1 )
{
    var_2 = spawnstruct();
    var_3 = 0;

    foreach ( var_5 in var_0 )
    {
        childthread _ID41148( var_5, var_2 );

        if ( var_5 == "death" )
            var_3 = 1;
    }

    if ( !var_3 )
        self endon( "death" );

    var_2 childthread _ID1657( var_1 );
    var_2 waittill( "returned",  var_7  );
    var_2 notify( "die" );
    return var_7;
}

_ID41071( var_0, var_1 )
{
    var_2 = spawnstruct();

    foreach ( var_4 in var_0 )
        childthread _ID41149( var_4, var_2 );

    var_2 thread _ID1657( var_1 );
    var_2 waittill( "returned",  var_6  );
    var_2 notify( "die" );
    return var_6;
}

_ID41078( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( ( !isdefined( var_1 ) || var_1 != "death" ) && ( !isdefined( var_2 ) || var_2 != "death" ) && ( !isdefined( var_3 ) || var_3 != "death" ) && ( !isdefined( var_4 ) || var_4 != "death" ) && ( !isdefined( var_5 ) || var_5 != "death" ) && ( !isdefined( var_6 ) || var_6 != "death" ) )
        self endon( "death" );

    var_7 = spawnstruct();

    if ( isdefined( var_1 ) )
        childthread _ID41148( var_1, var_7 );

    if ( isdefined( var_2 ) )
        childthread _ID41148( var_2, var_7 );

    if ( isdefined( var_3 ) )
        childthread _ID41148( var_3, var_7 );

    if ( isdefined( var_4 ) )
        childthread _ID41148( var_4, var_7 );

    if ( isdefined( var_5 ) )
        childthread _ID41148( var_5, var_7 );

    if ( isdefined( var_6 ) )
        childthread _ID41148( var_6, var_7 );

    var_7 childthread _ID1657( var_0 );
    var_7 waittill( "returned",  var_8  );
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
    var_6 = spawnstruct();

    if ( isdefined( var_1 ) )
        childthread _ID41149( var_1, var_6 );

    if ( isdefined( var_2 ) )
        childthread _ID41149( var_2, var_6 );

    if ( isdefined( var_3 ) )
        childthread _ID41149( var_3, var_6 );

    if ( isdefined( var_4 ) )
        childthread _ID41149( var_4, var_6 );

    if ( isdefined( var_5 ) )
        childthread _ID41149( var_5, var_6 );

    var_6 childthread _ID1657( var_0 );
    var_6 waittill( "returned",  var_7  );
    var_6 notify( "die" );
    return var_7;
}

_ID41068( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( isdefined( var_1 ) )
        self endon( var_1 );

    if ( isdefined( var_2 ) )
        self endon( var_2 );

    if ( isdefined( var_3 ) )
        self endon( var_3 );

    if ( isdefined( var_4 ) )
        self endon( var_4 );

    if ( isdefined( var_5 ) )
        self endon( var_5 );

    if ( isdefined( var_6 ) )
        self endon( var_6 );

    if ( isdefined( var_7 ) )
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
    if ( isdefined( var_2 ) && isdefined( var_3 ) )
        var_2 endon( var_3 );

    if ( isdefined( var_4 ) && isdefined( var_5 ) )
        var_4 endon( var_5 );

    if ( isdefined( var_6 ) && isdefined( var_7 ) )
        var_6 endon( var_7 );

    if ( isdefined( var_8 ) && isdefined( var_9 ) )
        var_8 endon( var_9 );

    if ( isdefined( var_10 ) && isdefined( var_11 ) )
        var_10 endon( var_11 );

    if ( isdefined( var_12 ) && isdefined( var_13 ) )
        var_12 endon( var_13 );

    var_0 waittill( var_1 );
}

_ID20747()
{
    var_0 = gettime();

    if ( isdefined( self._ID14516 ) && var_0 < self._ID14516 )
        return 1;

    if ( isdefined( self._ID8418 ) && var_0 < self._ID8418 )
        return 1;

    return 0;
}

_ID14396( var_0 )
{
    return isdefined( level._ID14385[var_0] );
}

_ID14385( var_0 )
{
    return level._ID14385[var_0];
}

_ID14446( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( !_ID14385( var_2 ) )
            return 0;
    }

    return 1;
}

_ID19699()
{
    level._ID14385 = [];
    level._ID14447 = [];
    level._ID15520 = 0;

    if ( !isdefined( level._ID34997 ) )
        level._ID34997 = ::_ID12438;

    level._ID14409 = spawnstruct();
    level._ID14409 _ID3442();
}

_ID14400( var_0 )
{
    if ( !isdefined( level._ID14385 ) )
        _ID19699();

    level._ID14385[var_0] = 0;

    if ( !isdefined( level._ID38807 ) )
    {
        _ID19824();
        level._ID38807[var_0] = [];
    }
    else if ( !isdefined( level._ID38807[var_0] ) )
        level._ID38807[var_0] = [];

    if ( _ID20932( var_0, "aa_" ) )
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
    _ID32480( var_0 );

    if ( isdefined( var_1 ) )
        level notify( var_0,  var_1  );
    else
        level notify( var_0 );
}

_ID51014( var_0, var_1, var_2 )
{
    level._ID14385[var_0] = 1;
    _ID32480( var_0 );

    if ( isdefined( var_2 ) )
        level notify( var_0,  var_1, var_2  );
    else if ( isdefined( var_1 ) )
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

    while ( !_ID14385( var_0 ) )
    {
        var_1 = undefined;
        level waittill( var_0,  var_1  );
    }

    if ( isdefined( var_1 ) )
        return var_1;
}

_ID14388( var_0 )
{
    if ( !_ID14385( var_0 ) )
        return;

    level._ID14385[var_0] = 0;
    _ID32480( var_0 );
    level notify( var_0 );
}

_ID14426( var_0 )
{
    while ( _ID14385( var_0 ) )
        level waittill( var_0 );
}

_ID41098( var_0, var_1 )
{
    self endon( var_0 );
    self waittill( var_1 );
}

_ID3350( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !isdefined( var_2 ) )
    {
        foreach ( var_12 in var_0 )
            var_12 thread [[ var_1 ]]();
    }
    else
    {
        if ( !isdefined( var_3 ) )
        {
            foreach ( var_12 in var_0 )
                var_12 thread [[ var_1 ]]( var_2 );

            return;
        }

        if ( !isdefined( var_4 ) )
        {
            foreach ( var_12 in var_0 )
                var_12 thread [[ var_1 ]]( var_2, var_3 );

            return;
        }

        if ( !isdefined( var_5 ) )
        {
            foreach ( var_12 in var_0 )
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4 );

            return;
        }

        if ( !isdefined( var_6 ) )
        {
            foreach ( var_12 in var_0 )
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5 );

            return;
        }

        if ( !isdefined( var_7 ) )
        {
            foreach ( var_12 in var_0 )
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6 );

            return;
        }

        if ( !isdefined( var_8 ) )
        {
            foreach ( var_12 in var_0 )
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6, var_7 );

            return;
        }

        if ( !isdefined( var_9 ) )
        {
            foreach ( var_12 in var_0 )
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8 );

            return;
        }

        if ( !isdefined( var_10 ) )
        {
            foreach ( var_12 in var_0 )
                var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 );

            return;
        }

        foreach ( var_12 in var_0 )
            var_12 thread [[ var_1 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    }
}

_ID3294( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_4 ) )
    {
        foreach ( var_6 in var_0 )
            var_6 call [[ var_1 ]]( var_2, var_3, var_4 );

        return;
    }

    if ( isdefined( var_3 ) )
    {
        foreach ( var_6 in var_0 )
            var_6 call [[ var_1 ]]( var_2, var_3 );

        return;
    }

    if ( isdefined( var_2 ) )
    {
        foreach ( var_6 in var_0 )
            var_6 call [[ var_1 ]]( var_2 );

        return;
    }

    foreach ( var_6 in var_0 )
        var_6 call [[ var_1 ]]();
}

_ID24937( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_4 ) )
    {
        foreach ( var_6 in var_0 )
            call [[ var_1 ]]( var_6, var_2, var_3, var_4 );

        return;
    }

    if ( isdefined( var_3 ) )
    {
        foreach ( var_6 in var_0 )
            call [[ var_1 ]]( var_6, var_2, var_3 );

        return;
    }

    if ( isdefined( var_2 ) )
    {
        foreach ( var_6 in var_0 )
            call [[ var_1 ]]( var_6, var_2 );

        return;
    }

    foreach ( var_6 in var_0 )
        call [[ var_1 ]]( var_6 );
}

_ID3353( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID3350( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_ID3354( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    _ID3350( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID38865( var_0, var_1 )
{
    if ( isdefined( var_0 ) && isdefined( var_1 ) )
    {
        var_2 = getentarray( var_0, var_1 );
        _ID3350( var_2, ::_ID38866 );
    }
    else
        _ID38866();
}

_ID38866()
{
    if ( isdefined( self._ID29164 ) )
        self._ID740 = self._ID29164;

    self._ID38863 = undefined;
}

_ID38863( var_0, var_1 )
{
    if ( isdefined( var_0 ) && isdefined( var_1 ) )
    {
        var_2 = getentarray( var_0, var_1 );
        _ID3350( var_2, ::_ID38864 );
    }
    else
        _ID38864();
}

_ID38864()
{
    if ( !isdefined( self._ID29164 ) )
        self._ID29164 = self._ID740;

    if ( self._ID740 == self._ID29164 )
        self._ID740 = self._ID740 + ( 0, 0, -10000 );

    self._ID38863 = 1;
}

_ID32480( var_0 )
{
    if ( !isdefined( level._ID38807 ) )
        return;

    level._ID38807[var_0] = _ID3332( level._ID38807[var_0] );
    _ID3350( level._ID38807[var_0], ::_ID39659 );
}

_ID39659()
{
    var_0 = 1;

    if ( isdefined( self._ID31196 ) )
    {
        var_0 = 0;
        var_1 = _ID9141( self._ID31196 );

        foreach ( var_3 in var_1 )
        {
            if ( _ID14385( var_3 ) )
            {
                var_0 = 1;
                break;
            }
        }
    }

    var_5 = 1;

    if ( isdefined( self._ID31193 ) )
    {
        var_1 = _ID9141( self._ID31193 );

        foreach ( var_3 in var_1 )
        {
            if ( _ID14385( var_3 ) )
            {
                var_5 = 0;
                break;
            }
        }
    }

    [[ level._ID38817[var_0 && var_5] ]]();
}

_ID9141( var_0 )
{
    var_1 = strtok( var_0, " " );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !isdefined( level._ID14385[var_1[var_2]] ) )
            _ID14400( var_1[var_2] );
    }

    return var_1;
}

_ID19824()
{
    level._ID38807 = [];
    level._ID38817[1] = ::_ID38865;
    level._ID38817[0] = ::_ID38863;
}

_ID16638( var_0, var_1 )
{
    var_2 = level._ID36711[var_1][var_0];

    if ( !isdefined( var_2 ) )
        return undefined;

    if ( var_2.size > 1 )
        return undefined;

    return var_2[0];
}

_ID16640( var_0, var_1 )
{
    var_2 = level._ID36711[var_1][var_0];

    if ( !isdefined( var_2 ) )
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

    foreach ( var_1 in level._ID36707 )
        _ID1954( var_1 );
}

_ID1954( var_0 )
{
    if ( isdefined( var_0._ID1193 ) )
    {
        if ( !isdefined( level._ID36711["targetname"][var_0._ID1193] ) )
            level._ID36711["targetname"][var_0._ID1193] = [];

        var_1 = level._ID36711["targetname"][var_0._ID1193].size;
        level._ID36711["targetname"][var_0._ID1193][var_1] = var_0;
    }

    if ( isdefined( var_0._ID1191 ) )
    {
        if ( !isdefined( level._ID36711["target"][var_0._ID1191] ) )
            level._ID36711["target"][var_0._ID1191] = [];

        var_1 = level._ID36711["target"][var_0._ID1191].size;
        level._ID36711["target"][var_0._ID1191][var_1] = var_0;
    }

    if ( isdefined( var_0._ID922 ) )
    {
        if ( !isdefined( level._ID36711["script_noteworthy"][var_0._ID922] ) )
            level._ID36711["script_noteworthy"][var_0._ID922] = [];

        var_1 = level._ID36711["script_noteworthy"][var_0._ID922].size;
        level._ID36711["script_noteworthy"][var_0._ID922][var_1] = var_0;
    }

    if ( isdefined( var_0._ID920 ) )
    {
        if ( !isdefined( level._ID36711["script_linkname"][var_0._ID920] ) )
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
    if ( !isdefined( var_0 ) )
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

    foreach ( var_4 in var_0 )
    {
        if ( var_4 != var_1 )
            var_2[var_2.size] = var_4;
    }

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
    foreach ( var_3 in var_1 )
        var_0 = _ID3321( var_0, var_3 );

    return var_0;
}

_ID3332( var_0 )
{
    var_1 = [];

    foreach ( var_4, var_3 in var_0 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID3324( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        var_4 = 1;

        foreach ( var_6 in var_1 )
        {
            if ( var_3 == var_6 )
            {
                var_4 = 0;
                break;
            }
        }

        if ( var_4 )
            var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID3315( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_4 ) )
    {
        foreach ( var_6 in var_0 )
            thread [[ var_1 ]]( var_6, var_2, var_3, var_4 );

        return;
    }

    if ( isdefined( var_3 ) )
    {
        foreach ( var_6 in var_0 )
            thread [[ var_1 ]]( var_6, var_2, var_3 );

        return;
    }

    if ( isdefined( var_2 ) )
    {
        foreach ( var_6 in var_0 )
            thread [[ var_1 ]]( var_6, var_2 );

        return;
    }

    foreach ( var_6 in var_0 )
        thread [[ var_1 ]]( var_6 );
}

_ID3314( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_4 ) )
    {
        foreach ( var_6 in var_0 )
            call [[ var_1 ]]( var_6, var_2, var_3, var_4 );

        return;
    }

    if ( isdefined( var_3 ) )
    {
        foreach ( var_6 in var_0 )
            call [[ var_1 ]]( var_6, var_2, var_3 );

        return;
    }

    if ( isdefined( var_2 ) )
    {
        foreach ( var_6 in var_0 )
            call [[ var_1 ]]( var_6, var_2 );

        return;
    }

    foreach ( var_6 in var_0 )
        call [[ var_1 ]]( var_6 );
}

_ID1960( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        return var_0;

    if ( !isdefined( var_0 ) )
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
        if ( _ID14385( var_0 ) )
            return;

        if ( _ID14385( var_1 ) )
            return;

        level _ID41098( var_0, var_1 );
    }
}

_ID14422( var_0, var_1 )
{
    for (;;)
    {
        if ( _ID14385( var_0 ) )
            return var_0;

        if ( _ID14385( var_1 ) )
            return var_1;

        var_2 = level _ID41075( var_0, var_1 );
        return var_2;
    }
}

_ID14428( var_0, var_1 )
{
    for (;;)
    {
        if ( !_ID14385( var_0 ) )
            return var_0;

        if ( !_ID14385( var_1 ) )
            return var_1;

        level _ID41098( var_0, var_1 );
    }
}

_ID14429( var_0, var_1 )
{
    return _ID14428( var_0, var_1 );
}

_ID14415( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = [];

    if ( isdefined( var_5 ) )
    {
        var_6[var_6.size] = var_0;
        var_6[var_6.size] = var_1;
        var_6[var_6.size] = var_2;
        var_6[var_6.size] = var_3;
        var_6[var_6.size] = var_4;
        var_6[var_6.size] = var_5;
    }
    else if ( isdefined( var_4 ) )
    {
        var_6[var_6.size] = var_0;
        var_6[var_6.size] = var_1;
        var_6[var_6.size] = var_2;
        var_6[var_6.size] = var_3;
        var_6[var_6.size] = var_4;
    }
    else if ( isdefined( var_3 ) )
    {
        var_6[var_6.size] = var_0;
        var_6[var_6.size] = var_1;
        var_6[var_6.size] = var_2;
        var_6[var_6.size] = var_3;
    }
    else if ( isdefined( var_2 ) )
    {
        var_6[var_6.size] = var_0;
        var_6[var_6.size] = var_1;
        var_6[var_6.size] = var_2;
    }
    else if ( isdefined( var_1 ) )
    {
        _ID14421( var_0, var_1 );
        return;
    }
    else
        return;

    for (;;)
    {
        for ( var_7 = 0; var_7 < var_6.size; var_7++ )
        {
            if ( _ID14385( var_6[var_7] ) )
                return;
        }

        level _ID41068( var_0, var_1, var_2, var_3, var_4, var_5 );
    }
}

flag_wait_any_in_array( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( _ID14385( var_2 ) )
            return;
    }

    level _ID53925( var_0 );
}

_ID14417( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];

    if ( isdefined( var_4 ) )
    {
        var_5[var_5.size] = var_0;
        var_5[var_5.size] = var_1;
        var_5[var_5.size] = var_2;
        var_5[var_5.size] = var_3;
        var_5[var_5.size] = var_4;
    }
    else if ( isdefined( var_3 ) )
    {
        var_5[var_5.size] = var_0;
        var_5[var_5.size] = var_1;
        var_5[var_5.size] = var_2;
        var_5[var_5.size] = var_3;
    }
    else if ( isdefined( var_2 ) )
    {
        var_5[var_5.size] = var_0;
        var_5[var_5.size] = var_1;
        var_5[var_5.size] = var_2;
    }
    else if ( isdefined( var_1 ) )
    {
        var_6 = _ID14422( var_0, var_1 );
        return var_6;
    }
    else
        return;

    for (;;)
    {
        for ( var_7 = 0; var_7 < var_5.size; var_7++ )
        {
            if ( _ID14385( var_5[var_7] ) )
                return var_5[var_7];
        }

        var_6 = level _ID41075( var_0, var_1, var_2, var_3, var_4 );
        return var_6;
    }
}

_ID14414( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_0 ) )
        _ID14413( var_0 );

    if ( isdefined( var_1 ) )
        _ID14413( var_1 );

    if ( isdefined( var_2 ) )
        _ID14413( var_2 );

    if ( isdefined( var_3 ) )
        _ID14413( var_3 );
}

_ID14425( var_0, var_1 )
{
    var_2 = var_1 * 1000;
    var_3 = gettime();

    for (;;)
    {
        if ( _ID14385( var_0 ) )
            break;

        if ( gettime() >= var_3 + var_2 )
            break;

        var_4 = var_2 - ( gettime() - var_3 );
        var_5 = var_4 / 1000;
        _ID40867( var_0, var_5 );
    }
}

_ID14430( var_0, var_1 )
{
    var_2 = gettime();

    for (;;)
    {
        if ( !_ID14385( var_0 ) )
            break;

        if ( gettime() >= var_2 + var_1 * 1000 )
            break;

        _ID40867( var_0, var_1 );
    }
}

_ID40867( var_0, var_1 )
{
    level endon( var_0 );
    wait(var_1);
}

_ID10192( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    thread _ID10193( var_1, var_0, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
}

_ID10193( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( _ID20913() )
    {
        self endon( "death" );
        self endon( "stop_delay_call" );
    }

    wait(var_1);

    if ( isdefined( var_10 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    else if ( isdefined( var_9 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 );
    else if ( isdefined( var_8 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
    else if ( isdefined( var_7 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7 );
    else if ( isdefined( var_6 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6 );
    else if ( isdefined( var_5 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4, var_5 );
    else if ( isdefined( var_4 ) )
        self call [[ var_0 ]]( var_2, var_3, var_4 );
    else if ( isdefined( var_3 ) )
        self call [[ var_0 ]]( var_2, var_3 );
    else if ( isdefined( var_2 ) )
        self call [[ var_0 ]]( var_2 );
    else
        self call [[ var_0 ]]();
}

_ID10187( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    thread _ID10188( var_1, var_0, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
}

_ID10188( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    wait(var_1);

    if ( isdefined( var_10 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    else if ( isdefined( var_9 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 );
    else if ( isdefined( var_8 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
    else if ( isdefined( var_7 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6, var_7 );
    else if ( isdefined( var_6 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5, var_6 );
    else if ( isdefined( var_5 ) )
        self [[ var_0 ]]( var_2, var_3, var_4, var_5 );
    else if ( isdefined( var_4 ) )
        self [[ var_0 ]]( var_2, var_3, var_4 );
    else if ( isdefined( var_3 ) )
        self [[ var_0 ]]( var_2, var_3 );
    else if ( isdefined( var_2 ) )
        self [[ var_0 ]]( var_2 );
    else
        self [[ var_0 ]]();
}

_ID24938( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    thread _ID24939( var_1, var_0, var_2, var_3, var_4, var_5 );
}

_ID24939( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    wait(var_1);

    if ( isdefined( var_5 ) )
        call [[ var_0 ]]( var_2, var_3, var_4, var_5 );
    else if ( isdefined( var_4 ) )
        call [[ var_0 ]]( var_2, var_3, var_4 );
    else if ( isdefined( var_3 ) )
        call [[ var_0 ]]( var_2, var_3 );
    else if ( isdefined( var_2 ) )
        call [[ var_0 ]]( var_2 );
    else
        call [[ var_0 ]]();
}

_ID20913()
{
    if ( !isdefined( level._ID20913 ) )
        level._ID20913 = !_ID36698( getdvar( "mapname" ), "mp_" );

    return level._ID20913;
}

_ID20914()
{
    if ( !isdefined( level._ID20914 ) )
        level._ID20914 = _ID36698( getdvar( "mapname" ), "so_td_" );

    return level._ID20914;
}

_ID36698( var_0, var_1 )
{
    if ( var_0.size < var_1.size )
        return 0;

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( tolower( var_0[var_2] ) != tolower( var_1[var_2] ) )
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
        if ( tolower( var_0[var_2] ) == tolower( var_1[var_3] ) )
            var_3++;
        else
        {
            var_3 = 0;

            if ( tolower( var_0[var_2] ) == tolower( var_1[var_3] ) )
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

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_3 ) )
        var_3 = 1;

    if ( !isdefined( var_4 ) )
        var_4 = 0.05;

    for ( var_6 = 1; var_6 < var_0.size; var_6++ )
    {
        thread _ID11707( var_5, var_0[var_6], var_1, var_2, var_3, var_4 );
        var_5 = var_0[var_6];
    }
}

_ID11707( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_6 ) )
        var_6 = 0;

    var_5 = gettime() + var_5 * 1000;

    while ( gettime() < var_5 )
        wait 0.05;
}

_ID37022( var_0, var_1 )
{
    var_2 = [];

    foreach ( var_5, var_4 in var_0 )
        var_2[var_5] = var_4;

    foreach ( var_5, var_4 in var_1 )
        var_2[var_5] = var_4;

    return var_2;
}

_ID3296( var_0, var_1 )
{
    var_2 = [];

    foreach ( var_4 in var_0 )
    {
        if ( isdefined( var_4 ) )
            var_2[var_2.size] = var_4;
    }

    foreach ( var_4 in var_1 )
    {
        if ( isdefined( var_4 ) )
            var_2[var_2.size] = var_4;
    }

    return var_2;
}

array_flatten( var_0 )
{
    return array_flatten_internal( var_0, [] );
}

array_flatten_internal( var_0, var_1 )
{
    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3 ) )
        {
            if ( isarray( var_3 ) )
            {
                var_1 = array_flatten_internal( var_3, var_1 );
                continue;
            }

            var_1[var_1.size] = var_3;
        }
    }

    return var_1;
}

_ID54589( var_0, var_1 )
{
    if ( !var_0.size )
        return var_1;

    var_2 = [];
    var_3 = getarraykeys( var_0 );
    var_3 = _ID3333( var_3 );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = var_3[var_4];
        var_2[var_2.size] = var_0[var_5];
    }

    var_3 = getarraykeys( var_1 );
    var_3 = _ID3333( var_3 );

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

    foreach ( var_5, var_4 in var_0 )
        var_2[var_5] = var_4;

    foreach ( var_5, var_4 in var_1 )
        var_2[var_5] = var_4;

    return var_2;
}

_ID3320( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = randomint( var_0.size );
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
    var_2 = _ID37527( var_0.size, var_0.size, 1 );

    foreach ( var_4 in var_0 )
        var_1 += var_4;

    return var_1 / var_2;
}

_ID3308( var_0 )
{
    var_1 = undefined;

    foreach ( var_3 in var_0 )
    {
        var_1 = var_3;
        break;
    }

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

    foreach ( var_3 in var_0 )
    {
        if ( var_3 == var_1 )
            return 1;
    }

    return 0;
}

_ID3307( var_0, var_1 )
{
    foreach ( var_4, var_3 in var_0 )
    {
        if ( var_3 == var_1 )
            return var_4;
    }

    return undefined;
}

array_find_closest_to_key( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;

    foreach ( var_7, var_5 in var_0 )
    {
        var_6 = abs( var_1 - var_7 );

        if ( !isdefined( var_3 ) || var_6 < var_3 )
        {
            var_2 = var_7;
            var_3 = var_6;
        }
    }

    if ( isdefined( var_2 ) )
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
    var_5 = vectortoangles( var_0 - var_1 );
    var_6 = anglestoright( var_5 );
    var_7 = anglestoforward( var_5 );
    var_8 = anglestoup( var_5 );
    var_9 = distance( var_0, var_1 );
    var_10 = [];
    var_11 = 0.1;
    var_10[0] = var_0;
    var_10[1] = var_0 + var_6 * ( var_9 * var_11 ) + var_7 * ( var_9 * -0.1 );
    var_10[2] = var_1;
    var_10[3] = var_0 + var_6 * ( var_9 * ( -1 * var_11 ) ) + var_7 * ( var_9 * -0.1 );
    var_10[4] = var_0;
    var_10[5] = var_0 + var_8 * ( var_9 * var_11 ) + var_7 * ( var_9 * -0.1 );
    var_10[6] = var_1;
    var_10[7] = var_0 + var_8 * ( var_9 * ( -1 * var_11 ) ) + var_7 * ( var_9 * -0.1 );
    var_10[8] = var_0;
    var_12 = var_2[0];
    var_13 = var_2[1];
    var_14 = var_2[2];
    _ID28148( var_10, var_12, var_13, var_14, var_3 );
}

_ID15808()
{
    var_0 = [];

    if ( isdefined( self._ID31273 ) )
    {
        var_1 = _ID15814();

        foreach ( var_3 in var_1 )
        {
            var_4 = getentarray( var_3, "script_linkname" );

            if ( var_4.size > 0 )
                var_0 = _ID3296( var_0, var_4 );
        }
    }

    return var_0;
}

_ID15813()
{
    var_0 = [];

    if ( isdefined( self._ID31273 ) )
    {
        var_1 = _ID15814();

        foreach ( var_3 in var_1 )
        {
            var_4 = getvehiclenodearray( var_3, "script_linkname" );

            if ( var_4.size > 0 )
                var_0 = _ID3296( var_0, var_4 );
        }
    }

    return var_0;
}

_ID15807()
{
    var_0 = _ID15808();
    return var_0[0];
}

_ID15812()
{
    var_0 = _ID15813();
    return var_0[0];
}

_ID15814()
{
    return strtok( self._ID31273, " " );
}

_ID30398( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = getentarray( var_0, "targetname" );
    _ID3350( var_5, var_1, var_2, var_3, var_4 );
    var_5 = _ID16640( var_0, "targetname" );
    _ID3350( var_5, var_1, var_2, var_3, var_4 );
    var_5 = call [[ level._ID16458 ]]( var_0, "targetname" );
    _ID3350( var_5, var_1, var_2, var_3, var_4 );
    var_5 = getvehiclenodearray( var_0, "targetname" );
    _ID3350( var_5, var_1, var_2, var_3, var_4 );
}

_ID30396( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = getentarray( var_0, "script_noteworthy" );
    _ID3350( var_5, var_1, var_2, var_3, var_4 );
    var_5 = _ID16640( var_0, "script_noteworthy" );
    _ID3350( var_5, var_1, var_2, var_3, var_4 );
    var_5 = call [[ level._ID16458 ]]( var_0, "script_noteworthy" );
    _ID3350( var_5, var_1, var_2, var_3, var_4 );
    var_5 = getvehiclenodearray( var_0, "script_noteworthy" );
    _ID3350( var_5, var_1, var_2, var_3, var_4 );
}

_ID11682( var_0, var_1, var_2 )
{
    level endon( "newpath" );
    var_3 = [];
    var_4 = vectortoangles( var_0 - var_1 );
    var_5 = anglestoright( var_4 );
    var_6 = anglestoforward( var_4 );
    var_7 = distance( var_0, var_1 );
    var_8 = [];
    var_9 = 0.05;
    var_8[0] = var_0;
    var_8[1] = var_0 + var_5 * ( var_7 * var_9 ) + var_6 * ( var_7 * -0.2 );
    var_8[2] = var_1;
    var_8[3] = var_0 + var_5 * ( var_7 * ( -1 * var_9 ) ) + var_6 * ( var_7 * -0.2 );

    for ( var_10 = 0; var_10 < 4; var_10++ )
    {
        var_11 = var_10 + 1;

        if ( var_11 >= 4 )
            var_11 = 0;
    }
}

_ID11703( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_2 ) )
        var_2 = ( 0, 1, 0 );

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_4 ) )
        var_4 = 0.05;

    if ( var_3 )
        var_5 = int( var_4 / 0.05 );
    else
        var_5 = int( var_1 / 0.05 );

    var_6 = [];
    var_7 = [];
    var_8 = gettime();

    for ( var_9 = var_8 + var_1 * 1000; var_8 < var_9 && isdefined( var_0 ); var_8 = gettime() )
    {
        var_6[0] = var_0 getpointinbounds( 1, 1, 1 );
        var_6[1] = var_0 getpointinbounds( 1, 1, -1 );
        var_6[2] = var_0 getpointinbounds( -1, 1, -1 );
        var_6[3] = var_0 getpointinbounds( -1, 1, 1 );
        var_7[0] = var_0 getpointinbounds( 1, -1, 1 );
        var_7[1] = var_0 getpointinbounds( 1, -1, -1 );
        var_7[2] = var_0 getpointinbounds( -1, -1, -1 );
        var_7[3] = var_0 getpointinbounds( -1, -1, 1 );

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
    _ID11703( var_0, var_1, var_2, var_3, var_4 );
}

_ID11727( var_0, var_1, var_2, var_3, var_4 )
{
    _ID11703( var_0, var_1, var_2, var_3, var_4 );
}

_ID53482( var_0, var_1, var_2 )
{
    if ( isdefined( var_1 ) && isdefined( var_2 ) )
    {
        if ( var_1 > var_2 )
            return _ID53482( var_0, var_2, var_1 );
    }

    if ( isdefined( var_1 ) && var_0 < var_1 )
        return var_1;

    if ( isdefined( var_2 ) && var_0 > var_2 )
        return var_2;

    return var_0;
}

_ID16299( var_0 )
{
    return level._ID1426[var_0];
}

_ID15272( var_0 )
{
    return isdefined( level._ID1426[var_0] );
}

_ID28567( var_0, var_1 )
{
    var_2 = var_1 + "," + var_0;

    if ( isdefined( level._ID9386[var_2] ) )
        return;

    level._ID9386[var_2] = 1;
}

_ID14009( var_0 )
{

}

_ID54222( var_0 )
{
    return loadfx( var_0 );
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
    if ( !isdefined( self._ID11021 ) )
        self._ID11021 = 0;

    self._ID11021++;
    self disableusability();
}

_ID1431()
{
    if ( !isdefined( self._ID11021 ) )
        self._ID11021 = 0;
    else if ( self._ID11021 > 0 )
    {
        self._ID11021--;

        if ( self._ID11021 == 0 )
            self enableusability();
    }
}

_ID29801()
{
    self._ID11021 = 0;
    self enableusability();
}

_ID1418()
{
    if ( !isdefined( self._ID11022 ) )
        self._ID11022 = 0;

    self._ID11022++;
    self disableweapons();
}

_ID1432()
{
    if ( !isdefined( self._ID11022 ) )
        self._ID11022 = 0;

    self._ID11022--;

    if ( !self._ID11022 )
        self enableweapons();
}

_ID21002()
{
    return !self._ID11022;
}

_ID1419()
{
    if ( !isdefined( self._ID11023 ) )
        self._ID11023 = 0;

    self._ID11023++;
    self disableweaponswitch();
}

_ID1433()
{
    if ( !isdefined( self._ID11023 ) )
        self._ID11023 = 0;

    self._ID11023--;

    if ( !self._ID11023 )
    {
        if ( isdefined( level._ID18919 ) && level._ID18919 == 1 )
            return;
        else
            self enableweaponswitch();
    }
}

_ID21004()
{
    return !self._ID11023;
}

_ID1416()
{
    if ( !isdefined( self._ID11016 ) )
        self._ID11016 = 0;

    self._ID11016++;
    self disableoffhandweapons();
}

_ID1430()
{
    if ( !isdefined( self._ID11016 ) )
        self._ID11016 = 0;

    self._ID11016--;

    if ( !self._ID11016 )
        self enableoffhandweapons();
}

_ID20838()
{
    return !self._ID11016;
}

_ID1428( var_0, var_1 )
{
    if ( !self hasweapon( var_0 ) )
        return;

    if ( self _meth_84d3( var_0 ) == var_1 )
        return;

    self _meth_84d2( var_0, var_1 );

    if ( var_1 )
        self notify( "WeaponDetonateEnabled",  var_0  );
    else
        self notify( "WeaponDetonateDisabled",  var_0  );
}

_ID28945( var_0 )
{
    var_1 = [];

    foreach ( var_4, var_3 in var_0 )
        var_1[var_1.size] = var_3;

    if ( !var_1.size )
        return undefined;

    return var_1[randomint( var_1.size )];
}

_ID28959( var_0 )
{
    var_1 = [];

    foreach ( var_4, var_3 in var_0 )
        var_1[var_1.size] = var_3;

    if ( !var_1.size )
        return undefined;

    var_5 = randomint( var_1.size * var_1.size );
    return var_1[var_1.size - 1 - int( sqrt( var_5 ) )];
}

_ID35164()
{
    var_0 = spawn( "script_model", ( 0, 0, 0 ) );
    var_0 setmodel( "tag_origin" );
    var_0 hide();

    if ( isdefined( self._ID740 ) )
        var_0._ID740 = self._ID740;

    if ( isdefined( self._ID65 ) )
        var_0._ID65 = self._ID65;

    return var_0;
}

_ID46831( var_0, var_1, var_2 )
{
    var_3 = _ID35164();

    if ( !isdefined( var_1 ) && !isdefined( var_2 ) )
        var_3 linkto( self, var_0 );
    else
    {
        if ( !isdefined( var_1 ) )
            var_1 = ( 0, 0, 0 );

        if ( !isdefined( var_2 ) )
            var_2 = ( 0, 0, 0 );

        var_3 linkto( self, var_0, var_1, var_2 );
    }

    var_3 thread _ID54690( self );
    return var_3;
}

_ID54690( var_0 )
{
    self endon( "death" );
    var_0 waittill( "death" );
    self delete();
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
    _ID14010( "GAMEPRINTSTARTFILE:" );
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
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( var_1 )
        _ID14010( "GAMEPRINTENDFILE:GAMEPRINTP4ENABLED:" + var_0 );
    else
        _ID14010( "GAMEPRINTENDFILE:" + var_0 );

    var_2 = gettime() + 4000;

    while ( getdvarint( "LAUNCHER_PRINT_SUCCESS" ) == 0 && getdvar( "LAUNCHER_PRINT_FAIL" ) == "0" && gettime() < var_2 )
        wait 0.05;

    if ( !( gettime() < var_2 ) )
    {
        iprintlnbold( "LAUNCHER_PRINT_FAIL:( TIMEOUT ): launcherconflict? restart launcher and try again? " );
        level._ID14010 = undefined;
        return 0;
    }

    var_3 = getdvar( "LAUNCHER_PRINT_FAIL" );

    if ( var_3 != "0" )
    {
        iprintlnbold( "LAUNCHER_PRINT_FAIL:( " + var_3 + " ): launcherconflict? restart launcher and try again? " );
        level._ID14010 = undefined;
        return 0;
    }

    level._ID14010 = undefined;
    return 1;
}

_ID22062( var_0 )
{
    level._ID14020 = 0;
    _ID14010( "LAUNCHER_CLIP:" + var_0 );
}

_ID20725()
{
    if ( !isdefined( self ) )
        return 0;

    return isdefined( self._ID279 );
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
    if ( !isdefined( var_0 ) )
        var_0 = self._ID1191;

    var_1 = getent( var_0, "targetname" );

    if ( isdefined( var_1 ) )
        return var_1;

    if ( _ID20913() )
    {
        var_1 = call [[ level._ID16463 ]]( var_0, "targetname" );

        if ( isdefined( var_1 ) )
            return var_1;
    }

    var_1 = _ID16638( var_0, "targetname" );

    if ( isdefined( var_1 ) )
        return var_1;

    var_1 = getvehiclenode( var_0, "targetname" );

    if ( isdefined( var_1 ) )
        return var_1;
}

_ID15862( var_0 )
{
    var_1 = getent( var_0, "script_noteworthy" );

    if ( isdefined( var_1 ) )
        return var_1;

    if ( _ID20913() )
    {
        var_1 = call [[ level._ID16463 ]]( var_0, "script_noteworthy" );

        if ( isdefined( var_1 ) )
            return var_1;
    }

    var_1 = _ID16638( var_0, "script_noteworthy" );

    if ( isdefined( var_1 ) )
        return var_1;

    var_1 = getvehiclenode( var_0, "script_noteworthy" );

    if ( isdefined( var_1 ) )
        return var_1;
}

_ID11200( var_0, var_1 )
{
    var_2 = level._ID12307[var_0];
    earthquake( var_2["magnitude"], var_2["duration"], var_1, var_2["radius"] );
}

_ID27005( var_0, var_1 )
{
    if ( !soundexists( var_0 ) )
        return;

    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );

    if ( !isdefined( var_1 ) )
        var_1 = self._ID740;

    var_2._ID740 = var_1;
    var_2 playloopsound( var_0 );
    return var_2;
}

_ID44467( var_0, var_1, var_2 )
{
    var_3 = _ID27005( var_0, var_1 );

    if ( isdefined( var_2 ) )
        self waittill( var_2 );

    var_3 stopsounds( var_0 );
    var_3 delete();
}

_ID27078( var_0, var_1, var_2, var_3 )
{
    if ( !soundexists( var_0 ) )
        return;

    var_4 = spawn( "script_origin", ( 0, 0, 1 ) );

    if ( !isdefined( var_1 ) )
        var_1 = self._ID740;

    var_4._ID740 = var_1;
    var_4._ID65 = var_2;

    if ( _ID20913() )
    {
        if ( isdefined( var_3 ) && var_3 )
            var_4 playsoundasmaster( var_0, "sounddone" );
        else
            var_4 playsound( var_0, "sounddone" );

        var_4 waittill( "sounddone" );
    }
    else if ( isdefined( var_3 ) && var_3 )
        var_4 playsoundasmaster( var_0 );
    else
        var_4 playsound( var_0 );

    var_4 delete();
}

_ID27077( var_0, var_1, var_2 )
{
    _ID27078( var_0, var_1, ( 0, 0, 0 ), var_2 );
}

_ID22644( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !soundexists( var_0 ) )
        return;

    if ( isdefined( var_3 ) )
        var_2 = undefined;

    if ( isdefined( var_2 ) && var_2 && ( !isdefined( level._ID14353 ) || level._ID14353 == 1 ) )
        spawnloopingsound( var_0, var_1, ( 0, 0, 0 ) );
    else
    {
        var_5 = spawn( "script_origin", ( 0, 0, 0 ) );

        if ( isdefined( var_3 ) )
        {
            thread _ID22650( var_3, var_5 );
            self endon( var_3 );
        }

        var_5._ID740 = var_1;
        var_5 playloopsound( var_0 );
        var_5 willneverchange();
    }
}

_ID22647( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !soundexists( var_0 ) )
        return;

    if ( isdefined( var_3 ) && var_3 )
    {
        if ( !isdefined( level._ID14353 ) || level._ID14353 == 1 )
            spawnloopingsound( var_0, var_1, var_2 );
    }
    else
    {
        if ( isdefined( level._ID9228 ) && level._ID9228 && isdefined( var_5._ID22676 ) )
            var_7 = var_5._ID22676;
        else
            var_7 = spawn( "script_origin", ( 0, 0, 0 ) );

        if ( isdefined( var_4 ) )
        {
            thread _ID22650( var_4, var_7 );
            self endon( var_4 );
        }

        var_7._ID740 = var_1;
        var_7._ID65 = var_2;
        var_7 playloopsound( var_0 );

        if ( isdefined( level._ID9228 ) && level._ID9228 )
            var_5._ID22676 = var_7;
        else
            var_7 willneverchange();
    }
}

_ID22645( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID22646( var_0, var_1, ( 0, 0, 0 ), var_2, var_3, var_4, var_5 );
}

_ID22646( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( isdefined( var_3 ) )
        self endon( var_3 );

    if ( var_5 >= var_6 )
    {
        for (;;)
            wait 0.05;
    }

    if ( !soundexists( var_0 ) )
    {
        for (;;)
            wait 0.05;
    }

    for (;;)
    {
        wait(randomfloatrange( var_5, var_6 ));
        _ID22529( "createfx_looper" );
        thread _ID27078( var_0, var_1, var_2, undefined );
        _ID39496( "createfx_looper" );
    }
}

_ID22650( var_0, var_1 )
{
    var_1 endon( "death" );
    self waittill( var_0 );
    var_1 delete();
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

            if ( stricmp( var_6, var_3 ) > 0 )
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
    return stricmp( var_0, var_1 ) > 0;
}

_ID27000( var_0, var_1, var_2, var_3 )
{
    if ( !soundexists( var_0 ) )
        return;

    var_4 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_4 endon( "death" );
    thread _ID10280( var_4 );

    if ( isdefined( var_1 ) )
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

    if ( isdefined( var_2 ) && var_2 > 0 )
        var_4 setvolume( 0, 0 );

    var_4 playloopsound( var_0 );

    if ( isdefined( var_2 ) && var_2 > 0 )
        var_4 setvolume( 1, var_2 );

    self waittill( "stop sound" + var_0 );

    if ( isdefined( var_3 ) && var_3 > 0 )
    {
        var_4 setvolume( 0, var_3 );
        wait(var_3 + 0.05);
    }

    var_4 stopsounds( var_0 );
    var_4 delete();
}

_ID36516( var_0 )
{
    self notify( "stop sound" + var_0 );
}

_ID10280( var_0 )
{
    var_0 endon( "death" );
    _ID41068( "death", "disconnect" );

    if ( isdefined( var_0 ) )
        var_0 delete();
}

_ID13138( var_0 )
{
    waittillframeend;
}

_ID9137( var_0, var_1 )
{
    setdynamicdvar( var_0, var_1 );
}

_ID40761( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13 )
{

}

_ID37067( var_0, var_1 )
{
    var_2 = self gettagorigin( var_0 );
    var_3 = self gettagangles( var_0 );
    var_4 = anglestoforward( var_3 );
    var_4 = vectornormalize( var_4 ) * var_1;
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
    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( !isdefined( level._ID22529 ) )
        level._ID22529 = [];

    var_2 = spawnstruct();
    var_2._ID23038 = var_1;
    var_2._ID216 = 0;
    level._ID22529[var_0] = var_2;
}

_ID22530( var_0 )
{
    if ( !isdefined( level._ID22529 ) )
        return 0;

    return isdefined( level._ID22529[var_0] );
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
    thread _ID39499( var_0 );
    wait 0.05;
}

_ID39496( var_0 )
{
    thread _ID39499( var_0 );
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

    if ( isdefined( level._ID37503 ) )
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
    return length2dsquared( var_0 - var_1 );
}

_ID15567( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID15566( var_0, var_1, var_2, var_3, var_4, var_5 );
    var_6 = _ID3333( var_6 );
    return var_6;
}

_ID15566( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_3 ) )
        var_3 = var_1.size;

    if ( !isdefined( var_2 ) )
        var_2 = [];

    var_6 = undefined;

    if ( isdefined( var_4 ) )
        var_6 = var_4 * var_4;

    var_7 = 0;

    if ( isdefined( var_5 ) )
        var_7 = var_5 * var_5;

    if ( var_2.size == 0 && var_3 >= var_1.size && var_7 == 0 && !isdefined( var_6 ) )
        return sortbydistance( var_1, var_0 );

    var_8 = [];

    foreach ( var_10 in var_1 )
    {
        var_11 = 0;

        foreach ( var_13 in var_2 )
        {
            if ( var_10 == var_13 )
            {
                var_11 = 1;
                break;
            }
        }

        if ( var_11 )
            continue;

        var_15 = distancesquared( var_0, var_10._ID740 );

        if ( isdefined( var_6 ) && var_15 > var_6 )
            continue;

        if ( var_15 < var_7 )
            continue;

        var_8[var_8.size] = var_10;
    }

    var_8 = sortbydistance( var_8, var_0 );

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
        var_0 = self _meth_835b();

        if ( isdefined( var_0 ) )
            return var_0;
        else
            return 0;
    }

    return 1;
}

_ID12140( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 1500;

    if ( !isdefined( var_2 ) )
        var_2 = -12000;

    return physicstrace( var_0 + ( 0, 0, var_1 ), var_0 + ( 0, 0, var_2 ) );
}

_ID1880( var_0, var_1 )
{
    if ( !isdefined( level._ID10516 ) )
        level._ID10516 = [];

    level._ID10516[var_0] = var_1;
}

_ID1881( var_0, var_1 )
{
    if ( !isdefined( level._ID10552 ) )
        level._ID10552 = [];

    level._ID10552[var_0] = var_1;
}

_ID41802( var_0, var_1, var_2, var_3 )
{
    var_4 = vectornormalize( var_2 - var_0 );
    var_5 = anglestoforward( var_1 );
    var_6 = vectordot( var_5, var_4 );
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
        var_3 = _ID41078( var_0, "path_disconnect" );
        var_4 = 0;
        var_5 = distancesquared( self._ID740, var_2 ) > 0;

        if ( var_5 )
            var_4 = 1;

        if ( isdefined( var_3 ) && var_3 == "path_disconnect" )
            var_4 = 1;

        if ( gettime() < self._ID14782 )
            var_4 = 1;

        foreach ( var_7 in level._ID7313 )
        {
            if ( isai( var_7 ) && distancesquared( self._ID740, var_7._ID740 ) < 250000 )
            {
                var_4 = 1;
                self._ID14782 = max( gettime() + 30000, self._ID14782 );
            }
        }

        if ( var_4 != var_1 || var_5 )
        {
            if ( var_4 )
                self disconnectpaths();
            else
                self connectpaths();

            var_1 = var_4;
        }
    }
}

_ID22822( var_0, var_1 )
{
    if ( level._ID435 == "aliens" && isdefined( level._ID2524 ) )
        return self [[ level._ID2524 ]]( var_0, var_1 );

    if ( isdefined( level._ID5662 ) && isdefined( level._ID5662["bots_make_entity_sentient"] ) )
        return self [[ level._ID5662["bots_make_entity_sentient"] ]]( var_0, var_1 );
}

_ID2232( var_0 )
{
    if ( isdefined( level._ID5662 ) && isdefined( level._ID5662["ai_3d_sighting_model"] ) )
        return self [[ level._ID5662["ai_3d_sighting_model"] ]]( var_0 );
}

_ID32225( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID3055 ) )
        level._ID3055 = [];

    var_3 = tolower( getdvar( "mapname" ) );
    var_4 = 1;

    if ( _ID36698( var_3, "mp_" ) )
        var_4 = 0;

    if ( var_4 )
        level._ID3055[var_0]["basic"] = var_1;
    else
        level._ID3055[var_0]["basic"] = var_2;
}

_ID16182( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 500000;

    var_3 = undefined;

    foreach ( var_5 in var_1 )
    {
        if ( !isdefined( var_5 ) )
            continue;

        var_6 = distance( var_5._ID740, var_0 );

        if ( var_6 >= var_2 )
            continue;

        var_2 = var_6;
        var_3 = var_5;
    }

    return var_3;
}

_ID16276( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 500000;

    var_3 = 0;
    var_4 = undefined;

    foreach ( var_6 in var_1 )
    {
        var_7 = distance( var_6._ID740, var_0 );

        if ( var_7 <= var_3 || var_7 >= var_2 )
            continue;

        var_3 = var_7;
        var_4 = var_6;
    }

    return var_4;
}

_ID23719( var_0, var_1, var_2 )
{
    var_2 = _ID37527( isdefined( var_2 ), var_2, ( 0, 0, 0 ) );
    self missile_settargetent( var_0, var_2 );

    switch ( var_1 )
    {
        case "direct":
            self missile_setflightmodedirect();
            break;
        case "top":
            self missile_setflightmodetop();
            break;
    }
}

_ID13284( var_0 )
{
    return log( var_0 + 6.1e-05 ) / log( 2.0 ) + 2.84;
}

_ID22386( var_0 )
{
    if ( var_0 <= 0.0031308 )
        return var_0 * 12.92;
    else
        return pow( var_0, 0.416667 ) * 1.055 - 0.055;
}

_ID8616( var_0 )
{
    if ( !isdefined( var_0._ID18295 ) )
    {
        if ( _func_242() )
        {
            var_1 = max( var_0._ID29340, max( var_0._ID17371, var_0._ID5320 ) );
            var_2 = _ID13284( var_1 * getculldist() );

            if ( var_1 > 0 )
            {
                var_0._ID29340 = var_0._ID29340 / var_1;
                var_0._ID17371 = var_0._ID17371 / var_1;
                var_0._ID5320 = var_0._ID5320 / var_1;
                var_0._ID29340 = _ID22386( var_0._ID29340 );
                var_0._ID17371 = _ID22386( var_0._ID17371 );
                var_0._ID5320 = _ID22386( var_0._ID5320 );
                var_0._ID18295 = var_2;
            }
            else
                var_0._ID18295 = 0.0;
        }
        else
            var_0._ID18295 = 1.0;
    }

    if ( isdefined( var_0._ID36820 ) && var_0._ID36820 )
    {
        if ( !isdefined( var_0._ID18297 ) )
        {
            if ( _func_242() )
            {
                var_1 = max( var_0._ID29340, var_0._ID17371, var_0._ID5320 );
                var_2 = _ID13284( var_1 * getculldist() );

                if ( var_1 > 0 )
                {
                    var_0._ID36828 = var_0._ID36828 / var_1;
                    var_0._ID36821 = var_0._ID36821 / var_1;
                    var_0._ID36802 = var_0._ID36802 / var_1;
                    var_0._ID36828 = _ID22386( var_0._ID29340 );
                    var_0._ID36821 = _ID22386( var_0._ID17371 );
                    var_0._ID36802 = _ID22386( var_0._ID5320 );
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
    if ( isdefined( level._ID13292 ) )
    {
        switch ( level._ID13292 )
        {
            case "dfog":
                if ( level._ID13292 == "dfog" && var_0._ID36820 == 0 )
                {
                    var_0._ID36820 = 1;
                    var_0._ID36828 = 0;
                    var_0._ID36821 = 0;
                    var_0._ID36802 = 0;
                    var_0._ID18297 = 0;
                    var_0._ID36809 = ( 0, 0, 0 );
                    var_0._ID36800 = 0;
                    var_0._ID36814 = 0;
                    var_0._ID24929 = 1;
                }

                break;
            case "normal_fog":
                if ( var_0._ID36820 == 1 )
                    var_0._ID36820 = 0;

                break;
        }

        endswitch( 3 )  case "normal_fog" loc_3D41 case "dfog" loc_3CD8 default loc_3D58
    }
}

_ID32314( var_0, var_1 )
{
    if ( isdefined( var_0._ID36820 ) && var_0._ID36820 )
    {
        if ( !isplayernumber( self ) )
            setexpfogext( var_0._ID36107, var_0._ID17667, var_0._ID29340, var_0._ID17371, var_0._ID5320, var_0._ID18295, var_0._ID23114, var_1, var_0._ID36828, var_0._ID36821, var_0._ID36802, var_0._ID18297, var_0._ID36809, var_0._ID36800, var_0._ID36812, var_0._ID24929, var_0._ID34256, var_0._ID34258, var_0._ID34257, var_0._ID18338, var_0._ID18337, var_0._ID18339 );
        else
            self playersetexpfogext( var_0._ID36107, var_0._ID17667, var_0._ID29340, var_0._ID17371, var_0._ID5320, var_0._ID18295, var_0._ID23114, var_1, var_0._ID36828, var_0._ID36821, var_0._ID36802, var_0._ID18297, var_0._ID36809, var_0._ID36800, var_0._ID36812, var_0._ID24929, var_0._ID34256, var_0._ID34258, var_0._ID34257, var_0._ID18338, var_0._ID18337, var_0._ID18339 );
    }
    else if ( !isplayernumber( self ) )
        setexpfogext( var_0._ID36107, var_0._ID17667, var_0._ID29340, var_0._ID17371, var_0._ID5320, var_0._ID18295, var_0._ID23114, var_1, var_0._ID34256, var_0._ID34258, var_0._ID34257, var_0._ID18338, var_0._ID18337, var_0._ID18339 );
    else
        self playersetexpfogext( var_0._ID36107, var_0._ID17667, var_0._ID29340, var_0._ID17371, var_0._ID5320, var_0._ID18295, var_0._ID23114, var_1, var_0._ID34256, var_0._ID34258, var_0._ID34257, var_0._ID18338, var_0._ID18337, var_0._ID18339 );
}

_ID32313( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_0._ID34256 ) )
    {
        var_0._ID34256 = 0;
        var_0._ID34258 = 0;
        var_0._ID34257 = 0;
    }

    if ( !isdefined( var_0._ID18338 ) )
    {
        var_0._ID18338 = 0;
        var_0._ID18337 = 0;
        var_0._ID18339 = 1000;
    }

    _ID8616( var_0 );
    _ID8615( var_0 );

    if ( isdefined( var_0._ID3511 ) )
    {
        if ( level._ID688 && var_0._ID3511 )
        {
            if ( isplayernumber( self ) )
                self playersetatmosfog( var_1, var_0._ID3527, var_0._ID3514, var_0._ID3516, var_0._ID3515, var_0._ID3512, var_0._ID3520, var_0._ID48736, var_0._ID53208, var_0._ID51503, var_0._ID47968, var_0._ID3513, var_0._ID3525, var_0._ID3510, int( var_0._ID3522 ), var_0._ID3521, var_0._ID3524, var_0._ID3523, var_0._ID3526, var_0._ID3518, var_0._ID3517, var_0._ID3519 );
            else
                setatmosfog( var_1, var_0._ID3527, var_0._ID3514, var_0._ID3516, var_0._ID3515, var_0._ID3512, var_0._ID3520, var_0._ID48736, var_0._ID53208, var_0._ID51503, var_0._ID47968, var_0._ID3513, var_0._ID3525, var_0._ID3510, int( var_0._ID3522 ), var_0._ID3521, var_0._ID3524, var_0._ID3523, var_0._ID3526, var_0._ID3518, var_0._ID3517, var_0._ID3519 );
        }
        else
            _ID32314( var_0, var_1 );
    }
    else
        _ID32314( var_0, var_1 );
}

_ID1891( var_0, var_1 )
{
    if ( !isdefined( level._ID1426 ) )
        level._ID1426 = [];

    level._ID1426[var_0] = loadfx( var_1 );
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
    if ( !isdefined( var_2 ) )
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
    if ( !isdefined( self._ID25546 ) )
        self._ID25546 = self setcontents( 0 );

    self hide();
}

_ID34034()
{
    if ( !isai( self ) )
        self solid();

    if ( isdefined( self._ID25546 ) )
        self setcontents( self._ID25546 );

    self show();
}

_ID32677( var_0 )
{
    var_1 = getentarray();
    setomnvar( "lighting_state", var_0 );

    if ( !getdvarint( "r_reflectionProbeGenerate" ) )
    {
        foreach ( var_3 in var_1 )
        {
            if ( isdefined( var_3._ID22321 ) && ( var_3._ID170 == "script_brushmodel" || var_3._ID170 == "script_model" ) )
            {
                if ( var_3._ID22321 == 0 )
                    continue;

                if ( var_3._ID22321 == var_0 )
                {
                    var_3 _ID34034();
                    continue;
                }

                var_3 _ID18529();
            }
        }
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
    thread _ID46060( var_0 );
}

_ID46060( var_0 )
{
    if ( !isdefined( self._ID680 ) )
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
    if ( !isdefined( var_4 ) )
    {
        var_4 = ( 0, 0, 0 );
        jump loc_42D5
    }

    var_5 = var_1 _ID46831( var_2, var_3, var_4 );
    var_1 _ID47147( var_0, var_2, var_5 );
    playfxontag( var_0, var_5, "tag_origin" );
}

_ID47147( var_0, var_1, var_2 )
{
    if ( !isdefined( self._ID53520 ) )
        self._ID53520 = [];

    var_1 = tolower( var_1 );

    if ( !isdefined( self._ID53520[var_1] ) )
        self._ID53520[var_1] = [];

    if ( !isdefined( self._ID53520[var_1][var_0] ) )
        self._ID53520[var_1][var_0] = [];

    var_3 = self._ID53520[var_1][var_0].size;
    self._ID53520[var_1][var_0][var_3] = var_2;
}

_ID44034( var_0, var_1, var_2, var_3 )
{
    _ID53319( var_0, var_1, var_2, ::stopfxontag, var_3 );
}

_ID49360( var_0, var_1, var_2, var_3 )
{
    _ID53319( var_0, var_1, var_2, ::killfxontag, var_3 );
}

_ID53319( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_4 ) )
        var_4 = 0;

    var_1 _ID50907( var_0, var_2, var_3 );

    if ( !var_4 )
        call [[ var_3 ]]( var_0, var_1, var_2 );
}

_ID50907( var_0, var_1, var_2 )
{
    if ( !isdefined( self._ID53520 ) )
        return;

    var_1 = tolower( var_1 );

    if ( !isdefined( self._ID53520[var_1] ) )
        return;

    if ( !isdefined( self._ID53520[var_1][var_0] ) )
        return;

    var_3 = self._ID53520[var_1][var_0];

    foreach ( var_5 in var_3 )
        call [[ var_2 ]]( var_0, var_5, "tag_origin" );

    waittillframeend;

    foreach ( var_5 in var_3 )
        var_5 delete();

    self._ID53520[var_1][var_0] = undefined;

    if ( self._ID53520[var_1].size == 0 )
        self._ID53520[var_1] = undefined;
}

_ID44574( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );

    if ( isdefined( var_3 ) )
        self endon( var_3 );

    var_5 = isdefined( var_4 );

    if ( level._ID8534 || !isdefined( var_2 ) )
        self sethintstring( var_1 );
    else
    {
        if ( !isdefined( var_0 ) )
        {
            level waittill( "level.players initialized" );
            var_0 = level._ID794;
        }

        var_6 = !var_0 _ID20583();

        while ( isdefined( self ) )
        {
            if ( var_5 && !isdefined( var_4 ) )
                break;

            if ( var_6 != var_0 _ID20583() )
            {
                var_6 = var_0 _ID20583();

                if ( var_6 )
                    self sethintstring( var_1 );
                else
                    self sethintstring( var_2 );
            }

            wait 0.1;
        }
    }
}

_ID47857( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );

    if ( isdefined( var_3 ) )
        self endon( var_3 );

    var_4 = var_0 _ID20583();
    var_5 = var_1;

    while ( isdefined( self ) )
    {
        var_6 = var_0 _ID20583();

        if ( var_6 != var_4 )
        {
            var_4 = var_6;
            var_5 = _ID37527( var_5 == var_1, var_2, var_1 );
            self settext( var_5 );
        }

        wait 0.1;
    }
}

_ID54738()
{
    var_0 = getdvarint( "loc_language" );
    var_1 = "LANGUAGE_ENGLISH";

    switch ( var_0 )
    {
        case 0:
            var_1 = "LANGUAGE_ENGLISH";
            break;
        case 1:
            var_1 = "LANGUAGE_FRENCH";
            break;
        case 2:
            var_1 = "LANGUAGE_GERMAN";
            break;
        case 3:
            var_1 = "LANGUAGE_ITALIAN";
            break;
        case 4:
            var_1 = "LANGUAGE_SPANISH";
            break;
        case 5:
            var_1 = "LANGUAGE_RUSSIAN";
            break;
        case 6:
            var_1 = "LANGUAGE_POLISH";
            break;
        case 7:
            var_1 = "LANGUAGE_PORTUGUESE";
            break;
        case 8:
            var_1 = "LANGUAGE_JAPANESE_FULL";
            break;
        case 9:
            var_1 = "LANGUAGE_JAPANESE_PARTIAL";
            break;
        case 10:
            var_1 = "LANGUAGE_TRADITIONAL_CHINESE";
            break;
        case 11:
            var_1 = "LANGUAGE_SIMPLIFIED_CHINESE";
            break;
        case 12:
            var_1 = "LANGUAGE_ARABIC";
            break;
        case 13:
            var_1 = "LANGUAGE_CZECH";
            break;
        case 14:
            var_1 = "LANGUAGE_SPANISHNA";
            break;
        case 15:
            var_1 = "LANGUAGE_KOREAN";
            break;
        case 16:
            var_1 = "LANGUAGE_ENGLISH_SAFE";
            break;
    }

    return var_1;
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
    return _ID46275( var_0 / var_1 );
}

_ID44996( var_0, var_1, var_2 )
{
    if ( var_1 > var_2 )
        return _ID44996( var_0, var_2, var_1 );

    var_3 = var_2 - var_1;
    return _ID49621( var_0, var_3 ) - _ID49621( var_1, var_3 );
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
    return _ID46799( _ID46275( var_0 ), var_1 );
}

setaicount( var_0 )
{
    setsaveddvar( "ai_count", var_0 );
}

resetaicount()
{
    setsaveddvar( "ai_count", 32 );
}

setshadowmapon()
{
    setsaveddvar( "sm_scriptAllowed", 1 );
}

setshadowmapoff()
{
    setsaveddvar( "sm_scriptAllowed", 0 );
}
