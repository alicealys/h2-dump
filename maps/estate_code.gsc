// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49840()
{
    level._ID51829 = "mil_frame_charge";
    level._ID47275 = "viewbody_tf141_forest";
    _func_034( "use_improved_breaches", 1 );
    _ID51593::_ID616();
    _ID51464::_ID616();
    maps\estate_anim::_ID616();
    _ID47772::_ID616();
    _ID42323::_ID616();
    level._ID4437 = ::_unknown_1CEF;
    _ID42287::_ID521();
    _ID42367::_ID34366();
    _ID53924::_ID616();
    level._ID48294 = _unknown_0312();
    _func_14E( "claymore" );
    _func_14E( "flash_grenade" );
    _func_14E( "javelin" );
    _func_14E( "javelin_estate_jeep" );
    _func_14E( "cheytac" );
    _func_14C( "projectile_bouncing_betty_grenade" );
    _func_14C( "accessories_gas_canister_highrez" );
    _func_14C( "prop_cigarette_pack" );
    _func_14C( "prop_price_cigar" );
    _func_14C( "weapon_colt_anaconda_animated" );
    _func_14C( "mil_wireless_dsm_small" );
    _func_14C( "electronics_camera_pointandshoot_animated" );
    _func_14C( "hat_opforce_merc_b" );
    _func_001( "minigun_littlebird_spinnup" );
    _func_14D( "estate_bouncingbetty" );
    _func_152( "artillery_rumble" );
    _func_152( "shepherd_pistol" );
    _func_152( "shot_collapse" );
    _func_152( "bodytoss_impact" );
    _func_152( "dsm_rummage" );
    _func_150( &"ESTATE_DSM_FRAME" );
    _func_150( &"ESTATE_DSM_WORKING" );
    _func_150( &"ESTATE_DSM_NETWORK_FOUND" );
    _func_150( &"ESTATE_DSM_IRONBOX" );
    _func_150( &"ESTATE_DSM_BYPASS" );
    _func_150( &"ESTATE_DSM_PROGRESS" );
    _func_150( &"ESTATE_DSM_SLASH_TOTALFILES" );
    _func_150( &"ESTATE_DSM_DLTIMELEFT" );
    _func_150( &"ESTATE_DSM_DLTIMELEFT_MINS" );
    _func_150( &"ESTATE_DSM_DLTIMELEFT_SECS" );
    _func_150( &"ESTATE_DSM_DL_RATEMETER" );
    _func_150( &"ESTATE_DSM_DLRATE" );
    _func_150( &"ESTATE_DSM_DESTROYED_BY_PLAYER" );
    _func_150( &"ESTATE_DSM_DESTROYED_BY_AI_GUNFIRE" );
    _func_150( &"ESTATE_DSM_DESTROYED_BY_DESERTION" );
    _func_150( &"ESTATE_LEARN_PRONE" );
    _func_150( &"ESTATE_LEARN_PRONE_TOGGLE" );
    _func_150( &"ESTATE_LEARN_PRONE_HOLDDOWN" );
    _func_150( &"ESTATE_USE_CLAYMORE_HINT" );
    _func_150( &"ESTATE_REMIND_PRONE_LINE1" );
    _func_150( &"ESTATE_REMIND_PRONE_LINE2" );
    _func_150( &"ESTATE_REMIND_PRONE_LINE2_TOGGLE" );
    _func_150( &"ESTATE_REMIND_PRONE_LINE2_HOLDDOWN" );
    _func_14F( "h1_hud_tutorial_blur" );
    _func_14F( "h1_hud_tutorial_border" );
    _func_14F( "h2_hud_ssdd_stats_blur" );
    _func_14F( "h2_hud_ssdd_stats_border" );
    maps\estate_aud::_ID616();
    maps\estate_lighting::_ID616();
    level._ID47413 = 0;
    level._ID9550 = 1;
    level._ID54741 = 0;
    level._ID43592 = 0;
    level._ID49349 = 7;
    level._ID46220 = 15;
    level._ID51842 = 0;
    level._ID6879 = 1;
    _ID42272::_ID33575( "compass_map_estate" );
    level._ID30909["mortar"]["incomming"] = "mortar_incoming";
    level._ID30909["mortar"]["dirt"] = "mortar_explosion_dirt";
    level._ID53514 = 1;
    _ID42407::_ID1895( "claymore_hint", &"ESTATE_USE_CLAYMORE_HINT", ::_unknown_1E8B, undefined, "medium_background" );
    _ID42407::_ID1865( "mineavoid_hint_toggle", &"ESTATE_LEARN_PRONE", ::_unknown_0317, &"ESTATE_LEARN_PRONE_TOGGLE", undefined, "medium_background" );
    _ID42407::_ID1865( "mineavoid_hint_holddown", &"ESTATE_LEARN_PRONE", ::_unknown_032E, &"ESTATE_LEARN_PRONE_HOLDDOWN", undefined, "medium_background" );
    _ID42407::_ID1895( "mineavoid_hint", &"ESTATE_LEARN_PRONE", ::_unknown_0342, undefined, "medium_background" );
    level._ID53320 = 0;
    level._ID45472 = 0;
    level._ID47336 = 0;
    level._ID46357 = 4;
    level._ID50850 = 5;
    level._ID43032 = 0;
    level._ID51846 = 3000;
    level._ID54566 = level._ID51846;
    level._ID45784 = 1000;
    level._ID43531 = 0;
    level._ID52361 = 50;
    level._ID44576 = 1000;
    level._ID46917 = 0;
    level._ID49835 = 0;
    level._ID52940 = 3;
    level._ID49061 = 0;
    level._ID49076 = 0;
    level._ID47137 = 30;
    level._ID46536 = 44;
    level._ID45559 = 0;
    _ID42237::_ID30398( "forest_friendly_advance_trig", ::_unknown_0371 );
    _ID42237::_ID30398( "breach_normalguy", ::_unknown_0BB1 );
    _ID42407::_ID3344( "breach_normalguy", ::_unknown_0BC2 );
    _ID42407::_ID3344( "breach_extraguy", ::_unknown_0CEE, 1 );
    _ID42407::_ID3344( "breach_extraguy", ::_unknown_0C3E );
    _ID42407::_ID3344( "breach_enemy_spawner", ::_unknown_0D05 );
    _ID42407::_ID3344( "breach_normalguy", ::_unknown_0D10 );
    thread _unknown_201B();
    thread _unknown_093E();
    thread _unknown_0B54();
    thread _unknown_0B84();
    thread _unknown_0BE7();
    thread _unknown_0C32();
    thread _unknown_1073();
    thread _unknown_10E5();
    thread _unknown_10F7();
    thread _unknown_1881();
    thread _unknown_1957();
    thread _unknown_1974();
    thread _unknown_18A8();
    thread _unknown_1935();
    thread _unknown_1943();
    thread _unknown_1955();
    thread _unknown_1F24();
    thread _unknown_1F38();
    thread _unknown_1F45();
    thread _unknown_1F59();
    thread _unknown_1F92();
    thread _unknown_20C3();
    thread _unknown_20D1();
}

_ID46950()
{
    self endon( "death" );
    var_0 = undefined;

    if ( _func_02F( self._ID31273 ) )
    {
        var_0 = [];
        var_0 = _ID42237::_ID15808();
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2._ID38743 = self;
        }

        var_clear_2
        var_clear_0
    }

    self waittill( "trigger" );
    level._ID53320 = self._ID31259;

    if ( _func_02F( var_0 ) )
    {
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];
            var_2 _meth_80B7();
        }

        var_clear_2
        var_clear_0
    }
    else if ( _func_02F( self._ID38743 ) )
        self._ID38743 _meth_80B7();
}

_ID51871()
{
    if ( level._ID794 _meth_8188() == "prone" )
        return 1;
    else
        return 0;
}

_ID49693()
{
    _ID42237::_ID14400( "ending_flag" );
    _ID42237::_ID14400( "room_1_frontdoor_cleared" );
    _ID42237::_ID14400( "room_1_kitchen_cleared" );
    _ID42237::_ID14400( "room_2_laundry_cleared" );
    _ID42237::_ID14400( "room_3_armory_cleared" );
    _ID42237::_ID14400( "room_5_masterbed_cleared" );
    _ID42237::_ID14400( "slam_zoom_done" );
    _ID42237::_ID14400( "skip_intro" );
    _ID42237::_ID14400( "skip_ambush" );
    _ID42237::_ID14400( "skip_forestfight" );
    _ID42237::_ID14400( "skip_houseapproach" );
    _ID42237::_ID14400( "skip_housebreach" );
    _ID42237::_ID14400( "skip_breachandclear" );
    _ID42237::_ID14400( "skip_housebriefing" );
    _ID42237::_ID14400( "skip_defense" );
    _ID42237::_ID14400( "test_alt_ending" );
    _ID42237::_ID14400( "print_first_objective" );
    _ID42237::_ID14400( "futilejeeps_destroyed" );
    _ID42237::_ID14400( "start_ghost_intro_nav" );
    _ID42237::_ID14400( "downhill_run_enable" );
    _ID42237::_ID14400( "downhill_run_disable" );
    _ID42237::_ID14400( "ambush_shouted" );
    _ID42237::_ID14400( "deploy_rpg_ambush" );
    _ID42237::_ID14400( "deploy_mortar_attack" );
    _ID42237::_ID14400( "gameplay_mine_done" );
    _ID42237::_ID14400( "bouncing_betty_activated" );
    _ID42237::_ID14400( "bouncing_betty_done" );
    _ID42237::_ID14400( "mine_throw_player" );
    _ID42237::_ID14400( "bouncing_betty_player_released" );
    _ID42237::_ID14400( "ambushed_player_back_to_normal" );
    _ID42237::_ID14400( "slow_motion_ambush_done" );
    _ID42237::_ID14400( "spawn_first_ghillies" );
    _ID42237::_ID14400( "smoke_screen_activated" );
    _ID42237::_ID14400( "smoke_screen_assault_activated" );
    _ID42237::_ID14400( "player_exits_smoke" );
    _ID42237::_ID14400( "start_ambush_music" );
    _ID42237::_ID14400( "stop_smokescreens" );
    _ID42237::_ID14400( "ambush_complete" );
    _ID42237::_ID14400( "player_is_out_of_ambush_zone" );
    _ID42237::_ID14400( "forestfight_littlebird_1" );
    _ID42237::_ID14400( "start_early_helicopter" );
    _ID42237::_ID14400( "approaching_house" );
    _ID42237::_ID14400( "deploy_house_defense_jeeps" );
    _ID42237::_ID14400( "autosave_housearrival" );
    _ID42237::_ID14400( "scripted_dialogue_on" );
    _ID42237::_ID14400( "first_free_save" );
    _ID42237::_ID14400( "dialogue_ghost_orders" );
    _ID42237::_ID14400( "dialogue_topfloor_cleared" );
    _ID42237::_ID14400( "dialogue_basement_cleared" );
    _ID42237::_ID14400( "save_the_game_indoors" );
    _ID42237::_ID14400( "save_the_game_downstairs" );
    _ID42237::_ID14400( "foyer_breached_first" );
    _ID42237::_ID14400( "kitchen_breached_first" );
    _ID42237::_ID14400( "basement_breached_first" );
    _ID42237::_ID14400( "breach0_foyerhall_cancel" );
    _ID42237::_ID14400( "breach0_diningroom_cancel" );
    _ID42237::_ID14400( "breach0_bathroomrush_cancel" );
    _ID42237::_ID14400( "ghost_begins_sweep" );
    _ID42237::_ID14400( "ghost_at_bottom_of_stairs" );
    _ID42237::_ID14400( "ghost_goes_outside" );
    _ID42237::_ID14400( "topfloor_breached" );
    _ID42237::_ID14400( "basement_breached" );
    _ID42237::_ID14400( "armory_breached" );
    _ID42237::_ID14400( "guestroom_breached" );
    _ID42237::_ID14400( "furniture_moving_sounds" );
    _ID42237::_ID14400( "scarecrow_said_upstairs" );
    _ID42237::_ID14400( "mainfloor_cleared" );
    _ID42237::_ID14400( "topfloor_cleared" );
    _ID42237::_ID14400( "basement_cleared" );
    _ID42237::_ID14400( "mainfloor_cleared_confirmed" );
    _ID42237::_ID14400( "basement_cleared_confirmed" );
    _ID42237::_ID14400( "ghost_gives_regroup_order" );
    _ID42237::_ID14400( "house_friendlies_instructions_given" );
    _ID42237::_ID14400( "house_exterior_has_been_breached" );
    _ID42237::_ID14400( "house_interior_breaches_done" );
    _ID42237::_ID14400( "all_enemies_killed_up_to_house_capture" );
    _ID42237::_ID14400( "house_approach_dialogue" );
    _ID42237::_ID14400( "house_perimeter_softened" );
    _ID42237::_ID14400( "house_briefing_is_over" );
    _ID42237::_ID14400( "photographs_done" );
    _ID42237::_ID14400( "house_briefing_dialogue_done" );
    _ID42237::_ID14400( "dsm_ready_to_use" );
    _ID42237::_ID14400( "download_started" );
    _ID42237::_ID14400( "download_files_started" );
    _ID42237::_ID14400( "dsm_exposed" );
    _ID42237::_ID14400( "dsm_destroyed" );
    _ID42237::_ID14400( "download_test" );
    _ID42237::_ID14400( "download_data_initialized" );
    _ID42237::_ID14400( "ozone_to_earlydefense_start" );
    _ID42237::_ID14400( "scarecrow_to_earlydefense_start" );
    _ID42237::_ID14400( "strike_packages_definitely_underway" );
    _ID42237::_ID14400( "abandonment_danger_zone" );
    _ID42237::_ID14400( "player_can_fail_by_desertion" );
    _ID42237::_ID14400( "player_entered_autofail_zone" );
    _ID42237::_ID14400( "dsm_compromised" );
    _ID42237::_ID14400( "skip_house_defense_dialogue" );
    _ID42237::_ID14400( "defense_battle_begins" );
    _ID42237::_ID14400( "defending_dsm" );
    _ID42237::_ID14400( "sniper_in_position" );
    _ID42237::_ID14400( "skip_defense_firstwave" );
    _ID42237::_ID14400( "sniper_attempting_shot" );
    _ID42237::_ID14400( "sniper_shot_complete" );
    _ID42237::_ID14400( "sniper_shooting" );
    _ID42237::_ID14400( "strike_package_birchfield_dialogue" );
    _ID42237::_ID14400( "strike_package_bighelidrop_dialogue" );
    _ID42237::_ID14400( "strike_package_boathouse_dialogue" );
    _ID42237::_ID14400( "strike_package_solarfield_dialogue" );
    _ID42237::_ID14400( "strike_package_md500rush_dialogue" );
    _ID42237::_ID14400( "rpg_stables_dialogue" );
    _ID42237::_ID14400( "rpg_boathouse_dialogue" );
    _ID42237::_ID14400( "rpg_southwest_dialogue" );
    _ID42237::_ID14400( "scarecrow_death_dialogue" );
    _ID42237::_ID14400( "ozone_death_dialogue" );
    _ID42237::_ID14400( "sniper_breaktime_dialogue" );
    _ID42237::_ID14400( "boathouse_invaders_arrived" );
    _ID42237::_ID14400( "activate_package_on_standby" );
    _ID42237::_ID14400( "strike_package_spawned" );
    _ID42237::_ID14400( "strike_component_activated" );
    _ID42237::_ID14400( "activate_component_on_standby" );
    _ID42237::_ID14400( "main_defense_fight_finished" );
    _ID42237::_ID14400( "download_complete" );
    _ID42237::_ID14400( "dsm_recovered" );
    _ID42237::_ID14400( "begin_escape_music" );
    _ID42237::_ID14400( "fence_removed" );
    _ID42237::_ID14400( "player_is_escaping" );
    _ID42237::_ID14400( "cointoss_done" );
    _ID42237::_ID14400( "birchfield_cleared_sector1" );
    _ID42237::_ID14400( "birchfield_cleared_sector2" );
    _ID42237::_ID14400( "ghost_covered_player" );
    _ID42237::_ID14400( "bracketing_mortars_started" );
    _ID42237::_ID14400( "player_retreated_into_birchfield" );
    _ID42237::_ID14400( "point_of_no_return" );
    _ID42237::_ID14400( "finish_line" );
    _ID42237::_ID14400( "begin_ending_music" );
    _ID42237::_ID14400( "play_ending_sequence" );
    _ID42237::_ID14400( "drag_sequence_slacker_check" );
    _ID42237::_ID14400( "drag_sequence_killcount_achieved" );
    _ID42237::_ID14400( "no_slow_mo" );
    _ID42237::_ID14400( "start_playerdrag_sequence" );
    _ID42237::_ID14400( "test_with_pavelow_already_in_place" );
    _ID42237::_ID14400( "thunderone_heli" );
    _ID42237::_ID14400( "enter_the_littlebirds" );
    _ID42237::_ID14400( "made_it_to_lz" );
    _ID42237::_ID14400( "test_whole_ending" );
    _ID42237::_ID14400( "test_ending" );
    _ID42237::_ID14400( "ghost_grabbed_player" );
    _ID42237::_ID14400( "test_ending_body_toss" );
    _ID42237::_ID14400( "begin_overlapped_gasoline_sequence" );
    _ID42237::_ID14400( "cigar_flicked" );
    _ID42237::_ID14400( "cigar_flareup" );
    _ID42237::_ID14400( "end_the_mission" );
    _ID42237::_ID14400( "claymore_hint_printed" );
}

_ID53567()
{
    var_0 = _func_1A1( "player_view_start_1", "targetname" );
    var_1 = _func_1A1( "player_view_start_2", "targetname" );
    var_2 = var_1._ID740 - var_0._ID740;
    var_3 = _func_11A( var_2 );
    return var_3;
}

_ID43284()
{
    level._ID47319 = _ID42407::_ID35168( "ghost", 1 );
    level._ID47319._ID3189 = "ghost";

    if ( !_ID42237::_ID14385( "test_ending" ) )
    {
        level._ID47319 thread _unknown_0BDA();
        level._ID47319._ID764 = 0;
        level._ID47319 thread _ID42407::_ID22746();

        if ( !_ID42237::_ID14385( "skip_houseapproach" ) )
            level._ID47319 _meth_81D6( "crouch" );

        level._ID47319 _meth_81AF( 1 );
        level._ID47319 _ID42407::_ID12467();
        level._ID47319._ID513 = 1;
    }
}

_ID48114()
{
    for (;;)
    {
        var_0 = _ID42407::_ID38929( "downhill_run_enable" );

        if ( var_0 == self )
            break;
    }

    _ID42407::_ID10896();

    for (;;)
    {
        var_0 = _ID42407::_ID38929( "downhill_run_disable" );

        if ( var_0 == self )
            break;
    }

    if ( self == level._ID47319 )
        self _meth_81D6( "stand", "crouch", "prone" );

    _ID42407::_ID12467();
    _ID42407::_ID7892();
}

_ID48698()
{
    level endon( "ghost_leaving_start_area_early" );
    _ID42237::_ID14413( "start_ghost_intro_nav" );
    level notify( "ghost_leaving_start_area_on_cue" );
    var_0 = _func_1A1( "ghost_starter", "targetname" );

    if ( _func_02F( var_0 ) )
        var_0 notify( "trigger" );

    level._ID47319 _meth_81D6( "crouch", "prone", "stand" );
}

_ID44990()
{
    level endon( "ghost_leaving_start_area_on_cue" );
    level notify( "ghost_leaving_start_area_early" );
    var_0 = _func_1A1( "ghost_starter", "targetname" );

    if ( _func_02F( var_0 ) )
        var_0 waittill( "trigger" );

    level._ID47319 _meth_81D6( "crouch", "prone", "stand" );
}

_ID49861()
{
    _ID42407::_ID3344( "starter_friendly", ::_unknown_0D18 );
    var_0 = _func_1A2( "starter_friendly", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID52309()
{
    self._ID513 = 1;
    self _meth_81AF( 1 );
    _ID42407::_ID12467();
    var_0 = _func_02F( self._ID31217 );

    if ( var_0 )
    {
        thread _ID42407::_ID22746();

        if ( self._ID31217 == "Ozone" )
        {
            level._ID45604 = self;
            level._ID45604._ID3189 = "ozone";
            level._ID45604 thread _unknown_0D21();
            level._ID45604 thread _ID46191();
            level._ID45604 thread _unknown_25A9();
        }

        if ( self._ID31217 == "Scarecrow" )
        {
            level._ID46243 = self;
            level._ID46243._ID3189 = "scarecrow";
            level._ID46243 thread _unknown_0D4B();
            level._ID46243 thread _unknown_25FB();
            level._ID46243 thread _unknown_25C9();
        }
    }
}

_ID52872()
{
    _ID42407::_ID3344( "starter_scout", ::_unknown_0DDA );
    var_0 = _func_1A2( "starter_scout", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID50217()
{
    self._ID513 = 1;
    self _meth_81AF( 1 );
    _ID42407::_ID12467();
    thread _unknown_0E0C();
}

_ID47030()
{
    self endon( "death" );
    _ID42237::_ID14413( "ambush_shouted" );
    thread _unknown_27F9();
    _ID42237::_ID14413( "mine_throw_player" );
    wait(_func_0BA( 0.1, 1 ));
    self _meth_8058();
}

_ID48845()
{
    _ID42407::_ID3344( "starter_sniper", ::_unknown_0E53 );
    var_0 = _func_1A2( "starter_sniper", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID53569()
{
    self endon( "death" );
    self._ID513 = 1;
    self _meth_81AF( 1 );
    self _meth_81D6( "crouch" );
    childthread _unknown_2807();
    _ID42237::_ID14413( "player_is_out_of_ambush_zone" );
    self _meth_80B7();
}

_ID48309( var_0 )
{
    _unknown_0E42();
    var_1 = _func_0DE( "allies" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];

        if ( _func_02F( var_3._ID31217 ) )
        {
            if ( var_3._ID31217 == "Ozone" )
            {
                var_4 = _func_0C8( "ozone_" + var_0 + "_start", "targetname" );
                var_3 _meth_81D2( var_4._ID740, var_4._ID65 );
            }

            if ( var_3._ID31217 == "Scarecrow" )
            {
                var_4 = _func_0C8( "scarecrow_" + var_0 + "_start", "targetname" );
                var_3 _meth_81D2( var_4._ID740, var_4._ID65 );
            }

            continue;
        }

        var_3 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID51071()
{
    _ID42407::_ID3343( "perimeter_guard", ::_unknown_0F63 );
}

_ID52776()
{
    level._ID45472++;
    thread _unknown_0F76();
}

_ID43909()
{
    self waittill( "death" );
    level._ID45472--;

    if ( !level._ID45472 )
        _ID42237::_ID14402( "house_perimeter_softened" );
}

_ID54083()
{
    _ID42475::_ID34575( "aud_stop_stealth_infiltration_mix" );
    _ID42475::_ID34575( "start_bouncing_betty_sequence" );
    thread _unknown_107A();
    var_0 = 2;
    var_1 = 0.65;
    var_2 = 0.1;
    var_3 = 0.3;
    var_4 = 10;
    _ID42407::_ID24584();
    _ID42407::_ID34379();
    _ID42407::_ID34377( var_3 );
    _ID42407::_ID34374( var_0 );
    _ID42407::_ID34371();
    _ID42237::_ID14402( "deploy_rpg_ambush" );
    level._ID794 _meth_81F1( var_2 );
    level._ID794 _meth_830F( 0 );
    wait(var_4 * var_3);
    _ID42475::_ID34575( "stop_bouncing_betty_slowmo" );
    _ID42407::_ID34375( var_1 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
    level._ID794 _meth_81F1( 1.0 );
    level._ID794 _meth_830F( 1 );
    _ID42237::_ID14402( "slow_motion_ambush_done" );
}

_ID46232( var_0 )
{
    var_1 = level._ID794 _meth_8346();
    var_1 = ( 0, var_1[1], 0 );
    var_2 = _func_11F( var_1 );
    var_3 = _func_11E( var_1 );
    var_4 = var_3 * -1;
    var_5 = level._ID794._ID740 + var_2 * 96;

    if ( _func_02F( var_0 ) )
    {
        var_6 = level._ID794._ID740 + ( 0, 0, 64 );
        var_7 = level._ID794._ID740 + var_2 * 128 + ( 0, 0, 64 );
        var_8 = var_7 + var_3 * 16;
        var_9 = var_7 + var_4 * 16;
        var_10 = level._ID794._ID740 + var_2 * 128 + ( 0, 0, 28 );
        var_11 = var_10 + var_3 * 16;
        var_12 = var_10 + var_4 * 16;
        var_13 = _func_08F( var_6, var_7, 1, level._ID794 );
        var_14 = _func_08F( var_6, var_8, 1, level._ID794 );
        var_15 = _func_08F( var_6, var_9, 1, level._ID794 );
        var_16 = _func_08F( var_6, var_10, 1, level._ID794 );
        var_17 = _func_08F( var_6, var_11, 1, level._ID794 );
        var_18 = _func_08F( var_6, var_12, 1, level._ID794 );

        if ( var_13 && var_14 && var_15 && var_16 && var_17 && var_18 )
        {
            var_5 = _ID42237::_ID12140( var_5, 200, -200 );
            return var_5;
        }
        else
        {
            var_19 = _func_1A2( "alternate_bb_location", "targetname" );
            var_20 = 128;
            var_21 = 0;
            var_22 = 0;
            var_23 = var_19;

            for ( var_29 = _func_1DA( var_23 ); _func_02F( var_29 ); var_29 = _func_1BF( var_23, var_29 ) )
            {
                var_24 = var_23[var_29];
                var_25 = _func_0F6( level._ID794._ID740 - var_24._ID740 );
                var_26 = level._ID794 _meth_80AF();
                var_27 = var_24._ID740 + ( 0, 0, 6 );
                var_28 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_27, 0.766 );

                if ( var_28 )
                    var_28 = _func_090( var_26, var_27, 1, level._ID794 );

                if ( var_28 )
                    var_21 = 1;
                else
                    var_21 = 0;

                if ( var_25 < var_20 && var_25 > 48 && var_21 )
                {
                    var_22 = 1;
                    var_5 = _ID42237::_ID12140( var_24._ID740, 200, -200 );
                    return var_5;
                }
            }

            var_clear_6
            var_clear_0

            if ( !var_22 )
            {
                var_25 = undefined;
                var_30 = 100000;
                var_31 = undefined;
                var_32 = var_19;

                for ( var_33 = _func_1DA( var_32 ); _func_02F( var_33 ); var_33 = _func_1BF( var_32, var_33 ) )
                {
                    var_24 = var_32[var_33];
                    var_25 = _func_0F6( level._ID794._ID740 - var_24._ID740 );

                    if ( var_25 < var_30 )
                    {
                        var_30 = var_25;
                        var_31 = var_24;
                    }
                }

                var_clear_1
                var_clear_0
                var_5 = _ID42237::_ID12140( var_31._ID740, 200, -200 );
                return var_5;
            }
        }
    }
    else
    {
        var_5 = _ID42237::_ID12140( var_5, 200, -200 );
        return var_5;
    }
}

_ID43365()
{
    wait 0.2;
    var_0 = _func_1A2( "bouncing_betty", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_1359( undefined, undefined, undefined );
        wait(_func_0BA( 0.15, 0.2 ));
    }

    var_clear_2
    var_clear_0
    var_4 = _unknown_126E( "specialPlayerCase" );
    level._ID794 _meth_85A0();

    if ( _func_02F( var_4 ) )
    {
        thread _unknown_14F4( var_4 );
        var_5 = _func_06A( "script_origin", var_4 );
        var_5 thread _unknown_1395( 1, undefined );
    }
    else
    {
        thread _unknown_1511( level._ID794._ID740 );
        var_5 = _func_06A( "script_origin", level._ID794._ID740 );
        var_5 thread _unknown_13B8( 1, undefined, 1 );
    }

    thread _unknown_1399();
    _func_0DB( "objectiveHide", 1 );

    while ( level._ID47413 < var_0.size )
        wait 0.05;

    _ID42237::_ID14402( "ambush_shouted" );
    wait 0.35;
    level._ID47319 _ID42407::_ID10805( "est_gst_ambush" );
    wait 1;
    _func_0DB( "objectiveHide", 0 );
    _ID42237::_ID14402( "bouncing_betty_done" );
}

_ID45922()
{
    if ( level._ID8534 )
    {
        wait 0.6;
        level._ID794 thread _ID42407::_ID11085( "mineavoid_hint" );
    }
    else
    {
        wait 0.1;
        var_0 = "mineavoid_hint";

        if ( _ID42407::_ID20493( "toggleprone" ) )
            var_0 = "mineavoid_hint_toggle";
        else if ( _ID42407::_ID20493( "+prone" ) )
            var_0 = "mineavoid_hint_holddown";
        else if ( _ID42407::_ID20493( "+stance" ) )
            var_0 = "mineavoid_hint";

        if ( var_0 == "mineavoid_hint" )
            level._ID794 thread _ID42407::_ID11085( var_0 );
        else
            level._ID794 thread _ID42407::_ID18684( var_0 );
    }
}

_ID45603( var_0, var_1, var_2 )
{
    _func_156( _ID42237::_ID16299( "bouncing_betty_launch" ), self._ID740 );
    self _meth_80A1( "mine_betty_click" );
    self _meth_80A1( "mine_betty_spin" );
    var_3 = _func_02F( var_1 );
    var_2 = _func_02F( var_2 );

    if ( !var_3 )
        level._ID47413++;
    else
    {
        level._ID6879 = 0;
        level._ID51842++;
    }

    var_4 = undefined;
    var_5 = undefined;

    if ( !var_2 )
    {
        var_4 = _func_06A( "script_model", self._ID740 );
        var_4 _meth_80B8( "projectile_bouncing_betty_grenade" );
        var_4._ID3189 = "bouncingbetty";
        var_4 _meth_811E( level._ID30900["bouncingbetty"] );
        var_4 thread _unknown_16B6();
        _ID42259::_ID3111( var_4, "bouncing_betty_detonate" );
        var_5 = var_4._ID740;

        if ( !var_3 )
            _ID42237::_ID14413( "ambush_shouted" );

        var_4 _meth_80A1( "mine_betty_explode" );
    }

    if ( _func_02F( var_0 ) )
    {
        if ( !var_2 )
            _func_157( _ID42237::_ID16299( "bouncing_betty_explosion" ), var_4, "tag_fx" );
        else
            wait 2;

        var_6 = _func_0DE( "allies" );
        var_7 = var_6;

        for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
        {
            var_8 = var_7[var_9];

            if ( !_func_02F( var_8._ID680 ) )
                continue;

            if ( var_8._ID680 != "Archer" && var_8._ID680 != "Toad" )
                var_8 _ID42407::_ID10226( _func_0B8( 0.15 ), _ID42259::_ID3020, var_8, "exposed_crouch_extendedpainA" );
        }

        var_clear_2
        var_clear_0
        var_4 _meth_80A1( "scn_last_mine_explode" );
        level._ID794 _meth_80B4( "artillery_rumble" );
        _func_190( 0 );

        if ( level._ID794 _meth_8188() == "prone" )
            _ID42237::_ID14402( "mine_throw_player" );
        else
        {
            wait 0.05;
            var_10 = _ID42237::_ID37527( level._ID794 _meth_8188() == "stand", "h2_wpn_death_stand_explosion", "h2_wpn_death_crouch_explosion" );
            level._ID794 _meth_85A8( var_10 );
            waitframe;
            level._ID794 _meth_8058();
            thread _unknown_16A6();
        }
    }
    else
    {
        _func_157( _ID42237::_ID16299( "bouncing_betty_explosion" ), var_4, "tag_fx" );
        var_4 _meth_805A();

        if ( var_3 )
        {
            var_11 = _func_0F6( level._ID794._ID740 - self._ID740 );
            level._ID794 _meth_80B4( "artillery_rumble" );

            if ( var_11 <= self._ID851 )
            {
                if ( level._ID794 _meth_8188() == "prone" )
                {
                    _func_190( 1 );
                    thread _unknown_176D( var_5 );
                    var_12 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65 + ( 0, -95, 0 ), self._ID740, _func_0BC( 180 ) );
                    var_13 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65 + ( 0, 95, 0 ), self._ID740, _func_0BC( 180 ) );
                    var_14 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740, _func_0BC( 10 ) );

                    if ( var_12 )
                        level._ID794 thread _ID42298::_ID17386( "right" );

                    if ( var_13 )
                        level._ID794 thread _ID42298::_ID17386( "left" );

                    if ( var_14 )
                        level._ID794 thread _ID42298::_ID17386( "bottom_b" );

                    thread _unknown_17DC();
                }
                else
                {
                    wait 0.2;

                    if ( _func_1A7( level._ID794 ) )
                    {
                        thread _unknown_1806( var_5 );
                        level notify( "new_quote_string" );
                        var_10 = _ID42237::_ID37527( level._ID794 _meth_8188() == "stand", "h2_wpn_death_stand_explosion", "h2_wpn_death_crouch_explosion" );
                        level._ID794 _meth_85A8( var_10 );
                        waitframe;
                        level._ID794 _meth_8058();
                        thread _unknown_17B8();
                    }
                }
            }
        }
        else
        {
            _func_190( 1 );
            _func_18F( var_5, self._ID851, 1000, 20 );
        }

        _func_190( 0 );
    }

    wait 0.2;

    if ( _func_02F( var_4 ) )
        var_4 _meth_80B7();

    wait 0.5;

    if ( var_3 )
    {
        level._ID51842--;
        level notify( "gameplay_mine_done" );
    }
}

_ID44572()
{
    var_0 = _func_1A1( "forestfight_start_redshirts", "targetname" );
    var_0 waittill( "trigger" );
    _ID42407::_ID4422( "bb_autosave" );
}

_ID52158()
{
    wait 2.5;
    _func_034( "ui_deadquote", "" );
    _func_032( "ui_hidebasedeathquote", 1 );
    var_0 = _func_1AF();
    var_0._ID12329 = "font";
    var_0._ID392 = "default";
    var_0._ID393 = 1;
    var_0._ID1331 = 0;
    var_0._ID1339 = -30;
    var_0._ID44 = "center";
    var_0._ID45 = "middle";
    var_0._ID499 = "center";
    var_0._ID1284 = "middle";
    var_0._ID493 = 1;
    var_0._ID408 = 1;
    var_0._ID55 = 0;
    var_0 _meth_808B( 2 );
    var_0._ID55 = 1;
    var_0 _meth_80D1( &"ESTATE_REMIND_PRONE_LINE1" );
    var_1 = _func_1AF();
    var_1._ID12329 = "font";
    var_1._ID392 = "default";
    var_1._ID393 = 1;
    var_1._ID1331 = 0;
    var_1._ID1339 = -25 + level._ID14720 * var_1._ID393;
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1._ID499 = "center";
    var_1._ID1284 = "middle";
    var_1._ID408 = 1;
    var_1._ID55 = 0;
    var_1 _meth_808B( 2 );
    var_1._ID55 = 1;
    var_1._ID493 = 1;

    if ( level._ID8534 || level._ID794 _ID42237::_ID20583() )
        var_1 _meth_80D1( &"ESTATE_REMIND_PRONE_LINE2" );
    else if ( _ID42407::_ID20493( "toggleprone" ) )
        var_1 _meth_80D1( &"ESTATE_REMIND_PRONE_LINE2_TOGGLE" );
    else if ( _ID42407::_ID20493( "+prone" ) )
        var_1 _meth_80D1( &"ESTATE_REMIND_PRONE_LINE2_HOLDDOWN" );
    else
        var_1 _meth_80D1( &"ESTATE_REMIND_PRONE_LINE2" );
}

_ID53115()
{
    level._ID794 _meth_818E( "estate_bouncingbetty", 3.5 );
    _func_192( 1, 0.8, level._ID794._ID740, 2000 );
    level._ID794._ID511 = 1;
    wait 3.5;
    level._ID794._ID511 = 0;
}

_ID51920()
{
    level._ID794 _meth_8057( _func_0BA( 30, 35 ), self._ID740 );
}

_ID54095( var_0 )
{
    _func_18F( var_0, self._ID851 * 2, 200, 20 );
}

_ID54737()
{
    for (;;)
    {
        level waittill( "gameplay_mine_done" );

        if ( !level._ID51842 )
            level._ID6879 = 1;
    }
}

_ID53502( var_0 )
{
    if ( !_ID42237::_ID14385( "ambush_complete" ) )
        _ID42237::_ID14413( "mine_throw_player" );

    level._ID794 _meth_8334( 1 );
    var_1 = level._ID794._ID740 + ( 0, 0, 40 ) - var_0;
    var_2 = _func_119( var_1 );
    var_3 = 2000;
    thread _unknown_1A8F();
    thread _unknown_1AC8();
    thread _unknown_1AF8();
    var_4 = 0;
    var_5 = _func_1A1( "no_sliding_allowed", "targetname" );

    if ( !level._ID794 _meth_80B0( var_5 ) )
    {
        var_4 = 1;
        level._ID794 thread _ID42407::_ID5026( var_2 * var_3, 10, 0.25 );
    }

    wait 0.5;

    if ( var_4 )
        level._ID794 thread _ID42407::_ID12746();

    _ID42237::_ID14402( "bouncing_betty_player_released" );

    if ( var_4 )
        wait 3.5;

    level._ID794 _meth_8334( 0 );
    _ID42237::_ID14402( "spawn_first_ghillies" );
}

_ID44589()
{
    _ID42475::_ID34575( "start_bouncing_betty_shellshock" );
    level._ID794 _meth_818E( "estate_bouncingbetty", 10 );
    wait 0.1;
    _func_192( 3, 0.2, level._ID794._ID740, 2000 );
    wait 0.2;
    _func_192( 1, 1, level._ID794._ID740, 2000 );
    wait 1;
    level._ID47319 thread _ID42407::_ID10805( "est_gst_targetsleftside" );
    _func_192( 0.5, 0.5, level._ID794._ID740, 2000 );
    wait 0.5;
    _ID42237::_ID14413( "ambushed_player_back_to_normal" );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8121( 1 );
    wait 3;
    level._ID45604 _ID42407::_ID10805( "est_tf1_ambush" );
    _ID42237::_ID14402( "start_ambush_music" );
    wait 2;
    level._ID46243 _ID42407::_ID10805( "est_tf2_ambush" );
    wait 1;
    _ID42237::_ID14402( "deploy_mortar_attack" );
}

_ID48854()
{
    _ID42237::_ID14413( "bouncing_betty_player_released" );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8121( 0 );
    level._ID794 _meth_8123( 1 );
    wait 5;
    _ID42237::_ID14402( "ambushed_player_back_to_normal" );
}

_ID45824()
{
    self endon( "death" );
    var_0 = _func_03D() + 1000;

    while ( _func_03D() < var_0 )
    {
        wait 0.05;
        _func_157( _ID42237::_ID16299( "bouncing_betty_swirl" ), self, "tag_fx_spin1" );
        _func_157( _ID42237::_ID16299( "bouncing_betty_swirl" ), self, "tag_fx_spin3" );
        wait 0.05;
        _func_157( _ID42237::_ID16299( "bouncing_betty_swirl" ), self, "tag_fx_spin2" );
        _func_157( _ID42237::_ID16299( "bouncing_betty_swirl" ), self, "tag_fx_spin4" );
    }
}

_ID44143()
{
    var_0 = _ID42237::_ID16640( "fake_rpg", "targetname" );
    var_1 = var_0;

    for ( var_5 = _func_1DA( var_1 ); _func_02F( var_5 ); var_5 = _func_1BF( var_1, var_5 ) )
    {
        var_2 = var_1[var_5];
        var_3 = _func_1AB( level._ID794, 1000, 512 );
        var_4 = _ID42237::_ID16638( var_2._ID1191, "targetname" );
        _func_1C8( "rpg", var_2._ID740, var_4._ID740 );
        wait(_func_0BA( 0.8, 1.4 ));
    }

    var_clear_4
}

_ID51906()
{
    var_0 = _func_1A2( "bouncing_betty_gameplay", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_1D17();
    }

    var_clear_2
    var_clear_0
}

_ID51052()
{
    level endon( "house_exterior_has_been_breached" );
    var_0 = _func_06A( "script_origin", self._ID740 );
    var_0._ID851 = self._ID851;
    var_0._ID740 = self._ID740;
    var_1 = 0;
    var_2 = 0.15;
    var_3 = 5;

    while ( !var_1 )
    {
        self waittill( "trigger" );
        var_4 = 0;
        var_5 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_0._ID740, _func_0BC( var_3 ) );

        while ( var_5 )
        {
            if ( var_4 >= var_2 )
            {
                var_0 thread _unknown_1B4D( undefined, 1 );
                var_1 = 1;
                level notify( "gameplay_mine_deployed" );
                break;
            }

            var_5 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_0._ID740, _func_0BC( var_3 ) );
            var_4 += 0.05;
            wait 0.05;
        }
    }
}

_ID48778()
{
    level endon( "approaching_house" );
    level endon( "stop_smokescreens" );

    for (;;)
    {
        _ID42237::_ID14413( "smokepot1" );
        _ID42237::_ID14388( "smokepot2" );
        _ID42237::_ID14388( "smokepot3" );
        var_0 = _func_1A2( "smokepot1", "targetname" );
        var_0 = _ID42237::_ID3320( var_0 );
        _unknown_1E5E( "smokepot1", var_0 );
    }
}

_ID51898()
{
    level endon( "approaching_house" );
    level endon( "stop_smokescreens" );

    for (;;)
    {
        _ID42237::_ID14413( "smokepot2" );
        _ID42237::_ID14388( "smokepot1" );
        _ID42237::_ID14388( "smokepot3" );
        var_0 = _func_1A2( "smokepot2", "targetname" );
        var_0 = _ID42237::_ID3320( var_0 );
        _unknown_1E9F( "smokepot2", var_0 );
    }
}

_ID43740()
{
    level endon( "approaching_house" );
    level endon( "stop_smokescreens" );

    for (;;)
    {
        _ID42237::_ID14413( "smokepot3" );
        _ID42237::_ID14388( "smokepot1" );
        _ID42237::_ID14388( "smokepot2" );
        var_0 = _func_1A2( "smokepot3", "targetname" );
        var_0 = _ID42237::_ID3320( var_0 );
        _unknown_1EE1( "smokepot3", var_0 );
    }
}

_ID49327( var_0, var_1 )
{
    level endon( "approaching_house" );
    level endon( "stop_smokescreens" );

    while ( _ID42237::_ID14385( var_0 ) )
    {
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            wait 6;

            if ( level._ID43592 <= level._ID49349 )
            {
                var_3 thread _unknown_3402();
                level._ID43592++;
                thread _unknown_1F3D();
            }
        }

        var_clear_2
        var_clear_0
        wait 18;
    }
}

_ID48138()
{
    wait(level._ID46220);
    level._ID43592--;
}

_ID53173( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );

    if ( var_0 == "early_sniper" )
        _ID42407::_ID3344( var_0, ::_unknown_1FA9 );

    _ID42407::_ID3344( var_0, ::_unknown_1F84 );
    _ID42237::_ID3350( var_1, _ID42407::_ID35014 );
}

_ID46764()
{
    _unknown_201A();
}

_ID47763()
{
    _ID42407::_ID3344( "prowler1", ::_unknown_1FE3 );
    _ID42407::_ID3344( "prowler1", ::_unknown_1FD4 );
    _ID42407::_ID3344( "prowler2", ::_unknown_2010 );
    _ID42407::_ID3344( "prowler2", ::_unknown_1FEA );
    _ID42407::_ID3344( "prowler3", ::_unknown_203B );
    _ID42407::_ID3344( "prowler3", ::_unknown_2001 );
    var_0 = [];
    var_0 = _func_1A2( "prowler1", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_0 = [];
    var_0 = _func_1A2( "prowler2", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_0 = [];
    var_0 = _func_1A2( "prowler3", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID45482()
{
    self endon( "death" );
    _ID42237::_ID14413( "forestfight_littlebird_1" );
    wait(_func_0BA( 1.5, 4.7 ));
    self._ID452 = 2000;
    self._ID14787 = 1;
    var_0 = _func_0B7( 100 );

    if ( var_0 >= 75 )
    {
        for (;;)
        {
            self _meth_81B2( level._ID794._ID740 );
            wait(_func_0BA( 5, 10 ));
        }
    }
    else
    {
        var_1 = _func_0C8( "forestfight_cleanup_enemy_rallypoint", "targetname" );
        self _meth_81B1( var_1 );
    }
}

_ID52149()
{
    thread _unknown_2101();
    thread _unknown_2110();
    _unknown_20FA();
    self._ID513 = 1;
    self _meth_81AF( 1 );
    var_0 = _func_0C8( "prowler1_start", "targetname" );
    var_1 = 5;
    var_2 = 4420;
    var_3 = 2400;
    var_4 = 0.1;
    var_5 = 5;
    var_6 = "forestfight_littlebird_1";
    thread _unknown_2E97( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID50824()
{
    thread _unknown_2146();
    thread _unknown_2155();
    _unknown_213F();
    var_0 = _func_0C8( "prowler2_start", "targetname" );
    var_1 = 4;
    var_2 = 3700;
    var_3 = 2200;
    var_4 = 0.1;
    var_5 = 5;
    var_6 = "forestfight_littlebird_1";
    thread _unknown_2ED3( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID54709()
{
    var_0 = _func_0C8( "prowler3_start", "targetname" );
    thread _unknown_218D();
    thread _unknown_219C();
    var_1 = 3;
    var_2 = 4500;
    var_3 = 3400;
    var_4 = 0.08;
    var_5 = 4;
    var_6 = "forestfight_littlebird_1";
    thread _unknown_2F0B( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID51736()
{
    self endon( "death" );
    self endon( "long_death" );
    self._ID3189 = "ghillie";
    self._ID49 = 1;
    self._ID7._ID28253 = "prone";
    wait(_func_0BA( 0, 0.2 ));
    thread _ID42259::_ID3111( self, "prone_2_stand_firing" );
}

_ID45797()
{
    level._ID54741++;
    self waittill( "death" );
    level._ID54741--;

    if ( level._ID54741 < 3 )
        _ID42237::_ID14402( "stop_smokescreens" );
}

_ID47399()
{
    self endon( "death" );
    _ID42237::_ID14415( "approaching_house", "stop_smokescreens" );
    wait(_func_0BA( 1.5, 2.25 ));
    var_0 = _func_1A1( "futilejeep_javelin_sourcepoint1", "targetname" );
    _ID45456::_ID54623( self );
    self _meth_8058();
}

_ID50573()
{
    var_0 = _func_1A1( "recroom_open_doors", "targetname" );
    var_1 = _func_1A1( "recroom_open_doors_model", "targetname" );
    var_1 _meth_805A();
    level waittill( "breaching_number_4" );
    var_2 = _func_1A1( "recroom_closed_doors", "targetname" );
    var_3 = _func_1A1( "recroom_closed_doors_model", "targetname" );
    var_2 _meth_80B7();
    var_3 _meth_80B7();
    var_1 _meth_8059();
}

_ID52587()
{
    var_0 = _func_1A1( "recroom_open_doors", "targetname" );
    var_1 = _func_1A1( "recroom_open_doors_model", "targetname" );
    var_1 _meth_805A();
    var_2 = _func_1A1( "recroom_closed_doors", "targetname" );
    var_3 = _func_1A1( "recroom_closed_doors_model", "targetname" );
    var_2 _meth_80B7();
    var_3 _meth_80B7();
    var_0 _meth_8059();
}

_ID47558()
{
    var_0 = _func_1A2( "window_brokenglass", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
    level waittill( "breaching_number_3" );
    _ID42475::_ID34575( "handle_breach_sequence", "breaching_number_3" );
    wait 2;
    var_4 = _func_1A1( "paper_window_sightblocker", "targetname" );
    var_4 _meth_80B7();
    var_5 = _func_1A2( "window_newspaper", "targetname" );
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_9 = _func_1A2( "window_pane", "targetname" );
    var_10 = var_9;

    for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
    {
        var_11 = var_10[var_12];
        var_11 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_13 = var_0;

    for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
    {
        var_2 = var_13[var_14];
        var_2 _meth_8059();
    }

    var_clear_1
    var_clear_0
    var_15 = _func_1A2( "window_blinds", "targetname" );
    var_16 = var_15;

    for ( var_18 = _func_1DA( var_16 ); _func_02F( var_18 ); var_18 = _func_1BF( var_16, var_18 ) )
    {
        var_17 = var_16[var_18];
        var_17 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_19 = _func_1A2( "window_smasher", "targetname" );
    var_20 = var_19;

    for ( var_22 = _func_1DA( var_20 ); _func_02F( var_22 ); var_22 = _func_1BF( var_20, var_22 ) )
    {
        var_21 = var_20[var_22];
        _func_18F( var_21._ID740, var_21._ID851, 1000, 1000 );
    }

    var_clear_2
    var_clear_0
}

_ID54304()
{
    _ID42237::_ID14413( "furniture_moving_sounds" );
    level endon( "breaching_number_5" );
    var_0 = _func_1A1( "furniture_moving_sounds_speaker", "targetname" );
    var_0 _ID42407::_ID27079( "scn_estate_furniture_knock_over" );
    var_0 _ID42407::_ID27079( "scn_estate_furniture_slide" );
    var_0 _ID42407::_ID27079( "scn_estate_furniture_slide" );
    wait 3;
    var_0 _ID42407::_ID27079( "scn_estate_furniture_slide" );
    wait 4;
    var_0 _ID42407::_ID27079( "scn_estate_furniture_slide" );
    wait 3;
    var_0 _ID42407::_ID27079( "scn_estate_furniture_slide" );
    wait 5;
    var_0 _ID42407::_ID27079( "scn_estate_furniture_slide" );
}

_ID49410()
{
    level waittill( "breaching_number_" + self._ID31433 );
    wait 2;
    self _meth_809B();
}

_ID51410()
{
    self endon( "death" );
    self._ID764 = 0;
    self._ID513 = 1;
    self._ID464 = 0;

    if ( _func_02F( self._ID916 ) )
    {
        self._ID452 = 128;
        wait(self._ID916);
        self._ID452 = 1000;
    }

    thread _unknown_2551();

    if ( !_func_02F( self._ID922 ) )
        return;

    if ( self._ID922 == "hunter" )
    {
        wait(_func_0BA( 5, 10 ));
        self._ID452 = 10000;
    }

    if ( self._ID922 == "ambusher" )
        self._ID199 = "ambush";
}

_ID51347()
{
    self endon( "death" );
    self._ID4867 = 0;
    wait 3;
    self._ID4867 = 1;
}

_ID45205( var_0 )
{
    var_1 = _func_1A2( "house_pre_breach", "script_noteworthy" );
    var_2 = _func_1A2( "house_post_breach", "script_noteworthy" );

    if ( !_func_02F( var_0 ) || !var_0 )
    {
        _ID42237::_ID3294( var_2, ::_meth_805A );
        _ID42237::_ID3294( var_2, ::_meth_82C9 );
        level waittill( "breaching_number_3" );
    }

    thread _ID42234::_ID13611( "livingroom_post_breach" );
    _ID42237::_ID3294( var_1, ::_meth_805A );
    _ID42237::_ID3294( var_1, ::_meth_82C9 );
    _ID42237::_ID3294( var_2, ::_meth_8059 );
    _ID42237::_ID3294( var_2, ::_meth_82C8 );
}

_ID46191( var_0, var_1 )
{
    level waittill( var_1 );
    var_2 = _func_1A2( "breach_extraguy", "targetname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( !_func_02F( var_4._ID31070 ) )
            continue;

        if ( var_4._ID31070 == var_0 )
        {
            if ( var_4._ID31355 == "mainfloor" )
                level._ID47336++;

            if ( var_4._ID31355 == "topfloor" )
                level._ID46357++;

            if ( var_4._ID31355 == "basement" )
                level._ID50850++;
        }
    }

    var_clear_2
    var_clear_0
}

_ID48223()
{
    var_0 = self._ID31070;
    level notify( var_0 );
}

_ID44928( var_0, var_1, var_2 )
{
    level endon( var_0 );
    _ID42237::_ID14413( var_2 );
    _ID42237::_ID14413( "armory_breached" );
    _ID42237::_ID14402( var_1 );
}

_ID47824( var_0, var_1, var_2 )
{
    level endon( var_0 );
    thread _unknown_26D4( var_0, var_1, var_2 );
    _ID42237::_ID14413( var_1 );
    var_3 = _func_0E0();
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( !_func_02F( var_5._ID31070 ) )
            continue;

        if ( var_5._ID31070 == var_0 )
        {
            if ( var_5._ID31355 == "mainfloor" )
                level notify( "mainfloor_enemy_killed" );

            if ( var_5._ID31355 == "topfloor" )
                level notify( "topfloor_enemy_killed" );

            if ( var_5._ID31355 == "basement" )
                level notify( "basement_enemy_killed" );
        }

        wait 0.05;
    }

    var_clear_2
    var_clear_0
}

_ID46369( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A2( var_0, "targetname" );
    var_4 = undefined;
    level endon( "house_interior_breaches_done" );

    if ( _func_02F( var_1 ) )
        level endon( var_1 );

    level waittill( var_2 );
    var_5 = _func_1A1( var_0, "targetname" );
    var_5 waittill( "trigger" );
    thread _unknown_27BA( var_3 );
}

_ID52243( var_0 )
{
    var_1 = [];
    var_1 = _func_0E0();
    var_2 = [];
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( !_func_02F( var_4._ID31070 ) )
            continue;

        if ( var_4._ID31070 == var_0 )
            var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( var_2, _ID42407::_ID35014 );
}

_ID43781()
{
    var_0 = _func_1A2( "breach_extraguy", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2._ID31070 ) )
            continue;

        if ( var_2._ID31070 == "breach0_bathroomrush" )
            var_2 thread _ID42407::_ID1947( ::_unknown_2866 );
    }

    var_clear_2
    var_clear_0
}

_ID50434()
{
    thread _ID42407::_ID27079( "est_ru1_attack" );
}

_ID45947()
{
    level waittill( "breaching_number_0" );
    _ID42475::_ID34575( "handle_breach_sequence", "breaching_number_0" );
    _ID42237::_ID14402( "foyer_breached_first" );
}

_ID54647()
{
    level waittill( "breaching_number_1" );
    _ID42475::_ID34575( "handle_breach_sequence", "breaching_number_1" );
    _ID42237::_ID14402( "kitchen_breached_first" );
}

_ID47884()
{
    level waittill( "breaching_number_2" );
    _ID42475::_ID34575( "handle_breach_sequence", "breaching_number_2" );
    _ID42237::_ID14402( "basement_breached_first" );
}

_ID52559()
{
    level _ID42237::_ID41068( "breaching_number_0", "breaching_number_1", "breaching_number_2" );
    wait 2.5;
    var_0 = _func_0DE( "allies" );
    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_7 = _func_1DA( var_2 ); _func_02F( var_7 ); var_7 = _func_1BF( var_2, var_7 ) )
    {
        var_3 = var_2[var_7];
        level._ID46243 _meth_8171( var_3 );
        level._ID45604 _meth_8171( var_3 );
        var_4 = var_0;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_3 _meth_8171( var_5 );
            var_3 _meth_8171( level._ID794 );
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
    var_clear_0
}

_ID47711( var_0 )
{
    if ( self._ID31355 == "mainfloor" )
    {
        level._ID47336++;
        thread _unknown_29C5( var_0 );
    }

    if ( self._ID31355 == "topfloor" )
    {
        if ( _func_02F( self._ID31433 ) )
        {
            if ( self._ID31433 != 5 )
                level._ID46357++;
        }
        else
            level._ID46357++;

        thread _unknown_29F6( var_0 );
    }

    if ( self._ID31355 == "basement" )
    {
        if ( _func_02F( self._ID31433 ) )
        {
            if ( self._ID31433 != 3 && self._ID31433 != 4 )
                level._ID50850++;
        }
        else
            level._ID50850++;

        thread _unknown_2A2F( var_0 );
    }
}

_ID51742( var_0 )
{
    self waittill( "death" );
    level notify( "mainfloor_enemy_killed" );
    wait 0.05;

    if ( _func_02F( var_0 ) )
        level notify( "mainfloor_enemy_killed" );
}

_ID52077( var_0 )
{
    self waittill( "death" );
    level notify( "topfloor_enemy_killed" );
    wait 0.05;

    if ( _func_02F( var_0 ) )
        level notify( "topfloor_enemy_killed" );
}

_ID51616( var_0 )
{
    self waittill( "death" );
    level notify( "basement_enemy_killed" );
    wait 0.05;

    if ( _func_02F( var_0 ) )
        level notify( "basement_enemy_killed" );
}

_ID46239()
{
    _ID42237::_ID14413( "house_exterior_has_been_breached" );
    wait 2.1;

    while ( level._ID47336 > 0 )
    {
        level waittill( "mainfloor_enemy_killed" );
        level._ID47336--;
    }

    _ID42237::_ID14402( "mainfloor_cleared" );
}

_ID53329()
{
    _ID42237::_ID14413( "house_exterior_has_been_breached" );

    while ( level._ID46357 > 0 )
    {
        level waittill( "topfloor_enemy_killed" );
        level._ID46357--;
    }

    _ID42237::_ID14402( "topfloor_cleared" );
    thread _ID42237::_ID27077( "emt_grandfather_clock_ring", ( 485.389, 495.064, 242.834 ) );
}

_ID53588()
{
    _ID42237::_ID14413( "house_exterior_has_been_breached" );

    while ( level._ID50850 > 0 )
    {
        level waittill( "basement_enemy_killed" );
        level._ID50850--;
    }

    _ID42237::_ID14402( "basement_cleared" );
}

_ID52620()
{
    level endon( "house_interior_breaches_done" );
    _ID42237::_ID14413( "mainfloor_cleared" );
    _ID42237::_ID14402( "mainfloor_cleared_confirmed" );
}

_ID46007()
{
    _ID42237::_ID14413( "topfloor_breached" );
    level._ID46243 _ID42407::_ID10871();
    var_0 = _func_0C8( "scarecrow_teleport_closer", "targetname" );
    level._ID46243 _meth_81D2( var_0._ID740, var_0._ID65 );
    level._ID46243._ID452 = 32;
    level._ID46243._ID86 = 0;
    level._ID46243._ID512 = 1;
    var_0 = _func_0C8( "house_teleport_scarecrow", "targetname" );
    level._ID46243 _meth_81B1( var_0 );
    _ID42237::_ID14413( "topfloor_cleared" );
    _ID42237::_ID14402( "scripted_dialogue_on" );
    wait 2;
    _ID42237::_ID14426( "dialogue_ghost_orders" );
    _ID42237::_ID14426( "dialogue_basement_cleared" );
    _ID42237::_ID14402( "dialogue_topfloor_cleared" );
    _ID42407::_ID28864( "est_scr_topfloor" );
    _ID42407::_ID28864( "est_gst_topfloor" );
    _ID42237::_ID14402( "ghost_goes_outside" );
    _ID42237::_ID14388( "scripted_dialogue_on" );
    _ID42237::_ID14388( "dialogue_topfloor_cleared" );

    if ( !_ID42237::_ID14385( "basement_cleared" ) )
    {
        var_0 = _func_0C8( "scarecrow_guard_basement1", "targetname" );
        level._ID46243 _meth_81B1( var_0 );
    }
}

_ID53073()
{
    _ID42237::_ID14413( "basement_cleared" );
    wait 2;
    _ID42237::_ID14426( "dialogue_ghost_orders" );
    _ID42237::_ID14426( "dialogue_topfloor_cleared" );
    _ID42237::_ID14402( "dialogue_basement_cleared" );
    _ID42237::_ID14402( "scripted_dialogue_on" );
    _ID42407::_ID28864( "est_scr_basement" );
    _ID42407::_ID28864( "est_gst_basement" );
    _ID42237::_ID14388( "scripted_dialogue_on" );
    _ID42237::_ID14388( "dialogue_basement_cleared" );
    _ID42237::_ID14402( "basement_cleared_confirmed" );
}

_ID54458()
{
    level waittill( "breaching_number_5" );
    _ID42475::_ID34575( "handle_breach_sequence", "breaching_number_5" );
    _ID42237::_ID14402( "topfloor_breached" );
    var_0 = _func_1A2( "window_clip", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    level._ID43032++;
}

_ID50657()
{
    level waittill( "breaching_number_3" );
    _ID42237::_ID14402( "basement_breached" );
    _ID42237::_ID14402( "armory_breached" );
    level._ID43032++;
}

_ID46931()
{
    level waittill( "breaching_number_4" );
    _ID42475::_ID34575( "handle_breach_sequence", "breaching_number_4" );
    _ID42237::_ID14402( "basement_breached" );
    _ID42237::_ID14402( "guestroom_breached" );
    level._ID43032++;
}

_ID48306()
{
    level endon( "house_interior_breaches_done" );
    _ID42237::_ID14413( "house_friendlies_instructions_given" );

    while ( !_ID42237::_ID14385( "topfloor_breached" ) )
    {
        var_0 = level._ID47319 _meth_81E4( level._ID794._ID740 + ( 0, 0, 64 ) );

        if ( var_0 && _ID42237::_ID14385( "ghost_at_bottom_of_stairs" ) )
        {
            _ID42237::_ID14426( "dialogue_ghost_orders" );
            _ID42237::_ID14426( "dialogue_topfloor_cleared" );
            _ID42237::_ID14426( "dialogue_basement_cleared" );

            if ( _ID42237::_ID14385( "scarecrow_said_upstairs" ) )
                wait 30;

            if ( !_ID42237::_ID14385( "topfloor_breached" ) )
            {
                _ID42237::_ID14402( "scripted_dialogue_on" );
                _ID42407::_ID28864( "est_gst_lockedrooms" );
                _ID42237::_ID14388( "scripted_dialogue_on" );
            }

            break;
        }

        wait 0.5;
    }
}

_ID52393()
{
    level endon( "house_interior_breaches_done" );
    _ID42237::_ID14413( "basement_breached" );
    var_0 = _func_0C8( "scarecrow_guard_basement2", "targetname" );
    level._ID46243 _ID42407::_ID10871();
    level._ID46243 _meth_81B1( var_0 );
    level._ID46243._ID452 = 16;
    level._ID46243 waittill( "goal" );

    if ( !_ID42237::_ID14385( "basement_cleared" ) )
    {
        _ID42237::_ID14426( "dialogue_ghost_orders" );
        _ID42237::_ID14426( "dialogue_topfloor_cleared" );
        _ID42237::_ID14426( "dialogue_basement_cleared" );

        if ( !_ID42237::_ID14385( "basement_cleared" ) )
        {
            _ID42237::_ID14402( "scripted_dialogue_on" );
            _ID42407::_ID28864( "est_scr_gotyourback" );
            _ID42237::_ID14388( "scripted_dialogue_on" );
        }
    }

    if ( !_ID42237::_ID14385( "topfloor_breached" ) )
    {
        _ID42237::_ID14413( "basement_cleared_confirmed" );

        if ( !_ID42237::_ID14385( "house_interior_breaches_done" ) )
        {
            while ( !_ID42237::_ID14385( "topfloor_breached" ) )
            {
                var_1 = level._ID46243 _meth_81E4( level._ID794._ID740 + ( 0, 0, 64 ) );

                if ( var_1 )
                {
                    _ID42237::_ID14426( "dialogue_ghost_orders" );
                    _ID42237::_ID14426( "dialogue_topfloor_cleared" );
                    _ID42237::_ID14426( "dialogue_basement_cleared" );
                    _ID42237::_ID14402( "scripted_dialogue_on" );
                    _ID42237::_ID14402( "scarecrow_said_upstairs" );
                    _ID42407::_ID28864( "est_scr_getupstairs" );
                    _ID42237::_ID14388( "scripted_dialogue_on" );
                    break;
                }

                wait 0.5;
            }
        }
    }
}

_ID54468()
{
    _ID42237::_ID14413( "mainfloor_cleared" );
    _ID42237::_ID14413( "topfloor_cleared" );
    wait 4;

    if ( !_ID42237::_ID14385( "house_interior_breaches_done" ) )
    {
        if ( !_ID42237::_ID14385( "basement_cleared" ) )
        {
            _ID42237::_ID14402( "scripted_dialogue_on" );
            level._ID46243._ID11624 = 1;
            var_0 = _func_0DE( "axis" );
            var_1 = var_0;

            for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
            {
                var_2 = var_1[var_3];
                level._ID46243 _meth_8171( var_2 );
            }

            var_clear_2
            var_clear_0
            _ID42237::_ID14426( "dialogue_ghost_orders" );
            _ID42237::_ID14426( "dialogue_topfloor_cleared" );
            _ID42237::_ID14426( "dialogue_basement_cleared" );
            _ID42407::_ID28864( "est_gst_checkbasement" );
            _ID42237::_ID14388( "scripted_dialogue_on" );
        }
    }
}

_ID52003()
{
    level endon( "house_interior_breaches_done" );
    _ID42237::_ID14413( "mainfloor_cleared_confirmed" );
    _ID42237::_ID14402( "scripted_dialogue_on" );
    _ID42237::_ID14426( "dialogue_topfloor_cleared" );
    _ID42237::_ID14426( "dialogue_basement_cleared" );
    _ID42237::_ID14402( "dialogue_ghost_orders" );
    wait 2;
    var_0 = _func_0C8( "ozone_guard_kitchen", "targetname" );
    level._ID45604 _ID42407::_ID10871();
    level._ID45604 _ID42407::_ID14701( var_0 );

    if ( !_ID42237::_ID14385( "topfloor_breached" ) || !_ID42237::_ID14385( "basement_breached" ) )
    {
        var_1 = [];
        var_1[var_1.size] = "est_gst_thrukitchen";
        var_1[var_1.size] = "est_ozn_rogerthat";
        var_1[var_1.size] = "est_gst_sitrep";
        var_1[var_1.size] = "est_scr_noonesleaving";
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            _ID42237::_ID14426( "breaching_on" );
            _ID42407::_ID28864( var_1[var_4] );
        }

        var_clear_2
    }

    _ID42237::_ID14388( "scripted_dialogue_on" );
    _ID42237::_ID14388( "dialogue_ghost_orders" );
    _ID42237::_ID14402( "house_friendlies_instructions_given" );
}

_ID46841()
{
    _ID42237::_ID14413( "breaching_on" );
    level._ID47319._ID40757 = "seal";
    level._ID47319._ID8774 = "NS";
    level._ID46243._ID40757 = "seal";
    level._ID46243._ID8774 = "NS";
    level._ID45604._ID40757 = "seal";
    level._ID45604._ID8774 = "NS";

    while ( !_ID42237::_ID14385( "all_enemies_killed_up_to_house_capture" ) )
    {
        _ID42407::_ID4917( "allies" );
        _ID42407::_ID4917( "axis" );
        _ID42237::_ID14426( "breaching_on" );
        _ID42237::_ID14426( "scripted_dialogue_on" );
        _ID42407::_ID4918( "allies" );
        _ID42407::_ID4918( "axis" );
        _ID42237::_ID14415( "breaching_on", "scripted_dialogue_on" );
    }
}

_ID50897()
{
    if ( _ID42237::_ID14385( "all_enemies_killed_up_to_house_capture" ) )
        return;

    level endon( "all_enemies_killed_up_to_house_capture" );
    level _ID42237::_ID41068( "breaching_number_0", "breaching_number_1", "breaching_number_2" );
    var_0 = _func_1A1( "house_clearing_autosave_trigger", "targetname" );

    for (;;)
    {
        if ( level._ID43032 > 0 )
        {
            if ( !_ID42237::_ID14385( "first_free_save" ) )
                level waittill( "slomo_breach_over" );

            var_0 waittill( "trigger" );
            _ID42407::_ID4422( "nearDoorBreach_save" );
            _ID42237::_ID14388( "first_free_save" );
            continue;
        }

        var_0 waittill( "trigger" );
        _ID42407::_ID4422( "nearDoorBreach_save" );
        _unknown_32B6();
        _ID42237::_ID14402( "first_free_save" );
        continue;
    }
}

_ID49379()
{
    level endon( "slomo_breach_over" );
    wait 30;
}

_ID47498()
{
    _ID42237::_ID14402( "no_mercy" );
    level endon( "house_reset_ghost" );
    level _ID42237::_ID41068( "breaching_number_0", "breaching_number_1", "breaching_number_2" );

    if ( _ID42237::_ID14385( "kitchen_breached_first" ) || _ID42237::_ID14385( "basement_breached_first" ) )
    {
        thread _unknown_33C9();
        thread _unknown_33D3();
    }

    level._ID47319 _ID42407::_ID10871();
    level._ID47319._ID86 = 0;
    level._ID47319._ID512 = 1;
    level._ID47319 _ID42407::_ID10949();
    level._ID47319 _ID42407::_ID10973();
    level._ID47319._ID11002 = 1;
    level._ID47319 _ID42407::_ID10877();
    level._ID47319._ID11579 = 1;

    if ( _ID42237::_ID14385( "foyer_breached_first" ) )
    {
        level waittill( "sp_slowmo_breachanim_done" );
        level._ID47319._ID452 = 64;
        var_0 = _func_1A1( "ghost_slowmo_entry_teleport", "targetname" );
        level._ID47319 _meth_81D2( var_0._ID740, var_0._ID65 );
        level._ID47319 _ID42407::_ID12492( 1 );
        var_1 = _func_0C8( "ghost_slowmo_entry", "targetname" );
        _func_0DB( "ai_friendlyFireBlockDuration", "0" );
        level._ID47319 _meth_81B1( var_1 );
        level._ID47319 waittill( "goal" );
        wait 8;
    }
    else
    {
        _ID42237::_ID14413( "ghost_begins_sweep" );
        level._ID47319 _ID42407::_ID10226( 3, _ID42407::_ID12492, 1 );
    }

    var_1 = _func_0C8( "ghost_house_sweep", "targetname" );
    var_2 = 0;

    for (;;)
    {
        level._ID47319 _meth_81B1( var_1 );
        level._ID47319 waittill( "goal" );
        _func_0DB( "ai_friendlyFireBlockDuration", "2000" );

        if ( var_2 == 0 )
        {
            wait 4;
            level._ID47319._ID452 = 32;
        }

        if ( var_2 == 1 )
        {
            wait 0.5;
            _ID42237::_ID14402( "scripted_dialogue_on" );
            _ID42237::_ID14426( "dialogue_ghost_orders" );
            _ID42237::_ID14426( "dialogue_topfloor_cleared" );
            _ID42237::_ID14426( "dialogue_basement_cleared" );
            _ID42407::_ID28864( "est_gst_officeclear" );
            wait 0.5;
            _ID42237::_ID14426( "dialogue_ghost_orders" );
            _ID42237::_ID14426( "dialogue_topfloor_cleared" );
            _ID42237::_ID14426( "dialogue_basement_cleared" );
            _ID42407::_ID10226( 1, _ID42407::_ID28864, "est_gst_letsgo2" );
            _ID42237::_ID14388( "scripted_dialogue_on" );
        }

        if ( var_2 == 2 )
            level._ID47319 _meth_8172();

        var_2++;

        if ( var_2 == 4 )
        {
            wait 0.25;
            level._ID47319 _meth_8172();
            _ID42237::_ID14426( "dialogue_ghost_orders" );
            _ID42237::_ID14426( "dialogue_topfloor_cleared" );
            _ID42237::_ID14426( "dialogue_basement_cleared" );
            _ID42237::_ID14402( "scripted_dialogue_on" );
            _ID42407::_ID28864( "est_gst_diningroomclr" );
            _ID42237::_ID14388( "scripted_dialogue_on" );
        }

        if ( var_2 == 5 )
        {
            level._ID47319 _ID42407::_ID10926();
            level._ID47319 _ID42407::_ID12452();
        }

        if ( _func_02F( var_1._ID1191 ) )
        {
            var_1 = _func_0C8( var_1._ID1191, "targetname" );
            continue;
        }

        break;
    }

    var_3 = _func_1A1( "ghost_fake_lookat", "targetname" );
    level._ID47319 _ID42407::_ID8914( var_3 );
    _ID42237::_ID14402( "ghost_at_bottom_of_stairs" );
    _ID42237::_ID14413( "topfloor_cleared" );

    if ( !_ID42237::_ID14385( "ghost_goes_outside" ) )
        wait 9.5;

    var_1 = _func_0C8( "ghost_cover_front", "targetname" );
    level._ID47319 _meth_81B1( var_1 );
}

_ID53542()
{
    level endon( "house_reset_ghost" );
    wait 30;
    _ID42237::_ID14402( "ghost_begins_sweep" );
}

_ID53659()
{
    level endon( "house_reset_ghost" );
    var_0 = _func_1A1( "ghost_manual_trig", "targetname" );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "ghost_begins_sweep" );
}

_ID51440()
{
    level _ID42237::_ID41068( "breaching_number_0", "breaching_number_1", "breaching_number_2" );
    level _ID42237::_ID41068( "breaching_number_3", "breaching_number_4", "breaching_number_5" );
    level _ID42237::_ID41068( "breaching_number_3", "breaching_number_4", "breaching_number_5" );
    level _ID42237::_ID41068( "breaching_number_3", "breaching_number_4", "breaching_number_5" );
    level notify( "house_reset_ghost" );
    level._ID47319 _ID42407::_ID12445();
}

_ID48054()
{
    var_0 = _func_1A2( "solar_panel", "targetname" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _func_1A1( var_2._ID1191, "targetname" );
        var_3 _meth_8053( var_2 );
    }

    var_clear_3
    var_clear_0
    _ID42237::_ID3350( var_0, ::_unknown_36D6 );
}

_ID51609()
{
    _ID42237::_ID14413( "forestfight_littlebird_1" );
    wait 3;
    self _meth_82C1( -95, 60, 3, 3 );
}

_ID53250()
{
    switch ( level._ID35897 )
    {

    }

    case "default":
    case "ending":
    case "escape":
    case "house_defense":
    case "house_briefing":
    case "house_breach":
    case "house_approach":
    case "ambush":
}

_ID44837( var_0 )
{
    _func_19E( var_0 );
}

_ID47912()
{
    level._ID47335 = undefined;
    var_0 = _func_1A2( "zone_trigger", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_3856 );
}

_ID45225()
{
    var_0 = 0;

    for (;;)
    {
        self waittill( "trigger" );
        level._ID47335 = self._ID1193;
    }
}

_ID46453()
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );
    _ID42237::_ID14413( "defense_battle_begins" );
    level._ID50292 = 0;
    level._ID48285 = 14;
    level._ID46917 = 0;
    level._ID51352 = 1;
    level._ID52375 = undefined;
    level._ID52579 = [];
    _unknown_3AE6( "zone_backsolarpanelfield", ::_unknown_3C20 );
    _unknown_3AF2( "zone_backsolarpanelfield", ::_unknown_3C7E );
    _unknown_3AFD( "zone_backsolarpanelfield", ::_unknown_3E37 );
    _unknown_3B08( "zone_backsolarpanelfield", ::_unknown_3D6C );

    if ( _func_03A( "debug_estate_siege" ) == 1 )
        _unknown_3B1E( "zone_backsolarpanelfield", ::_unknown_3DC8 );
    else
    {
        _unknown_3B2D( "zone_backyardshed", ::_unknown_3C67 );
        _unknown_3B38( "zone_backyardshed", ::_unknown_3CC5 );
        _unknown_3B43( "zone_backyardshed", ::_unknown_3E7E );
        _unknown_3B4F( "zone_backyardshed", ::_unknown_3DF9 );
        _unknown_3B5A( "zone_backyardshed", ::_unknown_3DBE );
        _unknown_3B65( "zone_stables", ::_unknown_3C9F );
        _unknown_3B70( "zone_stables", ::_unknown_3CFD );
        _unknown_3B7C( "zone_stables", ::_unknown_3EB6 );
        _unknown_3B87( "zone_stables", ::_unknown_3E31 );
        _unknown_3B92( "zone_stables", ::_unknown_3DF6 );
        _unknown_3B9D( "zone_birchfield", ::_unknown_3CD7 );
        _unknown_3BA9( "zone_birchfield", ::_unknown_3EE3 );
        _unknown_3BB4( "zone_birchfield", ::_unknown_3E5E );
        _unknown_3BBF( "zone_birchfield", ::_unknown_3E23 );
        _unknown_3BCA( "zone_forest", ::_unknown_3D04 );
        _unknown_3BD6( "zone_forest", ::_unknown_3D62 );
        _unknown_3BE1( "zone_forest", ::_unknown_3E45 );
        _unknown_3BEC( "zone_frontsolarpanels", ::_unknown_3D26 );
        _unknown_3BF7( "zone_frontsolarpanels", ::_unknown_3D84 );
        _unknown_3C03( "zone_frontsolarpanels", ::_unknown_3E66 );
        _unknown_3C0E( "zone_backyardpond", ::_unknown_3D48 );
        _unknown_3C19( "zone_backyardpond", ::_unknown_3DA6 );
        _unknown_3C24( "zone_backyardpond", ::_unknown_3F5F );
        _unknown_3C30( "zone_backyardpond", ::_unknown_3E93 );
        _unknown_3C3B( "zone_house", ::_unknown_3D75 );
        _unknown_3C46( "zone_house", ::_unknown_3DD3 );
        _unknown_3C51( "zone_house", ::_unknown_3F8C );
        _unknown_3C5D( "zone_house", ::_unknown_3F07 );
        _unknown_3C68( "zone_house", ::_unknown_3ECC );
        _unknown_3C73( "zone_parkinglot", ::_unknown_3DAD );
        _unknown_3C7E( "zone_parkinglot", ::_unknown_3E0B );
        _unknown_3C8A( "zone_parkinglot", ::_unknown_3FC4 );
        _unknown_3C95( "zone_parkinglot", ::_unknown_3EF9 );
        _unknown_3CA0( "zone_porchtriangle", ::_unknown_3DDA );
        _unknown_3CAB( "zone_porchtriangle", ::_unknown_3E38 );
        _unknown_3CB7( "zone_porchtriangle", ::_unknown_3FF1 );
        _unknown_3CC2( "zone_porchtriangle", ::_unknown_3F6C );
        _unknown_3CCD( "zone_porchtriangle", ::_unknown_3F31 );
        _unknown_3CD8( "zone_porch", ::_unknown_3E12 );
        _unknown_3CE4( "zone_porch", ::_unknown_3E70 );
        _unknown_3CEF( "zone_porch", ::_unknown_4029 );
        _unknown_3CFA( "zone_porch", ::_unknown_3FA5 );
        _unknown_3D05( "zone_porch", ::_unknown_3F69 );
        _unknown_3D11( "zone_frontyardwedge", ::_unknown_3E4B );
        _unknown_3D1C( "zone_frontyardwedge", ::_unknown_3EA8 );
        _unknown_3D27( "zone_frontyardwedge", ::_ID46265 );
        _unknown_3D32( "zone_frontyardwedge", ::_unknown_3F96 );
        _unknown_3D3E( "zone_frontyardhigh", ::_unknown_3E78 );
        _unknown_3D49( "zone_frontyardhigh", ::_unknown_3ED5 );
        _unknown_3D54( "zone_frontyardhigh", ::_unknown_408E );
        _unknown_3D5F( "zone_frontyardhigh", ::_unknown_400A );
        _unknown_3D6B( "zone_frontyardhigh", ::_unknown_3FCE );
        _unknown_3D76( "zone_backpatio", ::_unknown_3EB0 );
        _unknown_3D81( "zone_backpatio", ::_unknown_3F0E );
        _unknown_3D8C( "zone_backpatio", ::_unknown_40C7 );
        _unknown_3D98( "zone_backpatio", ::_unknown_4042 );
        _unknown_3DA3( "zone_backpatio", ::_unknown_4007 );
        _unknown_3DAE( "zone_beach", ::_unknown_3EE8 );
        _unknown_3DB9( "zone_beach", ::_unknown_3F46 );
        _unknown_3DC5( "zone_beach", ::_unknown_40FF );
        _unknown_3DD0( "zone_beach", ::_unknown_407A );
        _unknown_3DDB( "zone_boathouse", ::_unknown_3F15 );
        _unknown_3DE6( "zone_boathouse", ::_unknown_3F73 );
        _unknown_3DF2( "zone_boathouse", ::_unknown_412C );
        _unknown_3DFD( "zone_boathouse", ::_unknown_40A7 );
    }

    level._ID48597 = [];
    _unknown_3E5C( "zone_backsolarpanelfield", ::_unknown_41B2 );
    _unknown_3E67( "zone_backsolarpanelfield", ::_unknown_41F8 );
    _unknown_3E73( "zone_backsolarpanelfield", ::_unknown_423B );

    if ( _func_03A( "debug_estate_siege" ) != 1 )
    {
        _unknown_3E88( "zone_backyardshed", ::_unknown_41DE );
        _unknown_3E94( "zone_backyardshed", ::_unknown_4224 );
        _unknown_3E9F( "zone_stables", ::_unknown_422F );
        _unknown_3EAA( "zone_birchfield", ::_unknown_423B );
        _unknown_3EB5( "zone_birchfield", ::_unknown_427E );
        _unknown_3EC1( "zone_forest", ::_unknown_4217 );
        _unknown_3ECC( "zone_forest", ::_unknown_425C );
        _unknown_3ED7( "zone_forest", ::_unknown_42A0 );
        _unknown_3EE2( "zone_frontsolarpanels", ::_unknown_4238 );
        _unknown_3EEE( "zone_frontsolarpanels", ::_unknown_427E );
        _unknown_3EF9( "zone_frontsolarpanels", ::_unknown_42C2 );
        _unknown_3F04( "zone_backyardpond", ::_unknown_4295 );
        _unknown_3F0F( "zone_backyardpond", ::_unknown_42D8 );
        _unknown_3F1B( "zone_house", ::_unknown_4271 );
        _unknown_3F26( "zone_house", ::_unknown_42B6 );
        _unknown_3F31( "zone_house", ::_ID43047 );
        _unknown_3F3C( "zone_parkinglot", ::_unknown_4292 );
        _unknown_3F48( "zone_parkinglot", ::_unknown_42D8 );
        _unknown_3F53( "zone_parkinglot", ::_unknown_431C );
        _unknown_3F5E( "zone_porchtriangle", ::_unknown_42B4 );
        _unknown_3F69( "zone_porchtriangle", ::_ID43047 );
        _unknown_3F75( "zone_porchtriangle", ::_unknown_433D );
        _unknown_3F80( "zone_porch", ::_unknown_42D6 );
        _unknown_3F8B( "zone_porch", ::_unknown_431C );
        _unknown_3F96( "zone_porch", ::_unknown_435F );
        _unknown_3FA2( "zone_frontyardwedge", ::_unknown_42F8 );
        _unknown_3FAD( "zone_frontyardwedge", ::_unknown_433D );
        _unknown_3FB8( "zone_frontyardwedge", ::_unknown_4381 );
        _unknown_3FC3( "zone_frontyardhigh", ::_unknown_4319 );
        _unknown_3FCF( "zone_frontyardhigh", ::_unknown_435F );
        _unknown_3FDA( "zone_frontyardhigh", ::_unknown_43A3 );
        _unknown_3FE5( "zone_backpatio", ::_unknown_433B );
        _unknown_3FF0( "zone_beach", ::_unknown_4346 );
        _unknown_3FFC( "zone_boathouse", ::_unknown_4352 );
    }

    level._ID46917 = 0;
    var_0 = _func_1A1( "no_autosave_in_basement", "targetname" );
    var_1 = level._ID51846 * 0.7;

    for (;;)
    {
        var_2 = level._ID47335;

        if ( _func_03A( "debug_estate_siege" ) == 1 )
            var_2 = "zone_backsolarpanelfield";

        _unknown_3FED( var_2 );
        var_3 = _func_1A1( "dsm", "targetname" );

        if ( _func_02F( var_3 ) )
        {
            var_4 = _func_0F6( level._ID794._ID740 - var_3._ID740 );

            if ( _ID42237::_ID14385( "can_save" ) && var_4 <= level._ID44576 )
            {
                if ( !level._ID794 _meth_80B0( var_0 ) && level._ID54566 >= var_1 )
                    _ID42407::_ID4422( "strikePackageCleared" );
            }
        }

        while ( level._ID46917 > level._ID50292 )
            level waittill( "counterattacker_died" );

        _ID42237::_ID14402( "activate_package_on_standby" );
        var_5 = level._ID52579;

        for ( var_2 = _func_1DA( var_5 ); _func_02F( var_2 ); var_2 = _func_1BF( var_5, var_2 ) )
        {
            var_6 = var_5[var_2];

            if ( level._ID52579[var_2].size <= 0 )
                level._ID52579[var_2] = undefined;
        }

        var_clear_1
        wait 10;

        if ( level._ID52579.size <= 0 )
            break;

        _ID42237::_ID14413( "strike_package_spawned" );
        _ID42237::_ID14388( "strike_package_spawned" );

        while ( level._ID46917 > level._ID48285 )
            level waittill( "counterattacker_died" );

        if ( !_func_02F( level._ID52375 ) )
            level._ID52375 = 30;

        _unknown_4058();
        wait 1;
    }
}

_ID46265()
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );
    var_0 = 0;
    var_1 = undefined;
    thread _unknown_40AF();

    while ( level._ID52375 > 0 )
    {
        var_2 = level._ID48597;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( level._ID48597[var_4].size <= 0 )
                level._ID48597[var_4] = undefined;
        }

        var_clear_2

        if ( level._ID48597.size <= 0 )
        {
            level notify( "stop_timeout" );
            break;
        }

        var_4 = level._ID47335;

        if ( _func_03A( "debug_estate_siege" ) == 1 )
            var_4 = "zone_backsolarpanelfield";

        var_1 = _unknown_416F( var_4 );

        if ( _func_02F( var_1 ) && var_1 )
        {
            _ID42237::_ID14413( "strike_component_activated" );
            _ID42237::_ID14388( "strike_component_activated" );
            var_0++;

            while ( level._ID46917 > level._ID43105 )
                level waittill( "counterattacker_died" );

            _ID42237::_ID14402( "activate_component_on_standby" );
        }

        if ( var_0 >= level._ID51352 )
        {
            level notify( "stop_timeout" );
            break;
        }

        wait(_func_0BA( 2, 8 ));
    }
}

_ID50225()
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );
    level endon( "stop_timeout" );

    while ( level._ID52375 > 0 )
    {
        wait 1;
        level._ID52375--;
    }
}

_ID45659( var_0, var_1 )
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );

    if ( !_func_02F( level._ID52579[var_0] ) )
        level._ID52579[var_0] = [];

    level._ID52579[var_0][level._ID52579[var_0].size] = var_1;
}

_ID53230( var_0 )
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );
    var_1 = _func_03A( "debug_estate_forceStrike" );

    if ( _func_03A( "debug_estate_siege" ) != 1 )
    {
        if ( !_func_02F( level._ID52579[var_0] ) )
            return 0;

        if ( !level._ID52579[var_0].size )
        {
            level._ID52579[var_0] = undefined;
            return 0;
        }

        var_2 = _ID42237::_ID28945( level._ID52579[var_0] );
    }
    else
    {
        if ( !_func_02F( level._ID50093 ) )
            level._ID50093 = 0;

        if ( var_1 > 0 && var_1 <= level._ID52579[var_0].size )
            level._ID50093 = var_1 - 1;

        if ( level._ID50093 >= level._ID52579[var_0].size )
            return 0;

        var_2 = level._ID52579[var_0][level._ID50093];
        level._ID50093++;
    }

    thread [[ var_2 ]]();
    _ID42237::_ID14402( "strike_packages_definitely_underway" );

    if ( !var_1 )
    {
        var_3 = level._ID52579;

        for ( var_0 = _func_1DA( var_3 ); _func_02F( var_0 ); var_0 = _func_1BF( var_3, var_0 ) )
        {
            var_4 = var_3[var_0];
            var_5 = var_4;

            for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
            {
                var_6 = var_5[var_7];

                if ( var_6 == var_2 )
                    level._ID52579[var_0][var_7] = undefined;
            }

            var_clear_2
        }

        var_clear_4
    }

    return 1;
}

_ID53469( var_0, var_1 )
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );

    if ( !_func_02F( level._ID48597[var_0] ) )
        level._ID48597[var_0] = [];

    level._ID48597[var_0][level._ID48597[var_0].size] = var_1;
}

_ID43047( var_0 )
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );

    if ( !_func_02F( level._ID48597[var_0] ) )
        return 0;

    if ( !level._ID48597[var_0].size )
    {
        level._ID48597[var_0] = undefined;
        return 0;
    }

    if ( _func_03A( "debug_estate_siege" ) != 1 )
        var_1 = _ID42237::_ID28945( level._ID48597[var_0] );
    else
    {
        if ( !_func_02F( level._ID50952 ) )
            level._ID50952 = 0;

        var_1 = level._ID48597[var_0][level._ID50952];
        level._ID50952++;
    }

    thread [[ var_1 ]]();
    var_2 = level._ID48597;

    for ( var_0 = _func_1DA( var_2 ); _func_02F( var_0 ); var_0 = _func_1BF( var_2, var_0 ) )
    {
        var_3 = var_2[var_0];
        var_4 = var_3;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( var_5 == var_1 )
                level._ID48597[var_0][var_6] = undefined;
        }

        var_clear_2
    }

    var_clear_4
    return 1;
}

_ID46441()
{
    _ID42237::_ID14413( "download_complete" );
    _ID42407::_ID4422( "download_done" );

    if ( !_ID42237::_ID14385( "dsm_recovered" ) )
        thread _unknown_4426();

    if ( _ID42237::_ID14385( "skip_defense" ) )
        wait 3;

    level._ID47319._ID4867 = 1000;
    _ID42237::_ID14413( "dsm_recovered" );
    _ID42475::_ID34575( "aud_start_escape_mix" );
    _ID42407::_ID4422( "birchfield_exfil_started" );
    wait 3;
    _ID42407::_ID28864( "est_shp_almostatlz" );
    level._ID47319 thread _ID42407::_ID10805( "est_gst_onourway" );
    wait 2;
    level._ID14382 = 64;
    level._ID47319 _ID42407::_ID12445();

    if ( _func_1A7( level._ID45604 ) )
        level._ID45604 _ID42407::_ID12445();

    if ( _func_1A7( level._ID46243 ) )
        level._ID46243 _ID42407::_ID12445();

    var_0 = _func_1A1( "ghost_exfil", "targetname" );
    var_0 notify( "trigger" );
    _ID42237::_ID14413( "point_of_no_return" );
    _ID42407::_ID4422( "point_of_no_return" );
    thread _ID54017::_ID43738( "2" );
    thread _unknown_44CC();
    thread _unknown_44D7();
    level._ID47319 thread _ID42407::_ID10805( "est_gst_bracketing" );
    wait 1;
}

_ID46149()
{
    level endon( "dsm_recovered" );
    var_0 = 7;

    for (;;)
    {
        wait 2;
        _ID42407::_ID28864( "est_gst_dsmcomplete" );
        wait(var_0);

        if ( var_0 < 30 )
            var_0 *= 2;

        _ID42407::_ID28864( "est_gst_getouttahere" );
    }
}

_ID49807()
{
    level endon( "finish_line" );
    _ID42237::_ID14413( "player_retreated_into_birchfield" );
    thread _unknown_456B();
}

_ID49496()
{
    level endon( "finish_line" );
    var_0 = _func_1A2( "ghost_covering_shout", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_455D();
    }

    var_clear_2
    var_clear_0
    wait 9;
    level._ID47319 _ID42407::_ID10805( "est_gst_gettothelz" );
}

_ID47407()
{
    self waittill( "trigger" );

    if ( !_ID42237::_ID14385( "ghost_covered_player" ) )
    {
        _ID42237::_ID14402( "ghost_covered_player" );
        level._ID47319 _ID42407::_ID10805( "est_gst_gotyoucovered" );
        level._ID47319 _ID42407::_ID10805( "est_gst_keepmoving" );
    }
    else
    {
        level._ID47319 _ID42407::_ID10805( "est_gst_illcoveryou" );
        level._ID47319 _ID42407::_ID10805( "est_gst_gogo" );
    }
}

_ID43060()
{
    _ID42237::_ID14413( "finish_line" );
    level._ID794 _meth_80F3( 1 );
    level._ID8862 = 1;
    level._ID794 _meth_8334( 1 );
    var_0 = _unknown_388D();
    _func_156( level._ID1426["mortar"]["dirt"], var_0 );
    var_1 = _func_06A( "script_origin", var_0 );
    var_1 _meth_80A1( "clusterbomb_explode_default" );
    level._ID794 _meth_80B4( "artillery_rumble" );
    wait 0.15;
    _ID42237::_ID14402( "play_ending_sequence" );
    level._ID794 _meth_8334( 0 );
    _func_078();
}

_ID44914()
{
    var_0 = _unknown_38D1();
    _func_156( level._ID1426["mortar"]["dirt"], var_0 );
    level._ID794 _meth_80B4( "artillery_rumble" );
    wait 0.15;
    level._ID794 _meth_8058();
}

_ID52307()
{
    _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
    _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
    _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
    _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
    _ID42237::_ID14426( "rpg_stables_dialogue" );
    _ID42237::_ID14426( "rpg_boathouse_dialogue" );
    _ID42237::_ID14426( "rpg_southwest_dialogue" );
    _ID42237::_ID14426( "scarecrow_death_dialogue" );
    _ID42237::_ID14426( "ozone_death_dialogue" );
    _ID42237::_ID14426( "sniper_breaktime_dialogue" );
    _ID42237::_ID14402( "strike_package_bighelidrop_dialogue" );
    level._ID50292 = 2;
    level._ID52375 = 90;
    _ID42237::_ID14413( "activate_package_on_standby" );
    _ID42237::_ID14388( "activate_package_on_standby" );

    if ( !_ID42237::_ID14385( "dsm_recovered" ) )
        thread _unknown_474A();

    var_0 = _ID42411::_ID35196( "heli_phoenix_01" );
    var_1 = _ID42411::_ID35196( "heli_phoenix_02" );
    var_2 = _ID42411::_ID35196( "heli_phoenix_03" );
    var_3 = _ID42411::_ID35196( "heli_phoenix_04" );
    thread _unknown_4A68( var_0, "heli_phoenix_01" );
    thread _unknown_4A71( var_1, "heli_phoenix_02" );
    thread _unknown_4A7A( var_2, "heli_phoenix_03" );
    thread _unknown_4A83( var_3, "heli_phoenix_04" );
    wait 3;
    _ID42237::_ID14402( "strike_package_spawned" );
}

_ID45705()
{
    _ID42407::_ID28864( "est_snp1_mainroad" );
    _ID42407::_ID28864( "est_snp1_15seconds" );
    _ID42407::_ID28864( "est_gst_15seconds" );
    _ID42237::_ID14388( "strike_package_bighelidrop_dialogue" );
}

_ID49312()
{
    _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
    _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
    _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
    _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
    _ID42237::_ID14426( "rpg_stables_dialogue" );
    _ID42237::_ID14426( "rpg_boathouse_dialogue" );
    _ID42237::_ID14426( "rpg_southwest_dialogue" );
    _ID42237::_ID14426( "scarecrow_death_dialogue" );
    _ID42237::_ID14426( "ozone_death_dialogue" );
    _ID42237::_ID14426( "sniper_breaktime_dialogue" );
    _ID42237::_ID14402( "strike_package_birchfield_dialogue" );
    level._ID50292 = 10;
    level._ID52375 = 120;
    _ID42237::_ID14413( "activate_package_on_standby" );
    _ID42237::_ID14388( "activate_package_on_standby" );

    if ( !_ID42237::_ID14385( "dsm_recovered" ) )
        thread _unknown_48C1();

    var_0 = _ID42237::_ID16640( "chainlink_fence_detonator", "targetname" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        wait(_func_0BA( 0.25, 1 ));
        _func_156( _ID42237::_ID16299( "fenceblast" ), var_2._ID740 );
        var_3 = _func_06A( "script_origin", var_2._ID740 );
        var_3 _meth_80A1( "clusterbomb_explode_default" );
        _func_192( 0.25, 1, level._ID794._ID740, 2000 );
    }

    var_clear_3
    var_clear_0

    if ( !_ID42237::_ID14385( "fence_removed" ) )
    {
        var_5 = _func_1A1( "final_area_fence", "targetname" );
        var_5 _meth_80B7();
        _ID42237::_ID14402( "fence_removed" );
    }

    var_6 = _func_1A2( "broken_fence", "targetname" );
    var_7 = var_6;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_8 _meth_8059();
    }

    var_clear_2
    var_clear_0
    _unknown_4CA6( "birchfield_smokeassault_leftflank", ::_unknown_498E );
    _unknown_4CB1( "birchfield_smokeassault_rightflank", ::_unknown_49B2 );
    _unknown_4CBC( "birchfield_smokeassault_centersupport", ::_unknown_49D6 );
    wait 3;
    _ID42237::_ID14402( "strike_package_spawned" );
}

_ID44816()
{
    wait 2;

    if ( _func_1A7( level._ID46243 ) )
        _ID42407::_ID28864( "est_scr_whatwasthat" );

    _ID42407::_ID28864( "est_snp1_hostilesse" );
    _ID42407::_ID28864( "est_snp1_thinemout" );

    if ( _func_1A7( level._ID46243 ) || _func_1A7( level._ID45604 ) )
        _ID42407::_ID28864( "est_gst_fieldtose" );

    if ( _func_1A7( level._ID45604 ) )
        _ID42407::_ID28864( "est_ozn_eyeson" );

    _ID42237::_ID14388( "strike_package_birchfield_dialogue" );
}

_ID46582()
{
    self endon( "death" );
    var_0 = _func_0BA( 0.5, 2 );
    var_1 = 256;
    var_2 = 128;
    var_3 = 0.5;
    var_4 = 0.5;
    var_5 = "player_is_escaping";
    var_6 = _func_0C9( "birchfield_smokeassault_2a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _unknown_4DBC( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    _unknown_4DE6();
}

_ID45420()
{
    self endon( "death" );
    var_0 = _func_0BA( 0.5, 2 );
    var_1 = 256;
    var_2 = 128;
    var_3 = 0.5;
    var_4 = 0.5;
    var_5 = "player_is_escaping";
    var_6 = _func_0C9( "birchfield_smokeassault_1a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _unknown_4E06( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    _unknown_4E30();
}

_ID54063()
{
    self endon( "death" );
    var_0 = _func_0BA( 2, 4 );
    var_1 = 2100;
    var_2 = 1000;
    var_3 = 0.85;
    var_4 = 10;
    var_5 = "player_is_escaping";
    var_6 = _func_0C9( "birchfield_smokeassault_3a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _unknown_4E4C( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    _unknown_4E76();
}

_ID47875()
{
    _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
    _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
    _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
    _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
    _ID42237::_ID14426( "rpg_stables_dialogue" );
    _ID42237::_ID14426( "rpg_boathouse_dialogue" );
    _ID42237::_ID14426( "rpg_southwest_dialogue" );
    _ID42237::_ID14426( "scarecrow_death_dialogue" );
    _ID42237::_ID14426( "ozone_death_dialogue" );
    _ID42237::_ID14426( "sniper_breaktime_dialogue" );
    _ID42237::_ID14402( "strike_package_boathouse_dialogue" );
    level._ID50292 = 12;
    level._ID52375 = 45;

    if ( !_ID42237::_ID14385( "dsm_recovered" ) )
        thread _unknown_4BCF();

    var_0 = _ID42411::_ID35196( "boathouse_md500" );
    var_1 = _ID42411::_ID35196( "boathouse_mi17" );
    thread _unknown_4DC2( var_0, "boathouse_md500" );
    thread _unknown_4DCB( var_1, "boathouse_mi17" );
    wait 3;
    _ID42237::_ID14402( "strike_package_spawned" );
}

_ID44246()
{
    wait 5;
    _ID42407::_ID28864( "est_snp1_troopswest" );
    _ID42407::_ID28864( "est_gst_boathouse" );

    if ( _func_1A7( level._ID45604 ) )
    {
        _ID42407::_ID28864( "est_ozn_249sandrpgs" );
        _ID42407::_ID28864( "est_gst_cutemdown" );
    }

    _ID42237::_ID14388( "strike_package_boathouse_dialogue" );
}

_ID53269()
{
    _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
    _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
    _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
    _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
    _ID42237::_ID14426( "rpg_stables_dialogue" );
    _ID42237::_ID14426( "rpg_boathouse_dialogue" );
    _ID42237::_ID14426( "rpg_southwest_dialogue" );
    _ID42237::_ID14426( "scarecrow_death_dialogue" );
    _ID42237::_ID14426( "ozone_death_dialogue" );
    _ID42237::_ID14426( "sniper_breaktime_dialogue" );
    _ID42237::_ID14402( "strike_package_solarfield_dialogue" );
    level._ID50292 = 17;
    level._ID52375 = 60;
    _ID42237::_ID14413( "activate_package_on_standby" );
    _ID42237::_ID14388( "activate_package_on_standby" );

    if ( !_ID42237::_ID14385( "dsm_recovered" ) )
        thread _unknown_4CFE();

    _unknown_4F52( "solarfield_pkg_openground", ::_unknown_4D27 );
    _unknown_4F5E( "solarfield_pkg_forest", ::_unknown_4D4B );
    thread _unknown_5665( "solarfield_pkg_smokepot" );
    wait 3;
    _ID42237::_ID14402( "strike_package_spawned" );
}

_ID44044()
{
    level endon( "dsm_recovered" );
    _ID42407::_ID28864( "est_snp1_additionalhostile" );
    _ID42407::_ID28864( "est_gst_solarpanelseast" );

    if ( _func_1A7( level._ID46243 ) )
        _ID42407::_ID28864( "est_scr_comethrutrees" );

    var_0 = level._ID794 _meth_8304( "claymore" );

    if ( level._ID15361 < 2 && !_ID42237::_ID14385( "claymore_hint_printed" ) && var_0 > 4 )
    {
        _ID42237::_ID14402( "claymore_hint_printed" );
        level._ID794 thread _ID42407::_ID11085( "claymore_hint" );
    }

    _ID42407::_ID28864( "est_gst_easttrail" );
    _ID42237::_ID14388( "strike_package_solarfield_dialogue" );
}

_ID52577()
{
    self endon( "death" );
    var_0 = _func_0BA( 0.5, 2 );
    var_1 = 2400;
    var_2 = 1200;
    var_3 = 0.8;
    var_4 = 0.7;
    var_5 = "player_is_escaping";
    var_6 = _func_0C9( "solarfield_pkg_route_1a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _unknown_5081( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    _unknown_50AB();
}

_ID53990()
{
    self endon( "death" );
    _ID42407::_ID12467();
    var_0 = _func_0BA( 0.5, 2 );
    var_1 = 1000;
    var_2 = 800;
    var_3 = 0.9;
    var_4 = 5;
    var_5 = "player_is_escaping";
    var_6 = _func_0C9( "solarfield_pkg_route_2a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _unknown_50CD( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    wait 10;
    _unknown_50F9();
}

_ID53965()
{
    _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
    _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
    _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
    _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
    _ID42237::_ID14426( "rpg_stables_dialogue" );
    _ID42237::_ID14426( "rpg_boathouse_dialogue" );
    _ID42237::_ID14426( "rpg_southwest_dialogue" );
    _ID42237::_ID14426( "scarecrow_death_dialogue" );
    _ID42237::_ID14426( "ozone_death_dialogue" );
    _ID42237::_ID14426( "sniper_breaktime_dialogue" );
    _ID42237::_ID14402( "strike_package_md500rush_dialogue" );
    level._ID50292 = 2;
    level._ID52375 = 90;

    if ( !_ID42237::_ID14385( "dsm_recovered" ) )
        thread _unknown_4F2F();

    var_0 = _ID42411::_ID35196( "md500_rush_1" );
    var_1 = _ID42411::_ID35196( "md500_rush_2" );
    var_2 = _ID42411::_ID35196( "md500_rush_3" );
    thread _unknown_504F( var_0, "md500_rush_1" );
    thread _unknown_5058( var_1, "md500_rush_2" );
    thread _unknown_5061( var_2, "md500_rush_3" );
    wait 3;
    _ID42237::_ID14402( "strike_package_spawned" );
}

_ID46170()
{
    level endon( "dsm_recovered" );
    _ID42407::_ID28864( "est_snp1_fastattack" );
    _ID42407::_ID28864( "est_gst_helosnw" );

    if ( _func_1A7( level._ID46243 ) )
        _ID42407::_ID28864( "est_scr_frontlawn" );

    if ( _func_1A7( level._ID45604 ) )
    {
        var_0 = _func_0C8( "scarecrow_housebriefing_start", "targetname" );
        level._ID45604 _ID42407::_ID10871();
        level._ID45604 _meth_81B1( var_0 );
        _ID42407::_ID28864( "est_ozn_mainwindows" );
    }

    var_1 = level._ID794 _meth_8304( "claymore" );

    if ( level._ID15361 < 2 && !_ID42237::_ID14385( "claymore_hint_printed" ) && var_1 > 4 )
    {
        _ID42237::_ID14402( "claymore_hint_printed" );
        level._ID794 thread _ID42407::_ID11085( "claymore_hint" );
    }

    _ID42407::_ID28864( "est_gst_useclaymores" );
    _ID42237::_ID14388( "strike_package_md500rush_dialogue" );
}

_ID51894()
{
    _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
    _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
    _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
    _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
    _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
    _ID42237::_ID14426( "rpg_boathouse_dialogue" );
    _ID42237::_ID14426( "rpg_southwest_dialogue" );
    _ID42237::_ID14426( "scarecrow_death_dialogue" );
    _ID42237::_ID14426( "ozone_death_dialogue" );
    _ID42237::_ID14426( "sniper_breaktime_dialogue" );
    _ID42237::_ID14402( "rpg_stables_dialogue" );
    _ID42237::_ID14402( "strike_component_activated" );
    level._ID43105 = 24;
    _ID42237::_ID14413( "activate_component_on_standby" );
    _ID42237::_ID14388( "activate_component_on_standby" );
    _unknown_5242( "stables_rpg_team", ::_unknown_5163, "stables_rpg_team_fp" );
    thread _unknown_5A4A( "fake_rpg_stables" );
    _ID42407::_ID28864( "est_snp1_rpgteameast" );

    if ( _func_1A7( level._ID45604 ) )
        _ID42407::_ID28864( "est_ozn_rpgteameast" );

    _ID42237::_ID14388( "rpg_stables_dialogue" );
}

_ID48996()
{
    _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
    _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
    _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
    _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
    _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
    _ID42237::_ID14426( "rpg_stables_dialogue" );
    _ID42237::_ID14426( "rpg_southwest_dialogue" );
    _ID42237::_ID14426( "scarecrow_death_dialogue" );
    _ID42237::_ID14426( "ozone_death_dialogue" );
    _ID42237::_ID14426( "sniper_breaktime_dialogue" );
    _ID42237::_ID14402( "rpg_boathouse_dialogue" );
    _ID42237::_ID14402( "strike_component_activated" );
    level._ID43105 = 23;
    _ID42237::_ID14413( "activate_component_on_standby" );
    _ID42237::_ID14388( "activate_component_on_standby" );
    _unknown_52F1( "boathouse_rpg_team", ::_unknown_5213, "boathouse_rpg_team_fp" );
    thread _unknown_5AFA( "fake_rpg_boathouse" );
    _ID42407::_ID28864( "est_snp1_rpgteamwest" );
    _ID42407::_ID28864( "est_gst_rpgteamwest" );
    _ID42237::_ID14388( "rpg_boathouse_dialogue" );
}

_ID52976()
{
    _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
    _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
    _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
    _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
    _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
    _ID42237::_ID14426( "rpg_stables_dialogue" );
    _ID42237::_ID14426( "rpg_boathouse_dialogue" );
    _ID42237::_ID14426( "scarecrow_death_dialogue" );
    _ID42237::_ID14426( "ozone_death_dialogue" );
    _ID42237::_ID14426( "sniper_breaktime_dialogue" );
    _ID42237::_ID14402( "rpg_southwest_dialogue" );
    _ID42237::_ID14402( "strike_component_activated" );
    level._ID43105 = 23;
    _ID42237::_ID14413( "activate_component_on_standby" );
    _ID42237::_ID14388( "activate_component_on_standby" );
    _unknown_539A( "southwest_rpg_team", ::_unknown_52BB, "southwest_rpg_team_fp" );
    thread _unknown_5BA3( "fake_rpg_southwest" );
    _ID42407::_ID28864( "est_snp1_rpgteamsw" );

    if ( _func_1A7( level._ID45604 ) )
        _ID42407::_ID28864( "est_ozn_rpgteamsw" );

    _ID42237::_ID14388( "rpg_southwest_dialogue" );
}

_ID45818( var_0 )
{
    self endon( "death" );
    var_1 = _func_0C9( var_0, "targetname" );
    var_2 = var_1[_func_0B7( var_1.size )];
    var_3 = 2.5;
    var_4 = 2400;
    var_5 = 200;
    var_6 = 0.5;
    var_7 = _func_0BA( 0.5, 2 );
    var_8 = "player_is_escaping";

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
    {
        _unknown_544A( var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
        self._ID452 = 2200;
        wait(_func_0BA( 25, 30 ));
    }

    _unknown_54A0();
}

_ID45877( var_0, var_1 )
{
    var_2 = var_0._ID29965;
    var_3 = _func_0C9( var_1, "targetname" );
    var_4 = var_3[_func_0B7( var_3.size )];
    var_5 = var_2;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _func_02F( var_6._ID31455 ) )
        {
            if ( _func_02F( var_0._ID1282 ) )
            {
                if ( var_0._ID1282 == "littlebird" )
                {
                    if ( var_6._ID31455 == 1 )
                        continue;
                }

                if ( var_0._ID1282 == "mi17" )
                {
                    if ( var_6._ID31455 == 0 )
                        continue;
                }
            }
        }

        if ( _func_1A7( var_6 ) )
            var_6 thread _unknown_5406( var_0, var_1, var_4 );
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( level._ID45604 ) && _func_1A7( level._ID45604 ) )
        level._ID45604._ID513 = 0;
}

_ID43969( var_0, var_1, var_2 )
{
    self endon( "death" );

    if ( _func_02F( var_0 ) )
        var_0 waittill( "unloaded" );

    var_3 = _unknown_5467( var_1 );
    self._ID452 = var_3["goalradius"];
    var_4 = var_2;
    var_5 = var_3["nodeLoiterTime"];
    var_6 = var_3["nodeInitRadius"];
    var_7 = var_3["nodeEndRadius"];
    var_8 = var_3["nodeClosureRate"];
    var_9 = _func_0BA( var_3["nodeClosureIntervalLow"], var_3["nodeClosureIntervalHigh"] );
    var_10 = "player_is_escaping";

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
    {
        self._ID513 = 1;
        _unknown_5559( var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    }

    _unknown_55A5();
}

_ID44922( var_0 )
{
    var_1 = [];

    if ( var_0 == "md500_rush_1" )
    {
        var_1["goalradius"] = 3000;
        var_1["nodeLoiterTime"] = 8;
        var_1["nodeInitRadius"] = 3000;
        var_1["nodeEndRadius"] = 1400;
        var_1["nodeClosureRate"] = 0.75;
        var_1["nodeClosureIntervalLow"] = 3;
        var_1["nodeClosureIntervalHigh"] = 8;
    }

    if ( var_0 == "md500_rush_2" )
    {
        var_1["goalradius"] = 2000;
        var_1["nodeLoiterTime"] = 3;
        var_1["nodeInitRadius"] = 1600;
        var_1["nodeEndRadius"] = 800;
        var_1["nodeClosureRate"] = 0.5;
        var_1["nodeClosureIntervalLow"] = 8;
        var_1["nodeClosureIntervalHigh"] = 12;
    }

    if ( var_0 == "boathouse_md500" )
    {
        var_1["goalradius"] = 1600;
        var_1["nodeLoiterTime"] = 4;
        var_1["nodeInitRadius"] = 1600;
        var_1["nodeEndRadius"] = 1000;
        var_1["nodeClosureRate"] = 0.85;
        var_1["nodeClosureIntervalLow"] = 3;
        var_1["nodeClosureIntervalHigh"] = 6;
    }

    if ( var_0 == "boathouse_mi17" )
    {
        var_1["goalradius"] = 1800;
        var_1["nodeLoiterTime"] = 4;
        var_1["nodeInitRadius"] = 1800;
        var_1["nodeEndRadius"] = 1400;
        var_1["nodeClosureRate"] = 0.9;
        var_1["nodeClosureIntervalLow"] = 4;
        var_1["nodeClosureIntervalHigh"] = 6;
    }
    else
    {
        var_1["goalradius"] = 3000;
        var_1["nodeLoiterTime"] = 0;
        var_1["nodeInitRadius"] = 3000;
        var_1["nodeEndRadius"] = 1000;
        var_1["nodeClosureRate"] = 0.8;
        var_1["nodeClosureIntervalLow"] = 3;
        var_1["nodeClosureIntervalHigh"] = 7;
    }

    return var_1;
}

_ID47329( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        _ID42407::_ID3344( var_0, var_1 );
    else
        _ID42407::_ID3344( var_0, var_1, var_2 );

    var_3 = [];
    var_3 = _func_1A2( var_0, "targetname" );
    _ID42237::_ID3350( var_3, _ID42407::_ID35014 );
}

_ID46836()
{
    _ID42407::_ID3343( "counterattacker", ::_unknown_569B );
    _ID42407::_ID3343( "counterattacker", ::_unknown_56A0 );
}

_ID49394()
{
    if ( level._ID15361 >= 2 )
        self._ID11624 = 1;
    else
        self._ID11624 = 0.7;
}

_ID45642()
{
    self endon( "death" );
    thread _unknown_56D0();
    level._ID46917++;
}

_ID50766()
{
    self waittill( "death" );
    level notify( "counterattacker_died" );
    level._ID46917--;
}

_ID46667()
{
    _ID42407::_ID3343( "ending_shadowops_drone", ::_unknown_56F6 );
}

_ID43801()
{
    self._ID1194 = "allies";
    self._ID764 = _func_0B9( 0, 100 );
    _ID42407::_ID12467();
    self.cheat._ID48626 = 1;
    self.cheat.ignorewolfthink = 1;
    _ID49347::addspecialmonitors();
    self waittill( "goal" );
    self _meth_81D6( "crouch" );
}

_ID54587( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );

    if ( _func_02F( var_6 ) )
        level endon( var_6 );

    var_7 = var_2;

    for (;;)
    {
        self _meth_81B1( var_0 );
        self waittill( "goal" );

        while ( var_7 > var_3 )
        {
            var_7 *= var_4;
            self._ID452 = var_7;
            self._ID450 = 32;
            self._ID764 = _func_0B9( 0, 100 );
            self waittill( "goal" );
            wait(var_5);
        }

        wait(var_1);

        if ( _func_02F( var_0._ID1191 ) )
        {
            var_0 = _func_0C8( var_0._ID1191, "targetname" );
            continue;
        }

        break;
    }
}

_ID53020( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );

    if ( _func_02F( var_6 ) )
        level endon( var_6 );

    var_7 = var_2;
    var_8 = var_0[_func_0B7( var_0.size )];

    for (;;)
    {
        self _meth_81B1( var_8 );
        self waittill( "goal" );

        while ( var_7 > var_3 )
        {
            var_7 *= var_4;
            self._ID452 = var_7;
            self._ID450 = 32;
            self._ID764 = _func_0B9( 0, 100 );
            self waittill( "goal" );
            wait(var_5);
        }

        wait(var_1);

        if ( _func_02F( var_8._ID922 ) )
        {
            var_0 = _func_0C9( var_8._ID922, "targetname" );
            var_8 = var_0[_func_0B7( var_0.size )];
            continue;
        }

        break;
    }
}

_ID46463()
{
    self endon( "death" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
    {
        var_0 = _func_1A1( "dsm", "targetname" );
        var_1 = _func_0C8( "dsm_killnode", "targetname" );
        self _meth_81B1( var_1 );
        self._ID452 = 4000;

        if ( !_ID42237::_ID14385( "dsm_recovered" ) && !_ID42237::_ID14385( "dsm_destroyed" ) )
            self _meth_8171( var_0 );
    }

    _ID42237::_ID14413( "player_is_escaping" );
    thread _unknown_58D4();
}

_ID51312()
{
    self endon( "death" );
    var_0 = _func_0C8( "chase_player", "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = 3250;
    self._ID764 = _func_0B9( 30, 100 );
    thread _ID42407::_ID32343( 5, 1 );
}

_ID54638()
{
    _ID42237::_ID14413( "player_is_escaping" );
    var_0 = _func_1A2( "player_exfil_hunter", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID52708()
{
    _ID42237::_ID14413( "point_of_no_return" );

    if ( !_ID42237::_ID14385( "test_ending" ) )
    {
        var_0 = _func_1A2( "player_exfil_blocker", "targetname" );
        _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    }
}

_ID52760()
{
    _ID42237::_ID14413( "point_of_no_return" );
    var_0 = _func_1A1( "hillchaser_trigger", "targetname" );
    var_0 waittill( "trigger" );
    var_1 = _func_1A2( "player_exfil_hillchaser", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID35014 );
}

_ID48337( var_0 )
{
    self waittill( "death" );

    if ( var_0 == "scarecrow" )
    {

    }

    if ( var_0 == "ozone" )
        return;
}

_ID53351()
{

}

_ID48372()
{
    _ID42237::_ID14413( "defense_battle_begins" );
    _ID42237::_ID14402( "sniper_in_position" );
    level endon( "player_is_escaping" );
    var_0 = 0;

    while ( !_ID42237::_ID14385( "dsm_recovered" ) )
    {
        if ( _ID42237::_ID14385( "sniper_in_position" ) )
        {
            var_0 = _unknown_5A4B();
            wait(_func_0BA( 1, 3 ));

            if ( var_0 )
            {
                wait 2;
                var_0 = 0;
            }

            continue;
        }

        _ID42237::_ID14413( "sniper_in_position" );
    }
}

_ID43321()
{
    _ID42237::_ID14413( "defense_battle_begins" );
    level endon( "player_is_escaping" );
    level waittill( "magic_sniper_breaktime" );
    _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
    _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
    _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
    _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
    _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
    _ID42237::_ID14426( "rpg_stables_dialogue" );
    _ID42237::_ID14426( "rpg_boathouse_dialogue" );
    _ID42237::_ID14426( "rpg_southwest_dialogue" );
    _ID42237::_ID14426( "ozone_death_dialogue" );
    _ID42237::_ID14426( "scarecrow_death_dialogue" );
    _ID42237::_ID14402( "sniper_breaktime_dialogue" );

    if ( _ID42237::_ID14385( "sniper_attempting_shot" ) )
        _ID42237::_ID14426( "sniper_attempting_shot" );

    _ID42237::_ID14388( "sniper_in_position" );
    _ID42407::_ID28864( "est_snp1_displacing" );
    _ID42237::_ID14388( "sniper_breaktime_dialogue" );
    wait 30;
    _ID42237::_ID14402( "sniper_in_position" );
}

_ID53075( var_0 )
{
    level endon( "player_is_escaping" );
    var_1 = [];
    var_1[0] = "est_snp1_tangodown";
    var_1[1] = "est_snp1_gotone";
    var_1[2] = "est_snp1_hostneut";
    var_1[3] = "est_snp1_thatsakill";
    var_1[4] = "est_snp1_thatsone";
    var_1[5] = "est_snp1_tangodown2";
    var_1[6] = "est_snp1_droppedhim";
    var_1[7] = "est_snp1_hesdown";
    var_0 = _func_0DE( "axis" );
    var_2 = var_0;

    for ( var_9 = _func_1DA( var_2 ); _func_02F( var_9 ); var_9 = _func_1BF( var_2, var_9 ) )
    {
        var_3 = var_2[var_9];
        wait 1;

        if ( _func_1A7( var_3 ) )
        {
            var_4 = _func_090( level._ID794._ID740 + ( 0, 0, 64 ), var_3._ID740 + ( 0, 0, 32 ), 0, undefined );
            var_5 = var_3 _meth_81CA( level._ID794 );
            var_6 = _func_0F6( level._ID794._ID740 - var_3._ID740 );
            var_7 = 480;

            if ( _ID42237::_ID14385( "sniper_in_position" ) )
            {
                if ( var_4 && var_5 && var_6 >= 480 )
                {
                    _ID42237::_ID14402( "sniper_attempting_shot" );
                    var_8 = _func_0B9( 0, 100 );

                    if ( var_8 > 10 )
                    {
                        var_3 thread _ID42407::_ID27079( "h2_wpn_cheytac_npc_close" );
                        _ID45456::_ID54623( var_3 );
                        var_3 _meth_8058();
                        wait 0.5;
                        _ID42407::_ID28864( var_1[_func_0B7( var_1.size )] );
                        _ID42237::_ID14388( "sniper_attempting_shot" );
                        return 1;
                    }
                    else
                    {
                        var_3 thread _ID42407::_ID27079( "h2_wpn_cheytac_npc_close" );
                        _ID42237::_ID14388( "sniper_attempting_shot" );
                        return 0;
                    }
                }
            }
        }
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID54219()
{
    _ID42237::_ID14413( "download_started" );
    level._ID43363 = _func_1A5();
    var_0 = _func_1A1( "dsm", "targetname" );
    var_0 _meth_8143( "allies" );
    var_0._ID1204 = 50;
    var_0._ID630 = 300;
    thread _ID42407::_ID32343( 6, 2 );
    _ID42237::_ID14413( "dsm_recovered" );
    var_0 _meth_8144();
    var_0 _meth_80B7();
}

_ID44888()
{
    _func_14C( "h2_mil_wireless_dsm_obj_opaque" );
    var_0 = _func_1A1( "dsm", "targetname" );
    var_1 = _func_1A1( "dsm_obj", "targetname" );
    var_2 = _func_06A( "script_origin", ( 141.314, 211.295, 168 ) );
    var_0 _ID42407::_ID3428( "dsm" );
    var_1 _ID42407::_ID3428( "dsm" );
    var_2 _ID42259::_ID3018( var_0, "dsm_in" );
    var_2 _ID42259::_ID3018( var_1, "dsm_out" );
    var_0 _meth_805A();
    var_1 _meth_805A();
    _ID42237::_ID14413( "dsm_ready_to_use" );
    var_3 = _func_1A1( "dsm_usetrigger", "targetname" );
    var_3 thread _ID42237::_ID44574( level._ID794, &"ESTATE_DSM_USE_HINT", &"ESTATE_DSM_USE_HINT_PC", "trigger" );
    var_1 _meth_8059();
    _ID42237::_ID14413( "download_started" );
    _ID42237::_ID14402( "dsm_exposed" );
    _ID42407::_ID4422( "started_download" );
    var_1 _meth_805A();
    var_0 _ID42237::_ID10192( 0.5, ::_meth_8059 );
    var_1 _meth_80B8( "h2_mil_wireless_dsm_obj_opaque" );
    level._ID794 _meth_8189( "stand" );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    thread _unknown_5E60();
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "actionSlotsHide", "1" );
    level._ID794 thread _ID42407::_ID27079( "scn_plr_dsm_in" );
    var_2 _ID42407::_ID49392( "dsm_in", [ var_0 ], 0, 0.5, 1 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
    var_0 thread _unknown_5F20();
    _ID42237::_ID14388( "dsm_ready_to_use" );
    _func_0DB( "ammoCounterHide", "0" );
    _func_0DB( "actionSlotsHide", "0" );
    var_3 thread _ID42237::_ID44574( level._ID794, &"ESTATE_DSM_PICKUP_HINT", &"ESTATE_DSM_PICKUP_HINT_PC", "trigger" );
    _ID42237::_ID14413( "download_complete" );
    _ID42237::_ID14402( "dsm_ready_to_use" );
    var_1 _meth_8059();
    var_0 _meth_805A();
    var_3 waittill( "trigger" );
    var_1 _meth_805A();
    var_0 _meth_8059();
    level._ID794 thread _ID42407::_ID27079( "dsm_pickup" );

    if ( !_ID42237::_ID14385( "fence_removed" ) )
    {
        var_4 = _func_1A1( "final_area_fence", "targetname" );
        var_4 _meth_80B7();
        _ID42237::_ID14402( "fence_removed" );
    }

    var_5 = _func_1A2( "broken_fence", "targetname" );
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 _meth_8059();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14388( "dsm_ready_to_use" );
    _ID42237::_ID14388( "dsm_exposed" );
    level._ID794 thread _ID42407::_ID27079( "scn_plr_dsm_out" );
    thread _unknown_5FAD();
    level._ID794 _meth_8189( "stand" );
    var_2 _ID42407::_ID49392( "dsm_out", [ var_0 ], 0, 0.5, 1 );
    var_1 _meth_80B7();
    var_0 _meth_805A();
    _ID42237::_ID14402( "dsm_recovered" );

    if ( !_ID42237::_ID14385( "can_save" ) )
        _ID42237::_ID14402( "can_save" );
}

dsm_drop_bodysense_cinematic()
{
    var_0 = _ID54167::_ID43386( "dsm_drop_bodysense" );
    waitframe;
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, -1, 32, 32 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 2.8 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 1.3 ) _ID54167::_ID47198( 0.08, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.65 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.5 ) _ID54167::_ID47198( 0.08, 0.6, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48166();
}

dsm_pickup_bodysense_cinematic()
{
    var_0 = _ID54167::_ID43386( "dsm_pickup_bodysense" );
    waitframe;
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, 50, 32, 32 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 2.3 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 1.15 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.4 ) _ID54167::_ID47198( 0.04, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 1.75 ) _ID54167::_ID47198( 0.05, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48166();
}

_ID53002()
{
    self _meth_80A1( "scn_estate_data_grab_setdown" );
    wait 2;
    self _meth_807C( "scn_estate_data_grab_loop" );
    _ID42237::_ID14413( "download_complete" );
    self _meth_80B2();
}

_ID53598()
{
    _ID42237::_ID14413( "download_started" );
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );
    level endon( "dsm_has_been_destroyed" );
    level endon( "kill_stats_display_huds" );
    level thread _unknown_632F();
    var_0 = 210;
    var_1 = 40;
    var_2 = 14;
    var_3 = -28;
    var_4 = -230;
    var_5 = -160;
    var_6 = var_2 + 10;
    var_7 = var_2 + 10;
    var_8 = var_7 + 16;
    var_9 = 0.45;
    var_10 = _ID42237::_ID54738();

    switch ( var_10 )
    {

    }

    if ( !_ID42237::_ID14385( "download_test" ) )
    {
        level.backers = _ID42313::getstatbackers( var_1, var_0, var_access_12, var_access_11, 1 );
        level._ID43120 = _ID42313::_ID50277( var_2, var_4, undefined, undefined, var_7, &"ESTATE_DSM_FRAME" );
        level._ID43120 _meth_8090( 30, 900000, 700 );
        wait 0.65;
        level._ID45141 = _ID42313::_ID50277( var_3, var_4, undefined, undefined, var_7, &"ESTATE_DSM_WORKING" );
        level._ID45141 _meth_8090( 30, 900000, 700 );
        wait 2.85;
        level._ID45141 _meth_808F();
        level._ID45141 = _ID42313::_ID50277( var_3, var_4, undefined, undefined, var_7, &"ESTATE_DSM_NETWORK_FOUND" );
        level._ID45141 _meth_8090( 30, 900000, 700 );
        wait 3.75;
        level._ID45141 _meth_808F();
        level._ID45141 = _ID42313::_ID50277( var_3, var_4, undefined, undefined, var_7, &"ESTATE_DSM_IRONBOX" );
        level._ID45141 _meth_8090( 30, 900000, 700 );
        wait 2.25;
        level._ID45141 _meth_808F();
        level._ID45141 = _ID42313::_ID50277( var_3, var_4, undefined, undefined, var_7, &"ESTATE_DSM_BYPASS" );
        level._ID45141 _meth_8090( 30, 900000, 700 );
        wait 3.1;
        level._ID43120 _meth_808F();
        level._ID45141 _meth_808F();
    }

    level._ID47458 = 0;
    level._ID53992 = [];
    level._ID53992[1] = 95;
    level._ID53992[2] = 1280;
    level._ID53992[3] = 112;
    level._ID53992[4] = 180;
    level._ID53992[5] = 400;
    level._ID53381 = 0;

    for ( var_13 = 1; var_13 <= 5; var_13++ )
        level._ID53381 = level._ID53381 + level._ID53992[var_13];

    level._ID43120 = _ID42313::_ID50277( var_2, var_5, undefined, undefined, var_7, &"ESTATE_DSM_PROGRESS" );
    level._ID43120 _meth_8090( 30, 900000, 700 );
    level._ID45141 = _ID42313::_ID50277( var_10, var_5, undefined, undefined, var_7, &"ESTATE_DSM_SLASH_TOTALFILES", undefined, 0 );
    level._ID45141 _meth_8090( 30, 900000, 700 );
    level._ID45141._ID44 = "right";
    level._ID47999 = _ID42313::_ID50277( var_2, var_6, undefined, undefined, var_7, &"ESTATE_DSM_DLTIMELEFT" );
    level._ID47999 _meth_8090( 30, 900000, 700 );
    level._ID53192 = _ID42313::_ID50277( var_9, var_6, undefined, undefined, var_7, &"ESTATE_DSM_DLTIMELEFT_MINS", undefined, 0 );
    level._ID53192 _meth_8090( 30, 900000, 700 );

    if ( var_8 == "LANGUAGE_ARABIC" )
        level._ID53192._ID44 = "left";
    else
        level._ID53192._ID44 = "right";

    level._ID48678 = _ID42313::_ID50277( var_10, var_6, undefined, undefined, var_7, &"ESTATE_DSM_DLRATE", undefined, 0 );
    level._ID48678 _meth_8090( 30, 900000, 700 );
    level._ID48678._ID44 = "right";
    level._ID49449 = 0.85;
    _ID42237::_ID14402( "download_data_initialized" );
    var_14 = undefined;
    var_15 = undefined;
    var_16 = undefined;
    var_17 = _func_03D();

    while ( level._ID47458 < level._ID53381 )
    {
        level._ID53761 = _func_03D() - var_17 / 1000;
        var_18 = 0;
        var_19 = _func_0B9( 1, 100 );

        if ( var_19 > 0 && var_19 < 10 )
            var_14 = 5;

        if ( var_19 >= 10 && var_19 < 25 )
            var_14 = 2;

        if ( var_19 >= 25 && var_19 < 50 )
            var_14 = 1;

        if ( var_19 >= 50 && var_19 < 75 )
            var_14 = 3;

        if ( var_19 >= 75 && var_19 < 100 )
            var_14 = 4;

        switch ( var_14 )
        {

        }

        _unknown_66D6( var_18, var_16, var_15, var_14 );

        if ( var_14 == 5 )
        {
            var_14 = 1;
            continue;
        }

        var_14++;
        case 5:
        case 4:
        case 3:
        case 2:
        case 1:
    }

    if ( _func_03A( "debug_dsm_gameplay" ) == 1 )
        return;

    _ID42237::_ID14402( "download_complete" );

    if ( !_ID42237::_ID14385( "can_save" ) )
        _ID42237::_ID14402( "can_save" );

    thread _unknown_66D6();
    case "LANGUAGE_RUSSIAN_PARTIAL":
    case "LANGUAGE_ARABIC":
    case "LANGUAGE_PORTUGUESE":
    case "LANGUAGE_RUSSIAN":
    case "LANGUAGE_POLISH":
    case "LANGUAGE_GERMAN":
    case "LANGUAGE_FRENCH":
    default:
}

check_kill_download_display()
{
    self endon( "download_complete" );
    self waittill( "kill_stats_display_huds" );
    _unknown_66E7();
}

_ID51488()
{
    if ( _func_02F( level.backers ) )
    {
        var_0 = level.backers;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            var_1 _meth_808F();
        }

        var_clear_2
        var_clear_0
        level.backers = undefined;
    }

    if ( _func_02F( level._ID43120 ) )
        level._ID43120 _meth_808F();

    if ( _func_02F( level._ID45141 ) )
        level._ID45141 _meth_808F();

    if ( _func_02F( level._ID46801 ) )
        level._ID46801 _meth_808F();

    if ( _func_02F( level._ID52546 ) )
        level._ID52546 _meth_808F();

    if ( _func_02F( level._ID53192 ) )
        level._ID53192 _meth_808F();

    if ( _func_02F( level._ID47999 ) )
        level._ID47999 _meth_808F();

    if ( _func_02F( level._ID49568 ) )
        level._ID49568 _meth_808F();

    if ( _func_02F( level._ID48863 ) )
        level._ID48863 _meth_808F();

    if ( _func_02F( level._ID44235 ) )
        level._ID44235 _meth_808F();

    if ( _func_02F( level._ID48678 ) )
        level._ID48678 _meth_808F();

    if ( _func_02F( level._ID50078 ) )
        level._ID50078 _meth_808F();
}

_ID43696( var_0, var_1, var_2, var_3 )
{
    level endon( "dsm_has_been_destroyed" );

    if ( !level._ID53992[var_3] )
        return;

    var_4 = undefined;
    var_5 = undefined;

    switch ( var_3 )
    {

    }

    var_4 = _unknown_6932( var_4 );
    var_6 = level._ID47458 / level._ID53381;

    if ( var_6 < level._ID49449 )
        level._ID53192 _meth_80DE( var_5 );

    level._ID48678 _meth_80DE( var_4 );

    while ( var_0 < var_1 )
    {
        var_0++;
        level._ID47458++;
        level._ID45141 _meth_80DE( level._ID47458 );
        var_7 = _func_1A1( "dsm", "targetname" );
        var_8 = _func_0F6( level._ID794._ID740 - var_7._ID740 );
        var_9 = _func_1A1( "no_autosave_in_basement", "targetname" );
        var_10 = level._ID51846 * 0.7;

        if ( var_8 <= level._ID44576 && level._ID54566 >= var_10 )
        {
            if ( !level._ID794 _meth_80B0( var_9 ) )
            {
                if ( level._ID47458 == 300 )
                    _ID42407::_ID4422( "saved_during_download" );

                if ( level._ID47458 == 600 )
                    _ID42407::_ID4422( "saved_during_download" );

                if ( level._ID47458 == 900 )
                    _ID42407::_ID4422( "saved_during_download" );

                if ( level._ID47458 == 1200 )
                    _ID42407::_ID4422( "saved_during_download" );

                if ( level._ID47458 == 1500 )
                    _ID42407::_ID4422( "saved_during_download" );
            }
        }

        if ( level._ID47458 == 1000 )
            level notify( "magic_sniper_breaktime" );

        level._ID53992[var_3]--;
        wait(var_2);
    }

    case 5:
    case 4:
    case 3:
    case 2:
    case 1:
}

_ID48519()
{
    level endon( "dsm_has_been_destroyed" );
    _ID42237::_ID14413( "download_data_initialized" );
    var_0 = 0;
    var_1 = 0;

    while ( !_ID42237::_ID14385( "download_complete" ) )
    {
        var_2 = level._ID47458 / level._ID53381;

        if ( var_2 >= level._ID49449 && var_2 < 1 && !var_1 )
        {
            var_1 = 1;
            level._ID53192._ID578 = &"ESTATE_DSM_DLTIMELEFT_SECS";
        }

        if ( var_2 >= level._ID49449 && var_2 < 1 )
        {
            var_3 = level._ID53992[1] / 1;
            var_4 = level._ID53992[2] / 20;
            var_5 = level._ID53992[3] / 2;
            var_6 = level._ID53992[4] / 4;
            var_7 = level._ID53992[5] / 10;
            var_0 = var_3 + var_4 + var_5 + var_6 + var_7;
            var_0 = _unknown_6A9B( var_0, 1 );
            wait 0.05;
            level._ID53192 _meth_80DE( var_0 );
            continue;
        }

        wait 0.05;
    }
}

_ID45144( var_0, var_1 )
{
    if ( var_0 >= 10 || _func_02F( var_1 ) )
    {
        var_0 *= 10;
        var_0 = _func_0C1( var_0 );
        var_0 /= 10;
    }
    else
    {
        var_0 *= 100;
        var_0 = _func_0C1( var_0 );
        var_0 /= 100;
    }

    if ( var_0 >= 10 || _func_02F( var_1 ) )
    {
        var_2 = _func_0C1( var_0 );
        var_3 = var_0 - var_2;

        if ( var_3 == 0 )
            var_0 += 0.1;
    }
    else if ( var_0 < 10 && var_0 >= 1 )
    {
        var_4 = var_0 * 10;
        var_5 = _func_0C1( var_0 * 10 );
        var_3 = var_4 - var_5;

        if ( var_3 == 0 )
            var_0 += 0.01;
    }
    else if ( var_0 < 1 && var_0 >= 0.1 )
    {
        var_6 = _func_0C1( var_0 * 10 );
        var_5 = var_6 / 10;
        var_2 = _func_0C1( var_0 * 100 );
        var_6 = _func_0C1( var_5 * 100 );
        var_7 = var_2 % var_6;

        if ( var_7 == 0 )
            var_0 += 0.01;
    }
    else if ( var_0 < 0.1 )
    {
        var_6 = _func_0C1( var_0 * 100 );
        var_0 = var_6 / 100;
    }

    return var_0;
}

_ID43633()
{
    _ID42237::_ID14413( "download_started" );

    while ( !_ID42237::_ID14385( "dsm_recovered" ) )
    {
        var_0 = level._ID54566 + level._ID43531;

        if ( var_0 >= level._ID51846 )
            level._ID54566 = level._ID51846;
        else
            level._ID54566 = var_0;

        wait 1;
    }
}

_ID52098()
{
    _ID42237::_ID14413( "download_started" );
    var_0 = _func_1A1( "dsm", "targetname" );
    var_1 = var_0._ID740;

    while ( !_ID42237::_ID14385( "dsm_recovered" ) )
    {
        var_2 = _func_0F6( level._ID794._ID740 - var_1 );

        if ( var_2 >= level._ID45784 )
        {
            level._ID43531 = 0;
            wait 0.25;
            continue;
        }
        else
        {
            var_3 = level._ID45784 - var_2 / level._ID45784;
            level._ID43531 = var_3 * level._ID52361;
        }

        wait 0.25;
    }
}

_ID47757()
{
    level endon( "dsm_recovered" );
    _ID42237::_ID14413( "download_started" );
    var_0 = _func_1A1( "dsm_dmg_trigger", "targetname" );

    if ( _func_03A( "debug_dsm_gameplay" ) == 1 || _func_03A( "debug_estate_siege" ) || _func_03A( "debug_estate_forceStrike" ) )
    {
        var_0 _meth_80B7();
        return;
    }

    while ( !_ID42237::_ID14385( "dsm_recovered" ) )
    {
        var_0 waittill( "damage",  var_2, var_1  );

        if ( _func_03A( "debug_estate_siege" ) || _func_03A( "debug_estate_forceStrike" ) )
            continue;

        if ( var_2 != level._ID794 )
        {
            var_3 = _func_0F6( var_0._ID740 - var_2._ID740 );

            if ( var_3 < 512 )
                level._ID54566 = level._ID54566 - var_1;
        }
        else
            level._ID54566 = level._ID54566 - var_1;

        if ( level._ID54566 <= 1000 )
            _ID42237::_ID14388( "can_save" );

        if ( level._ID54566 > 1000 )
            _ID42237::_ID14402( "can_save" );

        if ( level._ID54566 <= 0 )
        {
            if ( var_2 == level._ID794 )
                _func_034( "ui_deadquote", &"ESTATE_DSM_DESTROYED_BY_PLAYER" );
            else
                _func_034( "ui_deadquote", &"ESTATE_DSM_DESTROYED_BY_AI_GUNFIRE" );

            level notify( "dsm_has_been_destroyed" );
            thread _unknown_6BF5();
            _ID42407::_ID23778();
        }
    }
}

_ID46675()
{
    _ID42237::_ID14413( "player_is_escaping" );
    level._ID8201 = _ID42237::_ID8201();
    wait 0.1;
    _ID42237::_ID14402( "cointoss_done" );
}

_ID53209()
{
    self endon( "death" );
    _ID42237::_ID14413( "cointoss_done" );

    if ( level._ID8201 )
        thread _unknown_6DFE();
    else
        thread _unknown_6E16();
}

_ID51099()
{
    self endon( "death" );
    _ID42237::_ID14413( "cointoss_done" );

    if ( level._ID8201 )
        thread _unknown_6E2F();
    else
        thread _unknown_6E21();
}

_ID45622()
{
    self endon( "death" );
    _ID42237::_ID14413( "birchfield_cleared_sector2" );
    var_0 = _func_1A1( "breach_tweak_start", "targetname" );
    var_1 = var_0._ID740;
    _func_1C8( "cheytac", var_1, self._ID740 + ( 0, 0, 60 ) );
    self _meth_8058();
}

_ID44519()
{
    self endon( "death" );
    _ID42237::_ID14413( "point_of_no_return" );
    var_0 = self._ID740;
    _func_156( level._ID1426["mortar"]["dirt"], var_0 );
    var_1 = _func_06A( "script_origin", var_0 );
    var_1 _meth_80A1( "clusterbomb_explode_default" );
    self _meth_8058();
}

_ID48255()
{
    self waittill( "death" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
    {
        var_0 = _func_0C8( "scarecrow_earlydefense_start", "targetname" );
        var_1 = _func_090( level._ID794._ID740, var_0._ID740, 1, undefined );
        var_2 = _func_0F6( level._ID794._ID740 - var_0._ID740 );

        if ( var_2 > 384 && !var_1 )
            _ID42407::_ID28864( "est_scr_imhit" );

        var_3 = _func_03D();
        _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
        _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
        _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
        _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
        _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
        _ID42237::_ID14426( "rpg_stables_dialogue" );
        _ID42237::_ID14426( "rpg_boathouse_dialogue" );
        _ID42237::_ID14426( "rpg_southwest_dialogue" );
        _ID42237::_ID14426( "ozone_death_dialogue" );
        _ID42237::_ID14426( "sniper_breaktime_dialogue" );
        var_4 = 500.0;
        var_5 = _func_03D();
        var_6 = var_5 - var_3;

        if ( var_6 <= var_4 )
        {
            _ID42237::_ID14402( "scarecrow_death_dialogue" );
            _ID42407::_ID28864( "est_snp1_scarecrowdown" );
            _ID42237::_ID14388( "scarecrow_death_dialogue" );
        }
    }
}

_ID50471()
{
    self waittill( "death" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
    {
        _ID42407::_ID28864( "est_ozn_imhit" );
        var_0 = _func_03D();
        _ID42237::_ID14426( "strike_package_birchfield_dialogue" );
        _ID42237::_ID14426( "strike_package_bighelidrop_dialogue" );
        _ID42237::_ID14426( "strike_package_boathouse_dialogue" );
        _ID42237::_ID14426( "strike_package_solarfield_dialogue" );
        _ID42237::_ID14426( "strike_package_md500rush_dialogue" );
        _ID42237::_ID14426( "rpg_stables_dialogue" );
        _ID42237::_ID14426( "rpg_boathouse_dialogue" );
        _ID42237::_ID14426( "rpg_southwest_dialogue" );
        _ID42237::_ID14426( "scarecrow_death_dialogue" );
        _ID42237::_ID14426( "sniper_breaktime_dialogue" );
        var_1 = 500.0;
        var_2 = _func_03D();
        var_3 = var_2 - var_0;

        if ( var_3 <= var_1 )
        {
            _ID42237::_ID14402( "ozone_death_dialogue" );
            _ID42407::_ID28864( "est_snp1_ozoneisdown" );
            _ID42237::_ID14388( "ozone_death_dialogue" );
        }
    }
}

_ID51548()
{
    _ID42237::_ID14413( "strike_packages_definitely_underway" );

    if ( _ID42237::_ID14385( "abandonment_danger_zone" ) )
    {
        _ID42237::_ID14426( "abandonment_danger_zone" );
        _ID42237::_ID14402( "player_can_fail_by_desertion" );
    }
    else
        _ID42237::_ID14402( "player_can_fail_by_desertion" );
}

_ID54295()
{
    level endon( "dsm_recovered" );
    _ID42237::_ID14413( "strike_packages_definitely_underway" );
    wait(level._ID47137);
    _ID42237::_ID14402( "player_can_fail_by_desertion" );
}

_ID48893()
{
    level endon( "dsm_recovered" );
    level endon( "player_deserted_the_area" );
    _ID42237::_ID14413( "strike_packages_definitely_underway" );

    for (;;)
    {
        _ID42237::_ID14426( "abandonment_danger_zone" );
        level notify( "player_is_out_of_danger_zone" );
        _ID42237::_ID14413( "abandonment_danger_zone" );
    }
}

_ID50966()
{
    level endon( "dsm_recovered" );
    level endon( "player_deserted_the_area" );
    _ID42237::_ID14413( "strike_packages_definitely_underway" );

    for (;;)
    {
        _ID42237::_ID14413( "abandonment_danger_zone" );
        _ID42237::_ID14388( "can_save" );
        thread _unknown_716D();
        _ID42237::_ID14426( "abandonment_danger_zone" );
        _ID42237::_ID14402( "can_save" );
    }
}

_ID44753()
{
    level endon( "dsm_recovered" );
    level endon( "player_deserted_the_area" );
    level endon( "player_is_out_of_danger_zone" );

    if ( !level._ID49061 )
    {
        thread _ID42407::_ID28864( "est_gst_dontstray" );
        level._ID49061 = 1;
    }
    else
    {
        thread _ID42407::_ID28864( "est_gst_stayclose" );
        level._ID49061 = 0;
    }

    wait(level._ID46536 / 2);

    if ( !level._ID49076 )
    {
        thread _ID42407::_ID28864( "est_gst_fallback" );
        level._ID49076 = 1;
    }
    else
    {
        thread _ID42407::_ID28864( "est_gst_tryingtostop" );
        level._ID49076 = 0;
    }

    wait(level._ID46536 / 2);
    _ID42237::_ID14402( "player_entered_autofail_zone" );
}

_ID48155()
{
    _ID42237::_ID14413( "player_can_fail_by_desertion" );
    _ID42237::_ID14413( "player_entered_autofail_zone" );
    level notify( "player_deserted_the_area" );
    _ID42407::_ID28864( "est_gst_destroyedthedsm" );
    _ID42407::_ID28876();
    _func_034( "ui_deadquote", &"ESTATE_DSM_DESTROYED_BY_DESERTION" );
    _ID42407::_ID23778();
}

_ID48288( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _unknown_7277();
    }

    var_clear_2
    var_clear_0
}

_ID44008()
{
    _func_156( _ID42237::_ID16299( "smoke_cloud" ), self._ID740 );
    self _meth_80A1( "estate_smokegrenade_explode" );
}

_ID5263( var_0, var_1 )
{
    _unknown_72B6( var_0, 1, var_1 );
}

_ID51505( var_0, var_1 )
{
    _ID29877( var_0, 0.6, var_1 );
}

_ID29877( var_0, var_1 )
{
    _unknown_72D0( var_0, 0, var_1 );
}

_ID13818( var_0, var_1, var_2 )
{
    self _meth_808B( var_0 );
    self._ID55 = var_1;
    _func_076( var_2, var_0 );
    wait(var_0);
}

_ID48354()
{
    var_0 = level._ID794 _meth_831C();

    if ( var_0 == "claymore" )
        return 1;

    if ( !level._ID794 _meth_8256( "DPAD_RIGHT" ) )
        return 0;
    else
        return 1;
}

_ID46541( var_0 )
{
    var_1 = level._ID805;

    for ( var_5 = _func_1DA( var_1 ); _func_02F( var_5 ); var_5 = _func_1BF( var_1, var_5 ) )
    {
        var_2 = var_1[var_5];
        var_3 = _func_0F3( var_0._ID740, var_2._ID740 );
        var_4 = _func_0C3( var_0._ID740[2] - var_2._ID740[2] );

        if ( var_3 < 360 && var_4 < 200 )
        {
            return "return";
            continue;
        }

        if ( var_3 < 1000 )
            return "threat_exists";
    }

    var_clear_4
    var_clear_0
    return "none";
}

_ID43694()
{
    if ( !_ID42237::_ID14385( "house_interior_breaches_done" ) )
    {
        var_0 = _func_0DD( "axis", "all" );
        var_1 = _func_0DE( "axis" );
        var_2 = _func_0DE( "allies" );
        var_3 = var_2;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            _ID42271::clear_color_progress( var_4 );
        }

        var_clear_2
        var_clear_0

        while ( var_0 != 0 )
        {
            var_0 = _func_0DD( "axis", "all" );
            var_6 = _ID42237::_ID28945( var_1 );
            var_7 = var_2;

            for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
            {
                var_4 = var_7[var_8];

                if ( _func_1A7( var_6 ) )
                    var_4 _ID42407::_ID32331( var_6 );
            }

            var_clear_1
            var_clear_0
            wait 0.5;
        }

        var_9 = _func_1A1( "house_approach_friendlytrigger", "targetname" );
        var_9 notify( "trigger" );
    }
}
#using_animtree("generic_human");

_ID51618()
{
    if ( !_func_02F( self._ID1191 ) )
        return;

    var_0 = _func_0C8( self._ID1191, "targetname" );

    if ( !_func_02F( var_0 ) || var_0._ID1244 != "Guard" )
        return;

    var_1 = animscripts\utility::_ID22635( "cover_trans", "exposed_crouch_crouchwalk", 2 );
    var_2 = _func_094( var_1, 0, 1 );
    var_3 = _func_0F9( var_2 );
    var_4 = _func_0ED( 8 );

    for ( var_5 = _func_22D( self._ID740, var_0._ID740 ); var_5 > var_3 + var_4; var_5 = _func_22D( self._ID740, var_0._ID740 ) )
        wait 0.05;

    self notify( "move_interrupt" );
    self _meth_814C( %body, 0.2 );
    self _meth_811C( "cover_arrival", var_1, 1, 0.2, self._ID24474 );
    animscripts\shared::_ID11529( "cover_arrival" );
    self._ID7._ID24414 = "stop";
    self _meth_814C( %animscript_root, 0.2 );
    thread animscripts\move::_ID616();
}

_ID53632()
{
    if ( !_func_02F( level._ID45646 ) )
        level._ID45646 = 0;

    var_0 = level._ID45646;
    level._ID45646 = _ID42237::_ID648( level._ID45646 + 1, 4 );
    return var_0;
}

_ID47426()
{
    var_0 = _unknown_7570();
    wait(0.1 + 0.1 * var_0);
    animscripts\grenade_cower::_ID616();
}

achievement_claymore_init()
{
    if ( !_func_02F( level.playerclaymorekill ) )
        level.playerclaymorekill = 0;

    _ID42407::_ID1892( "axis", ::_unknown_75AC );
    _ID42237::_ID3350( _func_0DE( "axis" ), ::_unknown_75B7 );
    thread _unknown_75DA();
}

achievement_claymore_enemy_spawned()
{
    level endon( "achievement_claymore_done" );
    self waittill( "death",  var_2, var_2, var_2  );

    if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
    {
        if ( _func_02F( var_1 ) && var_1 == "MOD_GRENADE_SPLASH" )
        {
            if ( _func_02F( var_2 ) && var_2 == "claymore" )
                level.playerclaymorekill++;
        }
    }
}

achievement_claymore_manager()
{
    while ( level.playerclaymorekill < 11 )
        waittillframeend;

    _ID42407::_ID16864( "CLAYMORE" );
    _ID42407::_ID29534( "axis", ::_unknown_761F );
    level notify( "achievement_claymore_done" );
}

fake_rpg( var_0 )
{
    var_1 = _ID42237::_ID16640( var_0, "targetname" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
        _func_1C8( "rpg", var_3._ID740, var_4._ID740 );
        wait(_func_0BA( 2.5, 4.5 ));
    }

    var_clear_3
    var_clear_0
}

blade_rotate()
{
    _ID42237::_ID14413( "autosave_housearrival" );
    _ID42237::_ID3350( _func_1A2( "blade", "targetname" ), ::_unknown_76E1 );
}

lighting_override_venitians()
{
    _ID42237::_ID14413( "autosave_housearrival" );
    var_0 = _func_1A2( "override_light", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_848A( ( 848, -102.5, 262.5 ) );
    }

    var_clear_2
    var_clear_0
}

_ID13933()
{
    var_0 = _func_0BA( 0.7, 1.5 );

    for (;;)
    {
        self _meth_82C1( 360, var_0 );
        wait(var_0);
    }
}

animatescriptedmodel( var_0 )
{
    _ID42237::_ID14413( "approaching_house" );

    if ( !_func_02F( self ) )
        return;

    self._ID3189 = var_0;
    _ID42259::_ID32556();
    var_1 = _ID42407::_ID16120( "idle" );
    self _meth_8155( var_1 );
    var_2 = _func_0B8( 1 );
    self _meth_8120( var_1, var_2 );
}
