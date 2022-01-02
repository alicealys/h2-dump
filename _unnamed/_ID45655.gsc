// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main()
{
    anim._ID46067 = [];
    anim._ID46067["left"] = spawnstruct();
    anim._ID46067["left"]._ID4851 = %zodiac_aim_left;
    anim._ID46067["left"]._ID54696 = %zodiac_trans_r2l;
    anim._ID46067["left"]._ID52080 = spawnstruct();
    anim._ID46067["left"]._ID52080._ID589 = %zodiac_rightside_aim4;
    anim._ID46067["left"]._ID52080._ID7186 = %zodiac_rightside_aim5;
    anim._ID46067["left"]._ID52080._ID893 = %zodiac_rightside_aim6;
    anim._ID46067["left"]._ID868 = animscripts\utility::_ID3291( %zodiac_rightside_reload );
    anim._ID46067["left"].leftaimlimit = -35;
    anim._ID46067["left"].rightaimlimit = 25;
    anim._ID46067["left"]._ID19302 = %zodiac_rightside_idle;
    anim._ID46067["left"]._ID49044 = animscripts\utility::_ID3291( %zodiac_rightside_shift, %zodiac_rightside_react );
    anim._ID46067["right"] = spawnstruct();
    anim._ID46067["right"]._ID4851 = %zodiac_aim_right;
    anim._ID46067["right"]._ID54696 = %zodiac_trans_l2r;
    anim._ID46067["right"]._ID52080 = spawnstruct();
    anim._ID46067["right"]._ID52080._ID589 = %zodiac_leftside_aim4;
    anim._ID46067["right"]._ID52080._ID7186 = %zodiac_leftside_aim5;
    anim._ID46067["right"]._ID52080._ID893 = %zodiac_leftside_aim6;
    anim._ID46067["right"]._ID868 = animscripts\utility::_ID3291( %zodiac_leftside_reload, %zodiac_leftside_reloadb );
    anim._ID46067["right"]._ID19302 = %zodiac_leftside_idle;
    anim._ID46067["right"]._ID49044 = animscripts\utility::_ID3291( %zodiac_leftside_duck );
    anim._ID46067["right"].leftaimlimit = -15;
    anim._ID46067["right"].rightaimlimit = 40;
}

_ID53392()
{
    for (;;)
    {
        if ( isdefined( self._ID33810 ) )
        {

        }

        if ( isdefined( self.favoriteenemy ) )
        {

        }

        if ( isdefined( self._ID45197 ) )
        {

        }

        wait 0.05;
    }
}

_ID47650()
{
    self._ID7._ID35385 = undefined;
}

_ID37647()
{
    self endon( "killanimscript" );

    if ( !_ID42407::_ID13023( "transitioning_positions" ) )
        _ID42407::_ID13024( "transitioning_positions" );
    else
        _ID42407::_ID13021( "transitioning_positions" );

    animscripts\utility::_ID19930( "zodiac" );
    self._ID7._ID54255 = 0;

    if ( !isdefined( self._ID7._ID52880 ) )
        self._ID7._ID52880 = "left";

    self._ID7._ID50516 = gettime();
    self._ID7._ID48380 = gettime();
    childthread animscripts\shoot_behavior::_ID10054( "normal" );
    _ID45552();
    self._ID7._ID44280 = undefined;
    self._ID7._ID35385 = ::_ID46840;
    childthread _ID53614();
    childthread _ID47859();

    for (;;)
    {
        thread _ID54622();

        if ( _ID43264() )
        {
            _ID53060();
            continue;
        }

        if ( !_ID42407::_ID13019( "transitioning_positions" ) )
        {
            var_0 = _ID53915();

            if ( var_0 != "none" )
            {
                var_1 = anim._ID46067[self._ID7._ID52880]._ID54696;
                self._ID7._ID52880 = var_0;
                _ID42407::_ID13025( "transitioning_positions" );
                self _meth_859d( 0 );
                self setflaggedanimknoballrestart( "trans", var_1, %body, 1, 0.2 );
                animscripts\notetracks::_ID11534( getanimlength( var_1 ) - 0.3, "trans" );
                level._ID28543 _meth_859d();
                self._ID7._ID50516 = gettime();
                _ID42407::_ID13021( "transitioning_positions" );
                var_2 = anim._ID46067[self._ID7._ID52880]._ID52080._ID7186;
                self setanimknoballrestart( var_2, %body, 1, 0.2 );
                self notify( "boat_pose_change" );
                self._ID7._ID54255 = 0;
                _ID45552();
                continue;
            }
        }

        if ( _ID54234() )
        {
            _ID48214();
            continue;
        }

        thread _ID48915();

        if ( animscripts\combat_utility::_ID2425() )
        {
            _ID54097();
            continue;
        }
        else
            _ID48642();

        wait 0.1;
    }

    self waittill( "forever" );
}

_ID43264()
{
    if ( animscripts\combat_utility::_ID24716( 0 ) )
    {
        if ( !isdefined( self._ID7._ID44280 ) )
            self._ID7._ID44280 = gettime();

        animscripts\weaponlist::_ID29364();
    }

    if ( isdefined( self._ID7._ID44280 ) )
    {
        if ( gettime() - self._ID7._ID44280 > 2500 )
            return 1;

        if ( !_ID50829() )
            return 1;

        if ( self._ID7._ID21978 < gettime() - 1500 )
            return 1;
    }

    return 0;
}

_ID53060()
{
    var_0 = anim._ID46067[self._ID7._ID52880]._ID868;
    var_1 = var_0[randomint( var_0.size )];
    self._ID7._ID44280 = undefined;
    self setflaggedanimknoballrestart( "reload", var_1, %body, 1, 0.2 );
    animscripts\shared::_ID11529( "reload" );
    animscripts\weaponlist::_ID29364();
}

_ID54622()
{
    if ( !isdefined( self._ID7._ID48790 ) )
        return;

    self endon( "killanimscript" );
    self endon( "want_boat_idle" );
    wait 0.05;
    self notify( "end_boat_idle" );
    self._ID7._ID48790 = undefined;
    self clearanim( %zodiac_idle, 0.2 );
}

_ID48915()
{
    self notify( "want_boat_idle" );

    if ( isdefined( self._ID7._ID48790 ) )
        return;

    self._ID7._ID48790 = 1;
    self endon( "end_boat_idle" );
    var_0 = anim._ID46067[self._ID7._ID52880]._ID19302;

    if ( isdefined( var_0 ) )
        self setanimknob( var_0, 1, 0.2 );
}

_ID54234()
{
    if ( self._ID7._ID21978 > gettime() - 2000 )
        return 0;

    if ( level._ID14385["price_anim_on_boat"] )
        return 0;

    var_0 = gettime();

    if ( var_0 < self._ID7._ID48380 + 1500 )
        return 0;

    if ( var_0 < self._ID7._ID50516 + 1500 )
        return 0;

    if ( isdefined( self.enemy ) && self.enemy sightconetrace( self geteye() ) )
        return 0;

    if ( !isdefined( anim._ID46067[self._ID7._ID52880]._ID49044 ) )
        return 0;

    return 1;
}

_ID48214()
{
    var_0 = anim._ID46067[self._ID7._ID52880]._ID49044;
    var_1 = var_0[randomint( var_0.size )];

    for ( var_2 = 0; var_2 < 5; var_2++ )
    {
        if ( !isdefined( self._ID7._ID49002 ) || var_1 != self._ID7._ID49002 )
            break;

        var_1 = var_0[randomint( var_0.size )];
    }

    self setflaggedanimknoballrestart( "twitch", var_1, %body, 1, 0.2 );
    animscripts\shared::_ID11529( "twitch" );
    self._ID7._ID49002 = var_1;
    self._ID7._ID48380 = gettime();
}

_ID46840()
{
    if ( !isdefined( self.enemy ) || !self.enemy sightconetrace( self geteye() ) )
    {
        self._ID33785 = undefined;
        self._ID33810 = undefined;
        self._ID33816 = "none";
    }
    else
    {
        self._ID33785 = self.enemy;
        self._ID33810 = self.enemy getshootatpos();
        var_0 = distancesquared( self.origin, self.enemy.origin );

        if ( var_0 < 16000000 )
        {
            self._ID33816 = "burst";
            return;
        }

        self._ID33816 = "single";
    }
}

_ID53614()
{
    self endon( "killanimscript" );
    self._ID44895 = self.origin;
    self._ID49276 = ( 0, 0, 0 );

    for (;;)
    {
        wait 0.05;
        self._ID49276 = ( self.origin - self._ID44895 ) / 0.05;
        self._ID44895 = self.origin;
    }
}

_ID47077()
{
    self endon( "boat_pose_change" );
    wait(randomfloatrange( 0.5, 3.5 ));
}

_ID47859()
{
    self endon( "killanimscript" );

    for (;;)
    {
        if ( self._ID7._ID52880 == "left" )
            self._ID50176 = randomfloatrange( -20, 40 );
        else
            self._ID50176 = randomfloatrange( -40, 20 );

        _ID47077();
    }
}

_ID43018( var_0 )
{
    if ( !isdefined( self._ID33810 ) )
        return 0;

    var_1 = self._ID33810 - self._ID49276 * var_0;
    var_2 = animscripts\shared::_ID16102( var_1 );
    return var_2;
}

_ID50829()
{
    if ( !isdefined( self._ID33810 ) )
        return 0;

    var_0 = _ID51840();
    var_1 = anim._ID46067[self._ID7._ID52880];
    return var_0 >= var_1.leftaimlimit && var_0 <= var_1.rightaimlimit;
}

_ID51840()
{
    var_0 = 0;

    if ( isdefined( self._ID33810 ) )
    {
        var_0 = _ID43018( 0.1 );

        if ( self._ID7._ID52880 == "left" )
            var_0 = angleclamp180( var_0 + 8 );
        else
            var_0 = angleclamp180( var_0 + 2 );
    }
    else
        var_0 = self._ID50176;

    return var_0;
}

_ID48642()
{
    var_0 = 15;

    if ( !isdefined( self._ID33810 ) )
        var_0 = 5;

    var_1 = _ID51840();

    if ( abs( var_1 - self._ID7._ID54255 ) > var_0 )
    {
        if ( var_1 < self._ID7._ID54255 )
            var_1 = self._ID7._ID54255 - var_0;
        else
            var_1 = self._ID7._ID54255 + var_0;
    }

    var_2 = anim._ID46067[self._ID7._ID52880];

    if ( !_ID42407::_ID13019( "transitioning_positions" ) )
    {
        if ( var_1 < 0 )
        {
            var_3 = var_1 / var_2.leftaimlimit;

            if ( var_3 > 1 )
                var_3 = 1;

            self setanimknob( var_2._ID52080._ID7186, 1 - var_3, 0.1 );
            self setanim( var_2._ID52080._ID589, var_3, 0.1 );
        }
        else
        {
            var_3 = var_1 / var_2.rightaimlimit;

            if ( var_3 > 1 )
                var_3 = 1;

            self setanimknob( var_2._ID52080._ID7186, 1 - var_3, 0.1 );
            self setanim( var_2._ID52080._ID893, var_3, 0.1 );
        }

        self setanimknoball( var_2._ID4851, %zodiac_actions, 1, 0.2 );
    }

    self._ID7._ID54255 = var_1;
}

_ID51098()
{
    self endon( "killanimscript" );
    self endon( "end_shootUntilNeedToChangePose" );

    for (;;)
    {
        _ID48642();
        wait 0.1;
    }
}

_ID54097()
{
    thread _ID44448();
    self endon( "end_shootUntilNeedToChangePose" );
    thread _ID51098();
    animscripts\combat_utility::_ID33818();
    self notify( "end_shootUntilNeedToChangePose" );
}

_ID44448()
{
    self endon( "killanimscript" );
    self endon( "end_shootUntilNeedToChangePose" );
    var_0 = gettime() + 4000 + randomint( 2000 );

    for (;;)
    {
        if ( gettime() > var_0 || _ID53915() != "none" )
            break;

        if ( _ID43264() )
            break;

        wait 0.1;
    }

    self notify( "end_shootUntilNeedToChangePose" );
}

_ID53106()
{
    if ( self._ID7._ID50516 > gettime() - 2000 )
        return "none";

    if ( self._ID7._ID21978 > gettime() - 2000 )
        return "none";

    if ( !isdefined( self._ID33810 ) )
        return "none";

    var_0 = _ID43018( 0.5 );

    if ( self._ID7._ID52880 == "left" )
    {
        if ( var_0 > 15 && var_0 < 160 )
            return "right";
    }
    else if ( self._ID7._ID52880 == "right" )
    {
        if ( var_0 < -15 && var_0 > -160 )
            return "left";
    }

    return "none";
}

_ID53915()
{
    if ( isdefined( self._ID51079 ) )
        return _ID53106();

    if ( isdefined( self._ID49812 ) )
    {
        if ( self._ID7._ID52880 == self._ID49812 )
            return "none";

        return self._ID49812;
    }

    if ( self._ID7._ID52880 == "right" )
        return "left";

    return "none";
}

_ID45552()
{
    self._ID7._ID3291 = [];
    self._ID7._ID3291["fire"] = %exposed_shoot_auto_v3;

    if ( self._ID7._ID52880 == "left" )
    {
        self._ID7._ID3291["single"] = animscripts\utility::_ID3291( %zodiac_rightside_fire_single );
        self._ID7._ID3291["burst2"] = %zodiac_rightside_fire_burst;
        self._ID7._ID3291["burst3"] = %zodiac_rightside_fire_burst;
        self._ID7._ID3291["burst4"] = %zodiac_rightside_fire_burst;
        self._ID7._ID3291["burst5"] = %zodiac_rightside_fire_burst;
        self._ID7._ID3291["burst6"] = %zodiac_rightside_fire_burst;
        self._ID7._ID3291["semi2"] = %zodiac_rightside_fire_burst;
        self._ID7._ID3291["semi3"] = %zodiac_rightside_fire_burst;
        self._ID7._ID3291["semi4"] = %zodiac_rightside_fire_burst;
        self._ID7._ID3291["semi5"] = %zodiac_rightside_fire_burst;
        self._ID7._ID3291["semi6"] = %zodiac_rightside_fire_burst;
    }
    else
    {
        self._ID7._ID3291["single"] = animscripts\utility::_ID3291( %zodiac_leftside_fire_single );
        self._ID7._ID3291["burst2"] = %zodiac_leftside_fire_burst;
        self._ID7._ID3291["burst3"] = %zodiac_leftside_fire_burst;
        self._ID7._ID3291["burst4"] = %zodiac_leftside_fire_burst;
        self._ID7._ID3291["burst5"] = %zodiac_leftside_fire_burst;
        self._ID7._ID3291["burst6"] = %zodiac_leftside_fire_burst;
        self._ID7._ID3291["semi2"] = %zodiac_leftside_fire_burst;
        self._ID7._ID3291["semi3"] = %zodiac_leftside_fire_burst;
        self._ID7._ID3291["semi4"] = %zodiac_leftside_fire_burst;
        self._ID7._ID3291["semi5"] = %zodiac_leftside_fire_burst;
        self._ID7._ID3291["semi6"] = %zodiac_leftside_fire_burst;
    }
}
