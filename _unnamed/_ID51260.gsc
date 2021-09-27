// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46928()
{
    _ID42237::_ID9137( "vehicle_spline_debug", 0 );
    level._ID47317 = -2000;
    level._ID44434 = 6;
    level._ID47642 = _func_06A( "script_origin", level._ID794._ID740 + ( 0, 0, 88 ) );
    level._ID47642 _meth_8053( level._ID794 );
    level._ID45355 = _unknown_0058();
    _ID42237::_ID14400( "ai_snowmobiles_ram_player" );
    _ID42237::_ID14402( "ai_snowmobiles_ram_player" );
    var_0 = _func_1A2( "enable_spline_path", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_0073 );
}

_ID51075()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        var_0 notify( "enable_spline_path" );
    }
}

_ID48006()
{
    level._ID44744 = ::_unknown_052A;
    var_0 = _unknown_00C7();
    _ID42237::_ID14400( "race_complete" );
    level._ID47781 = _func_06A( "script_model", ( 0, 0, 0 ) );
    level._ID47781 _meth_80B8( "tag_origin" );
    level._ID52919 = [];
    level._ID47297 = 0;
    level._ID794 thread _unknown_00DF();
    return var_0;
}

_ID52155()
{
    self waittill( "death" );
}

_ID47501()
{
    var_0 = _func_1A1( "spawner", "targetname" );
    var_0._ID216 = 1;
    var_0._ID740 = self._ID740;
    var_0._ID65 = ( 0, self._ID65[1], 0 );
    return var_0 _meth_809B();
}

_ID54108( var_0 )
{
    for (;;)
    {
        if ( !_func_02F( self ) )
            return;

        self _meth_819B( "face angle", var_0 );
        wait 0.05;
    }
}

_ID46906()
{
    var_0 = _unknown_0237();
    level._ID45355 = var_0;
    _unknown_031F( var_0 );
    return var_0;
}

_ID53819( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 = _ID42237::_ID12140( var_0 );
    var_1 = _ID42237::_ID12140( var_1 );
    thread _ID42281::_ID22387( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_ID46124( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_1 = ( var_1[0], var_1[1], var_0 );
    var_1 = _ID42237::_ID12140( var_1 );
    var_2 = ( var_2[0], var_2[1], var_0 );
    var_2 = _ID42237::_ID12140( var_2 );
    thread _ID42281::_ID22387( var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID44788( var_0 )
{
    var_1 = undefined;
    var_2 = undefined;

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];
        var_5 = _func_11A( var_4._ID24768._ID23570 - var_4._ID23570 );
        var_6 = _func_11F( var_5 ) * var_4._ID43854;
        var_7 = var_4._ID30057 * 0.5;
        var_8 = _unknown_09F1( var_4, 0, var_7 );
        var_9 = _unknown_09FD( var_4, var_4._ID43854, var_7 );
        _unknown_0232( var_4._ID1342, var_8, var_9, ( 0, 0.5, 1 ), 1, 1, 50000 );
        var_10 = _unknown_0A22( var_4, 0, var_7 * -1 );
        var_11 = _unknown_0A31( var_4, var_4._ID43854, var_7 * -1 );
        _unknown_0265( var_4._ID1342, var_10, var_11, ( 0, 0.5, 1 ), 1, 1, 50000 );
        _unknown_0280( var_4._ID1342, var_8, var_10, ( 0, 0.5, 1 ), 1, 1, 50000 );
        _unknown_029A( var_4._ID1342, var_9, var_11, ( 0, 0.5, 1 ), 1, 1, 50000 );
        var_12 = var_4._ID8214;

        for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
        {
            var_13 = var_12[var_14];
            var_4 _unknown_033C( var_4._ID1342, var_13 );
        }

        var_clear_7
        var_clear_5
        var_15 = var_4._ID8211;

        for ( var_19 = _func_1DA( var_15 ); _func_02F( var_19 ); var_19 = _func_1BF( var_15, var_19 ) )
        {
            var_16 = var_15[var_19];
            var_17 = var_16._ID740;
            var_18 = var_16._ID26035._ID740;
            _unknown_02FC( var_4._ID1342, var_17, var_18, ( 1, 0, 0 ), 1, 1, 50000 );
        }

        var_clear_4
        var_clear_0
    }
}

_ID11690( var_0, var_1 )
{
    var_2 = _unknown_0B05( self, var_1["min"], var_1["left_offset"] );
    var_3 = _unknown_0B15( self, var_1["max"], var_1["left_offset"] );
    _unknown_0346( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
    var_2 = _unknown_0B3C( self, var_1["min"], var_1["right_offset"] );
    var_3 = _unknown_0B4C( self, var_1["max"], var_1["right_offset"] );
    _unknown_037C( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
    var_2 = _unknown_0B72( self, var_1["min"], var_1["right_offset"] );
    var_3 = _unknown_0B82( self, var_1["min"], var_1["left_offset"] );
    _unknown_03B2( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
    var_2 = _unknown_0BA8( self, var_1["max"], var_1["right_offset"] );
    var_3 = _unknown_0BB8( self, var_1["max"], var_1["left_offset"] );
    _unknown_03E8( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
}

_ID53170( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = self;
    var_6 = _unknown_0BE6( var_5, var_1["min"], var_1[var_2] );
    var_7 = _unknown_0BF3( var_5, var_1["max"], var_1[var_2] );
    _unknown_0424( var_0, var_6, var_7, ( 0.5, 0, 1 ), 1, 1, 50000 );
}

_ID9172()
{
    var_0 = _ID42237::_ID16638( "road_path_left", "targetname" );
    var_1 = [];
    var_0._ID740 = ( var_0._ID740[0], var_0._ID740[1], 0 );
    var_2 = 0;
    var_3 = var_0;

    for (;;)
    {
        var_4 = var_0;

        if ( _func_02F( var_0._ID1191 ) )
            var_4 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

        var_4._ID740 = ( var_4._ID740[0], var_4._ID740[1], 0 );
        var_1[var_1.size] = var_0;
        var_0._ID24768 = var_4;
        var_0._ID28484 = var_3;
        var_4._ID53771 = var_0;
        var_0._ID8211 = [];
        var_0._ID8214 = [];
        var_0._ID52236 = [];
        var_0._ID26027 = [];
        var_0._ID44289 = [];
        var_0._ID26027["left"] = var_0._ID740;
        var_0._ID517 = var_2;
        var_2++;

        if ( var_0 == var_4 )
            break;

        var_3 = var_0;
        var_0 = var_4;
    }

    var_0 = _ID42237::_ID16638( "road_path_right", "targetname" );
    var_0._ID740 = ( var_0._ID740[0], var_0._ID740[1], 0 );
    var_5 = 0;

    for (;;)
    {
        var_4 = var_0;

        if ( _func_02F( var_0._ID1191 ) )
            var_4 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

        var_4._ID740 = ( var_4._ID740[0], var_4._ID740[1], 0 );
        var_6 = var_1[var_5];
        var_6._ID26027["right"] = var_0._ID740;
        var_6._ID30057 = _func_0F3( var_6._ID26027["right"], var_6._ID26027["left"] );
        var_5++;

        if ( var_0 == var_4 )
            break;

        var_0 = var_4;
    }

    var_7 = var_1;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_8._ID23570 = var_8._ID26027["left"] + var_8._ID26027["right"] * 0.5;
    }

    var_clear_2
    var_clear_0
    var_10 = var_1;

    for ( var_16 = _func_1DA( var_10 ); _func_02F( var_16 ); var_16 = _func_1BF( var_10, var_16 ) )
    {
        var_8 = var_10[var_16];
        var_11 = var_8._ID23570;
        var_12 = var_8._ID24768._ID23570;
        var_13 = _func_11A( var_11 - var_12 );
        var_14 = _func_11E( var_13 );
        var_15 = var_8._ID30057 * 0.5;
        var_8._ID26027["left"] = var_8._ID23570 + var_14 * var_15;
        var_8._ID26027["right"] = var_8._ID23570 + var_14 * var_15 * -1;
    }

    var_clear_6
    var_clear_0
    var_8 = var_1[var_1.size - 1]._ID24768;
    var_8._ID23570 = var_8._ID26027["left"] + var_8._ID26027["right"] * 0.5;
    var_17 = var_1;

    for ( var_18 = _func_1DA( var_17 ); _func_02F( var_18 ); var_18 = _func_1BF( var_17, var_18 ) )
    {
        var_8 = var_17[var_18];
        var_8._ID43854 = _func_0F3( var_8._ID23570, var_8._ID24768._ID23570 );
        var_8._ID44289["left"] = _func_0F3( var_8._ID26027["left"], var_8._ID24768._ID26027["left"] );
        var_8._ID44289["right"] = _func_0F3( var_8._ID26027["right"], var_8._ID24768._ID26027["right"] );
    }

    var_clear_1
    var_clear_0
    return var_1;
}

_ID48750( var_0 )
{
    var_1 = self;
    var_2 = var_0;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_3._ID740 = var_3._ID740 + ( 0, 0, 20 );
        var_4 = _func_091( var_3._ID740, var_3._ID740 + ( 0, 0, -100 ) );
        var_3._ID740 = var_4;
    }

    var_clear_3
    var_clear_0
}

_ID1862( var_0 )
{
    var_1 = _ID42237::_ID16640( "moto_line", "targetname" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_3._ID740 = ( var_3._ID740[0], var_3._ID740[1], 0 );
        var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
        var_3._ID26035 = var_4;
        var_4._ID26035 = var_3;
    }

    var_clear_3
    var_clear_0
    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
        var_3 = var_6[var_7];

    var_clear_1
    var_clear_0
    var_8 = self;
    var_9 = var_0;

    for ( var_13 = _func_1DA( var_9 ); _func_02F( var_13 ); var_13 = _func_1BF( var_9, var_13 ) )
    {
        var_10 = var_9[var_13];
        var_11 = var_1;

        for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
        {
            var_3 = var_11[var_12];
            _unknown_0992( var_10, var_3 );
        }

        var_clear_2
        var_clear_1
    }

    var_clear_4
    var_clear_0
    var_14 = _func_1A2( "moto_collision", "targetname" );
    var_15 = var_14;

    for ( var_20 = _func_1DA( var_15 ); _func_02F( var_20 ); var_20 = _func_1BF( var_15, var_20 ) )
    {
        var_16 = var_15[var_20];
        var_17 = _ID42237::_ID15566( var_16._ID740, var_0, undefined, 2 );
        var_18 = var_17;

        for ( var_19 = _func_1DA( var_18 ); _func_02F( var_19 ); var_19 = _func_1BF( var_18, var_19 ) )
        {
            var_10 = var_18[var_19];
            var_10._ID52236[var_10._ID52236.size] = var_16;
        }

        var_clear_2
        var_clear_1
    }

    var_clear_5
    var_clear_0
}

_ID52401( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_0F3( var_0._ID23570, var_1._ID23570 );
    var_5 = 1 - var_2 / var_4;
    var_6 = "left";

    if ( var_3 > 0 )
        var_6 = "right";

    var_7 = var_0._ID26027[var_6];
    var_8 = var_1._ID26027[var_6];
    var_9 = var_7 * var_5 + var_8 * 1 - var_5;
    var_10 = var_0._ID23570;
    var_11 = var_1._ID23570;
    var_12 = var_10 * var_5 + var_11 * 1 - var_5;
    var_13 = _func_0F3( var_12, var_9 );
    return var_3 / var_13;
}

_ID48586( var_0, var_1 )
{
    if ( var_0 == var_0._ID24768 )
        return;

    var_2 = var_0._ID30057;

    if ( var_0._ID43854 > var_2 )
        var_2 = var_0._ID43854;

    if ( _func_0F3( var_1._ID740, var_0._ID24768._ID23570 ) > var_2 * 1.5 )
        return;

    var_3 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    var_4 = _unknown_0B89( var_1._ID740, var_0._ID23570, var_0._ID24768._ID23570 );
    var_5 = var_4["progress"];
    var_6 = _unknown_0BA3( var_3._ID740, var_0._ID23570, var_0._ID24768._ID23570 );
    var_7 = var_6["progress"];

    if ( var_5 < 0 || var_7 < 0 )
        return;

    if ( var_5 > var_0._ID43854 && var_7 > var_0._ID43854 )
        return;

    var_1._ID7712 = 1;
    var_3._ID7712 = 1;
    var_1._ID28675 = var_5;
    var_1._ID25468 = var_4["offset"];
    var_1._ID54439 = _unknown_0AF9( var_0, var_0._ID24768, var_5, var_4["offset"] );
    var_3._ID28675 = var_7;
    var_3._ID25468 = var_6["offset"];
    var_3._ID54439 = _unknown_0B1C( var_0, var_0._ID24768, var_7, var_6["offset"] );
    var_1._ID740 = ( var_1._ID740[0], var_1._ID740[1], var_0._ID23570[2] + 40 );
    var_3._ID740 = ( var_3._ID740[0], var_3._ID740[1], var_0._ID23570[2] + 40 );

    if ( var_5 < var_7 )
    {
        _unknown_0BE6( var_0, var_1, var_3 );
        var_0._ID8211[var_0._ID8211.size] = var_1;
    }
    else
    {
        _unknown_0BFB( var_0, var_3, var_1 );
        var_0._ID8211[var_0._ID8211.size] = var_3;
    }
}

_ID1861( var_0, var_1, var_2 )
{
    var_3 = var_2._ID28675 + 200;
    var_4 = var_1._ID28675 - level._ID45017;
    var_5 = undefined;
    var_6 = undefined;
    var_7 = undefined;
    var_8 = undefined;

    if ( var_2._ID25468 > var_1._ID25468 )
    {
        var_5 = var_2._ID25468;
        var_6 = var_1._ID25468;
        var_7 = var_2._ID54439;
        var_8 = var_1._ID54439;
    }
    else
    {
        var_5 = var_1._ID25468;
        var_6 = var_2._ID25468;
        var_7 = var_1._ID54439;
        var_8 = var_2._ID54439;
    }

    var_9 = var_0;
    var_10 = var_3;
    var_11 = var_4;

    for (;;)
    {
        _unknown_0CB7( var_0, var_3, var_4, var_5, var_6, var_7, var_8 );

        if ( !_func_02F( var_0._ID24768 ) )
            break;

        if ( var_0._ID43854 >= var_3 )
            break;

        var_3 -= var_0._ID43854;
        var_0 = var_0._ID24768;
        var_4 = 0;
    }

    var_0 = var_9;
    var_3 = var_10;
    var_4 = var_11;

    for (;;)
    {
        if ( !_func_02F( var_0._ID53771 ) )
            break;

        if ( var_4 > 0 )
            break;

        var_0 = var_0._ID53771;
        var_3 = var_0._ID43854;
        var_4 = var_0._ID43854 + var_4;
        _unknown_0D1B( var_0, var_3, var_4, var_5, var_6, var_7, var_8 );
    }
}

_ID1983( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = [];
    var_7["max"] = var_1;

    if ( var_7["max"] > var_0._ID43854 )
        var_7["max"] = var_0._ID43854;

    var_7["min"] = var_2;

    if ( var_7["min"] < 0 )
        var_7["min"] = 0;

    var_7["left_offset"] = var_4;
    var_7["right_offset"] = var_3;
    var_7["left_offset_percent"] = var_6;
    var_7["right_offset_percent"] = var_5;
    var_7["mid_offset"] = var_3 + var_4 * 0.5;
    var_7["mid_offset_percent"] = var_5 + var_6 * 0.5;
    var_0._ID8214[var_0._ID8214.size] = var_7;
}

_ID15937( var_0, var_1, var_2 )
{
    var_1 = ( var_1[0], var_1[1], 0 );
    var_2 = ( var_2[0], var_2[1], 0 );
    var_0 = ( var_0[0], var_0[1], 0 );
    var_3 = [];
    var_4 = _func_11A( var_2 - var_1 );
    var_5 = _func_11F( var_4 );
    var_6 = var_1;
    var_7 = _func_119( var_6 - var_0 );
    var_8 = _func_0FB( var_5, var_7 );
    var_9 = _func_119( var_2 - var_1 );
    var_10 = var_0 - var_1;
    var_11 = _func_0FB( var_10, var_9 );
    var_12 = var_1 + var_5 * var_11;
    var_3["progress"] = var_11;
    var_3["offset"] = _func_0F3( var_12, var_0 );
    var_13 = _func_11E( var_4 );
    var_7 = _func_119( var_12 - var_0 );
    var_8 = _func_0FB( var_13, var_7 );
    var_3["dot"] = var_8;

    if ( var_8 > 0 )
        var_3["offset"] *= -1;

    return var_3;
}

_ID46401( var_0 )
{
    var_1 = self._ID43692._ID52236;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = ( self._ID740[0], self._ID740[1], 0 );

        if ( _func_0F3( ( var_2._ID740[0], var_2._ID740[1], 0 ), var_3 ) < var_2._ID851 )
            return 1;
    }

    var_clear_3
    var_clear_0

    if ( var_0._ID486 >= 100 )
        return 0;

    level._ID47297++;
    return 1;
}

_ID52914( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );

    for (;;)
        wait 0.05;
}

_ID53061()
{
    waitframe;

    if ( !_func_02F( self._ID29965 ) )
        return;

    var_0 = "axis";

    if ( _ID42237::_ID8201() )
        var_0 = "allies";

    var_1 = self._ID29965;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID1194 = var_0;
    }

    var_clear_2
    var_clear_0
}

_ID45925( var_0, var_1 )
{
    var_2 = _unknown_13A7( var_0, var_1 );
    var_3 = var_2._ID28675;
    var_4 = var_2._ID43692;
    var_5 = var_4._ID30057 * 0.5;
    var_6 = undefined;

    if ( _func_02F( level._ID794._ID49032 ) )
        var_6 = 0;
    else if ( _func_02F( level._ID794._ID25468 ) )
    {
        var_7 = 500;

        if ( _ID42237::_ID8201() )
            var_7 *= -1;

        var_6 = level._ID794._ID25468 + var_7;
    }
    else
        var_6 = _func_0BA( var_5 * -1, var_5 );

    var_8 = _unknown_1177( var_4, var_3, var_6 );

    if ( _func_02F( var_8["dodge"] ) )
        var_6 = var_8["dodge"];

    var_9 = _unknown_1433( var_4, var_3, var_6 );
    var_10 = [];
    var_10["spawn_pos"] = var_9;
    var_10["progress"] = var_3;
    var_10["targ"] = var_4;
    var_10["offset"] = var_6;
    return var_10;
}

_ID52599()
{

}

_ID48440()
{
    self endon( "death" );
    level endon( "stop_debugging_enemy_vehicles" );

    for (;;)
        wait 0.05;
}

_ID46156()
{
    if ( level._ID52919.size >= level._ID44434 )
        return;

    var_0 = _unknown_1564();
    var_1 = _unknown_1562();
    var_2 = "forward";
    var_3 = _ID48440( var_0, var_1 - 1000 - level._ID50860 );
    var_4 = var_3["spawn_pos"];
    var_5 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_4, 0 );

    if ( _func_0F3( var_4, level._ID794._ID740 ) < 140 )
        return;

    if ( var_5 )
    {
        var_3 = _unknown_105E( var_0, var_1 + 1000 );
        var_4 = var_3["spawn_pos"];
        var_2 = "backward";
        var_5 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_4, 0 );

        if ( var_5 )
            return;
    }

    var_6 = _func_06D( var_4 + ( 0, 0, 1500 ), var_4 + ( 0, 0, -12000 ), 0, undefined, 0, 0, 1, 0, 0, 1 );
    var_4 = var_6["position"];
    var_7 = _func_1A1( "snowmobile_spawner", "targetname" );
    var_8 = var_3["targ"];
    var_7._ID740 = var_4;
    var_7._ID65 = _func_11A( var_8._ID24768._ID23570 - var_8._ID23570 );
    var_9 = var_7 _ID42413::_ID16055();
    var_10 = var_9;

    for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
    {
        var_11 = var_10[var_12];
        var_11._ID740 = var_7._ID740;
    }

    var_clear_2
    var_clear_0
    var_13 = _ID42411::_ID40260( var_7 );
    var_13._ID54439 = var_3["offset"];
    var_13 _meth_823E( 90 );
    var_13 thread _unknown_11AB();
    var_13._ID52090 = _func_03D() - 3000;
    var_8 _ID41798( var_13 );
}

_ID54183()
{
    self waittill( "veh_collision",  var_1, var_1  );
    _unknown_11E3( "collision!" );
}

_ID29962( var_0 )
{
    if ( self._ID40222 != 0 )
        return;

    self waittill( "death" );

    if ( _func_02F( var_0 ) )
        var_0 _unknown_1201( "driver died!" );
}

_ID41798( var_0 )
{
    self._ID41798 = 1;
}

_ID44383( var_0 )
{
    var_1 = [];
    var_2 = level._ID52919;

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
    level._ID52919 = var_1;

    if ( _func_1A7( var_0 ) && !var_0._ID41798 )
    {
        var_5 = 0;
        var_6 = level._ID52919;

        for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
        {
            var_3 = var_6[var_7];

            if ( var_3 == var_0 )
            {
                var_5 = 1;
                continue;
            }
        }

        var_clear_1
        var_clear_0

        if ( !var_5 )
            level._ID52919[level._ID52919.size] = var_0;
    }

    var_8 = 0;
    var_9 = level._ID52919;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_3 = var_9[var_10];
        var_3._ID47500 = var_8;
        var_8 += 120;
    }

    var_clear_1
    var_clear_0
}

_ID49790( var_0 )
{
    if ( !_func_02F( var_0._ID52090 ) )
        var_0._ID52090 = _func_03D();

    if ( !_func_02F( var_0._ID41798 ) )
        var_0._ID41798 = 0;

    var_0._ID47500 = 0;
    _unknown_12D8( var_0 );

    if ( !_func_02F( var_0._ID47178 ) )
        var_0._ID47178 = 250;

    var_0._ID36388 = 0;
    var_1 = _func_0BA( 0, 1 );

    if ( !_func_02F( var_0._ID54439 ) )
        var_0._ID54439 = var_1 * 2 - 1;

    var_2 = self;
    var_3 = _func_1A5();
    var_3._ID740 = self._ID23570;
    var_3._ID28675 = 0;
    var_3._ID47695 = 0;
    var_3._ID997 = 100;
    var_3 _ID42407::_ID13024( "biker_reaches_path_end" );
    var_0 _ID42407::_ID13024( "dialog_six" );
    var_0 notify( "enable_spline_path" );
    _ID42237::_ID3350( var_0._ID29965, ::_unknown_1332, var_0 );
    var_3._ID44238 = var_0;
    var_0._ID486 = 100;
    var_4 = 0;
    var_3 thread _unknown_1733( var_0 );
    var_0._ID50602 = var_2;
    var_0._ID49188 = 0;
    var_0._ID53513 = 0;
    var_0._ID10864 = "forward";
    var_0._ID51964 = var_0._ID740;

    for (;;)
    {
        if ( !_func_1A7( var_0 ) )
            break;

        _unknown_163A( var_3 );

        if ( !_func_1A7( var_0 ) )
            break;

        if ( _func_0C3( var_0._ID28677 ) > 6000 && _func_03D() > var_0._ID52090 + 4000 )
            var_0 _unknown_13AF( "left behind!" );

        waitframe;

        if ( var_0._ID41798 )
        {
            if ( _func_02F( var_0._ID45883 ) )
                continue;

            var_0 _meth_828D( 0, 5, 5 );
            var_5 = _func_0BA( 0.25, 1 );
            var_0 _ID42237::_ID10192( var_5, ::_meth_8239 );

            if ( _func_02F( var_0._ID48060 ) && var_0._ID48060 )
            {
                var_6 = var_0 _meth_8290();
                var_7 = var_0 _meth_84BC();
                var_6 = var_6 / var_7 * 750;
                var_0 _ID42237::_ID10192( var_5 + 0.25, ::_meth_823A, ( 0, 0, 1 ), 10, var_6, 2 );
            }

            var_8 = var_0._ID29965;

            for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
            {
                var_9 = var_8[var_10];

                if ( _func_0D4( var_9 ) && _func_1A7( var_9 ) )
                {
                    _ID45456::_ID54623( var_9 );
                    var_9 _meth_8058();
                    continue;
                }

                if ( _func_02F( var_9 ) )
                    _ID48610::rider_death_animate_or_ragdoll( var_0, var_9 );
            }

            var_clear_2
            var_clear_0
            wait 5;

            if ( _func_02F( var_0 ) )
                var_0 thread _unknown_154C();

            _unknown_146C();
            return;
        }

        if ( var_3 _ID42407::_ID13019( "biker_reaches_path_end" ) || _ID42237::_ID14385( "race_complete" ) )
            break;
    }

    _unknown_148B();
    var_3 notify( "stop_bike" );
    level notify( "biker_dies" );

    if ( _func_1A7( var_0 ) && var_0._ID41798 && !_ID42237::_ID14385( "race_complete" ) )
        wait 5;

    var_3 _ID42407::_ID13021( "biker_reaches_path_end" );
}

delete_death_bike_thread()
{
    while ( _ID42407::_ID27540( self._ID740, 0.75, 1 ) )
    {
        wait 0.5;

        if ( !_func_02F( self ) || _func_2A5( self ) )
            return;
    }

    var_0 = self._ID29965;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_2A5( var_1 ) )
            var_1 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_3 = _func_0E1();
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( !_ID42407::_ID27540( var_5._ID740, 0.75, 1 ) )
            var_5 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    self _meth_80B7();
}

_ID15873( var_0, var_1, var_2 )
{
    var_3["near_obstacle"] = 0;
    var_4 = var_0._ID8214;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];

        if ( var_1 < var_5["min"] )
            continue;

        if ( var_1 > var_5["max"] )
            continue;

        var_3["near_obstacle"] = 1;

        if ( var_2 < var_5["left_offset"] )
            continue;

        if ( var_2 > var_5["right_offset"] )
            continue;

        var_6 = var_0._ID23570 + var_0._ID24768._ID23570 * 0.5;

        if ( var_2 > var_5["mid_offset"] )
            var_3["dodge"] = var_5["right_offset"];
        else
            var_3["dodge"] = var_5["left_offset"];

        break;
    }

    var_clear_2
    var_clear_0
    return var_3;
}

_ID46115()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_func_02F( var_0._ID922 ) )
            continue;

        if ( var_0._ID922 != "sweepable" )
            continue;

        var_1 = _func_0BA( 0, 1 );
        var_0 thread _ID42407::_ID25088( "enable_spline_path", var_1 );
    }
}

_ID52120()
{
    for (;;)
    {
        if ( _func_02F( level._ID794._ID40065 ) )
        {
            var_0 = self _meth_8290();
            var_1 = level._ID794._ID40065 _meth_8290();
            level._ID44230 = var_0 - var_1;
        }

        wait 0.05;
    }
}

_ID49320()
{

}

_ID50246()
{
    self._ID43692 = _ID42411::_ID46021( self._ID740 );
    var_0 = self._ID740;

    for (;;)
    {
        wait 0.05;
        var_1 = self._ID43692;

        if ( var_1 == var_1._ID24768 )
            return;

        var_2 = _unknown_155B( self._ID740, self._ID43692._ID23570, self._ID43692._ID24768._ID23570 );
        var_3 = var_2["progress"];
        var_4 = _func_0F3( self._ID740, var_0 );
        var_3 += var_4;
        var_0 = self._ID740;
        var_5 = _unknown_1A20( self._ID43692, var_3 );
        var_3 = var_5._ID28675;
        self._ID43692 = var_5._ID43692;
        self._ID28675 = var_3;
    }
}

_ID44177()
{
    thread _unknown_1803();
    self._ID43692 = _ID42411::_ID46021( self._ID740 );
    self._ID23610 = 1;
    self endon( "stop_modulating_speed" );
    var_0 = undefined;

    for (;;)
    {
        wait 0.05;
        var_1 = self._ID43692;

        if ( var_1 == var_1._ID24768 )
            return;

        var_2 = _unknown_15D2( self._ID740, self._ID43692._ID23570, self._ID43692._ID24768._ID23570 );
        var_3 = var_2["progress"];
        var_3 += level._ID50860;
        var_4 = _unknown_1A8F( self._ID43692, var_3 );
        var_3 = var_4._ID28675;
        self._ID43692 = var_4._ID43692;
        self._ID28675 = var_3;
        var_5 = _unknown_1BAF();
        var_6 = _unknown_1BAD();
        var_7 = _unknown_19BB( self._ID43692, self._ID28675, var_5, var_6 );
        level._ID28677 = var_7;

        if ( !_func_02F( level._ID794._ID40065 ) )
        {
            self _meth_828D( 65, 1, 1 );
            continue;
        }

        if ( _func_0C3( var_7 > 3500 ) )
        {
            var_8 = 65;
            var_7 *= -1;
            var_7 += 750;
            var_8 = level._ID794._ID40065._ID1276 + var_7 * 0.05;
            var_9 = level._ID794._ID40065._ID1276;

            if ( var_9 < 100 )
                var_9 = 100;

            if ( var_8 > var_9 )
                var_8 = var_9;
            else if ( var_8 < self._ID23610 )
                var_8 = self._ID23610;

            level._ID10425 = var_8;
            self _meth_828D( var_8, 90, 20 );
            continue;
        }

        _unknown_196F( 10, 10 );
    }
}

_ID47276( var_0, var_1 )
{
    var_2 = self._ID65;
    var_2 = ( 0, var_2[1], 0 );
    var_3 = _func_11F( var_2 );
    var_4 = _unknown_16B0( level._ID794._ID40065._ID740, self._ID740 + var_3 * 1, self._ID740 - var_3 * 1 );
    var_5 = var_4["progress"];

    if ( var_5 > 4000 )
        self _meth_828D( 0, 90, 20 );
    else
    {
        var_6 = _ID42407::_ID15689( self._ID740, self._ID65, level._ID794._ID740 );
        var_7 = 1;

        if ( var_5 > 0 )
            var_7 = 1;
        else
        {
            if ( var_5 > -500 )
                var_7 = 1.25;

            if ( var_7 > 0.95 && var_6 > 0.97 )
                var_7 = 0.95;
        }

        var_8 = 70 * var_7;

        if ( var_8 < self._ID23610 )
            var_8 = self._ID23610;

        if ( var_8 < 25 )
            var_8 = 25;

        level._ID53113 = var_8;
        self _meth_828D( var_8, var_0, var_1 );
    }
}

_ID23008( var_0, var_1 )
{
    var_2 = self._ID65;
    var_2 = ( 0, var_2[1], 0 );
    var_3 = self._ID409;

    if ( _func_02F( self._ID50602._ID24768 ) )
        var_3 = _func_119( self._ID50602._ID24768._ID23570 - self._ID50602._ID23570 );

    var_4 = _unknown_1761( level._ID794._ID40065._ID740, self._ID740 + var_3, self._ID740 );
    var_5 = var_4["progress"];
    self._ID46560 = 0;

    if ( var_5 > 4000 )
        self _meth_828D( 0, 90, 20 );
    else
    {
        if ( var_5 < level._ID47317 && _func_03D() > self._ID52090 + 4000 )
            _unknown_18A4( "low progress!" );

        var_6 = 1;

        if ( var_5 > 1000 )
            var_6 = 0.6;
        else if ( var_5 > 400 )
            var_6 = 1.5;
        else if ( var_5 < 0 )
        {
            if ( !_ID42407::_ID13019( "dialog_six" ) )
            {
                _ID42407::_ID13025( "dialog_six" );
                _ID42407::_ID10226( 12, _ID42407::_ID13021, "dialog_six" );
                level notify( "dialog_six" );
            }

            var_6 = 1.5;
        }

        var_7 = level._ID794._ID40065._ID1276 * var_6;

        if ( var_7 < 25 )
            var_7 = 25;

        self._ID46560 = var_7;
    }
}

_ID44064( var_0 )
{
    self._ID43692 = _ID42411::_ID46021( var_0 );
    self._ID28675 = 0;
    var_1 = _func_1A1( "player_sweep_trigger", "targetname" );
    var_2 = _func_02F( var_1 );

    if ( var_2 )
        var_1 thread _unknown_1A71();

    for (;;)
    {
        if ( self._ID43692 == self._ID43692._ID24768 )
            return;

        var_3 = _unknown_1840( self._ID740, self._ID43692._ID23570, self._ID43692._ID24768._ID23570 );
        var_4 = var_3["progress"];
        var_4 += level._ID50860;
        var_5 = _unknown_1CFC( self._ID43692, var_4 );
        var_4 = var_5._ID28675;
        self._ID43692 = var_5._ID43692;
        self._ID28675 = var_4;
        self._ID25468 = var_3["offset"];

        if ( var_2 )
        {
            var_6 = _unknown_1D3C( self._ID43692, var_4 + 2000, 0 );
            var_6 = ( var_6[0], var_6[1], self._ID740[2] - 500 );
            var_1._ID740 = var_6;
            var_7 = _unknown_1D5C( self._ID43692, var_4 + 3000, 0 );
            var_8 = _func_11A( var_1._ID740 - var_7 );
            var_1._ID65 = ( 0, var_8[1], 0 );
        }

        if ( _ID42237::_ID14385( "ai_snowmobiles_ram_player" ) )
        {
            level._ID52919 = _ID42407::_ID3328( level._ID52919 );
            level._ID50102 = _ID42237::_ID16182( self._ID740, level._ID52919 );
        }
        else
            level._ID50102 = undefined;

        wait 0.05;
    }
}

_ID28677( var_0, var_1, var_2, var_3 )
{
    while ( var_0._ID517 > var_2._ID517 )
    {
        var_0 = var_0._ID28484;
        var_1 += var_0._ID43854;
    }

    while ( var_2._ID517 > var_0._ID517 )
    {
        var_2 = var_2._ID28484;
        var_3 += var_2._ID43854;
    }

    return var_1 - var_3;
}

_ID49869( var_0 )
{
    var_1 = var_0._ID44238;
    var_2 = 0.1;
    var_3 = 0;
    var_4 = 0;
    var_5 = var_1._ID50602;

    if ( var_5 == var_5._ID24768 )
    {
        var_1 _meth_80B7();
        return;
    }

    var_6 = _unknown_1948( var_1._ID740, var_5._ID23570, var_5._ID24768._ID23570 );
    var_7 = _unknown_1961( var_1._ID740, var_5._ID24768._ID23570, var_5._ID24768._ID24768._ID23570 );

    if ( var_7["progress"] > 0 && var_7["progress"] < var_5._ID24768._ID43854 )
    {
        var_6 = var_7;
        var_5 = var_5._ID24768;
    }

    var_4 = var_6["offset"];
    var_8 = 0;
    var_3 = var_6["progress"];
    var_1._ID28675 = var_3;
    var_9 = _unknown_1BBF( var_5, var_3, var_4 );
    var_10 = var_9["near_obstacle"];
    var_11 = _unknown_1D65( var_5, var_3, _unknown_1F63(), _unknown_1F5A() );
    var_1._ID28677 = var_11;

    if ( var_1._ID10864 == "forward" )
        var_3 += level._ID50860;
    else
    {
        var_3 -= level._ID50860;

        if ( var_11 < 500 )
            var_1._ID10864 = "forward";
    }

    var_12 = 60;
    var_13 = 90;
    var_14 = 100;
    var_15 = 200;

    if ( var_11 > var_15 )
        var_16 = var_12;
    else if ( var_11 < var_14 )
        var_16 = var_13;
    else
    {
        var_17 = var_15 - var_14;
        var_18 = var_13 - var_12;
        var_16 = var_11 - var_14;
        var_16 = var_17 - var_16;
        var_16 *= var_18 / var_17;
        var_16 += var_12;
    }

    if ( var_16 > 0 )
    {
        if ( var_1 _meth_8290() < 2 )
        {
            var_1._ID53513++;

            if ( var_1._ID53513 > 10 )
            {
                var_1 _unknown_1B53( "move fail!" );
                return;
            }
        }
        else
            var_1._ID53513 = 0;
    }
    else
        var_1._ID53513 = 0;

    var_19 = _func_0BA( 0, 100 );
    var_19 *= 0.001;
    var_20 = 0;
    var_21 = var_5._ID30057;
    var_0 = _unknown_1F18( var_5, var_3 );
    var_3 = var_0._ID28675;
    var_5 = var_0._ID43692;
    var_22 = var_5._ID23570 + var_5._ID24768._ID23570 * 0.5;
    var_4 = var_4 * var_5._ID30057 / var_21;
    var_9 = _unknown_1CC0( var_5, var_3, var_4 );

    if ( _func_02F( var_9["dodge"] ) )
        var_4 = var_9["dodge"];
    else if ( _func_02F( var_1._ID48816 ) )
        var_4 = var_1._ID48816;

    var_23 = 0.95;
    var_24 = var_5._ID30057 * 0.5;
    var_24 -= 50;

    if ( var_4 > var_24 )
        var_4 = var_24;
    else if ( var_4 < -1 * var_24 )
        var_4 = -1 * var_24;

    if ( var_5 != var_5._ID24768 )
    {
        var_25 = var_1 _unknown_1F9D( var_5, var_3, var_4, var_1._ID740[2] );
        var_26 = ( var_1._ID740[0], var_1._ID740[1], level._ID794._ID740[2] );
        var_27 = _ID42407::_ID15689( var_26, var_1._ID65, level._ID794._ID740 );
        var_16 = 1.0;

        if ( var_27 > 0.965 )
            var_16 = 0.7;

        if ( !_func_02F( level._ID794._ID40065 ) )
            var_1 _meth_828D( 65, 1, 1 );
        else
            var_1 _unknown_1E7B( 45, 30 );

        if ( _func_02F( var_1._ID46560 ) )
        {
            var_1._ID1278 = var_1._ID46560 * 1.25;
            var_1 _meth_8236( var_25, var_1._ID46560 * var_16 );
        }
    }

    var_1._ID50602 = var_5;
    var_1._ID25468 = var_4;
    wait(var_2);
}

_ID49825( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_206F( var_0, var_1, var_2 );
    var_4 = _ID42407::_ID32530( var_4, var_3 );
    return _func_091( var_4 + ( 0, 0, 200 ), var_4 + ( 0, 0, -200 ) );
}

_ID53483( var_0, var_1 )
{
    var_2 = _func_1A5();

    for (;;)
    {
        if ( var_0 == var_0._ID24768 )
            break;

        if ( var_1 > var_0._ID43854 )
        {
            var_1 -= var_0._ID43854;
            var_0 = var_0._ID24768;
            continue;
        }

        if ( var_1 < 0 )
        {
            var_1 += var_0._ID28484._ID43854;
            var_0 = var_0._ID28484;
            continue;
        }

        break;
    }

    var_2._ID43692 = var_0;
    var_2._ID28675 = var_1;
    return var_2;
}

_ID48037( var_0, var_1, var_2 )
{
    for (;;)
    {
        if ( var_0 == var_0._ID24768 )
            return var_0._ID23570;

        if ( var_1 > var_0._ID43854 )
        {
            var_1 -= var_0._ID43854;
            var_0 = var_0._ID24768;
            continue;
        }

        break;
    }

    return _unknown_2119( var_0, var_1, var_2 );
}

_ID15931( var_0, var_1, var_2 )
{
    var_3 = _func_11A( var_0._ID24768._ID23570 - var_0._ID23570 );
    var_4 = _func_11F( var_3 );
    var_5 = _func_11E( var_3 );
    return var_0._ID23570 + var_4 * var_1 + var_5 * var_2;
}

_ID48134( var_0, var_1 )
{
    var_2 = 1 - var_1 / var_0._ID43854;
    return var_0._ID23570 * var_2 + var_0._ID24768._ID23570 * 1 - var_2;
}

_ID51621( var_0 )
{
    self endon( "stop_bike" );

    for (;;)
    {
        self._ID41798 = 0;

        if ( self._ID41798 )
            break;

        wait 0.05;
    }
}

_ID51646()
{
    for (;;)
    {
        waitframe;
        wait 0.05;
    }
}

_ID51322()
{
    self endon( "stop_bike" );

    for (;;)
    {
        var_0 = ( self._ID740[0], self._ID740[1], 0 );
        var_1 = ( self._ID43692._ID23570[0], self._ID43692._ID23570[1], 0 );
        var_2 = ( self._ID49487._ID23570[0], self._ID49487._ID23570[1], 0 );
        var_3 = _func_119( var_1 - var_0 );
        var_4 = _func_11F( self._ID65 );
        var_5 = _func_0FB( var_4, var_3 );
        var_6 = _func_119( var_2 - var_1 );
        var_7 = var_0 - var_1;
        self._ID28675 = _func_0FB( var_7, var_6 );
        wait 0.05;
    }
}

_ID45598( var_0 )
{
    self._ID46913 = var_0._ID30057 * 0.5;
    self._ID44718 = self._ID46913 - 100;
}

_ID52203( var_0 )
{
    self endon( "stop_bike" );
    self endon( "end_path" );
    self._ID49381 = 0;
    thread _unknown_226D();
    _unknown_229E();
}

_ID46344()
{
    self endon( "stop_bike" );
    self endon( "end_path" );

    for (;;)
    {
        if ( self._ID43692._ID8214.size == 0 && self._ID45733 == 0 )
        {
            if ( _ID42237::_ID8201() )
                self._ID49381++;
            else
                self._ID49381--;

            if ( self._ID49381 > 1 )
                self._ID49381 = self._ID49381 - 3;
            else if ( self._ID49381 < -1 )
                self._ID49381 = self._ID49381 + 3;
        }

        wait(_func_0BA( 1, 3 ));
    }
}

_ID49763()
{
    if ( self._ID49381 == 0 )
        return 1;

    if ( self._ID49381 == 1 && self._ID25468 > self._ID44718 )
        return 1;

    if ( self._ID49381 == -1 && self._ID25468 < self._ID44718 * -1 )
        return 1;

    return 0;
}

_ID50208()
{
    self._ID47695 = 0;
    var_0 = 12;
    var_1 = 3;
    var_2 = 130;

    for (;;)
    {
        if ( _unknown_2323() )
        {
            if ( self._ID52198 > 0 )
                self._ID47695 = self._ID47695 - var_1;
            else if ( self._ID52198 < 0 )
                self._ID47695 = self._ID47695 + var_1;
        }
        else if ( self._ID49381 == 1 )
            self._ID47695 = self._ID47695 + var_1;
        else if ( self._ID49381 == -1 )
            self._ID47695 = self._ID47695 - var_1;

        if ( self._ID47695 > var_0 )
            self._ID47695 = var_0;
        else if ( self._ID47695 < -1 * var_0 )
            self._ID47695 = -1 * var_0;

        self._ID52198 = self._ID52198 + self._ID47695;

        if ( self._ID52198 > var_2 )
        {
            self._ID52198 = var_2;
            self._ID47695 = 1;
        }
        else if ( self._ID52198 < var_2 * -1 )
        {
            self._ID52198 = var_2 * -1;
            self._ID47695 = -1;
        }

        wait 0.05;
    }
}

_ID47518( var_0, var_1 )
{
    if ( self._ID52198 > 0 )
        self._ID52198 = self._ID52198 - var_1;
    else
        self._ID52198 = self._ID52198 + var_1;

    if ( _func_0C3( self._ID52198 ) < var_1 )
        self._ID52198 = var_1;
}

_ID43044( var_0, var_1 )
{
    if ( self._ID25468 >= self._ID44718 )
    {
        self._ID49381 = 0;
        return;
    }

    self._ID52198 = self._ID52198 + var_1;

    if ( self._ID52198 >= var_0 )
        self._ID52198 = var_0;
}

_ID50760( var_0, var_1 )
{
    if ( self._ID25468 < self._ID44718 * -1 )
    {
        self._ID49381 = 0;
        return;
    }

    self._ID52198 = self._ID52198 - var_1;

    if ( self._ID52198 < var_0 * -1 )
        self._ID52198 = var_0 * -1;
}

_ID53297()
{
    if ( _func_02F( level._ID794._ID28675 ) )
        return level._ID794._ID28675;

    return 0;
}

_ID53431()
{
    if ( _func_02F( level._ID794._ID43692 ) )
        return level._ID794._ID43692;

    return level._ID45355[0];
}

_ID9856()
{
    var_0 = ( 0.2, 0.2, 1 );

    if ( _func_02F( level._ID794._ID40065 ) && self._ID1276 > level._ID794._ID40065._ID1276 )
        var_0 = ( 1, 0.2, 0.2 );

    self._ID51964 = self._ID740;
}
