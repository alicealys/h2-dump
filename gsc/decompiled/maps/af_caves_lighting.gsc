// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    set_level_lighting_values();
    _id_C7A6( "af_caves_start" );
    level._id_AD67 = "af_caves_nvg";
    maps\_thermal_scope_lightset::init( "af_caves_thermal" );
    level.visionthermaldefault = "af_caves_thermal";
}

set_level_lighting_values()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_id_C7A6( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "af_caves_start":
            var_1 = 1;
            var_2 = "af_caves";
            var_3 = "af_caves_start";
            var_0 = "af_caves";
            break;
        case "af_caves":
            var_1 = 1;
            var_2 = "af_caves";
            var_3 = "af_caves";
            var_0 = "af_caves";
            break;
        case "af_caves_indoors":
            var_1 = 2;
            var_2 = "af_caves_indoors";
            var_3 = "af_caves_indoors";
            var_0 = "af_caves_indoors";
            break;
        case "af_caves_rappel_end":
            var_1 = 4;
            var_2 = "af_caves";
            var_3 = "af_caves";
            var_0 = "af_caves";
            break;
        case "af_caves_rappel":
            var_1 = 4;
            var_2 = "af_caves";
            var_3 = "af_caves";
            var_0 = "af_caves_rappel";
            break;
        case "af_caves_steamroom":
            var_1 = 2;
            var_2 = "af_caves_steamroom";
            var_3 = "af_caves_steamroom";
            var_0 = "af_caves_steamroom";
            break;
        case "af_caves_steamroom_grp1":
            var_1 = 0;
            var_2 = "af_caves_steamroom";
            var_3 = "af_caves_steamroom_grp1";
            var_0 = "af_caves_steamroom";
            break;
        case "af_caves_steamroom_grp2":
            var_1 = 0;
            var_2 = "af_caves_steamroom";
            var_3 = "af_caves_steamroom_grp2";
            var_0 = "af_caves_steamroom";
            break;
        case "af_caves_steamroom_grp3":
            var_1 = 0;
            var_2 = "af_caves_steamroom";
            var_3 = "af_caves_steamroom_grp3";
            var_0 = "af_caves_steamroom";
            break;
        case "af_caves_steamroom_breach":
            var_1 = 1;
            var_2 = "af_caves_steamroom_breach";
            var_3 = "af_caves_steamroom_breach";
            var_0 = "af_caves_steamroom_breach";
            break;
        case "af_caves_ledge":
            var_1 = 2;
            var_2 = "af_caves_ledge";
            var_3 = "af_caves";
            var_0 = "af_caves_ledge";
            break;
        case "af_caves_overlook":
            var_1 = 2;
            var_2 = "af_caves";
            var_3 = "af_caves";
            var_0 = "af_caves_overlook";
            break;
        case "af_caves_indoors_skylight":
            var_1 = 2;
            var_2 = "af_caves_indoors_skylight";
            var_3 = "af_caves_indoors_skylight";
            var_0 = "af_caves_overlook";
            break;
        case "af_caves_nvg":
            var_1 = 1;
            var_2 = "af_caves_nvg";
            var_3 = "af_caves_nvg";
            var_0 = "af_caves_nvg";
            break;
        case "af_caves_steamroom_transition":
            var_1 = 2;
            var_2 = "af_caves_indoors";
            var_3 = "af_caves_steamroom_transition";
            var_0 = "af_caves_indoors";
            break;
        case "af_caves_outdoors_airstrip":
            var_1 = 2;
            var_2 = "af_caves_outdoors_airstrip";
            var_3 = "af_caves_outdoors_airstrip";
            var_0 = "af_caves";
            break;
        case "af_caves_explosion":
            var_1 = 0;
            var_2 = "af_caves_outdoors_airstrip";
            var_3 = "af_caves_outdoors_airstrip";
            var_0 = "af_caves_explosion";
            break;
        case "af_caves_outdoors_explosion_airstrip":
            var_1 = 0;
            var_2 = "af_caves_outdoors_airstrip";
            var_3 = "af_caves_outdoors_airstrip";
            var_0 = "af_caves";
            break;
        default:
            var_1 = 1;
            var_2 = "af_caves";
            var_3 = "af_caves_start";
            var_0 = "af_caves";
            break;
    }

    maps\_utility::set_vision_set( var_2, var_1 );
    maps\_utility::fog_set_changes( var_3, var_1 );
    level.player maps\_utility::_id_BF21( var_0 );
    level.player _meth_849F( "af_caves", var_1 );
}
