// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("animated_props");

_ID616()
{
    waitframe;
    _ID19836();
    thread _ID54389();
    level._ID19579 = [];
    level._ID3056 = #animtree;

    if ( !isdefined( level._ID3055 ) )
        level._ID3055 = [];

    if ( !isdefined( level._ID3054 ) )
        level._ID3054 = [];

    var_0 = getentarray( "animated_model", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID23870 );

    if ( isdefined( level._ID19579 ) && level._ID19579.size )
    {
        var_1 = " ";

        foreach ( var_3 in level._ID19579 )
            var_1 += ( var_3 + " " );
    }

    foreach ( var_6 in var_0 )
    {
        if ( isdefined( level._ID3054[var_6._ID669] ) )
        {
            var_6 thread [[ level._ID3054[var_6._ID669] ]]();
            continue;
        }

        var_7 = getarraykeys( level._ID3055[var_6._ID669] );
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
            var_6 thread _ID3177();
        else
            var_6 thread _ID3175();
    }
}

_ID19836()
{
    if ( isdefined( level._ID41775 ) )
        return;

    level._ID41775 = spawnstruct();
    level._ID41775._ID855 = 0.4;
    level._ID41775._ID1318 = 1;
    level._ID41775._ID40040 = 0.2;
}

_ID23870()
{
    if ( !isdefined( level._ID3055[self._ID669] ) )
    {
        if ( !_ID2814( level._ID19579, self._ID669 ) )
            level._ID19579[level._ID19579.size] = self._ID669;
    }
}

_ID2814( var_0, var_1 )
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

_ID3175()
{
    self useanimtree( #animtree );
    var_0 = getarraykeys( level._ID3055[self._ID669] );
    var_1 = var_0[randomint( var_0.size )];
    var_2 = level._ID3055[self._ID669][var_1];
    self setanim( var_2, 1, self getanimtime( var_2 ), 1 );
    self setanimtime( var_2, randomfloatrange( 0, 1 ) );
}

_ID3177()
{
    self endon( "removed" );
    childthread _ID44900();
    self useanimtree( #animtree );
    var_0 = "strong";

    for (;;)
    {
        childthread _ID5289( var_0 );
        level waittill( "windchange",  var_0  );
    }
}

_ID5289( var_0 )
{
    level endon( "windchange" );
    var_1 = level._ID41775._ID1318;
    var_2 = level._ID41775._ID855 + randomfloat( level._ID41775._ID40040 );
    self setanim( level._ID3055[self._ID669]["still"], 1, self getanimtime( level._ID3055[self._ID669]["still"] ), var_2 );
    self setanim( level._ID3055[self._ID669][var_0], var_1, self getanimtime( level._ID3055[self._ID669][var_0] ), var_2 );
}

_ID49623()
{
    var_0 = getarraykeys( level._ID3055[self._ID669] );
    return _ID42237::_ID3303( var_0, "heli" );
}

_ID44900()
{
    if ( !_ID49623() )
        return;

    self._ID50300 = 0.0;
    self._ID43834 = 0.025;
    self._ID54335 = 2000;

    if ( isdefined( level._ID54335 ) )
        self._ID54335 = level._ID54335;

    self._ID45020 = self._ID54335 * self._ID54335;
    childthread _ID54689();
    childthread _ID49629();
}

_ID45950( var_0, var_1, var_2 )
{
    var_2 = ( var_2 - var_0 ) / ( var_1 - var_0 );
    var_3 = clamp( var_2, 0.0, 1.0 );
    return var_3 * var_3 * ( 3 - 2 * var_3 );
}

_ID50594( var_0 )
{
    var_1 = distancesquared( var_0._ID740, self._ID740 );
    self._ID45250 = var_0._ID740;
    return 1.0 - clamp( var_1 / self._ID45020, 0.0, 1.0 );
}

_ID45726( var_0 )
{
    var_1 = distancesquared( var_0._ID740, self._ID740 );
    self._ID45250 = var_0._ID740;
    return 1.0 - clamp( sqrt( var_1 / self._ID45020 ), 0.0, 1.0 );
}

_ID54156()
{
    var_0 = 1e+08.0;
    var_1 = 0;

    for ( var_2 = 0; var_2 < level._ID46405.size; var_2++ )
    {
        var_3 = level._ID46405[var_2];

        if ( !isdefined( var_3 ) )
            continue;

        var_4 = distancesquared( var_3._ID740, self._ID740 );

        if ( var_4 < var_0 )
        {
            var_0 = var_4;
            var_1 = var_2;
        }
    }

    return level._ID46405[var_1];
}

_ID48958()
{
    if ( self._ID50300 > 0.0 )
    {
        var_0 = clamp( self._ID50300 - self._ID43834, 0.0, 1.0 );
        var_1 = _ID45950( 0.0, 1.0, var_0 );
        self._ID50300 = var_1;
    }
}

_ID54689()
{
    var_0 = 0.15;

    if ( isdefined( level._ID52661 ) && level._ID52661 )
        var_0 = level._ID52661;

    for (;;)
    {
        var_1 = _ID54156();

        if ( isdefined( var_1 ) )
        {
            var_2 = 0;

            if ( isdefined( level._ID44935 ) )
                var_2 = self [[ level._ID44935 ]]( var_1 );
            else
                var_2 = _ID50594( var_1 );

            if ( var_2 < level._ID43124 )
                var_2 = 0;

            if ( var_2 > 0 )
            {
                var_3 = _ID45950( 0.0, 1.0, var_2 );
                self._ID50300 = var_3;
            }
            else
                _ID48958();
        }
        else
            _ID48958();

        wait(var_0);
    }
}

_ID49629()
{
    self useanimtree( #animtree );
    self setanim( level._ID3055[self._ID669]["strong"], 1.0, 0.05, 1.0 );
    self setanim( level._ID3055[self._ID669]["heli"], 0.0, 0.05, 1.0 );
    self clearanim( level._ID3055[self._ID669]["still"], 0.0 );
    var_0 = 0.15;

    if ( isdefined( level._ID52661 ) && level._ID52661 )
        var_0 = level._ID52661;

    var_1 = 0.0;

    for (;;)
    {
        var_2 = self getanimweight( level._ID3055[self._ID669]["heli"] );
        var_3 = self._ID50300 - var_2;
        var_4 = clamp( var_3, -1 * self._ID43834, self._ID43834 );
        var_5 = var_2 + var_4;

        if ( isdefined( level._ID51047 ) && level._ID51047 )
            self clearanim( level._ID3055[self._ID669]["still"], 0.0 );

        if ( var_5 != var_1 )
        {
            var_1 = var_5;
            self setanim( level._ID3055[self._ID669]["strong"], 1.0 - var_5, var_0, 1.0 );
            self setanim( level._ID3055[self._ID669]["heli"], var_5, var_0, 1.0 );
            self setanim( level._ID3055[self._ID669]["still"], 0.0, var_0, 1.0 );
            wait(var_0);
            continue;
        }

        wait 0.5;
    }
}

_ID54389()
{
    level._ID46405 = [];
    var_0 = getentarray();

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID1282 ) )
        {
            if ( var_2 _ID42411::_ID20763() )
                var_2 thread _ID49009();
        }
    }
}

_ID49009()
{
    if ( isspawner( self ) )
        self waittill( "spawned",  var_0  );
    else
        var_0 = self;

    level._ID46405[level._ID46405.size] = var_0;
    var_0 waittill( "death",  var_1  );

    if ( isdefined( var_1 ) )
    {
        waitframe;

        if ( isdefined( var_0._ID9056 ) && var_0._ID9056 )
            var_0 waittill( "crash_done" );
    }

    level._ID46405 = _ID42237::_ID3321( level._ID46405, var_0 );
}

_ID51416()
{
    self notify( "removed" );
}
