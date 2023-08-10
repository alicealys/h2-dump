// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    set_level_lighting_values();
    maps\_thermal_scope_lightset::init( "ending_museum_thermal" );
}

set_level_lighting_values()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_id_C1DB( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "ending_wakeup":
            var_1 = 1;
            var_2 = "ending_wakeup";
            var_3 = "ending_wakeup";
            var_0 = "ending_wakeup";
            break;
        case "ending_storm":
            var_1 = 1;
            var_2 = "ending_storm";
            var_3 = "ending_storm";
            var_0 = "ending_storm";
            break;
        case "ending_storm_gust":
            var_1 = 1;
            var_2 = "ending_storm_gust";
            var_3 = "ending_storm_gust";
            var_0 = "ending_storm_gust";
            break;
        case "ending_fight":
            var_1 = 1;
            var_2 = "ending_fight";
            var_3 = "ending_fight";
            var_0 = "ending_fight";
            break;
        case "ending_museum":
            var_1 = 1;
            var_2 = "ending_museum";
            var_3 = "ending_museum";
            var_0 = "ending_museum";
            break;
        default:
            var_1 = 1;
            var_2 = "ending";
            var_3 = "ending";
            var_0 = "ending";
            break;
    }

    maps\_utility::set_vision_set( var_2, var_1 );
    maps\_utility::fog_set_changes( var_3, var_1 );
    level.player maps\_utility::_id_BF21( var_0 );
}
