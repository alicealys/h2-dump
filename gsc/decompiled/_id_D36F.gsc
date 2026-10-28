// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
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
    level._id_AA72 = ( 0.8, 2, 0.8 );
    level._id_AF8D = ( 0.3, 0.6, 0.3 );
    level._id_C397 = [];
    _id_D0C8();
    level._id_C513 = [];
    level._id_C579 = 10;
    level._id_B7DF = [];
    level._id_D5A5 = 0;
    level._id_C140 = 0;
    level._id_D2E1 = 0;
    level._id_BC64 = 1;
    common_scripts\utility::flag_init( "arcadeMode_multiplier_maxed" );
    setdvar( "arcademode_lives_changed", 0 );
    level._id_C04D = 1;
    level._id_C1DA = 3;
    _id_B912();

    for ( var_0 = 0; var_0 < level._id_C579; var_0++ )
        setdvar( "arcademode_checkpoint_" + var_0, "" );

    level._id_C4BB = 0;
    level._id_AC81 = 0;
    _id_D0A2();
    common_scripts\utility::flag_init( "arcademode_complete" );
    common_scripts\utility::flag_init( "arcademode_ending_complete" );
    waittillframeend;

    if ( getdvar( "arcademode_full" ) == "1" )
        precacheleaderboards( "LB_AM_FULLCHALLENGE" );
    else
        precacheleaderboards( "LB_AM_" + level.script );

    level.global_kill_func = ::_id_CCB5;
    level.global_damage_func_ads = ::_id_C3EB;
    level.global_damage_func = ::player_damage;
    level._id_BB12 = 50;
    level._id_A81C = 10;
    level._id_C4EA = 0;

    if ( getdvar( "arcademode_lives" ) == "" || getdvar( "arcademode_full" ) != "1" || level.script == "cargoship" )
    {
        setdvar( "arcademode_lives", 2 );
        level._id_C4EA = 2;
    }

    if ( getdvar( "arcademode_full" ) == "1" && level.script == "cargoship" )
    {
        setdvar( "arcademode_lives", 5 );
        level._id_C4EA = 5;
    }

    var_1 = getdvarint( "arcademode_lives" );
    setdvar( "arcademode_earned_lives", var_1 );
    level._id_CF09 = getdvarint( "arcademode_playthrough_count" );
    level._id_CF09++;
    setdvar( "arcademode_playthrough_count", level._id_CF09 );
    setdvar( "arcademode_died", 0 );
    setdvar( "arcademode_score", 0 );

    if ( getdvar( "arcademode_combined_score" ) == "" || getdvar( "arcademode_full" ) == "1" && level.script == "cargoship" )
        setdvar( "arcademode_combined_score", 0 );

    var_2 = _id_B2B2();
    var_2 *= 60;
    level._id_C08A = gettime();
    level._id_C65D = var_2;
    level._id_BFD4 = 50;
    level._id_AFDB = 5;
    level._id_D532 = [];
    var_3 = getarraykeys( level._id_CFF3 );

    for ( var_0 = 0; var_0 < var_3.size; var_0++ )
        level._id_D532[var_3[var_0]] = [];

    var_4 = level._id_D532;
    thread _id_BBD6();
    thread _id_BAB4();
    thread _id_CBE2();
    thread _id_A805();
    _id_D19A( var_1 );

    for (;;)
    {
        wait 0.05;
        waittillframeend;
        waittillframeend;
        var_3 = getarraykeys( level._id_D532 );
        common_scripts\utility::array_levelthread( var_3, ::_id_C4D4 );
        level._id_D532 = var_4;
    }
}

_id_C3A9()
{
    if ( getdvar( "arcademode" ) != "1" )
        return 0;

    return common_scripts\utility::flag( "arcademode_complete" );
}

_id_B2B2()
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

    if ( isdefined( var_1[level.script] ) )
        var_0 = var_1[level.script];

    level._id_AEA5 = var_2;
    return var_0;
}

_id_A805()
{
    level endon( "arcademode_complete" );
    level maps\_utility::add_wait( common_scripts\utility::flag_wait, "missionfailed" );
    level.player maps\_utility::add_wait( maps\_utility::waittill_msg, "death" );
    maps\_utility::do_wait_any();
    setdvar( "arcademode_died", 1 );
    var_0 = getdvarint( "arcademode_lives" );
    var_1 = getdvarint( "arcademode_earned_lives" );

    if ( var_0 > var_1 )
        var_0 = var_1;

    var_0 -= 1;
    setdvar( "arcademode_lives", var_0 );
    setdvar( "arcademode_lives_changed", -1 );
    _id_D19A( var_0 + 1 );
    level._id_AC3A = 1;
    _id_D1B5();

    if ( var_0 < 0 )
    {
        wait 1.5;
        level._id_A9B4 = &"SCRIPT_GAME_OVER";
        thread _id_AF95();
        return;
    }

    if ( isalive( level.player ) )
        missionfailed();
}

_id_CBE2()
{
    level.player endon( "death" );
    var_0 = newhudelem();
    var_0.foreground = 1;
    var_0.alignx = "right";
    var_0.aligny = "top";
    var_0.horzalign = "right";
    var_0.vertalign = "top";
    var_0.x = -21.6667;
    var_0.y = 38.9778;
    var_0.sort = level._id_BB12;
    var_0.fontscale = 1.5;
    var_0.color = ( 1, 1, 1 );
    var_0.font = "objective";
    var_0 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_0.hidewheninmenu = 1;
    level.arcademode_hud_timer = var_0;
    level endon( "arcadeMode_remove_timer" );
    var_1 = level._id_C65D;
    var_0 settimer( var_1 - 0.1 );
    wait( var_1 );
    level._id_A9B4 = &"SCRIPT_TIME_UP";
    thread _id_AF95();
    soundscripts\_snd::snd_message( "player_death" );
}

_id_BBD6()
{
    level.player endon( "death" );
    level endon( "missionfailed" );
    level._id_C285 = [];

    for ( var_0 = 0; var_0 < level._id_A81C; var_0++ )
        _id_B88D( var_0, -28.6667, 68.6667, -14, 64, level._id_BB12 );

    for (;;)
    {
        var_1 = getdvarint( "arcademode_lives_changed" );

        if ( var_1 != 0 )
        {
            var_2 = getdvarint( "arcademode_lives" );

            if ( var_2 < 0 )
            {
                level._id_A9B4 = &"SCRIPT_GAME_OVER";
                thread _id_AF95();
                return;
            }

            if ( var_1 == -1 )
            {
                level notify( "lost_streak" );
                level._id_D5A5 = gettime();
                thread _id_D315( 0 );
                level._id_BC64 = 0;
                var_3 = getdvarint( "arcademode_earned_lives" );
                var_3--;
                var_2 = var_3;
                setdvar( "arcademode_earned_lives", var_3 );
                setdvar( "arcademode_lives", var_3 );
                level.player thread common_scripts\utility::play_sound_in_space( "h1_arcademode_life_lost", level.player geteye() );
            }

            _id_D19A( var_2 );
            level._id_AC3A = 1;
            setdvar( "arcademode_lives_changed", 0 );
        }

        wait 0.05;
    }
}

_id_CD3A()
{
    var_0 = getdvarint( "arcademode_lives" );
    var_1 = getdvarint( "arcademode_earned_lives" );

    if ( var_0 > var_1 )
        thread _id_B0D1( var_0 - var_1 );

    setdvar( "arcademode_earned_lives", var_0 );
    thread _id_D19A( var_0 );
    return var_0 > var_1;
}

_id_C5AF()
{
    if ( !maps\_utility::arcademode() )
        return;

    _id_CD3A();
    var_0 = 800;
    var_1 = 0.8;
    level.player thread common_scripts\utility::play_sound_in_space( "arcademode_checkpoint", level.player geteye() );
    thread _id_AA6A( 0, var_1, 1 );
    thread _id_A85B( 0, var_1, 1 );
    thread _id_BBB5();
}

_id_BC7A( var_0, var_1, var_2, var_3 )
{
    var_4 = newhudelem();
    var_4.foreground = 1;
    var_4.x = var_1 + var_0 * var_3 - 10;
    var_4.y = var_2 + 10;
    var_4 setshader( "h1_arcademode_lives_earned_flare", 26, 26 );
    var_4.alignx = "center";
    var_4.aligny = "middle";
    var_4.horzalign = "right";
    var_4.vertalign = "top";
    var_4.sort = level._id_BB12 + 10 - 1;
    var_4.alpha = 0;
    var_4.hidewheninmenu = 1;
    var_4 fadeovertime( 0.05 );
    var_4.alpha = 0.4;
    wait 0.05;
    var_4 scaleovertime( 0.15, 52, 52 );
    wait 0.15;
    var_4 destroy();
}

_id_CDEA( var_0, var_1 )
{
    if ( var_0 >= var_1 )
    {
        self setshader( "arcademode_life_empty", 20, 20 );
        self.empty = 1;
    }
    else
    {
        if ( isdefined( self.empty ) && self.empty )
            thread _id_BC7A( var_0, -18.6667, 58.6667, -14 );

        self setshader( "arcademode_life", 20, 20 );
        self.empty = 0;
    }

    self fadeovertime( 1 );
    self.alpha = 1;
    self.color = ( 1, 1, 1 );
}

_id_AEE0( var_0 )
{
    if ( self.alpha <= 0 )
        return;

    self fadeovertime( 1 );
    self.alpha = 0;
    self.color = ( 1, 0, 0 );
    self.glowalpha = 0;
    self.empty = 0;
}

_id_D13E( var_0 )
{
    if ( self.alpha <= 0 )
        return;

    self fadeovertime( 0.15 );
    self.alpha = 0;
    self scaleovertime( 0.15, 40, 40 );
}

_id_D19A( var_0 )
{
    if ( var_0 > 10 )
        var_0 = 10;

    var_1 = getdvarint( "arcademode_earned_lives" );

    for ( var_2 = 0; var_2 < var_0; var_2++ )
        level._id_C285[var_2] _id_CDEA( var_2, var_1 );

    for ( var_2 = var_0; var_2 < level._id_A81C; var_2++ )
    {
        if ( var_2 < 0 )
            continue;

        if ( var_2 >= 10 )
            continue;

        if ( level._id_AC81 )
        {
            level._id_C285[var_2] _id_D13E( var_2 );
            continue;
        }

        level._id_C285[var_2] _id_AEE0( var_2 );
    }
}

_id_A854()
{
    for (;;)
    {
        level common_scripts\utility::waittill_either( "arcademode_decrement_kill_streak", "arcademode_new_kill" );
        waittillframeend;
        _id_A9D8();
    }
}

_id_A9D8()
{
    for ( var_0 = 0; var_0 < level._id_BD3E; var_0++ )
    {
        if ( var_0 >= level._id_B7DF.size )
            return;

        level._id_B7DF[var_0].color = level._id_B851[level._id_C04D - 1];
        level._id_B7DF[var_0].glowcolor = level._id_C528[level._id_C04D - 1];
    }

    var_1 = 0;

    for (;;)
    {
        var_2 = level._id_C04D + var_1;

        if ( var_2 >= level._id_B851.size )
            var_2 = level._id_B851.size - 1;

        for ( var_0 = level._id_BD3E + var_1 * level._id_C1DA; var_0 < level._id_BD3E + ( var_1 + 1 ) * level._id_C1DA; var_0++ )
        {
            if ( var_0 >= level._id_B7DF.size )
                return;

            level._id_B7DF[var_0].color = level._id_B851[var_2];
            level._id_B7DF[var_0].glowcolor = level._id_C528[var_2];
        }

        var_1++;
    }
}

_id_BABE( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level endon( "arcademode_stop_kill_streak_art" );
    var_6 = newhudelem();
    var_6.foreground = 1;
    var_6.x = var_1 + var_0 * var_3;

    if ( level._id_B7DF.size == 0 )
        level._id_C314 = var_6.x;

    var_6.y = var_2;
    var_6 setshader( "arcademode_kill", var_4, var_4 );
    var_6.alignx = "right";
    var_6.aligny = "top";
    var_6.horzalign = "right";
    var_6.vertalign = "top";
    var_6.sort = var_5;
    var_6.color = level._id_AA72;
    var_6.glowcolor = level._id_AF8D;
    var_6.glowalpha = 1;
    var_6.hidewheninmenu = 1;
    var_7 = 0;
    level._id_B7DF[level._id_B7DF.size] = var_6;

    if ( level._id_B7DF.size == 10 )
    {
        var_7 = 1;
        var_6.alpha = 0;
    }
    else
        var_6.alpha = 1;

    for (;;)
    {
        if ( var_6.x == level._id_C314 )
        {
            var_8 = 4;

            if ( level._id_B7DF.size == 1 )
                wait 3;

            var_6 fadeovertime( var_8 );
            var_6.color = ( 1, 0, 0 );
            var_6.alpha = 0;
            wait( var_8 );
            level notify( "arcademode_decrement_kill_streak" );
            var_6 destroy();

            for ( var_9 = 0; var_9 < level._id_B7DF.size - 1; var_9++ )
                level._id_B7DF[var_9] = level._id_B7DF[var_9 + 1];

            level._id_B7DF[level._id_B7DF.size - 1] = undefined;

            if ( !level._id_B7DF.size )
                thread _id_B912();

            return;
        }

        level waittill( "arcademode_decrement_kill_streak" );
        wait 0.05;
        var_6 moveovertime( 0.5 );
        var_6.x -= var_3;

        if ( var_7 )
        {
            var_6 fadeovertime( 0.5 );
            var_6.alpha = 1;
            var_7 = 0;
        }
    }
}

_id_D515( var_0, var_1, var_2, var_3 )
{
    var_4 = newhudelem();
    var_4.foreground = 1;
    var_4.x = var_0 + -4;
    var_4.y = var_1 + 14;
    var_4.alignx = "right";
    var_4.aligny = "top";
    var_4.horzalign = "right";
    var_4.vertalign = "top";
    var_4.color = level._id_AA72;
    var_4.sort = level._id_BB12 - 1;
    var_4.alpha = 0;
    var_4.glowcolor = level._id_AF8D;
    var_4.glowalpha = 0;
    var_4.hidewheninmenu = 1;
    var_4 setshader( "white", var_2, var_3 );
    return var_4;
}

_id_D315( var_0 )
{
    if ( !level._id_BC64 )
        return;

    level notify( "arcademode_new_kill_streak_time" );
    level endon( "arcademode_new_kill_streak_time" );

    if ( level._id_D5A5 < gettime() )
        level._id_D5A5 = gettime() + var_0 * 1000;
    else
        level._id_D5A5 += var_0 * 1000;

    waittillframeend;

    if ( isdefined( level._id_CAF7 ) )
    {
        level._id_CAF7 fadeovertime( 0.05 );
        level._id_CAF7.alpha = 1;
    }

    var_1 = 26;
    var_2 = 12;
    var_3 = 90;
    var_4 = level._id_D362;
    var_5 = level._id_D025;
    var_6 = level._id_D5A5 - gettime();
    var_6 *= 0.001;

    if ( var_6 > var_3 )
        var_6 = var_3;

    var_6 *= var_2;
    var_6 = int( var_6 );

    if ( var_6 > 980 )
        var_6 = 980;

    if ( !isdefined( var_4 ) )
    {
        var_4 = _id_D515( 0, 0, var_6, var_1 );
        var_5 = _id_D515( 3, 3, var_6, var_1 );
        var_5.sort -= 1;
        var_5.alpha = 0.0;
        var_5.color = ( 0, 0, 0 );
    }
    else
    {
        var_4 scaleovertime( 1, var_6, var_1 );
        var_5 scaleovertime( 1, var_6, var_1 );
        wait 1;
    }

    level._id_D362 = var_4;
    level._id_D025 = var_5;
    var_4 endon( "death" );
    var_0 = level._id_D5A5 - gettime();
    var_0 *= 0.001;
    var_7 = int( var_0 );

    if ( var_7 > var_3 )
    {
        var_7 = var_3;
        wait( var_0 - var_7 );
    }

    for (;;)
    {
        var_6 = level._id_D5A5 - gettime();
        var_6 *= 0.001;
        var_8 = var_6;

        if ( isdefined( level._id_CAF7 ) )
        {
            level._id_CAF7 fadeovertime( 1 );
            level._id_CAF7.alpha = ( var_8 - 1 ) / 5;
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

    thread _id_B912();
}

_id_BD56()
{
    if ( common_scripts\utility::flag( "arcadeMode_multiplier_maxed" ) )
        return;

    level endon( "arcadeMode_multiplier_maxed" );
    level endon( "arcademode_stop_kill_streak" );
    level._id_BD3E--;
    var_0 = gettime();

    if ( level._id_BD3E <= 0 && var_0 > level._id_C140 )
    {
        level._id_C140 = var_0;
        var_1 = level._id_C04D;
        level._id_C04D++;

        if ( level._id_C04D >= level._id_B851.size )
        {
            level._id_C04D = level._id_B851.size;
            thread _id_BD05();
        }

        if ( var_1 != level._id_C04D )
        {
            level notify( "arcademode_new_kill_streak" );
            level.player playsound( "arcademode_" + level._id_C04D + "x" );
            thread _id_B285();
        }

        level._id_BD3E = level._id_C1DA;
    }

    level notify( "arcademode_new_kill" );

    for (;;)
    {
        if ( level._id_B7DF.size < 10 )
        {
            _id_D315( 5 );
            return;
        }

        level waittill( "arcademode_decrement_kill_streak" );
    }
}

_id_AEA8()
{
    waittillframeend;
    waittillframeend;
    level._id_D362 endon( "death" );

    for (;;)
    {
        var_0 = randomfloatrange( 0.1, 1.0 );
        level._id_D362 fadeovertime( var_0 );
        level._id_D362.color = ( randomfloat( 1 ), randomfloat( 1 ), randomfloat( 1 ) );
        wait( var_0 );
    }
}

_id_BD05()
{
    waittillframeend;

    if ( common_scripts\utility::flag( "arcadeMode_multiplier_maxed" ) )
        return;

    common_scripts\utility::flag_set( "arcadeMode_multiplier_maxed" );
    var_0 = 20;
    level._id_D5A5 = gettime() + var_0 * 1000;
    thread _id_D315( 0 );
    thread _id_AEA8();
    musicstop();
    wait 0.05;
    musicplay( "airplane_alt_maximum_music" );
    level maps\_utility::add_wait( maps\_utility::_wait, var_0 + 1 );
    level maps\_utility::add_wait( maps\_utility::waittill_msg, "lost_streak" );
    maps\_utility::do_wait_any();
    thread _id_B912();
    musicstop();

    if ( isdefined( level.last_song ) )
    {
        wait 0.05;
        musicplay( level.last_song );
    }
}

_id_CFF9( var_0, var_1, var_2 )
{
    var_3 = _id_BF5E( "right", 0.1, -5.16667, 3.22222 );
    var_3 setshader( "h1_arcademode_scanelines_border", 50, 50 );
    var_3.alignx = "right";
    var_3.aligny = "top";
    var_3.horzalign = "right";
    var_3.vertalign = "top";
    var_3.sort = -100;
    var_3.alpha = 1.0;
    return var_3;
}

_id_BE09()
{
    var_0 = newhudelem();
    var_0.foreground = 1;
    var_0.x = 0;
    var_0.y = 10.2222;
    var_0.alignx = "right";
    var_0.aligny = "top";
    var_0.horzalign = "right";
    var_0.vertalign = "top";
    var_0.score = 0;
    var_0.font = "objective";
    var_0.fontscale = 2.8;
    var_0.sort = level._id_BB12;
    var_0 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_0.hidewheninmenu = 1;
    return var_0;
}

_id_BAB4()
{
    level.player endon( "death" );
    level._id_BAE7 = 10;
    level._id_B12D = [];

    for ( var_0 = 0; var_0 < level._id_BAE7; var_0++ )
    {
        level._id_B12D[level._id_B12D.size] = _id_BE09();
        level._id_B12D[level._id_B12D.size - 1].x = var_0 * -17 + -21.6667;
    }

    level._id_B1D0 = _id_CFF9();

    if ( getdvarint( "arcademode_full" ) )
        var_1 = getdvarint( "arcademode_combined_score" );
    else
        var_1 = getdvarint( "arcademode_score" );

    _id_BC22( var_1 );
    level._id_AC3A = 0;

    for (;;)
    {
        wait 0.05;
        _id_D1B5();

        if ( level._id_AC3A )
            level._id_AC3A = 0;
    }
}

_id_D1B5()
{
    if ( getdvarint( "arcademode_full" ) )
        _id_AE6F( "arcadeMode_combined_score" );
    else
        _id_AE6F( "arcademode_score" );
}

_id_AE6F( var_0 )
{
    var_1 = getdvarint( var_0 );

    if ( level._id_AC3A )
    {
        level._id_D2E1 = var_1;
        _id_BC22( var_1 );
        return;
    }

    if ( level._id_D2E1 >= var_1 )
        return;

    var_2 = var_1 - level._id_D2E1;
    var_3 = var_2 * 0.2 + 1;

    if ( var_2 <= 15 )
        var_3 = 1;

    level._id_D2E1 += var_3;

    if ( level._id_D2E1 > var_1 )
        level._id_D2E1 = var_1;

    _id_BC22( int( level._id_D2E1 ) );
}

_id_C505( var_0 )
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

_id_BC22( var_0 )
{
    _id_B450( var_0, level._id_B12D );
}

_id_B450( var_0, var_1 )
{
    var_2 = _id_C505( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_3 >= var_1.size - 1 )
            break;

        var_1[var_3] setvalue( var_2[var_3] );
        var_1[var_3].alpha = 1;
    }

    for ( var_3 = var_2.size; var_3 < var_1.size; var_3++ )
        var_1[var_3].alpha = 0;

    if ( var_0 == 0 )
    {
        var_1[0].alpha = 1;
        var_1[0] setvalue( 0 );
    }

    level._id_B1D0 setshader( "h1_arcademode_scanelines_border", 50 + ( var_2.size - 1 ) * 22, 50 );
    level._id_B1D0.x = -5.16667 + ( var_2.size - 1 ) * 2.4;

    if ( !common_scripts\utility::flag( "arcademode_complete" ) )
        level.player thread common_scripts\utility::play_sound_in_space( "h1_arcademode_add_counter_pt", level.player geteye() );
}

_id_C9EA( var_0, var_1 )
{
    var_2 = _id_C505( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_3 >= var_1.size - 1 )
            break;

        var_1[var_1.size - var_2.size + var_3] setvalue( var_2[var_3] );
        var_1[var_1.size - var_2.size + var_3].alpha = 1;
    }

    for ( var_3 = var_1.size - var_2.size - 1; var_3 >= 0; var_3-- )
        var_1[var_3].alpha = 0;

    if ( var_0 == 0 )
    {
        var_1[var_1.size - 1].alpha = 1;
        var_1[var_1.size - 1] setvalue( 0 );
    }
}

_id_B88D( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = newhudelem();
    var_6.foreground = 1;
    var_6.x = var_1 + var_0 * var_3;
    var_6.y = var_2;
    var_6 setshader( "arcademode_life", var_4, var_4 );
    var_6.alignx = "center";
    var_6.aligny = "middle";
    var_6.horzalign = "right";
    var_6.vertalign = "top";
    var_6.sort = var_5;
    var_6.color = ( 1, 1, 1 );
    var_6.glowalpha = 0;
    var_6.alpha = 0;
    var_6.hidewheninmenu = 1;
    level._id_C285[level._id_C285.size] = var_6;
}

_id_D0A2()
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
    level._id_CFF3 = var_0;
    var_1 = [];
    var_1["melee"] = 80;
    var_1["pistol"] = 0;
    var_1["rifle"] = 0;
    var_1["explosive"] = 0;
    level._id_BE04 = var_1;
    var_2 = [];
    var_2["MOD_MELEE"] = "melee";
    var_2["MOD_PISTOL_BULLET"] = "pistol";
    var_2["MOD_RIFLE_BULLET"] = "rifle";
    var_2["MOD_PROJECTILE"] = "explosive";
    var_2["MOD_PROJECTILE_SPLASH"] = "explosive";
    var_2["MOD_EXPLOSIVE"] = "explosive";
    var_2["MOD_GRENADE"] = "explosive";
    var_2["MOD_GRENADE_SPLASH"] = "explosive";
    level._id_AF3E = var_2;
    var_3 = [];
    var_3["melee"] = ( 1, 0, 1 );
    var_3["pistol"] = ( 0, 1, 0 );
    var_3["rifle"] = ( 1, 1, 0 );
    var_3["explosive"] = ( 0, 1, 1 );
    level._id_AE6E = var_3;
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
    level._id_C8CE = var_4;
    var_5 = [];
    var_5[0] = 1;
    var_5[1] = 1.5;
    var_5[2] = 3;
    var_5[3] = 4;
    level._id_A9CF = var_5;
    var_6 = [];
    var_6[0] = 9000;
    var_6[1] = 9000;
    var_6[2] = 7000;
    var_6[3] = 6000;
    var_6[0] = 40;
    var_6[1] = 30;
    var_6[2] = 25;
    var_6[3] = 20;
    level._id_B438 = 10;
    level._id_B468 = var_6;
    var_7 = [];

    for ( var_8 = 0; var_8 < 4; var_8++ )
        var_7[var_8] = var_6[var_8] * 0.15;

    level._id_B718 = var_7;
}

_id_CBB7( var_0 )
{

}

_id_BF5E( var_0, var_1, var_2, var_3 )
{
    var_4 = newhudelem();
    var_4.foreground = 1;
    var_4.x = var_2;
    var_4.y = var_3;
    var_4.alignx = var_0;
    var_4.aligny = "middle";
    var_4.horzalign = var_0;
    var_4.vertalign = "middle";
    var_4.fontscale = 3;

    if ( getdvar( "widescreen" ) == "1" )
        var_4.fontscale = 5;

    var_4.color = ( 0.8, 1, 0.8 );
    var_4.font = "objective";
    var_4.glowcolor = ( 0.3, 0.6, 0.3 );
    var_4.glowalpha = 1;
    var_4.alpha = 0;
    var_4 fadeovertime( var_1 );
    var_4.alpha = 1;
    var_4.hidewheninmenu = 1;
    var_4.sort = level._id_BB12 + 10;
    level._id_C397[level._id_C397.size] = var_4;
    return var_4;
}

_id_C9D9()
{
    var_0 = _id_BF5E( "center", 0.001, 0, 97.7778 );
    var_0 setshader( "h1_arcademode_livesmessage_border", 210, 112 );
    var_0.sort = level._id_BB12 + 10 - 1;
    var_0.vertalign = "top_adjustable";
    var_0.alpha = 0;
    var_0 fadeovertime( 0.15 );
    var_0.alpha = 1;
    wait 0.15;
    var_0 fadeovertime( 0.1 );
    var_0.alpha = 0;
    wait 0.1;
    var_0 fadeovertime( 0.1 );
    var_0.alpha = 1;
    wait 0.1;
    wait 1.2;
    var_0 fadeovertime( 0.1 );
    var_0.alpha = 0;
    wait 0.1;
    var_0 destroy();
}

_id_C68C()
{
    var_0 = _id_BF5E( "center", 0.001, 0, 97.7778 );
    var_0 setshader( "h1_arcademode_lives_message_flare", 145, 26 );
    var_0.sort = level._id_BB12 + 10 + 1;
    var_0.vertalign = "top_adjustable";
    var_0.alpha = 0;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 0;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 0;
    wait 0.05;
    wait 0.1;
    var_0 fadeovertime( 0.15 );
    var_0.alpha = 1;
    wait 0.15;
    var_0 fadeovertime( 0.1 );
    var_0.alpha = 0;
    wait 0.1;
    wait 2.1;
    var_0 destroy();
}

_id_B0D1( var_0 )
{
    wait 0.5;
    level.player thread common_scripts\utility::play_sound_in_space( "arcademode_extralife", level.player geteye() );
    var_1 = _id_BF5E( "center", 0.001, 0, 97.7778 );
    var_1.fontscale = 1.7;
    var_1.vertalign = "top_adjustable";
    var_1 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.5, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_1.label = &"SCRIPT_EXTRA_LIFE";
    var_1 setvalue( var_0 );
    thread _id_C9D9();
    thread _id_C68C();
    var_1.alpha = 0;
    wait 0.4;
    var_1 fadeovertime( 0.15 );
    var_1.alpha = 1;
    wait 0.15;
    wait 1.0;
    var_1 fadeovertime( 0.1 );
    var_1.alpha = 0;
    wait 0.1;
    var_1 destroy();
}

fade_out( var_0 )
{
    self fadeovertime( var_0 );
    self.alpha = 0;
    wait( var_0 );
    self destroy();
}

_id_BA63()
{
    var_0 = _id_BF5E( "center", 0.2, 0, -100 );
    var_0.alpha = randomfloatrange( 0.1, 0.45 );
    var_0.sort -= 1;
    var_0 settext( &"SCRIPT_EXTRA_LIFE" );
    var_0 maps\_utility::delaythread( 3, ::fade_out, 1 );
    var_0 endon( "death" );
    var_1 = var_0.x;
    var_2 = var_0.y;
    var_3 = 20;

    for (;;)
    {
        var_4 = randomfloatrange( 0.1, 0.2 );
        var_0 moveovertime( var_4 );
        var_0.x = var_1 + randomfloatrange( var_3 * -1, var_3 );
        var_0.y = var_2 + randomfloatrange( var_3 * -1, var_3 );
        wait( var_4 );
    }
}

_id_C756( var_0 )
{
    var_1 = var_0 - var_0 % 5;

    if ( var_1 < var_0 )
        var_1 += 5;

    return var_1;
}

_id_B189( var_0, var_1, var_2, var_3 )
{
    if ( var_3 <= 0 )
        return;

    if ( isdefined( level._id_AF3E[var_2] ) )
        var_2 = level._id_AF3E[var_2];

    var_3 = int( var_3 );
    var_3 = _id_C756( var_3 );
    var_3 *= level._id_C04D;
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
        thread _id_BD56();
        thread _id_D029();
        var_9 = level._id_AE6E[var_2];
    }

    level.player _id_A7FE( var_3 );
}

_id_D029()
{
    level._id_B438 -= 1;

    if ( level._id_B438 > 0 )
        return;

    level._id_C4EA++;
    var_0 = getdvarint( "arcademode_lives" );
    var_0++;

    if ( var_0 >= level._id_A81C )
        var_0 = level._id_A81C;
    else
    {
        setdvar( "arcademode_lives", var_0 );
        setdvar( "arcademode_lives_changed", 1 );
    }

    level._id_B438 = level._id_B468[level.gameskill];
}

_id_CDB9()
{
    var_0 = 60;
    var_1 = 90;

    if ( level.player._id_D3B2 > 0 )
    {
        if ( level.player._id_D3B2 == 1 )
        {
            var_2 = randomint( 1 );
            level.player._id_D5BC = 1 - var_2;

            if ( var_2 )
                var_1 = 45;
            else
                var_1 = 135;
        }
        else if ( level.player._id_D3B2 == 2 )
        {
            var_2 = level.player._id_D5BC;

            if ( var_2 )
                var_1 = 45;
            else
                var_1 = 135;
        }
        else if ( level.player._id_D3B2 <= 4 )
        {
            var_1 = randomfloatrange( 0, 180 );
            var_0 = randomfloatrange( 60, 120 );
        }
        else if ( level.player._id_D3B2 <= 8 )
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

    self.x = var_0 * cos( var_1 );
    self.y = 0 - var_0 * sin( var_1 );
}

_id_A7FE( var_0 )
{
    if ( var_0 == 0 )
        return;

    if ( !isdefined( level.player._id_CE4A ) )
    {
        level.player._id_CE4A = 0;
        level.player._id_D3B2 = 0;
    }

    if ( !common_scripts\utility::flag( "arcademode_complete" ) )
        level.player thread common_scripts\utility::play_sound_in_space( "h1_arcademode_pulse_score", level.player geteye() );

    var_1 = newhudelem();
    var_1.horzalign = "center";
    var_1.vertalign = "middle";
    var_1.alignx = "center";
    var_1.aligny = "middle";
    var_1 _id_CDB9();
    var_1.font = "objective";
    var_1.fontscale = 1.5;
    var_1.archived = 0;
    var_1.color = ( 1, 1, 1 );
    var_1.sort = 4;
    var_2 = level._id_C04D;
    level.player._id_CE4A++;
    level.player._id_D3B2++;
    wait 0.05;

    if ( var_0 <= 0 )
    {
        var_1.label = &"";
        var_1.color = ( 1, 0, 0 );
        var_1.glowcolor = ( 0, 0, 0 );
        var_1.glowalpha = 0;
    }
    else
    {
        var_1.label = &"SCRIPT_PLUS";
        var_1.color = ( 1, 1, 1 );
        var_1 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    }

    var_1 setvalue( var_0 );
    var_1.alpha = 1;
    var_3 = 4.0;
    var_4 = 0.025;
    var_5 = 1.5;
    var_6 = 0.2;
    var_1 changefontscaleovertime( var_4 );
    var_1.fontscale = var_3;
    wait 0.05;
    var_1 moveovertime( 1.75 );
    var_1.y -= 20;
    var_1 changefontscaleovertime( var_6 );
    var_1.fontscale = var_5;
    wait( var_6 );
    var_1 fadeovertime( 1.0 );
    var_1.alpha = 0;
    wait 1.0;
    level.player._id_CE4A--;

    if ( level.player._id_CE4A == 0 )
        level.player._id_D3B2 = 0;

    var_1 destroy();
}

_id_C059()
{
    var_0 = 50;

    for (;;)
    {
        var_1 = randomint( var_0 );
        var_2 = randomint( var_0 );

        if ( distance( ( 0, 0, 0 ), ( var_1, var_2, 0 ) ) < var_0 )
            break;
    }

    if ( common_scripts\utility::cointoss() )
        var_1 *= -1;

    if ( common_scripts\utility::cointoss() )
        var_2 *= -1;

    self.x = var_1;
    self.y = var_2;
}

_id_C4D4( var_0 )
{
    for ( var_1 = 0; var_1 < level._id_D532[var_0].size; var_1++ )
        _id_ABA4( level._id_D532[var_0][var_1], var_0, level._id_D532[var_0].size );
}

_id_ABA4( var_0, var_1, var_2 )
{
    if ( var_0["type"] != "melee" )
        var_3 = level._id_BFD4 + level._id_C8CE[var_0["damage_location"]] + level._id_BE04[var_0["type"]];
    else
        var_3 = level._id_BFD4 + level._id_BE04[var_0["type"]];

    thread _id_B189( var_0["origin"], 1, var_1, var_3 );
}

_id_CCB5( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "none";

    var_3 = level._id_AF3E[var_0];

    if ( !isdefined( var_3 ) )
    {
        var_4 = level._id_BFD4;
        thread _id_B189( var_2, 1, "melee", var_4 );
        return;
    }

    var_5["damage_location"] = var_1;
    var_5["type"] = var_3;
    var_5["origin"] = var_2;

    if ( var_3 == "explosive" )
        var_5["origin"] = self.origin;

    level._id_D532[var_3][level._id_D532[var_3].size] = var_5;
}

player_damage( var_0, var_1, var_2 )
{
    thread _id_B189( var_2, 0, var_0, level._id_AFDB );
}

_id_C3EB( var_0, var_1, var_2 )
{
    thread _id_B189( var_2, 0, var_0, level._id_AFDB * 1.25 );
}

_id_B18B( var_0 )
{
    var_1 = _id_BF5E( "center", 0.05, 0, var_0 );
    var_1.fontscale = 3;
    var_1.color = ( 1, 1, 1 );
    var_1 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_1 settext( &"SCRIPT_MISSION_COMPLETE" );
    var_2 = _id_BF5E( "center", 0.15, 0, var_0 );
    var_2.fontscale = 4.5;
    var_2.color = ( 1, 1, 1 );
    var_2 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_2 settext( &"SCRIPT_MISSION_COMPLETE" );
    var_1 changefontscaleovertime( 0.15 );
    var_1.fontscale = 4.5;
    var_2 changefontscaleovertime( 0.15 );
    var_2.fontscale = 3;
    wait 0.05;
    var_1 fadeovertime( 0.15 );
    var_1.alpha = 0;
    wait 0.15;
    var_1 destroy();
    var_2 destroy();
}

_id_BFBB()
{
    setsaveddvar( "ui_nextMission", "0" );

    for ( var_0 = 0; var_0 < level.players.size; var_0++ )
    {
        var_1 = level.players[var_0];
        var_1.maxhealth = 0;
        var_1.health = 1;
    }

    changelevel( "" );
}

_id_BBF7( var_0, var_1 )
{
    level._id_B46D = [];

    for ( var_2 = 0; var_2 < level._id_BAE7; var_2++ )
    {
        var_3 = _id_BE09();
        level._id_B46D[level._id_B46D.size] = var_3;
        level._id_C397[level._id_C397.size] = var_3;
        var_3.x = 0;
        var_3.y = var_1;
        var_3.sort = level._id_BB12 + 10;
        var_3.alignx = "left";
        var_3.aligny = "middle";
        var_3.horzalign = "fullscreen";
        var_3.vertalign = "middle";
        var_3.fontscale = 1.875;
        var_3.alpha = 0;
        var_3 fadeovertime( 1.0 );
        var_3.alpha = 1;
    }
}

_id_C188( var_0 )
{
    _id_C9EA( var_0, level._id_B46D );
}

_id_CA9A( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    for (;;)
    {
        var_6 = getscreenwidth();
        var_7 = getscreenheight();

        if ( var_6 != level._id_BD34 || var_7 != level._id_BC09 )
        {
            level._id_BD34 = var_6;
            level._id_BC09 = var_7;

            if ( level._id_BC09 == 0 )
                level._id_BC09 = 1;

            if ( level._id_BD34 == 0 )
                level._id_BD34 = 1;

            _id_BDCC( var_0, var_1, var_2, var_3, var_4, var_5 );
        }

        wait 0.1;
    }
}

_id_BDCC( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = 1920.0 / level._id_BD34 * level._id_BC09 / 1080.0;
    var_7 = 37 * var_6;
    var_8 = 11.6667 + 9 * var_6 * 9 + var_7;

    for ( var_9 = 0; var_9 < level._id_BAE7; var_9++ )
    {
        level._id_D02A[var_9].x = 320 + var_9 * ( -9 * var_6 ) + var_8;

        if ( isdefined( level._id_B46D ) )
            level._id_B46D[var_9].x = 320 + var_9 * ( -9 * var_6 ) + var_8;
    }

    var_10 = 11.6667 + var_7;
    level.arcademode_hud_timer[0].x = 320 + var_10 + 0 * var_6;
    level.arcademode_hud_timer[1].x = 320 + var_10 + 8.3 * var_6;
    level.arcademode_hud_timer[2].x = 320 + var_10 + 16.6 * var_6;
    level.arcademode_hud_timer[3].x = 320 + var_10 + 21 * var_6;
    level.arcademode_hud_timer[4].x = 320 + var_10 + 29.6 * var_6;
    var_11 = 58.5;
    var_12 = var_11 - ( 10 - var_3 ) * 13 * 0.5;

    for ( var_9 = 0; var_9 < level._id_A81C; var_9++ )
        level._id_C285[var_9].x = ( var_9 * -13 + var_12 ) * var_6;

    if ( isdefined( var_0 ) )
        var_0.x = 320 + var_7;

    var_1.x = 320 + var_7;
    var_2.x = 320 + var_7;

    if ( level._id_AC81 )
        var_4 setshader( "h1_arcademode_scanelines_border", int( 344 * var_6 ), 65 );
    else
        var_4 setshader( "h1_arcademode_scanelines_border", int( 216 * var_6 ), 65 );

    var_5 setshader( "h1_arcademode_scanelines_border_end_title", int( 291 * var_6 ), 4 );
}

_id_AF95()
{
    if ( common_scripts\utility::flag( "arcademode_complete" ) )
        return;

    common_scripts\utility::flag_set( "arcademode_complete" );
    maps\_utility::slowmo_setlerptime_out( 0.05 );
    maps\_utility::slowmo_lerp_out();
    maps\_utility::slowmo_end();

    if ( level._id_AC81 )
    {
        if ( _id_CD3A() )
            wait 2;
    }

    var_0 = 0;

    if ( isdefined( level.arcademode_stoptime ) )
    {
        var_0 = gettime() - level.arcademode_stoptime;
        var_0 *= 0.001;
    }

    var_1 = gettime() - level._id_C08A;
    var_1 *= 0.001;
    var_1 -= var_0;
    var_2 = level._id_C65D - var_1;
    var_2 = int( var_2 );

    if ( level._id_AC81 )
    {
        if ( var_2 == 0 )
            var_2++;
    }

    var_3 = 0.5;
    level._id_C60B = 1;
    thread _id_C1EF();
    thread _id_C0E0( var_3 );
    wait( var_3 + 0.25 );
    level.player freezecontrols( 1 );
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
    var_15 = _id_BF5E( "center", 0.1, 0, var_6 );
    var_15.fontscale = 3;
    var_16 = _id_BF5E( "center", 0.1, 320, var_6 + 5 );
    var_16.horzalign = "fullscreen";
    var_16.sort = var_15.sort - 1;
    var_16.alpha = 1;
    level._id_BD34 = getscreenwidth();
    level._id_BC09 = getscreenheight();
    var_17 = 1920.0 / level._id_BD34 * level._id_BC09 / 1080.0;

    if ( level._id_AC81 )
    {
        var_15.color = ( 1, 1, 1 );
        var_15 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
        var_16 setshader( "h1_arcademode_scanelines_border", int( 344 * var_17 ), 65 );
        var_15 settext( &"SCRIPT_MISSION_COMPLETE" );
        level.player playsound( "h1_arcademode_mission_success" );
        thread _id_B18B( var_6 );
    }
    else
    {
        var_15.color = ( 1, 0.15, 0.16 );
        var_15 _meth_8355( -0.6, 0, 0, 0, ( 0.5, 0.1, 0.1 ), 0.3, 0, 0, ( 0, 0, 0 ), 0 );
        var_15 settext( level._id_A9B4 );
        var_16 setshader( "h1_arcademode_scanelines_border", int( 216 * var_17 ), 65 );
        var_16.color = ( 1, 0.15, 0.16 );
        level.player playsound( "h1_arcademode_mission_fail" );
    }

    var_18 = _id_BF5E( "center", 0.1, 0, var_6 + 20 );
    var_18 setshader( "h1_arcademode_scanelines_border_end_title", int( 291 * var_17 ), 4 );
    var_18.sort = var_15.sort - 1;
    var_18.alpha = 1;
    wait 1.0;
    var_19 = getdvarint( "arcademode_lives" );
    var_20 = level._id_C4EA;

    if ( var_19 > var_20 )
        var_19 = var_20;

    for ( var_21 = 0; var_21 < level._id_A81C; var_21++ )
        level._id_C285[var_21] destroy();

    level._id_C285 = [];

    for ( var_21 = 0; var_21 < level._id_A81C; var_21++ )
    {
        _id_B88D( var_21, 0, var_14, 0, 64, level._id_BB12 + 10 );
        level._id_C285[var_21].horzalign = "center";
        level._id_C285[var_21].vertalign = "middle";
    }

    _id_D19A( var_19 );
    var_22 = 0;
    var_23 = undefined;

    if ( getdvar( "arcademode_full" ) == "1" )
    {
        var_23 = _id_BF5E( "center", var_4, 0, var_7 );
        var_23.alignx = "right";
        var_23.horzalign = "fullscreen";
        var_23.fontscale = 1.875;
        var_23.color = ( 1, 1, 1 );
        var_23 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
        var_23 settext( &"SCRIPT_TOTAL_SCORE" );
        _id_BBF7( 0, var_8 );
        var_22 = getdvarint( "arcademode_combined_score" );
        _id_C188( var_22 );
    }

    var_24 = _id_BF5E( "center", var_4, 0, var_9 );
    var_24.alignx = "right";
    var_24.horzalign = "fullscreen";
    var_24.fontscale = 1.875;
    var_24.color = ( 1, 1, 1 );
    var_24 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_24 settext( &"SCRIPT_MISSION_SCORE" );
    level._id_D02A = [];

    for ( var_21 = 0; var_21 < level._id_BAE7; var_21++ )
    {
        var_25 = _id_BE09();
        level._id_D02A[level._id_D02A.size] = var_25;
        level._id_C397[level._id_C397.size] = var_25;
        var_25.x = 0;
        var_25.y = var_10;
        var_25.sort = level._id_BB12 + 10;
        var_25.alignx = "left";
        var_25.aligny = "middle";
        var_25.horzalign = "fullscreen";
        var_25.vertalign = "middle";
        var_25.fontscale = 1.875;
        var_25.alpha = 0;
        var_25 fadeovertime( var_4 );
        var_25.alpha = 1;
    }

    _id_C9EA( 0, level._id_D02A );
    var_26 = 0;

    for ( var_27 = 0; var_2 >= 60; var_2 -= 60 )
        var_26++;

    var_27 = var_2;
    var_28 = _id_BF5E( "center", var_4, 0, var_12 );
    var_28.alignx = "right";
    var_28.horzalign = "fullscreen";
    var_28.fontscale = 1.7;
    var_28.color = ( 1, 1, 1 );
    var_28 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_28 settext( &"SCRIPT_TIME_REMAINING" );
    level.arcademode_hud_timer = [];
    level.arcademode_hud_timer[0] = _id_BF5E( "center", var_4, 0, var_11 );
    level.arcademode_hud_timer[1] = _id_BF5E( "center", var_4, 0, var_11 );
    level.arcademode_hud_timer[2] = _id_BF5E( "center", var_4, 0, var_11 );
    level.arcademode_hud_timer[2] settext( &"SCRIPT_COLON" );
    level.arcademode_hud_timer[3] = _id_BF5E( "center", var_4, 0, var_11 );
    level.arcademode_hud_timer[4] = _id_BF5E( "center", var_4, 0, var_11 );

    for ( var_21 = 0; var_21 < 5; var_21++ )
    {
        level.arcademode_hud_timer[var_21].alignx = "left";
        level.arcademode_hud_timer[var_21].horzalign = "fullscreen";
        level.arcademode_hud_timer[var_21].vertalign = "middle";
        level.arcademode_hud_timer[var_21].fontscale = 1.7;
        level.arcademode_hud_timer[var_21].fontscale = 1.7;
        level.arcademode_hud_timer[var_21].color = ( 1, 1, 1 );
        level.arcademode_hud_timer[var_21] _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.3, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    }

    _id_BCB0( var_26, var_27 );
    level._id_BD34 = getscreenwidth();
    level._id_BC09 = getscreenheight();
    var_17 = 1920.0 / level._id_BD34 * level._id_BC09 / 1080.0;
    _id_BDCC( var_23, var_24, var_28, var_19, var_16, var_18 );
    thread _id_CA9A( var_23, var_24, var_28, var_19, var_16, var_18 );
    wait( var_4 );
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

        _id_C9EA( var_30, level._id_D02A );

        if ( var_30 == var_29 )
            break;

        var_32--;

        if ( var_32 <= 0 )
        {
            level.player playsound( "h1_arcademode_ending_mission_pts" );
            var_32 = 3;
        }

        wait 0.05;
    }

    wait 1;
    var_35 = 0;
    var_36 = undefined;

    if ( level._id_AC81 )
    {
        var_37 = 5;
        var_38 = var_26 * 60 + var_27;
        var_39 = ceil( var_38 / 15 );
        var_40 = ceil( var_38 * var_37 );
        var_41 = ceil( var_40 / level._id_AEA5 );
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
                _id_C188( var_22 );
            }

            _id_C9EA( var_30, level._id_D02A );
            var_47 = int( var_38 * ( 1 - var_46 ) );
            _id_BCB0( floor( var_47 / 60 ), var_47 % 60 );
            var_32--;

            if ( var_32 <= 0 )
            {
                level.player playsound( "h1_arcademode_ending_time_pts" );
                var_32 = 3;
            }

            wait 0.05;
        }

        _id_BCB0( 0, 0 );
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
                _id_C188( var_22 );
            }

            var_30 += var_34;
            level.player playsound( "h1_arcademode_ending_lives_pts" );
            _id_C9EA( int( var_30 ), level._id_D02A );
            _id_D19A( var_19 );
            wait 0.6;
        }

        wait 1;

        if ( getdvarint( "arcademode_died" ) != 1 && level.gameskill >= 2 )
        {
            var_34 = int( var_30 );
            _id_A993( var_30, var_22, var_34, &"SCRIPT_ZERO_DEATHS", "arcademode_zerodeaths", var_13, var_4, var_17 );
            var_30 += var_34;
            var_22 += var_34;
        }
    }
    else
    {
        for ( var_21 = 0; var_21 < 5; var_21++ )
            level.arcademode_hud_timer[var_21] setpulsefx( 0, 0, 1000 );

        var_28 setpulsefx( 0, 0, 1000 );
        _id_D19A( 0 );
        wait 2;
    }

    var_51 = level._id_A9CF[level.gameskill];

    if ( var_51 > 1 )
    {
        if ( var_51 == 1.5 )
            var_52 = &"SCRIPT_DIFFICULTY_BONUS_ONEANDAHALF";
        else if ( var_51 == 3 )
            var_52 = &"SCRIPT_DIFFICULTY_BONUS_THREE";
        else
            var_52 = &"SCRIPT_DIFFICULTY_BONUS_FOUR";

        var_34 = int( ceil( var_30 * var_51 ) - var_30 );
        _id_A993( var_30, var_22, var_34, var_52, "h1_arcademode_ending_diff_pts", var_13, var_4, var_17 );
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
            var_56 = _id_C505( var_22 );
            var_57 = _id_D52C( var_56 );
            setdvar( var_54, var_57 );
            var_58 = 0;

            if ( !level._id_AC81 )
                var_58 = 1;

            if ( level.script == "airplane" )
                var_58 = 1;

            if ( var_58 )
                var_53 = 1;
        }

        var_59 = level.player getplayerdata( common_scripts\utility::_id_AC0E(), "fullChallengeScore" );

        if ( var_22 > var_59 )
            level.player setplayerdata( common_scripts\utility::_id_AC0E(), "fullChallengeScore", var_22 );

        level.player uploadscore( "LB_AM_FULLCHALLENGE", getdvarint( var_54 ) );
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
        var_61 = var_60[level.script];

        if ( isdefined( var_61 ) )
        {
            var_59 = level.player getplayerdata( common_scripts\utility::_id_AC0E(), "arcadeScore", level.script );

            if ( var_30 > var_59 )
            {
                var_53 = 1;
                level.player setplayerdata( common_scripts\utility::_id_AC0E(), "arcadeScore", level.script, var_30 );
            }

            level.player uploadscore( "LB_AM_" + level.script, var_30 );
        }
    }

    if ( var_53 )
    {
        if ( !level._id_AC81 )
            updategamerprofile();

        wait 1;
        var_62 = _id_BF5E( "center", var_4, 0, var_13 );
        var_62.fontscale = 2.25;
        var_62 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.5, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
        var_62 settext( &"SCRIPT_NEW_HIGH_SCORE" );
        var_62 fadeovertime( 0.05 );
        var_62.alpha = 1;
        var_62 setpulsefx( 30, 3000, 1000 );
        var_63 = _id_BF5E( "center", var_4, 0, var_13 + 0.5 );
        var_63 setshader( "h1_arcademode_livesmessage_border", int( 313 * var_17 ), 135 );
        var_63.sort = var_62.sort - 1;
        var_63 fadeovertime( 0.05 );
        var_63.alpha = 1;
        wait 3.0;
        var_63 fadeovertime( 1.0 );
        var_63.alpha = 0;
        wait 0.5;
    }

    wait 2;
    var_15 setpulsefx( 0, 0, 1000 );
    wait 0.5;
    var_24 setpulsefx( 0, 0, 1000 );

    for ( var_21 = 0; var_21 < level._id_BAE7; var_21++ )
    {
        var_25 = level._id_D02A[var_21];
        var_25 setpulsefx( 0, 0, 1000 );
    }

    if ( getdvar( "arcademode_full" ) == "1" )
    {
        var_23 setpulsefx( 0, 0, 1000 );

        for ( var_21 = 0; var_21 < level._id_BAE7; var_21++ )
        {
            var_25 = level._id_B46D[var_21];
            var_25 setpulsefx( 0, 0, 1000 );
        }
    }

    if ( level._id_AC81 )
    {
        wait 0.5;

        for ( var_21 = 0; var_21 < 5; var_21++ )
            level.arcademode_hud_timer[var_21] setpulsefx( 0, 0, 1000 );

        var_28 setpulsefx( 0, 0, 1000 );
    }

    wait 1;

    if ( getdvar( "arcademode_full" ) == "1" )
        logstring( "ArcadeMode Score: " + var_30 + ", mission: " + level.script + ", gameskill: " + level.gameskill + ", total: " + var_22 );
    else
        logstring( "ArcadeMode Score: " + var_30 + ", mission: " + level.script + ", gameskill: " + level.gameskill );

    setdvar( "arcademode_combined_score", var_22 );

    if ( var_22 >= 400000 )
        maps\_utility::giveachievement_wrapper( "ARCADE_ADDICT" );

    if ( !level._id_AC81 )
    {
        setdvar( "ui_arcade_lost", 1 );
        _id_BFBB();
    }
    else
        setdvar( "ui_arcade_lost", 0 );

    for ( var_21 = 0; var_21 < level._id_C397.size; var_21++ )
    {
        if ( isdefined( level._id_C397[var_21] ) )
            level._id_C397[var_21].alpha = 0;
    }

    common_scripts\utility::flag_set( "arcademode_ending_complete" );
}

_id_A993( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = _id_BF5E( "center", var_6, 0, var_5 );
    var_8.fontscale = 2.25;
    var_8 _meth_8355( -0.6, 0, 0, 0, ( 0.247, 0.439, 0.094 ), 0.5, -0.1, 0, ( 0.302, 0.588, 0.047 ), 0.75 );
    var_8 settext( var_3 );
    var_8 fadeovertime( 0.05 );
    var_8.alpha = 1;
    var_8 setpulsefx( 30, 10000, 1000 );
    var_9 = _id_BF5E( "center", 0.15, 320, var_5 + 0.5 );
    var_9 setshader( "h1_arcademode_livesmessage_border", int( 330 * var_7 ), 135 );
    var_9.horzalign = "fullscreen";
    var_9.sort = var_8.sort - 1;
    var_9 fadeovertime( 0.05 );
    var_9.alpha = 1;
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

        _id_C9EA( var_0, level._id_D02A );

        if ( getdvar( "arcademode_full" ) == "1" )
        {
            var_1 += var_2;

            if ( var_1 > var_12 )
                var_1 = var_12;

            _id_C188( var_1 );
        }

        if ( var_0 == var_11 )
            break;

        var_10--;

        if ( var_10 <= 0 )
        {
            level.player playsound( var_4 );
            var_10 = 3;
        }

        wait 0.05;
    }

    wait 0.5;
    var_8 setpulsefx( 0, 10, 1000 );
    var_9 fadeovertime( 1.0 );
    var_9.alpha = 0;
    wait 1.0;
}

_id_C0E0( var_0 )
{
    var_1 = newhudelem();
    var_1.foreground = 1;
    var_1.x = 0;
    var_1.y = 0;
    var_1 setshader( "black", 640, 480 );
    var_1.alignx = "left";
    var_1.aligny = "top";
    var_1.horzalign = "fullscreen";
    var_1.vertalign = "fullscreen";
    var_1.sort = level._id_BB12 + 5;
    var_1.alpha = 0;

    if ( var_0 > 0 )
        var_1 fadeovertime( var_0 );

    var_1.alpha = 1;
}

_id_C1EF()
{
    for (;;)
    {
        level.player enableinvulnerability();
        level.player.deathinvulnerabletime = 70000;
        level.player.ignoreme = 1;
        var_0 = getaispeciesarray( "all", "all" );
        common_scripts\utility::array_thread( var_0, maps\_utility::set_ignoreme, 1 );
        wait 0.05;
    }
}

_id_BCB0( var_0, var_1 )
{
    var_2 = 0;

    for ( var_3 = 0; var_0 >= 10; var_0 -= 10 )
        var_2++;

    while ( var_1 >= 10 )
    {
        var_3++;
        var_1 -= 10;
    }

    level.arcademode_hud_timer[4] setvalue( var_1 );
    level.arcademode_hud_timer[3] setvalue( var_3 );
    level.arcademode_hud_timer[1] setvalue( var_0 );
    level.arcademode_hud_timer[0] setvalue( var_2 );
}

_id_AA6A( var_0, var_1, var_2 )
{
    var_0 *= var_2;
    var_3 = _id_BF5E( "center", 0.001, var_0, 73.3333 );
    var_3.vertalign = "top_adjustable";
    var_3.fontscale = 2.5;
    var_3.color = ( 1, 1, 1 );
    var_3.font = "objective";
    var_3 _meth_8355( -0.1, 0, 0, -0.001, ( 0, 0, 0 ), 0.2, -0.1, 0, ( 0, 0, 0 ), 0.5 );
    var_3 settext( &"SCRIPT_CHECKPOINT" );
    var_3.alpha = 0;
    wait 0.15;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    var_3.fontscale = 3.5;
    wait 0.05;
    var_3.fontscale = 2.5;
    wait 0.05;
    wait 1.0;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 destroy();
}

_id_A85B( var_0, var_1, var_2 )
{
    var_0 *= var_2;
    var_3 = _id_BF5E( "center", 0.1, var_0, 73.3333 );
    var_3.vertalign = "top_adjustable";
    var_3 setshader( "h1_arcademode_scanelines_border", 384, 48 );
    var_3.sort -= 2;
    var_3.alpha = 0.25;
    var_3.alpha = 0;
    wait 0.15;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    wait 0.05;
    wait 0.05;
    wait 1.0;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 1;
    wait 0.05;
    var_3 fadeovertime( 0.05 );
    var_3.alpha = 0;
    wait 0.05;
    var_3 destroy();
}

_id_BBB5()
{
    var_0 = _id_BF5E( "center", 0.001, 0, 73.3333 );
    var_0.vertalign = "top_adjustable";
    var_0 setshader( "h1_arcademode_checkpoint_flare", 326, 23 );
    var_0.sort = level._id_BB12 + 10 - 1;
    var_0.alpha = 0;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 0;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 0;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 1;
    wait 0.05;
    var_0 fadeovertime( 0.05 );
    var_0.alpha = 0;
    wait 0.05;
    var_0 destroy();
}

_id_AF0E( var_0 )
{
    for ( var_1 = 0; var_1 < level._id_C513.size; var_1++ )
    {
        if ( level._id_C513[var_1] == var_0 )
            return var_1;
    }

    return undefined;
}

_id_D0C8()
{
    level._id_B851 = [];
    level._id_C528 = [];
    level._id_B851[level._id_B851.size] = level._id_AA72;
    level._id_B851[level._id_B851.size] = ( 0.678431, 0.976471, 0.768627 );
    level._id_B851[level._id_B851.size] = ( 0.658824, 0.964706, 0.619608 );
    level._id_B851[level._id_B851.size] = ( 1, 0.976471, 0.317647 );
    level._id_B851[level._id_B851.size] = ( 0.988235, 0.866667, 0.301961 );
    level._id_B851[level._id_B851.size] = ( 0.988235, 0.831373, 0.376471 );
    level._id_B851[level._id_B851.size] = ( 0.988235, 0.792157, 0.223529 );
    level._id_B851[level._id_B851.size] = ( 0.984314, 0.72549, 0.152941 );

    for ( var_0 = 0; var_0 < level._id_B851.size; var_0++ )
        level._id_C528[var_0] = ( level._id_B851[var_0][0] * 0.35, level._id_B851[var_0][1] * 0.35, level._id_B851[var_0][2] * 0.35 );

    level._id_B851[0] = level._id_AF8D;
}

_id_CEEF()
{
    if ( level._id_C04D == 1 )
        return;

    if ( common_scripts\utility::flag( "arcademode_complete" ) )
        return;

    var_0 = _id_BF5E( "right", 0.2, -21.6667, 80.0 );
    var_0.aligny = "top";
    var_0.vertalign = "top";
    var_0.glowalpha = 0;
    var_0 setpulsefx( 5, 3000, 1000 );
    var_0.fontscale = 0.75;
    var_1 = level._id_C04D - 1;
    var_1 = int( clamp( var_1, 1, 7 ) );
    var_0.color = level._id_B851[var_1];

    if ( level._id_C04D >= 8 )
    {
        level.player thread common_scripts\utility::play_sound_in_space( "arcademode_kill_streak_won", level.player geteye() );
        var_0 settext( &"SCRIPT_STREAK_COMPLETE" );
    }
    else
    {
        level.player thread common_scripts\utility::play_sound_in_space( "arcademode_kill_streak_lost", level.player geteye() );
        var_0 settext( &"SCRIPT_STREAK_BONUS_LOST" );
    }

    wait 5;
    var_0 destroy();
}

_id_AD1F()
{
    if ( isdefined( level._id_D362 ) )
    {
        level._id_D362 destroy();
        level._id_D362 = undefined;
        level._id_D025 destroy();
    }

    level notify( "arcademode_stop_kill_streak_art" );

    for ( var_0 = 0; var_0 < level._id_B7DF.size; var_0++ )
        level._id_B7DF[var_0] destroy();

    level._id_B7DF = [];
}

_id_B912()
{
    level._id_BC64 = 1;
    thread _id_CEEF();
    level notify( "arcademode_stop_kill_streak" );
    _id_AD1F();
    common_scripts\utility::flag_clear( "arcadeMode_multiplier_maxed" );
    level._id_BD3E = level._id_C1DA;
    level._id_C04D = 1;
}

_id_CD24()
{
    var_0 = 0.1;
    var_1 = newhudelem();
    var_1.alignx = "right";
    var_1.aligny = "top";
    var_1.horzalign = "right";
    var_1.vertalign = "top";
    var_1 thread _id_BB64();
    var_1.x = 0;
    var_1.y = 76.3333;
    var_1.font = "objective";
    var_1.fontscale = 2.25;
    var_1.archived = 0;
    var_1.foreground = 1;
    var_1.hidewheninmenu = 1;
    var_1.color = level._id_B851[level._id_C04D - 1];
    var_1 _meth_8355( -0.1, 0, 0, -0.001, ( 0, 0, 0 ), 0.5, -0.1, 0, ( 0, 0, 0 ), 0.75 );
    var_1.sort = level._id_BB12;
    var_1.label = &"SCRIPT_X";
    var_1 setvalue( level._id_C04D );
    var_1 moveovertime( var_0 );
    var_1.x = -21.6667;
    var_1.alpha = 0.25;
    var_1 fadeovertime( var_0 );
    var_1.alpha = 1.0;
    return var_1;
}

_id_BDC0()
{
    var_0 = newhudelem();
    var_0.alignx = "right";
    var_0.aligny = "middle";
    var_0.horzalign = "right";
    var_0.vertalign = "top";
    var_0.x = -21.6667;
    var_0.y = 89.3333;
    var_0.font = "objective";
    var_0.fontscale = 2.25;
    var_0.archived = 0;
    var_0.foreground = 1;
    var_0.hidewheninmenu = 1;
    var_0.color = level._id_B851[level._id_C04D - 1];
    var_0 _meth_8355( -0.6, 0, 0, 0, ( 0, 0, 0 ), 0.0, -0.6, 0, var_0.color, 1.0 );
    var_0.sort = level._id_BB12;
    var_0.label = &"SCRIPT_X";
    var_0 setvalue( level._id_C04D );
    var_0.alpha = 0.0;
    var_1 = 2;
    var_2 = newhudelem();
    var_2.alignx = "right";
    var_2.aligny = "top";
    var_2.horzalign = "right";
    var_2.vertalign = "top";
    var_2 thread _id_BB64();
    var_2 setshader( "h1_arcademode_numberstreak_circles", 22 * var_1, 27 * var_1 );
    var_2.x = 38;
    var_2.y = 72.3333;
    var_2.archived = 0;
    var_2.foreground = 1;
    var_2.hidewheninmenu = 1;
    var_2.color = level._id_B851[level._id_C04D - 1];
    var_2.sort = level._id_BB12 - 1;
    var_3 = newhudelem();
    var_3.alignx = "right";
    var_3.aligny = "top";
    var_3.horzalign = "right";
    var_3.vertalign = "top";
    var_3 thread _id_BB64();
    var_3 setshader( "h1_arcademode_numberstreak_glow", 64, 64 );
    var_3.x = 0.833332;
    var_3.y = 60.3333;
    var_3.archived = 0;
    var_3.foreground = 1;
    var_3.hidewheninmenu = 1;
    var_3.color = level._id_B851[level._id_C04D - 1];
    var_3.sort = level._id_BB12 - 1;
    var_4 = 0.2;
    var_2.alpha = 1;
    var_2 scaleovertime( 0.4, 27 * var_1, 27 * var_1 );
    var_3.alpha = 0;
    var_3 fadeovertime( 0.4 );
    var_5 = 0.1;
    var_2 moveovertime( var_5 );
    var_2.x = -20.6667;
    wait( var_5 );

    if ( isdefined( var_0 ) )
    {
        var_6 = 0.4;
        var_7 = 10.0;
        var_0 changefontscaleovertime( var_6 );
        var_0.fontscale = var_7;
        wait 0.05;
        var_8 = 0.35;
        var_0.alpha = var_8;
        wait 0.05;
        var_0 fadeovertime( var_6 );
        var_0.alpha = 0;
    }

    if ( isdefined( var_2 ) )
    {
        var_2 fadeovertime( 0.2 );
        var_2.alpha = 0;
        var_9 = 0.15;
        wait( var_9 );
        var_2 scaleovertime( 0.2, 32 * var_1, 27 * var_1 );
        wait( 0.35 - var_9 );
    }

    if ( isdefined( var_3 ) )
    {
        var_3 fadeovertime( 0.2 );
        var_3.alpha = 0;
    }

    wait 0.4;

    if ( isdefined( var_0 ) )
        var_0 destroy();

    if ( isdefined( var_2 ) )
        var_2 destroy();

    if ( isdefined( var_3 ) )
        var_3 destroy();
}

_id_B285()
{
    level endon( "arcademode_new_kill_streak" );
    var_0 = _id_CD24();
    thread _id_BDC0();
    level._id_CAF7 = var_0;
    level waittill( "arcademode_stop_kill_streak" );
    var_0 setpulsefx( 0, 0, 1000 );
    wait 1;
    var_0 destroy();
    level._id_CAF7 = undefined;
}

_id_B7D6()
{
    level endon( "arcademode_new_kill_streak" );
    wait 0.05;
    var_0 = 500;
    self moveovertime( 2 );
    self.x += randomintrange( var_0 * -1, var_0 );
    self.y += randomintrange( var_0 * -1, var_0 );
    wait 0.5;
    self fadeovertime( 1 );
    self.alpha = 0;
    wait 1;
    self destroy();
}

_id_BB64()
{
    self endon( "death" );
    level waittill( "arcademode_new_kill_streak" );
    self destroy();
}

_id_D52C( var_0 )
{
    var_1 = "";

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_1 = var_0[var_2] + var_1;

    return var_1;
}
