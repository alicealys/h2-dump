// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19643()
{
    if ( _func_02F( anim._ID7336 ) && anim._ID7336 )
        return;

    if ( _func_039( "bcs_enable" ) == "" )
        _func_034( "bcs_enable", "on" );

    if ( _func_039( "bcs_enable" ) == "off" )
    {
        anim._ID7336 = 0;
        anim._ID794._ID7336 = 0;
        return;
    }

    anim._ID7336 = 1;
    anim._ID794._ID7336 = 0;

    if ( _func_039( "bcs_filterThreat" ) == "" )
        _func_034( "bcs_filterThreat", "off" );

    if ( _func_039( "bcs_filterInform" ) == "" )
        _func_034( "bcs_filterInform", "off" );

    if ( _func_039( "bcs_filterOrder" ) == "" )
        _func_034( "bcs_filterOrder", "off" );

    if ( _func_039( "bcs_filterReaction" ) == "" )
        _func_034( "bcs_filterReaction", "off" );

    if ( _func_039( "bcs_filterResponse" ) == "" )
        _func_034( "bcs_filterResponse", "off" );

    if ( _func_039( "bcs_threatLimitTargettedBySelf" ) == "" )
        _func_034( "bcs_threatLimitTargettedBySelf", "off" );

    if ( _func_039( "bcs_threatLimitTargetingPlayer" ) == "" )
        _func_034( "bcs_threatLimitTargetingPlayer", "off" );

    if ( _func_039( "bcs_threatLimitInPlayerFOV" ) == "" )
        _func_034( "bcs_threatLimitInPlayerFOV", "on" );

    if ( _func_039( "bcs_threatLimitInLocation" ) == "" )
        _func_034( "bcs_threatLimitInLocation", "on" );

    if ( _func_039( "bcs_threatLimitSpeakerDist" ) == "" )
        _func_034( "bcs_threatLimitSpeakerDist", "512" );

    if ( _func_039( "bcs_threatLimitThreatDist" ) == "" )
        _func_034( "bcs_threatLimitThreatDist", "2048" );

    if ( _func_039( "bcs_threatPlayerRelative" ) == "" )
        _func_034( "bcs_threatPlayerRelative", "off" );

    if ( _func_039( "debug_bcprint" ) == "" )
        _func_034( "debug_bcprint", "off" );

    if ( _func_039( "debug_bcshowqueue" ) == "" )
        _func_034( "debug_bcshowqueue", "off" );

    if ( _func_039( "debug_bcprintdump" ) == "" )
        _func_034( "debug_bcprintdump", "off" );

    anim._ID4935 = "^3***** BCS FAILURE: ";
    anim._ID4936 = "^3***** BCS WARNING: ";
    _unknown_06D1();
    _unknown_06E7();
    anim._ID27938["american"] = "1";
    anim._ID27938["seal"] = "1";
    anim._ID27938["taskforce"] = "1";
    anim._ID27938["secretservice"] = "1";
    thread _unknown_0919();
    anim._ID39932 = [];
    anim._ID39932["russian"] = [];
    anim._ID39932["russian"][0] = _func_1A5();
    anim._ID39932["russian"][0]._ID216 = 0;
    anim._ID39932["russian"][0]._ID25173 = "0";
    anim._ID39932["russian"][1] = _func_1A5();
    anim._ID39932["russian"][1]._ID216 = 0;
    anim._ID39932["russian"][1]._ID25173 = "1";
    anim._ID39932["russian"][2] = _func_1A5();
    anim._ID39932["russian"][2]._ID216 = 0;
    anim._ID39932["russian"][2]._ID25173 = "2";
    anim._ID39932["russian"][3] = _func_1A5();
    anim._ID39932["russian"][3]._ID216 = 0;
    anim._ID39932["russian"][3]._ID25173 = "3";
    anim._ID39932["russian"][4] = _func_1A5();
    anim._ID39932["russian"][4]._ID216 = 0;
    anim._ID39932["russian"][4]._ID25173 = "4";
    anim._ID39932["portuguese"] = [];
    anim._ID39932["portuguese"][0] = _func_1A5();
    anim._ID39932["portuguese"][0]._ID216 = 0;
    anim._ID39932["portuguese"][0]._ID25173 = "0";
    anim._ID39932["portuguese"][1] = _func_1A5();
    anim._ID39932["portuguese"][1]._ID216 = 0;
    anim._ID39932["portuguese"][1]._ID25173 = "1";
    anim._ID39932["portuguese"][2] = _func_1A5();
    anim._ID39932["portuguese"][2]._ID216 = 0;
    anim._ID39932["portuguese"][2]._ID25173 = "2";
    anim._ID39932["shadowcompany"] = [];
    anim._ID39932["shadowcompany"][0] = _func_1A5();
    anim._ID39932["shadowcompany"][0]._ID216 = 0;
    anim._ID39932["shadowcompany"][0]._ID25173 = "0";
    anim._ID39932["shadowcompany"][1] = _func_1A5();
    anim._ID39932["shadowcompany"][1]._ID216 = 0;
    anim._ID39932["shadowcompany"][1]._ID25173 = "1";
    anim._ID39932["shadowcompany"][2] = _func_1A5();
    anim._ID39932["shadowcompany"][2]._ID216 = 0;
    anim._ID39932["shadowcompany"][2]._ID25173 = "2";
    anim._ID39932["shadowcompany"][3] = _func_1A5();
    anim._ID39932["shadowcompany"][3]._ID216 = 0;
    anim._ID39932["shadowcompany"][3]._ID25173 = "3";
    anim._ID39932["british"] = [];
    anim._ID39932["british"][0] = _func_1A5();
    anim._ID39932["british"][0]._ID216 = 0;
    anim._ID39932["british"][0]._ID25173 = "0";
    anim._ID39932["british"][1] = _func_1A5();
    anim._ID39932["british"][1]._ID216 = 0;
    anim._ID39932["british"][1]._ID25173 = "1";
    anim._ID39932["british"][2] = _func_1A5();
    anim._ID39932["british"][2]._ID216 = 0;
    anim._ID39932["british"][2]._ID25173 = "2";
    anim._ID39932["american"] = [];
    anim._ID39932["american"][0] = _func_1A5();
    anim._ID39932["american"][0]._ID216 = 0;
    anim._ID39932["american"][0]._ID25173 = "0";
    anim._ID39932["american"][1] = _func_1A5();
    anim._ID39932["american"][1]._ID216 = 0;
    anim._ID39932["american"][1]._ID25173 = "1";
    anim._ID39932["american"][2] = _func_1A5();
    anim._ID39932["american"][2]._ID216 = 0;
    anim._ID39932["american"][2]._ID25173 = "2";
    anim._ID39932["american"][3] = _func_1A5();
    anim._ID39932["american"][3]._ID216 = 0;
    anim._ID39932["american"][3]._ID25173 = "3";
    anim._ID39932["american"][4] = _func_1A5();
    anim._ID39932["american"][4]._ID216 = 0;
    anim._ID39932["american"][4]._ID25173 = "4";
    anim._ID39932["seal"] = [];
    anim._ID39932["seal"][0] = _func_1A5();
    anim._ID39932["seal"][0]._ID216 = 0;
    anim._ID39932["seal"][0]._ID25173 = "0";
    anim._ID39932["seal"][1] = _func_1A5();
    anim._ID39932["seal"][1]._ID216 = 0;
    anim._ID39932["seal"][1]._ID25173 = "1";
    anim._ID39932["seal"][2] = _func_1A5();
    anim._ID39932["seal"][2]._ID216 = 0;
    anim._ID39932["seal"][2]._ID25173 = "2";
    anim._ID39932["seal"][3] = _func_1A5();
    anim._ID39932["seal"][3]._ID216 = 0;
    anim._ID39932["seal"][3]._ID25173 = "3";
    anim._ID39932["taskforce"] = [];
    anim._ID39932["taskforce"][0] = _func_1A5();
    anim._ID39932["taskforce"][0]._ID216 = 0;
    anim._ID39932["taskforce"][0]._ID25173 = "0";
    anim._ID39932["taskforce"][1] = _func_1A5();
    anim._ID39932["taskforce"][1]._ID216 = 0;
    anim._ID39932["taskforce"][1]._ID25173 = "1";
    anim._ID39932["taskforce"][2] = _func_1A5();
    anim._ID39932["taskforce"][2]._ID216 = 0;
    anim._ID39932["taskforce"][2]._ID25173 = "2";
    anim._ID39932["secretservice"] = [];
    anim._ID39932["secretservice"][0] = _func_1A5();
    anim._ID39932["secretservice"][0]._ID216 = 0;
    anim._ID39932["secretservice"][0]._ID25173 = "0";
    anim._ID39932["secretservice"][1] = _func_1A5();
    anim._ID39932["secretservice"][1]._ID216 = 0;
    anim._ID39932["secretservice"][1]._ID25173 = "1";
    anim._ID39932["secretservice"][2] = _func_1A5();
    anim._ID39932["secretservice"][2]._ID216 = 0;
    anim._ID39932["secretservice"][2]._ID25173 = "2";
    anim._ID39932["secretservice"][3] = _func_1A5();
    anim._ID39932["secretservice"][3]._ID216 = 0;
    anim._ID39932["secretservice"][3]._ID25173 = "3";
    anim._ID39932["arab"] = [];
    anim._ID39932["arab"][0] = _func_1A5();
    anim._ID39932["arab"][0]._ID216 = 0;
    anim._ID39932["arab"][0]._ID25173 = "0";
    anim._ID39932["arab"][1] = _func_1A5();
    anim._ID39932["arab"][1]._ID216 = 0;
    anim._ID39932["arab"][1]._ID25173 = "1";
    anim._ID39932["arab"][2] = _func_1A5();
    anim._ID39932["arab"][2]._ID216 = 0;
    anim._ID39932["arab"][2]._ID25173 = "2";
    anim._ID39932["german"] = [];
    anim._ID39932["german"][0] = _func_1A5();
    anim._ID39932["german"][0]._ID216 = 0;
    anim._ID39932["german"][0]._ID25173 = "0";
    anim._ID39932["german"][1] = _func_1A5();
    anim._ID39932["german"][1]._ID216 = 0;
    anim._ID39932["german"][1]._ID25173 = "1";
    anim._ID39932["german"][2] = _func_1A5();
    anim._ID39932["german"][2]._ID216 = 0;
    anim._ID39932["german"][2]._ID25173 = "2";
    anim._ID39932["italian"] = [];
    anim._ID39932["italian"][0] = _func_1A5();
    anim._ID39932["italian"][0]._ID216 = 0;
    anim._ID39932["italian"][0]._ID25173 = "0";
    anim._ID39932["italian"][1] = _func_1A5();
    anim._ID39932["italian"][1]._ID216 = 0;
    anim._ID39932["italian"][1]._ID25173 = "1";
    anim._ID39932["italian"][2] = _func_1A5();
    anim._ID39932["italian"][2]._ID216 = 0;
    anim._ID39932["italian"][2]._ID25173 = "2";
    anim._ID39932["spanish"] = [];
    anim._ID39932["spanish"][0] = _func_1A5();
    anim._ID39932["spanish"][0]._ID216 = 0;
    anim._ID39932["spanish"][0]._ID25173 = "0";
    anim._ID39932["spanish"][1] = _func_1A5();
    anim._ID39932["spanish"][1]._ID216 = 0;
    anim._ID39932["spanish"][1]._ID25173 = "1";
    anim._ID39932["spanish"][2] = _func_1A5();
    anim._ID39932["spanish"][2]._ID216 = 0;
    anim._ID39932["spanish"][2]._ID25173 = "2";
    _unknown_0ED2();

    if ( !_func_02F( level._ID15012 ) )
        level._ID15012 = 0;

    anim._ID13281 = [];
    anim._ID13281["threat"] = [];
    anim._ID13281["response"] = [];
    anim._ID13281["reaction"] = [];
    anim._ID13281["order"] = [];
    anim._ID13281["inform"] = [];
    anim._ID13281["custom"] = [];
    anim._ID13281["direction"] = [];

    if ( _func_02F( level._ID1644 ) )
    {
        anim._ID13276["threat"]["self"] = 20000;
        anim._ID13276["threat"]["squad"] = 30000;
    }
    else
    {
        anim._ID13276["threat"]["self"] = 12500;
        anim._ID13276["threat"]["squad"] = 8000;
    }

    anim._ID13276["threat"]["location_repeat"] = 5000;
    anim._ID13276["response"]["self"] = 1000;
    anim._ID13276["response"]["squad"] = 1000;
    anim._ID13276["reaction"]["self"] = 1000;
    anim._ID13276["reaction"]["squad"] = 1000;
    anim._ID13276["order"]["self"] = 8000;
    anim._ID13276["order"]["squad"] = 40000;
    anim._ID13276["inform"]["self"] = 6000;
    anim._ID13276["inform"]["squad"] = 8000;
    anim._ID13276["custom"]["self"] = 0;
    anim._ID13276["custom"]["squad"] = 5000;
    anim._ID13281["playername"] = 15000;
    anim._ID13281["reaction"]["casualty"] = 20000;
    anim._ID13281["reaction"]["friendlyfire"] = 5000;
    anim._ID13281["reaction"]["taunt"] = 30000;
    anim._ID13281["inform"]["reloading"] = 20000;
    anim._ID13281["inform"]["killfirm"] = 15000;
    anim._ID13279["threat"]["infantry"] = 0.5;
    anim._ID13279["threat"]["vehicle"] = 0.7;
    anim._ID13279["response"]["ack"] = 0.9;
    anim._ID13279["response"]["exposed"] = 0.8;
    anim._ID13279["response"]["callout"] = 0.9;
    anim._ID13279["response"]["echo"] = 0.9;
    anim._ID13279["reaction"]["casualty"] = 0.5;
    anim._ID13279["reaction"]["friendlyfire"] = 1.0;
    anim._ID13279["reaction"]["taunt"] = 0.9;
    anim._ID13279["order"]["action"] = 0.3;
    anim._ID13279["order"]["move"] = 0.3;
    anim._ID13279["order"]["displace"] = 0.5;
    anim._ID13279["inform"]["attack"] = 0.9;
    anim._ID13279["inform"]["incoming"] = 0.9;
    anim._ID13279["inform"]["reloading"] = 0.2;
    anim._ID13279["inform"]["suppressed"] = 0.2;
    anim._ID13279["inform"]["killfirm"] = 0.7;
    anim._ID13279["custom"]["generic"] = 1.0;
    anim._ID13278["threat"]["infantry"] = 1000;
    anim._ID13278["threat"]["vehicle"] = 1000;
    anim._ID13278["response"]["exposed"] = 2000;
    anim._ID13278["response"]["callout"] = 2000;
    anim._ID13278["response"]["echo"] = 2000;
    anim._ID13278["response"]["ack"] = 1750;
    anim._ID13278["reaction"]["casualty"] = 2000;
    anim._ID13278["reaction"]["friendlyfire"] = 1000;
    anim._ID13278["reaction"]["taunt"] = 2000;
    anim._ID13278["order"]["action"] = 3000;
    anim._ID13278["order"]["move"] = 3000;
    anim._ID13278["order"]["displace"] = 3000;
    anim._ID13278["inform"]["attack"] = 1000;
    anim._ID13278["inform"]["incoming"] = 1500;
    anim._ID13278["inform"]["reloading"] = 1000;
    anim._ID13278["inform"]["suppressed"] = 2000;
    anim._ID13278["inform"]["killfirm"] = 2000;
    anim._ID13278["custom"]["generic"] = 1000;
    anim._ID13277["response"]["exposed"] = 75;
    anim._ID13277["response"]["reload"] = 65;
    anim._ID13277["response"]["callout"] = 75;
    anim._ID13277["response"]["callout_negative"] = 20;
    anim._ID13277["response"]["order"] = 40;
    anim._ID13277["moveEvent"]["coverme"] = 70;
    anim._ID13277["moveEvent"]["ordertoplayer"] = 10;
    anim._ID13981 = 620;
    anim._ID13987 = 12;
    anim._ID13986 = 24;
    anim._ID13985 = 2;
    anim._ID13984 = 5;
    anim._ID51452 = 0;
    anim._ID24422 = _func_06A( "script_origin", ( 0, 0, 0 ) );

    if ( !_func_02F( level._ID46718 ) )
        level._ID46718 = 1500;

    if ( !_func_02F( level._ID47738 ) )
        level._ID47738 = 2500;

    _ID51329::_ID4940();
    anim._ID22527 = [];
    anim._ID31554 = 4000;
    anim._ID4951 = 3000;
    anim._ID35532[anim._ID35532.size] = ::_unknown_138C;
    anim._ID35533[anim._ID35533.size] = "::init_squadBattleChatter";
    var_0 = anim._ID37379;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        anim._ID20947[var_1] = 0;
        anim._ID20946[var_1]["threat"] = 0;
        anim._ID20946[var_1]["order"] = 0;
        anim._ID20946[var_1]["reaction"] = 0;
        anim._ID20946[var_1]["response"] = 0;
        anim._ID20946[var_1]["inform"] = 0;
        anim._ID20946[var_1]["custom"] = 0;
    }

    var_clear_2
    var_clear_0
    _unknown_1364();

    if ( !_func_02F( anim._ID14546 ) )
    {
        anim._ID14546 = [];
        anim._ID14546["american"] = 1;
        anim._ID14546["shadowcompany"] = 1;
        anim._ID14546["seal"] = 0;
        anim._ID14546["taskforce"] = 0;
        anim._ID14546["secretservice"] = 0;
        anim._ID14546["british"] = 0;
    }

    _unknown_13B5();
    anim._ID22021 = [];
    anim._ID21955 = [];
    anim._ID21956 = [];
    var_3 = anim._ID37379;

    for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
    {
        var_1 = var_3[var_4];
        anim._ID22021[var_1] = -50000;
        anim._ID21955[var_1] = "none";
        anim._ID21956[var_1] = -100000;
    }

    var_clear_1
    var_clear_0
    anim._ID21957 = 10000;

    for ( var_5 = 0; var_5 < anim._ID35537.size; var_5++ )
    {
        if ( _func_02F( anim._ID35537[var_5]._ID7336 ) && anim._ID35537[var_5]._ID7336 )
            continue;

        anim._ID35537[var_5] _unknown_14A5();
    }

    anim._ID37674 = [];
    anim._ID37674["rpg"] = 100;
    anim._ID37674["exposed"] = 25;
    anim._ID37674["player_obvious"] = 40;
    anim._ID37674["player_yourclock"] = 30;
    anim._ID37674["player_contact_clock"] = 25;
    anim._ID37674["player_target_clock"] = 25;
    anim._ID37674["player_cardinal"] = 20;
    anim._ID37674["ai_yourclock"] = 25;
    anim._ID37674["ai_contact_clock"] = 20;
    anim._ID37674["ai_target_clock"] = 20;
    anim._ID37674["ai_cardinal"] = 10;
    anim._ID37674["player_location"] = 95;
    anim._ID37674["ai_location"] = 100;
    anim._ID37674["generic_location"] = 90;
    anim._ID22022 = [];
    anim._ID22023 = [];
    var_6 = anim._ID37379;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_1 = var_6[var_7];
        anim._ID22022[var_1] = undefined;
        anim._ID22023[var_1] = undefined;
    }

    var_clear_1
    var_clear_0
    anim._ID37383 = 20000;
    level notify( "battlechatter initialized" );
    anim notify( "battlechatter initialized" );
}

_ID4949()
{
    if ( !_func_02F( anim._ID37379 ) )
    {
        anim._ID37379 = [];
        anim._ID37379[anim._ID37379.size] = "axis";
        anim._ID37379[anim._ID37379.size] = "allies";
        anim._ID37379[anim._ID37379.size] = "team3";
        anim._ID37379[anim._ID37379.size] = "neutral";
    }
}

_ID4947()
{
    if ( !_func_02F( anim._ID8775 ) )
    {
        anim._ID8775["british"] = "UK";
        anim._ID8775["american"] = "US";
        anim._ID8775["seal"] = "NS";
        anim._ID8775["taskforce"] = "TF";
        anim._ID8775["secretservice"] = "SS";

        if ( _ID42237::_ID54738() == "LANGUAGE_RUSSIAN" || _ID42237::_ID54738() == "LANGUAGE_RUSSIAN_PARTIAL" )
            anim._ID8775["russian"] = "RUS";
        else
            anim._ID8775["russian"] = "RU";

        anim._ID8775["arab"] = "AB";
        anim._ID8775["german"] = "GE";
        anim._ID8775["spanish"] = "SP";
        anim._ID8775["italian"] = "IT";
        anim._ID8775["portuguese"] = "PG";
        anim._ID8775["shadowcompany"] = "SC";
    }
}

_ID4946()
{
    _unknown_156D();

    if ( !_func_02F( level._ID4912 ) )
    {
        level._ID4912 = [];
        var_0 = anim._ID37379;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            _ID42407::_ID32227( var_1, 1 );
        }

        var_clear_2
        var_clear_0
    }
}

_ID4948()
{
    _unknown_15A0();

    if ( !_func_02F( level._ID14542 ) )
    {
        level._ID14542 = [];
        var_0 = anim._ID37379;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            level._ID14542[var_1] = 1;
        }

        var_clear_2
        var_clear_0
    }
}

_ID19701()
{
    anim._ID14542["american"] = [];
    var_0 = 41;
    var_1 = [];

    if ( level._ID912 == "roadkill" || level._ID912 == "trainer" )
    {
        var_1[var_1.size] = 13;
        var_1[var_1.size] = 15;
        var_1[var_1.size] = 16;
        var_1[var_1.size] = 19;
        var_1[var_1.size] = 20;
        var_1[var_1.size] = 30;
        var_1[var_1.size] = 31;
        var_1[var_1.size] = 33;
        var_1[var_1.size] = 38;
    }

    for ( var_2 = 0; var_2 < var_0; var_2++ )
    {
        if ( var_1.size )
        {
            var_3 = 0;
            var_4 = var_1;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];

                if ( var_5 == var_2 )
                {
                    var_3 = 1;
                    break;
                }
            }

            var_clear_2
            var_clear_0

            if ( var_3 )
                continue;
        }

        anim._ID14542["american"][var_2] = _ID42407::_ID36694( var_2 + 1 );
    }

    anim._ID14542["shadowcompany"] = [];
    var_0 = 9;

    for ( var_2 = 1; var_2 <= var_0; var_2++ )
        anim._ID14542["shadowcompany"][var_2] = _ID42407::_ID36694( var_2 + 1 );

    anim._ID14545 = [];
}

_ID34126()
{
    anim._ID8775 = undefined;
    anim._ID13281 = undefined;
    anim._ID13276 = undefined;
    anim._ID13281 = undefined;
    anim._ID13279 = undefined;
    anim._ID13278 = undefined;
    anim._ID24422 = undefined;
    anim._ID31554 = undefined;
    anim._ID4951 = undefined;
    anim._ID22527 = undefined;
    anim._ID39932 = undefined;
    anim._ID14545 = undefined;
    anim._ID22022 = undefined;
    anim._ID22023 = undefined;
    anim._ID21957 = undefined;
    anim._ID21955 = undefined;
    anim._ID21956 = undefined;
    anim._ID7336 = 0;
    anim._ID794._ID7336 = 0;
    level._ID4912 = undefined;

    for ( var_0 = 0; var_0 < anim._ID35532.size; var_0++ )
    {
        if ( anim._ID35533[var_0] != "::init_squadBattleChatter" )
            continue;

        if ( var_0 != anim._ID35532.size - 1 )
        {
            anim._ID35532[var_0] = anim._ID35532[anim._ID35532.size - 1];
            anim._ID35533[var_0] = anim._ID35533[anim._ID35533.size - 1];
        }

        anim._ID35532[anim._ID35532.size - 1] = undefined;
        anim._ID35533[anim._ID35533.size - 1] = undefined;
    }

    level notify( "battlechatter disabled" );
    anim notify( "battlechatter disabled" );
}

_ID19809()
{
    var_0 = self;
    var_0._ID25265 = 0;
    var_0._ID23127 = 1;
    var_0._ID24797 = _func_03D() + 50;
    var_0._ID24798["threat"] = _func_03D() + 50;
    var_0._ID24798["order"] = _func_03D() + 50;
    var_0._ID24798["reaction"] = _func_03D() + 50;
    var_0._ID24798["response"] = _func_03D() + 50;
    var_0._ID24798["inform"] = _func_03D() + 50;
    var_0._ID24798["custom"] = _func_03D() + 50;
    var_0._ID24802["threat"] = [];
    var_0._ID24802["order"] = [];
    var_0._ID24802["reaction"] = [];
    var_0._ID24802["response"] = [];
    var_0._ID24802["inform"] = [];
    var_0._ID24802["custom"] = [];
    var_0._ID20820["threat"] = 0;
    var_0._ID20820["order"] = 0;
    var_0._ID20820["reaction"] = 0;
    var_0._ID20820["response"] = 0;
    var_0._ID20820["inform"] = 0;
    var_0._ID20820["custom"] = 0;
    var_0._ID21912 = "";
    var_0._ID23456[var_0._ID23456.size] = animscripts\battlechatter_ai::_ID2131;
    var_0._ID23457[var_0._ID23457.size] = "::addToSystem";
    var_0._ID23463[var_0._ID23463.size] = animscripts\battlechatter_ai::_ID29617;
    var_0._ID23464[var_0._ID23464.size] = "::removeFromSystem";
    var_0._ID35548[var_0._ID35548.size] = ::_unknown_2658;
    var_0._ID35549[var_0._ID35549.size] = "::initContact";
    var_0._ID13982 = 1;
    var_0._ID13983 = undefined;

    for ( var_1 = 0; var_1 < anim._ID35537.size; var_1++ )
        var_0 thread _unknown_268D( anim._ID35537[var_1]._ID1010 );

    var_0 thread animscripts\battlechatter_ai::_ID35546();
    var_0 thread animscripts\battlechatter_ai::_ID35542();
    var_0 thread _unknown_26FE();
    var_0._ID7336 = 1;
    var_0 notify( "squad chat initialized" );
}

_ID34129()
{
    var_0 = self;
    var_0._ID25265 = undefined;
    var_0._ID23127 = undefined;
    var_0._ID24797 = undefined;
    var_0._ID24798 = undefined;
    var_0._ID24802 = undefined;
    var_0._ID20820 = undefined;
    var_0._ID13982 = undefined;
    var_0._ID13983 = undefined;

    for ( var_1 = 0; var_1 < var_0._ID23456.size; var_1++ )
    {
        if ( var_0._ID23457[var_1] != "::addToSystem" )
            continue;

        if ( var_1 != var_0._ID23456.size - 1 )
        {
            var_0._ID23456[var_1] = var_0._ID23456[var_0._ID23456.size - 1];
            var_0._ID23457[var_1] = var_0._ID23457[var_0._ID23457.size - 1];
        }

        var_0._ID23456[var_0._ID23456.size - 1] = undefined;
        var_0._ID23457[var_0._ID23457.size - 1] = undefined;
    }

    for ( var_1 = 0; var_1 < var_0._ID23463.size; var_1++ )
    {
        if ( var_0._ID23464[var_1] != "::removeFromSystem" )
            continue;

        if ( var_1 != var_0._ID23463.size - 1 )
        {
            var_0._ID23463[var_1] = var_0._ID23463[var_0._ID23463.size - 1];
            var_0._ID23464[var_1] = var_0._ID23464[var_0._ID23464.size - 1];
        }

        var_0._ID23463[var_0._ID23463.size - 1] = undefined;
        var_0._ID23464[var_0._ID23464.size - 1] = undefined;
    }

    for ( var_1 = 0; var_1 < var_0._ID35548.size; var_1++ )
    {
        if ( var_0._ID35549[var_1] != "::initContact" )
            continue;

        if ( var_1 != var_0._ID35548.size - 1 )
        {
            var_0._ID35548[var_1] = var_0._ID35548[var_0._ID35548.size - 1];
            var_0._ID35549[var_1] = var_0._ID35549[var_0._ID35549.size - 1];
        }

        var_0._ID35548[var_0._ID35548.size - 1] = undefined;
        var_0._ID35549[var_0._ID35549.size - 1] = undefined;
    }

    for ( var_1 = 0; var_1 < anim._ID35537.size; var_1++ )
        var_0 _unknown_281F( anim._ID35537[var_1]._ID1010 );

    var_0._ID7336 = 0;
}

_ID4954()
{
    return anim._ID7336;
}

_ID4953()
{
    var_0 = _func_039( "bcs_enable", "on" );

    for (;;)
    {
        var_1 = _func_039( "bcs_enable", "on" );

        if ( var_1 != var_0 )
        {
            switch ( var_1 )
            {

            }

            var_0 = var_1;
        }

        wait 1.0;
        case "on":
        case "off":
    }
}

_ID12556()
{
    _unknown_1542();
    anim._ID794 thread animscripts\battlechatter_ai::_ID2131();
    var_0 = _func_0DE();

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] animscripts\battlechatter_ai::_ID2131();
}

_ID11001()
{
    _unknown_1B37();
    var_0 = _func_0DE();

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( _func_02F( var_0[var_1]._ID35507 ) && var_0[var_1]._ID35507._ID7336 )
            var_0[var_1]._ID35507 _unknown_1C11();

        var_0[var_1] animscripts\battlechatter_ai::_ID29617();
    }
}

_ID32743( var_0, var_1 )
{
    if ( _func_02F( var_0 ) && _func_02F( var_1 ) )
    {
        level._ID794._ID4934 = var_0;
        level._ID794._ID45047 = var_1;
        return;
    }

    while ( !_func_02F( level._ID6720 ) )
        wait 0.1;

    var_2 = level._ID6720;
    var_3 = anim._ID27938[var_2];
    var_4 = anim._ID8775[var_2];

    if ( _func_02F( var_3 ) )
        level._ID794._ID4934 = var_3;

    if ( _func_02F( var_4 ) )
        level._ID794._ID45047 = var_4;
}

_ID27185()
{
    if ( !_func_1A7( self ) )
        return;

    if ( !_unknown_1CF1() )
        return;

    if ( _func_1FB() )
        return;

    if ( self._ID1363 > 0 )
        return;

    if ( _func_02F( self._ID20918 ) && self._ID20918 )
        return;

    if ( self._ID1194 == "allies" && _func_02F( anim._ID31555 ) )
    {
        if ( anim._ID31555 + anim._ID31554 > _func_03D() )
            return;
    }

    if ( _unknown_2B5D() )
        return;

    if ( !_func_02F( self._ID4912 ) || !self._ID4912 )
        return;

    if ( self._ID1194 == "allies" && _func_03A( "bcs_forceEnglish", 0 ) )
        return;

    if ( anim._ID20947[self._ID1194] )
        return;

    self endon( "death" );
    var_0 = _unknown_247C();

    if ( !_func_02F( var_0 ) )
        return;

    switch ( var_0 )
    {

    }

    case "custom":
    case "response":
    case "inform":
    case "order":
    case "threat":
    case "reaction":
}

_ID28134()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self endon( "cancel speaking" );
    self._ID9416 = self._ID7337["threat"];
    var_0 = self._ID7337["threat"]._ID37658;

    if ( !_func_1A7( var_0 ) )
        return;

    if ( _unknown_1EE3( var_0 ) && !_func_1B3( var_0 ) )
        return;

    anim thread _unknown_244D( self, "threat" );
    var_1 = 0;

    switch ( self._ID7337["threat"]._ID13280 )
    {

    }

    self notify( "done speaking" );

    if ( !var_1 )
        return;

    if ( !_func_1A7( var_0 ) )
        return;

    var_0._ID6666[self._ID35507._ID1010] = _func_1A5();
    var_0._ID6666[self._ID35507._ID1010]._ID35482 = self;
    var_0._ID6666[self._ID35507._ID1010]._ID37686 = self._ID7337["threat"]._ID13280;
    var_0._ID6666[self._ID35507._ID1010]._ID13599 = _func_03D() + anim._ID4951;

    if ( _func_02F( var_0._ID35507 ) )
    {
        self._ID35507._ID35539[var_0._ID35507._ID1010]._ID6666 = 1;
        return;
        case "vehicle":
        case "infantry":
        case "dog":
    }
}

_ID37687( var_0 )
{
    if ( _func_02F( var_0._ID6666 ) && _func_02F( var_0._ID6666[self._ID35507._ID1010] ) )
    {
        if ( var_0._ID6666[self._ID35507._ID1010]._ID13599 < _func_03D() )
            return 1;
    }

    return 0;
}

_ID37678( var_0, var_1 )
{
    self endon( "cancel speaking" );
    var_2 = _unknown_2B5D();
    var_2._ID23003 = 1;
    var_2._ID37677 = var_0;
    var_3 = _unknown_219F( var_0 );

    if ( !_func_02F( var_3 ) || _func_02F( var_3 ) && !_func_02F( var_3._ID1244 ) )
        return 0;

    switch ( var_3._ID1244 )
    {

    }

    _unknown_2677( var_3._ID1244 );
    _unknown_2897( var_2 );
    return 1;
    case "generic_location":
    case "ai_location":
    case "player_location":
    case "ai_cardinal":
    case "ai_target_clock":
    case "ai_contact_clock":
    case "player_cardinal":
    case "player_target_clock":
    case "player_contact_clock":
    case "player_yourclock":
    case "player_obvious":
    case "exposed":
    case "rpg":
}

_ID11326( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( var_0._ID8774 != "US" && var_0._ID8774 != "NS" && var_0._ID8774 != "TF" )
        return 0;

    if ( _func_0B7( 100 ) > anim._ID13277["response"]["exposed"] )
        return 0;

    return 1;
}

_ID37679( var_0, var_1, var_2 )
{
    var_3 = _unknown_2EE7( var_0._ID22519 );
    return var_3;
}

_ID2001( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1._ID29823 ) )
        return;

    if ( _func_0B7( 100 ) > anim._ID13277["response"]["callout"] )
        return;

    var_3 = "affirm";

    if ( !var_1._ID29823 _meth_81CA( var_2 ) && _func_0B7( 100 ) < anim._ID13277["response"]["callout_negative"] )
        var_3 = "neg";

    var_1._ID29823 animscripts\battlechatter_ai::_ID2089( "callout", var_3, var_0, 0.9 );
}

_ID16679( var_0 )
{
    var_1 = var_0 _unknown_2C85();
    var_2 = _unknown_2DA6( self._ID65, self._ID740, var_0._ID740 );
    var_3 = _unknown_2C75( 64, 1024, "response" );
    var_4 = undefined;

    if ( _func_02F( var_3 ) )
        var_4 = _unknown_2DCA( var_3._ID65, var_3._ID740, var_0._ID740 );

    var_5 = 0;

    if ( self._ID1194 == level._ID794._ID1194 )
        var_5 = _ID42407::_ID27291( var_0 );

    var_6 = level._ID794 _unknown_3062( var_0._ID740 );
    var_7 = level._ID794 _unknown_3075( var_0 );
    var_8 = _unknown_2E03( level._ID794._ID65, level._ID794._ID740, var_0._ID740 );
    self._ID28266 = [];

    if ( !_func_1B3( var_0 ) && var_0 animscripts\utility::_ID39993() )
        _unknown_2790( "rpg" );

    if ( var_0 _unknown_2C7B() )
        _unknown_27A0( "exposed" );

    if ( var_7 && _unknown_2EE8() )
    {
        if ( var_8 == "11" || var_8 == "12" || var_8 == "1" )
        {
            if ( var_5 )
                _unknown_27CC( "player_obvious" );
        }
        else
        {
            _unknown_27D8( "player_yourclock" );
            _unknown_27E0( "player_contact_clock" );
            _unknown_27E9( "player_target_clock" );
            _unknown_27F1( "player_cardinal" );
        }
    }

    if ( _func_02F( var_3 ) && _unknown_2F18( var_3 ) )
        _unknown_2806( "ai_yourclock" );

    if ( _unknown_2D27() || var_2 != "12" )
    {
        _unknown_281C( "ai_contact_clock" );
        _unknown_2825( "ai_target_clock" );
    }

    _unknown_282D( "ai_cardinal" );

    if ( _func_02F( var_1 ) )
    {
        var_9 = var_1 _unknown_2805( self );

        if ( _func_02F( var_9 ) )
        {
            if ( _func_02F( var_3 ) )
                _unknown_284E( "ai_location" );
            else
            {
                if ( _unknown_2F97() )
                    _unknown_285F( "player_location" );

                _unknown_2867( "generic_location" );
            }
        }
        else
        {
            if ( _func_02F( var_3 ) )
                _unknown_2879( "ai_location" );

            if ( _unknown_2FBF() )
                _unknown_2887( "player_location" );

            _unknown_288F( "generic_location" );
        }
    }

    if ( !self._ID28266.size )
        return undefined;

    var_11 = _unknown_28CF( self._ID28266, anim._ID37674 );
    var_12 = _func_1A5();
    var_12._ID1244 = var_11;
    var_12._ID29823 = var_3;
    var_12._ID29824 = var_4;
    var_12._ID27775 = var_8;

    if ( _func_02F( var_1 ) )
        var_12._ID22519 = var_1;

    return var_12;
}

_ID16167( var_0 )
{
    var_1 = undefined;
    var_2 = self._ID22526;
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _unknown_28CE( var_4, var_0 ) && !_func_02F( self._ID28790 ) )
        {
            var_1 = var_4;
            break;
        }

        if ( _unknown_28E0( var_4 ) )
            var_1 = var_4;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID20696( var_0 )
{
    return _func_125( var_0, "_report" );
}

_ID20695( var_0, var_1 )
{
    if ( _func_125( var_0, "_qa" ) && _func_1D0( var_0 ) )
        return 1;

    var_2 = var_1 _unknown_2925( var_0, 0 );

    if ( _func_1D0( var_2 ) )
        return 1;

    return 0;
}

_ID16546( var_0, var_1 )
{
    var_2 = self._ID8774 + "_" + self._ID25173 + "_co_";
    var_2 += var_0;
    var_2 += "_qa" + var_1;
    return var_2;
}

_ID1995( var_0 )
{
    self._ID2727[self._ID2727.size] = var_0;
}

_ID2082( var_0 )
{
    var_1 = 0;
    var_2 = self._ID2727;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == var_0 )
        {
            if ( !_unknown_299E( var_0 ) )
                var_1 = 1;

            break;
        }
    }

    var_clear_2
    var_clear_0

    if ( !var_1 )
        return;

    self._ID28266[self._ID28266.size] = var_0;
}

_ID6669( var_0 )
{
    if ( !_func_02F( anim._ID22022[self._ID1194] ) )
        return 0;

    if ( !_func_02F( anim._ID22023[self._ID1194] ) )
        return 0;

    var_1 = anim._ID22022[self._ID1194];
    var_2 = anim._ID22023[self._ID1194];
    var_3 = anim._ID37383;

    if ( var_0 == var_1 && _func_03D() - var_2 < var_3 )
        return 1;

    return 0;
}

_ID32672( var_0 )
{
    anim._ID22022[self._ID1194] = var_0;
    anim._ID22023[self._ID1194] = _func_03D();
}

_ID16753( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = -1;
    var_4 = var_0;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];

        if ( var_1[var_5] <= 0 )
            continue;

        var_6 = _func_0B7( var_1[var_5] );

        if ( _func_02F( var_2 ) && var_1[var_2] >= 100 )
        {
            if ( var_1[var_5] < 100 )
                continue;

            continue;
        }

        if ( var_1[var_5] >= 100 )
        {
            var_2 = var_5;
            var_3 = var_6;
            continue;
        }

        if ( var_6 > var_3 )
        {
            var_2 = var_5;
            var_3 = var_6;
        }
    }

    var_clear_3
    var_clear_0
    return var_2;
}

_ID37676( var_0, var_1 )
{
    self endon( "cancel speaking" );
    var_2 = _unknown_336D();
    var_2._ID23003 = 1;
    var_2._ID37677 = var_0;
    var_2 _unknown_31FF( "dog", "generic" );
    _unknown_2CCC( var_2 );
    return 1;
}

_ID37680( var_0 )
{
    var_1 = [];
    var_1 = _ID42237::_ID3293( var_1, "open" );
    var_1 = _ID42237::_ID3293( var_1, "breaking" );

    if ( self._ID743._ID1194 == "allies" && self._ID743._ID8774 != "RU" && self._ID743._ID8774 != "RUS" )
    {
        var_1 = _ID42237::_ID3293( var_1, "oscarmike" );
        var_1 = _ID42237::_ID3293( var_1, "movement" );
    }

    var_2 = var_1[_func_0B7( var_1.size )];
    _unknown_3272( var_2 );
}

_ID37681( var_0 )
{
    _unknown_326C( "rpg" );
}

_ID28117()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self._ID9416 = self._ID7337["reaction"];
    var_0 = self._ID7337["reaction"]._ID29138;
    var_1 = self._ID7337["reaction"]._ID23882;
    anim thread _unknown_2E0F( self, "reaction" );

    switch ( self._ID7337["reaction"]._ID13280 )
    {

    }

    self notify( "done speaking" );
    case "taunt":
    case "friendlyfire":
    case "casualty":
}

_ID29067( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _unknown_347E();
    var_2 _unknown_341A( "casualty", "generic" );
    _ID29834( var_2 );
}

_ID29071( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _unknown_34A3();

    if ( _func_02F( var_1 ) && var_1 == "hostileburst" )
        var_2 _unknown_346B();
    else
        var_2 _unknown_346F( "taunt", "generic" );

    _unknown_2E0E( var_2 );
}

_ID29068( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _unknown_34DF();
    var_2 _unknown_3482();
    _unknown_2E2C( var_2 );
}

_ID28118()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self._ID9416 = self._ID7337["response"];
    var_0 = self._ID7337["response"]._ID23882;
    var_1 = self._ID7337["response"]._ID29825;

    if ( !_func_1A7( var_1 ) )
        return;

    if ( self._ID7337["response"]._ID23882 == "follow" && self._ID7._ID36185 != "move" )
        return;

    anim thread _unknown_2F2B( self, "response" );

    switch ( self._ID7337["response"]._ID13280 )
    {

    }

    self notify( "done speaking" );
    case "callout":
    case "ack":
    case "exposed":
}

_ID29835( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !_func_1A7( var_0 ) )
        return;

    var_2 = _unknown_359F();
    var_2 _unknown_3430( var_1 );
    var_2._ID606 = var_0;
    var_2._ID23003 = 1;
    _unknown_2EF8( var_2 );
}

_ID29834( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !_func_1A7( var_0 ) )
        return;

    var_2 = _unknown_35CF();
    var_3 = 0;

    if ( var_1 == "echo" )
        var_3 = var_2 _unknown_3486( self._ID9416._ID29704, var_0 );
    else if ( var_1 == "QA" )
        var_3 = var_2 _unknown_34BA( var_0, self._ID9416._ID29704, self._ID9416._ID22519 );
    else
        var_3 = var_2 _unknown_34B5( var_1 );

    if ( !var_3 )
        return;

    var_2._ID606 = var_0;
    var_2._ID23003 = 1;
    _unknown_2F60( var_2 );
}

_ID29832( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !_func_1A7( var_0 ) )
        return;

    var_2 = self._ID7337["response"]._ID13280;
    var_3 = _unknown_3643();
    var_3 _unknown_35CA( var_2, var_1 );
    var_3._ID606 = var_0;
    var_3._ID23003 = 1;
    _unknown_2F9C( var_3 );
}

_ID28111()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self._ID9416 = self._ID7337["order"];
    var_0 = self._ID7337["order"]._ID23882;
    var_1 = self._ID7337["order"]._ID25987;
    anim thread _unknown_3077( self, "order" );

    switch ( self._ID7337["order"]._ID13280 )
    {

    }

    self notify( "done speaking" );
    case "displace":
    case "action":
    case "move":
}

_ID25983( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _unknown_36E5();
    _unknown_2F88( var_2, var_1 );
    var_2 _unknown_36B4( "action", var_0 );
    _unknown_303C( var_2 );
}

_ID25985( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _unknown_370D();
    _unknown_2FB0( var_2, var_1 );
    var_2 _unknown_36DD( "move", var_0 );
    _unknown_3065( var_2 );
}

_ID25984( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _unknown_3734();
    var_1 _unknown_36FE( "displace", var_0 );
    _unknown_3087( var_1, 1 );
}

_ID39077( var_0, var_1 )
{
    if ( _func_0B7( 100 ) > anim._ID13277["response"]["order"] )
    {
        if ( !_func_02F( var_1 ) || _func_02F( var_1 ) && !_func_1B3( var_1 ) )
        {

        }
    }
    else if ( _func_02F( var_1 ) && _func_1B3( var_1 ) && _func_02F( level._ID794._ID4934 ) )
    {
        var_0 _unknown_3585();
        var_0._ID606 = level._ID794;
    }
    else
    {
        if ( _func_02F( var_1 ) && _unknown_35B7( var_1 ) )
        {
            var_0 _unknown_3591( var_1._ID4933 );
            var_0._ID606 = var_1;
            var_1 animscripts\battlechatter_ai::_ID2089( "ack", "yes", self, 0.9 );
            return;
        }

        level notify( "follow order",  self  );
    }
}

_ID28082()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self._ID9416 = self._ID7337["inform"];
    var_0 = self._ID7337["inform"]._ID23882;
    anim thread _unknown_31D8( self, "inform" );

    switch ( self._ID7337["inform"]._ID13280 )
    {

    }

    self notify( "done speaking" );
    case "suppressed":
    case "reloading":
    case "killfirm":
    case "attack":
}

_ID19559( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _unknown_3860();
    var_1 _unknown_37DC( "reloading", var_0 );
    _unknown_31B1( var_1 );
}

_ID19560( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _unknown_3881();
    var_1 _unknown_37FD( "suppressed", var_0 );
    _unknown_31D2( var_1 );
}

_ID19557( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _unknown_38A2();

    if ( var_0 == "grenade" )
        var_1._ID23003 = 1;

    var_1 _unknown_382C( "incoming", var_0 );
    _unknown_3200( var_1 );
}

_ID19556( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _unknown_38D0();
    var_1 _unknown_384D( "attack", var_0 );
    _unknown_3221( var_1 );
}

_ID19558( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _unknown_38F1();
    var_1 _unknown_386E( "killfirm", var_0 );
    _unknown_3242( var_1 );
}

_ID27198()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self._ID9416 = self._ID7337["custom"];
    anim thread _unknown_330A( self, self._ID9416._ID1244, 1 );
    _unknown_326B( self._ID9563 );
    self notify( "done speaking" );
    self._ID9562 = undefined;
    self._ID9563 = undefined;
}

_ID28115( var_0, var_1 )
{
    anim endon( "battlechatter disabled" );
    self endon( "death" );

    if ( _func_02F( var_1 ) )
        return;

    if ( _func_02F( level._ID1644 ) && _unknown_3B12() )
    {
        for ( var_2 = 0; var_2 < var_0._ID34988.size; var_2++ )
            var_0._ID34988[var_2] = var_0._ID34988[var_2] + "_s";
    }

    if ( _unknown_3AA9() || _unknown_3AAF() )
    {
        var_3 = [];
        var_4 = var_0._ID34988;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_3[var_3.size] = var_5;
        }

        var_clear_2
        var_clear_0

        if ( _unknown_3AD8() )
            _unknown_3AE1( var_3 );

        if ( _unknown_3AE4() )
        {
            var_7 = self._ID9416._ID13275 + "_" + self._ID9416._ID13280;

            if ( _func_02F( self._ID9416._ID23882 ) )
                var_7 += "_" + self._ID9416._ID23882;

            thread _unknown_3B25( var_3, var_7 );
        }
    }

    for ( var_2 = 0; var_2 < var_0._ID34988.size; var_2++ )
    {
        if ( !self._ID4912 )
        {
            if ( !_unknown_33C2( self._ID9416 ) )
                continue;
            else if ( !_unknown_3BE3( 0 ) )
                continue;
        }

        if ( self._ID1363 > 0 )
            continue;

        if ( _unknown_35C1( self._ID9416._ID13275 ) )
        {
            wait 0.85;
            continue;
        }

        if ( !_func_1D0( var_0._ID34988[var_2] ) )
            continue;

        var_8 = _func_03D();

        if ( var_0._ID23003 && self._ID1194 == "allies" )
        {
            thread _ID42259::_ID3015( var_0._ID34988[var_2], var_0._ID606 );
            self _meth_8071( var_0._ID34988[var_2], var_0._ID34988[var_2], 1 );
            self waittill( var_0._ID34988[var_2] );
        }
        else
        {
            thread _ID42259::_ID3015( var_0._ID34988[var_2], var_0._ID606 );
            self _meth_8071( var_0._ID34988[var_2], var_0._ID34988[var_2], 1 );
            self waittill( var_0._ID34988[var_2] );
        }

        if ( _func_03D() < var_8 + 250 )
        {

        }
    }

    self notify( "playPhrase_done" );
    _unknown_368F( self._ID9416._ID13275, self._ID9416._ID13280 );
}

_ID20528( var_0 )
{
    if ( !_func_02F( var_0._ID13275 ) || !_func_02F( var_0._ID13280 ) )
        return 0;

    if ( var_0._ID13275 == "reaction" && var_0._ID13280 == "friendlyfire" )
        return 1;

    return 0;
}

_ID20919( var_0 )
{
    self endon( "death" );
    wait 25;
    _unknown_34D9( var_0 );
}

_ID7924( var_0 )
{
    self._ID20918 = 0;
    self._ID7337[var_0]._ID13599 = 0;
    self._ID7337[var_0]._ID28609 = 0.0;
    self._ID24798[var_0] = _func_03D() + anim._ID13276[var_0]["self"];
}

_ID22539( var_0, var_1, var_2 )
{
    anim endon( "battlechatter disabled" );
    var_3 = var_0._ID35507;
    var_4 = var_0._ID1194;
    var_0._ID20918 = 1;
    var_0 thread _unknown_351E( var_1 );
    var_3._ID20820[var_1] = 1;
    var_3._ID25265++;
    anim._ID20947[var_4] = 1;
    anim._ID20946[var_4][var_1] = 1;
    var_5 = var_0 _ID42237::_ID41075( "death", "done speaking", "cancel speaking" );
    var_3._ID20820[var_1] = 0;
    var_3._ID25265--;
    anim._ID20947[var_4] = 0;
    anim._ID20946[var_4][var_1] = 0;

    if ( var_5 == "cancel speaking" )
        return;

    anim._ID22021[var_4] = _func_03D();

    if ( _func_1A7( var_0 ) )
        var_0 _unknown_3582( var_1 );

    var_3._ID24798[var_1] = _func_03D() + anim._ID13276[var_1]["squad"];
}

_ID39693( var_0, var_1 )
{
    if ( _func_03D() - self._ID35539[var_0]._ID21903 > 10000 )
    {
        var_2 = 0;

        for ( var_3 = 0; var_3 < self._ID23465.size; var_3++ )
        {
            if ( self._ID23465[var_3] != var_1 && _func_1A7( self._ID23465[var_3]._ID322 ) && _func_02F( self._ID23465[var_3]._ID322._ID35507 ) && self._ID23465[var_3]._ID322._ID35507._ID1010 == var_0 )
                var_2 = 1;
        }

        if ( !var_2 )
        {
            self._ID35539[var_0]._ID14364 = _func_03D();
            self._ID35539[var_0]._ID6666 = 0;
        }
    }

    self._ID35539[var_0]._ID21903 = _func_03D();
}

_ID6880( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( _func_1B3( self ) )
        return 0;

    if ( _func_0F3( level._ID794._ID740, self._ID740 ) > level._ID46718 )
        return 0;

    if ( !_func_02F( self._ID4912 ) || !self._ID4912 )
        return 0;

    if ( _func_02F( var_2 ) && var_2 >= 1 )
        return 1;

    if ( _func_03D() + anim._ID13276[var_0]["self"] < self._ID24798[var_0] )
        return 0;

    if ( _func_03D() + anim._ID13276[var_0]["squad"] < self._ID35507._ID24798[var_0] )
        return 0;

    if ( _func_02F( var_1 ) && _unknown_386F( var_0, var_1 ) )
        return 0;

    if ( _func_02F( var_1 ) && anim._ID13279[var_0][var_1] < self._ID4944 )
        return 0;

    if ( _unknown_3E85() )
        return _unknown_3746( var_0, var_1, var_3 );

    return 1;
}

_ID46949( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = "";

    if ( !_func_02F( var_1 ) )
        return 0;

    switch ( var_0 )
    {

    }

    return 0;
    case "inform":
    case "order":
    case "threat":
    case "reaction":
    default:
}

_ID16330()
{
    var_0 = undefined;
    var_1 = -999999999;

    if ( _unknown_3954( "custom" ) )
    {
        var_0 = "custom";
        var_1 = self._ID7337["custom"]._ID28609;
    }

    if ( _unknown_396D( "response" ) )
    {
        if ( self._ID7337["response"]._ID28609 > var_1 )
        {
            var_0 = "response";
            var_1 = self._ID7337["response"]._ID28609;
        }
    }

    if ( _unknown_3994( "order" ) )
    {
        if ( self._ID7337["order"]._ID28609 > var_1 )
        {
            var_0 = "order";
            var_1 = self._ID7337["order"]._ID28609;
        }
    }

    if ( _unknown_39BB( "threat" ) )
    {
        if ( self._ID7337["threat"]._ID28609 > var_1 )
        {
            var_0 = "threat";
            var_1 = self._ID7337["threat"]._ID28609;
        }
    }

    if ( _unknown_39E2( "inform" ) )
    {
        if ( self._ID7337["inform"]._ID28609 > var_1 )
        {
            var_0 = "inform";
            var_1 = self._ID7337["inform"]._ID28609;
        }
    }

    if ( _unknown_3A09( "reaction" ) )
    {
        if ( self._ID7337["reaction"]._ID28609 > var_1 )
        {
            var_0 = "reaction";
            var_1 = self._ID7337["reaction"]._ID28609;
        }
    }

    return var_0;
}

_ID16651( var_0 )
{
    var_1 = self._ID35507;
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1._ID23465.size; var_3++ )
    {
        if ( _func_02F( var_1._ID23465[var_3]._ID322 ) && var_1._ID23465[var_3]._ID322 == var_0 )
            var_2[var_2.size] = var_1._ID23465[var_3];
    }

    if ( !_func_02F( var_2[0] ) )
        return undefined;

    var_4 = undefined;

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_2[var_3] _unknown_3916( "response" ) )
            return var_4;
    }

    return _ID42237::_ID16182( self._ID740, var_2 );
}

_ID16548()
{
    var_0 = [];
    var_1 = [];
    var_0[0] = "custom";
    var_0[1] = "response";
    var_0[2] = "order";
    var_0[3] = "threat";
    var_0[4] = "inform";

    for ( var_2 = var_0.size - 1; var_2 >= 0; var_2-- )
    {
        for ( var_3 = 1; var_3 <= var_2; var_3++ )
        {
            if ( self._ID7337[var_0[var_3 - 1]]._ID28609 < self._ID7337[var_0[var_3]]._ID28609 )
            {
                var_4 = var_0[var_3 - 1];
                var_0[var_3 - 1] = var_0[var_3];
                var_0[var_3] = var_4;
            }
        }
    }

    var_5 = 0;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_6 = _unknown_3AEA( var_0[var_2] );

        if ( var_6 == " valid" && !var_5 )
        {
            var_5 = 1;
            var_1[var_2] = "g " + var_0[var_2] + var_6 + " " + self._ID7337[var_0[var_2]]._ID28609;
            continue;
        }

        if ( var_6 == " valid" )
        {
            var_1[var_2] = "y " + var_0[var_2] + var_6 + " " + self._ID7337[var_0[var_2]]._ID28609;
            continue;
        }

        if ( self._ID7337[var_0[var_2]]._ID13599 == 0 )
        {
            var_1[var_2] = "b " + var_0[var_2] + var_6 + " " + self._ID7337[var_0[var_2]]._ID28609;
            continue;
        }

        var_1[var_2] = "r " + var_0[var_2] + var_6 + " " + self._ID7337[var_0[var_2]]._ID28609;
    }

    return var_1;
}

_ID16269( var_0 )
{
    var_1 = "";

    if ( self._ID35507._ID20820[var_0] )
        var_1 += " playing";

    if ( _func_03D() > self._ID7337[var_0]._ID13599 )
        var_1 += " expired";

    if ( _func_03D() < self._ID35507._ID24798[var_0] )
        var_1 += " cantspeak";

    if ( var_1 == "" )
        var_1 = " valid";

    return var_1;
}

_ID20744( var_0 )
{
    if ( _func_039( "bcs_filter" + var_0, "off" ) == "on" || _func_039( "bcs_filter" + var_0, "off" ) == "1" )
        return 1;

    return 0;
}

_ID20974( var_0 )
{
    if ( !self._ID35507._ID20820[var_0] && !anim._ID20946[self._ID1194][var_0] && _func_03D() < self._ID7337[var_0]._ID13599 && _func_03D() > self._ID35507._ID24798[var_0] )
    {
        if ( !_unknown_3C70( var_0, self._ID7337[var_0]._ID13280 ) )
            return 1;
    }

    return 0;
}

_ID39402( var_0, var_1 )
{
    if ( !_func_02F( anim._ID13281[var_0][var_1] ) )
        return 0;

    if ( !_func_02F( self._ID35507._ID24802[var_0][var_1] ) )
        return 0;

    if ( _func_03D() > self._ID35507._ID24802[var_0][var_1] )
        return 0;

    return 1;
}

_ID11662( var_0, var_1 )
{
    if ( !_func_02F( anim._ID13281[var_0][var_1] ) )
        return;

    self._ID35507._ID24802[var_0][var_1] = _func_03D() + anim._ID13281[var_0][var_1];
}

_ID4931()
{
    if ( _func_1B3( self ) )
        return 0;

    if ( _unknown_3CF2() )
        return 0;

    return animscripts\utility::_ID20911( self._ID1302 );
}

_ID20742()
{
    if ( _func_0F3( self._ID740, level._ID794._ID740 ) > 1500 )
        return 0;

    if ( _func_02F( _unknown_3DA7() ) )
        return 0;

    var_0 = _unknown_3D4E();

    if ( !_func_02F( var_0 ) )
        return 1;

    if ( !_unknown_3D37() )
        return 0;

    return 1;
}

_ID20832()
{
    var_0 = self._ID700;

    if ( !_func_02F( var_0 ) )
        return 0;

    if ( _func_125( var_0._ID1244, "Cover" ) || _func_125( var_0._ID1244, "Conceal" ) )
        return 1;

    return 0;
}

_ID35535( var_0 )
{
    if ( var_0._ID25463 > 0 )
        return 1;
    else
        return 0;
}

_ID20839()
{
    var_0 = _unknown_3DBB();

    if ( !_func_02F( var_0 ) )
        return 0;

    if ( var_0 == "sergeant" || var_0 == "lieutenant" || var_0 == "captain" || var_0 == "sergeant" )
        return 1;

    return 0;
}

_ID4929()
{
    if ( _func_1B3( self ) )
        return self._ID700;
    else
        return animscripts\utility::_ID16178();
}

_ID12941()
{
    if ( self _meth_8147() )
        return 1;
    else
        return 0;
}

_ID16435()
{
    if ( _unknown_3DED() )
        var_0 = self._ID2441;
    else if ( self._ID1194 == "allies" )
        var_0 = self._ID680;
    else
        var_0 = undefined;

    if ( !_func_02F( var_0 ) || _unknown_43B5() )
        return undefined;

    var_1 = _func_129( var_0, " " );

    if ( var_1.size < 2 )
        return var_0;

    return var_1[1];
}

_ID16556()
{
    return self._ID2453;
}

_ID16187( var_0 )
{
    var_1 = _unknown_3E5B( var_0, self._ID1194 );
    var_2 = _ID42237::_ID16182( self._ID740, var_1 );
    return var_2;
}

_ID16610( var_0, var_1 )
{
    var_2 = [];
    var_3 = _func_0DE( var_1 );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        if ( var_3[var_4] == self )
            continue;

        if ( !var_3[var_4] _unknown_3C8D( var_0 ) )
            continue;

        var_2[var_2.size] = var_3[var_4];
    }

    return var_2;
}

_ID16571( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( !_func_02F( var_2 ) )
        var_2 = "response";

    var_4 = _ID42237::_ID3320( self._ID35507._ID23465 );

    for ( var_5 = 0; var_5 < var_4.size; var_5++ )
    {
        if ( var_4[var_5] == self )
            continue;

        if ( !_func_1A7( var_4[var_5] ) )
            continue;

        if ( _func_0F3( self._ID740, var_4[var_5]._ID740 ) > var_0 && _func_0F3( self._ID740, var_4[var_5]._ID740 ) < var_1 && !_unknown_411D( var_4[var_5] ) && var_4[var_5] _unknown_3D05( var_2 ) )
        {
            var_3 = var_4[var_5];

            if ( _unknown_40EA( var_3 ) )
                break;
        }
    }

    return var_3;
}

_ID16397()
{
    var_0 = _unknown_3F75();
    var_0 = _ID42237::_ID3320( var_0 );

    if ( var_0.size )
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( !_unknown_3FB5( var_2 ) )
                return var_2;
        }

        var_clear_2
        var_clear_0
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];

            if ( !_unknown_3FDC( var_2 ) )
                return var_2;
        }

        var_clear_1
        var_clear_0
    }

    return undefined;
}

_ID15554()
{
    var_0 = anim._ID4941;
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( self _meth_80B0( var_3 ) && _func_02F( var_3._ID22526 ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID20543()
{
    var_0 = _unknown_4001();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_unknown_403F( var_2 ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID22522( var_0 )
{
    var_1 = _unknown_4067( var_0 );

    if ( !_func_02F( var_1 ) )
        return 0;

    return 1;
}

_ID22523( var_0 )
{
    var_1 = _unknown_4079( var_0 );

    if ( !_func_02F( var_1 ) )
        return 0;

    var_2 = var_1 + anim._ID13276["threat"]["location_repeat"];

    if ( _func_03D() < var_2 )
        return 1;

    return 0;
}

_ID22520( var_0 )
{
    anim._ID22527[var_0._ID170] = _func_03D();
}

_ID22525( var_0 )
{
    if ( _func_02F( anim._ID22527[var_0._ID170] ) )
        return anim._ID22527[var_0._ID170];

    return undefined;
}

_ID16567( var_0 )
{
    var_1 = var_0._ID65;

    if ( !_func_1B3( var_0 ) )
    {
        var_2 = var_0 _unknown_4018();

        if ( _func_02F( var_2 ) )
            var_1 = var_2._ID65;
    }

    return var_1;
}

_ID34145( var_0 )
{
    if ( var_0 == "left" || var_0 == "right" )
        return 1;

    return 0;
}

_ID16225( var_0, var_1, var_2 )
{
    var_3 = _func_11A( var_2 );
    var_4 = _func_11A( var_1 - var_0 );
    var_5 = var_3[1] - var_4[1];
    var_5 += 360;
    var_5 = _func_0C1( var_5 ) % 360;

    if ( var_5 > 315 || var_5 < 45 )
        var_6 = "front";
    else if ( var_5 < 135 )
        var_6 = "right";
    else if ( var_5 < 225 )
        var_6 = "rear";
    else
        var_6 = "left";

    return var_6;
}

_ID24932( var_0 )
{
    var_1 = undefined;

    switch ( var_0 )
    {

    }

    return var_1;
    case "east":
    case "southeast":
    case "south":
    case "southwest":
    case "west":
    case "northwest":
    case "north":
    case "impossible":
    default:
}

_ID16221( var_0, var_1 )
{
    var_2 = _func_11A( var_1 - var_0 );
    var_3 = var_2[1];
    var_4 = _func_096();
    var_3 -= var_4;

    if ( var_3 < 0 )
        var_3 += 360;
    else if ( var_3 > 360 )
        var_3 -= 360;

    if ( var_3 < 22.5 || var_3 > 337.5 )
        var_5 = "north";
    else if ( var_3 < 67.5 )
        var_5 = "northwest";
    else if ( var_3 < 112.5 )
        var_5 = "west";
    else if ( var_3 < 157.5 )
        var_5 = "southwest";
    else if ( var_3 < 202.5 )
        var_5 = "south";
    else if ( var_3 < 247.5 )
        var_5 = "southeast";
    else if ( var_3 < 292.5 )
        var_5 = "east";
    else if ( var_3 < 337.5 )
        var_5 = "northeast";
    else
        var_5 = "impossible";

    return var_5;
}

_ID16298( var_0 )
{
    var_1 = "undefined";

    if ( var_0 == "10" || var_0 == "11" )
        var_1 = "10";
    else if ( var_0 == "12" )
        var_1 = var_0;
    else if ( var_0 == "1" || var_0 == "2" )
        var_1 = "2";

    return var_1;
}

_ID16223( var_0, var_1, var_2 )
{
    var_3 = _func_11F( var_0 );
    var_4 = _func_119( var_3 );
    var_5 = _func_11A( var_4 );
    var_6 = _func_11A( var_2 - var_1 );
    var_7 = var_5[1] - var_6[1];
    var_7 += 360;
    var_7 = _func_0C1( var_7 ) % 360;

    if ( var_7 > 345 || var_7 < 15 )
        var_8 = "12";
    else if ( var_7 < 45 )
        var_8 = "1";
    else if ( var_7 < 75 )
        var_8 = "2";
    else if ( var_7 < 105 )
        var_8 = "3";
    else if ( var_7 < 135 )
        var_8 = "4";
    else if ( var_7 < 165 )
        var_8 = "5";
    else if ( var_7 < 195 )
        var_8 = "6";
    else if ( var_7 < 225 )
        var_8 = "7";
    else if ( var_7 < 255 )
        var_8 = "8";
    else if ( var_7 < 285 )
        var_8 = "9";
    else if ( var_7 < 315 )
        var_8 = "10";
    else
        var_8 = "11";

    return var_8;
}

_ID16725( var_0 )
{
    return ( var_0[1], 0 - var_0[0], var_0[2] );
}

_ID16724( var_0 )
{
    var_1 = ( 0, 0, 0 );

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_1 += var_0[var_2];

    return ( var_1[0] / var_0.size, var_1[1] / var_0.size, var_1[2] / var_0.size );
}

_ID2053( var_0 )
{
    self._ID34988[self._ID34988.size] = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_name_" + var_0;
    anim._ID21955[self._ID743._ID1194] = var_0;
    anim._ID21956[self._ID743._ID1194] = _func_03D();
}

_ID2080()
{
    if ( !self._ID743 _unknown_45A8() )
        return;

    anim._ID21966 = _func_03D();
    var_0 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_name_player_" + level._ID794._ID45047 + "_" + level._ID794._ID4934;
    self._ID34988[self._ID34988.size] = var_0;
    self._ID606 = level._ID794;
}

_ID2085( var_0 )
{
    self._ID34988[self._ID34988.size] = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_rank_" + var_0;
}

_ID6881( var_0 )
{
    if ( _unknown_43E3() )
        return 0;

    if ( !_func_02F( var_0._ID4933 ) )
        return 0;

    if ( !_func_02F( var_0._ID8774 ) )
        return 0;

    if ( self._ID8774 != var_0._ID8774 )
        return 0;

    if ( _unknown_4623( var_0 ) )
        return 0;

    var_1 = self._ID8774 + "_" + self._ID25173 + "_name_" + var_0._ID4933;

    if ( _func_1D0( var_1 ) )
        return 1;

    return 0;
}

_ID24652( var_0 )
{
    if ( anim._ID21955[self._ID1194] == var_0._ID4933 && _func_03D() - anim._ID21956[self._ID1194] < anim._ID21957 )
        return 1;

    return 0;
}

_ID6882()
{
    if ( _unknown_444F() )
        return 0;

    if ( !_func_02F( level._ID794._ID4934 ) || !_func_02F( level._ID794._ID45047 ) )
        return 0;

    if ( _unknown_46AD() )
        return 0;

    var_0 = self._ID8774 + "_" + self._ID25173 + "_name_player_" + level._ID794._ID45047 + "_" + level._ID794._ID4934;

    if ( _func_1D0( var_0 ) )
        return 1;

    return 0;
}

_ID27565()
{
    if ( !_func_02F( anim._ID21966 ) )
        return 0;

    if ( _func_03D() - anim._ID21966 >= anim._ID13281["playername"] )
        return 0;

    return 1;
}

_ID20967( var_0 )
{
    if ( _func_031( self._ID25173 ) && _func_031( var_0._ID25173 ) && self._ID25173 == var_0._ID25173 )
        return 1;
    else if ( !_func_031( self._ID25173 ) && !_func_031( var_0._ID25173 ) && self._ID25173 == var_0._ID25173 )
        return 1;
    else
        return 0;
}

_ID2106( var_0, var_1 )
{
    var_2 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_threat_" + var_0;

    if ( _func_02F( var_1 ) )
        var_2 += "_" + var_1;

    self._ID34988 = _ID42237::_ID3293( self._ID34988, var_2 );
    return 1;
}

_ID2116( var_0 )
{
    var_1 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_exposed_" + var_0;
    self._ID34988[self._ID34988.size] = var_1;
    return 1;
}

_ID2117()
{
    var_0 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_order_action_suppress";
    self._ID34988[self._ID34988.size] = var_0;
    return 1;
}

_ID2108( var_0, var_1 )
{
    var_2 = _unknown_485C( var_0, var_1 );

    if ( !_func_1D0( var_2 ) )
        return 0;

    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2112( var_0 )
{
    var_1 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_resp_ack_co_gnrc_" + var_0;

    if ( !_func_1D0( var_1 ) )
        return 0;

    self._ID34988[self._ID34988.size] = var_1;
    return 1;
}

_ID2111( var_0, var_1, var_2 )
{
    var_3 = undefined;
    var_4 = var_2._ID22526;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_125( var_1, var_5 ) )
        {
            var_3 = var_5;
            break;
        }
    }

    var_clear_2
    var_clear_0
    var_7 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_co_";
    var_8 = _func_127( var_1, var_1.size - 1, var_1.size );
    var_9 = _func_0C1( var_8 ) + 1;
    var_10 = var_7 + var_3 + "_qa" + var_9;

    if ( !_func_1D0( var_10 ) )
    {
        if ( _func_0B7( 100 ) < anim._ID13277["response"]["callout_negative"] )
            var_0 animscripts\battlechatter_ai::_ID2089( "callout", "neg", self._ID743, 0.9 );
        else
            var_0 animscripts\battlechatter_ai::_ID2089( "exposed", "acquired", self._ID743, 0.9 );

        var_2._ID28790 = 1;
        return 0;
    }

    var_0 animscripts\battlechatter_ai::_ID2089( "callout", "QA", self._ID743, 0.9, var_10, var_2 );
    self._ID34988[self._ID34988.size] = var_10;
    return 1;
}

_ID9213( var_0, var_1 )
{
    var_2 = "_report";
    var_3 = "_echo";
    var_4 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_";
    var_5 = var_0.size - var_2.size;
    var_6 = self._ID743._ID8774 + "_" + var_1._ID25173 + "_";
    var_7 = var_6.size;
    var_8 = _func_127( var_0, var_7, var_5 );
    var_9 = var_4 + var_8 + var_3;
    return var_9;
}

_ID2107( var_0, var_1 )
{
    var_2 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_callout_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2109( var_0, var_1, var_2 )
{
    var_3 = var_0._ID31267;

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    var_4 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_callout_obj_" + var_3;

    if ( var_2 )
        var_4 += "_y";

    var_4 += "_" + var_1;

    if ( !_func_1D0( var_4 ) )
        return 0;

    self._ID34988[self._ID34988.size] = var_4;
    return 1;
}

_ID2110( var_0 )
{
    var_1 = undefined;
    var_2 = var_0._ID22526;
    var_3 = var_2[0];

    if ( var_2.size > 1 )
    {
        var_4 = undefined;
        var_4 = var_0 _unknown_4215( self._ID743 );

        if ( _func_02F( var_4 ) )
            var_3 = var_4;
        else
            var_3 = _ID42237::_ID28945( var_2 );
    }

    var_5 = undefined;

    if ( !_func_02F( var_0._ID28790 ) && _unknown_4254( var_3, self._ID743 ) )
        var_5 = self._ID743 _unknown_426B( var_3, 0 );
    else
    {
        var_6 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_";

        if ( !_func_125( var_3, "callout" ) )
            var_6 += "co_";

        var_5 = var_6 + var_3;
    }

    if ( _func_1D0( var_5 ) )
        var_1 = var_5;

    if ( !_func_02F( var_1 ) )
        return 0;

    _unknown_4886( var_0 );
    self._ID34988[self._ID34988.size] = var_1;
    return 1;
}

_ID2025( var_0, var_1 )
{
    var_2 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_inform_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
}

_ID2088( var_0, var_1 )
{
    var_2 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_response_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2086( var_0, var_1 )
{
    var_2 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_reaction_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2010()
{
    var_0 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_check_fire";
    self._ID34988[self._ID34988.size] = var_0;
    return 1;
}

_ID2105( var_0, var_1 )
{
    var_2 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_taunt";
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2024()
{
    var_0 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_hostile_burst";
    self._ID34988[self._ID34988.size] = var_0;
    return 1;
}

_ID2077( var_0, var_1 )
{
    var_2 = self._ID743._ID8774 + "_" + self._ID743._ID25173 + "_order_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID19878( var_0 )
{
    if ( !_func_02F( self._ID35539[var_0]._ID6666 ) )
        self._ID35539[var_0]._ID6666 = 0;

    if ( !_func_02F( self._ID35539[var_0]._ID14364 ) )
        self._ID35539[var_0]._ID14364 = 2000000000;

    if ( !_func_02F( self._ID35539[var_0]._ID21903 ) )
        self._ID35539[var_0]._ID21903 = 0;
}

_ID34130( var_0 )
{
    self._ID35539[var_0]._ID6666 = undefined;
    self._ID35539[var_0]._ID14364 = undefined;
    self._ID35539[var_0]._ID21903 = undefined;
}

_ID9197( var_0, var_1, var_2 )
{
    var_3 = _func_1A5();
    var_3._ID743 = self;
    var_3._ID13280 = var_1;
    var_3._ID13275 = var_0;

    if ( _func_02F( var_2 ) )
        var_3._ID28609 = var_2;
    else
        var_3._ID28609 = anim._ID13279[var_0][var_1];

    var_3._ID13599 = _func_03D() + anim._ID13278[var_0][var_1];
    return var_3;
}

_ID9198()
{
    var_0 = _func_1A5();
    var_0._ID743 = self;
    var_0._ID34988 = [];
    var_0._ID23003 = 0;
    return var_0;
}

_ID28201( var_0 )
{
    var_1 = _func_11F( self._ID65 );
    var_2 = _func_119( var_0 - self._ID740 );
    var_3 = _func_0FB( var_1, var_2 );
    return var_3 > 0.766;
}

_ID13070( var_0 )
{
    var_1 = _unknown_4B3F( self._ID65, self._ID740, var_0._ID740 );

    if ( var_1 == "9" || var_1 == "10" || var_1 == "11" || var_1 == "12" || var_1 == "1" || var_1 == "2" || var_1 == "3" )
        return 1;

    return 0;
}

_ID35534()
{
    anim endon( "battlechatter disabled" );
    self endon( "squad_deleting" );

    if ( self._ID1194 != "allies" )
    {
        if ( level._ID912 != "af_caves" )
            return;
    }

    while ( self._ID23459 <= 0 )
        wait 0.5;

    var_0 = 0;

    while ( _func_02F( self ) )
    {
        if ( !_unknown_4EC2( self ) )
        {
            var_0 = 1;
            wait 1;
            continue;
        }
        else if ( self._ID13982 )
        {
            if ( !var_0 )
                wait(_func_0B8( anim._ID13987 ));

            if ( var_0 )
                var_0 = 0;

            self._ID13982 = 0;
        }
        else
        {
            if ( !var_0 )
                wait(_func_0BA( anim._ID13987, anim._ID13986 ));

            if ( var_0 )
                var_0 = 0;
        }

        var_1 = _unknown_4F27( self );

        if ( !_func_02F( var_1 ) )
            continue;

        var_2 = var_1._ID40757;
        var_3 = _unknown_4F60( self, var_2 );
        var_4 = _unknown_4F91( var_2, var_3 );
        var_5 = var_4;

        for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
        {
            var_6 = var_5[var_8];

            if ( !var_1 _unknown_4F44() || _func_0F3( level._ID794._ID740, var_1._ID740 ) > anim._ID13981 )
            {
                for ( var_7 = 0; var_7 < self._ID23465.size; var_7++ )
                {
                    var_1 = _unknown_4F7B( self );

                    if ( !_func_02F( var_1 ) )
                        continue;

                    if ( var_1._ID40757 == var_2 )
                        break;
                }

                if ( !_func_02F( var_1 ) || var_1._ID40757 != var_2 )
                    break;
            }

            thread _unknown_5015( var_1, var_6 );
            self waittill( "burst_line_done" );

            if ( var_8 != var_4.size - 1 )
                wait(_func_0BA( anim._ID13985, anim._ID13984 ));
        }

        var_clear_2
    }
}

_ID35530( var_0 )
{
    var_1 = 0;
    var_2 = var_0._ID23465;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 _unknown_4FDC() )
        {
            var_1 = 1;
            break;
        }
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID6858()
{
    var_0 = 0;

    if ( !_func_1B3( self ) && _func_1A7( self ) && self._ID170 != "actor_enemy_dog" && _unknown_501A() && self._ID14542 )
        var_0 = 1;

    return var_0;
}

_ID40760()
{
    if ( _func_02F( level._ID4912[self._ID40757] ) && level._ID4912[self._ID40757] )
        return 1;

    return 0;
}

_ID16162( var_0 )
{
    var_1 = undefined;
    var_2 = _ID42237::_ID15567( level._ID794._ID740, var_0._ID23465 );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4 _unknown_5059() )
        {
            var_1 = var_4;

            if ( !_func_02F( var_0._ID13983 ) )
                break;

            if ( _func_02F( var_0._ID13983 ) && var_0._ID13983 == var_1._ID39468 )
                continue;
        }
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_1 ) )
        var_0._ID13983 = var_1._ID39468;

    return var_1;
}

_ID16285( var_0, var_1 )
{
    var_2 = _ID42237::_ID3320( anim._ID14542[var_1] );

    if ( anim._ID14545.size >= var_2.size )
        anim._ID14545 = [];

    var_3 = undefined;
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_3 = var_5;

        if ( !_unknown_511C( var_3 ) )
            break;
    }

    var_clear_2
    var_clear_0
    anim._ID14545[anim._ID14545.size] = var_3;
    return var_3;
}

_ID14547( var_0 )
{
    if ( !anim._ID14545.size )
        return 0;

    var_1 = 0;
    var_2 = anim._ID14545;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == var_0 )
        {
            var_1 = 1;
            break;
        }
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID16284( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    var_3 = var_2;
    var_4 = [];

    for (;;)
    {
        var_5 = "FB_" + anim._ID8775[var_0] + "_" + var_1 + "_" + var_3;
        var_3++;

        if ( _func_1D0( var_5 ) )
        {
            var_4[var_4.size] = var_5;
            continue;
        }

        break;
    }

    return var_4;
}

_ID28065( var_0, var_1 )
{
    anim endon( "battlechatter disabled" );
    var_2 = _func_06A( "script_origin", var_0._ID740 );
    var_2 _meth_8053( var_0 );
    var_2 _meth_80A1( var_1, var_1, 1 );
    var_2 waittill( var_1 );
    var_2 _meth_80B7();

    if ( _func_02F( self ) )
        self notify( "burst_line_done" );
}

_ID14541( var_0, var_1 )
{
    self endon( "burst_line_done" );

    for (;;)
        wait 0.05;
}

_ID4913()
{
    return 0;
}

_ID4914()
{
    return 0;
}

_ID4920( var_0 )
{
    if ( var_0.size <= 0 )
        return;

    if ( !_unknown_523C() )
        return;

    var_1 = "^5 ";

    if ( _unknown_4D34() )
        var_1 = "^6 ";

    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        var_3 = var_2[var_4];

    var_clear_2
    var_clear_0
}

_ID4921( var_0, var_1 )
{

}

_ID16108( var_0 )
{
    var_1 = self._ID8774 + "_" + self._ID25173 + "_";
    var_2 = _func_127( var_0, var_1.size, var_0.size );
    return var_2;
}

_ID4922( var_0, var_1, var_2 )
{
    if ( _ID42237::_ID14385( var_2 ) )
        _ID42237::_ID14413( var_2 );

    _ID42237::_ID14402( var_2 );
    _ID42237::_ID14388( var_2 );
}

_ID4928()
{
    for ( var_0 = 0; var_0 < anim._ID4941.size; var_0++ )
    {
        var_1 = anim._ID4941[var_0]._ID22526;

        if ( !_func_02F( var_1 ) )
            continue;

        var_2 = "";
        var_3 = var_1;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            var_2 += var_4;
        }

        var_clear_2
        var_clear_0
        thread _unknown_5358( "Location: " + var_2, anim._ID4941[var_0] _meth_809C(), ( 0, 0, 8 ), ( 1, 1, 1 ) );
    }
}

_ID11734( var_0, var_1, var_2, var_3 )
{
    for (;;)
    {
        if ( _func_0F3( level._ID794._ID740, var_1 ) > 2048 )
        {
            wait 0.1;
            continue;
        }

        wait 0.05;
    }
}

_ID11733( var_0, var_1, var_2 )
{
    var_3 = var_0 _meth_809C();

    for (;;)
    {
        if ( _func_0F3( level._ID794._ID740, var_3 ) > 2048 )
        {
            wait 0.1;
            continue;
        }

        var_4 = _unknown_4F6B( level._ID794._ID740, var_3 );
        var_4 = _unknown_4F42( var_4 );
        var_5 = _unknown_4FD8( level._ID794._ID65, level._ID794._ID740, var_3 );
        var_6 = var_4 + ", " + var_5 + ":00";
        wait 0.05;
    }
}

_ID29780( var_0, var_1 )
{
    var_2 = _func_0DE( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];

        if ( !_func_1A7( var_4 ) )
            continue;

        if ( !_func_02F( var_4._ID4912 ) )
            continue;

        var_4._ID24798[var_1] = _func_03D() + 350;
        var_4._ID35507._ID24798[var_1] = _func_03D() + 350;
    }
}

_ID40759()
{
    self endon( "death" );

    if ( self._ID40757 == "british" || self._ID40757 == "spanish" || self._ID40757 == "italian" || self._ID40757 == "german" )
        return 1;
    else
        return 0;
}

_ID15011()
{
    if ( !_unknown_54B7() )
        return 0;

    _unknown_4EC0( "reaction", "friendlyfire" );
    thread _unknown_4A74();
    return 1;
}

_ID6735( var_0 )
{
    if ( _func_02F( self._ID15013 ) )
        return 0;

    if ( !_func_02F( self._ID7337 ) )
        return 0;

    if ( !_func_02F( self._ID7337["reaction"] ) || !_func_02F( self._ID7337["reaction"]._ID13280 ) )
        return 0;

    if ( self._ID7337["reaction"]._ID13280 != "friendlyfire" )
        return 0;

    if ( _func_03D() > self._ID7337["reaction"]._ID13599 )
        return 0;

    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    if ( var_0 )
    {
        if ( _func_02F( self._ID35507._ID24802["reaction"]["friendlyfire"] ) )
        {
            if ( _func_03D() < self._ID35507._ID24802["reaction"]["friendlyfire"] )
                return 0;
        }
    }

    return 1;
}
