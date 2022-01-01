// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46928()
{
    _ID42237::_ID9137( "vehicle_spline_debug", 0 );
    level._ID47317 = -2000;
    level._ID44434 = 6;
    level._ID47642 = spawn( "script_origin", level._ID794._ID740 + ( 0, 0, 88 ) );
    level._ID47642 linkto( level._ID794 );
    level._ID45355 = _ID48006();
    _ID42237::_ID14400( "ai_snowmobiles_ram_player" );
    _ID42237::_ID14402( "ai_snowmobiles_ram_player" );
    var_0 = getentarray( "enable_spline_path", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID51075 );
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
    level._ID44744 = ::_ID49790;
    var_0 = _ID46906();
    _ID42237::_ID14400( "race_complete" );
    level._ID47781 = spawn( "script_model", ( 0, 0, 0 ) );
    level._ID47781 setmodel( "tag_origin" );
    level._ID52919 = [];
    level._ID47297 = 0;
    level._ID794 thread _ID52155();
    return var_0;
}

_ID52155()
{
    self waittill( "death" );
}

_ID47501()
{
    var_0 = getent( "spawner", "targetname" );
    var_0._ID216 = 1;
    var_0._ID740 = self._ID740;
    var_0._ID65 = ( 0, self._ID65[1], 0 );
    return var_0 stalingradspawn();
}

_ID54108( var_0 )
{
    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        self orientmode( "face angle", var_0 );
        wait 0.05;
    }
}

_ID46906()
{
    var_0 = _ID9172();
    level._ID45355 = var_0;
    _ID1862( var_0 );
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
        var_5 = vectortoangles( var_4._ID24768._ID23570 - var_4._ID23570 );
        var_6 = anglestoforward( var_5 ) * var_4._ID43854;
        var_7 = var_4._ID30057 * 0.5;

        if ( var_3 < var_0.size - 1 )
            var_8 = var_0[var_3 + 1];
        else
            var_8 = var_0[var_3];

        var_9 = var_8._ID30057 * 0.5;
        var_10 = _ID15931( var_4, 0, var_7 );
        var_11 = _ID15931( var_4, var_4._ID43854, var_9 );
        _ID46124( var_4._ID1342, var_10, var_11, ( 0, 0.5, 1 ), 1, 1, 50000 );
        var_12 = _ID15931( var_4, 0, var_7 * -1 );
        var_13 = _ID15931( var_4, var_4._ID43854, var_9 * -1 );
        _ID46124( var_4._ID1342, var_12, var_13, ( 0, 0.5, 1 ), 1, 1, 50000 );
        _ID46124( var_4._ID1342, var_10, var_12, ( 0, 0.5, 1 ), 1, 1, 50000 );
        _ID46124( var_4._ID1342, var_11, var_13, ( 0, 0.5, 1 ), 1, 1, 50000 );

        foreach ( var_15 in var_4._ID8214 )
            var_4 _ID11690( var_4._ID1342, var_15 );

        foreach ( var_18 in var_4._ID8211 )
        {
            var_19 = var_18._ID740;
            var_20 = var_18._ID26035._ID740;
            _ID46124( var_4._ID1342, var_19, var_20, ( 1, 0, 0 ), 1, 1, 50000 );
        }
    }
}

_ID11690( var_0, var_1 )
{
    var_2 = _ID15931( self, var_1["min"], var_1["left_offset"] );
    var_3 = _ID15931( self, var_1["max"], var_1["left_offset"] );
    _ID46124( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
    var_2 = _ID15931( self, var_1["min"], var_1["right_offset"] );
    var_3 = _ID15931( self, var_1["max"], var_1["right_offset"] );
    _ID46124( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
    var_2 = _ID15931( self, var_1["min"], var_1["right_offset"] );
    var_3 = _ID15931( self, var_1["min"], var_1["left_offset"] );
    _ID46124( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
    var_2 = _ID15931( self, var_1["max"], var_1["right_offset"] );
    var_3 = _ID15931( self, var_1["max"], var_1["left_offset"] );
    _ID46124( var_0, var_2, var_3, ( 0.5, 0, 1 ), 1, 1, 50000 );
}

_ID53170( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = self;
    var_6 = _ID15931( var_5, var_1["min"], var_1[var_2] );
    var_7 = _ID15931( var_5, var_1["max"], var_1[var_2] );
    _ID46124( var_0, var_6, var_7, ( 0.5, 0, 1 ), 1, 1, 50000 );
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

        if ( isdefined( var_0._ID1191 ) )
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

        if ( isdefined( var_0._ID1191 ) )
            var_4 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

        var_4._ID740 = ( var_4._ID740[0], var_4._ID740[1], 0 );
        var_6 = var_1[var_5];
        var_6._ID26027["right"] = var_0._ID740;
        var_6._ID30057 = distance( var_6._ID26027["right"], var_6._ID26027["left"] );
        var_5++;

        if ( var_0 == var_4 )
            break;

        var_0 = var_4;
    }

    foreach ( var_8 in var_1 )
        var_8._ID23570 = ( var_8._ID26027["left"] + var_8._ID26027["right"] ) * 0.5;

    foreach ( var_8 in var_1 )
    {
        var_11 = var_8._ID23570;
        var_12 = var_8._ID24768._ID23570;
        var_13 = vectortoangles( var_11 - var_12 );
        var_14 = anglestoright( var_13 );
        var_15 = var_8._ID30057 * 0.5;
        var_8._ID26027["left"] = var_8._ID23570 + var_14 * var_15;
        var_8._ID26027["right"] = var_8._ID23570 + var_14 * var_15 * -1;
    }

    var_8 = var_1[var_1.size - 1]._ID24768;
    var_8._ID23570 = ( var_8._ID26027["left"] + var_8._ID26027["right"] ) * 0.5;

    foreach ( var_8 in var_1 )
    {
        var_8._ID43854 = distance( var_8._ID23570, var_8._ID24768._ID23570 );
        var_8._ID44289["left"] = distance( var_8._ID26027["left"], var_8._ID24768._ID26027["left"] );
        var_8._ID44289["right"] = distance( var_8._ID26027["right"], var_8._ID24768._ID26027["right"] );
    }

    return var_1;
}

_ID48750( var_0 )
{
    var_1 = self;

    foreach ( var_3 in var_0 )
    {
        var_3._ID740 = var_3._ID740 + ( 0, 0, 20 );
        var_4 = physicstrace( var_3._ID740, var_3._ID740 + ( 0, 0, -100 ) );
        var_3._ID740 = var_4;
    }
}

_ID1862( var_0 )
{
    var_1 = _ID42237::_ID16640( "moto_line", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3._ID740 = ( var_3._ID740[0], var_3._ID740[1], 0 );
        var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
        var_3._ID26035 = var_4;
        var_4._ID26035 = var_3;
    }

    foreach ( var_3 in var_1 )
    {

    }

    var_8 = self;

    foreach ( var_10 in var_0 )
    {
        foreach ( var_3 in var_1 )
            _ID48586( var_10, var_3 );
    }

    var_14 = getentarray( "moto_collision", "targetname" );

    foreach ( var_16 in var_14 )
    {
        var_17 = _ID42237::_ID15566( var_16._ID740, var_0, undefined, 2 );

        foreach ( var_10 in var_17 )
            var_10._ID52236[var_10._ID52236.size] = var_16;
    }
}

_ID52401( var_0, var_1, var_2, var_3 )
{
    var_4 = distance( var_0._ID23570, var_1._ID23570 );
    var_5 = 1 - var_2 / var_4;
    var_6 = "left";

    if ( var_3 > 0 )
        var_6 = "right";

    var_7 = var_0._ID26027[var_6];
    var_8 = var_1._ID26027[var_6];
    var_9 = var_7 * var_5 + var_8 * ( 1 - var_5 );
    var_10 = var_0._ID23570;
    var_11 = var_1._ID23570;
    var_12 = var_10 * var_5 + var_11 * ( 1 - var_5 );
    var_13 = distance( var_12, var_9 );
    return var_3 / var_13;
}

_ID48586( var_0, var_1 )
{
    if ( var_0 == var_0._ID24768 )
        return;

    var_2 = var_0._ID30057;

    if ( var_0._ID43854 > var_2 )
        var_2 = var_0._ID43854;

    if ( distance( var_1._ID740, var_0._ID24768._ID23570 ) > var_2 * 1.5 )
        return;

    var_3 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    var_4 = _ID15937( var_1._ID740, var_0._ID23570, var_0._ID24768._ID23570 );
    var_5 = var_4["progress"];
    var_6 = _ID15937( var_3._ID740, var_0._ID23570, var_0._ID24768._ID23570 );
    var_7 = var_6["progress"];

    if ( var_5 < 0 || var_7 < 0 )
        return;

    if ( var_5 > var_0._ID43854 && var_7 > var_0._ID43854 )
        return;

    var_1._ID7712 = 1;
    var_3._ID7712 = 1;
    var_1._ID28675 = var_5;
    var_1._ID25468 = var_4["offset"];
    var_1._ID54439 = _ID52401( var_0, var_0._ID24768, var_5, var_4["offset"] );
    var_3._ID28675 = var_7;
    var_3._ID25468 = var_6["offset"];
    var_3._ID54439 = _ID52401( var_0, var_0._ID24768, var_7, var_6["offset"] );
    var_1._ID740 = ( var_1._ID740[0], var_1._ID740[1], var_0._ID23570[2] + 40 );
    var_3._ID740 = ( var_3._ID740[0], var_3._ID740[1], var_0._ID23570[2] + 40 );

    if ( var_5 < var_7 )
    {
        _ID1861( var_0, var_1, var_3 );
        var_0._ID8211[var_0._ID8211.size] = var_1;
    }
    else
    {
        _ID1861( var_0, var_3, var_1 );
        var_0._ID8211[var_0._ID8211.size] = var_3;
    }
}

_ID1861( var_0, var_1, var_2 )
{
    var_3 = var_2._ID28675 + 500;
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
        _ID1983( var_0, var_3, var_4, var_5, var_6, var_7, var_8 );

        if ( !isdefined( var_0._ID24768 ) )
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
        if ( !isdefined( var_0._ID53771 ) )
            break;

        if ( var_4 > 0 )
            break;

        var_0 = var_0._ID53771;
        var_3 = var_0._ID43854;
        var_4 = var_0._ID43854 + var_4;
        _ID1983( var_0, var_3, var_4, var_5, var_6, var_7, var_8 );
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
    var_7["mid_offset"] = ( var_3 + var_4 ) * 0.5;
    var_7["mid_offset_percent"] = ( var_5 + var_6 ) * 0.5;
    var_0._ID8214[var_0._ID8214.size] = var_7;
}

_ID15937( var_0, var_1, var_2 )
{
    var_1 = ( var_1[0], var_1[1], 0 );
    var_2 = ( var_2[0], var_2[1], 0 );
    var_0 = ( var_0[0], var_0[1], 0 );
    var_3 = [];
    var_4 = vectortoangles( var_2 - var_1 );
    var_5 = anglestoforward( var_4 );
    var_6 = var_1;
    var_7 = vectornormalize( var_6 - var_0 );
    var_8 = vectordot( var_5, var_7 );
    var_9 = vectornormalize( var_2 - var_1 );
    var_10 = var_0 - var_1;
    var_11 = vectordot( var_10, var_9 );
    var_12 = var_1 + var_5 * var_11;
    var_3["progress"] = var_11;
    var_3["offset"] = distance( var_12, var_0 );
    var_13 = anglestoright( var_4 );
    var_7 = vectornormalize( var_12 - var_0 );
    var_8 = vectordot( var_13, var_7 );
    var_3["dot"] = var_8;

    if ( var_8 > 0 )
        var_3["offset"] *= -1;

    return var_3;
}

_ID46401( var_0 )
{
    foreach ( var_2 in self._ID43692._ID52236 )
    {
        var_3 = ( self._ID740[0], self._ID740[1], 0 );

        if ( distance( ( var_2._ID740[0], var_2._ID740[1], 0 ), var_3 ) < var_2._ID851 )
            return 1;
    }

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

    if ( !isdefined( self._ID29965 ) )
        return;

    var_0 = "axis";

    if ( _ID42237::_ID8201() )
        var_0 = "allies";

    foreach ( var_2 in self._ID29965 )
        var_2._ID1194 = var_0;
}

_ID45925( var_0, var_1 )
{
    var_2 = _ID53483( var_0, var_1 );
    var_3 = var_2._ID28675;
    var_4 = var_2._ID43692;
    var_5 = var_4._ID30057 * 0.5;
    var_6 = undefined;

    if ( isdefined( level._ID794._ID25468 ) )
    {
        var_7 = 500;

        if ( !isdefined( level._ID50193 ) )
            level._ID50193 = 0;

        var_7 += ( -300 + level._ID50193 * 50 );
        level._ID50193 = ( level._ID50193 + 7 ) % 9;

        if ( _ID42237::_ID8201() )
            var_7 *= -1;

        var_6 = level._ID794._ID25468 + var_7;
    }
    else
        var_6 = randomfloatrange( var_5 * -1, var_5 );

    var_8 = _ID15873( var_4, var_3, var_6 );

    if ( isdefined( var_8["dodge"] ) )
        var_6 = var_8["dodge"];

    var_9 = _ID48037( var_4, var_3, var_6 );
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

    var_0 = _ID53431();
    var_1 = _ID53297();
    var_2 = "forward";
    var_3 = _ID45925( var_0, var_1 - 1000 - level._ID50860 );
    var_4 = var_3["spawn_pos"];
    var_5 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_4, 0 );

    if ( var_5 )
    {
        var_3 = _ID45925( var_0, var_1 + 1000 );
        var_4 = var_3["spawn_pos"];
        var_2 = "backward";
        var_5 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_4, 0 );

        if ( var_5 )
            return;
    }

    var_4 = _ID42237::_ID12140( var_4 );
    var_6 = getent( "snowmobile_spawner", "targetname" );
    var_7 = var_3["targ"];
    var_6._ID740 = var_4;
    var_6._ID65 = vectortoangles( var_7._ID24768._ID23570 - var_7._ID23570 );
    var_8 = var_6 _ID42413::_ID16055();

    foreach ( var_10 in var_8 )
        var_10._ID740 = var_6._ID740;

    var_12 = _ID42411::_ID40260( var_6 );
    var_12._ID54439 = var_3["offset"];
    var_12 vehphys_setspeed( 90 );
    var_12 thread _ID54183();
    var_12._ID52090 = gettime() - 3000;
    waitframe;

    if ( !isalive( var_12 ) )
        return;

    var_7 _ID49790( var_12 );
}

_ID54183()
{
    self waittill( "veh_collision",  var_0, var_1  );
    _ID41798( "collision!" );
}

_ID29962( var_0 )
{
    self waittill( "death" );

    if ( isdefined( var_0 ) )
        var_0 _ID41798( "driver died!" );
}

_ID41798( var_0 )
{
    self._ID41798 = 1;
}

_ID44383( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._ID52919 )
    {
        if ( !isalive( var_3 ) )
            continue;

        if ( var_3._ID41798 )
            continue;

        var_1[var_1.size] = var_3;
    }

    level._ID52919 = var_1;

    if ( isalive( var_0 ) && !var_0._ID41798 )
    {
        var_5 = 0;

        foreach ( var_3 in level._ID52919 )
        {
            if ( var_3 == var_0 )
            {
                var_5 = 1;
                continue;
            }
        }

        if ( !var_5 )
            level._ID52919[level._ID52919.size] = var_0;
    }

    var_8 = 0;

    foreach ( var_3 in level._ID52919 )
    {
        var_3._ID47500 = var_8;
        var_8 += 75;
    }
}

_ID49217( var_0, var_1 )
{
    var_2 = 122500;
    var_3 = 15;

    foreach ( var_5 in level._ID52919 )
    {
        if ( var_5 == var_0 )
            continue;

        var_6 = var_0._ID740 - var_5._ID740;
        var_7 = length2dsquared( var_6 );

        if ( var_7 >= var_2 )
            continue;

        var_8 = anglestoforward( level._ID794._ID65 );
        var_9 = var_0._ID740 - level._ID794._ID740;

        if ( vectordot( var_9, var_8 ) < 0 )
            continue;

        var_10 = anglestoright( level._ID794._ID65 );

        if ( vectordot( var_10, var_6 ) < 0 )
        {
            var_1 -= var_3;
            continue;
        }

        var_1 += var_3;
    }

    return var_1;
}

_ID49790( var_0 )
{
    if ( !isdefined( var_0._ID52090 ) )
        var_0._ID52090 = gettime();

    var_0._ID41798 = 0;
    _ID44383( var_0 );

    if ( !isdefined( var_0._ID47178 ) )
        var_0._ID47178 = 250;

    var_0._ID36388 = 0;
    var_1 = randomfloatrange( 0, 1 );

    if ( !isdefined( var_0._ID54439 ) )
        var_0._ID54439 = var_1 * 2 - 1;

    var_2 = self;
    var_3 = spawnstruct();
    var_3._ID740 = self._ID23570;
    var_3._ID28675 = 0;
    var_3._ID47695 = 0;
    var_3._ID997 = 100;
    var_3 _ID42407::_ID13024( "biker_reaches_path_end" );
    var_0 notify( "enable_spline_path" );

    if ( !var_0._ID29965.size )
    {
        var_0 vehphys_crash();
        return;
    }

    _ID42237::_ID3350( var_0._ID29965, ::_ID29962, var_0 );
    var_3._ID44238 = var_0;
    var_0._ID486 = 100;
    var_4 = 0;
    var_3 thread _ID51621( var_0 );
    var_0._ID50602 = var_2;
    var_0._ID49188 = 0;
    var_0._ID53513 = 0;
    var_0._ID10864 = "forward";
    var_0._ID51964 = var_0._ID740;

    for (;;)
    {
        if ( !isalive( var_0 ) )
            break;

        _ID49869( var_3 );

        if ( !isalive( var_0 ) )
            break;

        if ( abs( var_0._ID28677 ) > 6000 && gettime() > var_0._ID52090 + 4000 )
            var_0 _ID41798( "left behind!" );

        waitframe;

        if ( var_0._ID41798 )
        {
            if ( isdefined( var_0._ID45883 ) )
                continue;

            var_0 vehphys_crash();

            foreach ( var_6 in var_0._ID29965 )
            {
                if ( isalive( var_6 ) )
                {
                    _ID45456::_ID54623( var_6 );
                    var_6 kill();
                }
            }

            wait 5;

            while ( isdefined( var_0 ) && _ID42407::_ID12324( var_0._ID740, 0.6, 1 ) )
                wait 1;

            if ( isdefined( var_0 ) )
                var_0 delete();

            _ID44383();
            return;
        }

        if ( var_3 _ID42407::_ID13019( "biker_reaches_path_end" ) || _ID42237::_ID14385( "race_complete" ) )
            break;
    }

    _ID44383();
    var_3 notify( "stop_bike" );
    level notify( "biker_dies" );

    if ( var_0._ID41798 && !_ID42237::_ID14385( "race_complete" ) )
        wait 5;

    var_3 _ID42407::_ID13021( "biker_reaches_path_end" );
}

_ID15873( var_0, var_1, var_2 )
{
    var_3["near_obstacle"] = 0;

    foreach ( var_5 in var_0._ID8214 )
    {
        if ( var_1 < var_5["min"] )
            continue;

        if ( var_1 > var_5["max"] )
            continue;

        var_3["near_obstacle"] = 1;

        if ( var_2 < var_5["left_offset"] )
            continue;

        if ( var_2 > var_5["right_offset"] )
            continue;

        var_6 = ( var_0._ID23570 + var_0._ID24768._ID23570 ) * 0.5;

        if ( var_2 > var_5["mid_offset"] )
            var_3["dodge"] = var_5["right_offset"];
        else
            var_3["dodge"] = var_5["left_offset"];

        break;
    }

    return var_3;
}

_ID46115()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isdefined( var_0._ID922 ) )
            continue;

        if ( var_0._ID922 != "sweepable" )
            continue;

        var_1 = randomfloatrange( 0, 1 );
        var_0 thread _ID42407::_ID25088( "enable_spline_path", var_1 );
    }
}

_ID52120()
{
    for (;;)
    {
        if ( isdefined( level._ID794._ID40065 ) )
        {
            var_0 = self vehicle_getspeed();
            var_1 = level._ID794._ID40065 vehicle_getspeed();
            level._ID44230 = var_0 - var_1;
        }

        wait 0.05;
    }
}

_ID49320()
{

}

_ID44177()
{
    thread _ID49320();
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

        var_2 = _ID15937( self._ID740, self._ID43692._ID23570, self._ID43692._ID24768._ID23570 );
        var_3 = var_2["progress"];
        var_3 += level._ID50860;
        var_4 = _ID53483( self._ID43692, var_3 );
        var_3 = var_4._ID28675;
        self._ID43692 = var_4._ID43692;
        self._ID28675 = var_3;
        var_5 = _ID53431();
        var_6 = _ID53297();
        var_7 = _ID28677( self._ID43692, self._ID28675, var_5, var_6 );
        level._ID28677 = var_7;

        if ( !isdefined( level._ID794._ID40065 ) )
        {
            self vehicle_setspeed( 65, 1, 1 );
            continue;
        }

        if ( abs( var_7 > 3500 ) )
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
            self vehicle_setspeed( var_8, 90, 20 );
            continue;
        }

        _ID47276( 10, 10 );
    }
}

_ID47276( var_0, var_1 )
{
    var_2 = self._ID65;
    var_2 = ( 0, var_2[1], 0 );
    var_3 = anglestoforward( var_2 );
    var_4 = _ID15937( level._ID794._ID40065._ID740, self._ID740 + var_3 * 1, self._ID740 - var_3 * 1 );
    var_5 = var_4["progress"];

    if ( var_5 > 4000 )
        self vehicle_setspeed( 0, 90, 20 );
    else
    {
        var_6 = _ID42407::_ID15689( self._ID740, self._ID65, level._ID794._ID740 );
        var_7 = 1;

        if ( var_5 > 0 )
            var_7 = 1;
        else if ( var_5 > -500 )
        {
            if ( var_6 > 0.97 )
                var_7 = 0.95;
            else
                var_7 = 1.25;
        }
        else
            var_7 = 1.5;

        var_8 = max( 70, level._ID794._ID40065._ID1276 ) * var_7;

        if ( var_8 < self._ID23610 )
            var_8 = self._ID23610;

        if ( var_8 < 25 )
            var_8 = 25;

        level._ID53113 = var_8;
        self vehicle_setspeed( var_8, var_0, var_1 );
    }
}

_ID23008( var_0, var_1 )
{
    var_2 = self._ID65;
    var_2 = ( 0, var_2[1], 0 );
    var_3 = anglestoforward( var_2 );
    var_4 = _ID15937( level._ID794._ID40065._ID740, self._ID740 + var_3 * 1, self._ID740 - var_3 * 1 );
    var_5 = var_4["progress"];

    if ( var_5 > 4000 )
        self vehicle_setspeed( 0, 90, 20 );
    else
    {
        if ( var_5 < level._ID47317 && gettime() > self._ID52090 + 4000 )
            _ID41798( "low progress!" );

        var_5 -= 750;
        var_5 += self._ID47500;
        var_6 = 1;

        if ( var_5 > 150 )
            var_6 = 0.6;
        else if ( var_5 > 100 )
            var_6 = 1.0;
        else if ( var_5 < -100 )
            var_6 = 1.5;

        if ( isdefined( level._ID794._ID25468 ) )
        {
            if ( var_5 > 250 )
            {

            }
        }

        var_7 = level._ID794._ID40065._ID1276 * var_6;

        if ( var_7 < 25 )
            var_7 = 25;

        self vehicle_setspeed( var_7, var_0, var_1 );
    }
}

_ID44064( var_0 )
{
    self notify( "track_player_progress" );
    self endon( "track_player_progress" );
    self._ID43692 = _ID42411::_ID46021( var_0 );
    self._ID28675 = 0;
    var_1 = getent( "player_sweep_trigger", "targetname" );
    var_2 = isdefined( var_1 );

    if ( var_2 )
        var_1 thread _ID46115();

    for (;;)
    {
        if ( self._ID43692 == self._ID43692._ID24768 )
            return;

        var_3 = _ID15937( self._ID740, self._ID43692._ID23570, self._ID43692._ID24768._ID23570 );
        var_4 = var_3["progress"];
        var_4 += level._ID50860;
        var_5 = _ID53483( self._ID43692, var_4 );
        var_4 = var_5._ID28675;
        self._ID43692 = var_5._ID43692;
        self._ID28675 = var_4;
        self._ID25468 = var_3["offset"];

        if ( var_2 )
        {
            var_6 = _ID48037( self._ID43692, var_4 + 2000, 0 );
            var_6 = ( var_6[0], var_6[1], self._ID740[2] - 500 );
            var_1._ID740 = var_6;
            var_7 = _ID48037( self._ID43692, var_4 + 3000, 0 );
            var_8 = vectortoangles( var_1._ID740 - var_7 );
            var_1._ID65 = ( 0, var_8[1], 0 );
        }

        if ( _ID42237::_ID14385( "ai_snowmobiles_ram_player" ) )
            level._ID50102 = _ID42237::_ID16182( self._ID740, level._ID52919 );
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
        var_1 delete();
        return;
    }

    var_6 = _ID15937( var_1._ID740, var_5._ID23570, var_5._ID24768._ID23570 );
    var_7 = _ID15937( var_1._ID740, var_5._ID24768._ID23570, var_5._ID24768._ID24768._ID23570 );

    if ( var_7["progress"] > 0 && var_7["progress"] < var_5._ID24768._ID43854 )
    {
        var_6 = var_7;
        var_5 = var_5._ID24768;
    }

    var_4 = var_6["offset"];
    var_8 = 0;
    var_3 = var_6["progress"];
    var_1._ID28675 = var_3;
    var_4 = _ID49217( var_1, var_4 );
    var_9 = _ID15873( var_5, var_3, var_4 );
    var_10 = var_9["near_obstacle"];
    var_11 = _ID28677( var_5, var_3, _ID53431(), _ID53297() );
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
        if ( var_1 vehicle_getspeed() < 2 )
        {
            var_1._ID53513++;

            if ( var_1._ID53513 > 10 )
            {
                var_1 _ID41798( "move fail!" );
                return;
            }
        }
        else
            var_1._ID53513 = 0;
    }
    else
        var_1._ID53513 = 0;

    var_19 = randomfloatrange( 0, 100 );
    var_19 *= 0.001;
    var_20 = 0;
    var_21 = var_5._ID30057;
    var_0 = _ID53483( var_5, var_3 );
    var_3 = var_0._ID28675;
    var_5 = var_0._ID43692;
    var_22 = ( var_5._ID23570 + var_5._ID24768._ID23570 ) * 0.5;
    var_4 = var_4 * var_5._ID30057 / var_21;
    var_9 = _ID15873( var_5, var_3, var_4 );

    if ( isdefined( var_9["dodge"] ) )
        var_4 = var_9["dodge"];
    else if ( isdefined( var_1._ID48816 ) )
        var_4 = var_1._ID48816;

    var_23 = 0.95;
    var_24 = clamp( 1 - var_3 / var_5._ID43854, 0, 1 );
    var_25 = var_5._ID30057 * var_24 + var_5._ID24768._ID30057 * ( 1 - var_24 );
    var_26 = var_25 * 0.5;
    var_26 -= 50;

    if ( var_4 > var_26 )
        var_4 = var_26;
    else if ( var_4 < -1 * var_26 )
        var_4 = -1 * var_26;

    if ( var_5 != var_5._ID24768 )
    {
        var_27 = var_1 _ID49825( var_5, var_3, var_4, var_1._ID740[2] );
        var_28 = _ID42407::_ID15689( var_1._ID740, var_1._ID65, var_27 );

        if ( var_28 < 0.97 )
            var_16 = 50;
        else if ( var_28 < 0.96 )
            var_16 = 25;
        else if ( var_28 < 0.95 )
            var_16 = 15;

        var_1 vehicledriveto( var_27, var_16 );

        if ( !isdefined( level._ID794._ID40065 ) )
            var_1 vehicle_setspeed( 65, 1, 1 );
        else
        {
            var_1._ID1278 = level._ID794._ID40065._ID1278 * 1.3;
            var_1 _ID23008( 45, 30 );
        }
    }

    var_1._ID50602 = var_5;
    var_1._ID25468 = var_4;
    wait(var_2);
}

_ID49825( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID15931( var_0, var_1, var_2 );
    var_4 = _ID42407::_ID32530( var_4, var_3 );
    return physicstrace( var_4 + ( 0, 0, 200 ), var_4 + ( 0, 0, -200 ) );
}

_ID53483( var_0, var_1 )
{
    var_2 = spawnstruct();

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
            var_1 += var_0._ID43854;
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

    return _ID15931( var_0, var_1, var_2 );
}

_ID48134( var_0, var_1 )
{
    var_2 = 1 - var_1 / var_0._ID43854;
    return var_0._ID23570 * var_2 + var_0._ID24768._ID23570 * ( 1 - var_2 );
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
        var_3 = vectornormalize( var_1 - var_0 );
        var_4 = anglestoforward( self._ID65 );
        var_5 = vectordot( var_4, var_3 );
        var_6 = vectornormalize( var_2 - var_1 );
        var_7 = var_0 - var_1;
        self._ID28675 = vectordot( var_7, var_6 );
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
    thread _ID46344();
    _ID50208();
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

        wait(randomfloatrange( 1, 3 ));
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
        if ( _ID49763() )
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

    if ( abs( self._ID52198 ) < var_1 )
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
    if ( isdefined( level._ID794._ID28675 ) )
        return level._ID794._ID28675;

    return 0;
}

_ID53431()
{
    if ( isdefined( level._ID794._ID43692 ) )
        return level._ID794._ID43692;

    return level._ID45355[0];
}

_ID9856()
{
    var_0 = ( 0.2, 0.2, 1 );

    if ( isdefined( level._ID794._ID40065 ) && self._ID1276 > level._ID794._ID40065._ID1276 )
        var_0 = ( 1, 0.2, 0.2 );

    self._ID51964 = self._ID740;
}

_ID15931( var_0, var_1, var_2 )
{
    var_3 = vectortoangles( var_0._ID24768._ID23570 - var_0._ID23570 );
    var_4 = anglestoforward( var_3 );
    var_5 = anglestoright( var_3 );
    return var_0._ID23570 + var_4 * var_1 + var_5 * var_2;
}
