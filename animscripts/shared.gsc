// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID26732( var_0, var_1, var_2 )
{
    self notify( "weapon_position_change" );
    var_3 = self._ID1312[var_0]._ID811;

    if ( var_1 != "none" && self._ID7._ID41701[var_1] == var_0 )
        return;

    if ( _func_02F( self.preplaceweapononfunc ) )
        self [[ self.preplaceweapononfunc ]]( var_0, var_1 );

    _unknown_009E();

    if ( var_3 != "none" )
        _unknown_0085( var_0 );

    if ( var_1 == "none" )
    {
        _unknown_00E1();
        return;
    }

    if ( self._ID7._ID41701[var_1] != "none" )
        _unknown_00AA( self._ID7._ID41701[var_1] );
    else if ( _func_02F( self._ID1312["none"] ) )
        self._ID1312["none"]._ID811 = "none";

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( var_2 && var_1 == "left" || var_1 == "right" )
    {
        _unknown_00F4( var_0, var_1 );
        self._ID1302 = var_0;
    }
    else
        _unknown_0100( var_0, var_1 );

    _unknown_014A();

    if ( _func_02F( self.postplaceweapononfunc ) )
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
    self _meth_80BA();
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _unknown_01D0( var_2 );

        if ( var_3 == "none" )
            continue;

        if ( _func_02F( _func_1BD( var_3 ) ) && _func_02F( self._ID33738 ) )
        {
            if ( _func_02F( self._ID33732 ) && self._ID33732 )
            {
                _func_157( _ID42237::_ID16299( "riot_shield_dmg" ), self, "TAG_BRASS" );
                self._ID33732 = undefined;
            }
        }
    }

    var_clear_3
    var_clear_0
    self _meth_82E7();
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
        var_1[var_1.size] = _unknown_024A( var_0[var_3] );
        var_2[var_2.size] = _unknown_02D8( var_0[var_3] );
    }

    self _meth_82E7( var_1[0], var_2[0], var_1[1], var_2[1], var_1[2], var_2[2], var_1[3], var_2[3] );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = _unknown_0286( var_0[var_3] );

        if ( var_4 == "none" )
            continue;

        if ( self._ID1312[var_4]._ID39925 && !self._ID1312[var_4]._ID18214 )
        {
            var_5 = _func_043( var_4 );
            self _meth_804E( "tag_clip", var_5 );
        }
    }

    _unknown_0327();
}

_ID39728()
{
    if ( _func_02F( self._ID9549 ) )
        [[ self._ID9549 ]]();
    else
    {
        if ( self._ID7._ID41701["right"] == "none" )
            return;

        if ( _unknown_035A() )
        {
            _ID42407::_ID53909( "nvg_laser" );
            return;
        }

        self _meth_80BA();
    }
}

_ID6909()
{
    if ( !self._ID7._ID21758 )
        return 0;

    if ( animscripts\utility::_ID20902( self._ID1302 ) )
        return 0;

    return _func_1A7( self );
}

_ID16645( var_0 )
{
    switch ( var_0 )
    {

    }

    case "hand":
    case "chest":
    case "back":
    case "right":
    case "left":
    default:
}

_ID12142( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = self._ID1302;

    if ( !_func_02F( var_0 ) || var_0 == "none" )
        return;

    if ( _func_02F( self._ID24898 ) )
        return;

    _unknown_0377();
    var_1 = self._ID1312[var_0]._ID811;

    if ( self._ID309 && var_1 != "none" )
        thread _unknown_046C( var_0, var_1 );

    _unknown_0372( var_0 );

    if ( var_0 == self._ID1302 )
        self._ID1302 = "none";

    _unknown_03D2();
}

_ID12143()
{
    if ( _func_02F( self._ID24898 ) )
        return "none";

    var_0 = [];
    var_0[var_0.size] = "left";
    var_0[var_0.size] = "right";
    var_0[var_0.size] = "chest";
    var_0[var_0.size] = "back";
    _unknown_03D5();
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = self._ID7._ID41701[var_2];

        if ( var_3 == "none" )
            continue;

        self._ID1312[var_3]._ID811 = "none";
        self._ID7._ID41701[var_2] = "none";

        if ( self._ID309 )
            thread _unknown_04F6( var_3, var_2 );
    }

    var_clear_3
    var_clear_0
    self._ID1302 = "none";
    _unknown_045A();
}

_ID12190( var_0, var_1 )
{
    if ( self _meth_81F0() )
        return "none";

    self._ID7._ID41702[var_1] = var_0;
    var_2 = var_0;

    if ( _func_02F( level._ID51625 ) )
        var_2 = [[ level._ID51625 ]]( var_0 );

    if ( _func_125( _func_128( var_2 ), "rpg" ) )
        var_2 = "rpg_player";

    if ( _func_125( _func_128( var_2 ), "mahem" ) )
        var_2 = "iw5_mahemplayer_sp_mahemscopebase";

    self _meth_81CE( var_2, var_1, 0 );
    self endon( "end_weapon_drop_" + var_1 );
    wait 0.05;

    if ( !_func_02F( self ) )
        return;

    _unknown_048E();
    self._ID7._ID41702[var_1] = "none";
    _unknown_04C8();
}

_ID11529( var_0, var_1, var_2, var_3 )
{
    for (;;)
    {
        self waittill( var_0,  var_4  );

        if ( !_func_02F( var_4 ) )
            var_4 = "undefined";

        var_5 = animscripts\notetracks::_ID18031( var_4, var_0, var_1, var_3 );

        if ( _func_02F( var_5 ) )
            return var_5;
    }
}

_ID16537( var_0 )
{
    if ( !_func_02F( self._ID33785 ) )
    {
        if ( !_func_02F( self._ID33810 ) )
            return 0;

        return _unknown_0649( self._ID33810 );
    }

    var_1 = self._ID33785._ID740 + self._ID33786 * var_0;
    return _unknown_0659( var_1 );
}

_ID16103()
{
    if ( !_func_02F( self._ID33785 ) )
    {
        if ( !_func_02F( self._ID33810 ) )
            return 0;

        return _unknown_0670( self._ID33810 );
    }

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        return _unknown_0685( animscripts\combat_utility::_ID15797( self._ID33785 ) );
    else
        return _unknown_068E( self._ID33785 _meth_809E() );
}

_ID16101()
{
    var_0 = _unknown_0668();

    if ( self._ID912 == "cover_crouch" && _func_02F( self._ID7._ID8878 ) && self._ID7._ID8878 == "lean" )
        var_0 -= anim._ID8868;

    return var_0;
}

_ID16519()
{
    if ( !_func_02F( self._ID33785 ) )
    {
        if ( !_func_02F( self._ID33810 ) )
            return 0;

        return animscripts\combat_utility::_ID16520( self._ID33810 );
    }

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        return animscripts\combat_utility::_ID16520( animscripts\combat_utility::_ID15797( self._ID33785 ) );
    else
        return animscripts\combat_utility::_ID16520( self._ID33785 _meth_809E() );
}

_ID16587()
{
    if ( _func_02F( self._ID39947 ) )
    {
        var_0 = self _meth_81C6();
        return ( var_0[0], var_0[1], self _meth_80AF()[2] );
    }

    if ( _func_02F( self._ID39946 ) && self._ID39946 )
    {
        if ( self _meth_844F( "tag_flash" ) != -1 )
        {
            var_1 = self _meth_818C( "tag_flash" );

            if ( _func_02F( var_1 ) )
                return var_1;
        }
    }

    return ( self._ID740[0], self._ID740[1], self _meth_80AF()[2] );
}

_ID16102( var_0 )
{
    var_1 = animscripts\utility::_ID16762( var_0 );
    var_2 = _func_0F3( self._ID740, var_0 );

    if ( var_2 > 3 )
    {
        var_3 = _func_0BE( -3 / var_2 );
        var_1 += var_3;
    }

    var_1 = _func_0F0( var_1 );
    return var_1;
}
#using_animtree("generic_human");

_ID28937( var_0 )
{
    self endon( "killanimscript" );
    _unknown_0790( var_0 );
    self _meth_814C( %generic_aim_left, 0.5 );
    self _meth_814C( %generic_aim_right, 0.5 );
}

_ID28938( var_0 )
{
    self endon( "rambo_aim_end" );
    waitframe;
    self _meth_814C( %generic_aim_left, 0.2 );
    self _meth_814C( %generic_aim_right, 0.2 );
    self _meth_8156( %generic_aim_45l, 1, 0.2 );
    self _meth_8156( %generic_aim_45r, 1, 0.2 );
    var_1 = 0.2;
    var_2 = 0;

    for (;;)
    {
        if ( _func_02F( self._ID33810 ) )
        {
            var_3 = animscripts\utility::_ID16756( self._ID33810 ) - self._ID8893._ID65[1];
            var_3 = _func_0F0( var_3 - var_0 );

            if ( _func_0C3( var_3 - var_2 ) > 10 )
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

            self _meth_8156( %generic_aim_right, var_4, var_1 );
            self _meth_8156( %generic_aim_left, 0, var_1 );
        }
        else
        {
            var_4 = var_2 / 45;

            if ( var_4 > 1 )
                var_4 = 1;

            self _meth_8156( %generic_aim_left, var_4, var_1 );
            self _meth_8156( %generic_aim_right, 0, var_1 );
        }

        wait(var_1);
    }
}

_ID10052()
{
    var_0 = 0;
    var_1 = _func_1BC( self._ID1302 );

    if ( var_1 )
        var_0 = var_1;
    else if ( animscripts\weaponlist::_ID39995() )
        var_0 = anim._ID31869[_func_0B7( anim._ID31869.size )];
    else if ( self._ID13941 )
        var_0 = anim._ID13943[_func_0B7( anim._ID13943.size )];
    else
        var_0 = anim._ID6452[_func_0B7( anim._ID6452.size )];

    if ( var_0 <= self._ID6323 )
        return var_0;

    if ( self._ID6323 <= 0 )
        return 1;

    return self._ID6323;
}

_ID10053()
{
    var_0 = self._ID6323;

    if ( _func_1BE( self._ID1302 ) == "mg" )
    {
        var_1 = _func_0B8( 10 );

        if ( var_1 < 3 )
            var_0 = _func_0B9( 2, 6 );
        else if ( var_1 < 8 )
            var_0 = _func_0B9( 6, 12 );
        else
            var_0 = _func_0B9( 12, 20 );
    }

    return var_0;
}

_ID18014( var_0 )
{
    self endon( "killanimscript" );
    self endon( "abort_reload" );
    var_1 = undefined;

    if ( self._ID1312[self._ID1302]._ID39925 )
        var_1 = _func_0E3( self._ID1302 );

    if ( self._ID1312[self._ID1302]._ID18214 )
    {
        if ( animscripts\utility::_ID39997() )
            self _meth_80A1( "weap_reload_pistol_clipout_npc" );
        else
            self _meth_80A1( "weap_reload_smg_clipout_npc" );

        if ( _func_02F( var_1 ) )
        {
            var_2 = _func_043( self._ID1302 );
            self _meth_804E( "tag_clip", var_2 );
            thread _unknown_0A7B( var_1, "tag_clip" );
            self._ID1312[self._ID1302]._ID18214 = 0;
            thread _unknown_0A64( var_1 );
        }
    }

    for (;;)
    {
        self waittill( var_0,  var_3  );

        switch ( var_3 )
        {

        }

        case "detach clip nohand":
        case "detach clip right":
        case "detach clip left":
        case "attach clip left":
    }
}

_ID29771( var_0, var_1 )
{
    self notify( "clip_detached" );
    self endon( "clip_detached" );
    _ID42237::_ID41068( "killanimscript", "abort_reload" );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( var_1 ) )
        self _meth_802A( var_0, var_1 );

    if ( _func_1A7( self ) )
    {
        if ( self._ID1302 != "none" && self._ID1312[self._ID1302]._ID811 != "none" )
        {
            var_2 = _func_043( self._ID1302 );
            self _meth_8051( "tag_clip", var_2 );
        }

        self._ID1312[self._ID1302]._ID18214 = 1;
    }
    else if ( _func_02F( var_1 ) )
        _unknown_0BBC( var_0, var_1 );
}

_ID12145( var_0, var_1 )
{
    var_2 = _func_06A( "script_model", self _meth_818C( var_1 ) );
    var_2 _meth_80B8( var_0 );
    var_2._ID65 = self _meth_818D( var_1 );
    var_2 _meth_82CC( var_2._ID740, ( 0, 0, 0 ) );
    var_3 = level.permanentclipflag;
    wait 10;

    if ( _func_02F( var_3 ) )
        _ID42237::_ID14426( var_3 );

    if ( _func_02F( var_2 ) )
        var_2 _meth_80B7();
}

_ID24471( var_0, var_1 )
{
    self endon( "killanimscript" );
    var_2 = var_0._ID740;
    var_3 = _func_0F5( self._ID740, var_2 );

    if ( var_3 < 1 )
    {
        self _meth_81D3( var_2 );
        return;
    }

    if ( var_3 > 256 && !self _meth_81CF( var_2, !self._ID1063 ) )
        return;

    self._ID562 = 1;
    var_4 = _func_0F3( self._ID740, var_2 );
    var_5 = _func_0C1( var_1 * 20 );

    for ( var_6 = 0; var_6 < var_5; var_6++ )
    {
        var_2 = var_0._ID740;
        var_7 = self._ID740 - var_2;
        var_7 = _func_119( var_7 );
        var_8 = var_2 + var_7 * var_4;
        var_9 = var_8 + var_2 - var_8 * var_6 + 1 / var_5;
        self _meth_81D3( var_9 );
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
    if ( !_func_02F( var_2 ) )
        var_2 = ::_unknown_0CDB;

    for ( var_3 = 0; var_3 < var_1 * 10; var_3++ )
    {
        if ( _func_1A7( self._ID322 ) )
        {
            if ( animscripts\utility::_ID6884() && [[ var_2 ]]() )
                return;
        }

        if ( animscripts\utility::_ID20934() && [[ var_2 ]]() )
            return;

        self _meth_8151( var_0, %body, 1, 0.1 );
        wait 0.1;
    }
}

_ID37693( var_0 )
{
    self endon( "killanimscript" );
    self _meth_814C( %add_fire, 0.1 );
    self _meth_819A( "angle deltas" );
    self _meth_8119( "weapon swap", var_0, %body, 1, 0.1, 1 );
    thread animscripts\combat_utility::_ID28777();
    _unknown_0B91( "weapon swap" );
    _ID42298::_ID10832();
}

_ID30318()
{
    var_0 = _unknown_0DB7();

    if ( var_0 == 0 )
        return;

    self endon( "tracksuit_removed" );
    self endon( "death" );

    for (;;)
    {
        level waittill( "an_enemy_shot",  var_1  );

        if ( var_1 != self )
            continue;

        if ( !_func_02F( var_1._ID322 ) )
            continue;

        if ( var_1._ID322 != level._ID794 )
            continue;

        if ( _func_02F( level._ID9277 ) && level._ID9277 == 0 )
            continue;

        thread _unknown_0E18();
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

    }

    return 2;
    case "difficult":
    case "gimp":
    case "fu":
    case "hard":
    case "medium":
    case "easy":
}

_ID30319()
{
    var_0 = _func_1AB( level._ID794, 5000, 800 );
    wait 4.0;
    _func_1AD( var_0 );
}
