// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = level._ID805;

    if ( !_func_02F( level._ID44391 ) )
        level._ID44391 = "nightvision";

    thread _unknown_0027( var_0, var_1 );
}

_ID19576( var_0, var_1 )
{
    var_1 = _ID42237::_ID37527( _func_02F( var_1 ), var_1, 1 );
    _func_083();
    _func_14D( "nightvision" );
    level._ID24807 = _func_155( "fx/misc/NV_dlight" );
    level._ID24812 = _func_155( "fx/misc/ir_tapeReflect" );
    level._ID43965 = _func_155( "vfx/distortion/distortion_nightvision" );
    level._ID47159 = _func_155( "vfx/ui/nvg_phosphor" );

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];
        var_3 _ID42407::_ID13024( "nightvision_enabled" );
        var_3 _ID42407::_ID13024( "nightvision_on" );
        var_3 _ID42407::_ID13025( "nightvision_enabled" );
        var_3 _ID42407::_ID13024( "nightvision_dlight_enabled" );
        var_3 _ID42407::_ID13025( "nightvision_dlight_enabled" );
        var_3 _meth_8313( var_1, "nightvision" );
    }

    _func_149( "default_night" );
    thread _unknown_021B();
    waitframe;
    wait 0.05;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];
        var_3 thread _unknown_00FE();
    }
}

_ID24814()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "night_vision_on" );
        _unknown_013B();
        var_0 = _func_15B( level._ID43965, level._ID794._ID740 );
        var_1 = _func_15B( level._ID47159, level._ID794._ID740 );
        _func_15C( var_0 );
        _func_15C( var_1 );
        _func_032( "ui_nightvision", 1 );
        self waittill( "night_vision_off" );
        _unknown_022C();
        _func_032( "ui_nightvision", 0 );
        var_0 _meth_80B7();
        var_1 _meth_80B7();
        wait 0.05;
    }
}

_ID24805( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = level._ID794;

    return _func_02F( var_0._ID24809 );
}

_ID24811()
{
    level._ID794 _meth_84A0( "disabled", 0 );
    self._ID24813 = 1;
    _ID42407::_ID13025( "nightvision_on" );
    self._ID24809 = 1;
    thread _unknown_0232();
    level._ID794 _meth_83CE( level._ID44391, 0 );

    if ( _ID42407::_ID13019( "nightvision_dlight_enabled" ) )
    {
        level._ID24806 = _func_15B( level._ID24807, level._ID794._ID740 );
        _func_15C( level._ID24806 );
    }

    var_0 = _func_0DE( "allies" );
    _ID42237::_ID3350( var_0, ::_unknown_027D );

    if ( !_ID42407::_ID13337( "allies", ::_unknown_0285 ) )
        _ID42407::_ID1892( "allies", ::_unknown_0292 );
}

_ID49712( var_0 )
{
    var_1 = [ "sa80", "sa80_scope", "sa80lmg", "sa80lmg_reflex", "sa80lmg_scope", "tavor_acog", "tavor_digital_acog", "tavor_digital_eotech", "tavor_digital_mars", "tavor_digital_reflex", "tavor_eotech", "tavor_mars", "tavor_reflex", "tavor_woodland_acog", "tavor_woodland_eotech", "tavor_woodland_mars", "tavor_woodland_reflex", "m4_grenadier", "m4_grunt", "m4_grunt_airport", "m4_sd_cloth", "m4_shotgun", "m4_silencer", "m4m203_acog", "m4m203_eotech", "m4m203_motion_tracker", "m4m203_reflex", "m4m203_reflex_arctic", "m4m203_silencer", "m4m203_silencer_reflex", "masada", "masada_acog", "masada_dcburn_mt_black_off", "masada_dcburn_mt_black_on", "masada_digital", "masada_digital_acog", "masada_digital_eotech", "masada_digital_grenadier_eotech", "masada_digital_reflex", "masada_eotech", "masada_grenadier_acog", "masada_reflex", "masada_silencer_motion_tracker_off", "masada_silencer_motion_tracker_on", "masada_silencer_mt_black_off", "masada_silencer_mt_black_on", "masada_silencer_mt_camo_off", "masada_silencer_mt_camo_on", "masada_silencer_mt_dust_off", "masada_silencer_mt_dust_on", "p90", "famas", "usp" ];
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_125( var_0, var_3 ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID44830()
{
    level endon( "night_vision_off" );
    self endon( "death" );

    for (;;)
    {
        if ( self _meth_831C() == "none" )
        {
            waittillframeend;
            continue;
        }

        if ( _unknown_035A( self _meth_831C() ) )
            _ID42407::_ID53909( "nvg_laser" );
        else
            self _meth_80BA();

        _ID42237::_ID41068( "weapon_switch_started", "weapon_taken" );
        self _meth_80BA();
        _ID42237::_ID41068( "grenade_fire", "weapon_change" );
    }
}

_ID12496()
{
    if ( !_func_0D4( self ) )
        return;

    if ( _func_02F( self._ID18169 ) )
        return;

    animscripts\shared::_ID39728();
    thread _unknown_0420();
}

_ID22673()
{
    level endon( "night_vision_off" );
    self endon( "death" );

    for (;;)
    {
        if ( self _meth_844F( "tag_reflector_arm_le" ) != -1 )
            _func_157( level._ID24812, self, "tag_reflector_arm_le" );

        if ( self _meth_844F( "tag_reflector_arm_ri" ) != -1 )
            _func_157( level._ID24812, self, "tag_reflector_arm_ri" );

        wait 0.1;
    }
}

_ID36534()
{
    if ( !_func_02F( self._ID18169 ) )
        return;

    _func_158( level._ID24812, self, "tag_reflector_arm_le" );
    _func_158( level._ID24812, self, "tag_reflector_arm_ri" );
}

_ID24810()
{
    self._ID24813 = undefined;
    self _meth_80BA();
    level notify( "night_vision_off" );

    if ( _func_02F( level._ID24806 ) )
        level._ID24806 _meth_80B7();

    self notify( "nightvision_shellshock_off" );
    _ID42407::_ID13021( "nightvision_on" );
    self._ID24809 = undefined;
    level._ID794 _meth_83CF();
    level._ID794 _meth_84A1( 0 );
    var_0 = 0;

    for ( var_1 = 0; var_1 < level._ID805.size; var_1++ )
    {
        if ( _unknown_041B( level._ID805[var_1] ) )
            var_0 = 1;
    }

    if ( !var_0 )
        _ID42407::_ID29534( "allies", ::_unknown_04CD );

    thread _unknown_051F();
}

_ID24808()
{
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID39986 = undefined;
        var_2 animscripts\shared::_ID39728();
        var_2 _unknown_051D();
    }

    var_clear_2
    var_clear_0
}

_ID33930()
{
    if ( _func_02F( self._ID24813 ) )
        return 1;

    return _func_02F( self._ID51639 );
}

_ID33876()
{
    if ( !_func_02F( self._ID24813 ) )
        return 1;

    return _func_02F( self._ID43113 );
}

_ID46624()
{
    level._ID794 _meth_80FA( level._ID794 _meth_831C(), "nvg_up" );
    wait 0.5;
    _func_0DB( "nightVisionDisableEffects", 1 );
    wait 0.5;
    level._ID794 _meth_80F5();
    wait 1;
    _func_0DB( "nightVisionDisableEffects", 0 );
}

_ID44326()
{
    level._ID50066 = _func_03B( "r_ssrBlendScale" );
    level._ID54523 = _unknown_05F3( level._ID50066 );

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

    }

    return var_0;
    case "bog_a":
    case "blackout":
}
