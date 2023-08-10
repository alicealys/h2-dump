// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C662()
{
    _id_AB15::init();
    common_scripts\utility::flag_init( "fade_to_death" );
    common_scripts\utility::flag_init( "starting_hanger_backdoor_path" );
    common_scripts\utility::flag_init( "destroyed_fallen_tree_cliffhanger01" );
    common_scripts\utility::flag_init( "player_indoors" );
    common_scripts\utility::flag_init( "blizzard_cull_distance" );
    setsaveddvar( "com_cinematicEndInWhite", 1 );
    _id_C0E7::main();
    maps\cliffhanger_lighting::main();
    _id_AAAF::main();
    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", "1" );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "-1519 -29658 1252" );
    maps\cliffhanger_code::_id_C21D();
    level._id_AA79 = maps\cliffhanger_stealth::_id_AA79;
    maps\_load::set_player_viewhand_model( "viewhands_player_arctic_wind" );
    _id_AF69::_id_C09A( "viewhands_player_arctic_wind", "vehicle_snowmobile_player" );
    precacheitem( "hind_turret_penetration" );
    precacheitem( "hind_FFAR" );
    precacheitem( "zippy_rockets" );
    precachemodel( "com_computer_keyboard_obj" );
    precacheitem( "c4" );
    precacheshader( "overhead_obj_icon_world" );
    precacheshader( "hud_icon_heartbeat" );
    precacheshader( "hud_dpad" );
    precacheshader( "hud_arrow_left" );
    precachemodel( "weapon_ak47_clip" );
    precachemodel( "accessories_windsock_animated" );
    precachemodel( "h2_ch_megaphone_rig" );
    precachemodel( "com_roofvent1_snow_animated" );
    precachemodel( "ch_campfire_equipment_animated" );
    precacheshader( "h2_overlay_frozen_l" );
    precacheshader( "h2_overlay_frozen_r" );
    precacheshader( "h2_overlays_snowgoggles_distortion_l" );
    precacheshader( "h2_overlays_snowgoggles_distortion_r" );
    precacheshader( "h2_overlays_snowgoggles_shadow_l" );
    precacheshader( "h2_overlays_snowgoggles_shadow_r" );
    precacheshader( "h2_overlays_snowgoggles_put" );
    precacheshader( "h1_hud_overlay_eyelids_vignette_blur" );
    precacheshader( "h2_overlays_snowgoggles_corner_blur_l" );
    precacheshader( "h2_overlays_snowgoggles_corner_blur_r" );
    _id_C0CF::_id_C5D9( level.player );
    _id_C0E7::main();
    _id_D11A::main();
    _id_C162::main();
    var_0 = getentarray( "destructible_tree", "targetname" );
    common_scripts\utility::array_thread( var_0, maps\cliffhanger_code::_id_C419 );
    vehicle_scripts\_empty::main( "tag_origin" );
    maps\_load::main();
    maps\_idle::idle_main();
    maps\_compass::setupminimap( "compass_map_cliffhanger" );
    _id_B2D2::main();
    var_1 = getentarray( "wind_blown_object", "targetname" );
    common_scripts\utility::array_thread( var_1, maps\cliffhanger_code::_id_BD75 );
    _id_AAAB::main();
    thread maps\cliffhanger_code::_id_D40F();
    thread maps\cliffhanger_code::_id_CEE6();
    thread maps\cliffhanger_lighting::_id_AB73();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
    {
        thread _id_AF7D();
        return 1;
    }

    _id_C056::initialize();
    _id_B1F8();
    _id_C056::_id_BAA1();
}

_id_B1F8()
{
    var_0 = spawn( "script_origin", ( 928.75, -28720.9, -1013.28 ) );
    var_0.angles = ( 4.158, -58.3887, 0 );
    var_0.targetname = "beautiful_corner1";
    var_0 = spawn( "script_origin", ( 928.75, -28720.9, -1013.28 ) );
    var_0.angles = ( 4.158, -58.3887, 0 );
    var_0.targetname = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( 928.75, -28720.9, -1013.28 ) );
    var_0.angles = ( 12.8312, 45.6184, 0 );
    var_0.targetname = "beautiful_corner1_end";
    var_0 = spawn( "script_origin", ( 928.75, -28720.9, -1013.28 ) );
    var_0.angles = ( 12.8312, 45.6184, 0 );
    var_0.targetname = "beautiful_corner1_static_end";
    var_0 = spawn( "script_origin", ( 580.136, -29414.5, 461.006 ) );
    var_0.angles = ( -35.06, 167.679, 0 );
    var_0.targetname = "beautiful_corner2";
    var_0 = spawn( "script_origin", ( 580.136, -29414.5, 461.006 ) );
    var_0.angles = ( -35.06, 167.679, 0 );
    var_0.targetname = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( 592.704, -29418.9, 732.303 ) );
    var_0.angles = ( -35.06, 167.679, 0 );
    var_0.targetname = "beautiful_corner2_end";
    var_0 = spawn( "script_origin", ( 592.704, -29418.9, 732.303 ) );
    var_0.angles = ( -35.06, 167.679, 0 );
    var_0.targetname = "beautiful_corner2_static_end";
    var_0 = spawn( "script_origin", ( 367.194, -29045.3, 156.164 ) );
    var_0.angles = ( -9.93466, -116.028, 0 );
    var_0.targetname = "beautiful_corner3";
    var_0 = spawn( "script_origin", ( 367.194, -29045.3, 156.164 ) );
    var_0.angles = ( -9.93466, -116.028, 0 );
    var_0.targetname = "beautiful_corner3_static";
    var_0 = spawn( "script_origin", ( 525.912, -29037.5, 129.326 ) );
    var_0.angles = ( -57.2538, -133.716, 0 );
    var_0.targetname = "beautiful_corner3_end";
    var_0 = spawn( "script_origin", ( 525.912, -29037.5, 129.326 ) );
    var_0.angles = ( -57.2538, -133.716, 0 );
    var_0.targetname = "beautiful_corner3_static_end";
    var_0 = spawn( "script_origin", ( -10985.6, -34977.7, 513.836 ) );
    var_0.angles = ( -16.4393, -31.6988, 0 );
    var_0.targetname = "beautiful_corner4";
    var_0 = spawn( "script_origin", ( -10985.6, -34977.7, 513.836 ) );
    var_0.angles = ( -16.4393, -31.6988, 0 );
    var_0.targetname = "beautiful_corner4_static";
    var_0 = spawn( "script_origin", ( -10985.6, -34977.7, 480.694 ) );
    var_0.angles = ( 6.31334, -144.455, 0 );
    var_0.targetname = "beautiful_corner4_end";
    var_0 = spawn( "script_origin", ( -10985.6, -34977.7, 480.694 ) );
    var_0.angles = ( 6.31334, -144.455, 0 );
    var_0.targetname = "beautiful_corner4_static_end";
    var_0 = spawn( "script_origin", ( -5374.4, -26359.2, 940.04 ) );
    var_0.angles = ( -19.0456, 132.779, 0 );
    var_0.targetname = "beautiful_corner5";
    var_0 = spawn( "script_origin", ( -5374.4, -26359.2, 940.04 ) );
    var_0.angles = ( -19.0456, 132.779, 0 );
    var_0.targetname = "beautiful_corner5_static";
    var_0 = spawn( "script_origin", ( -5374.4, -26359.2, 940.04 ) );
    var_0.angles = ( -8.99759, 64.0326, 0 );
    var_0.targetname = "beautiful_corner5_end";
    var_0 = spawn( "script_origin", ( -5374.4, -26359.2, 940.04 ) );
    var_0.angles = ( -8.99759, 64.0326, 0 );
    var_0.targetname = "beautiful_corner5_static_end";
    var_0 = spawn( "script_origin", ( -9099.75, -25552.8, 879.066 ) );
    var_0.angles = ( -12.3737, -67.1057, 0 );
    var_0.targetname = "beautiful_corner6";
    var_0 = spawn( "script_origin", ( -9099.75, -25552.8, 879.066 ) );
    var_0.angles = ( -12.3737, -67.1057, 0 );
    var_0.targetname = "beautiful_corner6_static";
    var_0 = spawn( "script_origin", ( -9370.4, -25895.6, 879.066 ) );
    var_0.angles = ( -13.7437, 3.91227, 0 );
    var_0.targetname = "beautiful_corner6_end";
    var_0 = spawn( "script_origin", ( -9370.4, -25895.6, 879.066 ) );
    var_0.angles = ( -13.7437, 3.91227, 0 );
    var_0.targetname = "beautiful_corner6_static_end";
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner1" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner2" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner3" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner4" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner5" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner6" );
    level._id_D39A["beautiful_corner1"] = "cliffhanger";
    level._id_D39A["beautiful_corner2"] = "cliffhanger_climbing_up";
    level._id_D39A["beautiful_corner3"] = "cliffhanger_climbing_up";
    level._id_D39A["beautiful_corner4"] = "cliffhanger_snowmobile";
    level._id_D39A["beautiful_corner5"] = "cliffhanger_blizzard_heavy";
    level._id_D39A["beautiful_corner6"] = "cliffhanger_snowmobile_int";
    level._id_C37F["beautiful_corner1"] = "cliffhanger";
    level._id_C37F["beautiful_corner2"] = "cliffhanger_climbing_up";
    level._id_C37F["beautiful_corner3"] = "cliffhanger_climbing_up";
    level._id_C37F["beautiful_corner4"] = "cliffhanger_snowmobile";
    level._id_C37F["beautiful_corner5"] = "cliffhanger_blizzard_heavy";
    level._id_C37F["beautiful_corner6"] = "cliffhanger_snowmobile_int";
    level._id_D4BE["beautiful_corner1"] = "";
    level._id_D4BE["beautiful_corner2"] = "";
    level._id_D4BE["beautiful_corner3"] = "";
    level._id_D4BE["beautiful_corner4"] = "";
    level._id_D4BE["beautiful_corner5"] = "";
    level._id_D4BE["beautiful_corner6"] = "";
    level._id_B5A8["beautiful_corner1"] = [];
    level._id_B5A8["beautiful_corner1"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner1"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner1"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner1"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner2"] = [];
    level._id_B5A8["beautiful_corner2"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner2"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner2"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner2"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner3"] = [];
    level._id_B5A8["beautiful_corner3"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner3"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner3"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner3"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner4"] = [];
    level._id_B5A8["beautiful_corner4"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner4"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner4"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner4"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner5"] = [];
    level._id_B5A8["beautiful_corner5"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner5"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner5"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner5"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner6"] = [];
    level._id_B5A8["beautiful_corner6"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner6"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner6"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner6"]["aperture_speed"] = 1;
    level._id_B385["beautiful_corner1"] = 90;
    level._id_B385["beautiful_corner2"] = 75;
    level._id_B385["beautiful_corner3"] = 75;
    level._id_B385["beautiful_corner4"] = 75;
    level._id_B385["beautiful_corner5"] = 75;
    level._id_B385["beautiful_corner6"] = 75;
    level._id_B6BA["beautiful_corner1"] = 10;
    level._id_B4A6["beautiful_corner1"] = 0;
    level._id_CAC9["beautiful_corner1"] = -0.5;
    level._id_B6BA["beautiful_corner2"] = 15;
    level._id_B4A6["beautiful_corner2"] = 0;
    level._id_CAC9["beautiful_corner2"] = -0.5;
    level._id_B6BA["beautiful_corner3"] = 15;
    level._id_B4A6["beautiful_corner3"] = 0;
    level._id_CAC9["beautiful_corner3"] = -0.5;
    level._id_B6BA["beautiful_corner4"] = 15;
    level._id_B4A6["beautiful_corner4"] = 0;
    level._id_CAC9["beautiful_corner4"] = -0.5;
    level._id_B6BA["beautiful_corner5"] = 15;
    level._id_B4A6["beautiful_corner5"] = 0;
    level._id_CAC9["beautiful_corner5"] = -0.5;
    level._id_B6BA["beautiful_corner6"] = 15;
    level._id_B4A6["beautiful_corner6"] = 0;
    level._id_CAC9["beautiful_corner6"] = -0.5;
    level._id_AD38["beautiful_corner1"] = ::_id_BE0A;
    level._id_AD38["beautiful_corner2"] = ::_id_A82A;
    level._id_AD38["beautiful_corner3"] = ::_id_A82A;
    level._id_AD38["beautiful_corner4"] = ::_id_D3FF;
    level._id_AD38["beautiful_corner5"] = ::_id_B0B6;
    level._id_AD38["beautiful_corner6"] = ::_id_B132;
}

_id_BE0A()
{
    _id_C0CF::_id_CBCF( 0.05 );
}

_id_A82A()
{
    _id_C0CF::_id_CCEF( 0.05 );
}

_id_B0B6()
{
    _id_C0CF::_id_BC13( 0.05 );
}

_id_D3FF()
{
    _id_C0CF::_id_CE5A( 0.05 );
}

_id_B132()
{
    _id_C0CF::_id_CE5A( 0.05 );
    waitframe();
    maps\cliffhanger_lighting::_id_B118( "cliffhanger_snowmobile_int", "cliffhanger_snowmobile_int", "cliffhanger_snowmobile_int" );
}

_id_AF7D()
{
    var_0 = 0;
    var_1 = var_0;
    var_2 = [ "none", "climbing_up", "light", "med", "hard", "extreme", "snowmobile" ];

    for (;;)
    {
        if ( level.player buttonpressed( "dpad_right" ) || level.player buttonpressed( "pgup" ) )
            var_1 = common_scripts\utility::ter_op( var_0 == var_2.size - 1, 0, var_0 + 1 );
        else if ( level.player buttonpressed( "dpad_left" ) || level.player buttonpressed( "pgdn" ) )
            var_1 = common_scripts\utility::ter_op( var_0 == 0, var_2.size - 1, var_0 - 1 );

        if ( var_0 != var_1 )
        {
            maps\cliffhanger_lighting::_id_CFFA( var_2[var_1], 1, 1 );
            var_0 = var_1;
            wait 0.1;
        }

        if ( level.player buttonpressed( "dpad_up" ) || level.player buttonpressed( "end" ) )
        {
            if ( isdefined( level._id_C9AC ) )
                [[ common_scripts\utility::ter_op( level._id_C9AC, _id_C0CF::_id_BC73, _id_C0CF::_id_BAB9 ) ]]( level.player, 0.05 );

            wait 0.1;
        }

        wait 0.05;
    }
}
