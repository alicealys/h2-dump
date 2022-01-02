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

    if ( !isdefined( self._ID7305 ) )
        self._ID7305 = 0;

    var_1 = isdefined( self._ID8893 ) && self._ID8893.type != "Cover Prone" && self._ID8893.type != "Conceal Prone";

    if ( var_1 )
        wait 0.05;

    var_2 = self._ID33785;
    var_3 = self._ID33810;
    var_4 = self._ID33816;

    if ( !isdefined( self._ID18169 ) )
    {
        self._ID7._ID21758 = 1;
        animscripts\shared::_ID39728();
    }

    if ( animscripts\combat_utility::_ID20910() )
        _ID29792();

    if ( var_1 && ( !self._ID7._ID3462 || !animscripts\utility::_ID6884() ) )
        thread _ID41510();

    thread _ID30441();
    self._ID2924 = undefined;

    for (;;)
    {
        if ( isdefined( self._ID33812 ) )
        {
            if ( !isdefined( self.enemy ) )
            {
                self._ID33810 = self._ID33812;
                self._ID33812 = undefined;
                _ID40966();
            }
            else
                self._ID33812 = undefined;
        }

        var_5 = undefined;

        if ( self.weapon == "none" )
            _ID24906();
        else if ( animscripts\utility::_ID39993() )
            var_5 = _ID30321();
        else if ( animscripts\utility::_ID39997() || isdefined( self._ID2834 ) )
            var_5 = _ID26675();
        else
            var_5 = _ID29971();

        if ( isdefined( self._ID7._ID35385 ) )
            [[ self._ID7._ID35385 ]]();

        if ( _ID7418( var_2, self._ID33785 ) || !isdefined( self._ID33785 ) && _ID7418( var_3, self._ID33810 ) || _ID7418( var_4, self._ID33816 ) )
            self notify( "shoot_behavior_change" );

        var_2 = self._ID33785;
        var_3 = self._ID33810;
        var_4 = self._ID33816;

        if ( !isdefined( var_5 ) )
            _ID40966();
    }
}

_ID40966()
{
    self endon( "enemy" );
    self endon( "done_changing_cover_pos" );
    self endon( "weapon_position_change" );
    self endon( "enemy_visible" );

    if ( isdefined( self._ID33785 ) )
    {
        self._ID33785 endon( "death" );
        self endon( "do_slow_things" );
        wait 0.05;

        while ( isdefined( self._ID33785 ) )
        {
            if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
                self._ID33810 = animscripts\combat_utility::_ID15797( self._ID33785 );
            else
                self._ID33810 = self._ID33785 getshootatpos();

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
    return !animscripts\combat_utility::_ID20910() && !animscripts\utility::_ID20902( self.weapon );
}

_ID33964()
{
    if ( !animscripts\utility::_ID6884() )
        return 0;

    if ( !isdefined( self._ID8893 ) && !self canshootenemy() )
        return 0;

    return 1;
}

_ID29973()
{
    if ( !_ID33964() )
    {
        if ( animscripts\combat_utility::_ID20910() )
            _ID29792();

        if ( self.doingambush )
        {
            self._ID33809 = "ambush";
            return "retry";
        }

        if ( !isdefined( self.enemy ) )
            _ID18275();
        else
        {
            _ID22964();

            if ( ( self.providecoveringfire || randomint( 5 ) > 0 ) && _ID33977() )
                self._ID33809 = "suppress";
            else
                self._ID33809 = "ambush";

            return "retry";
        }
    }
    else
    {
        _ID32780();
        _ID32783();
    }
}

_ID29974( var_0 )
{
    if ( !var_0 )
        _ID18275();
    else
    {
        self._ID33785 = undefined;
        self._ID33810 = animscripts\utility::_ID16257();
        _ID32782();
    }
}

_ID29972( var_0 )
{
    self._ID33816 = "none";
    self._ID33785 = undefined;

    if ( !var_0 )
    {
        _ID16114();

        if ( _ID33975() )
        {
            self._ID2924 = undefined;
            self notify( "return_to_cover" );
            self._ID33962 = 1;
        }
    }
    else
    {
        self._ID33810 = animscripts\utility::_ID16257();

        if ( _ID33975() )
        {
            self._ID2924 = undefined;

            if ( _ID33977() )
                self._ID33809 = "suppress";

            if ( randomint( 3 ) == 0 )
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
    if ( isdefined( self.enemy ) && self cansee( self.enemy ) )
    {
        _ID32780();
        return;
    }

    var_0 = self getanglestolikelyenemypath();

    if ( !isdefined( var_0 ) )
    {
        if ( isdefined( self._ID8893 ) )
            var_0 = self._ID8893.angles;
        else if ( isdefined( self._ID2925 ) )
            var_0 = self._ID2925.angles;
        else
            var_0 = self.angles;
    }

    var_1 = 1024;

    if ( isdefined( self.enemy ) )
        var_1 = distance( self.origin, self.enemy.origin );

    var_2 = self geteye() + anglestoforward( var_0 ) * var_1;

    if ( !isdefined( self._ID33810 ) || distancesquared( var_2, self._ID33810 ) > 25 )
        self._ID33810 = var_2;
}

_ID29971()
{
    if ( self._ID33809 == "normal" )
        _ID29973();
    else
    {
        if ( _ID33964() )
        {
            self._ID33809 = "normal";
            self._ID2924 = undefined;
            return "retry";
        }

        _ID22964();

        if ( animscripts\combat_utility::_ID20910() )
            _ID29792();

        var_0 = animscripts\utility::_ID6898();

        if ( self._ID33809 == "suppress" || self.team == "allies" && !isdefined( self.enemy ) && !var_0 )
            _ID29974( var_0 );
        else
            _ID29972( var_0 );
    }
}

_ID33975()
{
    if ( !isdefined( self._ID2924 ) )
    {
        if ( self isbadguy() )
            self._ID2924 = gettime() + randomintrange( 10000, 60000 );
        else
            self._ID2924 = gettime() + randomintrange( 4000, 10000 );
    }

    return self._ID2924 < gettime();
}

_ID30321()
{
    if ( !_ID33964() )
    {
        _ID22964();
        _ID18275();
        return;
    }

    _ID32780();
    _ID32781( "single", 0 );
    var_0 = lengthsquared( self.origin - self._ID33810 );

    if ( var_0 < squared( 512 ) )
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
        if ( !_ID33964() )
        {
            if ( !isdefined( self.enemy ) )
            {
                _ID18275();
                return;
            }
            else
            {
                _ID22964();
                self._ID33809 = "ambush";
                return "retry";
            }
        }
        else
        {
            _ID32780();
            _ID32781( "single", 0 );
        }
    }
    else
    {
        if ( _ID33964() )
        {
            self._ID33809 = "normal";
            self._ID2924 = undefined;
            return "retry";
        }

        _ID22964();
        self._ID33785 = undefined;
        self._ID33816 = "none";
        self._ID33810 = animscripts\utility::_ID16257();

        if ( !isdefined( self._ID2924 ) )
            self._ID2924 = gettime() + randomintrange( 4000, 8000 );

        if ( self._ID2924 < gettime() )
        {
            self._ID33809 = "normal";
            self._ID2924 = undefined;
            return "retry";
        }
    }
}

_ID22964()
{
    if ( isdefined( self.enemy ) && !self._ID7305 && self.script != "combat" )
    {
        if ( isai( self.enemy ) && isdefined( self.enemy.script ) && ( self.enemy.script == "cover_stand" || self.enemy.script == "cover_crouch" ) )
        {
            if ( isdefined( self.enemy._ID7._ID8878 ) && self.enemy._ID7._ID8878 == "hide" )
                return;
        }

        self._ID8766 = self.enemy.origin;
    }
}

_ID41510()
{
    self endon( "killanimscript" );
    self endon( "stop_deciding_how_to_shoot" );

    for (;;)
    {
        self waittill( "suppression" );

        if ( self.suppressionmeter > self._ID36847 )
        {
            if ( _ID29162() )
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

    if ( !isdefined( self.enemy ) || !self cansee( self.enemy ) )
        return 1;

    if ( gettime() < self._ID8895 + 800 )
        return 0;

    if ( isplayernumber( self.enemy ) && self.enemy.health < self.enemy.maxhealth * 0.5 )
    {
        if ( gettime() < self._ID8895 + 3000 )
            return 0;
    }

    return 1;
}

_ID30441()
{
    self endon( "death" );
    _ID42237::_ID41068( "killanimscript", "stop_deciding_how_to_shoot" );

    if ( !isdefined( self._ID54064 ) || !self._ID54064 )
    {
        self._ID7._ID21758 = 0;
        animscripts\shared::_ID39728();
    }
}

_ID7418( var_0, var_1 )
{
    if ( isdefined( var_0 ) != isdefined( var_1 ) )
        return 1;

    if ( !isdefined( var_1 ) )
        return 0;

    return var_0 != var_1;
}

_ID32780()
{
    self._ID33785 = self.enemy;

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
    {
        if ( isdefined( self._ID12963 ) && self._ID12963 == self.enemy )
            self._ID33810 = self._ID33785 getshootatpos();
        else
            self._ID33810 = animscripts\combat_utility::_ID15797( self._ID33785 );
    }
    else
        self._ID33810 = self._ID33785 getshootatpos();
}

_ID18275()
{
    self._ID33785 = undefined;
    self._ID33810 = undefined;
    self._ID33816 = "none";

    if ( self.doingambush )
        self._ID33809 = "ambush";

    if ( !self._ID7305 )
    {
        self notify( "return_to_cover" );
        self._ID33962 = 1;
    }
}

_ID33929()
{
    return level._ID15361 == 3 && isplayernumber( self.enemy );
}

_ID32783()
{
    if ( isdefined( self._ID33785.enemy ) && isdefined( self._ID33785.enemy.syncedmeleetarget ) )
        return _ID32781( "single", 0 );

    if ( animscripts\combat_utility::_ID20910() )
        return _ID32781( "single", 0 );

    if ( animscripts\utility::_ID20902( self.weapon ) )
    {
        if ( animscripts\utility::_ID41682() )
            return _ID32781( "single", 0 );
        else
            return _ID32781( "semi", 0 );
    }

    if ( weaponclass( self.weapon ) == "grenade" )
        return _ID32781( "single", 0 );

    if ( weaponburstcount( self.weapon ) > 0 )
        return _ID32781( "burst", 0 );

    var_0 = distancesquared( self getshootatpos(), self._ID33810 );
    var_1 = weaponclass( self.weapon ) == "mg";

    if ( self.providecoveringfire && var_1 )
        return _ID32781( "full", 0 );

    if ( var_0 < 62500 )
    {
        if ( isdefined( self._ID33785 ) && isdefined( self._ID33785._ID22746 ) )
            return _ID32781( "single", 0 );
        else
            return _ID32781( "full", 0 );
    }
    else if ( var_0 < 810000 || _ID33929() )
    {
        if ( weaponissemiauto( self.weapon ) || _ID33940() )
            return _ID32781( "semi", 1 );
        else
            return _ID32781( "burst", 1 );
    }
    else if ( self.providecoveringfire || var_1 || var_0 < 2560000 )
    {
        if ( _ID33940() )
            return _ID32781( "semi", 0 );
        else
            return _ID32781( "burst", 0 );
    }

    return _ID32781( "single", 0 );
}

_ID32782()
{
    var_0 = distancesquared( self getshootatpos(), self._ID33810 );

    if ( weaponissemiauto( self.weapon ) )
    {
        if ( var_0 < 2560000 )
            return _ID32781( "semi", 0 );

        return _ID32781( "single", 0 );
    }

    if ( weaponclass( self.weapon ) == "mg" )
        return _ID32781( "full", 0 );

    if ( self.providecoveringfire || var_0 < 2560000 )
    {
        if ( _ID33940() )
            return _ID32781( "semi", 0 );
        else
            return _ID32781( "burst", 0 );
    }

    return _ID32781( "single", 0 );
}

_ID32781( var_0, var_1 )
{
    self._ID33816 = var_0;
    self._ID13941 = var_1;
}

_ID33940()
{
    if ( weaponclass( self.weapon ) != "rifle" )
        return 0;

    if ( self.team != "allies" )
        return 0;

    var_0 = animscripts\utility::_ID30670( int( self.origin[1] ), 10000 ) + 2000;
    var_1 = int( self.origin[0] ) + gettime();
    return var_1 % 2 * var_0 > var_0;
}

_ID29792()
{
    self._ID34869 = 0;
    self._ID34822 = 0;
    thread _ID34776();
}

_ID34776()
{
    self endon( "killanimscript" );
    self endon( "enemy" );
    self endon( "return_to_cover" );
    self endon( "began_to_switch_to_sidearm" );
    self notify( "new_glint_thread" );
    self endon( "new_glint_thread" );

    if ( self.team == "allies" )
        return;

    if ( isdefined( self._ID10962 ) && self._ID10962 )
        return;

    if ( !isdefined( level._ID1426["sniper_glint"] ) )
        return;

    if ( !isalive( self.enemy ) )
        return;

    var_0 = _ID42237::_ID16299( "sniper_glint" );
    wait 0.2;

    for (;;)
    {
        if ( self.weapon == self._ID834 && animscripts\combat_utility::_ID27650() && ( !isdefined( self._ID20766 ) || !self._ID20766 ) )
        {
            if ( distancesquared( self.origin, self.enemy.origin ) > 65536 )
            {
                self notify( "abort_glint" );
                playfxontag( var_0, self, "tag_flash" );
                thread _ID53104( var_0 );
            }

            var_1 = randomfloatrange( 3, 5 );
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
    killfxontag( var_0, self, "tag_flash" );
}
