// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

_ID616()
{
    self endon( "killanimscript" );
    self _meth_814C( %root, 0.2 );
    self _meth_814C( %german_shepherd_run_stop, 0 );

    if ( !_func_02F( self._ID51512 ) && !_func_02F( self._ID34246 ) && self._ID7._ID24414 == "run" && !_func_02F( self._ID11025 ) || self._ID11025 == 0 )
        _unknown_0225();

    thread _unknown_0263();
    self._ID51512 = undefined;
    self._ID34246 = undefined;

    if ( self._ID7._ID24414 == "run" )
    {
        var_0 = undefined;
        var_0 = _unknown_0296();
        self _meth_8157( %german_shepherd_run, var_0["center"], 0.2, 1 );
        self _meth_8157( %german_shepherd_run_lean_l, var_0["left"], 0.1, 1 );
        self _meth_8157( %german_shepherd_run_lean_r, var_0["right"], 0.1, 1 );
        self _meth_815C( "dog_run", %german_shepherd_run_knob, 1, 0.2, self._ID24424 );
        animscripts\notetracks::_ID11534( 0.1, "dog_run" );
    }
    else
    {
        var_1 = %german_shepherd_walk;

        if ( _func_02F( self.slowdog ) && self.slowdog == 1 )
            var_1 = %german_shepherd_walk_slow;

        self _meth_811C( "dog_walk", var_1, 1, 0.2, self._ID24424 );
    }

    thread _unknown_01E9();

    for (;;)
    {
        _unknown_0170();

        if ( self._ID7._ID24414 == "run" )
        {
            if ( self._ID10998 == 0 )
                thread _unknown_0315();

            _ID42237::_ID41068( "run", "path_set" );
            self _meth_814C( %german_shepherd_run_stop, 0.1 );
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
            self._ID1044 = 0;
        else
            self._ID1044 = anim._ID11489;

        if ( _func_02F( self._ID24408 ) )
        {
            self [[ self._ID24408 ]]();
            self._ID24408 = undefined;
        }

        if ( _func_02F( self._ID24409 ) )
        {
            self [[ self._ID24409 ]]();
            continue;
        }

        _unknown_01FB();
    }
}

_ID50244()
{
    self endon( "move_loop_restart" );
    var_0 = %german_shepherd_walk;

    if ( _func_02F( self.slowdog ) && self.slowdog == 1 )
        var_0 = %german_shepherd_walk_slow;

    if ( self._ID7._ID24414 == "run" )
    {
        var_1 = _unknown_03DE();
        self _meth_814C( var_0, 0.3 );
        self _meth_8155( %german_shepherd_run, var_1["center"], 0.2, 1 );
        self _meth_8155( %german_shepherd_run_lean_l, var_1["left"], 0.2, 1 );
        self _meth_8155( %german_shepherd_run_lean_r, var_1["right"], 0.2, 1 );
        self _meth_815C( "dog_run", %german_shepherd_run_knob, 1, 0.2, self._ID24424 );
        animscripts\notetracks::_ID11534( 0.2, "dog_run" );
    }
    else
    {
        self _meth_814C( %german_shepherd_run_knob, 0.3 );
        var_0 = _unknown_04A5();

        if ( var_0 == %h2_german_shepherd_rotate_90l || var_0 == %h2_german_shepherd_rotate_90r )
        {
            self _meth_814C( %root, 0.2 );
            self _meth_819A( "zonly_physics", 0 );
            self _meth_811C( "dog_walk", var_0, 1, 0.2, 1 );
            animscripts\notetracks::_ID11534( _func_067( var_0 ), "dog_walk" );
            self _meth_819B( "face motion" );
            self _meth_819A( "none", 0 );
            self _meth_814C( %root, 0.2 );
        }
        else
        {
            self _meth_811A( "dog_walk", var_0, 1, 0.2, self._ID24424 );
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
        self waittill( "path_changed",  var_1, var_0  );

        if ( _func_02F( self._ID19386 ) || _func_02F( self._ID25154 ) )
            continue;

        if ( self._ID7._ID24414 != "run" )
            continue;

        var_2 = _func_0F0( self._ID65[1] - _func_11B( var_1 ) );
        var_3 = _unknown_042B( var_2 );

        if ( _func_02F( var_3 ) )
        {
            self._ID39216 = var_3;
            self._ID39230 = _func_03D();
            self._ID24409 = ::_unknown_0452;
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
        if ( self._ID602 > 40 && !_func_02F( self._ID24409 ) && !_func_02F( self._ID19386 ) && !_func_02F( self._ID25154 ) && self._ID7._ID24414 == "run" )
        {
            var_0 = _func_11B( self._ID601 );
            var_1 = _func_0F0( self._ID65[1] - var_0 );
            var_2 = _unknown_0490( var_1 );

            if ( _func_02F( var_2 ) )
            {
                self._ID39216 = var_2;
                self._ID39230 = _func_03D();
                self._ID24409 = ::_unknown_04B8;
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

    if ( _func_03D() > self._ID39230 + 50 )
        return;

    self _meth_819A( "zonly_physics", 0 );
    self _meth_814C( %root, 0.2 );
    self._ID24408 = ::_unknown_056B;
    self._ID19386 = 1;
    self _meth_811C( "turnAnim", var_0, 1, 0.2, self._ID24424 );
    self _meth_819B( "face current" );
    var_1 = _func_067( var_0 ) * self._ID24424;
    animscripts\notetracks::_ID11534( var_1 * 0.6, "turnAnim" );
    self._ID19386 = undefined;
    self _meth_819B( "face motion" );
    self _meth_819A( "none", 0 );
    animscripts\notetracks::_ID11534( var_1 * 0.25, "turnAnim" );
}

_ID44239()
{
    self._ID19386 = undefined;
    self _meth_819B( "face default" );
    self _meth_814C( %root, 0.2 );
    self _meth_819A( "none", 0 );
}

_ID53891()
{
    self endon( "killanimscript" );

    for ( var_0 = 0; var_0 < 2; var_0++ )
    {
        var_1 = _func_11A( self._ID601 );
        self _meth_819B( "face angle", var_1 );
    }
}

_ID52576()
{
    var_0 = self._ID740;
    var_0 += _ID42407::_ID49965( self._ID601, anim._ID11487 );
    var_1 = _func_0F5( self._ID740, self._ID762 ) < anim._ID11487 * anim._ID11487;

    if ( !var_1 && self _meth_81CF( var_0 ) )
    {
        var_2 = _func_11A( self._ID601 );
        var_3 = _func_0F0( var_2[1] - self._ID65[1] );

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

        self _meth_8157( anim._ID46461[var_4], 1, 0.2, 1 );
        var_5 = self._ID65[1] + anim._ID43853[var_4];
        var_6 = _func_0F0( var_2[1] - var_5 );
        self _meth_819B( "face angle", self._ID65[1] + var_6 );
        self _meth_819A( "zonly_physics", 0 );
        var_7 = _func_067( anim._ID46461[var_4] ) * self._ID24424;
        animscripts\notetracks::_ID11534( var_7 * 0.6, "turnAnim" );
        self _meth_819B( "face motion" );
        self _meth_819A( "none", 0 );
        animscripts\notetracks::_ID11534( var_7 * 0.25, "turnAnim" );
        self _meth_814C( %root, 0.2 );
    }
}

_ID36143()
{
    if ( _func_02F( self._ID762 ) )
    {
        wait 0.05;

        if ( _func_02F( self._ID762 ) )
        {
            _unknown_0724();
            self _meth_814C( %root, 0.2 );
            return;
        }
    }

    self _meth_819B( "face default" );
    self _meth_8116( "dog_prerun", %german_shepherd_run_start, 1, 0.2, self._ID24424 );
    animscripts\shared::_ID11529( "dog_prerun" );
    self _meth_819A( "none", 0 );
    self _meth_814C( %root, 0.2 );
}

_ID44184()
{
    self endon( "killanimscript" );
    self endon( "run" );
    self _meth_814C( %german_shepherd_run_knob, 0.1 );
    self _meth_811C( "stop_anim", %german_shepherd_run_stop, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "stop_anim" );
}

_ID43276( var_0, var_1 )
{
    _ID42407::_ID27081( var_0, "tag_eye" );

    if ( _func_1A7( self ) )
        self notify( var_1 );
}

_ID53231()
{
    self endon( "killanimscript" );
    wait 0.2;

    for (;;)
    {
        var_0 = undefined;

        if ( _func_02F( self._ID31246 ) )
            var_0 = "anml_dog_growl";
        else if ( !_func_02F( self._ID31356 ) )
            var_0 = "anml_dog_bark";

        if ( !_func_02F( var_0 ) )
            break;

        thread _unknown_087B( var_0, "randomRunSound" );
        self waittill( "randomRunSound" );
        wait(_func_0BA( 0.1, 0.3 ));
    }
}

_ID45217()
{
    var_0 = [];
    var_0["center"] = 0;
    var_0["left"] = 0;
    var_0["right"] = 0;

    if ( self._ID587 > 0 )
    {
        if ( self._ID587 < 0.95 )
            self._ID587 = 0.95;

        var_0["left"] = 0;
        var_0["right"] = 1 - self._ID587 * 20;

        if ( var_0["right"] > 1 )
            var_0["right"] = 1;
        else if ( var_0["right"] < 0 )
            var_0["right"] = 0;

        var_0["center"] = 1 - var_0["right"];
    }
    else if ( self._ID587 < 0 )
    {
        if ( self._ID587 > -0.95 )
            self._ID587 = -0.95;

        var_0["right"] = 0;
        var_0["left"] = 1 + self._ID587 * 20;

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

    if ( _func_02F( self.slowdog ) && self.slowdog == 1 )
    {
        var_0 = %german_shepherd_walk_slow;
        var_1 = _func_11A( self._ID601 );
        var_2 = _func_0F0( var_1[1] - self._ID65[1] );

        if ( var_2 < -47 )
            var_0 = %h2_german_shepherd_rotate_90r;
        else if ( var_2 > 47 )
            var_0 = %h2_german_shepherd_rotate_90l;
    }

    return var_0;
}
