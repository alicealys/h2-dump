// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID3197();
    _ID27230();
    _ID40078();
    _ID10742();
    _ID31294();
    _ID42237::_ID14400( "roof_door_kicked" );
    _ID42259::_ID2058( "generic", "kick", ::_ID52985, "shotgunhinges_breach_left_stack_breach_01" );
    _ID42259::_ID2058( "generic", "fire", ::_ID48208, "shotgunhinges_breach_left_stack_breach_01" );
    _ID46978();
    animated_fence_setup();
}
#using_animtree("generic_human");

_ID3197()
{
    level._ID30895["generic"]["airport_civ_dying_groupB_pull"] = %airport_civ_dying_groupb_pull;
    level._ID30895["generic"]["airport_civ_dying_groupB_pull_death"] = %airport_civ_dying_groupb_pull_death;
    level._ID30895["generic"]["airport_civ_dying_groupB_wounded"] = %airport_civ_dying_groupb_wounded;
    level._ID30895["generic"]["airport_civ_dying_groupB_wounded_death"] = %airport_civ_dying_groupb_wounded_death;
    level._ID30895["generic"]["favela_run_and_wave"] = %favela_run_and_wave;
    level._ID30895["generic"]["civilian_run_2_crawldeath"] = %civilian_run_2_crawldeath;
    level._ID30895["generic"]["death_explosion_run_F_v1"] = %death_explosion_run_f_v1;
    level._ID30895["generic"]["roadkill_cover_spotter"][0] = %roadkill_cover_spotter;
    level._ID30895["generic"]["roadkill_cover_radio_soldier3"][0] = %roadkill_cover_radio_soldier3;
    level._ID30895["generic"]["roadkill_cover_radio_soldier2"][0] = %roadkill_cover_radio_soldier2;
    level._ID30895["generic"]["ch46_load_1"] = %ch46_load_1;
    level._ID30895["generic"]["ch46_load_2"] = %ch46_load_2;
    level._ID30895["generic"]["ch46_load_3"] = %ch46_load_3;
    level._ID30895["generic"]["ch46_load_4"] = %ch46_load_4;
    level._ID30895["generic"]["ch46_unload_idle"][0] = %exposed_crouch_idle_alert_v1;
    level._ID30895["generic"]["leader_blackhawk_getin"] = %blackout_bh_evac_2;
    level._ID30895["generic"]["leader_blackhawk_idle"][0] = %blackout_bh_evac_2_idle;
    level._ID30895["generic"]["redshirt_blackhawk_getin"] = %blackout_bh_evac_2;
    level._ID30895["generic"]["redshirt_blackhawk_idle"][0] = %blackout_bh_evac_2_idle;
    level._ID30895["generic"]["dcburning_elevator_corpse_trans_A_2_B"] = %dcburning_elevator_corpse_trans_a_2_b;
    level._ID30895["generic"]["dcburning_elevator_corpse_idle_A"][0] = %dcburning_elevator_corpse_idle_a;
    level._ID30895["generic"]["dcburning_elevator_corpse_idle_B"][0] = %dcburning_elevator_corpse_idle_b;
    level._ID30895["generic"]["dcburning_elevator_corpse_bump_A"] = %dcburning_elevator_corpse_bump_a;
    level._ID30895["generic"]["dcburning_elevator_corpse_bump_B"] = %dcburning_elevator_corpse_bump_b;
    level._ID30895["operator"]["pulldown"] = %h2_gulag_slamraam_tarp_pull_guy2;
    level._ID30895["operator"]["idle"][0] = %h2_gulag_slamraam_tarp_idle_guy2;
    level._ID30895["puller"]["pulldown"] = %h2_gulag_slamraam_tarp_pull_guy1;
    level._ID30895["generic"]["littlebird_rider_death"] = %fastrope_fall;
    level._ID30895["generic"]["little_bird_death_guy1"] = %little_bird_death_guy1;
    level._ID30895["generic"]["little_bird_death_guy2"] = %little_bird_death_guy2;
    level._ID30895["generic"]["little_bird_death_guy3"] = %little_bird_death_guy3;
    level._ID30895["generic"]["deathanim_mortar_00"] = %exposed_death_falltoknees;
    level._ID30895["generic"]["deathanim_mortar_01"] = %exposed_death_blowback;
    level._ID30895["generic"]["AT4_idle"][0] = %corner_standr_alert_idle;
    level._ID30895["generic"]["launchfacility_a_at4_fire"] = %launchfacility_a_at4_fire;
    level._ID30895["generic"]["patrol_walk"] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["patrol_walk_twitch"] = %patrol_bored_patrolwalk_twitch;
    level._ID30895["generic"]["patrol_stop"] = %patrol_bored_walk_2_bored;
    level._ID30895["generic"]["patrol_start"] = %patrol_bored_2_walk;
    level._ID30895["generic"]["patrol_turn180"] = %patrol_bored_2_walk_180turn;
    level._ID30895["generic"]["javelin_arrival"] = %covercrouch_run_in_m;
    level._ID30895["generic"]["javelin_idle_start"] = %javelin_idle_a;
    level._ID30895["generic"]["javelin_idle"][0] = %javelin_idle_a;
    level._ID30895["generic"]["javelin_fire"] = %javelin_fire_a;
    level._ID30895["generic"]["javelin_fire_short"] = %javelin_fire_short_a;
    level._ID30895["generic"]["javelin_react"] = %javelin_react_a;
    _ID42259::_ID2058( "generic", "reload_begin", ::_ID50967, "javelin_fire" );
    _ID42259::_ID2058( "generic", "reload_end", ::_ID46428, "javelin_fire" );
    level._ID30895["generic"]["javelin_death_barrett"] = %exposed_death_blowback;
    level._ID30895["generic"]["javelin_idle_start2"] = %javelin_idle_b;
    level._ID30895["generic"]["javelin_idle2"][0] = %javelin_idle_b;
    level._ID30895["generic"]["javelin_fire2"] = %javelin_fire_b;
    level._ID30895["generic"]["javelin_react2"] = %javelin_react_b;
    _ID42259::_ID2058( "generic", "reload_begin", ::_ID50967, "javelin_fire2" );
    _ID42259::_ID2058( "generic", "reload_end", ::_ID46428, "javelin_fire2" );
    level._ID30895["generic"]["javelin_death2"] = %javelin_death_1;
    level._ID30895["generic"]["javelin_death_reloading2"] = %javelin_death_2;
    level._ID30895["generic"]["javelin_death"] = %javelin_death_3;
    level._ID30895["generic"]["javelin_death_reloading"] = %javelin_death_5;
    level._ID30895["generic"]["stinger_idle_start"] = %stinger_idle;
    level._ID30895["generic"]["stinger_idle"][0] = %stinger_idle;
    level._ID30895["generic"]["stinger_fire"] = %stinger_fire;
    level._ID30895["generic"]["stinger_react_stand"] = %stinger_react_stand;
    level._ID30895["generic"]["stinger_react_crouch"] = %stinger_react_crouch;
    level._ID30895["generic"]["enemy_spotter_crouched_idle"][0] = %hunted_spotter_idle;
    level._ID30895["generic"]["enemy_spotter_crouched_idle"][1] = %hunted_spotter_twitch;
    level._ID30895["generic"]["enemy_spotter_crouched_react"] = %crouch2stand;
    level._ID30895["generic"]["enemy_spotter_crouched_death"] = %exposed_crouch_death_fetal;
    level._ID30895["generic"]["enemy_spotter_prone_idle"][0] = %sniper_escape_spotter_idle;
    level._ID30895["generic"]["enemy_spotter_prone_idle"][1] = %sniper_escape_spotter_wave;
    level._ID30895["generic"]["enemy_spotter_prone_react"] = %prone_2_stand;
    level._ID30895["generic"]["enemy_spotter_prone_death"] = %exposed_crouch_death_fetal;
    level._ID30895["generic"]["h2_dc_burning_crowsnest_foley_enter"] = %h2_dc_burning_crowsnest_foley;
    _ID42259::_ID2062( "generic", "dialog", "h2_dc_burning_crowsnest_foley_enter", "dcburn_mcy_seccrowsnest" );
    _ID42259::_ID2062( "generic", "dialog", "h2_dc_burning_crowsnest_foley_enter", "dcburn_hqr_stillvuln" );
    _ID42259::_ID2062( "generic", "dialog", "h2_dc_burning_crowsnest_foley_enter", "dcburn_mcy_stockpile" );
    level._ID30895["generic"]["h2_dc_burning_crowsnest_foley_enter_instr"] = %h2_dc_burning_crowsnest_foley_take_sniper;
    _ID42259::_ID2062( "generic", "dialog", "h2_dc_burning_crowsnest_foley_enter_instr", "dcburn_mcy_sniperrifle" );
    level._ID30895["generic"]["node_elevator_cover_right"][0] = %corner_standr_alert_idle;
    level._ID30895["generic"]["node_elevator_cover_right"][1] = %corner_standr_alert_twitch01;
    level._ID30895["generic"]["node_elevator_cover_right"][2] = %corner_standr_alert_twitch02;
    level._ID30895["generic"]["node_elevator_cover_right"][3] = %corner_standr_alert_twitch04;
    level._ID30895["generic"]["node_elevator_cover_right"][4] = %corner_standr_alert_twitch05;
    level._ID30895["generic"]["node_elevator_cover_right"][5] = %corner_standr_alert_twitch06;
    level._ID30895["generic"]["traverse_wallhop"] = %traverse_wallhop;
    level._ID30895["generic"]["oilrig_rappel_2_crouch"] = %oilrig_rappel_2_crouch;
    _ID42259::_ID2058( "generic", "over_solid", maps\dcburning::_ID50560, "oilrig_rappel_2_crouch" );
    level._ID30895["generic"]["h2_dc_burning_bunker_sit_idle"][0] = %h2_dc_burning_bunker_sit_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_B"] = %h2_dcburning_medicalbay_soldier_b_start;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_B_idle"][0] = %h2_dcburning_medicalbay_soldier_b_idle;
    level._ID30895["generic"]["h2_bunker_toss_guy1_idle_go"] = %h2_bunker_toss_guy1;
    level._ID30895["generic"]["h2_bunker_toss_guy1_idle"][0] = %h2_bunker_toss_guy1_idle;
    level._ID30895["generic"]["h2_bunker_toss_guy2"] = %h2_bunker_toss_guy2;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v1_idle_start"] = %dc_burning_artillery_reaction_v1_idle;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v1_idle"][0] = %dc_burning_artillery_reaction_v1_idle;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v1_idle_react"] = %dc_burning_artillery_reaction_v1_react_a;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v1_idle_react2"] = %dc_burning_artillery_reaction_v1_react_b;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v2_idle_start"] = %dc_burning_artillery_reaction_v2_idle;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v2_idle"][0] = %dc_burning_artillery_reaction_v2_idle;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v2_idle_react"] = %dc_burning_artillery_reaction_v2_react_a;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v2_idle_react2"] = %dc_burning_artillery_reaction_v2_react_b;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v3_idle_start"] = %dc_burning_artillery_reaction_v3_idle;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v3_idle"][0] = %dc_burning_artillery_reaction_v3_idle;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v3_idle_react"] = %dc_burning_artillery_reaction_v3_react_a;
    level._ID30895["generic"]["DC_Burning_artillery_reaction_v3_idle_react2"] = %dc_burning_artillery_reaction_v3_react_b;
    level._ID30895["generic"]["unarmed_panickedrun_loop_V2"] = %unarmed_panickedrun_loop_v2;
    level._ID30895["generic"]["h2_dc_burning_CPR_medic"] = %h2_dc_burning_cpr_medic;
    _ID42259::_ID2057( "generic", "attach syringe", "adrenaline_syringe_animated", "TAG_INHAND", "h2_dc_burning_CPR_medic" );
    _ID42259::_ID2059( "generic", "dettach syringe", "adrenaline_syringe_animated", "TAG_INHAND", "h2_dc_burning_CPR_medic" );
    _ID42259::_ID2058( "generic", "attach_clipboard", maps\dcburning::attach_clipboard, "h2_dc_burning_CPR_medic", "TAG_WEAPON_LEFT" );
    _ID42259::_ID2058( "generic", "attach_clipboard", maps\dcburning::attach_pen, "h2_dc_burning_CPR_medic", "TAG_WEAPON_RIGHT" );
    _ID42259::_ID2058( "generic", "dettach syringe", maps\dcburning::detach_syringe, "h2_dc_burning_CPR_medic", "TAG_INHAND" );
    level._ID30895["generic"]["h2_dc_burning_CPR_wounded"] = %h2_dc_burning_cpr_wounded;
    level._ID30895["generic"]["h2_dc_burning_CPR_medic_idle"][0] = %h2_dc_burning_cpr_medic_endidle;
    level._ID30895["generic"]["h2_dc_burning_CPR_wounded_idle"][0] = %h2_dc_burning_cpr_wounded_endidle;
    level._ID30895["generic"]["h2_dc_burning_stop_bleeding_medic"] = %h2_dc_burning_stop_bleeding_medic;
    _ID42259::_ID2057( "generic", "attach prop", "clotting_powder_animated", "TAG_INHAND", "h2_dc_burning_stop_bleeding_medic" );
    _ID42259::_ID2059( "generic", "dettach prop", "clotting_powder_animated", "TAG_INHAND", "h2_dc_burning_stop_bleeding_medic" );
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier1_C"] = %h2_dcburning_medicalbay_soldier1_c_start;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier1_C_idle"][0] = %h2_dcburning_medicalbay_soldier1_c_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier2_C"] = %h2_dcburning_medicalbay_soldier2_c_start;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier2_C_idle"][0] = %h2_dcburning_medicalbay_soldier2_c_idle;
    level._ID30895["generic"]["cargoship_sleeping_guy_idle_2_start"] = %cargoship_sleeping_guy_idle_2;
    level._ID30895["generic"]["cargoship_sleeping_guy_idle_1_start"] = %cargoship_sleeping_guy_idle_1;
    level._ID30895["generic"]["cargoship_sleeping_guy_idle_2"][0] = %cargoship_sleeping_guy_idle_2;
    level._ID30895["generic"]["cargoship_sleeping_guy_idle_1"][0] = %cargoship_sleeping_guy_idle_1;
    level._ID30895["generic"]["afgan_caves_sleeping_guard_idle_start"] = %afgan_caves_sleeping_guard_idle;
    level._ID30895["generic"]["afgan_caves_sleeping_guard_idle"][0] = %afgan_caves_sleeping_guard_idle;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger01"] = %h2_dcburning_controlroom_ranger01_start;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger01_idle"][0] = %h2_dcburning_controlroom_ranger01_idle;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger02"] = %h2_dcburning_controlroom_ranger02_start;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger02_idle"][0] = %h2_dcburning_controlroom_ranger02_idle;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger03"] = %h2_dcburning_controlroom_ranger03_start;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger03_idle"][0] = %h2_dcburning_controlroom_ranger03_idle;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger04"] = %h2_dcburning_controlroom_ranger04_start;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger04_idle"][0] = %h2_dcburning_controlroom_ranger04_idle;
    _ID42259::_ID2058( "generic", "dcburning_explosionbunker", ::dcburning_mortar_notify, "h2_dcburning_controlroom_ranger04_idle" );
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger05"] = %h2_dcburning_controlroom_ranger05_start;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger05_idle"][0] = %h2_dcburning_controlroom_ranger05_idle;
    _ID42259::_ID2058( "generic", "dcburning_explosionbunker", ::dcburning_mortar_notify, "h2_dcburning_controlroom_ranger05_idle" );
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger06"] = %h2_dcburning_controlroom_ranger06_start;
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger06_idle"][0] = %h2_dcburning_controlroom_ranger06_idle;
    _ID42259::_ID2058( "generic", "dcburning_explosionbunker", ::dcburning_mortar_notify, "h2_dcburning_controlroom_ranger06_idle" );
    level._ID30895["generic"]["h2_dcburning_controlroom_ranger08_idle"][0] = %h2_dcburning_controlroom_ranger08_idle;
    _ID42259::_ID2058( "generic", "dcburning_explosionbunker", ::dcburning_mortar_notify, "h2_dcburning_controlroom_ranger08_idle" );
    level._ID30895["generic"]["wounded_carry_fastwalk_carrier"] = %wounded_carry_fastwalk_carrier;
    level._ID30895["generic"]["wounded_carry_fastwalk_wounded"] = %wounded_carry_fastwalk_wounded;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier1_E"] = %h2_dcburning_medicalbay_soldier1_e_start;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier1_E_idle"][0] = %h2_dcburning_medicalbay_soldier1_e_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier2_E"] = %h2_dcburning_medicalbay_soldier2_e_start;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier2_E_idle"][0] = %h2_dcburning_medicalbay_soldier2_e_idle;
    level._ID30895["generic"]["h2_bunker_Foley_radio_dialogue"] = %h2_bunker_foley_radio_dialogue;
    level._ID30895["generic"]["h2_dc_burning_carrying_Injured_soldier"] = %h2_dc_burning_carrying_injured_soldier;
    level._ID30895["generic"]["h2_dc_burning_carrying_Injured_soldier_idle"][0] = %h2_dc_burning_carrying_injured_soldier_endidle;
    level._ID30895["generic"]["h2_dc_burning_carrying_Injured_wounded"] = %h2_dc_burning_carrying_injured_wounded;
    level._ID30895["generic"]["h2_dc_burning_carrying_Injured_wounded_idle"][0] = %h2_dc_burning_carrying_injured_wounded_endidle;
    level._ID30895["generic"]["h2_dc_burning_WoundedCheck01"][0] = %h2_dc_burning_woundedcheck01;
    level._ID30895["generic"]["h2_dc_burning_WoundedCheck02"][0] = %h2_dc_burning_woundedcheck02;
    level._ID30895["generic"]["h2_dc_burning_WoundedCheck03"][0] = %h2_dc_burning_woundedcheck03;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_A"][0] = %h2_dcburning_medicalbay_soldier_a;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_D"][0] = %h2_dcburning_medicalbay_soldier_d;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_G_idle"][0] = %h2_dcburning_medicalbay_soldier_g_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier1_H_idle"][0] = %h2_dcburning_medicalbay_soldier1_h_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier2_H_idle"][0] = %h2_dcburning_medicalbay_soldier2_h_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_I_idle"][0] = %h2_dcburning_medicalbay_soldier_i_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_J_idle"][0] = %h2_dcburning_medicalbay_soldier_j_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_K_idle"][0] = %h2_dcburning_medicalbay_soldier_k_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_L_idle"][0] = %h2_dcburning_medicalbay_soldier_l_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_M_idle"][0] = %h2_dcburning_medicalbay_soldier_m_idle;
    level._ID30895["generic"]["h2_dcburning_medicalbay_soldier_N_idle"][0] = %h2_dcburning_medicalbay_soldier_n_idle;
}

_ID10742()
{
    level._ID30909["dcburn_gm1_keepstill"] = "dcburn_gm1_keepstill";
    level._ID30909["dcburn_gm1_wherescanteen"] = "dcburn_gm1_wherescanteen";
    level._ID30909["dcburn_gm2_righthere"] = "dcburn_gm2_righthere";
    level._ID30909["dcburn_gm3_allyoursdoc"] = "dcburn_gm3_allyoursdoc";
    level._ID30909["dcburn_gm4_2stretchers"] = "dcburn_gm4_2stretchers";
    level._ID30909["dcburn_gm5_gotwounded"] = "dcburn_gm5_gotwounded";
    level._ID30909["dcburn_gm6_stablefornow"] = "dcburn_gm6_stablefornow";
    level._ID30908["dcburn_hqr_ensureweapons"] = "dcburn_hqr_ensureweapons";
    level._ID30909["generic"]["dcburn_gr1_onyourfeet"] = "dcburn_gr1_onyourfeet";
    _ID42259::_ID2062( "generic", "dialog", "h2_bunker_toss_guy2", "dcburn_gr1_onyourfeet" );
    level._ID30909["generic"]["dcburn_mcy_rogerout"] = "dcburn_mcy_twooneout";
    _ID42259::_ID2062( "generic", "dialog", "h2_bunker_Foley_radio_dialogue", "dcburn_mcy_twooneout" );
    level._ID30909["generic"]["dcburn_mcy_evachithard"] = "dcburn_mcy_buytime2";
    _ID42259::_ID2062( "generic", "dialog", "h2_bunker_Foley_radio_dialogue", "dcburn_mcy_buytime2" );
    level._ID30909["dcburn_hoh_1"] = "dcburn_hoh_1";
    level._ID30909["dcburn_hoh_2"] = "dcburn_hoh_2";
    _ID42259::_ID2062( "generic", "dialog", "h2_bunker_toss_guy1", "dcburn_hoh_1" );
    _ID42259::_ID2062( "generic", "dialog", "h2_bunker_toss_guy2", "dcburn_hoh_2" );
    level._ID30909["generic"]["dcburn_cpd_stayintrench"] = "dcburn_cpd_stayintrench";
    level._ID30909["generic"]["dcburn_cpd_staylow"] = "dcburn_cpd_staylow";
    level._ID30909["generic"]["dcburn_cpd_backintrench"] = "dcburn_cpd_backintrench";
    level._ID30909["generic"]["dcburn_cpd_wheregoing"] = "dcburn_cpd_wheregoing";
    level._ID30909["dcburn_javelins_incoming_00"] = "dcburn_gm2_incoming";
    level._ID30909["dcburn_javelins_incoming_01"] = "dcburn_gm1_takecover";
    level._ID30908["dcburn_hqr_commerceconfirms"] = "dcburn_hqr_commerceconfirms";
    level._ID30908["dcburn_hqr_uncoverengage"] = "dcburn_hqr_uncoverengage";
    level._ID30908["dcburn_cpd_opticsonus"] = "dcburn_cpd_opticsonus";
    level._ID30909["generic"]["dcburn_mcy_reqairstrike"] = "dcburn_mcy_reqairstrike";
    level._ID30908["dcburn_hqr_alongpotomac"] = "dcburn_hqr_alongpotomac";
    level._ID30909["generic"]["dcburn_mcy_buytime"] = "dcburn_mcy_buytime";
    level._ID30908["dcburn_cpd_wrongway"] = "dcburn_cpd_wrongway";
    level._ID30909["generic"]["dcburn_mcy_haulingpastus"] = "dcburn_mcy_haulingpastus";
    level._ID30908["dcburn_hqr_latvee"] = "dcburn_hqr_latvee";
    level._ID30908["dcburn_mcy_copythat"] = "dcburn_mcy_copythat";
    level._ID30908["dcburn_hqr_linkup"] = "dcburn_hqr_linkup";
    level._ID30908["dcburn_mcy_solidcopyonall"] = "dcburn_mcy_solidcopyonall";
    level._ID30909["generic"]["dcburn_mcy_firelow"] = "dcburn_mcy_firelow";
    level._ID30908["dcburn_cpd_footmobiles"] = "dcburn_cpd_footmobiles";
    level._ID30909["generic"]["dcburn_mcy_latveesupp"] = "dcburn_mcy_latveesupp";
    level._ID30909["generic"]["dcburn_mcy_ready"] = "dcburn_mcy_ready";
    level._ID30909["generic"]["dcburn_mcy_gomoveup"] = "dcburn_mcy_gomoveup";
    level._ID30908["dcburn_mcy_lineoffire"] = "dcburn_mcy_lineoffire";
    level._ID30908["dcburn_mcy_movemove"] = "dcburn_mcy_movemove";
    level._ID30908["dcburn_mcy_50calsupp"] = "dcburn_mcy_50calsupp";
    level._ID30908["dcburn_mcy_sittingducks"] = "dcburn_mcy_sittingducks";
    level._ID30908["dcburn_mcy_blownoff"] = "dcburn_mcy_blownoff";
    level._ID30908["dcburn_mcy_moveup"] = "dcburn_mcy_moveup";
    level._ID30908["dcburn_mcy_intotargbuilding"] = "dcburn_mcy_intotargbuilding";
    level._ID30909["generic"]["dcburn_mcy_grenadelaunch"] = "dcburn_mcy_grenadelaunch";
    level._ID30909["generic"]["dcburn_mcy_lobby_move_nag_00"] = "dcburn_mcy_moveupgogo";
    level._ID30909["generic"]["dcburn_mcy_lobby_move_nag_01"] = "dcburn_mcy_movein";
    level._ID30909["generic"]["dcburn_mcy_lobby_move_nag_02"] = "dcburn_mcy_pushforward";
    level._ID30909["generic"]["dcburn_mcy_lobby_move_nag_03"] = "dcburn_mcy_moveforward";
    level._ID30909["generic"]["dcburn_mcy_lobby_move_nag_04"] = "dcburn_mcy_moveup2";
    level._ID30908["dcburn_mcy_upperfloors"] = "dcburn_mcy_upperfloors";
    level._ID30908["dcburn_hqr_copiesall"] = "dcburn_hqr_copiesall";
    level._ID30908["dcburn_mcy_alldeadcourtyard"] = "dcburn_mcy_fireteamsupp";
    level._ID30908["dcburn_hqr_solidcopy"] = "dcburn_hqr_solidcopy";
    level._ID30908["dcburn_mcy_tomezzanine"] = "dcburn_mcy_mezzanine";
    level._ID30908["dcburn_hqr_goodhunt"] = "dcburn_hqr_goodhunting";
    level._ID30908["dcburn_mcy_alldeadmezzanine"] = "dcburn_mcy_hostsupp";
    level._ID30908["dcburn_hqr_rogerthat"] = "dcburn_hqr_rogerthat";
    level._ID30908["dcburn_ar1_lincolnmemorial"] = "dcburn_ar1_lincolnmemorial";
    level._ID30909["generic"]["dcburn_cpd_capitolbuild"] = "dcburn_cpd_capitolbuild";
    level._ID30908["dcburn_mcy_droponthem"] = "dcburn_mcy_droponthem";
    level._ID30908["dcburn_mcy_hitemfast"] = "dcburn_mcy_hitemfast";
    level._ID30908["dcburn_mcy_whatseeing_r"] = "dcburn_mcy_whatseeing_r";
    level._ID30908["dcburn_gm5_lzheavyfire"] = "dcburn_gm5_lzheavyfire";
    level._ID30908["dcburn_mcy_solidcopy_r"] = "dcburn_mcy_solidcopy_r";
    level._ID30908["dcburn_hqr_crownag"] = "dcburn_hqr_swcorn5th";
    level._ID30908["dcburn_mcy_omwtofifth"] = "dcburn_mcy_omto5th";
    level._ID30908["dcburn_mcy_alldeadfourth"] = "dcburn_mcy_fireteamelim";
    level._ID30908["dcburn_hqr_copythat"] = "dcburn_hqr_copythat";
    level._ID30908["dcburn_mcy_onfifth"] = "dcburn_mcy_swcorner";
    level._ID30908["dcburn_hqr_copy21"] = "dcburn_hqr_copy21";
    level._ID30908["dcburn_cdn_movement"] = "dcburn_cpd_gotmvmnt";
    level._ID30908["dcburn_mcy_sby2engage"] = "dcburn_mcy_standbyeng";
    level._ID30908["dcburn_mcy_watchsectors"] = "dcburn_mcy_watchsectors";
    level._ID30908["dcburn_mcy_checkcorners"] = "dcburn_mcy_checkcorners";
    level._ID30908["dcburn_mcy_visoncrow"] = "dcburn_mcy_viscrowsnest";
    level._ID30909["generic"]["dcburn_mcy_seccrowsnest"] = "dcburn_mcy_seccrowsnest";
    level._ID30908["dcburn_hqr_canyousupport"] = "dcburn_hqr_stillvuln";
    level._ID30909["generic"]["dcburn_mcy_stockpile"] = "dcburn_mcy_stockpile";
    level._ID30908["dcburn_evc_glassedenemieswest"] = "dcburn_evc_glassedenemieswest";
    level._ID30909["generic"]["dcburn_mcy_sniperrifle"] = "dcburn_mcy_sniperrifle";
    level._ID30909["generic"]["dcburn_mcy_scanfortargets"] = "dcburn_mcy_scanfortargets";
    level._ID30908["dcburn_evc_damage_00"] = "dcburn_evc_80percenteffective";
    level._ID30908["dcburn_evc_damage_01"] = "dcburn_evc_forceindetail";
    level._ID30908["dcburn_evc_damage_02"] = "dcburn_evc_canttakemuchmore";
    level._ID30908["dcburn_evc_damage_03"] = "dcburn_evc_50percenteffective";
    level._ID30908["dcburn_evc_damage_fail"] = "dcburn_evc_civviesouttahere";
    level._ID30909["generic"]["barret_nag_0"] = "dcburn_mcy_ww2mem";
    level._ID30909["generic"]["barret_nag_1"] = "dcburn_mcy_getonbarrett";
    level._ID30909["generic"]["barret_nag_2"] = "dcburn_mcy_getonrifle";
    level._ID30909["generic"]["barret_shoot_nag_0"] = "dcburn_mcy_targetenemy";
    level._ID30909["generic"]["barret_shoot_nag_1"] = "dcburn_mcy_targetinfantry";
    level._ID30909["generic"]["stay_in_nest_nag_0"] = "dcburn_mcy_beforeoverrun";
    level._ID30909["generic"]["stay_in_nest_nag_1"] = "dcburn_mcy_coverevacsite";
    level._ID30909["generic"]["stay_in_nest_nag_2"] = "dcburn_mcy_returntopost";
    level._ID30908["dcburn_hqr_stayfrosty"] = "dcburn_hqr_stayfrosty";
    level._ID30909["generic"]["dcburn_cpd_inperimeter"] = "dcburn_cpd_inperimeter";
    level._ID30909["generic"]["dcburn_cpd_hostatsix"] = "dcburn_cpd_hostatsix";
    level._ID30909["generic"]["dcburn_cpd_takingfire"] = "dcburn_cpd_takingfire";
    level._ID30908["dcburn_hqr_clearout"] = "dcburn_hqr_clearout";
    level._ID30909["generic"]["dcburn_mcy_negative"] = "dcburn_mcy_negative";
    level._ID30909["generic"]["dcburn_mcy_whatwecan"] = "dcburn_mcy_whatwecan";
    level._ID30909["generic"]["dcburn_mcy_useordnance"] = "dcburn_mcy_useordnance";
    level._ID30909["generic"]["rocket_nag_0"] = "dcburn_mcy_grabajavelin";
    level._ID30909["generic"]["rocket_nag_1"] = "dcburn_mcy_heavyord";
    level._ID30909["generic"]["rocket_nag_2"] = "dcburn_mcy_heavyweap";
    level._ID30909["generic"]["rocket_nag_3"] = "dcburn_mcy_whateveryoufind";
    level._ID30909["generic"]["rocket_shoot_nag_0"] = "dcburn_mcy_heavyfire";
    level._ID30909["generic"]["rocket_shoot_nag_1"] = "dcburn_mcy_closingin";
    level._ID30909["generic"]["rocket_shoot_nag_2"] = "dcburn_mcy_takeoutveh";
    level._ID30908["dcburn_hqr_urgentsurgicals"] = "dcburn_hqr_urgentsurgicals";
    level._ID30908["dcburn_ar5_triplea"] = "dcburn_ar5_triplea";
    level._ID30908["dcburn_ar2_backinseats"] = "dcburn_ar2_backinseats";
    level._ID30908["dcburn_ar3_gottatouchdown"] = "dcburn_ar3_gottatouchdown";
    level._ID30908["dcburn_hqr_roofasap"] = "dcburn_hqr_roofasap";
    level._ID30909["generic"]["dcburn_mcy_rooftop"] = "dcburn_mcy_rooftop";
    level._ID30909["generic"]["dcburn_cpd_closingin"] = "dcburn_cpd_closingin";
    level._ID30908["dcburn_bhp_whatsyourstatus"] = "dcburn_bhp_whatsyourstatus";
    level._ID30909["generic"]["dcburn_mcy_hostilesclose"] = "dcburn_mcy_hostilesclose";
    level._ID30909["generic"]["dcburn_mcy_notime"] = "dcburn_mcy_notime";
    level._ID30909["generic"]["dcburn_mcy_keepmoving"] = "dcburn_mcy_keepmoving";
    level._ID30909["generic"]["dcburn_mcy_overrun"] = "dcburn_mcy_overrun";
    level._ID30909["generic"]["dcburn_mcy_outoftimego"] = "dcburn_mcy_outoftimego";
    level._ID30909["generic"]["dcburn_mcy_rvwithseals"] = "dcburn_mcy_rvwithseals";
    level._ID30909["generic"]["dcburn_mcy_crawlin"] = "dcburn_mcy_crawlin";
    level._ID30909["generic"]["dcburn_mcy_letsmoveout"] = "dcburn_mcy_letsmoveout";
    level._ID30909["generic"]["dcburn_mcy_gettoroofnow"] = "dcburn_mcy_gettoroofnow";
    level._ID30909["generic"]["dcburn_mcy_overrunningpos"] = "dcburn_mcy_overrunningpos";
    level._ID30909["generic"]["dcburn_mcy_outnumbered"] = "dcburn_mcy_outnumbered";
    level._ID30909["generic"]["dcburn_mcy_upthestairsgo"] = "dcburn_mcy_upthestairsgo";
    level._ID30909["generic"]["dcburn_mcy_waitallday"] = "dcburn_mcy_waitallday";
    level._ID30909["generic"]["dcburn_mcy_gettingoverrun"] = "dcburn_mcy_gettingoverrun";
    level._ID30909["generic"]["dcburn_mcy_getonminigun"] = "dcburn_mcy_getonminigun";
    level._ID30909["generic"]["dcburn_mcy_moveminigun"] = "dcburn_mcy_moveminigun";
    level._ID30909["generic"]["dcburn_mcy_getinchopper"] = "dcburn_mcy_getinchopper";
    level._ID30909["generic"]["dcburn_mcy_wayoutnumbered"] = "dcburn_mcy_wayoutnumbered";
    level._ID30909["generic"]["dcburn_mcy_forgetaboutit"] = "dcburn_mcy_forgetaboutit";
    level._ID30909["generic"]["dcburn_mcy_brassontitanic"] = "dcburn_mcy_brassontitanic";
    level._ID30908["dcburn_hqr_firstwave"] = "dcburn_hqr_firstwave";
    level._ID30908["dcburn_hqr_fallbacknow"] = "dcburn_hqr_fallbacknow";
    level._ID30908["dcburn_ar2_leavebehind"] = "dcburn_ar2_leavebehind";
    level._ID30908["dcburn_ar2_hydraulicfluid"] = "dcburn_ar2_hydraulicfluid";
    level._ID30908["dcburn_ar4_wearegoingdown"] = "dcburn_ar4_wearegoingdown";
    level._ID30908["dcburn_hqr_orderirene"] = "dcburn_hqr_orderirene";
    level._ID30908["dcburn_ar1_weareleaving"] = "dcburn_ar1_weareleaving";
    level._ID30908["dcburn_mcy_hitgoingdown"] = "dcburn_mcy_hitgoingdown";
    level._ID30908["dcburn_bhp_incoming"] = "dcburn_bhp_incoming";
    level._ID30908["dcburn_mcy_stillintheair"] = "dcburn_mcy_stillintheair";
    level._ID30908["dcburn_bhp_rpgteams"] = "dcburn_bhp_rpgteams";
    level._ID30908["dcburn_bhp_attitudecontrol"] = "dcburn_bhp_attitudecontrol";
    level._ID30908["dcburn_mcy_takeusup"] = "dcburn_mcy_takeusup";
    level._ID30908["dcburn_bhp_fireteams"] = "dcburn_bhp_fireteams";
    level._ID30908["dcburn_mcy_bunkerevac"] = "dcburn_mcy_bunkerevac";
    level._ID30908["dcburn_hqr_stillpinned"] = "dcburn_hqr_stillpinned";
    level._ID30908["dcburn_mcy_fromtheair"] = "dcburn_mcy_fromtheair";
    level._ID30908["dcburn_mcy_permission"] = "dcburn_mcy_permission";
    level._ID30908["dcburn_hqr_clearedhot"] = "dcburn_hqr_clearedhot";
    level._ID30908["dcburn_mcy_onewaytrip"] = "dcburn_mcy_onewaytrip";
    level._ID30908["dcburn_sll_withyou"] = "dcburn_sll_withyou";
    level._ID30908["dcburn_cpd_leadtheway"] = "dcburn_cpd_leadtheway";
    level._ID30908["dcburn_mcy_alltheway"] = "dcburn_mcy_alltheway";
    level._ID30908["dcburn_lbp1_breakleftbreakleft"] = "dcburn_lbp1_breakleftbreakleft";
    level._ID30908["dcburn_lbp1_clearedhot"] = "dcburn_lbp1_clearedhot";
    level._ID30908["dcburn_mcy_spinherup"] = "dcburn_mcy_spinherup";
    level._ID30908["dcburn_lbp1_gunshipliftingoff"] = "dcburn_lbp1_gunshipliftingoff";
    level._ID30908["dcburn_lbp1_armorrollingin"] = "dcburn_lbp1_armorrollingin";
    level._ID30908["dcburn_lbp1_footmobiles"] = "dcburn_lbp1_footmobiles";
    level._ID30908["dcburn_evc_mainroad"] = "dcburn_evc_mainroad";
    level._ID30908["dcburn_lbp1_wereonit"] = "dcburn_lbp1_wereonit";
    level._ID30908["dcburn_lbp1_takenheatoff"] = "dcburn_lbp1_takenheatoff";
    level._ID30908["dcburn_lbp1_22and23aredown"] = "dcburn_lbp1_22and23aredown";
    level._ID30908["dcburn_bhp_dontgetup"] = "dcburn_bhp_dontgetup";
    level._ID30908["dcburn_lbp1_samlaunch"] = "dcburn_lbp1_samlaunch";
    level._ID30909["dcburn_lbp1_maydaymayday"] = "dcburn_lbp1_maydaymayday";
    level._ID30908["dcburn_lbp1_braceforimpact"] = "dcburn_lbp1_braceforimpact";
}
#using_animtree("script_model");

_ID31294()
{
    level._ID30900["plank"] = #animtree;
    level._ID30904["plank"] = "h2_dcb_blackhawk_bars";
    level._ID30895["plank"]["dcemp_BHrescue"] = %h2_dcemp_bhrescue_plank_1;
    level._ID30900["tarp"] = #animtree;
    level._ID30895["tarp"]["pulldown"] = %h2_gulag_slamraam_tarp_simulation_dcburning;
    level._ID30904["tarp"] = "slamraam_tarp";
    level._ID30900["barrett"] = #animtree;
    level._ID30895["barrett"]["barrett_in"] = %h2_dc_burning_barret_m82_grab_in;
    level._ID30895["barrett"]["barrett_out"] = %h2_dc_burning_barret_m82_grab_out;
    level._ID30900["obelisk"] = #animtree;
    level._ID30895["obelisk"]["h2_dcburning_obelisk_break_a_anim"] = %h2_dcburning_obelisk_break_a_anim;
    level._ID30895["obelisk"]["h2_dcburning_obelisk_break_b_anim"] = %h2_dcburning_obelisk_break_b_anim;
    level._ID30900["chair"] = #animtree;
    level._ID30895["chair"]["rotating_chair"] = %h2_dcburning_teachers_chair1_animated;
    level._ID30900["wire"] = #animtree;
    level._ID30895["wire"]["ch_bunker_wires_02_anim"][0] = %h2_ch_bunker_wires_02_idle;
    level._ID30895["wire"]["dcburning_commerce_wires1_pho_anim"][0] = %h2_dcburning_commerce_wires1_idle;
    level._ID30895["wire"]["hanging_wires_01_multicolored_anim"][0] = %h2_hanging_wires_01_multicolored;
    level._ID30900["wired_light"] = #animtree;
    level._ID30895["wired_light"]["light_idle"][0] = %h2_est_light_idle;
    level._ID30895["wired_light"]["light_idle_broken"][0] = %h2_est_broken_light_idle;
    level._ID30900["suspended_light"] = #animtree;
    level._ID30895["suspended_light"]["light_idle1"][0] = %h2_dcb_suspended_lights_01;
    level._ID30895["suspended_light"]["light_idle2"][0] = %h2_dcb_suspended_lights_02;
    level._ID30895["suspended_light"]["light_idle3"][0] = %h2_dcb_suspended_lights_03;
    level._ID30895["suspended_light"]["light_idle4"][0] = %h2_dcb_suspended_lights_04;
    level._ID30895["suspended_light"]["light_idle5"][0] = %h2_dcb_suspended_lights_05;
    level._ID30900["curtains"] = #animtree;
    level._ID30895["curtains"]["curtains_wind_calm"][0] = %h2_dcb_window_curtain_idle;
    level._ID30895["curtains"]["curtains_closed_wind_calm"][0] = %h2_dcb_window_curtain_closed_idle;
    level._ID30895["curtains"]["curtains_wind"][0] = %h2_dcb_window_curtain_windyidle;
    level._ID30900["breakable_door"] = #animtree;
    level._ID30895["breakable_door"]["door_breaking"] = %h2_dcb_door_laminate_wood_blastopen;
}
#using_animtree("vehicles");

_ID40078()
{
    level._ID30895["seaknight"]["h2_sniper_escape_ch46_takeoff"] = %h2_sniper_escape_ch46_takeoff;
    level._ID30895["seaknight"]["sniper_escape_ch46_take_off_idle"][0] = %sniper_escape_ch46_idle;
    level._ID30895["seaknight"]["rotors"] = %sniper_escape_ch46_rotors;
    level._ID30900["seaknight"] = #animtree;
    level._ID30895["minigun"]["minigun_in_fast"] = %h2_dc_burning_blackhawk_minigun_vehicle_in_fast;
    level._ID30904["minigun_dummy"] = "h2_vehicle_blackhawk_minigun_viewhands";
    level._ID30900["minigun_dummy"] = #animtree;
    level._ID30895["minigun_dummy"]["minigun_first_impact"] = %h2_dcburning_blackhawk_minigun_vm_first_impact;
    level._ID30895["minigun_dummy"]["minigun_second_impact"] = %h2_dcburning_blackhawk_minigun_vm_second_impact;
    level._ID30895["minigun"]["minigun_idle"] = %h2_dc_burning_blackhawk_minigun_idle;
    level._ID30895["minigun"]["turret_player_fire_left_node"] = %h2_dc_burning_blackhawk_minigun_fire_left_node;
    level._ID30895["minigun"]["turret_player_fire_left"] = %h2_dc_burning_blackhawk_minigun_fire_left;
    level._ID30895["minigun"]["turret_player_fire_right_node"] = %h2_dc_burning_blackhawk_minigun_fire_right_node;
    level._ID30895["minigun"]["turret_player_fire_right"] = %h2_dc_burning_blackhawk_minigun_fire_right;
}

_ID52985( var_0 )
{
    _ID42237::_ID14402( "roof_door_kicked" );
    var_0 _ID42407::_ID27081( "scn_shotgun_breach_door_kick_sweetener" );
}

_ID48208( var_0 )
{
    var_0 _ID42407::_ID27080( "scn_shotgun_breach_sweetener", undefined, 1 );
}

_ID50967( var_0 )
{
    var_0._ID9813 = var_0._ID49082;
    var_0 notify( "reload_begin" );
}

_ID46428( var_0 )
{
    var_0._ID9813 = var_0._ID52785;
}
#using_animtree("player");

_ID27230()
{
    level._ID30900["worldhands"] = #animtree;
    level._ID30904["worldhands"] = "viewhands_player_us_army";
    level._ID30895["worldhands"]["h2_dcburning_c4_bl"] = %h2_dcburning_c4_bl;
    level._ID30895["worldhands"]["h2_dcburning_c4_br"] = %h2_dcburning_c4_br;
    level._ID30895["worldhands"]["h2_dcburning_c4_lf"] = %h2_dcburning_c4_lf;
    level._ID30895["worldhands"]["h2_dcburning_c4_rf"] = %h2_dcburning_c4_rf;
    _ID42259::_ID2058( "worldhands", "c4_detach", ::_ID48187 );
    level._ID30895["worldhands"]["barrett_in"] = %h2_dc_burning_barret_player_grab_in;
    level._ID30895["worldhands"]["barrett_out"] = %h2_dc_burning_barret_player_grab_out;
    level._ID30895["worldhands"]["minigun_in_fast"] = %h2_dc_burning_blackhawk_minigun_in_fast;
    level._ID30904["viewhands"] = "viewhands_player_us_army";
    level._ID30900["viewhands"] = #animtree;
    level._ID30904["viewbody"] = "viewbody_us_army";
    level._ID30900["viewbody"] = #animtree;
}

_ID48187( var_0 )
{
    level.player._ID49479.origin = var_0 gettagorigin( "tag_weapon_left" );
    level.player._ID49479.angles = var_0 gettagangles( "tag_weapon_left" );
    level.player._ID49479._ID25567 = level.player._ID49479.origin;
    waittillframeend;
    var_0 detach( "weapon_c4", "tag_weapon_left" );
    level.player._ID49479 show();
}
#using_animtree("generic_human");

_ID46978()
{
    level._ID30895["enemy_death"]["h2_favela_backalleys_death_rooftop_A"] = %h2_favela_backalleys_death_rooftop_a;
    level._ID30895["enemy_death"]["h2_favela_backalleys_death_rooftop_B"] = %h2_favela_backalleys_death_rooftop_b;
    level._ID30895["enemy_death"]["h2_favela_backalleys_death_rooftop_C"] = %h2_favela_backalleys_death_rooftop_c;
    level._ID30895["enemy_death"]["h2_favela_backalleys_death_rooftop_D"] = %h2_favela_backalleys_death_rooftop_d;
    level._ID30895["enemy_death"]["h2_favela_backalleys_death_window_A"] = %h2_favela_backalleys_death_window_a;
    level._ID30895["enemy_death"]["h2_favela_backalleys_death_window_A_idle"] = %h2_favela_backalleys_death_window_a_idle;
    level._ID30895["enemy_death"]["h2_favela_backalleys_death_window_B"] = %h2_favela_backalleys_death_window_b;
    level._ID30895["enemy_death"]["h2_favela_backalleys_death_window_B_idle"] = %h2_favela_backalleys_death_window_b_idle;
}
#using_animtree("animated_props");

animated_fence_setup()
{
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_01"]["still"] = %h2_dcb_dpt_commerce_rooftop_fence_01_idle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_01"]["strong"] = %h2_dcb_dpt_commerce_rooftop_fence_01_idle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_01"]["heli"] = %h2_dcb_dpt_commerce_rooftop_fence_01_windyidle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_02"]["still"] = %h2_dcb_dpt_commerce_rooftop_fence_02_idle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_02"]["strong"] = %h2_dcb_dpt_commerce_rooftop_fence_02_idle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_02"]["heli"] = %h2_dcb_dpt_commerce_rooftop_fence_02_windyidle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_03"]["still"] = %h2_dcb_dpt_commerce_rooftop_fence_03_idle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_03"]["strong"] = %h2_dcb_dpt_commerce_rooftop_fence_03_idle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_03"]["heli"] = %h2_dcb_dpt_commerce_rooftop_fence_03_windyidle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_04"]["still"] = %h2_dcb_dpt_commerce_rooftop_fence_04_idle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_04"]["strong"] = %h2_dcb_dpt_commerce_rooftop_fence_04_idle;
    level._ID3055["h2_dcb_dpt_commerce_rooftop_fence_04"]["heli"] = %h2_dcb_dpt_commerce_rooftop_fence_04_windyidle;
}

dcburning_mortar_notify( var_0 )
{
    var_1 = 262144;

    if ( _ID42407::_ID27540( var_0 gettagorigin( "tag_eye" ), 0.8, 1 ) )
    {
        var_2 = distancesquared( var_0.origin, level.player.origin );

        if ( var_2 < var_1 )
            level notify( "explosion_mortar",  var_2  );
    }
}
