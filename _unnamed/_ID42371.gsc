// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init()
{

}

_ID19515( var_0, var_1 )
{
    var_0 = getweaponbasename( var_0 );
    var_2 = self;
    var_3 = int( _func_2b5( "career", "kills_total" ) ) + 1;
    _func_2b4( "career", "kills_total", var_3 );
    _ID32521( var_0, "kills_total" );
    var_4 = _func_2b5( "checkpoints", "kills_total" ) + 1;
    _func_2b4( "checkpoints", "kills_total", var_4 );

    if ( var_1 )
    {
        var_5 = _func_2b5( "checkpoints", "headshots_total" ) + 1;
        _func_2b4( "checkpoints", "headshots_total", var_5 );
        _ID32521( var_0, "headshots_total" );
    }
}

_ID33865( var_0 )
{
    _ID32521( getweaponbasename( var_0 ), "shots_total" );
    var_1 = _func_2b5( "checkpoints", "shots_total" ) + 1;
    _func_2b4( "checkpoints", "shots_total", var_1 );
}

_ID19514( var_0 )
{
    _ID32521( getweaponbasename( var_0 ), "shots_hit" );
    var_1 = _func_2b5( "checkpoints", "hits_total" ) + 1;
    _func_2b4( "checkpoints", "hits_total", var_1 );
}

_ID29407( var_0, var_1 )
{
    if ( isdefined( var_0 ) )
    {
        var_0 = getweaponbasename( var_0 );

        if ( !_ID7129( var_1 ) )
            _ID32521( var_0, "deaths_total" );
    }

    var_2 = _func_2b5( "checkpoints", "deaths_total" ) + 1;
    _func_2b4( "checkpoints", "deaths_total", var_2 );
    _ID42407::_ID54275();
    var_3 = level.player getplayerdata( _ID42237::_ID44046(), "career", "deaths_total" );

    if ( isdefined( var_3 ) )
        level.player setplayerdata( _ID42237::_ID44046(), "career", "deaths_total", var_3 + 1 );

    var_4 = level._ID23779 _ID42291::_ID16387( level.script );

    if ( isdefined( var_4 ) )
    {
        var_5 = level.player getplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level.script, "current_playtrough_deaths" );

        if ( isdefined( var_5 ) )
        {
            var_5++;
            level.player setplayerdata( _ID42237::_ID44046(), "career", "deaths_total", var_5 );
        }
    }
}

_ID29403()
{
    var_0 = _func_2b5( "checkpoints", "boosted_total" ) + 1;
    _func_2b4( "checkpoints", "boosted_total", var_0 );
}

_ID29404()
{
    var_0 = _func_2b5( "checkpoints", "boosted_total" ) + 1;
    _func_2b4( "checkpoints", "boosted_total", var_0 );
}

_ID29402()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "exo_dodge" );
        var_0 = _func_2b5( "checkpoints", "dodges_total" ) + 1;
        _func_2b4( "checkpoints", "boosted_total", var_0 );
    }
}

_ID29420()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "give_perk",  var_0  );
        _func_2b4( "perks", var_0, 1 );
    }
}

_ID22208( var_0 )
{
    var_1 = level.player _meth_850e();
    _func_2b4( "timestamp_end", var_1 );
    _func_2b4( "career", "level_completion_timestamp", var_0, var_1 );
    _func_2b4( "career", "levels_completed", var_0, 1 );
    var_2 = level.player getplayersetting( "gameskill" );
    var_3 = level._ID10854[int( var_2 )];
    _func_2b4( "final_difficulty", var_3 );
    _ID42407::_ID54275();
}

_ID11325( var_0 )
{
    var_1 = [ "ammo", "iw5_bal27_sp", "iw5_ak12_sp", "iw5_hbra3_sp", "iw5_himar_sp", "iw5_arx160_sp", "iw5_m182spr_sp", "iw5_sn6_sp", "iw5_hmr9_sp", "iw5_mp11_sp", "iw5_sac3_sp", "iw5_asm1_sp", "iw5_kf5_sp", "iw5_mors_sp", "iw5_gm6_sp", "iw5_thor_sp", "iw5_uts19_sp", "iw5_maul_sp", "iw5_rhino_sp", "iw5_lsat_sp", "iw5_asaw_sp", "iw5_em1_sp", "iw5_epm3_sp", "iw5_titan45_sp", "iw5_pbw_sp", "iw5_vbr_sp", "iw5_rw1_sp", "iw5_microdronelauncher_sp", "iw5_stingerm7_sp", "iw5_mahem_sp", "iw5_maaws_sp", "unknown", "" ];
    return _ID42237::_ID3303( var_1, var_0 );
}

_ID32521( var_0, var_1 )
{
    if ( isdefined( var_0 ) && _ID11325( var_0 ) )
    {
        var_2 = int( _func_2b5( "weapon_stats", var_0, var_1 ) ) + 1;
        _func_2b4( "weapon_stats", var_0, var_1, var_2 );
    }
    else
    {
        var_2 = int( _func_2b5( "weapon_stats", "unknown", var_1 ) ) + 1;
        _func_2b4( "weapon_stats", "unknown", var_1, var_2 );
    }
}

_ID7129( var_0 )
{
    var_0 = tolower( var_0 );

    switch ( var_0 )
    {
        case "mod_grenade":
        case "mod_grenade_splash":
        case "mod_projectile":
        case "mod_projectile_splash":
        case "mod_explosive":
        case "splash":
            return 1;
        default:
            return 0;
    }

    return 0;
}
