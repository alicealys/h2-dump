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

main()
{
    if ( isdefined( self._ID9526 ) )
    {
        if ( isdefined( self._ID9526["move"] ) )
        {
            [[ self._ID9526["move"] ]]();
            return;
        }
    }

    self endon( "killanimscript" );
    [[ self._ID13288["move"] ]]();
    var_0 = ::_ID26332;

    if ( isdefined( self._ID26331 ) )
        var_0 = self._ID26331;

    self thread [[ var_0 ]]();
    self._ID46487 = undefined;
    self._ID45835 = undefined;
    _ID24406();
    _ID16717();
    animscripts\utility::_ID19930( "move" );
    var_1 = _ID41426();

    if ( var_1 && isdefined( self._ID34122 ) )
    {
        _ID51451();
        _ID24395();
        _ID24398();
    }
    else if ( isdefined( self._ID4912 ) && self._ID4912 )
    {
        var_2 = var_1;
        _ID24448( var_2 );
        animscripts\battlechatter::_ID27185();
    }

    if ( animscripts\stairs_utility::_ID48439() )
        thread animscripts\stairs_utility::_ID48637();

    thread _ID3181();
    var_3 = animscripts\utility::_ID49393();

    if ( var_3 )
        thread _ID48584();

    animscripts\exit_node::_ID36145();
    self._ID11499 = undefined;
    self._ID19386 = undefined;
    _ID48930();
    thread _ID36163();

    if ( var_3 )
        self notify( "StartListeningForCoverApproach" );
    else
        _ID22438();

    self._ID33770 = undefined;
    self._ID2421 = undefined;
    self._ID30425 = undefined;

    if ( !isdefined( self._ID44480 ) )
        self._ID44480 = 1;

    _ID24410( 1 );
}

_ID319()
{
    if ( isdefined( self._ID25556 ) )
    {
        self.grenadeweapon = self._ID25556;
        self._ID25556 = undefined;
    }

    if ( isdefined( self.custommovetransitionendscript ) )
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

    if ( self.swimmer )
        animscripts\swim::_ID36937();

    self clearanim( %head, 0.2 );
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
            self orientmode( "face current" );
            self animmode( "zonly_physics", 0 );
            var_2 = 1;

            if ( isdefined( self.grenade ) )
                var_2 = 2;

            animscripts\cover_prone::_ID28718( var_1, var_2, var_0 );
            self animmode( "none", 0 );
            self orientmode( "face default" );
            self notify( "stop_move_anim_update" );
            self._ID7._ID24414 = "stop";
            self._ID39628 = undefined;
        }
    }
}

_ID41426()
{
    switch ( self.prevscript )
    {
        case "cover_crouch":
        case "turret":
        case "hide":
        case "cover_stand":
        case "cover_left":
        case "cover_right":
        case "cover_prone":
        case "cover_multi":
        case "cover_swim_left":
        case "cover_swim_right":
        case "cover_wide_left":
        case "cover_wide_right":
        case "concealment_crouch":
        case "concealment_prone":
        case "concealment_stand":
            return 1;
    }

    return 0;
}

_ID24448( var_0 )
{
    if ( self.movemode == "run" )
        animscripts\battlechatter_ai::_ID13240( var_0 );
}

_ID24410( var_0 )
{
    _ID24411( var_0 );
    self notify( "abort_reload" );
}

_ID3275()
{
    if ( isdefined( self._ID3152 ) && self._ID3152 != self._ID28529 )
        return 1;
    else if ( !isdefined( self._ID3152 ) && self._ID28529 != "none" )
        return 1;

    return 0;
}

_ID39743( var_0 )
{
    if ( var_0 != self._ID28530 || _ID3275() )
    {
        if ( isdefined( self._ID9574 ) && isdefined( self._ID9574[var_0] ) )
            self._ID7._ID24390 = self._ID9574[var_0];
        else
        {
            self._ID7._ID24390 = animscripts\utility::_ID22631( var_0 );

            if ( ( self.combatmode == "ambush" || self.combatmode == "ambush_nodes_only" ) && ( isdefined( self.pathgoalpos ) && distancesquared( self.origin, self.pathgoalpos ) > squared( 100 ) ) )
            {
                self._ID34146 = 1;
                animscripts\animset::_ID32189();
            }
            else
                self._ID34146 = 1.35;
        }

        self._ID28530 = var_0;

        if ( isdefined( self._ID3152 ) )
            self._ID28529 = self._ID3152;
    }
}

_ID24411( var_0 )
{
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    var_1 = self getanimtime( %walk_and_run_loops );
    self._ID7._ID30423 = randomint( 10000 );
    self._ID28530 = "none";
    self._ID28529 = "none";
    self._ID24408 = undefined;

    for (;;)
    {
        var_2 = self getanimtime( %walk_and_run_loops );

        if ( var_2 < var_1 )
            self._ID7._ID30423++;

        var_1 = var_2;
        var_3 = self.movemode;

        if ( isdefined( self._ID52882 ) )
            var_3 = self._ID52882;

        _ID39743( var_3 );

        if ( isdefined( self._ID24413 ) )
            self [[ self._ID24413 ]]( var_3 );
        else
            _ID24412( var_3 );

        if ( isdefined( self._ID24408 ) )
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

    if ( isdefined( self._ID24409 ) )
        self [[ self._ID24409 ]]();
    else if ( isdefined( self._ID28152 ) )
        self [[ self._ID28152 ]]();
    else if ( animscripts\utility::_ID33934() )
        animscripts\cqb::_ID24399();
    else if ( self.swimmer )
        animscripts\swim::_ID24451();
    else if ( var_0 == "run" )
        animscripts\run::_ID24435();
    else
        animscripts\walk::_ID24479();

    self._ID29708 = undefined;
}

_ID23140()
{
    if ( self.weapon == "none" )
        return 0;

    if ( isdefined( self._ID23165 ) && self._ID23165 )
    {
        if ( self.movemode == "run" )
            return 0;
    }

    var_0 = weaponclass( self.weapon );

    if ( !animscripts\utility::_ID39992() )
        return 0;

    if ( animscripts\combat_utility::_ID20910() )
    {
        if ( !animscripts\utility::_ID20716() && self.facemotion )
            return 0;
    }

    if ( isdefined( self._ID11582 ) )
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

    if ( isdefined( var_0 ) )
    {
        foreach ( var_3, var_2 in var_0 )
            self._ID7._ID3291[var_3] = var_2;
    }

    if ( isdefined( self._ID8374 ) && isdefined( self._ID8374["fire"] ) )
        self._ID7._ID3291["fire"] = self._ID8374["fire"];

    if ( isdefined( self.weapon ) && animscripts\utility::_ID41682() )
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
        self clearanim( %exposed_aiming, 0.2 );
    }
}

_ID36163()
{
    self endon( "killanimscript" );
    wait 0.05;
    thread _ID6325();

    if ( getdvarint( "ai_canMeleeWhilstMoving", 1 ) )
        thread _ID23427();

    thread animscripts\door::_ID19529();
    thread animscripts\door::_ID11621();
    thread _ID48814();
}

_ID29843( var_0 )
{
    self endon( "killanimscript" );

    if ( !var_0 )
    {
        animscripts\exit_node::_ID36145();

        if ( isdefined( self._ID24409 ) )
        {
            if ( isdefined( self._ID24408 ) )
                self [[ self._ID24408 ]]();

            self._ID24408 = undefined;
            self._ID24409 = undefined;
        }
    }

    self._ID19386 = undefined;
    self clearanim( %animscript_root, 0.1 );
    self orientmode( "face default" );
    self animmode( "none", 0 );
    self.requestarrivalnotify = 1;
    _ID24410( !var_0 );
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

    if ( isdefined( level._ID49070 ) && !level._ID49070 )
        return;

    self._ID54393 = 0;
    self._ID48871 = getdvarint( "ai_turnAnim_handleEarlyNotifies", 1 ) == 0;
    self.turnanimactive = 0;

    for (;;)
    {
        self waittill( "path_changed",  var_0, var_1, var_2  );

        if ( !self._ID54393 )
        {
            if ( self._ID48871 )
                continue;

            self waittill( "ready_for_path_change" );

            if ( self._ID48871 )
                continue;
        }

        if ( isdefined( self._ID19386 ) || isdefined( self._ID25154 ) )
            continue;

        if ( isdefined( var_0 ) && var_0 )
            continue;

        if ( !self.facemotion && !self shouldfacemotion() )
        {
            if ( !isdefined( self._ID23165 ) )
                continue;
        }

        if ( self._ID7._ID28253 != "stand" )
            continue;

        self notify( "stop_move_anim_update" );
        self._ID39628 = undefined;
        var_3 = vectortoangles( var_1 );
        var_4 = angleclamp180( self.angles[1] - var_3[1] );
        var_5 = angleclamp180( self.angles[0] - var_3[0] );
        var_6 = _ID26330( var_4, var_5 );

        if ( isdefined( var_6 ) )
        {
            self._ID39216 = var_6;
            self._ID39230 = gettime();
            self._ID24409 = ::_ID26329;
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

        if ( self.facemotion )
        {
            if ( self getanimweight( %combatrun_backward ) > 0.1 )
            {
                self notify( "stop_move_anim_update" );
                self._ID39628 = undefined;
                self._ID24409 = ::_ID49710;
                self notify( "move_loop_restart" );
                animscripts\run::_ID12640();
            }
        }
    }
}

movecycle_isleftfootdown()
{
    var_0 = isdefined( self._ID45243 ) && self._ID45243;

    if ( isdefined( self._ID53898 ) && isdefined( self._ID48124 ) )
    {
        var_1 = self._ID53898 - self._ID48124;

        if ( var_1 > 0 )
        {
            var_2 = gettime();
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

    if ( self.swimmer )
        var_1 = animscripts\swim::_ID16643( "turn" );
    else if ( animscripts\utility::_ID20961() )
        var_1 = animscripts\utility::_ID22631( "unstable_run_turn" );
    else if ( isdefined( self._ID51761 ) && self._ID51761 && _ID42338::_ID51421() )
    {
        var_2 = movecycle_isleftfootdown();

        if ( isdefined( self.patrolset ) )
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
    else if ( self.movemode == "walk" )
    {
        var_4 = "cqb_turn";
        var_0 = 1;

        if ( isdefined( self._ID3152 ) && isdefined( anim._ID3277[self._ID3152]["walk_turn"] ) || isdefined( anim._ID3277["soldier"]["walk_turn"] ) )
        {
            var_4 = "walk_turn";
            var_0 = 0;
        }

        var_1 = animscripts\utility::_ID22631( var_4 );
    }
    else if ( isdefined( self._ID3152 ) && self._ID3152 == "riotshield" )
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
    if ( isdefined( self._ID26360 ) )
        return [[ self._ID26360 ]]( var_0, var_1 );

    return pathchange_getturnanim_impl( var_0, var_1 );
}

pathchange_getturnanim_impl( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _ID51909();
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
            var_9 = int( ceil( ( var_0 + 180 - var_7 ) / 45 ) );
    }
    else if ( !var_8 && var_0 < 45 - var_7 )
        return undefined;
    else if ( var_0 < 32.5 && var_8 )
        var_9 = 10;
    else
        var_9 = int( floor( ( var_0 + 180 + var_7 ) / 45 ) );

    var_1 = var_4[var_8];

    if ( isdefined( var_1 ) )
    {
        if ( isarray( var_1 ) )
        {
            while ( var_1.size > 0 )
            {
                var_10 = randomint( var_1.size );

                if ( _ID26327( var_1[var_10] ) )
                    return var_1[var_10];

                var_1[var_10] = var_1[var_1.size - 1];
                var_1[var_1.size - 1] = undefined;
            }
        }
        else if ( _ID26327( var_1 ) )
            return var_1;
    }

    var_11 = -1;

    if ( var_access_10 < -60 )
    {
        var_11 = int( ceil( ( var_access_10 + 180 ) / 45 ) );

        if ( var_11 == var_8 )
            var_11 = var_8 - 1;
    }
    else if ( var_access_10 > 60 )
    {
        var_11 = int( floor( ( var_access_10 + 180 ) / 45 ) );

        if ( var_11 == var_8 )
            var_11 = var_8 + 1;
    }

    if ( var_11 >= 0 && var_11 < 9 )
        var_2 = var_4[var_11];

    if ( isdefined( var_2 ) )
    {
        if ( isarray( var_2 ) )
            var_2 = var_2[0];

        if ( _ID26327( var_2 ) )
            return var_2;
    }

    return undefined;
}

_ID26327( var_0 )
{
    if ( !isdefined( self.pathgoalpos ) )
        return 0;

    var_1 = getnotetracktimes( var_0, "code_move" );

    if ( var_1.size <= 0 )
    {

    }

    var_2 = var_1[0];
    var_3 = getangledelta( var_0, 0, var_2 );
    var_4 = self localtoworldcoords( var_3 );

    if ( isdefined( self._ID3371 ) && squared( self._ID3371 ) > distancesquared( self.pathgoalpos, var_4 ) )
        return 0;

    var_3 = getangledelta( var_0, 0, 1 );
    var_5 = self localtoworldcoords( var_3 );
    var_5 = var_4 + vectornormalize( var_5 - var_4 ) * 20;
    var_6 = !self.swimmer;
    var_7 = self maymovefrompointtopoint( var_4, var_5, var_6, 1 );
    var_8 = !animscripts\utility::_ID48067() && getdvarint( "ai_turnAnim_checkFullTrace", 0 );

    if ( !var_7 || !var_8 )
        return var_7;

    var_9 = var_4;
    var_10 = getnotetracktimes( var_0, "align" );

    if ( var_10.size > 0 )
    {
        var_3 = getangledelta( var_0, 0, var_10[0] );
        var_11 = self localtoworldcoords( var_3 );
        var_7 = self maymovefrompointtopoint( var_11, var_4, var_6, 1 );

        if ( !var_7 )
            return 0;

        var_9 = var_11;
        jump loc_11A4
    }

    var_7 = self maymovefrompointtopoint( self.origin, var_9, var_6, 1 );
    return var_7;
}

_ID26329()
{
    self endon( "killanimscript" );
    self endon( "should_stairs_transition" );
    self._ID24409 = undefined;
    var_0 = self._ID39216;

    if ( gettime() > self._ID39230 + 50 )
        return;

    if ( self.swimmer )
        self animmode( "nogravity", 0 );
    else
        self animmode( "zonly_physics", 0 );

    var_1 = 0.1;

    if ( isdefined( self._ID26359 ) )
        var_1 = self._ID26359;

    var_2 = isdefined( self._ID51761 ) && self._ID51761 && _ID42338::_ID51421();

    if ( var_2 )
        var_1 = 0.5;

    self clearanim( %body, var_1 );
    self._ID24408 = ::_ID26328;
    self._ID19386 = 1;

    if ( !var_2 )
    {
        var_1 = 0.05;

        if ( self getanimweight( %cornercrl_trans_out_mf ) > 0.5 )
            var_1 = 0.2;

        if ( isdefined( self._ID26359 ) )
            var_1 = self._ID26359;
    }

    self notify( "turn_start" );
    self.turnanimactive = 1;
    var_3 = self._ID24424;

    if ( isdefined( self._ID7111 ) && self._ID7111 && self._ID24424 > 1 )
        var_3 = 1 + 0.3 * ( self._ID24424 - 1 );

    self setflaggedanimrestart( "turnAnim", var_0, 1, var_1, var_3 );

    if ( animscripts\utility::_ID20915() )
        self orientmode( "face angle 3d", self.angles );
    else
        self orientmode( "face angle", self.angles[1] );

    if ( isdefined( self._ID12278 ) )
        childthread _ID22880( var_0, 1, "code_move" );

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
    self.turnanimactive = 0;
    self._ID19386 = undefined;
    self orientmode( "face motion" );
    self animmode( "none", 0 );
    animscripts\shared::_ID11529( "turnAnim" );
    self notify( "turn_end" );
    self notify( "killThreadCheckStairsTransition" );
}

_ID49710()
{
    self endon( "killanimscript" );
    self endon( "should_stairs_transition" );
    self._ID24409 = undefined;

    if ( isdefined( self._ID3152 ) && self._ID3152 == "riotshield" )
        var_0 = animscripts\utility::_ID22630( "walkBack2Run", 8 );
    else
        var_0 = %h2_walk_backward_trans_2_run_2;

    self animmode( "zonly_physics", 0 );
    self clearanim( %body, 0.1 );
    self._ID24408 = ::_ID48399;
    self._ID19386 = 1;
    self setflaggedanimrestart( "facemotion_reorient_anim", var_0, 1, 0.05, self._ID24424 );
    self orientmode( "face angle", self.angles[1] );
    animscripts\shared::_ID11529( "facemotion_reorient_anim" );
    self._ID19386 = undefined;
    self orientmode( "face motion" );
    self animmode( "none", 0 );
    animscripts\shared::_ID11529( "facemotion_reorient_anim" );
}

_ID48399()
{
    self._ID19386 = undefined;
    self orientmode( "face default" );
    var_0 = [[ self._ID7497 ]]();
    var_1 = 0.1;

    if ( var_0 != "stand" )
        var_1 = 0.4;

    self clearanim( %animscript_root, var_1 );
    self animmode( "none", 0 );
}

_ID16200()
{
    var_0 = self _meth_84fe();

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
    var_4 = getnotetracktimes( var_0, var_2 );
    var_5 = self.origin;
    var_6 = self.angles;
    var_5 = getstartorigin( var_5, var_6, var_0 );
    var_6 = getstartangles( var_5, var_6, var_0 );
    var_7 = getanimlength( var_0 ) * var_4[0];
    var_8 = int( _ID42407::_ID30229( var_7 * 20, 0, 0 ) );

    if ( var_8 < 1 )
        return;

    var_9 = 1.0 / var_8;
    var_10 = 0;
    var_11 = self.origin;

    for (;;)
    {
        var_12 = var_10 * var_9;
        var_13 = 1.0 - ( var_8 * var_9 - var_12 );
        var_10++;

        if ( !isdefined( self._ID19386 ) && var_1 || var_12 > 1.0 )
            break;

        var_14 = getangledelta( var_0, 0, var_12 );
        var_15 = getangledelta3d( var_0, 0, var_12 );
        var_16 = transformmove( var_5, var_6, ( 0, 0, 0 ), ( 0, 0, 0 ), var_14, var_15 );
        var_17 = var_16["origin"];
        var_18 = var_16["angles"];
        var_19 = self.lookaheaddir;
        var_20 = vectortoangles( self.lookaheaddir )[1];
        var_21 = var_18[1];
        var_22 = angleclamp180( var_20 - var_21 );
        var_23 = var_22 * var_13;
        var_23 = abs( clamp( var_23, -1 * var_3, var_3 ) );
        var_19 = vectorlerp( anglestoforward( var_18 ), self.lookaheaddir, var_23 / var_3 * var_13 );
        self orientmode( "face direction", var_19 );
        waittillframeend;
    }
}

_ID26328()
{
    self._ID19386 = undefined;
    self.turnanimactive = 0;
    self orientmode( "face default" );
    var_0 = [[ self._ID7497 ]]();
    var_1 = 0.1;

    if ( var_0 != "stand" )
        var_1 = 0.4;

    self clearanim( %animscript_root, var_1 );
    self animmode( "none", 0 );

    if ( self.swimmer )
        animscripts\swim::_ID36918();
}

_ID11312()
{
    self pushplayer( 1 );
    self animmode( "zonly_physics", 0 );
    self clearanim( %body, 0.2 );
    self setflaggedanimrestart( "dodgeAnim", self._ID9494, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "dodgeAnim" );
    self animmode( "none", 0 );
    self orientmode( "face default" );

    if ( isdefined( self._ID9494 ) && animhasnotetrack( self._ID9494, "code_move" ) )
        animscripts\shared::_ID11529( "dodgeAnim" );

    self clearanim( %civilian_dodge, 0.2 );
    self pushplayer( 0 );
    self._ID9494 = undefined;
    self._ID24409 = undefined;
    return 1;
}

_ID39068( var_0, var_1 )
{
    var_2 = ( self.lookaheaddir[1], -1 * self.lookaheaddir[0], 0 );
    var_3 = self.lookaheaddir * var_1[0];
    var_4 = var_2 * var_1[1];
    var_5 = self.origin + var_3 - var_4;
    self pushplayer( 1 );

    if ( self maymovetopoint( var_5 ) )
    {
        self._ID9494 = var_0;
        self._ID24409 = ::_ID11312;
        self notify( "move_loop_restart" );
        return 1;
    }

    self pushplayer( 0 );
    return 0;
}

_ID3181()
{
    if ( !isdefined( self._ID11309 ) || !isdefined( self._ID11313 ) )
        return;

    self endon( "killanimscript" );
    self endon( "move_interrupt" );

    for (;;)
    {
        self waittill( "path_need_dodge",  var_0, var_1  );
        animscripts\utility::_ID39726();

        if ( animscripts\utility::_ID20775() )
        {
            if ( self.type == "civilian" )
            {
                if ( lengthsquared( self.velocity ) < 1 )
                    continue;

                var_2 = self.origin + ( 0, 0, 15 );
                var_3 = var_2 + self.velocity;
                var_4 = bullettrace( var_2, var_3, 1, self, 0, 0, 0, 0, 0, 0, 0, 1 );
                var_5 = var_4["entity"];

                if ( !isdefined( var_5 ) )
                    continue;
                else if ( !isdefined( var_5.velocity ) )
                    continue;
                else if ( var_5 != level.player && vectordot( self.velocity, var_5.velocity ) > 0 )
                    continue;
            }
            else
            {
                self.nododgemove = 0;
                return;
            }
        }

        if ( !issentient( var_0 ) )
            continue;

        if ( self.type == "civilian" && animscripts\utility::_ID20775() )
            self._ID46224 = 1;

        var_6 = vectornormalize( var_1 - self.origin );

        if ( self.lookaheaddir[0] * var_6[1] - var_6[0] * self.lookaheaddir[1] > 0 )
        {
            if ( !_ID39068( self._ID11313, self._ID11314 ) )
                _ID39068( self._ID11309, self._ID11310 );
        }
        else if ( !_ID39068( self._ID11309, self._ID11310 ) )
            _ID39068( self._ID11313, self._ID11314 );

        if ( isdefined( self._ID9494 ) )
        {
            wait(getanimlength( self._ID9494 ));
            continue;
        }

        wait 0.1;
    }
}

_ID32598( var_0, var_1 )
{
    self.nododgemove = 1;
    self._ID11309 = var_0;
    self._ID11313 = var_1;
    var_2 = 1;

    if ( animhasnotetrack( var_0, "code_move" ) )
        var_2 = getnotetracktimes( var_0, "code_move" )[0];

    self._ID11310 = getangledelta( var_0, 0, var_2 );
    var_2 = 1;

    if ( animhasnotetrack( var_1, "code_move" ) )
        var_2 = getnotetracktimes( var_1, "code_move" )[0];

    self._ID11314 = getangledelta( var_1, 0, var_2 );
    self.interval = 80;
}

_ID7915()
{
    self.nododgemove = 0;
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
        if ( isdefined( self.enemy ) && ( isai( self.enemy ) || isdefined( self._ID23440 ) ) )
        {
            if ( abs( self getmotionangle() ) <= 135 )
                animscripts\melee::_ID23422();
        }

        wait 0.1;
    }
}

_ID47001()
{
    return !isdefined( self._ID49202 ) || gettime() - self._ID49202 > getdvarint( "ai_reactToBulletCooldown" );
}

_ID6325()
{
    self endon( "killanimscript" );

    if ( isdefined( self._ID11002 ) )
        return;

    for (;;)
    {
        self waittill( "bulletwhizby",  var_0  );

        if ( isdefined( self._ID11002 ) )
            return;

        if ( self.movemode != "run" || !self.facemotion || self._ID7._ID28253 != "stand" || isdefined( self._ID29054 ) )
            continue;

        if ( animscripts\stairs_utility::_ID54360() )
            continue;

        if ( !_ID47001() )
            continue;

        if ( !isdefined( self.enemy ) && !self.ignoreall && self getthreatbiasgroup() != "oblivious" && isdefined( var_0.team ) && isenemyteam( self.team, var_0.team ) )
        {
            self._ID41753 = var_0;
            self animcustom( animscripts\reactions::_ID6327 );
            continue;
        }

        if ( self.lookaheadhitsstairs || self.lookaheaddist < 100 || self.lookaheaddist < anim._ID46216 )
            continue;

        if ( isdefined( self.pathgoalpos ) && distancesquared( self.origin, self.pathgoalpos ) < 10000 )
        {
            wait 0.2;
            continue;
        }

        self._ID29708 = gettime();
        self._ID49202 = self._ID29708;
        self notify( "move_loop_restart" );
        animscripts\run::_ID12640();
    }
}

_ID15972( var_0, var_1 )
{
    var_2 = var_1.type;

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
    var_4 = var_2.type;

    if ( var_4 == "Cover Multi" )
        var_4 = animscripts\utility::_ID16194( var_2 );

    if ( var_4 == "Cover Left" )
    {
        var_3["shuffle_start"] = _ID15972( var_0, var_1 );
        var_3["shuffle"] = animscripts\utility::_ID22630( "shuffle", "shuffle_to_cover_left" );
        var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_cover_left" );
    }
    else if ( var_4 == "Cover Right" )
    {
        var_3["shuffle_start"] = _ID15972( var_0, var_1 );
        var_3["shuffle"] = animscripts\utility::_ID22630( "shuffle", "shuffle_to_cover_right" );
        var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_cover_right" );
    }
    else if ( var_4 == "Cover Stand" && var_1.type == var_4 )
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
        var_3["shuffle_start"] = _ID15972( var_0, var_1 );
        var_3["shuffle"] = animscripts\utility::_ID22630( "shuffle", "shuffle_to_left_crouch" );

        if ( var_4 == "Cover Stand" )
            var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_left_stand" );
        else
            var_3["shuffle_end"] = animscripts\utility::_ID22630( "shuffle", "shuffle_end_to_left_crouch" );
    }
    else
    {
        var_3["shuffle_start"] = _ID15972( var_0, var_1 );
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
    if ( self._ID7._ID28253 == "stand" && ( var_1.type != "Cover Stand" || var_0.type != "Cover Stand" ) )
    {
        self._ID7._ID28253 = "crouch";
        return 0;
    }

    return 1;
}

_ID24396( var_0 )
{
    if ( self._ID7._ID28253 == "crouch" && var_0.type == "Cover Stand" )
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

    if ( !isdefined( self.prevnode ) )
        return;

    if ( !isdefined( self.node ) || !isdefined( var_0 ) || self.node != var_0 )
        return;

    var_1 = self.prevnode;
    var_2 = self.node;
    var_3 = var_2.origin - self.origin;

    if ( lengthsquared( var_3 ) < 1 )
        return;

    var_3 = vectornormalize( var_3 );
    var_4 = anglestoforward( var_2.angles );
    var_5 = var_4[0] * var_3[1] - var_4[1] * var_3[0] > 0;

    if ( _ID24400( var_5, var_1, var_2 ) )
        return;

    if ( _ID24397( var_1, var_2 ) )
        var_6 = 0.1;
    else
        var_6 = 0.4;

    _ID33442( var_5, var_1, var_2 );
    self animmode( "zonly_physics", 0 );
    self clearanim( %body, var_6 );
    var_7 = animscripts\utility::_ID3153( "shuffle_start" );
    var_8 = animscripts\utility::_ID3153( "shuffle" );
    var_9 = animscripts\utility::_ID3153( "shuffle_end" );

    if ( animhasnotetrack( var_7, "finish" ) )
        var_10 = getnotetracktimes( var_7, "finish" )[0];
    else
        var_10 = 1;

    var_11 = length( getangledelta( var_7, 0, var_10 ) );
    var_12 = length( getangledelta( var_8, 0, 1 ) );
    var_13 = length( getangledelta( var_9, 0, 1 ) );
    var_14 = distance( self.origin, var_2.origin );

    if ( var_14 > var_11 )
    {
        self orientmode( "face angle", animscripts\utility::_ID16462( var_1 ) );
        self setflaggedanimrestart( "shuffle_start", var_7, 1, var_6 );
        animscripts\shared::_ID11529( "shuffle_start" );
        self clearanim( var_7, 0.2 );
        var_14 -= var_11;
        var_6 = 0.2;
    }
    else
        self orientmode( "face angle", var_2.angles[1] );

    var_15 = 0;

    if ( var_14 > var_13 )
    {
        var_15 = 1;
        var_14 -= var_13;
    }

    var_16 = getanimlength( var_8 );
    var_17 = var_16 * var_14 / var_12 * 0.9;
    var_17 = floor( var_17 * 20 ) * 0.05;
    self setflaggedanim( "shuffle", var_8, 1, var_6 );
    animscripts\notetracks::_ID11534( var_17, "shuffle" );

    for ( var_18 = 0; var_18 < 2; var_18++ )
    {
        var_14 = distance( self.origin, var_2.origin );

        if ( var_15 )
            var_14 -= var_13;

        if ( var_14 < 4 )
            break;

        var_17 = var_16 * var_14 / var_12 * 0.9;
        var_17 = floor( var_17 * 20 ) * 0.05;

        if ( var_17 < 0.05 )
            break;

        animscripts\notetracks::_ID11534( var_17, "shuffle" );
    }

    if ( var_15 )
    {
        if ( _ID24396( var_2 ) )
            var_6 = 0.2;
        else
            var_6 = 0.4;

        self clearanim( var_8, var_6 );
        self setflaggedanim( "shuffle_end", var_9, 1, var_6 );
        animscripts\shared::_ID11529( "shuffle_end" );
    }

    self safeteleport( var_2.origin );
    self animmode( "normal" );
    self._ID34123 = undefined;
}

_ID24398()
{
    if ( isdefined( self._ID34123 ) )
    {
        self clearanim( %cover_shuffle, 0.2 );
        self._ID34123 = undefined;
        self animmode( "none", 0 );
        self orientmode( "face default" );
    }
    else
    {
        wait 0.2;
        self clearanim( %cover_shuffle, 0.2 );
    }
}

_ID24400( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( var_1.type == "Cover Right" && var_2.type == "Cover Left" && !var_0 )
        var_3 = %corner_standr_door_r2l;
    else if ( var_1.type == "Cover Left" && var_2.type == "Cover Right" && var_0 )
        var_3 = %corner_standl_door_l2r;

    if ( !isdefined( var_3 ) )
        return 0;

    self animmode( "zonly_physics", 0 );
    self orientmode( "face current" );
    self setflaggedanimrestart( "sideToSide", var_3, 1, 0.2 );
    animscripts\shared::_ID11529( "sideToSide", ::_ID18049 );
    var_4 = self getanimtime( var_3 );
    var_5 = var_2.origin - var_1.origin;
    var_5 = vectornormalize( ( var_5[0], var_5[1], 0 ) );
    var_6 = getangledelta( var_3, var_4, 1 );
    var_7 = var_2.origin - self.origin;
    var_7 = ( var_7[0], var_7[1], 0 );
    var_8 = vectordot( var_7, var_5 ) - abs( var_6[1] );

    if ( var_8 > 2 )
    {
        var_9 = getnotetracktimes( var_3, "slide_end" )[0];
        var_10 = ( var_9 - var_4 ) * getanimlength( var_3 );
        var_11 = int( ceil( var_10 / 0.05 ) );
        var_12 = var_5 * var_8 / var_11;
        thread _ID34344( var_12, var_11 );
    }

    animscripts\shared::_ID11529( "sideToSide" );
    self safeteleport( var_2.origin );
    self animmode( "none" );
    self orientmode( "face default" );
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
        self safeteleport( self.origin + var_0 );
        var_1--;
        wait 0.05;
    }
}

_ID49688( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        var_3 = self getanimtime( var_2 );

        if ( var_3 > 0.01 && var_3 < 0.99 )
            return var_2;
    }

    return undefined;
}

_ID24447( var_0, var_1 )
{
    self endon( "movemode" );
    self clearanim( %combatrun, 0.6 );
    var_2 = animscripts\stairs_utility::ismovingonstairs();

    if ( !var_2 )
        self setanimknoball( %combatrun, %body, 1, 0.5, self._ID24424 );

    var_3 = animscripts\utility::_ID47299();

    if ( !var_2 && isdefined( self._ID29708 ) && gettime() - self._ID29708 < 100 && isdefined( self._ID30388 ) && randomfloat( 1 ) < var_3 )
        animscripts\run::_ID9579();
    else
    {
        var_4 = undefined;
        self clearanim( %h1_stairs, 0.1 );

        if ( var_2 )
        {
            var_5 = animscripts\stairs_utility::_ID53776();
            var_4 = animscripts\utility::_ID16432( var_5 );
        }

        if ( !isdefined( var_4 ) )
        {
            if ( isarray( var_0 ) )
            {
                var_6 = _ID49688( var_0 );

                if ( isdefined( var_6 ) )
                    var_4 = var_6;
                else if ( isdefined( self._ID30385 ) )
                    var_4 = _ID42237::_ID7490( var_0, var_1 );
                else
                    var_4 = var_0[randomint( var_0.size )];
            }
            else
                var_4 = var_0;
        }

        if ( !var_2 )
            var_7 = _ID42237::_ID37527( isdefined( self._ID53621 ), self._ID53621, self._ID24424 );
        else
            var_7 = 1.0;

        var_8 = animscripts\stairs_utility::_ID47003();

        if ( var_8 == "in" )
            self setflaggedanimknob( "moveanim", var_4, 1, 0.1, var_7 );
        else
            self setflaggedanimknob( "moveanim", var_4, 1, 0.2, var_7 );

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
    _ID22438();
}

_ID45955()
{
    if ( animscripts\utility::_ID33934() )
    {
        var_0["anim"] = animscripts\cqb::_ID10665();
        var_0["updateTime"] = 0.2;
    }
    else if ( self.movemode == "walk" || self._ID7._ID24414 == "walk" )
    {
        if ( isdefined( self._ID7._ID24390 ) )
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
