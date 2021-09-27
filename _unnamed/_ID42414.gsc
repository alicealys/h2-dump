// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19829( var_0 )
{
    _ID42237::_ID9137( "vehicle_free_path_debug", 0 );
    _unknown_005E( 1 );
    _unknown_0023();
    level._ID12875 = [];
    level._ID11775 = ::_unknown_0482;
    level._ID40137 = _unknown_010F( var_0 );
    _ID42237::_ID30398( "enable_free_path", ::_unknown_006D );
}

_ID32946()
{
    if ( !_func_02F( level._ID14880 ) )
        level._ID14880 = -4000;

    if ( !_func_02F( level._ID14878 ) )
        level._ID14878 = -2000;

    if ( !_func_02F( level._ID14877 ) )
        level._ID14877 = 100;

    if ( !_func_02F( level._ID14884 ) )
        level._ID14884 = 650;

    if ( !_func_02F( level._ID14883 ) )
        level._ID14883 = 2000;

    if ( !_func_02F( level._ID14879 ) )
        level._ID14879 = 4000;

    if ( !_func_02F( level._ID14881 ) )
        level._ID14881 = 1.0;

    if ( !_func_02F( level._ID14882 ) )
        level._ID14882 = 0.6;

    if ( !_func_02F( level._ID14876 ) )
        level._ID14876 = 1.6;

    if ( !_func_02F( level._ID14885 ) )
        level._ID14885 = 200;

    if ( !_func_02F( level._ID14886 ) )
        level._ID14886 = 200;

    if ( !_func_02F( level._ID14888 ) )
        level._ID14888 = 25.0;

    if ( !_func_02F( level._ID14875 ) )
        level._ID14875 = 200;

    if ( !_func_02F( level._ID14887 ) )
        level._ID14887 = 0.9;
}

_ID12487()
{
    level endon( "stop_vehicle_free_path" );

    for (;;)
    {
        self waittill( "trigger",  var_0  );
        var_0 notify( "enable_free_path" );
    }
}

_ID7772( var_0 )
{
    level notify( "stop_vehicle_free_path" );
    level._ID40137 = undefined;
    level._ID24484 = undefined;

    if ( var_0 && _func_02F( level._ID12875 ) )
    {
        var_1 = level._ID12875;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( !_func_2A5( var_2 ) )
                var_2 _meth_80B7();
        }

        var_clear_2
        var_clear_0
    }

    level._ID12875 = undefined;

    if ( _func_02F( level._ID794._ID11803 ) && _func_02F( level._ID794._ID11803._ID28679 ) )
        level._ID794._ID11803._ID28679 = undefined;
}

_ID35193( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( !_func_02F( level._ID12875 ) )
        level._ID12875 = [];

    if ( level._ID12875.size >= 8 )
        return undefined;

    if ( var_2 && var_3 )
    {
        var_4 = _func_1A2( self._ID1191, "targetname" );
        var_5 = [];
        var_6 = var_4;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];

            if ( var_7._ID172 == "info_vehicle_node" )
                continue;

            var_5[var_5.size] = var_7;
        }

        var_clear_2
        var_clear_0
        var_5 = _ID42237::_ID15566( self._ID740, var_5 );
        var_9 = var_5;

        for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
        {
            var_10 = var_9[var_11];
            var_10 thread _ID42407::_ID1947( ::_unknown_02C8, self, var_11 );
        }

        var_clear_2
        var_12 = _ID42407::_ID35192();
        var_12 waittill( "guy_entered" );
        wait 3;

        if ( !self._ID29965.size )
            return undefined;
    }
    else
        var_12 = _ID42407::_ID35192();

    var_12._ID11584 = 1;
    var_12._ID18174 = var_2;
    var_12 thread _ID42413::_ID40083();

    if ( _func_02F( var_0 ) )
        var_12 _meth_823E( var_0 );

    if ( var_1 )
    {
        wait 0.15;
        var_12 _unknown_02F2( 1, var_0 );
    }
    else
    {
        var_12 thread _unknown_02FC( 0, var_0 );
        var_12 thread _ID42413::_ID1481( var_12 );
    }

    return var_12;
}

_ID22121( var_0, var_1 )
{
    self endon( "death" );
    self endon( "script_crash_vehicle" );

    if ( !var_0 )
    {
        level endon( "stop_vehicle_free_path" );
        _ID42237::_ID41098( "enable_free_path", "reached_end_node" );
    }

    var_2 = _unknown_0342( self._ID740 );

    if ( _func_02F( level._ID11775 ) )
        var_2 thread [[ level._ID11775 ]]( self, var_1 );

    thread _unknown_08CC();
}

_ID15843( var_0 )
{
    var_0 = ( var_0[0], var_0[1], 0 );
    var_1 = _ID42237::_ID15566( var_0, level._ID40137, undefined, 3 );
    var_2 = var_1[0];
    var_3 = var_2._ID517;

    if ( var_1[1]._ID517 < var_3 )
    {
        var_2 = var_1[1];
        var_3 = var_2._ID517;
    }

    if ( var_1[2]._ID517 < var_3 )
        var_2 = var_1[2];

    return var_2;
}

_ID17587( var_0, var_1 )
{
    _ID42413::_ID1535( var_0, var_1 );
}

_ID33041( var_0 )
{
    var_1 = _unknown_03C6( var_0 );
    _unknown_0457( var_1 );
    return var_1;
}

_ID9172( var_0 )
{
    var_1 = _ID42237::_ID16638( var_0, "targetname" );
    var_2 = [];
    var_3 = 0;
    var_4 = var_1;

    for (;;)
    {
        var_5 = var_1;

        if ( _func_02F( var_1._ID1191 ) )
            var_5 = _ID42237::_ID16638( var_1._ID1191, "targetname" );

        var_1._ID740 = _unknown_0AAB( var_1._ID740 );
        var_2[var_2.size] = var_1;
        var_1._ID24768 = var_5;
        var_1._ID28484 = var_4;
        var_1._ID8211 = [];
        var_1._ID8214 = [];
        var_1._ID8212 = [];
        var_1._ID26027 = [];
        var_1._ID26027["left"] = var_1._ID740;
        var_6 = _ID42237::_ID16638( var_1._ID31273, "script_linkname" );
        var_6._ID740 = _unknown_0AF3( var_6._ID740 );
        var_1._ID26027["right"] = var_6._ID740;
        var_1._ID30057 = _func_0F3( var_1._ID26027["right"], var_1._ID26027["left"] );
        var_1._ID23570 = var_1._ID26027["left"] + var_1._ID26027["right"] * 0.5;
        var_1._ID517 = var_3;
        var_3++;

        if ( var_1 == var_5 )
            break;

        var_4 = var_1;
        var_1 = var_5;
    }

    var_7 = var_2;

    for ( var_14 = _func_1DA( var_7 ); _func_02F( var_14 ); var_14 = _func_1BF( var_7, var_14 ) )
    {
        var_8 = var_7[var_14];

        if ( var_8._ID24768 == var_8 )
            continue;

        var_9 = var_8._ID23570;
        var_10 = var_8._ID24768._ID23570;
        var_11 = _func_11A( var_9 - var_10 );
        var_12 = _func_11E( var_11 );
        var_13 = var_8._ID30057 * 0.5;
        var_8._ID26027["left"] = var_8._ID23570 + var_12 * var_13;
        var_8._ID26027["left_warning"] = var_8._ID23570 + var_12 * var_13 * level._ID14887;
        var_8._ID26027["right"] = var_8._ID23570 + var_12 * var_13 * -1;
        var_8._ID26027["right_warning"] = var_8._ID23570 + var_12 * var_13 * -1 * level._ID14887;
    }

    var_clear_7
    var_clear_0
    var_15 = var_2;

    for ( var_16 = _func_1DA( var_15 ); _func_02F( var_16 ); var_16 = _func_1BF( var_15, var_16 ) )
    {
        var_8 = var_15[var_16];
        var_8._ID11123 = _func_0F3( var_8._ID23570, var_8._ID24768._ID23570 );
    }

    var_clear_1
    var_clear_0
    return var_2;
}

_ID1862( var_0 )
{
    var_1 = _ID42237::_ID16640( "road_path_col", "targetname" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
        var_3._ID740 = _unknown_0C4B( var_3._ID740 );
        var_4._ID740 = _unknown_0C57( var_4._ID740 );
        var_3._ID26035 = var_4;
        var_4._ID26035 = var_3;
    }

    var_clear_3
    var_clear_0
    var_6 = var_0;

    for ( var_10 = _func_1DA( var_6 ); _func_02F( var_10 ); var_10 = _func_1BF( var_6, var_10 ) )
    {
        var_7 = var_6[var_10];
        var_8 = var_1;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_3 = var_8[var_9];

            if ( !_func_02F( var_3._ID22378 ) )
                _unknown_06BB( var_7, var_3 );
        }

        var_clear_2
        var_clear_1
    }

    var_clear_4
    var_clear_0
}

_ID1863( var_0, var_1 )
{
    if ( var_0 == var_0._ID24768 )
        return;

    if ( !_unknown_0719( var_0, var_1 ) )
        return;

    var_2 = var_1._ID26035;
    var_3 = _unknown_0C3F( var_1._ID740, var_0._ID23570, var_0._ID24768._ID23570 );
    var_4 = _unknown_0C52( var_2._ID740, var_0._ID23570, var_0._ID24768._ID23570 );
    var_1._ID28675 = var_3["progress"];
    var_1._ID25468 = var_3["offset"];
    var_2._ID28675 = var_4["progress"];
    var_2._ID25468 = var_4["offset"];

    if ( var_3["progress"] < var_4["progress"] )
    {
        _unknown_07C0( var_0, var_1, var_2 );
        var_0._ID8211[var_0._ID8211.size] = var_1;
        var_1._ID22378 = 1;
    }
    else
    {
        _unknown_07D8( var_0, var_2, var_1 );
        var_0._ID8211[var_0._ID8211.size] = var_2;
        var_1._ID22378 = 1;
    }
}

_ID37544( var_0, var_1 )
{
    var_2[0] = var_0._ID26027["left"];
    var_2[1] = var_0._ID26027["right"];
    var_2[2] = var_0._ID24768._ID26027["right"];
    var_2[3] = var_0._ID24768._ID26027["left"];
    var_3[0] = var_1._ID740;
    var_3[1] = var_1._ID26035._ID740;

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = 0;
        var_6 = 0;

        for ( var_7 = var_2.size - 1; var_6 < var_2.size; var_6++ )
        {
            if ( var_2[var_6][1] > var_3[var_4][1] != var_2[var_7][1] > var_3[var_4][1] && var_3[var_4][0] < var_2[var_7][0] - var_2[var_6][0] * var_3[var_4][1] - var_2[var_6][1] / var_2[var_7][1] - var_2[var_6][1] + var_2[var_6][0] )
                var_5 = !var_5;

            var_7 = var_6;
        }

        if ( var_5 )
            return 1;
    }

    return 0;
}

_ID1861( var_0, var_1, var_2 )
{
    var_3 = var_2._ID28675 + 200;
    var_4 = var_1._ID28675 - level._ID14875;
    var_5 = undefined;
    var_6 = undefined;

    if ( var_2._ID25468 > var_1._ID25468 )
    {
        var_5 = var_2._ID25468;
        var_6 = var_1._ID25468;
    }
    else
    {
        var_5 = var_1._ID25468;
        var_6 = var_2._ID25468;
    }

    var_7 = var_0;
    var_8 = var_3;
    var_9 = var_4;
    var_10 = var_5;
    var_11 = var_6;

    for (;;)
    {
        var_12 = _unknown_0DEE( var_0, var_5 );
        var_13 = _unknown_0DF6( var_0, var_6 );
        var_14 = _func_0E6( var_12, var_13 );
        var_15 = _func_0C4( var_3, var_14 );
        _unknown_099D( var_0, var_15, var_4, var_5, var_6 );

        if ( !_func_02F( var_0._ID24768 ) || var_0 == var_0._ID24768 )
            break;

        var_3 -= var_14;
        var_4 = 0;

        if ( var_3 <= 0 )
            break;

        var_16 = _unknown_0EA7( var_0, var_12, var_5 );
        var_17 = _unknown_0EB0( var_0, var_13, var_6 );
        var_0 = var_0._ID24768;
        var_18 = _unknown_0E3A( var_16, var_0._ID23570, var_0._ID24768._ID23570 );
        var_5 = var_18["offset"];
        var_19 = _unknown_0E51( var_17, var_0._ID23570, var_0._ID24768._ID23570 );
        var_6 = var_19["offset"];
    }

    var_0 = var_7;
    var_3 = var_8;
    var_4 = var_9;
    var_5 = var_10;
    var_6 = var_11;

    for (;;)
    {
        if ( !_func_02F( var_0._ID28484 ) || var_0 == var_0._ID28484 )
            break;

        if ( var_4 > 0 )
            break;

        var_16 = _unknown_0F1C( var_0, 0, var_5 );
        var_17 = _unknown_0F25( var_0, 0, var_6 );
        var_0 = var_0._ID28484;
        var_18 = _unknown_0EAF( var_16, var_0._ID23570, var_0._ID24768._ID23570 );
        var_5 = var_18["offset"];
        var_19 = _unknown_0EC6( var_17, var_0._ID23570, var_0._ID24768._ID23570 );
        var_6 = var_19["offset"];
        var_3 = _func_0E6( var_18["progress"], var_19["progress"] );
        var_4 += var_3;
        _unknown_0A9E( var_0, var_3, var_4, var_5, var_6 );
    }
}

_ID1983( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _func_1A5();
    var_5._ID8286 = [];
    var_5._ID8286["max"] = var_1;
    var_5._ID8286["min"] = var_2;

    if ( var_5._ID8286["min"] < 0 )
        var_5._ID8286["min"] = 0;

    if ( _func_02F( var_0._ID24768 ) && var_0 != var_0._ID24768 )
    {

    }

    var_5._ID8286["left_offset"] = var_4;
    var_5._ID8286["right_offset"] = var_3;
    var_5._ID8286["mid_offset"] = var_3 + var_4 * 0.5;
    var_0._ID8214[var_0._ID8214.size] = var_5;
}

_ID1913( var_0, var_1 )
{
    var_2 = _func_1A5();
    var_2._ID13016 = self;
    var_2._ID5978 = var_0;

    if ( _func_02F( var_1 ) && var_1 == 1 )
        var_2 thread _unknown_0B72();

    var_2 thread _unknown_0B84();
}

_ID29552()
{
    level endon( "stop_vehicle_free_path" );
    self._ID13016 endon( "moving_obstacle_removed" );
    self._ID13016 waittill( "death" );
    _unknown_0B99();
}

_ID29551()
{
    _unknown_0CD4();
    self._ID13016 notify( "moving_obstacle_removed" );
}

_ID39631()
{
    level endon( "stop_vehicle_free_path" );
    self._ID13016 endon( "moving_obstacle_removed" );
    self._ID13016 endon( "death" );
    self._ID700 = self._ID13016 _unknown_09B5( self._ID13016._ID740 );
    var_0 = self._ID13016 _unknown_0FF1( self._ID13016._ID740, self._ID700._ID23570, self._ID700._ID24768._ID23570 );
    var_1 = self._ID13016 _unknown_10D2( self._ID700, var_0["progress"], var_0["offset"] );
    self._ID700 = var_1._ID700;

    for (;;)
    {
        var_0 = self._ID13016 _unknown_1026( self._ID13016._ID740, self._ID700._ID23570, self._ID700._ID24768._ID23570 );
        var_1 = self._ID13016 _unknown_1106( self._ID700, var_0["progress"], var_0["offset"] );

        if ( self._ID700 != var_1._ID700 )
            self._ID700 = var_1._ID700;

        _unknown_0C75();
        wait 0.1;
    }
}

_ID39630()
{
    var_0 = _func_11F( self._ID13016._ID65 );
    var_1 = _func_11E( self._ID13016._ID65 );
    self._ID8749 = [];
    self._ID8749[0] = _unknown_1130( self._ID13016._ID740 + -1 * self._ID5978["width"] / 2 * var_1 + self._ID5978["length"] / 2 * var_0 );
    self._ID8749[1] = _unknown_1154( self._ID13016._ID740 + self._ID5978["width"] / 2 * var_1 + self._ID5978["length"] / 2 * var_0 );
    self._ID8749[2] = _unknown_117D( self._ID13016._ID740 + -1 * self._ID5978["width"] / 2 * var_1 + -1 * self._ID5978["length"] / 2 * var_0 );
    self._ID8749[3] = _unknown_11A4( self._ID13016._ID740 + self._ID5978["width"] / 2 * var_1 + -1 * self._ID5978["length"] / 2 * var_0 );
    var_2 = [];
    var_2[0] = _unknown_111D( self._ID8749[0], self._ID700._ID23570, self._ID700._ID24768._ID23570 );
    var_2[1] = _unknown_1135( self._ID8749[1], self._ID700._ID23570, self._ID700._ID24768._ID23570 );
    var_2[2] = _unknown_114E( self._ID8749[2], self._ID700._ID23570, self._ID700._ID24768._ID23570 );
    var_2[3] = _unknown_1167( self._ID8749[3], self._ID700._ID23570, self._ID700._ID24768._ID23570 );
    var_3 = var_2[0]["offset"];
    var_4 = var_3;
    var_5 = var_2[0]["progress"];
    var_6 = var_5;

    for ( var_7 = 1; var_7 < var_2.size; var_7++ )
    {
        if ( var_2[var_7]["offset"] < var_3 )
            var_3 = var_2[var_7]["offset"];

        if ( var_2[var_7]["offset"] > var_4 )
            var_4 = var_2[var_7]["offset"];

        if ( var_2[var_7]["progress"] < var_5 )
            var_5 = var_2[var_7]["progress"];

        if ( var_2[var_7]["progress"] > var_6 )
            var_6 = var_2[var_7]["progress"];
    }

    var_6 += 200;
    var_5 -= 200;
    _unknown_0F08();
    _unknown_0E9A( var_6, var_5, var_4, var_3 );
}

_ID29412( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0;
    var_5 = var_1;
    var_6 = var_2;
    var_7 = var_3;
    var_8 = self._ID700;
    var_9 = var_8;

    for (;;)
    {
        var_10 = _unknown_1237( var_9, var_2 );
        var_11 = _unknown_123F( var_9, var_3 );
        var_12 = _func_0E6( _func_0E6( var_10, var_11 ), 0 );
        var_13 = _func_0C4( var_0, var_12 );

        if ( var_13 <= 0 )
            break;

        _unknown_0F82( var_9, var_13, var_1, var_2, var_3 );

        if ( !_func_02F( var_9._ID24768 ) || var_9 == var_9._ID24768 )
            break;

        var_0 -= var_12;
        var_1 = 0;

        if ( var_0 <= 0 )
            break;

        var_14 = _unknown_12FB( var_9, var_10, var_2 );
        var_15 = _unknown_1305( var_9, var_11, var_3 );
        var_9 = var_9._ID24768;
        var_16 = _unknown_128E( var_14, var_9._ID23570, var_9._ID24768._ID23570 );
        var_2 = var_16["offset"];
        var_17 = _unknown_12A6( var_15, var_9._ID23570, var_9._ID24768._ID23570 );
        var_3 = var_17["offset"];
    }

    var_9 = var_8;
    var_0 = var_4;
    var_1 = var_5;
    var_2 = var_6;
    var_3 = var_7;

    for (;;)
    {
        if ( !_func_02F( var_9._ID28484 ) || var_9 == var_9._ID28484 )
            break;

        if ( var_1 > 0 )
            break;

        var_14 = _unknown_1371( var_9, 0, var_2 );
        var_15 = _unknown_137A( var_9, 0, var_3 );
        var_9 = var_9._ID28484;
        var_16 = _unknown_1303( var_14, var_9._ID23570, var_9._ID24768._ID23570 );
        var_2 = var_16["offset"];
        var_17 = _unknown_131B( var_15, var_9._ID23570, var_9._ID24768._ID23570 );
        var_3 = var_17["offset"];
        var_0 = _func_0E6( var_16["progress"], var_17["progress"] );
        var_1 += var_0;

        if ( var_0 <= 0 )
            break;

        _unknown_108B( var_9, var_0, var_1, var_2, var_3 );
    }
}

_ID39514()
{
    var_0 = level._ID40137;

    for ( var_5 = _func_1DA( var_0 ); _func_02F( var_5 ); var_5 = _func_1BF( var_0, var_5 ) )
    {
        var_1 = var_0[var_5];
        var_2 = var_1._ID8212;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( var_3._ID743 == self )
                var_1._ID8212 = _ID42237::_ID3321( var_1._ID8212, var_3 );
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
    var_clear_0
}

_ID1914( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _func_1A5();
    var_5._ID8286 = [];
    var_5._ID743 = self;
    var_5._ID8286["max"] = var_1;
    var_5._ID8286["min"] = var_2;

    if ( var_5._ID8286["min"] < 0 )
        var_5._ID8286["min"] = 0;

    if ( var_0._ID517 != 0 )
    {

    }
    else if ( var_5._ID8286["min"] < var_5._ID8286["max"] )
        return;

    var_5._ID8286["left_offset"] = var_4;
    var_5._ID8286["right_offset"] = var_3;
    var_5._ID8286["mid_offset"] = var_3 + var_4 * 0.5;
    var_0._ID8212[var_0._ID8212.size] = var_5;
}

_ID40128( var_0, var_1 )
{
    level endon( "stop_vehicle_free_path" );
    var_0 endon( "death" );
    var_0 notify( "enable_free_path" );

    if ( var_0._ID18174 && !var_0._ID29965.size )
    {
        var_0 _meth_8239();
        return;
    }

    var_2 = self;

    if ( _func_02F( var_1 ) )
        var_0._ID36136 = var_1;
    else
        var_0._ID36136 = var_0 _meth_8290();

    var_0._ID41798 = 0;
    var_0._ID28679 = var_2;
    var_0._ID28675 = 0;
    var_0._ID12735 = var_0._ID740;
    var_0._ID13730 = 0;
    var_0._ID24337 = 0;
    var_0._ID26321 = _func_03D();
    _ID42237::_ID3350( var_0._ID29965, ::_unknown_13E9, var_0 );
    var_0 thread _unknown_13F1();
    _unknown_139E( var_0 );

    for (;;)
    {
        if ( !_func_1A7( var_0 ) )
            break;

        if ( var_0._ID41798 )
        {
            var_0 _meth_8239();
            var_3 = var_0._ID29965;

            for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
            {
                var_4 = var_3[var_5];

                if ( _func_1A7( var_4 ) )
                    var_4 _meth_8058();
            }

            var_clear_2
            var_clear_0
            var_0 _meth_8058();
            wait 5;

            if ( _func_02F( var_0 ) )
                var_0 _meth_80B7();

            _unknown_13EA();
            return;
        }

        if ( !var_0._ID41798 && var_0 _meth_8290() < 2 )
        {
            var_0._ID24337++;

            if ( var_0._ID24337 > 5 )
                var_0 _unknown_148E( "move fail!" );
        }
        else
            var_0._ID24337 = 0;

        var_0 _unknown_12F5();
        wait 0.05;
    }
}

_ID32513()
{
    var_0 = self;
    var_1 = var_0._ID28679;

    if ( var_1 == var_1._ID24768 )
        return;

    var_2 = _unknown_1558( var_0._ID740, var_1._ID23570, var_1._ID24768._ID23570 );
    var_3 = var_2["offset"];
    var_4 = var_1._ID30057;
    var_5 = _unknown_163C( var_1, var_2["progress"], var_3 );
    var_6 = var_5._ID28675;
    var_7 = var_5._ID25468;
    var_1 = var_5._ID700;
    var_0._ID28679 = var_1;
    var_0._ID28675 = var_6;

    if ( var_1 == var_1._ID24768 )
        return;

    var_8 = _unknown_166C( var_1, var_6 + var_0._ID13730, var_7 );
    var_9 = var_8._ID28675;
    var_10 = var_8._ID25468;
    var_11 = var_8._ID700;
    var_12 = _unknown_15F9( var_11, var_9 );
    var_13 = _unknown_1412( var_11, var_9, var_10, 1 );
    var_14 = 0;

    if ( _func_02F( var_13["dodge1"] ) )
    {
        var_10 = var_13["dodge1"];
        var_14 = 1;

        if ( _func_02F( var_12["right"] ) && var_10 > var_12["right"] )
            var_10 = var_13["dodge2"];

        if ( _func_02F( var_12["left"] ) && var_10 < var_12["left"] )
            var_10 = var_13["dodge2"];
    }

    if ( _func_02F( var_12["right"] ) && var_10 > var_12["right"] )
    {
        var_10 = var_12["right"];
        var_14 = 1;
    }

    if ( _func_02F( var_12["left"] ) && var_10 < var_12["left"] )
    {
        var_10 = var_12["left"];
        var_14 = 1;
    }

    var_15 = 0;
    var_0._ID12735 = var_0 _unknown_16EC( var_11, var_9, var_10, var_15 );
    var_16 = _ID42407::_ID15689( var_0._ID740, var_0._ID65, var_0._ID12735 );
    var_17 = 1.0;

    if ( var_16 > 0.9659 )
        var_17 = 1.0;
    else if ( var_16 > 0.866 )
        var_17 = 0.85;
    else if ( var_16 > 0.7071 )
        var_17 = 0.65;
    else if ( var_16 > 0.5 )
        var_17 = 0.4;
    else
        var_17 = 0.1;

    var_18 = _func_0E6( var_0._ID36136 * var_17, level._ID14888 );
    var_0 _meth_8236( var_0._ID12735, var_18 );

    if ( _func_02F( level._ID794._ID11803 ) )
        var_0 _unknown_1642( var_17 );
}

_ID15873( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_3 ) && var_3 == 1 )
    {
        var_4 = var_0._ID8214;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_5._ID18197 = 0;
        }

        var_clear_2
        var_clear_0
        var_7 = var_0._ID8212;

        for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
        {
            var_5 = var_7[var_8];
            var_5._ID18197 = 0;
        }

        var_clear_1
        var_clear_0
    }

    var_9 = [];
    var_10 = _ID42237::_ID3296( var_0._ID8214, var_0._ID8212 );
    var_11 = var_10;

    for ( var_17 = _func_1DA( var_11 ); _func_02F( var_17 ); var_17 = _func_1BF( var_11, var_17 ) )
    {
        var_5 = var_11[var_17];

        if ( var_5._ID18197 == 1 )
            continue;

        if ( _func_02F( var_5._ID743 ) && _func_02F( var_5._ID743._ID13016 ) && var_5._ID743._ID13016 == self )
            continue;

        if ( var_1 < var_5._ID8286["min"] )
            continue;

        if ( var_1 > var_5._ID8286["max"] )
            continue;

        if ( var_2 < var_5._ID8286["left_offset"] )
            continue;

        if ( var_2 > var_5._ID8286["right_offset"] )
            continue;

        var_12 = var_5._ID8286["right_offset"] + 50;
        var_13 = var_5._ID8286["left_offset"] - 50;
        var_5._ID18197 = 1;
        var_14 = _unknown_1633( var_0, var_1, var_12 );
        var_15 = _unknown_163C( var_0, var_1, var_13 );

        if ( var_14.size > 0 )
        {
            if ( var_14["dodge1"] > var_12 )
                var_12 = var_14["dodge1"];

            if ( var_14["dodge2"] > var_12 )
                var_12 = var_14["dodge2"];

            if ( var_14["dodge1"] < var_13 )
                var_13 = var_14["dodge1"];

            if ( var_14["dodge2"] < var_13 )
                var_13 = var_14["dodge2"];
        }

        if ( var_15.size > 0 )
        {
            if ( var_15["dodge1"] > var_12 )
                var_12 = var_15["dodge1"];

            if ( var_15["dodge2"] > var_12 )
                var_12 = var_15["dodge2"];

            if ( var_15["dodge1"] < var_13 )
                var_13 = var_15["dodge1"];

            if ( var_15["dodge2"] < var_13 )
                var_13 = var_15["dodge2"];
        }

        var_16 = var_12 + var_13 * 0.5;

        if ( var_2 > var_16 )
        {
            var_9["dodge1"] = var_12;
            var_9["dodge2"] = var_13;
        }
        else
        {
            var_9["dodge1"] = var_13;
            var_9["dodge2"] = var_12;
        }

        break;
    }

    var_clear_2
    var_clear_0
    return var_9;
}

_ID39663( var_0 )
{
    var_1 = [];
    var_2 = level._ID12875;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_1A7( var_3 ) )
            continue;

        if ( var_3._ID41798 )
            continue;

        var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    level._ID12875 = var_1;

    if ( _func_1A7( var_0 ) && !var_0._ID41798 )
    {
        if ( !_ID42237::_ID3303( level._ID12875, var_0 ) )
        {
            level._ID12875[level._ID12875.size] = var_0;

            if ( 1 )
                level._ID12875 = _ID42237::_ID3336( level._ID12875, ::_unknown_1836 );
        }
    }

    var_5 = level._ID14885;
    var_6 = 200;
    var_7 = level._ID12875;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_3 = var_7[var_8];
        var_3._ID27305 = var_5;
        var_5 += level._ID14886;
        var_3._ID13730 = var_6;
        var_6 += 100;
    }

    var_clear_1
    var_clear_0
}

_ID16029()
{
    var_0 = 0;
    var_1 = 0;
    var_2 = self._ID28679;

    if ( !_func_02F( var_2 ) || !_func_02F( self._ID28675 ) )
        return 0;

    var_3 = _ID42407::_ID16261( var_2._ID1191, "targetname" );
    var_0 = self._ID28675;

    for (;;)
    {
        if ( !_func_02F( var_2._ID1193 ) )
            break;

        var_3 = var_2;
        var_2 = _ID42407::_ID16261( var_2._ID1193, "target" );

        if ( !_func_02F( var_2 ) )
            break;

        var_1++;
        var_0 += _func_0F4( var_3._ID740, var_2._ID740 );
    }

    return var_0;
}

_ID11132()
{
    return _func_22D( self._ID740, level._ID794._ID740 );
}

_ID40111()
{
    self waittill( "death" );
    waittillframeend;
    _unknown_18B6();
}

_ID29962( var_0 )
{
    self waittill( "death" );

    if ( _func_02F( var_0 ) )
        var_0 _unknown_194B( "driver died!" );
}

_ID40089()
{
    level endon( "stop_vehicle_free_path" );
    self endon( "death" );

    for (;;)
    {
        self waittill( "veh_contact",  var_4, var_3, var_2, var_1, var_0  );

        if ( _func_02F( var_3 ) )
        {
            var_5 = _func_0F6( var_3 ) / 63360.0 * 60.0 * 60.0;

            if ( var_5 > 20.0 )
                _unknown_1994( "crash" );
        }
    }
}

_ID41798( var_0 )
{
    self._ID41798 = 1;
}

_ID23008( var_0 )
{
    if ( !_func_02F( level._ID794._ID11803._ID28679 ) )
        level._ID794._ID11803._ID28679 = _unknown_142A( level._ID794._ID11803._ID740 );

    var_1 = _unknown_1A7A( level._ID794._ID11803._ID740, level._ID794._ID11803._ID28679._ID23570, level._ID794._ID11803._ID28679._ID24768._ID23570 );
    var_2 = _unknown_1B5E( level._ID794._ID11803._ID28679, var_1["progress"], var_1["offset"] );
    var_3 = var_2._ID28675;
    var_4 = var_2._ID25468;
    level._ID794._ID11803._ID28679 = var_2._ID700;
    var_5 = _unknown_1AA7( self._ID28679, self._ID28675, var_2._ID700, var_2._ID28675 );
    var_5 -= self._ID27305;

    if ( var_5 < level._ID14880 )
    {
        if ( _func_03D() > self._ID26321 + 2000 )
        {
            _unknown_1A48( "too far behind" );
            return;
        }
    }
    else if ( var_5 > level._ID14879 )
    {
        if ( _func_03D() > self._ID26321 + 2000 )
        {
            _unknown_1A65( "too far ahead" );
            return;
        }
    }
    else
        self._ID26321 = _func_03D();

    if ( var_0 < 0.6 )
        return;

    var_6 = _unknown_1AD2( var_5 );
    var_7 = _func_0E6( level._ID794._ID11803 _meth_8290() * var_6, level._ID14888 );

    if ( self _meth_8238() )
        self _meth_823E( var_7 );
    else
        self _meth_828D( var_7 );
}

_ID15842( var_0 )
{
    var_1 = level._ID14881;

    if ( var_0 < level._ID14878 )
        var_1 = level._ID14876;
    else if ( var_0 > level._ID14883 )
        var_1 = level._ID14882;
    else if ( var_0 < level._ID14877 )
    {
        var_2 = level._ID14877 - level._ID14878;
        var_3 = level._ID14877 - var_0 / var_2;
        var_4 = level._ID14876 - level._ID14881;
        var_1 = var_3 * var_4 + level._ID14881;
    }
    else if ( var_0 > level._ID14884 )
    {
        var_2 = level._ID14883 - level._ID14884;
        var_3 = var_0 - level._ID14884 / var_2;
        var_4 = level._ID14882 - level._ID14881;
        var_1 = var_3 * var_4 + level._ID14881;
    }
    else
        var_5 = level._ID14881;

    return var_1;
}

_ID28677( var_0, var_1, var_2, var_3 )
{
    while ( var_0._ID517 > var_2._ID517 )
    {
        var_0 = var_0._ID28484;
        var_1 += var_0._ID11123;
    }

    while ( var_2._ID517 > var_0._ID517 )
    {
        var_2 = var_2._ID28484;
        var_3 += var_2._ID11123;
    }

    return var_1 - var_3;
}

_ID15937( var_0, var_1, var_2 )
{
    var_3 = [];
    var_4 = _func_119( var_2 - var_1 );
    var_5 = var_0 - var_1;
    var_6 = _func_0FB( var_5, var_4 );
    var_7 = var_1 + var_4 * var_6;
    var_3["progress"] = var_6;
    var_3["offset"] = _func_0F4( var_7, var_0 );
    var_8 = _func_11E( _func_11A( var_4 ) );
    var_9 = _func_119( var_7 - var_0 );
    var_10 = _func_0FB( var_8, var_9 );
    var_3["side"] = "right";

    if ( var_10 > 0 )
    {
        var_3["offset"] *= -1;
        var_3["side"] = "left";
    }

    return var_3;
}

_ID15966( var_0, var_1 )
{
    var_2 = var_0._ID11123;
    var_3 = undefined;

    if ( var_1 > 0 )
        var_3 = _unknown_1C6E( var_0._ID24768._ID26027["right"], var_0._ID23570, var_0._ID24768._ID23570 );
    else
        var_3 = _unknown_1C8C( var_0._ID24768._ID26027["left"], var_0._ID23570, var_0._ID24768._ID23570 );

    var_4 = var_1 / var_3["offset"];
    var_5 = var_3["progress"] - var_2 * var_4;
    return var_5 + var_2;
}

_ID15696( var_0, var_1 )
{
    var_2 = [];

    if ( _func_02F( var_0._ID24768._ID26027["right_warning"] ) )
    {
        var_3 = _unknown_1CCF( var_0._ID26027["right_warning"], var_0._ID23570, var_0._ID24768._ID23570 );
        var_4 = _unknown_1CEA( var_0._ID24768._ID26027["right_warning"], var_0._ID23570, var_0._ID24768._ID23570 );
        var_5 = var_1 / var_4["progress"] - var_3["progress"];
        var_2["right"] = var_3["offset"] + var_5 * var_4["offset"] - var_3["offset"];
    }

    if ( _func_02F( var_0._ID24768._ID26027["left_warning"] ) )
    {
        var_3 = _unknown_1D3A( var_0._ID26027["left_warning"], var_0._ID23570, var_0._ID24768._ID23570 );
        var_4 = _unknown_1D55( var_0._ID24768._ID26027["left_warning"], var_0._ID23570, var_0._ID24768._ID23570 );
        var_5 = var_1 / var_4["progress"] - var_3["progress"];
        var_2["left"] = var_3["offset"] + var_5 * var_4["offset"] - var_3["offset"];
    }

    return var_2;
}

_ID15931( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    var_4 = _func_11A( var_0._ID24768._ID23570 - var_0._ID23570 );
    var_5 = _func_11F( var_4 );
    var_6 = _func_11E( var_4 );
    return var_0._ID23570 + var_5 * var_1 + var_6 * var_2;
}

_ID16060( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_1E4C( var_0, var_1, var_2, var_3 );
    return _unknown_1E69( var_4 );
}

_ID12136( var_0 )
{
    var_1 = _func_091( var_0 + ( 0, 0, 100 ), var_0 + ( 0, 0, -100 ) );

    if ( var_1 == var_0 + ( 0, 0, -100 ) )
    {
        var_2 = _func_06D( var_0 + ( 0, 0, 100 ), var_0 + ( 0, 0, -100 ), 0, undefined, 0, 0, 1, 0, 0 );

        if ( var_2["position"] == var_1 )
            return var_0;

        if ( _func_02F( var_2["surfacetype"] ) && _func_125( var_2["surfacetype"], "water" ) )
            var_1 = var_2["position"];

        return var_0;
    }

    return var_1;
}

_ID24374( var_0, var_1, var_2 )
{
    var_3 = _func_1A5();

    for (;;)
    {
        var_4 = var_0._ID11123;

        if ( _func_02F( var_2 ) )
            var_4 = _unknown_1E81( var_0, var_2 );

        if ( var_1 > var_4 )
        {
            if ( var_0 == var_0._ID24768 )
                break;

            var_5 = _unknown_1F03( var_0, var_4, var_2 );
            var_1 -= var_4;
            var_0 = var_0._ID24768;
            var_6 = _unknown_1E91( var_5, var_0._ID23570, var_0._ID24768._ID23570 );
            var_2 = var_6["offset"];
            continue;
        }

        if ( var_1 < 0 )
        {
            if ( var_0 == var_0._ID28484 )
                break;

            var_5 = _unknown_1F3F( var_0, 0, var_2 );
            var_0 = var_0._ID28484;
            var_6 = _unknown_1EC9( var_5, var_0._ID23570, var_0._ID24768._ID23570 );
            var_1 += var_6["progress"];
            var_2 = var_6["offset"];
            continue;
        }

        break;
    }

    var_3._ID700 = var_0;
    var_3._ID28675 = var_1;
    var_3._ID25468 = var_2;
    return var_3;
}

_ID9887()
{

}

_ID9876()
{
    level endon( "stop_free_path_debug" );
    _func_19F( "!!!!DEBUG PATH!!!!" );
    var_0 = undefined;
    var_1 = undefined;

    for (;;)
    {
        if ( !_func_02F( level._ID40137 ) )
        {
            wait 0.05;
            continue;
        }

        var_2 = level._ID40137;

        for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        {
            var_4 = var_2[var_3];

            if ( _func_02F( var_4._ID24768._ID26027["left_warning"] ) )
            {

            }

            if ( _func_02F( var_4._ID24768._ID26027["right_warning"] ) )
            {

            }

            var_5 = var_4._ID8214;

            for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
            {
                var_6 = var_5[var_7];
                var_4 _unknown_20E8( var_6._ID8286, ( 0.5, 0, 1 ) );
            }

            var_clear_9
            var_clear_7
            var_8 = var_4._ID8212;

            for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
            {
                var_6 = var_8[var_9];
                var_4 _unknown_211B( var_6._ID8286, ( 1, 0, 0.5 ) );
            }

            var_clear_6
            var_clear_5
            var_10 = var_4._ID8211;

            for ( var_14 = _func_1DA( var_10 ); _func_02F( var_14 ); var_14 = _func_1BF( var_10, var_14 ) )
            {
                var_11 = var_10[var_14];
                var_12 = var_11._ID740;
                var_13 = var_11._ID26035._ID740;
            }

            var_clear_4
            var_clear_0
        }

        wait 0.05;
    }
}

_ID9856( var_0 )
{
    var_1 = ( 0.2, 0.2, 1 );

    if ( var_0 )
    {

    }
}

_ID11690( var_0, var_1 )
{
    var_2 = _unknown_20AB( self, var_0["min"], var_0["left_offset"] );
    var_3 = _unknown_20BC( self, var_0["max"], var_0["left_offset"] );
    var_2 = _unknown_20CC( self, var_0["min"], var_0["right_offset"] );
    var_3 = _unknown_20DD( self, var_0["max"], var_0["right_offset"] );
    var_2 = _unknown_20EC( self, var_0["min"], var_0["right_offset"] );
    var_3 = _unknown_20FD( self, var_0["min"], var_0["left_offset"] );
    var_2 = _unknown_210D( self, var_0["max"], var_0["right_offset"] );
    var_3 = _unknown_211D( self, var_0["max"], var_0["left_offset"] );
}
