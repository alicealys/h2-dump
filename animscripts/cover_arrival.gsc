// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    self endon( "killanimscript" );
    self endon( "abort_approach" );

    if ( self._ID1063 )
    {
        animscripts\swim::_ID36920();
        return;
    }

    if ( _func_02F( self._ID9557 ) )
    {
        [[ self._ID9557 ]]();
        return;
    }

    var_0 = self._ID3262;

    if ( _func_02F( self.overridearrival ) )
        var_1 = self.overridearrival;
    else
        var_1 = animscripts\utility::_ID22630( "cover_trans", self._ID3263 )[var_0];

    if ( !_func_02F( self._ID18328 ) )
        thread _unknown_00B3();

    self _meth_814C( %body, 0.2 );
    self _meth_811C( "coverArrival", var_1, 1, 0.2, self._ID24474 );
    animscripts\face::_ID28062( var_1, "run" );
    animscripts\shared::_ID11529( "coverArrival", ::_unknown_00AF );
    var_2 = anim._ID3367[self._ID3263];

    if ( _func_02F( var_2 ) )
        self._ID7._ID28253 = var_2;

    self._ID7._ID24414 = "stop";
    self._ID7._ID3372 = self._ID3263;
    self _meth_814C( %animscript_root, 0.2 );
    self._ID21880 = undefined;
}

_ID18050( var_0 )
{
    if ( var_0 == "start_aim" )
    {
        if ( _func_02F( self._ID7._ID51710 ) && self._ID7._ID51710 )
            return;

        if ( self._ID7._ID28253 == "stand" )
            animscripts\animset::_ID32213();
        else if ( self._ID7._ID28253 == "crouch" )
            animscripts\animset::_ID32200();
        else
        {

        }

        animscripts\combat::_ID32185();
        self._ID28522 = 0.0;
        animscripts\combat_utility::_ID33531( 0.2 );
        thread animscripts\track::_ID38165();
    }
}

_ID20951()
{
    if ( !_func_02F( self._ID700 ) )
        return 0;

    if ( _func_02F( self._ID322 ) && self _meth_81CB( self._ID322, 1.5 ) && _func_0F5( self._ID740, self._ID322._ID740 ) < 250000 )
        return !self _meth_8201();

    return 0;
}

_ID1729()
{
    self endon( "killanimscript" );

    for (;;)
    {
        if ( !_func_02F( self._ID700 ) )
            return;

        if ( _func_02F( self._ID3152 ) && self._ID3152 == "riotshield" && !_func_02F( self._ID8252 ) )
            return;

        if ( _unknown_01C5() )
        {
            self _meth_814C( %animscript_root, 0.3 );
            self notify( "abort_approach" );
            self._ID21880 = _func_03D();
            return;
        }

        wait 0.1;
    }
}

_ID6911( var_0 )
{
    if ( !animscripts\utility::_ID39985() )
        return 0;

    if ( !_func_02F( var_0._ID39350 ) )
        return 0;

    if ( var_0._ID1244 != "Cover Stand" && var_0._ID1244 != "Cover Prone" && var_0._ID1244 != "Cover Crouch" )
        return 0;

    if ( _func_02F( self._ID322 ) && _func_0F5( self._ID322._ID740, var_0._ID740 ) < 65536 )
        return 0;

    if ( animscripts\utility::_ID16467() > 40 || animscripts\utility::_ID16467() < -40 )
        return 0;

    return 1;
}

_ID10668( var_0 )
{
    if ( _func_02F( self._ID23165 ) && self._ID23165 )
        return "exposed";

    var_1 = var_0._ID1244;

    if ( animscripts\utility::_ID20527() && var_1 == "Cover Crouch" )
        return "free_run_into_cover_crouch";

    if ( var_1 == "Cover Multi" )
    {
        if ( !_func_02F( self._ID217 ) )
            self._ID217 = _func_1A5();

        var_2 = animscripts\cover_multi::_ID8884( [ "over", [ "left", "right" ] ] );
        self._ID217._ID3368 = var_2;
        var_3 = animscripts\cover_multi::_ID8887( var_0, var_2 );
        var_1 = animscripts\utility::_ID16194( var_0, var_3 );
    }

    if ( _unknown_02E4( var_0 ) )
    {
        if ( var_1 == "Cover Stand" )
            return "stand_saw";

        if ( var_1 == "Cover Crouch" )
            return "crouch_saw";
        else if ( var_1 == "Cover Prone" )
            return "prone_saw";
    }

    if ( !_func_02F( anim._ID3257[var_1] ) )
        return;

    if ( _func_02F( var_0._ID3370 ) )
        var_4 = var_0._ID3370;
    else if ( _func_02F( var_0._ID170 ) && var_0._ID170 == "script_origin" )
        var_4 = "stand";
    else
        var_4 = var_0 _meth_8035();

    if ( var_4 == "prone" )
        var_4 = "crouch";

    var_5 = anim._ID3257[var_1][var_4];

    if ( _unknown_08D8() && var_5 == "exposed" )
        var_5 = "exposed_ready";

    if ( animscripts\utility::_ID20961() )
    {
        if ( var_5 == "exposed" )
        {
            var_5 = "exposed_unstable";

            if ( self._ID675 == "run" )
                var_5 += "_run";

            return var_5;
        }
        else if ( var_5 == "stand" )
        {
            var_5 = "stand_unstable";

            if ( self._ID675 == "run" )
                var_5 += "_run";

            return var_5;
        }
    }

    if ( animscripts\utility::_ID33934() )
    {
        var_6 = var_5 + "_cqb";

        if ( _func_02F( anim._ID3277["soldier"]["cover_trans"][var_6] ) )
            var_5 = var_6;
    }

    return var_5;
}

_ID10666( var_0 )
{
    if ( _func_02F( self._ID18328 ) )
        return "heat";

    if ( _func_02F( var_0._ID3370 ) )
        var_1 = var_0._ID3370;
    else
        var_1 = var_0 _meth_8035();

    if ( var_1 == "prone" )
        var_1 = "crouch";

    if ( var_1 == "crouch" )
        var_2 = "exposed_crouch";
    else
        var_2 = "exposed";

    if ( var_2 == "exposed" && _unknown_099B() )
        var_2 += "_ready";

    if ( var_2 == "exposed" && animscripts\utility::_ID20961() )
    {
        var_2 = "exposed_unstable";

        if ( self._ID675 == "run" )
            var_2 += "_run";

        return var_2;
    }

    if ( animscripts\utility::_ID33934() )
        return var_2 + "_cqb";

    return var_2;
}

_ID6631( var_0, var_1 )
{
    var_2 = _func_11E( var_0 );
    var_3 = _func_11F( var_0 );
    return var_3 * var_1[0] + var_2 * 0 - var_1[1];
}

_ID16131()
{
    if ( _func_02F( self._ID938 ) )
        return self._ID938;

    if ( _func_02F( self._ID700 ) )
        return self._ID700;

    return undefined;
}

_ID16132( var_0, var_1 )
{
    if ( var_1 == "stand_saw" )
    {
        var_2 = ( var_0._ID39350._ID740[0], var_0._ID39350._ID740[1], var_0._ID740[2] );
        var_3 = _func_11F( ( 0, var_0._ID39350._ID65[1], 0 ) );
        var_4 = _func_11E( ( 0, var_0._ID39350._ID65[1], 0 ) );
        var_2 = var_2 + var_3 * -32.545 - var_4 * 6.899;
    }
    else if ( var_1 == "crouch_saw" )
    {
        var_2 = ( var_0._ID39350._ID740[0], var_0._ID39350._ID740[1], var_0._ID740[2] );
        var_3 = _func_11F( ( 0, var_0._ID39350._ID65[1], 0 ) );
        var_4 = _func_11E( ( 0, var_0._ID39350._ID65[1], 0 ) );
        var_2 = var_2 + var_3 * -32.545 - var_4 * 6.899;
    }
    else if ( var_1 == "prone_saw" )
    {
        var_2 = ( var_0._ID39350._ID740[0], var_0._ID39350._ID740[1], var_0._ID740[2] );
        var_3 = _func_11F( ( 0, var_0._ID39350._ID65[1], 0 ) );
        var_4 = _func_11E( ( 0, var_0._ID39350._ID65[1], 0 ) );
        var_2 = var_2 + var_3 * -37.36 - var_4 * 13.279;
    }
    else if ( _func_02F( self._ID938 ) )
        var_2 = self._ID451;
    else
        var_2 = var_0._ID740;

    return var_2;
}

_ID7414()
{
    if ( _func_02F( self _meth_81A9() ) )
        return 0;

    if ( _func_02F( self._ID10998 ) && self._ID10998 )
        return 0;

    return 1;
}

_ID7413( var_0, var_1, var_2 )
{
    if ( _func_02F( anim._ID13719[var_0] ) )
        return 0;

    if ( var_0 == "stand" || var_0 == "crouch" || var_0 == "stand_unstable" )
    {
        if ( animscripts\utility::_ID1735( _func_11B( var_1 ) - var_2._ID65[1] + 180 ) < 60 )
            return 0;
    }

    if ( _unknown_05CB() || _func_02F( self._ID21880 ) && self._ID21880 + 500 > _func_03D() )
        return 0;

    return 1;
}

_ID33535( var_0 )
{
    self endon( "killanimscript" );

    if ( _func_02F( self._ID18328 ) )
    {
        thread _unknown_090D();
        return;
    }

    if ( var_0 )
        self._ID875 = 1;

    if ( self._ID1063 == 1 )
    {
        thread animscripts\swim::_ID36967();
        return;
    }

    self._ID7._ID3372 = undefined;
    thread _unknown_092A();
    self waittill( "cover_approach",  var_1  );

    if ( !_unknown_0779() )
        return;

    thread _unknown_07A6( 0 );
    var_2 = "exposed";
    var_3 = self._ID762;
    var_4 = _func_11B( var_1 );
    var_5 = var_4;
    var_6 = _unknown_0731();

    if ( _func_02F( var_6 ) )
    {
        var_2 = _unknown_0693( var_6 );

        if ( _func_02F( var_2 ) && var_2 != "exposed" )
        {
            var_3 = _unknown_0758( var_6, var_2 );
            var_4 = var_6._ID65[1];
            var_5 = animscripts\utility::_ID16462( var_6 );
        }
    }
    else if ( _unknown_0C14() )
    {
        if ( animscripts\utility::_ID33934() )
            var_2 = "exposed_ready_cqb";
        else
            var_2 = "exposed_ready";
    }

    if ( !_unknown_07EE( var_2, var_1, var_6 ) )
        return;

    _unknown_08D5( var_2, var_3, var_4, var_5, var_1 );
}

_ID8863( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( self._ID10998 ) && self._ID10998 )
        return 0;

    if ( _func_0C3( self _meth_819C() ) > 45 && _func_02F( self._ID322 ) && _func_0FB( _func_11F( self._ID65 ), _func_119( self._ID322._ID740 - self._ID740 ) ) > 0.8 )
        return 0;

    if ( self._ID7._ID28253 != "stand" || self._ID7._ID24414 != "run" && !animscripts\utility::_ID20717() )
        return 0;

    if ( animscripts\utility::_ID1735( var_4 - self._ID65[1] ) > 30 )
    {
        if ( _func_02F( self._ID322 ) && self _meth_81CA( self._ID322 ) && _func_0F5( self._ID740, self._ID322._ID740 ) < 65536 )
        {
            if ( _func_0FB( _func_11F( self._ID65 ), self._ID322._ID740 - self._ID740 ) > 0 )
                return 0;
        }
    }

    if ( !_unknown_0CD0( var_0, var_1, var_2, var_3, 0 ) )
        return 0;

    return 1;
}

_ID3265( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_0 ) )
        return;

    var_3 = undefined;

    for (;;)
    {
        if ( !_func_02F( self._ID762 ) )
            _unknown_0C65();

        var_4 = _func_0F3( self._ID740, self._ID762 );

        if ( _func_02F( var_2 ) )
        {
            var_5 = _unknown_0B65();
            var_6 = 1;
            var_7 = _unknown_0B74( var_5, var_0, var_6 );
            var_8 = _unknown_0B52( var_5, var_7, var_0, var_6, var_2._ID3263 );
            var_9 = _func_119( var_2._ID54001 - self._ID740 );
            var_3 = _unknown_0A89( var_2._ID54001, var_2._ID45465, var_2._ID3263, var_9, var_2._ID23090, var_2._ID13291, var_2._ID53151 );

            if ( var_3._ID3262 > 0 )
                var_1 = _func_0F6( animscripts\utility::_ID22635( "cover_trans_dist", var_2._ID3263, var_3._ID3262 ) );
        }

        if ( var_4 <= var_1 + 8 )
            break;

        var_10 = self._ID24424;

        if ( level._ID912 == "scoutsniper" && self _meth_815A( %h1_sprint_loop ) > 0.5 )
            var_10 *= 1.25;

        var_11 = var_4 - var_1 / 250 * var_10 - 0.1;

        if ( var_11 < 0.05 )
            var_11 = 0.05;

        wait(var_11);
    }

    return var_3;
}

_ID36105( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "killanimscript" );
    self endon( "cover_approach" );

    if ( _func_02F( self._ID10998 ) && self._ID10998 )
        return;

    var_5 = _unknown_093A();
    var_6 = animscripts\exit_node::_ID16413( var_5 );
    var_7 = var_6._ID23090;
    var_8 = var_6._ID13291;
    var_9 = _func_0FB( var_4, _func_11F( var_5._ID65 ) ) >= 0;
    var_6 = _unknown_0B3F( var_1, var_3, var_0, var_4, var_7, var_8, var_9 );

    if ( var_6._ID3262 < 0 )
        return;

    var_10 = var_6._ID3262;

    if ( var_10 <= 6 && var_9 )
    {
        self endon( "goal_changed" );

        if ( _func_02F( self._ID3152 ) && _func_02F( anim._ID3277[self._ID3152] ) && _func_02F( anim._ID3277[self._ID3152]["CoverTransLongestDist"][var_0] ) )
            self._ID3371 = anim._ID3277[self._ID3152]["CoverTransLongestDist"][var_0];
        else if ( _func_02F( anim._ID3277["soldier"]["CoverTransLongestDist"][var_0] ) )
            self._ID3371 = anim._ID3277["soldier"]["CoverTransLongestDist"][var_0];
        else
            self._ID3371 = 8;

        _unknown_0AE6( var_5, self._ID3371 );
        var_11 = _func_119( var_1 - self._ID740 );
        var_6 = _unknown_0BD6( var_1, var_3, var_0, var_11, var_7, var_8, var_9 );
        self._ID3371 = _func_0F6( animscripts\utility::_ID22635( "cover_trans_dist", var_0, var_10 ) );
        var_12 = _func_1A5();
        var_12._ID3263 = var_0;
        var_12._ID54001 = var_1;
        var_12._ID53151 = var_9;
        var_12._ID13291 = var_8;
        var_12._ID23090 = var_7;
        var_12._ID45465 = var_3;
        var_6 = _unknown_0B3A( var_5, self._ID3371, var_12 );

        if ( !self _meth_81CF( var_1 ) )
        {
            self._ID3371 = undefined;
            return;
        }

        if ( var_6._ID3262 < 0 )
        {
            self._ID3371 = undefined;
            return;
        }

        var_10 = var_6._ID3262;
        var_13 = var_3 - animscripts\utility::_ID22635( "cover_trans_angles", var_0, var_10 );
    }
    else
    {
        self _meth_816A( self._ID8869 );
        self waittill( "runto_arrived" );
        var_13 = var_3 - animscripts\utility::_ID22635( "cover_trans_angles", var_0, var_10 );

        if ( !_unknown_0B50( var_1, var_3, var_0, var_10, var_13 ) )
            return;
    }

    self._ID3262 = var_10;
    self._ID3263 = var_0;
    self._ID3371 = undefined;

    if ( animscripts\utility::_ID47946() )
    {
        self._ID3366 = animscripts\utility::_ID22630( "cover_trans", self._ID3263 )[self._ID3262];
        var_14 = animscripts\utility::_ID22635( "cover_trans_move_end", var_0, self._ID3262 );
        self._ID54671 = self _meth_857B( self._ID8869, var_13, 0, self._ID3366, var_14 );
    }
    else
        self._ID54671 = self _meth_81F4( self._ID8869, var_13, 0 );
}

_ID7415( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = _func_1A5();
    animscripts\exit_node::_ID6632( var_7, var_2, 1, var_1, var_3, var_4, var_5 );
    animscripts\exit_node::_ID34970( var_7, var_4 );
    var_8 = _func_1A5();
    var_9 = ( 0, 0, 0 );
    var_8._ID3262 = -1;
    var_10 = 2;

    for ( var_11 = 1; var_11 <= var_10; var_11++ )
    {
        var_8._ID3262 = var_7._ID38671[var_11];

        if ( !_unknown_0FBE( var_0, var_1, var_2, var_8._ID3262, var_6 ) )
            continue;

        break;
    }

    if ( var_11 > var_10 )
    {
        var_8._ID3262 = -1;
        return var_8;
    }

    var_12 = _func_0F5( var_0, self._ID740 );
    var_13 = _func_0F5( var_0, self._ID8869 );

    if ( var_12 < var_13 * 2 * 2 )
    {
        if ( var_12 < var_13 )
        {
            var_8._ID3262 = -1;
            return var_8;
        }

        if ( !var_6 )
        {
            var_14 = _func_119( self._ID8869 - self._ID740 );
            var_15 = var_1 - animscripts\utility::_ID22635( "cover_trans_angles", var_2, var_8._ID3262 );
            var_16 = _func_11F( ( 0, var_15, 0 ) );
            var_17 = _func_0FB( var_14, var_16 );

            if ( var_17 < 0.707 )
            {
                var_8._ID3262 = -1;
                return var_8;
            }
        }
    }

    return var_8;
}

_ID11502()
{
    self endon( "killanimscript" );
    self endon( "move_interrupt" );
    self notify( "doing_last_minute_exposed_approach" );
    self endon( "doing_last_minute_exposed_approach" );
    thread _unknown_0DF9();

    for (;;)
    {
        _unknown_0EEA();

        for (;;)
        {
            _ID42237::_ID41068( "goal_changed", "goal_changed_previous_frame" );

            if ( _func_02F( self._ID8869 ) && _func_02F( self._ID762 ) && _func_0F4( self._ID8869, self._ID762 ) < 1 )
                continue;

            break;
        }
    }
}

_ID41520()
{
    self endon( "killanimscript" );
    self endon( "doing_last_minute_exposed_approach" );

    for (;;)
    {
        self waittill( "goal_changed" );
        wait 0.05;
        self notify( "goal_changed_previous_frame" );
    }
}

_ID13708( var_0, var_1 )
{
    if ( !_func_02F( self._ID762 ) )
        return 0;

    if ( _func_02F( self._ID10998 ) && self._ID10998 )
        return 0;

    if ( _func_02F( self._ID3258 ) )
    {
        if ( !self [[ self._ID3258 ]]( var_0 ) )
            return 0;
    }
    else
    {
        if ( !self._ID373 && !_func_02F( var_0 ) || var_0._ID1244 == "Path" || var_0._ID1244 == "Path 3D" )
            return 0;

        if ( self._ID7._ID28253 != "stand" )
            return 0;
    }

    if ( _unknown_0B7F() || _func_02F( self._ID21880 ) && self._ID21880 + 500 > _func_03D() )
        return 0;

    if ( !self _meth_81CF( self._ID762, 1, 0, level._ID49979 ) )
        return 0;

    return 1;
}

_ID13709()
{
    for (;;)
    {
        if ( !_func_02F( self._ID762 ) )
            _unknown_10B6();

        var_0 = _unknown_0CB2();

        if ( _func_02F( var_0 ) && !_func_02F( self._ID18328 ) )
            var_1 = var_0._ID740;
        else
            var_1 = self._ID762;

        var_2 = _func_0F3( self._ID740, var_1 );
        var_3 = 0;

        if ( _func_02F( self._ID3152 ) && _func_02F( anim._ID3277[self._ID3152] ) && _func_02F( anim._ID3277[self._ID3152]["longestExposedApproachDist"] ) )
            var_3 = anim._ID3277[self._ID3152]["longestExposedApproachDist"];
        else
            var_3 = anim._ID3277["soldier"]["longestExposedApproachDist"];

        if ( var_2 <= var_3 + 8 )
            break;

        var_4 = var_2 - var_3 / 250 * self._ID24424 - 0.1;

        if ( var_4 < 0 )
            break;

        if ( var_4 < 0.05 )
            var_4 = 0.05;

        wait(var_4);
    }
}

_ID13755( var_0 )
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( _func_02F( self._ID18328 ) && _func_02F( var_0 ) )
        return 0;

    if ( self._ID199 == "cover" && _func_0D6( self._ID322 ) && _func_03D() - self _meth_81CC( self._ID322 ) > 15000 )
        return 0;

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        return self _meth_81CA( self._ID322 );

    return _func_090( self._ID322 _meth_809E(), self._ID762 + ( 0, 0, 60 ), 0, undefined );
}

_ID48724( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _unknown_10AA( var_0, var_2, var_3 );
    var_5 = _func_1A5();
    animscripts\exit_node::_ID6632( var_5, var_4, 1, var_1, var_0, 9, -1 );
    var_6 = 1;

    for ( var_7 = 2; var_7 <= 9; var_7++ )
    {
        if ( var_5._ID38684[var_7] > var_5._ID38684[var_6] )
            var_6 = var_7;
    }

    self._ID3262 = var_5._ID38671[var_6];
    self._ID3263 = var_4;
    var_8 = animscripts\utility::_ID22635( "cover_trans", var_4, self._ID3262 );

    if ( !_func_02F( var_8 ) || _func_02F( self._ID10997 ) )
        return;

    var_9 = _func_0F6( animscripts\utility::_ID22635( "cover_trans_dist", var_4, self._ID3262 ) );
    return var_9;
}

_ID49355( var_0 )
{
    var_1 = var_0 + 8;
    var_1 *= var_1;
    return var_1;
}

_ID52311()
{
    var_0 = _func_119( self._ID762 - self._ID740 );
    return var_0;
}

_ID43389( var_0, var_1, var_2 )
{
    if ( _func_02F( self.forceapproachyaw ) )
        return self.forceapproachyaw;

    var_3 = _func_11B( var_0 );

    if ( _func_02F( self._ID13754 ) )
        var_3 = self._ID65[1];
    else if ( _unknown_1102( var_1 ) )
        var_3 = _func_11B( self._ID322._ID740 - self._ID762 );
    else
    {
        var_4 = _func_02F( var_1 ) && var_2;
        var_4 = var_4 && var_1._ID1244 != "Path" && var_1._ID1244 != "Path 3D" && var_1._ID1244 != "Ambush" || !animscripts\utility::_ID29285();

        if ( var_4 )
            var_3 = animscripts\utility::_ID16462( var_1 );
        else
        {
            var_5 = self _meth_819E();

            if ( _func_02F( var_5 ) )
                var_3 = var_5[1];
        }
    }

    return var_3;
}

_ID11501()
{
    self endon( "goal_changed" );
    self endon( "move_interrupt" );

    if ( _func_02F( self._ID10998 ) && self._ID10998 )
        return;

    if ( _func_02F( self _meth_81A9() ) )
        return;

    _unknown_1151();

    if ( _func_02F( self._ID458 ) && _func_02F( self._ID458._ID19 ) && self._ID458._ID19 == self )
        return;

    var_0 = "exposed";
    var_1 = 1;

    if ( _func_02F( self._ID3264 ) )
        var_0 = self [[ self._ID3264 ]]();
    else if ( animscripts\utility::_ID20961() )
    {
        var_0 = "exposed_unstable";

        if ( self._ID675 == "run" )
            var_0 += "_run";
    }
    else if ( _unknown_13E1() )
    {
        if ( animscripts\utility::_ID33934() )
            var_0 = "exposed_ready_cqb";
        else
            var_0 = "exposed_ready";
    }
    else if ( animscripts\utility::_ID33934() )
        var_0 = "exposed_cqb";
    else if ( _func_02F( self._ID18328 ) )
    {
        var_0 = "heat";
        var_1 = 4096;
    }
    else if ( animscripts\utility::_ID39998() )
        var_0 = "exposed_smg";

    var_2 = _unknown_0F7B();

    if ( _func_02F( var_2 ) && _func_02F( self._ID762 ) && !_func_02F( self._ID11007 ) )
        var_3 = _func_0F5( self._ID762, var_2._ID740 ) < var_1;
    else
        var_3 = 0;

    if ( var_3 && !_func_02F( self._ID3264 ) )
        var_0 = _unknown_0F7D( var_2 );

    if ( _func_02F( self._ID23165 ) && self._ID23165 )
        var_0 = "exposed";

    var_4 = _unknown_12BF();
    var_5 = _unknown_12CA( var_4, var_2, var_3 );
    var_6 = _unknown_12A4( var_4, var_5, var_2, var_3, var_0 );

    if ( !_func_02F( var_6 ) )
        return;

    var_7 = _unknown_12D7( var_6 );

    while ( _func_02F( self._ID762 ) && _func_02F( var_7 ) && _func_0F5( self._ID740, self._ID762 ) > var_7 )
    {
        var_4 = _unknown_12F8();
        var_5 = _unknown_1303( var_4, var_2, var_3 );
        var_6 = _unknown_12DE( var_4, var_5, var_2, var_3, var_0 );
        var_7 = _unknown_130B( var_6 );
        wait 0.05;
    }

    if ( _func_02F( self._ID3371 ) && self._ID3371 < var_6 + 8 )
        return;

    if ( !_unknown_127D( var_2, var_3 ) )
        return;

    var_8 = _func_0F3( self._ID740, self._ID762 );

    if ( _func_0C3( var_8 - var_6 ) > 8 )
        return;

    var_9 = _func_11B( self._ID762 - self._ID740 );

    if ( _func_02F( self._ID18328 ) && var_3 )
    {
        var_10 = var_5 - animscripts\utility::_ID22635( "cover_trans_angles", var_0, self._ID3262 );
        var_11 = _unknown_14E7( self._ID762, var_5, var_0, self._ID3262 );
    }
    else if ( _func_02F( self._ID7._ID44440 ) && self._ID7._ID44440 )
    {
        var_5 = var_2._ID65[1];
        var_10 = var_5 - animscripts\utility::_ID22635( "cover_trans_angles", var_0, self._ID3262 );
        var_11 = _unknown_151E( self._ID762, var_5, var_0, self._ID3262 );
    }
    else if ( var_6 > 0 )
    {
        var_12 = animscripts\utility::_ID22635( "cover_trans_dist", var_0, self._ID3262 );
        var_13 = _func_0C0( var_12[1] / var_12[0] );

        if ( !_func_02F( self._ID13754 ) || self._ID373 )
        {
            var_10 = var_9 - var_13;

            if ( animscripts\utility::_ID1735( var_10 - self._ID65[1] ) > 30 )
                return;
        }
        else
            var_10 = self._ID65[1];

        var_14 = var_8 - var_6;
        var_11 = self._ID740 + _func_119( self._ID762 - self._ID740 ) * var_14;
    }
    else
    {
        var_10 = self._ID65[1];
        var_11 = self._ID740;
    }

    self._ID3263 = var_0;

    if ( animscripts\utility::_ID47946() )
    {
        self._ID3366 = animscripts\utility::_ID22630( "cover_trans", self._ID3263 )[self._ID3262];
        var_15 = animscripts\utility::_ID22635( "cover_trans_move_end", var_0, self._ID3262 );
        self._ID54671 = self _meth_857B( var_11, var_10, 0, self._ID3366, var_15 );
    }
    else
        self._ID54671 = self _meth_81F4( var_11, var_10, 0 );
}

_ID41001()
{
    for (;;)
    {
        if ( _func_02F( self._ID762 ) )
            return;

        wait 0.1;
    }
}

_ID9576()
{
    if ( !_func_02F( self._ID36146 ) )
        return;

    self _meth_819A( "zonly_physics", 0 );
    self _meth_819B( "face current" );
    self _meth_8119( "move", self._ID36146, %animscript_root, 1 );
    animscripts\face::_ID28062( self._ID36146, "run" );

    if ( _func_068( self._ID36146, "code_move" ) )
    {
        animscripts\shared::_ID11529( "move" );
        self _meth_819B( "face motion" );
        self _meth_819A( "none", 0 );
    }

    animscripts\shared::_ID11529( "move" );
}

_ID9571()
{
    if ( !_func_02F( self._ID36131 ) )
        return;

    var_0 = self._ID3262;
    var_1 = self._ID36131;

    if ( !_func_02F( self._ID18328 ) )
        thread _unknown_10FC();

    self _meth_814C( %body, 0.2 );
    self _meth_811C( "coverArrival", var_1, 1, 0.2, self._ID24474 );
    animscripts\face::_ID28062( var_1, "run" );
    animscripts\shared::_ID11529( "coverArrival", ::_unknown_10F8 );
    var_2 = anim._ID3367[self._ID3263];

    if ( _func_02F( var_2 ) )
        self._ID7._ID28253 = var_2;

    self._ID7._ID24414 = "stop";
    self._ID7._ID3372 = self._ID3263;
    self _meth_814C( %animscript_root, 0.3 );
    self._ID21880 = undefined;
}

_ID36640( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return "{undefined}";

    return var_0;
}

_ID11758( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < var_2 * 100; var_4++ )
        wait 0.05;
}

_ID11730( var_0 )
{
    self endon( "killanimscript" );

    for (;;)
    {
        if ( !_func_02F( self._ID700 ) )
            break;

        wait 0.05;
    }
}

_ID16137( var_0, var_1, var_2, var_3 )
{
    var_4 = ( 0, var_1 - animscripts\utility::_ID22635( "cover_trans_angles", var_2, var_3 ), 0 );
    var_5 = _func_11F( var_4 );
    var_6 = _func_11E( var_4 );
    var_7 = animscripts\utility::_ID22635( "cover_trans_dist", var_2, var_3 );
    var_8 = var_5 * var_7[0];
    var_9 = var_6 * var_7[1];
    return var_0 - var_8 + var_9;
}

_ID16136( var_0, var_1, var_2, var_3 )
{
    var_4 = ( 0, var_1 - animscripts\utility::_ID22635( "cover_trans_angles", var_2, var_3 ), 0 );
    var_5 = _func_11F( var_4 );
    var_6 = _func_11E( var_4 );
    var_7 = animscripts\utility::_ID22635( "cover_trans_predist", var_2, var_3 );
    var_8 = var_5 * var_7[0];
    var_9 = var_6 * var_7[1];
    return var_0 - var_8 + var_9;
}

_ID7420( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _unknown_177E( var_0, var_1, var_2, var_3 );
    self._ID8869 = var_5;

    if ( var_3 <= 6 && var_4 )
        return 1;

    if ( !self _meth_81D0( var_5, var_0 ) )
        return 0;

    if ( var_3 <= 6 || _func_02F( anim._ID13719[var_2] ) )
        return 1;

    var_6 = _unknown_17C0( var_5, var_1, var_2, var_3 );
    self._ID8869 = var_6;
    return self _meth_81D0( var_6, var_5 );
}

_ID39956()
{
    if ( !_func_02F( anim._ID29156 ) )
        return 0;

    if ( !anim._ID29156 )
        return 0;

    if ( !_func_02F( self._ID6471 ) )
        return 0;

    if ( !self._ID6471 )
        return 0;

    return 1;
}

_ID9854()
{
    return 0;
}

_ID9853( var_0 )
{
    if ( !_unknown_182A() )
        return;
}
