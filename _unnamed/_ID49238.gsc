// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19930()
{
    if ( getdvar( "beautiful_corner" ) != "1" && getdvar( "beautiful_corner_demo" ) != "1" && getdvar( "beautiful_corner_hdr_demo" ) != "1" && getdvar( "mission_select_cam" ) != "1" && getdvar( "beautiful_corner_security_cameras" ) != "1" )
    {
        _ID7778();
        return 0;
    }

    level._ID43337 = [];
    level._ID54170 = [];
    level._ID50047 = [];
    level._ID54462 = [];
    level._ID46504 = [];
    level._ID45957 = [];
    level._ID46778 = [];
    level._ID46246 = [];
    level._ID51913 = [];
    level._ID44344 = [];
    level._ID52986 = [];
    level._ID50169 = 1;
    level._ID47257 = 0;
    level._ID49437 = undefined;
    level._ID44606 = 0;
    level._ID50146 = 0;
    level._ID54141 = undefined;
    level._ID49932 = undefined;
    level._ID44192 = undefined;
    level._ID44609 = getdvarfloat( "r_hdrSplitViewSDRPosition", 1.0 );
    level._ID50135 = [ "Off", "Split", "Dual" ];
    level._ID48353 = 2;
    setdvar( "r_hdrSplitViewSDR", level._ID50135[level._ID48353] );
    level._ID53949 = 0.8;
    level._ID47290 = [ level._ID53949, level._ID53949, level._ID53949 ];
    level._ID44079 = [ 0, level._ID53949, level._ID53949 ];
    level._ID43115 = getdvar( "beautiful_corner_hdr_demo_show_indicators", "0" ) == "1";

    if ( !isdefined( level.player ) )
        level waittill( "level.players initialized" );

    level.player allowcrouch( 0 );
    _ID47997();
    return 1;
}

_ID47777()
{
    thread _ID44395();
    thread _ID53379();
    thread _ID43337();

    if ( getdvar( "r_hdrDisplaySupport" ) == "1" )
        setdvar( "r_hdrDisplaySupportEnabled", "1" );
}

_ID7778()
{
    var_0 = getentarray( "beautiful_guy", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID44395()
{
    level.player takeallweapons();
    level.player disableoffhandweapons();

    if ( isdefined( level._ID49437 ) )
    {
        level.player giveweapon( level._ID49437 );
        level.player switchtoweapon( level._ID49437 );
    }

    level.player thread _ID52669();
    level._ID15018 = 1;
    level.player enableinvulnerability();
}

_ID52669()
{
    var_0 = self getweaponslistall();
    self._ID54346 = [];

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( self._ID54346[var_2] ) )
            self._ID54346[var_2] = self getweaponammostock( var_2 );
    }

    for (;;)
    {
        foreach ( var_2 in var_0 )
            self setweaponammostock( var_2, self._ID54346[var_2] );

        wait 1;
    }
}

_ID53379()
{
    var_0 = getentarray( "beautiful_guy", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_3 = var_2 _ID42364::_ID1839();

        if ( !isdefined( var_3 ) )
            return;

        var_3 _ID42407::_ID22825();
        var_3 _ID42407::_ID2286();
        var_3 _ID42407::_ID22746();
        var_3._ID31217 = "none";

        if ( isdefined( level._ID49437 ) )
            var_3 _ID42407::_ID14803( level._ID49437, "primary" );

        if ( isdefined( var_2.script_noteworthy ) )
        {
            var_3._ID3189 = "beautiful_guy";
            var_3 thread _ID42259::_ID3044( var_3, var_2.script_noteworthy, "stop_idle" );
        }
    }
}

_ID43337()
{
    _ID45549();
    _ID52048();
    level._ID43787 = level._ID43337.size > 1 && !level._ID44606;
    thread _ID47324();
    thread _ID49428();
    thread _ID51997();
}

_ID45549()
{
    var_0 = [ 0.0, 0.0, -60.0 ];

    foreach ( var_2 in level._ID43337 )
    {
        var_3 = getent( var_2, "targetname" );
        _ID48128( var_3, var_0 );
        var_4 = getent( var_2 + "_static", "targetname" );
        _ID48128( var_4, var_0 );
    }
}

_ID48128( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( var_0.script_noteworthy ) )
        return;

    if ( var_0.script_noteworthy != "view_pos" )
        return;

    var_2 = spawnstruct();
    var_2._ID337 = var_0;
    var_2._ID409 = var_1[0];
    var_2._ID893 = var_1[1];
    var_2._ID1251 = var_1[2];
    var_2 _ID42407::_ID38694();
}

_ID52048()
{
    if ( level._ID43337.size <= 0 )
        return;

    _ID42237::_ID14400( "beautiful_view_transitioning" );
    _ID42237::_ID14388( "beautiful_view_transitioning" );
    level._ID5261 = _ID42313::_ID9125( "black", 1 );
    level._ID5261.sort = 1000;
    level.player takeweapon( "beretta" );
    level.player takeweapon( "fraggrenade" );
    level.player takeweapon( "flash_grenade" );
    _ID48728( level._ID43337[level._ID47257] );
    wait 0.05;
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", "0" );
    setsaveddvar( "actionSlotsHide", "1" );
    wait 0.5;
    level.player disableweapons();
    level.player freezecontrols( 1 );
    wait 1.0;
    _ID49545();
    _ID47221();
}

_ID47324()
{
    thread _ID44419();

    for (;;)
    {
        level waittill( "move_view_request" );

        while ( _ID42237::_ID14385( "beautiful_view_transitioning" ) )
            wait 0.05;

        if ( level._ID54141 == "next" )
            _ID44707();
        else if ( level._ID54141 == "prev" )
            _ID53261();

        _ID48631( level._ID43337[level._ID47257] );
    }
}

_ID47997()
{
    if ( !level._ID43115 )
        return;

    level._ID44225 = newclienthudelem( level.player );
    level._ID44225.x = 0;
    level._ID44225.y = 0;
    level._ID44225.sort = 51;
    level._ID44225.alignx = "right";
    level._ID44225.aligny = "bottom";
    level._ID44225.horzalign = "right";
    level._ID44225.vertalign = "bottom";
    level._ID44225.alpha = level._ID53949;
    level._ID44225 settext( "HDR" );
    level._ID44225.hidewheninmenu = 1;
    level._ID44225.fontscale = 2;
    level._ID44225.font = "default";
    level._ID43924 = newclienthudelem( level.player );
    level._ID43924.x = 0;
    level._ID43924.y = 1;
    level._ID43924.sort = 51;
    level._ID43924.alignx = "left";
    level._ID43924.aligny = "bottom";
    level._ID43924.horzalign = "left";
    level._ID43924.vertalign = "bottom";
    level._ID43924.alpha = level._ID53949;
    level._ID43924 settext( "SDR" );
    level._ID43924.hidewheninmenu = 1;
    level._ID43924.fontscale = 2;
    level._ID43924.font = "default";
}

_ID47221()
{
    if ( !level._ID43115 )
        return;

    level._ID44225 fadeovertime( 0.5 );

    if ( level._ID44609 < 0.9 || getdvar( "r_hdrSplitViewSDR" ) != "Split" )
        level._ID44225.alpha = level._ID47290[level._ID48353];
    else
        level._ID44225.alpha = 0;

    level._ID43924 fadeovertime( 0.5 );

    if ( level._ID44609 > 0.1 || getdvar( "r_hdrSplitViewSDR" ) != "Split" )
        level._ID43924.alpha = level._ID44079[level._ID48353];
    else
        level._ID43924.alpha = 0;

    level notify( "stop_fade_out_infobox" );
    thread _ID49968();
}

_ID49968()
{
    level endon( "stop_fade_out_infobox" );
    wait 5;
    level._ID44225 fadeovertime( 0.5 );
    level._ID44225.alpha = 0;
    level._ID43924 fadeovertime( 0.5 );
    level._ID43924.alpha = 0;
}

_ID49428()
{
    thread _ID43993();

    for (;;)
    {
        level waittill( "hdr_change_request" );

        if ( getdvar( "r_hdrDisplaySupportEnabled" ) == "1" )
        {
            var_0 = level._ID48353;

            if ( level._ID49932 == "prev" )
                level._ID48353 = _ID42237::_ID54006( level._ID48353 - 1, 0, level._ID50135.size - 1 );
            else if ( level._ID49932 == "next" )
                level._ID48353 = _ID42237::_ID54006( level._ID48353 + 1, 0, level._ID50135.size - 1 );

            setdvar( "r_hdrSplitViewSDR", level._ID50135[level._ID48353] );
            _ID47221();
        }
    }
}

_ID51997()
{
    thread _ID52224();

    for (;;)
    {
        level waittill( "hdr_position_request" );

        if ( getdvar( "r_hdrDisplaySupportEnabled" ) == "1" && getdvar( "r_hdrSplitViewSDR" ) == "Split" )
        {
            if ( level._ID44192 == "next" )
                level._ID44609 = clamp( level._ID44609 + 0.01, 0, 1 );
            else if ( level._ID44192 == "prev" )
                level._ID44609 = clamp( level._ID44609 - 0.01, 0, 1 );

            setdvar( "r_hdrSplitViewSDRPosition", _ID42237::_ID37877( level._ID44609 ) );
            _ID47221();
        }
    }
}

_ID52224()
{
    for (;;)
    {
        if ( level.player buttonpressed( "BUTTON_RSHLDR" ) || level.player buttonpressed( "PGUP" ) )
        {
            level._ID44192 = "next";
            level notify( "hdr_position_request" );
            wait 0.1;
        }
        else if ( level.player buttonpressed( "BUTTON_LSHLDR" ) || level.player buttonpressed( "PGDN" ) )
        {
            level._ID44192 = "prev";
            level notify( "hdr_position_request" );
            wait 0.1;
        }

        wait 0.05;
    }
}

_ID43993()
{
    for (;;)
    {
        if ( level.player buttonpressed( "DPAD_UP" ) || level.player buttonpressed( "UPARROW" ) )
        {
            level._ID49932 = "next";
            level notify( "hdr_change_request" );
            wait 0.5;
        }
        else if ( level.player buttonpressed( "DPAD_DOWN" ) || level.player buttonpressed( "DOWNARROW" ) )
        {
            level._ID49932 = "prev";
            level notify( "hdr_change_request" );
            wait 0.5;
        }

        wait 0.05;
    }
}

_ID46578()
{
    for (;;)
    {
        if ( level.player buttonpressed( "DPAD_LEFT" ) || level.player buttonpressed( "PGUP" ) )
        {
            if ( !level._ID44606 )
                level._ID43787 = !level._ID43787;
        }

        wait 0.05;
    }
}

_ID44419()
{
    for (;;)
    {
        if ( level.player buttonpressed( "DPAD_RIGHT" ) || level.player buttonpressed( "RIGHTARROW" ) )
        {
            level._ID54141 = "next";
            level notify( "move_view_request" );
        }
        else if ( level.player buttonpressed( "DPAD_LEFT" ) || level.player buttonpressed( "LEFTARROW" ) )
        {
            level._ID54141 = "prev";
            level notify( "move_view_request" );
        }

        wait 0.05;
    }
}

_ID44707()
{
    for ( var_0 = undefined; !isdefined( var_0 ); var_0 = getent( var_1, "targetname" ) )
    {
        level._ID47257 = _ID42237::_ID54006( level._ID47257 + 1, 0, level._ID43337.size - 1 );
        var_1 = level._ID43337[level._ID47257];

        if ( level._ID50169 )
            var_1 += "_static";
    }
}

_ID53261()
{
    for ( var_0 = undefined; !isdefined( var_0 ); var_0 = getent( var_1, "targetname" ) )
    {
        level._ID47257 = _ID42237::_ID54006( level._ID47257 - 1, 0, level._ID43337.size - 1 );
        var_1 = level._ID43337[level._ID47257];

        if ( level._ID50169 )
            var_1 += "_static";
    }
}

_ID50098()
{
    for (;;)
    {
        while ( !( level.player buttonpressed( "DPAD_DOWN" ) || level.player buttonpressed( "END" ) ) )
            wait 0.05;

        if ( !_ID42237::_ID14385( "beautiful_view_transitioning" ) )
        {
            level._ID50169 = !level._ID50169;
            _ID48631( level._ID43337[level._ID47257] );
        }

        wait 0.05;
    }
}

_ID48631( var_0 )
{
    _ID42237::_ID14402( "beautiful_view_transitioning" );
    _ID51147();
    _ID48728( var_0 );
    wait 0.25;
    _ID49545();
    _ID47221();
    wait 0.25;
    _ID42237::_ID14388( "beautiful_view_transitioning" );
}

_ID49545()
{
    wait 0.1;
    level._ID5261 fadeovertime( 0.3 );
    level._ID5261.alpha = 0;

    if ( !level._ID50169 )
        level.player enableweapons();

    wait 0.3;

    if ( !level._ID50169 )
        level.player freezecontrols( 0 );

    level.player hidehud();
}

_ID51147()
{
    level.player showhud();
    level.player setstance( "stand" );
    level._ID5261 fadeovertime( 0.3 );
    level._ID5261.alpha = 1;
    level.player disableweapons();
    wait 0.3;
    level.player freezecontrols( 1 );
    wait 0.1;
}

_ID48728( var_0 )
{
    if ( level._ID54170[var_0] != "" )
    {
        level _ID42407::_ID40561( level._ID54170[var_0], 0 );
        level.player _ID42407::_ID40561( level._ID54170[var_0], 0 );
    }

    if ( level._ID50047[var_0] != "" )
        level.player lightset( level._ID50047[var_0] );

    if ( level._ID54462[var_0] != "" )
        level.player _meth_849f( level._ID54462[var_0], 0 );

    if ( getdvar( "r_hdrDisplaySupportEnabled" ) == "1" )
    {
        if ( isdefined( level._ID52986[var_0] ) )
            setdvar( "r_hdrSplitViewSDRPosition", _ID42237::_ID37877( level._ID52986[var_0] ) );
        else
            setdvar( "r_hdrSplitViewSDRPosition", "1.0" );

        level._ID44609 = getdvarfloat( "r_hdrSplitViewSDRPosition", 1.0 );
    }

    if ( level._ID50169 && isdefined( level._ID46504[var_0] ) )
    {
        var_1 = level._ID46504[var_0];
        level.player _meth_84b8();
        setsaveddvar( "r_dof_physical_bokehEnable", 1 );
        level.player _meth_84ba( var_1["fstop"], var_1["focus_distance"], var_1["focus_speed"], var_1["aperture_speed"] );
    }
    else
    {
        level.player _meth_84b9();
        setsaveddvar( "r_dof_physical_bokehEnable", 0 );
    }

    if ( level._ID50169 && isdefined( level._ID45957[var_0] ) )
        level.player lerpfov( level._ID45957[var_0], 0.1 );
    else
        level.player lerpfov( 65, 0.1 );

    if ( isdefined( level._ID44344[var_0] ) )
        [[ level._ID44344[var_0] ]]();

    level.player setstance( "stand" );

    if ( level._ID50169 )
    {
        _ID49473( var_0 + "_static" );
        thread _ID48612( var_0 );
    }
    else
        _ID44969( var_0 );
}

_ID44969( var_0 )
{
    level.player unlink();
    var_1 = getent( var_0, "targetname" );

    if ( !isdefined( var_1 ) )
        return;

    level.player setorigin( var_1.origin );
    level.player setplayerangles( var_1.angles );
}

_ID49473( var_0 )
{
    level.player unlink();
    var_1 = getent( var_0, "targetname" );

    if ( !isdefined( var_1 ) )
        return;

    if ( !isdefined( level._ID53741 ) )
        level._ID53741 = _ID42237::_ID35164();

    level._ID53741.origin = var_1.origin;
    level._ID53741.angles = var_1.angles;
    level.player setorigin( level._ID53741.origin );
    level.player setplayerangles( level._ID53741.angles );
    level.player playerlinkto( level._ID53741, "tag_origin", 1, 0, 0, 0, 0 );
}

_ID48612( var_0 )
{
    level endon( "move_view_request" );
    var_1 = 0;

    for (;;)
    {
        var_2 = level._ID46778[var_0];
        var_3 = 0;

        if ( isdefined( level._ID46246[var_0] ) )
            wait(level._ID46246[var_0]);

        if ( isdefined( level._ID51913[var_0] ) )
            var_3 = level._ID51913[var_0];

        if ( isdefined( level._ID50146 ) && level._ID50146 )
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
            level._ID53741 moveto( var_4.origin, var_2 );
            level._ID53741 rotateto( var_4.angles, var_2 );
            wait(var_2 + var_3);
        }
        else
            wait 10;

        if ( isdefined( level._ID50146 ) && level._ID50146 )
        {
            var_1 = !var_1;
            continue;
        }

        break;
    }

    if ( level._ID43787 )
    {
        level._ID54141 = "next";
        level notify( "move_view_request" );
    }
}
