// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID10054( var_0 )
{
    self endon( "killanimscript" );
    self notify( "stop_deciding_how_to_shoot" );
    self endon( "stop_deciding_how_to_shoot" );
    self endon( "death" );
    _ID42298::_ID29779();
    self._ID33809 = var_0;
    self._ID33785 = undefined;
    self._ID33810 = undefined;
    self._ID33816 = "none";
    self._ID13941 = 0;
    self._ID33962 = undefined;

    if ( !_func_02F( self._ID7305 ) )
        self._ID7305 = 0;

    var_1 = _func_02F( self._ID8893 ) && self._ID8893._ID1244 != "Cover Prone" && self._ID8893._ID1244 != "Conceal Prone";

    if ( var_1 )
        wait 0.05;

    var_2 = self._ID33785;
    var_3 = self._ID33810;
    var_4 = self._ID33816;

    if ( !_func_02F( self._ID18169 ) )
    {
        self._ID7._ID21758 = 1;
        animscripts\shared::_ID39728();
    }

    if ( animscripts\combat_utility::_ID20910() )
        _unknown_0330();

    if ( var_1 && !self._ID7._ID3462 || !animscripts\utility::_ID6884() )
        thread _unknown_023F();

    thread _unknown_026B();
    self._ID2924 = undefined;

    for (;;)
    {
        if ( _func_02F( self._ID33812 ) )
        {
            if ( !_func_02F( self._ID322 ) )
            {
                self._ID33810 = self._ID33812;
                self._ID33812 = undefined;
                _unknown_012F();
            }
            else
                self._ID33812 = undefined;
        }

        var_5 = undefined;

        if ( self._ID1302 == "none" )
            _unknown_0164();
        else if ( animscripts\utility::_ID39993() )
            var_5 = _unknown_0220();
        else if ( animscripts\utility::_ID39997() || _func_02F( self._ID2834 ) )
            var_5 = _unknown_0247();
        else
            var_5 = _unknown_020C();

        if ( _func_02F( self._ID7._ID35385 ) )
            [[ self._ID7._ID35385 ]]();

        if ( _unknown_02EE( var_2, self._ID33785 ) || !_func_02F( self._ID33785 ) && _unknown_02FF( var_3, self._ID33810 ) || _unknown_0309( var_4, self._ID33816 ) )
            self notify( "shoot_behavior_change" );

        var_2 = self._ID33785;
        var_3 = self._ID33810;
        var_4 = self._ID33816;

        if ( !_func_02F( var_5 ) )
            _unknown_01BD();
    }
}

_ID40966()
{
    self endon( "enemy" );
    self endon( "done_changing_cover_pos" );
    self endon( "weapon_position_change" );
    self endon( "enemy_visible" );

    if ( _func_02F( self._ID33785 ) )
    {
        self._ID33785 endon( "death" );
        self endon( "do_slow_things" );
        wait 0.05;

        while ( _func_02F( self._ID33785 ) )
        {
            if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
                self._ID33810 = animscripts\combat_utility::_ID15797( self._ID33785 );
            else
                self._ID33810 = self._ID33785 _meth_809E();

            wait 0.05;
        }
    }
    else
        self waittill( "do_slow_things" );
}

_ID24906()
{
    self._ID33785 = undefined;
    self._ID33810 = undefined;
    self._ID33816 = "none";
    self._ID33809 = "normal";
}

_ID33977()
{
    return !animscripts\combat_utility::_ID20910() && !animscripts\utility::_ID20902( self._ID1302 );
}

_ID33964()
{
    if ( !animscripts\utility::_ID6884() )
        return 0;

    if ( !_func_02F( self._ID8893 ) && !self _meth_81C9() )
        return 0;

    return 1;
}

_ID29973()
{
    if ( !_unknown_028C() )
    {
        if ( animscripts\combat_utility::_ID20910() )
            _unknown_04A6();

        if ( self._ID302 )
        {
            self._ID33809 = "ambush";
            return "retry";
        }

        if ( !_func_02F( self._ID322 ) )
            _unknown_0409();
        else
        {
            _unknown_0399();

            if ( self._ID842 || _func_0B7( 5 ) > 0 && _unknown_02C0() )
                self._ID33809 = "suppress";
            else
                self._ID33809 = "ambush";

            return "retry";
        }
    }
    else
    {
        _unknown_0427();
        _unknown_044F();
    }
}

_ID29974( var_0 )
{
    if ( !var_0 )
        _unknown_0448();
    else
    {
        self._ID33785 = undefined;
        self._ID33810 = animscripts\utility::_ID16257();
        _unknown_04CE();
    }
}

_ID29972( var_0 )
{
    self._ID33816 = "none";
    self._ID33785 = undefined;

    if ( !var_0 )
    {
        _unknown_035C();

        if ( _unknown_03A8() )
        {
            self._ID2924 = undefined;
            self notify( "return_to_cover" );
            self._ID33962 = 1;
        }
    }
    else
    {
        self._ID33810 = animscripts\utility::_ID16257();

        if ( _unknown_03C0() )
        {
            self._ID2924 = undefined;

            if ( _unknown_032F() )
                self._ID33809 = "suppress";

            if ( _func_0B7( 3 ) == 0 )
            {
                self notify( "return_to_cover" );
                self._ID33962 = 1;
            }

            return "retry";
        }
    }
}

_ID16114()
{
    if ( _func_02F( self._ID322 ) && self _meth_81CA( self._ID322 ) )
    {
        _unknown_04AD();
        return;
    }

    var_0 = self _meth_819E();

    if ( !_func_02F( var_0 ) )
    {
        if ( _func_02F( self._ID8893 ) )
            var_0 = self._ID8893._ID65;
        else if ( _func_02F( self._ID2925 ) )
            var_0 = self._ID2925._ID65;
        else
            var_0 = self._ID65;
    }

    var_1 = 1024;

    if ( _func_02F( self._ID322 ) )
        var_1 = _func_0F3( self._ID740, self._ID322._ID740 );

    var_2 = self _meth_80AF() + _func_11F( var_0 ) * var_1;

    if ( !_func_02F( self._ID33810 ) || _func_0F5( var_2, self._ID33810 ) > 25 )
        self._ID33810 = var_2;
}

_ID29971()
{
    if ( self._ID33809 == "normal" )
        _unknown_03E1();
    else
    {
        if ( _unknown_03DD() )
        {
            self._ID33809 = "normal";
            self._ID2924 = undefined;
            return "retry";
        }

        _unknown_04D4();

        if ( animscripts\combat_utility::_ID20910() )
            _unknown_0608();

        var_0 = animscripts\utility::_ID6898();

        if ( self._ID33809 == "suppress" || self._ID1194 == "allies" && !_func_02F( self._ID322 ) && !var_0 )
            _unknown_044A( var_0 );
        else
            _unknown_0458( var_0 );
    }
}

_ID33975()
{
    if ( !_func_02F( self._ID2924 ) )
    {
        if ( self _meth_8147() )
            self._ID2924 = _func_03D() + _func_0B9( 10000, 60000 );
        else
            self._ID2924 = _func_03D() + _func_0B9( 4000, 10000 );
    }

    return self._ID2924 < _func_03D();
}

_ID30321()
{
    if ( !_unknown_045E() )
    {
        _unknown_0547();
        _unknown_05C0();
        return;
    }

    _unknown_05B2();
    _unknown_066C( "single", 0 );
    var_0 = _func_0F8( self._ID740 - self._ID33810 );

    if ( var_0 < _func_0ED( 512 ) )
    {
        self notify( "return_to_cover" );
        self._ID33962 = 1;
        return;
    }
}

_ID26675()
{
    if ( self._ID33809 == "normal" )
    {
        if ( !_unknown_049F() )
        {
            if ( !_func_02F( self._ID322 ) )
            {
                _unknown_0604();
                return;
            }
            else
            {
                _unknown_0595();
                self._ID33809 = "ambush";
                return "retry";
            }
        }
        else
        {
            _unknown_0606();
            _unknown_06C1( "single", 0 );
        }
    }
    else
    {
        if ( _unknown_04CF() )
        {
            self._ID33809 = "normal";
            self._ID2924 = undefined;
            return "retry";
        }

        _unknown_05C5();
        self._ID33785 = undefined;
        self._ID33816 = "none";
        self._ID33810 = animscripts\utility::_ID16257();

        if ( !_func_02F( self._ID2924 ) )
            self._ID2924 = _func_03D() + _func_0B9( 4000, 8000 );

        if ( self._ID2924 < _func_03D() )
        {
            self._ID33809 = "normal";
            self._ID2924 = undefined;
            return "retry";
        }
    }
}

_ID22964()
{
    if ( _func_02F( self._ID322 ) && !self._ID7305 && self._ID912 != "combat" )
    {
        if ( _func_0D4( self._ID322 ) && _func_02F( self._ID322._ID912 ) && self._ID322._ID912 == "cover_stand" || self._ID322._ID912 == "cover_crouch" )
        {
            if ( _func_02F( self._ID322._ID7._ID8878 ) && self._ID322._ID7._ID8878 == "hide" )
                return;
        }

        self._ID8766 = self._ID322._ID740;
    }
}

_ID41510()
{
    self endon( "killanimscript" );
    self endon( "stop_deciding_how_to_shoot" );

    for (;;)
    {
        self waittill( "suppression" );

        if ( self._ID1057 > self._ID36847 )
        {
            if ( _unknown_06B3() )
            {
                self notify( "return_to_cover" );
                self._ID33962 = 1;
            }
        }
    }
}

_ID29162()
{
    if ( self._ID7305 )
        return 0;

    if ( !_func_02F( self._ID322 ) || !self _meth_81CA( self._ID322 ) )
        return 1;

    if ( _func_03D() < self._ID8895 + 800 )
        return 0;

    if ( _func_1B3( self._ID322 ) && self._ID322._ID486 < self._ID322._ID626 * 0.5 )
    {
        if ( _func_03D() < self._ID8895 + 3000 )
            return 0;
    }

    return 1;
}

_ID30441()
{
    self endon( "death" );
    _ID42237::_ID41068( "killanimscript", "stop_deciding_how_to_shoot" );

    if ( !_func_02F( self._ID54064 ) || !self._ID54064 )
    {
        self._ID7._ID21758 = 0;
        animscripts\shared::_ID39728();
    }
}

_ID7418( var_0, var_1 )
{
    if ( _func_02F( var_0 ) != _func_02F( var_1 ) )
        return 1;

    if ( !_func_02F( var_1 ) )
        return 0;

    return var_0 != var_1;
}

_ID32780()
{
    self._ID33785 = self._ID322;

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
    {
        if ( _func_02F( self._ID12963 ) && self._ID12963 == self._ID322 )
            self._ID33810 = self._ID33785 _meth_809E();
        else
            self._ID33810 = animscripts\combat_utility::_ID15797( self._ID33785 );
    }
    else
        self._ID33810 = self._ID33785 _meth_809E();
}

_ID18275()
{
    self._ID33785 = undefined;
    self._ID33810 = undefined;
    self._ID33816 = "none";

    if ( self._ID302 )
        self._ID33809 = "ambush";

    if ( !self._ID7305 )
    {
        self notify( "return_to_cover" );
        self._ID33962 = 1;
    }
}

_ID33929()
{
    return level._ID15361 == 3 && _func_1B3( self._ID322 );
}

_ID32783()
{
    if ( _func_02F( self._ID33785._ID322 ) && _func_02F( self._ID33785._ID322._ID1065 ) )
        return _unknown_08C5( "single", 0 );

    if ( animscripts\combat_utility::_ID20910() )
        return _unknown_08D3( "single", 0 );

    if ( animscripts\utility::_ID20902( self._ID1302 ) )
    {
        if ( animscripts\utility::_ID41682() )
            return _unknown_08EA( "single", 0 );
        else
            return _unknown_08F6( "semi", 0 );
    }

    if ( _func_1BE( self._ID1302 ) == "grenade" )
        return _unknown_090B( "single", 0 );

    if ( _func_1BC( self._ID1302 ) > 0 )
        return _unknown_091C( "burst", 0 );

    var_0 = _func_0F5( self _meth_809E(), self._ID33810 );
    var_1 = _func_1BE( self._ID1302 ) == "mg";

    if ( self._ID842 && var_1 )
        return _unknown_0941( "full", 0 );

    if ( var_0 < 62500 )
    {
        if ( _func_02F( self._ID33785 ) && _func_02F( self._ID33785._ID22746 ) )
            return _unknown_0961( "single", 0 );
        else
            return _unknown_096E( "full", 0 );
    }
    else if ( var_0 < 810000 || _unknown_08EB() )
    {
        if ( _func_1B9( self._ID1302 ) || _unknown_098D() )
            return _unknown_0995( "semi", 1 );
        else
            return _unknown_09A3( "burst", 1 );
    }
    else if ( self._ID842 || var_1 || var_0 < 2560000 )
    {
        if ( _unknown_09BE() )
            return _unknown_09C5( "semi", 0 );
        else
            return _unknown_09D2( "burst", 0 );
    }

    return _unknown_09DB( "single", 0 );
}

_ID32782()
{
    var_0 = _func_0F5( self _meth_809E(), self._ID33810 );

    if ( _func_1B9( self._ID1302 ) )
    {
        if ( var_0 < 2560000 )
            return _unknown_09FD( "semi", 0 );

        return _unknown_0A06( "single", 0 );
    }

    if ( _func_1BE( self._ID1302 ) == "mg" )
        return _unknown_0A1A( "full", 0 );

    if ( self._ID842 || var_0 < 2560000 )
    {
        if ( _unknown_0A2E() )
            return _unknown_0A35( "semi", 0 );
        else
            return _unknown_0A42( "burst", 0 );
    }

    return _unknown_0A4B( "single", 0 );
}

_ID32781( var_0, var_1 )
{
    self._ID33816 = var_0;
    self._ID13941 = var_1;
}

_ID33940()
{
    if ( _func_1BE( self._ID1302 ) != "rifle" )
        return 0;

    if ( self._ID1194 != "allies" )
        return 0;

    var_0 = animscripts\utility::_ID30670( _func_0C1( self._ID740[1] ), 10000 ) + 2000;
    var_1 = _func_0C1( self._ID740[0] ) + _func_03D();
    return var_1 % 2 * var_0 > var_0;
}

_ID29792()
{
    self._ID34869 = 0;
    self._ID34822 = 0;
    thread _unknown_0AB7();
}

_ID34776()
{
    self endon( "killanimscript" );
    self endon( "enemy" );
    self endon( "return_to_cover" );
    self endon( "began_to_switch_to_sidearm" );
    self notify( "new_glint_thread" );
    self endon( "new_glint_thread" );

    if ( self._ID1194 == "allies" )
        return;

    if ( _func_02F( self._ID10962 ) && self._ID10962 )
        return;

    if ( !_func_02F( level._ID1426["sniper_glint"] ) )
        return;

    if ( !_func_1A7( self._ID322 ) )
        return;

    var_0 = _ID42237::_ID16299( "sniper_glint" );
    wait 0.2;

    for (;;)
    {
        if ( self._ID1302 == self._ID834 && animscripts\combat_utility::_ID27650() && !_func_02F( self._ID20766 ) || !self._ID20766 )
        {
            if ( _func_0F5( self._ID740, self._ID322._ID740 ) > 65536 )
            {
                self notify( "abort_glint" );
                _func_157( var_0, self, "tag_flash" );
                thread _unknown_0B8B( var_0 );
            }

            var_1 = _func_0BA( 3, 5 );
            wait(var_1);
            self notify( "abort_glint" );
        }

        wait 0.2;
    }
}

_ID53104( var_0 )
{
    self endon( "abort_glint" );
    self endon( "death" );
    _ID42237::_ID41068( "began_to_switch_to_sidearm", "killanimscript" );
    _func_159( var_0, self, "tag_flash" );
}
