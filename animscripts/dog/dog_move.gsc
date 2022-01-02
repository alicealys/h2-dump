// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

main()
{
    self endon( "killanimscript" );
    self clearanim( %root, 0.2 );
    self clearanim( %german_shepherd_run_stop, 0 );

    if ( !isdefined( self._ID51512 ) && !isdefined( self._ID34246 ) && self._ID7._ID24414 == "run" && ( !isdefined( self._ID11025 ) || self._ID11025 == 0 ) )
        _ID36143();

    thread _ID53231();
    self._ID51512 = undefined;
    self._ID34246 = undefined;

    if ( self._ID7._ID24414 == "run" )
    {
        var_0 = undefined;
        var_0 = _ID45217();
        self setanimrestart( %german_shepherd_run, var_0["center"], 0.2, 1 );
        self setanimrestart( %german_shepherd_run_lean_l, var_0["left"], 0.1, 1 );
        self setanimrestart( %german_shepherd_run_lean_r, var_0["right"], 0.1, 1 );
        self setflaggedanimknob( "dog_run", %german_shepherd_run_knob, 1, 0.2, self._ID24424 );
        animscripts\notetracks::_ID11534( 0.1, "dog_run" );
    }
    else
    {
        var_1 = %german_shepherd_walk;

        if ( isdefined( self.slowdog ) && self.slowdog == 1 )
            var_1 = %german_shepherd_walk_slow;

        self setflaggedanimrestart( "dog_walk", var_1, 1, 0.2, self._ID24424 );
    }

    thread _ID50004();

    for (;;)
    {
        _ID43118();

        if ( self._ID7._ID24414 == "run" )
        {
            if ( self._ID10998 == 0 )
                thread _ID44184();

            _ID42237::_ID41068( "run", "path_set" );
            self clearanim( %german_shepherd_run_stop, 0.1 );
        }
    }
}

_ID43118()
{
    self endon( "killanimscript" );
    self endon( "stop_soon" );
    self._ID24408 = undefined;

    for (;;)
    {
        if ( self._ID10998 )
            self.stopanimdistsq = 0;
        else
            self.stopanimdistsq = anim._ID11489;

        if ( isdefined( self._ID24408 ) )
        {
            self [[ self._ID24408 ]]();
            self._ID24408 = undefined;
        }

        if ( isdefined( self._ID24409 ) )
        {
            self [[ self._ID24409 ]]();
            continue;
        }

        _ID50244();
    }
}

_ID50244()
{
    self endon( "move_loop_restart" );
    var_0 = %german_shepherd_walk;

    if ( isdefined( self.slowdog ) && self.slowdog == 1 )
        var_0 = %german_shepherd_walk_slow;

    if ( self._ID7._ID24414 == "run" )
    {
        var_1 = _ID45217();
        self clearanim( var_0, 0.3 );
        self setanim( %german_shepherd_run, var_1["center"], 0.2, 1 );
        self setanim( %german_shepherd_run_lean_l, var_1["left"], 0.2, 1 );
        self setanim( %german_shepherd_run_lean_r, var_1["right"], 0.2, 1 );
        self setflaggedanimknob( "dog_run", %german_shepherd_run_knob, 1, 0.2, self._ID24424 );
        animscripts\notetracks::_ID11534( 0.2, "dog_run" );
    }
    else
    {
        self clearanim( %german_shepherd_run_knob, 0.3 );
        var_0 = _ID16734();

        if ( var_0 == %h2_german_shepherd_rotate_90l || var_0 == %h2_german_shepherd_rotate_90r )
        {
            self clearanim( %root, 0.2 );
            self animmode( "zonly_physics", 0 );
            self setflaggedanimrestart( "dog_walk", var_0, 1, 0.2, 1 );
            animscripts\notetracks::_ID11534( getanimlength( var_0 ), "dog_walk" );
            self orientmode( "face motion" );
            self animmode( "none", 0 );
            self clearanim( %root, 0.2 );
        }
        else
        {
            self setflaggedanim( "dog_walk", var_0, 1, 0.2, self._ID24424 );
            animscripts\notetracks::_ID11534( 0.2, "dog_walk" );
        }
    }
}

_ID50004()
{
    self endon( "killanimscript" );
    self._ID19386 = undefined;

    for (;;)
    {
        self waittill( "path_changed",  var_0, var_1  );

        if ( isdefined( self._ID19386 ) || isdefined( self._ID25154 ) )
            continue;

        if ( self._ID7._ID24414 != "run" )
            continue;

        var_2 = angleclamp180( self.angles[1] - vectortoyaw( var_1 ) );
        var_3 = _ID53699( var_2 );

        if ( isdefined( var_3 ) )
        {
            self._ID39216 = var_3;
            self._ID39230 = gettime();
            self._ID24409 = ::_ID54286;
            self notify( "move_loop_restart" );
        }
    }
}

_ID53713()
{
    self endon( "killanimscript" );
    self._ID19386 = undefined;

    for (;;)
    {
        if ( self.lookaheaddist > 40 && !isdefined( self._ID24409 ) && !isdefined( self._ID19386 ) && !isdefined( self._ID25154 ) && self._ID7._ID24414 == "run" )
        {
            var_0 = vectortoyaw( self.lookaheaddir );
            var_1 = angleclamp180( self.angles[1] - var_0 );
            var_2 = _ID53699( var_1 );

            if ( isdefined( var_2 ) )
            {
                self._ID39216 = var_2;
                self._ID39230 = gettime();
                self._ID24409 = ::_ID54286;
                self notify( "move_loop_restart" );
            }
        }

        wait 0.05;
    }
}

_ID53699( var_0 )
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

_ID54286()
{
    self endon( "killanimscript" );
    self._ID24409 = undefined;
    var_0 = self._ID39216;

    if ( gettime() > self._ID39230 + 50 )
        return;

    self animmode( "zonly_physics", 0 );
    self clearanim( %root, 0.2 );
    self._ID24408 = ::_ID44239;
    self._ID19386 = 1;
    self setflaggedanimrestart( "turnAnim", var_0, 1, 0.2, self._ID24424 );
    self orientmode( "face current" );
    var_1 = getanimlength( var_0 ) * self._ID24424;
    animscripts\notetracks::_ID11534( var_1 * 0.6, "turnAnim" );
    self._ID19386 = undefined;
    self orientmode( "face motion" );
    self animmode( "none", 0 );
    animscripts\notetracks::_ID11534( var_1 * 0.25, "turnAnim" );
}

_ID44239()
{
    self._ID19386 = undefined;
    self orientmode( "face default" );
    self clearanim( %root, 0.2 );
    self animmode( "none", 0 );
}

_ID53891()
{
    self endon( "killanimscript" );

    for ( var_0 = 0; var_0 < 2; var_0++ )
    {
        var_1 = vectortoangles( self.lookaheaddir );
        self orientmode( "face angle", var_1 );
    }
}

_ID52576()
{
    var_0 = self.origin;
    var_0 += _ID42407::_ID49965( self.lookaheaddir, anim._ID11487 );
    var_1 = distancesquared( self.origin, self.pathgoalpos ) < anim._ID11487 * anim._ID11487;

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

        self setanimrestart( anim._ID46461[var_4], 1, 0.2, 1 );
        var_5 = self.angles[1] + anim._ID43853[var_4];
        var_6 = angleclamp180( var_2[1] - var_5 );
        self orientmode( "face angle", self.angles[1] + var_6 );
        self animmode( "zonly_physics", 0 );
        var_7 = getanimlength( anim._ID46461[var_4] ) * self._ID24424;
        animscripts\notetracks::_ID11534( var_7 * 0.6, "turnAnim" );
        self orientmode( "face motion" );
        self animmode( "none", 0 );
        animscripts\notetracks::_ID11534( var_7 * 0.25, "turnAnim" );
        self clearanim( %root, 0.2 );
    }
}

_ID36143()
{
    if ( isdefined( self.pathgoalpos ) )
    {
        wait 0.05;

        if ( isdefined( self.pathgoalpos ) )
        {
            _ID52576();
            self clearanim( %root, 0.2 );
            return;
        }
    }

    self orientmode( "face default" );
    self setflaggedanimknobrestart( "dog_prerun", %german_shepherd_run_start, 1, 0.2, self._ID24424 );
    animscripts\shared::_ID11529( "dog_prerun" );
    self animmode( "none", 0 );
    self clearanim( %root, 0.2 );
}

_ID44184()
{
    self endon( "killanimscript" );
    self endon( "run" );
    self clearanim( %german_shepherd_run_knob, 0.1 );
    self setflaggedanimrestart( "stop_anim", %german_shepherd_run_stop, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "stop_anim" );
}

_ID43276( var_0, var_1 )
{
    _ID42407::_ID27081( var_0, "tag_eye" );

    if ( isalive( self ) )
        self notify( var_1 );
}

_ID53231()
{
    self endon( "killanimscript" );
    wait 0.2;

    for (;;)
    {
        var_0 = undefined;

        if ( isdefined( self._ID31246 ) )
            var_0 = "anml_dog_growl";
        else if ( !isdefined( self._ID31356 ) )
            var_0 = "anml_dog_bark";

        if ( !isdefined( var_0 ) )
            break;

        thread _ID43276( var_0, "randomRunSound" );
        self waittill( "randomRunSound" );
        wait(randomfloatrange( 0.1, 0.3 ));
    }
}

_ID45217()
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

_ID16734()
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
