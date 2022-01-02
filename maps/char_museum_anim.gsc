// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID15518();
    _ID48690();
    _ID50267();
    _ID48917();
    _ID23866();
    _ID27230();
    chicken_anims();
    h2_animation_diorama();
    h2_animation_diorama_model();
}
#using_animtree("generic_human");

_ID15518()
{
    level._ID30895["generic"]["afgan_caves_Price_rappel_idle"] = %afgan_caves_price_rappel_idle;
    level._ID30895["generic"]["afchase_ending_shepherd_gun_monologue"] = %afchase_ending_shepherd_gun_monologue;
    level._ID30895["generic"]["patrol_bored_idle_smoke"] = %patrol_bored_idle_smoke;
    level._ID30895["generic"]["zodiac_trans_L2R"] = %zodiac_trans_l2r;
    level._ID30895["generic"]["training_intro_foley_begining"] = %training_intro_foley_begining;
    level._ID30895["generic"]["training_pit_sitting_welcome"] = %training_pit_sitting_welcome;
    level._ID30895["generic"]["riotshield_idle"] = %riotshield_idle;
    level._ID30895["generic"]["riotshield_bashB_attack"] = %riotshield_bashb_attack;
    level._ID30895["generic"]["riotshield_bashB_defend"] = %riotshield_bashb_defend;
    level._ID30895["generic"]["airport_security_civ_rush_guard"] = %airport_security_civ_rush_guard;
    level._ID30895["generic"]["airport_security_guard_pillar_react_R"] = %airport_security_guard_pillar_react_r;
    level._ID30895["generic"]["airport_elevator_sequence_guy1"] = %airport_elevator_sequence_guy1;
    level._ID30895["generic"]["airport_elevator_sequence_guy2"] = %airport_elevator_sequence_guy2;
    level._ID30895["generic"]["killhouse_sas_1"] = %killhouse_sas_1;
    level._ID30895["generic"]["killhouse_sas_2"] = %killhouse_sas_2;
    level._ID30895["generic"]["killhouse_sas_3"] = %killhouse_sas_3;
    level._ID30895["generic"]["killhouse_sas_price"] = %killhouse_sas_price;
    level._ID30895["generic"]["guardA_standing_cold_idle"] = %guarda_standing_cold_idle;
    level._ID30895["generic"]["guardB_standing_cold_idle"] = %guardb_standing_cold_idle;
    level._ID30895["generic"]["gulag_end_evac_soap"] = %gulag_end_evac_soap;
    level._ID30895["generic"]["estate_ghost_radio"] = %estate_ghost_radio;
    level._ID30895["generic"]["airport_civ_in_line_15_B"] = %airport_civ_in_line_15_b;
    level._ID30895["generic"]["invasion_vehicle_cover_dialogue_guy1"] = %invasion_vehicle_cover_dialogue_guy1;
    level._ID30895["generic"]["invasion_vehicle_cover_dialogue_guy2"] = %invasion_vehicle_cover_dialogue_guy2;
    level._ID30895["generic"]["vehicle_cover_dialogue_guy1_museum"] = %vehicle_cover_dialogue_guy1_museum;
    level._ID30895["generic"]["vehicle_cover_dialogue_guy2_museum"] = %vehicle_cover_dialogue_guy2_museum;
    level._ID30902["generic"]["vehicle_cover_dialogue_guy2_museum"] = 0;
    level._ID30895["generic"]["oilrig_sub_B_idle_3"] = %oilrig_sub_b_idle_3;
    level._ID30895["generic"]["oilrig_sub_B_idle_4"] = %oilrig_sub_b_idle_4;
    level._ID30895["generic"]["roadkill_opening_shepherd"] = %roadkill_opening_shepherd;
    level._ID30895["generic"]["roadkill_opening_foley"] = %roadkill_opening_foley;
    level._ID30895["generic"]["oilrig_balcony_smoke_idle"] = %oilrig_balcony_smoke_idle;
    level._ID30895["generic"]["roadkill_cover_active_soldier1"] = %roadkill_cover_active_soldier1;
    level._ID30895["generic"]["roadkill_cover_active_soldier2"] = %roadkill_cover_active_soldier2;
    level._ID30895["generic"]["roadkill_cover_soldier"] = %roadkill_cover_soldier;
    level._ID30895["generic"]["roadkill_cover_spotter"] = %roadkill_cover_spotter;
    level._ID30895["generic"]["bh_6_drop"] = %bh_6_drop;
    level._ID30895["generic"]["bh_rope_drop_le"] = %bh_rope_drop_le;
    level._ID30895["generic"]["training_intro_trainee_1_end"] = %training_intro_trainee_1_end;
    level._ID30895["generic"]["training_intro_translator_end"] = %training_intro_translator_end;
    level._ID30895["generic"]["training_intro_foley_end"] = %training_intro_foley_end;
    level._ID30895["generic"]["parabolic_leaning_guy_idle_training"] = %parabolic_leaning_guy_idle_training;
    level._ID30895["generic"]["training_pushups_guy1"] = %training_pushups_guy1;
    level._ID30895["generic"]["takedown_room1B_soldier"] = %takedown_room1b_soldier;
    level._ID30895["generic"]["takedown_room1B_hostage"] = %takedown_room1b_hostage;
    level._ID30895["generic"]["hostage_chair_idle"] = %hostage_chair_idle;
    level._ID30895["generic"]["hostage_chair_dive"] = %hostage_chair_dive;
    level._ID30895["generic"]["hostage_chair_ground_idle"] = %hostage_chair_ground_idle;
    level._ID30895["generic"]["coup_guard2_jeera"] = %coup_guard2_jeera;
    level._ID30895["generic"]["coup_guard2_jeerb"] = %coup_guard2_jeerb;
    level._ID30895["generic"]["coup_guard2_jeerc"] = %coup_guard2_jeerc;
    level._ID30895["generic"]["coup_guard1_jeer"] = %coup_guard1_jeer;
    level._ID30895["generic"]["village_interrogationA_Price"] = %village_interrogationa_price;
    level._ID30895["generic"]["village_interrogationA_Zak"] = %village_interrogationa_zak;
    level._ID30895["generic"]["favela_chaotic_crouchcover_grenadefireA"] = %favela_chaotic_crouchcover_firec;
    level._ID30895["generic"]["favela_chaotic_crouchcover_fireA"] = %favela_chaotic_crouchcover_firea;
    level._ID30895["generic"]["favela_chaotic_crouchcover_fireB"] = %favela_chaotic_crouchcover_fireb;
    level._ID30895["generic"]["favela_chaotic_crouchcover_fireC"] = %favela_chaotic_crouchcover_firec;
    level._ID30895["generic"]["favela_chaotic_crouchcover_gunjamA"] = %favela_chaotic_crouchcover_gunjama;
    level._ID30895["generic"]["favela_chaotic_crouchcover_gunjamB"] = %favela_chaotic_crouchcover_gunjamb;
    level._ID30895["generic"]["favela_chaotic_standcover_grenadeFireA"] = %favela_chaotic_standcover_grenadefirea;
    level._ID30895["generic"]["favela_chaotic_standcover_fireA"] = %favela_chaotic_standcover_firea;
    level._ID30895["generic"]["favela_chaotic_standcover_fireB"] = %favela_chaotic_standcover_fireb;
    level._ID30895["generic"]["favela_chaotic_standcover_fireC"] = %favela_chaotic_standcover_firec;
    level._ID30895["generic"]["favela_chaotic_standcover_gunjamA"] = %favela_chaotic_standcover_gunjama;
    level._ID30895["generic"]["favela_chaotic_standcover_gunjamB"] = %favela_chaotic_standcover_gunjamb;
    level._ID30895["generic"]["civilian_sitting_talking_A_1"] = %civilian_sitting_talking_a_1;
    level._ID30895["generic"]["civilian_sitting_talking_A_2"] = %civilian_sitting_talking_a_2;
    level._ID30895["generic"]["civilian_sitting_talking_B_1"] = %civilian_sitting_talking_b_1;
    level._ID30895["generic"]["civilian_sitting_talking_B_2"] = %civilian_sitting_talking_b_2;
    level._ID30895["generic"]["casual_stand_v2_idle"] = %casual_stand_v2_idle;
    level._ID30895["generic"]["casual_stand_v2_twitch_shift"] = %casual_stand_v2_twitch_shift;
    level._ID30895["generic"]["casual_stand_v2_twitch_talk"] = %casual_stand_v2_twitch_talk;
    level._ID30895["generic"]["casual_stand_v2_twitch_radio"] = %casual_stand_v2_twitch_radio;
    level._ID30895["generic"]["casual_crouch_idle"] = %casual_crouch_idle;
    level._ID30895["generic"]["casual_crouch_twitch"] = %casual_crouch_twitch;
    level._ID30895["generic"]["casual_crouch_point"] = %casual_crouch_point;
    level._ID30895["generic"]["training_intro_foley_idle_talk_1"] = %training_intro_foley_idle_talk_1;
    level._ID30895["generic"]["training_intro_foley_idle_talk_2"] = %training_intro_foley_idle_talk_2;
    level._ID30895["generic"]["training_intro_foley_turnaround_1"] = %training_intro_foley_turnaround_1;
    level._ID30895["generic"]["training_intro_foley_turnaround_2"] = %training_intro_foley_turnaround_2;
    level._ID30895["generic"]["training_intro_foley_turnaround_3"] = %training_intro_foley_turnaround_3;
    level._ID30895["generic"]["stinger_fire"] = %stinger_fire;
    level._ID30895["generic"]["stinger_fire_alt"] = %stinger_fire_alt;
    level._ID30895["generic"]["stinger_idle"] = %stinger_idle;
    level._ID30895["generic"]["favela_crouch"][0] = %favela_chaotic_crouchcover_firec_museum;
    level._ID30895["generic"]["favela_crouch"][1] = %favela_chaotic_crouchcover_firea_museum;
    level._ID30895["generic"]["favela_crouch"][2] = %favela_chaotic_crouchcover_fireb_museum;
    level._ID30895["generic"]["favela_crouch"][3] = %favela_chaotic_crouchcover_firec_museum;
    level._ID30895["generic"]["favela_crouch"][4] = %favela_chaotic_crouchcover_gunjama_museum;
    level._ID30895["generic"]["favela_crouch"][5] = %favela_chaotic_crouchcover_gunjamb_museum;
    level._ID30895["generic"]["favela_stand"][0] = %favela_chaotic_standcover_grenadefirea;
    level._ID30895["generic"]["favela_stand"][1] = %favela_chaotic_standcover_firea;
    level._ID30895["generic"]["favela_stand"][2] = %favela_chaotic_standcover_fireb;
    level._ID30895["generic"]["favela_stand"][3] = %favela_chaotic_standcover_firec;
    level._ID30895["generic"]["favela_stand"][4] = %favela_chaotic_standcover_gunjama;
    level._ID30895["generic"]["favela_stand"][5] = %favela_chaotic_standcover_gunjamb;
    level._ID30895["generic"]["casual_stand"][0] = %casual_stand_v2_idle;
    level._ID30895["generic"]["casual_stand"][1] = %casual_stand_v2_twitch_shift;
    level._ID30895["generic"]["casual_stand"][2] = %casual_stand_v2_twitch_talk;
    level._ID30895["generic"]["casual_stand"][3] = %casual_stand_v2_twitch_radio;
    level._ID30895["generic"]["casual_stand_no_radio"][0] = %casual_stand_v2_idle;
    level._ID30895["generic"]["casual_stand_no_radio"][1] = %casual_stand_v2_twitch_shift;
    level._ID30895["generic"]["casual_stand_no_radio"][2] = %casual_stand_v2_twitch_talk;
    level._ID30895["generic"]["casual_crouch"][0] = %casual_crouch_idle;
    level._ID30895["generic"]["casual_crouch"][1] = %casual_crouch_twitch;
    level._ID30895["generic"]["casual_crouch"][2] = %casual_crouch_point;
    level._ID30895["generic"]["rpg"][0] = %stinger_fire;
    level._ID30895["generic"]["rpg"][1] = %stinger_fire_alt;
    level._ID30895["generic"]["rpg"][2] = %stinger_idle;
    level._ID30895["generic"]["chair"][0] = %hostage_chair_idle;
    level._ID30895["generic"]["chair"][1] = %hostage_chair_twitch;
    level._ID30895["generic"]["chair"][2] = %hostage_chair_twitch2;
    level._ID30895["generic"]["foley_talk"][0] = %training_intro_foley_idle_talk_1;
    level._ID30895["generic"]["foley_talk"][1] = %training_intro_foley_idle_talk_2;
    level._ID30895["generic"]["foley_talk"][2] = %training_intro_foley_turnaround_2;
    level._ID30895["generic"]["foley_talk"][3] = %training_intro_foley_turnaround_3;
}

_ID48690()
{
    var_0 = [];
    var_0[0] = 2;
    var_0[1] = 1;
    var_0[2] = 1;
    var_0[3] = 1;
    var_1 = [];
    var_1[0] = 7;
    var_1[1] = 3;
    var_2 = _ID42237::_ID15649( var_1 );
    level._ID30895["civilian_cellphone_walk"]["run_noncombat"][0] = %civilian_cellphonewalk;
    level._ID30895["civilian_cellphone_walk"]["run_noncombat"][1] = %civilian_cellphonewalk_twitch;
    level._ID30895["civilian_cellphone_walk"]["run_weights"] = var_2;
    level._ID30895["civilian_cellphone_walk"]["dodge_left"] = %civilian_cellphonewalk_dodge_l;
    level._ID30895["civilian_cellphone_walk"]["dodge_right"] = %civilian_cellphonewalk_dodge_r;
    level._ID30895["civilian_cellphone_walk"]["turn_left_90"] = %civilian_cellphonewalk_turn_l;
    level._ID30895["civilian_cellphone_walk"]["turn_right_90"] = %civilian_cellphonewalk_turn_r;
    level._ID30895["civilian_hurried_walk"]["run_noncombat"][0] = %civilian_walk_hurried_1;
    level._ID30895["civilian_hurried_walk"]["run_noncombat"][1] = %civilian_walk_hurried_2;
    level._ID30895["civilian_cool_walk"]["run_noncombat"][0] = %civilian_walk_cool;
    level._ID30895["civilian_briefcase_walk"]["run_noncombat"][0] = %civilian_briefcase_walk;
    level._ID30895["civilian_briefcase_walk"]["dodge_left"] = %civilian_briefcase_walk_dodge_l;
    level._ID30895["civilian_briefcase_walk"]["dodge_right"] = %civilian_briefcase_walk_dodge_r;
    level._ID30895["civilian_briefcase_walk"]["turn_left_90"] = %civilian_briefcase_walk_turn_l;
    level._ID30895["civilian_briefcase_walk"]["turn_right_90"] = %civilian_briefcase_walk_turn_r;
    level._ID30895["generic"]["civilian_hurried_walk"][0] = %civilian_walk_hurried_1;
    level._ID30895["generic"]["civilian_hurried_walk"][1] = %civilian_walk_hurried_2;
    level._ID30895["generic"]["civilian_cellphone_walk"][0] = %civilian_cellphonewalk;
    level._ID30895["generic"]["civilian_cellphone_walk"][1] = %civilian_cellphonewalk_twitch;
    level._ID30895["generic"]["civilian_cool_walk"][0] = %civilian_briefcase_walk;
    level._ID30895["generic"]["civilian_walk"][0] = %civilian_walk_cool;
}

_ID50267()
{
    level._ID30895["generic"]["civilian_stand_idle"][0] = %civilian_stand_idle;
    level._ID30895["generic"]["civilian_smoking_A"][0] = %civilian_smoking_a;
    level._ID30895["generic"]["civilian_smoking_B"][0] = %civilian_smoking_b;
    level._ID30895["generic"]["civilian_directions_1_A"][0] = %civilian_directions_1_a;
    level._ID30895["generic"]["civilian_directions_1_B"][0] = %civilian_directions_1_b;
    level._ID30895["generic"]["civilian_hackey_guy1"][0] = %civilian_hackey_guy1;
    level._ID30895["generic"]["civilian_hackey_guy2"][0] = %civilian_hackey_guy2;
    level._ID30895["generic"]["oilrig_balcony_smoke_idle_idle"][0] = %oilrig_balcony_smoke_idle;
    level._ID30895["generic"]["civilian_directions_1_A_once"][0] = %civilian_directions_1_a_once;
    level._ID30895["generic"]["civilian_directions_1_B_once"][0] = %civilian_directions_1_b_once;
    level._ID30895["generic"]["civilian_directions_2_A_once"][0] = %civilian_directions_2_a_once;
    level._ID30895["generic"]["civilian_directions_2_B_once"][0] = %civilian_directions_2_b_once;
    level._ID30895["generic"]["laptop_sit_idle_calm"][0] = %laptop_sit_idle_calm;
    level._ID30895["generic"]["laptop_stand_idle"][0] = %laptop_stand_idle;
    level._ID30895["generic"]["civilian_texting_sitting"][0] = %civilian_texting_sitting;
}
#using_animtree("dog");

_ID48917()
{
    level._ID30895["generic"]["german_shepherd_idle"] = %german_shepherd_idle;
    level._ID30895["generic"]["german_shepherd_attackidle"] = %german_shepherd_attackidle;
    level._ID30895["generic"]["german_shepherd_attackidle_bark"] = %german_shepherd_attackidle_bark;
    level._ID30895["generic"]["german_shepherd_attackidle_growl"] = %german_shepherd_attackidle_growl;
    level._ID30895["generic"]["dog"][0] = %german_shepherd_attackidle;
    level._ID30895["generic"]["dog"][1] = %german_shepherd_attackidle_bark;
    level._ID30895["generic"]["dog"][2] = %german_shepherd_attackidle_growl;
}
#using_animtree("animals");

chicken_anims()
{
    level._ID30900["chicken"] = #animtree;
    level._ID30895["chicken"]["chicken_cage_freakout"][0] = %chicken_cage_freakout;
    level._ID30895["chicken"]["chicken_cage_pecking_idle"][0] = %chicken_cage_pecking_idle;
    level._ID30895["chicken"]["chicken_cage_seated_idle"][0] = %chicken_cage_seated_idle;
    level._ID30895["chicken"]["chicken_cage_loop_01"] = %chicken_cage_loop_01;
    level._ID30895["chicken"]["chicken_cage_loop_02"] = %chicken_cage_loop_02;
    level._ID30895["chicken"]["chicken_cage_death"] = %chicken_cage_death;
    level._ID30895["chicken"]["chicken_cage_death_02"] = %chicken_cage_death_02;
}
#using_animtree("script_model");

_ID23866()
{
    level._ID30895["pit_gun"]["training_pit_sitting_welcome_gun"] = %training_pit_sitting_welcome_gun;
    level._ID30895["pit_gun"]["training_pit_sitting_idle_gun"] = %training_pit_sitting_idle_gun;
    level._ID30895["pit_gun"]["training_pit_stand_idle_gun"] = %training_pit_stand_idle_gun;
    level._ID30895["pit_gun"]["training_pit_open_case_gun"] = %training_pit_open_case_gun;
    level._ID30900["pit_gun"] = #animtree;
    level._ID30900["bell"] = #animtree;
    level._ID30895["bell"]["pressing_button_infront"] = %h2_ending_player_press_bell_front_prop;
    level._ID30895["bell"]["pressing_button_behind"] = %h2_ending_player_press_bell_behind_prop;
    level._ID30895["bell"]["pressing_button_else"] = %h2_ending_player_press_bell_no_player;
    _ID42259::_ID2056( "bell", "pressing_button_infront", "ring", "detpack_trigger" );
    _ID42259::_ID2056( "bell", "pressing_button_behind", "ring", "detpack_trigger" );
    _ID42259::_ID2056( "bell", "pressing_button_else", "ring", "detpack_trigger" );
    level._ID30900["lantern"] = #animtree;
    level._ID30904["lantern"] = "h2_dcb_lamp_ceiling_animate";
    level._ID30895["lantern"]["idle"][0] = %h2_dcb_lamp_ceiling_idle;
}
#using_animtree("player");

_ID27230()
{
    level._ID30900["viewbody"] = #animtree;
    level._ID30904["viewbody"] = "h2_viewbody_us_army";
    level._ID30895["viewbody"]["pressing_button_infront"] = %h2_ending_player_press_bell_front;
    level._ID30895["viewbody"]["pressing_button_behind"] = %h2_ending_player_press_bell_behind;
}
#using_animtree("generic_human");

h2_animation_diorama()
{
    level._ID30900["generic"] = #animtree;
    level._ID30895["generic"]["h2_museum_favela_soap"] = %h2_museum_favela_soap;
    level._ID30895["generic"]["h2_museum_favela_ghost"] = %h2_museum_favela_ghost;
    level._ID30895["generic"]["h2_museum_estate_ghost"] = %h2_museum_estate_ghost;
    level._ID30895["generic"]["h2_museum_airport_makarov"] = %h2_museum_airport_makarov;
    level._ID30895["generic"]["h2_museum_airport_kiril"] = %h2_museum_airport_kiril;
    level._ID30895["generic"]["h2_museum_afchase_shepherd"] = %h2_museum_afchase_shepherd;
    level._ID30895["generic"]["h2_museum_oilrig_soap"] = %h2_museum_oilrig_soap;
    level._ID30895["generic"]["h2_museum_oilrig_hostage"] = %h2_museum_oilrig_hostage;
    level._ID30895["generic"]["h2_museum_oilrig_underwater_soap"] = %h2_museum_oilrig_underwater_soap;
    level._ID30895["generic"]["h2_museum_oilrig_underwater_ghost"] = %h2_museum_oilrig_underwater_ghost;
    level._ID30895["generic"]["h2_museum_training_foley"] = %h2_museum_training_foley;
    level._ID30895["generic"]["h2_museum_training_translator"] = %h2_museum_training_translator;
    level._ID30895["generic"]["h2_museum_training_soldier"] = %h2_museum_training_soldier;
    level._ID30895["generic"]["h2_museum_wolverines_attacker"] = %h2_museum_wolverines_attacker;
    level._ID30895["generic"]["h2_museum_wolverines_defender"] = %h2_museum_wolverines_defender;
    level._ID30895["generic"]["h2_museum_ooto_dunn"] = %h2_museum_ooto_dunn;
    level._ID30895["generic"]["h2_museum_ooto_foley"] = %h2_museum_ooto_foley;
}
#using_animtree("script_model");

h2_animation_diorama_model()
{
    level._ID30900["model"] = #animtree;
    level._ID30895["model"]["h2_museum_afchase_gun"] = %h2_museum_afchase_gun;
    level._ID30895["model"]["h2_museum_estate_rope"] = %h2_museum_estate_rope;
}
