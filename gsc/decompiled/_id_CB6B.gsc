// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
        return;

    var_0 = maps\_utility::_id_B3E2();
    var_1 = [];
    var_2 = [];
    level._id_AA53 = [];

    foreach ( var_4 in var_0 )
    {
        if ( !isdefined( var_4.v["exploder_type"] ) || var_4.v["exploder_type"] != "exploderanim" )
            continue;

        var_5 = var_4.v["exploder"] + "";

        if ( !isdefined( level._id_AA53[var_5] ) )
        {
            level._id_AA53[var_5] = 0.0;
            var_1[var_5] = [];
            var_2[var_5] = [];
        }

        if ( issubstr( var_4.model.targetname, "exploderanimend" ) )
        {
            var_2[var_5][var_2[var_5].size] = var_4.model;
            continue;
        }

        var_1[var_5][var_1[var_5].size] = var_4.model;
    }

    var_0 = undefined;

    foreach ( var_5, var_8 in var_1 )
    {
        var_9 = level._id_AA53[var_5];

        foreach ( var_11 in var_8 )
        {
            var_12 = var_11 _id_A938();
            var_13 = _id_C6E3( var_12 );
            var_14 = getanimlength( maps\_utility::getanim_from_animname( var_12, var_13 ) );
            var_15 = 0.0;

            if ( isdefined( var_11.script_delay ) && var_11.script_delay > 0.0 )
                var_15 += var_11.script_delay;

            if ( isdefined( var_11.script_delay_post ) && var_11.script_delay_post > 0.0 )
                var_15 += var_11.script_delay_post;

            var_9 = max( var_15 + var_14, var_9 );
            var_11 thread _id_B8A7( var_12 );
        }

        level._id_AA53[var_5] = var_9;
    }

    foreach ( var_5, var_18 in var_2 )
    {
        if ( var_18.size == 0 )
            continue;

        var_19 = var_1[var_5];
        thread _id_B1C5( var_5, var_19, var_18 );
    }
}

_id_B1C5( var_0, var_1, var_2 )
{
    for (;;)
    {
        level waittill( "exploding_" + var_0 );
        level _id_CBE8( var_0, var_1, var_2 );

        if ( !level.createfx_enabled )
            return;
    }
}

_id_CBE8( var_0, var_1, var_2 )
{
    level notify( "exploder_animend_swap_" + var_0 );
    level endon( "exploder_animend_swap_" + var_0 );
    var_3 = level._id_AA53[var_0] + 0.1;
    var_4 = undefined;

    if ( level.createfx_enabled )
    {
        var_4 = common_scripts\_exploder::_id_A926();

        if ( var_4 < var_3 )
            return;

        var_4 -= var_3;
    }

    wait( var_3 );

    foreach ( var_6 in var_2 )
    {
        if ( !isdefined( var_6 ) )
            continue;

        var_7 = var_6 _id_B8AA();
        var_7 show();
        var_7 solid();

        if ( isdefined( var_7.spawnflags ) && var_7.spawnflags & 1 )
            var_7 connectpaths();
    }

    foreach ( var_6 in var_1 )
    {
        if ( !isdefined( var_6 ) )
            continue;

        var_10 = var_6 _id_B8AA();

        if ( level.createfx_enabled )
        {
            var_10 hide();
            var_10 notsolid();
            continue;
        }

        var_10 delete();
    }

    if ( isdefined( var_4 ) )
    {
        wait( var_4 );

        foreach ( var_6 in var_2 )
        {
            if ( !isdefined( var_6 ) )
                continue;

            var_7 = var_6 _id_B8AA();

            if ( !isdefined( var_6._id_A801 ) )
            {
                var_7 hide();
                var_7 notsolid();
                continue;
            }

            var_7 delete();
            var_6._id_A801 = undefined;
        }
    }
}

_id_B8AA()
{
    if ( isdefined( self._id_A801 ) )
        return self._id_A801;

    return self;
}

_id_B8A7( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "play_exploder_anim" );

        if ( isdefined( self._id_A801 ) )
        {
            if ( !isdefined( self.script_delay_post ) || self.script_delay_post <= 0.0 )
                waitframe();

            self._id_A801 thread _id_C90C( var_0 );
            continue;
        }

        thread _id_C90C( var_0 );
    }
}

_id_A938()
{
    var_0 = undefined;
    var_1 = strtok( self.targetname, ":;, " );

    if ( var_1.size > 1 && isdefined( var_1[1] ) )
        var_0 = var_1[1];
    else if ( isdefined( self.script_modelname ) )
        var_0 = self.script_modelname + "_anim";
    else
        var_0 = self.model + "_anim";

    return var_0;
}

_id_C90C( var_0 )
{
    var_1 = _id_C6E3( var_0 );

    if ( isdefined( var_1 ) )
    {
        maps\_utility::assign_animtree( var_1 );
        maps\_anim::anim_single_solo( self, var_0 );
    }
}

_id_C6E3( var_0 )
{
    var_1 = undefined;

    for ( var_2 = 0; var_2 < level._id_A98C.size; var_2++ )
    {
        var_3 = getarraykeys( level.scr_anim[level._id_A98C[var_2]] );

        if ( common_scripts\utility::array_contains( var_3, var_0 ) )
        {
            var_1 = level._id_A98C[var_2];
            break;
        }
    }

    return var_1;
}
