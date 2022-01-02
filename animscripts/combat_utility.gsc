// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID16648( var_0 )
{
    var_1 = self getshootatpos() + ( 0, 0, -3 );
    var_2 = ( var_1[0] - var_0[0], var_1[1] - var_0[1], var_1[2] - var_0[2] );
    var_2 = vectornormalize( var_2 );
    var_3 = var_2[2] * -1;
    return var_3;
}

_ID16593()
{
    if ( isplayernumber( self.enemy ) )
        return randomfloatrange( self.enemy._ID17476._ID23609, self.enemy._ID17476._ID23066 );
    else
        return randomfloatrange( anim._ID23609, anim._ID23066 );
}

_ID16569()
{
    var_0 = ( gettime() - self._ID7._ID21978 ) / 1000;
    var_1 = _ID16161();

    if ( var_1 > var_0 )
        return var_1 - var_0;

    return 0;
}

_ID16161()
{
    if ( animscripts\utility::_ID39997() )
        return randomfloatrange( 0.15, 0.55 );
    else if ( animscripts\utility::_ID41682() )
        return randomfloatrange( 1.0, 1.7 );
    else if ( _ID20910() )
        return _ID16593();
    else if ( self._ID13941 )
        return randomfloatrange( 0.1, 0.35 );
    else
        return randomfloatrange( 0.4, 0.9 );
}

_ID6451()
{
    if ( self._ID6323 )
    {
        if ( self._ID33816 == "full" && !self._ID13941 )
        {
            if ( self._ID7._ID21978 == gettime() )
                wait 0.05;

            return;
        }

        var_0 = _ID16569();

        if ( var_0 )
            wait(var_0);
    }
}

_ID7345()
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( self.team != "allies" )
    {
        if ( !isplayernumber( self.enemy ) )
            return 0;

        if ( self.enemy _ID42407::_ID13019( "player_is_invulnerable" ) )
            return 0;
    }

    if ( animscripts\utility::_ID39997() || animscripts\utility::_ID39993() )
        return 0;

    if ( gettime() - self._ID2939 < self._ID2938 )
        return 0;

    if ( !self cansee( self.enemy ) && distancesquared( self.origin, self.enemy.origin ) > 65536 )
        return 0;

    self._ID6323 = int( weaponclipsize( self.weapon ) / 2 );

    if ( self._ID6323 > weaponclipsize( self.weapon ) )
        self._ID6323 = weaponclipsize( self.weapon );

    self._ID2939 = gettime();
    self notify( "cheated_reload_level_stats" );
    return 1;
}

_ID2424()
{
    for ( var_0 = int( 60.0 ); var_0 > 0; var_0-- )
    {
        if ( isdefined( self._ID11575 ) || isdefined( self.enemy ) && isdefined( self.enemy._ID11566 ) )
        {
            wait 0.05;
            continue;
        }

        return 0;
    }

    return 1;
}

_ID33818()
{
    self endon( "shoot_behavior_change" );
    self endon( "stopShooting" );

    if ( _ID20813() )
    {
        if ( isdefined( self.enemy ) && isai( self.enemy ) && distancesquared( level.player.origin, self.enemy.origin ) < 147456 )
            self.enemy animscripts\battlechatter_ai::_ID2115( "infantry", self, 1.0 );

        if ( animscripts\utility::_ID39993() && issentient( self.enemy ) )
            wait(randomfloat( 2.0 ));
    }

    if ( isdefined( self.enemy ) && distancesquared( self.origin, self.enemy.origin ) > squared( 400 ) )
        var_0 = randomintrange( 1, 5 );
    else
        var_0 = 10;

    for (;;)
    {
        _ID6451();

        if ( _ID2424() )
            break;

        if ( self._ID33816 == "full" )
            _ID14321( animscripts\utility::_ID3153( "fire" ), 1, animscripts\shared::_ID10053() );
        else if ( self._ID33816 == "burst" || self._ID33816 == "semi" )
        {
            var_1 = animscripts\shared::_ID10052();

            if ( var_1 == 1 )
                _ID14321( animscripts\utility::_ID3156( "single" ), 1, var_1 );
            else
                _ID14321( animscripts\utility::_ID3153( self._ID33816 + var_1 ), 1, var_1 );
        }
        else if ( self._ID33816 == "single" )
            _ID14321( animscripts\utility::_ID3156( "single" ), 1, 1 );
        else
            self waittill( "hell freezes over" );

        if ( !self._ID6323 )
            break;

        var_0--;

        if ( var_0 < 0 )
        {
            self._ID33962 = 1;
            break;
        }
    }
}

_ID16710()
{
    anim._ID3185++;
    return anim._ID3185;
}
#using_animtree("generic_human");

_ID33531( var_0 )
{
    self setanim( %exposed_aiming, 1, 0.2 );
    self setanimknoblimited( animscripts\utility::_ID3153( "straight_level" ), 1, var_0 );
    self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_up" ), 1, var_0 );
    self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_down" ), 1, var_0 );
    self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_left" ), 1, var_0 );
    self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_right" ), 1, var_0 );
    self._ID13770 = animscripts\face::_ID28062( undefined, "aim", self._ID13770 );
}

_ID36122()
{
    if ( !isdefined( self._ID7._ID2428 ) )
    {
        var_0 = 0.2;

        if ( isdefined( self._ID2431 ) )
            var_0 = self._ID2431;

        _ID33531( var_0 );

        if ( self._ID47383 )
            thread _ID2428();

        thread animscripts\track::_ID38165();
    }
}

_ID12641()
{
    _ID12633();
    self clearanim( %add_fire, 0.1 );
    self notify( "stop tracking" );
}

_ID34063()
{
    if ( isdefined( self._ID7._ID2428 ) )
        self setanim( %add_idle, 0, 0.2 );

    self setanim( %add_fire, 1, 0.1 );
}

_ID18550()
{
    if ( isdefined( self._ID7._ID2428 ) )
        self setanim( %add_idle, 1, 0.2 );

    self setanim( %add_fire, 0, 0.1 );
}

_ID2428( var_0 )
{
    self endon( "killanimscript" );
    self endon( "end_aim_idle_thread" );

    if ( isdefined( self._ID7._ID2428 ) )
        return;

    self._ID7._ID2428 = 1;
    wait 0.1;
    self setanimlimited( %add_idle, 1, 0.2 );
    var_1 = %add_idle;
    var_2 = 0;

    for (;;)
    {
        var_3 = "idle" + var_2;

        if ( isdefined( self._ID7._ID22113 ) )
            var_4 = animscripts\utility::_ID3156( "lean_idle" );
        else if ( animscripts\utility::_ID3154( "exposed_idle" ) )
            var_4 = animscripts\utility::_ID3156( "exposed_idle" );
        else
        {
            wait 0.5;
            jump loc_5F1
        }

        if ( var_4 == var_1 )
            self setflaggedanimlimitedrestart( var_3, var_4, 1, 0.2 );
        else
            self setflaggedanimknoblimitedrestart( var_3, var_4, 1, 0.2 );

        var_1 = var_4;
        self waittillmatch( var_3,  "end"  );
        var_2++;
    }

    self clearanim( %add_idle, 0.1 );
}

_ID12633()
{
    self notify( "end_aim_idle_thread" );
    self._ID7._ID2428 = undefined;
    self clearanim( %add_idle, 0.1 );
}

_ID47437()
{
    return randomfloatrange( 1.0, 1.7 );
}

_ID33861()
{
    if ( animscripts\utility::_ID41682() )
        return 1.0;

    if ( animscripts\weaponlist::_ID39983() )
        return animscripts\weaponlist::_ID4463() * 0.7;

    return 0.4;
}

_ID14321( var_0, var_1, var_2 )
{
    var_3 = "fireAnim_" + _ID16710();
    _ID42298::_ID29779();

    while ( !_ID2425() )
        wait 0.05;

    _ID34063();
    var_4 = 1.0;

    if ( isdefined( self._ID33815 ) )
        var_4 = self._ID33815;
    else if ( self._ID33816 == "full" )
        var_4 = animscripts\weaponlist::_ID4463() * randomfloatrange( 0.5, 1.0 );
    else if ( self._ID33816 == "burst" )
        var_4 = animscripts\weaponlist::_ID6455();
    else if ( animscripts\utility::_ID39997() )
        var_4 = 3.0;
    else if ( animscripts\utility::_ID39996() )
        var_4 = _ID33861();

    self setflaggedanimknobrestart( var_3, var_0, 1, 0.2, var_4 );
    self updateplayersightaccuracy();
    var_5 = weaponfiretime( self.weapon );
    _ID14323( var_3, var_0, var_1, var_2, var_5 );
    _ID18550();
}

_ID14322()
{
    self endon( "killanimscript" );
    self endon( "fireAnimEnd" );
    self notify( "FireUntilOutOfAmmo_WaitTillEnded" );
    self endon( "FireUntilOutOfAmmo_WaitTillEnded" );
    var_0 = thisthread;

    for (;;)
    {
        waitframe;

        if ( !isdefined( var_0 ) )
        {
            self shootstopsound();
            return;
        }

        wait 0.05;
    }
}

_ID14323( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "enemy" );

    if ( isplayernumber( self.enemy ) && ( self._ID33816 == "full" || self._ID33816 == "semi" ) )
        level endon( "player_becoming_invulnerable" );

    if ( var_2 )
    {
        thread _ID25138( var_0, "fireAnimEnd" );
        self endon( "fireAnimEnd" );
    }

    if ( !isdefined( var_3 ) )
        var_3 = -1;

    var_5 = 0;
    var_6 = getanimlength( var_1 );
    var_7 = animhasnotetrack( var_1, "fire" );
    var_8 = weaponclass( self.weapon ) == "rocketlauncher";
    thread _ID14322();

    while ( var_5 < var_3 && var_3 > 0 )
    {
        var_9 = 0;

        if ( var_7 )
            self waittillmatch( var_0,  "fire"  );

        if ( !self._ID6323 )
        {
            if ( !_ID7345() )
                break;
        }

        if ( !_ID2425() )
            break;

        _ID33774();

        if ( isplayernumber( self.enemy ) && self.enemy _ID42407::_ID13019( "player_is_invulnerable" ) )
        {
            if ( randomint( 3 ) == 0 )
                self._ID6323--;
        }
        else
            self._ID6323--;

        if ( var_8 )
        {
            self._ID7._ID30103--;

            if ( issubstr( tolower( self.weapon ), "rpg" ) || issubstr( tolower( self.weapon ), "panzerfaust" ) )
            {
                self hidepart( "tag_rocket" );
                self._ID7._ID30106 = 0;
            }
        }

        var_5++;
        thread _ID33862( var_0 );

        if ( self._ID13941 && var_5 == var_3 )
            break;

        if ( !var_7 || var_3 == 1 && self._ID33816 == "single" )
        {
            self waittillmatch( var_0,  "end"  );
            var_9 = var_6;
        }
    }

    self shootstopsound();

    if ( var_2 )
        self notify( "fireAnimEnd" );
}

_ID2425()
{
    if ( !isdefined( self._ID33810 ) )
        return 1;

    var_0 = self getmuzzleangle();
    var_1 = animscripts\shared::_ID16587();
    var_2 = vectortoangles( self._ID33810 - var_1 );
    var_3 = anim._ID2440;

    if ( isdefined( self._ID2427 ) )
        var_3 = self._ID2427;

    var_4 = animscripts\utility::_ID1735( var_0[1] - var_2[1] );

    if ( var_4 > var_3 )
    {
        if ( distancesquared( self geteye(), self._ID33810 ) > anim._ID2438 || var_4 > anim._ID2439 )
            return 0;
    }

    var_5 = anim._ID2430;

    if ( self._ID7._ID28253 == "crouch" && distancesquared( self geteye(), self._ID33810 ) < anim._ID44892 )
        var_5 = anim._ID51480;

    return animscripts\utility::_ID1735( var_0[0] - var_2[0] ) <= var_5;
}

_ID25138( var_0, var_1 )
{
    self endon( "killanimscript" );
    self endon( var_1 );
    self waittillmatch( var_0,  "end"  );
    self notify( var_1 );
}

_ID20908()
{
    if ( weaponburstcount( self.weapon ) > 0 )
        return 0;
    else if ( weaponisauto( self.weapon ) )
        return 0;

    return 1;
}

_ID33774()
{
    var_0 = _ID20908();

    if ( isdefined( self._ID33785 ) )
    {
        if ( isdefined( self.enemy ) && self._ID33785 == self.enemy )
            animscripts\utility::_ID33781( var_0 );
    }
    else
        self [[ anim._ID33814 ]]( self._ID33810, var_0 );
}

_ID10082()
{
    if ( self._ID6323 )
        self._ID6323--;
}

_ID33862( var_0 )
{
    if ( !animscripts\utility::_ID41682() )
        return;

    self endon( "killanimscript" );
    self notify( "shotgun_pump_sound_end" );
    self endon( "shotgun_pump_sound_end" );
    thread _ID36614( 2.0 );
    self waittillmatch( var_0,  "rechamber"  );
    self playsound( "ai_shotgun_pump" );
    self notify( "shotgun_pump_sound_end" );
}

_ID36614( var_0 )
{
    self endon( "killanimscript" );
    self endon( "shotgun_pump_sound_end" );
    wait(var_0);
    self notify( "shotgun_pump_sound_end" );
}

_ID29286( var_0 )
{

}

_ID24716( var_0 )
{
    if ( self.weapon == "none" )
        return 0;

    if ( isdefined( self._ID24926 ) )
    {
        if ( self._ID6323 < weaponclipsize( self.weapon ) * 0.5 )
            self._ID6323 = int( weaponclipsize( self.weapon ) * 0.5 );

        if ( self._ID6323 <= 0 )
            self._ID6323 = 1;

        return 0;
    }

    if ( animscripts\stairs_utility::_ID54507( 100 ) )
    {
        if ( self._ID6323 < weaponclipsize( self.weapon ) * 0.5 )
            self._ID6323 = int( weaponclipsize( self.weapon ) * 0.5 );

        if ( self._ID6323 <= 0 )
            self._ID6323 = 1;

        return 0;
    }

    if ( self._ID6323 <= weaponclipsize( self.weapon ) * var_0 )
    {
        if ( var_0 == 0 )
        {
            if ( _ID7345() )
                return 0;
        }

        return 1;
    }

    return 0;
}

_ID28777()
{
    self endon( "weapon_switch_done" );
    self endon( "death" );
    self waittill( "killanimscript" );
    animscripts\shared::_ID26732( self._ID834, "right" );
}

_ID44708()
{
    var_0 = 1;
    return var_0;
}

_ID868( var_0, var_1 )
{
    self endon( "killanimscript" );

    if ( !_ID24716( var_0 ) )
        return 0;

    animscripts\battlechatter_ai::_ID13241();
    animscripts\battlechatter::_ID27185();

    if ( isdefined( var_1 ) )
    {
        var_2 = _ID44708();
        self setflaggedanimknoball( "reloadanim", var_1, %body, 1, 0.1, var_2 );
        animscripts\shared::_ID11529( "reloadanim" );
        animscripts\weaponlist::_ID29364();
        self._ID7._ID24711 = 0;
    }
    else
    {
        if ( self._ID7._ID28253 == "prone" )
        {
            self setflaggedanimknoball( "reloadanim", %prone_reload, %body, 1, 0.1, 1 );
            self updateprone( %prone_legs_up, %prone_legs_down, 1, 0.1, 1 );
        }
        else
        {
            wait 2;
            return;
        }

        animscripts\shared::_ID11529( "reloadanim" );
        animscripts\weaponlist::_ID29364();
        self._ID7._ID24711 = 0;
    }

    return 1;
}

_ID2022( var_0, var_1 )
{
    if ( !isdefined( anim._ID17421 ) )
    {
        anim._ID17421 = [];
        anim._ID17422 = [];
    }

    var_2 = anim._ID17421.size;
    anim._ID17421[var_2] = var_0;
    anim._ID17422[var_2] = var_1;
}

_ID19910()
{
    _ID2022( %exposed_grenadethrowb, ( 41.5391, 7.28883, 72.2128 ) );
    _ID2022( %exposed_grenadethrowc, ( 34.8849, -4.77048, 74.0488 ) );
    _ID2022( %corner_standl_grenade_a, ( 41.605, 6.80107, 81.4785 ) );
    _ID2022( %corner_standl_grenade_b, ( 24.1585, -14.7221, 29.2992 ) );
    _ID2022( %cornercrl_grenadea, ( 25.8988, -10.2811, 30.4813 ) );
    _ID2022( %cornercrl_grenadeb, ( 24.688, 45.0702, 64.377 ) );
    _ID2022( %corner_standr_grenade_a, ( 37.1254, -32.7053, 76.5745 ) );
    _ID2022( %corner_standr_grenade_b, ( 19.356, 15.5341, 16.5036 ) );
    _ID2022( %cornercrr_grenadea, ( 39.8857, 5.92472, 24.5878 ) );
    _ID2022( %covercrouch_grenadea, ( -1.6363, -0.693674, 60.1009 ) );
    _ID2022( %covercrouch_grenadeb, ( -1.6363, -0.693674, 60.1009 ) );
    _ID2022( %coverstand_grenadea, ( 10.8573, 7.12614, 77.2356 ) );
    _ID2022( %coverstand_grenadeb, ( 19.1804, 5.68214, 73.2278 ) );
    _ID2022( %prone_grenade_a, ( 12.2859, -1.3019, 33.4307 ) );
    _ID2022( %cqb_stand_grenade_throw, ( 35.7494, 26.6052, 37.7086 ) );
    _ID2022( %s1_covercrouch_grenadea, ( -15.5413, -16.7719, 19.4304 ) );
    _ID2022( %s1_coverstand_grenadea, ( 3.99694, -2.76588, 32.8777 ) );
    _ID2022( %s1_coverstand_grenadeb, ( 5.51904, 2.92983, 32.8406 ) );
    _ID2022( %s1_exposed_crouch_fast_grenade_1, ( 16.4611, -8.55309, 30.1018 ) );
    _ID2022( %s1_exposed_crouch_fast_grenade_2, ( 30.5886, -7.6374, 47.3139 ) );
    _ID2022( %s1_exposed_grenadethrowc, ( 13.433, -0.473915, 43.3545 ) );
    _ID2022( %s1_exposed_grenadethrowb, ( -31.425, -7.62042, 42.4334 ) );
    _ID2022( %s1_cornercrr_grenade_2, ( 37.4516, -2.01701, 22.6517 ) );
    _ID2022( %s1_corner_standl_grenade_a, ( 41.605, 6.80107, 81.4785 ) );
    _ID2022( %s1_cornercrr_grenadea, ( 39.8857, 5.92472, 24.5878 ) );
}

_ID46245( var_0 )
{
    if ( var_0 == "grenade_left" || var_0 == "grenade_right" )
    {
        self._ID44669 = spawn( "script_model", self gettagorigin( "tag_inhand" ) );
        var_1 = animscripts\utility::_ID16307();
        self._ID44669 setmodel( var_1 );
        self._ID44669 linkto( self, "tag_inhand", ( 0, 0, 3 ), ( 0, 0, 0 ) );
    }
    else if ( var_0 == "grenade_throw" )
    {
        self._ID44669 delete();
        self._ID44669 = undefined;
        return "end";
    }
}

_ID16308( var_0 )
{
    var_1 = ( 0, 0, 64 );

    if ( isdefined( var_0 ) )
    {
        foreach ( var_4, var_3 in anim._ID17421 )
        {
            if ( var_0 == var_3 )
            {
                var_1 = anim._ID17422[var_4];
                break;
            }
        }
    }

    if ( var_1[2] == 64 )
    {
        if ( !isdefined( var_0 ) )
        {

        }
        else
        {

        }
    }

    return var_1;
}

_ID37695()
{
    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        if ( level._ID805[var_0]._ID25254 == 0 )
        {
            level._ID805[var_0]._ID17424["fraggrenade"] = 0;
            level._ID805[var_0]._ID17424["flash_grenade"] = 0;
        }
    }

    anim._ID37694 = 1;
}

_ID32536( var_0 )
{
    self._ID1826 = spawnstruct();

    if ( isplayernumber( var_0 ) )
    {
        self._ID1826._ID20863 = 1;
        self._ID1826.player = var_0;
        self._ID1826._ID37755 = self.grenadeweapon;
    }
    else
    {
        self._ID1826._ID20863 = 0;
        self._ID1826._ID37755 = "AI_" + self.grenadeweapon;
    }
}

_ID39989()
{
    return self._ID1826._ID20863;
}

_ID32643( var_0, var_1 )
{
    if ( var_0._ID20863 )
    {
        var_2 = var_0.player;
        var_3 = var_2._ID17424[var_0._ID37755];
        var_2._ID17424[var_0._ID37755] = max( var_1, var_3 );
    }
    else
    {
        var_3 = anim._ID17424[var_0._ID37755];
        anim._ID17424[var_0._ID37755] = max( var_1, var_3 );
    }
}

_ID16216()
{
    var_0 = undefined;

    if ( _ID39989() )
    {
        var_1 = self._ID1826.player;
        var_0 = gettime() + var_1._ID17476._ID27830 + randomint( var_1._ID17476._ID27831 );
    }
    else
        var_0 = gettime() + 30000 + randomint( 30000 );

    return var_0;
}

_ID16309( var_0 )
{
    if ( var_0._ID20863 )
        return var_0.player._ID17424[var_0._ID37755];
    else
        return anim._ID17424[var_0._ID37755];
}

_ID8532( var_0 )
{
    if ( !isplayernumber( var_0 ) && self isbadguy() )
    {
        if ( gettime() < _ID16309( self._ID1826 ) )
        {
            if ( level.player.ignoreme )
                return var_0;

            var_1 = self getthreatbiasgroup();
            var_2 = level.player getthreatbiasgroup();

            if ( var_1 != "" && var_2 != "" && getthreatbias( var_2, var_1 ) < -10000 )
                return var_0;

            if ( self cansee( level.player ) || isai( var_0 ) && var_0 cansee( level.player ) )
            {
                if ( isdefined( self._ID8893 ) )
                {
                    var_3 = vectortoangles( level.player.origin - self.origin );
                    var_4 = angleclamp180( self._ID8893.angles[1] - var_3[1] );
                }
                else
                    var_4 = animscripts\utility::_ID16762( level.player.origin );

                if ( abs( var_4 ) < 60 )
                {
                    var_0 = level.player;
                    _ID32536( var_0 );
                }
            }
        }
    }

    return var_0;
}

_ID23142( var_0 )
{
    if ( _ID42407::_ID27342() )
        return 0;

    if ( !var_0._ID17476._ID11663 )
        return 0;

    var_1 = gettime();

    if ( var_1 < var_0._ID17424["double_grenade"] )
        return 0;

    if ( var_1 > var_0._ID21925 + 3000 )
        return 0;

    if ( var_1 < var_0._ID21925 + 500 )
        return 0;

    return var_0._ID25254 < 2;
}

_ID24633()
{
    return gettime() >= self._ID7._ID24783;
}

_ID17406( var_0 )
{
    if ( _ID42407::_ID27342() )
        return 0;

    if ( self._ID31213 == 1 )
        return 1;

    if ( !_ID24633() )
        return 0;

    if ( gettime() >= _ID16309( self._ID1826 ) )
        return 1;

    if ( self._ID1826._ID20863 && self._ID1826._ID37755 == "fraggrenade" )
        return _ID23142( var_0 );

    return 0;
}

_ID39073( var_0, var_1, var_2, var_3 )
{
    if ( !self isgrenadepossafe( var_0, var_1 ) && !_ID49347::iswolf( self ) )
        return 0;
    else if ( distancesquared( self.origin, var_1 ) < 40000 )
        return 0;

    var_4 = physicstrace( var_1 + ( 0, 0, 1 ), var_1 + ( 0, 0, -500 ) );

    if ( var_4 == var_1 + ( 0, 0, -500 ) )
        return 0;

    var_4 += ( 0, 0, 0.1 );
    return _ID39074( var_0, var_4, var_2, var_3 );
}

_ID39072( var_0, var_1 )
{
    if ( self.weapon == "mg42" || self.grenadeammo <= 0 )
        return 0;

    _ID32536( var_0 );
    var_0 = _ID8532( var_0 );

    if ( !_ID17406( var_0 ) )
        return 0;

    var_2 = _ID16308( var_1 );

    if ( isdefined( self.enemy ) && var_0 == self.enemy )
    {
        if ( !_ID7436() )
            return 0;

        if ( isplayernumber( self.enemy ) && _ID42407::_ID20581( self.enemy ) )
            return 0;

        if ( animscripts\utility::_ID6885() )
        {
            if ( !self isgrenadepossafe( var_0, var_0.origin ) && !_ID49347::iswolf( self ) )
                return 0;

            return _ID39074( var_0, undefined, var_1, var_2 );
        }
        else if ( animscripts\utility::_ID6899() )
            return _ID39073( var_0, animscripts\utility::_ID16257(), var_1, var_2 );
        else
        {
            if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
                var_3 = self lastknownpos( var_0 );
            else
                var_3 = var_0.origin;

            if ( !self isgrenadepossafe( var_0, var_3 ) && !_ID49347::iswolf( self ) )
                return 0;

            return _ID39074( var_0, undefined, var_1, var_2 );
        }

        return 0;
    }
    else
    {
        if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
            var_3 = self lastknownpos( var_0 );
        else
            var_3 = var_0.origin;

        return _ID39073( var_0, var_3, var_1, var_2 );
    }
}

_ID39074( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = getdvarint( "ai_GrenadeThrowAllowedInStairs", 1 );

    if ( var_7 && isdefined( self.grenadethrowallowedinstairs ) )
        var_7 = self.grenadethrowallowedinstairs;

    if ( !var_7 && animscripts\stairs_utility::_ID54360() )
        return 0;

    if ( gettime() < 10000 && !isdefined( level._ID19383 ) )
        return 0;

    if ( !isdefined( var_5 ) )
        var_5 = 1;

    if ( isdefined( var_2 ) )
    {
        var_8 = var_2;
        var_9 = self._ID7._ID17524;
    }
    else
    {
        switch ( self._ID7._ID35357 )
        {
            case "none":
            case "cover_crouch":
                if ( self._ID7._ID28253 == "stand" )
                {
                    var_3 = ( 0, 0, 80 );
                    var_8 = %stand_grenade_throw;
                }
                else
                {
                    var_3 = ( 0, 0, 65 );
                    var_8 = %crouch_grenade_throw;
                }

                var_9 = "left";
                break;
            default:
                var_8 = undefined;
                var_9 = undefined;
                break;
        }
    }

    if ( !isdefined( var_8 ) )
        return 0;

    if ( isdefined( var_1 ) )
    {
        if ( !isdefined( var_4 ) )
            var_10 = self checkgrenadethrowpos( var_3, var_1, var_5, "min energy", "min time", "max time" );
        else
            var_10 = self checkgrenadethrowpos( var_3, var_1, var_5, "min time", "min energy" );
    }
    else if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_10 = self checkgrenadethrowpos( var_3, self lastknownpos( var_0 ), var_5, "min energy", "min time", "max time" );
    else
    {
        var_11 = distance( var_0.origin, self.origin );
        var_12 = self._ID28963;

        if ( var_11 < 800 )
        {
            if ( var_11 < 256 )
                var_12 = 0;
            else
                var_12 *= ( var_11 - 256 ) / 544;
        }

        if ( !isdefined( var_4 ) )
            var_10 = self checkgrenadethrow( var_3, var_12, "min energy", "min time", "max time" );
        else
            var_10 = self checkgrenadethrow( var_3, var_12, "min time", "min energy" );
    }

    if ( isdefined( self.nextgrenadetrydelayminmax ) )
        self._ID7._ID24783 = gettime() + randomintrange( self.nextgrenadetrydelayminmax[0], self.nextgrenadetrydelayminmax[1] );
    else
        self._ID7._ID24783 = gettime() + randomintrange( 1000, 2000 );

    if ( isdefined( var_10 ) )
    {
        if ( !isdefined( self._ID25557 ) )
            self._ID25557 = self.grenadeawareness;

        self.grenadeawareness = 0;
        var_13 = _ID16216();
        _ID32643( self._ID1826, min( gettime() + 3000, var_13 ) );
        var_14 = 0;

        if ( _ID39989() )
        {
            var_0._ID25254++;
            thread _ID29354( var_0 );

            if ( var_0._ID25254 > 1 )
                var_14 = 1;

            if ( self._ID1826._ID37755 == "fraggrenade" )
            {
                if ( var_0._ID25254 <= 1 )
                    var_0._ID21925 = gettime();
            }
        }

        if ( isdefined( var_6 ) )
            thread _ID11482( var_8, var_10, var_13, var_14 );
        else
            _ID11482( var_8, var_10, var_13, var_14 );

        return 1;
        jump loc_17C2
    }

    return 0;
}

_ID29354( var_0 )
{
    self endon( "dont_reduce_giptp_on_killanimscript" );
    self waittill( "killanimscript" );
    var_0._ID25254--;
}

_ID11482( var_0, var_1, var_2, var_3 )
{
    self endon( "killanimscript" );

    if ( self.script == "combat" || self.script == "move" )
        self orientmode( "face direction", var_1 );

    animscripts\battlechatter_ai::_ID13236( "grenade" );
    self notify( "stop_aiming_at_enemy" );
    self setflaggedanimknoballrestart( "throwanim", var_0, %body, _ID13949(), 0.1, 1 );
    thread animscripts\notetracks::_ID11530( "throwanim", "killanimscript" );
    var_4 = animscripts\utility::_ID16307();
    var_5 = "none";

    for (;;)
    {
        self waittill( "throwanim",  var_6  );

        if ( var_6 == "grenade_left" || var_6 == "grenade_right" )
        {
            var_5 = _ID3582( var_4, "TAG_INHAND" );
            self._ID20766 = 1;
        }

        if ( var_6 == "grenade_throw" || var_6 == "grenade throw" )
            break;

        if ( var_6 == "end" )
        {
            self._ID1826.player._ID25254--;
            self notify( "dont_reduce_giptp_on_killanimscript" );
            return 0;
        }
    }

    self notify( "dont_reduce_giptp_on_killanimscript" );

    if ( _ID39989() )
        thread _ID41522( self._ID1826.player, var_2 );

    self throwgrenade();

    if ( !_ID39989() )
        _ID32643( self._ID1826, var_2 );

    if ( var_3 )
    {
        var_13 = self._ID1826.player;

        if ( var_13._ID25254 > 1 || gettime() - var_13._ID21927 < 2000 )
            var_13._ID17424["double_grenade"] = gettime() + min( 5000, var_13._ID17476._ID27800 );
    }

    self notify( "stop grenade check" );

    if ( var_5 != "none" )
    {
        self detach( var_4, var_5 );
        jump loc_196F
    }

    self._ID20766 = undefined;
    self.grenadeawareness = self._ID25557;
    self._ID25557 = undefined;
    self waittillmatch( "throwanim",  "end"  );
    self notify( "done_grenade_throw" );
    self notify( "weapon_switch_done" );
    self setanim( %exposed_modern, 1, 0.2 );
    self setanim( %exposed_aiming, 1 );
    self clearanim( var_0, 0.2 );
}

_ID41522( var_0, var_1 )
{
    var_0 endon( "death" );
    _ID41523( var_1 );
    var_0._ID25254--;
}

_ID41523( var_0 )
{
    var_1 = self._ID1826;
    var_2 = spawnstruct();
    var_2 thread _ID41524( 5 );
    var_2 endon( "watchGrenadeTowardsPlayerTimeout" );
    var_3 = self.grenadeweapon;
    var_4 = _ID16306();

    if ( !isdefined( var_4 ) )
        return;

    _ID32643( var_1, min( gettime() + 5000, var_0 ) );
    var_5 = 62500;
    var_6 = 160000;

    if ( var_3 == "flash_grenade" )
    {
        var_5 = 810000;
        var_6 = 1690000;
    }

    var_7 = level._ID805;
    var_8 = var_4.origin;

    for (;;)
    {
        wait 0.1;

        if ( !isdefined( var_4 ) )
            break;

        if ( distancesquared( var_4.origin, var_8 ) < 400 )
        {
            var_9 = [];

            for ( var_10 = 0; var_10 < var_7.size; var_10++ )
            {
                var_11 = var_7[var_10];
                var_12 = distancesquared( var_4.origin, var_11.origin );

                if ( var_12 < var_5 )
                {
                    var_11 _ID17413( var_1, var_0 );
                    continue;
                }

                if ( var_12 < var_6 )
                    var_9[var_9.size] = var_11;
            }

            var_7 = var_9;

            if ( var_7.size == 0 )
                break;
        }

        var_8 = var_4.origin;
    }
}

_ID17413( var_0, var_1 )
{
    var_2 = self;
    anim._ID37694 = undefined;

    if ( gettime() - var_2._ID21927 < 3000 )
        var_2._ID17424["double_grenade"] = gettime() + var_2._ID17476._ID27800;

    var_2._ID21927 = gettime();
    var_3 = var_2._ID17424[var_0._ID37755];
    var_2._ID17424[var_0._ID37755] = max( var_1, var_3 );
}

_ID16306()
{
    self endon( "killanimscript" );
    self waittill( "grenade_fire",  var_0  );
    return var_0;
}

_ID41524( var_0 )
{
    wait(var_0);
    self notify( "watchGrenadeTowardsPlayerTimeout" );
}

_ID3582( var_0, var_1 )
{
    self attach( var_0, var_1 );
    thread _ID10628( var_0, var_1 );
    return var_1;
}

_ID10628( var_0, var_1 )
{
    self endon( "stop grenade check" );
    self waittill( "killanimscript" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID25557 ) )
    {
        self.grenadeawareness = self._ID25557;
        self._ID25557 = undefined;
    }

    self detach( var_0, var_1 );
}

_ID25479( var_0 )
{
    var_1 = anglestoforward( self.angles );
    var_2 = anglestoright( self.angles );
    var_3 = anglestoup( self.angles );
    var_1 *= var_0[0];
    var_2 *= var_0[1];
    var_3 *= var_0[2];
    return var_1 + var_2 + var_3;
}

_ID17414( var_0, var_1 )
{
    level notify( "armoffset" );
    level endon( "armoffset" );
    var_0 = self.origin + _ID25479( var_0 );

    for (;;)
        wait 0.05;
}

_ID16304()
{
    var_0 = randomfloat( 360 );
    var_1 = randomfloatrange( 30, 75 );
    var_2 = sin( var_1 );
    var_3 = cos( var_1 );
    var_4 = cos( var_0 ) * var_3;
    var_5 = sin( var_0 ) * var_3;
    var_6 = randomfloatrange( 100, 200 );
    var_7 = ( var_4, var_5, var_2 ) * var_6;
    return var_7;
}

_ID12146()
{
    var_0 = self gettagorigin( "tag_inhand" );
    var_1 = _ID16304();
    self magicgrenademanual( var_0, var_1, 3 );
}

_ID22626()
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( self.fixednode || self.doingambush )
        return 0;

    var_0 = _ID16152();

    if ( isdefined( var_0 ) )
        return _ID39926( var_0 );

    return 0;
}

_ID16152()
{
    var_0 = self findbestcovernode();

    if ( !isdefined( var_0 ) )
        return undefined;

    var_1 = animscripts\utility::_ID16178();

    if ( isdefined( var_1 ) && var_0 == var_1 )
        return undefined;

    if ( isdefined( self._ID8893 ) && var_0 == self._ID8893 )
        return undefined;

    if ( isdefined( self.dontchangefloor ) && self.dontchangefloor )
    {
        var_2 = var_0.origin - self.origin;

        if ( abs( var_2[2] ) > 140 )
            return undefined;
    }

    return var_0;
}

_ID39926( var_0 )
{
    var_1 = self.keepclaimednodeifvalid;
    var_2 = self.keepclaimednode;
    self.keepclaimednodeifvalid = 0;
    self.keepclaimednode = 0;

    if ( self usecovernode( var_0 ) )
    {
        return 1;
        jump loc_1D38
    }

    self.keepclaimednodeifvalid = var_1;
    self.keepclaimednode = var_2;
    return 0;
}

_ID33951()
{
    if ( level._ID2182[self.team] > 0 && level._ID2182[self.team] < level._ID2183 )
    {
        if ( gettime() - level._ID21879[self.team] > 4000 )
            return 0;

        var_0 = level._ID21876[self.team];
        var_1 = isdefined( var_0 ) && distancesquared( self.origin, var_0.origin ) < 65536;

        if ( ( var_1 || distancesquared( self.origin, level._ID21878[self.team] ) < 65536 ) && ( !isdefined( self.enemy ) || distancesquared( self.enemy.origin, level._ID21877[self.team] ) < 262144 ) )
            return 1;
    }

    return 0;
}

_ID7411()
{
    if ( !isdefined( level._ID21879[self.team] ) )
        return 0;

    if ( _ID33951() )
        return 1;

    if ( gettime() - level._ID21879[self.team] < level._ID2184 )
        return 0;

    if ( !issentient( self.enemy ) )
        return 0;

    if ( level._ID2182[self.team] )
        level._ID2182[self.team] = 0;

    var_0 = isdefined( self._ID2177 ) && self._ID2177;

    if ( !var_0 && getaicount( self.team ) < getaicount( self.enemy.team ) )
        return 0;

    return 1;
}

_ID39079( var_0 )
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( self.fixednode )
        return 0;

    if ( self.combatmode == "ambush" || self.combatmode == "ambush_nodes_only" )
        return 0;

    if ( !self isingoal( self.enemy.origin ) )
        return 0;

    if ( _ID20813() )
        return 0;

    if ( !_ID7411() )
        return 0;

    self findreacquiredirectpath( var_0 );

    if ( self reacquiremove() )
    {
        self.keepclaimednodeifvalid = 0;
        self.keepclaimednode = 0;
        self._ID7._ID22753 = 1;

        if ( level._ID2182[self.team] == 0 )
        {
            level._ID21879[self.team] = gettime();
            level._ID21876[self.team] = self;
        }

        level._ID21878[self.team] = self.origin;
        level._ID21877[self.team] = self.enemy.origin;
        level._ID2182[self.team]++;
        return 1;
    }

    return 0;
}

_ID10209( var_0 )
{
    self endon( "death" );
    wait 0.5;
    var_1 = "" + anim._ID4714;
    badplace_cylinder( var_1, 5, var_0, 16, 64, self.team );
    anim._ID4717[anim._ID4717.size] = var_1;

    if ( anim._ID4717.size >= 10 )
    {
        var_2 = [];

        for ( var_3 = 1; var_3 < anim._ID4717.size; var_3++ )
            var_2[var_2.size] = anim._ID4717[var_3];

        badplace_delete( anim._ID4717[0] );
        anim._ID4717 = var_2;
    }

    anim._ID4714++;

    if ( anim._ID4714 > 10 )
        anim._ID4714 = anim._ID4714 - 20;
}

_ID40025( var_0, var_1, var_2 )
{
    if ( var_0 > var_1 && var_0 < var_2 )
        return 1;

    return 0;
}

_ID16322()
{
    if ( !isdefined( self._ID33810 ) )
        return 0;

    var_0 = self getmuzzleangle()[1] - animscripts\utility::_ID16756( self._ID33810 );
    var_0 = angleclamp180( var_0 );
    return var_0;
}

_ID16321()
{
    if ( !isdefined( self._ID33810 ) )
        return 0;

    var_0 = self getmuzzleangle()[0] - vectortoangles( self._ID33810 - self getmuzzlepos() )[0];
    var_0 = angleclamp180( var_0 );
    return var_0;
}

_ID16517()
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_0 = _ID15797( self.enemy );
    else
        var_0 = self.enemy getshootatpos();

    var_1 = var_0 - self getshootatpos();
    var_1 = vectornormalize( var_1 );
    var_2 = 360 - vectortoangles( var_1 )[0];
    return angleclamp180( var_2 );
}

_ID16520( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    var_1 = var_0 - self getshootatpos();
    var_1 = vectornormalize( var_1 );
    var_2 = 360 - vectortoangles( var_1 )[0];
    return angleclamp180( var_2 );
}

_ID16518( var_0, var_1 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return 0;

    if ( isdefined( self ) && animscripts\utility::_ID20915() )
    {
        var_2 = anglestoforward( self.angles );
        var_3 = rotatepointaroundvector( var_2, var_0 - self.origin, self.angles[2] * -1 );
        var_0 = var_3 + self.origin;
    }

    var_4 = var_0 - var_1;
    var_4 = vectornormalize( var_4 );
    var_5 = 360 - vectortoangles( var_4 )[0];
    return angleclamp180( var_5 );
}

_ID41555()
{
    self._ID20879 = 0;
    self._ID21975 = -1;

    for (;;)
    {
        self waittill( "reload_start" );
        self._ID20879 = 1;
        self._ID21975 = gettime();
        _ID41201();
        self._ID20879 = 0;
    }
}

_ID41201()
{
    thread _ID37733( 4, "reloadtimeout" );
    self endon( "reloadtimeout" );
    self endon( "weapon_taken" );

    for (;;)
    {
        self waittill( "reload" );
        var_0 = self getcurrentweapon();

        if ( var_0 == "none" )
            break;

        if ( self getcurrentweaponclipammo() >= weaponclipsize( var_0 ) )
            break;
    }

    self notify( "reloadtimeout" );
}

_ID37733( var_0, var_1 )
{
    self endon( var_1 );
    wait(var_0);
    self notify( var_1 );
}

_ID7436()
{
    var_0 = self.enemy.origin - self.origin;
    var_1 = lengthsquared( ( var_0[0], var_0[1], 0 ) );

    if ( self.grenadeweapon == "flash_grenade" )
        return var_1 < 589824;

    if ( isdefined( level._ID46221 ) && level._ID46221 )
        return var_1 >= 40000 && var_1 <= 1562500;
    else
        return 1;
}

_ID24161()
{
    self endon( "death" );

    if ( !isdefined( level._ID24731 ) )
        self endon( "stop_monitoring_flash" );

    for (;;)
    {
        var_0 = undefined;
        var_1 = undefined;
        var_2 = undefined;
        var_3 = undefined;
        var_4 = undefined;
        self waittill( "flashbang",  var_1, var_0, var_2, var_3, var_4  );

        if ( isdefined( self._ID14507 ) && self._ID14507 )
            continue;

        if ( isdefined( self._ID31257 ) && self._ID31257 != 0 )
            continue;

        if ( isdefined( self._ID25834 ) )
            continue;

        if ( isdefined( self.team ) && isdefined( var_4 ) && self.team == var_4 )
        {
            var_0 = 3 * ( var_0 - 0.75 );

            if ( var_0 < 0 )
                continue;

            if ( isdefined( self._ID37364 ) )
                continue;
        }

        var_5 = 0.2;

        if ( var_0 > 1 - var_5 )
            var_0 = 1.0;
        else
            var_0 /= ( 1 - var_5 );

        var_6 = 4.5 * var_0;

        if ( var_6 < 0.25 )
            continue;

        self._ID14521 = var_4;

        if ( isdefined( self._ID46520 ) && self._ID46520 )
            self stopanimscripted();

        if ( isdefined( var_3 ) && isplayernumber( var_3 ) )
            var_3 _ID42279::_ID39695( self );

        _ID42407::_ID14510( var_6 );
        self notify( "doFlashBanged",  var_1, var_3  );
    }
}

_ID20903()
{
    return animscripts\utility::_ID20902( self._ID834 );
}

_ID20910()
{
    return animscripts\utility::_ID20911( self._ID834 );
}

_ID20813()
{
    return _ID20910() || animscripts\utility::_ID39993();
}

_ID13949()
{
    return 1.5;
}

_ID28962()
{
    return randomfloatrange( 1, 1.2 );
}

_ID16551( var_0 )
{
    if ( var_0.size == 0 )
        return undefined;

    if ( var_0.size == 1 )
        return var_0[0];

    if ( isdefined( self._ID7._ID28496 ) && randomint( 100 ) > 20 )
    {
        foreach ( var_3, var_2 in var_0 )
        {
            if ( var_2 == self._ID7._ID28496 )
            {
                if ( var_3 < var_0.size - 1 )
                    var_0[var_3] = var_0[var_0.size - 1];

                var_0[var_0.size - 1] = undefined;
                break;
            }
        }
    }

    return var_0[randomint( var_0.size )];
}

_ID27650()
{
    var_0 = self geteye();

    foreach ( var_2 in level._ID805 )
    {
        if ( !self cansee( var_2 ) )
            continue;

        var_3 = var_2 geteye();
        var_4 = vectortoangles( var_0 - var_3 );
        var_5 = anglestoforward( var_4 );
        var_6 = var_2 getplayerangles();
        var_7 = anglestoforward( var_6 );
        var_8 = vectordot( var_5, var_7 );

        if ( var_8 < 0.805 )
            continue;

        if ( _ID42237::_ID8201() && var_8 >= 0.996 )
            continue;

        return 1;
    }

    return 0;
}

_ID15797( var_0 )
{
    var_1 = self lastknownpos( var_0 );
    var_2 = var_0 getshootatpos() - var_0.origin;
    return var_1 + var_2;
}
