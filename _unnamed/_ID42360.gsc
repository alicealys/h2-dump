// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19772()
{
    if ( isdefined( level._ID30018 ) )
        return;

    level._ID30018 = 1;
    level._ID1426["riot_shield_dmg"] = loadfx( "fx/misc/riot_shield_dmg" );

    if ( !isdefined( level._ID36742 ) )
        level._ID36742 = [];

    level._ID36742["riotshield"] = ::_ID36741;
    animscripts\riotshield\riotshield::_ID19774();
}

_ID36741()
{
    animscripts\riotshield\riotshield::_ID19773();
}

_ID30024()
{
    animscripts\riotshield\riotshield::_ID30024();
}

_ID30012()
{
    animscripts\riotshield\riotshield::_ID30012();
}

_ID30023()
{
    animscripts\riotshield\riotshield::_ID30023();
}

_ID30011()
{
    animscripts\riotshield\riotshield::_ID30011();
}

_ID30014()
{
    if ( self._ID36736 != "riotshield" )
        return;

    self.combatmode = "cover";
    self.goalradius = 2048;
    self._ID51437 = undefined;
    animscripts\riotshield\riotshield::_ID30017();
    var_0 = self findbestcovernode();

    if ( isdefined( var_0 ) )
        self usecovernode( var_0 );
}

_ID17441( var_0, var_1, var_2 )
{
    var_3 = [];

    foreach ( var_5 in var_0 )
    {
        if ( var_5.combatmode != "no_cover" )
            continue;

        var_3[var_3.size] = var_5;
    }

    var_7 = spawnstruct();

    foreach ( var_5 in var_3 )
    {
        if ( isdefined( var_5._ID17437 ) && isdefined( var_5._ID17437._ID2237 ) )
            var_5._ID17437._ID2237 = _ID42237::_ID3321( var_5._ID17437._ID2237, var_5 );

        var_5._ID17437 = var_7;
    }

    var_7._ID2237 = var_3;
    var_7._ID14549 = 1;
    var_7._ID35001 = 50;
    var_7 thread _ID17440();
    return var_7;
}

_ID17451( var_0, var_1 )
{
    self._ID2237 = _ID42407::_ID3328( self._ID2237 );
    self._ID409 = var_0;

    if ( isdefined( var_1 ) )
        self._ID35001 = var_1;

    foreach ( var_3 in self._ID2237 )
    {
        var_3.goalradius = 25;
        var_3._ID23429 = squared( 160 );
        var_3._ID51437 = 1;
        var_3.pathenemyfightdist = 128;
        var_3.pathenemylookahead = 128;
    }

    _ID17463();
    thread _ID7367();
}

_ID17459()
{
    self endon( "break_group" );

    if ( self._ID2237.size == 0 )
        return;

    while ( self._ID2237.size )
    {
        _ID42407::_ID41089( self._ID2237, 1 );

        if ( self._ID17457 != "stopped" )
            self waittill( "goal" );

        self._ID2237 = _ID42407::_ID3328( self._ID2237 );
        _ID17463();
    }
}

_ID17463( var_0 )
{
    if ( self._ID2237.size == 0 )
        return;

    if ( isdefined( var_0 ) )
        self._ID409 = var_0;
    else
        var_0 = self._ID409;

    var_1 = _ID17439();
    var_2 = ( self._ID409[1], -1 * self._ID409[0], 0 );
    var_3 = var_2 * self._ID35001;
    var_4 = _ID17452( var_1, var_3 );
    var_5 = [];

    for ( var_6 = 0; var_6 < self._ID2237.size; var_6++ )
    {
        if ( isdefined( self._ID2237[var_6] ) )
        {
            var_5[var_6] = vectordot( var_4 - self._ID2237[var_6].origin, var_2 );
            continue;
        }

        var_5[var_6] = 0;
    }

    for ( var_6 = 1; var_6 < var_5.size; var_6++ )
    {
        var_7 = var_5[var_6];
        var_8 = self._ID2237[var_6];

        for ( var_9 = var_6 - 1; var_9 >= 0; var_9-- )
        {
            if ( var_7 < var_5[var_9] )
                break;

            var_5[var_9 + 1] = var_5[var_9];
            self._ID2237[var_9 + 1] = self._ID2237[var_9];
        }

        var_5[var_9 + 1] = var_7;
        self._ID2237[var_9 + 1] = var_8;
    }
}

_ID17440()
{
    for (;;)
    {
        if ( self._ID14549 > 0 )
        {
            self._ID2237 = _ID42407::_ID3328( self._ID2237 );

            if ( self._ID2237.size <= self._ID14549 )
            {
                foreach ( var_1 in self._ID2237 )
                    var_1 _ID30014();

                self notify( "break_group" );
                break;
            }
        }

        wait 1;
    }
}

_ID17452( var_0, var_1 )
{
    return var_0 - ( self._ID2237.size - 1 ) / 2 * var_1;
}

_ID17456( var_0, var_1 )
{
    self notify( "new_goal_set" );
    self._ID17457 = "moving";

    if ( isdefined( var_1 ) )
        self._ID409 = var_1;
    else
        var_1 = self._ID409;

    var_2 = ( var_1[1], -1 * var_1[0], 0 );
    var_3 = var_2 * self._ID35001;
    var_4 = _ID17452( var_0, var_3 );

    for ( var_5 = 0; var_5 < self._ID2237.size; var_5++ )
    {
        var_6 = self._ID2237[var_5];

        if ( isdefined( var_6 ) )
            var_6 setgoalpos( var_4 );

        var_4 += var_3;
    }

    thread _ID7366();
}

_ID7366()
{
    self endon( "new_goal_set" );

    for (;;)
    {
        wait 0.5;
        var_0 = 0;

        foreach ( var_2 in self._ID2237 )
        {
            if ( isdefined( var_2 ) && isalive( var_2 ) )
                var_0++;
        }

        var_4 = 0;

        for ( var_5 = 0; var_5 < self._ID2237.size; var_5++ )
        {
            var_2 = self._ID2237[var_5];

            if ( isdefined( var_2 ) )
            {
                var_6 = max( 45, var_2.goalradius );

                if ( distancesquared( var_2.origin, var_2.goalpos ) < squared( var_6 ) )
                    var_4++;
            }
        }

        if ( var_4 == var_0 )
        {
            self notify( "goal" );
            self._ID17457 = "stopped";
        }
    }
}

_ID7367()
{
    self endon( "break_group" );

    for (;;)
    {
        wait 0.5;
        var_0 = 0;

        foreach ( var_2 in self._ID2237 )
        {
            if ( isdefined( var_2 ) && isalive( var_2 ) )
                var_0++;
        }

        var_4 = 0;
        var_5 = vectortoyaw( self._ID409 );

        for ( var_6 = 0; var_6 < self._ID2237.size; var_6++ )
        {
            var_2 = self._ID2237[var_6];

            if ( isdefined( var_2 ) )
            {
                if ( abs( var_2.angles[1] - var_5 ) < 45 )
                    var_4++;
            }
        }

        if ( var_4 == var_0 )
            self notify( "goal_yaw" );
    }
}

_ID17465()
{
    foreach ( var_1 in self._ID2237 )
    {
        if ( isalive( var_1 ) )
            var_1 _ID30024();
    }
}

_ID17443()
{
    foreach ( var_1 in self._ID2237 )
    {
        if ( isalive( var_1 ) )
            var_1 _ID30012();
    }
}

_ID17464()
{
    foreach ( var_1 in self._ID2237 )
    {
        if ( isalive( var_1 ) )
            var_1 _ID30023();
    }
}

_ID17442()
{
    foreach ( var_1 in self._ID2237 )
    {
        if ( isalive( var_1 ) )
            var_1 _ID30011();
    }
}

_ID17454( var_0 )
{
    self._ID409 = var_0;
    var_1 = vectortoyaw( var_0 );

    foreach ( var_3 in self._ID2237 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        if ( isdefined( var_3.enemy ) && distancesquared( var_3.origin, var_3.enemy.origin ) < squared( var_3.pathenemyfightdist ) )
            continue;

        var_3 orientmode( "face angle", var_1 );
        var_3.lockorientation = 1;
    }

    wait 0.1;
}

_ID17467()
{
    foreach ( var_1 in self._ID2237 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        var_1 orientmode( "face default" );
        var_1.lockorientation = 0;
    }
}

_ID17447()
{
    _ID17467();

    foreach ( var_1 in self._ID2237 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        var_1.goalradius = 2048;
        var_1.pathenemyfightdist = 400;
        var_1.pathenemylookahead = 400;
    }
}

_ID17439()
{
    var_0 = ( 0, 0, 0 );
    var_1 = 0;

    foreach ( var_3 in self._ID2237 )
    {
        if ( isdefined( var_3 ) )
        {
            var_0 += var_3.origin;
            var_1++;
        }
    }

    if ( var_1 )
        var_0 = 1 / var_1 * var_0;

    return var_0;
}
