// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{

}

_id_D2FA()
{
    var_0 = getentarray( "mortar", "targetname" );
    var_1 = -1;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_0[var_2] _id_BCE5();

    if ( !isdefined( level._id_D084 ) )
        common_scripts\utility::error( "level.mortar not defined. define in level script" );

    level waittill( "start_mortars" );

    for (;;)
    {
        wait( 1 + randomfloat( 2 ) );
        var_3 = randomint( var_0.size );

        for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        {
            var_4 = ( var_2 + var_3 ) % var_0.size;
            var_5 = distance( level.player getorigin(), var_0[var_4].origin );
            var_6 = undefined;

            if ( isdefined( level.foley ) )
                var_6 = distance( level.foley.origin, var_0[var_4].origin );
            else
                var_6 = 360;

            if ( var_5 < 1600 && var_5 > 400 && var_6 > 350 && var_4 != var_1 )
            {
                var_0[var_4] _id_A896( 400, 300, 25, undefined, undefined, undefined, 0 );
                var_1 = var_4;

                if ( var_5 < 500 )
                    _id_B61F::main( 4 );

                break;
            }
        }
    }
}

_id_A9DC( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 7;

    if ( !isdefined( var_1 ) )
        var_1 = 2200;

    if ( !isdefined( var_2 ) )
        var_2 = 300;

    if ( !isdefined( level._id_C4AB ) )
        level._id_C4AB = 0;

    if ( !isdefined( var_9 ) )
        var_9 = 0;

    var_11 = getentarray( "mortar", "targetname" );
    var_12 = -1;

    for ( var_13 = 0; var_13 < var_11.size; var_13++ )
    {
        if ( isdefined( var_11[var_13].target ) && var_9 == 0 )
            var_11[var_13] _id_BCE5();
    }

    if ( !isdefined( level._id_D084 ) )
        common_scripts\utility::error( "level.mortar not defined. define in level script" );

    if ( isdefined( level._id_A8DF ) )
        level waittill( level._id_A8DF );

    for (;;)
    {
        if ( level._id_C4AB != 0 )
            wait 1;

        while ( level._id_C4AB == 0 )
        {
            if ( isdefined( var_10 ) )
                wait( var_10 + ( randomfloat( var_0 ) + randomfloat( var_0 ) ) );
            else
                wait( randomfloat( var_0 ) + randomfloat( var_0 ) );

            var_14 = randomint( var_11.size );

            for ( var_13 = 0; var_13 < var_11.size; var_13++ )
            {
                var_15 = ( var_13 + var_14 ) % var_11.size;
                var_16 = distance( level.player getorigin(), var_11[var_15].origin );

                if ( var_16 < var_1 && var_16 > var_2 && var_15 != var_12 )
                {
                    var_11[var_15] _id_A896( var_3, var_4, var_5, var_6, var_7, var_8, 0 );
                    var_12 = var_15;
                    break;
                }
            }
        }
    }
}

_id_B565()
{
    var_0 = [];
    var_1 = [];
    level._id_BCDB = [];
    var_2 = getentarray( "script_model", "classname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( isdefined( var_2[var_3].script_mortargroup ) )
        {
            if ( !isdefined( level._id_BCDB[var_2[var_3].script_mortargroup] ) )
                level._id_BCDB[var_2[var_3].script_mortargroup] = [];

            var_4 = spawnstruct();
            var_4.origin = var_2[var_3].origin;
            var_4.angles = var_2[var_3].angles;

            if ( isdefined( var_2[var_3].targetname ) )
                var_4.targetname = var_2[var_3].targetname;

            if ( isdefined( var_2[var_3].target ) )
                var_4.target = var_2[var_3].target;

            level._id_BCDB[var_2[var_3].script_mortargroup][level._id_BCDB[var_2[var_3].script_mortargroup].size] = var_4;
            var_2[var_3] delete();
        }
    }

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_0[var_3] hide();
        var_0[var_3]._id_A830 = 0;
    }

    if ( !isdefined( level._id_D084 ) )
        level._id_D084 = loadfx( "fx/explosions/artilleryExp_dirt_brown" );

    var_5 = common_scripts\utility::array_combine( getentarray( "trigger_multiple", "classname" ), getentarray( "trigger_radius", "classname" ) );

    for ( var_3 = 0; var_3 < var_5.size; var_3++ )
    {
        if ( isdefined( var_5[var_3].script_mortargroup ) )
        {
            if ( !isdefined( level._id_BCDB[var_5[var_3].script_mortargroup] ) )
                level._id_BCDB[var_5[var_3].script_mortargroup] = [];

            var_1[var_1.size] = var_5[var_3];
        }
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_1[var_3]._id_C58C = 0;
        var_1[var_3] thread _id_B3C3();
    }

    var_6 = undefined;

    for (;;)
    {
        level waittill( "mortarzone", var_7 );

        if ( isdefined( var_6 ) )
            var_6 notify( "wait again" );

        level._id_CDF3 = var_7.script_mortargroup;
        var_7 thread _id_C2C4();
        var_6 = var_7;
    }
}

_id_C2C4()
{
    var_0 = [];
    var_1 = gettime();
    var_2 = 0;

    if ( isdefined( self.script_timer ) )
    {
        level notify( "timed barrage" );
        var_1 = gettime() + self.script_timer * 1000;
        var_2 = 1;
    }

    if ( isdefined( self.script_radius ) )
        var_3 = self.script_radius;
    else
        var_3 = 0;

    if ( isdefined( self.script_delay_min ) && isdefined( self.script_delay_max ) )
        var_4 = 1;
    else
        var_4 = 0;

    var_5 = 0;
    var_6 = 2;
    var_7 = 4;
    var_8 = 0;

    while ( level._id_BCDB[self.script_mortargroup].size > 0 && level._id_CDF3 == self.script_mortargroup || var_2 )
    {
        if ( var_4 )
            wait( randomfloat( self.script_delay_max - self.script_delay_min ) + self.script_delay_min );
        else if ( var_8 )
        {
            if ( var_5 < var_7 )
            {
                wait( randomfloat( 0.5 ) );
                var_5++;
            }
            else
            {
                var_5 = 0;
                var_7 = 2 + randomint( 4 );
                var_8 = 0;
                continue;
            }
        }
        else if ( var_5 < var_6 )
        {
            var_9 = randomfloat( 2 ) + 1;
            wait( var_9 );
            var_5++;
        }
        else
        {
            var_5 = 0;
            var_8 = 1;
            var_6 = randomint( 2 ) + 3;
            continue;
        }

        var_10 = [];
        var_11 = randomint( level._id_BCDB[self.script_mortargroup].size );

        if ( randomint( 100 ) < 75 )
        {
            var_12 = anglestoforward( level.player.angles );
            var_13 = [];

            for ( var_14 = 0; var_14 < level._id_BCDB[self.script_mortargroup].size; var_14++ )
            {
                if ( var_3 > 0 && distance( level.player.origin, level._id_BCDB[self.script_mortargroup][var_14].origin ) > var_3 )
                    continue;

                if ( _id_D473( level._id_BCDB[self.script_mortargroup][var_14], var_0 ) )
                    continue;

                var_15 = vectornormalize( level._id_BCDB[self.script_mortargroup][var_14].origin - level.player.origin );

                if ( vectordot( var_12, var_15 ) > 0.3 )
                    var_13[var_13.size] = var_14;
            }

            if ( var_13.size > 0 )
                var_11 = var_13[randomint( var_13.size )];
        }

        if ( var_0.size > 3 )
            var_0 = [];

        var_0[var_0.size] = level._id_BCDB[self.script_mortargroup][var_11];
        level._id_BCDB[self.script_mortargroup][var_11] thread _id_B3A7();

        if ( var_2 && gettime() > var_1 )
        {
            if ( isdefined( self.target ) )
            {
                var_16 = getent( self.target, "targetname" );

                if ( isdefined( var_16 ) )
                {
                    var_16 notify( "trigger" );
                    level notify( "timed barrage finished" );
                }
            }

            break;
        }
    }
}

_id_D473( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_0 == var_1[var_2] )
            return 1;
    }

    return 0;
}

_id_B3A7()
{
    if ( isdefined( self.targetname ) && isdefined( level._id_C791[self.targetname] ) )
        level thread [[ level._id_C791[self.targetname] ]]( self );
    else
        thread _id_A896( undefined, undefined, undefined, undefined, undefined, undefined, 1 );

    self waittill( "mortar" );

    if ( isdefined( self.target ) )
    {
        var_0 = getent( self.target, "targetname" );

        if ( isdefined( var_0 ) )
            var_0 notify( "trigger" );
    }
}

_id_B3C3()
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( isdefined( level._id_CDF3 ) && level._id_CDF3 == self.script_mortargroup )
            continue;

        level notify( "mortarzone", self );
        self waittill( "wait again" );
    }
}

_id_CB5F()
{
    level._id_D2EF = getentarray( "mortartrigger", "targetname" );
    level._id_BCDB = getentarray( "script_origin", "classname" );

    for ( var_0 = 0; var_0 < level._id_BCDB.size; var_0++ )
    {
        if ( isdefined( level._id_BCDB[var_0].script_mortargroup ) )
            level._id_BCDB[var_0] _id_BCE5();
    }

    level._id_C76E = -1;

    if ( !isdefined( level._id_D084 ) )
        common_scripts\utility::error( "level.mortar not defined. define in level script" );

    for ( var_0 = 0; var_0 < level._id_D2EF.size; var_0++ )
        thread _id_D4BB( var_0 );
}

_id_D4BB( var_0 )
{
    var_1 = getentarray( level._id_D2EF[var_0].target, "targetname" );

    for (;;)
    {
        if ( level.player istouching( level._id_D2EF[var_0] ) )
        {
            var_2 = randomint( var_1.size );

            while ( var_2 == level._id_C76E )
            {
                var_2 = randomint( var_1.size );
                wait 0.1;
            }

            var_1[var_2] _id_A896( undefined, undefined, undefined, undefined, undefined, undefined, 0 );
            level._id_C76E = var_2;
        }

        wait( randomfloat( 3 ) + randomfloat( 4 ) );
    }
}

_id_C09E( var_0 )
{
    var_1 = [];
    var_2 = undefined;
    var_3 = [];
    var_4 = common_scripts\utility::getstructarray( "mortar_bunker", "targetname" );
    var_5 = getentarray( "mortar_bunker", "targetname" );

    if ( isdefined( var_5 ) && var_5.size > 0 )
        var_2 = maps\_utility::array_merge( var_4, var_5 );
    else
        var_2 = var_4;

    for ( var_6 = 0; var_6 < var_2.size; var_6++ )
    {
        if ( !isdefined( var_2[var_6].script_mortargroup ) )
            continue;

        var_7 = -1;
        var_8 = int( var_2[var_6].script_mortargroup );

        for ( var_9 = 0; var_9 < var_1.size; var_9++ )
        {
            if ( var_8 != var_3[var_9] )
                continue;

            var_7 = var_9;
            break;
        }

        if ( var_7 == -1 )
        {
            var_1[var_1.size] = [];
            var_3[var_3.size] = var_8;
            var_7 = var_1.size - 1;
        }

        var_1[var_7][var_1[var_7].size] = var_2[var_6];
    }

    for ( var_6 = 0; var_6 < var_1.size; var_6++ )
        thread _id_C27F( var_1[var_6], var_4, var_0 );

    wait 0.05;
    common_scripts\utility::array_thread( getentarray( "mortar_on", "targetname" ), ::_id_CBC6, "on" );
    common_scripts\utility::array_thread( getentarray( "mortar_off", "targetname" ), ::_id_CBC6, "off" );
}

_id_C27F( var_0, var_1, var_2 )
{
    var_3 = undefined;
    var_4 = undefined;

    if ( isdefined( level._id_C729 ) )
        var_3 = level._id_C729;
    else
        var_3 = 5;

    if ( isdefined( level._id_C3D0 ) )
        var_4 = level._id_C3D0;
    else
        var_4 = 7;

    var_5 = int( var_0[0].script_mortargroup );

    for (;;)
    {
        level waittill( "start_mortars " + var_5 );
        thread _id_CBE5( var_0, var_3, var_4, var_5, var_1, var_2 );
    }
}

_id_CBE5( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level endon( "start_mortars " + var_3 );
    level endon( "stop_mortars " + var_3 );
    var_6 = undefined;
    var_7 = 262144;
    var_8 = 0.16;
    var_9 = 0.46;
    var_10 = 1.5;
    var_11 = 2.75;
    var_12 = 1250;
    var_13 = var_8;
    var_14 = var_10;

    for (;;)
    {
        if ( var_4.size >= 3 )
        {
            var_15 = sortbydistance( var_4, level.player.origin );
            var_16 = randomint( 3 );
            var_17 = var_15[var_16];
        }
        else
            var_17 = common_scripts\utility::getclosest( level.player.origin, var_4 );

        if ( !isdefined( level._id_C0C9 ) )
            common_scripts\utility::play_sound_in_space( "mortar_incoming_bunker", var_17.origin );

        thread common_scripts\utility::play_sound_in_space( "exp_artillery_underground", var_17.origin );
        common_scripts\utility::array_thread( var_0, ::_id_C370 );

        if ( isdefined( var_6 ) )
        {
            var_18 = var_6 / var_7;
            var_13 = maps\_utility::linear_interpolate( var_18, var_8, var_9 );
            var_14 = maps\_utility::linear_interpolate( var_18, var_10, var_11 );
        }
        else
        {
            var_13 = randomfloatrange( var_8, var_9 );
            var_14 = randomfloatrange( var_10, var_11 );
        }

        if ( !isdefined( level._id_C7C3 ) )
            earthquake( var_13, var_14, var_17.origin, var_12 );

        level notify( "mortar_hit" );

        if ( isdefined( var_5 ) )
        {
            var_6 = undefined;
            var_6 = bunker_style_mortar_wait_next_hit( var_5, var_1, var_2 );
        }
        else
            wait( randomfloatrange( var_1, var_2 ) );

        var_0 = common_scripts\utility::array_removeundefined( var_0 );
    }
}

bunker_style_mortar_wait_next_hit( var_0, var_1, var_2 )
{
    level endon( "timeout" );
    level thread maps\_utility::timeout( randomfloatrange( var_1, var_2 ) );
    level waittill( var_0, var_3 );
    return var_3;
}

_id_C370( var_0, var_1 )
{
    if ( !isdefined( self ) )
        return;

    if ( isdefined( level._id_BE29 ) && _id_AFB4( level._id_BE29 ) == 0 )
        return;

    if ( isdefined( level._id_C4CC ) )
        var_2 = level._id_C4CC;
    else
        var_2 = 1024;

    var_3 = var_2 * var_2;
    var_4 = distancesquared( level.player.origin, self.origin );

    if ( var_4 > var_3 )
        return;

    if ( isdefined( self.classname ) && self.classname == "trigger_radius" )
    {
        if ( !level.player istouching( self ) && distance( level.player.origin, self.origin ) < level._id_C5A0 )
        {
            radiusdamage( self.origin, self.radius, 500, 500 );
            self delete();
            return;
        }
    }
    else
    {
        playfx( level._effect["mortar"][self.script_fxid], self.origin );

        if ( var_4 < 262144 )
            thread common_scripts\utility::play_sound_in_space( "emt_single_ceiling_debris", self.origin );
    }
}

_id_D23F()
{
    var_0 = [];
    var_1 = [];
    var_2 = maps\_utility::getstructarray_delete( "mortar", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( !isdefined( var_2[var_3].script_mortargroup ) )
            continue;

        var_4 = -1;
        var_5 = int( var_2[var_3].script_mortargroup );

        for ( var_6 = 0; var_6 < var_0.size; var_6++ )
        {
            if ( var_5 != var_1[var_6] )
                continue;

            var_4 = var_6;
            break;
        }

        if ( var_4 == -1 )
        {
            var_0[var_0.size] = [];
            var_1[var_1.size] = var_5;
            var_4 = var_0.size - 1;
        }

        var_0[var_4][var_0[var_4].size] = var_2[var_3];
    }

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        thread _id_AD3D( var_0[var_3] );

    wait 0.05;
    common_scripts\utility::array_thread( getentarray( "mortar_on", "targetname" ), ::_id_CB7C, "on" );
    common_scripts\utility::array_thread( getentarray( "mortar_off", "targetname" ), ::_id_CB7C, "off" );
}

_id_AD3D( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;

    if ( isdefined( level._id_C729 ) )
        var_2 = level._id_C729;
    else
        var_2 = 0.5;

    if ( isdefined( level._id_C3D0 ) )
        var_3 = level._id_C3D0;
    else
        var_3 = 3;

    var_1 = int( var_0[0].script_mortargroup );

    for (;;)
    {
        level waittill( "start_mortars " + var_1 );
        level thread _id_A9B7( var_0, var_1, var_2, var_3 );

        if ( isdefined( level._id_D469 ) )
            return;
    }
}

_id_A9B7( var_0, var_1, var_2, var_3 )
{
    level endon( "start_mortars " + var_1 );
    level endon( "stop_mortars " + var_1 );

    if ( isdefined( level._id_C4CC ) )
        var_4 = level._id_C4CC;
    else
        var_4 = 300;

    var_5 = spawn( "trigger_radius", ( 0, 0, 0 ), 0, var_4, 256 );
    thread _id_C9D5( var_5, var_1 );

    for (;;)
    {
        for (;;)
        {
            wait 0.05;
            var_6 = randomint( var_0.size );

            if ( isdefined( var_0[var_6]._id_C96F ) )
                continue;

            var_7 = distance( level.player.origin, var_0[var_6].origin );

            if ( var_7 < var_4 )
                continue;

            if ( isdefined( level._id_B8B6 ) && level._id_B8B6.size > 0 )
            {
                var_5.origin = var_0[var_6].origin;

                if ( _id_B936( level._id_B8B6, var_5 ) )
                    continue;
            }

            if ( !isdefined( level._id_AD0F ) && var_7 > 1000 )
                continue;

            if ( isdefined( level._id_A9AC ) && var_7 > level._id_A9AC )
                continue;

            if ( isdefined( level._id_BE29 ) && var_0[var_6] _id_AFB4( level._id_BE29 ) == 0 )
                continue;

            break;
        }

        if ( isdefined( level._id_C614 ) && level._id_C614 == 1 )
            return;

        var_0[var_6] thread _id_ADDB();
        wait( var_2 + randomfloat( var_3 - var_2 ) );
    }
}

_id_C9D5( var_0, var_1 )
{
    level waittill( "stop_mortars " + var_1 );
    var_0 delete();
}

_id_B936( var_0, var_1 )
{
    foreach ( var_3 in level._id_B8B6 )
    {
        if ( !isalive( var_3 ) )
            continue;

        if ( !isdefined( var_3 ) )
            continue;

        if ( var_3 istouching( var_1 ) )
            return 1;
    }

    return 0;
}

_id_AFB4( var_0 )
{
    var_1 = level.player geteye();
    var_2 = ( 0, 0, 0 );

    if ( isdefined( level._id_C1BE ) )
        var_2 = level._id_C1BE;

    var_3 = common_scripts\utility::within_fov( var_1, level.player getplayerangles() + var_2, self.origin, var_0 );
    return var_3;
}

_id_ADDB( var_0, var_1 )
{
    if ( !isdefined( level._id_C408 ) )
        level._id_C408 = 250;

    if ( !isdefined( level._id_C289 ) )
        level._id_C289 = 1250;

    if ( !isdefined( var_0 ) )
        var_0 = 0;

    thread _id_C3D3();

    if ( !var_0 )
        common_scripts\utility::play_sound_in_space( level.scr_sound["mortar"]["incomming"] );

    if ( isdefined( var_1 ) )
        thread common_scripts\utility::play_sound_in_space( var_1 );
    else
        thread common_scripts\utility::play_sound_in_space( level.scr_sound["mortar"][self.script_fxid] );

    setplayerignoreradiusdamage( 1 );
    radiusdamage( self.origin, level._id_C408, 150, 50 );
    setplayerignoreradiusdamage( 0 );
    playfx( level._effect["mortar"][self.script_fxid], self.origin );

    if ( isdefined( level._id_D10A ) )
        earthquake( 0.3, 1, level.player.origin, 2000 );

    if ( getdvarint( "bog_camerashake" ) > 0 )
    {
        if ( level.player getcurrentweapon() == "dragunov" && level.player playerads() > 0.8 )
            return;

        earthquake( 0.25, 0.75, self.origin, level._id_C289 );
    }
}

_id_C3D3()
{
    self._id_C96F = 1;
    wait( 3 + randomfloat( 2 ) );
    self._id_C96F = undefined;
}

_id_CB7C( var_0 )
{
    self waittill( "trigger" );

    if ( var_0 == "on" )
        _id_AADA( self.script_mortargroup );
    else if ( var_0 == "off" )
        _id_C303( self.script_mortargroup );
}

_id_AADA( var_0 )
{
    level notify( "start_mortars " + var_0 );
}

_id_C303( var_0 )
{
    level notify( "stop_mortars " + var_0 );
}

_id_BC8A( var_0 )
{
    if ( !isdefined( level._id_C5A0 ) )
        level._id_C5A0 = 512;

    if ( !isdefined( level._id_BE29 ) )
        level._id_BE29 = cos( 35 );

    level notify( "start_mortars " + var_0 );
}

_id_AB0C( var_0 )
{
    level waittill( "mortar_hit" );
    level notify( "stop_mortars " + var_0 );
}

_id_A8BC( var_0 )
{
    level notify( "stop_mortars " + var_0 );
}

_id_CBC6( var_0 )
{
    self waittill( "trigger" );

    if ( var_0 == "on" )
        _id_BC8A( self.script_mortargroup );
    else if ( var_0 == "off" )
        _id_AB0C( self.script_mortargroup );
}

_id_AA0C()
{
    level endon( "stop falling mortars" );
    _id_BCE5();
    wait( randomfloat( 0.5 ) + randomfloat( 0.5 ) );

    for (;;)
    {
        if ( distance( level.player getorigin(), self.origin ) < 600 )
        {
            _id_A896( undefined, undefined, undefined, undefined, undefined, undefined, 0 );
            break;
        }

        wait 1;
    }

    wait( 7 + randomfloat( 20 ) );

    for (;;)
    {
        if ( distance( level.player getorigin(), self.origin ) < 1200 && distance( level.player getorigin(), self.origin ) > 400 )
        {
            _id_A896( undefined, undefined, undefined, undefined, undefined, undefined, 0 );
            wait( 3 + randomfloat( 14 ) );
        }

        wait 1;
    }
}

_id_BCE5()
{
    self._id_A830 = 0;

    if ( isdefined( self.target ) )
    {
        self._id_C97B = getentarray( self.target, "targetname" );
        self._id_A830 = 1;
    }
    else
    {

    }

    if ( !isdefined( self._id_C97B ) )
    {

    }

    if ( isdefined( self.script_hidden ) )
    {
        if ( isdefined( self.script_hidden ) )
            self._id_CC74 = getent( self.script_hidden, "targetname" );
        else if ( isdefined( self._id_C97B ) && isdefined( self._id_C97B[0].target ) )
            self._id_CC74 = getent( self._id_C97B[0].target, "targetname" );

        if ( isdefined( self._id_CC74 ) )
            self._id_CC74 hide();
    }
    else if ( isdefined( self._id_A830 ) )
    {
        if ( isdefined( self._id_C97B ) && isdefined( self._id_C97B[0].target ) )
            self._id_CC74 = getent( self._id_C97B[0].target, "targetname" );

        if ( isdefined( self._id_CC74 ) )
            self._id_CC74 hide();
    }
}

_id_A896( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    _id_D064( undefined, var_6 );
    level notify( "mortar" );
    self notify( "mortar" );

    if ( !isdefined( var_0 ) )
        var_0 = 256;

    if ( !isdefined( var_1 ) )
        var_1 = 400;

    if ( !isdefined( var_2 ) )
        var_2 = 25;

    radiusdamage( self.origin, var_0, var_1, var_2 );

    if ( isdefined( self._id_A830 ) && self._id_A830 == 1 && isdefined( self._id_C97B ) )
    {
        for ( var_7 = 0; var_7 < self._id_C97B.size; var_7++ )
        {
            if ( isdefined( self._id_C97B[var_7] ) )
                self._id_C97B[var_7] delete();
        }
    }

    if ( isdefined( self._id_CC74 ) )
        self._id_CC74 show();

    self._id_A830 = 0;
    _id_C6CE( self.origin, var_3, var_4, var_5, undefined, var_6 );
}

_id_C6CE( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0.15;

    if ( !isdefined( var_2 ) )
        var_2 = 2;

    if ( !isdefined( var_3 ) )
        var_3 = 850;

    thread _id_CDF4( var_5 );

    if ( isdefined( var_4 ) )
        playfx( var_4, var_0 );
    else
        playfx( level._id_D084, var_0 );

    earthquake( var_1, var_2, var_0, var_3 );

    if ( isdefined( level._id_C7ED ) )
        return;

    if ( distance( level.player.origin, var_0 ) > 300 )
        return;

    level._id_C7ED = 1;
    level notify( "shell shock player", var_2 * 4 );
    _id_B61F::main( var_2 * 4 );
}

_id_CDF4( var_0 )
{
    if ( !isdefined( level._id_B06C ) )
        level._id_B06C = -1;

    for ( var_1 = randomint( 3 ) + 1; var_1 == level._id_B06C; var_1 = randomint( 3 ) + 1 )
    {

    }

    level._id_B06C = var_1;

    if ( !var_0 )
        self playsound( "mortar_explosion" + var_1 );
    else
        common_scripts\utility::play_sound_in_space( "mortar_explosion" + var_1, self.origin );
}

_id_D064( var_0, var_1 )
{
    var_2 = gettime();

    if ( !isdefined( level._id_ABE2 ) )
        level._id_ABE2 = var_2;
    else if ( var_2 - level._id_ABE2 < 1000 )
    {
        wait 1;
        return;
    }
    else
        level._id_ABE2 = var_2;

    if ( !isdefined( var_0 ) )
        var_0 = randomint( 3 ) + 1;

    if ( var_0 == 1 )
    {
        if ( var_1 )
            thread common_scripts\utility::play_sound_in_space( "mortar_incoming1", self.origin );
        else
            self playsound( "mortar_incoming1" );

        wait 0.82;
    }
    else if ( var_0 == 2 )
    {
        if ( var_1 )
            thread common_scripts\utility::play_sound_in_space( "mortar_incoming2", self.origin );
        else
            self playsound( "mortar_incoming2" );

        wait 0.42;
    }
    else
    {
        if ( var_1 )
            thread common_scripts\utility::play_sound_in_space( "mortar_incoming3", self.origin );
        else
            self playsound( "mortar_incoming3" );

        wait 1.3;
    }
}

_id_D4E3()
{
    level._id_D15F = [];
    level._id_CF93 = [];
    level._id_CE75 = [];
    level._id_CAC8 = [];
    level._id_B96A = [];
    level._id_C658 = [];
    level._id_B72C = [];
    level._id_C0AE = [];
}

_id_B551( var_0, var_1, var_2 )
{
    level._id_CF93[var_0] = var_1;
    level._id_D15F[var_0] = var_2;
}

_id_C8D5( var_0, var_1, var_2, var_3 )
{
    level._id_CE75[var_0] = var_1;
    level._id_B96A[var_0] = var_2;
    level._id_CAC8[var_0] = var_3;
}

_id_AC85( var_0, var_1, var_2, var_3 )
{
    level._id_C658[var_0] = var_1;
    level._id_B72C[var_0] = var_2;
    level._id_C0AE[var_0] = var_3;
}

_id_AE87( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = -1;
    var_8 = var_5;
    var_9 = var_4;
    _id_B551( var_0, 300, 2200 );

    if ( !isdefined( var_1 ) )
        var_1 = 7;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_6 ) )
        var_6 = 0;

    if ( isdefined( level._id_B61D ) && isdefined( level._id_B61D[var_0] ) )
        level endon( level._id_B61D[var_0] );

    if ( !isdefined( level._id_CADD ) || !isdefined( level._id_CADD[var_0] ) )
        level._id_CADD[var_0] = 0;

    var_10 = getentarray( var_0, "targetname" );

    for ( var_11 = 0; var_11 < var_10.size; var_11++ )
    {
        if ( isdefined( var_10[var_11].target ) && !var_6 )
            var_10[var_11] _id_BCE5();
    }

    if ( isdefined( level._id_C5A3 ) && isdefined( level._id_C5A3[var_0] ) )
        level waittill( level._id_C5A3[var_0] );

    for (;;)
    {
        while ( !level._id_CADD[var_0] )
        {
            for ( var_12 = 0; var_12 < var_2; var_12++ )
            {
                if ( !isdefined( var_5 ) )
                    var_8 = level._id_D15F[var_0];

                if ( !isdefined( var_4 ) )
                    var_9 = level._id_CF93[var_0];

                var_13 = randomint( var_10.size );

                for ( var_11 = 0; var_11 < var_10.size; var_11++ )
                {
                    var_14 = ( var_11 + var_13 ) % var_10.size;
                    var_15 = distance( level.player getorigin(), var_10[var_14].origin );

                    if ( var_15 < var_8 && var_15 > var_9 && var_14 != var_7 )
                    {
                        var_10[var_14]._id_C3C9 = var_9;
                        var_10[var_14] _id_CEF4( var_0 );
                        var_7 = var_14;
                        break;
                    }
                }

                var_7 = -1;

                if ( isdefined( level._id_D463 ) && isdefined( level._id_D463[var_0] ) )
                {
                    wait( level._id_D463[var_0] );
                    continue;
                }

                wait( randomfloat( var_1 ) + randomfloat( var_1 ) );
            }

            if ( isdefined( level._id_AE9E ) && isdefined( level._id_AE9E[var_0] ) )
            {
                wait( level._id_AE9E[var_0] );
                continue;
            }

            wait( randomfloat( var_3 ) + randomfloat( var_3 ) );
        }

        wait 0.05;
    }
}

_id_CEF4( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    _id_C8D5( var_0, 256, 25, 400 );
    _id_AC85( var_0, 0.15, 2, 850 );

    if ( !isdefined( var_1 ) )
        var_1 = level._id_CE75[var_0];

    if ( !isdefined( var_2 ) )
        var_2 = level._id_B96A[var_0];

    if ( !isdefined( var_3 ) )
        var_3 = level._id_CAC8[var_0];

    if ( !isdefined( var_4 ) )
        var_4 = level._id_C658[var_0];

    if ( !isdefined( var_5 ) )
        var_5 = level._id_B72C[var_0];

    if ( !isdefined( var_6 ) )
        var_6 = level._id_C0AE[var_0];

    _id_B71D( var_0 );
    level notify( "explosion", var_0 );
    var_7 = 1;
    var_8 = undefined;
    var_9 = self;

    if ( isdefined( self._id_C3C9 ) && distance( level.player.origin, self.origin ) < self._id_C3C9 )
    {
        var_10 = getentarray( var_0, "targetname" );

        for ( var_11 = 0; var_11 < var_10.size; var_11++ )
        {
            var_12 = distance( level.player getorigin(), var_10[var_11].origin );

            if ( var_12 > self._id_C3C9 )
            {
                if ( !isdefined( var_8 ) || var_12 < var_8 )
                {
                    var_8 = var_12;
                    var_9 = var_10[var_11];
                }
            }
        }

        if ( !isdefined( var_8 ) )
            var_7 = 0;
    }

    if ( var_7 )
        radiusdamage( var_9.origin, var_1, var_3, var_2 );

    if ( isdefined( var_9._id_A830 ) && var_9._id_A830 == 1 && isdefined( var_9._id_C97B ) )
    {
        for ( var_13 = 0; var_13 < var_9._id_C97B.size; var_13++ )
        {
            if ( isdefined( var_9._id_C97B[var_13] ) )
                var_9._id_C97B[var_13] delete();
        }
    }

    if ( isdefined( var_9._id_CC74 ) )
        var_9._id_CC74 show();

    var_9._id_A830 = 0;
    var_9 _id_B10E( var_0, var_4, var_5, var_6 );
}

_id_B10E( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0.15;

    if ( !isdefined( var_2 ) )
        var_2 = 2;

    if ( !isdefined( var_3 ) )
        var_3 = 850;

    _id_B7F9( var_0 );
    var_4 = self.origin;
    playfx( level._effect[var_0], var_4 );
    earthquake( var_1, var_2, var_4, var_3 );

    if ( distance( level.player.origin, var_4 ) > 300 )
        return;

    level._id_C7ED = 1;
    level notify( "shell shock player", var_2 * 4 );
    _id_B61F::main( var_2 * 4 );
}

_id_B7F9( var_0 )
{
    if ( !isdefined( level._id_C51A ) )
        level._id_C51A = 0;

    for ( var_1 = randomint( 3 ) + 1; var_1 == level._id_C51A; var_1 = randomint( 3 ) + 1 )
    {

    }

    level._id_C51A = var_1;

    if ( level._id_C5E3[var_0] == "mortar" )
    {
        switch ( var_1 )
        {
            case 1:
                self playsound( "mortar_explosion1" );
                break;
            case 2:
                self playsound( "mortar_explosion2" );
                break;
            case 3:
                self playsound( "mortar_explosion3" );
                break;
        }
    }
    else if ( level._id_C5E3[var_0] == "artillery" )
    {
        switch ( var_1 )
        {
            case 1:
                self playsound( "mortar_explosion4" );
                break;
            case 2:
                self playsound( "mortar_explosion5" );
                break;
            case 3:
                self playsound( "mortar_explosion1" );
                break;
        }
    }
    else if ( level._id_C5E3[var_0] == "bomb" )
    {
        switch ( var_1 )
        {
            case 1:
                self playsound( "mortar_explosion1" );
                break;
            case 2:
                self playsound( "mortar_explosion4" );
                break;
            case 3:
                self playsound( "mortar_explosion5" );
                break;
        }
    }
}

_id_B71D( var_0, var_1 )
{
    if ( !isdefined( level._id_BD83 ) )
        level._id_BD83 = -1;

    for ( var_1 = randomint( 4 ) + 1; var_1 == level._id_BD83; var_1 = randomint( 4 ) + 1 )
    {

    }

    level._id_BD83 = var_1;

    if ( level._id_C5E3[var_0] == "mortar" )
    {
        switch ( var_1 )
        {
            case 1:
                self playsound( "mortar_incoming1" );
                wait 0.82;
                break;
            case 2:
                self playsound( "mortar_incoming2" );
                wait 0.42;
                break;
            case 3:
                self playsound( "mortar_incoming3" );
                wait 1.3;
                break;
            default:
                wait 1.75;
                break;
        }
    }
    else if ( level._id_C5E3[var_0] == "artillery" )
    {
        switch ( var_1 )
        {
            case 1:
                self playsound( "mortar_incoming4" );
                wait 0.82;
                break;
            case 2:
                self playsound( "mortar_incoming4_new" );
                wait 0.42;
                break;
            case 3:
                self playsound( "mortar_incoming1_new" );
                wait 1.3;
                break;
            default:
                wait 1.75;
                break;
        }
    }
    else if ( level._id_C5E3[var_0] == "bomb" )
    {
        switch ( var_1 )
        {
            case 1:
                self playsound( "mortar_incoming2_new" );
                wait 1.75;
                break;
            case 2:
                self playsound( "mortar_incoming3_new" );
                wait 1.75;
                break;
            case 3:
                self playsound( "mortar_incoming4_new" );
                wait 1.75;
                break;
            default:
                wait 1.75;
                break;
        }
    }
}
