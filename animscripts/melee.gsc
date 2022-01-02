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
    precachemodel( "weapon_parabolic_knife" );
    level._ID1426["melee_knife_ai"] = loadfx( "vfx/weaponimpact/flesh_impact_knife" );
}

_ID23419()
{
    if ( !isdefined( self._ID1644 ) )
        return 0;

    if ( isdefined( self._ID13019 ) && isdefined( self._ID13019["_stealth_enabled"] ) && self._ID13019["_stealth_enabled"] )
    {
        if ( isdefined( self._ID13019["_stealth_attack"] ) && !self._ID13019["_stealth_attack"] )
            return 1;
    }

    return 0;
}

_ID23422()
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( isdefined( self._ID11579 ) )
        return 0;

    if ( _ID23419() )
        return 0;

    if ( !_ID23355( self.enemy ) )
        return 0;

    _ID23406();

    if ( !_ID23373() )
    {
        _ID23405( self.enemy );
        return 0;
    }

    self animcustom( ::_ID23398, ::_ID23383 );
}

_ID23406()
{
    self._ID23353.target = self.enemy;
    self._ID23353._ID19946 = 0;
    self._ID23353._ID20038 = 0;
}

_ID23373()
{
    if ( !_ID23397() )
        return 0;

    self._ID23353._ID19946 = 1;

    if ( _ID23357() )
    {
        self._ID23353._ID15079 = ::_ID23368;
        return 1;
    }

    if ( _ID23411() )
    {
        if ( isdefined( self._ID35380 ) )
            self._ID23353._ID15079 = self._ID35380;
        else
            self._ID23353._ID15079 = ::_ID23414;

        return 1;
    }

    self._ID23353._ID15079 = undefined;
    self._ID24789 = gettime() + 150;
    self._ID24788 = self._ID23353.target;
    return 0;
}

_ID23425()
{
    var_0 = 1;
    var_1 = distance2d( self._ID23353._ID36155, self._ID23353.target.origin );

    if ( var_1 < 32 )
    {
        var_2 = vectornormalize( ( self._ID23353._ID36155[0] - self._ID23353.target.origin[0], self._ID23353._ID36155[1] - self._ID23353.target.origin[1], 0 ) );
        self._ID23353._ID36155 = self._ID23353._ID36155 + var_2 * ( 32 - var_1 );

        if ( distance( self._ID23353._ID36155, self._ID23353.target.origin ) < 31.9 )
            return 0;

        var_0 = 0;
    }

    var_3 = self getdroptofloorposition( self._ID23353._ID36155 );

    if ( !isdefined( var_3 ) )
        return 0;

    if ( abs( self._ID23353._ID36155[2] - var_3[2] ) > 51.2 )
        return 0;

    if ( abs( self.origin[2] - var_3[2] ) > 51.2 )
        return 0;

    self._ID23353._ID36155 = var_3;

    if ( !self maymovetopoint( self._ID23353._ID36155, 1, var_0 ) )
        return 0;

    if ( isdefined( self._ID23353._ID36166 ) )
    {
        var_4 = self._ID23353._ID36155 - self._ID23353.target.origin;
        var_5 = anglestoforward( self._ID23353._ID36166 );
        var_6 = vectordot( var_5, var_4 );
        var_7 = self._ID23353._ID36155 - var_5 * var_6;
        var_8 = self._ID23353.target.origin - var_7;
        var_9 = distance2d( self._ID23353.target.origin, var_7 );

        if ( var_9 < 32 )
            var_7 -= var_8 * ( 32 - var_9 ) / 32;
    }
    else
    {
        var_2 = vectornormalize( ( self._ID23353._ID36155[0] - self._ID23353.target.origin[0], self._ID23353._ID36155[1] - self._ID23353.target.origin[1], 0 ) );
        var_7 = self._ID23353.target.origin + var_2 * 32;
    }

    if ( !self maymovefrompointtopoint( self._ID23353._ID36155, var_7, 1, 0 ) )
        return 0;

    if ( !self maymovefrompointtopoint( var_7, self._ID23353.target.origin, 1, 1 ) )
        return 0;

    return 1;
}

_ID23397()
{
    if ( !isdefined( self._ID23353.target ) )
        return 0;

    var_0 = self._ID23353.target;

    if ( isdefined( var_0._ID11579 ) )
        return 0;

    var_1 = distancesquared( self.origin, var_0.origin );

    if ( isdefined( self._ID23429 ) )
        var_2 = self._ID23429;
    else if ( isplayernumber( var_0 ) )
        var_2 = 40000;
    else
        var_2 = 25600;

    if ( !self._ID23353._ID19946 && var_1 > var_2 )
        return 0;

    if ( !isalive( self ) )
        return 0;

    if ( isdefined( self._ID7._ID24902 ) && self._ID7._ID31561 >= gettime() + 50 )
        return 0;

    if ( isdefined( self._ID24789 ) && isdefined( self._ID24788 ) && gettime() < self._ID24789 && self._ID24788 == var_0 )
        return 0;

    if ( isdefined( self._ID7._ID25684 ) || self._ID7._ID28253 == "prone" )
        return 0;

    if ( animscripts\utility::_ID39997() )
        return 0;

    if ( isdefined( self.grenade ) && self.frontshieldanglecos == 1 )
        return 0;

    if ( !isalive( var_0 ) )
        return 0;

    if ( isdefined( var_0._ID11566 ) || isdefined( var_0.ignoreme ) && var_0.ignoreme )
        return 0;

    if ( !isai( var_0 ) && !isplayernumber( var_0 ) )
        return 0;

    if ( isai( var_0 ) )
    {
        if ( var_0 isinscriptedstate() )
            return 0;

        if ( var_0 _ID42407::_ID11498() || var_0.delayeddeath )
        {
            if ( !isdefined( self._ID36736 ) || self._ID36736 != "riotshield" )
                return 0;
        }
    }

    if ( isplayernumber( var_0 ) )
        var_3 = var_0 getstance();
    else
        var_3 = var_0._ID7._ID28253;

    if ( var_3 != "stand" && var_3 != "crouch" )
    {
        if ( !isdefined( self._ID36736 ) || self._ID36736 != "riotshield" )
            return 0;
    }

    if ( isdefined( self._ID22746 ) && isdefined( var_0._ID22746 ) )
        return 0;

    if ( isdefined( var_0.grenade ) )
        return 0;

    if ( self._ID23353._ID20038 )
        var_4 = 110;
    else
        var_4 = 60;

    var_5 = angleclamp180( self.angles[1] - animscripts\utility::_ID16756( var_0.origin ) );

    if ( abs( var_5 ) > var_4 )
        return 0;

    if ( var_1 <= 4096 )
        return 1;

    if ( self._ID23353._ID20038 )
        return 0;

    if ( isdefined( self._ID24787 ) && isdefined( self._ID24786 ) && gettime() < self._ID24787 && self._ID24786 == var_0 )
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
    self clearanim( %body, 0.2 );
    self._ID23353._ID28091 = undefined;
    self._ID7._ID24414 = "stop";
    self orientmode( "face default" );
}

_ID23398()
{
    self endon( "killanimscript" );
    self endon( "end_melee" );

    for (;;)
    {
        var_0 = self._ID23353._ID15079;
        [[ self._ID23353._ID15079 ]]();

        if ( !isdefined( self._ID23353._ID15079 ) || var_0 == self._ID23353._ID15079 )
            break;
    }
}

_ID23412( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    self._ID24791 = gettime() + 2500;
    self._ID24790 = var_0;
}

_ID23410()
{
    var_0 = distancesquared( self._ID23353.target.origin, self.origin );

    if ( var_0 > 4096 && isdefined( self._ID24791 ) && isdefined( self._ID24790 ) && gettime() < self._ID24791 && self._ID24790 == self._ID23353.target )
        return 0;

    return 1;
}

_ID23411()
{
    if ( isdefined( self._ID23353.target._ID22746 ) )
        return 0;

    if ( !_ID23410() )
        return 0;

    if ( isdefined( self._ID23353.target._ID35381 ) )
        return 0;

    return _ID23417();
}

_ID23416()
{
    if ( isdefined( self._ID23429 ) )
        var_0 = self._ID23429;
    else if ( isplayernumber( self._ID23353.target ) )
        var_0 = 40000;
    else
        var_0 = 25600;

    if ( distancesquared( self.origin, self._ID23353.target.origin ) > var_0 )
        self._ID23353._ID16914 = gettime() + 3000;
    else
        self._ID23353._ID16914 = gettime() + 1000;
}

_ID23414()
{
    self animmode( "zonly_physics" );

    if ( isdefined( self._ID23353.target ) )
        _ID23416();

    while ( isdefined( self._ID23353.target ) )
    {
        if ( !_ID23413() )
        {
            self._ID24787 = gettime() + 1500;
            self._ID24786 = self._ID23353.target;
            break;
        }

        if ( !isdefined( self._ID23353.target ) )
            break;

        animscripts\battlechatter_ai::_ID13239();
        self orientmode( "face point", self._ID23353.target.origin );
        var_0 = animscripts\utility::_ID22630( "melee", "standard" );
        self setflaggedanimknoballrestart( "meleeanim", var_0, %body, 1, 0.2, 1 );
        _ID23403( var_0 );
        self._ID23353._ID20038 = 1;

        if ( !_ID23415() )
        {
            _ID23412( self._ID23353.target );
            break;
        }
    }

    self animmode( "none" );
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
            if ( !_ID23373() )
                return 0;

            if ( self._ID23353._ID15079 != ::_ID23414 )
                return 1;
        }

        if ( var_0 == "fire" )
        {
            if ( isdefined( self._ID23353.target ) )
            {
                var_1 = self._ID23353.target.health;
                self melee();

                if ( isdefined( self._ID23353.target ) && self._ID23353.target.health < var_1 )
                    _ID23416();
            }

            melee_playeffortsound();
        }
    }
}

_ID23417()
{
    if ( !isdefined( self._ID23353.target ) )
        return 0;

    if ( !isdefined( self.enemy ) )
        return 0;

    if ( !_ID23397() )
        return 0;

    var_0 = vectornormalize( self._ID23353.target.origin - self.origin );
    self._ID23353._ID36155 = self._ID23353.target.origin - 40.0 * var_0;
    return _ID23425();
}

_ID23413()
{
    if ( !_ID23417() )
        return 0;

    var_0 = _ID42237::_ID11126( self.origin, self._ID23353.target.origin );

    if ( var_0 <= 4096 )
    {
        var_1 = animscripts\utility::_ID22630( "melee", "standard_stand_to_melee" );
        self setflaggedanimknoball( "readyanim", var_1, %body, 1, 0.3, 1 );
        _ID23403( var_1 );
        animscripts\shared::_ID11529( "readyanim" );
        return 1;
    }

    _ID23402();
    var_2 = self._ID23353.target.origin;
    var_3 = 0.1;
    var_4 = animscripts\utility::_ID22630( "melee", "standard_run_to_melee" );
    var_5 = length( getangledelta( var_4, 0, 1 ) );
    var_6 = 32;
    var_7 = 48.0 + var_6 + var_5;
    var_8 = var_7 * var_7;
    var_9 = 64 + var_6;
    var_10 = var_9 * var_9;
    var_11 = getanimlength( var_4 ) * 1000;
    var_12 = var_11 - 100;
    var_13 = var_11 - 200;
    var_14 = 0;
    var_15 = undefined;
    var_16 = animscripts\utility::_ID22630( "run", "straight" );

    if ( isplayernumber( self._ID23353.target ) && self._ID23353.target == self.enemy )
        self orientmode( "face enemy" );
    else
        self orientmode( "face point", self._ID23353.target.origin );

    self setflaggedanimknoball( "chargeanim", var_16, %body, 1, 0.2, 1 );
    _ID23403( var_16 );
    var_17 = 0;

    for (;;)
    {
        var_18 = gettime();
        var_19 = isdefined( var_15 ) && var_15 <= var_8;

        if ( !var_17 )
        {
            if ( var_19 )
            {
                _ID23418();
                self setflaggedanimknoballrestart( "chargeanim", var_4, %body, 1, 0.1, 1 );
                _ID23403( var_4 );
                var_14 = var_18;
                var_17 = 1;
            }
        }
        else
        {
            var_20 = var_0 <= var_8;

            if ( var_18 - var_14 >= var_12 || !var_19 && !var_20 )
            {
                _ID23418();
                self setflaggedanimknoball( "chargeanim", var_16, %body, 1, 0.3, 1 );
                _ID23403( var_16 );
                var_17 = 0;
            }
        }

        animscripts\notetracks::_ID11534( var_3, "chargeanim" );

        if ( !_ID23417() )
        {
            _ID23420();
            return 0;
        }

        var_0 = _ID42237::_ID11126( self.origin, self._ID23353.target.origin );
        var_21 = ( self._ID23353.target.origin - var_2 ) * 1 / ( gettime() - var_18 );
        var_2 = self._ID23353.target.origin;
        var_22 = self._ID23353.target.origin + var_21 * var_13;
        var_15 = _ID42237::_ID11126( self.origin, var_22 );

        if ( var_17 && var_0 <= var_10 && ( gettime() - var_14 >= var_12 || !isplayernumber( self._ID23353.target ) ) )
            break;

        if ( !var_17 && gettime() >= self._ID23353._ID16914 )
        {
            _ID23420();
            return 0;
        }
    }

    _ID23420();
    return 1;
}

_ID23402()
{
    if ( !isdefined( self._ID7._ID24785 ) )
        self._ID7._ID24785 = 0;

    if ( isdefined( self.enemy ) && isplayernumber( self.enemy ) || randomint( 3 ) == 0 )
    {
        if ( gettime() > self._ID7._ID24785 )
        {
            animscripts\face::_ID30759( "meleecharge" );
            self._ID7._ID24785 = gettime() + 8000;

            if ( !isdefined( self._ID7.nextmeleesound ) )
                self._ID7.nextmeleesound = gettime() + 1900;
        }
    }
}

melee_playeffortsound()
{
    if ( !isdefined( self._ID7.nextmeleesound ) )
        self._ID7.nextmeleesound = 0;

    if ( isdefined( self.enemy ) && isplayernumber( self.enemy ) || randomint( 3 ) == 0 )
    {
        if ( gettime() > self._ID7.nextmeleesound )
        {
            animscripts\face::_ID30759( "meleeattack" );
            self._ID7.nextmeleesound = gettime() + 500;
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

    if ( abs( var_0 ) < var_2 )
        return 0;

    var_5 = self._ID23353.target;
    _ID23378();

    if ( self._ID23353._ID41797 )
    {
        if ( length2dsquared( var_1 ) < var_3 )
            return 0;

        self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_exposed_attackerwins_attack" );
        var_5._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_exposed_attackerwins_defend" );
        var_5._ID23353._ID36862 = animscripts\utility::_ID22630( "melee", "aivai_exposed_attackerwins_defend_survive" );
    }
    else
    {
        if ( length2dsquared( var_1 ) < var_4 )
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

    if ( abs( var_0 ) < var_2 )
        return 0;

    var_3 = self._ID23353.target;

    if ( isdefined( var_3._ID22746 ) )
        return 0;

    if ( isdefined( var_3._ID23426 ) )
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

    if ( abs( var_0 ) < var_2 )
        return 0;

    if ( isdefined( self._ID22746 ) )
        return 0;

    var_4 = self._ID23353.target;

    if ( isdefined( self._ID23426 ) )
        return 0;

    if ( length2dsquared( var_1 ) < var_3 )
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

    var_2 = self._ID23353.target;

    if ( isdefined( var_2._ID22746 ) )
        return 0;

    if ( isdefined( var_2._ID23426 ) )
        return 0;

    self._ID23353._ID41797 = 1;
    self._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_behind_attackerwins_attack" );
    var_2._ID23353._ID3189 = animscripts\utility::_ID22630( "melee", "aivai_behind_attackerwins_defend" );
    return 1;
}

_ID23361()
{
    if ( isdefined( self._ID23435 ) )
        var_0[0] = ::_ID23362;
    else if ( isdefined( self._ID23436 ) )
        var_0[0] = ::_ID23363;
    else
    {
        var_0[0] = ::_ID23362;
        var_0[1] = ::_ID23363;
        var_0[2] = ::_ID52288;
        var_0[3] = ::_ID23360;

        for ( var_1 = 2; var_1 > 0; var_1-- )
        {
            var_2 = randomint( var_1 + 1 );
            var_3 = var_0[var_1];
            var_0[var_1] = var_0[var_2];
            var_0[var_2] = var_3;
        }
    }

    return var_0;
}

_ID23359()
{
    if ( isdefined( self._ID44480 ) && !self._ID44480 )
        return 0;

    var_0 = self._ID23353.target;
    var_1 = var_0.origin - self.origin;
    var_2 = vectortoangles( var_1 );
    var_3 = angleclamp180( var_0.angles[1] - var_2[1] );
    var_4 = _ID23361();

    for ( var_5 = 0; var_5 < var_4.size; var_5++ )
    {
        if ( [[ var_4[var_5] ]]( var_3, var_1 ) )
        {
            self._ID23353._ID36098 = ( 0, var_2[1], 0 );
            self._ID23353._ID36155 = getstartorigin( var_0.origin, var_0.angles, self._ID23353._ID3189 );

            if ( _ID23425() )
                return 1;
        }
    }

    return 0;
}

_ID23378()
{
    var_0 = self._ID23353.target;

    if ( isdefined( self._ID23426 ) )
    {
        self._ID23353._ID41797 = 1;
        return;
    }
    else if ( isdefined( var_0._ID23426 ) )
    {
        self._ID23353._ID41797 = 0;
        return;
    }

    if ( isdefined( self._ID22746 ) )
        self._ID23353._ID41797 = 1;
    else if ( isdefined( var_0._ID22746 ) )
        self._ID23353._ID41797 = 0;
    else if ( var_0 _ID42407::_ID11498() || var_0.delayeddeath )
        self._ID23353._ID41797 = 1;
    else
        self._ID23353._ID41797 = _ID42237::_ID8201();
}

_ID23371()
{
    var_0 = self._ID23353.target;
    _ID23378();
    var_1 = var_0._ID8893.type;

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

    self._ID23353._ID36155 = getstartorigin( var_0._ID8893.origin, var_0._ID8893.angles, self._ID23353._ID3189 );
    self._ID23353._ID36098 = ( var_0._ID8893.angles[0], angleclamp180( var_0._ID8893.angles[1] + 180 ), var_0._ID8893.angles[2] );
    var_0._ID23353._ID13763 = animscripts\utility::_ID16462( var_0._ID8893 );
    self._ID23353._ID36166 = var_0._ID8893.angles;

    if ( !_ID23425() )
    {
        self._ID23353._ID36166 = undefined;
        return 0;
    }

    return 1;
}

_ID23370()
{
    if ( isdefined( self._ID44480 ) && !self._ID44480 )
        return 0;

    var_0 = self._ID23353.target._ID8893;

    if ( !isdefined( var_0 ) )
        return 0;

    if ( distancesquared( var_0.origin, self._ID23353.target.origin ) > 16 && isdefined( self._ID23353.target._ID7._ID8878 ) && ( self._ID23353.target._ID7._ID8878 != "hide" && self._ID23353.target._ID7._ID8878 != "lean" ) )
        return 0;

    var_1 = vectortoangles( self.origin - var_0.origin );
    var_2 = angleclamp180( var_0.angles[1] - var_1[1] );
    var_3 = var_0.type;

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
    var_0 = self._ID23353.target;

    if ( !isai( var_0 ) || var_0.type != "human" )
        return 0;

    if ( self.stairsstate != "none" || var_0.stairsstate != "none" )
        return 0;

    if ( isdefined( self._ID23426 ) && isdefined( var_0._ID23426 ) )
        return 0;

    if ( isdefined( self._ID22746 ) && isdefined( var_0._ID22746 ) )
        return 0;

    if ( isdefined( self._ID23426 ) && isdefined( var_0._ID22746 ) || isdefined( var_0._ID23426 ) && isdefined( self._ID22746 ) )
        return 0;

    if ( isdefined( self._ID35381 ) )
    {
        if ( ![[ self._ID35381 ]]() )
            return 0;

        self._ID23353._ID28396 = 1;
    }
    else if ( isdefined( var_0._ID35381 ) )
        return 0;
    else if ( _ID23370() && _ID23371() )
        self._ID23353._ID28396 = 1;
    else
    {
        if ( !_ID23359() )
            return 0;

        self._ID23353._ID28396 = 0;
    }

    if ( !isdefined( var_0._ID23353._ID13763 ) )
        var_0._ID23353._ID13763 = var_0.angles[1];

    self._ID23353._ID36156 = self._ID23353._ID36155 - var_0.origin;
    return 1;
}

_ID23369( var_0 )
{
    self._ID23353._ID37003 = var_0;
    var_0._ID23353._ID37003 = undefined;
}

_ID23372( var_0 )
{
    if ( !isdefined( var_0._ID23353 ) )
        return;

    _ID23402();

    if ( !isalive( var_0 ) )
        return;

    self.syncedmeleetarget = var_0;
    var_0.syncedmeleetarget = self;
    self._ID23353._ID22409 = 1;
    var_0._ID23353._ID22409 = 1;
    self linktoblendtotag( var_0, "tag_sync", 1, 1 );
}

_ID23368()
{
    if ( !_ID23364() )
    {
        self._ID24787 = gettime() + 1500;
        self._ID24786 = self._ID23353.target;
        return;
    }

    var_0 = self._ID23353.target;

    if ( !animhasnotetrack( self._ID23353._ID3189, "sync" ) )
        return;

    _ID23369( var_0 );

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

    self._ID23353.weapon = self.weapon;
    self._ID23353._ID41708 = animscripts\utility::_ID16202();
    var_0._ID23353.weapon = var_0.weapon;
    var_0._ID23353._ID41708 = var_0 animscripts\utility::_ID16202();
    self._ID23353._ID20038 = 1;
    var_0 animcustom( ::_ID23358, ::_ID23383 );
    var_0 thread _ID23356( self );
    self._ID23353.target = undefined;
    _ID23358();
}

_ID23356( var_0 )
{
    self endon( "end_melee" );
    self endon( "melee_aivsai_execute" );
    wait 0.1;

    if ( isdefined( var_0 ) )
        var_0 notify( "end_melee" );

    self notify( "end_melee" );
}

_ID23367( var_0, var_1 )
{
    if ( isdefined( var_1 ) && var_1 <= gettime() )
        return 0;

    if ( !_ID23397() )
        return 0;

    var_2 = self._ID23353.target;
    var_3 = distancesquared( var_2.origin, var_0 );

    if ( self._ID23353._ID28396 )
        var_4 = 256;
    else
        var_4 = 1296;

    if ( var_3 > var_4 )
        return 0;

    self._ID23353._ID36155 = var_2.origin + self._ID23353._ID36156;

    if ( !_ID23425() )
        return 0;

    return 1;
}

_ID23366( var_0 )
{
    var_1 = distancesquared( ( self.origin[0], self.origin[1], 0 ), ( self._ID23353._ID36155[0], self._ID23353._ID36155[1], 0 ) );

    if ( var_1 < 64 && abs( self._ID23353._ID36155[2] - self.origin[2] ) < 64 )
        return 1;

    var_2 = distancesquared( ( var_0[0], var_0[1], 0 ), ( self._ID23353._ID36155[0], self._ID23353._ID36155[1], 0 ) );
    var_3 = distancesquared( ( self.origin[0], self.origin[1], 0 ), ( self._ID23353.target.origin[0], self._ID23353.target.origin[1], 0 ) );

    if ( var_2 > var_3 && abs( self._ID23353.target.origin[2] - self.origin[2] ) < 64 )
        return 1;

    return 0;
}

_ID23365( var_0 )
{
    _ID23420();

    if ( self._ID23353._ID28396 )
    {
        self forceteleport( self._ID23353._ID36155, self._ID23353._ID36098 );
        wait 0.05;
    }
    else
    {
        self orientmode( "face angle", self._ID23353._ID36098[1] );
        wait 0.05;
    }

    return _ID23367( var_0 );
}

_ID23364()
{
    if ( !_ID23397() )
        return 0;

    _ID23418();
    self clearanim( %body, 0.2 );
    self setanimknoball( animscripts\run::_ID16576(), %body, 1, 0.2 );
    self animmode( "zonly_physics" );
    self.keepclaimednode = 1;

    if ( isdefined( self._ID36736 ) && self._ID36736 == "riotshield" )
        var_0 = gettime() + 2500;
    else
        var_0 = gettime() + 1500;

    var_1 = self._ID23353.target.origin;

    while ( _ID23367( var_1, var_0 ) )
    {
        if ( _ID23366( var_1 ) )
            return _ID23365( var_1 );

        self orientmode( "face point", self._ID23353._ID36155 );
        wait 0.05;
    }

    _ID23420();
    return 0;
}

_ID23358()
{
    self endon( "killanimscript" );
    self endon( "end_melee" );
    self notify( "melee_aivsai_execute" );
    self animmode( "zonly_physics" );
    self._ID7._ID35357 = "none";
    self._ID35375 = undefined;
    thread _ID23381();
    thread _ID23400();

    if ( isdefined( self._ID23353._ID13763 ) )
        self orientmode( "face angle", self._ID23353._ID13763 );
    else
        self orientmode( "face current" );

    self._ID7._ID28253 = "stand";
    self clearanim( %body, 0.2 );

    if ( isdefined( self._ID23353._ID264 ) )
        _ID23379();

    self setflaggedanimknoballrestart( "meleeAnim", self._ID23353._ID3189, %body, 1, 0.2 );
    _ID23403( self._ID23353._ID3189 );
    var_0 = animscripts\shared::_ID11529( "meleeAnim", ::_ID23391 );

    if ( var_0 == "melee_death" && ( isdefined( self._ID23353._ID36860 ) || isdefined( self._ID22746 ) && self._ID22746 ) )
    {
        _ID23382();
        self setflaggedanimknoballrestart( "meleeAnim", self._ID23353._ID36862, %body, 1, 0.2 );
        _ID23403( self._ID23353._ID36862 );
        var_0 = animscripts\shared::_ID11529( "meleeAnim", ::_ID23391 );
    }

    if ( isdefined( self._ID23353 ) && isdefined( self._ID23353._ID264 ) )
        self kill();

    self.keepclaimednode = 0;
}

_ID23379()
{
    self._ID23353._ID41410 = self.allowpain;
    self._ID23353._ID41420 = self._ID14507;
    _ID42407::_ID10949();
    _ID42407::_ID32628( 1 );
}

_ID23399()
{
    return isdefined( self._ID23353.weapon ) && self._ID23353.weapon != "none" && self.weapon != self._ID23353.weapon;
}

_ID23382()
{
    if ( self.weapon != "none" && self._ID22034 != "none" )
        return;

    if ( !isdefined( self._ID23353.weapon ) || self._ID23353.weapon == "none" )
        return;

    _ID42407::_ID14803( self._ID23353.weapon, self._ID23353._ID41708 );

    if ( isdefined( self._ID23353._ID12152 ) )
    {
        self._ID23353._ID12152 delete();
        self._ID23353._ID12152 = undefined;
    }
}

_ID23381()
{
    self endon( "killanimscript" );
    self endon( "end_melee" );
    self waittill( "weapon_dropped",  var_0  );

    if ( isdefined( var_0 ) )
        self._ID23353._ID12152 = var_0;
}

_ID23401()
{
    if ( !isdefined( self._ID23353._ID36862 ) )
        return 0;

    if ( !isdefined( self._ID23353._ID36861 ) )
        return 0;

    return 1;
}

_ID23400()
{
    self endon( "killanimscript" );
    self endon( "end_melee" );
    self waittill( "partner_end_melee" );

    if ( isdefined( self._ID23353._ID264 ) )
    {
        if ( isdefined( self._ID23353._ID3173 ) || isdefined( self._ID23353._ID20164 ) )
            self kill();
        else
        {
            self._ID23353._ID264 = undefined;

            if ( _ID23401() )
                self._ID23353._ID36860 = 1;
            else
                self notify( "end_melee" );
        }
    }
    else if ( !isdefined( self._ID23353._ID39579 ) )
    {
        if ( ( !isdefined( self._ID28253 ) || self._ID28253 != "stand" ) && ( isdefined( self._ID7._ID25684 ) && self._ID7._ID25684 == 1 ) )
        {
            self orientmode( "face default" );
            animscripts\utility::_ID13390( 1.0 );
            animscripts\notetracks::_ID32755( "stand" );
        }

        self notify( "end_melee" );
    }
}

_ID23423()
{
    if ( !isdefined( self._ID23353._ID22409 ) )
        return;

    if ( isdefined( self.syncedmeleetarget ) )
        self.syncedmeleetarget _ID23424();

    _ID23424();
}

_ID23424()
{
    self unlink();
    self.syncedmeleetarget = undefined;

    if ( !isalive( self ) )
        return;

    self._ID23353._ID22409 = undefined;
    self animmode( "zonly_physics" );
    self orientmode( "face angle", self.angles[1] );
}

_ID23394()
{
    _ID23423();
    self._ID23353._ID39579 = 1;

    if ( isdefined( self._ID23353._ID26280 ) && isdefined( self._ID23353._ID26280._ID23353 ) )
        self._ID23353._ID26280._ID23353._ID39579 = 1;
}

_ID23393()
{
    if ( animhasnotetrack( self._ID23353._ID3189, "melee_death" ) )
        return 0;

    return isdefined( self._ID23353._ID264 );
}

_ID23392( var_0 )
{
    if ( isdefined( var_0 ) && var_0 )
        self._ID23353._ID20164 = 1;
    else
        self._ID23353._ID3173 = 1;
}

_ID23391( var_0 )
{
    if ( issubstr( var_0, "ps_" ) )
    {
        var_1 = getsubstr( var_0, 3 );
        self playsound( var_1 );
    }
    else if ( var_0 == "sync" )
    {
        if ( isdefined( self._ID23353._ID37003 ) )
        {
            _ID23372( self._ID23353._ID37003 );
            self._ID23353._ID37003 = undefined;
        }
    }
    else if ( var_0 == "unsync" )
    {
        _ID23394();

        if ( _ID23393() )
            _ID23392();
    }
    else if ( var_0 == "melee_interact" )
        self._ID23353._ID36861 = 1;
    else if ( var_0 == "melee_death" )
    {
        var_2 = isdefined( self._ID22746 ) && self._ID22746;

        if ( isdefined( self._ID23353._ID36860 ) || var_2 )
        {
            if ( var_2 )
                self._ID23353._ID264 = undefined;

            return var_0;
        }

        _ID23392();

        if ( isdefined( self._ID23353._ID3173 ) )
        {
            return var_0;
            return;
        }
    }
    else if ( var_0 == "attach_knife" )
    {
        self attach( "weapon_parabolic_knife", "TAG_INHAND", 1 );
        self._ID23353._ID18229 = 1;
    }
    else if ( var_0 == "detach_knife" )
    {
        self detach( "weapon_parabolic_knife", "TAG_INHAND", 1 );
        self._ID23353._ID18229 = undefined;
    }
    else if ( var_0 == "stab" )
    {
        self playsound( "melee_knife_hit_body" );

        if ( _ID42407::_ID18252( self.model, "TAG_KNIFE_FX" ) )
        {
            playfxontag( level._ID1426["melee_knife_ai"], self, "TAG_KNIFE_FX" );
            jump loc_2066
        }

        if ( isdefined( self._ID23353._ID26280 ) && isdefined( self._ID23353._ID26280._ID23353 ) )
            self._ID23353._ID26280 _ID23392( 1 );
    }
    else
    {
        if ( var_0 == "melee_effort_vo" )
        {
            var_3 = getnpcid();
            var_1 = "melee_effort_" + var_3;
            thread _ID42407::_ID27080( var_1 );
            return;
        }

        if ( var_0 == "melee_pain_vo" )
        {
            var_3 = getnpcid();
            var_1 = "melee_pain_" + var_3;
            thread _ID42407::_ID27080( var_1 );
        }
    }
}

getnpcid()
{
    if ( isdefined( self._ID25173 ) )
    {
        switch ( self._ID25173 )
        {
            case "pri":
            case "mct":
            case "gst":
            case "cpd":
            case "mcy":
                return self._ID25173;
        }
    }

    return "generic";
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
    self startragdoll();
    return 1;
}

_ID23384()
{
    if ( !isalive( self ) && isdefined( self._ID23353._ID264 ) )
    {
        if ( isdefined( self._ID23353._ID3173 ) )
            self._ID9827 = ::_ID23376;
        else
            self._ID9827 = ::_ID23377;
    }
}

_ID23385()
{
    if ( !isalive( self ) )
        return;

    if ( isdefined( self._ID23353._ID28091 ) )
        _ID23420();

    var_0 = self getdroptofloorposition();

    if ( isdefined( var_0 ) )
        self forceteleport( var_0, self.angles );
    else
    {

    }
}

_ID23387()
{
    if ( isdefined( self._ID23353._ID18229 ) )
        self detach( "weapon_parabolic_knife", "TAG_INHAND", 1 );

    if ( isalive( self ) )
        _ID23382();
}

_ID23386()
{
    if ( isdefined( self._ID23353._ID41410 ) )
    {
        if ( self._ID23353._ID41410 )
            _ID42407::_ID12508();
        else
            _ID42407::_ID10949();
    }

    if ( isdefined( self._ID23353._ID41420 ) )
        _ID42407::_ID32628( self._ID23353._ID41420 );
}

_ID23383()
{
    _ID23423();
    _ID23384();
    _ID23385();
    _ID23387();
    _ID23386();

    if ( isdefined( self._ID23353._ID26280 ) )
        self._ID23353._ID26280 notify( "partner_end_melee" );

    _ID23405( self._ID23353.target );
    _ID23374();
}

_ID23355( var_0 )
{
    if ( isdefined( self._ID23353 ) )
        return 0;

    if ( isdefined( var_0._ID23353 ) )
        return 0;

    self._ID23353 = spawnstruct();
    var_0._ID23353 = spawnstruct();
    return 1;
}

_ID23405( var_0 )
{
    self._ID23353 = undefined;

    if ( isdefined( var_0 ) )
        var_0._ID23353 = undefined;
}

_ID23403( var_0 )
{
    self._ID13770 = animscripts\face::_ID28062( var_0, "pain", self._ID13770 );
}

_ID23374()
{
    self._ID13770 = undefined;
    self clearanim( %head, 0.2 );
}
