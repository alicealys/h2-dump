// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init()
{
    precacheshader( "h1_hud_tutorial_blur" );
    precacheshader( "h1_hud_tutorial_border" );
    precachestring( &"SCRIPT_PLATFORM_CHEAT_USETOSLOWMO" );
    precacheshellshock( "chaplincheat" );
    level._ID40543 = 0;
    setsaveddvar( "using_vision_cheat", 0 );
    level._ID44568 = [];
    level._ID48268 = [];
    level._ID45166 = [];
    level._ID45275 = getdvar( "bg_bobAmplitudeStanding" );
    level._ID50405 = 0;
    level.invisibleman_body = "h2_invisibleman_body";
    level.invisibleman_head = "h2_invisibleman_head";
    precachemodel( level.invisibleman_body );
    precachemodel( level.invisibleman_head );
    level._ID44646 = 0;
    level.sf = spawnstruct();

    if ( getdvar( "ui_char_museum_mode" ) != "free" )
        level.sf.badguyteams = [ "axis", "team3" ];
    else
        level.sf.badguyteams = [ "axis", "allies", "neutral" ];

    thread _ID48032();
    thread _ID48983();
    thread _ID45214();
    thread _ID51561();
    thread _ID50614();
    thread _ID50663();
    thread _ID45456::init();
    add_specialfeatures_function( ::_ID53271 );

    if ( !isdefined( level._ID1426 ) )
        level._ID1426 = [];

    level._ID1426["grain_test"] = loadfx( "fx/misc/grain_test" );
    _ID42237::_ID14400( "has_cheated" );
    level._ID50460["bw"] = 0;
    level._ID50460["invert"] = 0;
    level._ID50460["contrast"] = 0;
    level._ID50460["chaplin"] = 0;
    level._ID50460["edge"] = 0;
    _ID34381();
    thread _ID45652();
    _ID42237::_ID14400( "disable_slowmo_cheat" );

    if ( level.script == "airport" )
        return;

    level.player thread _ID47585();
}

cheat_init()
{
    if ( !isdefined( self.cheat ) )
        self.cheat = spawnstruct();
}

_ID45652()
{
    _ID52518();

    for (;;)
    {
        if ( issaverecentlyloaded() )
            _ID52518();

        wait 0.1;
    }
}

_ID52518()
{
    for ( var_0 = 0; var_0 < level._ID45166.size; var_0++ )
        setdvar( level._ID45166[var_0], level._ID44568[level._ID45166[var_0]] );

    if ( !isdefined( level._ID9296 ) || !level._ID9296 )
    {
        setdvar( "credits_active", "0" );
        setdvar( "credits_load", "0" );
    }
}

_ID48634( var_0 )
{
    var_1 = getdvarint( var_0, 0 ) && getdvar( "arcademode" ) != "1" && getdvar( "credits_active" ) != "1";
    return var_1;
}

_ID52837( var_0, var_1 )
{
    setdynamicdvar( var_0, 0 );
    level._ID44568[var_0] = _ID48634( var_0 );
    level._ID48268[var_0] = var_1;

    if ( level._ID44568[var_0] )
        [[ var_1 ]]( level._ID44568[var_0] );
}

_ID52923( var_0 )
{
    var_1 = _ID48634( var_0 );

    if ( level._ID44568[var_0] == var_1 )
        return;

    if ( var_1 )
        _ID42237::_ID14402( "has_cheated" );

    level._ID44568[var_0] = var_1;
    thread [[ level._ID48268[var_0] ]]( var_1 );
    setomnvar( "ui_refreshcheathud", var_1 );
}

_ID47585()
{
    level waittill( "load_finished" );
    _ID52837( "sf_use_bw", ::_ID50783 );
    _ID52837( "sf_use_slowmo", ::_ID52950 );
    _ID52837( "sf_use_chaplin", ::_ID45061 );
    _ID52837( "sf_use_ignoreammo", ::_ID54563 );
    _ID52837( "sf_use_clustergrenade", ::_ID45358 );
    _ID52837( "sf_use_tire_explosion", ::_ID43350 );
    _ID52837( "sf_use_ragdoll_mode", ::_ID44931 );
    _ID52837( "sf_use_pomegrenade_mode", ::_ID50345 );
    _ID52837( "sf_use_pineapple_mode", ::_ID46618 );
    _ID52837( "sf_use_wolf_mode", ::_ID49727 );
    _ID52837( "sf_use_football_mode", ::_ID52101 );
    _ID52837( "sf_use_pinata_mode", ::_ID54134 );
    _ID52837( "sf_use_edge_mode", ::edge_mode_update );
    _ID52837( "sf_use_attraction_mode", _ID45456::_ID45898 );
    _ID52837( "sf_use_desperation_mode", _ID45456::_ID45370 );
    _ID52837( "sf_use_fortitude_mode", _ID45456::_ID47958 );
    _ID52837( "sf_use_greenberet_mode", _ID45456::greenberet_mode_update );
    _ID52837( "sf_use_martyr_mode", _ID45456::_ID54195 );
    _ID52837( "sf_use_polterghost_mode", _ID45456::_ID54284 );
    _ID52837( "sf_use_precision_mode", _ID45456::_ID54268 );
    _ID52837( "sf_use_starvation_mode", _ID45456::_ID53773 );
    level._ID45166 = getarraykeys( level._ID44568 );

    if ( _ID44352() )
        _ID42237::_ID14402( "has_cheated" );

    for (;;)
    {
        for ( var_0 = 0; var_0 < level._ID45166.size; var_0++ )
            _ID52923( level._ID45166[var_0] );

        if ( getdvar( "credits_active" ) == "1" )
            break;

        wait 0.05;
    }
}

_ID48032()
{
    precachemodel( "com_junktire" );
    level._ID46891 = "com_junktire";
    level._ID46534 = 0;
    level._ID46750 = [];
    level._ID49958 = 90;
    level._ID49296 = 15;
}

_ID43350( var_0 )
{
    if ( var_0 )
        level._ID46534 = 1;
    else
        level._ID46534 = 0;
}

_ID45358( var_0 )
{
    if ( var_0 )
        level.player thread _ID48955();
    else
        level notify( "end_cluster_grenades" );
}

_ID48955()
{
    level endon( "end_cluster_grenades" );

    for (;;)
    {
        self waittill( "grenade_fire",  var_0, var_1  );

        if ( isdefined( var_0._ID47092 ) && var_0._ID47092 )
            continue;

        if ( var_1 == "fraggrenade" || var_1 == level._ID51383 )
            var_0 thread _ID47171( "fraggrenade" );
    }
}

_ID47171( var_0 )
{
    self endon( "timeout" );
    var_1 = self.origin;
    thread _ID42407::_ID37742( 8 );
    self waittill( "explode",  var_2  );
    var_1 = var_2 + ( 0, 0, 5 );
    var_3 = 8;

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        var_5 = _ID53592();
        var_6 = 1.5 + var_4 / 6 + randomfloat( 0.1 );
        var_7 = magicgrenademanual( var_0, var_1, var_5, var_6, level.player );
        var_7._ID47092 = 1;
    }
}

_ID53592()
{
    var_0 = randomfloat( 360 );
    var_1 = randomfloatrange( 65, 85 );
    var_2 = sin( var_1 );
    var_3 = cos( var_1 );
    var_4 = cos( var_0 ) * var_3;
    var_5 = sin( var_0 ) * var_3;
    var_6 = randomfloatrange( 400, 600 );
    var_7 = ( var_4, var_5, var_2 ) * var_6;
    return var_7;
}

_ID54563( var_0 )
{
    if ( level.script == "ac130" )
        return;

    if ( var_0 )
        setsaveddvar( "player_sustainAmmo", 1 );
    else
        setsaveddvar( "player_sustainAmmo", 0 );
}

_ID50557( var_0 )
{
    if ( var_0 )
        level._ID50460["contrast"] = 1;
    else
        level._ID50460["contrast"] = 0;

    _ID47192();
}

_ID50783( var_0 )
{
    if ( var_0 )
        level._ID50460["bw"] = 1;
    else
        level._ID50460["bw"] = 0;

    _ID47192();
}

_ID46112( var_0 )
{
    if ( var_0 )
        level._ID50460["invert"] = 1;
    else
        level._ID50460["invert"] = 0;

    _ID47192();
}

_ID47192( var_0 )
{
    if ( level.script == "ac130" )
        return;

    if ( isdefined( var_0 ) )
        var_1 = var_0;
    else
        var_1 = 0;

    var_2 = "";

    if ( level._ID50460["bw"] )
        var_2 += "_bw";

    if ( level._ID50460["invert"] )
    {
        var_2 += "_invert";

        if ( isdefined( level._ID51403 ) )
            var_2 += level._ID51403;
    }

    if ( level._ID50460["contrast"] )
    {
        var_2 += "_contrast";

        if ( isdefined( level._ID49165 ) )
            var_2 += level._ID49165;
    }

    if ( level._ID50460["chaplin"] )
        var_2 = "sepia";

    if ( level._ID50460["edge"] )
    {
        var_2 = "edge";
        setsaveddvar( "r_useCheatPostFX", 1 );
    }
    else
        setsaveddvar( "r_useCheatPostFX", 0 );

    if ( var_2 != "" )
    {
        level._ID40543 = 1;
        setsaveddvar( "using_vision_cheat", 1 );

        if ( var_2 == "edge" || var_2 == "sepia" )
            visionsetnaked( var_2, var_1 );
        else
            visionsetnaked( "cheat" + var_2, var_1 );
    }
    else
    {
        level._ID40543 = 0;
        setsaveddvar( "using_vision_cheat", 0 );
        _ID42407::_ID32515( level._ID22719, var_1 );
    }
}

_ID34381()
{
    level._ID34362 = spawnstruct();
    _ID34380();
    notifyoncommand( "_cheat_player_press_slowmo", "+melee" );
    notifyoncommand( "_cheat_player_press_slowmo", "+melee_breath" );
    notifyoncommand( "_cheat_player_press_slowmo", "+melee_zoom" );
}

_ID34380()
{
    level._ID34362._ID22188 = 0.0;
    level._ID34362._ID22189 = 0.25;
    level._ID34362._ID35417 = 0.4;
    level._ID34362._ID35414 = 1.0;
}

_ID51603()
{
    return 1;
}

_ID53000()
{
    level endon( "disable_slowmo" );
    _ID42237::_ID14413( "introscreen_complete" );

    if ( level._ID50405 != 0 )
    {
        level._ID50405 = 0;
        return;
    }

    if ( level._ID8534 )
        var_0 = 5;
    else
        var_0 = 6;

    level._ID50405 = 1;
    var_1 = 180;
    level.cheat_slowmo_hud = spawnstruct();
    level.cheat_slowmo_hud.myhintbackerblur = _ID42313::_ID9251( "h1_hud_tutorial_blur", 400, 25 );
    level.cheat_slowmo_hud.myhintbackerbordertop = _ID42313::_ID9251( "h1_hud_tutorial_border", 400, 1 );
    level.cheat_slowmo_hud.myhintbackerborderbottom = _ID42313::_ID9251( "h1_hud_tutorial_border", 400, 1 );
    level.cheat_slowmo_hud.myhintbackerblur _ID42313::_ID32753( "TOP", undefined, 0, var_1 );
    level.cheat_slowmo_hud.myhintbackerblur.sort = 1;
    level.cheat_slowmo_hud.myhintbackerblur.hidewheninmenu = 1;
    level.cheat_slowmo_hud.myhintbackerblur.hidewhendead = 1;
    level.cheat_slowmo_hud.myhintbackerblur.alpha = 0.9;
    level.cheat_slowmo_hud.myhintbackerbordertop _ID42313::_ID32753( "TOP", undefined, 0, var_1 );
    level.cheat_slowmo_hud.myhintbackerbordertop.sort = 1;
    level.cheat_slowmo_hud.myhintbackerbordertop.hidewheninmenu = 1;
    level.cheat_slowmo_hud.myhintbackerbordertop.hidewhendead = 1;
    level.cheat_slowmo_hud.myhintbackerbordertop.alpha = 0.05;
    level.cheat_slowmo_hud.myhintbackerborderbottom _ID42313::_ID32753( "TOP", undefined, 0, var_1 + 24 );
    level.cheat_slowmo_hud.myhintbackerborderbottom.sort = 1;
    level.cheat_slowmo_hud.myhintbackerborderbottom.hidewheninmenu = 1;
    level.cheat_slowmo_hud.myhintbackerborderbottom.hidewhendead = 1;
    level.cheat_slowmo_hud.myhintbackerborderbottom.alpha = 0.05;
    level.cheat_slowmo_hud.myhintstring = _ID42313::_ID9220( "timer", 0.5 );
    level.cheat_slowmo_hud.myhintstring.hidewheninmenu = 1;
    level.cheat_slowmo_hud.myhintstring _ID42313::_ID32753( "TOP", undefined, 0, var_1 + var_0 );
    level.cheat_slowmo_hud.myhintstring.sort = 0.5;
    level.cheat_slowmo_hud.myhintstring settext( &"SCRIPT_PLATFORM_CHEAT_USETOSLOWMO" );

    for ( var_2 = 0; var_2 < 100; var_2++ )
    {
        if ( level._ID50405 != 1 )
            break;

        wait 0.1;
    }

    level._ID50405 = 0;
    level.cheat_slowmo_hud.myhintbackerblur fadeovertime( 0.5 );
    level.cheat_slowmo_hud.myhintbackerblur.alpha = 0;
    level.cheat_slowmo_hud.myhintbackerbordertop fadeovertime( 0.5 );
    level.cheat_slowmo_hud.myhintbackerbordertop.alpha = 0;
    level.cheat_slowmo_hud.myhintbackerborderbottom fadeovertime( 0.5 );
    level.cheat_slowmo_hud.myhintbackerborderbottom.alpha = 0;
    level.cheat_slowmo_hud.myhintstring fadeovertime( 0.5 );
    level.cheat_slowmo_hud.myhintstring.alpha = 0;
    wait 0.5;
    level.cheat_slowmo_hud.myhintbackerblur destroy();
    level.cheat_slowmo_hud.myhintbackerbordertop destroy();
    level.cheat_slowmo_hud.myhintbackerborderbottom destroy();
    level.cheat_slowmo_hud.myhintstring destroy();
}

_ID52950( var_0 )
{
    level._ID50570 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID50570 )
    {
        level._ID34362 thread _ID45994();
        level.player allowmelee( 0 );
        thread _ID53000();
    }
    else
    {
        level notify( "disable_slowmo" );
        level.player allowmelee( 1 );
        level._ID34362 thread _ID49163();
        level._ID50405 = 0;

        if ( isdefined( level.cheat_slowmo_hud ) )
        {
            if ( isdefined( level.cheat_slowmo_hud.myhintbackerblur ) )
            {
                level.cheat_slowmo_hud.myhintbackerblur fadeovertime( 0.5 );
                level.cheat_slowmo_hud.myhintbackerblur.alpha = 0;
                level.cheat_slowmo_hud.myhintbackerblur destroy();
            }

            if ( isdefined( level.cheat_slowmo_hud.myhintbackerbordertop ) )
            {
                level.cheat_slowmo_hud.myhintbackerbordertop fadeovertime( 0.5 );
                level.cheat_slowmo_hud.myhintbackerbordertop.alpha = 0;
                level.cheat_slowmo_hud.myhintbackerbordertop destroy();
            }

            if ( isdefined( level.cheat_slowmo_hud.myhintbackerborderbottom ) )
            {
                level.cheat_slowmo_hud.myhintbackerborderbottom fadeovertime( 0.5 );
                level.cheat_slowmo_hud.myhintbackerborderbottom.alpha = 0;
                level.cheat_slowmo_hud.myhintbackerborderbottom destroy();
            }

            if ( isdefined( level.cheat_slowmo_hud.myhintstring ) )
            {
                level.cheat_slowmo_hud.myhintstring fadeovertime( 0.5 );
                level.cheat_slowmo_hud.myhintstring.alpha = 0;
                level.cheat_slowmo_hud.myhintstring destroy();
            }
        }
    }
}

_ID45994()
{
    level endon( "disable_slowmo" );
    level.slowmo_mode_slowed = 0;
    thread _ID51731();
    thread gamespeed_disable_watch();

    for (;;)
    {
        level.player waittill( "_cheat_player_press_slowmo" );
        level._ID50405 = 0;
        _ID34380();

        if ( !_ID42237::_ID14385( "disable_slowmo_cheat" ) )
        {
            if ( gettimescale() < level._ID34362._ID35414 )
                thread _ID49163();
            else
                thread _ID51191();
        }

        waitframe;
    }
}

_ID51731()
{
    level notify( "gamespeed_reset_on_death" );
    level endon( "gamespeed_reset_on_death" );
    level.player waittill( "death" );
    thread _ID49163( 1 );
}

_ID51191()
{
    _ID42475::_ID34575( "aud_start_slowmo_cheat" );
    setslowmotion( self._ID35414, self._ID35417, self._ID22188 );
    level.slowmo_mode_slowed = 1;
}

_ID49163( var_0 )
{
    level.player thread _ID42237::_ID36516( "h1_slowmo_cheat_heartbeat" );
    _ID42475::_ID34575( "aud_stop_slowmo_cheat" );

    if ( !_ID42237::_ID14385( "disable_slowmo_cheat" ) )
    {
        setslowmotion( self._ID35417, self._ID35414, self._ID22189 );
        level.slowmo_mode_slowed = 0;
    }

    if ( isdefined( var_0 ) )
        _ID42237::_ID14402( "disable_slowmo_cheat" );
}

gamespeed_disable_watch()
{
    level endon( "disable_slowmo" );

    for (;;)
    {
        _ID42237::_ID14413( "disable_slowmo_cheat" );
        _ID42237::_ID14426( "disable_slowmo_cheat" );
        waittillframeend;

        if ( level.slowmo_mode_slowed )
        {
            _ID34380();
            setslowmotion( gettimescale(), self._ID35417, self._ID22188 );
        }
    }
}

_ID46206()
{
    level endon( "slowmo_resume" );

    if ( gettimescale() < level._ID34362._ID35414 )
        level._ID49872 = 1;

    for (;;)
    {
        if ( isdefined( level._ID50570 ) && level._ID50570 )
        {
            level notify( "disable_slowmo" );
            level._ID34362 thread _ID49163();
            level.player allowmelee( 1 );
        }

        wait 0.05;
    }
}

_ID54655()
{
    level notify( "slowmo_resume" );
    level._ID49872 = undefined;

    if ( isdefined( level._ID50570 ) && level._ID50570 )
    {
        if ( isdefined( level._ID49872 ) )
            level._ID34362 thread _ID51191();

        level._ID34362 thread _ID45994();
        level.player allowmelee( 0 );
    }
}

_ID45061( var_0 )
{
    if ( var_0 )
    {
        setsaveddvar( "chaplincheat", "1" );
        level._ID45275 = getdvar( "bg_weaponBobAmplitudeStanding" );
        setsaveddvar( "bg_weaponBobAmplitudeStanding", "0.08 0.04" );
        setomnvar( "ui_ragtimewarefare_overlay", 1 );
        level._ID50460["chaplin"] = 1;
        _ID44810();
        thread _ID49417();
    }
    else
    {
        level notify( "disable_chaplin" );
        level notify( "disable_chaplin_grain" );
        _ID52981();
        level.player stopshellshock();
        setomnvar( "ui_ragtimewarefare_overlay", 0 );
        level._ID50460["chaplin"] = 0;
        _ID42407::_ID10226( 0.05, _ID42475::_ID34575, "aud_stop_ragtime_warfare" );
        setsaveddvar( "bg_weaponBobAmplitudeStanding", level._ID45275 );
        setsaveddvar( "chaplincheat", "0" );

        if ( !_ID42237::_ID14385( "disable_slowmo_cheat" ) )
            settimescale( 1.0 );
    }

    _ID47192();
}

_ID53274()
{
    var_0 = newhudelem();
    var_0.x = 0;
    var_0.y = 0;
    var_0 setshader( "black", 640, 480 );
    var_0.alignx = "left";
    var_0.aligny = "top";
    var_0.horzalign = "fullscreen";
    var_0.vertalign = "fullscreen";
    var_0.alpha = 1;
    var_0.foreground = 1;
    var_0.sort = 0;
    return var_0;
}

_ID52906( var_0 )
{
    var_1 = newhudelem();
    var_1.x = 0;
    var_1.y = -40;
    var_1.alignx = "center";
    var_1.aligny = "middle";
    var_1.horzalign = "center";
    var_1.vertalign = "middle";
    var_1.foreground = 1;
    var_1 settext( var_0 );
    var_1.fontscale = 3;
    var_1.alpha = 1;
    var_1.sort = 1;
    var_1.color = ( 0.976, 0.796, 0.412 );
    return var_1;
}

_ID43577( var_0 )
{
    if ( getdvar( "chaplincheat" ) != "1" )
        return;

    if ( getdvar( "cheat_chaplin_titlecardshowing" ) == "1" )
        return;

    if ( _ID42237::_ID14385( "disable_slowmo_cheat" ) )
        return;

    setdvar( "cheat_chaplin_titlecardshowing", 1 );
    var_1 = _ID53274();
    var_2 = _ID52906( var_0 );
    settimescale( 0.05 );
    wait 0.15;
    settimescale( 1 );
    var_1 destroy();
    var_2 destroy();
    setdvar( "cheat_chaplin_titlecardshowing", 0 );
}

_ID49417()
{
    level endon( "disable_chaplin" );
    _ID42475::_ID34575( "aud_start_ragtime_warfare" );

    for (;;)
    {
        level.player shellshock( "chaplincheat", 60, 1 );
        wait 0.5;

        if ( !_ID42237::_ID14385( "disable_slowmo_cheat" ) )
        {
            if ( getdvar( "cheat_chaplin_titlecardshowing" ) == "1" )
            {
                settimescale( 0.05 );
                continue;
            }

            settimescale( 1.7 );
        }
    }
}

_ID44810()
{
    level._ID45332 = spawn( "script_model", level.player geteye() );
    level._ID45332 setmodel( "tag_origin" );
    level._ID45332 hide();
    playfxontag( level._ID1426["grain_test"], level._ID45332, "tag_origin" );
    thread _ID46521();
}

_ID52981()
{
    if ( !isdefined( level._ID45332 ) )
        return;

    level._ID45332 delete();
}

_ID46521()
{
    level endon( "disable_chaplin_grain" );

    for (;;)
    {
        level._ID45332.origin = level.player geteye() + 50 * anglestoforward( level.player getplayerangles() );
        wait 0.01;
    }
}

_ID44352()
{
    for ( var_0 = 0; var_0 < level._ID45166.size; var_0++ )
    {
        if ( level._ID44568[level._ID45166[var_0]] )
            return 1;
    }

    return 0;
}

_ID44931( var_0 )
{
    level._ID44646 = _ID42237::_ID37527( var_0, 1, 0 );
}

_ID50314()
{
    level._ID48368 = 0;
    level._ID44984 = loadfx( "fx/props/watermelon" );
    level._ID47760 = "j_head";
    level._ID53832 = "me_fruit_watermelon_oblong";
    precachemodel( level._ID53832 );
    _ID42407::_ID1892( "axis", ::_ID53975 );
    _ID42237::_ID3350( getaiarray( "axis" ), ::_ID53975 );
}

_ID54375( var_0 )
{
    level._ID48368 = _ID42237::_ID37527( var_0, 1, 0 );
    level notify( "melonhead_mode_updated" );
}

_ID53975()
{
    self endon( "death" );
    self notify( "melonhead_monitor" );
    self endon( "melonhead_monitor" );
    waittillframeend;

    if ( isdefined( self._ID43614 ) && self._ID43614 )
        return;

    for (;;)
    {
        if ( level._ID48368 )
            _ID43206();
        else
            _ID47451();

        level waittill( "melonhead_mode_updated" );
    }
}

_ID43206()
{
    if ( _func_2a5( self ) )
        return;

    if ( isdefined( self._ID44813 ) && self._ID44813 )
        return;

    if ( isdefined( self._ID50499 ) )
        return;

    self attach( level._ID53832, level._ID47760, 1 );
    self._ID50499 = 1;
    thread _ID43001();
    thread _ID47767();
}

_ID47451( var_0, var_1 )
{
    if ( _func_2a5( self ) )
        return;

    if ( isdefined( var_1 ) && var_1 )
        self._ID44813 = 1;

    if ( !isdefined( self._ID50499 ) )
        return;

    self detach( level._ID53832, level._ID47760 );
    self._ID50499 = undefined;

    if ( isdefined( var_0 ) && var_0 )
    {
        playfx( level._ID44984, self gettagorigin( level._ID47760 ), anglestoforward( self.angles ) );
        thread _ID42237::_ID27077( "h1_hit_watermelon", self gettagorigin( level._ID47760 ) );
    }

    self notify( "melonhead_removed" );
}

_ID43001()
{
    self endon( "melonhead_removed" );
    self waittill( "death" );
    _ID47451( 1 );
}

_ID47767()
{
    self endon( "melonhead_removed" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9  );

        if ( !isdefined( self.damagelocation ) )
            continue;

        if ( ( self.damagelocation == "head" || self.damagelocation == "helmet" ) && var_4 != "MOD_IMPACT" )
        {
            _ID47451( 1 );
            break;
        }
    }
}

_ID47860()
{
    level._ID45578 = 0;
    level._ID43831 = "h1_cheathandgun";
    level._ID47744 = undefined;
    precacheitem( level._ID43831 );
}

_ID52472( var_0 )
{
    if ( level.script == "ac130" )
        return;

    level._ID45578 = _ID42237::_ID37527( var_0, 1, 0 );
    level notify( "handgun_mode_updated" );

    if ( level._ID45578 )
        _ID49235();
    else
        _ID54153();
}

_ID48177()
{
    self endon( "handgun_removed" );
    self endon( "death" );

    for (;;)
    {
        if ( level.player issplitscreenplayer() == 1 && level.player getcurrentweapon() == level._ID43831 )
            level.player _ID42407::_ID27752( 0, "cheat_handgun" );
        else if ( level.player issplitscreenplayer() == 0 && level.player getcurrentweapon() != level._ID43831 )
            level.player _ID42407::_ID27752( 1, "cheat_handgun" );

        wait 0.05;
    }
}

_ID51760()
{
    self endon( "handgun_removed" );
    self endon( "death" );

    for (;;)
    {
        if ( level.player isreloading() )
        {
            level.player givemaxammo( level._ID43831 );
            level.player setweaponammoclip( level._ID43831, weaponclipsize( level._ID43831 ) );
        }

        wait 0.05;
    }
}

_ID49235()
{
    level._ID47744 = level.player getcurrentweapon();
    level.player giveweapon( level._ID43831 );
    level.player givemaxammo( level._ID43831 );
    level.player switchtoweaponimmediate( level._ID43831 );
    thread _ID48177();
    thread _ID51760();
}

_ID54153()
{
    if ( level.player issplitscreenplayer() == 0 )
        level.player _ID42407::_ID27752( 1, "cheat_handgun" );

    var_0 = level.player getcurrentweapon();
    var_1 = 0;

    if ( var_0 == level._ID43831 && level._ID47744 != "none" )
    {
        var_2 = level.player getweaponslistall();

        foreach ( var_4 in var_2 )
        {
            if ( var_4 == level._ID47744 )
            {
                level.player switchtoweaponimmediate( var_4 );
                var_1 = 1;
                break;
            }
        }

        if ( !var_1 && var_2.size > 0 )
            level.player switchtoweaponimmediate( var_2[0] );
    }

    level.player takeweapon( level._ID43831 );
    self notify( "handgun_removed" );
}

_ID48213()
{
    level._ID47513 = 0;
    level._ID50521 = "h1_cheatlemonade";
    level._ID53989 = undefined;
    precacheitem( level._ID50521 );
}

_ID51199( var_0 )
{
    level._ID47513 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID47513 )
        _ID46793();
    else
        _ID44234();
}

_ID46793()
{
    level._ID53989 = level.player getoffhandprimaryclass();

    if ( isdefined( level._ID53989 ) && level._ID53989 != "none" )
    {
        var_0 = level.player getweaponammostock( level._ID53989 );
        level.player takeweapon( level._ID53989 );
        level.player setoffhandprimaryclass( level._ID50521 );
        level.player giveweapon( level._ID50521 );
        level.player setweaponammostock( level._ID50521, var_0 );
    }
}

_ID44234()
{
    var_0 = level.player getweaponammostock( level._ID50521 );
    level.player takeweapon( level._ID50521 );

    if ( isdefined( level._ID53989 ) )
    {
        level.player setoffhandprimaryclass( level._ID53989 );
        level.player giveweapon( level._ID53989 );
        level.player setweaponammostock( level._ID53989, var_0 );
    }
}

_ID43673()
{
    level._ID45847 = 0;

    if ( level.script == "ac130" )
    {
        level._ID49264 = "body_zakhaev_viktor_collar_ac130";
        level._ID43961 = "head_zakhaev_viktor_ac130";
    }
    else
    {
        level._ID49264 = "body_zakhaev_viktor_collar";
        level._ID43961 = "head_zakhaev_viktor";
    }

    level._ID44436 = "rpg";
    precachemodel( level._ID49264 );
    precachemodel( level._ID43961 );
    precacheitem( level._ID44436 );
    precacheitem( "rpg_player" );
    _ID42407::_ID1892( "axis", ::_ID44779 );
    _ID42237::_ID3350( getaiarray( "axis" ), ::_ID44779 );
}

_ID52159( var_0 )
{
    level._ID45847 = _ID42237::_ID37527( var_0, 1, 0 );
    level notify( "tracksuit_mode_updated" );
}

_ID44779()
{
    self endon( "death" );
    waittillframeend;

    if ( isdefined( self._ID54204 ) && self._ID54204 )
        return;

    if ( isdefined( self._ID3217 ) && self._ID3217 == "dog.atr" )
        return;

    for (;;)
    {
        if ( level._ID45847 )
            _ID49329();
        else
            _ID53549();

        level waittill( "tracksuit_mode_updated" );
    }
}

_ID49329()
{
    if ( _func_2a5( self ) )
        return;

    self._ID43252 = 1;

    if ( isdefined( self.weapon ) && !isdefined( self._ID54452 ) && self.classname != "script_model" )
    {
        if ( isdefined( self._ID7 ) && isdefined( self._ID7._ID2428 ) )
            animscripts\combat_utility::_ID12641();

        self._ID44641 = animscripts\utility::_ID16104();
        var_0 = _ID43454();
        _ID42407::_ID14803( level._ID44436, "primary" );

        if ( !var_0 )
            _ID42407::_ID17509();

        self._ID44073 = self._ID7._ID24729;
        self._ID7._ID24729 = 1;
        self._ID52638 = self._ID7._ID30106;
        self._ID7._ID30106 = 1;
        thread animscripts\shared::_ID30318();
        self._ID834 = level._ID44436;
        self.weapon = level._ID44436;
        self._ID22034 = level._ID44436;
        self._ID54092 = self._ID949;
        self._ID949 = "none";
    }

    if ( self.model == level._ID49264 || self.model == "body_zakhaev_viktor" )
        return;

    if ( isdefined( self._ID18272 ) )
    {
        self._ID51556 = self._ID18272;
        self detach( self._ID18272 );
        self._ID18272 = undefined;
    }

    if ( isdefined( self._ID18304 ) )
    {
        self._ID44376 = self._ID18304;
        self detach( self._ID18304 );
    }

    self._ID46489 = self.model;
    self setmodel( level._ID49264 );
    self attach( level._ID43961 );
    self._ID18304 = level._ID43961;
}

_ID53549()
{
    if ( _func_2a5( self ) )
        return;

    if ( !isdefined( self._ID43252 ) )
        return;

    if ( isdefined( self._ID46489 ) )
    {
        self detach( self._ID18304 );
        self._ID18304 = undefined;
        self setmodel( self._ID46489 );
        self._ID46489 = undefined;
    }

    if ( isdefined( self._ID44376 ) )
    {
        self attach( self._ID44376 );
        self._ID18304 = self._ID44376;
        self._ID44376 = undefined;
    }

    if ( isdefined( self._ID51556 ) )
    {
        self attach( self._ID51556 );
        self._ID18272 = self._ID51556;
        self._ID51556 = undefined;
    }

    if ( isdefined( self._ID44641 ) && !isdefined( self._ID54452 ) )
    {
        if ( isdefined( self._ID7 ) && isdefined( self._ID7._ID2428 ) )
            animscripts\combat_utility::_ID12641();

        if ( _ID43454() )
            _ID42407::_ID14803( self._ID44641, "primary" );

        self._ID949 = self._ID54092;
        self._ID7._ID24729 = self._ID44073;
        self._ID7._ID30106 = self._ID52638;
    }

    self._ID43252 = 0;
    self notify( "tracksuit_removed" );
}

_ID43454()
{
    foreach ( var_1 in self._ID1312 )
    {
        if ( var_1._ID811 != "none" )
            return 1;
    }

    return 0;
}

_ID48983()
{
    level._ID50958 = 0;
    level._ID51383 = "h2_cheatpomegrenade";
    level._ID53300 = undefined;
    precacheitem( level._ID51383 );
}

_ID50345( var_0 )
{
    level._ID50958 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID50958 )
        _ID48708();
    else
        _ID53445();
}

_ID48708()
{
    level._ID53300 = level.player getoffhandprimaryclass();

    if ( isdefined( level._ID53300 ) && level._ID53300 != "none" )
    {
        var_0 = level.player getweaponammostock( level._ID53300 );
        level.player takeweapon( level._ID53300 );
        level.player setoffhandprimaryclass( level._ID51383 );
        level.player giveweapon( level._ID51383 );
        level.player setweaponammostock( level._ID51383, var_0 );
    }
}

_ID53445()
{
    var_0 = level.player getweaponammostock( level._ID51383 );
    level.player takeweapon( level._ID51383 );

    if ( isdefined( level._ID53300 ) )
    {
        level.player setoffhandprimaryclass( level._ID53300 );
        level.player giveweapon( level._ID53300 );
        level.player setweaponammostock( level._ID53300, var_0 );
    }
}

_ID45214()
{
    level._ID50376 = 0;
    level._ID47892 = loadfx( "fx/props/pineapple_heads" );
    level._ID44918 = "j_head";
    level._ID52802 = "h2_projectile_cheat_pineapple";
    precachemodel( level._ID52802 );
    add_specialfeatures_function( ::_ID51981 );
}

_ID46618( var_0 )
{
    level._ID50376 = _ID42237::_ID37527( var_0, 1, 0 );
    setsaveddvar( "cg_melee_knife_fx", !level._ID50376 );
    level notify( "pineapple_mode_updated" );
}

_ID51981()
{
    self endon( "death" );
    self notify( "pineapple_monitor" );
    self endon( "pineapple_monitor" );
    waittillframeend;

    if ( isdefined( self.cheat._ID43492 ) && self.cheat._ID43492 )
        return;

    if ( isdefined( self.code_classname ) && self.code_classname == "script_vehicle" )
        return;

    for (;;)
    {
        if ( level._ID50376 )
            _ID52281();
        else
            _ID52060();

        level waittill( "pineapple_mode_updated" );
    }
}

_ID52281()
{
    if ( _func_2a5( self ) )
        return;

    if ( isdefined( self.cheat._ID48622 ) && self.cheat._ID48622 )
        return;

    if ( isdefined( self.cheat._ID51310 ) )
        return;

    if ( isdefined( self._ID18272 ) )
    {
        self.cheat.pineapple_previoushat = self._ID18272;
        self detach( self._ID18272 );
        self._ID18272 = undefined;
    }

    if ( isdefined( self._ID18304 ) )
    {
        self.cheat.pineapple_previoushead = self._ID18304;
        self detach( self._ID18304 );
    }

    if ( isdefined( self.cheat.attachheadlast ) && self.cheat.attachheadlast )
    {
        self attach( level._ID52802, level._ID44918, 1 );
        self attach( level.invisibleman_head );
    }
    else
    {
        self attach( level.invisibleman_head );
        self attach( level._ID52802, level._ID44918, 1 );
    }

    self._ID18304 = level.invisibleman_head;
    self.cheat._ID51310 = 1;
    thread _ID50772();
    thread _ID52850();
}

_ID52060( var_0, var_1 )
{
    if ( _func_2a5( self ) )
        return;

    if ( isdefined( var_1 ) && var_1 )
        self.cheat._ID48622 = 1;

    if ( !isdefined( self.cheat._ID51310 ) )
        return;

    if ( iswolf( self ) )
    {
        if ( isdefined( self.cheat._ID53636 ) )
            self.cheat.pineapple_previoushead = level._ID53453;

        if ( isdefined( self.cheat.pineapple_previoushat ) )
        {
            self.cheat._ID50576 = self.cheat.pineapple_previoushat;
            self.cheat.pineapple_previoushat = undefined;
        }
    }

    if ( isdefined( self.cheat.pineapple_previoushead ) && !isdefined( self._ID43135.polterghostmode ) )
    {
        self detach( level.invisibleman_head );
        self attach( self.cheat.pineapple_previoushead );
        self._ID18304 = self.cheat.pineapple_previoushead;
        self.cheat.pineapple_previoushead = undefined;
    }

    if ( isdefined( self.cheat.pineapple_previoushat ) && !isdefined( self._ID43135.polterghostmode ) )
    {
        self attach( self.cheat.pineapple_previoushat );
        self._ID18272 = self.cheat.pineapple_previoushat;
        self.cheat.pineapple_previoushat = undefined;
    }

    self detach( level._ID52802, level._ID44918 );
    self.cheat._ID51310 = undefined;

    if ( isdefined( var_0 ) && var_0 )
    {
        playfx( level._ID47892, self gettagorigin( level._ID44918 ), anglestoforward( self.angles ) );
        thread _ID42237::_ID27077( "h1_hit_waterpineapple", self gettagorigin( level._ID44918 ) );
    }

    self notify( "pineapple_removed" );
}

_ID50772()
{
    self endon( "pineapple_removed" );
    self waittill( "death" );
    _ID52060( 1 );
}

_ID52850()
{
    self endon( "pineapple_removed" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9  );

        if ( isdefined( self.cheat.ignoredamageinpineapplemode ) && self.cheat.ignoredamageinpineapplemode )
            continue;

        if ( !isdefined( self.damagelocation ) || var_1.classname == "worldspawn" )
            continue;

        if ( animscripts\utility::_ID9641( "head", "helmet" ) && var_4 != "MOD_IMPACT" )
        {
            _ID52060( 1 );
            break;
        }
    }
}

_ID50614()
{
    level._ID52856 = 0;
    level._ID49294 = "h2_cheatfootball";
    level._ID49444 = undefined;
    level.cheat_football_array = [];
    precacheitem( level._ID49294 );
    level.player thread football_listener();
}

_ID52101( var_0 )
{
    level._ID52856 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID52856 )
        _ID46956();
    else
        _ID53747();
}

_ID46956()
{
    level._ID49444 = level.player getoffhandsecondaryclass();

    if ( isdefined( level._ID49444 ) && level._ID49444 != "none" )
    {
        var_0 = level.player getweaponammostock( level._ID49444 );
        level.player takeweapon( level._ID49444 );
        level.player setoffhandsecondaryclass( level._ID49294 );
        level.player giveweapon( level._ID49294 );
        level.player setweaponammostock( level._ID49294, var_0 );
    }
}

_ID53747()
{
    var_0 = level.player getweaponammostock( level._ID49294 );
    level.player takeweapon( level._ID49294 );

    if ( isdefined( level._ID49444 ) )
    {
        level.player setoffhandsecondaryclass( level._ID49444 );
        level.player giveweapon( level._ID49444 );
        level.player setweaponammostock( level._ID49444, var_0 );
    }
}

football_listener()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "grenade_fire",  var_0, var_1  );

        if ( var_1 == "h2_cheatfootball" )
        {
            level.cheat_football_array = _ID42237::_ID3293( level.cheat_football_array, var_0 );

            while ( level.cheat_football_array.size > 30 )
            {
                var_2 = _ID42407::_ID15724( level.player.origin, level.cheat_football_array );
                level.cheat_football_array = _ID42237::_ID3321( level.cheat_football_array, var_2 );
                var_2 delete();
            }
        }
    }
}

_ID50663()
{
    level._ID46496 = 0;
    level._ID50119 = loadfx( "vfx/unique/confetti_firework" );
}

_ID54134( var_0 )
{
    level._ID46496 = _ID42237::_ID37527( var_0, 1, 0 );
}

_ID53271()
{
    if ( !isai( self ) || self.classname == "script_model" )
        return;

    self waittill( "death",  var_0, var_1  );

    if ( isdefined( self.cheat._ID50282 ) && self.cheat._ID50282 )
        return;

    if ( _ID44352() )
    {
        if ( _func_2a5( self ) )
            return;

        waitframe;
        _ID45456::martyr_mode_dropgrenade( var_0, var_1 );

        if ( level._ID46534 )
        {
            for ( var_2 = 0; var_2 < level._ID49296; var_2++ )
                thread _ID50653( self.origin, self geteye() );
        }

        if ( isdefined( level._ID50119 ) && level._ID46496 )
        {
            var_3 = self.origin;
            var_4 = self.angles;

            if ( isdefined( self.damagelocation ) )
            {
                if ( animscripts\utility::_ID9641( "helmet", "head", "neck" ) )
                    var_3 = self gettagorigin( "J_Head" );
                else if ( animscripts\utility::_ID9641( "torso_upper", "torso_lower", "right_arm_upper", "left_arm_upper", "right_arm_lower", "left_arm_lower", "right_hand", "left_hand" ) )
                    var_3 = self gettagorigin( "J_SpineLower" );
            }

            for ( var_2 = 0; var_2 < 5; var_2++ )
            {
                var_5 = randomintrange( -24, 24 );
                var_6 = randomintrange( -24, 24 );
                var_7 = randomintrange( 0, 15 );
                var_8 = var_3 + ( var_5, var_6, var_7 );
                playfx( level._ID50119, var_8, anglestoforward( var_4 ) );
                thread _ID42237::_ID27077( "h2_party_time_explosion_fireworks", var_8 );
                wait(0.1 + randomfloat( 0.2 ));
            }
        }

        if ( isdefined( self ) && ( level._ID46496 || level._ID46534 ) )
        {
            if ( isdefined( self.classname ) && self.classname != "actor_enemy_dog" )
                animscripts\shared::_ID12142( self.weapon );

            wait 0.15;

            if ( isdefined( self ) && !_func_2a5( self ) )
                self delete();
        }
    }
}

cheat_death_corpse_check( var_0 )
{
    if ( isdefined( level._ID46496 ) && level._ID46496 || isdefined( level._ID46534 ) && level._ID46534 )
    {
        if ( !isdefined( var_0 ) )
            var_0 = 10;

        wait(var_0);
        var_1 = getcorpsearray();

        if ( isdefined( var_1 ) )
            var_2 = var_1.size - 1;
        else
            return;

        wait 0.05;

        if ( isdefined( var_0[var_1] ) && !_func_2a5( var_0[var_1] ) )
            var_0[var_1] delete();
    }
}

_ID50653( var_0, var_1 )
{
    if ( level._ID46750.size == level._ID49958 )
    {
        level._ID46750[0] delete();
        level._ID46750 = _ID42407::_ID3325( level._ID46750, 0 );
    }

    var_2 = spawn( "script_model", ( 0, 0, 0 ) );
    var_2.angles = ( 0, randomint( 360 ), 0 );
    var_3 = randomfloat( 1 );
    var_2.origin = var_0 * var_3 + var_1 * ( 1 - var_3 );
    var_2 setmodel( level._ID46891 );
    var_4 = _ID42237::_ID28976( 15000 );
    var_4 = ( var_4[0], var_4[1], abs( var_4[2] ) );
    var_2 physicslaunchclient( var_2.origin, var_4 );
    level._ID46750[level._ID46750.size] = var_2;
    var_2 endon( "death" );
    wait(randomfloatrange( 5.0, 10.0 ));

    if ( isdefined( var_2 ) )
    {
        level._ID46750 = _ID42237::_ID3321( level._ID46750, var_2 );
        var_2 delete();
    }
}

_ID53048( var_0 )
{
    precachemodel( var_0 );
    level._ID46891 = var_0;
}

_ID51561()
{
    level._ID52766 = 0;
    level._ID51538 = "h2_body_vil_shepherd_cheat";
    level._ID53453 = "head_vil_shepherd";
    level._ID51642 = "coltanaconda";
    level._ID45398 = 12;
    precachemodel( level._ID51538 );
    precachemodel( level._ID53453 );
    precacheitem( level._ID51642 );
    add_specialfeatures_function( ::_ID51741 );
}

override_wolf_model( var_0 )
{
    precachemodel( var_0 );
    level._ID51538 = var_0;
}

_ID49727( var_0 )
{
    level._ID52766 = _ID42237::_ID37527( var_0, 1, 0 );
    level notify( "wolf_mode_updated" );
}

_ID51741()
{
    self endon( "death" );
    waittillframeend;

    if ( isdefined( self.cheat._ID54456 ) && self.cheat._ID54456 )
        return;

    if ( isdefined( self._ID3217 ) && self._ID3217 == "dog.atr" )
        return;

    if ( isdefined( self.code_classname ) && self.code_classname == "script_vehicle" )
        return;

    for (;;)
    {
        if ( level._ID52766 )
            _ID52282();
        else
            _ID44704();

        level waittill( "wolf_mode_updated" );
    }
}

_ID52282()
{
    if ( _func_2a5( self ) )
        return;

    if ( issubstr( self.model, "body_vil_shepherd" ) )
        return;

    if ( isdefined( self._ID43135.polterghostmode ) && self._ID43135.polterghostmode )
        self waittill( "polterghost_removed" );

    if ( isdefined( self.cheat.wolfmode_presetmodelfunc ) )
        self [[ self.cheat.wolfmode_presetmodelfunc ]]();

    if ( isdefined( self._ID18272 ) )
    {
        self.cheat._ID50576 = self._ID18272;
        self detach( self._ID18272 );
        self._ID18272 = undefined;
    }

    if ( isdefined( self._ID18304 ) )
    {
        if ( !isdefined( self.cheat.pineapple_previoushead ) )
        {
            self.cheat._ID53636 = self._ID18304;
            self detach( self._ID18304 );
        }
        else
            self.cheat._ID53636 = self.cheat.pineapple_previoushead;
    }

    self.cheat._ID47612 = self.model;
    self setmodel( level._ID51538 );

    if ( !isdefined( self.cheat.pineapple_previoushead ) )
    {
        self attach( level._ID53453 );
        self._ID18304 = level._ID53453;
    }

    if ( isdefined( self.weapon ) && !isdefined( self.cheat._ID48626 ) && self.classname != "script_model" )
    {
        self.cheat._ID44607 = self.grenadeweapon;
        self.cheat._ID48334 = self.grenadeammo;
        self.grenadeammo = level._ID45398;
        self.grenadeweapon = "fraggrenade";
        _ID42407::_ID14803( self._ID834, "primary" );

        if ( weaponclass( self._ID834 ) != "rocketlauncher" )
        {
            if ( isdefined( self._ID34144 ) && self._ID34144 != "none" )
                self.cheat._ID51703 = self._ID34144;

            _ID42407::_ID14803( level._ID51642, "sidearm" );

            if ( isdefined( self._ID14794 ) )
                self.cheat.previousforcesidearm = self._ID14794;

            self._ID14794 = 1;
        }
    }

    if ( isdefined( self.cheat.wolfmode_postsetmodelfunc ) )
        self [[ self.cheat.wolfmode_postsetmodelfunc ]]();

    self.cheat._ID50247 = 1;

    if ( isai( self ) && self.classname != "script_model" )
        thread _ID51571();
}

_ID44704()
{
    if ( _func_2a5( self ) )
        return;

    if ( !iswolf( self ) )
        return;

    if ( isdefined( self.cheat.wolfmode_presetmodelfunc ) )
        self [[ self.cheat.wolfmode_presetmodelfunc ]]();

    if ( isdefined( self.cheat._ID47612 ) )
    {
        self setmodel( self.cheat._ID47612 );
        self.cheat._ID47612 = undefined;
    }

    if ( isdefined( self.cheat._ID53636 ) && !isdefined( self.cheat._ID51310 ) )
    {
        self detach( self._ID18304 );
        self._ID18304 = undefined;
        self attach( self.cheat._ID53636 );
        self._ID18304 = self.cheat._ID53636;
        self.cheat._ID53636 = undefined;
    }
    else if ( isdefined( self.cheat._ID53636 ) )
        self.cheat.pineapple_previoushead = self.cheat._ID53636;

    if ( isdefined( self.cheat._ID50576 ) && !isdefined( self.cheat._ID51310 ) )
    {
        self attach( self.cheat._ID50576 );
        self._ID18272 = self.cheat._ID50576;
        self.cheat._ID50576 = undefined;
    }
    else if ( isdefined( self.cheat._ID50576 ) )
        self.cheat.pineapple_previoushat = self.cheat._ID50576;

    if ( !isdefined( self.cheat._ID48626 ) )
    {
        self.grenadeweapon = self.cheat._ID44607;
        self.grenadeammo = self.cheat._ID48334;
        _ID42407::_ID14803( self._ID834, "primary" );

        if ( isdefined( self.cheat._ID51703 ) )
        {
            self._ID34144 = self.cheat._ID51703;
            _ID42407::_ID14803( self.cheat._ID51703, "sidearm" );
        }
        else
        {
            self._ID34144 = "none";
            _ID42407::_ID14803( "none", "sidearm" );
        }

        self.cheat._ID51703 = undefined;
        self._ID22034 = self._ID834;

        if ( isdefined( self.cheat.previousforcesidearm ) )
            self._ID14794 = self.cheat.previousforcesidearm;
        else
            self._ID14794 = 0;
    }

    if ( isdefined( self.cheat.wolfmode_postsetmodelfunc ) )
        self [[ self.cheat.wolfmode_postsetmodelfunc ]]();

    self._ID1312[level._ID51642] = undefined;
    self.cheat._ID50247 = 0;
    self notify( "wolf_removed" );
}

_ID44101()
{
    foreach ( var_1 in self._ID1312 )
    {
        if ( var_1._ID811 != "none" )
            return 1;
    }

    return 0;
}

_ID51571()
{
    self endon( "death" );
    self endon( "wolf_removed" );

    if ( isdefined( self.cheat.ignorewolfthink ) && self.cheat.ignorewolfthink )
        return;

    for (;;)
    {
        wait(randomintrange( 1, 5 ));

        if ( isdefined( level._ID1644 ) && isdefined( level._ID1644._ID22585 ) && isdefined( level._ID1644._ID22585._ID10660 ) && level._ID1644._ID22585._ID10660 == "hidden" )
            continue;

        var_0 = randomint( 6 );

        switch ( var_0 )
        {
            case 0:
                continue;
            case 1:
            case 2:
                _ID45074();
                continue;
            case 3:
            case 4:
            case 5:
                _ID44517();
                continue;
        }
    }
}

_ID45074()
{
    if ( distancesquared( self.origin, self.goalpos ) < self.goalradius * self.goalradius )
    {
        self.goalradius = 90;
        self setgoalpos( level.player.origin );
        self.favoriteenemy = level.player;
    }
}

iswolf( var_0 )
{
    return isdefined( var_0.cheat._ID50247 ) && var_0.cheat._ID50247;
}

_ID44517()
{
    if ( isdefined( self.grenadeweapon ) && self.grenadeweapon == "fraggrenade" && isdefined( self._ID7._ID3291 ) )
    {
        self.grenadeammo = level._ID45398;
        _ID42407::_ID37694();
    }
}

add_specialfeatures_function( var_0 )
{
    if ( getdvarint( "r_reflectionProbeGenerate" ) == 1 )
        return;

    if ( !isdefined( var_0 ) || !_func_314( var_0 ) )
        return;

    foreach ( var_2 in level.sf.badguyteams )
    {
        _ID42407::_ID1892( var_2, var_0 );
        _ID42237::_ID3350( getaispeciesarray( var_2, "all" ), var_0 );
    }
}

remove_specialfeatures_function( var_0 )
{
    if ( !isdefined( var_0 ) || !_func_314( var_0 ) )
        return;

    foreach ( var_2 in level.sf.badguyteams )
        _ID42407::_ID29534( var_2, var_0 );
}

addspecialmonitors()
{
    thread _ID51741();
    thread _ID51981();
    thread _ID45456::_ID50206();
    thread _ID53271();
}

edge_mode_update( var_0 )
{
    if ( var_0 )
        level._ID50460["edge"] = 1;
    else
        level._ID50460["edge"] = 0;

    _ID47192();
}

weapons_specialfeatures( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        while ( !isdefined( level.player getcurrentweapon( 1 ) ) || level.player getcurrentweapon( 1 ) == "none" )
            waittillframeend;
    }

    if ( isdefined( level._ID43135.tactical_greenberet ) && level._ID43135.tactical_greenberet )
        _ID45456::greenberet_giveweapon();

    if ( isdefined( level._ID52856 ) && level._ID52856 )
        _ID46956();

    if ( isdefined( level._ID50958 ) && level._ID50958 )
        _ID48708();
}

weapons_specialfeatures_reset()
{
    level._ID43135.greenberet_disabled = undefined;

    if ( isdefined( level._ID43135.tactical_greenberet ) && level._ID43135.tactical_greenberet )
        _ID45456::greenberet_takeweapon();

    if ( isdefined( level._ID52856 ) && level._ID52856 )
        _ID53747();

    if ( isdefined( level._ID50958 ) && level._ID50958 )
        _ID53445();
}
