// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    anim._id_B3F3 = [];
    anim._id_B3F3["left"] = spawnstruct();
    anim._id_B3F3["left"].base = %zodiac_aim_left;
    anim._id_B3F3["left"]._id_D5A8 = %zodiac_trans_r2l;
    anim._id_B3F3["left"]._id_CB70 = spawnstruct();
    anim._id_B3F3["left"]._id_CB70.left = %zodiac_rightside_aim4;
    anim._id_B3F3["left"]._id_CB70.center = %zodiac_rightside_aim5;
    anim._id_B3F3["left"]._id_CB70.right = %zodiac_rightside_aim6;
    anim._id_B3F3["left"].reload = animscripts\utility::array( %zodiac_rightside_reload );
    anim._id_B3F3["left"].leftaimlimit = -35;
    anim._id_B3F3["left"].rightaimlimit = 25;
    anim._id_B3F3["left"].idle = %zodiac_rightside_idle;
    anim._id_B3F3["left"]._id_BF94 = animscripts\utility::array( %zodiac_rightside_shift, %zodiac_rightside_react );
    anim._id_B3F3["right"] = spawnstruct();
    anim._id_B3F3["right"].base = %zodiac_aim_right;
    anim._id_B3F3["right"]._id_D5A8 = %zodiac_trans_l2r;
    anim._id_B3F3["right"]._id_CB70 = spawnstruct();
    anim._id_B3F3["right"]._id_CB70.left = %zodiac_leftside_aim4;
    anim._id_B3F3["right"]._id_CB70.center = %zodiac_leftside_aim5;
    anim._id_B3F3["right"]._id_CB70.right = %zodiac_leftside_aim6;
    anim._id_B3F3["right"].reload = animscripts\utility::array( %zodiac_leftside_reload, %zodiac_leftside_reloadb );
    anim._id_B3F3["right"].idle = %zodiac_leftside_idle;
    anim._id_B3F3["right"]._id_BF94 = animscripts\utility::array( %zodiac_leftside_duck );
    anim._id_B3F3["right"].leftaimlimit = -15;
    anim._id_B3F3["right"].rightaimlimit = 40;
}

_id_D090()
{
    for (;;)
    {
        if ( isdefined( self.shootpos ) )
        {

        }

        if ( isdefined( self.favoriteenemy ) )
        {

        }

        if ( isdefined( self._id_B08D ) )
        {

        }

        wait 0.05;
    }
}

_id_BA22()
{
    self.a.specialshootbehavior = undefined;
}

think()
{
    self endon( "killanimscript" );

    if ( !maps\_utility::ent_flag_exist( "transitioning_positions" ) )
        maps\_utility::ent_flag_init( "transitioning_positions" );
    else
        maps\_utility::ent_flag_clear( "transitioning_positions" );

    animscripts\utility::initialize( "zodiac" );
    self.a._id_D3EF = 0;

    if ( !isdefined( self.a._id_CE90 ) )
        self.a._id_CE90 = "left";

    self.a._id_C554 = gettime();
    self.a._id_BCFC = gettime();
    childthread animscripts\shoot_behavior::decidewhatandhowtoshoot( "normal" );
    _id_B1F0();
    self.a._id_ACF8 = undefined;
    self.a.specialshootbehavior = ::_id_B6F8;
    childthread _id_D16E();
    childthread _id_BAF3();

    for (;;)
    {
        thread _id_D55E();

        if ( _id_A900() )
        {
            _id_CF44();
            continue;
        }

        if ( !maps\_utility::ent_flag( "transitioning_positions" ) )
        {
            var_0 = _id_D29B();

            if ( var_0 != "none" )
            {
                var_1 = anim._id_B3F3[self.a._id_CE90]._id_D5A8;
                self.a._id_CE90 = var_0;
                maps\_utility::ent_flag_set( "transitioning_positions" );
                self _meth_859D( 0 );
                self setflaggedanimknoballrestart( "trans", var_1, %body, 1, 0.2 );
                animscripts\notetracks::donotetracksfortime( getanimlength( var_1 ) - 0.3, "trans" );
                level.price _meth_859D();
                self.a._id_C554 = gettime();
                maps\_utility::ent_flag_clear( "transitioning_positions" );
                var_2 = anim._id_B3F3[self.a._id_CE90]._id_CB70.center;
                self setanimknoballrestart( var_2, %body, 1, 0.2 );
                self notify( "boat_pose_change" );
                self.a._id_D3EF = 0;
                _id_B1F0();
                continue;
            }
        }

        if ( _id_D3DA() )
        {
            _id_BC56();
            continue;
        }

        thread _id_BF13();

        if ( animscripts\combat_utility::aimedatshootentorpos() )
        {
            _id_D351();
            continue;
        }
        else
            _id_BE02();

        wait 0.1;
    }

    self waittill( "forever" );
}

_id_A900()
{
    if ( animscripts\combat_utility::needtoreload( 0 ) )
    {
        if ( !isdefined( self.a._id_ACF8 ) )
            self.a._id_ACF8 = gettime();

        animscripts\weaponlist::refillclip();
    }

    if ( isdefined( self.a._id_ACF8 ) )
    {
        if ( gettime() - self.a._id_ACF8 > 2500 )
            return 1;

        if ( !_id_C68D() )
            return 1;

        if ( self.a.lastshoottime < gettime() - 1500 )
            return 1;
    }

    return 0;
}

_id_CF44()
{
    var_0 = anim._id_B3F3[self.a._id_CE90].reload;
    var_1 = var_0[randomint( var_0.size )];
    self.a._id_ACF8 = undefined;
    self setflaggedanimknoballrestart( "reload", var_1, %body, 1, 0.2 );
    animscripts\shared::donotetracks( "reload" );
    animscripts\weaponlist::refillclip();
}

_id_D55E()
{
    if ( !isdefined( self.a._id_BE96 ) )
        return;

    self endon( "killanimscript" );
    self endon( "want_boat_idle" );
    wait 0.05;
    self notify( "end_boat_idle" );
    self.a._id_BE96 = undefined;
    self clearanim( %zodiac_idle, 0.2 );
}

_id_BF13()
{
    self notify( "want_boat_idle" );

    if ( isdefined( self.a._id_BE96 ) )
        return;

    self.a._id_BE96 = 1;
    self endon( "end_boat_idle" );
    var_0 = anim._id_B3F3[self.a._id_CE90].idle;

    if ( isdefined( var_0 ) )
        self setanimknob( var_0, 1, 0.2 );
}

_id_D3DA()
{
    if ( self.a.lastshoottime > gettime() - 2000 )
        return 0;

    if ( level.flag["price_anim_on_boat"] )
        return 0;

    var_0 = gettime();

    if ( var_0 < self.a._id_BCFC + 1500 )
        return 0;

    if ( var_0 < self.a._id_C554 + 1500 )
        return 0;

    if ( isdefined( self.enemy ) && self.enemy sightconetrace( self geteye() ) )
        return 0;

    if ( !isdefined( anim._id_B3F3[self.a._id_CE90]._id_BF94 ) )
        return 0;

    return 1;
}

_id_BC56()
{
    var_0 = anim._id_B3F3[self.a._id_CE90]._id_BF94;
    var_1 = var_0[randomint( var_0.size )];

    for ( var_2 = 0; var_2 < 5; var_2++ )
    {
        if ( !isdefined( self.a._id_BF6A ) || var_1 != self.a._id_BF6A )
            break;

        var_1 = var_0[randomint( var_0.size )];
    }

    self setflaggedanimknoballrestart( "twitch", var_1, %body, 1, 0.2 );
    animscripts\shared::donotetracks( "twitch" );
    self.a._id_BF6A = var_1;
    self.a._id_BCFC = gettime();
}

_id_B6F8()
{
    if ( !isdefined( self.enemy ) || !self.enemy sightconetrace( self geteye() ) )
    {
        self.shootent = undefined;
        self.shootpos = undefined;
        self.shootstyle = "none";
    }
    else
    {
        self.shootent = self.enemy;
        self.shootpos = self.enemy getshootatpos();
        var_0 = distancesquared( self.origin, self.enemy.origin );

        if ( var_0 < 16000000 )
        {
            self.shootstyle = "burst";
            return;
        }

        self.shootstyle = "single";
    }
}

_id_D16E()
{
    self endon( "killanimscript" );
    self._id_AF5F = self.origin;
    self._id_C07C = ( 0, 0, 0 );

    for (;;)
    {
        wait 0.05;
        self._id_C07C = ( self.origin - self._id_AF5F ) / 0.05;
        self._id_AF5F = self.origin;
    }
}

_id_B7E5()
{
    self endon( "boat_pose_change" );
    wait( randomfloatrange( 0.5, 3.5 ) );
}

_id_BAF3()
{
    self endon( "killanimscript" );

    for (;;)
    {
        if ( self.a._id_CE90 == "left" )
            self._id_C400 = randomfloatrange( -20, 40 );
        else
            self._id_C400 = randomfloatrange( -40, 20 );

        _id_B7E5();
    }
}

_id_A80A( var_0 )
{
    if ( !isdefined( self.shootpos ) )
        return 0;

    var_1 = self.shootpos - self._id_C07C * var_0;
    var_2 = animscripts\shared::getaimyawtopoint( var_1 );
    return var_2;
}

_id_C68D()
{
    if ( !isdefined( self.shootpos ) )
        return 0;

    var_0 = _id_CA80();
    var_1 = anim._id_B3F3[self.a._id_CE90];
    return var_0 >= var_1.leftaimlimit && var_0 <= var_1.rightaimlimit;
}

_id_CA80()
{
    var_0 = 0;

    if ( isdefined( self.shootpos ) )
    {
        var_0 = _id_A80A( 0.1 );

        if ( self.a._id_CE90 == "left" )
            var_0 = angleclamp180( var_0 + 8 );
        else
            var_0 = angleclamp180( var_0 + 2 );
    }
    else
        var_0 = self._id_C400;

    return var_0;
}

_id_BE02()
{
    var_0 = 15;

    if ( !isdefined( self.shootpos ) )
        var_0 = 5;

    var_1 = _id_CA80();

    if ( abs( var_1 - self.a._id_D3EF ) > var_0 )
    {
        if ( var_1 < self.a._id_D3EF )
            var_1 = self.a._id_D3EF - var_0;
        else
            var_1 = self.a._id_D3EF + var_0;
    }

    var_2 = anim._id_B3F3[self.a._id_CE90];

    if ( !maps\_utility::ent_flag( "transitioning_positions" ) )
    {
        if ( var_1 < 0 )
        {
            var_3 = var_1 / var_2.leftaimlimit;

            if ( var_3 > 1 )
                var_3 = 1;

            self setanimknob( var_2._id_CB70.center, 1 - var_3, 0.1 );
            self setanim( var_2._id_CB70.left, var_3, 0.1 );
        }
        else
        {
            var_3 = var_1 / var_2.rightaimlimit;

            if ( var_3 > 1 )
                var_3 = 1;

            self setanimknob( var_2._id_CB70.center, 1 - var_3, 0.1 );
            self setanim( var_2._id_CB70.right, var_3, 0.1 );
        }

        self setanimknoball( var_2.base, %zodiac_actions, 1, 0.2 );
    }

    self.a._id_D3EF = var_1;
}

_id_C79A()
{
    self endon( "killanimscript" );
    self endon( "end_shootUntilNeedToChangePose" );

    for (;;)
    {
        _id_BE02();
        wait 0.1;
    }
}

_id_D351()
{
    thread _id_ADA0();
    self endon( "end_shootUntilNeedToChangePose" );
    thread _id_C79A();
    animscripts\combat_utility::shootuntilshootbehaviorchange();
    self notify( "end_shootUntilNeedToChangePose" );
}

_id_ADA0()
{
    self endon( "killanimscript" );
    self endon( "end_shootUntilNeedToChangePose" );
    var_0 = gettime() + 4000 + randomint( 2000 );

    for (;;)
    {
        if ( gettime() > var_0 || _id_D29B() != "none" )
            break;

        if ( _id_A900() )
            break;

        wait 0.1;
    }

    self notify( "end_shootUntilNeedToChangePose" );
}

_id_CF72()
{
    if ( self.a._id_C554 > gettime() - 2000 )
        return "none";

    if ( self.a.lastshoottime > gettime() - 2000 )
        return "none";

    if ( !isdefined( self.shootpos ) )
        return "none";

    var_0 = _id_A80A( 0.5 );

    if ( self.a._id_CE90 == "left" )
    {
        if ( var_0 > 15 && var_0 < 160 )
            return "right";
    }
    else if ( self.a._id_CE90 == "right" )
    {
        if ( var_0 < -15 && var_0 > -160 )
            return "left";
    }

    return "none";
}

_id_D29B()
{
    if ( isdefined( self._id_C787 ) )
        return _id_CF72();

    if ( isdefined( self._id_C294 ) )
    {
        if ( self.a._id_CE90 == self._id_C294 )
            return "none";

        return self._id_C294;
    }

    if ( self.a._id_CE90 == "right" )
        return "left";

    return "none";
}

_id_B1F0()
{
    self.a.array = [];
    self.a.array["fire"] = %exposed_shoot_auto_v3;

    if ( self.a._id_CE90 == "left" )
    {
        self.a.array["single"] = animscripts\utility::array( %zodiac_rightside_fire_single );
        self.a.array["burst2"] = %zodiac_rightside_fire_burst;
        self.a.array["burst3"] = %zodiac_rightside_fire_burst;
        self.a.array["burst4"] = %zodiac_rightside_fire_burst;
        self.a.array["burst5"] = %zodiac_rightside_fire_burst;
        self.a.array["burst6"] = %zodiac_rightside_fire_burst;
        self.a.array["semi2"] = %zodiac_rightside_fire_burst;
        self.a.array["semi3"] = %zodiac_rightside_fire_burst;
        self.a.array["semi4"] = %zodiac_rightside_fire_burst;
        self.a.array["semi5"] = %zodiac_rightside_fire_burst;
        self.a.array["semi6"] = %zodiac_rightside_fire_burst;
    }
    else
    {
        self.a.array["single"] = animscripts\utility::array( %zodiac_leftside_fire_single );
        self.a.array["burst2"] = %zodiac_leftside_fire_burst;
        self.a.array["burst3"] = %zodiac_leftside_fire_burst;
        self.a.array["burst4"] = %zodiac_leftside_fire_burst;
        self.a.array["burst5"] = %zodiac_leftside_fire_burst;
        self.a.array["burst6"] = %zodiac_leftside_fire_burst;
        self.a.array["semi2"] = %zodiac_leftside_fire_burst;
        self.a.array["semi3"] = %zodiac_leftside_fire_burst;
        self.a.array["semi4"] = %zodiac_leftside_fire_burst;
        self.a.array["semi5"] = %zodiac_leftside_fire_burst;
        self.a.array["semi6"] = %zodiac_leftside_fire_burst;
    }
}
