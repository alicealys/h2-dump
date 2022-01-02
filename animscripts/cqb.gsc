// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID24399()
{
    _ID44997();

    if ( self._ID7._ID28253 != "stand" )
    {
        self clearanim( %animscript_root, 0.2 );

        if ( self._ID7._ID28253 == "prone" )
            animscripts\utility::_ID13390( 1 );

        self._ID7._ID28253 = "stand";
    }

    self._ID7._ID24414 = self.movemode;
    _ID8930();
    self clearanim( %h1_stairs, 0.1 );

    if ( _ID53864() )
        return;

    var_0 = _ID10665();
    var_1 = _ID51419();
    var_2 = 0.2;
    thread _ID52702( var_0, var_2 );
    _ID54579( var_0, var_2, var_1 );
    _ID8920( var_0 );
    animscripts\notetracks::_ID11534( var_2, "runanim" );
}

_ID44997()
{
    if ( !animscripts\stairs_utility::_ID54360() )
        animscripts\run::_ID35603();
}

_ID53864()
{
    return !animscripts\stairs_utility::_ID54360() && animscripts\run::_ID35604();
}

_ID51419()
{
    var_0 = animscripts\stairs_utility::_ID47003();

    if ( var_0 == "none" && !animscripts\stairs_utility::_ID54360() )
        return 0.3;
    else
        return 0.1;
}

_ID54579( var_0, var_1, var_2 )
{
    if ( isdefined( self._ID37740 ) )
        var_3 = self._ID37740;
    else
        var_3 = 0;

    self._ID37740 = gettime();

    if ( !animscripts\stairs_utility::_ID54360() )
    {
        var_4 = animscripts\stairs_utility::_ID47003();
        var_5 = %walk_and_run_loops;

        if ( self._ID37740 - var_3 > var_1 * 1000 && var_4 == "none" )
            var_5 = %stand_and_crouch;

        self setflaggedanimknoball( "runanim", var_0, var_5, 1, var_2, self._ID24424 * self._ID43116, 1 );
        animscripts\run::_ID32698( animscripts\utility::_ID22630( "cqb", "move_b" ), animscripts\utility::_ID22630( "cqb", "move_l" ), animscripts\utility::_ID22630( "cqb", "move_r" ) );
        thread animscripts\run::_ID32577( "cqb" );
    }
    else
    {
        self notify( "stop_move_anim_update" );
        self._ID39628 = undefined;
        var_5 = %body;
        self setflaggedanimknoball( "runanim", var_0, var_5, 1, var_2, self._ID24424 * self._ID43116, 1 );
    }
}

_ID10665()
{
    if ( isdefined( self._ID9574 ) && isdefined( self._ID9574["cqb"] ) )
        return animscripts\run::_ID16576();

    if ( animscripts\stairs_utility::ismovingonstairs() )
    {
        var_0 = animscripts\stairs_utility::_ID53776();
        return animscripts\utility::_ID22630( "cqb", var_0 );
    }

    if ( self._ID36736 != "riotshield" )
    {
        var_1 = animscripts\slopes_utility::_ID44300();

        if ( isdefined( var_1 ) )
        {
            var_2 = animscripts\utility::_ID22630( "cqb", "straight_" + var_1 );
            return var_2;
        }
    }

    if ( self.movemode == "walk" )
        return animscripts\utility::_ID22630( "cqb", "move_f" );

    if ( isdefined( self._ID7._ID4958 ) && self._ID7._ID4958 )
        return animscripts\utility::_ID22630( "cqb", "straight" );

    if ( !isdefined( self._ID7._ID30423 ) )
        return animscripts\utility::_ID22630( "cqb", "straight" );

    var_3 = animscripts\utility::_ID22630( "cqb", "straight_twitch" );

    if ( !isdefined( var_3 ) || var_3.size == 0 )
        return animscripts\utility::_ID22630( "cqb", "straight" );

    var_4 = animscripts\utility::_ID16553( self._ID7._ID30423, 4 );

    if ( var_4 == 0 )
        return animscripts\utility::_ID47584( var_3 );

    return animscripts\utility::_ID22630( "cqb", "straight" );
}

_ID8922()
{
    self endon( "movemode" );
    self endon( "should_stairs_transition" );
    self orientmode( "face motion" );
    var_0 = "reload_" + animscripts\combat_utility::_ID16710();
    var_1 = animscripts\utility::_ID22630( "cqb", "reload" );

    if ( isarray( var_1 ) )
        var_1 = var_1[randomint( var_1.size )];

    thread _ID52702( var_1, getanimlength( var_1 ), 1 );
    var_2 = animscripts\combat_utility::_ID44708();
    self setflaggedanimknoballrestart( var_0, var_1, %body, 1, 0.25, self._ID24424 * self._ID43116 * var_2 );
    _ID8920( var_1 );
    animscripts\run::_ID32698( animscripts\utility::_ID22630( "cqb", "move_b" ), animscripts\utility::_ID22630( "cqb", "move_l" ), animscripts\utility::_ID22630( "cqb", "move_r" ) );
    thread animscripts\run::_ID32577( "cqb" );
    childthread animscripts\stairs_utility::_ID50503( var_1, 0, 0.3 );
    animscripts\shared::_ID11529( var_0 );
    self notify( "killThreadCheckStairsTransition" );
}

_ID8930()
{
    var_0 = animscripts\move::_ID23140();
    animscripts\run::_ID32784( var_0 );
    thread animscripts\run::_ID13753();
}

_ID33547()
{
    level._ID8929 = [];
    var_0 = getentarray( "cqb_point_of_interest", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        level._ID8929[var_1] = var_0[var_1].origin;
        var_0[var_1] delete();
    }
}

_ID14209()
{
    if ( isdefined( anim._ID14212 ) )
        return;

    anim._ID14212 = 1;

    if ( !level._ID8929.size )
        return;

    for (;;)
    {
        var_0 = getaiarray();
        var_1 = 0;

        foreach ( var_3 in var_0 )
        {
            if ( isalive( var_3 ) && var_3 animscripts\utility::_ID20716() && !isdefined( var_3._ID10894 ) )
            {
                var_4 = var_3._ID7._ID24414 != "stop";
                var_5 = ( var_3.origin[0], var_3.origin[1], var_3 getshootatpos()[2] );
                var_6 = var_5;
                var_7 = anglestoforward( var_3.angles );

                if ( var_4 )
                {
                    var_8 = bullettrace( var_6, var_6 + var_7 * 128, 0, undefined );
                    var_6 = var_8["position"];
                }

                var_9 = -1;
                var_10 = 1048576;

                for ( var_11 = 0; var_11 < level._ID8929.size; var_11++ )
                {
                    var_12 = level._ID8929[var_11];
                    var_13 = distancesquared( var_12, var_6 );

                    if ( var_13 < var_10 )
                    {
                        if ( var_4 )
                        {
                            if ( distancesquared( var_12, var_5 ) < 4096 )
                                continue;

                            var_14 = vectordot( vectornormalize( var_12 - var_5 ), var_7 );

                            if ( var_14 < 0.643 || var_14 > 0.966 )
                                continue;
                        }
                        else if ( var_13 < 2500 )
                            continue;

                        if ( !sighttracepassed( var_6, var_12, 0, undefined ) )
                            continue;

                        var_10 = var_13;
                        var_9 = var_11;
                    }
                }

                if ( var_9 < 0 )
                    var_3._ID8921 = undefined;
                else
                    var_3._ID8921 = level._ID8929[var_9];

                wait 0.05;
                var_1 = 1;
            }
        }

        if ( !var_1 )
            wait 0.25;
    }
}

_ID8920( var_0 )
{
    self._ID13770 = animscripts\face::_ID28062( var_0, "run", self._ID13770 );
}

_ID8915()
{
    self._ID13770 = undefined;
    self clearanim( %head, 0.2 );
}

_ID52702( var_0, var_1, var_2 )
{
    self endon( "death" );
    self._ID47839 = var_0;
    self._ID54075 = var_1;
    var_3 = self.cqb_slowdown_isreload;
    self.cqb_slowdown_isreload = isdefined( var_2 ) && var_2;

    if ( isdefined( self._ID50695 ) )
    {
        if ( isdefined( var_3 ) && var_3 != self.cqb_slowdown_isreload )
        {
            if ( self._ID43116 != 1 )
                _ID46311( _ID42237::_ID37527( self.cqb_slowdown_isreload, 0.5, 0.75 ) );
        }

        return;
    }

    self._ID50695 = 1;
    thread _ID44539();
    _ID52507();
    _ID46311( 1 );
    self._ID50695 = undefined;
}

_ID52507()
{
    self notify( "end_cqb_slowdown_watcher" );
    self endon( "death" );
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    self endon( "end_cqb_slowdown_watcher" );

    if ( isdefined( self._ID43116 ) && self._ID43116 != 1 )
        self waittill( "slow_down_stop" );

    for (;;)
    {
        _ID46311( 1 );
        self waittill( "slow_down_start" );
        var_0 = _ID42237::_ID37527( self.cqb_slowdown_isreload, 0.5, 0.75 );
        _ID46311( var_0 );
        self waittill( "slow_down_stop" );
    }
}

_ID46311( var_0 )
{
    self._ID43116 = var_0;
    self _meth_83d4( self._ID47839, self._ID24424 * self._ID43116 );
}

_ID44539()
{
    self endon( "death" );
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    wait(self._ID54075);

    while ( animscripts\utility::_ID33934() )
        wait(self._ID54075);

    self notify( "end_cqb_slowdown_watcher" );
}
