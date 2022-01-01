// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID36145()
{
    if ( isdefined( self._ID9575 ) )
    {
        _ID9575();
        return;
    }

    self endon( "killanimscript" );

    if ( !_ID7462() )
        return;

    var_0 = self._ID740;
    var_1 = self._ID65[1];
    var_2 = "exposed";
    var_3 = 0;
    var_4 = _ID16270();

    if ( isdefined( self._ID45843 ) )
        var_2 = self [[ self._ID45843 ]]( var_4 );
    else if ( isdefined( var_4 ) )
    {
        var_5 = _ID10669( var_4 );

        if ( isdefined( var_5 ) )
        {
            var_2 = var_5;
            var_3 = 1;

            if ( isdefined( self._ID18328 ) )
                var_2 = _ID10667( var_4, var_2 );

            if ( !isdefined( anim._ID13719[var_2] ) && var_2 != "stand_unstable" && var_2 != "stand_unstable_run" && var_2 != "stand_saw" && var_2 != "crouch_saw" )
            {
                var_6 = animscripts\utility::_ID1735( self._ID65[1] - animscripts\utility::_ID16462( var_4 ) );

                if ( var_6 < 5 )
                {
                    if ( !isdefined( self._ID18328 ) )
                        var_0 = var_4._ID740;

                    var_1 = animscripts\utility::_ID16462( var_4 );
                }
            }
        }
    }

    if ( isdefined( self._ID49490 ) )
    {
        if ( !self [[ self._ID49490 ]]( var_4 ) )
            return;
    }
    else if ( !_ID7461( var_2, var_4 ) )
        return;

    var_7 = isdefined( anim._ID13719[var_2] );

    if ( !var_3 && !isdefined( self._ID45843 ) )
        var_2 = _ID10670();

    if ( isdefined( var_4 ) && isdefined( var_4._ID54535 ) )
    {
        if ( isdefined( self getnegotiationstartnode() ) )
        {
            if ( self._ID7._ID28253 != "stand" )
            {
                var_8 = _ID42407::_ID16122( var_4._ID54535 );
                self setflaggedanimknoballrestart( "trans", var_8, %body, 1, 0.2, 1.0 );
                animscripts\shared::_ID11529( "trans" );
                self._ID7._ID28253 = "stand";
            }

            return;
        }
    }

    var_9 = ( -1 * self._ID601[0], -1 * self._ID601[1], 0 );
    var_10 = _ID16413( var_4 );
    var_11 = var_10._ID23090;
    var_12 = var_10._ID13291;
    var_13 = spawnstruct();
    _ID6632( var_13, var_2, 0, var_1, var_9, var_11, var_12 );
    _ID34970( var_13, var_11 );
    var_14 = -1;
    var_15 = 3;

    if ( var_7 )
        var_15 = 1;

    for ( var_16 = 1; var_16 <= var_15; var_16++ )
    {
        var_14 = var_13._ID38671[var_16];

        if ( _ID7445( var_0, var_1, var_2, var_7, var_14 ) )
            break;
    }

    if ( var_16 > var_15 )
        return;

    var_17 = distancesquared( self._ID740, self._ID8873 ) * 1.25;

    if ( distancesquared( self._ID740, self._ID762 ) < var_17 )
        return;

    _ID11527( var_2, var_14 );
}

_ID10669( var_0 )
{
    if ( animscripts\utility::_ID20527() && var_0._ID1244 == "Cover Crouch" )
        return "free_run_out_of_cover_crouch";

    if ( animscripts\cover_arrival::_ID6911( var_0 ) )
    {
        if ( var_0._ID1244 == "Cover Stand" )
            return "stand_saw";

        if ( var_0._ID1244 == "Cover Crouch" )
            return "crouch_saw";
        else if ( var_0._ID1244 == "Cover Prone" )
            return "prone_saw";
    }

    if ( !isdefined( anim._ID3257[var_0._ID1244] ) )
        return;

    if ( isdefined( anim._ID29710[var_0._ID1244] ) && anim._ID29710[var_0._ID1244] != self._ID7._ID28253 )
        return;

    var_1 = self._ID7._ID28253;

    if ( var_1 == "prone" && !isdefined( self._ID46857 ) )
        var_1 = "crouch";

    var_2 = anim._ID3257[var_0._ID1244][var_1];

    if ( animscripts\cover_arrival::_ID39956() && var_2 == "exposed" )
        var_2 = "exposed_ready";

    if ( animscripts\utility::_ID20961() )
    {
        if ( var_2 == "exposed" )
        {
            var_2 = "exposed_unstable";

            if ( self._ID675 == "run" )
                var_2 += "_run";

            return var_2;
        }
        else if ( var_2 == "stand" )
        {
            var_2 = "stand_unstable";

            if ( self._ID675 == "run" )
                var_2 += "_run";

            return var_2;
        }
    }

    if ( animscripts\utility::_ID33934() )
    {
        var_3 = var_2 + "_cqb";

        if ( isdefined( anim._ID3277["soldier"]["cover_exit"][var_3] ) )
            var_2 = var_3;
    }

    return var_2;
}

_ID7462()
{
    if ( !isdefined( self._ID762 ) )
        return 0;

    if ( isdefined( self._ID11025 ) && self._ID11025 )
        return 0;

    if ( isdefined( self._ID49490 ) )
        return 1;

    if ( !self shouldfacemotion() )
        return 0;

    if ( self._ID7._ID28253 == "prone" && !isdefined( self._ID46857 ) )
        return 0;

    if ( self._ID1012 != "none" )
        return 0;

    if ( !self isstanceallowed( "stand" ) && !isdefined( self._ID18328 ) && !isdefined( self._ID46857 ) )
        return 0;

    if ( !self _meth_8586( 100 ) )
        return 0;

    return 1;
}

_ID7461( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( var_0 == "exposed" || isdefined( self._ID18328 ) )
    {
        if ( self._ID7._ID28253 != "stand" && self._ID7._ID28253 != "crouch" )
            return 0;

        if ( self._ID7._ID24414 != "stop" )
            return 0;
    }

    if ( !isdefined( self._ID18328 ) && isdefined( self._ID322 ) && vectordot( self._ID601, self._ID322._ID740 - self._ID740 ) < 0 )
    {
        if ( animscripts\utility::_ID6885() && distancesquared( self._ID740, self._ID322._ID740 ) < 90000 )
            return 0;
    }

    return 1;
}

_ID10670( var_0 )
{
    if ( self._ID7._ID28253 == "stand" )
        var_0 = "exposed";
    else
        var_0 = "exposed_crouch";

    if ( animscripts\cover_arrival::_ID39956() )
        var_0 = "exposed_ready";

    if ( var_0 == "exposed" && animscripts\utility::_ID20961() )
    {
        var_0 = "exposed_unstable";

        if ( self._ID675 == "run" )
            var_0 += "_run";

        return var_0;
    }

    if ( animscripts\utility::_ID33934() )
        var_0 += "_cqb";
    else if ( isdefined( self._ID18328 ) )
        var_0 = "heat";

    return var_0;
}

_ID16413( var_0 )
{
    var_1 = spawnstruct();

    if ( isdefined( var_0 ) && isdefined( anim._ID23090[var_0._ID1244] ) )
    {
        var_1._ID23090 = anim._ID23090[var_0._ID1244];
        var_1._ID13291 = anim._ID13291[var_0._ID1244];
    }
    else
    {
        var_1._ID23090 = 9;
        var_1._ID13291 = -1;
    }

    return var_1;
}

_ID6632( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_0._ID38684 = [];
    var_0._ID38671 = [];
    var_7 = undefined;
    var_8 = 1;
    var_9 = 0;

    if ( var_2 )
    {
        var_7 = animscripts\utility::_ID22630( "cover_trans_angles", var_1 );
        var_8 = -1;
        var_9 = 0;
    }
    else
    {
        var_7 = animscripts\utility::_ID22630( "cover_exit_angles", var_1 );
        var_8 = 1;
        var_9 = 180;
    }

    for ( var_10 = 1; var_10 <= var_5; var_10++ )
    {
        var_0._ID38671[var_10] = var_10;

        if ( var_10 == 5 || var_10 == var_6 || !isdefined( var_7[var_10] ) )
        {
            var_0._ID38684[var_10] = -1.0003;
            continue;
        }

        var_11 = ( 0, var_3 + var_8 * var_7[var_10] + var_9, 0 );
        var_12 = vectornormalize( anglestoforward( var_11 ) );
        var_0._ID38684[var_10] = vectordot( var_4, var_12 );
    }
}

_ID34970( var_0, var_1 )
{
    for ( var_2 = 2; var_2 <= var_1; var_2++ )
    {
        var_3 = var_0._ID38684[var_0._ID38671[var_2]];
        var_4 = var_0._ID38671[var_2];

        for ( var_5 = var_2 - 1; var_5 >= 1; var_5-- )
        {
            if ( var_3 < var_0._ID38684[var_0._ID38671[var_5]] )
                break;

            var_0._ID38671[var_5 + 1] = var_0._ID38671[var_5];
        }

        var_0._ID38671[var_5 + 1] = var_4;
    }
}

_ID7445( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = ( 0, var_1, 0 );
    var_6 = anglestoforward( var_5 );
    var_7 = anglestoright( var_5 );
    var_8 = animscripts\utility::_ID22635( "cover_exit_dist", var_2, var_4 );
    var_9 = var_6 * var_8[0];
    var_10 = var_7 * var_8[1];
    var_11 = var_0 + var_9 - var_10;
    self._ID8873 = var_11;

    if ( !var_3 && !self checkcoverexitposwithpath( var_11 ) )
        return 0;

    var_12 = isdefined( self.nodeexitignoreactors ) && self.nodeexitignoreactors;

    if ( !self maymovefrompointtopoint( self._ID740, var_11, 1, var_12 ) )
        return 0;

    if ( var_4 <= 6 || var_3 )
        return 1;

    var_13 = animscripts\utility::_ID22635( "cover_exit_postdist", var_2, var_4 );
    var_9 = var_6 * var_13[0];
    var_10 = var_7 * var_13[1];
    var_14 = var_11 + var_9 - var_10;
    self._ID8873 = var_14;
    return self maymovefrompointtopoint( var_11, var_14, 1, var_12 );
}

_ID11527( var_0, var_1 )
{
    var_2 = animscripts\utility::_ID22635( "cover_exit", var_0, var_1 );

    if ( self._ID7._ID28253 == "prone" && !isdefined( self._ID46857 ) )
        return;

    _ID51781( var_2 );
}

_ID49775()
{
    self clearanim( %animscript_root, 0.2 );
    self orientmode( "face default" );
    self animmode( "normal", 0 );
}

_ID51781( var_0 )
{
    self endon( "should_stairs_transition" );
    var_1 = 0.2;

    if ( isdefined( self.exitnode_overridetranstime ) )
        var_1 = self.exitnode_overridetranstime;

    if ( self._ID1063 )
        self animmode( "nogravity", 0 );
    else
        self animmode( "zonly_physics", 0 );

    self orientmode( "face angle", self._ID65[1] );
    self._ID19386 = 1;
    animscripts\move::_ID51451();
    self setflaggedanimknoballrestart( "coverexit", var_0, %body, 1, var_1, self._ID24474 );
    childthread animscripts\stairs_utility::_ID50503( var_0, 0, 0.1, ::_ID49775 );
    animscripts\shared::_ID11529( "coverexit" );
    self notify( "StartListeningForCoverApproach" );
    self notify( "killThreadCheckStairsTransition" );

    if ( !isdefined( self._ID46857 ) || self._ID7._ID28253 != "prone" )
        self._ID7._ID28253 = "stand";

    self._ID7._ID24414 = "run";
    self._ID19386 = undefined;
    animscripts\move::_ID48930();
    animscripts\utility::_ID46199( var_0 );
    self orientmode( "face motion" );
    self animmode( "none", 0 );
    childthread animscripts\stairs_utility::_ID50503( var_0, 0, 0.1 );
    _ID14231( "coverexit", var_0 );
    self notify( "killThreadCheckStairsTransition" );
    self clearanim( %animscript_root, 0.2 );
    self orientmode( "face default" );
    self animmode( "normal", 0 );
}

_ID14231( var_0, var_1 )
{
    self endon( "move_loop_restart" );
    self endon( "should_stairs_transition" );
    animscripts\shared::_ID11529( var_0 );
}

_ID10667( var_0, var_1 )
{
    if ( var_0._ID1244 == "Cover Right" )
        var_1 = "heat_right";
    else if ( var_0._ID1244 == "Cover Left" )
        var_1 = "heat_left";

    return var_1;
}

_ID16270()
{
    var_0 = undefined;

    if ( !isdefined( self._ID18328 ) )
        var_1 = 400;
    else
        var_1 = 4096;

    if ( animscripts\utility::_ID20915() )
        var_1 = 1024;

    if ( isdefined( self._ID700 ) && distancesquared( self._ID740, self._ID700._ID740 ) < var_1 )
        var_0 = self._ID700;
    else if ( isdefined( self._ID822 ) && distancesquared( self._ID740, self._ID822._ID740 ) < var_1 )
        var_0 = self._ID822;

    if ( isdefined( var_0 ) && isdefined( self._ID18328 ) && animscripts\utility::_ID1735( self._ID65[1] - var_0._ID65[1] ) > 30 )
        return undefined;

    return var_0;
}

_ID9575()
{
    var_0 = self._ID9575;

    if ( !isdefined( self._ID26587 ) )
        self._ID9575 = undefined;

    var_1 = [[ var_0 ]]();

    if ( !isdefined( self._ID26587 ) )
        self._ID36146 = undefined;

    if ( !isdefined( var_1 ) )
        var_1 = 0.2;

    self clearanim( %animscript_root, var_1 );
    self orientmode( "face default" );
    self animmode( "none", 0 );
}

_ID9853( var_0 )
{
    if ( !animscripts\cover_arrival::_ID9854() )
        return;
}
