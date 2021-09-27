// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    _func_14F( "h1_hud_tutorial_blur" );
    _func_14F( "h1_hud_tutorial_border" );
    _func_150( &"SCRIPT_PLATFORM_CHEAT_USETOSLOWMO" );
    _func_14D( "chaplincheat" );
    level._ID40543 = 0;
    _func_0DB( "using_vision_cheat", 0 );
    level._ID44568 = [];
    level._ID48268 = [];
    level._ID45166 = [];
    level._ID45275 = _func_039( "bg_bobAmplitudeStanding" );
    level._ID50405 = 0;
    level.invisibleman_body = "h2_invisibleman_body";
    level.invisibleman_head = "h2_invisibleman_head";
    _func_14C( level.invisibleman_body );
    _func_14C( level.invisibleman_head );
    level._ID44646 = 0;
    level.sf = _func_1A5();

    if ( _func_039( "ui_char_museum_mode" ) != "free" )
        level.sf.badguyteams = [ "axis", "team3" ];
    else
        level.sf.badguyteams = [ "axis", "allies", "neutral" ];

    thread _unknown_019E();
    thread _unknown_06B0();
    thread _unknown_06E9();
    thread _unknown_08E7();
    thread _unknown_07D4();
    thread _unknown_0829();
    thread _ID45456::_ID521();
    _unknown_0A7D( ::_unknown_083B );

    if ( !_func_02F( level._ID1426 ) )
        level._ID1426 = [];

    level._ID1426["grain_test"] = _func_155( "fx/misc/grain_test" );
    _ID42237::_ID14400( "has_cheated" );
    level._ID50460["bw"] = 0;
    level._ID50460["invert"] = 0;
    level._ID50460["contrast"] = 0;
    level._ID50460["chaplin"] = 0;
    level._ID50460["edge"] = 0;
    _unknown_02DA();
    thread _unknown_0166();
    _ID42237::_ID14400( "disable_slowmo_cheat" );

    if ( level._ID912 == "airport" )
        return;

    level._ID794 thread _unknown_01C3();
}

cheat_init()
{
    if ( !_func_02F( self.cheat ) )
        self.cheat = _func_1A5();
}

_ID45652()
{
    _unknown_0199();

    for (;;)
    {
        if ( _func_089() )
            _unknown_01A1();

        wait 0.1;
    }
}

_ID52518()
{
    for ( var_0 = 0; var_0 < level._ID45166.size; var_0++ )
        _func_034( level._ID45166[var_0], level._ID44568[level._ID45166[var_0]] );

    if ( !_func_02F( level._ID9296 ) || !level._ID9296 )
    {
        _func_034( "credits_active", "0" );
        _func_034( "credits_load", "0" );
    }
}

_ID48634( var_0 )
{
    var_1 = _func_03A( var_0, 0 ) && _func_039( "arcademode" ) != "1" && _func_039( "credits_active" ) != "1";
    return var_1;
}

_ID52837( var_0, var_1 )
{
    _func_036( var_0, 0 );
    level._ID44568[var_0] = _unknown_0230( var_0 );
    level._ID48268[var_0] = var_1;

    if ( level._ID44568[var_0] )
        [[ var_1 ]]( level._ID44568[var_0] );
}

_ID52923( var_0 )
{
    var_1 = _unknown_024F( var_0 );

    if ( level._ID44568[var_0] == var_1 )
        return;

    if ( var_1 )
        _ID42237::_ID14402( "has_cheated" );

    level._ID44568[var_0] = var_1;
    thread [[ level._ID48268[var_0] ]]( var_1 );
    _func_032( "ui_refreshcheathud", var_1 );
}

_ID47585()
{
    level waittill( "load_finished" );
    _unknown_0295( "sf_use_bw", ::_unknown_0382 );
    _unknown_02A1( "sf_use_slowmo", ::_unknown_04AF );
    _unknown_02AC( "sf_use_chaplin", ::_unknown_0574 );
    _unknown_02B7( "sf_use_ignoreammo", ::_unknown_038E );
    _unknown_02C2( "sf_use_clustergrenade", ::_unknown_034D );
    _unknown_02CE( "sf_use_tire_explosion", ::_unknown_0354 );
    _unknown_02D9( "sf_use_ragdoll_mode", ::_unknown_066F );
    _unknown_02E4( "sf_use_pomegrenade_mode", ::_unknown_0875 );
    _unknown_02EF( "sf_use_pineapple_mode", ::_unknown_08BB );
    _unknown_02FB( "sf_use_wolf_mode", ::_unknown_0AC6 );
    _unknown_0306( "sf_use_football_mode", ::_unknown_09B0 );
    _unknown_0311( "sf_use_pinata_mode", ::_unknown_0A06 );
    _unknown_031C( "sf_use_edge_mode", ::_unknown_0C86 );
    _unknown_0328( "sf_use_attraction_mode", _ID45456::_ID45898 );
    _unknown_0333( "sf_use_desperation_mode", _ID45456::_ID45370 );
    _unknown_033E( "sf_use_fortitude_mode", _ID45456::_ID47958 );
    _unknown_0349( "sf_use_greenberet_mode", _ID45456::greenberet_mode_update );
    _unknown_0355( "sf_use_martyr_mode", _ID45456::_ID54195 );
    _unknown_0360( "sf_use_polterghost_mode", _ID45456::_ID54284 );
    _unknown_036B( "sf_use_precision_mode", _ID45456::_ID54268 );
    _unknown_0376( "sf_use_starvation_mode", _ID45456::_ID53773 );
    level._ID45166 = _func_1D9( level._ID44568 );

    if ( _unknown_0714() )
        _ID42237::_ID14402( "has_cheated" );

    for (;;)
    {
        for ( var_0 = 0; var_0 < level._ID45166.size; var_0++ )
            _unknown_03A9( level._ID45166[var_0] );

        if ( _func_039( "credits_active" ) == "1" )
            break;

        wait 0.05;
    }
}

_ID48032()
{
    _func_14C( "com_junktire" );
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
        level._ID794 thread _unknown_0487();
    else
        level notify( "end_cluster_grenades" );
}

_ID48955()
{
    level endon( "end_cluster_grenades" );

    for (;;)
    {
        self waittill( "grenade_fire",  var_1, var_0  );

        if ( _func_02F( var_0._ID47092 ) && var_0._ID47092 )
            continue;

        if ( var_1 == "fraggrenade" || var_1 == level._ID51383 )
            var_0 thread _unknown_04E0( "fraggrenade" );
    }
}

_ID47171( var_0 )
{
    self endon( "timeout" );
    var_1 = self._ID740;
    thread _ID42407::_ID37742( 8 );
    self waittill( "explode",  var_2  );
    var_1 = var_2 + ( 0, 0, 5 );
    var_3 = 8;

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        var_5 = _unknown_053C();
        var_6 = 1.5 + var_4 / 6 + _func_0B8( 0.1 );
        var_7 = _func_075( var_0, var_1, var_5, var_6, level._ID794 );
        var_7._ID47092 = 1;
    }
}

_ID53592()
{
    var_0 = _func_0B8( 360 );
    var_1 = _func_0BA( 65, 85 );
    var_2 = _func_0BB( var_1 );
    var_3 = _func_0BC( var_1 );
    var_4 = _func_0BC( var_0 ) * var_3;
    var_5 = _func_0BB( var_0 ) * var_3;
    var_6 = _func_0BA( 400, 600 );
    var_7 = ( var_4, var_5, var_2 ) * var_6;
    return var_7;
}

_ID54563( var_0 )
{
    if ( level._ID912 == "ac130" )
        return;

    if ( var_0 )
        _func_0DB( "player_sustainAmmo", 1 );
    else
        _func_0DB( "player_sustainAmmo", 0 );
}

_ID50557( var_0 )
{
    if ( var_0 )
        level._ID50460["contrast"] = 1;
    else
        level._ID50460["contrast"] = 0;

    _unknown_060F();
}

_ID50783( var_0 )
{
    if ( var_0 )
        level._ID50460["bw"] = 1;
    else
        level._ID50460["bw"] = 0;

    _unknown_062E();
}

_ID46112( var_0 )
{
    if ( var_0 )
        level._ID50460["invert"] = 1;
    else
        level._ID50460["invert"] = 0;

    _unknown_064D();
}

_ID47192( var_0 )
{
    if ( level._ID912 == "ac130" )
        return;

    if ( _func_02F( var_0 ) )
        var_1 = var_0;
    else
        var_1 = 0;

    var_2 = "";

    if ( level._ID50460["bw"] )
        var_2 += "_bw";

    if ( level._ID50460["invert"] )
    {
        var_2 += "_invert";

        if ( _func_02F( level._ID51403 ) )
            var_2 += level._ID51403;
    }

    if ( level._ID50460["contrast"] )
    {
        var_2 += "_contrast";

        if ( _func_02F( level._ID49165 ) )
            var_2 += level._ID49165;
    }

    if ( level._ID50460["chaplin"] )
        var_2 = "sepia";

    if ( level._ID50460["edge"] )
    {
        var_2 = "edge";
        _func_0DB( "r_useCheatPostFX", 1 );
    }
    else
        _func_0DB( "r_useCheatPostFX", 0 );

    if ( var_2 != "" )
    {
        level._ID40543 = 1;
        _func_0DB( "using_vision_cheat", 1 );

        if ( var_2 == "edge" || var_2 == "sepia" )
            _func_148( var_2, var_1 );
        else
            _func_148( "cheat" + var_2, var_1 );
    }
    else
    {
        level._ID40543 = 0;
        _func_0DB( "using_vision_cheat", 0 );
        _ID42407::_ID32515( level._ID22719, var_1 );
    }
}

_ID34381()
{
    level._ID34362 = _func_1A5();
    _unknown_0783();
    _func_00E( "_cheat_player_press_slowmo", "+melee" );
    _func_00E( "_cheat_player_press_slowmo", "+melee_breath" );
    _func_00E( "_cheat_player_press_slowmo", "+melee_zoom" );
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
    level.cheat_slowmo_hud = _func_1A5();
    level.cheat_slowmo_hud.myhintbackerblur = _ID42313::_ID9251( "h1_hud_tutorial_blur", 400, 25 );
    level.cheat_slowmo_hud.myhintbackerbordertop = _ID42313::_ID9251( "h1_hud_tutorial_border", 400, 1 );
    level.cheat_slowmo_hud.myhintbackerborderbottom = _ID42313::_ID9251( "h1_hud_tutorial_border", 400, 1 );
    level.cheat_slowmo_hud.myhintbackerblur _ID42313::_ID32753( "TOP", undefined, 0, var_1 );
    level.cheat_slowmo_hud.myhintbackerblur._ID983 = 1;
    level.cheat_slowmo_hud.myhintbackerblur._ID493 = 1;
    level.cheat_slowmo_hud.myhintbackerblur._ID491 = 1;
    level.cheat_slowmo_hud.myhintbackerblur._ID55 = 0.9;
    level.cheat_slowmo_hud.myhintbackerbordertop _ID42313::_ID32753( "TOP", undefined, 0, var_1 );
    level.cheat_slowmo_hud.myhintbackerbordertop._ID983 = 1;
    level.cheat_slowmo_hud.myhintbackerbordertop._ID493 = 1;
    level.cheat_slowmo_hud.myhintbackerbordertop._ID491 = 1;
    level.cheat_slowmo_hud.myhintbackerbordertop._ID55 = 0.05;
    level.cheat_slowmo_hud.myhintbackerborderbottom _ID42313::_ID32753( "TOP", undefined, 0, var_1 + 24 );
    level.cheat_slowmo_hud.myhintbackerborderbottom._ID983 = 1;
    level.cheat_slowmo_hud.myhintbackerborderbottom._ID493 = 1;
    level.cheat_slowmo_hud.myhintbackerborderbottom._ID491 = 1;
    level.cheat_slowmo_hud.myhintbackerborderbottom._ID55 = 0.05;
    level.cheat_slowmo_hud.myhintstring = _ID42313::_ID9220( "timer", 0.5 );
    level.cheat_slowmo_hud.myhintstring._ID493 = 1;
    level.cheat_slowmo_hud.myhintstring _ID42313::_ID32753( "TOP", undefined, 0, var_1 + var_0 );
    level.cheat_slowmo_hud.myhintstring._ID983 = 0.5;
    level.cheat_slowmo_hud.myhintstring _meth_80D1( &"SCRIPT_PLATFORM_CHEAT_USETOSLOWMO" );

    for ( var_2 = 0; var_2 < 100; var_2++ )
    {
        if ( level._ID50405 != 1 )
            break;

        wait 0.1;
    }

    level._ID50405 = 0;
    level.cheat_slowmo_hud.myhintbackerblur _meth_808B( 0.5 );
    level.cheat_slowmo_hud.myhintbackerblur._ID55 = 0;
    level.cheat_slowmo_hud.myhintbackerbordertop _meth_808B( 0.5 );
    level.cheat_slowmo_hud.myhintbackerbordertop._ID55 = 0;
    level.cheat_slowmo_hud.myhintbackerborderbottom _meth_808B( 0.5 );
    level.cheat_slowmo_hud.myhintbackerborderbottom._ID55 = 0;
    level.cheat_slowmo_hud.myhintstring _meth_808B( 0.5 );
    level.cheat_slowmo_hud.myhintstring._ID55 = 0;
    wait 0.5;
    level.cheat_slowmo_hud.myhintbackerblur _meth_808F();
    level.cheat_slowmo_hud.myhintbackerbordertop _meth_808F();
    level.cheat_slowmo_hud.myhintbackerborderbottom _meth_808F();
    level.cheat_slowmo_hud.myhintstring _meth_808F();
}

_ID52950( var_0 )
{
    level._ID50570 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID50570 )
    {
        level._ID34362 thread _unknown_0AE5();
        level._ID794 _meth_8139( 0 );
        thread _unknown_09FB();
    }
    else
    {
        level notify( "disable_slowmo" );
        level._ID794 _meth_8139( 1 );
        level._ID34362 thread _unknown_0B2C();
        level._ID50405 = 0;

        if ( _func_02F( level.cheat_slowmo_hud ) )
        {
            if ( _func_02F( level.cheat_slowmo_hud.myhintbackerblur ) )
            {
                level.cheat_slowmo_hud.myhintbackerblur _meth_808B( 0.5 );
                level.cheat_slowmo_hud.myhintbackerblur._ID55 = 0;
                level.cheat_slowmo_hud.myhintbackerblur _meth_808F();
            }

            if ( _func_02F( level.cheat_slowmo_hud.myhintbackerbordertop ) )
            {
                level.cheat_slowmo_hud.myhintbackerbordertop _meth_808B( 0.5 );
                level.cheat_slowmo_hud.myhintbackerbordertop._ID55 = 0;
                level.cheat_slowmo_hud.myhintbackerbordertop _meth_808F();
            }

            if ( _func_02F( level.cheat_slowmo_hud.myhintbackerborderbottom ) )
            {
                level.cheat_slowmo_hud.myhintbackerborderbottom _meth_808B( 0.5 );
                level.cheat_slowmo_hud.myhintbackerborderbottom._ID55 = 0;
                level.cheat_slowmo_hud.myhintbackerborderbottom _meth_808F();
            }

            if ( _func_02F( level.cheat_slowmo_hud.myhintstring ) )
            {
                level.cheat_slowmo_hud.myhintstring _meth_808B( 0.5 );
                level.cheat_slowmo_hud.myhintstring._ID55 = 0;
                level.cheat_slowmo_hud.myhintstring _meth_808F();
            }
        }
    }
}

_ID45994()
{
    level endon( "disable_slowmo" );
    level.slowmo_mode_slowed = 0;
    thread _unknown_0BD4();
    thread _unknown_0BFD();

    for (;;)
    {
        level._ID794 waittill( "_cheat_player_press_slowmo" );
        level._ID50405 = 0;
        _unknown_0ACE();

        if ( !_ID42237::_ID14385( "disable_slowmo_cheat" ) )
        {
            if ( _func_007() < level._ID34362._ID35414 )
                thread _ID51731();
            else
                thread _unknown_0C11();
        }

        waitframe;
    }
}

_ID51731()
{
    level notify( "gamespeed_reset_on_death" );
    level endon( "gamespeed_reset_on_death" );
    level._ID794 waittill( "death" );
    thread _unknown_0C36( 1 );
}

_ID51191()
{
    _ID42475::_ID34575( "aud_start_slowmo_cheat" );
    _func_0B6( self._ID35414, self._ID35417, self._ID22188 );
    level.slowmo_mode_slowed = 1;
}

_ID49163( var_0 )
{
    level._ID794 thread _ID42237::_ID36516( "h1_slowmo_cheat_heartbeat" );
    _ID42475::_ID34575( "aud_stop_slowmo_cheat" );

    if ( !_ID42237::_ID14385( "disable_slowmo_cheat" ) )
    {
        _func_0B6( self._ID35417, self._ID35414, self._ID22189 );
        level.slowmo_mode_slowed = 0;
    }

    if ( _func_02F( var_0 ) )
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
            _unknown_0B7E();
            _func_0B6( _func_007(), self._ID35417, self._ID22188 );
        }
    }
}

_ID46206()
{
    level endon( "slowmo_resume" );

    if ( _func_007() < level._ID34362._ID35414 )
        level._ID49872 = 1;

    for (;;)
    {
        if ( _func_02F( level._ID50570 ) && level._ID50570 )
        {
            level notify( "disable_slowmo" );
            level._ID34362 thread _unknown_0CE2();
            level._ID794 _meth_8139( 1 );
        }

        wait 0.05;
    }
}

_ID54655()
{
    level notify( "slowmo_resume" );
    level._ID49872 = undefined;

    if ( _func_02F( level._ID50570 ) && level._ID50570 )
    {
        if ( _func_02F( level._ID49872 ) )
            level._ID34362 thread _unknown_0D0B();

        level._ID34362 thread _unknown_0CF2();
        level._ID794 _meth_8139( 0 );
    }
}

_ID45061( var_0 )
{
    if ( var_0 )
    {
        _func_0DB( "chaplincheat", "1" );
        level._ID45275 = _func_039( "bg_weaponBobAmplitudeStanding" );
        _func_0DB( "bg_weaponBobAmplitudeStanding", "0.08 0.04" );
        _func_032( "ui_ragtimewarefare_overlay", 1 );
        level._ID50460["chaplin"] = 1;
        _unknown_0E45();
        thread _unknown_0E30();
    }
    else
    {
        level notify( "disable_chaplin" );
        level notify( "disable_chaplin_grain" );
        _unknown_0E6D();
        level._ID794 _meth_8190();
        _func_032( "ui_ragtimewarefare_overlay", 0 );
        level._ID50460["chaplin"] = 0;
        _ID42407::_ID10226( 0.05, _ID42475::_ID34575, "aud_stop_ragtime_warfare" );
        _func_0DB( "bg_weaponBobAmplitudeStanding", level._ID45275 );
        _func_0DB( "chaplincheat", "0" );

        if ( !_ID42237::_ID14385( "disable_slowmo_cheat" ) )
            _func_008( 1.0 );
    }

    _unknown_0C3D();
}

_ID53274()
{
    var_0 = _func_1AF();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 _meth_80D3( "black", 640, 480 );
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 1;
    var_0._ID408 = 1;
    var_0._ID983 = 0;
    return var_0;
}

_ID52906( var_0 )
{
    var_1 = _func_1AF();
    var_1._ID1331 = 0;
    var_1._ID1339 = -40;
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1._ID499 = "center";
    var_1._ID1284 = "middle";
    var_1._ID408 = 1;
    var_1 _meth_80D1( var_0 );
    var_1._ID393 = 3;
    var_1._ID55 = 1;
    var_1._ID983 = 1;
    var_1._ID196 = ( 0.976, 0.796, 0.412 );
    return var_1;
}

_ID43577( var_0 )
{
    if ( _func_039( "chaplincheat" ) != "1" )
        return;

    if ( _func_039( "cheat_chaplin_titlecardshowing" ) == "1" )
        return;

    if ( _ID42237::_ID14385( "disable_slowmo_cheat" ) )
        return;

    _func_034( "cheat_chaplin_titlecardshowing", 1 );
    var_1 = _unknown_0F1B();
    var_2 = _unknown_0F3C( var_0 );
    _func_008( 0.05 );
    wait 0.15;
    _func_008( 1 );
    var_1 _meth_808F();
    var_2 _meth_808F();
    _func_034( "cheat_chaplin_titlecardshowing", 0 );
}

_ID49417()
{
    level endon( "disable_chaplin" );
    _ID42475::_ID34575( "aud_start_ragtime_warfare" );

    for (;;)
    {
        level._ID794 _meth_818E( "chaplincheat", 60, 1 );
        wait 0.5;

        if ( !_ID42237::_ID14385( "disable_slowmo_cheat" ) )
        {
            if ( _func_039( "cheat_chaplin_titlecardshowing" ) == "1" )
            {
                _func_008( 0.05 );
                continue;
            }

            _func_008( 1.7 );
        }
    }
}

_ID44810()
{
    level._ID45332 = _func_06A( "script_model", level._ID794 _meth_80AF() );
    level._ID45332 _meth_80B8( "tag_origin" );
    level._ID45332 _meth_805A();
    _func_157( level._ID1426["grain_test"], level._ID45332, "tag_origin" );
    thread _ID52981();
}

_ID52981()
{
    if ( !_func_02F( level._ID45332 ) )
        return;

    level._ID45332 _meth_80B7();
}

_ID46521()
{
    level endon( "disable_chaplin_grain" );

    for (;;)
    {
        level._ID45332._ID740 = level._ID794 _meth_80AF() + 50 * _func_11F( level._ID794 _meth_8346() );
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
    level._ID44984 = _func_155( "fx/props/watermelon" );
    level._ID47760 = "j_head";
    level._ID53832 = "me_fruit_watermelon_oblong";
    _func_14C( level._ID53832 );
    _ID42407::_ID1892( "axis", ::_unknown_10EC );
    _ID42237::_ID3350( _func_0DE( "axis" ), ::_unknown_10F7 );
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

    if ( _func_02F( self._ID43614 ) && self._ID43614 )
        return;

    for (;;)
    {
        if ( level._ID48368 )
            _unknown_114C();
        else
            _unknown_1164();

        level waittill( "melonhead_mode_updated" );
    }
}

_ID43206()
{
    if ( _func_2A5( self ) )
        return;

    if ( _func_02F( self._ID44813 ) && self._ID44813 )
        return;

    if ( _func_02F( self._ID50499 ) )
        return;

    self _meth_801D( level._ID53832, level._ID47760, 1 );
    self._ID50499 = 1;
    thread _unknown_11B6();
    thread _unknown_11C1();
}

_ID47451( var_0, var_1 )
{
    if ( _func_2A5( self ) )
        return;

    if ( _func_02F( var_1 ) && var_1 )
        self._ID44813 = 1;

    if ( !_func_02F( self._ID50499 ) )
        return;

    self _meth_802A( level._ID53832, level._ID47760 );
    self._ID50499 = undefined;

    if ( _func_02F( var_0 ) && var_0 )
    {
        _func_156( level._ID44984, self _meth_818C( level._ID47760 ), _func_11F( self._ID65 ) );
        thread _ID42237::_ID27077( "h1_hit_watermelon", self _meth_818C( level._ID47760 ) );
    }

    self notify( "melonhead_removed" );
}

_ID43001()
{
    self endon( "melonhead_removed" );
    self waittill( "death" );
    _unknown_1207( 1 );
}

_ID47767()
{
    self endon( "melonhead_removed" );

    for (;;)
    {
        self waittill( "damage",  var_9, var_8, var_7, var_6, var_5, var_4, var_3, var_2, var_1, var_0  );

        if ( !_func_02F( self._ID253 ) )
            continue;

        if ( self._ID253 == "head" || self._ID253 == "helmet" && var_4 != "MOD_IMPACT" )
        {
            _unknown_125D( 1 );
            break;
        }
    }
}

_ID47860()
{
    level._ID45578 = 0;
    level._ID43831 = "h1_cheathandgun";
    level._ID47744 = undefined;
    _func_14E( level._ID43831 );
}

_ID52472( var_0 )
{
    if ( level._ID912 == "ac130" )
        return;

    level._ID45578 = _ID42237::_ID37527( var_0, 1, 0 );
    level notify( "handgun_mode_updated" );

    if ( level._ID45578 )
        _unknown_131B();
    else
        _unknown_132C();
}

_ID48177()
{
    self endon( "handgun_removed" );
    self endon( "death" );

    for (;;)
    {
        if ( level._ID794 _meth_82D7() == 1 && level._ID794 _meth_831C() == level._ID43831 )
            level._ID794 _ID42407::_ID27752( 0, "cheat_handgun" );
        else if ( level._ID794 _meth_82D7() == 0 && level._ID794 _meth_831C() != level._ID43831 )
            level._ID794 _ID42407::_ID27752( 1, "cheat_handgun" );

        wait 0.05;
    }
}

_ID51760()
{
    self endon( "handgun_removed" );
    self endon( "death" );

    for (;;)
    {
        if ( level._ID794 _meth_8341() )
        {
            level._ID794 _meth_833D( level._ID43831 );
            level._ID794 _meth_8301( level._ID43831, _func_1B7( level._ID43831 ) );
        }

        wait 0.05;
    }
}

_ID49235()
{
    level._ID47744 = level._ID794 _meth_831C();
    level._ID794 _meth_8319( level._ID43831 );
    level._ID794 _meth_833D( level._ID43831 );
    level._ID794 _meth_8321( level._ID43831 );
    thread _unknown_1398();
    thread _unknown_13B9();
}

_ID54153()
{
    if ( level._ID794 _meth_82D7() == 0 )
        level._ID794 _ID42407::_ID27752( 1, "cheat_handgun" );

    var_0 = level._ID794 _meth_831C();
    var_1 = 0;

    if ( var_0 == level._ID43831 && level._ID47744 != "none" )
    {
        var_2 = level._ID794 _meth_8316();
        var_3 = var_2;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( var_4 == level._ID47744 )
            {
                level._ID794 _meth_8321( var_4 );
                var_1 = 1;
                break;
            }
        }

        var_clear_2
        var_clear_0

        if ( !var_1 && var_2.size > 0 )
            level._ID794 _meth_8321( var_2[0] );
    }

    level._ID794 _meth_831A( level._ID43831 );
    self notify( "handgun_removed" );
}

_ID48213()
{
    level._ID47513 = 0;
    level._ID50521 = "h1_cheatlemonade";
    level._ID53989 = undefined;
    _func_14E( level._ID50521 );
}

_ID51199( var_0 )
{
    level._ID47513 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID47513 )
        _unknown_14B8();
    else
        _unknown_14D2();
}

_ID46793()
{
    level._ID53989 = level._ID794 _meth_8350();

    if ( _func_02F( level._ID53989 ) && level._ID53989 != "none" )
    {
        var_0 = level._ID794 _meth_8304( level._ID53989 );
        level._ID794 _meth_831A( level._ID53989 );
        level._ID794 _meth_834F( level._ID50521 );
        level._ID794 _meth_8319( level._ID50521 );
        level._ID794 _meth_8302( level._ID50521, var_0 );
    }
}

_ID44234()
{
    var_0 = level._ID794 _meth_8304( level._ID50521 );
    level._ID794 _meth_831A( level._ID50521 );

    if ( _func_02F( level._ID53989 ) )
    {
        level._ID794 _meth_834F( level._ID53989 );
        level._ID794 _meth_8319( level._ID53989 );
        level._ID794 _meth_8302( level._ID53989, var_0 );
    }
}

_ID43673()
{
    level._ID45847 = 0;

    if ( level._ID912 == "ac130" )
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
    _func_14C( level._ID49264 );
    _func_14C( level._ID43961 );
    _func_14E( level._ID44436 );
    _func_14E( "rpg_player" );
    _ID42407::_ID1892( "axis", ::_unknown_15C3 );
    _ID42237::_ID3350( _func_0DE( "axis" ), ::_unknown_15CE );
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

    if ( _func_02F( self._ID54204 ) && self._ID54204 )
        return;

    if ( _func_02F( self._ID3217 ) && self._ID3217 == "dog.atr" )
        return;

    for (;;)
    {
        if ( level._ID45847 )
            _unknown_162B();
        else
            _unknown_167C();

        level waittill( "tracksuit_mode_updated" );
    }
}

_ID49329()
{
    if ( _func_2A5( self ) )
        return;

    self._ID43252 = 1;

    if ( _func_02F( self._ID1302 ) && !_func_02F( self._ID54452 ) && self._ID170 != "script_model" )
    {
        if ( _func_02F( self._ID7 ) && _func_02F( self._ID7._ID2428 ) )
            animscripts\combat_utility::_ID12641();

        self._ID44641 = animscripts\utility::_ID16104();
        var_0 = _unknown_16FC();
        _ID42407::_ID14803( level._ID44436, "primary" );

        if ( !var_0 )
            _ID42407::_ID17509();

        self._ID44073 = self._ID7._ID24729;
        self._ID7._ID24729 = 1;
        self._ID52638 = self._ID7._ID30106;
        self._ID7._ID30106 = 1;
        thread animscripts\shared::_ID30318();
        self._ID834 = level._ID44436;
        self._ID1302 = level._ID44436;
        self._ID22034 = level._ID44436;
        self._ID54092 = self._ID949;
        self._ID949 = "none";
    }

    if ( self._ID669 == level._ID49264 || self._ID669 == "body_zakhaev_viktor" )
        return;

    if ( _func_02F( self._ID18272 ) )
    {
        self._ID51556 = self._ID18272;
        self _meth_802A( self._ID18272 );
        self._ID18272 = undefined;
    }

    if ( _func_02F( self._ID18304 ) )
    {
        self._ID44376 = self._ID18304;
        self _meth_802A( self._ID18304 );
    }

    self._ID46489 = self._ID669;
    self _meth_80B8( level._ID49264 );
    self _meth_801D( level._ID43961 );
    self._ID18304 = level._ID43961;
}

_ID53549()
{
    if ( _func_2A5( self ) )
        return;

    if ( !_func_02F( self._ID43252 ) )
        return;

    if ( _func_02F( self._ID46489 ) )
    {
        self _meth_802A( self._ID18304 );
        self._ID18304 = undefined;
        self _meth_80B8( self._ID46489 );
        self._ID46489 = undefined;
    }

    if ( _func_02F( self._ID44376 ) )
    {
        self _meth_801D( self._ID44376 );
        self._ID18304 = self._ID44376;
        self._ID44376 = undefined;
    }

    if ( _func_02F( self._ID51556 ) )
    {
        self _meth_801D( self._ID51556 );
        self._ID18272 = self._ID51556;
        self._ID51556 = undefined;
    }

    if ( _func_02F( self._ID44641 ) && !_func_02F( self._ID54452 ) )
    {
        if ( _func_02F( self._ID7 ) && _func_02F( self._ID7._ID2428 ) )
            animscripts\combat_utility::_ID12641();

        if ( _unknown_180F() )
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
    var_0 = self._ID1312;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( var_1._ID811 != "none" )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID48983()
{
    level._ID50958 = 0;
    level._ID51383 = "h2_cheatpomegrenade";
    level._ID53300 = undefined;
    _func_14E( level._ID51383 );
}

_ID50345( var_0 )
{
    level._ID50958 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID50958 )
        _unknown_18A9();
    else
        _unknown_18C3();
}

_ID48708()
{
    level._ID53300 = level._ID794 _meth_8350();

    if ( _func_02F( level._ID53300 ) && level._ID53300 != "none" )
    {
        var_0 = level._ID794 _meth_8304( level._ID53300 );
        level._ID794 _meth_831A( level._ID53300 );
        level._ID794 _meth_834F( level._ID51383 );
        level._ID794 _meth_8319( level._ID51383 );
        level._ID794 _meth_8302( level._ID51383, var_0 );
    }
}

_ID53445()
{
    var_0 = level._ID794 _meth_8304( level._ID51383 );
    level._ID794 _meth_831A( level._ID51383 );

    if ( _func_02F( level._ID53300 ) )
    {
        level._ID794 _meth_834F( level._ID53300 );
        level._ID794 _meth_8319( level._ID53300 );
        level._ID794 _meth_8302( level._ID53300, var_0 );
    }
}

_ID45214()
{
    level._ID50376 = 0;
    level._ID47892 = _func_155( "fx/props/pineapple_heads" );
    level._ID44918 = "j_head";
    level._ID52802 = "h2_projectile_cheat_pineapple";
    _func_14C( level._ID52802 );
    _unknown_1CE3( ::_unknown_197C );
}

_ID46618( var_0 )
{
    level._ID50376 = _ID42237::_ID37527( var_0, 1, 0 );
    _func_0DB( "cg_melee_knife_fx", !level._ID50376 );
    level notify( "pineapple_mode_updated" );
}

_ID51981()
{
    self endon( "death" );
    self notify( "pineapple_monitor" );
    self endon( "pineapple_monitor" );
    waittillframeend;

    if ( _func_02F( self.cheat._ID43492 ) && self.cheat._ID43492 )
        return;

    if ( _func_02F( self._ID172 ) && self._ID172 == "script_vehicle" )
        return;

    for (;;)
    {
        if ( level._ID50376 )
            _unknown_19F4();
        else
            _unknown_1A30();

        level waittill( "pineapple_mode_updated" );
    }
}

_ID52281()
{
    if ( _func_2A5( self ) )
        return;

    if ( _func_02F( self.cheat._ID48622 ) && self.cheat._ID48622 )
        return;

    if ( _func_02F( self.cheat._ID51310 ) )
        return;

    if ( _func_02F( self._ID18272 ) )
    {
        self.cheat.pineapple_previoushat = self._ID18272;
        self _meth_802A( self._ID18272 );
        self._ID18272 = undefined;
    }

    if ( _func_02F( self._ID18304 ) )
    {
        self.cheat.pineapple_previoushead = self._ID18304;
        self _meth_802A( self._ID18304 );
    }

    if ( _func_02F( self.cheat.attachheadlast ) && self.cheat.attachheadlast )
    {
        self _meth_801D( level._ID52802, level._ID44918, 1 );
        self _meth_801D( level.invisibleman_head );
    }
    else
    {
        self _meth_801D( level.invisibleman_head );
        self _meth_801D( level._ID52802, level._ID44918, 1 );
    }

    self._ID18304 = level.invisibleman_head;
    self.cheat._ID51310 = 1;
    thread _unknown_1B1E();
    thread _unknown_1B28();
}

_ID52060( var_0, var_1 )
{
    if ( _func_2A5( self ) )
        return;

    if ( _func_02F( var_1 ) && var_1 )
        self.cheat._ID48622 = 1;

    if ( !_func_02F( self.cheat._ID51310 ) )
        return;

    if ( _unknown_1E00( self ) )
    {
        if ( _func_02F( self.cheat._ID53636 ) )
            self.cheat.pineapple_previoushead = level._ID53453;

        if ( _func_02F( self.cheat.pineapple_previoushat ) )
        {
            self.cheat._ID50576 = self.cheat.pineapple_previoushat;
            self.cheat.pineapple_previoushat = undefined;
        }
    }

    if ( _func_02F( self.cheat.pineapple_previoushead ) && !_func_02F( self._ID43135.polterghostmode ) )
    {
        self _meth_802A( level.invisibleman_head );
        self _meth_801D( self.cheat.pineapple_previoushead );
        self._ID18304 = self.cheat.pineapple_previoushead;
        self.cheat.pineapple_previoushead = undefined;
    }

    if ( _func_02F( self.cheat.pineapple_previoushat ) && !_func_02F( self._ID43135.polterghostmode ) )
    {
        self _meth_801D( self.cheat.pineapple_previoushat );
        self._ID18272 = self.cheat.pineapple_previoushat;
        self.cheat.pineapple_previoushat = undefined;
    }

    self _meth_802A( level._ID52802, level._ID44918 );
    self.cheat._ID51310 = undefined;

    if ( _func_02F( var_0 ) && var_0 )
    {
        _func_156( level._ID47892, self _meth_818C( level._ID44918 ), _func_11F( self._ID65 ) );
        thread _ID42237::_ID27077( "h1_hit_waterpineapple", self _meth_818C( level._ID44918 ) );
    }

    self notify( "pineapple_removed" );
}

_ID50772()
{
    self endon( "pineapple_removed" );
    self waittill( "death" );
    _unknown_1BD4( 1 );
}

_ID52850()
{
    self endon( "pineapple_removed" );

    for (;;)
    {
        self waittill( "damage",  var_9, var_8, var_7, var_6, var_5, var_4, var_3, var_2, var_1, var_0  );

        if ( _func_02F( self.cheat.ignoredamageinpineapplemode ) && self.cheat.ignoredamageinpineapplemode )
            continue;

        if ( !_func_02F( self._ID253 ) || var_1._ID170 == "worldspawn" )
            continue;

        if ( animscripts\utility::_ID9641( "head", "helmet" ) && var_4 != "MOD_IMPACT" )
        {
            _unknown_1C46( 1 );
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
    _func_14E( level._ID49294 );
    level._ID794 thread _unknown_1D1D();
}

_ID52101( var_0 )
{
    level._ID52856 = _ID42237::_ID37527( var_0, 1, 0 );

    if ( level._ID52856 )
        _unknown_1D0D();
    else
        _unknown_1D27();
}

_ID46956()
{
    level._ID49444 = level._ID794 _meth_8325();

    if ( _func_02F( level._ID49444 ) && level._ID49444 != "none" )
    {
        var_0 = level._ID794 _meth_8304( level._ID49444 );
        level._ID794 _meth_831A( level._ID49444 );
        level._ID794 _meth_8324( level._ID49294 );
        level._ID794 _meth_8319( level._ID49294 );
        level._ID794 _meth_8302( level._ID49294, var_0 );
    }
}

_ID53747()
{
    var_0 = level._ID794 _meth_8304( level._ID49294 );
    level._ID794 _meth_831A( level._ID49294 );

    if ( _func_02F( level._ID49444 ) )
    {
        level._ID794 _meth_8324( level._ID49444 );
        level._ID794 _meth_8319( level._ID49444 );
        level._ID794 _meth_8302( level._ID49444, var_0 );
    }
}

football_listener()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "grenade_fire",  var_1, var_0  );

        if ( var_1 == "h2_cheatfootball" )
        {
            level.cheat_football_array = _ID42237::_ID3293( level.cheat_football_array, var_0 );

            while ( level.cheat_football_array.size > 30 )
            {
                var_2 = _ID42407::_ID15724( level._ID794._ID740, level.cheat_football_array );
                level.cheat_football_array = _ID42237::_ID3321( level.cheat_football_array, var_2 );
                var_2 _meth_80B7();
            }
        }
    }
}

_ID50663()
{
    level._ID46496 = 0;
    level._ID50119 = _func_155( "vfx/unique/confetti_firework" );
}

_ID54134( var_0 )
{
    level._ID46496 = _ID42237::_ID37527( var_0, 1, 0 );
}

_ID53271()
{
    if ( !_func_0D4( self ) || self._ID170 == "script_model" )
        return;

    self waittill( "death",  var_access_0, var_access_0  );

    if ( _func_02F( self.cheat._ID50282 ) && self.cheat._ID50282 )
        return;

    if ( _unknown_1AF5() )
    {
        if ( _func_2A5( self ) )
            return;

        waitframe;
        _ID45456::martyr_mode_dropgrenade( var_access_1, var_access_0 );

        if ( level._ID46534 )
        {
            for ( var_2 = 0; var_2 < level._ID49296; var_2++ )
                thread _unknown_1F0F( self._ID740, self _meth_80AF() );
        }

        if ( _func_02F( level._ID50119 ) && level._ID46496 )
        {
            var_3 = self._ID740;
            var_4 = self._ID65;

            if ( _func_02F( self._ID253 ) )
            {
                if ( animscripts\utility::_ID9641( "helmet", "head", "neck" ) )
                    var_3 = self _meth_818C( "J_Head" );
                else if ( animscripts\utility::_ID9641( "torso_upper", "torso_lower", "right_arm_upper", "left_arm_upper", "right_arm_lower", "left_arm_lower", "right_hand", "left_hand" ) )
                    var_3 = self _meth_818C( "J_SpineLower" );
            }

            for ( var_2 = 0; var_2 < 5; var_2++ )
            {
                var_5 = _func_0B9( -24, 24 );
                var_6 = _func_0B9( -24, 24 );
                var_7 = _func_0B9( 0, 15 );
                var_8 = var_3 + ( var_5, var_6, var_7 );
                _func_156( level._ID50119, var_8, _func_11F( var_4 ) );
                thread _ID42237::_ID27077( "h2_party_time_explosion_fireworks", var_8 );
                wait(0.1 + _func_0B8( 0.2 ));
            }
        }

        if ( _func_02F( self ) && level._ID46496 || level._ID46534 )
        {
            if ( _func_02F( self._ID170 ) && self._ID170 != "actor_enemy_dog" )
                animscripts\shared::_ID12142( self._ID1302 );

            wait 0.15;

            if ( _func_02F( self ) && !_func_2A5( self ) )
                self _meth_80B7();
        }
    }
}

cheat_death_corpse_check( var_0 )
{
    if ( _func_02F( level._ID46496 ) && level._ID46496 || _func_02F( level._ID46534 ) && level._ID46534 )
    {
        if ( !_func_02F( var_0 ) )
            var_0 = 10;

        wait(var_0);
        var_1 = _func_0E1();

        if ( _func_02F( var_1 ) )
            var_2 = var_1.size - 1;
        else
            return;

        wait 0.05;

        if ( _func_02F( var_0[var_1] ) && !_func_2A5( var_0[var_1] ) )
            var_0[var_1] _meth_80B7();
    }
}

_ID50653( var_0, var_1 )
{
    if ( level._ID46750.size == level._ID49958 )
    {
        level._ID46750[0] _meth_80B7();
        level._ID46750 = _ID42407::_ID3325( level._ID46750, 0 );
    }

    var_2 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_2._ID65 = ( 0, _func_0B7( 360 ), 0 );
    var_3 = _func_0B8( 1 );
    var_2._ID740 = var_0 * var_3 + var_1 * 1 - var_3;
    var_2 _meth_80B8( level._ID46891 );
    var_4 = _ID42237::_ID28976( 15000 );
    var_4 = ( var_4[0], var_4[1], _func_0C3( var_4[2] ) );
    var_2 _meth_82CC( var_2._ID740, var_4 );
    level._ID46750[level._ID46750.size] = var_2;
    var_2 endon( "death" );
    wait(_func_0BA( 5.0, 10.0 ));

    if ( _func_02F( var_2 ) )
    {
        level._ID46750 = _ID42237::_ID3321( level._ID46750, var_2 );
        var_2 _meth_80B7();
    }
}

_ID53048( var_0 )
{
    _func_14C( var_0 );
    level._ID46891 = var_0;
}

_ID51561()
{
    level._ID52766 = 0;
    level._ID51538 = "h2_body_vil_shepherd_cheat";
    level._ID53453 = "head_vil_shepherd";
    level._ID51642 = "coltanaconda";
    level._ID45398 = 12;
    _func_14C( level._ID51538 );
    _func_14C( level._ID53453 );
    _func_14E( level._ID51642 );
    _unknown_22DA( ::_unknown_2171 );
}

override_wolf_model( var_0 )
{
    _func_14C( var_0 );
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

    if ( _func_02F( self.cheat._ID54456 ) && self.cheat._ID54456 )
        return;

    if ( _func_02F( self._ID3217 ) && self._ID3217 == "dog.atr" )
        return;

    if ( _func_02F( self._ID172 ) && self._ID172 == "script_vehicle" )
        return;

    for (;;)
    {
        if ( level._ID52766 )
            _unknown_21F1();
        else
            _unknown_226A();

        level waittill( "wolf_mode_updated" );
    }
}

_ID52282()
{
    if ( _func_2A5( self ) )
        return;

    if ( _func_125( self._ID669, "body_vil_shepherd" ) )
        return;

    if ( _func_02F( self._ID43135.polterghostmode ) && self._ID43135.polterghostmode )
        self waittill( "polterghost_removed" );

    if ( _func_02F( self.cheat.wolfmode_presetmodelfunc ) )
        self [[ self.cheat.wolfmode_presetmodelfunc ]]();

    if ( _func_02F( self._ID18272 ) )
    {
        self.cheat._ID50576 = self._ID18272;
        self _meth_802A( self._ID18272 );
        self._ID18272 = undefined;
    }

    if ( _func_02F( self._ID18304 ) )
    {
        if ( !_func_02F( self.cheat.pineapple_previoushead ) )
        {
            self.cheat._ID53636 = self._ID18304;
            self _meth_802A( self._ID18304 );
        }
        else
            self.cheat._ID53636 = self.cheat.pineapple_previoushead;
    }

    self.cheat._ID47612 = self._ID669;
    self _meth_80B8( level._ID51538 );

    if ( !_func_02F( self.cheat.pineapple_previoushead ) )
    {
        self _meth_801D( level._ID53453 );
        self._ID18304 = level._ID53453;
    }

    if ( _func_02F( self._ID1302 ) && !_func_02F( self.cheat._ID48626 ) && self._ID170 != "script_model" )
    {
        self.cheat._ID44607 = self._ID470;
        self.cheat._ID48334 = self._ID464;
        self._ID464 = level._ID45398;
        self._ID470 = "fraggrenade";
        _ID42407::_ID14803( self._ID834, "primary" );

        if ( _func_1BE( self._ID834 ) != "rocketlauncher" )
        {
            if ( _func_02F( self._ID34144 ) && self._ID34144 != "none" )
                self.cheat._ID51703 = self._ID34144;

            _ID42407::_ID14803( level._ID51642, "sidearm" );

            if ( _func_02F( self._ID14794 ) )
                self.cheat.previousforcesidearm = self._ID14794;

            self._ID14794 = 1;
        }
    }

    if ( _func_02F( self.cheat.wolfmode_postsetmodelfunc ) )
        self [[ self.cheat.wolfmode_postsetmodelfunc ]]();

    self.cheat._ID50247 = 1;

    if ( _func_0D4( self ) && self._ID170 != "script_model" )
        thread _unknown_244C();
}

_ID44704()
{
    if ( _func_2A5( self ) )
        return;

    if ( !_unknown_2499( self ) )
        return;

    if ( _func_02F( self.cheat.wolfmode_presetmodelfunc ) )
        self [[ self.cheat.wolfmode_presetmodelfunc ]]();

    if ( _func_02F( self.cheat._ID47612 ) )
    {
        self _meth_80B8( self.cheat._ID47612 );
        self.cheat._ID47612 = undefined;
    }

    if ( _func_02F( self.cheat._ID53636 ) && !_func_02F( self.cheat._ID51310 ) )
    {
        self _meth_802A( self._ID18304 );
        self._ID18304 = undefined;
        self _meth_801D( self.cheat._ID53636 );
        self._ID18304 = self.cheat._ID53636;
        self.cheat._ID53636 = undefined;
    }
    else if ( _func_02F( self.cheat._ID53636 ) )
        self.cheat.pineapple_previoushead = self.cheat._ID53636;

    if ( _func_02F( self.cheat._ID50576 ) && !_func_02F( self.cheat._ID51310 ) )
    {
        self _meth_801D( self.cheat._ID50576 );
        self._ID18272 = self.cheat._ID50576;
        self.cheat._ID50576 = undefined;
    }
    else if ( _func_02F( self.cheat._ID50576 ) )
        self.cheat.pineapple_previoushat = self.cheat._ID50576;

    if ( !_func_02F( self.cheat._ID48626 ) )
    {
        self._ID470 = self.cheat._ID44607;
        self._ID464 = self.cheat._ID48334;
        _ID42407::_ID14803( self._ID834, "primary" );

        if ( _func_02F( self.cheat._ID51703 ) )
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

        if ( _func_02F( self.cheat.previousforcesidearm ) )
            self._ID14794 = self.cheat.previousforcesidearm;
        else
            self._ID14794 = 0;
    }

    if ( _func_02F( self.cheat.wolfmode_postsetmodelfunc ) )
        self [[ self.cheat.wolfmode_postsetmodelfunc ]]();

    self._ID1312[level._ID51642] = undefined;
    self.cheat._ID50247 = 0;
    self notify( "wolf_removed" );
}

_ID44101()
{
    var_0 = self._ID1312;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( var_1._ID811 != "none" )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID51571()
{
    self endon( "death" );
    self endon( "wolf_removed" );

    if ( _func_02F( self.cheat.ignorewolfthink ) && self.cheat.ignorewolfthink )
        return;

    for (;;)
    {
        wait(_func_0B9( 1, 5 ));

        if ( _func_02F( level._ID1644 ) && _func_02F( level._ID1644._ID22585 ) && _func_02F( level._ID1644._ID22585._ID10660 ) && level._ID1644._ID22585._ID10660 == "hidden" )
            continue;

        var_0 = _func_0B7( 6 );

        switch ( var_0 )
        {

        }

        case 5:
        case 4:
        case 3:
        case 2:
        case 1:
        case 0:
    }
}

_ID45074()
{
    if ( _func_0F5( self._ID740, self._ID451 ) < self._ID452 * self._ID452 )
    {
        self._ID452 = 90;
        self _meth_81B2( level._ID794._ID740 );
        self._ID377 = level._ID794;
    }
}

iswolf( var_0 )
{
    return _func_02F( var_0.cheat._ID50247 ) && var_0.cheat._ID50247;
}

_ID44517()
{
    if ( _func_02F( self._ID470 ) && self._ID470 == "fraggrenade" && _func_02F( self._ID7._ID3291 ) )
    {
        self._ID464 = level._ID45398;
        _ID42407::_ID37694();
    }
}

add_specialfeatures_function( var_0 )
{
    if ( _func_03A( "r_reflectionProbeGenerate" ) == 1 )
        return;

    if ( !_func_02F( var_0 ) || !_func_314( var_0 ) )
        return;

    var_1 = level.sf.badguyteams;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42407::_ID1892( var_2, var_0 );
        _ID42237::_ID3350( _func_0DF( var_2, "all" ), var_0 );
    }

    var_clear_2
    var_clear_0
}

remove_specialfeatures_function( var_0 )
{
    if ( !_func_02F( var_0 ) || !_func_314( var_0 ) )
        return;

    var_1 = level.sf.badguyteams;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42407::_ID29534( var_2, var_0 );
    }

    var_clear_2
    var_clear_0
}

addspecialmonitors()
{
    thread _unknown_264A();
    thread _unknown_2451();
    thread _ID45456::_ID50206();
    thread _unknown_257E();
}

edge_mode_update( var_0 )
{
    if ( var_0 )
        level._ID50460["edge"] = 1;
    else
        level._ID50460["edge"] = 0;

    _unknown_1FA6();
}

weapons_specialfeatures( var_0 )
{
    if ( _func_02F( var_0 ) )
    {
        while ( !_func_02F( level._ID794 _meth_831C( 1 ) ) || level._ID794 _meth_831C( 1 ) == "none" )
            waittillframeend;
    }

    if ( _func_02F( level._ID43135.tactical_greenberet ) && level._ID43135.tactical_greenberet )
        _ID45456::greenberet_giveweapon();

    if ( _func_02F( level._ID52856 ) && level._ID52856 )
        _unknown_25A1();

    if ( _func_02F( level._ID50958 ) && level._ID50958 )
        _unknown_2497();
}

weapons_specialfeatures_reset()
{
    level._ID43135.greenberet_disabled = undefined;

    if ( _func_02F( level._ID43135.tactical_greenberet ) && level._ID43135.tactical_greenberet )
        _ID45456::greenberet_takeweapon();

    if ( _func_02F( level._ID52856 ) && level._ID52856 )
        _unknown_25F3();

    if ( _func_02F( level._ID50958 ) && level._ID50958 )
        _unknown_24EA();
}
