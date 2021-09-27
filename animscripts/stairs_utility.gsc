// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID47492( var_0 )
{
    var_1 = var_0 + ( 0, 0, 36 );
    var_2 = var_0 - ( 0, 0, 36 );
    return _unknown_002B( var_1, var_2 );
}

_ID49961( var_0, var_1 )
{
    var_2 = self _meth_83F2( var_0, var_1, 0, 0, 1, 1 );

    if ( var_2["fraction"] < 1 )
    {
        var_3 = _func_11C( var_0, var_1, var_2["fraction"] );
        var_4["pos"] = var_3;
        var_4["normal"] = var_2["normal"];
    }
    else
        var_4 = undefined;

    return var_4;
}

_ID47065( var_0, var_1, var_2 )
{
    return _func_0FB( var_0, var_2 ) + var_1;
}

_ID48381( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _unknown_009D( var_3, var_4, var_0 );
    var_6 = _unknown_00A4( var_3, var_4, var_1 );
    var_7 = var_0;

    if ( _func_0C3( var_5 ) <= var_2 )
        return var_7;

    if ( var_5 > var_2 && var_6 < var_2 )
    {
        var_8 = var_5 - var_2 / var_5 - var_6;
        var_7 = 1 - var_8 * var_0 + var_8 * var_1;
        return var_7;
    }
    else
        return var_1;
}

_ID46864( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = ( 0, 0, var_6 );
    var_8 = var_4[2] - var_2[2];
    var_9 = ( var_0[0], var_0[1], 0 );
    var_10 = _func_119( var_9 );
    var_11 = _func_0FB( var_3, var_10 );

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
    var_10 *= 2 * var_1 + var_6;
    var_13 += var_10;
    var_14 = -1 * _func_0FB( var_3, var_2 );
    var_15 = _unknown_014F( var_7, var_13, var_6, var_3, var_14 );
    var_12["position"] = var_15 - ( 0, 0, var_6 );
    var_12["stairEdgeDirection"] = _func_0FC( var_3, var_5 );
    var_12["stairEdgeDirection"] = _func_119( var_12["stairEdgeDirection"] );
    return var_12;
}

_ID51980( var_0, var_1, var_2 )
{
    var_3 = _func_067( var_0 );
    var_4 = self _meth_8159( var_0 );
    var_5 = var_4 * var_3;
    var_6 = var_5 + var_2;

    if ( var_1 )
    {
        var_7 = var_6 / var_3;

        if ( var_6 < var_3 )
            var_8 = _func_094( var_0, var_4, var_7 );
        else
        {
            var_9 = var_6 - var_3;
            var_10 = var_9 / var_3;
            var_8 = _func_094( var_0, var_4, 1 );
            var_8 += _func_094( var_0, 0, var_10 );
        }
    }
    else
    {
        var_6 = _func_0C4( var_6, var_3 );
        var_7 = var_6 / var_3;
        var_8 = _func_094( var_0, var_4, var_7 );
    }

    return var_8[0] * self._ID24424;
}

_ID46788( var_0 )
{
    var_1 = _func_069( var_0, "stair_edge" );
    return _func_094( var_0, 0, var_1[0] );
}

_ID46290( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0 - var_2;
    var_5 = _func_0FB( var_1, var_1 );
    var_6 = _func_0FB( var_1, var_3 );
    var_7 = _func_0FB( var_3, var_3 );
    var_8 = _func_0FB( var_1, var_4 );
    var_9 = _func_0FB( var_3, var_4 );
    var_10 = var_5 * var_7 - var_6 * var_6;

    if ( var_10 < 1e-05 )
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
    var_14["distance"] = _func_0F6( var_13 );
    var_14["intersectionLine1"] = var_0 + var_11 * var_1;
    var_14["intersectionLine2"] = var_2 + var_12 * var_3;
    return var_14;
}

_ID48001( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "stair_transition" );
    self endon( "death" );
    self endon( "stair_transition_to_transition" );
    self endon( "killanimscript" );
    var_6 = var_2["wantedPos"];
    var_7 = var_2["stairEdgeDir"];
    var_8 = _func_0F6( var_2["trans"] );

    if ( _func_02F( var_2["startTime"] ) )
    {
        var_9 = var_2["startTime"];
        var_10 = _func_094( var_0, 0, var_9 );
        var_8 -= _func_0F6( var_10 );
    }
    else
        var_9 = 0;

    for (;;)
    {
        if ( var_4 )
        {
            if ( _func_0F8( var_7 ) <= 0.001 )
            {
                if ( !_func_02F( self._ID50387["wantedPos"] ) )
                    self._ID50387["wantedPos"] = var_6;
            }
            else
            {
                var_11 = _func_119( ( self._ID601[0], self._ID601[1], 0 ) );
                var_12 = _unknown_037B( self._ID740, var_11, var_6, var_7 );
                self._ID50387["wantedPos"] = var_12["intersectionLine2"];
            }
        }

        var_13 = var_9 + var_5;

        if ( var_13 >= var_3 )
        {
            var_14 = _func_11F( self._ID65 );
            var_15 = _func_094( var_0, var_3, var_13 );
            var_16 = var_15[0] * var_14 + ( 0, 0, var_15[2] );
            var_17 = self._ID50387["wantedPos"] + var_16;
            self._ID31298 = _func_0F6( var_17 - self._ID740 );
            return;
        }

        var_18 = self._ID50387["wantedPos"] - self._ID740;
        var_19 = 0.001;

        if ( _func_0FB( var_18, self._ID601 ) > var_19 )
        {
            var_20 = _func_094( var_0, var_9, var_13 );
            var_21 = _func_0F6( var_20 ) / var_8;
            var_22 = _func_0F6( self._ID50387["wantedPos"] - var_1 );
            var_23 = _func_0F6( var_18 );
            var_24 = _func_094( var_0, var_9, var_3 );
            var_25 = _func_0F6( var_24 );
            var_26 = var_25 / var_8;
            var_27 = var_23 / var_22;
            var_28 = var_26 / var_27 * var_22;
            var_29 = var_21 * var_28;
            self._ID31298 = _func_0C4( var_29, var_23 );
        }
        else
            self._ID31298 = 0;

        waittillframeend;
        var_9 = self _meth_8159( var_0 );

        if ( var_9 == 0 )
            return;
    }
}

_ID47761( var_0 )
{
    self._ID24424 = self._ID50147;
    self._ID50147 = undefined;
    self _meth_83D4( var_0, self._ID24424 );
}

_ID51133( var_0 )
{
    self endon( "death" );
    self endon( "stair_transition_to_transition" );
    self endon( "stair_transition" );
    self waittill( "killanimscript" );
    _unknown_04FE( var_0 );
    self._ID50800 = undefined;
    self _meth_85CB( 0 );
}

_ID51670( var_0, var_1 )
{
    self endon( "death" );
    self endon( "stair_transition_to_transition" );
    self endon( "killanimscript" );
    thread _unknown_0524( var_0 );
    var_2 = 0;

    for (;;)
    {
        waittillframeend;
        var_3 = self _meth_8159( var_0 );

        if ( var_3 == 0 )
        {
            var_2 = 1;
            break;
        }

        if ( var_3 >= var_1 )
            break;
    }

    _unknown_0543( var_0 );
    self notify( "stair_transition" );

    if ( var_2 )
    {
        self._ID50800 = undefined;
        self _meth_85CB( 0 );
        return;
    }

    if ( !_func_02F( self._ID50387 ) )
        return;

    var_4 = self._ID50387["wantedPos"];

    if ( _func_02F( var_4 ) )
    {
        var_5 = _func_11F( self._ID65 );
        var_6 = _func_094( var_0, var_1, var_3 );
        var_7 = var_6[0] * var_5 + ( 0, 0, var_6[2] );
        var_8 = var_4 + var_7;

        if ( _func_0F8( self._ID740 - var_8 ) < _func_0ED( 20 ) )
        {
            var_9 = self._ID740 + ( 0, 0, 15 );
            var_10 = var_8 + ( 0, 0, 15 );
            var_11 = self _meth_83F2( var_9, var_10, 15, 30, 0, 1 );

            if ( var_11["fraction"] == 1 )
                self _meth_81D2( var_8, self._ID65, 100 );
        }
    }

    var_12 = _func_067( var_0 );
    var_13 = var_12 * 1 - var_3;
    wait(var_13);
    self._ID50800 = undefined;
    self _meth_85CB( 0 );
}

_ID50341( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_4 * 0.5;
    var_6 = var_0 + ( 0, 0, var_5 );
    var_7 = var_1 + ( 0, 0, var_5 );
    var_8 = var_7 - var_6;
    var_9 = var_5 - var_3;
    var_10 = _func_119( var_8 );
    var_10 *= var_9;
    var_11 = var_8 * var_2["fraction"] + var_6;
    var_11 += var_10;
    var_11 -= var_2["normal"] * var_3;
    return var_11;
}

_ID49570( var_0, var_1, var_2 )
{
    if ( !_func_02F( self._ID54273 ) || self._ID54273 != _func_03D() )
    {
        if ( !_unknown_08E3( var_0, var_1, var_2 ) )
            return undefined;
    }

    return self._ID52220;
}

_ID44972()
{
    self._ID50387 = self._ID52220;

    if ( _func_02F( self._ID50147 ) )
        self notify( "stair_transition_to_transition" );
    else
        self._ID50147 = self._ID50387["stairs_old_moveplaybackrate"];

    self._ID24424 = _func_0EE( self._ID50387["moveplaybackrate"], 1, 2 );
}

_ID44849( var_0, var_1, var_2 )
{
    var_3 = 0.01;
    var_4 = _func_0F6( var_1 );
    var_5 = _func_069( self._ID50387["transitionAnim"], "stair_edge" );

    if ( var_4 < 1 )
        return var_5[0];

    var_6 = _func_0F6( var_2 );
    var_7 = _func_0F6( var_1 ) / var_6;

    if ( var_7 > 1 )
        return 0;

    var_8 = 1 - var_7;
    var_9 = var_8 * var_5[0];
    var_10 = 0;
    var_11 = var_5[0];

    for (;;)
    {
        var_12 = _func_094( var_0, 0, var_9 );
        var_13 = _func_0F6( var_12 ) / var_6;

        if ( var_13 < var_8 && var_13 + var_3 > var_8 )
            return var_9;

        if ( var_13 < var_8 )
            var_10 = var_9;
        else
            var_11 = var_9;

        var_9 = var_11 + var_10 * 0.5;
    }
}

_ID54120( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( _func_02F( var_0["stairs"] ) && var_0["normal"][2] < 0.9962 )
    {
        var_6 = _unknown_0A50( var_0["normal"] );
        var_7 = animscripts\run::_ID16616( var_5, "up", var_6 );
        var_8 = _unknown_068A( var_7 );
        var_9 = _unknown_0794( var_2, var_4, var_0, 15, 48 );
        var_10 = _unknown_060A( var_9 );

        if ( !_func_02F( var_10 ) )
            return undefined;

        if ( _func_0FB( var_10["normal"], var_3 ) > 0 )
            return undefined;

        var_9 = var_10["pos"];
        var_11 = _unknown_067F( self._ID601, self._ID602, var_9, var_0["normal"], self._ID740, ( 0, 0, 1 ), 15 );
        var_12["wantedPos"] = var_11["position"];
        var_12["stairEdgeDir"] = var_11["stairEdgeDirection"];
        var_12["inStairTransitionIn"] = 1;
        var_12["transitionAnim"] = var_7;
        var_12["trans"] = var_8;
        return var_12;
    }

    if ( var_1 < self._ID602 )
        return undefined;

    if ( var_1 - self._ID602 > 15 )
        var_4 -= var_3 * 15;
    else
    {
        var_13 = var_1 + self._ID602 * 0.5;
        var_4 -= var_3 * var_13;
    }

    return _unknown_08D6( var_1, var_4, var_3, var_5 );
}

_ID50074( var_0, var_1, var_2, var_3 )
{
    var_4 = 18;
    var_5 = var_0 * 1.333;
    var_6 = var_1 + ( 0, 0, var_4 + 15 );
    var_7 = var_1 - ( 0, 0, var_5 + 15 );
    var_8 = self _meth_83F2( var_6, var_7, 0, 48, 1, 1 );

    if ( var_8["fraction"] >= 1 )
        return undefined;

    if ( !_func_02F( var_8["stairs"] ) )
        return undefined;

    if ( var_8["normal"][2] > 0.9962 )
    {
        var_6 += var_2;
        var_7 += var_2;
        var_8 = self _meth_83F2( var_6, var_7, 0, 48, 1, 1 );

        if ( var_8["fraction"] >= 1 )
            return undefined;

        if ( !_func_02F( var_8["stairs"] ) )
            return undefined;

        if ( var_8["normal"][2] > 0.9962 )
        {
            var_9 = _unknown_08C4( var_6, var_7, var_8, 0, 48 );
            return undefined;
        }
    }

    var_10 = var_8["normal"];

    if ( _func_0FB( var_10, var_2 ) < 0 )
        return undefined;

    var_11 = _unknown_0BB4( var_10 );
    var_12 = animscripts\run::_ID16616( var_3, "down", var_11 );
    var_13 = _unknown_07EF( var_12 );
    var_9 = _unknown_08F8( var_6, var_7, var_8, 0, 48 );
    var_14 = _unknown_07BC( self._ID601, self._ID602, var_9, var_10, self._ID740, ( 0, 0, 1 ), 15 );
    var_15["wantedPos"] = var_14["position"];
    var_15["stairEdgeDir"] = var_14["stairEdgeDirection"];
    var_15["inStairTransitionIn"] = 1;
    var_15["transitionAnim"] = var_12;
    var_15["trans"] = var_13;

    if ( _func_03A( "ai_useStairsTraceErrorOffset", 1 ) )
    {
        var_16 = ( self._ID601[0], self._ID601[1], 0 );
        var_16 = _func_119( var_16 );

        if ( _func_0FB( var_10, var_16 ) > 0 )
        {
            var_17 = ( var_10[0], var_10[1], 0 );
            var_17 = _func_119( var_17 );
            var_17 = _ID42237::_ID45487( var_17, 0.5 );
            var_15["wantedPos"] += var_17;
        }
    }

    return var_15;
}

_ID53143( var_0 )
{
    var_1 = _unknown_07FB( self._ID740 );
    var_2 = _unknown_0C60( var_1, self._ID740 );
    var_3 = animscripts\run::_ID16616( "up", "none", var_2 );
    var_4 = _unknown_08A8( var_3 );
    var_5 = var_4[0];
    var_6 = 21;
    var_7 = var_5 * 1.333;
    var_8 = var_0 * 15;
    var_9 = self._ID740 + var_5 * var_0 + var_8;
    var_10 = var_9 + ( 0, 0, var_7 + var_6 );
    var_11 = var_9 - ( 0, 0, var_6 );
    var_12 = self _meth_83F2( var_10, var_11, 0, 0, 1, 1 );

    if ( var_12["fraction"] <= 0 || var_12["fraction"] >= 1 )
        return undefined;

    if ( _func_02F( var_12["stairs"] ) && _func_0C3( var_12["normal"][2] ) < 0.9962 )
        return undefined;

    var_13 = _func_11C( var_10, var_11, var_12["fraction"] );

    if ( var_1["normal"][2] > 0.9962 )
    {
        var_1 = _unknown_089F( self._ID740 - var_0 );

        if ( var_1["normal"][2] > 0.9962 )
            return undefined;
    }

    if ( _func_0FB( var_1["normal"], var_0 ) > 0 )
        return undefined;

    var_14 = _unknown_0919( self._ID601, self._ID602, var_1["pos"], var_1["normal"], var_13, ( 0, 0, 1 ), 15 );
    var_15["wantedPos"] = var_14["position"];
    var_15["stairEdgeDir"] = var_14["stairEdgeDirection"];
    var_15["transitionAnim"] = var_3;
    var_15["trans"] = var_4;
    return var_15;
}

_ID44583( var_0 )
{
    var_1 = _unknown_090D( self._ID740 );
    var_2 = _unknown_0D72( var_1, self._ID740 );
    var_3 = animscripts\run::_ID16616( "down", "none", var_2 );
    var_4 = _unknown_09BA( var_3 );
    var_5 = var_4[0];
    var_6 = 18;
    var_7 = 22;
    var_8 = var_5 * 1.333;
    var_9 = self._ID740 + var_5 * var_0;
    var_10 = var_9;
    var_11 = var_9 - ( 0, 0, var_8 + var_7 );
    var_12 = self _meth_83F2( var_10, var_11, 0, 0, 1, 1 );

    if ( var_12["fraction"] <= 0 || var_12["fraction"] >= 1 )
        return undefined;

    if ( _func_02F( var_12["stairs"] ) && var_12["normal"][2] < 0.9962 )
        return undefined;

    var_13 = _func_11C( var_10, var_11, var_12["fraction"] );

    if ( var_1["normal"][2] >= 0.9962 )
    {
        var_1 = _unknown_09A7( self._ID740 - var_0 );

        if ( var_1["normal"][2] >= 0.9962 )
            return undefined;
    }

    if ( _func_0FB( var_1["normal"], var_0 ) < 0 )
        return undefined;

    var_14 = _unknown_0A21( self._ID601, self._ID602, var_1["pos"], var_1["normal"], var_13, ( 0, 0, 1 ), 15 );
    var_15["wantedPos"] = var_14["position"];
    var_15["stairEdgeDir"] = var_14["stairEdgeDirection"];
    var_15["transitionAnim"] = var_3;
    var_15["trans"] = var_4;
    return var_15;
}

_ID48324( var_0, var_1, var_2, var_3 )
{
    var_4 = undefined;

    if ( !_func_02F( self._ID601 ) )
        return undefined;

    if ( !self._ID373 && !self _meth_819D() )
    {
        var_5 = _func_0C3( self _meth_819C() );

        if ( var_5 > 45 )
            return undefined;
    }

    var_6 = _unknown_0DF7( var_0 );
    var_7 = _func_119( ( self._ID601[0], self._ID601[1], 0 ) );
    var_8 = !_func_02F( var_3 ) || var_3 == "inOnly";
    var_9 = !_func_02F( var_3 ) || var_3 == "outOnly";

    if ( self._ID1012 == "none" && var_8 )
    {
        var_10 = _unknown_0AED( var_0, var_1, var_2 );
        var_11 = self._ID740 + ( 0, 0, 1 );
        var_12 = var_11 + var_10 * var_7;
        var_13 = self _meth_83F2( var_11, var_12, 15, 48, 1, 1 );

        if ( var_13["fraction"] < 1 )
            var_4 = _unknown_0C9B( var_13, var_10, var_11, var_7, var_12, var_6 );
        else
            var_4 = _unknown_0CF5( var_10, var_12, var_7, var_6 );
    }
    else if ( var_9 )
    {
        if ( self._ID1012 == "up" )
            var_4 = _unknown_0D7D( var_7 );
        else if ( self._ID1012 == "down" )
            var_4 = _unknown_0DEB( var_7 );
    }

    if ( _func_02F( var_4 ) )
    {
        var_14 = _func_0F6( var_4["trans"] );

        if ( var_14 <= 0 )
            return undefined;

        var_15 = var_4["wantedPos"] - self._ID740;
        var_4["stairs_old_moveplaybackrate"] = self._ID24424;
        var_4["moveplaybackrate"] = _func_0F6( var_15 ) / var_14;
        var_4["currentContext"] = var_6;
        var_4["distanceToCorner"] = var_15;
        return var_4;
    }

    return undefined;
}

_ID54002( var_0 )
{
    var_1 = animscripts\move::_ID51909();

    if ( var_1["animArray"].size == 0 )
        return "none";

    if ( _func_02F( var_1["animArray"][2] ) && var_0 == var_1["animArray"][2] )
        return "turn_L90";
    else if ( _func_02F( var_1["animArray"][6] ) && var_0 == var_1["animArray"][6] )
        return "turn_R90";

    return "none";
}

_ID53950( var_0, var_1, var_2, var_3 )
{
    if ( !_unknown_0FD0() )
        return 0;

    var_4 = _unknown_0EF2( var_0, var_1, var_2, var_3 );

    if ( !_func_02F( var_4 ) )
        return 0;

    if ( _func_02F( self._ID52220 ) && self._ID52220["transitionAnim"] == var_4["transitionAnim"] )
    {
        if ( _func_03D() < self._ID54273 + _func_067( var_4["transitionAnim"] ) * 1000 )
            return 0;
    }

    self._ID52220 = var_4;
    self._ID54273 = _func_03D();
    return 1;
}

_ID50503( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_unknown_1024() )
        return;

    self endon( "death" );
    self endon( "killThreadCheckStairsTransition" );

    for (;;)
    {
        if ( _unknown_0FCD( var_0, var_1, var_2, var_4 ) )
        {
            if ( _func_02F( var_3 ) )
                [[ var_3 ]]();

            self notify( "should_stairs_transition" );
            return;
        }

        wait 0.05;
    }
}

_ID54507( var_0 )
{
    if ( !_func_02F( self._ID54273 ) )
        return 0;

    return _func_03D() - self._ID54273 <= var_0;
}

_ID50800()
{
    return _func_02F( self._ID50800 );
}

_ID49868()
{
    var_0 = animscripts\move::_ID45955();

    if ( !_func_02F( var_0["anim"] ) )
        return 0;

    var_1 = _func_067( var_0["anim"] );
    var_2 = self _meth_8159( var_0["anim"] );
    var_3 = var_2 * var_1;
    var_3 -= _func_0E7( var_3 / var_0["updateTime"] ) * var_0["updateTime"];
    var_4 = var_0["updateTime"] - var_3;
    return _unknown_104B( var_0["anim"], 1, var_4 );
}

_ID48637()
{
    self endon( "death" );
    self endon( "killanimscript" );

    for (;;)
    {
        self waittill( "lookahead_hit_stairs" );

        if ( _unknown_1095() )
            continue;

        if ( self._ID1012 != "none" )
            continue;

        if ( _unknown_10AD() )
        {
            self notify( "move_loop_restart" );
            animscripts\combat_utility::_ID12641();
        }
    }
}

_ID47003()
{
    if ( _func_02F( self._ID52558 ) && self._ID52558 == _func_03D() )
        return self._ID46268;

    return "none";
}

_ID48439()
{
    switch ( level._ID912 )
    {

    }

    return !_func_02F( self._ID52034 ) || !self._ID52034;
    case "trainer":
    case "invasion":
    case "boneyard":
}

_ID54360()
{
    return self._ID1012 != "none" && _unknown_113C();
}

ismovingonstairs()
{
    return self._ID1012 != "none" && self._ID1012 != "idle" && _unknown_1155();
}

_ID45811( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        return _unknown_1193( ( 0, 0, 1 ) );

    return _unknown_119D( var_0["normal"] );
}

_ID49687( var_0 )
{
    if ( var_0[2] < 0.65 )
        return "6x8";

    if ( var_0[2] < 0.75 )
        return "8x8";

    if ( var_0[2] < 0.86 )
        return "12x8";

    return "16x8";
}

_ID53776()
{
    var_0 = _unknown_0D6F( self._ID740 );
    var_1 = _unknown_11D4( var_0, self._ID740 );
    return "stairs_" + self._ID1012 + "_" + var_1;
}
