// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    level._ID43135 = spawnstruct();
    _ID45297();
    _ID54290();
    _ID47352();
    greenberet_mode_init();
    _ID46709();
    _ID48540();
    _ID46356();
    _ID54004();
}

ts_init()
{
    if ( !isdefined( self._ID43135 ) )
        self._ID43135 = spawnstruct();
}

_ID45297()
{
    level._ID43135._ID53593 = 0;
}

_ID45898( var_0 )
{
    level._ID43135._ID53593 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID43135._ID53593 )
        _ID49347::add_specialfeatures_function( ::_ID45821 );
    else
    {
        _ID49347::remove_specialfeatures_function( ::_ID45821 );
        level notify( "attraction_ended" );

        foreach ( var_2 in getaispeciesarray( "all", "all" ) )
            _ID51714( var_2 );
    }
}

_ID45821()
{
    self endon( "death" );
    level endon( "attraction_ended" );
    self endon( "attraction_ended" );

    while ( !isdefined( self._ID14234 ) )
        wait 0.05;

    _ID49796( self, "attraction_ended" );

    while ( level._ID43135._ID53593 )
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9  );

        if ( !isdefined( self._ID43135._ID52528 ) )
        {
            if ( isdefined( self._ID43135._ID43326 ) && !_ID51134( self, var_4 ) )
                continue;

            var_10 = distance( var_1._ID740, var_3 );
            waitframe;
            _ID42407::_ID36519();
            self._ID43135.ts_forced_hit_marker = 1;

            if ( var_4 == "MOD_MELEE" )
                self dodamage( var_0, var_3, var_1, var_1, var_4, var_9, self._ID253 );
            else if ( isdefined( var_9 ) )
                self dodamage( _ID53794( var_0, var_10 ), var_3, var_1, var_1, var_4, var_9, self._ID253 );
            else
                self dodamage( _ID53794( var_0, var_10 ), var_3, var_1, var_1, var_4, "none", self._ID253 );

            if ( !isalive( self ) || self._ID274 )
                break;

            _ID42407::_ID22746( 1 );
        }
    }
}

_ID53794( var_0, var_1 )
{
    var_2 = max( 0, var_0 - var_1 / 8 );
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
        _ID49347::add_specialfeatures_function( ::_ID50743 );
    else
    {
        _ID49347::remove_specialfeatures_function( ::_ID50743 );
        level notify( "desperation_ended" );
    }
}

_ID50743()
{
    level._ID794 endon( "death" );
    level endon( "desperation_ended" );
    self endon( "desperation_ended" );
    thread _ID51338();
    self waittill( "death",  var_0  );
    level._ID794 _ID52972( 50, var_0 );
    self notify( "desperation_ended" );
}

_ID51338()
{
    level._ID794 endon( "death" );
    self endon( "death" );
    level endon( "desperation_ended" );

    while ( level._ID43135._ID49595 )
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( ( !isdefined( self._ID22746 ) || !self._ID22746 ) && !isdefined( self._ID43135._ID52528 ) && ( !isdefined( self._ID43135._ID43326 ) || _ID51134( self, var_4 ) ) )
            level._ID794 _ID52972( var_0, var_1 );
    }
}

_ID52972( var_0, var_1 )
{
    if ( _ID45441( var_1 ) )
    {
        var_2 = ( self._ID486 + var_0 / 2 ) / self._ID626;

        if ( var_2 > self._ID626 )
            var_2 = self._ID626;

        if ( self._ID486 > 0 )
            self setnormalhealth( var_2 );
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
        _ID49347::add_specialfeatures_function( ::_ID48712 );
    else
    {
        _ID49347::remove_specialfeatures_function( ::_ID48712 );
        level notify( "fortitude_ended" );

        foreach ( var_2 in getaispeciesarray( "all", "all" ) )
        {
            var_2._ID43135._ID52528 = undefined;
            var_2._ID43135.ts_fortitude_damage = undefined;
            var_2 notify( "fortitude_ended" );
            _ID51714( var_2 );
        }
    }
}

_ID48712()
{
    self endon( "death" );
    level endon( "fortitude_ended" );
    self endon( "fortitude_ended" );

    while ( !isdefined( self._ID14234 ) )
        wait 0.05;

    _ID49796( self, "fortitude_ended" );
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
            _ID51714( self );
            return;
        }
    }
}

greenberet_mode_init()
{
    setsaveddvar( "g_using_greenberet_ts", 0 );
    level._ID43135.tactical_greenberet = 0;
    level._ID43135.greenberet_weaponname = greenberet_choose_weapon();
    precacheitem( level._ID43135.greenberet_weaponname );
}

greenberet_mode_update( var_0 )
{
    if ( !isdefined( level._ID43135.greenberet_wait ) )
    {
        wait 0.25;
        level._ID43135.tactical_greenberet_wait = 1;
    }

    level._ID43135.tactical_greenberet = _ID42237::_ID37527( var_0, 1, 0 );

    if ( isdefined( level._ID43135.greenberet_disabled ) && level._ID43135.greenberet_disabled )
        return;

    if ( level._ID43135.tactical_greenberet )
        greenberet_giveweapon();
    else
        greenberet_takeweapon();
}

greenberet_giveweapon()
{
    setsaveddvar( "g_using_greenberet_ts", 1 );
    level._ID43135.previousdontallowcache = level._ID794._ID11546;
    level._ID794._ID11546 = 1;
    level._ID43135.greenberet_previousweapons = [];
    level._ID43135.greenberet_currentweapon = level._ID794 getcurrentweapon( 1 );

    foreach ( var_1 in level._ID794 getweaponslistall() )
    {
        if ( ts_isvalidweapon( var_1 ) )
        {
            level._ID43135.greenberet_previousweapons[var_1] = [];
            level._ID43135.greenberet_previousweapons[var_1]["ammoClip"] = level._ID794 getweaponammoclip( var_1 );
            level._ID43135.greenberet_previousweapons[var_1]["ammoStock"] = level._ID794 getweaponammostock( var_1 );
            level._ID43135.greenberet_previousweapons[var_1]["akimbo"] = level._ID794 _meth_85ce( var_1 );
            level._ID794 takeweapon( var_1 );
        }
    }

    level._ID794 giveweapon( level._ID43135.greenberet_weaponname );
    level._ID794 switchtoweapon( level._ID43135.greenberet_weaponname );
    thread greenberet_monitor();
}

ts_isvalidweapon( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( issubstr( var_0, "alt_" ) )
        return 0;

    var_1 = weaponclass( var_0 );

    if ( ( var_1 == "grenade" || var_1 == "item" ) && var_0 != "c4" && var_0 != "m79" )
        return 0;

    return 1;
}

greenberet_takeweapon()
{
    if ( isdefined( level._ID43135.previousdontallowcache ) )
        level._ID794._ID11546 = level._ID43135.previousdontallowcache;
    else
        level._ID794._ID11546 = undefined;

    setsaveddvar( "g_using_greenberet_ts", 0 );

    if ( !isdefined( level._ID43135.greenberet_previousweapons ) )
        return;

    foreach ( var_1 in level._ID794 getweaponslistall() )
    {
        if ( ts_isvalidweapon( var_1 ) )
            level._ID794 takeweapon( var_1 );
    }

    foreach ( var_5, var_4 in level._ID43135.greenberet_previousweapons )
    {
        level._ID794 giveweapon( var_5, 0, var_4["akimbo"] );
        level._ID794 setweaponammoclip( var_5, var_4["ammoClip"] );
        level._ID794 setweaponammostock( var_5, var_4["ammoStock"] );

        if ( !isdefined( level._ID43135.greenberet_currentweapon ) )
            level._ID43135.greenberet_currentweapon = var_5;
    }

    if ( isdefined( level._ID43135.greenberet_currentweapon ) && level._ID43135.greenberet_currentweapon != "none" )
        level._ID794 switchtoweapon( level._ID43135.greenberet_currentweapon );

    level._ID43135.greenberet_previousweapons = undefined;
    level._ID43135.greenberet_currentweapon = undefined;
    level notify( "greenberet_ended" );
}

greenberet_monitor()
{
    level endon( "greenberet_ended" );
    childthread greenberet_flare_monitor();

    for (;;)
    {
        level._ID794 waittill( "pickup" );
        level._ID794 waittill( "weapon_change" );
        var_0 = level._ID794 getcurrentweapon();

        if ( var_0 != "claymore" )
            level._ID794 setweaponammostock( var_0, 0 );

        if ( issubstr( var_0, "at4" ) || issubstr( var_0, "stinger" ) )
            level._ID794 setweaponammoclip( var_0, 1 );

        wait 0.05;
    }
}

greenberet_flare_monitor()
{
    level endon( "greenberet_ended" );

    for (;;)
    {
        level._ID794 waittill( "weapon_change" );
        var_0 = level._ID794 getcurrentweapon();

        if ( issubstr( var_0, "flare" ) )
            level._ID794 setweaponammoclip( var_0, 1 );

        wait 0.05;
    }
}

greenberet_choose_weapon()
{
    switch ( level._ID912 )
    {
        case "cliffhanger":
            return "h2_cheatpickaxe";
        default:
            return "h2_cheatcommandoknife";
    }
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
    if ( isdefined( level._ID43135._ID46552 ) && level._ID43135._ID46552 )
    {
        if ( isdefined( self._ID31433 ) && ( level._ID912 == "oilrig" || level._ID912 == "af_caves" ) )
            return;

        if ( isdefined( self._ID43135.martyr_ignore ) && self._ID43135.martyr_ignore )
            return;

        if ( isdefined( self._ID170 ) && self._ID170 == "actor_enemy_dog" && var_1 == "MOD_UNKNOWN" )
            var_2 = 5;
        else
            var_2 = 4;

        var_3 = undefined;

        if ( isdefined( var_0 ) )
        {
            if ( isplayernumber( var_0 ) )
                var_3 = magicgrenademanual( "fraggrenade", self gettagorigin( "j_head" ), ( 0, 0, 256 ), var_2, var_0 );
            else if ( isplayernumber( var_0._ID9644 ) )
                var_3 = magicgrenademanual( "fraggrenade", self gettagorigin( "j_head" ), ( 0, 0, 256 ), var_2, var_0._ID9644 );
        }
        else
            var_3 = magicgrenademanual( "fraggrenade", self gettagorigin( "j_head" ), ( 0, 0, 256 ), var_2 );

        if ( isdefined( var_3 ) )
            var_3._ID47092 = 1;
    }
}

_ID48540()
{
    level._ID43135._ID51965 = 0;
    _ID49347::add_specialfeatures_function( ::_ID50206 );
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

    if ( isdefined( self._ID43135._ID46008 ) && self._ID43135._ID46008 )
        return;

    if ( isdefined( self._ID3217 ) && self._ID3217 == "dog.atr" )
        return;

    if ( isdefined( self._ID172 ) && self._ID172 == "script_vehicle" )
        return;

    for (;;)
    {
        if ( level._ID43135._ID51965 )
            makeghost();
        else
            removeghost();

        level waittill( "polterghost_mode_updated" );
    }
}

makeghost()
{
    if ( _func_2a5( self ) )
        return;

    if ( _ID49347::iswolf( self ) )
        self waittill( "wolf_removed" );

    if ( isdefined( self._ID18272 ) )
        self detach( self._ID18272 );

    if ( isdefined( self._ID18304 ) )
    {
        if ( !isdefined( self.cheat.pineapple_previoushead ) )
            self._ID43135.polterghostmode_previousheadmodel = self._ID18304;
        else
            self._ID43135.polterghostmode_previousheadmodel = self.cheat.pineapple_previoushead;

        self detach( self._ID18304 );
    }

    self._ID43135.polterghostmode_previousmodel = self._ID669;
    self setmodel( level.invisibleman_body );
    self attach( level.invisibleman_head );
    self._ID18304 = level.invisibleman_head;

    if ( isdefined( self._ID18272 ) )
        self attach( self._ID18272 );

    self._ID43135.polterghostmode = 1;
}

removeghost()
{
    if ( _func_2a5( self ) )
        return;

    if ( !isdefined( self._ID43135.polterghostmode ) )
        return;

    if ( isdefined( self._ID18272 ) )
        self detach( self._ID18272 );

    if ( isdefined( self._ID43135.polterghostmode_previousmodel ) )
    {
        self setmodel( self._ID43135.polterghostmode_previousmodel );
        self._ID43135.polterghostmode_previousmodel = undefined;
    }

    if ( isdefined( self._ID43135.polterghostmode_previousheadmodel ) && !isdefined( self.cheat._ID51310 ) )
    {
        self detach( self._ID18304 );
        self attach( self._ID43135.polterghostmode_previousheadmodel );
        self._ID18304 = self._ID43135.polterghostmode_previousheadmodel;
        self._ID43135.polterghostmode_previousheadmodel = undefined;
    }
    else if ( isdefined( self.cheat._ID51310 ) )
        self.cheat.pineapple_previoushead = self._ID43135.polterghostmode_previousheadmodel;

    if ( isdefined( self._ID18272 ) )
        self attach( self._ID18272 );

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
        _ID49347::add_specialfeatures_function( ::_ID53038 );
    else
    {
        _ID49347::remove_specialfeatures_function( ::_ID53038 );
        level notify( "precision_ended" );

        foreach ( var_2 in getaispeciesarray( "all", "all" ) )
        {
            var_2._ID43135._ID43326 = undefined;
            _ID51714( var_2 );
        }
    }
}

_ID53038()
{
    self endon( "death" );
    level endon( "precision_ended" );
    self endon( "precision_ended" );

    while ( !isdefined( self._ID14234 ) )
        wait 0.05;

    _ID49796( self, "precision_ended" );
    self._ID43135._ID43326 = 1;

    while ( level._ID43135._ID50612 )
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9  );

        if ( ( _ID51134( self, var_4 ) || var_4 == "MOD_EXPLOSIVE" ) && !isdefined( self._ID43135._ID52528 ) )
        {
            waitframe;
            _ID42407::_ID36519();
            self._ID43135.ts_forced_hit_marker = 1;

            if ( isdefined( var_9 ) )
                self dodamage( var_0, var_3, var_1, var_1, var_4, var_9, self._ID253 );
            else
                self dodamage( var_0, var_3, var_1, var_1, var_4, "none", self._ID253 );

            if ( !isalive( self ) || self._ID274 )
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
        level._ID794 thread _ID42999();
        _ID49347::add_specialfeatures_function( ::_ID52696 );
    }
    else
    {
        _ID49347::remove_specialfeatures_function( ::_ID52696 );
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

        if ( _ID45441( var_0 ) )
            level._ID43135._ID43975 = level._ID43135._ID43975 + level._ID43135._ID48526 * 5;
    }
}

_ID42999()
{
    self endon( "starvation_mode_ended" );
    self endon( "death" );
    level._ID43135._ID48526 = 1000;
    level._ID43135._ID43975 = gettime();

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
        if ( gettime() > level._ID43135._ID48526 + level._ID43135._ID43975 )
        {
            foreach ( var_1 in level._ID794 getweaponslistall() )
            {
                if ( !ts_isvalidweapon( var_1 ) )
                    continue;

                var_2 = self getweaponammostock( var_1 );
                var_3 = weaponclipsize( var_1 ) / 10;

                if ( var_2 > 0 )
                {
                    self setweaponammostock( var_1, int( var_2 - var_3 ) );
                    continue;
                }

                var_4 = self getweaponammoclip( var_1 );
                self setweaponammoclip( var_1, int( var_4 - var_3 ) );
            }

            level._ID43135._ID43975 = gettime();
        }

        wait 0.05;
    }
}

_ID45441( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( isplayernumber( var_0 ) )
        return 1;

    if ( isdefined( var_0._ID9644 ) && isplayernumber( var_0._ID9644 ) )
        return 1;

    return 0;
}

_ID51134( var_0, var_1 )
{
    if ( isdefined( var_0._ID253 ) && ( self._ID253 == "head" || self._ID253 == "helmet" ) || var_1 == "MOD_MELEE" )
        return 1;
    else
        return 0;
}

_ID54623( var_0 )
{
    if ( isdefined( var_0._ID43135 ) && isdefined( var_0._ID43135._ID53982 ) )
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
    if ( isdefined( var_0._ID43135._ID47933 ) )
        var_0 notify( var_1 );
    else if ( isdefined( var_0._ID43135._ID53982 ) )
        var_0._ID43135._ID53982++;
    else
    {
        if ( !isdefined( var_0._ID22746 ) || !var_0._ID22746 )
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
    if ( isdefined( var_0._ID43135._ID53982 ) )
    {
        var_0._ID43135._ID53982--;

        if ( var_0._ID43135._ID53982 <= 0 )
        {
            var_0._ID43135._ID53982 = undefined;
            var_0 _ID42407::_ID36519();
        }
    }
}
