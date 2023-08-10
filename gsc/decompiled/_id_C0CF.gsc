// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C4F9()
{
    thread blizzard_monitor_edge_detect();
    _id_D3B4();
    fx_init();
    _id_B968( "none" );
    thread _id_C802();
    level._id_C9AC = 0;
    level._id_B5E1 = ::_id_C81A;
}

blizzard_monitor_edge_detect()
{
    var_0 = 0.05;

    for (;;)
    {
        if ( getdvar( "r_useCheatPostFX" ) != "Edge Detect" )
        {
            while ( getdvar( "r_useCheatPostFX" ) != "Edge Detect" )
                waitframe();

            var_1 = level._id_B553;
            maps\cliffhanger_lighting::_id_CFFA( "light", var_0, var_0 );
            maps\_utility::set_vision_set( "cliffhanger_blizzard_light", var_0 );
            thread _id_C674( 0, 0 );
            maps\_utility::fog_set_changes( "cliffhanger_blizzard_light", var_0 );
            wait( var_0 );
            maps\cliffhanger_lighting::_id_CFFA( var_1, var_0, var_0 );
            wait( var_0 );
        }
        else
        {
            while ( getdvar( "r_useCheatPostFX" ) == "Edge Detect" )
                waitframe();

            maps\cliffhanger_lighting::_id_CFFA( level._id_B553, var_0, var_0 );
            wait( var_0 );
        }

        waitframe();
    }
}

_id_D3B4()
{
    common_scripts\utility::flag_init( "pause_blizzard_ground_fx" );
}

_id_C802()
{
    if ( !isdefined( level.players ) )
        level waittill( "level.players initialized" );

    common_scripts\utility::array_thread( level.players, ::_id_B37A );
    thread _id_B5DC();
}

_id_B37A()
{
    for (;;)
    {
        if ( maps\_utility::is_coop() )
            playfxontagforclients( level._effect["blizzard_main"], self, "tag_origin", self );
        else
            playfx( level._effect["blizzard_main"], self.origin );

        wait 0.3;
    }
}

fx_init()
{
    setsaveddvar( "r_outdoorfeather", "128" );
    level._effect["blizzard_level_0"] = loadfx( "fx/misc/blank" );
    level._effect["blizzard_level_1"] = loadfx( "fx/snow/snow_climbing" );
    level._effect["blizzard_level_2"] = loadfx( "fx/snow/snow_light" );
    level._effect["blizzard_level_3"] = loadfx( "fx/snow/snow_light" );
    level._effect["blizzard_level_4"] = loadfx( "fx/snow/snow_light" );
    level._effect["blizzard_level_5"] = loadfx( "fx/snow/snow_medium" );
    level._effect["blizzard_level_6"] = loadfx( "fx/snow/snow_heavy" );
    level._effect["blizzard_level_7"] = loadfx( "fx/snow/snow_extreme" );
    level._effect["blizzard_level_8"] = loadfx( "fx/snow/snow_heavy_building" );
    var_0 = _func_46();
    level._id_B808 = ( var_0[0], var_0[1], var_0[2] );
    level._id_B6C3 = 1.0;
    level._id_D2C3 = 0;
}

_id_B968( var_0 )
{
    level._id_AC44 = _id_B0B2( var_0 );
    _id_C0EB();
}

_id_AFAD( var_0 )
{
    _id_BEFF();
    thread _id_B90F( "none", var_0 );
    setexpfog( 6552, 25874, level._id_AD43["r"], level._id_AD43["g"], level._id_AD43["b"], 1, var_0 );
    maps\_utility::set_vision_set( "cliffhanger", var_0 );
    thread _id_C674( 0, 0 );
    _func_45( 0 );
    common_scripts\utility::flag_set( "pause_blizzard_ground_fx" );
    _id_D2C3( var_0, 0 );
    _func_48();
}

_id_CB43( var_0 )
{
    _id_BEFF();
    thread _id_B90F( "none", var_0 );
    setexpfog( 100, 27955, level._id_AD43["r"], level._id_AD43["g"], level._id_AD43["b"], 0.57, var_0 );
    maps\_utility::set_vision_set( "cliffhanger", var_0 );
    thread _id_C674( 0, 0 );
    _func_45( 0 );
    common_scripts\utility::flag_set( "pause_blizzard_ground_fx" );
    _id_D2C3( var_0, 0.25 );
    _func_48();
}

_id_CBCF( var_0, var_1 )
{
    maps\cliffhanger_lighting::_id_CFFA( "climbing", var_0, var_1 );
}

_id_CCEF( var_0, var_1 )
{
    maps\cliffhanger_lighting::_id_CFFA( "climbing_up", var_0, var_1 );
}

_id_CE5A( var_0, var_1 )
{
    maps\cliffhanger_lighting::_id_CFFA( "snowmobile", var_0, var_1 );
}

_id_BBE8( var_0, var_1 )
{
    maps\cliffhanger_lighting::_id_CFFA( "light", var_0, var_1 );
}

_id_D5AE( var_0, var_1 )
{
    maps\cliffhanger_lighting::_id_CFFA( "med", var_0, var_1 );
}

_id_BC13( var_0, var_1 )
{
    maps\cliffhanger_lighting::_id_CFFA( "hard", var_0, var_1 );
}

_id_CE01( var_0, var_1 )
{
    maps\cliffhanger_lighting::_id_CFFA( "extreme", var_0, var_1 );
}

_id_C8DE( var_0, var_1 )
{
    maps\cliffhanger_lighting::_id_CFFA( "heavy_building", var_0, var_1 );
}

_id_C674( var_0, var_1 )
{
    level notify( "blizzard_set_culldist" );
    level endon( "blizzard_set_culldist" );
    wait( var_0 );
    setculldist( var_1 );
}

_id_D4AC( var_0, var_1 )
{
    level notify( "blizzard_set_sunlight" );
    level endon( "blizzard_set_sunlight" );
    var_2 = int( var_1 * 20 );
    var_3 = var_0 - level._id_B6C3;
    var_4 = var_3 / var_2;

    while ( var_2 )
    {
        level._id_B6C3 += var_4;
        var_5 = level._id_B808 * level._id_B6C3;
        _func_47( var_5[0], var_5[1], var_5[2] );
        var_2--;
        wait 0.05;
    }

    level._id_B6C3 = var_0;
    var_5 = level._id_B808 * level._id_B6C3;
    _func_47( var_5[0], var_5[1], var_5[2] );
}

_id_B90F( var_0, var_1 )
{
    level notify( "blizzard_level_change" );
    level endon( "blizzard_level_change" );
    var_2 = _id_B0B2( var_0 );

    if ( level._id_AC44 > var_2 )
    {
        var_3 = level._id_AC44 - var_2;
        var_1 /= var_3;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            wait( var_1 );
            level._id_AC44--;
            _id_C0EB();
        }
    }

    if ( level._id_AC44 < var_2 )
    {
        var_3 = var_2 - level._id_AC44;
        var_1 /= var_3;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            wait( var_1 );
            level._id_AC44++;
            _id_C0EB();
        }
    }
}

_id_C0EB()
{
    if ( getdvarint( "blizzard_fx_debug" ) == 1 )
        iprintln( "blizzard fx transition to level :  " + level._id_AC44 );

    level._effect["blizzard_main"] = level._effect["blizzard_level_" + level._id_AC44];
}

_id_B0B2( var_0 )
{
    switch ( var_0 )
    {
        case "none":
            return 0;
        case "climbing":
            return 1;
        case "climbing_up":
            return 2;
        case "snowmobile":
            return 3;
        case "light":
            return 4;
        case "med":
            return 5;
        case "hard":
            return 6;
        case "extreme":
            return 7;
        case "heavy_building":
            return 8;
    }
}

_id_D2C3( var_0, var_1, var_2 )
{
    var_3 = self;

    if ( !isplayer( var_3 ) )
        var_3 = level.player;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( var_0 > 0 && var_0 < 8 )
        var_0 = 8;

    if ( !isdefined( var_2 ) )
        level._id_C83F = var_1;

    thread maps\_utility::lerp_saveddvar( "r_ratioMask", var_1, var_0 );
    level._id_D2C3 = var_1;
}

_id_B483( var_0 )
{
    _id_D2C3( var_0, 0 );
}

_id_C24D( var_0, var_1, var_2 )
{
    var_0.x = 0;
    var_0.alignx = "left";
    var_0.horzalign = "fullscreen";
    _id_D5BA( var_0, var_1, var_2 );
}

_id_C67E( var_0, var_1, var_2 )
{
    var_0.x = 640;
    var_0.alignx = "right";
    var_0.horzalign = "fullscreen";
    _id_D5BA( var_0, var_1, var_2 );
}

_id_CAC0( var_0, var_1 )
{
    var_0.x = 320;
    var_0.alignx = "center";
    var_0.horzalign = "fullscreen";
    _id_D5BA( var_0, 640, var_1 );
}

_id_D5BA( var_0, var_1, var_2 )
{
    var_0.basewidth = var_1;
    var_0.y = -240;
    var_0.aligny = "middle";
    var_0.lowresbackground = 1;
    var_0.vertalign = "fullscreen";
    var_0.alpha = 1;
    var_0 setshader( var_2, var_1, 480 );
}

_id_A9E5( var_0 )
{
    var_0.x = 0;
    var_0.y = 0;
    var_0.lowresbackground = 1;
    var_0.alignx = "left";
    var_0.aligny = "top";
    var_0.horzalign = "fullscreen";
    var_0.vertalign = "fullscreen";
    var_0.alpha = 0;
}

_id_C5D9( var_0 )
{
    if ( !isdefined( var_0._id_AAD7 ) )
    {

    }

    return var_0._id_AAD7;
}

_id_AB42()
{
    level.player endon( "snowgogglesOff" );

    for (;;)
    {
        self waittill( "flashed" );

        if ( isdefined( self.flashendtime ) )
        {
            var_0 = ( self.flashendtime - gettime() ) / 1000;

            if ( var_0 > 0.5 )
            {
                var_0 -= 0.5;
                setomnvar( "ui_snowgogglesfade", 1 );
                wait( var_0 );
                setomnvar( "ui_snowgogglesfade", 0 );
            }
        }
    }
}

_id_BAB9( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) && var_2 )
        setomnvar( "ui_snowgoggles", 4 );
    else
        setomnvar( "ui_snowgoggles", 1 );

    level._id_C9AC = 1;
    level.player notify( "snowgogglesOff" );
    var_0 thread _id_B2C6();
    var_0 thread _id_AB42();
    var_0 playsound( "goggles_wear_plr" );
    thread maps\cliffhanger_lighting::_id_BD86();
}

_id_BC73( var_0, var_1 )
{
    setomnvar( "ui_snowgoggles", 2 );
    level._id_C9AC = 0;
    level.player notify( "snowgogglesOff" );
    var_0 playsound( "goggles_remove_plr" );

    if ( isdefined( level._id_AFBC ) )
        level._id_AFBC delete();

    level notify( "goggle_remove" );
}

_id_B5DC()
{
    var_0 = [];
    var_0 = maps\_utility::getfxarraybyid( "lighthaze_snow" );
    var_0 = common_scripts\utility::array_combine( var_0, maps\_utility::getfxarraybyid( "lighthaze_snow_headlights" ) );
    var_0 = common_scripts\utility::array_combine( var_0, maps\_utility::getfxarraybyid( "snow_spray_detail_runner400x400" ) );
    var_0 = common_scripts\utility::array_combine( var_0, maps\_utility::getfxarraybyid( "snow_spray_detail_runner0x400" ) );
    var_0 = common_scripts\utility::array_combine( var_0, maps\_utility::getfxarraybyid( "snow_spray_detail_runner400x0" ) );
    wait 0.1;

    for (;;)
    {
        common_scripts\utility::flag_wait( "pause_blizzard_ground_fx" );

        foreach ( var_2 in var_0 )
            var_2 common_scripts\utility::pauseeffect();

        common_scripts\utility::flag_waitopen( "pause_blizzard_ground_fx" );
        var_4 = gettime() * 0.001;

        foreach ( var_2 in var_0 )
        {
            var_2.v["delay"] = var_4;
            var_2 maps\_utility::restarteffect();
        }
    }
}

_id_B2C6()
{
    level.player endon( "snowgogglesOff" );
    common_scripts\utility::flag_clear( "fade_to_death" );
    common_scripts\utility::flag_wait( "fade_to_death" );
    setomnvar( "ui_snowgogglesfade", 1 );
    var_0 = 0.5;
    thread maps\_utility::lerp_saveddvar( "r_ratioMask", 0, var_0 );
}

_id_BEFF()
{
    level notify( "blizzard_changed" );
    level notify( "blizzard_set_sunlight" );
}

_id_C81A( var_0, var_1, var_2 )
{
    var_3 = level._id_C83F;

    if ( !isdefined( var_3 ) )
        var_3 = 1;

    if ( issubstr( var_1, "exterior" ) )
    {
        _id_D2C3( 1, ( 1 - var_0 ) * var_3, 1 );
        return;
    }

    if ( issubstr( var_2, "exterior" ) )
        _id_D2C3( 1, var_0 * var_3, 1 );
}
