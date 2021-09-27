// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19595()
{
    var_0 = [];
    var_0["fire"] = %exposed_shoot_auto_v3;
    var_0["single"] = [ %exposed_shoot_semi1 ];
    var_0["single_shotgun"] = [ %shotgun_stand_fire_1a, %shotgun_stand_fire_1b ];
    var_0["burst2"] = %exposed_shoot_burst3;
    var_0["burst3"] = %exposed_shoot_burst3;
    var_0["burst4"] = %exposed_shoot_burst4;
    var_0["burst5"] = %exposed_shoot_burst5;
    var_0["burst6"] = %exposed_shoot_burst6;
    var_0["semi2"] = %exposed_shoot_semi2;
    var_0["semi3"] = %exposed_shoot_semi3;
    var_0["semi4"] = %exposed_shoot_semi4;
    var_0["semi5"] = %exposed_shoot_semi5;
    anim._ID3277["soldier"]["shoot_while_moving"] = var_0;
    var_0 = [];
    var_0["shuffle_start_from_cover_left"] = %cornercrl_alert_2_shuffle;
    var_0["shuffle_start_from_cover_right"] = %cornercrr_alert_2_shuffle;
    var_0["shuffle_start_left"] = %covercrouch_hide_2_shufflel;
    var_0["shuffle_start_right"] = %covercrouch_hide_2_shuffler;
    var_0["shuffle_to_cover_left"] = %covercrouch_shufflel;
    var_0["shuffle_end_to_cover_left"] = %h2_cornercrl_shuffle_2_alert;
    var_0["shuffle_to_cover_right"] = %covercrouch_shuffler;
    var_0["shuffle_end_to_cover_right"] = %cornercrr_shuffle_2_alert;
    var_0["shuffle_start_left_stand_to_stand"] = %coverstand_hide_2_shufflel;
    var_0["shuffle_left_stand_to_stand"] = %coverstand_shufflel;
    var_0["shuffle_end_left_stand_to_stand"] = %coverstand_shufflel_2_hide;
    var_0["shuffle_start_right_stand_to_stand"] = %coverstand_hide_2_shuffler;
    var_0["shuffle_right_stand_to_stand"] = %coverstand_shuffler;
    var_0["shuffle_end_right_stand_to_stand"] = %coverstand_shuffler_2_hide;
    var_0["shuffle_to_left_crouch"] = %covercrouch_shufflel;
    var_0["shuffle_end_to_left_stand"] = %coverstand_shufflel_2_hide;
    var_0["shuffle_end_to_left_crouch"] = %covercrouch_shufflel_2_hide;
    var_0["shuffle_to_right_crouch"] = %covercrouch_shuffler;
    var_0["shuffle_end_to_right_stand"] = %coverstand_shuffler_2_hide;
    var_0["shuffle_end_to_right_crouch"] = %covercrouch_shuffler_2_hide;
    anim._ID3277["soldier"]["shuffle"] = var_0;
}

_ID19631()
{
    var_0 = [];
    var_0["fire"] = %smg_exposed_shoot_auto_v3;
    var_0["single"] = [ %smg_exposed_shoot_semi1 ];
    var_0["single_shotgun"] = [ %shotgun_stand_fire_1a, %shotgun_stand_fire_1b ];
    var_0["burst2"] = %smg_exposed_shoot_burst3;
    var_0["burst3"] = %smg_exposed_shoot_burst3;
    var_0["burst4"] = %smg_exposed_shoot_burst4;
    var_0["burst5"] = %smg_exposed_shoot_burst5;
    var_0["burst6"] = %smg_exposed_shoot_burst6;
    var_0["semi2"] = %smg_exposed_shoot_semi2;
    var_0["semi3"] = %smg_exposed_shoot_semi3;
    var_0["semi4"] = %smg_exposed_shoot_semi4;
    var_0["semi5"] = %smg_exposed_shoot_semi5;
    anim._ID3277["soldier"]["smg_shoot_while_moving"] = var_0;
}

_ID616()
{
    if ( _func_02F( self._ID9526 ) )
    {
        if ( _func_02F( self._ID9526["move"] ) )
        {
            [[ self._ID9526["move"] ]]();
            return;
        }
    }

    self endon( "killanimscript" );
    [[ self._ID13288["move"] ]]();
    var_0 = ::_unknown_051B;

    if ( _func_02F( self._ID26331 ) )
        var_0 = self._ID26331;

    self thread [[ var_0 ]]();
    self._ID46487 = undefined;
    self._ID45835 = undefined;
    _unknown_03C8();
    _unknown_03D2();
    animscripts\utility::_ID19930( "move" );
    var_1 = _unknown_0400();

    if ( var_1 && _func_02F( self._ID34122 ) )
    {
        _unknown_0550();
        _unknown_0A5B();
        _unknown_0B10();
    }
    else if ( _func_02F( self._ID4912 ) && self._ID4912 )
    {
        var_2 = var_1;
        _unknown_044D( var_2 );
        animscripts\battlechatter::_ID27185();
    }

    if ( animscripts\stairs_utility::_ID48439() )
        thread animscripts\stairs_utility::_ID48637();

    thread _unknown_08D9();
    var_3 = animscripts\utility::_ID49393();

    if ( var_3 )
        thread _unknown_0C3A();

    animscripts\exit_node::_ID36145();
    self._ID11499 = undefined;
    self._ID19386 = undefined;
    _unknown_0598();
    thread _unknown_0571();

    if ( var_3 )
        self notify( "StartListeningForCoverApproach" );
    else
        _unknown_0C5B();

    self._ID33770 = undefined;
    self._ID2421 = undefined;
    self._ID30425 = undefined;

    if ( !_func_02F( self._ID44480 ) )
        self._ID44480 = 1;

    _unknown_04AE( 1 );
}

_ID319()
{
    if ( _func_02F( self._ID25556 ) )
    {
        self._ID470 = self._ID25556;
        self._ID25556 = undefined;
    }

    if ( _func_02F( self.custommovetransitionendscript ) )
    {
        [[ self.custommovetransitionendscript ]]();
        self.custommovetransitionendscript = undefined;
    }

    self._ID37364 = undefined;
    self._ID23677 = undefined;
    self._ID19386 = undefined;
    self._ID34122 = undefined;
    self._ID34124 = undefined;
    self._ID30425 = undefined;
    self._ID29054 = undefined;
    self._ID29708 = undefined;
    self._ID9494 = undefined;
    self._ID24409 = undefined;
    animscripts\run::_ID32784( 0 );

    if ( self._ID1063 )
        animscripts\swim::_ID36937();

    self _meth_814C( %head, 0.2 );
    self._ID13770 = undefined;
}

_ID24406()
{
    self._ID29054 = undefined;
    self._ID29708 = undefined;
    self._ID39628 = undefined;
    self._ID39629 = undefined;
    self._ID30429 = 0;
    self._ID3371 = undefined;
}

_ID16717( var_0 )
{
    if ( self._ID7._ID28253 == "prone" )
    {
        var_1 = animscripts\utility::_ID7496( "stand" );

        if ( var_1 != "prone" )
        {
            self _meth_819B( "face current" );
            self _meth_819A( "zonly_physics", 0 );
            var_2 = 1;

            if ( _func_02F( self._ID458 ) )
                var_2 = 2;

            animscripts\cover_prone::_ID28718( var_1, var_2, var_0 );
            self _meth_819A( "none", 0 );
            self _meth_819B( "face default" );
            self notify( "stop_move_anim_update" );
            self._ID7._ID24414 = "stop";
            self._ID39628 = undefined;
        }
    }
}

_ID41426()
{
    switch ( self._ID823 )
    {

    }

    return 0;
    case "concealment_stand":
    case "concealment_prone":
    case "concealment_crouch":
    case "cover_wide_right":
    case "cover_wide_left":
    case "cover_swim_right":
    case "cover_swim_left":
    case "cover_multi":
    case "cover_prone":
    case "cover_right":
    case "cover_left":
    case "cover_stand":
    case "hide":
    case "turret":
    case "cover_crouch":
}

_ID24448( var_0 )
{
    if ( self._ID675 == "run" )
        animscripts\battlechatter_ai::_ID13240( var_0 );
}

_ID24410( var_0 )
{
    _unknown_0637( var_0 );
    self notify( "abort_reload" );
}

_ID3275()
{
    if ( _func_02F( self._ID3152 ) && self._ID3152 != self._ID28529 )
        return 1;
    else if ( !_func_02F( self._ID3152 ) && self._ID28529 != "none" )
        return 1;

    return 0;
}

_ID39743( var_0 )
{
    if ( var_0 != self._ID28530 || _unknown_063C() )
    {
        if ( _func_02F( self._ID9574 ) && _func_02F( self._ID9574[var_0] ) )
            self._ID7._ID24390 = self._ID9574[var_0];
        else
        {
            self._ID7._ID24390 = animscripts\utility::_ID22631( var_0 );

            if ( self._ID199 == "ambush" || self._ID199 == "ambush_nodes_only" && _func_02F( self._ID762 ) && _func_0F5( self._ID740, self._ID762 ) > _func_0ED( 100 ) )
            {
                self._ID34146 = 1;
                animscripts\animset::_ID32189();
            }
            else
                self._ID34146 = 1.35;
        }

        self._ID28530 = var_0;

        if ( _func_02F( self._ID3152 ) )
            self._ID28529 = self._ID3152;
    }
}

_ID24411( var_0 )
{
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    var_1 = self _meth_8159( %walk_and_run_loops );
    self._ID7._ID30423 = _func_0B7( 10000 );
    self._ID28530 = "none";
    self._ID28529 = "none";
    self._ID24408 = undefined;

    for (;;)
    {
        var_2 = self _meth_8159( %walk_and_run_loops );

        if ( var_2 < var_1 )
            self._ID7._ID30423++;

        var_1 = var_2;
        var_3 = self._ID675;

        if ( _func_02F( self._ID52882 ) )
            var_3 = self._ID52882;

        _unknown_071E( var_3 );

        if ( _func_02F( self._ID24413 ) )
            self [[ self._ID24413 ]]( var_3 );
        else
            _unknown_0791( var_3 );

        if ( _func_02F( self._ID24408 ) )
        {
            self [[ self._ID24408 ]]();
            self._ID24408 = undefined;
        }

        self notify( "abort_reload" );
    }
}

_ID29416( var_0 )
{
    self._ID28152 = var_0;
}

_ID7888()
{
    self._ID28152 = undefined;
}

_ID24412( var_0 )
{
    self endon( "move_loop_restart" );
    animscripts\face::_ID32659( anim._ID2517 );

    if ( animscripts\run::_ID24329() )
        return;

    if ( _func_02F( self._ID24409 ) )
        self [[ self._ID24409 ]]();
    else if ( _func_02F( self._ID28152 ) )
        self [[ self._ID28152 ]]();
    else if ( animscripts\utility::_ID33934() )
        animscripts\cqb::_ID24399();
    else if ( self._ID1063 )
        animscripts\swim::_ID24451();
    else if ( var_0 == "run" )
        animscripts\run::_ID24435();
    else
        animscripts\walk::_ID24479();

    self._ID29708 = undefined;
}

_ID23140()
{
    if ( self._ID1302 == "none" )
        return 0;

    if ( _func_02F( self._ID23165 ) && self._ID23165 )
    {
        if ( self._ID675 == "run" )
            return 0;
    }

    var_0 = _func_1BE( self._ID1302 );

    if ( !animscripts\utility::_ID39992() )
        return 0;

    if ( animscripts\combat_utility::_ID20910() )
    {
        if ( !animscripts\utility::_ID20716() && self._ID373 )
            return 0;
    }

    if ( _func_02F( self._ID11582 ) )
        return 0;

    return 1;
}

_ID33822()
{
    self endon( "killanimscript" );
    self notify( "doing_shootWhileMoving" );
    self endon( "doing_shootWhileMoving" );
    var_0 = animscripts\utility::_ID22631( "shoot_while_moving" );

    if ( animscripts\utility::_ID39998() )
        var_0 = animscripts\utility::_ID22631( "smg_shoot_while_moving" );

    if ( _func_02F( var_0 ) )
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            self._ID7._ID3291[var_3] = var_2;
        }

        var_clear_2
    }

    if ( _func_02F( self._ID8374 ) && _func_02F( self._ID8374["fire"] ) )
        self._ID7._ID3291["fire"] = self._ID8374["fire"];

    if ( _func_02F( self._ID1302 ) && animscripts\utility::_ID41682() )
        self._ID7._ID3291["single"] = animscripts\utility::_ID22630( "shotgun_stand", "single" );

    for (;;)
    {
        if ( !self._ID6323 )
        {
            if ( animscripts\utility::_ID20717() )
            {
                self._ID2939 = 0;
                animscripts\combat_utility::_ID7345();
            }

            if ( !self._ID6323 )
            {
                wait 0.5;
                continue;
            }
        }

        animscripts\combat_utility::_ID33818();
        self _meth_814C( %exposed_aiming, 0.2 );
    }
}

_ID36163()
{
    self endon( "killanimscript" );
    wait 0.05;
    thread _unknown_0DD5();

    if ( _func_03A( "ai_canMeleeWhilstMoving", 1 ) )
        thread _unknown_0DCC();

    thread animscripts\door::_ID19529();
    thread animscripts\door::_ID11621();
    thread _unknown_0A50();
}

_ID29843( var_0 )
{
    self endon( "killanimscript" );

    if ( !var_0 )
    {
        animscripts\exit_node::_ID36145();

        if ( _func_02F( self._ID24409 ) )
        {
            if ( _func_02F( self._ID24408 ) )
                self [[ self._ID24408 ]]();

            self._ID24408 = undefined;
            self._ID24409 = undefined;
        }
    }

    self._ID19386 = undefined;
    self _meth_814C( %animscript_root, 0.1 );
    self _meth_819B( "face default" );
    self _meth_819A( "none", 0 );
    self._ID875 = 1;
    _unknown_0938( !var_0 );
}

_ID48930()
{
    self._ID54393 = 1;
    self notify( "ready_for_path_change" );
}

_ID51451()
{
    self._ID48871 = 1;
}

_ID26332()
{
    self endon( "killanimscript" );
    self endon( "move_interrupt" );

    if ( _func_02F( level._ID49070 ) && !level._ID49070 )
        return;

    self._ID54393 = 0;
    self._ID48871 = _func_03A( "ai_turnAnim_handleEarlyNotifies", 1 ) == 0;
    self._ID1229 = 0;

    for (;;)
    {
        self waittill( "path_changed",  var_2, var_1, var_0  );

        if ( !self._ID54393 )
        {
            if ( self._ID48871 )
                continue;

            self waittill( "ready_for_path_change" );

            if ( self._ID48871 )
                continue;
        }

        if ( _func_02F( self._ID19386 ) || _func_02F( self._ID25154 ) )
            continue;

        if ( _func_02F( var_0 ) && var_0 )
            continue;

        if ( !self._ID373 && !self _meth_819D() )
        {
            if ( !_func_02F( self._ID23165 ) )
                continue;
        }

        if ( self._ID7._ID28253 != "stand" )
            continue;

        self notify( "stop_move_anim_update" );
        self._ID39628 = undefined;
        var_3 = _func_11A( var_1 );
        var_4 = _func_0F0( self._ID65[1] - var_3[1] );
        var_5 = _func_0F0( self._ID65[0] - var_3[0] );
        var_6 = _unknown_0C4E( var_4, var_5 );

        if ( _func_02F( var_6 ) )
        {
            self._ID39216 = var_6;
            self._ID39230 = _func_03D();
            self._ID24409 = ::_unknown_0D14;
            self notify( "move_loop_restart" );
            animscripts\run::_ID12640();
        }
    }
}

_ID48814()
{
    self endon( "killanimscript" );
    self endon( "move_interrupt" );

    for (;;)
    {
        self waittill( "facemotion_changed" );

        if ( self._ID7._ID28253 != "stand" )
            continue;

        if ( self._ID373 )
        {
            if ( self _meth_815A( %combatrun_backward ) > 0.1 )
            {
                self notify( "stop_move_anim_update" );
                self._ID39628 = undefined;
                self._ID24409 = ::_unknown_0DE4;
                self notify( "move_loop_restart" );
                animscripts\run::_ID12640();
            }
        }
    }
}

movecycle_isleftfootdown()
{
    var_0 = _func_02F( self._ID45243 ) && self._ID45243;

    if ( _func_02F( self._ID53898 ) && _func_02F( self._ID48124 ) )
    {
        var_1 = self._ID53898 - self._ID48124;

        if ( var_1 > 0 )
        {
            var_2 = _func_03D();
            var_3 = var_2 - self._ID53898;
            var_4 = var_3 / var_1;
            var_0 = _ID42237::_ID37527( var_4 > 0.75, !self._ID45243, self._ID45243 );
        }
    }

    return var_0;
}

_ID51909()
{
    var_0 = 0;

    if ( self._ID1063 )
        var_1 = animscripts\swim::_ID16643( "turn" );
    else if ( animscripts\utility::_ID20961() )
        var_1 = animscripts\utility::_ID22631( "unstable_run_turn" );
    else if ( _func_02F( self._ID51761 ) && self._ID51761 && _ID42338::_ID51421() )
    {
        var_2 = _unknown_0C8D();

        if ( _func_02F( self.patrolset ) )
            var_3 = "_" + self.patrolset;
        else
            var_3 = "";

        if ( var_2 )
        {
            var_1[1] = level._ID30895["generic"]["patrol_turn_l135_rfoot" + var_3];
            var_1[2] = level._ID30895["generic"]["patrol_turn_l90_rfoot" + var_3];
            var_1[3] = level._ID30895["generic"]["patrol_turn_l45_rfoot" + var_3];
            var_1[5] = level._ID30895["generic"]["patrol_turn_r45_rfoot" + var_3];
            var_1[6] = level._ID30895["generic"]["patrol_turn_r90_rfoot" + var_3];
            var_1[7] = level._ID30895["generic"]["patrol_turn_r135_rfoot" + var_3];
        }
        else
        {
            var_1[1] = level._ID30895["generic"]["patrol_turn_l135_lfoot" + var_3];
            var_1[2] = level._ID30895["generic"]["patrol_turn_l90_lfoot" + var_3];
            var_1[3] = level._ID30895["generic"]["patrol_turn_l45_lfoot" + var_3];
            var_1[5] = level._ID30895["generic"]["patrol_turn_r45_lfoot" + var_3];
            var_1[6] = level._ID30895["generic"]["patrol_turn_r90_lfoot" + var_3];
            var_1[7] = level._ID30895["generic"]["patrol_turn_r135_lfoot" + var_3];
        }

        var_0 = 0;
    }
    else if ( self._ID675 == "walk" )
    {
        var_4 = "cqb_turn";
        var_0 = 1;

        if ( _func_02F( self._ID3152 ) && _func_02F( anim._ID3277[self._ID3152]["walk_turn"] ) || _func_02F( anim._ID3277["soldier"]["walk_turn"] ) )
        {
            var_4 = "walk_turn";
            var_0 = 0;
        }

        var_1 = animscripts\utility::_ID22631( var_4 );
    }
    else if ( _func_02F( self._ID3152 ) && self._ID3152 == "riotshield" )
    {
        var_1 = animscripts\utility::_ID22631( "run_turn" );
        var_0 = 0;
    }
    else if ( animscripts\utility::_ID33934() )
    {
        var_1 = animscripts\utility::_ID22631( "cqb_run_turn" );
        var_0 = 1;
    }
    else if ( animscripts\utility::_ID39998() )
        var_1 = animscripts\utility::_ID22631( "smg_run_turn" );
    else
        var_1 = animscripts\utility::_ID22631( "run_turn" );

    var_5["animArray"] = var_1;
    var_5["isCQB"] = var_0;
    return var_5;
}

_ID26330( var_0, var_1 )
{
    if ( _func_02F( self._ID26360 ) )
        return [[ self._ID26360 ]]( var_0, var_1 );

    return _unknown_0EF7( var_0, var_1 );
}

pathchange_getturnanim_impl( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _unknown_0E60();
    var_5 = var_4["animArray"];
    var_6 = var_4["isCQB"];

    if ( animscripts\utility::_ID48067() )
        var_7 = 22.5;
    else
        var_7 = 10;

    if ( var_6 )
        var_8 = animscripts\utility::_ID53635();
    else
        var_8 = animscripts\utility::using_run_tight_turn_20();

    if ( var_0 < 0 )
    {
        if ( !var_8 && var_0 > -45 + var_7 )
            return undefined;
        else if ( var_0 > -32.5 && var_8 )
            var_9 = 9;
        else
            var_9 = _func_0C1( _func_0E8( var_0 + 180 - var_7 / 45 ) );
    }
    else if ( !var_8 && var_0 < 45 - var_7 )
        return undefined;
    else if ( var_0 < 32.5 && var_8 )
        var_9 = 10;
    else
        var_9 = _func_0C1( _func_0E7( var_0 + 180 + var_7 / 45 ) );

    var_1 = var_4[var_8];

    if ( _func_02F( var_1 ) )
    {
        if ( _func_0D3( var_1 ) )
        {
            while ( var_1.size > 0 )
            {
                var_10 = _func_0B7( var_1.size );

                if ( _unknown_1033( var_1[var_10] ) )
                    return var_1[var_10];

                var_1[var_10] = var_1[var_1.size - 1];
                var_1[var_1.size - 1] = undefined;
            }
        }
        else if ( _unknown_1055( var_1 ) )
            return var_1;
    }

    var_11 = -1;

    if ( var_access_10 < -60 )
    {
        var_11 = _func_0C1( _func_0E8( var_access_10 + 180 / 45 ) );

        if ( var_11 == var_8 )
            var_11 = var_8 - 1;
    }
    else if ( var_access_10 > 60 )
    {
        var_11 = _func_0C1( _func_0E7( var_access_10 + 180 / 45 ) );

        if ( var_11 == var_8 )
            var_11 = var_8 + 1;
    }

    if ( var_11 >= 0 && var_11 < 9 )
        var_2 = var_4[var_11];

    if ( _func_02F( var_2 ) )
    {
        if ( _func_0D3( var_2 ) )
            var_2 = var_2[0];

        if ( _unknown_10B7( var_2 ) )
            return var_2;
    }

    return undefined;
}

_ID26327( var_0 )
{
    if ( !_func_02F( self._ID762 ) )
        return 0;

    var_1 = _func_069( var_0, "code_move" );

    if ( var_1.size <= 0 )
    {

    }

    var_2 = var_1[0];
    var_3 = _func_094( var_0, 0, var_2 );
    var_4 = self _meth_81BC( var_3 );

    if ( _func_02F( self._ID3371 ) && _func_0ED( self._ID3371 ) > _func_0F5( self._ID762, var_4 ) )
        return 0;

    var_3 = _func_094( var_0, 0, 1 );
    var_5 = self _meth_81BC( var_3 );
    var_5 = var_4 + _func_119( var_5 - var_4 ) * 20;
    var_6 = !self._ID1063;
    var_7 = self _meth_81D0( var_4, var_5, var_6, 1 );
    var_8 = !animscripts\utility::_ID48067() && _func_03A( "ai_turnAnim_checkFullTrace", 0 );

    if ( !var_7 || !var_8 )
        return var_7;

    var_9 = var_4;
    var_10 = _func_069( var_0, "align" );

    if ( var_10.size > 0 )
    {
        var_3 = _func_094( var_0, 0, var_10[0] );
        var_11 = self _meth_81BC( var_3 );
        var_7 = self _meth_81D0( var_11, var_4, var_6, 1 );

        if ( !var_7 )
            return 0;

        var_9 = var_11;
        jump loc_11A4
    }

    var_7 = self _meth_81D0( self._ID740, var_9, var_6, 1 );
    return var_7;
}

_ID26329()
{
    self endon( "killanimscript" );
    self endon( "should_stairs_transition" );
    self._ID24409 = undefined;
    var_0 = self._ID39216;

    if ( _func_03D() > self._ID39230 + 50 )
        return;

    if ( self._ID1063 )
        self _meth_819A( "nogravity", 0 );
    else
        self _meth_819A( "zonly_physics", 0 );

    var_1 = 0.1;

    if ( _func_02F( self._ID26359 ) )
        var_1 = self._ID26359;

    var_2 = _func_02F( self._ID51761 ) && self._ID51761 && _ID42338::_ID51421();

    if ( var_2 )
        var_1 = 0.5;

    self _meth_814C( %body, var_1 );
    self._ID24408 = ::_unknown_134A;
    self._ID19386 = 1;

    if ( !var_2 )
    {
        var_1 = 0.05;

        if ( self _meth_815A( %cornercrl_trans_out_mf ) > 0.5 )
            var_1 = 0.2;

        if ( _func_02F( self._ID26359 ) )
            var_1 = self._ID26359;
    }

    self notify( "turn_start" );
    self._ID1229 = 1;
    var_3 = self._ID24424;

    if ( _func_02F( self._ID7111 ) && self._ID7111 && self._ID24424 > 1 )
        var_3 = 1 + 0.3 * self._ID24424 - 1;

    self _meth_811C( "turnAnim", var_0, 1, var_1, var_3 );

    if ( animscripts\utility::_ID20915() )
        self _meth_819B( "face angle 3d", self._ID65 );
    else
        self _meth_819B( "face angle", self._ID65[1] );

    if ( _func_02F( self._ID12278 ) )
        childthread _unknown_1388( var_0, 1, "code_move" );

    if ( var_0 == %run_tight_turn_r90 || var_0 == %run_tight_turn_l90 )
        var_4 = 0.3;
    else
        var_4 = 0.1;

    if ( animscripts\stairs_utility::_ID54360() )
        var_5 = 0.2;
    else
        var_5 = 0.05;

    _ID42407::_ID10194( var_5, animscripts\stairs_utility::_ID50503, var_0, 0, var_4, undefined, "inOnly" );
    animscripts\shared::_ID11529( "turnAnim" );
    self._ID1229 = 0;
    self._ID19386 = undefined;
    self _meth_819B( "face motion" );
    self _meth_819A( "none", 0 );
    animscripts\shared::_ID11529( "turnAnim" );
    self notify( "turn_end" );
    self notify( "killThreadCheckStairsTransition" );
}

_ID49710()
{
    self endon( "killanimscript" );
    self endon( "should_stairs_transition" );
    self._ID24409 = undefined;

    if ( _func_02F( self._ID3152 ) && self._ID3152 == "riotshield" )
        var_0 = animscripts\utility::_ID22630( "walkBack2Run", 8 );
    else
        var_0 = %h2_walk_backward_trans_2_run_2;

    self _meth_819A( "zonly_physics", 0 );
    self _meth_814C( %body, 0.1 );
    self._ID24408 = ::_unknown_142D;
    self._ID19386 = 1;
    self _meth_811C( "facemotion_reorient_anim", var_0, 1, 0.05, self._ID24424 );
    self _meth_819B( "face angle", self._ID65[1] );
    animscripts\shared::_ID11529( "facemotion_reorient_anim" );
    self._ID19386 = undefined;
    self _meth_819B( "face motion" );
    self _meth_819A( "none", 0 );
    animscripts\shared::_ID11529( "facemotion_reorient_anim" );
}

_ID48399()
{
    self._ID19386 = undefined;
    self _meth_819B( "face default" );
    var_0 = [[ self._ID7497 ]]();
    var_1 = 0.1;

    if ( var_0 != "stand" )
        var_1 = 0.4;

    self _meth_814C( %animscript_root, var_1 );
    self _meth_819A( "none", 0 );
}

_ID16200()
{
    var_0 = self _meth_84FE();

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( var_0[var_1]["animation"] == %combatrun_forward )
        {
            if ( var_0[var_1 + 1].size > 2 )
            {
                return var_0[var_1 + 1];
                continue;
            }

            return undefined;
        }
    }

    return undefined;
}

_ID22880( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_3 = 45;
    var_4 = _func_069( var_0, var_2 );
    var_5 = self._ID740;
    var_6 = self._ID65;
    var_5 = _func_071( var_5, var_6, var_0 );
    var_6 = _func_072( var_5, var_6, var_0 );
    var_7 = _func_067( var_0 ) * var_4[0];
    var_8 = _func_0C1( _ID42407::_ID30229( var_7 * 20, 0, 0 ) );

    if ( var_8 < 1 )
        return;

    var_9 = 1.0 / var_8;
    var_10 = 0;
    var_11 = self._ID740;

    for (;;)
    {
        var_12 = var_10 * var_9;
        var_13 = 1.0 - var_8 * var_9 - var_12;
        var_10++;

        if ( !_func_02F( self._ID19386 ) && var_1 || var_12 > 1.0 )
            break;

        var_14 = _func_094( var_0, 0, var_12 );
        var_15 = _func_22E( var_0, 0, var_12 );
        var_16 = _func_122( var_5, var_6, ( 0, 0, 0 ), ( 0, 0, 0 ), var_14, var_15 );
        var_17 = var_16["origin"];
        var_18 = var_16["angles"];
        var_19 = self._ID601;
        var_20 = _func_11A( self._ID601 )[1];
        var_21 = var_18[1];
        var_22 = _func_0F0( var_20 - var_21 );
        var_23 = var_22 * var_13;
        var_23 = _func_0C3( _func_0EE( var_23, -1 * var_3, var_3 ) );
        var_19 = _func_11C( _func_11F( var_18 ), self._ID601, var_23 / var_3 * var_13 );
        self _meth_819B( "face direction", var_19 );
        waittillframeend;
    }
}

_ID26328()
{
    self._ID19386 = undefined;
    self._ID1229 = 0;
    self _meth_819B( "face default" );
    var_0 = [[ self._ID7497 ]]();
    var_1 = 0.1;

    if ( var_0 != "stand" )
        var_1 = 0.4;

    self _meth_814C( %animscript_root, var_1 );
    self _meth_819A( "none", 0 );

    if ( self._ID1063 )
        animscripts\swim::_ID36918();
}

_ID11312()
{
    self _meth_81AF( 1 );
    self _meth_819A( "zonly_physics", 0 );
    self _meth_814C( %body, 0.2 );
    self _meth_811C( "dodgeAnim", self._ID9494, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "dodgeAnim" );
    self _meth_819A( "none", 0 );
    self _meth_819B( "face default" );

    if ( _func_02F( self._ID9494 ) && _func_068( self._ID9494, "code_move" ) )
        animscripts\shared::_ID11529( "dodgeAnim" );

    self _meth_814C( %civilian_dodge, 0.2 );
    self _meth_81AF( 0 );
    self._ID9494 = undefined;
    self._ID24409 = undefined;
    return 1;
}

_ID39068( var_0, var_1 )
{
    var_2 = ( self._ID601[1], -1 * self._ID601[0], 0 );
    var_3 = self._ID601 * var_1[0];
    var_4 = var_2 * var_1[1];
    var_5 = self._ID740 + var_3 - var_4;
    self _meth_81AF( 1 );

    if ( self _meth_81CF( var_5 ) )
    {
        self._ID9494 = var_0;
        self._ID24409 = ::_unknown_176D;
        self notify( "move_loop_restart" );
        return 1;
    }

    self _meth_81AF( 0 );
    return 0;
}

_ID3181()
{
    if ( !_func_02F( self._ID11309 ) || !_func_02F( self._ID11313 ) )
        return;

    self endon( "killanimscript" );
    self endon( "move_interrupt" );

    for (;;)
    {
        self waittill( "path_need_dodge",  var_1, var_0  );
        animscripts\utility::_ID39726();

        if ( animscripts\utility::_ID20775() )
        {
            if ( self._ID1244 == "civilian" )
            {
                if ( _func_0F8( self._ID1283 ) < 1 )
                    continue;

                var_2 = self._ID740 + ( 0, 0, 15 );
                var_3 = var_2 + self._ID1283;
                var_4 = _func_06D( var_2, var_3, 1, self, 0, 0, 0, 0, 0, 0, 0, 1 );
                var_5 = var_4["entity"];

                if ( !_func_02F( var_5 ) )
                    continue;
                else if ( !_func_02F( var_5._ID1283 ) )
                    continue;
                else if ( var_5 != level._ID794 && _func_0FB( self._ID1283, var_5._ID1283 ) > 0 )
                    continue;
            }
            else
            {
                self._ID706 = 0;
                return;
            }
        }

        if ( !_func_0D6( var_0 ) )
            continue;

        if ( self._ID1244 == "civilian" && animscripts\utility::_ID20775() )
            self._ID46224 = 1;

        var_6 = _func_119( var_1 - self._ID740 );

        if ( self._ID601[0] * var_6[1] - var_6[0] * self._ID601[1] > 0 )
        {
            if ( !_unknown_1898( self._ID11313, self._ID11314 ) )
                _unknown_18A3( self._ID11309, self._ID11310 );
        }
        else if ( !_unknown_18B0( self._ID11309, self._ID11310 ) )
            _unknown_18BA( self._ID11313, self._ID11314 );

        if ( _func_02F( self._ID9494 ) )
        {
            wait(_func_067( self._ID9494 ));
            continue;
        }

        wait 0.1;
    }
}

_ID32598( var_0, var_1 )
{
    self._ID706 = 1;
    self._ID11309 = var_0;
    self._ID11313 = var_1;
    var_2 = 1;

    if ( _func_068( var_0, "code_move" ) )
        var_2 = _func_069( var_0, "code_move" )[0];

    self._ID11310 = _func_094( var_0, 0, var_2 );
    var_2 = 1;

    if ( _func_068( var_1, "code_move" ) )
        var_2 = _func_069( var_1, "code_move" )[0];

    self._ID11314 = _func_094( var_1, 0, var_2 );
    self._ID525 = 80;
}

_ID7915()
{
    self._ID706 = 0;
    self._ID11309 = undefined;
    self._ID11313 = undefined;
    self._ID11310 = undefined;
    self._ID11314 = undefined;
}

_ID23427()
{
    self endon( "killanimscript" );

    for (;;)
    {
        if ( _func_02F( self._ID322 ) && _func_0D4( self._ID322 ) || _func_02F( self._ID23440 ) )
        {
            if ( _func_0C3( self _meth_819C() ) <= 135 )
                animscripts\melee::_ID23422();
        }

        wait 0.1;
    }
}

_ID47001()
{
    return !_func_02F( self._ID49202 ) || _func_03D() - self._ID49202 > _func_03A( "ai_reactToBulletCooldown" );
}

_ID6325()
{
    self endon( "killanimscript" );

    if ( _func_02F( self._ID11002 ) )
        return;

    for (;;)
    {
        self waittill( "bulletwhizby",  var_0  );

        if ( _func_02F( self._ID11002 ) )
            return;

        if ( self._ID675 != "run" || !self._ID373 || self._ID7._ID28253 != "stand" || _func_02F( self._ID29054 ) )
            continue;

        if ( animscripts\stairs_utility::_ID54360() )
            continue;

        if ( !_unknown_1A6D() )
            continue;

        if ( !_func_02F( self._ID322 ) && !self._ID507 && self _meth_8184() != "oblivious" && _func_02F( var_0._ID1194 ) && _func_112( self._ID1194, var_0._ID1194 ) )
        {
            self._ID41753 = var_0;
            self _meth_81A6( animscripts\reactions::_ID6327 );
            continue;
        }

        if ( self._ID603 || self._ID602 < 100 || self._ID602 < anim._ID46216 )
            continue;

        if ( _func_02F( self._ID762 ) && _func_0F5( self._ID740, self._ID762 ) < 10000 )
        {
            wait 0.2;
            continue;
        }

        self._ID29708 = _func_03D();
        self._ID49202 = self._ID29708;
        self notify( "move_loop_restart" );
        animscripts\run::_ID12640();
    }
}

_ID15972( var_0, var_1 )
{
    var_2 = var_1._ID1244;

    if ( var_2 == "Cover Multi" )
        var_2 = animscripts\utility::_ID16194( var_1 );

    if ( var_2 == "Cover Left" )
        return animscripts\utility::_ID22630( "shuffle", "shuffle_start_from_cover_left" );
    else if ( var_2 == "Cover Right" )
        return animscripts\utility::_ID22630( "shuffle", "shuffle_start_from_cover_right" );
    else if ( var_0 )
        return animscripts\utility::_ID22630( "shuffle", "shuffle_start_left" );
    else
        return animscripts\utility::_ID22630( "shuffle", "shuffle_start_right" );
}

_ID33442( var_0, var_1, var_2 )
{
    var_3 = [];
    var_4 = var_2._ID1244;

    if ( var_4 == "Cover Multi" )
        var_4 = animscripts\utility::_ID16194( var_2 );

    if ( var_4 == "Cover Left" )
    {
        var_3["shuffle_start"] = _unknown_1BCA( var_0, var_1 );
        var_3["shuffle"] = animscripts\utility::_ID22630( "shuffle", "shuffle_to_cover_left" );
        var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_cover_left" );
    }
    else if ( var_4 == "Cover Right" )
    {
        var_3["shuffle_start"] = _unknown_1C03( var_0, var_1 );
        var_3["shuffle"] = animscripts\utility::_ID22630( "shuffle", "shuffle_to_cover_right" );
        var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_cover_right" );
    }
    else if ( var_4 == "Cover Stand" && var_1._ID1244 == var_4 )
    {
        if ( var_0 )
        {
            var_3["shuffle_start"] = animscripts\utility::_ID22630( "shuffle", "shuffle_start_left_stand_to_stand" );
            var_3["shuffle"] = animscripts\utility::_ID22630( "shuffle", "shuffle_left_stand_to_stand" );
            var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_left_stand_to_stand" );
        }
        else
        {
            var_3["shuffle_start"] = animscripts\utility::_ID22630( "shuffle", "shuffle_start_right_stand_to_stand" );
            var_3["shuffle"] = animscripts\utility::_ID22630( "shuffle", "shuffle_right_stand_to_stand" );
            var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_right_stand_to_stand" );
        }
    }
    else if ( var_0 )
    {
        var_3["shuffle_start"] = _unknown_1CB9( var_0, var_1 );
        var_3["shuffle"] = animscripts\utility::_ID22630( "shuffle", "shuffle_to_left_crouch" );

        if ( var_4 == "Cover Stand" )
            var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_left_stand" );
        else
            var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_left_crouch" );
    }
    else
    {
        var_3["shuffle_start"] = _unknown_1D07( var_0, var_1 );
        var_3["shuffle"] = animscripts\utility::_ID22630( "shuffle", "shuffle_to_right_crouch" );

        if ( var_4 == "Cover Stand" )
            var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_right_stand" );
        else
            var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_right_crouch" );
    }

    self._ID7._ID3291 = var_3;
}

_ID24397( var_0, var_1 )
{
    if ( self._ID7._ID28253 == "stand" && var_1._ID1244 != "Cover Stand" || var_0._ID1244 != "Cover Stand" )
    {
        self._ID7._ID28253 = "crouch";
        return 0;
    }

    return 1;
}

_ID24396( var_0 )
{
    if ( self._ID7._ID28253 == "crouch" && var_0._ID1244 == "Cover Stand" )
    {
        self._ID7._ID28253 = "stand";
        return 0;
    }

    return 1;
}

_ID24395()
{
    self endon( "killanimscript" );
    self endon( "goal_changed" );
    var_0 = self._ID34124;
    self._ID34122 = undefined;
    self._ID34124 = undefined;
    self._ID34123 = 1;

    if ( !_func_02F( self._ID822 ) )
        return;

    if ( !_func_02F( self._ID700 ) || !_func_02F( var_0 ) || self._ID700 != var_0 )
        return;

    var_1 = self._ID822;
    var_2 = self._ID700;
    var_3 = var_2._ID740 - self._ID740;

    if ( _func_0F8( var_3 ) < 1 )
        return;

    var_3 = _func_119( var_3 );
    var_4 = _func_11F( var_2._ID65 );
    var_5 = var_4[0] * var_3[1] - var_4[1] * var_3[0] > 0;

    if ( _unknown_1FB2( var_5, var_1, var_2 ) )
        return;

    if ( _unknown_1ED6( var_1, var_2 ) )
        var_6 = 0.1;
    else
        var_6 = 0.4;

    _unknown_1E5C( var_5, var_1, var_2 );
    self _meth_819A( "zonly_physics", 0 );
    self _meth_814C( %body, var_6 );
    var_7 = animscripts\utility::_ID3153( "shuffle_start" );
    var_8 = animscripts\utility::_ID3153( "shuffle" );
    var_9 = animscripts\utility::_ID3153( "shuffle_end" );

    if ( _func_068( var_7, "finish" ) )
        var_10 = _func_069( var_7, "finish" )[0];
    else
        var_10 = 1;

    var_11 = _func_0F6( _func_094( var_7, 0, var_10 ) );
    var_12 = _func_0F6( _func_094( var_8, 0, 1 ) );
    var_13 = _func_0F6( _func_094( var_9, 0, 1 ) );
    var_14 = _func_0F3( self._ID740, var_2._ID740 );

    if ( var_14 > var_11 )
    {
        self _meth_819B( "face angle", animscripts\utility::_ID16462( var_1 ) );
        self _meth_811C( "shuffle_start", var_7, 1, var_6 );
        animscripts\shared::_ID11529( "shuffle_start" );
        self _meth_814C( var_7, 0.2 );
        var_14 -= var_11;
        var_6 = 0.2;
    }
    else
        self _meth_819B( "face angle", var_2._ID65[1] );

    var_15 = 0;

    if ( var_14 > var_13 )
    {
        var_15 = 1;
        var_14 -= var_13;
    }

    var_16 = _func_067( var_8 );
    var_17 = var_16 * var_14 / var_12 * 0.9;
    var_17 = _func_0E7( var_17 * 20 ) * 0.05;
    self _meth_811A( "shuffle", var_8, 1, var_6 );
    animscripts\notetracks::_ID11534( var_17, "shuffle" );

    for ( var_18 = 0; var_18 < 2; var_18++ )
    {
        var_14 = _func_0F3( self._ID740, var_2._ID740 );

        if ( var_15 )
            var_14 -= var_13;

        if ( var_14 < 4 )
            break;

        var_17 = var_16 * var_14 / var_12 * 0.9;
        var_17 = _func_0E7( var_17 * 20 ) * 0.05;

        if ( var_17 < 0.05 )
            break;

        animscripts\notetracks::_ID11534( var_17, "shuffle" );
    }

    if ( var_15 )
    {
        if ( _unknown_2046( var_2 ) )
            var_6 = 0.2;
        else
            var_6 = 0.4;

        self _meth_814C( var_8, var_6 );
        self _meth_811A( "shuffle_end", var_9, 1, var_6 );
        animscripts\shared::_ID11529( "shuffle_end" );
    }

    self _meth_81D3( var_2._ID740 );
    self _meth_819A( "normal" );
    self._ID34123 = undefined;
}

_ID24398()
{
    if ( _func_02F( self._ID34123 ) )
    {
        self _meth_814C( %cover_shuffle, 0.2 );
        self._ID34123 = undefined;
        self _meth_819A( "none", 0 );
        self _meth_819B( "face default" );
    }
    else
    {
        wait 0.2;
        self _meth_814C( %cover_shuffle, 0.2 );
    }
}

_ID24400( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( var_1._ID1244 == "Cover Right" && var_2._ID1244 == "Cover Left" && !var_0 )
        var_3 = %corner_standr_door_r2l;
    else if ( var_1._ID1244 == "Cover Left" && var_2._ID1244 == "Cover Right" && var_0 )
        var_3 = %corner_standl_door_l2r;

    if ( !_func_02F( var_3 ) )
        return 0;

    self _meth_819A( "zonly_physics", 0 );
    self _meth_819B( "face current" );
    self _meth_811C( "sideToSide", var_3, 1, 0.2 );
    animscripts\shared::_ID11529( "sideToSide", ::_unknown_2265 );
    var_4 = self _meth_8159( var_3 );
    var_5 = var_2._ID740 - var_1._ID740;
    var_5 = _func_119( ( var_5[0], var_5[1], 0 ) );
    var_6 = _func_094( var_3, var_4, 1 );
    var_7 = var_2._ID740 - self._ID740;
    var_7 = ( var_7[0], var_7[1], 0 );
    var_8 = _func_0FB( var_7, var_5 ) - _func_0C3( var_6[1] );

    if ( var_8 > 2 )
    {
        var_9 = _func_069( var_3, "slide_end" )[0];
        var_10 = var_9 - var_4 * _func_067( var_3 );
        var_11 = _func_0C1( _func_0E8( var_10 / 0.05 ) );
        var_12 = var_5 * var_8 / var_11;
        thread _unknown_22D9( var_12, var_11 );
    }

    animscripts\shared::_ID11529( "sideToSide" );
    self _meth_81D3( var_2._ID740 );
    self _meth_819A( "none" );
    self _meth_819B( "face default" );
    self._ID34123 = undefined;
    wait 0.2;
    return 1;
}

_ID18049( var_0 )
{
    if ( var_0 == "slide_start" )
        return 1;
}

_ID34344( var_0, var_1 )
{
    self endon( "killanimscript" );
    self endon( "goal_changed" );

    while ( var_1 > 0 )
    {
        self _meth_81D3( self._ID740 + var_0 );
        var_1--;
        wait 0.05;
    }
}

_ID49688( var_0 )
{
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = self _meth_8159( var_2 );

        if ( var_3 > 0.01 && var_3 < 0.99 )
            return var_2;
    }

    var_clear_3
    var_clear_0
    return undefined;
}

_ID24447( var_0, var_1 )
{
    self endon( "movemode" );
    self _meth_814C( %combatrun, 0.6 );
    var_2 = animscripts\stairs_utility::ismovingonstairs();

    if ( !var_2 )
        self _meth_8151( %combatrun, %body, 1, 0.5, self._ID24424 );

    var_3 = animscripts\utility::_ID47299();

    if ( !var_2 && _func_02F( self._ID29708 ) && _func_03D() - self._ID29708 < 100 && _func_02F( self._ID30388 ) && _func_0B8( 1 ) < var_3 )
        animscripts\run::_ID9579();
    else
    {
        var_4 = undefined;
        self _meth_814C( %h1_stairs, 0.1 );

        if ( var_2 )
        {
            var_5 = animscripts\stairs_utility::_ID53776();
            var_4 = animscripts\utility::_ID16432( var_5 );
        }

        if ( !_func_02F( var_4 ) )
        {
            if ( _func_0D3( var_0 ) )
            {
                var_6 = _unknown_240E( var_0 );

                if ( _func_02F( var_6 ) )
                    var_4 = var_6;
                else if ( _func_02F( self._ID30385 ) )
                    var_4 = _ID42237::_ID7490( var_0, var_1 );
                else
                    var_4 = var_0[_func_0B7( var_0.size )];
            }
            else
                var_4 = var_0;
        }

        if ( !var_2 )
            var_7 = _ID42237::_ID37527( _func_02F( self._ID53621 ), self._ID53621, self._ID24424 );
        else
            var_7 = 1.0;

        var_8 = animscripts\stairs_utility::_ID47003();

        if ( var_8 == "in" )
            self _meth_815C( "moveanim", var_4, 1, 0.1, var_7 );
        else
            self _meth_815C( "moveanim", var_4, 1, 0.2, var_7 );

        if ( !var_2 )
        {
            animscripts\shared::_ID11529( "moveanim" );
            return;
        }

        animscripts\notetracks::_ID11534( 0.2, "moveanim" );
    }
}

_ID22438()
{
    thread animscripts\cover_arrival::_ID33535( 1 );
}

_ID48584()
{
    self endon( "killanimscript" );
    self waittill( "StartListeningForCoverApproach" );
    _unknown_2522();
}

_ID45955()
{
    if ( animscripts\utility::_ID33934() )
    {
        var_0["anim"] = animscripts\cqb::_ID10665();
        var_0["updateTime"] = 0.2;
    }
    else if ( self._ID675 == "walk" || self._ID7._ID24414 == "walk" )
    {
        if ( _func_02F( self._ID7._ID24390 ) )
            var_0["anim"] = animscripts\walk::_ID16734( "straight" );
        else
            var_0["anim"] = animscripts\utility::_ID22630( "walk", "straight" );

        var_0["updateTime"] = 0.2;
    }
    else
    {
        var_0["anim"] = animscripts\run::_ID16576();
        var_0["updateTime"] = 0.2;
    }

    return var_0;
}
