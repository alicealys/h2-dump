// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24451()
{
    self endon( "movemode" );
    self orientmode( "face enemy or motion" );

    if ( animscripts\utility::_ID20915() )
        self.turnrate = 0.16;
    else
        self.turnrate = 0.03;

    animscripts\utility::_ID39726();

    if ( animscripts\utility::_ID20775( 0 ) )
        _ID24452();
    else
        _ID24460();
}

_ID36914()
{
    self._ID36905 = spawnstruct();
    self._ID36905._ID8375 = "nostate";
    self._ID36905._ID24449 = "combat_stationary";
    self._ID36905._ID38166 = "track_none";
    self._ID36905._ID36200 = [];
    self._ID36905._ID36200["nostate"] = [ ::_ID36938, ::_ID36938 ];
    self._ID36905._ID36200["noncombat"] = [ ::_ID24461, ::_ID24462 ];
    self._ID36905._ID36200["combat"] = [ ::_ID24453, ::_ID24454 ];
    self._ID36905._ID36200["combat_stationary"] = [ ::_ID36938, ::_ID36938 ];
    self._ID36905._ID36200["combat_forward"] = [ ::_ID24455, ::_ID24456 ];
    self._ID36905._ID36200["combat_strafe"] = [ ::_ID24458, ::_ID24459 ];
    self._ID36905._ID36200["track_none"] = [ ::_ID36938, ::_ID36938 ];
    self._ID36905._ID36200["track_forward"] = [ ::_ID36971, ::_ID36972 ];
    self._ID36905._ID36200["track_strafe"] = [ ::_ID36974, ::_ID36975 ];
    self setanimlimited( _ID16643( "aim_stand_D" ) );
    self setanimlimited( _ID16643( "aim_stand_U" ) );
    self setanimlimited( _ID16643( "aim_stand_L" ) );
    self setanimlimited( _ID16643( "aim_stand_R" ) );
    self._ID9575 = ::_ID36936;
    self._ID26587 = 1;
    self._ID26360 = ::_ID36940;
    self._ID26359 = 0.2;
}

_ID36926()
{
    self._ID36905 = undefined;

    if ( animscripts\utility::_ID20915() )
        self.turnrate = 0.16;
    else
        self.turnrate = 0.3;
}

_ID36938()
{

}

_ID36937()
{
    _ID24464( "nostate" );
    _ID36919();

    if ( isdefined( self._ID28541 ) )
    {
        self.turnrate = self._ID28541;
        self._ID28541 = undefined;
    }
}

_ID24460()
{
    if ( self._ID36905._ID8375 != "noncombat" )
        _ID24464( "noncombat" );

    var_0 = self._ID36905._ID24350;
    var_1 = 0.4;

    if ( animscripts\utility::_ID20915() )
        var_1 = 0.2;

    self setflaggedanimknob( "swimanim", var_0, 1, var_1, self._ID24424 );
    _ID36976();
    animscripts\notetracks::_ID11534( 0.2, "swimanim" );
}

_ID24452()
{
    if ( self._ID36905._ID8375 != "combat" )
        _ID24464( "combat" );

    if ( isdefined( self.enemy ) )
    {
        animscripts\run::_ID32784( 1 );

        if ( !self.facemotion )
        {
            _ID36925();
            return;
        }
        else
        {
            if ( self._ID36905._ID24449 != "combat_forward" )
                _ID24457( "combat_forward" );

            if ( isdefined( self._ID4932 ) && self._ID4932 && lengthsquared( self.velocity ) )
            {
                var_0 = vectortoangles( self.velocity );

                if ( abs( angleclamp180( var_0[1] - self.angles[1] ) ) > 35 )
                {
                    self.turnrate = 0.18;

                    if ( animscripts\utility::_ID20915() )
                        self.turnrate = 0.2;
                }
                else
                {
                    if ( animscripts\utility::_ID20915() )
                        self.turnrate = 0.16;
                    else
                        self.turnrate = 0.03;

                    self._ID4932 = undefined;
                }
            }
            else
                self._ID4932 = undefined;

            var_1 = _ID16643( "forward_aim" );
        }
    }
    else
    {
        if ( self._ID36905._ID24449 != "combat_forward" )
            _ID24457( "combat_forward" );

        animscripts\run::_ID32784( 0 );
        var_1 = _ID16643( "forward_aim" );
    }

    var_2 = 0.4;

    if ( animscripts\utility::_ID20915() )
        var_2 = 0.2;

    _ID36976();
    self setflaggedanimknob( "swimanim", var_access_1, 1, var_2, self._ID24424 );
    animscripts\notetracks::_ID11534( 0.2, "swimanim" );
}

_ID24464( var_0 )
{
    if ( var_0 == self._ID36905._ID8375 )
        return;

    [[ self._ID36905._ID36200[self._ID36905._ID8375][1] ]]();
    [[ self._ID36905._ID36200[var_0][0] ]]();
    self._ID36905._ID8375 = var_0;
}

_ID24461()
{
    if ( self._ID36905._ID38166 != "track_none" )
        _ID36973( "track_none" );

    _ID36963();
    thread _ID24463();
}

_ID24462()
{
    self notify( "end_MoveSwim_NonCombat_TwitchUpdate" );
}
#using_animtree("generic_human");

_ID24453()
{
    self setanimknob( %combatrun, 1.0, 0.5, self._ID24424 );

    if ( self._ID36905._ID24449 != "combat_forward" )
        _ID24457( "combat_forward" );
}

_ID24454()
{
    _ID24457( "combat_stationary" );
}

_ID24457( var_0 )
{
    if ( var_0 == self._ID36905._ID24449 )
        return;

    [[ self._ID36905._ID36200[self._ID36905._ID24449][1] ]]();
    [[ self._ID36905._ID36200[var_0][0] ]]();
    self._ID36905._ID24449 = var_0;
}

_ID24455()
{
    if ( self._ID36905._ID38166 != "track_forward" )
        _ID36973( "track_forward" );

    _ID36963();
}

_ID24456()
{

}

_ID24458()
{
    self setanimknoblimited( _ID16643( "strafe_B" ), 1, 0.1, self._ID34146, 1 );
    self setanimknoblimited( _ID16643( "strafe_L" ), 1, 0.1, self._ID34146, 1 );
    self setanimknoblimited( _ID16643( "strafe_R" ), 1, 0.1, self._ID34146, 1 );

    if ( self._ID36905._ID38166 != "track_strafe" )
        _ID36973( "track_strafe" );

    _ID36919();

    if ( animscripts\utility::_ID20915() )
        self.turnrate = 0.25;
    else
    {
        self.turnrate = 0.18;
        self._ID558 = 1;
    }
}

_ID24459()
{
    self clearanim( %combatrun_forward, 0.2 );
    self clearanim( %combatrun_backward, 0.2 );
    self clearanim( %combatrun_left, 0.2 );
    self clearanim( %combatrun_right, 0.2 );

    if ( animscripts\utility::_ID20915() )
        self.turnrate = 0.16;
    else
    {
        self.turnrate = 0.03;
        self._ID558 = 0;
    }

    self._ID4932 = 1;
}

_ID36973( var_0 )
{
    if ( self._ID36905._ID38166 == var_0 )
        return;

    [[ self._ID36905._ID36200[self._ID36905._ID38166][1] ]]();
    [[ self._ID36905._ID36200[var_0][0] ]]();
    self._ID36905._ID38166 = var_0;
}

_ID36971()
{
    self setanimlimited( _ID16643( "aim_move_D" ) );
    self setanimlimited( _ID16643( "aim_move_L" ) );
    self setanimlimited( _ID16643( "aim_move_R" ) );
    self setanimlimited( _ID16643( "aim_move_U" ) );
    thread _ID24465();
}

_ID36972()
{
    self clearanim( %aim_2, 0.2 );
    self clearanim( %aim_4, 0.2 );
    self clearanim( %aim_6, 0.2 );
    self clearanim( %aim_8, 0.2 );
}

_ID36974()
{

}

_ID36975()
{
    self clearanim( %w_aim_4, 0.2 );
    self clearanim( %w_aim_6, 0.2 );
    self clearanim( %w_aim_8, 0.2 );
    self clearanim( %w_aim_2, 0.2 );
}

_ID24465()
{
    self endon( "killanimscript" );
    self endon( "end_face_enemy_tracking" );

    if ( !isdefined( self._ID2421 ) )
    {
        self._ID2421 = 1;
        animscripts\combat::_ID32267();

        if ( animscripts\utility::_ID20915() )
        {
            self.rightaimlimit = 90;
            self.leftaimlimit = -90;
        }

        animscripts\track::_ID38149( %w_aim_2, %w_aim_4, %w_aim_6, %w_aim_8 );
    }
}

_ID16643( var_0, var_1 )
{
    var_2 = animscripts\utility::_ID22630( "swim", var_0 );

    if ( isdefined( var_1 ) )
        return var_2[var_1];
    else
        return var_2;
}

_ID24463()
{
    var_0 = _ID16643( "forward" );
    self._ID36905._ID24350 = var_0;
}

_ID36968()
{
    if ( isdefined( self._ID11025 ) )
        return 0;

    if ( !isdefined( self.pathgoalpos ) )
        return 0;

    var_0 = self.maxfaceenemydist;
    self.maxfaceenemydist = 128;

    if ( !self shouldfacemotion() )
    {
        self.maxfaceenemydist = var_0;
        return 0;
    }

    self.maxfaceenemydist = var_0;
    var_1 = 10000;

    if ( animscripts\utility::_ID20915() )
        var_1 = 32400;

    if ( distancesquared( self.origin, self.pathgoalpos ) < var_1 )
        return 0;

    if ( self._ID7._ID24414 != "stop" )
        return 0;

    if ( lengthsquared( self.prevanimdelta ) > 1 )
    {
        var_2 = vectortoangles( self.prevanimdelta );

        if ( abs( angleclamp180( var_2[1] - self.angles[1] ) ) < 90 )
        {
            var_3 = vectortoangles( self.lookaheaddir );

            if ( abs( angleclamp180( var_3[1] - self.angles[1] ) ) < 90 )
                return 0;
        }
    }

    return 1;
}

_ID36936()
{
    self._ID7._ID28253 = "stand";

    if ( !_ID36968() )
        return;

    var_0 = _ID36917();

    if ( !isdefined( var_0 ) )
        return;

    var_1 = var_0._ID22723;
    var_2 = var_0._ID22721;
    var_3 = var_0._ID22720;
    var_4 = vectortoangles( self.lookaheaddir );
    var_5 = var_4 - var_3;
    var_6 = anglestoforward( var_5 );
    var_7 = animscripts\exit_node::_ID16270();

    if ( animscripts\utility::_ID20915() && isdefined( var_7 ) )
    {
        var_8 = _ID36930( var_7 );

        if ( var_8 != "exposed" )
        {
            var_9 = _ID16461( var_7 );
            var_6 = anglestoforward( var_9 );
        }
        else
            var_6 = anglestoforward( self.angles );
    }

    self animmode( "nogravity", 0 );
    var_10 = randomfloatrange( 0.9, 1.1 );
    var_11 = 0.3;
    self orientmode( "face angle 3d", self.angles );

    if ( isdefined( var_1 ) && !animscripts\utility::_ID20915() )
    {
        self setflaggedanimknoballrestart( "startturn", var_1, %body, 1, 0.3, var_10 * self._ID24424 );
        animscripts\shared::_ID11529( "startturn" );
        var_11 = 0.5;
    }
    else if ( isdefined( var_1 ) && animscripts\utility::_ID20915() )
    {
        if ( isdefined( var_7 ) )
            self orientmode( "face direction", var_6 );

        self._ID28541 = 0.16;
        self.turnrate = 5.0;
        var_11 = 0.1;
        self setflaggedanimknoballrestart( "startturn", var_1, %body, 1, var_11, var_10 * self._ID24424 );
        animscripts\shared::_ID11529( "startturn" );
        var_11 = 0.5;
        self.turnrate = 0.16;
        self._ID28541 = undefined;
        var_12 = getmovedelta( var_1 );
        var_7 = animscripts\exit_node::_ID16270();
        var_6 = anglestoforward( self.angles );

        if ( isdefined( var_7 ) )
        {
            var_8 = _ID36930( var_7 );

            if ( var_8 != "exposed" )
            {
                var_9 = _ID16461( var_7 );
                var_9 = ( var_9[0], var_9[1] - var_12, var_9[2] );
                var_6 = anglestoforward( var_9 );
            }
        }
    }

    var_13 = var_4 - self.angles;
    var_14 = getanimlength( var_2 );
    var_15 = 0.001 * abs( angleclamp180( var_13[1] - var_3[1] ) ) / var_14;
    var_16 = 0.001 * abs( angleclamp180( var_13[0] - var_3[0] ) ) / var_14;
    var_17 = max( var_15, var_16 );

    if ( var_17 < 0.01 )
        var_17 = 0.01;

    if ( animscripts\utility::_ID20915() )
    {
        var_11 = 0.05;
        self.turnrate = 0.16;
        var_17 = 5.0;
    }

    self._ID28541 = self.turnrate;
    self.turnrate = var_17;
    self orientmode( "face direction", var_6 );
    self setflaggedanimknoballrestart( "startmove", var_2, %body, 1, var_11, var_10 * self._ID24424 );
    animscripts\shared::_ID11529( "startmove" );
    self.turnrate = self._ID28541;
    self._ID28541 = undefined;
    self orientmode( "face default" );
    self animmode( "none", 0 );

    if ( animscripts\utility::_ID20915() )
    {
        if ( animhasnotetrack( var_2, "finish" ) )
            animscripts\shared::_ID11529( "startmove" );

        var_18 = 65536;
        var_19 = self.goalpos;

        if ( isdefined( self.node ) )
            var_19 = self.node.origin;

        if ( distance2dsquared( self.origin, var_19 ) > var_18 )
            self notify( "force_space_rotation_update",  0, 0, undefined, 1  );
    }

    if ( animscripts\utility::_ID20915() )
        return 0.2;
    else
        return 0.4;
}

_ID36963()
{
    self setanimlimited( _ID16643( "turn_add_l" ) );
    self setanimlimited( _ID16643( "turn_add_r" ) );
    self setanimlimited( _ID16643( "turn_add_u" ) );
    self setanimlimited( _ID16643( "turn_add_d" ) );
    self._ID28526 = 0;
    self._ID28525 = 0;
}

_ID36919()
{
    self clearanim( %add_turn_l, 0.2 );
    self clearanim( %add_turn_r, 0.2 );
    self clearanim( %add_turn_u, 0.2 );
    self clearanim( %add_turn_d, 0.2 );
    self._ID28526 = undefined;
    self._ID28525 = undefined;
}

_ID36917()
{
    var_0 = animscripts\utility::_ID20775();
    var_1 = animscripts\exit_node::_ID16270();
    var_2 = self.angles;
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    var_6 = vectortoangles( self.lookaheaddir );
    var_7 = animscripts\utility::_ID16702( var_1 );

    if ( animscripts\utility::_ID20915() && var_7[2] )
    {
        if ( var_7[2] != 0 )
        {
            var_8 = anglestoforward( var_7 );
            var_9 = self.goalpos;

            if ( isdefined( self.node ) )
                var_9 = self.node.origin;

            var_10 = rotatepointaroundvector( var_8, var_9 - self.origin, var_7[2] * -1 );
            var_11 = var_10 + self.origin;
            var_12 = var_11 - self.origin;
            var_12 = vectornormalize( var_12 );
            var_6 = vectortoangles( var_12 );
            var_5 = 1;
        }
    }

    var_13 = undefined;
    var_14 = undefined;

    if ( isdefined( var_1 ) && isdefined( var_1.type ) )
    {
        var_14 = _ID36930( var_1 );

        if ( var_14 != "exposed" )
        {
            var_13 = "exit_" + var_14;
            var_2 = var_1.angles;

            if ( animscripts\utility::_ID20915() )
            {
                var_2 = animscripts\utility::_ID16702( var_1 );

                if ( var_5 == 1 )
                    var_2 = ( var_2[0], var_2[1], 0 );
            }
            else
                var_2 = var_1.angles;

            var_3 = 1;
        }
    }

    if ( !isdefined( var_13 ) )
    {
        if ( var_0 )
            var_13 = "idle_ready_to_forward";
        else
        {
            var_13 = "idle_to_forward";
            var_4 = 1;
            var_3 = 1;
        }
    }

    var_15 = _ID16643( var_13 );
    var_16 = angleclamp180( var_6[1] - var_2[1] );
    var_17 = angleclamp180( var_6[0] - var_2[0] );
    var_18 = undefined;

    if ( animscripts\utility::_ID20915() )
        var_18 = 3;

    var_19 = _ID36928( var_16, var_18 );
    var_20 = _ID36928( var_17, var_18 );
    var_21 = var_14;

    if ( !isdefined( var_21 ) && isdefined( self.prevnode ) && distance2dsquared( self.prevnode.origin, self.origin ) < 36 )
        var_21 = _ID36930( self.prevnode );

    if ( var_19 == 4 && isdefined( var_21 ) )
    {
        var_22 = isdefined( var_14 );

        if ( var_21 == "cover_corner_l" && var_16 < -10 && ( !var_22 || isdefined( var_15[2] ) ) )
            var_19 = 2;
        else if ( var_21 == "cover_corner_r" && var_16 > 10 && ( !var_22 || isdefined( var_15[6] ) ) )
            var_19 = 6;
    }

    if ( !isdefined( var_15[var_19] ) )
    {
        var_13 = "idle_to_forward";
        var_15 = _ID16643( var_13 );
        var_4 = 1;
    }

    var_23 = spawnstruct();

    if ( var_4 )
    {
        var_24 = _ID16643( "idle_turn" );

        if ( !isdefined( var_24[var_19] ) )
        {
            var_25 = 0;

            for ( var_26 = 8; !isdefined( var_15[var_25] ) && var_25 < 8; var_25++ )
            {

            }

            while ( !isdefined( var_15[var_26] ) && var_26 > 0 )
                var_26--;

            if ( var_19 < var_25 )
                var_19 = var_25;
            else if ( var_19 > var_26 )
                var_19 = var_26;
        }

        var_23._ID22723 = var_24[var_19];
        var_19 = 4;
    }

    if ( isdefined( var_15[var_19] ) && isdefined( var_15[var_19][var_20] ) )
    {
        var_23._ID22721 = var_15[var_19][var_20];

        if ( var_3 )
        {
            var_15 = _ID16643( var_13 + "_angleDelta" );
            var_23._ID22720 = var_15[var_19][var_20];
        }
        else
            var_23._ID22720 = ( 0, 0, 0 );

        return var_23;
    }

    var_23 = undefined;
    return undefined;
}

_ID36967()
{
    self endon( "killanimscript" );
    self endon( "swim_cancelapproach" );
    thread _ID36941();

    if ( isdefined( self._ID10998 ) && self._ID10998 )
        return;

    self._ID36905._ID3369 = self.pathgoalpos;

    if ( isdefined( self getnegotiationstartnode() ) )
        return;

    var_0 = animscripts\cover_arrival::_ID16131();

    if ( isdefined( var_0 ) && _ID36934( var_0 ) )
        thread _ID36911();
    else
        thread _ID36912();
}

_ID36941()
{
    self endon( "killanimscript" );
    self endon( "swim_killrestartlistener" );
    self waittill( "path_set" );
    var_0 = isdefined( self.pathgoalpos ) && isdefined( self._ID36905._ID3369 ) && distancesquared( self.pathgoalpos, self._ID36905._ID3369 ) < 4;

    if ( var_0 )
    {
        thread _ID36941();
        return;
    }

    _ID36916();
    _ID36967();
}

_ID36916()
{
    self notify( "swim_cancelapproach" );
    self.stopanimdistsq = 0;
}

_ID36979( var_0, var_1 )
{
    self endon( "swim_cancelwaitforapproachpos" );
    var_2 = ( var_1 + 60 ) * ( var_1 + 60 );
    var_3 = distancesquared( var_0, self.origin );

    if ( var_3 <= var_2 )
        return;

    self.stopanimdistsq = var_2;
    self waittill( "stop_soon" );
    self.stopanimdistsq = 0;
}

_ID36912()
{
    self endon( "killanimscript" );
    self endon( "swim_cancelapproach" );
    self endon( "move_interrupt" );
    self endon( "swim_killrestartlistener" );

    if ( !isdefined( self.pathgoalpos ) )
        return;

    var_0 = _ID36931( "arrival_exposed" );
    _ID36979( self.pathgoalpos, var_0 );
    _ID36924();
}

_ID36911()
{
    self endon( "killanimscript" );
    self endon( "swim_cancelapproach" );
    self endon( "swim_killrestartlistener" );
    var_0 = animscripts\cover_arrival::_ID16131();
    self._ID3263 = _ID36930( var_0 );
    self.requestarrivalnotify = 1;
    self waittill( "cover_approach",  var_1  );
    var_0 = animscripts\cover_arrival::_ID16131();
    var_2 = _ID36930( var_0 );

    if ( var_2 == "exposed" )
    {
        if ( isdefined( var_0 ) )
            var_3 = var_0.origin;
        else
            var_3 = self.pathgoalpos;

        var_4 = var_3 - self.origin;
        var_5 = vectortoangles( var_4 );
        var_6 = ( 0, var_5[1], 0 );
        var_7 = ( 0, var_5[1], 0 );
    }
    else
    {
        var_3 = var_0.origin;
        var_6 = _ID16461( var_0 );

        if ( animscripts\utility::_ID20915() )
            var_7 = animscripts\utility::_ID16702( var_0 );
        else
            var_7 = var_0.angles;
    }

    thread _ID36923( var_2, var_3, var_1, var_7, var_6 );
}

_ID36924()
{
    var_0 = animscripts\cover_arrival::_ID16131();
    var_1 = self.pathgoalpos;
    var_2 = ( 0, self.angles[1], self.angles[2] );

    if ( isdefined( var_0 ) && var_0.type != "Path" && var_0.type != "Path 3D" )
        var_2 = _ID16461( var_0 );
    else if ( animscripts\cover_arrival::_ID13755() )
        var_2 = vectortoangles( self.enemy.origin - var_1 );

    var_3 = vectornormalize( var_1 - self.origin );

    if ( isdefined( var_0 ) && _ID36934( var_0 ) )
    {
        var_4 = _ID36930( var_0 );
        var_5 = _ID16461( var_0 );
        var_2 = var_0.angles;

        if ( animscripts\utility::_ID20915() )
            var_2 = animscripts\utility::_ID16702( var_0 );

        thread _ID36923( var_4, var_0.origin, var_3, var_2, var_5 );
        return;
    }

    thread _ID36923( "exposed", var_1, var_3, var_2, var_2 );
}

_ID36922( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( animscripts\utility::_ID20915() )
    {
        var_6 = ( 0, 0, 0 );
        var_7 = ( 0, 0, 0 );
        var_8 = combineangles( invertangles( var_4 ), var_5 );
        var_9 = rotatevectorinverted( vectornormalize( self.origin - var_2 ), var_4 ) * -1.0;
        var_10 = _ID36921( var_0, var_1, var_6, var_9, var_7, var_8, 1, var_2, var_4 );

        if ( var_10 )
            var_0._ID22725 = rotatevector( var_0._ID22725, var_4 ) + var_2;

        return var_10;
    }
    else
        return _ID36921( var_0, var_1, var_2, var_3, var_4, var_5, 0 );
}

_ID36923( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "killanimscript" );
    self endon( "swim_cancelapproach" );
    self._ID3263 = var_0;
    var_5 = spawnstruct();

    if ( !_ID36922( var_5, var_0, var_1, var_2, var_3, var_4 ) )
        return;

    var_6 = anglestoforward( self.angles );
    var_7 = var_5._ID22725 - self.origin;
    var_8 = length( var_7 );
    var_7 /= var_8;

    if ( animscripts\utility::_ID20915() )
    {
        var_9 = var_1 - var_5._ID22725;
        var_10 = length( var_9 );
        var_11 = vectordot( var_7, var_6 );

        if ( var_8 > var_10 * 0.4 && vectordot( var_7, var_6 ) < 0.5 )
        {
            self notify( "force_space_rotation_update",  0, 0  );
            return;
        }
    }
    else if ( var_8 < 100 && vectordot( var_7, var_6 ) < 0.5 )
        return;

    if ( var_8 > 4 )
    {
        if ( var_8 < 12 || self.fixednode || !isdefined( self.node ) || !animscripts\cover_arrival::_ID20951() )
        {
            self._ID36905._ID3369 = var_5._ID22725;
            self setruntopos( var_5._ID22725 );

            if ( animscripts\utility::_ID20915() )
            {
                var_12 = 16384;

                for (;;)
                {
                    if ( distancesquared( self.origin, var_5._ID22725 ) < var_12 )
                    {
                        self._ID28541 = self.turnrate;
                        self.turnrate = 0.1;
                        var_13 = _func_25d( var_5._ID22722, var_5._ID22720, var_1, var_4 );
                        self notify( "force_space_rotation_update",  0, 0, var_13[1]  );
                        break;
                    }

                    wait 0.1;
                }
            }

            self waittill( "runto_arrived" );
        }
    }

    self notify( "swim_killrestartlistener" );
    var_14 = vectornormalize( var_1 - self.origin );

    if ( !_ID36922( var_5, var_0, var_1, var_14, var_3, var_4 ) )
        return;

    self._ID36905._ID3366 = var_5._ID22721;

    if ( animscripts\utility::_ID20915() )
        var_15 = self startcoverarrival( var_5._ID22725, var_4[1] - var_5._ID22720[1], var_4[0] - var_5._ID22720[0], var_4, var_5._ID22720 );
    else
        self startcoverarrival( var_5._ID22725, var_4[1] - var_5._ID22720[1], var_4[0] - var_5._ID22720[0] );
}

_ID36920()
{
    self endon( "killanimscript" );
    self endon( "abort_approach" );
    var_0 = "arrival_" + self._ID3263;
    var_1 = self._ID36905._ID3366;

    if ( !self.fixednode )
        thread animscripts\cover_arrival::_ID1729();

    var_2 = 0.4;

    if ( animscripts\utility::_ID20915() )
    {
        var_2 = 0.2;
        thread _ID34998();
    }

    self clearanim( %body, 0.2 );
    self setflaggedanimrestart( "coverArrival", var_1, 1, var_2, self._ID24474 );
    animscripts\shared::_ID11529( "coverArrival", ::_ID36933 );

    if ( !animhasnotetrack( var_1, "start_aim" ) )
        _ID36969();

    self._ID7._ID28253 = "stand";
    self._ID7._ID24414 = "stop";
    self._ID7._ID3372 = self._ID3263;

    if ( animscripts\utility::_ID20915() )
    {
        self.turnrate = 0.16;
        self._ID28541 = undefined;
    }

    self clearanim( %animscript_root, 0.3 );
    self._ID21880 = undefined;
    self._ID36905._ID3366 = undefined;

    if ( animscripts\utility::_ID20915() && self._ID3263 == "exposed" )
        self notify( "force_space_rotation_update",  0, 0, undefined, 1  );
}

_ID34998()
{
    self endon( "killanimscript" );
    self endon( "abort_approach" );
    wait 0.22;
    self._ID28541 = 0.16;
    self.turnrate = 5.0;
}

_ID36929( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_4 )
    {
        var_5 = _func_25d( var_2, var_3, var_0, var_1 );
        return var_5[0];
    }

    var_6 = var_1 - var_3;
    var_7 = anglestoforward( var_6 );
    var_8 = anglestoright( var_6 );
    var_9 = anglestoup( var_6 );
    var_10 = var_7 * var_2[0];
    var_11 = var_8 * var_2[1];
    var_12 = var_9 * var_2[2];
    return var_0 - var_10 + var_11 - var_12;
}

_ID36935( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_2 )
    {
        var_1 = rotatevector( var_1, var_4 ) + var_3;
        return self maymovefrompointtopoint( var_3, var_1, 0, 1 );
    }

    return self maymovefrompointtopoint( var_0, var_1, 0, 1 );
}

_ID36921( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    if ( lengthsquared( var_3 ) < 0.003 )
        return 0;

    var_9 = vectortoangles( var_3 );

    if ( var_1 == "exposed" )
    {
        var_10 = 4;
        var_11 = 4;
    }
    else
    {
        var_12 = angleclamp180( var_4[1] - var_9[1] );
        var_10 = _ID36928( var_12 );
        var_11 = _ID36928( var_12, 25 );
    }

    var_13 = angleclamp180( var_4[0] - var_9[0] );
    var_14 = _ID36928( var_13 );
    var_15 = _ID36928( var_13, 25 );
    var_16 = "arrival_" + var_1;

    if ( var_1 == "exposed" && !animscripts\utility::_ID20775( 0 ) )
        var_16 += "_noncombat";

    var_17 = _ID16643( var_16 );

    if ( !isdefined( var_17[var_10] ) || !isdefined( var_17[var_10][var_14] ) )
        return 0;

    var_18 = ( var_10 != var_11 || var_14 != var_15 ) && isdefined( var_17[var_11] ) && isdefined( var_17[var_11][var_15] );
    var_19 = 0;
    var_20 = 0;
    var_21 = undefined;
    var_22 = var_17[var_10][var_14];

    if ( var_18 )
        var_21 = var_17[var_11][var_15];

    var_23 = var_16 + "_delta";
    var_17 = _ID16643( var_23 );
    var_24 = var_17[var_10][var_14];

    if ( var_18 )
        var_19 = var_17[var_11][var_15];

    var_25 = var_16 + "_angleDelta";
    var_17 = _ID16643( var_25 );
    var_26 = var_17[var_10][var_14];

    if ( var_18 )
        var_20 = var_17[var_11][var_15];

    var_27 = _ID36929( var_2, var_5, var_24, var_26, var_6 );

    if ( !_ID36935( var_2, var_27, var_6, var_7, var_8 ) && var_18 && !animscripts\utility::_ID20915() )
    {
        var_22 = var_21;
        var_24 = var_19;
        var_26 = var_20;
        var_27 = _ID36929( var_2, var_5, var_24, var_26, var_6 );

        if ( !_ID36935( var_2, var_27, var_6, var_7, var_8 ) )
            return 0;
    }

    var_0._ID22721 = var_22;
    var_0._ID22722 = var_24;
    var_0._ID22720 = var_26;
    var_0._ID22725 = var_27;
    return 1;
}

_ID36928( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 10;

    if ( var_0 < 0 )
        return int( ceil( ( 180 + var_0 - var_1 ) / 45 ) );
    else
        return int( floor( ( 180 + var_0 + var_1 ) / 45 ) );
}

_ID36931( var_0 )
{
    var_1 = anim._ID3277["soldier"]["swim"][var_0]["maxDelta"];

    if ( isdefined( self._ID3152 ) && self._ID3152 != "soldier" )
    {
        if ( isdefined( anim._ID3277[self._ID3152]["swim"] ) && isdefined( anim._ID3277[self._ID3152]["swim"][var_0] ) )
        {
            var_2 = anim._ID3277[self._ID3152]["swim"][var_0]["maxDelta"];

            if ( var_2 > var_1 )
                var_1 = var_2;
        }
    }

    return var_1;
}

_ID36969()
{
    animscripts\animset::_ID32213();
    animscripts\combat::_ID32185();
    self._ID28522 = 0.0;
    animscripts\combat_utility::_ID33531( 0 );
    thread animscripts\track::_ID38165();
}

_ID36933( var_0 )
{
    if ( var_0 != "start_aim" )
        return;

    _ID36969();
}

_ID36930( var_0 )
{
    if ( !isdefined( var_0 ) )
        return "exposed";

    var_1 = var_0.type;

    if ( !isdefined( var_1 ) )
        return "exposed";

    switch ( var_1 )
    {
        case "Cover Right 3D":
            return "cover_corner_r";
        case "Cover Left 3D":
            return "cover_corner_l";
        case "Cover Up 3D":
            return "cover_u";
        case "Exposed 3D":
        case "Path 3D":
            return "exposed";
    }

    endswitch( 6 )  case "Path 3D" loc_18D0 case "Exposed 3D" loc_18D0 case "Cover Right 3D" loc_18BE case "Cover Left 3D" loc_18C4 case "Cover Up 3D" loc_18CA default loc_18D6
}

_ID16461( var_0 )
{
    if ( getdvarint( "player_spaceEnabled" ) == 1 )
    {
        var_1 = animscripts\utility::_ID16702( var_0 );

        if ( animscripts\utility::_ID20830( var_0 ) )
        {
            var_2 = _ID16643( "arrival_cover_corner_l_angleDelta" );
            var_3 = var_2[4][4][1];
        }
        else if ( animscripts\utility::_ID20833( var_0 ) )
        {
            var_2 = _ID16643( "arrival_cover_corner_r_angleDelta" );
            var_3 = var_2[4][4][1];
        }
        else
            var_3 = 0;

        var_1 = combineangles( var_1, ( 0, var_3, 0 ) );
        return var_1;
    }
    else
        var_1 = var_0.angles;

    var_4 = var_1[1];

    if ( animscripts\utility::_ID20830( var_0 ) )
    {
        var_2 = _ID16643( "arrival_cover_corner_l_angleDelta" );
        var_4 += var_2[4][4][1];
    }
    else if ( animscripts\utility::_ID20833( var_0 ) )
    {
        var_2 = _ID16643( "arrival_cover_corner_r_angleDelta" );
        var_4 += var_2[4][4][1];
    }

    var_1 = ( var_1[0], var_4, var_1[2] );
    return var_1;
}

_ID36925()
{
    if ( self._ID36905._ID24449 != "combat_strafe" )
        _ID24457( "combat_strafe" );

    var_0 = _ID16643( "forward_aim" );
    self setflaggedanimknoblimited( "swimanim", var_0, 1, 0.1, 1, 1 );
    thread _ID36978();
    animscripts\notetracks::_ID11534( 0.2, "swimanim" );
    self notify( "end_swim_updatestrafeanim" );
}

_ID36978()
{
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    self endon( "move_mode" );
    self endon( "move_loop_restart" );
    self endon( "end_swim_updatestrafeanim" );
    var_0 = 0;

    for (;;)
    {
        if ( self.facemotion )
        {
            if ( !var_0 )
            {
                _ID36966( 1.0, 0.0, 0.0, 0.0 );
                _ID36965( 0, 0, 0, 0 );
            }
        }
        else
        {
            if ( self.relativedir == 1 )
            {
                var_1 = [];
                var_1["front"] = 1;
                var_1["back"] = 0;
                var_1["left"] = 0;
                var_1["right"] = 0;
            }
            else
                var_1 = animscripts\utility::_ID28805( self getmotionangle() );

            if ( isdefined( self._ID39629 ) )
            {
                var_1["back"] = 0.0;

                if ( var_1["front"] < 0.2 )
                    var_1["front"] = 0.2;
            }

            var_2 = _ID36966( var_1["front"], var_1["back"], var_1["left"], var_1["right"] );
            _ID36964( var_2 );
            _ID36977();
        }

        var_0 = self.facemotion;
        wait 0.05;
        waitframe;
    }
}

_ID36932()
{
    if ( animscripts\utility::_ID20915() )
        return 0.5;
    else
        return 0.5;
}

_ID36966( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID36932();
    self setanim( %combatrun_forward, var_0, var_4, 1, 1 );
    self setanim( %combatrun_backward, var_1, var_4, 1, 1 );
    self setanim( %combatrun_left, var_2, var_4, 1, 1 );
    self setanim( %combatrun_right, var_3, var_4, 1, 1 );

    if ( var_0 > 0 )
        return "front";
    else if ( var_1 > 0 )
        return "back";
    else if ( var_2 > 0 )
        return "left";
    else if ( var_3 > 0 )
        return "right";
}

_ID36964( var_0 )
{
    switch ( var_0 )
    {
        case "front":
            self setanimknoblimited( _ID16643( "aim_move_U" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "aim_move_D" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "aim_move_L" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "aim_move_R" ), 1, 0.1 );
            break;
        case "back":
            self setanimknoblimited( _ID16643( "strafe_B_aim_U" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "strafe_B_aim_D" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "strafe_B_aim_L" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "strafe_B_aim_R" ), 1, 0.1 );
            break;
        case "left":
            self setanimknoblimited( _ID16643( "strafe_L_aim_U" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "strafe_L_aim_D" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "strafe_L_aim_L" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "strafe_L_aim_R" ), 1, 0.1 );
            break;
        case "right":
            self setanimknoblimited( _ID16643( "strafe_R_aim_U" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "strafe_R_aim_D" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "strafe_R_aim_L" ), 1, 0.1 );
            self setanimknoblimited( _ID16643( "strafe_R_aim_R" ), 1, 0.1 );
            break;
    }

    endswitch( 5 )  case "back" loc_1C69 case "right" loc_1D23 case "front" loc_1C0C case "left" loc_1CC6 default loc_1D80
}

_ID36977()
{
    var_0 = self.angles[1];
    var_1 = self.angles[0];
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    var_6 = 45;
    var_7 = 60;

    if ( isdefined( self.enemy ) )
    {
        var_8 = self.enemy.origin - self.origin;
        var_9 = vectortoangles( var_8 );
        var_10 = angleclamp180( var_9[1] - var_0 );
        var_11 = angleclamp180( var_9[0] - var_1 );

        if ( var_10 > 0 )
            var_4 = clamp( 1 - ( var_6 - var_10 ) / var_6, 0, 1 );
        else
            var_5 = clamp( 1 - ( var_6 + var_10 ) / var_6, 0, 1 );

        if ( var_11 > 0 )
            var_3 = clamp( 1 - ( var_7 - var_11 ) / var_7, 0, 1 );
        else
            var_2 = clamp( 1 - ( var_7 + var_11 ) / var_7, 0, 1 );
    }

    _ID36965( var_2, var_3, var_4, var_5 );
}

_ID36965( var_0, var_1, var_2, var_3 )
{
    self setanim( %w_aim_4, var_2, 0.2, 1, 1 );
    self setanim( %w_aim_6, var_3, 0.2, 1, 1 );
    self setanim( %w_aim_8, var_0, 0.2, 1, 1 );
    self setanim( %w_aim_2, var_1, 0.2, 1, 1 );
}

_ID36940( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _ID16643( "turn" );
    var_5 = _ID36928( var_0 );
    var_6 = _ID36928( var_1 );

    if ( isdefined( var_4[var_5] ) )
        var_2 = var_4[var_5][var_6];

    if ( var_5 == 4 )
    {
        if ( var_6 > 4 && isdefined( var_4[4][var_6 + 1] ) )
            var_2 = var_4[4][var_6 + 1];
        else if ( var_6 < 4 && var_6 > 0 && isdefined( var_4[4][var_6 - 1] ) )
            var_2 = var_4[4][var_6 - 1];
    }

    if ( !isdefined( var_2 ) )
        var_2 = var_4[var_5][4];

    if ( isdefined( var_2 ) )
    {
        if ( animscripts\move::_ID26327( var_2 ) )
            return var_2;
    }

    return undefined;
}

_ID36918()
{
    _ID24464( "nostate" );
}

_ID36976()
{
    var_0 = clamp( self.leanamount / 20.0, -1, 1 );

    if ( var_0 > 0 )
    {
        if ( self._ID28526 <= 0 && var_0 < 0.075 )
            var_0 = 0;

        self setanim( %add_turn_l, var_0, 0.2, 1, 1 );
        self setanim( %add_turn_r, 0.0, 0.2, 1, 1 );
    }
    else
    {
        if ( self._ID28526 >= 0 && var_0 > -0.075 )
            var_0 = 0;

        self setanim( %add_turn_l, 0, 0.2, 1, 1 );
        self setanim( %add_turn_r, 0 - var_0, 0.2, 1, 1 );
    }

    self._ID28526 = var_0;
    var_0 = clamp( self.pitchamount / 25.0, -1, 1 );

    if ( var_0 > 0 )
    {
        if ( self._ID28525 <= 0 && var_0 < 0.075 )
            var_0 = 0;

        self setanim( %add_turn_d, var_0, 0.2, 1, 1 );
        self setanim( %add_turn_u, 0.0, 0.2, 1, 1 );
    }
    else
    {
        if ( self._ID28525 >= 0 && var_0 > -0.075 )
            var_0 = 0;

        self setanim( %add_turn_d, 0, 0.2, 1, 1 );
        self setanim( %add_turn_u, 0 - var_0, 0.2, 1, 1 );
    }

    self._ID28525 = var_0;
}

_ID36934( var_0 )
{
    switch ( var_0.type )
    {
        case "Cover Up 3D":
        case "Cover Left 3D":
        case "Cover Right 3D":
        case "Exposed 3D":
            return 1;
    }

    return 0;
}

_ID34999()
{
    return 0.16;
}

_ID35000()
{
    return 0.1;
}
