// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    precachestring( &"SCRIPT_COLON" );
    precachestring( &"SCRIPT_TIME_REMAINING" );
    precachestring( &"SCRIPT_TOTAL_SCORE" );
    precachestring( &"SCRIPT_EXTRA_LIFE" );
    precachestring( &"SCRIPT_CHECKPOINT" );
    precachestring( &"SCRIPT_MISSION_SCORE" );
    precachestring( &"SCRIPT_ZERO_DEATHS" );
    precachestring( &"SCRIPT_PLUS" );
    precachestring( &"SCRIPT_TIME_UP" );
    precachestring( &"SCRIPT_1UP" );
    precachestring( &"SCRIPT_GAME_OVER" );
    precachestring( &"SCRIPT_DIFFICULTY_BONUS_ONEANDAHALF" );
    precachestring( &"SCRIPT_DIFFICULTY_BONUS_THREE" );
    precachestring( &"SCRIPT_DIFFICULTY_BONUS_FOUR" );
    precachestring( &"SCRIPT_MISSION_COMPLETE" );
    precachestring( &"SCRIPT_NEW_HIGH_SCORE" );
    precachestring( &"SCRIPT_STREAK_BONUS_LOST" );
    precachestring( &"SCRIPT_STREAK_COMPLETE" );
    precachestring( &"SCRIPT_X" );
    level._ID43634 = ( 0.8, 2, 0.8 );
    level._ID44941 = ( 0.3, 0.6, 0.3 );
    level._ID50071 = [];
    _ID53448();
    level._ID50451 = [];
    level._ID50553 = 10;
    level._ID47071 = [];
    level._ID54693 = 0;
    level._ID49472 = 0;
    level._ID53985 = 0;
    level._ID48228 = 1;
    _ID42237::_ID14400( "arcadeMode_multiplier_maxed" );
    setdvar( "arcademode_lives_changed", 0 );
    level._ID49229 = 1;
    level._ID49626 = 3;
    _ID47378();

    for ( var_0 = 0; var_0 < level._ID50553; var_0++ )
        setdvar( "arcademode_checkpoint_" + var_0, "" );

    level._ID50363 = 0;
    level._ID44161 = 0;
    _ID53410();
    _ID42237::_ID14400( "arcademode_complete" );
    _ID42237::_ID14400( "arcademode_ending_complete" );
    waitframe;

    if ( getdvar( "arcademode_full" ) == "1" )
        precacheleaderboards( "LB_AM_FULLCHALLENGE" );
    else
        precacheleaderboards( "LB_AM_" + level._ID912 );

    level._ID16945 = ::_ID52405;
    level._ID16937 = ::_ID50155;
    level._ID16936 = ::_ID27333;
    level._ID47890 = 50;
    level._ID43036 = 10;
    level._ID50410 = 0;

    if ( getdvar( "arcademode_lives" ) == "" || getdvar( "arcademode_full" ) != "1" || level._ID912 == "cargoship" )
    {
        setdvar( "arcademode_lives", 2 );
        level._ID50410 = 2;
    }

    if ( getdvar( "arcademode_full" ) == "1" && level._ID912 == "cargoship" )
    {
        setdvar( "arcademode_lives", 5 );
        level._ID50410 = 5;
    }

    var_1 = getdvarint( "arcademode_lives" );
    setdvar( "arcademode_earned_lives", var_1 );
    level._ID53001 = getdvarint( "arcademode_playthrough_count" );
    level._ID53001++;
    setdvar( "arcademode_playthrough_count", level._ID53001 );
    setdvar( "arcademode_died", 0 );
    setdvar( "arcademode_score", 0 );

    if ( getdvar( "arcademode_combined_score" ) == "" || getdvar( "arcademode_full" ) == "1" && level._ID912 == "cargoship" )
        setdvar( "arcademode_combined_score", 0 );

    var_2 = _ID45746();
    var_2 *= 60;
    level._ID49290 = gettime();
    level._ID50781 = var_2;
    level._ID49108 = 50;
    level._ID45019 = 5;
    level._ID54578 = [];
    var_3 = getarraykeys( level._ID53235 );

    for ( var_0 = 0; var_0 < var_3.size; var_0++ )
        level._ID54578[var_3[var_0]] = [];

    var_4 = level._ID54578;
    thread _ID48086();
    thread _ID47796();
    thread _ID52194();
    thread _ID43013();
    _ID53658( var_1 );

    for (;;)
    {
        wait 0.05;
        waitframe;
        waitframe;
        var_3 = getarraykeys( level._ID54578 );
        _ID42237::_ID3315( var_3, ::_ID50388 );
        level._ID54578 = var_4;
    }
}

_ID50089()
{
    if ( getdvar( "arcademode" ) != "1" )
        return 0;

    return _ID42237::_ID14385( "arcademode_complete" );
}

_ID45746()
{
    var_0 = 20;
    var_1 = [];
    var_1["cargoship"] = 11;
    var_1["armada"] = 15;
    var_1["bog_a"] = 13;
    var_1["hunted"] = 17;
    var_1["ac130"] = 13;
    var_1["bog_b"] = 15;
    var_1["airlift"] = 14;
    var_1["village_assault"] = 17;
    var_1["scoutsniper"] = 18;
    var_1["ambush"] = 12;
    var_1["sniperescape"] = 20;
    var_1["village_defend"] = 15;
    var_1["icbm"] = 16;
    var_1["launchfacility_a"] = 11;
    var_1["launchfacility_b"] = 14;
    var_1["jeepride"] = 9;
    var_1["airplane"] = 4;
    var_2 = 1;

    if ( isdefined( var_1[level._ID912] ) )
        var_0 = var_1[level._ID912];

    level._ID44709 = var_2;
    return var_0;
}

_ID43013()
{
    level endon( "arcademode_complete" );
    level _ID42407::_ID1985( _ID42237::_ID14413, "missionfailed" );
    level._ID794 _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID11232();
    setdvar( "arcademode_died", 1 );
    var_0 = getdvarint( "arcademode_lives" );
    var_1 = getdvarint( "arcademode_earned_lives" );

    if ( var_0 > var_1 )
        var_0 = var_1;

    var_0 -= 1;
    setdvar( "arcademode_lives", var_0 );
    setdvar( "arcademode_lives_changed", -1 );
    _ID53658( var_0 + 1 );
    level._ID44090 = 1;
    _ID53685();

    if ( var_0 < 0 )
    {
        wait 1.5;
        level._ID43444 = &"SCRIPT_GAME_OVER";
        thread _ID44949();
        return;
    }

    if ( isalive( level._ID794 ) )
        missionfailed();
}

_ID52194()
{
    level._ID794 endon( "death" );
    var_0 = newhudelem();
    var_0._ID408 = 1;
    var_0._ID44 = "right";
    var_0._ID45 = "top";
    var_0._ID499 = "right";
    var_0._ID1284 = "top";
    var_0._ID1331 = -21.6667;
    var_0._ID1339 = 38.9778;
    var_0._ID983 = level._ID47890;
    var_0._ID393 = 1.5;
    var_0._ID196 = ( 1, 1, 1 );
    var_0._ID392 = "objective";
    var_0 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_0._ID493 = 1;
    level._ID3271 = var_0;
    level endon( "arcadeMode_remove_timer" );
    var_1 = level._ID50781;
    var_0 settimer( var_1 - 0.1 );
    wait(var_1);
    level._ID43444 = &"SCRIPT_TIME_UP";
    thread _ID44949();
    _ID42475::_ID34575( "player_death" );
}

_ID48086()
{
    level._ID794 endon( "death" );
    level endon( "missionfailed" );
    level._ID49797 = [];

    for ( var_0 = 0; var_0 < level._ID43036; var_0++ )
        _ID47245( var_0, -28.6667, 68.6667, -14, 64, level._ID47890 );

    for (;;)
    {
        var_1 = getdvarint( "arcademode_lives_changed" );

        if ( var_1 != 0 )
        {
            var_2 = getdvarint( "arcademode_lives" );

            if ( var_2 < 0 )
            {
                level._ID43444 = &"SCRIPT_GAME_OVER";
                thread _ID44949();
                return;
            }

            if ( var_1 == -1 )
            {
                level notify( "lost_streak" );
                level._ID54693 = gettime();
                thread _ID54037( 0 );
                level._ID48228 = 0;
                var_3 = getdvarint( "arcademode_earned_lives" );
                var_3--;
                var_2 = var_3;
                setdvar( "arcademode_earned_lives", var_3 );
                setdvar( "arcademode_lives", var_3 );
                level._ID794 thread _ID42237::_ID27077( "h1_arcademode_life_lost", level._ID794 geteye() );
            }

            _ID53658( var_2 );
            level._ID44090 = 1;
            setdvar( "arcademode_lives_changed", 0 );
        }

        wait 0.05;
    }
}

_ID52538()
{
    var_0 = getdvarint( "arcademode_lives" );
    var_1 = getdvarint( "arcademode_earned_lives" );

    if ( var_0 > var_1 )
        thread _ID45265( var_0 - var_1 );

    setdvar( "arcademode_earned_lives", var_0 );
    thread _ID53658( var_0 );
    return var_0 > var_1;
}

_ID50607()
{
    if ( !_ID42407::_ID3270() )
        return;

    _ID52538();
    var_0 = 800;
    var_1 = 0.8;
    level._ID794 thread _ID42237::_ID27077( "arcademode_checkpoint", level._ID794 geteye() );
    thread _ID43626( 0, var_1, 1 );
    thread _ID43099( 0, var_1, 1 );
    thread _ID48053();
}

_ID48250( var_0, var_1, var_2, var_3 )
{
    var_4 = newhudelem();
    var_4._ID408 = 1;
    var_4._ID1331 = var_1 + var_0 * var_3 - 10;
    var_4._ID1339 = var_2 + 10;
    var_4 setshader( "h1_arcademode_lives_earned_flare", 26, 26 );
    var_4._ID44 = "center";
    var_4._ID45 = "middle";
    var_4._ID499 = "right";
    var_4._ID1284 = "top";
    var_4._ID983 = level._ID47890 + 10 - 1;
    var_4._ID55 = 0;
    var_4._ID493 = 1;
    var_4 fadeovertime( 0.05 );
    var_4._ID55 = 0.4;
    wait 0.05;
    var_4 scaleovertime( 0.15, 52, 52 );
    wait 0.15;
    var_4 destroy();
}

_ID52714( var_0, var_1 )
{
    if ( var_0 >= var_1 )
    {
        self setshader( "arcademode_life_empty", 20, 20 );
        self._ID312 = 1;
    }
    else
    {
        if ( isdefined( self._ID312 ) && self._ID312 )
            thread _ID48250( var_0, -18.6667, 58.6667, -14 );

        self setshader( "arcademode_life", 20, 20 );
        self._ID312 = 0;
    }

    self fadeovertime( 1 );
    self._ID55 = 1;
    self._ID196 = ( 1, 1, 1 );
}

_ID44768( var_0 )
{
    if ( self._ID55 <= 0 )
        return;

    self fadeovertime( 1 );
    self._ID55 = 0;
    self._ID196 = ( 1, 0, 0 );
    self._ID444 = 0;
    self._ID312 = 0;
}

_ID53566( var_0 )
{
    if ( self._ID55 <= 0 )
        return;

    self fadeovertime( 0.15 );
    self._ID55 = 0;
    self scaleovertime( 0.15, 40, 40 );
}

_ID53658( var_0 )
{
    if ( var_0 > 10 )
        var_0 = 10;

    var_1 = getdvarint( "arcademode_earned_lives" );

    for ( var_2 = 0; var_2 < var_0; var_2++ )
        level._ID49797[var_2] _ID52714( var_2, var_1 );

    for ( var_2 = var_0; var_2 < level._ID43036; var_2++ )
    {
        if ( var_2 < 0 )
            continue;

        if ( var_2 >= 10 )
            continue;

        if ( level._ID44161 )
        {
            level._ID49797[var_2] _ID53566( var_2 );
            continue;
        }

        level._ID49797[var_2] _ID44768( var_2 );
    }
}

_ID43092()
{
    for (;;)
    {
        level _ID42237::_ID41098( "arcademode_decrement_kill_streak", "arcademode_new_kill" );
        waitframe;
        _ID43480();
    }
}

_ID43480()
{
    for ( var_0 = 0; var_0 < level._ID48446; var_0++ )
    {
        if ( var_0 >= level._ID47071.size )
            return;

        level._ID47071[var_0]._ID196 = level._ID47185[level._ID49229 - 1];
        level._ID47071[var_0]._ID445 = level._ID50472[level._ID49229 - 1];
    }

    var_1 = 0;

    for (;;)
    {
        var_2 = level._ID49229 + var_1;

        if ( var_2 >= level._ID47185.size )
            var_2 = level._ID47185.size - 1;

        for ( var_0 = level._ID48446 + var_1 * level._ID49626; var_0 < level._ID48446 + ( var_1 + 1 ) * level._ID49626; var_0++ )
        {
            if ( var_0 >= level._ID47071.size )
                return;

            level._ID47071[var_0]._ID196 = level._ID47185[var_2];
            level._ID47071[var_0]._ID445 = level._ID50472[var_2];
        }

        var_1++;
    }
}

_ID47806( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level endon( "arcademode_stop_kill_streak_art" );
    var_6 = newhudelem();
    var_6._ID408 = 1;
    var_6._ID1331 = var_1 + var_0 * var_3;

    if ( level._ID47071.size == 0 )
        level._ID49940 = var_6._ID1331;

    var_6._ID1339 = var_2;
    var_6 setshader( "arcademode_kill", var_4, var_4 );
    var_6._ID44 = "right";
    var_6._ID45 = "top";
    var_6._ID499 = "right";
    var_6._ID1284 = "top";
    var_6._ID983 = var_5;
    var_6._ID196 = level._ID43634;
    var_6._ID445 = level._ID44941;
    var_6._ID444 = 1;
    var_6._ID493 = 1;
    var_7 = 0;
    level._ID47071[level._ID47071.size] = var_6;

    if ( level._ID47071.size == 10 )
    {
        var_7 = 1;
        var_6._ID55 = 0;
    }
    else
        var_6._ID55 = 1;

    for (;;)
    {
        if ( var_6._ID1331 == level._ID49940 )
        {
            var_8 = 4;

            if ( level._ID47071.size == 1 )
                wait 3;

            var_6 fadeovertime( var_8 );
            var_6._ID196 = ( 1, 0, 0 );
            var_6._ID55 = 0;
            wait(var_8);
            level notify( "arcademode_decrement_kill_streak" );
            var_6 destroy();

            for ( var_9 = 0; var_9 < level._ID47071.size - 1; var_9++ )
                level._ID47071[var_9] = level._ID47071[var_9 + 1];

            level._ID47071[level._ID47071.size - 1] = undefined;

            if ( !level._ID47071.size )
                thread _ID47378();

            return;
        }

        level waittill( "arcademode_decrement_kill_streak" );
        wait 0.05;
        var_6 moveovertime( 0.5 );
        var_6._ID1331 = var_6._ID1331 - var_3;

        if ( var_7 )
        {
            var_6 fadeovertime( 0.5 );
            var_6._ID55 = 1;
            var_7 = 0;
        }
    }
}

_ID54549( var_0, var_1, var_2, var_3 )
{
    var_4 = newhudelem();
    var_4._ID408 = 1;
    var_4._ID1331 = var_0 + -4;
    var_4._ID1339 = var_1 + 14;
    var_4._ID44 = "right";
    var_4._ID45 = "top";
    var_4._ID499 = "right";
    var_4._ID1284 = "top";
    var_4._ID196 = level._ID43634;
    var_4._ID983 = level._ID47890 - 1;
    var_4._ID55 = 0;
    var_4._ID445 = level._ID44941;
    var_4._ID444 = 0;
    var_4._ID493 = 1;
    var_4 setshader( "white", var_2, var_3 );
    return var_4;
}

_ID54037( var_0 )
{
    if ( !level._ID48228 )
        return;

    level notify( "arcademode_new_kill_streak_time" );
    level endon( "arcademode_new_kill_streak_time" );

    if ( level._ID54693 < gettime() )
        level._ID54693 = gettime() + var_0 * 1000;
    else
        level._ID54693 = level._ID54693 + var_0 * 1000;

    waitframe;

    if ( isdefined( level._ID51959 ) )
    {
        level._ID51959 fadeovertime( 0.05 );
        level._ID51959._ID55 = 1;
    }

    var_1 = 26;
    var_2 = 12;
    var_3 = 90;
    var_4 = level._ID54114;
    var_5 = level._ID53285;
    var_6 = level._ID54693 - gettime();
    var_6 *= 0.001;

    if ( var_6 > var_3 )
        var_6 = var_3;

    var_6 *= var_2;
    var_6 = int( var_6 );

    if ( var_6 > 980 )
        var_6 = 980;

    if ( !isdefined( var_4 ) )
    {
        var_4 = _ID54549( 0, 0, var_6, var_1 );
        var_5 = _ID54549( 3, 3, var_6, var_1 );
        var_5._ID983 = var_5._ID983 - 1;
        var_5._ID55 = 0.0;
        var_5._ID196 = ( 0, 0, 0 );
    }
    else
    {
        var_4 scaleovertime( 1, var_6, var_1 );
        var_5 scaleovertime( 1, var_6, var_1 );
        wait 1;
    }

    level._ID54114 = var_4;
    level._ID53285 = var_5;
    var_4 endon( "death" );
    var_0 = level._ID54693 - gettime();
    var_0 *= 0.001;
    var_7 = int( var_0 );

    if ( var_7 > var_3 )
    {
        var_7 = var_3;
        wait(var_0 - var_7);
    }

    for (;;)
    {
        var_6 = level._ID54693 - gettime();
        var_6 *= 0.001;
        var_8 = var_6;

        if ( isdefined( level._ID51959 ) )
        {
            level._ID51959 fadeovertime( 1 );
            level._ID51959._ID55 = ( var_8 - 1 ) / 5;
        }

        var_6 *= var_2;
        var_6 = int( var_6 );

        if ( var_6 <= 0 )
            var_6 = 1;

        if ( var_6 > 980 )
            var_6 = 980;

        if ( isdefined( var_4 ) )
            var_4 scaleovertime( 1, var_6, var_1 );

        if ( isdefined( var_5 ) )
            var_5 scaleovertime( 1, var_6, var_1 );

        wait 1;

        if ( var_6 == 1 )
            break;
    }

    thread _ID47378();
}

_ID48470()
{
    if ( _ID42237::_ID14385( "arcadeMode_multiplier_maxed" ) )
        return;

    level endon( "arcadeMode_multiplier_maxed" );
    level endon( "arcademode_stop_kill_streak" );
    level._ID48446--;
    var_0 = gettime();

    if ( level._ID48446 <= 0 && var_0 > level._ID49472 )
    {
        level._ID49472 = var_0;
        var_1 = level._ID49229;
        level._ID49229++;

        if ( level._ID49229 >= level._ID47185.size )
        {
            level._ID49229 = level._ID47185.size;
            thread _ID48389();
        }

        if ( var_1 != level._ID49229 )
        {
            level notify( "arcademode_new_kill_streak" );
            level._ID794 playsound( "arcademode_" + level._ID49229 + "x" );
            thread _ID45701();
        }

        level._ID48446 = level._ID49626;
    }

    level notify( "arcademode_new_kill" );

    for (;;)
    {
        if ( level._ID47071.size < 10 )
        {
            _ID54037( 5 );
            return;
        }

        level waittill( "arcademode_decrement_kill_streak" );
    }
}

_ID44712()
{
    waitframe;
    waitframe;
    level._ID54114 endon( "death" );

    for (;;)
    {
        var_0 = randomfloatrange( 0.1, 1.0 );
        level._ID54114 fadeovertime( var_0 );
        level._ID54114._ID196 = ( randomfloat( 1 ), randomfloat( 1 ), randomfloat( 1 ) );
        wait(var_0);
    }
}

_ID48389()
{
    waitframe;

    if ( _ID42237::_ID14385( "arcadeMode_multiplier_maxed" ) )
        return;

    _ID42237::_ID14402( "arcadeMode_multiplier_maxed" );
    var_0 = 20;
    level._ID54693 = gettime() + var_0 * 1000;
    thread _ID54037( 0 );
    thread _ID44712();
    musicstop();
    wait 0.05;
    musicplay( "airplane_alt_maximum_music" );
    level _ID42407::_ID1985( _ID42407::_ID1687, var_0 + 1 );
    level _ID42407::_ID1985( _ID42407::_ID41116, "lost_streak" );
    _ID42407::_ID11232();
    thread _ID47378();
    musicstop();

    if ( isdefined( level._ID21854 ) )
    {
        wait 0.05;
        musicplay( level._ID21854 );
    }
}

_ID53241( var_0, var_1, var_2 )
{
    var_3 = _ID48990( "right", 0.1, -5.16667, 3.22222 );
    var_3 setshader( "h1_arcademode_scanelines_border", 50, 50 );
    var_3._ID44 = "right";
    var_3._ID45 = "top";
    var_3._ID499 = "right";
    var_3._ID1284 = "top";
    var_3._ID983 = -100;
    var_3._ID55 = 1.0;
    return var_3;
}

_ID48649()
{
    var_0 = newhudelem();
    var_0._ID408 = 1;
    var_0._ID1331 = 0;
    var_0._ID1339 = 10.2222;
    var_0._ID44 = "right";
    var_0._ID45 = "top";
    var_0._ID499 = "right";
    var_0._ID1284 = "top";
    var_0._ID911 = 0;
    var_0._ID392 = "objective";
    var_0._ID393 = 2.8;
    var_0._ID983 = level._ID47890;
    var_0 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_0._ID493 = 1;
    return var_0;
}

_ID47796()
{
    level._ID794 endon( "death" );
    level._ID47847 = 10;
    level._ID45357 = [];

    for ( var_0 = 0; var_0 < level._ID47847; var_0++ )
    {
        level._ID45357[level._ID45357.size] = _ID48649();
        level._ID45357[level._ID45357.size - 1]._ID1331 = var_0 * -17 + -21.6667;
    }

    level._ID45520 = _ID53241();

    if ( getdvarint( "arcademode_full" ) )
        var_1 = getdvarint( "arcademode_combined_score" );
    else
        var_1 = getdvarint( "arcademode_score" );

    _ID48162( var_1 );
    level._ID44090 = 0;

    for (;;)
    {
        wait 0.05;
        _ID53685();

        if ( level._ID44090 )
            level._ID44090 = 0;
    }
}

_ID53685()
{
    if ( getdvarint( "arcademode_full" ) )
        _ID44655( "arcadeMode_combined_score" );
    else
        _ID44655( "arcademode_score" );
}

_ID44655( var_0 )
{
    var_1 = getdvarint( var_0 );

    if ( level._ID44090 )
    {
        level._ID53985 = var_1;
        _ID48162( var_1 );
        return;
    }

    if ( level._ID53985 >= var_1 )
        return;

    var_2 = var_1 - level._ID53985;
    var_3 = var_2 * 0.2 + 1;

    if ( var_2 <= 15 )
        var_3 = 1;

    level._ID53985 = level._ID53985 + var_3;

    if ( level._ID53985 > var_1 )
        level._ID53985 = var_1;

    _ID48162( int( level._ID53985 ) );
}

_ID50437( var_0 )
{
    var_1 = [];
    var_0 = int( var_0 );

    for (;;)
    {
        var_1[var_1.size] = var_0 % 10;
        var_0 = int( var_0 * 0.1 );

        if ( var_0 <= 0 )
            break;
    }

    return var_1;
}

_ID48162( var_0 )
{
    _ID46160( var_0, level._ID45357 );
}

_ID46160( var_0, var_1 )
{
    var_2 = _ID50437( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_3 >= var_1.size - 1 )
            break;

        var_1[var_3] setvalue( var_2[var_3] );
        var_1[var_3]._ID55 = 1;
    }

    for ( var_3 = var_2.size; var_3 < var_1.size; var_3++ )
        var_1[var_3]._ID55 = 0;

    if ( var_0 == 0 )
    {
        var_1[0]._ID55 = 1;
        var_1[0] setvalue( 0 );
    }

    level._ID45520 setshader( "h1_arcademode_scanelines_border", 50 + ( var_2.size - 1 ) * 22, 50 );
    level._ID45520._ID1331 = -5.16667 + ( var_2.size - 1 ) * 2.4;

    if ( !_ID42237::_ID14385( "arcademode_complete" ) )
        level._ID794 thread _ID42237::_ID27077( "h1_arcademode_add_counter_pt", level._ID794 geteye() );
}

_ID51690( var_0, var_1 )
{
    var_2 = _ID50437( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_3 >= var_1.size - 1 )
            break;

        var_1[var_1.size - var_2.size + var_3] setvalue( var_2[var_3] );
        var_1[var_1.size - var_2.size + var_3]._ID55 = 1;
    }

    for ( var_3 = var_1.size - var_2.size - 1; var_3 >= 0; var_3-- )
        var_1[var_3]._ID55 = 0;

    if ( var_0 == 0 )
    {
        var_1[var_1.size - 1]._ID55 = 1;
        var_1[var_1.size - 1] setvalue( 0 );
    }
}

_ID47245( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = newhudelem();
    var_6._ID408 = 1;
    var_6._ID1331 = var_1 + var_0 * var_3;
    var_6._ID1339 = var_2;
    var_6 setshader( "arcademode_life", var_4, var_4 );
    var_6._ID44 = "center";
    var_6._ID45 = "middle";
    var_6._ID499 = "right";
    var_6._ID1284 = "top";
    var_6._ID983 = var_5;
    var_6._ID196 = ( 1, 1, 1 );
    var_6._ID444 = 0;
    var_6._ID55 = 0;
    var_6._ID493 = 1;
    level._ID49797[level._ID49797.size] = var_6;
}

_ID53410()
{
    var_0["MOD_MELEE"] = 20;
    var_0["MOD_PISTOL_BULLET"] = 20;
    var_0["MOD_RIFLE_BULLET"] = 10;
    var_0["MOD_PROJECTILE"] = 2;
    var_0["MOD_PROJECTILE_SPLASH"] = 2;
    var_0["MOD_EXPLOSIVE"] = 2;
    var_0["MOD_GRENADE"] = 2;
    var_0["MOD_GRENADE_SPLASH"] = 2;
    var_0 = [];
    var_0["melee"] = 1;
    var_0["pistol"] = 1;
    var_0["rifle"] = 0.5;
    var_0["explosive"] = 0.3;
    level._ID53235 = var_0;
    var_1 = [];
    var_1["melee"] = 80;
    var_1["pistol"] = 0;
    var_1["rifle"] = 0;
    var_1["explosive"] = 0;
    level._ID48644 = var_1;
    var_2 = [];
    var_2["MOD_MELEE"] = "melee";
    var_2["MOD_PISTOL_BULLET"] = "pistol";
    var_2["MOD_RIFLE_BULLET"] = "rifle";
    var_2["MOD_PROJECTILE"] = "explosive";
    var_2["MOD_PROJECTILE_SPLASH"] = "explosive";
    var_2["MOD_EXPLOSIVE"] = "explosive";
    var_2["MOD_GRENADE"] = "explosive";
    var_2["MOD_GRENADE_SPLASH"] = "explosive";
    level._ID44862 = var_2;
    var_3 = [];
    var_3["melee"] = ( 1, 0, 1 );
    var_3["pistol"] = ( 0, 1, 0 );
    var_3["rifle"] = ( 1, 1, 0 );
    var_3["explosive"] = ( 0, 1, 1 );
    level._ID44654 = var_3;
    var_4 = [];
    var_4["head"] = 50;
    var_4["helmet"] = 50;
    var_4["neck"] = 20;
    var_4["torso_upper"] = 10;
    var_4["torso_lower"] = 10;
    var_4["right_arm_upper"] = 0;
    var_4["left_arm_lower"] = 0;
    var_4["right_leg_lower"] = 0;
    var_4["left_leg_upper"] = 0;
    var_4["right_leg_upper"] = 0;
    var_4["left_leg_lower"] = 0;
    var_4["left_foot"] = 0;
    var_4["right_foot"] = 0;
    var_4["left_hand"] = 0;
    var_4["left_arm_upper"] = 0;
    var_4["right_hand"] = 0;
    var_4["right_arm_lower"] = 0;
    var_4["gun"] = 0;
    var_4["none"] = 0;
    level._ID51406 = var_4;
    var_5 = [];
    var_5[0] = 1;
    var_5[1] = 1.5;
    var_5[2] = 3;
    var_5[3] = 4;
    level._ID43471 = var_5;
    var_6 = [];
    var_6[0] = 9000;
    var_6[1] = 9000;
    var_6[2] = 7000;
    var_6[3] = 6000;
    var_6[0] = 40;
    var_6[1] = 30;
    var_6[2] = 25;
    var_6[3] = 20;
    level._ID46136 = 10;
    level._ID46184 = var_6;
    var_7 = [];

    for ( var_8 = 0; var_8 < 4; var_8++ )
        var_7[var_8] = var_6[var_8] * 0.15;

    level._ID46872 = var_7;
}

_ID52151( var_0 )
{

}

_ID48990( var_0, var_1, var_2, var_3 )
{
    var_4 = newhudelem();
    var_4._ID408 = 1;
    var_4._ID1331 = var_2;
    var_4._ID1339 = var_3;
    var_4._ID44 = var_0;
    var_4._ID45 = "middle";
    var_4._ID499 = var_0;
    var_4._ID1284 = "middle";
    var_4._ID393 = 3;

    if ( getdvar( "widescreen" ) == "1" )
        var_4._ID393 = 5;

    var_4._ID196 = ( 0.8, 1, 0.8 );
    var_4._ID392 = "objective";
    var_4._ID445 = ( 0.3, 0.6, 0.3 );
    var_4._ID444 = 1;
    var_4._ID55 = 0;
    var_4 fadeovertime( var_1 );
    var_4._ID55 = 1;
    var_4._ID493 = 1;
    var_4._ID983 = level._ID47890 + 10;
    level._ID50071[level._ID50071.size] = var_4;
    return var_4;
}

_ID51673()
{
    var_0 = _ID48990( "center", 0.001, 0, 97.7778 );
    var_0 setshader( "h1_arcademode_livesmessage_border", 210, 112 );
    var_0._ID983 = level._ID47890 + 10 - 1;
    var_0._ID1284 = "top_adjustable";
    var_0._ID55 = 0;
    var_0 fadeovertime( 0.15 );
    var_0._ID55 = 1;
    wait 0.15;
    var_0 fadeovertime( 0.1 );
    var_0._ID55 = 0;
    wait 0.1;
    var_0 fadeovertime( 0.1 );
    var_0._ID55 = 1;
    wait 0.1;
    wait 1.2;
    var_0 fadeovertime( 0.1 );
    var_0._ID55 = 0;
    wait 0.1;
    var_0 destroy();
}

_ID50828()
{
    var_0 = _ID48990( "center", 0.001, 0, 97.7778 );
    var_0 setshader( "h1_arcademode_lives_message_flare", 145, 26 );
    var_0._ID983 = level._ID47890 + 10 + 1;
    var_0._ID1284 = "top_adjustable";
    var_0._ID55 = 0;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    wait 0.1;
    var_0 fadeovertime( 0.15 );
    var_0._ID55 = 1;
    wait 0.15;
    var_0 fadeovertime( 0.1 );
    var_0._ID55 = 0;
    wait 0.1;
    wait 2.1;
    var_0 destroy();
}

_ID45265( var_0 )
{
    wait 0.5;
    level._ID794 thread _ID42237::_ID27077( "arcademode_extralife", level._ID794 geteye() );
    var_1 = _ID48990( "center", 0.001, 0, 97.7778 );
    var_1._ID393 = 1.7;
    var_1._ID1284 = "top_adjustable";
    var_1 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.5, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_1._ID578 = &"SCRIPT_EXTRA_LIFE";
    var_1 setvalue( var_0 );
    thread _ID51673();
    thread _ID50828();
    var_1._ID55 = 0;
    wait 0.4;
    var_1 fadeovertime( 0.15 );
    var_1._ID55 = 1;
    wait 0.15;
    wait 1.0;
    var_1 fadeovertime( 0.1 );
    var_1._ID55 = 0;
    wait 0.1;
    var_1 destroy();
}

_ID13798( var_0 )
{
    self fadeovertime( var_0 );
    self._ID55 = 0;
    wait(var_0);
    self destroy();
}

_ID47715()
{
    var_0 = _ID48990( "center", 0.2, 0, -100 );
    var_0._ID55 = randomfloatrange( 0.1, 0.45 );
    var_0._ID983 = var_0._ID983 - 1;
    var_0 settext( &"SCRIPT_EXTRA_LIFE" );
    var_0 _ID42407::_ID10226( 3, ::_ID13798, 1 );
    var_0 endon( "death" );
    var_1 = var_0._ID1331;
    var_2 = var_0._ID1339;
    var_3 = 20;

    for (;;)
    {
        var_4 = randomfloatrange( 0.1, 0.2 );
        var_0 moveovertime( var_4 );
        var_0._ID1331 = var_1 + randomfloatrange( var_3 * -1, var_3 );
        var_0._ID1339 = var_2 + randomfloatrange( var_3 * -1, var_3 );
        wait(var_4);
    }
}

_ID51030( var_0 )
{
    var_1 = var_0 - var_0 % 5;

    if ( var_1 < var_0 )
        var_1 += 5;

    return var_1;
}

_ID45449( var_0, var_1, var_2, var_3 )
{
    if ( var_3 <= 0 )
        return;

    if ( isdefined( level._ID44862[var_2] ) )
        var_2 = level._ID44862[var_2];

    var_3 = int( var_3 );
    var_3 = _ID51030( var_3 );
    var_3 *= level._ID49229;
    var_4 = getdvarint( "arcademode_score" );
    var_4 += var_3;
    var_5 = getdvarint( "arcademode_combined_score" );
    var_5 += var_3;
    setdvar( "arcademode_combined_score", var_5 );
    setdvar( "arcademode_score", var_4 );
    var_6 = 60;
    var_7 = 1.5;
    var_8 = 0.9 + ( var_3 - 10 ) * 0.01;

    if ( var_8 > 1.4 )
        var_8 = 1.4;

    var_9 = ( 0.75, 0, 0 );

    if ( var_1 )
    {
        thread _ID48470();
        thread _ID53289();
        var_9 = level._ID44654[var_2];
    }

    level._ID794 _ID43006( var_3 );
}

_ID53289()
{
    level._ID46136 = level._ID46136 - 1;

    if ( level._ID46136 > 0 )
        return;

    level._ID50410++;
    var_0 = getdvarint( "arcademode_lives" );
    var_0++;

    if ( var_0 >= level._ID43036 )
        var_0 = level._ID43036;
    else
    {
        setdvar( "arcademode_lives", var_0 );
        setdvar( "arcademode_lives_changed", 1 );
    }

    level._ID46136 = level._ID46184[level._ID15361];
}

_ID52665()
{
    var_0 = 60;
    var_1 = 90;

    if ( level._ID794._ID54194 > 0 )
    {
        if ( level._ID794._ID54194 == 1 )
        {
            var_2 = randomint( 1 );
            level._ID794._ID54716 = 1 - var_2;

            if ( var_2 )
                var_1 = 45;
            else
                var_1 = 135;
        }
        else if ( level._ID794._ID54194 == 2 )
        {
            var_2 = level._ID794._ID54716;

            if ( var_2 )
                var_1 = 45;
            else
                var_1 = 135;
        }
        else if ( level._ID794._ID54194 <= 4 )
        {
            var_1 = randomfloatrange( 0, 180 );
            var_0 = randomfloatrange( 60, 120 );
        }
        else if ( level._ID794._ID54194 <= 8 )
        {
            var_1 = randomfloatrange( 0, 180 );
            var_0 = randomfloatrange( 60, 160 );
        }
        else
        {
            var_1 = randomfloatrange( -30, 210 );
            var_0 = randomfloatrange( 60, 200 );
        }
    }

    self._ID1331 = var_0 * cos( var_1 );
    self._ID1339 = 0 - var_0 * sin( var_1 );
}

_ID43006( var_0 )
{
    if ( var_0 == 0 )
        return;

    if ( !isdefined( level._ID794._ID52810 ) )
    {
        level._ID794._ID52810 = 0;
        level._ID794._ID54194 = 0;
    }

    if ( !_ID42237::_ID14385( "arcademode_complete" ) )
        level._ID794 thread _ID42237::_ID27077( "h1_arcademode_pulse_score", level._ID794 geteye() );

    var_1 = newhudelem();
    var_1._ID499 = "center";
    var_1._ID1284 = "middle";
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1 _ID52665();
    var_1._ID392 = "objective";
    var_1._ID393 = 1.5;
    var_1._ID72 = 0;
    var_1._ID196 = ( 1, 1, 1 );
    var_1._ID983 = 4;
    var_2 = level._ID49229;
    level._ID794._ID52810++;
    level._ID794._ID54194++;
    wait 0.05;

    if ( var_0 <= 0 )
    {
        var_1._ID578 = &"";
        var_1._ID196 = ( 1, 0, 0 );
        var_1._ID445 = ( 0, 0, 0 );
        var_1._ID444 = 0;
    }
    else
    {
        var_1._ID578 = &"SCRIPT_PLUS";
        var_1._ID196 = ( 1, 1, 1 );
        var_1 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    }

    var_1 setvalue( var_0 );
    var_1._ID55 = 1;
    var_3 = 4.0;
    var_4 = 0.025;
    var_5 = 1.5;
    var_6 = 0.2;
    var_1 changefontscaleovertime( var_4 );
    var_1._ID393 = var_3;
    wait 0.05;
    var_1 moveovertime( 1.75 );
    var_1._ID1339 = var_1._ID1339 - 20;
    var_1 changefontscaleovertime( var_6 );
    var_1._ID393 = var_5;
    wait(var_6);
    var_1 fadeovertime( 1.0 );
    var_1._ID55 = 0;
    wait 1.0;
    level._ID794._ID52810--;

    if ( level._ID794._ID52810 == 0 )
        level._ID794._ID54194 = 0;

    var_1 destroy();
}

_ID49241()
{
    var_0 = 50;

    for (;;)
    {
        var_1 = randomint( var_0 );
        var_2 = randomint( var_0 );

        if ( distance( ( 0, 0, 0 ), ( var_1, var_2, 0 ) ) < var_0 )
            break;
    }

    if ( _ID42237::_ID8201() )
        var_1 *= -1;

    if ( _ID42237::_ID8201() )
        var_2 *= -1;

    self._ID1331 = var_1;
    self._ID1339 = var_2;
}

_ID50388( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID54578[var_0].size; var_1++ )
        _ID43940( level._ID54578[var_0][var_1], var_0, level._ID54578[var_0].size );
}

_ID43940( var_0, var_1, var_2 )
{
    if ( var_0["type"] != "melee" )
        var_3 = level._ID49108 + level._ID51406[var_0["damage_location"]] + level._ID48644[var_0["type"]];
    else
        var_3 = level._ID49108 + level._ID48644[var_0["type"]];

    thread _ID45449( var_0["origin"], 1, var_1, var_3 );
}

_ID52405( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "none";

    var_3 = level._ID44862[var_0];

    if ( !isdefined( var_3 ) )
    {
        var_4 = level._ID49108;
        thread _ID45449( var_2, 1, "melee", var_4 );
        return;
    }

    var_5["damage_location"] = var_1;
    var_5["type"] = var_3;
    var_5["origin"] = var_2;

    if ( var_3 == "explosive" )
        var_5["origin"] = self._ID740;

    level._ID54578[var_3][level._ID54578[var_3].size] = var_5;
}

_ID27333( var_0, var_1, var_2 )
{
    thread _ID45449( var_2, 0, var_0, level._ID45019 );
}

_ID50155( var_0, var_1, var_2 )
{
    thread _ID45449( var_2, 0, var_0, level._ID45019 * 1.25 );
}

_ID45451( var_0 )
{
    var_1 = _ID48990( "center", 0.05, 0, var_0 );
    var_1._ID393 = 3;
    var_1._ID196 = ( 1, 1, 1 );
    var_1 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_1 settext( &"SCRIPT_MISSION_COMPLETE" );
    var_2 = _ID48990( "center", 0.15, 0, var_0 );
    var_2._ID393 = 4.5;
    var_2._ID196 = ( 1, 1, 1 );
    var_2 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_2 settext( &"SCRIPT_MISSION_COMPLETE" );
    var_1 changefontscaleovertime( 0.15 );
    var_1._ID393 = 4.5;
    var_2 changefontscaleovertime( 0.15 );
    var_2._ID393 = 3;
    wait 0.05;
    var_1 fadeovertime( 0.15 );
    var_1._ID55 = 0;
    wait 0.15;
    var_1 destroy();
    var_2 destroy();
}

_ID49083()
{
    setsaveddvar( "ui_nextMission", "0" );

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        var_1 = level._ID805[var_0];
        var_1._ID626 = 0;
        var_1._ID486 = 1;
    }

    changelevel( "" );
}

_ID48119( var_0, var_1 )
{
    level._ID46189 = [];

    for ( var_2 = 0; var_2 < level._ID47847; var_2++ )
    {
        var_3 = _ID48649();
        level._ID46189[level._ID46189.size] = var_3;
        level._ID50071[level._ID50071.size] = var_3;
        var_3._ID1331 = 0;
        var_3._ID1339 = var_1;
        var_3._ID983 = level._ID47890 + 10;
        var_3._ID44 = "left";
        var_3._ID45 = "middle";
        var_3._ID499 = "fullscreen";
        var_3._ID1284 = "middle";
        var_3._ID393 = 1.875;
        var_3._ID55 = 0;
        var_3 fadeovertime( 1.0 );
        var_3._ID55 = 1;
    }
}

_ID49544( var_0 )
{
    _ID51690( var_0, level._ID46189 );
}

_ID51866( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    for (;;)
    {
        var_6 = getscreenwidth();
        var_7 = getscreenheight();

        if ( var_6 != level._ID48436 || var_7 != level._ID48137 )
        {
            level._ID48436 = var_6;
            level._ID48137 = var_7;

            if ( level._ID48137 == 0 )
                level._ID48137 = 1;

            if ( level._ID48436 == 0 )
                level._ID48436 = 1;

            _ID48588( var_0, var_1, var_2, var_3, var_4, var_5 );
        }

        wait 0.1;
    }
}

_ID48588( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = 1920.0 / level._ID48436 * level._ID48137 / 1080.0;
    var_7 = 37 * var_6;
    var_8 = 11.6667 + 9 * var_6 * 9 + var_7;

    for ( var_9 = 0; var_9 < level._ID47847; var_9++ )
    {
        level._ID53290[var_9]._ID1331 = 320 + var_9 * ( -9 * var_6 ) + var_8;

        if ( isdefined( level._ID46189 ) )
            level._ID46189[var_9]._ID1331 = 320 + var_9 * ( -9 * var_6 ) + var_8;
    }

    var_10 = 11.6667 + var_7;
    level._ID3271[0]._ID1331 = 320 + var_10 + 0 * var_6;
    level._ID3271[1]._ID1331 = 320 + var_10 + 8.3 * var_6;
    level._ID3271[2]._ID1331 = 320 + var_10 + 16.6 * var_6;
    level._ID3271[3]._ID1331 = 320 + var_10 + 21 * var_6;
    level._ID3271[4]._ID1331 = 320 + var_10 + 29.6 * var_6;
    var_11 = 58.5;
    var_12 = var_11 - ( 10 - var_3 ) * 13 * 0.5;

    for ( var_9 = 0; var_9 < level._ID43036; var_9++ )
        level._ID49797[var_9]._ID1331 = ( var_9 * -13 + var_12 ) * var_6;

    if ( isdefined( var_0 ) )
        var_0._ID1331 = 320 + var_7;

    var_1._ID1331 = 320 + var_7;
    var_2._ID1331 = 320 + var_7;

    if ( level._ID44161 )
        var_4 setshader( "h1_arcademode_scanelines_border", int( 344 * var_6 ), 65 );
    else
        var_4 setshader( "h1_arcademode_scanelines_border", int( 216 * var_6 ), 65 );

    var_5 setshader( "h1_arcademode_scanelines_border_end_title", int( 291 * var_6 ), 4 );
}

_ID44949()
{
    if ( _ID42237::_ID14385( "arcademode_complete" ) )
        return;

    _ID42237::_ID14402( "arcademode_complete" );
    _ID42407::_ID34375( 0.05 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();

    if ( level._ID44161 )
    {
        if ( _ID52538() )
            wait 2;
    }

    var_0 = 0;

    if ( isdefined( level._ID3273 ) )
    {
        var_0 = gettime() - level._ID3273;
        var_0 *= 0.001;
    }

    var_1 = gettime() - level._ID49290;
    var_1 *= 0.001;
    var_1 -= var_0;
    var_2 = level._ID50781 - var_1;
    var_2 = int( var_2 );

    if ( level._ID44161 )
    {
        if ( var_2 == 0 )
            var_2++;
    }

    var_3 = 0.5;
    level._ID50699 = 1;
    thread _ID49647();
    thread _ID49376( var_3 );
    wait(var_3 + 0.25);
    level._ID794 freezecontrols( 1 );
    var_4 = 1;
    var_5 = 0;

    if ( getdvar( "arcademode_full" ) == "1" )
        var_5 = 27.5556;

    var_6 = -111.111;
    var_7 = -72.0;
    var_8 = var_7;
    var_9 = -72.0 + var_5;
    var_10 = var_9;
    var_11 = -44.4444 + var_5;
    var_12 = var_11;
    var_13 = 35.5556 + var_5;
    var_14 = -20.4444 + var_5;
    var_15 = _ID48990( "center", 0.1, 0, var_6 );
    var_15._ID393 = 3;
    var_16 = _ID48990( "center", 0.1, 320, var_6 + 5 );
    var_16._ID499 = "fullscreen";
    var_16._ID983 = var_15._ID983 - 1;
    var_16._ID55 = 1;
    level._ID48436 = getscreenwidth();
    level._ID48137 = getscreenheight();
    var_17 = 1920.0 / level._ID48436 * level._ID48137 / 1080.0;

    if ( level._ID44161 )
    {
        var_15._ID196 = ( 1, 1, 1 );
        var_15 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
        var_16 setshader( "h1_arcademode_scanelines_border", int( 344 * var_17 ), 65 );
        var_15 settext( &"SCRIPT_MISSION_COMPLETE" );
        level._ID794 playsound( "h1_arcademode_mission_success" );
        thread _ID45451( var_6 );
    }
    else
    {
        var_15._ID196 = ( 1, 0.15, 0.16 );
        var_15 _meth_8355( -0.6, 0, 0, 0, ( 0.5, 0.1, 0.1 ), 0.3, 0, 0, ( 0, 0, 0 ), 0 );
        var_15 settext( level._ID43444 );
        var_16 setshader( "h1_arcademode_scanelines_border", int( 216 * var_17 ), 65 );
        var_16._ID196 = ( 1, 0.15, 0.16 );
        level._ID794 playsound( "h1_arcademode_mission_fail" );
    }

    var_18 = _ID48990( "center", 0.1, 0, var_6 + 20 );
    var_18 setshader( "h1_arcademode_scanelines_border_end_title", int( 291 * var_17 ), 4 );
    var_18._ID983 = var_15._ID983 - 1;
    var_18._ID55 = 1;
    wait 1.0;
    var_19 = getdvarint( "arcademode_lives" );
    var_20 = level._ID50410;

    if ( var_19 > var_20 )
        var_19 = var_20;

    for ( var_21 = 0; var_21 < level._ID43036; var_21++ )
        level._ID49797[var_21] destroy();

    level._ID49797 = [];

    for ( var_21 = 0; var_21 < level._ID43036; var_21++ )
    {
        _ID47245( var_21, 0, var_14, 0, 64, level._ID47890 + 10 );
        level._ID49797[var_21]._ID499 = "center";
        level._ID49797[var_21]._ID1284 = "middle";
    }

    _ID53658( var_19 );
    var_22 = 0;
    var_23 = undefined;

    if ( getdvar( "arcademode_full" ) == "1" )
    {
        var_23 = _ID48990( "center", var_4, 0, var_7 );
        var_23._ID44 = "right";
        var_23._ID499 = "fullscreen";
        var_23._ID393 = 1.875;
        var_23._ID196 = ( 1, 1, 1 );
        var_23 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
        var_23 settext( &"SCRIPT_TOTAL_SCORE" );
        _ID48119( 0, var_8 );
        var_22 = getdvarint( "arcademode_combined_score" );
        _ID49544( var_22 );
    }

    var_24 = _ID48990( "center", var_4, 0, var_9 );
    var_24._ID44 = "right";
    var_24._ID499 = "fullscreen";
    var_24._ID393 = 1.875;
    var_24._ID196 = ( 1, 1, 1 );
    var_24 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_24 settext( &"SCRIPT_MISSION_SCORE" );
    level._ID53290 = [];

    for ( var_21 = 0; var_21 < level._ID47847; var_21++ )
    {
        var_25 = _ID48649();
        level._ID53290[level._ID53290.size] = var_25;
        level._ID50071[level._ID50071.size] = var_25;
        var_25._ID1331 = 0;
        var_25._ID1339 = var_10;
        var_25._ID983 = level._ID47890 + 10;
        var_25._ID44 = "left";
        var_25._ID45 = "middle";
        var_25._ID499 = "fullscreen";
        var_25._ID1284 = "middle";
        var_25._ID393 = 1.875;
        var_25._ID55 = 0;
        var_25 fadeovertime( var_4 );
        var_25._ID55 = 1;
    }

    _ID51690( 0, level._ID53290 );
    var_26 = 0;

    for ( var_27 = 0; var_2 >= 60; var_2 -= 60 )
        var_26++;

    var_27 = var_2;
    var_28 = _ID48990( "center", var_4, 0, var_12 );
    var_28._ID44 = "right";
    var_28._ID499 = "fullscreen";
    var_28._ID393 = 1.7;
    var_28._ID196 = ( 1, 1, 1 );
    var_28 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_28 settext( &"SCRIPT_TIME_REMAINING" );
    level._ID3271 = [];
    level._ID3271[0] = _ID48990( "center", var_4, 0, var_11 );
    level._ID3271[1] = _ID48990( "center", var_4, 0, var_11 );
    level._ID3271[2] = _ID48990( "center", var_4, 0, var_11 );
    level._ID3271[2] settext( &"SCRIPT_COLON" );
    level._ID3271[3] = _ID48990( "center", var_4, 0, var_11 );
    level._ID3271[4] = _ID48990( "center", var_4, 0, var_11 );

    for ( var_21 = 0; var_21 < 5; var_21++ )
    {
        level._ID3271[var_21]._ID44 = "left";
        level._ID3271[var_21]._ID499 = "fullscreen";
        level._ID3271[var_21]._ID1284 = "middle";
        level._ID3271[var_21]._ID393 = 1.7;
        level._ID3271[var_21]._ID393 = 1.7;
        level._ID3271[var_21]._ID196 = ( 1, 1, 1 );
        level._ID3271[var_21] _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    }

    _ID48304( var_26, var_27 );
    level._ID48436 = getscreenwidth();
    level._ID48137 = getscreenheight();
    var_17 = 1920.0 / level._ID48436 * level._ID48137 / 1080.0;
    _ID48588( var_23, var_24, var_28, var_19, var_16, var_18 );
    thread _ID51866( var_23, var_24, var_28, var_19, var_16, var_18 );
    wait(var_4);
    wait 1;
    var_29 = getdvarint( "arcadeMode_score" );
    var_30 = 0;
    var_31 = var_22;
    var_32 = 0;

    for (;;)
    {
        var_33 = var_29 - var_30;
        var_34 = var_33 * 0.2 + 1;

        if ( var_33 <= 15 )
            var_34 = 1;

        var_34 = int( var_34 );
        var_30 += var_34;

        if ( var_30 > var_29 )
            var_30 = var_29;

        _ID51690( var_30, level._ID53290 );

        if ( var_30 == var_29 )
            break;

        var_32--;

        if ( var_32 <= 0 )
        {
            level._ID794 playsound( "h1_arcademode_ending_mission_pts" );
            var_32 = 3;
        }

        wait 0.05;
    }

    wait 1;
    var_35 = 0;
    var_36 = undefined;

    if ( level._ID44161 )
    {
        var_37 = 5;
        var_38 = var_26 * 60 + var_27;
        var_39 = ceil( var_38 / 15 );
        var_40 = ceil( var_38 * var_37 );
        var_41 = ceil( var_40 / level._ID44709 );
        var_42 = var_30;
        var_43 = var_30 + var_41;
        var_44 = var_22;
        var_45 = var_22 + var_41;

        for ( var_21 = 1; var_21 <= var_39; var_21++ )
        {
            var_46 = var_21 * 1.0 / var_39;

            if ( var_21 == var_39 )
                var_46 = 1;

            var_30 = int( var_42 * ( 1 - var_46 ) + var_43 * var_46 );

            if ( getdvar( "arcademode_full" ) == "1" )
            {
                var_22 = int( var_44 * ( 1 - var_46 ) + var_45 * var_46 );
                _ID49544( var_22 );
            }

            _ID51690( var_30, level._ID53290 );
            var_47 = int( var_38 * ( 1 - var_46 ) );
            _ID48304( floor( var_47 / 60 ), var_47 % 60 );
            var_32--;

            if ( var_32 <= 0 )
            {
                level._ID794 playsound( "h1_arcademode_ending_time_pts" );
                var_32 = 3;
            }

            wait 0.05;
        }

        _ID48304( 0, 0 );
        wait 1;

        for (;;)
        {
            var_48 = 1;

            if ( var_19 > 10 )
            {
                var_49 = var_19 % 10;

                if ( var_19 - var_49 >= 10 )
                    var_48 = 10;
                else
                    var_48 = var_49;

                if ( var_19 < 20 )
                    var_48 = var_49;
            }

            var_19 -= var_48;

            if ( var_19 < 0 )
                break;

            var_50 = 1000;
            var_50 *= var_48;
            var_34 = int( var_50 );

            if ( getdvar( "arcademode_full" ) == "1" )
            {
                var_22 += var_34;
                _ID49544( var_22 );
            }

            var_30 += var_34;
            level._ID794 playsound( "h1_arcademode_ending_lives_pts" );
            _ID51690( int( var_30 ), level._ID53290 );
            _ID53658( var_19 );
            wait 0.6;
        }

        wait 1;

        if ( getdvarint( "arcademode_died" ) != 1 && level._ID15361 >= 2 )
        {
            var_34 = int( var_30 );
            _ID43411( var_30, var_22, var_34, &"SCRIPT_ZERO_DEATHS", "arcademode_zerodeaths", var_13, var_4, var_17 );
            var_30 += var_34;
            var_22 += var_34;
        }
    }
    else
    {
        for ( var_21 = 0; var_21 < 5; var_21++ )
            level._ID3271[var_21] setpulsefx( 0, 0, 1000 );

        var_28 setpulsefx( 0, 0, 1000 );
        _ID53658( 0 );
        wait 2;
    }

    var_51 = level._ID43471[level._ID15361];

    if ( var_51 > 1 )
    {
        if ( var_51 == 1.5 )
            var_52 = &"SCRIPT_DIFFICULTY_BONUS_ONEANDAHALF";
        else if ( var_51 == 3 )
            var_52 = &"SCRIPT_DIFFICULTY_BONUS_THREE";
        else
            var_52 = &"SCRIPT_DIFFICULTY_BONUS_FOUR";

        var_34 = int( ceil( var_30 * var_51 ) - var_30 );
        _ID43411( var_30, var_22, var_34, var_52, "h1_arcademode_ending_diff_pts", var_13, var_4, var_17 );
        var_30 += var_34;
        var_22 += var_34;
    }

    var_53 = 0;

    if ( getdvar( "arcademode_full" ) == "1" )
    {
        var_54 = "s18";
        var_55 = getdvarint( var_54 );

        if ( var_22 > var_55 )
        {
            var_56 = _ID50437( var_22 );
            var_57 = _ID54572( var_56 );
            setdvar( var_54, var_57 );
            var_58 = 0;

            if ( !level._ID44161 )
                var_58 = 1;

            if ( level._ID912 == "airplane" )
                var_58 = 1;

            if ( var_58 )
                var_53 = 1;
        }

        var_59 = level._ID794 getplayerdata( _ID42237::_ID44046(), "fullChallengeScore" );

        if ( var_22 > var_59 )
            level._ID794 setplayerdata( _ID42237::_ID44046(), "fullChallengeScore", var_22 );

        level._ID794 uploadscore( "LB_AM_FULLCHALLENGE", getdvarint( var_54 ) );
    }
    else
    {
        var_60 = [];
        var_60["roadkill"] = 0;
        var_60["cliffhanger"] = 1;
        var_60["airport"] = 2;
        var_60["favela"] = 3;
        var_60["invasion"] = 4;
        var_60["favela_escape"] = 5;
        var_60["arcadia"] = 6;
        var_60["oilrig"] = 7;
        var_60["gulag"] = 8;
        var_60["dcburning"] = 9;
        var_60["contingency"] = 10;
        var_60["dcemp"] = 11;
        var_60["dc_whitehouse"] = 12;
        var_60["estate"] = 13;
        var_60["boneyard"] = 14;
        var_60["af_caves"] = 15;
        var_60["af_chase"] = 16;
        var_61 = var_60[level._ID912];

        if ( isdefined( var_61 ) )
        {
            var_59 = level._ID794 getplayerdata( _ID42237::_ID44046(), "arcadeScore", level._ID912 );

            if ( var_30 > var_59 )
            {
                var_53 = 1;
                level._ID794 setplayerdata( _ID42237::_ID44046(), "arcadeScore", level._ID912, var_30 );
            }

            level._ID794 uploadscore( "LB_AM_" + level._ID912, var_30 );
        }
    }

    if ( var_53 )
    {
        if ( !level._ID44161 )
            updategamerprofile();

        wait 1;
        var_62 = _ID48990( "center", var_4, 0, var_13 );
        var_62._ID393 = 2.25;
        var_62 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.5, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
        var_62 settext( &"SCRIPT_NEW_HIGH_SCORE" );
        var_62 fadeovertime( 0.05 );
        var_62._ID55 = 1;
        var_62 setpulsefx( 30, 3000, 1000 );
        var_63 = _ID48990( "center", var_4, 0, var_13 + 0.5 );
        var_63 setshader( "h1_arcademode_livesmessage_border", int( 313 * var_17 ), 135 );
        var_63._ID983 = var_62._ID983 - 1;
        var_63 fadeovertime( 0.05 );
        var_63._ID55 = 1;
        wait 3.0;
        var_63 fadeovertime( 1.0 );
        var_63._ID55 = 0;
        wait 0.5;
    }

    wait 2;
    var_15 setpulsefx( 0, 0, 1000 );
    wait 0.5;
    var_24 setpulsefx( 0, 0, 1000 );

    for ( var_21 = 0; var_21 < level._ID47847; var_21++ )
    {
        var_25 = level._ID53290[var_21];
        var_25 setpulsefx( 0, 0, 1000 );
    }

    if ( getdvar( "arcademode_full" ) == "1" )
    {
        var_23 setpulsefx( 0, 0, 1000 );

        for ( var_21 = 0; var_21 < level._ID47847; var_21++ )
        {
            var_25 = level._ID46189[var_21];
            var_25 setpulsefx( 0, 0, 1000 );
        }
    }

    if ( level._ID44161 )
    {
        wait 0.5;

        for ( var_21 = 0; var_21 < 5; var_21++ )
            level._ID3271[var_21] setpulsefx( 0, 0, 1000 );

        var_28 setpulsefx( 0, 0, 1000 );
    }

    wait 1;

    if ( getdvar( "arcademode_full" ) == "1" )
        logstring( "ArcadeMode Score: " + var_30 + ", mission: " + level._ID912 + ", gameskill: " + level._ID15361 + ", total: " + var_22 );
    else
        logstring( "ArcadeMode Score: " + var_30 + ", mission: " + level._ID912 + ", gameskill: " + level._ID15361 );

    setdvar( "arcademode_combined_score", var_22 );

    if ( var_22 >= 400000 )
        _ID42407::_ID16864( "ARCADE_ADDICT" );

    if ( !level._ID44161 )
    {
        setdvar( "ui_arcade_lost", 1 );
        _ID49083();
    }
    else
        setdvar( "ui_arcade_lost", 0 );

    for ( var_21 = 0; var_21 < level._ID50071.size; var_21++ )
    {
        if ( isdefined( level._ID50071[var_21] ) )
            level._ID50071[var_21]._ID55 = 0;
    }

    _ID42237::_ID14402( "arcademode_ending_complete" );
}

_ID43411( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = _ID48990( "center", var_6, 0, var_5 );
    var_8._ID393 = 2.25;
    var_8 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.5, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_8 settext( var_3 );
    var_8 fadeovertime( 0.05 );
    var_8._ID55 = 1;
    var_8 setpulsefx( 30, 10000, 1000 );
    var_9 = _ID48990( "center", 0.15, 320, var_5 + 0.5 );
    var_9 setshader( "h1_arcademode_livesmessage_border", int( 330 * var_7 ), 135 );
    var_9._ID499 = "fullscreen";
    var_9._ID983 = var_8._ID983 - 1;
    var_9 fadeovertime( 0.05 );
    var_9._ID55 = 1;
    wait 0.05;
    wait 1.0;
    var_10 = 0;
    var_11 = var_0 + var_2;
    var_12 = var_1 + var_2;

    for (;;)
    {
        var_13 = var_11 - var_0;
        var_2 = var_13 * 0.2 + 1;

        if ( var_13 <= 15 )
            var_2 = 1;

        var_2 = int( var_2 );
        var_0 += var_2;

        if ( var_0 > var_11 )
            var_0 = var_11;

        _ID51690( var_0, level._ID53290 );

        if ( getdvar( "arcademode_full" ) == "1" )
        {
            var_1 += var_2;

            if ( var_1 > var_12 )
                var_1 = var_12;

            _ID49544( var_1 );
        }

        if ( var_0 == var_11 )
            break;

        var_10--;

        if ( var_10 <= 0 )
        {
            level._ID794 playsound( var_4 );
            var_10 = 3;
        }

        wait 0.05;
    }

    wait 0.5;
    var_8 setpulsefx( 0, 10, 1000 );
    var_9 fadeovertime( 1.0 );
    var_9._ID55 = 0;
    wait 1.0;
}

_ID49376( var_0 )
{
    var_1 = newhudelem();
    var_1._ID408 = 1;
    var_1._ID1331 = 0;
    var_1._ID1339 = 0;
    var_1 setshader( "black", 640, 480 );
    var_1._ID44 = "left";
    var_1._ID45 = "top";
    var_1._ID499 = "fullscreen";
    var_1._ID1284 = "fullscreen";
    var_1._ID983 = level._ID47890 + 5;
    var_1._ID55 = 0;

    if ( var_0 > 0 )
        var_1 fadeovertime( var_0 );

    var_1._ID55 = 1;
}

_ID49647()
{
    for (;;)
    {
        level._ID794 enableinvulnerability();
        level._ID794._ID266 = 70000;
        level._ID794._ID511 = 1;
        var_0 = getaispeciesarray( "all", "all" );
        _ID42237::_ID3350( var_0, _ID42407::_ID32353, 1 );
        wait 0.05;
    }
}

_ID48304( var_0, var_1 )
{
    var_2 = 0;

    for ( var_3 = 0; var_0 >= 10; var_0 -= 10 )
        var_2++;

    while ( var_1 >= 10 )
    {
        var_3++;
        var_1 -= 10;
    }

    level._ID3271[4] setvalue( var_1 );
    level._ID3271[3] setvalue( var_3 );
    level._ID3271[1] setvalue( var_0 );
    level._ID3271[0] setvalue( var_2 );
}

_ID43626( var_0, var_1, var_2 )
{
    var_0 *= var_2;
    var_3 = _ID48990( "center", 0.001, var_0, 73.3333 );
    var_3._ID1284 = "top_adjustable";
    var_3._ID393 = 2.5;
    var_3._ID196 = ( 1, 1, 1 );
    var_3._ID392 = "objective";
    var_3 _meth_8355( -0.1, 0, 0, -0.001, ( 0, 0, 0 ), 0.2, -0.1, 0, ( 0, 0, 0 ), 0.5 );
    var_3 settext( &"SCRIPT_CHECKPOINT" );
    var_3._ID55 = 0;
    wait 0.15;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3._ID393 = 3.5;
    wait 0.05;
    var_3._ID393 = 2.5;
    wait 0.05;
    wait 1.0;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 destroy();
}

_ID43099( var_0, var_1, var_2 )
{
    var_0 *= var_2;
    var_3 = _ID48990( "center", 0.1, var_0, 73.3333 );
    var_3._ID1284 = "top_adjustable";
    var_3 setshader( "h1_arcademode_scanelines_border", 384, 48 );
    var_3._ID983 = var_3._ID983 - 2;
    var_3._ID55 = 0.25;
    var_3._ID55 = 0;
    wait 0.15;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    wait 0.05;
    wait 0.05;
    wait 1.0;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 destroy();
}

_ID48053()
{
    var_0 = _ID48990( "center", 0.001, 0, 73.3333 );
    var_0._ID1284 = "top_adjustable";
    var_0 setshader( "h1_arcademode_checkpoint_flare", 326, 23 );
    var_0._ID983 = level._ID47890 + 10 - 1;
    var_0._ID55 = 0;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    var_0 destroy();
}

_ID44814( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID50451.size; var_1++ )
    {
        if ( level._ID50451[var_1] == var_0 )
            return var_1;
    }

    return undefined;
}

_ID53448()
{
    level._ID47185 = [];
    level._ID50472 = [];
    level._ID47185[level._ID47185.size] = level._ID43634;
    level._ID47185[level._ID47185.size] = ( 0.678431, 0.976471, 0.768627 );
    level._ID47185[level._ID47185.size] = ( 0.658824, 0.964706, 0.619608 );
    level._ID47185[level._ID47185.size] = ( 1, 0.976471, 0.317647 );
    level._ID47185[level._ID47185.size] = ( 0.988235, 0.866667, 0.301961 );
    level._ID47185[level._ID47185.size] = ( 0.988235, 0.831373, 0.376471 );
    level._ID47185[level._ID47185.size] = ( 0.988235, 0.792157, 0.223529 );
    level._ID47185[level._ID47185.size] = ( 0.984314, 0.72549, 0.152941 );

    for ( var_0 = 0; var_0 < level._ID47185.size; var_0++ )
        level._ID50472[var_0] = ( level._ID47185[var_0][0] * 0.35, level._ID47185[var_0][1] * 0.35, level._ID47185[var_0][2] * 0.35 );

    level._ID47185[0] = level._ID44941;
}

_ID52975()
{
    if ( level._ID49229 == 1 )
        return;

    if ( _ID42237::_ID14385( "arcademode_complete" ) )
        return;

    var_0 = _ID48990( "right", 0.2, -21.6667, 80.0 );
    var_0._ID45 = "top";
    var_0._ID1284 = "top";
    var_0._ID444 = 0;
    var_0 setpulsefx( 5, 3000, 1000 );
    var_0._ID393 = 0.75;
    var_1 = level._ID49229 - 1;
    var_1 = int( clamp( var_1, 1, 7 ) );
    var_0._ID196 = level._ID47185[var_1];

    if ( level._ID49229 >= 8 )
    {
        level._ID794 thread _ID42237::_ID27077( "arcademode_kill_streak_won", level._ID794 geteye() );
        var_0 settext( &"SCRIPT_STREAK_COMPLETE" );
    }
    else
    {
        level._ID794 thread _ID42237::_ID27077( "arcademode_kill_streak_lost", level._ID794 geteye() );
        var_0 settext( &"SCRIPT_STREAK_BONUS_LOST" );
    }

    wait 5;
    var_0 destroy();
}

_ID44319()
{
    if ( isdefined( level._ID54114 ) )
    {
        level._ID54114 destroy();
        level._ID54114 = undefined;
        level._ID53285 destroy();
    }

    level notify( "arcademode_stop_kill_streak_art" );

    for ( var_0 = 0; var_0 < level._ID47071.size; var_0++ )
        level._ID47071[var_0] destroy();

    level._ID47071 = [];
}

_ID47378()
{
    level._ID48228 = 1;
    thread _ID52975();
    level notify( "arcademode_stop_kill_streak" );
    _ID44319();
    _ID42237::_ID14388( "arcadeMode_multiplier_maxed" );
    level._ID48446 = level._ID49626;
    level._ID49229 = 1;
}

_ID52516()
{
    var_0 = 0.1;
    var_1 = newhudelem();
    var_1._ID44 = "right";
    var_1._ID45 = "top";
    var_1._ID499 = "right";
    var_1._ID1284 = "top";
    var_1 thread _ID47972();
    var_1._ID1331 = 0;
    var_1._ID1339 = 76.3333;
    var_1._ID392 = "objective";
    var_1._ID393 = 2.25;
    var_1._ID72 = 0;
    var_1._ID408 = 1;
    var_1._ID493 = 1;
    var_1._ID196 = level._ID47185[level._ID49229 - 1];
    var_1 _meth_8355( -0.1, 0, 0, -0.001, ( 0, 0, 0 ), 0.5, -0.1, 0, ( 0, 0, 0 ), 0.75 );
    var_1._ID983 = level._ID47890;
    var_1._ID578 = &"SCRIPT_X";
    var_1 setvalue( level._ID49229 );
    var_1 moveovertime( var_0 );
    var_1._ID1331 = -21.6667;
    var_1._ID55 = 0.25;
    var_1 fadeovertime( var_0 );
    var_1._ID55 = 1.0;
    return var_1;
}

_ID48576()
{
    var_0 = newhudelem();
    var_0._ID44 = "right";
    var_0._ID45 = "middle";
    var_0._ID499 = "right";
    var_0._ID1284 = "top";
    var_0._ID1331 = -21.6667;
    var_0._ID1339 = 89.3333;
    var_0._ID392 = "objective";
    var_0._ID393 = 2.25;
    var_0._ID72 = 0;
    var_0._ID408 = 1;
    var_0._ID493 = 1;
    var_0._ID196 = level._ID47185[level._ID49229 - 1];
    var_0 _meth_8355( -0.6, 0, 0, 0, ( 0, 0, 0 ), 0.0, -0.6, 0, var_0._ID196, 1.0 );
    var_0._ID983 = level._ID47890;
    var_0._ID578 = &"SCRIPT_X";
    var_0 setvalue( level._ID49229 );
    var_0._ID55 = 0.0;
    var_1 = 2;
    var_2 = newhudelem();
    var_2._ID44 = "right";
    var_2._ID45 = "top";
    var_2._ID499 = "right";
    var_2._ID1284 = "top";
    var_2 thread _ID47972();
    var_2 setshader( "h1_arcademode_numberstreak_circles", 22 * var_1, 27 * var_1 );
    var_2._ID1331 = 38;
    var_2._ID1339 = 72.3333;
    var_2._ID72 = 0;
    var_2._ID408 = 1;
    var_2._ID493 = 1;
    var_2._ID196 = level._ID47185[level._ID49229 - 1];
    var_2._ID983 = level._ID47890 - 1;
    var_3 = newhudelem();
    var_3._ID44 = "right";
    var_3._ID45 = "top";
    var_3._ID499 = "right";
    var_3._ID1284 = "top";
    var_3 thread _ID47972();
    var_3 setshader( "h1_arcademode_numberstreak_glow", 64, 64 );
    var_3._ID1331 = 0.833332;
    var_3._ID1339 = 60.3333;
    var_3._ID72 = 0;
    var_3._ID408 = 1;
    var_3._ID493 = 1;
    var_3._ID196 = level._ID47185[level._ID49229 - 1];
    var_3._ID983 = level._ID47890 - 1;
    var_4 = 0.2;
    var_2._ID55 = 1;
    var_2 scaleovertime( 0.4, 27 * var_1, 27 * var_1 );
    var_3._ID55 = 0;
    var_3 fadeovertime( 0.4 );
    var_5 = 0.1;
    var_2 moveovertime( var_5 );
    var_2._ID1331 = -20.6667;
    wait(var_5);

    if ( isdefined( var_0 ) )
    {
        var_6 = 0.4;
        var_7 = 10.0;
        var_0 changefontscaleovertime( var_6 );
        var_0._ID393 = var_7;
        wait 0.05;
        var_8 = 0.35;
        var_0._ID55 = var_8;
        wait 0.05;
        var_0 fadeovertime( var_6 );
        var_0._ID55 = 0;
    }

    if ( isdefined( var_2 ) )
    {
        var_2 fadeovertime( 0.2 );
        var_2._ID55 = 0;
        var_9 = 0.15;
        wait(var_9);
        var_2 scaleovertime( 0.2, 32 * var_1, 27 * var_1 );
        wait(0.35 - var_9);
    }

    if ( isdefined( var_3 ) )
    {
        var_3 fadeovertime( 0.2 );
        var_3._ID55 = 0;
    }

    wait 0.4;

    if ( isdefined( var_0 ) )
        var_0 destroy();

    if ( isdefined( var_2 ) )
        var_2 destroy();

    if ( isdefined( var_3 ) )
        var_3 destroy();
}

_ID45701()
{
    level endon( "arcademode_new_kill_streak" );
    var_0 = _ID52516();
    thread _ID48576();
    level._ID51959 = var_0;
    level waittill( "arcademode_stop_kill_streak" );
    var_0 setpulsefx( 0, 0, 1000 );
    wait 1;
    var_0 destroy();
    level._ID51959 = undefined;
}

_ID47062()
{
    level endon( "arcademode_new_kill_streak" );
    wait 0.05;
    var_0 = 500;
    self moveovertime( 2 );
    self._ID1331 = self._ID1331 + randomintrange( var_0 * -1, var_0 );
    self._ID1339 = self._ID1339 + randomintrange( var_0 * -1, var_0 );
    wait 0.5;
    self fadeovertime( 1 );
    self._ID55 = 0;
    wait 1;
    self destroy();
}

_ID47972()
{
    self endon( "death" );
    level waittill( "arcademode_new_kill_streak" );
    self destroy();
}

_ID54572( var_0 )
{
    var_1 = "";

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_1 = var_0[var_2] + var_1;

    return var_1;
}
