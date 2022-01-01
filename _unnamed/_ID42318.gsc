// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( isdefined( level._ID9296 ) )
        return 0;

    _ID51584();

    if ( !_ID49980() )
    {
        _ID51126();
        return;
    }

    _ID52123();
    _ID52055();
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
    precacheshader( "black" );
    precacheshader( "white" );

    if ( getdvar( "introscreen" ) == "" )
        setdvar( "introscreen", "1" );

    waitframe;
    waitframe;
}

_ID49980()
{
    if ( !_ID46331() )
        return 0;

    if ( !_ID42407::_ID47066() )
        return 0;

    return 1;
}

_ID46331()
{
    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" || getdvar( "mission_select_cam" ) == "1" )
        return 0;

    return 1;
}

_ID52055()
{
    if ( _ID48426() )
        thread _ID54449();

    _ID42237::_ID14402( "introscreen_activate" );

    switch ( level._ID912 )
    {
        case "boneyard":
        case "estate":
            _ID54602();
            break;
        case "trainer":
            _ID49093();
            break;
        case "airport":
            _ID52790();
            break;
        case "favela":
            _ID52525();
            break;
        case "favela_escape":
            _ID45123();
            break;
        case "arcadia":
            _ID47423();
            break;
        case "oilrig":
            _ID46932();
            break;
        case "dcburning":
            _ID51096();
            break;
        case "dcemp":
            _ID45104();
            break;
        case "dc_whitehouse":
            _ID48263();
            break;
        case "gulag":
            _ID46452();
            break;
        case "af_caves":
            _ID51243();
            break;
        case "roadkill":
            h2_roadkill_intro();
            break;
    }
}

_ID52790()
{
    level._ID794 freezecontrols( 1 );
    level._ID794 disableoffhandweapons();
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    var_0 = 26.5;
    _ID42407::_ID10226( 15.75, ::_ID20371, level._ID46575 );
    wait(var_0);
    wait 1;

    if ( isdefined( level._ID24793 ) )
        return;

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4434();

    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 freezecontrols( 0 );
}

_ID46452()
{
    _ID42237::_ID14402( "introscreen_complete" );
}

_ID52525()
{
    level._ID794 freezecontrols( 1 );
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    thread _ID20372( 5 );
    _ID20371( level._ID46575 );
    wait 5.0;
    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 freezecontrols( 0 );
}

_ID45123()
{
    level._ID794 freezecontrols( 1 );
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    var_0 = 1.35;
    thread _ID20372( var_0 );
    thread _ID42407::_ID14403( "introscreen_start_dialogue", 6.0 );
    _ID20371( level._ID46575, 1 );
    wait(var_0);
    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 freezecontrols( 0 );
}

_ID47423()
{
    level._ID794 freezecontrols( 1 );
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    thread _ID20372( 5.0 );
    _ID20371( level._ID46575, 1 );
    wait 5.0;
    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 freezecontrols( 0 );
}

_ID43786()
{
    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "hud_showStance", "0" );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "g_friendlyNameDist", 0 );
}

_ID46932()
{
    if ( !level._ID39431 )
        return;

    thread _ID43786();
    level._ID794 freezecontrols( 1 );
    _ID42237::_ID14413( "open_dds_door" );
    wait 2;
    level._ID794 freezecontrols( 0 );
}

_ID45075()
{
    _ID20371( level._ID46575 );
}

_ID50355()
{
    wait 0.05;
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
}

_ID51096()
{
    level._ID794 disableweapons();
    thread _ID50355();
    level._ID50380 = 1;
    level._ID794 freezecontrols( 1 );
    var_0 = newhudelem();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID408 = 1;
    var_0 setshader( "black", 640, 480 );
    wait 4.25;
    wait 3;
    level notify( "black_fading" );
    level._ID50380 = undefined;
    var_0 fadeovertime( 1.5 );
    var_0._ID55 = 0;
    wait 1.5;
    _ID42237::_ID14402( "introscreen_complete" );
    level notify( "introscreen_complete" );
    level._ID794 freezecontrols( 0 );
    level._ID794 enableweapons();
    wait 0.5;
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "hud_showStance", 1 );
    _ID42237::_ID14413( "player_exiting_start_trench" );
    _ID20371( level._ID46575, 1 );
}

_ID49093()
{
    thread _ID47625();
    level._ID794 freezecontrols( 1 );
    var_0 = newhudelem();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID408 = 1;
    var_0 setshader( "black", 640, 480 );
    _ID20371( level._ID46575 );
    wait 10;
    _ID42237::_ID14402( "introscreen_remove_submix" );
    level notify( "black_fading" );
    var_0 fadeovertime( 2 );
    var_0._ID55 = 0;
    _ID42237::_ID14402( "start_anims" );
    wait 2;
    _ID42237::_ID14402( "introscreen_complete" );
    level notify( "introscreen_complete" );
    level._ID794 freezecontrols( 0 );
    level._ID794 disableoffhandweapons();
    wait 0.5;
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "hud_showStance", 1 );
}

_ID47625()
{
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
}

_ID45104()
{
    _ID42237::_ID14413( "player_crash_done" );
    wait 1;
    _ID20371( level._ID46575 );
    _ID42237::_ID14402( "introscreen_complete" );
}

h2_roadkill_intro()
{
    thread _ID20372( 5.0 );
    wait 0.5;
    _ID20371( level._ID46575 );
    _ID42237::_ID14402( "introscreen_complete" );
}

_ID48263()
{
    level._ID794 disableweapons();
    level._ID794 freezecontrols( 1 );
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    thread _ID20372( 5.0 );
    _ID20371( level._ID46575, 1 );
    wait 5.0;
    _ID42237::_ID14402( "introscreen_complete" );
    level._ID794 freezecontrols( 0 );
    level._ID794 enableweapons();
}

_ID51243()
{
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showstance", 0 );
    setsaveddvar( "actionSlotsHide", 1 );
    level._ID48617 = newhudelem();
    level._ID48617._ID1331 = 0;
    level._ID48617._ID1339 = 0;
    level._ID48617._ID499 = "fullscreen";
    level._ID48617._ID1284 = "fullscreen";
    level._ID48617._ID408 = 0;
    level._ID48617 setshader( "black", 640, 480 );
    wait 0.05;
    _ID42237::_ID14402( "intro_dialogue_start" );
    _ID42237::_ID14413( "intro_fade_in" );
    _ID42237::_ID14402( "introscreen_remove_submix" );
    var_0 = 3;
    level._ID48617 fadeovertime( var_0 );
    level._ID48617._ID55 = 0;
    wait(var_0);
    level._ID48617 destroy();
    setsaveddvar( "compass", 1 );
    _ID42237::_ID14402( "intro_faded_in" );
    thread _ID42407::_ID4422( "intro" );
    _ID42237::_ID14413( "introscreen_feed_lines" );
    _ID20371( level._ID46575, 1 );
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
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "hud_showstance", 0 );
    setsaveddvar( "actionSlotsHide", 1 );
}

_ID54602()
{
    var_0 = isdefined( level._ID48294 );
    thread _ID49827();
    thread _ID43661();
    level._ID794 freezecontrols( 1 );
    var_1 = 16000;
    var_2 = 1;
    var_3 = 0;
    var_4 = 0;

    if ( var_2 )
    {
        var_5 = [];

        switch ( level._ID912 )
        {
            case "estate":
                cinematicingamesync( "estate_fade" );
                var_5 = [];
                var_1 = 3500;
                setsaveddvar( "sm_sunSampleSizeNear", 0.6 );
                _ID42407::_ID10226( 0.5, ::_ID47446, 0.9 );
                break;
            case "boneyard":
                cinematicingamesync( "boneyard_fade" );
                var_5 = [];
                setsaveddvar( "sm_sunSampleSizeNear", 0.6 );
                _ID42407::_ID10226( 0.5, ::_ID47446, 0.9 );
                var_1 = 4000;
                break;
        }

        _ID20371( var_5 );
    }

    var_6 = level._ID794._ID740;
    level._ID794 playersetstreamorigin( var_6 );
    level._ID794._ID740 = var_6 + ( 0, 0, var_1 );
    var_7 = spawn( "script_model", ( 69, 69, 69 ) );
    var_7._ID740 = level._ID794._ID740;
    var_7 setmodel( "tag_origin" );

    if ( var_0 )
        var_7._ID65 = ( 0, level._ID48294[1], 0 );
    else
        var_7._ID65 = level._ID794._ID65;

    level._ID794 playerlinkto( var_7, undefined, 1, 0, 0, 0, 0 );
    var_7._ID65 = ( var_7._ID65[0] + 89, var_7._ID65[1], 0 );
    wait(var_3);
    var_7 moveto( var_6 + ( 0, 0, 0 ), 2, 0, 2 );
    _ID42237::_ID14402( "introscreen_remove_submix" );
    wait 1.0;
    wait 0.5;

    if ( var_0 )
        var_7 rotateto( level._ID48294, 0.5, 0.3, 0.2 );
    else
        var_7 rotateto( ( var_7._ID65[0] - 89, var_7._ID65[1], 0 ), 0.5, 0.3, 0.2 );

    if ( !var_4 )
        savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );

    wait 0.5;

    switch ( level._ID912 )
    {
        case "estate":
            setomnvar( "ui_chaplinoverlayfadein", 200 );
            break;
        case "boneyard":
            setomnvar( "ui_chaplinoverlayfadein", 200 );
            break;
    }

    _ID42237::_ID14402( "pullup_weapon" );
    wait 0.2;
    level._ID794 unlink();
    level._ID794 freezecontrols( 0 );

    switch ( level._ID912 )
    {
        case "boneyard":
            setsaveddvar( "cg_cinematicFullScreen", "0" );
            break;
    }

    level._ID794 playerclearstreamorigin();
    thread _ID42237::_ID27077( "ui_screen_trans_in", level._ID794._ID740 );
    wait 0.2;
    thread _ID42237::_ID27077( "ui_screen_trans_out", level._ID794._ID740 );
    wait 0.2;
    _ID42237::_ID14402( "introscreen_complete" );
    wait 2;

    while ( iscinematicplaying() )
        waittillframeend;

    setomnvar( "ui_chaplinoverlayfadein", 0 );
    var_7 delete();
}

_ID54373( var_0 )
{
    self endon( "introscreen_complete" );

    for (;;)
    {
        level._ID794 playersetstreamorigin( var_0 );
        wait 0.01;
    }
}

_ID50196()
{
    setsaveddvar( "hud_drawhud", "0" );
    level._ID794 freezecontrols( 1 );
    _ID20372( 5.3, 1 );
    _ID20371( level._ID46575, 1 );
    level._ID794 freezecontrols( 0 );
    setsaveddvar( "hud_drawhud", "1" );
}

_ID52593( var_0 )
{
    var_1 = newhudelem();
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1._ID499 = "center_adjustable";
    var_1._ID1284 = "middle";
    var_1._ID983 = level._ID53347;
    var_1._ID408 = 1;
    var_1 settext( var_0 );
    var_1._ID55 = 0;
    var_1 fadeovertime( 0.2 );
    var_1._ID55 = 1;
    var_1._ID493 = 1;
    var_1._ID393 = 1.6;
    var_1._ID196 = ( 0.8, 1, 0.8 );
    var_1._ID392 = "objective";
    var_1._ID445 = ( 0.13, 0.33, 0.16 );
    var_1._ID444 = 0.2;
    var_1 setpulsefx( 30, 2500, 700 );
    wait 3;
}

_ID20371( var_0, var_1 )
{
    var_2 = getarraykeys( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];
        var_5 = 1;
        var_6 = var_3 * var_5 + 1;
        _ID42407::_ID10226( var_6, ::_ID20369, var_0[var_4], var_0.size - var_3 - 1, var_5, var_4 );
    }

    if ( isdefined( var_1 ) && var_1 )
    {
        var_7 = var_2.size + 5;
        thread _ID50514( var_7 );
    }
}

_ID50514( var_0 )
{
    level._ID44911 = 1;
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showstance", 0 );
    _ID42237::_ID24938( var_0, ::setsaveddvar, "actionSlotsHide", 0 );
    _ID42237::_ID24938( var_0, ::setsaveddvar, "hud_showstance", 1 );
    wait(var_0);
    level._ID44911 = undefined;
}

_ID20372( var_0, var_1 )
{
    _ID20373( "black", var_0, var_1 );
}

_ID50101( var_0, var_1 )
{
    _ID20373( "white", var_0, var_1 );
}

_ID20373( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1.5;

    var_3 = newhudelem();
    var_3._ID1331 = 0;
    var_3._ID1339 = 0;
    var_3._ID499 = "fullscreen";
    var_3._ID1284 = "fullscreen";
    var_3._ID408 = 1;
    var_3._ID983 = level._ID48682;
    var_3 setshader( var_0, 640, 480 );
    wait(var_1);
    _ID42237::_ID14402( "introscreen_remove_submix" );
    var_3 fadeovertime( 1.5 );
    var_3._ID55 = 0;
}

_ID48237( var_0 )
{
    var_1 = level._ID48350.size;
    var_2 = var_1 * 30;

    if ( level._ID8534 )
        var_2 -= 60;

    var_3 = newhudelem();
    var_3._ID1331 = 0;
    var_3._ID1339 = var_2;
    var_3._ID44 = "center";
    var_3._ID45 = "middle";
    var_3._ID499 = "center";
    var_3._ID1284 = "middle";
    var_3._ID983 = level._ID53347;
    var_3._ID408 = 1;
    var_3._ID393 = 1.75;
    var_3 settext( var_0 );
    var_3._ID55 = 0;
    var_3 fadeovertime( 1.2 );
    var_3._ID55 = 1;
    _ID42237::_ID3312( level._ID48350, var_3, 0 );
}

_ID50481()
{
    for ( var_0 = 0; var_0 < level._ID48350.size; var_0++ )
    {
        level._ID48350[var_0] fadeovertime( 1.5 );
        level._ID48350[var_0]._ID55 = 0;
    }

    wait 1.5;

    for ( var_0 = 0; var_0 < level._ID48350.size; var_0++ )
        level._ID48350[var_0] destroy();
}

_ID46728( var_0, var_1, var_2, var_3 )
{
    level notify( "new_introscreen_element" );

    if ( !isdefined( level._ID20305 ) )
        level._ID20305 = 0;
    else
        level._ID20305++;

    var_4 = _ID45062();
    var_5 = newhudelem();
    var_5._ID1331 = 30.7;
    var_5._ID1339 = var_4 - 8.7;
    var_5._ID44 = "left";
    var_5._ID45 = "bottom";
    var_5._ID499 = "left_adjustable";
    var_5._ID1284 = "bottom_adjustable";
    var_5._ID983 = level._ID53347;
    var_5._ID408 = 1;
    var_5 settext( var_0 );
    var_5._ID55 = 0;
    var_5 fadeovertime( 0.2 );
    var_5._ID55 = 1;
    var_5._ID493 = 1;
    var_5._ID393 = 1.25;
    var_5._ID196 = ( 0.8, 1, 0.8 );
    var_5._ID392 = "objective";
    var_5._ID445 = ( 0.13, 0.33, 0.16 );
    var_5._ID444 = 0.2;
    var_6 = int( var_1 * var_2 * 1000 + 4000 );
    var_5 setpulsefx( 30, var_6, 700 );
    thread _ID19173( var_5 );

    if ( !isdefined( var_3 ) )
        return;

    if ( !isstring( var_3 ) )
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
    thread _ID46728( var_0, var_1, var_2, var_3 );
}

_ID19173( var_0 )
{
    wait(level._ID48875);
    var_0 notify( "destroying" );
    level._ID20305 = undefined;
    var_1 = 0.5;
    var_0 fadeovertime( var_1 );
    var_0._ID55 = 0;
    wait(var_1);
    var_0 notify( "destroy" );
    var_0 destroy();
}

_ID43661()
{
    var_0 = level._ID794 getweaponslistall()[0];
    level._ID794 disableweapons();
    _ID42237::_ID14413( "pullup_weapon" );
    level._ID794 enableweapons();
}

_ID54449()
{
    _ID42237::_ID14413( "safe_for_objectives" );

    if ( !isdefined( level._ID46686 ) )
        setsaveddvar( "compass", 1 );

    if ( !isdefined( level._ID52290 ) )
        setsaveddvar( "ammoCounterHide", "0" );

    if ( !isdefined( level._ID44911 ) )
    {
        setsaveddvar( "actionSlotsHide", "0" );
        setsaveddvar( "hud_showstance", "1" );
    }
}

_ID51774( var_0 )
{
    if ( !isdefined( level._ID46575 ) )
        level._ID46575 = [];

    precachestring( var_0 );
    level._ID46575[level._ID46575.size] = var_0;
}

_ID48426()
{
    switch ( level._ID912 )
    {
        case "favela":
        case "gulag":
        case "af_caves":
        case "af_chase":
        case "airport":
        case "arcadia":
        case "contingency":
        case "dc_whitehouse":
        case "dcburning":
        case "dcemp":
        case "ending":
        case "favela_escape":
        case "invasion":
        case "oilrig":
        case "roadkill":
        case "trainer":
            return 0;
    }

    return 1;
}

_ID52123()
{
    switch ( level._ID912 )
    {
        case "airport":
            _ID51774( &"AIRPORT_LINE1" );
            _ID51774( &"AIRPORT_LINE2" );
            _ID51774( &"AIRPORT_LINE3" );
            _ID51774( &"AIRPORT_LINE4" );
            _ID51774( &"AIRPORT_LINE5" );
            break;
        case "roadkill":
            _ID51774( &"ROADKILL_LINE_1" );
            _ID51774( &"ROADKILL_LINE_2" );
            _ID51774( &"ROADKILL_LINE_3" );
            _ID51774( &"ROADKILL_LINE_4" );
            _ID51774( &"ROADKILL_LINE_5" );
            break;
        case "invasion":
            _ID51774( &"INVASION_LINE1" );
            _ID51774( &"INVASION_LINE2" );
            _ID51774( &"INVASION_LINE3" );
            _ID51774( &"INVASION_LINE4" );
            break;
        case "oilrig":
            _ID51774( &"OILRIG_INTROSCREEN_LINE_1" );
            _ID51774( &"OILRIG_INTROSCREEN_LINE_2" );
            _ID51774( &"OILRIG_INTROSCREEN_LINE_3" );
            _ID51774( &"OILRIG_INTROSCREEN_LINE_4" );
            _ID51774( &"OILRIG_INTROSCREEN_LINE_5" );
            break;
        case "gulag":
            _ID51774( &"GULAG_INTROSCREEN_1" );
            _ID51774( &"GULAG_INTROSCREEN_2" );
            _ID51774( &"GULAG_INTROSCREEN_3" );
            _ID51774( &"GULAG_INTROSCREEN_4" );
            _ID51774( &"GULAG_INTROSCREEN_5" );
            break;
        case "dcburning":
            _ID51774( &"DCBURNING_INTROSCREEN_1" );
            _ID51774( &"DCBURNING_INTROSCREEN_2" );
            _ID51774( &"DCBURNING_INTROSCREEN_3" );
            _ID51774( &"DCBURNING_INTROSCREEN_4" );
            _ID51774( &"DCBURNING_INTROSCREEN_5" );
            break;
        case "trainer":
            _ID51774( &"TRAINER_INTROSCREEN_LINE_1" );
            _ID51774( &"TRAINER_INTROSCREEN_LINE_2" );
            _ID51774( &"TRAINER_INTROSCREEN_LINE_3" );
            _ID51774( &"TRAINER_INTROSCREEN_LINE_4" );
            _ID51774( &"TRAINER_INTROSCREEN_LINE_5" );
            break;
        case "dcemp":
            _ID51774( &"DCEMP_INTROSCREEN_1" );
            _ID51774( &"DCEMP_INTROSCREEN_2" );
            _ID51774( &"DCEMP_INTROSCREEN_3" );
            _ID51774( &"DCEMP_INTROSCREEN_4" );
            _ID51774( &"DCEMP_INTROSCREEN_5" );
            break;
        case "dc_whitehouse":
            _ID51774( &"DC_WHITEHOUSE_INTROSCREEN_1" );
            _ID51774( &"DC_WHITEHOUSE_INTROSCREEN_2" );
            _ID51774( &"DC_WHITEHOUSE_INTROSCREEN_3" );
            _ID51774( &"DC_WHITEHOUSE_INTROSCREEN_4" );
            _ID51774( &"DC_WHITEHOUSE_INTROSCREEN_5" );
            break;
        case "killhouse":
            _ID51774( &"KILLHOUSE_INTROSCREEN_LINE_1" );
            _ID51774( &"KILLHOUSE_INTROSCREEN_LINE_2" );
            _ID51774( &"KILLHOUSE_INTROSCREEN_LINE_3" );
            _ID51774( &"KILLHOUSE_INTROSCREEN_LINE_4" );
            _ID51774( &"KILLHOUSE_INTROSCREEN_LINE_5" );
            break;
        case "favela":
            _ID51774( &"FAVELA_INTROSCREEN_LINE_1" );
            _ID51774( &"FAVELA_INTROSCREEN_LINE_2" );
            _ID51774( &"FAVELA_INTROSCREEN_LINE_3" );
            _ID51774( &"FAVELA_INTROSCREEN_LINE_4" );
            _ID51774( &"FAVELA_INTROSCREEN_LINE_5" );
            break;
        case "arcadia":
            _ID51774( &"ARCADIA_INTROSCREEN_LINE_1" );
            _ID51774( &"ARCADIA_INTROSCREEN_LINE_2" );
            _ID51774( &"ARCADIA_INTROSCREEN_LINE_3" );
            _ID51774( &"ARCADIA_INTROSCREEN_LINE_4" );
            _ID51774( &"ARCADIA_INTROSCREEN_LINE_5" );
            break;
        case "favela_escape":
            _ID51774( &"FAVELA_ESCAPE_INTROSCREEN_LINE_1" );
            _ID51774( &"FAVELA_ESCAPE_INTROSCREEN_LINE_2" );
            _ID51774( &"FAVELA_ESCAPE_INTROSCREEN_LINE_3" );
            _ID51774( &"FAVELA_ESCAPE_INTROSCREEN_LINE_4" );
            _ID51774( &"FAVELA_ESCAPE_INTROSCREEN_LINE_5" );
            break;
        case "estate":
            _ID51774( &"ESTATE_INTROSCREEN_LINE_1" );
            _ID51774( &"ESTATE_INTROSCREEN_LINE_2" );
            _ID51774( &"ESTATE_INTROSCREEN_LINE_3" );
            _ID51774( &"ESTATE_INTROSCREEN_LINE_4" );
            _ID51774( &"ESTATE_INTROSCREEN_LINE_5" );
            break;
        case "boneyard":
            _ID51774( &"BONEYARD_INTROSCREEN_LINE_1" );
            _ID51774( &"BONEYARD_INTROSCREEN_LINE_2" );
            _ID51774( &"BONEYARD_INTROSCREEN_LINE_3" );
            _ID51774( &"BONEYARD_INTROSCREEN_LINE_4" );
            _ID51774( &"BONEYARD_INTROSCREEN_LINE_5" );
            break;
        case "af_caves":
            _ID51774( &"AF_CAVES_LINE1" );
            _ID51774( &"AF_CAVES_LINE2" );
            _ID51774( &"AF_CAVES_LINE3" );
            _ID51774( &"AF_CAVES_LINE4" );
            break;
        case "af_chase":
            _ID51774( &"AF_CHASE_INTROSCREEN_LINE1" );
            _ID51774( &"AF_CHASE_INTROSCREEN_LINE2" );
            _ID51774( &"AF_CHASE_INTROSCREEN_LINE3" );
            _ID51774( &"AF_CHASE_INTROSCREEN_LINE4" );
            break;
        case "contingency":
            _ID51774( &"CONTINGENCY_LINE1" );
            _ID51774( &"CONTINGENCY_LINE2" );
            _ID51774( &"CONTINGENCY_LINE3" );
            _ID51774( &"CONTINGENCY_LINE4" );
            _ID51774( &"CONTINGENCY_LINE5" );
            break;
    }
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
    _ID20371( var_0, 1 );
}

_ID47446( var_0, var_1 )
{
    var_2 = getdvarfloat( "sm_sunSampleSizeNear" );

    if ( !isdefined( var_1 ) )
        var_1 = 0.25;

    var_3 = var_2 - var_1;
    var_4 = var_0 * 20;

    for ( var_5 = 0; var_5 <= var_4; var_5++ )
    {
        var_6 = var_5 / var_4;
        var_6 = 1 - var_6;
        var_7 = var_6 * var_3;
        var_8 = var_1 + var_7;
        setsaveddvar( "sm_sunSampleSizeNear", var_8 );
        wait 0.05;
    }
}

_ID44189()
{
    setsaveddvar( "ui_hidemap", 1 );
    var_0 = [];
    var_0[var_0.size] = &"AF_CHASE_INTROSCREEN_LINE1";
    var_0["date"] = &"AF_CHASE_INTROSCREEN_LINE2";
    var_0[var_0.size] = &"AF_CHASE_INTROSCREEN_LINE3";
    var_0[var_0.size] = &"AF_CHASE_INTROSCREEN_LINE4";
    _ID20371( var_0, 1 );
    thread _ID42407::_ID4422( "intro" );
}

_ID45660()
{
    _ID20371( level._ID46575, 1 );
}

_ID53688()
{
    _ID20371( level._ID46575, 1 );
}

_ID52266()
{
    var_0 = [];
    var_0[var_0.size] = &"CHAR_MUSEUM_LINE1";
    var_0[var_0.size] = &"CHAR_MUSEUM_LINE3";
    var_0[var_0.size] = &"CHAR_MUSEUM_LINE4";
    _ID20371( var_0 );
}
