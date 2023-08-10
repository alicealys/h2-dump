// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

initialize()
{
    if ( getdvar( "beautiful_corner" ) != "1" && getdvar( "beautiful_corner_demo" ) != "1" && getdvar( "beautiful_corner_hdr_demo" ) != "1" && getdvar( "mission_select_cam" ) != "1" && getdvar( "beautiful_corner_security_cameras" ) != "1" )
    {
        cleanup();
        return 0;
    }

    level._id_A949 = [];
    level._id_D39A = [];
    level._id_C37F = [];
    level._id_D4BE = [];
    level._id_B5A8 = [];
    level._id_B385 = [];
    level._id_B6BA = [];
    level._id_B4A6 = [];
    level._id_CAC9 = [];
    level._id_AD38 = [];
    level._id_CEFA = [];
    level._id_C3F9 = 1;
    level._id_B899 = 0;
    level._id_C11D = undefined;
    level._id_AE3E = 0;
    level._id_C3E2 = 0;
    level._id_D37D = undefined;
    level._id_C30C = undefined;
    level._id_ACA0 = undefined;
    level._id_AE41 = getdvarfloat( "r_hdrSplitViewSDRPosition", 1.0 );
    level._id_C3D7 = [ "Off", "Split", "Dual" ];
    level._id_BCE1 = 2;
    setdvar( "r_hdrSplitViewSDR", level._id_C3D7[level._id_BCE1] );
    level._id_D2BD = 0.8;
    level._id_B8BA = [ level._id_D2BD, level._id_D2BD, level._id_D2BD ];
    level._id_AC2F = [ 0, level._id_D2BD, level._id_D2BD ];
    level._id_A86B = getdvar( "beautiful_corner_hdr_demo_show_indicators", "0" ) == "1";

    if ( !isdefined( level.player ) )
        level waittill( "level.players initialized" );

    level.player allowcrouch( 0 );
    _id_BB7D();
    return 1;
}

_id_BAA1()
{
    thread _id_AD6B();
    thread _id_D083();
    thread _id_A949();

    if ( getdvar( "r_hdrDisplaySupport" ) == "1" )
        setdvar( "r_hdrDisplaySupportEnabled", "1" );
}

cleanup()
{
    var_0 = getentarray( "beautiful_guy", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_AD6B()
{
    level.player takeallweapons();
    level.player disableoffhandweapons();

    if ( isdefined( level._id_C11D ) )
    {
        level.player giveweapon( level._id_C11D );
        level.player switchtoweapon( level._id_C11D );
    }

    level.player thread _id_CDBD();
    level.friendlyfiredisabled = 1;
    level.player enableinvulnerability();
}

_id_CDBD()
{
    var_0 = self getweaponslistall();
    self._id_D44A = [];

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( self._id_D44A[var_2] ) )
            self._id_D44A[var_2] = self getweaponammostock( var_2 );
    }

    for (;;)
    {
        foreach ( var_2 in var_0 )
            self setweaponammostock( var_2, self._id_D44A[var_2] );

        wait 1;
    }
}

_id_D083()
{
    var_0 = getentarray( "beautiful_guy", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_3 = var_2 maps\_shg_design_tools::actual_spawn();

        if ( !isdefined( var_3 ) )
            return;

        var_3 maps\_utility::make_hero();
        var_3 maps\_utility::ai_ignore_everything();
        var_3 maps\_utility::magic_bullet_shield();
        var_3.script_friendname = "none";

        if ( isdefined( level._id_C11D ) )
            var_3 maps\_utility::forceuseweapon( level._id_C11D, "primary" );

        if ( isdefined( var_2.script_noteworthy ) )
        {
            var_3.animname = "beautiful_guy";
            var_3 thread maps\_anim::anim_loop_solo( var_3, var_2.script_noteworthy, "stop_idle" );
        }
    }
}

_id_A949()
{
    _id_B1ED();
    _id_CB50();
    level._id_AB0B = level._id_A949.size > 1 && !level._id_AE3E;
    thread _id_B8DC();
    thread _id_C114();
    thread _id_CB1D();
}

_id_B1ED()
{
    var_0 = [ 0.0, 0.0, -60.0 ];

    foreach ( var_2 in level._id_A949 )
    {
        var_3 = getent( var_2, "targetname" );
        _id_BC00( var_3, var_0 );
        var_4 = getent( var_2 + "_static", "targetname" );
        _id_BC00( var_4, var_0 );
    }
}

_id_BC00( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( var_0.script_noteworthy ) )
        return;

    if ( var_0.script_noteworthy != "view_pos" )
        return;

    var_2 = spawnstruct();
    var_2.entity = var_0;
    var_2.forward = var_1[0];
    var_2.right = var_1[1];
    var_2.up = var_1[2];
    var_2 maps\_utility::translate_local();
}

_id_CB50()
{
    if ( level._id_A949.size <= 0 )
        return;

    common_scripts\utility::flag_init( "beautiful_view_transitioning" );
    common_scripts\utility::flag_clear( "beautiful_view_transitioning" );
    level.black_overlay = maps\_hud_util::create_client_overlay( "black", 1 );
    level.black_overlay.sort = 1000;
    level.player takeweapon( "beretta" );
    level.player takeweapon( "fraggrenade" );
    level.player takeweapon( "flash_grenade" );
    _id_BE58( level._id_A949[level._id_B899] );
    wait 0.05;
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", "0" );
    setsaveddvar( "actionSlotsHide", "1" );
    wait 0.5;
    level.player disableweapons();
    level.player freezecontrols( 1 );
    wait 1.0;
    _id_C189();
    _id_B875();
}

_id_B8DC()
{
    thread _id_AD83();

    for (;;)
    {
        level waittill( "move_view_request" );

        while ( common_scripts\utility::flag( "beautiful_view_transitioning" ) )
            wait 0.05;

        if ( level._id_D37D == "next" )
            _id_AEA3();
        else if ( level._id_D37D == "prev" )
            _id_D00D();

        _id_BDF7( level._id_A949[level._id_B899] );
    }
}

_id_BB7D()
{
    if ( !level._id_A86B )
        return;

    level._id_ACC1 = newclienthudelem( level.player );
    level._id_ACC1.x = 0;
    level._id_ACC1.y = 0;
    level._id_ACC1.sort = 51;
    level._id_ACC1.alignx = "right";
    level._id_ACC1.aligny = "bottom";
    level._id_ACC1.horzalign = "right";
    level._id_ACC1.vertalign = "bottom";
    level._id_ACC1.alpha = level._id_D2BD;
    level._id_ACC1 settext( "HDR" );
    level._id_ACC1.hidewheninmenu = 1;
    level._id_ACC1.fontscale = 2;
    level._id_ACC1.font = "default";
    level._id_AB94 = newclienthudelem( level.player );
    level._id_AB94.x = 0;
    level._id_AB94.y = 1;
    level._id_AB94.sort = 51;
    level._id_AB94.alignx = "left";
    level._id_AB94.aligny = "bottom";
    level._id_AB94.horzalign = "left";
    level._id_AB94.vertalign = "bottom";
    level._id_AB94.alpha = level._id_D2BD;
    level._id_AB94 settext( "SDR" );
    level._id_AB94.hidewheninmenu = 1;
    level._id_AB94.fontscale = 2;
    level._id_AB94.font = "default";
}

_id_B875()
{
    if ( !level._id_A86B )
        return;

    level._id_ACC1 fadeovertime( 0.5 );

    if ( level._id_AE41 < 0.9 || getdvar( "r_hdrSplitViewSDR" ) != "Split" )
        level._id_ACC1.alpha = level._id_B8BA[level._id_BCE1];
    else
        level._id_ACC1.alpha = 0;

    level._id_AB94 fadeovertime( 0.5 );

    if ( level._id_AE41 > 0.1 || getdvar( "r_hdrSplitViewSDR" ) != "Split" )
        level._id_AB94.alpha = level._id_AC2F[level._id_BCE1];
    else
        level._id_AB94.alpha = 0;

    level notify( "stop_fade_out_infobox" );
    thread _id_C330();
}

_id_C330()
{
    level endon( "stop_fade_out_infobox" );
    wait 5;
    level._id_ACC1 fadeovertime( 0.5 );
    level._id_ACC1.alpha = 0;
    level._id_AB94 fadeovertime( 0.5 );
    level._id_AB94.alpha = 0;
}

_id_C114()
{
    thread _id_ABD9();

    for (;;)
    {
        level waittill( "hdr_change_request" );

        if ( getdvar( "r_hdrDisplaySupportEnabled" ) == "1" )
        {
            var_0 = level._id_BCE1;

            if ( level._id_C30C == "prev" )
                level._id_BCE1 = common_scripts\utility::_id_D2F6( level._id_BCE1 - 1, 0, level._id_C3D7.size - 1 );
            else if ( level._id_C30C == "next" )
                level._id_BCE1 = common_scripts\utility::_id_D2F6( level._id_BCE1 + 1, 0, level._id_C3D7.size - 1 );

            setdvar( "r_hdrSplitViewSDR", level._id_C3D7[level._id_BCE1] );
            _id_B875();
        }
    }
}

_id_CB1D()
{
    thread _id_CC00();

    for (;;)
    {
        level waittill( "hdr_position_request" );

        if ( getdvar( "r_hdrDisplaySupportEnabled" ) == "1" && getdvar( "r_hdrSplitViewSDR" ) == "Split" )
        {
            if ( level._id_ACA0 == "next" )
                level._id_AE41 = clamp( level._id_AE41 + 0.01, 0, 1 );
            else if ( level._id_ACA0 == "prev" )
                level._id_AE41 = clamp( level._id_AE41 - 0.01, 0, 1 );

            setdvar( "r_hdrSplitViewSDRPosition", common_scripts\utility::tostring( level._id_AE41 ) );
            _id_B875();
        }
    }
}

_id_CC00()
{
    for (;;)
    {
        if ( level.player buttonpressed( "BUTTON_RSHLDR" ) || level.player buttonpressed( "PGUP" ) )
        {
            level._id_ACA0 = "next";
            level notify( "hdr_position_request" );
            wait 0.1;
        }
        else if ( level.player buttonpressed( "BUTTON_LSHLDR" ) || level.player buttonpressed( "PGDN" ) )
        {
            level._id_ACA0 = "prev";
            level notify( "hdr_position_request" );
            wait 0.1;
        }

        wait 0.05;
    }
}

_id_ABD9()
{
    for (;;)
    {
        if ( level.player buttonpressed( "DPAD_UP" ) || level.player buttonpressed( "UPARROW" ) )
        {
            level._id_C30C = "next";
            level notify( "hdr_change_request" );
            wait 0.5;
        }
        else if ( level.player buttonpressed( "DPAD_DOWN" ) || level.player buttonpressed( "DOWNARROW" ) )
        {
            level._id_C30C = "prev";
            level notify( "hdr_change_request" );
            wait 0.5;
        }

        wait 0.05;
    }
}

_id_B5F2()
{
    for (;;)
    {
        if ( level.player buttonpressed( "DPAD_LEFT" ) || level.player buttonpressed( "PGUP" ) )
        {
            if ( !level._id_AE3E )
                level._id_AB0B = !level._id_AB0B;
        }

        wait 0.05;
    }
}

_id_AD83()
{
    for (;;)
    {
        if ( level.player buttonpressed( "DPAD_RIGHT" ) || level.player buttonpressed( "RIGHTARROW" ) )
        {
            level._id_D37D = "next";
            level notify( "move_view_request" );
        }
        else if ( level.player buttonpressed( "DPAD_LEFT" ) || level.player buttonpressed( "LEFTARROW" ) )
        {
            level._id_D37D = "prev";
            level notify( "move_view_request" );
        }

        wait 0.05;
    }
}

_id_AEA3()
{
    for ( var_0 = undefined; !isdefined( var_0 ); var_0 = getent( var_1, "targetname" ) )
    {
        level._id_B899 = common_scripts\utility::_id_D2F6( level._id_B899 + 1, 0, level._id_A949.size - 1 );
        var_1 = level._id_A949[level._id_B899];

        if ( level._id_C3F9 )
            var_1 += "_static";
    }
}

_id_D00D()
{
    for ( var_0 = undefined; !isdefined( var_0 ); var_0 = getent( var_1, "targetname" ) )
    {
        level._id_B899 = common_scripts\utility::_id_D2F6( level._id_B899 - 1, 0, level._id_A949.size - 1 );
        var_1 = level._id_A949[level._id_B899];

        if ( level._id_C3F9 )
            var_1 += "_static";
    }
}

_id_C3B2()
{
    for (;;)
    {
        while ( !( level.player buttonpressed( "DPAD_DOWN" ) || level.player buttonpressed( "END" ) ) )
            wait 0.05;

        if ( !common_scripts\utility::flag( "beautiful_view_transitioning" ) )
        {
            level._id_C3F9 = !level._id_C3F9;
            _id_BDF7( level._id_A949[level._id_B899] );
        }

        wait 0.05;
    }
}

_id_BDF7( var_0 )
{
    common_scripts\utility::flag_set( "beautiful_view_transitioning" );
    _id_C7CB();
    _id_BE58( var_0 );
    wait 0.25;
    _id_C189();
    _id_B875();
    wait 0.25;
    common_scripts\utility::flag_clear( "beautiful_view_transitioning" );
}

_id_C189()
{
    wait 0.1;
    level.black_overlay fadeovertime( 0.3 );
    level.black_overlay.alpha = 0;

    if ( !level._id_C3F9 )
        level.player enableweapons();

    wait 0.3;

    if ( !level._id_C3F9 )
        level.player freezecontrols( 0 );

    level.player hidehud();
}

_id_C7CB()
{
    level.player showhud();
    level.player setstance( "stand" );
    level.black_overlay fadeovertime( 0.3 );
    level.black_overlay.alpha = 1;
    level.player disableweapons();
    wait 0.3;
    level.player freezecontrols( 1 );
    wait 0.1;
}

_id_BE58( var_0 )
{
    if ( level._id_D39A[var_0] != "" )
    {
        level maps\_utility::vision_set_fog_changes( level._id_D39A[var_0], 0 );
        level.player maps\_utility::vision_set_fog_changes( level._id_D39A[var_0], 0 );
    }

    if ( level._id_C37F[var_0] != "" )
        level.player lightset( level._id_C37F[var_0] );

    if ( level._id_D4BE[var_0] != "" )
        level.player _meth_849F( level._id_D4BE[var_0], 0 );

    if ( getdvar( "r_hdrDisplaySupportEnabled" ) == "1" )
    {
        if ( isdefined( level._id_CEFA[var_0] ) )
            setdvar( "r_hdrSplitViewSDRPosition", common_scripts\utility::tostring( level._id_CEFA[var_0] ) );
        else
            setdvar( "r_hdrSplitViewSDRPosition", "1.0" );

        level._id_AE41 = getdvarfloat( "r_hdrSplitViewSDRPosition", 1.0 );
    }

    if ( level._id_C3F9 && isdefined( level._id_B5A8[var_0] ) )
    {
        var_1 = level._id_B5A8[var_0];
        level.player _meth_84B8();
        setsaveddvar( "r_dof_physical_bokehEnable", 1 );
        level.player _meth_84BA( var_1["fstop"], var_1["focus_distance"], var_1["focus_speed"], var_1["aperture_speed"] );
    }
    else
    {
        level.player _meth_84B9();
        setsaveddvar( "r_dof_physical_bokehEnable", 0 );
    }

    if ( level._id_C3F9 && isdefined( level._id_B385[var_0] ) )
        level.player lerpfov( level._id_B385[var_0], 0.1 );
    else
        level.player lerpfov( 65, 0.1 );

    if ( isdefined( level._id_AD38[var_0] ) )
        [[ level._id_AD38[var_0] ]]();

    level.player setstance( "stand" );

    if ( level._id_C3F9 )
    {
        _id_C141( var_0 + "_static" );
        thread _id_BDE4( var_0 );
    }
    else
        _id_AFA9( var_0 );
}

_id_AFA9( var_0 )
{
    level.player unlink();
    var_1 = getent( var_0, "targetname" );

    if ( !isdefined( var_1 ) )
        return;

    level.player setorigin( var_1.origin );
    level.player setplayerangles( var_1.angles );
}

_id_C141( var_0 )
{
    level.player unlink();
    var_1 = getent( var_0, "targetname" );

    if ( !isdefined( var_1 ) )
        return;

    if ( !isdefined( level._id_D1ED ) )
        level._id_D1ED = common_scripts\utility::spawn_tag_origin();

    level._id_D1ED.origin = var_1.origin;
    level._id_D1ED.angles = var_1.angles;
    level.player setorigin( level._id_D1ED.origin );
    level.player setplayerangles( level._id_D1ED.angles );
    level.player playerlinkto( level._id_D1ED, "tag_origin", 1, 0, 0, 0, 0 );
}

_id_BDE4( var_0 )
{
    level endon( "move_view_request" );
    var_1 = 0;

    for (;;)
    {
        var_2 = level._id_B6BA[var_0];
        var_3 = 0;

        if ( isdefined( level._id_B4A6[var_0] ) )
            wait( level._id_B4A6[var_0] );

        if ( isdefined( level._id_CAC9[var_0] ) )
            var_3 = level._id_CAC9[var_0];

        if ( isdefined( level._id_C3E2 ) && level._id_C3E2 )
        {
            if ( var_1 )
                var_4 = getent( var_0, "targetname" );
            else
                var_4 = getent( var_0 + "_end", "targetname" );
        }
        else
            var_4 = getent( var_0 + "_end", "targetname" );

        if ( isdefined( var_4 ) && isdefined( var_2 ) )
        {
            level._id_D1ED moveto( var_4.origin, var_2 );
            level._id_D1ED rotateto( var_4.angles, var_2 );
            wait( var_2 + var_3 );
        }
        else
            wait 10;

        if ( isdefined( level._id_C3E2 ) && level._id_C3E2 )
        {
            var_1 = !var_1;
            continue;
        }

        break;
    }

    if ( level._id_AB0B )
    {
        level._id_D37D = "next";
        level notify( "move_view_request" );
    }
}
