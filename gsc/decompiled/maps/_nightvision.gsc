// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = level.players;

    if ( !isdefined( level._id_AD67 ) )
        level._id_AD67 = "nightvision";

    thread init_and_run( var_0, var_1 );
}

init_and_run( var_0, var_1 )
{
    var_1 = common_scripts\utility::ter_op( isdefined( var_1 ), var_1, 1 );
    precachenightvisioncodeassets();
    precacheshellshock( "nightvision" );
    level.nightvision_dlight_effect = loadfx( "fx/misc/NV_dlight" );
    level.nightvision_reflector_effect = loadfx( "fx/misc/ir_tapeReflect" );
    level._id_ABBD = loadfx( "vfx/distortion/distortion_nightvision" );
    level._id_B837 = loadfx( "vfx/ui/nvg_phosphor" );

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];
        var_3 maps\_utility::ent_flag_init( "nightvision_enabled" );
        var_3 maps\_utility::ent_flag_init( "nightvision_on" );
        var_3 maps\_utility::ent_flag_set( "nightvision_enabled" );
        var_3 maps\_utility::ent_flag_init( "nightvision_dlight_enabled" );
        var_3 maps\_utility::ent_flag_set( "nightvision_dlight_enabled" );
        var_3 setactionslot( var_1, "nightvision" );
    }

    visionsetnight( "default_night" );
    thread _id_AD26();
    waittillframeend;
    wait 0.05;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];
        var_3 thread nightvision_toggle();
    }
}

nightvision_toggle()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "night_vision_on" );
        nightvision_on();
        var_0 = spawnfx( level._id_ABBD, level.player.origin );
        var_1 = spawnfx( level._id_B837, level.player.origin );
        triggerfx( var_0 );
        triggerfx( var_1 );
        setomnvar( "ui_nightvision", 1 );
        self waittill( "night_vision_off" );
        nightvision_off();
        setomnvar( "ui_nightvision", 0 );
        var_0 delete();
        var_1 delete();
        wait 0.05;
    }
}

nightvision_check( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = level.player;

    return isdefined( var_0.nightvision_enabled );
}

nightvision_on()
{
    level.player _meth_84A0( "disabled", 0 );
    self.nightvision_started = 1;
    maps\_utility::ent_flag_set( "nightvision_on" );
    self.nightvision_enabled = 1;
    thread _id_AF1E();
    level.player lightset2( level._id_AD67, 0 );

    if ( maps\_utility::ent_flag( "nightvision_dlight_enabled" ) )
    {
        level.nightvision_dlight = spawnfx( level.nightvision_dlight_effect, level.player.origin );
        triggerfx( level.nightvision_dlight );
    }

    var_0 = getaiarray( "allies" );
    common_scripts\utility::array_thread( var_0, ::enable_ir_beacon );

    if ( !maps\_utility::exists_global_spawn_function( "allies", ::enable_ir_beacon ) )
        maps\_utility::add_global_spawn_function( "allies", ::enable_ir_beacon );
}

_id_C230( var_0 )
{
    var_1 = [ "sa80", "sa80_scope", "sa80lmg", "sa80lmg_reflex", "sa80lmg_scope", "tavor_acog", "tavor_digital_acog", "tavor_digital_eotech", "tavor_digital_mars", "tavor_digital_reflex", "tavor_eotech", "tavor_mars", "tavor_reflex", "tavor_woodland_acog", "tavor_woodland_eotech", "tavor_woodland_mars", "tavor_woodland_reflex", "m4_grenadier", "m4_grunt", "m4_grunt_airport", "m4_sd_cloth", "m4_shotgun", "m4_silencer", "m4m203_acog", "m4m203_eotech", "m4m203_motion_tracker", "m4m203_reflex", "m4m203_reflex_arctic", "m4m203_silencer", "m4m203_silencer_reflex", "masada", "masada_acog", "masada_dcburn_mt_black_off", "masada_dcburn_mt_black_on", "masada_digital", "masada_digital_acog", "masada_digital_eotech", "masada_digital_grenadier_eotech", "masada_digital_reflex", "masada_eotech", "masada_grenadier_acog", "masada_reflex", "masada_silencer_motion_tracker_off", "masada_silencer_motion_tracker_on", "masada_silencer_mt_black_off", "masada_silencer_mt_black_on", "masada_silencer_mt_camo_off", "masada_silencer_mt_camo_on", "masada_silencer_mt_dust_off", "masada_silencer_mt_dust_on", "p90", "famas", "usp" ];

    foreach ( var_3 in var_1 )
    {
        if ( issubstr( var_0, var_3 ) )
            return 1;
    }

    return 0;
}

_id_AF1E()
{
    level endon( "night_vision_off" );
    self endon( "death" );

    for (;;)
    {
        if ( self getcurrentweapon() == "none" )
        {
            waitframe();
            continue;
        }

        if ( _id_C230( self getcurrentweapon() ) )
            maps\_utility::_id_D295( "nvg_laser" );
        else
            self laseroff();

        common_scripts\utility::waittill_any( "weapon_switch_started", "weapon_taken" );
        self laseroff();
        common_scripts\utility::waittill_any( "grenade_fire", "weapon_change" );
    }
}

enable_ir_beacon()
{
    if ( !isai( self ) )
        return;

    if ( isdefined( self.has_no_ir ) )
        return;

    animscripts\shared::updatelaserstatus();
    thread loopreflectoreffect();
}

loopreflectoreffect()
{
    level endon( "night_vision_off" );
    self endon( "death" );

    for (;;)
    {
        if ( self _meth_844F( "tag_reflector_arm_le" ) != -1 )
            playfxontag( level.nightvision_reflector_effect, self, "tag_reflector_arm_le" );

        if ( self _meth_844F( "tag_reflector_arm_ri" ) != -1 )
            playfxontag( level.nightvision_reflector_effect, self, "tag_reflector_arm_ri" );

        wait 0.1;
    }
}

stop_reflector_effect()
{
    if ( !isdefined( self.has_no_ir ) )
        return;

    stopfxontag( level.nightvision_reflector_effect, self, "tag_reflector_arm_le" );
    stopfxontag( level.nightvision_reflector_effect, self, "tag_reflector_arm_ri" );
}

nightvision_off()
{
    self.nightvision_started = undefined;
    self laseroff();
    level notify( "night_vision_off" );

    if ( isdefined( level.nightvision_dlight ) )
        level.nightvision_dlight delete();

    self notify( "nightvision_shellshock_off" );
    maps\_utility::ent_flag_clear( "nightvision_on" );
    self.nightvision_enabled = undefined;
    level.player lightset3();
    level.player _meth_84A1( 0 );
    var_0 = 0;

    for ( var_1 = 0; var_1 < level.players.size; var_1++ )
    {
        if ( nightvision_check( level.players[var_1] ) )
            var_0 = 1;
    }

    if ( !var_0 )
        maps\_utility::remove_global_spawn_function( "allies", ::enable_ir_beacon );

    thread nightvision_effectsoff();
}

nightvision_effectsoff()
{
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2.usingnvfx = undefined;
        var_2 animscripts\shared::updatelaserstatus();
        var_2 stop_reflector_effect();
    }
}

shouldbreaknvghintprint()
{
    if ( isdefined( self.nightvision_started ) )
        return 1;

    return isdefined( self._id_C9B7 );
}

should_break_disable_nvg_print()
{
    if ( !isdefined( self.nightvision_started ) )
        return 1;

    return isdefined( self._id_A869 );
}

_id_B620()
{
    level.player _meth_80FA( level.player getcurrentweapon(), "nvg_up" );
    wait 0.5;
    setsaveddvar( "nightVisionDisableEffects", 1 );
    wait 0.5;
    level.player nightvisiongogglesforceoff();
    wait 1;
    setsaveddvar( "nightVisionDisableEffects", 0 );
}

_id_AD26()
{
    level._id_C392 = getdvarfloat( "r_ssrBlendScale" );
    level._id_D4FB = _id_BE43( level._id_C392 );

    for (;;)
    {
        level.player maps\_utility::ent_flag_wait( "nightvision_on" );
        thread maps\_utility::lerp_saveddvar( "r_ssrBlendScale", level._id_D4FB, 0.25 );
        level.player maps\_utility::ent_flag_waitopen( "nightvision_on" );
        thread maps\_utility::lerp_saveddvar( "r_ssrBlendScale", level._id_C392, 0.25 );
    }
}

_id_BE43( var_0 )
{
    switch ( level.script )
    {
        case "blackout":
            return 0.1;
        case "bog_a":
            return 0.25;
    }

    return var_0;
}
