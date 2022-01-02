// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID48317( var_0 )
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

_ID44048( var_0 )
{
    return target_isinrect( var_0, self, 25, 60, 30 );
}

_ID53167( var_0 )
{
    return target_isinrect( var_0, self, 25, 90, 45 );
}

_ID47869()
{
    self notify( "javelin_clu_cleartarget" );
    self notify( "stop_lockon_sound" );
    level._ID46685 = 0;
    level._ID43589 = 0;
    level._ID46942 = 0;
    level._ID50431 = undefined;
    self weaponlockfree();
    self weaponlocktargettooclose( 0 );
    self weaponlocknoclearance( 0 );
    setomnvar( "ui_javelin_lock_status", 0 );
}

_ID47169()
{
    var_0 = target_getarray();
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( _ID44048( var_0[var_2] ) )
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

_ID48693( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( !target_istarget( var_0 ) )
        return 0;

    if ( !_ID53167( var_0 ) )
        return 0;

    return 1;
}

_ID49517( var_0 )
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

            continue;
        }

        if ( var_6 )
        {

        }
    }

    self weaponlocknoclearance( var_12 );
}

_ID53472()
{
    self endon( "death" );
    self endon( "javelin_clu_off" );

    for (;;)
    {
        wait 0.05;
        var_0 = self getcurrentweaponclipammo();

        if ( !var_0 )
        {
            _ID47869();
            continue;
        }

        if ( level._ID46942 )
        {
            if ( !_ID48693( level._ID50431 ) )
            {
                _ID47869();
                continue;
            }

            _ID49517( level._ID50431 );
            _ID50048();
            continue;
        }

        if ( level._ID43589 )
        {
            if ( !_ID48693( level._ID50431 ) )
            {
                _ID47869();
                continue;
            }

            var_1 = gettime() - level._ID46685;

            if ( var_1 < level._ID50957 )
                continue;

            self notify( "stop_lockon_sound" );
            level._ID46942 = 1;
            wait 0.2;
            self weaponlockfinalize( level._ID50431 );
            self playlocalsound( "javelin_clu_lock" );
            _ID49517( level._ID50431 );
            _ID50048();
            setomnvar( "ui_javelin_lock_status", 2 );
            continue;
        }

        var_2 = _ID47169();

        if ( !isdefined( var_2 ) )
            continue;

        level._ID50431 = var_2;
        level._ID46685 = gettime();
        level._ID43589 = 1;
        setomnvar( "ui_javelin_lock_status", 1 );
        self weaponlockstart( var_2 );
        thread _ID48639( "javelin_clu_aquiring_lock", 0.6 );
    }
}

_ID52367()
{
    self endon( "death" );
    childthread _ID45956();
    childthread _ID49257();
    childthread _ID51658();

    for (;;)
    {
        while ( !_ID48317() )
            wait 0.05;

        thread _ID53472();

        while ( _ID48317() )
            wait 0.05;

        self notify( "javelin_clu_off" );
        _ID47869();
    }
}

_ID51658()
{
    for (;;)
    {
        while ( !_ID48317( 1 ) )
            wait 0.05;

        self disableweaponpickup();

        while ( _ID48317( 1 ) )
            wait 0.05;

        self enableweaponpickup();
    }
}

_ID49123()
{
    for (;;)
    {
        wait 0.05;
        _ID50048();
    }
}

_ID45956()
{
    for (;;)
    {
        self waittill( "damage" );
        setomnvar( "ui_shake", 300 );
    }
}

_ID49257()
{
    for (;;)
    {
        level waittill( "earthquake" );
        setomnvar( "ui_shake", 500 );
    }
}

init()
{
    level._ID50957 = 2000;
    setomnvar( "ui_javelin", 1 );
    precacheshader( "javelin_hud_target_offscreen" );
    _ID42237::_ID3350( level._ID805, ::_ID47869 );
    setsaveddvar( "vehHudTargetSize", 30 );
    setsaveddvar( "vehHudTargetScreenEdgeClampBufferLeft", 95 );
    setsaveddvar( "vehHudTargetScreenEdgeClampBufferRight", 95 );
    setsaveddvar( "vehHudTargetScreenEdgeClampBufferTop", 139 );
    setsaveddvar( "vehHudTargetScreenEdgeClampBufferBottom", 134 );
    setsaveddvar( "vehHudTargetingCornerLockTime", level._ID50957 / 1000 );
    _ID42237::_ID3350( level._ID805, ::_ID52367 );
}

_ID48639( var_0, var_1 )
{
    self endon( "stop_lockon_sound" );

    for (;;)
    {
        self playlocalsound( var_0 );
        wait(var_1);
    }
}
