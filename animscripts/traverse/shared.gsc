// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID2178( var_0, var_1 )
{
    self._ID10423 = "crouch";
    animscripts\utility::_ID39672();
    self endon( "killanimscript" );
    self traversemode( "nogravity" );
    self traversemode( "noclip" );
    var_2 = self getnegotiationstartnode();
    self orientmode( "face angle", var_2._ID65[1] );
    var_2._ID38701 = var_2._ID740[2] + var_2._ID38702;
    var_3 = var_2._ID38701 - var_2._ID740[2];
    thread _ID37473( var_3 - var_1 );
    var_4 = 0.15;
    self clearanim( %body, var_4 );
    self setflaggedanimknoballrestart( "traverse", var_0, %animscript_root, 1, var_4, 1 );
    var_5 = 0.2;
    var_6 = 0.2;
    thread animscripts\notetracks::_ID11530( "traverse", "no clear" );

    if ( !animhasnotetrack( var_0, "gravity on" ) )
    {
        var_7 = 1.23;
        wait(var_7 - var_5);
        self traversemode( "gravity" );
        wait(var_5);
    }
    else
    {
        self waittillmatch( "traverse",  "gravity on"  );
        self traversemode( "gravity" );

        if ( !animhasnotetrack( var_0, "blend" ) )
            wait(var_5);
        else
            self waittillmatch( "traverse",  "blend"  );
    }
}

_ID37473( var_0 )
{
    self endon( "killanimscript" );
    self notify( "endTeleportThread" );
    self endon( "endTeleportThread" );
    var_1 = 5;
    var_2 = ( 0, 0, var_0 / var_1 );

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        self forceteleport( self._ID740 + var_2 );
        wait 0.05;
    }
}

_ID37474( var_0, var_1, var_2, var_3 )
{
    self endon( "killanimscript" );
    self notify( "endTeleportThread" );
    self endon( "endTeleportThread" );

    if ( var_0 >= 0 || var_2 <= 0 )
        return;

    if ( var_1 > 0 )
        wait(var_1);

    var_4 = ( 0, 0, var_0 / var_2 );

    if ( isdefined( var_3 ) && var_3 < 1.0 )
        self setflaggedanimknoball( "traverseAnim", self._ID38712, self._ID38713, 1, 0.2, var_3 );

    for ( var_5 = 0; var_5 < var_2; var_5++ )
    {
        self forceteleport( self._ID740 + var_4 );
        wait 0.05;
    }

    if ( isdefined( var_3 ) && var_3 < 1.0 )
        self setflaggedanimknoball( "traverseAnim", self._ID38712, self._ID38713, 1, 0.2, 1.0 );
}

_ID11657( var_0 )
{
    self endon( "killanimscript" );
    setdynamicdvar( "scr_traverse_debug", 0 );
    self notify( "traverse_started" );
    self._ID20957 = 1;
    self._ID10423 = "stand";
    animscripts\utility::_ID39672();
    var_1 = self getnegotiationstartnode();

    if ( isdefined( var_1._ID38702 ) )
        var_1._ID38701 = var_1._ID740[2] + var_1._ID38702;
    else
        var_1._ID38701 = var_1._ID740[2];

    var_2 = self getnegotiationendnode();
    self orientmode( "face angle", var_1._ID65[1] );
    self._ID38720 = var_0["traverseHeight"];
    self._ID38722 = var_1;
    var_3 = var_0["traverseAnim"];
    var_4 = var_0["traverseToCoverAnim"];
    self traversemode( "nogravity" );
    self traversemode( "noclip" );
    self._ID38723 = self._ID740[2];
    var_5 = 0;

    if ( isdefined( var_4 ) && isdefined( self._ID700 ) && self._ID700._ID1244 == var_0["coverType"] && distancesquared( self._ID700._ID740, var_2._ID740 ) < 625 )
    {
        if ( animscripts\utility::_ID1735( self._ID700._ID65[1] - var_2._ID65[1] ) > 160 )
        {
            var_5 = 1;
            var_3 = var_4;
        }
    }

    if ( var_5 )
    {
        if ( isdefined( var_0["traverseToCoverSound"] ) )
            thread _ID42407::_ID27079( var_0["traverseToCoverSound"] );
    }
    else if ( isdefined( var_0["traverseSound"] ) )
        thread _ID42407::_ID27079( var_0["traverseSound"] );

    self._ID38712 = var_3;

    if ( !animhasnotetrack( var_3, "traverse_align" ) )
        _ID18054();

    if ( isdefined( var_0["traverseBodyNode"] ) )
        self._ID38713 = var_0["traverseBodyNode"];
    else
        self._ID38713 = %body;

    self setflaggedanimknoballrestart( "traverseAnim", var_3, self._ID38713, 1, 0.2, 1 );
    self clearanim( %combatrun, 0.2 );
    var_6 = ::_ID18057;

    if ( isdefined( var_0["traverseNotetrackFunc"] ) )
        var_6 = var_0["traverseNotetrackFunc"];

    self._ID38717 = 0;
    self._ID38716 = var_0["interruptDeathAnim"];
    animscripts\shared::_ID11529( "traverseAnim", var_6 );
    self traversemode( "gravity" );

    if ( self._ID274 )
        return;

    self._ID7._ID24881 = 0;

    if ( var_5 && isdefined( self._ID700 ) && distancesquared( self._ID740, self._ID700._ID740 ) < 256 )
    {
        self._ID7._ID24414 = "stop";
        self teleport( self._ID700._ID740 );
    }
    else if ( isdefined( var_0["traverseStopsAtEnd"] ) )
        self._ID7._ID24414 = "stop";
    else
    {
        self._ID7._ID24414 = "run";
        self clearanim( var_3, 0.2 );
    }

    self notify( "traverse_finish" );
    self._ID38713 = undefined;
    self._ID38712 = undefined;
    self._ID9813 = undefined;
    self._ID38722 = undefined;
    self._ID20957 = undefined;
}

_ID18057( var_0 )
{
    if ( var_0 == "traverse_death" )
        return _ID18055();
    else if ( var_0 == "traverse_align" )
        return _ID18054();
    else if ( var_0 == "traverse_drop" )
        return _ID18056();
}

_ID18055()
{
    if ( isdefined( self._ID38716 ) )
    {
        var_0 = self._ID38716[self._ID38717];
        self._ID9813 = var_0[randomint( var_0.size )];
        self._ID38717++;
    }
}

_ID18054()
{
    self traversemode( "nogravity" );
    self traversemode( "noclip" );

    if ( isdefined( self._ID38720 ) && isdefined( self._ID38722._ID38701 ) )
    {
        var_0 = self._ID38722._ID38701 - self._ID38723;
        thread _ID37473( var_0 - self._ID38720 );
    }
}

_ID18056()
{
    var_0 = self._ID740 + ( 0, 0, 32 );
    var_1 = self getanimtime( self._ID38712 );
    var_2 = getanimlength( self._ID38712 );
    var_3 = var_1 * var_2;
    var_4 = 0;
    var_5 = 0;
    var_6 = 0;
    var_7 = undefined;
    var_8 = 1.0;
    var_9 = getnotetracktimes( self._ID38712, "land" );

    if ( var_9.size > 0 )
    {
        var_10 = _ID16448( var_1, var_9 );
        var_8 = var_10;
        var_11 = getangledelta( self._ID38712, var_1, var_10 );
        var_12 = ( 0, self._ID65[1], 0 );
        var_11 = rotatevector( var_11, var_12 );
        var_7 = self._ID740 + var_11;
        var_4 = 0 - var_11[2];
        var_11 = ( var_11[0], var_11[1], 0 );
        var_0 += var_11;
        var_5 = ( var_10 - var_1 ) * var_2;
    }
    else
    {
        var_13 = getangledelta( self._ID38712, var_1, 1.0 );
        var_12 = ( 0, self._ID65[1], 0 );
        var_13 = rotatevector( var_13, var_12 );
        var_4 = 0 - var_13[2];
        var_7 = self._ID740 + var_13;
        var_14 = var_2 - var_3;
        var_5 = var_14 / 3.0;
    }

    var_15 = physicstrace( var_0, var_0 + ( 0, 0, -768 ) );
    var_16 = distance( var_0, var_15 );
    var_17 = var_16 - 32 - 0.5;
    var_18 = var_4 - var_17;

    if ( var_4 < var_17 )
        var_19 = var_4 / var_17;
    else
        var_19 = 1;

    var_6 = ceil( var_5 * 20 );
    thread _ID37474( var_18, 0, var_6, var_19 );
    thread _ID14239( var_15[2], var_5, var_9.size, var_18 );
}

_ID16448( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_1.size - 1; var_2++ )
    {
        for ( var_3 = var_2 + 1; var_3 < var_1.size; var_3++ )
        {
            if ( var_1[var_3] < var_1[var_2] )
            {
                var_4 = var_1[var_3];
                var_1[var_3] = var_1[var_2];
                var_1[var_2] = var_4;
            }
        }
    }

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] > var_0 )
            return var_1[var_2];
    }

    return var_1[var_1.size - 1];
}

_ID14239( var_0, var_1, var_2, var_3 )
{
    self endon( "killanimscript" );

    if ( var_2 > 0 )
    {
        var_4 = var_1;

        if ( var_3 > 0 )
            var_4 -= 0.1;

        if ( var_4 < 0 )
            var_4 = 0.0;

        wait(var_4);
        self traversemode( "gravity" );
    }
    else
    {
        var_0 += 4.0;

        for (;;)
        {
            if ( self._ID740[2] < var_0 )
            {
                self traversemode( "gravity" );
                break;
            }

            wait 0.05;
        }
    }
}

_ID11544()
{
    self animmode( "zonly_physics" );
    self waittill( "killanimscript" );
}

_ID11664( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "killanimscript" );
    var_7 = 1;

    if ( isdefined( self._ID24424 ) )
        var_7 = self._ID24424;

    var_8 = self getnegotiationstartnode();
    var_9 = self._ID740;

    if ( isdefined( var_0 ) )
    {
        var_10 = getangledelta( var_0, 0, 1 );
        var_9 = _ID38642( var_10, var_8._ID740, var_8._ID65 );
    }

    var_11 = self getnegotiationendnode();
    var_12 = var_11._ID740;

    if ( isdefined( var_2 ) )
    {
        var_13 = getangledelta( var_2, 0, 1 );
        var_12 = _ID38642( var_13 * -1, var_11._ID740, var_11._ID65 );
        var_12 += ( 0, 0, 1 );
    }

    var_14 = getangledelta( var_1, 0, 1 );
    var_15 = length( var_14 ) * var_7 / getanimlength( var_1 );
    var_16 = length( var_12 - var_9 ) / var_15;

    if ( var_16 <= 0 )
        return;

    self._ID20957 = 1;
    self._ID10423 = "crouch";
    animscripts\utility::_ID39672();

    if ( isdefined( var_3 ) )
        self traversemode( var_3 );
    else
        self traversemode( "noclip" );

    self._ID52 = 1;

    if ( isdefined( var_6 ) )
        var_17 = var_6;
    else
        var_17 = %body;

    self orientmode( "face angle", var_8._ID65[1] );

    if ( isdefined( var_0 ) )
    {
        self setflaggedanimknoballrestart( "traversal", var_0, var_17, 1, 0.1, var_7 );
        animscripts\shared::_ID11529( "traversal" );
    }

    self setflaggedanimknoballrestart( "traversal", var_1, var_17, 1, 0.1, var_7 );
    animscripts\notetracks::_ID11534( var_16, "traversal" );

    if ( isdefined( var_2 ) )
    {
        self setflaggedanimknoballrestart( "traversal", var_2, var_17, 1, 0.1, var_7 );
        animscripts\shared::_ID11529( "traversal" );
    }

    self traversemode( "gravity" );

    if ( isdefined( var_4 ) )
        self._ID7._ID28253 = var_4;

    if ( isdefined( var_5 ) )
        self._ID7._ID24414 = var_5;

    self._ID20957 = undefined;
}

_ID38642( var_0, var_1, var_2 )
{
    var_3 = length( var_0 );
    var_4 = vectortoangles( var_0 );
    var_5 = combineangles( var_2, var_4 );
    var_6 = anglestoforward( var_5 );
    return var_1 + var_6 * var_3;
}

_ID11430( var_0 )
{
    var_1 = undefined;
    var_2 = 0;
    var_3 = 0;

    if ( var_0 == "traverse_jump_start" )
    {
        var_2 = 1;
        var_4 = getnotetracktimes( self._ID38712, "traverse_align" );

        if ( var_4.size > 0 )
            var_1 = var_4;
        else
        {
            var_1 = getnotetracktimes( self._ID38712, "traverse_jump_end" );
            var_3 = 1;
        }
    }
    else if ( var_0 == "gravity on" )
    {
        var_2 = 1;
        var_1 = getnotetracktimes( self._ID38712, "traverse_jump_end" );
        var_3 = 1;
    }

    if ( var_2 )
    {
        var_5 = getnotetracktimes( self._ID38712, var_0 );
        var_6 = var_5[0];
        var_7 = getangledelta( self._ID38712, 0, var_5[0] );
        var_8 = var_7[2];
        var_7 = getangledelta( self._ID38712, 0, var_1[0] );
        var_9 = var_7[2];
        var_10 = var_1[0];
        var_11 = getanimlength( self._ID38712 );
        var_12 = int( ( var_10 - var_6 ) * var_11 * 30 );
        var_13 = max( 1, var_12 - 2 );
        var_14 = var_9 - var_8;

        if ( var_3 )
        {
            var_7 = getangledelta( self._ID38712, 0, 1 );
            var_15 = var_7[2] - var_9;
            var_16 = self._ID38718._ID740[2] - self._ID740[2] - var_15;
        }
        else
        {
            var_17 = self._ID38722;
            var_16 = var_17._ID38702 - ( self._ID740[2] - var_17._ID740[2] );
        }

        thread _ID37474( var_16 - var_14, 0, var_13 );
        return 1;
    }
}

_ID11452()
{
    self waittill( "killanimscript" );
    self._ID38722 = undefined;
    self._ID38718 = undefined;
}
#using_animtree("dog");

_ID11456( var_0, var_1, var_2 )
{
    self endon( "killanimscript" );
    self traversemode( "nogravity" );
    self traversemode( "noclip" );
    thread _ID11452();
    var_3 = self getnegotiationstartnode();
    self orientmode( "face angle", var_3._ID65[1] );

    if ( !isdefined( var_2 ) )
    {
        var_4 = var_3._ID38701 - var_3._ID740[2];
        thread _ID37473( var_4 - var_1 );
    }

    self._ID38712 = anim._ID11491[var_0];
    self._ID38722 = var_3;
    self._ID38718 = self getnegotiationendnode();
    self clearanim( %body, 0.2 );
    self setflaggedanimrestart( "dog_traverse", self._ID38712, 1, 0.2, 1 );
    self._ID24391 = "land";
    animscripts\notetracks::_ID11539( "dog_traverse", ::_ID11430 );
    self._ID24391 = undefined;
    self._ID38712 = undefined;
}

_ID11435( var_0, var_1, var_2, var_3 )
{
    self endon( "killanimscript" );
    self traversemode( "noclip" );
    thread _ID11452();
    var_4 = self getnegotiationstartnode();
    var_5 = self getnegotiationendnode();
    self orientmode( "face angle", var_4._ID65[1] );

    if ( !isdefined( var_2 ) )
        var_2 = "jump_down_40";

    self._ID38712 = anim._ID11491[var_2];
    self._ID38713 = %body;
    self._ID38722 = var_4;
    self._ID38718 = var_5;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !var_3 )
    {
        var_6 = var_4._ID740[2] - var_5._ID740[2];
        thread _ID37474( 40.0 - var_6, 0.1, var_0, var_1 );
    }

    self._ID24391 = "land";
    self clearanim( %body, 0.2 );
    self setflaggedanimrestart( "traverseAnim", self._ID38712, 1, 0.2, 1 );

    if ( !var_3 )
        animscripts\shared::_ID11529( "traverseAnim" );
    else
        animscripts\notetracks::_ID11539( "traverseAnim", ::_ID11430 );

    self._ID24391 = undefined;
    self traversemode( "gravity" );
    self._ID38713 = undefined;
    self._ID38712 = undefined;
}

_ID11436( var_0, var_1, var_2, var_3 )
{
    self endon( "killanimscript" );
    self traversemode( "noclip" );
    thread _ID11452();
    var_4 = self getnegotiationstartnode();
    self orientmode( "face angle", var_4._ID65[1] );

    if ( !isdefined( var_2 ) )
        var_2 = "jump_up_40";

    self._ID38712 = anim._ID11491[var_2];
    self._ID38713 = %body;
    self._ID38722 = var_4;
    self._ID38718 = self getnegotiationendnode();

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !var_3 )
        thread _ID37474( var_0 - 40.0, 0.2, var_1 );

    self._ID24391 = "land";
    self clearanim( %body, 0.2 );
    self setflaggedanimrestart( "traverseAnim", self._ID38712, 1, 0.2, 1 );

    if ( !var_3 )
        animscripts\shared::_ID11529( "traverseAnim" );
    else
        animscripts\notetracks::_ID11539( "traverseAnim", ::_ID11430 );

    self._ID24391 = undefined;
    self traversemode( "gravity" );
    self._ID38712 = undefined;
    self._ID38713 = undefined;
}

_ID11438( var_0, var_1 )
{
    self endon( "killanimscript" );
    self traversemode( "nogravity" );
    self traversemode( "noclip" );
    thread _ID11452();
    var_2 = self getnegotiationstartnode();
    self orientmode( "face angle", var_2._ID65[1] );

    if ( !isdefined( var_2._ID38701 ) )
        var_2._ID38701 = var_2._ID740[2];

    var_3 = var_2._ID38701 - var_2._ID740[2];
    thread _ID37473( var_3 - var_1 );
    self._ID24391 = "land";
    self clearanim( %body, 0.2 );
    self setflaggedanimknoballrestart( "dog_traverse", anim._ID11491[var_0], 1, 0.2, 1 );
    animscripts\shared::_ID11529( "dog_traverse" );
    self._ID24391 = undefined;
}

_ID16446()
{
    var_0 = ( 0, 0, 0 );
    var_1 = ( 0, 0, 0 );

    if ( isdefined( self._ID23165 ) && self._ID23165 )
    {
        var_1 = self gettagorigin( "j2_ball_ri" );
        var_0 = self gettagorigin( "j2_ball_le" );
    }
    else
    {
        var_1 = self gettagorigin( "j_ball_ri" );
        var_0 = self gettagorigin( "j_ball_le" );
    }

    if ( !isdefined( var_1 ) || !isdefined( var_0 ) )
        return "none";

    if ( var_0[2] > var_1[2] )
        return "Left";

    return "Right";
}
