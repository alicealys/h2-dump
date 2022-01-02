// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19643()
{
    if ( isdefined( anim._ID7336 ) && anim._ID7336 )
        return;

    if ( getdvar( "bcs_enable" ) == "" )
        setdvar( "bcs_enable", "on" );

    if ( getdvar( "bcs_enable" ) == "off" )
    {
        anim._ID7336 = 0;
        anim.player._ID7336 = 0;
        return;
    }

    anim._ID7336 = 1;
    anim.player._ID7336 = 0;

    if ( getdvar( "bcs_filterThreat" ) == "" )
        setdvar( "bcs_filterThreat", "off" );

    if ( getdvar( "bcs_filterInform" ) == "" )
        setdvar( "bcs_filterInform", "off" );

    if ( getdvar( "bcs_filterOrder" ) == "" )
        setdvar( "bcs_filterOrder", "off" );

    if ( getdvar( "bcs_filterReaction" ) == "" )
        setdvar( "bcs_filterReaction", "off" );

    if ( getdvar( "bcs_filterResponse" ) == "" )
        setdvar( "bcs_filterResponse", "off" );

    if ( getdvar( "bcs_threatLimitTargettedBySelf" ) == "" )
        setdvar( "bcs_threatLimitTargettedBySelf", "off" );

    if ( getdvar( "bcs_threatLimitTargetingPlayer" ) == "" )
        setdvar( "bcs_threatLimitTargetingPlayer", "off" );

    if ( getdvar( "bcs_threatLimitInPlayerFOV" ) == "" )
        setdvar( "bcs_threatLimitInPlayerFOV", "on" );

    if ( getdvar( "bcs_threatLimitInLocation" ) == "" )
        setdvar( "bcs_threatLimitInLocation", "on" );

    if ( getdvar( "bcs_threatLimitSpeakerDist" ) == "" )
        setdvar( "bcs_threatLimitSpeakerDist", "512" );

    if ( getdvar( "bcs_threatLimitThreatDist" ) == "" )
        setdvar( "bcs_threatLimitThreatDist", "2048" );

    if ( getdvar( "bcs_threatPlayerRelative" ) == "" )
        setdvar( "bcs_threatPlayerRelative", "off" );

    if ( getdvar( "debug_bcprint" ) == "" )
        setdvar( "debug_bcprint", "off" );

    if ( getdvar( "debug_bcshowqueue" ) == "" )
        setdvar( "debug_bcshowqueue", "off" );

    if ( getdvar( "debug_bcprintdump" ) == "" )
        setdvar( "debug_bcprintdump", "off" );

    anim._ID4935 = "^3***** BCS FAILURE: ";
    anim._ID4936 = "^3***** BCS WARNING: ";
    _ID4949();
    _ID4947();
    anim._ID27938["american"] = "1";
    anim._ID27938["seal"] = "1";
    anim._ID27938["taskforce"] = "1";
    anim._ID27938["secretservice"] = "1";
    thread _ID32743();
    anim._ID39932 = [];
    anim._ID39932["russian"] = [];
    anim._ID39932["russian"][0] = spawnstruct();
    anim._ID39932["russian"][0].count = 0;
    anim._ID39932["russian"][0]._ID25173 = "0";
    anim._ID39932["russian"][1] = spawnstruct();
    anim._ID39932["russian"][1].count = 0;
    anim._ID39932["russian"][1]._ID25173 = "1";
    anim._ID39932["russian"][2] = spawnstruct();
    anim._ID39932["russian"][2].count = 0;
    anim._ID39932["russian"][2]._ID25173 = "2";
    anim._ID39932["russian"][3] = spawnstruct();
    anim._ID39932["russian"][3].count = 0;
    anim._ID39932["russian"][3]._ID25173 = "3";
    anim._ID39932["russian"][4] = spawnstruct();
    anim._ID39932["russian"][4].count = 0;
    anim._ID39932["russian"][4]._ID25173 = "4";
    anim._ID39932["portuguese"] = [];
    anim._ID39932["portuguese"][0] = spawnstruct();
    anim._ID39932["portuguese"][0].count = 0;
    anim._ID39932["portuguese"][0]._ID25173 = "0";
    anim._ID39932["portuguese"][1] = spawnstruct();
    anim._ID39932["portuguese"][1].count = 0;
    anim._ID39932["portuguese"][1]._ID25173 = "1";
    anim._ID39932["portuguese"][2] = spawnstruct();
    anim._ID39932["portuguese"][2].count = 0;
    anim._ID39932["portuguese"][2]._ID25173 = "2";
    anim._ID39932["shadowcompany"] = [];
    anim._ID39932["shadowcompany"][0] = spawnstruct();
    anim._ID39932["shadowcompany"][0].count = 0;
    anim._ID39932["shadowcompany"][0]._ID25173 = "0";
    anim._ID39932["shadowcompany"][1] = spawnstruct();
    anim._ID39932["shadowcompany"][1].count = 0;
    anim._ID39932["shadowcompany"][1]._ID25173 = "1";
    anim._ID39932["shadowcompany"][2] = spawnstruct();
    anim._ID39932["shadowcompany"][2].count = 0;
    anim._ID39932["shadowcompany"][2]._ID25173 = "2";
    anim._ID39932["shadowcompany"][3] = spawnstruct();
    anim._ID39932["shadowcompany"][3].count = 0;
    anim._ID39932["shadowcompany"][3]._ID25173 = "3";
    anim._ID39932["british"] = [];
    anim._ID39932["british"][0] = spawnstruct();
    anim._ID39932["british"][0].count = 0;
    anim._ID39932["british"][0]._ID25173 = "0";
    anim._ID39932["british"][1] = spawnstruct();
    anim._ID39932["british"][1].count = 0;
    anim._ID39932["british"][1]._ID25173 = "1";
    anim._ID39932["british"][2] = spawnstruct();
    anim._ID39932["british"][2].count = 0;
    anim._ID39932["british"][2]._ID25173 = "2";
    anim._ID39932["american"] = [];
    anim._ID39932["american"][0] = spawnstruct();
    anim._ID39932["american"][0].count = 0;
    anim._ID39932["american"][0]._ID25173 = "0";
    anim._ID39932["american"][1] = spawnstruct();
    anim._ID39932["american"][1].count = 0;
    anim._ID39932["american"][1]._ID25173 = "1";
    anim._ID39932["american"][2] = spawnstruct();
    anim._ID39932["american"][2].count = 0;
    anim._ID39932["american"][2]._ID25173 = "2";
    anim._ID39932["american"][3] = spawnstruct();
    anim._ID39932["american"][3].count = 0;
    anim._ID39932["american"][3]._ID25173 = "3";
    anim._ID39932["american"][4] = spawnstruct();
    anim._ID39932["american"][4].count = 0;
    anim._ID39932["american"][4]._ID25173 = "4";
    anim._ID39932["seal"] = [];
    anim._ID39932["seal"][0] = spawnstruct();
    anim._ID39932["seal"][0].count = 0;
    anim._ID39932["seal"][0]._ID25173 = "0";
    anim._ID39932["seal"][1] = spawnstruct();
    anim._ID39932["seal"][1].count = 0;
    anim._ID39932["seal"][1]._ID25173 = "1";
    anim._ID39932["seal"][2] = spawnstruct();
    anim._ID39932["seal"][2].count = 0;
    anim._ID39932["seal"][2]._ID25173 = "2";
    anim._ID39932["seal"][3] = spawnstruct();
    anim._ID39932["seal"][3].count = 0;
    anim._ID39932["seal"][3]._ID25173 = "3";
    anim._ID39932["taskforce"] = [];
    anim._ID39932["taskforce"][0] = spawnstruct();
    anim._ID39932["taskforce"][0].count = 0;
    anim._ID39932["taskforce"][0]._ID25173 = "0";
    anim._ID39932["taskforce"][1] = spawnstruct();
    anim._ID39932["taskforce"][1].count = 0;
    anim._ID39932["taskforce"][1]._ID25173 = "1";
    anim._ID39932["taskforce"][2] = spawnstruct();
    anim._ID39932["taskforce"][2].count = 0;
    anim._ID39932["taskforce"][2]._ID25173 = "2";
    anim._ID39932["secretservice"] = [];
    anim._ID39932["secretservice"][0] = spawnstruct();
    anim._ID39932["secretservice"][0].count = 0;
    anim._ID39932["secretservice"][0]._ID25173 = "0";
    anim._ID39932["secretservice"][1] = spawnstruct();
    anim._ID39932["secretservice"][1].count = 0;
    anim._ID39932["secretservice"][1]._ID25173 = "1";
    anim._ID39932["secretservice"][2] = spawnstruct();
    anim._ID39932["secretservice"][2].count = 0;
    anim._ID39932["secretservice"][2]._ID25173 = "2";
    anim._ID39932["secretservice"][3] = spawnstruct();
    anim._ID39932["secretservice"][3].count = 0;
    anim._ID39932["secretservice"][3]._ID25173 = "3";
    anim._ID39932["arab"] = [];
    anim._ID39932["arab"][0] = spawnstruct();
    anim._ID39932["arab"][0].count = 0;
    anim._ID39932["arab"][0]._ID25173 = "0";
    anim._ID39932["arab"][1] = spawnstruct();
    anim._ID39932["arab"][1].count = 0;
    anim._ID39932["arab"][1]._ID25173 = "1";
    anim._ID39932["arab"][2] = spawnstruct();
    anim._ID39932["arab"][2].count = 0;
    anim._ID39932["arab"][2]._ID25173 = "2";
    anim._ID39932["german"] = [];
    anim._ID39932["german"][0] = spawnstruct();
    anim._ID39932["german"][0].count = 0;
    anim._ID39932["german"][0]._ID25173 = "0";
    anim._ID39932["german"][1] = spawnstruct();
    anim._ID39932["german"][1].count = 0;
    anim._ID39932["german"][1]._ID25173 = "1";
    anim._ID39932["german"][2] = spawnstruct();
    anim._ID39932["german"][2].count = 0;
    anim._ID39932["german"][2]._ID25173 = "2";
    anim._ID39932["italian"] = [];
    anim._ID39932["italian"][0] = spawnstruct();
    anim._ID39932["italian"][0].count = 0;
    anim._ID39932["italian"][0]._ID25173 = "0";
    anim._ID39932["italian"][1] = spawnstruct();
    anim._ID39932["italian"][1].count = 0;
    anim._ID39932["italian"][1]._ID25173 = "1";
    anim._ID39932["italian"][2] = spawnstruct();
    anim._ID39932["italian"][2].count = 0;
    anim._ID39932["italian"][2]._ID25173 = "2";
    anim._ID39932["spanish"] = [];
    anim._ID39932["spanish"][0] = spawnstruct();
    anim._ID39932["spanish"][0].count = 0;
    anim._ID39932["spanish"][0]._ID25173 = "0";
    anim._ID39932["spanish"][1] = spawnstruct();
    anim._ID39932["spanish"][1].count = 0;
    anim._ID39932["spanish"][1]._ID25173 = "1";
    anim._ID39932["spanish"][2] = spawnstruct();
    anim._ID39932["spanish"][2].count = 0;
    anim._ID39932["spanish"][2]._ID25173 = "2";
    _ID19701();

    if ( !isdefined( level._ID15012 ) )
        level._ID15012 = 0;

    anim._ID13281 = [];
    anim._ID13281["threat"] = [];
    anim._ID13281["response"] = [];
    anim._ID13281["reaction"] = [];
    anim._ID13281["order"] = [];
    anim._ID13281["inform"] = [];
    anim._ID13281["custom"] = [];
    anim._ID13281["direction"] = [];

    if ( isdefined( level._ID1644 ) )
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
    anim._ID24422 = spawn( "script_origin", ( 0, 0, 0 ) );

    if ( !isdefined( level._ID46718 ) )
        level._ID46718 = 1500;

    if ( !isdefined( level._ID47738 ) )
        level._ID47738 = 2500;

    _ID51329::_ID4940();
    anim._ID22527 = [];
    anim._ID31554 = 4000;
    anim._ID4951 = 3000;
    anim._ID35532[anim._ID35532.size] = ::_ID19809;
    anim._ID35533[anim._ID35533.size] = "::init_squadBattleChatter";

    foreach ( var_1 in anim._ID37379 )
    {
        anim._ID20947[var_1] = 0;
        anim._ID20946[var_1]["threat"] = 0;
        anim._ID20946[var_1]["order"] = 0;
        anim._ID20946[var_1]["reaction"] = 0;
        anim._ID20946[var_1]["response"] = 0;
        anim._ID20946[var_1]["inform"] = 0;
        anim._ID20946[var_1]["custom"] = 0;
    }

    _ID4946();

    if ( !isdefined( anim._ID14546 ) )
    {
        anim._ID14546 = [];
        anim._ID14546["american"] = 1;
        anim._ID14546["shadowcompany"] = 1;
        anim._ID14546["seal"] = 0;
        anim._ID14546["taskforce"] = 0;
        anim._ID14546["secretservice"] = 0;
        anim._ID14546["british"] = 0;
    }

    _ID4948();
    anim._ID22021 = [];
    anim._ID21955 = [];
    anim._ID21956 = [];

    foreach ( var_1 in anim._ID37379 )
    {
        anim._ID22021[var_1] = -50000;
        anim._ID21955[var_1] = "none";
        anim._ID21956[var_1] = -100000;
    }

    anim._ID21957 = 10000;

    for ( var_5 = 0; var_5 < anim._ID35537.size; var_5++ )
    {
        if ( isdefined( anim._ID35537[var_5]._ID7336 ) && anim._ID35537[var_5]._ID7336 )
            continue;

        anim._ID35537[var_5] _ID19809();
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

    foreach ( var_1 in anim._ID37379 )
    {
        anim._ID22022[var_1] = undefined;
        anim._ID22023[var_1] = undefined;
    }

    anim._ID37383 = 20000;
    level notify( "battlechatter initialized" );
    anim notify( "battlechatter initialized" );
}

_ID4949()
{
    if ( !isdefined( anim._ID37379 ) )
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
    if ( !isdefined( anim._ID8775 ) )
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
    _ID4949();

    if ( !isdefined( level._ID4912 ) )
    {
        level._ID4912 = [];

        foreach ( var_1 in anim._ID37379 )
            _ID42407::_ID32227( var_1, 1 );
    }
}

_ID4948()
{
    _ID4949();

    if ( !isdefined( level._ID14542 ) )
    {
        level._ID14542 = [];

        foreach ( var_1 in anim._ID37379 )
            level._ID14542[var_1] = 1;
    }
}

_ID19701()
{
    anim._ID14542["american"] = [];
    var_0 = 41;
    var_1 = [];

    if ( level.script == "roadkill" || level.script == "trainer" )
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

            foreach ( var_5 in var_1 )
            {
                if ( var_5 == var_2 )
                {
                    var_3 = 1;
                    break;
                }
            }

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
    anim.player._ID7336 = 0;
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
    var_0._ID24797 = gettime() + 50;
    var_0._ID24798["threat"] = gettime() + 50;
    var_0._ID24798["order"] = gettime() + 50;
    var_0._ID24798["reaction"] = gettime() + 50;
    var_0._ID24798["response"] = gettime() + 50;
    var_0._ID24798["inform"] = gettime() + 50;
    var_0._ID24798["custom"] = gettime() + 50;
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
    var_0._ID35548[var_0._ID35548.size] = ::_ID19878;
    var_0._ID35549[var_0._ID35549.size] = "::initContact";
    var_0._ID13982 = 1;
    var_0._ID13983 = undefined;

    for ( var_1 = 0; var_1 < anim._ID35537.size; var_1++ )
        var_0 thread _ID19878( anim._ID35537[var_1]._ID1010 );

    var_0 thread animscripts\battlechatter_ai::_ID35546();
    var_0 thread animscripts\battlechatter_ai::_ID35542();
    var_0 thread _ID35534();
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
        var_0 _ID34130( anim._ID35537[var_1]._ID1010 );

    var_0._ID7336 = 0;
}

_ID4954()
{
    return anim._ID7336;
}

_ID4953()
{
    var_0 = getdvar( "bcs_enable", "on" );

    for (;;)
    {
        var_1 = getdvar( "bcs_enable", "on" );

        if ( var_1 != var_0 )
        {
            switch ( var_1 )
            {
                case "on":
                    if ( !anim._ID7336 )
                        _ID12556();

                    break;
                case "off":
                    if ( anim._ID7336 )
                        _ID11001();

                    break;
            }

            var_0 = var_1;
        }

        wait 1.0;
    }
}

_ID12556()
{
    _ID19643();
    anim.player thread animscripts\battlechatter_ai::_ID2131();
    var_0 = getaiarray();

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] animscripts\battlechatter_ai::_ID2131();
}

_ID11001()
{
    _ID34126();
    var_0 = getaiarray();

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( isdefined( var_0[var_1]._ID35507 ) && var_0[var_1]._ID35507._ID7336 )
            var_0[var_1]._ID35507 _ID34129();

        var_0[var_1] animscripts\battlechatter_ai::_ID29617();
    }
}

_ID32743( var_0, var_1 )
{
    if ( isdefined( var_0 ) && isdefined( var_1 ) )
    {
        level.player._ID4934 = var_0;
        level.player._ID45047 = var_1;
        return;
    }

    while ( !isdefined( level._ID6720 ) )
        wait 0.1;

    var_2 = level._ID6720;
    var_3 = anim._ID27938[var_2];
    var_4 = anim._ID8775[var_2];

    if ( isdefined( var_3 ) )
        level.player._ID4934 = var_3;

    if ( isdefined( var_4 ) )
        level.player._ID45047 = var_4;
}

_ID27185()
{
    if ( !isalive( self ) )
        return;

    if ( !_ID4954() )
        return;

    if ( _func_1fb() )
        return;

    if ( self._ID1363 > 0 )
        return;

    if ( isdefined( self._ID20918 ) && self._ID20918 )
        return;

    if ( self.team == "allies" && isdefined( anim._ID31555 ) )
    {
        if ( anim._ID31555 + anim._ID31554 > gettime() )
            return;
    }

    if ( _ID15011() )
        return;

    if ( !isdefined( self._ID4912 ) || !self._ID4912 )
        return;

    if ( self.team == "allies" && getdvarint( "bcs_forceEnglish", 0 ) )
        return;

    if ( anim._ID20947[self.team] )
        return;

    self endon( "death" );
    var_0 = _ID16330();

    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "custom":
            thread _ID27198();
            break;
        case "response":
            thread _ID28118();
            break;
        case "order":
            thread _ID28111();
            break;
        case "threat":
            thread _ID28134();
            break;
        case "reaction":
            thread _ID28117();
            break;
        case "inform":
            thread _ID28082();
            break;
    }
}

_ID28134()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self endon( "cancel speaking" );
    self._ID9416 = self._ID7337["threat"];
    var_0 = self._ID7337["threat"]._ID37658;

    if ( !isalive( var_0 ) )
        return;

    if ( _ID37687( var_0 ) && !isplayernumber( var_0 ) )
        return;

    anim thread _ID22539( self, "threat" );
    var_1 = 0;

    switch ( self._ID7337["threat"]._ID13280 )
    {
        case "infantry":
            if ( isplayernumber( var_0 ) || !isdefined( var_0 getturret() ) )
            {
                var_1 = _ID37678( var_0 );
                jump loc_1EEF
            }

            break;
        case "dog":
            var_1 = _ID37676( var_0 );
            break;
        case "vehicle":
            break;
    }

    self notify( "done speaking" );

    if ( !var_1 )
        return;

    if ( !isalive( var_0 ) )
        return;

    var_0._ID6666[self._ID35507._ID1010] = spawnstruct();
    var_0._ID6666[self._ID35507._ID1010]._ID35482 = self;
    var_0._ID6666[self._ID35507._ID1010]._ID37686 = self._ID7337["threat"]._ID13280;
    var_0._ID6666[self._ID35507._ID1010]._ID13599 = gettime() + anim._ID4951;

    if ( isdefined( var_0._ID35507 ) )
        self._ID35507._ID35539[var_0._ID35507._ID1010]._ID6666 = 1;
}

_ID37687( var_0 )
{
    if ( isdefined( var_0._ID6666 ) && isdefined( var_0._ID6666[self._ID35507._ID1010] ) )
    {
        if ( var_0._ID6666[self._ID35507._ID1010]._ID13599 < gettime() )
            return 1;
    }

    return 0;
}

_ID37678( var_0, var_1 )
{
    self endon( "cancel speaking" );
    var_2 = _ID9198();
    var_2._ID23003 = 1;
    var_2._ID37677 = var_0;
    var_3 = _ID16679( var_0 );

    if ( !isdefined( var_3 ) || isdefined( var_3 ) && !isdefined( var_3.type ) )
        return 0;

    switch ( var_3.type )
    {
        case "rpg":
            var_2 _ID37681( var_0 );
            break;
        case "exposed":
            var_4 = _ID11326( var_3._ID29823 );

            if ( var_4 && _ID6881( var_3._ID29823 ) )
            {
                var_2 _ID2053( var_3._ID29823._ID4933 );
                var_2._ID606 = var_3._ID29823;
            }

            var_2 _ID37680( var_0 );

            if ( var_4 )
            {
                if ( randomint( 100 ) < anim._ID13277["response"]["callout_negative"] )
                    var_3._ID29823 animscripts\battlechatter_ai::_ID2089( "callout", "neg", self, 0.9 );
                else
                    var_3._ID29823 animscripts\battlechatter_ai::_ID2089( "exposed", "acquired", self, 0.9 );
            }

            break;
        case "player_obvious":
            var_2 _ID2080();
            var_2 _ID2117();
            break;
        case "player_yourclock":
            var_2 _ID2080();
            var_2 _ID2107( "yourclock", var_3._ID27775 );
            break;
        case "player_contact_clock":
            var_2 _ID2080();
            var_2 _ID2107( "contactclock", var_3._ID27775 );
            break;
        case "player_target_clock":
            var_2 _ID2080();
            var_2 _ID2107( "targetclock", var_3._ID27775 );
            break;
        case "player_cardinal":
            var_2 _ID2080();
            var_5 = _ID16221( level.player.origin, var_0.origin );
            var_6 = _ID24932( var_5 );

            if ( var_6 == "impossible" )
                return 0;

            var_2 _ID2107( "cardinal", var_6 );
            break;
        case "ai_yourclock":
            var_7 = _ID16567( var_3._ID29823 );

            if ( _ID6881( var_3._ID29823 ) )
            {
                var_2 _ID2053( var_3._ID29823._ID4933 );
                var_2._ID606 = var_3._ID29823;
            }

            var_2 _ID2107( "yourclock", var_3._ID29824 );
            var_2 _ID2001( self, var_3, var_0 );
            break;
        case "ai_contact_clock":
            var_8 = self;

            if ( self.team == "allies" )
                var_8 = level.player;
            else if ( isdefined( var_3._ID29823 ) && randomint( 100 ) < anim._ID13277["response"]["callout"] )
                var_8 = var_3._ID29823;

            var_7 = _ID16567( var_8 );
            var_9 = _ID16223( var_7, var_8.origin, var_0.origin );

            if ( isdefined( var_3._ID29823 ) && _ID6881( var_3._ID29823 ) )
            {
                var_2 _ID2053( var_3._ID29823._ID4933 );
                var_2._ID606 = var_3._ID29823;
            }

            var_2 _ID2107( "contactclock", var_9 );
            var_2 _ID2001( self, var_3, var_0 );
            break;
        case "ai_target_clock":
            var_8 = self;

            if ( self.team == "allies" )
                var_8 = level.player;
            else if ( isdefined( var_3._ID29823 ) && randomint( 100 ) < anim._ID13277["response"]["callout"] )
                var_8 = var_3._ID29823;

            var_7 = _ID16567( var_8 );
            var_9 = _ID16223( var_7, var_8.origin, var_0.origin );

            if ( isdefined( var_3._ID29823 ) && _ID6881( var_3._ID29823 ) )
            {
                var_2 _ID2053( var_3._ID29823._ID4933 );
                var_2._ID606 = var_3._ID29823;
            }

            var_2 _ID2107( "targetclock", var_9 );
            var_2 _ID2001( self, var_3, var_0 );
            break;
        case "ai_cardinal":
            var_8 = self;

            if ( self.team == "allies" )
                var_8 = level.player;

            var_5 = _ID16221( var_8.origin, var_0.origin );
            var_6 = _ID24932( var_5 );

            if ( var_6 == "impossible" )
                return 0;

            var_2 _ID2107( "cardinal", var_6 );
            break;
        case "generic_location":
            var_10 = var_2 _ID37679( var_3, level.player, var_0 );

            if ( !var_10 )
                return 0;

            break;
        case "player_location":
            var_2 _ID2080();
            var_10 = var_2 _ID37679( var_3, level.player, var_0 );

            if ( !var_10 )
                return 0;

            break;
        case "ai_location":
            if ( _ID6881( var_3._ID29823 ) )
            {
                var_2 _ID2053( var_3._ID29823._ID4933 );
                var_2._ID606 = var_3._ID29823;
            }

            var_10 = var_2 _ID37679( var_3, self, var_0 );

            if ( !var_10 )
                return 0;

            var_11 = var_2._ID34988.size - 1;
            var_12 = var_2._ID34988[var_11];

            if ( _ID20696( var_12 ) )
                var_3._ID29823 animscripts\battlechatter_ai::_ID2089( "callout", "echo", self, 0.9, var_12 );
            else if ( _ID20695( var_12, self ) )
                var_3._ID29823 animscripts\battlechatter_ai::_ID2089( "callout", "QA", self, 0.9, var_12, var_3._ID22519 );
            else if ( randomint( 100 ) < anim._ID13277["response"]["callout_negative"] )
                var_3._ID29823 animscripts\battlechatter_ai::_ID2089( "callout", "neg", self, 0.9 );
            else
                var_3._ID29823 animscripts\battlechatter_ai::_ID2089( "exposed", "acquired", self, 0.9 );

            break;
    }

    _ID32672( var_3.type );
    _ID28115( var_2 );
    return 1;
}

_ID11326( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( var_0._ID8774 != "US" && var_0._ID8774 != "NS" && var_0._ID8774 != "TF" )
        return 0;

    if ( randomint( 100 ) > anim._ID13277["response"]["exposed"] )
        return 0;

    return 1;
}

_ID37679( var_0, var_1, var_2 )
{
    var_3 = _ID2110( var_0._ID22519 );
    return var_3;
}

_ID2001( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1._ID29823 ) )
        return;

    if ( randomint( 100 ) > anim._ID13277["response"]["callout"] )
        return;

    var_3 = "affirm";

    if ( !var_1._ID29823 cansee( var_2 ) && randomint( 100 ) < anim._ID13277["response"]["callout_negative"] )
        var_3 = "neg";

    var_1._ID29823 animscripts\battlechatter_ai::_ID2089( "callout", var_3, var_0, 0.9 );
}

_ID16679( var_0 )
{
    var_1 = var_0 _ID16397();
    var_2 = _ID16223( self.angles, self.origin, var_0.origin );
    var_3 = _ID16571( 64, 1024, "response" );
    var_4 = undefined;

    if ( isdefined( var_3 ) )
        var_4 = _ID16223( var_3.angles, var_3.origin, var_0.origin );

    var_5 = 0;

    if ( self.team == level.player.team )
        var_5 = _ID42407::_ID27291( var_0 );

    var_6 = level.player _ID28201( var_0.origin );
    var_7 = level.player _ID13070( var_0 );
    var_8 = _ID16223( level.player.angles, level.player.origin, var_0.origin );
    self._ID28266 = [];

    if ( !isplayernumber( var_0 ) && var_0 animscripts\utility::_ID39993() )
        _ID2082( "rpg" );

    if ( var_0 _ID20742() )
        _ID2082( "exposed" );

    if ( var_7 && _ID6882() )
    {
        if ( var_8 == "11" || var_8 == "12" || var_8 == "1" )
        {
            if ( var_5 )
                _ID2082( "player_obvious" );
        }
        else
        {
            _ID2082( "player_yourclock" );
            _ID2082( "player_contact_clock" );
            _ID2082( "player_target_clock" );
            _ID2082( "player_cardinal" );
        }
    }

    if ( isdefined( var_3 ) && _ID6881( var_3 ) )
        _ID2082( "ai_yourclock" );

    if ( _ID12941() || var_2 != "12" )
    {
        _ID2082( "ai_contact_clock" );
        _ID2082( "ai_target_clock" );
    }

    _ID2082( "ai_cardinal" );

    if ( isdefined( var_1 ) )
    {
        var_9 = var_1 _ID16167( self );

        if ( isdefined( var_9 ) )
        {
            if ( isdefined( var_3 ) )
                _ID2082( "ai_location" );
            else
            {
                if ( _ID6882() )
                    _ID2082( "player_location" );

                _ID2082( "generic_location" );
            }
        }
        else
        {
            if ( isdefined( var_3 ) )
                _ID2082( "ai_location" );

            if ( _ID6882() )
                _ID2082( "player_location" );

            _ID2082( "generic_location" );
        }
    }

    if ( !self._ID28266.size )
        return undefined;

    var_11 = _ID16753( self._ID28266, anim._ID37674 );
    var_12 = spawnstruct();
    var_12.type = var_11;
    var_12._ID29823 = var_3;
    var_12._ID29824 = var_4;
    var_12._ID27775 = var_8;

    if ( isdefined( var_1 ) )
        var_12._ID22519 = var_1;

    return var_12;
}

_ID16167( var_0 )
{
    var_1 = undefined;
    var_2 = self._ID22526;

    foreach ( var_4 in var_2 )
    {
        if ( _ID20695( var_4, var_0 ) && !isdefined( self._ID28790 ) )
        {
            var_1 = var_4;
            break;
        }

        if ( _ID20696( var_4 ) )
            var_1 = var_4;
    }

    return var_1;
}

_ID20696( var_0 )
{
    return issubstr( var_0, "_report" );
}

_ID20695( var_0, var_1 )
{
    if ( issubstr( var_0, "_qa" ) && soundexists( var_0 ) )
        return 1;

    var_2 = var_1 _ID16546( var_0, 0 );

    if ( soundexists( var_2 ) )
        return 1;

    return 0;
}

_ID16546( var_0, var_1 )
{
    var_2 = self._ID8774 + "_" + self._ID25173 + "_co_";
    var_2 += var_0;
    var_2 += ( "_qa" + var_1 );
    return var_2;
}

_ID1995( var_0 )
{
    self._ID2727[self._ID2727.size] = var_0;
}

_ID2082( var_0 )
{
    var_1 = 0;

    foreach ( var_3 in self._ID2727 )
    {
        if ( var_3 == var_0 )
        {
            if ( !_ID6669( var_0 ) )
                var_1 = 1;

            break;
        }
    }

    if ( !var_1 )
        return;

    self._ID28266[self._ID28266.size] = var_0;
}

_ID6669( var_0 )
{
    if ( !isdefined( anim._ID22022[self.team] ) )
        return 0;

    if ( !isdefined( anim._ID22023[self.team] ) )
        return 0;

    var_1 = anim._ID22022[self.team];
    var_2 = anim._ID22023[self.team];
    var_3 = anim._ID37383;

    if ( var_0 == var_1 && gettime() - var_2 < var_3 )
        return 1;

    return 0;
}

_ID32672( var_0 )
{
    anim._ID22022[self.team] = var_0;
    anim._ID22023[self.team] = gettime();
}

_ID16753( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = -1;

    foreach ( var_5 in var_0 )
    {
        if ( var_1[var_5] <= 0 )
            continue;

        var_6 = randomint( var_1[var_5] );

        if ( isdefined( var_2 ) && var_1[var_2] >= 100 )
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

    return var_2;
}

_ID37676( var_0, var_1 )
{
    self endon( "cancel speaking" );
    var_2 = _ID9198();
    var_2._ID23003 = 1;
    var_2._ID37677 = var_0;
    var_2 _ID2106( "dog", "generic" );
    _ID28115( var_2 );
    return 1;
}

_ID37680( var_0 )
{
    var_1 = [];
    var_1 = _ID42237::_ID3293( var_1, "open" );
    var_1 = _ID42237::_ID3293( var_1, "breaking" );

    if ( self.owner.team == "allies" && self.owner._ID8774 != "RU" && self.owner._ID8774 != "RUS" )
    {
        var_1 = _ID42237::_ID3293( var_1, "oscarmike" );
        var_1 = _ID42237::_ID3293( var_1, "movement" );
    }

    var_2 = var_1[randomint( var_1.size )];
    _ID2116( var_2 );
}

_ID37681( var_0 )
{
    _ID2106( "rpg" );
}

_ID28117()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self._ID9416 = self._ID7337["reaction"];
    var_0 = self._ID7337["reaction"]._ID29138;
    var_1 = self._ID7337["reaction"]._ID23882;
    anim thread _ID22539( self, "reaction" );

    switch ( self._ID7337["reaction"]._ID13280 )
    {
        case "casualty":
            _ID29067( var_0, var_1 );
            break;
        case "taunt":
            _ID29071( var_0, var_1 );
            break;
        case "friendlyfire":
            _ID29068( var_0, var_1 );
            break;
    }

    self notify( "done speaking" );
}

_ID29067( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _ID9198();
    var_2 _ID2086( "casualty", "generic" );
    _ID28115( var_2 );
}

_ID29071( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _ID9198();

    if ( isdefined( var_1 ) && var_1 == "hostileburst" )
        var_2 _ID2024();
    else
        var_2 _ID2105( "taunt", "generic" );

    _ID28115( var_2 );
}

_ID29068( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _ID9198();
    var_2 _ID2010();
    _ID28115( var_2 );
}

_ID28118()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self._ID9416 = self._ID7337["response"];
    var_0 = self._ID7337["response"]._ID23882;
    var_1 = self._ID7337["response"]._ID29825;

    if ( !isalive( var_1 ) )
        return;

    if ( self._ID7337["response"]._ID23882 == "follow" && self._ID7._ID36185 != "move" )
        return;

    anim thread _ID22539( self, "response" );

    switch ( self._ID7337["response"]._ID13280 )
    {
        case "exposed":
            _ID29835( var_1, var_0 );
            break;
        case "callout":
            _ID29834( var_1, var_0 );
            break;
        case "ack":
            _ID29832( var_1, var_0 );
            break;
    }

    self notify( "done speaking" );
}

_ID29835( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !isalive( var_0 ) )
        return;

    var_2 = _ID9198();
    var_2 _ID2116( var_1 );
    var_2._ID606 = var_0;
    var_2._ID23003 = 1;
    _ID28115( var_2 );
}

_ID29834( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !isalive( var_0 ) )
        return;

    var_2 = _ID9198();
    var_3 = 0;

    if ( var_1 == "echo" )
        var_3 = var_2 _ID2108( self._ID9416._ID29704, var_0 );
    else if ( var_1 == "QA" )
        var_3 = var_2 _ID2111( var_0, self._ID9416._ID29704, self._ID9416._ID22519 );
    else
        var_3 = var_2 _ID2112( var_1 );

    if ( !var_3 )
        return;

    var_2._ID606 = var_0;
    var_2._ID23003 = 1;
    _ID28115( var_2 );
}

_ID29832( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !isalive( var_0 ) )
        return;

    var_2 = self._ID7337["response"]._ID13280;
    var_3 = _ID9198();
    var_3 _ID2088( var_2, var_1 );
    var_3._ID606 = var_0;
    var_3._ID23003 = 1;
    _ID28115( var_3 );
}

_ID28111()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self._ID9416 = self._ID7337["order"];
    var_0 = self._ID7337["order"]._ID23882;
    var_1 = self._ID7337["order"]._ID25987;
    anim thread _ID22539( self, "order" );

    switch ( self._ID7337["order"]._ID13280 )
    {
        case "action":
            _ID25983( var_0, var_1 );
            break;
        case "move":
            _ID25985( var_0, var_1 );
            break;
        case "displace":
            _ID25984( var_0 );
            break;
    }

    self notify( "done speaking" );
}

_ID25983( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _ID9198();
    _ID39077( var_2, var_1 );
    var_2 _ID2077( "action", var_0 );
    _ID28115( var_2 );
}

_ID25985( var_0, var_1 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_2 = _ID9198();
    _ID39077( var_2, var_1 );
    var_2 _ID2077( "move", var_0 );
    _ID28115( var_2 );
}

_ID25984( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _ID9198();
    var_1 _ID2077( "displace", var_0 );
    _ID28115( var_1, 1 );
}

_ID39077( var_0, var_1 )
{
    if ( randomint( 100 ) > anim._ID13277["response"]["order"] )
    {
        if ( !isdefined( var_1 ) || isdefined( var_1 ) && !isplayernumber( var_1 ) )
        {

        }
    }
    else if ( isdefined( var_1 ) && isplayernumber( var_1 ) && isdefined( level.player._ID4934 ) )
    {
        var_0 _ID2080();
        var_0._ID606 = level.player;
    }
    else
    {
        if ( isdefined( var_1 ) && _ID6881( var_1 ) )
        {
            var_0 _ID2053( var_1._ID4933 );
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
    anim thread _ID22539( self, "inform" );

    switch ( self._ID7337["inform"]._ID13280 )
    {
        case "incoming":
            _ID19557( var_0 );
            break;
        case "attack":
            _ID19556( var_0 );
            break;
        case "reloading":
            _ID19559( var_0 );
            break;
        case "suppressed":
            _ID19560( var_0 );
            break;
        case "killfirm":
            _ID19558( var_0 );
            break;
    }

    self notify( "done speaking" );
}

_ID19559( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _ID9198();
    var_1 _ID2025( "reloading", var_0 );
    _ID28115( var_1 );
}

_ID19560( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _ID9198();
    var_1 _ID2025( "suppressed", var_0 );
    _ID28115( var_1 );
}

_ID19557( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _ID9198();

    if ( var_0 == "grenade" )
        var_1._ID23003 = 1;

    var_1 _ID2025( "incoming", var_0 );
    _ID28115( var_1 );
}

_ID19556( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _ID9198();
    var_1 _ID2025( "attack", var_0 );
    _ID28115( var_1 );
}

_ID19558( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_1 = _ID9198();
    var_1 _ID2025( "killfirm", var_0 );
    _ID28115( var_1 );
}

_ID27198()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self._ID9416 = self._ID7337["custom"];
    anim thread _ID22539( self, self._ID9416.type, 1 );
    _ID28115( self._ID9563 );
    self notify( "done speaking" );
    self._ID9562 = undefined;
    self._ID9563 = undefined;
}

_ID28115( var_0, var_1 )
{
    anim endon( "battlechatter disabled" );
    self endon( "death" );

    if ( isdefined( var_1 ) )
        return;

    if ( isdefined( level._ID1644 ) && _ID40759() )
    {
        for ( var_2 = 0; var_2 < var_0._ID34988.size; var_2++ )
            var_0._ID34988[var_2] = var_0._ID34988[var_2] + "_s";
    }

    if ( _ID4913() || _ID4914() )
    {
        var_3 = [];

        foreach ( var_5 in var_0._ID34988 )
            var_3[var_3.size] = var_5;

        if ( _ID4913() )
            _ID4920( var_3 );

        if ( _ID4914() )
        {
            var_7 = self._ID9416._ID13275 + "_" + self._ID9416._ID13280;

            if ( isdefined( self._ID9416._ID23882 ) )
                var_7 += ( "_" + self._ID9416._ID23882 );

            thread _ID4921( var_3, var_7 );
        }
    }

    for ( var_2 = 0; var_2 < var_0._ID34988.size; var_2++ )
    {
        if ( !self._ID4912 )
        {
            if ( !_ID20528( self._ID9416 ) )
                continue;
            else if ( !_ID6735( 0 ) )
                continue;
        }

        if ( self._ID1363 > 0 )
            continue;

        if ( _ID20744( self._ID9416._ID13275 ) )
        {
            wait 0.85;
            continue;
        }

        if ( !soundexists( var_0._ID34988[var_2] ) )
            continue;

        var_8 = gettime();

        if ( var_0._ID23003 && self.team == "allies" )
        {
            thread _ID42259::_ID3015( var_0._ID34988[var_2], var_0._ID606 );
            self playsoundatviewheight( var_0._ID34988[var_2], var_0._ID34988[var_2], 1 );
            self waittill( var_0._ID34988[var_2] );
        }
        else
        {
            thread _ID42259::_ID3015( var_0._ID34988[var_2], var_0._ID606 );
            self playsoundatviewheight( var_0._ID34988[var_2], var_0._ID34988[var_2], 1 );
            self waittill( var_0._ID34988[var_2] );
        }

        if ( gettime() < var_8 + 250 )
        {

        }
    }

    self notify( "playPhrase_done" );
    _ID11662( self._ID9416._ID13275, self._ID9416._ID13280 );
}

_ID20528( var_0 )
{
    if ( !isdefined( var_0._ID13275 ) || !isdefined( var_0._ID13280 ) )
        return 0;

    if ( var_0._ID13275 == "reaction" && var_0._ID13280 == "friendlyfire" )
        return 1;

    return 0;
}

_ID20919( var_0 )
{
    self endon( "death" );
    wait 25;
    _ID7924( var_0 );
}

_ID7924( var_0 )
{
    self._ID20918 = 0;
    self._ID7337[var_0]._ID13599 = 0;
    self._ID7337[var_0]._ID28609 = 0.0;
    self._ID24798[var_0] = gettime() + anim._ID13276[var_0]["self"];
}

_ID22539( var_0, var_1, var_2 )
{
    anim endon( "battlechatter disabled" );
    var_3 = var_0._ID35507;
    var_4 = var_0.team;
    var_0._ID20918 = 1;
    var_0 thread _ID20919( var_1 );
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

    anim._ID22021[var_4] = gettime();

    if ( isalive( var_0 ) )
        var_0 _ID7924( var_1 );

    var_3._ID24798[var_1] = gettime() + anim._ID13276[var_1]["squad"];
}

_ID39693( var_0, var_1 )
{
    if ( gettime() - self._ID35539[var_0]._ID21903 > 10000 )
    {
        var_2 = 0;

        for ( var_3 = 0; var_3 < self._ID23465.size; var_3++ )
        {
            if ( self._ID23465[var_3] != var_1 && isalive( self._ID23465[var_3].enemy ) && isdefined( self._ID23465[var_3].enemy._ID35507 ) && self._ID23465[var_3].enemy._ID35507._ID1010 == var_0 )
                var_2 = 1;
        }

        if ( !var_2 )
        {
            self._ID35539[var_0]._ID14364 = gettime();
            self._ID35539[var_0]._ID6666 = 0;
        }
    }

    self._ID35539[var_0]._ID21903 = gettime();
}

_ID6880( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( isplayernumber( self ) )
        return 0;

    if ( distance( level.player.origin, self.origin ) > level._ID46718 )
        return 0;

    if ( !isdefined( self._ID4912 ) || !self._ID4912 )
        return 0;

    if ( isdefined( var_2 ) && var_2 >= 1 )
        return 1;

    if ( gettime() + anim._ID13276[var_0]["self"] < self._ID24798[var_0] )
        return 0;

    if ( gettime() + anim._ID13276[var_0]["squad"] < self._ID35507._ID24798[var_0] )
        return 0;

    if ( isdefined( var_1 ) && _ID39402( var_0, var_1 ) )
        return 0;

    if ( isdefined( var_1 ) && anim._ID13279[var_0][var_1] < self._ID4944 )
        return 0;

    if ( _ID40759() )
        return _ID46949( var_0, var_1, var_3 );

    return 1;
}

_ID46949( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = "";

    if ( !isdefined( var_1 ) )
        return 0;

    switch ( var_0 )
    {
        case "order":
            if ( var_1 == "action" && var_2 == "coverme" )
                return 1;

            break;
        case "threat":
            if ( var_1 == "infantry" || var_1 == "dog" || var_1 == "rpg" )
                return 1;

            break;
        case "inform":
            if ( var_1 == "attack" && var_2 == "grenade" )
                return 1;
            else if ( var_1 == "incoming" && var_2 == "grenade" )
                return 1;
            else if ( var_1 == "reloading" && var_2 == "generic" )
                return 1;

            break;
        case "reaction":
            if ( var_1 == "casualty" && var_2 == "generic" )
                return 1;

            break;
        default:
            return 0;
    }

    return 0;
}

_ID16330()
{
    var_0 = undefined;
    var_1 = -999999999;

    if ( _ID20974( "custom" ) )
    {
        var_0 = "custom";
        var_1 = self._ID7337["custom"]._ID28609;
    }

    if ( _ID20974( "response" ) )
    {
        if ( self._ID7337["response"]._ID28609 > var_1 )
        {
            var_0 = "response";
            var_1 = self._ID7337["response"]._ID28609;
        }
    }

    if ( _ID20974( "order" ) )
    {
        if ( self._ID7337["order"]._ID28609 > var_1 )
        {
            var_0 = "order";
            var_1 = self._ID7337["order"]._ID28609;
        }
    }

    if ( _ID20974( "threat" ) )
    {
        if ( self._ID7337["threat"]._ID28609 > var_1 )
        {
            var_0 = "threat";
            var_1 = self._ID7337["threat"]._ID28609;
        }
    }

    if ( _ID20974( "inform" ) )
    {
        if ( self._ID7337["inform"]._ID28609 > var_1 )
        {
            var_0 = "inform";
            var_1 = self._ID7337["inform"]._ID28609;
        }
    }

    if ( _ID20974( "reaction" ) )
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
        if ( isdefined( var_1._ID23465[var_3].enemy ) && var_1._ID23465[var_3].enemy == var_0 )
            var_2[var_2.size] = var_1._ID23465[var_3];
    }

    if ( !isdefined( var_2[0] ) )
        return undefined;

    var_4 = undefined;

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_2[var_3] _ID6880( "response" ) )
            return var_4;
    }

    return _ID42237::_ID16182( self.origin, var_2 );
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
        var_6 = _ID16269( var_0[var_2] );

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

    if ( gettime() > self._ID7337[var_0]._ID13599 )
        var_1 += " expired";

    if ( gettime() < self._ID35507._ID24798[var_0] )
        var_1 += " cantspeak";

    if ( var_1 == "" )
        var_1 = " valid";

    return var_1;
}

_ID20744( var_0 )
{
    if ( getdvar( "bcs_filter" + var_0, "off" ) == "on" || getdvar( "bcs_filter" + var_0, "off" ) == "1" )
        return 1;

    return 0;
}

_ID20974( var_0 )
{
    if ( !self._ID35507._ID20820[var_0] && !anim._ID20946[self.team][var_0] && gettime() < self._ID7337[var_0]._ID13599 && gettime() > self._ID35507._ID24798[var_0] )
    {
        if ( !_ID39402( var_0, self._ID7337[var_0]._ID13280 ) )
            return 1;
    }

    return 0;
}

_ID39402( var_0, var_1 )
{
    if ( !isdefined( anim._ID13281[var_0][var_1] ) )
        return 0;

    if ( !isdefined( self._ID35507._ID24802[var_0][var_1] ) )
        return 0;

    if ( gettime() > self._ID35507._ID24802[var_0][var_1] )
        return 0;

    return 1;
}

_ID11662( var_0, var_1 )
{
    if ( !isdefined( anim._ID13281[var_0][var_1] ) )
        return;

    self._ID35507._ID24802[var_0][var_1] = gettime() + anim._ID13281[var_0][var_1];
}

_ID4931()
{
    if ( isplayernumber( self ) )
        return 0;

    if ( _ID20742() )
        return 0;

    return animscripts\utility::_ID20911( self.weapon );
}

_ID20742()
{
    if ( distance( self.origin, level.player.origin ) > 1500 )
        return 0;

    if ( isdefined( _ID16397() ) )
        return 0;

    var_0 = _ID4929();

    if ( !isdefined( var_0 ) )
        return 1;

    if ( !_ID20832() )
        return 0;

    return 1;
}

_ID20832()
{
    var_0 = self.node;

    if ( !isdefined( var_0 ) )
        return 0;

    if ( issubstr( var_0.type, "Cover" ) || issubstr( var_0.type, "Conceal" ) )
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
    var_0 = _ID16556();

    if ( !isdefined( var_0 ) )
        return 0;

    if ( var_0 == "sergeant" || var_0 == "lieutenant" || var_0 == "captain" || var_0 == "sergeant" )
        return 1;

    return 0;
}

_ID4929()
{
    if ( isplayernumber( self ) )
        return self.node;
    else
        return animscripts\utility::_ID16178();
}

_ID12941()
{
    if ( self isbadguy() )
        return 1;
    else
        return 0;
}

_ID16435()
{
    if ( _ID12941() )
        var_0 = self._ID2441;
    else if ( self.team == "allies" )
        var_0 = self.name;
    else
        var_0 = undefined;

    if ( !isdefined( var_0 ) || _ID40759() )
        return undefined;

    var_1 = strtok( var_0, " " );

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
    var_1 = _ID16610( var_0, self.team );
    var_2 = _ID42237::_ID16182( self.origin, var_1 );
    return var_2;
}

_ID16610( var_0, var_1 )
{
    var_2 = [];
    var_3 = getaiarray( var_1 );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        if ( var_3[var_4] == self )
            continue;

        if ( !var_3[var_4] _ID6880( var_0 ) )
            continue;

        var_2[var_2.size] = var_3[var_4];
    }

    return var_2;
}

_ID16571( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( !isdefined( var_2 ) )
        var_2 = "response";

    var_4 = _ID42237::_ID3320( self._ID35507._ID23465 );

    for ( var_5 = 0; var_5 < var_4.size; var_5++ )
    {
        if ( var_4[var_5] == self )
            continue;

        if ( !isalive( var_4[var_5] ) )
            continue;

        if ( distance( self.origin, var_4[var_5].origin ) > var_0 && distance( self.origin, var_4[var_5].origin ) < var_1 && !_ID20967( var_4[var_5] ) && var_4[var_5] _ID6880( var_2 ) )
        {
            var_3 = var_4[var_5];

            if ( _ID6881( var_3 ) )
                break;
        }
    }

    return var_3;
}

_ID16397()
{
    var_0 = _ID15554();
    var_0 = _ID42237::_ID3320( var_0 );

    if ( var_0.size )
    {
        foreach ( var_2 in var_0 )
        {
            if ( !_ID22522( var_2 ) )
                return var_2;
        }

        foreach ( var_2 in var_0 )
        {
            if ( !_ID22523( var_2 ) )
                return var_2;
        }
    }

    return undefined;
}

_ID15554()
{
    var_0 = anim._ID4941;
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( self istouching( var_3 ) && isdefined( var_3._ID22526 ) )
            var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID20543()
{
    var_0 = _ID15554();

    foreach ( var_2 in var_0 )
    {
        if ( !_ID22523( var_2 ) )
            return 1;
    }

    return 0;
}

_ID22522( var_0 )
{
    var_1 = _ID22525( var_0 );

    if ( !isdefined( var_1 ) )
        return 0;

    return 1;
}

_ID22523( var_0 )
{
    var_1 = _ID22525( var_0 );

    if ( !isdefined( var_1 ) )
        return 0;

    var_2 = var_1 + anim._ID13276["threat"]["location_repeat"];

    if ( gettime() < var_2 )
        return 1;

    return 0;
}

_ID22520( var_0 )
{
    anim._ID22527[var_0.classname] = gettime();
}

_ID22525( var_0 )
{
    if ( isdefined( anim._ID22527[var_0.classname] ) )
        return anim._ID22527[var_0.classname];

    return undefined;
}

_ID16567( var_0 )
{
    var_1 = var_0.angles;

    if ( !isplayernumber( var_0 ) )
    {
        var_2 = var_0 _ID4929();

        if ( isdefined( var_2 ) )
            var_1 = var_2.angles;
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
    var_3 = vectortoangles( var_2 );
    var_4 = vectortoangles( var_1 - var_0 );
    var_5 = var_3[1] - var_4[1];
    var_5 += 360;
    var_5 = int( var_5 ) % 360;

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
        case "north":
            var_1 = "n";
            break;
        case "northwest":
            var_1 = "nw";
            break;
        case "west":
            var_1 = "w";
            break;
        case "southwest":
            var_1 = "sw";
            break;
        case "south":
            var_1 = "s";
            break;
        case "southeast":
            var_1 = "se";
            break;
        case "east":
            var_1 = "e";
            break;
        case "northeast":
            var_1 = "ne";
            break;
        case "impossible":
            var_1 = "impossible";
            break;
        default:
            return;
    }

    return var_1;
}

_ID16221( var_0, var_1 )
{
    var_2 = vectortoangles( var_1 - var_0 );
    var_3 = var_2[1];
    var_4 = getnorthyaw();
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
    var_3 = anglestoforward( var_0 );
    var_4 = vectornormalize( var_3 );
    var_5 = vectortoangles( var_4 );
    var_6 = vectortoangles( var_2 - var_1 );
    var_7 = var_5[1] - var_6[1];
    var_7 += 360;
    var_7 = int( var_7 ) % 360;

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
    self._ID34988[self._ID34988.size] = self.owner._ID8774 + "_" + self.owner._ID25173 + "_name_" + var_0;
    anim._ID21955[self.owner.team] = var_0;
    anim._ID21956[self.owner.team] = gettime();
}

_ID2080()
{
    if ( !self.owner _ID6882() )
        return;

    anim._ID21966 = gettime();
    var_0 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_name_player_" + level.player._ID45047 + "_" + level.player._ID4934;
    self._ID34988[self._ID34988.size] = var_0;
    self._ID606 = level.player;
}

_ID2085( var_0 )
{
    self._ID34988[self._ID34988.size] = self.owner._ID8774 + "_" + self.owner._ID25173 + "_rank_" + var_0;
}

_ID6881( var_0 )
{
    if ( _ID12941() )
        return 0;

    if ( !isdefined( var_0._ID4933 ) )
        return 0;

    if ( !isdefined( var_0._ID8774 ) )
        return 0;

    if ( self._ID8774 != var_0._ID8774 )
        return 0;

    if ( _ID24652( var_0 ) )
        return 0;

    var_1 = self._ID8774 + "_" + self._ID25173 + "_name_" + var_0._ID4933;

    if ( soundexists( var_1 ) )
        return 1;

    return 0;
}

_ID24652( var_0 )
{
    if ( anim._ID21955[self.team] == var_0._ID4933 && gettime() - anim._ID21956[self.team] < anim._ID21957 )
        return 1;

    return 0;
}

_ID6882()
{
    if ( _ID12941() )
        return 0;

    if ( !isdefined( level.player._ID4934 ) || !isdefined( level.player._ID45047 ) )
        return 0;

    if ( _ID27565() )
        return 0;

    var_0 = self._ID8774 + "_" + self._ID25173 + "_name_player_" + level.player._ID45047 + "_" + level.player._ID4934;

    if ( soundexists( var_0 ) )
        return 1;

    return 0;
}

_ID27565()
{
    if ( !isdefined( anim._ID21966 ) )
        return 0;

    if ( gettime() - anim._ID21966 >= anim._ID13281["playername"] )
        return 0;

    return 1;
}

_ID20967( var_0 )
{
    if ( isstring( self._ID25173 ) && isstring( var_0._ID25173 ) && self._ID25173 == var_0._ID25173 )
        return 1;
    else if ( !isstring( self._ID25173 ) && !isstring( var_0._ID25173 ) && self._ID25173 == var_0._ID25173 )
        return 1;
    else
        return 0;
}

_ID2106( var_0, var_1 )
{
    var_2 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_threat_" + var_0;

    if ( isdefined( var_1 ) )
        var_2 += ( "_" + var_1 );

    self._ID34988 = _ID42237::_ID3293( self._ID34988, var_2 );
    return 1;
}

_ID2116( var_0 )
{
    var_1 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_exposed_" + var_0;
    self._ID34988[self._ID34988.size] = var_1;
    return 1;
}

_ID2117()
{
    var_0 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_order_action_suppress";
    self._ID34988[self._ID34988.size] = var_0;
    return 1;
}

_ID2108( var_0, var_1 )
{
    var_2 = _ID9213( var_0, var_1 );

    if ( !soundexists( var_2 ) )
        return 0;

    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2112( var_0 )
{
    var_1 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_resp_ack_co_gnrc_" + var_0;

    if ( !soundexists( var_1 ) )
        return 0;

    self._ID34988[self._ID34988.size] = var_1;
    return 1;
}

_ID2111( var_0, var_1, var_2 )
{
    var_3 = undefined;

    foreach ( var_5 in var_2._ID22526 )
    {
        if ( issubstr( var_1, var_5 ) )
        {
            var_3 = var_5;
            break;
        }
    }

    var_7 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_co_";
    var_8 = getsubstr( var_1, var_1.size - 1, var_1.size );
    var_9 = int( var_8 ) + 1;
    var_10 = var_7 + var_3 + "_qa" + var_9;

    if ( !soundexists( var_10 ) )
    {
        if ( randomint( 100 ) < anim._ID13277["response"]["callout_negative"] )
            var_0 animscripts\battlechatter_ai::_ID2089( "callout", "neg", self.owner, 0.9 );
        else
            var_0 animscripts\battlechatter_ai::_ID2089( "exposed", "acquired", self.owner, 0.9 );

        var_2._ID28790 = 1;
        return 0;
    }

    var_0 animscripts\battlechatter_ai::_ID2089( "callout", "QA", self.owner, 0.9, var_10, var_2 );
    self._ID34988[self._ID34988.size] = var_10;
    return 1;
}

_ID9213( var_0, var_1 )
{
    var_2 = "_report";
    var_3 = "_echo";
    var_4 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_";
    var_5 = var_0.size - var_2.size;
    var_6 = self.owner._ID8774 + "_" + var_1._ID25173 + "_";
    var_7 = var_6.size;
    var_8 = getsubstr( var_0, var_7, var_5 );
    var_9 = var_4 + var_8 + var_3;
    return var_9;
}

_ID2107( var_0, var_1 )
{
    var_2 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_callout_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2109( var_0, var_1, var_2 )
{
    var_3 = var_0._ID31267;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_4 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_callout_obj_" + var_3;

    if ( var_2 )
        var_4 += "_y";

    var_4 += ( "_" + var_1 );

    if ( !soundexists( var_4 ) )
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
        var_4 = var_0 _ID16167( self.owner );

        if ( isdefined( var_4 ) )
            var_3 = var_4;
        else
            var_3 = _ID42237::_ID28945( var_2 );
    }

    var_5 = undefined;

    if ( !isdefined( var_0._ID28790 ) && _ID20695( var_3, self.owner ) )
        var_5 = self.owner _ID16546( var_3, 0 );
    else
    {
        var_6 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_";

        if ( !issubstr( var_3, "callout" ) )
            var_6 += "co_";

        var_5 = var_6 + var_3;
    }

    if ( soundexists( var_5 ) )
        var_1 = var_5;

    if ( !isdefined( var_1 ) )
        return 0;

    _ID22520( var_0 );
    self._ID34988[self._ID34988.size] = var_1;
    return 1;
}

_ID2025( var_0, var_1 )
{
    var_2 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_inform_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
}

_ID2088( var_0, var_1 )
{
    var_2 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_response_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2086( var_0, var_1 )
{
    var_2 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_reaction_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2010()
{
    var_0 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_check_fire";
    self._ID34988[self._ID34988.size] = var_0;
    return 1;
}

_ID2105( var_0, var_1 )
{
    var_2 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_taunt";
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID2024()
{
    var_0 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_hostile_burst";
    self._ID34988[self._ID34988.size] = var_0;
    return 1;
}

_ID2077( var_0, var_1 )
{
    var_2 = self.owner._ID8774 + "_" + self.owner._ID25173 + "_order_" + var_0 + "_" + var_1;
    self._ID34988[self._ID34988.size] = var_2;
    return 1;
}

_ID19878( var_0 )
{
    if ( !isdefined( self._ID35539[var_0]._ID6666 ) )
        self._ID35539[var_0]._ID6666 = 0;

    if ( !isdefined( self._ID35539[var_0]._ID14364 ) )
        self._ID35539[var_0]._ID14364 = 2000000000;

    if ( !isdefined( self._ID35539[var_0]._ID21903 ) )
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
    var_3 = spawnstruct();
    var_3.owner = self;
    var_3._ID13280 = var_1;
    var_3._ID13275 = var_0;

    if ( isdefined( var_2 ) )
        var_3._ID28609 = var_2;
    else
        var_3._ID28609 = anim._ID13279[var_0][var_1];

    var_3._ID13599 = gettime() + anim._ID13278[var_0][var_1];
    return var_3;
}

_ID9198()
{
    var_0 = spawnstruct();
    var_0.owner = self;
    var_0._ID34988 = [];
    var_0._ID23003 = 0;
    return var_0;
}

_ID28201( var_0 )
{
    var_1 = anglestoforward( self.angles );
    var_2 = vectornormalize( var_0 - self.origin );
    var_3 = vectordot( var_1, var_2 );
    return var_3 > 0.766;
}

_ID13070( var_0 )
{
    var_1 = _ID16223( self.angles, self.origin, var_0.origin );

    if ( var_1 == "9" || var_1 == "10" || var_1 == "11" || var_1 == "12" || var_1 == "1" || var_1 == "2" || var_1 == "3" )
        return 1;

    return 0;
}

_ID35534()
{
    anim endon( "battlechatter disabled" );
    self endon( "squad_deleting" );

    if ( self.team != "allies" )
    {
        if ( level.script != "af_caves" )
            return;
    }

    while ( self._ID23459 <= 0 )
        wait 0.5;

    var_0 = 0;

    while ( isdefined( self ) )
    {
        if ( !_ID35530( self ) )
        {
            var_0 = 1;
            wait 1;
            continue;
        }
        else if ( self._ID13982 )
        {
            if ( !var_0 )
                wait(randomfloat( anim._ID13987 ));

            if ( var_0 )
                var_0 = 0;

            self._ID13982 = 0;
        }
        else
        {
            if ( !var_0 )
                wait(randomfloatrange( anim._ID13987, anim._ID13986 ));

            if ( var_0 )
                var_0 = 0;
        }

        var_1 = _ID16162( self );

        if ( !isdefined( var_1 ) )
            continue;

        var_2 = var_1._ID40757;
        var_3 = _ID16285( self, var_2 );
        var_4 = _ID16284( var_2, var_3 );

        foreach ( var_8, var_6 in var_4 )
        {
            if ( !var_1 _ID6858() || distance( level.player.origin, var_1.origin ) > anim._ID13981 )
            {
                for ( var_7 = 0; var_7 < self._ID23465.size; var_7++ )
                {
                    var_1 = _ID16162( self );

                    if ( !isdefined( var_1 ) )
                        continue;

                    if ( var_1._ID40757 == var_2 )
                        break;
                }

                if ( !isdefined( var_1 ) || var_1._ID40757 != var_2 )
                    break;
            }

            thread _ID28065( var_1, var_6 );
            self waittill( "burst_line_done" );

            if ( var_8 != var_4.size - 1 )
                wait(randomfloatrange( anim._ID13985, anim._ID13984 ));
        }
    }
}

_ID35530( var_0 )
{
    var_1 = 0;

    foreach ( var_3 in var_0._ID23465 )
    {
        if ( var_3 _ID6858() )
        {
            var_1 = 1;
            break;
        }
    }

    return var_1;
}

_ID6858()
{
    var_0 = 0;

    if ( !isplayernumber( self ) && isalive( self ) && self.classname != "actor_enemy_dog" && _ID40760() && self._ID14542 )
        var_0 = 1;

    return var_0;
}

_ID40760()
{
    if ( isdefined( level._ID4912[self._ID40757] ) && level._ID4912[self._ID40757] )
        return 1;

    return 0;
}

_ID16162( var_0 )
{
    var_1 = undefined;
    var_2 = _ID42237::_ID15567( level.player.origin, var_0._ID23465 );

    foreach ( var_4 in var_2 )
    {
        if ( var_4 _ID6858() )
        {
            var_1 = var_4;

            if ( !isdefined( var_0._ID13983 ) )
                break;

            if ( isdefined( var_0._ID13983 ) && var_0._ID13983 == var_1._ID39468 )
                continue;
        }
    }

    if ( isdefined( var_1 ) )
        var_0._ID13983 = var_1._ID39468;

    return var_1;
}

_ID16285( var_0, var_1 )
{
    var_2 = _ID42237::_ID3320( anim._ID14542[var_1] );

    if ( anim._ID14545.size >= var_2.size )
        anim._ID14545 = [];

    var_3 = undefined;

    foreach ( var_5 in var_2 )
    {
        var_3 = var_5;

        if ( !_ID14547( var_3 ) )
            break;
    }

    anim._ID14545[anim._ID14545.size] = var_3;
    return var_3;
}

_ID14547( var_0 )
{
    if ( !anim._ID14545.size )
        return 0;

    var_1 = 0;

    foreach ( var_3 in anim._ID14545 )
    {
        if ( var_3 == var_0 )
        {
            var_1 = 1;
            break;
        }
    }

    return var_1;
}

_ID16284( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    var_3 = var_2;
    var_4 = [];

    for (;;)
    {
        var_5 = "FB_" + anim._ID8775[var_0] + "_" + var_1 + "_" + var_3;
        var_3++;

        if ( soundexists( var_5 ) )
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
    var_2 = spawn( "script_origin", var_0.origin );
    var_2 linkto( var_0 );
    var_2 playsound( var_1, var_1, 1 );
    var_2 waittill( var_1 );
    var_2 delete();

    if ( isdefined( self ) )
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

    if ( !_ID4913() )
        return;

    var_1 = "^5 ";

    if ( _ID12941() )
        var_1 = "^6 ";

    foreach ( var_3 in var_0 )
    {

    }
}

_ID4921( var_0, var_1 )
{

}

_ID16108( var_0 )
{
    var_1 = self._ID8774 + "_" + self._ID25173 + "_";
    var_2 = getsubstr( var_0, var_1.size, var_0.size );
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

        if ( !isdefined( var_1 ) )
            continue;

        var_2 = "";

        foreach ( var_4 in var_1 )
            var_2 += var_4;

        thread _ID11734( "Location: " + var_2, anim._ID4941[var_0] getorigin(), ( 0, 0, 8 ), ( 1, 1, 1 ) );
    }
}

_ID11734( var_0, var_1, var_2, var_3 )
{
    for (;;)
    {
        if ( distance( level.player.origin, var_1 ) > 2048 )
        {
            wait 0.1;
            continue;
        }

        wait 0.05;
    }
}

_ID11733( var_0, var_1, var_2 )
{
    var_3 = var_0 getorigin();

    for (;;)
    {
        if ( distance( level.player.origin, var_3 ) > 2048 )
        {
            wait 0.1;
            continue;
        }

        var_4 = _ID16221( level.player.origin, var_3 );
        var_4 = _ID24932( var_4 );
        var_5 = _ID16223( level.player.angles, level.player.origin, var_3 );
        var_6 = var_4 + ", " + var_5 + ":00";
        wait 0.05;
    }
}

_ID29780( var_0, var_1 )
{
    var_2 = getaiarray( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];

        if ( !isalive( var_4 ) )
            continue;

        if ( !isdefined( var_4._ID4912 ) )
            continue;

        var_4._ID24798[var_1] = gettime() + 350;
        var_4._ID35507._ID24798[var_1] = gettime() + 350;
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
    if ( !_ID6735() )
        return 0;

    _ID11662( "reaction", "friendlyfire" );
    thread _ID28117();
    return 1;
}

_ID6735( var_0 )
{
    if ( isdefined( self._ID15013 ) )
        return 0;

    if ( !isdefined( self._ID7337 ) )
        return 0;

    if ( !isdefined( self._ID7337["reaction"] ) || !isdefined( self._ID7337["reaction"]._ID13280 ) )
        return 0;

    if ( self._ID7337["reaction"]._ID13280 != "friendlyfire" )
        return 0;

    if ( gettime() > self._ID7337["reaction"]._ID13599 )
        return 0;

    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( var_0 )
    {
        if ( isdefined( self._ID35507._ID24802["reaction"]["friendlyfire"] ) )
        {
            if ( gettime() < self._ID35507._ID24802["reaction"]["friendlyfire"] )
                return 0;
        }
    }

    return 1;
}
