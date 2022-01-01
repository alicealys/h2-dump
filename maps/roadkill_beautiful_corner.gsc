// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID43797::_ID521();
    _ID45890::_ID616();
    _ID53481::_ID616();
    _ID49192::_ID616();
    maps\roadkill_anim::_ID616();
    _ID46125::_ID616();
    _ID42237::_ID14400( "intro_started" );
    _ID42237::_ID14400( "ambush" );
    _ID42237::_ID14400( "roadkill_town_dialogue" );
    thread _ID51664();
    _ID42323::_ID616();
    maps\roadkill_aud::_ID616();
    maps\roadkill_lighting::_ID616();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
        return 1;

    _ID49238::_ID19930();
    thread _ID45560();
    _ID49238::_ID47777();
    return 1;
}

_ID51664()
{
    level waittill( "move_view_request" );
    var_0 = _ID42407::_ID16300( "explosion_air" );

    foreach ( var_2 in var_0 )
        var_2._ID22654 delete();
}

_ID45560()
{
    var_0 = spawn( "script_origin", ( -7760.75, 9455.78, 630.365 ) );
    var_0._ID65 = ( 2.02118, -173.394, 0 );
    var_0._ID1193 = "beautiful_corner_start";
    var_0 = spawn( "script_origin", ( -7760.75, 9455.78, 630.365 ) );
    var_0._ID65 = ( 2.02118, -173.394, 0 );
    var_0._ID1193 = "beautiful_corner_start_static";
    var_0 = spawn( "script_origin", ( -8287.64, 9440.2, 630.365 ) );
    var_0._ID65 = ( 2.02118, -173.394, 0 );
    var_0._ID1193 = "beautiful_corner_start_end";
    var_0 = spawn( "script_origin", ( -8287.64, 9440.2, 630.365 ) );
    var_0._ID65 = ( 2.02118, -173.394, 0 );
    var_0._ID1193 = "beautiful_corner_start_static_end";
    var_0 = spawn( "script_origin", ( -10560.9, 11256.9, 493.231 ) );
    var_0._ID65 = ( -9.18032, 50.1934, 0 );
    var_0._ID1193 = "beautiful_corner_start2";
    var_0 = spawn( "script_origin", ( -10560.9, 11256.9, 493.231 ) );
    var_0._ID65 = ( -9.18032, 50.1934, 0 );
    var_0._ID1193 = "beautiful_corner_start2_static";
    var_0 = spawn( "script_origin", ( -10145.2, 11549.9, 493.231 ) );
    var_0._ID65 = ( -11.7007, 54.5665, 0 );
    var_0._ID1193 = "beautiful_corner_start2_end";
    var_0 = spawn( "script_origin", ( -10145.2, 11549.9, 493.231 ) );
    var_0._ID65 = ( -11.7007, 54.5665, 0 );
    var_0._ID1193 = "beautiful_corner_start2_static_end";
    var_0 = spawn( "script_origin", ( -3177.33, 1644.84, 326.451 ) );
    var_0._ID65 = ( -21.4525, 101.183, 0 );
    var_0._ID1193 = "beautiful_corner_start3";
    var_0 = spawn( "script_origin", ( -3177.33, 1644.84, 326.451 ) );
    var_0._ID65 = ( -21.4525, 101.183, 0 );
    var_0._ID1193 = "beautiful_corner_start3_static";
    var_0 = spawn( "script_origin", ( -3153.15, 1571.7, 215.307 ) );
    var_0._ID65 = ( -22.725, 72.6216, 0 );
    var_0._ID1193 = "beautiful_corner_start3_end";
    var_0 = spawn( "script_origin", ( -3153.15, 1571.7, 215.307 ) );
    var_0._ID65 = ( -22.725, 72.6216, 0 );
    var_0._ID1193 = "beautiful_corner_start3_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start3" );
    level._ID54170["beautiful_corner_start"] = "roadkill_inside_school";
    level._ID54170["beautiful_corner_start2"] = "roadkill";
    level._ID54170["beautiful_corner_start3"] = "roadkill";
    level._ID50047["beautiful_corner_start"] = "roadkill_interior";
    level._ID50047["beautiful_corner_start2"] = "roadkill";
    level._ID50047["beautiful_corner_start3"] = "roadkill";
    level._ID54462["beautiful_corner_start"] = "";
    level._ID54462["beautiful_corner_start2"] = "";
    level._ID54462["beautiful_corner_start3"] = "";
    level._ID46504["beautiful_corner_start"] = [];
    level._ID46504["beautiful_corner_start"]["fstop"] = 2.8;
    level._ID46504["beautiful_corner_start"]["focus_distance"] = 2000;
    level._ID46504["beautiful_corner_start"]["focus_speed"] = 20;
    level._ID46504["beautiful_corner_start"]["aperture_speed"] = 20;
    level._ID46504["beautiful_corner_start2"] = [];
    level._ID46504["beautiful_corner_start2"]["fstop"] = 6;
    level._ID46504["beautiful_corner_start2"]["focus_distance"] = 3600;
    level._ID46504["beautiful_corner_start2"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start2"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start3"] = [];
    level._ID46504["beautiful_corner_start3"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start3"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start3"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start3"]["aperture_speed"] = 1;
    level._ID45957["beautiful_corner_start"] = 75;
    level._ID45957["beautiful_corner_start2"] = 77;
    level._ID45957["beautiful_corner_start3"] = 75;
    level._ID46778["beautiful_corner_start"] = 15;
    level._ID46246["beautiful_corner_start"] = 0;
    level._ID51913["beautiful_corner_start"] = -0.5;
    level._ID46778["beautiful_corner_start2"] = 15;
    level._ID46246["beautiful_corner_start2"] = 0;
    level._ID51913["beautiful_corner_start2"] = -0.5;
    level._ID46778["beautiful_corner_start3"] = 15;
    level._ID46246["beautiful_corner_start3"] = 0;
    level._ID51913["beautiful_corner_start3"] = -0.5;
}
