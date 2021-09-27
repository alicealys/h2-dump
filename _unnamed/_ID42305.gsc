// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID13250( var_0 )
{
    var_0 endon( "death" );

    while ( var_0._ID486 > 0 )
    {
        var_0 waittill( "missile_lock",  var_1  );
        var_2 = _unknown_0030( var_0, "random" );
        _unknown_00B9( var_0, var_2 );
        wait 0.05;
    }
}

_ID13244( var_0, var_1 )
{
    switch ( var_1 )
    {

    }

    var_3 = _unknown_02E3( var_0 );
    return var_3;
    case "360_counter_clockwise":
    case "360_clockwise":
    case "strafe_right_left":
    case "random":
}

_ID13249( var_0, var_1 )
{
    var_0 notify( "taking_evasive_actions" );
    var_0 endon( "taking_evasive_actions" );
    var_0 endon( "death" );
    var_0 notify( "evasive_action_done" );
    thread _unknown_02BF( var_0 );

    if ( _func_039( "cobrapilot_debug" ) == "1" )
        var_0 _unknown_031D( var_1 );

    var_0 _meth_8264( 1500 );
    var_0 _meth_828D( 100, 30, 30 );
    var_2 = var_0._ID65[1];

    for ( var_3 = 1; var_3 < var_1.size; var_3++ )
    {
        if ( _func_02F( var_1[var_3 + 1] ) )
            var_4 = _func_11A( var_1[var_3 + 1]["pos"] - var_1[var_3]["pos"] );
        else
            var_4 = ( 0, var_2, 0 );

        var_5 = var_4[1];

        if ( var_1[var_3]["goalYawMethod"] == "average" )
            var_5 = var_4[1] + var_2 / 2;
        else if ( var_1[var_3]["goalYawMethod"] == "forward" )
            var_5 = var_0._ID65[1];

        if ( _func_039( "cobrapilot_debug" ) == "1" )
            thread _ID42407::_ID11714( var_1[var_3]["pos"], var_1[var_3]["pos"] + _func_11F( ( 0, var_5, 0 ) ) * 250, 1.0, 1.0, 0.2, var_0, "evasive_action_done" );

        var_0 _meth_8268( var_5 );
        var_0 thread _ID42413::_ID33617( var_1[var_3]["pos"], 0 );
        var_0 waittill( "near_goal" );
    }

    var_0 notify( "evasive_action_done" );
    var_0 thread _ID42407::_ID40226();
}

_ID13246( var_0 )
{
    var_0 notify( "end_maneuvers" );
    var_0 endon( "end_maneuvers" );
    var_0 endon( "evasive_action_done" );
    var_0 endon( "death" );
    var_0 waittill( "missile_lock_ended" );
    var_0 thread _ID42407::_ID40226();
}

_ID13243( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( self._ID13248 ) )
    {
        self._ID13248 = [];
        self._ID13248[0]["pos"] = self._ID740;
        self._ID13248[0]["ang"] = ( 0, self._ID65[1], 0 );
    }

    var_4 = self._ID13248.size;

    if ( !_func_02F( var_3 ) )
        var_3 = "none";

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    self._ID13248[var_4]["forward"] = var_0;
    self._ID13248[var_4]["side"] = var_1;
    self._ID13248[var_4]["up"] = var_2;
    var_5 = _func_11F( self._ID13248[0]["ang"] );
    var_6 = _func_11E( self._ID13248[0]["ang"] );
    self._ID13248[var_4]["pos"] = self._ID13248[var_4 - 1]["pos"] + var_5 * self._ID13248[var_4]["forward"] + var_6 * self._ID13248[var_4]["side"] + ( 0, 0, var_2 );
    self._ID13248[var_4]["goalYawMethod"] = var_3;
}

_ID13247( var_0 )
{
    var_1 = var_0._ID13248;
    var_0._ID13248 = undefined;
    return var_1;
}

_ID13245( var_0 )
{
    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        thread _ID42407::_ID11714( var_0[var_1 - 1]["pos"], var_0[var_1]["pos"], 1.0, 0.2, 0.2, self, "evasive_action_done" );
}

_ID41796( var_0 )
{
    var_0 endon( "death" );
    level._ID28028 endon( "death" );
    var_1 = 2200;
    var_2 = 1500;
    var_3 = 0;
    var_4 = 1.0;
    var_5 = 1.2;
    var_6 = 50;
    var_7 = 60;
    var_8 = 2000;
    var_9 = _unknown_05C9();
    var_10 = 0.0;
    var_11 = _func_03D();
    var_12 = _unknown_05CB( var_1, var_2, var_3 );
    var_0 _meth_828D( 30, 20, 20 );
    var_0 _meth_8268( level._ID28028._ID65[1] );
    var_0 _meth_8265( var_12, 1 );

    for (;;)
    {
        var_12 = _unknown_05F5( var_1, var_2, var_3 );

        if ( _func_039( "cobrapilot_debug" ) == "1" )
        {
            thread _ID42237::_ID11707( level._ID28028._ID740, var_12, 0, 1, 0, var_4 );
            thread _ID42237::_ID11707( level._ID28028._ID740, var_0._ID740, 0, 0, 1, var_4 );
            thread _ID42237::_ID11707( var_0._ID740, var_12, 1, 1, 0, var_4 );
        }

        var_13 = _func_03D();

        if ( var_13 >= var_11 + var_8 )
        {
            var_11 = var_13;
            var_10 = var_9;
            var_9 = _unknown_0656();
        }

        var_14 = 0;
        var_15 = 0;

        if ( var_10 > 20 )
        {
            var_15 = var_10;
            var_14 = 1;
        }
        else if ( var_10 <= 20 && _unknown_0671() > 20 )
        {
            var_15 = _unknown_0679();
            var_14 = 1;
        }

        if ( var_14 && var_15 > 0 )
        {
            var_15 *= var_5;
            var_16 = var_6;
            var_17 = var_7;

            if ( var_16 >= var_15 / 2 )
                var_16 = var_15 / 2;

            if ( var_17 >= var_15 / 2 )
                var_17 = var_15 / 2;

            var_0 _meth_828D( var_15, var_16, var_17 );
            var_0 _meth_8268( level._ID28028._ID65[1] );
            var_18 = 0;

            if ( _unknown_06BD() <= 30 )
                var_18 = 1;

            if ( _func_039( "cobrapilot_debug" ) == "1" )
                _func_19E( "wingman speed: " + var_15 + " : " + var_18 );

            var_0 _meth_8265( var_12, var_18 );
        }

        wait(var_4);
    }
}

_ID41795( var_0, var_1, var_2 )
{
    var_3 = _func_11F( _ID42237::_ID14539( level._ID28028._ID65 ) );
    var_4 = _func_11E( _ID42237::_ID14539( level._ID28028._ID65 ) );
    var_5 = level._ID28028._ID740 + var_3 * var_0 + var_4 * var_1 + ( 0, 0, var_2 );
    return var_5;
}

_ID16528()
{
    return level._ID28028 _meth_8290();
}
