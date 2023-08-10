// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    set_level_lighting_values();
    _id_AED9( "contingency" );
}

set_level_lighting_values()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_id_AED9( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "contingency":
            var_1 = 1;
            var_2 = "contingency";
            var_3 = "contingency";
            var_0 = "contingency";
            break;
        case "start":
            var_1 = 1;
            var_2 = "contingency";
            var_3 = "contingency";
            var_0 = "contingency";
            break;
        case "slide":
            var_1 = 2;
            var_2 = "contingency";
            var_3 = "contingency";
            var_0 = "contingency_river";
            break;
        case "woods":
            var_1 = 2;
            var_2 = "contingency_forest";
            var_3 = "contingency_forest";
            var_0 = "contingency_forest";
            break;
        case "midwoods":
            var_1 = 2;
            var_2 = "contingency_river";
            var_3 = "contingency_river";
            var_0 = "contingency_river";
            break;
        case "ridge":
            var_1 = 2;
            var_2 = "contingency_bayview";
            var_3 = "contingency_bayview";
            var_0 = "contingency_bayview";
            break;
        case "base":
            var_1 = 2;
            var_2 = "contingency_port";
            var_3 = "contingency_port";
            var_0 = "contingency";
            break;
        case "defend_sub":
            var_1 = 2.2;
            var_2 = "contingency_port";
            var_3 = "contingency_port";
            var_0 = "contingency";
            break;
        case "uav":
            var_1 = 2.2;
            var_2 = "contingency_thermal_inverted";
            var_3 = "contingency_thermal_inverted";
            var_0 = "contingency_uav";
            break;
        case "contingency_nukelaunch":
            var_1 = 1;
            var_2 = "contingency_nukelaunch";
            var_3 = "contingency_nukelaunch";
            var_0 = "contingency_nukelaunch";
            break;
        case "contingency_post_nuke":
            var_1 = 4;
            var_2 = "contingency_port";
            var_3 = "contingency_port";
            var_0 = "contingency_post_nuke";
            break;
        default:
            var_1 = 1;
            var_2 = "contingency";
            var_3 = "contingency";
            var_0 = "contingency";
            break;
    }

    maps\_utility::set_vision_set( var_2, var_1 );
    maps\_utility::fog_set_changes( var_3, var_1 );
    level.player maps\_utility::_id_BF21( var_0 );
}
