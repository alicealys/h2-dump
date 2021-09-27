// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_02F( level._ID9296 ) )
        return 0;

    _unknown_0015();

    if ( !_unknown_003C() )
    {
        _unknown_01FE();
        return;
    }

    _unknown_0450();
    _unknown_005E();
}

_ID51584()
{
    _ID42237::_ID14400( "pullup_weapon" );
    _ID42237::_ID14400( "introscreen_activate" );
    _ID42237::_ID14400( "introscreen_remove_submix" );
    _ID42237::_ID14400( "introscreen_complete" );
    _ID42237::_ID14400( "safe_for_objectives" );
    _ID42407::_ID10226( 10, _ID42237::_ID14402, "safe_for_objectives" );
    level._ID48875 = 16;
    level._ID48682 = 1000;
    level._ID53347 = 1001;
    _func_14F( "black" );
    _func_14F( "white" );

    if ( _func_039( "introscreen" ) == "" )
        _func_034( "introscreen", "1" );

    waitframe;
    waitframe;
}

_ID49980()
{
    if ( !_unknown_00BF() )
        return 0;

    if ( !_ID42407::_ID47066() )
        return 0;

    return 1;
}

_ID46331()
{
    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" || _func_039( "mission_select_cam" ) == "1" )
        return 0;

    return 1;
}

_ID52055()
{
    if ( _unknown_04E1() )
        thread _unknown_04C7();

    _ID42237::_ID14402( "introscreen_activate" );

    switch ( level._ID912 )
    {

    }

    case "roadkill":
    case "favela_escape":
    case "oilrig":
    case "estate":
    case "dcemp":
    case "dcburning":
    case "arcadia":
    case "dc_whitehouse":
    case "boneyard":
    case "airport":
    case "af_caves":
    case "gulag":
    case "favela":
}

_ID52790()
{
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_832A();
    _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    var_0 = 26.5;
    _ID42407::_ID10226( 15.75, ::_unknown_04B2, level._ID46575 );
    wait(var_0);
    wait 1;

    if ( _func_02F( level._ID24793 ) )
        return;

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4434();

    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 _meth_8334( 0 );
}

_ID46452()
{
    _ID42237::_ID14402( "introscreen_complete" );
}

_ID52525()
{
    level._ID794 _meth_8334( 1 );
    _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    thread _unknown_0533( 5 );
    _unknown_050F( level._ID46575 );
    wait 5.0;
    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 _meth_8334( 0 );
}

_ID45123()
{
    level._ID794 _meth_8334( 1 );
    _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    var_0 = 1.35;
    thread _unknown_056F( var_0 );
    thread _ID42407::_ID14403( "introscreen_start_dialogue", 6.0 );
    _unknown_0559( level._ID46575, 1 );
    wait(var_0);
    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 _meth_8334( 0 );
}

_ID47423()
{
    level._ID794 _meth_8334( 1 );
    _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    thread _unknown_05B3( 5.0 );
    _unknown_0591( level._ID46575, 1 );
    wait 5.0;
    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 _meth_8334( 0 );
}

_ID43786()
{
    _func_0DB( "ui_hidemap", 1 );
    _func_0DB( "hud_showStance", "0" );
    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "g_friendlyNameDist", 0 );
}

_ID46932()
{
    if ( !level._ID39431 )
        return;

    thread _unknown_03C4();
    level._ID794 _meth_8334( 1 );
    _ID42237::_ID14413( "open_dds_door" );
    wait 2;
    level._ID794 _meth_8334( 0 );
}

_ID45075()
{
    _unknown_05FF( level._ID46575 );
}

_ID50355()
{
    wait 0.05;
    _func_0DB( "compass", 0 );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "hud_showStance", 0 );
}

_ID51096()
{
    level._ID794 _meth_8328();
    thread _unknown_042D();
    level._ID50380 = 1;
    level._ID794 _meth_8334( 1 );
    var_0 = _func_1AF();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID408 = 1;
    var_0 _meth_80D3( "black", 640, 480 );
    wait 4.25;
    wait 3;
    level notify( "black_fading" );
    level._ID50380 = undefined;
    var_0 _meth_808B( 1.5 );
    var_0._ID55 = 0;
    wait 1.5;
    _ID42237::_ID14402( "introscreen_complete" );
    level notify( "introscreen_complete" );
    level._ID794 _meth_8334( 0 );
    level._ID794 _meth_8329();
    wait 0.5;
    _func_0DB( "compass", 1 );
    _func_0DB( "ammoCounterHide", "0" );
    _func_0DB( "hud_showStance", 1 );
    _ID42237::_ID14413( "player_exiting_start_trench" );
    _unknown_06D0( level._ID46575, 1 );
}

_ID49093()
{
    thread _unknown_0554();
    level._ID794 _meth_8334( 1 );
    var_0 = _func_1AF();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID408 = 1;
    var_0 _meth_80D3( "black", 640, 480 );
    _unknown_0714( level._ID46575 );
    wait 10;
    _ID42237::_ID14402( "introscreen_remove_submix" );
    level notify( "black_fading" );
    var_0 _meth_808B( 2 );
    var_0._ID55 = 0;
    _ID42237::_ID14402( "start_anims" );
    wait 2;
    _ID42237::_ID14402( "introscreen_complete" );
    level notify( "introscreen_complete" );
    level._ID794 _meth_8334( 0 );
    level._ID794 _meth_832A();
    wait 0.5;
    _func_0DB( "compass", 1 );
    _func_0DB( "ammoCounterHide", "0" );
    _func_0DB( "hud_showStance", 1 );
}

_ID47625()
{
    _func_0DB( "compass", 0 );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "hud_showStance", 0 );
}

_ID45104()
{
    _ID42237::_ID14413( "player_crash_done" );
    wait 1;
    _unknown_07A0( level._ID46575 );
    _ID42237::_ID14402( "introscreen_complete" );
}

h2_roadkill_intro()
{
    thread _unknown_07DC( 5.0 );
    wait 0.5;
    _unknown_07BE( level._ID46575 );
    _ID42237::_ID14402( "introscreen_complete" );
}

_ID48263()
{
    level._ID794 _meth_8328();
    level._ID794 _meth_8334( 1 );
    _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    thread _unknown_0815( 5.0 );
    _unknown_07F4( level._ID46575, 1 );
    wait 5.0;
    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 _meth_8334( 0 );
    level._ID794 _meth_8329();
}

_ID51243()
{
    _func_0DB( "compass", 0 );
    _func_0DB( "hud_showstance", 0 );
    _func_0DB( "actionSlotsHide", 1 );
    level._ID48617 = _func_1AF();
    level._ID48617._ID1331 = 0;
    level._ID48617._ID1339 = 0;
    level._ID48617._ID499 = "fullscreen";
    level._ID48617._ID1284 = "fullscreen";
    level._ID48617._ID408 = 0;
    level._ID48617 _meth_80D3( "black", 640, 480 );
    wait 0.05;
    _ID42237::_ID14402( "intro_dialogue_start" );
    _ID42237::_ID14413( "intro_fade_in" );
    _ID42237::_ID14402( "introscreen_remove_submix" );
    var_0 = 3;
    level._ID48617 _meth_808B( var_0 );
    level._ID48617._ID55 = 0;
    wait(var_0);
    level._ID48617 _meth_808F();
    _func_0DB( "compass", 1 );
    _ID42237::_ID14402( "intro_faded_in" );
    thread _ID42407::_ID4422( "intro" );
    _ID42237::_ID14413( "introscreen_feed_lines" );
    _unknown_08BB( level._ID46575, 1 );
}

_ID51126()
{
    waitframe;
    waitframe;
    waitframe;
    waitframe;
    _ID42237::_ID14402( "introscreen_remove_submix" );
    _ID42237::_ID14402( "introscreen_complete" );
}

_ID49827()
{
    wait 0.05;
    _func_0DB( "compass", 0 );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "hud_showstance", 0 );
    _func_0DB( "actionSlotsHide", 1 );
}

_ID54602()
{
    var_0 = _func_02F( level._ID48294 );
    thread _unknown_07F5();
    thread _unknown_09F6();
    level._ID794 _meth_8334( 1 );
    var_1 = 16000;
    var_2 = 1;
    var_3 = 0;
    var_4 = 0;

    if ( var_2 )
    {
        var_5 = [];

        switch ( level._ID912 )
        {

        }

        _unknown_0988( var_5 );
    }

    var_6 = level._ID794._ID740;
    level._ID794 _meth_8245( var_6 );
    level._ID794._ID740 = var_6 + ( 0, 0, var_1 );
    var_7 = _func_06A( "script_model", ( 69, 69, 69 ) );
    var_7._ID740 = level._ID794._ID740;
    var_7 _meth_80B8( "tag_origin" );

    if ( var_0 )
        var_7._ID65 = ( 0, level._ID48294[1], 0 );
    else
        var_7._ID65 = level._ID794._ID65;

    level._ID794 _meth_8083( var_7, undefined, 1, 0, 0, 0, 0 );
    var_7._ID65 = ( var_7._ID65[0] + 89, var_7._ID65[1], 0 );
    wait(var_3);
    var_7 _meth_82B8( var_6 + ( 0, 0, 0 ), 2, 0, 2 );
    _ID42237::_ID14402( "introscreen_remove_submix" );
    wait 1.0;
    wait 0.5;

    if ( var_0 )
        var_7 _meth_82BF( level._ID48294, 0.5, 0.3, 0.2 );
    else
        var_7 _meth_82BF( ( var_7._ID65[0] - 89, var_7._ID65[1], 0 ), 0.5, 0.3, 0.2 );

    if ( !var_4 )
        _func_087( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );

    wait 0.5;

    switch ( level._ID912 )
    {

    }

    _ID42237::_ID14402( "pullup_weapon" );
    wait 0.2;
    level._ID794 _meth_8055();
    level._ID794 _meth_8334( 0 );

    switch ( level._ID912 )
    {

    }

    endswitch( 1 )  case "boneyard" loc_A69
    level._ID794 _meth_8246();
    thread _ID42237::_ID27077( "ui_screen_trans_in", level._ID794._ID740 );
    wait 0.2;
    thread _ID42237::_ID27077( "ui_screen_trans_out", level._ID794._ID740 );
    wait 0.2;
    _ID42237::_ID14402( "introscreen_complete" );
    wait 2;

    while ( _func_05F() )
        waittillframeend;

    _func_032( "ui_chaplinoverlayfadein", 0 );
    var_7 _meth_80B7();
    case "estate":
    case "boneyard":
    case "estate":
    case "boneyard":
}

_ID54373( var_0 )
{
    self endon( "introscreen_complete" );

    for (;;)
    {
        level._ID794 _meth_8245( var_0 );
        wait 0.01;
    }
}

_ID50196()
{
    _func_0DB( "hud_drawhud", "0" );
    level._ID794 _meth_8334( 1 );
    _unknown_0B74( 5.3, 1 );
    _unknown_0B51( level._ID46575, 1 );
    level._ID794 _meth_8334( 0 );
    _func_0DB( "hud_drawhud", "1" );
}

_ID52593( var_0 )
{
    var_1 = _func_1AF();
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1._ID499 = "center_adjustable";
    var_1._ID1284 = "middle";
    var_1._ID983 = level._ID53347;
    var_1._ID408 = 1;
    var_1 _meth_80D1( var_0 );
    var_1._ID55 = 0;
    var_1 _meth_808B( 0.2 );
    var_1._ID55 = 1;
    var_1._ID493 = 1;
    var_1._ID393 = 1.6;
    var_1._ID196 = ( 0.8, 1, 0.8 );
    var_1._ID392 = "objective";
    var_1._ID445 = ( 0.13, 0.33, 0.16 );
    var_1._ID444 = 0.2;
    var_1 _meth_8090( 30, 2500, 700 );
    wait 3;
}

_ID20371( var_0, var_1 )
{
    var_2 = _func_1D9( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];
        var_5 = 1;
        var_6 = var_3 * var_5 + 1;
        _ID42407::_ID10226( var_6, ::_unknown_0D02, var_0[var_4], var_0.size - var_3 - 1, var_5, var_4 );
    }

    if ( _func_02F( var_1 ) && var_1 )
    {
        var_7 = var_2.size + 5;
        thread _unknown_0C59( var_7 );
    }
}

_ID50514( var_0 )
{
    level._ID44911 = 1;
    _func_0DB( "actionSlotsHide", 1 );
    _func_0DB( "hud_showstance", 0 );
    _ID42237::_ID24938( var_0, ::_func_0DB, "actionSlotsHide", 0 );
    _ID42237::_ID24938( var_0, ::_func_0DB, "hud_showstance", 1 );
    wait(var_0);
    level._ID44911 = undefined;
}

_ID20372( var_0, var_1 )
{
    _unknown_0CB8( "black", var_0, var_1 );
}

_ID50101( var_0, var_1 )
{
    _unknown_0CC6( "white", var_0, var_1 );
}

_ID20373( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1.5;

    var_3 = _func_1AF();
    var_3._ID1331 = 0;
    var_3._ID1339 = 0;
    var_3._ID499 = "fullscreen";
    var_3._ID1284 = "fullscreen";
    var_3._ID408 = 1;
    var_3._ID983 = level._ID48682;
    var_3 _meth_80D3( var_0, 640, 480 );
    wait(var_1);
    _ID42237::_ID14402( "introscreen_remove_submix" );
    var_3 _meth_808B( 1.5 );
    var_3._ID55 = 0;
}

_ID48237( var_0 )
{
    var_1 = level._ID48350.size;
    var_2 = var_1 * 30;

    if ( level._ID8534 )
        var_2 -= 60;

    var_3 = _func_1AF();
    var_3._ID1331 = 0;
    var_3._ID1339 = var_2;
    var_3._ID44 = "center";
    var_3._ID45 = "middle";
    var_3._ID499 = "center";
    var_3._ID1284 = "middle";
    var_3._ID983 = level._ID53347;
    var_3._ID408 = 1;
    var_3._ID393 = 1.75;
    var_3 _meth_80D1( var_0 );
    var_3._ID55 = 0;
    var_3 _meth_808B( 1.2 );
    var_3._ID55 = 1;
    _ID42237::_ID3312( level._ID48350, var_3, 0 );
}

_ID50481()
{
    for ( var_0 = 0; var_0 < level._ID48350.size; var_0++ )
    {
        level._ID48350[var_0] _meth_808B( 1.5 );
        level._ID48350[var_0]._ID55 = 0;
    }

    wait 1.5;

    for ( var_0 = 0; var_0 < level._ID48350.size; var_0++ )
        level._ID48350[var_0] _meth_808F();
}

_ID46728( var_0, var_1, var_2, var_3 )
{
    level notify( "new_introscreen_element" );

    if ( !_func_02F( level._ID20305 ) )
        level._ID20305 = 0;
    else
        level._ID20305++;

    var_4 = _unknown_0E9C();
    var_5 = _func_1AF();
    var_5._ID1331 = 30.7;
    var_5._ID1339 = var_4 - 8.7;
    var_5._ID44 = "left";
    var_5._ID45 = "bottom";
    var_5._ID499 = "left_adjustable";
    var_5._ID1284 = "bottom_adjustable";
    var_5._ID983 = level._ID53347;
    var_5._ID408 = 1;
    var_5 _meth_80D1( var_0 );
    var_5._ID55 = 0;
    var_5 _meth_808B( 0.2 );
    var_5._ID55 = 1;
    var_5._ID493 = 1;
    var_5._ID393 = 1.25;
    var_5._ID196 = ( 0.8, 1, 0.8 );
    var_5._ID392 = "objective";
    var_5._ID445 = ( 0.13, 0.33, 0.16 );
    var_5._ID444 = 0.2;
    var_6 = _func_0C1( var_1 * var_2 * 1000 + 4000 );
    var_5 _meth_8090( 30, var_6, 700 );
    thread _unknown_0F53( var_5 );

    if ( !_func_02F( var_3 ) )
        return;

    if ( !_func_031( var_3 ) )
        return;

    if ( var_3 != "date" )
        return;
}

_ID45062()
{
    return level._ID20305 * 18 - 82;
}

_ID20369( var_0, var_1, var_2, var_3 )
{
    thread _unknown_0F2B( var_0, var_1, var_2, var_3 );
}

_ID19173( var_0 )
{
    wait(level._ID48875);
    var_0 notify( "destroying" );
    level._ID20305 = undefined;
    var_1 = 0.5;
    var_0 _meth_808B( var_1 );
    var_0._ID55 = 0;
    wait(var_1);
    var_0 notify( "destroy" );
    var_0 _meth_808F();
}

_ID43661()
{
    var_0 = level._ID794 _meth_8316()[0];
    level._ID794 _meth_8328();
    _ID42237::_ID14413( "pullup_weapon" );
    level._ID794 _meth_8329();
}

_ID54449()
{
    _ID42237::_ID14413( "safe_for_objectives" );

    if ( !_func_02F( level._ID46686 ) )
        _func_0DB( "compass", 1 );

    if ( !_func_02F( level._ID52290 ) )
        _func_0DB( "ammoCounterHide", "0" );

    if ( !_func_02F( level._ID44911 ) )
    {
        _func_0DB( "actionSlotsHide", "0" );
        _func_0DB( "hud_showstance", "1" );
    }
}

_ID51774( var_0 )
{
    if ( !_func_02F( level._ID46575 ) )
        level._ID46575 = [];

    _func_150( var_0 );
    level._ID46575[level._ID46575.size] = var_0;
}

_ID48426()
{
    switch ( level._ID912 )
    {

    }

    return 1;
    case "trainer":
    case "roadkill":
    case "oilrig":
    case "invasion":
    case "favela_escape":
    case "ending":
    case "dcemp":
    case "dcburning":
    case "dc_whitehouse":
    case "contingency":
    case "arcadia":
    case "airport":
    case "af_chase":
    case "af_caves":
    case "gulag":
    case "favela":
}

_ID52123()
{
    switch ( level._ID912 )
    {

    }

    case "trainer":
    case "roadkill":
    case "oilrig":
    case "invasion":
    case "favela_escape":
    case "dcemp":
    case "dcburning":
    case "contingency":
    case "boneyard":
    case "arcadia":
    case "airport":
    case "af_chase":
    case "af_caves":
    case "killhouse":
    case "gulag":
    case "favela":
}

_ID53900()
{
    wait 17;
    var_0 = [];
    var_0[var_0.size] = &"CLIFFHANGER_LINE1";
    var_0["date"] = &"CLIFFHANGER_LINE2";
    var_0[var_0.size] = &"CLIFFHANGER_LINE3";
    var_0[var_0.size] = &"CLIFFHANGER_LINE4";
    var_0[var_0.size] = &"CLIFFHANGER_LINE5";
    _unknown_134D( var_0, 1 );
}

_ID47446( var_0, var_1 )
{
    var_2 = _func_03B( "sm_sunSampleSizeNear" );

    if ( !_func_02F( var_1 ) )
        var_1 = 0.25;

    var_3 = var_2 - var_1;
    var_4 = var_0 * 20;

    for ( var_5 = 0; var_5 <= var_4; var_5++ )
    {
        var_6 = var_5 / var_4;
        var_6 = 1 - var_6;
        var_7 = var_6 * var_3;
        var_8 = var_1 + var_7;
        _func_0DB( "sm_sunSampleSizeNear", var_8 );
        wait 0.05;
    }
}

_ID44189()
{
    _func_0DB( "ui_hidemap", 1 );
    var_0 = [];
    var_0[var_0.size] = &"AF_CHASE_INTROSCREEN_LINE1";
    var_0["date"] = &"AF_CHASE_INTROSCREEN_LINE2";
    var_0[var_0.size] = &"AF_CHASE_INTROSCREEN_LINE3";
    var_0[var_0.size] = &"AF_CHASE_INTROSCREEN_LINE4";
    _unknown_13C8( var_0, 1 );
    thread _ID42407::_ID4422( "intro" );
}

_ID45660()
{
    _unknown_13DA( level._ID46575, 1 );
}

_ID53688()
{
    _unknown_13E4( level._ID46575, 1 );
}

_ID52266()
{
    var_0 = [];
    var_0[var_0.size] = &"CHAR_MUSEUM_LINE1";
    var_0[var_0.size] = &"CHAR_MUSEUM_LINE3";
    var_0[var_0.size] = &"CHAR_MUSEUM_LINE4";
    _unknown_1401( var_0 );
}
