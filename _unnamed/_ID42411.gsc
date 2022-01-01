// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19830()
{
    if ( isdefined( level._ID11056 ) && level._ID11056 )
        return;

    _ID44981();
    _ID54331();
    _ID42413::_ID33137();
    level._ID18441 = _ID42237::_ID3296( level._ID18441, _ID42407::_ID16641( "helicopter_crash_location", "targetname" ) );
    _ID42237::_ID3315( getentarray( "colmap_vehicle", "targetname" ), _ID42407::_ID10321 );
    _ID42413::_ID33510();
    _ID42237::_ID3350( getentarray( "truckjunk", "targetname" ), _ID42413::_ID39045 );
    _ID42237::_ID3350( getentarray( "truckjunk", "script_noteworthy" ), _ID42413::_ID39045 );
    _ID42237::_ID3350( _ID42237::_ID16640( "truckjunk", "targetname" ), _ID42413::_ID39045 );
    _ID42237::_ID3350( _ID42237::_ID16640( "truckjunk", "script_noteworthy" ), _ID42413::_ID39045 );
    _ID42413::_ID32837();
    _ID42413::_ID33503();
    var_0 = _ID42413::_ID28370();
    _ID42413::_ID33511( var_0 );

    if ( isdefined( level._ID25928 ) )
        _ID42237::_ID3315( level._ID40223, ::_ID38874 );
    else
        _ID42237::_ID3315( level._ID40223, _ID42413::_ID38872 );

    level._ID40223 = undefined;
    level._ID22245 = getentarray( "script_vehicle", "code_classname" ).size > 0;
    _ID42407::_ID1895( "invulerable_frags", &"SCRIPT_INVULERABLE_FRAGS", undefined );
    _ID42407::_ID1895( "invulerable_bullets", &"SCRIPT_INVULERABLE_BULLETS", undefined, undefined, "medium_background" );
    _ID42237::_ID9163( "aircraft_wash_math" );
    _ID52251();
    _ID48577();
    _ID44251( undefined, "postcrushed", 0 );
}

_ID52251()
{
    if ( !isdefined( level._ID48868 ) )
        return;

    foreach ( var_1 in level._ID48868 )
    {
        foreach ( var_3 in var_1 )
        {
            foreach ( var_8, var_5 in var_3._ID45620 )
            {
                var_6 = loadfx( var_8 );
                var_7 = loadfx( var_5 );

                if ( !isdefined( var_3._ID45790 ) )
                    var_3._ID45790 = [];

                var_3._ID45790[var_6] = var_7;
            }
        }
    }
}

_ID48577()
{
    if ( isdefined( level._ID53466 ) )
    {
        level._ID54699 = [];

        foreach ( var_2, var_1 in level._ID53466 )
            level._ID54699[loadfx( var_2 )] = 1;
    }
}

_ID44981()
{
    level._ID18451 = [];
    level._ID18451["blackhawk"] = 1;
    level._ID18451["blackhawk_minigun"] = 1;
    level._ID18451["blackhawk_minigun_so"] = 1;
    level._ID18451["apache"] = 1;
    level._ID18451["seaknight"] = 1;
    level._ID18451["seaknight_airlift"] = 1;
    level._ID18451["hind"] = 1;
    level._ID18451["mi17"] = 1;
    level._ID18451["mi17_noai"] = 1;
    level._ID18451["mi17_bulletdamage"] = 1;
    level._ID18451["cobra"] = 1;
    level._ID18451["cobra_player"] = 1;
    level._ID18451["viper"] = 1;
    level._ID18451["littlebird_player"] = 1;
    level._ID18451["littlebird"] = 1;
    level._ID18451["mi28"] = 1;
    level._ID18451["pavelow"] = 1;
    level._ID18451["pavelow_noai"] = 1;
    level._ID18451["harrier"] = 1;
}

_ID54331()
{
    level._ID2458 = [];
    level._ID2458["mig29"] = 1;
    level._ID2458["b2"] = 1;
    level._ID2458["f15"] = 1;
}

_ID38874( var_0 )
{
    var_0._ID25927 = 1;
}

_ID40218( var_0, var_1, var_2 )
{
    return _ID42413::_ID1676( var_0, var_1, var_2 );
}

_ID9185( var_0 )
{
    var_1 = _ID31551( var_0 );

    foreach ( var_3 in var_1 )
        level thread _ID17021( var_3 );

    return var_1;
}

_ID17021( var_0 )
{
    return _ID42413::_ID1481( var_0 );
}

_ID31551( var_0 )
{
    return _ID42413::_ID1586( var_0 );
}

_ID40260( var_0 )
{
    return _ID42413::_ID1678( var_0 );
}

_ID49802( var_0 )
{
    var_1 = getent( var_0, "targetname" );

    if ( isspawner( var_1 ) )
        var_1 waittill( "spawned",  var_1  );

    return var_1;
}

_ID46586( var_0 )
{
    level waittill( "new_vehicle_spawned" + var_0,  var_1  );
    return var_1;
}

_ID21265( var_0, var_1 )
{
    return _ID42413::_ID1501( var_0, var_1 );
}

_ID47627( var_0 )
{
    if ( !isdefined( self._ID45344 ) )
        self._ID45344 = [];

    while ( !isdefined( self._ID45344[var_0] ) )
    {
        self waittill( "vehicle_flag_arrived",  var_1  );

        if ( var_0 == var_1 )
            return;
    }
}

_ID6245( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID40109 ) )
        level._ID40109 = [];

    if ( !isdefined( var_4 ) )
        var_4 = 0;

    if ( !isdefined( var_0 ) )
        var_0 = ( 0, 0, 0 );

    var_6 = spawnstruct();
    var_6._ID25468 = var_0;
    var_6._ID28980 = var_1;
    var_6._ID23085 = var_2;
    var_6._ID23619 = var_3;
    var_6._ID5259 = var_4;
    var_6._ID10179 = var_5;
    level._ID40109[level._ID40791] = var_6;
}

_ID6248( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID40239 ) )
        level._ID40239 = [];

    var_6 = _ID6244( var_1, var_2, var_3, var_4, var_5 );
    precacherumble( var_0 );
    var_6._ID30328 = var_0;
    level._ID40239[level._ID40791] = var_6;
}

_ID6249( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( level._ID40240 ) )
        level._ID40240 = [];

    var_7 = _ID6244( var_2, var_3, var_4, var_5, var_6 );
    precacherumble( var_1 );
    var_7._ID30328 = var_1;
    level._ID40240[var_0] = var_7;
}

_ID6250( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID6244( var_1, var_2, var_3, var_4, var_5 );
    var_6._ID30328 = var_0;
    self._ID40241 = var_6;
    _ID40180();
    thread _ID42413::_ID40239();
}

_ID6217( var_0, var_1, var_2 )
{
    var_3 = level._ID40791;

    if ( !isdefined( level._ID40105 ) )
        level._ID40105 = [];

    level._ID40105[var_3] = _ID6244( var_0, var_1, var_2 );
}

_ID47111( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level._ID40105 ) )
        level._ID40105 = [];

    level._ID40105[var_0] = _ID6244( var_1, var_2, var_3 );
}

_ID6244( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = spawnstruct();
    var_5._ID30768 = var_0;
    var_5._ID310 = var_1;
    var_5._ID851 = var_2;

    if ( isdefined( var_3 ) )
        var_5._ID4891 = var_3;

    if ( isdefined( var_4 ) )
        var_5._ID28960 = var_4;

    return var_5;
}

_ID6224( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !isdefined( var_5 ) )
        var_5 = 0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    var_11 = spawnstruct();
    var_11._ID12315 = loadfx( var_0 );
    var_11._ID1067 = var_1;
    var_11._ID34972 = var_2;
    var_11._ID6193 = var_5;
    var_11._ID10179 = var_4;
    var_11._ID40976 = var_6;
    var_11._ID36228 = var_7;
    var_11._ID25146 = var_8;
    var_11._ID4974 = var_3;
    var_11._ID31866 = var_9;
    var_11._ID29507 = var_10;
    return var_11;
}

_ID6215( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 )
{
    if ( !isdefined( level._ID912 ) )
        level._ID912 = tolower( getdvar( "mapname" ) );

    level._ID40830 = var_1;
    level._ID40793 = var_2;
    level._ID40829 = 1;
    level._ID40791 = var_0;

    if ( !isdefined( level._ID40106 ) )
        level._ID40106 = [];

    if ( !_ID20575( var_0 ) )
        level._ID40106[var_0] = [];

    level._ID40107[var_0] = 1;

    if ( !isdefined( level._ID40106[var_0] ) )
        level._ID40106[var_0] = [];

    level._ID40106[var_0][level._ID40106[var_0].size] = _ID6224( var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 );
    level._ID40829 = undefined;
}

build_rocket_deathfx_override( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 )
{
    var_0 = "rocket_death" + var_0;
    _ID6215( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 );
}

_ID47346( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level._ID40106 ) )
        return;

    var_4 = 0;

    foreach ( var_6 in level._ID40106[var_0] )
    {
        if ( isdefined( var_6._ID12315 ) && !isdefined( var_1 ) )
            continue;

        if ( !isdefined( var_6._ID12315 ) && isdefined( var_1 ) )
            continue;

        if ( isdefined( var_6._ID12315 ) && isdefined( var_1 ) && var_6._ID12315 != loadfx( var_1 ) )
            continue;

        if ( var_6._ID1067 != var_2 )
            continue;

        if ( isdefined( var_3 ) )
            var_6._ID12315 = loadfx( var_3 );
        else
            var_6._ID12315 = undefined;

        var_4 = 1;
    }

    if ( !var_4 )
        return;
}

_ID6213( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_11 = level._ID40791;

    if ( _ID20575( var_11 ) )
        return;

    if ( !isdefined( level._ID40106[var_11] ) )
        level._ID40106[var_11] = [];

    level._ID40106[var_11][level._ID40106[var_11].size] = _ID6224( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
}

_ID6214( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_11 = level._ID40791;
    level._ID40791 = "script_model";
    _ID6213( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    level._ID40791 = var_11;
}

_ID6212( var_0, var_1 )
{
    _ID43943( level._ID40791, var_1, var_0 );
}

_ID43943( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID49086 ) )
        level._ID49086 = [];

    var_3 = var_0;

    if ( isdefined( var_1 ) )
        var_3 = var_3 + "_" + var_1;

    if ( !isdefined( var_2 ) )
    {
        level._ID49086[var_3] = undefined;
        return;
    }

    level._ID49086[var_3] = _ID53204( var_0, var_2 );
}

_ID44444( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        self._ID49086 = undefined;
        return;
    }

    self._ID49086 = _ID53204( self._ID170, var_0 );
}

_ID53204( var_0, var_1 )
{
    if ( !isdefined( var_1._ID50561 ) )
        var_1._ID50561 = 0;

    if ( var_1._ID50561 )
    {

    }

    if ( !isdefined( var_1._ID7836 ) )
        var_1._ID7836 = 0;

    if ( !isdefined( var_1._ID49128 ) )
        var_1._ID49128 = 0;

    if ( !isdefined( var_1._ID47124 ) )
        var_1._ID47124 = 0;

    if ( !isdefined( var_1._ID43258 ) )
        var_1._ID43258 = 0;

    if ( !isdefined( var_1._ID50729 ) )
        var_1._ID50729 = 40;

    if ( !isdefined( var_1._ID51665 ) )
        var_1._ID51665 = 20;

    if ( !isdefined( var_1._ID53560 ) )
        var_1._ID53560 = 0;

    if ( !isdefined( var_1._ID51068 ) )
        var_1._ID51068 = -1;

    if ( !isdefined( var_1._ID49972 ) )
        var_1._ID49972 = 0;

    if ( !isdefined( var_1._ID54538 ) )
        var_1._ID54538 = 1;

    if ( !isdefined( var_1._ID45713 ) )
        var_1._ID45713 = 0;

    if ( !isdefined( var_1._ID51516 ) )
        var_1._ID51516 = -1;

    if ( !isdefined( var_1._ID48589 ) )
        var_1._ID48589 = [];

    if ( !isdefined( var_1._ID9798 ) )
        var_1._ID9798 = 1;

    return var_1;
}

_ID44870( var_0 )
{
    var_1 = 0;
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;

    foreach ( var_7, var_6 in var_0 )
    {
        switch ( var_7 )
        {
            case "front":
                var_1 = 1;
                continue;
            case "rear":
                var_2 = 1;
                continue;
            case "left":
                var_3 = 1;
                continue;
            case "right":
                var_4 = 1;
                continue;
        }
    }

    var_8 = var_0.size == 4 && ( var_1 && var_2 && var_3 && var_4 );
    return var_8;
}

_ID20575( var_0 )
{
    if ( !isdefined( level._ID40107 ) )
        return 0;

    if ( !isdefined( level._ID40107[var_0] ) )
        return 0;

    if ( isdefined( level._ID40829 ) )
        return 1;

    return level._ID40107[var_0];
}

_ID6247( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_11 = level._ID40791;
    level._ID40791 = "rocket_death" + var_11;
    _ID6213( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    level._ID40791 = var_11;
}

_ID14749()
{
    return _ID42413::_ID1458();
}

_ID16988()
{
    self._ID16986 = 1;
}

_ID16987()
{
    self._ID16986 = 0;
}

_ID23509()
{
    return _ID42413::_ID1522();
}

_ID23510()
{
    return _ID42413::_ID1523();
}

_ID20992()
{
    return isdefined( self._ID1282 );
}

_ID6239( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11 )
{
    if ( !isdefined( level._ID40208 ) )
        level._ID40208 = [];

    var_12 = level._ID40791;

    if ( !isdefined( level._ID40208[var_12] ) )
        level._ID40208[var_12] = [];

    precachemodel( var_2 );
    precacheitem( var_3 );
    var_13 = spawnstruct();
    var_13._ID1067 = var_1;
    var_13._ID23715 = var_2;
    var_13._ID23716 = var_3;
    var_13._ID28326 = var_4;
    var_13._ID28278 = var_5;
    var_13._ID20131 = var_6;
    var_13._ID18759 = var_7;
    var_13._ID18758 = var_8;
    var_13._ID30677 = var_9;
    var_13._ID30676 = var_10;
    var_13._ID23694 = var_11;
    level._ID40208[var_12][level._ID40208[var_12].size] = var_13;
}

_ID6261( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    if ( !isdefined( level._ID40207 ) )
        level._ID40207 = [];

    var_10 = level._ID40791;

    if ( !isdefined( level._ID40207[var_10] ) )
        level._ID40207[var_10] = [];

    precachemodel( var_2 );
    precacheturret( var_0 );
    var_11 = spawnstruct();
    var_11._ID19551 = var_0;
    var_11._ID1067 = var_1;
    var_11._ID669 = var_2;
    var_11._ID627 = var_3;
    var_11._ID10142 = var_4;
    var_11._ID10318 = var_5;
    var_11._ID10135 = var_6;
    var_11._ID10136 = var_7;

    if ( isdefined( var_8 ) )
        var_11._ID25472 = var_8;

    if ( isdefined( var_9 ) )
        var_11._ID44128 = var_9;

    level._ID40207[var_10][level._ID40207[var_10].size] = var_11;
}

_ID40174()
{
    return _ID42413::_ID1674();
}

_ID20532()
{
    return _ID42413::_ID1497();
}

_ID40180()
{
    self notify( "kill_rumble_forever" );
}

_ID24381( var_0, var_1 )
{
    if ( !isdefined( self._ID39045 ) )
        return;

    foreach ( var_3 in self._ID39045 )
    {
        if ( var_3 == var_0 )
            continue;

        var_3 unlink();

        if ( isdefined( var_3._ID31232 ) )
        {
            var_3 linkto( var_0, var_3._ID31232, var_3._ID4864, var_3._ID4853 );
            continue;
        }

        if ( isdefined( var_1 ) )
        {
            var_3 linkto( var_0, var_1 );
            continue;
        }

        var_3 linkto( var_0 );
    }
}

_ID12230()
{
    if ( _ID20763() )
        self._ID23875._ID740 = self gettagorigin( "tag_ground" );
    else
    {
        self._ID23875._ID740 = self._ID740;
        self._ID23875._ID65 = self._ID65;
    }

    self show();
    _ID24358( self );
    _ID42413::_ID24382( self );
    thread _ID42413::_ID24347( self );
    _ID42413::_ID24335( self );
    self._ID23876 = 0;
    self._ID23875 delete();
    self._ID23875 = undefined;

    if ( _ID42413::_ID18226() )
    {
        self notify( "stop_kicking_up_dust" );
        thread _ID42413::_ID2456();
    }

    return self._ID23875;
}

_ID24358( var_0 )
{
    if ( !isdefined( self._ID29965 ) )
        return;

    var_1 = self._ID29965;

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        var_4 = _ID42412::_ID3052( self, var_3._ID40222 );

        if ( isdefined( var_4._ID26295 ) )
            continue;

        if ( isdefined( self._ID23512 ) )
        {
            var_5 = 0;

            foreach ( var_7 in self._ID23512 )
            {
                var_8 = var_7 getturretowner();

                if ( isdefined( var_8 ) && var_8 == var_3 )
                {
                    var_5 = 1;
                    break;
                }
            }

            if ( var_5 )
                continue;
        }

        var_3 unlink();
        var_3 linkto( var_0, var_4._ID34225, ( 0, 0, 0 ), ( 0, 0, 0 ) );

        if ( isai( var_3 ) )
        {
            var_3 forceteleport( var_0 gettagorigin( var_4._ID34225 ) );
            continue;
        }

        var_3._ID740 = var_0 gettagorigin( var_4._ID34225 );
    }
}

_ID49705()
{
    var_0 = [];
    var_1 = getentarray( "script_vehicle", "code_classname" );

    foreach ( var_3 in var_1 )
    {
        if ( !isspawner( var_3 ) )
            var_0[var_0.size] = var_3;
    }

    return var_0;
}

_ID35199( var_0 )
{
    var_1 = [];
    var_1 = _ID42413::_ID35201( var_0 );
    return var_1;
}

_ID50105( var_0 )
{
    var_1 = [];
    var_2 = getentarray( var_0, "targetname" );

    foreach ( var_4 in var_2 )
    {
        if ( isdefined( var_4._ID21855 ) )
            var_1[var_1.size] = var_4._ID21855;
    }

    return var_1;
}

_ID35195( var_0 )
{
    var_1 = _ID35199( var_0 );
    return var_1[0];
}

_ID44773( var_0 )
{
    var_1 = _ID50105( var_0 );
    return var_1[0];
}

_ID43142( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( !isdefined( var_1 ) )
        return 0;

    var_2 = var_0._ID40264;

    if ( !isdefined( var_2 ) )
        return 0;

    if ( !isdefined( var_2._ID1193 ) )
        return 0;

    if ( var_2._ID1193 != var_1 )
        return 0;

    return 1;
}

_ID35196( var_0 )
{
    var_1 = _ID35199( var_0 );
    thread _ID17021( var_1[0] );
    return var_1[0];
}

_ID35200( var_0 )
{
    var_1 = _ID35199( var_0 );

    foreach ( var_3 in var_1 )
        thread _ID17021( var_3 );

    return var_1;
}

_ID2455( var_0 )
{
    thread _ID42413::_ID2456( var_0 );
}

_ID40305()
{
    _ID42413::_ID41730( 1 );
}

_ID40304()
{
    _ID42413::_ID41730( 0 );
}

_ID6234( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID40193 ) )
        level._ID40193 = [];

    if ( !isdefined( level._ID40195 ) )
        level._ID40195 = [];

    if ( isdefined( level._ID40195[var_4] ) && !level._ID40829 )
        return;

    var_6 = spawnstruct();
    var_6._ID680 = var_1;
    var_6._ID1067 = var_2;
    var_6._ID10179 = var_5;
    var_6._ID12315 = loadfx( var_3 );
    level._ID40193[var_0][var_1] = var_6;
    _ID42413::_ID17453( var_0, var_1, "all" );

    if ( isdefined( var_4 ) )
        _ID42413::_ID17453( var_0, var_1, var_4 );
}

_ID6235( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID912 ) )
        level._ID912 = tolower( getdvar( "mapname" ) );

    level._ID40791 = var_0;
    _ID6234( var_0, var_1, var_2, var_3, var_4, var_5 );
    level._ID40829 = 0;
    level._ID40195[var_4] = 1;
}

_ID6227( var_0, var_1 )
{
    if ( !isdefined( level._ID40166 ) )
        level._ID40166 = [];

    level._ID40166[var_0] = var_1;
}

_ID6216( var_0, var_1, var_2, var_3 )
{
    if ( var_0 != level._ID40793 && level._ID40793 != "script_model" )
        return;

    if ( !isdefined( var_1 ) )
        var_1 = var_0;

    precachemodel( var_0 );
    precachemodel( var_1 );

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
    {
        level._ID40113[var_0] = var_1;
        level._ID40114[var_0] = var_2;
    }
    else
    {
        level._ID40113[var_3] = var_1;
        level._ID40114[var_3] = var_2;
    }
}

_ID6251( var_0 )
{
    precacheshellshock( var_0 );
    level._ID40252[level._ID40791] = var_0;
}

_ID6230( var_0 )
{
    if ( !isdefined( level._ID40169 ) )
        level._ID40169 = [];

    if ( !isdefined( level._ID40169[level._ID40793] ) )
        level._ID40169[level._ID40793] = [];

    level._ID40169[level._ID40793][level._ID40169[level._ID40793].size] = var_0;
}

_ID6220( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 10;

    level._ID40123[level._ID40793] = var_0;

    if ( isdefined( var_1 ) )
        level._ID40126[level._ID40793] = var_1;

    level._ID40125[level._ID40793] = var_2;

    if ( isdefined( var_3 ) )
        level._ID40124[level._ID40793] = var_3;
}

_ID6255( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level._ID912 ) )
        level._ID912 = tolower( getdvar( "mapname" ) );

    if ( isdefined( var_2 ) )
        var_0 = var_2;

    if ( var_0 != "script_model" )
        precachevehicle( var_0 );

    if ( !isdefined( level._ID40106 ) )
        level._ID40106 = [];

    if ( !isdefined( level._ID49086 ) )
        level._ID49086 = [];

    if ( !isdefined( level._ID40106[var_3] ) )
        level._ID40106[var_3] = [];

    level._ID40280[var_3] = "axis";
    level._ID40188[var_3] = 999;
    level._ID40163[var_1] = 0;
    level._ID40205[var_1] = [];
    level._ID40793 = var_1;
    level._ID40830 = var_0;
    level._ID40791 = var_3;
}

_ID6222( var_0 )
{
    level._ID40132[level._ID40793] = loadfx( var_0 );
}

_ID6257( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_0 ) )
    {
        _ID32512( var_0, var_1, var_2, undefined, var_4 );

        if ( isdefined( var_3 ) && var_3 )
        {
            _ID32512( var_0, var_1, var_2, "_bank", var_4 );
            _ID32512( var_0, var_1, var_2, "_bank_lg", var_4 );
        }
    }
    else
    {
        var_0 = level._ID40791;
        _ID42400::_ID616( var_0 );
    }
}

_ID6260( var_0, var_1, var_2, var_3, var_4 )
{
    _ID6257( var_0, var_1 + "_script_model", var_2, var_3, var_4 );
}

_ID6259( var_0, var_1 )
{
    if ( !isdefined( level._ID1673 ) )
        level._ID1673 = [];

    if ( !isdefined( level._ID1673[var_0] ) )
        level._ID1673[var_0] = spawnstruct();

    level._ID1673[var_0]._ID37129 = var_1;
}

_ID6258( var_0, var_1 )
{
    if ( !isdefined( level._ID1673 ) )
        level._ID1673 = [];

    if ( !isdefined( level._ID1673[var_0] ) )
        level._ID1673[var_0] = spawnstruct();

    level._ID1673[var_0]._ID16004 = var_1;
}

_ID6205( var_0, var_1 )
{
    var_2 = _ID16005();

    foreach ( var_4 in var_2 )
        _ID32512( var_0, var_4 );
}

_ID32512( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( level._ID1672 ) )
        level._ID1672 = [];

    if ( !isdefined( level._ID47632 ) )
        level._ID47632 = [];

    if ( !isdefined( level._ID49142 ) )
        level._ID49142 = [];

    if ( isdefined( var_3 ) )
    {
        var_1 += var_3;
        var_2 += var_3;

        if ( isdefined( var_4 ) )
            var_4 += var_3;
    }

    if ( isdefined( var_2 ) )
        _ID45629( var_0, var_1, var_2, var_4 );
    else if ( isdefined( level._ID1672[var_0] ) && isdefined( level._ID1672[var_0][var_1] ) )
    {
        level._ID1672[var_0][var_1] = undefined;
        level._ID49142[var_0][var_1] = var_4;
    }
}

_ID16005()
{
    var_0 = [];
    var_0[var_0.size] = "brick";
    var_0[var_0.size] = "bark";
    var_0[var_0.size] = "carpet";
    var_0[var_0.size] = "cloth";
    var_0[var_0.size] = "concrete";
    var_0[var_0.size] = "dirt";
    var_0[var_0.size] = "flesh";
    var_0[var_0.size] = "foliage";
    var_0[var_0.size] = "glass";
    var_0[var_0.size] = "grass";
    var_0[var_0.size] = "gravel";
    var_0[var_0.size] = "ice";
    var_0[var_0.size] = "metal";
    var_0[var_0.size] = "mud";
    var_0[var_0.size] = "paper";
    var_0[var_0.size] = "plaster";
    var_0[var_0.size] = "rock";
    var_0[var_0.size] = "sand";
    var_0[var_0.size] = "snow";
    var_0[var_0.size] = "water";
    var_0[var_0.size] = "wood";
    var_0[var_0.size] = "asphalt";
    var_0[var_0.size] = "ceramic";
    var_0[var_0.size] = "plastic";
    var_0[var_0.size] = "rubber";
    var_0[var_0.size] = "cushion";
    var_0[var_0.size] = "fruit";
    var_0[var_0.size] = "paintedmetal";
    var_0[var_0.size] = "riotshield";
    var_0[var_0.size] = "slush";
    var_0[var_0.size] = "default";
    return var_0;
}

_ID45629( var_0, var_1, var_2, var_3 )
{
    level._ID1672[var_0][var_1] = loadfx( var_2 );
    level._ID47632[var_0][var_1] = var_2;
    level._ID49142[var_0][var_1] = var_3;
    var_4 = _ID42400::_ID46850( var_1 );

    for ( var_5 = 0; var_5 < var_4.size; var_5++ )
    {
        level._ID1672[var_0][var_4[var_5]] = loadfx( var_2 );
        level._ID47632[var_0][var_4[var_5]] = var_2;
        level._ID49142[var_0][var_4[var_5]] = var_3;
    }
}

_ID51036( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( level._ID43268 ) )
        level._ID43268 = [];

    var_1 = _ID16005();
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        level._ID43268[var_0][var_4] = loadfx( var_0 );
        var_2 = _ID42400::_ID46850( var_4 );

        foreach ( var_6 in var_2 )
            level._ID43268[var_0][var_6] = loadfx( var_0 );
    }
}

_ID47850( var_0, var_1 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return;

    if ( !isdefined( level._ID43268[var_1] ) )
        return;

    var_2 = _ID16005();
    var_3 = 0;
    var_4 = 0;
    var_5 = "";
    var_6 = [];

    foreach ( var_8 in var_2 )
    {
        var_4 = level._ID1672[var_0][var_8];
        var_5 = level._ID47632[var_0][var_8];
        var_3 = level._ID43268[var_1][var_8];
        _ID43046( var_0, var_8, var_5, var_4, var_3, var_1 );
        var_6 = _ID42400::_ID46850( var_8 );

        foreach ( var_10 in var_6 )
            _ID43046( var_0, var_10, var_5, var_4, var_3, var_1 );
    }
}

_ID43046( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level._ID1672[var_0][var_1] = var_4;
    level._ID47632[var_0][var_1] = var_5;
    level._ID43268[var_2][var_1] = var_3;
}

_ID48847( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level._ID48868 ) )
        level._ID48868 = [];

    if ( !isdefined( level._ID48868[var_0] ) )
        level._ID48868[var_0] = [];

    if ( !isdefined( level._ID48868[var_0][var_1] ) )
        level._ID48868[var_0][var_1] = spawnstruct();

    var_4 = level._ID48868[var_0][var_1];

    if ( !isdefined( var_4._ID45620 ) )
        var_4._ID45620 = [];

    var_4._ID45620[var_2] = var_3;
}

_ID53622( var_0, var_1 )
{
    if ( isdefined( level._ID48868 ) && isdefined( level._ID48868[var_0] ) && isdefined( level._ID48868[var_0][var_1] ) )
        return level._ID48868[var_0][var_1];

    return undefined;
}

_ID43112( var_0, var_1, var_2 )
{
    var_3 = _ID53622( var_0, var_1 );

    if ( isdefined( var_3 ) && isdefined( var_3._ID45790 ) && var_3._ID45790[var_2] )
        return var_3._ID45790[var_2];

    return undefined;
}

_ID6253( var_0 )
{
    level._ID40280[level._ID40791] = var_0;
}

_ID6237( var_0, var_1, var_2, var_3 )
{
    level._ID40163[level._ID40793] = 1;

    if ( isdefined( var_0 ) )
        level._ID40205[level._ID40793][var_0] = 1;

    if ( isdefined( var_1 ) )
        level._ID40205[level._ID40793][var_1] = 1;

    if ( isdefined( var_2 ) )
        level._ID40205[level._ID40793][var_2] = 1;

    if ( isdefined( var_3 ) )
        level._ID40205[level._ID40793][var_3] = 1;
}

_ID6207( var_0 )
{
    level._ID40085[level._ID40791] = var_0;
}

_ID6226( var_0 )
{
    level._ID40158[level._ID40791] = var_0;
}

_ID6204( var_0, var_1 )
{
    var_2 = level._ID40791;
    level._ID40069[var_2] = [[ var_0 ]]();

    if ( isdefined( var_1 ) )
        level._ID40069[var_2] = [[ var_1 ]]( level._ID40069[var_2] );
}

_ID52468( var_0, var_1, var_2 )
{
    level._ID40069[var_0] = [[ var_1 ]]();

    if ( isdefined( var_2 ) )
        level._ID40069[var_0] = [[ var_2 ]]( level._ID40069[var_0] );
}

_ID6223( var_0 )
{
    level._ID40138[level._ID40791] = var_0;
}

_ID6206( var_0 )
{
    level._ID40080[level._ID40791] = [[ var_0 ]]();
}

_ID6262( var_0 )
{
    level._ID40300[level._ID40791] = [[ var_0 ]]();
}

_ID48311( var_0, var_1 )
{
    level._ID40300[var_0] = [[ var_1 ]]();
}

_ID6233( var_0, var_1, var_2 )
{
    var_3 = level._ID40791;
    level._ID40188[var_3] = var_0;
    level._ID40190[var_3] = var_1;
    level._ID40189[var_3] = var_2;
}

_ID44204( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    level._ID51993[level._ID40830] = var_1;
    level._ID47017[level._ID40830] = var_0;
}

_ID6218( var_0 )
{
    level._ID40116[level._ID40793] = loadfx( var_0 );
}

_ID6219( var_0, var_1 )
{
    if ( isdefined( level._ID40099 ) )
        return;

    if ( var_0 != level._ID40793 )
        return;

    var_2 = spawnstruct();
    var_2._ID669 = var_0;
    var_2 _ID42407::_ID28349( var_1 );
    level._ID10533[level._ID40793] = var_1;
}

_ID6236( var_0 )
{
    level._ID40313[level._ID40830][level._ID40791] = var_0;
}

_ID20512()
{
    return self._ID23876;
}

_ID40200( var_0, var_1, var_2 )
{
    _ID42412::_ID22466( var_0, undefined, var_2 );
}

_ID40201( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _ID42412::_ID22466( var_3, var_1, var_2 );
}

_ID6210( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID40104 ) )
        level._ID40104 = [];

    var_6 = spawnstruct();
    var_6._ID10179 = var_0;
    var_6._ID310 = var_1;
    var_6._ID488 = var_2;
    var_6._ID851 = var_3;
    var_6._ID37354 = var_4;
    var_6._ID37355 = var_5;
    level._ID40104[level._ID40791] = var_6;
}

_ID24319( var_0, var_1 )
{
    return _ID42413::_ID1535( var_0, var_1 );
}

_ID35194()
{
    var_0 = _ID42407::_ID35192();

    if ( isdefined( self._ID31446 ) )
    {
        if ( !_ID20763() )
            var_0 vehphys_setspeed( self._ID31446 );
    }

    var_0 thread _ID17021( var_0 );
    return var_0;
}

_ID40144( var_0 )
{
    var_1 = [];
    var_2 = self._ID170;

    if ( !isdefined( level._ID40300[var_2] ) )
        return var_1;

    var_3 = level._ID40300[var_2];

    if ( !isdefined( var_0 ) )
        return var_1;

    foreach ( var_5 in self._ID29965 )
    {
        foreach ( var_7 in var_3[var_0] )
        {
            if ( var_5._ID40222 == var_7 )
                var_1[var_1.size] = var_5;
        }
    }

    return var_1;
}

_ID40066( var_0 )
{
    return _ID42412::_ID3162( var_0 );
}

_ID40298( var_0 )
{
    return _ID42413::_ID1680( var_0 );
}

_ID40293()
{
    self endon( "death" );
    self endon( "stop_scanning_turret" );
    var_0 = randomint( 2 );

    while ( isdefined( self ) )
    {
        if ( _ID42237::_ID8201() )
        {
            _ID42413::_ID40071( 0 );
            wait(randomfloatrange( 2, 10 ));
        }

        if ( var_0 == 0 )
        {
            var_1 = randomintrange( 10, 30 );
            var_0 = 1;
        }
        else
        {
            var_1 = randomintrange( -30, -10 );
            var_0 = 0;
        }

        _ID42413::_ID40071( var_1 );
        wait(randomfloatrange( 2, 10 ));
    }
}

_ID40292()
{
    self notify( "stop_scanning_turret" );
}

_ID40142()
{
    self endon( "death" );
    var_0 = [];
    var_1 = self._ID3577;

    if ( !isdefined( self._ID3577 ) )
        return var_0;

    var_2 = var_1;
    var_2._ID8771 = 0;

    while ( isdefined( var_2 ) )
    {
        if ( isdefined( var_2._ID8771 ) && var_2._ID8771 == 1 )
            break;

        var_0 = _ID42237::_ID3293( var_0, var_2 );
        var_2._ID8771 = 1;

        if ( !isdefined( var_2._ID1191 ) )
            break;

        if ( !_ID20763() )
        {
            var_2 = getvehiclenode( var_2._ID1191, "targetname" );
            continue;
        }

        var_2 = _ID42407::_ID16261( var_2._ID1191, "targetname" );
    }

    return var_0;
}

_ID40197( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "all";

    _ID42413::_ID22347( var_0, var_1 );
}

_ID40196( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "all";

    _ID42413::_ID22345( var_0, var_1 );
}

_ID40258( var_0 )
{
    if ( !isdefined( self ) || !isdefined( self._ID170 ) || !isdefined( var_0 ) )
        return;

    if ( !isdefined( level._ID40193[self._ID170] ) )
        return;

    var_1 = level._ID40193[self._ID170][var_0];

    if ( !isdefined( var_1 ) )
        return;

    if ( isdefined( var_1._ID10179 ) )
        var_2 = var_1._ID10179;
    else
        var_2 = 0;

    self endon( "death" );
    childthread _ID42237::_ID24939( ::playfxontag, var_2, var_1._ID12315, self, var_1._ID1067 );
    self._ID22343[var_0] = 1;
}

_ID40257( var_0 )
{
    if ( !isdefined( self._ID22343 ) )
        return;

    if ( !isdefined( self._ID22343[var_0] ) )
        return;

    var_1 = level._ID40193[self._ID170][var_0];

    if ( !isdefined( var_1 ) )
        return;

    stopfxontag( var_1._ID12315, self, var_1._ID1067 );
    self._ID22343[var_0] = undefined;
}

_ID40272( var_0, var_1 )
{
    self setswitchnode( var_0, var_1 );
    self._ID3577 = var_1;
    thread _ID40218();
}

_ID40271( var_0, var_1, var_2 )
{
    return _ID42413::_ID1679( var_0, var_1, var_2 );
}

_ID40225( var_0 )
{
    return _ID42413::_ID1677( var_0 );
}

_ID6232( var_0 )
{
    if ( !isdefined( level._ID18451 ) )
        level._ID18451 = [];

    if ( !isdefined( var_0 ) )
        var_0 = level._ID40830;

    level._ID18451[var_0] = 1;
}

_ID6231( var_0 )
{
    if ( !isdefined( level._ID2458 ) )
        level._ID2458 = [];

    if ( !isdefined( var_0 ) )
        var_0 = level._ID40830;

    level._ID2458[var_0] = 1;
}

_ID6252( var_0 )
{
    if ( !isdefined( level._ID40259 ) )
        level._ID40259 = [];

    if ( !isdefined( var_0 ) )
        var_0 = level._ID40830;

    level._ID40259[var_0] = 1;
}

_ID47700( var_0 )
{
    if ( !isdefined( level._ID48095 ) )
        level._ID48095 = [];

    if ( !isdefined( var_0 ) )
        var_0 = level._ID40830;

    level._ID48095[var_0] = 1;
}

_ID40247( var_0 )
{
    if ( isdefined( self._ID18313 ) )
        self._ID486 = var_0 + self._ID18313;
    else
        self._ID486 = var_0;

    self._ID9497 = self._ID486;
}

_ID6246( var_0 )
{
    if ( !isdefined( level._ID40231 ) )
        level._ID40231 = [];

    level._ID40231[level._ID40791] = var_0;
}

_ID20763()
{
    return _ID42413::_ID1499();
}

_ID20659()
{
    return _ID42413::_ID1498();
}

_ID15694()
{
    return _ID42413::_ID1462();
}
#using_animtree("vehicles");

_ID40283( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !var_1 )
    {
        self._ID23875 = spawn( "script_model", self._ID740 );
        self._ID23875 setmodel( self._ID669 );
        self._ID23875._ID740 = self._ID740;
        self._ID23875._ID65 = self._ID65;
        self._ID23875 useanimtree( #animtree );
    }
    else
    {
        self._ID23875 show();
        self._ID23875 unlink();
        self._ID23875._ID740 = self._ID740;
        self._ID23875._ID65 = self._ID65;
    }

    self transfermarkstonewscriptmodel( self._ID23875 );
    self hide();
    thread _ID42413::_ID23867();
    _ID24358( self._ID23875 );
    _ID42413::_ID24382( self._ID23875 );
    _ID24381( self._ID23875, var_0 );
    thread _ID42413::_ID24347( self._ID23875 );
    _ID42413::_ID24335( self._ID23875, var_0 );
    _ID42413::_ID8662( self._ID23875 );

    if ( isdefined( self._ID50393 ) )
        self thread [[ self._ID50393 ]]( self._ID23875, var_0 );

    self._ID23876 = 1;

    if ( _ID42413::_ID18226() )
    {
        self notify( "stop_kicking_up_dust" );
        thread _ID42413::_ID2456( self._ID23875 );
    }

    return self._ID23875;
}

_ID6211( var_0 )
{
    if ( !isdefined( level._ID40108 ) )
        level._ID40108 = [];

    var_1 = spawnstruct();
    var_1._ID10179 = var_0;
    level._ID40108[level._ID40791] = var_1;
}

_ID12489()
{
    level._ID40261 = 1;
}

_ID51779( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = _ID40283();
    var_9 = 7;
    var_10 = 5;
    var_11 = 5;
    self vehicle_setspeed( var_9, var_10, var_11 );
    var_12 = getanimlength( var_2 );
    var_13 = var_12 / 3;
    var_14 = var_12 / 3;
    var_15 = var_0._ID740;
    var_16 = var_0._ID65;
    var_17 = anglestoforward( var_16 );
    var_18 = anglestoup( var_16 );
    var_19 = anglestoright( var_16 );
    var_20 = getstartorigin( var_15, var_16, var_2 );
    var_21 = getstartangles( var_15, var_16, var_2 );
    var_22 = anglestoforward( var_21 );
    var_23 = anglestoup( var_21 );
    var_24 = anglestoright( var_21 );
    var_25 = anglestoforward( var_8._ID65 );
    var_26 = anglestoup( var_8._ID65 );
    var_27 = anglestoright( var_8._ID65 );
    var_28 = var_15 - var_20;
    var_29 = vectordot( var_28, var_22 );
    var_30 = vectordot( var_28, var_23 );
    var_31 = vectordot( var_28, var_24 );
    var_32 = spawn( "script_origin", var_8._ID740 );
    var_32._ID740 = var_32._ID740 + _ID42407::_ID49965( var_25, var_29 );
    var_32._ID740 = var_32._ID740 + _ID42407::_ID49965( var_26, var_30 );
    var_32._ID740 = var_32._ID740 + _ID42407::_ID49965( var_27, var_31 );
    var_28 = anglestoforward( var_16 );
    var_29 = vectordot( var_28, var_22 );
    var_30 = vectordot( var_28, var_23 );
    var_31 = vectordot( var_28, var_24 );
    var_33 = _ID42407::_ID49965( var_25, var_29 );
    var_33 += _ID42407::_ID49965( var_26, var_30 );
    var_33 += _ID42407::_ID49965( var_27, var_31 );
    var_32._ID65 = vectortoangles( var_33 );

    if ( isdefined( var_5 ) )
        level thread _ID42237::_ID27077( var_5, var_15 );

    var_8 linkto( var_32 );
    var_0 useanimtree( var_4 );
    var_8 useanimtree( var_4 );
    var_34 = _ID44666( level._ID1672["tankcrush"]["window_med_left"], level._ID1672["tankcrush"]["window_med"] );
    var_35 = _ID44666( level._ID1672["tankcrush"]["window_med_right"], level._ID1672["tankcrush"]["window_med"] );
    var_36 = _ID44666( level._ID1672["tankcrush"]["window_large_back"], level._ID1672["tankcrush"]["window_large"] );
    var_37 = _ID44666( level._ID1672["tankcrush"]["window_large_front"], level._ID1672["tankcrush"]["window_large"] );

    if ( _ID52598( var_3 ) )
    {
        var_0 thread _ID54383( "tag_window_left_glass_fx", var_34, "veh_glass_break_small", "left_glass_fx", var_3 );
        var_0 thread _ID54383( "tag_window_right_glass_fx", var_35, "veh_glass_break_small", "right_glass_fx", var_3 );
        var_0 thread _ID54383( "tag_windshield_back_glass_fx", var_36, "veh_glass_break_large", "back_glass_fx", var_3 );
        var_0 thread _ID54383( "tag_windshield_front_glass_fx", var_37, "veh_glass_break_large", "front_glass_fx", var_3 );
    }
    else
    {
        var_0 thread _ID48404( "tag_window_left_glass_fx", var_34, "veh_glass_break_small", 0.2 );
        var_0 thread _ID48404( "tag_window_right_glass_fx", var_35, "veh_glass_break_small", 0.4 );
        var_0 thread _ID48404( "tag_windshield_back_glass_fx", var_36, "veh_glass_break_large", 0.7 );
        var_0 thread _ID48404( "tag_windshield_front_glass_fx", var_37, "veh_glass_break_large", 1.5 );
    }

    var_0 animscripted( "tank_crush_anim", var_15, var_16, var_3 );
    var_8 animscripted( "tank_crush_anim", var_32._ID740, var_32._ID65, var_2 );

    if ( isdefined( var_7 ) )
        thread [[ var_7 ]]( var_0 );

    var_32 moveto( var_15, var_13, var_13 / 2, var_13 / 2 );
    var_32 rotateto( var_16, var_13, var_13 / 2, var_13 / 2 );
    wait(var_13);
    var_12 -= var_13;
    var_12 -= var_14;
    _ID44251( var_0, "precrushed", 0 );
    _ID44251( var_0, "postcrushed", 1 );
    wait(var_12);
    var_38 = spawn( "script_model", var_20 );
    var_38._ID65 = var_21;
    var_39 = var_38 localtoworldcoords( getangledelta( var_2, 0, 1 ) );
    var_40 = var_21 + ( 0, getmovedelta( var_2, 0, 1 ), 0 );
    var_38 delete();
    var_41 = anglestoforward( var_40 );
    var_42 = anglestoup( var_40 );
    var_43 = anglestoright( var_40 );
    var_44 = self getattachpos( var_1 );
    var_25 = anglestoforward( var_44[1] );
    var_26 = anglestoup( var_44[1] );
    var_27 = anglestoright( var_44[1] );
    var_28 = var_15 - var_39;
    var_29 = vectordot( var_28, var_41 );
    var_30 = vectordot( var_28, var_42 );
    var_31 = vectordot( var_28, var_43 );
    var_32._ID45218 = var_44[0];
    var_32._ID45218 = var_32._ID45218 + _ID42407::_ID49965( var_25, var_29 );
    var_32._ID45218 = var_32._ID45218 + _ID42407::_ID49965( var_26, var_30 );
    var_32._ID45218 = var_32._ID45218 + _ID42407::_ID49965( var_27, var_31 );
    var_28 = anglestoforward( var_16 );
    var_29 = vectordot( var_28, var_41 );
    var_30 = vectordot( var_28, var_42 );
    var_31 = vectordot( var_28, var_43 );
    var_33 = _ID42407::_ID49965( var_25, var_29 );
    var_33 += _ID42407::_ID49965( var_26, var_30 );
    var_33 += _ID42407::_ID49965( var_27, var_31 );
    var_32._ID49113 = vectortoangles( var_33 );

    if ( getdvar( "debug_tankcrush" ) == "1" )
    {
        thread _ID42407::_ID11708( level._ID794, self._ID740, 1, 0, 0, var_12 / 2 );
        thread _ID42407::_ID11708( level._ID794, var_39, 0, 1, 0, var_12 / 2 );
        thread _ID42407::_ID11709( level._ID794, var_32, 0, 0, 1, var_12 / 2 );
    }

    if ( isdefined( var_6 ) && var_6 )
    {
        var_45 = 1;
        var_46 = distance( self._ID740, var_1._ID740 );
        var_47 = var_46 / var_14;
        self vehicle_setspeed( var_47, var_47 * 0.05 );
    }

    var_32 moveto( var_32._ID45218, var_14, var_14 / 2, var_14 / 2 );
    var_32 rotateto( var_32._ID49113, var_14, var_14 / 2, var_14 / 2 );
    wait(var_14);
    self attachpath( var_1 );

    if ( isdefined( var_6 ) && var_6 )
        self vehicle_setspeed( var_9, var_10, var_11 );

    _ID12230();
}

_ID44251( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        return;

    if ( var_1 != "precrushed" && var_1 != "postcrushed" )
        return;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    var_3 = [];

    if ( isdefined( var_0 ) && isdefined( var_0._ID1193 ) )
        var_3 = getentarray( var_0._ID1193 + "_" + var_1 + "_clip", "targetname" );
    else
    {
        var_4 = getentarray( "script_brushmodel", "classname" );

        foreach ( var_6 in var_4 )
        {
            if ( isdefined( var_6._ID1193 ) && issubstr( var_6._ID1193, var_1 ) )
                var_3 = _ID42237::_ID3293( var_3, var_6 );
        }
    }

    foreach ( var_9 in var_3 )
    {
        if ( var_2 )
        {
            var_9 solid();
            continue;
        }

        var_9 notsolid();
    }
}

_ID48404( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_3 ) )
        wait(var_3);

    playfxontag( var_1, self, var_0 );

    if ( isdefined( var_2 ) )
        thread _ID42407::_ID27080( var_2, var_0 );
}

_ID54383( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !animhasnotetrack( var_4, var_3 ) )
        return;

    var_5 = getanimlength( var_4 );
    var_6 = getnotetracktimes( var_4, var_3 );
    var_5 *= var_6[0];
    wait(var_5);
    playfxontag( var_1, self, var_0 );

    if ( isdefined( var_2 ) )
        thread _ID42407::_ID27080( var_2, var_0 );
}

_ID44666( var_0, var_1 )
{
    if ( isdefined( var_0 ) )
        return var_0;

    if ( isdefined( var_1 ) )
        return var_1;
}

_ID52598( var_0 )
{
    if ( animhasnotetrack( var_0, "left_glass_fx" ) )
        return 1;

    if ( animhasnotetrack( var_0, "right_glass_fx" ) )
        return 1;

    if ( animhasnotetrack( var_0, "back_glass_fx" ) )
        return 1;

    if ( animhasnotetrack( var_0, "front_glass_fx" ) )
        return 1;

    return 0;
}

_ID54122( var_0 )
{
    self endon( "death" );
    level endon( var_0 );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( isalive( var_1 ) )
        {
            if ( var_1._ID1194 == "allies" && var_1 != level._ID794 )
                continue;

            var_1 dodamage( var_1._ID486 + 150, ( 0, 0, 0 ) );
        }
    }
}

_ID50735( var_0 )
{
    wait 0.01;
    thread _ID42412::_ID16494( self, var_0 );

    if ( !self._ID29965.size )
        return;

    for ( var_1 = 0; var_1 < self._ID29965.size; var_1++ )
        thread _ID42412::_ID16494( self, self._ID29965[var_1]._ID40222 );
}

_ID52033( var_0, var_1, var_2, var_3 )
{
    thread _ID54454( var_0, var_1, var_2, var_3 );
}

_ID54454( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID42407::_ID16728( var_0 );
    var_4 waittill( "spawned",  var_5  );
    _ID50031( var_5, var_1, var_2, var_3 );
}

_ID45352( var_0, var_1, var_2, var_3 )
{
    thread _ID50031( var_0, var_1, var_2, var_3 );
}

_ID50031( var_0, var_1, var_2, var_3 )
{
    var_0 waittill( var_1 );

    if ( isdefined( var_3 ) )
        wait(var_3);

    _ID42234::_ID13611( var_2 );
}

_ID45794( var_0 )
{
    self notify( "new_volume_command" );
    self endon( "new_volume_command" );
    self endon( "death" );
    self setvolume( 0, 0 );

    if ( isdefined( self._ID34513 ) )
        self._ID34513 = 0;
    else
        self vehicle_turnengineon();

    self setvolume( 1.0, var_0 );
    wait(var_0);
}

_ID46093( var_0 )
{
    self notify( "new_volume_command" );
    self endon( "new_volume_command" );
    self endon( "death" );
    self setvolume( 0.0, var_0 );
    wait(var_0);

    if ( isdefined( self._ID34513 ) )
        self._ID34513 = 1;
    else
        self vehicle_turnengineoff();
}

_ID52430( var_0, var_1, var_2 )
{

}

_ID46021( var_0 )
{
    var_0 = ( var_0[0], var_0[1], 0 );
    var_1 = _ID42237::_ID15566( var_0, level._ID45355 );
    var_2 = [];

    for ( var_3 = 0; var_3 < 3; var_3++ )
        var_2[var_3] = var_1[var_3];

    for ( var_3 = 0; var_3 < level._ID45355.size; var_3++ )
    {
        foreach ( var_5 in var_2 )
        {
            if ( var_5 == level._ID45355[var_3] )
                return var_5;
        }
    }
}

_ID46080()
{
    var_0 = getentarray( "vehicle_touch_trigger", "targetname" );
    var_1 = getentarray( "vehicle_use_trigger", "targetname" );
    var_0 = _ID42237::_ID3296( var_0, var_1 );
    var_2 = undefined;

    foreach ( var_4 in var_0 )
    {
        if ( var_4._ID922 == self._ID669 )
        {
            var_2 = var_4._ID740;
            break;
        }
    }

    var_6 = [];

    foreach ( var_4 in var_0 )
    {
        if ( var_4._ID922 != self._ID669 )
            continue;

        if ( var_4._ID740 != var_2 )
            continue;

        var_6[var_6.size] = var_4;
    }

    self._ID52264 = [];

    foreach ( var_4 in var_6 )
    {
        var_4._ID1193 = undefined;
        var_4 thread _ID42413::_ID22902( self, "tag_origin" );

        if ( !isdefined( self._ID52264[var_4._ID172] ) )
            self._ID52264[var_4._ID172] = [];

        self._ID52264[var_4._ID172][self._ID52264[var_4._ID172].size] = var_4;
    }
}

_ID45813( var_0 )
{
    switch ( var_0 )
    {
        case "instant":
            self setyawspeed( 290, 245, 222.5, 0 );
            break;
        case "faster":
            self setmaxpitchroll( 25, 50 );
            self setyawspeed( 180, 90, 22.5, 0 );
            break;
        case "fast":
            self setyawspeed( 90, 45, 22.5, 0 );
            break;
        case "slow":
            self setyawspeed( 15, 5, 15, 0 );
            break;
        default:
            self setyawspeed( 90, 45, 22.5, 0 );
            break;
    }
}

_ID22484( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;
    var_4 = undefined;

    foreach ( var_6 in var_1 )
    {
        if ( var_6._ID31455 == 2 || var_6._ID31455 == 5 )
        {
            var_2 = var_6;
            continue;
        }

        if ( var_6._ID31455 == 3 || var_6._ID31455 == 6 )
        {
            var_4 = var_6;
            continue;
        }

        if ( var_6._ID31455 == 4 || var_6._ID31455 == 7 )
            var_3 = var_6;
    }

    _ID42407::_ID13027( "staged_guy_" + var_0 );
    thread _ID40201( var_2, undefined, var_0 );
    var_2 waittill( "boarding_vehicle" );
    thread _ID40201( var_3, undefined, var_0 );
    var_3 waittill( "boarding_vehicle" );
    _ID42407::_ID13025( "guy2_in_" + var_0 );
}

_ID32450( var_0, var_1, var_2 )
{
    if ( !_ID42407::_ID13023( "staged_guy_" + var_2 ) )
        _ID42407::_ID13024( "staged_guy_" + var_2 );
    else
        _ID42407::_ID13021( "staged_guy_" + var_2 );

    if ( !_ID42407::_ID13023( "guy2_in_" + var_2 ) )
        _ID42407::_ID13024( "guy2_in_" + var_2 );
    else
        _ID42407::_ID13021( "guy2_in_" + var_2 );

    var_3 = _ID15985( var_0, var_2 );
    var_4 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_5 = spawn( "script_model", ( 0, 0, 0 ) );
    var_5 setmodel( self._ID669 );

    if ( isdefined( self._ID24747 ) )
        var_5._ID740 = self._ID740;
    else
        var_5._ID740 = _ID42237::_ID12140( var_4._ID740 ) + ( 0, 0, self._ID26026 );

    var_5._ID65 = var_4._ID65;
    var_5 hide();
    var_5 setcontents( 0 );
    var_6 = undefined;
    var_7 = undefined;
    var_8 = undefined;

    foreach ( var_10 in var_3 )
    {
        var_11 = undefined;

        foreach ( var_13 in var_1 )
        {
            if ( isdefined( var_13._ID31455 ) && var_13._ID31455 == var_10._ID31455 )
            {
                var_11 = var_13;
                break;
            }
        }

        if ( !isdefined( var_11 ) )
            var_11 = _ID42237::_ID16182( var_10._ID740, var_1 );

        var_11._ID31455 = var_10._ID31455;

        if ( var_11._ID31455 == 2 || var_11._ID31455 == 5 )
        {
            var_6 = var_11;
            var_11 _ID42372::_ID16967( var_10 );
        }
        else if ( var_11._ID31455 == 3 || var_11._ID31455 == 6 )
            var_8 = var_11;
        else if ( var_11._ID31455 == 4 || var_11._ID31455 == 7 )
        {
            var_7 = var_11;
            var_11 _ID42372::_ID16967( var_10 );
        }

        var_1 = _ID42237::_ID3321( var_1, var_11 );
    }

    thread _ID35564( var_8, var_2, var_7, var_5 );
    thread _ID42237::_ID10280( var_5 );
}

_ID15985( var_0, var_1 )
{
    var_2 = getnodearray( var_0._ID1191, "targetname" );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( var_5._ID922 == "stage_" + var_1 )
            var_3[var_3.size] = var_5;
    }

    return var_3;
}

_ID35564( var_0, var_1, var_2, var_3 )
{
    var_4 = "stage_littlebird_" + var_1;
    var_5 = [];
    var_5[0] = var_0;
    var_3 _ID42259::_ID3027( var_5[0], var_4, "tag_detach_" + var_1 );
    var_3 _ID42259::_ID3020( var_5[0], var_4, "tag_detach_" + var_1 );
    _ID42407::_ID13025( "staged_guy_" + var_1 );
    var_0 setgoalpos( _ID42237::_ID12140( var_0._ID740 ) );
    var_0._ID452 = 16;
    _ID42407::_ID13027( "guy2_in_" + var_1 );
    thread _ID42412::_ID22466( [ var_0 ], undefined, var_1 );
}

vehicle_set_random_unload_delays( var_0, var_1 )
{
    return _ID42413::_vehicle_set_random_unload_delays( var_0, var_1 );
}
