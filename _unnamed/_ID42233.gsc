// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init()
{
    if ( getdvar( "scr_elevator_disabled" ) == "1" )
        return;

    var_0 = getentarray( "elevator_group", "targetname" );

    if ( !isdefined( var_0 ) )
        return;

    if ( !var_0.size )
        return;

    precachestring( &"ELEVATOR_CALL_HINT" );
    precachestring( &"ELEVATOR_CALL_HINT_PC" );
    precachestring( &"ELEVATOR_USE_HINT" );
    precachestring( &"ELEVATOR_USE_HINT_PC" );
    precachestring( &"ELEVATOR_FLOOR_SELECT_HINT" );
    precachemenu( "elevator_floor_selector" );
    thread _ID12379();
    level._ID12382 = [];
    level._ID12342 = _ID12352( "scr_elevator_callbutton_link_v", "96" );
    level._ID12341 = _ID12352( "scr_elevator_callbutton_link_h", "256" );
    _ID6221();
    _ID28255();
    _ID12340();

    if ( !level._ID12382.size )
        return;

    foreach ( var_2 in level._ID12382 )
    {
        var_2 thread _ID12376();
        var_2 thread _ID12372();
    }

    thread _ID12345();
}

_ID12379()
{
    for (;;)
    {
        level._ID12333 = _ID12351( "scr_elevator_accel", "0.2" );
        level._ID12346 = _ID12351( "scr_elevator_decel", "0.2" );
        level._ID12359 = _ID12352( "scr_elevator_music", "1" );
        level._ID12373 = _ID12352( "scr_elevator_speed", "96" );
        level._ID12353 = _ID12352( "scr_elevator_innerdoorspeed", "14" );
        level._ID12361 = _ID12352( "scr_elevator_outterdoorspeed", "16" );
        level._ID12366 = _ID12352( "scr_elevator_return", "0" );
        level._ID12380 = _ID12352( "scr_elevator_waittime", "6" );
        level._ID12334 = _ID12352( "scr_elevator_aggressive_call", "0" );
        level._ID12345 = _ID12352( "debug_elevator", "0" );

        if ( _ID42237::_ID20913() )
            level._ID12357 = _ID12352( "scr_elevator_motion_detection", "0" );
        else
            level._ID12357 = _ID12352( "scr_elevator_motion_detection", "1" );

        wait 1;
    }
}

_ID12376()
{
    _ID12350( "[A]" );
}

_ID12340()
{
    foreach ( var_1 in level._ID12343 )
        var_1 thread _ID23919();
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
    var_1 = _ID15771();
    var_2 = _ID15772();

    for (;;)
    {
        if ( self._ID13194 == "[A]" )
        {
            if ( level._ID12366 && _ID15650() != _ID15791() )
            {
                self._ID24468 = _ID15791();
                thread _ID14584( var_2 );
                _ID41130( "floor_override", level._ID12380 );

                if ( self._ID14584 && isdefined( self._ID26157 ) && isplayernumber( self._ID26157 ) )
                    _ID15734( self._ID26157 );

                self._ID13194 = "[B]";
                continue;
            }

            for (;;)
            {
                if ( self._ID24468 == _ID15650() )
                    var_3 = var_2 _ID11070( "trigger" );
                else
                    var_3 = "elevator_called";

                if ( isstring( var_3 ) && var_3 == "elevator_called" && self._ID24468 != _ID15650() )
                {
                    self._ID13194 = "[B]";
                    break;
                }

                if ( isdefined( var_3 ) && isplayernumber( var_3 ) && isalive( var_3 ) )
                {
                    var_4 = var_3 istouching( var_2 );
                    var_5 = isdefined( var_2._ID24311 ) && var_3 istouching( var_2._ID24311 );
                    var_6 = var_4 || var_5;

                    if ( var_6 )
                    {
                        var_7 = var_3;
                        _ID15734( var_7 );

                        if ( self._ID24468 == _ID15650() )
                            continue;

                        self._ID13194 = "[B]";
                        break;
                    }
                }
            }
        }

        if ( self._ID13194 == "[B]" )
        {
            thread _ID12354( var_1 );
            var_8 = _ID15650();
            thread _ID8147();
            thread _ID8150( var_8 );
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
            var_8 = _ID15650();
            thread _ID25878();
            thread _ID25881( var_8 );
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
            if ( self._ID24468 != _ID15650() )
            {
                thread _ID12358( self._ID24468 );
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
        var_0 = _ID11070( "trigger" );
        var_1 = undefined;
        var_2 = [];

        foreach ( var_5, var_4 in self._ID12279 )
        {
            var_1 = var_5;
            var_2 = var_4;
        }

        var_6 = 0;

        foreach ( var_8 in var_2 )
        {
            var_9 = var_8 _ID12349();

            if ( !level._ID12334 && !var_9 )
            {
                if ( var_8 _ID15650() == var_1 )
                {
                    var_6 = 1;
                    var_2 = [];
                    break;
                }
            }
        }

        foreach ( var_8 in var_2 )
        {
            if ( var_8._ID13194 == "[A]" )
            {
                var_8 _ID6635( var_1 );
                var_6 = 1;

                if ( !level._ID12334 )
                    break;
            }
        }

        if ( var_6 )
            self playsound( "elev_bell_ding" );
    }
}

_ID6635( var_0 )
{
    self._ID24468 = var_0;
    var_1 = _ID15772();
    var_1 notify( "trigger",  "elevator_called"  );

    if ( level._ID12357 )
        var_1._ID24311 notify( "trigger",  "elevator_called"  );
}

_ID15734( var_0 )
{
    var_1 = _ID15888();

    if ( var_1.size == 2 )
    {
        var_2 = _ID15650();
        self._ID24468 = !var_2;
        return;
    }

    var_0 openpopupmenu( "elevator_floor_selector" );
    var_0 setclientdvar( "player_current_floor", _ID15650() );

    for (;;)
    {
        var_0 waittill( "menuresponse",  var_3, var_4  );

        if ( var_3 == "elevator_floor_selector" )
        {
            if ( var_4 != "none" )
                self._ID24468 = int( var_4 );

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
    var_0 waittill( "trigger",  var_1  );
    self notify( "interrupted" );
    self._ID12355 = 1;
}

_ID12349()
{
    var_0 = _ID15775();
    var_1 = var_0.origin;
    var_2 = 1;

    foreach ( var_6, var_4 in _ID15888() )
    {
        var_5 = self._ID12279["floor" + var_6 + "_pos"];

        if ( var_1 == var_5 )
        {
            self._ID12279["current_floor"] = var_6;
            var_2 = 0;
        }
    }

    return var_2;
}

_ID12372()
{
    var_0 = _ID15777();

    if ( level._ID12359 && isdefined( var_0 ) )
        var_0 playloopsound( "elev_musak_loop" );

    thread _ID22434( "closing_inner_doors" );
    thread _ID22434( "opening_inner_doors" );
    thread _ID22434( "closed_inner_doors" );
    thread _ID22434( "opened_inner_doors" );

    foreach ( var_3, var_2 in _ID15888() )
    {
        thread _ID22434( "closing_floor_" + var_3 + "_outer_doors" );
        thread _ID22434( "opening_floor_" + var_3 + "_outer_doors" );
        thread _ID22434( "closed_floor_" + var_3 + "_outer_doors" );
        thread _ID22434( "opened_floor_" + var_3 + "_outer_doors" );
    }

    thread _ID22434( "interrupted" );
    thread _ID22434( "elevator_moving" );
    thread _ID22434( "elevator_moved" );
}

_ID22434( var_0 )
{
    for (;;)
    {
        self waittill( var_0 );
        var_1 = _ID15775();

        if ( issubstr( var_0, "closing_" ) )
            var_1 playsound( "elev_door_close" );

        if ( issubstr( var_0, "opening_" ) )
            var_1 playsound( "elev_door_open" );

        if ( var_0 == "elevator_moving" )
        {
            var_1 playsound( "elev_run_start" );
            var_1 playloopsound( "elev_run_loop" );
        }

        if ( var_0 == "interrupted" )
            var_1 playsound( "elev_door_interupt" );

        if ( var_0 == "elevator_moved" )
        {
            var_1 stopsounds( "elev_run_loop" );
            var_1 playsound( "elev_run_end" );
            var_1 playsound( "elev_bell_ding" );
        }
    }
}

_ID28255()
{
    foreach ( var_5, var_1 in level._ID12382 )
    {
        var_1._ID24468 = var_1 _ID15650();

        foreach ( var_4, var_3 in var_1 _ID15888() )
        {
            if ( var_1 _ID15650() != var_4 )
                var_1 thread _ID8150( var_4 );
        }
    }
}

_ID12358( var_0 )
{
    self notify( "elevator_moving" );
    self endon( "elevator_moving" );
    var_1 = _ID15775();
    var_2 = self._ID12279["floor" + var_0 + "_pos"] - var_1.origin;
    var_3 = level._ID12373;
    var_4 = abs( distance( self._ID12279["floor" + var_0 + "_pos"], var_1.origin ) );
    var_5 = var_4 / var_3;
    var_1 moveto( var_1.origin + var_2, var_5, var_5 * level._ID12333, var_5 * level._ID12346 );

    foreach ( var_7 in _ID15769() )
    {
        var_8 = var_7.origin + var_2;

        if ( !issubstr( var_7.classname, "trigger_" ) )
        {
            var_7 moveto( var_8, var_5, var_5 * level._ID12333, var_5 * level._ID12346 );
            continue;
        }

        var_7.origin = var_8;
    }

    _ID41107( var_1, self._ID12279["floor" + var_0 + "_pos"] );
    self notify( "elevator_moved" );
}

_ID8147()
{
    self notify( "closing_inner_doors" );
    self endon( "closing_inner_doors" );
    self endon( "opening_inner_doors" );
    var_0 = _ID15773();
    var_1 = _ID15779();
    var_2 = _ID15775();
    var_3 = _ID15770();
    var_4 = ( var_3[0], var_3[1], var_2.origin[2] );
    var_5 = level._ID12353;
    var_6 = abs( distance( var_0.origin, var_4 ) );
    var_7 = var_6 / var_5;
    var_0 moveto( var_4, var_7, var_7 * 0.1, var_7 * 0.25 );
    var_1 moveto( var_4, var_7, var_7 * 0.1, var_7 * 0.25 );
    _ID41107( var_0, var_4, var_1, var_4 );
    self notify( "closed_inner_doors" );
}

_ID25878()
{
    self notify( "opening_inner_doors" );
    self endon( "opening_inner_doors" );
    var_0 = _ID15773();
    var_1 = _ID15779();
    var_2 = _ID15775();
    var_3 = _ID15774();
    var_4 = _ID15780();
    var_5 = ( var_3[0], var_3[1], var_2.origin[2] );
    var_6 = ( var_4[0], var_4[1], var_2.origin[2] );
    var_7 = level._ID12353;
    var_8 = abs( distance( var_5, var_6 ) * 0.5 );
    var_9 = var_8 / var_7 * 0.5;
    var_0 moveto( var_5, var_9, var_9 * 0.1, var_9 * 0.25 );
    var_1 moveto( var_6, var_9, var_9 * 0.1, var_9 * 0.25 );
    _ID41107( var_0, var_5, var_1, var_6 );
    self notify( "opened_inner_doors" );
}

_ID8150( var_0 )
{
    self notify( "closing_floor_" + var_0 + "_outer_doors" );
    self endon( "closing_floor_" + var_0 + "_outer_doors" );
    self endon( "opening_floor_" + var_0 + "_outer_doors" );
    var_1 = _ID15889( var_0 );
    var_2 = _ID15891( var_0 );
    var_3 = _ID15890( var_0 );
    var_4 = _ID15886( var_0 );
    var_5 = level._ID12361;
    var_6 = abs( distance( var_3, var_4 ) );
    var_7 = var_6 / var_5;
    var_1 moveto( var_4, var_7, var_7 * 0.1, var_7 * 0.25 );
    var_2 moveto( var_4, var_7, var_7 * 0.1, var_7 * 0.25 );
    _ID41107( var_1, var_4, var_2, var_4 );
    self notify( "closed_floor_" + var_0 + "_outer_doors" );
}

_ID25881( var_0 )
{
    level notify( "elevator_doors_opening" );
    self notify( "opening_floor_" + var_0 + "_outer_doors" );
    self endon( "opening_floor_" + var_0 + "_outer_doors" );
    var_1 = _ID15889( var_0 );
    var_2 = _ID15891( var_0 );
    var_3 = _ID15890( var_0 );
    var_4 = _ID15892( var_0 );
    var_5 = _ID15886( var_0 );
    var_6 = level._ID12361;
    var_7 = abs( distance( var_3, var_5 ) );
    var_8 = var_7 / var_6 * 0.5;
    var_1 moveto( var_3, var_8, var_8 * 0.1, var_8 * 0.25 );
    var_2 moveto( var_4, var_8, var_8 * 0.1, var_8 * 0.25 );
    _ID41107( var_1, var_3, var_2, var_4 );
    self notify( "opened_floor_" + var_0 + "_outer_doors" );
}

_ID6221()
{
    var_0 = getentarray( "elevator_group", "targetname" );
    var_1 = getentarray( "elevator_housing", "targetname" );
    var_2 = getentarray( "elevator_doorset", "targetname" );

    foreach ( var_4 in var_0 )
    {
        var_5 = getent( var_4.target, "targetname" );
        var_6 = [];
        var_6[0] = min( var_4.origin[0], var_5.origin[0] );
        var_6[1] = max( var_4.origin[0], var_5.origin[0] );
        var_6[2] = min( var_4.origin[1], var_5.origin[1] );
        var_6[3] = max( var_4.origin[1], var_5.origin[1] );
        var_7 = spawnstruct();
        var_7._ID12279["id"] = level._ID12382.size;
        var_7._ID12279["housing"] = [];
        var_7._ID12279["housing"]["mainframe"] = [];

        foreach ( var_9 in var_1 )
        {
            if ( var_9 _ID20772( var_6 ) )
            {
                var_7._ID12279["housing"]["mainframe"][var_7._ID12279["housing"]["mainframe"].size] = var_9;

                if ( var_9.classname == "script_model" )
                    continue;

                if ( var_9.code_classname == "light" )
                    continue;

                var_10 = getent( var_9.target, "targetname" );
                var_7._ID12279["housing"]["left_door"] = var_10;
                var_7._ID12279["housing"]["left_door_opened_pos"] = var_10.origin;
                var_11 = getent( var_10.target, "targetname" );
                var_7._ID12279["housing"]["right_door"] = var_11;
                var_7._ID12279["housing"]["right_door_opened_pos"] = var_11.origin;
                var_12 = ( var_10.origin - var_11.origin ) * ( 0.5, 0.5, 0.5 ) + var_11.origin;
                var_7._ID12279["housing"]["door_closed_pos"] = var_12;
                var_13 = getent( var_11.target, "targetname" );
                var_7._ID12279["housing"]["door_trigger"] = var_13;
                var_14 = getent( var_13.target, "targetname" );
                var_7._ID12279["housing"]["inside_trigger"] = var_14;
                var_14 _ID22810();
                var_14._ID24311 = spawn( "trigger_radius", var_9.origin, 0, 64, 128 );
            }
        }

        var_7._ID12279["outer_doorset"] = [];

        foreach ( var_17 in var_2 )
        {
            if ( var_17 _ID20772( var_6 ) )
            {
                var_18 = isdefined( var_17.script_noteworthy ) && var_17.script_noteworthy == "closed_for_lighting";
                var_19 = var_7._ID12279["outer_doorset"].size;
                var_7._ID12279["outer_doorset"][var_19] = [];
                var_7._ID12279["outer_doorset"][var_19]["door_closed_pos"] = var_17.origin;
                var_20 = getent( var_17.target, "targetname" );
                var_7._ID12279["outer_doorset"][var_19]["left_door"] = var_20;
                var_7._ID12279["outer_doorset"][var_19]["left_door_opened_pos"] = var_20.origin;
                var_21 = getent( var_20.target, "targetname" );
                var_7._ID12279["outer_doorset"][var_19]["right_door"] = var_21;
                var_7._ID12279["outer_doorset"][var_19]["right_door_opened_pos"] = var_21.origin;

                if ( var_18 )
                {
                    var_22 = var_17.origin - var_20.origin;
                    var_17.origin = var_20.origin;
                    var_20.origin = var_20.origin + var_22;
                    var_21.origin = var_21.origin - var_22;
                    var_7._ID12279["outer_doorset"][var_19]["door_closed_pos"] = var_17.origin;
                    var_7._ID12279["outer_doorset"][var_19]["left_door_opened_pos"] = var_20.origin;
                    var_7._ID12279["outer_doorset"][var_19]["right_door_opened_pos"] = var_21.origin;
                }
            }
        }

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

        foreach ( var_24, var_33 in var_7._ID12279["outer_doorset"] )
        {
            var_34 = var_7 _ID15775();
            var_31 = ( var_34.origin[0], var_34.origin[1], var_33["door_closed_pos"][2] );
            var_7._ID12279["floor" + var_24 + "_pos"] = var_31;

            if ( var_34.origin == var_31 )
            {
                var_7._ID12279["initial_floor"] = var_24;
                var_7._ID12279["current_floor"] = var_24;
            }
        }

        level._ID12382[level._ID12382.size] = var_7;
        var_4 delete();
        var_5 delete();
    }

    foreach ( var_17 in var_2 )
        var_17 delete();

    _ID6208();

    if ( !level._ID12357 )
        _ID33091();

    foreach ( var_39 in level._ID12382 )
    {
        var_40 = var_39 _ID15778();

        if ( isdefined( var_40 ) && var_40.size )
        {
            foreach ( var_42 in var_40 )
                var_42 setlightintensity( 0.75 );
        }
    }
}

_ID6208()
{
    level._ID12343 = getentarray( "elevator_call", "targetname" );

    foreach ( var_1 in level._ID12343 )
    {
        var_1._ID12279 = [];
        var_2 = ( 0, 0, var_1.origin[2] );
        var_3 = ( var_1.origin[0], var_1.origin[1], 0 );
        var_4 = [];

        foreach ( var_12, var_6 in level._ID12382 )
        {
            foreach ( var_11, var_8 in var_6 _ID15888() )
            {
                var_9 = ( 0, 0, var_6._ID12279["floor" + var_11 + "_pos"][2] );
                var_10 = ( var_6._ID12279["floor" + var_11 + "_pos"][0], var_6._ID12279["floor" + var_11 + "_pos"][1], 0 );

                if ( abs( distance( var_2, var_9 ) ) <= level._ID12342 )
                {
                    if ( abs( distance( var_3, var_10 ) ) <= level._ID12341 )
                    {
                        var_4[var_4.size] = var_6;
                        var_1._ID12279[var_11] = var_4;
                    }
                }
            }
        }

        var_1 _ID22810();
        var_1._ID24311 = spawn( "trigger_radius", var_1.origin + ( 0, 0, -32 ), 0, 32, 64 );
    }
}

_ID33091()
{
    foreach ( var_1 in level._ID12382 )
    {
        var_2 = var_1 _ID15772();
        var_3 = var_1 _ID15888();
        var_4 = var_3.size;
        var_2 setcursorhint( "HINT_NOICON" );

        if ( var_4 > 2 )
        {
            var_2 sethintstring( &"ELEVATOR_FLOOR_SELECT_HINT" );
            continue;
        }

        var_2 thread _ID42237::_ID44574( level.player, &"ELEVATOR_USE_HINT", &"ELEVATOR_USE_HINT_PC", "trigger" );
    }

    foreach ( var_7 in level._ID12343 )
    {
        var_7 setcursorhint( "HINT_NOICON" );
        var_7 thread _ID42237::_ID44574( level.player, &"ELEVATOR_CALL_HINT", &"ELEVATOR_CALL_HINT_PC", "trigger" );
    }
}

_ID22810()
{
    self._ID12560 = 1;
    _ID10983();
}

_ID11070( var_0 )
{
    _ID12546();

    if ( level._ID12357 )
        self._ID24311 waittill( var_0,  var_1  );
    else
        self waittill( var_0,  var_1  );

    _ID10983();
    return var_1;
}

_ID12546()
{
    if ( !self._ID12560 )
    {
        self._ID12560 = 1;
        self.origin = self.origin + ( 0, 0, 10000 );

        if ( isdefined( self._ID24311 ) )
            self._ID24311.origin = self._ID24311.origin + ( 0, 0, 10000 );
    }
}

_ID10983()
{
    self notify( "disable_trigger" );

    if ( self._ID12560 )
        thread _ID10984();
}

_ID10984()
{
    self endon( "disable_trigger" );
    self._ID12560 = 0;
    wait 1.5;
    self.origin = self.origin + ( 0, 0, -10000 );

    if ( isdefined( self._ID24311 ) )
        self._ID24311.origin = self._ID24311.origin + ( 0, 0, -10000 );
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
    var_1 = _ID15771();
    var_2 = _ID15772();
    var_3 = var_2._ID24311;
    var_4 = _ID15773();
    var_5 = _ID15779();
    var_0[var_0.size] = var_1;
    var_0[var_0.size] = var_2;
    var_0[var_0.size] = var_4;
    var_0[var_0.size] = var_5;

    if ( isdefined( var_3 ) )
        var_0[var_0.size] = var_3;

    var_6 = _ID15776();

    foreach ( var_8 in var_6 )
        var_0[var_0.size] = var_8;

    var_10 = _ID15778();

    foreach ( var_12 in var_10 )
        var_0[var_0.size] = var_12;

    return var_0;
}

_ID15775()
{
    var_0 = self._ID12279["housing"]["mainframe"];
    var_1 = undefined;

    foreach ( var_3 in var_0 )
    {
        if ( var_3.classname != "script_model" && var_3.code_classname != "light" )
            var_1 = var_3;
    }

    return var_1;
}

_ID15776()
{
    var_0 = self._ID12279["housing"]["mainframe"];
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( var_3.classname == "script_model" )
            var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID15778()
{
    var_0 = self._ID12279["housing"]["mainframe"];
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( var_3.code_classname == "light" )
            var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID15777()
{
    var_0 = _ID15776();
    var_1 = undefined;

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3.script_noteworthy ) && var_3.script_noteworthy == "play_musak" )
            var_1 = var_3;
    }

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
    var_0 = _ID12349();
    return self._ID12279["current_floor"];
}

_ID15791()
{
    return self._ID12279["initial_floor"];
}

_ID41107( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) && !isdefined( var_3 ) )
    {
        var_2 = var_0;
        var_3 = var_1;
    }

    for (;;)
    {
        var_4 = var_0.origin;
        var_5 = var_2.origin;

        if ( var_4 == var_1 && var_5 == var_3 )
            break;

        wait 0.05;
    }
}

_ID20772( var_0 )
{
    var_1 = self.origin[0];
    var_2 = self.origin[1];
    var_3 = var_0[0];
    var_4 = var_0[1];
    var_5 = var_0[2];
    var_6 = var_0[3];
    return var_1 >= var_3 && var_1 <= var_4 && var_2 >= var_5 && var_2 <= var_6;
}

_ID20774( var_0 )
{
    var_1 = self.origin[0];
    var_2 = self.origin[1];
    var_3 = var_0[0];
    var_4 = var_0[1];
    var_5 = var_0[2];
    var_6 = var_0[3];
    var_7 = ( var_3 + var_4 ) / 2;
    var_8 = ( var_5 + var_6 ) / 2;
    var_9 = abs( distance( ( var_3, var_5, 0 ), ( var_7, var_8, 0 ) ) );
    return abs( distance( ( var_1, var_2, 0 ), ( var_7, var_8, 0 ) ) ) < var_9;
}

_ID41130( var_0, var_1 )
{
    self endon( var_0 );
    wait(var_1);
}

_ID12352( var_0, var_1 )
{
    return int( _ID12351( var_0, var_1 ) );
}

_ID12351( var_0, var_1 )
{
    if ( getdvar( var_0 ) != "" )
        return getdvarfloat( var_0 );
    else
    {
        setdvar( var_0, var_1 );
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

        foreach ( var_7, var_1 in level._ID12382 )
        {
            var_2 = var_1 _ID15775();
            var_3 = var_1 _ID15777();

            foreach ( var_6, var_5 in var_1._ID12279["outer_doorset"] )
            {

            }
        }

        foreach ( var_9 in level._ID12343 )
        {
            foreach ( var_16, var_5 in var_9._ID12279 )
            {
                var_11 = 0;

                foreach ( var_15, var_13 in var_5 )
                {
                    var_11++;
                    var_14 = var_9.origin + ( 0, 0, var_11 * -4 );
                }
            }
        }

        wait 0.05;
    }
}
