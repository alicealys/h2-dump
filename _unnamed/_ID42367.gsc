// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34366()
{
    level._ID21836 = 0;
    level._ID34353 = 3.5;
    level._ID6075 = 0;
    level._ID6085 = 0;
    level._ID27571 = undefined;
    level._ID6076 = 0;
    level._ID18178 = [];
    level._ID6050 = 0;
    _unknown_1B0E();
    _func_036( "breach_debug", "0" );
    _func_036( "breach_requires_friendlies_in_position", "1" );
    _func_036( "hostage_missionfail", "0" );
    _func_036( "use_improved_breaches", 1 );
    _func_14E( "usp_scripted" );
    _func_14F( "breach_icon" );
    _func_14F( "h2_overlays_vignette" );
    _func_14F( "h2_overlays_breachdust" );
    _func_14C( "weapon_parabolic_knife" );
    _func_150( &"SCRIPT_WAYPOINT_BREACH" );
    _func_150( &"SCRIPT_PLATFORM_BREACH_ACTIVATE" );
    _func_150( &"SCRIPT_PLATFORM_BREACH_ACTIVATE_KB" );
    _func_150( &"SCRIPT_BREACH_NEED_PLAYER" );
    _func_150( &"SCRIPT_BREACH_NEED_FRIENDLY" );
    _func_150( &"SCRIPT_BREACH_TOO_MANY_ENEMIES" );
    _func_150( &"SCRIPT_BREACH_ILLEGAL_WEAPON" );
    _func_150( &"SCRIPT_BREACH_PARTNER_NOT_READY" );
    _func_150( &"SCRIPT_BREACH_YOU_NOT_READY" );
    _func_150( &"SCRIPT_MISSIONFAIL_KILLEDHOSTAGE_THROUGH_ENEMY" );
    _func_150( &"SCRIPT_MISSIONFAIL_KILLEDHOSTAGE" );
    _func_150( &"SCRIPT_MISSIONFAIL_HOSTAGEEXECUTED" );
    _func_150( &"SCRIPT_MISSIONFAIL_HOSTAGEEXECUTED_USEMULTIDOOR" );
    _func_150( &"SCRIPT_BREACH_RELOADING" );
    level._ID1630 = [];

    if ( !_ID42237::_ID15272( "breach_door" ) )
        level._ID1426["breach_door"] = _func_155( "vfx/explosion/breach_door" );

    if ( !_ID42237::_ID15272( "breach_room" ) )
        level._ID1426["breach_room"] = _func_155( "vfx/explosion/breach_room" );

    if ( !_ID42237::_ID15272( "breach_room_residual" ) )
        level._ID1426["breach_room_residual"] = _func_155( "vfx/explosion/breach_room_residual" );

    if ( !_ID42237::_ID15272( "breach_knife_execution" ) )
        level._ID1426["breach_knife_execution"] = _func_155( "vfx/blood/blood_hit_knife" );

    _unknown_1564();
    _unknown_16C0();
    _unknown_084B();
    _unknown_05B1();
    _unknown_08D2();
    var_0 = _func_1A2( "trigger_multiple_breachIcon", "classname" );
    _ID42237::_ID3350( var_0, ::_unknown_0AF0 );
    var_1 = _func_1A2( "breach_solid_delete", "targetname" );
    _ID42237::_ID3294( var_1, ::_meth_805F );
    _ID42237::_ID3350( var_1, _ID42407::_ID31860 );
    var_1 = _func_1A2( "breach_delete", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID31860 );
    var_2 = _func_1A2( "breach_fx", "targetname" );
    _ID42237::_ID3350( var_2, ::_unknown_0907 );
    level._ID18178["aa12"] = 1;
    level._ID18178["aa12_reflex"] = 1;
    level._ID18178["aa12_hb"] = 1;
    level._ID18178["aug_reflex"] = 1;
    level._ID18178["aug_reflex_arctic"] = 1;
    level._ID18178["aug_scope"] = 1;
    level._ID18178["aug_scope_arctic"] = 1;
    level._ID18178["barrett"] = 1;
    level._ID18178["beretta"] = 1;
    level._ID18178["beretta393"] = 1;
    level._ID18178["cheytac_silencer"] = 1;
    level._ID18178["cheytac_silencer_desert"] = 1;
    level._ID18178["fal"] = 1;
    level._ID18178["fal_acog"] = 1;
    level._ID18178["fal_reflex"] = 1;
    level._ID18178["fal_shotgun"] = 1;
    level._ID18178["fal_shotgun_attach"] = 1;
    level._ID18178["famas"] = 1;
    level._ID18178["famas_arctic"] = 1;
    level._ID18178["famas_arctic_eotech"] = 1;
    level._ID18178["famas_arctic_reflex"] = 1;
    level._ID18178["famas_mp2"] = 1;
    level._ID18178["famas_shotgun"] = 1;
    level._ID18178["famas_shotgun_attach"] = 1;
    level._ID18178["famas_woodland"] = 1;
    level._ID18178["famas_woodland_eotech"] = 1;
    level._ID18178["famas_woodland_acog"] = 1;
    level._ID18178["famas_woodland_reflex"] = 1;
    level._ID18178["famas_woodland_shotgun"] = 1;
    level._ID18178["famas_woodland_shotgun_attach"] = 1;
    level._ID18178["fn2000"] = 1;
    level._ID18178["fn2000_acog"] = 1;
    level._ID18178["fn2000_eotech"] = 1;
    level._ID18178["fn2000_reflex"] = 1;
    level._ID18178["fn2000_scope"] = 1;
    level._ID18178["fn2000_shotgun"] = 1;
    level._ID18178["fn2000_shotgun_attach"] = 1;
    level._ID18178["fn2000_silencer"] = 1;
    level._ID18178["fn2000_thermal"] = 1;
    level._ID18178["glock"] = 1;
    level._ID18178["kriss"] = 1;
    level._ID18178["kriss_reflex"] = 1;
    level._ID18178["kriss_eotech"] = 1;
    level._ID18178["kriss_acog_silencer"] = 1;
    level._ID18178["m1014"] = 1;
    level._ID18178["m14_scoped"] = 1;
    level._ID18178["m14_scoped_arctic"] = 1;
    level._ID18178["m14_scoped_ghil"] = 1;
    level._ID18178["m14_scoped_silencer"] = 1;
    level._ID18178["m14_scoped_silencer_woodland"] = 1;
    level._ID18178["m14_scoped_woodland"] = 1;
    level._ID18178["m14ebr"] = 1;
    level._ID18178["m14ebr_thermal"] = 1;
    level._ID18178["m203"] = 1;
    level._ID18178["m16_acog"] = 1;
    level._ID18178["m16_basic"] = 1;
    level._ID18178["m16_grenadier"] = 1;
    level._ID18178["m16_reflex"] = 1;
    level._ID18178["m16_silencer"] = 1;
    level._ID18178["m21_baseasset"] = 1;
    level._ID18178["m21_scoped_arctic_silenced"] = 1;
    level._ID18178["mp5"] = 1;
    level._ID18178["mp5_arctic"] = 1;
    level._ID18178["mp5_arctic_reflex"] = 1;
    level._ID18178["mp5_eotech"] = 1;
    level._ID18178["mp5_reflex"] = 1;
    level._ID18178["mp5_silencer"] = 1;
    level._ID18178["mp5_silencer_reflex"] = 1;
    level._ID18178["ranger"] = 1;
    level._ID18178["striker"] = 1;
    level._ID18178["striker_reflex"] = 1;
    level._ID18178["striker_woodland"] = 1;
    level._ID18178["striker_woodland_reflex"] = 1;
    level._ID18178["tavor_acog"] = 1;
    level._ID18178["tavor_digital_acog"] = 1;
    level._ID18178["tavor_digital_eotech"] = 1;
    level._ID18178["tavor_digital_mars"] = 1;
    level._ID18178["tavor_digital_reflex"] = 1;
    level._ID18178["tavor_eotech"] = 1;
    level._ID18178["tavor_mars"] = 1;
    level._ID18178["tavor_reflex"] = 1;
    level._ID18178["tavor_woodland_acog"] = 1;
    level._ID18178["tavor_woodland_eotech"] = 1;
    level._ID18178["tavor_woodland_mars"] = 1;
    level._ID18178["tavor_woodland_reflex"] = 1;
    level._ID18178["tmp"] = 1;
    level._ID18178["tmp_reflex"] = 1;
    level._ID18178["tmp_silencer"] = 1;
    level._ID18178["ump45"] = 1;
    level._ID18178["ump45_acog"] = 1;
    level._ID18178["ump45_arctic"] = 1;
    level._ID18178["ump45_arctic_acog"] = 1;
    level._ID18178["ump45_arctic_reflex"] = 1;
    level._ID18178["ump45_reflex"] = 1;
    level._ID18178["ump45_silencer"] = 1;
    level._ID18178["ump45_eotech"] = 1;
    level._ID18178["wa2000"] = 1;
    level._ID18178["wa2000_thermal"] = 1;
    level._ID18178["g36c"] = 1;
    level._ID18178["g36c_acog"] = 1;
    level._ID18178["g36c_reflex"] = 1;
    level._ID18178["g36c_grenadier"] = 1;
    level._ID18178["pecheneg"] = 1;
    level._ID18178["pecheneg_reflex"] = 1;
    level._ID18178["gl_g36c"] = 1;
    level._ID18178["m240"] = 1;
    level._ID18178["m240_reflex"] = 1;
    level._ID18178["m240_acog"] = 1;
    level._ID18178["m4_grenadier"] = 1;
    level._ID18178["m4_grunt"] = 1;
    level._ID18178["m4_grunt_acog"] = 1;
    level._ID18178["m4_grunt_reflex"] = 1;
    level._ID18178["m4_shotgun"] = 1;
    level._ID18178["m4_shotgun_attach"] = 1;
    level._ID18178["m4_silencer"] = 1;
    level._ID18178["m4_silencer_acog"] = 1;
    level._ID18178["alt_m4m203_acog"] = 1;
    level._ID18178["m4m203_acog"] = 1;
    level._ID18178["alt_m4m203_acog_payback"] = 1;
    level._ID18178["m4m203_acog_payback"] = 1;
    level._ID18178["m4m203_reflex"] = 1;
    level._ID18178["m4m203_reflex_arctic"] = 1;
    level._ID18178["m4m203_silencer"] = 1;
    level._ID18178["m4m203_silencer_reflex"] = 1;
    level._ID18178["m4m203_eotech"] = 1;
    level._ID18178["scar_h"] = 1;
    level._ID18178["scar_h_fgrip"] = 1;
    level._ID18178["scar_h_acog"] = 1;
    level._ID18178["scar_h_grenadier"] = 1;
    level._ID18178["scar_h_reflex"] = 1;
    level._ID18178["scar_h_shotgun"] = 1;
    level._ID18178["scar_h_shotgun_attach"] = 1;
    level._ID18178["scar_h_silencer"] = 1;
    level._ID18178["scar_h_thermal_silencer"] = 1;
    level._ID18178["scar_h_thermal"] = 1;
    level._ID18178["scar_h_m203"] = 1;
    level._ID18178["m203_m4"] = 1;
    level._ID18178["m203_m4_acog"] = 1;
    level._ID18178["m203_m4_eotech"] = 1;
    level._ID18178["m203_m4_reflex"] = 1;
    level._ID18178["m203_m4_silencer"] = 1;
    level._ID18178["m203_m4_silencer_reflex"] = 1;
    level._ID18178["m203_m4_reflex_arctic"] = 1;
    level._ID18178["coltanaconda"] = 1;
    level._ID18178["deserteagle"] = 1;
    level._ID18178["pp2000"] = 1;
    level._ID18178["pp2000_reflex"] = 1;
    level._ID18178["pp2000_silencer"] = 1;
    level._ID18178["pp2000_thermal"] = 1;
    level._ID18178["ak47"] = 1;
    level._ID18178["ak47_acog"] = 1;
    level._ID18178["ak47_arctic"] = 1;
    level._ID18178["ak47_arctic_acog"] = 1;
    level._ID18178["ak47_arctic_eotech"] = 1;
    level._ID18178["ak47_arctic_grenadier"] = 1;
    level._ID18178["ak47_arctic_reflex"] = 1;
    level._ID18178["ak47_desert"] = 1;
    level._ID18178["ak47_desert_acog"] = 1;
    level._ID18178["ak47_desert_eotech"] = 1;
    level._ID18178["ak47_desert_grenadier"] = 1;
    level._ID18178["ak47_desert_reflex"] = 1;
    level._ID18178["ak47_digital"] = 1;
    level._ID18178["ak47_digital_acog"] = 1;
    level._ID18178["ak47_digital_eotech"] = 1;
    level._ID18178["ak47_digital_grenadier"] = 1;
    level._ID18178["ak47_digital_reflex"] = 1;
    level._ID18178["ak47_eotech"] = 1;
    level._ID18178["ak47_fall"] = 1;
    level._ID18178["ak47_fall_acog"] = 1;
    level._ID18178["ak47_fall_eotech"] = 1;
    level._ID18178["ak47_fall_grenadier"] = 1;
    level._ID18178["ak47_fall_reflex"] = 1;
    level._ID18178["ak47_grenadier"] = 1;
    level._ID18178["ak47_reflex"] = 1;
    level._ID18178["ak47_shotgun"] = 1;
    level._ID18178["ak47_shotgun_attach"] = 1;
    level._ID18178["ak47_silencer"] = 1;
    level._ID18178["ak47_thermal"] = 1;
    level._ID18178["ak47_woodland"] = 1;
    level._ID18178["ak47_woodland_acog"] = 1;
    level._ID18178["ak47_woodland_eotech"] = 1;
    level._ID18178["ak47_woodland_grenadier"] = 1;
    level._ID18178["ak47_woodland_reflex"] = 1;
    level._ID18178["gl_ak47"] = 1;
    level._ID18178["gl_ak47_arctic"] = 1;
    level._ID18178["masada"] = 1;
    level._ID18178["masada_acog"] = 1;
    level._ID18178["masada_dcburn_mt_black_off"] = 1;
    level._ID18178["masada_dcburn_mt_black_on"] = 1;
    level._ID18178["masada_digital"] = 1;
    level._ID18178["masada_digital_acog"] = 1;
    level._ID18178["masada_digital_eotech"] = 1;
    level._ID18178["masada_digital_grenadier_eotech"] = 1;
    level._ID18178["gl_masada_digital_eotech"] = 1;
    level._ID18178["masada_digital_reflex"] = 1;
    level._ID18178["masada_eotech"] = 1;
    level._ID18178["masada_grenadier_acog"] = 1;
    level._ID18178["masada_reflex"] = 1;
    level._ID18178["masada_silencer_motion_tracker_off"] = 1;
    level._ID18178["masada_silencer_motion_tracker_on"] = 1;
    level._ID18178["masada_silencer_mt_black_off"] = 1;
    level._ID18178["masada_silencer_mt_black_on"] = 1;
    level._ID18178["masada_silencer_mt_camo_off"] = 1;
    level._ID18178["masada_silencer_mt_camo_on"] = 1;
    level._ID18178["masada_silencer_mt_dust_off"] = 1;
    level._ID18178["masada_silencer_mt_dust_on"] = 1;
    level._ID18178["uzi"] = 1;
    level._ID18178["uzi_sd"] = 1;
    level._ID18178["uzi_silencer"] = 1;
    level._ID18178["uzi_akimbo"] = 1;
    level._ID18178["p90"] = 1;
    level._ID18178["p90_acog"] = 1;
    level._ID18178["p90_eotech"] = 1;
    level._ID18178["p90_reflex"] = 1;
    level._ID18178["p90_silencer"] = 1;
    level._ID18178["p90_arctic"] = 1;
    level._ID18178["p90_arctic_acog"] = 1;
    level._ID18178["p90_arctic_eotech"] = 1;
    level._ID18178["p90_arctic_reflex"] = 1;
    level._ID18178["rpd"] = 1;
    level._ID18178["rpd_acog"] = 1;
    level._ID18178["rpd_grip"] = 1;
    level._ID18178["rpd_reflex"] = 1;
    level._ID18178["sa80"] = 1;
    level._ID18178["sa80_scope"] = 1;
    level._ID18178["sa80lmg"] = 1;
    level._ID18178["sa80lmg_reflex"] = 1;
    level._ID18178["sa80lmg_scope"] = 1;
    level._ID18178["at4"] = 1;
    level._ID18178["at4_straight"] = 1;
    level._ID18178["model1887"] = 1;
    level._ID18178["usp"] = 1;
    level._ID18178["usp_airport"] = 1;
    level._ID18178["usp_silencer"] = 1;
    level._ID18178["dragunov"] = 1;
    level._ID18178["dragunov_arctic"] = 1;
    level._ID18178["dragunov_desert"] = 1;
    level._ID18178["dragunov_fall"] = 1;
    level._ID18178["dragunov_woodland"] = 1;
    level._ID18178["mg4"] = 1;
    level._ID18178["mg4_acog"] = 1;
    level._ID18178["mg4_arctic"] = 1;
    level._ID18178["mg4_arctic_reflex"] = 1;
    level._ID18178["mg4_arctic_thermal"] = 1;
    level._ID18178["mg4_reflex"] = 1;
    level._ID18178["mg4_thermal"] = 1;
    level._ID18178["spas12"] = 1;
    level._ID18178["spas12_arctic"] = 1;
    level._ID18178["spas12_arctic_eotech"] = 1;
    level._ID18178["spas12_arctic_grip"] = 1;
    level._ID18178["spas12_arctic_heartbeat"] = 1;
    level._ID18178["spas12_arctic_heartbeat_attach"] = 1;
    level._ID18178["spas12_arctic_reflex"] = 1;
    level._ID18178["spas12_eotech"] = 1;
    level._ID18178["spas12_grip"] = 1;
    level._ID18178["spas12_heartbeat"] = 1;
    level._ID18178["spas12_heartbeat_attach"] = 1;
    level._ID18178["spas12_reflex"] = 1;
    level._ID18178["spas12_silencer"] = 1;
    level._ID18178["paw20_eotech"] = 1;
    level._ID18178["acr_hybrid"] = 1;
    level._ID18178["acr_hybrid_silenced"] = 1;
    level._ID18178["alt_acr_hybrid"] = 1;
    level._ID18178["alt_acr_hybrid_silenced"] = 1;
    level._ID18178["p99"] = 1;
    level._ID18178["rsass"] = 1;
    level._ID18178["fnfiveseven"] = 1;
    level._ID18178["pp90m1"] = 1;
    level._ID18178["pp90m1_acog"] = 1;
    level._ID18178["pp90m1_eotech"] = 1;
    level._ID18178["pp90m1_reflex"] = 1;
    level._ID18178["pp90m1_silencer"] = 1;
    _ID42237::_ID14400( "breaching_on" );
    _ID42237::_ID14400( "no_mercy" );
    _ID42237::_ID14400( "breach_plant" );
    _ID42237::_ID14400( "breach_settle" );
    _ID42237::_ID14400( "breach_slowmo" );
}

_ID7386()
{
    if ( !_func_02F( self._ID70 ) )
        return;

    if ( _unknown_2432() && self._ID922 == "manhandled" )
    {
        var_0 = _func_1A1( self._ID1191, "targetname" );
        level._ID22888[self._ID13703] = var_0;
    }

    var_1 = self._ID31388;

    if ( _func_02F( var_1 ) )
        level._ID23762[var_1] = 1;

    level._ID23763[self._ID70] = 1;
}

_ID20488( var_0, var_1, var_2 )
{
    if ( !_func_02F( level._ID30895["generic"][var_0] ) )
        return 0;

    if ( !_func_02F( level._ID30895["generic"][var_0][var_1] ) )
        return 0;

    return 1;
}

_ID20489( var_0, var_1 )
{
    if ( !_func_02F( level._ID30895["generic"][var_0] ) )
        return 0;

    return 1;
}

_ID12233()
{
    if ( !level._ID23763.size )
        return;

    var_0 = [];
    var_0[var_0.size] = "_survives";
    var_0[var_0.size] = "_death";
    var_0[var_0.size] = "_death2";
    var_0[var_0.size] = "_idle";
    var_0[var_0.size] = "_manhandled_guarded";
    var_0[var_0.size] = "_manhandled";
    var_0[var_0.size] = "_manhandled_guarded_idle";
    var_0[var_0.size] = "_manhandled_idle";
    var_0[var_0.size] = "_manhandled_guarded_prepare_idle";
    var_0[var_0.size] = "_manhandled_prepare_idle";
    var_0[var_0.size] = "_manhandled_guarded_prepare";
    var_0[var_0.size] = "_manhandled_prepare";
    var_1 = [];
    var_2 = level._ID23762;

    for ( var_7 = _func_1DA( var_2 ); _func_02F( var_7 ); var_7 = _func_1BF( var_2, var_7 ) )
    {
        var_3 = var_2[var_7];
        var_4 = var_0;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_1[var_1.size] = var_5 + var_7;
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
    var_0 = _ID42237::_ID3296( var_0, var_1 );
    var_8 = level._ID23763;

    for ( var_17 = _func_1DA( var_8 ); _func_02F( var_17 ); var_17 = _func_1BF( var_8, var_17 ) )
    {
        var_3 = var_8[var_17];
        var_9 = 0;

        if ( _func_02F( level._ID30910["generic"][var_17] ) )
        {
            if ( _func_0D3( level._ID30910["generic"][var_17] ) )
            {
                var_10 = level._ID30910["generic"][var_17];

                for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
                {
                    var_11 = var_10[var_12];

                    if ( !_unknown_1093( var_17, var_12, var_11 ) )
                        var_9 = 1;
                }

                var_clear_2
            }
            else if ( !_unknown_10BF( var_17, level._ID30910["generic"][var_17] ) )
                var_9 = 1;
        }

        var_13 = var_0;

        for ( var_16 = _func_1DA( var_13 ); _func_02F( var_16 ); var_16 = _func_1BF( var_13, var_16 ) )
        {
            var_5 = var_13[var_16];
            var_14 = var_17 + var_5;

            if ( !_func_02F( level._ID30910["generic"][var_14] ) )
                continue;

            if ( _func_0D3( level._ID30910["generic"][var_14] ) )
            {
                var_15 = level._ID30910["generic"][var_14];

                for ( var_12 = _func_1DA( var_15 ); _func_02F( var_12 ); var_12 = _func_1BF( var_15, var_12 ) )
                {
                    var_11 = var_15[var_12];

                    if ( !_unknown_1109( var_14, var_12, var_11 ) )
                        var_9 = 1;
                }

                var_clear_2
                continue;
            }

            if ( !_unknown_1135( var_14, level._ID30910["generic"][var_14] ) )
                var_9 = 1;
        }

        var_clear_3
        var_clear_1

        if ( var_9 )
            level._ID23763[var_17] = undefined;
    }

    var_clear_5
    level._ID23762 = undefined;
    level._ID23763 = undefined;
}
#using_animtree("generic_human");

_ID5997()
{
    level._ID6004 = [];
    _ID42259::_ID2057( "generic", "attach knife right", "weapon_parabolic_knife", "TAG_INHAND" );
    _ID42259::_ID2059( "generic", "detach knife right", "weapon_parabolic_knife", "TAG_INHAND", "breach_react_knife_charge" );
    level._ID30910["generic"]["takedown_room2B_soldier1"] = "h2_room2b_takedown_soldier1";
    level._ID30910["generic"]["takedown_room2B_soldier2"] = "h2_room2b_takedown_soldier2";
    level._ID30910["generic"]["takedown_room1Alt_soldier"] = "takedown_room1Alt_soldier";
    level._ID30910["generic"]["takedown_room1Alt_soldier_idle"][0] = "takedown_room1Alt_soldier_idle";
    level._ID30910["generic"]["takedown_room2A_soldier1"] = "takedown_room2A_soldier1";
    level._ID30910["generic"]["takedown_room2A_soldier2"] = "takedown_room2A_soldier2";
    level._ID30910["generic"]["takedown_room1B_soldier"] = "takedown_room1B_soldier";
    level._ID30910["generic"]["takedown_room1B_soldier_idle"][0] = "takedown_room1B_soldier_idle";
    level._ID30910["generic"]["takedown_room1A_soldier"] = "takedown_room1A_soldier";
    level._ID30910["generic"]["takedown_room1A_soldier_idle"][0] = "takedown_room1A_soldier_idle";
    level._ID30910["generic"]["hostage_chair_twitch1"] = "hostage_chair_twitch1";
    level._ID30910["generic"]["hostage_chair_twitch2"] = "hostage_chair_twitch2";
    level._ID30910["generic"]["hostage_chair_twitch3"] = "hostage_chair_twitch3";
    level._ID30910["generic"]["hostage_chair_twitch4"] = "hostage_chair_twitch4";
    _unknown_292F( "hostage_chair_twitch1", ::_unknown_2600 );
    _unknown_293A( "hostage_chair_twitch2", ::_unknown_260B );
    _unknown_2945( "hostage_chair_twitch3", ::_unknown_2616 );
    _unknown_2950( "hostage_chair_twitch4", ::_unknown_2622 );
    level._ID30910["generic"]["execution_shield_soldier"] = "execution_shield_soldier";
    level._ID30910["generic"]["execution_shield_hostage"] = "execution_shield_hostage";
    level._ID30910["generic"]["execution_shield_hostage_death"] = "execution_shield_hostage_death";
    level._ID30910["generic"]["execution_shield_hostage_survives"] = "execution_shield_hostage_survives";
    level._ID30910["generic"]["execution_shield_hostage_idle"][0] = "hostage_knees_idle";
    _unknown_29AC( "execution_shield_soldier", ::_unknown_262C );
    _unknown_29B7( "execution_shield_hostage", ::_unknown_264E );
    level._ID30910["generic"]["execution_knife_soldier"] = "execution_knife_soldier";
    level._ID30910["generic"]["execution_knife_hostage"] = "execution_knife_hostage";
    level._ID30910["generic"]["execution_knife_hostage_death"] = "execution_knife_hostage_death";
    level._ID30910["generic"]["execution_knife_hostage_idle"][0] = "hostage_knees_idle";
    level._ID30910["generic"]["execution_knife_hostage_manhandled"] = "h2_room2b_takedown_hostage1";
    _unknown_2A13( "execution_knife_hostage", ::_unknown_26A9 );
    _unknown_2A1E( "execution_knife_soldier", ::_unknown_2699 );
    level._ID30910["generic"]["execution_knife2_soldier"] = "execution_knife2_soldier";
    level._ID30910["generic"]["execution_knife2_hostage"] = "execution_knife2_hostage";
    level._ID30910["generic"]["execution_knife2_hostage_death"] = "execution_knife2_hostage_death";
    level._ID30910["generic"]["execution_knife2_hostage_idle"][0] = "hostage_stand_idle";
    _unknown_2A6A( "execution_knife2_hostage", ::_unknown_2700 );
    _unknown_2A75( "execution_knife2_soldier", ::_unknown_26F0 );
    level._ID30910["generic"]["execution_onknees_soldier"] = "execution_onknees_soldier";
    level._ID30910["generic"]["execution_onknees_hostage"] = "execution_onknees_hostage";
    level._ID30910["generic"]["execution_onknees_hostage_idle"][0] = "execution_onknees_hostage_survives";
    level._ID30910["generic"]["execution_onknees_hostage_death"] = "execution_onknees_hostage_death";
    level._ID30910["generic"]["execution_onknees_hostage_manhandled_guarded"] = "takedown_room1A_hostageB";
    level._ID30910["generic"]["execution_onknees_hostage_manhandled_guarded_idle"][0] = "takedown_room1A_hostageB_idle";
    _unknown_2AE2( "execution_onknees_soldier", ::_unknown_2761 );
    _unknown_2AED( "execution_onknees_hostage", ::_unknown_2784 );
    level._ID30910["generic"]["execution_onknees2_soldier"] = "execution_onknees2_soldier";
    level._ID30910["generic"]["execution_onknees2_hostage"] = "execution_onknees2_hostage";
    level._ID30910["generic"]["execution_onknees2_hostage_survives"] = "execution_onknees2_hostage_survives";
    level._ID30910["generic"]["execution_onknees2_hostage_death"] = "execution_onknees2_hostage_death";
    level._ID30910["generic"]["execution_onknees2_hostage_manhandled_guarded"] = "h2_room2b_takedown_hostage2";
    level._ID30910["generic"]["execution_onknees2_hostage_manhandled_guarded_prepare_idleV2"][0] = "takedown_room2A_hostageB_start_idle";
    level._ID30910["generic"]["execution_onknees2_hostage_manhandled_guardedV2"] = "takedown_room2A_hostageB";
    level._ID30910["generic"]["execution_onknees2_hostage_manhandled_guarded_idleV2"][0] = "takedown_room2A_hostageB_end_idle";
    _unknown_2B79( "execution_onknees2_soldier", ::_unknown_27F9 );
    _unknown_2B84( "execution_onknees2_hostage", ::_unknown_288E );
    level._ID30910["generic"]["execution_slamwall_soldier"] = "execution_slamwall_soldier";
    level._ID30910["generic"]["execution_slamwall_hostage"] = "execution_slamwall_hostage";
    level._ID30910["generic"]["execution_slamwall_hostage_idle"][0] = "hostage_stand_idle";
    level._ID30910["generic"]["execution_slamwall_hostage_death"] = "execution_slamwall_hostage_death";
    level._ID30910["generic"]["execution_slamwall_hostage_manhandled_prepare"] = "takedown_room2A_hostageA_flee";
    level._ID30910["generic"]["execution_slamwall_hostage_manhandled_prepare_idle"][0] = "takedown_room2A_hostageA_hide_idle";
    level._ID30910["generic"]["execution_slamwall_hostage_manhandled"] = "takedown_room2A_hostageA";
    level._ID30910["generic"]["execution_slamwall_hostage_manhandled_idle"][0] = "takedown_room2A_hostageA_end_idle";
    _unknown_2C12( "execution_slamwall_soldier", ::_unknown_2892 );
    _unknown_2C1D( "execution_slamwall_hostage", ::_unknown_28B4 );
    level._ID30910["generic"]["execution_fightback_guy1_03"] = "execution_fightback_guy1_03";
    level._ID30910["generic"]["execution_fightback_guy2_03"] = "execution_fightback_guy2_03";
    level._ID30910["generic"]["execution_fightback_guy2_03_death"] = "execution_fightback_guy2_03_death";
    level._ID30910["generic"]["execution_fightback_guy2_03_survives"] = "execution_fightback_guy2_03_survives";
    _unknown_2C68( "execution_fightback_guy1_03", ::_unknown_28E7 );
    _unknown_2C73( "execution_fightback_guy2_03", ::_unknown_297C );
    level._ID30910["generic"]["patrol_bored_react"] = "patrol_bored_react_walkstop";
    level._ID30910["generic"]["exposed_idle_react"] = "exposed_idle_reactA";
    level._ID30910["generic"]["chess_surprise"] = "parabolic_chessgame_surprise_b";
    level._ID30910["generic"]["breach_chair_reaction_v1"] = "breach_chair_reaction_v1";
    level._ID30910["generic"]["patrol_bored_react_walkstop"] = "patrol_bored_react_walkstop";
    level._ID30910["generic"]["exposed_idle_reactA"] = "exposed_idle_reactA";
    level._ID30910["generic"]["hostage_stand_react_front"] = "hostage_stand_react_front";
    level._ID30910["generic"]["hostage_stand_react_front_idle"][0] = "hostage_stand_idle";
    level._ID30910["generic"]["hostage_stand_react_front_manhandled"] = "takedown_room1Alt_hostage";
    level._ID30910["generic"]["hostage_stand_react_front_manhandled_idle"][0] = "takedown_room1Alt_hostage_idle";
    level._ID30910["generic"]["death_explosion_stand_B_v3"] = "death_explosion_stand_B_v3";
    level._ID30910["generic"]["breach_stackL_approach"] = "breach_stackL_approach";
    level._ID30910["generic"]["react_stand_2_run_R45"] = "react_stand_2_run_R45";
    level._ID6004["death_explosion_stand_B_v3"] = 1;
    _unknown_2D57( "hostage_stand_react_front", ::_unknown_2A14 );
    level._ID30910["generic"]["hostage_stand_fall"] = "hostage_stand_fall";
    level._ID30910["generic"]["hostage_stand_fall_idle"][0] = "hostage_knees_idle";
    level._ID30910["generic"]["hostage_stand_fall_idle"][1] = "hostage_knees_twitch";
    level._ID30910["generic"]["hostage_stand_fall_manhandled"] = "takedown_room1A_hostageA";
    level._ID30910["generic"]["hostage_stand_fall_manhandled_idle"][0] = "takedown_room1A_hostageA_idle";
    level._ID30910["generic"]["hostage_stand_fall_manhandledV2"] = "takedown_room1B_hostage";
    level._ID30910["generic"]["hostage_stand_fall_manhandled_idleV2"][0] = "takedown_room1B_hostage_idle";
    _unknown_2DD7( "hostage_stand_fall", ::_unknown_2A94 );
    level._ID30910["generic"]["breach_react_knife_idle"] = "breach_react_knife_idle";
    level._ID30910["generic"]["breach_react_knife_charge"] = "breach_react_knife_charge";
    level._ID30910["generic"]["breach_react_knife_charge_death"] = "death_shotgun_back_v1";
    _unknown_2E12( "breach_react_knife_charge", ::_unknown_2B4D );
    level._ID30910["generic"]["breach_react_blowback_v1"] = "breach_react_blowback_v1";
    level._ID30910["generic"]["breach_react_blowback_v2"] = "breach_react_blowback_v1";
    level._ID30910["generic"]["breach_react_blowback_v3"] = "breach_react_blowback_v1";
    level._ID30910["generic"]["dying_crawl_back"] = "dying_crawl_back";
    _unknown_2E5C( "breach_react_blowback_v1", ::_unknown_2AE2 );
    _unknown_2E67( "breach_react_blowback_v2", ::_unknown_2AEE );
    level._ID30910["generic"]["breach_react_desk_v1"] = "breach_react_desk_v1";
    level._ID30910["generic"]["breach_react_desk_v2"] = "breach_react_desk_v2";
    level._ID30910["generic"]["breach_react_desk_v3"] = "breach_react_desk_v3";
    level._ID30910["generic"]["breach_react_desk_v4"] = "breach_react_desk_v4";
    level._ID30910["generic"]["breach_react_desk_v5"] = "breach_react_desk_v5";
    level._ID30910["generic"]["breach_react_desk_v6"] = "breach_react_desk_v6";
    level._ID30910["generic"]["breach_react_desk_v7"] = "breach_react_desk_v7";
    _unknown_2EE1( "breach_react_desk_v7", ::_unknown_2C92 );
    level._ID30910["generic"]["breach_react_push_guy1"] = "breach_react_push_guy1";
    level._ID30910["generic"]["breach_react_push_guy2"] = "breach_react_push_guy2";
    level._ID30910["generic"]["breach_react_guntoss_v1_guy1"] = "breach_react_guntoss_v1_guy1";
    level._ID30910["generic"]["breach_react_guntoss_v1_guy2"] = "breach_react_guntoss_v1_guy2";
    level._ID30910["generic"]["breach_react_guntoss_v2_guy1"] = "breach_react_guntoss_v2_guy1";
    level._ID30910["generic"]["breach_react_guntoss_v2_guy2"] = "breach_react_guntoss_v2_guy2";
    level._ID30910["generic"]["breach_chair_hide_reaction_v1"] = "breach_chair_hide_reaction_v1";
    level._ID30910["generic"]["breach_chair_hide_reaction_v1_death"] = "covercrouch_death_1";
    level._ID30910["generic"]["breach_chair_hide_reaction_v1_death2"] = "covercrouch_death_2";
    level._ID30910["generic"]["breach_chair_hide_reaction_v2"] = "breach_chair_hide_reaction_v2";
    level._ID30910["generic"]["breach_chair_hide_reaction_v2_death"] = "breach_chair_hide_reaction_death_v2";
    _unknown_2F99( "breach_chair_hide_reaction_v1", ::_unknown_2D09 );
    _unknown_2FA4( "breach_chair_hide_reaction_v2", ::_unknown_2D24 );
    level._ID30910["generic"]["execution_fightback_guy1_02"] = "execution_fightback_guy1_02";
    level._ID30910["generic"]["execution_fightback_guy2_02"] = "execution_fightback_guy2_02";
    level._ID30895["generic"]["hostage_knees_loop"][0] = %hostage_knees_idle;
    level._ID30895["generic"]["hostage_knees_loop"][1] = %hostage_knees_twitch;
}

_ID14916()
{
    level._ID30895["generic"]["breach_friend_idle_01"][0] = %breach_flash_r1_idle;
    level._ID30895["generic"]["breach_friend_enter_01"] = %breach_flash_r1_enter;
    level._ID30895["generic"]["breach_friend_idle_02"][0] = %breach_flash_r2_idle;
    level._ID30895["generic"]["breach_friend_enter_02"] = %breach_flash_r2_enter;
    level._ID30895["ally"]["breach_inspect"] = %h2_cornerstndl_breach_ally_nod;
    level._ID30895["ally"]["breach_normal_v1"] = %h2_breach_npc_nod;
    level._ID30895["ally"]["breach_normal_v2"] = %h2_breach_npc_hand_signal_v1;
    level._ID30895["ally"]["breach_normal_v3"] = %h2_breach_npc_hand_signal_v2;
    level._ID30895["ally"]["breach_normal_v4"] = %h2_breach_npc_hand_signal_v3;
    level._ID30895["ally"]["breach_price"] = %h2_gulag_breach_rescue_soap;
    level._ID30895["ally"]["breach_npc_chill"] = %h2_breach_npc_idle;
    level._ID30895["ally"]["breach_npc_twitch"] = %h2_breach_npc_twitch;
    level._ID30895["ally"]["breach_npc_thumbs_up"] = %h2_breach_npc_thumbs_up;
    level._ID30895["ally"]["breach_npc_lets_go"] = %h2_breach_npc_lets_go;
    level._ID30895["ally"]["breach_npc_listen"] = %h2_breach_npc_listen;
    level._ID50520["breach_price"] = "Capt. MacTavish";
}

_ID6029()
{
    var_0 = self._ID31220;
    var_1 = self._ID31433;
    var_2 = _ID42237::_ID9217( var_0 );
    var_2._ID40005["origin"] = self._ID740;
    var_2._ID40005["angles"] = self._ID65;
    var_2._ID40005["fxid"] = var_0;
    var_2._ID40005["delay"] = 0;
    var_2._ID40005["exploder"] = "breach_" + var_1;
    var_2._ID40005["soundalias"] = "nil";
}

_ID9179()
{
    var_0 = [];
    var_1 = _func_1A2( "breach_left_org", "targetname" );
    var_2 = _func_1A2( "breach_right_org", "targetname" );
    var_3 = _func_1A2( "breach_enemy_spawner", "targetname" );
    var_4 = _func_1A2( "breach_hostage_spawner", "targetname" );
    var_5 = _func_1A2( "breach_friendlyenemy_spawner", "targetname" );
    var_6 = _func_1A2( "breach_friendlyhostage_spawner", "targetname" );
    var_7 = _func_1A2( "breach_coopenemy_spawner", "targetname" );
    var_8 = _func_1A2( "breach_coophostage_spawner", "targetname" );
    var_9 = _func_1A2( "breach_solid", "targetname" );
    var_10 = _func_1A2( "breach_door_volume", "targetname" );
    var_11 = _func_1A2( "breach_safe_volume", "targetname" );
    var_12 = _func_1A2( "trigger_use_breach", "classname" );
    var_13 = _func_1A2( "trigger_multiple_breachIcon", "classname" );
    var_14 = _func_1A2( "trigger_use_breach", "classname" );
    var_15 = _func_1A2( "breach_damage_trigger", "targetname" );
    level._ID30910 = undefined;
    var_16 = var_1;

    for ( var_21 = _func_1DA( var_16 ); _func_02F( var_21 ); var_21 = _func_1BF( var_16, var_21 ) )
    {
        var_17 = var_16[var_21];
        var_18 = var_17._ID31433;
        var_19 = "wood";

        if ( _func_02F( var_17._ID31434 ) )
        {
            switch ( var_17._ID31434 )
            {

            }
        }

        var_20 = _func_1A5();
        var_20._ID22142 = var_17;
        var_20._ID11632 = var_19;
        var_20._ID3189 = _ID42237::_ID37527( _func_02F( var_17._ID47056 ), var_17._ID47056, "" );

        if ( _func_02F( var_17._ID46970 ) )
            var_20._ID43888 = _func_129( var_17._ID46970, "," );
        else
            var_20._ID43888 = [];

        var_20._ID35280 = [];
        var_20._ID35280["enemy"] = [];
        var_20._ID35280["hostage"] = [];
        var_20._ID35280["friendlyenemy"] = [];
        var_20._ID35280["friendlyhostage"] = [];
        var_20._ID35280["coopenemy"] = [];
        var_20._ID35280["coophostage"] = [];
        var_20._ID22620 = [];
        var_20._ID26320 = [];
        var_20._ID12560 = 1;
        var_20._ID11612 = [];
        var_20._ID30176 = [];
        var_20._ID30545 = undefined;
        var_20._ID14915 = [];
        var_0[var_18] = var_20;
        case "payback_wood":
        case "caves_wood":
        case "estate_wood_backwards":
        case "estate_wood":
        case "oilrig":
        case "metal":
        case "wood":
        case "none":
        default:
    }

    var_clear_5
    var_clear_0
    var_22 = var_2;

    for ( var_24 = _func_1DA( var_22 ); _func_02F( var_24 ); var_24 = _func_1BF( var_22, var_24 ) )
    {
        var_17 = var_22[var_24];
        var_18 = var_17._ID31433;
        var_0[var_18]._ID29990 = var_17;
        var_23 = _func_06A( "script_origin", var_17._ID740 );
        var_23._ID65 = var_17._ID65;
        var_20 = _func_1A5();
        var_20._ID337 = var_23;
        var_20._ID41911 = -90;
        var_20 _ID42407::_ID38694();
        var_0[var_18]._ID14915 = var_23;
    }

    var_clear_2
    var_clear_0
    var_25 = var_3;

    for ( var_27 = _func_1DA( var_25 ); _func_02F( var_27 ); var_27 = _func_1BF( var_25, var_27 ) )
    {
        var_26 = var_25[var_27];
        var_0 = var_26 _unknown_22EA( var_0, "enemy" );
    }

    var_clear_2
    var_clear_0
    var_28 = var_4;

    for ( var_29 = _func_1DA( var_28 ); _func_02F( var_29 ); var_29 = _func_1BF( var_28, var_29 ) )
    {
        var_26 = var_28[var_29];
        var_0 = var_26 _unknown_230F( var_0, "hostage" );
    }

    var_clear_1
    var_clear_0
    var_30 = var_5;

    for ( var_31 = _func_1DA( var_30 ); _func_02F( var_31 ); var_31 = _func_1BF( var_30, var_31 ) )
    {
        var_26 = var_30[var_31];
        var_0 = var_26 _unknown_2334( var_0, "friendlyenemy" );
    }

    var_clear_1
    var_clear_0
    var_32 = var_6;

    for ( var_33 = _func_1DA( var_32 ); _func_02F( var_33 ); var_33 = _func_1BF( var_32, var_33 ) )
    {
        var_26 = var_32[var_33];
        var_0 = var_26 _unknown_2359( var_0, "friendlyhostage" );
    }

    var_clear_1
    var_clear_0
    var_34 = var_7;

    for ( var_35 = _func_1DA( var_34 ); _func_02F( var_35 ); var_35 = _func_1BF( var_34, var_35 ) )
    {
        var_26 = var_34[var_35];
        var_0 = var_26 _unknown_237F( var_0, "coopenemy" );
    }

    var_clear_1
    var_clear_0
    var_36 = var_8;

    for ( var_37 = _func_1DA( var_36 ); _func_02F( var_37 ); var_37 = _func_1BF( var_36, var_37 ) )
    {
        var_26 = var_36[var_37];
        var_0 = var_26 _unknown_23A4( var_0, "coophostage" );
    }

    var_clear_1
    var_clear_0
    var_38 = var_13;

    for ( var_43 = _func_1DA( var_38 ); _func_02F( var_43 ); var_43 = _func_1BF( var_38, var_43 ) )
    {
        var_39 = var_38[var_43];
        var_18 = var_39._ID31433;
        var_0[var_18]._ID22620[var_0[var_18]._ID22620.size] = var_39;
        var_40 = _func_1A1( var_39._ID1191, "targetname" );
        var_39._ID6047 = var_40._ID740;
        var_41 = _func_1A1( var_40._ID1191, "targetname" );
        var_41._ID6073 = 0;
        var_0[var_18]._ID30176 = var_41;
        var_40 thread _unknown_23DD( var_39, var_18, var_41 );
        var_42 = var_41._ID31190;
        _ID42237::_ID14400( var_42 );
    }

    var_clear_5
    var_clear_0
    var_44 = var_14;

    for ( var_47 = _func_1DA( var_44 ); _func_02F( var_47 ); var_47 = _func_1BF( var_44, var_47 ) )
    {
        var_39 = var_44[var_47];
        var_18 = var_39._ID31433;
        var_45 = var_0[var_18]._ID29990._ID65;
        var_46 = _func_0EF( var_45[1] - 90 );
        var_39 _meth_8187( var_46, 50 );
        var_0[var_18]._ID1224 = var_39;

        if ( _func_02F( var_39._ID31079 ) )
            var_39 thread _unknown_2C17();
    }

    var_clear_3
    var_clear_0
    var_48 = var_10;

    for ( var_50 = _func_1DA( var_48 ); _func_02F( var_50 ); var_50 = _func_1BF( var_48, var_50 ) )
    {
        var_49 = var_48[var_50];
        var_18 = var_49._ID31433;
        var_0[var_18]._ID11612 = var_49;
    }

    var_clear_2
    var_clear_0
    var_51 = var_11;

    for ( var_52 = _func_1DA( var_51 ); _func_02F( var_52 ); var_52 = _func_1BF( var_51, var_52 ) )
    {
        var_49 = var_51[var_52];
        var_18 = var_49._ID31433;
        var_0[var_18]._ID30545 = var_49;
    }

    var_clear_1
    var_clear_0
    var_53 = var_9;

    for ( var_55 = _func_1DA( var_53 ); _func_02F( var_55 ); var_55 = _func_1BF( var_53, var_55 ) )
    {
        var_54 = var_53[var_55];
        var_18 = var_54._ID31433;
        var_0[var_18]._ID26320[var_0[var_18]._ID26320.size] = var_54;
    }

    var_clear_2
    var_clear_0
    var_56 = var_0;

    for ( var_18 = _func_1DA( var_56 ); _func_02F( var_18 ); var_18 = _func_1BF( var_56, var_18 ) )
    {
        var_57 = var_56[var_18];
        level thread _unknown_2527( var_57, var_18 );
    }

    var_clear_1
    var_58 = var_15;

    for ( var_59 = _func_1DA( var_58 ); _func_02F( var_59 ); var_59 = _func_1BF( var_58, var_59 ) )
    {
        var_39 = var_58[var_59];
        var_18 = var_39._ID31433;
        var_39 thread _unknown_24E4( var_18 );
    }

    var_clear_1
    var_clear_0
    level._ID6032 = var_0;
}

_ID25325( var_0, var_1, var_2, var_3, var_4 )
{
    _func_0C7( var_0, &"SCRIPT_WAYPOINT_BREACH" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
    var_5 = [];

    if ( _func_02F( var_1 ) )
        var_5[var_5.size] = var_1;

    if ( _func_02F( var_2 ) )
        var_5[var_5.size] = var_2;

    if ( _func_02F( var_3 ) )
        var_5[var_5.size] = var_3;

    if ( _func_02F( var_4 ) )
        var_5[var_5.size] = var_4;

    var_6 = 0;
    var_7 = var_5;

    for ( var_12 = _func_1DA( var_7 ); _func_02F( var_12 ); var_12 = _func_1BF( var_7, var_12 ) )
    {
        var_8 = var_7[var_12];
        var_9 = level._ID6032[var_8]._ID22142;

        if ( !_func_02F( var_9 ) )
            return;

        var_10 = _func_11E( var_9._ID65 );
        var_11 = var_9._ID740 + var_10 * -22.5 + ( 0, 0, 56 );
        _func_117( var_0, var_6, var_11 );
        var_6++;
    }

    var_clear_5
    var_clear_0
}

_ID3438( var_0 )
{
    var_1 = var_0;

    for ( var_10 = _func_1DA( var_1 ); _func_02F( var_10 ); var_10 = _func_1BF( var_1, var_10 ) )
    {
        var_2 = var_1[var_10];
        var_3 = 0;
        var_4 = level._ID6032;

        for ( var_9 = _func_1DA( var_4 ); _func_02F( var_9 ); var_9 = _func_1BF( var_4, var_9 ) )
        {
            var_5 = var_4[var_9];
            var_6 = var_5._ID22620;

            for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
            {
                var_7 = var_6[var_8];

                if ( _func_0F3( var_2._ID740, var_7._ID6047 ) > 80 )
                    continue;

                var_2._ID31433 = var_9;
                var_3 = 1;
                break;
            }

            var_clear_4
            var_clear_2

            if ( var_3 )
                break;
        }

        var_clear_6
    }

    var_clear_9
    var_clear_0
}

_ID15588( var_0 )
{
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1[var_1.size] = var_3._ID31433;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID34364( var_0 )
{
    level waittill( "breaching_number_" + var_0 );
    wait 3;
    var_1 = _func_0DE();
    var_1 = _ID42407::_ID3317( var_1, level._ID805 );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 _meth_80B0( self ) )
            return;
    }

    var_clear_2
    var_clear_0
    _func_18F( self._ID740, self._ID851, 500, 500 );
    self _meth_80B7();
}

_ID19246()
{
    self._ID31190 = "breach_door_icon_" + self._ID31433;
    level thread _ID42401::_ID38837( self );
}

_ID6038( var_0, var_1, var_2 )
{
    thread _unknown_35B6( var_2 );
    var_3 = _func_1AF();
    var_3 _meth_80D3( "breach_icon", 1, 1 );
    var_3._ID55 = 0;
    var_3._ID196 = ( 1, 1, 1 );
    var_3._ID1331 = self._ID740[0];
    var_3._ID1339 = self._ID740[1];
    var_3._ID1342 = self._ID740[2];
    var_3 _meth_80DF( 1, 1 );
    var_4 = _func_06A( "script_model", self._ID740 );
    var_4 _meth_80B8( "mil_frame_charge" );
    var_4 _meth_804E( "j_frame_charge" );
    wait 0.05;
    var_5 = "breach_door_icon_" + var_1;
    _ID42237::_ID14413( var_5 );

    while ( !var_2._ID6073 )
        wait 0.05;

    var_3 _meth_808F();
    var_4 _meth_80B7();
}

_ID6063( var_0, var_1 )
{
    var_2 = self._ID31433;
    var_3 = 0;

    if ( _func_02F( self._ID31435 ) )
    {
        if ( var_1 == "enemy" || var_1 == "hostage" )
            var_3 = self._ID31435;
    }

    if ( !_func_02F( var_0[var_2]._ID35280[var_1][var_3] ) )
        var_0[var_2]._ID35280[var_1][var_3] = [];

    var_4 = var_0[var_2]._ID35280[var_1][var_3];
    var_4[var_4.size] = self;
    var_0[var_2]._ID35280[var_1][var_3] = var_4;

    if ( var_0.size )
        return var_0;
    else
        return undefined;
}

_ID34368( var_0, var_1 )
{
    var_2 = var_0._ID22142;
    var_3 = var_0._ID29990;
    var_4 = var_0._ID35280["enemy"];
    var_5 = var_0._ID35280["hostage"];
    var_6 = var_0._ID1224;
    var_7 = var_0._ID26320;
    var_8 = var_0._ID11612;
    var_9 = var_0._ID30176;
    var_10 = [];
    var_11 = [];
    var_12 = [];
    var_13 = [];

    if ( _func_02F( var_0._ID35280["friendlyenemy"][0] ) )
    {
        var_10 = var_0._ID35280["friendlyenemy"][0];
        var_0._ID35280["friendlyenemy"] = var_10;
    }

    if ( _func_02F( var_0._ID35280["friendlyhostage"][0] ) )
    {
        var_11 = var_0._ID35280["friendlyhostage"][0];
        var_0._ID35280["friendlyhostage"] = var_11;
    }

    if ( _func_02F( var_0._ID35280["coopenemy"][0] ) )
    {
        var_12 = var_0._ID35280["coopenemy"][0];
        var_0._ID35280["coopenemy"] = var_12;
    }

    if ( _func_02F( var_0._ID35280["coophostage"][0] ) )
    {
        var_13 = var_0._ID35280["coophostage"][0];
        var_0._ID35280["coophostage"] = var_13;
    }

    var_14 = _func_1A5();
    var_14._ID337 = var_2;
    var_14._ID409 = 5;
    var_14._ID893 = 6;
    var_14._ID41911 = -90;
    var_14 _ID42407::_ID38694();
    var_14 = _func_1A5();
    var_14._ID337 = var_3;
    var_14._ID893 = -2;
    var_14._ID41911 = 90;
    var_14 _ID42407::_ID38694();
    var_15 = [];
    var_16 = var_4;

    for ( var_18 = _func_1DA( var_16 ); _func_02F( var_18 ); var_18 = _func_1BF( var_16, var_18 ) )
    {
        var_17 = var_16[var_18];
        var_15[var_18] = var_18;
    }

    var_clear_2
    var_19 = var_5;

    for ( var_18 = _func_1DA( var_19 ); _func_02F( var_18 ); var_18 = _func_1BF( var_19, var_18 ) )
    {
        var_17 = var_19[var_18];
        var_15[var_18] = var_18;
    }

    var_clear_0

    if ( var_15.size )
    {
        var_20 = _ID42237::_ID28945( var_15 );

        if ( _func_02F( var_4[var_20] ) )
            var_4 = var_4[var_20];
        else
            var_4 = [];

        if ( _func_02F( var_5[var_20] ) )
            var_5 = var_5[var_20];
        else
            var_5 = [];
    }

    var_0._ID35280["enemy"] = var_4;
    var_0._ID35280["hostage"] = var_5;
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_unknown_3278 );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, ::_unknown_331F );
    _ID42237::_ID3350( var_10, _ID42407::_ID1947, ::_unknown_3290 );
    _ID42237::_ID3350( var_11, _ID42407::_ID1947, ::_unknown_3337 );
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_unknown_32A8 );
    _ID42237::_ID3350( var_13, _ID42407::_ID1947, ::_unknown_334F );
    var_6 thread _ID42237::_ID44574( level._ID794, &"SCRIPT_PLATFORM_BREACH_ACTIVATE", &"SCRIPT_PLATFORM_BREACH_ACTIVATE_KB", "trigger" );

    if ( !_func_02F( level._ID6069 ) )
        level._ID6069 = [];

    level._ID6069 = _ID42237::_ID3293( level._ID6069, var_6 );
    var_21 = "breach_door_charge";
    var_22 = undefined;

    switch ( var_0._ID11632 )
    {

    }

    var_23 = _ID42407::_ID35028( var_22 );

    if ( var_0._ID11632 == "none" || var_0._ID11632 == "estate_wood_backwards" )
        var_23 _meth_805A();

    level._ID6008 = [];
    level._ID6008[var_1] = var_23;
    var_24 = _ID42407::_ID35028( var_21 );
    var_24 _ID42237::_ID18529();
    var_2._ID30820 = [];
    var_2 _unknown_2D55( "active_breacher_rig" );
    var_25 = var_2._ID30820["active_breacher_rig"];
    var_25 _meth_805A();
    var_26 = undefined;

    if ( _ID42407::_ID20495() )
    {
        var_2 _unknown_2D67();
        var_26 = var_2._ID30820["passive_breacher_rig"];
        var_26 _meth_805A();
    }

    var_2._ID11587 = var_23;
    var_2._ID7314 = var_24;
    var_2._ID28267 = var_3;
    var_2._ID6039 = var_1;
    var_2 _ID42259::_ID3018( var_23, "breach" );
    var_2 _ID42259::_ID3018( var_24, "breach" );
    var_2 _ID42259::_ID3018( var_25, "breach_player_anim" );

    if ( _ID42407::_ID20495() )
        var_2 _ID42259::_ID3018( var_26, "breach_player_anim" );

    var_2 _unknown_2C99( var_0 );
    var_27 = var_2._ID30820;

    for ( var_29 = _func_1DA( var_27 ); _func_02F( var_29 ); var_29 = _func_1BF( var_27, var_29 ) )
    {
        var_28 = var_27[var_29];
        var_28 _meth_80B7();
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_6 ) )
        var_6 _meth_80B7();

    if ( _func_02F( var_23 ) )
        var_23 _meth_80B7();

    if ( _func_02F( var_24 ) )
        var_24 _meth_80B7();

    if ( _func_02F( var_2 ) )
        var_2 _meth_80B7();

    if ( _func_02F( var_3 ) )
    {
        var_3 _meth_80B7();
        return;
        case "payback_wood":
        case "caves_wood":
        case "estate_wood_backwards":
        case "estate_wood":
        case "oilrig":
        case "metal":
        case "wood":
        case "none":
        default:
    }
}

_ID6059( var_0 )
{
    if ( !_func_02F( level._ID34228 ) )
        return 0;

    if ( !_func_02F( level._ID34228[var_0] ) )
        return 0;

    return 1;
}

_ID8647( var_0, var_1 )
{
    var_2 = [];
    var_2[0] = var_0;

    if ( _func_02F( var_0._ID31079 ) )
        var_2 = _unknown_2CE6( var_0._ID31079 );

    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_1 _meth_80B0( var_4 ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID15688( var_0 )
{
    var_1 = [];
    var_2 = _func_1A2( "breach_door_volume", "targetname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_02F( var_4._ID31079 ) && var_4._ID31079 == var_0 )
            var_1[var_1.size] = var_4;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID6048( var_0, var_1, var_2 )
{
    if ( _ID42407::_ID20495() )
    {
        var_3 = _ID42407::_ID15882( var_0 );

        if ( var_3 _ID42407::_ID13023( "laststand_downed" ) && var_3 _ID42407::_ID13019( "laststand_downed" ) )
            return 0;

        if ( _ID6048( var_2, var_3 ) )
            return 1;
        else
            return 0;
    }

    if ( var_1.size == 0 )
        return 1;

    if ( !_unknown_2EA9( var_2 ) )
        return 1;

    if ( !_unknown_2EDE( var_2, 1 ) )
    {
        if ( _func_039( "breach_requires_friendlies_in_position" ) == "1" )
        {
            if ( !_unknown_2E55( var_1, var_2 ) )
                return 0;
        }
    }

    return 1;
}

_ID40846( var_0 )
{
    var_1 = var_0._ID1224;

    if ( !_func_02F( var_1 ) )
        return;

    var_2 = var_0._ID11612;
    var_1 endon( "death" );

    for (;;)
    {
        var_1 waittill( "trigger",  var_4, var_3  );

        if ( _func_03D() == level._ID6050 )
            var_4 = level._ID6049;

        var_5 = _func_02F( var_4 );

        if ( !var_0._ID12560 )
            return;

        if ( _func_1A7( var_3 ) && !var_5 )
        {
            if ( _unknown_3D82() )
            {
                _func_0DB( "r_progressIconRatio", 0 );
                continue;
            }
        }

        if ( _func_02F( level._ID48534 ) && level._ID48534 )
            _func_0DB( "compass", "0" );

        if ( _func_02F( var_0._ID30545 ) && !_ID42407::_ID20614() )
        {
            if ( _func_1B3( var_3 ) && _func_1A7( var_3 ) )
            {
                var_6 = var_0._ID30545 _ID42407::_ID15547( "axis" );
                var_7 = var_6;

                for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
                {
                    var_8 = var_7[var_9];

                    if ( _func_02F( var_8.ignore_safe_volume ) && var_8.ignore_safe_volume )
                        var_6 = _ID42237::_ID3321( var_6, var_8 );
                }

                var_clear_3
                var_clear_1

                if ( var_6.size )
                {
                    thread _unknown_2F5D();
                    _func_0DB( "r_progressIconRatio", 0 );
                    continue;
                }
            }
        }

        var_10 = _unknown_34B9( var_2 );

        if ( _func_1B3( var_3 ) && _func_1A7( var_3 ) )
        {
            if ( _unknown_2E97( var_1._ID31433 ) )
                break;

            if ( _unknown_2ED6( var_3, var_10, var_2 ) )
            {
                if ( _unknown_31A2( var_0, var_3 ) )
                    break;
            }
            else
                thread _unknown_2F9F();

            continue;
        }

        if ( var_10.size )
        {
            _unknown_30A1( var_0, var_10 );
            break;
            continue;
        }

        _unknown_3072( var_0 );
        break;
    }
}

_ID6083( var_0, var_1 )
{
    var_2 = 0;
    var_3 = _unknown_3152( var_1 );
    var_4 = var_0;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_02F( var_3 ) )
        {
            if ( var_5 _unknown_31AA( var_3 ) )
                continue;
        }

        if ( !var_5 _unknown_2FEC() )
            continue;

        var_2++;
    }

    var_clear_2
    var_clear_0

    if ( var_2 >= 2 )
        return 1;

    return 0;
}

_ID14924()
{
    if ( _ID42407::_ID27291( self ) )
        return 0;

    if ( _func_0F3( level._ID794._ID740, self._ID740 ) < 96 )
        return 0;

    return 1;
}

_ID6026()
{
    if ( _ID42407::_ID20495() )
        thread _unknown_3053( &"SCRIPT_BREACH_NEED_PLAYER" );
    else
        thread _unknown_305C( &"SCRIPT_BREACH_NEED_FRIENDLY" );
}

_ID6065()
{
    thread _unknown_3067( &"SCRIPT_BREACH_TOO_MANY_ENEMIES" );
}

_ID6053()
{
    thread _unknown_3070( &"SCRIPT_BREACH_RELOADING" );
}

_ID6000()
{
    thread _unknown_307A( &"SCRIPT_BREACH_ILLEGAL_WEAPON" );
}

_ID6045()
{
    if ( _ID42407::_ID20495() )
    {
        thread _unknown_3089( &"SCRIPT_BREACH_PARTNER_NOT_READY" );
        return;
    }

    thread _unknown_3092( &"SCRIPT_BREACH_YOU_NOT_READY" );
}

_ID6036( var_0 )
{
    level notify( "breach_hint_cleanup" );
    level endon( "breach_hint_cleanup" );
    var_1 = 20;

    if ( _func_145() )
        var_1 = -23;

    thread _ID42407::_ID18611( var_0, 2, var_1 );
    thread _unknown_30C2();
}

_ID6035()
{
    level notify( "breach_hint_cleanup" );
    level endon( "breach_hint_cleanup" );
    var_0 = level._ID6069;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_02F( var_1 ) )
            var_1 _meth_80E2( "" );
    }

    var_clear_2
    var_clear_0
    level _ID42237::_ID41123( "breaching", 2 );
    _ID42407::_ID18638();
    var_3 = level._ID6069;

    for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
    {
        var_1 = var_3[var_4];

        if ( _func_02F( var_1 ) )
        {
            var_1 thread _ID42237::_ID44574( level._ID794, &"SCRIPT_PLATFORM_BREACH_ACTIVATE", &"SCRIPT_PLATFORM_BREACH_ACTIVATE_KB", "trigger" );
            var_1 _meth_80E1( "HINT_ACTIVATE" );
        }
    }

    var_clear_1
    var_clear_0
}

_ID30175( var_0 )
{
    if ( _func_02F( var_0._ID31079 ) )
        return 1;

    return 0;
}

_ID6025()
{
    if ( !_func_02F( level._ID6082 ) )
        return;

    level._ID6084 = 1;
    var_0 = level._ID6082;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID17403 = var_1._ID464;
        var_1._ID464 = 0;
    }

    var_clear_2
    var_clear_0
}

_ID6024()
{
    if ( !_func_02F( level._ID6082 ) )
        return;

    if ( !_func_02F( level._ID6084 ) )
        return;

    var_0 = level._ID6082;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID464 = var_1._ID17403;
        var_1._ID17403 = undefined;
    }

    var_clear_2
    var_clear_0
    level._ID6084 = undefined;
}

_ID6023( var_0, var_1 )
{
    var_2 = var_0._ID31079;
    var_3 = _unknown_30E4( var_0._ID31079 );
    var_3 = _ID42237::_ID3321( var_3, var_0 );
    var_4 = var_3[0];
    var_5 = level._ID6082;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _func_02F( var_1 ) && var_1 )
        {
            if ( var_6 _unknown_339A( var_4 ) )
            {
                if ( var_6 _unknown_31D8() )
                    return 1;
            }
        }

        if ( var_6 _meth_80B0( var_4 ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID1866()
{
    _unknown_32A3( "passive_breacher_rig" );
    _unknown_32AC( "active_breacher_3rd_person" );
    _unknown_32B4( "passive_breacher_3rd_person" );
}

_ID1937( var_0 )
{
    self._ID30820[var_0] = _ID42407::_ID35028( var_0 );
    self._ID30820[var_0] _meth_805A();
}

_ID32428( var_0, var_1 )
{
    var_1._ID6073 = 1;
    var_2 = _unknown_37AE( var_0._ID31079 );

    if ( _func_02F( var_0._ID31079 ) )
        level notify( var_2 );

    var_1 notify( "breached" );
    var_0 _ID42237::_ID38863();
}

_ID6088( var_0 )
{
    var_1 = var_0._ID1224;
    var_2 = var_0._ID30176;
    var_3 = var_0._ID26320;
    var_4 = self._ID11587;
    var_5 = self._ID7314;
    _unknown_3317( var_1, var_2 );
    _ID42237::_ID3294( var_3, ::_meth_805F );
    _ID42237::_ID3350( var_3, _ID42407::_ID31860 );
    var_6 = _func_1A5();
    var_6._ID337 = var_4;
    var_6._ID409 = 4;
    var_6._ID893 = 10;
    var_6._ID41911 = -170;
    var_6 _ID42407::_ID38694();
    var_5 _meth_80B7();

    if ( !_ID42407::_ID20495() )
        return;

    while ( !var_2._ID6073 )
        wait 0.05;

    var_7 = undefined;
    var_8 = undefined;

    if ( var_0._ID35280["coopenemy"].size )
    {
        var_7 = var_0._ID35280["coopenemy"];
        var_8 = var_0._ID35280["coophostage"];
    }
    else
    {
        var_7 = var_0._ID35280["enemy"];
        var_8 = var_0._ID35280["hostage"];
    }

    if ( var_7.size )
        _ID42237::_ID3294( var_7, ::_meth_809B );

    if ( var_8.size )
        _ID42237::_ID3294( var_8, ::_meth_809B );
}

_ID14910( var_0, var_1 )
{
    var_2 = var_0._ID1224;
    var_3 = var_0._ID11612;
    var_4 = var_0._ID30176;
    var_5 = var_0._ID35280["enemy"];
    var_6 = var_0._ID35280["hostage"];
    var_7 = var_0._ID35280["friendlyenemy"];
    var_8 = var_0._ID35280["friendlyhostage"];
    var_9 = var_0._ID26320;
    var_10 = self._ID7314;
    var_11 = self._ID30820["active_breacher_rig"];
    _unknown_3402( var_2, var_4 );
    var_12 = var_0._ID14915;
    var_13 = _unknown_34E9( var_3 );
    var_14 = _func_039( "breach_requires_friendlies_in_position" ) == "1";

    if ( !var_14 )
    {
        if ( _func_02F( var_13 ) && _unknown_33F9( var_13 ) )
        {
            var_15 = var_1;

            for ( var_17 = _func_1DA( var_15 ); _func_02F( var_17 ); var_17 = _func_1BF( var_15, var_17 ) )
            {
                var_16 = var_15[var_17];

                if ( !var_16 _meth_80B0( var_3 ) )
                    var_1 = _ID42237::_ID3321( var_1, var_16 );
            }

            var_clear_2
            var_clear_0
            var_14 = 1;
        }
    }

    if ( var_14 )
        var_18 = _ID42237::_ID16182( var_12._ID740, var_1 );
    else
        var_18 = _unknown_3562( var_12._ID740, var_3, var_1, var_13 );

    var_1 = _ID42237::_ID3321( var_1, var_18 );

    if ( var_7.size )
        level._ID6074 = _ID42407::_ID3339( var_7, 1 );

    if ( var_8.size )
        _ID42237::_ID3294( var_8, ::_meth_809B );

    _ID42237::_ID3294( var_9, ::_meth_805F );
    _ID42237::_ID3350( var_9, _ID42407::_ID31860 );
    var_19 = "breach_player_anim";
    var_20 = 0;

    if ( _func_03A( "use_improved_breaches", 0 ) )
    {
        var_21 = _func_067( var_11 _ID42407::_ID16120( var_19 ) );
        var_22 = _func_069( var_11 _ID42407::_ID16120( var_19 ), "explode" )[0];
        var_23 = var_21 * var_22;
        var_19 = level._ID49249;
        var_11._ID3189 = "h2_active_breacher_rig";
        var_24 = _func_067( var_11 _ID42407::_ID16120( var_19 ) );
        var_22 = _func_069( var_11 _ID42407::_ID16120( var_19 ), "explode" )[0];
        var_25 = var_24 * var_22;
        var_20 = var_25 - var_23;
    }

    var_18 thread _unknown_3945( 1, var_12, var_4, var_20 );
    var_4.breaching_friendly1 = var_18;

    if ( var_1.size )
    {
        if ( var_14 )
            var_26 = _ID42237::_ID16182( var_12._ID740, var_1 );
        else
            var_26 = _unknown_3622( var_12._ID740, var_3, var_1, var_13 );

        if ( _func_02F( var_26 ) )
        {
            var_26 thread _unknown_397D( 2, var_12, var_4, var_20 );
            var_4.breaching_friendly2 = var_26;
            jump loc_3626
        }
    }

    level notify( "slowmo_breach_friendlies_assigned" );
    wait 1;
    _unknown_3507();
    _ID42259::_ID3111( var_11, var_19 );
}

_ID15922( var_0 )
{
    var_1 = undefined;
    var_2 = _unknown_3698( var_0 );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( level._ID794 _meth_80B0( var_4 ) )
        {
            var_1 = var_4;
            break;
        }
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID16022( var_0, var_1, var_2, var_3 )
{
    var_4 = [];
    var_5 = var_2;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _func_02F( var_3 ) )
        {
            if ( var_6 _unknown_36D4( var_3 ) )
                continue;
        }

        if ( !var_6 _unknown_3515() )
            continue;

        var_4[var_4.size] = var_6;
    }

    var_clear_2
    var_clear_0

    if ( !var_4.size )
        return undefined;

    var_4 = _ID42237::_ID15566( var_0, var_4 );
    var_8 = var_4[0];
    var_9 = var_4;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_6 = var_9[var_10];

        if ( var_6 _unknown_3718( var_1 ) )
        {
            var_8 = var_6;
            break;
        }
    }

    var_clear_1
    var_clear_0
    return var_8;
}

_ID16981( var_0 )
{
    if ( _func_02F( self._ID451 ) )
    {
        if ( _unknown_3751( self._ID451 + ( 0, 0, 40 ), var_0 ) )
            return 1;
    }

    return 0;
}

_ID26011( var_0, var_1 )
{
    var_2 = _func_06A( "script_origin", var_0 );
    var_3 = 0;

    if ( var_2 _meth_80B0( var_1 ) )
        var_3 = 1;

    var_2 _meth_80B7();
    return var_3;
}

_ID15758( var_0 )
{
    var_1 = [];
    var_1[0] = var_0;

    if ( _func_02F( var_0._ID31079 ) )
    {
        var_2 = level._ID6032;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( !_func_02F( var_3._ID11612 ) )
                continue;

            if ( var_3._ID11612 == var_0 )
                continue;

            if ( !_func_02F( var_3._ID11612._ID31079 ) )
                continue;

            if ( _func_02F( var_3._ID11612._ID31079 ) && var_3._ID11612._ID31079 == var_0._ID31079 )
                var_1[var_1.size] = var_3._ID11612;
        }

        var_clear_2
        var_clear_0
    }

    return var_1;
}

_ID34959( var_0, var_1 )
{
    var_2 = var_1["active"];
    var_3 = _func_11E( self._ID65 );
    var_4 = _func_119( var_2._ID740 - var_0._ID1224._ID740 );
    var_5 = _func_0FB( var_3, var_4 );

    if ( var_5 < 0 )
    {
        var_1["active"] = var_1["passive"];
        var_1["passive"] = var_2;
    }

    return var_1;
}

_ID27266( var_0, var_1 )
{
    var_2 = [];
    var_2["active"] = var_1;
    var_3 = self._ID30820["active_breacher_rig"];
    var_4 = _func_03A( "use_improved_breaches", 0 );
    var_5 = undefined;
    var_6 = level._ID53309;
    var_7 = "breach_player_anim";

    if ( var_4 )
    {
        var_3 _meth_80B7();
        var_0._ID22142 _unknown_3739( "h2_active_breacher_rig" );
        var_3 = self._ID30820["h2_active_breacher_rig"];
        self._ID30820["active_breacher_rig"] = undefined;
        var_8 = _func_071( self._ID740, self._ID65, level._ID30895["ally"][level._ID49275[0]] );
        var_9 = _func_072( self._ID740, self._ID65, level._ID30895["ally"][level._ID49275[0]] );
        var_10 = _func_0DE( "allies" );
        var_11 = _func_039( "force_breach_anim", "" );
        var_12 = _ID42237::_ID37527( var_11 == "", var_0._ID3189, var_11 );

        if ( _func_02F( level._ID43339[var_12] ) )
            var_12 = "";

        var_13 = var_10;

        for ( var_15 = _func_1DA( var_13 ); _func_02F( var_15 ); var_15 = _func_1BF( var_13, var_15 ) )
        {
            var_14 = var_13[var_15];

            if ( _func_02F( var_14._ID47852 ) && var_14._ID47852 )
                continue;

            if ( !_func_02F( level._ID50520[var_12] ) )
            {
                if ( _func_0F4( var_8, var_14._ID740 ) < 10 && _func_0FB( _func_11F( var_9 ), _func_11F( var_14._ID65 ) ) > 0.95 )
                {
                    var_5 = var_14;
                    var_6 = level._ID49275;
                    break;
                }

                continue;
            }

            if ( _func_02F( var_14._ID31217 ) && level._ID50520[var_12] == var_14._ID31217 )
            {
                var_5 = var_14;
                break;
            }
        }

        var_clear_2
        var_clear_0

        if ( !_func_02F( level._ID30895["h2_active_breacher_rig"][var_12] ) || !_func_02F( var_5 ) && _func_02F( level._ID50543[var_12] ) )
            var_7 = _ID42237::_ID28945( var_6 );
        else
            var_7 = var_12;

        _ID42259::_ID3018( var_3, var_7 );
        level._ID49249 = var_7;
    }

    var_16 = 0;
    var_17 = undefined;

    if ( _ID42407::_ID20495() )
    {
        var_2["passive"] = _ID42407::_ID15882( var_2["active"] );
        var_17 = self._ID30820["passive_breacher_rig"];
        var_18 = _unknown_4445( var_2["passive"] );

        if ( var_18 == var_0 )
        {
            var_16 = 1;
            var_18._ID30176._ID18173 = 1;
            var_2 = _unknown_39EE( var_0, var_2 );
        }
        else
        {
            level._ID6049 = var_2["passive"];
            level._ID6050 = _func_03D();
            var_18._ID1224 notify( "trigger",  var_2["passive"], "passive"  );
        }
    }

    var_19 = _ID42237::_ID37527( var_4, _func_0C1( _func_067( level._ID30895[var_3._ID3189][var_7] ) * 1000 ), 0 );
    var_2["active"] _meth_80F8( var_19 );

    if ( var_16 )
        var_2["passive"] _meth_8328();

    var_20 = var_2;

    for ( var_21 = _func_1DA( var_20 ); _func_02F( var_21 ); var_21 = _func_1BF( var_20, var_21 ) )
    {
        var_1 = var_20[var_21];

        if ( !_func_02F( level._ID34365 ) )
        {
            var_1 _meth_80F6();
            var_1 _meth_832C();
            var_1 _meth_832A();
            var_1 _meth_8122( 0 );
            var_1 _meth_8123( 0 );
            var_1 _meth_830F( 0 );
            var_1 _meth_830C( 0 );
        }

        var_1 _ID42237::_ID1417();

        if ( !_func_02F( var_1._ID28340 ) )
            var_1._ID28340 = var_1 _meth_831C();
    }

    var_clear_1
    var_clear_0
    level notify( "breaching" );
    level notify( "breaching_number_" + self._ID31433 );
    _func_0DB( "objectiveHide", 1 );
    var_22 = var_0._ID30176;
    _unknown_3968( var_0._ID1224, var_22 );
    var_23 = undefined;
    var_24 = _func_02F( level._ID18178[var_2["active"]._ID28340] );

    if ( var_4 )
    {
        var_25 = _func_067( level._ID30895["h2_active_breacher_rig"][var_7] );
        var_26 = _func_069( level._ID30895["h2_active_breacher_rig"][var_7], "place" );
        var_27 = _func_069( level._ID30895["h2_active_breacher_rig"][var_7], "explode" );
        level._ID34367 = var_27[0] * var_25;
        _unknown_41C8();

        if ( !_func_02F( level._ID50486 ) )
            level._ID50486 = 0;

        var_23 = var_26[0] * var_25 - 0.16 + level._ID50486;
    }
    else if ( var_24 )
    {
        level._ID34367 = 2.25;
        _unknown_41EA();
        var_23 = 0.5;
    }
    else
    {
        level._ID34367 = 2.15;
        _unknown_41F6();
        var_23 = 0.2;
    }

    var_2["active"] thread _unknown_3DE6( var_23 );

    if ( _ID42407::_ID20495() )
    {
        if ( !_func_02F( level._ID27571 ) )
        {
            level._ID6076 = 0;
            level._ID6075 = 0;
            level._ID27571 = 1;
        }
    }
    else
    {
        level._ID6076 = 0;
        level._ID6075 = 0;
    }

    var_28 = var_0._ID35280["enemy"];
    _ID42237::_ID3294( var_28, ::_meth_809B );
    var_29 = var_0._ID35280["hostage"];
    _ID42237::_ID3294( var_29, ::_meth_809B );
    var_2["active"] _meth_8087( var_3, "tag_player", 0.2, 0.1, 0.1 );

    if ( !var_4 && _func_02F( var_2["active"]._ID11563 ) )
        thread _ID42407::_ID25888( 0.2, var_3, "tag_player", 45, 45, 90, 45 );
    else
        thread _unknown_3DFD( var_3 );

    if ( var_16 )
    {
        var_2["passive"] _meth_8087( var_17, "tag_player", 0.2, 0.1, 0.1 );

        if ( !var_4 && _func_02F( var_2["passive"]._ID11563 ) )
            thread _ID42407::_ID25888( 0.2, var_17, "tag_player", 45, 45, 90, 45 );
    }

    var_2["active"] thread _unknown_3ED2( var_4 );

    if ( !var_24 )
        wait 0.05;

    var_30 = self._ID7314;

    if ( var_4 )
    {
        var_30 _meth_80B7();
        level._ID30904["breach_door_charge"] = level._ID49462[var_7];
        var_30 = _ID42407::_ID35028( "breach_door_charge" );
        self._ID7314 = var_30;
        self._ID43888 = [];
        var_31 = var_0._ID43888;

        for ( var_34 = _func_1DA( var_31 ); _func_02F( var_34 ); var_34 = _func_1BF( var_31, var_34 ) )
        {
            var_32 = var_31[var_34];
            var_33 = _ID42407::_ID35028( "breach_door_charge" );
            self._ID43888[self._ID43888.size] = var_33;
            thread _ID42259::_ID3111( var_33, var_32 );
            var_33 _meth_8059();
        }

        var_clear_3
        var_clear_0
    }

    var_35 = _ID42237::_ID37527( var_4, var_7, "breach" );
    thread _ID42259::_ID3111( var_30, var_35 );

    if ( var_35 == "breach_price" || var_35 == "breach_price2" || var_35 == "breach_inspect" )
        var_30 _meth_8059();
    else
    {
        var_30 _meth_805A();
        var_30 _ID42237::_ID10192( 0.2, ::_meth_8059 );
    }

    var_2["active"] thread _unknown_3F91();
    var_36 = 0;

    if ( var_16 )
    {
        thread _ID42259::_ID3111( var_17, "breach_player_anim" );
        var_2["passive"]._ID3189 = "passive_breacher_3rd_person";
        var_2["passive"] thread _ID42259::_ID3111( var_2["passive"], "breach_player_anim" );
        var_2["passive"] thread _unknown_3FE9();
        var_2["passive"] thread _unknown_3FD3();
        var_2["active"]._ID3189 = "active_breacher_3rd_person";
        var_2["active"] thread _ID42259::_ID3111( var_2["active"], "breach_player_anim" );
    }

    var_37 = "";

    if ( var_4 )
    {
        _ID42407::_ID10226( 0.2, ::_unknown_4016, var_3 );

        if ( _func_02F( var_5 ) && _func_02F( level._ID30895["ally"][var_7] ) )
        {
            var_5 notify( "start_breach" );
            var_37 = var_5._ID3189;
            var_5._ID3189 = "ally";
            thread _ID42259::_ID3111( var_5, var_7 );
        }
    }

    _ID42259::_ID3111( var_3, var_7 );

    if ( _func_02F( var_5 ) )
        var_5._ID3189 = var_37;

    level notify( "sp_slowmo_breachanim_done" );
    thread _unknown_403D( var_22 );
    var_38 = var_0._ID26320;
    _ID42237::_ID3294( var_38, ::_meth_805F );
    _ID42237::_ID3350( var_38, _ID42407::_ID31860 );
    var_39 = var_2;

    for ( var_40 = _func_1DA( var_39 ); _func_02F( var_40 ); var_40 = _func_1BF( var_39, var_40 ) )
    {
        var_1 = var_39[var_40];

        if ( _func_02F( var_1._ID11563 ) )
        {
            var_36 = 1;
            _unknown_499D( var_3 );
        }
        else
            var_1 _meth_8055();

        var_1 _meth_8059();
        var_3 _meth_805A();
    }

    var_clear_1
    var_clear_0

    if ( var_36 )
        level waittill( "breach_concludes" );

    var_2["active"] _meth_80F9();
    var_41 = var_2;

    for ( var_42 = _func_1DA( var_41 ); _func_02F( var_42 ); var_42 = _func_1BF( var_41, var_42 ) )
    {
        var_1 = var_41[var_42];

        if ( !_func_02F( level._ID34365 ) )
        {
            var_1 _meth_80F7();
            var_1 _meth_832D();
            var_1 _meth_832B();
            var_1 _meth_8122( 1 );
            var_1 _meth_8123( 1 );
            var_1 _meth_830F( 1 );
            var_1 _meth_830C( 1 );
        }

        var_1 _ID42237::_ID1431();
    }

    var_clear_1
    var_clear_0
    return 1;
}

_ID48136( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    wait(var_0);
    level._ID794 _meth_80A9( var_1, var_2, var_3, var_4, var_5, var_6, var_7 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait(var_1);
}

_ID49769( var_0 )
{
    if ( _func_02F( level._ID49249 ) )
    {
        var_1 = 90;
        var_2 = 90;
        var_3 = 90;
        var_4 = 45;
        var_5 = level._ID49249;
        thread _ID42407::_ID25888( 0.2, var_0, "tag_player", 0, 0, 0, 0 );

        switch ( var_5 )
        {

        }

        return;
    }

    return;
    case "breach_price":
    case "breach_inspect":
    default:
}

_ID26809( var_0 )
{
    self endon( "death" );
    wait(var_0);
    level notify( "plant_go" );
    _ID42237::_ID14402( "breach_plant" );
}

_ID14407( var_0 )
{
    var_1 = var_0._ID31190;
    level endon( var_1 );
    var_2 = var_0 _ID42407::_ID15547( "bad_guys" );
    _ID42407::_ID41089( var_2 );
    level notify( "breach_room_has_been_cleared" );
    level._ID6074 = undefined;
    _ID42237::_ID14402( var_1 );
}

_ID37150( var_0 )
{
    self _meth_8319( "usp_scripted" );
    self _meth_8321( "usp_scripted" );

    if ( _func_02F( level._ID18178[self._ID28340] ) || var_0 )
        self _meth_8321( self._ID28340 );
}

_ID29860()
{
    wait 0.5;
    self _meth_831A( "usp_scripted" );

    if ( _func_02F( self._ID28340 ) )
    {
        var_0 = self._ID28340;
        self _meth_8320( var_0 );

        if ( _unknown_4335( var_0 ) )
        {
            var_1 = _func_1B7( var_0 );

            if ( self _meth_8303( var_0 ) < var_1 )
                self _meth_8301( var_0, var_1 );
        }

        self._ID28340 = undefined;
    }
}

_ID51930( var_0 )
{
    _func_0DB( "cg_drawGun", 0 );
    var_0 _meth_8059();
}

_ID51230( var_0 )
{
    _func_0DB( "cg_drawGun", 1 );
    _ID42237::_ID14402( "breach_settle" );
    var_0 _meth_805A();
}

_ID12510()
{
    wait 2.2;
    self _meth_8329();
}

_ID33924( var_0 )
{
    if ( level._ID15361 > 1 )
        return 0;

    if ( _func_02F( level._ID6044 ) )
        return !level._ID6044;

    if ( !_func_02F( self._ID28340 ) )
        return 0;

    if ( var_0 != self._ID28340 )
        return 0;

    return 1;
}

_ID14918( var_0, var_1, var_2, var_3 )
{
    var_4 = var_2._ID31190;

    if ( var_0 == 2 )
    {
        var_5 = "breach_friend_idle_02";
        var_6 = "breach_friend_enter_02";
    }
    else
    {
        var_5 = "breach_friend_idle_01";
        var_6 = "breach_friend_enter_01";
    }

    self._ID6086 = 1;
    var_7 = 1;

    if ( !_func_02F( self._ID22746 ) )
    {
        var_7 = 0;
        thread _ID42407::_ID22746();
    }

    wait 0.5;
    self _meth_81D2( var_1._ID740, var_1._ID65 );
    _ID42407::_ID3136();
    var_1 thread _ID42259::_ID3025( self, var_5, "stop_idle" );
    self _meth_81B2( self._ID740 );
    wait(3 + var_3);
    thread _unknown_4453( var_0 );
    var_1 notify( "stop_idle" );
    var_1 _ID42259::_ID3020( self, var_6 );
    self _meth_81B2( self._ID740 );
    level notify( "friendlies_finished_breach" );

    if ( _func_02F( self.friendly_breach_finished_flag ) )
        _ID42237::_ID14402( self.friendly_breach_finished_flag );

    _ID42237::_ID14413( var_4 );

    if ( !var_7 )
        _ID42407::_ID36519();

    self._ID6086 = undefined;
}

_ID14911( var_0 )
{
    if ( var_0 == 1 )
        wait 1;
    else
        wait 2;

    level endon( "friendlies_finished_breach" );
    level endon( "breach_room_has_been_cleared" );

    while ( !_func_02F( level._ID6074 ) )
        wait 0.05;

    while ( _func_02F( level._ID6074 ) && level._ID6074.size )
    {
        wait 0.05;

        if ( !_func_02F( level._ID6074 ) )
            break;

        level._ID6074 = _ID42407::_ID29506( level._ID6074 );
        var_1 = level._ID6074;

        for ( var_6 = _func_1DA( var_1 ); _func_02F( var_6 ); var_6 = _func_1BF( var_1, var_6 ) )
        {
            var_2 = var_1[var_6];

            if ( !_func_1A7( var_2 ) || !_func_02F( var_2 ) )
                continue;

            var_3 = var_2 _meth_818C( "tag_eye" );
            var_4 = self _meth_81C4();
            var_5 = self _meth_809E() - var_4;

            if ( self _meth_81C8( var_3, var_5 ) )
            {
                _func_1C8( self._ID1302, self _meth_81C4(), var_3 );
                _func_01E( self _meth_81C4(), var_3, 1 );
                wait 0.5;
            }
        }

        var_clear_5
        var_clear_0
    }
}

_ID15569( var_0 )
{
    var_1 = [];

    if ( !_func_02F( level._ID6082 ) )
        return var_1;

    var_1 = _ID42407::_ID3328( level._ID6082 );
    var_2 = _func_039( "breach_requires_friendlies_in_position" ) == "1";
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_02F( var_4._ID6086 ) && var_4._ID6086 == 1 )
        {
            var_1 = _ID42237::_ID3321( var_1, var_4 );
            continue;
        }

        if ( var_2 && !var_4 _meth_80B0( var_0 ) )
        {
            var_1 = _ID42237::_ID3321( var_1, var_4 );
            continue;
        }
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID15589( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = "none";

    return "A door in breach group " + var_0 + " has been activated.";
}

_ID6031()
{
    var_0 = self._ID31079;
    var_1 = _unknown_462A( var_0 );
    level waittill( var_1 );
    waitframe;
    self notify( "trigger" );
}

_ID34373()
{
    if ( _func_02F( level._ID28001 ) )
        self _meth_81F1( level._ID28001 );
    else
        self _meth_81F1( 1 );
}

_ID34363( var_0 )
{
    if ( _func_02F( level._ID6086 ) && level._ID6086 == 1 )
        return;

    level._ID6086 = 1;
    _ID42237::_ID14402( "breaching_on" );
    level notify( "slowmo_go" );
    level endon( "slowmo_go" );
    var_1 = 0.5;
    var_2 = 0.75;
    var_3 = 0.2;

    if ( _func_02F( level._ID34354 ) )
        var_3 = level._ID34354;

    var_4 = level._ID794;
    var_5 = undefined;

    if ( _ID42407::_ID20495() )
        var_5 = _ID42407::_ID15882( var_4 );

    var_4 thread _ID42407::_ID27079( "slomo_whoosh_in" );
    var_4 thread _unknown_4811();
    thread _unknown_4793();
    thread _unknown_47AD();
    _ID42237::_ID14402( "breach_slowmo" );
    var_6 = var_1 * 2;
    var_7 = var_2 / 2;
    thread _unknown_481E( var_6, var_7 );
    thread _unknown_4809();
    _ID42237::_ID14388( "can_save" );
    _ID42407::_ID34379();
    var_4 thread _unknown_47F8();

    if ( _func_02F( var_5 ) )
        var_5 thread _unknown_4802();

    var_4 _meth_8139( 0 );

    if ( _func_02F( var_5 ) )
        var_5 _meth_8139( 0 );

    _ID42407::_ID34377( 0.25 );
    _ID42407::_ID34374( var_1 );
    _ID42407::_ID34371();
    var_4 _meth_81F1( var_3 );

    if ( _func_02F( var_5 ) )
        var_5 _meth_81F1( var_3 );

    var_8 = _func_03D();
    var_9 = var_8 + level._ID34353 * 1000;

    if ( !_ID42407::_ID20495() )
        var_4 thread _unknown_489D();

    var_4 thread _unknown_48AC();

    if ( _func_02F( var_5 ) )
        var_5 thread _unknown_48B7();

    var_10 = 500;
    var_11 = 1000;

    for (;;)
    {
        if ( _func_02F( level._ID14776 ) )
        {
            if ( !level._ID14776 )
            {
                if ( _func_02F( level._ID14775 ) )
                    var_2 = level._ID14775;

                break;
            }

            wait 0.05;
            continue;
        }

        if ( _func_03D() >= var_9 )
            break;

        if ( level._ID6075 <= 0 && level._ID6085 == 0 )
        {
            var_2 = 1.15;
            break;
        }

        if ( !_ID42407::_ID20495() )
        {
            if ( var_4._ID21975 >= var_8 + var_10 )
                break;

            if ( var_4._ID36992 && _func_03D() - var_8 > var_11 )
                break;
        }

        if ( _ID42407::_ID20614() && _ID42237::_ID14385( "special_op_terminated" ) )
            break;

        if ( var_4._ID6042 || _ID42407::_ID20495() && var_5._ID6042 )
        {
            var_2 = 0.5;
            break;
        }

        wait 0.05;
    }

    level notify( "slowmo_breach_ending",  var_2  );
    level notify( "stop_player_heartbeat" );
    var_4 thread _ID42407::_ID27079( "slomo_whoosh_out" );
    _ID42407::_ID34375( var_2 );
    _ID42407::_ID34372();

    if ( !_func_02F( level._ID50570 ) || !level._ID50570 )
    {
        var_4 _meth_8139( 1 );

        if ( _func_02F( var_5 ) )
            var_5 _meth_8139( 1 );
    }

    var_4 _ID42407::_ID10226( var_2, ::_unknown_495D );

    if ( _func_02F( var_5 ) )
        var_5 _ID42407::_ID10226( var_2, ::_unknown_496D );

    _ID42407::_ID34369();
    _ID42237::_ID14402( "can_save" );
    level._ID27571 = undefined;
    var_4 _unknown_4862();

    if ( _func_02F( var_5 ) )
        var_5 _unknown_486E();

    level notify( "slomo_breach_over" );
    level._ID6086 = 0;
    _ID42237::_ID14388( "breaching_on" );
    _func_0DB( "objectiveHide", 0 );
    var_12 = _func_0DF( "all", "all" );

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];

        if ( _func_02F( var_13._ID43135.remove_shields_when_breach_end ) && var_13._ID43135.remove_shields_when_breach_end )
            _ID45456::_ID54623( var_13 );
    }

    var_clear_2
    var_clear_0
}

_ID46237()
{
    var_0 = 0.1;
    var_1 = 0.25;
    var_2 = _ID42313::_ID9125( "h2_overlays_vignette", 0 );
    var_2._ID983 = 20;
    var_2._ID408 = 0;
    var_2 _meth_808B( var_0 );
    var_2._ID55 = 1;
    wait(var_0);
    level waittill( "slowmo_breach_ending" );
    var_2 _meth_808B( var_1 );
    var_2._ID55 = 0;
    wait(var_1);
    var_2 _meth_808F();
}

_ID43016()
{
    var_0 = 0.1;
    var_1 = 0.5;
    var_2 = 0.25;
    var_3 = _ID42313::_ID9125( "h2_overlays_breachdust", 0 );
    var_3._ID983 = 19;
    var_3._ID408 = 0;
    var_3 _meth_808B( var_0 );
    var_3._ID55 = 0.9;
    wait(var_0);
    var_3 _meth_808B( var_1 );
    var_3._ID55 = 0.8;
    wait(var_1);
    level waittill( "slowmo_breach_ending" );
    var_3 _meth_808B( var_2 );
    var_3._ID55 = 0;
    wait(var_2);
    var_3 _meth_808F();
}

_ID32232()
{
    self endon( "clear_breaching_variable" );
    self._ID20686 = 1;
    self._ID6087 = 0;
    self._ID1761 = undefined;
    var_0 = self _meth_82FB();
    self _meth_82E8( "player_shot_fired", "+attack" );
    self _meth_82E8( "player_shot_fired", "+attack_akimbo_accessible" );

    while ( _func_02F( self._ID20686 ) )
    {
        self waittill( "player_shot_fired" );
        self._ID6087 = var_0 - self _meth_82FB();
        wait 0.05;

        while ( self _meth_8136() )
        {
            self._ID6087 = var_0 - self _meth_82FB();
            wait 0.05;
        }
    }
}

_ID7844()
{
    self._ID20686 = undefined;
    thread _ID42407::_ID25088( "clear_breaching_variable", 0.25 );
}

_ID34350()
{
    var_0 = _func_039( "bg_viewKickScale" );
    var_1 = _func_039( "bg_viewKickMax" );
    _func_0DB( "bg_viewKickScale", 0.3 );
    _func_0DB( "bg_viewKickMax", "15" );
    _func_0DB( "bullet_penetration_damage", 0 );
    level waittill( "slowmo_breach_ending" );
    _func_0DB( "bg_viewKickScale", var_0 );
    _func_0DB( "bg_viewKickMax", var_1 );
    wait 2;
    _func_0DB( "bullet_penetration_damage", 1 );
}

_ID34349( var_0, var_1 )
{
    if ( !_func_02F( level._ID34352 ) || level._ID40543 )
        return;

    _func_148( "slomo_breach", var_0 );
    level waittill( "slowmo_breach_ending",  var_2  );

    if ( _func_02F( var_2 ) )
        var_1 = var_2;

    wait 1;

    if ( !level._ID40543 )
        _func_148( level._ID34352, var_1 );
}

_ID27474()
{
    level endon( "stop_player_heartbeat" );

    for (;;)
    {
        self _meth_82FF( "breathing_heartbeat" );
        wait 0.5;
    }
}

_ID7120()
{
    level endon( "slowmo_breach_ending" );
    self._ID36992 = 0;
    _ID42237::_ID41068( "weapon_switch_started", "night_vision_on", "night_vision_off" );
    self._ID36992 = 1;
}

_ID7119()
{
    level endon( "slowmo_breach_ending" );
    self._ID6042 = 0;
    level waittill( "mission failed" );
    self._ID6042 = 1;
}

_ID6015()
{
    var_0 = self._ID988;
    self endon( "death" );
    _ID42407::_ID1868( ::_unknown_4C4C );
    thread _unknown_4C5E();
    thread _unknown_4C71();
    level thread _unknown_4C86( self );

    if ( _func_02F( self._ID31388 ) && _ID42237::_ID36698( self._ID31388, "reference" ) )
        var_0 = _func_1A1( self._ID31388, "targetname" );

    self._ID29359 = var_0;
    var_0 _ID42259::_ID3023( self, self._ID70 );

    if ( _func_02F( level._ID1630[self._ID70] ) )
    {
        var_1 = level._ID1630[self._ID70];
        self thread [[ var_1 ]]();
    }

    self._ID464 = 0;
    self._ID49 = 1;
    self._ID486 = 10;
    self._ID4867 = 5000;
    self._ID43135.remove_shields_when_breach_end = 1;

    if ( _func_02F( self._ID70 ) )
        self.cheat._ID48626 = 1;

    if ( _func_02F( self._ID31477 ) )
        self._ID1204 = self._ID31477;

    if ( _func_02F( level._ID6004[self._ID70] ) )
        self._ID34237 = 1;

    wait(level._ID34367);
    _ID42407::_ID916();
    self notify( "starting_breach_reaction" );
    var_0 _ID42259::_ID3020( self, self._ID70 );
    self notify( "finished_breach_start_anim" );
}

_ID29321( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_1A7( var_1 ) )
        return;

    if ( !_func_1B3( var_1 ) )
        return;

    if ( !self _meth_8147() )
        return;

    level._ID21836 = _func_03D();
}

_ID6013()
{
    self endon( "death" );

    if ( !_ID42237::_ID14385( "no_mercy" ) )
        self._ID511 = 1;

    level _ID42237::_ID41098( "slomo_breach_over", "friendlies_finished_breach" );

    if ( _func_02F( self ) )
        self._ID511 = 0;
}

_ID6014()
{
    self endon( "breach_enemy_cancel_ragdoll_death" );
    self._ID28895 = 1;
    var_0 = _ID42237::_ID41075( "death", "finished_breach_start_anim" );

    if ( var_0 == "finished_breach_start_anim" )
        self._ID28895 = undefined;
}

_ID6011()
{
    self notify( "breach_enemy_cancel_ragdoll_death" );
    self._ID28895 = undefined;
}

_ID6016( var_0 )
{
    level._ID6075++;
    var_1 = _func_1A5();
    var_1._ID322 = var_0;
    var_1 thread _unknown_4DBD( var_0 );
    var_1 thread _unknown_4DCB( var_0 );
    var_1 thread _unknown_4DDC( var_0 );
    var_1 thread _unknown_4DEB();
    var_2 waittill( "breach_status_change",  var_2  );
    level._ID6075--;
    var_1 = undefined;
}

_ID6018( var_0 )
{
    self endon( "breach_status_change" );
    var_0 waittill( "death" );
    self notify( "breach_status_change",  "death"  );
}

_ID6019( var_0 )
{
    level._ID6076++;
    var_0 waittill( "death" );
    level._ID6076--;

    if ( level._ID6076 <= 0 )
        _unknown_470A();

    level notify( "breach_all_enemies_dead" );
}

_ID6012( var_0 )
{
    self endon( "breach_status_change" );

    while ( _func_1A7( var_0 ) )
        wait 0.05;

    self notify( "breach_status_change",  "exception"  );
}

_ID6017()
{
    self endon( "breach_status_change" );
    level waittill( "slowmo_breach_ending" );
    self notify( "breach_status_change",  "breach_ending"  );
}

_ID6037()
{
    self endon( "death" );
    self._ID6081 = 0;
    var_0 = self._ID988;
    self._ID29359 = var_0;
    self endon( "cancel_breach_behavior" );
    thread _unknown_4ED9();
    _ID42259::_ID3023( self, self._ID70 );
    self._ID486 = 10;
    self._ID24829 = 1;
    self._ID512 = 1;
    wait(level._ID34367);

    if ( _func_02F( level._ID1630[self._ID70] ) )
    {
        var_1 = level._ID1630[self._ID70];
        self thread [[ var_1 ]]();
    }

    self._ID49 = 1;
    var_0 _ID42259::_ID3020( self, self._ID70 );
    self notify( "finished_breach_start_anim" );

    if ( _func_02F( self._ID34238 ) )
        return;

    if ( _unknown_55D5( self._ID70 + "_idle" ) )
        thread _ID42259::_ID3025( self, self._ID70 + "_idle", "stop_idle" );
    else
    {
        var_2 = "hostage_knees_loop";
        thread _ID42259::_ID3025( self, var_2, "stop_idle" );
    }

    self._ID6081 = 1;
}

_ID18962()
{
    var_0 = self._ID486;
    self endon( "death" );
    self endon( "saved" );

    while ( _func_02F( self ) )
    {
        self waittill( "damage",  var_2, var_1  );

        if ( _func_02F( var_2 ) )
        {
            if ( _func_1B3( var_2 ) )
            {
                self _meth_8058( self._ID740, level._ID794 );
                break;
                continue;
            }

            if ( _func_02F( var_2._ID1194 ) && var_2._ID1194 == "allies" )
                self._ID486 = var_0;
        }
    }
}

_ID15960( var_0 )
{
    return level._ID6032[var_0]._ID30176;
}

_ID18963()
{
    if ( _ID42407::_ID20614() )
        level endon( "special_op_terminated" );

    level endon( "mission failed" );
    var_0 = self._ID486;
    var_1 = 0;
    thread _unknown_4FAD();
    var_2 = _unknown_4FD1( self._ID31433 );

    if ( _func_039( "hostage_missionfail" ) == "0" )
        return;

    while ( _func_02F( self ) )
    {
        self waittill( "death",  var_3  );

        if ( _func_02F( var_3 ) )
        {
            if ( _func_1B3( var_3 ) )
            {
                level notify( "player_shot_a_hostage" );
                waitframe;

                if ( level._ID21836 == _func_03D() )
                    _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_KILLEDHOSTAGE" );
                else
                    _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_KILLEDHOSTAGE" );

                var_1 = 1;
            }
            else if ( _func_02F( var_3._ID1194 ) && var_3._ID1194 == "allies" && !_func_1B3( var_3 ) )
            {
                _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_HOSTAGEEXECUTED" );
                var_1 = 1;
            }
            else
            {
                if ( _unknown_5097( var_2 ) )
                    _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_HOSTAGEEXECUTED_USEMULTIDOOR" );
                else
                    _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_HOSTAGEEXECUTED" );

                var_1 = 1;
            }
        }

        if ( var_1 == 1 )
        {
            thread _ID42407::_ID23778();
            level notify( "mission failed" );
        }
    }
}

_ID8636( var_0 )
{
    if ( !_ID42407::_ID20614() )
        return 0;

    if ( !_ID42407::_ID20495() )
        return 0;

    if ( _func_02F( var_0._ID18173 ) )
        return 1;
    else
        return 0;
}
#using_animtree("script_model");

_ID31296()
{
    level._ID30895["breach_door_model"]["breach"] = %breach_player_door_v2;
    level._ID30900["breach_door_model"] = #animtree;
    level._ID30904["breach_door_model"] = "com_door_01_handleright";
    level._ID30895["breach_door_hinge"]["breach"] = %breach_player_door_hinge_v1;
    level._ID30900["breach_door_hinge"] = #animtree;
    level._ID30904["breach_door_hinge"] = "com_door_piece_hinge";
    level._ID30895["breach_door_model_metal"]["breach"] = %breach_player_door_v2;
    level._ID30900["breach_door_model_metal"] = #animtree;
    level._ID30904["breach_door_model_metal"] = "breach_door_metal_right";
    level._ID30895["breach_door_hinge_metal"]["breach"] = %breach_player_door_metal;
    level._ID30900["breach_door_hinge_metal"] = #animtree;
    level._ID30904["breach_door_hinge_metal"] = "breach_door_metal_right_dst";

    if ( level._ID912 == "oilrig" )
    {
        level._ID30895["breach_door_model_oilrig"]["breach"] = %breach_player_door_v2;
        level._ID30900["breach_door_model_oilrig"] = #animtree;
        level._ID30904["breach_door_model_oilrig"] = "h2_oilr_door_breaching_undamaged";
        level._ID30895["breach_door_hinge_oilrig"]["breach"] = %h2_oilr_door_breaching_open_anim;
        level._ID30900["breach_door_hinge_oilrig"] = #animtree;
        level._ID30904["breach_door_hinge_oilrig"] = "h2_oilr_door_breaching_damaged";
    }

    level._ID30895["breach_door_charge"]["breach"] = %breach_player_frame_charge_v3;
    level._ID30900["breach_door_charge"] = #animtree;
    level._ID30904["breach_door_charge"] = "mil_frame_charge";

    if ( _func_02F( level._ID51829 ) )
        _func_14C( level._ID51829 );
    else
        level._ID51829 = "mil_frame_charge";

    level._ID30900["desk"] = #animtree;
    level._ID30895["desk"]["breach_react_desk_v7_desk"] = %breach_react_desk_v7_desk;
    level._ID30900["chair"] = #animtree;
    level._ID30895["chair"]["breach_chair_hide_reaction_v2_chair"] = %breach_chair_hide_reaction_v2_chair;
    level._ID30895["chair"]["breach_chair_hide_reaction_death_v2_chair"] = %breach_chair_hide_reaction_death_v2_chair;
}

_ID32281()
{
    level._ID30895["breach_door_charge"]["breach"] = %breach_player_frame_charge_v3;
}

_ID32282()
{
    level._ID30895["breach_door_charge"]["breach"] = %breach_player_frame_charge;
}

_ID53163()
{
    level._ID30895["breach_door_charge"]["breach_normal"] = %h2_breach_normal_charge;
    level._ID30895["breach_door_charge"]["breach_normal_v1"] = %h2_breach_normal_charge_v1;
    level._ID30895["breach_door_charge"]["breach_normal_v2"] = %h2_breach_normal_charge_v2;
    level._ID30895["breach_door_charge"]["breach_normal_v3"] = %h2_breach_normal_charge_v3;
    level._ID30895["breach_door_charge"]["breach_normal_v4"] = %h2_breach_normal_charge_v4;
    level._ID30895["breach_door_charge"]["breach_inspect"] = %h2_breach_normal_charge_inspect;
    level._ID30895["breach_door_charge"]["breach_price"] = %h2_gulag_breach_rescue_charge;
    level._ID30895["breach_door_charge"]["breach_price2"] = %h2_gulag_breach_rescue_charge_soap;
    level._ID30895["breach_door_charge"]["breach_npc_chill"] = %h2_breach_normal_charge_v1;
    level._ID30895["breach_door_charge"]["breach_npc_twitch"] = %h2_breach_normal_charge_v2;
    level._ID30895["breach_door_charge"]["breach_npc_thumbs_up"] = %h2_breach_normal_charge_v3;
    level._ID30895["breach_door_charge"]["breach_npc_lets_go"] = %h2_breach_normal_charge_v4;
    level._ID30895["breach_door_charge"]["breach_npc_listen"] = %h2_breach_normal_charge_v1;
    level._ID30895["breach_door_charge"]["player_inspect_v1"] = %h2_breach_normal_charge_inspect_v1;
    _ID42259::_ID2075( "breach_door_charge", "breach_normal", "scn_detpack_breach_normal" );
    _ID42259::_ID2075( "breach_door_charge", "breach_normal_v1", "scn_detpack_breach_normal_v1" );
    _ID42259::_ID2075( "breach_door_charge", "breach_normal_v2", "scn_detpack_breach_normal_v2" );
    _ID42259::_ID2075( "breach_door_charge", "breach_normal_v3", "scn_detpack_breach_normal_v3" );
    _ID42259::_ID2075( "breach_door_charge", "breach_normal_v4", "scn_detpack_breach_normal_v4" );
    _ID42259::_ID2075( "breach_door_charge", "breach_inspect", "scn_detpack_breach_inspect" );
    _ID42259::_ID2075( "breach_door_charge", "player_inspect_v1", "scn_detpack_breach_inspect_v1" );
    _ID42259::_ID2075( "breach_door_charge", "breach_npc_chill", "scn_detpack_breach_npc_chill" );
    _ID42259::_ID2075( "breach_door_charge", "breach_npc_twitch", "scn_detpack_breach_npc_twitch" );
    _ID42259::_ID2075( "breach_door_charge", "breach_npc_thumbs_up", "scn_detpack_breach_npc_thumbs_up" );
    _ID42259::_ID2075( "breach_door_charge", "breach_npc_lets_go", "scn_detpack_breach_npc_lets_go" );
    _ID42259::_ID2075( "breach_door_charge", "breach_npc_listen", "scn_detpack_breach_npc_listen" );
    level._ID49462 = [];
    level._ID49462["breach_normal"] = "mil_frame_charge";
    level._ID49462["breach_normal_v1"] = "mil_frame_charge";
    level._ID49462["breach_normal_v2"] = "mil_frame_charge";
    level._ID49462["breach_normal_v3"] = "mil_frame_charge";
    level._ID49462["breach_normal_v4"] = "mil_frame_charge";
    level._ID49462["breach_inspect"] = "mil_frame_charge";
    level._ID49462["breach_price"] = "mil_frame_charge";
    level._ID49462["breach_price2"] = "mil_frame_charge";
    level._ID49462["breach_npc_chill"] = "mil_frame_charge";
    level._ID49462["breach_npc_twitch"] = "mil_frame_charge";
    level._ID49462["breach_npc_thumbs_up"] = "mil_frame_charge";
    level._ID49462["breach_npc_lets_go"] = "mil_frame_charge";
    level._ID49462["breach_npc_listen"] = "mil_frame_charge";
    level._ID49462["player_inspect_v1"] = "mil_frame_charge";
}
#using_animtree("multiplayer");

_ID27229()
{
    if ( !_func_02F( level._ID34382 ) )
        level._ID34382 = "viewhands_player_udt";

    level._ID30900["active_breacher_rig"] = #animtree;
    level._ID30904["active_breacher_rig"] = level._ID34382;
    level._ID30895["active_breacher_rig"]["breach_player_anim"] = %breach_coop_player_1;

    if ( _ID42407::_ID20495() )
    {
        level._ID30895["active_breacher_rig"]["breach_player_anim"] = %breach_coop_player_1;
        level._ID30900["active_breacher_3rd_person"] = #animtree;
        level._ID30904["active_breacher_3rd_person"] = level._ID34382;
        level._ID30895["active_breacher_3rd_person"]["breach_player_anim"] = %breach_coop_player_1_3rdperson;
        level._ID30895["active_breacher_3rd_person"]["root"] = %code;
        level._ID30900["passive_breacher_rig"] = #animtree;
        level._ID30904["passive_breacher_rig"] = level._ID34382;
        level._ID30895["passive_breacher_rig"]["breach_player_anim"] = %breach_coop_player_2;
        level._ID30900["passive_breacher_3rd_person"] = #animtree;
        level._ID30904["passive_breacher_3rd_person"] = level._ID34382;
        level._ID30895["passive_breacher_3rd_person"]["breach_player_anim"] = %breach_coop_player_2_3rdperson;
        level._ID30895["passive_breacher_3rd_person"]["root"] = %code;
    }

    if ( !_func_02F( level._ID47275 ) )
        level._ID47275 = "viewbody_udt";

    level._ID30900["h2_active_breacher_rig"] = #animtree;
    level._ID30904["h2_active_breacher_rig"] = level._ID47275;
    level._ID30895["h2_active_breacher_rig"]["breach_normal"] = %h2_breach_normal;
    level._ID30895["h2_active_breacher_rig"]["breach_normal_v1"] = %h2_breach_normal_v1;
    level._ID30895["h2_active_breacher_rig"]["breach_normal_v2"] = %h2_breach_normal_v2;
    level._ID30895["h2_active_breacher_rig"]["breach_normal_v3"] = %h2_breach_normal_v3;
    level._ID30895["h2_active_breacher_rig"]["breach_normal_v4"] = %h2_breach_normal_v4;
    level._ID30895["h2_active_breacher_rig"]["breach_inspect"] = %h2_breach_player_inspect;
    level._ID30895["h2_active_breacher_rig"]["breach_price"] = %h2_gulag_breach_rescue_player;
    level._ID30895["h2_active_breacher_rig"]["breach_npc_chill"] = %h2_breach_normal_v1;
    level._ID30895["h2_active_breacher_rig"]["breach_npc_twitch"] = %h2_breach_normal_v2;
    level._ID30895["h2_active_breacher_rig"]["breach_npc_thumbs_up"] = %h2_breach_normal_v3;
    level._ID30895["h2_active_breacher_rig"]["breach_npc_lets_go"] = %h2_breach_normal_v4;
    level._ID30895["h2_active_breacher_rig"]["breach_npc_listen"] = %h2_breach_normal_v1;
    level._ID30895["h2_active_breacher_rig"]["player_inspect_v1"] = %h2_breach_player_inspect_v1;
    level._ID53309 = [ "breach_normal", "breach_normal_v1", "breach_normal_v2", "breach_normal_v3", "breach_normal_v4", "player_inspect_v1", "breach_npc_chill", "breach_npc_twitch", "breach_npc_thumbs_up", "breach_npc_lets_go", "breach_npc_listen" ];
    level._ID49275 = [ "breach_normal_v1", "breach_normal_v2", "breach_normal_v3", "breach_normal_v4", "breach_npc_chill", "breach_npc_twitch", "breach_npc_thumbs_up", "breach_npc_lets_go", "breach_npc_listen" ];
    level._ID50543 = [];
    level._ID43339 = [];
    _unknown_57DE();
    var_0 = level._ID30895["h2_active_breacher_rig"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( level._ID49462[var_2] != level._ID51829 )
        {
            level._ID43339[var_2] = 1;
            level._ID53309 = _ID42237::_ID3321( level._ID53309, var_2 );
            level._ID49275 = _ID42237::_ID3321( level._ID49275, var_2 );
            continue;
        }

        if ( _ID42407::_ID20542( level._ID49275, var_2 ) && !_ID42407::_ID20542( level._ID53309, var_2 ) )
            level._ID50543[var_2] = 1;
    }

    var_clear_2
    level._ID1629 = [];
    _unknown_5A19( ::_unknown_5A25 );
    _ID42259::_ID2058( "active_breacher_rig", "explode", ::_unknown_5A21 );
    _ID42259::_ID2058( "active_breacher_rig", "slowmo", ::_unknown_552B );
    _ID42259::_ID2058( "h2_active_breacher_rig", "explode", ::_unknown_5A3F );
    _ID42259::_ID2058( "h2_active_breacher_rig", "slowmo", ::_unknown_5549 );
    _ID42259::_ID2058( "h2_active_breacher_rig", "hide_WB", ::_unknown_5494 );
}

_ID1851( var_0 )
{
    level._ID1629[level._ID1629.size] = var_0;
}

_ID6027( var_0 )
{
    var_1 = level._ID1629;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        thread [[ var_2 ]]( var_0 );
    }

    var_clear_2
    var_clear_0
}

_ID6020( var_0 )
{
    var_1 = level._ID6032[self._ID6039];
    var_2 = undefined;
    var_3 = undefined;

    switch ( var_1._ID11632 )
    {

    }

    if ( _func_02F( level._ID14918 ) )
    {
        if ( level._ID14918 )
            var_2 = "detpack_explo_friendlies";
    }

    if ( _func_02F( var_2 ) )
        thread _ID42237::_ID27077( var_2, self._ID7314._ID740 );

    _ID42234::_ID13611( "breach_" + self._ID6039 );
    thread _unknown_5BEF( self._ID7314._ID740 );
    level notify( "breach_explosion" );

    if ( _func_02F( level._ID14918 ) )
        level._ID14918 = !level._ID14918;

    if ( _func_02F( var_3 ) )
    {
        var_4 = _ID42407::_ID35028( var_3 );
        self._ID28267 thread _ID42259::_ID3111( var_4, "breach" );
    }

    wait 0.05;
    self._ID7314 _meth_80B7();

    if ( _func_02F( self._ID43888 ) )
    {
        var_5 = self._ID43888;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];
            var_6 _meth_80B7();
        }

        var_clear_2
        var_clear_0
    }

    if ( _func_02F( self._ID11587 ) )
    {
        self._ID11587 _meth_80B7();
        return;
        case "caves_wood":
        case "estate_wood":
        case "estate_wood_backwards":
        case "oilrig":
        case "metal":
        case "wood":
        case "none":
        default:
    }
}

_ID6056( var_0 )
{
    var_1 = _func_06A( "script_origin", var_0 );
    var_1._ID740 = var_0;
    var_1 _meth_80B4( "grenade_rumble" );
    wait 4;
    var_1 _meth_80B7();
}

_ID1622()
{
    self endon( "death" );
    self._ID294 = 1;
    thread _unknown_5D77();
}

_ID1623()
{
    self endon( "death" );
    self._ID294 = 1;
    thread _unknown_5CA7();
}

_ID1628()
{
    animscripts\notetracks::_ID25053();
}

_ID1615()
{
    self endon( "death" );

    if ( !_ID42237::_ID14385( "no_mercy" ) )
        self._ID511 = 1;

    self._ID14789 = 1;
    _ID42407::_ID41119( "bodyfall large" );
    self waittill( "finished_breach_start_anim" );
    self _meth_8057( self._ID486 - 1, self._ID740 );
}

_ID1620()
{
    if ( self._ID70 == "execution_knife_hostage" || self._ID70 == "execution_knife2_hostage" )
        thread _unknown_5D67();

    if ( _unknown_5EAF() )
        thread _unknown_5ECB();

    self._ID34238 = 1;
    self endon( "death" );
    _ID42407::_ID32326( self._ID70 + "_death" );
    self waittill( "finished_breach_start_anim" );

    if ( _func_02F( self._ID22887 ) )
        return;

    if ( _unknown_609B( self._ID70 + "_survives" ) )
        self._ID29359 _ID42259::_ID3020( self, self._ID70 + "_survives" );

    thread _ID42259::_ID3025( self, self._ID70 + "_idle", "stop_idle" );
    self._ID6081 = 1;
}

_ID1625()
{
    if ( _unknown_5F0B() )
        thread _unknown_5F26();

    self._ID34238 = 1;
    self waittill( "finished_breach_start_anim" );

    if ( _func_02F( self._ID22887 ) )
        return;

    if ( _unknown_60E6( self._ID70 + "_idle" ) )
        thread _ID42259::_ID3025( self, self._ID70 + "_idle", "stop_idle" );

    self._ID6081 = 1;
}

_ID1616()
{
    var_0 = _func_06A( "script_model", self._ID29359._ID740 );
    var_0 _meth_80B8( "com_restaurantchair_2" );
    var_0._ID65 = self._ID29359._ID65 + ( 0, 90, 0 );
    var_0._ID740 = self._ID29359._ID740;
    self._ID3189 = "generic";

    switch ( self._ID70 )
    {

    }

    case "hostage_chair_twitch4":
    case "hostage_chair_twitch3":
    case "hostage_chair_twitch2":
    case "hostage_chair_twitch1":
}

_ID1627()
{
    var_0 = _ID42407::_ID15601( self._ID740, "bad_guys" );
    self waittill( "finished_breach_start_anim" );

    if ( _func_02F( var_0 ) && _func_1A7( var_0 ) )
    {
        _func_157( _ID42237::_ID16299( "breach_knife_execution" ), self, "J_neck" );
        thread _ID42407::_ID27079( "melee_knife_hit_body" );
        self _meth_8058();
    }
}

_ID1621()
{
    self._ID34238 = 1;
    self endon( "death" );

    if ( _unknown_5FF9() )
        thread _unknown_6015();

    self waittillmatch( "single anim",  "bodyfall large"  );
    _ID42407::_ID32326( self._ID70 + "_death" );
    self waittill( "finished_breach_start_anim" );
    self _meth_8209( 0.2 );
    _ID42259::_ID3020( self, self._ID70 + "_survives" );

    if ( _func_02F( self._ID22887 ) )
        return;

    thread _ID42259::_ID3025( self, "hostage_knees_loop", "stop_idle" );
    self._ID6081 = 1;
}

_ID1624()
{
    self._ID34238 = 1;
    self endon( "death" );
    self waittill( "finished_breach_start_anim" );
    _ID42407::_ID32326( self._ID70 + "_death" );
    _ID42259::_ID3020( self, self._ID70 + "_survives" );
    thread _ID42259::_ID3025( self, "hostage_knees_loop", "stop_idle" );
    self._ID6081 = 1;
}

_ID1626()
{
    self endon( "death" );
    _unknown_5B0D();
    _ID42407::_ID32326( self._ID70 + "_death" );
    self waittillmatch( "single anim",  "stab"  );
    wait 0.1;
    thread _unknown_5FBA();
    self waittill( "finished_breach_start_anim" );
}

_ID21440()
{
    var_0 = _ID42407::_ID15617( self._ID740 );
    var_1 = _func_0F3( var_0._ID740, self._ID740 );

    if ( var_1 <= 50 )
    {
        var_0 _meth_80B4( "grenade_rumble" );
        var_0 thread _ID42407::_ID27079( "melee_knife_hit_body" );
        var_0 _meth_813B( 0 );
        var_0 _meth_80F3( 0 );
        waitframe;
        var_0 _meth_8057( var_0._ID486 + 50000, self _meth_818C( "tag_weapon_right" ), self );
        var_0._ID6042 = 1;
    }
}

_ID21439()
{
    wait 0.5;
    _ID42237::_ID41098( "damage", "finished_breach_start_anim" );

    if ( _func_02F( self ) )
        self _meth_802A( "weapon_parabolic_knife", "TAG_INHAND" );
}

_ID1618()
{
    self endon( "death" );
    _unknown_5BAB();
    var_0 = _func_0B9( 1, 3 );

    if ( _ID42237::_ID8201() )
        _ID42407::_ID32326( self._ID70 + "_death" );
    else
        _ID42407::_ID32326( self._ID70 + "_death2" );
}

_ID1617()
{
    self endon( "death" );
    _unknown_5BDA();
    _ID42407::_ID32326( self._ID70 + "_death" );
    thread _unknown_60B8();
    self waittill( "finished_breach_start_anim" );
    thread _unknown_60A6();
}

_ID7262()
{
    var_0 = _func_06A( "script_model", self._ID29359._ID740 );
    var_0 _meth_80B8( "furniture_chair_metal01" );
    var_0._ID3189 = "chair";
    var_0 _ID42407::_ID3428();
    var_0._ID29359 = _func_06A( "script_origin", self._ID29359._ID740 );
    var_0._ID29359._ID65 = self._ID29359._ID65;
    self waittill( "starting_breach_reaction" );
    var_0._ID29359 thread _ID42259::_ID3111( var_0, "breach_chair_hide_reaction_v2_chair" );
    self endon( "finished_breach_start_anim" );

    if ( _func_1A7( self ) )
    {
        self waittill( "death" );
        var_0._ID29359 thread _ID42259::_ID3111( var_0, "breach_chair_hide_reaction_death_v2_chair" );
    }
}

_ID1619()
{
    self endon( "death" );
    thread _unknown_6169();
    self waittill( "finished_breach_start_anim" );
}

_ID10427()
{
    var_0 = _func_06A( "script_model", self._ID29359._ID740 );
    var_0 _meth_80B8( "furniture_long_desk_animate" );
    var_0._ID3189 = "desk";
    var_0 _ID42407::_ID3428();
    var_0._ID29359 = _func_06A( "script_origin", self._ID29359._ID740 );
    var_0._ID29359._ID65 = self._ID29359._ID65;
    self waittill( "starting_breach_reaction" );
    var_0._ID29359 thread _ID42259::_ID3111( var_0, "breach_react_desk_v7_desk" );
}

_ID6043( var_0 )
{
    var_1 = level._ID6032;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_0 _meth_80B0( var_2._ID11612 ) )
            return var_2;
    }

    var_clear_2
    var_clear_0
}

_ID15587()
{
    var_0 = _func_1D9( level._ID6032 );
    return var_0;
}

_ID22819( var_0 )
{
    level._ID6032[var_0]._ID12560 = 0;
}

_ID10246( var_0 )
{
    level._ID6032[var_0]._ID1224 _meth_80B7();
    var_1 = level._ID6032[var_0]._ID26320;
    _ID42237::_ID3294( var_1, ::_meth_805F );
    _ID42237::_ID3350( var_1, _ID42407::_ID31860 );
    var_2 = level._ID6032[var_0]._ID22620;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID6005( var_0 )
{
    if ( !_func_02F( self ) )
        return;

    var_1 = self._ID740;
    wait 0.05;

    if ( _func_039( "breach_debug" ) == "0" )
        return;

    var_2 = [];
    var_3 = _func_1A2( "breach_enemy_spawner", "targetname" );
    var_4 = _func_1A2( "breach_hostage_spawner", "targetname" );
    var_2 = _ID42407::_ID3317( var_3, var_4 );
    var_5 = var_2;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( !var_6 _meth_80B0( var_0 ) )
            var_2 = _ID42237::_ID3321( var_2, var_6 );
    }

    var_clear_2
    var_clear_0

    while ( !var_0._ID6073 )
    {
        var_8 = var_1;
        var_9 = var_2;

        for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
        {
            var_6 = var_9[var_10];

            if ( _func_02F( var_6._ID70 ) )
            {
                thread _ID42407::_ID9904( var_6._ID70, var_8, 1 );
                var_8 -= ( 0, 0, 10 );
            }
        }

        var_clear_1
        var_clear_0
        wait 1;
    }
}

_ID41760()
{
    if ( _ID42407::_ID20495() )
        return 0;

    if ( _func_02F( level._ID18992 ) && level._ID18992 == 0 )
        return 0;

    if ( _func_02F( self._ID922 ) )
        return self._ID922 == "manhandled" || self._ID922 == "manhandled_guarded";

    return 0;
}

_ID22890()
{
    if ( level._ID6076 > 0 )
        return 1;

    if ( !self._ID36141 )
        return 1;

    return 0;
}

_ID15829()
{
    self endon( "death" );
    self._ID22887 = 1;
    self._ID29157 = 0;
    self._ID36141 = 0;
    var_0 = undefined;

    if ( self._ID922 == "manhandled" )
        var_0 = _func_1A1( self._ID1191, "targetname" );

    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;
    var_7 = undefined;
    var_8 = "";

    if ( _func_02F( self._ID31388 ) )
        var_8 = self._ID31388;

    switch ( self._ID922 )
    {

    }

    var_7 = var_4 + "_idle" + var_8;
    var_2 = var_4 + "_prepare" + var_8;
    var_3 = var_4 + "_prepare_idle" + var_8;
    var_5 = var_4 + "_part2A" + var_8;
    var_6 = var_4 + "_part2B" + var_8;
    var_4 += var_8;
    _unknown_6617( var_4 );
    _unknown_661C( var_7 );

    if ( self._ID922 == "manhandled" )
    {
        var_1 = var_0 _ID42407::_ID35014( 1 );
        var_1 _meth_805A();
        self._ID29359 _ID42259::_ID3023( var_1, var_1._ID70 );
        var_1 _meth_81AF( 1 );
        level._ID22889 = var_1;
        var_1._ID29160 = 0;
        var_1 thread _unknown_65F8();
    }

    wait 0.5;

    if ( self._ID922 == "manhandled" )
    {
        var_1 _meth_8059();
        var_9 = level._ID30895["generic"]["friendly_manhandle_h2"];

        if ( _func_02F( var_9 ) )
            var_1 thread _ID42259::_ID3044( var_1, "friendly_manhandle_h2", undefined, undefined, "generic" );
    }

    wait 0.5;
    self waittill( "finished_breach_start_anim" );

    if ( _unknown_669A( var_2 ) )
        self._ID29359 _ID42259::_ID3020( self, var_2 );

    if ( _unknown_66AA( var_3 ) )
        self._ID29359 thread _ID42259::_ID3025( self, var_3, "stop_idle" );
    else
        var_3 = undefined;

    self._ID29157 = 1;

    if ( _func_02F( var_3 ) )
    {
        while ( _unknown_6522() )
            wait 0.05;
    }

    self._ID29359 notify( "stop_idle" );
    self notify( "stop_idle" );

    if ( self._ID922 == "manhandled" )
    {
        var_1 notify( "stop_loop" );
        self._ID29359 thread _ID42259::_ID3020( var_1, var_1._ID70 );
    }

    self._ID29359 _ID42259::_ID3020( self, var_4 );

    if ( _unknown_6709( var_5 ) )
    {
        var_10 = _func_1A1( "animation_breach_2A", "targetname" );
        var_10 thread _ID42259::_ID3020( var_1, var_1._ID70 + "_part2A" );
        var_10 _ID42259::_ID3020( self, var_5 );
    }
    else if ( _unknown_6736( var_6 ) )
    {
        var_10 = _func_1A1( "animation_breach_2B", "targetname" );
        var_10 thread _ID42259::_ID3020( var_1, var_1._ID70 + "_part2B" );
        var_10 _ID42259::_ID3020( self, var_6 );
    }

    if ( _func_02F( var_1 ) && _func_02F( level._ID30895["generic"][var_1._ID70 + "_idle"] ) )
        self._ID29359 thread _ID42259::_ID3025( var_1, var_1._ID70 + "_idle", "stop_idle" );

    if ( _func_02F( level._ID30895["generic"][var_7] ) )
    {
        self._ID29359 thread _ID42259::_ID3025( self, var_7, "stop_idle" );
        return;
        case "manhandled_guarded":
        case "manhandled":
    }
}

_ID51716( var_0 )
{
    var_1 = level._ID794 _meth_8346();
    var_1 = ( 0, var_1[1], 0 );
    var_2 = _func_11F( var_1 );
    var_3 = _func_11D( var_1 );
    var_4 = 0.1;
    var_5 = _ID42237::_ID35164();
    var_5._ID740 = level._ID794._ID740;
    var_5._ID65 = var_1;
    level._ID794 _meth_8084( var_5, "tag_origin", 1, 45, 45, 90, 45, 1 );
    var_5 _meth_82B8( var_5._ID740 + var_3 * var_0, var_4 );
    wait(var_4);
    level._ID794 _meth_8055();
}

_ID35364( var_0 )
{
    if ( level._ID912 == "gulag" )
    {
        var_1 = var_0._ID65;
        var_2 = ( -4254.38, 1667.38, 133.681 );
        var_3 = _ID42237::_ID35164();
        var_3._ID740 = level._ID794._ID740;
        var_3._ID65 = var_1;
        level._ID794 _meth_8084( var_3, "tag_origin", 1, 45, 45, 90, 45, 1 );
        var_4 = 0.45;
        var_3 _meth_82B8( var_2, var_4, var_4 * 0.4, var_4 * 0.4 );
        wait(var_4);
        level._ID794 _meth_81F1( 0.5 );
        thread _unknown_67B9();
        level._ID28544 thread _unknown_67D3();
    }
}

_ID27674()
{
    wait 0.25;
    var_0 = level _ID42407::_ID9122( ::_unknown_6816, 0.5, 0 );
    var_0._ID1210 = 1.5;
}

_ID28545()
{
    self endon( "stop_following_player" );
    wait 1.5;

    for (;;)
    {
        self _meth_82B8( level._ID794._ID740, 2, 0, 0 );
        wait 0.05;
    }
}

_ID28546()
{
    self endon( "stop_following_player" );
    var_0 = _func_06A( "script_origin", ( 0, 0, 0 ) );

    for (;;)
    {
        var_1 = level._ID794._ID740;
        var_1 = _ID42407::_ID32530( var_1, 0 );
        var_2 = self._ID740;
        var_2 = _ID42407::_ID32530( var_2, 0 );
        var_3 = _func_11A( var_1 - var_2 );
        var_4 = _func_11F( var_3 );
        var_5 = _func_11F( self._ID65 );
        var_6 = _func_11E( self._ID65 );
        var_7 = _func_0FB( var_4, var_6 );
        var_0._ID65 = self._ID65;
        var_8 = _func_0C3( _func_0BF( var_7 ) );
        var_9 = 2;

        if ( var_9 > var_8 )
            var_9 = var_8;

        if ( var_7 < 0 )
            var_0 _meth_82C4( var_9 );
        else
            var_0 _meth_82C4( var_9 * -1 );

        self _meth_82BF( var_0._ID65, 0.15 );
        wait 0.15;
    }
}

_ID27545( var_0, var_1, var_2 )
{
    level._ID794 _meth_81F1( var_1 * 1 - var_0 + var_2 * var_0 );
}

_ID22891()
{
    level endon( "mission failed" );

    if ( _func_039( "hostage_missionfail" ) == "1" )
        level endon( "player_shot_a_hostage" );

    thread _ID42407::_ID22746();
    _ID42407::_ID32628( 1 );

    if ( !_ID42237::_ID14385( "no_mercy" ) )
        self._ID511 = 1;

    self._ID465 = 0;
    wait 1;
    var_0 = [];
    var_1 = _func_0DF( "neutral", "civilian" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3._ID29157 ) )
            continue;

        if ( _func_02F( var_3._ID31433 ) && var_3._ID31433 == self._ID31433 )
        {
            if ( _func_02F( var_3._ID922 ) && _func_125( var_3._ID922, "manhandled" ) )
                var_0 = _ID42237::_ID3293( var_0, var_3 );
        }
    }

    var_clear_2
    var_clear_0
    var_5 = var_0.size;
    var_6 = var_0;

    while ( var_5 > 0 )
    {
        wait 0.05;
        var_7 = var_6;

        for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
        {
            var_3 = var_7[var_8];

            if ( !_func_02F( var_3 ) || var_3._ID29157 == 1 )
            {
                var_6 = _ID42237::_ID3321( var_6, var_3 );
                var_5--;
            }
        }

        var_clear_1
        var_clear_0
    }

    if ( _func_02F( self.manhandler_additional_wait_func ) )
        [[ self.manhandler_additional_wait_func ]]();

    var_9 = var_0;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_3 = var_9[var_10];

        if ( _func_02F( var_3 ) )
            var_3._ID36141 = 1;
    }

    var_clear_1
    var_clear_0
}

_ID3420( var_0 )
{

}

_ID3012( var_0 )
{
    if ( _func_02F( level._ID30895["generic"][var_0] ) )
        return 1;
    else
        return 0;
}

_ID1943( var_0, var_1 )
{
    level._ID1630[var_0] = var_1;
}

_ID1944()
{
    if ( !_func_02F( self ) )
        return;

    if ( !_func_02F( level._ID6082 ) )
    {
        level._ID6082 = [];
        level._ID6082[0] = self;
    }
    else if ( _ID42407::_ID20542( level._ID6082, self ) )
        return;
    else
        level._ID6082 = _ID42237::_ID3293( level._ID6082, self );
}

_ID29570()
{
    if ( !_func_02F( self ) )
        return;

    if ( !_func_02F( level._ID6082 ) )
        return;

    if ( _ID42407::_ID20542( level._ID6082, self ) )
        level._ID6082 = _ID42237::_ID3321( level._ID6082, self );
}

_ID6021()
{
    var_0 = [];
    var_0[var_0.size] = ::_meth_8137;
    var_0[var_0.size] = ::_meth_8342;
    var_0[var_0.size] = ::_meth_8135;
    var_1 = level._ID805;

    for ( var_6 = _func_1DA( var_1 ); _func_02F( var_6 ); var_6 = _func_1BF( var_1, var_6 ) )
    {
        var_2 = var_1[var_6];

        if ( var_2 _meth_8341() )
        {
            thread _unknown_5C7D();
            return 1;
        }

        if ( var_2 _unknown_6B52() )
        {
            thread _unknown_5C8E();
            return 1;
        }

        var_3 = var_0;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( var_2 call [[ var_4 ]]() )
            {
                thread _unknown_5CAE();
                return 1;
            }
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
    var_clear_0
    return 0;
}

_ID39973()
{
    var_0 = [];
    var_0["riotshield"] = 1;
    var_0["claymore"] = 1;
    var_0["c4"] = 1;
    var_0["none"] = 1;
    var_1 = self _meth_831C();
    return _func_02F( var_0[var_1] );
}

_ID34351()
{

}
