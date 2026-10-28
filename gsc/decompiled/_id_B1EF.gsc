// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C96E( var_0 )
{
    precacheshellshock( "barrett" );
    maps\_utility::add_hint_string( "barrett", &"WEAPON_PRESS_FORWARDS_OR_BACKWARDS", ::_id_D0B2 );
    common_scripts\utility::flag_init( "player_is_on_turret" );
    common_scripts\utility::flag_init( "player_on_barret" );
    common_scripts\utility::flag_init( "player_used_zoom" );
    common_scripts\utility::flag_init( "can_use_turret" );
    common_scripts\utility::flag_init( "player_gets_off_turret" );
    common_scripts\utility::flag_init( "player_get_on_turret" );
    level._effect["bullet_geo"] = loadfx( "fx/smoke/smoke_geotrail_barret" );
    thread _id_B1A9();

    if ( !isdefined( var_0 ) )
        thread _id_BF5D();

    wait 0.05;
    level._id_B105 = 1;
    thread _id_D1A3();
}

_id_D1A3()
{
    var_0 = getent( "barrett_trigger", "targetname" );
    var_1 = getent( "turret2", "targetname" );
    var_2 = getdvarint( "player_useradius", 72 );

    for (;;)
    {
        if ( isalive( level.player ) )
            level.player maps\_utility::waittill_entity_in_range( var_0, var_2 * 10 );

        if ( isalive( level.player ) )
            level.player _meth_85BB( var_0, var_1 );
        else
            break;

        wait 5;
    }
}

_id_BF5D()
{
    level.player._id_C498 = 0;
    level.player._id_A9EB = 0;
    var_0 = getent( "barrett_trigger", "targetname" );
    var_0 thread common_scripts\utility::_id_AE1E( level.player, &"WEAPON_BARRETT_USE", &"WEAPON_BARRETT_USE_PRESS", "stop_hint_text" );
    var_0 thread _id_BF07( "stop_hint_text" );
    var_1 = getent( "turret2", "targetname" );
    var_2 = getent( var_1.target, "targetname" );
    var_1 makeunusable();
    var_1 hide();
    var_1.origin = var_2.origin;

    for (;;)
    {
        var_0 waittill( "trigger" );
        _id_B339( var_1 );
    }
}

_id_BF07( var_0 )
{
    self endon( var_0 );
    var_1 = level.player issplitscreenplayer();

    if ( !var_1 )
        common_scripts\utility::trigger_off();

    for (;;)
    {
        if ( level.player._id_C498 != level.player._id_A9EB )
        {
            if ( level.player._id_C498 )
                common_scripts\utility::trigger_off();
            else
                common_scripts\utility::trigger_on();

            level.player._id_A9EB = level.player._id_C498;
        }
        else
        {
            var_2 = level.player issplitscreenplayer();

            if ( var_1 != var_2 )
            {
                if ( var_2 )
                    common_scripts\utility::trigger_on();
                else
                    common_scripts\utility::trigger_off();

                var_1 = var_2;
            }
        }

        waitframe();
    }
}

_id_C9D3()
{
    for (;;)
    {
        self waittill( "damage" );

        if ( !common_scripts\utility::flag( "player_is_on_turret" ) )
            break;

        earthquake( 0.25, 0.75, level.player.origin, 10000 );
    }
}

_id_B339( var_0 )
{
    if ( level.script == "dcburning" )
    {
        _id_BA13( var_0 );
        return;
    }

    level.player.original_org = level.player.origin;
    level.player setplayerangles( ( var_0.angles[0], var_0.angles[1], level.player.angles[2] ) );
    var_0 useby( level.player );
    setsaveddvar( "ui_hideMap", "1" );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
    level._id_C18A = gettime() + 1000;
    setsaveddvar( "sv_znear", "100" );
    setsaveddvar( "sm_sunShadowCenter", getent( var_0.target, "targetname" ).origin );
    common_scripts\utility::flag_set( "player_is_on_turret" );
    level.player disableweapons();
    setsaveddvar( "turret_adsEnabled", 0 );
    soundscripts\_audio_mix_manager::mm_add_submix( "sniper_ads_mix" );

    if ( level.script == "dcburning" )
    {
        level.player setactionslot( 1, "" );
        level.player nightvisiongogglesforceoff();
    }

    thread _id_D333();

    if ( !common_scripts\utility::flag( "player_used_zoom" ) )
        level.player thread maps\_utility::display_hint( "barrett", undefined, undefined, undefined, -40 );

    level.level_specific_dof = 1;
    var_1 = level.player.origin + ( 0, 0, 60 );

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
    common_scripts\utility::flag_clear( "player_is_on_turret" );
    level.player enableweapons();
    setsaveddvar( "turret_adsEnabled", 1 );
    soundscripts\_audio_mix_manager::mm_clear_submix( "sniper_ads_mix" );

    if ( level.script == "dcburning" )
        level.player setactionslot( 1, "nightvision" );

    level.level_specific_dof = 0;
    setblur( 0, 0.05 );
    level.player setorigin( level.player.original_org + ( 0, 0, 10 ) );
}

_id_ACB0( var_0, var_1, var_2, var_3 )
{
    wait( var_0 );
    level.player maps\_hud_util::fade_out( var_1, undefined );
    wait( var_2 );
    level.player maps\_hud_util::fade_in( var_3, undefined );
}

_id_BA13( var_0 )
{
    var_1 = getdvar( "sv_znear" );
    thread _id_D580();
    common_scripts\utility::flag_set( "player_get_on_turret" );
    soundscripts\_snd::snd_message( "start_player_on_turret" );
    level.player._id_C498 = 1;
    setsaveddvar( "ui_hideMap", "1" );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "actionSlotsHide", "1" );
    var_2 = getent( "model_barrett", "targetname" );
    var_2.animname = "barrett";
    var_2 maps\_anim::setanimtree();
    var_3 = level._id_D0B4;
    setsaveddvar( "sv_znear", "0.01" );
    setsaveddvar( "cg_altDamageMode", "0" );
    level.player setstance( "stand" );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    level.player disableweapons( 1, 200, 0.2 );
    thread _id_ACB0( 3.05, 0.15, 0.2, 0.3 );
    var_4 = 0.5;
    level.player enableinvulnerability();
    var_3 maps\_utility::_id_C0F0( "barrett_in", var_2, 0, var_4, 1, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
    setsaveddvar( "r_forceWeaponThermalWidth", 450 );
    setsaveddvar( "r_forceWeaponThermalHeight", 450 );
    setsaveddvar( "r_forceWeaponThermalActive", 1 );
    level.player thread maps\_load::thermal_shellshock();
    level.player disableinvulnerability();
    level.player.original_org = level.player.origin;
    level.player setplayerangles( ( var_0.angles[0], var_0.angles[1], level.player.angles[2] ) );
    var_0 useby( level.player );
    setomnvar( "ui_barret", 1 );
    level._id_C18A = gettime() + 1000;
    setsaveddvar( "sv_znear", "100" );
    setsaveddvar( "sm_sunShadowCenter", getent( var_0.target, "targetname" ).origin );
    common_scripts\utility::flag_set( "player_is_on_turret" );
    level.player thread _id_C9D3();
    setsaveddvar( "turret_adsEnabled", 0 );
    soundscripts\_audio_mix_manager::mm_add_submix( "sniper_ads_mix" );
    level.player setactionslot( 1, "" );
    level.player nightvisiongogglesforceoff();
    thread _id_D333();

    if ( !common_scripts\utility::flag( "player_used_zoom" ) )
        level.player thread maps\_utility::display_hint( "barrett", undefined, undefined, undefined, -40 );

    level.level_specific_dof = 1;
    level.player.previousfov = int( getdvar( "cg_fov" ) );
    level.player.lastturretfov = getstarttime();
    var_0 thread update_turret_fov();
    var_0 waittill( "turret_deactivate" );
    level.player lerpfov( level.player.previousfov, 0.5 );
    level.player enableinvulnerability();
    thread _id_ACB0( 0.0, 0.1, 0.25, 0.3 );
    wait 0.2;
    setsaveddvar( "r_forceWeaponThermalActive", 0 );
    level.player notify( "thermal_stopshellshock" );
    level.player stopshellshock();
    setomnvar( "ui_barret", 0 );
    setsaveddvar( "sv_znear", "0.01" );
    setsaveddvar( "sm_sunShadowCenter", ( 0, 0, 0 ) );
    common_scripts\utility::flag_clear( "player_is_on_turret" );
    setsaveddvar( "turret_adsEnabled", 1 );
    soundscripts\_audio_mix_manager::mm_clear_submix( "sniper_ads_mix" );
    soundscripts\_snd::snd_message( "start_player_off_turret" );
    level.player setactionslot( 1, "nightvision" );
    level.level_specific_dof = 0;
    setblur( 0, 0.05 );
    level.player setorigin( level.player.original_org + ( 0, 0, 10 ) );
    var_3 maps\_utility::_id_C0F0( "barrett_out", var_2, 1, 0.2, 1 );
    level.player disableinvulnerability();
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "ui_hideMap", "0" );
    setsaveddvar( "actionSlotsHide", "0" );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "sv_znear", var_1 );
    setsaveddvar( "cg_altDamageMode", "1" );
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
    level.player enableweapons();
    common_scripts\utility::flag_clear( "player_get_on_turret" );
    waitframe();
    level.player._id_C498 = 0;
}

update_turret_fov()
{
    self endon( "turret_deactivate" );

    for (;;)
    {
        waitframe();
        level.player.lastturretfov = getstarttime();
        setsaveddvar( "cg_fov", level.player.lastturretfov );
    }
}

_id_D580()
{
    level.player waittill( "player_anim_started" );
    var_0 = _id_D397::_id_A97A( "barrett_in_cin", 1 );
    var_0 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 5.6, -1, 16, 16 ) _id_D397::_id_CCA7( level.player._id_C309, "tag_dof" ) _id_D397::_id_ADE6( 1 ) _id_D397::_id_AF9C();
    var_0 _id_D397::_id_BEA0( 2.5 ) _id_D397::_id_BF3F();
    var_0 _id_D397::_id_BEA0( 0.45 ) _id_D397::_id_B85E( 0.06, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 1.5 ) _id_D397::_id_B85E( 0.04, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BEA0( 2.2 ) _id_D397::_id_B85E( 0.06, 0.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.05 );
    var_0 _id_D397::_id_BC26();
}

_id_B1A9()
{
    var_0 = -5000;

    for (;;)
    {
        common_scripts\utility::flag_wait( "player_is_on_turret" );
        maps\_utility::wait_for_buffer_time_to_pass( var_0, 1.0 );

        if ( !level.player attackbuttonpressed() )
        {
            wait 0.05;
            continue;
        }

        thread _id_C262();
        var_0 = gettime();

        while ( level.player attackbuttonpressed() )
            wait 0.05;
    }
}

_id_C262()
{
    if ( gettime() < level._id_C18A )
        return;

    level.player shellshock( "barrett", 1.3 );
}

_id_D0B2()
{
    if ( !common_scripts\utility::flag( "player_is_on_turret" ) )
        return 1;

    return common_scripts\utility::flag( "player_used_zoom" );
}

_id_D333()
{
    common_scripts\utility::flag_clear( "player_used_zoom" );
    var_0 = level.player getnormalizedmovement();

    for (;;)
    {
        wait 0.05;
        var_0 = level.player getnormalizedmovement();

        if ( var_0[0] > 0.2 )
            break;
    }

    wait 6;
    common_scripts\utility::flag_set( "player_used_zoom" );
}
