// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    switch ( var_0 )
    {

    }

    case "script_vehicle_warrior_physics_turret":
    case "script_vehicle_b2":
    case "script_vehicle_pavelow_cutscene":
    case "script_vehicle_pavelow_noai":
    case "script_vehicle_pavelow":
    case "script_vehicle_mi28_flying_low":
    case "script_vehicle_osprey_fly":
    case "script_vehicle_mi28_flying":
    case "script_vehicle_mi28":
    case "script_vehicle_ch46e_ny_harbor":
    case "script_vehicle_ch46e_opened_door_interior_a":
    case "script_vehicle_ch46e_opened_door_interior":
    case "script_vehicle_ch46e_opened_door":
    case "script_vehicle_ch46e_low":
    case "script_vehicle_ch46e_notsolid":
    case "script_vehicle_ch46e_airlift":
    case "script_vehicle_ch46e":
    case "script_vehicle_seaknight_airlift":
    case "script_vehicle_seaknight":
    case "script_vehicle_mi17_woodland_landing_noai":
    case "script_vehicle_mi17_woodland_fly_cheap_noai":
    case "script_vehicle_mi17_woodland_fly_noai":
    case "script_vehicle_mi17_woodland_noai":
    case "script_vehicle_mi17_woodland_landing_so":
    case "script_vehicle_mi17_woodland_landing":
    case "script_vehicle_mi17_woodland_fly_cheap":
    case "script_vehicle_mi17_woodland_fly":
    case "script_vehicle_mi17_woodland":
    case "script_vehicle_mi17_noai":
    case "script_vehicle_mi17":
    case "script_vehicle_harrier":
    case "script_vehicle_blackhawk_minigun_low":
    case "script_vehicle_blackhawk_hero_hamburg":
    case "script_vehicle_blackhawk_low_thermal":
    case "script_vehicle_blackhawk_low":
    case "script_vehicle_blackhawk_hero_sas_night":
    case "script_vehicle_blackhawk_hero":
    case "script_vehicle_blackhawk_sas_night":
    case "script_vehicle_blackhawk":
    case "script_vehicle_littlebird_player":
    case "script_vehicle_littlebird_bench":
    case "script_vehicle_cobra_helicopter_fly_player":
    case "script_vehicle_cobra_helicopter_player":
    case "script_vehicle_cobra_helicopter_low":
    case "script_vehicle_cobra_helicopter_fly_low":
    case "script_vehicle_cobra_helicopter_fly":
    case "script_vehicle_cobra_helicopter":
    case "script_vehicle_cobra_player":
    case "script_vehicle_cobra":
    case "script_vehicle_apache_dark":
    case "script_vehicle_apache_mg":
    case "script_vehicle_apache":
    case "script_vehicle_mi24p_hind_woodland_opened_door":
    case "script_vehicle_mi24p_hind_blackice":
    case "script_vehicle_mi24p_hind_woodland":
    case "script_vehicle_m1a1_abrams_minigun":
    case "script_vehicle_mi24p_hind_desert":
    case "script_vehicle_hind":
    case "script_vehicle_ny_harbor_hind":
    case "script_vehicle_ny_blackhawk":
    case "script_vehicle_uk_utility_truck_no_rail_player":
    case "script_vehicle_uk_utility_truck_no_rail":
    case "script_vehicle_uk_utility_truck":
    case "script_vehicle_m1a1_abrams_player_tm":
    case "script_vehicle_littlebird_md500":
    case "script_vehicle_littlebird_armed":
    default:
}

_ID33619( var_0, var_1, var_2, var_3 )
{
    _ID42411::_ID32512( var_0, var_1, var_2, undefined, var_3 );
}

_ID32545( var_0, var_1, var_2 )
{
    var_3 = _unknown_043B();
    _unknown_0429( var_0, "none", undefined, var_2 );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        _unknown_0442( var_0, var_5, var_1, var_2 );
    }

    var_clear_2
    var_clear_0
}

_ID43764( var_0, var_1, var_2 )
{
    _ID42411::_ID48847( var_0, "aircraft_landing", var_1, var_2 );
}

_ID16030()
{
    var_0 = [];
    var_0[var_0.size] = "brick";
    var_0[var_0.size] = "bark";
    var_0[var_0.size] = "carpet";
    var_0[var_0.size] = "cloth";
    var_0[var_0.size] = "concrete";
    var_0[var_0.size] = "dirt";
    var_0[var_0.size] = "flesh";
    var_0[var_0.size] = "foliage";
    var_0[var_0.size] = "glass";
    var_0[var_0.size] = "grass";
    var_0[var_0.size] = "gravel";
    var_0[var_0.size] = "ice";
    var_0[var_0.size] = "metal";
    var_0[var_0.size] = "mud";
    var_0[var_0.size] = "paper";
    var_0[var_0.size] = "plaster";
    var_0[var_0.size] = "rock";
    var_0[var_0.size] = "sand";
    var_0[var_0.size] = "snow";
    var_0[var_0.size] = "water";
    var_0[var_0.size] = "wood";
    var_0[var_0.size] = "asphalt";
    var_0[var_0.size] = "ceramic";
    var_0[var_0.size] = "plastic";
    var_0[var_0.size] = "rubber";
    var_0[var_0.size] = "cushion";
    var_0[var_0.size] = "fruit";
    var_0[var_0.size] = "paintedmetal";
    var_0[var_0.size] = "riotshield";
    var_0[var_0.size] = "slush";
    var_0[var_0.size] = "default";
    return var_0;
}

_ID46850( var_0 )
{
    var_1 = [];

    switch ( var_0 )
    {

    }

    return var_1;
    case "plastic":
    case "foliage":
    case "water":
    case "metal":
    case "wood":
    case "concrete":
}

_ID45580( var_0, var_1 )
{
    if ( !_func_02F( level._ID1673 ) )
        level._ID1673 = [];

    if ( !_func_02F( level._ID1673[var_0] ) && _func_02F( var_1 ) )
        level._ID1673[var_0] = _func_1A5();

    level._ID1673[var_0]._ID48442 = [];
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        level._ID1673[var_0]._ID48442[_func_128( var_4 )] = var_1[var_4];
    }

    var_clear_2
}

_ID48031( var_0, var_1 )
{
    var_2 = undefined;

    if ( !_func_02F( level._ID1673 ) || !_func_02F( level._ID1673[var_0] ) || !_func_02F( level._ID1673[var_0]._ID48442 ) )
        return var_2;

    if ( !_func_02F( var_1 ) )
        return level._ID1673[var_0]._ID48442;

    if ( _func_0D3( var_1 ) )
    {
        var_2 = [];
        var_3 = var_1;

        for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
        {
            var_4 = var_3[var_6];
            var_5 = _func_128( var_4 );

            if ( _func_02F( level._ID1673[var_0]._ID48442[var_5] ) )
                var_2[var_4] = level._ID1673[var_0]._ID48442[var_5];
        }

        var_clear_2
        var_clear_0
    }
    else
    {
        var_5 = _func_128( var_1 );

        if ( _func_02F( level._ID1673[var_0]._ID48442[var_5] ) )
            var_2 = level._ID1673[var_0]._ID48442[var_5];
    }

    return var_2;
}

_ID52441( var_0 )
{
    if ( !_func_02F( level._ID53466 ) )
        level._ID53466 = [];

    level._ID53466[var_0] = 1;
}

_ID47025( var_0 )
{
    return _func_02F( level._ID54699 ) && _func_02F( level._ID54699[var_0] );
}
