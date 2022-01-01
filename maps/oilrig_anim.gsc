// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID52819();
    _ID50500();
    _ID3197();
    _ID10742();
    _ID48809();
    _ID27230();
    _ID43088();
    _ID46517();
    _ID47964();
    _ID51458();
    _ID53960();
    _ID50163();
    _ID40319();
    weapon_anims();
    _ID921();
    animated_palette();
    _ID51444();
    thread audio_anim();
}

_ID52819()
{

}

audio_anim()
{
    wait 0.1;
    _ID42259::_ID2075( "player_rig", "underwater_player_start", "scn_oilrig_underwater_plr_start" );
    _ID42259::_ID2075( "worldbody", "c4bodywall", "scn_oilrig_c4_bodywall_plr" );
    _ID42259::_ID2075( "worldbody", "c4bodyground", "scn_oilrig_c4_bodyground_plr" );
    _ID42259::_ID2075( "worldbody", "c4bodyground2", "scn_oilrig_c4_bodyground2_plr" );
    _ID42259::_ID2075( "generic", "oilrig_seal_surface_rebreather_off_guy1", "scn_oilrig_seal_surface_rebreather_off_guy1" );
    _ID42259::_ID2075( "generic", "oilrig_seal_surface_rebreather_off_guy2", "scn_oilrig_seal_surface_rebreather_off_guy2" );
    _ID42259::_ID2075( "worldbody", "smoker_takedown", "scn_oilrig_smoker_kill" );
    _ID42259::_ID2075( "generic", "C4_plant", "scn_oilrig_npc_c4_knee_plant" );
    _ID42259::_ID2075( "generic", "soap_go_up_scaffolding", "scn_oilrig_soap_go_up_scaffolding" );
    _ID42259::_ID2075( "generic", "oilrig_rappel_2_crouch", "scn_oilrig_npc_rappel_deck2" );
    _ID42259::_ID2075( "soap", "escape_departure", "scn_oilrig_plr_grabbing_wpn" );
}
#using_animtree("generic_human");

_ID50500()
{
    level._ID30895["sdv01_pilot"]["sdv_ride_in"] = %oilrig_sub_a_disembark_1;
    level._ID30895["sdv01_copilot"]["sdv_ride_in"] = %oilrig_sub_a_disembark_2;
    level._ID30895["sdv01_swimmer1"]["sdv_ride_in"] = %oilrig_sub_a_disembark_4;
    level._ID30895["sdv02_pilot"]["sdv_ride_in"] = %oilrig_sub_b_disembark_1;
    level._ID30895["sdv02_copilot"]["sdv_ride_in"] = %oilrig_sub_b_disembark_2;
    level._ID30895["sdv02_swimmer1"]["sdv_ride_in"] = %oilrig_sub_b_disembark_3;
    level._ID30895["sdv02_swimmer2"]["sdv_ride_in"] = %oilrig_sub_b_disembark_4;
    _ID42259::_ID2056( "sdv01_pilot", "sdv_ride_in", "pilot_leaving_diveboat", "foley_npc_leave_diveboat" );
    _ID42259::_ID2056( "sdv01_copilot", "sdv_ride_in", "copilot_leaving_diveboat", "foley_npc_leave_diveboat" );
    level._ID30895["sdv01_pilot"]["surface_idle"][0] = %oilrig_sub_a_idle_1;
    level._ID30895["sdv01_copilot"]["surface_idle"][0] = %oilrig_sub_a_idle_2;
    level._ID30895["sdv01_swimmer1"]["surface_idle"][0] = %oilrig_sub_a_idle_4;
    level._ID30895["sdv02_pilot"]["surface_idle"][0] = %oilrig_sub_b_idle_1;
    level._ID30895["sdv02_copilot"]["surface_idle"][0] = %oilrig_sub_b_idle_2;
    level._ID30895["sdv02_swimmer1"]["surface_idle"][0] = %oilrig_sub_b_idle_3;
    level._ID30895["sdv02_swimmer2"]["surface_idle"][0] = %oilrig_sub_b_idle_4;
    level._ID30895["hostile_stealthkill_player"]["grate_idle"][0] = %oilrig_underwater_guard_2_idle;
    level._ID30895["hostile_stealthkill_friendly"]["grate_idle"][0] = %oilrig_underwater_guard_1_idle;
    level._ID30895["hostile_stealthkill_player"]["stealth_kill"] = %oilrig_underwater_guard_2_death;
    level._ID30895["hostile_stealthkill_friendly"]["stealth_kill"] = %oilrig_underwater_guard_1_death;
    level._ID30895["sdv02_pilot"]["stealth_kill"] = %oilrig_underwater_kill_1;
    _ID42259::_ID2058( "hostile_stealthkill_player", "blood", _ID43617::_ID50113 );
    _ID42259::_ID2058( "hostile_stealthkill_player", "splash", _ID43617::_ID54106 );
    _ID42259::_ID2058( "hostile_stealthkill_friendly", "blood", _ID43617::_ID50113 );
    level._ID30895["water_helper_01"]["surface_helpout"] = %oilrig_helpout_1;
    level._ID30895["water_helper_02"]["surface_helpout"] = %oilrig_helpout_2;
    level._ID30895["manhandle_soldier_walk"]["prisoner_manhandle_walk"] = %prisoner_pickup2walk_soldier;
    level._ID30895["manhandle_prisoner_walk"]["prisoner_manhandle_walk"] = %prisoner_pickup2walk_prisoner;
    level._ID30895["manhandle_soldier_run"]["prisoner_manhandle_run"] = %prisoner_pickup2run_soldier;
    level._ID30895["manhandle_prisoner_run"]["prisoner_manhandle_run"] = %prisoner_pickup2run_prisoner;
    level._ID30895["generic"]["stand_exposed_wave_move_up"] = %stand_exposed_wave_move_up;
    level._ID30895["generic"]["execution_slamwall_hostage_death"] = %execution_slamwall_hostage_death;
    level._ID30895["generic"]["run_death_roll"] = %run_death_roll;
    level._ID30895["generic"]["guy_blown_out_door_death"] = %s1_exposed_death_blowback;
    level._ID30895["generic"]["C4_plant_start"] = %explosive_plant_knee;
    level._ID30895["generic"]["C4_plant"] = %explosive_plant_knee;
    level._ID30895["generic"]["soap_go_up_scaffolding"] = %h2_oilrig_scaffold_soap;
    level._ID30895["generic"]["railing_execute_reach"] = %h2_cqb_7_covercrouch_aim;
    level._ID30895["generic"]["railing_execute_idle"][0] = %covercrouch_idle_aim5;
    level._ID30895["generic"]["railing_execute_shoot"] = %covercrouch_aim5;
    level._ID30895["soap"]["railing_execute_idle"][0] = %covercrouch_idle_aim5;
    level._ID30895["soap"]["breach_react"] = %h2_cornerstndl_breach_ally_react;
    level._ID30895["soap"]["escape_in"] = %h2_oilrig_helipad_escape_soap_in;
    level._ID30895["soap"]["escape_idle"][0] = %h2_oilrig_helipad_escape_soap_idle;
    level._ID30895["soap"]["escape_departure"] = %h2_oilrig_helipad_escape_soap_departure;
    level._ID30895["generic"]["h2_oilrig_helipad_escape_frontsoldier_getin"] = %h2_oilrig_helipad_escape_frontsoldier_getin;
    level._ID30895["generic"]["h2_oilrig_helipad_escape_midsoldier_getin"] = %h2_oilrig_helipad_escape_midsoldier_getin;
    level._ID30895["generic"]["h2_oilrig_helipad_escape_rearsoldier_getin"] = %h2_oilrig_helipad_escape_rearsoldier_getin;
    level._ID30895["generic"]["h2_oilrig_helipad_escape_frontsoldier_getin_idle"][0] = %h2_oilrig_helipad_escape_frontsoldier_sitting_idle;
    level._ID30895["generic"]["h2_oilrig_helipad_escape_midsoldier_getin_idle"][0] = %h2_oilrig_helipad_escape_midsoldier_sitting_idle;
    level._ID30895["generic"]["h2_oilrig_helipad_escape_rearsoldier_getin_idle"][0] = %h2_oilrig_helipad_escape_rearsoldier_sitting_idle;
    level._ID30895["generic"]["escape_in"] = %h2_oilrig_helipad_stairs_soldier;
}

_ID3197()
{
    _ID42358::_ID1945( "generic" );
    _ID42358::_ID1945( "hostile_stealthkill_player" );
    level._ID30895["generic"]["smoking_reach"] = %parabolic_leaning_guy_smoking_idle;
    level._ID30895["generic"]["smoking"][0] = %parabolic_leaning_guy_smoking_idle;
    level._ID30895["generic"]["smoking"][1] = %parabolic_leaning_guy_smoking_twitch;
    level._ID30895["generic"]["smoking_react"] = %parabolic_leaning_guy_react;
    level._ID30895["generic"]["bored_idle_reach"] = %patrol_bored_idle;
    level._ID30895["generic"]["bored_idle"][0] = %patrol_bored_idle;
    level._ID30895["generic"]["bored_idle"][1] = %patrol_bored_twitch_bug;
    level._ID30895["generic"]["bored_idle"][2] = %patrol_bored_twitch_stretch;
    level._ID30895["generic"]["bored_alert"] = %exposed_idle_twitch_v4;
    level._ID30895["generic"]["bored_cell_loop"][0] = %patrol_bored_idle_cellphone;
    level._ID30895["generic"]["oilrig_balcony_smoke_idle"][0] = %h2_oilrig_smoker_idle;
    level._ID30895["generic"]["railing_death"] = %h2_oilrig_smoker_death;
    _ID42259::_ID2058( "generic", "detach_hat", ::helmetpop_wrapper, "railing_death", ( 0, 0, 0 ) );
    _ID42259::_ID2058( "generic", "detach cig", _ID42358::_ID10617 );
    level._ID30895["generic"]["pronehide_dive"] = %hunted_dive_2_pronehide_v1;
    level._ID30895["generic"]["pronehide_idle"][0] = %hunted_pronehide_idle_v1;
    level._ID30895["generic"]["pronehide_idle_frame"] = %hunted_pronehide_idle_v1;
    level._ID30895["generic"]["prone_2_run_roll"] = %hunted_pronehide_2_stand_v1;
    level._ID30895["generic"]["fastrope_fall"] = %fastrope_fall;
    level._ID30895["generic"]["oilrig_rappel_over_rail_R"] = %oilrig_rappel_over_rail_r;
    level._ID30895["generic"]["oilrig_rappel_2_crouch"] = %oilrig_rappel_2_crouch;
    _ID42259::_ID2058( "generic", "over_solid", maps\oilrig::_ID45259, "oilrig_rappel_over_rail_R" );
    _ID42259::_ID2058( "generic", "over_solid", maps\oilrig::_ID45259, "oilrig_rappel_2_crouch" );
    _ID42259::_ID2058( "generic", "feet_on_ground", maps\oilrig::_ID43147, "oilrig_rappel_over_rail_R" );
    _ID42259::_ID2058( "generic", "feet_on_ground", maps\oilrig::_ID43147, "oilrig_rappel_2_crouch" );
    level._ID30895["generic"]["patrol_walk"] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["patrol_walk_twitch"] = %patrol_bored_patrolwalk_twitch;
    level._ID30895["generic"]["patrol_stop"] = %patrol_bored_walk_2_bored;
    level._ID30895["generic"]["patrol_start"] = %patrol_bored_2_walk;
    level._ID30895["generic"]["patrol_turn180"] = %patrol_bored_2_walk_180turn;
    level._ID30895["generic"]["patrol_idle_1"] = %patrol_bored_idle;
    level._ID30895["generic"]["patrol_idle_2"] = %patrol_bored_idle_smoke;
    level._ID30895["generic"]["patrol_idle_3"] = %patrol_bored_idle_cellphone;
    level._ID30895["generic"]["patrol_idle_4"] = %patrol_bored_twitch_bug;
    level._ID30895["generic"]["patrol_idle_5"] = %patrol_bored_twitch_checkphone;
    level._ID30895["generic"]["patrol_idle_6"] = %patrol_bored_twitch_stretch;
    level._ID30895["generic"]["patrol_idle_smoke"] = %patrol_bored_idle_smoke;
    level._ID30895["generic"]["patrol_idle_checkphone"] = %patrol_bored_twitch_checkphone;
    level._ID30895["generic"]["patrol_idle_stretch"] = %patrol_bored_twitch_stretch;
    level._ID30895["generic"]["patrol_idle_phone"] = %patrol_bored_idle_cellphone;
    level._ID30895["generic"]["patrol_jog"] = %patrol_jog;
    level._ID30895["generic"]["combat_jog"] = %combat_jog;
    level._ID30895["generic"]["patrol_jog_turn180"] = %patrol_jog_360;
    level._ID30895["generic"]["stealth_jog"] = %patrol_jog;
    level._ID30895["generic"]["stealth_walk"] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["breach_react_desk_v1"] = %breach_react_desk_v1;
    level._ID30895["generic"]["breach_chair_reaction_v1"] = %breach_chair_reaction_v1;
    level._ID30895["generic"]["execution_shield_soldier"] = %execution_shield_soldier;
    level._ID30895["generic"]["execution_onknees_soldier"] = %execution_onknees_soldier;
    level._ID30895["generic"]["patrol_bored_react_walkstop"] = %patrol_bored_react_walkstop;
    level._ID30895["generic"]["breach_react_blowback_v1"] = %breach_react_blowback_v1;
    level._ID30895["generic"]["breach_react_push_guy1"] = %breach_react_push_guy1;
    level._ID30895["generic"]["breach_react_push_guy2"] = %breach_react_push_guy2;
    level._ID30895["generic"]["breach_react_desk_v4"] = %breach_react_desk_v4;
    level._ID30895["generic"]["execution_onknees2_soldier"] = %execution_onknees2_soldier;
    level._ID30895["generic"]["execution_slamwall_soldier"] = %execution_slamwall_soldier;
    level._ID30895["generic"]["execution_knife_soldier"] = %execution_knife_soldier;
    level._ID30895["generic"]["breach_react_guntoss_v2_guy2"] = %breach_react_guntoss_v2_guy2;
    level._ID30895["generic"]["breach_react_knife_charge"] = %breach_react_knife_charge;
    level._ID30895["generic"]["breach_react_knife_charge_death"] = %death_shotgun_back_v1;
    level._ID30895["generic"]["breach_react_guntoss_v2_guy1"] = %breach_react_guntoss_v2_guy1;
    level._ID30895["generic"]["breach_react_desk_v7"] = %breach_react_desk_v7;
    level._ID30895["generic"]["hostage_stand_fall"] = %hostage_stand_fall;
    level._ID30895["generic"]["hostage_stand_fall_idle"][0] = %hostage_knees_idle;
    level._ID30895["generic"]["hostage_stand_fall_idle"][1] = %hostage_knees_twitch;
    level._ID30895["generic"]["friendly_manhandle_h2"][0] = %cqb_stand_idle;
    level._ID30895["generic"]["hostage_stand_fall_manhandled"] = %h2_room1a_takedown_hostagea;
    level._ID30895["generic"]["hostage_stand_fall_manhandled_idle"][0] = %h2_room1a_takedown_hostagea_idle;
    level._ID30895["generic"]["hostage_stand_fall_manhandledV2"] = %h2_room1b_takedown_hostage;
    level._ID30895["generic"]["hostage_stand_fall_manhandled_idleV2"][0] = %h2_room1b_takedown_hostage_idle;
    level._ID30895["generic"]["execution_shield_hostage"] = %execution_shield_hostage;
    level._ID30895["generic"]["execution_shield_hostage_death"] = %execution_shield_hostage_death;
    level._ID30895["generic"]["execution_shield_hostage_survives"] = %execution_shield_hostage_survives;
    level._ID30895["generic"]["execution_shield_hostage_idle"][0] = %hostage_knees_idle;
    level._ID30895["generic"]["execution_onknees_hostage"] = %execution_onknees_hostage;
    level._ID30895["generic"]["execution_onknees_hostage_death"] = %execution_onknees_hostage_death;
    level._ID30895["generic"]["execution_onknees_hostage_idle"][0] = %execution_onknees_hostage_survives;
    level._ID30895["generic"]["execution_onknees_hostage_manhandled_guarded"] = %h2_room1a_takedown_hostageb;
    level._ID30895["generic"]["execution_onknees_hostage_manhandled_guarded_idle"][0] = %h2_room1a_takedown_hostageb_idle;
    level._ID30895["generic"]["execution_onknees2_hostage"] = %execution_onknees2_hostage;
    level._ID30895["generic"]["execution_onknees2_hostage_survives"] = %execution_onknees2_hostage_survives;
    level._ID30895["generic"]["execution_onknees2_hostage_death"] = %execution_onknees2_hostage_death;
    level._ID30895["generic"]["execution_onknees2_hostage_manhandled"] = %h2_room2b_takedown_hostage1;
    level._ID30895["generic"]["execution_onknees2_hostage_manhandled_part2B"] = %h2_room2b_takedown_hostage1_part2;
    level._ID30895["generic"]["execution_onknees2_hostage_manhandled_idle"][0] = %h2_room2b_takedown_hostage1_idle;
    level._ID30895["generic"]["execution_onknees2_hostage_manhandledV2"] = %h2_room2a_takedown_hostage1;
    level._ID30895["generic"]["execution_onknees2_hostage_manhandled_part2AV2"] = %h2_room2a_takedown_hostage1_part2;
    level._ID30895["generic"]["execution_onknees2_hostage_manhandled_idleV2"][0] = %h2_room2a_takedown_hostage1_idle;
    level._ID30895["generic"]["execution_slamwall_hostage"] = %execution_slamwall_hostage;
    level._ID30895["generic"]["execution_slamwall_hostage_death"] = %execution_slamwall_hostage_death;
    level._ID30895["generic"]["execution_slamwall_hostage_idle"][0] = %hostage_stand_idle;
    level._ID30895["generic"]["execution_slamwall_hostage_manhandled"] = %h2_room2a_takedown_hostage2;
    level._ID30895["generic"]["execution_slamwall_hostage_manhandled_part2A"] = %h2_room2a_takedown_hostage2_part2;
    level._ID30895["generic"]["execution_slamwall_hostage_manhandled_idle"][0] = %h2_room2a_takedown_hostage2_idle;
    level._ID30895["generic"]["execution_slamwall_hostage_manhandled_prepare"] = %takedown_room2a_hostagea_flee;
    level._ID30895["generic"]["execution_knife_hostage"] = %execution_knife_hostage;
    level._ID30895["generic"]["execution_knife_hostage_death"] = %execution_knife_hostage_death;
    level._ID30895["generic"]["execution_knife_hostage_idle"][0] = %hostage_knees_idle;
    level._ID30895["generic"]["execution_knife_hostage_manhandled"] = %h2_room2b_takedown_hostage2;
    level._ID30895["generic"]["execution_knife_hostage_manhandled_part2B"] = %h2_room2b_takedown_hostage2_part2;
    level._ID30895["generic"]["execution_knife_hostage_manhandled_idle"][0] = %h2_room2b_takedown_hostage2_idle;
    level._ID30895["generic"]["hostage_chair_twitch1"] = %h2_hostage_chair_breachreact1;
    level._ID30895["generic"]["hostage_chair_twitch1_idle"][0] = %h2_hostage_chair_idle1;
    level._ID30895["generic"]["hostage_chair_twitch1_idle"][1] = %h2_hostage_chair_twitch;
    level._ID30895["generic"]["hostage_chair_twitch2"] = %h2_hostage_chair_breachreact2;
    level._ID30895["generic"]["hostage_chair_twitch2_idle"][0] = %h2_hostage_chair_idle2;
    level._ID30895["generic"]["hostage_chair_twitch2_idle"][1] = %h2_hostage_chair_twitch2;
    level._ID30895["generic"]["hostage_chair_twitch3"] = %h2_hostage_chair_breachreact3;
    level._ID30895["generic"]["hostage_chair_twitch3_idle"][0] = %h2_hostage_chair_idle3;
    level._ID30895["generic"]["hostage_chair_twitch3_idle"][1] = %h2_hostage_chair_listen3;
    level._ID30895["generic"]["hostage_chair_twitch4"] = %h2_hostage_chair_breachreact4;
    level._ID30895["generic"]["hostage_chair_twitch4_idle"][0] = %h2_hostage_chair_idle4;
    level._ID30895["generic"]["hostage_chair_twitch4_idle"][1] = %h2_hostage_chair_twitch4;
    level._ID30895["generic"]["h2_hostage_chair_breachdeath"] = %h2_hostage_chair_breachdeath;
    level._ID30895["generic"]["h2_hostage_chair_breachdeath_02"] = %h2_hostage_chair_breachdeath_02;
    level._ID30895["generic"]["exposed_idle_reactA"] = %exposed_idle_reacta;
    level._ID30895["generic"]["hostage_stand_react_front"] = %hostage_stand_react_front;
    level._ID30895["generic"]["hostage_stand_react_front_idle"][0] = %hostage_stand_idle;
    level._ID30895["generic"]["hostage_stand_react_front_manhandled"] = %h2_room1alt_takedown_hostage;
    level._ID30895["generic"]["hostage_stand_react_front_manhandled_prepare_idle"][0] = %h2_room1alt_takedown_hostage_pre_idle;
    level._ID30895["generic"]["hostage_stand_react_front_manhandled_idle"][0] = %h2_room1alt_takedown_hostage_idle;
    level._ID30895["generic"]["takedown_room1B_soldier"] = %h2_room1b_takedown_soldier;
    level._ID30895["generic"]["takedown_room1B_soldier_idle"][0] = %h2_room1b_takedown_soldier_idle;
    level._ID30895["generic"]["takedown_room1A_soldier"] = %h2_room1a_takedown_soldier;
    level._ID30895["generic"]["takedown_room1A_soldier_idle"][0] = %h2_room1a_takedown_soldier_idle;
    level._ID30895["generic"]["takedown_room2A_soldier1"] = %h2_room2a_takedown_soldier1;
    level._ID30895["generic"]["takedown_room2A_soldier1_part2A"] = %h2_room2a_takedown_soldier1_part2;
    level._ID30895["generic"]["takedown_room2A_soldier2"] = %h2_room2a_takedown_soldier2;
    level._ID30895["generic"]["takedown_room2A_soldier2_part2A"] = %h2_room2a_takedown_soldier2_part2;
    level._ID30895["generic"]["takedown_room2B_soldier1"] = %h2_room2b_takedown_soldier2;
    level._ID30895["generic"]["takedown_room2B_soldier1_part2B"] = %h2_room2b_takedown_soldier2_part2;
    level._ID30895["generic"]["takedown_room2B_soldier2"] = %h2_room2b_takedown_soldier1;
    level._ID30895["generic"]["takedown_room2B_soldier2_part2B"] = %h2_room2b_takedown_soldier1_part2;
    level._ID30895["generic"]["takedown_room1Alt_soldier"] = %h2_room1alt_takedown_soldier;
    level._ID30895["generic"]["takedown_room1Alt_soldier_idle"][0] = %h2_room1alt_takedown_soldier_idle;
    _ID42259::_ID2058( "generic", "takedown", maps\oilrig_aud::_ID48358, "takedown_room2A_soldier1" );
    _ID42259::_ID2058( "generic", "open_door", ::_ID25891, "takedown_room2A_soldier1_part2A", "doorOpen1" );
    _ID42259::_ID2058( "generic", "open_door", ::_ID25891, "takedown_room2B_soldier2_part2B", "doorOpen2" );
    level._ID30895["generic"]["c4bodywall"] = %h2_oilrig_hidingthec4_c4bodywall_deadbody;
    level._ID30895["generic"]["c4bodyground"] = %h2_oilrig_hidingthec4_c4bodyground_deadbody;
    level._ID30895["generic"]["c4bodyground2"] = %h2_oilrig_hidingthec4_c4bodyground2_deadbody;
    level._ID30895["generic"]["execution_hostile2_death"] = %h2_oilrig_hidingthec4_c4bodyground2_deadbody_fall;
    level._ID30895["soap"]["stairs_turn"] = %h2_oilrig_quickturn_stairs_soap;
}

_ID10742()
{
    level._ID30908["oilrig_sbc_drydock"] = "oilrig_sbc_drydock";
    level._ID30908["oilrig_sbo_fullpressure"] = "oilrig_sbo_fullpressure";
    level._ID30908["oilrig_sbc_deployment"] = "oilrig_sbc_deployment";
    level._ID30908["oilrig_sbo_tm1away"] = "oilrig_sbo_tm1away";
    level._ID30908["oilrig_sbc_ussdallas"] = "oilrig_sbc_ussdallas";
    level._ID30908["oilrig_sbc_tm2objective"] = "oilrig_sbc_tm2objective";
    level._ID30908["oilrig_sbo_zerooneniner"] = "oilrig_sbo_zerooneniner";
    level._ID30908["oilrig_sbo_depth26"] = "oilrig_sbo_depth26";
    level._ID30908["oilrig_sbo_depth20"] = "oilrig_sbo_depth20";
    level._ID30909["hostile_stealthkill_friendly"]["oilrig_mrc1_killyou"] = "oilrig_mrc1_killyou";
    level._ID30909["hostile_stealthkill_friendly"]["oilrig_mrc1_givemeone"] = "oilrig_mrc1_givemeone";
    level._ID30909["hostile_stealthkill_player"]["oilrig_mrc2_foff"] = "oilrig_mrc2_foff";
    level._ID30909["hostile_stealthkill_friendly"]["oilrig_mrc1_limoallday"] = "oilrig_mrc1_limoallday";
    level._ID30909["hostile_stealthkill_player"]["oilrig_mrc2_complain"] = "oilrig_mrc2_complain";
    level._ID30909["hostile_stealthkill_friendly"]["oilrig_mrc1_theitalians"] = "oilrig_mrc1_theitalians";
    level._ID30909["hostile_stealthkill_player"]["oilrig_mrc2_noclue"] = "oilrig_mrc2_noclue";
    level._ID30909["hostile_stealthkill_friendly"]["oilrig_mrc1_cheeseburger"] = "oilrig_mrc1_cheeseburger";
    level._ID30909["hostile_stealthkill_player"]["oilrig_mrc2_tarantino"] = "oilrig_mrc2_tarantino";
    level._ID30909["hostile_stealthkill_friendly"]["oilrig_mrc1_paywell"] = "oilrig_mrc1_paywell";
    level._ID30909["hostile_stealthkill_player"]["oilrig_mrc2_careless"] = "oilrig_mrc2_careless";
    level._ID30909["hostile_stealthkill_friendly"]["oilrig_mrc1_patrolchange"] = "oilrig_mrc1_patrolchange";
    level._ID30908["oilrig_mrc3_cheeseburger"] = "oilrig_mrc3_cheeseburger";
    level._ID30908["oilrig_mrc2_tarantino"] = "oilrig_mrc2_tarantino";
    level._ID30908["oilrig_mrc1_paywell"] = "oilrig_mrc1_paywell";
    level._ID30908["oilrig_mrc2_careless"] = "oilrig_mrc2_careless";
    level._ID30908["oilrig_mrc1_patrolchange"] = "oilrig_mrc1_patrolchange";
    level._ID30908["oilrig_nsl_outtogether_00"] = "oilrig_nsl_outtogether";
    level._ID30908["oilrig_nsl_outtogether_01"] = "oilrig_nsl_sametime";
    level._ID30908["oilrig_nsl_outtogether_02"] = "oilrig_nsl_bothout";
    level._ID30908["oilrig_nsl_outtogether_03"] = "oilrig_nsl_inposition";
    level._ID30908["oilrig_nsl_sect1alpha"] = "oilrig_nsl_sect1alpha";
    level._ID30908["oilrig_sbc_rogerhtlsix"] = "oilrig_sbc_rogerhtlsix";
    level._ID30908["oilrig_ns1_visbyrailing"] = "oilrig_ns1_visbyrailing";
    level._ID30908["oilrig_nsl_suppweapons"] = "oilrig_nsl_suppweapons";
    level._ID30908["oilrig_nsl_readyweapons"] = "oilrig_nsl_readyweapons";
    level._ID30908["oilrig_nsl_moveup2"] = "oilrig_nsl_moveup2";
    level._ID30908["oilrig_nsl_keepittight"] = "oilrig_nsl_keepittight";
    level._ID30908["oilrig_nsl_eyesopen"] = "oilrig_nsl_eyesopen";
    level._ID30908["oilrig_nsl_getready"] = "oilrig_nsl_getready";
    level._ID30908["oilrig_sbc_civilhostages"] = "oilrig_sbc_civilhostages";
    level._ID30908["oilrig_nsl_tm1tobreach"] = "oilrig_nsl_tm1tobreach";
    level._ID30908["oilrig_nsl_framecharge"] = "oilrig_nsl_framecharge";
    level._ID30908["oilrig_nsl_chargeondoor"] = "oilrig_nsl_chargeondoor";
    level._ID30908["oilrig_nsl_blowdoors"] = "oilrig_nsl_blowdoors";
    level._ID30908["oilrig_nsl_intopostion"] = "oilrig_nsl_intopostion";
    level._ID30908["breach_nag_00"] = "oilrig_nsl_framecharge";
    level._ID30908["breach_nag_01"] = "oilrig_nsl_chargeondoor";
    level._ID30908["breach_nag_02"] = "oilrig_nsl_blowdoors";
    level._ID30908["breach_nag_03"] = "oilrig_nsl_intopostion";
    level._ID30908["oilrig_ns1_inposition"] = "oilrig_ns1_inposition";
    level._ID30908["oilrig_ns2_inposition"] = "oilrig_ns2_inposition";
    level._ID30908["oilrig_ns1_readybreach"] = "oilrig_ns1_readybreach";
    level._ID30908["oilrig_ns2_readybreach"] = "oilrig_ns2_readybreach";
    level._ID30908["oilrig_ns1_inposbreach"] = "oilrig_ns1_inposbreach";
    level._ID30908["oilrig_ns2_inposbreach"] = "oilrig_ns2_inposbreach";
    level._ID30908["oilrig_ns1_breaching"] = "oilrig_ns1_breaching";
    level._ID30908["oilrig_ns2_breaching"] = "oilrig_ns2_breaching";
    level._ID30908["oilrig_ns1_plantingcharge"] = "oilrig_ns1_plantingcharge";
    level._ID30908["oilrig_ns2_plantingcharge"] = "oilrig_ns2_plantingcharge";
    level._ID30908["oilrig_ns1_plantfrmcharge"] = "oilrig_ns1_plantfrmcharge";
    level._ID30908["oilrig_ns2_plantfrmcharge"] = "oilrig_ns2_plantfrmcharge";
    level._ID30908["oilrig_ns1_watchfieldfire"] = "oilrig_ns1_watchfieldfire";
    level._ID30908["oilrig_ns2_checktargets"] = "oilrig_ns2_checktargets";
    level._ID30908["oilrig_ns1_onmarkgo"] = "oilrig_ns1_onmarkgo";
    level._ID30908["oilrig_ns1_onmymark"] = "oilrig_ns1_onmymark";
    level._ID30908["oilrig_ns1_go"] = "oilrig_ns1_go";
    level._ID30908["oilrig_ns2_onmarkgo"] = "oilrig_ns2_onmarkgo";
    level._ID30908["oilrig_ns2_onmymark"] = "oilrig_ns2_onmymark";
    level._ID30908["oilrig_ns2_go"] = "oilrig_ns2_go";
    level._ID30908["oilrig_ns1_breachwatchfire"] = "oilrig_ns1_breachwatchfire";
    level._ID30908["oilrig_ns2_breachchecktarg"] = "oilrig_ns2_breachchecktarg";
    level._ID30908["oilrig_roomclear_ghost_00"] = "oilrig_ns1_wereclear";
    level._ID30908["oilrig_roomclear_ghost_01"] = "oilrig_ns1_roomclear";
    level._ID30908["oilrig_roomclear_ghost_02"] = "oilrig_ns1_clear";
    level._ID30908["oilrig_roomclear_ghost_03"] = "oilrig_ns2_wereclear";
    level._ID30908["oilrig_roomclear_ghost_04"] = "oilrig_ns2_roomclear";
    level._ID30908["oilrig_roomclear_ghost_05"] = "oilrig_ns2_clear";
    level._ID30908["oilrig_nsl_wereclear"] = "oilrig_nsl_wereclear";
    level._ID30908["oilrig_nsl_roomclear"] = "oilrig_nsl_roomclear";
    level._ID30908["oilrig_nsl_clear"] = "oilrig_nsl_clear";
    level._ID30908["oilrig_hostsec_00"] = "oilrig_nsl_preciouscargo";
    level._ID30908["oilrig_hostsec_01"] = "oilrig_nsl_hostsec";
    level._ID30908["oilrig_sbc_secandevac"] = "oilrig_sbc_secandevac";
    level._ID30909["generic"]["oilrig_hst1_5lang"] = "oilrig_hst1_5lang";
    level._ID30909["generic"]["oilrig_hst1_5lang2"] = "oilrig_hst1_5lang2";
    level._ID30908["oilrig_deck2_movenag_start"] = "oilrig_nsl_moveupstairs";
    level._ID30908["oilrig_deck2_movenag_00"] = "oilrig_nsl_watchsectors";
    level._ID30908["oilrig_deck2_movenag_01"] = "oilrig_nsl_deck2";
    level._ID30908["oilrig_deck2_movenag_02"] = "oilrig_nsl_letsmove";
    level._ID30908["room1_manhandler_nag_00"] = "oilrig_ns2_gettopside";
    level._ID30908["room1_manhandler_nag_01"] = "oilrig_ns2_regrouptopside";
    level._ID30908["room1_manhandler_nag_03"] = "oilrig_ns2_moveup";
    level._ID30908["room1_manhandler_nag_02"] = "oilrig_ns2_getmoving";
    level._ID30908["oilrig_sbc_lowprofile"] = "oilrig_sbc_lowprofile";
    level._ID30908["oilrig_nsl_rogerthat"] = "oilrig_nsl_rogerthat";
    level._ID30908["oilrig_heloapproach_00"] = "oilrig_ns1_heloapproach";
    level._ID30908["oilrig_heloapproach_01"] = "oilrig_ns2_helogetdown";
    level._ID30908["oilrig_heloapproach_02"] = "oilrig_ns1_chopperinbound";
    level._ID30908["oilrig_heloapproach_03"] = "oilrig_nsl_getouttasight";
    level._ID30908["dialogue_heli_all_clear_00"] = "oilrig_nsl_okmove";
    level._ID30908["dialogue_heli_all_clear_01"] = "oilrig_nsl_move";
    level._ID30908["dialogue_heli_all_clear_02"] = "oilrig_nsl_allclearmove";
    level._ID30908["dialogue_heli_spotted_00"] = "oilrig_nsl_beenspotted";
    level._ID30908["dialogue_heli_spotted_01"] = "oilrig_nsl_compsomised";
    level._ID30908["dialogue_heli_spotted_03"] = "oilrig_nsl_detected";
    level._ID30908["oilrig_sbc_hostatposition"] = "oilrig_sbc_hostatposition";
    level._ID30909["soap"]["oilrig_nsl_copythat"] = "oilrig_nsl_copythat";
    level._ID30901["soap"]["oilrig_nsl_copythat"] = %oilrig_nsl_copythat;
    level._ID30909["soap"]["oilrig_nsl_strongholdsec"] = "oilrig_nsl_strongholdsec";
    level._ID30901["soap"]["oilrig_nsl_strongholdsec"] = %oilrig_nsl_strongholdsec;
    level._ID30908["oilrig_ns1_havecompany"] = "oilrig_ns1_havecompany";
    level._ID30908["oilrig_enc_maerhoffer"] = "oilrig_enc_maerhoffer";
    level._ID30908["oilrig_enc_team5"] = "oilrig_enc_team5";
    level._ID30909["soap"]["oilrig_nsl_goingloud"] = "oilrig_nsl_goingloud";
    level._ID30901["soap"]["oilrig_nsl_goingloud"] = %oilrig_nsl_goingloud;
    level._ID30908["oilrig_nsl_plantc4"] = "oilrig_nsl_plantc4";
    level._ID30908["oilrig_nsl_donthavetime"] = "oilrig_nsl_donthavetime";
    level._ID30908["oilrig_ns1_forasurprise"] = "oilrig_ns1_forasurprise";
    level._ID30908["oilrig_ns2_c4placed"] = "oilrig_ns2_c4placed";
    level._ID30908["oilrig_nsl_ambushthem"] = "oilrig_nsl_ambushthem";
    level._ID30908["oilrig_nsl_elevatedposwait"] = "oilrig_nsl_elevatedposwait";
    level._ID30908["oilrig_nsl_holdfire"] = "oilrig_nsl_holdfire";
    _ID42259::_ID2058( "generic", "soap_scaffold_vo_01", ::soap_scaffold_vo, "soap_go_up_scaffolding", "oilrig_nsl_holdfire" );
    level._ID30908["oilrig_nsl_standby1"] = "oilrig_nsl_standby1";
    _ID42259::_ID2058( "generic", "soap_scaffold_vo_02", ::soap_scaffold_vo, "soap_go_up_scaffolding", "oilrig_nsl_standby1" );
    level._ID30908["oilrig_nsl_standby2"] = "oilrig_nsl_standby2";
    level._ID30895["soap"]["oilrig_nsl_standby2"] = %h2_oilrig_soap_standbyvo;
    level._ID30908["oilrig_mrc3_alarm"] = "oilrig_mrc3_alarm";
    level._ID30908["oilrig_nsl_doit"] = "oilrig_nsl_doit";
    level._ID30895["soap"]["oilrig_nsl_doit"] = %h2_oilrig_soap_planbvo;
    level._ID30908["oilrig_nsl_coverblown"] = "oilrig_nsl_coverblown";
    level._ID30908["oilrig_sbc_possibleexpl"] = "oilrig_sbc_possibleexpl";
    level._ID30908["oilrig_sbc_secthatloc"] = "oilrig_sbc_secthatloc";
    level._ID30908["oilrig_nsl_callforexfil"] = "oilrig_nsl_callforexfil";
    level._ID30908["oilrig_nsl_moveup"] = "oilrig_nsl_moveup";
    level._ID30908["oilrig_nsl_move2"] = "oilrig_nsl_move2";
    level._ID30908["oilrig_nsl_centcom"] = "oilrig_nsl_centcom";
    level._ID30908["oilrig_sbc_gettolz"] = "oilrig_sbc_gettolz";
    level._ID30908["oilrig_nsl_copythat2"] = "oilrig_nsl_copythat2";
    level._ID30908["oilrig_ambush_helo_alert_00"] = "oilrig_ns1_getdown";
    level._ID30908["oilrig_ambush_helo_alert_01"] = "oilrig_ns2_enemyhelo";
    level._ID30908["oilrig_ambush_helo_alert_02"] = "oilrig_ns1_attackheli";
    level._ID30908["oilrig_nsl_splitup"] = "oilrig_nsl_splitup";
    level._ID30908["oilrig_nsl_outflank"] = "oilrig_nsl_outflank";
    level._ID30908["oilrig_nsl_clocksticking"] = "oilrig_nsl_clocksticking";
    level._ID30908["oilrig_nsl_rescuethemselves"] = "oilrig_nsl_rescuethemselves";
    level._ID30908["oilrig_nsl_takeoutbird_00"] = "oilrig_nsl_takeoutbird1";
    level._ID30908["oilrig_nsl_takeoutbird_01"] = "oilrig_nsl_takeoutbird2";
    level._ID30908["oilrig_nsl_takeoutbird_02"] = "oilrig_nsl_takeoutbird3";
    level._ID30908["oilrig_nsl_takeoutbird_03"] = "oilrig_nsl_takeoutbird4";
    level._ID30908["oilrig_nsl_takeoutbird_04"] = "oilrig_nsl_takeoutbird5";
    level._ID30908["oilrig_nsl_takeoutbird_withrocket_00"] = "oilrig_nsl_takeoutbird6";
    level._ID30908["oilrig_nsl_takeoutbird_withrocket_01"] = "oilrig_nsl_takeoutbird7";
    level._ID30908["oilrig_nsl_takeoutbird_withrocket_02"] = "oilrig_nsl_takeoutbird8";
    level._ID30908["oilrig_nsl_takeoutbird_withrocket_03"] = "oilrig_nsl_takeoutbird9";
    level._ID30908["oilrig_ns2_fireat4_00"] = "oilrig_ns2_fireat4";
    level._ID30908["oilrig_ns2_fireat4_01"] = "oilrig_ns3_firemissile";
    level._ID30908["oilrig_ns2_fireat4_02"] = "oilrig_ns2_clearshot";
    level._ID30908["oilrig_use_thermal_00"] = "oilrig_nsl_seethrusmoke";
    level._ID30908["oilrig_use_thermal_01"] = "oilrig_nsl_gettarget";
    level._ID30908["oilrig_find_thermal_00"] = "oilrig_nsl_pickoff";
    level._ID30908["oilrig_find_thermal_01"] = "oilrig_ns3_switching";
    level._ID30908["oilrig_sbc_hostconfirmed"] = "oilrig_sbc_hostconfirmed";
    level._ID30908["oilrig_nsl_behinddoors"] = "oilrig_nsl_behinddoors";
    level._ID30908["oilrig_heli_grats_00"] = "oilrig_ns2_tacoman";
    level._ID30908["oilrig_heli_grats_01"] = "oilrig_ns3_tacoman";
    level._ID30908["oilrig_heli_grats_02"] = "oilrig_ns2_goodshot";
    level._ID30908["oilrig_heli_grats_03"] = "oilrig_ns3_lbneutralized";
    level._ID30908["oilrig_heli_grats_04"] = "oilrig_ns2_nicework";
    level._ID30908["oilrig_heli_grats_05"] = "oilrig_ns3_niceshot";
    level._ID30908["oilrig_fueltanks_00"] = "oilrig_ns3_aimfueltanks";
    level._ID30908["oilrig_fueltanks_01"] = "oilrig_ns2_shoottanks";
    level._ID30908["oilrig_fueltanks_02"] = "oilrig_ns3_aimfuelstorage";
    level._ID30908["oilrig_fueltanks_03"] = "oilrig_nsl_firefuelstorage";
    level._ID30908["oilrig_enemy_smoke_00"] = "oilrig_ns2_popsmoke";
    level._ID30908["oilrig_enemy_smoke_01"] = "oilrig_ns2_smokescreen";
    level._ID30908["oilrig_enemy_smoke_02"] = "oilrig_ns3_enempop";
    level._ID30908["oilrig_enemy_smoke_03"] = "oilrig_ns3_smokescreen";
    level._ID30908["oilrig_enemy_smoke_04"] = "oilrig_ns2_hostpopsmoke";
    level._ID30908["oilrig_nsl_allhostsec"] = "oilrig_nsl_allhostsec";
    level._ID30908["oilrig_sbc_phase2"] = "oilrig_sbc_phase2";
    level._ID30908["oilrig_rmv_goplat"] = "oilrig_rmv_goplat";
    level._ID30908["oilrig_gm1_copies"] = "oilrig_gm1_copies";
    level._ID30908["oilrig_f15_twof15s"] = "oilrig_f15_twof15s";
    level._ID30908["oilrig_rmv_bluesky"] = "oilrig_rmv_bluesky";
    level._ID30908["oilrig_f15_copies"] = "oilrig_f15_copies";
    level._ID30908["oilrig_rmv_localairspace"] = "oilrig_rmv_localairspace";
    level._ID30908["oilrig_gm1_hunteractual"] = "oilrig_gm1_hunteractual";
    level._ID30908["oilrig_rmv_standby"] = "oilrig_rmv_standby";
    level._ID30908["oilrig_rmv_samsitesneut"] = "oilrig_rmv_samsitesneut";
    level._ID30909["oilrig_gm1_samssecure"] = "oilrig_gm1_samssecure";
    level._ID30909["oilrig_mrc_killhostages_room_100_00"] = "oilrig_mrc3_killhostages2";
    level._ID30909["oilrig_mrc_killhostages_room_100_01"] = "oilrig_mrc2_intruders";
    level._ID30909["oilrig_mrc_killhostages_room_200_00"] = "oilrig_mrc4_executethem";
    level._ID30909["oilrig_mrc_killhostages_room_200_01"] = "oilrig_mrc1_killthem";
    level._ID30909["oilrig_merc_chatter_00"] = "oilrig_mrc1_movingin";
    level._ID30909["oilrig_merc_chatter_01"] = "oilrig_mrc1_watchmyback";
    level._ID30909["oilrig_merc_chatter_02"] = "oilrig_mrc1_teammoving";
    level._ID30909["oilrig_merc_chatter_03"] = "oilrig_mrc1_standby";
    level._ID30909["oilrig_merc_chatter_04"] = "oilrig_mrc1_onme";
    level._ID30909["oilrig_merc_chatter_05"] = "oilrig_mrc1_takepoint";
    level._ID30909["oilrig_merc_chatter_06"] = "oilrig_mrc1_watchcorners";
    level._ID30909["oilrig_merc_chatter_07"] = "oilrig_mrc2_movingin";
    level._ID30909["oilrig_merc_chatter_08"] = "oilrig_mrc2_watchmyback";
    level._ID30909["oilrig_merc_chatter_09"] = "oilrig_mrc2_teammoving";
    level._ID30909["oilrig_merc_chatter_10"] = "oilrig_mrc2_standby";
    level._ID30909["oilrig_merc_chatter_11"] = "oilrig_mrc2_onme";
    level._ID30909["oilrig_merc_chatter_12"] = "oilrig_mrc2_takepoint";
    level._ID30909["oilrig_merc_chatter_13"] = "oilrig_mrc2_watchcorners";
    level._ID30909["oilrig_merc_chatter_14"] = "oilrig_mrc3_movingin";
    level._ID30909["oilrig_merc_chatter_15"] = "oilrig_mrc3_watchmyback";
    level._ID30909["oilrig_merc_chatter_16"] = "oilrig_mrc3_teammoving";
    level._ID30909["oilrig_merc_chatter_17"] = "oilrig_mrc3_standby";
    level._ID30909["oilrig_merc_chatter_18"] = "oilrig_mrc3_onme";
    level._ID30909["oilrig_merc_chatter_19"] = "oilrig_mrc3_takepoint";
    level._ID30909["oilrig_merc_chatter_20"] = "oilrig_mrc3_watchcorners";
}
#using_animtree("player");

_ID27230()
{
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_udt_wet";
    level._ID30895["worldbody"]["smoker_takedown"] = %h2_oilrig_smoker_takedown_player;
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewhands_player_udt";
    level._ID30895["player_rig"]["underwater_player_start"] = %oilrig_sub_a_disembark_player;
    level._ID30895["player_rig"]["player_stealth_kill"] = %h2_oilrig_underwater_kill_player;
    _ID42259::_ID2057( "player_rig", "knife", "weapon_parabolic_knife", "tag_weapon_right", "player_stealth_kill" );
    _ID42259::_ID2059( "player_rig", "putback", "weapon_parabolic_knife", "tag_weapon_right", "player_stealth_kill" );
    _ID42259::_ID2058( "player_rig", "throat", _ID43617::_ID54291 );
    _ID42259::_ID2058( "player_rig", "", _ID43617::_ID47594 );
    _ID42259::_ID2058( "player_rig", "drips_right", _ID43617::_ID51649 );
    _ID42259::_ID2058( "player_rig", "exit_sub_tube", maps\oilrig_aud::_ID45335 );
    level._ID30895["player_rig"]["player_evac"] = %blackout_bh_evac_player;
    level._ID30895["worldbody"]["c4bodywall"] = %h2_oilrig_hidingthec4_c4bodywall_player;
    level._ID30895["worldbody"]["c4bodyground"] = %h2_oilrig_hidingthec4_c4bodyground_player;
    level._ID30895["worldbody"]["c4bodyground2"] = %h2_oilrig_hidingthec4_c4bodyground2_player;
    _ID42259::_ID2058( "worldbody", "c4_detach", ::_ID48187 );
    level._ID30895["worldbody"]["escape_in"] = %h2_oilrig_helipad_escape_player_in_alt;
    level._ID30895["worldbody"]["escape_idle"][0] = %h2_oilrig_helipad_escape_player_idle;
    level._ID30895["worldbody"]["escape_departure"] = %h2_oilrig_helipad_escape_player_departure;
    _ID42259::_ID2063( "worldbody", "gun_outofview", "player_switches_weapon_on_littlebird", "escape_departure" );
}

_ID48187( var_0 )
{
    level._ID794._ID49479._ID740 = var_0 gettagorigin( "tag_weapon_left" );
    level._ID794._ID49479._ID65 = var_0 gettagangles( "tag_weapon_left" );
    level._ID794._ID49479._ID25567 = level._ID794._ID49479._ID740;
    waittillframeend;
    var_0 detach( "weapon_c4", "tag_weapon_left" );
    level._ID794._ID49479 show();
}
#using_animtree("vehicles");

_ID43088()
{
    level._ID30895["sdv_01"]["intro_sequence"] = %oilrig_sdv_1;
    level._ID30895["sdv_02"]["intro_sequence"] = %oilrig_sdv_2;
    level._ID30900["submarine_01"] = #animtree;
    level._ID30900["sdv_01"] = #animtree;
    level._ID30900["sdv_02"] = #animtree;
}

_ID46517()
{
    level._ID30895["blackhawk"]["idle"][0] = %blackout_bh_evac_heli_idle;
    level._ID30895["blackhawk"]["landing"] = %blackout_bh_evac_heli_land;
    level._ID30895["blackhawk"]["take_off"] = %blackout_bh_evac_heli_takeoff;
    level._ID30895["blackhawk"]["rotors"] = %bh_rotors;
    level._ID30900["blackhawk"] = #animtree;
}

_ID40319()
{
    level._ID30900["attack_littlebird"] = #animtree;
    level._ID30895["attack_littlebird"]["front_react"] = %h2_littlebird_hit_front_react;
}
#using_animtree("generic_human");

_ID47964()
{
    level._ID30895["generic"]["oilrig_seal_surface_fins_off"] = %oilrig_seal_surface_fins_off;
    level._ID30895["generic"]["oilrig_seal_surface_mask_off"] = %oilrig_seal_surface_mask_off;
    level._ID30895["generic"]["oilrig_seal_surface_rebreather_off_guy1"] = %h2_oilrig_seal_surface_rebreather_off_guy1;
    level._ID30895["generic"]["oilrig_seal_surface_rebreather_off_guy2"] = %h2_oilrig_seal_surface_rebreather_off_guy2;
}

_ID53960()
{
    level._ID30895["generic"]["smoker_takedown"] = %h2_oilrig_smoker_takedown_npc;
    _ID42259::_ID2058( "generic", "detach_hat", ::helmetpop_wrapper, "smoker_takedown", ( 0, 0, 0 ) );
}

helmetpop_wrapper( var_0, var_1 )
{
    var_0 animscripts\death::_ID18467( var_1 );
}
#using_animtree("script_model");

_ID51458()
{
    level._ID30900["fins_off_oilrig_seal_surface_fins_off"] = #animtree;
    level._ID30895["fins_off_oilrig_seal_surface_fins_off"]["oilrig_seal_surface_fins_off_prop"] = %oilrig_seal_surface_fins_off_prop;
    level._ID30904["fins_off_oilrig_seal_surface_fins_off"] = "prop_seal_udt_flippers";
    level._ID30900["mask_off_oilrig_seal_surface_mask_off"] = #animtree;
    level._ID30895["mask_off_oilrig_seal_surface_mask_off"]["oilrig_seal_surface_mask_off_prop"] = %oilrig_seal_surface_mask_off_prop;
    level._ID30904["mask_off_oilrig_seal_surface_mask_off"] = "prop_seal_udt_goggles";
    level._ID30900["rebreather_off_oilrig_seal_surface_rebreather_off_guy1"] = #animtree;
    level._ID30895["rebreather_off_oilrig_seal_surface_rebreather_off_guy1"]["oilrig_seal_surface_rebreather_off_guy1_prop"] = %oilrig_seal_surface_rebreather_off_guy1_prop;
    level._ID30904["rebreather_off_oilrig_seal_surface_rebreather_off_guy1"] = "prop_seal_udt_draeger";
    level._ID30900["rebreather_off_oilrig_seal_surface_rebreather_off_guy2"] = #animtree;
    level._ID30895["rebreather_off_oilrig_seal_surface_rebreather_off_guy2"]["oilrig_seal_surface_rebreather_off_guy2_prop"] = %oilrig_seal_surface_rebreather_off_guy2_prop;
    level._ID30904["rebreather_off_oilrig_seal_surface_rebreather_off_guy2"] = "prop_seal_udt_draeger";
    level._ID30900["submarine_02"] = #animtree;
    level._ID30895["submarine_02"]["intro_sequence"] = %oilrig_sub_2;
    level._ID30904["submarine_02"] = "vehicle_submarine_nuclear";
    level._ID30900["animated_crane_hook"] = #animtree;
    level._ID30895["animated_crane_hook"]["idle"][0] = %h2_rec_exolab_crane_hook_idle;
    level._ID30904["animated_crane_hook"] = "h2_rec_exolab_crane_hook_animated";
}

_ID44366( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID42407::_ID35028( var_0 );
    var_4 hide();
    var_2 _ID42259::_ID3018( var_4, var_1 );
    _ID42237::_ID14413( var_3 );
    var_4 show();
    var_2 _ID42259::_ID3111( var_4, var_1 );
    var_4 hide();
}

_ID48809()
{
    level._ID30900["rope"] = #animtree;
    level._ID30895["rope"]["oilrig_rappelrope_2_crouch"] = %oilrig_rappelrope_2_crouch;
    level._ID30895["rope"]["oilrig_rappelrope_over_rail_R"] = %oilrig_rappelrope_over_rail_r;
}

_ID51444()
{
    level._ID43404 = [];
    level._ID43404 = _ID42237::_ID3293( level._ID43404, "exploder_script_model" );
    _ID47863();
}

_ID47863()
{
    level._ID30900["exploder_script_model"] = #animtree;
    level._ID30895["exploder_script_model"]["h2_oilrig_c4room_wires_anim"] = %h2_oilrig_c4room_wires_anim;
}

_ID50163()
{
    level._ID30900["h2_chains_02_without_attach_animated"] = #animtree;
    level._ID30904["h2_chains_02_without_attach_animated"] = "h2_chains_02_without_attach_animated";
    level._ID30895["h2_chains_02_without_attach_animated"]["idle"][0] = %h2_gulag_hanging_chains_03;
    level._ID30900["h2_cs_chain_accessories_hanging_loop_long"] = #animtree;
    level._ID30904["h2_cs_chain_accessories_hanging_loop_long"] = "h2_cs_chain_accessories_hanging_loop_long";
    level._ID30895["h2_cs_chain_accessories_hanging_loop_long"]["idle"][0] = %h2_gulag_hanging_chains_01;
}

weapon_anims()
{
    level._ID30900["weapon_m14"] = #animtree;
    level._ID30904["weapon_m14"] = "h2_weapon_m14ebr_scoped_arctic";
    level._ID30895["weapon_m14"]["escape_departure"] = %h2_oilrig_helipad_escape_weapon_departure;
}

_ID921()
{
    level._ID30900["door"] = #animtree;
    level._ID30895["door"]["doorOpen1"] = %h2_room2a_takedown_door;
    level._ID30895["door"]["doorOpen2"] = %h2_room2b_takedown_door;
}

_ID25891( var_0, var_1 )
{
    var_2 = getent( "door_deck1_animated", "targetname" );
    var_2 thread _ID42407::_ID27079( "scn_oilrig_open_deck1_door" );
    var_2 _ID42259::_ID3111( var_2, var_1 );
}

animated_palette()
{
    level._ID30900["h2_suspended_palette"] = #animtree;
    level._ID30904["h2_suspended_palette"] = "oilrig_suspended_palette_animated";
    level._ID30895["h2_suspended_palette"]["idle"][0] = %h2_suspended_palette_idle;
}

soap_scaffold_vo( var_0, var_1 )
{
    if ( !_ID42237::_ID14385( "ambush_c4_triggered" ) && !_ID42237::_ID14385( "ambush_enemies_alerted_prematurely" ) )
        var_0 thread _ID42407::_ID28864( var_1 );
}
