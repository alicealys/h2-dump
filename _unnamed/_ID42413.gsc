// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID33422( var_0 )
{
    var_1 = [];

    if ( isdefined( var_0._ID31231 ) )
        return level._ID40139[var_0._ID31231];

    return var_1;
}

_ID33510()
{
    var_0 = _ID1473();

    foreach ( var_2 in var_0 )
        var_2 thread _ID40262();
}

_ID40262()
{
    self endon( "entitydeleted" );

    if ( isdefined( self._ID31263 ) )
    {
        var_0 = self._ID31263;

        if ( !isdefined( level._ID40183[var_0] ) )
            level._ID40183[var_0] = [];

        level._ID40183[var_0][level._ID40183[var_0].size] = self;
    }

    if ( isdefined( self._ID31114 ) )
        thread _ID42372::_ID40265();

    thread _ID40199();
    self.count = 1;
    self._ID35075 = [];

    for (;;)
    {
        var_1 = undefined;
        self waittill( "spawned",  var_1  );
        self.count--;

        if ( !isdefined( var_1 ) )
            continue;

        var_1._ID35073 = self._ID35075;
        var_1._ID988 = self;
        var_1 _ID49347::cheat_init();
        var_1 _ID45456::ts_init();
        var_1 thread _ID42372::_ID30393();
    }
}

_ID40199()
{
    if ( !isdefined( self._ID31509 ) )
        return;

    if ( !isdefined( self._ID31273 ) )
        return;

    var_0 = getentarray( self._ID31273, "script_linkname" );

    if ( var_0.size == 0 )
        return;

    var_1 = var_0[0].targetname;
    var_0 = getentarray( var_1, "targetname" );
    var_2 = undefined;

    foreach ( var_4 in var_0 )
    {
        if ( var_4.classname == "script_origin" )
            var_2 = var_4;

        var_4 hide();
    }

    foreach ( var_4 in var_0 )
    {
        if ( var_4 != var_2 )
            var_4 linkto( var_2 );
    }

    self waittill( "spawned",  var_8  );

    foreach ( var_4 in var_0 )
    {
        var_4 show();

        if ( var_4 != var_2 )
            var_4 linkto( var_8 );
    }

    var_8 waittill( "death" );
    _ID42237::_ID3294( var_0, ::delete );
}

_ID20628()
{
    if ( !isdefined( self.classname ) )
        return 0;

    if ( self.classname == "trigger_multiple" )
        return 1;

    if ( self.classname == "trigger_radius" )
        return 1;

    if ( self.classname == "trigger_lookat" )
        return 1;

    return self.classname == "trigger_disk";
}

_ID38872( var_0 )
{
    var_1 = var_0 _ID20628();
    var_0._ID28668 = undefined;

    if ( isdefined( var_0.script_noteworthy ) && var_0.script_noteworthy == "trigger_multiple" )
        var_1 = 0;

    var_2 = _ID33422( var_0 );
    var_3 = isdefined( var_0._ID31517 );
    var_4 = isdefined( var_0._ID31510 ) && ( _ID20570( var_0 ) || _ID20571( var_0 ) );
    var_5 = isdefined( var_0._ID10681 ) && !( _ID20570( var_0 ) || _ID20571( var_0 ) );
    var_6 = 1;

    while ( var_6 )
    {
        var_0 waittill( "trigger",  var_7  );

        if ( isdefined( var_0._ID31519 ) )
        {
            if ( !isdefined( var_7._ID31519 ) )
                continue;

            if ( var_7._ID31519 != var_0._ID31519 )
                continue;
        }

        if ( isdefined( var_0._ID12560 ) && !var_0._ID12560 )
            var_0 waittill( "enable" );

        if ( isdefined( var_0._ID31195 ) )
            _ID42237::_ID14402( var_0._ID31195 );

        if ( isdefined( var_0._ID31191 ) )
            _ID42237::_ID14388( var_0._ID31191 );

        if ( var_4 )
            var_7 thread _ID26310( var_0 );
        else if ( var_5 && isdefined( var_7 ) )
            var_7 thread _ID26308( var_0 );

        var_0 _ID42407::_ID916();

        if ( var_1 )
            var_6 = 0;

        if ( isdefined( var_0._ID31514 ) )
        {
            if ( !isdefined( level._ID40117[var_0._ID31514] ) )
                level._ID40117[var_0._ID31514] = [];

            _ID42237::_ID3315( level._ID40117[var_0._ID31514], _ID42407::_ID10321 );
        }

        if ( var_3 )
            _ID1586( var_0._ID31517 );

        if ( var_2.size > 0 && var_1 )
            _ID42237::_ID3315( var_2, ::_ID26311 );

        if ( isdefined( var_0._ID31518 ) )
        {
            if ( !isdefined( level._ID40268[var_0._ID31518] ) )
                return;

            _ID42237::_ID3315( level._ID40268[var_0._ID31518], ::_ID1481 );
        }
    }
}

_ID38873( var_0, var_1 )
{
    var_2 = var_0 _ID20628();
    var_0._ID28668 = undefined;

    if ( isdefined( var_0.script_noteworthy ) && var_0.script_noteworthy == "trigger_multiple" )
        var_2 = 0;

    var_3 = _ID33422( var_0 );
    var_4 = isdefined( var_0._ID31517 );
    var_5 = isdefined( var_0._ID31510 ) && ( _ID20570( var_0 ) || _ID20571( var_0 ) );
    var_6 = isdefined( var_0._ID10681 ) && !( _ID20570( var_0 ) || _ID20571( var_0 ) );
    var_7 = 1;

    if ( isdefined( var_0._ID31519 ) )
    {
        if ( !isdefined( var_1._ID31519 ) )
            return;

        if ( var_1._ID31519 != var_0._ID31519 )
            return;
    }

    if ( isdefined( var_0._ID12560 ) && !var_0._ID12560 )
        var_0 waittill( "enable" );

    if ( isdefined( var_0._ID31195 ) )
        _ID42237::_ID14402( var_0._ID31195 );

    if ( isdefined( var_0._ID31191 ) )
        _ID42237::_ID14388( var_0._ID31191 );

    if ( var_5 )
        var_1 thread _ID26310( var_0 );
    else if ( var_6 && isdefined( var_1 ) )
        var_1 thread _ID26308( var_0 );

    var_0 _ID42407::_ID916();

    if ( var_2 )
        var_7 = 0;

    if ( isdefined( var_0._ID31514 ) )
    {
        if ( !isdefined( level._ID40117[var_0._ID31514] ) )
            level._ID40117[var_0._ID31514] = [];

        _ID42237::_ID3315( level._ID40117[var_0._ID31514], _ID42407::_ID10321 );
    }

    if ( var_4 )
        _ID1586( var_0._ID31517 );

    if ( var_3.size > 0 && var_2 )
        _ID42237::_ID3315( var_3, ::_ID26311 );

    if ( isdefined( var_0._ID31518 ) )
    {
        if ( !isdefined( level._ID40268[var_0._ID31518] ) )
            return;

        _ID42237::_ID3315( level._ID40268[var_0._ID31518], ::_ID1481 );
    }
}

_ID26309( var_0 )
{
    var_1 = undefined;

    foreach ( var_3 in level._ID40120[var_0._ID31510] )
    {
        if ( var_3 != var_0 )
        {
            if ( !_ID20802( var_3 ) )
                var_1 = var_3;
        }
    }

    return var_1;
}

_ID26310( var_0 )
{
    var_1 = _ID26309( var_0 );

    if ( isdefined( var_1 ) )
        thread _ID1676( var_1 );
}

_ID8961( var_0 )
{
    return ( isdefined( self._ID9788 ) || self.health < self._ID18313 || var_0._ID31106 == "forced" ) && ( !isdefined( var_0._ID10417 ) || var_0._ID31106 == "plane" );
}

_ID8960( var_0 )
{
    return isdefined( var_0._ID10417 ) && var_0._ID10417;
}

_ID26308( var_0 )
{
    var_1 = getvehiclenode( var_0.target, "targetname" );
    var_2 = _ID26309( var_1 );

    if ( !isdefined( var_2 ) )
        return;

    if ( var_0._ID10681 && !isdefined( var_2._ID31511 ) )
        return;

    if ( isdefined( var_2._ID31106 ) )
    {
        if ( !_ID8961( var_2 ) )
            return;

        self notify( "crashpath",  var_2  );
        var_2._ID10417 = 1;
        self notify( "newpath" );
        _ID1602( var_0, var_2 );
        return;
    }
    else
    {
        if ( _ID8960( var_2 ) )
            return;

        if ( isdefined( var_2._ID31511 ) )
        {
            if ( !isdefined( self._ID31511 ) )
                return;

            if ( var_2._ID31511 != self._ID31511 )
            {

            }
        }
        else
        {
            self notify( "newpath" );
            _ID1602( var_1, var_2 );
            thread _ID10680( var_2 );

            if ( !_ID20802( var_1 ) && !( isdefined( var_0._ID31543 ) && var_0._ID31543 ) )
                var_0._ID10681 = 1;

            self._ID3577 = var_2;
            thread _ID1676();

            if ( self vehicle_isphysveh() && isdefined( var_1._ID31485 ) )
                thread _ID29946( var_1 );
        }
    }
}

_ID29946( var_0 )
{
    self endon( "death" );
    var_0 waittillmatch( "trigger",  self  );
    self.veh_transmission = var_0._ID31485;

    if ( self.veh_transmission == "forward" )
        _ID41730( 1 );
    else
        _ID41730( 0 );
}

_ID1602( var_0, var_1 )
{
    self setswitchnode( var_0, var_1 );
}

_ID10680( var_0 )
{
    self endon( "death" );
    self._ID10682 = var_0;
    var_0 waittillmatch( "trigger",  self  );
    self._ID10682 = undefined;
}

_ID40187( var_0, var_1 )
{
    if ( isdefined( var_0.script_linkname ) )
        level._ID40198 = _ID3292( level._ID40198, var_0.script_linkname, var_0 );

    if ( isdefined( var_0._ID31518 ) )
        level._ID40268 = _ID3292( level._ID40268, var_0._ID31518, var_0 );

    if ( isdefined( var_0._ID31514 ) )
        level._ID40117 = _ID3292( level._ID40117, var_0._ID31514, var_0 );
}

_ID35029( var_0 )
{
    var_1 = [];
    var_2 = _ID42407::_ID13023( "no_riders_until_unload" );

    foreach ( var_4 in var_0 )
    {
        var_4.count = 1;
        var_5 = 0;

        if ( isdefined( var_4._ID31152 ) )
        {
            var_5 = 1;
            var_6 = _ID42407::_ID12077( var_4 );
            var_6 _ID42288::_ID11867();
        }
        else
        {
            var_7 = isdefined( var_4._ID31460 ) && _ID42237::_ID14385( "_stealth_enabled" ) && !_ID42237::_ID14385( "_stealth_spotted" );
            var_8 = var_4;

            if ( isdefined( var_4._ID31441 ) )
                var_8 = _ID42372::_ID15979( var_4, 1 );

            if ( isdefined( var_4._ID31214 ) || var_2 )
                var_6 = var_8 stalingradspawn( var_7 );
            else
                var_6 = var_8 dospawn( var_7 );

            if ( isdefined( var_4._ID31441 ) )
            {
                if ( isdefined( var_4._ID31455 ) )
                    var_6._ID31455 = var_4._ID31455;
            }
        }

        if ( !var_5 && !isalive( var_6 ) )
            continue;

        var_1[var_1.size] = var_6;
    }

    var_1 = _ID29556( var_1 );
    return var_1;
}

_ID29556( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( !_ID2329( var_3 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID2329( var_0 )
{
    if ( isalive( var_0 ) )
        return 1;

    if ( !isdefined( var_0 ) )
        return 0;

    if ( !isdefined( var_0.classname ) )
        return 0;

    return var_0.classname == "script_model";
}

_ID35081()
{
    if ( _ID42407::_ID13023( "no_riders_until_unload" ) && !_ID42407::_ID13019( "no_riders_until_unload" ) )
        return [];

    var_0 = _ID16055();

    if ( !var_0.size )
        return [];

    var_1 = [];
    var_2 = _ID35029( var_0 );
    var_2 = _ID42237::_ID3296( var_2, _ID16054() );
    var_2 = _ID34961( var_2 );

    foreach ( var_4 in var_2 )
        thread _ID42412::_ID17557( var_4 );

    return var_2;
}

_ID35190( var_0 )
{
    if ( !isdefined( var_0 ) )
        return _ID35081();

    var_1 = _ID16055();

    if ( !var_1.size )
        return [];

    var_2 = [];
    var_3 = _ID47115( self.classname );

    if ( isdefined( level._ID40300[var_3] ) && isdefined( level._ID40300[var_3][var_0] ) )
    {
        var_4 = level._ID40300[var_3][var_0];

        foreach ( var_6 in var_4 )
            var_2[var_2.size] = var_1[var_6];

        var_8 = _ID35029( var_2 );

        for ( var_9 = 0; var_9 < var_4.size; var_9++ )
        {
            if ( isdefined( var_8[var_9] ) )
                var_8[var_9]._ID31455 = var_4[var_9];
        }

        var_8 = _ID42237::_ID3296( var_8, _ID16054() );
        var_8 = _ID34961( var_8 );

        foreach ( var_11 in var_8 )
            thread _ID42412::_ID17557( var_11 );

        return var_8;
    }
    else
        return _ID35081();
}

_ID34961( var_0 )
{
    var_1 = [];
    var_2 = [];

    foreach ( var_4 in var_0 )
    {
        if ( isdefined( var_4._ID31455 ) )
        {
            var_1[var_1.size] = var_4;
            continue;
        }

        var_2[var_2.size] = var_4;
    }

    if ( getdvarint( "enableMW1GetArrayKeysAndForEach" ) != 0 )
        return _ID42237::_ID3296( var_1, var_2 );

    return _ID42237::_ID54589( var_1, var_2 );
}

_ID33077( var_0 )
{
    var_1 = getvehiclenode( var_0.targetname, "target" );

    if ( !isdefined( var_1 ) )
        return;

    var_1._ID10681 = 0;

    if ( _ID42237::_ID14396( "remaster_blockout" ) && !_ID42237::_ID14385( "remaster_blockout" ) )
    {

    }

    _ID1931( var_1 );
}

_ID39215()
{
    var_0 = _ID42412::_ID16049();

    foreach ( var_3, var_2 in self._ID29965 )
    {
        if ( !isalive( var_2 ) )
            continue;

        if ( isdefined( var_0[var_2._ID40222] ) )
            self._ID29965[var_3] = _ID42412::_ID17541( var_2, var_2._ID40222 );
    }
}

_ID1931( var_0 )
{
    if ( isdefined( var_0._ID28668 ) )
        return;

    level._ID40223[level._ID40223.size] = var_0;
    var_0._ID28668 = 1;
}

_ID20802( var_0 )
{
    if ( !isdefined( var_0.target ) )
        return 1;

    if ( !isdefined( getvehiclenode( var_0.target, "targetname" ) ) && !isdefined( _ID16061( var_0.target ) ) )
        return 1;

    return 0;
}

_ID15900( var_0 )
{
    var_1 = ::_ID15749;

    if ( _ID1499() && isdefined( var_0.target ) )
    {
        if ( isdefined( _ID15745( var_0.target ) ) )
            var_1 = ::_ID15745;

        if ( isdefined( _ID15747( var_0.target ) ) )
            var_1 = ::_ID15747;
    }

    return var_1;
}

_ID52551( var_0, var_1, var_2 )
{
    if ( self._ID3577 == var_0 )
    {
        waitframe;
        return;
    }

    var_0 waittillmatch( "trigger",  self  );
}

_ID24877( var_0, var_1, var_2 )
{
    if ( getdvarint( "node_wait_s1", 1 ) )
    {
        _ID50793( var_0, var_1, var_2 );
        return;
    }

    _ID52551( var_0, var_1, var_2 );
}

_ID50793( var_0, var_1, var_2 )
{
    if ( self._ID3577 == var_0 )
    {
        self notify( "node_wait_terminated" );
        waitframe;
        return;
    }

    if ( isdefined( self._ID39468 ) )
        var_3 = "node_wait_triggered" + self._ID39468;
    else
        var_3 = "node_wait_triggered";

    if ( !isdefined( var_0._ID38932 ) || var_0._ID38932 != gettime() )
    {
        var_4 = spawnstruct();
        _ID40935( var_4, var_3, var_0, var_2 );
        var_4 waittill( var_3 );
    }

    var_0._ID38932 = undefined;
}

_ID40935( var_0, var_1, var_2, var_3 )
{
    var_4 = 0;

    for ( var_5 = var_2; isdefined( var_2 ) && var_4 < 3; var_2 = [[ var_3 ]]( var_2.target ) )
    {
        var_4++;
        thread _ID24878( var_0, var_1, var_2 );

        if ( !isdefined( var_2.target ) )
            return;
    }
}

_ID24878( var_0, var_1, var_2 )
{
    self endon( "newpath" );
    self endon( "death" );
    var_0 endon( var_1 );
    var_2 waittillmatch( "trigger",  self  );
    var_2._ID38932 = gettime();
    waitframe;
    var_0 notify( var_1 );
}

_ID40220( var_0 )
{
    self notify( "newpath" );

    if ( isdefined( var_0 ) )
        self._ID3577 = var_0;

    var_1 = self._ID3577;
    self._ID9504 = self._ID3577;

    if ( !isdefined( var_1 ) )
        return;

    self endon( "newpath" );
    self endon( "death" );
    var_2 = var_1;
    var_3 = undefined;
    var_4 = var_1;
    var_5 = _ID15900( var_1 );

    while ( isdefined( var_4 ) )
    {
        if ( isdefined( var_4.script_vehicle_anim ) )
            _ID48966();

        _ID24877( var_4, var_3, var_5 );

        if ( !isdefined( self ) )
            return;

        if ( isdefined( var_4._ID25927 ) )
            level thread _ID38873( var_4, self );

        self._ID9504 = var_4;

        if ( isdefined( var_4.script_vehicle_anim ) )
        {
            _ID45756( var_4 );
            break;
        }

        if ( isdefined( var_4._ID43356 ) )
            _ID42475::_ID34575( var_4._ID43356, self );

        if ( isdefined( var_4._ID15454 ) && !var_4._ID15454 )
            thread _ID26312( var_4 );

        if ( isdefined( var_4._ID46421 ) )
            thread _ID42411::_ID46093( var_4._ID46421 );

        if ( isdefined( var_4._ID54467 ) )
            thread _ID42411::_ID45794( var_4._ID54467 );

        if ( isdefined( var_4.script_noteworthy ) )
        {
            self notify( var_4.script_noteworthy );
            self notify( "noteworthy",  var_4.script_noteworthy  );
        }

        waitframe;

        if ( !isdefined( self ) )
            return;

        if ( isdefined( var_4._ID31401 ) )
        {
            var_4._ID31170 = var_4._ID31401;
            var_4._ID31401 = undefined;
        }

        if ( isdefined( var_4._ID31170 ) )
        {
            var_6 = var_4._ID31171;

            if ( isdefined( var_6 ) )
                level _ID42407::_ID10226( var_6, _ID42234::_ID13611, var_4._ID31170 );
            else
                level _ID42234::_ID13611( var_4._ID31170 );
        }

        if ( isdefined( var_4._ID31195 ) )
        {
            if ( isdefined( self._ID45344 ) )
                self._ID45344[var_4._ID31195] = 1;

            self notify( "vehicle_flag_arrived",  var_4._ID31195  );
            _ID42237::_ID14402( var_4._ID31195 );
        }

        if ( isdefined( var_4._ID31167 ) )
            _ID42407::_ID13025( var_4._ID31167 );

        if ( isdefined( var_4._ID31166 ) )
            _ID42407::_ID13021( var_4._ID31166 );

        if ( isdefined( var_4._ID31191 ) )
            _ID42237::_ID14388( var_4._ID31191 );

        if ( isdefined( var_4.script_noteworthy ) )
        {
            if ( var_4.script_noteworthy == "kill" || var_4.script_noteworthy == "forcekill" )
                _ID1458();

            if ( var_4.script_noteworthy == "godon" )
                self._ID16986 = 1;

            if ( var_4.script_noteworthy == "godoff" )
                self._ID16986 = 0;

            if ( var_4.script_noteworthy == "deleteme" )
            {
                level thread _ID42407::_ID10321( self );
                return;
            }

            if ( var_4.script_noteworthy == "engineoff" )
                self vehicle_turnengineoff();
        }

        if ( isdefined( var_4._ID31107 ) )
            self._ID31107 = var_4._ID31107;

        if ( isdefined( var_4._ID31066 ) )
            self._ID31066 = var_4._ID31066;

        if ( isdefined( var_4._ID31495 ) )
        {
            if ( var_4._ID31495 )
                _ID1523();
            else
                _ID1522();
        }

        if ( isdefined( var_4._ID31474 ) )
            self._ID31474 = var_4._ID31474;

        if ( isdefined( var_4._ID31489 ) )
            self notify( "turning",  var_4._ID31489  );

        if ( isdefined( var_4._ID31116 ) )
        {
            if ( var_4._ID31116 == 0 )
                thread _ID9832();
            else
                thread _ID9833();
        }

        if ( isdefined( var_4._ID31508 ) )
        {
            if ( isdefined( var_4._ID31388 ) && var_4._ID31388 == "queue" )
                self._ID28826 = 1;

            if ( isdefined( var_4._ID31455 ) )
                self._ID17471 = var_4._ID31455;

            thread _ID42411::_ID40066( var_4._ID31508 );
        }

        if ( isdefined( var_4._ID31527 ) )
            _ID41730( var_4._ID31527 );

        if ( _ID40255( ::_ID24877, var_4 ) )
            thread _ID39493( var_4 );

        if ( isdefined( var_4._ID31485 ) )
        {
            self.veh_transmission = var_4._ID31485;

            if ( self.veh_transmission == "forward" )
                _ID41730( 1 );
            else
                _ID41730( 0 );
        }

        if ( isdefined( var_4._ID31077 ) )
            self.veh_brake = var_4._ID31077;

        if ( isdefined( var_4._ID31390 ) )
            self.veh_pathtype = var_4._ID31390;

        if ( isdefined( var_4._ID31168 ) )
        {
            var_7 = 35;

            if ( isdefined( var_4._ID31118 ) )
                var_7 = var_4._ID31118;

            self vehicle_setspeed( 0, var_7 );
            _ID42407::_ID13027( var_4._ID31168 );

            if ( !isdefined( self ) )
                return;

            var_8 = 60;

            if ( isdefined( var_4._ID31020 ) )
                var_8 = var_4._ID31020;

            self resumespeed( var_8 );
        }

        if ( isdefined( var_4._ID916 ) )
        {
            var_7 = 35;

            if ( isdefined( var_4._ID31118 ) )
                var_7 = var_4._ID31118;

            self vehicle_setspeed( 0, var_7 );

            if ( isdefined( var_4.target ) )
                thread _ID26160( [[ var_5 ]]( var_4.target ) );

            var_4 _ID42407::_ID916();
            self notify( "delay_passed" );
            var_8 = 60;

            if ( isdefined( var_4._ID31020 ) )
                var_8 = var_4._ID31020;

            self resumespeed( var_8 );
        }

        if ( isdefined( var_4._ID31197 ) )
        {
            if ( !isdefined( self._ID45344 ) )
                self._ID45344 = [];

            self._ID45344[var_4._ID31197] = 1;
            self notify( "vehicle_flag_arrived",  var_4._ID31197  );

            if ( !_ID42237::_ID14385( var_4._ID31197 ) || isdefined( var_4._ID31122 ) )
            {
                var_7 = 35;

                if ( isdefined( var_4._ID31118 ) )
                    var_7 = var_4._ID31118;

                self vehicle_setspeed( 0, var_7 );

                if ( isdefined( var_4.target ) )
                    thread _ID26160( [[ var_5 ]]( var_4.target ) );
            }

            _ID42237::_ID14413( var_4._ID31197 );

            if ( isdefined( var_4._ID31122 ) )
                wait(var_4._ID31122);

            var_8 = 10;

            if ( isdefined( var_4._ID31020 ) )
                var_8 = var_4._ID31020;

            self resumespeed( var_8 );
            self notify( "delay_passed" );
        }

        if ( isdefined( self._ID32369 ) )
        {
            self._ID32369 = undefined;
            self clearlookatent();
        }

        if ( isdefined( var_4._ID31503 ) )
            thread _ID22345( var_4._ID31503 );

        if ( isdefined( var_4._ID31504 ) )
            thread _ID22347( var_4._ID31504 );

        if ( isdefined( var_4._ID31209 ) )
            thread _ID40242( var_4._ID31209 );

        var_3 = var_4;

        if ( !isdefined( var_4.target ) )
            break;

        var_4 = [[ var_5 ]]( var_4.target );

        if ( !isdefined( var_4 ) )
        {
            var_4 = var_3;
            break;
            continue;
        }

        if ( _ID20802( var_4 ) || isdefined( var_4._ID31497 ) )
        {
            var_9 = max( 0.01, length( self vehicle_getvelocity() ) );
            var_10 = distance( self.origin, var_4.origin );
            var_11 = max( 0.01, var_10 / var_9 );
            self notify( "about_to_stop",  var_11  );
        }
    }

    if ( isdefined( var_4._ID31266 ) )
        thread _ID1675();

    self notify( "reached_dynamic_path_end" );

    if ( isdefined( self._ID31507 ) )
    {
        self notify( "delete" );
        self delete();
    }
}

_ID40219( var_0, var_1, var_2 )
{
    self notify( "newpath" );
    self endon( "newpath" );
    self endon( "death" );

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( isdefined( var_0 ) )
        self._ID3577 = var_0;

    var_3 = self._ID3577;
    self._ID9504 = self._ID3577;

    if ( !isdefined( var_3 ) )
        return;

    var_4 = var_3;

    if ( var_1 )
        self waittill( "start_dynamicpath" );

    if ( isdefined( var_2 ) )
    {
        var_5 = spawnstruct();
        var_5.origin = _ID42407::_ID1989( self.origin, var_2 );
        _ID18436( var_5, undefined );
    }

    var_6 = undefined;
    var_7 = var_3;
    var_8 = _ID15900( var_3 );

    while ( isdefined( var_7 ) )
    {
        if ( isdefined( var_7._ID31273 ) )
            _ID32368( var_7 );

        _ID18436( var_7, var_6 );

        if ( !isdefined( self ) )
            return;

        self._ID9504 = var_7;

        if ( isdefined( var_7._ID15454 ) && !var_7._ID15454 )
            thread _ID26312( var_7 );

        var_7 notify( "trigger",  self  );

        if ( isdefined( var_7._ID43356 ) )
            _ID42475::_ID34575( var_7._ID43356, self );

        if ( isdefined( var_7._ID46421 ) )
            thread _ID42411::_ID46093( var_7._ID46421 );

        if ( isdefined( var_7._ID54467 ) )
            thread _ID42411::_ID45794( var_7._ID54467 );

        if ( isdefined( var_7._ID31248 ) )
            _ID42411::_ID45813( var_7._ID31248 );

        if ( isdefined( var_7.script_noteworthy ) )
        {
            self notify( var_7.script_noteworthy );
            self notify( "noteworthy",  var_7.script_noteworthy  );
        }

        waitframe;

        if ( !isdefined( self ) )
            return;

        if ( isdefined( var_7._ID31401 ) )
        {
            var_7._ID31170 = var_7._ID31401;
            var_7._ID31401 = undefined;
        }

        if ( isdefined( var_7._ID31170 ) )
        {
            var_9 = var_7._ID31171;

            if ( isdefined( var_9 ) )
                level _ID42407::_ID10226( var_9, _ID42234::_ID13611, var_7._ID31170 );
            else
                level _ID42234::_ID13611( var_7._ID31170 );
        }

        if ( isdefined( var_7._ID31195 ) )
        {
            if ( isdefined( self._ID45344 ) )
                self._ID45344[var_7._ID31195] = 1;

            self notify( "vehicle_flag_arrived",  var_7._ID31195  );
            _ID42237::_ID14402( var_7._ID31195 );
        }

        if ( isdefined( var_7._ID31167 ) )
            _ID42407::_ID13025( var_7._ID31167 );

        if ( isdefined( var_7._ID31166 ) )
            _ID42407::_ID13021( var_7._ID31166 );

        if ( isdefined( var_7._ID31191 ) )
        {
            if ( isdefined( self._ID45344 ) )
                self._ID45344[var_7._ID31191] = 0;

            _ID42237::_ID14388( var_7._ID31191 );
        }

        if ( isdefined( var_7.script_noteworthy ) )
        {
            if ( var_7.script_noteworthy == "kill" || var_7.script_noteworthy == "forcekill" )
                _ID1458();

            if ( var_7.script_noteworthy == "godon" )
                self._ID16986 = 1;

            if ( var_7.script_noteworthy == "godoff" )
                self._ID16986 = 0;

            if ( var_7.script_noteworthy == "deleteme" )
            {
                level thread _ID42407::_ID10321( self );
                return;
            }

            if ( var_7.script_noteworthy == "engineoff" )
                self vehicle_turnengineoff();
        }

        if ( isdefined( var_7._ID31107 ) )
            self._ID31107 = var_7._ID31107;

        if ( isdefined( var_7._ID31066 ) )
            self._ID31066 = var_7._ID31066;

        if ( isdefined( var_7._ID31495 ) )
        {
            if ( var_7._ID31495 )
                _ID1523();
            else
                _ID1522();
        }

        if ( isdefined( var_7._ID31474 ) )
            self._ID31474 = var_7._ID31474;

        if ( isdefined( var_7._ID31489 ) )
            self notify( "turning",  var_7._ID31489  );

        if ( isdefined( var_7._ID31116 ) )
        {
            if ( var_7._ID31116 == 0 )
                thread _ID9832();
            else
                thread _ID9833();
        }

        if ( isdefined( var_7._ID31508 ) )
        {
            if ( isdefined( var_7._ID31388 ) && var_7._ID31388 == "queue" )
                self._ID28826 = 1;
        }

        if ( isdefined( var_7._ID31527 ) )
            _ID41730( var_7._ID31527 );

        if ( _ID40255( ::_ID18436, var_7 ) )
            thread _ID39493( var_7 );

        if ( self vehicle_isphysveh() )
        {
            if ( isdefined( var_7._ID31485 ) )
            {
                self.veh_transmission = var_7._ID31485;

                if ( self.veh_transmission == "forward" )
                    _ID41730( 1 );
                else
                    _ID41730( 0 );
            }

            if ( isdefined( var_7._ID31390 ) )
                self.veh_pathtype = var_7._ID31390;
        }

        if ( isdefined( var_7._ID31197 ) )
        {
            if ( !isdefined( self._ID45344 ) )
                self._ID45344 = [];

            self._ID45344[var_7._ID31197] = 1;
            self notify( "vehicle_flag_arrived",  var_7._ID31197  );
            _ID42237::_ID14413( var_7._ID31197 );

            if ( isdefined( var_7._ID31122 ) )
                wait(var_7._ID31122);

            self notify( "delay_passed" );
        }

        if ( isdefined( self._ID32369 ) )
        {
            self._ID32369 = undefined;
            self clearlookatent();
        }

        if ( isdefined( var_7._ID31503 ) )
            thread _ID22345( var_7._ID31503 );

        if ( isdefined( var_7._ID31504 ) )
            thread _ID22347( var_7._ID31504 );

        if ( isdefined( var_7._ID31209 ) )
            thread _ID40242( var_7._ID31209 );

        var_6 = var_7;

        if ( !isdefined( var_7.target ) )
            break;

        var_7 = [[ var_8 ]]( var_7.target );

        if ( !isdefined( var_7 ) )
        {
            var_7 = var_6;
            break;
        }
    }

    if ( isdefined( var_7._ID31266 ) )
        thread _ID1675();

    self notify( "reached_dynamic_path_end" );

    if ( isdefined( self._ID31507 ) )
        self delete();
}

_ID40255( var_0, var_1 )
{
    if ( isdefined( var_1._ID31497 ) )
        return 1;

    if ( var_0 != ::_ID24877 )
        return 0;

    if ( !_ID20802( var_1 ) )
        return 0;

    if ( isdefined( self._ID11584 ) )
        return 0;

    if ( self._ID1282 == "empty" )
        return 0;

    return !_ID20606();
}

_ID26160( var_0 )
{

}

_ID20606()
{
    if ( !isdefined( self._ID31507 ) )
        return 0;

    return self._ID31507;
}

_ID52238( var_0 )
{
    if ( isdefined( var_0._ID31497 ) )
        return 1;

    if ( isdefined( var_0._ID916 ) )
        return 1;

    return isdefined( var_0._ID31197 ) && !_ID42237::_ID14385( var_0._ID31197 );
}

_ID18436( var_0, var_1 )
{
    self endon( "newpath" );

    if ( isdefined( var_0._ID31497 ) && isdefined( self._ID13954 ) )
    {
        var_0.radius = 2;
        var_2 = _ID42407::_ID17434( var_0.origin ) + ( 0, 0, self._ID13954 );

        if ( var_2[2] > var_0.origin[2] - 2000 )
            var_0.origin = _ID42407::_ID17434( var_0.origin ) + ( 0, 0, self._ID13954 );

        self sethoverparams( 0, 0, 0 );
    }

    if ( isdefined( var_1 ) )
    {
        if ( isdefined( var_1._ID31026 ) )
            self setairresitance( var_1._ID31026 );

        if ( isdefined( var_1.speed ) )
        {
            var_3 = var_1.speed;
            var_4 = 25;
            var_5 = undefined;

            if ( isdefined( var_1._ID31118 ) )
                var_5 = var_1._ID31118;
            else if ( _ID52238( var_0 ) )
            {

            }

            if ( isdefined( var_1._ID31020 ) )
                var_4 = var_1._ID31020;
            else
            {
                var_6 = var_3 / 4;

                if ( var_4 > var_6 )
                    var_4 = var_6;

                if ( var_4 < 15 )
                    var_4 = 15;
            }

            if ( isdefined( var_5 ) )
                self vehicle_setspeed( var_3, var_4, var_5 );
            else
                self vehicle_setspeed( var_3, var_4 );
        }
        else if ( _ID52238( var_0 ) )
        {

        }
    }

    _ID43156( var_0 );

    if ( isdefined( var_0.radius ) )
    {
        self neargoalnotifydist( var_0.radius );
        _ID42237::_ID41068( "near_goal", "goal" );
    }
    else
        self waittill( "goal" );

    if ( isdefined( var_0._ID31186 ) )
        thread _ID42306::_ID18369( var_0 );

    if ( isdefined( var_0._ID31464 ) )
    {
        if ( var_0._ID31464 )
            self notify( "reached_stop_node" );

        var_0 _ID42407::_ID916();
    }

    var_0 _ID42407::_ID916();
}

_ID47444( var_0, var_1, var_2 )
{
    self setairresitance( 30 );
    self vehicle_setspeed( var_1, var_2, 10 );
    _ID42411::_ID40218( _ID42237::_ID16638( var_0, "targetname" ) );
}

_ID43156( var_0 )
{
    self endon( "death" );
    var_1 = 0;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( isdefined( var_0._ID31464 ) )
        var_1 = var_0._ID31464;

    if ( isdefined( var_0._ID31497 ) )
        var_1 = 1;

    var_2 = isdefined( var_0._ID31038 ) && var_0._ID31038;
    var_3 = isdefined( var_0._ID31239 ) && var_0._ID31239;

    if ( isdefined( var_0._ID31038 ) || isdefined( var_0._ID31239 ) )
        _ID14801( var_0, var_3, var_2 );
    else
        _ID52674();

    if ( isdefined( var_0._ID31197 ) )
    {
        if ( !_ID42237::_ID14385( var_0._ID31197 ) )
            var_1 = 1;
    }

    if ( !isdefined( var_0.target ) )
        var_1 = 1;
    else if ( isdefined( var_0._ID916 ) )
        var_1 = 1;

    _ID33617( var_0.origin, var_1 );
}

_ID14801( var_0, var_1, var_2 )
{
    if ( var_1 )
    {
        self cleartargetyaw();
        self setgoalyaw( var_0.angles[1] );
    }
    else
    {
        self cleargoalyaw();
        self settargetyaw( var_0.angles[1] );
    }
}

_ID52674()
{
    self cleargoalyaw();
    self cleartargetyaw();
}

_ID26311( var_0 )
{
    var_0._ID15454 = 1;
    var_0 notify( "gate opened" );
}

_ID26312( var_0 )
{
    self endon( "death" );
    self._ID41034 = 1;
    _ID1679( "path_gate_wait_till_open", 15, 15 );
    var_0 waittill( "gate opened" );
    self._ID41034 = 0;

    if ( self.health > 0 )
    {
        self endon( "death" );

        if ( isdefined( self._ID41034 ) && self._ID41034 )
            return;

        _ID1677( "path_gate_wait_till_open" );
    }
}

_ID29583()
{
    wait 0.05;
    self._ID40263 = undefined;
}

_ID40173( var_0 )
{
    var_1 = var_0 _ID47115( var_0.classname );

    if ( isdefined( level._ID40166[var_1] ) )
    {
        foreach ( var_3 in level._ID40166[var_1] )
            var_0 hidepart( var_3 );
    }

    if ( var_0._ID1282 == "empty" )
    {
        var_0 thread _ID16485();
        return;
    }

    var_0 _ID42407::_ID32184();

    if ( !isdefined( var_0._ID23876 ) )
        var_0._ID23876 = 0;

    var_5 = var_0._ID1282;
    var_0 _ID40188();
    var_0 _ID40250();

    if ( !isdefined( level._ID40313[var_0._ID1282][var_1] ) )
        return;

    var_0 thread [[ level._ID40313[var_0._ID1282][var_1] ]]();
    var_0 thread _ID22795();
    var_0 thread _ID28133();

    if ( !isdefined( var_0._ID31063 ) )
        var_0._ID31063 = 0;

    if ( isdefined( level._ID40122 ) )
    {
        if ( level._ID40122 )
            var_0 thermaldrawenable();
    }

    var_0 _ID42407::_ID13024( "unloaded" );
    var_0 _ID42407::_ID13024( "loaded" );
    var_0._ID29965 = [];
    var_0._ID39495 = [];
    var_0._ID39487 = "default";
    var_0._ID13955 = [];

    if ( isdefined( level._ID40080 ) && isdefined( level._ID40080[var_1] ) )
    {
        var_6 = level._ID40080[var_1];
        var_7 = getarraykeys( var_6 );

        foreach ( var_9 in var_7 )
        {
            if ( issubstr( tolower( var_9 ), "fastrope" ) )
            {
                var_0._ID13955[var_9] = undefined;
                var_0._ID13956[var_9] = 0;
                continue;
            }

            if ( issubstr( tolower( var_9 ), "attach" ) )
                var_0 _ID45322( var_6[var_9] );
        }
    }

    var_0 thread _ID40082();

    if ( isdefined( var_0._ID31504 ) )
        var_0 thread _ID22347( var_0._ID31504 );

    if ( isdefined( var_0._ID31241 ) )
        var_0._ID16986 = 1;

    var_0._ID9601 = [];

    if ( !var_0 _ID20706() || var_0 _ID20707() )
        var_0 thread _ID15010();

    var_0 thread _ID42412::_ID17698();

    if ( isdefined( var_0._ID31217 ) )
        var_0 setvehiclelookattext( var_0._ID31217, &"" );

    if ( !var_0 _ID20706() )
        var_0 thread _ID40160();

    if ( isdefined( var_0._ID31150 ) )
        var_0._ID11584 = 1;

    var_0 thread _ID52574();

    if ( !var_0 _ID20706() )
        var_0 thread _ID40252();

    var_0 thread _ID40239();

    if ( isdefined( var_0._ID31396 ) && var_0._ID31396 )
        var_0 thread _ID42407::_ID26629();

    var_0 thread _ID40285();
    var_0 thread _ID19308();
    var_0 thread _ID3160();

    if ( isdefined( var_0._ID31114 ) )
        var_0 thread _ID42372::_ID40112();

    if ( !var_0 _ID20706() )
        var_0 thread _ID23507();

    if ( isdefined( level._ID40320 ) )
        level thread [[ level._ID40320 ]]( var_0 );

    _ID40187( var_0 );

    if ( isdefined( var_0._ID31474 ) )
        var_0 setvehicleteam( var_0._ID31474 );

    if ( !var_0 _ID20706() )
        var_0 thread _ID11064();

    var_0 thread _ID16485();

    if ( isdefined( level._ID19391 ) )
        var_11 = level._ID19391;
    else
        var_11 = 0;

    if ( var_0 _ID18226() && !var_11 )
        var_0 thread _ID2456();

    if ( var_0 vehicle_isphysveh() )
    {
        if ( isdefined( var_0._ID31390 ) )
            var_0.veh_pathtype = var_0._ID31390;
    }

    var_0 _ID35081();
    var_0 thread _ID40177();
    var_0 _ID3243();
}

_ID20707()
{
    return isdefined( level._ID7343 ) && level._ID7343;
}

_ID21254( var_0 )
{
    if ( !isdefined( level._ID40109 ) || !isdefined( level._ID40109[var_0] ) )
        return;

    if ( isdefined( self._ID9819 ) )
        var_1 = self._ID9819;
    else
        var_1 = level._ID40109[var_0]._ID23085;

    if ( isdefined( self._ID9820 ) )
        var_2 = self._ID9820;
    else
        var_2 = level._ID40109[var_0]._ID23619;

    if ( isdefined( level._ID40109[var_0]._ID10179 ) )
        wait(level._ID40109[var_0]._ID10179);

    if ( !isdefined( self ) )
        return;

    if ( level._ID40109[var_0]._ID5259 )
        level.player enablehealthshield( 0 );

    self radiusdamage( self.origin + level._ID40109[var_0]._ID25468, level._ID40109[var_0]._ID28980, var_1, var_2, self );

    if ( level._ID40109[var_0]._ID5259 )
        level.player enablehealthshield( 1 );
}

_ID40179( var_0, var_1 )
{
    var_2 = self._ID1282;
    var_3 = self.classname;
    var_4 = self.model;
    var_5 = self.targetname;
    thread _ID21254( var_3 );
    thread _ID21246( var_3 );
    thread _ID21282( var_3 );
    _ID42412::_ID10250();
    var_6 = _ID46806( var_3 );

    if ( isdefined( var_6 ) && isdefined( var_6._ID47084 ) && var_6._ID47084 )
    {
        var_7 = "body_animate_jnt";
        _ID42411::_ID40283( var_7, 0 );
    }

    if ( isdefined( level._ID40113[var_3] ) )
        thread _ID32264( level._ID40113[var_3], level._ID40114[var_3] );
    else if ( isdefined( level._ID40113[var_4] ) )
        thread _ID32264( level._ID40113[var_4], level._ID40114[var_4] );

    var_8 = _ID40253( var_4, var_0, var_1 );
    thread _ID49431( var_3, var_0 );
    thread _ID1501( var_4, var_8 );

    if ( self.code_classname == "script_vehicle" )
        thread _ID21278( var_3 );

    return var_8;
}

_ID40177()
{
    self endon( "nodeath_thread" );
    var_0 = self._ID1282;
    var_1 = self.classname;
    var_2 = self.model;
    var_3 = self.targetname;
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;
    var_7 = 0;

    for (;;)
    {
        if ( isdefined( self ) )
            self waittill( "death",  var_4, var_5, var_6  );

        if ( isdefined( self._ID9535 ) )
            self thread [[ self._ID9535 ]]();

        if ( !var_7 )
        {
            var_7 = 1;

            if ( isdefined( var_4 ) && isdefined( var_5 ) )
            {
                var_4 _ID42354::_ID29410( self, var_5, var_6 );

                if ( isdefined( self._ID9615 ) )
                    self._ID9615 = undefined;
            }
        }

        self notify( "clear_c4" );

        if ( isdefined( self._ID30373 ) )
            self._ID30373 delete();

        if ( isdefined( self._ID23512 ) )
        {
            _ID42237::_ID3315( self._ID23512, ::_ID39256 );
            self._ID23512 = undefined;
        }

        if ( isdefined( self._ID31474 ) )
            level._ID40317[self._ID31474] = _ID42237::_ID3321( level._ID40317[self._ID31474], self );

        if ( isdefined( self.script_linkname ) )
            level._ID40198[self.script_linkname] = _ID42237::_ID3321( level._ID40198[self.script_linkname], self );

        if ( isdefined( self._ID31518 ) )
            level._ID40268[self._ID31518] = _ID42237::_ID3321( level._ID40268[self._ID31518], self );

        if ( isdefined( self._ID31514 ) )
            level._ID40117[self._ID31514] = _ID42237::_ID3321( level._ID40117[self._ID31514], self );

        if ( isdefined( self._ID23875 ) )
            self._ID23875 thread _ID22345( "all", var_1 );

        if ( !isdefined( self ) && isdefined( self._ID43838 ) )
        {
            foreach ( var_2 in self._ID43838 )
                var_2 delete();
        }

        if ( !isdefined( self ) || _ID20497() )
        {
            if ( isdefined( self._ID29965 ) )
            {
                foreach ( var_11 in self._ID29965 )
                {
                    if ( isdefined( var_11 ) )
                        var_11 delete();
                }
            }

            if ( _ID20497() )
            {
                self._ID29965 = [];
                continue;
            }

            self notify( "delete_destructible" );
            return;
        }

        var_13 = undefined;

        if ( isdefined( self._ID40241 ) )
            var_13 = self._ID40241;
        else if ( isdefined( level._ID40240 ) && isdefined( level._ID40240[var_1] ) )
            var_13 = level._ID40240;
        else if ( isdefined( level._ID40239[var_1] ) )
            var_13 = level._ID40239[var_1];

        if ( isdefined( var_13 ) )
            self _meth_80b6( var_13._ID30328 );

        if ( isdefined( level._ID40110 ) && isdefined( var_0 ) && isdefined( level._ID40110[var_0] ) )
            thread [[ level._ID40110[var_0] ]]();

        if ( isdefined( var_0 ) && isdefined( _ID42412::_ID17607 ) && isdefined( self._ID29965 ) )
            _ID42237::_ID3315( self._ID29965, _ID42412::_ID17607, var_4, var_0 );

        var_14 = _ID40179( var_4, var_5 );

        if ( isdefined( self._ID10280 ) )
        {
            wait 0.05;

            if ( !isdefined( self._ID11571 ) && !self vehicle_isphysveh() )
                self disconnectpaths();

            _ID1459();
            wait 0.05;
            _ID40134( var_2 );
            self delete();
            continue;
        }

        if ( isdefined( self._ID14872 ) )
        {
            self notify( "newpath" );

            if ( !isdefined( self._ID11571 ) )
                self disconnectpaths();

            _ID40178();
            _ID1459();
            return;
        }

        _ID40121( var_2, var_4, var_5, var_14 );

        if ( !isdefined( self ) )
            return;

        if ( isdefined( level._ID40105[var_1] ) )
            earthquake( level._ID40105[var_1]._ID30768, level._ID40105[var_1]._ID310, self.origin, level._ID40105[var_1].radius );

        wait 0.5;

        if ( _ID20497() )
            continue;

        if ( isdefined( self ) )
        {
            while ( isdefined( self._ID11576 ) && isdefined( self ) )
                wait 0.05;

            if ( !isdefined( self ) )
                continue;

            if ( self vehicle_isphysveh() )
            {
                while ( isdefined( self ) && self.veh_speed != 0 )
                    wait 1;

                if ( !isdefined( self ) )
                    return;

                self disconnectpaths();
                self notify( "kill_badplace_forever" );
                self kill();
                self notify( "newpath" );
                self vehicle_turnengineoff();
                return;
            }
            else
                _ID1459();

            if ( self._ID23876 )
                self hide();
        }

        if ( _ID1674() )
        {
            self delete();
            continue;
        }
    }
}

_ID1459()
{
    self notify( "newpath" );
    self freevehicle();
    _ID42407::_ID10226( 0.05, ::_ID13733 );
}

_ID13733()
{
    self.accuracy = undefined;
    self._ID3575 = undefined;
    self._ID3626 = undefined;
    self._ID4718 = undefined;
    self._ID4719 = undefined;
    self._ID9497 = undefined;
    self._ID9504 = undefined;
    self._ID9601 = undefined;
    self._ID10217 = undefined;
    self._ID13955 = undefined;
    self._ID16346 = undefined;
    self._ID18249 = undefined;
    self._ID18313 = undefined;
    self._ID25477 = undefined;
    self._ID25478 = undefined;
    self._ID30065 = undefined;
    self._ID30330 = undefined;
    self._ID30332 = undefined;
    self._ID30352 = undefined;
    self._ID31043 = undefined;
    self._ID31063 = undefined;
    self._ID31043 = undefined;
    self._ID31063 = undefined;
    self._ID31080 = undefined;
    self._ID31139 = undefined;
    self.script_linkname = undefined;
    self._ID31353 = undefined;
    self._ID31474 = undefined;
    self._ID31490 = undefined;
    self._ID31495 = undefined;
    self._ID31516 = undefined;
    self._ID31517 = undefined;
    self._ID31518 = undefined;
    self._ID33857 = undefined;
    self._ID33869 = undefined;
    self._ID35073 = undefined;
    self._ID35075 = undefined;
    self._ID37234 = undefined;
    self.target = undefined;
    self._ID37298 = undefined;
    self._ID38953 = undefined;
    self._ID38953 = undefined;
    self._ID38954 = undefined;
    self._ID39250 = undefined;
    self._ID39251 = undefined;
    self._ID39252 = undefined;
    self._ID4715 = undefined;
    self._ID3577 = undefined;
    self._ID4715 = undefined;
    self._ID30356 = undefined;
    self._ID30359 = undefined;
    self._ID30366 = undefined;
    self._ID30373 = undefined;
    self._ID30439 = undefined;
    self._ID31364 = undefined;
    self._ID31454 = undefined;
    self._ID37470 = undefined;
    self._ID39252 = undefined;
    self._ID39338 = undefined;
    self._ID39339 = undefined;
    self._ID39348 = undefined;
    self._ID39353 = undefined;
    self._ID39354 = undefined;
    self._ID39468 = undefined;
    self._ID39487 = undefined;
    self._ID39495 = undefined;
    self._ID39936 = undefined;
    self._ID40264 = undefined;
    self._ID41034 = undefined;
    self._ID41609 = undefined;
    self._ID41611 = undefined;
    self._ID25480 = undefined;
    self._ID31023 = undefined;
    self._ID41611 = undefined;
    self._ID41729 = undefined;
    self._ID11584 = undefined;
    self._ID11571 = undefined;
    self._ID31241 = undefined;
    self._ID13019 = undefined;
    self._ID13703 = undefined;
    self._ID16986 = undefined;
    self._ID1282 = undefined;
    self._ID40271 = undefined;
    self._ID12527 = undefined;
    self._ID37899 = undefined;
    self._ID10130 = undefined;
    self._ID31066 = undefined;
    self._ID41610 = undefined;
    self._ID47279 = undefined;
    self._ID48402 = undefined;
}

_ID1674()
{
    return isdefined( self._ID9056 ) && self._ID9056 == 1;
}
#using_animtree("vehicles");

_ID40134( var_0 )
{
    if ( isdefined( self._ID11555 ) && self._ID11555 )
        return;

    self notify( "death_finished" );

    if ( !isdefined( self ) )
        return;

    self useanimtree( #animtree );

    if ( isdefined( level._ID40123[var_0] ) )
        self clearanim( level._ID40123[var_0], 0 );

    if ( isdefined( level._ID40126[var_0] ) )
        self clearanim( level._ID40126[var_0], 0 );
}

_ID40253( var_0, var_1, var_2 )
{
    if ( !isdefined( self._ID2831 ) || self._ID2831 == 0 )
    {
        if ( isdefined( self._ID12571 ) && self._ID12571 == 0 )
            return 0;

        if ( !isdefined( var_2 ) )
            return 0;

        if ( !( var_2 == "MOD_PROJECTILE" || var_2 == "MOD_PROJECTILE_SPLASH" ) )
            return 0;
    }

    if ( isdefined( self._ID20483 ) && self._ID20483 )
        return 1;

    return _ID40161( var_0 );
}

_ID40161( var_0 )
{
    return isdefined( level._ID40106["rocket_death" + self.classname] ) && isdefined( self._ID12571 ) && self._ID12571 == 1;
}

_ID40121( var_0, var_1, var_2, var_3 )
{
    var_4 = "tank";

    if ( isdefined( self._ID31107 ) )
        var_4 = self._ID31107;
    else if ( self vehicle_isphysveh() )
        var_4 = "physics";
    else if ( _ID1499() )
        var_4 = "helicopter";
    else if ( isdefined( self._ID9504 ) && _ID9000( self._ID9504 ) )
        var_4 = "none";

    switch ( var_4 )
    {
        case "helicopter":
            _ID43974( var_1, var_2, var_3 );
            break;
        case "tank":
            _ID47682();
            break;
        case "diveboat":
            _ID45221();
            break;
        case "physics":
            _ID47631();
            break;
    }

    if ( isdefined( level._ID40163[var_0] ) && level._ID40163[var_0] )
        self clearturrettargetent();

    if ( _ID1499() )
    {
        if ( isdefined( self._ID9056 ) && self._ID9056 == 1 )
            self waittill( "crash_done" );
    }
    else
    {
        while ( !_ID20497() && isdefined( self ) && self vehicle_getspeed() > 0 )
            wait 0.1;
    }

    self notify( "stop_looping_death_fx" );
    _ID40134( var_0 );

    if ( isdefined( self.disconnectpathsondeathfinished ) )
        self disconnectpaths();
}

_ID50428()
{
    if ( _ID42407::_ID13023( "kill_deathanim_active" ) )
        _ID42407::_ID13031( "kill_deathanim_active" );

    if ( _ID42407::_ID13023( "kill_deathanim_force_crash_end" ) )
        return _ID42407::_ID13019( "kill_deathanim_force_crash_end" );

    return 0;
}

_ID43974( var_0, var_1, var_2 )
{
    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
    {
        self._ID1763 = var_0;
        thread _ID42407::_ID54515( self.origin, "explosive", 1000 );
    }

    self._ID9056 = 1;

    if ( !isdefined( self ) )
        return;

    _ID10618();

    if ( isdefined( var_0 ) && var_0 == level.player && isdefined( self._ID30065 ) && level.player _ID45026( "rpg" ) )
        _ID42407::_ID16864( "BIRD_ON_THE_GROUND" );

    if ( _ID50428() )
    {
        self._ID9056 = 0;
        self notify( "crash_done" );
        return;
    }

    if ( var_2 )
        return;

    thread _ID18442( var_0, var_1 );
}

_ID47682()
{
    if ( _ID50428() )
        return;

    if ( !isdefined( self._ID30113 ) )
        self vehicle_setspeed( 0, 25 );
    else
    {
        self vehicle_setspeed( 8, 25 );
        self waittill( "deathrolloff" );
        self vehicle_setspeed( 0, 25 );
    }

    self notify( "deadstop" );

    if ( !isdefined( self._ID11571 ) )
        self disconnectpaths();

    if ( isdefined( self._ID37267 ) && self._ID37267 > 0 )
        self waittill( "animsdone" );
}

_ID45221()
{
    if ( _ID50428() )
        return;

    if ( !isdefined( self._ID11571 ) )
        self disconnectpaths();
}

_ID47631()
{
    if ( _ID50428() )
        return;

    self vehphys_crash();
    self notify( "deadstop" );

    if ( !isdefined( self._ID11571 ) )
        self disconnectpaths();

    if ( isdefined( self._ID37267 ) && self._ID37267 > 0 )
        self waittill( "animsdone" );
}

_ID20497()
{
    var_0 = 0;

    if ( isdefined( self ) && self.classname == "script_vehicle_corpse" )
        var_0 = 1;

    return var_0;
}

_ID32264( var_0, var_1 )
{
    if ( isdefined( self._ID34240 ) && self._ID34240 )
        return;

    if ( isdefined( var_1 ) && var_1 > 0 )
        wait(var_1);

    if ( !isdefined( self ) )
        return;

    var_2 = _ID1462();

    if ( isdefined( self._ID7837 ) )
        var_2 clearanim( %root, 0 );

    if ( isdefined( self ) )
        var_2 setmodel( var_0 );
}

_ID45026( var_0 )
{
    var_1 = self getweaponslistall();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( issubstr( var_1[var_2], var_0 ) )
            return 1;
    }

    return 0;
}

_ID21305( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( !isalive( var_2 ) )
            continue;

        if ( !isdefined( var_2._ID29969 ) && !isdefined( var_2._ID11803 ) )
            continue;

        if ( isdefined( var_2._ID22746 ) )
            var_2 _ID42407::_ID36519();

        var_2 kill();
    }
}

_ID40230( var_0, var_1 )
{
    if ( isdefined( self._ID40222 ) && self._ID40222 != 0 )
        return;

    self.health = 1;
    var_0 endon( "death" );
    self._ID4867 = 0.15;
    self waittill( "death" );
    var_0 notify( "driver_died" );
    _ID21305( var_1 );
}

_ID40083()
{
    self endon( "death" );
    self endon( "enable_spline_path" );
    self endon( "enable_free_path" );
    waitframe;
    self._ID29965 = _ID42407::_ID29506( self._ID29965 );

    if ( !isdefined( self._ID18174 ) )
        self._ID18174 = self._ID29965.size > 0;

    if ( self._ID18174 && self._ID29965.size )
    {
        _ID42237::_ID3350( self._ID29965, ::_ID40230, self, self._ID29965 );
        _ID42237::_ID41098( "veh_collision", "driver_died" );
        _ID21305( self._ID29965 );
        wait 0.25;
    }
    else
    {
        self waittill( "veh_collision" );
        wait 0.25;
    }

    self notify( "script_crash_vehicle" );
    self vehphys_crash();
}

_ID1675( var_0, var_1 )
{
    self notify( "newpath" );

    if ( !isdefined( var_0 ) )
        var_0 = 2;

    self neargoalnotifydist( var_0 );
    self sethoverparams( 0, 0, 0 );
    self cleargoalyaw();
    self settargetyaw( _ID42237::_ID14539( self.angles )[1] );
    _ID1609( _ID42407::_ID17434( self.origin ), 1 );
    self waittill( "goal" );
}

_ID22347( var_0, var_1 )
{
    var_2 = strtok( var_0, " " );
    _ID42237::_ID3315( var_2, ::_ID22350, var_1 );
}

_ID17453( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID40194 ) )
        level._ID40194 = [];

    if ( !isdefined( level._ID40194[var_0] ) )
        level._ID40194[var_0] = [];

    if ( !isdefined( level._ID40194[var_0][var_2] ) )
        level._ID40194[var_0][var_2] = [];

    foreach ( var_4 in level._ID40194[var_0][var_2] )
    {
        if ( var_1 == var_4 )
            return;
    }

    level._ID40194[var_0][var_2][level._ID40194[var_0][var_2].size] = var_1;
}

_ID22344()
{
    level notify( "new_lights_delayfxforframe" );
    level endon( "new_lights_delayfxforframe" );

    if ( !isdefined( level._ID15270 ) )
        level._ID15270 = 0;

    level._ID15270 = level._ID15270 + randomfloatrange( 0.2, 0.4 );

    if ( level._ID15270 > 2 )
        level._ID15270 = 0;

    wait 0.05;
    level._ID15270 = undefined;
}

_ID21282( var_0 )
{
    _ID22346( "all", var_0 );
}

_ID40071( var_0 )
{
    self endon( "death" );
    var_1 = anglestoforward( self.angles + ( 0, var_0, 0 ) );
    var_1 *= 10000;
    var_1 += ( 0, 0, 70 );
    self setturrettargetvec( var_1 );
}

_ID40186( var_0, var_1 )
{
    return _ID1675( var_0, var_1 );
}

_ID1535( var_0, var_1 )
{
    self endon( "death" );
    self endon( "long_death" );

    if ( _ID42407::_ID11498() )
        return;

    var_2 = [];
    var_2[0] = "snowmobile_driver";
    var_2[1] = "snowmobile_passenger";
    var_3 = [];
    var_3["snowmobile_driver"] = "tag_driver";
    var_3["snowmobile_passenger"] = "tag_passenger";
    var_4 = var_2[var_1];
    var_5 = var_3[var_4];
    var_6 = var_0 gettagorigin( var_5 );
    var_7 = var_0 gettagangles( var_5 );
    var_8 = undefined;
    var_9 = undefined;
    var_10 = 9999999;

    foreach ( var_16, var_12 in level._ID34889[var_4] )
    {
        var_13 = _ID42407::_ID16122( var_16 );
        var_14 = getstartorigin( var_6, var_7, var_13 );
        var_15 = distance( self.origin, var_14 );

        if ( var_15 < var_10 )
        {
            var_10 = var_15;
            var_9 = var_14;
            var_8 = var_16;
        }
    }

    var_9 = _ID42237::_ID12140( var_9 );
    self.goalradius = 8;
    self._ID10998 = 1;
    self setgoalpos( var_9 );
    self waittill( "goal" );
    var_17 = _ID42237::_ID35164();
    var_17.origin = var_0 gettagorigin( var_5 );
    var_17.angles = var_0 gettagangles( var_5 );
    _ID42407::_ID10226( 0.05, _ID42259::_ID45303, "stop_attach_tag", var_17, var_0, var_5, 0.5 );
    var_0 _ID42259::_ID3020( self, var_8, var_5 );
    self notify( "stop_attach_tag" );
    var_17 delete();
    var_0 thread _ID42412::_ID17557( self );
    self._ID10998 = 0;
}

_ID41147( var_0 )
{
    var_1 = 12;
    var_2 = 400;
    var_3 = gettime() + var_2;

    if ( isdefined( self._ID12149 ) )
    {
        var_4 = _ID42407::_ID17434( var_0.origin ) + ( 0, 0, self._ID12149 );
        self settargetyaw( var_0.angles[1] );
        self setvehgoalpos( var_4, 1 );
        self waittill( "goal" );
    }

    while ( isdefined( self ) )
    {
        if ( abs( self.angles[0] ) > var_1 || abs( self.angles[2] ) > var_1 )
            var_3 = gettime() + var_2;

        if ( gettime() > var_3 )
            break;

        wait 0.05;
    }
}

_ID1671()
{
    if ( !isdefined( self._ID31066 ) )
        return;

    self endon( "kill_badplace_forever" );

    if ( !self vehicle_isphysveh() )
        self endon( "death" );

    self endon( "delete" );

    if ( isdefined( level._ID9559 ) )
    {
        self thread [[ level._ID9559 ]]();
        return;
    }

    if ( isdefined( self._ID9559 ) )
    {
        self thread [[ self._ID9559 ]]();
        return;
    }

    var_0 = isdefined( level._ID40163[self.model] ) && level._ID40163[self.model];
    var_1 = 0.5;
    var_2 = 17;
    var_3 = 17;

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        if ( !isdefined( self._ID31066 ) || !self._ID31066 )
        {
            while ( isdefined( self ) && ( !isdefined( self._ID31066 ) || !self._ID31066 ) )
                wait 0.5;

            if ( !isdefined( self ) )
                return;
        }

        var_4 = self vehicle_getspeed();

        if ( var_4 <= 0 )
        {
            wait(var_1);
            continue;
        }

        if ( var_4 < 5 )
            var_5 = 200;
        else if ( var_4 > 5 && var_4 < 8 )
            var_5 = 350;
        else
            var_5 = 500;

        if ( isdefined( self._ID4715 ) )
            var_5 *= self._ID4715;

        if ( var_0 )
            var_6 = anglestoforward( self gettagangles( "tag_turret" ) );
        else
            var_6 = anglestoforward( self.angles );

        badplace_arc( self._ID39468 + "arc", var_1, self.origin, var_5 * 1.9, 300, var_6, var_2, var_3, "axis", "team3", "allies" );
        badplace_cylinder( self._ID39468 + "cyl", var_1, self.origin, 200, 300, "axis", "team3", "allies" );
        wait(var_1 + 0.05);
    }
}

_ID1680( var_0 )
{
    self notify( "unloading" );
    var_1 = [];

    if ( _ID42407::_ID13023( "no_riders_until_unload" ) )
    {
        _ID42407::_ID13025( "no_riders_until_unload" );
        var_1 = _ID35190( var_0 );

        foreach ( var_3 in var_1 )
            _ID42407::_ID35060( var_3 );
    }

    if ( isdefined( var_0 ) )
        self._ID39487 = var_0;

    if ( isdefined( self._ID29965 ) )
    {
        foreach ( var_6 in self._ID29965 )
        {
            if ( isalive( var_6 ) )
                var_6 notify( "unload" );
        }

        var_1 = _ID42412::_ID3162( "unload" );
    }

    var_8 = level._ID40300[self.classname];

    if ( isdefined( var_8 ) )
    {
        var_1 = [];
        var_9 = _ID42412::_ID16049();

        foreach ( var_12, var_11 in self._ID29965 )
        {
            if ( isdefined( var_11 ) && isdefined( var_11._ID40222 ) && isdefined( var_9[var_11._ID40222] ) )
                var_1[var_1.size] = var_11;
        }
    }

    return var_1;
}

_ID22346( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) )
        var_1 = var_2;
    else if ( !isdefined( var_1 ) )
        var_1 = self.classname;

    if ( !isdefined( var_0 ) )
        var_0 = "all";

    if ( !isdefined( self._ID22343 ) )
        return;

    if ( !isdefined( level._ID40194[var_1][var_0] ) )
        return;

    var_3 = level._ID40194[var_1][var_0];
    var_4 = 0;
    var_5 = 2;

    if ( isdefined( self._ID23106 ) )
        var_5 = self._ID23106;

    foreach ( var_7 in var_3 )
    {
        var_8 = level._ID40193[var_1][var_7];

        if ( _ID42407::_ID18252( self.model, var_8._ID1067 ) )
            stopfxontag( var_8._ID12315, self, var_8._ID1067 );

        var_4++;

        if ( var_4 >= var_5 )
        {
            var_4 = 0;
            wait 0.05;
        }

        if ( !isdefined( self ) )
            return;

        self._ID22343[var_7] = undefined;
    }
}

_ID22350( var_0, var_1 )
{
    level._ID21950 = gettime();

    if ( !isdefined( var_0 ) )
        var_0 = "all";

    if ( !isdefined( var_1 ) )
        var_1 = self.classname;

    if ( !isdefined( level._ID40194 ) )
        return;

    if ( !isdefined( level._ID40194[var_1] ) || !isdefined( level._ID40194[var_1][var_0] ) )
        return;

    thread _ID22344();

    if ( !isdefined( self._ID22343 ) )
        self._ID22343 = [];

    var_2 = level._ID40194[var_1][var_0];
    var_3 = 0;
    var_4 = [];

    foreach ( var_6 in var_2 )
    {
        if ( isdefined( self._ID22343[var_6] ) )
            continue;

        var_7 = level._ID40193[var_1][var_6];

        if ( isdefined( var_7._ID10179 ) )
            var_8 = var_7._ID10179;
        else
            var_8 = 0;

        for ( var_8 += level._ID15270; isdefined( var_4["" + var_8] ); var_8 += 0.05 )
        {

        }

        var_4["" + var_8] = 1;
        self endon( "death" );
        childthread _ID42237::_ID24939( ::playfxontag, var_8, var_7._ID12315, self, var_7._ID1067 );
        self._ID22343[var_6] = 1;

        if ( !isdefined( self ) )
            break;
    }

    level._ID15270 = 0;
}

_ID1609( var_0, var_1 )
{
    if ( self.health <= 0 )
        return;

    if ( isdefined( self._ID26026 ) )
        var_0 += ( 0, 0, self._ID26026 );

    self setvehgoalpos( var_0, var_1 );
}

_ID18442( var_0, var_1 )
{
    self endon( "in_air_explosion" );

    if ( isdefined( self._ID26573 ) )
        var_2 = self._ID26573;
    else
    {
        var_3 = _ID16050();
        var_2 = _ID42237::_ID16182( self.origin, var_3 );
    }

    var_2._ID7712 = 1;
    self notify( "newpath" );
    self notify( "deathspin" );
    var_4 = 0;
    var_5 = 0;

    if ( isdefined( var_2._ID31388 ) && var_2._ID31388 == "direct" )
        var_5 = 1;

    if ( isdefined( self._ID18351 ) )
    {
        var_5 = 0;
        var_4 = self._ID18351;
    }

    if ( var_5 )
    {
        var_6 = 60;
        self vehicle_setspeed( var_6, 15, 10 );
        self neargoalnotifydist( var_2.radius );
        self setvehgoalpos( var_2.origin, 0 );
        thread _ID18440( var_2.origin, var_6 );
        _ID42237::_ID41068( "goal", "near_goal" );
        _ID18443( var_2 );
    }
    else
    {
        var_7 = ( var_2.origin[0], var_2.origin[1], self.origin[2] + var_4 );

        if ( isdefined( self._ID18352 ) )
        {
            var_7 = self.origin + self._ID18352 * self vehicle_getvelocity();
            var_7 = ( var_7[0], var_7[1], var_7[2] + var_4 );
        }

        self vehicle_setspeed( 40, 10, 10 );
        self neargoalnotifydist( 300 );
        self setvehgoalpos( var_7, 1 );
        thread _ID18440( var_7, 40 );
        var_8 = "blank";

        while ( var_8 != "death" )
        {
            var_8 = _ID42237::_ID41068( "goal", "near_goal", "death" );

            if ( !isdefined( var_8 ) && !isdefined( self ) )
            {
                var_2._ID7712 = undefined;
                self notify( "crash_done" );
                return;
                continue;
            }

            var_8 = "death";
        }

        self setvehgoalpos( var_2.origin, 0 );
        self waittill( "goal" );
        _ID18443( var_2 );
    }

    var_2._ID7712 = undefined;
    self notify( "stop_crash_loop_sound" );
    self notify( "crash_done" );
}

_ID18443( var_0 )
{
    self endon( "death" );

    while ( isdefined( var_0.target ) )
    {
        var_0 = _ID42237::_ID16638( var_0.target, "targetname" );
        var_1 = 56;

        if ( isdefined( var_0.radius ) )
            var_1 = var_0.radius;

        self neargoalnotifydist( var_1 );
        self setvehgoalpos( var_0.origin, 0 );
        _ID42237::_ID41068( "goal", "near_goal" );
    }
}

_ID18440( var_0, var_1 )
{
    self endon( "crash_done" );
    self clearlookatent();
    var_2 = 0;

    if ( isdefined( self._ID28405 ) )
    {
        var_2 = self._ID28405;

        if ( self._ID28405 < 0 )
        {
            var_3 = [ 1, 2, 2 ];
            var_4 = 5;
            var_5 = randomint( var_4 );
            var_6 = 0;

            foreach ( var_9, var_8 in var_3 )
            {
                var_6 += var_8;

                if ( var_5 < var_6 )
                {
                    var_2 = var_9;
                    break;
                }
            }
        }
    }

    switch ( var_2 )
    {
        case 1:
            thread _ID18445();
            break;
        case 2:
            thread _ID18439( var_0, var_1 );
            break;
        case 3:
            thread _ID18449();
            break;
        case 0:
        default:
            thread _ID18444();
            break;
    }
}

_ID18449()
{
    self notify( "in_air_explosion" );
    wait 0.05;
    self notify( "crash_done" );
}

_ID18439( var_0, var_1 )
{
    self endon( "crash_done" );
    self clearlookatent();
    self setmaxpitchroll( randomintrange( 20, 90 ), randomintrange( 5, 90 ) );
    self setyawspeed( 400, 100, 100 );
    var_2 = 90 * randomintrange( -2, 3 );

    for (;;)
    {
        var_3 = var_0 - self.origin;
        var_4 = vectortoyaw( var_3 );
        var_4 += var_2;
        self settargetyaw( var_4 );
        wait 0.1;
    }
}

_ID18445()
{
    self endon( "crash_done" );
    self clearlookatent();
    self setyawspeed( 400, 100, 100 );
    var_0 = randomint( 2 );

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        var_1 = randomintrange( 20, 120 );

        if ( var_0 )
            self settargetyaw( self.angles[1] + var_1 );
        else
            self settargetyaw( self.angles[1] - var_1 );

        var_0 = 1 - var_0;
        var_2 = randomfloatrange( 0.5, 1.0 );
        wait(var_2);
    }
}

_ID18444()
{
    self endon( "crash_done" );
    self clearlookatent();
    self setyawspeed( 400, 100, 100 );

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        var_0 = randomintrange( 90, 120 );
        self settargetyaw( self.angles[1] + var_0 );
        wait 0.5;
    }
}

_ID16050()
{
    var_0 = [];
    level._ID18441 = _ID42237::_ID3332( level._ID18441 );

    foreach ( var_2 in level._ID18441 )
    {
        if ( isdefined( var_2._ID7712 ) )
            continue;

        var_0[var_0.size] = var_2;
    }

    return var_0;
}

_ID10618()
{
    if ( !isdefined( self._ID13955 ) )
        return;

    if ( !self._ID13955.size )
        return;

    var_0 = getarraykeys( self._ID13955 );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        self._ID13955[var_0[var_1]] unlink();
}

_ID1462()
{
    if ( isdefined( self._ID23876 ) && self._ID23876 )
        var_0 = self._ID23875;
    else
        var_0 = self;

    return var_0;
}

_ID9000( var_0 )
{
    var_1 = var_0;
    var_2 = [];

    while ( isdefined( var_1 ) )
    {
        if ( isdefined( var_1._ID10681 ) && var_1._ID10681 == 0 )
        {
            var_3 = _ID26309( getvehiclenode( var_1.target, "targetname" ) );

            if ( isdefined( var_3 ) && isdefined( var_3._ID31106 ) )
                return 1;
        }

        var_2[var_2.size] = var_1;

        if ( isdefined( var_1.target ) )
            var_1 = getvehiclenode( var_1.target, "targetname" );
        else
            var_1 = undefined;

        if ( isdefined( var_1 ) && _ID42237::_ID3303( var_2, var_1 ) )
            break;
    }

    return 0;
}

_ID40178()
{
    self notify( "kill_badplace_forever" );
}

_ID21278( var_0 )
{
    if ( isdefined( level._ID40108[var_0] ) )
    {
        self._ID11576 = 1;
        wait(level._ID40108[var_0]._ID10179);
    }

    if ( !isdefined( self ) )
        return;

    self joltbody( self.origin + ( 23, 33, 64 ), 3 );
    wait 2;

    if ( !isdefined( self ) )
        return;

    self._ID11576 = undefined;
}

_ID1501( var_0, var_1 )
{
    if ( _ID42237::_ID20725() || isdefined( self._ID20483 ) && self._ID20483 )
        return;

    level notify( "vehicle_explosion",  self.origin  );
    self notify( "explode",  self.origin  );

    if ( isdefined( self._ID19364 ) && self._ID19364 )
        return;

    var_2 = self._ID1282;
    var_3 = _ID47115( self.classname );

    if ( var_1 )
        var_3 = "rocket_death" + var_3;

    var_4 = 0;

    foreach ( var_6 in level._ID40106[var_3] )
    {
        if ( ( !isdefined( var_6._ID40976 ) || var_6._ID40976 == 0 ) && var_0 == "vehicle_bm21_mobile_cover" && level.script == "hunted" )
            var_6._ID40976 = int( var_4 / 2 ) * 0.05 + 0.05;

        thread _ID21269( var_0, var_6, var_2 );
        var_4++;
    }
}

_ID21269( var_0, var_1, var_2 )
{
    if ( isdefined( var_1._ID40976 ) )
    {
        if ( var_1._ID40976 >= 0 )
            wait(var_1._ID40976);
        else
            self waittill( "death_finished" );
    }

    if ( !isdefined( self ) )
        return;

    if ( isdefined( var_1._ID25146 ) )
        self notify( var_1._ID25146 );

    var_3 = _ID1462();

    if ( isdefined( var_1._ID31866 ) )
        _ID42237::_ID10192( var_1._ID31866, ::delete );

    if ( isdefined( var_1._ID12315 ) )
    {
        if ( var_1._ID4974 && !isdefined( self._ID10280 ) )
        {
            if ( isdefined( var_1._ID1067 ) )
            {
                if ( isdefined( var_1._ID36228 ) && var_1._ID36228 == 1 )
                    thread _ID22643( var_1._ID12315, var_1._ID10179, var_1._ID1067 );
                else
                    thread _ID28101( var_1._ID12315, var_1._ID10179, var_1._ID1067 );
            }
            else
            {
                var_4 = var_3.origin + ( 0, 0, 100 ) - var_3.origin;
                playfx( var_1._ID12315, var_3.origin, var_4 );
            }
        }
        else if ( isdefined( var_1._ID1067 ) )
        {
            playfxontag( var_1._ID12315, _ID9829(), var_1._ID1067 );

            if ( isdefined( var_1._ID29507 ) )
                _ID9829() _ID42237::_ID10192( var_1._ID29507, ::delete );
        }
        else
        {
            var_4 = var_3.origin + ( 0, 0, 100 ) - var_3.origin;
            playfx( var_1._ID12315, var_3.origin, var_4 );
        }
    }

    if ( isdefined( var_1._ID34972 ) && !isdefined( self._ID10280 ) )
    {
        if ( var_1._ID6193 )
            thread _ID9796( var_1._ID34972 );
        else
            _ID42237::_ID27077( var_1._ID34972 );
    }
}

_ID22643( var_0, var_1, var_2 )
{
    self endon( "stop_looping_death_fx" );

    while ( isdefined( self ) )
    {
        playfxontag( var_0, _ID9829(), var_2 );
        wait(var_1);
    }
}

_ID9796( var_0 )
{
    thread _ID42407::_ID27001( var_0, undefined, 0, 1 );
    _ID42237::_ID41068( "fire_extinguish", "stop_crash_loop_sound" );

    if ( !isdefined( self ) )
    {
        iprintln( "^1DEBUG: Infinite looping sound for a vehicle could be happening right now..." );
        return;
    }

    self notify( "stop sound" + var_0 );
}

_ID9829()
{
    if ( isdefined( self._ID9798 ) && self._ID9798 )
        return self;

    if ( !isdefined( self._ID9829 ) )
    {
        var_0 = spawn( "script_model", ( 0, 0, 0 ) );
        var_1 = _ID1462();
        var_0 setmodel( self.model );
        var_0.origin = var_1.origin;
        var_0.angles = var_1.angles;
        var_0 notsolid();
        var_0 hide();
        var_0 linkto( var_1 );
        self._ID9829 = var_0;
    }
    else
        self._ID9829 setmodel( self.model );

    return self._ID9829;
}

_ID28101( var_0, var_1, var_2 )
{
    var_3 = _ID1462();
    var_4 = spawn( "script_origin", var_3.origin );
    self endon( "fire_extinguish" );
    thread _ID28102( var_2, var_4 );

    for (;;)
    {
        playfx( var_0, var_4.origin, var_4._ID39888 );
        wait(var_1);
    }
}

_ID28102( var_0, var_1 )
{
    var_1.angles = self gettagangles( var_0 );
    var_1.origin = self gettagorigin( var_0 );
    var_1._ID14835 = anglestoforward( var_1.angles );
    var_1._ID39888 = anglestoup( var_1.angles );

    while ( isdefined( self ) && self.code_classname == "script_vehicle" && self vehicle_getspeed() > 0 )
    {
        var_2 = _ID1462();
        var_1.angles = var_2 gettagangles( var_0 );
        var_1.origin = var_2 gettagorigin( var_0 );
        var_1._ID14835 = anglestoforward( var_1.angles );
        var_1._ID39888 = anglestoup( var_1.angles );
        wait 0.05;
    }
}

_ID21246( var_0 )
{
    if ( !isdefined( level._ID40104[var_0] ) )
        return;

    var_1 = level._ID40104[var_0];

    if ( isdefined( var_1._ID10179 ) )
        wait(var_1._ID10179);

    if ( !isdefined( self ) )
        return;

    badplace_cylinder( "vehicle_kill_badplace", var_1._ID310, self.origin, var_1.radius, var_1._ID488, var_1._ID37354, var_1._ID37355 );
}

_ID39256( var_0 )
{
    if ( isdefined( self ) )
    {
        if ( isdefined( var_0._ID10318 ) )
            wait(var_0._ID10318);
    }

    if ( isdefined( var_0 ) )
        var_0 delete();
}

_ID3243()
{
    if ( !isdefined( self._ID39045 ) )
        return;

    var_0 = self._ID39045;
    self._ID39045 = [];

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID988 ) )
        {
            var_3 = _ID42237::_ID35164();
            var_3._ID988 = var_2._ID988;
        }
        else
        {
            var_3 = spawn( "script_model", self.origin );
            var_3 setmodel( var_2.model );
        }

        var_4 = "tag_body";

        if ( isdefined( var_2._ID31232 ) )
        {
            var_3._ID31232 = var_2._ID31232;
            var_3._ID4864 = var_2.origin;
            var_3._ID4853 = var_2.angles;
            var_4 = var_2._ID31232;
        }

        if ( isdefined( var_2._ID10475 ) )
            var_2 thread _ID39046( var_3 );

        if ( isdefined( var_2.script_noteworthy ) )
            var_3.script_noteworthy = var_2.script_noteworthy;

        if ( isdefined( var_2._ID31388 ) )
            var_3._ID31388 = var_2._ID31388;

        var_3 linkto( self, var_4, var_2.origin, var_2.angles );

        if ( isdefined( var_2._ID279 ) )
        {
            var_3._ID279 = var_2._ID279;
            var_3 _ID42231::_ID32948( 1 );
        }

        self._ID39045[self._ID39045.size] = var_3;
    }
}

_ID39046( var_0 )
{
    var_0 endon( "death" );
    var_0 setcandamage( 1 );
    var_0.health = 8000;
    var_0 waittill( "damage" );
    var_0 hide();
    var_1 = _ID42237::_ID35164();
    var_1.origin = var_0.origin;
    var_1.angles = var_0.angles;
    var_1 linkto( var_0 );
    playfxontag( self._ID10475, var_1, "tag_origin" );
}

_ID39045()
{
    var_0 = getent( self.target, "targetname" );
    var_1 = _ID16781( var_0 );

    if ( isspawner( self ) )
        var_1._ID988 = self;

    if ( isdefined( self.targetname ) )
    {
        var_2 = getent( self.targetname, "target" );

        if ( isspawner( var_2 ) )
            var_1._ID988 = var_2;
    }

    if ( isdefined( self.script_noteworthy ) )
        var_1.script_noteworthy = self.script_noteworthy;

    if ( isdefined( self._ID31388 ) )
        var_1._ID31388 = self._ID31388;

    if ( isdefined( self._ID31220 ) )
        var_1._ID10475 = _ID42237::_ID16299( self._ID31220 );

    if ( !isdefined( var_0._ID39045 ) )
        var_0._ID39045 = [];

    if ( isdefined( self._ID31455 ) )
        var_1._ID31455 = self._ID31455;

    if ( isdefined( self._ID279 ) )
    {
        _ID42407::_ID28349( self._ID279 );
        var_1._ID279 = self._ID279;
    }

    var_0._ID39045[var_0._ID39045.size] = var_1;

    if ( !isdefined( self.classname ) )
        return;

    if ( isspawner( self ) )
        return;

    self delete();
}

_ID16781( var_0 )
{
    var_1 = spawnstruct();
    var_2 = "tag_body";

    if ( isdefined( self._ID31232 ) )
    {
        var_2 = self._ID31232;
        var_1._ID31232 = self._ID31232;
    }

    var_1.origin = self.origin - var_0 gettagorigin( var_2 );

    if ( !isdefined( self.angles ) )
        var_3 = ( 0, 0, 0 );
    else
        var_3 = self.angles;

    var_1.angles = var_3 - var_0 gettagangles( var_2 );
    var_1.model = self.model;

    if ( isdefined( self._ID31295 ) )
    {
        precachemodel( self._ID31295 );
        var_1.model = self._ID31295;
    }

    if ( isdefined( var_1.targetname ) )
        level._ID36711["targetname"][var_1.targetname] = undefined;

    if ( isdefined( var_1.target ) )
        level._ID36711["target"][var_1.target] = undefined;

    return var_1;
}

_ID1473( var_0 )
{
    var_1 = getentarray( "script_vehicle", "code_classname" );

    if ( isdefined( var_0 ) )
    {
        var_2 = [];

        foreach ( var_4 in var_1 )
        {
            if ( !isdefined( var_4.targetname ) )
                continue;

            if ( var_4.targetname == var_0 )
                var_2 = _ID42237::_ID3293( var_2, var_4 );
        }

        var_1 = var_2;
    }

    var_6 = [];

    foreach ( var_4 in var_1 )
    {
        if ( isspawner( var_4 ) )
            var_6[var_6.size] = var_4;
    }

    return var_6;
}

_ID1474( var_0 )
{
    var_1 = _ID1473();
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( isdefined( var_4._ID31517 ) && var_4._ID31517 == var_0 )
            var_2[var_2.size] = var_4;
    }

    return var_2;
}

_ID22902( var_0, var_1 )
{
    for (;;)
    {
        if ( !isdefined( self ) )
            break;

        if ( !isdefined( var_0 ) )
            break;

        var_2 = var_0 gettagorigin( var_1 );
        var_3 = var_0 gettagangles( var_1 );
        self.origin = var_2;
        self.angles = var_3;
        wait 0.05;
    }
}

_ID19207( var_0 )
{
    self useanimtree( #animtree );
    _ID19208( var_0 );

    if ( !isdefined( self ) )
        return;

    self clearanim( var_0["idle"], 0 );
    self clearanim( var_0["rot_l"], 0 );
    self clearanim( var_0["rot_r"], 0 );
}

_ID19208( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        var_1 = self.veh_speed / 18;

        if ( var_1 <= 0.0001 )
            var_1 = 0.0001;

        var_2 = randomfloatrange( 0.3, 0.7 );
        self setanim( var_0["idle"], var_1, 0, var_2 );
        var_2 = randomfloatrange( 0.1, 0.8 );
        self setanim( var_0["rot_l"], 1, 0, var_2 );
        var_2 = randomfloatrange( 0.1, 0.8 );
        self setanim( var_0["rot_r"], 1, 0, var_2 );
        wait 0.5;
    }
}

_ID40242( var_0 )
{
    foreach ( var_2 in self._ID29965 )
    {
        if ( isai( var_2 ) )
        {
            var_2 _ID42407::_ID32315( var_0 );
            continue;
        }

        if ( isdefined( var_2._ID988 ) )
        {
            var_2._ID988._ID31209 = var_0;
            continue;
        }
    }
}

_ID53587( var_0 )
{
    if ( var_0._ID39658 != gettime() )
    {
        var_0._ID39658 = gettime();

        if ( var_0._ID36389 )
        {
            var_1 = clamp( 0 - var_0.angles[2], 0 - var_0._ID36392, var_0._ID36392 ) / var_0._ID36392;
            var_2 = var_1 - var_0._ID36388;

            if ( var_2 != 0 )
            {
                var_3 = var_0._ID36391 / abs( var_2 );

                if ( var_3 < 1 )
                    var_2 *= var_3;

                var_0._ID36388 = var_0._ID36388 + var_2;
            }
        }
        else
            var_0._ID36388 = 0;
    }

    return var_0._ID36388;
}

_ID39650( var_0 )
{
    if ( var_0._ID39658 == gettime() )
        return var_0._ID36388;

    var_0._ID39658 = gettime();

    if ( var_0._ID36389 )
    {
        var_1 = clamp( 0 - var_0.angles[2], 0 - var_0._ID36392, var_0._ID36392 ) / var_0._ID36392;

        if ( isdefined( var_0._ID22114 ) && var_0._ID22114 )
        {
            var_2 = var_0 vehicle_getsteering();
            var_3 = var_0 _meth_8597();

            if ( var_3 != 0 )
                var_2 = clamp( var_2 / var_3, -1, 1 );

            var_2 *= -1.0;
            var_1 += var_2;

            if ( var_1 != 0 )
            {
                var_4 = 1.0 / abs( var_1 );

                if ( var_4 < 1 )
                    var_1 *= var_4;
            }
        }

        var_5 = var_1 - var_0._ID36388;

        if ( var_5 != 0 )
        {
            var_6 = var_0._ID36391 / abs( var_5 );

            if ( var_6 < 1 )
                var_5 *= var_6;

            var_0._ID36388 = var_0._ID36388 + var_5;
        }
    }
    else
        var_0._ID36388 = 0;

    return var_0._ID36388;
}

_ID15747( var_0 )
{
    return _ID42237::_ID16638( var_0, "targetname" );
}

_ID15745( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );

    if ( isdefined( var_1 ) && var_1.size > 0 )
        return var_1[randomint( var_1.size )];

    return undefined;
}

_ID15748( var_0 )
{
    return _ID42237::_ID16638( var_0, "target" );
}

_ID15746( var_0 )
{
    return getent( var_0, "target" );
}

_ID15749( var_0 )
{
    return getvehiclenode( var_0, "targetname" );
}

_ID32368( var_0 )
{
    var_1 = getent( var_0._ID31273, "script_linkname" );

    if ( !isdefined( var_1 ) )
        return;

    self setlookatent( var_1 );
    self._ID32369 = 1;
}

_ID9603()
{
    level._ID3284 = 0;
    self._ID11110 = 0;
    thread _ID9605();

    while ( isdefined( self ) )
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( !isplayernumber( var_1 ) )
            continue;

        if ( isdefined( self._ID18176 ) )
            continue;

        var_4 = tolower( var_4 );

        switch ( var_4 )
        {
            case "mod_pistol_bullet":
            case "mod_rifle_bullet":
            case "bullet":
                if ( !level._ID3284 )
                {
                    if ( isdefined( level._ID37698 ) && level._ID37698 > 0 )
                        continue;

                    level._ID3284 = 1;
                    self._ID11110 = 1;
                    var_1 _ID42407::_ID11085( "invulerable_bullets", undefined, undefined, undefined, undefined, getdvarfloat( "cg_invalidCmdHintDuration", 30000 ) / 1000 );
                    wait 4;
                    level._ID3284 = 0;

                    if ( isdefined( self ) )
                        self._ID11110 = 0;

                    continue;
                }
        }
    }
}

_ID9604()
{
    level._ID3284 = 0;
    self._ID11110 = 0;
    thread _ID9605();

    while ( isdefined( self ) )
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( !isplayernumber( var_1 ) )
            continue;

        if ( isdefined( self._ID18176 ) )
            continue;

        var_4 = tolower( var_4 );

        switch ( var_4 )
        {
            case "mod_grenade":
            case "mod_grenade_splash":
            case "mod_pistol_bullet":
            case "mod_rifle_bullet":
            case "bullet":
                if ( !level._ID3284 )
                {
                    if ( isdefined( level._ID18694 ) )
                        continue;

                    if ( isdefined( level._ID37698 ) && level._ID37698 > 0 )
                        continue;

                    level._ID3284 = 1;
                    self._ID11110 = 1;

                    if ( var_4 == "mod_grenade" || var_4 == "mod_grenade_splash" )
                        var_1 _ID42407::_ID11085( "invulerable_frags", undefined, undefined, undefined, undefined, getdvarfloat( "cg_invalidCmdHintDuration", 30000 ) / 1000 );
                    else
                        var_1 _ID42407::_ID11085( "invulerable_bullets", undefined, undefined, undefined, undefined, getdvarfloat( "cg_invalidCmdHintDuration", 30000 ) / 1000 );

                    wait 4;
                    level._ID3284 = 0;

                    if ( isdefined( self ) )
                        self._ID11110 = 0;

                    continue;
                }
        }
    }
}

_ID9605()
{
    self waittill( "death" );

    if ( self._ID11110 )
        level._ID3284 = 0;
}

_ID8662( var_0 )
{
    var_1 = self getattachsize();
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1; var_3++ )
        var_2[var_3] = tolower( self getattachmodelname( var_3 ) );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_0 attach( var_2[var_3], tolower( self getattachtagname( var_3 ) ) );
}

_ID22345( var_0, var_1, var_2 )
{
    var_3 = strtok( var_0, " ", var_1 );
    _ID42237::_ID3315( var_3, ::_ID22346, var_1, var_2 );
}

_ID2456( var_0, var_1 )
{
    var_2 = _ID47115( self.classname );

    if ( !isdefined( var_1 ) )
    {
        self notify( "stop_kicking_up_dust" );

        if ( isdefined( level._ID1673 ) && isdefined( level._ID1673[var_2] ) && isdefined( level._ID1673[var_2]._ID37129 ) )
        {
            foreach ( var_4 in level._ID1673[var_2]._ID37129 )
                thread _ID2456( var_0, var_4 );

            return;
        }
    }
    else
    {
        self notify( "stop_kicking_up_dust" + var_1 );
        self endon( "stop_kicking_up_dust" + var_1 );
    }

    self endon( "death" );
    self endon( "death_finished" );
    self endon( "stop_kicking_up_dust" );
    var_6 = [ "death", "death_finished", "stop_kicking_up_dust" ];

    if ( isdefined( var_1 ) )
    {
        var_7 = "stop_kicking_up_dust" + var_1;
        var_6[var_6.size] = var_7;
    }

    var_8 = spawnstruct();
    var_8._ID46120 = _ID42237::_ID35164();
    thread _ID46848( var_8._ID46120, var_6 );
    var_8._ID52939 = undefined;
    var_8._ID53138 = undefined;
    var_9 = 0;
    var_10 = _ID44087();
    var_11 = var_10["treadfx_minHeight"];
    var_12 = var_10["treadfx_maxHeight"];
    var_13 = var_10["treadfx_landingHeight"];
    var_14 = var_13 / var_12;
    var_15 = var_10["treadfx_maxRepeatRate"];
    var_16 = var_10["treadfx_minRepeatRate"];
    var_17 = var_10["treadfx_defaultRepeatRate"];
    var_18 = var_10["treadfx_clampAngleLimit"];

    if ( var_18 == 0 )
        var_18 = undefined;

    var_19 = var_10["treadfx_cutoffAngleLimit"];

    if ( var_19 == 0 )
        var_19 = undefined;

    var_20 = var_10["treadsfx_maxDistance"];
    var_21 = 1.0;
    var_22 = 3;
    var_23 = var_22;
    var_24 = undefined;
    var_25 = undefined;
    var_26 = self;

    if ( isdefined( var_0 ) )
        var_26 = var_0;

    self._ID53711 = 0;
    self._ID48402 = undefined;
    var_27 = _ID42411::_ID53622( var_2, "aircraft_landing" );

    for (;;)
    {
        if ( !var_9 )
            var_8 _ID52232( 1 );

        var_9 = 0;
        wait(var_21);

        if ( isdefined( var_1 ) )
        {
            var_28 = var_26 gettagorigin( var_1 );
            var_29 = var_26 gettagangles( var_1 );
            var_29 = combineangles( var_29, ( -90, 0, 0 ) );
        }
        else
        {
            var_28 = var_26.origin;
            var_29 = var_26.angles;
        }

        var_30 = anglestoup( var_29 ) * -1;
        var_23++;

        if ( var_23 > var_22 )
        {
            var_23 = var_22;
            var_24 = bullettrace( var_28, var_28 + var_30 * var_12, 0, var_26, 0, 0, 0, 0, 0, 1, 0, 1 );
        }

        var_32 = distance( var_28, level.player.origin );

        if ( var_32 > var_20 )
            _ID45192();

        if ( !isdefined( var_24 ) )
        {
            _ID45192();
            continue;
        }

        if ( var_24["fraction"] == 1 )
            continue;

        var_33 = distance( var_28, var_24["position"] );
        var_34 = _ID46501( var_2, var_24, var_30, var_1 );
        var_35 = _ID16070( var_34, var_1 );

        if ( !isdefined( var_35 ) )
        {
            _ID45192();
            continue;
        }

        var_36 = _ID48732( var_34, var_1 );

        if ( _ID53353( var_36, self._ID48402 ) )
            _ID45192();

        if ( var_24["fraction"] < var_14 )
        {
            if ( isdefined( var_27 ) && isdefined( var_27._ID45790 ) && isdefined( var_27._ID45790[var_35] ) )
                var_35 = var_27._ID45790[var_35];
        }

        if ( var_33 > var_12 )
        {
            var_21 = var_17;
            continue;
        }

        if ( isdefined( var_24["entity"] ) )
        {
            var_21 = var_17;
            continue;
        }

        if ( !isdefined( var_24["position"] ) )
        {
            var_21 = var_17;
            continue;
        }

        var_21 = ( var_33 - var_11 ) / ( var_12 - var_11 ) * ( var_15 - var_16 ) + var_16;
        var_21 = max( var_21, var_16 );
        var_37 = var_24["position"];
        var_38 = var_24["normal"];
        var_33 = vectordot( var_37 - var_28, var_38 );
        var_39 = var_28 + ( 0, 0, var_33 );
        var_40 = var_37 - var_39;

        if ( var_38[2] < -0.99 )
            continue;

        var_41 = vectortoangles( var_38 );
        var_42 = angleclamp180( var_41[0] );

        if ( isdefined( var_19 ) && var_42 > -90 + var_19 )
            continue;
        else if ( isdefined( var_18 ) && var_42 > -90 + var_18 )
            var_38 = anglestoforward( ( -90 + var_18, var_41[1], 0 ) );

        if ( length( var_40 ) < 1 )
            var_40 = anglestoforward( var_29 + ( 0, 180, 0 ) );

        if ( abs( vectordot( vectornormalize( var_40 ), var_38 ) ) > 0.999 )
            continue;

        var_9 = 1;
        var_43 = _ID42400::_ID47025( var_35 );
        var_8._ID53138 = _ID42237::_ID37527( var_43, var_35, undefined );
        var_8 _ID52232();
        var_8._ID46120 dontinterpolate();
        var_8._ID46120.origin = var_37;

        if ( _ID42400::_ID47025( var_35 ) )
        {
            var_8._ID46120.angles = axistoangles( var_38, vectorcross( var_38, var_40 ), var_40 );
            var_8 _ID47820();
        }
        else
            playfx( var_35, var_37, var_38, var_40 );

        if ( isdefined( var_36 ) && !self._ID53711 && var_32 < var_20 )
        {
            thread _ID42407::_ID27001( var_36, var_1, 1, 1 );
            self._ID53711 = 1;
            self._ID48402 = var_36;
        }
    }
}

_ID9873( var_0, var_1, var_2 )
{

}

_ID46501( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4._ID36851 = var_1["surfacetype"];
    var_4._ID50275 = undefined;
    var_5 = vectordot( ( 0, 0, -1 ), var_2 );

    if ( var_5 >= 0.97 )
        var_4._ID50275 = undefined;
    else if ( var_5 >= 0.92 )
        var_4._ID50275 = "_bank";
    else
        var_4._ID50275 = "_bank_lg";

    var_4._ID43791 = var_0;

    if ( isdefined( level._ID1673 ) && isdefined( level._ID1673[var_4._ID43791] ) && isdefined( level._ID1673[var_4._ID43791]._ID16004 ) )
        var_4._ID36851 = self [[ level._ID1673[var_4._ID43791]._ID16004 ]]( var_4._ID36851, var_3 );

    return var_4;
}

_ID16070( var_0, var_1 )
{
    return _ID16069( var_0._ID43791, var_0._ID36851, var_0._ID50275 );
}

_ID48732( var_0, var_1 )
{
    return _ID50837( var_0._ID43791, var_0._ID36851, var_0._ID50275 );
}

_ID16069( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) )
    {
        var_3 = var_1 + var_2;

        if ( isdefined( level._ID1672 ) && isdefined( level._ID1672[var_0] ) && isdefined( level._ID1672[var_0][var_3] ) )
            return level._ID1672[var_0][var_3];
    }

    return _ID16058( var_0, var_1 );
}

_ID50837( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) )
    {
        var_3 = var_1 + var_2;

        if ( isdefined( level._ID49142[var_0][var_3] ) )
            return level._ID49142[var_0][var_3];
    }

    return _ID52406( var_0, var_1 );
}

_ID16058( var_0, var_1 )
{
    if ( !isdefined( level._ID1672[var_0] ) )
        return undefined;

    if ( !isdefined( level._ID1672[var_0][var_1] ) && var_1 != "default" && var_1 != "default_script_model" )
        return _ID16058( var_0, "default" );

    return level._ID1672[var_0][var_1];
}

_ID52406( var_0, var_1 )
{
    if ( !isdefined( level._ID49142[var_0] ) )
        return undefined;

    if ( !isdefined( level._ID49142[var_0][var_1] ) && var_1 != "default" && var_1 != "default_script_model" )
        return _ID52406( var_0, "default" );

    return level._ID49142[var_0][var_1];
}

_ID24854()
{
    return _ID1499() || _ID1498();
}

_ID40285()
{
    var_0 = _ID47115( self.classname );

    if ( !isdefined( level._ID1672[var_0] ) )
        return;

    if ( _ID24854() )
        return;

    if ( isdefined( level._ID38726 ) )
        self thread [[ level._ID38726 ]]( "tag_origin", "back_left", ( 160, 0, 0 ) );
    else
    {
        var_1 = isdefined( level._ID40259 ) && isdefined( level._ID40259[self._ID1282] );
        var_2 = isdefined( level._ID48095 ) && isdefined( level._ID48095[self._ID1282] );

        if ( var_2 )
        {
            if ( var_1 )
                thread _ID52341();
            else
                thread _ID49037();
        }
        else
        {
            if ( var_1 )
            {
                thread _ID11228();
                return;
            }

            thread _ID11209();
        }
    }
}

_ID11209()
{
    self endon( "death" );
    self endon( "kill_treads_forever" );

    for (;;)
    {
        var_0 = _ID38727();

        if ( var_0 == -1 )
        {
            wait 0.1;
            continue;
        }

        _ID38725( _ID1462(), var_0, "tag_wheel_back_left", "back_left", 0 );
        wait 0.05;
        _ID38725( _ID1462(), var_0, "tag_wheel_back_right", "back_right", 0 );
        wait 0.05;
    }
}

_ID38727()
{
    var_0 = self vehicle_getspeed();

    if ( !var_0 )
        return -1;

    if ( isdefined( self._ID49311 ) && var_0 < self._ID49311 )
        return -1;

    var_0 *= 17.6;
    var_1 = 1 / var_0;
    var_1 = clamp( var_1 * 35, 0.1, 0.3 );

    if ( isdefined( self._ID38732 ) )
        var_1 *= self._ID38732;

    wait(var_1);
    return var_1;
}

_ID38725( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID16037( self, var_3 );

    if ( !isdefined( var_6 ) )
        return;

    var_7 = var_0 gettagangles( var_2 );
    var_8 = anglestoforward( var_7 );
    var_9 = self gettagorigin( var_2 );

    if ( var_4 )
    {
        var_10 = self gettagorigin( var_5 );
        var_9 = ( var_9 + var_10 ) / 2;
    }

    playfx( var_6, var_9, anglestoup( var_7 ), var_8 * var_1 );
}

_ID16037( var_0, var_1 )
{
    var_2 = self getwheelsurface( var_1 );

    if ( !isdefined( var_0._ID1282 ) )
    {
        var_3 = -1;
        return var_3;
    }

    var_4 = var_0 _ID47115( var_0.classname );
    return _ID16058( var_4, var_2 );
}

_ID53236( var_0, var_1 )
{
    var_2 = self getwheelsurface( var_1 );

    if ( !isdefined( var_0._ID1282 ) )
    {
        var_3 = -1;
        return var_3;
    }

    var_4 = var_0 _ID47115( var_0.classname );
    return _ID52406( var_4, var_2 );
}

_ID11228()
{
    self endon( "death" );
    self endon( "kill_treads_forever" );

    for (;;)
    {
        var_0 = _ID38727();

        if ( var_0 == -1 )
        {
            wait 0.1;
            continue;
        }

        var_1 = _ID1462();
        var_1 _ID38725( var_1, var_0, "tag_wheel_back_left", "back_left", 1, "tag_wheel_back_right" );
    }
}

_ID1499()
{
    return isdefined( level._ID18451[self._ID1282] );
}

_ID1498()
{
    return isdefined( level._ID2458[self._ID1282] );
}

_ID20706()
{
    if ( !isdefined( self._ID31093 ) )
        return 0;

    if ( !self._ID31093 )
        return 0;

    return 1;
}

_ID18226()
{
    if ( !_ID1499() && !_ID1498() )
        return 0;

    if ( _ID20706() )
        return 0;

    return 1;
}

_ID18227()
{
    if ( !isdefined( self._ID1282 ) )
        return 0;

    if ( _ID20706() )
        return 0;

    if ( self._ID1282 == "cobra" )
        return 1;

    if ( self._ID1282 == "cobra_player" )
        return 1;

    if ( self._ID1282 == "viper" )
        return 1;

    return 0;
}

_ID47848()
{
    self notify( "kill_disconnect_paths_forever" );
}

_ID11064()
{
    self endon( "death" );
    self endon( "kill_disconnect_paths_forever" );
    var_0 = 0;

    if ( isdefined( self._ID31139 ) && !self._ID31139 )
        var_0 = 1;

    if ( var_0 )
    {
        self._ID11571 = 1;
        return;
    }

    wait(randomfloat( 1 ));

    while ( isdefined( self ) )
    {
        if ( self vehicle_getspeed() < 1 )
        {
            if ( !isdefined( self._ID11571 ) )
            {
                self disconnectpaths();
                jump loc_5422
            }

            self notify( "speed_zero_path_disconnect" );

            while ( self vehicle_getspeed() < 1 )
                wait 0.05;
        }

        self connectpaths();
        wait 1;
    }
}

_ID23507()
{
    var_0 = _ID47115( self.classname );

    if ( isdefined( self._ID31364 ) && self._ID31364 > 0 )
        return;

    if ( !isdefined( level._ID40207[var_0] ) )
        return;

    var_1 = 0;

    if ( isdefined( self._ID31286 ) )
        var_1 = self._ID31286;

    var_2 = level._ID40207[var_0];

    if ( !isdefined( var_2 ) )
        return;

    var_3 = isdefined( self.script_noteworthy ) && self.script_noteworthy == "onemg";

    foreach ( var_7, var_5 in var_2 )
    {
        var_6 = spawnturret( "misc_turret", ( 0, 0, 0 ), var_5._ID19551 );

        if ( isdefined( var_5._ID25472 ) )
            var_6 linkto( self, var_5._ID1067, var_5._ID25472, ( 0, -1 * var_1, 0 ) );
        else
            var_6 linkto( self, var_5._ID1067, ( 0, 0, 0 ), ( 0, -1 * var_1, 0 ) );

        var_6 setmodel( var_5.model );
        var_6.angles = self.angles;
        var_6._ID20994 = 1;
        var_6._ID26175 = self;
        var_6._ID31474 = self._ID31474;
        var_6 thread _ID42331::_ID6448();
        var_6 makeunusable();
        _ID32486( var_6 );
        level thread _ID42331::_ID23499( var_6, _ID42407::_ID16219() );

        if ( isdefined( self._ID31187 ) )
            var_6._ID31187 = self._ID31187;

        if ( isdefined( var_5._ID10318 ) )
            var_6._ID10318 = var_5._ID10318;

        if ( isdefined( var_5._ID627 ) )
            var_6._ID627 = var_5._ID627;

        if ( isdefined( var_5._ID10135 ) )
            var_6 setdefaultdroppitch( var_5._ID10135 );

        if ( isdefined( var_5._ID44128 ) )
        {
            var_6 _meth_857f( 1 );
            var_6 thread [[ var_5._ID44128 ]]();
        }

        self._ID23512[var_7] = var_6;

        if ( var_3 )
            break;
    }

    foreach ( var_10, var_6 in self._ID23512 )
    {
        var_9 = level._ID40207[var_0][var_10]._ID10142;

        if ( isdefined( var_9 ) )
            var_6 _ID39304( var_9 );
    }

    if ( !isdefined( self._ID31495 ) )
        self._ID31495 = 1;

    if ( self._ID31495 == 0 )
        thread _ID1522();
    else
    {
        self._ID31495 = 1;
        thread _ID1523();
    }
}

_ID39304( var_0 )
{
    self._ID10142 = var_0;
}

_ID32486( var_0 )
{
    switch ( self._ID31474 )
    {
        case "friendly":
        case "allies":
            var_0 setturretteam( "allies" );
            break;
        case "enemy":
        case "axis":
            var_0 setturretteam( "axis" );
            break;
        case "team3":
            var_0 setturretteam( "team3" );
            break;
        default:
            break;
    }
}

_ID3160()
{
    self endon( "suspend_drive_anims" );

    if ( !isdefined( self._ID41729 ) )
        self._ID41729 = 1;

    var_0 = self.model;
    var_1 = -1;
    var_2 = undefined;
    self useanimtree( #animtree );

    if ( !isdefined( level._ID40123[var_0] ) )
        return;

    if ( !isdefined( level._ID40126[var_0] ) )
        level._ID40126[var_0] = level._ID40123[var_0];

    self endon( "death" );
    var_3 = level._ID40125[var_0];
    var_4 = 1.0;

    if ( isdefined( level._ID40124 ) && isdefined( level._ID40124[var_0] ) )
        var_4 = level._ID40124[var_0];

    var_5 = self._ID41729;
    var_6 = self;
    var_7 = level._ID40123[var_0];

    for (;;)
    {
        if ( isdefined( level._ID3161 ) )
            var_6 = _ID1462();

        if ( !var_3 )
        {
            if ( isdefined( self._ID36865 ) )
            {
                wait 0.05;
                continue;
            }

            var_6 setanim( level._ID40123[var_0], 1, 0.2, var_4 );
            return;
        }

        var_8 = self vehicle_getspeed();

        if ( self._ID23876 && isdefined( self._ID12231 ) )
            var_8 = self._ID12231;

        if ( var_5 != self._ID41729 )
        {
            var_9 = 0;

            if ( self._ID41729 )
            {
                var_7 = level._ID40123[var_0];
                var_9 = 1 - var_6 _ID16469( level._ID40126[var_0] );
                var_6 clearanim( level._ID40126[var_0], 0 );
            }
            else
            {
                var_7 = level._ID40126[var_0];
                var_9 = 1 - var_6 _ID16469( level._ID40123[var_0] );
                var_6 clearanim( level._ID40123[var_0], 0 );
            }

            var_2 = 0.01;

            if ( var_2 >= 1 || var_2 == 0 )
                var_2 = 0.01;

            var_5 = self._ID41729;
        }

        var_10 = var_8 / var_3;

        if ( var_10 != var_1 )
        {
            var_6 setanim( var_7, 1, 0.05, var_10 );
            var_1 = var_10;
        }

        if ( isdefined( var_2 ) )
        {
            var_6 setanimtime( var_7, var_2 );
            var_2 = undefined;
        }

        wait 0.05;
    }
}

_ID32995( var_0, var_1 )
{
    var_2 = [[ var_1 ]]( var_0.targetname );
    var_2._ID10681 = 0;
}

_ID32837()
{
    foreach ( var_1 in getaiarray() )
    {
        if ( isdefined( var_1._ID31516 ) )
            level._ID40229 = _ID3292( level._ID40229, var_1._ID31516, var_1 );
    }

    foreach ( var_1 in getspawnerarray() )
    {
        if ( isdefined( var_1._ID31516 ) )
            level._ID40232 = _ID3292( level._ID40232, var_1._ID31516, var_1 );
    }

    if ( isdefined( level._ID35137 ) )
    {
        foreach ( var_6 in level._ID36707 )
        {
            if ( isdefined( var_6._ID31516 ) && isdefined( var_6._ID31441 ) )
                level._ID40232 = _ID3292( level._ID40232, var_6._ID31516, var_6 );
        }
    }
}

_ID3292( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0[var_1] ) )
        var_0[var_1] = [];

    var_0[var_1][var_0[var_1].size] = var_2;
    return var_0;
}

_ID20570( var_0 )
{
    return isdefined( var_0.classname ) && var_0.classname == "script_origin";
}

_ID24876()
{
    var_0 = 0;

    if ( isdefined( self.spawnflags ) && self.spawnflags & 1 )
    {
        if ( isdefined( self._ID31106 ) )
            level._ID40095[level._ID40095.size] = self;

        level._ID40269[level._ID40269.size] = self;
    }

    if ( isdefined( self._ID31510 ) && isdefined( self.targetname ) )
    {
        var_1 = undefined;

        if ( isdefined( _ID15745( self.targetname ) ) )
            var_1 = ::_ID15746;

        if ( isdefined( _ID15747( self.targetname ) ) )
            var_1 = ::_ID15748;

        if ( isdefined( var_1 ) )
        {
            _ID32995( self, var_1 );
            var_0 = 1;
        }
        else
            _ID33077( self );

        level._ID40120 = _ID3292( level._ID40120, self._ID31510, self );

        if ( level._ID40120[self._ID31510].size > 2 )
        {

        }
    }

    if ( isdefined( self._ID31231 ) )
    {
        level._ID40139 = _ID3292( level._ID40139, self._ID31231, self );
        self._ID15454 = 0;
    }

    if ( isdefined( self._ID31195 ) )
    {
        if ( !isdefined( level._ID14385[self._ID31195] ) )
            _ID42237::_ID14400( self._ID31195 );
    }

    if ( isdefined( self._ID31191 ) )
    {
        if ( !isdefined( level._ID14385[self._ID31191] ) )
            _ID42237::_ID14400( self._ID31191 );
    }

    if ( isdefined( self._ID31197 ) )
    {
        if ( !isdefined( level._ID14385[self._ID31197] ) )
            _ID42237::_ID14400( self._ID31197 );
    }

    if ( isdefined( self._ID31517 ) || isdefined( self._ID31518 ) || isdefined( self._ID31231 ) || isdefined( self._ID31514 ) )
        var_0 = 1;

    if ( var_0 )
        _ID1931( self );
}

_ID33503()
{
    level._ID40223 = [];
    var_0 = [];
    var_0 = _ID42237::_ID3296( getallvehiclenodes(), getentarray( "script_origin", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, level._ID36707 );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_radius", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_disk", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_multiple", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_lookat", "code_classname" ) );
    _ID42237::_ID3350( var_0, ::_ID24876 );
}

_ID20571( var_0 )
{
    if ( !isdefined( var_0.targetname ) )
        return 0;

    return isdefined( _ID42237::_ID16638( var_0.targetname, "targetname" ) );
}

_ID33511( var_0 )
{
    var_1 = [];
    level._ID13842 = [];

    foreach ( var_3 in var_0 )
    {
        if ( var_3 _ID7403() )
        {
            continue;
            continue;
        }

        var_1[var_1.size] = var_3;
    }

    _ID7357();

    foreach ( var_6 in var_1 )
        thread _ID40173( var_6 );
}

_ID7357()
{
    if ( !level._ID13842.size )
    {
        level._ID13842 = undefined;
        return;
    }

    foreach ( var_1 in level._ID13842 )
    {

    }
}

_ID7403()
{
    if ( isdefined( self._ID31517 ) && !isspawner( self ) )
    {
        level._ID13842[level._ID13842.size] = self;
        return 1;
    }

    return isspawner( self );
}

_ID40188()
{
    var_0 = _ID47115( self.classname );

    if ( !isdefined( level._ID40188 ) || !isdefined( level._ID40188[var_0] ) )
        wait 2;

    if ( isdefined( self._ID31454 ) )
        self.health = self._ID31454;
    else if ( level._ID40188[var_0] == -1 )
        return;
    else if ( isdefined( level._ID40190[var_0] ) && isdefined( level._ID40189[var_0] ) )
        self.health = randomint( level._ID40189[var_0] - level._ID40190[var_0] ) + level._ID40190[var_0];
    else
        self.health = level._ID40188[var_0];

    if ( isdefined( level._ID10533[self.model] ) )
    {
        self.health = 2000;
        self._ID279 = level._ID10533[self.model];
        _ID42231::_ID32948( 1 );
    }
}

_ID32826( var_0 )
{
    if ( isdefined( self._ID23512 ) && self._ID23512.size )
    {
        foreach ( var_2 in self._ID23512 )
            var_2._ID31187 = var_0;
    }
}

_ID16469( var_0 )
{
    var_1 = self getanimtime( var_0 );
    var_2 = getanimlength( var_0 );

    if ( var_1 == 0 )
        return 0;

    return self getanimtime( var_0 ) / getanimlength( var_0 );
}

_ID30228()
{
    var_0 = getanimlength( _ID42407::_ID16120( "rotors" ) );

    for (;;)
    {
        self setanim( _ID42407::_ID16120( "rotors" ), 1, 0, 1 );
        wait(var_0);
    }
}

_ID36864()
{
    self notify( "suspend_drive_anims" );
    var_0 = self.model;
    self clearanim( level._ID40123[var_0], 0 );
    self clearanim( level._ID40126[var_0], 0 );
}

_ID19308()
{
    self useanimtree( #animtree );

    if ( !isdefined( level._ID40169[self.model] ) )
        return;

    foreach ( var_1 in level._ID40169[self.model] )
        self setanim( var_1 );
}

_ID40239()
{
    self endon( "kill_rumble_forever" );
    var_0 = self.classname;
    var_1 = undefined;

    if ( isdefined( self._ID40241 ) )
        var_1 = self._ID40241;
    else if ( isdefined( level._ID40240 ) && isdefined( level._ID40240[var_0] ) )
        var_1 = level._ID40240;
    else if ( isdefined( level._ID40239[var_0] ) )
        var_1 = level._ID40239[var_0];

    if ( !isdefined( var_1 ) )
        return;

    var_2 = var_1.radius * 2;
    var_3 = -1 * var_1.radius;
    var_4 = spawn( "trigger_radius", self.origin + ( 0, 0, var_3 ), 0, var_1.radius, var_2 );
    var_4 enablelinkto();
    var_4 linkto( self );
    self._ID30373 = var_4;
    self endon( "death" );

    if ( !isdefined( self._ID30366 ) )
        self._ID30366 = 1;

    if ( !isdefined( self._ID51381 ) )
        self._ID51381 = 0;

    if ( isdefined( var_1._ID30768 ) )
        self._ID30359 = var_1._ID30768;
    else
        self._ID30359 = 0.15;

    if ( isdefined( var_1._ID310 ) )
        self._ID30332 = var_1._ID310;
    else
        self._ID30332 = 4.5;

    if ( isdefined( var_1.radius ) )
        self._ID30352 = var_1.radius;
    else
        self._ID30352 = 600;

    if ( isdefined( var_1._ID4891 ) )
        self._ID30330 = var_1._ID4891;
    else
        self._ID30330 = 1;

    if ( isdefined( var_1._ID28960 ) )
        self._ID30356 = var_1._ID28960;
    else
        self._ID30356 = 1;

    var_4.radius = self._ID30352;

    for (;;)
    {
        var_4 waittill( "trigger" );

        if ( ( self vehicle_getspeed() == 0 || !self._ID30366 ) && !self._ID51381 )
        {
            wait 0.1;
            continue;
        }

        self _meth_80b5( var_1._ID30328 );

        while ( ( self._ID51381 || self._ID30366 && self vehicle_getspeed() > 0 ) && level.player istouching( var_4 ) )
        {
            earthquake( self._ID30359, self._ID30332, self.origin, self._ID30352 );
            wait(self._ID30330 + randomfloat( self._ID30356 ));
        }

        self _meth_80b6( var_1._ID30328 );
    }
}

_ID48392( var_0 )
{
    self._ID51381 = var_0;
}

_ID40181()
{
    self notify( "kill_treads_forever" );
}

_ID52574()
{
    if ( _ID42411::_ID20763() )
        return;

    thread _ID48082();
}

_ID20924()
{
    var_0 = self._ID1282;

    if ( isdefined( level._ID40175[var_0] ) && level._ID40175[var_0] )
        return 1;
    else
        return 0;
}

_ID48082()
{
    var_0 = self._ID1282;
    self endon( "death" );
    self endon( "stop_turret_shoot" );
    var_1 = 0;
    var_2 = [];

    if ( level._ID40205[self.model].size )
        var_2 = getarraykeys( level._ID40205[self.model] );

    while ( self.health > 0 )
    {
        self waittill( "turret_fire" );
        self notify( "groupedanimevent",  "turret_fire"  );

        if ( !var_2.size )
        {
            self fireweapon();
            continue;
        }

        self fireweapon( var_2[var_1] );
        var_1++;

        if ( var_1 >= var_2.size )
            var_1 = 0;
    }
}

_ID40252()
{
    if ( !isdefined( level._ID40252[self.classname] ) )
        return;

    if ( getdvar( "disable_tank_shock_minspec" ) == "1" )
        return;

    self endon( "death" );
    self endon( "stop_vehicle_shoot_shock" );

    for (;;)
    {
        self waittill( "weapon_fired" );

        if ( isdefined( self._ID33746 ) )
            var_0 = self._ID33746;
        else
            var_0 = 400;

        var_1 = distance( self.origin, level.player.origin );

        if ( var_1 > var_0 )
            continue;

        if ( isdefined( level.player._ID14516 ) && level.player._ID14516 - gettime() > 200 )
            continue;

        if ( isdefined( self._ID33726 ) && self._ID33726 )
            continue;

        if ( isdefined( self._ID33727 ) )
            var_2 = self._ID33727;
        else
        {
            var_3 = var_1 / var_0;
            var_2 = 2 - var_3;
        }

        level.player shellshock( level._ID40252[self.classname], var_2 );
        var_4 = level.player.origin + anglestoforward( level.player.angles ) * 10;
        level.player _meth_859f( var_4 );
        _ID42475::_ID34575( "start_vehicle_shell_shock", var_2 );
    }
}

_ID40250()
{
    var_0 = _ID47115( self.classname );

    if ( !isdefined( self._ID31474 ) && isdefined( level._ID40280[var_0] ) )
        self._ID31474 = level._ID40280[var_0];

    level._ID40317[self._ID31474] = _ID42237::_ID3293( level._ID40317[self._ID31474], self );
}

_ID40160()
{
    self endon( "death" );
    var_0 = self._ID1282;

    if ( !_ID42407::_ID13023( "unloaded" ) )
        _ID42407::_ID13024( "unloaded" );

    for (;;)
    {
        self waittill( "unload",  var_1  );

        if ( isdefined( var_1 ) )
            self._ID39487 = var_1;

        _ID42411::_ID40298( var_1 );
    }
}

_ID16061( var_0 )
{
    var_1 = getvehiclenode( var_0, "targetname" );

    if ( !isdefined( var_1 ) )
        var_1 = getent( var_0, "targetname" );
    else if ( _ID1499() )
    {

    }

    if ( !isdefined( var_1 ) )
    {
        var_2 = _ID42237::_ID16640( var_0, "targetname" );
        var_3 = [];

        if ( isdefined( var_2 ) )
        {
            foreach ( var_5 in var_2 )
            {
                if ( isdefined( var_5._ID31500 ) )
                    continue;

                var_3[var_3.size] = var_5;
            }
        }

        if ( var_3.size == 1 )
            var_1 = var_3[0];
        else
            var_1 = undefined;
    }

    return var_1;
}

_ID40227()
{
    if ( !_ID1499() )
    {
        self resumespeed( 35 );
        return;
    }

    var_0 = undefined;

    if ( isdefined( self._ID9504.target ) )
        var_0 = _ID16061( self._ID9504.target );

    if ( !isdefined( var_0 ) )
        return;

    _ID1676( var_0 );
}

_ID18162()
{
    return isdefined( level._ID40138[self.classname] );
}

_ID17419( var_0 )
{
    if ( !isdefined( self._ID31243 ) )
        return 0;

    var_0 = tolower( var_0 );

    if ( !isdefined( var_0 ) || !issubstr( var_0, "grenade" ) )
        return 0;

    if ( self._ID31243 )
        return 1;
    else
        return 0;
}

_ID6322( var_0 )
{
    if ( !isdefined( self._ID31080 ) )
        return 0;

    var_0 = tolower( var_0 );

    if ( !isdefined( var_0 ) || !issubstr( var_0, "bullet" ) || issubstr( var_0, "explosive" ) )
        return 0;

    if ( self._ID31080 )
        return 1;
    else
        return 0;
}

_ID13649( var_0 )
{
    if ( !isdefined( self._ID31173 ) )
        return 0;

    var_0 = tolower( var_0 );

    if ( !isdefined( var_0 ) || !issubstr( var_0, "explosive" ) )
        return 0;

    if ( self._ID31173 )
        return 1;
    else
        return 0;
}

_ID40254( var_0, var_1 )
{
    return !isdefined( var_0 ) && self._ID31474 != "neutral" || _ID3628( var_0 ) || _ID3629( var_0 ) || _ID42237::_ID20725() || _ID20550( var_0 ) || _ID6322( var_1 ) || _ID13649( var_1 ) || _ID17419( var_1 ) || var_1 == "MOD_MELEE" || var_1 == "MOD_MELEE_ALT";
}

_ID15010()
{
    self endon( "death" );

    if ( !isdefined( level._ID39577 ) )
        self endon( "stop_friendlyfire_shield" );

    var_0 = _ID47115( self.classname );

    if ( isdefined( level._ID40085[var_0] ) && !isdefined( self._ID31080 ) )
        self._ID31080 = level._ID40085[var_0];

    if ( isdefined( level._ID40158[var_0] ) && !isdefined( self._ID31243 ) )
        self._ID31243 = level._ID40158[var_0];

    if ( isdefined( self._ID31353 ) )
    {
        self._ID31353 = 1;
        self._ID6293 = 5000;
        self.health = 350;
    }
    else
        self._ID31353 = 0;

    self._ID18313 = 20000;
    self.health = self.health + self._ID18313;
    self._ID9497 = self.health;
    var_1 = undefined;
    var_2 = undefined;

    for ( var_3 = undefined; self.health > 0; var_3 = undefined )
    {
        self waittill( "damage",  var_4, var_1, var_5, var_6, var_2, var_7, var_8, var_9, var_10, var_3  );

        foreach ( var_12 in self._ID9601 )
            thread [[ var_12 ]]( var_4, var_1, var_5, var_6, var_2, var_7, var_8 );

        if ( isdefined( var_1 ) )
            var_1 _ID42354::_ID29418();

        if ( _ID40254( var_1, var_2 ) || _ID1497() )
            self.health = self._ID9497;
        else if ( _ID18162() )
        {
            _ID29396( var_1, var_4 );
            self._ID9497 = self.health;
        }
        else if ( _ID18717( var_2 ) )
        {
            self.health = self._ID9497;
            self._ID6293 = self._ID6293 - var_4;
        }
        else
            self._ID9497 = self.health;

        if ( _ID42231::_ID16207( var_2 ) == "splash" )
            self._ID30065 = 1;
        else
            self._ID30065 = undefined;

        if ( self.health < self._ID18313 && !isdefined( self._ID40270 ) )
            break;

        var_4 = undefined;
        var_1 = undefined;
        var_5 = undefined;
        var_6 = undefined;
        var_2 = undefined;
        var_7 = undefined;
        var_8 = undefined;
        var_9 = undefined;
        var_10 = undefined;
    }

    self notify( "death",  var_1, var_2, var_3  );
}

_ID18717( var_0 )
{
    if ( !self._ID31353 )
        return 0;

    if ( self._ID6293 <= 0 )
        return 0;

    if ( !isdefined( var_0 ) )
        return 0;

    if ( !issubstr( var_0, "BULLET" ) )
        return 0;
    else
        return 1;
}

_ID29396( var_0, var_1 )
{
    var_2 = anglestoforward( self.angles );
    var_3 = vectornormalize( var_0.origin - self.origin );

    if ( vectordot( var_2, var_3 ) > 0.86 )
        self.health = self.health + int( var_1 * level._ID40138[self.classname] );
}

_ID1497()
{
    if ( isdefined( self._ID16986 ) && self._ID16986 )
        return 1;
    else
        return 0;
}

_ID20550( var_0 )
{
    if ( !isdefined( self._ID31024 ) )
        return 0;

    if ( isdefined( var_0 ) && isai( var_0 ) && self._ID31024 == 1 )
        return 1;
    else
        return 0;
}

_ID3629( var_0 )
{
    if ( isdefined( self._ID31474 ) && self._ID31474 == "allies" && isdefined( var_0 ) && isplayernumber( var_0 ) )
        return 1;
    else if ( isai( var_0 ) && var_0.team == self._ID31474 )
        return 1;
    else
        return 0;
}

_ID3628( var_0 )
{
    if ( isdefined( var_0 ) && isdefined( var_0._ID31474 ) && isdefined( self._ID31474 ) && var_0._ID31474 == self._ID31474 )
        return 1;

    return 0;
}

_ID40082()
{
    return _ID1671();
}

_ID41730( var_0 )
{
    self._ID41729 = _ID42237::_ID37527( var_0 <= 0, 0, 1 );
}

_ID22795()
{
    if ( isdefined( level._ID22796 ) )
    {
        thread [[ level._ID22796 ]]();
        return;
    }

    var_0 = self.model;

    if ( !isdefined( level._ID40116[var_0] ) )
        return;

    self endon( "death" );

    for (;;)
    {
        self waittill( "weapon_fired" );
        playfxontag( level._ID40116[var_0], self, "tag_engine_exhaust" );
        var_1 = self gettagorigin( "tag_flash" );
        var_2 = physicstrace( var_1, var_1 + ( 0, 0, -128 ) );
        physicsexplosionsphere( var_2, 192, 100, 1 );
    }
}

_ID28133()
{
    self endon( "death" );
    var_0 = self.model;

    if ( !isdefined( level._ID40132[var_0] ) )
        return;

    var_1 = 0.1;

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        if ( !isalive( self ) )
            return;

        playfxontag( level._ID40132[var_0], _ID1462(), "tag_engine_exhaust" );
        wait(var_1);
    }
}

_ID16485( var_0 )
{
    var_1 = undefined;
    var_2 = self._ID1282;

    if ( isdefined( self._ID40264 ) )
    {
        if ( isdefined( self._ID40264._ID11577 ) && self._ID11577 )
            return;
    }

    if ( isdefined( self.target ) )
    {
        var_1 = getvehiclenode( self.target, "targetname" );

        if ( !isdefined( var_1 ) )
        {
            var_3 = getentarray( self.target, "targetname" );

            foreach ( var_5 in var_3 )
            {
                if ( var_5.code_classname == "script_origin" )
                {
                    var_1 = var_5;
                    break;
                }
            }
        }

        if ( !isdefined( var_1 ) )
            var_1 = _ID42237::_ID16638( self.target, "targetname" );
    }

    if ( !isdefined( var_1 ) )
    {
        if ( _ID1499() )
        {
            if ( isdefined( self._ID40165 ) )
                self [[ self._ID40165 ]]();
            else
                self vehicle_setspeed( 60, 20, 10 );
        }

        return;
    }

    self._ID3577 = var_1;

    if ( !_ID1499() )
    {
        self.origin = var_1.origin;

        if ( !isdefined( var_0 ) )
            self attachpath( var_1 );
    }
    else if ( isdefined( self.speed ) )
        self vehicle_setspeedimmediate( self.speed, 20 );
    else if ( isdefined( var_1.speed ) )
    {
        if ( isdefined( self._ID40165 ) )
            self [[ self._ID40165 ]]( var_1.speed, var_1._ID31020, var_1._ID31118 );
        else
        {
            var_7 = 20;
            var_8 = 10;

            if ( isdefined( var_1._ID31020 ) )
                var_7 = var_1._ID31020;

            if ( isdefined( var_1._ID31118 ) )
                var_7 = var_1._ID31118;

            self vehicle_setspeedimmediate( var_1.speed, var_7, var_8 );
        }
    }
    else if ( isdefined( self._ID40165 ) )
        self [[ self._ID40165 ]]();
    else
        self vehicle_setspeed( 60, 20, 10 );

    thread _ID1676( undefined, _ID1499() );
}

_ID1677( var_0 )
{
    var_1 = self._ID40271[var_0];
    self._ID40271[var_0] = undefined;

    if ( self._ID40271.size )
        return;

    self resumespeed( var_1 );
}

_ID1679( var_0, var_1, var_2 )
{
    if ( !isdefined( self._ID40271 ) )
        self._ID40271 = [];

    self vehicle_setspeed( 0, var_1, var_2 );
    self._ID40271[var_0] = var_1;
}

_ID39493( var_0 )
{
    self endon( "death" );

    if ( isdefined( self._ID13019 ) && isdefined( self._ID13019["prep_unload"] ) && _ID42407::_ID13019( "prep_unload" ) )
        return;

    if ( issubstr( self.classname, "snowmobile" ) )
    {
        while ( self.veh_speed > 15 )
            wait 0.05;
    }

    if ( !isdefined( var_0._ID31197 ) && !isdefined( var_0._ID916 ) )
        self notify( "newpath" );

    var_1 = getnode( var_0.targetname, "target" );

    if ( isdefined( var_1 ) && self._ID29965.size )
    {
        foreach ( var_3 in self._ID29965 )
        {
            if ( isai( var_3 ) )
                var_3 thread _ID42372::_ID16964( var_1 );
        }
    }

    if ( _ID1499() )
    {
        if ( isdefined( self._ID26242 ) )
        {
            self setmaxpitchroll( 0, 0 );
            _ID41097();
            _ID42237::_ID10192( 5, ::setmaxpitchroll, 15, 15 );
        }
        else
        {
            self sethoverparams( 0, 0, 0 );
            _ID41147( var_0 );
        }
    }
    else if ( !isdefined( self._ID24487 ) || !self._ID24487 )
        self vehicle_setspeed( 0, 35 );

    if ( isdefined( var_0.script_noteworthy ) )
    {
        if ( var_0.script_noteworthy == "wait_for_flag" )
            _ID42237::_ID14413( var_0._ID31190 );
    }

    _ID49934( "unloading" );
    _ID1680( var_0._ID31497 );

    if ( _ID42412::_ID29967( var_0._ID31497 ) )
    {
        if ( isdefined( self._ID26242 ) )
        {
            if ( isdefined( var_0.script_noteworthy ) )
            {
                if ( var_0.script_noteworthy == "para_unload_stop" )
                    self waittill( "unloaded" );
            }
        }
        else
            self waittill( "unloaded" );
    }

    if ( isdefined( var_0._ID31197 ) || isdefined( var_0._ID916 ) )
        return;

    if ( isdefined( self ) )
        thread _ID40227();

    _ID49934( "unloaded" );
}

_ID24382( var_0 )
{
    var_1 = _ID47115( self.classname );

    if ( !isdefined( self._ID23512 ) )
        return;

    if ( self._ID23512.size == 0 )
        return;

    foreach ( var_4, var_3 in self._ID23512 )
    {
        var_3 unlink();
        var_3 linkto( var_0, level._ID40207[var_1][var_4]._ID1067, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    }
}

_ID40217()
{
    self._ID3577 = undefined;
    self notify( "newpath" );
    self setgoalyaw( _ID42237::_ID14539( self.angles )[1] );
    self setvehgoalpos( self.origin + ( 0, 0, 4 ), 1 );
}

_ID41097()
{
    var_0 = 4;
    var_1 = 400;
    var_2 = gettime() + var_1;

    while ( isdefined( self ) )
    {
        var_3 = self.origin[2] - self._ID9504.origin[2];

        if ( abs( var_3 ) <= var_0 )
            return;
        else
            var_2 = gettime() + var_1;

        if ( gettime() > var_2 )
        {
            iprintln( "Chopper parachute unload: waittill_dropoff_height timed out!" );
            break;
        }

        wait 0.05;
    }
}

_ID9833()
{
    if ( self.health > 0 )
        self._ID30113 = 1;
}

_ID9832()
{
    self._ID30113 = undefined;
    self notify( "deathrolloff" );
}

_ID1522()
{
    self._ID31495 = 0;

    if ( _ID1499() && _ID18227() )
    {
        if ( isdefined( level._ID7522 ) )
        {
            self thread [[ level._ID7523 ]]();
            return;
        }
    }

    if ( !isdefined( self._ID23512 ) )
        return;

    foreach ( var_2, var_1 in self._ID23512 )
    {
        if ( isdefined( var_1._ID31187 ) )
            var_1._ID31187 = 0;

        var_1 setmode( "manual" );
    }
}

_ID1523()
{
    self._ID31495 = 1;

    if ( _ID1499() && _ID18227() )
    {
        self thread [[ level._ID7524 ]]();
        return;
    }

    if ( !isdefined( self._ID23512 ) )
        return;

    foreach ( var_1 in self._ID23512 )
    {
        var_1 show();

        if ( isdefined( var_1._ID31187 ) )
            var_1._ID31187 = 1;

        if ( isdefined( var_1._ID10142 ) )
            var_1 setmode( var_1._ID10142 );
        else
            var_1 setmode( "auto_nonai" );

        _ID32486( var_1 );
    }
}

_ID1458()
{
    if ( _ID42237::_ID20725() )
        _ID42231::_ID14744();
    else
    {
        self kill();
        self setcandamage( 0 );
    }
}

_ID16054()
{
    if ( !isdefined( self._ID31516 ) )
        return [];

    if ( !isdefined( level._ID40229[self._ID31516] ) )
        return [];

    return level._ID40229[self._ID31516];
}

_ID16055()
{
    var_0 = [];

    if ( isdefined( self.target ) )
    {
        var_1 = getentarray( self.target, "targetname" );

        foreach ( var_3 in var_1 )
        {
            if ( !issubstr( var_3.code_classname, "actor" ) )
                continue;

            if ( !( var_3.spawnflags & 1 ) )
                continue;

            if ( isdefined( var_3._ID11550 ) )
                continue;

            var_0[var_0.size] = var_3;
        }

        if ( isdefined( level._ID35137 ) )
        {
            var_1 = _ID42237::_ID16640( self.target, "targetname" );

            foreach ( var_3 in var_1 )
            {
                if ( isdefined( var_3._ID31441 ) )
                    var_0[var_0.size] = var_3;
            }
        }
    }

    if ( !isdefined( self._ID31516 ) )
        return var_0;

    if ( isdefined( level._ID40232[self._ID31516] ) )
        var_0 = _ID42237::_ID3296( var_0, level._ID40232[self._ID31516] );

    return var_0;
}

_ID1676( var_0, var_1, var_2 )
{
    if ( _ID1499() )
        _ID40219( var_0, var_1, var_2 );
    else
        _ID40220( var_0 );
}

_ID1481( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = self;

    if ( isdefined( var_0._ID31518 ) && level._ID40268.size > 0 )
        level._ID40268[var_0._ID31518] = _ID42237::_ID3321( level._ID40268[var_0._ID31518], var_0 );

    var_0 endon( "death" );

    if ( isdefined( var_0._ID18249 ) )
        return;
    else
        var_0._ID18249 = 1;

    var_0 _ID42407::_ID916();
    var_0 notify( "start_vehiclepath" );

    if ( var_0 _ID1499() )
        var_0 notify( "start_dynamicpath" );
    else
    {
        var_1 = getvehiclenode( var_0.target, "targetname" );

        if ( isdefined( var_1 ) )
        {
            var_0 thread _ID1676( var_1 );
            var_0 startpath( var_1 );
        }
        else
            var_0 startpath();
    }
}

_ID1586( var_0 )
{
    var_1 = _ID1474( var_0 );
    var_2 = [];

    foreach ( var_4 in var_1 )
        var_2[var_2.size] = _ID1678( var_4 );

    level notify( "vehiclegroup spawned" + var_0,  var_2  );
    return var_2;
}

_ID1678( var_0 )
{
    if ( !isspawner( var_0 ) )
        return;

    var_1 = var_0 vehicle_dospawn();

    if ( !isdefined( var_0._ID35237 ) )
        var_0._ID35237 = 0;

    var_0._ID35237++;
    var_0._ID40263 = var_1;
    var_0._ID21855 = var_1;
    var_0 thread _ID29583();
    var_1._ID40264 = var_0;

    if ( isdefined( var_0._ID39045 ) )
        var_1._ID39045 = var_0._ID39045;

    thread _ID40173( var_1 );
    var_0 notify( "spawned",  var_1  );

    if ( isdefined( var_1.script_noteworthy ) )
        level notify( "new_vehicle_spawned" + var_1.script_noteworthy,  var_1  );

    return var_1;
}

_ID21315( var_0 )
{
    var_0 waittill( "trigger" );
    _ID42407::_ID3304( level._ID40183[var_0._ID31263] );
    level._ID40183[var_0._ID31263] = [];
}

_ID28370()
{
    var_0 = [];
    var_1 = getentarray( "script_vehicle", "code_classname" );
    level._ID24709 = [];
    var_2 = [];
    var_0 = [];

    if ( !isdefined( level._ID40313 ) )
        level._ID40313 = [];

    foreach ( var_4 in var_1 )
    {
        var_4._ID1282 = tolower( var_4._ID1282 );

        if ( var_4._ID1282 == "empty" )
            continue;

        if ( isdefined( var_4.spawnflags ) && var_4.spawnflags & 1 )
            var_2[var_2.size] = var_4;

        var_0[var_0.size] = var_4;

        if ( !isdefined( level._ID40313[var_4._ID1282] ) )
            level._ID40313[var_4._ID1282] = [];

        var_5 = "classname: " + var_4.classname;
        _ID28394( var_5, var_4 );
    }

    if ( level._ID24709.size > 0 )
    {
        foreach ( var_8 in level._ID24709 )
        {

        }

        level waittill( "never" );
    }

    return var_0;
}

_ID28394( var_0, var_1 )
{
    var_2 = var_1 _ID47115( var_1.classname );

    if ( isdefined( level._ID40313[var_1._ID1282][var_2] ) )
        return;

    if ( var_1.classname == "script_vehicle" )
        return;

    var_3 = 0;

    foreach ( var_5 in level._ID24709 )
    {
        if ( var_5 == var_0 )
            var_3 = 1;
    }

    if ( !var_3 )
        level._ID24709[level._ID24709.size] = var_0;
}

_ID33137()
{
    if ( isdefined( level._ID40251 ) )
        return;

    level._ID40251 = 1;
    level._ID40117 = [];
    level._ID40268 = [];
    level._ID40229 = [];
    level._ID40115 = [];
    level._ID40232 = [];
    level._ID40139 = [];
    level._ID40095 = [];
    level._ID40198 = [];
    level._ID40120 = [];
    level._ID40269 = [];
    level._ID40183 = [];
    level._ID18441 = getentarray( "helicopter_crash_location", "targetname" );
    level._ID18441 = _ID42237::_ID3296( level._ID18441, _ID42407::_ID16641( "helicopter_crash_location", "targetname" ) );
    level._ID28028 = spawn( "script_origin", ( 0, 0, 0 ) );
    level._ID50298 = level._ID28028;
    level._ID40317 = [];
    level._ID40317["allies"] = [];
    level._ID40317["axis"] = [];
    level._ID40317["neutral"] = [];
    level._ID40317["team3"] = [];

    if ( !isdefined( level._ID40280 ) )
        level._ID40280 = [];

    if ( !isdefined( level._ID40113 ) )
        level._ID40113 = [];

    if ( !isdefined( level._ID40110 ) )
        level._ID40110 = [];

    if ( !isdefined( level._ID40123 ) )
        level._ID40123 = [];

    if ( !isdefined( level._ID40126 ) )
        level._ID40126 = [];

    if ( !isdefined( level._ID3623 ) )
        level._ID3623 = [];

    if ( !isdefined( level._ID40309 ) )
        level._ID40309 = [];

    if ( !isdefined( level._ID40310 ) )
        level._ID40310 = [];

    if ( !isdefined( level._ID40164 ) )
        level._ID40164 = [];

    if ( !isdefined( level._ID40291 ) )
        level._ID40291 = [];

    if ( !isdefined( level._ID40239 ) )
        level._ID40239 = [];

    if ( !isdefined( level._ID40240 ) )
        level._ID40240 = [];

    if ( !isdefined( level._ID40207 ) )
        level._ID40207 = [];

    if ( !isdefined( level._ID40175 ) )
        level._ID40175 = [];

    if ( !isdefined( level._ID40105 ) )
        level._ID40105 = [];

    if ( !isdefined( level._ID1672 ) )
        level._ID1672 = [];

    if ( !isdefined( level._ID40300 ) )
        level._ID40300 = [];

    if ( !isdefined( level._ID40069 ) )
        level._ID40069 = [];

    if ( !isdefined( level._ID40301 ) )
        level._ID40301 = [];

    if ( !isdefined( level._ID40132 ) )
        level._ID40132 = [];

    if ( !isdefined( level._ID40116 ) )
        level._ID40116 = [];

    if ( !isdefined( level._ID40252 ) )
        level._ID40252 = [];

    if ( !isdefined( level._ID40166 ) )
        level._ID40166 = [];

    if ( !isdefined( level._ID40138 ) )
        level._ID40138 = [];

    if ( !isdefined( level._ID10533 ) )
        level._ID10533 = [];

    if ( !isdefined( level._ID40296 ) )
        level._ID40296 = [];

    if ( !isdefined( level._ID40158 ) )
        level._ID40158 = [];

    if ( !isdefined( level._ID40085 ) )
        level._ID40085 = [];

    if ( !isdefined( level._ID40108 ) )
        level._ID40108 = [];

    if ( !isdefined( level._ID40104 ) )
        level._ID40104 = [];

    if ( !isdefined( level._ID40169 ) )
        level._ID40169 = [];

    if ( !isdefined( level._ID18451 ) )
        level._ID18451 = [];

    if ( !isdefined( level._ID2458 ) )
        level._ID2458 = [];

    if ( !isdefined( level._ID40259 ) )
        level._ID40259 = [];

    if ( !isdefined( level._ID49086 ) )
        level._ID49086 = [];

    if ( !isdefined( level._ID48095 ) )
        level._ID48095 = [];

    _ID42412::_ID32840();
}

_ID33617( var_0, var_1 )
{
    return _ID1609( var_0, var_1 );
}

_ID40192( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 512;

    var_1 = self.origin + ( 0, 0, var_0 );
    self neargoalnotifydist( 10 );
    _ID33617( var_1, 1 );
    self waittill( "goal" );
}

_ID24335( var_0, var_1 )
{
    var_2 = _ID9829();
    var_2 unlink();

    if ( isdefined( var_1 ) )
        var_2 linkto( var_0, var_1 );
    else
        var_2 linkto( var_0 );
}

_ID23867()
{
    var_0 = self._ID23875;
    var_0 endon( "death" );
    var_0 endon( "stop_model_dummy_death" );

    while ( isdefined( self ) )
    {
        self waittill( "death" );
        waitframe;
    }

    var_0 delete();
}

_ID24347( var_0, var_1 )
{
    if ( !isdefined( self._ID22343 ) )
        return;

    if ( self._ID22343.size == 0 )
        return;

    var_2 = _ID50297();

    if ( !isdefined( var_2 ) )
        return;

    foreach ( var_4 in var_2 )
    {
        var_0 _ID22350( var_4, self.classname );
        thread _ID22345( var_4, self.classname );
    }
}

_ID50297()
{
    if ( !isdefined( level._ID40194[self.classname] ) )
        return;

    if ( !isdefined( self._ID22343 ) )
        return;

    var_0 = [];
    var_1 = getarraykeys( self._ID22343 );
    var_2 = getarraykeys( level._ID40194[self.classname] );

    foreach ( var_4 in var_2 )
    {
        if ( var_4 == "all" )
            continue;

        foreach ( var_6 in var_1 )
        {
            if ( _ID42237::_ID3303( level._ID40194[self.classname][var_4], var_6 ) )
            {
                var_0[var_0.size] = var_4;
                break;
            }
        }
    }

    return var_0;
}

_ID35201( var_0 )
{
    var_1 = [];
    var_2 = getentarray( var_0, "targetname" );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( !isdefined( var_5.code_classname ) || var_5.code_classname != "script_vehicle" )
            continue;

        if ( isspawner( var_5 ) )
            var_1[var_1.size] = _ID1678( var_5 );
    }

    return var_1;
}

_ID49431( var_0, var_1 )
{
    if ( isdefined( self._ID34235 ) && self._ID34235 )
        return;

    var_2 = _ID46806( var_0 );

    if ( !isdefined( var_2 ) )
        return;

    var_3 = _ID51989( var_2, var_1 );
    _ID47230( var_3, var_2 );
}

_ID46806( var_0 )
{
    if ( isdefined( self._ID49086 ) )
        return self._ID49086;

    if ( isdefined( self._ID43536 ) )
    {
        var_1 = var_0 + "_" + self._ID43536;

        if ( isdefined( level._ID49086[var_1] ) )
            return level._ID49086[var_1];
    }

    if ( isdefined( level._ID49086[var_0] ) )
        return level._ID49086[var_0];

    return undefined;
}

_ID51989( var_0, var_1 )
{
    if ( isdefined( self._ID54718 ) )
        return self._ID54718;

    if ( var_0._ID50561 )
        return _ID46227( var_0, var_1 );

    return _ID42237::_ID28945( var_0._ID3197 );
}

_ID46227( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        return _ID42237::_ID28945( var_0._ID3197 );

    var_2 = _ID51205( var_1 );

    if ( !isarray( var_0._ID3197[var_2] ) )
        return var_0._ID3197[var_2];

    return _ID42237::_ID28945( var_0._ID3197[var_2] );
}

_ID51205( var_0 )
{
    var_1 = vectornormalize( anglestoforward( self.angles ) );
    var_2 = vectortoangles( var_1 );
    var_3 = vectortoangles( var_0.origin - self.origin );
    var_4 = var_2[1] - var_3[1];
    var_4 += 360;
    var_4 = int( var_4 ) % 360;

    if ( var_4 > 315 || var_4 < 45 )
        return "front";
    else if ( var_4 < 135 )
        return "right";
    else if ( var_4 < 225 )
        return "rear";

    return "left";
}

_ID47230( var_0, var_1 )
{
    self endon( "death" );
    _ID42407::_ID13024( "kill_deathanim_active" );
    _ID42407::_ID13025( "kill_deathanim_active" );
    self notify( "kill_deathanim",  var_0  );

    if ( isdefined( var_1._ID9798 ) && var_1._ID9798 )
        self._ID9798 = 1;

    _ID42407::_ID13024( "kill_deathanim_force_crash_end" );

    if ( isdefined( var_1._ID49972 ) && var_1._ID49972 )
        _ID42407::_ID13025( "kill_deathanim_force_crash_end" );

    self setcandamage( var_1._ID45713 );
    thread _ID48661( var_1._ID51516, var_0 );

    if ( isdefined( var_1._ID48589 ) )
    {
        foreach ( var_3 in var_1._ID48589 )
            _ID43911( var_0, var_3 );
    }

    if ( var_1._ID54538 )
        self vehicle_turnengineoff();

    if ( var_1._ID47124 )
        self vehicle_setspeed( var_1._ID43258, var_1._ID50729, var_1._ID51665 );

    self useanimtree( #animtree );

    if ( var_1._ID7836 )
        self clearanim( %root, var_1._ID49128 );

    var_5 = _ID1462();
    var_5 setanim( var_0, 1, 0, 1 );
    _ID51273( var_0, var_1 );
    _ID42407::_ID13021( "kill_deathanim_active" );
}

_ID51273( var_0, var_1 )
{
    self endon( "death" );

    if ( !var_1._ID53560 )
        return;

    var_2 = 0;

    if ( animhasnotetrack( var_0, "stop_deathanim_crash_delay" ) )
    {
        var_3 = getanimlength( var_0 );
        var_4 = getnotetracktimes( var_0, "stop_deathanim_crash_delay" );
        var_2 = var_3 * var_4[0];
    }
    else if ( var_1._ID51068 > 0 )
        var_2 = var_1._ID51068;
    else
        var_2 = getanimlength( var_0 );

    wait(var_2);
}

_ID48661( var_0, var_1 )
{
    if ( _ID42407::_ID13019( "kill_deathanim_force_crash_end" ) )
        self waittill( "death_finished" );
    else
    {
        if ( var_0 < 0 )
            return;

        if ( var_0 == 0 )
            var_0 = getanimlength( var_1 );

        wait(var_0);
    }

    if ( isdefined( self ) && !_func_2a5( self ) )
        self delete();
}

_ID43911( var_0, var_1 )
{
    self endon( "death" );

    if ( !animhasnotetrack( var_0, var_1 ) )
        return;

    var_2 = getanimlength( var_0 );
    var_3 = getnotetracktimes( var_0, var_1 );
    var_4 = 0;

    foreach ( var_6 in var_3 )
    {
        var_7 = var_2 * var_6;
        wait(var_7 - var_4);
        level notify( var_1,  self  );
        var_4 += var_7;
    }
}

_ID49934( var_0 )
{
    self._ID43536 = var_0;
}

_ID39511()
{
    if ( !isdefined( self._ID18185 ) )
        return;

    while ( isdefined( self._ID22343 ) && self._ID22343.size )
        wait 0.05;
}

_ID53353( var_0, var_1 )
{
    if ( isdefined( var_0 ) && isdefined( var_1 ) )
    {
        if ( var_1 != var_0 )
            return 1;
    }
    else if ( !isdefined( var_0 ) )
        return 1;

    return 0;
}

_ID45192()
{
    if ( isdefined( self._ID48402 ) && isdefined( self._ID53711 ) && self._ID53711 == 1 )
    {
        self notify( "stop sound" + self._ID48402 );
        self._ID53711 = 0;
        self._ID48402 = undefined;
    }
}

_ID48966()
{
    self._ID23875 = spawn( "script_model", self.origin );
    self._ID23875 setmodel( self.model );
    self._ID23875.origin = self.origin;
    self._ID23875.angles = self.angles;
    self._ID23875 useanimtree( #animtree );
    self._ID23875 hide();
    self._ID23875 linkto( self );
}

_ID45756( var_0 )
{
    var_1 = "vehicles";

    if ( isdefined( self._ID3189 ) )
        var_1 = var_1;

    var_2 = strtok( var_0.script_vehicle_anim, ":;, " );
    var_3 = var_2[0];

    if ( !isdefined( level._ID30895[var_1][var_3] ) )
        return;

    var_4 = "body_animate_jnt";
    _ID42411::_ID40283( var_4, 1 );
    _ID51587( var_4 );
    self _meth_8462();
    self makevehiclenotcollidewithplayers( 1 );
    self setcontents( 0 );
    var_5 = self vehicle_getvelocity();
    self vehicle_setspeedimmediate( 0, 3000, 3000 );
    self._ID23875 _ID42407::_ID3428( var_1 );
    var_6 = self._ID23875;

    if ( var_2.size > 1 )
    {
        var_7 = _ID42237::_ID16012( var_2[1] );

        if ( isdefined( var_7 ) )
            var_6 = var_7;
    }

    if ( var_6 != self._ID23875 )
    {
        var_8 = length( var_5 );
        var_9 = distance( self.origin, var_6.origin );
        var_10 = var_9 / var_8;
        self._ID23875 moveto( var_6.origin, var_10 );
        self._ID23875 rotateto( var_6.angles, var_10 );
        var_11 = int( var_10 / 0.05 ) * 0.05;

        if ( var_11 >= 0.05 )
            wait(var_11);
    }

    var_6 _ID42259::_ID3111( self._ID23875, var_3 );
}

_ID51587( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        self._ID46828 = spawn( "script_model", self.origin );
        self._ID46828 setmodel( self.model );
        thread _ID44183();
        var_1 = self._ID23875.origin - self._ID23875 gettagorigin( var_0 );
        var_2 = self._ID23875.angles - self._ID23875 gettagangles( var_0 );
        self._ID46828 linkto( self._ID23875, var_0, var_1, var_2 );
        self._ID46828 _meth_8461();
        self._ID46828 hide();
        self._ID46828 dontinterpolate();
        self._ID23875 notsolid();
    }
    else
        self._ID23875 _meth_8461();
}

_ID44183()
{
    var_0 = self._ID46828;
    var_0 endon( "death" );
    var_0 endon( "stop_model_dummy_death" );

    while ( isdefined( self ) )
    {
        self waittill( "death" );
        waitframe;
    }

    var_0 delete();
}

_ID47115( var_0 )
{
    var_1 = var_0;

    if ( isdefined( self._ID54633 ) )
        var_1 = self._ID54633;
    else if ( ( var_0 == "script_vehicle" || var_0 == "script_model" ) && isdefined( self._ID1282 ) )
    {
        var_1 = "script_vehicle_" + self._ID1282;
        self._ID54633 = var_1;
    }

    return var_1;
}

_ID53443( var_0 )
{
    if ( level._ID52919.size >= 8 )
        return;

    var_1 = _ID42407::_ID35192();

    if ( isdefined( var_0 ) )
        var_1 vehphys_setspeed( var_0 );

    var_1 thread _ID40083();
    var_1 endon( "death" );
    var_1._ID11584 = 1;
    var_1 _ID42411::_ID17021( var_1 );
    var_1 _ID49180();
}

_ID49180()
{
    self endon( "script_crash_vehicle" );
    _ID42237::_ID41098( "enable_spline_path", "reached_end_node" );
    var_0 = _ID42411::_ID46021( self.origin );
    var_0 thread [[ level._ID44744 ]]( self );
}

_ID51941()
{
    var_0 = getentarray( self.target, "targetname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( var_3.code_classname == "info_vehicle_node" )
            continue;

        var_1[var_1.size] = var_3;
    }

    var_1 = _ID42237::_ID15566( self.origin, var_1 );

    foreach ( var_7, var_6 in var_1 )
        var_6 thread _ID42407::_ID1947( _ID42414::_ID17587, self, var_7 );

    _ID42237::_ID3350( var_1, _ID42407::_ID35014 );
    self waittill( "guy_entered" );
    wait 3;
    thread _ID40083();

    if ( !self._ID29965.size )
        return;

    _ID42411::_ID17021();
    _ID49180();
}

_ID52341()
{
    var_0 = spawnstruct();
    var_0._ID37062 = [ "tag_wheel_back_left", "tag_wheel_back_right" ];
    var_1 = [];
    var_1["back_left"] = var_0;
    _ID53740( var_1 );
}

_ID49037()
{
    var_0 = [];
    var_0["back_left"] = spawnstruct();
    var_0["back_right"] = spawnstruct();

    foreach ( var_3, var_2 in var_0 )
        var_2._ID37062 = "tag_wheel_" + var_3;

    _ID53740( var_0 );
}

_ID53740( var_0 )
{
    var_1 = [ "death", "kill_treads_forever" ];

    foreach ( var_3 in var_1 )
        self endon( var_3 );

    var_5 = undefined;

    foreach ( var_8, var_7 in var_0 )
    {
        var_7._ID46120 = _ID42237::_ID35164();
        thread _ID46848( var_7._ID46120, var_1 );
        var_7._ID52939 = undefined;
    }

    for (;;)
    {
        var_9 = _ID1462();

        foreach ( var_8, var_7 in var_0 )
            var_7._ID53138 = _ID16037( var_9, var_8 );

        if ( isdefined( var_5 ) || isdefined( var_9 ) )
        {
            var_11 = _ID47938( var_5, var_9 );

            if ( var_11 )
                var_5 = undefined;

            var_12 = _ID47938( var_9, var_5 );

            if ( var_12 )
                var_5 = var_9;

            var_13 = self vehicle_getspeed();
            var_14 = !( var_13 <= 0 || isdefined( self._ID49311 ) && var_13 < self._ID49311 );

            foreach ( var_7 in var_0 )
            {
                var_7 _ID52232( !var_14 || var_11 );

                if ( var_11 )
                    var_7 _ID43314();

                if ( var_12 )
                    var_7 _ID43338( var_9 );

                if ( var_14 )
                    var_7 _ID47820( var_12 );
            }
        }

        waittillframeend;
    }
}

_ID47938( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    return !isdefined( var_1 ) || var_0 != var_1;
}

_ID43314()
{
    self._ID46120 unlink();
}

_ID43338( var_0 )
{
    var_1 = undefined;
    var_2 = ( 0, 0, 0 );

    if ( isarray( self._ID37062 ) )
    {
        var_1 = self._ID37062[0];
        var_3 = ( 0, 0, 0 );

        foreach ( var_5 in self._ID37062 )
            var_3 += var_0 gettagorigin( var_5 );

        var_3 /= self._ID37062.size;
        var_3 = var_0 _ID42407::_ID41812( var_3 );
        var_2 = var_0 gettagorigin( var_1 );
        var_2 = var_0 _ID42407::_ID41812( var_2 );
        var_2 = var_3 - var_2;
    }
    else
        var_1 = self._ID37062;

    self._ID46120 linkto( var_0, var_1, var_2, ( -90, 180, 0 ) );
}

_ID52232( var_0 )
{
    var_0 = isdefined( var_0 ) && var_0;
    var_1 = isdefined( self._ID52939 ) && ( var_0 || _ID47938( self._ID52939, self._ID53138 ) );

    if ( var_1 )
        _ID53291();
}

_ID53291()
{
    stopfxontag( self._ID52939, self._ID46120, "tag_origin" );
    self._ID52939 = undefined;
}

_ID47820( var_0 )
{
    var_0 = isdefined( var_0 ) && var_0;
    var_1 = isdefined( self._ID53138 ) && ( var_0 || _ID47938( self._ID53138, self._ID52939 ) );

    if ( var_1 )
        _ID51838();
}

_ID51838()
{
    playfxontag( self._ID53138, self._ID46120, "tag_origin" );
    self._ID52939 = self._ID53138;
}

_ID46848( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = [ "death" ];
    else if ( !isarray( var_1 ) )
        var_1 = [ var_1 ];

    var_2 = _ID42237::_ID41072( var_1 );
    var_0 delete();
}

_ID49599()
{
    var_0 = [ "treadfx_minHeight", "treadfx_maxHeight", "treadfx_landingHeight", "treadfx_minRepeatRate", "treadfx_maxRepeatRate", "treadfx_defaultRepeatRate", "treadfx_clampAngleLimit", "treadfx_cutoffAngleLimit", "treadsfx_maxDistance" ];
    return var_0;
}

_ID45191( var_0 )
{
    var_1 = undefined;

    switch ( var_0 )
    {
        case "treadfx_minHeight":
            var_1 = 300;
            break;
        case "treadfx_maxHeight":
            var_1 = 1200;
            break;
        case "treadfx_landingHeight":
            var_1 = 100;
            break;
        case "treadfx_minRepeatRate":
            var_1 = 0.05;
            break;
        case "treadfx_maxRepeatRate":
            var_1 = 0.15;
            break;
        case "treadfx_defaultRepeatRate":
            var_1 = _ID42237::_ID37527( _ID1498(), 0.15, 1.0 );
            break;
        case "treadfx_clampAngleLimit":
            var_1 = 30;
            break;
        case "treadfx_cutoffAngleLimit":
            var_1 = 0;
            break;
        case "treadsfx_maxDistance":
            var_1 = 4500;
            break;
    }

    return var_1;
}

_ID44449( var_0 )
{
    var_1 = undefined;

    switch ( var_0 )
    {
        case "treadfx_minHeight":
            if ( isdefined( self._ID46634 ) )
                var_1 = self._ID46634;

            break;
        case "treadfx_maxHeight":
            if ( isdefined( self._ID38733 ) )
                var_1 = self._ID38733;

            break;
        case "treadfx_landingHeight":
            if ( isdefined( self._ID48115 ) )
                var_1 = self._ID48115;

            break;
        case "treadfx_minRepeatRate":
            if ( isdefined( self._ID52711 ) )
                var_1 = self._ID52711;

            break;
        case "treadfx_maxRepeatRate":
            if ( isdefined( self._ID45376 ) )
                var_1 = self._ID45376;

            break;
        case "treadfx_defaultRepeatRate":
            if ( isdefined( self._ID48760 ) )
                var_1 = self._ID48760;

            break;
        case "treadfx_clampAngleLimit":
            if ( isdefined( self._ID50847 ) )
                var_1 = self._ID50847;

            break;
        case "treadfx_cutoffAngleLimit":
            if ( isdefined( self._ID48791 ) )
                var_1 = self._ID48791;

            break;
        case "treadsfx_maxDistance":
            if ( isdefined( self._ID53828 ) )
                var_1 = self._ID53828;

            break;
    }

    return var_1;
}

_ID47143( var_0 )
{
    return level _ID44449( var_0 );
}

_ID45257( var_0 )
{
    return _ID44449( var_0 );
}

_ID49330( var_0 )
{
    var_1 = _ID47115( self.classname );
    return _ID42400::_ID48031( var_1, var_0 );
}

_ID44087()
{
    var_0 = _ID49599();
    var_1 = [ ::_ID45257, ::_ID49330, ::_ID47143, ::_ID45191 ];
    var_2 = [];

    foreach ( var_4 in var_0 )
    {
        var_5 = undefined;

        for ( var_6 = 0; var_6 < var_1.size; var_6++ )
        {
            var_7 = var_1[var_6];
            var_5 = [[ var_7 ]]( var_4 );

            if ( isdefined( var_5 ) )
                break;
        }

        var_2[var_4] = var_5;
    }

    return var_2;
}
#using_animtree("generic_human");

_ID45322( var_0 )
{
    if ( isdefined( var_0.no_link ) && var_0.no_link )
    {
        self attach( var_0.model, var_0._ID1067 );
        return;
    }

    if ( !isdefined( self._ID43838 ) )
        self._ID43838 = [];

    if ( !isdefined( var_0._ID47753 ) )
        var_0._ID47753 = var_0._ID1067;

    self._ID43838[var_0.model] = spawn( "script_model", self gettagorigin( var_0._ID47753 ) );
    self._ID43838[var_0.model].angles = self.angles;
    self._ID43838[var_0.model] setmodel( var_0.model );
    self._ID43838[var_0.model] linkto( self, var_0._ID1067 );

    if ( isdefined( var_0._ID19324 ) )
    {
        self._ID43838[var_0.model]._ID3189 = "generic_human";
        self._ID43838[var_0.model] useanimtree( #animtree );
        thread _ID52757( self._ID43838[var_0.model], var_0._ID1067, var_0._ID19324 );
    }
}

_ID52757( var_0, var_1, var_2 )
{
    self endon( "death" );

    for (;;)
        _ID42412::_ID3191( var_0, var_1, var_2 );
}

_vehicle_set_random_unload_delays( var_0, var_1 )
{
    if ( !isdefined( self._ID29965 ) || self._ID29965.size == 0 )
        return;

    if ( self._ID29965.size == 1 )
    {
        self._ID29965[0].vehicle_unload_delay = var_0;
        return;
    }

    var_2 = _ID42237::_ID3320( self._ID29965 );
    var_2[0].vehicle_unload_delay = var_0;
    var_2[var_2.size - 1].vehicle_unload_delay = var_1;

    if ( var_2.size == 2 )
        return;

    var_3 = var_2.size - 2;
    var_4 = ( var_1 - var_0 ) / ( var_3 + 1 );
    var_5 = 0.4 * var_4;

    for ( var_6 = 1; var_6 <= var_3; var_6++ )
    {
        var_7 = var_0 + var_6 * var_4;
        var_2[var_6].vehicle_unload_delay = randomfloatrange( var_7 - var_5, var_7 + var_5 );
    }
}
