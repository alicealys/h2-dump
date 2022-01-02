// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "script_vehicle_m1a1_abrams_minigun":
        case "script_vehicle_m1a1_abrams_player_tm":
            _ID32545( var_0, "vfx/treadfx/tread_dust_default" );
            _ID33619( var_0, "water" );
            _ID33619( var_0, "paintedmetal" );
            _ID33619( var_0, "riotshield" );
            break;
        case "script_vehicle_uk_utility_truck":
        case "script_vehicle_uk_utility_truck_no_rail":
        case "script_vehicle_uk_utility_truck_no_rail_player":
            _ID32545( var_0, "vfx/treadfx/tread_dust_default" );
            _ID33619( var_0, "water" );
            _ID33619( var_0, "rock", undefined );
            _ID33619( var_0, "metal", undefined );
            _ID33619( var_0, "brick", undefined );
            _ID33619( var_0, "plaster", undefined );
            _ID33619( var_0, "asphalt", undefined );
            _ID33619( var_0, "paintedmetal", undefined );
            _ID33619( var_0, "riotshield", undefined );
            _ID33619( var_0, "snow", undefined );
            _ID33619( var_0, "slush", undefined );
            _ID33619( var_0, "ice", undefined );
            break;
        case "script_vehicle_littlebird_armed":
        case "script_vehicle_littlebird_md500":
        case "script_vehicle_ny_blackhawk":
        case "script_vehicle_ny_harbor_hind":
        case "script_vehicle_hind":
        case "script_vehicle_mi24p_hind_desert":
        case "script_vehicle_mi24p_hind_woodland":
        case "script_vehicle_mi24p_hind_blackice":
        case "script_vehicle_mi24p_hind_woodland_opened_door":
        case "script_vehicle_apache":
        case "script_vehicle_apache_mg":
        case "script_vehicle_apache_dark":
        case "script_vehicle_cobra":
        case "script_vehicle_cobra_player":
        case "script_vehicle_cobra_helicopter":
        case "script_vehicle_cobra_helicopter_fly":
        case "script_vehicle_cobra_helicopter_fly_low":
        case "script_vehicle_cobra_helicopter_low":
        case "script_vehicle_cobra_helicopter_player":
        case "script_vehicle_cobra_helicopter_fly_player":
        case "script_vehicle_littlebird_bench":
        case "script_vehicle_littlebird_player":
        case "script_vehicle_blackhawk":
        case "script_vehicle_blackhawk_sas_night":
        case "script_vehicle_blackhawk_hero":
        case "script_vehicle_blackhawk_hero_sas_night":
        case "script_vehicle_blackhawk_low":
        case "script_vehicle_blackhawk_low_thermal":
        case "script_vehicle_blackhawk_hero_hamburg":
        case "script_vehicle_blackhawk_minigun_low":
        case "script_vehicle_harrier":
        case "script_vehicle_mi17":
        case "script_vehicle_mi17_noai":
        case "script_vehicle_mi17_woodland":
        case "script_vehicle_mi17_woodland_fly":
        case "script_vehicle_mi17_woodland_fly_cheap":
        case "script_vehicle_mi17_woodland_landing":
        case "script_vehicle_mi17_woodland_landing_so":
        case "script_vehicle_mi17_woodland_noai":
        case "script_vehicle_mi17_woodland_fly_noai":
        case "script_vehicle_mi17_woodland_fly_cheap_noai":
        case "script_vehicle_mi17_woodland_landing_noai":
        case "script_vehicle_seaknight":
        case "script_vehicle_seaknight_airlift":
        case "script_vehicle_ch46e":
        case "script_vehicle_ch46e_airlift":
        case "script_vehicle_ch46e_notsolid":
        case "script_vehicle_ch46e_low":
        case "script_vehicle_ch46e_opened_door":
        case "script_vehicle_ch46e_opened_door_interior":
        case "script_vehicle_ch46e_opened_door_interior_a":
        case "script_vehicle_ch46e_ny_harbor":
        case "script_vehicle_mi28":
        case "script_vehicle_mi28_flying":
        case "script_vehicle_osprey":
        case "script_vehicle_osprey_fly":
        case "script_vehicle_mi28_flying_low":
        case "script_vehicle_pavelow":
        case "script_vehicle_pavelow_noai":
        case "script_vehicle_pavelow_cutscene":
        case "script_vehicle_b2":
            _ID32545( var_0, "fx/treadfx/heli_dust_default", "h1r_default_helicopter_wind" );
            _ID33619( var_0, "water", "fx/treadfx/heli_water" );
            _ID33619( var_0, "snow", "fx/treadfx/heli_snow_default" );
            _ID33619( var_0, "slush", "fx/treadfx/heli_snow_default" );
            _ID33619( var_0, "ice", "fx/treadfx/heli_snow_default" );
            break;
        case "script_vehicle_warrior_physics_turret":
            _ID32545( var_0, "vfx/treadfx/tread_dust_default" );
            _ID33619( var_0, "snow", undefined );
            _ID33619( var_0, "slush", undefined );
            _ID33619( var_0, "ice", undefined );
            break;
        default:
            _ID32545( var_0, "fx/treadfx/tread_dust_default" );
            _ID33619( var_0, "water" );
            _ID33619( var_0, "concrete" );
            _ID33619( var_0, "rock" );
            _ID33619( var_0, "metal" );
            _ID33619( var_0, "brick" );
            _ID33619( var_0, "plaster" );
            _ID33619( var_0, "asphalt" );
            _ID33619( var_0, "paintedmetal" );
            _ID33619( var_0, "riotshield" );
            _ID33619( var_0, "snow", "fx/treadfx/tread_snow_default" );
            _ID33619( var_0, "slush", "fx/treadfx/tread_snow_default" );
            _ID33619( var_0, "ice", "fx/treadfx/tread_ice_default" );
            break;
    }
}

_ID33619( var_0, var_1, var_2, var_3 )
{
    _ID42411::_ID32512( var_0, var_1, var_2, undefined, var_3 );
}

_ID32545( var_0, var_1, var_2 )
{
    var_3 = _ID16030();
    _ID33619( var_0, "none", undefined, var_2 );

    foreach ( var_5 in var_3 )
        _ID33619( var_0, var_5, var_1, var_2 );
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
        case "asphalt":
            var_1[var_1.size] = "asphalt_debris";
            var_1[var_1.size] = "asphalt_wet";
            break;
        case "concrete":
            var_1[var_1.size] = "concrete_debris";
            var_1[var_1.size] = "concrete_wet";
            break;
        case "foliage":
            var_1[var_1.size] = "foliage_debris";
            var_1[var_1.size] = "foliage_leaves";
            var_1[var_1.size] = "foliage_vegetation";
            break;
        case "glass":
            var_1[var_1.size] = "glass_tall";
            break;
        case "metal":
            var_1[var_1.size] = "metal_debris";
            var_1[var_1.size] = "metal_grate";
            var_1[var_1.size] = "metal_hollow";
            var_1[var_1.size] = "metal_solid";
            var_1[var_1.size] = "metal_thin";
            var_1[var_1.size] = "metal_vehicle";
            var_1[var_1.size] = "metal_wet";
            break;
        case "plastic":
            var_1[var_1.size] = "plastic_hollow";
            var_1[var_1.size] = "plastic_solid";
            var_1[var_1.size] = "plastic_tarp";
            break;
        case "rock":
            var_1[var_1.size] = "rock_debris";
            var_1[var_1.size] = "rock_wet";
            break;
        case "water":
            var_1[var_1.size] = "water_ankle";
            var_1[var_1.size] = "water_knee";
            var_1[var_1.size] = "water_waist";
            break;
        case "wood":
            var_1[var_1.size] = "wood_debris";
            var_1[var_1.size] = "wood_hollow";
            var_1[var_1.size] = "wood_solid";
            var_1[var_1.size] = "wood_wet";
            break;
    }

    return var_1;
}

_ID45580( var_0, var_1 )
{
    if ( !isdefined( level._ID1673 ) )
        level._ID1673 = [];

    if ( !isdefined( level._ID1673[var_0] ) && isdefined( var_1 ) )
        level._ID1673[var_0] = spawnstruct();

    level._ID1673[var_0]._ID48442 = [];

    foreach ( var_4, var_3 in var_1 )
        level._ID1673[var_0]._ID48442[tolower( var_4 )] = var_1[var_4];
}

_ID48031( var_0, var_1 )
{
    var_2 = undefined;

    if ( !isdefined( level._ID1673 ) || !isdefined( level._ID1673[var_0] ) || !isdefined( level._ID1673[var_0]._ID48442 ) )
        return var_2;

    if ( !isdefined( var_1 ) )
        return level._ID1673[var_0]._ID48442;

    if ( isarray( var_1 ) )
    {
        var_2 = [];

        foreach ( var_4 in var_1 )
        {
            var_5 = tolower( var_4 );

            if ( isdefined( level._ID1673[var_0]._ID48442[var_5] ) )
                var_2[var_4] = level._ID1673[var_0]._ID48442[var_5];
        }
    }
    else
    {
        var_5 = tolower( var_1 );

        if ( isdefined( level._ID1673[var_0]._ID48442[var_5] ) )
            var_2 = level._ID1673[var_0]._ID48442[var_5];
    }

    return var_2;
}

_ID52441( var_0 )
{
    if ( !isdefined( level._ID53466 ) )
        level._ID53466 = [];

    level._ID53466[var_0] = 1;
}

_ID47025( var_0 )
{
    return isdefined( level._ID54699 ) && isdefined( level._ID54699[var_0] );
}
