// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

movecqb()
{
    _id_AFC5();

    if ( self.a.pose != "stand" )
    {
        self clearanim( %animscript_root, 0.2 );

        if ( self.a.pose == "prone" )
            animscripts\utility::exitpronewrapper( 1 );

        self.a.pose = "stand";
    }

    self.a.movement = self.movemode;
    cqbtracking();
    self clearanim( %h1_stairs, 0.1 );

    if ( _id_D268() )
        return;

    var_0 = determinecqbanim();
    var_1 = _id_C8DB();
    var_2 = 0.2;
    thread _id_CDDE( var_0, var_2 );
    _id_D533( var_0, var_2, var_1 );
    cqb_playfacialanim( var_0 );
    animscripts\notetracks::donotetracksfortime( var_2, "runanim" );
}

_id_AFC5()
{
    if ( !animscripts\stairs_utility::_id_D458() )
        animscripts\run::standrun_checkchangeweapon();
}

_id_D268()
{
    return !animscripts\stairs_utility::_id_D458() && animscripts\run::standrun_checkreload();
}

_id_C8DB()
{
    var_0 = animscripts\stairs_utility::_id_B79B();

    if ( var_0 == "none" && !animscripts\stairs_utility::_id_D458() )
        return 0.3;
    else
        return 0.1;
}

_id_D533( var_0, var_1, var_2 )
{
    if ( isdefined( self.timeofmaincqbupdate ) )
        var_3 = self.timeofmaincqbupdate;
    else
        var_3 = 0;

    self.timeofmaincqbupdate = gettime();

    if ( !animscripts\stairs_utility::_id_D458() )
    {
        var_4 = animscripts\stairs_utility::_id_B79B();
        var_5 = %walk_and_run_loops;

        if ( self.timeofmaincqbupdate - var_3 > var_1 * 1000 && var_4 == "none" )
            var_5 = %stand_and_crouch;

        self setflaggedanimknoball( "runanim", var_0, var_5, 1, var_2, self.moveplaybackrate * self._id_A86C, 1 );
        animscripts\run::setmovenonforwardanims( animscripts\utility::lookupanim( "cqb", "move_b" ), animscripts\utility::lookupanim( "cqb", "move_l" ), animscripts\utility::lookupanim( "cqb", "move_r" ) );
        thread animscripts\run::setcombatstandmoveanimweights( "cqb" );
    }
    else
    {
        self notify( "stop_move_anim_update" );
        self.update_move_anim_type = undefined;
        var_5 = %body;
        self setflaggedanimknoball( "runanim", var_0, var_5, 1, var_2, self.moveplaybackrate * self._id_A86C, 1 );
    }
}

determinecqbanim()
{
    if ( isdefined( self.custommoveanimset ) && isdefined( self.custommoveanimset["cqb"] ) )
        return animscripts\run::getrunanim();

    if ( animscripts\stairs_utility::ismovingonstairs() )
    {
        var_0 = animscripts\stairs_utility::_id_D210();
        return animscripts\utility::lookupanim( "cqb", var_0 );
    }

    if ( self.subclass != "riotshield" )
    {
        var_1 = animscripts\slopes_utility::_id_AD0C();

        if ( isdefined( var_1 ) )
        {
            var_2 = animscripts\utility::lookupanim( "cqb", "straight_" + var_1 );
            return var_2;
        }
    }

    if ( self.movemode == "walk" )
        return animscripts\utility::lookupanim( "cqb", "move_f" );

    if ( isdefined( self.a.bdisablemovetwitch ) && self.a.bdisablemovetwitch )
        return animscripts\utility::lookupanim( "cqb", "straight" );

    if ( !isdefined( self.a.runloopcount ) )
        return animscripts\utility::lookupanim( "cqb", "straight" );

    var_3 = animscripts\utility::lookupanim( "cqb", "straight_twitch" );

    if ( !isdefined( var_3 ) || var_3.size == 0 )
        return animscripts\utility::lookupanim( "cqb", "straight" );

    var_4 = animscripts\utility::getrandomintfromseed( self.a.runloopcount, 4 );

    if ( var_4 == 0 )
        return animscripts\utility::_id_B9E0( var_3 );

    return animscripts\utility::lookupanim( "cqb", "straight" );
}

cqb_reloadinternal()
{
    self endon( "movemode" );
    self endon( "should_stairs_transition" );
    self orientmode( "face motion" );
    var_0 = "reload_" + animscripts\combat_utility::getuniqueflagnameindex();
    var_1 = animscripts\utility::lookupanim( "cqb", "reload" );

    if ( isarray( var_1 ) )
        var_1 = var_1[randomint( var_1.size )];

    thread _id_CDDE( var_1, getanimlength( var_1 ), 1 );
    var_2 = animscripts\combat_utility::_id_AEA4();
    self setflaggedanimknoballrestart( var_0, var_1, %body, 1, 0.25, self.moveplaybackrate * self._id_A86C * var_2 );
    cqb_playfacialanim( var_1 );
    animscripts\run::setmovenonforwardanims( animscripts\utility::lookupanim( "cqb", "move_b" ), animscripts\utility::lookupanim( "cqb", "move_l" ), animscripts\utility::lookupanim( "cqb", "move_r" ) );
    thread animscripts\run::setcombatstandmoveanimweights( "cqb" );
    childthread animscripts\stairs_utility::_id_C547( var_1, 0, 0.3 );
    animscripts\shared::donotetracks( var_0 );
    self notify( "killThreadCheckStairsTransition" );
}

cqbtracking()
{
    var_0 = animscripts\move::mayshootwhilemoving();
    animscripts\run::setshootwhilemoving( var_0 );
    thread animscripts\run::faceenemyaimtracking();
}

setupcqbpointsofinterest()
{
    level.cqbpointsofinterest = [];
    var_0 = getentarray( "cqb_point_of_interest", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        level.cqbpointsofinterest[var_1] = var_0[var_1].origin;
        var_0[var_1] delete();
    }
}

findcqbpointsofinterest()
{
    if ( isdefined( anim.findingcqbpointsofinterest ) )
        return;

    anim.findingcqbpointsofinterest = 1;

    if ( !level.cqbpointsofinterest.size )
        return;

    for (;;)
    {
        var_0 = getaiarray();
        var_1 = 0;

        foreach ( var_3 in var_0 )
        {
            if ( isalive( var_3 ) && var_3 animscripts\utility::iscqbwalking() && !isdefined( var_3.disable_cqb_points_of_interest ) )
            {
                var_4 = var_3.a.movement != "stop";
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

                for ( var_11 = 0; var_11 < level.cqbpointsofinterest.size; var_11++ )
                {
                    var_12 = level.cqbpointsofinterest[var_11];
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
                    var_3.cqb_point_of_interest = undefined;
                else
                    var_3.cqb_point_of_interest = level.cqbpointsofinterest[var_9];

                wait 0.05;
                var_1 = 1;
            }
        }

        if ( !var_1 )
            wait 0.25;
    }
}

cqb_playfacialanim( var_0 )
{
    self.facialidx = animscripts\face::playfacialanim( var_0, "run", self.facialidx );
}

cqb_clearfacialanim()
{
    self.facialidx = undefined;
    self clearanim( %head, 0.2 );
}

_id_CDDE( var_0, var_1, var_2 )
{
    self endon( "death" );
    self._id_BADF = var_0;
    self._id_D33B = var_1;
    var_3 = self.cqb_slowdown_isreload;
    self.cqb_slowdown_isreload = isdefined( var_2 ) && var_2;

    if ( isdefined( self._id_C607 ) )
    {
        if ( isdefined( var_3 ) && var_3 != self.cqb_slowdown_isreload )
        {
            if ( self._id_A86C != 1 )
                _id_B4E7( common_scripts\utility::ter_op( self.cqb_slowdown_isreload, 0.5, 0.75 ) );
        }

        return;
    }

    self._id_C607 = 1;
    thread _id_ADFB();
    _id_CD1B();
    _id_B4E7( 1 );
    self._id_C607 = undefined;
}

_id_CD1B()
{
    self notify( "end_cqb_slowdown_watcher" );
    self endon( "death" );
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    self endon( "end_cqb_slowdown_watcher" );

    if ( isdefined( self._id_A86C ) && self._id_A86C != 1 )
        self waittill( "slow_down_stop" );

    for (;;)
    {
        _id_B4E7( 1 );
        self waittill( "slow_down_start" );
        var_0 = common_scripts\utility::ter_op( self.cqb_slowdown_isreload, 0.5, 0.75 );
        _id_B4E7( var_0 );
        self waittill( "slow_down_stop" );
    }
}

_id_B4E7( var_0 )
{
    self._id_A86C = var_0;
    self _meth_83D4( self._id_BADF, self.moveplaybackrate * self._id_A86C );
}

_id_ADFB()
{
    self endon( "death" );
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    wait( self._id_D33B );

    while ( animscripts\utility::shouldcqb() )
        wait( self._id_D33B );

    self notify( "end_cqb_slowdown_watcher" );
}
