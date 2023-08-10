// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("dog");

main()
{
    self endon( "killanimscript" );
    self clearanim( %root, 0.2 );
    self clearanim( %german_shepherd_run_stop, 0 );

    if ( !isdefined( self._id_C938 ) && !isdefined( self.skipstartmove ) && self.a.movement == "run" && ( !isdefined( self.disableexits ) || self.disableexits == 0 ) )
        startmove();

    thread _id_CFEF();
    self._id_C938 = undefined;
    self.skipstartmove = undefined;

    if ( self.a.movement == "run" )
    {
        var_0 = undefined;
        var_0 = _id_B0A1();
        self setanimrestart( %german_shepherd_run, var_0["center"], 0.2, 1 );
        self setanimrestart( %german_shepherd_run_lean_l, var_0["left"], 0.1, 1 );
        self setanimrestart( %german_shepherd_run_lean_r, var_0["right"], 0.1, 1 );
        self setflaggedanimknob( "dog_run", %german_shepherd_run_knob, 1, 0.2, self.moveplaybackrate );
        animscripts\notetracks::donotetracksfortime( 0.1, "dog_run" );
    }
    else
    {
        var_1 = %german_shepherd_walk;

        if ( isdefined( self.slowdog ) && self.slowdog == 1 )
            var_1 = %german_shepherd_walk_slow;

        self setflaggedanimrestart( "dog_walk", var_1, 1, 0.2, self.moveplaybackrate );
    }

    thread _id_C354();

    for (;;)
    {
        _id_A86E();

        if ( self.a.movement == "run" )
        {
            if ( self.disablearrivals == 0 )
                thread _id_AC98();

            common_scripts\utility::waittill_any( "run", "path_set" );
            self clearanim( %german_shepherd_run_stop, 0.1 );
        }
    }
}

_id_A86E()
{
    self endon( "killanimscript" );
    self endon( "stop_soon" );
    self.moveloopcleanupfunc = undefined;

    for (;;)
    {
        if ( self.disablearrivals )
            self.stopanimdistsq = 0;
        else
            self.stopanimdistsq = anim.dogstoppingdistsq;

        if ( isdefined( self.moveloopcleanupfunc ) )
        {
            self [[ self.moveloopcleanupfunc ]]();
            self.moveloopcleanupfunc = undefined;
        }

        if ( isdefined( self.moveloopoverridefunc ) )
        {
            self [[ self.moveloopoverridefunc ]]();
            continue;
        }

        _id_C444();
    }
}

_id_C444()
{
    self endon( "move_loop_restart" );
    var_0 = %german_shepherd_walk;

    if ( isdefined( self.slowdog ) && self.slowdog == 1 )
        var_0 = %german_shepherd_walk_slow;

    if ( self.a.movement == "run" )
    {
        var_1 = _id_B0A1();
        self clearanim( var_0, 0.3 );
        self setanim( %german_shepherd_run, var_1["center"], 0.2, 1 );
        self setanim( %german_shepherd_run_lean_l, var_1["left"], 0.2, 1 );
        self setanim( %german_shepherd_run_lean_r, var_1["right"], 0.2, 1 );
        self setflaggedanimknob( "dog_run", %german_shepherd_run_knob, 1, 0.2, self.moveplaybackrate );
        animscripts\notetracks::donotetracksfortime( 0.2, "dog_run" );
    }
    else
    {
        self clearanim( %german_shepherd_run_knob, 0.3 );
        var_0 = getwalkanim();

        if ( var_0 == %h2_german_shepherd_rotate_90l || var_0 == %h2_german_shepherd_rotate_90r )
        {
            self clearanim( %root, 0.2 );
            self animmode( "zonly_physics", 0 );
            self setflaggedanimrestart( "dog_walk", var_0, 1, 0.2, 1 );
            animscripts\notetracks::donotetracksfortime( getanimlength( var_0 ), "dog_walk" );
            self orientmode( "face motion" );
            self animmode( "none", 0 );
            self clearanim( %root, 0.2 );
        }
        else
        {
            self setflaggedanim( "dog_walk", var_0, 1, 0.2, self.moveplaybackrate );
            animscripts\notetracks::donotetracksfortime( 0.2, "dog_walk" );
        }
    }
}

_id_C354()
{
    self endon( "killanimscript" );
    self.ignorepathchange = undefined;

    for (;;)
    {
        self waittill( "path_changed", var_0, var_1 );

        if ( isdefined( self.ignorepathchange ) || isdefined( self.noturnanims ) )
            continue;

        if ( self.a.movement != "run" )
            continue;

        var_2 = angleclamp180( self.angles[1] - vectortoyaw( var_1 ) );
        var_3 = _id_D1C3( var_2 );

        if ( isdefined( var_3 ) )
        {
            self.turnanim = var_3;
            self.turntime = gettime();
            self.moveloopoverridefunc = ::_id_D40E;
            self notify( "move_loop_restart" );
        }
    }
}

_id_D1D1()
{
    self endon( "killanimscript" );
    self.ignorepathchange = undefined;

    for (;;)
    {
        if ( self.lookaheaddist > 40 && !isdefined( self.moveloopoverridefunc ) && !isdefined( self.ignorepathchange ) && !isdefined( self.noturnanims ) && self.a.movement == "run" )
        {
            var_0 = vectortoyaw( self.lookaheaddir );
            var_1 = angleclamp180( self.angles[1] - var_0 );
            var_2 = _id_D1C3( var_1 );

            if ( isdefined( var_2 ) )
            {
                self.turnanim = var_2;
                self.turntime = gettime();
                self.moveloopoverridefunc = ::_id_D40E;
                self notify( "move_loop_restart" );
            }
        }

        wait 0.05;
    }
}

_id_D1C3( var_0 )
{
    var_1 = undefined;

    if ( var_0 < -135 )
        var_1 = %german_shepherd_run_start_180_l;
    else if ( var_0 > 135 )
        var_1 = %german_shepherd_run_start_180_r;
    else if ( var_0 < -60 )
        var_1 = %german_shepherd_run_start_l;
    else if ( var_0 > 60 )
        var_1 = %german_shepherd_run_start_r;

    return var_1;
}

_id_D40E()
{
    self endon( "killanimscript" );
    self.moveloopoverridefunc = undefined;
    var_0 = self.turnanim;

    if ( gettime() > self.turntime + 50 )
        return;

    self animmode( "zonly_physics", 0 );
    self clearanim( %root, 0.2 );
    self.moveloopcleanupfunc = ::_id_ACCF;
    self.ignorepathchange = 1;
    self setflaggedanimrestart( "turnAnim", var_0, 1, 0.2, self.moveplaybackrate );
    self orientmode( "face current" );
    var_1 = getanimlength( var_0 ) * self.moveplaybackrate;
    animscripts\notetracks::donotetracksfortime( var_1 * 0.6, "turnAnim" );
    self.ignorepathchange = undefined;
    self orientmode( "face motion" );
    self animmode( "none", 0 );
    animscripts\notetracks::donotetracksfortime( var_1 * 0.25, "turnAnim" );
}

_id_ACCF()
{
    self.ignorepathchange = undefined;
    self orientmode( "face default" );
    self clearanim( %root, 0.2 );
    self animmode( "none", 0 );
}

_id_D283()
{
    self endon( "killanimscript" );

    for ( var_0 = 0; var_0 < 2; var_0++ )
    {
        var_1 = vectortoangles( self.lookaheaddir );
        self orientmode( "face angle", var_1 );
    }
}

_id_CD60()
{
    var_0 = self.origin;
    var_0 += maps\_utility::_id_C32D( self.lookaheaddir, anim.dogstartmovedist );
    var_1 = distancesquared( self.origin, self.pathgoalpos ) < anim.dogstartmovedist * anim.dogstartmovedist;

    if ( !var_1 && self maymovetopoint( var_0 ) )
    {
        var_2 = vectortoangles( self.lookaheaddir );
        var_3 = angleclamp180( var_2[1] - self.angles[1] );

        if ( var_3 >= 0 )
        {
            if ( var_3 < 45 )
                var_4 = 8;
            else if ( var_3 < 135 )
                var_4 = 6;
            else
                var_4 = 3;
        }
        else if ( var_3 > -45 )
            var_4 = 8;
        else if ( var_3 > -135 )
            var_4 = 4;
        else
            var_4 = 1;

        self setanimrestart( anim._id_B57D[var_4], 1, 0.2, 1 );
        var_5 = self.angles[1] + anim._id_AB4D[var_4];
        var_6 = angleclamp180( var_2[1] - var_5 );
        self orientmode( "face angle", self.angles[1] + var_6 );
        self animmode( "zonly_physics", 0 );
        var_7 = getanimlength( anim._id_B57D[var_4] ) * self.moveplaybackrate;
        animscripts\notetracks::donotetracksfortime( var_7 * 0.6, "turnAnim" );
        self orientmode( "face motion" );
        self animmode( "none", 0 );
        animscripts\notetracks::donotetracksfortime( var_7 * 0.25, "turnAnim" );
        self clearanim( %root, 0.2 );
    }
}

startmove()
{
    if ( isdefined( self.pathgoalpos ) )
    {
        wait 0.05;

        if ( isdefined( self.pathgoalpos ) )
        {
            _id_CD60();
            self clearanim( %root, 0.2 );
            return;
        }
    }

    self orientmode( "face default" );
    self setflaggedanimknobrestart( "dog_prerun", %german_shepherd_run_start, 1, 0.2, self.moveplaybackrate );
    animscripts\shared::donotetracks( "dog_prerun" );
    self animmode( "none", 0 );
    self clearanim( %root, 0.2 );
}

_id_AC98()
{
    self endon( "killanimscript" );
    self endon( "run" );
    self clearanim( %german_shepherd_run_knob, 0.1 );
    self setflaggedanimrestart( "stop_anim", %german_shepherd_run_stop, 1, 0.2, 1 );
    animscripts\shared::donotetracks( "stop_anim" );
}

_id_A90C( var_0, var_1 )
{
    maps\_utility::play_sound_on_tag_endon_death( var_0, "tag_eye" );

    if ( isalive( self ) )
        self notify( var_1 );
}

_id_CFEF()
{
    self endon( "killanimscript" );
    wait 0.2;

    for (;;)
    {
        var_0 = undefined;

        if ( isdefined( self.script_growl ) )
            var_0 = "anml_dog_growl";
        else if ( !isdefined( self.script_nobark ) )
            var_0 = "anml_dog_bark";

        if ( !isdefined( var_0 ) )
            break;

        thread _id_A90C( var_0, "randomRunSound" );
        self waittill( "randomRunSound" );
        wait( randomfloatrange( 0.1, 0.3 ) );
    }
}

_id_B0A1()
{
    var_0 = [];
    var_0["center"] = 0;
    var_0["left"] = 0;
    var_0["right"] = 0;

    if ( self.leanamount > 0 )
    {
        if ( self.leanamount < 0.95 )
            self.leanamount = 0.95;

        var_0["left"] = 0;
        var_0["right"] = ( 1 - self.leanamount ) * 20;

        if ( var_0["right"] > 1 )
            var_0["right"] = 1;
        else if ( var_0["right"] < 0 )
            var_0["right"] = 0;

        var_0["center"] = 1 - var_0["right"];
    }
    else if ( self.leanamount < 0 )
    {
        if ( self.leanamount > -0.95 )
            self.leanamount = -0.95;

        var_0["right"] = 0;
        var_0["left"] = ( 1 + self.leanamount ) * 20;

        if ( var_0["left"] > 1 )
            var_0["left"] = 1;

        if ( var_0["left"] < 0 )
            var_0["left"] = 0;

        var_0["center"] = 1 - var_0["left"];
    }
    else
    {
        var_0["left"] = 0;
        var_0["right"] = 0;
        var_0["center"] = 1;
    }

    return var_0;
}

getwalkanim()
{
    var_0 = %german_shepherd_walk;

    if ( isdefined( self.slowdog ) && self.slowdog == 1 )
    {
        var_0 = %german_shepherd_walk_slow;
        var_1 = vectortoangles( self.lookaheaddir );
        var_2 = angleclamp180( var_1[1] - self.angles[1] );

        if ( var_2 < -47 )
            var_0 = %h2_german_shepherd_rotate_90r;
        else if ( var_2 > 47 )
            var_0 = %h2_german_shepherd_rotate_90l;
    }

    return var_0;
}
