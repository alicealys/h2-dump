// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    set_level_lighting_values();
    level.blizzard_sunflare_threadid = undefined;
}

set_level_lighting_values()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_id_CFFA( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        return;

    thread _id_BB4E();

    switch ( var_0 )
    {
        case "climbing":
            var_3 = "cliffhanger";
            var_4 = "cliffhanger";
            var_5 = "cliffhanger";
            var_6 = 2;
            var_7 = 0;
            var_8 = 4.5;
            var_9 = undefined;
            var_10 = 0;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            break;
        case "climbing_up":
            var_3 = "cliffhanger_climbing_up";
            var_4 = "cliffhanger_climbing_up";
            var_5 = "cliffhanger_climbing_up";
            var_6 = 2;
            var_7 = 0;
            var_8 = 4;
            var_9 = undefined;
            var_10 = 0;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            break;
        case "snowmobile":
            var_3 = "cliffhanger_snowmobile";
            var_4 = "cliffhanger_snowmobile";
            var_5 = "cliffhanger_snowmobile";
            var_6 = 1;
            var_7 = 0;
            var_8 = 4.5;
            var_9 = undefined;
            var_10 = 0.4;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            thread _id_B36C( 1 );
            break;
        case "light":
            var_3 = "cliffhanger_blizzard_light";
            var_4 = "cliffhanger_blizzard_light";
            var_5 = "cliffhanger_blizzard_light";
            var_6 = 1;
            var_7 = 0;
            var_8 = 3.5;
            var_9 = undefined;
            var_10 = 0.4;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            thread _id_B36C( 1 );
            _id_C106( "goggle_snowflakes_level1" );
            break;
        case "med":
            var_3 = "cliffhanger_blizzard_med";
            var_4 = "cliffhanger_blizzard_med";
            var_5 = "cliffhanger_blizzard_med";
            var_6 = 1;
            var_7 = 0;
            var_8 = 2.5;
            var_9 = undefined;
            var_10 = 0.6;
            var_11 = 8000;
            var_12 = 15;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            thread _id_B36C( 0 );
            _id_C106( "goggle_snowflakes_level2" );
            break;
        case "hard":
            var_3 = "cliffhanger_blizzard_heavy";
            var_4 = "cliffhanger_blizzard_heavy";
            var_5 = "cliffhanger_blizzard_heavy";
            var_6 = 1;
            var_7 = 0;
            var_8 = 2.0;
            var_9 = undefined;
            var_10 = 0.9;

            if ( common_scripts\utility::flag( "blizzard_cull_distance" ) )
                var_11 = 4000;
            else
                var_11 = 8000;

            var_12 = 2;
            var_13 = 0;
            var_14 = 0;
            var_15 = 1;
            thread _id_B36C( 0 );
            _id_C106( "goggle_snowflakes_level3" );
            break;
        case "extreme":
            var_3 = "cliffhanger_blizzard_extreme";
            var_4 = "cliffhanger_blizzard_extreme";
            var_5 = "cliffhanger_blizzard_extreme";
            var_6 = 1.5;
            var_7 = 0;
            var_8 = 0.3;
            var_9 = undefined;
            var_10 = 1.0;
            var_11 = 4000;
            var_12 = 1;
            var_13 = 1;
            var_14 = 0;
            var_15 = 1;
            thread _id_B36C( 0 );
            break;
        default:
            var_3 = "cliffhanger";
            var_4 = "cliffhanger";
            var_5 = "cliffhanger";
            var_6 = 2;
            var_7 = 1;
            var_8 = 4.5;
            var_9 = undefined;
            var_10 = 0;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            break;
        case "heavy_building":
            var_3 = "cliffhanger_blizzard_heavy";
            var_4 = "cliffhanger_blizzard_heavy";
            var_5 = "cliffhanger_blizzard_heavy";
            var_6 = 1;
            var_7 = 0;
            var_8 = 2.0;
            var_9 = undefined;
            var_10 = 0.9;

            if ( common_scripts\utility::flag( "blizzard_cull_distance" ) )
                var_11 = 4000;
            else
                var_11 = 8000;

            var_12 = 2;
            var_13 = 0;
            var_14 = 0;
            var_15 = 0;
            thread _id_B36C( 0 );
            _id_C106( "goggle_snowflakes_level3" );
            break;
    }

    if ( !isdefined( var_1 ) )
        var_1 = var_6;

    _id_C0CF::_id_BEFF();
    thread _id_C0CF::_id_B90F( var_0, var_1 );

    if ( getdvar( "r_useCheatPostFX" ) != "Edge Detect" )
    {
        maps\_utility::set_vision_set( var_4, var_1 );
        thread _id_C0CF::_id_C674( var_12, var_11 );

        if ( isdefined( var_2 ) )
            maps\_utility::fog_set_changes( var_3, var_2 );
        else
            maps\_utility::fog_set_changes( var_3, var_1 );
    }

    _func_45( var_13 );

    if ( var_14 )
        common_scripts\utility::flag_set( "pause_blizzard_ground_fx" );
    else if ( var_15 )
        common_scripts\utility::flag_clear( "pause_blizzard_ground_fx" );

    level.player maps\_utility::_id_BF21( var_5 );

    if ( var_7 )
        _func_48();
    else if ( isdefined( var_8 ) )
        thread _id_C0CF::_id_D4AC( var_8, var_1 );

    _id_C0CF::_id_D2C3( var_1, var_10 );

    if ( isdefined( var_9 ) )
        level.player _meth_849F( var_9, var_1 );

    if ( getdvarint( "blizzard_light_debug" ) == 1 )
        iprintln( "blizzard vision transition to :  " + var_0 );

    level._id_B553 = var_0;
}

_id_BB4E()
{
    if ( isdefined( level._id_D49C ) )
        return;

    level._id_D49C = 1;
    var_0 = ( 0, 180, 0 );
    var_1 = undefined;

    for (;;)
    {
        if ( level._id_C9AC && !common_scripts\utility::flag( "player_indoors" ) )
        {
            var_2 = vectornormalize( anglestoforward( level.player.angles ) );
            var_3 = vectornormalize( anglestoforward( var_0 ) );
            var_4 = vectordot( var_2, var_3 );
            var_5 = var_4 < -0.5;
        }
        else
            var_5 = 0;

        var_6 = isdefined( var_1 );

        if ( var_5 )
        {
            if ( !var_6 )
            {
                var_1 = spawnfx( level._effect["vfx_screen_google_snowflakes_addon"], level.player.origin );
                triggerfx( var_1 );
            }
        }
        else if ( var_6 )
            var_1 delete();

        waitframe();
    }
}

_id_B36C( var_0 )
{
    if ( isdefined( level.blizzard_sunflare_threadid ) )
        return;

    level.blizzard_sunflare_threadid = thisthread;

    if ( !isdefined( level._id_C115 ) )
        level._id_C115 = maps\_utility::_id_BC6C( "fx_sunflare_cliffhanger" );

    if ( var_0 )
        level._id_C115 maps\_utility::restarteffect();
    else
    {
        var_1 = 1;
        var_2 = ( 0, 0, 0 );
        var_3 = ( 0, 0, 0 );

        while ( var_1 )
        {
            wait 0.5;
            var_4 = level.player getplayerangles();
            var_2 = vectornormalize( anglestoforward( var_4 ) );
            var_3 = vectornormalize( level._id_C115.v["origin"] - level.player.origin );

            if ( vectordot( var_2, var_3 ) < 0 )
                var_1 = 0;
        }

        level._id_C115 common_scripts\utility::pauseeffect();
    }
}

_id_BD86()
{
    level endon( "goggle_remove" );
    var_0 = "";

    for (;;)
    {
        level waittill( "goggle_fx_change" );

        if ( !level._id_C9AC || var_0 == level._id_CD5D )
            continue;

        if ( isdefined( level._id_AFBC ) )
            level._id_AFBC delete();

        if ( !common_scripts\utility::flag( "starting_hanger_backdoor_path" ) )
        {
            level._id_AFBC = spawnfx( level._effect[level._id_CD5D], level.player.origin );
            triggerfx( level._id_AFBC );
        }

        var_0 = level._id_CD5D;
    }
}

_id_C106( var_0 )
{
    level._id_CD5D = var_0;
    level notify( "goggle_fx_change" );
}

_id_AB73()
{
    level endon( "player_gets_on_snowmobile" );
    var_0 = "cliffhanger_snowmobile";
    var_1 = "cliffhanger_snowmobile";
    var_2 = "cliffhanger_snowmobile";

    for (;;)
    {
        level waittill( "player_indoors", var_3, var_4 );
        var_5 = var_4.script_noteworthy;
        var_6 = var_4.script_noteworthy;
        var_7 = 1;

        if ( var_4.script_noteworthy == "cliffhanger_snowmobile_int" )
            var_7 = 0;

        if ( isdefined( var_4.script_parameters ) && isdefined( level.vision_set_fog[var_4.script_parameters] ) )
            var_8 = var_4.script_parameters;
        else
            var_8 = var_4.script_noteworthy;

        _id_B118( var_6, var_5, var_8, var_7 );

        while ( common_scripts\utility::flag( "player_indoors" ) )
        {
            if ( level.player._id_B636 != var_6 )
            {
                if ( !common_scripts\utility::flag( "acs_picked_up" ) )
                    _id_B118( var_6, var_5, var_8 );
            }

            _id_C106( "goggle_meltingfrost" );
            waitframe();
        }

        if ( getdvarint( "blizzard_light_debug" ) == 1 )
            iprintlnbold( "blizzard is now outdoor" );

        if ( !common_scripts\utility::flag( "acs_picked_up" ) )
        {
            _id_CFFA( level._id_B553, 3 );
            continue;
        }

        _id_B118( var_2, var_1, var_0 );
    }
}

_id_B118( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_2 ) )
        maps\_utility::fog_set_changes( var_2, var_3 );

    if ( isdefined( var_1 ) )
        maps\_utility::set_vision_set( var_1, 0.5 );

    if ( isdefined( var_0 ) )
        level.player maps\_utility::_id_BF21( var_0 );

    _id_C0CF::_id_D2C3( 0.5, 0.0 );
}
