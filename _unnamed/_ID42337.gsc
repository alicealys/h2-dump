// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = level._ID805;

    if ( !isdefined( level._ID44391 ) )
        level._ID44391 = "nightvision";

    thread _ID19576( var_0, var_1 );
}

_ID19576( var_0, var_1 )
{
    var_1 = _ID42237::_ID37527( isdefined( var_1 ), var_1, 1 );
    precachenightvisioncodeassets();
    precacheshellshock( "nightvision" );
    level._ID24807 = loadfx( "fx/misc/NV_dlight" );
    level._ID24812 = loadfx( "fx/misc/ir_tapeReflect" );
    level._ID43965 = loadfx( "vfx/distortion/distortion_nightvision" );
    level._ID47159 = loadfx( "vfx/ui/nvg_phosphor" );

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];
        var_3 _ID42407::_ID13024( "nightvision_enabled" );
        var_3 _ID42407::_ID13024( "nightvision_on" );
        var_3 _ID42407::_ID13025( "nightvision_enabled" );
        var_3 _ID42407::_ID13024( "nightvision_dlight_enabled" );
        var_3 _ID42407::_ID13025( "nightvision_dlight_enabled" );
        var_3 setactionslot( var_1, "nightvision" );
    }

    visionsetnight( "default_night" );
    thread _ID44326();
    waitframe;
    wait 0.05;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];
        var_3 thread _ID24814();
    }
}

_ID24814()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "night_vision_on" );
        _ID24811();
        var_0 = spawnfx( level._ID43965, level._ID794._ID740 );
        var_1 = spawnfx( level._ID47159, level._ID794._ID740 );
        triggerfx( var_0 );
        triggerfx( var_1 );
        setomnvar( "ui_nightvision", 1 );
        self waittill( "night_vision_off" );
        _ID24810();
        setomnvar( "ui_nightvision", 0 );
        var_0 delete();
        var_1 delete();
        wait 0.05;
    }
}

_ID24805( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = level._ID794;

    return isdefined( var_0._ID24809 );
}

_ID24811()
{
    level._ID794 _meth_84a0( "disabled", 0 );
    self._ID24813 = 1;
    _ID42407::_ID13025( "nightvision_on" );
    self._ID24809 = 1;
    thread _ID44830();
    level._ID794 lightset2( level._ID44391, 0 );

    if ( _ID42407::_ID13019( "nightvision_dlight_enabled" ) )
    {
        level._ID24806 = spawnfx( level._ID24807, level._ID794._ID740 );
        triggerfx( level._ID24806 );
    }

    var_0 = getaiarray( "allies" );
    _ID42237::_ID3350( var_0, ::_ID12496 );

    if ( !_ID42407::_ID13337( "allies", ::_ID12496 ) )
        _ID42407::_ID1892( "allies", ::_ID12496 );
}

_ID49712( var_0 )
{
    var_1 = [ "sa80", "sa80_scope", "sa80lmg", "sa80lmg_reflex", "sa80lmg_scope", "tavor_acog", "tavor_digital_acog", "tavor_digital_eotech", "tavor_digital_mars", "tavor_digital_reflex", "tavor_eotech", "tavor_mars", "tavor_reflex", "tavor_woodland_acog", "tavor_woodland_eotech", "tavor_woodland_mars", "tavor_woodland_reflex", "m4_grenadier", "m4_grunt", "m4_grunt_airport", "m4_sd_cloth", "m4_shotgun", "m4_silencer", "m4m203_acog", "m4m203_eotech", "m4m203_motion_tracker", "m4m203_reflex", "m4m203_reflex_arctic", "m4m203_silencer", "m4m203_silencer_reflex", "masada", "masada_acog", "masada_dcburn_mt_black_off", "masada_dcburn_mt_black_on", "masada_digital", "masada_digital_acog", "masada_digital_eotech", "masada_digital_grenadier_eotech", "masada_digital_reflex", "masada_eotech", "masada_grenadier_acog", "masada_reflex", "masada_silencer_motion_tracker_off", "masada_silencer_motion_tracker_on", "masada_silencer_mt_black_off", "masada_silencer_mt_black_on", "masada_silencer_mt_camo_off", "masada_silencer_mt_camo_on", "masada_silencer_mt_dust_off", "masada_silencer_mt_dust_on", "p90", "famas", "usp" ];

    foreach ( var_3 in var_1 )
    {
        if ( issubstr( var_0, var_3 ) )
            return 1;
    }

    return 0;
}

_ID44830()
{
    level endon( "night_vision_off" );
    self endon( "death" );

    for (;;)
    {
        if ( self getcurrentweapon() == "none" )
        {
            waittillframeend;
            continue;
        }

        if ( _ID49712( self getcurrentweapon() ) )
            _ID42407::_ID53909( "nvg_laser" );
        else
            self laseroff();

        _ID42237::_ID41068( "weapon_switch_started", "weapon_taken" );
        self laseroff();
        _ID42237::_ID41068( "grenade_fire", "weapon_change" );
    }
}

_ID12496()
{
    if ( !isai( self ) )
        return;

    if ( isdefined( self._ID18169 ) )
        return;

    animscripts\shared::_ID39728();
    thread _ID22673();
}

_ID22673()
{
    level endon( "night_vision_off" );
    self endon( "death" );

    for (;;)
    {
        if ( self _meth_844f( "tag_reflector_arm_le" ) != -1 )
            playfxontag( level._ID24812, self, "tag_reflector_arm_le" );

        if ( self _meth_844f( "tag_reflector_arm_ri" ) != -1 )
            playfxontag( level._ID24812, self, "tag_reflector_arm_ri" );

        wait 0.1;
    }
}

_ID36534()
{
    if ( !isdefined( self._ID18169 ) )
        return;

    stopfxontag( level._ID24812, self, "tag_reflector_arm_le" );
    stopfxontag( level._ID24812, self, "tag_reflector_arm_ri" );
}

_ID24810()
{
    self._ID24813 = undefined;
    self laseroff();
    level notify( "night_vision_off" );

    if ( isdefined( level._ID24806 ) )
        level._ID24806 delete();

    self notify( "nightvision_shellshock_off" );
    _ID42407::_ID13021( "nightvision_on" );
    self._ID24809 = undefined;
    level._ID794 lightset3();
    level._ID794 _meth_84a1( 0 );
    var_0 = 0;

    for ( var_1 = 0; var_1 < level._ID805.size; var_1++ )
    {
        if ( _ID24805( level._ID805[var_1] ) )
            var_0 = 1;
    }

    if ( !var_0 )
        _ID42407::_ID29534( "allies", ::_ID12496 );

    thread _ID24808();
}

_ID24808()
{
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID39986 = undefined;
        var_2 animscripts\shared::_ID39728();
        var_2 _ID36534();
    }
}

_ID33930()
{
    if ( isdefined( self._ID24813 ) )
        return 1;

    return isdefined( self._ID51639 );
}

_ID33876()
{
    if ( !isdefined( self._ID24813 ) )
        return 1;

    return isdefined( self._ID43113 );
}

_ID46624()
{
    level._ID794 _meth_80fa( level._ID794 getcurrentweapon(), "nvg_up" );
    wait 0.5;
    setsaveddvar( "nightVisionDisableEffects", 1 );
    wait 0.5;
    level._ID794 nightvisiongogglesforceoff();
    wait 1;
    setsaveddvar( "nightVisionDisableEffects", 0 );
}

_ID44326()
{
    level._ID50066 = getdvarfloat( "r_ssrBlendScale" );
    level._ID54523 = _ID48707( level._ID50066 );

    for (;;)
    {
        level._ID794 _ID42407::_ID13027( "nightvision_on" );
        thread _ID42407::_ID22175( "r_ssrBlendScale", level._ID54523, 0.25 );
        level._ID794 _ID42407::_ID13031( "nightvision_on" );
        thread _ID42407::_ID22175( "r_ssrBlendScale", level._ID50066, 0.25 );
    }
}

_ID48707( var_0 )
{
    switch ( level._ID912 )
    {
        case "blackout":
            return 0.1;
        case "bog_a":
            return 0.25;
    }

    return var_0;
}
