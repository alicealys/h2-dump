// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    precacherumble( "stinger_lock_rumble" );

    foreach ( var_1 in level._ID805 )
        var_1 _ID43906();

    foreach ( var_1 in level._ID805 )
    {
        var_1 thread _ID50997();
        var_1 thread _ID48623();
    }
}

_ID43906()
{
    if ( !isdefined( self._ID54388 ) )
        self._ID54388 = spawnstruct();

    self._ID54388._ID36427 = 0;
    self._ID54388._ID54493 = 0;
    self._ID54388._ID53306 = 0;
    self._ID54388._ID36445 = undefined;
    self notify( "stinger_irt_cleartarget" );
    self notify( "stop_lockon_sound" );
    self notify( "stop_locked_sound" );
    self._ID54388._ID53805 = undefined;
    self _meth_80b6( "stinger_lock_rumble" );
    self weaponlockfree();
    self weaponlocktargettooclose( 0 );
    self weaponlocknoclearance( 0 );
    self stoplocalsound( "stinger_clu_lock" );
    self stoplocalsound( "stinger_clu_aquiring_lock" );
}

_ID50997()
{
    for (;;)
    {
        self waittill( "weapon_fired" );
        var_0 = self getcurrentweapon();

        if ( var_0 != "stinger" )
            continue;

        self notify( "stinger_fired" );
    }
}

_ID48623()
{
    self endon( "death" );

    for (;;)
    {
        while ( !_ID45627() )
            wait 0.05;

        thread _ID48040();

        while ( _ID45627() )
            wait 0.05;

        self notify( "stinger_IRT_off" );
        _ID43906();
    }
}

_ID48040()
{
    self endon( "death" );
    self endon( "stinger_IRT_off" );
    var_0 = 2000;

    for (;;)
    {
        wait 0.05;

        if ( self._ID54388._ID53306 )
        {
            if ( !_ID48693( self._ID54388._ID36445 ) )
            {
                _ID43906();
                continue;
            }

            thread _ID48662( "stinger_clu_lock", 0.75 );
            _ID49517( self._ID54388._ID36445 );
            _ID50048();
            continue;
        }

        if ( self._ID54388._ID54493 )
        {
            if ( !_ID48693( self._ID54388._ID36445 ) )
            {
                _ID43906();
                continue;
            }

            var_1 = gettime() - self._ID54388._ID36427;

            if ( var_1 < var_0 )
                continue;

            self notify( "stop_lockon_sound" );
            self._ID54388._ID53306 = 1;
            self weaponlockfinalize( self._ID54388._ID36445 );
            _ID49517( self._ID54388._ID36445 );
            _ID50048();
            continue;
        }

        var_2 = _ID50596();

        if ( !isdefined( var_2 ) )
            continue;

        self._ID54388._ID36445 = var_2;
        self._ID54388._ID36427 = gettime();
        self._ID54388._ID54493 = 1;
        thread _ID48639( "stinger_clu_aquiring_lock", 0.6 );
    }
}

_ID50596()
{
    var_0 = target_getarray();
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( _ID44986( var_0[var_2] ) )
            var_1[var_1.size] = var_0[var_2];
    }

    if ( var_1.size == 0 )
        return undefined;

    var_3 = var_1[0];

    if ( var_1.size > 1 )
    {

    }

    return var_3;
}

_ID44986( var_0 )
{
    return target_isincircle( var_0, self, 65, 60 );
}

_ID50273( var_0 )
{
    return target_isincircle( var_0, self, 65, 75 );
}

_ID48693( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( !target_istarget( var_0 ) )
        return 0;

    if ( !_ID50273( var_0 ) )
        return 0;

    return 1;
}

_ID45627()
{
    var_0 = self getcurrentweapon();

    if ( var_0 != "stinger" )
        return 0;

    if ( self playerads() == 1.0 )
        return 1;

    return 0;
}

_ID50048()
{
    var_0 = 60;
    var_1 = 10;
    var_2 = 400;
    var_3 = ( 0, 1, 0 );
    var_4 = ( 1, 0, 0 );
    var_5 = [];
    var_5[0] = ( 0, 0, 80 );
    var_5[1] = ( -40, 0, 120 );
    var_5[2] = ( 40, 0, 120 );
    var_5[3] = ( -40, 0, 40 );
    var_5[4] = ( 40, 0, 40 );

    if ( getdvar( "missileDebugDraw" ) == "1" )
        var_6 = 1;
    else
        var_6 = 0;

    var_7 = self getplayerangles();
    var_8 = anglestoforward( var_7 );
    var_9 = anglestoright( var_7 );
    var_10 = anglestoup( var_7 );
    var_11 = self._ID740 + ( 0, 0, var_0 ) + var_9 * var_1;
    var_12 = 0;

    for ( var_13 = 0; var_13 < var_5.size; var_13++ )
    {
        var_14 = var_11 + var_8 * var_2 + var_10 * var_5[var_13][2] + var_9 * var_5[var_13][0];
        var_15 = bullettrace( var_11, var_14, 0, undefined );

        if ( var_15["fraction"] < 1 )
        {
            var_12 = 1;

            if ( var_6 )
            {

            }
            else
                break;

            continue;
        }

        if ( var_6 )
        {

        }
    }

    self weaponlocknoclearance( var_12 );
}

_ID49517( var_0 )
{
    var_1 = 1000;

    if ( !isdefined( var_0 ) )
        return 0;

    var_2 = distance2d( self._ID740, var_0._ID740 );

    if ( var_2 < var_1 )
    {
        self._ID54388._ID52383 = 1;
        self weaponlocktargettooclose( 1 );
    }
    else
    {
        self._ID54388._ID52383 = 0;
        self weaponlocktargettooclose( 0 );
    }
}

_ID48639( var_0, var_1 )
{
    self endon( "stop_lockon_sound" );
    self endon( "death" );

    for (;;)
    {
        self playlocalsound( var_0 );
        self playrumblelooponentity( "stinger_lock_rumble" );
        wait(var_1);
    }
}

_ID48662( var_0, var_1 )
{
    self endon( "stop_locked_sound" );
    self endon( "death" );

    if ( isdefined( self._ID54388._ID53805 ) )
        return;

    self._ID54388._ID53805 = 1;

    for (;;)
    {
        self playlocalsound( var_0 );
        self playrumblelooponentity( "stinger_lock_rumble" );
        wait(var_1 / 3);
        self playrumblelooponentity( "stinger_lock_rumble" );
        wait(var_1 / 3);
        self playrumblelooponentity( "stinger_lock_rumble" );
        wait(var_1 / 3);
        self _meth_80b6( "stinger_lock_rumble" );
    }

    self._ID54388._ID53805 = undefined;
}
