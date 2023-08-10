// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    var_0 = [];
    var_1 = 0;
    var_0 = createmission( "THE_PRICE_OF_WAR" );
    var_0 addlevel( "trainer", 0, "BACK_IN_THE_SADDLE", 1, "FIRST_DAY_OF_SCHOOL" );
    var_0 addlevel( "roadkill", 0, "DANGER_CLOSE", 1, "FIRST_DAY_OF_SCHOOL" );
    var_0 addlevel( "cliffhanger", 0, "COLD_SHOULDER", 1, "BLACK_DIAMOND" );

    if ( getdvarint( "loc_no_airport" ) == 0 )
        var_0 addlevel( "airport", 0, undefined, 1, undefined );

    var_0 addlevel( "favela", 0, "TAGEM_AND_BAGEM", 1, "TURISTAS" );
    var_0 addlevel( "invasion", 0, "ROYAL_WITH_CHEESE", 1, "RED_DAWN" );
    var_0 addlevel( "favela_escape", 0, undefined, 1, "TURISTAS" );
    var_0 addlevel( "arcadia", 0, undefined, 1, "RED_DAWN" );
    var_0 addlevel( "oilrig", 0, undefined, 1, "PRISONER_627" );
    var_0 addlevel( "gulag", 0, "SOAP_ON_A_ROPE", 1, "PRISONER_627" );
    var_0 addlevel( "dcburning", 0, undefined, 1, "HOME_COMING" );
    var_0 addlevel( "contingency", 0, "DESPERATE_TIMES", 1, "ENDS_JUSTIFY_THE_MEANS" );
    var_0 addlevel( "dcemp", 1, undefined, 1, "HOME_COMING" );
    var_0 addlevel( "dc_whitehouse", 0, "HOUSTON_WE_HAVE_A_PROBLEM", 1, "HOME_COMING" );
    var_0 addlevel( "estate", 0, "THE_PAWN", 1, "QUEEN_TAKES_ROOK" );
    var_0 addlevel( "boneyard", 0, "OUT_OF_THE_FRYING_PAN", 1, "QUEEN_TAKES_ROOK" );
    var_0 addlevel( "af_caves", 1, undefined, 1, "OFF_THE_GRID" );
    var_0 addlevel( "af_chase", 1, undefined, 1, "OFF_THE_GRID" );
    var_0 addlevel( "ending", 0, "FOR_THE_RECORD", 1, "OFF_THE_GRID" );
    level._id_B617 = [];
    _id_AE3C( "so_alpha" );
    _id_AE3C( "so_bravo" );
    _id_AE3C( "so_charlie" );
    _id_AE3C( "so_delta" );
    _id_AE3C( "so_echo" );

    if ( maps\_utility::is_specialop() )
    {
        var_2 = createmission( "SPECIAL_OPS" );
        var_2 _id_A954( "so_showers_gulag", 0, 0 );
        var_2 _id_A954( "so_killspree_invasion", 0, 0 );
        var_2 _id_A954( "so_ac130_co_hunted", 0, 0 );
        var_2 _id_A954( "so_killspree_favela", 0, 0 );
        var_2 _id_A954( "so_assault_oilrig", 0, 0 );
        var_2 _id_A954( "so_defense_invasion", 0, 0 );
        var_2 _id_A954( "so_escape_airport", 0, 0 );
        var_2 _id_A954( "so_forest_contingency", 0, 0 );
        var_2 _id_A954( "so_download_arcadia", 0, 0 );
        var_2 _id_A954( "so_demo_so_bridge", 0, 0 );
        var_2 _id_A954( "so_crossing_so_bridge", 0, 0 );
        var_2 _id_A954( "so_snowrace1_cliffhanger", 0, 0 );
        var_2 _id_A954( "so_snowrace2_cliffhanger", 0, 0 );
        var_2 _id_A954( "so_rooftop_contingency", 0, 0 );
        var_2 _id_A954( "so_sabotage_cliffhanger", 0, 0 );
        var_2 _id_A954( "so_defuse_favela_escape", 0, 0 );
        var_2 _id_A954( "so_takeover_estate", 0, 0 );
        var_2 _id_A954( "so_takeover_oilrig", 0, 0 );
        var_2 _id_A954( "so_intel_boneyard", 0, 0 );
        var_2 _id_A954( "so_juggernauts_favela", 0, 0 );
        var_2 _id_A954( "so_hidden_so_ghillies", 0, 0 );
        var_2 _id_A954( "so_chopper_invasion", 0, 0 );
        var_2 _id_A954( "so_killspree_trainer", 0, 0 );
        level._id_AFFE = var_2;
    }

    level.missionsettings = var_0;
}

_id_AE3C( var_0 )
{
    level._id_B617[var_0] = spawnstruct();
    level._id_B617[var_0].ref = var_0;
    level._id_B617[var_0].num = int( tablelookup( "sp/specopstable.csv", 1, var_0, 0 ) ) - 1000;
    level._id_B617[var_0].unlock = int( tablelookup( "sp/specopstable.csv", 1, var_0, 5 ) );
}

debug_test_next_mission()
{
    wait 10;

    while ( getdvarint( "test_next_mission" ) < 1 )
        wait 3;

    _nextmission();
}

_id_D000( var_0, var_1 )
{
    if ( _id_C0C3::_id_AD40() || common_scripts\utility::flag( "has_cheated" ) )
        return;

    if ( getdvar( "mis_cheat" ) == "1" )
        return;
}

_nextmission( var_0 )
{
    level notify( "achievements_level_complete" );

    if ( level.script == "ending" && level._id_AC38 != "credits_1" )
        changelevel( "" );
    else
    {
        if ( !isdefined( var_0 ) )
            var_0 = 0;

        level notify( "nextmission" );
        level.player notify( "levelComplete" );
        level.nextmission = 1;
        level.player enableinvulnerability();

        if ( maps\_utility::arcademode() )
        {
            level._id_AC81 = 1;
            thread _id_D36F::_id_AF95();
            common_scripts\utility::flag_wait( "arcademode_ending_complete" );
        }

        var_1 = undefined;
        setsaveddvar( "ui_nextMission", "1" );
        setdvar( "ui_showPopup", "0" );
        setdvar( "ui_popupString", "" );

        if ( level.script == "ending" )
        {
            level.script = "af_chase";
            _nextmission( 1 );
            level.script = "ending";
        }

        game["previous_map"] = level.script;
        var_1 = level.missionsettings getlevelindex( level.script );

        if ( !( level.script == "af_chase" && var_0 ) && !maps\_utility::achievement_conditions( "IMMORTAL" ) )
        {
            _func_1FC( level.script, var_1 );
            updategamerprofileall();
            check_immortal_achievement();
        }

        maps\_gameskill::auto_adust_zone_complete( "aa_main_" + level.script );

        if ( !isdefined( var_1 ) )
        {
            missionsuccess( level.script );
            return;
        }

        if ( level.script != "ending" && !( level.script == "af_chase" && var_0 ) )
        {
            level.player thread maps\_hud_util::fade_out( 1, undefined );
            soundscripts\_snd::snd_message( "end_mission_fade_to_black" );
            wait 2;
            maps\_utility::level_end_save();
        }

        if ( level.script != "af_chase" || var_0 )
        {
            level.missionsettings setlevelcompleted( var_1 );
            var_3 = updatesppercent();
            updategamerprofile();

            if ( level.missionsettings hasachievement( var_1 ) )
                maps\_utility::giveachievement_wrapper( level.missionsettings getachievement( var_1 ) );

            if ( level.missionsettings haslevelveteranaward( var_1 ) && getlevelcompleted( var_1 ) == 4 && level.missionsettings check_other_haslevelveteranachievement( var_1 ) )
                maps\_utility::giveachievement_wrapper( level.missionsettings getlevelveteranaward( var_1 ) );

            if ( level.missionsettings hasmissionhardenedaward() && level.missionsettings getlowestskill() > 2 )
                maps\_utility::giveachievement_wrapper( level.missionsettings gethardenedaward() );

            level.missionsettings _id_D1B9();
            var_4 = level.missionsettings.levels.size;
        }

        if ( level.script == "af_chase" && var_0 )
            return;

        if ( level.script == "ending" && level._id_AC38 == "credits_1" )
            common_scripts\utility::flag_wait( "af_chase_nextmission" );

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

        if ( maps\_utility::arcademode() )
        {
            if ( !getdvarint( "arcademode_full" ) )
            {
                setsaveddvar( "ui_nextMission", "0" );
                changelevel( "" );
                return;
            }

            if ( level.script == "cargoship" )
            {
                changelevel( "blackout", level.missionsettings getkeepweapons( var_1 ) );
                return;
            }
            else if ( level.script == "airlift" )
            {
                changelevel( "village_assault", level.missionsettings getkeepweapons( var_1 ) );
                return;
            }
            else if ( level.script == "jeepride" )
            {
                changelevel( "airplane", level.missionsettings getkeepweapons( var_1 ) );
                return;
            }
        }

        if ( level.missionsettings skipssuccess( var_1 ) )
        {
            changelevel( level.missionsettings getlevelname( var_4 ), level.missionsettings getkeepweapons( var_1 ) );
            return;
        }

        missionsuccess( level.missionsettings getlevelname( var_4 ), level.missionsettings getkeepweapons( var_1 ) );
    }
}

updatesppercent()
{
    var_0 = int( gettotalpercentcompletesp() * 100 );

    if ( getdvarint( "mis_cheat" ) == 0 )
        level.player setlocalplayerprofiledata( "percentCompleteSP", var_0 );

    return var_0;
}

gettotalpercentcompletesp()
{
    var_0 = max( getstat_easy(), getstat_regular() );
    var_1 = 0.5;
    var_2 = getstat_hardened();
    var_3 = 0.25;
    var_4 = getstat_veteran();
    var_5 = 0.1;
    var_6 = getstat_intel();
    var_7 = 0.15;
    var_8 = 0.0;
    var_8 += var_1 * var_0;
    var_8 += var_3 * var_2;
    var_8 += var_5 * var_4;
    var_8 += var_7 * var_6;
    return var_8;
}

getstat_progression( var_0 )
{
    var_1 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    var_2 = 0;
    var_3 = [];
    var_4 = 0;

    for ( var_5 = 0; var_5 < level.missionsettings.levels.size; var_5++ )
    {
        if ( int( var_1[var_5] ) >= var_0 )
            var_2++;
    }

    var_6 = var_2 / level.missionsettings.levels.size * 100;
    return var_6;
}

getstat_easy()
{
    var_0 = 1;
    return getstat_progression( var_0 );
}

getstat_regular()
{
    var_0 = 2;
    return getstat_progression( var_0 );
}

getstat_hardened()
{
    var_0 = 3;
    return getstat_progression( var_0 );
}

getstat_veteran()
{
    var_0 = 4;
    return getstat_progression( var_0 );
}

getstat_intel()
{
    var_0 = 45;
    var_1 = level.player getlocalplayerprofiledata( "cheatPoints" ) / var_0 * 100;
    return var_1;
}

getlevelcompleted( var_0 )
{
    return int( level.player getlocalplayerprofiledata( "missionHighestDifficulty" )[var_0] );
}

getsolevelcompleted( var_0 )
{
    return int( level.player getlocalplayerprofiledata( "missionSOHighestDifficulty" )[var_0] );
}

_id_B202( var_0 )
{
    var_1 = var_0.size;

    if ( var_1 > level._id_AFFE.levels.size )
        var_1 = level._id_AFFE.levels.size;

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

setlevelcompleted( var_0 )
{
    var_1 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    var_2 = "";
    var_3 = level.gameskill;

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

    _sethighestmissionifnotcheating( var_5 );
    _setmissiondiffstringifnotcheating( var_2 );
    level.player _meth_85D2();
}

_sethighestmissionifnotcheating( var_0 )
{
    if ( _id_C0C3::_id_AD40() || common_scripts\utility::flag( "has_cheated" ) )
        return;

    if ( getdvar( "mis_cheat" ) == "1" )
        return;

    level.player setlocalplayerprofiledata( "highestMission", var_0 );
}

_setmissiondiffstringifnotcheating( var_0 )
{
    if ( _id_C0C3::_id_AD40() || common_scripts\utility::flag( "has_cheated" ) )
        return;

    if ( getdvar( "mis_cheat" ) == "1" )
        return;

    level.player setlocalplayerprofiledata( "missionHighestDifficulty", var_0 );
}

getlevelskill( var_0 )
{
    var_1 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    return int( var_1[var_0] );
}

getmissiondvarstring( var_0 )
{
    if ( var_0 < 9 )
        return "mis_0" + ( var_0 + 1 );
    else
        return "mis_" + ( var_0 + 1 );
}

getlowestskill()
{
    var_0 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    var_1 = 4;

    for ( var_2 = 0; var_2 < self.levels.size; var_2++ )
    {
        if ( level.missionsettings.levels[var_2].name != "airport" )
        {
            if ( int( var_0[var_2] ) < var_1 )
                var_1 = int( var_0[var_2] );
        }
    }

    return var_1;
}

_id_C16F()
{
    var_0 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );

    for ( var_1 = 0; var_1 < self.levels.size; var_1++ )
    {
        if ( int( var_0[var_1] ) == 0 )
            return 0;
    }

    return 1;
}

_id_D1B9()
{
    var_0 = level.player getlocalplayerprofiledata( "missionHighestDifficulty" );
    var_1 = 1;
    var_2 = 1;

    for ( var_3 = 0; var_3 < self.levels.size - 1; var_3++ )
    {
        if ( int( var_0[var_3] ) == 0 )
            var_1 = 0;

        if ( int( var_0[var_3] ) < 3 )
            var_2 = 0;
    }

    if ( var_1 )
        maps\_utility::giveachievement_wrapper( "CAMPAIGN_COMPLETE" );

    if ( var_2 )
        maps\_utility::giveachievement_wrapper( "DEEP_AND_HARD" );
}

createmission( var_0 )
{
    var_1 = spawnstruct();
    var_1.levels = [];
    var_1.prereqs = [];
    var_1.hardenedaward = var_0;
    return var_1;
}

addlevel( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = self.levels.size;
    self.levels[var_7] = spawnstruct();
    self.levels[var_7].name = var_0;
    self.levels[var_7].keepweapons = var_1;
    self.levels[var_7].achievement = var_2;
    self.levels[var_7].skipssuccess = var_3;
    self.levels[var_7].veteran_achievement = var_4;

    if ( isdefined( var_5 ) )
        self.levels[var_7].fade_time = var_5;
}

_id_A954( var_0, var_1, var_2 )
{
    var_3 = self.levels.size;
    self.levels[var_3] = spawnstruct();
    self.levels[var_3].name = var_0;
    self.levels[var_3].achievement = var_1;
    self.levels[var_3].veteran_achievement = var_2;
    var_4 = tablelookup( "sp/specopstable.csv", 1, level.script, 13 );

    if ( var_4 == "" )
        return;

    if ( !isdefined( level._id_B617[var_4]._id_AE25 ) )
        level._id_B617[var_4]._id_AE25 = [];

    var_5 = level._id_B617[var_4]._id_AE25.size;
    level._id_B617[var_4]._id_AE25[var_5] = var_0;
}

addprereq( var_0 )
{
    var_1 = self.prereqs.size;
    self.prereqs[var_1] = var_0;
}

getlevelindex( var_0 )
{
    foreach ( var_3, var_2 in self.levels )
    {
        if ( var_2.name == var_0 )
            return var_3;
    }

    return undefined;
}

getlevelname( var_0 )
{
    return self.levels[var_0].name;
}

getkeepweapons( var_0 )
{
    return self.levels[var_0].keepweapons;
}

getachievement( var_0 )
{
    return self.levels[var_0].achievement;
}

getlevelveteranaward( var_0 )
{
    return self.levels[var_0].veteran_achievement;
}

getfadetime( var_0 )
{
    if ( !isdefined( self.levels[var_0].fade_time ) )
        return undefined;

    return self.levels[var_0].fade_time;
}

haslevelveteranaward( var_0 )
{
    if ( isdefined( self.levels[var_0].veteran_achievement ) )
        return 1;
    else
        return 0;
}

hasachievement( var_0 )
{
    if ( isdefined( self.levels[var_0].achievement ) )
        return 1;
    else
        return 0;
}

check_other_haslevelveteranachievement( var_0 )
{
    for ( var_1 = 0; var_1 < self.levels.size; var_1++ )
    {
        if ( var_1 == var_0 )
            continue;

        if ( !haslevelveteranaward( var_1 ) )
            continue;

        if ( self.levels[var_1].veteran_achievement == self.levels[var_0].veteran_achievement )
        {
            if ( getlevelcompleted( var_1 ) < 4 )
                return 0;
        }
    }

    return 1;
}

skipssuccess( var_0 )
{
    if ( !isdefined( self.levels[var_0].skipssuccess ) )
        return 0;

    return self.levels[var_0].skipssuccess;
}

gethardenedaward()
{
    return self.hardenedaward;
}

hasmissionhardenedaward()
{
    if ( isdefined( self.hardenedaward ) )
        return 1;
    else
        return 0;
}

getnextlevelindex()
{
    for ( var_0 = 0; var_0 < self.levels.size; var_0++ )
    {
        if ( !getlevelskill( var_0 ) )
            return var_0;
    }

    return 0;
}

force_all_complete()
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

clearall()
{
    level.player setlocalplayerprofiledata( "missionHighestDifficulty", "00000000000000000000000000000000000000000000000000" );
    level.player setlocalplayerprofiledata( "highestMission", 1 );
}

credits_end()
{
    if ( isdefined( level._id_AC38 ) && level._id_AC38 == "credits_1" )
    {
        level.player openluimenu( &"MENU_CAMPAIGN_COMPLETED" );
        level.player waittill( "menuresponse" );
    }

    changelevel( "" );
}

_id_AE78()
{
    var_0 = 1;
    var_1 = [];
    var_2 = [];
    var_3[0] = "@MENU_RECRUIT";
    var_3[1] = "@MENU_REGULAR";
    var_3[2] = "@MENU_HARDENED";
    var_3[3] = "@MENU_VETERAN";

    foreach ( var_5 in level.players )
    {
        setdvar( "player_" + var_0 + "_name", var_5.playername );
        setdvar( "player_" + var_0 + "_kills", var_5.stats["kills"] );
        var_6 = var_2.size;
        var_2[var_6] = var_5 maps\_utility::get_player_gameskill();
        setdvar( "player_" + var_0 + "_difficulty", var_3[var_2[var_6]] );
        var_0++;
    }

    if ( !isdefined( level._id_BAE2 ) )
    {
        level._id_BAE2 = 0;
        level._id_CC9E = 0;
    }

    var_8 = ( level._id_CC9E - level._id_BAE2 ) * 0.001;
    setdvar( "elapsed_mission_time", maps\_utility::convert_to_time_string( var_8, 1 ) );

    if ( isdefined( level._id_D487 ) )
    {
        setdvar( "ui_eog_success_heading_player1", "" );
        setdvar( "ui_eog_success_heading_player2", "" );
        _id_D556();
        [[ level._id_D487 ]]();
    }

    if ( isdefined( level._id_CB88 ) && level._id_CB88 )
        setdvar( "ui_eog_custom", 1 );
    else
        setdvar( "ui_eog_custom", 0 );

    if ( maps\_utility::is_coop() )
    {
        _id_D521();

        if ( isdefined( level.player._id_D3E7 ) && level.player._id_D3E7 )
            setdvar( "ui_first_star_player1", level.player._id_D3E7 );

        if ( isdefined( level.player._id_ADB9 ) && level.player._id_ADB9 )
            setdvar( "ui_eog_player1_stars", level.player._id_BC85 );

        if ( isdefined( level.player._id_BF56 ) && level.player._id_BF56 )
            setdvar( "ui_eog_player1_unlock", level.player._id_B197 );

        if ( isdefined( level.player._id_B35C ) && level.player._id_B35C )
            setdvar( "ui_eog_player1_besttime", level.player._id_D492 );

        if ( isdefined( level.player._id_AE96 ) && level.player._id_AE96 )
            setdvar( "ui_eog_player1_noreward", level.player._id_AE96 );

        if ( isdefined( level.player2._id_D3E7 ) && level.player2._id_D3E7 )
            setdvar( "ui_first_star_player2", level.player2._id_D3E7 );

        if ( isdefined( level.player2._id_ADB9 ) && level.player2._id_ADB9 )
            setdvar( "ui_eog_player2_stars", level.player2._id_BC85 );

        if ( isdefined( level.player2._id_BF56 ) && level.player2._id_BF56 )
            setdvar( "ui_eog_player2_unlock", level.player2._id_B197 );

        if ( isdefined( level.player2._id_B35C ) && level.player2._id_B35C )
            setdvar( "ui_eog_player2_besttime", level.player2._id_D492 );

        if ( isdefined( level.player2._id_AE96 ) && level.player2._id_AE96 )
            setdvar( "ui_eog_player2_noreward", level.player2._id_AE96 );

        wait 0.05;
        level.player openpopupmenu( "coop_eog_summary" );
        level.player2 openpopupmenu( "coop_eog_summary2" );
    }
    else
    {
        _id_D521();

        if ( isdefined( level.player._id_D3E7 ) && level.player._id_D3E7 )
            setdvar( "ui_first_star_player1", level.player._id_D3E7 );

        if ( isdefined( level.player._id_ADB9 ) && level.player._id_ADB9 )
            setdvar( "ui_eog_player1_stars", level.player._id_BC85 );

        if ( isdefined( level.player._id_BF56 ) && level.player._id_BF56 )
            setdvar( "ui_eog_player1_unlock", level.player._id_B197 );

        if ( isdefined( level.player._id_B35C ) && level.player._id_B35C )
            setdvar( "ui_eog_player1_besttime", level.player._id_D492 );

        wait 0.05;
        level.player openpopupmenu( "sp_eog_summary" );
    }
}

_id_D556()
{
    if ( isdefined( level._id_D22B ) && level._id_D22B )
        return;

    foreach ( var_1 in level.players )
    {
        if ( !isdefined( level._id_C9EC ) || !level._id_C9EC )
            var_1 _id_AC28();

        if ( !isdefined( level._id_AAEB ) || !level._id_AAEB )
            var_1 _id_B4D9();

        if ( !isdefined( level._id_C7CD ) || !level._id_C7CD )
            var_1 _id_C624();

        if ( maps\_utility::is_coop_online() )
        {
            if ( !isdefined( level._id_CA89 ) || !level._id_CA89 )
            {
                var_2 = maps\_utility::get_other_player( var_1 );
                var_1 _id_B4D9( var_2 );
                var_1 _id_C624( var_2 );
            }
        }
    }
}

_id_AC28()
{
    var_0 = ( level._id_CC9E - level._id_BAE2 ) * 0.001;
    var_1 = maps\_utility::convert_to_time_string( var_0, 1 );
    maps\_utility::_id_D0CA( "@SPECIAL_OPS_UI_TIME", var_1 );
}

_id_B4D9( var_0 )
{
    var_1 = "@SPECIAL_OPS_UI_DIFFICULTY_OTHER";

    if ( !isdefined( var_0 ) )
    {
        var_0 = self;
        var_1 = "@SPECIAL_OPS_UI_DIFFICULTY";
    }

    var_2 = undefined;

    switch ( var_0.gameskill )
    {
        case 1:
        case 0:
            var_2 = "@MENU_REGULAR";
            break;
        case 2:
            var_2 = "@MENU_HARDENED";
            break;
        case 3:
            var_2 = "@MENU_VETERAN";
            break;
    }

    maps\_utility::_id_D0CA( var_1, var_2 );
}

_id_C624( var_0 )
{
    var_1 = "@SPECIAL_OPS_UI_KILLS_OTHER";

    if ( !isdefined( var_0 ) )
    {
        var_0 = self;
        var_1 = "@SPECIAL_OPS_UI_KILLS";
    }

    maps\_utility::_id_D0CA( var_1, var_0.stats["kills"] );
}

_id_D521()
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

end_mission_fade_audio_and_video( var_0 )
{
    if ( !isdefined( var_0 ) || var_0 == 0 )
        return;

    soundscripts\_snd::snd_message( "finish_mission_fade", var_0 );
    var_1 = maps\_hud_util::create_client_overlay( "black", 0, level.player );
    var_1.sort = 100;
    var_1 fadeovertime( var_0 );
    var_1.alpha = 1;
    wait( var_0 );
}

check_immortal_achievement()
{
    for ( var_0 = 0; var_0 < level.missionsettings.levels.size; var_0++ )
    {
        if ( level.missionsettings.levels[var_0].name != "airport" )
        {
            var_1 = level.player getlocalplayerprofiledata( "sp_immortal", var_0 );

            if ( var_1 == "0" )
                return;
        }
    }

    maps\_utility::giveachievement_wrapper( "IMMORTAL" );
}
