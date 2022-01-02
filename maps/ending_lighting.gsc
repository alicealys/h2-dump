// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID32363();
    maps\_thermal_scope_lightset::init( "ending_museum_thermal" );
}

_ID32363()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_ID49627( var_0 )
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

    _ID42407::_ID32515( var_2, var_1 );
    _ID42407::_ID14689( var_3, var_1 );
    level.player _ID42407::_ID48929( var_0 );
}
