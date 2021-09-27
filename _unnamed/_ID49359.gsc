// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50425()
{
    thread _unknown_000E();
    _unknown_0039();
    _unknown_0058();
    _unknown_0095( "none" );
    thread _unknown_004C();
    level._ID51628 = 0;
    level._ID46561 = ::_unknown_025E;
}

blizzard_monitor_edge_detect()
{
    var_0 = 0.05;

    for (;;)
    {
        if ( _func_039( "r_useCheatPostFX" ) != "Edge Detect" )
        {
            while ( _func_039( "r_useCheatPostFX" ) != "Edge Detect" )
                waittillframeend;

            var_1 = level._ID46419;
            maps\cliffhanger_lighting::_ID53242( "light", var_0, var_0 );
            _ID42407::_ID32515( "cliffhanger_blizzard_light", var_0 );
            thread _unknown_0144( 0, 0 );
            _ID42407::_ID14689( "cliffhanger_blizzard_light", var_0 );
            wait(var_0);
            maps\cliffhanger_lighting::_ID53242( var_1, var_0, var_0 );
            wait(var_0);
        }
        else
        {
            while ( _func_039( "r_useCheatPostFX" ) == "Edge Detect" )
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
    if ( !_func_02F( level._ID805 ) )
        level waittill( "level.players initialized" );

    _ID42237::_ID3350( level._ID805, ::_unknown_00EF );
    thread _unknown_02AB();
}

_ID45946()
{
    for (;;)
    {
        if ( _ID42407::_ID20495() )
            _func_15D( level._ID1426["blizzard_main"], self, "tag_origin", self );
        else
            _func_156( level._ID1426["blizzard_main"], self._ID740 );

        wait 0.3;
    }
}

_ID15203()
{
    _func_0DB( "r_outdoorfeather", "128" );
    level._ID1426["blizzard_level_0"] = _func_155( "fx/misc/blank" );
    level._ID1426["blizzard_level_1"] = _func_155( "fx/snow/snow_climbing" );
    level._ID1426["blizzard_level_2"] = _func_155( "fx/snow/snow_light" );
    level._ID1426["blizzard_level_3"] = _func_155( "fx/snow/snow_light" );
    level._ID1426["blizzard_level_4"] = _func_155( "fx/snow/snow_light" );
    level._ID1426["blizzard_level_5"] = _func_155( "fx/snow/snow_medium" );
    level._ID1426["blizzard_level_6"] = _func_155( "fx/snow/snow_heavy" );
    level._ID1426["blizzard_level_7"] = _func_155( "fx/snow/snow_extreme" );
    level._ID1426["blizzard_level_8"] = _func_155( "fx/snow/snow_heavy_building" );
    var_0 = _func_046();
    level._ID47112 = ( var_0[0], var_0[1], var_0[2] );
    level._ID46787 = 1.0;
    level._ID53955 = 0;
}

_ID47464( var_0 )
{
    level._ID44100 = _unknown_02C2( var_0 );
    _unknown_02BB();
}

_ID44973( var_0 )
{
    _unknown_03D4();
    thread _unknown_02AA( "none", var_0 );
    _func_188( 6552, 25874, level._ID44355["r"], level._ID44355["g"], level._ID44355["b"], 1, var_0 );
    _ID42407::_ID32515( "cliffhanger", var_0 );
    thread _unknown_02B3( 0, 0 );
    _func_045( 0 );
    _ID42237::_ID14402( "pause_blizzard_ground_fx" );
    _unknown_0331( var_0, 0 );
    _func_048();
}

_ID52035( var_0 )
{
    _unknown_0426();
    thread _unknown_02FD( "none", var_0 );
    _func_188( 100, 27955, level._ID44355["r"], level._ID44355["g"], level._ID44355["b"], 0.57, var_0 );
    _ID42407::_ID32515( "cliffhanger", var_0 );
    thread _unknown_0307( 0, 0 );
    _func_045( 0 );
    _ID42237::_ID14402( "pause_blizzard_ground_fx" );
    _unknown_0388( var_0, 0.25 );
    _func_048();
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
    _func_08E( var_1 );
}

_ID54444( var_0, var_1 )
{
    level notify( "blizzard_set_sunlight" );
    level endon( "blizzard_set_sunlight" );
    var_2 = _func_0C1( var_1 * 20 );
    var_3 = var_0 - level._ID46787;
    var_4 = var_3 / var_2;

    while ( var_2 )
    {
        level._ID46787 = level._ID46787 + var_4;
        var_5 = level._ID47112 * level._ID46787;
        _func_047( var_5[0], var_5[1], var_5[2] );
        var_2--;
        wait 0.05;
    }

    level._ID46787 = var_0;
    var_5 = level._ID47112 * level._ID46787;
    _func_047( var_5[0], var_5[1], var_5[2] );
}

_ID47375( var_0, var_1 )
{
    level notify( "blizzard_level_change" );
    level endon( "blizzard_level_change" );
    var_2 = _unknown_0466( var_0 );

    if ( level._ID44100 > var_2 )
    {
        var_3 = level._ID44100 - var_2;
        var_1 /= var_3;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            wait(var_1);
            level._ID44100--;
            _unknown_0479();
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
            _unknown_049E();
        }
    }
}

_ID49387()
{
    if ( _func_03A( "blizzard_fx_debug" ) == 1 )
        _func_19E( "blizzard fx transition to level :  " + level._ID44100 );

    level._ID1426["blizzard_main"] = level._ID1426["blizzard_level_" + level._ID44100];
}

_ID45234( var_0 )
{
    switch ( var_0 )
    {

    }

    case "heavy_building":
    case "climbing_up":
    case "extreme":
    case "med":
    case "light":
    case "snowmobile":
    case "hard":
    case "climbing":
    case "none":
}

_ID53955( var_0, var_1, var_2 )
{
    var_3 = self;

    if ( !_func_1B3( var_3 ) )
        var_3 = level._ID794;

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    if ( var_0 > 0 && var_0 < 8 )
        var_0 = 8;

    if ( !_func_02F( var_2 ) )
        level._ID51263 = var_1;

    thread _ID42407::_ID22175( "r_ratioMask", var_1, var_0 );
    level._ID53955 = var_1;
}

_ID46211( var_0 )
{
    _unknown_0581( var_0, 0 );
}

_ID49741( var_0, var_1, var_2 )
{
    var_0._ID1331 = 0;
    var_0._ID44 = "left";
    var_0._ID499 = "fullscreen";
    _unknown_05DE( var_0, var_1, var_2 );
}

_ID50814( var_0, var_1, var_2 )
{
    var_0._ID1331 = 640;
    var_0._ID44 = "right";
    var_0._ID499 = "fullscreen";
    _unknown_0602( var_0, var_1, var_2 );
}

_ID51904( var_0, var_1 )
{
    var_0._ID1331 = 320;
    var_0._ID44 = "center";
    var_0._ID499 = "fullscreen";
    _unknown_0626( var_0, 640, var_1 );
}

_ID54714( var_0, var_1, var_2 )
{
    var_0._ID4892 = var_1;
    var_0._ID1339 = -240;
    var_0._ID45 = "middle";
    var_0._ID612 = 1;
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 1;
    var_0 _meth_80D3( var_2, var_1, 480 );
}

_ID43493( var_0 )
{
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0._ID612 = 1;
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 0;
}

_ID50649( var_0 )
{
    if ( !_func_02F( var_0._ID43735 ) )
    {

    }

    return var_0._ID43735;
}

_ID43842()
{
    level._ID794 endon( "snowgogglesOff" );

    for (;;)
    {
        self waittill( "flashed" );

        if ( _func_02F( self._ID14516 ) )
        {
            var_0 = self._ID14516 - _func_03D() / 1000;

            if ( var_0 > 0.5 )
            {
                var_0 -= 0.5;
                _func_032( "ui_snowgogglesfade", 1 );
                wait(var_0);
                _func_032( "ui_snowgogglesfade", 0 );
            }
        }
    }
}

_ID47801( var_0, var_1, var_2 )
{
    if ( _func_02F( var_2 ) && var_2 )
        _func_032( "ui_snowgoggles", 4 );
    else
        _func_032( "ui_snowgoggles", 1 );

    level._ID51628 = 1;
    level._ID794 notify( "snowgogglesOff" );
    var_0 thread _unknown_07BB();
    var_0 thread _unknown_0748();
    var_0 _meth_80A1( "goggles_wear_plr" );
    thread maps\cliffhanger_lighting::_ID48518();
}

_ID48243( var_0, var_1 )
{
    _func_032( "ui_snowgoggles", 2 );
    level._ID51628 = 0;
    level._ID794 notify( "snowgogglesOff" );
    var_0 _meth_80A1( "goggles_remove_plr" );

    if ( _func_02F( level._ID44988 ) )
        level._ID44988 _meth_80B7();

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
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2 _ID42237::_ID26402();
        }

        var_clear_5
        var_clear_3
        _ID42237::_ID14426( "pause_blizzard_ground_fx" );
        var_4 = _func_03D() * 0.001;
        var_5 = var_0;

        for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
        {
            var_2 = var_5[var_6];
            var_2._ID40005["delay"] = var_4;
            var_2 _ID42407::_ID29840();
        }

        var_clear_1
        var_clear_0
    }
}

_ID45766()
{
    level._ID794 endon( "snowgogglesOff" );
    _ID42237::_ID14388( "fade_to_death" );
    _ID42237::_ID14413( "fade_to_death" );
    _func_032( "ui_snowgogglesfade", 1 );
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

    if ( !_func_02F( var_3 ) )
        var_3 = 1;

    if ( _func_125( var_1, "exterior" ) )
    {
        _unknown_0835( 1, 1 - var_0 * var_3, 1 );
        return;
    }

    if ( _func_125( var_2, "exterior" ) )
        _unknown_0848( 1, var_0 * var_3, 1 );
}
