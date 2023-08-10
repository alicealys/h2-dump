// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    precacheshellshock( "slowview" );
    precacheshellshock( "aftermath" );
    precacheshader( "overlay_hunted_black" );
    precacheshader( "overlay_hunted_white" );
    common_scripts\utility::flag_init( "force_limp" );
    common_scripts\utility::flag_init( "fall" );
    common_scripts\utility::flag_init( "collapse" );
    common_scripts\utility::flag_init( "collapse_done" );
    common_scripts\utility::flag_init( "aftermath_dont_do_wakeup" );
    common_scripts\utility::flag_init( "start_doing_aftermath_walk" );
    common_scripts\utility::flag_init( "player_heartbeat_sound" );
    common_scripts\utility::flag_init( "player_limping" );
    common_scripts\utility::flag_init( "stop_being_stunned" );
    common_scripts\utility::flag_init( "player_is_in_dizzy_stumble" );
    waittillframeend;
    level._id_B96D = 0.8;
    level.player.movespeedscale = 1;
}

_id_BD5C()
{
    waittillframeend;
    waittillframeend;

    if ( common_scripts\utility::flag( "stop_aftermath_player" ) )
        return;

    level endon( "stop_aftermath_player" );
    level.ground_ref_ent = spawn( "script_model", ( 0, 0, 0 ) );
    level.player playersetgroundreferenceent( level.ground_ref_ent );
    level._id_D2D2 = spawn( "script_model", ( 0, 0, 0 ) );
    level.player _meth_85B5( level._id_D2D2 );

    if ( common_scripts\utility::flag( "aftermath_dont_do_wakeup" ) )
        return;

    _id_B3C9();
}

_id_CE41()
{
    for (;;)
    {
        level waittill( "slowview", var_0 );

        if ( isdefined( var_0 ) )
            wait( var_0 );

        childthread _id_AD77();
    }
}

_id_AD77()
{
    level endon( "slowview" );
    wait 10;
    level notify( "slowview" );
}

player_heartbeat()
{
    level notify( "stop_heart" );
    level endon( "stop_heart" );

    for (;;)
    {
        if ( !common_scripts\utility::flag( "fall" ) )
        {
            if ( isdefined( level._id_C781 ) )
                [[ level._id_C781 ]]();

            if ( common_scripts\utility::flag( "player_heartbeat_sound" ) )
            {
                level.player thread maps\_utility::play_sound_on_entity( "breathing_heartbeat" );
                wait 0.05;
                level.player playrumblelooponentity( "damage_light" );
            }

            wait( level._id_B96D );
        }

        wait( 0 + randomfloat( 0.1 ) );

        if ( randomint( 50 ) > level.player.movespeedscale * 190 )
            wait( randomfloat( 1 ) );
    }
}

get_player_speed()
{

}

_id_B3C9()
{
    level.player maps\_utility::play_sound_on_entity( "sprint_gasp" );
    common_scripts\utility::flag_wait( "start_doing_aftermath_walk" );
    thread _id_BEBD();

    if ( getdvar( "enable_heartbeat_overlay" ) == "0" )
        level.player maps\_utility::play_sound_on_entity( "breathing_hurt_start" );

    level.player thread maps\_utility::play_sound_on_entity( "breathing_better" );
    level.player childthread _id_B7B7();
}

adjust_angles_to_player( var_0 )
{
    var_1 = var_0[0];
    var_2 = var_0[2];
    var_3 = anglestoright( level.player.angles );
    var_4 = anglestoforward( level.player.angles );
    var_5 = ( var_3[0], 0, var_3[1] * -1 );
    var_6 = ( var_4[0], 0, var_4[1] * -1 );
    var_7 = maps\_utility::_id_C32D( var_5, var_1 );
    var_7 += maps\_utility::_id_C32D( var_6, var_2 );
    return var_7 + ( 0, var_0[1], 0 );
}

_id_D006()
{
    thread _id_C753();
}

_id_BCB8( var_0 )
{
    level endon( "stop_drunk_walk" );
    var_1 = 1;
    var_2 = 7;
    var_3 = undefined;

    for (;;)
    {
        if ( !isdefined( var_3 ) )
            var_3 = 0;
        else
        {
            var_4 = var_2 * level._id_CC59;
            var_3 = randomfloatrange( var_4 * 0.5, var_4 );
        }

        var_1--;

        if ( var_1 <= 0 )
        {
            var_1 = randomint( 3 );
            var_3 *= -1;
        }

        var_5 = var_3 - var_0.origin[0];
        var_5 = abs( var_5 );
        var_6 = var_5 * 0.05;

        if ( var_6 < 0.05 )
            var_6 = 0.05;

        var_7 = gettime();
        var_0 moveto( ( var_3, 0, 0 ), var_6, var_6 * 0.5, var_6 * 0.5 );
        wait( var_6 );
        maps\_utility::wait_for_buffer_time_to_pass( var_7, 0.6 );

        for (;;)
        {
            var_8 = distance( ( 0, 0, 0 ), level.player getvelocity() );

            if ( var_8 >= 80 )
                break;

            wait 0.05;
        }
    }
}

_id_B885()
{
    level waittill( "stop_drunk_walk" );
    var_0 = 0.8;
    level.ground_ref_ent rotateto( ( 0, 0, 0 ), var_0, var_0 * 0.5, var_0 * 0.5 );
    wait( var_0 );
    level.ground_ref_ent delete();
    level.player playersetgroundreferenceent( undefined );
    setslowmotion( 0.95, 1, 0.5 );
}

_id_BEBD()
{
    thread _id_B885();
    level endon( "stop_drunk_walk" );
    level._id_CC59 = 4.1;
    level._id_ADC3 = 0;
    thread _id_AFC6();
    var_0 = common_scripts\utility::spawn_tag_origin();
    var_1 = common_scripts\utility::spawn_tag_origin();
    thread _id_BCB8( var_0 );
    thread _id_B4F5( var_1 );
    var_2 = 0;
    var_3 = gettime();
    var_4 = 3;
    var_5 = 3500;
    var_6 = 0.1;
    var_7 = level.player getplayerangles()[1];

    for (;;)
    {
        var_8 = level.player getplayerangles();
        var_9 = var_8 - var_7;
        var_10 = var_9[1];

        if ( isdefined( level.player._id_B3CE ) && level.player._id_B3CE )
        {
            var_10 = 0;
            var_9 = ( 0, 0, 0 );
        }

        var_11 = var_0.origin[0] + var_10;
        var_7 = var_8;
        var_12 = distance( ( 0, 0, 0 ), level.player getvelocity() );
        var_2 += var_12 * 0.06;

        if ( var_12 > 80 )
        {
            var_13 = sin( gettime() * -0.1 );
            var_2 += var_13 * 10;

            if ( gettime() > var_3 + var_5 && !common_scripts\utility::flag( "stop_being_stunned" ) && var_4 )
            {
                var_4--;
                var_3 = gettime();
                var_14 = "dizzy_stumble_" + ( level._id_ADC3 % 3 + 1 );
                level._id_ADC3++;
                var_15 = getanimlength( level.scr_anim["dizzy_stumble"][var_14] );
                var_16 = getaiarray( "axis" );
                var_17 = common_scripts\utility::getclosest( level.player.origin, var_16 );
                var_18 = isalive( var_17 ) && distance( level.player.origin, var_17.origin ) < 400;

                if ( !var_18 )
                {
                    childthread _id_BB3C( var_15 );
                    thread maps\af_chase_knife_fight::_id_BBB9( 0.75 );
                    common_scripts\utility::flag_set( "player_is_in_dizzy_stumble" );
                    maps\_utility::delaythread( 5, common_scripts\utility::flag_clear, "player_is_in_dizzy_stumble" );
                    thread _id_BAD3();
                    level.player _meth_84C4( level.scr_viewanim[var_14] );
                    level.player thread maps\_utility::play_sound_on_entity( "scn_" + var_14 );
                    level.player thread _id_CFD1( var_15 );
                    var_5 = randomintrange( 5000, 7500 );
                }
            }
        }

        var_19 = sin( var_2 ) * 4 * level._id_CC59;

        if ( !common_scripts\utility::flag( "player_limping" ) && level.player common_scripts\utility::is_player_gamepad_enabled() )
        {
            level.ground_ref_ent rotateto( ( var_19 * 0.15, var_11 * -1, var_19 * 0.85 ), var_6, var_6 * 0.5, var_6 * 0.5 );
            level._id_D2D2 rotateto( ( clamp( var_9[0] * 3, -15, 15 ), clamp( var_9[1] * 3, -15, 15 ), 0 ), var_6 * 3, var_6 * 1.5, var_6 * 1.5 );
        }

        wait 0.05;
    }
}

_id_BAD3()
{
    var_0 = _id_D397::_id_A97A( "stumble" );
    var_0 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 16, 500, 16, 16 ) _id_D397::_id_AC9F( 50, 0.55, 0 ) _id_D397::_id_AF9C();
    var_0 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_A970( ::shellshock, level.player, "af_chase_ending_wakeup", 5 );
    var_0 _id_D397::_id_BEA0( 0.05 ) _id_D397::_id_C491( 0.6, 100, 6, 6 );
    var_0 _id_D397::_id_BEA0( 0.5 ) _id_D397::_id_A9EC( 1.0, 0 );
    var_0 _id_D397::_id_BEA0( 0.65 ) _id_D397::_id_C491( 10, 500, 2, 4 );
    var_0 _id_D397::_id_BEA0( 2.3 ) _id_D397::_id_BF3F();
    var_0 _id_D397::_id_BC26();
}

_id_BB3C( var_0 )
{
    level notify( "swivel_stunplayer" );
    level endon( "swivel_stunplayer" );
    level.player._id_CD51 = 0;
    level.player allowmelee( 0 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    wait( var_0 );
    level.player._id_CD51 = 1;
    waitframe();
    var_1 = 1;

    foreach ( var_3 in level.player._id_BA26 )
    {
        if ( !var_3 )
        {
            var_1 = 0;
            break;
        }
    }

    if ( !isdefined( level._id_C58A ) || !level._id_C58A )
        level.player allowmelee( var_1 );

    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
}

_id_D105()
{
    var_0 = 1;
    var_1 = 5;
    var_2 = 5;
    var_3 = 30;
    var_4 = 50;
    var_5 = ( var_3 - var_1 ) / var_0 * 20;
    var_6 = ( var_4 - var_2 ) / var_0 * 20;
    var_7 = var_1;
    var_8 = var_2;
    var_9 = 0;

    for (;;)
    {
        var_10 = level.player getnormalizedcameramovement();
        var_11 = var_10[0];
        var_12 = var_10[1];
        var_13 = common_scripts\utility::ter_op( abs( var_11 ) > 0.001, 1, -3 );
        var_14 = common_scripts\utility::ter_op( abs( var_12 ) > 0.001, 1, -3 );
        var_7 = clamp( var_7 + var_5 * var_13, var_1, var_3 );
        var_8 = clamp( var_8 + var_6 * var_14, var_2, var_4 );

        if ( level.player common_scripts\utility::is_player_gamepad_enabled() )
        {
            setsaveddvar( "aim_turnrate_yaw", var_8 );
            setsaveddvar( "aim_turnrate_pitch", var_7 );
            level.player disableslowaim();
            var_9 = 0;
        }
        else
        {
            if ( !var_9 )
                level.player enableslowaim();

            var_9 = 1;
        }

        var_15 = var_11;
        var_16 = var_12;
        waitframe();
    }
}

_id_AFC6()
{
    level endon( "stop_drunk_walk" );
    childthread _id_D105();
    var_0 = 1;
    var_1 = 0.15;
    var_2 = 4;
    wait 3;
    thread maps\ending_aud::_id_D06E();

    for (;;)
    {
        setslowmotion( var_0, 0.89, var_2 );
        wait( var_2 );
        setslowmotion( var_0, 1.06, var_2 );
        wait( var_2 );
    }
}

_id_B4F5( var_0 )
{
    level endon( "stop_drunk_walk" );
    var_1 = 0;
    var_2 = 140;
    var_3 = common_scripts\utility::getstruct( "limp_yaw_ent", "targetname" );
    var_4 = common_scripts\utility::getstruct( var_3.target, "targetname" );
    var_5 = vectortoangles( var_4.origin - var_3.origin );
    var_6 = anglestoforward( var_5 );
    var_7 = 0;

    for (;;)
    {
        var_8 = distance( ( 0, 0, 0 ), level.player getvelocity() );
        var_9 = var_8 > 80;
        var_10 = level.player getplayerangles();
        var_11 = anglestoforward( var_10 );
        var_12 = vectordot( var_11, var_6 ) >= 0.8;

        if ( var_9 && var_12 )
            var_1 += 2;
        else
            var_1 -= 1;

        var_1 = clamp( var_1, 0, var_2 );

        if ( var_1 < var_2 )
        {
            wait 0.05;
            continue;
        }

        var_1 = 0;

        if ( !var_7 )
        {
            var_7 = 1;
            _id_D006();
            var_13 = 2;
            var_14 = common_scripts\utility::spawn_tag_origin();
            var_14.origin = ( level._id_CC59, 0, 0 );
            var_14 moveto( ( 1, 0, 0 ), var_13, var_13 * 0.5, var_13 * 0.5 );

            for (;;)
            {
                level._id_CC59 = var_14.origin[0];

                if ( level._id_CC59 == 1 )
                    break;

                wait 0.05;
            }

            var_14 delete();
            return;
        }

        var_2 = randomintrange( 70, 125 );
        var_13 = 0.45;
        var_15 = randomfloatrange( -16, -11 );
        var_0 moveto( ( var_15, 0, 0 ), var_13, 0, var_13 );
        wait( var_13 );
        var_13 *= 0.8;
        var_16 = randomfloatrange( -2, 2 );
        var_0 moveto( ( var_16, 0, 0 ), var_13, var_13 * 0.5, var_13 * 0.5 );
        wait( var_13 );
    }
}

_id_C753()
{
    level notify( "kill_limp" );
    level endon( "kill_limp" );

    for (;;)
    {
        var_0 = distance( ( 0, 0, 0 ), level.player getvelocity() );

        if ( var_0 < 80 )
        {
            wait 0.05;
            continue;
        }

        var_1 = 2.3;
        level.player thread _id_BB3C( var_1 );
        level.player thread maps\_utility::play_sound_on_entity( "breathing_hurt" );
        thread maps\af_chase_knife_fight::_id_BBB9( 0.5 );
        level notify( "not_random_blur" );
        common_scripts\utility::noself_delaycall( 0.5, ::setblur, 4, 0.25 );
        common_scripts\utility::noself_delaycall( 1.2, ::setblur, 0, 1 );
        maps\_utility::delaythread( var_1, ::_id_B7B7 );
        maps\_utility::delaythread( 1, maps\af_chase_knife_fight_code::_id_A8F1, var_1 * 4 );
        maps\_utility::delaythread( var_1, maps\af_chase_knife_fight_code::_id_B3EA, var_1 );
        level.player playrumblelooponentity( "damage_light" );
        level.player maps\_utility::blend_movespeedscale( 0.25, 0.3 );
        level.player maps\_utility::delaythread( var_1 * 0.5, maps\_utility::blend_movespeedscale, 0.45, var_1 );
        common_scripts\utility::flag_clear( "force_limp" );
        wait( var_1 );
        break;
    }
}

_id_C857()
{
    var_0 = 0;
    var_1 = 0;

    for (;;)
    {
        var_2 = randomfloatrange( 2, 4 );
        wait( var_2 );
        var_3 = level.player getvelocity();
        var_4 = abs( var_3[0] ) + abs( var_3[1] );

        if ( var_4 < 10 && !common_scripts\utility::flag( "force_limp" ) )
        {
            wait 0.05;
            continue;
        }

        var_5 = var_4 / level.player.movespeedscale * 190;
        var_6 = randomfloatrange( 3, 5 );

        if ( randomint( 100 ) < 20 )
            var_6 *= 1.5;

        var_7 = randomfloatrange( 0.35, 0.45 );
        var_8 = randomfloatrange( 0.65, 0.8 );

        if ( common_scripts\utility::flag( "force_limp" ) )
        {
            common_scripts\utility::flag_clear( "force_limp" );
            var_5 = 0.35;
            var_6 *= 3;
            var_7 = randomfloatrange( 0.7, 0.85 );
            var_8 = randomfloatrange( 1.65, 1.8 );
        }

        var_9 = randomfloatrange( 3, 7 );
        var_10 = randomfloatrange( -8, -2 );
        var_11 = ( var_6, var_10, var_9 );
        var_11 = maps\_utility::_id_C32D( var_11, var_5 );
        var_0++;

        if ( var_5 > 1.3 )
            var_0++;

        common_scripts\utility::flag_set( "player_limping" );
        childthread _id_C1B6( var_11, var_7, var_8 );
        level common_scripts\utility::waittill_either( "recovered", "force_limp" );
        common_scripts\utility::flag_clear( "player_limping" );
    }
}

_id_B7B7()
{
    level endon( "dying" );
    level endon( "not_random_blur" );

    for (;;)
    {
        wait 0.05;

        if ( randomint( 100 ) > 10 || isdefined( level.player._id_B3CE ) && level.player._id_B3CE )
            continue;

        var_0 = randomint( 3 ) + 2;
        var_1 = randomfloatrange( 0.3, 0.7 );
        var_2 = randomfloatrange( 0.3, 1 );
        setblur( var_0 * 1.2, var_1 );
        wait( var_1 );
        setblur( 0, var_2 );
        wait 5;
    }
}

_id_CEDD()
{
    wait 2;

    for (;;)
    {
        if ( level.player isonground() )
            break;

        wait 0.05;
    }

    for (;;)
    {
        wait 0.05;

        if ( level.player isonground() )
            continue;

        wait 0.2;

        if ( level.player isonground() )
            continue;

        level notify( "stop_stumble" );
        wait 0.2;
    }
}

_id_C1B6( var_0, var_1, var_2, var_3 )
{
    level endon( "stop_stumble" );

    if ( common_scripts\utility::flag( "collapse" ) )
        return;

    var_0 = adjust_angles_to_player( var_0 );
    level.ground_ref_ent rotateto( var_0, var_1, var_1 / 4 * 3, var_1 / 4 );
    level.ground_ref_ent waittill( "rotatedone" );
    var_4 = ( randomfloat( 4 ) - 4, randomfloat( 5 ), 0 );
    var_4 = adjust_angles_to_player( var_4 );
    level.ground_ref_ent rotateto( var_4, var_2, 0, var_2 / 2 );
    level.ground_ref_ent waittill( "rotatedone" );

    if ( !isdefined( var_3 ) )
        level notify( "recovered" );
}

recover()
{
    var_0 = adjust_angles_to_player( ( -5, -5, 0 ) );
    level.ground_ref_ent rotateto( var_0, 0.6, 0.6, 0 );
    level.ground_ref_ent waittill( "rotatedone" );
    var_0 = adjust_angles_to_player( ( -15, -20, 0 ) );
    level.ground_ref_ent rotateto( var_0, 2.5, 0, 2.5 );
    level.ground_ref_ent waittill( "rotatedone" );
    var_0 = adjust_angles_to_player( ( 5, 5, 0 ) );
    level.ground_ref_ent rotateto( var_0, 2.5, 2, 0.5 );
    level.ground_ref_ent waittill( "rotatedone" );
    level.ground_ref_ent rotateto( ( 0, 0, 0 ), 1, 0.2, 0.8 );
}

create_overlay_element( var_0, var_1 )
{
    var_2 = newhudelem();
    var_2.x = 0;
    var_2.y = 0;
    var_2 setshader( var_0, 640, 480 );
    var_2.alignx = "left";
    var_2.aligny = "top";
    var_2.horzalign = "fullscreen";
    var_2.vertalign = "fullscreen";
    var_2.alpha = var_1;
    var_2.foreground = 1;
    return var_2;
}

_id_AA83( var_0 )
{
    wait 0.1;
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
}

_id_CFD1( var_0 )
{
    self _meth_84C7( "h2_gulag_escapesequence_player_additive" );
    wait( var_0 );
    self _meth_84C7( 0 );
}
