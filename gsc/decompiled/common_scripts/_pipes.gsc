// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    if ( isdefined( level.pipes_init ) )
        return;

    level.pipes_init = 1;
    level._pipe_fx_time = 25;
    var_0 = getentarray( "pipe_shootable", "targetname" );

    if ( !var_0.size )
        return;

    level._pipes = spawnstruct();
    level._pipes.num_pipe_fx = 0;
    var_0 thread precachefx();
    var_0 thread methodsinit();
    thread post_load( var_0 );
    level._id_B463 = 0;
}

post_load( var_0 )
{
    waittillframeend;

    if ( level.createfx_enabled )
        return;

    common_scripts\utility::array_thread( var_0, ::pipesetup );
}

pipesetup()
{
    self setcandamage( 1 );
    self setcanradiusdamage( 0 );
    self.pipe_fx_array = [];
    var_0 = undefined;
    self._id_ADF9 = 0;

    if ( isdefined( self.script_parameters ) && self.script_parameters == "use_bullet_hitnormal" )
        self._id_ADF9 = 1;
    else if ( isdefined( self.target ) )
    {
        var_0 = common_scripts\utility::getstruct( self.target, "targetname" );
        self.a = var_0.origin;
        var_1 = anglestoforward( var_0.angles );
        var_1 *= 128;
        self.b = self.a + var_1;
    }
    else
    {
        var_1 = anglestoforward( self.angles );
        var_2 = var_1 * 64;
        self.a = self.origin + var_2;
        var_2 = var_1 * -64;
        self.b = self.origin + var_2;
    }

    thread pipe_wait_loop();
}

pipe_wait_loop()
{
    var_0 = ( 0, 0, 0 );
    var_1 = 0;
    var_2 = 4;

    for (;;)
    {
        self waittill( "damage", var_3, var_4, var_5, var_0, var_6 );

        if ( var_1 )
        {
            if ( randomint( 100 ) <= 33 )
                continue;
        }

        var_1 = 1;
        var_7 = pipe_logic( var_5, var_0, var_6, var_4 );

        if ( var_7 )
            var_2--;

        if ( var_2 <= 0 )
            break;
    }

    self setcandamage( 0 );
}

pipe_logic( var_0, var_1, var_2, var_3 )
{
    if ( level._pipes.num_pipe_fx > 8 )
        return 0;

    if ( !isdefined( level._pipes._pipe_methods[var_2] ) )
        var_1 = pipe_calc_nofx( var_1, var_2 );
    else
        var_1 = self [[ level._pipes._pipe_methods[var_2] ]]( var_1, var_2 );

    if ( !isdefined( var_1 ) )
        return 0;

    if ( isdefined( var_3.classname ) && var_3.classname == "worldspawn" )
        return 0;

    foreach ( var_5 in self.pipe_fx_array )
    {
        if ( distancesquared( var_1, var_5.origin ) < 25 )
            return 0;
    }

    if ( self._id_ADF9 )
    {
        var_7 = var_1 - var_0;
        var_8 = var_1 + var_0;
        var_9 = bullettrace( var_7, var_8, 0 );
        var_10 = var_9["normal"];
    }
    else
        var_10 = vectorfromlinetopoint( self.a, self.b, var_1 );

    thread pipefx( var_1, var_10, var_3 );
    var_11 = _id_B0C1( level._pipes.fx_time[self.script_noteworthy] );

    if ( var_11 )
        thread _id_C06C( var_11, var_1, var_10 );

    return 1;
}

_id_B0C1( var_0 )
{
    var_1 = 0;

    if ( getomnvar( "ui_gasmask" ) != 0 && ( self.script_noteworthy == "steam" || self.script_noteworthy == "water" ) && isdefined( level._effect["screen_heavy_rain_cgoshp"] ) && isdefined( level._pipes.fx_time[self.script_noteworthy] ) )
        return level._pipes.fx_time[self.script_noteworthy];

    return var_1;
}

_id_C06C( var_0, var_1, var_2 )
{
    var_3 = gettime();
    var_4 = undefined;

    for (;;)
    {
        wait 0.1;
        var_5 = gettime();

        if ( var_5 - var_3 > var_0 * 1000 + 2000 )
        {
            if ( isdefined( var_4 ) )
            {
                var_4 delete();
                level._id_B463 = 0;
            }

            return;
        }

        var_6 = distancesquared( var_1, level.player geteye() );
        var_7 = var_1 - level.player.origin;
        var_8 = vectordot( var_7, anglestoforward( level.player.angles ) );

        if ( var_6 < 12000 && var_8 > 0 )
        {
            if ( !level._id_B463 )
            {
                level._id_B463 = 1;
                var_4 = spawnfx( level._effect["screen_heavy_rain_cgoshp"], level.player.origin );
                triggerfx( var_4 );
            }

            continue;
        }

        if ( level._id_B463 && isdefined( var_4 ) )
        {
            var_4 delete();
            level._id_B463 = 0;
        }
    }
}

pipefx( var_0, var_1, var_2 )
{
    var_3 = level._pipes.fx_time[self.script_noteworthy];
    var_4 = int( level._pipe_fx_time / var_3 );
    var_5 = level._pipes._sound[self.script_noteworthy + "_hit"];
    var_6 = level._pipes._sound[self.script_noteworthy + "_loop"];
    var_7 = level._pipes._sound[self.script_noteworthy + "_end"];
    var_8 = spawn( "script_origin", var_0 );
    var_8 hide();
    var_8 playsound( var_5 );
    var_8 playloopsound( var_6 );
    self.pipe_fx_array[self.pipe_fx_array.size] = var_8;
    level._pipes.num_pipe_fx++;

    if ( common_scripts\utility::issp() || self.script_noteworthy != "steam" )
        thread pipe_damage( var_0, var_1, var_2, var_8 );

    playfx( level._pipes._effect[self.script_noteworthy], var_0, var_1 );
    wait( var_3 );

    for ( var_4--; level._pipes.num_pipe_fx <= 8 && var_4 > 0; var_4-- )
    {
        playfx( level._pipes._effect[self.script_noteworthy], var_0, var_1 );
        wait( var_3 );
    }

    var_8 playsound( var_7 );
    wait 0.5;
    var_8 stopsounds( var_6 );
    var_8 delete();
    self.pipe_fx_array = common_scripts\utility::array_removeundefined( self.pipe_fx_array );
    level._pipes.num_pipe_fx--;
}

pipe_damage( var_0, var_1, var_2, var_3 )
{
    if ( !allow_pipe_damage() )
        return;

    var_3 endon( "death" );
    var_4 = var_3.origin + vectornormalize( var_1 ) * 40;
    var_5 = level._pipes._dmg[self.script_noteworthy];

    for (;;)
    {
        if ( !isdefined( self.damageowner ) )
            self radiusdamage( var_4, 36, var_5, var_5 * 0.75, undefined, "MOD_TRIGGER_HURT" );
        else
            self radiusdamage( var_4, 36, var_5, var_5 * 0.75, var_2, "MOD_TRIGGER_HURT" );

        wait 0.4;
    }
}

allow_pipe_damage()
{
    if ( !common_scripts\utility::issp() )
        return 0;

    if ( !isdefined( level.pipesdamage ) )
        return 1;

    return level.pipesdamage;
}

methodsinit()
{
    level._pipes._pipe_methods = [];
    level._pipes._pipe_methods["MOD_UNKNOWN"] = ::pipe_calc_splash;
    level._pipes._pipe_methods["MOD_PISTOL_BULLET"] = ::pipe_calc_ballistic;
    level._pipes._pipe_methods["MOD_RIFLE_BULLET"] = ::pipe_calc_ballistic;
    level._pipes._pipe_methods["MOD_GRENADE"] = ::pipe_calc_splash;
    level._pipes._pipe_methods["MOD_GRENADE_SPLASH"] = ::pipe_calc_splash;
    level._pipes._pipe_methods["MOD_PROJECTILE"] = ::pipe_calc_splash;
    level._pipes._pipe_methods["MOD_PROJECTILE_SPLASH"] = ::pipe_calc_splash;
    level._pipes._pipe_methods["MOD_TRIGGER_HURT"] = ::pipe_calc_splash;
    level._pipes._pipe_methods["MOD_EXPLOSIVE"] = ::pipe_calc_splash;
    level._pipes._pipe_methods["MOD_EXPLOSIVE_BULLET"] = ::pipe_calc_splash;
}

pipe_calc_ballistic( var_0, var_1 )
{
    return var_0;
}

pipe_calc_splash( var_0, var_1 )
{
    if ( self._id_ADF9 )
        return undefined;

    var_2 = vectornormalize( vectorfromlinetopoint( self.a, self.b, var_0 ) );
    var_0 = pointonsegmentnearesttopoint( self.a, self.b, var_0 );
    return var_0 + var_2 * 4;
}

pipe_calc_nofx( var_0, var_1 )
{
    return undefined;
}

precachefx()
{
    var_0 = 0;
    var_1 = 0;

    foreach ( var_3 in self )
    {
        if ( var_3.script_noteworthy == "water" )
            var_3.script_noteworthy = "steam";

        if ( var_3.script_noteworthy == "steam" )
        {
            var_3 willneverchange();
            var_0 = 1;
            continue;
        }

        if ( var_3.script_noteworthy == "fire" )
        {
            var_3 willneverchange();
            var_1 = 1;
            continue;
        }
    }

    if ( var_0 )
    {
        level._pipes._effect["steam"] = loadfx( "fx/impacts/pipe_steam" );
        level._pipes._sound["steam_hit"] = "mtl_steam_pipe_hit";
        level._pipes._sound["steam_loop"] = "mtl_steam_pipe_hiss_loop";
        level._pipes._sound["steam_end"] = "mtl_steam_pipe_hiss_loop_end";
        level._pipes.fx_time["steam"] = 3;
        level._pipes._dmg["steam"] = 5;
    }

    if ( var_1 )
    {
        level._pipes._effect["fire"] = loadfx( "fx/impacts/pipe_fire" );
        level._pipes._sound["fire_hit"] = "mtl_gas_pipe_hit";
        level._pipes._sound["fire_loop"] = "mtl_gas_pipe_flame_loop";
        level._pipes._sound["fire_end"] = "mtl_gas_pipe_flame_end";
        level._pipes.fx_time["fire"] = 3;
        level._pipes._dmg["fire"] = 5;
    }
}
