// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19617()
{
    var_0 = [];
    var_0["standard"] = %melee_1;
    var_0["standard_stand_to_melee"] = %stand_2_melee_1;
    var_0["standard_run_to_melee"] = %run_2_melee_charge;
    var_0["aivai_exposed_attackerwins_attack"] = %melee_f_awin_attack;
    var_0["aivai_exposed_attackerwins_defend"] = %melee_f_awin_defend;
    var_0["aivai_exposed_attackerwins_defend_survive"] = %melee_f_awin_defend_survive;
    var_0["aivai_exposed_defenderwins_attack"] = %melee_f_dwin_attack;
    var_0["aivai_exposed_defenderwins_defend"] = %melee_f_dwin_defend;
    var_0["aivai_wrestle_attackerwins_attack"] = %bog_melee_r_attack;
    var_0["aivai_wrestle_attackerwins_defend"] = %bog_melee_r_defend;
    var_0["aivai_wrestle_attackerwins_defend_survive"] = %bog_melee_r_backdeath2;
    var_0["aivai_behind_attackerwins_attack"] = %melee_sync_attack;
    var_0["aivai_behind_attackerwins_defend"] = %melee_sync_defend;
    var_0["aivai_exposed_defenderwins_attack_kick"] = %melee_f_dwin_attack_kick;
    var_0["aivai_exposed_defenderwins_defend_kick"] = %melee_f_dwin_defend_kick;
    var_0["aivai_exposed_defenderwins_attack_survive_kick"] = %melee_f_dwin_attack_survive_kick;
    var_0["aivai_coverleft_attackerwins_attack"] = %cornersdl_melee_wina_attacker;
    var_0["aivai_coverleft_attackerwins_defend"] = %cornersdl_melee_wina_defender;
    var_0["aivai_coverleft_attackerwins_defend_survive"] = %cornersdl_melee_wina_defender_survive;
    var_0["aivai_coverleft_defenderwins_attack"] = %cornersdl_melee_wind_attacker;
    var_0["aivai_coverleft_defenderwins_attack_survive"] = %cornersdl_melee_wind_attacker_survive;
    var_0["aivai_coverleft_defenderwins_defend"] = %cornersdl_melee_wind_defender;
    var_0["aivai_coverright_attackerwins_attack"] = %cornersdr_melee_wina_attacker;
    var_0["aivai_coverright_attackerwins_defend"] = %cornersdr_melee_wina_defender;
    var_0["aivai_coverright_defenderwins_attack"] = %cornersdr_melee_wind_attacker;
    var_0["aivai_coverright_defenderwins_defend"] = %cornersdr_melee_wind_defender;
    anim._ID3277["soldier"]["melee"] = var_0;
}

_ID23396()
{
    _func_14C( "weapon_parabolic_knife" );
    level._ID1426["melee_knife_ai"] = _func_155( "vfx/weaponimpact/flesh_impact_knife" );
}

_ID23419()
{
    if ( !_func_02F( self._ID1644 ) )
        return 0;

    if ( _func_02F( self._ID13019 ) && _func_02F( self._ID13019["_stealth_enabled"] ) && self._ID13019["_stealth_enabled"] )
    {
        if ( _func_02F( self._ID13019["_stealth_attack"] ) && !self._ID13019["_stealth_attack"] )
            return 1;
    }

    return 0;
}

_ID23422()
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( _func_02F( self._ID11579 ) )
        return 0;

    if ( _unknown_0225() )
        return 0;

    if ( !_unknown_0A5A( self._ID322 ) )
        return 0;

    _unknown_0260();

    if ( !_unknown_026B() )
    {
        _unknown_0A78( self._ID322 );
        return 0;
    }

    self _meth_81A6( ::_unknown_03C4, ::_unknown_0A60 );
}

_ID23406()
{
    self._ID23353._ID1191 = self._ID322;
    self._ID23353._ID19946 = 0;
    self._ID23353._ID20038 = 0;
}

_ID23373()
{
    if ( !_unknown_0337() )
        return 0;

    self._ID23353._ID19946 = 1;

    if ( _unknown_0769() )
    {
        self._ID23353._ID15079 = ::_unknown_07D5;
        return 1;
    }

    if ( _unknown_042E() )
    {
        if ( _func_02F( self._ID35380 ) )
            self._ID23353._ID15079 = self._ID35380;
        else
            self._ID23353._ID15079 = ::_unknown_046E;

        return 1;
    }

    self._ID23353._ID15079 = undefined;
    self._ID24789 = _func_03D() + 150;
    self._ID24788 = self._ID23353._ID1191;
    return 0;
}

_ID23425()
{
    var_0 = 1;
    var_1 = _func_0F4( self._ID23353._ID36155, self._ID23353._ID1191._ID740 );

    if ( var_1 < 32 )
    {
        var_2 = _func_119( ( self._ID23353._ID36155[0] - self._ID23353._ID1191._ID740[0], self._ID23353._ID36155[1] - self._ID23353._ID1191._ID740[1], 0 ) );
        self._ID23353._ID36155 = self._ID23353._ID36155 + var_2 * 32 - var_1;

        if ( _func_0F3( self._ID23353._ID36155, self._ID23353._ID1191._ID740 ) < 31.9 )
            return 0;

        var_0 = 0;
    }

    var_3 = self _meth_8146( self._ID23353._ID36155 );

    if ( !_func_02F( var_3 ) )
        return 0;

    if ( _func_0C3( self._ID23353._ID36155[2] - var_3[2] ) > 51.2 )
        return 0;

    if ( _func_0C3( self._ID740[2] - var_3[2] ) > 51.2 )
        return 0;

    self._ID23353._ID36155 = var_3;

    if ( !self _meth_81CF( self._ID23353._ID36155, 1, var_0 ) )
        return 0;

    if ( _func_02F( self._ID23353._ID36166 ) )
    {
        var_4 = self._ID23353._ID36155 - self._ID23353._ID1191._ID740;
        var_5 = _func_11F( self._ID23353._ID36166 );
        var_6 = _func_0FB( var_5, var_4 );
        var_7 = self._ID23353._ID36155 - var_5 * var_6;
        var_8 = self._ID23353._ID1191._ID740 - var_7;
        var_9 = _func_0F4( self._ID23353._ID1191._ID740, var_7 );

        if ( var_9 < 32 )
            var_7 -= var_8 * 32 - var_9 / 32;
    }
    else
    {
        var_2 = _func_119( ( self._ID23353._ID36155[0] - self._ID23353._ID1191._ID740[0], self._ID23353._ID36155[1] - self._ID23353._ID1191._ID740[1], 0 ) );
        var_7 = self._ID23353._ID1191._ID740 + var_2 * 32;
    }

    if ( !self _meth_81D0( self._ID23353._ID36155, var_7, 1, 0 ) )
        return 0;

    if ( !self _meth_81D0( var_7, self._ID23353._ID1191._ID740, 1, 1 ) )
        return 0;

    return 1;
}

_ID23397()
{
    if ( !_func_02F( self._ID23353._ID1191 ) )
        return 0;

    var_0 = self._ID23353._ID1191;

    if ( _func_02F( var_0._ID11579 ) )
        return 0;

    var_1 = _func_0F5( self._ID740, var_0._ID740 );

    if ( _func_02F( self._ID23429 ) )
        var_2 = self._ID23429;
    else if ( _func_1B3( var_0 ) )
        var_2 = 40000;
    else
        var_2 = 25600;

    if ( !self._ID23353._ID19946 && var_1 > var_2 )
        return 0;

    if ( !_func_1A7( self ) )
        return 0;

    if ( _func_02F( self._ID7._ID24902 ) && self._ID7._ID31561 >= _func_03D() + 50 )
        return 0;

    if ( _func_02F( self._ID24789 ) && _func_02F( self._ID24788 ) && _func_03D() < self._ID24789 && self._ID24788 == var_0 )
        return 0;

    if ( _func_02F( self._ID7._ID25684 ) || self._ID7._ID28253 == "prone" )
        return 0;

    if ( animscripts\utility::_ID39997() )
        return 0;

    if ( _func_02F( self._ID458 ) && self._ID426 == 1 )
        return 0;

    if ( !_func_1A7( var_0 ) )
        return 0;

    if ( _func_02F( var_0._ID11566 ) || _func_02F( var_0._ID511 ) && var_0._ID511 )
        return 0;

    if ( !_func_0D4( var_0 ) && !_func_1B3( var_0 ) )
        return 0;

    if ( _func_0D4( var_0 ) )
    {
        if ( var_0 _meth_81A7() )
            return 0;

        if ( var_0 _ID42407::_ID11498() || var_0._ID274 )
        {
            if ( !_func_02F( self._ID36736 ) || self._ID36736 != "riotshield" )
                return 0;
        }
    }

    if ( _func_1B3( var_0 ) )
        var_3 = var_0 _meth_8188();
    else
        var_3 = var_0._ID7._ID28253;

    if ( var_3 != "stand" && var_3 != "crouch" )
    {
        if ( !_func_02F( self._ID36736 ) || self._ID36736 != "riotshield" )
            return 0;
    }

    if ( _func_02F( self._ID22746 ) && _func_02F( var_0._ID22746 ) )
        return 0;

    if ( _func_02F( var_0._ID458 ) )
        return 0;

    if ( self._ID23353._ID20038 )
        var_4 = 110;
    else
        var_4 = 60;

    var_5 = _func_0F0( self._ID65[1] - animscripts\utility::_ID16756( var_0._ID740 ) );

    if ( _func_0C3( var_5 ) > var_4 )
        return 0;

    if ( var_1 <= 4096 )
        return 1;

    if ( self._ID23353._ID20038 )
        return 0;

    if ( _func_02F( self._ID24787 ) && _func_02F( self._ID24786 ) && _func_03D() < self._ID24787 && self._ID24786 == var_0 )
        return 0;

    return 1;
}

_ID23418()
{
    self._ID23353._ID28091 = 1;
    self._ID7._ID24414 = "run";
}

_ID23420()
{
    self _meth_814C( %body, 0.2 );
    self._ID23353._ID28091 = undefined;
    self._ID7._ID24414 = "stop";
    self _meth_819B( "face default" );
}

_ID23398()
{
    self endon( "killanimscript" );
    self endon( "end_melee" );

    for (;;)
    {
        var_0 = self._ID23353._ID15079;
        [[ self._ID23353._ID15079 ]]();

        if ( !_func_02F( self._ID23353._ID15079 ) || var_0 == self._ID23353._ID15079 )
            break;
    }
}

_ID23412( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    self._ID24791 = _func_03D() + 2500;
    self._ID24790 = var_0;
}

_ID23410()
{
    var_0 = _func_0F5( self._ID23353._ID1191._ID740, self._ID740 );

    if ( var_0 > 4096 && _func_02F( self._ID24791 ) && _func_02F( self._ID24790 ) && _func_03D() < self._ID24791 && self._ID24790 == self._ID23353._ID1191 )
        return 0;

    return 1;
}

_ID23411()
{
    if ( _func_02F( self._ID23353._ID1191._ID22746 ) )
        return 0;

    if ( !_unknown_0867() )
        return 0;

    if ( _func_02F( self._ID23353._ID1191._ID35381 ) )
        return 0;

    return _unknown_0915();
}

_ID23416()
{
    if ( _func_02F( self._ID23429 ) )
        var_0 = self._ID23429;
    else if ( _func_1B3( self._ID23353._ID1191 ) )
        var_0 = 40000;
    else
        var_0 = 25600;

    if ( _func_0F5( self._ID740, self._ID23353._ID1191._ID740 ) > var_0 )
        self._ID23353._ID16914 = _func_03D() + 3000;
    else
        self._ID23353._ID16914 = _func_03D() + 1000;
}

_ID23414()
{
    self _meth_819A( "zonly_physics" );

    if ( _func_02F( self._ID23353._ID1191 ) )
        _unknown_0902();

    while ( _func_02F( self._ID23353._ID1191 ) )
    {
        if ( !_unknown_099E() )
        {
            self._ID24787 = _func_03D() + 1500;
            self._ID24786 = self._ID23353._ID1191;
            break;
        }

        if ( !_func_02F( self._ID23353._ID1191 ) )
            break;

        animscripts\battlechatter_ai::_ID13239();
        self _meth_819B( "face point", self._ID23353._ID1191._ID740 );
        var_0 = animscripts\utility::_ID22630( "melee", "standard" );
        self _meth_8119( "meleeanim", var_0, %body, 1, 0.2, 1 );
        _unknown_0FF5( var_0 );
        self._ID23353._ID20038 = 1;

        if ( !_unknown_09CA() )
        {
            _unknown_095C( self._ID23353._ID1191 );
            break;
        }
    }

    self _meth_819A( "none" );
}

_ID23415()
{
    for (;;)
    {
        self waittill( "meleeanim",  var_0  );

        if ( var_0 == "end" )
            return 1;

        if ( var_0 == "stop" )
        {
            if ( !_unknown_082F() )
                return 0;

            if ( self._ID23353._ID15079 != ::_unknown_09D7 )
                return 1;
        }

        if ( var_0 == "fire" )
        {
            if ( _func_02F( self._ID23353._ID1191 ) )
            {
                var_1 = self._ID23353._ID1191._ID486;
                self _meth_81F9();

                if ( _func_02F( self._ID23353._ID1191 ) && self._ID23353._ID1191._ID486 < var_1 )
                    _unknown_09FB();
            }

            _unknown_0B5E();
        }
    }
}

_ID23417()
{
    if ( !_func_02F( self._ID23353._ID1191 ) )
        return 0;

    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( !_unknown_0935() )
        return 0;

    var_0 = _func_119( self._ID23353._ID1191._ID740 - self._ID740 );
    self._ID23353._ID36155 = self._ID23353._ID1191._ID740 - 40.0 * var_0;
    return _unknown_08E0();
}

_ID23413()
{
    if ( !_unknown_0AC1() )
        return 0;

    var_0 = _ID42237::_ID11126( self._ID740, self._ID23353._ID1191._ID740 );

    if ( var_0 <= 4096 )
    {
        var_1 = animscripts\utility::_ID22630( "melee", "standard_stand_to_melee" );
        self _meth_8118( "readyanim", var_1, %body, 1, 0.3, 1 );
        _ID23361( var_1 );
        animscripts\shared::_ID11529( "readyanim" );
        return 1;
    }

    _unknown_0BD9();
    var_2 = self._ID23353._ID1191._ID740;
    var_3 = 0.1;
    var_4 = animscripts\utility::_ID22630( "melee", "standard_run_to_melee" );
    var_5 = _func_0F6( _func_094( var_4, 0, 1 ) );
    var_6 = 32;
    var_7 = 48.0 + var_6 + var_5;
    var_8 = var_7 * var_7;
    var_9 = 64 + var_6;
    var_10 = var_9 * var_9;
    var_11 = _func_067( var_4 ) * 1000;
    var_12 = var_11 - 100;
    var_13 = var_11 - 200;
    var_14 = 0;
    var_15 = undefined;
    var_16 = animscripts\utility::_ID22630( "run", "straight" );

    if ( _func_1B3( self._ID23353._ID1191 ) && self._ID23353._ID1191 == self._ID322 )
        self _meth_819B( "face enemy" );
    else
        self _meth_819B( "face point", self._ID23353._ID1191._ID740 );

    self _meth_8118( "chargeanim", var_16, %body, 1, 0.2, 1 );
    _unknown_11CC( var_16 );
    var_17 = 0;

    for (;;)
    {
        var_18 = _func_03D();
        var_19 = _func_02F( var_15 ) && var_15 <= var_8;

        if ( !var_17 )
        {
            if ( var_19 )
            {
                _unknown_0B19();
                self _meth_8119( "chargeanim", var_4, %body, 1, 0.1, 1 );
                _unknown_120B( var_4 );
                var_14 = var_18;
                var_17 = 1;
            }
        }
        else
        {
            var_20 = var_0 <= var_8;

            if ( var_18 - var_14 >= var_12 || !var_19 && !var_20 )
            {
                _unknown_0B59();
                self _meth_8118( "chargeanim", var_16, %body, 1, 0.3, 1 );
                _unknown_124A( var_16 );
                var_17 = 0;
            }
        }

        animscripts\notetracks::_ID11534( var_3, "chargeanim" );

        if ( !_unknown_0C4B() )
        {
            _unknown_0B93();
            return 0;
        }

        var_0 = _ID42237::_ID11126( self._ID740, self._ID23353._ID1191._ID740 );
        var_21 = self._ID23353._ID1191._ID740 - var_2 * 1 / _func_03D() - var_18;
        var_2 = self._ID23353._ID1191._ID740;
        var_22 = self._ID23353._ID1191._ID740 + var_21 * var_13;
        var_15 = _ID42237::_ID11126( self._ID740, var_22 );

        if ( var_17 && var_0 <= var_10 && _func_03D() - var_14 >= var_12 || !_func_1B3( self._ID23353._ID1191 ) )
            break;

        if ( !var_17 && _func_03D() >= self._ID23353._ID16914 )
        {
            _unknown_0C0B();
            return 0;
        }
    }

    _unknown_0C12();
    return 1;
}

_ID23402()
{
    if ( !_func_02F( self._ID7._ID24785 ) )
        self._ID7._ID24785 = 0;

    if ( _func_02F( self._ID322 ) && _func_1B3( self._ID322 ) || _func_0B7( 3 ) == 0 )
    {
        if ( _func_03D() > self._ID7._ID24785 )
        {
            animscripts\face::_ID30759( "meleecharge" );
            self._ID7._ID24785 = _func_03D() + 8000;

            if ( !_func_02F( self._ID7.nextmeleesound ) )
                self._ID7.nextmeleesound = _func_03D() + 1900;
        }
    }
}

melee_playeffortsound()
{
    if ( !_func_02F( self._ID7.nextmeleesound ) )
        self._ID7.nextmeleesound = 0;

    if ( _func_02F( self._ID322 ) && _func_1B3( self._ID322 ) || _func_0B7( 3 ) == 0 )
    {
        if ( _func_03D() > self._ID7.nextmeleesound )
        {
            animscripts\face::_ID30759( "meleeattack" );
            self._ID7.nextmeleesound = _func_03D() + 500;
        }
    }
}

_ID23362( var_0, var_1 )
{
    var_2 = 90;
    var_3 = 900;
    var_4 = 2025;

    if ( self._ID23353._ID20038 )
        var_2 += 50;

    if ( _func_0C3( var_0 ) < var_2 )
        return 0;

    var_5 = self._ID23353._ID1191;
    _unknown_0F91();

    if ( self._ID23353._ID41797 )
    {
        if ( _func_0F9( var_1 ) < var_3 )
            return 0;

        self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_exposed_attackerwins_attack" );
        var_5._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_exposed_attackerwins_defend" );
        var_5._ID23353._ID36862 = animscripts\utility::_ID22630( "melee", "aivai_exposed_attackerwins_defend_survive" );
    }
    else
    {
        if ( _func_0F9( var_1 ) < var_4 )
            return 0;

        self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_exposed_defenderwins_attack" );
        var_5._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_exposed_defenderwins_defend" );
    }

    return 1;
}

_ID23363( var_0, var_1 )
{
    var_2 = 100;

    if ( self._ID23353._ID20038 )
        var_2 += 50;

    if ( _func_0C3( var_0 ) < var_2 )
        return 0;

    var_3 = self._ID23353._ID1191;

    if ( _func_02F( var_3._ID22746 ) )
        return 0;

    if ( _func_02F( var_3._ID23426 ) )
        return 0;

    self._ID23353._ID41797 = 1;
    self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_wrestle_attackerwins_attack" );
    var_3._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_wrestle_attackerwins_defend" );
    var_3._ID23353._ID36862 = animscripts\utility::_ID22630( "melee", "aivai_wrestle_attackerwins_defend_survive" );
    return 1;
}

_ID52288( var_0, var_1 )
{
    var_2 = 90;
    var_3 = 6400;

    if ( self._ID23353._ID20038 )
        var_2 += 50;

    if ( _func_0C3( var_0 ) < var_2 )
        return 0;

    if ( _func_02F( self._ID22746 ) )
        return 0;

    var_4 = self._ID23353._ID1191;

    if ( _func_02F( self._ID23426 ) )
        return 0;

    if ( _func_0F9( var_1 ) < var_3 )
        return 0;

    self._ID23353._ID41797 = 0;
    self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_exposed_defenderwins_attack_kick" );
    self._ID23353._ID36862 = animscripts\utility::_ID22630( "melee", "aivai_exposed_defenderwins_attack_survive_kick" );
    var_4._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_exposed_defenderwins_defend_kick" );
    return 1;
}

_ID23360( var_0, var_1 )
{
    if ( -90 > var_0 || var_0 > 0 )
        return 0;

    var_2 = self._ID23353._ID1191;

    if ( _func_02F( var_2._ID22746 ) )
        return 0;

    if ( _func_02F( var_2._ID23426 ) )
        return 0;

    self._ID23353._ID41797 = 1;
    self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_behind_attackerwins_attack" );
    var_2._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_behind_attackerwins_defend" );
    return 1;
}

_ID23361()
{
    if ( _func_02F( self._ID23435 ) )
        var_0[0] = ::_unknown_1075;
    else if ( _func_02F( self._ID23436 ) )
        var_0[0] = ::_unknown_10BD;
    else
    {
        var_0[0] = ::_unknown_108F;
        var_0[1] = ::_unknown_10CD;
        var_0[2] = ::_unknown_10FA;
        var_0[3] = ::_unknown_112A;

        for ( var_1 = 2; var_1 > 0; var_1-- )
        {
            var_2 = _func_0B7( var_1 + 1 );
            var_3 = var_0[var_1];
            var_0[var_1] = var_0[var_2];
            var_0[var_2] = var_3;
        }
    }

    return var_0;
}

_ID23359()
{
    if ( _func_02F( self._ID44480 ) && !self._ID44480 )
        return 0;

    var_0 = self._ID23353._ID1191;
    var_1 = var_0._ID740 - self._ID740;
    var_2 = _func_11A( var_1 );
    var_3 = _func_0F0( var_0._ID65[1] - var_2[1] );
    var_4 = _unknown_11A3();

    for ( var_5 = 0; var_5 < var_4.size; var_5++ )
    {
        if ( [[ var_4[var_5] ]]( var_3, var_1 ) )
        {
            self._ID23353._ID36098 = ( 0, var_2[1], 0 );
            self._ID23353._ID36155 = _func_071( var_0._ID740, var_0._ID65, self._ID23353._ID3189 );

            if ( _unknown_0E56() )
                return 1;
        }
    }

    return 0;
}

_ID23378()
{
    var_0 = self._ID23353._ID1191;

    if ( _func_02F( self._ID23426 ) )
    {
        self._ID23353._ID41797 = 1;
        return;
    }
    else if ( _func_02F( var_0._ID23426 ) )
    {
        self._ID23353._ID41797 = 0;
        return;
    }

    if ( _func_02F( self._ID22746 ) )
        self._ID23353._ID41797 = 1;
    else if ( _func_02F( var_0._ID22746 ) )
        self._ID23353._ID41797 = 0;
    else if ( var_0 _ID42407::_ID11498() || var_0._ID274 )
        self._ID23353._ID41797 = 1;
    else
        self._ID23353._ID41797 = _ID42237::_ID8201();
}

_ID23371()
{
    var_0 = self._ID23353._ID1191;
    _unknown_129D();
    var_1 = var_0._ID8893._ID1244;

    if ( var_1 == "Cover Multi" )
        var_1 = animscripts\utility::_ID16194( var_0._ID8893 );

    if ( var_1 == "Cover Left" )
    {
        if ( self._ID23353._ID41797 )
        {
            self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_coverleft_attackerwins_attack" );
            var_0._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_coverleft_attackerwins_defend" );
            var_0._ID23353._ID36862 = animscripts\utility::_ID22630( "melee", "aivai_coverleft_attackerwins_defend_survive" );
        }
        else
        {
            self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_coverleft_defenderwins_attack" );
            self._ID23353._ID36862 = animscripts\utility::_ID22630( "melee", "aivai_coverleft_defenderwins_attack_survive" );
            var_0._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_coverleft_defenderwins_defend" );
        }
    }
    else if ( self._ID23353._ID41797 )
    {
        self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_coverright_attackerwins_attack" );
        var_0._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_coverright_attackerwins_defend" );
    }
    else
    {
        self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_coverright_defenderwins_attack" );
        var_0._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_coverright_defenderwins_defend" );
    }

    self._ID23353._ID36155 = _func_071( var_0._ID8893._ID740, var_0._ID8893._ID65, self._ID23353._ID3189 );
    self._ID23353._ID36098 = ( var_0._ID8893._ID65[0], _func_0F0( var_0._ID8893._ID65[1] + 180 ), var_0._ID8893._ID65[2] );
    var_0._ID23353._ID13763 = animscripts\utility::_ID16462( var_0._ID8893 );
    self._ID23353._ID36166 = var_0._ID8893._ID65;

    if ( !_unknown_1024() )
    {
        self._ID23353._ID36166 = undefined;
        return 0;
    }

    return 1;
}

_ID23370()
{
    if ( _func_02F( self._ID44480 ) && !self._ID44480 )
        return 0;

    var_0 = self._ID23353._ID1191._ID8893;

    if ( !_func_02F( var_0 ) )
        return 0;

    if ( _func_0F5( var_0._ID740, self._ID23353._ID1191._ID740 ) > 16 && _func_02F( self._ID23353._ID1191._ID7._ID8878 ) && self._ID23353._ID1191._ID7._ID8878 != "hide" && self._ID23353._ID1191._ID7._ID8878 != "lean" )
        return 0;

    var_1 = _func_11A( self._ID740 - var_0._ID740 );
    var_2 = _func_0F0( var_0._ID65[1] - var_1[1] );
    var_3 = var_0._ID1244;

    if ( var_3 == "Cover Multi" )
        var_3 = animscripts\utility::_ID16194( var_0 );

    if ( var_3 == "Cover Left" )
    {
        if ( var_2 >= -50 && var_2 <= 0 )
            return 1;
    }
    else if ( var_3 == "Cover Right" )
    {
        if ( var_2 >= 0 && var_2 <= 50 )
            return 1;
    }

    return 0;
}

_ID23357()
{
    var_0 = self._ID23353._ID1191;

    if ( !_func_0D4( var_0 ) || var_0._ID1244 != "human" )
        return 0;

    if ( self._ID1012 != "none" || var_0._ID1012 != "none" )
        return 0;

    if ( _func_02F( self._ID23426 ) && _func_02F( var_0._ID23426 ) )
        return 0;

    if ( _func_02F( self._ID22746 ) && _func_02F( var_0._ID22746 ) )
        return 0;

    if ( _func_02F( self._ID23426 ) && _func_02F( var_0._ID22746 ) || _func_02F( var_0._ID23426 ) && _func_02F( self._ID22746 ) )
        return 0;

    if ( _func_02F( self._ID35381 ) )
    {
        if ( ![[ self._ID35381 ]]() )
            return 0;

        self._ID23353._ID28396 = 1;
    }
    else if ( _func_02F( var_0._ID35381 ) )
        return 0;
    else if ( _unknown_15F2() && _unknown_1580() )
        self._ID23353._ID28396 = 1;
    else
    {
        if ( !_unknown_1548() )
            return 0;

        self._ID23353._ID28396 = 0;
    }

    if ( !_func_02F( var_0._ID23353._ID13763 ) )
        var_0._ID23353._ID13763 = var_0._ID65[1];

    self._ID23353._ID36156 = self._ID23353._ID36155 - var_0._ID740;
    return 1;
}

_ID23369( var_0 )
{
    self._ID23353._ID37003 = var_0;
    var_0._ID23353._ID37003 = undefined;
}

_ID23372( var_0 )
{
    if ( !_func_02F( var_0._ID23353 ) )
        return;

    _unknown_14A0();

    if ( !_func_1A7( var_0 ) )
        return;

    self._ID1065 = var_0;
    var_0._ID1065 = self;
    self._ID23353._ID22409 = 1;
    var_0._ID23353._ID22409 = 1;
    self _meth_8054( var_0, "tag_sync", 1, 1 );
}

_ID23368()
{
    if ( !_unknown_17F0() )
    {
        self._ID24787 = _func_03D() + 1500;
        self._ID24786 = self._ID23353._ID1191;
        return;
    }

    var_0 = self._ID23353._ID1191;

    if ( !_func_068( self._ID23353._ID3189, "sync" ) )
        return;

    _unknown_1747( var_0 );

    if ( self._ID23353._ID41797 )
    {
        self._ID23353._ID264 = undefined;
        var_0._ID23353._ID264 = 1;
    }
    else
    {
        var_0._ID23353._ID264 = undefined;
        self._ID23353._ID264 = 1;
    }

    self._ID23353._ID26280 = var_0;
    var_0._ID23353._ID26280 = self;

    if ( animscripts\utility::_ID39997() )
    {
        _ID42407::_ID14803( self._ID834, "primary" );
        self._ID22034 = self._ID834;
    }

    if ( var_0 animscripts\utility::_ID39997() )
    {
        var_0 _ID42407::_ID14803( var_0._ID834, "primary" );
        var_0._ID22034 = var_0._ID834;
    }

    self._ID23353._ID1302 = self._ID1302;
    self._ID23353._ID41708 = animscripts\utility::_ID16202();
    var_0._ID23353._ID1302 = var_0._ID1302;
    var_0._ID23353._ID41708 = var_0 animscripts\utility::_ID16202();
    self._ID23353._ID20038 = 1;
    var_0 _meth_81A6( ::_unknown_18E9, ::_unknown_1ABB );
    var_0 thread _unknown_1850( self );
    self._ID23353._ID1191 = undefined;
    _unknown_18FB();
}

_ID23356( var_0 )
{
    self endon( "end_melee" );
    self endon( "melee_aivsai_execute" );
    wait 0.1;

    if ( _func_02F( var_0 ) )
        var_0 notify( "end_melee" );

    self notify( "end_melee" );
}

_ID23367( var_0, var_1 )
{
    if ( _func_02F( var_1 ) && var_1 <= _func_03D() )
        return 0;

    if ( !_unknown_13BE() )
        return 0;

    var_2 = self._ID23353._ID1191;
    var_3 = _func_0F5( var_2._ID740, var_0 );

    if ( self._ID23353._ID28396 )
        var_4 = 256;
    else
        var_4 = 1296;

    if ( var_3 > var_4 )
        return 0;

    self._ID23353._ID36155 = var_2._ID740 + self._ID23353._ID36156;

    if ( !_unknown_137E() )
        return 0;

    return 1;
}

_ID23366( var_0 )
{
    var_1 = _func_0F5( ( self._ID740[0], self._ID740[1], 0 ), ( self._ID23353._ID36155[0], self._ID23353._ID36155[1], 0 ) );

    if ( var_1 < 64 && _func_0C3( self._ID23353._ID36155[2] - self._ID740[2] ) < 64 )
        return 1;

    var_2 = _func_0F5( ( var_0[0], var_0[1], 0 ), ( self._ID23353._ID36155[0], self._ID23353._ID36155[1], 0 ) );
    var_3 = _func_0F5( ( self._ID740[0], self._ID740[1], 0 ), ( self._ID23353._ID1191._ID740[0], self._ID23353._ID1191._ID740[1], 0 ) );

    if ( var_2 > var_3 && _func_0C3( self._ID23353._ID1191._ID740[2] - self._ID740[2] ) < 64 )
        return 1;

    return 0;
}

_ID23365( var_0 )
{
    _unknown_1541();

    if ( self._ID23353._ID28396 )
    {
        self _meth_81D2( self._ID23353._ID36155, self._ID23353._ID36098 );
        wait 0.05;
    }
    else
    {
        self _meth_819B( "face angle", self._ID23353._ID36098[1] );
        wait 0.05;
    }

    return _unknown_19B9( var_0 );
}

_ID23364()
{
    if ( !_unknown_14DD() )
        return 0;

    _unknown_157D();
    self _meth_814C( %body, 0.2 );
    self _meth_8151( animscripts\run::_ID16576(), %body, 1, 0.2 );
    self _meth_819A( "zonly_physics" );
    self._ID561 = 1;

    if ( _func_02F( self._ID36736 ) && self._ID36736 == "riotshield" )
        var_0 = _func_03D() + 2500;
    else
        var_0 = _func_03D() + 1500;

    var_1 = self._ID23353._ID1191._ID740;

    while ( _ID23364( var_1, var_0 ) )
    {
        if ( _unknown_1A47( var_1 ) )
            return _unknown_1A81( var_1 );

        self _meth_819B( "face point", self._ID23353._ID36155 );
        wait 0.05;
    }

    _unknown_1606();
    return 0;
}

_ID23358()
{
    self endon( "killanimscript" );
    self endon( "end_melee" );
    self notify( "melee_aivsai_execute" );
    self _meth_819A( "zonly_physics" );
    self._ID7._ID35357 = "none";
    self._ID35375 = undefined;
    thread _unknown_1B92();
    thread _unknown_1BAB();

    if ( _func_02F( self._ID23353._ID13763 ) )
        self _meth_819B( "face angle", self._ID23353._ID13763 );
    else
        self _meth_819B( "face current" );

    self._ID7._ID28253 = "stand";
    self _meth_814C( %body, 0.2 );

    if ( _func_02F( self._ID23353._ID264 ) )
        _unknown_1BAE();

    self _meth_8119( "meleeAnim", self._ID23353._ID3189, %body, 1, 0.2 );
    _unknown_1D6F( self._ID23353._ID3189 );
    var_0 = animscripts\shared::_ID11529( "meleeAnim", ::_unknown_1C88 );

    if ( var_0 == "melee_death" && _func_02F( self._ID23353._ID36860 ) || _func_02F( self._ID22746 ) && self._ID22746 )
    {
        _unknown_1C14();
        self _meth_8119( "meleeAnim", self._ID23353._ID36862, %body, 1, 0.2 );
        _unknown_1DC0( self._ID23353._ID36862 );
        var_0 = animscripts\shared::_ID11529( "meleeAnim", ::_unknown_1CD9 );
    }

    if ( _func_02F( self._ID23353 ) && _func_02F( self._ID23353._ID264 ) )
        self _meth_8058();

    self._ID561 = 0;
}

_ID23379()
{
    self._ID23353._ID41410 = self._ID52;
    self._ID23353._ID41420 = self._ID14507;
    _ID42407::_ID10949();
    _ID42407::_ID32628( 1 );
}

_ID23399()
{
    return _func_02F( self._ID23353._ID1302 ) && self._ID23353._ID1302 != "none" && self._ID1302 != self._ID23353._ID1302;
}

_ID23382()
{
    if ( self._ID1302 != "none" && self._ID22034 != "none" )
        return;

    if ( !_func_02F( self._ID23353._ID1302 ) || self._ID23353._ID1302 == "none" )
        return;

    _ID42407::_ID14803( self._ID23353._ID1302, self._ID23353._ID41708 );

    if ( _func_02F( self._ID23353._ID12152 ) )
    {
        self._ID23353._ID12152 _meth_80B7();
        self._ID23353._ID12152 = undefined;
    }
}

_ID23381()
{
    self endon( "killanimscript" );
    self endon( "end_melee" );
    self waittill( "weapon_dropped",  var_0  );

    if ( _func_02F( var_0 ) )
        self._ID23353._ID12152 = var_0;
}

_ID23401()
{
    if ( !_func_02F( self._ID23353._ID36862 ) )
        return 0;

    if ( !_func_02F( self._ID23353._ID36861 ) )
        return 0;

    return 1;
}

_ID23400()
{
    self endon( "killanimscript" );
    self endon( "end_melee" );
    self waittill( "partner_end_melee" );

    if ( _func_02F( self._ID23353._ID264 ) )
    {
        if ( _func_02F( self._ID23353._ID3173 ) || _func_02F( self._ID23353._ID20164 ) )
            self _meth_8058();
        else
        {
            self._ID23353._ID264 = undefined;

            if ( _unknown_1D8C() )
                self._ID23353._ID36860 = 1;
            else
                self notify( "end_melee" );
        }
    }
    else if ( !_func_02F( self._ID23353._ID39579 ) )
    {
        if ( !_func_02F( self._ID28253 ) || self._ID28253 != "stand" && _func_02F( self._ID7._ID25684 ) && self._ID7._ID25684 == 1 )
        {
            self _meth_819B( "face default" );
            animscripts\utility::_ID13390( 1.0 );
            animscripts\notetracks::_ID32755( "stand" );
        }

        self notify( "end_melee" );
    }
}

_ID23423()
{
    if ( !_func_02F( self._ID23353._ID22409 ) )
        return;

    if ( _func_02F( self._ID1065 ) )
        self._ID1065 _unknown_1E4E();

    _unknown_1E52();
}

_ID23424()
{
    self _meth_8055();
    self._ID1065 = undefined;

    if ( !_func_1A7( self ) )
        return;

    self._ID23353._ID22409 = undefined;
    self _meth_819A( "zonly_physics" );
    self _meth_819B( "face angle", self._ID65[1] );
}

_ID23394()
{
    _unknown_1E74();
    self._ID23353._ID39579 = 1;

    if ( _func_02F( self._ID23353._ID26280 ) && _func_02F( self._ID23353._ID26280._ID23353 ) )
        self._ID23353._ID26280._ID23353._ID39579 = 1;
}

_ID23393()
{
    if ( _func_068( self._ID23353._ID3189, "melee_death" ) )
        return 0;

    return _func_02F( self._ID23353._ID264 );
}

_ID23392( var_0 )
{
    if ( _func_02F( var_0 ) && var_0 )
        self._ID23353._ID20164 = 1;
    else
        self._ID23353._ID3173 = 1;
}

_ID23391( var_0 )
{
    if ( _func_125( var_0, "ps_" ) )
    {
        var_1 = _func_127( var_0, 3 );
        self _meth_80A1( var_1 );
    }
    else if ( var_0 == "sync" )
    {
        if ( _func_02F( self._ID23353._ID37003 ) )
        {
            _unknown_1D37( self._ID23353._ID37003 );
            self._ID23353._ID37003 = undefined;
        }
    }
    else if ( var_0 == "unsync" )
    {
        _unknown_1F32();

        if ( _unknown_1F46() )
            _unknown_1F54();
    }
    else if ( var_0 == "melee_interact" )
        self._ID23353._ID36861 = 1;
    else if ( var_0 == "melee_death" )
    {
        var_2 = _func_02F( self._ID22746 ) && self._ID22746;

        if ( _func_02F( self._ID23353._ID36860 ) || var_2 )
        {
            if ( var_2 )
                self._ID23353._ID264 = undefined;

            return var_0;
        }

        _unknown_1F93();

        if ( _func_02F( self._ID23353._ID3173 ) )
        {
            return var_0;
            return;
        }
    }
    else if ( var_0 == "attach_knife" )
    {
        self _meth_801D( "weapon_parabolic_knife", "TAG_INHAND", 1 );
        self._ID23353._ID18229 = 1;
    }
    else if ( var_0 == "detach_knife" )
    {
        self _meth_802A( "weapon_parabolic_knife", "TAG_INHAND", 1 );
        self._ID23353._ID18229 = undefined;
    }
    else if ( var_0 == "stab" )
    {
        self _meth_80A1( "melee_knife_hit_body" );

        if ( _ID42407::_ID18252( self._ID669, "TAG_KNIFE_FX" ) )
        {
            _func_157( level._ID1426["melee_knife_ai"], self, "TAG_KNIFE_FX" );
            jump loc_2066
        }

        if ( _func_02F( self._ID23353._ID26280 ) && _func_02F( self._ID23353._ID26280._ID23353 ) )
            self._ID23353._ID26280 _unknown_2027( 1 );
    }
    else
    {
        if ( var_0 == "melee_effort_vo" )
        {
            var_3 = _unknown_20B1();
            var_1 = "melee_effort_" + var_3;
            thread _ID42407::_ID27080( var_1 );
            return;
        }

        if ( var_0 == "melee_pain_vo" )
        {
            var_3 = _unknown_20CB();
            var_1 = "melee_pain_" + var_3;
            thread _ID42407::_ID27080( var_1 );
        }
    }
}

getnpcid()
{
    if ( _func_02F( self._ID25173 ) )
    {
        switch ( self._ID25173 )
        {

        }
    }

    return "generic";
    case "mcy":
    case "cpd":
    case "gst":
    case "mct":
    case "pri":
}

_ID23377()
{
    self endon( "end_melee" );
    animscripts\shared::_ID12143();
    return 0;
}

_ID23376()
{
    self endon( "end_melee" );
    animscripts\notetracks::_ID11543( "meleeAnim", 10.0 );
    animscripts\shared::_ID12143();
    self _meth_8023();
    return 1;
}

_ID23384()
{
    if ( !_func_1A7( self ) && _func_02F( self._ID23353._ID264 ) )
    {
        if ( _func_02F( self._ID23353._ID3173 ) )
            self._ID9827 = ::_unknown_216E;
        else
            self._ID9827 = ::_unknown_2170;
    }
}

_ID23385()
{
    if ( !_func_1A7( self ) )
        return;

    if ( _func_02F( self._ID23353._ID28091 ) )
        _unknown_1B20();

    var_0 = self _meth_8146();

    if ( _func_02F( var_0 ) )
        self _meth_81D2( var_0, self._ID65 );
    else
    {

    }
}

_ID23387()
{
    if ( _func_02F( self._ID23353._ID18229 ) )
        self _meth_802A( "weapon_parabolic_knife", "TAG_INHAND", 1 );

    if ( _func_1A7( self ) )
        _unknown_2098();
}

_ID23386()
{
    if ( _func_02F( self._ID23353._ID41410 ) )
    {
        if ( self._ID23353._ID41410 )
            _ID42407::_ID12508();
        else
            _ID42407::_ID10949();
    }

    if ( _func_02F( self._ID23353._ID41420 ) )
        _ID42407::_ID32628( self._ID23353._ID41420 );
}

_ID23383()
{
    _unknown_2135();
    _unknown_2204();
    _unknown_2216();
    _unknown_2226();
    _unknown_2235();

    if ( _func_02F( self._ID23353._ID26280 ) )
        self._ID23353._ID26280 notify( "partner_end_melee" );

    _unknown_2282( self._ID23353._ID1191 );
    _unknown_2290();
}

_ID23355( var_0 )
{
    if ( _func_02F( self._ID23353 ) )
        return 0;

    if ( _func_02F( var_0._ID23353 ) )
        return 0;

    self._ID23353 = _func_1A5();
    var_0._ID23353 = _func_1A5();
    return 1;
}

_ID23405( var_0 )
{
    self._ID23353 = undefined;

    if ( _func_02F( var_0 ) )
        var_0._ID23353 = undefined;
}

_ID23403( var_0 )
{
    self._ID13770 = animscripts\face::_ID28062( var_0, "pain", self._ID13770 );
}

_ID23374()
{
    self._ID13770 = undefined;
    self _meth_814C( %head, 0.2 );
}
