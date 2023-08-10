// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_CC52( "airport_start" );
}

_id_CC52( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "airport":
            var_1 = 1;
            var_2 = "airport";
            var_3 = "airport";
            var_0 = "airport";
            break;
        case "airport_start":
            var_1 = 1;
            var_2 = "airport_start";
            var_3 = "airport_start";
            var_0 = "airport_start";
            break;
        case "airport_ending":
            var_1 = 1;
            var_2 = "airport_ending";
            var_3 = "airport_ending";
            var_0 = "airport_ending";
            break;
        default:
            var_1 = 1;
            var_2 = "airport";
            var_3 = "airport";
            var_0 = "airport";
            break;
    }

    maps\_utility::set_vision_set( var_2, var_1 );
    maps\_utility::fog_set_changes( var_3, var_1 );
    level.player maps\_utility::_id_BF21( var_0 );
}
