// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19709()
{
    level._ID18447 = ::_unknown_001B;
    level._ID7524 = ::_unknown_0010;
    level._ID7523 = ::_unknown_0012;
}

_ID7518()
{
    self notify( "mg_off" );
}

_ID7519()
{
    self endon( "death" );
    self endon( "mg_off" );
    var_0 = _func_0BC( 55 );

    while ( self._ID486 > 0 )
    {
        var_1 = _unknown_01A7( 16000, var_0, 1, 1 );

        if ( _func_02F( var_1 ) )
            thread _unknown_023A( var_1 );

        wait 2;
    }
}

_ID18369( var_0 )
{
    var_1 = _func_1A1( var_0._ID31273, "script_linkname" );
    var_2 = !_func_02F( var_1 );

    if ( !_func_02F( var_1 ) )
        var_1 = _ID42237::_ID16638( var_0._ID31273, "script_linkname" );

    var_3 = var_0._ID31186;

    if ( var_2 )
        var_1 = var_1 _ID42237::_ID35164();

    switch ( var_3 )
    {

    }

    if ( var_2 )
    {
        var_1 _meth_80B7();
        return;
        case "hind_rpg":
        case "apache_zippy":
        case "zippy_burst":
        default:
    }
}

_ID16950()
{
    if ( !_func_02F( self._ID1282 ) )
        return;

    var_0 = 0;

    if ( self._ID1282 == "hind" || self._ID1282 == "hind_blackice" || self._ID1282 == "ny_harbor_hind" )
        var_0 = 1;

    if ( self._ID1282 == "cobra" || self._ID1282 == "cobra_player" )
    {
        thread _unknown_0452( "chopperpilot_hellfire", "cobra_Sidewinder" );

        if ( _func_02F( self._ID15076 ) )
            self._ID15076 thread _unknown_0467( "chopperpilot_hellfire", "cobra_Sidewinder" );

        var_0 = 1;
    }

    if ( !var_0 )
        return;

    level thread _unknown_02C6( self );
    level thread _ID42305::_ID13250( self );

    if ( _func_039( "cobrapilot_wingman_enabled" ) == "1" )
    {
        if ( _func_02F( self._ID31528 ) )
        {
            level._ID41794 = self;
            level thread _ID42305::_ID41796( self );
        }
    }
}

_ID14494( var_0 )
{
    var_0 endon( "death" );
    _func_00E( "flare_button", "+frag" );
    _func_00E( "flare_button", "+usereload" );
    _func_00E( "flare_button", "+activate" );

    while ( var_0._ID486 > 0 )
    {
        if ( _func_02F( var_0._ID27777 ) )
            var_0._ID26659 waittill( "flare_button" );
        else
        {
            var_0 waittill( "incomming_missile",  var_1  );

            if ( !_func_02F( var_1 ) )
                continue;

            if ( _func_0B7( 3 ) == 0 )
                continue;

            wait(_func_0BA( 0.5, 1.0 ));
        }

        thread _unknown_03A2( var_0 );
        wait 3.0;
    }
}

_ID14490( var_0, var_1, var_2, var_3 )
{
    var_4 = 1;

    for ( var_5 = 0; var_5 < var_1; var_5++ )
    {
        _func_156( level._ID14484[var_0._ID1282], var_0 _meth_818C( "tag_flare" ) );

        if ( _func_02F( var_0._ID27777 ) )
        {
            level._ID36218["flares_used"]++;
            var_0 notify( "dropping_flares" );

            if ( var_4 )
                var_0 _meth_80A1( "cobra_flare_fire" );

            var_4 = !var_4;
        }

        if ( var_5 <= var_2 - 1 )
            thread _unknown_040F( var_0, var_3 );

        wait 0.1;
    }
}

_ID14489( var_0 )
{
    var_0 endon( "death" );
    var_1 = 5.0;

    if ( _func_02F( var_0._ID14483 ) )
        var_1 = var_0._ID14483;

    _unknown_040A( var_0, 8, 1, var_1 );
}

_ID9168()
{
    if ( _func_02F( self._ID23735 ) )
        _func_1AD( self._ID23735 );

    self._ID23735 = _func_1A9( self._ID7192, 10000, 10000 );
}

_ID14493( var_0, var_1 )
{
    var_0 notify( "flares_out" );
    var_0 endon( "death" );
    var_0 endon( "flares_out" );

    if ( !_func_02F( var_1 ) )
        var_1 = 5.0;

    var_2 = _unknown_04BD( var_0 );
    var_3 = _func_06A( "script_origin", var_0 _meth_818C( "tag_flare" ) );
    var_3 _meth_82BC( var_2, var_1 );
    var_4 = undefined;

    if ( _func_02F( var_0._ID27777 ) )
    {
        if ( _func_02F( var_0._ID23735 ) )
            _func_1AD( var_0._ID23735 );

        var_4 = _func_1A9( var_3, 10000, 10000 );
    }

    if ( _func_02F( var_0._ID19504 ) )
    {
        for ( var_5 = 0; var_5 < var_0._ID19504.size; var_5++ )
            var_0._ID19504[var_5] _meth_81E5( var_3 );
    }

    wait(var_1);

    if ( _func_02F( var_0._ID27777 ) )
    {
        if ( _func_02F( var_4 ) )
            _func_1AD( var_4 );

        var_0 thread _unknown_04E0();
    }

    if ( !_func_02F( var_0._ID31472 ) )
        var_0._ID31472 = 0;

    var_6 = ( 0, 0, var_0._ID31472 );

    if ( !_func_02F( var_0._ID19504 ) )
        return;

    for ( var_5 = 0; var_5 < var_0._ID19504.size; var_5++ )
        var_0._ID19504[var_5] _meth_81E5( var_0, var_6 );
}

_ID14491( var_0 )
{
    var_1 = var_0._ID740;
    wait 0.05;
    var_2 = var_0._ID740 - var_1;
    return var_2 * 20;
}

_ID23698( var_0, var_1 )
{
    var_1 endon( "death" );
    var_0 waittill( "death" );

    if ( !_func_02F( var_1._ID19504 ) )
        return;

    var_1._ID19504 = _ID42237::_ID3321( var_1._ID19504, var_0 );
}

_ID16258( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( !_func_02F( var_4 ) )
        var_4 = 1;

    if ( !_func_02F( var_5 ) )
        var_5 = 0;

    var_7 = [];
    var_8 = undefined;
    var_9 = _ID42237::_ID15698( self._ID31474 );
    var_10 = [];

    if ( var_4 )
    {
        for ( var_11 = 0; var_11 < level._ID40317[var_9].size; var_11++ )
            var_10[var_10.size] = level._ID40317[var_9][var_11];
    }

    if ( var_2 )
    {
        var_12 = _func_0DE( var_9 );

        for ( var_11 = 0; var_11 < var_12.size; var_11++ )
        {
            if ( _func_02F( var_12[var_11]._ID19381 ) )
                continue;

            var_10[var_10.size] = var_12[var_11];
        }

        if ( var_9 == "allies" )
        {
            for ( var_11 = 0; var_11 < level._ID805.size; var_11++ )
                var_10[var_10.size] = level._ID805[var_11];
        }
    }

    if ( _func_02F( var_6 ) )
        var_10 = _ID42407::_ID3306( var_10, var_6 );

    if ( var_5 )
        var_10 = _ID42237::_ID3320( var_10 );

    var_13 = _func_11F( self._ID65 );

    for ( var_11 = 0; var_11 < var_10.size; var_11++ )
    {
        if ( _func_0D6( var_10[var_11] ) && _func_0D6( self ) && self _meth_8184() != "" )
        {
            var_14 = _func_10E( var_10[var_11] _meth_8184(), self _meth_8184() );

            if ( var_14 <= -1000000 )
                continue;
        }

        if ( _func_02F( var_0 ) && var_0 > 0 )
        {
            if ( _func_0F3( self._ID740, var_10[var_11]._ID740 ) > var_0 )
                continue;
        }

        if ( _func_02F( var_1 ) )
        {
            var_15 = _func_119( var_10[var_11]._ID740 - self._ID740 );
            var_16 = _func_0FB( var_13, var_15 );

            if ( var_16 <= var_1 )
                continue;
        }

        if ( var_3 )
        {
            var_17 = 0;

            if ( _func_0D4( var_10[var_11] ) )
                var_18 = 48;
            else
                var_18 = 150;

            var_17 = _func_090( self._ID740, var_10[var_11]._ID740 + ( 0, 0, var_18 ), 0, self );

            if ( !var_17 )
                continue;
        }

        var_7[var_7.size] = var_10[var_11];
    }

    if ( var_7.size == 0 )
    {
        self notify( "gunner_new_target",  var_8  );
        return var_8;
    }

    if ( var_7.size == 1 )
    {
        self notify( "gunner_new_target",  var_7[0]  );
        return var_7[0];
    }

    var_19 = _ID42237::_ID16182( self._ID740, var_7 );
    self notify( "gunner_new_target",  var_19  );
    return var_19;
}

_ID33779( var_0 )
{
    self endon( "death" );
    self endon( "mg_off" );
    var_0 endon( "death" );
    self endon( "gunner_new_target" );

    if ( _func_02F( self._ID27777 ) )
        self endon( "gunner_stop_firing" );

    var_1 = ( 0, 0, 0 );

    if ( _func_02F( var_0._ID31472 ) )
        var_1 += ( 0, 0, var_0._ID31472 );
    else if ( _func_0D6( var_0 ) )
        var_1 = ( 0, 0, 32 );

    self _meth_826C( var_0, var_1 );

    while ( self._ID486 > 0 )
    {
        var_2 = _func_0B9( 1, 25 );

        if ( _func_039( "cobrapilot_debug" ) == "1" )
            _func_19E( "randomShots = " + var_2 );

        for ( var_3 = 0; var_3 < var_2; var_3++ )
        {
            if ( _func_02F( self._ID27777 ) )
            {
                if ( _func_02F( level._ID8194 ) && level._ID8194.size > 0 )
                    self _meth_8271( level._ID17531 );
            }

            thread _unknown_08E0( self, "tag_turret", var_0, var_1, ( 1, 1, 0 ), 0.05 );
            self _meth_8272( "tag_flash" );

            if ( _func_02F( self._ID27777 ) )
                self _meth_8271( level._ID8194[self._ID26659._ID9520]._ID40005["weapon"] );

            wait 0.05;
        }

        wait(_func_0BA( 0.25, 2.5 ));
    }
}

_ID33780( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( _func_039( "cobrapilot_debug" ) != "1" )
        return;

    if ( !_func_02F( var_4 ) )
        var_4 = ( 0, 0, 0 );

    var_2 endon( "death" );
    self endon( "gunner_new_target" );

    if ( !_func_02F( var_3 ) )
        var_3 = ( 0, 0, 0 );

    if ( _func_02F( var_5 ) )
    {
        var_5 = _func_03D() + var_5 * 1000;

        while ( _func_03D() < var_5 )
            wait 0.05;
    }
    else
    {
        for (;;)
            wait 0.05;
    }
}

_ID3594( var_0, var_1, var_2, var_3 )
{
    self._ID18207 = 1;
    var_4 = [];
    var_4[0] = var_0;

    if ( _func_02F( var_1 ) )
        var_4[1] = var_1;

    if ( _func_02F( var_2 ) )
        var_4[2] = var_2;

    if ( _func_02F( var_3 ) )
        var_4[3] = var_3;

    for ( var_5 = 0; var_5 < var_4.size; var_5++ )
    {
        for ( var_6 = 0; var_6 < level._ID8192[var_4[var_5]].size; var_6++ )
            self _meth_801D( level._ID8191[var_4[var_5]], level._ID8192[var_4[var_5]][var_6] );
    }
}

_ID14269( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    var_5 = undefined;
    var_6 = undefined;
    var_7 = "cobra_20mm";
    var_8 = [];

    switch ( var_0 )
    {

    }

    var_6 = _func_1B6( var_5 );

    if ( _func_02F( self._ID24792 ) )
        var_9 = self._ID24792;
    else
        var_9 = -1;

    for ( var_10 = 0; var_10 < var_1; var_10++ )
    {
        var_9++;
        var_9 %= var_8.size;

        if ( var_0 == "ffar_mi28_village_assault" )
        {
            if ( _func_02F( var_2 ) && _func_02F( var_2._ID740 ) )
            {
                var_11 = self _meth_818C( var_8[var_9] );
                var_12 = _func_119( var_2._ID740 - var_11 );
                var_12 *= 50;
                _func_1C8( var_5, var_11 + var_12, var_2._ID740 );

                if ( _func_02F( level._ID1426["ffar_mi28_muzzleflash"] ) )
                    _func_157( _ID42237::_ID16299( "ffar_mi28_muzzleflash" ), self, var_8[var_9] );

                thread _unknown_0E95( 0.1, 0.5, 0.2, var_2._ID740, 1600 );
            }
        }
        else
        {
            self _meth_8271( var_5 );

            if ( _func_02F( var_2 ) )
            {
                var_13 = self _meth_8272( var_8[var_9], var_2 );
                _ID42463::_ID10405( "missile_fired", var_13 );

                switch ( var_0 )
                {

                }
            }
            else
                var_13 = self _meth_8272( var_8[var_9] );

            self notify( "missile_fired",  var_13  );
        }

        self._ID24792 = var_9;

        if ( var_10 < var_1 - 1 )
            wait(var_6);

        if ( _func_02F( var_3 ) )
        {
            wait(var_3);
            case "apache_zippy_wall":
            case "mi28_zippy_cheap":
            case "mi28_zippy":
            case "apache_zippy_nd":
            case "ffar_airlift_map_overwrite":
            case "ffar_airlift":
            case "ffar_bog_a_lite":
            case "ffar":
            case "apache_zippy":
            default:
        }
    }

    self _meth_8271( var_7 );
    case "ffar_co_rescue":
    case "ffar_mi28_village_assault":
    case "ffar_hind_nodamage":
    case "hind_rpg_cheap":
    case "ffar_hind":
    case "cobra_turret":
    case "mi28_zippy_cheap":
    case "mi28_zippy":
    case "apache_zippy_nd":
    case "cobra_zippy":
    case "ffar_airlift_nofx":
    case "ffar_airlift_map_overwrite":
    case "ffar":
    case "seeker":
    case "ffar_bog_a_lite":
    case "ffar_airlift":
    case "mi28_seeker":
    case "f15_missile":
    case "hind_rpg":
    case "apache_zippy":
    case "hind_zippy":
    default:
}

_ID10204( var_0, var_1, var_2, var_3, var_4 )
{
    wait(var_0);
    _func_192( var_1, var_2, var_3, var_4 );
}

_ID23745( var_0 )
{
    self endon( "death" );
    wait(var_0);

    if ( _func_02F( self ) )
        self _meth_81E7();
}
