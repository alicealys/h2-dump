// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19730()
{
    _ID16845();
    _ID42325::_ID22491();
}

_ID16845()
{
    if ( isdefined( level._ID11311 ) )
        return;

    if ( !isdefined( level._ID6720 ) )
        level._ID6720 = "american";

    var_0 = _ID42325::_ID15823();
    level.player _ID42325::_ID32585();
    level._ID18166 = 0;
    _ID42325::_ID26588( "sniperescape", "scoutsniper" );
    _ID42325::_ID26588( "launchfacility_a", "icbm" );
    _ID42325::_ID26588( "launchfacility_b", "launchfacility_a" );
    _ID42325::_ID26588( "af_chase", "af_caves" );
    _ID42325::_ID26588( "dc_whitehouse", "dcemp" );
    _ID42325::_ID26588( "ending", "af_chase" );
    _ID42325::_ID22489( "killhouse", undefined, undefined, "fraggrenade", "flash_grenade", "viewhands_black_kit", "british" );
    _ID42325::_ID22489( "coup", undefined, undefined, undefined, undefined, undefined, "american" );
    _ID42325::_ID22489( "blackout", "m4m203_silencer_reflex", "m14_scoped_silencer_woodland", "fraggrenade", "flash_grenade", "viewhands_sas_woodland", "american" );
    _ID42325::_ID22489( "armada", "m4_grunt", "beretta", "fraggrenade", "flash_grenade", "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "bog_a", "m4_grenadier", "beretta", "fraggrenade", "flash_grenade", "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "hunted", undefined, "colt45", "fraggrenade", "flash_grenade", "viewhands_sas_woodland", "british" );
    _ID42325::_ID22489( "ac130", undefined, undefined, undefined, undefined, "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "bog_b", "m4_grenadier", "beretta", "fraggrenade", "flash_grenade", "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "airlift", "m4_grenadier", "colt45", "fraggrenade", "flash_grenade", "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "aftermath", undefined, undefined, undefined, undefined, "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "village_assault", "m4m203_silencer_reflex", "m1014", "fraggrenade", "flash_grenade", "viewhands_sas_woodland", "british" );
    _ID42325::_ID22489( "scoutsniper", "m14_scoped_silencer", "usp_silencer", "fraggrenade", undefined, "viewhands_marine_sniper", "british" );
    _ID42325::_ID22489( "sniperescape", "m14_scoped_woodland", "usp_silencer", "fraggrenade", "flash_grenade", "viewhands_marine_sniper", "british" );
    _ID42325::_ID22489( "village_defend", "saw", "m14_scoped_woodland", "fraggrenade", "smoke_grenade_american", "viewhands_sas_woodland", "british" );
    _ID42325::_ID22489( "ambush", "remington700", "colt45", "fraggrenade", "flash_grenade", "viewhands_sas_woodland", "british" );
    _ID42325::_ID22489( "icbm", "m4m203_silencer_reflex", "usp_silencer", "fraggrenade", "flash_grenade", "viewhands_sas_woodland", "british" );
    _ID42325::_ID22489( "launchfacility_a", "m4m203_silencer_reflex", "usp_silencer", "fraggrenade", "smoke_grenade_american", "viewhands_sas_woodland", "british" );
    _ID42325::_ID22489( "launchfacility_b", "m4m203_silencer_reflex", "usp_silencer", "fraggrenade", "flash_grenade", "viewhands_sas_woodland", "british" );
    _ID42325::_ID22489( "jeepride", "m4_grunt", "colt45", "fraggrenade", undefined, "viewhands_sas_woodland", "british" );
    _ID42325::_ID22489( "airplane", "mp5_silencer", "usp_silencer", undefined, "flash_grenade", "viewhands_black_kit", "british" );
    _ID42325::_ID22489( "simplecredits", undefined, undefined, undefined, undefined, undefined, undefined );
    _ID42325::_ID22489( "trainer", "m4_grunt_SSDD", "deserteagle", "fraggrenade", undefined, "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "roadkill", "m4m203_eotech", "beretta", "fraggrenade", "flash_grenade", "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "cliffhanger", undefined, undefined, undefined, undefined, "viewhands_arctic", "british" );
    _ID42325::_ID22489( "airport", "m240", "m4_grenadier_airport", "fraggrenade", "flash_grenade", "viewhands_airport", "american" );
    _ID42325::_ID22489( "favela", "masada_grenadier_acog", "m1014", "fraggrenade", "flash_grenade", "viewhands_tf141_favela", "taskforce" );
    _ID42325::_ID22489( "invasion", "scar_h_reflex_shotgun", "beretta", "fraggrenade", "smoke_grenade_american", "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "favela_escape", "ump45_acog", "glock", "fraggrenade", "flash_grenade", "viewhands_tf141_favela", "taskforce" );
    _ID42325::_ID22489( "arcadia", "scar_h_reflex", "beretta", "fraggrenade", "flash_grenade", "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "oilrig", "m4m203_silencer_reflex", "scar_h_thermal_silencer", "fraggrenade", "flash_grenade", "viewhands_udt", "seal" );
    _ID42325::_ID22489( "gulag", "m14_scoped_arctic", undefined, "fraggrenade", "flash_grenade", "viewhands_udt", "seal" );
    _ID42325::_ID22489( "dcburning", "m4m203_eotech", "beretta", "fraggrenade", "flash_grenade", "viewmodel_base_viewhands", "american" );
    _ID42325::_ID22489( "contingency", "m21_scoped_arctic_silenced", "usp_silencer", "fraggrenade", "flash_grenade", "viewhands_arctic", "american" );
    _ID42325::_ID22489( "dcemp", "m4m203_eotech", "beretta", "fraggrenade", "flash_grenade", "viewhands_us_army_dmg", "american" );
    _ID42325::_ID22489( "dc_whitehouse", "m4_grenadier", "beretta", "fraggrenade", "flash_grenade", "viewhands_us_army_dmg", "american" );
    _ID42325::_ID22489( "estate", "masada_digital_grenadier_eotech", "beretta", "fraggrenade", "flash_grenade", "viewhands_tf141", "british" );
    _ID42325::_ID22489( "boneyard", "m14_scoped_silencer", "mp5_silencer_reflex", "fraggrenade", "flash_grenade", "viewhands_marine_sniper", "american" );
    _ID42325::_ID22489( "af_caves", "cheytac_silencer_desert", "kriss_acog_silencer", "fraggrenade", "flash_grenade", "viewhands_tf141", "american" );
    _ID42325::_ID22489( "af_chase", "uzi", "rpd", "fraggrenade", "flash_grenade", "viewhands_tf141", "american" );
    _ID42325::_ID22489( "ending", "uzi", "rpd", "fraggrenade", "flash_grenade", "viewhands_tf141", "american" );
    _ID42325::_ID22494( "blackout", "c4", "claymore" );
    _ID42325::_ID22494( "armada", undefined, "claymore" );
    _ID42325::_ID22494( "village_assault", "c4", "cobra_air_support" );
    _ID42325::_ID22494( "sniperescape", "c4", "claymore" );
    _ID42325::_ID22494( "village_defend", undefined, "claymore" );
    _ID42325::_ID22494( "icbm", "c4", "claymore" );
    _ID42325::_ID22494( "launchfacility_a", "c4", "claymore" );
    _ID42325::_ID22494( "launchfacility_b", "c4", "claymore" );
    _ID42325::_ID22494( "oilrig", undefined, "claymore" );
    _ID42325::_ID22494( "dcburning", undefined, "claymore" );
    _ID42325::_ID22494( "estate", undefined, "claymore" );
    _ID42325::_ID51707();
    _ID42325::_ID10118();
}
