// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    var_0 = [];
    var_1 = 0;
    var_0 = _ID9262( "THE_PRICE_OF_WAR" );
    var_0 _ID2048( "trainer", 0, "BACK_IN_THE_SADDLE", 1, "FIRST_DAY_OF_SCHOOL" );
    var_0 _ID2048( "roadkill", 0, "DANGER_CLOSE", 1, "FIRST_DAY_OF_SCHOOL" );
    var_0 _ID2048( "cliffhanger", 0, "COLD_SHOULDER", 1, "BLACK_DIAMOND" );

    if ( getdvarint( "loc_no_airport" ) == 0 )
        var_0 _ID2048( "airport", 0, undefined, 1, undefined );

    var_0 _ID2048( "favela", 0, "TAGEM_AND_BAGEM", 1, "TURISTAS" );
    var_0 _ID2048( "invasion", 0, "ROYAL_WITH_CHEESE", 1, "RED_DAWN" );
    var_0 _ID2048( "favela_escape", 0, undefined, 1, "TURISTAS" );
    var_0 _ID2048( "arcadia", 0, undefined, 1, "RED_DAWN" );
    var_0 _ID2048( "oilrig", 0, undefined, 1, "PRISONER_627" );
    var_0 _ID2048( "gulag", 0, "SOAP_ON_A_ROPE", 1, "PRISONER_627" );
    var_0 _ID2048( "dcburning", 0, undefined, 1, "HOME_COMING" );
    var_0 _ID2048( "contingency", 0, "DESPERATE_TIMES", 1, "ENDS_JUSTIFY_THE_MEANS" );
    var_0 _ID2048( "dcemp", 1, undefined, 1, "HOME_COMING" );
    var_0 _ID2048( "dc_whitehouse", 0, "HOUSTON_WE_HAVE_A_PROBLEM", 1, "HOME_COMING" );
    var_0 _ID2048( "estate", 0, "THE_PAWN", 1, "QUEEN_TAKES_ROOK" );
    var_0 _ID2048( "boneyard", 0, "OUT_OF_THE_FRYING_PAN", 1, "QUEEN_TAKES_ROOK" );
    var_0 _ID2048( "af_caves", 1, undefined, 1, "OFF_THE_GRID" );
    var_0 _ID2048( "af_chase", 1, undefined, 1, "OFF_THE_GRID" );
    var_0 _ID2048( "ending", 0, "FOR_THE_RECORD", 1, "OFF_THE_GRID" );
    level._ID46615 = [];
    _ID44604( "so_alpha" );
    _ID44604( "so_bravo" );
    _ID44604( "so_charlie" );
    _ID44604( "so_delta" );
    _ID44604( "so_echo" );

    if ( _ID42407::_ID20614() )
    {
        var_2 = _ID9262( "SPECIAL_OPS" );
        var_2 _ID43348( "so_showers_gulag", 0, 0 );
        var_2 _ID43348( "so_killspree_invasion", 0, 0 );
        var_2 _ID43348( "so_ac130_co_hunted", 0, 0 );
        var_2 _ID43348( "so_killspree_favela", 0, 0 );
        var_2 _ID43348( "so_assault_oilrig", 0, 0 );
        var_2 _ID43348( "so_defense_invasion", 0, 0 );
        var_2 _ID43348( "so_escape_airport", 0, 0 );
        var_2 _ID43348( "so_forest_contingency", 0, 0 );
        var_2 _ID43348( "so_download_arcadia", 0, 0 );
        var_2 _ID43348( "so_demo_so_bridge", 0, 0 );
        var_2 _ID43348( "so_crossing_so_bridge", 0, 0 );
        var_2 _ID43348( "so_snowrace1_cliffhanger", 0, 0 );
        var_2 _ID43348( "so_snowrace2_cliffhanger", 0, 0 );
        var_2 _ID43348( "so_rooftop_contingency", 0, 0 );
        var_2 _ID43348( "so_sabotage_cliffhanger", 0, 0 );
        var_2 _ID43348( "so_defuse_favela_escape", 0, 0 );
        var_2 _ID43348( "so_takeover_estate", 0, 0 );
        var_2 _ID43348( "so_takeover_oilrig", 0, 0 );
        var_2 _ID43348( "so_intel_boneyard", 0, 0 );
        var_2 _ID43348( "so_juggernauts_favela", 0, 0 );
        var_2 _ID43348( "so_hidden_so_ghillies", 0, 0 );
        var_2 _ID43348( "so_chopper_invasion", 0, 0 );
        var_2 _ID43348( "so_killspree_trainer", 0, 0 );
        level._ID45054 = var_2;
    }

    level._ID23779 = var_0;
}

_ID44604( var_0 )
{
    level._ID46615[var_0] = spawnstruct();
    level._ID46615[var_0]._ID29357 = var_0;
    level._ID46615[var_0]._ID25216 = int( tablelookup( "sp/specopstable.csv", 1, var_0, 0 ) ) - 1000;
    level._ID46615[var_0]._ID39496 = int( tablelookup( "sp/specopstable.csv", 1, var_0, 5 ) );
}

_ID10003()
{
    wait 10;

    while ( getdvarint( "test_next_mission" ) < 1 )
        wait 3;

    _ID1538();
}

_ID53248( var_0, var_1 )
{
    if ( _ID49347::_ID44352() || _ID42237::_ID14385( "has_cheated" ) )
        return;

    if ( getdvar( "mis_cheat" ) == "1" )
        return;
}

_ID1538( var_0 )
{
    level notify( "achievements_level_complete" );

    if ( level.script == "ending" && level._ID44088 != "credits_1" )
        changelevel( "" );
    else
    {
        if ( !isdefined( var_0 ) )
            var_0 = 0;

        level notify( "nextmission" );
        level.player notify( "levelComplete" );
        level._ID24793 = 1;
        level.player enableinvulnerability();

        if ( _ID42407::_ID3270() )
        {
            level._ID44161 = 1;
            thread _ID54127::_ID44949();
            _ID42237::_ID14413( "arcademode_ending_complete" );
        }

        var_1 = undefined;
        setsaveddvar( "ui_nextMission", "1" );
        setdvar( "ui_showPopup", "0" );
        setdvar( "ui_popupString", "" );

        if ( level.script == "ending" )
        {
            level.script = "af_chase";
            _ID1538( 1 );
            level.script = "ending";
        }

        game["previous_map"] = level.script;
        var_1 = level._ID23779 _ID16387( level.script );

        if ( !( level.script == "af_chase" && var_0 ) && !_ID42407::achievement_conditions( "IMMORTAL" ) )
        {
            _func_1fc( level.script, var_1 );
            updategamerprofileall();
            check_immortal_achievement();
        }

        _ID42298::_ID4390( "aa_main_" + level.script );

        if ( !isdefined( var_1 ) )
        {
            missionsuccess( level.script );
            return;
        }

        if ( level.script != "ending" && !( level.script == "af_chase" && var_0 ) )
        {
            level.player thread _ID42313::_ID13798( 1, undefined );
            _ID42475::_ID34575( "end_mission_fade_to_black" );
            wait 2;
            _ID42407::_ID22211();
        }

        if ( level.script != "af_chase" || var_0 )
        {
            level._ID23779 _ID32674( var_1 );
            var_3 = _ID39798();
            updategamerprofile();

            if ( level._ID23779 _ID18198( var_1 ) )
                _ID42407::_ID16864( level._ID23779 _ID16091( var_1 ) );

            if ( level._ID23779 _ID18231( var_1 ) && _ID16386( var_1 ) == 4 && level._ID23779 _ID7389( var_1 ) )
                _ID42407::_ID16864( level._ID23779 _ID16390( var_1 ) );

            if ( level._ID23779 _ID18237() && level._ID23779 _ID16407() > 2 )
                _ID42407::_ID16864( level._ID23779 _ID16325() );

            level._ID23779 _ID53689();
            var_4 = level._ID23779._ID22248.size;
        }

        if ( level.script == "af_chase" && var_0 )
            return;

        if ( level.script == "ending" && level._ID44088 == "credits_1" )
            _ID42237::_ID14413( "af_chase_nextmission" );

        if ( level.script == "airplane" || level.script == "ending" )
        {
            if ( getdvarint( "arcademode_full" ) )
            {
                level.player openluimenu( &"AIRPLANE_CAMPAIGN_COMPLETED" );
                level.player waittill( "menuresponse" );
            }

            setsaveddvar( "ui_nextMission", "0" );
            changelevel( "" );
            return;
        }
        else
            var_4 = var_1 + 1;

        if ( getdvarint( "limited_mode" ) )
        {
            setsaveddvar( "ui_nextMission", "0" );
            changelevel( "" );
            return;
        }

        if ( _ID42407::_ID3270() )
        {
            if ( !getdvarint( "arcademode_full" ) )
            {
                setsaveddvar( "ui_nextMission", "0" );
                changelevel( "" );
                return;
            }

            if ( level.script == "cargoship" )
            {
                changelevel( "blackout", level._ID23779 _ID16353( var_0 ) );
                return;
            }
            else if ( level.script == "airlift" )
            {
                changelevel( "village_assault", level._ID23779 _ID16353( var_0 ) );
                return;
            }
            else if ( level.script == "jeepride" )
            {
                changelevel( "airplane", level._ID23779 _ID16353( var_0 ) );
                return;
            }
        }

        if ( level._ID23779 _ID34245( var_0 ) )
        {
            changelevel( level._ID23779 _ID16388( var_1 ), level._ID23779 _ID16353( var_0 ) );
            return;
        }

        missionsuccess( level._ID23779 _ID16388( var_1 ), level._ID23779 _ID16353( var_0 ) );
    }
}

_ID39798()
{
    var_0 = int( _ID16696() * 100 );

    if ( getdvarint( "mis_cheat" ) == 0 )
        level.player setlocalplayerprofiledata( "percentCompleteSP", var_0 );

    return var_0;
}

_ID16696()
{
    var_0 = max( _ID16624(), _ID16628() );
    var_1 = 0.5;
    var_2 = _ID16625();
    var_3 = 0.25;
    var_4 = _ID16629();
    var_5 = 0.1;
    var_6 = _ID16626();
    var_7 = 0.15;
    var_8 = 0.0;
    var_8 += var_1 * var_0;
    var_8 += var_3 * var_2;
    var_8 += var_5 * var_4;
    var_8 += var_7 * var_6;
    return var_8;
}

_ID16627( var_0 )
{
    var_1 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    var_2 = 0;
    var_3 = [];
    var_4 = 0;

    for ( var_5 = 0; var_5 < level._ID23779._ID22248.size; var_5++ )
    {
        if ( int( var_1[var_5] ) >= var_0 )
            var_2++;
    }

    var_6 = var_2 / level._ID23779._ID22248.size * 100;
    return var_6;
}

_ID16624()
{
    var_0 = 1;
    return _ID16627( var_0 );
}

_ID16628()
{
    var_0 = 2;
    return _ID16627( var_0 );
}

_ID16625()
{
    var_0 = 3;
    return _ID16627( var_0 );
}

_ID16629()
{
    var_0 = 4;
    return _ID16627( var_0 );
}

_ID16626()
{
    var_0 = 45;
    var_1 = level.player getlocalplayerprofiledata( "cheatPoints" ) / var_0 * 100;
    return var_1;
}

_ID16386( var_0 )
{
    return int( level.player getlocalplayerprofiledata( "missionHighestDifficulty" )[var_0] );
}

_ID16594( var_0 )
{
    return int( level.player getlocalplayerprofiledata( "missionSOHighestDifficulty" )[var_0] );
}

_ID45570( var_0 )
{
    var_1 = var_0.size;

    if ( var_1 > level._ID45054._ID22248.size )
        var_1 = level._ID45054._ID22248.size;

    var_2 = 0;

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        if ( int( tablelookup( "sp/specopstable.csv", 0, var_3, 14 ) ) )
            var_2 += max( 0, int( var_0[var_3] ) - 1 );
    }

    if ( int( tablelookup( "sp/specOpsTable.csv", 1, level.script, 14 ) ) == 0 )
        return 0;

    return var_2 == 1;
}

_ID32674( var_0 )
{
    var_1 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    var_2 = "";
    var_3 = level._ID15361;

    if ( level.script == "killhouse" || level.script == "coup" || level.script == "aftermath" )
        var_3 = 3;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        if ( var_4 != var_0 )
        {
            var_2 += var_1[var_4];
            continue;
        }

        if ( var_3 + 1 > int( var_1[var_0] ) )
        {
            var_2 += ( var_3 + 1 );
            continue;
        }

        var_2 += var_1[var_4];
    }

    var_5 = 0;

    for ( var_6 = 0; var_6 < var_2.size; var_6++ )
    {
        if ( int( var_2[var_6] ) > 0 )
            var_5 = var_6;
    }

    _ID1593( var_5 );
    _ID1597( var_2 );
    level.player _meth_85d2();
}

_ID1593( var_0 )
{
    if ( _ID49347::_ID44352() || _ID42237::_ID14385( "has_cheated" ) )
        return;

    if ( getdvar( "mis_cheat" ) == "1" )
        return;

    level.player setlocalplayerprofiledata( "highestMission", var_0 );
}

_ID1597( var_0 )
{
    if ( _ID49347::_ID44352() || _ID42237::_ID14385( "has_cheated" ) )
        return;

    if ( getdvar( "mis_cheat" ) == "1" )
        return;

    level.player setlocalplayerprofiledata( "missionHighestDifficulty", var_0 );
}

_ID16389( var_0 )
{
    var_1 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    return int( var_1[var_0] );
}

_ID16424( var_0 )
{
    if ( var_0 < 9 )
        return "mis_0" + ( var_0 + 1 );
    else
        return "mis_" + ( var_0 + 1 );
}

_ID16407()
{
    var_0 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    var_1 = 4;

    for ( var_2 = 0; var_2 < self._ID22248.size; var_2++ )
    {
        if ( level._ID23779._ID22248[var_2].name != "airport" )
        {
            if ( int( var_0[var_2] ) < var_1 )
                var_1 = int( var_0[var_2] );
        }
    }

    return var_1;
}

_ID49519()
{
    var_0 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );

    for ( var_1 = 0; var_1 < self._ID22248.size; var_1++ )
    {
        if ( int( var_0[var_1] ) == 0 )
            return 0;
    }

    return 1;
}

_ID53689()
{
    var_0 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    var_1 = 1;
    var_2 = 1;

    for ( var_3 = 0; var_3 < self._ID22248.size - 1; var_3++ )
    {
        if ( int( var_0[var_3] ) == 0 )
            var_1 = 0;

        if ( int( var_0[var_3] ) < 3 )
            var_2 = 0;
    }

    if ( var_1 )
        _ID42407::_ID16864( "CAMPAIGN_COMPLETE" );

    if ( var_2 )
        _ID42407::_ID16864( "DEEP_AND_HARD" );
}

_ID9262( var_0 )
{
    var_1 = spawnstruct();
    var_1._ID22248 = [];
    var_1._ID28449 = [];
    var_1._ID18127 = var_0;
    return var_1;
}

_ID2048( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = self._ID22248.size;
    self._ID22248[var_7] = spawnstruct();
    self._ID22248[var_7].name = var_0;
    self._ID22248[var_7]._ID21223 = var_1;
    self._ID22248[var_7]._ID1762 = var_2;
    self._ID22248[var_7]._ID34245 = var_3;
    self._ID22248[var_7]._ID40342 = var_4;

    if ( isdefined( var_5 ) )
        self._ID22248[var_7]._ID13804 = var_5;
}

_ID43348( var_0, var_1, var_2 )
{
    var_3 = self._ID22248.size;
    self._ID22248[var_3] = spawnstruct();
    self._ID22248[var_3].name = var_0;
    self._ID22248[var_3]._ID1762 = var_1;
    self._ID22248[var_3]._ID40342 = var_2;
    var_4 = tablelookup( "sp/specopstable.csv", 1, level.script, 13 );

    if ( var_4 == "" )
        return;

    if ( !isdefined( level._ID46615[var_4]._ID44581 ) )
        level._ID46615[var_4]._ID44581 = [];

    var_5 = level._ID46615[var_4]._ID44581.size;
    level._ID46615[var_4]._ID44581[var_5] = var_0;
}

_ID2084( var_0 )
{
    var_1 = self._ID28449.size;
    self._ID28449[var_1] = var_0;
}

_ID16387( var_0 )
{
    foreach ( var_3, var_2 in self._ID22248 )
    {
        if ( var_2.name == var_0 )
            return var_3;
    }

    return undefined;
}

_ID16388( var_0 )
{
    return self._ID22248[var_0].name;
}

_ID16353( var_0 )
{
    return self._ID22248[var_0]._ID21223;
}

_ID16091( var_0 )
{
    return self._ID22248[var_0]._ID1762;
}

_ID16390( var_0 )
{
    return self._ID22248[var_0]._ID40342;
}

_ID16275( var_0 )
{
    if ( !isdefined( self._ID22248[var_0]._ID13804 ) )
        return undefined;

    return self._ID22248[var_0]._ID13804;
}

_ID18231( var_0 )
{
    if ( isdefined( self._ID22248[var_0]._ID40342 ) )
        return 1;
    else
        return 0;
}

_ID18198( var_0 )
{
    if ( isdefined( self._ID22248[var_0]._ID1762 ) )
        return 1;
    else
        return 0;
}

_ID7389( var_0 )
{
    for ( var_1 = 0; var_1 < self._ID22248.size; var_1++ )
    {
        if ( var_1 == var_0 )
            continue;

        if ( !_ID18231( var_1 ) )
            continue;

        if ( self._ID22248[var_1]._ID40342 == self._ID22248[var_0]._ID40342 )
        {
            if ( _ID16386( var_1 ) < 4 )
                return 0;
        }
    }

    return 1;
}

_ID34245( var_0 )
{
    if ( !isdefined( self._ID22248[var_0]._ID34245 ) )
        return 0;

    return self._ID22248[var_0]._ID34245;
}

_ID16325()
{
    return self._ID18127;
}

_ID18237()
{
    if ( isdefined( self._ID18127 ) )
        return 1;
    else
        return 0;
}

_ID16449()
{
    for ( var_0 = 0; var_0 < self._ID22248.size; var_0++ )
    {
        if ( !_ID16389( var_0 ) )
            return var_0;
    }

    return 0;
}

_ID14731()
{
    var_0 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    var_1 = "";

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( var_2 < 20 )
        {
            var_1 += 2;
            continue;
        }

        var_1 += 0;
    }

    level.player setlocalplayerprofiledata( "missionHighestDifficulty", var_1 );
    level.player setlocalplayerprofiledata( "highestMission", 20 );
}

_ID7909()
{
    level.player setlocalplayerprofiledata( "missionHighestDifficulty", "00000000000000000000000000000000000000000000000000" );
    level.player setlocalplayerprofiledata( "highestMission", 1 );
}

_ID9301()
{
    if ( isdefined( level._ID44088 ) && level._ID44088 == "credits_1" )
    {
        level.player openluimenu( &"MENU_CAMPAIGN_COMPLETED" );
        level.player waittill( "menuresponse" );
    }

    changelevel( "" );
}

_ID44664()
{
    var_0 = 1;
    var_1 = [];
    var_2 = [];
    var_3[0] = "@MENU_RECRUIT";
    var_3[1] = "@MENU_REGULAR";
    var_3[2] = "@MENU_HARDENED";
    var_3[3] = "@MENU_VETERAN";

    foreach ( var_5 in level._ID805 )
    {
        setdvar( "player_" + var_0 + "_name", var_5.playername );
        setdvar( "player_" + var_0 + "_kills", var_5._ID36218["kills"] );
        var_6 = var_2.size;
        var_2[var_6] = var_5 _ID42407::_ID15913();
        setdvar( "player_" + var_0 + "_difficulty", var_3[var_2[var_6]] );
        var_0++;
    }

    if ( !isdefined( level._ID47842 ) )
    {
        level._ID47842 = 0;
        level._ID52382 = 0;
    }

    var_8 = ( level._ID52382 - level._ID47842 ) * 0.001;
    setdvar( "elapsed_mission_time", _ID42407::_ID8614( var_8, 1 ) );

    if ( isdefined( level._ID54407 ) )
    {
        setdvar( "ui_eog_success_heading_player1", "" );
        setdvar( "ui_eog_success_heading_player2", "" );
        _ID54614();
        [[ level._ID54407 ]]();
    }

    if ( isdefined( level._ID52104 ) && level._ID52104 )
        setdvar( "ui_eog_custom", 1 );
    else
        setdvar( "ui_eog_custom", 0 );

    if ( _ID42407::_ID20495() )
    {
        _ID54561();

        if ( isdefined( level.player._ID54247 ) && level.player._ID54247 )
            setdvar( "ui_first_star_player1", level.player._ID54247 );

        if ( isdefined( level.player._ID44473 ) && level.player._ID44473 )
            setdvar( "ui_eog_player1_stars", level.player._ID48261 );

        if ( isdefined( level.player._ID48982 ) && level.player._ID48982 )
            setdvar( "ui_eog_player1_unlock", level.player._ID45463 );

        if ( isdefined( level.player._ID45916 ) && level.player._ID45916 )
            setdvar( "ui_eog_player1_besttime", level.player._ID54418 );

        if ( isdefined( level.player._ID44694 ) && level.player._ID44694 )
            setdvar( "ui_eog_player1_noreward", level.player._ID44694 );

        if ( isdefined( level._ID27742._ID54247 ) && level._ID27742._ID54247 )
            setdvar( "ui_first_star_player2", level._ID27742._ID54247 );

        if ( isdefined( level._ID27742._ID44473 ) && level._ID27742._ID44473 )
            setdvar( "ui_eog_player2_stars", level._ID27742._ID48261 );

        if ( isdefined( level._ID27742._ID48982 ) && level._ID27742._ID48982 )
            setdvar( "ui_eog_player2_unlock", level._ID27742._ID45463 );

        if ( isdefined( level._ID27742._ID45916 ) && level._ID27742._ID45916 )
            setdvar( "ui_eog_player2_besttime", level._ID27742._ID54418 );

        if ( isdefined( level._ID27742._ID44694 ) && level._ID27742._ID44694 )
            setdvar( "ui_eog_player2_noreward", level._ID27742._ID44694 );

        wait 0.05;
        level.player openpopupmenu( "coop_eog_summary" );
        level._ID27742 openpopupmenu( "coop_eog_summary2" );
    }
    else
    {
        _ID54561();

        if ( isdefined( level.player._ID54247 ) && level.player._ID54247 )
            setdvar( "ui_first_star_player1", level.player._ID54247 );

        if ( isdefined( level.player._ID44473 ) && level.player._ID44473 )
            setdvar( "ui_eog_player1_stars", level.player._ID48261 );

        if ( isdefined( level.player._ID48982 ) && level.player._ID48982 )
            setdvar( "ui_eog_player1_unlock", level.player._ID45463 );

        if ( isdefined( level.player._ID45916 ) && level.player._ID45916 )
            setdvar( "ui_eog_player1_besttime", level.player._ID54418 );

        wait 0.05;
        level.player openpopupmenu( "sp_eog_summary" );
    }
}

_ID54614()
{
    if ( isdefined( level._ID53803 ) && level._ID53803 )
        return;

    foreach ( var_1 in level._ID805 )
    {
        if ( !isdefined( level._ID51692 ) || !level._ID51692 )
            var_1 _ID44072();

        if ( !isdefined( level._ID43755 ) || !level._ID43755 )
            var_1 _ID46297();

        if ( !isdefined( level._ID51149 ) || !level._ID51149 )
            var_1 _ID50724();

        if ( _ID42407::_ID20496() )
        {
            if ( !isdefined( level._ID51849 ) || !level._ID51849 )
            {
                var_2 = _ID42407::_ID15882( var_1 );
                var_1 _ID46297( var_2 );
                var_1 _ID50724( var_2 );
            }
        }
    }
}

_ID44072()
{
    var_0 = ( level._ID52382 - level._ID47842 ) * 0.001;
    var_1 = _ID42407::_ID8614( var_0, 1 );
    _ID42407::_ID53450( "@SPECIAL_OPS_UI_TIME", var_1 );
}

_ID46297( var_0 )
{
    var_1 = "@SPECIAL_OPS_UI_DIFFICULTY_OTHER";

    if ( !isdefined( var_0 ) )
    {
        var_0 = self;
        var_1 = "@SPECIAL_OPS_UI_DIFFICULTY";
    }

    var_2 = undefined;

    switch ( var_0._ID15361 )
    {
        case 0:
        case 1:
            var_2 = "@MENU_REGULAR";
            break;
        case 2:
            var_2 = "@MENU_HARDENED";
            break;
        case 3:
            var_2 = "@MENU_VETERAN";
            break;
    }

    _ID42407::_ID53450( var_1, var_2 );
}

_ID50724( var_0 )
{
    var_1 = "@SPECIAL_OPS_UI_KILLS_OTHER";

    if ( !isdefined( var_0 ) )
    {
        var_0 = self;
        var_1 = "@SPECIAL_OPS_UI_KILLS";
    }

    _ID42407::_ID53450( var_1, var_0._ID36218["kills"] );
}

_ID54561()
{
    setdvar( "ui_eog_player1_stars", "" );
    setdvar( "ui_eog_player1_unlock", "" );
    setdvar( "ui_eog_player1_besttime", "" );
    setdvar( "ui_eog_player1_noreward", "" );
    setdvar( "ui_eog_player2_stars", "" );
    setdvar( "ui_eog_player2_unlock", "" );
    setdvar( "ui_eog_player2_besttime", "" );
    setdvar( "ui_eog_player2_noreward", "" );
}

_ID12604( var_0 )
{
    if ( !isdefined( var_0 ) || var_0 == 0 )
        return;

    _ID42475::_ID34575( "finish_mission_fade", var_0 );
    var_1 = _ID42313::_ID9125( "black", 0, level.player );
    var_1.sort = 100;
    var_1 fadeovertime( var_0 );
    var_1.alpha = 1;
    wait(var_0);
}

check_immortal_achievement()
{
    for ( var_0 = 0; var_0 < level._ID23779._ID22248.size; var_0++ )
    {
        if ( level._ID23779._ID22248[var_0].name != "airport" )
        {
            var_1 = level.player getlocalplayerprofiledata( "sp_immortal", var_0 );

            if ( var_1 == "0" )
                return;
        }
    }

    _ID42407::_ID16864( "IMMORTAL" );
}
