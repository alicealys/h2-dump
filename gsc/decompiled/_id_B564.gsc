// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init()
{
    precacherumble( "stinger_lock_rumble" );

    foreach ( var_1 in level.players )
        var_1 _id_AB82();

    foreach ( var_1 in level.players )
    {
        var_1 thread _id_C735();
        var_1 thread _id_BDEF();
    }
}

_id_AB82()
{
    if ( !isdefined( self._id_D474 ) )
        self._id_D474 = spawnstruct();

    self._id_D474.stingerlockstarttime = 0;
    self._id_D474._id_D4DD = 0;
    self._id_D474._id_D03A = 0;
    self._id_D474.stingertarget = undefined;
    self notify( "stinger_irt_cleartarget" );
    self notify( "stop_lockon_sound" );
    self notify( "stop_locked_sound" );
    self._id_D474._id_D22D = undefined;
    self _meth_80B6( "stinger_lock_rumble" );
    self weaponlockfree();
    self weaponlocktargettooclose( 0 );
    self weaponlocknoclearance( 0 );
    self stoplocalsound( "stinger_clu_lock" );
    self stoplocalsound( "stinger_clu_aquiring_lock" );
}

_id_C735()
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

_id_BDEF()
{
    self endon( "death" );

    for (;;)
    {
        while ( !_id_B23B() )
            wait 0.05;

        thread _id_BBA8();

        while ( _id_B23B() )
            wait 0.05;

        self notify( "stinger_IRT_off" );
        _id_AB82();
    }
}

_id_BBA8()
{
    self endon( "death" );
    self endon( "stinger_IRT_off" );
    var_0 = 2000;

    for (;;)
    {
        wait 0.05;

        if ( self._id_D474._id_D03A )
        {
            if ( !_id_BE35( self._id_D474.stingertarget ) )
            {
                _id_AB82();
                continue;
            }

            thread _id_BE16( "stinger_clu_lock", 0.75 );
            _id_C16D( self._id_D474.stingertarget );
            _id_C380();
            continue;
        }

        if ( self._id_D474._id_D4DD )
        {
            if ( !_id_BE35( self._id_D474.stingertarget ) )
            {
                _id_AB82();
                continue;
            }

            var_1 = gettime() - self._id_D474.stingerlockstarttime;

            if ( var_1 < var_0 )
                continue;

            self notify( "stop_lockon_sound" );
            self._id_D474._id_D03A = 1;
            self weaponlockfinalize( self._id_D474.stingertarget );
            _id_C16D( self._id_D474.stingertarget );
            _id_C380();
            continue;
        }

        var_2 = _id_C5A4();

        if ( !isdefined( var_2 ) )
            continue;

        self._id_D474.stingertarget = var_2;
        self._id_D474.stingerlockstarttime = gettime();
        self._id_D474._id_D4DD = 1;
        thread _id_BDFF( "stinger_clu_aquiring_lock", 0.6 );
    }
}

_id_C5A4()
{
    var_0 = target_getarray();
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( _id_AFBA( var_0[var_2] ) )
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

_id_AFBA( var_0 )
{
    return target_isincircle( var_0, self, 65, 60 );
}

_id_C461( var_0 )
{
    return target_isincircle( var_0, self, 65, 75 );
}

_id_BE35( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( !target_istarget( var_0 ) )
        return 0;

    if ( !_id_C461( var_0 ) )
        return 0;

    return 1;
}

_id_B23B()
{
    var_0 = self getcurrentweapon();

    if ( var_0 != "stinger" )
        return 0;

    if ( self playerads() == 1.0 )
        return 1;

    return 0;
}

_id_C380()
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
    var_11 = self.origin + ( 0, 0, var_0 ) + var_9 * var_1;
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
        }
        else if ( var_6 )
        {

        }
    }

    self weaponlocknoclearance( var_12 );
}

_id_C16D( var_0 )
{
    var_1 = 1000;

    if ( !isdefined( var_0 ) )
        return 0;

    var_2 = distance2d( self.origin, var_0.origin );

    if ( var_2 < var_1 )
    {
        self._id_D474._id_CC9F = 1;
        self weaponlocktargettooclose( 1 );
    }
    else
    {
        self._id_D474._id_CC9F = 0;
        self weaponlocktargettooclose( 0 );
    }
}

_id_BDFF( var_0, var_1 )
{
    self endon( "stop_lockon_sound" );
    self endon( "death" );

    for (;;)
    {
        self playlocalsound( var_0 );
        self playrumblelooponentity( "stinger_lock_rumble" );
        wait( var_1 );
    }
}

_id_BE16( var_0, var_1 )
{
    self endon( "stop_locked_sound" );
    self endon( "death" );

    if ( isdefined( self._id_D474._id_D22D ) )
        return;

    self._id_D474._id_D22D = 1;

    for (;;)
    {
        self playlocalsound( var_0 );
        self playrumblelooponentity( "stinger_lock_rumble" );
        wait( var_1 / 3 );
        self playrumblelooponentity( "stinger_lock_rumble" );
        wait( var_1 / 3 );
        self playrumblelooponentity( "stinger_lock_rumble" );
        wait( var_1 / 3 );
        self _meth_80B6( "stinger_lock_rumble" );
    }

    self._id_D474._id_D22D = undefined;
}
