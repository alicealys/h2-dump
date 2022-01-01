// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49840()
{
    level._ID51829 = "mil_frame_charge";
    level._ID47275 = "viewbody_tf141_forest";
    setdvar( "use_improved_breaches", 1 );
    _ID51593::_ID616();
    _ID51464::_ID616();
    maps\estate_anim::_ID616();
    _ID47772::_ID616();
    _ID42323::_ID616();
    level._ID4437 = ::_ID46541;
    _ID42287::_ID521();
    _ID42367::_ID34366();
    _ID53924::_ID616();
    level._ID48294 = _ID53567();
    precacheitem( "claymore" );
    precacheitem( "flash_grenade" );
    precacheitem( "javelin" );
    precacheitem( "javelin_estate_jeep" );
    precacheitem( "cheytac" );
    precachemodel( "projectile_bouncing_betty_grenade" );
    precachemodel( "accessories_gas_canister_highrez" );
    precachemodel( "prop_cigarette_pack" );
    precachemodel( "prop_price_cigar" );
    precachemodel( "weapon_colt_anaconda_animated" );
    precachemodel( "mil_wireless_dsm_small" );
    precachemodel( "electronics_camera_pointandshoot_animated" );
    precachemodel( "hat_opforce_merc_b" );
    precacheturret( "minigun_littlebird_spinnup" );
    precacheshellshock( "estate_bouncingbetty" );
    precacherumble( "artillery_rumble" );
    precacherumble( "shepherd_pistol" );
    precacherumble( "shot_collapse" );
    precacherumble( "bodytoss_impact" );
    precacherumble( "dsm_rummage" );
    precachestring( &"ESTATE_DSM_FRAME" );
    precachestring( &"ESTATE_DSM_WORKING" );
    precachestring( &"ESTATE_DSM_NETWORK_FOUND" );
    precachestring( &"ESTATE_DSM_IRONBOX" );
    precachestring( &"ESTATE_DSM_BYPASS" );
    precachestring( &"ESTATE_DSM_PROGRESS" );
    precachestring( &"ESTATE_DSM_SLASH_TOTALFILES" );
    precachestring( &"ESTATE_DSM_DLTIMELEFT" );
    precachestring( &"ESTATE_DSM_DLTIMELEFT_MINS" );
    precachestring( &"ESTATE_DSM_DLTIMELEFT_SECS" );
    precachestring( &"ESTATE_DSM_DL_RATEMETER" );
    precachestring( &"ESTATE_DSM_DLRATE" );
    precachestring( &"ESTATE_DSM_DESTROYED_BY_PLAYER" );
    precachestring( &"ESTATE_DSM_DESTROYED_BY_AI_GUNFIRE" );
    precachestring( &"ESTATE_DSM_DESTROYED_BY_DESERTION" );
    precachestring( &"ESTATE_LEARN_PRONE" );
    precachestring( &"ESTATE_LEARN_PRONE_TOGGLE" );
    precachestring( &"ESTATE_LEARN_PRONE_HOLDDOWN" );
    precachestring( &"ESTATE_USE_CLAYMORE_HINT" );
    precachestring( &"ESTATE_REMIND_PRONE_LINE1" );
    precachestring( &"ESTATE_REMIND_PRONE_LINE2" );
    precachestring( &"ESTATE_REMIND_PRONE_LINE2_TOGGLE" );
    precachestring( &"ESTATE_REMIND_PRONE_LINE2_HOLDDOWN" );
    precacheshader( "h1_hud_tutorial_blur" );
    precacheshader( "h1_hud_tutorial_border" );
    precacheshader( "h2_hud_ssdd_stats_blur" );
    precacheshader( "h2_hud_ssdd_stats_border" );
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
    _ID42407::_ID1895( "claymore_hint", &"ESTATE_USE_CLAYMORE_HINT", ::_ID48354, undefined, "medium_background" );
    _ID42407::_ID1865( "mineavoid_hint_toggle", &"ESTATE_LEARN_PRONE", ::_ID51871, &"ESTATE_LEARN_PRONE_TOGGLE", undefined, "medium_background" );
    _ID42407::_ID1865( "mineavoid_hint_holddown", &"ESTATE_LEARN_PRONE", ::_ID51871, &"ESTATE_LEARN_PRONE_HOLDDOWN", undefined, "medium_background" );
    _ID42407::_ID1895( "mineavoid_hint", &"ESTATE_LEARN_PRONE", ::_ID51871, undefined, "medium_background" );
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
    _ID42237::_ID30398( "forest_friendly_advance_trig", ::_ID46950 );
    _ID42237::_ID30398( "breach_normalguy", ::_ID49410 );
    _ID42407::_ID3344( "breach_normalguy", ::_ID51410 );
    _ID42407::_ID3344( "breach_extraguy", ::_ID47711, 1 );
    _ID42407::_ID3344( "breach_extraguy", ::_ID48223 );
    _ID42407::_ID3344( "breach_enemy_spawner", ::_ID47711 );
    _ID42407::_ID3344( "breach_normalguy", ::_ID47711 );
    thread achievement_claymore_init();
    thread _ID54737();
    thread _ID50573();
    thread _ID47558();
    thread _ID54304();
    thread _ID45205();
    thread _ID48054();
    thread _ID47912();
    thread _ID46453();
    thread _ID46836();
    thread _ID48372();
    thread _ID43321();
    thread _ID46667();
    thread _ID54638();
    thread _ID52708();
    thread _ID52760();
    thread _ID51548();
    thread _ID54295();
    thread _ID48893();
    thread _ID50966();
    thread _ID48155();
    thread blade_rotate();
    thread lighting_override_venitians();
}

_ID46950()
{
    self endon( "death" );
    var_0 = undefined;

    if ( isdefined( self._ID31273 ) )
    {
        var_0 = [];
        var_0 = _ID42237::_ID15808();

        foreach ( var_2 in var_0 )
            var_2._ID38743 = self;
    }

    self waittill( "trigger" );
    level._ID53320 = self._ID31259;

    if ( isdefined( var_0 ) )
    {
        foreach ( var_2 in var_0 )
            var_2 delete();
    }
    else if ( isdefined( self._ID38743 ) )
        self._ID38743 delete();
}

_ID51871()
{
    if ( level._ID794 getstance() == "prone" )
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
    var_0 = getent( "player_view_start_1", "targetname" );
    var_1 = getent( "player_view_start_2", "targetname" );
    var_2 = var_1._ID740 - var_0._ID740;
    var_3 = vectortoangles( var_2 );
    return var_3;
}

_ID43284()
{
    level._ID47319 = _ID42407::_ID35168( "ghost", 1 );
    level._ID47319._ID3189 = "ghost";

    if ( !_ID42237::_ID14385( "test_ending" ) )
    {
        level._ID47319 thread _ID48114();
        level._ID47319._ID764 = 0;
        level._ID47319 thread _ID42407::_ID22746();

        if ( !_ID42237::_ID14385( "skip_houseapproach" ) )
            level._ID47319 allowedstances( "crouch" );

        level._ID47319 pushplayer( 1 );
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
        self allowedstances( "stand", "crouch", "prone" );

    _ID42407::_ID12467();
    _ID42407::_ID7892();
}

_ID48698()
{
    level endon( "ghost_leaving_start_area_early" );
    _ID42237::_ID14413( "start_ghost_intro_nav" );
    level notify( "ghost_leaving_start_area_on_cue" );
    var_0 = getent( "ghost_starter", "targetname" );

    if ( isdefined( var_0 ) )
        var_0 notify( "trigger" );

    level._ID47319 allowedstances( "crouch", "prone", "stand" );
}

_ID44990()
{
    level endon( "ghost_leaving_start_area_on_cue" );
    level notify( "ghost_leaving_start_area_early" );
    var_0 = getent( "ghost_starter", "targetname" );

    if ( isdefined( var_0 ) )
        var_0 waittill( "trigger" );

    level._ID47319 allowedstances( "crouch", "prone", "stand" );
}

_ID49861()
{
    _ID42407::_ID3344( "starter_friendly", ::_ID52309 );
    var_0 = getentarray( "starter_friendly", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID52309()
{
    self._ID513 = 1;
    self pushplayer( 1 );
    _ID42407::_ID12467();
    var_0 = isdefined( self._ID31217 );

    if ( var_0 )
    {
        thread _ID42407::_ID22746();

        if ( self._ID31217 == "Ozone" )
        {
            level._ID45604 = self;
            level._ID45604._ID3189 = "ozone";
            level._ID45604 thread _ID48114();
            level._ID45604 thread _ID50471();
            level._ID45604 thread _ID51099();
        }

        if ( self._ID31217 == "Scarecrow" )
        {
            level._ID46243 = self;
            level._ID46243._ID3189 = "scarecrow";
            level._ID46243 thread _ID48114();
            level._ID46243 thread _ID48255();
            level._ID46243 thread _ID53209();
        }
    }
}

_ID52872()
{
    _ID42407::_ID3344( "starter_scout", ::_ID50217 );
    var_0 = getentarray( "starter_scout", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID50217()
{
    self._ID513 = 1;
    self pushplayer( 1 );
    _ID42407::_ID12467();
    thread _ID47030();
}

_ID47030()
{
    self endon( "death" );
    _ID42237::_ID14413( "ambush_shouted" );
    thread _ID47426();
    _ID42237::_ID14413( "mine_throw_player" );
    wait(randomfloatrange( 0.1, 1 ));
    self kill();
}

_ID48845()
{
    _ID42407::_ID3344( "starter_sniper", ::_ID53569 );
    var_0 = getentarray( "starter_sniper", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID53569()
{
    self endon( "death" );
    self._ID513 = 1;
    self pushplayer( 1 );
    self allowedstances( "crouch" );
    childthread _ID51618();
    _ID42237::_ID14413( "player_is_out_of_ambush_zone" );
    self delete();
}

_ID48309( var_0 )
{
    _ID49861();
    var_1 = getaiarray( "allies" );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID31217 ) )
        {
            if ( var_3._ID31217 == "Ozone" )
            {
                var_4 = getnode( "ozone_" + var_0 + "_start", "targetname" );
                var_3 forceteleport( var_4._ID740, var_4._ID65 );
            }

            if ( var_3._ID31217 == "Scarecrow" )
            {
                var_4 = getnode( "scarecrow_" + var_0 + "_start", "targetname" );
                var_3 forceteleport( var_4._ID740, var_4._ID65 );
            }

            continue;
        }

        var_3 delete();
    }
}

_ID51071()
{
    _ID42407::_ID3343( "perimeter_guard", ::_ID52776 );
}

_ID52776()
{
    level._ID45472++;
    thread _ID43909();
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
    thread _ID43365();
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
    level._ID794 setmovespeedscale( var_2 );
    level._ID794 _meth_830f( 0 );
    wait(var_4 * var_3);
    _ID42475::_ID34575( "stop_bouncing_betty_slowmo" );
    _ID42407::_ID34375( var_1 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
    level._ID794 setmovespeedscale( 1.0 );
    level._ID794 _meth_830f( 1 );
    _ID42237::_ID14402( "slow_motion_ambush_done" );
}

_ID46232( var_0 )
{
    var_1 = level._ID794 getplayerangles();
    var_1 = ( 0, var_1[1], 0 );
    var_2 = anglestoforward( var_1 );
    var_3 = anglestoright( var_1 );
    var_4 = var_3 * -1;
    var_5 = level._ID794._ID740 + var_2 * 96;

    if ( isdefined( var_0 ) )
    {
        var_6 = level._ID794._ID740 + ( 0, 0, 64 );
        var_7 = level._ID794._ID740 + var_2 * 128 + ( 0, 0, 64 );
        var_8 = var_7 + var_3 * 16;
        var_9 = var_7 + var_4 * 16;
        var_10 = level._ID794._ID740 + var_2 * 128 + ( 0, 0, 28 );
        var_11 = var_10 + var_3 * 16;
        var_12 = var_10 + var_4 * 16;
        var_13 = bullettracepassed( var_6, var_7, 1, level._ID794 );
        var_14 = bullettracepassed( var_6, var_8, 1, level._ID794 );
        var_15 = bullettracepassed( var_6, var_9, 1, level._ID794 );
        var_16 = bullettracepassed( var_6, var_10, 1, level._ID794 );
        var_17 = bullettracepassed( var_6, var_11, 1, level._ID794 );
        var_18 = bullettracepassed( var_6, var_12, 1, level._ID794 );

        if ( var_13 && var_14 && var_15 && var_16 && var_17 && var_18 )
        {
            var_5 = _ID42237::_ID12140( var_5, 200, -200 );
            return var_5;
        }
        else
        {
            var_19 = getentarray( "alternate_bb_location", "targetname" );
            var_20 = 128;
            var_21 = 0;
            var_22 = 0;

            foreach ( var_24 in var_19 )
            {
                var_25 = length( level._ID794._ID740 - var_24._ID740 );
                var_26 = level._ID794 geteye();
                var_27 = var_24._ID740 + ( 0, 0, 6 );
                var_28 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_27, 0.766 );

                if ( var_28 )
                    var_28 = sighttracepassed( var_26, var_27, 1, level._ID794 );

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

            if ( !var_22 )
            {
                var_25 = undefined;
                var_30 = 100000;
                var_31 = undefined;

                foreach ( var_24 in var_19 )
                {
                    var_25 = length( level._ID794._ID740 - var_24._ID740 );

                    if ( var_25 < var_30 )
                    {
                        var_30 = var_25;
                        var_31 = var_24;
                    }
                }

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
    var_0 = getentarray( "bouncing_betty", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2 thread _ID45603( undefined, undefined, undefined );
        wait(randomfloatrange( 0.15, 0.2 ));
    }

    var_4 = _ID46232( "specialPlayerCase" );
    level._ID794 _meth_85a0();

    if ( isdefined( var_4 ) )
    {
        thread _ID53502( var_4 );
        var_5 = spawn( "script_origin", var_4 );
        var_5 thread _ID45603( 1, undefined );
    }
    else
    {
        thread _ID53502( level._ID794._ID740 );
        var_5 = spawn( "script_origin", level._ID794._ID740 );
        var_5 thread _ID45603( 1, undefined, 1 );
    }

    thread _ID45922();
    setsaveddvar( "objectiveHide", 1 );

    while ( level._ID47413 < var_0.size )
        wait 0.05;

    _ID42237::_ID14402( "ambush_shouted" );
    wait 0.35;
    level._ID47319 _ID42407::_ID10805( "est_gst_ambush" );
    wait 1;
    setsaveddvar( "objectiveHide", 0 );
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
    playfx( _ID42237::_ID16299( "bouncing_betty_launch" ), self._ID740 );
    self playsound( "mine_betty_click" );
    self playsound( "mine_betty_spin" );
    var_3 = isdefined( var_1 );
    var_2 = isdefined( var_2 );

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
        var_4 = spawn( "script_model", self._ID740 );
        var_4 setmodel( "projectile_bouncing_betty_grenade" );
        var_4._ID3189 = "bouncingbetty";
        var_4 useanimtree( level._ID30900["bouncingbetty"] );
        var_4 thread _ID45824();
        _ID42259::_ID3111( var_4, "bouncing_betty_detonate" );
        var_5 = var_4._ID740;

        if ( !var_3 )
            _ID42237::_ID14413( "ambush_shouted" );

        var_4 playsound( "mine_betty_explode" );
    }

    if ( isdefined( var_0 ) )
    {
        if ( !var_2 )
            playfxontag( _ID42237::_ID16299( "bouncing_betty_explosion" ), var_4, "tag_fx" );
        else
            wait 2;

        var_6 = getaiarray( "allies" );

        foreach ( var_8 in var_6 )
        {
            if ( !isdefined( var_8._ID680 ) )
                continue;

            if ( var_8._ID680 != "Archer" && var_8._ID680 != "Toad" )
                var_8 _ID42407::_ID10226( randomfloat( 0.15 ), _ID42259::_ID3020, var_8, "exposed_crouch_extendedpainA" );
        }

        var_4 playsound( "scn_last_mine_explode" );
        level._ID794 playrumblelooponentity( "artillery_rumble" );
        setplayerignoreradiusdamage( 0 );

        if ( level._ID794 getstance() == "prone" )
            _ID42237::_ID14402( "mine_throw_player" );
        else
        {
            wait 0.05;
            var_10 = _ID42237::_ID37527( level._ID794 getstance() == "stand", "h2_wpn_death_stand_explosion", "h2_wpn_death_crouch_explosion" );
            level._ID794 _meth_85a8( var_10 );
            waitframe;
            level._ID794 kill();
            thread _ID52158();
        }
    }
    else
    {
        playfxontag( _ID42237::_ID16299( "bouncing_betty_explosion" ), var_4, "tag_fx" );
        var_4 hide();

        if ( var_3 )
        {
            var_11 = length( level._ID794._ID740 - self._ID740 );
            level._ID794 playrumblelooponentity( "artillery_rumble" );

            if ( var_11 <= self._ID851 )
            {
                if ( level._ID794 getstance() == "prone" )
                {
                    setplayerignoreradiusdamage( 1 );
                    thread _ID54095( var_5 );
                    var_12 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65 + ( 0, -95, 0 ), self._ID740, cos( 180 ) );
                    var_13 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65 + ( 0, 95, 0 ), self._ID740, cos( 180 ) );
                    var_14 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740, cos( 10 ) );

                    if ( var_12 )
                        level._ID794 thread _ID42298::_ID17386( "right" );

                    if ( var_13 )
                        level._ID794 thread _ID42298::_ID17386( "left" );

                    if ( var_14 )
                        level._ID794 thread _ID42298::_ID17386( "bottom_b" );

                    thread _ID53115();
                }
                else
                {
                    wait 0.2;

                    if ( isalive( level._ID794 ) )
                    {
                        thread _ID54095( var_5 );
                        level notify( "new_quote_string" );
                        var_10 = _ID42237::_ID37527( level._ID794 getstance() == "stand", "h2_wpn_death_stand_explosion", "h2_wpn_death_crouch_explosion" );
                        level._ID794 _meth_85a8( var_10 );
                        waitframe;
                        level._ID794 kill();
                        thread _ID52158();
                    }
                }
            }
        }
        else
        {
            setplayerignoreradiusdamage( 1 );
            radiusdamage( var_5, self._ID851, 1000, 20 );
        }

        setplayerignoreradiusdamage( 0 );
    }

    wait 0.2;

    if ( isdefined( var_4 ) )
        var_4 delete();

    wait 0.5;

    if ( var_3 )
    {
        level._ID51842--;
        level notify( "gameplay_mine_done" );
    }
}

_ID44572()
{
    var_0 = getent( "forestfight_start_redshirts", "targetname" );
    var_0 waittill( "trigger" );
    _ID42407::_ID4422( "bb_autosave" );
}

_ID52158()
{
    wait 2.5;
    setdvar( "ui_deadquote", "" );
    setomnvar( "ui_hidebasedeathquote", 1 );
    var_0 = newhudelem();
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
    var_0 fadeovertime( 2 );
    var_0._ID55 = 1;
    var_0 settext( &"ESTATE_REMIND_PRONE_LINE1" );
    var_1 = newhudelem();
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
    var_1 fadeovertime( 2 );
    var_1._ID55 = 1;
    var_1._ID493 = 1;

    if ( level._ID8534 || level._ID794 _ID42237::_ID20583() )
        var_1 settext( &"ESTATE_REMIND_PRONE_LINE2" );
    else if ( _ID42407::_ID20493( "toggleprone" ) )
        var_1 settext( &"ESTATE_REMIND_PRONE_LINE2_TOGGLE" );
    else if ( _ID42407::_ID20493( "+prone" ) )
        var_1 settext( &"ESTATE_REMIND_PRONE_LINE2_HOLDDOWN" );
    else
        var_1 settext( &"ESTATE_REMIND_PRONE_LINE2" );
}

_ID53115()
{
    level._ID794 shellshock( "estate_bouncingbetty", 3.5 );
    earthquake( 1, 0.8, level._ID794._ID740, 2000 );
    level._ID794._ID511 = 1;
    wait 3.5;
    level._ID794._ID511 = 0;
}

_ID51920()
{
    level._ID794 dodamage( randomfloatrange( 30, 35 ), self._ID740 );
}

_ID54095( var_0 )
{
    radiusdamage( var_0, self._ID851 * 2, 200, 20 );
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

    level._ID794 freezecontrols( 1 );
    var_1 = level._ID794._ID740 + ( 0, 0, 40 ) - var_0;
    var_2 = vectornormalize( var_1 );
    var_3 = 2000;
    thread _ID44589();
    thread _ID48854();
    thread _ID44143();
    var_4 = 0;
    var_5 = getent( "no_sliding_allowed", "targetname" );

    if ( !level._ID794 istouching( var_5 ) )
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

    level._ID794 freezecontrols( 0 );
    _ID42237::_ID14402( "spawn_first_ghillies" );
}

_ID44589()
{
    _ID42475::_ID34575( "start_bouncing_betty_shellshock" );
    level._ID794 shellshock( "estate_bouncingbetty", 10 );
    wait 0.1;
    earthquake( 3, 0.2, level._ID794._ID740, 2000 );
    wait 0.2;
    earthquake( 1, 1, level._ID794._ID740, 2000 );
    wait 1;
    level._ID47319 thread _ID42407::_ID10805( "est_gst_targetsleftside" );
    earthquake( 0.5, 0.5, level._ID794._ID740, 2000 );
    wait 0.5;
    _ID42237::_ID14413( "ambushed_player_back_to_normal" );
    level._ID794 allowcrouch( 1 );
    level._ID794 allowstand( 1 );
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
    level._ID794 allowcrouch( 0 );
    level._ID794 allowstand( 0 );
    level._ID794 allowprone( 1 );
    wait 5;
    _ID42237::_ID14402( "ambushed_player_back_to_normal" );
}

_ID45824()
{
    self endon( "death" );
    var_0 = gettime() + 1000;

    while ( gettime() < var_0 )
    {
        wait 0.05;
        playfxontag( _ID42237::_ID16299( "bouncing_betty_swirl" ), self, "tag_fx_spin1" );
        playfxontag( _ID42237::_ID16299( "bouncing_betty_swirl" ), self, "tag_fx_spin3" );
        wait 0.05;
        playfxontag( _ID42237::_ID16299( "bouncing_betty_swirl" ), self, "tag_fx_spin2" );
        playfxontag( _ID42237::_ID16299( "bouncing_betty_swirl" ), self, "tag_fx_spin4" );
    }
}

_ID44143()
{
    var_0 = _ID42237::_ID16640( "fake_rpg", "targetname" );

    foreach ( var_5, var_2 in var_0 )
    {
        var_3 = missile_createrepulsorent( level._ID794, 1000, 512 );
        var_4 = _ID42237::_ID16638( var_2._ID1191, "targetname" );
        magicbullet( "rpg", var_2._ID740, var_4._ID740 );
        wait(randomfloatrange( 0.8, 1.4 ));
    }
}

_ID51906()
{
    var_0 = getentarray( "bouncing_betty_gameplay", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _ID51052();
}

_ID51052()
{
    level endon( "house_exterior_has_been_breached" );
    var_0 = spawn( "script_origin", self._ID740 );
    var_0._ID851 = self._ID851;
    var_0._ID740 = self._ID740;
    var_1 = 0;
    var_2 = 0.15;
    var_3 = 5;

    while ( !var_1 )
    {
        self waittill( "trigger" );
        var_4 = 0;
        var_5 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_0._ID740, cos( var_3 ) );

        while ( var_5 )
        {
            if ( var_4 >= var_2 )
            {
                var_0 thread _ID45603( undefined, 1 );
                var_1 = 1;
                level notify( "gameplay_mine_deployed" );
                break;
            }

            var_5 = _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_0._ID740, cos( var_3 ) );
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
        var_0 = getentarray( "smokepot1", "targetname" );
        var_0 = _ID42237::_ID3320( var_0 );
        _ID49327( "smokepot1", var_0 );
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
        var_0 = getentarray( "smokepot2", "targetname" );
        var_0 = _ID42237::_ID3320( var_0 );
        _ID49327( "smokepot2", var_0 );
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
        var_0 = getentarray( "smokepot3", "targetname" );
        var_0 = _ID42237::_ID3320( var_0 );
        _ID49327( "smokepot3", var_0 );
    }
}

_ID49327( var_0, var_1 )
{
    level endon( "approaching_house" );
    level endon( "stop_smokescreens" );

    while ( _ID42237::_ID14385( var_0 ) )
    {
        foreach ( var_3 in var_1 )
        {
            wait 6;

            if ( level._ID43592 <= level._ID49349 )
            {
                var_3 thread _ID44008();
                level._ID43592++;
                thread _ID48138();
            }
        }

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
    var_1 = getentarray( var_0, "targetname" );

    if ( var_0 == "early_sniper" )
        _ID42407::_ID3344( var_0, ::_ID45482 );

    _ID42407::_ID3344( var_0, ::_ID46764 );
    _ID42237::_ID3350( var_1, _ID42407::_ID35014 );
}

_ID46764()
{
    _ID51736();
}

_ID47763()
{
    _ID42407::_ID3344( "prowler1", ::_ID52149 );
    _ID42407::_ID3344( "prowler1", ::_ID45482 );
    _ID42407::_ID3344( "prowler2", ::_ID50824 );
    _ID42407::_ID3344( "prowler2", ::_ID45482 );
    _ID42407::_ID3344( "prowler3", ::_ID54709 );
    _ID42407::_ID3344( "prowler3", ::_ID45482 );
    var_0 = [];
    var_0 = getentarray( "prowler1", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_0 = [];
    var_0 = getentarray( "prowler2", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_0 = [];
    var_0 = getentarray( "prowler3", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID45482()
{
    self endon( "death" );
    _ID42237::_ID14413( "forestfight_littlebird_1" );
    wait(randomfloatrange( 1.5, 4.7 ));
    self._ID452 = 2000;
    self._ID14787 = 1;
    var_0 = randomint( 100 );

    if ( var_0 >= 75 )
    {
        for (;;)
        {
            self setgoalpos( level._ID794._ID740 );
            wait(randomfloatrange( 5, 10 ));
        }
    }
    else
    {
        var_1 = getnode( "forestfight_cleanup_enemy_rallypoint", "targetname" );
        self setgoalnode( var_1 );
    }
}

_ID52149()
{
    thread _ID45797();
    thread _ID47399();
    _ID51736();
    self._ID513 = 1;
    self pushplayer( 1 );
    var_0 = getnode( "prowler1_start", "targetname" );
    var_1 = 5;
    var_2 = 4420;
    var_3 = 2400;
    var_4 = 0.1;
    var_5 = 5;
    var_6 = "forestfight_littlebird_1";
    thread _ID54587( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID50824()
{
    thread _ID45797();
    thread _ID47399();
    _ID51736();
    var_0 = getnode( "prowler2_start", "targetname" );
    var_1 = 4;
    var_2 = 3700;
    var_3 = 2200;
    var_4 = 0.1;
    var_5 = 5;
    var_6 = "forestfight_littlebird_1";
    thread _ID54587( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID54709()
{
    var_0 = getnode( "prowler3_start", "targetname" );
    thread _ID45797();
    thread _ID47399();
    var_1 = 3;
    var_2 = 4500;
    var_3 = 3400;
    var_4 = 0.08;
    var_5 = 4;
    var_6 = "forestfight_littlebird_1";
    thread _ID54587( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID51736()
{
    self endon( "death" );
    self endon( "long_death" );
    self._ID3189 = "ghillie";
    self._ID49 = 1;
    self._ID7._ID28253 = "prone";
    wait(randomfloatrange( 0, 0.2 ));
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
    wait(randomfloatrange( 1.5, 2.25 ));
    var_0 = getent( "futilejeep_javelin_sourcepoint1", "targetname" );
    _ID45456::_ID54623( self );
    self kill();
}

_ID50573()
{
    var_0 = getent( "recroom_open_doors", "targetname" );
    var_1 = getent( "recroom_open_doors_model", "targetname" );
    var_1 hide();
    level waittill( "breaching_number_4" );
    var_2 = getent( "recroom_closed_doors", "targetname" );
    var_3 = getent( "recroom_closed_doors_model", "targetname" );
    var_2 delete();
    var_3 delete();
    var_1 show();
}

_ID52587()
{
    var_0 = getent( "recroom_open_doors", "targetname" );
    var_1 = getent( "recroom_open_doors_model", "targetname" );
    var_1 hide();
    var_2 = getent( "recroom_closed_doors", "targetname" );
    var_3 = getent( "recroom_closed_doors_model", "targetname" );
    var_2 delete();
    var_3 delete();
    var_0 show();
}

_ID47558()
{
    var_0 = getentarray( "window_brokenglass", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 hide();

    level waittill( "breaching_number_3" );
    _ID42475::_ID34575( "handle_breach_sequence", "breaching_number_3" );
    wait 2;
    var_4 = getent( "paper_window_sightblocker", "targetname" );
    var_4 delete();
    var_5 = getentarray( "window_newspaper", "targetname" );

    foreach ( var_7 in var_5 )
        var_7 delete();

    var_9 = getentarray( "window_pane", "targetname" );

    foreach ( var_11 in var_9 )
        var_11 delete();

    foreach ( var_2 in var_0 )
        var_2 show();

    var_15 = getentarray( "window_blinds", "targetname" );

    foreach ( var_17 in var_15 )
        var_17 delete();

    var_19 = getentarray( "window_smasher", "targetname" );

    foreach ( var_21 in var_19 )
        radiusdamage( var_21._ID740, var_21._ID851, 1000, 1000 );
}

_ID54304()
{
    _ID42237::_ID14413( "furniture_moving_sounds" );
    level endon( "breaching_number_5" );
    var_0 = getent( "furniture_moving_sounds_speaker", "targetname" );
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
    self stalingradspawn();
}

_ID51410()
{
    self endon( "death" );
    self._ID764 = 0;
    self._ID513 = 1;
    self._ID464 = 0;

    if ( isdefined( self._ID916 ) )
    {
        self._ID452 = 128;
        wait(self._ID916);
        self._ID452 = 1000;
    }

    thread _ID51347();

    if ( !isdefined( self._ID922 ) )
        return;

    if ( self._ID922 == "hunter" )
    {
        wait(randomfloatrange( 5, 10 ));
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
    var_1 = getentarray( "house_pre_breach", "script_noteworthy" );
    var_2 = getentarray( "house_post_breach", "script_noteworthy" );

    if ( !isdefined( var_0 ) || !var_0 )
    {
        _ID42237::_ID3294( var_2, ::hide );
        _ID42237::_ID3294( var_2, ::notsolid );
        level waittill( "breaching_number_3" );
    }

    thread _ID42234::_ID13611( "livingroom_post_breach" );
    _ID42237::_ID3294( var_1, ::hide );
    _ID42237::_ID3294( var_1, ::notsolid );
    _ID42237::_ID3294( var_2, ::show );
    _ID42237::_ID3294( var_2, ::solid );
}

_ID46191( var_0, var_1 )
{
    level waittill( var_1 );
    var_2 = getentarray( "breach_extraguy", "targetname" );

    foreach ( var_4 in var_2 )
    {
        if ( !isdefined( var_4._ID31070 ) )
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
    thread _ID44928( var_0, var_1, var_2 );
    _ID42237::_ID14413( var_1 );
    var_3 = getspawnerarray();

    foreach ( var_5 in var_3 )
    {
        if ( !isdefined( var_5._ID31070 ) )
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
}

_ID46369( var_0, var_1, var_2, var_3 )
{
    var_4 = getentarray( var_0, "targetname" );
    var_4 = undefined;
    level endon( "house_interior_breaches_done" );

    if ( isdefined( var_1 ) )
        level endon( var_1 );

    level waittill( var_2 );
    var_5 = getent( var_0, "targetname" );
    var_5 waittill( "trigger" );
    thread _ID52243( var_3 );
}

_ID52243( var_0 )
{
    var_1 = [];
    var_1 = getspawnerarray();
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( !isdefined( var_4._ID31070 ) )
            continue;

        if ( var_4._ID31070 == var_0 )
            var_2[var_2.size] = var_4;
    }

    _ID42237::_ID3350( var_2, _ID42407::_ID35014 );
}

_ID43781()
{
    var_0 = getentarray( "breach_extraguy", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( var_2._ID31070 ) )
            continue;

        if ( var_2._ID31070 == "breach0_bathroomrush" )
            var_2 thread _ID42407::_ID1947( ::_ID50434 );
    }
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
    var_0 = getaiarray( "allies" );
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
    {
        level._ID46243 getenemyinfo( var_3 );
        level._ID45604 getenemyinfo( var_3 );

        foreach ( var_5 in var_0 )
        {
            var_3 getenemyinfo( var_5 );
            var_3 getenemyinfo( level._ID794 );
        }
    }
}

_ID47711( var_0 )
{
    if ( self._ID31355 == "mainfloor" )
    {
        level._ID47336++;
        thread _ID51742( var_0 );
    }

    if ( self._ID31355 == "topfloor" )
    {
        if ( isdefined( self._ID31433 ) )
        {
            if ( self._ID31433 != 5 )
                level._ID46357++;
        }
        else
            level._ID46357++;

        thread _ID52077( var_0 );
    }

    if ( self._ID31355 == "basement" )
    {
        if ( isdefined( self._ID31433 ) )
        {
            if ( self._ID31433 != 3 && self._ID31433 != 4 )
                level._ID50850++;
        }
        else
            level._ID50850++;

        thread _ID51616( var_0 );
    }
}

_ID51742( var_0 )
{
    self waittill( "death" );
    level notify( "mainfloor_enemy_killed" );
    wait 0.05;

    if ( isdefined( var_0 ) )
        level notify( "mainfloor_enemy_killed" );
}

_ID52077( var_0 )
{
    self waittill( "death" );
    level notify( "topfloor_enemy_killed" );
    wait 0.05;

    if ( isdefined( var_0 ) )
        level notify( "topfloor_enemy_killed" );
}

_ID51616( var_0 )
{
    self waittill( "death" );
    level notify( "basement_enemy_killed" );
    wait 0.05;

    if ( isdefined( var_0 ) )
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
    var_0 = getnode( "scarecrow_teleport_closer", "targetname" );
    level._ID46243 forceteleport( var_0._ID740, var_0._ID65 );
    level._ID46243._ID452 = 32;
    level._ID46243._ID86 = 0;
    level._ID46243._ID512 = 1;
    var_0 = getnode( "house_teleport_scarecrow", "targetname" );
    level._ID46243 setgoalnode( var_0 );
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
        var_0 = getnode( "scarecrow_guard_basement1", "targetname" );
        level._ID46243 setgoalnode( var_0 );
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
    var_0 = getentarray( "window_clip", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();

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
        var_0 = level._ID47319 sightconetrace( level._ID794._ID740 + ( 0, 0, 64 ) );

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
    var_0 = getnode( "scarecrow_guard_basement2", "targetname" );
    level._ID46243 _ID42407::_ID10871();
    level._ID46243 setgoalnode( var_0 );
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
                var_1 = level._ID46243 sightconetrace( level._ID794._ID740 + ( 0, 0, 64 ) );

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
            var_0 = getaiarray( "axis" );

            foreach ( var_2 in var_0 )
                level._ID46243 getenemyinfo( var_2 );

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
    var_0 = getnode( "ozone_guard_kitchen", "targetname" );
    level._ID45604 _ID42407::_ID10871();
    level._ID45604 _ID42407::_ID14701( var_0 );

    if ( !_ID42237::_ID14385( "topfloor_breached" ) || !_ID42237::_ID14385( "basement_breached" ) )
    {
        var_1 = [];
        var_1[var_1.size] = "est_gst_thrukitchen";
        var_1[var_1.size] = "est_ozn_rogerthat";
        var_1[var_1.size] = "est_gst_sitrep";
        var_1[var_1.size] = "est_scr_noonesleaving";

        foreach ( var_4, var_3 in var_1 )
        {
            _ID42237::_ID14426( "breaching_on" );
            _ID42407::_ID28864( var_1[var_4] );
        }
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
    var_0 = getent( "house_clearing_autosave_trigger", "targetname" );

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
        _ID49379();
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
        thread _ID53542();
        thread _ID53659();
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
        var_0 = getent( "ghost_slowmo_entry_teleport", "targetname" );
        level._ID47319 forceteleport( var_0._ID740, var_0._ID65 );
        level._ID47319 _ID42407::_ID12492( 1 );
        var_1 = getnode( "ghost_slowmo_entry", "targetname" );
        setsaveddvar( "ai_friendlyFireBlockDuration", "0" );
        level._ID47319 setgoalnode( var_1 );
        level._ID47319 waittill( "goal" );
        wait 8;
    }
    else
    {
        _ID42237::_ID14413( "ghost_begins_sweep" );
        level._ID47319 _ID42407::_ID10226( 3, _ID42407::_ID12492, 1 );
    }

    var_1 = getnode( "ghost_house_sweep", "targetname" );
    var_2 = 0;

    for (;;)
    {
        level._ID47319 setgoalnode( var_1 );
        level._ID47319 waittill( "goal" );
        setsaveddvar( "ai_friendlyFireBlockDuration", "2000" );

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
            level._ID47319 clearenemy();

        var_2++;

        if ( var_2 == 4 )
        {
            wait 0.25;
            level._ID47319 clearenemy();
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

        if ( isdefined( var_1._ID1191 ) )
        {
            var_1 = getnode( var_1._ID1191, "targetname" );
            continue;
        }

        break;
    }

    var_3 = getent( "ghost_fake_lookat", "targetname" );
    level._ID47319 _ID42407::_ID8914( var_3 );
    _ID42237::_ID14402( "ghost_at_bottom_of_stairs" );
    _ID42237::_ID14413( "topfloor_cleared" );

    if ( !_ID42237::_ID14385( "ghost_goes_outside" ) )
        wait 9.5;

    var_1 = getnode( "ghost_cover_front", "targetname" );
    level._ID47319 setgoalnode( var_1 );
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
    var_0 = getent( "ghost_manual_trig", "targetname" );
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
    var_0 = getentarray( "solar_panel", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_3 = getent( var_2._ID1191, "targetname" );
        var_3 linkto( var_2 );
    }

    _ID42237::_ID3350( var_0, ::_ID51609 );
}

_ID51609()
{
    _ID42237::_ID14413( "forestfight_littlebird_1" );
    wait 3;
    self rotateyaw( -95, 60, 3, 3 );
}

_ID53250()
{
    switch ( level._ID35897 )
    {
        case "ambush":
        case "house_approach":
        case "house_breach":
        case "default":
        case "forestfight":
            _ID42237::_ID14413( "start_ambush_music" );
            var_0 = _ID42407::_ID24586( "mus_estate_ambushfight" );
            _ID42407::_ID24577( "mus_estate_ambushfight", var_0 );
            _ID42237::_ID14413( "all_enemies_killed_up_to_house_capture" );
            level notify( "stop_music" );
            musicstop( 5 );
            wait 5.1;
        case "house_briefing":
            var_0 = _ID42407::_ID24586( "mus_estate_basement_clear" );
            _ID42407::_ID24577( "mus_estate_basement_clear", var_0 );
            _ID42237::_ID14413( "download_started" );
            level notify( "stop_music" );
            musicstop( 6 );
            wait 6.1;
        case "house_defense":
            _ID42407::_ID24587( "mus_estate_dsm_wait" );
            _ID42237::_ID14413( "download_complete" );
            musicstop( 1 );
            wait 1.1;
        case "escape":
            var_0 = _ID42407::_ID24586( "mus_estate_escape" );
            _ID42407::_ID24577( "mus_estate_escape", var_0 );
            _ID42237::_ID14413( "finish_line" );
            level notify( "stop_music" );
            musicstop();
        case "ending":
            _ID42237::_ID14413( "begin_ending_music" );
            wait 9;
            _ID42407::_ID24587( "mus_estate_betrayal" );
            break;
    }
}

_ID44837( var_0 )
{
    iprintln( var_0 );
}

_ID47912()
{
    level._ID47335 = undefined;
    var_0 = getentarray( "zone_trigger", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID45225 );
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
    _ID45659( "zone_backsolarpanelfield", ::_ID52307 );
    _ID45659( "zone_backsolarpanelfield", ::_ID49312 );
    _ID45659( "zone_backsolarpanelfield", ::_ID53965 );
    _ID45659( "zone_backsolarpanelfield", ::_ID47875 );

    if ( getdvarint( "debug_estate_siege" ) == 1 )
        _ID45659( "zone_backsolarpanelfield", ::_ID53269 );
    else
    {
        _ID45659( "zone_backyardshed", ::_ID52307 );
        _ID45659( "zone_backyardshed", ::_ID49312 );
        _ID45659( "zone_backyardshed", ::_ID53965 );
        _ID45659( "zone_backyardshed", ::_ID53269 );
        _ID45659( "zone_backyardshed", ::_ID47875 );
        _ID45659( "zone_stables", ::_ID52307 );
        _ID45659( "zone_stables", ::_ID49312 );
        _ID45659( "zone_stables", ::_ID53965 );
        _ID45659( "zone_stables", ::_ID53269 );
        _ID45659( "zone_stables", ::_ID47875 );
        _ID45659( "zone_birchfield", ::_ID52307 );
        _ID45659( "zone_birchfield", ::_ID53965 );
        _ID45659( "zone_birchfield", ::_ID53269 );
        _ID45659( "zone_birchfield", ::_ID47875 );
        _ID45659( "zone_forest", ::_ID52307 );
        _ID45659( "zone_forest", ::_ID49312 );
        _ID45659( "zone_forest", ::_ID47875 );
        _ID45659( "zone_frontsolarpanels", ::_ID52307 );
        _ID45659( "zone_frontsolarpanels", ::_ID49312 );
        _ID45659( "zone_frontsolarpanels", ::_ID47875 );
        _ID45659( "zone_backyardpond", ::_ID52307 );
        _ID45659( "zone_backyardpond", ::_ID49312 );
        _ID45659( "zone_backyardpond", ::_ID53965 );
        _ID45659( "zone_backyardpond", ::_ID47875 );
        _ID45659( "zone_house", ::_ID52307 );
        _ID45659( "zone_house", ::_ID49312 );
        _ID45659( "zone_house", ::_ID53965 );
        _ID45659( "zone_house", ::_ID53269 );
        _ID45659( "zone_house", ::_ID47875 );
        _ID45659( "zone_parkinglot", ::_ID52307 );
        _ID45659( "zone_parkinglot", ::_ID49312 );
        _ID45659( "zone_parkinglot", ::_ID53965 );
        _ID45659( "zone_parkinglot", ::_ID47875 );
        _ID45659( "zone_porchtriangle", ::_ID52307 );
        _ID45659( "zone_porchtriangle", ::_ID49312 );
        _ID45659( "zone_porchtriangle", ::_ID53965 );
        _ID45659( "zone_porchtriangle", ::_ID53269 );
        _ID45659( "zone_porchtriangle", ::_ID47875 );
        _ID45659( "zone_porch", ::_ID52307 );
        _ID45659( "zone_porch", ::_ID49312 );
        _ID45659( "zone_porch", ::_ID53965 );
        _ID45659( "zone_porch", ::_ID53269 );
        _ID45659( "zone_porch", ::_ID47875 );
        _ID45659( "zone_frontyardwedge", ::_ID52307 );
        _ID45659( "zone_frontyardwedge", ::_ID49312 );
        _ID45659( "zone_frontyardwedge", ::_ID53965 );
        _ID45659( "zone_frontyardwedge", ::_ID47875 );
        _ID45659( "zone_frontyardhigh", ::_ID52307 );
        _ID45659( "zone_frontyardhigh", ::_ID49312 );
        _ID45659( "zone_frontyardhigh", ::_ID53965 );
        _ID45659( "zone_frontyardhigh", ::_ID53269 );
        _ID45659( "zone_frontyardhigh", ::_ID47875 );
        _ID45659( "zone_backpatio", ::_ID52307 );
        _ID45659( "zone_backpatio", ::_ID49312 );
        _ID45659( "zone_backpatio", ::_ID53965 );
        _ID45659( "zone_backpatio", ::_ID53269 );
        _ID45659( "zone_backpatio", ::_ID47875 );
        _ID45659( "zone_beach", ::_ID52307 );
        _ID45659( "zone_beach", ::_ID49312 );
        _ID45659( "zone_beach", ::_ID53965 );
        _ID45659( "zone_beach", ::_ID53269 );
        _ID45659( "zone_boathouse", ::_ID52307 );
        _ID45659( "zone_boathouse", ::_ID49312 );
        _ID45659( "zone_boathouse", ::_ID53965 );
        _ID45659( "zone_boathouse", ::_ID53269 );
    }

    level._ID48597 = [];
    _ID53469( "zone_backsolarpanelfield", ::_ID51894 );
    _ID53469( "zone_backsolarpanelfield", ::_ID48996 );
    _ID53469( "zone_backsolarpanelfield", ::_ID52976 );

    if ( getdvarint( "debug_estate_siege" ) != 1 )
    {
        _ID53469( "zone_backyardshed", ::_ID51894 );
        _ID53469( "zone_backyardshed", ::_ID48996 );
        _ID53469( "zone_stables", ::_ID48996 );
        _ID53469( "zone_birchfield", ::_ID48996 );
        _ID53469( "zone_birchfield", ::_ID52976 );
        _ID53469( "zone_forest", ::_ID51894 );
        _ID53469( "zone_forest", ::_ID48996 );
        _ID53469( "zone_forest", ::_ID52976 );
        _ID53469( "zone_frontsolarpanels", ::_ID51894 );
        _ID53469( "zone_frontsolarpanels", ::_ID48996 );
        _ID53469( "zone_frontsolarpanels", ::_ID52976 );
        _ID53469( "zone_backyardpond", ::_ID48996 );
        _ID53469( "zone_backyardpond", ::_ID52976 );
        _ID53469( "zone_house", ::_ID51894 );
        _ID53469( "zone_house", ::_ID48996 );
        _ID53469( "zone_house", ::_ID52976 );
        _ID53469( "zone_parkinglot", ::_ID51894 );
        _ID53469( "zone_parkinglot", ::_ID48996 );
        _ID53469( "zone_parkinglot", ::_ID52976 );
        _ID53469( "zone_porchtriangle", ::_ID51894 );
        _ID53469( "zone_porchtriangle", ::_ID48996 );
        _ID53469( "zone_porchtriangle", ::_ID52976 );
        _ID53469( "zone_porch", ::_ID51894 );
        _ID53469( "zone_porch", ::_ID48996 );
        _ID53469( "zone_porch", ::_ID52976 );
        _ID53469( "zone_frontyardwedge", ::_ID51894 );
        _ID53469( "zone_frontyardwedge", ::_ID48996 );
        _ID53469( "zone_frontyardwedge", ::_ID52976 );
        _ID53469( "zone_frontyardhigh", ::_ID51894 );
        _ID53469( "zone_frontyardhigh", ::_ID48996 );
        _ID53469( "zone_frontyardhigh", ::_ID52976 );
        _ID53469( "zone_backpatio", ::_ID51894 );
        _ID53469( "zone_beach", ::_ID51894 );
        _ID53469( "zone_boathouse", ::_ID51894 );
    }

    level._ID46917 = 0;
    var_0 = getent( "no_autosave_in_basement", "targetname" );
    var_1 = level._ID51846 * 0.7;

    for (;;)
    {
        var_2 = level._ID47335;

        if ( getdvarint( "debug_estate_siege" ) == 1 )
            var_2 = "zone_backsolarpanelfield";

        _ID53230( var_2 );
        var_3 = getent( "dsm", "targetname" );

        if ( isdefined( var_3 ) )
        {
            var_4 = length( level._ID794._ID740 - var_3._ID740 );

            if ( _ID42237::_ID14385( "can_save" ) && var_4 <= level._ID44576 )
            {
                if ( !level._ID794 istouching( var_0 ) && level._ID54566 >= var_1 )
                    _ID42407::_ID4422( "strikePackageCleared" );
            }
        }

        while ( level._ID46917 > level._ID50292 )
            level waittill( "counterattacker_died" );

        _ID42237::_ID14402( "activate_package_on_standby" );

        foreach ( var_2, var_6 in level._ID52579 )
        {
            if ( level._ID52579[var_2].size <= 0 )
                level._ID52579[var_2] = undefined;
        }

        wait 10;

        if ( level._ID52579.size <= 0 )
            break;

        _ID42237::_ID14413( "strike_package_spawned" );
        _ID42237::_ID14388( "strike_package_spawned" );

        while ( level._ID46917 > level._ID48285 )
            level waittill( "counterattacker_died" );

        if ( !isdefined( level._ID52375 ) )
            level._ID52375 = 30;

        _ID46265();
        wait 1;
    }
}

_ID46265()
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );
    var_0 = 0;
    var_1 = undefined;
    thread _ID50225();

    while ( level._ID52375 > 0 )
    {
        foreach ( var_4, var_3 in level._ID48597 )
        {
            if ( level._ID48597[var_4].size <= 0 )
                level._ID48597[var_4] = undefined;
        }

        if ( level._ID48597.size <= 0 )
        {
            level notify( "stop_timeout" );
            break;
        }

        var_4 = level._ID47335;

        if ( getdvarint( "debug_estate_siege" ) == 1 )
            var_4 = "zone_backsolarpanelfield";

        var_1 = _ID43047( var_4 );

        if ( isdefined( var_1 ) && var_1 )
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

        wait(randomfloatrange( 2, 8 ));
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

    if ( !isdefined( level._ID52579[var_0] ) )
        level._ID52579[var_0] = [];

    level._ID52579[var_0][level._ID52579[var_0].size] = var_1;
}

_ID53230( var_0 )
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );
    var_1 = getdvarint( "debug_estate_forceStrike" );

    if ( getdvarint( "debug_estate_siege" ) != 1 )
    {
        if ( !isdefined( level._ID52579[var_0] ) )
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
        if ( !isdefined( level._ID50093 ) )
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
        foreach ( var_0, var_4 in level._ID52579 )
        {
            foreach ( var_7, var_6 in var_4 )
            {
                if ( var_6 == var_2 )
                    level._ID52579[var_0][var_7] = undefined;
            }
        }
    }

    return 1;
}

_ID53469( var_0, var_1 )
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );

    if ( !isdefined( level._ID48597[var_0] ) )
        level._ID48597[var_0] = [];

    level._ID48597[var_0][level._ID48597[var_0].size] = var_1;
}

_ID43047( var_0 )
{
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );

    if ( !isdefined( level._ID48597[var_0] ) )
        return 0;

    if ( !level._ID48597[var_0].size )
    {
        level._ID48597[var_0] = undefined;
        return 0;
    }

    if ( getdvarint( "debug_estate_siege" ) != 1 )
        var_1 = _ID42237::_ID28945( level._ID48597[var_0] );
    else
    {
        if ( !isdefined( level._ID50952 ) )
            level._ID50952 = 0;

        var_1 = level._ID48597[var_0][level._ID50952];
        level._ID50952++;
    }

    thread [[ var_1 ]]();

    foreach ( var_0, var_3 in level._ID48597 )
    {
        foreach ( var_6, var_5 in var_3 )
        {
            if ( var_5 == var_1 )
                level._ID48597[var_0][var_6] = undefined;
        }
    }

    return 1;
}

_ID46441()
{
    _ID42237::_ID14413( "download_complete" );
    _ID42407::_ID4422( "download_done" );

    if ( !_ID42237::_ID14385( "dsm_recovered" ) )
        thread _ID46149();

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

    if ( isalive( level._ID45604 ) )
        level._ID45604 _ID42407::_ID12445();

    if ( isalive( level._ID46243 ) )
        level._ID46243 _ID42407::_ID12445();

    var_0 = getent( "ghost_exfil", "targetname" );
    var_0 notify( "trigger" );
    _ID42237::_ID14413( "point_of_no_return" );
    _ID42407::_ID4422( "point_of_no_return" );
    thread _ID54017::_ID43738( "2" );
    thread _ID49807();
    thread _ID49496();
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
    thread _ID44914();
}

_ID49496()
{
    level endon( "finish_line" );
    var_0 = getentarray( "ghost_covering_shout", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _ID47407();

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
    level._ID794 enabledeathshield( 1 );
    level._ID8862 = 1;
    level._ID794 freezecontrols( 1 );
    var_0 = _ID46232();
    playfx( level._ID1426["mortar"]["dirt"], var_0 );
    var_1 = spawn( "script_origin", var_0 );
    var_1 playsound( "clusterbomb_explode_default" );
    level._ID794 playrumblelooponentity( "artillery_rumble" );
    wait 0.15;
    _ID42237::_ID14402( "play_ending_sequence" );
    level._ID794 freezecontrols( 0 );
    musicstop();
}

_ID44914()
{
    var_0 = _ID46232();
    playfx( level._ID1426["mortar"]["dirt"], var_0 );
    level._ID794 playrumblelooponentity( "artillery_rumble" );
    wait 0.15;
    level._ID794 kill();
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
        thread _ID45705();

    var_0 = _ID42411::_ID35196( "heli_phoenix_01" );
    var_1 = _ID42411::_ID35196( "heli_phoenix_02" );
    var_2 = _ID42411::_ID35196( "heli_phoenix_03" );
    var_3 = _ID42411::_ID35196( "heli_phoenix_04" );
    thread _ID45877( var_0, "heli_phoenix_01" );
    thread _ID45877( var_1, "heli_phoenix_02" );
    thread _ID45877( var_2, "heli_phoenix_03" );
    thread _ID45877( var_3, "heli_phoenix_04" );
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
        thread _ID44816();

    var_0 = _ID42237::_ID16640( "chainlink_fence_detonator", "targetname" );

    foreach ( var_2 in var_0 )
    {
        wait(randomfloatrange( 0.25, 1 ));
        playfx( _ID42237::_ID16299( "fenceblast" ), var_2._ID740 );
        var_3 = spawn( "script_origin", var_2._ID740 );
        var_3 playsound( "clusterbomb_explode_default" );
        earthquake( 0.25, 1, level._ID794._ID740, 2000 );
    }

    if ( !_ID42237::_ID14385( "fence_removed" ) )
    {
        var_5 = getent( "final_area_fence", "targetname" );
        var_5 delete();
        _ID42237::_ID14402( "fence_removed" );
    }

    var_6 = getentarray( "broken_fence", "targetname" );

    foreach ( var_8 in var_6 )
        var_8 show();

    _ID47329( "birchfield_smokeassault_leftflank", ::_ID46582 );
    _ID47329( "birchfield_smokeassault_rightflank", ::_ID45420 );
    _ID47329( "birchfield_smokeassault_centersupport", ::_ID54063 );
    wait 3;
    _ID42237::_ID14402( "strike_package_spawned" );
}

_ID44816()
{
    wait 2;

    if ( isalive( level._ID46243 ) )
        _ID42407::_ID28864( "est_scr_whatwasthat" );

    _ID42407::_ID28864( "est_snp1_hostilesse" );
    _ID42407::_ID28864( "est_snp1_thinemout" );

    if ( isalive( level._ID46243 ) || isalive( level._ID45604 ) )
        _ID42407::_ID28864( "est_gst_fieldtose" );

    if ( isalive( level._ID45604 ) )
        _ID42407::_ID28864( "est_ozn_eyeson" );

    _ID42237::_ID14388( "strike_package_birchfield_dialogue" );
}

_ID46582()
{
    self endon( "death" );
    var_0 = randomfloatrange( 0.5, 2 );
    var_1 = 256;
    var_2 = 128;
    var_3 = 0.5;
    var_4 = 0.5;
    var_5 = "player_is_escaping";
    var_6 = getnodearray( "birchfield_smokeassault_2a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _ID53020( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    _ID46463();
}

_ID45420()
{
    self endon( "death" );
    var_0 = randomfloatrange( 0.5, 2 );
    var_1 = 256;
    var_2 = 128;
    var_3 = 0.5;
    var_4 = 0.5;
    var_5 = "player_is_escaping";
    var_6 = getnodearray( "birchfield_smokeassault_1a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _ID53020( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    _ID46463();
}

_ID54063()
{
    self endon( "death" );
    var_0 = randomfloatrange( 2, 4 );
    var_1 = 2100;
    var_2 = 1000;
    var_3 = 0.85;
    var_4 = 10;
    var_5 = "player_is_escaping";
    var_6 = getnodearray( "birchfield_smokeassault_3a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _ID53020( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    _ID46463();
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
        thread _ID44246();

    var_0 = _ID42411::_ID35196( "boathouse_md500" );
    var_1 = _ID42411::_ID35196( "boathouse_mi17" );
    thread _ID45877( var_0, "boathouse_md500" );
    thread _ID45877( var_1, "boathouse_mi17" );
    wait 3;
    _ID42237::_ID14402( "strike_package_spawned" );
}

_ID44246()
{
    wait 5;
    _ID42407::_ID28864( "est_snp1_troopswest" );
    _ID42407::_ID28864( "est_gst_boathouse" );

    if ( isalive( level._ID45604 ) )
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
        thread _ID44044();

    _ID47329( "solarfield_pkg_openground", ::_ID52577 );
    _ID47329( "solarfield_pkg_forest", ::_ID53990 );
    thread _ID48288( "solarfield_pkg_smokepot" );
    wait 3;
    _ID42237::_ID14402( "strike_package_spawned" );
}

_ID44044()
{
    level endon( "dsm_recovered" );
    _ID42407::_ID28864( "est_snp1_additionalhostile" );
    _ID42407::_ID28864( "est_gst_solarpanelseast" );

    if ( isalive( level._ID46243 ) )
        _ID42407::_ID28864( "est_scr_comethrutrees" );

    var_0 = level._ID794 getweaponammostock( "claymore" );

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
    var_0 = randomfloatrange( 0.5, 2 );
    var_1 = 2400;
    var_2 = 1200;
    var_3 = 0.8;
    var_4 = 0.7;
    var_5 = "player_is_escaping";
    var_6 = getnodearray( "solarfield_pkg_route_1a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _ID53020( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    _ID46463();
}

_ID53990()
{
    self endon( "death" );
    _ID42407::_ID12467();
    var_0 = randomfloatrange( 0.5, 2 );
    var_1 = 1000;
    var_2 = 800;
    var_3 = 0.9;
    var_4 = 5;
    var_5 = "player_is_escaping";
    var_6 = getnodearray( "solarfield_pkg_route_2a", "targetname" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
        _ID53020( var_6, var_0, var_1, var_2, var_3, var_4, var_5 );

    wait 10;
    _ID46463();
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
        thread _ID46170();

    var_0 = _ID42411::_ID35196( "md500_rush_1" );
    var_1 = _ID42411::_ID35196( "md500_rush_2" );
    var_2 = _ID42411::_ID35196( "md500_rush_3" );
    thread _ID45877( var_0, "md500_rush_1" );
    thread _ID45877( var_1, "md500_rush_2" );
    thread _ID45877( var_2, "md500_rush_3" );
    wait 3;
    _ID42237::_ID14402( "strike_package_spawned" );
}

_ID46170()
{
    level endon( "dsm_recovered" );
    _ID42407::_ID28864( "est_snp1_fastattack" );
    _ID42407::_ID28864( "est_gst_helosnw" );

    if ( isalive( level._ID46243 ) )
        _ID42407::_ID28864( "est_scr_frontlawn" );

    if ( isalive( level._ID45604 ) )
    {
        var_0 = getnode( "scarecrow_housebriefing_start", "targetname" );
        level._ID45604 _ID42407::_ID10871();
        level._ID45604 setgoalnode( var_0 );
        _ID42407::_ID28864( "est_ozn_mainwindows" );
    }

    var_1 = level._ID794 getweaponammostock( "claymore" );

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
    _ID47329( "stables_rpg_team", ::_ID45818, "stables_rpg_team_fp" );
    thread fake_rpg( "fake_rpg_stables" );
    _ID42407::_ID28864( "est_snp1_rpgteameast" );

    if ( isalive( level._ID45604 ) )
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
    _ID47329( "boathouse_rpg_team", ::_ID45818, "boathouse_rpg_team_fp" );
    thread fake_rpg( "fake_rpg_boathouse" );
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
    _ID47329( "southwest_rpg_team", ::_ID45818, "southwest_rpg_team_fp" );
    thread fake_rpg( "fake_rpg_southwest" );
    _ID42407::_ID28864( "est_snp1_rpgteamsw" );

    if ( isalive( level._ID45604 ) )
        _ID42407::_ID28864( "est_ozn_rpgteamsw" );

    _ID42237::_ID14388( "rpg_southwest_dialogue" );
}

_ID45818( var_0 )
{
    self endon( "death" );
    var_1 = getnodearray( var_0, "targetname" );
    var_2 = var_1[randomint( var_1.size )];
    var_3 = 2.5;
    var_4 = 2400;
    var_5 = 200;
    var_6 = 0.5;
    var_7 = randomfloatrange( 0.5, 2 );
    var_8 = "player_is_escaping";

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
    {
        _ID54587( var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
        self._ID452 = 2200;
        wait(randomfloatrange( 25, 30 ));
    }

    _ID46463();
}

_ID45877( var_0, var_1 )
{
    var_2 = var_0._ID29965;
    var_3 = getnodearray( var_1, "targetname" );
    var_4 = var_3[randomint( var_3.size )];

    foreach ( var_6 in var_2 )
    {
        if ( isdefined( var_6._ID31455 ) )
        {
            if ( isdefined( var_0._ID1282 ) )
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

        if ( isalive( var_6 ) )
            var_6 thread _ID43969( var_0, var_1, var_4 );
    }

    if ( isdefined( level._ID45604 ) && isalive( level._ID45604 ) )
        level._ID45604._ID513 = 0;
}

_ID43969( var_0, var_1, var_2 )
{
    self endon( "death" );

    if ( isdefined( var_0 ) )
        var_0 waittill( "unloaded" );

    var_3 = _ID44922( var_1 );
    self._ID452 = var_3["goalradius"];
    var_4 = var_2;
    var_5 = var_3["nodeLoiterTime"];
    var_6 = var_3["nodeInitRadius"];
    var_7 = var_3["nodeEndRadius"];
    var_8 = var_3["nodeClosureRate"];
    var_9 = randomfloatrange( var_3["nodeClosureIntervalLow"], var_3["nodeClosureIntervalHigh"] );
    var_10 = "player_is_escaping";

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
    {
        self._ID513 = 1;
        _ID54587( var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    }

    _ID46463();
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
    if ( !isdefined( var_2 ) )
        _ID42407::_ID3344( var_0, var_1 );
    else
        _ID42407::_ID3344( var_0, var_1, var_2 );

    var_3 = [];
    var_3 = getentarray( var_0, "targetname" );
    _ID42237::_ID3350( var_3, _ID42407::_ID35014 );
}

_ID46836()
{
    _ID42407::_ID3343( "counterattacker", ::_ID45642 );
    _ID42407::_ID3343( "counterattacker", ::_ID49394 );
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
    thread _ID50766();
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
    _ID42407::_ID3343( "ending_shadowops_drone", ::_ID43801 );
}

_ID43801()
{
    self._ID1194 = "allies";
    self._ID764 = randomintrange( 0, 100 );
    _ID42407::_ID12467();
    self.cheat._ID48626 = 1;
    self.cheat.ignorewolfthink = 1;
    _ID49347::addspecialmonitors();
    self waittill( "goal" );
    self allowedstances( "crouch" );
}

_ID54587( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );

    if ( isdefined( var_6 ) )
        level endon( var_6 );

    var_7 = var_2;

    for (;;)
    {
        self setgoalnode( var_0 );
        self waittill( "goal" );

        while ( var_7 > var_3 )
        {
            var_7 *= var_4;
            self._ID452 = var_7;
            self._ID450 = 32;
            self._ID764 = randomintrange( 0, 100 );
            self waittill( "goal" );
            wait(var_5);
        }

        wait(var_1);

        if ( isdefined( var_0._ID1191 ) )
        {
            var_0 = getnode( var_0._ID1191, "targetname" );
            continue;
        }

        break;
    }
}

_ID53020( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );

    if ( isdefined( var_6 ) )
        level endon( var_6 );

    var_7 = var_2;
    var_8 = var_0[randomint( var_0.size )];

    for (;;)
    {
        self setgoalnode( var_8 );
        self waittill( "goal" );

        while ( var_7 > var_3 )
        {
            var_7 *= var_4;
            self._ID452 = var_7;
            self._ID450 = 32;
            self._ID764 = randomintrange( 0, 100 );
            self waittill( "goal" );
            wait(var_5);
        }

        wait(var_1);

        if ( isdefined( var_8._ID922 ) )
        {
            var_0 = getnodearray( var_8._ID922, "targetname" );
            var_8 = var_0[randomint( var_0.size )];
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
        var_0 = getent( "dsm", "targetname" );
        var_1 = getnode( "dsm_killnode", "targetname" );
        self setgoalnode( var_1 );
        self._ID452 = 4000;

        if ( !_ID42237::_ID14385( "dsm_recovered" ) && !_ID42237::_ID14385( "dsm_destroyed" ) )
            self getenemyinfo( var_0 );
    }

    _ID42237::_ID14413( "player_is_escaping" );
    thread _ID51312();
}

_ID51312()
{
    self endon( "death" );
    var_0 = getnode( "chase_player", "targetname" );
    self setgoalnode( var_0 );
    self._ID452 = 3250;
    self._ID764 = randomintrange( 30, 100 );
    thread _ID42407::_ID32343( 5, 1 );
}

_ID54638()
{
    _ID42237::_ID14413( "player_is_escaping" );
    var_0 = getentarray( "player_exfil_hunter", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID52708()
{
    _ID42237::_ID14413( "point_of_no_return" );

    if ( !_ID42237::_ID14385( "test_ending" ) )
    {
        var_0 = getentarray( "player_exfil_blocker", "targetname" );
        _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    }
}

_ID52760()
{
    _ID42237::_ID14413( "point_of_no_return" );
    var_0 = getent( "hillchaser_trigger", "targetname" );
    var_0 waittill( "trigger" );
    var_1 = getentarray( "player_exfil_hillchaser", "targetname" );
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
            var_0 = _ID53075();
            wait(randomfloatrange( 1, 3 ));

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
    var_0 = getaiarray( "axis" );

    foreach ( var_3 in var_0 )
    {
        wait 1;

        if ( isalive( var_3 ) )
        {
            var_4 = sighttracepassed( level._ID794._ID740 + ( 0, 0, 64 ), var_3._ID740 + ( 0, 0, 32 ), 0, undefined );
            var_5 = var_3 cansee( level._ID794 );
            var_6 = length( level._ID794._ID740 - var_3._ID740 );
            var_7 = 480;

            if ( _ID42237::_ID14385( "sniper_in_position" ) )
            {
                if ( var_4 && var_5 && var_6 >= 480 )
                {
                    _ID42237::_ID14402( "sniper_attempting_shot" );
                    var_8 = randomintrange( 0, 100 );

                    if ( var_8 > 10 )
                    {
                        var_3 thread _ID42407::_ID27079( "h2_wpn_cheytac_npc_close" );
                        _ID45456::_ID54623( var_3 );
                        var_3 kill();
                        wait 0.5;
                        _ID42407::_ID28864( var_1[randomint( var_1.size )] );
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

    return 0;
}

_ID54219()
{
    _ID42237::_ID14413( "download_started" );
    level._ID43363 = spawnstruct();
    var_0 = getent( "dsm", "targetname" );
    var_0 makeentitysentient( "allies" );
    var_0._ID1204 = 50;
    var_0._ID630 = 300;
    thread _ID42407::_ID32343( 6, 2 );
    _ID42237::_ID14413( "dsm_recovered" );
    var_0 freeentitysentient();
    var_0 delete();
}

_ID44888()
{
    precachemodel( "h2_mil_wireless_dsm_obj_opaque" );
    var_0 = getent( "dsm", "targetname" );
    var_1 = getent( "dsm_obj", "targetname" );
    var_2 = spawn( "script_origin", ( 141.314, 211.295, 168 ) );
    var_0 _ID42407::_ID3428( "dsm" );
    var_1 _ID42407::_ID3428( "dsm" );
    var_2 _ID42259::_ID3018( var_0, "dsm_in" );
    var_2 _ID42259::_ID3018( var_1, "dsm_out" );
    var_0 hide();
    var_1 hide();
    _ID42237::_ID14413( "dsm_ready_to_use" );
    var_3 = getent( "dsm_usetrigger", "targetname" );
    var_3 thread _ID42237::_ID44574( level._ID794, &"ESTATE_DSM_USE_HINT", &"ESTATE_DSM_USE_HINT_PC", "trigger" );
    var_1 show();
    _ID42237::_ID14413( "download_started" );
    _ID42237::_ID14402( "dsm_exposed" );
    _ID42407::_ID4422( "started_download" );
    var_1 hide();
    var_0 _ID42237::_ID10192( 0.5, ::show );
    var_1 setmodel( "h2_mil_wireless_dsm_obj_opaque" );
    level._ID794 setstance( "stand" );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    thread dsm_drop_bodysense_cinematic();
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "actionSlotsHide", "1" );
    level._ID794 thread _ID42407::_ID27079( "scn_plr_dsm_in" );
    var_2 _ID42407::_ID49392( "dsm_in", [ var_0 ], 0, 0.5, 1 );
    level._ID794 allowcrouch( 1 );
    level._ID794 allowprone( 1 );
    var_0 thread _ID53002();
    _ID42237::_ID14388( "dsm_ready_to_use" );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "actionSlotsHide", "0" );
    var_3 thread _ID42237::_ID44574( level._ID794, &"ESTATE_DSM_PICKUP_HINT", &"ESTATE_DSM_PICKUP_HINT_PC", "trigger" );
    _ID42237::_ID14413( "download_complete" );
    _ID42237::_ID14402( "dsm_ready_to_use" );
    var_1 show();
    var_0 hide();
    var_3 waittill( "trigger" );
    var_1 hide();
    var_0 show();
    level._ID794 thread _ID42407::_ID27079( "dsm_pickup" );

    if ( !_ID42237::_ID14385( "fence_removed" ) )
    {
        var_4 = getent( "final_area_fence", "targetname" );
        var_4 delete();
        _ID42237::_ID14402( "fence_removed" );
    }

    var_5 = getentarray( "broken_fence", "targetname" );

    foreach ( var_7 in var_5 )
        var_7 show();

    _ID42237::_ID14388( "dsm_ready_to_use" );
    _ID42237::_ID14388( "dsm_exposed" );
    level._ID794 thread _ID42407::_ID27079( "scn_plr_dsm_out" );
    thread dsm_pickup_bodysense_cinematic();
    level._ID794 setstance( "stand" );
    var_2 _ID42407::_ID49392( "dsm_out", [ var_0 ], 0, 0.5, 1 );
    var_1 delete();
    var_0 hide();
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
    self playsound( "scn_estate_data_grab_setdown" );
    wait 2;
    self playloopsound( "scn_estate_data_grab_loop" );
    _ID42237::_ID14413( "download_complete" );
    self stopsounds();
}

_ID53598()
{
    _ID42237::_ID14413( "download_started" );
    level endon( "main_defense_fight_finished" );
    level endon( "player_is_escaping" );
    level endon( "dsm_has_been_destroyed" );
    level endon( "kill_stats_display_huds" );
    level thread check_kill_download_display();
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
        case "LANGUAGE_FRENCH":
            var_11 = -102;
            var_12 = -35;
            break;
        case "LANGUAGE_RUSSIAN":
        case "LANGUAGE_RUSSIAN_PARTIAL":
            var_0 = 230;
            var_3 = -8;
            var_11 = -90;
            var_12 = -15;
            break;
        case "LANGUAGE_POLISH":
            var_0 = 230;
            var_3 = -8;
            var_11 = -113;
            var_12 = -15;
            break;
        case "LANGUAGE_GERMAN":
            var_11 = -116;
            var_12 = -35;
            break;
        case "LANGUAGE_ARABIC":
            var_0 = 285;
            var_3 = 47;
            var_11 = -198;
            var_12 = -15;
            break;
        case "LANGUAGE_PORTUGUESE":
            var_0 = 240;
            var_3 = 4;
            var_11 = -107;
            var_12 = -38;
            break;
        default:
            var_11 = -107;
            var_12 = -35;
            break;
    }

    if ( !_ID42237::_ID14385( "download_test" ) )
    {
        level.backers = _ID42313::getstatbackers( var_3, var_2, var_0, var_1, 1 );
        level._ID43120 = _ID42313::_ID50277( var_4, var_6, undefined, undefined, var_9, &"ESTATE_DSM_FRAME" );
        level._ID43120 setpulsefx( 30, 900000, 700 );
        wait 0.65;
        level._ID45141 = _ID42313::_ID50277( var_5, var_6, undefined, undefined, var_9, &"ESTATE_DSM_WORKING" );
        level._ID45141 setpulsefx( 30, 900000, 700 );
        wait 2.85;
        level._ID45141 destroy();
        level._ID45141 = _ID42313::_ID50277( var_5, var_6, undefined, undefined, var_9, &"ESTATE_DSM_NETWORK_FOUND" );
        level._ID45141 setpulsefx( 30, 900000, 700 );
        wait 3.75;
        level._ID45141 destroy();
        level._ID45141 = _ID42313::_ID50277( var_5, var_6, undefined, undefined, var_9, &"ESTATE_DSM_IRONBOX" );
        level._ID45141 setpulsefx( 30, 900000, 700 );
        wait 2.25;
        level._ID45141 destroy();
        level._ID45141 = _ID42313::_ID50277( var_5, var_6, undefined, undefined, var_9, &"ESTATE_DSM_BYPASS" );
        level._ID45141 setpulsefx( 30, 900000, 700 );
        wait 3.1;
        level._ID43120 destroy();
        level._ID45141 destroy();
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

    level._ID43120 = _ID42313::_ID50277( var_4, var_7, undefined, undefined, var_9, &"ESTATE_DSM_PROGRESS" );
    level._ID43120 setpulsefx( 30, 900000, 700 );
    level._ID45141 = _ID42313::_ID50277( var_12, var_7, undefined, undefined, var_9, &"ESTATE_DSM_SLASH_TOTALFILES", undefined, 0 );
    level._ID45141 setpulsefx( 30, 900000, 700 );
    level._ID45141._ID44 = "right";
    level._ID47999 = _ID42313::_ID50277( var_4, var_8, undefined, undefined, var_9, &"ESTATE_DSM_DLTIMELEFT" );
    level._ID47999 setpulsefx( 30, 900000, 700 );
    level._ID53192 = _ID42313::_ID50277( var_11, var_8, undefined, undefined, var_9, &"ESTATE_DSM_DLTIMELEFT_MINS", undefined, 0 );
    level._ID53192 setpulsefx( 30, 900000, 700 );

    if ( var_10 == "LANGUAGE_ARABIC" )
        level._ID53192._ID44 = "left";
    else
        level._ID53192._ID44 = "right";

    level._ID48678 = _ID42313::_ID50277( var_12, var_8, undefined, undefined, var_9, &"ESTATE_DSM_DLRATE", undefined, 0 );
    level._ID48678 setpulsefx( 30, 900000, 700 );
    level._ID48678._ID44 = "right";
    level._ID49449 = 0.85;
    _ID42237::_ID14402( "download_data_initialized" );
    var_14 = undefined;
    var_15 = undefined;
    var_16 = undefined;
    var_17 = gettime();

    while ( level._ID47458 < level._ID53381 )
    {
        level._ID53761 = ( gettime() - var_17 ) / 1000;
        var_18 = 0;
        var_19 = randomintrange( 1, 100 );

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
            case 1:
                var_16 = 5;
                var_15 = 1;
                break;
            case 2:
                var_16 = 80;
                var_15 = 0.05;
                break;
            case 3:
                var_16 = 8;
                var_15 = 0.5;
                break;
            case 4:
                var_16 = 12;
                var_15 = 0.25;
                break;
            case 5:
                var_16 = 50;
                var_15 = 0.1;
                break;
        }

        _ID43696( var_18, var_16, var_15, var_14 );

        if ( var_14 == 5 )
        {
            var_14 = 1;
            continue;
        }

        var_14++;
    }

    if ( getdvarint( "debug_dsm_gameplay" ) == 1 )
        return;

    _ID42237::_ID14402( "download_complete" );

    if ( !_ID42237::_ID14385( "can_save" ) )
        _ID42237::_ID14402( "can_save" );

    thread _ID51488();
}

check_kill_download_display()
{
    self endon( "download_complete" );
    self waittill( "kill_stats_display_huds" );
    _ID51488();
}

_ID51488()
{
    if ( isdefined( level.backers ) )
    {
        foreach ( var_1 in level.backers )
            var_1 destroy();

        level.backers = undefined;
    }

    if ( isdefined( level._ID43120 ) )
        level._ID43120 destroy();

    if ( isdefined( level._ID45141 ) )
        level._ID45141 destroy();

    if ( isdefined( level._ID46801 ) )
        level._ID46801 destroy();

    if ( isdefined( level._ID52546 ) )
        level._ID52546 destroy();

    if ( isdefined( level._ID53192 ) )
        level._ID53192 destroy();

    if ( isdefined( level._ID47999 ) )
        level._ID47999 destroy();

    if ( isdefined( level._ID49568 ) )
        level._ID49568 destroy();

    if ( isdefined( level._ID48863 ) )
        level._ID48863 destroy();

    if ( isdefined( level._ID44235 ) )
        level._ID44235 destroy();

    if ( isdefined( level._ID48678 ) )
        level._ID48678 destroy();

    if ( isdefined( level._ID50078 ) )
        level._ID50078 destroy();
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
        case 1:
            var_5 = randomintrange( 70, 130 );
            var_4 = randomfloatrange( 0.08, 0.18 );
            break;
        case 2:
            var_5 = randomintrange( 3, 5 );
            var_4 = randomfloatrange( 20.8, 32.8 );
            break;
        case 3:
            var_5 = randomintrange( 35, 65 );
            var_4 = randomfloatrange( 0.17, 0.46 );
            break;
        case 4:
            var_5 = randomintrange( 17, 33 );
            var_4 = randomfloatrange( 2.8, 7.2 );
            break;
        case 5:
            var_5 = randomintrange( 7, 13 );
            var_4 = randomfloatrange( 11.7, 17.7 );
            break;
    }

    var_4 = _ID45144( var_4 );
    var_6 = level._ID47458 / level._ID53381;

    if ( var_6 < level._ID49449 )
        level._ID53192 setvalue( var_5 );

    level._ID48678 setvalue( var_4 );

    while ( var_0 < var_1 )
    {
        var_0++;
        level._ID47458++;
        level._ID45141 setvalue( level._ID47458 );
        var_7 = getent( "dsm", "targetname" );
        var_8 = length( level._ID794._ID740 - var_7._ID740 );
        var_9 = getent( "no_autosave_in_basement", "targetname" );
        var_10 = level._ID51846 * 0.7;

        if ( var_8 <= level._ID44576 && level._ID54566 >= var_10 )
        {
            if ( !level._ID794 istouching( var_9 ) )
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
            var_0 = _ID45144( var_0, 1 );
            wait 0.05;
            level._ID53192 setvalue( var_0 );
            continue;
        }

        wait 0.05;
    }
}

_ID45144( var_0, var_1 )
{
    if ( var_0 >= 10 || isdefined( var_1 ) )
    {
        var_0 *= 10;
        var_0 = int( var_0 );
        var_0 /= 10;
    }
    else
    {
        var_0 *= 100;
        var_0 = int( var_0 );
        var_0 /= 100;
    }

    if ( var_0 >= 10 || isdefined( var_1 ) )
    {
        var_2 = int( var_0 );
        var_3 = var_0 - var_2;

        if ( var_3 == 0 )
            var_0 += 0.1;
    }
    else if ( var_0 < 10 && var_0 >= 1 )
    {
        var_4 = var_0 * 10;
        var_5 = int( var_0 * 10 );
        var_3 = var_4 - var_5;

        if ( var_3 == 0 )
            var_0 += 0.01;
    }
    else if ( var_0 < 1 && var_0 >= 0.1 )
    {
        var_6 = int( var_0 * 10 );
        var_5 = var_6 / 10;
        var_2 = int( var_0 * 100 );
        var_6 = int( var_5 * 100 );
        var_7 = var_2 % var_6;

        if ( var_7 == 0 )
            var_0 += 0.01;
    }
    else if ( var_0 < 0.1 )
    {
        var_6 = int( var_0 * 100 );
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
    var_0 = getent( "dsm", "targetname" );
    var_1 = var_0._ID740;

    while ( !_ID42237::_ID14385( "dsm_recovered" ) )
    {
        var_2 = length( level._ID794._ID740 - var_1 );

        if ( var_2 >= level._ID45784 )
        {
            level._ID43531 = 0;
            wait 0.25;
            continue;
        }
        else
        {
            var_3 = ( level._ID45784 - var_2 ) / level._ID45784;
            level._ID43531 = var_3 * level._ID52361;
        }

        wait 0.25;
    }
}

_ID47757()
{
    level endon( "dsm_recovered" );
    _ID42237::_ID14413( "download_started" );
    var_0 = getent( "dsm_dmg_trigger", "targetname" );

    if ( getdvarint( "debug_dsm_gameplay" ) == 1 || getdvarint( "debug_estate_siege" ) || getdvarint( "debug_estate_forceStrike" ) )
    {
        var_0 delete();
        return;
    }

    while ( !_ID42237::_ID14385( "dsm_recovered" ) )
    {
        var_0 waittill( "damage",  var_1, var_2  );

        if ( getdvarint( "debug_estate_siege" ) || getdvarint( "debug_estate_forceStrike" ) )
            continue;

        if ( var_2 != level._ID794 )
        {
            var_3 = length( var_0._ID740 - var_2._ID740 );

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
                setdvar( "ui_deadquote", &"ESTATE_DSM_DESTROYED_BY_PLAYER" );
            else
                setdvar( "ui_deadquote", &"ESTATE_DSM_DESTROYED_BY_AI_GUNFIRE" );

            level notify( "dsm_has_been_destroyed" );
            thread _ID51488();
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
        thread _ID45622();
    else
        thread _ID44519();
}

_ID51099()
{
    self endon( "death" );
    _ID42237::_ID14413( "cointoss_done" );

    if ( level._ID8201 )
        thread _ID44519();
    else
        thread _ID45622();
}

_ID45622()
{
    self endon( "death" );
    _ID42237::_ID14413( "birchfield_cleared_sector2" );
    var_0 = getent( "breach_tweak_start", "targetname" );
    var_1 = var_0._ID740;
    magicbullet( "cheytac", var_1, self._ID740 + ( 0, 0, 60 ) );
    self kill();
}

_ID44519()
{
    self endon( "death" );
    _ID42237::_ID14413( "point_of_no_return" );
    var_0 = self._ID740;
    playfx( level._ID1426["mortar"]["dirt"], var_0 );
    var_1 = spawn( "script_origin", var_0 );
    var_1 playsound( "clusterbomb_explode_default" );
    self kill();
}

_ID48255()
{
    self waittill( "death" );

    if ( !_ID42237::_ID14385( "player_is_escaping" ) )
    {
        var_0 = getnode( "scarecrow_earlydefense_start", "targetname" );
        var_1 = sighttracepassed( level._ID794._ID740, var_0._ID740, 1, undefined );
        var_2 = length( level._ID794._ID740 - var_0._ID740 );

        if ( var_2 > 384 && !var_1 )
            _ID42407::_ID28864( "est_scr_imhit" );

        var_3 = gettime();
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
        var_5 = gettime();
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
        var_0 = gettime();
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
        var_2 = gettime();
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
        thread _ID44753();
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
    setdvar( "ui_deadquote", &"ESTATE_DSM_DESTROYED_BY_DESERTION" );
    _ID42407::_ID23778();
}

_ID48288( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );

    foreach ( var_3 in var_1 )
        var_3 thread _ID44008();
}

_ID44008()
{
    playfx( _ID42237::_ID16299( "smoke_cloud" ), self._ID740 );
    self playsound( "estate_smokegrenade_explode" );
}

_ID5263( var_0, var_1 )
{
    _ID13818( var_0, 1, var_1 );
}

_ID51505( var_0, var_1 )
{
    _ID13818( var_0, 0.6, var_1 );
}

_ID29877( var_0, var_1 )
{
    _ID13818( var_0, 0, var_1 );
}

_ID13818( var_0, var_1, var_2 )
{
    self fadeovertime( var_0 );
    self._ID55 = var_1;
    setblur( var_2, var_0 );
    wait(var_0);
}

_ID48354()
{
    var_0 = level._ID794 getcurrentweapon();

    if ( var_0 == "claymore" )
        return 1;

    if ( !level._ID794 buttonpressed( "DPAD_RIGHT" ) )
        return 0;
    else
        return 1;
}

_ID46541( var_0 )
{
    foreach ( var_2 in level._ID805 )
    {
        var_3 = distance( var_0._ID740, var_2._ID740 );
        var_4 = abs( var_0._ID740[2] - var_2._ID740[2] );

        if ( var_3 < 360 && var_4 < 200 )
        {
            return "return";
            continue;
        }

        if ( var_3 < 1000 )
            return "threat_exists";
    }

    return "none";
}

_ID43694()
{
    if ( !_ID42237::_ID14385( "house_interior_breaches_done" ) )
    {
        var_0 = getaicount( "axis", "all" );
        var_1 = getaiarray( "axis" );
        var_2 = getaiarray( "allies" );

        foreach ( var_4 in var_2 )
            _ID42271::clear_color_progress( var_4 );

        while ( var_0 != 0 )
        {
            var_0 = getaicount( "axis", "all" );
            var_6 = _ID42237::_ID28945( var_1 );

            foreach ( var_4 in var_2 )
            {
                if ( isalive( var_6 ) )
                    var_4 _ID42407::_ID32331( var_6 );
            }

            wait 0.5;
        }

        var_9 = getent( "house_approach_friendlytrigger", "targetname" );
        var_9 notify( "trigger" );
    }
}
#using_animtree("generic_human");

_ID51618()
{
    if ( !isdefined( self._ID1191 ) )
        return;

    var_0 = getnode( self._ID1191, "targetname" );

    if ( !isdefined( var_0 ) || var_0._ID1244 != "Guard" )
        return;

    var_1 = animscripts\utility::_ID22635( "cover_trans", "exposed_crouch_crouchwalk", 2 );
    var_2 = getangledelta( var_1, 0, 1 );
    var_3 = length2dsquared( var_2 );
    var_4 = squared( 8 );

    for ( var_5 = distance2dsquared( self._ID740, var_0._ID740 ); var_5 > var_3 + var_4; var_5 = distance2dsquared( self._ID740, var_0._ID740 ) )
        wait 0.05;

    self notify( "move_interrupt" );
    self clearanim( %body, 0.2 );
    self setflaggedanimrestart( "cover_arrival", var_1, 1, 0.2, self._ID24474 );
    animscripts\shared::_ID11529( "cover_arrival" );
    self._ID7._ID24414 = "stop";
    self clearanim( %animscript_root, 0.2 );
    thread animscripts\move::_ID616();
}

_ID53632()
{
    if ( !isdefined( level._ID45646 ) )
        level._ID45646 = 0;

    var_0 = level._ID45646;
    level._ID45646 = _ID42237::_ID648( level._ID45646 + 1, 4 );
    return var_0;
}

_ID47426()
{
    var_0 = _ID53632();
    wait(0.1 + 0.1 * var_0);
    animscripts\grenade_cower::_ID616();
}

achievement_claymore_init()
{
    if ( !isdefined( level.playerclaymorekill ) )
        level.playerclaymorekill = 0;

    _ID42407::_ID1892( "axis", ::achievement_claymore_enemy_spawned );
    _ID42237::_ID3350( getaiarray( "axis" ), ::achievement_claymore_enemy_spawned );
    thread achievement_claymore_manager();
}

achievement_claymore_enemy_spawned()
{
    level endon( "achievement_claymore_done" );
    self waittill( "death",  var_0, var_1, var_2  );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
    {
        if ( isdefined( var_1 ) && var_1 == "MOD_GRENADE_SPLASH" )
        {
            if ( isdefined( var_2 ) && var_2 == "claymore" )
                level.playerclaymorekill++;
        }
    }
}

achievement_claymore_manager()
{
    while ( level.playerclaymorekill < 11 )
        waittillframeend;

    _ID42407::_ID16864( "CLAYMORE" );
    _ID42407::_ID29534( "axis", ::achievement_claymore_enemy_spawned );
    level notify( "achievement_claymore_done" );
}

fake_rpg( var_0 )
{
    var_1 = _ID42237::_ID16640( var_0, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
        magicbullet( "rpg", var_3._ID740, var_4._ID740 );
        wait(randomfloatrange( 2.5, 4.5 ));
    }
}

blade_rotate()
{
    _ID42237::_ID14413( "autosave_housearrival" );
    _ID42237::_ID3350( getentarray( "blade", "targetname" ), ::_ID13933 );
}

lighting_override_venitians()
{
    _ID42237::_ID14413( "autosave_housearrival" );
    var_0 = getentarray( "override_light", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2 _meth_848a( ( 848, -102.5, 262.5 ) );
}

_ID13933()
{
    var_0 = randomfloatrange( 0.7, 1.5 );

    for (;;)
    {
        self rotateyaw( 360, var_0 );
        wait(var_0);
    }
}

animatescriptedmodel( var_0 )
{
    _ID42237::_ID14413( "approaching_house" );

    if ( !isdefined( self ) )
        return;

    self._ID3189 = var_0;
    _ID42259::_ID32556();
    var_1 = _ID42407::_ID16120( "idle" );
    self setanim( var_1 );
    var_2 = randomfloat( 1 );
    self setanimtime( var_1, var_2 );
}
