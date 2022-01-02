// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main()
{
    self endon( "killanimscript" );
    self endon( "abort_approach" );

    if ( self.swimmer )
    {
        animscripts\swim::_ID36920();
        return;
    }

    if ( isdefined( self._ID9557 ) )
    {
        [[ self._ID9557 ]]();
        return;
    }

    var_0 = self._ID3262;

    if ( isdefined( self.overridearrival ) )
        var_1 = self.overridearrival;
    else
        var_1 = animscripts\utility::_ID22630( "cover_trans", self._ID3263 )[var_0];

    if ( !isdefined( self._ID18328 ) )
        thread _ID1729();

    self clearanim( %body, 0.2 );
    self setflaggedanimrestart( "coverArrival", var_1, 1, 0.2, self._ID24474 );
    animscripts\face::_ID28062( var_1, "run" );
    animscripts\shared::_ID11529( "coverArrival", ::_ID18050 );
    var_2 = anim._ID3367[self._ID3263];

    if ( isdefined( var_2 ) )
        self._ID7._ID28253 = var_2;

    self._ID7._ID24414 = "stop";
    self._ID7._ID3372 = self._ID3263;
    self clearanim( %animscript_root, 0.2 );
    self._ID21880 = undefined;
}

_ID18050( var_0 )
{
    if ( var_0 == "start_aim" )
    {
        if ( isdefined( self._ID7._ID51710 ) && self._ID7._ID51710 )
            return;

        if ( self._ID7._ID28253 == "stand" )
            animscripts\animset::_ID32213();
        else if ( self._ID7._ID28253 == "crouch" )
            animscripts\animset::_ID32200();
        else
        {

        }

        animscripts\combat::_ID32185();
        self._ID28522 = 0.0;
        animscripts\combat_utility::_ID33531( 0.2 );
        thread animscripts\track::_ID38165();
    }
}

_ID20951()
{
    if ( !isdefined( self.node ) )
        return 0;

    if ( isdefined( self.enemy ) && self seerecently( self.enemy, 1.5 ) && distancesquared( self.origin, self.enemy.origin ) < 250000 )
        return !self iscovervalidagainstenemy();

    return 0;
}

_ID1729()
{
    self endon( "killanimscript" );

    for (;;)
    {
        if ( !isdefined( self.node ) )
            return;

        if ( isdefined( self._ID3152 ) && self._ID3152 == "riotshield" && !isdefined( self._ID8252 ) )
            return;

        if ( _ID20951() )
        {
            self clearanim( %animscript_root, 0.3 );
            self notify( "abort_approach" );
            self._ID21880 = gettime();
            return;
        }

        wait 0.1;
    }
}

_ID6911( var_0 )
{
    if ( !animscripts\utility::_ID39985() )
        return 0;

    if ( !isdefined( var_0._ID39350 ) )
        return 0;

    if ( var_0.type != "Cover Stand" && var_0.type != "Cover Prone" && var_0.type != "Cover Crouch" )
        return 0;

    if ( isdefined( self.enemy ) && distancesquared( self.enemy.origin, var_0.origin ) < 65536 )
        return 0;

    if ( animscripts\utility::_ID16467() > 40 || animscripts\utility::_ID16467() < -40 )
        return 0;

    return 1;
}

_ID10668( var_0 )
{
    if ( isdefined( self._ID23165 ) && self._ID23165 )
        return "exposed";

    var_1 = var_0.type;

    if ( animscripts\utility::_ID20527() && var_1 == "Cover Crouch" )
        return "free_run_into_cover_crouch";

    if ( var_1 == "Cover Multi" )
    {
        if ( !isdefined( self._ID217 ) )
            self._ID217 = spawnstruct();

        var_2 = animscripts\cover_multi::_ID8884( [ "over", [ "left", "right" ] ] );
        self._ID217._ID3368 = var_2;
        var_3 = animscripts\cover_multi::_ID8887( var_0, var_2 );
        var_1 = animscripts\utility::_ID16194( var_0, var_3 );
    }

    if ( _ID6911( var_0 ) )
    {
        if ( var_1 == "Cover Stand" )
            return "stand_saw";

        if ( var_1 == "Cover Crouch" )
            return "crouch_saw";
        else if ( var_1 == "Cover Prone" )
            return "prone_saw";
    }

    if ( !isdefined( anim._ID3257[var_1] ) )
        return;

    if ( isdefined( var_0._ID3370 ) )
        var_4 = var_0._ID3370;
    else if ( isdefined( var_0.classname ) && var_0.classname == "script_origin" )
        var_4 = "stand";
    else
        var_4 = var_0 gethighestnodestance();

    if ( var_4 == "prone" )
        var_4 = "crouch";

    var_5 = anim._ID3257[var_1][var_4];

    if ( _ID39956() && var_5 == "exposed" )
        var_5 = "exposed_ready";

    if ( animscripts\utility::_ID20961() )
    {
        if ( var_5 == "exposed" )
        {
            var_5 = "exposed_unstable";

            if ( self.movemode == "run" )
                var_5 += "_run";

            return var_5;
        }
        else if ( var_5 == "stand" )
        {
            var_5 = "stand_unstable";

            if ( self.movemode == "run" )
                var_5 += "_run";

            return var_5;
        }
    }

    if ( animscripts\utility::_ID33934() )
    {
        var_6 = var_5 + "_cqb";

        if ( isdefined( anim._ID3277["soldier"]["cover_trans"][var_6] ) )
            var_5 = var_6;
    }

    return var_5;
}

_ID10666( var_0 )
{
    if ( isdefined( self._ID18328 ) )
        return "heat";

    if ( isdefined( var_0._ID3370 ) )
        var_1 = var_0._ID3370;
    else
        var_1 = var_0 gethighestnodestance();

    if ( var_1 == "prone" )
        var_1 = "crouch";

    if ( var_1 == "crouch" )
        var_2 = "exposed_crouch";
    else
        var_2 = "exposed";

    if ( var_2 == "exposed" && _ID39956() )
        var_2 += "_ready";

    if ( var_2 == "exposed" && animscripts\utility::_ID20961() )
    {
        var_2 = "exposed_unstable";

        if ( self.movemode == "run" )
            var_2 += "_run";

        return var_2;
    }

    if ( animscripts\utility::_ID33934() )
        return var_2 + "_cqb";

    return var_2;
}

_ID6631( var_0, var_1 )
{
    var_2 = anglestoright( var_0 );
    var_3 = anglestoforward( var_0 );
    return var_3 * var_1[0] + var_2 * ( 0 - var_1[1] );
}

_ID16131()
{
    if ( isdefined( self.scriptedarrivalent ) )
        return self.scriptedarrivalent;

    if ( isdefined( self.node ) )
        return self.node;

    return undefined;
}

_ID16132( var_0, var_1 )
{
    if ( var_1 == "stand_saw" )
    {
        var_2 = ( var_0._ID39350.origin[0], var_0._ID39350.origin[1], var_0.origin[2] );
        var_3 = anglestoforward( ( 0, var_0._ID39350.angles[1], 0 ) );
        var_4 = anglestoright( ( 0, var_0._ID39350.angles[1], 0 ) );
        var_2 = var_2 + var_3 * -32.545 - var_4 * 6.899;
    }
    else if ( var_1 == "crouch_saw" )
    {
        var_2 = ( var_0._ID39350.origin[0], var_0._ID39350.origin[1], var_0.origin[2] );
        var_3 = anglestoforward( ( 0, var_0._ID39350.angles[1], 0 ) );
        var_4 = anglestoright( ( 0, var_0._ID39350.angles[1], 0 ) );
        var_2 = var_2 + var_3 * -32.545 - var_4 * 6.899;
    }
    else if ( var_1 == "prone_saw" )
    {
        var_2 = ( var_0._ID39350.origin[0], var_0._ID39350.origin[1], var_0.origin[2] );
        var_3 = anglestoforward( ( 0, var_0._ID39350.angles[1], 0 ) );
        var_4 = anglestoright( ( 0, var_0._ID39350.angles[1], 0 ) );
        var_2 = var_2 + var_3 * -37.36 - var_4 * 13.279;
    }
    else if ( isdefined( self.scriptedarrivalent ) )
        var_2 = self.goalpos;
    else
        var_2 = var_0.origin;

    return var_2;
}

_ID7414()
{
    if ( isdefined( self getnegotiationstartnode() ) )
        return 0;

    if ( isdefined( self._ID10998 ) && self._ID10998 )
        return 0;

    return 1;
}

_ID7413( var_0, var_1, var_2 )
{
    if ( isdefined( anim._ID13719[var_0] ) )
        return 0;

    if ( var_0 == "stand" || var_0 == "crouch" || var_0 == "stand_unstable" )
    {
        if ( animscripts\utility::_ID1735( vectortoyaw( var_1 ) - var_2.angles[1] + 180 ) < 60 )
            return 0;
    }

    if ( _ID20951() || isdefined( self._ID21880 ) && self._ID21880 + 500 > gettime() )
        return 0;

    return 1;
}

_ID33535( var_0 )
{
    self endon( "killanimscript" );

    if ( isdefined( self._ID18328 ) )
    {
        thread _ID11502();
        return;
    }

    if ( var_0 )
        self.requestarrivalnotify = 1;

    if ( self.swimmer == 1 )
    {
        thread animscripts\swim::_ID36967();
        return;
    }

    self._ID7._ID3372 = undefined;
    thread _ID11502();
    self waittill( "cover_approach",  var_1  );

    if ( !_ID7414() )
        return;

    thread _ID33535( 0 );
    var_2 = "exposed";
    var_3 = self.pathgoalpos;
    var_4 = vectortoyaw( var_1 );
    var_5 = var_4;
    var_6 = _ID16131();

    if ( isdefined( var_6 ) )
    {
        var_2 = _ID10668( var_6 );

        if ( isdefined( var_2 ) && var_2 != "exposed" )
        {
            var_3 = _ID16132( var_6, var_2 );
            var_4 = var_6.angles[1];
            var_5 = animscripts\utility::_ID16462( var_6 );
        }
    }
    else if ( _ID39956() )
    {
        if ( animscripts\utility::_ID33934() )
            var_2 = "exposed_ready_cqb";
        else
            var_2 = "exposed_ready";
    }

    if ( !_ID7413( var_2, var_1, var_6 ) )
        return;

    _ID36105( var_2, var_3, var_4, var_5, var_1 );
}

_ID8863( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( self._ID10998 ) && self._ID10998 )
        return 0;

    if ( abs( self getmotionangle() ) > 45 && isdefined( self.enemy ) && vectordot( anglestoforward( self.angles ), vectornormalize( self.enemy.origin - self.origin ) ) > 0.8 )
        return 0;

    if ( self._ID7._ID28253 != "stand" || self._ID7._ID24414 != "run" && !animscripts\utility::_ID20717() )
        return 0;

    if ( animscripts\utility::_ID1735( var_4 - self.angles[1] ) > 30 )
    {
        if ( isdefined( self.enemy ) && self cansee( self.enemy ) && distancesquared( self.origin, self.enemy.origin ) < 65536 )
        {
            if ( vectordot( anglestoforward( self.angles ), self.enemy.origin - self.origin ) > 0 )
                return 0;
        }
    }

    if ( !_ID7420( var_0, var_1, var_2, var_3, 0 ) )
        return 0;

    return 1;
}

_ID3265( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_3 = undefined;

    for (;;)
    {
        if ( !isdefined( self.pathgoalpos ) )
            _ID41001();

        var_4 = distance( self.origin, self.pathgoalpos );

        if ( isdefined( var_2 ) )
        {
            var_5 = _ID52311();
            var_6 = 1;
            var_7 = _ID43389( var_5, var_0, var_6 );
            var_8 = _ID48724( var_5, var_7, var_0, var_6, var_2._ID3263 );
            var_9 = vectornormalize( var_2._ID54001 - self.origin );
            var_3 = _ID7415( var_2._ID54001, var_2._ID45465, var_2._ID3263, var_9, var_2._ID23090, var_2._ID13291, var_2._ID53151 );

            if ( var_3._ID3262 > 0 )
                var_1 = length( animscripts\utility::_ID22635( "cover_trans_dist", var_2._ID3263, var_3._ID3262 ) );
        }

        if ( var_4 <= var_1 + 8 )
            break;

        var_10 = self._ID24424;

        if ( level.script == "scoutsniper" && self getanimweight( %h1_sprint_loop ) > 0.5 )
            var_10 *= 1.25;

        var_11 = ( var_4 - var_1 ) / 250 * var_10 - 0.1;

        if ( var_11 < 0.05 )
            var_11 = 0.05;

        wait(var_11);
    }

    return var_3;
}

_ID36105( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "killanimscript" );
    self endon( "cover_approach" );

    if ( isdefined( self._ID10998 ) && self._ID10998 )
        return;

    var_5 = _ID16131();
    var_6 = animscripts\exit_node::_ID16413( var_5 );
    var_7 = var_6._ID23090;
    var_8 = var_6._ID13291;
    var_9 = vectordot( var_4, anglestoforward( var_5.angles ) ) >= 0;
    var_6 = _ID7415( var_1, var_3, var_0, var_4, var_7, var_8, var_9 );

    if ( var_6._ID3262 < 0 )
        return;

    var_10 = var_6._ID3262;

    if ( var_10 <= 6 && var_9 )
    {
        self endon( "goal_changed" );

        if ( isdefined( self._ID3152 ) && isdefined( anim._ID3277[self._ID3152] ) && isdefined( anim._ID3277[self._ID3152]["CoverTransLongestDist"][var_0] ) )
            self._ID3371 = anim._ID3277[self._ID3152]["CoverTransLongestDist"][var_0];
        else if ( isdefined( anim._ID3277["soldier"]["CoverTransLongestDist"][var_0] ) )
            self._ID3371 = anim._ID3277["soldier"]["CoverTransLongestDist"][var_0];
        else
            self._ID3371 = 8;

        _ID3265( var_5, self._ID3371 );
        var_11 = vectornormalize( var_1 - self.origin );
        var_6 = _ID7415( var_1, var_3, var_0, var_11, var_7, var_8, var_9 );
        self._ID3371 = length( animscripts\utility::_ID22635( "cover_trans_dist", var_0, var_10 ) );
        var_12 = spawnstruct();
        var_12._ID3263 = var_0;
        var_12._ID54001 = var_1;
        var_12._ID53151 = var_9;
        var_12._ID13291 = var_8;
        var_12._ID23090 = var_7;
        var_12._ID45465 = var_3;
        var_6 = _ID3265( var_5, self._ID3371, var_12 );

        if ( !self maymovetopoint( var_1 ) )
        {
            self._ID3371 = undefined;
            return;
        }

        if ( var_6._ID3262 < 0 )
        {
            self._ID3371 = undefined;
            return;
        }

        var_10 = var_6._ID3262;
        var_13 = var_3 - animscripts\utility::_ID22635( "cover_trans_angles", var_0, var_10 );
    }
    else
    {
        self setruntopos( self._ID8869 );
        self waittill( "runto_arrived" );
        var_13 = var_3 - animscripts\utility::_ID22635( "cover_trans_angles", var_0, var_10 );

        if ( !_ID8863( var_1, var_3, var_0, var_10, var_13 ) )
            return;
    }

    self._ID3262 = var_10;
    self._ID3263 = var_0;
    self._ID3371 = undefined;

    if ( animscripts\utility::_ID47946() )
    {
        self._ID3366 = animscripts\utility::_ID22630( "cover_trans", self._ID3263 )[self._ID3262];
        var_14 = animscripts\utility::_ID22635( "cover_trans_move_end", var_0, self._ID3262 );
        self._ID54671 = self _meth_857b( self._ID8869, var_13, 0, self._ID3366, var_14 );
    }
    else
        self._ID54671 = self startcoverarrival( self._ID8869, var_13, 0 );
}

_ID7415( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = spawnstruct();
    animscripts\exit_node::_ID6632( var_7, var_2, 1, var_1, var_3, var_4, var_5 );
    animscripts\exit_node::_ID34970( var_7, var_4 );
    var_8 = spawnstruct();
    var_9 = ( 0, 0, 0 );
    var_8._ID3262 = -1;
    var_10 = 2;

    for ( var_11 = 1; var_11 <= var_10; var_11++ )
    {
        var_8._ID3262 = var_7._ID38671[var_11];

        if ( !_ID7420( var_0, var_1, var_2, var_8._ID3262, var_6 ) )
            continue;

        break;
    }

    if ( var_11 > var_10 )
    {
        var_8._ID3262 = -1;
        return var_8;
    }

    var_12 = distancesquared( var_0, self.origin );
    var_13 = distancesquared( var_0, self._ID8869 );

    if ( var_12 < var_13 * 2 * 2 )
    {
        if ( var_12 < var_13 )
        {
            var_8._ID3262 = -1;
            return var_8;
        }

        if ( !var_6 )
        {
            var_14 = vectornormalize( self._ID8869 - self.origin );
            var_15 = var_1 - animscripts\utility::_ID22635( "cover_trans_angles", var_2, var_8._ID3262 );
            var_16 = anglestoforward( ( 0, var_15, 0 ) );
            var_17 = vectordot( var_14, var_16 );

            if ( var_17 < 0.707 )
            {
                var_8._ID3262 = -1;
                return var_8;
            }
        }
    }

    return var_8;
}

_ID11502()
{
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    self notify( "doing_last_minute_exposed_approach" );
    self endon( "doing_last_minute_exposed_approach" );
    thread _ID41520();

    for (;;)
    {
        _ID11501();

        for (;;)
        {
            _ID42237::_ID41068( "goal_changed", "goal_changed_previous_frame" );

            if ( isdefined( self._ID8869 ) && isdefined( self.pathgoalpos ) && distance2d( self._ID8869, self.pathgoalpos ) < 1 )
                continue;

            break;
        }
    }
}

_ID41520()
{
    self endon( "killanimscript" );
    self endon( "doing_last_minute_exposed_approach" );

    for (;;)
    {
        self waittill( "goal_changed" );
        wait 0.05;
        self notify( "goal_changed_previous_frame" );
    }
}

_ID13708( var_0, var_1 )
{
    if ( !isdefined( self.pathgoalpos ) )
        return 0;

    if ( isdefined( self._ID10998 ) && self._ID10998 )
        return 0;

    if ( isdefined( self._ID3258 ) )
    {
        if ( !self [[ self._ID3258 ]]( var_0 ) )
            return 0;
    }
    else
    {
        if ( !self.facemotion && ( !isdefined( var_0 ) || var_0.type == "Path" || var_0.type == "Path 3D" ) )
            return 0;

        if ( self._ID7._ID28253 != "stand" )
            return 0;
    }

    if ( _ID20951() || isdefined( self._ID21880 ) && self._ID21880 + 500 > gettime() )
        return 0;

    if ( !self maymovetopoint( self.pathgoalpos, 1, 0, level._ID49979 ) )
        return 0;

    return 1;
}

_ID13709()
{
    for (;;)
    {
        if ( !isdefined( self.pathgoalpos ) )
            _ID41001();

        var_0 = _ID16131();

        if ( isdefined( var_0 ) && !isdefined( self._ID18328 ) )
            var_1 = var_0.origin;
        else
            var_1 = self.pathgoalpos;

        var_2 = distance( self.origin, var_1 );
        var_3 = 0;

        if ( isdefined( self._ID3152 ) && isdefined( anim._ID3277[self._ID3152] ) && isdefined( anim._ID3277[self._ID3152]["longestExposedApproachDist"] ) )
            var_3 = anim._ID3277[self._ID3152]["longestExposedApproachDist"];
        else
            var_3 = anim._ID3277["soldier"]["longestExposedApproachDist"];

        if ( var_2 <= var_3 + 8 )
            break;

        var_4 = ( var_2 - var_3 ) / 250 * self._ID24424 - 0.1;

        if ( var_4 < 0 )
            break;

        if ( var_4 < 0.05 )
            var_4 = 0.05;

        wait(var_4);
    }
}

_ID13755( var_0 )
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( isdefined( self._ID18328 ) && isdefined( var_0 ) )
        return 0;

    if ( self.combatmode == "cover" && issentient( self.enemy ) && gettime() - self lastknowntime( self.enemy ) > 15000 )
        return 0;

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        return self cansee( self.enemy );

    return sighttracepassed( self.enemy getshootatpos(), self.pathgoalpos + ( 0, 0, 60 ), 0, undefined );
}

_ID48724( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _ID43389( var_0, var_2, var_3 );
    var_5 = spawnstruct();
    animscripts\exit_node::_ID6632( var_5, var_4, 1, var_1, var_0, 9, -1 );
    var_6 = 1;

    for ( var_7 = 2; var_7 <= 9; var_7++ )
    {
        if ( var_5._ID38684[var_7] > var_5._ID38684[var_6] )
            var_6 = var_7;
    }

    self._ID3262 = var_5._ID38671[var_6];
    self._ID3263 = var_4;
    var_8 = animscripts\utility::_ID22635( "cover_trans", var_4, self._ID3262 );

    if ( !isdefined( var_8 ) || isdefined( self._ID10997 ) )
        return;

    var_9 = length( animscripts\utility::_ID22635( "cover_trans_dist", var_4, self._ID3262 ) );
    return var_9;
}

_ID49355( var_0 )
{
    var_1 = var_0 + 8;
    var_1 *= var_1;
    return var_1;
}

_ID52311()
{
    var_0 = vectornormalize( self.pathgoalpos - self.origin );
    return var_0;
}

_ID43389( var_0, var_1, var_2 )
{
    if ( isdefined( self.forceapproachyaw ) )
        return self.forceapproachyaw;

    var_3 = vectortoyaw( var_0 );

    if ( isdefined( self._ID13754 ) )
        var_3 = self.angles[1];
    else if ( _ID13755( var_1 ) )
        var_3 = vectortoyaw( self.enemy.origin - self.pathgoalpos );
    else
    {
        var_4 = isdefined( var_1 ) && var_2;
        var_4 = var_4 && var_1.type != "Path" && var_1.type != "Path 3D" && ( var_1.type != "Ambush" || !animscripts\utility::_ID29285() );

        if ( var_4 )
            var_3 = animscripts\utility::_ID16462( var_1 );
        else
        {
            var_5 = self getanglestolikelyenemypath();

            if ( isdefined( var_5 ) )
                var_3 = var_5[1];
        }
    }

    return var_3;
}

_ID11501()
{
    self endon( "goal_changed" );
    self endon( "move_interrupt" );

    if ( isdefined( self._ID10998 ) && self._ID10998 )
        return;

    if ( isdefined( self getnegotiationstartnode() ) )
        return;

    _ID13709();

    if ( isdefined( self.grenade ) && isdefined( self.grenade.activator ) && self.grenade.activator == self )
        return;

    var_0 = "exposed";
    var_1 = 1;

    if ( isdefined( self._ID3264 ) )
        var_0 = self [[ self._ID3264 ]]();
    else if ( animscripts\utility::_ID20961() )
    {
        var_0 = "exposed_unstable";

        if ( self.movemode == "run" )
            var_0 += "_run";
    }
    else if ( _ID39956() )
    {
        if ( animscripts\utility::_ID33934() )
            var_0 = "exposed_ready_cqb";
        else
            var_0 = "exposed_ready";
    }
    else if ( animscripts\utility::_ID33934() )
        var_0 = "exposed_cqb";
    else if ( isdefined( self._ID18328 ) )
    {
        var_0 = "heat";
        var_1 = 4096;
    }
    else if ( animscripts\utility::_ID39998() )
        var_0 = "exposed_smg";

    var_2 = _ID16131();

    if ( isdefined( var_2 ) && isdefined( self.pathgoalpos ) && !isdefined( self._ID11007 ) )
        var_3 = distancesquared( self.pathgoalpos, var_2.origin ) < var_1;
    else
        var_3 = 0;

    if ( var_3 && !isdefined( self._ID3264 ) )
        var_0 = _ID10666( var_2 );

    if ( isdefined( self._ID23165 ) && self._ID23165 )
        var_0 = "exposed";

    var_4 = _ID52311();
    var_5 = _ID43389( var_4, var_2, var_3 );
    var_6 = _ID48724( var_4, var_5, var_2, var_3, var_0 );

    if ( !isdefined( var_6 ) )
        return;

    var_7 = _ID49355( var_6 );

    while ( isdefined( self.pathgoalpos ) && isdefined( var_7 ) && distancesquared( self.origin, self.pathgoalpos ) > var_7 )
    {
        var_4 = _ID52311();
        var_5 = _ID43389( var_4, var_2, var_3 );
        var_6 = _ID48724( var_4, var_5, var_2, var_3, var_0 );
        var_7 = _ID49355( var_6 );
        wait 0.05;
    }

    if ( isdefined( self._ID3371 ) && self._ID3371 < var_6 + 8 )
        return;

    if ( !_ID13708( var_2, var_3 ) )
        return;

    var_8 = distance( self.origin, self.pathgoalpos );

    if ( abs( var_8 - var_6 ) > 8 )
        return;

    var_9 = vectortoyaw( self.pathgoalpos - self.origin );

    if ( isdefined( self._ID18328 ) && var_3 )
    {
        var_10 = var_5 - animscripts\utility::_ID22635( "cover_trans_angles", var_0, self._ID3262 );
        var_11 = _ID16137( self.pathgoalpos, var_5, var_0, self._ID3262 );
    }
    else if ( isdefined( self._ID7._ID44440 ) && self._ID7._ID44440 )
    {
        var_5 = var_2.angles[1];
        var_10 = var_5 - animscripts\utility::_ID22635( "cover_trans_angles", var_0, self._ID3262 );
        var_11 = _ID16137( self.pathgoalpos, var_5, var_0, self._ID3262 );
    }
    else if ( var_6 > 0 )
    {
        var_12 = animscripts\utility::_ID22635( "cover_trans_dist", var_0, self._ID3262 );
        var_13 = atan( var_12[1] / var_12[0] );

        if ( !isdefined( self._ID13754 ) || self.facemotion )
        {
            var_10 = var_9 - var_13;

            if ( animscripts\utility::_ID1735( var_10 - self.angles[1] ) > 30 )
                return;
        }
        else
            var_10 = self.angles[1];

        var_14 = var_8 - var_6;
        var_11 = self.origin + vectornormalize( self.pathgoalpos - self.origin ) * var_14;
    }
    else
    {
        var_10 = self.angles[1];
        var_11 = self.origin;
    }

    self._ID3263 = var_0;

    if ( animscripts\utility::_ID47946() )
    {
        self._ID3366 = animscripts\utility::_ID22630( "cover_trans", self._ID3263 )[self._ID3262];
        var_15 = animscripts\utility::_ID22635( "cover_trans_move_end", var_0, self._ID3262 );
        self._ID54671 = self _meth_857b( var_11, var_10, 0, self._ID3366, var_15 );
    }
    else
        self._ID54671 = self startcoverarrival( var_11, var_10, 0 );
}

_ID41001()
{
    for (;;)
    {
        if ( isdefined( self.pathgoalpos ) )
            return;

        wait 0.1;
    }
}

_ID9576()
{
    if ( !isdefined( self._ID36146 ) )
        return;

    self animmode( "zonly_physics", 0 );
    self orientmode( "face current" );
    self setflaggedanimknoballrestart( "move", self._ID36146, %animscript_root, 1 );
    animscripts\face::_ID28062( self._ID36146, "run" );

    if ( animhasnotetrack( self._ID36146, "code_move" ) )
    {
        animscripts\shared::_ID11529( "move" );
        self orientmode( "face motion" );
        self animmode( "none", 0 );
    }

    animscripts\shared::_ID11529( "move" );
}

_ID9571()
{
    if ( !isdefined( self._ID36131 ) )
        return;

    var_0 = self._ID3262;
    var_1 = self._ID36131;

    if ( !isdefined( self._ID18328 ) )
        thread _ID1729();

    self clearanim( %body, 0.2 );
    self setflaggedanimrestart( "coverArrival", var_1, 1, 0.2, self._ID24474 );
    animscripts\face::_ID28062( var_1, "run" );
    animscripts\shared::_ID11529( "coverArrival", ::_ID18050 );
    var_2 = anim._ID3367[self._ID3263];

    if ( isdefined( var_2 ) )
        self._ID7._ID28253 = var_2;

    self._ID7._ID24414 = "stop";
    self._ID7._ID3372 = self._ID3263;
    self clearanim( %animscript_root, 0.3 );
    self._ID21880 = undefined;
}

_ID36640( var_0 )
{
    if ( !isdefined( var_0 ) )
        return "{undefined}";

    return var_0;
}

_ID11758( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < var_2 * 100; var_4++ )
        wait 0.05;
}

_ID11730( var_0 )
{
    self endon( "killanimscript" );

    for (;;)
    {
        if ( !isdefined( self.node ) )
            break;

        wait 0.05;
    }
}

_ID16137( var_0, var_1, var_2, var_3 )
{
    var_4 = ( 0, var_1 - animscripts\utility::_ID22635( "cover_trans_angles", var_2, var_3 ), 0 );
    var_5 = anglestoforward( var_4 );
    var_6 = anglestoright( var_4 );
    var_7 = animscripts\utility::_ID22635( "cover_trans_dist", var_2, var_3 );
    var_8 = var_5 * var_7[0];
    var_9 = var_6 * var_7[1];
    return var_0 - var_8 + var_9;
}

_ID16136( var_0, var_1, var_2, var_3 )
{
    var_4 = ( 0, var_1 - animscripts\utility::_ID22635( "cover_trans_angles", var_2, var_3 ), 0 );
    var_5 = anglestoforward( var_4 );
    var_6 = anglestoright( var_4 );
    var_7 = animscripts\utility::_ID22635( "cover_trans_predist", var_2, var_3 );
    var_8 = var_5 * var_7[0];
    var_9 = var_6 * var_7[1];
    return var_0 - var_8 + var_9;
}

_ID7420( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _ID16137( var_0, var_1, var_2, var_3 );
    self._ID8869 = var_5;

    if ( var_3 <= 6 && var_4 )
        return 1;

    if ( !self maymovefrompointtopoint( var_5, var_0 ) )
        return 0;

    if ( var_3 <= 6 || isdefined( anim._ID13719[var_2] ) )
        return 1;

    var_6 = _ID16136( var_5, var_1, var_2, var_3 );
    self._ID8869 = var_6;
    return self maymovefrompointtopoint( var_6, var_5 );
}

_ID39956()
{
    if ( !isdefined( anim._ID29156 ) )
        return 0;

    if ( !anim._ID29156 )
        return 0;

    if ( !isdefined( self._ID6471 ) )
        return 0;

    if ( !self._ID6471 )
        return 0;

    return 1;
}

_ID9854()
{
    return 0;
}

_ID9853( var_0 )
{
    if ( !_ID9854() )
        return;
}
