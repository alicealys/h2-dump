// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50425()
{
    thread blizzard_monitor_edge_detect();
    _ID54196();
    _ID15203();
    _ID47464( "none" );
    thread _ID51202();
    level._ID51628 = 0;
    level._ID46561 = ::_ID51226;
}

blizzard_monitor_edge_detect()
{
    var_0 = 0.05;

    for (;;)
    {
        if ( getdvar( "r_useCheatPostFX" ) != "Edge Detect" )
        {
            while ( getdvar( "r_useCheatPostFX" ) != "Edge Detect" )
                waittillframeend;

            var_1 = level._ID46419;
            maps\cliffhanger_lighting::_ID53242( "light", var_0, var_0 );
            _ID42407::_ID32515( "cliffhanger_blizzard_light", var_0 );
            thread _ID50804( 0, 0 );
            _ID42407::_ID14689( "cliffhanger_blizzard_light", var_0 );
            wait(var_0);
            maps\cliffhanger_lighting::_ID53242( var_1, var_0, var_0 );
            wait(var_0);
        }
        else
        {
            while ( getdvar( "r_useCheatPostFX" ) == "Edge Detect" )
                waittillframeend;

            maps\cliffhanger_lighting::_ID53242( level._ID46419, var_0, var_0 );
            wait(var_0);
        }

        waittillframeend;
    }
}

_ID54196()
{
    _ID42237::_ID14400( "pause_blizzard_ground_fx" );
}

_ID51202()
{
    if ( !isdefined( level._ID805 ) )
        level waittill( "level.players initialized" );

    _ID42237::_ID3350( level._ID805, ::_ID45946 );
    thread _ID46556();
}

_ID45946()
{
    for (;;)
    {
        if ( _ID42407::_ID20495() )
            playfxontagforclients( level._ID1426["blizzard_main"], self, "tag_origin", self );
        else
            playfx( level._ID1426["blizzard_main"], self.origin );

        wait 0.3;
    }
}

_ID15203()
{
    setsaveddvar( "r_outdoorfeather", "128" );
    level._ID1426["blizzard_level_0"] = loadfx( "fx/misc/blank" );
    level._ID1426["blizzard_level_1"] = loadfx( "fx/snow/snow_climbing" );
    level._ID1426["blizzard_level_2"] = loadfx( "fx/snow/snow_light" );
    level._ID1426["blizzard_level_3"] = loadfx( "fx/snow/snow_light" );
    level._ID1426["blizzard_level_4"] = loadfx( "fx/snow/snow_light" );
    level._ID1426["blizzard_level_5"] = loadfx( "fx/snow/snow_medium" );
    level._ID1426["blizzard_level_6"] = loadfx( "fx/snow/snow_heavy" );
    level._ID1426["blizzard_level_7"] = loadfx( "fx/snow/snow_extreme" );
    level._ID1426["blizzard_level_8"] = loadfx( "fx/snow/snow_heavy_building" );
    var_0 = _func_46();
    level._ID47112 = ( var_0[0], var_0[1], var_0[2] );
    level._ID46787 = 1.0;
    level._ID53955 = 0;
}

_ID47464( var_0 )
{
    level._ID44100 = _ID45234( var_0 );
    _ID49387();
}

_ID44973( var_0 )
{
    _ID48895();
    thread _ID47375( "none", var_0 );
    setexpfog( 6552, 25874, level._ID44355["r"], level._ID44355["g"], level._ID44355["b"], 1, var_0 );
    _ID42407::_ID32515( "cliffhanger", var_0 );
    thread _ID50804( 0, 0 );
    _func_45( 0 );
    _ID42237::_ID14402( "pause_blizzard_ground_fx" );
    _ID53955( var_0, 0 );
    _func_48();
}

_ID52035( var_0 )
{
    _ID48895();
    thread _ID47375( "none", var_0 );
    setexpfog( 100, 27955, level._ID44355["r"], level._ID44355["g"], level._ID44355["b"], 0.57, var_0 );
    _ID42407::_ID32515( "cliffhanger", var_0 );
    thread _ID50804( 0, 0 );
    _func_45( 0 );
    _ID42237::_ID14402( "pause_blizzard_ground_fx" );
    _ID53955( var_0, 0.25 );
    _func_48();
}

_ID52175( var_0, var_1 )
{
    maps\cliffhanger_lighting::_ID53242( "climbing", var_0, var_1 );
}

_ID52463( var_0, var_1 )
{
    maps\cliffhanger_lighting::_ID53242( "climbing_up", var_0, var_1 );
}

_ID52826( var_0, var_1 )
{
    maps\cliffhanger_lighting::_ID53242( "snowmobile", var_0, var_1 );
}

_ID48104( var_0, var_1 )
{
    maps\cliffhanger_lighting::_ID53242( "light", var_0, var_1 );
}

_ID54702( var_0, var_1 )
{
    maps\cliffhanger_lighting::_ID53242( "med", var_0, var_1 );
}

_ID48147( var_0, var_1 )
{
    maps\cliffhanger_lighting::_ID53242( "hard", var_0, var_1 );
}

_ID52737( var_0, var_1 )
{
    maps\cliffhanger_lighting::_ID53242( "extreme", var_0, var_1 );
}

_ID51422( var_0, var_1 )
{
    maps\cliffhanger_lighting::_ID53242( "heavy_building", var_0, var_1 );
}

_ID50804( var_0, var_1 )
{
    level notify( "blizzard_set_culldist" );
    level endon( "blizzard_set_culldist" );
    wait(var_0);
    setculldist( var_1 );
}

_ID54444( var_0, var_1 )
{
    level notify( "blizzard_set_sunlight" );
    level endon( "blizzard_set_sunlight" );
    var_2 = int( var_1 * 20 );
    var_3 = var_0 - level._ID46787;
    var_4 = var_3 / var_2;

    while ( var_2 )
    {
        level._ID46787 = level._ID46787 + var_4;
        var_5 = level._ID47112 * level._ID46787;
        _func_47( var_5[0], var_5[1], var_5[2] );
        var_2--;
        wait 0.05;
    }

    level._ID46787 = var_0;
    var_5 = level._ID47112 * level._ID46787;
    _func_47( var_5[0], var_5[1], var_5[2] );
}

_ID47375( var_0, var_1 )
{
    level notify( "blizzard_level_change" );
    level endon( "blizzard_level_change" );
    var_2 = _ID45234( var_0 );

    if ( level._ID44100 > var_2 )
    {
        var_3 = level._ID44100 - var_2;
        var_1 /= var_3;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            wait(var_1);
            level._ID44100--;
            _ID49387();
        }
    }

    if ( level._ID44100 < var_2 )
    {
        var_3 = var_2 - level._ID44100;
        var_1 /= var_3;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            wait(var_1);
            level._ID44100++;
            _ID49387();
        }
    }
}

_ID49387()
{
    if ( getdvarint( "blizzard_fx_debug" ) == 1 )
        iprintln( "blizzard fx transition to level :  " + level._ID44100 );

    level._ID1426["blizzard_main"] = level._ID1426["blizzard_level_" + level._ID44100];
}

_ID45234( var_0 )
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

_ID53955( var_0, var_1, var_2 )
{
    var_3 = self;

    if ( !isplayernumber( var_3 ) )
        var_3 = level.player;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( var_0 > 0 && var_0 < 8 )
        var_0 = 8;

    if ( !isdefined( var_2 ) )
        level._ID51263 = var_1;

    thread _ID42407::_ID22175( "r_ratioMask", var_1, var_0 );
    level._ID53955 = var_1;
}

_ID46211( var_0 )
{
    _ID53955( var_0, 0 );
}

_ID49741( var_0, var_1, var_2 )
{
    var_0.x = 0;
    var_0.alignx = "left";
    var_0.horzalign = "fullscreen";
    _ID54714( var_0, var_1, var_2 );
}

_ID50814( var_0, var_1, var_2 )
{
    var_0.x = 640;
    var_0.alignx = "right";
    var_0.horzalign = "fullscreen";
    _ID54714( var_0, var_1, var_2 );
}

_ID51904( var_0, var_1 )
{
    var_0.x = 320;
    var_0.alignx = "center";
    var_0.horzalign = "fullscreen";
    _ID54714( var_0, 640, var_1 );
}

_ID54714( var_0, var_1, var_2 )
{
    var_0._ID4892 = var_1;
    var_0.y = -240;
    var_0.aligny = "middle";
    var_0.lowresbackground = 1;
    var_0.vertalign = "fullscreen";
    var_0.alpha = 1;
    var_0 setshader( var_2, var_1, 480 );
}

_ID43493( var_0 )
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

_ID50649( var_0 )
{
    if ( !isdefined( var_0._ID43735 ) )
    {

    }

    return var_0._ID43735;
}

_ID43842()
{
    level.player endon( "snowgogglesOff" );

    for (;;)
    {
        self waittill( "flashed" );

        if ( isdefined( self._ID14516 ) )
        {
            var_0 = ( self._ID14516 - gettime() ) / 1000;

            if ( var_0 > 0.5 )
            {
                var_0 -= 0.5;
                setomnvar( "ui_snowgogglesfade", 1 );
                wait(var_0);
                setomnvar( "ui_snowgogglesfade", 0 );
            }
        }
    }
}

_ID47801( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) && var_2 )
        setomnvar( "ui_snowgoggles", 4 );
    else
        setomnvar( "ui_snowgoggles", 1 );

    level._ID51628 = 1;
    level.player notify( "snowgogglesOff" );
    var_0 thread _ID45766();
    var_0 thread _ID43842();
    var_0 playsound( "goggles_wear_plr" );
    thread maps\cliffhanger_lighting::_ID48518();
}

_ID48243( var_0, var_1 )
{
    setomnvar( "ui_snowgoggles", 2 );
    level._ID51628 = 0;
    level.player notify( "snowgogglesOff" );
    var_0 playsound( "goggles_remove_plr" );

    if ( isdefined( level._ID44988 ) )
        level._ID44988 delete();

    level notify( "goggle_remove" );
}

_ID46556()
{
    var_0 = [];
    var_0 = _ID42407::_ID16300( "lighthaze_snow" );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "lighthaze_snow_headlights" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "snow_spray_detail_runner400x400" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "snow_spray_detail_runner0x400" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID16300( "snow_spray_detail_runner400x0" ) );
    wait 0.1;

    for (;;)
    {
        _ID42237::_ID14413( "pause_blizzard_ground_fx" );

        foreach ( var_2 in var_0 )
            var_2 _ID42237::_ID26402();

        _ID42237::_ID14426( "pause_blizzard_ground_fx" );
        var_4 = gettime() * 0.001;

        foreach ( var_2 in var_0 )
        {
            var_2._ID40005["delay"] = var_4;
            var_2 _ID42407::_ID29840();
        }
    }
}

_ID45766()
{
    level.player endon( "snowgogglesOff" );
    _ID42237::_ID14388( "fade_to_death" );
    _ID42237::_ID14413( "fade_to_death" );
    setomnvar( "ui_snowgogglesfade", 1 );
    var_0 = 0.5;
    thread _ID42407::_ID22175( "r_ratioMask", 0, var_0 );
}

_ID48895()
{
    level notify( "blizzard_changed" );
    level notify( "blizzard_set_sunlight" );
}

_ID51226( var_0, var_1, var_2 )
{
    var_3 = level._ID51263;

    if ( !isdefined( var_3 ) )
        var_3 = 1;

    if ( issubstr( var_1, "exterior" ) )
    {
        _ID53955( 1, ( 1 - var_0 ) * var_3, 1 );
        return;
    }

    if ( issubstr( var_2, "exterior" ) )
        _ID53955( 1, var_0 * var_3, 1 );
}
