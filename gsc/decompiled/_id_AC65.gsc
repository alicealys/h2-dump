// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_BCBD( var_0 )
{
    if ( !isdefined( var_0 ) || !var_0 )
    {
        if ( self playerads() < 1.0 )
            return 0;
    }
    else if ( self playerads() == 0 )
        return 0;

    var_1 = self getcurrentweapon();

    if ( !issubstr( var_1, "javelin" ) )
        return 0;

    return 1;
}

_id_AC10( var_0 )
{
    return target_isinrect( var_0, self, 25, 60, 30 );
}

_id_CFAF( var_0 )
{
    return target_isinrect( var_0, self, 25, 90, 45 );
}

_id_BAFD()
{
    self notify( "javelin_clu_cleartarget" );
    self notify( "stop_lockon_sound" );
    level._id_B65D = 0;
    level._id_AA45 = 0;
    level._id_B75E = 0;
    level._id_C4FF = undefined;
    self weaponlockfree();
    self weaponlocktargettooclose( 0 );
    self weaponlocknoclearance( 0 );
    setomnvar( "ui_javelin_lock_status", 0 );
}

_id_B841()
{
    var_0 = target_getarray();
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( _id_AC10( var_0[var_2] ) )
            var_1[var_1.size] = var_0[var_2];

        target_setoffscreenshader( var_0[var_2], "javelin_hud_target_offscreen" );
    }

    if ( var_1.size == 0 )
        return undefined;

    var_3 = var_1[0];

    if ( var_1.size > 1 )
    {

    }

    return var_3;
}

_id_BE35( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( !target_istarget( var_0 ) )
        return 0;

    if ( !_id_CFAF( var_0 ) )
        return 0;

    return 1;
}

_id_C16D( var_0 )
{
    var_1 = 1000;

    if ( !isdefined( var_0 ) )
        return 0;

    var_2 = distance2d( self.origin, var_0.origin );

    if ( var_2 < var_1 )
        self weaponlocktargettooclose( 1 );
    else
        self weaponlocktargettooclose( 0 );
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

_id_D0E0()
{
    self endon( "death" );
    self endon( "javelin_clu_off" );

    for (;;)
    {
        wait 0.05;
        var_0 = self getcurrentweaponclipammo();

        if ( !var_0 )
        {
            _id_BAFD();
            continue;
        }

        if ( level._id_B75E )
        {
            if ( !_id_BE35( level._id_C4FF ) )
            {
                _id_BAFD();
                continue;
            }

            _id_C16D( level._id_C4FF );
            _id_C380();
            continue;
        }

        if ( level._id_AA45 )
        {
            if ( !_id_BE35( level._id_C4FF ) )
            {
                _id_BAFD();
                continue;
            }

            var_1 = gettime() - level._id_B65D;

            if ( var_1 < level._id_C70D )
                continue;

            self notify( "stop_lockon_sound" );
            level._id_B75E = 1;
            wait 0.2;
            self weaponlockfinalize( level._id_C4FF );
            self playlocalsound( "javelin_clu_lock" );
            _id_C16D( level._id_C4FF );
            _id_C380();
            setomnvar( "ui_javelin_lock_status", 2 );
            continue;
        }

        var_2 = _id_B841();

        if ( !isdefined( var_2 ) )
            continue;

        level._id_C4FF = var_2;
        level._id_B65D = gettime();
        level._id_AA45 = 1;
        setomnvar( "ui_javelin_lock_status", 1 );
        self weaponlockstart( var_2 );
        thread _id_BDFF( "javelin_clu_aquiring_lock", 0.6 );
    }
}

_id_CC8F()
{
    self endon( "death" );
    childthread _id_B384();
    childthread _id_C069();
    childthread _id_C9CA();

    for (;;)
    {
        while ( !_id_BCBD() )
            wait 0.05;

        thread _id_D0E0();

        while ( _id_BCBD() )
            wait 0.05;

        self notify( "javelin_clu_off" );
        _id_BAFD();
    }
}

_id_C9CA()
{
    for (;;)
    {
        while ( !_id_BCBD( 1 ) )
            wait 0.05;

        self disableweaponpickup();

        while ( _id_BCBD( 1 ) )
            wait 0.05;

        self enableweaponpickup();
    }
}

_id_BFE3()
{
    for (;;)
    {
        wait 0.05;
        _id_C380();
    }
}

_id_B384()
{
    for (;;)
    {
        self waittill( "damage" );
        setomnvar( "ui_shake", 300 );
    }
}

_id_C069()
{
    for (;;)
    {
        level waittill( "earthquake" );
        setomnvar( "ui_shake", 500 );
    }
}

init()
{
    level._id_C70D = 2000;
    setomnvar( "ui_javelin", 1 );
    precacheshader( "javelin_hud_target_offscreen" );
    common_scripts\utility::array_thread( level.players, ::_id_BAFD );
    setsaveddvar( "vehHudTargetSize", 30 );
    setsaveddvar( "vehHudTargetScreenEdgeClampBufferLeft", 95 );
    setsaveddvar( "vehHudTargetScreenEdgeClampBufferRight", 95 );
    setsaveddvar( "vehHudTargetScreenEdgeClampBufferTop", 139 );
    setsaveddvar( "vehHudTargetScreenEdgeClampBufferBottom", 134 );
    setsaveddvar( "vehHudTargetingCornerLockTime", level._id_C70D / 1000 );
    common_scripts\utility::array_thread( level.players, ::_id_CC8F );
}

_id_BDFF( var_0, var_1 )
{
    self endon( "stop_lockon_sound" );

    for (;;)
    {
        self playlocalsound( var_0 );
        wait( var_1 );
    }
}
