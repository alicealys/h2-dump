// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24435()
{
    var_0 = [[ self._ID7497 ]]( "stand" );

    switch ( var_0 )
    {
        case "stand":
            if ( animscripts\setposemovement::_ID35602() )
                return;

            if ( isdefined( self._ID30386 ) )
            {
                animscripts\move::_ID24447( self._ID30386, self._ID30385 );
                return;
            }

            if ( _ID35603() )
                return;

            if ( _ID35604() )
                return;

            animscripts\utility::_ID39726();

            if ( animscripts\utility::_ID20775() )
                _ID35605();
            else
                _ID35606();

            break;
        case "crouch":
            if ( animscripts\setposemovement::_ID9351() )
                return;

            if ( isdefined( self._ID9352 ) )
                _ID9354();
            else
                _ID9353();

            break;
        default:
            if ( animscripts\setposemovement::_ID28714() )
                return;

            _ID28710();
            break;
    }
}

_ID16576()
{
    if ( !isdefined( self._ID7._ID24390 ) )
    {
        var_0 = animscripts\utility::_ID22630( "run", "straight" );
        return var_0;
    }

    var_1 = animscripts\stairs_utility::ismovingonstairs();

    if ( !self.facemotion && !self shouldfacemotion() )
    {
        var_2 = abs( self getmotionangle() );

        if ( !var_1 || var_2 > 45 )
        {
            var_0 = animscripts\utility::_ID16432( "move_f" );
            return var_0;
        }
    }

    if ( var_1 )
    {
        var_3 = animscripts\stairs_utility::_ID53776();
        var_0 = animscripts\utility::_ID16432( var_3 );
        return var_0;
    }

    if ( self._ID36736 != "riotshield" )
    {
        var_4 = animscripts\slopes_utility::_ID44300();

        if ( isdefined( var_4 ) )
        {
            var_0 = animscripts\utility::_ID22630( "run", "straight_" + var_4 );
            return var_0;
        }
    }

    if ( animscripts\utility::_ID39998() )
    {
        var_0 = animscripts\utility::_ID16432( "smg_straight" );
        return var_0;
    }

    if ( animscripts\utility::_ID20775() || isdefined( self._ID24936 ) && self._ID24936 || isdefined( self._ID7._ID4958 ) && self._ID7._ID4958 )
    {
        var_0 = animscripts\utility::_ID16432( "straight" );
        return var_0;
    }

    if ( !isdefined( self._ID7._ID30423 ) )
        return animscripts\utility::_ID16432( "straight" );

    var_5 = animscripts\utility::_ID16432( "straight_twitch" );

    if ( !isdefined( var_5 ) || var_5.size == 0 )
    {
        var_0 = animscripts\utility::_ID16432( "straight" );
        return var_0;
    }

    var_6 = animscripts\utility::_ID16553( self._ID7._ID30423, 4 );

    if ( var_6 == 0 )
    {
        var_0 = animscripts\utility::_ID47584( var_5 );
        return var_0;
    }

    var_0 = animscripts\utility::_ID16432( "straight" );
    return var_0;
}

_ID16198()
{
    if ( !isdefined( self._ID7._ID24390 ) )
    {
        if ( animscripts\utility::_ID39998() )
            return animscripts\utility::_ID22630( "smg_crouch_run", "crouch" );
        else
            return animscripts\utility::_ID22630( "run", "crouch" );
    }

    return animscripts\utility::_ID16432( "crouch" );
}

_ID28710()
{
    self._ID7._ID24414 = "run";
    self setflaggedanimknob( "runanim", animscripts\utility::_ID16432( "prone" ), 1, 0.3, self._ID24424 );
    _ID30379();
    animscripts\notetracks::_ID11534( 0.25, "runanim" );
}
#using_animtree("generic_human");

_ID19976()
{
    if ( !isdefined( self._ID30425 ) )
    {
        self notify( "stop_move_anim_update" );
        self._ID39628 = undefined;
        self clearanim( %combatrun_backward, 0.2 );
        self clearanim( %combatrun_right, 0.2 );
        self clearanim( %combatrun_left, 0.2 );
        self clearanim( %w_aim_2, 0.2 );
        self clearanim( %w_aim_4, 0.2 );
        self clearanim( %w_aim_6, 0.2 );
        self clearanim( %w_aim_8, 0.2 );
        self._ID30425 = 1;
    }
}

_ID36611()
{
    if ( isdefined( self._ID30425 ) )
    {
        self clearanim( %run_n_gun, 0.2 );
        self._ID30425 = undefined;
        self _meth_85c9( 1 );
    }

    return 0;
}

_ID30425( var_0 )
{
    if ( var_0 )
    {
        var_1 = _ID16539( 0.2 );
        var_2 = var_1 < 0;
    }
    else
    {
        var_1 = 0;
        var_2 = self._ID30429 < 0;
    }

    var_3 = self._ID23125;
    var_4 = self._ID30428;
    var_5 = self._ID30427;

    if ( !var_0 || squared( var_1 ) > var_3 * var_3 )
    {
        self clearanim( %add_fire, 0 );

        if ( squared( self._ID30429 ) < var_5 * var_5 )
        {
            self._ID30429 = 0;
            self._ID30425 = undefined;
            self _meth_85c9( 1 );
            return 0;
        }
        else if ( self._ID30429 > 0 )
            self._ID30429 = self._ID30429 - var_5;
        else
            self._ID30429 = self._ID30429 + var_5;
    }
    else
    {
        var_6 = var_1 / self.maxrunngunanimationangle;
        var_7 = var_6 - self._ID30429;

        if ( abs( var_7 ) < var_4 * 0.7 )
            self._ID30429 = var_6;
        else if ( var_7 > 0 )
            self._ID30429 = self._ID30429 + var_5;
        else
            self._ID30429 = self._ID30429 - var_5;
    }

    _ID19976();
    _ID43269( var_4, var_2 );
    _ID30390( undefined );
    self._ID7._ID2728 = gettime() + 500;

    if ( var_0 && isplayernumber( self.enemy ) )
        self updateplayersightaccuracy();

    return 1;
}

_ID43269( var_0, var_1 )
{
    var_2 = 1 - var_1;
    var_3 = abs( self._ID30429 );
    var_4 = "run_n_gun";

    if ( isdefined( self.run_and_gun_current_type ) && self.run_and_gun_current_type != "straight" )
        var_4 += ( "_" + self.run_and_gun_current_type );

    var_5 = animscripts\utility::_ID22631( var_4 );

    if ( animscripts\stairs_utility::ismovingonstairs() )
    {
        var_6 = animscripts\stairs_utility::_ID53776();
        var_7 = var_5[var_6];
        self clearanim( %body, 0.1 );
        var_8 = animscripts\stairs_utility::_ID47003();

        if ( var_8 == "in" )
            var_9 = 0.1;
        else
            var_9 = 0.2;

        self._ID51394 = var_7;
        self setflaggedanimknob( "runanim", var_7, 1, var_9, 1, 1 );
    }
    else
    {
        if ( isdefined( self._ID51394 ) )
        {
            self clearanim( self._ID51394, 0.1 );
            self._ID51394 = undefined;
        }

        self clearanim( %h1_stairs, 0.1 );

        if ( isdefined( self.useoldrunngunsystem ) && self.useoldrunngunsystem )
        {
            if ( var_3 > var_0 )
            {
                var_10 = ( var_3 - var_0 ) / var_0;
                var_10 = clamp( var_10, 0, 1 );
                self clearanim( var_5["F"], 0.2 );
                self setanimlimited( var_5["L"], ( 1.0 - var_10 ) * var_1, 0.2 );
                self setanimlimited( var_5["R"], ( 1.0 - var_10 ) * var_2, 0.2 );
                self setanimlimited( var_5["LB"], var_10 * var_1, 0.2 );
                self setanimlimited( var_5["RB"], var_10 * var_2, 0.2 );
            }
            else
            {
                var_10 = clamp( var_3 / var_0, 0, 1 );
                self setanimlimited( var_5["F"], 1.0 - var_10, 0.2 );
                self setanimlimited( var_5["L"], var_10 * var_1, 0.2 );
                self setanimlimited( var_5["R"], var_10 * var_2, 0.2 );

                if ( var_0 < 1 )
                {
                    self clearanim( var_5["LB"], 0.2 );
                    self clearanim( var_5["RB"], 0.2 );
                }
            }
        }
        else
        {
            var_11 = floor( self._ID30429 / self._ID30428 );
            var_12 = 4 + var_11;
            var_13 = var_12 + 1;
            var_10 = ( self._ID30429 - var_11 * var_0 ) / var_0;
            var_10 = clamp( abs( var_10 ), 0, 1 );

            for ( var_14 = 0; var_14 < 9; var_14++ )
            {
                if ( var_14 == var_12 )
                {
                    self setanimlimited( var_5[var_14], 1.0 - var_10, 0.2 );
                    continue;
                }

                if ( var_14 == var_13 )
                {
                    self setanimlimited( var_5[var_14], var_10, 0.2 );
                    continue;
                }

                self clearanim( var_5[var_14], 0.2 );
            }
        }

        if ( isdefined( self._ID7111 ) && self._ID7111 && var_2 > var_0 )
            self _meth_85c9( 0 );
        else
            self _meth_85c9( 1 );

        var_8 = animscripts\stairs_utility::_ID47003();

        if ( var_8 != "none" )
            var_9 = 0.1;
        else
            var_9 = 0.3;

        self setflaggedanimknob( "runanim", %run_n_gun, 1, var_9, 0.8 );
    }
}

_ID30426()
{
    _ID19976();
    var_0 = animscripts\utility::_ID22630( "run_n_gun", "move_back" );
    self setflaggedanimknob( "runanim", var_0, 1, 0.3, 0.8 );
    _ID30390( var_0 );

    if ( isplayernumber( self.enemy ) )
        self updateplayersightaccuracy();

    animscripts\notetracks::_ID11534( 0.2, "runanim" );
    self clearanim( var_0, 0.2 );
}

_ID29140()
{
    self endon( "killanimscript" );

    for (;;)
    {
        wait 0.2;

        if ( !isdefined( self._ID29054 ) )
            break;

        if ( !isdefined( self.pathgoalpos ) || distancesquared( self.pathgoalpos, self.origin ) < squared( 80 ) )
        {
            _ID12740();
            self notify( "interrupt_react_to_bullet" );
            break;
        }
    }
}

_ID12740()
{
    self orientmode( "face default" );
    self._ID29054 = undefined;
    self._ID29708 = undefined;
}

_ID30438()
{
    if ( isdefined( self._ID23165 ) && self._ID23165 )
        return;

    _ID12640();
    self endon( "interrupt_react_to_bullet" );
    self._ID29054 = 1;
    self orientmode( "face motion" );

    if ( self.team == "allies" && self.damageshield )
        var_0 = animscripts\utility::_ID22631( "running_react_to_bullets_hero" );
    else
        var_0 = animscripts\utility::_ID22631( "running_react_to_bullets" );

    var_1 = randomint( var_0.size );

    if ( var_1 == anim._ID21976 )
        var_1 = ( var_1 + 1 ) % var_0.size;

    anim._ID21976 = var_1;
    var_2 = var_0[var_1];
    self setflaggedanimknobrestart( "reactanim", var_2, 1, 0.5, 1 );
    _ID30390( var_2 );
    thread _ID29140();
    animscripts\shared::_ID11529( "reactanim" );
    _ID12740();
}

_ID9579()
{
    _ID12640();
    self._ID29054 = 1;
    self orientmode( "face motion" );
    var_0 = randomint( self._ID30388.size );
    var_1 = self._ID30388[var_0];
    self setflaggedanimknobrestart( "reactanim", var_1, 1, 0.5, 1.0 );
    _ID30390( var_1 );
    thread _ID29140();
    animscripts\shared::_ID11529( "reactanim" );
    _ID12740();
}

_ID16614()
{
    var_0 = undefined;

    if ( isdefined( self.grenade ) )
        var_0 = animscripts\utility::_ID16432( "sprint_short" );

    if ( !isdefined( var_0 ) )
        var_0 = animscripts\utility::_ID16432( "sprint" );

    return var_0;
}

_ID33972()
{
    if ( isdefined( self._ID35499 ) )
        return 1;

    if ( isdefined( self.grenade ) && isdefined( self.enemy ) && self.frontshieldanglecos == 1 )
        return distancesquared( self.origin, self.enemy.origin ) > 90000;

    return 0;
}

_ID33973()
{
    if ( isdefined( self._ID24730 ) )
        return 0;

    if ( !self.facemotion || animscripts\stairs_utility::_ID54360() )
        return 0;

    var_0 = gettime();

    if ( isdefined( self._ID9716 ) )
    {
        if ( var_0 < self._ID9716 )
            return 1;

        if ( var_0 - self._ID9716 < 6000 )
            return 0;
    }

    if ( !isdefined( self.enemy ) || !issentient( self.enemy ) )
        return 0;

    if ( randomint( 100 ) < 25 && self lastknowntime( self.enemy ) + 2000 > var_0 )
    {
        self._ID9716 = var_0 + 2000 + randomint( 1000 );
        return 1;
    }

    return 0;
}

_ID16433()
{
    var_0 = self._ID24424;

    if ( animscripts\stairs_utility::_ID54360() )
        var_0 = 1;

    return var_0;
}

_ID48100()
{
    if ( isdefined( self._ID48632 ) )
    {
        var_0 = gettime() - self._ID48632;
        return var_0 < 500;
    }

    return 0;
}

_ID35605()
{
    var_0 = _ID16433();
    var_1 = animscripts\stairs_utility::ismovingonstairs();

    if ( !var_1 )
        self setanimknob( %combatrun, 1.0, 0.5, var_0 );

    var_2 = 0;
    var_3 = !var_1 && isdefined( self._ID29708 ) && gettime() - self._ID29708 < 100;
    var_4 = animscripts\utility::_ID47299();

    if ( var_3 && randomfloat( 1 ) < var_4 )
    {
        _ID36611();
        _ID32784( 0 );
        _ID30438();
        return;
    }

    if ( !var_1 && _ID33972() )
    {
        var_5 = _ID16614();
        self setflaggedanimknob( "runanim", var_5, 1, 0.5, 1.0 );
        _ID30390( var_5 );
        _ID32784( 0 );
        var_2 = 1;
    }
    else if ( isdefined( self.enemy ) && animscripts\move::_ID23140() )
    {
        _ID32784( 1 );

        if ( !var_1 && !self.facemotion )
            thread _ID13753();
        else if ( self._ID33816 != "none" && !isdefined( self._ID24934 ) )
        {
            _ID12640();

            if ( _ID6892() )
                var_2 = _ID30425( 1 );
            else if ( !var_1 && _ID6891() )
            {
                _ID30426();
                return;
            }
        }
        else if ( isdefined( self._ID30429 ) && self._ID30429 != 0 )
            var_2 = _ID30425( 0 );
    }
    else if ( isdefined( self._ID30429 ) && self._ID30429 != 0 )
    {
        _ID32784( 0 );
        var_2 = _ID30425( 0 );
    }
    else
        _ID32784( 0 );

    if ( !var_2 )
    {
        _ID36611();
        var_4 = animscripts\utility::_ID47299();

        if ( var_3 && var_4 != 0 )
        {
            _ID30438();
            return;
        }

        if ( !var_1 && _ID33973() )
            var_6 = animscripts\utility::_ID16432( "sprint_short" );
        else
            var_6 = _ID16576();

        if ( _ID48100() )
            var_7 = 0.3;
        else
            var_7 = 0.1;

        _ID49858( var_6, var_7 );
    }

    animscripts\notetracks::_ID11534( 0.2, "runanim" );
}

_ID49858( var_0, var_1 )
{
    if ( !animscripts\stairs_utility::ismovingonstairs() )
    {
        self clearanim( %h1_stairs, var_1 );
        self setflaggedanimknoblimited( "runanim", var_0, 1, var_1, 1, 1 );
        _ID30390( var_0 );
        _ID32698( animscripts\utility::_ID16432( "move_b" ), animscripts\utility::_ID16432( "move_l" ), animscripts\utility::_ID16432( "move_r" ), self._ID34146 );
        thread _ID32577( "run" );
    }
    else
    {
        self notify( "stop_move_anim_update" );
        self._ID39628 = undefined;
        self clearanim( %body, var_1 );
        self setflaggedanimknob( "runanim", var_0, 1, var_1, 1, 1 );
        _ID30390( var_0 );
    }
}

_ID16616( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "none";

    if ( var_0 == var_1 )
        return undefined;

    var_3 = undefined;

    switch ( var_0 )
    {
        case "up":
            var_3 = "stairs_up_out";
            break;
        case "down":
            var_3 = "stairs_down_out";
            break;
        case "turn_L90":
            var_3 = "turn_90l_2_stairs_" + var_1;
            break;
        case "turn_R90":
            var_3 = "turn_90r_2_stairs_" + var_1;
            break;
        case "none":
            var_3 = "stairs_" + var_1 + "_in";
            break;
        default:
            break;
    }

    var_4 = isdefined( self.enemy ) && animscripts\utility::_ID20775() && !isdefined( self._ID24934 ) && _ID6892() && isdefined( self._ID33816 ) && self._ID33816 != "none";
    var_3 = var_3 + "_" + var_2;

    if ( animscripts\utility::_ID33934() )
        return animscripts\utility::_ID22630( "cqb", var_3 );
    else if ( var_4 )
        return animscripts\utility::_ID22630( "run_n_gun", var_3 );
    else if ( isdefined( self._ID7._ID24390 ) )
        return animscripts\utility::_ID16432( var_3 );
    else
        return animscripts\utility::_ID22630( "run", var_3 );
}

_ID13753()
{
    if ( isdefined( self._ID2421 ) )
        return;

    self._ID2421 = 1;
    self endon( "killanimscript" );
    self endon( "end_face_enemy_tracking" );
    self setdefaultaimlimits();
    var_0 = undefined;

    if ( isdefined( self._ID8374 ) && isdefined( self._ID8374["walk_aims"] ) )
    {
        self setanimlimited( self._ID8374["walk_aims"]["walk_aim_2"] );
        self setanimlimited( self._ID8374["walk_aims"]["walk_aim_4"] );
        self setanimlimited( self._ID8374["walk_aims"]["walk_aim_6"] );
        self setanimlimited( self._ID8374["walk_aims"]["walk_aim_8"] );
    }
    else
    {
        var_1 = "walk";

        if ( animscripts\utility::_ID33934() && isdefined( animscripts\utility::_ID22630( "cqb", "aim_2" ) ) )
            var_1 = "cqb";

        var_2 = animscripts\utility::_ID22631( var_1 );
        self setanimlimited( var_2["aim_2"] );
        self setanimlimited( var_2["aim_4"] );
        self setanimlimited( var_2["aim_6"] );
        self setanimlimited( var_2["aim_8"] );

        if ( isdefined( var_2["aim_5"] ) )
        {
            self setanimlimited( var_2["aim_5"] );
            var_0 = %w_aim_5;
        }
    }

    animscripts\track::_ID38149( %w_aim_2, %w_aim_4, %w_aim_6, %w_aim_8, var_0 );
}

_ID12640()
{
    self._ID2421 = undefined;
    self notify( "end_face_enemy_tracking" );
}

_ID32784( var_0 )
{
    var_1 = isdefined( self._ID6191 );

    if ( var_0 )
    {
        self._ID6191 = var_0;

        if ( !var_1 )
        {
            thread _ID30413();
            thread _ID30444();
        }
    }
    else
    {
        self._ID6191 = undefined;

        if ( var_1 )
        {
            self notify( "end_shoot_while_moving" );
            self notify( "end_face_enemy_tracking" );
            self._ID33770 = undefined;
            self._ID2421 = undefined;
            self._ID30425 = undefined;
            self _meth_85c9( 1 );
        }
    }
}

_ID30413()
{
    self endon( "killanimscript" );
    self endon( "end_shoot_while_moving" );
    animscripts\shoot_behavior::_ID10054( "normal" );
}

_ID30444()
{
    self endon( "killanimscript" );
    self endon( "end_shoot_while_moving" );
    animscripts\move::_ID33822();
}

_ID2426()
{
    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_0 = animscripts\combat_utility::_ID15797( self.enemy );
    else
        var_0 = self.enemy getshootatpos();

    var_1 = self getmuzzleangle();
    var_2 = vectortoangles( var_0 - self getmuzzlepos() );

    if ( animscripts\utility::_ID1735( var_1[1] - var_2[1] ) > 15 )
        return 0;

    return animscripts\utility::_ID1735( var_1[0] - var_2[0] ) <= 20;
}

_ID6892()
{
    if ( ( !isdefined( self._ID30429 ) || self._ID30429 == 0 ) && abs( self getmotionangle() ) > self._ID23125 )
        return 0;

    return 1;
}

_ID6891()
{
    if ( 180 - abs( self getmotionangle() ) >= 45 )
        return 0;

    var_0 = _ID16539( 0.2 );

    if ( abs( var_0 ) > 30 )
        return 0;

    return 1;
}

_ID6890()
{
    return animscripts\move::_ID23140() && isdefined( self.enemy ) && ( _ID6892() || _ID6891() );
}

_ID16539( var_0 )
{
    var_1 = self.origin;
    var_2 = self.angles[1] + self getmotionangle();
    var_1 += ( cos( var_2 ), sin( var_2 ), 0 ) * length( self.velocity ) * var_0;
    var_3 = self.angles[1] - vectortoyaw( self.enemy.origin - var_1 );
    var_3 = angleclamp180( var_3 );
    return var_3;
}

_ID24329()
{
    if ( !animscripts\stairs_utility::_ID48439() )
        return 0;

    if ( isdefined( self._ID39230 ) && self._ID39230 == gettime() )
        return 0;

    var_0 = animscripts\move::_ID45955();
    self._ID50387 = undefined;
    var_1 = animscripts\stairs_utility::_ID49570( var_0["anim"], 1, var_0["updateTime"] );

    if ( !isdefined( var_1 ) )
        return 0;

    animscripts\stairs_utility::_ID44972();
    var_2 = var_1["transitionAnim"];

    if ( !isdefined( var_2 ) )
        return 0;

    self notify( "stop_move_anim_update" );
    self._ID39628 = undefined;
    self._ID50800 = 1;
    var_3 = 1 / self._ID24424;
    var_4 = getnotetracktimes( var_2, "stair_edge" );
    var_5 = getanimlength( var_2 );

    if ( isdefined( self._ID50387["startTime"] ) )
        var_6 = var_4[0] - self._ID50387["startTime"];
    else
        var_6 = var_4[0] * var_5 / var_3;

    var_7 = var_1["currentContext"];

    if ( var_7 == "turn_L90" || var_7 == "turn_R90" )
    {
        var_8 = var_6 * 0.85;
        self._ID19386 = 1;
    }
    else
        var_8 = min( var_6, 0.1 );

    self clearanim( %body, var_8 );

    if ( animscripts\utility::_ID33934() )
        _ID32784( 0 );

    self setflaggedanimknoballrestart( "runanim", var_2, %body, 1, var_8, var_3 );
    _ID30390( var_2 );

    if ( isdefined( self._ID50387["startTime"] ) )
        self setanimtime( var_2, self._ID50387["startTime"] );

    var_9 = isdefined( var_1["inStairTransitionIn"] ) && var_1["inStairTransitionIn"];

    if ( var_9 )
        self _meth_85cb( 1 );

    var_10 = 0.05 * var_3 / var_5;
    childthread animscripts\stairs_utility::_ID48001( var_2, self.origin, self._ID50387, var_4[0], var_9, var_10 );
    thread animscripts\stairs_utility::_ID51670( var_2, var_4[0] );
    animscripts\shared::_ID11529( "runanim" );
    self._ID19386 = undefined;
    self._ID52558 = gettime();

    if ( var_9 )
        self._ID46268 = "in";
    else
        self._ID46268 = "out";

    self._ID50800 = undefined;
    self _meth_85cb( 0 );
    return 1;
}

_ID35606()
{
    self endon( "movemode" );
    var_0 = animscripts\stairs_utility::_ID54360();

    if ( !var_0 )
        self clearanim( %combatrun, 0.6 );
    else
        self clearanim( %body, 0.1 );

    if ( !var_0 && _ID33972() )
        var_1 = _ID16614();
    else
        var_1 = _ID16576();

    var_2 = _ID44977();
    _ID51873( var_1, var_2 );
    var_3 = 0;

    if ( self.leanamount > 0 && self.leanamount < 0.998 )
        var_3 = 1;
    else if ( self.leanamount < 0 && self.leanamount > -0.998 )
        var_3 = -1;

    var_4 = max( 0.2, var_2 );
    animscripts\notetracks::_ID11534( var_4, "runanim" );
}

_ID44977()
{
    var_0 = animscripts\stairs_utility::_ID47003();

    if ( var_0 == "none" && !animscripts\stairs_utility::_ID54360() )
        return 0.3;
    else
        return 0.1;
}

_ID51873( var_0, var_1 )
{
    var_2 = animscripts\stairs_utility::ismovingonstairs();
    var_3 = _ID16433();

    if ( !var_2 )
    {
        self clearanim( %h1_stairs, 0.1 );
        self setanimknoball( %combatrun, %body, 1, 0.2, var_3 );
    }

    self setflaggedanimknob( "runanim", var_0, 1, var_1, 1, 1 );
    _ID30390( var_0 );

    if ( !var_2 )
    {
        _ID32698( animscripts\utility::_ID16432( "move_b" ), animscripts\utility::_ID16432( "move_l" ), animscripts\utility::_ID16432( "move_r" ) );
        thread _ID32577( "run" );
    }
    else
    {
        self notify( "stop_move_anim_update" );
        self._ID39628 = undefined;
    }
}

_ID9354()
{
    self endon( "movemode" );
    self setflaggedanimknoball( "runanim", self._ID9352, %body, 1, 0.4, self._ID24424 );
    _ID30390( self._ID9352 );
    animscripts\shared::_ID11529( "runanim" );
}

_ID9353()
{
    self endon( "movemode" );
    var_0 = _ID16198();
    self setanimknob( var_0, 1, 0.4 );
    var_1 = "run";

    if ( animscripts\utility::_ID39998() )
        var_1 = "smg_crouch_run";

    thread _ID39742( "crouchrun", var_0, animscripts\utility::_ID22630( var_1, "crouch_b" ), animscripts\utility::_ID22630( var_1, "crouch_l" ), animscripts\utility::_ID22630( var_1, "crouch_r" ) );
    self setflaggedanimknoball( "runanim", %crouchrun, %body, 1, 0.2, self._ID24424 );
    _ID30390( undefined );
    animscripts\notetracks::_ID11534( 0.2, "runanim" );
}

_ID35604()
{
    var_0 = isdefined( self._ID7._ID2728 ) && self._ID7._ID2728 > gettime();
    var_0 = var_0 || isdefined( self.enemy ) && distancesquared( self.origin, self.enemy.origin ) < 65536;

    if ( var_0 )
    {
        if ( !animscripts\combat_utility::_ID24716( 0 ) )
            return 0;
    }
    else if ( !animscripts\combat_utility::_ID24716( 0.5 ) )
        return 0;

    if ( isdefined( self.grenade ) )
        return 0;

    if ( !self.facemotion || animscripts\stairs_utility::_ID54360() )
        return 0;

    if ( isdefined( self._ID11582 ) || isdefined( self._ID24935 ) )
        return 0;

    if ( _ID6890() && !animscripts\combat_utility::_ID24716( 0 ) )
        return 0;

    if ( !isdefined( self.pathgoalpos ) || distancesquared( self.origin, self.pathgoalpos ) < 65536 )
        return 0;

    var_1 = getdvarfloat( "ai_runReload_minLookahead", 320 );

    if ( var_1 > 0 && self.lookaheaddist < var_1 )
        return 0;

    var_2 = angleclamp180( self getmotionangle() );

    if ( abs( var_2 ) > 25 )
        return 0;

    if ( !animscripts\utility::_ID39992() )
        return 0;

    if ( !_ID30424() )
        return 0;

    if ( animscripts\utility::_ID33934() )
        animscripts\cqb::_ID8922();
    else
        _ID35607();

    self notify( "abort_reload" );
    self orientmode( "face default" );
    return 1;
}

_ID35607()
{
    self endon( "movemode" );
    self endon( "should_stairs_transition" );
    self orientmode( "face motion" );
    var_0 = "reload_" + animscripts\combat_utility::_ID16710();
    var_1 = animscripts\utility::_ID22630( "run", "reload" );

    if ( isarray( var_1 ) )
        var_1 = var_1[randomint( var_1.size )];

    var_2 = animscripts\combat_utility::_ID44708();
    self setflaggedanimknoballrestart( var_0, var_1, %body, 1, 0.25, var_2 );
    _ID30390( var_1 );
    self._ID39629 = 1;
    _ID32698( animscripts\utility::_ID16432( "move_b" ), animscripts\utility::_ID16432( "move_l" ), animscripts\utility::_ID16432( "move_r" ) );
    thread _ID32577( "run" );
    childthread animscripts\stairs_utility::_ID50503( var_1, 0, 0.3 );
    animscripts\shared::_ID11529( var_0 );
    self._ID39629 = undefined;
    self notify( "killThreadCheckStairsTransition" );
}

_ID30424()
{
    var_0 = self getanimtime( %walk_and_run_loops );
    var_1 = getanimlength( animscripts\utility::_ID22630( "run", "straight" ) ) / 3.0;
    var_0 *= 3.0;

    if ( var_0 > 3 )
        var_0 -= 2.0;
    else if ( var_0 > 2 )
        var_0 -= 1.0;

    if ( var_0 < 0.15 / var_1 )
        return 1;

    if ( var_0 > 1 - 0.3 / var_1 )
        return 1;

    return 0;
}

_ID32698( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 1;

    self setanimknoblimited( var_0, 1, 0.1, var_3, 1 );
    self setanimknoblimited( var_1, 1, 0.1, var_3, 1 );
    self setanimknoblimited( var_2, 1, 0.1, var_3, 1 );
}

_ID32577( var_0 )
{
    _ID39742( var_0, %combatrun_forward, %combatrun_backward, %combatrun_left, %combatrun_right );
}

_ID39742( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( self._ID39628 ) && self._ID39628 == var_0 )
        return;

    self notify( "stop_move_anim_update" );
    self._ID39628 = var_0;
    self._ID41419 = undefined;
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    self endon( "stop_move_anim_update" );

    for (;;)
    {
        _ID39776( var_1, var_2, var_3, var_4 );
        wait 0.05;
        waitframe;
    }
}

_ID39776( var_0, var_1, var_2, var_3 )
{
    if ( self.facemotion && !animscripts\utility::_ID33934() && !isdefined( self._ID39629 ) && !( isdefined( self._ID23165 ) && self._ID23165 ) )
    {
        if ( !isdefined( self._ID41419 ) )
        {
            self._ID41419 = 1;
            var_4 = 0.2;

            if ( isdefined( self._ID36641 ) )
                var_4 = self._ID36641;

            self setanim( var_0, 1, var_4, 1, 1 );
            self setanim( var_1, 0, var_4, 1, 1 );
            self setanim( var_2, 0, var_4, 1, 1 );
            self setanim( var_3, 0, var_4, 1, 1 );
        }
    }
    else
    {
        self._ID41419 = undefined;
        var_5 = animscripts\utility::_ID28805( self getmotionangle() );

        if ( isdefined( self._ID39629 ) )
        {
            var_5["back"] = 0.0;

            if ( var_5["front"] < 0.2 )
                var_5["front"] = 0.2;
        }

        var_4 = 0.2;

        if ( isdefined( self._ID36641 ) )
            var_4 = self._ID36641;

        var_6 = var_5["front"];

        if ( var_6 < 0.001 )
            var_6 = 0.001;

        self setanim( var_0, var_6, var_4, 1, 1 );
        self setanim( var_1, var_5["back"], var_4, 1, 1 );
        self setanim( var_2, var_5["left"], var_4, 1, 1 );
        self setanim( var_3, var_5["right"], var_4, 1, 1 );
    }
}

_ID35603()
{
    var_0 = isdefined( self._ID41303 ) && self._ID41303;
    var_1 = animscripts\utility::_ID20902( self.weapon );

    if ( var_0 == var_1 )
        return 0;

    if ( animscripts\stairs_utility::_ID54360() )
        return 0;

    if ( !isdefined( self.pathgoalpos ) || distancesquared( self.origin, self.pathgoalpos ) < 65536 )
        return 0;

    if ( animscripts\utility::_ID39997() )
        return 0;

    if ( self.weapon == self._ID834 )
    {
        if ( !var_0 )
            return 0;

        if ( !animscripts\utility::_ID20902( self._ID949 ) )
            return 0;
    }
    else
    {
        if ( var_0 )
            return 0;

        if ( animscripts\utility::_ID20902( self._ID834 ) )
            return 0;
    }

    var_2 = angleclamp180( self getmotionangle() );

    if ( abs( var_2 ) > 25 )
        return 0;

    if ( !_ID30424() )
        return 0;

    if ( var_0 )
        _ID33864( "shotgunPullout", animscripts\utility::_ID22630( "cqb", "shotgun_pullout" ), "gun_2_chest", "none", self._ID949, "shotgun_pickup" );
    else
        _ID33864( "shotgunPutaway", animscripts\utility::_ID22630( "cqb", "shotgun_putaway" ), "gun_2_back", "back", self._ID834, "shotgun_pickup" );

    self notify( "switchEnded" );
    return 1;
}

_ID33864( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "movemode" );
    self endon( "should_stairs_transition" );
    self setflaggedanimknoballrestart( var_0, var_1, %body, 1, 0.25 );
    _ID30390( var_1 );
    self._ID39629 = 1;
    _ID32698( animscripts\utility::_ID16432( "move_b" ), animscripts\utility::_ID16432( "move_l" ), animscripts\utility::_ID16432( "move_r" ) );
    thread _ID32577( "run" );
    thread _ID41564( var_0, var_2, var_3, var_4, var_5 );
    childthread animscripts\stairs_utility::_ID50503( var_1, 0, 0.3 );
    animscripts\notetracks::_ID11536( getanimlength( var_1 ) - 0.25, var_0, ::_ID20142 );
    self._ID39629 = undefined;
    self notify( "killThreadCheckStairsTransition" );
}

_ID20142( var_0 )
{
    if ( var_0 == "gun_2_chest" || var_0 == "gun_2_back" )
        return 1;
}

_ID41564( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "killanimscript" );
    self endon( "movemode" );
    self endon( "switchEnded" );
    self waittillmatch( var_0,  var_1  );
    animscripts\shared::_ID26732( self.weapon, var_2 );
    thread _ID33863( var_3 );
    self waittillmatch( var_0,  var_4  );
    self notify( "complete_weapon_switch" );
}

_ID33863( var_0 )
{
    self endon( "death" );
    _ID42237::_ID41068( "killanimscript", "movemode", "switchEnded", "complete_weapon_switch" );
    self._ID22034 = self.weapon;
    animscripts\shared::_ID26732( var_0, "right" );
    self._ID6323 = weaponclipsize( self.weapon );
}

_ID30390( var_0 )
{
    self._ID13770 = animscripts\face::_ID28062( var_0, "run", self._ID13770 );
}

_ID30379()
{
    self._ID13770 = undefined;
    self clearanim( %head, 0.2 );
}
