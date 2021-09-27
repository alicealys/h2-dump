// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24451()
{
    self endon( "movemode" );
    self _meth_819B( "face enemy or motion" );

    if ( animscripts\utility::_ID20915() )
        self._ID1230 = 0.16;
    else
        self._ID1230 = 0.03;

    animscripts\utility::_ID39726();

    if ( animscripts\utility::_ID20775( 0 ) )
        _unknown_00C6();
    else
        _unknown_00B3();
}

_ID36914()
{
    self._ID36905 = _func_1A5();
    self._ID36905._ID8375 = "nostate";
    self._ID36905._ID24449 = "combat_stationary";
    self._ID36905._ID38166 = "track_none";
    self._ID36905._ID36200 = [];
    self._ID36905._ID36200["nostate"] = [ ::_unknown_00D8, ::_unknown_00DC ];
    self._ID36905._ID36200["noncombat"] = [ ::_unknown_0171, ::_unknown_017F ];
    self._ID36905._ID36200["combat"] = [ ::_unknown_0190, ::_unknown_01A2 ];
    self._ID36905._ID36200["combat_stationary"] = [ ::_unknown_0110, ::_unknown_0114 ];
    self._ID36905._ID36200["combat_forward"] = [ ::_unknown_01D6, ::_unknown_01E3 ];
    self._ID36905._ID36200["combat_strafe"] = [ ::_unknown_01F2, ::_unknown_021A ];
    self._ID36905._ID36200["track_none"] = [ ::_unknown_0149, ::_unknown_014C ];
    self._ID36905._ID36200["track_forward"] = [ ::_unknown_0268, ::_unknown_027D ];
    self._ID36905._ID36200["track_strafe"] = [ ::_unknown_029F, ::_unknown_02A3 ];
    self _meth_8156( _unknown_02E1( "aim_stand_D" ) );
    self _meth_8156( _unknown_02ED( "aim_stand_U" ) );
    self _meth_8156( _unknown_02F8( "aim_stand_L" ) );
    self _meth_8156( _unknown_0303( "aim_stand_R" ) );
    self._ID9575 = ::_unknown_0346;
    self._ID26587 = 1;
    self._ID26360 = ::_unknown_08F3;
    self._ID26359 = 0.2;
}

_ID36926()
{
    self._ID36905 = undefined;

    if ( animscripts\utility::_ID20915() )
        self._ID1230 = 0.16;
    else
        self._ID1230 = 0.3;
}

_ID36938()
{

}

_ID36937()
{
    _unknown_0257( "nostate" );
    _unknown_0451();

    if ( _func_02F( self._ID28541 ) )
    {
        self._ID1230 = self._ID28541;
        self._ID28541 = undefined;
    }
}

_ID24460()
{
    if ( self._ID36905._ID8375 != "noncombat" )
        _unknown_027F( "noncombat" );

    var_0 = self._ID36905._ID24350;
    var_1 = 0.4;

    if ( animscripts\utility::_ID20915() )
        var_1 = 0.2;

    self _meth_815C( "swimanim", var_0, 1, var_1, self._ID24424 );
    _unknown_099B();
    animscripts\notetracks::_ID11534( 0.2, "swimanim" );
}

_ID24452()
{
    if ( self._ID36905._ID8375 != "combat" )
        _unknown_02C7( "combat" );

    if ( _func_02F( self._ID322 ) )
    {
        animscripts\run::_ID32784( 1 );

        if ( !self._ID373 )
        {
            _unknown_086B();
            return;
        }
        else
        {
            if ( self._ID36905._ID24449 != "combat_forward" )
                _unknown_0322( "combat_forward" );

            if ( _func_02F( self._ID4932 ) && self._ID4932 && _func_0F8( self._ID1283 ) )
            {
                var_0 = _func_11A( self._ID1283 );

                if ( _func_0C3( _func_0F0( var_0[1] - self._ID65[1] ) ) > 35 )
                {
                    self._ID1230 = 0.18;

                    if ( animscripts\utility::_ID20915() )
                        self._ID1230 = 0.2;
                }
                else
                {
                    if ( animscripts\utility::_ID20915() )
                        self._ID1230 = 0.16;
                    else
                        self._ID1230 = 0.03;

                    self._ID4932 = undefined;
                }
            }
            else
                self._ID4932 = undefined;

            var_1 = _unknown_0443( "forward_aim" );
        }
    }
    else
    {
        if ( self._ID36905._ID24449 != "combat_forward" )
            _unknown_03A3( "combat_forward" );

        animscripts\run::_ID32784( 0 );
        var_1 = _unknown_046A( "forward_aim" );
    }

    var_2 = 0.4;

    if ( animscripts\utility::_ID20915() )
        var_2 = 0.2;

    _unknown_0A8D();
    self _meth_815C( "swimanim", var_access_1, 1, var_2, self._ID24424 );
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
        _unknown_047A( "track_none" );

    _unknown_05DC();
    thread _unknown_04E9();
}

_ID24462()
{
    self notify( "end_MoveSwim_NonCombat_TwitchUpdate" );
}
#using_animtree("generic_human");

_ID24453()
{
    self _meth_814D( %combatrun, 1.0, 0.5, self._ID24424 );

    if ( self._ID36905._ID24449 != "combat_forward" )
        _unknown_045A( "combat_forward" );
}

_ID24454()
{
    _unknown_0465( "combat_stationary" );
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
        _unknown_0502( "track_forward" );

    _unknown_0664();
}

_ID24456()
{

}

_ID24458()
{
    self _meth_814E( _unknown_0579( "strafe_B" ), 1, 0.1, self._ID34146, 1 );
    self _meth_814E( _unknown_058D( "strafe_L" ), 1, 0.1, self._ID34146, 1 );
    self _meth_814E( _unknown_05A2( "strafe_R" ), 1, 0.1, self._ID34146, 1 );

    if ( self._ID36905._ID38166 != "track_strafe" )
        _unknown_0559( "track_strafe" );

    _unknown_06CD();

    if ( animscripts\utility::_ID20915() )
        self._ID1230 = 0.25;
    else
    {
        self._ID1230 = 0.18;
        self._ID558 = 1;
    }
}

_ID24459()
{
    self _meth_814C( %combatrun_forward, 0.2 );
    self _meth_814C( %combatrun_backward, 0.2 );
    self _meth_814C( %combatrun_left, 0.2 );
    self _meth_814C( %combatrun_right, 0.2 );

    if ( animscripts\utility::_ID20915() )
        self._ID1230 = 0.16;
    else
    {
        self._ID1230 = 0.03;
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
    self _meth_8156( _unknown_0661( "aim_move_D" ) );
    self _meth_8156( _unknown_066C( "aim_move_L" ) );
    self _meth_8156( _unknown_0677( "aim_move_R" ) );
    self _meth_8156( _unknown_0683( "aim_move_U" ) );
    thread _unknown_0672();
}

_ID36972()
{
    self _meth_814C( %aim_2, 0.2 );
    self _meth_814C( %aim_4, 0.2 );
    self _meth_814C( %aim_6, 0.2 );
    self _meth_814C( %aim_8, 0.2 );
}

_ID36974()
{

}

_ID36975()
{
    self _meth_814C( %w_aim_4, 0.2 );
    self _meth_814C( %w_aim_6, 0.2 );
    self _meth_814C( %w_aim_8, 0.2 );
    self _meth_814C( %w_aim_2, 0.2 );
}

_ID24465()
{
    self endon( "killanimscript" );
    self endon( "end_face_enemy_tracking" );

    if ( !_func_02F( self._ID2421 ) )
    {
        self._ID2421 = 1;
        animscripts\combat::_ID32267();

        if ( animscripts\utility::_ID20915() )
        {
            self._ID894 = 90;
            self._ID590 = -90;
        }

        animscripts\track::_ID38149( %w_aim_2, %w_aim_4, %w_aim_6, %w_aim_8 );
    }
}

_ID16643( var_0, var_1 )
{
    var_2 = animscripts\utility::_ID22630( "swim", var_0 );

    if ( _func_02F( var_1 ) )
        return var_2[var_1];
    else
        return var_2;
}

_ID24463()
{
    var_0 = _unknown_076B( "forward" );
    self._ID36905._ID24350 = var_0;
}

_ID36968()
{
    if ( _func_02F( self._ID11025 ) )
        return 0;

    if ( !_func_02F( self._ID762 ) )
        return 0;

    var_0 = self._ID625;
    self._ID625 = 128;

    if ( !self _meth_819D() )
    {
        self._ID625 = var_0;
        return 0;
    }

    self._ID625 = var_0;
    var_1 = 10000;

    if ( animscripts\utility::_ID20915() )
        var_1 = 32400;

    if ( _func_0F5( self._ID740, self._ID762 ) < var_1 )
        return 0;

    if ( self._ID7._ID24414 != "stop" )
        return 0;

    if ( _func_0F8( self._ID821 ) > 1 )
    {
        var_2 = _func_11A( self._ID821 );

        if ( _func_0C3( _func_0F0( var_2[1] - self._ID65[1] ) ) < 90 )
        {
            var_3 = _func_11A( self._ID601 );

            if ( _func_0C3( _func_0F0( var_3[1] - self._ID65[1] ) ) < 90 )
                return 0;
        }
    }

    return 1;
}

_ID36936()
{
    self._ID7._ID28253 = "stand";

    if ( !_unknown_081A() )
        return;

    var_0 = _unknown_0937();

    if ( !_func_02F( var_0 ) )
        return;

    var_1 = var_0._ID22723;
    var_2 = var_0._ID22721;
    var_3 = var_0._ID22720;
    var_4 = _func_11A( self._ID601 );
    var_5 = var_4 - var_3;
    var_6 = _func_11F( var_5 );
    var_7 = animscripts\exit_node::_ID16270();

    if ( animscripts\utility::_ID20915() && _func_02F( var_7 ) )
    {
        var_8 = _unknown_0C9D( var_7 );

        if ( var_8 != "exposed" )
        {
            var_9 = _unknown_0CC7( var_7 );
            var_6 = _func_11F( var_9 );
        }
        else
            var_6 = _func_11F( self._ID65 );
    }

    self _meth_819A( "nogravity", 0 );
    var_10 = _func_0BA( 0.9, 1.1 );
    var_11 = 0.3;
    self _meth_819B( "face angle 3d", self._ID65 );

    if ( _func_02F( var_1 ) && !animscripts\utility::_ID20915() )
    {
        self _meth_8119( "startturn", var_1, %body, 1, 0.3, var_10 * self._ID24424 );
        animscripts\shared::_ID11529( "startturn" );
        var_11 = 0.5;
    }
    else if ( _func_02F( var_1 ) && animscripts\utility::_ID20915() )
    {
        if ( _func_02F( var_7 ) )
            self _meth_819B( "face direction", var_6 );

        self._ID28541 = 0.16;
        self._ID1230 = 5.0;
        var_11 = 0.1;
        self _meth_8119( "startturn", var_1, %body, 1, var_11, var_10 * self._ID24424 );
        animscripts\shared::_ID11529( "startturn" );
        var_11 = 0.5;
        self._ID1230 = 0.16;
        self._ID28541 = undefined;
        var_12 = _func_095( var_1 );
        var_7 = animscripts\exit_node::_ID16270();
        var_6 = _func_11F( self._ID65 );

        if ( _func_02F( var_7 ) )
        {
            var_8 = _unknown_0D87( var_7 );

            if ( var_8 != "exposed" )
            {
                var_9 = _unknown_0DB0( var_7 );
                var_9 = ( var_9[0], var_9[1] - var_12, var_9[2] );
                var_6 = _func_11F( var_9 );
            }
        }
    }

    var_13 = var_4 - self._ID65;
    var_14 = _func_067( var_2 );
    var_15 = 0.001 * _func_0C3( _func_0F0( var_13[1] - var_3[1] ) ) / var_14;
    var_16 = 0.001 * _func_0C3( _func_0F0( var_13[0] - var_3[0] ) ) / var_14;
    var_17 = _func_0E6( var_15, var_16 );

    if ( var_17 < 0.01 )
        var_17 = 0.01;

    if ( animscripts\utility::_ID20915() )
    {
        var_11 = 0.05;
        self._ID1230 = 0.16;
        var_17 = 5.0;
    }

    self._ID28541 = self._ID1230;
    self._ID1230 = var_17;
    self _meth_819B( "face direction", var_6 );
    self _meth_8119( "startmove", var_2, %body, 1, var_11, var_10 * self._ID24424 );
    animscripts\shared::_ID11529( "startmove" );
    self._ID1230 = self._ID28541;
    self._ID28541 = undefined;
    self _meth_819B( "face default" );
    self _meth_819A( "none", 0 );

    if ( animscripts\utility::_ID20915() )
    {
        if ( _func_068( var_2, "finish" ) )
            animscripts\shared::_ID11529( "startmove" );

        var_18 = 65536;
        var_19 = self._ID451;

        if ( _func_02F( self._ID700 ) )
            var_19 = self._ID700._ID740;

        if ( _func_22D( self._ID740, var_19 ) > var_18 )
            self notify( "force_space_rotation_update",  0, 0, undefined, 1  );
    }

    if ( animscripts\utility::_ID20915() )
        return 0.2;
    else
        return 0.4;
}

_ID36963()
{
    self _meth_8156( _unknown_0A4E( "turn_add_l" ) );
    self _meth_8156( _unknown_0A59( "turn_add_r" ) );
    self _meth_8156( _unknown_0A64( "turn_add_u" ) );
    self _meth_8156( _unknown_0A70( "turn_add_d" ) );
    self._ID28526 = 0;
    self._ID28525 = 0;
}

_ID36919()
{
    self _meth_814C( %add_turn_l, 0.2 );
    self _meth_814C( %add_turn_r, 0.2 );
    self _meth_814C( %add_turn_u, 0.2 );
    self _meth_814C( %add_turn_d, 0.2 );
    self._ID28526 = undefined;
    self._ID28525 = undefined;
}

_ID36917()
{
    var_0 = animscripts\utility::_ID20775();
    var_1 = animscripts\exit_node::_ID16270();
    var_2 = self._ID65;
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    var_6 = _func_11A( self._ID601 );
    var_7 = animscripts\utility::_ID16702( var_1 );

    if ( animscripts\utility::_ID20915() && var_7[2] )
    {
        if ( var_7[2] != 0 )
        {
            var_8 = _func_11F( var_7 );
            var_9 = self._ID451;

            if ( _func_02F( self._ID700 ) )
                var_9 = self._ID700._ID740;

            var_10 = _func_124( var_8, var_9 - self._ID740, var_7[2] * -1 );
            var_11 = var_10 + self._ID740;
            var_12 = var_11 - self._ID740;
            var_12 = _func_119( var_12 );
            var_6 = _func_11A( var_12 );
            var_5 = 1;
        }
    }

    var_13 = undefined;
    var_14 = undefined;

    if ( _func_02F( var_1 ) && _func_02F( var_1._ID1244 ) )
    {
        var_14 = _unknown_0F91( var_1 );

        if ( var_14 != "exposed" )
        {
            var_13 = "exit_" + var_14;
            var_2 = var_1._ID65;

            if ( animscripts\utility::_ID20915() )
            {
                var_2 = animscripts\utility::_ID16702( var_1 );

                if ( var_5 == 1 )
                    var_2 = ( var_2[0], var_2[1], 0 );
            }
            else
                var_2 = var_1._ID65;

            var_3 = 1;
        }
    }

    if ( !_func_02F( var_13 ) )
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

    var_15 = _unknown_0B9B( var_13 );
    var_16 = _func_0F0( var_6[1] - var_2[1] );
    var_17 = _func_0F0( var_6[0] - var_2[0] );
    var_18 = undefined;

    if ( animscripts\utility::_ID20915() )
        var_18 = 3;

    var_19 = _unknown_0FD6( var_16, var_18 );
    var_20 = _unknown_0FDC( var_17, var_18 );
    var_21 = var_14;

    if ( !_func_02F( var_21 ) && _func_02F( self._ID822 ) && _func_22D( self._ID822._ID740, self._ID740 ) < 36 )
        var_21 = _unknown_103F( self._ID822 );

    if ( var_19 == 4 && _func_02F( var_21 ) )
    {
        var_22 = _func_02F( var_14 );

        if ( var_21 == "cover_corner_l" && var_16 < -10 && !var_22 || _func_02F( var_15[2] ) )
            var_19 = 2;
        else if ( var_21 == "cover_corner_r" && var_16 > 10 && !var_22 || _func_02F( var_15[6] ) )
            var_19 = 6;
    }

    if ( !_func_02F( var_15[var_19] ) )
    {
        var_13 = "idle_to_forward";
        var_15 = _unknown_0C50( var_13 );
        var_4 = 1;
    }

    var_23 = _func_1A5();

    if ( var_4 )
    {
        var_24 = _unknown_0C64( "idle_turn" );

        if ( !_func_02F( var_24[var_19] ) )
        {
            var_25 = 0;

            for ( var_26 = 8; !_func_02F( var_15[var_25] ) && var_25 < 8; var_25++ )
            {

            }

            while ( !_func_02F( var_15[var_26] ) && var_26 > 0 )
                var_26--;

            if ( var_19 < var_25 )
                var_19 = var_25;
            else if ( var_19 > var_26 )
                var_19 = var_26;
        }

        var_23._ID22723 = var_24[var_19];
        var_19 = 4;
    }

    if ( _func_02F( var_15[var_19] ) && _func_02F( var_15[var_19][var_20] ) )
    {
        var_23._ID22721 = var_15[var_19][var_20];

        if ( var_3 )
        {
            var_15 = _unknown_0CDA( var_13 + "_angleDelta" );
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
    thread _unknown_0F08();

    if ( _func_02F( self._ID10998 ) && self._ID10998 )
        return;

    self._ID36905._ID3369 = self._ID762;

    if ( _func_02F( self _meth_81A9() ) )
        return;

    var_0 = animscripts\cover_arrival::_ID16131();

    if ( _func_02F( var_0 ) && _unknown_139F( var_0 ) )
        thread _unknown_0F73();
    else
        thread _unknown_0F68();
}

_ID36941()
{
    self endon( "killanimscript" );
    self endon( "swim_killrestartlistener" );
    self waittill( "path_set" );
    var_0 = _func_02F( self._ID762 ) && _func_02F( self._ID36905._ID3369 ) && _func_0F5( self._ID762, self._ID36905._ID3369 ) < 4;

    if ( var_0 )
    {
        thread _unknown_0F7A();
        return;
    }

    _unknown_0F95();
    _unknown_0F6B();
}

_ID36916()
{
    self notify( "swim_cancelapproach" );
    self._ID1044 = 0;
}

_ID36979( var_0, var_1 )
{
    self endon( "swim_cancelwaitforapproachpos" );
    var_2 = var_1 + 60 * var_1 + 60;
    var_3 = _func_0F5( var_0, self._ID740 );

    if ( var_3 <= var_2 )
        return;

    self._ID1044 = var_2;
    self waittill( "stop_soon" );
    self._ID1044 = 0;
}

_ID36912()
{
    self endon( "killanimscript" );
    self endon( "swim_cancelapproach" );
    self endon( "move_interrupt" );
    self endon( "swim_killrestartlistener" );

    if ( !_func_02F( self._ID762 ) )
        return;

    var_0 = _unknown_1204( "arrival_exposed" );
    _unknown_0FFF( self._ID762, var_0 );
    _unknown_1053();
}

_ID36911()
{
    self endon( "killanimscript" );
    self endon( "swim_cancelapproach" );
    self endon( "swim_killrestartlistener" );
    var_0 = animscripts\cover_arrival::_ID16131();
    self._ID3263 = _unknown_1258( var_0 );
    self._ID875 = 1;
    self waittill( "cover_approach",  var_1  );
    var_0 = animscripts\cover_arrival::_ID16131();
    var_2 = _unknown_1270( var_0 );

    if ( var_2 == "exposed" )
    {
        if ( _func_02F( var_0 ) )
            var_3 = var_0._ID740;
        else
            var_3 = self._ID762;

        var_4 = var_3 - self._ID740;
        var_5 = _func_11A( var_4 );
        var_6 = ( 0, var_5[1], 0 );
        var_7 = ( 0, var_5[1], 0 );
    }
    else
    {
        var_3 = var_0._ID740;
        var_6 = _unknown_12D1( var_0 );

        if ( animscripts\utility::_ID20915() )
            var_7 = animscripts\utility::_ID16702( var_0 );
        else
            var_7 = var_0._ID65;
    }

    thread _unknown_113B( var_2, var_3, var_1, var_7, var_6 );
}

_ID36924()
{
    var_0 = animscripts\cover_arrival::_ID16131();
    var_1 = self._ID762;
    var_2 = ( 0, self._ID65[1], self._ID65[2] );

    if ( _func_02F( var_0 ) && var_0._ID1244 != "Path" && var_0._ID1244 != "Path 3D" )
        var_2 = _unknown_1325( var_0 );
    else if ( animscripts\cover_arrival::_ID13755() )
        var_2 = _func_11A( self._ID322._ID740 - var_1 );

    var_3 = _func_119( var_1 - self._ID740 );

    if ( _func_02F( var_0 ) && _unknown_1544( var_0 ) )
    {
        var_4 = _unknown_1335( var_0 );
        var_5 = _unknown_1357( var_0 );
        var_2 = var_0._ID65;

        if ( animscripts\utility::_ID20915() )
            var_2 = animscripts\utility::_ID16702( var_0 );

        thread _unknown_11C1( var_4, var_0._ID740, var_3, var_2, var_5 );
        return;
    }

    thread _unknown_11CD( "exposed", var_1, var_3, var_2, var_2 );
}

_ID36922( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( animscripts\utility::_ID20915() )
    {
        var_6 = ( 0, 0, 0 );
        var_7 = ( 0, 0, 0 );
        var_8 = _func_121( _func_25B( var_4 ), var_5 );
        var_9 = _func_25C( _func_119( self._ID740 - var_2 ), var_4 ) * -1.0;
        var_10 = _unknown_12FC( var_0, var_1, var_6, var_9, var_7, var_8, 1, var_2, var_4 );

        if ( var_10 )
            var_0._ID22725 = _func_123( var_0._ID22725, var_4 ) + var_2;

        return var_10;
    }
    else
        return _unknown_131A( var_0, var_1, var_2, var_3, var_4, var_5, 0 );
}

_ID36923( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "killanimscript" );
    self endon( "swim_cancelapproach" );
    self._ID3263 = var_0;
    var_5 = _func_1A5();

    if ( !_unknown_1238( var_5, var_0, var_1, var_2, var_3, var_4 ) )
        return;

    var_6 = _func_11F( self._ID65 );
    var_7 = var_5._ID22725 - self._ID740;
    var_8 = _func_0F6( var_7 );
    var_7 /= var_8;

    if ( animscripts\utility::_ID20915() )
    {
        var_9 = var_1 - var_5._ID22725;
        var_10 = _func_0F6( var_9 );
        var_11 = _func_0FB( var_7, var_6 );

        if ( var_8 > var_10 * 0.4 && _func_0FB( var_7, var_6 ) < 0.5 )
        {
            self notify( "force_space_rotation_update",  0, 0  );
            return;
        }
    }
    else if ( var_8 < 100 && _func_0FB( var_7, var_6 ) < 0.5 )
        return;

    if ( var_8 > 4 )
    {
        if ( var_8 < 12 || self._ID381 || !_func_02F( self._ID700 ) || !animscripts\cover_arrival::_ID20951() )
        {
            self._ID36905._ID3369 = var_5._ID22725;
            self _meth_816A( var_5._ID22725 );

            if ( animscripts\utility::_ID20915() )
            {
                var_12 = 16384;

                for (;;)
                {
                    if ( _func_0F5( self._ID740, var_5._ID22725 ) < var_12 )
                    {
                        self._ID28541 = self._ID1230;
                        self._ID1230 = 0.1;
                        var_13 = _func_25D( var_5._ID22722, var_5._ID22720, var_1, var_4 );
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
    var_14 = _func_119( var_1 - self._ID740 );

    if ( !_unknown_132E( var_5, var_0, var_1, var_14, var_3, var_4 ) )
        return;

    self._ID36905._ID3366 = var_5._ID22721;

    if ( animscripts\utility::_ID20915() )
        var_15 = self _meth_81F4( var_5._ID22725, var_4[1] - var_5._ID22720[1], var_4[0] - var_5._ID22720[0], var_4, var_5._ID22720 );
    else
        self _meth_81F4( var_5._ID22725, var_4[1] - var_5._ID22720[1], var_4[0] - var_5._ID22720[0] );
}

_ID36920()
{
    self endon( "killanimscript" );
    self endon( "abort_approach" );
    var_0 = "arrival_" + self._ID3263;
    var_1 = self._ID36905._ID3366;

    if ( !self._ID381 )
        thread animscripts\cover_arrival::_ID1729();

    var_2 = 0.4;

    if ( animscripts\utility::_ID20915() )
    {
        var_2 = 0.2;
        thread _unknown_148E();
    }

    self _meth_814C( %body, 0.2 );
    self _meth_811C( "coverArrival", var_1, 1, var_2, self._ID24474 );
    animscripts\shared::_ID11529( "coverArrival", ::_unknown_1586 );

    if ( !_func_068( var_1, "start_aim" ) )
        _unknown_1592();

    self._ID7._ID28253 = "stand";
    self._ID7._ID24414 = "stop";
    self._ID7._ID3372 = self._ID3263;

    if ( animscripts\utility::_ID20915() )
    {
        self._ID1230 = 0.16;
        self._ID28541 = undefined;
    }

    self _meth_814C( %animscript_root, 0.3 );
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
    self._ID1230 = 5.0;
}

_ID36929( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_4 )
    {
        var_5 = _func_25D( var_2, var_3, var_0, var_1 );
        return var_5[0];
    }

    var_6 = var_1 - var_3;
    var_7 = _func_11F( var_6 );
    var_8 = _func_11E( var_6 );
    var_9 = _func_11D( var_6 );
    var_10 = var_7 * var_2[0];
    var_11 = var_8 * var_2[1];
    var_12 = var_9 * var_2[2];
    return var_0 - var_10 + var_11 - var_12;
}

_ID36935( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_2 )
    {
        var_1 = _func_123( var_1, var_4 ) + var_3;
        return self _meth_81D0( var_3, var_1, 0, 1 );
    }

    return self _meth_81D0( var_0, var_1, 0, 1 );
}

_ID36921( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    if ( _func_0F8( var_3 ) < 0.003 )
        return 0;

    var_9 = _func_11A( var_3 );

    if ( var_1 == "exposed" )
    {
        var_10 = 4;
        var_11 = 4;
    }
    else
    {
        var_12 = _func_0F0( var_4[1] - var_9[1] );
        var_10 = _unknown_167E( var_12 );
        var_11 = _unknown_1686( var_12, 25 );
    }

    var_13 = _func_0F0( var_4[0] - var_9[0] );
    var_14 = _unknown_1696( var_13 );
    var_15 = _unknown_169E( var_13, 25 );
    var_16 = "arrival_" + var_1;

    if ( var_1 == "exposed" && !animscripts\utility::_ID20775( 0 ) )
        var_16 += "_noncombat";

    var_17 = _unknown_12AB( var_16 );

    if ( !_func_02F( var_17[var_10] ) || !_func_02F( var_17[var_10][var_14] ) )
        return 0;

    var_18 = var_10 != var_11 || var_14 != var_15 && _func_02F( var_17[var_11] ) && _func_02F( var_17[var_11][var_15] );
    var_19 = 0;
    var_20 = 0;
    var_21 = undefined;
    var_22 = var_17[var_10][var_14];

    if ( var_18 )
        var_21 = var_17[var_11][var_15];

    var_23 = var_16 + "_delta";
    var_17 = _unknown_12FE( var_23 );
    var_24 = var_17[var_10][var_14];

    if ( var_18 )
        var_19 = var_17[var_11][var_15];

    var_25 = var_16 + "_angleDelta";
    var_17 = _unknown_131D( var_25 );
    var_26 = var_17[var_10][var_14];

    if ( var_18 )
        var_20 = var_17[var_11][var_15];

    var_27 = _unknown_16B8( var_2, var_5, var_24, var_26, var_6 );

    if ( !_unknown_16D9( var_2, var_27, var_6, var_7, var_8 ) && var_18 && !animscripts\utility::_ID20915() )
    {
        var_22 = var_21;
        var_24 = var_19;
        var_26 = var_20;
        var_27 = _unknown_16E5( var_2, var_5, var_24, var_26, var_6 );

        if ( !_unknown_1705( var_2, var_27, var_6, var_7, var_8 ) )
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
    if ( !_func_02F( var_1 ) )
        var_1 = 10;

    if ( var_0 < 0 )
        return _func_0C1( _func_0E8( 180 + var_0 - var_1 / 45 ) );
    else
        return _func_0C1( _func_0E7( 180 + var_0 + var_1 / 45 ) );
}

_ID36931( var_0 )
{
    var_1 = anim._ID3277["soldier"]["swim"][var_0]["maxDelta"];

    if ( _func_02F( self._ID3152 ) && self._ID3152 != "soldier" )
    {
        if ( _func_02F( anim._ID3277[self._ID3152]["swim"] ) && _func_02F( anim._ID3277[self._ID3152]["swim"][var_0] ) )
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

    _unknown_1883();
}

_ID36930( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return "exposed";

    var_1 = var_0._ID1244;

    if ( !_func_02F( var_1 ) )
        return "exposed";

    switch ( var_1 )
    {

    }

    case "Path 3D":
    case "Cover Right 3D":
    case "Exposed 3D":
    case "Cover Left 3D":
    case "Cover Up 3D":
    default:
}

_ID16461( var_0 )
{
    if ( _func_03A( "player_spaceEnabled" ) == 1 )
    {
        var_1 = animscripts\utility::_ID16702( var_0 );

        if ( animscripts\utility::_ID20830( var_0 ) )
        {
            var_2 = _unknown_14B4( "arrival_cover_corner_l_angleDelta" );
            var_3 = var_2[4][4][1];
        }
        else if ( animscripts\utility::_ID20833( var_0 ) )
        {
            var_2 = _unknown_14D4( "arrival_cover_corner_r_angleDelta" );
            var_3 = var_2[4][4][1];
        }
        else
            var_3 = 0;

        var_1 = _func_121( var_1, ( 0, var_3, 0 ) );
        return var_1;
    }
    else
        var_1 = var_0._ID65;

    var_4 = var_1[1];

    if ( animscripts\utility::_ID20830( var_0 ) )
    {
        var_2 = _unknown_150C( "arrival_cover_corner_l_angleDelta" );
        var_4 += var_2[4][4][1];
    }
    else if ( animscripts\utility::_ID20833( var_0 ) )
    {
        var_2 = _unknown_152C( "arrival_cover_corner_r_angleDelta" );
        var_4 += var_2[4][4][1];
    }

    var_1 = ( var_1[0], var_4, var_1[2] );
    return var_1;
}

_ID36925()
{
    if ( self._ID36905._ID24449 != "combat_strafe" )
        _unknown_149F( "combat_strafe" );

    var_0 = _unknown_1560( "forward_aim" );
    self _meth_815D( "swimanim", var_0, 1, 0.1, 1, 1 );
    thread _unknown_1A36();
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
        if ( self._ID373 )
        {
            if ( !var_0 )
            {
                _unknown_1ACA( 1.0, 0.0, 0.0, 0.0 );
                _unknown_1B8E( 0, 0, 0, 0 );
            }
        }
        else
        {
            if ( self._ID866 == 1 )
            {
                var_1 = [];
                var_1["front"] = 1;
                var_1["back"] = 0;
                var_1["left"] = 0;
                var_1["right"] = 0;
            }
            else
                var_1 = animscripts\utility::_ID28805( self _meth_819C() );

            if ( _func_02F( self._ID39629 ) )
            {
                var_1["back"] = 0.0;

                if ( var_1["front"] < 0.2 )
                    var_1["front"] = 0.2;
            }

            var_2 = _unknown_1B41( var_1["front"], var_1["back"], var_1["left"], var_1["right"] );
            _unknown_1B6D( var_2 );
            _unknown_1BD9();
        }

        var_0 = self._ID373;
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
    var_4 = _unknown_1B6D();
    self _meth_8155( %combatrun_forward, var_0, var_4, 1, 1 );
    self _meth_8155( %combatrun_backward, var_1, var_4, 1, 1 );
    self _meth_8155( %combatrun_left, var_2, var_4, 1, 1 );
    self _meth_8155( %combatrun_right, var_3, var_4, 1, 1 );

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

    }

    case "back":
    case "right":
    case "front":
    case "left":
    default:
}

_ID36977()
{
    var_0 = self._ID65[1];
    var_1 = self._ID65[0];
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    var_6 = 45;
    var_7 = 60;

    if ( _func_02F( self._ID322 ) )
    {
        var_8 = self._ID322._ID740 - self._ID740;
        var_9 = _func_11A( var_8 );
        var_10 = _func_0F0( var_9[1] - var_0 );
        var_11 = _func_0F0( var_9[0] - var_1 );

        if ( var_10 > 0 )
            var_4 = _func_0EE( 1 - var_6 - var_10 / var_6, 0, 1 );
        else
            var_5 = _func_0EE( 1 - var_6 + var_10 / var_6, 0, 1 );

        if ( var_11 > 0 )
            var_3 = _func_0EE( 1 - var_7 - var_11 / var_7, 0, 1 );
        else
            var_2 = _func_0EE( 1 - var_7 + var_11 / var_7, 0, 1 );
    }

    _unknown_1E5D( var_2, var_3, var_4, var_5 );
}

_ID36965( var_0, var_1, var_2, var_3 )
{
    self _meth_8155( %w_aim_4, var_2, 0.2, 1, 1 );
    self _meth_8155( %w_aim_6, var_3, 0.2, 1, 1 );
    self _meth_8155( %w_aim_8, var_0, 0.2, 1, 1 );
    self _meth_8155( %w_aim_2, var_1, 0.2, 1, 1 );
}

_ID36940( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _unknown_18F8( "turn" );
    var_5 = _unknown_1D15( var_0 );
    var_6 = _unknown_1D1B( var_1 );

    if ( _func_02F( var_4[var_5] ) )
        var_2 = var_4[var_5][var_6];

    if ( var_5 == 4 )
    {
        if ( var_6 > 4 && _func_02F( var_4[4][var_6 + 1] ) )
            var_2 = var_4[4][var_6 + 1];
        else if ( var_6 < 4 && var_6 > 0 && _func_02F( var_4[4][var_6 - 1] ) )
            var_2 = var_4[4][var_6 - 1];
    }

    if ( !_func_02F( var_2 ) )
        var_2 = var_4[var_5][4];

    if ( _func_02F( var_2 ) )
    {
        if ( animscripts\move::_ID26327( var_2 ) )
            return var_2;
    }

    return undefined;
}

_ID36918()
{
    _unknown_1890( "nostate" );
}

_ID36976()
{
    var_0 = _func_0EE( self._ID587 / 20.0, -1, 1 );

    if ( var_0 > 0 )
    {
        if ( self._ID28526 <= 0 && var_0 < 0.075 )
            var_0 = 0;

        self _meth_8155( %add_turn_l, var_0, 0.2, 1, 1 );
        self _meth_8155( %add_turn_r, 0.0, 0.2, 1, 1 );
    }
    else
    {
        if ( self._ID28526 >= 0 && var_0 > -0.075 )
            var_0 = 0;

        self _meth_8155( %add_turn_l, 0, 0.2, 1, 1 );
        self _meth_8155( %add_turn_r, 0 - var_0, 0.2, 1, 1 );
    }

    self._ID28526 = var_0;
    var_0 = _func_0EE( self._ID788 / 25.0, -1, 1 );

    if ( var_0 > 0 )
    {
        if ( self._ID28525 <= 0 && var_0 < 0.075 )
            var_0 = 0;

        self _meth_8155( %add_turn_d, var_0, 0.2, 1, 1 );
        self _meth_8155( %add_turn_u, 0.0, 0.2, 1, 1 );
    }
    else
    {
        if ( self._ID28525 >= 0 && var_0 > -0.075 )
            var_0 = 0;

        self _meth_8155( %add_turn_d, 0, 0.2, 1, 1 );
        self _meth_8155( %add_turn_u, 0 - var_0, 0.2, 1, 1 );
    }

    self._ID28525 = var_0;
}

_ID36934( var_0 )
{
    switch ( var_0._ID1244 )
    {

    }

    return 0;
    case "Exposed 3D":
    case "Cover Right 3D":
    case "Cover Left 3D":
    case "Cover Up 3D":
}

_ID34999()
{
    return 0.16;
}

_ID35000()
{
    return 0.1;
}
