// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _func_14D( "slowview" );
    _func_14D( "aftermath" );
    _func_14F( "overlay_hunted_black" );
    _func_14F( "overlay_hunted_white" );
    _ID42237::_ID14400( "force_limp" );
    _ID42237::_ID14400( "fall" );
    _ID42237::_ID14400( "collapse" );
    _ID42237::_ID14400( "collapse_done" );
    _ID42237::_ID14400( "aftermath_dont_do_wakeup" );
    _ID42237::_ID14400( "start_doing_aftermath_walk" );
    _ID42237::_ID14400( "player_heartbeat_sound" );
    _ID42237::_ID14400( "player_limping" );
    _ID42237::_ID14400( "stop_being_stunned" );
    _ID42237::_ID14400( "player_is_in_dizzy_stumble" );
    waitframe;
    level._ID47469 = 0.8;
    level._ID794._ID24445 = 1;
}

_ID48476()
{
    waitframe;
    waitframe;

    if ( _ID42237::_ID14385( "stop_aftermath_player" ) )
        return;

    level endon( "stop_aftermath_player" );
    level._ID17430 = _func_06A( "script_model", ( 0, 0, 0 ) );
    level._ID794 _meth_8098( level._ID17430 );
    level._ID53970 = _func_06A( "script_model", ( 0, 0, 0 ) );
    level._ID794 _meth_85B5( level._ID53970 );

    if ( _ID42237::_ID14385( "aftermath_dont_do_wakeup" ) )
        return;

    _unknown_0143();
}

_ID52801()
{
    for (;;)
    {
        level waittill( "slowview",  var_0  );

        if ( _func_02F( var_0 ) )
            wait(var_0);

        childthread _unknown_0131();
    }
}

_ID44407()
{
    level endon( "slowview" );
    wait 10;
    level notify( "slowview" );
}

_ID27474()
{
    level notify( "stop_heart" );
    level endon( "stop_heart" );

    for (;;)
    {
        if ( !_ID42237::_ID14385( "fall" ) )
        {
            if ( _func_02F( level._ID51073 ) )
                [[ level._ID51073 ]]();

            if ( _ID42237::_ID14385( "player_heartbeat_sound" ) )
            {
                level._ID794 thread _ID42407::_ID27079( "breathing_heartbeat" );
                wait 0.05;
                level._ID794 _meth_80B4( "damage_light" );
            }

            wait(level._ID47469);
        }

        wait(0 + _func_0B8( 0.1 ));

        if ( _func_0B7( 50 ) > level._ID794._ID24445 * 190 )
            wait(_func_0B8( 1 ));
    }
}

_ID15917()
{

}

_ID46025()
{
    level._ID794 _ID42407::_ID27079( "sprint_gasp" );
    _ID42237::_ID14413( "start_doing_aftermath_walk" );
    thread _unknown_0264();

    if ( _func_039( "enable_heartbeat_overlay" ) == "0" )
        level._ID794 _ID42407::_ID27079( "breathing_hurt_start" );

    level._ID794 thread _ID42407::_ID27079( "breathing_better" );
    level._ID794 childthread _unknown_04CE();
}

_ID2141( var_0 )
{
    var_1 = var_0[0];
    var_2 = var_0[2];
    var_3 = _func_11E( level._ID794._ID65 );
    var_4 = _func_11F( level._ID794._ID65 );
    var_5 = ( var_3[0], 0, var_3[1] * -1 );
    var_6 = ( var_4[0], 0, var_4[1] * -1 );
    var_7 = _ID42407::_ID49965( var_5, var_1 );
    var_7 += _ID42407::_ID49965( var_6, var_2 );
    return var_7 + ( 0, var_0[1], 0 );
}

_ID53254()
{
    thread _unknown_0484();
}

_ID48312( var_0 )
{
    level endon( "stop_drunk_walk" );
    var_1 = 1;
    var_2 = 7;
    var_3 = undefined;

    for (;;)
    {
        if ( !_func_02F( var_3 ) )
            var_3 = 0;
        else
        {
            var_4 = var_2 * level._ID52313;
            var_3 = _func_0BA( var_4 * 0.5, var_4 );
        }

        var_1--;

        if ( var_1 <= 0 )
        {
            var_1 = _func_0B7( 3 );
            var_3 *= -1;
        }

        var_5 = var_3 - var_0._ID740[0];
        var_5 = _func_0C3( var_5 );
        var_6 = var_5 * 0.05;

        if ( var_6 < 0.05 )
            var_6 = 0.05;

        var_7 = _func_03D();
        var_0 _meth_82B8( ( var_3, 0, 0 ), var_6, var_6 * 0.5, var_6 * 0.5 );
        wait(var_6);
        _ID42407::_ID40847( var_7, 0.6 );

        for (;;)
        {
            var_8 = _func_0F3( ( 0, 0, 0 ), level._ID794 _meth_8344() );

            if ( var_8 >= 80 )
                break;

            wait 0.05;
        }
    }
}

_ID47237()
{
    level waittill( "stop_drunk_walk" );
    var_0 = 0.8;
    level._ID17430 _meth_82BF( ( 0, 0, 0 ), var_0, var_0 * 0.5, var_0 * 0.5 );
    wait(var_0);
    level._ID17430 _meth_80B7();
    level._ID794 _meth_8098( undefined );
    _func_0B6( 0.95, 1, 0.5 );
}

_ID48829()
{
    thread _unknown_03B4();
    level endon( "stop_drunk_walk" );
    level._ID52313 = 4.1;
    level._ID44483 = 0;
    thread _unknown_050E();
    var_0 = _ID42237::_ID35164();
    var_1 = _ID42237::_ID35164();
    thread _unknown_039D( var_0 );
    thread _unknown_0532( var_1 );
    var_2 = 0;
    var_3 = _func_03D();
    var_4 = 3;
    var_5 = 3500;
    var_6 = 0.1;
    var_7 = level._ID794 _meth_8346()[1];

    for (;;)
    {
        var_8 = level._ID794 _meth_8346();
        var_9 = var_8 - var_7;
        var_10 = var_9[1];

        if ( _func_02F( level._ID794._ID46030 ) && level._ID794._ID46030 )
        {
            var_10 = 0;
            var_9 = ( 0, 0, 0 );
        }

        var_11 = var_0._ID740[0] + var_10;
        var_7 = var_8;
        var_12 = _func_0F3( ( 0, 0, 0 ), level._ID794 _meth_8344() );
        var_2 += var_12 * 0.06;

        if ( var_12 > 80 )
        {
            var_13 = _func_0BB( _func_03D() * -0.1 );
            var_2 += var_13 * 10;

            if ( _func_03D() > var_3 + var_5 && !_ID42237::_ID14385( "stop_being_stunned" ) && var_4 )
            {
                var_4--;
                var_3 = _func_03D();
                var_14 = "dizzy_stumble_" + level._ID44483 % 3 + 1;
                level._ID44483++;
                var_15 = _func_067( level._ID30895["dizzy_stumble"][var_14] );
                var_16 = _func_0DE( "axis" );
                var_17 = _ID42237::_ID16182( level._ID794._ID740, var_16 );
                var_18 = _func_1A7( var_17 ) && _func_0F3( level._ID794._ID740, var_17._ID740 ) < 400;

                if ( !var_18 )
                {
                    childthread _unknown_05B9( var_15 );
                    thread maps\af_chase_knife_fight::_ID48057( 0.75 );
                    _ID42237::_ID14402( "player_is_in_dizzy_stumble" );
                    _ID42407::_ID10226( 5, _ID42237::_ID14388, "player_is_in_dizzy_stumble" );
                    thread _unknown_05AC();
                    level._ID794 _meth_84C4( level._ID30912[var_14] );
                    level._ID794 thread _ID42407::_ID27079( "scn_" + var_14 );
                    level._ID794 thread _unknown_0812( var_15 );
                    var_5 = _func_0B9( 5000, 7500 );
                }
            }
        }

        var_19 = _func_0BB( var_2 ) * 4 * level._ID52313;

        if ( !_ID42237::_ID14385( "player_limping" ) && level._ID794 _ID42237::_ID20583() )
        {
            level._ID17430 _meth_82BF( ( var_19 * 0.15, var_11 * -1, var_19 * 0.85 ), var_6, var_6 * 0.5, var_6 * 0.5 );
            level._ID53970 _meth_82BF( ( _func_0EE( var_9[0] * 3, -15, 15 ), _func_0EE( var_9[1] * 3, -15, 15 ), 0 ), var_6 * 3, var_6 * 1.5, var_6 * 1.5 );
        }

        wait 0.05;
    }
}

_ID47827()
{
    var_0 = _ID54167::_ID43386( "stumble" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 16, 500, 16, 16 ) _ID54167::_ID44191( 50, 0.55, 0 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::_meth_818E, level._ID794, "af_chase_ending_wakeup", 5 );
    var_0 _ID54167::_ID48800( 0.05 ) _ID54167::_ID50321( 0.6, 100, 6, 6 );
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID43500( 1.0, 0 );
    var_0 _ID54167::_ID48800( 0.65 ) _ID54167::_ID50321( 10, 500, 2, 4 );
    var_0 _ID54167::_ID48800( 2.3 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48166();
}

_ID47932( var_0 )
{
    level notify( "swivel_stunplayer" );
    level endon( "swivel_stunplayer" );
    level._ID794._ID52561 = 0;
    level._ID794 _meth_8139( 0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    wait(var_0);
    level._ID794._ID52561 = 1;
    waittillframeend;
    var_1 = 1;
    var_2 = level._ID794._ID47654;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !var_3 )
        {
            var_1 = 0;
            break;
        }
    }

    var_clear_2
    var_clear_0

    if ( !_func_02F( level._ID50570 ) || !level._ID50570 )
        level._ID794 _meth_8139( var_1 );

    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
}

_ID53509()
{
    var_0 = 1;
    var_1 = 5;
    var_2 = 5;
    var_3 = 30;
    var_4 = 50;
    var_5 = var_3 - var_1 / var_0 * 20;
    var_6 = var_4 - var_2 / var_0 * 20;
    var_7 = var_1;
    var_8 = var_2;
    var_9 = 0;

    for (;;)
    {
        var_10 = level._ID794 _meth_8318();
        var_11 = var_10[0];
        var_12 = var_10[1];
        var_13 = _ID42237::_ID37527( _func_0C3( var_11 ) > 0.001, 1, -3 );
        var_14 = _ID42237::_ID37527( _func_0C3( var_12 ) > 0.001, 1, -3 );
        var_7 = _func_0EE( var_7 + var_5 * var_13, var_1, var_3 );
        var_8 = _func_0EE( var_8 + var_6 * var_14, var_2, var_4 );

        if ( level._ID794 _ID42237::_ID20583() )
        {
            _func_0DB( "aim_turnrate_yaw", var_8 );
            _func_0DB( "aim_turnrate_pitch", var_7 );
            level._ID794 _meth_8106();
            var_9 = 0;
        }
        else
        {
            if ( !var_9 )
                level._ID794 _meth_8105();

            var_9 = 1;
        }

        var_15 = var_11;
        var_16 = var_12;
        waittillframeend;
    }
}

_ID44998()
{
    level endon( "stop_drunk_walk" );
    childthread _unknown_085D();
    var_0 = 1;
    var_1 = 0.15;
    var_2 = 4;
    wait 3;
    thread maps\ending_aud::_ID53358();

    for (;;)
    {
        _func_0B6( var_0, 0.89, var_2 );
        wait(var_2);
        _func_0B6( var_0, 1.06, var_2 );
        wait(var_2);
    }
}

_ID46325( var_0 )
{
    level endon( "stop_drunk_walk" );
    var_1 = 0;
    var_2 = 140;
    var_3 = _ID42237::_ID16638( "limp_yaw_ent", "targetname" );
    var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
    var_5 = _func_11A( var_4._ID740 - var_3._ID740 );
    var_6 = _func_11F( var_5 );
    var_7 = 0;

    for (;;)
    {
        var_8 = _func_0F3( ( 0, 0, 0 ), level._ID794 _meth_8344() );
        var_9 = var_8 > 80;
        var_10 = level._ID794 _meth_8346();
        var_11 = _func_11F( var_10 );
        var_12 = _func_0FB( var_11, var_6 ) >= 0.8;

        if ( var_9 && var_12 )
            var_1 += 2;
        else
            var_1 -= 1;

        var_1 = _func_0EE( var_1, 0, var_2 );

        if ( var_1 < var_2 )
        {
            wait 0.05;
            continue;
        }

        var_1 = 0;

        if ( !var_7 )
        {
            var_7 = 1;
            _unknown_07E8();
            var_13 = 2;
            var_14 = _ID42237::_ID35164();
            var_14._ID740 = ( level._ID52313, 0, 0 );
            var_14 _meth_82B8( ( 1, 0, 0 ), var_13, var_13 * 0.5, var_13 * 0.5 );

            for (;;)
            {
                level._ID52313 = var_14._ID740[0];

                if ( level._ID52313 == 1 )
                    break;

                wait 0.05;
            }

            var_14 _meth_80B7();
            return;
        }

        var_2 = _func_0B9( 70, 125 );
        var_13 = 0.45;
        var_15 = _func_0BA( -16, -11 );
        var_0 _meth_82B8( ( var_15, 0, 0 ), var_13, 0, var_13 );
        wait(var_13);
        var_13 *= 0.8;
        var_16 = _func_0BA( -2, 2 );
        var_0 _meth_82B8( ( var_16, 0, 0 ), var_13, var_13 * 0.5, var_13 * 0.5 );
        wait(var_13);
    }
}

_ID51027()
{
    level notify( "kill_limp" );
    level endon( "kill_limp" );

    for (;;)
    {
        var_0 = _func_0F3( ( 0, 0, 0 ), level._ID794 _meth_8344() );

        if ( var_0 < 80 )
        {
            wait 0.05;
            continue;
        }

        var_1 = 2.3;
        level._ID794 thread _unknown_09C9( var_1 );
        level._ID794 thread _ID42407::_ID27079( "breathing_hurt" );
        thread maps\af_chase_knife_fight::_ID48057( 0.5 );
        level notify( "not_random_blur" );
        _ID42237::_ID24938( 0.5, ::_func_076, 4, 0.25 );
        _ID42237::_ID24938( 1.2, ::_func_076, 0, 1 );
        _ID42407::_ID10226( var_1, ::_unknown_0B75 );
        _ID42407::_ID10226( 1, maps\af_chase_knife_fight_code::_ID43249, var_1 * 4 );
        _ID42407::_ID10226( var_1, maps\af_chase_knife_fight_code::_ID46058, var_1 );
        level._ID794 _meth_80B4( "damage_light" );
        level._ID794 _ID42407::_ID5278( 0.25, 0.3 );
        level._ID794 _ID42407::_ID10226( var_1 * 0.5, _ID42407::_ID5278, 0.45, var_1 );
        _ID42237::_ID14388( "force_limp" );
        wait(var_1);
        break;
    }
}

_ID51287()
{
    var_0 = 0;
    var_1 = 0;

    for (;;)
    {
        var_2 = _func_0BA( 2, 4 );
        wait(var_2);
        var_3 = level._ID794 _meth_8344();
        var_4 = _func_0C3( var_3[0] ) + _func_0C3( var_3[1] );

        if ( var_4 < 10 && !_ID42237::_ID14385( "force_limp" ) )
        {
            wait 0.05;
            continue;
        }

        var_5 = var_4 / level._ID794._ID24445 * 190;
        var_6 = _func_0BA( 3, 5 );

        if ( _func_0B7( 100 ) < 20 )
            var_6 *= 1.5;

        var_7 = _func_0BA( 0.35, 0.45 );
        var_8 = _func_0BA( 0.65, 0.8 );

        if ( _ID42237::_ID14385( "force_limp" ) )
        {
            _ID42237::_ID14388( "force_limp" );
            var_5 = 0.35;
            var_6 *= 3;
            var_7 = _func_0BA( 0.7, 0.85 );
            var_8 = _func_0BA( 1.65, 1.8 );
        }

        var_9 = _func_0BA( 3, 7 );
        var_10 = _func_0BA( -8, -2 );
        var_11 = ( var_6, var_10, var_9 );
        var_11 = _ID42407::_ID49965( var_11, var_5 );
        var_0++;

        if ( var_5 > 1.3 )
            var_0++;

        _ID42237::_ID14402( "player_limping" );
        childthread _unknown_0CE6( var_11, var_7, var_8 );
        level _ID42237::_ID41098( "recovered", "force_limp" );
        _ID42237::_ID14388( "player_limping" );
    }
}

_ID47031()
{
    level endon( "dying" );
    level endon( "not_random_blur" );

    for (;;)
    {
        wait 0.05;

        if ( _func_0B7( 100 ) > 10 || _func_02F( level._ID794._ID46030 ) && level._ID794._ID46030 )
            continue;

        var_0 = _func_0B7( 3 ) + 2;
        var_1 = _func_0BA( 0.3, 0.7 );
        var_2 = _func_0BA( 0.3, 1 );
        _func_076( var_0 * 1.2, var_1 );
        wait(var_1);
        _func_076( 0, var_2 );
        wait 5;
    }
}

_ID52957()
{
    wait 2;

    for (;;)
    {
        if ( level._ID794 _meth_834C() )
            break;

        wait 0.05;
    }

    for (;;)
    {
        wait 0.05;

        if ( level._ID794 _meth_834C() )
            continue;

        wait 0.2;

        if ( level._ID794 _meth_834C() )
            continue;

        level notify( "stop_stumble" );
        wait 0.2;
    }
}

_ID49590( var_0, var_1, var_2, var_3 )
{
    level endon( "stop_stumble" );

    if ( _ID42237::_ID14385( "collapse" ) )
        return;

    var_0 = _unknown_0ADE( var_0 );
    level._ID17430 _meth_82BF( var_0, var_1, var_1 / 4 * 3, var_1 / 4 );
    level._ID17430 waittill( "rotatedone" );
    var_4 = ( _func_0B8( 4 ) - 4, _func_0B8( 5 ), 0 );
    var_4 = _unknown_0B07( var_4 );
    level._ID17430 _meth_82BF( var_4, var_2, 0, var_2 / 2 );
    level._ID17430 waittill( "rotatedone" );

    if ( !_func_02F( var_3 ) )
        level notify( "recovered" );
}

_ID29328()
{
    var_0 = _unknown_0B35( ( -5, -5, 0 ) );
    level._ID17430 _meth_82BF( var_0, 0.6, 0.6, 0 );
    level._ID17430 waittill( "rotatedone" );
    var_0 = _unknown_0B5A( ( -15, -20, 0 ) );
    level._ID17430 _meth_82BF( var_0, 2.5, 0, 2.5 );
    level._ID17430 waittill( "rotatedone" );
    var_0 = _unknown_0B7E( ( 5, 5, 0 ) );
    level._ID17430 _meth_82BF( var_0, 2.5, 2, 0.5 );
    level._ID17430 waittill( "rotatedone" );
    level._ID17430 _meth_82BF( ( 0, 0, 0 ), 1, 0.2, 0.8 );
}

_ID9171( var_0, var_1 )
{
    var_2 = _func_1AF();
    var_2._ID1331 = 0;
    var_2._ID1339 = 0;
    var_2 _meth_80D3( var_0, 640, 480 );
    var_2._ID44 = "left";
    var_2._ID45 = "top";
    var_2._ID499 = "fullscreen";
    var_2._ID1284 = "fullscreen";
    var_2._ID55 = var_1;
    var_2._ID408 = 1;
    return var_2;
}

_ID43651( var_0 )
{
    wait 0.1;
    _func_0DB( "hud_showStance", 0 );
    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", "1" );
}

_ID53201( var_0 )
{
    self _meth_84C7( "h2_gulag_escapesequence_player_additive" );
    wait(var_0);
    self _meth_84C7( 0 );
}
