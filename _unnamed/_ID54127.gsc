// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _func_150( &"SCRIPT_COLON" );
    _func_150( &"SCRIPT_TIME_REMAINING" );
    _func_150( &"SCRIPT_TOTAL_SCORE" );
    _func_150( &"SCRIPT_EXTRA_LIFE" );
    _func_150( &"SCRIPT_CHECKPOINT" );
    _func_150( &"SCRIPT_MISSION_SCORE" );
    _func_150( &"SCRIPT_ZERO_DEATHS" );
    _func_150( &"SCRIPT_PLUS" );
    _func_150( &"SCRIPT_TIME_UP" );
    _func_150( &"SCRIPT_1UP" );
    _func_150( &"SCRIPT_GAME_OVER" );
    _func_150( &"SCRIPT_DIFFICULTY_BONUS_ONEANDAHALF" );
    _func_150( &"SCRIPT_DIFFICULTY_BONUS_THREE" );
    _func_150( &"SCRIPT_DIFFICULTY_BONUS_FOUR" );
    _func_150( &"SCRIPT_MISSION_COMPLETE" );
    _func_150( &"SCRIPT_NEW_HIGH_SCORE" );
    _func_150( &"SCRIPT_STREAK_BONUS_LOST" );
    _func_150( &"SCRIPT_STREAK_COMPLETE" );
    _func_150( &"SCRIPT_X" );
    level._ID43634 = ( 0.8, 2, 0.8 );
    level._ID44941 = ( 0.3, 0.6, 0.3 );
    level._ID50071 = [];
    _unknown_0F2F();
    level._ID50451 = [];
    level._ID50553 = 10;
    level._ID47071 = [];
    level._ID54693 = 0;
    level._ID49472 = 0;
    level._ID53985 = 0;
    level._ID48228 = 1;
    _ID42237::_ID14400( "arcadeMode_multiplier_maxed" );
    _func_034( "arcademode_lives_changed", 0 );
    level._ID49229 = 1;
    level._ID49626 = 3;
    _unknown_0FE7();

    for ( var_0 = 0; var_0 < level._ID50553; var_0++ )
        _func_034( "arcademode_checkpoint_" + var_0, "" );

    level._ID50363 = 0;
    level._ID44161 = 0;
    _unknown_05F3();
    _ID42237::_ID14400( "arcademode_complete" );
    _ID42237::_ID14400( "arcademode_ending_complete" );
    waitframe;

    if ( _func_039( "arcademode_full" ) == "1" )
        _func_154( "LB_AM_FULLCHALLENGE" );
    else
        _func_154( "LB_AM_" + level._ID912 );

    level._ID16945 = ::_unknown_0911;
    level._ID16937 = ::_unknown_0938;
    level._ID16936 = ::_unknown_0939;
    level._ID47890 = 50;
    level._ID43036 = 10;
    level._ID50410 = 0;

    if ( _func_039( "arcademode_lives" ) == "" || _func_039( "arcademode_full" ) != "1" || level._ID912 == "cargoship" )
    {
        _func_034( "arcademode_lives", 2 );
        level._ID50410 = 2;
    }

    if ( _func_039( "arcademode_full" ) == "1" && level._ID912 == "cargoship" )
    {
        _func_034( "arcademode_lives", 5 );
        level._ID50410 = 5;
    }

    var_1 = _func_03A( "arcademode_lives" );
    _func_034( "arcademode_earned_lives", var_1 );
    level._ID53001 = _func_03A( "arcademode_playthrough_count" );
    level._ID53001++;
    _func_034( "arcademode_playthrough_count", level._ID53001 );
    _func_034( "arcademode_died", 0 );
    _func_034( "arcademode_score", 0 );

    if ( _func_039( "arcademode_combined_score" ) == "" || _func_039( "arcademode_full" ) == "1" && level._ID912 == "cargoship" )
        _func_034( "arcademode_combined_score", 0 );

    var_2 = _unknown_02C3();
    var_2 *= 60;
    level._ID49290 = _func_03D();
    level._ID50781 = var_2;
    level._ID49108 = 50;
    level._ID45019 = 5;
    level._ID54578 = [];
    var_3 = _func_1D9( level._ID53235 );

    for ( var_0 = 0; var_0 < var_3.size; var_0++ )
        level._ID54578[var_3[var_0]] = [];

    var_4 = level._ID54578;
    thread _unknown_0397();
    thread _unknown_065C();
    thread _unknown_035F();
    thread _unknown_0338();
    _unknown_0468( var_1 );

    for (;;)
    {
        wait 0.05;
        waitframe;
        waitframe;
        var_3 = _func_1D9( level._ID54578 );
        _ID42237::_ID3315( var_3, ::_unknown_0A16 );
        level._ID54578 = var_4;
    }
}

_ID50089()
{
    if ( _func_039( "arcademode" ) != "1" )
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

    if ( _func_02F( var_1[level._ID912] ) )
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
    _func_034( "arcademode_died", 1 );
    var_0 = _func_03A( "arcademode_lives" );
    var_1 = _func_03A( "arcademode_earned_lives" );

    if ( var_0 > var_1 )
        var_0 = var_1;

    var_0 -= 1;
    _func_034( "arcademode_lives", var_0 );
    _func_034( "arcademode_lives_changed", -1 );
    _unknown_0586( var_0 + 1 );
    level._ID44090 = 1;
    _unknown_07B6();

    if ( var_0 < 0 )
    {
        wait 1.5;
        level._ID43444 = &"SCRIPT_GAME_OVER";
        thread _unknown_0C96();
        return;
    }

    if ( _func_1A7( level._ID794 ) )
        _func_059();
}

_ID52194()
{
    level._ID794 endon( "death" );
    var_0 = _func_1AF();
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
    var_0 _meth_80D6( var_1 - 0.1 );
    wait(var_1);
    level._ID43444 = &"SCRIPT_TIME_UP";
    thread _unknown_0D5B();
    _ID42475::_ID34575( "player_death" );
}

_ID48086()
{
    level._ID794 endon( "death" );
    level endon( "missionfailed" );
    level._ID49797 = [];

    for ( var_0 = 0; var_0 < level._ID43036; var_0++ )
        _unknown_0948( var_0, -28.6667, 68.6667, -14, 64, level._ID47890 );

    for (;;)
    {
        var_1 = _func_03A( "arcademode_lives_changed" );

        if ( var_1 != 0 )
        {
            var_2 = _func_03A( "arcademode_lives" );

            if ( var_2 < 0 )
            {
                level._ID43444 = &"SCRIPT_GAME_OVER";
                thread _unknown_0DB6();
                return;
            }

            if ( var_1 == -1 )
            {
                level notify( "lost_streak" );
                level._ID54693 = _func_03D();
                thread _unknown_07B7( 0 );
                level._ID48228 = 0;
                var_3 = _func_03A( "arcademode_earned_lives" );
                var_3--;
                var_2 = var_3;
                _func_034( "arcademode_earned_lives", var_3 );
                _func_034( "arcademode_lives", var_3 );
                level._ID794 thread _ID42237::_ID27077( "h1_arcademode_life_lost", level._ID794 _meth_80AF() );
            }

            _unknown_070A( var_2 );
            level._ID44090 = 1;
            _func_034( "arcademode_lives_changed", 0 );
        }

        wait 0.05;
    }
}

_ID52538()
{
    var_0 = _func_03A( "arcademode_lives" );
    var_1 = _func_03A( "arcademode_earned_lives" );

    if ( var_0 > var_1 )
        thread _unknown_0B4F( var_0 - var_1 );

    _func_034( "arcademode_earned_lives", var_0 );
    thread _unknown_0746( var_0 );
    return var_0 > var_1;
}

_ID50607()
{
    if ( !_ID42407::_ID3270() )
        return;

    _unknown_06D2();
    var_0 = 800;
    var_1 = 0.8;
    level._ID794 thread _ID42237::_ID27077( "arcademode_checkpoint", level._ID794 _meth_80AF() );
    thread _unknown_12D0( 0, var_1, 1 );
    thread _unknown_1349( 0, var_1, 1 );
    thread _unknown_13A7();
}

_ID48250( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1AF();
    var_4._ID408 = 1;
    var_4._ID1331 = var_1 + var_0 * var_3 - 10;
    var_4._ID1339 = var_2 + 10;
    var_4 _meth_80D3( "h1_arcademode_lives_earned_flare", 26, 26 );
    var_4._ID44 = "center";
    var_4._ID45 = "middle";
    var_4._ID499 = "right";
    var_4._ID1284 = "top";
    var_4._ID983 = level._ID47890 + 10 - 1;
    var_4._ID55 = 0;
    var_4._ID493 = 1;
    var_4 _meth_808B( 0.05 );
    var_4._ID55 = 0.4;
    wait 0.05;
    var_4 _meth_808C( 0.15, 52, 52 );
    wait 0.15;
    var_4 _meth_808F();
}

_ID52714( var_0, var_1 )
{
    if ( var_0 >= var_1 )
    {
        self _meth_80D3( "arcademode_life_empty", 20, 20 );
        self._ID312 = 1;
    }
    else
    {
        if ( _func_02F( self._ID312 ) && self._ID312 )
            thread _unknown_07DF( var_0, -18.6667, 58.6667, -14 );

        self _meth_80D3( "arcademode_life", 20, 20 );
        self._ID312 = 0;
    }

    self _meth_808B( 1 );
    self._ID55 = 1;
    self._ID196 = ( 1, 1, 1 );
}

_ID44768( var_0 )
{
    if ( self._ID55 <= 0 )
        return;

    self _meth_808B( 1 );
    self._ID55 = 0;
    self._ID196 = ( 1, 0, 0 );
    self._ID444 = 0;
    self._ID312 = 0;
}

_ID53566( var_0 )
{
    if ( self._ID55 <= 0 )
        return;

    self _meth_808B( 0.15 );
    self._ID55 = 0;
    self _meth_808C( 0.15, 40, 40 );
}

_ID53658( var_0 )
{
    if ( var_0 > 10 )
        var_0 = 10;

    var_1 = _func_03A( "arcademode_earned_lives" );

    for ( var_2 = 0; var_2 < var_0; var_2++ )
        level._ID49797[var_2] _unknown_0896( var_2, var_1 );

    for ( var_2 = var_0; var_2 < level._ID43036; var_2++ )
    {
        if ( var_2 < 0 )
            continue;

        if ( var_2 >= 10 )
            continue;

        if ( level._ID44161 )
        {
            level._ID49797[var_2] _unknown_08EA( var_2 );
            continue;
        }

        level._ID49797[var_2] _unknown_08EB( var_2 );
    }
}

_ID43092()
{
    for (;;)
    {
        level _ID42237::_ID41098( "arcademode_decrement_kill_streak", "arcademode_new_kill" );
        waitframe;
        _unknown_093F();
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

        for ( var_0 = level._ID48446 + var_1 * level._ID49626; var_0 < level._ID48446 + var_1 + 1 * level._ID49626; var_0++ )
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
    var_6 = _func_1AF();
    var_6._ID408 = 1;
    var_6._ID1331 = var_1 + var_0 * var_3;

    if ( level._ID47071.size == 0 )
        level._ID49940 = var_6._ID1331;

    var_6._ID1339 = var_2;
    var_6 _meth_80D3( "arcademode_kill", var_4, var_4 );
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

            var_6 _meth_808B( var_8 );
            var_6._ID196 = ( 1, 0, 0 );
            var_6._ID55 = 0;
            wait(var_8);
            level notify( "arcademode_decrement_kill_streak" );
            var_6 _meth_808F();

            for ( var_9 = 0; var_9 < level._ID47071.size - 1; var_9++ )
                level._ID47071[var_9] = level._ID47071[var_9 + 1];

            level._ID47071[level._ID47071.size - 1] = undefined;

            if ( !level._ID47071.size )
                thread _unknown_1792();

            return;
        }

        level waittill( "arcademode_decrement_kill_streak" );
        wait 0.05;
        var_6 _meth_808D( 0.5 );
        var_6._ID1331 = var_6._ID1331 - var_3;

        if ( var_7 )
        {
            var_6 _meth_808B( 0.5 );
            var_6._ID55 = 1;
            var_7 = 0;
        }
    }
}

_ID54549( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1AF();
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
    var_4 _meth_80D3( "white", var_2, var_3 );
    return var_4;
}

_ID54037( var_0 )
{
    if ( !level._ID48228 )
        return;

    level notify( "arcademode_new_kill_streak_time" );
    level endon( "arcademode_new_kill_streak_time" );

    if ( level._ID54693 < _func_03D() )
        level._ID54693 = _func_03D() + var_0 * 1000;
    else
        level._ID54693 = level._ID54693 + var_0 * 1000;

    waitframe;

    if ( _func_02F( level._ID51959 ) )
    {
        level._ID51959 _meth_808B( 0.05 );
        level._ID51959._ID55 = 1;
    }

    var_1 = 26;
    var_2 = 12;
    var_3 = 90;
    var_4 = level._ID54114;
    var_5 = level._ID53285;
    var_6 = level._ID54693 - _func_03D();
    var_6 *= 0.001;

    if ( var_6 > var_3 )
        var_6 = var_3;

    var_6 *= var_2;
    var_6 = _func_0C1( var_6 );

    if ( var_6 > 980 )
        var_6 = 980;

    if ( !_func_02F( var_4 ) )
    {
        var_4 = _unknown_0C8C( 0, 0, var_6, var_1 );
        var_5 = _unknown_0C96( 3, 3, var_6, var_1 );
        var_5._ID983 = var_5._ID983 - 1;
        var_5._ID55 = 0.0;
        var_5._ID196 = ( 0, 0, 0 );
    }
    else
    {
        var_4 _meth_808C( 1, var_6, var_1 );
        var_5 _meth_808C( 1, var_6, var_1 );
        wait 1;
    }

    level._ID54114 = var_4;
    level._ID53285 = var_5;
    var_4 endon( "death" );
    var_0 = level._ID54693 - _func_03D();
    var_0 *= 0.001;
    var_7 = _func_0C1( var_0 );

    if ( var_7 > var_3 )
    {
        var_7 = var_3;
        wait(var_0 - var_7);
    }

    for (;;)
    {
        var_6 = level._ID54693 - _func_03D();
        var_6 *= 0.001;
        var_8 = var_6;

        if ( _func_02F( level._ID51959 ) )
        {
            level._ID51959 _meth_808B( 1 );
            level._ID51959._ID55 = var_8 - 1 / 5;
        }

        var_6 *= var_2;
        var_6 = _func_0C1( var_6 );

        if ( var_6 <= 0 )
            var_6 = 1;

        if ( var_6 > 980 )
            var_6 = 980;

        if ( _func_02F( var_4 ) )
            var_4 _meth_808C( 1, var_6, var_1 );

        if ( _func_02F( var_5 ) )
            var_5 _meth_808C( 1, var_6, var_1 );

        wait 1;

        if ( var_6 == 1 )
            break;
    }

    thread _unknown_1995();
}

_ID48470()
{
    if ( _ID42237::_ID14385( "arcadeMode_multiplier_maxed" ) )
        return;

    level endon( "arcadeMode_multiplier_maxed" );
    level endon( "arcademode_stop_kill_streak" );
    level._ID48446--;
    var_0 = _func_03D();

    if ( level._ID48446 <= 0 && var_0 > level._ID49472 )
    {
        level._ID49472 = var_0;
        var_1 = level._ID49229;
        level._ID49229++;

        if ( level._ID49229 >= level._ID47185.size )
        {
            level._ID49229 = level._ID47185.size;
            thread _unknown_0E83();
        }

        if ( var_1 != level._ID49229 )
        {
            level notify( "arcademode_new_kill_streak" );
            level._ID794 _meth_80A1( "arcademode_" + level._ID49229 + "x" );
            thread _unknown_1B15();
        }

        level._ID48446 = level._ID49626;
    }

    level notify( "arcademode_new_kill" );

    for (;;)
    {
        if ( level._ID47071.size < 10 )
        {
            _unknown_0E0B( 5 );
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
        var_0 = _func_0BA( 0.1, 1.0 );
        level._ID54114 _meth_808B( var_0 );
        level._ID54114._ID196 = ( _func_0B8( 1 ), _func_0B8( 1 ), _func_0B8( 1 ) );
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
    level._ID54693 = _func_03D() + var_0 * 1000;
    thread _unknown_0E6B( 0 );
    thread _unknown_0F12();
    _func_078();
    wait 0.05;
    _func_077( "airplane_alt_maximum_music" );
    level _ID42407::_ID1985( _ID42407::_ID1687, var_0 + 1 );
    level _ID42407::_ID1985( _ID42407::_ID41116, "lost_streak" );
    _ID42407::_ID11232();
    thread _unknown_1AAA();
    _func_078();

    if ( _func_02F( level._ID21854 ) )
    {
        wait 0.05;
        _func_077( level._ID21854 );
    }
}

_ID53241( var_0, var_1, var_2 )
{
    var_3 = _unknown_1165( "right", 0.1, -5.16667, 3.22222 );
    var_3 _meth_80D3( "h1_arcademode_scanelines_border", 50, 50 );
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
    var_0 = _func_1AF();
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
        level._ID45357[level._ID45357.size] = _unknown_109F();
        level._ID45357[level._ID45357.size - 1]._ID1331 = var_0 * -17 + -21.6667;
    }

    level._ID45520 = _unknown_10A4();

    if ( _func_03A( "arcademode_full" ) )
        var_1 = _func_03A( "arcademode_combined_score" );
    else
        var_1 = _func_03A( "arcademode_score" );

    _unknown_1164( var_1 );
    level._ID44090 = 0;

    for (;;)
    {
        wait 0.05;
        _unknown_1141();

        if ( level._ID44090 )
            level._ID44090 = 0;
    }
}

_ID53685()
{
    if ( _func_03A( "arcademode_full" ) )
        _unknown_1166( "arcadeMode_combined_score" );
    else
        _unknown_116F( "arcademode_score" );
}

_ID44655( var_0 )
{
    var_1 = _func_03A( var_0 );

    if ( level._ID44090 )
    {
        level._ID53985 = var_1;
        _unknown_11A9( var_1 );
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

    _unknown_11DE( _func_0C1( level._ID53985 ) );
}

_ID50437( var_0 )
{
    var_1 = [];
    var_0 = _func_0C1( var_0 );

    for (;;)
    {
        var_1[var_1.size] = var_0 % 10;
        var_0 = _func_0C1( var_0 * 0.1 );

        if ( var_0 <= 0 )
            break;
    }

    return var_1;
}

_ID48162( var_0 )
{
    _unknown_1211( var_0, level._ID45357 );
}

_ID46160( var_0, var_1 )
{
    var_2 = _unknown_120B( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_3 >= var_1.size - 1 )
            break;

        var_1[var_3] _meth_80DE( var_2[var_3] );
        var_1[var_3]._ID55 = 1;
    }

    for ( var_3 = var_2.size; var_3 < var_1.size; var_3++ )
        var_1[var_3]._ID55 = 0;

    if ( var_0 == 0 )
    {
        var_1[0]._ID55 = 1;
        var_1[0] _meth_80DE( 0 );
    }

    level._ID45520 _meth_80D3( "h1_arcademode_scanelines_border", 50 + var_2.size - 1 * 22, 50 );
    level._ID45520._ID1331 = -5.16667 + var_2.size - 1 * 2.4;

    if ( !_ID42237::_ID14385( "arcademode_complete" ) )
        level._ID794 thread _ID42237::_ID27077( "h1_arcademode_add_counter_pt", level._ID794 _meth_80AF() );
}

_ID51690( var_0, var_1 )
{
    var_2 = _unknown_129F( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_3 >= var_1.size - 1 )
            break;

        var_1[var_1.size - var_2.size + var_3] _meth_80DE( var_2[var_3] );
        var_1[var_1.size - var_2.size + var_3]._ID55 = 1;
    }

    for ( var_3 = var_1.size - var_2.size - 1; var_3 >= 0; var_3-- )
        var_1[var_3]._ID55 = 0;

    if ( var_0 == 0 )
    {
        var_1[var_1.size - 1]._ID55 = 1;
        var_1[var_1.size - 1] _meth_80DE( 0 );
    }
}

_ID47245( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _func_1AF();
    var_6._ID408 = 1;
    var_6._ID1331 = var_1 + var_0 * var_3;
    var_6._ID1339 = var_2;
    var_6 _meth_80D3( "arcademode_life", var_4, var_4 );
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
    var_4 = _func_1AF();
    var_4._ID408 = 1;
    var_4._ID1331 = var_2;
    var_4._ID1339 = var_3;
    var_4._ID44 = var_0;
    var_4._ID45 = "middle";
    var_4._ID499 = var_0;
    var_4._ID1284 = "middle";
    var_4._ID393 = 3;

    if ( _func_039( "widescreen" ) == "1" )
        var_4._ID393 = 5;

    var_4._ID196 = ( 0.8, 1, 0.8 );
    var_4._ID392 = "objective";
    var_4._ID445 = ( 0.3, 0.6, 0.3 );
    var_4._ID444 = 1;
    var_4._ID55 = 0;
    var_4 _meth_808B( var_1 );
    var_4._ID55 = 1;
    var_4._ID493 = 1;
    var_4._ID983 = level._ID47890 + 10;
    level._ID50071[level._ID50071.size] = var_4;
    return var_4;
}

_ID51673()
{
    var_0 = _unknown_1743( "center", 0.001, 0, 97.7778 );
    var_0 _meth_80D3( "h1_arcademode_livesmessage_border", 210, 112 );
    var_0._ID983 = level._ID47890 + 10 - 1;
    var_0._ID1284 = "top_adjustable";
    var_0._ID55 = 0;
    var_0 _meth_808B( 0.15 );
    var_0._ID55 = 1;
    wait 0.15;
    var_0 _meth_808B( 0.1 );
    var_0._ID55 = 0;
    wait 0.1;
    var_0 _meth_808B( 0.1 );
    var_0._ID55 = 1;
    wait 0.1;
    wait 1.2;
    var_0 _meth_808B( 0.1 );
    var_0._ID55 = 0;
    wait 0.1;
    var_0 _meth_808F();
}

_ID50828()
{
    var_0 = _unknown_17C8( "center", 0.001, 0, 97.7778 );
    var_0 _meth_80D3( "h1_arcademode_lives_message_flare", 145, 26 );
    var_0._ID983 = level._ID47890 + 10 + 1;
    var_0._ID1284 = "top_adjustable";
    var_0._ID55 = 0;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    wait 0.1;
    var_0 _meth_808B( 0.15 );
    var_0._ID55 = 1;
    wait 0.15;
    var_0 _meth_808B( 0.1 );
    var_0._ID55 = 0;
    wait 0.1;
    wait 2.1;
    var_0 _meth_808F();
}

_ID45265( var_0 )
{
    wait 0.5;
    level._ID794 thread _ID42237::_ID27077( "arcademode_extralife", level._ID794 _meth_80AF() );
    var_1 = _unknown_1889( "center", 0.001, 0, 97.7778 );
    var_1._ID393 = 1.7;
    var_1._ID1284 = "top_adjustable";
    var_1 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.5, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_1._ID578 = &"SCRIPT_EXTRA_LIFE";
    var_1 _meth_80DE( var_0 );
    thread _unknown_190B();
    thread _unknown_193C();
    var_1._ID55 = 0;
    wait 0.4;
    var_1 _meth_808B( 0.15 );
    var_1._ID55 = 1;
    wait 0.15;
    wait 1.0;
    var_1 _meth_808B( 0.1 );
    var_1._ID55 = 0;
    wait 0.1;
    var_1 _meth_808F();
}

_ID13798( var_0 )
{
    self _meth_808B( var_0 );
    self._ID55 = 0;
    wait(var_0);
    self _meth_808F();
}

_ID47715()
{
    var_0 = _unknown_192F( "center", 0.2, 0, -100 );
    var_0._ID55 = _func_0BA( 0.1, 0.45 );
    var_0._ID983 = var_0._ID983 - 1;
    var_0 _meth_80D1( &"SCRIPT_EXTRA_LIFE" );
    var_0 _ID42407::_ID10226( 3, ::_unknown_1A2B, 1 );
    var_0 endon( "death" );
    var_1 = var_0._ID1331;
    var_2 = var_0._ID1339;
    var_3 = 20;

    for (;;)
    {
        var_4 = _func_0BA( 0.1, 0.2 );
        var_0 _meth_808D( var_4 );
        var_0._ID1331 = var_1 + _func_0BA( var_3 * -1, var_3 );
        var_0._ID1339 = var_2 + _func_0BA( var_3 * -1, var_3 );
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

    if ( _func_02F( level._ID44862[var_2] ) )
        var_2 = level._ID44862[var_2];

    var_3 = _func_0C1( var_3 );
    var_3 = _unknown_1AD4( var_3 );
    var_3 *= level._ID49229;
    var_4 = _func_03A( "arcademode_score" );
    var_4 += var_3;
    var_5 = _func_03A( "arcademode_combined_score" );
    var_5 += var_3;
    _func_034( "arcademode_combined_score", var_5 );
    _func_034( "arcademode_score", var_4 );
    var_6 = 60;
    var_7 = 1.5;
    var_8 = 0.9 + var_3 - 10 * 0.01;

    if ( var_8 > 1.4 )
        var_8 = 1.4;

    var_9 = ( 0.75, 0, 0 );

    if ( var_1 )
    {
        thread _unknown_1809();
        thread _unknown_1B6D();
        var_9 = level._ID44654[var_2];
    }

    level._ID794 _unknown_1BCA( var_3 );
}

_ID53289()
{
    level._ID46136 = level._ID46136 - 1;

    if ( level._ID46136 > 0 )
        return;

    level._ID50410++;
    var_0 = _func_03A( "arcademode_lives" );
    var_0++;

    if ( var_0 >= level._ID43036 )
        var_0 = level._ID43036;
    else
    {
        _func_034( "arcademode_lives", var_0 );
        _func_034( "arcademode_lives_changed", 1 );
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
            var_2 = _func_0B7( 1 );
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
            var_1 = _func_0BA( 0, 180 );
            var_0 = _func_0BA( 60, 120 );
        }
        else if ( level._ID794._ID54194 <= 8 )
        {
            var_1 = _func_0BA( 0, 180 );
            var_0 = _func_0BA( 60, 160 );
        }
        else
        {
            var_1 = _func_0BA( -30, 210 );
            var_0 = _func_0BA( 60, 200 );
        }
    }

    self._ID1331 = var_0 * _func_0BC( var_1 );
    self._ID1339 = 0 - var_0 * _func_0BB( var_1 );
}

_ID43006( var_0 )
{
    if ( var_0 == 0 )
        return;

    if ( !_func_02F( level._ID794._ID52810 ) )
    {
        level._ID794._ID52810 = 0;
        level._ID794._ID54194 = 0;
    }

    if ( !_ID42237::_ID14385( "arcademode_complete" ) )
        level._ID794 thread _ID42237::_ID27077( "h1_arcademode_pulse_score", level._ID794 _meth_80AF() );

    var_1 = _func_1AF();
    var_1._ID499 = "center";
    var_1._ID1284 = "middle";
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1 _unknown_1CDF();
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

    var_1 _meth_80DE( var_0 );
    var_1._ID55 = 1;
    var_3 = 4.0;
    var_4 = 0.025;
    var_5 = 1.5;
    var_6 = 0.2;
    var_1 _meth_8092( var_4 );
    var_1._ID393 = var_3;
    wait 0.05;
    var_1 _meth_808D( 1.75 );
    var_1._ID1339 = var_1._ID1339 - 20;
    var_1 _meth_8092( var_6 );
    var_1._ID393 = var_5;
    wait(var_6);
    var_1 _meth_808B( 1.0 );
    var_1._ID55 = 0;
    wait 1.0;
    level._ID794._ID52810--;

    if ( level._ID794._ID52810 == 0 )
        level._ID794._ID54194 = 0;

    var_1 _meth_808F();
}

_ID49241()
{
    var_0 = 50;

    for (;;)
    {
        var_1 = _func_0B7( var_0 );
        var_2 = _func_0B7( var_0 );

        if ( _func_0F3( ( 0, 0, 0 ), ( var_1, var_2, 0 ) ) < var_0 )
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
        _unknown_1F43( level._ID54578[var_0][var_1], var_0, level._ID54578[var_0].size );
}

_ID43940( var_0, var_1, var_2 )
{
    if ( var_0["type"] != "melee" )
        var_3 = level._ID49108 + level._ID51406[var_0["damage_location"]] + level._ID48644[var_0["type"]];
    else
        var_3 = level._ID49108 + level._ID48644[var_0["type"]];

    thread _unknown_1E68( var_0["origin"], 1, var_1, var_3 );
}

_ID52405( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "none";

    var_3 = level._ID44862[var_0];

    if ( !_func_02F( var_3 ) )
    {
        var_4 = level._ID49108;
        thread _unknown_1E92( var_2, 1, "melee", var_4 );
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
    thread _unknown_1ECE( var_2, 0, var_0, level._ID45019 );
}

_ID50155( var_0, var_1, var_2 )
{
    thread _unknown_1EE1( var_2, 0, var_0, level._ID45019 * 1.25 );
}

_ID45451( var_0 )
{
    var_1 = _unknown_1DE9( "center", 0.05, 0, var_0 );
    var_1._ID393 = 3;
    var_1._ID196 = ( 1, 1, 1 );
    var_1 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_1 _meth_80D1( &"SCRIPT_MISSION_COMPLETE" );
    var_2 = _unknown_1E3D( "center", 0.15, 0, var_0 );
    var_2._ID393 = 4.5;
    var_2._ID196 = ( 1, 1, 1 );
    var_2 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_2 _meth_80D1( &"SCRIPT_MISSION_COMPLETE" );
    var_1 _meth_8092( 0.15 );
    var_1._ID393 = 4.5;
    var_2 _meth_8092( 0.15 );
    var_2._ID393 = 3;
    wait 0.05;
    var_1 _meth_808B( 0.15 );
    var_1._ID55 = 0;
    wait 0.15;
    var_1 _meth_808F();
    var_2 _meth_808F();
}

_ID49083()
{
    _func_0DB( "ui_nextMission", "0" );

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        var_1 = level._ID805[var_0];
        var_1._ID626 = 0;
        var_1._ID486 = 1;
    }

    _func_057( "" );
}

_ID48119( var_0, var_1 )
{
    level._ID46189 = [];

    for ( var_2 = 0; var_2 < level._ID47847; var_2++ )
    {
        var_3 = _unknown_1D62();
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
        var_3 _meth_808B( 1.0 );
        var_3._ID55 = 1;
    }
}

_ID49544( var_0 )
{
    _unknown_1E87( var_0, level._ID46189 );
}

_ID51866( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    for (;;)
    {
        var_6 = _func_041();
        var_7 = _func_042();

        if ( var_6 != level._ID48436 || var_7 != level._ID48137 )
        {
            level._ID48436 = var_6;
            level._ID48137 = var_7;

            if ( level._ID48137 == 0 )
                level._ID48137 = 1;

            if ( level._ID48436 == 0 )
                level._ID48436 = 1;

            _unknown_22CB( var_0, var_1, var_2, var_3, var_4, var_5 );
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
        level._ID53290[var_9]._ID1331 = 320 + var_9 * -9 * var_6 + var_8;

        if ( _func_02F( level._ID46189 ) )
            level._ID46189[var_9]._ID1331 = 320 + var_9 * -9 * var_6 + var_8;
    }

    var_10 = 11.6667 + var_7;
    level._ID3271[0]._ID1331 = 320 + var_10 + 0 * var_6;
    level._ID3271[1]._ID1331 = 320 + var_10 + 8.3 * var_6;
    level._ID3271[2]._ID1331 = 320 + var_10 + 16.6 * var_6;
    level._ID3271[3]._ID1331 = 320 + var_10 + 21 * var_6;
    level._ID3271[4]._ID1331 = 320 + var_10 + 29.6 * var_6;
    var_11 = 58.5;
    var_12 = var_11 - 10 - var_3 * 13 * 0.5;

    for ( var_9 = 0; var_9 < level._ID43036; var_9++ )
        level._ID49797[var_9]._ID1331 = var_9 * -13 + var_12 * var_6;

    if ( _func_02F( var_0 ) )
        var_0._ID1331 = 320 + var_7;

    var_1._ID1331 = 320 + var_7;
    var_2._ID1331 = 320 + var_7;

    if ( level._ID44161 )
        var_4 _meth_80D3( "h1_arcademode_scanelines_border", _func_0C1( 344 * var_6 ), 65 );
    else
        var_4 _meth_80D3( "h1_arcademode_scanelines_border", _func_0C1( 216 * var_6 ), 65 );

    var_5 _meth_80D3( "h1_arcademode_scanelines_border_end_title", _func_0C1( 291 * var_6 ), 4 );
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
        if ( _unknown_1D31() )
            wait 2;
    }

    var_0 = 0;

    if ( _func_02F( level._ID3273 ) )
    {
        var_0 = _func_03D() - level._ID3273;
        var_0 *= 0.001;
    }

    var_1 = _func_03D() - level._ID49290;
    var_1 *= 0.001;
    var_1 -= var_0;
    var_2 = level._ID50781 - var_1;
    var_2 = _func_0C1( var_2 );

    if ( level._ID44161 )
    {
        if ( var_2 == 0 )
            var_2++;
    }

    var_3 = 0.5;
    level._ID50699 = 1;
    thread _unknown_2932();
    thread _unknown_2917( var_3 );
    wait(var_3 + 0.25);
    level._ID794 _meth_8334( 1 );
    var_4 = 1;
    var_5 = 0;

    if ( _func_039( "arcademode_full" ) == "1" )
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
    var_15 = _unknown_21DD( "center", 0.1, 0, var_6 );
    var_15._ID393 = 3;
    var_16 = _unknown_21F6( "center", 0.1, 320, var_6 + 5 );
    var_16._ID499 = "fullscreen";
    var_16._ID983 = var_15._ID983 - 1;
    var_16._ID55 = 1;
    level._ID48436 = _func_041();
    level._ID48137 = _func_042();
    var_17 = 1920.0 / level._ID48436 * level._ID48137 / 1080.0;

    if ( level._ID44161 )
    {
        var_15._ID196 = ( 1, 1, 1 );
        var_15 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
        var_16 _meth_80D3( "h1_arcademode_scanelines_border", _func_0C1( 344 * var_17 ), 65 );
        var_15 _meth_80D1( &"SCRIPT_MISSION_COMPLETE" );
        level._ID794 _meth_80A1( "h1_arcademode_mission_success" );
        thread _unknown_24F7( var_6 );
    }
    else
    {
        var_15._ID196 = ( 1, 0.15, 0.16 );
        var_15 _meth_8355( -0.6, 0, 0, 0, ( 0.5, 0.1, 0.1 ), 0.3, 0, 0, ( 0, 0, 0 ), 0 );
        var_15 _meth_80D1( level._ID43444 );
        var_16 _meth_80D3( "h1_arcademode_scanelines_border", _func_0C1( 216 * var_17 ), 65 );
        var_16._ID196 = ( 1, 0.15, 0.16 );
        level._ID794 _meth_80A1( "h1_arcademode_mission_fail" );
    }

    var_18 = _unknown_22FC( "center", 0.1, 0, var_6 + 20 );
    var_18 _meth_80D3( "h1_arcademode_scanelines_border_end_title", _func_0C1( 291 * var_17 ), 4 );
    var_18._ID983 = var_15._ID983 - 1;
    var_18._ID55 = 1;
    wait 1.0;
    var_19 = _func_03A( "arcademode_lives" );
    var_20 = level._ID50410;

    if ( var_19 > var_20 )
        var_19 = var_20;

    for ( var_21 = 0; var_21 < level._ID43036; var_21++ )
        level._ID49797[var_21] _meth_808F();

    level._ID49797 = [];

    for ( var_21 = 0; var_21 < level._ID43036; var_21++ )
    {
        _unknown_2294( var_21, 0, var_14, 0, 64, level._ID47890 + 10 );
        level._ID49797[var_21]._ID499 = "center";
        level._ID49797[var_21]._ID1284 = "middle";
    }

    _unknown_2006( var_19 );
    var_22 = 0;
    var_23 = undefined;

    if ( _func_039( "arcademode_full" ) == "1" )
    {
        var_23 = _unknown_239D( "center", var_4, 0, var_7 );
        var_23._ID44 = "right";
        var_23._ID499 = "fullscreen";
        var_23._ID393 = 1.875;
        var_23._ID196 = ( 1, 1, 1 );
        var_23 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
        var_23 _meth_80D1( &"SCRIPT_TOTAL_SCORE" );
        _unknown_26C8( 0, var_8 );
        var_22 = _func_03A( "arcademode_combined_score" );
        _unknown_26FD( var_22 );
    }

    var_24 = _unknown_2415( "center", var_4, 0, var_9 );
    var_24._ID44 = "right";
    var_24._ID499 = "fullscreen";
    var_24._ID393 = 1.875;
    var_24._ID196 = ( 1, 1, 1 );
    var_24 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_24 _meth_80D1( &"SCRIPT_MISSION_SCORE" );
    level._ID53290 = [];

    for ( var_21 = 0; var_21 < level._ID47847; var_21++ )
    {
        var_25 = _unknown_22DA();
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
        var_25 _meth_808B( var_4 );
        var_25._ID55 = 1;
    }

    _unknown_23FA( 0, level._ID53290 );
    var_26 = 0;

    for ( var_27 = 0; var_2 >= 60; var_2 -= 60 )
        var_26++;

    var_27 = var_2;
    var_28 = _unknown_250C( "center", var_4, 0, var_12 );
    var_28._ID44 = "right";
    var_28._ID499 = "fullscreen";
    var_28._ID393 = 1.7;
    var_28._ID196 = ( 1, 1, 1 );
    var_28 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_28 _meth_80D1( &"SCRIPT_TIME_REMAINING" );
    level._ID3271 = [];
    level._ID3271[0] = _unknown_2574( "center", var_4, 0, var_11 );
    level._ID3271[1] = _unknown_2584( "center", var_4, 0, var_11 );
    level._ID3271[2] = _unknown_2594( "center", var_4, 0, var_11 );
    level._ID3271[2] _meth_80D1( &"SCRIPT_COLON" );
    level._ID3271[3] = _unknown_25B0( "center", var_4, 0, var_11 );
    level._ID3271[4] = _unknown_25C0( "center", var_4, 0, var_11 );

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

    _unknown_2E20( var_26, var_27 );
    level._ID48436 = _func_041();
    level._ID48137 = _func_042();
    var_17 = 1920.0 / level._ID48436 * level._ID48137 / 1080.0;
    _unknown_2989( var_23, var_24, var_28, var_19, var_16, var_18 );
    thread _unknown_297A( var_23, var_24, var_28, var_19, var_16, var_18 );
    wait(var_4);
    wait 1;
    var_29 = _func_03A( "arcadeMode_score" );
    var_30 = 0;
    var_31 = var_22;
    var_32 = 0;

    for (;;)
    {
        var_33 = var_29 - var_30;
        var_34 = var_33 * 0.2 + 1;

        if ( var_33 <= 15 )
            var_34 = 1;

        var_34 = _func_0C1( var_34 );
        var_30 += var_34;

        if ( var_30 > var_29 )
            var_30 = var_29;

        _unknown_25D5( var_30, level._ID53290 );

        if ( var_30 == var_29 )
            break;

        var_32--;

        if ( var_32 <= 0 )
        {
            level._ID794 _meth_80A1( "h1_arcademode_ending_mission_pts" );
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
        var_39 = _func_0E8( var_38 / 15 );
        var_40 = _func_0E8( var_38 * var_37 );
        var_41 = _func_0E8( var_40 / level._ID44709 );
        var_42 = var_30;
        var_43 = var_30 + var_41;
        var_44 = var_22;
        var_45 = var_22 + var_41;

        for ( var_21 = 1; var_21 <= var_39; var_21++ )
        {
            var_46 = var_21 * 1.0 / var_39;

            if ( var_21 == var_39 )
                var_46 = 1;

            var_30 = _func_0C1( var_42 * 1 - var_46 + var_43 * var_46 );

            if ( _func_039( "arcademode_full" ) == "1" )
            {
                var_22 = _func_0C1( var_44 * 1 - var_46 + var_45 * var_46 );
                _unknown_2A5B( var_22 );
            }

            _unknown_2681( var_30, level._ID53290 );
            var_47 = _func_0C1( var_38 * 1 - var_46 );
            _unknown_2F4F( _func_0E7( var_47 / 60 ), var_47 % 60 );
            var_32--;

            if ( var_32 <= 0 )
            {
                level._ID794 _meth_80A1( "h1_arcademode_ending_time_pts" );
                var_32 = 3;
            }

            wait 0.05;
        }

        _unknown_2F73( 0, 0 );
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
            var_34 = _func_0C1( var_50 );

            if ( _func_039( "arcademode_full" ) == "1" )
            {
                var_22 += var_34;
                _unknown_2AFA( var_22 );
            }

            var_30 += var_34;
            level._ID794 _meth_80A1( "h1_arcademode_ending_lives_pts" );
            _unknown_2730( _func_0C1( var_30 ), level._ID53290 );
            _unknown_24AA( var_19 );
            wait 0.6;
        }

        wait 1;

        if ( _func_03A( "arcademode_died" ) != 1 && level._ID15361 >= 2 )
        {
            var_34 = _func_0C1( var_30 );
            _unknown_2F83( var_30, var_22, var_34, &"SCRIPT_ZERO_DEATHS", "arcademode_zerodeaths", var_13, var_4, var_17 );
            var_30 += var_34;
            var_22 += var_34;
        }
    }
    else
    {
        for ( var_21 = 0; var_21 < 5; var_21++ )
            level._ID3271[var_21] _meth_8090( 0, 0, 1000 );

        var_28 _meth_8090( 0, 0, 1000 );
        _unknown_2516( 0 );
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

        var_34 = _func_0C1( _func_0E8( var_30 * var_51 ) - var_30 );
        _unknown_3008( var_30, var_22, var_34, var_52, "h1_arcademode_ending_diff_pts", var_13, var_4, var_17 );
        var_30 += var_34;
        var_22 += var_34;
    }

    var_53 = 0;

    if ( _func_039( "arcademode_full" ) == "1" )
    {
        var_54 = "s18";
        var_55 = _func_03A( var_54 );

        if ( var_22 > var_55 )
        {
            var_56 = _unknown_27DE( var_22 );
            var_57 = _unknown_33C6( var_56 );
            _func_034( var_54, var_57 );
            var_58 = 0;

            if ( !level._ID44161 )
                var_58 = 1;

            if ( level._ID912 == "airplane" )
                var_58 = 1;

            if ( var_58 )
                var_53 = 1;
        }

        var_59 = level._ID794 _meth_8233( _ID42237::_ID44046(), "fullChallengeScore" );

        if ( var_22 > var_59 )
            level._ID794 _meth_8251( _ID42237::_ID44046(), "fullChallengeScore", var_22 );

        level._ID794 _meth_80FD( "LB_AM_FULLCHALLENGE", _func_03A( var_54 ) );
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

        if ( _func_02F( var_61 ) )
        {
            var_59 = level._ID794 _meth_8233( _ID42237::_ID44046(), "arcadeScore", level._ID912 );

            if ( var_30 > var_59 )
            {
                var_53 = 1;
                level._ID794 _meth_8251( _ID42237::_ID44046(), "arcadeScore", level._ID912, var_30 );
            }

            level._ID794 _meth_80FD( "LB_AM_" + level._ID912, var_30 );
        }
    }

    if ( var_53 )
    {
        if ( !level._ID44161 )
            _func_02C();

        wait 1;
        var_62 = _unknown_2A34( "center", var_4, 0, var_13 );
        var_62._ID393 = 2.25;
        var_62 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.5, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
        var_62 _meth_80D1( &"SCRIPT_NEW_HIGH_SCORE" );
        var_62 _meth_808B( 0.05 );
        var_62._ID55 = 1;
        var_62 _meth_8090( 30, 3000, 1000 );
        var_63 = _unknown_2A96( "center", var_4, 0, var_13 + 0.5 );
        var_63 _meth_80D3( "h1_arcademode_livesmessage_border", _func_0C1( 313 * var_17 ), 135 );
        var_63._ID983 = var_62._ID983 - 1;
        var_63 _meth_808B( 0.05 );
        var_63._ID55 = 1;
        wait 3.0;
        var_63 _meth_808B( 1.0 );
        var_63._ID55 = 0;
        wait 0.5;
    }

    wait 2;
    var_15 _meth_8090( 0, 0, 1000 );
    wait 0.5;
    var_24 _meth_8090( 0, 0, 1000 );

    for ( var_21 = 0; var_21 < level._ID47847; var_21++ )
    {
        var_25 = level._ID53290[var_21];
        var_25 _meth_8090( 0, 0, 1000 );
    }

    if ( _func_039( "arcademode_full" ) == "1" )
    {
        var_23 _meth_8090( 0, 0, 1000 );

        for ( var_21 = 0; var_21 < level._ID47847; var_21++ )
        {
            var_25 = level._ID46189[var_21];
            var_25 _meth_8090( 0, 0, 1000 );
        }
    }

    if ( level._ID44161 )
    {
        wait 0.5;

        for ( var_21 = 0; var_21 < 5; var_21++ )
            level._ID3271[var_21] _meth_8090( 0, 0, 1000 );

        var_28 _meth_8090( 0, 0, 1000 );
    }

    wait 1;

    if ( _func_039( "arcademode_full" ) == "1" )
        _func_1A0( "ArcadeMode Score: " + var_30 + ", mission: " + level._ID912 + ", gameskill: " + level._ID15361 + ", total: " + var_22 );
    else
        _func_1A0( "ArcadeMode Score: " + var_30 + ", mission: " + level._ID912 + ", gameskill: " + level._ID15361 );

    _func_034( "arcademode_combined_score", var_22 );

    if ( var_22 >= 400000 )
        _ID42407::_ID16864( "ARCADE_ADDICT" );

    if ( !level._ID44161 )
    {
        _func_034( "ui_arcade_lost", 1 );
        _unknown_2E93();
    }
    else
        _func_034( "ui_arcade_lost", 0 );

    for ( var_21 = 0; var_21 < level._ID50071.size; var_21++ )
    {
        if ( _func_02F( level._ID50071[var_21] ) )
            level._ID50071[var_21]._ID55 = 0;
    }

    _ID42237::_ID14402( "arcademode_ending_complete" );
}

_ID43411( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = _unknown_2C24( "center", var_6, 0, var_5 );
    var_8._ID393 = 2.25;
    var_8 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.5, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_8 _meth_80D1( var_3 );
    var_8 _meth_808B( 0.05 );
    var_8._ID55 = 1;
    var_8 _meth_8090( 30, 10000, 1000 );
    var_9 = _unknown_2C86( "center", 0.15, 320, var_5 + 0.5 );
    var_9 _meth_80D3( "h1_arcademode_livesmessage_border", _func_0C1( 330 * var_7 ), 135 );
    var_9._ID499 = "fullscreen";
    var_9._ID983 = var_8._ID983 - 1;
    var_9 _meth_808B( 0.05 );
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

        var_2 = _func_0C1( var_2 );
        var_0 += var_2;

        if ( var_0 > var_11 )
            var_0 = var_11;

        _unknown_2C0F( var_0, level._ID53290 );

        if ( _func_039( "arcademode_full" ) == "1" )
        {
            var_1 += var_2;

            if ( var_1 > var_12 )
                var_1 = var_12;

            _unknown_3010( var_1 );
        }

        if ( var_0 == var_11 )
            break;

        var_10--;

        if ( var_10 <= 0 )
        {
            level._ID794 _meth_80A1( var_4 );
            var_10 = 3;
        }

        wait 0.05;
    }

    wait 0.5;
    var_8 _meth_8090( 0, 10, 1000 );
    var_9 _meth_808B( 1.0 );
    var_9._ID55 = 0;
    wait 1.0;
}

_ID49376( var_0 )
{
    var_1 = _func_1AF();
    var_1._ID408 = 1;
    var_1._ID1331 = 0;
    var_1._ID1339 = 0;
    var_1 _meth_80D3( "black", 640, 480 );
    var_1._ID44 = "left";
    var_1._ID45 = "top";
    var_1._ID499 = "fullscreen";
    var_1._ID1284 = "fullscreen";
    var_1._ID983 = level._ID47890 + 5;
    var_1._ID55 = 0;

    if ( var_0 > 0 )
        var_1 _meth_808B( var_0 );

    var_1._ID55 = 1;
}

_ID49647()
{
    for (;;)
    {
        level._ID794 _meth_80F6();
        level._ID794._ID266 = 70000;
        level._ID794._ID511 = 1;
        var_0 = _func_0DF( "all", "all" );
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

    level._ID3271[4] _meth_80DE( var_1 );
    level._ID3271[3] _meth_80DE( var_3 );
    level._ID3271[1] _meth_80DE( var_0 );
    level._ID3271[0] _meth_80DE( var_2 );
}

_ID43626( var_0, var_1, var_2 )
{
    var_0 *= var_2;
    var_3 = _unknown_2E52( "center", 0.001, var_0, 73.3333 );
    var_3._ID1284 = "top_adjustable";
    var_3._ID393 = 2.5;
    var_3._ID196 = ( 1, 1, 1 );
    var_3._ID392 = "objective";
    var_3 _meth_8355( -0.1, 0, 0, -0.001, ( 0, 0, 0 ), 0.2, -0.1, 0, ( 0, 0, 0 ), 0.5 );
    var_3 _meth_80D1( &"SCRIPT_CHECKPOINT" );
    var_3._ID55 = 0;
    wait 0.15;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3._ID393 = 3.5;
    wait 0.05;
    var_3._ID393 = 2.5;
    wait 0.05;
    wait 1.0;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808F();
}

_ID43099( var_0, var_1, var_2 )
{
    var_0 *= var_2;
    var_3 = _unknown_2FA4( "center", 0.1, var_0, 73.3333 );
    var_3._ID1284 = "top_adjustable";
    var_3 _meth_80D3( "h1_arcademode_scanelines_border", 384, 48 );
    var_3._ID983 = var_3._ID983 - 2;
    var_3._ID55 = 0.25;
    var_3._ID55 = 0;
    wait 0.15;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    wait 0.05;
    wait 0.05;
    wait 1.0;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 1;
    wait 0.05;
    var_3 _meth_808B( 0.05 );
    var_3._ID55 = 0;
    wait 0.05;
    var_3 _meth_808F();
}

_ID48053()
{
    var_0 = _unknown_30A9( "center", 0.001, 0, 73.3333 );
    var_0._ID1284 = "top_adjustable";
    var_0 _meth_80D3( "h1_arcademode_checkpoint_flare", 326, 23 );
    var_0._ID983 = level._ID47890 + 10 - 1;
    var_0._ID55 = 0;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 1;
    wait 0.05;
    var_0 _meth_808B( 0.05 );
    var_0._ID55 = 0;
    wait 0.05;
    var_0 _meth_808F();
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

    var_0 = _unknown_3239( "right", 0.2, -21.6667, 80.0 );
    var_0._ID45 = "top";
    var_0._ID1284 = "top";
    var_0._ID444 = 0;
    var_0 _meth_8090( 5, 3000, 1000 );
    var_0._ID393 = 0.75;
    var_1 = level._ID49229 - 1;
    var_1 = _func_0C1( _func_0EE( var_1, 1, 7 ) );
    var_0._ID196 = level._ID47185[var_1];

    if ( level._ID49229 >= 8 )
    {
        level._ID794 thread _ID42237::_ID27077( "arcademode_kill_streak_won", level._ID794 _meth_80AF() );
        var_0 _meth_80D1( &"SCRIPT_STREAK_COMPLETE" );
    }
    else
    {
        level._ID794 thread _ID42237::_ID27077( "arcademode_kill_streak_lost", level._ID794 _meth_80AF() );
        var_0 _meth_80D1( &"SCRIPT_STREAK_BONUS_LOST" );
    }

    wait 5;
    var_0 _meth_808F();
}

_ID44319()
{
    if ( _func_02F( level._ID54114 ) )
    {
        level._ID54114 _meth_808F();
        level._ID54114 = undefined;
        level._ID53285 _meth_808F();
    }

    level notify( "arcademode_stop_kill_streak_art" );

    for ( var_0 = 0; var_0 < level._ID47071.size; var_0++ )
        level._ID47071[var_0] _meth_808F();

    level._ID47071 = [];
}

_ID47378()
{
    level._ID48228 = 1;
    thread _unknown_3C1E();
    level notify( "arcademode_stop_kill_streak" );
    _unknown_3C5F();
    _ID42237::_ID14388( "arcadeMode_multiplier_maxed" );
    level._ID48446 = level._ID49626;
    level._ID49229 = 1;
}

_ID52516()
{
    var_0 = 0.1;
    var_1 = _func_1AF();
    var_1._ID44 = "right";
    var_1._ID45 = "top";
    var_1._ID499 = "right";
    var_1._ID1284 = "top";
    var_1 thread _unknown_3DEB();
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
    var_1 _meth_80DE( level._ID49229 );
    var_1 _meth_808D( var_0 );
    var_1._ID1331 = -21.6667;
    var_1._ID55 = 0.25;
    var_1 _meth_808B( var_0 );
    var_1._ID55 = 1.0;
    return var_1;
}

_ID48576()
{
    var_0 = _func_1AF();
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
    var_0 _meth_80DE( level._ID49229 );
    var_0._ID55 = 0.0;
    var_1 = 2;
    var_2 = _func_1AF();
    var_2._ID44 = "right";
    var_2._ID45 = "top";
    var_2._ID499 = "right";
    var_2._ID1284 = "top";
    var_2 thread _unknown_3F5E();
    var_2 _meth_80D3( "h1_arcademode_numberstreak_circles", 22 * var_1, 27 * var_1 );
    var_2._ID1331 = 38;
    var_2._ID1339 = 72.3333;
    var_2._ID72 = 0;
    var_2._ID408 = 1;
    var_2._ID493 = 1;
    var_2._ID196 = level._ID47185[level._ID49229 - 1];
    var_2._ID983 = level._ID47890 - 1;
    var_3 = _func_1AF();
    var_3._ID44 = "right";
    var_3._ID45 = "top";
    var_3._ID499 = "right";
    var_3._ID1284 = "top";
    var_3 thread _unknown_3FCA();
    var_3 _meth_80D3( "h1_arcademode_numberstreak_glow", 64, 64 );
    var_3._ID1331 = 0.833332;
    var_3._ID1339 = 60.3333;
    var_3._ID72 = 0;
    var_3._ID408 = 1;
    var_3._ID493 = 1;
    var_3._ID196 = level._ID47185[level._ID49229 - 1];
    var_3._ID983 = level._ID47890 - 1;
    var_4 = 0.2;
    var_2._ID55 = 1;
    var_2 _meth_808C( 0.4, 27 * var_1, 27 * var_1 );
    var_3._ID55 = 0;
    var_3 _meth_808B( 0.4 );
    var_5 = 0.1;
    var_2 _meth_808D( var_5 );
    var_2._ID1331 = -20.6667;
    wait(var_5);

    if ( _func_02F( var_0 ) )
    {
        var_6 = 0.4;
        var_7 = 10.0;
        var_0 _meth_8092( var_6 );
        var_0._ID393 = var_7;
        wait 0.05;
        var_8 = 0.35;
        var_0._ID55 = var_8;
        wait 0.05;
        var_0 _meth_808B( var_6 );
        var_0._ID55 = 0;
    }

    if ( _func_02F( var_2 ) )
    {
        var_2 _meth_808B( 0.2 );
        var_2._ID55 = 0;
        var_9 = 0.15;
        wait(var_9);
        var_2 _meth_808C( 0.2, 32 * var_1, 27 * var_1 );
        wait(0.35 - var_9);
    }

    if ( _func_02F( var_3 ) )
    {
        var_3 _meth_808B( 0.2 );
        var_3._ID55 = 0;
    }

    wait 0.4;

    if ( _func_02F( var_0 ) )
        var_0 _meth_808F();

    if ( _func_02F( var_2 ) )
        var_2 _meth_808F();

    if ( _func_02F( var_3 ) )
        var_3 _meth_808F();
}

_ID45701()
{
    level endon( "arcademode_new_kill_streak" );
    var_0 = _unknown_3FBB();
    thread _unknown_4006();
    level._ID51959 = var_0;
    level waittill( "arcademode_stop_kill_streak" );
    var_0 _meth_8090( 0, 0, 1000 );
    wait 1;
    var_0 _meth_808F();
    level._ID51959 = undefined;
}

_ID47062()
{
    level endon( "arcademode_new_kill_streak" );
    wait 0.05;
    var_0 = 500;
    self _meth_808D( 2 );
    self._ID1331 = self._ID1331 + _func_0B9( var_0 * -1, var_0 );
    self._ID1339 = self._ID1339 + _func_0B9( var_0 * -1, var_0 );
    wait 0.5;
    self _meth_808B( 1 );
    self._ID55 = 0;
    wait 1;
    self _meth_808F();
}

_ID47972()
{
    self endon( "death" );
    level waittill( "arcademode_new_kill_streak" );
    self _meth_808F();
}

_ID54572( var_0 )
{
    var_1 = "";

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_1 = var_0[var_2] + var_1;

    return var_1;
}
