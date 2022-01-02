// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID42407::_ID32246();
    level._ID11390["nearStart"] = 1;
    level._ID11390["nearEnd"] = 1;
    level._ID11390["farStart"] = 500;
    level._ID11390["farEnd"] = 500;
    level._ID11390["nearBlur"] = 4.5;
    level._ID11390["farBlur"] = 0.05;
    level._ID9471 = "default";
    level._ID1386 = 0;
    _ID11355();
    _ID37534();
    precachemenu( "dev_vision_noloc" );
    precachemenu( "dev_vision_exec" );
    level._ID35367 = [];
    level._ID6502 = [];

    if ( !isdefined( level._ID40565 ) )
    {
        level._ID40565 = spawnstruct();
        level._ID40565._ID40558 = "";
        level._ID40565._ID1210 = 0;
    }

    if ( !isdefined( level._ID36817 ) )
        level._ID36817 = [];

    if ( !isdefined( level._ID40560 ) )
    {
        level._ID40560 = [];
        _ID9133( level.script );
    }

    if ( !isdefined( level.script ) )
        level.script = tolower( getdvar( "mapname" ) );
}

_ID54386()
{
    self setdepthoffield( level._ID11390["nearStart"], level._ID11390["nearEnd"], level._ID11390["farStart"], level._ID11390["farEnd"], level._ID11390["nearBlur"], level._ID11390["farBlur"] );
}

_ID9133( var_0 )
{
    var_1 = _ID42407::_ID9186( var_0 );
    var_1._ID36107 = 3764.17;
    var_1._ID17667 = 19391;
    var_1._ID29340 = 0.661137;
    var_1._ID17371 = 0.554261;
    var_1._ID5320 = 0.454014;
    var_1._ID23114 = 0.7;
    var_1._ID38687 = 0;
    var_1._ID34256 = 0;
    var_1._ID34258 = 0;
    var_1._ID34257 = 0;
    var_1._ID18338 = 0;
    var_1._ID18337 = 0;
    var_1._ID18339 = 1000;
    var_1._ID48736 = 0;
    var_1._ID53208 = 0;
    var_1._ID51503 = 3;
    var_1._ID47968 = 10;
}

_ID15738()
{
    if ( _func_242() )
        return "\share\raw\maps\createart\" + _ID42237::_ID16023() + "_fog_hdr.gsc";
    else
        return "\share\raw\maps\createart\" + _ID42237::_ID16023() + "_fog.gsc";
}

_ID11377( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    level._ID11328[var_0][var_1]["nearStart"] = var_2;
    level._ID11328[var_0][var_1]["nearEnd"] = var_3;
    level._ID11328[var_0][var_1]["nearBlur"] = var_4;
    level._ID11328[var_0][var_1]["farStart"] = var_5;
    level._ID11328[var_0][var_1]["farEnd"] = var_6;
    level._ID11328[var_0][var_1]["farBlur"] = var_7;
    level._ID11328[var_0][var_1]["weight"] = var_8;

    if ( isdefined( var_9 ) )
        level._ID11328[var_0][var_1]["bias"] = var_9;
}

_ID11334( var_0 )
{
    if ( level._ID11328[var_0]["timeRemaining"] <= 0.0 )
        return;

    var_1 = min( 1.0, 0.05 / level._ID11328[var_0]["timeRemaining"] );
    level._ID11328[var_0]["timeRemaining"] = level._ID11328[var_0]["timeRemaining"] - 0.05;

    if ( level._ID11328[var_0]["timeRemaining"] <= 0.0 )
    {
        level._ID11328[var_0]["timeRemaining"] = 0.0;
        level._ID11328[var_0]["current"]["nearStart"] = level._ID11328[var_0]["goal"]["nearStart"];
        level._ID11328[var_0]["current"]["nearEnd"] = level._ID11328[var_0]["goal"]["nearEnd"];
        level._ID11328[var_0]["current"]["nearBlur"] = level._ID11328[var_0]["goal"]["nearBlur"];
        level._ID11328[var_0]["current"]["farStart"] = level._ID11328[var_0]["goal"]["farStart"];
        level._ID11328[var_0]["current"]["farEnd"] = level._ID11328[var_0]["goal"]["farEnd"];
        level._ID11328[var_0]["current"]["farBlur"] = level._ID11328[var_0]["goal"]["farBlur"];
        level._ID11328[var_0]["current"]["weight"] = level._ID11328[var_0]["goal"]["weight"];
        return;
    }

    level._ID11328[var_0]["current"]["nearStart"] = level._ID11328[var_0]["current"]["nearStart"] + var_1 * ( level._ID11328[var_0]["goal"]["nearStart"] - level._ID11328[var_0]["current"]["nearStart"] );
    level._ID11328[var_0]["current"]["nearEnd"] = level._ID11328[var_0]["current"]["nearEnd"] + var_1 * ( level._ID11328[var_0]["goal"]["nearEnd"] - level._ID11328[var_0]["current"]["nearEnd"] );
    level._ID11328[var_0]["current"]["nearBlur"] = level._ID11328[var_0]["current"]["nearBlur"] + var_1 * ( level._ID11328[var_0]["goal"]["nearBlur"] - level._ID11328[var_0]["current"]["nearBlur"] );
    level._ID11328[var_0]["current"]["farStart"] = level._ID11328[var_0]["current"]["farStart"] + var_1 * ( level._ID11328[var_0]["goal"]["farStart"] - level._ID11328[var_0]["current"]["farStart"] );
    level._ID11328[var_0]["current"]["farEnd"] = level._ID11328[var_0]["current"]["farEnd"] + var_1 * ( level._ID11328[var_0]["goal"]["farEnd"] - level._ID11328[var_0]["current"]["farEnd"] );
    level._ID11328[var_0]["current"]["farBlur"] = level._ID11328[var_0]["current"]["farBlur"] + var_1 * ( level._ID11328[var_0]["goal"]["farBlur"] - level._ID11328[var_0]["current"]["farBlur"] );
    level._ID11328[var_0]["current"]["weight"] = level._ID11328[var_0]["current"]["weight"] + var_1 * ( level._ID11328[var_0]["goal"]["weight"] - level._ID11328[var_0]["current"]["weight"] );
}

_ID11355()
{
    if ( getdvar( "scr_dof_enable" ) == "" )
        setsaveddvar( "scr_dof_enable", "1" );

    setdvar( "ads_dof_tracedist", 8192 );
    setdvar( "ads_dof_maxEnemyDist", 10000 );
    setdvar( "ads_dof_playerForgetEnemyTime", 5000 );
    setdvar( "ads_dof_nearStartScale", 0.25 );
    setdvar( "ads_dof_nearEndScale", 0.85 );
    setdvar( "ads_dof_farStartScale", 1.15 );
    setdvar( "ads_dof_farEndScale", 3 );
    setdvar( "ads_dof_nearBlur", 4 );
    setdvar( "ads_dof_farBlur", 1.5 );
    setdvar( "ads_dof_debug", 0 );
    var_0 = 1;
    var_1 = 1;
    var_2 = 4.5;
    var_3 = 500;
    var_4 = 500;
    var_5 = 0.05;
    level._ID11328 = [];
    level._ID11328["base"] = [];
    level._ID11328["base"]["current"] = [];
    level._ID11328["base"]["goal"] = [];
    level._ID11328["base"]["timeRemaining"] = 0.0;
    _ID11377( "base", "current", var_0, var_1, var_2, var_3, var_4, var_5, 1.0, 0.5 );
    _ID11377( "base", "goal", 0, 0, 0, 0, 0, 0, 0.0, 0.5 );
    level._ID11328["script"] = [];
    level._ID11328["script"]["current"] = [];
    level._ID11328["script"]["goal"] = [];
    level._ID11328["script"]["timeRemaining"] = 0.0;
    _ID11377( "script", "current", 0, 0, 0, 0, 0, 0, 0.0, 0.5 );
    _ID11377( "script", "goal", 0, 0, 0, 0, 0, 0, 0.0, 0.5 );
    level._ID11328["ads"] = [];
    level._ID11328["ads"]["current"] = [];
    level._ID11328["ads"]["goal"] = [];
    _ID11377( "ads", "current", 0, 0, 0, 0, 0, 0, 0.0, 0.5 );
    _ID11377( "ads", "goal", 0, 0, 0, 0, 0, 0, 0.0, 0.5 );
    level._ID11328["results"] = [];
    level._ID11328["results"]["current"] = [];
    _ID11377( "results", "current", var_0, var_1, var_2, var_3, var_4, var_5, 1.0, 0.5 );

    foreach ( var_7 in level._ID805 )
        var_7 thread _ID11386();

    level.player _ID42407::_ID10226( 1, ::_ID44612 );
}

_ID11375( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    _ID11377( "base", "goal", var_0, var_1, var_2, var_3, var_4, var_5, 1.0, var_7 );
    level._ID11328["base"]["timeRemaining"] = var_6;

    if ( var_6 <= 0.0 )
        _ID11377( "base", "current", var_0, var_1, var_2, var_3, var_4, var_5, 1.0, var_7 );
}

_ID11342( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    _ID11377( "script", "goal", var_0, var_1, var_2, var_3, var_4, var_5, 1.0, var_7 );
    level._ID11328["script"]["timeRemaining"] = var_6;

    if ( var_6 <= 0.0 )
        _ID11377( "script", "current", var_0, var_1, var_2, var_3, var_4, var_5, 1.0, var_7 );
    else if ( level._ID11328["script"]["current"]["weight"] <= 0.0 )
        _ID11377( "script", "current", var_0, var_1, var_2, var_3, var_4, var_5, 0.0, var_7 );
}

_ID11338( var_0 )
{
    level._ID11328["script"]["goal"]["weight"] = 0.0;
    level._ID11328["script"]["timeRemaining"] = var_0;

    if ( var_0 <= 0.0 )
        level._ID11328["script"]["current"]["weight"] = 0.0;
}

_ID11339( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    _ID11377( "ads", "goal", var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 );

    if ( level._ID11328["ads"]["current"]["weight"] <= 0.0 )
        _ID11377( "ads", "current", var_0, var_1, var_2, var_3, var_4, var_5, 0.0, var_7 );
}

_ID11332( var_0, var_1, var_2, var_3 )
{
    if ( var_0 > var_1 )
    {
        var_4 = ( var_0 - var_1 ) * var_3;

        if ( var_4 > var_2 )
            var_4 = var_2;
        else if ( var_4 < 1 )
            var_4 = 1;

        if ( var_0 - var_4 <= var_1 )
            return var_1;
        else
            return var_0 - var_4;
    }
    else if ( var_0 < var_1 )
    {
        var_4 = ( var_1 - var_0 ) * var_3;

        if ( var_4 > var_2 )
            var_4 = var_2;
        else if ( var_4 < 1 )
            var_4 = 1;

        if ( var_0 + var_4 >= var_1 )
            return var_1;
        else
            return var_0 + var_4;
    }

    return var_0;
}

_ID11331()
{
    var_0 = level._ID11328["ads"]["goal"]["weight"];

    if ( var_0 < 1.0 )
    {
        if ( self adsbuttonpressed() && self playerads() > 0.0 )
            var_0 = min( 1, var_0 + 0.7 );
        else
            var_0 = 0;

        level._ID11328["ads"]["current"]["nearStart"] = level._ID11328["ads"]["goal"]["nearStart"];
        level._ID11328["ads"]["current"]["nearEnd"] = level._ID11328["ads"]["goal"]["nearEnd"];
        level._ID11328["ads"]["current"]["nearBlur"] = level._ID11328["ads"]["goal"]["nearBlur"];
        level._ID11328["ads"]["current"]["farStart"] = level._ID11328["ads"]["goal"]["farStart"];
        level._ID11328["ads"]["current"]["farEnd"] = level._ID11328["ads"]["goal"]["farEnd"];
        level._ID11328["ads"]["current"]["farBlur"] = level._ID11328["ads"]["goal"]["farBlur"];
        level._ID11328["ads"]["current"]["weight"] = var_0;
        level._ID11328["ads"]["current"]["bias"] = level._ID11328["ads"]["goal"]["bias"];
        return;
    }

    if ( isdefined( level._ID11333 ) )
        var_1 = level._ID11333;
    else
        var_1 = 0.1;

    var_2 = 10;
    var_3 = max( var_2, abs( level._ID11328["ads"]["current"]["nearStart"] - level._ID11328["ads"]["goal"]["nearStart"] ) * var_1 );
    var_4 = max( var_2, abs( level._ID11328["ads"]["current"]["nearEnd"] - level._ID11328["ads"]["goal"]["nearEnd"] ) * var_1 );
    var_5 = max( var_2, abs( level._ID11328["ads"]["current"]["farStart"] - level._ID11328["ads"]["goal"]["farStart"] ) * var_1 );
    var_6 = max( var_2, abs( level._ID11328["ads"]["current"]["farEnd"] - level._ID11328["ads"]["goal"]["farEnd"] ) * var_1 );
    var_7 = 0.1;
    var_8 = 0.1;
    level._ID11328["ads"]["current"]["nearStart"] = _ID11332( level._ID11328["ads"]["current"]["nearStart"], level._ID11328["ads"]["goal"]["nearStart"], var_3, 0.33 );
    level._ID11328["ads"]["current"]["nearEnd"] = _ID11332( level._ID11328["ads"]["current"]["nearEnd"], level._ID11328["ads"]["goal"]["nearEnd"], var_4, 0.33 );
    level._ID11328["ads"]["current"]["nearBlur"] = _ID11332( level._ID11328["ads"]["current"]["nearBlur"], level._ID11328["ads"]["goal"]["nearBlur"], var_7, 0.33 );
    level._ID11328["ads"]["current"]["farStart"] = _ID11332( level._ID11328["ads"]["current"]["farStart"], level._ID11328["ads"]["goal"]["farStart"], var_5, 0.33 );
    level._ID11328["ads"]["current"]["farEnd"] = _ID11332( level._ID11328["ads"]["current"]["farEnd"], level._ID11328["ads"]["goal"]["farEnd"], var_6, 0.33 );
    level._ID11328["ads"]["current"]["farBlur"] = _ID11332( level._ID11328["ads"]["current"]["farBlur"], level._ID11328["ads"]["goal"]["farBlur"], var_7, 0.33 );
    level._ID11328["ads"]["current"]["weight"] = 1.0;
    level._ID11328["ads"]["current"]["bias"] = _ID11332( level._ID11328["ads"]["current"]["bias"], level._ID11328["ads"]["goal"]["bias"], var_8, 0.33 );
}

_ID11337()
{
    level._ID11328["ads"]["goal"]["weight"] = 0.0;
    level._ID11328["ads"]["current"]["weight"] = 0.0;
}

_ID11329( var_0 )
{
    var_1 = level._ID11328[var_0]["current"]["weight"];
    var_2 = 1.0 - var_1;
    level._ID11328["results"]["current"]["nearStart"] = level._ID11328["results"]["current"]["nearStart"] * var_2 + level._ID11328[var_0]["current"]["nearStart"] * var_1;
    level._ID11328["results"]["current"]["nearEnd"] = level._ID11328["results"]["current"]["nearEnd"] * var_2 + level._ID11328[var_0]["current"]["nearEnd"] * var_1;
    level._ID11328["results"]["current"]["nearBlur"] = level._ID11328["results"]["current"]["nearBlur"] * var_2 + level._ID11328[var_0]["current"]["nearBlur"] * var_1;
    level._ID11328["results"]["current"]["farStart"] = level._ID11328["results"]["current"]["farStart"] * var_2 + level._ID11328[var_0]["current"]["farStart"] * var_1;
    level._ID11328["results"]["current"]["farEnd"] = level._ID11328["results"]["current"]["farEnd"] * var_2 + level._ID11328[var_0]["current"]["farEnd"] * var_1;
    level._ID11328["results"]["current"]["farBlur"] = level._ID11328["results"]["current"]["farBlur"] * var_2 + level._ID11328[var_0]["current"]["farBlur"] * var_1;
    level._ID11328["results"]["current"]["bias"] = level._ID11328["results"]["current"]["bias"] * var_2 + level._ID11328[var_0]["current"]["bias"] * var_1;
}

_ID11335()
{
    _ID11334( "base" );
    _ID11334( "script" );
    _ID11331();
    _ID11329( "base" );
    _ID11329( "script" );
    _ID11329( "ads" );
    var_0 = level._ID11328["results"]["current"]["nearStart"];
    var_1 = level._ID11328["results"]["current"]["nearEnd"];
    var_2 = level._ID11328["results"]["current"]["nearBlur"];
    var_3 = level._ID11328["results"]["current"]["farStart"];
    var_4 = level._ID11328["results"]["current"]["farEnd"];
    var_5 = level._ID11328["results"]["current"]["farBlur"];
    var_6 = level._ID11328["results"]["current"]["bias"];
    var_0 = max( 0, var_0 );
    var_1 = max( 0, var_1 );
    var_3 = max( 0, var_3 );
    var_4 = max( 0, var_4 );
    var_2 = max( 4, var_2 );
    var_2 = min( 10, var_2 );
    var_5 = max( 0, var_5 );
    var_5 = min( var_2, var_5 );

    if ( var_5 > 0.0 )
        var_3 = max( var_1, var_3 );

    var_6 = max( 0, var_6 );
    level._ID11328["results"]["current"]["nearStart"] = var_0;
    level._ID11328["results"]["current"]["nearEnd"] = var_1;
    level._ID11328["results"]["current"]["nearBlur"] = var_2;
    level._ID11328["results"]["current"]["farStart"] = var_3;
    level._ID11328["results"]["current"]["farEnd"] = var_4;
    level._ID11328["results"]["current"]["farBlur"] = var_5;
    level._ID11328["results"]["current"]["bias"] = var_6;
}

_ID11370()
{
    var_0 = self playerads();

    if ( var_0 <= 0.0 )
    {
        _ID11337();
        return;
    }

    if ( isdefined( level._ID9539 ) )
    {
        [[ level._ID9539 ]]();
        return;
    }

    var_1 = getdvarfloat( "ads_dof_tracedist", 4096 );
    var_2 = getdvarfloat( "ads_dof_maxEnemyDist", 0 );
    var_3 = getdvarint( "ads_dof_playerForgetEnemyTime", 5000 );
    var_4 = getdvarfloat( "ads_dof_nearStartScale", 0.25 );
    var_5 = getdvarfloat( "ads_dof_nearEndScale", 0.85 );
    var_6 = getdvarfloat( "ads_dof_farStartScale", 1.15 );
    var_7 = getdvarfloat( "ads_dof_farEndScale", 3 );
    var_8 = getdvarfloat( "ads_dof_nearBlur", 4 );
    var_9 = getdvarfloat( "ads_dof_farBlur", 2.5 );
    var_10 = self geteye();
    var_11 = self getplayerangles();

    if ( isdefined( self._ID11372 ) )
        var_12 = combineangles( self._ID11372.angles, var_11 );
    else
        var_12 = var_11;

    var_13 = vectornormalize( anglestoforward( var_12 ) );
    var_14 = bullettrace( var_10, var_10 + var_13 * var_1, 1, self, 0, 0, 0, 0, 0 );
    var_15 = getaiarray( "axis" );
    var_16 = self getcurrentweapon();

    if ( isdefined( level._ID35367[var_16] ) )
    {
        [[ level._ID35367[var_16] ]]( var_14, var_15, var_10, var_13, var_0 );
        return;
    }

    if ( var_14["fraction"] == 1 )
    {
        var_1 = 2048;
        var_17 = 256;
        var_18 = var_1 * var_6 * 2;
    }
    else
    {
        var_1 = distance( var_10, var_14["position"] );
        var_17 = var_1 * var_4;
        var_18 = var_1 * var_6;
    }

    foreach ( var_20 in var_15 )
    {
        var_21 = var_20 isenemyaware();
        var_22 = var_20 hasenemybeenseen( var_3 );

        if ( !var_21 && !var_22 )
            continue;

        var_23 = vectornormalize( var_20.origin - var_10 );
        var_24 = vectordot( var_13, var_23 );

        if ( var_24 < 0.923 )
            continue;

        var_25 = distance( var_10, var_20.origin );

        if ( var_25 - 30 < var_17 )
            var_17 = var_25 - 30;

        var_26 = min( var_25, var_2 );

        if ( var_26 + 30 > var_18 )
            var_18 = var_26 + 30;
    }

    if ( var_17 > var_18 )
        var_17 = var_18 - 256;

    if ( var_17 > var_1 )
        var_17 = var_1 - 30;

    if ( var_17 < 1 )
        var_17 = 1;

    if ( var_18 < var_1 )
        var_18 = var_1;

    var_28 = var_17 * var_4;
    var_29 = var_18 * var_7;
    _ID11339( var_28, var_17, var_8, var_18, var_29, var_9, var_0 );
}

_ID11371( var_0 )
{
    if ( isdefined( level._ID9539 ) )
        return [[ level._ID9539 ]]();

    var_1 = getdvarfloat( "ads_dof_tracedist", 4096 );
    var_2 = getdvarfloat( "ads_dof_maxEnemyDist", 0 );
    var_3 = getdvarint( "ads_dof_playerForgetEnemyTime", 5000 );
    var_4 = self geteye();
    var_5 = self getplayerangles();

    if ( isdefined( self._ID11372 ) )
        var_6 = combineangles( self._ID11372.angles, var_5 );
    else
        var_6 = var_5;

    var_7 = vectornormalize( anglestoforward( var_6 ) );
    var_8 = bullettrace( var_4, var_4 + var_7 * var_1, 1, self, 0, 1, 0, 0, 0 );
    var_9 = getaiarray( "axis" );
    var_10 = self getcurrentweapon();

    if ( isdefined( level._ID35367[var_10] ) )
        return [[ level._ID35367[var_10] ]]( var_8, var_9, var_4, var_7, var_0 );

    var_11["start"] = distance( var_4, var_8["position"] );
    var_11["end"] = var_11["start"];

    foreach ( var_13 in var_9 )
    {
        var_14 = var_13 isenemyaware();
        var_15 = var_13 hasenemybeenseen( var_3 );

        if ( !var_14 && !var_15 )
            continue;

        var_16 = vectornormalize( var_13.origin - var_4 );
        var_17 = vectordot( var_7, var_16 );

        if ( var_17 < 0.923 )
            continue;

        var_18 = distance( var_4, var_13.origin );

        if ( var_18 < var_11["start"] )
            var_11["start"] = var_18;

        var_19 = min( var_18, var_2 );

        if ( var_19 > var_11["end"] )
            var_11["end"] = var_19;
    }

    return var_11;
}

_ID44612()
{
    if ( !isdefined( level._ID45593 ) || !level._ID45593 )
        return;

    for (;;)
    {
        _ID52607();

        while ( self getstance() != "prone" )
            wait 0.05;

        _ID49761();

        while ( self getstance() == "prone" )
            wait 0.05;
    }
}

_ID52607()
{
    level.player _meth_84b9();
}

_ID49761()
{
    level.player _meth_84b8();
    level.player _meth_84ba( 3.0, 800.0, 20, 20 );
    level.player _meth_84cb( 12.0, 900.0 );
}

_ID21033( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_4 < 0.88 )
    {
        _ID11337();
        return;
    }

    var_5 = 10000;
    var_6 = -1;
    var_5 = 2400;
    var_7 = 2400;

    for ( var_8 = 0; var_8 < var_1.size; var_8++ )
    {
        var_9 = vectornormalize( var_1[var_8].origin - var_2 );
        var_10 = vectordot( var_3, var_9 );

        if ( var_10 < 0.923 )
            continue;

        var_11 = distance( var_2, var_1[var_8].origin );

        if ( var_11 < 2500 )
            var_11 = 2500;

        if ( var_11 - 30 < var_5 )
            var_5 = var_11 - 30;

        if ( var_11 + 30 > var_6 )
            var_6 = var_11 + 30;
    }

    if ( var_5 > var_6 )
    {
        var_5 = 2400;
        var_6 = 3000;
    }
    else
    {
        if ( var_5 < 50 )
            var_5 = 50;

        if ( var_6 > 2500 )
            var_6 = 2500;
        else if ( var_6 < 1000 )
            var_6 = 1000;
    }

    var_12 = distance( var_2, var_0["position"] );

    if ( var_12 < 2500 )
        var_12 = 2500;

    if ( var_5 > var_12 )
        var_5 = var_12 - 30;

    if ( var_5 < 1 )
        var_5 = 1;

    if ( var_6 < var_12 )
        var_6 = var_12;

    if ( var_7 >= var_5 )
        var_7 = var_5 - 1;

    var_13 = var_6 * 4;
    var_14 = 4;
    var_15 = 1.8;
    _ID11339( var_7, var_5, var_14, var_6, var_13, var_15, var_4 );
}

_ID11386()
{
    for (;;)
    {
        waittillframeend;

        if ( level._ID22229 )
            continue;

        if ( !getdvarint( "scr_dof_enable" ) )
            continue;

        if ( getdvarint( "r_dof_physical_enable" ) )
        {
            var_0 = self playerads();

            if ( var_0 > 0.0 )
            {
                var_1 = _ID11371( var_0 );
                self _meth_84bb( var_1["start"], var_1["end"] );
            }

            continue;
        }

        _ID11370();
        _ID11335();
        var_2 = level._ID11328["results"]["current"]["nearStart"];
        var_3 = level._ID11328["results"]["current"]["nearEnd"];
        var_4 = level._ID11328["results"]["current"]["farStart"];
        var_5 = level._ID11328["results"]["current"]["farEnd"];
        var_6 = level._ID11328["results"]["current"]["nearBlur"];
        var_7 = level._ID11328["results"]["current"]["farBlur"];
        self setdepthoffield( var_2, var_3, var_4, var_5, var_6, var_7 );
    }
}

_ID37534()
{
    var_0 = getdvar( "r_tessellation" );

    if ( var_0 == "" )
        return;

    level._ID37533 = spawnstruct();
    level._ID37533._ID9582 = getdvarfloat( "r_tessellationCutoffDistance", 960.0 );
    level._ID37533._ID9583 = level._ID37533._ID9582;
    level._ID37533._ID9584 = getdvarfloat( "r_tessellationCutoffFalloff", 320.0 );
    level._ID37533._ID9585 = level._ID37533._ID9584;
    level._ID37533._ID37722 = 0.0;

    foreach ( var_2 in level._ID805 )
        var_2 thread _ID37536();
}

_ID37535( var_0, var_1, var_2 )
{
    level._ID37533._ID9583 = var_0;
    level._ID37533._ID9585 = var_1;
    level._ID37533._ID37722 = var_2;
}

_ID37536()
{
    for (;;)
    {
        var_0 = level._ID37533._ID9582;
        var_1 = level._ID37533._ID9584;
        waittillframeend;

        if ( level._ID37533._ID37722 > 0.0 )
        {
            var_2 = level._ID37533._ID37722 * 20;
            var_3 = ( level._ID37533._ID9583 - level._ID37533._ID9582 ) / var_2;
            var_4 = ( level._ID37533._ID9585 - level._ID37533._ID9584 ) / var_2;
            level._ID37533._ID9582 = level._ID37533._ID9582 + var_3;
            level._ID37533._ID9584 = level._ID37533._ID9584 + var_4;
            level._ID37533._ID37722 = level._ID37533._ID37722 - 0.05;
        }
        else
        {
            level._ID37533._ID9582 = level._ID37533._ID9583;
            level._ID37533._ID9584 = level._ID37533._ID9585;
        }

        if ( var_0 != level._ID37533._ID9582 )
            setsaveddvar( "r_tessellationCutoffDistance", level._ID37533._ID9582 );

        if ( var_1 != level._ID37533._ID9584 )
            setsaveddvar( "r_tessellationCutoffFalloff", level._ID37533._ID9584 );
    }
}

_ID36816( var_0, var_1 )
{
    if ( !isdefined( level._ID36817[var_0] ) )
        return;

    self notify( "sunflare_start_adjust" );
    self endon( "sunflare_start_adjust" );
    var_2 = gettime();
    var_3 = var_1 * 1000;
    var_4 = getdvarvector( "r_sunflare_position", ( 0, 0, 0 ) );
    var_5 = gettime() - var_2;
    var_6 = level._ID36817[var_0]._ID811;

    for ( level._ID9471 = var_0; var_5 < var_3; var_5 = gettime() - var_2 )
    {
        var_6 = level._ID36817[var_0]._ID811;
        var_7 = min( float( var_5 / var_3 ), 1 );
        var_8 = var_4 + ( var_6 - var_4 ) * var_7;
        setdvar( "r_sunflare_position", var_8 );
        setsunflareposition( var_8 );
        wait 0.05;
    }

    setdvar( "r_sunflare_position", level._ID36817[var_0]._ID811 );
    setsunflareposition( var_6 );
}

_ID19702()
{
    if ( !isdefined( level._ID14692 ) )
    {
        level._ID14692 = spawnstruct();
        level._ID14692._ID14695 = "";
        level._ID14692._ID1210 = 0;
    }
}

_ID32312( var_0 )
{
    if ( isdefined( self._ID35795 ) )
    {
        _ID50160( var_0 );
        return;
    }

    var_1 = 1 - var_0;
    var_2 = self._ID35864 * var_1 + self._ID12606 * var_0;
    var_3 = self._ID35749 * var_1 + self._ID12595 * var_0;
    var_4 = self._ID35689 * var_1 + self._ID12583 * var_0;
    setexpfog( var_2, var_3, var_4[0], var_4[1], var_4[2], 1, 0.4 );
}

_ID50160( var_0 )
{
    var_1 = 1 - var_0;
    var_2 = self._ID35864 * var_1 + self._ID12606 * var_0;
    var_3 = self._ID35749 * var_1 + self._ID12595 * var_0;
    var_4 = self._ID35689 * var_1 + self._ID12583 * var_0;
    var_5 = self._ID35795 * var_1 + self._ID12600 * var_0;
    var_6 = self._ID35874;
    var_7 = self._ID12607;
    var_8 = self._ID35991;
    var_9 = self._ID35993;
    var_10 = self._ID35992;
    var_8 = self._ID35991 * var_1 + self._ID12615 * var_0;
    var_9 = self._ID35993 * var_1 + self._ID12617 * var_0;
    var_10 = self._ID35992 * var_1 + self._ID12616 * var_0;

    if ( !isdefined( var_6 ) )
        var_6 = 1;

    if ( !isdefined( var_7 ) )
        var_7 = 1;

    var_11 = var_6 * var_1 + var_7 * var_0;

    if ( self._ID36819 )
    {
        var_12 = self._ID36021 * var_1 + self._ID12623 * var_0;
        var_13 = self._ID35796 * var_1 + self._ID12601 * var_0;
        var_14 = self._ID36022 * var_1 + self._ID12624 * var_0;
        var_15 = self._ID36020 * var_1 + self._ID12622 * var_0;
        var_16 = self._ID36023 * var_1 + self._ID12625 * var_0;
        var_17 = self._ID36024 * var_1 + self._ID12626 * var_0;
        setexpfog( var_2, var_3, var_4[0], var_4[1], var_4[2], var_5, var_11, 0.4, var_12[0], var_12[1], var_12[2], var_13, var_14, var_15, var_16, var_17, var_8, var_9, var_10 );
    }
    else
        setexpfog( var_2, var_3, var_4[0], var_4[1], var_4[2], var_5, var_11, 0.4, var_8, var_9, var_10 );
}

_ID35554( var_0, var_1 )
{
    level notify( "ssao_set_target_over_time_internal" );
    level endon( "ssao_set_target_over_time_internal" );
    _ID42407::_ID32246();

    if ( !_ID42407::_ID20530() )
        return;

    var_2 = getdvarfloat( "r_ssaoScriptScale", 1.0 );

    for ( var_3 = var_1; var_3 > 0.0; var_3 -= 0.05 )
    {
        var_4 = min( 1.0, 0.05 / var_3 );
        var_5 = var_2;
        var_2 += var_4 * ( var_0 - var_2 );

        if ( var_5 != var_2 )
            setsaveddvar( "r_ssaoScriptScale", var_2 );

        waittillframeend;
    }

    setsaveddvar( "r_ssaoScriptScale", var_0 );
}

_ID10966( var_0 )
{
    level thread _ID35554( 0.0, var_0 );
}

_ID12533( var_0 )
{
    level thread _ID35554( 1.0, var_0 );
}
