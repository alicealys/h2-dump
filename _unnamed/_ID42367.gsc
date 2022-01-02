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
    _ID34351();
    setdynamicdvar( "breach_debug", "0" );
    setdynamicdvar( "breach_requires_friendlies_in_position", "1" );
    setdynamicdvar( "hostage_missionfail", "0" );
    setdynamicdvar( "use_improved_breaches", 1 );
    precacheitem( "usp_scripted" );
    precacheshader( "breach_icon" );
    precacheshader( "h2_overlays_vignette" );
    precacheshader( "h2_overlays_breachdust" );
    precachemodel( "weapon_parabolic_knife" );
    precachestring( &"SCRIPT_WAYPOINT_BREACH" );
    precachestring( &"SCRIPT_PLATFORM_BREACH_ACTIVATE" );
    precachestring( &"SCRIPT_PLATFORM_BREACH_ACTIVATE_KB" );
    precachestring( &"SCRIPT_BREACH_NEED_PLAYER" );
    precachestring( &"SCRIPT_BREACH_NEED_FRIENDLY" );
    precachestring( &"SCRIPT_BREACH_TOO_MANY_ENEMIES" );
    precachestring( &"SCRIPT_BREACH_ILLEGAL_WEAPON" );
    precachestring( &"SCRIPT_BREACH_PARTNER_NOT_READY" );
    precachestring( &"SCRIPT_BREACH_YOU_NOT_READY" );
    precachestring( &"SCRIPT_MISSIONFAIL_KILLEDHOSTAGE_THROUGH_ENEMY" );
    precachestring( &"SCRIPT_MISSIONFAIL_KILLEDHOSTAGE" );
    precachestring( &"SCRIPT_MISSIONFAIL_HOSTAGEEXECUTED" );
    precachestring( &"SCRIPT_MISSIONFAIL_HOSTAGEEXECUTED_USEMULTIDOOR" );
    precachestring( &"SCRIPT_BREACH_RELOADING" );
    level._ID1630 = [];

    if ( !_ID42237::_ID15272( "breach_door" ) )
        level._ID1426["breach_door"] = loadfx( "vfx/explosion/breach_door" );

    if ( !_ID42237::_ID15272( "breach_room" ) )
        level._ID1426["breach_room"] = loadfx( "vfx/explosion/breach_room" );

    if ( !_ID42237::_ID15272( "breach_room_residual" ) )
        level._ID1426["breach_room_residual"] = loadfx( "vfx/explosion/breach_room_residual" );

    if ( !_ID42237::_ID15272( "breach_knife_execution" ) )
        level._ID1426["breach_knife_execution"] = loadfx( "vfx/blood/blood_hit_knife" );

    _ID31296();
    _ID27229();
    _ID14916();
    _ID5997();
    _ID9179();
    var_0 = getentarray( "trigger_multiple_breachIcon", "classname" );
    _ID42237::_ID3350( var_0, ::_ID19246 );
    var_1 = getentarray( "breach_solid_delete", "targetname" );
    _ID42237::_ID3294( var_1, ::connectpaths );
    _ID42237::_ID3350( var_1, _ID42407::_ID31860 );
    var_1 = getentarray( "breach_delete", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID31860 );
    var_2 = getentarray( "breach_fx", "targetname" );
    _ID42237::_ID3350( var_2, ::_ID6029 );
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
    if ( !isdefined( self._ID70 ) )
        return;

    if ( _ID41760() && self.script_noteworthy == "manhandled" )
    {
        var_0 = getent( self.target, "targetname" );
        level._ID22888[self._ID13703] = var_0;
    }

    var_1 = self._ID31388;

    if ( isdefined( var_1 ) )
        level._ID23762[var_1] = 1;

    level._ID23763[self._ID70] = 1;
}

_ID20488( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID30895["generic"][var_0] ) )
        return 0;

    if ( !isdefined( level._ID30895["generic"][var_0][var_1] ) )
        return 0;

    return 1;
}

_ID20489( var_0, var_1 )
{
    if ( !isdefined( level._ID30895["generic"][var_0] ) )
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

    foreach ( var_7, var_3 in level._ID23762 )
    {
        foreach ( var_5 in var_0 )
            var_1[var_1.size] = var_5 + var_7;
    }

    var_0 = _ID42237::_ID3296( var_0, var_1 );

    foreach ( var_17, var_3 in level._ID23763 )
    {
        var_9 = 0;

        if ( isdefined( level._ID30910["generic"][var_17] ) )
        {
            if ( isarray( level._ID30910["generic"][var_17] ) )
            {
                foreach ( var_12, var_11 in level._ID30910["generic"][var_17] )
                {
                    if ( !_ID20488( var_17, var_12, var_11 ) )
                        var_9 = 1;
                }
            }
            else if ( !_ID20489( var_17, level._ID30910["generic"][var_17] ) )
                var_9 = 1;
        }

        foreach ( var_5 in var_0 )
        {
            var_14 = var_17 + var_5;

            if ( !isdefined( level._ID30910["generic"][var_14] ) )
                continue;

            if ( isarray( level._ID30910["generic"][var_14] ) )
            {
                foreach ( var_12, var_11 in level._ID30910["generic"][var_14] )
                {
                    if ( !_ID20488( var_14, var_12, var_11 ) )
                        var_9 = 1;
                }

                continue;
            }

            if ( !_ID20489( var_14, level._ID30910["generic"][var_14] ) )
                var_9 = 1;
        }

        if ( var_9 )
            level._ID23763[var_17] = undefined;
    }

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
    _ID1943( "hostage_chair_twitch1", ::_ID1616 );
    _ID1943( "hostage_chair_twitch2", ::_ID1616 );
    _ID1943( "hostage_chair_twitch3", ::_ID1616 );
    _ID1943( "hostage_chair_twitch4", ::_ID1616 );
    level._ID30910["generic"]["execution_shield_soldier"] = "execution_shield_soldier";
    level._ID30910["generic"]["execution_shield_hostage"] = "execution_shield_hostage";
    level._ID30910["generic"]["execution_shield_hostage_death"] = "execution_shield_hostage_death";
    level._ID30910["generic"]["execution_shield_hostage_survives"] = "execution_shield_hostage_survives";
    level._ID30910["generic"]["execution_shield_hostage_idle"][0] = "hostage_knees_idle";
    _ID1943( "execution_shield_soldier", ::_ID1623 );
    _ID1943( "execution_shield_hostage", ::_ID1620 );
    level._ID30910["generic"]["execution_knife_soldier"] = "execution_knife_soldier";
    level._ID30910["generic"]["execution_knife_hostage"] = "execution_knife_hostage";
    level._ID30910["generic"]["execution_knife_hostage_death"] = "execution_knife_hostage_death";
    level._ID30910["generic"]["execution_knife_hostage_idle"][0] = "hostage_knees_idle";
    level._ID30910["generic"]["execution_knife_hostage_manhandled"] = "h2_room2b_takedown_hostage1";
    _ID1943( "execution_knife_hostage", ::_ID1620 );
    _ID1943( "execution_knife_soldier", ::_ID1622 );
    level._ID30910["generic"]["execution_knife2_soldier"] = "execution_knife2_soldier";
    level._ID30910["generic"]["execution_knife2_hostage"] = "execution_knife2_hostage";
    level._ID30910["generic"]["execution_knife2_hostage_death"] = "execution_knife2_hostage_death";
    level._ID30910["generic"]["execution_knife2_hostage_idle"][0] = "hostage_stand_idle";
    _ID1943( "execution_knife2_hostage", ::_ID1620 );
    _ID1943( "execution_knife2_soldier", ::_ID1622 );
    level._ID30910["generic"]["execution_onknees_soldier"] = "execution_onknees_soldier";
    level._ID30910["generic"]["execution_onknees_hostage"] = "execution_onknees_hostage";
    level._ID30910["generic"]["execution_onknees_hostage_idle"][0] = "execution_onknees_hostage_survives";
    level._ID30910["generic"]["execution_onknees_hostage_death"] = "execution_onknees_hostage_death";
    level._ID30910["generic"]["execution_onknees_hostage_manhandled_guarded"] = "takedown_room1A_hostageB";
    level._ID30910["generic"]["execution_onknees_hostage_manhandled_guarded_idle"][0] = "takedown_room1A_hostageB_idle";
    _ID1943( "execution_onknees_soldier", ::_ID1623 );
    _ID1943( "execution_onknees_hostage", ::_ID1620 );
    level._ID30910["generic"]["execution_onknees2_soldier"] = "execution_onknees2_soldier";
    level._ID30910["generic"]["execution_onknees2_hostage"] = "execution_onknees2_hostage";
    level._ID30910["generic"]["execution_onknees2_hostage_survives"] = "execution_onknees2_hostage_survives";
    level._ID30910["generic"]["execution_onknees2_hostage_death"] = "execution_onknees2_hostage_death";
    level._ID30910["generic"]["execution_onknees2_hostage_manhandled_guarded"] = "h2_room2b_takedown_hostage2";
    level._ID30910["generic"]["execution_onknees2_hostage_manhandled_guarded_prepare_idleV2"][0] = "takedown_room2A_hostageB_start_idle";
    level._ID30910["generic"]["execution_onknees2_hostage_manhandled_guardedV2"] = "takedown_room2A_hostageB";
    level._ID30910["generic"]["execution_onknees2_hostage_manhandled_guarded_idleV2"][0] = "takedown_room2A_hostageB_end_idle";
    _ID1943( "execution_onknees2_soldier", ::_ID1623 );
    _ID1943( "execution_onknees2_hostage", ::_ID1621 );
    level._ID30910["generic"]["execution_slamwall_soldier"] = "execution_slamwall_soldier";
    level._ID30910["generic"]["execution_slamwall_hostage"] = "execution_slamwall_hostage";
    level._ID30910["generic"]["execution_slamwall_hostage_idle"][0] = "hostage_stand_idle";
    level._ID30910["generic"]["execution_slamwall_hostage_death"] = "execution_slamwall_hostage_death";
    level._ID30910["generic"]["execution_slamwall_hostage_manhandled_prepare"] = "takedown_room2A_hostageA_flee";
    level._ID30910["generic"]["execution_slamwall_hostage_manhandled_prepare_idle"][0] = "takedown_room2A_hostageA_hide_idle";
    level._ID30910["generic"]["execution_slamwall_hostage_manhandled"] = "takedown_room2A_hostageA";
    level._ID30910["generic"]["execution_slamwall_hostage_manhandled_idle"][0] = "takedown_room2A_hostageA_end_idle";
    _ID1943( "execution_slamwall_soldier", ::_ID1623 );
    _ID1943( "execution_slamwall_hostage", ::_ID1620 );
    level._ID30910["generic"]["execution_fightback_guy1_03"] = "execution_fightback_guy1_03";
    level._ID30910["generic"]["execution_fightback_guy2_03"] = "execution_fightback_guy2_03";
    level._ID30910["generic"]["execution_fightback_guy2_03_death"] = "execution_fightback_guy2_03_death";
    level._ID30910["generic"]["execution_fightback_guy2_03_survives"] = "execution_fightback_guy2_03_survives";
    _ID1943( "execution_fightback_guy1_03", ::_ID1623 );
    _ID1943( "execution_fightback_guy2_03", ::_ID1621 );
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
    _ID1943( "hostage_stand_react_front", ::_ID1625 );
    level._ID30910["generic"]["hostage_stand_fall"] = "hostage_stand_fall";
    level._ID30910["generic"]["hostage_stand_fall_idle"][0] = "hostage_knees_idle";
    level._ID30910["generic"]["hostage_stand_fall_idle"][1] = "hostage_knees_twitch";
    level._ID30910["generic"]["hostage_stand_fall_manhandled"] = "takedown_room1A_hostageA";
    level._ID30910["generic"]["hostage_stand_fall_manhandled_idle"][0] = "takedown_room1A_hostageA_idle";
    level._ID30910["generic"]["hostage_stand_fall_manhandledV2"] = "takedown_room1B_hostage";
    level._ID30910["generic"]["hostage_stand_fall_manhandled_idleV2"][0] = "takedown_room1B_hostage_idle";
    _ID1943( "hostage_stand_fall", ::_ID1625 );
    level._ID30910["generic"]["breach_react_knife_idle"] = "breach_react_knife_idle";
    level._ID30910["generic"]["breach_react_knife_charge"] = "breach_react_knife_charge";
    level._ID30910["generic"]["breach_react_knife_charge_death"] = "death_shotgun_back_v1";
    _ID1943( "breach_react_knife_charge", ::_ID1626 );
    level._ID30910["generic"]["breach_react_blowback_v1"] = "breach_react_blowback_v1";
    level._ID30910["generic"]["breach_react_blowback_v2"] = "breach_react_blowback_v1";
    level._ID30910["generic"]["breach_react_blowback_v3"] = "breach_react_blowback_v1";
    level._ID30910["generic"]["dying_crawl_back"] = "dying_crawl_back";
    _ID1943( "breach_react_blowback_v1", ::_ID1615 );
    _ID1943( "breach_react_blowback_v2", ::_ID1615 );
    level._ID30910["generic"]["breach_react_desk_v1"] = "breach_react_desk_v1";
    level._ID30910["generic"]["breach_react_desk_v2"] = "breach_react_desk_v2";
    level._ID30910["generic"]["breach_react_desk_v3"] = "breach_react_desk_v3";
    level._ID30910["generic"]["breach_react_desk_v4"] = "breach_react_desk_v4";
    level._ID30910["generic"]["breach_react_desk_v5"] = "breach_react_desk_v5";
    level._ID30910["generic"]["breach_react_desk_v6"] = "breach_react_desk_v6";
    level._ID30910["generic"]["breach_react_desk_v7"] = "breach_react_desk_v7";
    _ID1943( "breach_react_desk_v7", ::_ID1619 );
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
    _ID1943( "breach_chair_hide_reaction_v1", ::_ID1618 );
    _ID1943( "breach_chair_hide_reaction_v2", ::_ID1617 );
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
    var_2._ID40005["origin"] = self.origin;
    var_2._ID40005["angles"] = self.angles;
    var_2._ID40005["fxid"] = var_0;
    var_2._ID40005["delay"] = 0;
    var_2._ID40005["exploder"] = "breach_" + var_1;
    var_2._ID40005["soundalias"] = "nil";
}

_ID9179()
{
    var_0 = [];
    var_1 = getentarray( "breach_left_org", "targetname" );
    var_2 = getentarray( "breach_right_org", "targetname" );
    var_3 = getentarray( "breach_enemy_spawner", "targetname" );
    var_4 = getentarray( "breach_hostage_spawner", "targetname" );
    var_5 = getentarray( "breach_friendlyenemy_spawner", "targetname" );
    var_6 = getentarray( "breach_friendlyhostage_spawner", "targetname" );
    var_7 = getentarray( "breach_coopenemy_spawner", "targetname" );
    var_8 = getentarray( "breach_coophostage_spawner", "targetname" );
    var_9 = getentarray( "breach_solid", "targetname" );
    var_10 = getentarray( "breach_door_volume", "targetname" );
    var_11 = getentarray( "breach_safe_volume", "targetname" );
    var_12 = getentarray( "trigger_use_breach", "classname" );
    var_13 = getentarray( "trigger_multiple_breachIcon", "classname" );
    var_14 = getentarray( "trigger_use_breach", "classname" );
    var_15 = getentarray( "breach_damage_trigger", "targetname" );
    level._ID30910 = undefined;

    foreach ( var_17 in var_1 )
    {
        var_18 = var_17._ID31433;
        var_19 = "wood";

        if ( isdefined( var_17._ID31434 ) )
        {
            switch ( var_17._ID31434 )
            {
                case "none":
                case "wood":
                case "metal":
                case "oilrig":
                case "estate_wood":
                case "estate_wood_backwards":
                case "caves_wood":
                case "payback_wood":
                    var_19 = var_17._ID31434;
                    break;
            }

            endswitch( 9 )  case "payback_wood" loc_1F93 case "caves_wood" loc_1F93 case "estate_wood_backwards" loc_1F93 case "estate_wood" loc_1F93 case "oilrig" loc_1F93 case "metal" loc_1F93 case "wood" loc_1F93 case "none" loc_1F93 default loc_1F9F
        }

        var_20 = spawnstruct();
        var_20._ID22142 = var_17;
        var_20._ID11632 = var_19;
        var_20._ID3189 = _ID42237::_ID37527( isdefined( var_17._ID47056 ), var_17._ID47056, "" );

        if ( isdefined( var_17._ID46970 ) )
            var_20._ID43888 = strtok( var_17._ID46970, "," );
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
    }

    foreach ( var_17 in var_2 )
    {
        var_18 = var_17._ID31433;
        var_0[var_18]._ID29990 = var_17;
        var_23 = spawn( "script_origin", var_17.origin );
        var_23.angles = var_17.angles;
        var_20 = spawnstruct();
        var_20._ID337 = var_23;
        var_20._ID41911 = -90;
        var_20 _ID42407::_ID38694();
        var_0[var_18]._ID14915 = var_23;
    }

    foreach ( var_26 in var_3 )
        var_0 = var_26 _ID6063( var_0, "enemy" );

    foreach ( var_26 in var_4 )
        var_0 = var_26 _ID6063( var_0, "hostage" );

    foreach ( var_26 in var_5 )
        var_0 = var_26 _ID6063( var_0, "friendlyenemy" );

    foreach ( var_26 in var_6 )
        var_0 = var_26 _ID6063( var_0, "friendlyhostage" );

    foreach ( var_26 in var_7 )
        var_0 = var_26 _ID6063( var_0, "coopenemy" );

    foreach ( var_26 in var_8 )
        var_0 = var_26 _ID6063( var_0, "coophostage" );

    foreach ( var_39 in var_13 )
    {
        var_18 = var_39._ID31433;
        var_0[var_18]._ID22620[var_0[var_18]._ID22620.size] = var_39;
        var_40 = getent( var_39.target, "targetname" );
        var_39._ID6047 = var_40.origin;
        var_41 = getent( var_40.target, "targetname" );
        var_41._ID6073 = 0;
        var_0[var_18]._ID30176 = var_41;
        var_40 thread _ID6038( var_39, var_18, var_41 );
        var_42 = var_41._ID31190;
        _ID42237::_ID14400( var_42 );
    }

    foreach ( var_39 in var_14 )
    {
        var_18 = var_39._ID31433;
        var_45 = var_0[var_18]._ID29990.angles;
        var_46 = angleclamp( var_45[1] - 90 );
        var_39 usetriggerrequirelookat( var_46, 50 );
        var_0[var_18]._ID1224 = var_39;

        if ( isdefined( var_39._ID31079 ) )
            var_39 thread _ID6031();
    }

    foreach ( var_49 in var_10 )
    {
        var_18 = var_49._ID31433;
        var_0[var_18]._ID11612 = var_49;
    }

    foreach ( var_49 in var_11 )
    {
        var_18 = var_49._ID31433;
        var_0[var_18]._ID30545 = var_49;
    }

    foreach ( var_54 in var_9 )
    {
        var_18 = var_54._ID31433;
        var_0[var_18]._ID26320[var_0[var_18]._ID26320.size] = var_54;
    }

    foreach ( var_18, var_57 in var_0 )
        level thread _ID34368( var_57, var_18 );

    foreach ( var_39 in var_15 )
    {
        var_18 = var_39._ID31433;
        var_39 thread _ID34364( var_18 );
    }

    level._ID6032 = var_0;
}

_ID25325( var_0, var_1, var_2, var_3, var_4 )
{
    objective_setpointertextoverride( var_0, &"SCRIPT_WAYPOINT_BREACH" );
    objective_current( var_0, ( 0, 0, 0 ) );
    var_5 = [];

    if ( isdefined( var_1 ) )
        var_5[var_5.size] = var_1;

    if ( isdefined( var_2 ) )
        var_5[var_5.size] = var_2;

    if ( isdefined( var_3 ) )
        var_5[var_5.size] = var_3;

    if ( isdefined( var_4 ) )
        var_5[var_5.size] = var_4;

    var_6 = 0;

    foreach ( var_8 in var_5 )
    {
        var_9 = level._ID6032[var_8]._ID22142;

        if ( !isdefined( var_9 ) )
            return;

        var_10 = anglestoright( var_9.angles );
        var_11 = var_9.origin + var_10 * -22.5 + ( 0, 0, 56 );
        objective_additionalposition( var_0, var_6, var_11 );
        var_6++;
    }
}

_ID3438( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        var_3 = 0;

        foreach ( var_9, var_5 in level._ID6032 )
        {
            foreach ( var_7 in var_5._ID22620 )
            {
                if ( distance( var_2.origin, var_7._ID6047 ) > 80 )
                    continue;

                var_2._ID31433 = var_9;
                var_3 = 1;
                break;
            }

            if ( var_3 )
                break;
        }
    }
}

_ID15588( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
        var_1[var_1.size] = var_3._ID31433;

    return var_1;
}

_ID34364( var_0 )
{
    level waittill( "breaching_number_" + var_0 );
    wait 3;
    var_1 = getaiarray();
    var_1 = _ID42407::_ID3317( var_1, level._ID805 );

    foreach ( var_3 in var_1 )
    {
        if ( var_3 istouching( self ) )
            return;
    }

    radiusdamage( self.origin, self.radius, 500, 500 );
    self delete();
}

_ID19246()
{
    self._ID31190 = "breach_door_icon_" + self._ID31433;
    level thread _ID42401::_ID38837( self );
}

_ID6038( var_0, var_1, var_2 )
{
    thread _ID6005( var_2 );
    var_3 = newhudelem();
    var_3 setshader( "breach_icon", 1, 1 );
    var_3.alpha = 0;
    var_3.color = ( 1, 1, 1 );
    var_3.x = self.origin[0];
    var_3.y = self.origin[1];
    var_3.z = self.origin[2];
    var_3 setwaypoint( 1, 1 );
    var_4 = spawn( "script_model", self.origin );
    var_4 setmodel( "mil_frame_charge" );
    var_4 hidepart( "j_frame_charge" );
    wait 0.05;
    var_5 = "breach_door_icon_" + var_1;
    _ID42237::_ID14413( var_5 );

    while ( !var_2._ID6073 )
        wait 0.05;

    var_3 destroy();
    var_4 delete();
}

_ID6063( var_0, var_1 )
{
    var_2 = self._ID31433;
    var_3 = 0;

    if ( isdefined( self._ID31435 ) )
    {
        if ( var_1 == "enemy" || var_1 == "hostage" )
            var_3 = self._ID31435;
    }

    if ( !isdefined( var_0[var_2]._ID35280[var_1][var_3] ) )
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

    if ( isdefined( var_0._ID35280["friendlyenemy"][0] ) )
    {
        var_10 = var_0._ID35280["friendlyenemy"][0];
        var_0._ID35280["friendlyenemy"] = var_10;
    }

    if ( isdefined( var_0._ID35280["friendlyhostage"][0] ) )
    {
        var_11 = var_0._ID35280["friendlyhostage"][0];
        var_0._ID35280["friendlyhostage"] = var_11;
    }

    if ( isdefined( var_0._ID35280["coopenemy"][0] ) )
    {
        var_12 = var_0._ID35280["coopenemy"][0];
        var_0._ID35280["coopenemy"] = var_12;
    }

    if ( isdefined( var_0._ID35280["coophostage"][0] ) )
    {
        var_13 = var_0._ID35280["coophostage"][0];
        var_0._ID35280["coophostage"] = var_13;
    }

    var_14 = spawnstruct();
    var_14._ID337 = var_2;
    var_14._ID409 = 5;
    var_14._ID893 = 6;
    var_14._ID41911 = -90;
    var_14 _ID42407::_ID38694();
    var_14 = spawnstruct();
    var_14._ID337 = var_3;
    var_14._ID893 = -2;
    var_14._ID41911 = 90;
    var_14 _ID42407::_ID38694();
    var_15 = [];

    foreach ( var_18, var_17 in var_4 )
        var_15[var_18] = var_18;

    foreach ( var_18, var_17 in var_5 )
        var_15[var_18] = var_18;

    if ( var_15.size )
    {
        var_20 = _ID42237::_ID28945( var_15 );

        if ( isdefined( var_4[var_20] ) )
            var_4 = var_4[var_20];
        else
            var_4 = [];

        if ( isdefined( var_5[var_20] ) )
            var_5 = var_5[var_20];
        else
            var_5 = [];
    }

    var_0._ID35280["enemy"] = var_4;
    var_0._ID35280["hostage"] = var_5;
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_ID6015 );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, ::_ID6037 );
    _ID42237::_ID3350( var_10, _ID42407::_ID1947, ::_ID6015 );
    _ID42237::_ID3350( var_11, _ID42407::_ID1947, ::_ID6037 );
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_ID6015 );
    _ID42237::_ID3350( var_13, _ID42407::_ID1947, ::_ID6037 );
    var_6 thread _ID42237::_ID44574( level.player, &"SCRIPT_PLATFORM_BREACH_ACTIVATE", &"SCRIPT_PLATFORM_BREACH_ACTIVATE_KB", "trigger" );

    if ( !isdefined( level._ID6069 ) )
        level._ID6069 = [];

    level._ID6069 = _ID42237::_ID3293( level._ID6069, var_6 );
    var_21 = "breach_door_charge";
    var_22 = undefined;

    switch ( var_0._ID11632 )
    {
        case "metal":
            var_22 = "breach_door_model_metal";
            break;
        case "estate_wood":
            var_22 = "breach_door_model_estate";
            break;
        case "estate_wood_backwards":
            var_22 = "breach_door_model_estate";
            break;
        case "caves_wood":
            var_22 = "breach_door_model_caves";
            break;
        case "payback_wood":
            var_22 = "breach_door_model_payback";
            var_21 = "breach_door_charge_payback";
            break;
        case "oilrig":
            var_22 = "breach_door_model_oilrig";
            break;
        case "none":
        case "wood":
            var_22 = "breach_door_model";
            break;
        default:
            break;
    }

    var_23 = _ID42407::_ID35028( var_22 );

    if ( var_0._ID11632 == "none" || var_0._ID11632 == "estate_wood_backwards" )
        var_23 hide();

    level._ID6008 = [];
    level._ID6008[var_1] = var_23;
    var_24 = _ID42407::_ID35028( var_21 );
    var_24 _ID42237::_ID18529();
    var_2._ID30820 = [];
    var_2 _ID1937( "active_breacher_rig" );
    var_25 = var_2._ID30820["active_breacher_rig"];
    var_25 hide();
    var_26 = undefined;

    if ( _ID42407::_ID20495() )
    {
        var_2 _ID1866();
        var_26 = var_2._ID30820["passive_breacher_rig"];
        var_26 hide();
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

    var_2 _ID40846( var_0 );

    foreach ( var_28 in var_2._ID30820 )
        var_28 delete();

    if ( isdefined( var_6 ) )
        var_6 delete();

    if ( isdefined( var_23 ) )
        var_23 delete();

    if ( isdefined( var_24 ) )
        var_24 delete();

    if ( isdefined( var_2 ) )
        var_2 delete();

    if ( isdefined( var_3 ) )
        var_3 delete();
}

_ID6059( var_0 )
{
    if ( !isdefined( level._ID34228 ) )
        return 0;

    if ( !isdefined( level._ID34228[var_0] ) )
        return 0;

    return 1;
}

_ID8647( var_0, var_1 )
{
    var_2 = [];
    var_2[0] = var_0;

    if ( isdefined( var_0._ID31079 ) )
        var_2 = _ID15688( var_0._ID31079 );

    foreach ( var_4 in var_2 )
    {
        if ( var_1 istouching( var_4 ) )
            return 1;
    }

    return 0;
}

_ID15688( var_0 )
{
    var_1 = [];
    var_2 = getentarray( "breach_door_volume", "targetname" );

    foreach ( var_4 in var_2 )
    {
        if ( isdefined( var_4._ID31079 ) && var_4._ID31079 == var_0 )
            var_1[var_1.size] = var_4;
    }

    return var_1;
}

_ID6048( var_0, var_1, var_2 )
{
    if ( _ID42407::_ID20495() )
    {
        var_3 = _ID42407::_ID15882( var_0 );

        if ( var_3 _ID42407::_ID13023( "laststand_downed" ) && var_3 _ID42407::_ID13019( "laststand_downed" ) )
            return 0;

        if ( _ID8647( var_2, var_3 ) )
            return 1;
        else
            return 0;
    }

    if ( var_1.size == 0 )
        return 1;

    if ( !_ID30175( var_2 ) )
        return 1;

    if ( !_ID6023( var_2, 1 ) )
    {
        if ( getdvar( "breach_requires_friendlies_in_position" ) == "1" )
        {
            if ( !_ID6083( var_1, var_2 ) )
                return 0;
        }
    }

    return 1;
}

_ID40846( var_0 )
{
    var_1 = var_0._ID1224;

    if ( !isdefined( var_1 ) )
        return;

    var_2 = var_0._ID11612;
    var_1 endon( "death" );

    for (;;)
    {
        var_1 waittill( "trigger",  var_3, var_4  );

        if ( gettime() == level._ID6050 )
            var_4 = level._ID6049;

        var_5 = isdefined( var_4 );

        if ( !var_0._ID12560 )
            return;

        if ( isalive( var_3 ) && !var_5 )
        {
            if ( _ID6021() )
            {
                setsaveddvar( "r_progressIconRatio", 0 );
                continue;
            }
        }

        if ( isdefined( level._ID48534 ) && level._ID48534 )
            setsaveddvar( "compass", "0" );

        if ( isdefined( var_0._ID30545 ) && !_ID42407::_ID20614() )
        {
            if ( isplayernumber( var_3 ) && isalive( var_3 ) )
            {
                var_6 = var_0._ID30545 _ID42407::_ID15547( "axis" );

                foreach ( var_8 in var_6 )
                {
                    if ( isdefined( var_8.ignore_safe_volume ) && var_8.ignore_safe_volume )
                        var_6 = _ID42237::_ID3321( var_6, var_8 );
                }

                if ( var_6.size )
                {
                    thread _ID6065();
                    setsaveddvar( "r_progressIconRatio", 0 );
                    continue;
                }
            }
        }

        var_10 = _ID15569( var_2 );

        if ( isplayernumber( var_3 ) && isalive( var_3 ) )
        {
            if ( _ID6059( var_1._ID31433 ) )
                break;

            if ( _ID6048( var_3, var_10, var_2 ) )
            {
                if ( _ID27266( var_0, var_3 ) )
                    break;
            }
            else
                thread _ID6026();

            continue;
        }

        if ( var_10.size )
        {
            _ID14910( var_0, var_10 );
            break;
            continue;
        }

        _ID6088( var_0 );
        break;
    }
}

_ID6083( var_0, var_1 )
{
    var_2 = 0;
    var_3 = _ID15922( var_1 );

    foreach ( var_5 in var_0 )
    {
        if ( isdefined( var_3 ) )
        {
            if ( var_5 _ID16981( var_3 ) )
                continue;
        }

        if ( !var_5 _ID14924() )
            continue;

        var_2++;
    }

    if ( var_2 >= 2 )
        return 1;

    return 0;
}

_ID14924()
{
    if ( _ID42407::_ID27291( self ) )
        return 0;

    if ( distance( level.player.origin, self.origin ) < 96 )
        return 0;

    return 1;
}

_ID6026()
{
    if ( _ID42407::_ID20495() )
        thread _ID6036( &"SCRIPT_BREACH_NEED_PLAYER" );
    else
        thread _ID6036( &"SCRIPT_BREACH_NEED_FRIENDLY" );
}

_ID6065()
{
    thread _ID6036( &"SCRIPT_BREACH_TOO_MANY_ENEMIES" );
}

_ID6053()
{
    thread _ID6036( &"SCRIPT_BREACH_RELOADING" );
}

_ID6000()
{
    thread _ID6036( &"SCRIPT_BREACH_ILLEGAL_WEAPON" );
}

_ID6045()
{
    if ( _ID42407::_ID20495() )
    {
        thread _ID6036( &"SCRIPT_BREACH_PARTNER_NOT_READY" );
        return;
    }

    thread _ID6036( &"SCRIPT_BREACH_YOU_NOT_READY" );
}

_ID6036( var_0 )
{
    level notify( "breach_hint_cleanup" );
    level endon( "breach_hint_cleanup" );
    var_1 = 20;

    if ( _func_145() )
        var_1 = -23;

    thread _ID42407::_ID18611( var_0, 2, var_1 );
    thread _ID6035();
}

_ID6035()
{
    level notify( "breach_hint_cleanup" );
    level endon( "breach_hint_cleanup" );

    foreach ( var_1 in level._ID6069 )
    {
        if ( isdefined( var_1 ) )
            var_1 sethintstring( "" );
    }

    level _ID42237::_ID41123( "breaching", 2 );
    _ID42407::_ID18638();

    foreach ( var_1 in level._ID6069 )
    {
        if ( isdefined( var_1 ) )
        {
            var_1 thread _ID42237::_ID44574( level.player, &"SCRIPT_PLATFORM_BREACH_ACTIVATE", &"SCRIPT_PLATFORM_BREACH_ACTIVATE_KB", "trigger" );
            var_1 setcursorhint( "HINT_ACTIVATE" );
        }
    }
}

_ID30175( var_0 )
{
    if ( isdefined( var_0._ID31079 ) )
        return 1;

    return 0;
}

_ID6025()
{
    if ( !isdefined( level._ID6082 ) )
        return;

    level._ID6084 = 1;

    foreach ( var_1 in level._ID6082 )
    {
        var_1._ID17403 = var_1.grenadeammo;
        var_1.grenadeammo = 0;
    }
}

_ID6024()
{
    if ( !isdefined( level._ID6082 ) )
        return;

    if ( !isdefined( level._ID6084 ) )
        return;

    foreach ( var_1 in level._ID6082 )
    {
        var_1.grenadeammo = var_1._ID17403;
        var_1._ID17403 = undefined;
    }

    level._ID6084 = undefined;
}

_ID6023( var_0, var_1 )
{
    var_2 = var_0._ID31079;
    var_3 = _ID15688( var_0._ID31079 );
    var_3 = _ID42237::_ID3321( var_3, var_0 );
    var_4 = var_3[0];

    foreach ( var_6 in level._ID6082 )
    {
        if ( isdefined( var_1 ) && var_1 )
        {
            if ( var_6 _ID16981( var_4 ) )
            {
                if ( var_6 _ID14924() )
                    return 1;
            }
        }

        if ( var_6 istouching( var_4 ) )
            return 1;
    }

    return 0;
}

_ID1866()
{
    _ID1937( "passive_breacher_rig" );
    _ID1937( "active_breacher_3rd_person" );
    _ID1937( "passive_breacher_3rd_person" );
}

_ID1937( var_0 )
{
    self._ID30820[var_0] = _ID42407::_ID35028( var_0 );
    self._ID30820[var_0] hide();
}

_ID32428( var_0, var_1 )
{
    var_1._ID6073 = 1;
    var_2 = _ID15589( var_0._ID31079 );

    if ( isdefined( var_0._ID31079 ) )
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
    _ID32428( var_1, var_2 );
    _ID42237::_ID3294( var_3, ::connectpaths );
    _ID42237::_ID3350( var_3, _ID42407::_ID31860 );
    var_6 = spawnstruct();
    var_6._ID337 = var_4;
    var_6._ID409 = 4;
    var_6._ID893 = 10;
    var_6._ID41911 = -170;
    var_6 _ID42407::_ID38694();
    var_5 delete();

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
        _ID42237::_ID3294( var_7, ::stalingradspawn );

    if ( var_8.size )
        _ID42237::_ID3294( var_8, ::stalingradspawn );
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
    _ID32428( var_2, var_4 );
    var_12 = var_0._ID14915;
    var_13 = _ID15922( var_3 );
    var_14 = getdvar( "breach_requires_friendlies_in_position" ) == "1";

    if ( !var_14 )
    {
        if ( isdefined( var_13 ) && _ID6023( var_13 ) )
        {
            foreach ( var_16 in var_1 )
            {
                if ( !var_16 istouching( var_3 ) )
                    var_1 = _ID42237::_ID3321( var_1, var_16 );
            }

            var_14 = 1;
        }
    }

    if ( var_14 )
        var_18 = _ID42237::_ID16182( var_12.origin, var_1 );
    else
        var_18 = _ID16022( var_12.origin, var_3, var_1, var_13 );

    var_1 = _ID42237::_ID3321( var_1, var_18 );

    if ( var_7.size )
        level._ID6074 = _ID42407::_ID3339( var_7, 1 );

    if ( var_8.size )
        _ID42237::_ID3294( var_8, ::stalingradspawn );

    _ID42237::_ID3294( var_9, ::connectpaths );
    _ID42237::_ID3350( var_9, _ID42407::_ID31860 );
    var_19 = "breach_player_anim";
    var_20 = 0;

    if ( getdvarint( "use_improved_breaches", 0 ) )
    {
        var_21 = getanimlength( var_11 _ID42407::_ID16120( var_19 ) );
        var_22 = getnotetracktimes( var_11 _ID42407::_ID16120( var_19 ), "explode" )[0];
        var_23 = var_21 * var_22;
        var_19 = level._ID49249;
        var_11._ID3189 = "h2_active_breacher_rig";
        var_24 = getanimlength( var_11 _ID42407::_ID16120( var_19 ) );
        var_22 = getnotetracktimes( var_11 _ID42407::_ID16120( var_19 ), "explode" )[0];
        var_25 = var_24 * var_22;
        var_20 = var_25 - var_23;
    }

    var_18 thread _ID14918( 1, var_12, var_4, var_20 );
    var_4.breaching_friendly1 = var_18;

    if ( var_1.size )
    {
        if ( var_14 )
            var_26 = _ID42237::_ID16182( var_12.origin, var_1 );
        else
            var_26 = _ID16022( var_12.origin, var_3, var_1, var_13 );

        if ( isdefined( var_26 ) )
        {
            var_26 thread _ID14918( 2, var_12, var_4, var_20 );
            var_4.breaching_friendly2 = var_26;
            jump loc_3626
        }
    }

    level notify( "slowmo_breach_friendlies_assigned" );
    wait 1;
    _ID6025();
    _ID42259::_ID3111( var_11, var_19 );
}

_ID15922( var_0 )
{
    var_1 = undefined;
    var_2 = _ID15758( var_0 );

    foreach ( var_4 in var_2 )
    {
        if ( level.player istouching( var_4 ) )
        {
            var_1 = var_4;
            break;
        }
    }

    return var_1;
}

_ID16022( var_0, var_1, var_2, var_3 )
{
    var_4 = [];

    foreach ( var_6 in var_2 )
    {
        if ( isdefined( var_3 ) )
        {
            if ( var_6 _ID16981( var_3 ) )
                continue;
        }

        if ( !var_6 _ID14924() )
            continue;

        var_4[var_4.size] = var_6;
    }

    if ( !var_4.size )
        return undefined;

    var_4 = _ID42237::_ID15566( var_0, var_4 );
    var_8 = var_4[0];

    foreach ( var_6 in var_4 )
    {
        if ( var_6 _ID16981( var_1 ) )
        {
            var_8 = var_6;
            break;
        }
    }

    return var_8;
}

_ID16981( var_0 )
{
    if ( isdefined( self.goalpos ) )
    {
        if ( _ID26011( self.goalpos + ( 0, 0, 40 ), var_0 ) )
            return 1;
    }

    return 0;
}

_ID26011( var_0, var_1 )
{
    var_2 = spawn( "script_origin", var_0 );
    var_3 = 0;

    if ( var_2 istouching( var_1 ) )
        var_3 = 1;

    var_2 delete();
    return var_3;
}

_ID15758( var_0 )
{
    var_1 = [];
    var_1[0] = var_0;

    if ( isdefined( var_0._ID31079 ) )
    {
        foreach ( var_3 in level._ID6032 )
        {
            if ( !isdefined( var_3._ID11612 ) )
                continue;

            if ( var_3._ID11612 == var_0 )
                continue;

            if ( !isdefined( var_3._ID11612._ID31079 ) )
                continue;

            if ( isdefined( var_3._ID11612._ID31079 ) && var_3._ID11612._ID31079 == var_0._ID31079 )
                var_1[var_1.size] = var_3._ID11612;
        }
    }

    return var_1;
}

_ID34959( var_0, var_1 )
{
    var_2 = var_1["active"];
    var_3 = anglestoright( self.angles );
    var_4 = vectornormalize( var_2.origin - var_0._ID1224.origin );
    var_5 = vectordot( var_3, var_4 );

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
    var_4 = getdvarint( "use_improved_breaches", 0 );
    var_5 = undefined;
    var_6 = level._ID53309;
    var_7 = "breach_player_anim";

    if ( var_4 )
    {
        var_3 delete();
        var_0._ID22142 _ID1937( "h2_active_breacher_rig" );
        var_3 = self._ID30820["h2_active_breacher_rig"];
        self._ID30820["active_breacher_rig"] = undefined;
        var_8 = getstartorigin( self.origin, self.angles, level._ID30895["ally"][level._ID49275[0]] );
        var_9 = getstartangles( self.origin, self.angles, level._ID30895["ally"][level._ID49275[0]] );
        var_10 = getaiarray( "allies" );
        var_11 = getdvar( "force_breach_anim", "" );
        var_12 = _ID42237::_ID37527( var_11 == "", var_0._ID3189, var_11 );

        if ( isdefined( level._ID43339[var_12] ) )
            var_12 = "";

        foreach ( var_14 in var_10 )
        {
            if ( isdefined( var_14._ID47852 ) && var_14._ID47852 )
                continue;

            if ( !isdefined( level._ID50520[var_12] ) )
            {
                if ( distance2d( var_8, var_14.origin ) < 10 && vectordot( anglestoforward( var_9 ), anglestoforward( var_14.angles ) ) > 0.95 )
                {
                    var_5 = var_14;
                    var_6 = level._ID49275;
                    break;
                }

                continue;
            }

            if ( isdefined( var_14._ID31217 ) && level._ID50520[var_12] == var_14._ID31217 )
            {
                var_5 = var_14;
                break;
            }
        }

        if ( !isdefined( level._ID30895["h2_active_breacher_rig"][var_12] ) || !isdefined( var_5 ) && isdefined( level._ID50543[var_12] ) )
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
        var_18 = _ID6043( var_2["passive"] );

        if ( var_18 == var_0 )
        {
            var_16 = 1;
            var_18._ID30176._ID18173 = 1;
            var_2 = _ID34959( var_0, var_2 );
        }
        else
        {
            level._ID6049 = var_2["passive"];
            level._ID6050 = gettime();
            var_18._ID1224 notify( "trigger",  var_2["passive"], "passive"  );
        }
    }

    var_19 = _ID42237::_ID37527( var_4, int( getanimlength( level._ID30895[var_3._ID3189][var_7] ) * 1000 ), 0 );
    var_2["active"] forceviewmodelanimation( var_19 );

    if ( var_16 )
        var_2["passive"] disableweapons();

    foreach ( var_1 in var_2 )
    {
        if ( !isdefined( level._ID34365 ) )
        {
            var_1 enableinvulnerability();
            var_1 disableweaponswitch();
            var_1 disableoffhandweapons();
            var_1 allowcrouch( 0 );
            var_1 allowprone( 0 );
            var_1 _meth_830f( 0 );
            var_1 allowjump( 0 );
        }

        var_1 _ID42237::_ID1417();

        if ( !isdefined( var_1._ID28340 ) )
            var_1._ID28340 = var_1 getcurrentweapon();
    }

    level notify( "breaching" );
    level notify( "breaching_number_" + self._ID31433 );
    setsaveddvar( "objectiveHide", 1 );
    var_22 = var_0._ID30176;
    _ID32428( var_0._ID1224, var_22 );
    var_23 = undefined;
    var_24 = isdefined( level._ID18178[var_2["active"]._ID28340] );

    if ( var_4 )
    {
        var_25 = getanimlength( level._ID30895["h2_active_breacher_rig"][var_7] );
        var_26 = getnotetracktimes( level._ID30895["h2_active_breacher_rig"][var_7], "place" );
        var_27 = getnotetracktimes( level._ID30895["h2_active_breacher_rig"][var_7], "explode" );
        level._ID34367 = var_27[0] * var_25;
        _ID53163();

        if ( !isdefined( level._ID50486 ) )
            level._ID50486 = 0;

        var_23 = var_26[0] * var_25 - 0.16 + level._ID50486;
    }
    else if ( var_24 )
    {
        level._ID34367 = 2.25;
        _ID32282();
        var_23 = 0.5;
    }
    else
    {
        level._ID34367 = 2.15;
        _ID32281();
        var_23 = 0.2;
    }

    var_2["active"] thread _ID26809( var_23 );

    if ( _ID42407::_ID20495() )
    {
        if ( !isdefined( level._ID27571 ) )
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
    _ID42237::_ID3294( var_28, ::stalingradspawn );
    var_29 = var_0._ID35280["hostage"];
    _ID42237::_ID3294( var_29, ::stalingradspawn );
    var_2["active"] playerlinktoblend( var_3, "tag_player", 0.2, 0.1, 0.1 );

    if ( !var_4 && isdefined( var_2["active"]._ID11563 ) )
        thread _ID42407::_ID25888( 0.2, var_3, "tag_player", 45, 45, 90, 45 );
    else
        thread _ID49769( var_3 );

    if ( var_16 )
    {
        var_2["passive"] playerlinktoblend( var_17, "tag_player", 0.2, 0.1, 0.1 );

        if ( !var_4 && isdefined( var_2["passive"]._ID11563 ) )
            thread _ID42407::_ID25888( 0.2, var_17, "tag_player", 45, 45, 90, 45 );
    }

    var_2["active"] thread _ID37150( var_4 );

    if ( !var_24 )
        wait 0.05;

    var_30 = self._ID7314;

    if ( var_4 )
    {
        var_30 delete();
        level._ID30904["breach_door_charge"] = level._ID49462[var_7];
        var_30 = _ID42407::_ID35028( "breach_door_charge" );
        self._ID7314 = var_30;
        self._ID43888 = [];

        foreach ( var_32 in var_0._ID43888 )
        {
            var_33 = _ID42407::_ID35028( "breach_door_charge" );
            self._ID43888[self._ID43888.size] = var_33;
            thread _ID42259::_ID3111( var_33, var_32 );
            var_33 show();
        }
    }

    var_35 = _ID42237::_ID37527( var_4, var_7, "breach" );
    thread _ID42259::_ID3111( var_30, var_35 );

    if ( var_35 == "breach_price" || var_35 == "breach_price2" || var_35 == "breach_inspect" )
        var_30 show();
    else
    {
        var_30 hide();
        var_30 _ID42237::_ID10192( 0.2, ::show );
    }

    var_2["active"] thread _ID29860();
    var_36 = 0;

    if ( var_16 )
    {
        thread _ID42259::_ID3111( var_17, "breach_player_anim" );
        var_2["passive"]._ID3189 = "passive_breacher_3rd_person";
        var_2["passive"] thread _ID42259::_ID3111( var_2["passive"], "breach_player_anim" );
        var_2["passive"] thread _ID12510();
        var_2["passive"] thread _ID29860();
        var_2["active"]._ID3189 = "active_breacher_3rd_person";
        var_2["active"] thread _ID42259::_ID3111( var_2["active"], "breach_player_anim" );
    }

    var_37 = "";

    if ( var_4 )
    {
        _ID42407::_ID10226( 0.2, ::_ID51930, var_3 );

        if ( isdefined( var_5 ) && isdefined( level._ID30895["ally"][var_7] ) )
        {
            var_5 notify( "start_breach" );
            var_37 = var_5._ID3189;
            var_5._ID3189 = "ally";
            thread _ID42259::_ID3111( var_5, var_7 );
        }
    }

    _ID42259::_ID3111( var_3, var_7 );

    if ( isdefined( var_5 ) )
        var_5._ID3189 = var_37;

    level notify( "sp_slowmo_breachanim_done" );
    thread _ID14407( var_22 );
    var_38 = var_0._ID26320;
    _ID42237::_ID3294( var_38, ::connectpaths );
    _ID42237::_ID3350( var_38, _ID42407::_ID31860 );

    foreach ( var_1 in var_2 )
    {
        if ( isdefined( var_1._ID11563 ) )
        {
            var_36 = 1;
            _ID35364( var_3 );
        }
        else
            var_1 unlink();

        var_1 show();
        var_3 hide();
    }

    if ( var_36 )
        level waittill( "breach_concludes" );

    var_2["active"] _meth_80f9();

    foreach ( var_1 in var_2 )
    {
        if ( !isdefined( level._ID34365 ) )
        {
            var_1 disableinvulnerability();
            var_1 enableweaponswitch();
            var_1 enableoffhandweapons();
            var_1 allowcrouch( 1 );
            var_1 allowprone( 1 );
            var_1 _meth_830f( 1 );
            var_1 allowjump( 1 );
        }

        var_1 _ID42237::_ID1431();
    }

    return 1;
}

_ID48136( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    wait(var_0);
    level.player lerpviewangleclamp( var_1, var_2, var_3, var_4, var_5, var_6, var_7 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    wait(var_1);
}

_ID49769( var_0 )
{
    if ( isdefined( level._ID49249 ) )
    {
        var_1 = 90;
        var_2 = 90;
        var_3 = 90;
        var_4 = 45;
        var_5 = level._ID49249;
        thread _ID42407::_ID25888( 0.2, var_0, "tag_player", 0, 0, 0, 0 );

        switch ( var_5 )
        {
            case "breach_inspect":
                thread _ID48136( 1.35, 0.85, 0.25, 0.25, 10, 0, 5, 5 );
                thread _ID48136( 2.2, 1.0, 0.25, 0.25, 15, 0, 20, 20 );
                thread _ID48136( 3.2, 0.85, 0.25, 0.25, var_1, var_2, var_3, var_4 );
                break;
            case "breach_price":
                thread _ID48136( 1.15, 1.0, 0.25, 0.25, 10, 0, 5, 5 );
                thread _ID48136( 2.5, 1.0, 0.25, 0.25, 15, 0, 20, 20 );
                thread _ID48136( 4.5, 1.5, 0.25, 0.25, 45, 45, var_3, var_4 );
                break;
            default:
                _ID42237::_ID14413( "breach_plant" );
                _ID48136( 0.35, 0.4, 0.15, 0.15, 10, 0, 5, 5 );
                _ID42237::_ID14388( "breach_plant" );
                _ID42237::_ID14413( "breach_settle" );
                _ID48136( 0.0, 0.4, 0.15, 0.15, 15, 0, 20, 20 );
                _ID42237::_ID14388( "breach_settle" );
                _ID42237::_ID14413( "breach_slowmo" );
                _ID48136( 0.35, 0.4, 0.15, 0.15, var_1, var_2, var_3, var_4 );
                _ID42237::_ID14388( "breach_slowmo" );
                break;
        }
    }
    else
    {

    }
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
    self giveweapon( "usp_scripted" );
    self switchtoweaponimmediate( "usp_scripted" );

    if ( isdefined( level._ID18178[self._ID28340] ) || var_0 )
        self switchtoweaponimmediate( self._ID28340 );
}

_ID29860()
{
    wait 0.5;
    self takeweapon( "usp_scripted" );

    if ( isdefined( self._ID28340 ) )
    {
        var_0 = self._ID28340;
        self switchtoweapon( var_0 );

        if ( _ID33924( var_0 ) )
        {
            var_1 = weaponclipsize( var_0 );

            if ( self getweaponammoclip( var_0 ) < var_1 )
                self setweaponammoclip( var_0, var_1 );
        }

        self._ID28340 = undefined;
    }
}

_ID51930( var_0 )
{
    setsaveddvar( "cg_drawGun", 0 );
    var_0 show();
}

_ID51230( var_0 )
{
    setsaveddvar( "cg_drawGun", 1 );
    _ID42237::_ID14402( "breach_settle" );
    var_0 hide();
}

_ID12510()
{
    wait 2.2;
    self enableweapons();
}

_ID33924( var_0 )
{
    if ( level._ID15361 > 1 )
        return 0;

    if ( isdefined( level._ID6044 ) )
        return !level._ID6044;

    if ( !isdefined( self._ID28340 ) )
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

    if ( !isdefined( self._ID22746 ) )
    {
        var_7 = 0;
        thread _ID42407::_ID22746();
    }

    wait 0.5;
    self forceteleport( var_1.origin, var_1.angles );
    _ID42407::_ID3136();
    var_1 thread _ID42259::_ID3025( self, var_5, "stop_idle" );
    self setgoalpos( self.origin );
    wait(3 + var_3);
    thread _ID14911( var_0 );
    var_1 notify( "stop_idle" );
    var_1 _ID42259::_ID3020( self, var_6 );
    self setgoalpos( self.origin );
    level notify( "friendlies_finished_breach" );

    if ( isdefined( self.friendly_breach_finished_flag ) )
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

    while ( !isdefined( level._ID6074 ) )
        wait 0.05;

    while ( isdefined( level._ID6074 ) && level._ID6074.size )
    {
        wait 0.05;

        if ( !isdefined( level._ID6074 ) )
            break;

        level._ID6074 = _ID42407::_ID29506( level._ID6074 );

        foreach ( var_2 in level._ID6074 )
        {
            if ( !isalive( var_2 ) || !isdefined( var_2 ) )
                continue;

            var_3 = var_2 gettagorigin( "tag_eye" );
            var_4 = self getmuzzlepos();
            var_5 = self getshootatpos() - var_4;

            if ( self canshoot( var_3, var_5 ) )
            {
                magicbullet( self.weapon, self getmuzzlepos(), var_3 );
                bullettracer( self getmuzzlepos(), var_3, 1 );
                wait 0.5;
            }
        }
    }
}

_ID15569( var_0 )
{
    var_1 = [];

    if ( !isdefined( level._ID6082 ) )
        return var_1;

    var_1 = _ID42407::_ID3328( level._ID6082 );
    var_2 = getdvar( "breach_requires_friendlies_in_position" ) == "1";

    foreach ( var_4 in var_1 )
    {
        if ( isdefined( var_4._ID6086 ) && var_4._ID6086 == 1 )
        {
            var_1 = _ID42237::_ID3321( var_1, var_4 );
            continue;
        }

        if ( var_2 && !var_4 istouching( var_0 ) )
        {
            var_1 = _ID42237::_ID3321( var_1, var_4 );
            continue;
        }
    }

    return var_1;
}

_ID15589( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "none";

    return "A door in breach group " + var_0 + " has been activated.";
}

_ID6031()
{
    var_0 = self._ID31079;
    var_1 = _ID15589( var_0 );
    level waittill( var_1 );
    waitframe;
    self notify( "trigger" );
}

_ID34373()
{
    if ( isdefined( level._ID28001 ) )
        self setmovespeedscale( level._ID28001 );
    else
        self setmovespeedscale( 1 );
}

_ID34363( var_0 )
{
    if ( isdefined( level._ID6086 ) && level._ID6086 == 1 )
        return;

    level._ID6086 = 1;
    _ID42237::_ID14402( "breaching_on" );
    level notify( "slowmo_go" );
    level endon( "slowmo_go" );
    var_1 = 0.5;
    var_2 = 0.75;
    var_3 = 0.2;

    if ( isdefined( level._ID34354 ) )
        var_3 = level._ID34354;

    var_4 = level.player;
    var_5 = undefined;

    if ( _ID42407::_ID20495() )
        var_5 = _ID42407::_ID15882( var_4 );

    var_4 thread _ID42407::_ID27079( "slomo_whoosh_in" );
    var_4 thread _ID27474();
    thread _ID46237();
    thread _ID43016();
    _ID42237::_ID14402( "breach_slowmo" );
    var_6 = var_1 * 2;
    var_7 = var_2 / 2;
    thread _ID34349( var_6, var_7 );
    thread _ID34350();
    _ID42237::_ID14388( "can_save" );
    _ID42407::_ID34379();
    var_4 thread _ID32232();

    if ( isdefined( var_5 ) )
        var_5 thread _ID32232();

    var_4 allowmelee( 0 );

    if ( isdefined( var_5 ) )
        var_5 allowmelee( 0 );

    _ID42407::_ID34377( 0.25 );
    _ID42407::_ID34374( var_1 );
    _ID42407::_ID34371();
    var_4 setmovespeedscale( var_3 );

    if ( isdefined( var_5 ) )
        var_5 setmovespeedscale( var_3 );

    var_8 = gettime();
    var_9 = var_8 + level._ID34353 * 1000;

    if ( !_ID42407::_ID20495() )
        var_4 thread _ID7120();

    var_4 thread _ID7119();

    if ( isdefined( var_5 ) )
        var_5 thread _ID7119();

    var_10 = 500;
    var_11 = 1000;

    for (;;)
    {
        if ( isdefined( level._ID14776 ) )
        {
            if ( !level._ID14776 )
            {
                if ( isdefined( level._ID14775 ) )
                    var_2 = level._ID14775;

                break;
            }

            wait 0.05;
            continue;
        }

        if ( gettime() >= var_9 )
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

            if ( var_4._ID36992 && gettime() - var_8 > var_11 )
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

    if ( !isdefined( level._ID50570 ) || !level._ID50570 )
    {
        var_4 allowmelee( 1 );

        if ( isdefined( var_5 ) )
            var_5 allowmelee( 1 );
    }

    var_4 _ID42407::_ID10226( var_2, ::_ID7844 );

    if ( isdefined( var_5 ) )
        var_5 _ID42407::_ID10226( var_2, ::_ID7844 );

    _ID42407::_ID34369();
    _ID42237::_ID14402( "can_save" );
    level._ID27571 = undefined;
    var_4 _ID34373();

    if ( isdefined( var_5 ) )
        var_5 _ID34373();

    level notify( "slomo_breach_over" );
    level._ID6086 = 0;
    _ID42237::_ID14388( "breaching_on" );
    setsaveddvar( "objectiveHide", 0 );

    foreach ( var_13 in getaispeciesarray( "all", "all" ) )
    {
        if ( isdefined( var_13._ID43135.remove_shields_when_breach_end ) && var_13._ID43135.remove_shields_when_breach_end )
            _ID45456::_ID54623( var_13 );
    }
}

_ID46237()
{
    var_0 = 0.1;
    var_1 = 0.25;
    var_2 = _ID42313::_ID9125( "h2_overlays_vignette", 0 );
    var_2.sort = 20;
    var_2.foreground = 0;
    var_2 fadeovertime( var_0 );
    var_2.alpha = 1;
    wait(var_0);
    level waittill( "slowmo_breach_ending" );
    var_2 fadeovertime( var_1 );
    var_2.alpha = 0;
    wait(var_1);
    var_2 destroy();
}

_ID43016()
{
    var_0 = 0.1;
    var_1 = 0.5;
    var_2 = 0.25;
    var_3 = _ID42313::_ID9125( "h2_overlays_breachdust", 0 );
    var_3.sort = 19;
    var_3.foreground = 0;
    var_3 fadeovertime( var_0 );
    var_3.alpha = 0.9;
    wait(var_0);
    var_3 fadeovertime( var_1 );
    var_3.alpha = 0.8;
    wait(var_1);
    level waittill( "slowmo_breach_ending" );
    var_3 fadeovertime( var_2 );
    var_3.alpha = 0;
    wait(var_2);
    var_3 destroy();
}

_ID32232()
{
    self endon( "clear_breaching_variable" );
    self._ID20686 = 1;
    self._ID6087 = 0;
    self._ID1761 = undefined;
    var_0 = self getcurrentweaponclipammo();
    self notifyonplayercommand( "player_shot_fired", "+attack" );
    self notifyonplayercommand( "player_shot_fired", "+attack_akimbo_accessible" );

    while ( isdefined( self._ID20686 ) )
    {
        self waittill( "player_shot_fired" );
        self._ID6087 = var_0 - self getcurrentweaponclipammo();
        wait 0.05;

        while ( self isfiring() )
        {
            self._ID6087 = var_0 - self getcurrentweaponclipammo();
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
    var_0 = getdvar( "bg_viewKickScale" );
    var_1 = getdvar( "bg_viewKickMax" );
    setsaveddvar( "bg_viewKickScale", 0.3 );
    setsaveddvar( "bg_viewKickMax", "15" );
    setsaveddvar( "bullet_penetration_damage", 0 );
    level waittill( "slowmo_breach_ending" );
    setsaveddvar( "bg_viewKickScale", var_0 );
    setsaveddvar( "bg_viewKickMax", var_1 );
    wait 2;
    setsaveddvar( "bullet_penetration_damage", 1 );
}

_ID34349( var_0, var_1 )
{
    if ( !isdefined( level._ID34352 ) || level._ID40543 )
        return;

    visionsetnaked( "slomo_breach", var_0 );
    level waittill( "slowmo_breach_ending",  var_2  );

    if ( isdefined( var_2 ) )
        var_1 = var_2;

    wait 1;

    if ( !level._ID40543 )
        visionsetnaked( level._ID34352, var_1 );
}

_ID27474()
{
    level endon( "stop_player_heartbeat" );

    for (;;)
    {
        self playlocalsound( "breathing_heartbeat" );
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
    _ID42407::_ID1868( ::_ID29321 );
    thread _ID6013();
    thread _ID6014();
    level thread _ID6016( self );

    if ( isdefined( self._ID31388 ) && _ID42237::_ID36698( self._ID31388, "reference" ) )
        var_0 = getent( self._ID31388, "targetname" );

    self._ID29359 = var_0;
    var_0 _ID42259::_ID3023( self, self._ID70 );

    if ( isdefined( level._ID1630[self._ID70] ) )
    {
        var_1 = level._ID1630[self._ID70];
        self thread [[ var_1 ]]();
    }

    self.grenadeammo = 0;
    self.allowdeath = 1;
    self.health = 10;
    self._ID4867 = 5000;
    self._ID43135.remove_shields_when_breach_end = 1;

    if ( isdefined( self._ID70 ) )
        self.cheat._ID48626 = 1;

    if ( isdefined( self._ID31477 ) )
        self.threatbias = self._ID31477;

    if ( isdefined( level._ID6004[self._ID70] ) )
        self._ID34237 = 1;

    wait(level._ID34367);
    _ID42407::_ID916();
    self notify( "starting_breach_reaction" );
    var_0 _ID42259::_ID3020( self, self._ID70 );
    self notify( "finished_breach_start_anim" );
}

_ID29321( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isalive( var_1 ) )
        return;

    if ( !isplayernumber( var_1 ) )
        return;

    if ( !self isbadguy() )
        return;

    level._ID21836 = gettime();
}

_ID6013()
{
    self endon( "death" );

    if ( !_ID42237::_ID14385( "no_mercy" ) )
        self.ignoreme = 1;

    level _ID42237::_ID41098( "slomo_breach_over", "friendlies_finished_breach" );

    if ( isdefined( self ) )
        self.ignoreme = 0;
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
    var_1 = spawnstruct();
    var_1.enemy = var_0;
    var_1 thread _ID6018( var_0 );
    var_1 thread _ID6019( var_0 );
    var_1 thread _ID6012( var_0 );
    var_1 thread _ID6017();
    var_1 waittill( "breach_status_change",  var_2  );
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
        _ID6024();

    level notify( "breach_all_enemies_dead" );
}

_ID6012( var_0 )
{
    self endon( "breach_status_change" );

    while ( isalive( var_0 ) )
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
    thread _ID18963();
    _ID42259::_ID3023( self, self._ID70 );
    self.health = 10;
    self._ID24829 = 1;
    self.ignorerandombulletdamage = 1;
    wait(level._ID34367);

    if ( isdefined( level._ID1630[self._ID70] ) )
    {
        var_1 = level._ID1630[self._ID70];
        self thread [[ var_1 ]]();
    }

    self.allowdeath = 1;
    var_0 _ID42259::_ID3020( self, self._ID70 );
    self notify( "finished_breach_start_anim" );

    if ( isdefined( self._ID34238 ) )
        return;

    if ( _ID3012( self._ID70 + "_idle" ) )
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
    var_0 = self.health;
    self endon( "death" );
    self endon( "saved" );

    while ( isdefined( self ) )
    {
        self waittill( "damage",  var_1, var_2  );

        if ( isdefined( var_2 ) )
        {
            if ( isplayernumber( var_2 ) )
            {
                self kill( self.origin, level.player );
                break;
                continue;
            }

            if ( isdefined( var_2.team ) && var_2.team == "allies" )
                self.health = var_0;
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
    var_0 = self.health;
    var_1 = 0;
    thread _ID18962();
    var_2 = _ID15960( self._ID31433 );

    if ( getdvar( "hostage_missionfail" ) == "0" )
        return;

    while ( isdefined( self ) )
    {
        self waittill( "death",  var_3  );

        if ( isdefined( var_3 ) )
        {
            if ( isplayernumber( var_3 ) )
            {
                level notify( "player_shot_a_hostage" );
                waitframe;

                if ( level._ID21836 == gettime() )
                    _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_KILLEDHOSTAGE" );
                else
                    _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_KILLEDHOSTAGE" );

                var_1 = 1;
            }
            else if ( isdefined( var_3.team ) && var_3.team == "allies" && !isplayernumber( var_3 ) )
            {
                _ID42349::_ID32262( &"SCRIPT_MISSIONFAIL_HOSTAGEEXECUTED" );
                var_1 = 1;
            }
            else
            {
                if ( _ID8636( var_2 ) )
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

    if ( isdefined( var_0._ID18173 ) )
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

    if ( level.script == "oilrig" )
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

    if ( isdefined( level._ID51829 ) )
        precachemodel( level._ID51829 );
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
    if ( !isdefined( level._ID34382 ) )
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

    if ( !isdefined( level._ID47275 ) )
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
    _ID53163();

    foreach ( var_2, var_1 in level._ID30895["h2_active_breacher_rig"] )
    {
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

    level._ID1629 = [];
    _ID1851( ::_ID6020 );
    _ID42259::_ID2058( "active_breacher_rig", "explode", ::_ID6027 );
    _ID42259::_ID2058( "active_breacher_rig", "slowmo", ::_ID34363 );
    _ID42259::_ID2058( "h2_active_breacher_rig", "explode", ::_ID6027 );
    _ID42259::_ID2058( "h2_active_breacher_rig", "slowmo", ::_ID34363 );
    _ID42259::_ID2058( "h2_active_breacher_rig", "hide_WB", ::_ID51230 );
}

_ID1851( var_0 )
{
    level._ID1629[level._ID1629.size] = var_0;
}

_ID6027( var_0 )
{
    foreach ( var_2 in level._ID1629 )
        thread [[ var_2 ]]( var_0 );
}

_ID6020( var_0 )
{
    var_1 = level._ID6032[self._ID6039];
    var_2 = undefined;
    var_3 = undefined;

    switch ( var_1._ID11632 )
    {
        case "wood":
            var_2 = "detpack_explo_wood";
            var_3 = "breach_door_hinge";
            break;
        case "estate_wood":
            var_2 = "detpack_explo_wood";
            var_3 = "breach_door_hinge_estate";
            break;
        case "estate_wood_backwards":
            var_2 = "detpack_explo_wood";
            var_3 = undefined;
            break;
        case "caves_wood":
            var_2 = "detpack_explo_wood";
            var_3 = "breach_door_hinge_caves";
            break;
        case "payback_wood":
            var_2 = "pybk_breach_blast";
            var_3 = "breach_door_hinge_payback";
            break;
        case "metal":
            var_2 = "detpack_explo_metal";
            var_3 = "breach_door_hinge_metal";
            break;
        case "none":
            var_2 = "detpack_explo_concrete";
            break;
        case "oilrig":
            var_2 = "detpack_explo_metal";
            var_3 = undefined;
            break;
        default:
            break;
    }

    if ( isdefined( level._ID14918 ) )
    {
        if ( level._ID14918 )
            var_2 = "detpack_explo_friendlies";
    }

    if ( isdefined( var_2 ) )
        thread _ID42237::_ID27077( var_2, self._ID7314.origin );

    _ID42234::_ID13611( "breach_" + self._ID6039 );
    thread _ID6056( self._ID7314.origin );
    level notify( "breach_explosion" );

    if ( isdefined( level._ID14918 ) )
        level._ID14918 = !level._ID14918;

    if ( isdefined( var_3 ) )
    {
        var_4 = _ID42407::_ID35028( var_3 );
        self._ID28267 thread _ID42259::_ID3111( var_4, "breach" );
    }

    wait 0.05;
    self._ID7314 delete();

    if ( isdefined( self._ID43888 ) )
    {
        foreach ( var_6 in self._ID43888 )
            var_6 delete();
    }

    if ( isdefined( self._ID11587 ) )
        self._ID11587 delete();
}

_ID6056( var_0 )
{
    var_1 = spawn( "script_origin", var_0 );
    var_1.origin = var_0;
    var_1 playrumblelooponentity( "grenade_rumble" );
    wait 4;
    var_1 delete();
}

_ID1622()
{
    self endon( "death" );
    self.dodamagetoall = 1;
    thread _ID21439();
}

_ID1623()
{
    self endon( "death" );
    self.dodamagetoall = 1;
    thread _ID1628();
}

_ID1628()
{
    animscripts\notetracks::_ID25053();
}

_ID1615()
{
    self endon( "death" );

    if ( !_ID42237::_ID14385( "no_mercy" ) )
        self.ignoreme = 1;

    self._ID14789 = 1;
    _ID42407::_ID41119( "bodyfall large" );
    self waittill( "finished_breach_start_anim" );
    self dodamage( self.health - 1, self.origin );
}

_ID1620()
{
    if ( self._ID70 == "execution_knife_hostage" || self._ID70 == "execution_knife2_hostage" )
        thread _ID1627();

    if ( _ID41760() )
        thread _ID15829();

    self._ID34238 = 1;
    self endon( "death" );
    _ID42407::_ID32326( self._ID70 + "_death" );
    self waittill( "finished_breach_start_anim" );

    if ( isdefined( self._ID22887 ) )
        return;

    if ( _ID3012( self._ID70 + "_survives" ) )
        self._ID29359 _ID42259::_ID3020( self, self._ID70 + "_survives" );

    thread _ID42259::_ID3025( self, self._ID70 + "_idle", "stop_idle" );
    self._ID6081 = 1;
}

_ID1625()
{
    if ( _ID41760() )
        thread _ID15829();

    self._ID34238 = 1;
    self waittill( "finished_breach_start_anim" );

    if ( isdefined( self._ID22887 ) )
        return;

    if ( _ID3012( self._ID70 + "_idle" ) )
        thread _ID42259::_ID3025( self, self._ID70 + "_idle", "stop_idle" );

    self._ID6081 = 1;
}

_ID1616()
{
    var_0 = spawn( "script_model", self._ID29359.origin );
    var_0 setmodel( "com_restaurantchair_2" );
    var_0.angles = self._ID29359.angles + ( 0, 90, 0 );
    var_0.origin = self._ID29359.origin;
    self._ID3189 = "generic";

    switch ( self._ID70 )
    {
        case "hostage_chair_twitch1":
        case "hostage_chair_twitch2":
            _ID42407::_ID32265( "h2_hostage_chair_breachdeath_02" );
            break;
        case "hostage_chair_twitch3":
        case "hostage_chair_twitch4":
            _ID42407::_ID32265( "h2_hostage_chair_breachdeath" );
            break;
    }
}

_ID1627()
{
    var_0 = _ID42407::_ID15601( self.origin, "bad_guys" );
    self waittill( "finished_breach_start_anim" );

    if ( isdefined( var_0 ) && isalive( var_0 ) )
    {
        playfxontag( _ID42237::_ID16299( "breach_knife_execution" ), self, "J_neck" );
        thread _ID42407::_ID27079( "melee_knife_hit_body" );
        self kill();
    }
}

_ID1621()
{
    self._ID34238 = 1;
    self endon( "death" );

    if ( _ID41760() )
        thread _ID15829();

    self waittillmatch( "single anim",  "bodyfall large"  );
    _ID42407::_ID32326( self._ID70 + "_death" );
    self waittill( "finished_breach_start_anim" );
    self exitprone( 0.2 );
    _ID42259::_ID3020( self, self._ID70 + "_survives" );

    if ( isdefined( self._ID22887 ) )
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
    _ID6011();
    _ID42407::_ID32326( self._ID70 + "_death" );
    self waittillmatch( "single anim",  "stab"  );
    wait 0.1;
    thread _ID21440();
    self waittill( "finished_breach_start_anim" );
}

_ID21440()
{
    var_0 = _ID42407::_ID15617( self.origin );
    var_1 = distance( var_0.origin, self.origin );

    if ( var_1 <= 50 )
    {
        var_0 playrumblelooponentity( "grenade_rumble" );
        var_0 thread _ID42407::_ID27079( "melee_knife_hit_body" );
        var_0 enablehealthshield( 0 );
        var_0 enabledeathshield( 0 );
        waitframe;
        var_0 dodamage( var_0.health + 50000, self gettagorigin( "tag_weapon_right" ), self );
        var_0._ID6042 = 1;
    }
}

_ID21439()
{
    wait 0.5;
    _ID42237::_ID41098( "damage", "finished_breach_start_anim" );

    if ( isdefined( self ) )
        self detach( "weapon_parabolic_knife", "TAG_INHAND" );
}

_ID1618()
{
    self endon( "death" );
    _ID6011();
    var_0 = randomintrange( 1, 3 );

    if ( _ID42237::_ID8201() )
        _ID42407::_ID32326( self._ID70 + "_death" );
    else
        _ID42407::_ID32326( self._ID70 + "_death2" );
}

_ID1617()
{
    self endon( "death" );
    _ID6011();
    _ID42407::_ID32326( self._ID70 + "_death" );
    thread _ID7262();
    self waittill( "finished_breach_start_anim" );
    thread _ID1618();
}

_ID7262()
{
    var_0 = spawn( "script_model", self._ID29359.origin );
    var_0 setmodel( "furniture_chair_metal01" );
    var_0._ID3189 = "chair";
    var_0 _ID42407::_ID3428();
    var_0._ID29359 = spawn( "script_origin", self._ID29359.origin );
    var_0._ID29359.angles = self._ID29359.angles;
    self waittill( "starting_breach_reaction" );
    var_0._ID29359 thread _ID42259::_ID3111( var_0, "breach_chair_hide_reaction_v2_chair" );
    self endon( "finished_breach_start_anim" );

    if ( isalive( self ) )
    {
        self waittill( "death" );
        var_0._ID29359 thread _ID42259::_ID3111( var_0, "breach_chair_hide_reaction_death_v2_chair" );
    }
}

_ID1619()
{
    self endon( "death" );
    thread _ID10427();
    self waittill( "finished_breach_start_anim" );
}

_ID10427()
{
    var_0 = spawn( "script_model", self._ID29359.origin );
    var_0 setmodel( "furniture_long_desk_animate" );
    var_0._ID3189 = "desk";
    var_0 _ID42407::_ID3428();
    var_0._ID29359 = spawn( "script_origin", self._ID29359.origin );
    var_0._ID29359.angles = self._ID29359.angles;
    self waittill( "starting_breach_reaction" );
    var_0._ID29359 thread _ID42259::_ID3111( var_0, "breach_react_desk_v7_desk" );
}

_ID6043( var_0 )
{
    foreach ( var_2 in level._ID6032 )
    {
        if ( var_0 istouching( var_2._ID11612 ) )
            return var_2;
    }
}

_ID15587()
{
    var_0 = getarraykeys( level._ID6032 );
    return var_0;
}

_ID22819( var_0 )
{
    level._ID6032[var_0]._ID12560 = 0;
}

_ID10246( var_0 )
{
    level._ID6032[var_0]._ID1224 delete();
    var_1 = level._ID6032[var_0]._ID26320;
    _ID42237::_ID3294( var_1, ::connectpaths );
    _ID42237::_ID3350( var_1, _ID42407::_ID31860 );

    foreach ( var_3 in level._ID6032[var_0]._ID22620 )
        var_3 delete();
}

_ID6005( var_0 )
{
    if ( !isdefined( self ) )
        return;

    var_1 = self.origin;
    wait 0.05;

    if ( getdvar( "breach_debug" ) == "0" )
        return;

    var_2 = [];
    var_3 = getentarray( "breach_enemy_spawner", "targetname" );
    var_4 = getentarray( "breach_hostage_spawner", "targetname" );
    var_2 = _ID42407::_ID3317( var_3, var_4 );

    foreach ( var_6 in var_2 )
    {
        if ( !var_6 istouching( var_0 ) )
            var_2 = _ID42237::_ID3321( var_2, var_6 );
    }

    while ( !var_0._ID6073 )
    {
        var_8 = var_1;

        foreach ( var_6 in var_2 )
        {
            if ( isdefined( var_6._ID70 ) )
            {
                thread _ID42407::_ID9904( var_6._ID70, var_8, 1 );
                var_8 -= ( 0, 0, 10 );
            }
        }

        wait 1;
    }
}

_ID41760()
{
    if ( _ID42407::_ID20495() )
        return 0;

    if ( isdefined( level._ID18992 ) && level._ID18992 == 0 )
        return 0;

    if ( isdefined( self.script_noteworthy ) )
        return self.script_noteworthy == "manhandled" || self.script_noteworthy == "manhandled_guarded";

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

    if ( self.script_noteworthy == "manhandled" )
        var_0 = getent( self.target, "targetname" );

    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;
    var_7 = undefined;
    var_8 = "";

    if ( isdefined( self._ID31388 ) )
        var_8 = self._ID31388;

    switch ( self.script_noteworthy )
    {
        case "manhandled":
            var_4 = self._ID70 + "_manhandled";
            break;
        case "manhandled_guarded":
            var_4 = self._ID70 + "_manhandled_guarded";
            break;
    }

    var_7 = var_4 + "_idle" + var_8;
    var_2 = var_4 + "_prepare" + var_8;
    var_3 = var_4 + "_prepare_idle" + var_8;
    var_5 = var_4 + "_part2A" + var_8;
    var_6 = var_4 + "_part2B" + var_8;
    var_4 += var_8;
    _ID3420( var_4 );
    _ID3420( var_7 );

    if ( self.script_noteworthy == "manhandled" )
    {
        var_1 = var_0 _ID42407::_ID35014( 1 );
        var_1 hide();
        self._ID29359 _ID42259::_ID3023( var_1, var_1._ID70 );
        var_1 pushplayer( 1 );
        level._ID22889 = var_1;
        var_1._ID29160 = 0;
        var_1 thread _ID22891();
    }

    wait 0.5;

    if ( self.script_noteworthy == "manhandled" )
    {
        var_1 show();
        var_9 = level._ID30895["generic"]["friendly_manhandle_h2"];

        if ( isdefined( var_9 ) )
            var_1 thread _ID42259::_ID3044( var_1, "friendly_manhandle_h2", undefined, undefined, "generic" );
    }

    wait 0.5;
    self waittill( "finished_breach_start_anim" );

    if ( _ID3012( var_2 ) )
        self._ID29359 _ID42259::_ID3020( self, var_2 );

    if ( _ID3012( var_3 ) )
        self._ID29359 thread _ID42259::_ID3025( self, var_3, "stop_idle" );
    else
        var_3 = undefined;

    self._ID29157 = 1;

    if ( isdefined( var_3 ) )
    {
        while ( _ID22890() )
            wait 0.05;
    }

    self._ID29359 notify( "stop_idle" );
    self notify( "stop_idle" );

    if ( self.script_noteworthy == "manhandled" )
    {
        var_1 notify( "stop_loop" );
        self._ID29359 thread _ID42259::_ID3020( var_1, var_1._ID70 );
    }

    self._ID29359 _ID42259::_ID3020( self, var_4 );

    if ( _ID3012( var_5 ) )
    {
        var_10 = getent( "animation_breach_2A", "targetname" );
        var_10 thread _ID42259::_ID3020( var_1, var_1._ID70 + "_part2A" );
        var_10 _ID42259::_ID3020( self, var_5 );
    }
    else if ( _ID3012( var_6 ) )
    {
        var_10 = getent( "animation_breach_2B", "targetname" );
        var_10 thread _ID42259::_ID3020( var_1, var_1._ID70 + "_part2B" );
        var_10 _ID42259::_ID3020( self, var_6 );
    }

    if ( isdefined( var_1 ) && isdefined( level._ID30895["generic"][var_1._ID70 + "_idle"] ) )
        self._ID29359 thread _ID42259::_ID3025( var_1, var_1._ID70 + "_idle", "stop_idle" );

    if ( isdefined( level._ID30895["generic"][var_7] ) )
        self._ID29359 thread _ID42259::_ID3025( self, var_7, "stop_idle" );
}

_ID51716( var_0 )
{
    var_1 = level.player getplayerangles();
    var_1 = ( 0, var_1[1], 0 );
    var_2 = anglestoforward( var_1 );
    var_3 = anglestoup( var_1 );
    var_4 = 0.1;
    var_5 = _ID42237::_ID35164();
    var_5.origin = level.player.origin;
    var_5.angles = var_1;
    level.player playerlinktodelta( var_5, "tag_origin", 1, 45, 45, 90, 45, 1 );
    var_5 moveto( var_5.origin + var_3 * var_0, var_4 );
    wait(var_4);
    level.player unlink();
}

_ID35364( var_0 )
{
    if ( level.script == "gulag" )
    {
        var_1 = var_0.angles;
        var_2 = ( -4254.38, 1667.38, 133.681 );
        var_3 = _ID42237::_ID35164();
        var_3.origin = level.player.origin;
        var_3.angles = var_1;
        level.player playerlinktodelta( var_3, "tag_origin", 1, 45, 45, 90, 45, 1 );
        var_4 = 0.45;
        var_3 moveto( var_2, var_4, var_4 * 0.4, var_4 * 0.4 );
        wait(var_4);
        level.player setmovespeedscale( 0.5 );
        thread _ID27674();
        level._ID28544 thread _ID28546();
    }
}

_ID27674()
{
    wait 0.25;
    var_0 = level _ID42407::_ID9122( ::_ID27545, 0.5, 0 );
    var_0._ID1210 = 1.5;
}

_ID28545()
{
    self endon( "stop_following_player" );
    wait 1.5;

    for (;;)
    {
        self moveto( level.player.origin, 2, 0, 0 );
        wait 0.05;
    }
}

_ID28546()
{
    self endon( "stop_following_player" );
    var_0 = spawn( "script_origin", ( 0, 0, 0 ) );

    for (;;)
    {
        var_1 = level.player.origin;
        var_1 = _ID42407::_ID32530( var_1, 0 );
        var_2 = self.origin;
        var_2 = _ID42407::_ID32530( var_2, 0 );
        var_3 = vectortoangles( var_1 - var_2 );
        var_4 = anglestoforward( var_3 );
        var_5 = anglestoforward( self.angles );
        var_6 = anglestoright( self.angles );
        var_7 = vectordot( var_4, var_6 );
        var_0.angles = self.angles;
        var_8 = abs( acos( var_7 ) );
        var_9 = 2;

        if ( var_9 > var_8 )
            var_9 = var_8;

        if ( var_7 < 0 )
            var_0 addyaw( var_9 );
        else
            var_0 addyaw( var_9 * -1 );

        self rotateto( var_0.angles, 0.15 );
        wait 0.15;
    }
}

_ID27545( var_0, var_1, var_2 )
{
    level.player setmovespeedscale( var_1 * ( 1 - var_0 ) + var_2 * var_0 );
}

_ID22891()
{
    level endon( "mission failed" );

    if ( getdvar( "hostage_missionfail" ) == "1" )
        level endon( "player_shot_a_hostage" );

    thread _ID42407::_ID22746();
    _ID42407::_ID32628( 1 );

    if ( !_ID42237::_ID14385( "no_mercy" ) )
        self.ignoreme = 1;

    self.grenadeawareness = 0;
    wait 1;
    var_0 = [];
    var_1 = getaispeciesarray( "neutral", "civilian" );

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3._ID29157 ) )
            continue;

        if ( isdefined( var_3._ID31433 ) && var_3._ID31433 == self._ID31433 )
        {
            if ( isdefined( var_3.script_noteworthy ) && issubstr( var_3.script_noteworthy, "manhandled" ) )
                var_0 = _ID42237::_ID3293( var_0, var_3 );
        }
    }

    var_5 = var_0.size;
    var_6 = var_0;

    while ( var_5 > 0 )
    {
        wait 0.05;

        foreach ( var_3 in var_6 )
        {
            if ( !isdefined( var_3 ) || var_3._ID29157 == 1 )
            {
                var_6 = _ID42237::_ID3321( var_6, var_3 );
                var_5--;
            }
        }
    }

    if ( isdefined( self.manhandler_additional_wait_func ) )
        [[ self.manhandler_additional_wait_func ]]();

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3 ) )
            var_3._ID36141 = 1;
    }
}

_ID3420( var_0 )
{

}

_ID3012( var_0 )
{
    if ( isdefined( level._ID30895["generic"][var_0] ) )
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
    if ( !isdefined( self ) )
        return;

    if ( !isdefined( level._ID6082 ) )
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
    if ( !isdefined( self ) )
        return;

    if ( !isdefined( level._ID6082 ) )
        return;

    if ( _ID42407::_ID20542( level._ID6082, self ) )
        level._ID6082 = _ID42237::_ID3321( level._ID6082, self );
}

_ID6021()
{
    var_0 = [];
    var_0[var_0.size] = ::ismeleeing;
    var_0[var_0.size] = ::isswitchingweapon;
    var_0[var_0.size] = ::isthrowinggrenade;

    foreach ( var_2 in level._ID805 )
    {
        if ( var_2 isreloading() )
        {
            thread _ID6053();
            return 1;
        }

        if ( var_2 _ID39973() )
        {
            thread _ID6000();
            return 1;
        }

        foreach ( var_4 in var_0 )
        {
            if ( var_2 call [[ var_4 ]]() )
            {
                thread _ID6045();
                return 1;
            }
        }
    }

    return 0;
}

_ID39973()
{
    var_0 = [];
    var_0["riotshield"] = 1;
    var_0["claymore"] = 1;
    var_0["c4"] = 1;
    var_0["none"] = 1;
    var_1 = self getcurrentweapon();
    return isdefined( var_0[var_1] );
}

_ID34351()
{

}
