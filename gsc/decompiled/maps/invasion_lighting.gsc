// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    set_level_lighting_values();
    _id_BB31( "invasion" );
    level._id_C437 = "h2_invasion";
    maps\_thermal_scope_lightset::init( "invasion_thermal" );
}

set_level_lighting_values()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_id_BB31( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "invasion":
            var_1 = 1;
            var_2 = "invasion";
            var_3 = "invasion";
            var_0 = "invasion";
            break;
        case "latvee":
            var_1 = 1;
            var_2 = "invasion";
            var_3 = "invasion";
            var_0 = "invasion";
            break;
        case "yards":
            var_1 = 2;
            var_2 = "invasion_yards";
            var_3 = "invasion_yards";
            var_0 = "invasion_yellowshed";
            break;
        case "bmp":
            var_1 = 2;
            var_2 = "invasion_suburban_streets";
            var_3 = "invasion_suburban_streets";
            var_0 = "invasion_yellowshed";
            break;
        case "pizza":
            var_1 = 2;
            var_2 = "invasion_suburban_streets";
            var_3 = "invasion_suburban_streets";
            var_0 = "invasion_yellowshed";
            break;
        case "gas_station":
            var_1 = 2;
            var_2 = "invasion_stripmall";
            var_3 = "invasion_stripmall";
            var_0 = "invasion_stripmall";
            break;
        case "crash":
            var_1 = 2;
            var_2 = "invasion_stripmall_novolscat";
            var_3 = "invasion_stripmall_novolscat";
            var_0 = "invasion_stripmall";
            break;
        case "nates_roof":
            var_1 = 2.2;
            var_2 = "invasion_nates_roof";
            var_3 = "invasion_nates_roof";
            var_0 = "invasion_stripmall";
            break;
        case "attack_diner":
            var_1 = 2;
            var_2 = "invasion_nates_roof";
            var_3 = "invasion_nates_roof";
            var_0 = "invasion_stripmall";
            break;
        case "defend_diner":
            var_1 = 2;
            var_2 = "invasion_stripmall";
            var_3 = "invasion_stripmall";
            var_0 = "invasion_stripmall";
            break;
        case "diner":
            var_1 = 2;
            var_2 = "invasion_stripmall";
            var_3 = "invasion_stripmall";
            var_0 = "invasion_stripmall";
            break;
        case "burgertown":
            var_1 = 2;
            var_2 = "invasion_stripmall";
            var_3 = "invasion_stripmall";
            var_0 = "invasion_stripmall";
            break;
        case "vip_escort":
            var_1 = 2;
            var_2 = "invasion_stripmall";
            var_3 = "invasion_stripmall";
            var_0 = "invasion_stripmall";
            break;
        case "defend_BT":
            var_1 = 2;
            var_2 = "invasion_stripmall";
            var_3 = "invasion_stripmall";
            var_0 = "invasion_stripmall";
            break;
        case "helis":
            var_1 = 2;
            var_2 = "invasion_nates_roof";
            var_3 = "invasion_nates_roof";
            var_0 = "invasion_stripmall";
            break;
        case "convoy":
            var_1 = 2;
            var_2 = "invasion_stripmall";
            var_3 = "invasion_stripmall";
            var_0 = "invasion_stripmall";
            break;
        case "start_btr80_smash":
            var_1 = 4;
            var_2 = "invasion_stripmall";
            var_3 = "invasion_stripmall";
            var_0 = "invasion_stripmall";
            break;
        default:
            var_1 = 1;
            var_2 = "invasion";
            var_3 = "invasion";
            var_0 = "invasion";
            break;
    }

    maps\_utility::set_vision_set( var_2, var_1 );
    maps\_utility::fog_set_changes( var_3, var_1 );
    level.player maps\_utility::_id_BF21( var_0 );
    level.player _meth_849F( "invasion", var_1 );
}
