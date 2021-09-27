// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID2178( var_0, var_1 )
{
    self._ID10423 = "crouch";
    animscripts\utility::_ID39672();
    self endon( "killanimscript" );
    self _meth_8199( "nogravity" );
    self _meth_8199( "noclip" );
    var_2 = self _meth_81A9();
    self _meth_819B( "face angle", var_2._ID65[1] );
    var_2._ID38701 = var_2._ID740[2] + var_2._ID38702;
    var_3 = var_2._ID38701 - var_2._ID740[2];
    thread _unknown_009B( var_3 - var_1 );
    var_4 = 0.15;
    self _meth_814C( %body, var_4 );
    self _meth_8119( "traverse", var_0, %animscript_root, 1, var_4, 1 );
    var_5 = 0.2;
    var_6 = 0.2;
    thread animscripts\notetracks::_ID11530( "traverse", "no clear" );

    if ( !_func_068( var_0, "gravity on" ) )
    {
        var_7 = 1.23;
        wait(var_7 - var_5);
        self _meth_8199( "gravity" );
        wait(var_5);
    }
    else
    {
        self waittillmatch( "traverse",  "gravity on"  );
        self _meth_8199( "gravity" );

        if ( !_func_068( var_0, "blend" ) )
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
        self _meth_81D2( self._ID740 + var_2 );
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

    if ( _func_02F( var_3 ) && var_3 < 1.0 )
        self _meth_8118( "traverseAnim", self._ID38712, self._ID38713, 1, 0.2, var_3 );

    for ( var_5 = 0; var_5 < var_2; var_5++ )
    {
        self _meth_81D2( self._ID740 + var_4 );
        wait 0.05;
    }

    if ( _func_02F( var_3 ) && var_3 < 1.0 )
        self _meth_8118( "traverseAnim", self._ID38712, self._ID38713, 1, 0.2, 1.0 );
}

_ID11657( var_0 )
{
    self endon( "killanimscript" );
    _func_036( "scr_traverse_debug", 0 );
    self notify( "traverse_started" );
    self._ID20957 = 1;
    self._ID10423 = "stand";
    animscripts\utility::_ID39672();
    var_1 = self _meth_81A9();

    if ( _func_02F( var_1._ID38702 ) )
        var_1._ID38701 = var_1._ID740[2] + var_1._ID38702;
    else
        var_1._ID38701 = var_1._ID740[2];

    var_2 = self _meth_81AA();
    self _meth_819B( "face angle", var_1._ID65[1] );
    self._ID38720 = var_0["traverseHeight"];
    self._ID38722 = var_1;
    var_3 = var_0["traverseAnim"];
    var_4 = var_0["traverseToCoverAnim"];
    self _meth_8199( "nogravity" );
    self _meth_8199( "noclip" );
    self._ID38723 = self._ID740[2];
    var_5 = 0;

    if ( _func_02F( var_4 ) && _func_02F( self._ID700 ) && self._ID700._ID1244 == var_0["coverType"] && _func_0F5( self._ID700._ID740, var_2._ID740 ) < 625 )
    {
        if ( animscripts\utility::_ID1735( self._ID700._ID65[1] - var_2._ID65[1] ) > 160 )
        {
            var_5 = 1;
            var_3 = var_4;
        }
    }

    if ( var_5 )
    {
        if ( _func_02F( var_0["traverseToCoverSound"] ) )
            thread _ID42407::_ID27079( var_0["traverseToCoverSound"] );
    }
    else if ( _func_02F( var_0["traverseSound"] ) )
        thread _ID42407::_ID27079( var_0["traverseSound"] );

    self._ID38712 = var_3;

    if ( !_func_068( var_3, "traverse_align" ) )
        _unknown_03F0();

    if ( _func_02F( var_0["traverseBodyNode"] ) )
        self._ID38713 = var_0["traverseBodyNode"];
    else
        self._ID38713 = %body;

    self _meth_8119( "traverseAnim", var_3, self._ID38713, 1, 0.2, 1 );
    self _meth_814C( %combatrun, 0.2 );
    var_6 = ::_unknown_041B;

    if ( _func_02F( var_0["traverseNotetrackFunc"] ) )
        var_6 = var_0["traverseNotetrackFunc"];

    self._ID38717 = 0;
    self._ID38716 = var_0["interruptDeathAnim"];
    animscripts\shared::_ID11529( "traverseAnim", var_6 );
    self _meth_8199( "gravity" );

    if ( self._ID274 )
        return;

    self._ID7._ID24881 = 0;

    if ( var_5 && _func_02F( self._ID700 ) && _func_0F5( self._ID740, self._ID700._ID740 ) < 256 )
    {
        self._ID7._ID24414 = "stop";
        self _meth_81D1( self._ID700._ID740 );
    }
    else if ( _func_02F( var_0["traverseStopsAtEnd"] ) )
        self._ID7._ID24414 = "stop";
    else
    {
        self._ID7._ID24414 = "run";
        self _meth_814C( var_3, 0.2 );
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
        return _unknown_04DE();
    else if ( var_0 == "traverse_align" )
        return _unknown_04F3();
    else if ( var_0 == "traverse_drop" )
        return _unknown_0510();
}

_ID18055()
{
    if ( _func_02F( self._ID38716 ) )
    {
        var_0 = self._ID38716[self._ID38717];
        self._ID9813 = var_0[_func_0B7( var_0.size )];
        self._ID38717++;
    }
}

_ID18054()
{
    self _meth_8199( "nogravity" );
    self _meth_8199( "noclip" );

    if ( _func_02F( self._ID38720 ) && _func_02F( self._ID38722._ID38701 ) )
    {
        var_0 = self._ID38722._ID38701 - self._ID38723;
        thread _unknown_0450( var_0 - self._ID38720 );
    }
}

_ID18056()
{
    var_0 = self._ID740 + ( 0, 0, 32 );
    var_1 = self _meth_8159( self._ID38712 );
    var_2 = _func_067( self._ID38712 );
    var_3 = var_1 * var_2;
    var_4 = 0;
    var_5 = 0;
    var_6 = 0;
    var_7 = undefined;
    var_8 = 1.0;
    var_9 = _func_069( self._ID38712, "land" );

    if ( var_9.size > 0 )
    {
        var_10 = _unknown_05FD( var_1, var_9 );
        var_8 = var_10;
        var_11 = _func_094( self._ID38712, var_1, var_10 );
        var_12 = ( 0, self._ID65[1], 0 );
        var_11 = _func_123( var_11, var_12 );
        var_7 = self._ID740 + var_11;
        var_4 = 0 - var_11[2];
        var_11 = ( var_11[0], var_11[1], 0 );
        var_0 += var_11;
        var_5 = var_10 - var_1 * var_2;
    }
    else
    {
        var_13 = _func_094( self._ID38712, var_1, 1.0 );
        var_12 = ( 0, self._ID65[1], 0 );
        var_13 = _func_123( var_13, var_12 );
        var_4 = 0 - var_13[2];
        var_7 = self._ID740 + var_13;
        var_14 = var_2 - var_3;
        var_5 = var_14 / 3.0;
    }

    var_15 = _func_091( var_0, var_0 + ( 0, 0, -768 ) );
    var_16 = _func_0F3( var_0, var_15 );
    var_17 = var_16 - 32 - 0.5;
    var_18 = var_4 - var_17;

    if ( var_4 < var_17 )
        var_19 = var_4 / var_17;
    else
        var_19 = 1;

    var_6 = _func_0E8( var_5 * 20 );
    thread _unknown_055A( var_18, 0, var_6, var_19 );
    thread _unknown_06D8( var_15[2], var_5, var_9.size, var_18 );
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
        self _meth_8199( "gravity" );
    }
    else
    {
        var_0 += 4.0;

        for (;;)
        {
            if ( self._ID740[2] < var_0 )
            {
                self _meth_8199( "gravity" );
                break;
            }

            wait 0.05;
        }
    }
}

_ID11544()
{
    self _meth_819A( "zonly_physics" );
    self waittill( "killanimscript" );
}

_ID11664( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "killanimscript" );
    var_7 = 1;

    if ( _func_02F( self._ID24424 ) )
        var_7 = self._ID24424;

    var_8 = self _meth_81A9();
    var_9 = self._ID740;

    if ( _func_02F( var_0 ) )
    {
        var_10 = _func_094( var_0, 0, 1 );
        var_9 = _unknown_0867( var_10, var_8._ID740, var_8._ID65 );
    }

    var_11 = self _meth_81AA();
    var_12 = var_11._ID740;

    if ( _func_02F( var_2 ) )
    {
        var_13 = _func_094( var_2, 0, 1 );
        var_12 = _unknown_088F( var_13 * -1, var_11._ID740, var_11._ID65 );
        var_12 += ( 0, 0, 1 );
    }

    var_14 = _func_094( var_1, 0, 1 );
    var_15 = _func_0F6( var_14 ) * var_7 / _func_067( var_1 );
    var_16 = _func_0F6( var_12 - var_9 ) / var_15;

    if ( var_16 <= 0 )
        return;

    self._ID20957 = 1;
    self._ID10423 = "crouch";
    animscripts\utility::_ID39672();

    if ( _func_02F( var_3 ) )
        self _meth_8199( var_3 );
    else
        self _meth_8199( "noclip" );

    self._ID52 = 1;

    if ( _func_02F( var_6 ) )
        var_17 = var_6;
    else
        var_17 = %body;

    self _meth_819B( "face angle", var_8._ID65[1] );

    if ( _func_02F( var_0 ) )
    {
        self _meth_8119( "traversal", var_0, var_17, 1, 0.1, var_7 );
        animscripts\shared::_ID11529( "traversal" );
    }

    self _meth_8119( "traversal", var_1, var_17, 1, 0.1, var_7 );
    animscripts\notetracks::_ID11534( var_16, "traversal" );

    if ( _func_02F( var_2 ) )
    {
        self _meth_8119( "traversal", var_2, var_17, 1, 0.1, var_7 );
        animscripts\shared::_ID11529( "traversal" );
    }

    self _meth_8199( "gravity" );

    if ( _func_02F( var_4 ) )
        self._ID7._ID28253 = var_4;

    if ( _func_02F( var_5 ) )
        self._ID7._ID24414 = var_5;

    self._ID20957 = undefined;
}

_ID38642( var_0, var_1, var_2 )
{
    var_3 = _func_0F6( var_0 );
    var_4 = _func_11A( var_0 );
    var_5 = _func_121( var_2, var_4 );
    var_6 = _func_11F( var_5 );
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
        var_4 = _func_069( self._ID38712, "traverse_align" );

        if ( var_4.size > 0 )
            var_1 = var_4;
        else
        {
            var_1 = _func_069( self._ID38712, "traverse_jump_end" );
            var_3 = 1;
        }
    }
    else if ( var_0 == "gravity on" )
    {
        var_2 = 1;
        var_1 = _func_069( self._ID38712, "traverse_jump_end" );
        var_3 = 1;
    }

    if ( var_2 )
    {
        var_5 = _func_069( self._ID38712, var_0 );
        var_6 = var_5[0];
        var_7 = _func_094( self._ID38712, 0, var_5[0] );
        var_8 = var_7[2];
        var_7 = _func_094( self._ID38712, 0, var_1[0] );
        var_9 = var_7[2];
        var_10 = var_1[0];
        var_11 = _func_067( self._ID38712 );
        var_12 = _func_0C1( var_10 - var_6 * var_11 * 30 );
        var_13 = _func_0E6( 1, var_12 - 2 );
        var_14 = var_9 - var_8;

        if ( var_3 )
        {
            var_7 = _func_094( self._ID38712, 0, 1 );
            var_15 = var_7[2] - var_9;
            var_16 = self._ID38718._ID740[2] - self._ID740[2] - var_15;
        }
        else
        {
            var_17 = self._ID38722;
            var_16 = var_17._ID38702 - self._ID740[2] - var_17._ID740[2];
        }

        thread _unknown_087C( var_16 - var_14, 0, var_13 );
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
    self _meth_8199( "nogravity" );
    self _meth_8199( "noclip" );
    thread _unknown_0B0A();
    var_3 = self _meth_81A9();
    self _meth_819B( "face angle", var_3._ID65[1] );

    if ( !_func_02F( var_2 ) )
    {
        var_4 = var_3._ID38701 - var_3._ID740[2];
        thread _unknown_08C4( var_4 - var_1 );
    }

    self._ID38712 = anim._ID11491[var_0];
    self._ID38722 = var_3;
    self._ID38718 = self _meth_81AA();
    self _meth_814C( %body, 0.2 );
    self _meth_811C( "dog_traverse", self._ID38712, 1, 0.2, 1 );
    self._ID24391 = "land";
    animscripts\notetracks::_ID11539( "dog_traverse", ::_unknown_0B22 );
    self._ID24391 = undefined;
    self._ID38712 = undefined;
}

_ID11435( var_0, var_1, var_2, var_3 )
{
    self endon( "killanimscript" );
    self _meth_8199( "noclip" );
    thread _unknown_0B93();
    var_4 = self _meth_81A9();
    var_5 = self _meth_81AA();
    self _meth_819B( "face angle", var_4._ID65[1] );

    if ( !_func_02F( var_2 ) )
        var_2 = "jump_down_40";

    self._ID38712 = anim._ID11491[var_2];
    self._ID38713 = %body;
    self._ID38722 = var_4;
    self._ID38718 = var_5;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( !var_3 )
    {
        var_6 = var_4._ID740[2] - var_5._ID740[2];
        thread _unknown_0993( 40.0 - var_6, 0.1, var_0, var_1 );
    }

    self._ID24391 = "land";
    self _meth_814C( %body, 0.2 );
    self _meth_811C( "traverseAnim", self._ID38712, 1, 0.2, 1 );

    if ( !var_3 )
        animscripts\shared::_ID11529( "traverseAnim" );
    else
        animscripts\notetracks::_ID11539( "traverseAnim", ::_unknown_0BDF );

    self._ID24391 = undefined;
    self _meth_8199( "gravity" );
    self._ID38713 = undefined;
    self._ID38712 = undefined;
}

_ID11436( var_0, var_1, var_2, var_3 )
{
    self endon( "killanimscript" );
    self _meth_8199( "noclip" );
    thread _unknown_0C5B();
    var_4 = self _meth_81A9();
    self _meth_819B( "face angle", var_4._ID65[1] );

    if ( !_func_02F( var_2 ) )
        var_2 = "jump_up_40";

    self._ID38712 = anim._ID11491[var_2];
    self._ID38713 = %body;
    self._ID38722 = var_4;
    self._ID38718 = self _meth_81AA();

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( !var_3 )
        thread _unknown_0A49( var_0 - 40.0, 0.2, var_1 );

    self._ID24391 = "land";
    self _meth_814C( %body, 0.2 );
    self _meth_811C( "traverseAnim", self._ID38712, 1, 0.2, 1 );

    if ( !var_3 )
        animscripts\shared::_ID11529( "traverseAnim" );
    else
        animscripts\notetracks::_ID11539( "traverseAnim", ::_unknown_0C94 );

    self._ID24391 = undefined;
    self _meth_8199( "gravity" );
    self._ID38712 = undefined;
    self._ID38713 = undefined;
}

_ID11438( var_0, var_1 )
{
    self endon( "killanimscript" );
    self _meth_8199( "nogravity" );
    self _meth_8199( "noclip" );
    thread _unknown_0D14();
    var_2 = self _meth_81A9();
    self _meth_819B( "face angle", var_2._ID65[1] );

    if ( !_func_02F( var_2._ID38701 ) )
        var_2._ID38701 = var_2._ID740[2];

    var_3 = var_2._ID38701 - var_2._ID740[2];
    thread _unknown_0ADC( var_3 - var_1 );
    self._ID24391 = "land";
    self _meth_814C( %body, 0.2 );
    self _meth_8119( "dog_traverse", anim._ID11491[var_0], 1, 0.2, 1 );
    animscripts\shared::_ID11529( "dog_traverse" );
    self._ID24391 = undefined;
}

_ID16446()
{
    var_0 = ( 0, 0, 0 );
    var_1 = ( 0, 0, 0 );

    if ( _func_02F( self._ID23165 ) && self._ID23165 )
    {
        var_1 = self _meth_818C( "j2_ball_ri" );
        var_0 = self _meth_818C( "j2_ball_le" );
    }
    else
    {
        var_1 = self _meth_818C( "j_ball_ri" );
        var_0 = self _meth_818C( "j_ball_le" );
    }

    if ( !_func_02F( var_1 ) || !_func_02F( var_0 ) )
        return "none";

    if ( var_0[2] > var_1[2] )
        return "Left";

    return "Right";
}
