// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
        return;

    var_0 = _ID42407::_ID46050();
    var_1 = [];
    var_2 = [];
    level._ID43603 = [];

    foreach ( var_4 in var_0 )
    {
        if ( !isdefined( var_4._ID40005["exploder_type"] ) || var_4._ID40005["exploder_type"] != "exploderanim" )
            continue;

        var_5 = var_4._ID40005["exploder"] + "";

        if ( !isdefined( level._ID43603[var_5] ) )
        {
            level._ID43603[var_5] = 0.0;
            var_1[var_5] = [];
            var_2[var_5] = [];
        }

        if ( issubstr( var_4._ID669._ID1193, "exploderanimend" ) )
        {
            var_2[var_5][var_2[var_5].size] = var_4._ID669;
            continue;
        }

        var_1[var_5][var_1[var_5].size] = var_4._ID669;
    }

    var_0 = undefined;

    foreach ( var_5, var_8 in var_1 )
    {
        var_9 = level._ID43603[var_5];

        foreach ( var_11 in var_8 )
        {
            var_12 = var_11 _ID43320();
            var_13 = _ID50915( var_12 );
            var_14 = getanimlength( _ID42407::_ID16121( var_12, var_13 ) );
            var_15 = 0.0;

            if ( isdefined( var_11._ID916 ) && var_11._ID916 > 0.0 )
                var_15 += var_11._ID916;

            if ( isdefined( var_11._ID31122 ) && var_11._ID31122 > 0.0 )
                var_15 += var_11._ID31122;

            var_9 = max( var_15 + var_14, var_9 );
            var_11 thread _ID47271( var_12 );
        }

        level._ID43603[var_5] = var_9;
    }

    foreach ( var_5, var_18 in var_2 )
    {
        if ( var_18.size == 0 )
            continue;

        var_19 = var_1[var_5];
        thread _ID45509( var_5, var_19, var_18 );
    }
}

_ID45509( var_0, var_1, var_2 )
{
    for (;;)
    {
        level waittill( "exploding_" + var_0 );
        level _ID52200( var_0, var_1, var_2 );

        if ( !level._ID9228 )
            return;
    }
}

_ID52200( var_0, var_1, var_2 )
{
    level notify( "exploder_animend_swap_" + var_0 );
    level endon( "exploder_animend_swap_" + var_0 );
    var_3 = level._ID43603[var_0] + 0.1;
    var_4 = undefined;

    if ( level._ID9228 )
    {
        var_4 = _ID42234::_ID43302();

        if ( var_4 < var_3 )
            return;

        var_4 -= var_3;
    }

    wait(var_3);

    foreach ( var_6 in var_2 )
    {
        if ( !isdefined( var_6 ) )
            continue;

        var_7 = var_6 _ID47274();
        var_7 show();
        var_7 solid();

        if ( isdefined( var_7._ID989 ) && var_7._ID989 & 1 )
            var_7 connectpaths();
    }

    foreach ( var_6 in var_1 )
    {
        if ( !isdefined( var_6 ) )
            continue;

        var_10 = var_6 _ID47274();

        if ( level._ID9228 )
        {
            var_10 hide();
            var_10 notsolid();
            continue;
        }

        var_10 delete();
    }

    if ( isdefined( var_4 ) )
    {
        wait(var_4);

        foreach ( var_6 in var_2 )
        {
            if ( !isdefined( var_6 ) )
                continue;

            var_7 = var_6 _ID47274();

            if ( !isdefined( var_6._ID43009 ) )
            {
                var_7 hide();
                var_7 notsolid();
                continue;
            }

            var_7 delete();
            var_6._ID43009 = undefined;
        }
    }
}

_ID47274()
{
    if ( isdefined( self._ID43009 ) )
        return self._ID43009;

    return self;
}

_ID47271( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "play_exploder_anim" );

        if ( isdefined( self._ID43009 ) )
        {
            if ( !isdefined( self._ID31122 ) || self._ID31122 <= 0.0 )
                waittillframeend;

            self._ID43009 thread _ID51468( var_0 );
            continue;
        }

        thread _ID51468( var_0 );
    }
}

_ID43320()
{
    var_0 = undefined;
    var_1 = strtok( self._ID1193, ":;, " );

    if ( var_1.size > 1 && isdefined( var_1[1] ) )
        var_0 = var_1[1];
    else if ( isdefined( self._ID31295 ) )
        var_0 = self._ID31295 + "_anim";
    else
        var_0 = self._ID669 + "_anim";

    return var_0;
}

_ID51468( var_0 )
{
    var_1 = _ID50915( var_0 );

    if ( isdefined( var_1 ) )
    {
        _ID42407::_ID3428( var_1 );
        _ID42259::_ID3111( self, var_0 );
    }
}

_ID50915( var_0 )
{
    var_1 = undefined;

    for ( var_2 = 0; var_2 < level._ID43404.size; var_2++ )
    {
        var_3 = getarraykeys( level._ID30895[level._ID43404[var_2]] );

        if ( _ID42237::_ID3303( var_3, var_0 ) )
        {
            var_1 = level._ID43404[var_2];
            break;
        }
    }

    return var_1;
}
