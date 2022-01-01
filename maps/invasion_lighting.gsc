// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID32363();
    _ID47921( "invasion" );
    level._ID50231 = "h2_invasion";
    maps\_thermal_scope_lightset::_ID521( "invasion_thermal" );
}

_ID32363()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_ID47921( var_0 )
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

    _ID42407::_ID32515( var_2, var_1 );
    _ID42407::_ID14689( var_3, var_1 );
    level._ID794 _ID42407::_ID48929( var_0 );
    level._ID794 _meth_849f( "invasion", var_1 );
}
