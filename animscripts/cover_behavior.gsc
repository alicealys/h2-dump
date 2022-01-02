// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0 )
{
    self._ID8766 = self.origin;
    var_1 = gettime();
    var_2 = spawnstruct();
    var_2._ID24775 = var_1 - 1;
    var_2._ID24776 = var_1 - 1;
    _ID29777();
    _ID29787();
    self._ID31831 = gettime();
    self._ID7._ID21916 = var_1;
    self._ID7._ID19343 = 0;
    self._ID7._ID24414 = "stop";
    self._ID23431 = var_1 + 3000;
    thread _ID41570();
    var_3 = gettime() > 2500;

    for (;;)
    {
        if ( animscripts\combat_utility::_ID33951() )
        {
            if ( animscripts\combat_utility::_ID39079( 1 ) )
            {
                wait 0.05;
                continue;
            }
        }

        if ( isdefined( var_0._ID22797 ) )
            _ID6668( var_0._ID22797, "mainLoopStart" );

        if ( isdefined( var_0._ID24470 ) )
        {
            if ( _ID6668( var_0._ID24470, "moveToNearByCover" ) )
                continue;
        }

        if ( animscripts\utility::_ID20915() )
            self safeteleport( self._ID8893.origin );
        else
            self safeteleport( self._ID8893.origin, _ID16193() );

        if ( !var_3 )
        {
            _ID19302( var_0, 0.05 + randomfloat( 1.5 ) );
            var_3 = 1;
            continue;
        }

        if ( _ID11528( var_0 ) )
            continue;

        if ( isdefined( anim._ID37694 ) && isalive( level.player ) )
        {
            if ( _ID39080( var_0, level.player ) )
                continue;
        }

        if ( _ID29826() )
            return;

        var_4 = 0;
        var_5 = 0;

        if ( isalive( self.enemy ) )
        {
            var_4 = _ID20736();
            var_5 = animscripts\utility::_ID6899();
        }

        if ( var_4 )
        {
            if ( self._ID7._ID16158 < gettime() )
            {
                if ( animscripts\combat_utility::_ID22626() )
                    return;
            }

            _ID3664( var_0 );
            continue;
        }

        if ( isdefined( self._ID2219 ) || _ID12979() )
        {
            if ( _ID2181() )
                return;
        }

        if ( var_5 )
        {
            _ID3662( var_0, var_2 );
            continue;
        }

        if ( _ID3657( var_0, var_2 ) )
            return;
    }
}
#using_animtree("generic_human");

_ID319( var_0 )
{
    self._ID39233 = undefined;
    self._ID7._ID28496 = undefined;

    if ( isdefined( self._ID23431 ) && self._ID23431 <= gettime() )
    {
        self._ID23430 = gettime() + 5000;
        self._ID23431 = undefined;
    }

    self clearanim( %head, 0.2 );
    self._ID13770 = undefined;
}

_ID16193()
{
    if ( self.swimmer )
        return animscripts\swim::_ID16461( self._ID8893 );

    var_0 = ( self._ID8893.angles[0], animscripts\utility::_ID16462( self._ID8893 ), self._ID8893.angles[2] );
    return var_0;
}

_ID29826()
{
    if ( self atdangerousnode() && self._ID7._ID29827 < gettime() )
    {
        if ( animscripts\combat_utility::_ID22626() )
            return 1;

        self._ID7._ID29827 = gettime() + 30000;
    }

    return 0;
}

_ID11528( var_0 )
{
    if ( _ID36841( var_0 ) )
    {
        if ( _ID20736() )
            _ID29790();

        self._ID7._ID21916 = gettime();
        return 1;
    }

    if ( _ID8897( var_0, 0 ) )
        return 1;

    return 0;
}

_ID3664( var_0 )
{
    if ( distancesquared( self.origin, self.enemy.origin ) > 562500 )
    {
        if ( _ID39080( var_0, self.enemy ) )
        {

        }
    }
    else
    {
        if ( _ID22122( var_0, "normal" ) )
        {
            _ID29790();
            self._ID7._ID21916 = gettime();
            return;
        }

        _ID19302( var_0 );
    }
}

_ID3662( var_0, var_1 )
{
    if ( self.doingambush )
    {
        if ( _ID22122( var_0, "ambush" ) )
            return;
    }
    else if ( self.providecoveringfire || gettime() >= var_1._ID24776 )
    {
        var_2 = "suppress";

        if ( !self.providecoveringfire && gettime() - self._ID22017 > 5000 && randomint( 3 ) < 2 )
            var_2 = "ambush";
        else if ( !animscripts\shoot_behavior::_ID33977() )
            var_2 = "ambush";

        if ( _ID22122( var_0, var_2 ) )
        {
            var_1._ID24776 = gettime() + randomintrange( 3000, 20000 );

            if ( _ID20736() )
                self._ID7._ID21916 = gettime();

            return;
        }
    }

    if ( _ID39080( var_0, self.enemy ) )
        return;

    _ID19302( var_0 );
}

_ID3657( var_0, var_1 )
{
    if ( _ID8897( var_0, 0.1 ) )
        return 0;

    if ( isdefined( self.enemy ) )
    {
        if ( _ID39080( var_0, self.enemy ) )
            return 0;
    }

    if ( !self.doingambush && gettime() >= var_1._ID24775 )
    {
        if ( _ID22627( var_0 ) )
        {
            var_1._ID24775 = gettime() + randomintrange( 4000, 15000 );
            return 0;
        }
    }

    if ( gettime() > self._ID7._ID16158 )
    {
        if ( _ID6901() )
            return 1;
    }

    if ( self.doingambush || gettime() >= var_1._ID24776 && isdefined( self.enemy ) )
    {
        if ( _ID22122( var_0, "ambush" ) )
        {
            if ( _ID20736() )
                _ID29790();

            self._ID7._ID21916 = gettime();
            var_1._ID24776 = gettime() + randomintrange( 6000, 20000 );
            return 0;
        }
    }

    _ID19302( var_0 );
    return 0;
}

_ID20736()
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( distancesquared( self.enemy.origin, self._ID8766 ) < 256 )
        return 0;
    else
        return animscripts\utility::_ID6885();
}

_ID36841( var_0 )
{
    if ( !animscripts\utility::_ID20934() )
        return 0;

    var_1 = gettime();
    var_2 = 1;

    while ( animscripts\utility::_ID20934() )
    {
        var_2 = 0;
        self safeteleport( self._ID8893.origin );
        var_3 = 1;

        if ( isdefined( self._ID13977 ) )
            var_3 = _ID42237::_ID8201();

        if ( var_3 )
        {
            if ( _ID39082( var_0 ) )
            {
                self notify( "killanimscript" );
                return 1;
            }
        }

        if ( self._ID7._ID3462 && animscripts\utility::_ID6884() )
            return 0;

        if ( _ID20736() || animscripts\utility::_ID6899() )
        {
            if ( isdefined( anim._ID37694 ) && isalive( level.player ) )
            {
                if ( _ID39080( var_0, level.player ) )
                    continue;
            }

            if ( _ID8897( var_0, 0 ) )
                continue;

            if ( self.team != "allies" && gettime() >= var_1 )
            {
                if ( _ID5294( var_0 ) )
                {
                    var_1 = gettime();

                    if ( !isdefined( self._ID13977 ) )
                        var_1 += randomintrange( 3000, 12000 );

                    continue;
                }
            }

            if ( _ID39080( var_0, self.enemy ) )
            {
                var_2 = 1;
                continue;
            }
        }

        if ( _ID8897( var_0, 0.1 ) )
            continue;

        _ID19302( var_0 );
    }

    if ( !var_2 && randomint( 2 ) == 0 )
        _ID22625( var_0 );

    return 1;
}

_ID16515( var_0 )
{
    var_1 = [];

    if ( var_0 == 1 )
        var_1[0] = 0;
    else if ( var_0 == 2 )
    {
        var_1[0] = randomint( 2 );
        var_1[1] = 1 - var_1[0];
    }
    else
    {
        for ( var_2 = 0; var_2 < var_0; var_2++ )
            var_1[var_2] = var_2;

        for ( var_2 = 0; var_2 < var_0; var_2++ )
        {
            var_3 = var_2 + randomint( var_0 - var_2 );
            var_4 = var_1[var_3];
            var_1[var_3] = var_1[var_2];
            var_1[var_2] = var_4;
        }
    }

    return var_1;
}

_ID6668( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    thread _ID12651();
    var_5 = gettime();
    var_6 = undefined;

    if ( isdefined( var_4 ) )
        var_6 = [[ var_0 ]]( var_2, var_3, var_4 );
    else if ( isdefined( var_3 ) )
        var_6 = [[ var_0 ]]( var_2, var_3 );
    else if ( isdefined( var_2 ) )
        var_6 = [[ var_0 ]]( var_2 );
    else
        var_6 = [[ var_0 ]]();

    if ( !var_6 )
    {
        self notify( "dont_end_idle" );
        jump loc_6D4
    }

    return var_6;
}

_ID41570()
{
    self endon( "killanimscript" );
    self._ID22017 = gettime() - 100000;
    self._ID36846 = self._ID22017;

    for (;;)
    {
        self waittill( "suppression" );
        var_0 = gettime();

        if ( self._ID22017 < var_0 - 700 )
            self._ID36846 = var_0;

        self._ID22017 = var_0;
    }
}

_ID8897( var_0, var_1 )
{
    if ( self._ID6323 > weaponclipsize( self.weapon ) * var_1 )
        return 0;

    self._ID20879 = 1;
    var_2 = _ID6668( var_0._ID868, "reload" );
    self._ID20879 = 0;
    return var_2;
}

_ID22122( var_0, var_1 )
{
    thread animscripts\shoot_behavior::_ID10054( var_1 );

    if ( !self.fixednode && !self.doingambush )
        thread _ID6116();

    var_2 = _ID6668( var_0._ID22122, "leaveCoverAndShoot" );
    self notify( "stop_deciding_how_to_shoot" );
    return var_2;
}

_ID22627( var_0 )
{
    if ( self._ID7._ID3462 && animscripts\utility::_ID6884() )
        return 0;

    if ( self._ID7._ID21916 + 6000 > gettime() )
        return _ID22625( var_0 );
    else
    {
        var_1 = _ID6668( var_0._ID599, "look", 2 + randomfloat( 2 ) );

        if ( var_1 )
            return 1;

        return _ID6668( var_0._ID13953, "fastlook" );
    }
}

_ID22625( var_0 )
{
    var_1 = _ID6668( var_0._ID13953, "fastlook" );

    if ( var_1 )
        return 1;

    return _ID6668( var_0._ID599, "look", 0 );
}

_ID19302( var_0, var_1 )
{
    self._ID14563 = 0;

    if ( isdefined( var_0._ID14562 ) )
    {
        if ( !self._ID7._ID19343 && gettime() - self._ID36846 < 600 )
        {
            if ( _ID6668( var_0._ID14562, "flinch" ) )
                return 1;
        }
        else
            thread _ID14564( var_0 );
    }

    if ( !self._ID7._ID19343 )
    {
        thread _ID19338( var_0._ID19302 );
        self._ID7._ID19343 = 1;
    }

    if ( isdefined( var_1 ) )
        _ID19341( var_1 );
    else
        _ID19342();

    if ( self._ID14563 )
        self waittill( "flinch_done" );

    self notify( "stop_waiting_to_flinch" );
}

_ID19341( var_0 )
{
    self endon( "end_idle" );
    wait(var_0);
}

_ID19342()
{
    self endon( "end_idle" );
    wait(0.3 + randomfloat( 0.1 ));
    self waittill( "do_slow_things" );
}

_ID19338( var_0 )
{
    var_1 = gettime();
    self endon( "killanimscript" );
    self [[ var_0 ]]();
}

_ID14564( var_0 )
{
    self endon( "killanimscript" );
    self endon( "stop_waiting_to_flinch" );
    var_1 = self._ID22017;

    for (;;)
    {
        self waittill( "suppression" );
        var_2 = gettime();

        if ( var_1 < var_2 - 2000 )
            break;

        var_1 = var_2;
    }

    self._ID14563 = 1;
    var_3 = _ID6668( var_0._ID14562, "flinch" );
    self._ID14563 = 0;
    self notify( "flinch_done" );
}

_ID12651()
{
    self endon( "killanimscript" );
    self endon( "dont_end_idle" );
    waitframe;

    if ( !isdefined( self ) )
        return;

    self notify( "end_idle" );
    self._ID7._ID19343 = 0;
}

_ID39080( var_0, var_1 )
{
    var_2 = anglestoforward( self.angles );
    var_3 = vectornormalize( var_1.origin - self.origin );

    if ( vectordot( var_2, var_3 ) < 0 )
        return 0;

    if ( self.doingambush && !animscripts\utility::_ID29285() )
        return 0;

    if ( animscripts\utility::_ID20849() )
        return _ID6668( var_0._ID17412, "grenadeHidden", var_1 );
    else
        return _ID6668( var_0.grenade, "grenade", var_1 );
}

_ID5294( var_0 )
{
    if ( !animscripts\utility::_ID6834() )
        return 0;

    return _ID6668( var_0._ID5294, "blindfire" );
}

_ID6116()
{
    self endon( "killanimscript" );
    self endon( "stop_deciding_how_to_shoot" );

    for (;;)
    {
        if ( self.fixednode || self.doingambush )
            return;

        wait(0.5 + randomfloat( 0.75 ));

        if ( !isdefined( self.enemy ) )
            continue;

        if ( _ID12979() )
        {
            if ( _ID2181() )
                return;
        }

        if ( !animscripts\utility::_ID29285() && !animscripts\utility::_ID6898() )
        {
            if ( gettime() > self._ID7._ID16158 )
            {
                if ( _ID6901() )
                    return;
            }
        }
    }
}

_ID12979()
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( self.enemy _ID42237::_ID20747() )
        return 1;

    if ( isplayernumber( self.enemy ) )
    {
        if ( isdefined( self.enemy.health ) && self.enemy.health < self.enemy.maxhealth )
            return 1;
    }
    else if ( isai( self.enemy ) && self.enemy animscripts\utility::_ID20934() )
        return 1;

    if ( isdefined( self.enemy._ID20879 ) && self.enemy._ID20879 )
        return 1;

    return 0;
}

_ID29787()
{
    self._ID7._ID29827 = 0;
}

_ID29777()
{
    var_0 = gettime();

    if ( isdefined( self._ID10831 ) && var_0 > self._ID7._ID16158 )
        self._ID7._ID16158 = var_0 + randomintrange( 2000, 5000 );
    else if ( isdefined( self.enemy ) )
    {
        var_1 = distance2d( self.origin, self.enemy.origin );

        if ( var_1 < self.engagemindist )
        {
            self._ID7._ID16158 = var_0 + randomintrange( 5000, 10000 );
            return;
        }

        if ( var_1 > self.engagemaxdist && var_1 < self.goalradius )
        {
            self._ID7._ID16158 = var_0 + randomintrange( 2000, 5000 );
            return;
        }

        self._ID7._ID16158 = var_0 + randomintrange( 10000, 15000 );
        return;
        return;
    }
    else
        self._ID7._ID16158 = var_0 + randomintrange( 5000, 15000 );
}

_ID29790()
{
    if ( isdefined( self._ID2219 ) )
        self._ID31831 = gettime() + randomintrange( 500, 1000 );
    else
        self._ID31831 = gettime() + randomintrange( 3000, 5000 );
}

_ID6901()
{
    return _ID2181();
}

_ID2181()
{
    if ( self.fixednode || self.doingambush )
        return 0;

    if ( isdefined( self._ID2219 ) && gettime() >= self._ID31831 )
        return animscripts\combat_utility::_ID39079( 0 );

    var_0 = 0;

    if ( !isdefined( self.enemy ) || !self.enemy _ID42237::_ID20747() )
        var_0 = animscripts\combat_utility::_ID22626();

    if ( !var_0 && isdefined( self.enemy ) && !animscripts\utility::_ID6885() )
    {
        if ( gettime() >= self._ID31831 )
            return animscripts\combat_utility::_ID39079( 0 );
    }

    return var_0;
}

_ID39082( var_0 )
{
    if ( isdefined( var_0._ID24470 ) )
    {
        if ( _ID6668( var_0._ID24470, "moveToNearByCover" ) )
            return 1;
    }

    return animscripts\combat_utility::_ID22626();
}

_ID47503( var_0 )
{
    var_1 = animscripts\utility::_ID22631( var_0 );

    foreach ( var_4, var_3 in var_1 )
        self._ID7._ID3291[var_4] = var_3;
}

_ID43101()
{
    _ID47503( "cqb_stationary_turn" );
}

_ID46407()
{
    _ID47503( "casual_stationary_turn" );
}

_ID32453()
{
    _ID47503( "exposed_turn" );
}

_ID32452()
{
    _ID47503( "coverstand_turn" );
}

_ID32254()
{
    _ID47503( "exposed_turn_crouch" );
}

_ID32464()
{
    self._ID7._ID3291["turn_left_45"] = animscripts\swim::_ID16643( "turn_left_45" );
    self._ID7._ID3291["turn_left_90"] = animscripts\swim::_ID16643( "turn_left_90" );
    self._ID7._ID3291["turn_left_135"] = animscripts\swim::_ID16643( "turn_left_135" );
    self._ID7._ID3291["turn_left_180"] = animscripts\swim::_ID16643( "turn_left_180" );
    self._ID7._ID3291["turn_right_45"] = animscripts\swim::_ID16643( "turn_right_45" );
    self._ID7._ID3291["turn_right_90"] = animscripts\swim::_ID16643( "turn_right_90" );
    self._ID7._ID3291["turn_right_135"] = animscripts\swim::_ID16643( "turn_right_135" );
    self._ID7._ID3291["turn_right_180"] = animscripts\swim::_ID16643( "turn_right_180" );
}

_ID39234( var_0 )
{
    if ( isdefined( self.node ) )
    {
        var_1 = self.node;
        var_2 = abs( angleclamp180( self.angles[1] - var_1.angles[1] + var_0 ) );

        if ( self._ID7._ID28253 == "stand" && var_1 gethighestnodestance() != "stand" )
        {
            if ( var_2 > 45 && var_2 < 90 )
                self orientmode( "face angle", self.angles[1] );
            else
                self orientmode( "face current" );

            var_3 = 1.5;
            var_4 = %exposed_stand_2_crouch;
            var_5 = getnotetracktimes( var_4, "anim_pose = \"crouch\"" )[0];
            var_5 = min( 1, var_5 * 1.1 );
            var_6 = var_5 * getanimlength( var_4 ) / var_3;
            self setflaggedanimknoballrestart( "crouchanim", var_4, %body, 1, 0.2, var_3 );
            animscripts\notetracks::_ID11534( var_6, "crouchanim" );
            self clearanim( %body, 0.2 );
        }

        if ( animscripts\utility::_ID20915() )
        {
            self notify( "force_space_rotation_update",  0, 0  );
            return;
        }
        else
            self orientmode( "face angle", self.angles[1] );

        var_7 = angleclamp180( self.angles[1] - var_1.angles[1] + var_0 );

        if ( abs( var_7 ) > 45 )
        {
            if ( self.swimmer )
                _ID32464();
            else if ( self._ID7._ID28253 == "stand" )
            {
                if ( isdefined( self._ID3152 ) && self._ID3152 == "s1_soldier" )
                {
                    if ( isdefined( self._ID8910 ) )
                    {
                        if ( self._ID8910 == "stand" )
                            _ID32452();
                        else
                            _ID32453();
                    }
                    else
                        _ID32453();
                }
                else if ( isdefined( self._ID8931 ) && self._ID8931 )
                    _ID43101();
                else if ( animscripts\utility::_ID50875() )
                    _ID46407();
                else
                    _ID32453();
            }
            else
                _ID32254();

            self._ID39229 = 45;
            self._ID39233 = 1;
            animscripts\combat::_ID39232( var_7 );
            self._ID39233 = undefined;
        }
    }
}

_ID24470()
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( isdefined( self._ID10831 ) )
    {
        self._ID10831 = undefined;
        return 0;
    }

    if ( !isdefined( self.node ) )
        return 0;

    if ( randomint( 3 ) == 0 )
        return 0;

    if ( self.fixednode || self.doingambush || self.keepclaimednode || self.keepclaimednodeifvalid )
        return 0;

    if ( distancesquared( self.origin, self.node.origin ) > 256 )
        return 0;

    var_0 = self findshufflecovernode();

    if ( isdefined( var_0 ) && var_0 != self.node && self usecovernode( var_0 ) )
    {
        self._ID34122 = 1;
        self._ID34124 = var_0;
        self._ID10831 = 1;
        wait 0.5;
        return 1;
    }

    return 0;
}
