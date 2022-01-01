// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    _ID44455();
    _ID47619();
    _ID47173();
    _ID51346();
    _ID47863();
    thread roadkill_init_animsounds();
    turret_animations();
    _ID52007::_ID51189();
    level._ID30895["shepherd"]["player_shep_intro"] = %h2_roadkill_intro_pickup_shepherd;
    _ID42259::_ID2062( "shepherd", "dialog", "player_shep_intro", "roadkill_shp_ontheline" );
    _ID42259::_ID2062( "shepherd", "dialog", "player_shep_intro", "roadkill_shp_ontheline2" );
    _ID42259::_ID2057( "shepherd", "pullout_radio", "h2_rkl_handheld_gps", "tag_inhand", "player_shep_intro" );
    level._ID30895["shepherd"]["player_shep_intro_gun"] = %h2_roadkill_intro_pickup_gun;
    level._ID30895["hargrove"]["roadkill_intro_orders"] = %roadkill_orders_officer;
    level._ID30895["foley"]["roadkill_intro_orders"] = %roadkill_orders_soldier;
    level._ID30895["hargrove"]["walk"] = %civilian_walk_hurried_1;
    level._ID30895["foley"]["walk"] = %civilian_walk_hurried_1;
    _ID42259::_ID2063( "foley", "slam", "slam_hood" );
    level._ID30895["shepherd"]["roadkill_cover_active_leader"] = %roadkill_cover_active_leader;
    level._ID30895["shepherd"]["shepherd_cover"][0] = %roadkill_cover_active_leader_idle;
    _ID42259::_ID2058( "shepherd", "lookat on", ::_ID49785 );
    _ID42259::_ID2058( "shepherd", "lookat off", ::_ID45260 );
    _ID42259::_ID2062( "shepherd", "dialog", "roadkill_cover_active_leader", "roadkill_shp_ontheline" );
    level._ID30895["shepherd"]["roadkill_riverbank_intro"] = %roadkill_opening_shepherd;
    level._ID30895["shepherd"]["intro_idle"][0] = %roadkill_opening_shepherd_idle;
    _ID42259::_ID2062( "shepherd", "roadkill_shp_dontcare_ps", "roadkill_riverbank_intro", "roadkill_shp_dontcare" );

    if ( getdvarint( "use_old_foley_intro" ) )
    {
        level._ID30895["foley"]["roadkill_riverbank_intro"] = %roadkill_opening_foley;
        level._ID30895["foley"]["intro_idle"][0] = %roadkill_opening_foley_idle;
    }
    else
        level._ID30895["foley"]["roadkill_riverbank_intro"] = %h2_roadkill_opening_foley;

    _ID42259::_ID2058( "foley", "m203", ::_ID50180, "roadkill_riverbank_intro" );
    level._ID30895["shepherd"]["walk"] = %roadkill_opening_shepherd_walk;
    level._ID30895["shepherd"]["ending"] = %h2_roadkill_ending_pt1_shepherd;
    level._ID30895["shepherd"]["ending_idle"][0] = %h2_roadkill_ending_shepherd_idle;
    level._ID30895["shepherd"]["ending_end"] = %h2_roadkill_ending_shepherd;
    level._ID30895["generic"]["ending1"] = %h2_roadkill_ending_pt1_soldier1;
    level._ID30895["generic"]["ending1_idle"][0] = %h2_roadkill_ending_soldier1_idle;
    level._ID30895["generic"]["ending1_end"] = %h2_roadkill_ending_soldier1;
    level._ID30895["generic"]["ending2"] = %h2_roadkill_ending_pt1_soldier2;
    level._ID30895["generic"]["ending2_idle"][0] = %h2_roadkill_ending_soldier2_idle;
    level._ID30895["generic"]["ending2_end"] = %h2_roadkill_ending_soldier2;
    level._ID30895["generic"]["ending3"] = %h2_roadkill_ending_pt1_soldier3;
    level._ID30895["generic"]["ending3_idle"][0] = %h2_roadkill_ending_soldier3_idle;
    level._ID30895["generic"]["ending3_end"] = %h2_roadkill_ending_soldier3;
    level._ID30895["shepherd"]["idle_reach"] = %laptop_officer_idle;
    level._ID30895["shepherd"]["idle"][0] = %laptop_officer_idle;
    level._ID30895["shepherd"]["stair_approach"] = %roadkill_shepherd_stair_approach;
    level._ID30895["shepherd"]["stair_idle"][0] = %roadkill_shepherd_stair_idle;
    level._ID30895["shepherd"]["stair_wave"] = %roadkill_shepherd_stair_wave;
    level._ID30895["generic"]["wounded_1"][0] = %h2_roadkill_injured_soldier1_idle;
    level._ID30895["generic"]["wounded_2"][0] = %h2_roadkill_injured_soldier2_idle;
    level._ID30895["generic"]["wounded_3"][0] = %h2_roadkill_ending_medic_loop;
    level._ID30895["generic"]["stair_ranger_idle_start"] = %h2_roadkill_onerangernearstairs_ranger_idlein;
    level._ID30895["generic"]["stair_ranger_idle_loop"] = %h2_roadkill_onerangernearstairs_ranger_idle;
    level._ID30895["generic"]["stair_ranger_idle_to_wave"] = %h2_roadkill_onerangernearstairs_ranger_idleout;
    level._ID30895["generic"]["stair_wave"][0] = %h2_roadkill_onerangernearstairs_ranger_waves;
    _ID42259::_ID2058( "generic", "moveup_vo", ::stairs_ranger_moveup_vo, "stair_wave" );
    level._ID30895["generic"]["end_ranger_pointing1"] = %h2_roadkill_endingranger_pointing_ranger01;
    level._ID30895["generic"]["end_ranger_pointing2"] = %h2_roadkill_endingranger_pointing_ranger02;
    level._ID30895["generic"]["end_ranger_idle1"][0] = %h2_roadkill_endingranger_idle_ranger01;
    level._ID30895["generic"]["end_ranger_idle2"][0] = %h2_roadkill_endingranger_idle_ranger02;
    level._ID30895["generic"]["ranger_on_the_bridge_idle1"][0] = %h2_roadkill_rangeronbridge_idle;
    level._ID30895["generic"]["ranger_on_the_bridge_idle2"][0] = %h2_roadkill_rangeronbridge2_idle;
    level._ID30895["generic"]["ranger_on_the_bridge_idle3"][0] = %h2_roadkill_rangeronbridge3_idle;
    level._ID30895["generic"]["ranger_on_the_bridge_idle4"][0] = %h2_roadkill_rangeronbridge_idle;
    level._ID30895["shepherd"]["angry_walk"] = %roadkill_shepherd_walk;
    level._ID30895["shepherd"]["angry_wander"] = %roadkill_shepherd_shout_sequence;
    _ID42259::_ID2062( "shepherd", "dialog", "ending", "roadkill_shp_shocktrauma" );
    _ID42259::_ID2062( "shepherd", "dialog", "ending_end", "roadkill_shp_goodwork" );
    _ID42259::_ID2062( "shepherd", "dialog", "ending_end", "roadkill_shp_specialop" );
    _ID42259::_ID2062( "generic", "dialog", "ending1_end", "roadkill_ar4_oscarmike" );
    level._ID30895["spotter"]["idle"][0] = %h2_roadkill_cover_spotter_idle;
    level._ID30895["soldier"]["idle"][0] = %h2_roadkill_cover_soldier_idle;
    level._ID30895["spotter"]["out"] = %h2_roadkill_cover_spotter_out;
    level._ID30895["soldier"]["out"] = %h2_roadkill_cover_soldier_out;
    level._ID30895["spotter"]["binoc_scene"] = %h2_roadkill_cover_spotter_shooting;
    level._ID30895["soldier"]["binoc_scene"] = %h2_roadkill_cover_soldier_shooting;
    _ID42259::_ID2058( "spotter", "detach binoc", ::_ID51735, "binoc_scene" );
    _ID42259::_ID2058( "spotter", "attach binoc", ::_ID45515, "binoc_scene" );
    level._ID30895["cover_attack1"]["idle"][0] = %h2_roadkill_behindrock_ranger01_idle;
    level._ID30895["cover_attack2"]["idle"][0] = %h2_roadkill_behindrock_ranger02_idle;
    level._ID30895["cover_attack3"]["idle"][0] = %h2_roadkill_behindrock_ranger01_idle;
    level._ID30895["cover_attack1"]["out"] = %h2_roadkill_behindrock_ranger01_out;
    level._ID30895["cover_attack2"]["out"] = %h2_roadkill_behindrock_ranger02_out;
    level._ID30895["cover_attack3"]["out"] = %h2_roadkill_behindrock_ranger01_out;

    if ( getdvarint( "use_old_radio_scene" ) )
    {
        level._ID30895["cover_radio1"]["idle"][0] = %roadkill_cover_radio_soldier1;
        level._ID30895["cover_radio2"]["idle"][0] = %roadkill_cover_radio_soldier2;
        level._ID30895["cover_radio3"]["idle"][0] = %roadkill_cover_radio_soldier3;
    }
    else
    {
        level._ID30895["cover_radio1"]["idle"][0] = %h2_roadkill_cover_radio_soldier1_idle;
        level._ID30895["cover_radio2"]["idle"][0] = %h2_roadkill_cover_radio_soldier2_idle;
        level._ID30895["cover_radio3"]["idle"][0] = %h2_roadkill_cover_radio_soldier3_idle;
        level._ID30895["cover_radio1"]["out"] = %h2_roadkill_cover_radio_soldier1_out;
        level._ID30895["cover_radio2"]["out"] = %h2_roadkill_cover_radio_soldier2_out;
        level._ID30895["cover_radio3"]["out"] = %h2_roadkill_cover_radio_soldier3_out;
    }

    level._ID30895["cover_radio1"]["idle_noshoot"][0] = %roadkill_cover_radio_soldier1_idle;
    level._ID30895["candy_bar"]["idle"][0] = %h2_roadkill_cover_radio_soldier3;
    level._ID30895["film1"]["video_film_complete"] = %h2_roadkill_videotaper1_explosion;
    _ID42259::_ID2062( "film1", "dialog", "video_film_complete", "roadkill_ar1_whichbuilding" );
    _ID42259::_ID2057( "film1", "attach_camera", "electronics_camera_pointandshoot_low", "TAG_INHAND", "video_film_complete" );
    _ID42259::_ID2059( "film1", "detach_obj", "electronics_camera_pointandshoot_low", "TAG_INHAND", "video_film_complete" );
    level._ID30895["film2"]["video_film_complete"] = %h2_roadkill_videotaper2_explosion;
    _ID42259::_ID2062( "film2", "dialog", "video_film_complete", "roadkill_ar2_tallone" );
    _ID42259::_ID2062( "film2", "dialog", "video_film_complete", "roadkill_ar4_whichone" );
    level._ID30895["film3"]["video_film_complete"] = %h2_roadkill_videotaper3_explosion;
    _ID42259::_ID2062( "film3", "dialog", "video_film_complete", "roadkill_ar3_heydawg" );
    _ID42259::_ID2057( "film3", "attach_camera", "h2_rkl_cellphone_camera", "TAG_INHAND", "video_film_complete" );
    _ID42259::_ID2059( "film3", "detach_obj", "h2_rkl_cellphone_camera", "TAG_INHAND", "video_film_complete" );
    level._ID30895["film4"]["video_film_complete"] = %h2_roadkill_videotaper4_explosion;
    _ID42259::_ID2062( "film4", "dialog", "video_film_complete", "roadkill_ar5_oneonleft" );
    _ID42259::_ID2057( "film4", "attach_camera", "h2_rkl_cellphone_camera", "TAG_INHAND", "video_film_complete" );
    _ID42259::_ID2059( "film4", "detach_obj", "h2_rkl_cellphone_camera", "TAG_INHAND", "video_film_complete" );
    level._ID30895["film5"]["video_film_complete"] = %h2_roadkill_videotaper5_explosion;
    _ID42259::_ID2057( "film5", "attach_camera", "h2_rkl_cellphone_camera", "TAG_INHAND", "video_film_complete" );
    _ID42259::_ID2059( "film5", "detach_obj", "h2_rkl_cellphone_camera", "TAG_INHAND", "video_film_complete" );
    level._ID30895["generic"]["balcony_death"] = [];
    level._ID30895["generic"]["balcony_death"][0] = %bog_b_rpg_fall_death;
    level._ID30895["generic"]["balcony_death"][1] = %death_rooftop_a;
    level._ID30895["generic"]["balcony_death"][2] = %death_rooftop_b;
    level._ID30895["generic"]["balcony_death"][3] = %death_rooftop_d;
    level._ID30895["shepherd"]["ending_additive_right"] = %roadkill_ending_point_left45;
    level._ID30895["shepherd"]["ending_additive_left"] = %roadkill_ending_point_right45;
    level._ID30895["shepherd"]["ending_additive_controller"] = %roadkill_ending_additive;
    level._ID30895["exposed_flashbang_v1"]["flashed"] = %exposed_flashbang_v1;
    level._ID30895["exposed_flashbang_v2"]["flashed"] = %exposed_flashbang_v2;
    level._ID30895["exposed_flashbang_v3"]["flashed"] = %exposed_flashbang_v3;
    level._ID30895["exposed_flashbang_v4"]["flashed"] = %exposed_flashbang_v4;
    level._ID30895["exposed_flashbang_v5"]["flashed"] = %exposed_flashbang_v5;
    level._ID30895["exposed_flashbang_v5"]["exit_latvee"] = %h2_roadkill_thrownoutlatvee_dunn;
    level._ID30895["exposed_flashbang_v2"]["exit_latvee"] = %h2_roadkill_thrownoutlatvee_foley;
    level._ID30895["exposed_flashbang_v3"]["exit_latvee"] = %h2_roadkill_thrownoutlatvee_ranger01;
    level._ID30895["exposed_flashbang_v4"]["exit_latvee"] = %h2_roadkill_thrownoutlatvee_ranger02;
    level._ID30895["generic"]["exit_latvee"][0] = %h2_roadkill_throwoutlatvee_afghanbody;
    _ID42259::_ID2062( "exposed_flashbang_v5", "dialog", "exit_latvee", "roadkill_cpd_ambush_sonofa" );
    _ID42259::_ID2062( "exposed_flashbang_v5", "dialog", "exit_latvee", "roadkill_cpd_ambush_letsgo" );
    level._ID30895["exposed_flashbang_v5"]["enter_house"] = %h2_roadkill_enteringhouse_dunn;
    _ID42259::_ID2062( "exposed_flashbang_v5", "dialog", "enter_house", "roadkill_cpd_huah" );
    _ID42259::_ID2062( "exposed_flashbang_v5", "dialog", "enter_house", "roadkill_cpd_movinaroundup" );
    level._ID30895["exposed_flashbang_v2"]["enter_house"] = %h2_roadkill_enteringhouse_foley;
    _ID42259::_ID2062( "exposed_flashbang_v2", "dialog", "enter_house", "roadkill_fly_everybodyok" );
    _ID42259::_ID2062( "exposed_flashbang_v2", "dialog", "enter_house", "roadkill_fly_securetopfloor" );
    level._ID30895["exposed_flashbang_v3"]["enter_house"] = %h2_roadkill_enteringhouse_soldier1;
    level._ID30895["exposed_flashbang_v4"]["enter_house"] = %h2_roadkill_enteringhouse_soldier2;
    level._ID30895["generic"]["pistol_walk_back"] = %pistol_walk_back;
    level._ID30895["generic"]["pistol_death"] = %airport_security_guard_pillar_death_r;
    level._ID30895["generic"]["exposed_reload"] = %exposed_reloadb;
    level._ID30895["generic"]["cqb_wave"] = %cqb_stand_signal_move_out;

    if ( getdvarint( "use_old_stairblock_anims" ) )
    {
        level._ID30895["sit_1"]["sit_around"][0] = %sitting_guard_loadak_idle;
        level._ID30895["sit_2"]["sit_around"][0] = %civilian_texting_sitting;
        level._ID30895["sit_3"]["sit_around"][0] = %civilian_sitting_talking_a_1;
        level._ID30904["sit_2"] = "electronics_pda";
    }
    else
    {
        level._ID30895["sit_1"]["sit_around"][0] = %h2_roadkill_threerangersblockingstairs_ranger01_idle;
        level._ID30895["sit_2"]["sit_around"][0] = %h2_roadkill_threerangersblockingstairs_ranger02_idle;
        level._ID30895["sit_3"]["sit_around"][0] = %h2_roadkill_threerangersblockingstairs_ranger03_idle;
        level._ID30895["sit_1"]["time_to_go"] = %h2_roadkill_threerangersblockingstairs_ranger01_out;
        _ID42259::_ID2059( "sit_1", "detach_obj", "h2_rkl_handheld_gps", "tag_weapon_left", "time_to_go" );
        level._ID30895["sit_2"]["time_to_go"] = %h2_roadkill_threerangersblockingstairs_ranger02_out;
        level._ID30895["sit_3"]["time_to_go"] = %h2_roadkill_threerangersblockingstairs_ranger03_out;
        _ID42259::_ID2059( "sit_3", "detach_obj", "h2_rkl_folded_paper_map", "tag_inhand", "time_to_go" );
        level._ID30904["sit_1"] = "h2_rkl_handheld_gps";
        level._ID30904["sit_3"] = "h2_rkl_folded_paper_map";
    }

    level._ID30895["driver"]["idle"][0] = %h2_roadkill_rangerinlatvee_idle_driver;
    level._ID30895["backl"]["idle"][0] = %h2_roadkill_rangerinlatvee_idle_backl;
    level._ID30895["backr"]["idle"][0] = %h2_roadkill_rangerinlatvee_idle_backr;
    level._ID30895["pass"]["idle"][0] = %h2_roadkill_rangerinlatvee_idle_pass;
    level._ID30895["driver"]["getin"] = %h2_roadkill_rangerinlatvee_getin_driver;
    level._ID30895["backl"]["getin"] = %h2_roadkill_rangerinlatvee_getin_backl;
    level._ID30895["backr"]["getin"] = %h2_roadkill_rangerinlatvee_getin_backr;
    level._ID30895["pass"]["getin"] = %h2_roadkill_rangerinlatvee_getin_pass;
    level._ID30895["driver"]["wait4demo"] = %h2_roadkill_rangerinlatvee_waiting4demolition_driver;
    level._ID30895["backl"]["wait4demo"] = %h2_roadkill_rangerinlatvee_waiting4demolition_backl;
    level._ID30895["backr"]["wait4demo"] = %h2_roadkill_rangerinlatvee_waiting4demolition_backr;
    level._ID30895["pass"]["wait4demo"] = %h2_roadkill_rangerinlatvee_waiting4demolition_pass;
    level._ID30895["generic"]["rooftop_turn"] = %stand_2_run_180l;
    level._ID30895["generic"]["walk"] = %patrol_bored_patrolwalk;
    level._ID30895["street_runner"]["scene"] = %airport_civ_pillar_exit;
    level._ID30895["roof_backup"]["scene"] = %airport_civ_fear_drop_6;
    level._ID30895["generic"]["idle_patrol1"][0] = %h2_roadkill_rangersblockingroad_soldier01_idle;
    level._ID30895["generic"]["idle_patrol2"][0] = %h2_roadkill_rangersblockingroad_soldier02_idle;
    level._ID30895["generic"]["idle_patrol3"][0] = %h2_roadkill_rangersblockingroad_soldier03_idle;
    level._ID30895["generic"]["idle_patrol1_out"] = %h2_roadkill_rangersblockingroad_soldier01_react;
    level._ID30895["generic"]["idle_patrol2_out"] = %h2_roadkill_rangersblockingroad_soldier02_react;
    level._ID30895["generic"]["idle_patrol3_out"] = %h2_roadkill_rangersblockingroad_soldier03_react;

    if ( getdvarint( "use_old_getinlaatpv_anims" ) )
        level._ID30895["generic"]["help_player_getin"] = %roadkill_laatpv_soldier_getin;
    else
        level._ID30895["generic"]["help_player_getin"] = %h2_roadkill_laatpv_soldier_opendoor;

    level._ID30895["generic"]["combat_walk"] = %combatwalk_f_spin;
    level._ID30895["generic"]["garage_spawner"] = %unarmed_close_garage;
    level._ID30895["generic"]["garage_spawner_right"] = %unarmed_runinto_garage_right;
    level._ID30895["generic"]["garage_spawner_left"] = %unarmed_runinto_garage_left;
    level._ID30895["generic"]["garage_spawner_left_run"] = %unarmed_scared_run_delta;
    level._ID30895["generic"]["garage_window_shouter_spawner"][0] = %unarmed_shout_window;
    level._ID30895["generic"]["garage_spawner_right"] = %unarmed_runinto_garage_right;
    level._ID30895["civ_garage_runner1"]["run_garage"] = %h2_roadkill_civiliangarage_civilian01;
    _ID42259::_ID2063( "civ_garage_runner1", "pull_garage", "pull_garage", "run_garage" );
    level._ID30895["civ_garage_runner2"]["run_garage"] = %h2_roadkill_civiliangarage_civilian02;
    level._ID30895["flee_alley"]["round_corner"] = %flee_alley_civilain;
    level._ID30895["flee_alley"]["idle"][0] = %flee_alley_civilain_idle;
    level._ID30895["flee_alley"]["idle_location"] = %flee_alley_civilain_idle;
    level._ID30895["flee_alley"]["hands_up"] = %h2_roadkilll_scaredcivilians_civ1_backoff;
    level._ID30895["generic"]["unarmed_climb_wall"] = %unarmed_climb_wall;
    level._ID30895["generic"]["unarmed_climb_wall_v2"] = %unarmed_climb_wall_v2;
    level._ID30895["generic"]["facedown_death"] = %run_death_facedown;
    level._ID30895["flee_alley"]["flee_shooting"] = %flee_stand_2_run_med;
    level._ID30895["civ_run_1"]["civilians_run"] = %h2_roadkill_runningcivilians_civilian01;
    level._ID30895["civ_run_2"]["civilians_run"] = %h2_roadkill_runningcivilians_civilian02;
    level._ID30895["civ_run_3"]["civilians_run"] = %h2_roadkill_runningcivilians_civilian03;
    level._ID30895["civ_run_4"]["civilians_run"] = %h2_roadkill_runningcivilians_civilian04;
    level._ID30895["generic"]["killhouse_gaz_idleA"][0] = %killhouse_gaz_idlea;
    level._ID30895["generic"]["killhouse_gaz_talk_side"][0] = %killhouse_gaz_talk_side;
    level._ID30895["generic"]["killhouse_gaz_idleB"][0] = %killhouse_gaz_idleb;
    level._ID30895["generic"]["killhouse_sas_price_idle"][0] = %killhouse_sas_price_idle;
    level._ID30895["generic"]["killhouse_gaz_idleA_solo"] = %killhouse_gaz_idlea;
    level._ID30895["generic"]["killhouse_gaz_talk_side_solo"] = %killhouse_gaz_talk_side;
    level._ID30895["generic"]["killhouse_gaz_idleB_solo"] = %killhouse_gaz_idleb;
    level._ID30895["generic"]["killhouse_sas_price_idle_solo"] = %killhouse_sas_price_idle;
    level._ID30895["generic"]["balconymilitia_civilian_idle"][0] = %h2_roadkill_balconymilitia_civilian_idle;
    level._ID30895["generic"]["balconymilitia_civilian1_idle"][0] = %h2_roadkill_balconymilitia_civilian1_idle;
    level._ID30895["generic"]["balconymilitia_civilian2_idle"][0] = %h2_roadkill_balconymilitia_civilian2_idle;
    level._ID30895["generic"]["balconymilitia_civilian_out"] = %h2_roadkill_balconymilitia_civilian_out;
    level._ID30895["generic"]["balconymilitia_civilian1_out"] = %h2_roadkill_balconymilitia_civilian1_out;
    level._ID30895["generic"]["balconymilitia_civilian2_out"] = %h2_roadkill_balconymilitia_civilian2_out;
    level._ID30895["generic"]["balconymilitia_civilian_intro"] = %h2_roadkill_balconymilitia_civilian_intro;
    level._ID30895["generic"]["balconymilitia_civilian1_intro"] = %h2_roadkill_balconymilitia_civilian1_intro;
    level._ID30895["generic"]["balconymilitia_civilian2_intro"] = %h2_roadkill_balconymilitia_civilian2_intro;
    level._ID30895["generic"]["latvee_turret_bounce"] = %latvee_turret_bounce;
    level._ID30895["generic"]["latvee_turret_idle_lookback"] = %latvee_turret_idle_lookback;
    level._ID30895["generic"]["latvee_turret_idle_lookbackB"] = %latvee_turret_idle_lookbackb;
    level._ID30895["generic"]["latvee_turret_idle_signal_forward"] = %latvee_turret_idle_signal_forward;
    level._ID30895["generic"]["latvee_turret_idle_signal_side"] = %latvee_turret_idle_signal_side;
    level._ID30895["generic"]["latvee_turret_radio"] = %latvee_turret_radio;
    level._ID30895["generic"]["latvee_turret_flinchA"] = %latvee_turret_flincha;
    level._ID30895["generic"]["latvee_turret_flinchB"] = %latvee_turret_flinchb;
    level._ID30895["generic"]["latvee_turret_rechamber"] = %latvee_turret_rechamber;
    level._ID30895["shepherd"]["shepherd_drone_killed_by_player"] = %stand_death_tumbleforward;
    level._ID30900["driver_intro"] = #animtree;
    level._ID30895["driver_intro"]["h2_intro"] = %h2_roadkill_missiontruckintro_driver;
    _ID42259::_ID2062( "driver_intro", "dialog", "h2_intro", "roadkill_custom_threat_rpg" );
    level._ID30895["technical_driver"]["technical_pushed"] = %h2_roadkill_technical_driver;
    level._ID30895["technical_gunner"]["technical_pushed"] = %h2_technical_turret_roadkill_bump;
}

_ID49785( var_0 )
{

}

_ID45260( var_0 )
{

}

_ID51735( var_0 )
{
    if ( !isdefined( var_0._ID53451 ) )
        return;

    var_0 detach( "weapon_binocular", "tag_inhand" );
    var_0._ID53451 = undefined;
}

_ID45515( var_0 )
{
    if ( isdefined( var_0._ID53451 ) )
        return;

    var_0 attach( "weapon_binocular", "tag_inhand" );
    var_0._ID53451 = 1;
}

_ID54256( var_0 )
{
    var_0 thread _ID42407::_ID27079( "roadkill_whistle" );
    wait 0.9;
    _ID42237::_ID14402( "bridgelayer_starts" );
}

_ID54054( var_0 )
{
    var_0._ID50547 = 1;
    var_0 _ID46664();
}

_ID46664()
{
    self endon( "point_end" );
    var_0 = _ID42407::_ID16120( "ending_additive_controller" );
    var_1 = _ID42407::_ID16120( "ending_additive_left" );
    var_2 = _ID42407::_ID16120( "ending_additive_right" );
    var_3 = 45;

    for (;;)
    {
        var_4 = _ID42407::_ID16120( "ending" );
        var_5 = anglestoright( self._ID65 );
        var_6 = vectornormalize( level._ID794._ID740 - self._ID740 );
        var_7 = anglestoforward( self._ID65 );
        var_5 = anglestoright( self._ID65 );
        var_8 = vectordot( var_7, var_6 );
        var_9 = vectordot( var_5, var_6 );
        var_10 = acos( var_8 );
        var_10 = abs( var_10 );
        var_11 = 0;

        if ( var_9 > 0 )
        {
            if ( var_10 > var_3 )
                var_10 = var_3;

            var_11 = var_10 / var_3;
            self setanim( var_1, 0, 0.2, 1 );
            self setanim( var_2, 1, 0.2, 1 );
        }
        else
        {
            var_10 += 10;

            if ( var_10 > var_3 )
                var_10 = var_3;

            var_11 = var_10 / var_3;
            self setanim( var_1, 1, 0.2, 1 );
            self setanim( var_2, 0, 0.2, 1 );
        }

        if ( isdefined( self._ID50547 ) )
        {
            if ( abs( var_11 ) >= 1 )
                self setlookatentity( level._ID794 );
            else
                self setlookatentity();
        }

        self setanim( var_0, var_11, 0.2, 1 );
        wait 0.05;
    }
}

_ID47743( var_0 )
{
    wait 2.9;
    var_0._ID50547 = undefined;
    var_0 setlookatentity();
    var_0 notify( "point_end" );
    var_1 = var_0 _ID42407::_ID16120( "ending_additive_controller" );
    var_0 clearanim( var_1, 0.2 );
}

_ID50180( var_0 )
{
    var_1 = _ID42237::_ID16299( "m203" );
    var_2 = var_0 gettagorigin( "tag_flash" );
    var_3 = var_0 gettagangles( "tag_flash" );
    playfxontag( var_1, var_0, "tag_flash" );
    var_4 = ( -1734, -1205, 740 );
    magicbullet( "m203_m16", var_2, var_4 );
}
#using_animtree("script_model");

_ID51346()
{
    level._ID30900["gun_model"] = #animtree;
    level._ID30904["gun_model"] = "weapon_colt_anaconda_animated";
    level._ID30900["door"] = #animtree;
    level._ID30895["door"]["run_garage"] = %h2_roadkill_civiliangarage_doorpull;
    level._ID30900["radio_handheld"] = #animtree;
    level._ID30895["radio_handheld"]["stair_ranger_idle_start"] = %h2_roadkill_onerangernearstairs_radio_idlein;
    level._ID30895["radio_handheld"]["stair_ranger_idle_loop"] = %h2_roadkill_onerangernearstairs_radio_idle;
    level._ID30895["radio_handheld"]["stair_ranger_idle_to_wave"] = %h2_roadkill_onerangernearstairs_radio_idleout;
    level._ID30895["radio_handheld"]["stair_wave"][0] = %h2_roadkill_onerangernearstairs_radio_waves;
    level._ID30900["lamp_post"] = #animtree;
    level._ID30895["lamp_post"]["lamp_post_anim_a"] = %h2_rkl_streetlight_explosion_react_a;
    level._ID30895["lamp_post"]["lamp_post_anim_b"] = %h2_rkl_streetlight_explosion_react_b;
    level._ID30895["lamp_post"]["lamp_post_anim_c"] = %h2_rkl_streetlight_explosion_react_c;
    level._ID30895["lamp_post"]["lamp_post_anim_d"] = %h2_rkl_streetlight_explosion_react_d;
    level._ID30895["lamp_post"]["lamp_post_anim_e"] = %h2_rkl_streetlight_explosion_react_e;
}
#using_animtree("player");

_ID47173()
{
    if ( getdvarint( "use_old_getinlaatpv_anims" ) )
        level._ID30895["player_rig"]["player_getin"] = %roadkill_laatpv_player_getin;
    else
        level._ID30895["player_rig"]["player_getin"] = %h2_roadkill_laatpv_player_getin;

    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewhands_player_us_army";
    level._ID30900["viewbody"] = #animtree;
    level._ID30904["viewbody"] = "viewbody_us_army";
    level._ID30900["player_worldbody"] = #animtree;
    level._ID30904["player_worldbody"] = "viewbody_us_army";
    level._ID30895["player_worldbody"]["exit_latvee"] = %h2_roadkill_thrownoutlatvee_player;
    level._ID30895["player_worldbody"]["player_shep_intro"] = %h2_roadkill_intro_pickup_player;
    _ID42259::_ID2058( "player_worldbody", "intro_plr_getup", maps\roadkill_aud::_ID47719, "player_shep_intro" );
    level._ID30895["player_worldbody"]["h2_intro"] = %h2_roadkill_missiontruckintro_player;
}

h2_intro_clear_cam_movement( var_0 )
{
    var_1 = var_0 gettagorigin( "tag_player" );
    var_2 = var_0 gettagangles( "tag_player" );
    level._ID794 _ID42407::_ID22166( var_1, var_2, 0.2, 1, 0, 0, 0, 0, 0 );
    level._ID794 playerlinktodelta( var_0, "tag_player", 0.2, 1, 0, 0, 0, 0, 1 );
}
#using_animtree("vehicles");

_ID44455()
{
    level._ID30895["bridge_layer_bridge"]["bridge_lower"] = %h2_roadkill_m60a1_bridge_lower;
    level._ID30895["bridge_layer_bridge"]["bridge_driveup"] = %h2_roadkill_m60a1_bridge_driveup;
    level._ID30895["bridge_layer_bridge"]["bridge_up"] = %h2_roadkill_m60a1_bridge_up;
    level._ID30895["bridge_layer"]["bridge_lower"] = %h2_roadkill_m60a1_tank_lower;
    level._ID30895["bridge_layer"]["bridge_driveup"] = %h2_roadkill_m60a1_tank_driveup;
    level._ID30895["bridge_layer"]["bridge_cross"] = %h2_roadkill_m60a1_tank_cross;
    level._ID30895["bridge_layer"]["bridge_up"] = %h2_roadkill_m60a1_tank_up;
    level._ID30900["bridge_layer_bridge"] = #animtree;
    level._ID30900["bridge_layer"] = #animtree;
    level._ID30900["player_latvee"] = #animtree;
    level._ID30895["player_latvee"]["roadkill_intro_orders"] = %roadkill_orders_laatpv;

    if ( getdvarint( "use_old_getinlaatpv_anims" ) )
        level._ID30895["player_latvee"]["roadkill_player_door_open"] = %roadkill_laatpv_door_soldier;
    else
        level._ID30895["player_latvee"]["roadkill_player_door_open"] = %h2_roadkill_laatpv_soldier_opendoor_door;

    level._ID30895["player_latvee"]["technical_pushed"] = %h2_roadkill_pushed_truck_latvee;
    _ID42259::_ID2058( "player_latvee", "start_latvee_reverse", maps\roadkill_aud::player_laatpv_flee_area_04, "technical_pushed" );
    _ID42259::_ID2058( "player_latvee", "h2_impact_1", ::impact_camera_shake, "technical_pushed", 1 );
    _ID42259::_ID2058( "player_latvee", "h2_impact_2", ::impact_camera_shake, "technical_pushed", 2 );
    _ID42259::_ID2058( "player_latvee", "h2_impact_3", ::impact_camera_shake, "technical_pushed", 3 );

    if ( getdvarint( "use_old_getinlaatpv_anims" ) )
        level._ID30895["turret"]["player_getin"] = %roadkill_laatpv_gun_getin;
    else
        level._ID30895["turret"]["player_getin"] = %h2_roadkill_laatpv_player_getin_minigun;

    level._ID30900["turret"] = #animtree;
    level._ID30895["technical"]["technical_pushed"] = %h2_roadkill_pushed_truck_pickup;
    level._ID30900["technical"] = #animtree;
    _ID42259::_ID2058( "technical", "h2_collision_truck", maps\roadkill_code::technical_pushed_collision, "technical_pushed" );
    _ID42259::_ID2058( "technical", "scn_npc_technical_pickup_impact_01", maps\roadkill_aud::traffic_jam_truck_impact_01, "technical_pushed" );
    _ID42259::_ID2058( "technical", "scn_npc_technical_pickup_impact_02", maps\roadkill_aud::traffic_jam_truck_impact_02, "technical_pushed" );
    level._ID30904["vehicle_latvee_camo"] = "vehicle_laatpv_viewmodel";
    level._ID30900["vehicle_latvee_camo"] = #animtree;
    level._ID30895["vehicle_latvee_camo"]["h2_intro_vehicle"] = %h2_roadkill_missiontruckintro_latvee;
    level._ID53525["h2_intro_vehicle"]["origin"] = ( -3197.65, -6530.29, 179.914 );
    level._ID53525["h2_intro_vehicle"]["angles"] = ( 0, 0, 0 );
}

impact_camera_shake( var_0, var_1 )
{
    if ( var_1 == 1 )
        earthquake( 0.5, 1.5, level._ID794._ID740, 10000 );
    else if ( var_1 == 2 )
        earthquake( 0.4, 1.5, level._ID794._ID740, 10000 );
    else
        earthquake( 0.3, 1.2, level._ID794._ID740, 10000 );
}

_ID54329( var_0 )
{
    _ID42234::_ID13611( "intro_boom" );
}
#using_animtree("generic_human");

_ID47619()
{
    level._ID30909["generic"]["roadkill_fly_yourM203"] = "roadkill_fly_yourM203";
    level._ID30909["generic"]["roadkill_fly_acrossriver"] = "roadkill_fly_acrossriver";
    level._ID30909["generic"]["roadkill_fly_10oclockhigh"] = "roadkill_fly_10oclockhigh";
    level._ID30909["generic"]["roadkill_fly_onthebridge"] = "roadkill_fly_onthebridge";
    level._ID30909["generic"]["roadkill_shp_dontcare"] = "roadkill_shp_dontcare";
    level._ID30909["generic"]["roadkill_fly_yessir"] = "roadkill_fly_yessir";
    level._ID30909["generic"]["roadkill_fly_wereswimming"] = "roadkill_fly_wereswimming";
    level._ID30909["generic"]["roadkill_fly_makingapush"] = "roadkill_fly_makingapush";
    level._ID30909["generic"]["roadkill_fly_keephitting"] = "roadkill_fly_keephitting";
    level._ID30909["generic"]["roadkill_fly_bridgecomplete"] = "roadkill_fly_bridgecomplete";
    level._ID30901["generic"]["roadkill_fly_bridgecomplete"] = %roadkill_fly_bridgecomplete;
    level._ID30909["generic"]["roadkill_cpd_airstrike"] = "roadkill_cpd_airstrike";
    level._ID30908["roadkill_auc_ontheline"] = "roadkill_auc_ontheline";
    level._ID30908["roadkill_fp1_devil11"] = "roadkill_fp1_devil11";
    level._ID30909["generic"]["roadkill_cpd_checkin"] = "roadkill_cpd_checkin";
    level._ID30908["roadkill_fp1_standingby"] = "roadkill_fp1_standingby";
    level._ID30909["generic"]["roadkill_cpd_levelbuilding"] = "roadkill_cpd_levelbuilding";
    level._ID30908["roadkill_fp1_targetacquired"] = "roadkill_fp1_targetacquired";
    level._ID30909["generic"]["roadkill_cpd_clearedhot"] = "roadkill_cpd_clearedhot";
    level._ID30908["roadkill_fp1_offsafe"] = "roadkill_fp1_offsafe";
    level._ID30909["generic"]["roadkill_ar3_holup"] = "roadkill_ar3_holup";
    level._ID30909["generic"]["roadkill_cpd_majorfiremission"] = "roadkill_cpd_majorfiremission";
    level._ID30909["generic"]["roadkill_ar3_dangerclose"] = "roadkill_ar3_dangerclose";
    level._ID30909["generic"]["roadkill_cpd_sincewhen"] = "roadkill_cpd_sincewhen";
    level._ID30909["generic"]["roadkill_cpd_getsome"] = "roadkill_cpd_getsome";
    level._ID30909["generic"]["roadkill_ar1_yeah"] = "roadkill_ar1_yeah";
    level._ID30909["generic"]["roadkill_ar2_wooyeah"] = "roadkill_ar2_wooyeah";
    level._ID30909["generic"]["roadkill_ar1_huahyeah"] = "roadkill_ar1_huahyeah";
    level._ID30909["generic"]["roadkill_cpd_paybig"] = "roadkill_cpd_paybig";
    level._ID30909["generic"]["roadkill_ar2_keepdreamin"] = "roadkill_ar2_keepdreamin";
    level._ID30909["generic"]["roadkill_cpd_extreme"] = "roadkill_cpd_extreme";
    level._ID30909["generic"]["roadkill_ar1_whoa"] = "roadkill_ar1_whoa";
    level._ID30909["generic"]["roadkill_ar2_yeahcough"] = "roadkill_ar2_yeahcough";
    level._ID30909["generic"]["roadkill_gar_cough1"] = "roadkill_gar_cough1";
    level._ID30909["generic"]["roadkill_gar_cough2"] = "roadkill_gar_cough2";
    level._ID30909["generic"]["roadkill_gar_cough3"] = "roadkill_gar_cough3";
    level._ID30909["generic"]["roadkill_gar_cough4"] = "roadkill_gar_cough4";
    level._ID30909["generic"]["roadkill_gar_cough5"] = "roadkill_gar_cough5";
    level._ID30909["generic"]["roadkill_gar_cough6"] = "roadkill_gar_cough6";
    level._ID30909["generic"]["roadkill_cpd_movinout"] = "roadkill_cpd_movinout";
    level._ID30909["generic"]["roadkill_ar2_huah"] = "roadkill_ar2_huah";
    level._ID30909["generic"]["roadkill_ar3_backinvehicle"] = "roadkill_ar3_backinvehicle";
    level._ID30909["generic"]["roadkill_ar4_oscarmike"] = "roadkill_ar4_oscarmike";
    level._ID30909["generic"]["roadkill_fly_oscarmike"] = "roadkill_fly_oscarmike";
    level._ID30909["generic"]["roadkill_ar2_oscarmike"] = "roadkill_ar2_oscarmike";
    level._ID30909["generic"]["roadkill_cpd_notstoppin"] = "roadkill_cpd_notstoppin";
    level._ID30909["generic"]["roadkill_fly_movingout"] = "roadkill_fly_movingout";
    level._ID30909["generic"]["roadkill_fly_mountup"] = "roadkill_fly_mountup";
    level._ID30909["generic"]["roadkill_fly_comeongetin"] = "roadkill_fly_comeongetin";
    level._ID30909["generic"]["roadkill_fly_holdingupline"] = "roadkill_fly_holdingupline";
    level._ID30909["generic"]["roadkill_fly_hurryup"] = "roadkill_fly_hurryup";
    level._ID30909["generic"]["roadkill_fly_moveletsgo"] = "roadkill_fly_moveletsgo";
    level._ID30909["generic"]["roadkill_fly_breakingaway"] = "roadkill_fly_breakingaway";
    level._ID30908["roadkill_hqr_copyhunter2"] = "roadkill_hqr_copyhunter2";
    level._ID30909["generic"]["roadkill_fly_scanrooftops"] = "roadkill_fly_scanrooftops";
    level._ID30909["generic"]["roadkill_fly_lastlonger"] = "roadkill_fly_lastlonger";
    level._ID30909["generic"]["roadkill_fly_eyeoutforciv"] = "roadkill_fly_eyeoutforciv";
    level._ID30909["generic"]["roadkill_fly_holdoff"] = "roadkill_fly_holdoff";
    level._ID30909["generic"]["roadkill_cpd_scoutingus"] = "roadkill_cpd_scoutingus";
    level._ID30909["generic"]["roadkill_fly_doesntmean"] = "roadkill_fly_doesntmean";
    level._ID30909["generic"]["roadkill_fly_nothingthere"] = "roadkill_fly_nothingthere";
    level._ID30909["generic"]["roadkill_fly_standdown"] = "roadkill_fly_standdown";
    level._ID30909["generic"]["roadkill_fly_ceasefire"] = "roadkill_fly_ceasefire";
    level._ID30909["generic"]["roadkill_fly_watchsector"] = "roadkill_fly_watchsector";
    level._ID30909["generic"]["roadkill_cpd_seeanything"] = "roadkill_cpd_seeanything";
    level._ID30909["generic"]["roadkill_fly_stayfrosty"] = "roadkill_fly_stayfrosty";
    level._ID30909["generic"]["roadkill_fly_eyesforward"] = "roadkill_fly_eyesforward";
    level._ID30909["generic"]["roadkill_fly_watchalleys"] = "roadkill_fly_watchalleys";
    level._ID30909["generic"]["roadkill_cpd_contact12"] = "roadkill_cpd_contact12";
    level._ID30909["generic"]["roadkill_fly_sittingducks"] = "roadkill_fly_sittingducks";
    level._ID30909["generic"]["roadkill_fly_strungout"] = "roadkill_fly_strungout";
    level._ID30909["generic"]["roadkill_cpd_keepmoving"] = "roadkill_cpd_keepmoving";
    level._ID30908["roadkill_ar2_shotup"] = "roadkill_ar2_shotup";
    level._ID30909["generic"]["roadkill_fly_hangtight"] = "roadkill_fly_hangtight";
    level._ID30908["roadkill_ar2_solidcopy"] = "roadkill_ar2_solidcopy";
    level._ID30909["generic"]["roadkill_cpd_cutoff"] = "roadkill_cpd_cutoff";
    level._ID30909["generic"]["roadkill_fly_pushthrough"] = "roadkill_fly_pushthrough";
    level._ID30909["generic"]["roadkill_fly_headsup"] = "roadkill_fly_rpgtopfloor";
    level._ID30909["generic"]["roadkill_fly_getoffstreet"] = "roadkill_fly_getoffstreet";
    level._ID30909["generic"]["dcemp_cpd_lookout2"] = "dcemp_cpd_lookout2";
    level._ID30909["generic"]["roadkill_fly_followme"] = "roadkill_fly_followme";
    level._ID30909["generic"]["roadkill_fly_everybodyok"] = "roadkill_fly_everybodyok";
    level._ID30909["generic"]["roadkill_cpd_huah"] = "roadkill_cpd_huah";
    level._ID30909["generic"]["roadkill_ar1_huah"] = "roadkill_ar1_huah";
    level._ID30909["generic"]["roadkill_ar2_huah2"] = "roadkill_ar2_huah2";
    level._ID30909["generic"]["roadkill_cpd_movinaroundup"] = "roadkill_cpd_movinaroundup";
    level._ID30909["generic"]["roadkill_fly_securetopfloor"] = "roadkill_fly_securetopfloor";
    level._ID30909["generic"]["roadkill_fly_eyesonschool"] = "roadkill_fly_eyesonschool";
    level._ID30908["roadkill_ar3_ineffective"] = "roadkill_ar3_ineffective";
    level._ID30909["generic"]["roadkill_fly_keepittogether"] = "roadkill_fly_keepittogether";
    level._ID30909["generic"]["roadkill_fly_intheschool"] = "roadkill_fly_intheschool";
    level._ID30909["generic"]["roadkill_shp_copythat21"] = "roadkill_shp_copythat21";
    level._ID30909["generic"]["roadkill_cpd_historyclass"] = "roadkill_cpd_historyclass";
    level._ID30909["generic"]["roadkill_fly_rogerthat"] = "roadkill_fly_rogerthat";
    level._ID30909["generic"]["roadkill_fly_sawone"] = "roadkill_fly_sawone";
    level._ID30909["generic"]["roadkill_fly_moreresistance"] = "roadkill_fly_moreresistance";
    level._ID30909["generic"]["roadkill_cpd_frontofschool"] = "roadkill_cpd_frontofschool";
    level._ID30909["generic"]["roadkill_cpd_classonright"] = "roadkill_cpd_classonright";
    level._ID30909["generic"]["roadkill_shp_thanksforassist"] = "roadkill_shp_thanksforassist";
    level._ID30909["generic"]["roadkill_fly_allthewaysir"] = "roadkill_fly_allthewaysir";
    level._ID30909["generic"]["roadkill_shp_alltheway"] = "roadkill_shp_alltheway";
    level._ID30909["generic"]["roadkill_fly_pressureoff"] = "roadkill_fly_pressureoff";
    level._ID30908["roadkill_shp_thanksforassist"] = "roadkill_shp_thanksforassist";
    level._ID30909["generic"]["roadkill_fly_allthewaysir"] = "roadkill_fly_allthewaysir";
    level._ID30908["roadkill_shp_alltheway"] = "roadkill_shp_alltheway";
    level._ID30909["generic"]["roadkill_fly_togoliath"] = "roadkill_fly_togoliath";
    level._ID30908["roadkill_ar3_sendtraffic"] = "roadkill_ar3_sendtraffic";
    level._ID30909["generic"]["roadkill_fly_schoolsecure"] = "roadkill_fly_schoolsecure";
    level._ID30908["roadkill_ar3_rallypoint"] = "roadkill_ar3_rallypoint";
    level._ID30909["generic"]["roadkill_fly_thanksfortip"] = "roadkill_fly_thanksfortip";
    level._ID30909["generic"]["roadkill_fly_watchstragglers"] = "roadkill_fly_watchstragglers";
    level._ID30909["generic"]["roadkill_fly_lastofem"] = "roadkill_fly_lastofem";
    level._ID30909["generic"]["roadkill_shp_shocktrauma"] = "roadkill_shp_shocktrauma";
    level._ID30909["generic"]["roadkill_shp_goodwork"] = "roadkill_shp_goodwork";
    level._ID30909["generic"]["roadkill_shp_specialop"] = "roadkill_shp_specialop";
    level._ID30909["generic"]["roadkill_ar1_sparemre"] = "roadkill_ar1_sparemre";
    level._ID30909["generic"]["roadkill_ar2_oscarmike2"] = "roadkill_ar2_oscarmike2";
    level._ID30909["generic"]["roadkill_ar3_stowyourgear"] = "roadkill_ar3_stowyourgear";
    level._ID30909["generic"]["roadkill_ar4_upandrunning"] = "roadkill_ar4_upandrunning";
    level._ID30909["generic"]["roadkill_shp_ontheline"] = "roadkill_shp_ontheline";
    level._ID30909["generic"]["roadkill_ar1_whichbuilding"] = "roadkill_ar1_whichbuilding";
    level._ID30909["generic"]["roadkill_ar2_tallone"] = "roadkill_ar2_tallone";
    level._ID30909["generic"]["roadkill_ar3_heydawg"] = "roadkill_ar3_heydawg";
    level._ID30909["generic"]["roadkill_ar4_whichone"] = "roadkill_ar4_whichone";
    level._ID30909["generic"]["roadkill_ar5_oneonleft"] = "roadkill_ar5_oneonleft";
    level._ID30909["generic"]["roadkill_ar1_howlong"] = "roadkill_ar1_howlong";
    level._ID30909["generic"]["roadkill_ar2_runsout"] = "roadkill_ar2_runsout";
    level._ID30909["generic"]["roadkill_ar1_10seconds"] = "roadkill_ar1_10seconds";
    level._ID30909["generic"]["roadkill_ar2_10seconds"] = "roadkill_ar2_10seconds";
    level._ID30909["generic"]["roadkill_ar3_10seconds"] = "roadkill_ar3_10seconds";
    level._ID30909["generic"]["roadkill_ar4_goinon"] = "roadkill_ar4_goinon";
    level._ID30909["generic"]["roadkill_ar5_majorfire"] = "roadkill_ar5_majorfire";
    level._ID30909["generic"]["roadkill_ar4_memoryleft"] = "roadkill_ar4_memoryleft";
    level._ID30909["generic"]["roadkill_ar5_shouldbegood"] = "roadkill_ar5_shouldbegood";
    level._ID30909["generic"]["roadkill_ar3_dangerclose"] = "roadkill_ar3_dangerclose";
    level._ID30909["generic"]["roadkill_cpd_sincewhen"] = "roadkill_cpd_sincewhen";
    level._ID30909["generic"]["roadkill_ar1_boom"] = "roadkill_ar1_boom";
    level._ID30909["generic"]["roadkill_ar2_yeah"] = "roadkill_ar2_yeah";
    level._ID30909["generic"]["roadkill_ar3_woo"] = "roadkill_ar3_woo";
    level._ID30909["generic"]["roadkill_ar4_yeah"] = "roadkill_ar4_yeah";
    level._ID30909["generic"]["roadkill_ar5_hotman"] = "roadkill_ar5_hotman";
    level._ID30909["generic"]["roadkill_ar1_4thofjuly"] = "roadkill_ar1_4thofjuly";
    level._ID30909["generic"]["roadkill_ar1_catcalls"] = "roadkill_ar1_catcalls";
    level._ID30909["generic"]["roadkill_ar2_catcalls"] = "roadkill_ar2_catcalls";
    level._ID30909["generic"]["roadkill_ar3_catcalls"] = "roadkill_ar3_catcalls";
    level._ID30909["generic"]["roadkill_ar1_battalionom"] = "roadkill_ar1_battalionom";
    level._ID30909["generic"]["roadkill_cpd_oscarmike"] = "roadkill_cpd_oscarmike";
    level._ID30909["generic"]["roadkill_ar3_onthemove"] = "roadkill_ar3_onthemove";
    level._ID30909["generic"]["roadkill_ar4_rogerthat"] = "roadkill_ar4_rogerthat";
    level._ID30909["generic"]["roadkill_fly_breakingaway"] = "roadkill_fly_breakingaway";
    level._ID30909["generic"]["roadkill_hqr_copyhunter2"] = "roadkill_hqr_copyhunter2";
    level._ID30909["generic"]["roadkill_fly_eyeoutforciv"] = "roadkill_fly_eyeoutforciv";
    level._ID30909["generic"]["roadkill_fly_scanrooftops"] = "roadkill_fly_scanrooftops";
    level._ID30909["generic"]["roadkill_cpd_seeanything"] = "roadkill_cpd_seeanything";
    level._ID30909["generic"]["roadkill_cpd_placeisdead"] = "roadkill_cpd_placeisdead";
    level._ID30909["generic"]["roadkill_ar3_huah"] = "roadkill_ar3_huah";
    level._ID30909["generic"]["roadkill_fly_crossstreeteliz"] = "roadkill_fly_crossstreeteliz";
    level._ID30909["generic"]["roadkill_hqr_caution"] = "roadkill_hqr_caution";
    level._ID30909["generic"]["roadkill_cpd_wildwest"] = "roadkill_cpd_wildwest";
    level._ID30909["generic"]["roadkill_ar3_rogerthat"] = "roadkill_ar3_rogerthat";
    level._ID30909["generic"]["roadkill_fly_watchalleys"] = "roadkill_fly_watchalleys";
    level._ID30909["generic"]["roadkill_ar3_covering"] = "roadkill_ar3_covering";
    level._ID30909["generic"]["roadkill_ar1_probablemilitia"] = "roadkill_ar1_probablemilitia";
    level._ID30909["generic"]["roadkill_fly_aretheyarmed"] = "roadkill_fly_aretheyarmed";
    level._ID30909["generic"]["roadkill_ar1_watchingus"] = "roadkill_ar1_watchingus";
    level._ID30909["generic"]["roadkill_cpd_scoutingus"] = "roadkill_cpd_scoutingus";
    level._ID30909["generic"]["roadkill_fly_doesntmean"] = "roadkill_fly_doesntmean";
    level._ID30909["generic"]["roadkill_fly_nothingthere"] = "roadkill_fly_nothingthere";
    level._ID30909["generic"]["roadkill_fly_ceasefire"] = "roadkill_fly_ceasefire";
    level._ID30909["generic"]["roadkill_ar2_seeem"] = "roadkill_ar2_seeem";
    level._ID30909["generic"]["roadkill_cpd_dontseejack"] = "roadkill_cpd_dontseejack";
    level._ID30909["generic"]["roadkill_fly_prepeng"] = "roadkill_fly_prepeng";
    level._ID30909["generic"]["roadkill_cpd_goinin"] = "roadkill_cpd_goinin";
    level._ID30909["generic"]["roadkill_ar1_spinemup"] = "roadkill_ar1_spinemup";
    level._ID30909["generic"]["roadkill_ar3_12and6"] = "roadkill_ar3_12and6";
    level._ID30909["generic"]["roadkill_ar4_tonacontacts"] = "roadkill_ar4_tonacontacts";
    level._ID30909["generic"]["roadkill_cpd_watclatmnt"] = "roadkill_cpd_watclatmnt";
    level._ID30909["generic"]["roadkill_ar5_longrange"] = "roadkill_ar5_longrange";
    level._ID30909["generic"]["roadkill_ar2_goinforward"] = "roadkill_ar2_goinforward";
    level._ID30909["generic"]["roadkill_ar1_rightthere"] = "roadkill_ar1_rightthere";
    level._ID30909["generic"]["roadkill_cpd_shutitoff"] = "roadkill_cpd_shutitoff";
    level._ID30909["generic"]["roadkill_cpd_lightemup"] = "roadkill_cpd_lightemup";
    level._ID30909["generic"]["roadkill_cpd_backup"] = "roadkill_cpd_backup";
    level._ID30909["generic"]["roadkill_cpd_outtahere"] = "roadkill_cpd_outtahere";
    level._ID30909["generic"]["roadkill_bmr_9_326"] = "roadkill_bmr_9_326";
    level._ID30909["generic"]["roadkill_bmr_12_115"] = "roadkill_bmr_12_115";
    level._ID30909["generic"]["roadkill_bmr_3_357"] = "roadkill_bmr_3_357";
    level._ID30909["generic"]["roadkill_bmr_6_381"] = "roadkill_bmr_6_381";
    level._ID30909["generic"]["roadkill_bmr_7_110"] = "roadkill_bmr_7_110";
    level._ID30909["generic"]["roadkill_bmr_11_108"] = "roadkill_bmr_11_108";
    level._ID30909["generic"]["roadkill_bmr_6_423"] = "roadkill_bmr_6_423";
    level._ID30909["generic"]["roadkill_bmr_12_86"] = "roadkill_bmr_12_86";
    level._ID30909["generic"]["roadkill_bmr_9_285"] = "roadkill_bmr_9_285";
    level._ID30909["generic"]["roadkill_bmr_6_560"] = "roadkill_bmr_6_560";
    level._ID30909["generic"]["roadkill_bmr_7_252"] = "roadkill_bmr_7_252";
    level._ID30909["generic"]["roadkill_bmr_9_381"] = "roadkill_bmr_9_381";
    level._ID30909["generic"]["roadkill_bmr_9_332"] = "roadkill_bmr_9_332";
    level._ID30909["generic"]["roadkill_bmr_3_277"] = "roadkill_bmr_3_277";
    level._ID30909["generic"]["roadkill_cpd_clear"] = "roadkill_cpd_clear";
    level._ID30909["generic"]["roadkill_cpd_2cominout"] = "roadkill_cpd_2cominout";
    level._ID30909["generic"]["roadkill_cpd_3cominout"] = "roadkill_cpd_3cominout";
    level._ID30909["generic"]["roadkill_cpd_farside"] = "roadkill_cpd_farside";
    level._ID30909["generic"]["roadkill_cpd_bridgelayer"] = "roadkill_cpd_bridgelayer";
    level._ID30909["generic"]["roadkill_cpd_looklook"] = "roadkill_cpd_looklook";
    level._ID30909["generic"]["roadkill_cpd_hahaitsdown"] = "roadkill_cpd_hahaitsdown";
    level._ID30909["generic"]["roadkill_AB2_heretheycome"] = "roadkill_AB2_heretheycome";
    level._ID30909["generic"]["roadkill_AB2_rpgslatvees"] = "roadkill_AB2_rpgslatvees";
    level._ID30909["generic"]["roadkill_AB2_hassanmove"] = "roadkill_AB2_hassanmove";
    level._ID30909["generic"]["roadkill_AB2_diedogs"] = "roadkill_AB2_diedogs";
    level._ID30909["generic"]["roadkill_AB2_movex3"] = "roadkill_AB2_movex3";
    level._ID30909["generic"]["roadkill_fly_getflashbang"] = "roadkill_fly_getflashbang";
    level._ID30909["generic"]["roadkill_intro_ranger_stairs_vo"] = "roadkill_intro_ranger_stairs_vo";
}
#using_animtree("script_model");

_ID47863()
{
    level._ID30900["exploder_script_model"] = #animtree;
    level._ID43404 = [];
    level._ID43404[0] = "exploder_script_model";
    level._ID30895["exploder_script_model"]["h2_rk_build_a0_anim"] = %h2_rk_build_a0_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_a1_anim"] = %h2_rk_build_a1_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_a2_anim"] = %h2_rk_build_a2_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_a_glass0_anim"] = %h2_rk_build_a_glass0_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_a_glass1_anim"] = %h2_rk_build_a_glass1_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_a_glass2_anim"] = %h2_rk_build_a_glass2_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_b0_anim"] = %h2_rk_build_b0_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_b1_anim"] = %h2_rk_build_b1_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_b2_anim"] = %h2_rk_build_b2_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_b_glass0_anim"] = %h2_rk_build_b_glass0_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_b_glass1_anim"] = %h2_rk_build_b_glass1_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_b_glass2_anim"] = %h2_rk_build_b_glass2_anim;
    level._ID30895["exploder_script_model"]["h2_rk_build_b_glass3_anim"] = %h2_rk_build_b_glass3_anim;
    level._ID30895["exploder_script_model"]["h2_rk_split_build0_anim"] = %h2_rk_split_build0_anim;
    level._ID30895["exploder_script_model"]["h2_rk_split_build1_anim"] = %h2_rk_split_build1_anim;
    level._ID30895["exploder_script_model"]["h2_rk_split_build2_anim"] = %h2_rk_split_build2_anim;
    level._ID30895["exploder_script_model"]["h2_rk_split_build3_anim"] = %h2_rk_split_build3_anim;
    level._ID30895["exploder_script_model"]["h2_rk_split_build4_anim"] = %h2_rk_split_build4_anim;
    level._ID30895["exploder_script_model"]["h2_rk_split_build5_anim"] = %h2_rk_split_build5_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_tree_a0_anim"] = %h2_rkl_tree_a0_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_tree_a1_anim"] = %h2_rkl_tree_a1_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_tree_b0_anim"] = %h2_rkl_tree_b0_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_tree_b1_anim"] = %h2_rkl_tree_b1_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_tree_c_anim"] = %h2_rkl_tree_c_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_tree_d_anim"] = %h2_rkl_tree_d_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_tree_e0_anim"] = %h2_rkl_tree_e0_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_tree_e1_anim"] = %h2_rkl_tree_e1_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_anim_highway_sign_animated_anim"] = %h2_rkl_highway_sign_explosion_react;
    level._ID30895["exploder_script_model"]["me_satellitedish_animated_anim"] = %h2_rkl_satellitedish_explosion_react;
    level._ID30895["exploder_script_model"]["h2_rkl_anim_fence_upper_right_anim"] = %h2_rkl_anim_fence_upper_right_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_anim_fence_upper_left_anim"] = %h2_rkl_anim_fence_upper_left_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_anim_fence_lower_right_anim"] = %h2_rkl_anim_fence_lower_right_anim;
    level._ID30895["exploder_script_model"]["h2_rkl_anim_fence_lower_left_anim"] = %h2_rkl_anim_fence_lower_left_anim;
}
#using_animtree("generic_human");

_ID50120()
{
    var_0 = _ID49744::_ID32550();

    if ( getdvarint( "use_old_getinlaatpv_anims" ) )
        return var_0;

    var_0[1]._ID16341 = %h2_roadkill_laatpv_dunn_getin;
    var_0[0]._ID19302 = %h2_roadkill_laatpv_driver_idle;
    var_0[1]._ID19302 = %h2_roadkill_laatpv_dunn_idle;
    var_0[2]._ID19302 = %h2_roadkill_laatpv_soldier_idle;
    var_0[0]._ID45209 = "react_player_getin_driver";
    var_0[1]._ID45209 = "react_player_getin_dunn";
    var_0[2]._ID45209 = "react_player_getin_soldier";
    level._ID30895["generic"][var_0[0]._ID45209] = %h2_roadkill_laatpv_driver_playerinlatvee;
    level._ID30895["generic"][var_0[1]._ID45209] = %h2_roadkill_laatpv_dunn_playerinlatvee;
    level._ID30895["generic"][var_0[2]._ID45209] = %h2_roadkill_laatpv_soldier_playerinlatvee;
    level._ID30895["dunn"]["waiting_to_getin"][0] = %h2_roadkill_laatpv_dunn_waitingidle;
    return var_0;
}
#using_animtree("vehicles");

_ID49234( var_0 )
{
    var_0 = _ID49744::_ID32509( var_0 );

    if ( getdvarint( "use_old_getinlaatpv_anims" ) )
        return var_0;

    var_0[1]._ID40147 = %h2_roadkill_laatpv_dunn_getin_door;
    return var_0;
}

roadkill_init_animsounds()
{
    waitframe;
    _ID42259::_ID2075( "player_worldbody", "h2_intro", "scn_mission_truck_intro_player" );
}
#using_animtree("mg42");

turret_animations()
{
    level._ID30895["50cal"]["technical_pushed"] = %h2_technical_turret_roadkill_bump_50cal;
}

stairs_ranger_moveup_vo( var_0 )
{
    if ( !_ID42237::_ID14385( "player_climbs_stairs" ) )
        var_0 _ID42407::_ID15504( "roadkill_intro_ranger_stairs_vo" );
}
