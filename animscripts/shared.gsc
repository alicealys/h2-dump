// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID26732( var_0, var_1, var_2 )
{
    self notify( "weapon_position_change" );
    var_3 = self._ID1312[var_0]._ID811;

    if ( var_1 != "none" && self._ID7._ID41701[var_1] == var_0 )
        return;

    if ( isdefined( self.preplaceweapononfunc ) )
        self [[ self.preplaceweapononfunc ]]( var_0, var_1 );

    _ID10626();

    if ( var_3 != "none" )
        _ID10632( var_0 );

    if ( var_1 == "none" )
    {
        _ID39673();
        return;
    }

    if ( self._ID7._ID41701[var_1] != "none" )
        _ID10632( self._ID7._ID41701[var_1] );
    else if ( isdefined( self._ID1312["none"] ) )
        self._ID1312["none"]._ID811 = "none";

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( var_2 && ( var_1 == "left" || var_1 == "right" ) )
    {
        _ID3599( var_0, var_1 );
        self._ID1302 = var_0;
    }
    else
        _ID3599( var_0, var_1 );

    _ID39673();

    if ( isdefined( self.postplaceweapononfunc ) )
        self [[ self.postplaceweapononfunc ]]( var_0, var_1 );
}

_ID10632( var_0 )
{
    self._ID7._ID41701[self._ID1312[var_0]._ID811] = "none";
    self._ID1312[var_0]._ID811 = "none";
}

_ID3599( var_0, var_1 )
{
    self._ID1312[var_0]._ID811 = var_1;
    self._ID7._ID41701[var_1] = var_0;

    if ( self._ID7._ID41702[var_1] != "none" )
    {
        self notify( "end_weapon_drop_" + var_1 );
        self._ID7._ID41702[var_1] = "none";
    }
}

_ID16747( var_0 )
{
    var_1 = self._ID7._ID41701[var_0];

    if ( var_1 == "none" )
        return self._ID7._ID41702[var_0];

    return var_1;
}

_ID10626()
{
    var_0 = [];
    var_0[var_0.size] = "right";
    var_0[var_0.size] = "left";
    var_0[var_0.size] = "chest";
    var_0[var_0.size] = "back";
    self laseroff();

    foreach ( var_2 in var_0 )
    {
        var_3 = _ID16747( var_2 );

        if ( var_3 == "none" )
            continue;

        if ( isdefined( weapontype( var_3 ) ) && isdefined( self._ID33738 ) )
        {
            if ( isdefined( self._ID33732 ) && self._ID33732 )
            {
                playfxontag( _ID42237::_ID16299( "riot_shield_dmg" ), self, "TAG_BRASS" );
                self._ID33732 = undefined;
            }
        }
    }

    self updateplayermodelwithweapons();
}

_ID39673()
{
    var_0 = [];
    var_1 = [];
    var_2 = [];
    var_0[var_0.size] = "right";
    var_0[var_0.size] = "left";
    var_0[var_0.size] = "chest";
    var_0[var_0.size] = "back";

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_1[var_1.size] = _ID16747( var_0[var_3] );
        var_2[var_2.size] = _ID16645( var_0[var_3] );
    }

    self updateplayermodelwithweapons( var_1[0], var_2[0], var_1[1], var_2[1], var_1[2], var_2[2], var_1[3], var_2[3] );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = _ID16747( var_0[var_3] );

        if ( var_4 == "none" )
            continue;

        if ( self._ID1312[var_4]._ID39925 && !self._ID1312[var_4]._ID18214 )
        {
            var_5 = getweaponmodel( var_4 );
            self hidepart( "tag_clip", var_5 );
        }
    }

    _ID39728();
}

_ID39728()
{
    if ( isdefined( self._ID9549 ) )
        [[ self._ID9549 ]]();
    else
    {
        if ( self._ID7._ID41701["right"] == "none" )
            return;

        if ( _ID6909() )
        {
            _ID42407::_ID53909( "nvg_laser" );
            return;
        }

        self laseroff();
    }
}

_ID6909()
{
    if ( !self._ID7._ID21758 )
        return 0;

    if ( animscripts\utility::_ID20902( self._ID1302 ) )
        return 0;

    return isalive( self );
}

_ID16645( var_0 )
{
    switch ( var_0 )
    {
        case "chest":
            return "tag_weapon_chest";
        case "back":
            return "tag_stowed_back";
        case "left":
            return "tag_weapon_left";
        case "right":
            return "tag_weapon_right";
        case "hand":
            return "tag_inhand";
        default:
            break;
    }
}

_ID12142( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = self._ID1302;

    if ( !isdefined( var_0 ) || var_0 == "none" )
        return;

    if ( isdefined( self._ID24898 ) )
        return;

    _ID10626();
    var_1 = self._ID1312[var_0]._ID811;

    if ( self._ID309 && var_1 != "none" )
        thread _ID12190( var_0, var_1 );

    _ID10632( var_0 );

    if ( var_0 == self._ID1302 )
        self._ID1302 = "none";

    _ID39673();
}

_ID12143()
{
    if ( isdefined( self._ID24898 ) )
        return "none";

    var_0 = [];
    var_0[var_0.size] = "left";
    var_0[var_0.size] = "right";
    var_0[var_0.size] = "chest";
    var_0[var_0.size] = "back";
    _ID10626();

    foreach ( var_2 in var_0 )
    {
        var_3 = self._ID7._ID41701[var_2];

        if ( var_3 == "none" )
            continue;

        self._ID1312[var_3]._ID811 = "none";
        self._ID7._ID41701[var_2] = "none";

        if ( self._ID309 )
            thread _ID12190( var_3, var_2 );
    }

    self._ID1302 = "none";
    _ID39673();
}

_ID12190( var_0, var_1 )
{
    if ( self isragdoll() )
        return "none";

    self._ID7._ID41702[var_1] = var_0;
    var_2 = var_0;

    if ( isdefined( level._ID51625 ) )
        var_2 = [[ level._ID51625 ]]( var_0 );

    if ( issubstr( tolower( var_2 ), "rpg" ) )
        var_2 = "rpg_player";

    if ( issubstr( tolower( var_2 ), "mahem" ) )
        var_2 = "iw5_mahemplayer_sp_mahemscopebase";

    self dropweapon( var_2, var_1, 0 );
    self endon( "end_weapon_drop_" + var_1 );
    wait 0.05;

    if ( !isdefined( self ) )
        return;

    _ID10626();
    self._ID7._ID41702[var_1] = "none";
    _ID39673();
}

_ID11529( var_0, var_1, var_2, var_3 )
{
    for (;;)
    {
        self waittill( var_0,  var_4  );

        if ( !isdefined( var_4 ) )
            var_4 = "undefined";

        var_5 = animscripts\notetracks::_ID18031( var_4, var_0, var_1, var_3 );

        if ( isdefined( var_5 ) )
            return var_5;
    }
}

_ID16537( var_0 )
{
    if ( !isdefined( self._ID33785 ) )
    {
        if ( !isdefined( self._ID33810 ) )
            return 0;

        return _ID16102( self._ID33810 );
    }

    var_1 = self._ID33785._ID740 + self._ID33786 * var_0;
    return _ID16102( var_1 );
}

_ID16103()
{
    if ( !isdefined( self._ID33785 ) )
    {
        if ( !isdefined( self._ID33810 ) )
            return 0;

        return _ID16102( self._ID33810 );
    }

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        return _ID16102( animscripts\combat_utility::_ID15797( self._ID33785 ) );
    else
        return _ID16102( self._ID33785 getshootatpos() );
}

_ID16101()
{
    var_0 = _ID16519();

    if ( self._ID912 == "cover_crouch" && isdefined( self._ID7._ID8878 ) && self._ID7._ID8878 == "lean" )
        var_0 -= anim._ID8868;

    return var_0;
}

_ID16519()
{
    if ( !isdefined( self._ID33785 ) )
    {
        if ( !isdefined( self._ID33810 ) )
            return 0;

        return animscripts\combat_utility::_ID16520( self._ID33810 );
    }

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        return animscripts\combat_utility::_ID16520( animscripts\combat_utility::_ID15797( self._ID33785 ) );
    else
        return animscripts\combat_utility::_ID16520( self._ID33785 getshootatpos() );
}

_ID16587()
{
    if ( isdefined( self._ID39947 ) )
    {
        var_0 = self getmuzzlesideoffsetpos();
        return ( var_0[0], var_0[1], self geteye()[2] );
    }

    if ( isdefined( self._ID39946 ) && self._ID39946 )
    {
        if ( self _meth_844f( "tag_flash" ) != -1 )
        {
            var_1 = self gettagorigin( "tag_flash" );

            if ( isdefined( var_1 ) )
                return var_1;
        }
    }

    return ( self._ID740[0], self._ID740[1], self geteye()[2] );
}

_ID16102( var_0 )
{
    var_1 = animscripts\utility::_ID16762( var_0 );
    var_2 = distance( self._ID740, var_0 );

    if ( var_2 > 3 )
    {
        var_3 = asin( -3 / var_2 );
        var_1 += var_3;
    }

    var_1 = angleclamp180( var_1 );
    return var_1;
}
#using_animtree("generic_human");

_ID28937( var_0 )
{
    self endon( "killanimscript" );
    _ID28938( var_0 );
    self clearanim( %generic_aim_left, 0.5 );
    self clearanim( %generic_aim_right, 0.5 );
}

_ID28938( var_0 )
{
    self endon( "rambo_aim_end" );
    waitframe;
    self clearanim( %generic_aim_left, 0.2 );
    self clearanim( %generic_aim_right, 0.2 );
    self setanimlimited( %generic_aim_45l, 1, 0.2 );
    self setanimlimited( %generic_aim_45r, 1, 0.2 );
    var_1 = 0.2;
    var_2 = 0;

    for (;;)
    {
        if ( isdefined( self._ID33810 ) )
        {
            var_3 = animscripts\utility::_ID16756( self._ID33810 ) - self._ID8893._ID65[1];
            var_3 = angleclamp180( var_3 - var_0 );

            if ( abs( var_3 - var_2 ) > 10 )
            {
                if ( var_3 > var_2 )
                    var_3 = var_2 + 10;
                else
                    var_3 = var_2 - 10;
            }

            var_2 = var_3;
        }

        if ( var_2 < 0 )
        {
            var_4 = var_2 / -45;

            if ( var_4 > 1 )
                var_4 = 1;

            self setanimlimited( %generic_aim_right, var_4, var_1 );
            self setanimlimited( %generic_aim_left, 0, var_1 );
        }
        else
        {
            var_4 = var_2 / 45;

            if ( var_4 > 1 )
                var_4 = 1;

            self setanimlimited( %generic_aim_left, var_4, var_1 );
            self setanimlimited( %generic_aim_right, 0, var_1 );
        }

        wait(var_1);
    }
}

_ID10052()
{
    var_0 = 0;
    var_1 = weaponburstcount( self._ID1302 );

    if ( var_1 )
        var_0 = var_1;
    else if ( animscripts\weaponlist::_ID39995() )
        var_0 = anim._ID31869[randomint( anim._ID31869.size )];
    else if ( self._ID13941 )
        var_0 = anim._ID13943[randomint( anim._ID13943.size )];
    else
        var_0 = anim._ID6452[randomint( anim._ID6452.size )];

    if ( var_0 <= self._ID6323 )
        return var_0;

    if ( self._ID6323 <= 0 )
        return 1;

    return self._ID6323;
}

_ID10053()
{
    var_0 = self._ID6323;

    if ( weaponclass( self._ID1302 ) == "mg" )
    {
        var_1 = randomfloat( 10 );

        if ( var_1 < 3 )
            var_0 = randomintrange( 2, 6 );
        else if ( var_1 < 8 )
            var_0 = randomintrange( 6, 12 );
        else
            var_0 = randomintrange( 12, 20 );
    }

    return var_0;
}

_ID18014( var_0 )
{
    self endon( "killanimscript" );
    self endon( "abort_reload" );
    var_1 = undefined;

    if ( self._ID1312[self._ID1302]._ID39925 )
        var_1 = getweaponclipmodel( self._ID1302 );

    if ( self._ID1312[self._ID1302]._ID18214 )
    {
        if ( animscripts\utility::_ID39997() )
            self playsound( "weap_reload_pistol_clipout_npc" );
        else
            self playsound( "weap_reload_smg_clipout_npc" );

        if ( isdefined( var_1 ) )
        {
            var_2 = getweaponmodel( self._ID1302 );
            self hidepart( "tag_clip", var_2 );
            thread _ID12145( var_1, "tag_clip" );
            self._ID1312[self._ID1302]._ID18214 = 0;
            thread _ID29771( var_1 );
        }
    }

    for (;;)
    {
        self waittill( var_0,  var_3  );

        switch ( var_3 )
        {
            case "attach clip left":
            case "attach clip right":
                if ( isdefined( var_1 ) )
                {
                    self attach( var_1, "tag_inhand" );
                    thread _ID29771( var_1, "tag_inhand" );

                    if ( !self._ID1312[self._ID1302]._ID18214 )
                    {
                        var_2 = getweaponmodel( self._ID1302 );
                        self hidepart( "tag_clip", var_2 );
                    }
                }

                animscripts\weaponlist::_ID29364();
                continue;
            case "detach clip nohand":
                if ( isdefined( var_1 ) )
                    self detach( var_1, "tag_inhand" );

                continue;
            case "detach clip left":
            case "detach clip right":
                if ( isdefined( var_1 ) )
                {
                    self detach( var_1, "tag_inhand" );
                    var_2 = getweaponmodel( self._ID1302 );
                    self showpart( "tag_clip", var_2 );
                    self notify( "clip_detached" );
                    self._ID1312[self._ID1302]._ID18214 = 1;
                }

                if ( animscripts\utility::_ID39997() )
                    self playsound( "weap_reload_pistol_clipin_npc" );
                else
                    self playsound( "weap_reload_smg_clipin_npc" );

                self._ID7._ID24711 = 0;
                return;
        }
    }
}

_ID29771( var_0, var_1 )
{
    self notify( "clip_detached" );
    self endon( "clip_detached" );
    _ID42237::_ID41068( "killanimscript", "abort_reload" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( var_1 ) )
        self detach( var_0, var_1 );

    if ( isalive( self ) )
    {
        if ( self._ID1302 != "none" && self._ID1312[self._ID1302]._ID811 != "none" )
        {
            var_2 = getweaponmodel( self._ID1302 );
            self showpart( "tag_clip", var_2 );
        }

        self._ID1312[self._ID1302]._ID18214 = 1;
    }
    else if ( isdefined( var_1 ) )
        _ID12145( var_0, var_1 );
}

_ID12145( var_0, var_1 )
{
    var_2 = spawn( "script_model", self gettagorigin( var_1 ) );
    var_2 setmodel( var_0 );
    var_2._ID65 = self gettagangles( var_1 );
    var_2 physicslaunchclient( var_2._ID740, ( 0, 0, 0 ) );
    var_3 = level.permanentclipflag;
    wait 10;

    if ( isdefined( var_3 ) )
        _ID42237::_ID14426( var_3 );

    if ( isdefined( var_2 ) )
        var_2 delete();
}

_ID24471( var_0, var_1 )
{
    self endon( "killanimscript" );
    var_2 = var_0._ID740;
    var_3 = distancesquared( self._ID740, var_2 );

    if ( var_3 < 1 )
    {
        self safeteleport( var_2 );
        return;
    }

    if ( var_3 > 256 && !self maymovetopoint( var_2, !self._ID1063 ) )
        return;

    self._ID562 = 1;
    var_4 = distance( self._ID740, var_2 );
    var_5 = int( var_1 * 20 );

    for ( var_6 = 0; var_6 < var_5; var_6++ )
    {
        var_2 = var_0._ID740;
        var_7 = self._ID740 - var_2;
        var_7 = vectornormalize( var_7 );
        var_8 = var_2 + var_7 * var_4;
        var_9 = var_8 + ( var_2 - var_8 ) * ( var_6 + 1 ) / var_5;
        self safeteleport( var_9 );
        wait 0.05;
    }

    self._ID562 = 0;
}

_ID29925()
{
    return 1;
}

_ID28100( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = ::_ID29925;

    for ( var_3 = 0; var_3 < var_1 * 10; var_3++ )
    {
        if ( isalive( self._ID322 ) )
        {
            if ( animscripts\utility::_ID6884() && [[ var_2 ]]() )
                return;
        }

        if ( animscripts\utility::_ID20934() && [[ var_2 ]]() )
            return;

        self setanimknoball( var_0, %body, 1, 0.1 );
        wait 0.1;
    }
}

_ID37693( var_0 )
{
    self endon( "killanimscript" );
    self clearanim( %add_fire, 0.1 );
    self animmode( "angle deltas" );
    self setflaggedanimknoballrestart( "weapon swap", var_0, %body, 1, 0.1, 1 );
    thread animscripts\combat_utility::_ID28777();
    _ID11529( "weapon swap" );
    _ID42298::_ID10832();
}

_ID30318()
{
    var_0 = _ID30320();

    if ( var_0 == 0 )
        return;

    self endon( "tracksuit_removed" );
    self endon( "death" );

    for (;;)
    {
        level waittill( "an_enemy_shot",  var_1  );

        if ( var_1 != self )
            continue;

        if ( !isdefined( var_1._ID322 ) )
            continue;

        if ( var_1._ID322 != level._ID794 )
            continue;

        if ( isdefined( level._ID9277 ) && level._ID9277 == 0 )
            continue;

        thread _ID30319();
        var_0--;

        if ( var_0 <= 0 )
            return;
    }
}

_ID30320()
{
    var_0 = _ID42407::_ID16219();

    switch ( var_0 )
    {
        case "easy":
        case "gimp":
            return 2;
        case "medium":
        case "hard":
        case "difficult":
            return 1;
        case "fu":
            return 0;
    }

    return 2;
}

_ID30319()
{
    var_0 = missile_createrepulsorent( level._ID794, 5000, 800 );
    wait 4.0;
    missile_deleteattractor( var_0 );
}
