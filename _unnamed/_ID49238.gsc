// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19930()
{
    if ( _func_039( "beautiful_corner" ) != "1" && _func_039( "beautiful_corner_demo" ) != "1" && _func_039( "beautiful_corner_hdr_demo" ) != "1" && _func_039( "mission_select_cam" ) != "1" && _func_039( "beautiful_corner_security_cameras" ) != "1" )
    {
        _unknown_00A4();
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
    level._ID44609 = _func_03B( "r_hdrSplitViewSDRPosition", 1.0 );
    level._ID50135 = [ "Off", "Split", "Dual" ];
    level._ID48353 = 2;
    _func_034( "r_hdrSplitViewSDR", level._ID50135[level._ID48353] );
    level._ID53949 = 0.8;
    level._ID47290 = [ level._ID53949, level._ID53949, level._ID53949 ];
    level._ID44079 = [ 0, level._ID53949, level._ID53949 ];
    level._ID43115 = _func_039( "beautiful_corner_hdr_demo_show_indicators", "0" ) == "1";

    if ( !_func_02F( level._ID794 ) )
        level waittill( "level.players initialized" );

    level._ID794 _meth_8122( 0 );
    _unknown_023E();
    return 1;
}

_ID47777()
{
    thread _unknown_0164();
    thread _unknown_0198();
    thread _unknown_01C6();

    if ( _func_039( "r_hdrDisplaySupport" ) == "1" )
        _func_034( "r_hdrDisplaySupportEnabled", "1" );
}

_ID7778()
{
    var_0 = _func_1A2( "beautiful_guy", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID44395()
{
    level._ID794 _meth_831B();
    level._ID794 _meth_832A();

    if ( _func_02F( level._ID49437 ) )
    {
        level._ID794 _meth_8319( level._ID49437 );
        level._ID794 _meth_8320( level._ID49437 );
    }

    level._ID794 thread _unknown_01E9();
    level._ID15018 = 1;
    level._ID794 _meth_80F6();
}

_ID52669()
{
    var_0 = self _meth_8316();
    self._ID54346 = [];
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( self._ID54346[var_2] ) )
            self._ID54346[var_2] = self _meth_8304( var_2 );
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];
            self _meth_8302( var_2, self._ID54346[var_2] );
        }

        var_clear_1
        var_clear_0
        wait 1;
    }
}

_ID53379()
{
    var_0 = _func_1A2( "beautiful_guy", "targetname" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = var_2 _ID42364::_ID1839();

        if ( !_func_02F( var_3 ) )
            return;

        var_3 _ID42407::_ID22825();
        var_3 _ID42407::_ID2286();
        var_3 _ID42407::_ID22746();
        var_3._ID31217 = "none";

        if ( _func_02F( level._ID49437 ) )
            var_3 _ID42407::_ID14803( level._ID49437, "primary" );

        if ( _func_02F( var_2._ID922 ) )
        {
            var_3._ID3189 = "beautiful_guy";
            var_3 thread _ID42259::_ID3044( var_3, var_2._ID922, "stop_idle" );
        }
    }

    var_clear_3
    var_clear_0
}

_ID43337()
{
    _unknown_0324();
    _unknown_0359();
    level._ID43787 = level._ID43337.size > 1 && !level._ID44606;
    thread _unknown_039F();
    thread _unknown_043C();
    thread _unknown_0463();
}

_ID45549()
{
    var_0 = [ 0.0, 0.0, -60.0 ];
    var_1 = level._ID43337;

    for ( var_5 = _func_1DA( var_1 ); _func_02F( var_5 ); var_5 = _func_1BF( var_1, var_5 ) )
    {
        var_2 = var_1[var_5];
        var_3 = _func_1A1( var_2, "targetname" );
        _unknown_0393( var_3, var_0 );
        var_4 = _func_1A1( var_2 + "_static", "targetname" );
        _unknown_03A6( var_4, var_0 );
    }

    var_clear_4
    var_clear_0
}

_ID48128( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        return;

    if ( !_func_02F( var_0._ID922 ) )
        return;

    if ( var_0._ID922 != "view_pos" )
        return;

    var_2 = _func_1A5();
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
    level._ID5261._ID983 = 1000;
    level._ID794 _meth_831A( "beretta" );
    level._ID794 _meth_831A( "fraggrenade" );
    level._ID794 _meth_831A( "flash_grenade" );
    _unknown_063A( level._ID43337[level._ID47257] );
    wait 0.05;
    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "hud_showStance", "0" );
    _func_0DB( "actionSlotsHide", "1" );
    wait 0.5;
    level._ID794 _meth_8328();
    level._ID794 _meth_8334( 1 );
    wait 1.0;
    _unknown_065E();
    _unknown_053B();
}

_ID47324()
{
    thread _unknown_0605();

    for (;;)
    {
        level waittill( "move_view_request" );

        while ( _ID42237::_ID14385( "beautiful_view_transitioning" ) )
            wait 0.05;

        if ( level._ID54141 == "next" )
            _unknown_0643();
        else if ( level._ID54141 == "prev" )
            _ID47221();

        _unknown_0696( level._ID43337[level._ID47257] );
    }
}

_ID47997()
{
    if ( !level._ID43115 )
        return;

    level._ID44225 = _func_1B0( level._ID794 );
    level._ID44225._ID1331 = 0;
    level._ID44225._ID1339 = 0;
    level._ID44225._ID983 = 51;
    level._ID44225._ID44 = "right";
    level._ID44225._ID45 = "bottom";
    level._ID44225._ID499 = "right";
    level._ID44225._ID1284 = "bottom";
    level._ID44225._ID55 = level._ID53949;
    level._ID44225 _meth_80D1( "HDR" );
    level._ID44225._ID493 = 1;
    level._ID44225._ID393 = 2;
    level._ID44225._ID392 = "default";
    level._ID43924 = _func_1B0( level._ID794 );
    level._ID43924._ID1331 = 0;
    level._ID43924._ID1339 = 1;
    level._ID43924._ID983 = 51;
    level._ID43924._ID44 = "left";
    level._ID43924._ID45 = "bottom";
    level._ID43924._ID499 = "left";
    level._ID43924._ID1284 = "bottom";
    level._ID43924._ID55 = level._ID53949;
    level._ID43924 _meth_80D1( "SDR" );
    level._ID43924._ID493 = 1;
    level._ID43924._ID393 = 2;
    level._ID43924._ID392 = "default";
}

_ID47221()
{
    if ( !level._ID43115 )
        return;

    level._ID44225 _meth_808B( 0.5 );

    if ( level._ID44609 < 0.9 || _func_039( "r_hdrSplitViewSDR" ) != "Split" )
        level._ID44225._ID55 = level._ID47290[level._ID48353];
    else
        level._ID44225._ID55 = 0;

    level._ID43924 _meth_808B( 0.5 );

    if ( level._ID44609 > 0.1 || _func_039( "r_hdrSplitViewSDR" ) != "Split" )
        level._ID43924._ID55 = level._ID44079[level._ID48353];
    else
        level._ID43924._ID55 = 0;

    level notify( "stop_fade_out_infobox" );
    thread _unknown_0706();
}

_ID49968()
{
    level endon( "stop_fade_out_infobox" );
    wait 5;
    level._ID44225 _meth_808B( 0.5 );
    level._ID44225._ID55 = 0;
    level._ID43924 _meth_808B( 0.5 );
    level._ID43924._ID55 = 0;
}

_ID49428()
{
    thread _unknown_07A5();

    for (;;)
    {
        level waittill( "hdr_change_request" );

        if ( _func_039( "r_hdrDisplaySupportEnabled" ) == "1" )
        {
            var_0 = level._ID48353;

            if ( level._ID49932 == "prev" )
                level._ID48353 = _ID42237::_ID54006( level._ID48353 - 1, 0, level._ID50135.size - 1 );
            else if ( level._ID49932 == "next" )
                level._ID48353 = _ID42237::_ID54006( level._ID48353 + 1, 0, level._ID50135.size - 1 );

            _func_034( "r_hdrSplitViewSDR", level._ID50135[level._ID48353] );
            _unknown_0769();
        }
    }
}

_ID51997()
{
    thread _unknown_07EE();

    for (;;)
    {
        level waittill( "hdr_position_request" );

        if ( _func_039( "r_hdrDisplaySupportEnabled" ) == "1" && _func_039( "r_hdrSplitViewSDR" ) == "Split" )
        {
            if ( level._ID44192 == "next" )
                level._ID44609 = _func_0EE( level._ID44609 + 0.01, 0, 1 );
            else if ( level._ID44192 == "prev" )
                level._ID44609 = _func_0EE( level._ID44609 - 0.01, 0, 1 );

            _func_034( "r_hdrSplitViewSDRPosition", _ID42237::_ID37877( level._ID44609 ) );
            _unknown_07D4();
        }
    }
}

_ID52224()
{
    for (;;)
    {
        if ( level._ID794 _meth_8256( "BUTTON_RSHLDR" ) || level._ID794 _meth_8256( "PGUP" ) )
        {
            level._ID44192 = "next";
            level notify( "hdr_position_request" );
            wait 0.1;
        }
        else if ( level._ID794 _meth_8256( "BUTTON_LSHLDR" ) || level._ID794 _meth_8256( "PGDN" ) )
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
        if ( level._ID794 _meth_8256( "DPAD_UP" ) || level._ID794 _meth_8256( "UPARROW" ) )
        {
            level._ID49932 = "next";
            level notify( "hdr_change_request" );
            wait 0.5;
        }
        else if ( level._ID794 _meth_8256( "DPAD_DOWN" ) || level._ID794 _meth_8256( "DOWNARROW" ) )
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
        if ( level._ID794 _meth_8256( "DPAD_LEFT" ) || level._ID794 _meth_8256( "PGUP" ) )
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
        if ( level._ID794 _meth_8256( "DPAD_RIGHT" ) || level._ID794 _meth_8256( "RIGHTARROW" ) )
        {
            level._ID54141 = "next";
            level notify( "move_view_request" );
        }
        else if ( level._ID794 _meth_8256( "DPAD_LEFT" ) || level._ID794 _meth_8256( "LEFTARROW" ) )
        {
            level._ID54141 = "prev";
            level notify( "move_view_request" );
        }

        wait 0.05;
    }
}

_ID44707()
{
    for ( var_0 = undefined; !_func_02F( var_0 ); var_0 = _func_1A1( var_1, "targetname" ) )
    {
        level._ID47257 = _ID42237::_ID54006( level._ID47257 + 1, 0, level._ID43337.size - 1 );
        var_1 = level._ID43337[level._ID47257];

        if ( level._ID50169 )
            var_1 += "_static";
    }
}

_ID53261()
{
    for ( var_0 = undefined; !_func_02F( var_0 ); var_0 = _func_1A1( var_1, "targetname" ) )
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
        while ( !level._ID794 _meth_8256( "DPAD_DOWN" ) || level._ID794 _meth_8256( "END" ) )
            wait 0.05;

        if ( !_ID42237::_ID14385( "beautiful_view_transitioning" ) )
        {
            level._ID50169 = !level._ID50169;
            _unknown_0AB9( level._ID43337[level._ID47257] );
        }

        wait 0.05;
    }
}

_ID48631( var_0 )
{
    _ID42237::_ID14402( "beautiful_view_transitioning" );
    _unknown_0AEF();
    _unknown_0B06( var_0 );
    wait 0.25;
    _unknown_0AEB();
    _unknown_09C9();
    wait 0.25;
    _ID42237::_ID14388( "beautiful_view_transitioning" );
}

_ID49545()
{
    wait 0.1;
    level._ID5261 _meth_808B( 0.3 );
    level._ID5261._ID55 = 0;

    if ( !level._ID50169 )
        level._ID794 _meth_8329();

    wait 0.3;

    if ( !level._ID50169 )
        level._ID794 _meth_8334( 0 );

    level._ID794 _meth_8101();
}

_ID51147()
{
    level._ID794 _meth_8102();
    level._ID794 _meth_8189( "stand" );
    level._ID5261 _meth_808B( 0.3 );
    level._ID5261._ID55 = 1;
    level._ID794 _meth_8328();
    wait 0.3;
    level._ID794 _meth_8334( 1 );
    wait 0.1;
}

_ID48728( var_0 )
{
    if ( level._ID54170[var_0] != "" )
    {
        level _ID42407::_ID40561( level._ID54170[var_0], 0 );
        level._ID794 _ID42407::_ID40561( level._ID54170[var_0], 0 );
    }

    if ( level._ID50047[var_0] != "" )
        level._ID794 _meth_83CD( level._ID50047[var_0] );

    if ( level._ID54462[var_0] != "" )
        level._ID794 _meth_849F( level._ID54462[var_0], 0 );

    if ( _func_039( "r_hdrDisplaySupportEnabled" ) == "1" )
    {
        if ( _func_02F( level._ID52986[var_0] ) )
            _func_034( "r_hdrSplitViewSDRPosition", _ID42237::_ID37877( level._ID52986[var_0] ) );
        else
            _func_034( "r_hdrSplitViewSDRPosition", "1.0" );

        level._ID44609 = _func_03B( "r_hdrSplitViewSDRPosition", 1.0 );
    }

    if ( level._ID50169 && _func_02F( level._ID46504[var_0] ) )
    {
        var_1 = level._ID46504[var_0];
        level._ID794 _meth_84B8();
        _func_0DB( "r_dof_physical_bokehEnable", 1 );
        level._ID794 _meth_84BA( var_1["fstop"], var_1["focus_distance"], var_1["focus_speed"], var_1["aperture_speed"] );
    }
    else
    {
        level._ID794 _meth_84B9();
        _func_0DB( "r_dof_physical_bokehEnable", 0 );
    }

    if ( level._ID50169 && _func_02F( level._ID45957[var_0] ) )
        level._ID794 _meth_8032( level._ID45957[var_0], 0.1 );
    else
        level._ID794 _meth_8032( 65, 0.1 );

    if ( _func_02F( level._ID44344[var_0] ) )
        [[ level._ID44344[var_0] ]]();

    level._ID794 _meth_8189( "stand" );

    if ( level._ID50169 )
    {
        _unknown_0D1C( var_0 + "_static" );
        thread _unknown_0D3F( var_0 );
    }
    else
        _unknown_0D1A( var_0 );
}

_ID44969( var_0 )
{
    level._ID794 _meth_8055();
    var_1 = _func_1A1( var_0, "targetname" );

    if ( !_func_02F( var_1 ) )
        return;

    level._ID794 _meth_8343( var_1._ID740 );
    level._ID794 _meth_8345( var_1._ID65 );
}

_ID49473( var_0 )
{
    level._ID794 _meth_8055();
    var_1 = _func_1A1( var_0, "targetname" );

    if ( !_func_02F( var_1 ) )
        return;

    if ( !_func_02F( level._ID53741 ) )
        level._ID53741 = _ID42237::_ID35164();

    level._ID53741._ID740 = var_1._ID740;
    level._ID53741._ID65 = var_1._ID65;
    level._ID794 _meth_8343( level._ID53741._ID740 );
    level._ID794 _meth_8345( level._ID53741._ID65 );
    level._ID794 _meth_8083( level._ID53741, "tag_origin", 1, 0, 0, 0, 0 );
}

_ID48612( var_0 )
{
    level endon( "move_view_request" );
    var_1 = 0;

    for (;;)
    {
        var_2 = level._ID46778[var_0];
        var_3 = 0;

        if ( _func_02F( level._ID46246[var_0] ) )
            wait(level._ID46246[var_0]);

        if ( _func_02F( level._ID51913[var_0] ) )
            var_3 = level._ID51913[var_0];

        if ( _func_02F( level._ID50146 ) && level._ID50146 )
        {
            if ( var_1 )
                var_4 = _func_1A1( var_0, "targetname" );
            else
                var_4 = _func_1A1( var_0 + "_end", "targetname" );
        }
        else
            var_4 = _func_1A1( var_0 + "_end", "targetname" );

        if ( _func_02F( var_4 ) && _func_02F( var_2 ) )
        {
            level._ID53741 _meth_82B8( var_4._ID740, var_2 );
            level._ID53741 _meth_82BF( var_4._ID65, var_2 );
            wait(var_2 + var_3);
        }
        else
            wait 10;

        if ( _func_02F( level._ID50146 ) && level._ID50146 )
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
