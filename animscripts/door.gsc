// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID11621()
{
    self endon( "killanimscript" );

    if ( isdefined( self._ID11017 ) )
        return;

    for (;;)
    {
        var_0 = self getdoorpathnode();

        if ( isdefined( var_0 ) )
            break;

        wait 0.2;
    }

    var_1 = var_0.type == "Door Interior" || self comparenodedirtopathdir( var_0 );

    if ( var_1 )
        _ID11618( var_0 );
    else
        _ID11622( var_0 );

    for (;;)
    {
        var_2 = self getdoorpathnode();

        if ( !isdefined( var_2 ) || var_2 != var_0 )
            break;

        wait 0.2;
    }

    thread _ID11621();
}

_ID37363()
{
    self endon( "killanimscript" );
    self._ID37364 = 1;
    wait 5;
    self._ID37364 = undefined;
}
#using_animtree("generic_human");

_ID11316( var_0 )
{
    thread _ID37363();

    if ( self.grenadeweapon == "flash_grenade" )
        self notify( "flashbang_thrown" );

    self orientmode( "face current" );
    var_0._ID24780 = gettime() + 5000;
    self._ID23677 = gettime() + 100000;
    self notify( "move_interrupt" );
    self._ID39628 = undefined;
    self clearanim( %combatrun, 0.2 );
    self._ID7._ID24414 = "stop";
    self waittill( "done_grenade_throw" );
    self orientmode( "face default" );
    self._ID23677 = gettime() + 5000;
    self.grenadeweapon = self._ID25556;
    self._ID25556 = undefined;
    animscripts\run::_ID12640();
    thread animscripts\move::_ID26332();
    thread animscripts\move::_ID29843( 1 );
}

_ID11620( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0;
    var_6 = 3;
    var_7 = undefined;
    var_7 = %cqb_stand_grenade_throw;
    var_8 = anglestoforward( var_0.angles );

    if ( var_0.type == "Door Interior" && !self comparenodedirtopathdir( var_0 ) )
        var_8 = -1 * var_8;

    var_9 = ( var_0.origin[0], var_0.origin[1], var_0.origin[2] + 64 );
    var_10 = var_9;

    if ( var_2 )
    {
        var_11 = anglestoright( var_0.angles );
        var_12 = var_0.origin - self.origin;
        var_13 = vectordot( var_11, var_12 );

        if ( var_13 > 20 )
            var_13 = 20;
        else if ( var_13 < -20 )
            var_13 = -20;

        var_10 = var_9 + var_13 * var_11;
    }

    while ( var_6 > 0 )
    {
        if ( isdefined( self.grenade ) || !isdefined( self.enemy ) )
            return;

        if ( _ID25832( var_0, var_8 ) )
            return;

        if ( !self seerecently( self.enemy, 0.2 ) && self._ID7._ID28253 == "stand" && _ID11133( self.enemy.origin - var_0.origin, 360000, 16384 ) )
        {
            if ( isdefined( var_0._ID24780 ) && var_0._ID24780 > gettime() )
                return;

            if ( self canshootenemy() )
                return;

            var_12 = var_0.origin - self.origin;

            if ( lengthsquared( var_12 ) < var_3 )
                return;

            if ( vectordot( var_12, var_8 ) < 0 )
                return;

            self._ID25556 = self.grenadeweapon;
            self.grenadeweapon = var_1;
            animscripts\combat_utility::_ID32536( self.enemy );

            if ( !var_5 )
            {
                var_14 = var_9 + var_8 * 100;

                if ( !self isgrenadepossafe( self.enemy, var_14, 128 ) )
                    return;
            }

            var_5 = 1;

            if ( animscripts\combat_utility::_ID39074( self.enemy, var_10, var_7, animscripts\combat_utility::_ID16308( var_7 ), 1, 0, 1 ) )
            {
                _ID11316( var_0 );
                return;
            }
        }

        var_6--;
        wait(var_4);
        var_15 = self getdoorpathnode();

        if ( !isdefined( var_15 ) || var_15 != var_0 )
            return;
    }
}

_ID19529()
{
    self endon( "killanimscript" );

    if ( isdefined( self._ID11017 ) )
        return;

    self._ID20777 = 0;

    for (;;)
    {
        if ( self isindoor() && !self.doingambush )
            _ID11619();
        else if ( !isdefined( self._ID23677 ) || self._ID23677 < gettime() )
        {
            self._ID23677 = undefined;
            _ID11623();
        }

        wait 0.2;
    }
}

_ID11619()
{
    if ( !isdefined( self._ID24727 ) && !self.doingambush )
    {
        self._ID20777 = 1;

        if ( !isdefined( self._ID8931 ) || !self._ID8931 )
            _ID42407::_ID12467( 1 );
    }
}

_ID11623()
{
    if ( !isdefined( self._ID8928 ) )
    {
        self._ID20777 = 0;

        if ( isdefined( self._ID8931 ) && self._ID8931 )
            _ID42407::_ID10896();
    }
}

_ID11133( var_0, var_1, var_2 )
{
    return var_0[0] * var_0[0] + var_0[1] * var_0[1] < var_1 && var_0[2] * var_0[2] < var_2;
}

_ID25832( var_0, var_1 )
{
    var_2 = var_0.origin - self.origin;
    var_3 = var_0.origin - self.enemy.origin;
    return vectordot( var_2, var_1 ) * vectordot( var_3, var_1 ) > 0;
}

_ID11618( var_0 )
{
    for (;;)
    {
        if ( isdefined( self._ID11625 ) && ( self._ID11625 == 0 || self._ID11625 < randomfloat( 1 ) ) )
            break;

        if ( _ID11133( self.origin - var_0.origin, 562500, 25600 ) )
        {
            _ID11620( var_0, "fraggrenade", 0, 302500, 0.3 );
            var_0 = self getdoorpathnode();

            if ( !isdefined( var_0 ) )
                return;

            break;
        }

        wait 0.1;
    }

    for (;;)
    {
        if ( _ID11133( self.origin - var_0.origin, 36864, 6400 ) )
        {
            _ID11619();
            self._ID23677 = gettime() + 6000;

            if ( isdefined( self._ID11624 ) && ( self._ID11624 == 0 || self._ID11624 < randomfloat( 1 ) ) )
                return;

            _ID11620( var_0, "flash_grenade", 1, 4096, 0.2 );
            return;
        }

        wait 0.1;
    }
}

_ID11622( var_0 )
{
    for (;;)
    {
        if ( !self._ID20777 || distancesquared( self.origin, var_0.origin ) < 1024 )
            return;

        wait 0.1;
    }
}
