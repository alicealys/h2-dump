// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID9444 = "none";
    self._ID33769 = undefined;
    self.cheat._ID48626 = 1;
    _ID34883();

    if ( isdefined( self._ID11803 ) )
        _ID22767();
    else
        _ID22783();
}

_ID46580()
{
    if ( self._ID29969._ID29965.size > 1 )
        return;

    self notify( "snowmobile_weapon_stance_change" );
    self notify( "end_shoot_while_driving" );
    self notify( "stopShooting" );
    _ID34894( 0 );
    animscripts\shared::_ID26732( self._ID834, "none" );
    thread _ID34885();
}

_ID34883()
{
    self._ID465 = 0;
    self._ID7._ID28253 = "crouch";
    _ID42407::_ID10973();
    self._ID52 = 0;
    self._ID16482 = ::_ID34882;
    self._ID35375 = ::_ID34890;
    self._ID11002 = 1;
}

_ID34882()
{
    self._ID52 = 1;
    self._ID16482 = undefined;
    self._ID35375 = undefined;
    self._ID7._ID35385 = undefined;
    self._ID11002 = undefined;
    _ID42407::_ID17508();
    self._ID25834 = undefined;
    self._ID9526["combat"] = undefined;
    self._ID9526["stop"] = undefined;
}

_ID22767()
{
    var_0 = self._ID29969._ID11785 || self._ID29969._ID29965.size == 1;
    _ID34894( var_0 );

    if ( var_0 )
    {
        animscripts\shared::_ID26732( self._ID834, "left" );
        self._ID894 = 90;
        self._ID590 = -90;
        animscripts\track::_ID32548( 1, 0.2 );
        thread _ID34899();
        thread _ID34886();
    }
    else
    {
        animscripts\shared::_ID26732( self._ID834, "none" );
        thread _ID34885();
    }

    _ID34884( "driver" );
}

_ID22783()
{
    _ID34895( self._ID29969._ID26297 );

    if ( self._ID29969._ID26297 )
    {
        self._ID894 = 180;
        self._ID590 = -180;
        self._ID10860 = 1;
        animscripts\track::_ID32548( 1, 0.2 );
        thread _ID34900();
        thread _ID34888();
    }
    else
        thread _ID34887();

    _ID34884( "passenger" );
}
#using_animtree("generic_human");

_ID34885()
{
    self endon( "death" );
    self endon( "killanimscript" );
    var_0 = "left2right";
    var_1 = [];
    var_1["left2right"] = getanimlength( animscripts\utility::_ID3153( "left2right" ) );
    var_1["right2left"] = getanimlength( animscripts\utility::_ID3153( "right2left" ) );
    self setanimknoball( %sm_turn, %body, 1, 0 );
    self setanim( animscripts\utility::_ID3153( "drive" ), 1, 0 );
    self setanimknob( animscripts\utility::_ID3153( var_0 ), 1, 0 );
    self setanimtime( animscripts\utility::_ID3153( var_0 ), 0.5 );

    for (;;)
    {
        if ( self._ID29969._ID36389 )
        {
            var_2 = 0.5 * ( 1 + _ID42413::_ID39650( self._ID29969 ) );
            var_3 = self getanimtime( animscripts\utility::_ID3153( var_0 ) );

            if ( var_0 == "right2left" )
                var_3 = 1 - var_3;

            var_4 = 20 * abs( var_3 - var_2 );

            if ( var_3 < var_2 )
            {
                var_0 = "left2right";
                var_4 *= var_1["left2right"];
            }
            else
            {
                var_0 = "right2left";
                var_4 *= var_1["right2left"];
                var_3 = 1 - var_3;
            }
        }
        else
        {
            var_0 = "left2right";
            var_4 = 0;
            var_3 = 0.5;
        }

        self setanimknoblimited( animscripts\utility::_ID3153( var_0 ), 1, 0.1, var_4 );
        self setanimtime( animscripts\utility::_ID3153( var_0 ), var_3 );
        wait 0.05;
    }
}

_ID34887()
{
    self endon( "death" );
    self endon( "killanimscript" );
    self setanimknoball( animscripts\utility::_ID3153( "hide" ), %body, 1, 0 );
    self setanimknob( animscripts\utility::_ID3153( "drive" ), 1, 0 );

    for (;;)
    {
        var_0 = _ID42413::_ID39650( self._ID29969 );
        self setanimlimited( %sm_lean, abs( var_0 ), 0.05 );

        if ( var_0 >= 0 )
            self setanimknoblimited( animscripts\utility::_ID3153( "lean_right" ), 1, 0.05 );
        else
            self setanimknoblimited( animscripts\utility::_ID3153( "lean_left" ), 1, 0.05 );

        wait 0.05;
    }
}

_ID34886()
{
    self endon( "death" );
    self endon( "killanimscript" );
    self endon( "snowmobile_weapon_stance_change" );
    var_0 = 0.05;
    var_1 = 0;
    self setanimknoball( %sm_aiming, %body, 1, 0 );

    for (;;)
    {
        if ( isdefined( self._ID40065 ) && isdefined( self._ID40065._ID1276 ) && self._ID40065._ID1276 > 0 )
            self setanimknob( animscripts\utility::_ID3153( "idle" ), 1, 0 );
        else
            self setanimknob( %h2_snowmobile_soap_waiting, 1, 0 );

        if ( self._ID9444 != "none" )
        {
            self waittill( "snowmobile_event_finished" );
            continue;
        }

        var_2 = _ID42413::_ID39650( self._ID29969 );
        var_3 = 1 - abs( var_2 );
        var_4 = max( 0, 0 - var_2 );
        var_5 = max( 0, var_2 );
        self setanimlimited( animscripts\utility::_ID3153( "straight_level_center" ), var_3, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "straight_level_left" ), var_4, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "straight_level_right" ), var_5, var_0 );

        if ( self._ID6323 <= 0 )
        {
            animscripts\weaponlist::_ID29364();
            var_1 = gettime() + 3000;
        }

        if ( var_1 <= gettime() )
            _ID34897();

        self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_left_center" ), var_3, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_left_left" ), var_4, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_left_right" ), var_5, var_0 );
        self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_right_center" ), var_3, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_right_left" ), var_4, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_right_right" ), var_5, var_0 );
        thread _ID34898();
        wait 0.05;
    }
}

_ID34888()
{
    self endon( "death" );
    self endon( "killanimscript" );
    var_0 = 0.05;
    self setanimknoball( %sm_aiming, %body, 1, 0 );
    self setanimknob( animscripts\utility::_ID3153( "idle" ), 1, 0 );

    for (;;)
    {
        if ( self._ID9444 != "none" )
        {
            self waittill( "snowmobile_event_finished" );
            continue;
        }

        if ( _ID34891() )
            continue;

        var_1 = _ID42413::_ID39650( self._ID29969 );
        var_2 = 1 - abs( var_1 );
        var_3 = max( 0, 0 - var_1 );
        var_4 = max( 0, var_1 );
        self setanimlimited( animscripts\utility::_ID3153( "straight_level_center" ), var_2, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "straight_level_left" ), var_3, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "straight_level_right" ), var_4, var_0 );
        _ID34897();
        self setanimlimited( animscripts\utility::_ID3153( "aim_left_center" ), var_2, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "aim_left_left" ), var_3, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "aim_left_right" ), var_4, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "aim_right_center" ), var_2, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "aim_right_left" ), var_3, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "aim_right_right" ), var_4, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_backleft_center" ), var_2, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_backleft_left" ), var_3, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_backleft_right" ), var_4, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_backright_center" ), var_2, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_backright_left" ), var_3, var_0 );
        self setanimlimited( animscripts\utility::_ID3153( "add_aim_backright_right" ), var_4, var_0 );

        if ( isplayernumber( self._ID322 ) )
            self updateplayersightaccuracy();

        wait 0.05;
        thread _ID34898();
    }
}

_ID34880( var_0 )
{
    self endon( "death" );
    self._ID29969._ID36389 = 0;
    self setflaggedanimknoblimitedrestart( "snowmobile_event", var_0, 1, 0.17 );
    animscripts\shared::_ID11529( "snowmobile_event", ::_ID34903 );
    self setanimknoblimited( animscripts\utility::_ID3153( "event_restore" ), 1, 0.1 );
    self._ID29969._ID36389 = 1;
    self._ID9444 = "none";
    self notify( "snowmobile_event_finished" );
}

_ID34884( var_0 )
{
    self endon( "death" );
    self endon( "killanimscript" );
    var_1 = self._ID29969;

    for (;;)
    {
        if ( var_1._ID13251["jump"][var_0] )
        {
            var_1._ID13251["jump"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );
            self._ID9444 = "jump";
            var_1._ID36389 = 0;
            self setflaggedanimknoblimitedrestart( "jump", animscripts\utility::_ID3153( "event_jump" ), 1, 0.17 );
        }

        if ( var_1._ID13251["bump"][var_0] )
        {
            var_1._ID13251["bump"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );

            if ( self._ID9444 != "bump_big" )
                thread _ID34880( animscripts\utility::_ID3153( "event_bump" ) );
        }

        if ( var_1._ID13251["bump_big"][var_0] )
        {
            var_1._ID13251["bump_big"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );
            self._ID9444 = "bump_big";
            thread _ID34880( animscripts\utility::_ID3153( "event_bump_big" ) );
        }

        if ( var_1._ID13251["sway_left"][var_0] )
        {
            var_1._ID13251["sway_left"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );

            if ( self._ID9444 != "bump_big" )
                thread _ID34880( animscripts\utility::_ID3153( "event_sway" )["left"] );
        }

        if ( var_1._ID13251["sway_right"][var_0] )
        {
            var_1._ID13251["sway_right"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );

            if ( self._ID9444 != "bump_big" )
                thread _ID34880( animscripts\utility::_ID3153( "event_sway" )["right"] );
        }

        wait 0.05;
    }
}

_ID34897()
{
    self notify( "want_shoot_while_driving" );
    self setanim( %sm_add_fire, 1, 0.2 );

    if ( isdefined( self._ID33769 ) )
        return;

    self._ID33769 = 1;
    thread _ID34878();
    thread _ID34896();
}

_ID34898()
{
    self endon( "killanimscript" );
    self endon( "want_shoot_while_driving" );
    wait 0.05;
    self notify( "end_shoot_while_driving" );
    self._ID33769 = undefined;
    self clearanim( %sm_add_fire, 0.2 );
}

_ID34878()
{
    self endon( "killanimscript" );
    self endon( "end_shoot_while_driving" );
    self endon( "snowmobile_weapon_stance_change" );
    self._ID7._ID35385 = ::_ID34904;
    _ID34879();
    self._ID33769 = undefined;
}

_ID34879()
{
    self endon( "snowmobile_event_occurred" );
    self endon( "snowmobile_weapon_stance_change" );
    animscripts\shoot_behavior::_ID10054( "normal" );
}

_ID34904()
{
    if ( !isdefined( self._ID322 ) )
    {
        self._ID33785 = undefined;
        self._ID33810 = undefined;
        self._ID33816 = "none";
        return;
    }

    self._ID33785 = self._ID322;
    self._ID33810 = self._ID322 getshootatpos();
    var_0 = distancesquared( self._ID740, self._ID322._ID740 );

    if ( var_0 < 1000000 )
        self._ID33816 = "full";
    else if ( var_0 < 4000000 )
        self._ID33816 = "burst";
    else
        self._ID33816 = "single";

    if ( isdefined( self._ID322._ID40065 ) )
    {
        var_1 = 0.5;
        var_2 = self._ID33785._ID40065;
        var_3 = self._ID29969;
        var_4 = var_3._ID740 - var_2._ID740;
        var_5 = anglestoforward( var_2._ID65 );
        var_6 = anglestoright( var_2._ID65 );
        var_7 = vectordot( var_4, var_5 );

        if ( var_7 < 0 )
        {
            var_8 = var_2 vehicle_getspeed() * var_1;
            var_8 *= 17.6;

            if ( var_8 > 50 )
            {
                var_9 = vectordot( var_4, var_6 );
                var_9 /= 3;

                if ( var_9 > 128 )
                    var_9 = 128;
                else if ( var_9 < -128 )
                    var_9 = -128;

                if ( var_9 > 0 )
                    var_9 = 128 - var_9;
                else
                    var_9 = -128 - var_9;

                self._ID33785 = undefined;
                self._ID33810 = var_2._ID740 + var_8 * var_5 + var_9 * var_6;
                return;
            }
        }
    }
}

_ID34896()
{
    self endon( "killanimscript" );
    self endon( "end_shoot_while_driving" );
    self notify( "doing_shootWhileDriving" );
    self endon( "doing_shootWhileDriving" );

    for (;;)
    {
        if ( !self._ID6323 )
        {
            wait 0.5;
            continue;
        }

        animscripts\combat_utility::_ID33818();
    }
}

_ID34891()
{
    if ( !self._ID29969._ID36389 )
        return 0;

    if ( !animscripts\combat_utility::_ID24716( 0 ) )
        return 0;

    if ( !animscripts\utility::_ID39992() )
        return 0;

    _ID34892();
    self notify( "abort_reload" );
    return 1;
}

_ID34892()
{
    self endon( "snowmobile_event_occurred" );
    self._ID36450 = 1;
    self waittill( "start_blending_reload" );
    self setanim( %sm_aiming, 0, 0.25 );
    self setflaggedanimrestart( "gun_down", animscripts\utility::_ID3153( "gun_down" ), 1, 0.25 );
    animscripts\shared::_ID11529( "gun_down" );
    self clearanim( animscripts\utility::_ID3153( "gun_down" ), 0 );
    self setflaggedanimknoballrestart( "reload_anim", animscripts\utility::_ID3153( "reload" ), %body, 1, 0.25 );
    animscripts\shared::_ID11529( "reload_anim" );
    self clearanim( %sm_reload, 0.2 );
    self setflaggedanimrestart( "gun_up", animscripts\utility::_ID3153( "gun_up" ), 1, 0.25 );
    self._ID17515 = 1;
    animscripts\shared::_ID11529( "gun_up", ::_ID34902 );
    self._ID36450 = undefined;
    self clearanim( %sm_reload, 0.1 );
    self setanim( %sm_aiming, 1, 0.1 );

    if ( isdefined( self._ID17515 ) )
    {
        self._ID17515 = undefined;
        animscripts\shared::_ID11529( "gun_up", ::_ID34901 );
        self clearanim( animscripts\utility::_ID3153( "gun_up" ), 0 );
    }
}

_ID34902( var_0 )
{
    if ( var_0 == "start_aim" )
        return 1;
}

_ID34901( var_0 )
{
    if ( var_0 == "end" )
        return 1;
}

_ID34903( var_0 )
{
    if ( var_0 == "start_lean" )
        return 1;
}

_ID34899()
{
    self endon( "killanimscript" );
    self endon( "stop tracking" );
    self endon( "snowmobile_weapon_stance_change" );
    var_0 = 0.05;
    var_1 = 8;
    var_2 = 0;
    var_3 = 0;
    var_4 = 1;

    for (;;)
    {
        animscripts\track::_ID19507();
        var_5 = ( self._ID740[0], self._ID740[1], self geteye()[2] );
        var_6 = self._ID33810;

        if ( isdefined( self._ID33785 ) )
            var_6 = self._ID33785 getshootatpos();

        if ( !isdefined( var_6 ) )
        {
            var_3 = 0;
            var_7 = self getanglestolikelyenemypath();

            if ( isdefined( var_7 ) )
                var_3 = angleclamp180( self._ID65[1] - var_7[1] );
        }
        else
        {
            var_8 = var_6 - var_5;
            var_9 = vectortoangles( var_8 );
            var_3 = self._ID65[1] - var_9[1];
            var_3 = angleclamp180( var_3 );
        }

        if ( var_3 > self._ID894 || var_3 < self._ID590 )
            var_3 = 0;

        if ( var_4 )
            var_4 = 0;
        else
        {
            var_10 = var_3 - var_2;

            if ( abs( var_10 ) > var_1 )
                var_3 = var_2 + var_1 * _ID42237::_ID34160( var_10 );
        }

        var_2 = var_3;
        var_11 = min( max( 0 - var_3, 0 ), 90 ) / 90 * self._ID7._ID2433;
        var_12 = min( max( var_3, 0 ), 90 ) / 90 * self._ID7._ID2433;
        self setanimlimited( %sm_aim_4, var_11, var_0 );
        self setanimlimited( %sm_aim_6, var_12, var_0 );
        wait 0.05;
    }
}

_ID34900()
{
    self endon( "killanimscript" );
    self endon( "stop tracking" );
    var_0 = 0.05;
    var_1 = 5;
    var_2 = 20;
    var_3 = 15;
    var_4 = 40;
    var_5 = 30;
    var_6 = 0;
    var_7 = 0;
    var_8 = 1;

    for (;;)
    {
        animscripts\track::_ID19507();
        var_9 = ( self._ID740[0], self._ID740[1], self geteye()[2] );
        var_10 = self._ID33810;

        if ( isdefined( self._ID33785 ) )
            var_10 = self._ID33785 getshootatpos();

        if ( !isdefined( var_10 ) )
        {
            var_7 = 0;
            var_11 = self getanglestolikelyenemypath();

            if ( isdefined( var_11 ) )
                var_7 = angleclamp180( self._ID65[1] - var_11[1] );
        }
        else
        {
            var_12 = var_10 - var_9;
            var_13 = vectortoangles( var_12 );
            var_7 = self._ID65[1] - var_13[1];
            var_7 = angleclamp180( var_7 );
        }

        if ( isdefined( self._ID36450 ) || var_7 > 0 && ( var_7 - self._ID894 ) * self._ID10860 > 0 || var_7 < 0 && ( var_7 - self._ID590 ) * self._ID10860 < 0 )
            var_7 = 0;

        if ( var_8 )
            var_8 = 0;
        else
        {
            if ( var_6 < -180 + var_4 && var_7 > 180 - var_5 )
                var_7 = -179;

            if ( var_6 > 180 - var_4 && var_7 < -180 + var_5 )
                var_7 = 179;

            var_14 = var_7 - var_6;
            var_15 = ( var_2 - var_1 ) * abs( var_14 ) / 180 + var_1;

            if ( isdefined( self._ID36450 ) )
            {
                var_15 = var_3;

                if ( abs( var_6 ) < 45 )
                    self notify( "start_blending_reload" );
            }

            if ( abs( var_14 ) > var_15 )
                var_7 = var_6 + var_15 * _ID42237::_ID34160( var_14 );
        }

        var_6 = var_7;
        var_16 = max( -90 - var_7, 0 ) / 90 * self._ID7._ID2433;
        var_17 = min( max( 0 - var_7, 0 ), 90 ) / 90 * self._ID7._ID2433;
        var_18 = max( 90 - abs( var_7 ), 0 ) / 90 * self._ID7._ID2433;
        var_19 = min( max( var_7, 0 ), 90 ) / 90 * self._ID7._ID2433;
        var_20 = max( -90 + var_7, 0 ) / 90 * self._ID7._ID2433;
        self setanimlimited( %sm_aim_1, var_16, var_0 );
        self setanimlimited( %sm_aim_4_delta, var_17, var_0 );
        self setanimlimited( %sm_aim_5_delta, var_18, var_0 );
        self setanimlimited( %sm_aim_6_delta, var_19, var_0 );
        self setanimlimited( %sm_aim_3, var_20, var_0 );
        wait 0.05;
    }
}

_ID34881( var_0, var_1, var_2 )
{
    var_3 = undefined;
    var_4 = undefined;
    var_5 = 0;

    for ( var_6 = 0; var_6 < var_0.size; var_6++ )
    {
        var_7 = animscripts\utility::_ID1735( var_2 - var_1[var_6] );

        if ( !isdefined( var_3 ) || var_7 < var_5 )
        {
            var_4 = var_3;
            var_3 = var_0[var_6];
            var_5 = var_7;
            continue;
        }

        if ( !isdefined( var_4 ) )
            var_4 = var_0[var_6];
    }

    var_8 = var_3;

    if ( isdefined( anim._ID28535 ) && var_8 == anim._ID28535 && gettime() - anim._ID28536 < 500 )
        var_8 = var_4;

    anim._ID28535 = var_8;
    anim._ID28536 = gettime();
    return var_8;
}

_ID34877()
{
    var_0 = self._ID29969;
    var_1 = var_0._ID28502;
    var_1 = ( var_1[0], var_1[1], randomfloatrange( 200, 400 ) ) * 0.75;

    if ( lengthsquared( var_1 ) > 1000000 )
        var_1 = vectornormalize( var_1 ) * 1000;

    var_2 = spawn( "script_origin", self._ID740 );
    var_2 moveslide( ( 0, 0, 40 ), 15, var_1 );
    self linkto( var_2 );
    var_2 thread _ID10350();
}

_ID34890()
{
    if ( isdefined( self._ID29969 ) && self._ID29969._ID1282 == "snowmobile_friendly" )
    {
        animscripts\death::_ID27200( level._ID30895["snowmobile"]["small"]["death"]["back"] );
        return 1;
    }

    var_0 = [];
    var_0[0] = level._ID30895["snowmobile"]["small"]["death"]["back"];
    var_0[1] = level._ID30895["snowmobile"]["small"]["death"]["right"];
    var_0[2] = level._ID30895["snowmobile"]["small"]["death"]["left"];
    var_1 = [];
    var_1[0] = -180;
    var_1[1] = -90;
    var_1[2] = 90;
    var_2 = _ID34881( var_0, var_1, self._ID259 );
    animscripts\death::_ID27200( var_2 );
    return 1;
}

_ID34876()
{
    var_0 = self._ID29969;

    if ( !isdefined( var_0 ) )
        return _ID34890();

    var_1 = var_0._ID28502;
    _ID34877();
    var_2 = vectortoangles( var_1 );
    var_3 = angleclamp180( var_2[1] - self._ID65[1] );
    var_4 = [];
    var_4[0] = level._ID30895["snowmobile"]["big"]["death"]["back"];
    var_4[1] = level._ID30895["snowmobile"]["big"]["death"]["left"];
    var_4[2] = level._ID30895["snowmobile"]["big"]["death"]["front"];
    var_4[3] = level._ID30895["snowmobile"]["big"]["death"]["right"];
    var_5 = [];
    var_5[0] = -180;
    var_5[1] = -90;
    var_5[2] = 0;
    var_5[3] = 90;
    var_6 = _ID34881( var_4, var_5, var_3 );
    animscripts\death::_ID27200( var_6 );
    return 1;
}

_ID53889()
{
    var_0 = self._ID29969;

    if ( !isdefined( var_0 ) )
        return _ID34890();

    _ID34877();
    var_1 = [];
    var_1[0] = level._ID30895["snowmobile"]["big"]["death"]["back"];
    var_1[1] = level._ID30895["snowmobile"]["big"]["death"]["right"];
    var_1[2] = level._ID30895["snowmobile"]["big"]["death"]["left"];
    var_2 = [];
    var_2[0] = self._ID65[2];
    var_2[1] = self._ID65[2] - 90;
    var_2[2] = self._ID65[2] + 90;
    var_3 = _ID34881( var_1, var_2, self._ID65[2] );
    self unlink();
    animscripts\death::_ID27200( var_3 );
    return 1;
}

_ID10350()
{
    var_0 = self._ID740;

    for ( var_1 = 0; var_1 < 60; var_1++ )
    {
        wait 0.05;
        var_0 = self._ID740;
    }

    wait 3;

    if ( isdefined( self ) )
        self delete();
}

_ID34893( var_0 )
{
    self._ID7._ID3291["idle"] = level._ID30895["snowmobile"][var_0]["idle"];
    self._ID7._ID3291["drive"] = level._ID30895["snowmobile"][var_0]["drive"];
    self._ID7._ID3291["fire"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["single"] = animscripts\utility::_ID3291( level._ID30895["snowmobile"][var_0]["single"] );
    self._ID7._ID3291["burst2"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["burst3"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["burst4"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["burst5"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["burst6"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["semi2"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["semi3"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["semi4"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["semi5"] = level._ID30895["snowmobile"][var_0]["fire"];
}

_ID34894( var_0 )
{
    self._ID7._ID3291 = [];
    _ID34893( "driver" );
    self._ID7._ID3291["left2right"] = level._ID30895["snowmobile"]["driver"]["left2right"];
    self._ID7._ID3291["right2left"] = level._ID30895["snowmobile"]["driver"]["right2left"];
    self._ID7._ID3291["straight_level_left"] = level._ID30895["snowmobile"]["driver"]["straight_level"]["left"];
    self._ID7._ID3291["straight_level_center"] = level._ID30895["snowmobile"]["driver"]["straight_level"]["center"];
    self._ID7._ID3291["straight_level_right"] = level._ID30895["snowmobile"]["driver"]["straight_level"]["right"];
    self._ID7._ID3291["add_aim_left_left"] = level._ID30895["snowmobile"]["driver"]["add_aim_left"]["left"];
    self._ID7._ID3291["add_aim_left_center"] = level._ID30895["snowmobile"]["driver"]["add_aim_left"]["center"];
    self._ID7._ID3291["add_aim_left_right"] = level._ID30895["snowmobile"]["driver"]["add_aim_left"]["right"];
    self._ID7._ID3291["add_aim_right_left"] = level._ID30895["snowmobile"]["driver"]["add_aim_right"]["left"];
    self._ID7._ID3291["add_aim_right_center"] = level._ID30895["snowmobile"]["driver"]["add_aim_right"]["center"];
    self._ID7._ID3291["add_aim_right_right"] = level._ID30895["snowmobile"]["driver"]["add_aim_right"]["right"];

    if ( var_0 )
    {
        self._ID7._ID3291["event_jump"] = level._ID30895["snowmobile"]["driver"]["shoot_jump"];
        self._ID7._ID3291["event_bump"] = level._ID30895["snowmobile"]["driver"]["shoot_bump"];
        self._ID7._ID3291["event_bump_big"] = level._ID30895["snowmobile"]["driver"]["shoot_bump_big"];
        self._ID7._ID3291["event_sway"] = [];
        self._ID7._ID3291["event_sway"]["left"] = level._ID30895["snowmobile"]["driver"]["shoot_sway_left"];
        self._ID7._ID3291["event_sway"]["right"] = level._ID30895["snowmobile"]["driver"]["shoot_sway_right"];
        self._ID7._ID3291["event_restore"] = %sm_aiming;
    }
    else
    {
        self._ID7._ID3291["event_jump"] = level._ID30895["snowmobile"]["driver"]["drive_jump"];
        self._ID7._ID3291["event_bump"] = level._ID30895["snowmobile"]["driver"]["drive_bump"];
        self._ID7._ID3291["event_bump_big"] = level._ID30895["snowmobile"]["driver"]["drive_bump_big"];
        self._ID7._ID3291["event_sway"] = [];
        self._ID7._ID3291["event_sway"]["left"] = level._ID30895["snowmobile"]["driver"]["drive_sway_left"];
        self._ID7._ID3291["event_sway"]["right"] = level._ID30895["snowmobile"]["driver"]["drive_sway_right"];
        self._ID7._ID3291["event_restore"] = %sm_turn;
    }
}

_ID34895( var_0 )
{
    self._ID7._ID3291 = [];
    _ID34893( "passenger" );
    self._ID7._ID3291["hide"] = level._ID30895["snowmobile"]["passenger"]["hide"];
    self._ID7._ID3291["lean_left"] = level._ID30895["snowmobile"]["passenger"]["add_lean"]["left"];
    self._ID7._ID3291["lean_right"] = level._ID30895["snowmobile"]["passenger"]["add_lean"]["right"];
    self._ID7._ID3291["reload"] = level._ID30895["snowmobile"]["passenger"]["reload"];
    self._ID7._ID3291["gun_up"] = level._ID30895["snowmobile"]["passenger"]["gun_up"];
    self._ID7._ID3291["gun_down"] = level._ID30895["snowmobile"]["passenger"]["gun_down"];
    self._ID7._ID3291["aim_left_left"] = level._ID30895["snowmobile"]["passenger"]["aim_left"]["left"];
    self._ID7._ID3291["aim_left_center"] = level._ID30895["snowmobile"]["passenger"]["aim_left"]["center"];
    self._ID7._ID3291["aim_left_right"] = level._ID30895["snowmobile"]["passenger"]["aim_left"]["right"];
    self._ID7._ID3291["aim_right_left"] = level._ID30895["snowmobile"]["passenger"]["aim_right"]["left"];
    self._ID7._ID3291["aim_right_center"] = level._ID30895["snowmobile"]["passenger"]["aim_right"]["center"];
    self._ID7._ID3291["aim_right_right"] = level._ID30895["snowmobile"]["passenger"]["aim_right"]["right"];
    self._ID7._ID3291["add_aim_backleft_left"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backleft"]["left"];
    self._ID7._ID3291["add_aim_backleft_center"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backleft"]["center"];
    self._ID7._ID3291["add_aim_backleft_right"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backleft"]["right"];
    self._ID7._ID3291["add_aim_backright_left"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backright"]["left"];
    self._ID7._ID3291["add_aim_backright_center"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backright"]["center"];
    self._ID7._ID3291["add_aim_backright_right"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backright"]["right"];
    self._ID7._ID3291["straight_level_left"] = level._ID30895["snowmobile"]["passenger"]["straight_level"]["left"];
    self._ID7._ID3291["straight_level_center"] = level._ID30895["snowmobile"]["passenger"]["straight_level"]["center"];
    self._ID7._ID3291["straight_level_right"] = level._ID30895["snowmobile"]["passenger"]["straight_level"]["right"];

    if ( var_0 )
    {
        self._ID7._ID3291["event_jump"] = level._ID30895["snowmobile"]["passenger"]["drive_jump"];
        self._ID7._ID3291["event_bump"] = level._ID30895["snowmobile"]["passenger"]["drive_bump"];
        self._ID7._ID3291["event_bump_big"] = level._ID30895["snowmobile"]["passenger"]["drive_bump_big"];
        self._ID7._ID3291["event_sway"] = [];
        self._ID7._ID3291["event_sway"]["left"] = level._ID30895["snowmobile"]["passenger"]["drive_sway_left"];
        self._ID7._ID3291["event_sway"]["right"] = level._ID30895["snowmobile"]["passenger"]["drive_sway_right"];
        self._ID7._ID3291["event_restore"] = %sm_aiming;
    }
    else
    {
        self._ID7._ID3291["event_jump"] = level._ID30895["snowmobile"]["passenger"]["hide_jump"];
        self._ID7._ID3291["event_bump"] = level._ID30895["snowmobile"]["passenger"]["hide_bump"];
        self._ID7._ID3291["event_bump_big"] = level._ID30895["snowmobile"]["passenger"]["hide_bump_big"];
        self._ID7._ID3291["event_sway"] = [];
        self._ID7._ID3291["event_sway"]["left"] = level._ID30895["snowmobile"]["passenger"]["hide_sway_left"];
        self._ID7._ID3291["event_sway"]["right"] = level._ID30895["snowmobile"]["passenger"]["hide_sway_right"];
        self._ID7._ID3291["event_restore"] = %sm_turn;
    }
}
