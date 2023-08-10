// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    set_level_lighting_values();
    _id_C003( "arcadia" );
    maps\_utility::_id_C0C2( "arcadia" );
}

set_level_lighting_values()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_id_C003( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "arcadia":
            var_1 = 1;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "street":
            var_1 = 1;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "checkpoint":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "golf":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "crash":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "house":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "house2":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "secondstreet":
            var_1 = 2.2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        default:
            var_1 = 1;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
    }

    maps\_utility::set_vision_set( var_2, var_1 );
    maps\_utility::fog_set_changes( var_3, var_1 );
    level.player maps\_utility::_id_BF21( var_0 );
    setsaveddvar( "r_useLightGridDefaultModelLightingSmoothing", 1 );
}
