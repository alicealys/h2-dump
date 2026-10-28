// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    if ( isdefined( level.credits_active ) )
        return 0;

    _id_C980();

    if ( !_id_C33C() )
    {
        _id_C7B6();
        return;
    }

    _id_CB9B();
    _id_CB57();
}

_id_C980()
{
    common_scripts\utility::flag_init( "pullup_weapon" );
    common_scripts\utility::flag_init( "introscreen_activate" );
    common_scripts\utility::flag_init( "introscreen_remove_submix" );
    common_scripts\utility::flag_init( "introscreen_complete" );
    common_scripts\utility::flag_init( "safe_for_objectives" );
    maps\_utility::delaythread( 10, common_scripts\utility::flag_set, "safe_for_objectives" );
    level._id_BEEB = 16;
    level._id_BE2A = 1000;
    level._id_D063 = 1001;
    precacheshader( "black" );
    precacheshader( "white" );

    if ( getdvar( "introscreen" ) == "" )
        setdvar( "introscreen", "1" );

    waittillframeend;
    waittillframeend;
}

_id_C33C()
{
    if ( !_id_B4FB() )
        return 0;

    if ( !maps\_utility::_id_B7DA() )
        return 0;

    return 1;
}

_id_B4FB()
{
    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" || getdvar( "mission_select_cam" ) == "1" )
        return 0;

    return 1;
}

_id_CB57()
{
    if ( _id_BD2A() )
        thread _id_D4B1();

    common_scripts\utility::flag_set( "introscreen_activate" );

    switch ( level.script )
    {
        case "estate":
        case "boneyard":
            _id_D54A();
            break;
        case "trainer":
            _id_BFC5();
            break;
        case "airport":
            _id_CE36();
            break;
        case "favela":
            _id_CD2D();
            break;
        case "favela_escape":
            _id_B043();
            break;
        case "arcadia":
            _id_B93F();
            break;
        case "oilrig":
            _id_B754();
            break;
        case "dcburning":
            _id_C798();
            break;
        case "dcemp":
            _id_B030();
            break;
        case "dc_whitehouse":
            _id_BC87();
            break;
        case "gulag":
            _id_B574();
            break;
        case "af_caves":
            _id_C82B();
            break;
        case "roadkill":
            h2_roadkill_intro();
            break;
    }
}

_id_CE36()
{
    level.player freezecontrols( 1 );
    level.player disableoffhandweapons();
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    var_0 = 26.5;
    maps\_utility::delaythread( 15.75, ::introscreen_feed_lines, level._id_B5EF );
    wait( var_0 );
    wait 1;

    if ( isdefined( level.nextmission ) )
        return;

    if ( !common_scripts\utility::flag( "do_not_save" ) )
        thread maps\_utility::autosave_now_silent();

    common_scripts\utility::flag_set( "introscreen_complete" );
    level.player freezecontrols( 0 );
}

_id_B574()
{
    common_scripts\utility::flag_set( "introscreen_complete" );
}

_id_CD2D()
{
    level.player freezecontrols( 1 );
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    thread introscreen_generic_black_fade_in( 5 );
    introscreen_feed_lines( level._id_B5EF );
    wait 5.0;
    common_scripts\utility::flag_set( "introscreen_complete" );
    level.player freezecontrols( 0 );
}

_id_B043()
{
    level.player freezecontrols( 1 );
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    var_0 = 1.35;
    thread introscreen_generic_black_fade_in( var_0 );
    thread maps\_utility::flag_set_delayed( "introscreen_start_dialogue", 6.0 );
    introscreen_feed_lines( level._id_B5EF, 1 );
    wait( var_0 );
    common_scripts\utility::flag_set( "introscreen_complete" );
    level.player freezecontrols( 0 );
}

_id_B93F()
{
    level.player freezecontrols( 1 );
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    thread introscreen_generic_black_fade_in( 5.0 );
    introscreen_feed_lines( level._id_B5EF, 1 );
    wait 5.0;
    common_scripts\utility::flag_set( "introscreen_complete" );
    level.player freezecontrols( 0 );
}

_id_AB0A()
{
    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "hud_showStance", "0" );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "g_friendlyNameDist", 0 );
}

_id_B754()
{
    if ( !level.underwater )
        return;

    thread _id_AB0A();
    level.player freezecontrols( 1 );
    common_scripts\utility::flag_wait( "open_dds_door" );
    wait 2;
    level.player freezecontrols( 0 );
}

_id_B013()
{
    introscreen_feed_lines( level._id_B5EF );
}

_id_C4B3()
{
    wait 0.05;
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
}

_id_C798()
{
    level.player disableweapons();
    thread _id_C4B3();
    level._id_C4CC = 1;
    level.player freezecontrols( 1 );
    var_0 = newhudelem();
    var_0.x = 0;
    var_0.y = 0;
    var_0.horzalign = "fullscreen";
    var_0.vertalign = "fullscreen";
    var_0.foreground = 1;
    var_0 setshader( "black", 640, 480 );
    wait 4.25;
    wait 3;
    level notify( "black_fading" );
    level._id_C4CC = undefined;
    var_0 fadeovertime( 1.5 );
    var_0.alpha = 0;
    wait 1.5;
    common_scripts\utility::flag_set( "introscreen_complete" );
    level notify( "introscreen_complete" );
    level.player freezecontrols( 0 );
    level.player enableweapons();
    wait 0.5;
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "hud_showStance", 1 );
    common_scripts\utility::flag_wait( "player_exiting_start_trench" );
    introscreen_feed_lines( level._id_B5EF, 1 );
}

_id_BFC5()
{
    thread _id_BA09();
    level.player freezecontrols( 1 );
    var_0 = newhudelem();
    var_0.x = 0;
    var_0.y = 0;
    var_0.horzalign = "fullscreen";
    var_0.vertalign = "fullscreen";
    var_0.foreground = 1;
    var_0 setshader( "black", 640, 480 );
    introscreen_feed_lines( level._id_B5EF );
    wait 10;
    common_scripts\utility::flag_set( "introscreen_remove_submix" );
    level notify( "black_fading" );
    var_0 fadeovertime( 2 );
    var_0.alpha = 0;
    common_scripts\utility::flag_set( "start_anims" );
    wait 2;
    common_scripts\utility::flag_set( "introscreen_complete" );
    level notify( "introscreen_complete" );
    level.player freezecontrols( 0 );
    level.player disableoffhandweapons();
    wait 0.5;
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "hud_showStance", 1 );
}

_id_BA09()
{
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
}

_id_B030()
{
    common_scripts\utility::flag_wait( "player_crash_done" );
    wait 1;
    introscreen_feed_lines( level._id_B5EF );
    common_scripts\utility::flag_set( "introscreen_complete" );
}

h2_roadkill_intro()
{
    thread introscreen_generic_black_fade_in( 5.0 );
    wait 0.5;
    introscreen_feed_lines( level._id_B5EF );
    common_scripts\utility::flag_set( "introscreen_complete" );
}

_id_BC87()
{
    level.player disableweapons();
    level.player freezecontrols( 1 );
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );
    thread introscreen_generic_black_fade_in( 5.0 );
    introscreen_feed_lines( level._id_B5EF, 1 );
    wait 5.0;
    common_scripts\utility::flag_set( "introscreen_complete" );
    level.player freezecontrols( 0 );
    level.player enableweapons();
}

_id_C82B()
{
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showstance", 0 );
    setsaveddvar( "actionSlotsHide", 1 );
    level._id_BDE9 = newhudelem();
    level._id_BDE9.x = 0;
    level._id_BDE9.y = 0;
    level._id_BDE9.horzalign = "fullscreen";
    level._id_BDE9.vertalign = "fullscreen";
    level._id_BDE9.foreground = 0;
    level._id_BDE9 setshader( "black", 640, 480 );
    wait 0.05;
    common_scripts\utility::flag_set( "intro_dialogue_start" );
    common_scripts\utility::flag_wait( "intro_fade_in" );
    common_scripts\utility::flag_set( "introscreen_remove_submix" );
    var_0 = 3;
    level._id_BDE9 fadeovertime( var_0 );
    level._id_BDE9.alpha = 0;
    wait( var_0 );
    level._id_BDE9 destroy();
    setsaveddvar( "compass", 1 );
    common_scripts\utility::flag_set( "intro_faded_in" );
    thread maps\_utility::autosave_by_name( "intro" );
    common_scripts\utility::flag_wait( "introscreen_feed_lines" );
    introscreen_feed_lines( level._id_B5EF, 1 );
}

_id_C7B6()
{
    waittillframeend;
    waittillframeend;
    waittillframeend;
    waittillframeend;
    common_scripts\utility::flag_set( "introscreen_remove_submix" );
    common_scripts\utility::flag_set( "introscreen_complete" );
}

_id_C2A3()
{
    wait 0.05;
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "hud_showstance", 0 );
    setsaveddvar( "actionSlotsHide", 1 );
}

_id_D54A()
{
    var_0 = isdefined( level._id_BCA6 );
    thread _id_C2A3();
    thread _id_AA8D();
    level.player freezecontrols( 1 );
    var_1 = 16000;
    var_2 = 1;
    var_3 = 0;
    var_4 = 0;

    if ( var_2 )
    {
        var_5 = [];

        switch ( level.script )
        {
            case "estate":
                cinematicingamesync( "estate_fade" );
                var_5 = [];
                var_1 = 3500;
                setsaveddvar( "sm_sunSampleSizeNear", 0.6 );
                maps\_utility::delaythread( 0.5, ::_id_B956, 0.9 );
                break;
            case "boneyard":
                cinematicingamesync( "boneyard_fade" );
                var_5 = [];
                setsaveddvar( "sm_sunSampleSizeNear", 0.6 );
                maps\_utility::delaythread( 0.5, ::_id_B956, 0.9 );
                var_1 = 4000;
                break;
        }

        introscreen_feed_lines( var_5 );
    }

    var_6 = level.player.origin;
    level.player playersetstreamorigin( var_6 );
    level.player.origin = var_6 + ( 0, 0, var_1 );
    var_7 = spawn( "script_model", ( 69, 69, 69 ) );
    var_7.origin = level.player.origin;
    var_7 setmodel( "tag_origin" );

    if ( var_0 )
        var_7.angles = ( 0, level._id_BCA6[1], 0 );
    else
        var_7.angles = level.player.angles;

    level.player playerlinkto( var_7, undefined, 1, 0, 0, 0, 0 );
    var_7.angles = ( var_7.angles[0] + 89, var_7.angles[1], 0 );
    wait( var_3 );
    var_7 moveto( var_6 + ( 0, 0, 0 ), 2, 0, 2 );
    common_scripts\utility::flag_set( "introscreen_remove_submix" );
    wait 1.0;
    wait 0.5;

    if ( var_0 )
        var_7 rotateto( level._id_BCA6, 0.5, 0.3, 0.2 );
    else
        var_7 rotateto( ( var_7.angles[0] - 89, var_7.angles[1], 0 ), 0.5, 0.3, 0.2 );

    if ( !var_4 )
        savegame( "levelstart", &"AUTOSAVE_LEVELSTART", "whatever", 1 );

    wait 0.5;

    switch ( level.script )
    {
        case "estate":
            setomnvar( "ui_chaplinoverlayfadein", 200 );
            break;
        case "boneyard":
            setomnvar( "ui_chaplinoverlayfadein", 200 );
            break;
    }

    common_scripts\utility::flag_set( "pullup_weapon" );
    wait 0.2;
    level.player unlink();
    level.player freezecontrols( 0 );

    switch ( level.script )
    {
        case "boneyard":
            setsaveddvar( "cg_cinematicFullScreen", "0" );
            break;
    }

    level.player playerclearstreamorigin();
    thread common_scripts\utility::play_sound_in_space( "ui_screen_trans_in", level.player.origin );
    wait 0.2;
    thread common_scripts\utility::play_sound_in_space( "ui_screen_trans_out", level.player.origin );
    wait 0.2;
    common_scripts\utility::flag_set( "introscreen_complete" );
    wait 2;

    while ( iscinematicplaying() )
        waitframe();

    setomnvar( "ui_chaplinoverlayfadein", 0 );
    var_7 delete();
}

_id_D465( var_0 )
{
    self endon( "introscreen_complete" );

    for (;;)
    {
        level.player playersetstreamorigin( var_0 );
        wait 0.01;
    }
}

_id_C414()
{
    setsaveddvar( "hud_drawhud", "0" );
    level.player freezecontrols( 1 );
    introscreen_generic_black_fade_in( 5.3, 1 );
    introscreen_feed_lines( level._id_B5EF, 1 );
    level.player freezecontrols( 0 );
    setsaveddvar( "hud_drawhud", "1" );
}

_id_CD71( var_0 )
{
    var_1 = newhudelem();
    var_1.alignx = "center";
    var_1.aligny = "middle";
    var_1.horzalign = "center_adjustable";
    var_1.vertalign = "middle";
    var_1.sort = level._id_D063;
    var_1.foreground = 1;
    var_1 settext( var_0 );
    var_1.alpha = 0;
    var_1 fadeovertime( 0.2 );
    var_1.alpha = 1;
    var_1.hidewheninmenu = 1;
    var_1.fontscale = 1.6;
    var_1.color = ( 0.8, 1, 0.8 );
    var_1.font = "objective";
    var_1.glowcolor = ( 0.13, 0.33, 0.16 );
    var_1.glowalpha = 0.2;
    var_1 setpulsefx( 30, 2500, 700 );
    wait 3;
}

introscreen_feed_lines( var_0, var_1 )
{
    var_2 = getarraykeys( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];
        var_5 = 1;
        var_6 = var_3 * var_5 + 1;
        maps\_utility::delaythread( var_6, ::introscreen_corner_line, var_0[var_4], var_0.size - var_3 - 1, var_5, var_4 );
    }

    if ( isdefined( var_1 ) && var_1 )
    {
        var_7 = var_2.size + 5;
        thread _id_C552( var_7 );
    }
}

_id_C552( var_0 )
{
    level._id_AF6F = 1;
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showstance", 0 );
    common_scripts\utility::noself_delaycall( var_0, ::setsaveddvar, "actionSlotsHide", 0 );
    common_scripts\utility::noself_delaycall( var_0, ::setsaveddvar, "hud_showstance", 1 );
    wait( var_0 );
    level._id_AF6F = undefined;
}

introscreen_generic_black_fade_in( var_0, var_1 )
{
    introscreen_generic_fade_in( "black", var_0, var_1 );
}

_id_C3B5( var_0, var_1 )
{
    introscreen_generic_fade_in( "white", var_0, var_1 );
}

introscreen_generic_fade_in( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1.5;

    var_3 = newhudelem();
    var_3.x = 0;
    var_3.y = 0;
    var_3.horzalign = "fullscreen";
    var_3.vertalign = "fullscreen";
    var_3.foreground = 1;
    var_3.sort = level._id_BE2A;
    var_3 setshader( var_0, 640, 480 );
    wait( var_1 );
    common_scripts\utility::flag_set( "introscreen_remove_submix" );
    var_3 fadeovertime( 1.5 );
    var_3.alpha = 0;
}

_id_BC6D( var_0 )
{
    var_1 = level._id_BCDE.size;
    var_2 = var_1 * 30;

    if ( level.console )
        var_2 -= 60;

    var_3 = newhudelem();
    var_3.x = 0;
    var_3.y = var_2;
    var_3.alignx = "center";
    var_3.aligny = "middle";
    var_3.horzalign = "center";
    var_3.vertalign = "middle";
    var_3.sort = level._id_D063;
    var_3.foreground = 1;
    var_3.fontscale = 1.75;
    var_3 settext( var_0 );
    var_3.alpha = 0;
    var_3 fadeovertime( 1.2 );
    var_3.alpha = 1;
    common_scripts\utility::array_insert( level._id_BCDE, var_3, 0 );
}

_id_C531()
{
    for ( var_0 = 0; var_0 < level._id_BCDE.size; var_0++ )
    {
        level._id_BCDE[var_0] fadeovertime( 1.5 );
        level._id_BCDE[var_0].alpha = 0;
    }

    wait 1.5;

    for ( var_0 = 0; var_0 < level._id_BCDE.size; var_0++ )
        level._id_BCDE[var_0] destroy();
}

_id_B688( var_0, var_1, var_2, var_3 )
{
    level notify( "new_introscreen_element" );

    if ( !isdefined( level.intro_offset ) )
        level.intro_offset = 0;
    else
        level.intro_offset++;

    var_4 = _id_B006();
    var_5 = newhudelem();
    var_5.x = 30.7;
    var_5.y = var_4 - 8.7;
    var_5.alignx = "left";
    var_5.aligny = "bottom";
    var_5.horzalign = "left_adjustable";
    var_5.vertalign = "bottom_adjustable";
    var_5.sort = level._id_D063;
    var_5.foreground = 1;
    var_5 settext( var_0 );
    var_5.alpha = 0;
    var_5 fadeovertime( 0.2 );
    var_5.alpha = 1;
    var_5.hidewheninmenu = 1;
    var_5.fontscale = 1.25;
    var_5.color = ( 0.8, 1, 0.8 );
    var_5.font = "objective";
    var_5.glowcolor = ( 0.13, 0.33, 0.16 );
    var_5.glowalpha = 0.2;
    var_6 = int( var_1 * var_2 * 1000 + 4000 );
    var_5 setpulsefx( 30, var_6, 700 );
    thread hudelem_destroy( var_5 );

    if ( !isdefined( var_3 ) )
        return;

    if ( !isstring( var_3 ) )
        return;

    if ( var_3 != "date" )
        return;
}

_id_B006()
{
    return level.intro_offset * 18 - 82;
}

introscreen_corner_line( var_0, var_1, var_2, var_3 )
{
    thread _id_B688( var_0, var_1, var_2, var_3 );
}

hudelem_destroy( var_0 )
{
    wait( level._id_BEEB );
    var_0 notify( "destroying" );
    level.intro_offset = undefined;
    var_1 = 0.5;
    var_0 fadeovertime( var_1 );
    var_0.alpha = 0;
    wait( var_1 );
    var_0 notify( "destroy" );
    var_0 destroy();
}

_id_AA8D()
{
    var_0 = level.player getweaponslistall()[0];
    level.player disableweapons();
    common_scripts\utility::flag_wait( "pullup_weapon" );
    level.player enableweapons();
}

_id_D4B1()
{
    common_scripts\utility::flag_wait( "safe_for_objectives" );

    if ( !isdefined( level._id_B65E ) )
        setsaveddvar( "compass", 1 );

    if ( !isdefined( level._id_CC42 ) )
        setsaveddvar( "ammoCounterHide", "0" );

    if ( !isdefined( level._id_AF6F ) )
    {
        setsaveddvar( "actionSlotsHide", "0" );
        setsaveddvar( "hud_showstance", "1" );
    }
}

_id_CA3E( var_0 )
{
    if ( !isdefined( level._id_B5EF ) )
        level._id_B5EF = [];

    precachestring( var_0 );
    level._id_B5EF[level._id_B5EF.size] = var_0;
}

_id_BD2A()
{
    switch ( level.script )
    {
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
            return 0;
    }

    return 1;
}

_id_CB9B()
{
    switch ( level.script )
    {
        case "airport":
            _id_CA3E( &"AIRPORT_LINE1" );
            _id_CA3E( &"AIRPORT_LINE2" );
            _id_CA3E( &"AIRPORT_LINE3" );
            _id_CA3E( &"AIRPORT_LINE4" );
            _id_CA3E( &"AIRPORT_LINE5" );
            break;
        case "roadkill":
            _id_CA3E( &"ROADKILL_LINE_1" );
            _id_CA3E( &"ROADKILL_LINE_2" );
            _id_CA3E( &"ROADKILL_LINE_3" );
            _id_CA3E( &"ROADKILL_LINE_4" );
            _id_CA3E( &"ROADKILL_LINE_5" );
            break;
        case "invasion":
            _id_CA3E( &"INVASION_LINE1" );
            _id_CA3E( &"INVASION_LINE2" );
            _id_CA3E( &"INVASION_LINE3" );
            _id_CA3E( &"INVASION_LINE4" );
            break;
        case "oilrig":
            _id_CA3E( &"OILRIG_INTROSCREEN_LINE_1" );
            _id_CA3E( &"OILRIG_INTROSCREEN_LINE_2" );
            _id_CA3E( &"OILRIG_INTROSCREEN_LINE_3" );
            _id_CA3E( &"OILRIG_INTROSCREEN_LINE_4" );
            _id_CA3E( &"OILRIG_INTROSCREEN_LINE_5" );
            break;
        case "gulag":
            _id_CA3E( &"GULAG_INTROSCREEN_1" );
            _id_CA3E( &"GULAG_INTROSCREEN_2" );
            _id_CA3E( &"GULAG_INTROSCREEN_3" );
            _id_CA3E( &"GULAG_INTROSCREEN_4" );
            _id_CA3E( &"GULAG_INTROSCREEN_5" );
            break;
        case "dcburning":
            _id_CA3E( &"DCBURNING_INTROSCREEN_1" );
            _id_CA3E( &"DCBURNING_INTROSCREEN_2" );
            _id_CA3E( &"DCBURNING_INTROSCREEN_3" );
            _id_CA3E( &"DCBURNING_INTROSCREEN_4" );
            _id_CA3E( &"DCBURNING_INTROSCREEN_5" );
            break;
        case "trainer":
            _id_CA3E( &"TRAINER_INTROSCREEN_LINE_1" );
            _id_CA3E( &"TRAINER_INTROSCREEN_LINE_2" );
            _id_CA3E( &"TRAINER_INTROSCREEN_LINE_3" );
            _id_CA3E( &"TRAINER_INTROSCREEN_LINE_4" );
            _id_CA3E( &"TRAINER_INTROSCREEN_LINE_5" );
            break;
        case "dcemp":
            _id_CA3E( &"DCEMP_INTROSCREEN_1" );
            _id_CA3E( &"DCEMP_INTROSCREEN_2" );
            _id_CA3E( &"DCEMP_INTROSCREEN_3" );
            _id_CA3E( &"DCEMP_INTROSCREEN_4" );
            _id_CA3E( &"DCEMP_INTROSCREEN_5" );
            break;
        case "dc_whitehouse":
            _id_CA3E( &"DC_WHITEHOUSE_INTROSCREEN_1" );
            _id_CA3E( &"DC_WHITEHOUSE_INTROSCREEN_2" );
            _id_CA3E( &"DC_WHITEHOUSE_INTROSCREEN_3" );
            _id_CA3E( &"DC_WHITEHOUSE_INTROSCREEN_4" );
            _id_CA3E( &"DC_WHITEHOUSE_INTROSCREEN_5" );
            break;
        case "killhouse":
            _id_CA3E( &"KILLHOUSE_INTROSCREEN_LINE_1" );
            _id_CA3E( &"KILLHOUSE_INTROSCREEN_LINE_2" );
            _id_CA3E( &"KILLHOUSE_INTROSCREEN_LINE_3" );
            _id_CA3E( &"KILLHOUSE_INTROSCREEN_LINE_4" );
            _id_CA3E( &"KILLHOUSE_INTROSCREEN_LINE_5" );
            break;
        case "favela":
            _id_CA3E( &"FAVELA_INTROSCREEN_LINE_1" );
            _id_CA3E( &"FAVELA_INTROSCREEN_LINE_2" );
            _id_CA3E( &"FAVELA_INTROSCREEN_LINE_3" );
            _id_CA3E( &"FAVELA_INTROSCREEN_LINE_4" );
            _id_CA3E( &"FAVELA_INTROSCREEN_LINE_5" );
            break;
        case "arcadia":
            _id_CA3E( &"ARCADIA_INTROSCREEN_LINE_1" );
            _id_CA3E( &"ARCADIA_INTROSCREEN_LINE_2" );
            _id_CA3E( &"ARCADIA_INTROSCREEN_LINE_3" );
            _id_CA3E( &"ARCADIA_INTROSCREEN_LINE_4" );
            _id_CA3E( &"ARCADIA_INTROSCREEN_LINE_5" );
            break;
        case "favela_escape":
            _id_CA3E( &"FAVELA_ESCAPE_INTROSCREEN_LINE_1" );
            _id_CA3E( &"FAVELA_ESCAPE_INTROSCREEN_LINE_2" );
            _id_CA3E( &"FAVELA_ESCAPE_INTROSCREEN_LINE_3" );
            _id_CA3E( &"FAVELA_ESCAPE_INTROSCREEN_LINE_4" );
            _id_CA3E( &"FAVELA_ESCAPE_INTROSCREEN_LINE_5" );
            break;
        case "estate":
            _id_CA3E( &"ESTATE_INTROSCREEN_LINE_1" );
            _id_CA3E( &"ESTATE_INTROSCREEN_LINE_2" );
            _id_CA3E( &"ESTATE_INTROSCREEN_LINE_3" );
            _id_CA3E( &"ESTATE_INTROSCREEN_LINE_4" );
            _id_CA3E( &"ESTATE_INTROSCREEN_LINE_5" );
            break;
        case "boneyard":
            _id_CA3E( &"BONEYARD_INTROSCREEN_LINE_1" );
            _id_CA3E( &"BONEYARD_INTROSCREEN_LINE_2" );
            _id_CA3E( &"BONEYARD_INTROSCREEN_LINE_3" );
            _id_CA3E( &"BONEYARD_INTROSCREEN_LINE_4" );
            _id_CA3E( &"BONEYARD_INTROSCREEN_LINE_5" );
            break;
        case "af_caves":
            _id_CA3E( &"AF_CAVES_LINE1" );
            _id_CA3E( &"AF_CAVES_LINE2" );
            _id_CA3E( &"AF_CAVES_LINE3" );
            _id_CA3E( &"AF_CAVES_LINE4" );
            break;
        case "af_chase":
            _id_CA3E( &"AF_CHASE_INTROSCREEN_LINE1" );
            _id_CA3E( &"AF_CHASE_INTROSCREEN_LINE2" );
            _id_CA3E( &"AF_CHASE_INTROSCREEN_LINE3" );
            _id_CA3E( &"AF_CHASE_INTROSCREEN_LINE4" );
            break;
        case "contingency":
            _id_CA3E( &"CONTINGENCY_LINE1" );
            _id_CA3E( &"CONTINGENCY_LINE2" );
            _id_CA3E( &"CONTINGENCY_LINE3" );
            _id_CA3E( &"CONTINGENCY_LINE4" );
            _id_CA3E( &"CONTINGENCY_LINE5" );
            break;
    }
}

_id_D28C()
{
    wait 17;
    var_0 = [];
    var_0[var_0.size] = &"CLIFFHANGER_LINE1";
    var_0["date"] = &"CLIFFHANGER_LINE2";
    var_0[var_0.size] = &"CLIFFHANGER_LINE3";
    var_0[var_0.size] = &"CLIFFHANGER_LINE4";
    var_0[var_0.size] = &"CLIFFHANGER_LINE5";
    introscreen_feed_lines( var_0, 1 );
}

_id_B956( var_0, var_1 )
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

_id_AC9D()
{
    setsaveddvar( "ui_hidemap", 1 );
    var_0 = [];
    var_0[var_0.size] = &"AF_CHASE_INTROSCREEN_LINE1";
    var_0["date"] = &"AF_CHASE_INTROSCREEN_LINE2";
    var_0[var_0.size] = &"AF_CHASE_INTROSCREEN_LINE3";
    var_0[var_0.size] = &"AF_CHASE_INTROSCREEN_LINE4";
    introscreen_feed_lines( var_0, 1 );
    thread maps\_utility::autosave_by_name( "intro" );
}

_id_B25C()
{
    introscreen_feed_lines( level._id_B5EF, 1 );
}

_id_D1B8()
{
    introscreen_feed_lines( level._id_B5EF, 1 );
}

_id_CC2A()
{
    var_0 = [];
    var_0[var_0.size] = &"CHAR_MUSEUM_LINE1";
    var_0[var_0.size] = &"CHAR_MUSEUM_LINE3";
    var_0[var_0.size] = &"CHAR_MUSEUM_LINE4";
    introscreen_feed_lines( var_0 );
}
