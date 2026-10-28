// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B984( var_0 )
{
    var_1 = var_0 + ( 0, 0, 36 );
    var_2 = var_0 - ( 0, 0, 36 );
    return _id_C329( var_1, var_2 );
}

_id_C329( var_0, var_1 )
{
    var_2 = self aiphysicstrace( var_0, var_1, 0, 0, 1, 1 );

    if ( var_2["fraction"] < 1 )
    {
        var_3 = vectorlerp( var_0, var_1, var_2["fraction"] );
        var_4["pos"] = var_3;
        var_4["normal"] = var_2["normal"];
    }
    else
        var_4 = undefined;

    return var_4;
}

_id_B7D9( var_0, var_1, var_2 )
{
    return vectordot( var_0, var_2 ) + var_1;
}

_id_BCFD( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _id_B7D9( var_3, var_4, var_0 );
    var_6 = _id_B7D9( var_3, var_4, var_1 );
    var_7 = var_0;

    if ( abs( var_5 ) <= var_2 )
        return var_7;

    if ( var_5 > var_2 && var_6 < var_2 )
    {
        var_8 = ( var_5 - var_2 ) / ( var_5 - var_6 );
        var_7 = ( 1 - var_8 ) * var_0 + var_8 * var_1;
        return var_7;
    }
    else
        return var_1;
}

_id_B710( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = ( 0, 0, var_6 );
    var_8 = var_4[2] - var_2[2];
    var_9 = ( var_0[0], var_0[1], 0 );
    var_10 = vectornormalize( var_9 );
    var_11 = vectordot( var_3, var_10 );

    if ( var_11 > 0 )
        var_10 *= -1;

    if ( var_8 < 0 )
        var_7 += var_4;
    else
    {
        var_7 += var_2;
        var_7 += ( 0, 0, var_8 );
    }

    var_12["position"] = var_7;
    var_13 = var_7;
    var_7 -= var_10 * var_6;
    var_10 *= ( 2 * ( var_1 + var_6 ) );
    var_13 += var_10;
    var_14 = -1 * vectordot( var_3, var_2 );
    var_15 = _id_BCFD( var_7, var_13, var_6, var_3, var_14 );
    var_12["position"] = var_15 - ( 0, 0, var_6 );
    var_12["stairEdgeDirection"] = vectorcross( var_3, var_5 );
    var_12["stairEdgeDirection"] = vectornormalize( var_12["stairEdgeDirection"] );
    return var_12;
}

_id_CB0C( var_0, var_1, var_2 )
{
    var_3 = getanimlength( var_0 );
    var_4 = self getanimtime( var_0 );
    var_5 = var_4 * var_3;
    var_6 = var_5 + var_2;

    if ( var_1 )
    {
        var_7 = var_6 / var_3;

        if ( var_6 < var_3 )
            var_8 = getangledelta( var_0, var_4, var_7 );
        else
        {
            var_9 = var_6 - var_3;
            var_10 = var_9 / var_3;
            var_8 = getangledelta( var_0, var_4, 1 );
            var_8 += getangledelta( var_0, 0, var_10 );
        }
    }
    else
    {
        var_6 = min( var_6, var_3 );
        var_7 = var_6 / var_3;
        var_8 = getangledelta( var_0, var_4, var_7 );
    }

    return var_8[0] * self.moveplaybackrate;
}

_id_B6C4( var_0 )
{
    var_1 = getnotetracktimes( var_0, "stair_edge" );
    return getangledelta( var_0, 0, var_1[0] );
}

_id_B4D2( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0 - var_2;
    var_5 = vectordot( var_1, var_1 );
    var_6 = vectordot( var_1, var_3 );
    var_7 = vectordot( var_3, var_3 );
    var_8 = vectordot( var_1, var_4 );
    var_9 = vectordot( var_3, var_4 );
    var_10 = var_5 * var_7 - var_6 * var_6;

    if ( var_10 < 0.00001 )
    {
        var_11 = 0;

        if ( var_6 > var_7 )
            var_12 = var_8 / var_6;
        else
            var_12 = var_9 / var_7;
    }
    else
    {
        var_11 = var_6 * var_9 - var_7 * var_8;
        var_12 = var_5 * var_9 - var_6 * var_8;
    }

    var_13 = var_4 + var_11 * var_1 - var_12 * var_3;
    var_14["distance"] = length( var_13 );
    var_14["intersectionLine1"] = var_0 + var_11 * var_1;
    var_14["intersectionLine2"] = var_2 + var_12 * var_3;
    return var_14;
}

_id_BB81( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "stair_transition" );
    self endon( "death" );
    self endon( "stair_transition_to_transition" );
    self endon( "killanimscript" );
    var_6 = var_2["wantedPos"];
    var_7 = var_2["stairEdgeDir"];
    var_8 = length( var_2["trans"] );

    if ( isdefined( var_2["startTime"] ) )
    {
        var_9 = var_2["startTime"];
        var_10 = getangledelta( var_0, 0, var_9 );
        var_8 -= length( var_10 );
    }
    else
        var_9 = 0;

    for (;;)
    {
        if ( var_4 )
        {
            if ( lengthsquared( var_7 ) <= 0.001 )
            {
                if ( !isdefined( self._id_C4D3["wantedPos"] ) )
                    self._id_C4D3["wantedPos"] = var_6;
            }
            else
            {
                var_11 = vectornormalize( ( self.lookaheaddir[0], self.lookaheaddir[1], 0 ) );
                var_12 = _id_B4D2( self.origin, var_11, var_6, var_7 );
                self._id_C4D3["wantedPos"] = var_12["intersectionLine2"];
            }
        }

        var_13 = var_9 + var_5;

        if ( var_13 >= var_3 )
        {
            var_14 = anglestoforward( self.angles );
            var_15 = getangledelta( var_0, var_3, var_13 );
            var_16 = var_15[0] * var_14 + ( 0, 0, var_15[2] );
            var_17 = self._id_C4D3["wantedPos"] + var_16;
            self._id_7A42 = length( var_17 - self.origin );
            return;
        }

        var_18 = self._id_C4D3["wantedPos"] - self.origin;
        var_19 = 0.001;

        if ( vectordot( var_18, self.lookaheaddir ) > var_19 )
        {
            var_20 = getangledelta( var_0, var_9, var_13 );
            var_21 = length( var_20 ) / var_8;
            var_22 = length( self._id_C4D3["wantedPos"] - var_1 );
            var_23 = length( var_18 );
            var_24 = getangledelta( var_0, var_9, var_3 );
            var_25 = length( var_24 );
            var_26 = var_25 / var_8;
            var_27 = var_23 / var_22;
            var_28 = var_26 / var_27 * var_22;
            var_29 = var_21 * var_28;
            self._id_7A42 = min( var_29, var_23 );
        }
        else
            self._id_7A42 = 0;

        waitframe();
        var_9 = self getanimtime( var_0 );

        if ( var_9 == 0 )
            return;
    }
}

_id_BA91( var_0 )
{
    self.moveplaybackrate = self._id_C3E3;
    self._id_C3E3 = undefined;
    self _meth_83D4( var_0, self.moveplaybackrate );
}

_id_C7BD( var_0 )
{
    self endon( "death" );
    self endon( "stair_transition_to_transition" );
    self endon( "stair_transition" );
    self waittill( "killanimscript" );
    _id_BA91( var_0 );
    self._id_C670 = undefined;
    self _meth_85CB( 0 );
}

_id_C9D6( var_0, var_1 )
{
    self endon( "death" );
    self endon( "stair_transition_to_transition" );
    self endon( "killanimscript" );
    thread _id_C7BD( var_0 );
    var_2 = 0;

    for (;;)
    {
        waitframe();
        var_3 = self getanimtime( var_0 );

        if ( var_3 == 0 )
        {
            var_2 = 1;
            break;
        }

        if ( var_3 >= var_1 )
            break;
    }

    _id_BA91( var_0 );
    self notify( "stair_transition" );

    if ( var_2 )
    {
        self._id_C670 = undefined;
        self _meth_85CB( 0 );
        return;
    }

    if ( !isdefined( self._id_C4D3 ) )
        return;

    var_4 = self._id_C4D3["wantedPos"];

    if ( isdefined( var_4 ) )
    {
        var_5 = anglestoforward( self.angles );
        var_6 = getangledelta( var_0, var_1, var_3 );
        var_7 = var_6[0] * var_5 + ( 0, 0, var_6[2] );
        var_8 = var_4 + var_7;

        if ( lengthsquared( self.origin - var_8 ) < squared( 20 ) )
        {
            var_9 = self.origin + ( 0, 0, 15 );
            var_10 = var_8 + ( 0, 0, 15 );
            var_11 = self aiphysicstrace( var_9, var_10, 15, 30, 0, 1 );

            if ( var_11["fraction"] == 1 )
                self forceteleport( var_8, self.angles, 100 );
        }
    }

    var_12 = getanimlength( var_0 );
    var_13 = var_12 * ( 1 - var_3 );
    wait( var_13 );
    self._id_C670 = undefined;
    self _meth_85CB( 0 );
}

_id_C4A5( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_4 * 0.5;
    var_6 = var_0 + ( 0, 0, var_5 );
    var_7 = var_1 + ( 0, 0, var_5 );
    var_8 = var_7 - var_6;
    var_9 = var_5 - var_3;
    var_10 = vectornormalize( var_8 );
    var_10 *= var_9;
    var_11 = var_8 * var_2["fraction"] + var_6;
    var_11 += var_10;
    var_11 -= var_2["normal"] * var_3;
    return var_11;
}

_id_C1A2( var_0, var_1, var_2 )
{
    if ( !isdefined( self._id_D401 ) || self._id_D401 != gettime() )
    {
        if ( !_id_D2BE( var_0, var_1, var_2 ) )
            return undefined;
    }

    return self._id_CBFC;
}

_id_AFAC()
{
    self._id_C4D3 = self._id_CBFC;

    if ( isdefined( self._id_C3E3 ) )
        self notify( "stair_transition_to_transition" );
    else
        self._id_C3E3 = self._id_C4D3["stairs_old_moveplaybackrate"];

    self.moveplaybackrate = clamp( self._id_C4D3["moveplaybackrate"], 1, 2 );
}

_id_AF31( var_0, var_1, var_2 )
{
    var_3 = 0.01;
    var_4 = length( var_1 );
    var_5 = getnotetracktimes( self._id_C4D3["transitionAnim"], "stair_edge" );

    if ( var_4 < 1 )
        return var_5[0];

    var_6 = length( var_2 );
    var_7 = length( var_1 ) / var_6;

    if ( var_7 > 1 )
        return 0;

    var_8 = 1 - var_7;
    var_9 = var_8 * var_5[0];
    var_10 = 0;
    var_11 = var_5[0];

    for (;;)
    {
        var_12 = getangledelta( var_0, 0, var_9 );
        var_13 = length( var_12 ) / var_6;

        if ( var_13 < var_8 && var_13 + var_3 > var_8 )
            return var_9;

        if ( var_13 < var_8 )
            var_10 = var_9;
        else
            var_11 = var_9;

        var_9 = ( var_11 + var_10 ) * 0.5;
    }
}

_id_D368( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( isdefined( var_0["stairs"] ) && var_0["normal"][2] < 0.9962 )
    {
        var_6 = _id_C217( var_0["normal"] );
        var_7 = animscripts\run::getstairstransitionanim( var_5, "up", var_6 );
        var_8 = _id_B6C4( var_7 );
        var_9 = _id_C4A5( var_2, var_4, var_0, 15, 48 );
        var_10 = _id_B984( var_9 );

        if ( !isdefined( var_10 ) )
            return undefined;

        if ( vectordot( var_10["normal"], var_3 ) > 0 )
            return undefined;

        var_9 = var_10["pos"];
        var_11 = _id_B710( self.lookaheaddir, self.lookaheaddist, var_9, var_0["normal"], self.origin, ( 0, 0, 1 ), 15 );
        var_12["wantedPos"] = var_11["position"];
        var_12["stairEdgeDir"] = var_11["stairEdgeDirection"];
        var_12["inStairTransitionIn"] = 1;
        var_12["transitionAnim"] = var_7;
        var_12["trans"] = var_8;
        return var_12;
    }

    if ( var_1 < self.lookaheaddist )
        return undefined;

    if ( var_1 - self.lookaheaddist > 15 )
        var_4 -= var_3 * 15;
    else
    {
        var_13 = ( var_1 + self.lookaheaddist ) * 0.5;
        var_4 -= var_3 * var_13;
    }

    return _id_C39A( var_1, var_4, var_3, var_5 );
}

_id_C39A( var_0, var_1, var_2, var_3 )
{
    var_4 = 18;
    var_5 = var_0 * 1.333;
    var_6 = var_1 + ( 0, 0, var_4 + 15 );
    var_7 = var_1 - ( 0, 0, var_5 + 15 );
    var_8 = self aiphysicstrace( var_6, var_7, 0, 48, 1, 1 );

    if ( var_8["fraction"] >= 1 )
        return undefined;

    if ( !isdefined( var_8["stairs"] ) )
        return undefined;

    if ( var_8["normal"][2] > 0.9962 )
    {
        var_6 += var_2;
        var_7 += var_2;
        var_8 = self aiphysicstrace( var_6, var_7, 0, 48, 1, 1 );

        if ( var_8["fraction"] >= 1 )
            return undefined;

        if ( !isdefined( var_8["stairs"] ) )
            return undefined;

        if ( var_8["normal"][2] > 0.9962 )
        {
            var_9 = _id_C4A5( var_6, var_7, var_8, 0, 48 );
            return undefined;
        }
    }

    var_10 = var_8["normal"];

    if ( vectordot( var_10, var_2 ) < 0 )
        return undefined;

    var_11 = _id_C217( var_10 );
    var_12 = animscripts\run::getstairstransitionanim( var_3, "down", var_11 );
    var_13 = _id_B6C4( var_12 );
    var_9 = _id_C4A5( var_6, var_7, var_8, 0, 48 );
    var_14 = _id_B710( self.lookaheaddir, self.lookaheaddist, var_9, var_10, self.origin, ( 0, 0, 1 ), 15 );
    var_15["wantedPos"] = var_14["position"];
    var_15["stairEdgeDir"] = var_14["stairEdgeDirection"];
    var_15["inStairTransitionIn"] = 1;
    var_15["transitionAnim"] = var_12;
    var_15["trans"] = var_13;

    if ( getdvarint( "ai_useStairsTraceErrorOffset", 1 ) )
    {
        var_16 = ( self.lookaheaddir[0], self.lookaheaddir[1], 0 );
        var_16 = vectornormalize( var_16 );

        if ( vectordot( var_10, var_16 ) > 0 )
        {
            var_17 = ( var_10[0], var_10[1], 0 );
            var_17 = vectornormalize( var_17 );
            var_17 = common_scripts\utility::_id_B1AF( var_17, 0.5 );
            var_15["wantedPos"] += var_17;
        }
    }

    return var_15;
}

_id_CF97( var_0 )
{
    var_1 = _id_B984( self.origin );
    var_2 = _id_B2F3( var_1, self.origin );
    var_3 = animscripts\run::getstairstransitionanim( "up", "none", var_2 );
    var_4 = _id_B6C4( var_3 );
    var_5 = var_4[0];
    var_6 = 21;
    var_7 = var_5 * 1.333;
    var_8 = var_0 * 15;
    var_9 = self.origin + var_5 * var_0 + var_8;
    var_10 = var_9 + ( 0, 0, var_7 + var_6 );
    var_11 = var_9 - ( 0, 0, var_6 );
    var_12 = self aiphysicstrace( var_10, var_11, 0, 0, 1, 1 );

    if ( var_12["fraction"] <= 0 || var_12["fraction"] >= 1 )
        return undefined;

    if ( isdefined( var_12["stairs"] ) && abs( var_12["normal"][2] ) < 0.9962 )
        return undefined;

    var_13 = vectorlerp( var_10, var_11, var_12["fraction"] );

    if ( var_1["normal"][2] > 0.9962 )
    {
        var_1 = _id_B984( self.origin - var_0 );

        if ( var_1["normal"][2] > 0.9962 )
            return undefined;
    }

    if ( vectordot( var_1["normal"], var_0 ) > 0 )
        return undefined;

    var_14 = _id_B710( self.lookaheaddir, self.lookaheaddist, var_1["pos"], var_1["normal"], var_13, ( 0, 0, 1 ), 15 );
    var_15["wantedPos"] = var_14["position"];
    var_15["stairEdgeDir"] = var_14["stairEdgeDirection"];
    var_15["transitionAnim"] = var_3;
    var_15["trans"] = var_4;
    return var_15;
}

_id_AE27( var_0 )
{
    var_1 = _id_B984( self.origin );
    var_2 = _id_B2F3( var_1, self.origin );
    var_3 = animscripts\run::getstairstransitionanim( "down", "none", var_2 );
    var_4 = _id_B6C4( var_3 );
    var_5 = var_4[0];
    var_6 = 18;
    var_7 = 22;
    var_8 = var_5 * 1.333;
    var_9 = self.origin + var_5 * var_0;
    var_10 = var_9;
    var_11 = var_9 - ( 0, 0, var_8 + var_7 );
    var_12 = self aiphysicstrace( var_10, var_11, 0, 0, 1, 1 );

    if ( var_12["fraction"] <= 0 || var_12["fraction"] >= 1 )
        return undefined;

    if ( isdefined( var_12["stairs"] ) && var_12["normal"][2] < 0.9962 )
        return undefined;

    var_13 = vectorlerp( var_10, var_11, var_12["fraction"] );

    if ( var_1["normal"][2] >= 0.9962 )
    {
        var_1 = _id_B984( self.origin - var_0 );

        if ( var_1["normal"][2] >= 0.9962 )
            return undefined;
    }

    if ( vectordot( var_1["normal"], var_0 ) < 0 )
        return undefined;

    var_14 = _id_B710( self.lookaheaddir, self.lookaheaddist, var_1["pos"], var_1["normal"], var_13, ( 0, 0, 1 ), 15 );
    var_15["wantedPos"] = var_14["position"];
    var_15["stairEdgeDir"] = var_14["stairEdgeDirection"];
    var_15["transitionAnim"] = var_3;
    var_15["trans"] = var_4;
    return var_15;
}

_id_BCC4( var_0, var_1, var_2, var_3 )
{
    var_4 = undefined;

    if ( !isdefined( self.lookaheaddir ) )
        return undefined;

    if ( !self.facemotion && !self shouldfacemotion() )
    {
        var_5 = abs( self getmotionangle() );

        if ( var_5 > 45 )
            return undefined;
    }

    var_6 = _id_D2F2( var_0 );
    var_7 = vectornormalize( ( self.lookaheaddir[0], self.lookaheaddir[1], 0 ) );
    var_8 = !isdefined( var_3 ) || var_3 == "inOnly";
    var_9 = !isdefined( var_3 ) || var_3 == "outOnly";

    if ( self.stairsstate == "none" && var_8 )
    {
        var_10 = _id_CB0C( var_0, var_1, var_2 );
        var_11 = self.origin + ( 0, 0, 1 );
        var_12 = var_11 + var_10 * var_7;
        var_13 = self aiphysicstrace( var_11, var_12, 15, 48, 1, 1 );

        if ( var_13["fraction"] < 1 )
            var_4 = _id_D368( var_13, var_10, var_11, var_7, var_12, var_6 );
        else
            var_4 = _id_C39A( var_10, var_12, var_7, var_6 );
    }
    else if ( var_9 )
    {
        if ( self.stairsstate == "up" )
            var_4 = _id_CF97( var_7 );
        else if ( self.stairsstate == "down" )
            var_4 = _id_AE27( var_7 );
    }

    if ( isdefined( var_4 ) )
    {
        var_14 = length( var_4["trans"] );

        if ( var_14 <= 0 )
            return undefined;

        var_15 = var_4["wantedPos"] - self.origin;
        var_4["stairs_old_moveplaybackrate"] = self.moveplaybackrate;
        var_4["moveplaybackrate"] = length( var_15 ) / var_14;
        var_4["currentContext"] = var_6;
        var_4["distanceToCorner"] = var_15;
        return var_4;
    }

    return undefined;
}

_id_D2F2( var_0 )
{
    var_1 = animscripts\move::_id_CAC5();

    if ( var_1["animArray"].size == 0 )
        return "none";

    if ( isdefined( var_1["animArray"][2] ) && var_0 == var_1["animArray"][2] )
        return "turn_L90";
    else if ( isdefined( var_1["animArray"][6] ) && var_0 == var_1["animArray"][6] )
        return "turn_R90";

    return "none";
}

_id_D2BE( var_0, var_1, var_2, var_3 )
{
    if ( !_id_BD37() )
        return 0;

    var_4 = _id_BCC4( var_0, var_1, var_2, var_3 );

    if ( !isdefined( var_4 ) )
        return 0;

    if ( isdefined( self._id_CBFC ) && self._id_CBFC["transitionAnim"] == var_4["transitionAnim"] )
    {
        if ( gettime() < self._id_D401 + getanimlength( var_4["transitionAnim"] ) * 1000 )
            return 0;
    }

    self._id_CBFC = var_4;
    self._id_D401 = gettime();
    return 1;
}

_id_C547( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_id_BD37() )
        return;

    self endon( "death" );
    self endon( "killThreadCheckStairsTransition" );

    for (;;)
    {
        if ( _id_D2BE( var_0, var_1, var_2, var_4 ) )
        {
            if ( isdefined( var_3 ) )
                [[ var_3 ]]();

            self notify( "should_stairs_transition" );
            return;
        }

        wait 0.05;
    }
}

_id_D4EB( var_0 )
{
    if ( !isdefined( self._id_D401 ) )
        return 0;

    return gettime() - self._id_D401 <= var_0;
}

_id_C670()
{
    return isdefined( self._id_C670 );
}

_id_C2CC()
{
    var_0 = animscripts\move::_id_B383();

    if ( !isdefined( var_0["anim"] ) )
        return 0;

    var_1 = getanimlength( var_0["anim"] );
    var_2 = self getanimtime( var_0["anim"] );
    var_3 = var_2 * var_1;
    var_3 -= floor( var_3 / var_0["updateTime"] ) * var_0["updateTime"];
    var_4 = var_0["updateTime"] - var_3;
    return _id_D2BE( var_0["anim"], 1, var_4 );
}

_id_BDFD()
{
    self endon( "death" );
    self endon( "killanimscript" );

    for (;;)
    {
        self waittill( "lookahead_hit_stairs" );

        if ( _id_C670() )
            continue;

        if ( self.stairsstate != "none" )
            continue;

        if ( _id_C2CC() )
        {
            self notify( "move_loop_restart" );
            animscripts\combat_utility::endfireandanimidlethread();
        }
    }
}

_id_B79B()
{
    if ( isdefined( self._id_CD4E ) && self._id_CD4E == gettime() )
        return self._id_B4BC;

    return "none";
}

_id_BD37()
{
    switch ( level.script )
    {
        case "trainer":
        case "invasion":
        case "boneyard":
            return 0;
    }

    return !isdefined( self._id_CB42 ) || !self._id_CB42;
}

_id_D458()
{
    return self.stairsstate != "none" && _id_BD37();
}

ismovingonstairs()
{
    return self.stairsstate != "none" && self.stairsstate != "idle" && _id_BD37();
}

_id_B2F3( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return _id_C217( ( 0, 0, 1 ) );

    return _id_C217( var_0["normal"] );
}

_id_C217( var_0 )
{
    if ( var_0[2] < 0.65 )
        return "6x8";

    if ( var_0[2] < 0.75 )
        return "8x8";

    if ( var_0[2] < 0.86 )
        return "12x8";

    return "16x8";
}

_id_D210()
{
    var_0 = _id_B984( self.origin );
    var_1 = _id_B2F3( var_0, self.origin );
    return "stairs_" + self.stairsstate + "_" + var_1;
}
