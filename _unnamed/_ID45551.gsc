// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID51566( var_0 )
{
    _func_14D( "barrett" );
    _ID42407::_ID1895( "barrett", &"WEAPON_PRESS_FORWARDS_OR_BACKWARDS", ::_unknown_028B );
    _ID42237::_ID14400( "player_is_on_turret" );
    _ID42237::_ID14400( "player_on_barret" );
    _ID42237::_ID14400( "player_used_zoom" );
    _ID42237::_ID14400( "can_use_turret" );
    _ID42237::_ID14400( "player_gets_off_turret" );
    _ID42237::_ID14400( "player_get_on_turret" );
    level._ID1426["bullet_geo"] = _func_155( "fx/smoke/smoke_geotrail_barret" );
    thread _unknown_02BD();

    if ( !_func_02F( var_0 ) )
        thread _unknown_00A2();

    wait 0.05;
    level._ID45317 = 1;
    thread _unknown_0095();
}

_ID53667()
{
    var_0 = _func_1A1( "barrett_trigger", "targetname" );
    var_1 = _func_1A1( "turret2", "targetname" );
    var_2 = _func_03A( "player_useradius", 72 );

    for (;;)
    {
        if ( _func_1A7( level._ID794 ) )
            level._ID794 _ID42407::_ID41104( var_0, var_2 * 10 );

        if ( _func_1A7( level._ID794 ) )
            level._ID794 _meth_85BB( var_0, var_1 );
        else
            break;

        wait 5;
    }
}

_ID48989()
{
    level._ID794._ID50328 = 0;
    level._ID794._ID43499 = 0;
    var_0 = _func_1A1( "barrett_trigger", "targetname" );
    var_0 thread _ID42237::_ID44574( level._ID794, &"WEAPON_BARRETT_USE", &"WEAPON_BARRETT_USE_PRESS", "stop_hint_text" );
    var_0 thread _unknown_0153( "stop_hint_text" );
    var_1 = _func_1A1( "turret2", "targetname" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );
    var_1 _meth_80C7();
    var_1 _meth_805A();
    var_1._ID740 = var_2._ID740;

    for (;;)
    {
        var_0 waittill( "trigger" );
        _unknown_01B4( var_1 );
    }
}

_ID48903( var_0 )
{
    self endon( var_0 );
    var_1 = level._ID794 _meth_82D7();

    if ( !var_1 )
        _ID42237::_ID38863();

    for (;;)
    {
        if ( level._ID794._ID50328 != level._ID794._ID43499 )
        {
            if ( level._ID794._ID50328 )
                _ID42237::_ID38863();
            else
                _ID42237::_ID38865();

            level._ID794._ID43499 = level._ID794._ID50328;
        }
        else
        {
            var_2 = level._ID794 _meth_82D7();

            if ( var_1 != var_2 )
            {
                if ( var_2 )
                    _ID42237::_ID38865();
                else
                    _ID42237::_ID38863();

                var_1 = var_2;
            }
        }

        waittillframeend;
    }
}

_ID51667()
{
    for (;;)
    {
        self waittill( "damage" );

        if ( !_ID42237::_ID14385( "player_is_on_turret" ) )
            break;

        _func_192( 0.25, 0.75, level._ID794._ID740, 10000 );
    }
}

_ID45881( var_0 )
{
    if ( level._ID912 == "dcburning" )
    {
        _unknown_02E0( var_0 );
        return;
    }

    level._ID794._ID26017 = level._ID794._ID740;
    level._ID794 _meth_8345( ( var_0._ID65[0], var_0._ID65[1], level._ID794._ID65[2] ) );
    var_0 _meth_80A0( level._ID794 );
    _func_0DB( "ui_hideMap", "1" );
    _func_0DB( "compass", 0 );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "hud_showStance", 0 );
    level._ID49546 = _func_03D() + 1000;
    _func_0DB( "sv_znear", "100" );
    _func_0DB( "sm_sunShadowCenter", _func_1A1( var_0._ID1191, "targetname" )._ID740 );
    _ID42237::_ID14402( "player_is_on_turret" );
    level._ID794 _meth_8328();
    _func_0DB( "turret_adsEnabled", 0 );
    _ID42465::_ID23797( "sniper_ads_mix" );

    if ( level._ID912 == "dcburning" )
    {
        level._ID794 _meth_8313( 1, "" );
        level._ID794 _meth_80F5();
    }

    thread _unknown_04F6();

    if ( !_ID42237::_ID14385( "player_used_zoom" ) )
        level._ID794 thread _ID42407::_ID11085( "barrett", undefined, undefined, undefined, -40 );

    level._ID22229 = 1;
    var_1 = level._ID794._ID740 + ( 0, 0, 60 );

    for (;;)
    {
        if ( !_func_02F( var_0 _meth_80F2() ) )
            break;

        wait 0.05;
    }

    _func_0DB( "compass", 1 );
    _func_0DB( "ammoCounterHide", "0" );
    _func_0DB( "ui_hideMap", "0" );
    _func_0DB( "hud_showStance", 1 );
    _func_0DB( "sv_znear", "0" );
    _func_0DB( "sm_sunShadowCenter", ( 0, 0, 0 ) );
    _ID42237::_ID14388( "player_is_on_turret" );
    level._ID794 _meth_8329();
    _func_0DB( "turret_adsEnabled", 1 );
    _ID42465::_ID23801( "sniper_ads_mix" );

    if ( level._ID912 == "dcburning" )
        level._ID794 _meth_8313( 1, "nightvision" );

    level._ID22229 = 0;
    _func_076( 0, 0.05 );
    level._ID794 _meth_8343( level._ID794._ID26017 + ( 0, 0, 10 ) );
}

_ID44208( var_0, var_1, var_2, var_3 )
{
    wait(var_0);
    level._ID794 _ID42313::_ID13798( var_1, undefined );
    wait(var_2);
    level._ID794 _ID42313::_ID13791( var_3, undefined );
}

_ID47635( var_0 )
{
    var_1 = _func_039( "sv_znear" );
    thread _unknown_058C();
    _ID42237::_ID14402( "player_get_on_turret" );
    _ID42475::_ID34575( "start_player_on_turret" );
    level._ID794._ID50328 = 1;
    _func_0DB( "ui_hideMap", "1" );
    _func_0DB( "compass", 0 );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "hud_showStance", 0 );
    _func_0DB( "actionSlotsHide", "1" );
    var_2 = _func_1A1( "model_barrett", "targetname" );
    var_2._ID3189 = "barrett";
    var_2 _ID42259::_ID32556();
    var_3 = level._ID53428;
    _func_0DB( "sv_znear", "0.01" );
    _func_0DB( "cg_altDamageMode", "0" );
    level._ID794 _meth_8189( "stand" );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_8328( 1, 200, 0.2 );
    thread _unknown_052C( 3.05, 0.15, 0.2, 0.3 );
    var_4 = 0.5;
    level._ID794 _meth_80F6();
    var_3 _ID42407::_ID49392( "barrett_in", var_2, 0, var_4, 1, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
    _func_0DB( "r_forceWeaponThermalWidth", 450 );
    _func_0DB( "r_forceWeaponThermalHeight", 450 );
    _func_0DB( "r_forceWeaponThermalActive", 1 );
    level._ID794 thread _ID42323::thermal_shellshock();
    level._ID794 _meth_80F7();
    level._ID794._ID26017 = level._ID794._ID740;
    level._ID794 _meth_8345( ( var_0._ID65[0], var_0._ID65[1], level._ID794._ID65[2] ) );
    var_0 _meth_80A0( level._ID794 );
    _func_032( "ui_barret", 1 );
    level._ID49546 = _func_03D() + 1000;
    _func_0DB( "sv_znear", "100" );
    _func_0DB( "sm_sunShadowCenter", _func_1A1( var_0._ID1191, "targetname" )._ID740 );
    _ID42237::_ID14402( "player_is_on_turret" );
    level._ID794 thread _unknown_0543();
    _func_0DB( "turret_adsEnabled", 0 );
    _ID42465::_ID23797( "sniper_ads_mix" );
    level._ID794 _meth_8313( 1, "" );
    level._ID794 _meth_80F5();
    thread _unknown_076B();

    if ( !_ID42237::_ID14385( "player_used_zoom" ) )
        level._ID794 thread _ID42407::_ID11085( "barrett", undefined, undefined, undefined, -40 );

    level._ID22229 = 1;
    level._ID794.previousfov = _func_0C1( _func_039( "cg_fov" ) );
    level._ID794.lastturretfov = _func_09F();
    var_0 thread _unknown_0735();
    var_0 waittill( "turret_deactivate" );
    level._ID794 _meth_8032( level._ID794.previousfov, 0.5 );
    level._ID794 _meth_80F6();
    thread _unknown_065E( 0.0, 0.1, 0.25, 0.3 );
    wait 0.2;
    _func_0DB( "r_forceWeaponThermalActive", 0 );
    level._ID794 notify( "thermal_stopshellshock" );
    level._ID794 _meth_8190();
    _func_032( "ui_barret", 0 );
    _func_0DB( "sv_znear", "0.01" );
    _func_0DB( "sm_sunShadowCenter", ( 0, 0, 0 ) );
    _ID42237::_ID14388( "player_is_on_turret" );
    _func_0DB( "turret_adsEnabled", 1 );
    _ID42465::_ID23801( "sniper_ads_mix" );
    _ID42475::_ID34575( "start_player_off_turret" );
    level._ID794 _meth_8313( 1, "nightvision" );
    level._ID22229 = 0;
    _func_076( 0, 0.05 );
    level._ID794 _meth_8343( level._ID794._ID26017 + ( 0, 0, 10 ) );
    var_3 _ID42407::_ID49392( "barrett_out", var_2, 1, 0.2, 1 );
    level._ID794 _meth_80F7();
    _func_0DB( "compass", 1 );
    _func_0DB( "ammoCounterHide", "0" );
    _func_0DB( "ui_hideMap", "0" );
    _func_0DB( "actionSlotsHide", "0" );
    _func_0DB( "hud_showStance", 1 );
    _func_0DB( "sv_znear", var_1 );
    _func_0DB( "cg_altDamageMode", "1" );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
    level._ID794 _meth_8329();
    _ID42237::_ID14388( "player_get_on_turret" );
    waittillframeend;
    level._ID794._ID50328 = 0;
}

update_turret_fov()
{
    self endon( "turret_deactivate" );

    for (;;)
    {
        waittillframeend;
        level._ID794.lastturretfov = _func_09F();
        _func_0DB( "cg_fov", level._ID794.lastturretfov );
    }
}

_ID54656()
{
    level._ID794 waittill( "player_anim_started" );
    var_0 = _ID54167::_ID43386( "barrett_in_cin", 1 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 16, 16 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44518( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 2.5 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.45 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.5 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.2 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID45481()
{
    var_0 = -5000;

    for (;;)
    {
        _ID42237::_ID14413( "player_is_on_turret" );
        _ID42407::_ID40847( var_0, 1.0 );

        if ( !level._ID794 _meth_8348() )
        {
            wait 0.05;
            continue;
        }

        thread _unknown_09CC();
        var_0 = _func_03D();

        while ( level._ID794 _meth_8348() )
            wait 0.05;
    }
}

_ID49762()
{
    if ( _func_03D() < level._ID49546 )
        return;

    level._ID794 _meth_818E( "barrett", 1.3 );
}

_ID53426()
{
    if ( !_ID42237::_ID14385( "player_is_on_turret" ) )
        return 1;

    return _ID42237::_ID14385( "player_used_zoom" );
}

_ID54067()
{
    _ID42237::_ID14388( "player_used_zoom" );
    var_0 = level._ID794 _meth_82FE();

    for (;;)
    {
        wait 0.05;
        var_0 = level._ID794 _meth_82FE();

        if ( var_0[0] > 0.2 )
            break;
    }

    wait 6;
    _ID42237::_ID14402( "player_used_zoom" );
}
