// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("animated_props");

main()
{
    waittillframeend;
    init_wind_if_uninitialized();
    thread _id_D475();
    level.init_animatedmodels_dump = [];
    level.anim_prop_models_animtree = #animtree;

    if ( !isdefined( level.anim_prop_models ) )
        level.anim_prop_models = [];

    if ( !isdefined( level.anim_prop_init_threads ) )
        level.anim_prop_init_threads = [];

    var_0 = getentarray( "animated_model", "targetname" );
    common_scripts\utility::array_thread( var_0, ::model_init );

    if ( isdefined( level.init_animatedmodels_dump ) && level.init_animatedmodels_dump.size )
    {
        var_1 = " ";

        foreach ( var_3 in level.init_animatedmodels_dump )
            var_1 += ( var_3 + " " );
    }

    foreach ( var_6 in var_0 )
    {
        if ( isdefined( level.anim_prop_init_threads[var_6.model] ) )
        {
            var_6 thread [[ level.anim_prop_init_threads[var_6.model] ]]();
            continue;
        }

        var_7 = getarraykeys( level.anim_prop_models[var_6.model] );
        var_8 = 0;

        foreach ( var_10 in var_7 )
        {
            if ( var_10 == "still" )
            {
                var_8 = 1;
                break;
            }
        }

        if ( var_8 )
            var_6 thread animatetreewind();
        else
            var_6 thread animatemodel();
    }
}

init_wind_if_uninitialized()
{
    if ( isdefined( level.wind ) )
        return;

    level.wind = spawnstruct();
    level.wind.rate = 0.4;
    level.wind.weight = 1;
    level.wind.variance = 0.2;
}

model_init()
{
    if ( !isdefined( level.anim_prop_models[self.model] ) )
    {
        if ( !already_dumpped( level.init_animatedmodels_dump, self.model ) )
            level.init_animatedmodels_dump[level.init_animatedmodels_dump.size] = self.model;
    }
}

already_dumpped( var_0, var_1 )
{
    if ( var_0.size <= 0 )
        return 0;

    foreach ( var_3 in var_0 )
    {
        if ( var_3 == var_1 )
            return 1;
    }

    return 0;
}

animatemodel()
{
    self useanimtree( #animtree );
    var_0 = getarraykeys( level.anim_prop_models[self.model] );
    var_1 = var_0[randomint( var_0.size )];
    var_2 = level.anim_prop_models[self.model][var_1];
    self setanim( var_2, 1, self getanimtime( var_2 ), 1 );
    self setanimtime( var_2, randomfloatrange( 0, 1 ) );
}

animatetreewind()
{
    self endon( "removed" );
    childthread _id_AF64();
    self useanimtree( #animtree );
    var_0 = "strong";

    for (;;)
    {
        childthread blendtreeanims( var_0 );
        level waittill( "windchange", var_0 );
    }
}

blendtreeanims( var_0 )
{
    level endon( "windchange" );
    var_1 = level.wind.weight;
    var_2 = level.wind.rate + randomfloat( level.wind.variance );
    self setanim( level.anim_prop_models[self.model]["still"], 1, self getanimtime( level.anim_prop_models[self.model]["still"] ), var_2 );
    self setanim( level.anim_prop_models[self.model][var_0], var_1, self getanimtime( level.anim_prop_models[self.model][var_0] ), var_2 );
}

_id_C1D7()
{
    var_0 = getarraykeys( level.anim_prop_models[self.model] );
    return common_scripts\utility::array_contains( var_0, "heli" );
}

_id_AF64()
{
    if ( !_id_C1D7() )
        return;

    self._id_C47C = 0.0;
    self._id_AB3A = 0.025;
    self._id_D43F = 2000;

    if ( isdefined( level._id_D43F ) )
        self._id_D43F = level._id_D43F;

    self._id_AFDC = self._id_D43F * self._id_D43F;
    childthread _id_D5A1();
    childthread _id_C1DD();
}

_id_B37E( var_0, var_1, var_2 )
{
    var_2 = ( var_2 - var_0 ) / ( var_1 - var_0 );
    var_3 = clamp( var_2, 0.0, 1.0 );
    return var_3 * var_3 * ( 3 - 2 * var_3 );
}

_id_C5A2( var_0 )
{
    var_1 = distancesquared( var_0.origin, self.origin );
    self._id_B0C2 = var_0.origin;
    return 1.0 - clamp( var_1 / self._id_AFDC, 0.0, 1.0 );
}

_id_B29E( var_0 )
{
    var_1 = distancesquared( var_0.origin, self.origin );
    self._id_B0C2 = var_0.origin;
    return 1.0 - clamp( sqrt( var_1 / self._id_AFDC ), 0.0, 1.0 );
}

_id_D38C()
{
    var_0 = 100000000.0;
    var_1 = 0;

    for ( var_2 = 0; var_2 < level._id_B545.size; var_2++ )
    {
        var_3 = level._id_B545[var_2];

        if ( !isdefined( var_3 ) )
            continue;

        var_4 = distancesquared( var_3.origin, self.origin );

        if ( var_4 < var_0 )
        {
            var_0 = var_4;
            var_1 = var_2;
        }
    }

    return level._id_B545[var_1];
}

_id_BF3E()
{
    if ( self._id_C47C > 0.0 )
    {
        var_0 = clamp( self._id_C47C - self._id_AB3A, 0.0, 1.0 );
        var_1 = _id_B37E( 0.0, 1.0, var_0 );
        self._id_C47C = var_1;
    }
}

_id_D5A1()
{
    var_0 = 0.15;

    if ( isdefined( level._id_CDB5 ) && level._id_CDB5 )
        var_0 = level._id_CDB5;

    for (;;)
    {
        var_1 = _id_D38C();

        if ( isdefined( var_1 ) )
        {
            var_2 = 0;

            if ( isdefined( level._id_AF87 ) )
                var_2 = self [[ level._id_AF87 ]]( var_1 );
            else
                var_2 = _id_C5A2( var_1 );

            if ( var_2 < level._id_A874 )
                var_2 = 0;

            if ( var_2 > 0 )
            {
                var_3 = _id_B37E( 0.0, 1.0, var_2 );
                self._id_C47C = var_3;
            }
            else
                _id_BF3E();
        }
        else
            _id_BF3E();

        wait(var_0);
    }
}

_id_C1DD()
{
    self useanimtree( #animtree );
    self setanim( level.anim_prop_models[self.model]["strong"], 1.0, 0.05, 1.0 );
    self setanim( level.anim_prop_models[self.model]["heli"], 0.0, 0.05, 1.0 );
    self clearanim( level.anim_prop_models[self.model]["still"], 0.0 );
    var_0 = 0.15;

    if ( isdefined( level._id_CDB5 ) && level._id_CDB5 )
        var_0 = level._id_CDB5;

    var_1 = 0.0;

    for (;;)
    {
        var_2 = self getanimweight( level.anim_prop_models[self.model]["heli"] );
        var_3 = self._id_C47C - var_2;
        var_4 = clamp( var_3, -1 * self._id_AB3A, self._id_AB3A );
        var_5 = var_2 + var_4;

        if ( isdefined( level._id_C767 ) && level._id_C767 )
            self clearanim( level.anim_prop_models[self.model]["still"], 0.0 );

        if ( var_5 != var_1 )
        {
            var_1 = var_5;
            self setanim( level.anim_prop_models[self.model]["strong"], 1.0 - var_5, var_0, 1.0 );
            self setanim( level.anim_prop_models[self.model]["heli"], var_5, var_0, 1.0 );
            self setanim( level.anim_prop_models[self.model]["still"], 0.0, var_0, 1.0 );
            wait(var_0);
            continue;
        }

        wait 0.5;
    }
}

_id_D475()
{
    level._id_B545 = [];
    var_0 = getentarray();

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2.vehicletype ) )
        {
            if ( var_2 maps\_vehicle::ishelicopter() )
                var_2 thread _id_BF71();
        }
    }
}

_id_BF71()
{
    if ( isspawner( self ) )
        self waittill( "spawned", var_0 );
    else
        var_0 = self;

    level._id_B545[level._id_B545.size] = var_0;
    var_0 waittill( "death", var_1 );

    if ( isdefined( var_1 ) )
    {
        waittillframeend;

        if ( isdefined( var_0.crashing ) && var_0.crashing )
            var_0 waittill( "crash_done" );
    }

    level._id_B545 = common_scripts\utility::array_remove( level._id_B545, var_0 );
}

_id_C8D8()
{
    self notify( "removed" );
}
