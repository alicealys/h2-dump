// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    set_level_lighting_values();
    _id_CA84( "dcburning_bunker" );
    level._id_AD67 = "dcburning_nvg";
    level.visionthermaldefault = "dcburning_thermal";
}

set_level_lighting_values()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_id_CA84( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( level.script == "dcemp" )
        return;

    switch ( var_0 )
    {
        case "dcburning":
            var_2 = 1;
            var_3 = "dcburning";
            var_4 = "dcburning";
            var_0 = "dcburning";
            break;
        case "dcburning_rooftops":
            var_2 = 1;
            var_3 = "dcburning_rooftops";
            var_4 = "dcburning_rooftops";
            var_0 = "dcburning_commerce";
            break;
        case "dcburning_bunker":
            var_2 = 1;
            var_3 = "dcburning_bunker";
            var_4 = "dcburning_bunker";
            var_0 = "dcburning_bunker";
            break;
        case "dcburning_trenches":
            var_2 = 2;
            var_3 = "dcburning_trenches";
            var_4 = "dcburning_trenches";
            var_0 = "dcburning";
            break;
        case "dcburning_commerce":
            var_2 = 2;
            var_3 = "dcburning_commerce";
            var_4 = "dcburning_commerce";
            var_0 = "dcburning_commerce";
            break;
        case "dcburning_heliride":
            var_2 = 2;
            var_3 = "dcburning_heliride";
            var_4 = "dcburning_heliride";
            var_0 = "dcburning_flight";
            break;
        case "dcburning_heliride_takeoff":
            var_2 = 2;
            var_3 = "dcburning_heliride_takeoff";
            var_4 = "dcburning_heliride_takeoff";
            var_0 = "dcburning_flight";
            break;
        case "dcburning_crash":
            var_2 = 2;
            var_3 = "dcburning_trenches";
            var_4 = "dcburning_trenches";
            var_0 = "dcburning";
            break;
        case "dcburning_nvg":
            var_2 = 2;
            var_3 = "dcburning_nvg";
            var_4 = "dcburning_nvg";
            var_0 = "dcburning_nvg";
            break;
        case "dcburning_thermal":
            var_2 = 2;
            var_3 = "dcburning_thermal";
            var_4 = "dcburning_thermal";
            var_0 = "dcburning_thermal";
            break;
        case "dcburning_barrett_thermal":
            var_2 = 1;
            var_3 = "dcburning_thermal_barrett";
            var_4 = undefined;
            var_0 = undefined;
            break;
        case "dcburning_helicrash":
            var_2 = 0;
            var_3 = "dcburning_helicrash";
            var_4 = "dcburning_helicrash";
            var_0 = "dcburning_helicrash";
            break;
        default:
            var_2 = 1;
            var_3 = "dcburning";
            var_4 = "dcburning";
            var_0 = "dcburning";
            break;
    }

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    maps\_utility::set_vision_set( var_3, var_2 );

    if ( isdefined( var_4 ) )
        maps\_utility::fog_set_changes( var_4, var_2 );

    if ( isdefined( var_0 ) )
        level.player maps\_utility::_id_BF21( var_0 );

    if ( level.script == "dc_burning" )
        level.player _meth_849F( "dcburning", var_2 );
}
