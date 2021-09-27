// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{

}

_ID19515( var_0, var_1 )
{
    var_0 = _func_062( var_0 );
    var_2 = self;
    var_3 = _func_0C1( _func_2B5( "career", "kills_total" ) ) + 1;
    _func_2B4( "career", "kills_total", var_3 );
    _unknown_0119( var_0, "kills_total" );
    var_4 = _func_2B5( "checkpoints", "kills_total" ) + 1;
    _func_2B4( "checkpoints", "kills_total", var_4 );

    if ( var_1 )
    {
        var_5 = _func_2B5( "checkpoints", "headshots_total" ) + 1;
        _func_2B4( "checkpoints", "headshots_total", var_5 );
        _unknown_0157( var_0, "headshots_total" );
    }
}

_ID33865( var_0 )
{
    _unknown_0166( _func_062( var_0 ), "shots_total" );
    var_1 = _func_2B5( "checkpoints", "shots_total" ) + 1;
    _func_2B4( "checkpoints", "shots_total", var_1 );
}

_ID19514( var_0 )
{
    _unknown_018D( _func_062( var_0 ), "shots_hit" );
    var_1 = _func_2B5( "checkpoints", "hits_total" ) + 1;
    _func_2B4( "checkpoints", "hits_total", var_1 );
}

_ID29407( var_0, var_1 )
{
    if ( _func_02F( var_0 ) )
    {
        var_0 = _func_062( var_0 );

        if ( !_unknown_01D0( var_1 ) )
            _unknown_01C4( var_0, "deaths_total" );
    }

    var_2 = _func_2B5( "checkpoints", "deaths_total" ) + 1;
    _func_2B4( "checkpoints", "deaths_total", var_2 );
    _ID42407::_ID54275();
    var_3 = level._ID794 _meth_8233( _ID42237::_ID44046(), "career", "deaths_total" );

    if ( _func_02F( var_3 ) )
        level._ID794 _meth_8251( _ID42237::_ID44046(), "career", "deaths_total", var_3 + 1 );

    var_4 = level._ID23779 _ID42291::_ID16387( level._ID912 );

    if ( _func_02F( var_4 ) )
    {
        var_5 = level._ID794 _meth_8233( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "current_playtrough_deaths" );

        if ( _func_02F( var_5 ) )
        {
            var_5++;
            level._ID794 _meth_8251( _ID42237::_ID44046(), "career", "deaths_total", var_5 );
        }
    }
}

_ID29403()
{
    var_0 = _func_2B5( "checkpoints", "boosted_total" ) + 1;
    _func_2B4( "checkpoints", "boosted_total", var_0 );
}

_ID29404()
{
    var_0 = _func_2B5( "checkpoints", "boosted_total" ) + 1;
    _func_2B4( "checkpoints", "boosted_total", var_0 );
}

_ID29402()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "exo_dodge" );
        var_0 = _func_2B5( "checkpoints", "dodges_total" ) + 1;
        _func_2B4( "checkpoints", "boosted_total", var_0 );
    }
}

_ID29420()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "give_perk",  var_0  );
        _func_2B4( "perks", var_0, 1 );
    }
}

_ID22208( var_0 )
{
    var_1 = level._ID794 _meth_850E();
    _func_2B4( "timestamp_end", var_1 );
    _func_2B4( "career", "level_completion_timestamp", var_0, var_1 );
    _func_2B4( "career", "levels_completed", var_0, 1 );
    var_2 = level._ID794 _meth_821E( "gameskill" );
    var_3 = level._ID10854[_func_0C1( var_2 )];
    _func_2B4( "final_difficulty", var_3 );
    _ID42407::_ID54275();
}

_ID11325( var_0 )
{
    var_1 = [ "ammo", "iw5_bal27_sp", "iw5_ak12_sp", "iw5_hbra3_sp", "iw5_himar_sp", "iw5_arx160_sp", "iw5_m182spr_sp", "iw5_sn6_sp", "iw5_hmr9_sp", "iw5_mp11_sp", "iw5_sac3_sp", "iw5_asm1_sp", "iw5_kf5_sp", "iw5_mors_sp", "iw5_gm6_sp", "iw5_thor_sp", "iw5_uts19_sp", "iw5_maul_sp", "iw5_rhino_sp", "iw5_lsat_sp", "iw5_asaw_sp", "iw5_em1_sp", "iw5_epm3_sp", "iw5_titan45_sp", "iw5_pbw_sp", "iw5_vbr_sp", "iw5_rw1_sp", "iw5_microdronelauncher_sp", "iw5_stingerm7_sp", "iw5_mahem_sp", "iw5_maaws_sp", "unknown", "" ];
    return _ID42237::_ID3303( var_1, var_0 );
}

_ID32521( var_0, var_1 )
{
    if ( _func_02F( var_0 ) && _unknown_0386( var_0 ) )
    {
        var_2 = _func_0C1( _func_2B5( "weapon_stats", var_0, var_1 ) ) + 1;
        _func_2B4( "weapon_stats", var_0, var_1, var_2 );
    }
    else
    {
        var_2 = _func_0C1( _func_2B5( "weapon_stats", "unknown", var_1 ) ) + 1;
        _func_2B4( "weapon_stats", "unknown", var_1, var_2 );
    }
}

_ID7129( var_0 )
{
    var_0 = _func_128( var_0 );

    switch ( var_0 )
    {

    }

    return 0;
    case "splash":
    case "mod_explosive":
    case "mod_projectile_splash":
    case "mod_projectile":
    case "mod_grenade_splash":
    case "mod_grenade":
    default:
}
