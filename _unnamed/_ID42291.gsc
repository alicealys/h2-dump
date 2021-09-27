// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    var_0 = [];
    var_1 = 0;
    var_0 = _unknown_02FD( "THE_PRICE_OF_WAR" );
    var_0 _unknown_0318( "trainer", 0, "BACK_IN_THE_SADDLE", 1, "FIRST_DAY_OF_SCHOOL" );
    var_0 _unknown_032B( "roadkill", 0, "DANGER_CLOSE", 1, "FIRST_DAY_OF_SCHOOL" );
    var_0 _unknown_033E( "cliffhanger", 0, "COLD_SHOULDER", 1, "BLACK_DIAMOND" );

    if ( _func_03A( "loc_no_airport" ) == 0 )
        var_0 _unknown_0354( "airport", 0, undefined, 1, undefined );

    var_0 _unknown_0367( "favela", 0, "TAGEM_AND_BAGEM", 1, "TURISTAS" );
    var_0 _unknown_037A( "invasion", 0, "ROYAL_WITH_CHEESE", 1, "RED_DAWN" );
    var_0 _unknown_038A( "favela_escape", 0, undefined, 1, "TURISTAS" );
    var_0 _unknown_0399( "arcadia", 0, undefined, 1, "RED_DAWN" );
    var_0 _unknown_03A9( "oilrig", 0, undefined, 1, "PRISONER_627" );
    var_0 _unknown_03BC( "gulag", 0, "SOAP_ON_A_ROPE", 1, "PRISONER_627" );
    var_0 _unknown_03CC( "dcburning", 0, undefined, 1, "HOME_COMING" );
    var_0 _unknown_03DE( "contingency", 0, "DESPERATE_TIMES", 1, "ENDS_JUSTIFY_THE_MEANS" );
    var_0 _unknown_03EF( "dcemp", 1, undefined, 1, "HOME_COMING" );
    var_0 _unknown_0402( "dc_whitehouse", 0, "HOUSTON_WE_HAVE_A_PROBLEM", 1, "HOME_COMING" );
    var_0 _unknown_0414( "estate", 0, "THE_PAWN", 1, "QUEEN_TAKES_ROOK" );
    var_0 _unknown_0427( "boneyard", 0, "OUT_OF_THE_FRYING_PAN", 1, "QUEEN_TAKES_ROOK" );
    var_0 _unknown_0438( "af_caves", 1, undefined, 1, "OFF_THE_GRID" );
    var_0 _unknown_0448( "af_chase", 1, undefined, 1, "OFF_THE_GRID" );
    var_0 _unknown_045B( "ending", 0, "FOR_THE_RECORD", 1, "OFF_THE_GRID" );
    level._ID46615 = [];
    _unknown_024A( "so_alpha" );
    _unknown_0252( "so_bravo" );
    _unknown_025A( "so_charlie" );
    _unknown_0262( "so_delta" );
    _unknown_026B( "so_echo" );

    if ( _ID42407::_ID20614() )
    {
        var_2 = _unknown_048D( "SPECIAL_OPS" );
        var_2 _unknown_04BB( "so_showers_gulag", 0, 0 );
        var_2 _unknown_04C5( "so_killspree_invasion", 0, 0 );
        var_2 _unknown_04D0( "so_ac130_co_hunted", 0, 0 );
        var_2 _unknown_04DA( "so_killspree_favela", 0, 0 );
        var_2 _unknown_04E5( "so_assault_oilrig", 0, 0 );
        var_2 _unknown_04EF( "so_defense_invasion", 0, 0 );
        var_2 _unknown_04FA( "so_escape_airport", 0, 0 );
        var_2 _unknown_0504( "so_forest_contingency", 0, 0 );
        var_2 _unknown_050F( "so_download_arcadia", 0, 0 );
        var_2 _unknown_0519( "so_demo_so_bridge", 0, 0 );
        var_2 _unknown_0524( "so_crossing_so_bridge", 0, 0 );
        var_2 _unknown_052E( "so_snowrace1_cliffhanger", 0, 0 );
        var_2 _unknown_0539( "so_snowrace2_cliffhanger", 0, 0 );
        var_2 _unknown_0543( "so_rooftop_contingency", 0, 0 );
        var_2 _unknown_054E( "so_sabotage_cliffhanger", 0, 0 );
        var_2 _unknown_0558( "so_defuse_favela_escape", 0, 0 );
        var_2 _unknown_0563( "so_takeover_estate", 0, 0 );
        var_2 _unknown_056D( "so_takeover_oilrig", 0, 0 );
        var_2 _unknown_0578( "so_intel_boneyard", 0, 0 );
        var_2 _unknown_0582( "so_juggernauts_favela", 0, 0 );
        var_2 _unknown_058D( "so_hidden_so_ghillies", 0, 0 );
        var_2 _unknown_0597( "so_chopper_invasion", 0, 0 );
        var_2 _unknown_05A2( "so_killspree_trainer", 0, 0 );
        level._ID45054 = var_2;
    }

    level._ID23779 = var_0;
}

_ID44604( var_0 )
{
    level._ID46615[var_0] = _func_1A5();
    level._ID46615[var_0]._ID29357 = var_0;
    level._ID46615[var_0]._ID25216 = _func_0C1( _func_1C1( "sp/specopstable.csv", 1, var_0, 0 ) ) - 1000;
    level._ID46615[var_0]._ID39496 = _func_0C1( _func_1C1( "sp/specopstable.csv", 1, var_0, 5 ) );
}

_ID10003()
{
    wait 10;

    while ( _func_03A( "test_next_mission" ) < 1 )
        wait 3;

    _unknown_03EB();
}

_ID53248( var_0, var_1 )
{
    if ( _ID49347::_ID44352() || _ID42237::_ID14385( "has_cheated" ) )
        return;

    if ( _func_039( "mis_cheat" ) == "1" )
        return;
}

_ID1538( var_0 )
{
    level notify( "achievements_level_complete" );

    if ( level._ID912 == "ending" && level._ID44088 != "credits_1" )
        _func_057( "" );
    else
    {
        if ( !_func_02F( var_0 ) )
            var_0 = 0;

        level notify( "nextmission" );
        level._ID794 notify( "levelComplete" );
        level._ID24793 = 1;
        level._ID794 _meth_80F6();

        if ( _ID42407::_ID3270() )
        {
            level._ID44161 = 1;
            thread _ID54127::_ID44949();
            _ID42237::_ID14413( "arcademode_ending_complete" );
        }

        var_1 = undefined;
        _func_0DB( "ui_nextMission", "1" );
        _func_034( "ui_showPopup", "0" );
        _func_034( "ui_popupString", "" );

        if ( level._ID912 == "ending" )
        {
            level._ID912 = "af_chase";
            _unknown_049B( 1 );
            level._ID912 = "ending";
        }

        game["previous_map"] = level._ID912;
        var_1 = level._ID23779 _unknown_06E8( level._ID912 );

        if ( !level._ID912 == "af_chase" && var_0 && !_ID42407::achievement_conditions( "IMMORTAL" ) )
        {
            _func_1FC( level._ID912, var_1 );
            _func_004();
            _unknown_090F();
        }

        _ID42298::_ID4390( "aa_main_" + level._ID912 );

        if ( !_func_02F( var_1 ) )
        {
            _func_058( level._ID912 );
            return;
        }

        if ( level._ID912 != "ending" && !level._ID912 == "af_chase" && var_0 )
        {
            level._ID794 thread _ID42313::_ID13798( 1, undefined );
            _ID42475::_ID34575( "end_mission_fade_to_black" );
            wait 2;
            _ID42407::_ID22211();
        }

        if ( level._ID912 != "af_chase" || var_0 )
        {
            level._ID23779 _unknown_0689( var_1 );
            var_3 = _unknown_061C();
            _func_02C();

            if ( level._ID23779 _unknown_07A0( var_1 ) )
                _ID42407::_ID16864( level._ID23779 _unknown_0794( var_1 ) );

            if ( level._ID23779 _ID39798( var_1 ) && _unknown_068C( var_1 ) == 4 && level._ID23779 _unknown_07CD( var_1 ) )
                _ID42407::_ID16864( level._ID23779 _unknown_07C0( var_1 ) );

            if ( level._ID23779 _unknown_0800() && level._ID23779 _unknown_0737() > 2 )
                _ID42407::_ID16864( level._ID23779 _unknown_0813() );

            level._ID23779 _unknown_076D();
            var_4 = level._ID23779._ID22248.size;
        }

        if ( level._ID912 == "af_chase" && var_0 )
            return;

        if ( level._ID912 == "ending" && level._ID44088 == "credits_1" )
            _ID42237::_ID14413( "af_chase_nextmission" );

        if ( level._ID912 == "airplane" || level._ID912 == "ending" )
        {
            if ( _func_03A( "arcademode_full" ) )
            {
                level._ID794 _meth_8500( &"AIRPLANE_CAMPAIGN_COMPLETED" );
                level._ID794 waittill( "menuresponse" );
            }

            _func_0DB( "ui_nextMission", "0" );
            _func_057( "" );
            return;
        }
        else
            var_4 = var_1 + 1;

        if ( _func_03A( "limited_mode" ) )
        {
            _func_0DB( "ui_nextMission", "0" );
            _func_057( "" );
            return;
        }

        if ( _ID42407::_ID3270() )
        {
            if ( !_func_03A( "arcademode_full" ) )
            {
                _func_0DB( "ui_nextMission", "0" );
                _func_057( "" );
                return;
            }

            if ( level._ID912 == "cargoship" )
            {
                _func_057( "blackout", level._ID23779 _unknown_08A2( var_0 ) );
                return;
            }
            else if ( level._ID912 == "airlift" )
            {
                _func_057( "village_assault", level._ID23779 _ID16626( var_0 ) );
                return;
            }
            else if ( level._ID912 == "jeepride" )
            {
                _func_057( "airplane", level._ID23779 _unknown_08D8( var_0 ) );
                return;
            }
        }

        if ( level._ID23779 _unknown_091B( var_0 ) )
        {
            _func_057( level._ID23779 _unknown_08F2( var_1 ), level._ID23779 _unknown_08EF( var_0 ) );
            return;
        }

        _func_058( level._ID23779 _unknown_0904( var_1 ), level._ID23779 _unknown_0900( var_0 ) );
    }
}

_ID39798()
{
    var_0 = _func_0C1( _unknown_07BA() * 100 );

    if ( _func_03A( "mis_cheat" ) == 0 )
        level._ID794 _meth_8220( "percentCompleteSP", var_0 );

    return var_0;
}

_ID16696()
{
    var_0 = _func_0E6( _unknown_0808(), _unknown_0809() );
    var_1 = 0.5;
    var_2 = _unknown_081B();
    var_3 = 0.25;
    var_4 = _unknown_0828();
    var_5 = 0.1;
    var_6 = _unknown_0835();
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
    var_1 = level._ID794 _meth_821F( "missionHighestDifficulty" );
    var_2 = 0;
    var_3 = [];
    var_4 = 0;

    for ( var_5 = 0; var_5 < level._ID23779._ID22248.size; var_5++ )
    {
        if ( _func_0C1( var_1[var_5] ) >= var_0 )
            var_2++;
    }

    var_6 = var_2 / level._ID23779._ID22248.size * 100;
    return var_6;
}

_ID16624()
{
    var_0 = 1;
    return _unknown_087B( var_0 );
}

_ID16628()
{
    var_0 = 2;
    return _unknown_0884( var_0 );
}

_ID16625()
{
    var_0 = 3;
    return _unknown_088E( var_0 );
}

_ID16629()
{
    var_0 = 4;
    return _unknown_0898( var_0 );
}

_ID16626()
{
    var_0 = 45;
    var_1 = level._ID794 _meth_821F( "cheatPoints" ) / var_0 * 100;
    return var_1;
}

_ID16386( var_0 )
{
    return _func_0C1( level._ID794 _meth_821F( "missionHighestDifficulty" )[var_0] );
}

_ID16594( var_0 )
{
    return _func_0C1( level._ID794 _meth_821F( "missionSOHighestDifficulty" )[var_0] );
}

_ID45570( var_0 )
{
    var_1 = var_0.size;

    if ( var_1 > level._ID45054._ID22248.size )
        var_1 = level._ID45054._ID22248.size;

    var_2 = 0;

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        if ( _func_0C1( _func_1C1( "sp/specopstable.csv", 0, var_3, 14 ) ) )
            var_2 += _func_0E6( 0, _func_0C1( var_0[var_3] ) - 1 );
    }

    if ( _func_0C1( _func_1C1( "sp/specOpsTable.csv", 1, level._ID912, 14 ) ) == 0 )
        return 0;

    return var_2 == 1;
}

_ID32674( var_0 )
{
    var_1 = level._ID794 _meth_821F( "missionHighestDifficulty" );
    var_2 = "";
    var_3 = level._ID15361;

    if ( level._ID912 == "killhouse" || level._ID912 == "coup" || level._ID912 == "aftermath" )
        var_3 = 3;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        if ( var_4 != var_0 )
        {
            var_2 += var_1[var_4];
            continue;
        }

        if ( var_3 + 1 > _func_0C1( var_1[var_0] ) )
        {
            var_2 += var_3 + 1;
            continue;
        }

        var_2 += var_1[var_4];
    }

    var_5 = 0;

    for ( var_6 = 0; var_6 < var_2.size; var_6++ )
    {
        if ( _func_0C1( var_2[var_6] ) > 0 )
            var_5 = var_6;
    }

    _unknown_0A23( var_5 );
    _unknown_0A37( var_2 );
    level._ID794 _meth_85D2();
}

_ID1593( var_0 )
{
    if ( _ID49347::_ID44352() || _ID42237::_ID14385( "has_cheated" ) )
        return;

    if ( _func_039( "mis_cheat" ) == "1" )
        return;

    level._ID794 _meth_8220( "highestMission", var_0 );
}

_ID1597( var_0 )
{
    if ( _ID49347::_ID44352() || _ID42237::_ID14385( "has_cheated" ) )
        return;

    if ( _func_039( "mis_cheat" ) == "1" )
        return;

    level._ID794 _meth_8220( "missionHighestDifficulty", var_0 );
}

_ID16389( var_0 )
{
    var_1 = level._ID794 _meth_821F( "missionHighestDifficulty" );
    return _func_0C1( var_1[var_0] );
}

_ID16424( var_0 )
{
    if ( var_0 < 9 )
        return "mis_0" + var_0 + 1;
    else
        return "mis_" + var_0 + 1;
}

_ID16407()
{
    var_0 = level._ID794 _meth_821F( "missionHighestDifficulty" );
    var_1 = 4;

    for ( var_2 = 0; var_2 < self._ID22248.size; var_2++ )
    {
        if ( level._ID23779._ID22248[var_2]._ID680 != "airport" )
        {
            if ( _func_0C1( var_0[var_2] ) < var_1 )
                var_1 = _func_0C1( var_0[var_2] );
        }
    }

    return var_1;
}

_ID49519()
{
    var_0 = level._ID794 _meth_821F( "missionHighestDifficulty" );

    for ( var_1 = 0; var_1 < self._ID22248.size; var_1++ )
    {
        if ( _func_0C1( var_0[var_1] ) == 0 )
            return 0;
    }

    return 1;
}

_ID53689()
{
    var_0 = level._ID794 _meth_821F( "missionHighestDifficulty" );
    var_1 = 1;
    var_2 = 1;

    for ( var_3 = 0; var_3 < self._ID22248.size - 1; var_3++ )
    {
        if ( _func_0C1( var_0[var_3] ) == 0 )
            var_1 = 0;

        if ( _func_0C1( var_0[var_3] ) < 3 )
            var_2 = 0;
    }

    if ( var_1 )
        _ID42407::_ID16864( "CAMPAIGN_COMPLETE" );

    if ( var_2 )
        _ID42407::_ID16864( "DEEP_AND_HARD" );
}

_ID9262( var_0 )
{
    var_1 = _func_1A5();
    var_1._ID22248 = [];
    var_1._ID28449 = [];
    var_1._ID18127 = var_0;
    return var_1;
}

_ID2048( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = self._ID22248.size;
    self._ID22248[var_7] = _func_1A5();
    self._ID22248[var_7]._ID680 = var_0;
    self._ID22248[var_7]._ID21223 = var_1;
    self._ID22248[var_7]._ID1762 = var_2;
    self._ID22248[var_7]._ID34245 = var_3;
    self._ID22248[var_7]._ID40342 = var_4;

    if ( _func_02F( var_5 ) )
        self._ID22248[var_7]._ID13804 = var_5;
}

_ID43348( var_0, var_1, var_2 )
{
    var_3 = self._ID22248.size;
    self._ID22248[var_3] = _func_1A5();
    self._ID22248[var_3]._ID680 = var_0;
    self._ID22248[var_3]._ID1762 = var_1;
    self._ID22248[var_3]._ID40342 = var_2;
    var_4 = _func_1C1( "sp/specopstable.csv", 1, level._ID912, 13 );

    if ( var_4 == "" )
        return;

    if ( !_func_02F( level._ID46615[var_4]._ID44581 ) )
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
    var_1 = self._ID22248;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2._ID680 == var_0 )
            return var_3;
    }

    var_clear_2
    return undefined;
}

_ID16388( var_0 )
{
    return self._ID22248[var_0]._ID680;
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
    if ( !_func_02F( self._ID22248[var_0]._ID13804 ) )
        return undefined;

    return self._ID22248[var_0]._ID13804;
}

_ID18231( var_0 )
{
    if ( _func_02F( self._ID22248[var_0]._ID40342 ) )
        return 1;
    else
        return 0;
}

_ID18198( var_0 )
{
    if ( _func_02F( self._ID22248[var_0]._ID1762 ) )
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

        if ( !_unknown_0DB4( var_1 ) )
            continue;

        if ( self._ID22248[var_1]._ID40342 == self._ID22248[var_0]._ID40342 )
        {
            if ( _unknown_0CA7( var_1 ) < 4 )
                return 0;
        }
    }

    return 1;
}

_ID34245( var_0 )
{
    if ( !_func_02F( self._ID22248[var_0]._ID34245 ) )
        return 0;

    return self._ID22248[var_0]._ID34245;
}

_ID16325()
{
    return self._ID18127;
}

_ID18237()
{
    if ( _func_02F( self._ID18127 ) )
        return 1;
    else
        return 0;
}

_ID16449()
{
    for ( var_0 = 0; var_0 < self._ID22248.size; var_0++ )
    {
        if ( !_unknown_0D5F( var_0 ) )
            return var_0;
    }

    return 0;
}

_ID14731()
{
    var_0 = level._ID794 _meth_821F( "missionHighestDifficulty" );
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

    level._ID794 _meth_8220( "missionHighestDifficulty", var_1 );
    level._ID794 _meth_8220( "highestMission", 20 );
}

_ID7909()
{
    level._ID794 _meth_8220( "missionHighestDifficulty", "00000000000000000000000000000000000000000000000000" );
    level._ID794 _meth_8220( "highestMission", 1 );
}

_ID9301()
{
    if ( _func_02F( level._ID44088 ) && level._ID44088 == "credits_1" )
    {
        level._ID794 _meth_8500( &"MENU_CAMPAIGN_COMPLETED" );
        level._ID794 waittill( "menuresponse" );
    }

    _func_057( "" );
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
    var_4 = level._ID805;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];
        _func_034( "player_" + var_0 + "_name", var_5._ID803 );
        _func_034( "player_" + var_0 + "_kills", var_5._ID36218["kills"] );
        var_6 = var_2.size;
        var_2[var_6] = var_5 _ID42407::_ID15913();
        _func_034( "player_" + var_0 + "_difficulty", var_3[var_2[var_6]] );
        var_0++;
    }

    var_clear_3
    var_clear_0

    if ( !_func_02F( level._ID47842 ) )
    {
        level._ID47842 = 0;
        level._ID52382 = 0;
    }

    var_8 = level._ID52382 - level._ID47842 * 0.001;
    _func_034( "elapsed_mission_time", _ID42407::_ID8614( var_8, 1 ) );

    if ( _func_02F( level._ID54407 ) )
    {
        _func_034( "ui_eog_success_heading_player1", "" );
        _func_034( "ui_eog_success_heading_player2", "" );
        _unknown_10BE();
        [[ level._ID54407 ]]();
    }

    if ( _func_02F( level._ID52104 ) && level._ID52104 )
        _func_034( "ui_eog_custom", 1 );
    else
        _func_034( "ui_eog_custom", 0 );

    if ( _ID42407::_ID20495() )
    {
        _unknown_1149();

        if ( _func_02F( level._ID794._ID54247 ) && level._ID794._ID54247 )
            _func_034( "ui_first_star_player1", level._ID794._ID54247 );

        if ( _func_02F( level._ID794._ID44473 ) && level._ID794._ID44473 )
            _func_034( "ui_eog_player1_stars", level._ID794._ID48261 );

        if ( _func_02F( level._ID794._ID48982 ) && level._ID794._ID48982 )
            _func_034( "ui_eog_player1_unlock", level._ID794._ID45463 );

        if ( _func_02F( level._ID794._ID45916 ) && level._ID794._ID45916 )
            _func_034( "ui_eog_player1_besttime", level._ID794._ID54418 );

        if ( _func_02F( level._ID794._ID44694 ) && level._ID794._ID44694 )
            _func_034( "ui_eog_player1_noreward", level._ID794._ID44694 );

        if ( _func_02F( level._ID27742._ID54247 ) && level._ID27742._ID54247 )
            _func_034( "ui_first_star_player2", level._ID27742._ID54247 );

        if ( _func_02F( level._ID27742._ID44473 ) && level._ID27742._ID44473 )
            _func_034( "ui_eog_player2_stars", level._ID27742._ID48261 );

        if ( _func_02F( level._ID27742._ID48982 ) && level._ID27742._ID48982 )
            _func_034( "ui_eog_player2_unlock", level._ID27742._ID45463 );

        if ( _func_02F( level._ID27742._ID45916 ) && level._ID27742._ID45916 )
            _func_034( "ui_eog_player2_besttime", level._ID27742._ID54418 );

        if ( _func_02F( level._ID27742._ID44694 ) && level._ID27742._ID44694 )
            _func_034( "ui_eog_player2_noreward", level._ID27742._ID44694 );

        wait 0.05;
        level._ID794 _meth_832E( "coop_eog_summary" );
        level._ID27742 _meth_832E( "coop_eog_summary2" );
    }
    else
    {
        _unknown_1290();

        if ( _func_02F( level._ID794._ID54247 ) && level._ID794._ID54247 )
            _func_034( "ui_first_star_player1", level._ID794._ID54247 );

        if ( _func_02F( level._ID794._ID44473 ) && level._ID794._ID44473 )
            _func_034( "ui_eog_player1_stars", level._ID794._ID48261 );

        if ( _func_02F( level._ID794._ID48982 ) && level._ID794._ID48982 )
            _func_034( "ui_eog_player1_unlock", level._ID794._ID45463 );

        if ( _func_02F( level._ID794._ID45916 ) && level._ID794._ID45916 )
            _func_034( "ui_eog_player1_besttime", level._ID794._ID54418 );

        wait 0.05;
        level._ID794 _meth_832E( "sp_eog_summary" );
    }
}

_ID54614()
{
    if ( _func_02F( level._ID53803 ) && level._ID53803 )
        return;

    var_0 = level._ID805;

    for ( var_3 = _func_1DA( var_0 ); _func_02F( var_3 ); var_3 = _func_1BF( var_0, var_3 ) )
    {
        var_1 = var_0[var_3];

        if ( !_func_02F( level._ID51692 ) || !level._ID51692 )
            var_1 _unknown_1319();

        if ( !_func_02F( level._ID43755 ) || !level._ID43755 )
            var_1 _unknown_1336();

        if ( !_func_02F( level._ID51149 ) || !level._ID51149 )
            var_1 _unknown_1364();

        if ( _ID42407::_ID20496() )
        {
            if ( !_func_02F( level._ID51849 ) || !level._ID51849 )
            {
                var_2 = _ID42407::_ID15882( var_1 );
                var_1 _unknown_1367( var_2 );
                var_1 _unknown_1389( var_2 );
            }
        }
    }

    var_clear_2
    var_clear_0
}

_ID44072()
{
    var_0 = level._ID52382 - level._ID47842 * 0.001;
    var_1 = _ID42407::_ID8614( var_0, 1 );
    _ID42407::_ID53450( "@SPECIAL_OPS_UI_TIME", var_1 );
}

_ID46297( var_0 )
{
    var_1 = "@SPECIAL_OPS_UI_DIFFICULTY_OTHER";

    if ( !_func_02F( var_0 ) )
    {
        var_0 = self;
        var_1 = "@SPECIAL_OPS_UI_DIFFICULTY";
    }

    var_2 = undefined;

    switch ( var_0._ID15361 )
    {

    }

    _ID42407::_ID53450( var_1, var_2 );
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID50724( var_0 )
{
    var_1 = "@SPECIAL_OPS_UI_KILLS_OTHER";

    if ( !_func_02F( var_0 ) )
    {
        var_0 = self;
        var_1 = "@SPECIAL_OPS_UI_KILLS";
    }

    _ID42407::_ID53450( var_1, var_0._ID36218["kills"] );
}

_ID54561()
{
    _func_034( "ui_eog_player1_stars", "" );
    _func_034( "ui_eog_player1_unlock", "" );
    _func_034( "ui_eog_player1_besttime", "" );
    _func_034( "ui_eog_player1_noreward", "" );
    _func_034( "ui_eog_player2_stars", "" );
    _func_034( "ui_eog_player2_unlock", "" );
    _func_034( "ui_eog_player2_besttime", "" );
    _func_034( "ui_eog_player2_noreward", "" );
}

_ID12604( var_0 )
{
    if ( !_func_02F( var_0 ) || var_0 == 0 )
        return;

    _ID42475::_ID34575( "finish_mission_fade", var_0 );
    var_1 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_1._ID983 = 100;
    var_1 _meth_808B( var_0 );
    var_1._ID55 = 1;
    wait(var_0);
}

check_immortal_achievement()
{
    for ( var_0 = 0; var_0 < level._ID23779._ID22248.size; var_0++ )
    {
        if ( level._ID23779._ID22248[var_0]._ID680 != "airport" )
        {
            var_1 = level._ID794 _meth_821F( "sp_immortal", var_0 );

            if ( var_1 == "0" )
                return;
        }
    }

    _ID42407::_ID16864( "IMMORTAL" );
}
