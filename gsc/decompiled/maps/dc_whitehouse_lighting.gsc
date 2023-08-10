// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\utility::flag_init( "change_sun" );
    thread _id_C532();
    thread _id_BD24();
    _id_CF0C( "dc_whitehouse_tunnel" );
}

_id_BD24()
{
    level waittill( "load_finished" );
    common_scripts\_exploder::exploder( "5000" );
    common_scripts\_exploder::exploder( "5004" );
}

_id_CF0C( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "dc_whitehouse_tunnel":
            var_1 = 0;
            var_2 = "dc_whitehouse_tunnel";
            var_3 = "dc_whitehouse_tunnel";
            var_0 = "dc_whitehouse_tunnel";
            break;
        case "dc_whitehouse_lawn":
            var_1 = 0;
            var_2 = "dc_whitehouse_lawn";
            var_3 = "dc_whitehouse_lawn";
            var_0 = "dc_whitehouse_lawn";
            break;
        case "dc_whitehouse_interior":
            var_1 = 0;
            var_2 = "dc_whitehouse_interior";
            var_3 = "dc_whitehouse_interior";
            var_0 = "dc_whitehouse_interior";
            break;
        default:
            var_1 = 1;
            var_2 = "dc_whitehouse";
            var_3 = "dc_whitehouse";
            var_0 = "dc_whitehouse";
            break;
    }

    maps\_utility::set_vision_set( var_2, var_1 );
    maps\_utility::fog_set_changes( var_3, var_1 );
    level.player maps\_utility::_id_BF21( var_0 );
}

_id_C532()
{
    var_0 = level._id_B6C3;

    for (;;)
    {
        common_scripts\utility::flag_wait( "change_sun" );
        level._id_B6C3 = 0.05;
        common_scripts\_exploder::kill_exploder( "5000" );
        common_scripts\_exploder::kill_exploder( "5004" );
        common_scripts\_exploder::exploder( "5001" );
        common_scripts\utility::flag_waitopen( "change_sun" );
        level._id_B6C3 = var_0;
        common_scripts\_exploder::exploder( "5000" );
        common_scripts\_exploder::exploder( "5004" );
        common_scripts\_exploder::kill_exploder( "5001" );
    }
}
