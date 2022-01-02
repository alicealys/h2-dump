// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19829( var_0 )
{
    _ID42237::_ID9137( "vehicle_free_path_debug", 0 );
    _ID7772( 1 );
    _ID32946();
    level._ID12875 = [];
    level._ID11775 = ::_ID40128;
    level._ID40137 = _ID33041( var_0 );
    _ID42237::_ID30398( "enable_free_path", ::_ID12487 );
}

_ID32946()
{
    if ( !isdefined( level._ID14880 ) )
        level._ID14880 = -4000;

    if ( !isdefined( level._ID14878 ) )
        level._ID14878 = -2000;

    if ( !isdefined( level._ID14877 ) )
        level._ID14877 = 100;

    if ( !isdefined( level._ID14884 ) )
        level._ID14884 = 650;

    if ( !isdefined( level._ID14883 ) )
        level._ID14883 = 2000;

    if ( !isdefined( level._ID14879 ) )
        level._ID14879 = 4000;

    if ( !isdefined( level._ID14881 ) )
        level._ID14881 = 1.0;

    if ( !isdefined( level._ID14882 ) )
        level._ID14882 = 0.6;

    if ( !isdefined( level._ID14876 ) )
        level._ID14876 = 1.6;

    if ( !isdefined( level._ID14885 ) )
        level._ID14885 = 200;

    if ( !isdefined( level._ID14886 ) )
        level._ID14886 = 200;

    if ( !isdefined( level._ID14888 ) )
        level._ID14888 = 25.0;

    if ( !isdefined( level._ID14875 ) )
        level._ID14875 = 200;

    if ( !isdefined( level._ID14887 ) )
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

    if ( var_0 && isdefined( level._ID12875 ) )
    {
        foreach ( var_2 in level._ID12875 )
        {
            if ( !_func_2a5( var_2 ) )
                var_2 delete();
        }
    }

    level._ID12875 = undefined;

    if ( isdefined( level.player._ID11803 ) && isdefined( level.player._ID11803._ID28679 ) )
        level.player._ID11803._ID28679 = undefined;
}

_ID35193( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( level._ID12875 ) )
        level._ID12875 = [];

    if ( level._ID12875.size >= 8 )
        return undefined;

    if ( var_2 && var_3 )
    {
        var_4 = getentarray( self.target, "targetname" );
        var_5 = [];

        foreach ( var_7 in var_4 )
        {
            if ( var_7.code_classname == "info_vehicle_node" )
                continue;

            var_5[var_5.size] = var_7;
        }

        var_5 = _ID42237::_ID15566( self.origin, var_5 );

        foreach ( var_11, var_10 in var_5 )
            var_10 thread _ID42407::_ID1947( ::_ID17587, self, var_11 );

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

    if ( isdefined( var_0 ) )
        var_12 vehphys_setspeed( var_0 );

    if ( var_1 )
    {
        wait 0.15;
        var_12 _ID22121( 1, var_0 );
    }
    else
    {
        var_12 thread _ID22121( 0, var_0 );
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

    var_2 = _ID15843( self.origin );

    if ( isdefined( level._ID11775 ) )
        var_2 thread [[ level._ID11775 ]]( self, var_1 );

    thread _ID40089();
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
    var_1 = _ID9172( var_0 );
    _ID1862( var_1 );
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

        if ( isdefined( var_1.target ) )
            var_5 = _ID42237::_ID16638( var_1.target, "targetname" );

        var_1.origin = _ID12136( var_1.origin );
        var_2[var_2.size] = var_1;
        var_1._ID24768 = var_5;
        var_1._ID28484 = var_4;
        var_1._ID8211 = [];
        var_1._ID8214 = [];
        var_1._ID8212 = [];
        var_1._ID26027 = [];
        var_1._ID26027["left"] = var_1.origin;
        var_6 = _ID42237::_ID16638( var_1._ID31273, "script_linkname" );
        var_6.origin = _ID12136( var_6.origin );
        var_1._ID26027["right"] = var_6.origin;
        var_1._ID30057 = distance( var_1._ID26027["right"], var_1._ID26027["left"] );
        var_1._ID23570 = ( var_1._ID26027["left"] + var_1._ID26027["right"] ) * 0.5;
        var_1._ID517 = var_3;
        var_3++;

        if ( var_1 == var_5 )
            break;

        var_4 = var_1;
        var_1 = var_5;
    }

    foreach ( var_8 in var_2 )
    {
        if ( var_8._ID24768 == var_8 )
            continue;

        var_9 = var_8._ID23570;
        var_10 = var_8._ID24768._ID23570;
        var_11 = vectortoangles( var_9 - var_10 );
        var_12 = anglestoright( var_11 );
        var_13 = var_8._ID30057 * 0.5;
        var_8._ID26027["left"] = var_8._ID23570 + var_12 * var_13;
        var_8._ID26027["left_warning"] = var_8._ID23570 + var_12 * var_13 * level._ID14887;
        var_8._ID26027["right"] = var_8._ID23570 + var_12 * var_13 * -1;
        var_8._ID26027["right_warning"] = var_8._ID23570 + var_12 * var_13 * -1 * level._ID14887;
    }

    foreach ( var_8 in var_2 )
        var_8._ID11123 = distance( var_8._ID23570, var_8._ID24768._ID23570 );

    return var_2;
}

_ID1862( var_0 )
{
    var_1 = _ID42237::_ID16640( "road_path_col", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = _ID42237::_ID16638( var_3.target, "targetname" );
        var_3.origin = _ID12136( var_3.origin );
        var_4.origin = _ID12136( var_4.origin );
        var_3._ID26035 = var_4;
        var_4._ID26035 = var_3;
    }

    foreach ( var_7 in var_0 )
    {
        foreach ( var_3 in var_1 )
        {
            if ( !isdefined( var_3._ID22378 ) )
                _ID1863( var_7, var_3 );
        }
    }
}

_ID1863( var_0, var_1 )
{
    if ( var_0 == var_0._ID24768 )
        return;

    if ( !_ID37544( var_0, var_1 ) )
        return;

    var_2 = var_1._ID26035;
    var_3 = _ID15937( var_1.origin, var_0._ID23570, var_0._ID24768._ID23570 );
    var_4 = _ID15937( var_2.origin, var_0._ID23570, var_0._ID24768._ID23570 );
    var_1._ID28675 = var_3["progress"];
    var_1._ID25468 = var_3["offset"];
    var_2._ID28675 = var_4["progress"];
    var_2._ID25468 = var_4["offset"];

    if ( var_3["progress"] < var_4["progress"] )
    {
        _ID1861( var_0, var_1, var_2 );
        var_0._ID8211[var_0._ID8211.size] = var_1;
        var_1._ID22378 = 1;
    }
    else
    {
        _ID1861( var_0, var_2, var_1 );
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
    var_3[0] = var_1.origin;
    var_3[1] = var_1._ID26035.origin;

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = 0;
        var_6 = 0;

        for ( var_7 = var_2.size - 1; var_6 < var_2.size; var_6++ )
        {
            if ( var_2[var_6][1] > var_3[var_4][1] != var_2[var_7][1] > var_3[var_4][1] && var_3[var_4][0] < ( var_2[var_7][0] - var_2[var_6][0] ) * ( var_3[var_4][1] - var_2[var_6][1] ) / ( var_2[var_7][1] - var_2[var_6][1] ) + var_2[var_6][0] )
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
        var_12 = _ID15966( var_0, var_5 );
        var_13 = _ID15966( var_0, var_6 );
        var_14 = max( var_12, var_13 );
        var_15 = min( var_3, var_14 );
        _ID1983( var_0, var_15, var_4, var_5, var_6 );

        if ( !isdefined( var_0._ID24768 ) || var_0 == var_0._ID24768 )
            break;

        var_3 -= var_14;
        var_4 = 0;

        if ( var_3 <= 0 )
            break;

        var_16 = _ID15931( var_0, var_12, var_5 );
        var_17 = _ID15931( var_0, var_13, var_6 );
        var_0 = var_0._ID24768;
        var_18 = _ID15937( var_16, var_0._ID23570, var_0._ID24768._ID23570 );
        var_5 = var_18["offset"];
        var_19 = _ID15937( var_17, var_0._ID23570, var_0._ID24768._ID23570 );
        var_6 = var_19["offset"];
    }

    var_0 = var_7;
    var_3 = var_8;
    var_4 = var_9;
    var_5 = var_10;
    var_6 = var_11;

    for (;;)
    {
        if ( !isdefined( var_0._ID28484 ) || var_0 == var_0._ID28484 )
            break;

        if ( var_4 > 0 )
            break;

        var_16 = _ID15931( var_0, 0, var_5 );
        var_17 = _ID15931( var_0, 0, var_6 );
        var_0 = var_0._ID28484;
        var_18 = _ID15937( var_16, var_0._ID23570, var_0._ID24768._ID23570 );
        var_5 = var_18["offset"];
        var_19 = _ID15937( var_17, var_0._ID23570, var_0._ID24768._ID23570 );
        var_6 = var_19["offset"];
        var_3 = max( var_18["progress"], var_19["progress"] );
        var_4 += var_3;
        _ID1983( var_0, var_3, var_4, var_5, var_6 );
    }
}

_ID1983( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = spawnstruct();
    var_5._ID8286 = [];
    var_5._ID8286["max"] = var_1;
    var_5._ID8286["min"] = var_2;

    if ( var_5._ID8286["min"] < 0 )
        var_5._ID8286["min"] = 0;

    if ( isdefined( var_0._ID24768 ) && var_0 != var_0._ID24768 )
    {

    }

    var_5._ID8286["left_offset"] = var_4;
    var_5._ID8286["right_offset"] = var_3;
    var_5._ID8286["mid_offset"] = ( var_3 + var_4 ) * 0.5;
    var_0._ID8214[var_0._ID8214.size] = var_5;
}

_ID1913( var_0, var_1 )
{
    var_2 = spawnstruct();
    var_2._ID13016 = self;
    var_2._ID5978 = var_0;

    if ( isdefined( var_1 ) && var_1 == 1 )
        var_2 thread _ID29552();

    var_2 thread _ID39631();
}

_ID29552()
{
    level endon( "stop_vehicle_free_path" );
    self._ID13016 endon( "moving_obstacle_removed" );
    self._ID13016 waittill( "death" );
    _ID29551();
}

_ID29551()
{
    _ID39514();
    self._ID13016 notify( "moving_obstacle_removed" );
}

_ID39631()
{
    level endon( "stop_vehicle_free_path" );
    self._ID13016 endon( "moving_obstacle_removed" );
    self._ID13016 endon( "death" );
    self.node = self._ID13016 _ID15843( self._ID13016.origin );
    var_0 = self._ID13016 _ID15937( self._ID13016.origin, self.node._ID23570, self.node._ID24768._ID23570 );
    var_1 = self._ID13016 _ID24374( self.node, var_0["progress"], var_0["offset"] );
    self.node = var_1.node;

    for (;;)
    {
        var_0 = self._ID13016 _ID15937( self._ID13016.origin, self.node._ID23570, self.node._ID24768._ID23570 );
        var_1 = self._ID13016 _ID24374( self.node, var_0["progress"], var_0["offset"] );

        if ( self.node != var_1.node )
            self.node = var_1.node;

        _ID39630();
        wait 0.1;
    }
}

_ID39630()
{
    var_0 = anglestoforward( self._ID13016.angles );
    var_1 = anglestoright( self._ID13016.angles );
    self._ID8749 = [];
    self._ID8749[0] = _ID12136( self._ID13016.origin + -1 * self._ID5978["width"] / 2 * var_1 + self._ID5978["length"] / 2 * var_0 );
    self._ID8749[1] = _ID12136( self._ID13016.origin + self._ID5978["width"] / 2 * var_1 + self._ID5978["length"] / 2 * var_0 );
    self._ID8749[2] = _ID12136( self._ID13016.origin + -1 * self._ID5978["width"] / 2 * var_1 + -1 * self._ID5978["length"] / 2 * var_0 );
    self._ID8749[3] = _ID12136( self._ID13016.origin + self._ID5978["width"] / 2 * var_1 + -1 * self._ID5978["length"] / 2 * var_0 );
    var_2 = [];
    var_2[0] = _ID15937( self._ID8749[0], self.node._ID23570, self.node._ID24768._ID23570 );
    var_2[1] = _ID15937( self._ID8749[1], self.node._ID23570, self.node._ID24768._ID23570 );
    var_2[2] = _ID15937( self._ID8749[2], self.node._ID23570, self.node._ID24768._ID23570 );
    var_2[3] = _ID15937( self._ID8749[3], self.node._ID23570, self.node._ID24768._ID23570 );
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
    _ID39514();
    _ID29412( var_6, var_5, var_4, var_3 );
}

_ID29412( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0;
    var_5 = var_1;
    var_6 = var_2;
    var_7 = var_3;
    var_8 = self.node;
    var_9 = var_8;

    for (;;)
    {
        var_10 = _ID15966( var_9, var_2 );
        var_11 = _ID15966( var_9, var_3 );
        var_12 = max( max( var_10, var_11 ), 0 );
        var_13 = min( var_0, var_12 );

        if ( var_13 <= 0 )
            break;

        _ID1914( var_9, var_13, var_1, var_2, var_3 );

        if ( !isdefined( var_9._ID24768 ) || var_9 == var_9._ID24768 )
            break;

        var_0 -= var_12;
        var_1 = 0;

        if ( var_0 <= 0 )
            break;

        var_14 = _ID15931( var_9, var_10, var_2 );
        var_15 = _ID15931( var_9, var_11, var_3 );
        var_9 = var_9._ID24768;
        var_16 = _ID15937( var_14, var_9._ID23570, var_9._ID24768._ID23570 );
        var_2 = var_16["offset"];
        var_17 = _ID15937( var_15, var_9._ID23570, var_9._ID24768._ID23570 );
        var_3 = var_17["offset"];
    }

    var_9 = var_8;
    var_0 = var_4;
    var_1 = var_5;
    var_2 = var_6;
    var_3 = var_7;

    for (;;)
    {
        if ( !isdefined( var_9._ID28484 ) || var_9 == var_9._ID28484 )
            break;

        if ( var_1 > 0 )
            break;

        var_14 = _ID15931( var_9, 0, var_2 );
        var_15 = _ID15931( var_9, 0, var_3 );
        var_9 = var_9._ID28484;
        var_16 = _ID15937( var_14, var_9._ID23570, var_9._ID24768._ID23570 );
        var_2 = var_16["offset"];
        var_17 = _ID15937( var_15, var_9._ID23570, var_9._ID24768._ID23570 );
        var_3 = var_17["offset"];
        var_0 = max( var_16["progress"], var_17["progress"] );
        var_1 += var_0;

        if ( var_0 <= 0 )
            break;

        _ID1914( var_9, var_0, var_1, var_2, var_3 );
    }
}

_ID39514()
{
    foreach ( var_1 in level._ID40137 )
    {
        foreach ( var_3 in var_1._ID8212 )
        {
            if ( var_3.owner == self )
                var_1._ID8212 = _ID42237::_ID3321( var_1._ID8212, var_3 );
        }
    }
}

_ID1914( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = spawnstruct();
    var_5._ID8286 = [];
    var_5.owner = self;
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
    var_5._ID8286["mid_offset"] = ( var_3 + var_4 ) * 0.5;
    var_0._ID8212[var_0._ID8212.size] = var_5;
}

_ID40128( var_0, var_1 )
{
    level endon( "stop_vehicle_free_path" );
    var_0 endon( "death" );
    var_0 notify( "enable_free_path" );

    if ( var_0._ID18174 && !var_0._ID29965.size )
    {
        var_0 vehphys_crash();
        return;
    }

    var_2 = self;

    if ( isdefined( var_1 ) )
        var_0._ID36136 = var_1;
    else
        var_0._ID36136 = var_0 vehicle_getspeed();

    var_0._ID41798 = 0;
    var_0._ID28679 = var_2;
    var_0._ID28675 = 0;
    var_0._ID12735 = var_0.origin;
    var_0._ID13730 = 0;
    var_0._ID24337 = 0;
    var_0._ID26321 = gettime();
    _ID42237::_ID3350( var_0._ID29965, ::_ID29962, var_0 );
    var_0 thread _ID40111();
    _ID39663( var_0 );

    for (;;)
    {
        if ( !isalive( var_0 ) )
            break;

        if ( var_0._ID41798 )
        {
            var_0 vehphys_crash();

            foreach ( var_4 in var_0._ID29965 )
            {
                if ( isalive( var_4 ) )
                    var_4 kill();
            }

            var_0 kill();
            wait 5;

            if ( isdefined( var_0 ) )
                var_0 delete();

            _ID39663();
            return;
        }

        if ( !var_0._ID41798 && var_0 vehicle_getspeed() < 2 )
        {
            var_0._ID24337++;

            if ( var_0._ID24337 > 5 )
                var_0 _ID41798( "move fail!" );
        }
        else
            var_0._ID24337 = 0;

        var_0 _ID32513();
        wait 0.05;
    }
}

_ID32513()
{
    var_0 = self;
    var_1 = var_0._ID28679;

    if ( var_1 == var_1._ID24768 )
        return;

    var_2 = _ID15937( var_0.origin, var_1._ID23570, var_1._ID24768._ID23570 );
    var_3 = var_2["offset"];
    var_4 = var_1._ID30057;
    var_5 = _ID24374( var_1, var_2["progress"], var_3 );
    var_6 = var_5._ID28675;
    var_7 = var_5._ID25468;
    var_1 = var_5.node;
    var_0._ID28679 = var_1;
    var_0._ID28675 = var_6;

    if ( var_1 == var_1._ID24768 )
        return;

    var_8 = _ID24374( var_1, var_6 + var_0._ID13730, var_7 );
    var_9 = var_8._ID28675;
    var_10 = var_8._ID25468;
    var_11 = var_8.node;
    var_12 = _ID15696( var_11, var_9 );
    var_13 = _ID15873( var_11, var_9, var_10, 1 );
    var_14 = 0;

    if ( isdefined( var_13["dodge1"] ) )
    {
        var_10 = var_13["dodge1"];
        var_14 = 1;

        if ( isdefined( var_12["right"] ) && var_10 > var_12["right"] )
            var_10 = var_13["dodge2"];

        if ( isdefined( var_12["left"] ) && var_10 < var_12["left"] )
            var_10 = var_13["dodge2"];
    }

    if ( isdefined( var_12["right"] ) && var_10 > var_12["right"] )
    {
        var_10 = var_12["right"];
        var_14 = 1;
    }

    if ( isdefined( var_12["left"] ) && var_10 < var_12["left"] )
    {
        var_10 = var_12["left"];
        var_14 = 1;
    }

    var_15 = 0;
    var_0._ID12735 = var_0 _ID16060( var_11, var_9, var_10, var_15 );
    var_16 = _ID42407::_ID15689( var_0.origin, var_0.angles, var_0._ID12735 );
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

    var_18 = max( var_0._ID36136 * var_17, level._ID14888 );
    var_0 vehicledriveto( var_0._ID12735, var_18 );

    if ( isdefined( level.player._ID11803 ) )
        var_0 _ID23008( var_17 );
}

_ID15873( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_3 ) && var_3 == 1 )
    {
        foreach ( var_5 in var_0._ID8214 )
            var_5._ID18197 = 0;

        foreach ( var_5 in var_0._ID8212 )
            var_5._ID18197 = 0;
    }

    var_9 = [];
    var_10 = _ID42237::_ID3296( var_0._ID8214, var_0._ID8212 );

    foreach ( var_5 in var_10 )
    {
        if ( var_5._ID18197 == 1 )
            continue;

        if ( isdefined( var_5.owner ) && isdefined( var_5.owner._ID13016 ) && var_5.owner._ID13016 == self )
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
        var_14 = _ID15873( var_0, var_1, var_12 );
        var_15 = _ID15873( var_0, var_1, var_13 );

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

        var_16 = ( var_12 + var_13 ) * 0.5;

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

    return var_9;
}

_ID39663( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._ID12875 )
    {
        if ( !isalive( var_3 ) )
            continue;

        if ( var_3._ID41798 )
            continue;

        var_1[var_1.size] = var_3;
    }

    level._ID12875 = var_1;

    if ( isalive( var_0 ) && !var_0._ID41798 )
    {
        if ( !_ID42237::_ID3303( level._ID12875, var_0 ) )
        {
            level._ID12875[level._ID12875.size] = var_0;

            if ( 1 )
                level._ID12875 = _ID42237::_ID3336( level._ID12875, ::_ID16029 );
        }
    }

    var_5 = level._ID14885;
    var_6 = 200;

    foreach ( var_3 in level._ID12875 )
    {
        var_3._ID27305 = var_5;
        var_5 += level._ID14886;
        var_3._ID13730 = var_6;
        var_6 += 100;
    }
}

_ID16029()
{
    var_0 = 0;
    var_1 = 0;
    var_2 = self._ID28679;

    if ( !isdefined( var_2 ) || !isdefined( self._ID28675 ) )
        return 0;

    var_3 = _ID42407::_ID16261( var_2.target, "targetname" );
    var_0 = self._ID28675;

    for (;;)
    {
        if ( !isdefined( var_2.targetname ) )
            break;

        var_3 = var_2;
        var_2 = _ID42407::_ID16261( var_2.targetname, "target" );

        if ( !isdefined( var_2 ) )
            break;

        var_1++;
        var_0 += distance2d( var_3.origin, var_2.origin );
    }

    return var_0;
}

_ID11132()
{
    return distance2dsquared( self.origin, level.player.origin );
}

_ID40111()
{
    self waittill( "death" );
    waittillframeend;
    _ID39663();
}

_ID29962( var_0 )
{
    self waittill( "death" );

    if ( isdefined( var_0 ) )
        var_0 _ID41798( "driver died!" );
}

_ID40089()
{
    level endon( "stop_vehicle_free_path" );
    self endon( "death" );

    for (;;)
    {
        self waittill( "veh_contact",  var_0, var_1, var_2, var_3, var_4  );

        if ( isdefined( var_3 ) )
        {
            var_5 = length( var_3 ) / 63360.0 * 60.0 * 60.0;

            if ( var_5 > 20.0 )
                _ID41798( "crash" );
        }
    }
}

_ID41798( var_0 )
{
    self._ID41798 = 1;
}

_ID23008( var_0 )
{
    if ( !isdefined( level.player._ID11803._ID28679 ) )
        level.player._ID11803._ID28679 = _ID15843( level.player._ID11803.origin );

    var_1 = _ID15937( level.player._ID11803.origin, level.player._ID11803._ID28679._ID23570, level.player._ID11803._ID28679._ID24768._ID23570 );
    var_2 = _ID24374( level.player._ID11803._ID28679, var_1["progress"], var_1["offset"] );
    var_3 = var_2._ID28675;
    var_4 = var_2._ID25468;
    level.player._ID11803._ID28679 = var_2.node;
    var_5 = _ID28677( self._ID28679, self._ID28675, var_2.node, var_2._ID28675 );
    var_5 -= self._ID27305;

    if ( var_5 < level._ID14880 )
    {
        if ( gettime() > self._ID26321 + 2000 )
        {
            _ID41798( "too far behind" );
            return;
        }
    }
    else if ( var_5 > level._ID14879 )
    {
        if ( gettime() > self._ID26321 + 2000 )
        {
            _ID41798( "too far ahead" );
            return;
        }
    }
    else
        self._ID26321 = gettime();

    if ( var_0 < 0.6 )
        return;

    var_6 = _ID15842( var_5 );
    var_7 = max( level.player._ID11803 vehicle_getspeed() * var_6, level._ID14888 );

    if ( self vehicle_isphysveh() )
        self vehphys_setspeed( var_7 );
    else
        self vehicle_setspeed( var_7 );
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
        var_3 = ( level._ID14877 - var_0 ) / var_2;
        var_4 = level._ID14876 - level._ID14881;
        var_1 = var_3 * var_4 + level._ID14881;
    }
    else if ( var_0 > level._ID14884 )
    {
        var_2 = level._ID14883 - level._ID14884;
        var_3 = ( var_0 - level._ID14884 ) / var_2;
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
    var_4 = vectornormalize( var_2 - var_1 );
    var_5 = var_0 - var_1;
    var_6 = vectordot( var_5, var_4 );
    var_7 = var_1 + var_4 * var_6;
    var_3["progress"] = var_6;
    var_3["offset"] = distance2d( var_7, var_0 );
    var_8 = anglestoright( vectortoangles( var_4 ) );
    var_9 = vectornormalize( var_7 - var_0 );
    var_10 = vectordot( var_8, var_9 );
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
        var_3 = _ID15937( var_0._ID24768._ID26027["right"], var_0._ID23570, var_0._ID24768._ID23570 );
    else
        var_3 = _ID15937( var_0._ID24768._ID26027["left"], var_0._ID23570, var_0._ID24768._ID23570 );

    var_4 = var_1 / var_3["offset"];
    var_5 = ( var_3["progress"] - var_2 ) * var_4;
    return var_5 + var_2;
}

_ID15696( var_0, var_1 )
{
    var_2 = [];

    if ( isdefined( var_0._ID24768._ID26027["right_warning"] ) )
    {
        var_3 = _ID15937( var_0._ID26027["right_warning"], var_0._ID23570, var_0._ID24768._ID23570 );
        var_4 = _ID15937( var_0._ID24768._ID26027["right_warning"], var_0._ID23570, var_0._ID24768._ID23570 );
        var_5 = var_1 / ( var_4["progress"] - var_3["progress"] );
        var_2["right"] = var_3["offset"] + var_5 * ( var_4["offset"] - var_3["offset"] );
    }

    if ( isdefined( var_0._ID24768._ID26027["left_warning"] ) )
    {
        var_3 = _ID15937( var_0._ID26027["left_warning"], var_0._ID23570, var_0._ID24768._ID23570 );
        var_4 = _ID15937( var_0._ID24768._ID26027["left_warning"], var_0._ID23570, var_0._ID24768._ID23570 );
        var_5 = var_1 / ( var_4["progress"] - var_3["progress"] );
        var_2["left"] = var_3["offset"] + var_5 * ( var_4["offset"] - var_3["offset"] );
    }

    return var_2;
}

_ID15931( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_4 = vectortoangles( var_0._ID24768._ID23570 - var_0._ID23570 );
    var_5 = anglestoforward( var_4 );
    var_6 = anglestoright( var_4 );
    return var_0._ID23570 + var_5 * var_1 + var_6 * var_2;
}

_ID16060( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID15931( var_0, var_1, var_2, var_3 );
    return _ID12136( var_4 );
}

_ID12136( var_0 )
{
    var_1 = physicstrace( var_0 + ( 0, 0, 100 ), var_0 + ( 0, 0, -100 ) );

    if ( var_1 == var_0 + ( 0, 0, -100 ) )
    {
        var_2 = bullettrace( var_0 + ( 0, 0, 100 ), var_0 + ( 0, 0, -100 ), 0, undefined, 0, 0, 1, 0, 0 );

        if ( var_2["position"] == var_1 )
            return var_0;

        if ( isdefined( var_2["surfacetype"] ) && issubstr( var_2["surfacetype"], "water" ) )
            var_1 = var_2["position"];

        return var_0;
    }

    return var_1;
}

_ID24374( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();

    for (;;)
    {
        var_4 = var_0._ID11123;

        if ( isdefined( var_2 ) )
            var_4 = _ID15966( var_0, var_2 );

        if ( var_1 > var_4 )
        {
            if ( var_0 == var_0._ID24768 )
                break;

            var_5 = _ID15931( var_0, var_4, var_2 );
            var_1 -= var_4;
            var_0 = var_0._ID24768;
            var_6 = _ID15937( var_5, var_0._ID23570, var_0._ID24768._ID23570 );
            var_2 = var_6["offset"];
            continue;
        }

        if ( var_1 < 0 )
        {
            if ( var_0 == var_0._ID28484 )
                break;

            var_5 = _ID15931( var_0, 0, var_2 );
            var_0 = var_0._ID28484;
            var_6 = _ID15937( var_5, var_0._ID23570, var_0._ID24768._ID23570 );
            var_1 += var_6["progress"];
            var_2 = var_6["offset"];
            continue;
        }

        break;
    }

    var_3.node = var_0;
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
    iprintlnbold( "!!!!DEBUG PATH!!!!" );
    var_0 = undefined;
    var_1 = undefined;

    for (;;)
    {
        if ( !isdefined( level._ID40137 ) )
        {
            wait 0.05;
            continue;
        }

        var_2 = level._ID40137;

        for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        {
            var_4 = var_2[var_3];

            if ( isdefined( var_4._ID24768._ID26027["left_warning"] ) )
            {

            }

            if ( isdefined( var_4._ID24768._ID26027["right_warning"] ) )
            {

            }

            foreach ( var_6 in var_4._ID8214 )
                var_4 _ID11690( var_6._ID8286, ( 0.5, 0, 1 ) );

            foreach ( var_6 in var_4._ID8212 )
                var_4 _ID11690( var_6._ID8286, ( 1, 0, 0.5 ) );

            foreach ( var_11 in var_4._ID8211 )
            {
                var_12 = var_11.origin;
                var_13 = var_11._ID26035.origin;
            }
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
    var_2 = _ID15931( self, var_0["min"], var_0["left_offset"] );
    var_3 = _ID15931( self, var_0["max"], var_0["left_offset"] );
    var_2 = _ID15931( self, var_0["min"], var_0["right_offset"] );
    var_3 = _ID15931( self, var_0["max"], var_0["right_offset"] );
    var_2 = _ID15931( self, var_0["min"], var_0["right_offset"] );
    var_3 = _ID15931( self, var_0["min"], var_0["left_offset"] );
    var_2 = _ID15931( self, var_0["max"], var_0["right_offset"] );
    var_3 = _ID15931( self, var_0["max"], var_0["left_offset"] );
}
