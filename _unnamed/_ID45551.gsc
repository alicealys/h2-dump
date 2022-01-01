// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID51566( var_0 )
{
    precacheshellshock( "barrett" );
    _ID42407::_ID1895( "barrett", &"WEAPON_PRESS_FORWARDS_OR_BACKWARDS", ::_ID53426 );
    _ID42237::_ID14400( "player_is_on_turret" );
    _ID42237::_ID14400( "player_on_barret" );
    _ID42237::_ID14400( "player_used_zoom" );
    _ID42237::_ID14400( "can_use_turret" );
    _ID42237::_ID14400( "player_gets_off_turret" );
    _ID42237::_ID14400( "player_get_on_turret" );
    level._ID1426["bullet_geo"] = loadfx( "fx/smoke/smoke_geotrail_barret" );
    thread _ID45481();

    if ( !isdefined( var_0 ) )
        thread _ID48989();

    wait 0.05;
    level._ID45317 = 1;
    thread _ID53667();
}

_ID53667()
{
    var_0 = getent( "barrett_trigger", "targetname" );
    var_1 = getent( "turret2", "targetname" );
    var_2 = getdvarint( "player_useradius", 72 );

    for (;;)
    {
        if ( isalive( level._ID794 ) )
            level._ID794 _ID42407::_ID41104( var_0, var_2 * 10 );

        if ( isalive( level._ID794 ) )
            level._ID794 _meth_85bb( var_0, var_1 );
        else
            break;

        wait 5;
    }
}

_ID48989()
{
    level._ID794._ID50328 = 0;
    level._ID794._ID43499 = 0;
    var_0 = getent( "barrett_trigger", "targetname" );
    var_0 thread _ID42237::_ID44574( level._ID794, &"WEAPON_BARRETT_USE", &"WEAPON_BARRETT_USE_PRESS", "stop_hint_text" );
    var_0 thread _ID48903( "stop_hint_text" );
    var_1 = getent( "turret2", "targetname" );
    var_2 = getent( var_1._ID1191, "targetname" );
    var_1 makeunusable();
    var_1 hide();
    var_1._ID740 = var_2._ID740;

    for (;;)
    {
        var_0 waittill( "trigger" );
        _ID45881( var_1 );
    }
}

_ID48903( var_0 )
{
    self endon( var_0 );
    var_1 = level._ID794 issplitscreenplayer();

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
            var_2 = level._ID794 issplitscreenplayer();

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

        earthquake( 0.25, 0.75, level._ID794._ID740, 10000 );
    }
}

_ID45881( var_0 )
{
    if ( level._ID912 == "dcburning" )
    {
        _ID47635( var_0 );
        return;
    }

    level._ID794._ID26017 = level._ID794._ID740;
    level._ID794 setplayerangles( ( var_0._ID65[0], var_0._ID65[1], level._ID794._ID65[2] ) );
    var_0 useby( level._ID794 );
    setsaveddvar( "ui_hideMap", "1" );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
    level._ID49546 = gettime() + 1000;
    setsaveddvar( "sv_znear", "100" );
    setsaveddvar( "sm_sunShadowCenter", getent( var_0._ID1191, "targetname" )._ID740 );
    _ID42237::_ID14402( "player_is_on_turret" );
    level._ID794 disableweapons();
    setsaveddvar( "turret_adsEnabled", 0 );
    _ID42465::_ID23797( "sniper_ads_mix" );

    if ( level._ID912 == "dcburning" )
    {
        level._ID794 setactionslot( 1, "" );
        level._ID794 nightvisiongogglesforceoff();
    }

    thread _ID54067();

    if ( !_ID42237::_ID14385( "player_used_zoom" ) )
        level._ID794 thread _ID42407::_ID11085( "barrett", undefined, undefined, undefined, -40 );

    level._ID22229 = 1;
    var_1 = level._ID794._ID740 + ( 0, 0, 60 );

    for (;;)
    {
        if ( !isdefined( var_0 getturretowner() ) )
            break;

        wait 0.05;
    }

    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "ui_hideMap", "0" );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "sv_znear", "0" );
    setsaveddvar( "sm_sunShadowCenter", ( 0, 0, 0 ) );
    _ID42237::_ID14388( "player_is_on_turret" );
    level._ID794 enableweapons();
    setsaveddvar( "turret_adsEnabled", 1 );
    _ID42465::_ID23801( "sniper_ads_mix" );

    if ( level._ID912 == "dcburning" )
        level._ID794 setactionslot( 1, "nightvision" );

    level._ID22229 = 0;
    setblur( 0, 0.05 );
    level._ID794 setorigin( level._ID794._ID26017 + ( 0, 0, 10 ) );
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
    var_1 = getdvar( "sv_znear" );
    thread _ID54656();
    _ID42237::_ID14402( "player_get_on_turret" );
    _ID42475::_ID34575( "start_player_on_turret" );
    level._ID794._ID50328 = 1;
    setsaveddvar( "ui_hideMap", "1" );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "actionSlotsHide", "1" );
    var_2 = getent( "model_barrett", "targetname" );
    var_2._ID3189 = "barrett";
    var_2 _ID42259::_ID32556();
    var_3 = level._ID53428;
    setsaveddvar( "sv_znear", "0.01" );
    setsaveddvar( "cg_altDamageMode", "0" );
    level._ID794 setstance( "stand" );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID794 disableweapons( 1, 200, 0.2 );
    thread _ID44208( 3.05, 0.15, 0.2, 0.3 );
    var_4 = 0.5;
    level._ID794 enableinvulnerability();
    var_3 _ID42407::_ID49392( "barrett_in", var_2, 0, var_4, 1, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
    setsaveddvar( "r_forceWeaponThermalWidth", 450 );
    setsaveddvar( "r_forceWeaponThermalHeight", 450 );
    setsaveddvar( "r_forceWeaponThermalActive", 1 );
    level._ID794 thread _ID42323::thermal_shellshock();
    level._ID794 disableinvulnerability();
    level._ID794._ID26017 = level._ID794._ID740;
    level._ID794 setplayerangles( ( var_0._ID65[0], var_0._ID65[1], level._ID794._ID65[2] ) );
    var_0 useby( level._ID794 );
    setomnvar( "ui_barret", 1 );
    level._ID49546 = gettime() + 1000;
    setsaveddvar( "sv_znear", "100" );
    setsaveddvar( "sm_sunShadowCenter", getent( var_0._ID1191, "targetname" )._ID740 );
    _ID42237::_ID14402( "player_is_on_turret" );
    level._ID794 thread _ID51667();
    setsaveddvar( "turret_adsEnabled", 0 );
    _ID42465::_ID23797( "sniper_ads_mix" );
    level._ID794 setactionslot( 1, "" );
    level._ID794 nightvisiongogglesforceoff();
    thread _ID54067();

    if ( !_ID42237::_ID14385( "player_used_zoom" ) )
        level._ID794 thread _ID42407::_ID11085( "barrett", undefined, undefined, undefined, -40 );

    level._ID22229 = 1;
    level._ID794.previousfov = int( getdvar( "cg_fov" ) );
    level._ID794.lastturretfov = getstarttime();
    var_0 thread update_turret_fov();
    var_0 waittill( "turret_deactivate" );
    level._ID794 lerpfov( level._ID794.previousfov, 0.5 );
    level._ID794 enableinvulnerability();
    thread _ID44208( 0.0, 0.1, 0.25, 0.3 );
    wait 0.2;
    setsaveddvar( "r_forceWeaponThermalActive", 0 );
    level._ID794 notify( "thermal_stopshellshock" );
    level._ID794 stopshellshock();
    setomnvar( "ui_barret", 0 );
    setsaveddvar( "sv_znear", "0.01" );
    setsaveddvar( "sm_sunShadowCenter", ( 0, 0, 0 ) );
    _ID42237::_ID14388( "player_is_on_turret" );
    setsaveddvar( "turret_adsEnabled", 1 );
    _ID42465::_ID23801( "sniper_ads_mix" );
    _ID42475::_ID34575( "start_player_off_turret" );
    level._ID794 setactionslot( 1, "nightvision" );
    level._ID22229 = 0;
    setblur( 0, 0.05 );
    level._ID794 setorigin( level._ID794._ID26017 + ( 0, 0, 10 ) );
    var_3 _ID42407::_ID49392( "barrett_out", var_2, 1, 0.2, 1 );
    level._ID794 disableinvulnerability();
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "ui_hideMap", "0" );
    setsaveddvar( "actionSlotsHide", "0" );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "sv_znear", var_1 );
    setsaveddvar( "cg_altDamageMode", "1" );
    level._ID794 allowcrouch( 1 );
    level._ID794 allowprone( 1 );
    level._ID794 enableweapons();
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
        level._ID794.lastturretfov = getstarttime();
        setsaveddvar( "cg_fov", level._ID794.lastturretfov );
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

        if ( !level._ID794 attackbuttonpressed() )
        {
            wait 0.05;
            continue;
        }

        thread _ID49762();
        var_0 = gettime();

        while ( level._ID794 attackbuttonpressed() )
            wait 0.05;
    }
}

_ID49762()
{
    if ( gettime() < level._ID49546 )
        return;

    level._ID794 shellshock( "barrett", 1.3 );
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
    var_0 = level._ID794 getnormalizedmovement();

    for (;;)
    {
        wait 0.05;
        var_0 = level._ID794 getnormalizedmovement();

        if ( var_0[0] > 0.2 )
            break;
    }

    wait 6;
    _ID42237::_ID14402( "player_used_zoom" );
}
