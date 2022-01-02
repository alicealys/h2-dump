// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50786()
{
    _ID43797::init();
    _ID42237::_ID14400( "fade_to_death" );
    _ID42237::_ID14400( "starting_hanger_backdoor_path" );
    _ID42237::_ID14400( "destroyed_fallen_tree_cliffhanger01" );
    _ID42237::_ID14400( "player_indoors" );
    _ID42237::_ID14400( "blizzard_cull_distance" );
    setsaveddvar( "com_cinematicEndInWhite", 1 );
    _ID49383::main();
    maps\cliffhanger_lighting::main();
    _ID43695::main();
    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", "1" );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "-1519 -29658 1252" );
    maps\cliffhanger_code::_ID49693();
    level._ID43641 = maps\cliffhanger_stealth::_ID43641;
    _ID42323::_ID32417( "viewhands_player_arctic_wind" );
    _ID44905::_ID49306( "viewhands_player_arctic_wind", "vehicle_snowmobile_player" );
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
    _ID49359::_ID50649( level.player );
    _ID49383::main();
    _ID53530::main();
    _ID49506::main();
    var_0 = getentarray( "destructible_tree", "targetname" );
    _ID42237::_ID3350( var_0, maps\cliffhanger_code::_ID50201 );
    _ID42530::main( "tag_origin" );
    _ID42323::main();
    _ID42314::_ID19317();
    _ID42272::_ID33575( "compass_map_cliffhanger" );
    _ID45778::main();
    var_1 = getentarray( "wind_blown_object", "targetname" );
    _ID42237::_ID3350( var_1, maps\cliffhanger_code::_ID48501 );
    _ID43691::main();
    thread maps\cliffhanger_code::_ID54287();
    thread maps\cliffhanger_code::_ID52966();
    thread maps\cliffhanger_lighting::_ID43891();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
    {
        thread _ID44925();
        return 1;
    }

    _ID49238::_ID19930();
    _ID45560();
    _ID49238::_ID47777();
}

_ID45560()
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
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner1" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner3" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner4" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner5" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner6" );
    level._ID54170["beautiful_corner1"] = "cliffhanger";
    level._ID54170["beautiful_corner2"] = "cliffhanger_climbing_up";
    level._ID54170["beautiful_corner3"] = "cliffhanger_climbing_up";
    level._ID54170["beautiful_corner4"] = "cliffhanger_snowmobile";
    level._ID54170["beautiful_corner5"] = "cliffhanger_blizzard_heavy";
    level._ID54170["beautiful_corner6"] = "cliffhanger_snowmobile_int";
    level._ID50047["beautiful_corner1"] = "cliffhanger";
    level._ID50047["beautiful_corner2"] = "cliffhanger_climbing_up";
    level._ID50047["beautiful_corner3"] = "cliffhanger_climbing_up";
    level._ID50047["beautiful_corner4"] = "cliffhanger_snowmobile";
    level._ID50047["beautiful_corner5"] = "cliffhanger_blizzard_heavy";
    level._ID50047["beautiful_corner6"] = "cliffhanger_snowmobile_int";
    level._ID54462["beautiful_corner1"] = "";
    level._ID54462["beautiful_corner2"] = "";
    level._ID54462["beautiful_corner3"] = "";
    level._ID54462["beautiful_corner4"] = "";
    level._ID54462["beautiful_corner5"] = "";
    level._ID54462["beautiful_corner6"] = "";
    level._ID46504["beautiful_corner1"] = [];
    level._ID46504["beautiful_corner1"]["fstop"] = 2;
    level._ID46504["beautiful_corner1"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner1"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner1"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner2"] = [];
    level._ID46504["beautiful_corner2"]["fstop"] = 2;
    level._ID46504["beautiful_corner2"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner2"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner2"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner3"] = [];
    level._ID46504["beautiful_corner3"]["fstop"] = 2;
    level._ID46504["beautiful_corner3"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner3"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner3"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner4"] = [];
    level._ID46504["beautiful_corner4"]["fstop"] = 2;
    level._ID46504["beautiful_corner4"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner4"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner4"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner5"] = [];
    level._ID46504["beautiful_corner5"]["fstop"] = 2;
    level._ID46504["beautiful_corner5"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner5"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner5"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner6"] = [];
    level._ID46504["beautiful_corner6"]["fstop"] = 2;
    level._ID46504["beautiful_corner6"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner6"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner6"]["aperture_speed"] = 1;
    level._ID45957["beautiful_corner1"] = 90;
    level._ID45957["beautiful_corner2"] = 75;
    level._ID45957["beautiful_corner3"] = 75;
    level._ID45957["beautiful_corner4"] = 75;
    level._ID45957["beautiful_corner5"] = 75;
    level._ID45957["beautiful_corner6"] = 75;
    level._ID46778["beautiful_corner1"] = 10;
    level._ID46246["beautiful_corner1"] = 0;
    level._ID51913["beautiful_corner1"] = -0.5;
    level._ID46778["beautiful_corner2"] = 15;
    level._ID46246["beautiful_corner2"] = 0;
    level._ID51913["beautiful_corner2"] = -0.5;
    level._ID46778["beautiful_corner3"] = 15;
    level._ID46246["beautiful_corner3"] = 0;
    level._ID51913["beautiful_corner3"] = -0.5;
    level._ID46778["beautiful_corner4"] = 15;
    level._ID46246["beautiful_corner4"] = 0;
    level._ID51913["beautiful_corner4"] = -0.5;
    level._ID46778["beautiful_corner5"] = 15;
    level._ID46246["beautiful_corner5"] = 0;
    level._ID51913["beautiful_corner5"] = -0.5;
    level._ID46778["beautiful_corner6"] = 15;
    level._ID46246["beautiful_corner6"] = 0;
    level._ID51913["beautiful_corner6"] = -0.5;
    level._ID44344["beautiful_corner1"] = ::_ID48650;
    level._ID44344["beautiful_corner2"] = ::_ID43050;
    level._ID44344["beautiful_corner3"] = ::_ID43050;
    level._ID44344["beautiful_corner4"] = ::_ID54271;
    level._ID44344["beautiful_corner5"] = ::_ID45238;
    level._ID44344["beautiful_corner6"] = ::_ID45362;
}

_ID48650()
{
    _ID49359::_ID52175( 0.05 );
}

_ID43050()
{
    _ID49359::_ID52463( 0.05 );
}

_ID45238()
{
    _ID49359::_ID48147( 0.05 );
}

_ID54271()
{
    _ID49359::_ID52826( 0.05 );
}

_ID45362()
{
    _ID49359::_ID52826( 0.05 );
    waittillframeend;
    maps\cliffhanger_lighting::_ID45336( "cliffhanger_snowmobile_int", "cliffhanger_snowmobile_int", "cliffhanger_snowmobile_int" );
}

_ID44925()
{
    var_0 = 0;
    var_1 = var_0;
    var_2 = [ "none", "climbing_up", "light", "med", "hard", "extreme", "snowmobile" ];

    for (;;)
    {
        if ( level.player buttonpressed( "dpad_right" ) || level.player buttonpressed( "pgup" ) )
            var_1 = _ID42237::_ID37527( var_0 == var_2.size - 1, 0, var_0 + 1 );
        else if ( level.player buttonpressed( "dpad_left" ) || level.player buttonpressed( "pgdn" ) )
            var_1 = _ID42237::_ID37527( var_0 == 0, var_2.size - 1, var_0 - 1 );

        if ( var_0 != var_1 )
        {
            maps\cliffhanger_lighting::_ID53242( var_2[var_1], 1, 1 );
            var_0 = var_1;
            wait 0.1;
        }

        if ( level.player buttonpressed( "dpad_up" ) || level.player buttonpressed( "end" ) )
        {
            if ( isdefined( level._ID51628 ) )
                [[ _ID42237::_ID37527( level._ID51628, _ID49359::_ID48243, _ID49359::_ID47801 ) ]]( level.player, 0.05 );

            wait 0.1;
        }

        wait 0.05;
    }
}
