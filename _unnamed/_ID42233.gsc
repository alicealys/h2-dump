// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    if ( _func_039( "scr_elevator_disabled" ) == "1" )
        return;

    var_0 = _func_1A2( "elevator_group", "targetname" );

    if ( !_func_02F( var_0 ) )
        return;

    if ( !var_0.size )
        return;

    _func_150( &"ELEVATOR_CALL_HINT" );
    _func_150( &"ELEVATOR_CALL_HINT_PC" );
    _func_150( &"ELEVATOR_USE_HINT" );
    _func_150( &"ELEVATOR_USE_HINT_PC" );
    _func_150( &"ELEVATOR_FLOOR_SELECT_HINT" );
    _func_151( "elevator_floor_selector" );
    thread _unknown_0087();
    level._ID12382 = [];
    level._ID12342 = _unknown_0725( "scr_elevator_callbutton_link_v", "96" );
    level._ID12341 = _unknown_0733( "scr_elevator_callbutton_link_h", "256" );
    _unknown_0380();
    _unknown_027F();
    _unknown_00EF();

    if ( !level._ID12382.size )
        return;

    var_1 = level._ID12382;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_0109();
        var_2 thread _unknown_0248();
    }

    var_clear_2
    var_clear_0
    thread _unknown_077C();
}

_ID12379()
{
    for (;;)
    {
        level._ID12333 = _unknown_0782( "scr_elevator_accel", "0.2" );
        level._ID12346 = _unknown_078F( "scr_elevator_decel", "0.2" );
        level._ID12359 = _unknown_0799( "scr_elevator_music", "1" );
        level._ID12373 = _unknown_07A6( "scr_elevator_speed", "96" );
        level._ID12353 = _unknown_07B4( "scr_elevator_innerdoorspeed", "14" );
        level._ID12361 = _unknown_07C1( "scr_elevator_outterdoorspeed", "16" );
        level._ID12366 = _unknown_07CF( "scr_elevator_return", "0" );
        level._ID12380 = _unknown_07DC( "scr_elevator_waittime", "6" );
        level._ID12334 = _unknown_07EA( "scr_elevator_aggressive_call", "0" );
        level._ID12345 = _unknown_07F7( "debug_elevator", "0" );

        if ( _ID42237::_ID20913() )
            level._ID12357 = _unknown_080A( "scr_elevator_motion_detection", "0" );
        else
            level._ID12357 = _unknown_081B( "scr_elevator_motion_detection", "1" );

        wait 1;
    }
}

_ID12376()
{
    _unknown_01F4( "[A]" );
}

_ID12340()
{
    var_0 = level._ID12343;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 thread _unknown_0296();
    }

    var_clear_2
    var_clear_0
}

_ID14584( var_0 )
{
    self endon( "elevator_moving" );
    self._ID14584 = 0;
    self._ID26157 = undefined;

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        self._ID14584 = 1;
        self._ID26157 = var_1;
        break;
    }

    self notify( "floor_override" );
}

_ID12350( var_0 )
{
    self._ID13194 = var_0;
    var_1 = _unknown_081C();
    var_2 = _unknown_0825();

    for (;;)
    {
        if ( self._ID13194 == "[A]" )
        {
            if ( level._ID12366 && _unknown_0854() != _unknown_085B() )
            {
                self._ID24468 = _unknown_0862();
                thread _unknown_0264( var_2 );
                _unknown_08B1( "floor_override", level._ID12380 );

                if ( self._ID14584 && _func_02F( self._ID26157 ) && _func_1B3( self._ID26157 ) )
                    _unknown_0370( self._ID26157 );

                self._ID13194 = "[B]";
                continue;
            }

            for (;;)
            {
                if ( self._ID24468 == _unknown_08A0() )
                    var_3 = var_2 _unknown_07B7( "trigger" );
                else
                    var_3 = "elevator_called";

                if ( _func_031( var_3 ) && var_3 == "elevator_called" && self._ID24468 != _unknown_08CA() )
                {
                    self._ID13194 = "[B]";
                    break;
                }

                if ( _func_02F( var_3 ) && _func_1B3( var_3 ) && _func_1A7( var_3 ) )
                {
                    var_4 = var_3 _meth_80B0( var_2 );
                    var_5 = _func_02F( var_2._ID24311 ) && var_3 _meth_80B0( var_2._ID24311 );
                    var_6 = var_4 || var_5;

                    if ( var_6 )
                    {
                        var_7 = var_3;
                        _unknown_03F6( var_7 );

                        if ( self._ID24468 == _unknown_0915() )
                            continue;

                        self._ID13194 = "[B]";
                        break;
                    }
                }
            }
        }

        if ( self._ID13194 == "[B]" )
        {
            thread _unknown_0437( var_1 );
            var_8 = _unknown_093A();
            thread _unknown_051F();
            thread _unknown_0578( var_8 );
            _ID42237::_ID41068( "closed_inner_doors", "interrupted" );

            if ( self._ID12355 )
            {
                self._ID13194 = "[C]";
                continue;
            }

            self._ID13194 = "[D]";
            continue;
        }

        if ( self._ID13194 == "[C]" )
        {
            var_8 = _unknown_0975();
            thread _unknown_0580();
            thread _unknown_05DE( var_8 );
            self waittill( "opened_floor_" + var_8 + "_outer_doors" );

            if ( self._ID12355 )
            {
                self._ID13194 = "[B]";
                continue;
            }

            self._ID13194 = "[A]";
            continue;
        }

        if ( self._ID13194 == "[D]" )
        {
            if ( self._ID24468 != _unknown_09B1() )
            {
                thread _unknown_055F( self._ID24468 );
                self waittill( "elevator_moved" );
            }

            self._ID13194 = "[C]";
            continue;
        }
    }
}

_ID23919()
{
    for (;;)
    {
        var_0 = _unknown_08F4( "trigger" );
        var_1 = undefined;
        var_2 = [];
        var_3 = self._ID12279;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            var_1 = var_5;
            var_2 = var_4;
        }

        var_clear_9
        var_6 = 0;
        var_7 = var_2;

        for ( var_10 = _func_1DA( var_7 ); _func_02F( var_10 ); var_10 = _func_1BF( var_7, var_10 ) )
        {
            var_8 = var_7[var_10];
            var_9 = var_8 _unknown_053D();

            if ( !level._ID12334 && !var_9 )
            {
                if ( var_8 _unknown_0A3B() == var_1 )
                {
                    var_6 = 1;
                    var_2 = [];
                    break;
                }
            }
        }

        var_clear_5
        var_clear_2
        var_11 = var_2;

        for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
        {
            var_8 = var_11[var_12];

            if ( var_8._ID13194 == "[A]" )
            {
                var_8 _unknown_054D( var_1 );
                var_6 = 1;

                if ( !level._ID12334 )
                    break;
            }
        }

        var_clear_1
        var_clear_0

        if ( var_6 )
            self _meth_80A1( "elev_bell_ding" );
    }
}

_ID6635( var_0 )
{
    self._ID24468 = var_0;
    var_1 = _unknown_0A83();
    var_1 notify( "trigger",  "elevator_called"  );

    if ( level._ID12357 )
        var_1._ID24311 notify( "trigger",  "elevator_called"  );
}

_ID15734( var_0 )
{
    var_1 = _unknown_0A07();

    if ( var_1.size == 2 )
    {
        var_2 = _unknown_0ACC();
        self._ID24468 = !var_2;
        return;
    }

    var_0 _meth_832E( "elevator_floor_selector" );
    var_0 _meth_8307( "player_current_floor", _ID8150() );

    for (;;)
    {
        var_0 waittill( "menuresponse",  var_4, var_3  );

        if ( var_3 == "elevator_floor_selector" )
        {
            if ( var_4 != "none" )
                self._ID24468 = _func_0C1( var_4 );

            break;
        }
    }
}

_ID12354( var_0 )
{
    self notify( "interrupt_watch" );
    level notify( "elevator_interior_button_pressed" );
    self endon( "interrupt_watch" );
    self endon( "elevator_moving" );
    self._ID12355 = 0;
    wait 0.5;
    var_1 waittill( "trigger",  var_1  );
    self notify( "interrupted" );
    self._ID12355 = 1;
}

_ID12349()
{
    var_0 = _unknown_0AD2();
    var_1 = var_0._ID740;
    var_2 = 1;
    var_3 = _unknown_0A95();

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];
        var_5 = self._ID12279["floor" + var_6 + "_pos"];

        if ( var_1 == var_5 )
        {
            self._ID12279["current_floor"] = var_6;
            var_2 = 0;
        }
    }

    var_clear_3
    return var_2;
}

_ID12372()
{
    var_0 = _unknown_0B5A();

    if ( level._ID12359 && _func_02F( var_0 ) )
        var_0 _meth_807C( "elev_musak_loop" );

    thread _unknown_070A( "closing_inner_doors" );
    thread _unknown_0712( "opening_inner_doors" );
    thread _unknown_071A( "closed_inner_doors" );
    thread _unknown_0723( "opened_inner_doors" );
    var_1 = _unknown_0B0A();

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        thread _unknown_0744( "closing_floor_" + var_3 + "_outer_doors" );
        thread _unknown_0753( "opening_floor_" + var_3 + "_outer_doors" );
        thread _unknown_0761( "closed_floor_" + var_3 + "_outer_doors" );
        thread _unknown_076F( "opened_floor_" + var_3 + "_outer_doors" );
    }

    var_clear_2
    thread _unknown_0780( "interrupted" );
    thread _unknown_0788( "elevator_moving" );
    thread _unknown_0790( "elevator_moved" );
}

_ID22434( var_0 )
{
    for (;;)
    {
        self waittill( var_0 );
        var_1 = _unknown_0BC8();

        if ( _func_125( var_0, "closing_" ) )
            var_1 _meth_80A1( "elev_door_close" );

        if ( _func_125( var_0, "opening_" ) )
            var_1 _meth_80A1( "elev_door_open" );

        if ( var_0 == "elevator_moving" )
        {
            var_1 _meth_80A1( "elev_run_start" );
            var_1 _meth_807C( "elev_run_loop" );
        }

        if ( var_0 == "interrupted" )
            var_1 _meth_80A1( "elev_door_interupt" );

        if ( var_0 == "elevator_moved" )
        {
            var_1 _meth_80B2( "elev_run_loop" );
            var_1 _meth_80A1( "elev_run_end" );
            var_1 _meth_80A1( "elev_bell_ding" );
        }
    }
}

_ID28255()
{
    var_0 = level._ID12382;

    for ( var_5 = _func_1DA( var_0 ); _func_02F( var_5 ); var_5 = _func_1BF( var_0, var_5 ) )
    {
        var_1 = var_0[var_5];
        var_1._ID24468 = var_1 _unknown_0CBE();
        var_2 = var_1 _unknown_0C0D();

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( var_1 _unknown_0CDB() != var_4 )
                var_1 thread _unknown_0918( var_4 );
        }

        var_clear_3
    }

    var_clear_5
}

_ID12358( var_0 )
{
    self notify( "elevator_moving" );
    self endon( "elevator_moving" );
    var_1 = _unknown_0C96();
    var_2 = self._ID12279["floor" + var_0 + "_pos"] - var_1._ID740;
    var_3 = level._ID12373;
    var_4 = _func_0C3( _func_0F3( self._ID12279["floor" + var_0 + "_pos"], var_1._ID740 ) );
    var_5 = var_4 / var_3;
    var_1 _meth_82B8( var_1._ID740 + var_2, var_5, var_5 * level._ID12333, var_5 * level._ID12346 );
    var_6 = _unknown_0CB1();

    for ( var_9 = _func_1DA( var_6 ); _func_02F( var_9 ); var_9 = _func_1BF( var_6, var_9 ) )
    {
        var_7 = var_6[var_9];
        var_8 = var_7._ID740 + var_2;

        if ( !_func_125( var_7._ID170, "trigger_" ) )
        {
            var_7 _meth_82B8( var_8, var_5, var_5 * level._ID12333, var_5 * level._ID12346 );
            continue;
        }

        var_7._ID740 = var_8;
    }

    var_clear_3
    var_clear_0
    _unknown_0DAC( var_1, self._ID12279["floor" + var_0 + "_pos"] );
    self notify( "elevator_moved" );
}

_ID8147()
{
    self notify( "closing_inner_doors" );
    self endon( "closing_inner_doors" );
    self endon( "opening_inner_doors" );
    var_0 = _unknown_0DAE();
    var_1 = _unknown_0DB7();
    var_2 = _unknown_0D58();
    var_3 = _unknown_0DB7();
    var_4 = ( var_3[0], var_3[1], var_2._ID740[2] );
    var_5 = level._ID12353;
    var_6 = _func_0C3( _func_0F3( var_0._ID740, var_4 ) );
    var_7 = var_6 / var_5;
    var_0 _meth_82B8( var_4, var_7, var_7 * 0.1, var_7 * 0.25 );
    var_1 _meth_82B8( var_4, var_7, var_7 * 0.1, var_7 * 0.25 );
    _unknown_0E1F( var_0, var_4, var_1, var_4 );
    self notify( "closed_inner_doors" );
}

_ID25878()
{
    self notify( "opening_inner_doors" );
    self endon( "opening_inner_doors" );
    var_0 = _unknown_0E1C();
    var_1 = _unknown_0E25();
    var_2 = _unknown_0DC6();
    var_3 = _unknown_0E33();
    var_4 = _unknown_0E3C();
    var_5 = ( var_3[0], var_3[1], var_2._ID740[2] );
    var_6 = ( var_4[0], var_4[1], var_2._ID740[2] );
    var_7 = level._ID12353;
    var_8 = _func_0C3( _func_0F3( var_5, var_6 ) * 0.5 );
    var_9 = var_8 / var_7 * 0.5;
    var_0 _meth_82B8( var_5, var_9, var_9 * 0.1, var_9 * 0.25 );
    var_1 _meth_82B8( var_6, var_9, var_9 * 0.1, var_9 * 0.25 );
    _unknown_0EA6( var_0, var_5, var_1, var_6 );
    self notify( "opened_inner_doors" );
}

_ID8150( var_0 )
{
    self notify( "closing_floor_" + var_0 + "_outer_doors" );
    self endon( "closing_floor_" + var_0 + "_outer_doors" );
    self endon( "opening_floor_" + var_0 + "_outer_doors" );
    var_1 = _unknown_0E1D( var_0 );
    var_2 = _unknown_0E28( var_0 );
    var_3 = _unknown_0E34( var_0 );
    var_4 = _unknown_0E29( var_0 );
    var_5 = level._ID12361;
    var_6 = _func_0C3( _func_0F3( var_3, var_4 ) );
    var_7 = var_6 / var_5;
    var_1 _meth_82B8( var_4, var_7, var_7 * 0.1, var_7 * 0.25 );
    var_2 _meth_82B8( var_4, var_7, var_7 * 0.1, var_7 * 0.25 );
    _unknown_0F21( var_1, var_4, var_2, var_4 );
    self notify( "closed_floor_" + var_0 + "_outer_doors" );
}

_ID25881( var_0 )
{
    level notify( "elevator_doors_opening" );
    self notify( "opening_floor_" + var_0 + "_outer_doors" );
    self endon( "opening_floor_" + var_0 + "_outer_doors" );
    var_1 = _unknown_0E99( var_0 );
    var_2 = _unknown_0EA5( var_0 );
    var_3 = _unknown_0EB0( var_0 );
    var_4 = _unknown_0EBC( var_0 );
    var_5 = _unknown_0EAC( var_0 );
    var_6 = level._ID12361;
    var_7 = _func_0C3( _func_0F3( var_3, var_5 ) );
    var_8 = var_7 / var_6 * 0.5;
    var_1 _meth_82B8( var_3, var_8, var_8 * 0.1, var_8 * 0.25 );
    var_2 _meth_82B8( var_4, var_8, var_8 * 0.1, var_8 * 0.25 );
    _unknown_0FA9( var_1, var_3, var_2, var_4 );
    self notify( "opened_floor_" + var_0 + "_outer_doors" );
}

_ID6221()
{
    var_0 = _func_1A2( "elevator_group", "targetname" );
    var_1 = _func_1A2( "elevator_housing", "targetname" );
    var_2 = _func_1A2( "elevator_doorset", "targetname" );
    var_3 = var_0;

    for ( var_35 = _func_1DA( var_3 ); _func_02F( var_35 ); var_35 = _func_1BF( var_3, var_35 ) )
    {
        var_4 = var_3[var_35];
        var_5 = _func_1A1( var_4._ID1191, "targetname" );
        var_6 = [];
        var_6[0] = _func_0C4( var_4._ID740[0], var_5._ID740[0] );
        var_6[1] = _func_0E6( var_4._ID740[0], var_5._ID740[0] );
        var_6[2] = _func_0C4( var_4._ID740[1], var_5._ID740[1] );
        var_6[3] = _func_0E6( var_4._ID740[1], var_5._ID740[1] );
        var_7 = _func_1A5();
        var_7._ID12279["id"] = level._ID12382.size;
        var_7._ID12279["housing"] = [];
        var_7._ID12279["housing"]["mainframe"] = [];
        var_8 = var_1;

        for ( var_15 = _func_1DA( var_8 ); _func_02F( var_15 ); var_15 = _func_1BF( var_8, var_15 ) )
        {
            var_9 = var_8[var_15];

            if ( var_9 _unknown_10A8( var_6 ) )
            {
                var_7._ID12279["housing"]["mainframe"][var_7._ID12279["housing"]["mainframe"].size] = var_9;

                if ( var_9._ID170 == "script_model" )
                    continue;

                if ( var_9._ID172 == "light" )
                    continue;

                var_10 = _func_1A1( var_9._ID1191, "targetname" );
                var_7._ID12279["housing"]["left_door"] = var_10;
                var_7._ID12279["housing"]["left_door_opened_pos"] = var_10._ID740;
                var_11 = _func_1A1( var_10._ID1191, "targetname" );
                var_7._ID12279["housing"]["right_door"] = var_11;
                var_7._ID12279["housing"]["right_door_opened_pos"] = var_11._ID740;
                var_12 = var_10._ID740 - var_11._ID740 * ( 0.5, 0.5, 0.5 ) + var_11._ID740;
                var_7._ID12279["housing"]["door_closed_pos"] = var_12;
                var_13 = _func_1A1( var_11._ID1191, "targetname" );
                var_7._ID12279["housing"]["door_trigger"] = var_13;
                var_14 = _func_1A1( var_13._ID1191, "targetname" );
                var_7._ID12279["housing"]["inside_trigger"] = var_14;
                var_14 _unknown_1085();
                var_14._ID24311 = _func_06A( "trigger_radius", var_9._ID740, 0, 64, 128 );
            }
        }

        var_clear_12
        var_clear_10
        var_7._ID12279["outer_doorset"] = [];
        var_16 = var_2;

        for ( var_23 = _func_1DA( var_16 ); _func_02F( var_23 ); var_23 = _func_1BF( var_16, var_23 ) )
        {
            var_17 = var_16[var_23];

            if ( var_17 _unknown_11DB( var_6 ) )
            {
                var_18 = _func_02F( var_17._ID922 ) && var_17._ID922 == "closed_for_lighting";
                var_19 = var_7._ID12279["outer_doorset"].size;
                var_7._ID12279["outer_doorset"][var_19] = [];
                var_7._ID12279["outer_doorset"][var_19]["door_closed_pos"] = var_17._ID740;
                var_20 = _func_1A1( var_17._ID1191, "targetname" );
                var_7._ID12279["outer_doorset"][var_19]["left_door"] = var_20;
                var_7._ID12279["outer_doorset"][var_19]["left_door_opened_pos"] = var_20._ID740;
                var_21 = _func_1A1( var_20._ID1191, "targetname" );
                var_7._ID12279["outer_doorset"][var_19]["right_door"] = var_21;
                var_7._ID12279["outer_doorset"][var_19]["right_door_opened_pos"] = var_21._ID740;

                if ( var_18 )
                {
                    var_22 = var_17._ID740 - var_20._ID740;
                    var_17._ID740 = var_20._ID740;
                    var_20._ID740 = var_20._ID740 + var_22;
                    var_21._ID740 = var_21._ID740 - var_22;
                    var_7._ID12279["outer_doorset"][var_19]["door_closed_pos"] = var_17._ID740;
                    var_7._ID12279["outer_doorset"][var_19]["left_door_opened_pos"] = var_20._ID740;
                    var_7._ID12279["outer_doorset"][var_19]["right_door_opened_pos"] = var_21._ID740;
                }
            }
        }

        var_clear_9
        var_clear_7

        for ( var_24 = 0; var_24 < var_7._ID12279["outer_doorset"].size - 1; var_24++ )
        {
            for ( var_25 = 0; var_25 < var_7._ID12279["outer_doorset"].size - 1 - var_24; var_25++ )
            {
                if ( var_7._ID12279["outer_doorset"][var_25 + 1]["door_closed_pos"][2] < var_7._ID12279["outer_doorset"][var_25]["door_closed_pos"][2] )
                {
                    var_26 = var_7._ID12279["outer_doorset"][var_25]["left_door"];
                    var_27 = var_7._ID12279["outer_doorset"][var_25]["left_door_opened_pos"];
                    var_28 = var_7._ID12279["outer_doorset"][var_25]["right_door"];
                    var_29 = var_7._ID12279["outer_doorset"][var_25]["right_door_opened_pos"];
                    var_30 = var_7._ID12279["outer_doorset"][var_25]["door_closed_pos"];
                    var_7._ID12279["outer_doorset"][var_25]["left_door"] = var_7._ID12279["outer_doorset"][var_25 + 1]["left_door"];
                    var_7._ID12279["outer_doorset"][var_25]["left_door_opened_pos"] = var_7._ID12279["outer_doorset"][var_25 + 1]["left_door_opened_pos"];
                    var_7._ID12279["outer_doorset"][var_25]["right_door"] = var_7._ID12279["outer_doorset"][var_25 + 1]["right_door"];
                    var_7._ID12279["outer_doorset"][var_25]["right_door_opened_pos"] = var_7._ID12279["outer_doorset"][var_25 + 1]["right_door_opened_pos"];
                    var_7._ID12279["outer_doorset"][var_25]["door_closed_pos"] = var_7._ID12279["outer_doorset"][var_25 + 1]["door_closed_pos"];
                    var_7._ID12279["outer_doorset"][var_25 + 1]["left_door"] = var_26;
                    var_7._ID12279["outer_doorset"][var_25 + 1]["left_door_opened_pos"] = var_27;
                    var_7._ID12279["outer_doorset"][var_25 + 1]["right_door"] = var_28;
                    var_7._ID12279["outer_doorset"][var_25 + 1]["right_door_opened_pos"] = var_29;
                    var_7._ID12279["outer_doorset"][var_25 + 1]["door_closed_pos"] = var_30;
                }
            }
        }

        var_31 = [];
        var_32 = var_7._ID12279["outer_doorset"];

        for ( var_24 = _func_1DA( var_32 ); _func_02F( var_24 ); var_24 = _func_1BF( var_32, var_24 ) )
        {
            var_33 = var_32[var_24];
            var_34 = var_7 _unknown_1425();
            var_31 = ( var_34._ID740[0], var_34._ID740[1], var_33["door_closed_pos"][2] );
            var_7._ID12279["floor" + var_24 + "_pos"] = var_31;

            if ( var_34._ID740 == var_31 )
            {
                var_7._ID12279["initial_floor"] = var_24;
                var_7._ID12279["current_floor"] = var_24;
            }
        }

        var_clear_3
        level._ID12382[level._ID12382.size] = var_7;
        var_4 _meth_80B7();
        var_5 _meth_80B7();
    }

    var_clear_17
    var_clear_0
    var_36 = var_2;

    for ( var_37 = _func_1DA( var_36 ); _func_02F( var_37 ); var_37 = _func_1BF( var_36, var_37 ) )
    {
        var_17 = var_36[var_37];
        var_17 _meth_80B7();
    }

    var_clear_1
    var_clear_0
    _unknown_139A();

    if ( !level._ID12357 )
        _unknown_13FF();

    var_38 = level._ID12382;

    for ( var_44 = _func_1DA( var_38 ); _func_02F( var_44 ); var_44 = _func_1BF( var_38, var_44 ) )
    {
        var_39 = var_38[var_44];
        var_40 = var_39 _unknown_14FA();

        if ( _func_02F( var_40 ) && var_40.size )
        {
            var_41 = var_40;

            for ( var_43 = _func_1DA( var_41 ); _func_02F( var_43 ); var_43 = _func_1BF( var_41, var_43 ) )
            {
                var_42 = var_41[var_43];
                var_42 _meth_81EB( 0.75 );
            }

            var_clear_2
            var_clear_0
        }
    }

    var_clear_3
    var_clear_0
}

_ID6208()
{
    level._ID12343 = _func_1A2( "elevator_call", "targetname" );
    var_0 = level._ID12343;

    for ( var_13 = _func_1DA( var_0 ); _func_02F( var_13 ); var_13 = _func_1BF( var_0, var_13 ) )
    {
        var_1 = var_0[var_13];
        var_1._ID12279 = [];
        var_2 = ( 0, 0, var_1._ID740[2] );
        var_3 = ( var_1._ID740[0], var_1._ID740[1], 0 );
        var_4 = [];
        var_5 = level._ID12382;

        for ( var_12 = _func_1DA( var_5 ); _func_02F( var_12 ); var_12 = _func_1BF( var_5, var_12 ) )
        {
            var_6 = var_5[var_12];
            var_7 = var_6 _unknown_1525();

            for ( var_11 = _func_1DA( var_7 ); _func_02F( var_11 ); var_11 = _func_1BF( var_7, var_11 ) )
            {
                var_8 = var_7[var_11];
                var_9 = ( 0, 0, var_6._ID12279["floor" + var_11 + "_pos"][2] );
                var_10 = ( var_6._ID12279["floor" + var_11 + "_pos"][0], var_6._ID12279["floor" + var_11 + "_pos"][1], 0 );

                if ( _func_0C3( _func_0F3( var_2, var_9 ) ) <= level._ID12342 )
                {
                    if ( _func_0C3( _func_0F3( var_3, var_10 ) ) <= level._ID12341 )
                    {
                        var_4[var_4.size] = var_6;
                        var_1._ID12279[var_11] = var_4;
                    }
                }
            }

            var_clear_6
        }

        var_clear_8
        var_1 _unknown_156D();
        var_1._ID24311 = _func_06A( "trigger_radius", var_1._ID740 + ( 0, 0, -32 ), 0, 32, 64 );
    }

    var_clear_13
    var_clear_0
}

_ID33091()
{
    var_0 = level._ID12382;

    for ( var_5 = _func_1DA( var_0 ); _func_02F( var_5 ); var_5 = _func_1BF( var_0, var_5 ) )
    {
        var_1 = var_0[var_5];
        var_2 = var_1 _unknown_168F();
        var_3 = var_1 _unknown_15F5();
        var_4 = var_3.size;
        var_2 _meth_80E1( "HINT_NOICON" );

        if ( var_4 > 2 )
        {
            var_2 _meth_80E2( &"ELEVATOR_FLOOR_SELECT_HINT" );
            continue;
        }

        var_2 thread _ID42237::_ID44574( level._ID794, &"ELEVATOR_USE_HINT", &"ELEVATOR_USE_HINT_PC", "trigger" );
    }

    var_clear_5
    var_clear_0
    var_6 = level._ID12343;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 _meth_80E1( "HINT_NOICON" );
        var_7 thread _ID42237::_ID44574( level._ID794, &"ELEVATOR_CALL_HINT", &"ELEVATOR_CALL_HINT_PC", "trigger" );
    }

    var_clear_2
    var_clear_0
}

_ID22810()
{
    self._ID12560 = 1;
    _unknown_164E();
}

_ID11070( var_0 )
{
    _unknown_1643();

    if ( level._ID12357 )
    {
        self._ID24311 waittill( var_1,  var_1  );
        jump loc_165A
    }

    self waittill( var_0,  var_0  );
    _unknown_166F();
    return var_0;
}

_ID12546()
{
    if ( !self._ID12560 )
    {
        self._ID12560 = 1;
        self._ID740 = self._ID740 + ( 0, 0, 10000 );

        if ( _func_02F( self._ID24311 ) )
            self._ID24311._ID740 = self._ID24311._ID740 + ( 0, 0, 10000 );
    }
}

_ID10983()
{
    self notify( "disable_trigger" );

    if ( self._ID12560 )
        thread _unknown_16BC();
}

_ID10984()
{
    self endon( "disable_trigger" );
    self._ID12560 = 0;
    wait 1.5;
    self._ID740 = self._ID740 + ( 0, 0, -10000 );

    if ( _func_02F( self._ID24311 ) )
        self._ID24311._ID740 = self._ID24311._ID740 + ( 0, 0, -10000 );
}

_ID15887( var_0 )
{
    return self._ID12279["outer_doorset"][var_0];
}

_ID15888()
{
    return self._ID12279["outer_doorset"];
}

_ID15886( var_0 )
{
    return self._ID12279["outer_doorset"][var_0]["door_closed_pos"];
}

_ID15889( var_0 )
{
    return self._ID12279["outer_doorset"][var_0]["left_door"];
}

_ID15891( var_0 )
{
    return self._ID12279["outer_doorset"][var_0]["right_door"];
}

_ID15890( var_0 )
{
    return self._ID12279["outer_doorset"][var_0]["left_door_opened_pos"];
}

_ID15892( var_0 )
{
    return self._ID12279["outer_doorset"][var_0]["right_door_opened_pos"];
}

_ID15769()
{
    var_0 = [];
    var_1 = _unknown_181A();
    var_2 = _unknown_1823();
    var_3 = var_2._ID24311;
    var_4 = _unknown_1836();
    var_5 = _unknown_183F();
    var_0[var_0.size] = var_1;
    var_0[var_0.size] = var_2;
    var_0[var_0.size] = var_4;
    var_0[var_0.size] = var_5;

    if ( _func_02F( var_3 ) )
        var_0[var_0.size] = var_3;

    var_6 = _unknown_1812();
    var_7 = var_6;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_0[var_0.size] = var_8;
    }

    var_clear_2
    var_clear_0
    var_10 = _unknown_184A();
    var_11 = var_10;

    for ( var_13 = _func_1DA( var_11 ); _func_02F( var_13 ); var_13 = _func_1BF( var_11, var_13 ) )
    {
        var_12 = var_11[var_13];
        var_0[var_0.size] = var_12;
    }

    var_clear_2
    var_clear_0
    return var_0;
}

_ID15775()
{
    var_0 = self._ID12279["housing"]["mainframe"];
    var_1 = undefined;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3._ID170 != "script_model" && var_3._ID172 != "light" )
            var_1 = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID15776()
{
    var_0 = self._ID12279["housing"]["mainframe"];
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3._ID170 == "script_model" )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID15778()
{
    var_0 = self._ID12279["housing"]["mainframe"];
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3._ID172 == "light" )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID15777()
{
    var_0 = _unknown_1919();
    var_1 = undefined;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID922 ) && var_3._ID922 == "play_musak" )
            var_1 = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID15771()
{
    return self._ID12279["housing"]["door_trigger"];
}

_ID15772()
{
    return self._ID12279["housing"]["inside_trigger"];
}

_ID15770()
{
    return self._ID12279["housing"]["door_closed_pos"];
}

_ID15773()
{
    return self._ID12279["housing"]["left_door"];
}

_ID15779()
{
    return self._ID12279["housing"]["right_door"];
}

_ID15774()
{
    return self._ID12279["housing"]["left_door_opened_pos"];
}

_ID15780()
{
    return self._ID12279["housing"]["right_door_opened_pos"];
}

_ID15650()
{
    var_0 = _unknown_151E();
    return self._ID12279["current_floor"];
}

_ID15791()
{
    return self._ID12279["initial_floor"];
}

_ID41107( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_2 ) && !_func_02F( var_3 ) )
    {
        var_2 = var_0;
        var_3 = var_1;
    }

    for (;;)
    {
        var_4 = var_0._ID740;
        var_5 = var_2._ID740;

        if ( var_4 == var_1 && var_5 == var_3 )
            break;

        wait 0.05;
    }
}

_ID20772( var_0 )
{
    var_1 = self._ID740[0];
    var_2 = self._ID740[1];
    var_3 = var_0[0];
    var_4 = var_0[1];
    var_5 = var_0[2];
    var_6 = var_0[3];
    return var_1 >= var_3 && var_1 <= var_4 && var_2 >= var_5 && var_2 <= var_6;
}

_ID20774( var_0 )
{
    var_1 = self._ID740[0];
    var_2 = self._ID740[1];
    var_3 = var_0[0];
    var_4 = var_0[1];
    var_5 = var_0[2];
    var_6 = var_0[3];
    var_7 = var_3 + var_4 / 2;
    var_8 = var_5 + var_6 / 2;
    var_9 = _func_0C3( _func_0F3( ( var_3, var_5, 0 ), ( var_7, var_8, 0 ) ) );
    return _func_0C3( _func_0F3( ( var_1, var_2, 0 ), ( var_7, var_8, 0 ) ) ) < var_9;
}

_ID41130( var_0, var_1 )
{
    self endon( var_0 );
    wait(var_1);
}

_ID12352( var_0, var_1 )
{
    return _func_0C1( _unknown_1B2A( var_0, var_1 ) );
}

_ID12351( var_0, var_1 )
{
    if ( _func_039( var_0 ) != "" )
        return _func_03B( var_0 );
    else
    {
        _func_034( var_0, var_1 );
        return var_1;
    }
}

_ID12345()
{
    if ( !level._ID12345 )
        return;

    for (;;)
    {
        if ( level._ID12345 != 2 )
            continue;

        var_0 = level._ID12382;

        for ( var_7 = _func_1DA( var_0 ); _func_02F( var_7 ); var_7 = _func_1BF( var_0, var_7 ) )
        {
            var_1 = var_0[var_7];
            var_2 = var_1 _unknown_1AD1();
            var_3 = var_1 _unknown_1B16();
            var_4 = var_1._ID12279["outer_doorset"];

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
                var_5 = var_4[var_6];

            var_clear_13
        }

        var_clear_17
        var_8 = level._ID12343;

        for ( var_17 = _func_1DA( var_8 ); _func_02F( var_17 ); var_17 = _func_1BF( var_8, var_17 ) )
        {
            var_9 = var_8[var_17];
            var_10 = var_9._ID12279;

            for ( var_16 = _func_1DA( var_10 ); _func_02F( var_16 ); var_16 = _func_1BF( var_10, var_16 ) )
            {
                var_5 = var_10[var_16];
                var_11 = 0;
                var_12 = var_5;

                for ( var_15 = _func_1DA( var_12 ); _func_02F( var_15 ); var_15 = _func_1BF( var_12, var_15 ) )
                {
                    var_13 = var_12[var_15];
                    var_11++;
                    var_14 = var_9._ID740 + ( 0, 0, var_11 * -4 );
                }

                var_clear_5
            }

            var_clear_7
        }

        var_clear_9
        var_clear_0
        wait 0.05;
    }
}
