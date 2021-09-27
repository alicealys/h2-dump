// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    level._ID43135 = _func_1A5();
    _unknown_0017();
    _unknown_0090();
    _unknown_00E5();
    _unknown_0139();
    _unknown_022C();
    _unknown_0281();
    _unknown_030B();
    _unknown_0371();
}

ts_init()
{
    if ( !_func_02F( self._ID43135 ) )
        self._ID43135 = _func_1A5();
}

_ID45297()
{
    level._ID43135._ID53593 = 0;
}

_ID45898( var_0 )
{
    level._ID43135._ID53593 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID43135._ID53593 )
        _ID49347::add_specialfeatures_function( ::_unknown_0082 );
    else
    {
        _ID49347::remove_specialfeatures_function( ::_unknown_008B );
        level notify( "attraction_ended" );
        var_1 = _func_0DF( "all", "all" );

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            _unknown_048E( var_2 );
        }

        var_clear_2
        var_clear_0
    }
}

_ID45821()
{
    self endon( "death" );
    level endon( "attraction_ended" );
    self endon( "attraction_ended" );

    while ( !_func_02F( self._ID14234 ) )
        wait 0.05;

    _unknown_04A3( self, "attraction_ended" );

    while ( level._ID43135._ID53593 )
    {
        self waittill( "damage",  var_9, var_8, var_7, var_6, var_5, var_4, var_3, var_2, var_1, var_0  );

        if ( !_func_02F( self._ID43135._ID52528 ) )
        {
            if ( _func_02F( self._ID43135._ID43326 ) && !_unknown_04C2( self, var_4 ) )
                continue;

            var_10 = _func_0F3( var_1._ID740, var_3 );
            waitframe;
            _ID42407::_ID36519();
            self._ID43135.ts_forced_hit_marker = 1;

            if ( var_4 == "MOD_MELEE" )
                self _meth_8057( var_0, var_3, var_1, var_1, var_4, var_9, self._ID253 );
            else if ( _func_02F( var_9 ) )
                self _meth_8057( _unknown_01C6( var_0, var_10 ), var_3, var_1, var_1, var_4, var_9, self._ID253 );
            else
                self _meth_8057( _unknown_01E0( var_0, var_10 ), var_3, var_1, var_1, var_4, "none", self._ID253 );

            if ( !_func_1A7( self ) || self._ID274 )
                break;

            _ID42407::_ID22746( 1 );
        }
    }
}

_ID53794( var_0, var_1 )
{
    var_2 = _func_0E6( 0, var_0 - var_1 / 8 );
    return var_2;
}

_ID54290()
{
    level._ID43135._ID49595 = 0;
}

_ID45370( var_0 )
{
    level._ID43135._ID49595 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID43135._ID49595 )
        _ID49347::add_specialfeatures_function( ::_unknown_0248 );
    else
    {
        _ID49347::remove_specialfeatures_function( ::_unknown_0250 );
        level notify( "desperation_ended" );
    }
}

_ID50743()
{
    level._ID794 endon( "death" );
    level endon( "desperation_ended" );
    self endon( "desperation_ended" );
    thread _unknown_0280();
    self waittill( "death",  var_0  );
    level._ID794 _unknown_02B5( 50, var_0 );
    self notify( "desperation_ended" );
}

_ID51338()
{
    level._ID794 endon( "death" );
    self endon( "death" );
    level endon( "desperation_ended" );

    while ( level._ID43135._ID49595 )
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( !_func_02F( self._ID22746 ) || !self._ID22746 && !_func_02F( self._ID43135._ID52528 ) && !_func_02F( self._ID43135._ID43326 ) || ts_isvalidweapon( self, var_4 ) )
            level._ID794 _unknown_031F( var_0, var_1 );
    }
}

_ID52972( var_0, var_1 )
{
    if ( _unknown_061D( var_1 ) )
    {
        var_2 = self._ID486 + var_0 / 2 / self._ID626;

        if ( var_2 > self._ID626 )
            var_2 = self._ID626;

        if ( self._ID486 > 0 )
            self _meth_8056( var_2 );
    }
}

_ID47352()
{
    level._ID43135._ID49847 = 0;
}

_ID47958( var_0 )
{
    level._ID43135._ID49847 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID43135._ID49847 )
        _ID49347::add_specialfeatures_function( ::_unknown_03A4 );
    else
    {
        _ID49347::remove_specialfeatures_function( ::_unknown_03AC );
        level notify( "fortitude_ended" );
        var_1 = _func_0DF( "all", "all" );

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2._ID43135._ID52528 = undefined;
            var_2._ID43135.ts_fortitude_damage = undefined;
            var_2 notify( "fortitude_ended" );
            _unknown_06F6( var_2 );
        }

        var_clear_2
        var_clear_0
    }
}

_ID48712()
{
    self endon( "death" );
    level endon( "fortitude_ended" );
    self endon( "fortitude_ended" );

    while ( !_func_02F( self._ID14234 ) )
        wait 0.05;

    _unknown_070B( self, "fortitude_ended" );
    self._ID43135._ID52528 = 1;
    self._ID43135.ts_fortitude_damage = 0;

    while ( level._ID43135._ID49847 )
    {
        self waittill( "damage",  var_0  );
        self._ID43135.ts_fortitude_damage = self._ID43135.ts_fortitude_damage + var_0;
        self._ID43135.ts_forced_hit_marker = 1;

        if ( self._ID43135.ts_fortitude_damage > 300 )
        {
            wait 0.05;
            self._ID43135._ID52528 = undefined;
            self._ID43135.ts_fortitude_damage = undefined;
            _unknown_0779( self );
            return;
        }
    }
}

greenberet_mode_init()
{
    _func_0DB( "g_using_greenberet_ts", 0 );
    level._ID43135.tactical_greenberet = 0;
    level._ID43135.greenberet_weaponname = _unknown_0591();
    _func_14E( level._ID43135.greenberet_weaponname );
}

greenberet_mode_update( var_0 )
{
    if ( !_func_02F( level._ID43135.greenberet_wait ) )
    {
        wait 0.25;
        level._ID43135.tactical_greenberet_wait = 1;
    }

    level._ID43135.tactical_greenberet = _ID42237::_ID37527( var_0, 1, 0 );

    if ( _func_02F( level._ID43135.greenberet_disabled ) && level._ID43135.greenberet_disabled )
        return;

    if ( level._ID43135.tactical_greenberet )
        _unknown_0520();
    else
        _unknown_0573();
}

greenberet_giveweapon()
{
    _func_0DB( "g_using_greenberet_ts", 1 );
    level._ID43135.previousdontallowcache = level._ID794._ID11546;
    level._ID794._ID11546 = 1;
    level._ID43135.greenberet_previousweapons = [];
    level._ID43135.greenberet_currentweapon = level._ID794 _meth_831C( 1 );
    var_0 = level._ID794 _meth_8316();

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _unknown_05A9( var_1 ) )
        {
            level._ID43135.greenberet_previousweapons[var_1] = [];
            level._ID43135.greenberet_previousweapons[var_1]["ammoClip"] = level._ID794 _meth_8303( var_1 );
            level._ID43135.greenberet_previousweapons[var_1]["ammoStock"] = level._ID794 _meth_8304( var_1 );
            level._ID43135.greenberet_previousweapons[var_1]["akimbo"] = level._ID794 _meth_85CE( var_1 );
            level._ID794 _meth_831A( var_1 );
        }
    }

    var_clear_2
    var_clear_0
    level._ID794 _meth_8319( level._ID43135.greenberet_weaponname );
    level._ID794 _meth_8320( level._ID43135.greenberet_weaponname );
    thread _unknown_066D();
}

ts_isvalidweapon( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( _func_125( var_0, "alt_" ) )
        return 0;

    var_1 = _func_1BE( var_0 );

    if ( var_1 == "grenade" || var_1 == "item" && var_0 != "c4" && var_0 != "m79" )
        return 0;

    return 1;
}

greenberet_takeweapon()
{
    if ( _func_02F( level._ID43135.previousdontallowcache ) )
        level._ID794._ID11546 = level._ID43135.previousdontallowcache;
    else
        level._ID794._ID11546 = undefined;

    _func_0DB( "g_using_greenberet_ts", 0 );

    if ( !_func_02F( level._ID43135.greenberet_previousweapons ) )
        return;

    var_0 = level._ID794 _meth_8316();

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _unknown_0697( var_1 ) )
            level._ID794 _meth_831A( var_1 );
    }

    var_clear_2
    var_clear_0
    var_3 = level._ID43135.greenberet_previousweapons;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        level._ID794 _meth_8319( var_5, 0, var_4["akimbo"] );
        level._ID794 _meth_8301( var_5, var_4["ammoClip"] );
        level._ID794 _meth_8302( var_5, var_4["ammoStock"] );

        if ( !_func_02F( level._ID43135.greenberet_currentweapon ) )
            level._ID43135.greenberet_currentweapon = var_5;
    }

    var_clear_2

    if ( _func_02F( level._ID43135.greenberet_currentweapon ) && level._ID43135.greenberet_currentweapon != "none" )
        level._ID794 _meth_8320( level._ID43135.greenberet_currentweapon );

    level._ID43135.greenberet_previousweapons = undefined;
    level._ID43135.greenberet_currentweapon = undefined;
    level notify( "greenberet_ended" );
}

greenberet_monitor()
{
    level endon( "greenberet_ended" );
    childthread _unknown_07AE();

    for (;;)
    {
        level._ID794 waittill( "pickup" );
        level._ID794 waittill( "weapon_change" );
        var_0 = level._ID794 _meth_831C();

        if ( var_0 != "claymore" )
            level._ID794 _meth_8302( var_0, 0 );

        if ( _func_125( var_0, "at4" ) || _func_125( var_0, "stinger" ) )
            level._ID794 _meth_8301( var_0, 1 );

        wait 0.05;
    }
}

greenberet_flare_monitor()
{
    level endon( "greenberet_ended" );

    for (;;)
    {
        level._ID794 waittill( "weapon_change" );
        var_0 = level._ID794 _meth_831C();

        if ( _func_125( var_0, "flare" ) )
            level._ID794 _meth_8301( var_0, 1 );

        wait 0.05;
    }
}

greenberet_choose_weapon()
{
    switch ( level._ID912 )
    {

    }

    case "cliffhanger":
    default:
}

_ID46709()
{
    level._ID43135._ID46552 = 0;
}

_ID54195( var_0 )
{
    level._ID43135._ID46552 = _ID42237::_ID37527( var_0, 1, 0 );
}

martyr_mode_dropgrenade( var_0, var_1 )
{
    if ( _func_02F( level._ID43135._ID46552 ) && level._ID43135._ID46552 )
    {
        if ( _func_02F( self._ID31433 ) && level._ID912 == "oilrig" || level._ID912 == "af_caves" )
            return;

        if ( _func_02F( self._ID43135.martyr_ignore ) && self._ID43135.martyr_ignore )
            return;

        if ( _func_02F( self._ID170 ) && self._ID170 == "actor_enemy_dog" && var_1 == "MOD_UNKNOWN" )
            var_2 = 5;
        else
            var_2 = 4;

        var_3 = undefined;

        if ( _func_02F( var_0 ) )
        {
            if ( _func_1B3( var_0 ) )
                var_3 = _func_075( "fraggrenade", self _meth_818C( "j_head" ), ( 0, 0, 256 ), var_2, var_0 );
            else if ( _func_1B3( var_0._ID9644 ) )
                var_3 = _func_075( "fraggrenade", self _meth_818C( "j_head" ), ( 0, 0, 256 ), var_2, var_0._ID9644 );
        }
        else
            var_3 = _func_075( "fraggrenade", self _meth_818C( "j_head" ), ( 0, 0, 256 ), var_2 );

        if ( _func_02F( var_3 ) )
            var_3._ID47092 = 1;
    }
}

_ID48540()
{
    level._ID43135._ID51965 = 0;
    _ID49347::add_specialfeatures_function( ::_ID54284 );
}

_ID54284( var_0 )
{
    level._ID43135._ID51965 = _ID42237::_ID37527( var_0, 1, 0 );
    level notify( "polterghost_mode_updated" );
}

_ID50206()
{
    self endon( "death" );
    waittillframeend;

    if ( _func_02F( self._ID43135._ID46008 ) && self._ID43135._ID46008 )
        return;

    if ( _func_02F( self._ID3217 ) && self._ID3217 == "dog.atr" )
        return;

    if ( _func_02F( self._ID172 ) && self._ID172 == "script_vehicle" )
        return;

    for (;;)
    {
        if ( level._ID43135._ID51965 )
            _unknown_0A33();
        else
            _unknown_0A64();

        level waittill( "polterghost_mode_updated" );
    }
}

makeghost()
{
    if ( _func_2A5( self ) )
        return;

    if ( _ID49347::iswolf( self ) )
        self waittill( "wolf_removed" );

    if ( _func_02F( self._ID18272 ) )
        self _meth_802A( self._ID18272 );

    if ( _func_02F( self._ID18304 ) )
    {
        if ( !_func_02F( self.cheat.pineapple_previoushead ) )
            self._ID43135.polterghostmode_previousheadmodel = self._ID18304;
        else
            self._ID43135.polterghostmode_previousheadmodel = self.cheat.pineapple_previoushead;

        self _meth_802A( self._ID18304 );
    }

    self._ID43135.polterghostmode_previousmodel = self._ID669;
    self _meth_80B8( level.invisibleman_body );
    self _meth_801D( level.invisibleman_head );
    self._ID18304 = level.invisibleman_head;

    if ( _func_02F( self._ID18272 ) )
        self _meth_801D( self._ID18272 );

    self._ID43135.polterghostmode = 1;
}

removeghost()
{
    if ( _func_2A5( self ) )
        return;

    if ( !_func_02F( self._ID43135.polterghostmode ) )
        return;

    if ( _func_02F( self._ID18272 ) )
        self _meth_802A( self._ID18272 );

    if ( _func_02F( self._ID43135.polterghostmode_previousmodel ) )
    {
        self _meth_80B8( self._ID43135.polterghostmode_previousmodel );
        self._ID43135.polterghostmode_previousmodel = undefined;
    }

    if ( _func_02F( self._ID43135.polterghostmode_previousheadmodel ) && !_func_02F( self.cheat._ID51310 ) )
    {
        self _meth_802A( self._ID18304 );
        self _meth_801D( self._ID43135.polterghostmode_previousheadmodel );
        self._ID18304 = self._ID43135.polterghostmode_previousheadmodel;
        self._ID43135.polterghostmode_previousheadmodel = undefined;
    }
    else if ( _func_02F( self.cheat._ID51310 ) )
        self.cheat.pineapple_previoushead = self._ID43135.polterghostmode_previousheadmodel;

    if ( _func_02F( self._ID18272 ) )
        self _meth_801D( self._ID18272 );

    self._ID43135.polterghostmode = undefined;
    self notify( "polterghost_removed" );
}

_ID46356()
{
    level._ID43135._ID50612 = 0;
}

_ID54268( var_0 )
{
    level._ID43135._ID50612 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID43135._ID50612 )
        _ID49347::add_specialfeatures_function( ::_unknown_0BF9 );
    else
    {
        _ID49347::remove_specialfeatures_function( ::_unknown_0C01 );
        level notify( "precision_ended" );
        var_1 = _func_0DF( "all", "all" );

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2._ID43135._ID43326 = undefined;
            _unknown_0D2C( var_2 );
        }

        var_clear_2
        var_clear_0
    }
}

_ID53038()
{
    self endon( "death" );
    level endon( "precision_ended" );
    self endon( "precision_ended" );

    while ( !_func_02F( self._ID14234 ) )
        wait 0.05;

    _unknown_0D41( self, "precision_ended" );
    self._ID43135._ID43326 = 1;

    while ( level._ID43135._ID50612 )
    {
        self waittill( "damage",  var_9, var_8, var_7, var_6, var_5, var_4, var_3, var_2, var_1, var_0  );

        if ( _unknown_0D54( self, var_4 ) || var_4 == "MOD_EXPLOSIVE" && !_func_02F( self._ID43135._ID52528 ) )
        {
            waitframe;
            _ID42407::_ID36519();
            self._ID43135.ts_forced_hit_marker = 1;

            if ( _func_02F( var_9 ) )
                self _meth_8057( var_0, var_3, var_1, var_1, var_4, var_9, self._ID253 );
            else
                self _meth_8057( var_0, var_3, var_1, var_1, var_4, "none", self._ID253 );

            if ( !_func_1A7( self ) || self._ID274 )
                break;

            _ID42407::_ID22746( 1 );
        }
    }
}

_ID54004()
{
    level._ID43135._ID53704 = 0;
}

_ID53773( var_0 )
{
    level._ID43135._ID53704 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID43135._ID53704 )
    {
        level._ID794 thread _unknown_0D89();
        _ID49347::add_specialfeatures_function( ::_unknown_0D7D );
    }
    else
    {
        _ID49347::remove_specialfeatures_function( ::_unknown_0D86 );
        level notify( "starvation_mode_ended" );
        level._ID794 notify( "starvation_mode_ended" );
    }
}

_ID52696()
{
    level endon( "starvation_mode_ended" );

    if ( level._ID43135._ID53704 )
    {
        self waittill( "death",  var_0  );

        if ( _unknown_0E09( var_0 ) )
            level._ID43135._ID43975 = level._ID43135._ID43975 + level._ID43135._ID48526 * 5;
    }
}

_ID42999()
{
    self endon( "starvation_mode_ended" );
    self endon( "death" );
    level._ID43135._ID48526 = 1000;
    level._ID43135._ID43975 = _func_03D();

    if ( level._ID912 == "oilrig" )
    {
        while ( !_ID42237::_ID14385( "obj_stealthkill_complete" ) )
            waittillframeend;
    }
    else if ( level._ID912 == "favela" )
    {
        while ( !_ID42237::_ID14385( "torture_sequence_done" ) )
            waittillframeend;
    }

    while ( level._ID43135._ID53704 )
    {
        if ( _func_03D() > level._ID43135._ID48526 + level._ID43135._ID43975 )
        {
            var_0 = level._ID794 _meth_8316();

            for ( var_5 = _func_1DA( var_0 ); _func_02F( var_5 ); var_5 = _func_1BF( var_0, var_5 ) )
            {
                var_1 = var_0[var_5];

                if ( !_unknown_0C69( var_1 ) )
                    continue;

                var_2 = self _meth_8304( var_1 );
                var_3 = _func_1B7( var_1 ) / 10;

                if ( var_2 > 0 )
                {
                    self _meth_8302( var_1, _func_0C1( var_2 - var_3 ) );
                    continue;
                }

                var_4 = self _meth_8303( var_1 );
                self _meth_8301( var_1, _func_0C1( var_4 - var_3 ) );
            }

            var_clear_4
            var_clear_0
            level._ID43135._ID43975 = _func_03D();
        }

        wait 0.05;
    }
}

_ID45441( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( _func_1B3( var_0 ) )
        return 1;

    if ( _func_02F( var_0._ID9644 ) && _func_1B3( var_0._ID9644 ) )
        return 1;

    return 0;
}

_ID51134( var_0, var_1 )
{
    if ( _func_02F( var_0._ID253 ) && self._ID253 == "head" || self._ID253 == "helmet" || var_1 == "MOD_MELEE" )
        return 1;
    else
        return 0;
}

_ID54623( var_0 )
{
    if ( _func_02F( var_0._ID43135 ) && _func_02F( var_0._ID43135._ID53982 ) )
    {
        var_0 _ID42407::_ID36519();
        var_0._ID43135._ID53982 = undefined;
        var_0._ID43135._ID52528 = undefined;
        var_0._ID43135._ID43326 = undefined;
        var_0 notify( "attraction_ended" );
        var_0 notify( "precision_ended" );
        var_0 notify( "fortitude_ended" );
    }
}

_ID49796( var_0, var_1 )
{
    if ( _func_02F( var_0._ID43135._ID47933 ) )
        var_0 notify( var_1 );
    else if ( _func_02F( var_0._ID43135._ID53982 ) )
        var_0._ID43135._ID53982++;
    else
    {
        if ( !_func_02F( var_0._ID22746 ) || !var_0._ID22746 )
        {
            var_0._ID43135._ID53982 = 1;
            var_0 _ID42407::_ID22746( 1 );
            return;
        }

        var_0._ID43135._ID47933 = 1;
        var_0 notify( var_1 );
    }
}

_ID51714( var_0 )
{
    if ( _func_02F( var_0._ID43135._ID53982 ) )
    {
        var_0._ID43135._ID53982--;

        if ( var_0._ID43135._ID53982 <= 0 )
        {
            var_0._ID43135._ID53982 = undefined;
            var_0 _ID42407::_ID36519();
        }
    }
}
