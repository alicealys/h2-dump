// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C4F9()
{
    level._id_AFC0 = 0.1;
    _id_D3B4();
    fx_init();
    _id_B968( "none" );
    thread _id_C802();
    level._id_B5E1 = ::_id_C81A;
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

_id_D4FA()
{
    var_0 = common_scripts\utility::spawn_tag_origin();
    var_1 = 0;

    for (;;)
    {
        if ( !maps\_utility::is_coop() && level._id_AC44 == 6 )
        {
            if ( !var_1 )
            {
                var_1 = 1;
                playfxontag( level._effect["particle_fog2"], var_0, "tag_origin" );
            }

            var_2 = self getplayerangles();
            var_0.origin = self.origin;
            var_0.angles = var_2;
        }
        else if ( var_1 )
        {
            stopfxontag( level._effect["particle_fog2"], var_0, "tag_origin" );
            var_1 = 0;
        }

        wait 0.05;
    }
}

_id_B37A()
{
    for (;;)
    {
        if ( maps\_utility::is_coop() )
            playfxontagforclients( level._effect["blizzard_main"], self, "tag_origin", self );
        else
            playfx( level._effect["blizzard_main"], maps\_utility::groundpos( self.origin ) + ( 0, 0, 86 ) );

        wait( level._id_AFC0 );
    }
}

_id_BFF4( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        switch ( level._id_AC44 )
        {
            case 0:
                level._id_AFC0 = 0.3;
                break;
            case 1:
                level._id_AFC0 = 0.08;
                break;
            case 2:
                level._id_AFC0 = 0.17;
                break;
            case 3:
                level._id_AFC0 = 0.3;
                break;
            case 4:
                level._id_AFC0 = 0.24;
                break;
            case 5:
                level._id_AFC0 = 0.14;
                break;
            case 6:
                level._id_AFC0 = 0.07;
                break;
        }
    }
    else
        level._id_AFC0 = var_0;
}

_id_BD89( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0.05;

    if ( var_0 > level._id_AFC0 )
    {
        while ( var_0 > level._id_AFC0 )
        {
            wait( level._id_AFC0 );
            var_2 = level._id_AFC0 + var_1;
            level._id_AFC0 = min( var_2, var_0 );
        }
    }
    else
    {
        while ( var_0 < level._id_AFC0 )
        {
            wait( level._id_AFC0 );
            var_2 = level._id_AFC0 - var_1;
            level._id_AFC0 = max( var_2, var_0 );
        }
    }
}

fx_init()
{
    setsaveddvar( "r_outdoorfeather", "32" );
    level._effect["blizzard_level_0"] = loadfx( "fx/misc/blank" );
    level._effect["blizzard_level_1"] = loadfx( "fx/sand/sand_light" );
    level._effect["blizzard_level_2"] = loadfx( "fx/sand/sand_medium_2" );
    level._effect["blizzard_level_3"] = loadfx( "fx/sand/sand_medium_2" );
    level._effect["blizzard_level_4"] = loadfx( "fx/sand/sand_medium_2" );
    level._effect["blizzard_level_5"] = loadfx( "fx/sand/sand_extreme" );
    level._effect["blizzard_level_6"] = loadfx( "fx/sand/sand_extreme" );
    level._effect["blizzard_level_7"] = loadfx( "fx/sand/sand_aftermath" );
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
    maps\_utility::vision_set_fog_changes( "payback", var_0 );
    thread _id_C674( 0, 0 );
    thread _id_B877( 0, 1.0 );
    _func_45( 0 );
    common_scripts\utility::flag_set( "pause_blizzard_ground_fx" );
    _id_D2C3( var_0, 0 );
    _func_48();
}

_id_CB43( var_0 )
{
    _id_BEFF();
    thread _id_B90F( "none", var_0 );
    maps\_utility::vision_set_fog_changes( "payback", var_0 );
    thread _id_C674( 0, 0 );
    thread _id_B877( 0, 1.0 );
    _func_45( 0 );
    common_scripts\utility::flag_set( "pause_blizzard_ground_fx" );
    _id_D2C3( var_0, 0.25 );
    _func_48();
}

_id_BBE8( var_0 )
{
    _id_BEFF();
    thread _id_B90F( "light", var_0 );
    maps\_utility::vision_set_fog_changes( "payback", var_0 );
    thread _id_C674( 0, 0 );
    thread _id_B877( 0, 1.0 );
    _func_45( 0 );
    common_scripts\utility::flag_set( "pause_blizzard_ground_fx" );
    _id_D2C3( var_0, 0.45 );
    thread _id_D4AC( 1.0, var_0 );
}

_id_D5AE( var_0 )
{
    _id_BEFF();
    thread _id_B90F( "med", var_0 );
    maps\_utility::vision_set_fog_changes( "payback_medium", var_0 );
    thread _id_C674( var_0, 4500 );
    thread _id_B877( var_0, 0.5 );
    _func_45( 0 );
    common_scripts\utility::flag_set( "pause_blizzard_ground_fx" );
    _id_D2C3( var_0, 0.5 );
}

_id_BC13( var_0 )
{
    _id_BEFF();
    thread _id_B90F( "hard", var_0 );
    maps\_utility::vision_set_fog_changes( "payback_heavy", var_0 );
    var_1 = 1;
    thread _id_D4AC( var_1, var_0 );
    thread _id_C674( var_0, 0 );
    thread _id_B877( var_0, 0 );
    _func_45( 0 );
    _id_D2C3( var_0, 0.7 );
}

_id_CE01( var_0, var_1 )
{
    _id_BEFF();
    thread _id_B90F( "extreme", var_0 );
    var_2 = 1;
    thread _id_D4AC( var_2, var_0 );
    thread _id_C674( var_0, 0 );
    thread _id_B877( var_0, 0 );
    _func_45( 0 );
    _id_D2C3( var_0, 0.7 );

    if ( !isdefined( var_1 ) )
        thread _id_B26B( var_0, 0.05 );
}

_id_D2D5( var_0, var_1 )
{
    wait( var_1 );
    maps\_utility::vision_set_fog_changes( "payback_heavy_fogonly", var_0 );
}

_id_B26B( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        wait( var_1 );

    wait( var_1 );
    maps\_utility::vision_set_fog_changes( "payback_heavy", var_0 );
}

_id_B2F8( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        wait( var_1 );

    maps\_utility::vision_set_fog_changes( "payback_heavy_sat", var_0 );
}

_id_B13C( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        wait( var_1 );

    maps\_utility::vision_set_changes( "payback_heavy_75", var_0 );
}

_id_CAB8( var_0 )
{
    _id_BEFF();
    thread _id_B90F( "extreme", var_0 );
    maps\_utility::vision_set_fog_changes( "payback_blackout", var_0 );
    var_1 = 1;
    thread _id_D4AC( var_1, var_0 );
    thread _id_C674( var_0, 0 );
    thread _id_B877( var_0, 0 );
    _func_45( 0 );
    _id_D2C3( var_0, 0.7 );
}

_id_ACDC( var_0 )
{
    _id_BEFF();
    thread _id_B90F( "aftermath", var_0 );
    maps\_utility::vision_set_fog_changes( "payback_heavy", var_0 );
    var_1 = 1;
    thread _id_D4AC( var_1, var_0 );
    thread _id_C674( var_0, 0 );
    thread _id_B877( var_0, 0.5 );
    _func_45( 0 );
    _id_D2C3( var_0, 0.7 );
}

_id_C674( var_0, var_1 )
{
    level notify( "blizzard_set_culldist" );
    level endon( "blizzard_set_culldist" );
    var_2 = 10000;
    var_3 = level._id_C7F1;

    if ( !isdefined( var_3 ) || var_3 == 0 )
        var_3 = var_2;

    if ( var_1 == 0 )
        var_1 = var_2;

    var_4 = 0;

    for ( var_5 = var_0 * 0.5; var_4 <= var_0; var_4 += _id_B1F6( level._id_C7F1 ) )
    {
        if ( var_0 > 0 )
        {
            if ( var_4 >= var_5 )
            {
                var_6 = ( var_4 - var_5 ) / ( var_0 - var_5 );
                level._id_C7F1 = var_3 + ( var_1 - var_3 ) * var_6;
            }
            else
                level._id_C7F1 = var_3;

            continue;
        }

        level._id_C7F1 = var_1;
    }

    if ( var_1 >= var_2 || var_1 == 0 )
    {
        level._id_C7F1 = 0;
        _id_B1F6( 0 );
    }
    else
    {
        for (;;)
        {
            level._id_C7F1 = var_1;
            _id_B1F6( var_1 );
        }
    }
}

_id_B1F6( var_0 )
{
    level notify( "blizzard_set_culldist_checked" );
    level endon( "blizzard_set_culldist" );
    level endon( "blizzard_set_culldist_checked" );
    var_1 = 0;
    var_2 = 0;

    if ( !isdefined( level._id_C41F ) )
        level._id_C41F = getentarray( "trig_enable_sandstorm_cull", "targetname" );

    while ( !var_1 )
    {
        if ( var_0 == 0 )
            var_1 = 1;
        else
        {
            if ( isdefined( level.player._id_C41F ) && level.player istouching( level.player._id_C41F ) )
                var_1 = _id_AE56( level.player._id_C41F );
            else
            {
                foreach ( var_4 in level._id_C41F )
                {
                    if ( ( !isdefined( level.player._id_C41F ) || var_4 != level.player._id_C41F ) && level.player istouching( var_4 ) )
                    {
                        var_1 = _id_AE56( var_4 );
                        level.player._id_C41F = var_4;
                        break;
                    }
                }
            }

            if ( !var_1 )
                setculldist( 0 );
        }

        var_2 += 0.05;
        wait 0.05;
    }

    setculldist( var_0 );
    return var_2;
}

_id_AE56( var_0 )
{
    var_1 = 0;

    if ( isdefined( var_0.target ) )
    {
        var_2 = common_scripts\utility::getstruct( var_0.target, "targetname" );

        if ( isdefined( var_2 ) )
        {
            var_3 = anglestoforward( level.player getplayerangles() );
            var_4 = vectornormalize( var_2.origin - level.player.origin );

            if ( vectordot( var_3, var_4 ) < 0.6 )
                var_1 = 1;
        }
    }
    else
        var_1 = 1;

    return var_1;
}

_id_B877( var_0, var_1 )
{
    self notify( "blizzard_set_shadowquality" );
    self endon( "blizzard_set_shadowquality" );
    var_2 = level._id_C3C3;

    if ( !isdefined( var_2 ) )
        var_2 = 1.0;

    var_3 = 1;
    var_4 = 0.25;

    for ( var_5 = 0; var_5 <= var_0; var_5 += 0.05 )
    {
        if ( var_0 > 0 )
        {
            var_6 = var_5 / var_0;
            level._id_C3C3 = var_2 + ( var_1 - var_2 ) * var_6;
        }
        else
            level._id_C3C3 = var_1;

        var_3 = 0.25 + level._id_C3C3 * 0.75;
        var_4 = 0.1 + level._id_C3C3 * 0.15;
        wait 0.05;

        if ( int( var_5 ) != int( var_5 + 0.05 ) )
        {
            setsaveddvar( "sm_sunShadowScale", var_3 );
            setsaveddvar( "sm_sunSampleSizeNear", var_4 );
        }
    }

    setsaveddvar( "sm_sunShadowScale", var_3 );
    setsaveddvar( "sm_sunSampleSizeNear", var_4 );
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
    level._effect["blizzard_main"] = level._effect["blizzard_level_" + level._id_AC44];
    thread _id_BFF4();
}

_id_B0B2( var_0 )
{
    switch ( var_0 )
    {
        case "none":
            return 0;
        case "light":
            return 1;
        case "med":
            return 3;
        case "hard":
            return 5;
        case "extreme":
            return 6;
        case "aftermath":
            return 7;
    }
}

_id_D2C3( var_0, var_1, var_2 )
{
    var_3 = self;

    if ( !isplayer( var_3 ) )
        var_3 = level.player;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( !isdefined( var_2 ) )
        level._id_C83F = var_1;

    if ( var_1 > 0 )
        setsaveddvar( "r_fog_depthhack_scale", "0.5" );
    else
        setsaveddvar( "r_fog_depthhack_scale", "1" );

    var_4 = _id_C5D9( var_3 );
    var_4.x = 0;
    var_4.y = 0;
    var_4 setshader( "overlay_sandstorm", 640, 480 );
    var_4.sort = 50;
    var_4.lowresbackground = 1;
    var_4.alignx = "left";
    var_4.aligny = "top";
    var_4.horzalign = "fullscreen";
    var_4.vertalign = "fullscreen";
    var_4.alpha = level._id_D2C3;
    var_4 fadeovertime( var_0 );
    var_4.alpha = var_1;
    level._id_D2C3 = var_1;
}

_id_B483( var_0 )
{
    if ( !isdefined( var_0 ) || !var_0 )
    {
        var_1 = self;

        if ( !isplayer( var_1 ) )
            var_1 = level.player;

        var_2 = _id_C5D9( var_1 );
        var_2 destroy();
        return;
    }

    _id_D2C3( var_0, 0 );
}

_id_C5D9( var_0 )
{
    if ( !isdefined( var_0._id_D19E ) )
        var_0._id_D19E = newclienthudelem( var_0 );

    return var_0._id_D19E;
}

_id_B5DC()
{
    var_0 = [];
    wait 0.1;

    for (;;)
    {
        common_scripts\utility::flag_wait( "pause_blizzard_ground_fx" );

        foreach ( var_2 in var_0 )
            var_2 common_scripts\utility::pauseeffect();

        common_scripts\utility::flag_waitopen( "pause_blizzard_ground_fx" );

        foreach ( var_2 in var_0 )
            var_2 maps\_utility::restarteffect();
    }
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
