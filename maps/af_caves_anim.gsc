// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000B();
    _unknown_060A();
    _unknown_03EB();
    _unknown_0426();
    _unknown_0541();
    _unknown_03F0();
    _unknown_07DB();
}
#using_animtree("generic_human");

_ID3197()
{
    level._ID30895["price"]["launchfacility_a_c4_plant_short"] = %launchfacility_a_c4_plant_short;
    level._ID30895["price"]["favela_run_and_wave"] = %favela_run_and_wave;
    level._ID30895["price"]["laptop_stand_idle_start"] = %h2_afgan_caves_price_typing_in;
    level._ID30895["price"]["laptop_stand_idle"][0] = %h2_afgan_caves_price_typing_idle;
    level._ID30895["price"]["laptop_stand_yell"] = %h2_afgan_caves_price_typing_out;
    _ID42259::_ID2062( "price", "dialog", "laptop_stand_idle", "afcaves_pri_usekeyboard" );
    _ID42259::_ID2062( "price", "dialog", "laptop_stand_idle", "afcaves_pri_openthedoor" );
    _ID42259::_ID2062( "price", "dialog", "laptop_stand_idle", "afcaves_pri_comeoncomeon" );
    _ID42259::_ID2062( "price", "dialog", "laptop_stand_idle", "afcaves_pri_getdooropen" );
    _ID42259::_ID2058( "price", "start_price_typing_loop", maps\af_caves_aud::price_start_typing_loop, "laptop_stand_idle" );
    _ID42259::_ID2058( "price", "stop_price_typing_loop", maps\af_caves_aud::stop_price_typing_loop, "laptop_stand_idle" );
    level._ID30895["price"]["invasion_vehicle_cover_dialogue_guy2"] = %h2_afghan_caves_explosionwake_price;
    level._ID30895["generic"]["civilian_crawl_1"] = %civilian_crawl_1;
    level._ID30895["generic"]["civilian_crawl_2"] = %civilian_crawl_2;
    level._ID30895["generic"]["civilian_leaning_death"] = %civilian_leaning_death;
    level._ID30895["generic"]["civilian_leaning_death_death"] = %civilian_leaning_death_shot;
    level._ID30895["generic"]["hunted_dazed_walk_C_limp"] = %hunted_dazed_walk_c_limp;
    level._ID30895["generic"]["hunted_dazed_walk_C_limp_death"] = %exposed_death_falltoknees;
    level._ID30895["generic"]["hunted_dazed_walk_B_blind"] = %hunted_dazed_walk_b_blind;
    level._ID30895["generic"]["cqb_stand_idle_scan"] = %patrol_bored_react_look_v1;
    level._ID30895["generic"]["smoke_idle"][0] = %patrol_bored_idle_smoke;
    level._ID30895["generic"]["smoke_reach"] = %patrol_bored_idle_smoke;
    level._ID30895["generic"]["smoke"] = %patrol_bored_idle_smoke;
    level._ID30895["generic"]["smoke_react"] = %patrol_bored_react_look_advance;
    level._ID30895["generic"]["lean_smoke_idle"][0] = %parabolic_leaning_guy_smoking_idle;
    level._ID30895["generic"]["lean_smoke_idle"][1] = %parabolic_leaning_guy_smoking_twitch;
    level._ID30895["generic"]["lean_smoke_react"] = %parabolic_leaning_guy_react;
    level._ID30895["lean_smoker"]["lean_smoke_idle"][0] = %parabolic_leaning_guy_smoking_idle;
    level._ID30895["lean_smoker"]["lean_smoke_idle"][1] = %parabolic_leaning_guy_smoking_twitch;
    level._ID30895["lean_smoker"]["lean_smoke_react"] = %parabolic_leaning_guy_react;
    level._ID30895["generic"]["barracks_stealth_takedown"] = %h2_afgan_caves_takedown_npc;
    _ID42358::_ID1942( "generic" );
    level._ID30895["generic"]["sit_load_ak_idle"][0] = %sitting_guard_loadak_idle;
    level._ID30895["generic"]["sit_load_ak_react"] = %sitting_guard_loadak_react1;
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
    _ID42259::_ID2066( "generic", "attach phone", "attach_phone_notify", "phone_idle" );
    _ID42259::_ID2066( "generic", "detach phone", "detach_phone_notify", "phone_idle" );
    level._ID30904["com_cellphone_on_anim"] = "com_cellphone_on_anim";
    level._ID30895["generic"]["_stealth_behavior_whizby_0"] = %exposed_idle_reacta;
    level._ID30895["generic"]["_stealth_behavior_whizby_1"] = %exposed_idle_reactb;
    level._ID30895["generic"]["_stealth_behavior_whizby_2"] = %exposed_idle_twitch;
    level._ID30895["generic"]["_stealth_behavior_whizby_3"] = %exposed_idle_twitch_v4;
    level._ID30895["generic"]["_stealth_behavior_whizby_4"] = %run_pain_stumble;
    level._ID30895["generic"]["_stealth_behavior_spotted_short"] = %exposed_idle_twitch_v4;
    level._ID30895["generic"]["_stealth_behavior_spotted_long"] = %exposed_idle_twitch_v4;
    level._ID30895["generic"]["_stealth_behavior_heard_scream"] = %exposed_idle_twitch_v4;
    level._ID30895["generic"]["combat_jog"] = %combat_jog;
    level._ID30895["generic"]["smoking_reach"] = %parabolic_leaning_guy_smoking_idle;
    level._ID30895["generic"]["smoking"][0] = %parabolic_leaning_guy_smoking_idle;
    level._ID30895["generic"]["smoking"][1] = %parabolic_leaning_guy_smoking_twitch;
    level._ID30895["generic"]["smoking_react"] = %parabolic_leaning_guy_react;
    level._ID30895["generic"]["sit_idle"][0] = %breach_chair_idle_v2;
    level._ID30895["generic"]["sit_react"] = %breach_chair_reaction_v2;
    level._ID30895["generic"]["fridge_idle"][0] = %arcadia_fridge_idle;
    level._ID30895["generic"]["fridge_react"] = %arcadia_fridge_react;
    _ID42259::_ID2058( "generic", "refrig_idle_foley", maps\af_caves_aud::aud_ammo_crate_guy_idle_foley, "fridge_idle" );
    _ID42259::_ID2058( "generic", "refrig_react_foley", maps\af_caves_aud::aud_ammo_crate_guy_bump_into_foley, "fridge_react" );
    level._ID30895["generic"]["sleep_idle1"][0] = %afgan_caves_sleeping_guard_idle;
    level._ID30895["generic"]["sleep_death1"] = %cargoship_sleeping_guy_death_1;
    level._ID30895["generic"]["sleep_alert1"] = %afgan_caves_sleeping_guard_scramble;
    level._ID30895["generic"]["chess_surprise_1"] = %parabolic_chessgame_surprise_a;
    level._ID30895["generic"]["chess_surprise_2"] = %parabolic_chessgame_surprise_b;
    level._ID30895["generic"]["chess_idle_1"][0] = %parabolic_chessgame_idle_a;
    level._ID30895["generic"]["chess_idle_2"][0] = %parabolic_chessgame_idle_b;
    level._ID30895["chess_guy1"]["chess_death_1"] = %parabolic_chessgame_death_a;
    level._ID30895["chess_guy2"]["chess_death_2"] = %parabolic_chessgame_death_b;
    level._ID30895["generic"]["signal_moveout_cqb"] = %cqb_stand_signal_move_out;
    level._ID30895["generic"]["signal_moveup_cqb"] = %cqb_stand_signal_move_up;
    level._ID30895["generic"]["signal_go_cqb"] = %cqb_stand_wave_go_v1;
    level._ID30895["generic"]["signal_stop_cqb"] = %cqb_stand_signal_stop;
    level._ID30895["generic"]["signal_onme_cqb"] = %cqb_stand_wave_on_me;
    level._ID30895["price"]["intro_stop"] = %afgan_caves_intro_stop;
    level._ID30895["generic"]["run_2_crouch_f"] = %run_2_crouch_f;
    level._ID30895["generic"]["crouch_fastwalk_f"] = %crouch_fastwalk_f;
    level._ID30895["generic"]["crouch_talk"] = %casual_crouch_v2_talk;
    level._ID30895["generic"]["crouch_idle"] = %casual_crouch_idle;
    level._ID30895["generic"]["look_up_stand"] = %coverstand_look_moveup;
    level._ID30895["generic"]["look_idle_stand"][0] = %coverstand_look_idle;
    level._ID30895["generic"]["look_down_stand"] = %coverstand_look_movedown;
    level._ID30895["price"]["rise_up"] = %scout_sniper_price_prone_opening;
    level._ID30895["price"]["price_slide"] = %afgan_caves_price_slide;
    var_0 = _ID42237::_ID16299( "sand_slide_price" );
    _ID42259::_ID2058( "price", "slide_start", ::_unknown_0D19, "price_slide", var_0 );
    _ID42259::_ID2058( "price", "slide_end", ::_unknown_0D40, "price_slide" );
    level._ID30895["price"]["rappel"] = %afgan_caves_price_rappel_animatic;
    level._ID30895["price"]["pri_rappel_setup"] = %afgan_caves_price_rappel_setup;
    level._ID30895["price"]["pri_rappel_idle"][0] = %afgan_caves_price_rappel_idle;
    _ID42259::_ID2058( "price", "rope", maps\af_caves::_ID47241, "pri_rappel_setup" );
    level._ID30895["price"]["pri_rappel_jump"] = %afgan_caves_price_rappel_jump;
    _ID42259::_ID2057( "price", "knife", "weapon_parabolic_knife", "TAG_INHAND", "pri_rappel_jump" );
    level._ID30895["price"]["pri_hanging_idle"][0] = %afgan_caves_price_hanging_idle;
    level._ID30895["price"]["pri_rappel_kill"] = %afgan_caves_price_rappel_kill;
    _ID42259::_ID2059( "price", "knife", "weapon_parabolic_knife", "TAG_INHAND", "pri_rappel_kill" );
    level._ID30895["guard_2"]["flick"] = %cliff_guarda_flick;
    level._ID30895["guard_2"]["guardB_idle"][0] = %cliff_guardb_idle;
    level._ID30895["guard_2"]["guardB_react"] = %cliff_guardb_react;
    level._ID30895["guard_2"]["guard_2_death"] = %afgan_caves_guard_2_death;
    level._ID30895["guard_1"]["rappel_kill"] = %h2_afgan_caves_guard_a_death;
    level._ID30895["guard_1"]["guardA_idle"][0] = %cliff_guarda_idle;
    level._ID30895["guard_1"]["guardA_react"] = %cliff_guarda_react;
    _ID42259::_ID2058( "guard_1", "kill", ::_unknown_0E6B );
    _ID42259::_ID2058( "guard_1", "death_gurgle", maps\af_caves_code::_ID45342, "rappel_kill" );
    level._ID30895["guard_2"]["rappel"] = %afgan_caves_guard_2_animatic;
    level._ID30895["generic"]["steamroom_knifekill_price"] = %parabolic_knifekill_mark;
    level._ID30895["generic"]["steamroom_knifekill_guard"] = %parabolic_knifekill_phoneguy;
    level._ID30895["generic"]["steamroom_knifekill_guard_idle"][0] = %parabolic_phoneguy_idle;
    level._ID30895["generic"]["steamroom_knifekill_guard_reaction"] = %parabolic_phoneguy_reaction;
    level._ID30895["price"]["pri_dive"] = %hunted_dive_2_pronehide_v1;
    level._ID30895["price"]["pri_prone_stand"] = %hunted_pronehide_2_stand_v1;
    level._ID30895["price"]["pri_bridge_jump"] = %jump_across_100_stumble;
    _ID42259::_ID2063( "price", "footstep_right_large", "price_jumping", "pri_bridge_jump" );
    _ID42259::_ID2063( "price", "footstep_left_large", "price_jumped", "pri_bridge_jump" );
    level._ID30895["destroyer"]["shoot_bridge"] = %corner_standl_trans_a_2_b_v2;
    level._ID30895["generic"]["killhouse_sas_price_idle"][0] = %killhouse_sas_price_idle;
    level._ID30895["generic"]["look_idle_cornerR"][0] = %corner_standr_look_idle;
    level._ID30895["generic"]["alert2look_cornerR"] = %corner_standr_alert_2_look;
    level._ID30895["generic"]["patrol_bored_react_walkstop"] = %patrol_bored_react_walkstop;
    level._ID30895["generic"]["breach_react_push_guy2"] = %breach_react_push_guy2;
    level._ID30895["generic"]["breach_react_push_guy1"] = %breach_react_push_guy1;
    level._ID30895["generic"]["breach_react_guntoss_v2_guy1"] = %breach_react_guntoss_v2_guy1;
    level._ID30895["generic"]["breach_react_guntoss_v2_guy2"] = %breach_react_guntoss_v2_guy2;
    level._ID30895["generic"]["breach_react_knife_charge"] = %breach_react_knife_charge;
    level._ID30895["generic"]["breach_react_knife_charge_death"] = %death_shotgun_back_v1;
    level._ID30895["nade_tosser"]["cqb_nade_throw"] = %cqb_stand_grenade_throw;
    _ID42259::_ID2063( "nade_tosser", "grenade_throw", "nade_tossed", "cqb_nade_throw" );
    _unknown_0DD7();
}

_ID50662()
{
    level._ID30895["generic"]["patrol_turn_l45_rfoot"] = %h1_bored_patrol_walk_turn_l45_right_foot;
    level._ID30895["generic"]["patrol_turn_l45_lfoot"] = %h1_bored_patrol_walk_turn_l45_left_foot;
    level._ID30895["generic"]["patrol_turn_l90_rfoot"] = %h1_bored_patrol_walk_turn_l90_right_foot;
    level._ID30895["generic"]["patrol_turn_l90_lfoot"] = %h1_bored_patrol_walk_turn_l90_left_foot;
    level._ID30895["generic"]["patrol_turn_l135_rfoot"] = %h1_bored_patrol_walk_turn_l135_right_foot;
    level._ID30895["generic"]["patrol_turn_l135_lfoot"] = %h1_bored_patrol_walk_turn_l135_left_foot;
    level._ID30895["generic"]["patrol_turn_r45_rfoot"] = %h1_bored_patrol_walk_turn_r45_right_foot;
    level._ID30895["generic"]["patrol_turn_r45_lfoot"] = %h1_bored_patrol_walk_turn_r45_left_foot;
    level._ID30895["generic"]["patrol_turn_r90_rfoot"] = %h1_bored_patrol_walk_turn_r90_right_foot;
    level._ID30895["generic"]["patrol_turn_r90_lfoot"] = %h1_bored_patrol_walk_turn_r90_left_foot;
    level._ID30895["generic"]["patrol_turn_r135_rfoot"] = %h1_bored_patrol_walk_turn_r135_right_foot;
    level._ID30895["generic"]["patrol_turn_r135_lfoot"] = %h1_bored_patrol_walk_turn_r135_left_foot;
    level._ID30895["generic"]["patrol_walk_in_lfoot"] = %h1_bored_patrol_walk_turn_walk_in_left;
    level._ID30895["generic"]["patrol_walk_out_lfoot"] = %h1_bored_patrol_walk_turn_walk_out_left;
    level._ID30895["generic"]["patrol_walk_in_rfoot"] = %h1_bored_patrol_walk_turn_walk_in_right;
    level._ID30895["generic"]["patrol_walk_out_rfoot"] = %h1_bored_patrol_walk_turn_walk_out_right;
}
#using_animtree("animated_props");

_ID51591()
{
    level._ID3055["foliage_desertbrush_1_animated"]["sway"] = %foliage_desertbrush_1_sway;
}
#using_animtree("dog");

_ID300()
{
    level._ID30895["generic"]["dog_idle"][0] = %german_shepherd_attackidle;
    level._ID30895["generic"]["dog_eating"][0] = %german_shepherd_eating;
    level._ID30895["generic"]["dog_eating_single"] = %german_shepherd_eating;
    level._ID30895["generic"]["dog_growling"][0] = %german_shepherd_attackidle_growl;
    level._ID30895["generic"]["dog_barking"][0] = %german_shepherd_attackidle_growl;
    level._ID30895["generic"]["dog_barking"][1] = %german_shepherd_attackidle_bark;
    level._ID30895["generic"]["dog_barking"][2] = %german_shepherd_attackidle_bark;
    level._ID30895["generic"]["dog_barking"][3] = %german_shepherd_attackidle_bark;
}
#using_animtree("script_model");

_ID31296()
{
    level._ID30904["knife"] = "weapon_parabolic_knife";
    level._ID30895["chair"]["sleep_react"] = %parabolic_guard_sleeper_react_chair;
    level._ID30900["chair"] = #animtree;
    level._ID30904["chair"] = "com_folding_chair";
    level._ID30895["chair_ak"]["sit_load_ak_react"] = %sitting_guard_loadak_idle_chair;
    level._ID30900["chair_ak"] = #animtree;
    level._ID30904["chair_ak"] = "com_folding_chair";
    level._ID30895["flashlight"]["fl_death"] = %blackout_flashlightguy_death_flashlight;
    level._ID30909["flashlight"]["fl_death"] = "scn_blackout_drop_flashlight";
    level._ID30895["flashlight"]["search"] = %blackout_flashlightguy_moment2death_flashlight;
    level._ID30909["flashlight"]["search"] = "scn_blackout_drop_flashlight_draw";
    level._ID30895["rope"]["rappel_hookup"] = %h2_afgan_caves_player_hookup_rope;
    level._ID30904["rope"] = "weapon_carabiner_thin_rope";
    level._ID30900["rope"] = #animtree;
    level._ID30895["rope_price"]["pri_rappel_idle"][0] = %afgan_caves_price_idle_rope;
    level._ID30895["rope_price"]["rope_hookup"] = %afgan_caves_price_hookup_rope;
    level._ID30904["rope_price"] = "weapon_carabiner_thin_rope";
    level._ID30900["rope_price"] = #animtree;
    level._ID30895["rappel_rope_price"]["pri_rappel_jump"] = %afgan_caves_price_rappel_jump_rappelrope;
    level._ID30895["rappel_rope_price"]["pri_hanging_idle"][0] = %afgan_caves_price_hanging_idle_rappelrope;
    level._ID30895["rappel_rope_price"]["pri_rappel_idle"][0] = %afgan_caves_price_rappel_idle_rappelrope;
    level._ID30904["rappel_rope_price"] = "afgan_caves_rappel_rope";
    level._ID30900["rappel_rope_price"] = #animtree;
    level._ID30902["price"]["pri_hanging_idle"] = 0.05;
    level._ID30902["rappel_rope_price"]["pri_hanging_idle"] = 0.05;
    level._ID30895["tarp"]["rise_up"] = %scout_sniper_sand_ghillie_tarp_emerge;
    level._ID30900["tarp"] = #animtree;
    level._ID30904["tarp"] = "scout_sniper_sand_ghillie_tarp";
    level._ID30895["breach_door_model_caves"]["breach"] = %breach_player_door_v2;
    level._ID30900["breach_door_model_caves"] = #animtree;
    level._ID30904["breach_door_model_caves"] = "com_door_03_handleright";
    level._ID30895["breach_door_hinge_caves"]["breach"] = %breach_player_door_hinge_v1;
    level._ID30900["breach_door_hinge_caves"] = #animtree;
    level._ID30904["breach_door_hinge_caves"] = "com_door_piece_hinge3";
    level._ID30900["lamp"] = #animtree;
    level._ID30904["lamp"] = "ch_industrial_light_animated_01_on";
    level._ID30895["lamp"]["swing"] = %swinging_industrial_light_01_mild;
    level._ID30895["lamp"]["swing_dup"] = %swinging_industrial_light_01_mild_dup;
    level._ID30895["keyboard"]["keyboard_control"] = %h2_afgan_caves_player_typing_prop;
    level._ID30900["keyboard"] = #animtree;
    level._ID30904["keyboard"] = "com_computer_keyboard_black_animated";
    level._ID30900["cell_hook"] = #animtree;
    level._ID30895["cell_hook"]["cell_hook1"][0] = %h2_cell_hook_01_idle;
    level._ID30895["cell_hook"]["cell_hook2"][0] = %h2_cell_hook_02_idle;
    level._ID30900["ropes"] = #animtree;
    level._ID30895["ropes"]["player_rope"][0] = %h2_afgan_caves_rope_wobble_player;
    level._ID30895["ropes"]["price_rope"][0] = %h2_afgan_caves_rope_wobble_soldier;
    level._ID30900["bombardment_enviro"] = #animtree;
    level._ID30904["bombardment_enviro"] = "h2_cave_explosion_enviro_anim";
    level._ID30895["bombardment_enviro"]["bombardment"] = %h2_cave_explosion_enviro_react;
    level._ID30900["light"] = #animtree;
    level._ID30895["light"]["idle"] = %h2_cave_wired_lights_01_idle;
    level._ID30900["lights"] = #animtree;
    level._ID30895["lights"]["idle"] = %h2_cave_wired_lights_02_idle;
    level._ID30900["heli_tarp"] = #animtree;
    level._ID30904["heli_tarp"] = "h2_cave_camo_net_helico_animated";
    level._ID30895["heli_tarp"]["combat_cave_tarp"][0] = %h2_cave_camo_net_helico_idle;
    level._ID30895["heli_tarp"]["combat_cave_tarp_wind"][0] = %h2_cave_camo_net_helico_wind;
}
#using_animtree("player");

_ID27229()
{
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewhands_player_tf141";
    level._ID30895["player_rig"]["rappel_close"] = %h2_afgan_caves_player_rappel_close;
    level._ID30895["player_rig"]["rappel_far"] = %h2_afgan_caves_player_rappel_far;
    level._ID30895["player_rig"]["rappel_close_node"] = %cave_rappel_close;
    level._ID30895["player_rig"]["rappel_far_node"] = %cave_rappel_far;
    level._ID30895["player_rig"]["rappel_hookup"] = %h2_afgan_caves_player_rappel_hookup;
    level._ID30895["player_rig"]["rappel_root"] = %cave_rappel;
    level._ID30895["player_rig"]["rappel_kill"] = %h2_afgan_caves_player_rappel_end_kill;
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_tf141";
    level._ID30895["worldbody"]["barracks_stealth_takedown"] = %h2_afgan_caves_takedown_player;
    _ID42259::_ID2058( "player_rig", "start_guard", ::_unknown_162D );
    level._ID30895["worldbody"]["slide_in"] = %h2_cliffhanger_slide_in;
    level._ID30895["worldbody"]["slide_loop"][0] = %h2_cliffhanger_slide_idle;
    level._ID30895["worldbody"]["slide_out"] = %h2_cliffhanger_slide_out;
    level._ID30895["worldbody"]["slide_back_loop"][0] = %h2_cliffhanger_slide_back;
    level._ID30895["worldbody"]["slide_back_in"] = %h2_cliffhanger_slide_back_in;
    level._ID30895["worldbody"]["slide_back_out"] = %h2_cliffhanger_slide_back_out;
    level._ID30895["worldbody"]["slide_ar"] = %h2_cliffhanger_slide_turnl;
    level._ID30895["worldbody"]["slide_al"] = %h2_cliffhanger_slide_turnr;
    var_0 = _ID42237::_ID16299( "sand_slide_player" );
    _ID42259::_ID2058( "worldbody", "slide_fx_start", ::_unknown_16F2, "slide_in", var_0 );
    _ID42259::_ID2058( "worldbody", "slide_fx_end", ::_unknown_1719, "slide_out" );
    _ID42259::_ID2058( "worldbody", "slide_fx_end", ::_unknown_172C, "slide_back_out" );
    _ID42259::_ID2058( "worldbody", "slide_fx_end", ::_unknown_1735, "slide_out", var_0 );
    _ID42259::_ID2058( "worldbody", "slide_fx_end", ::_unknown_1749, "slide_back_out", var_0 );
    level._ID30895["worldbody"]["keyboard_control"] = %h2_afgan_caves_player_typing;
    level._ID30895["worldbody"]["explosion"] = %h2_afghan_caves_explosion_player;
    level._ID30895["worldbody"]["explosion_wake"] = %h2_afghan_caves_explosionwake_player;
}

_ID47841( var_0 )
{
    _ID42259::_ID3111( self._ID43533, "rappel_kill" );
}

_ID21285( var_0 )
{
    var_0._ID7._ID24881 = 1;
    var_0._ID49 = 1;
    var_0._ID287 = 1;
    _ID45456::_ID54623( var_0 );
    var_0 _meth_8058();
}

_ID54029( var_0, var_1 )
{
    var_0 endon( "stop_slide_fx" );
    var_0 endon( "death" );

    for (;;)
    {
        _func_157( var_1, var_0, "tag_origin" );
        wait 0.1;
    }
}

_ID53259( var_0, var_1 )
{
    var_0 endon( "stop_slide_fx" );
    var_0 endon( "death" );

    for (;;)
    {
        _func_157( var_1, var_0, "tag_origin" );
        wait 0.1;
    }
}

_ID54626( var_0 )
{
    var_0 notify( "stop_slide_fx" );
}

_ID10730()
{
    level._ID30908["afcaves_pri_suppressedweapon"] = "afcaves_pri_suppressedweapon";
    level._ID30908["afcaves_nkl_waitforyou"] = "afcaves_nkl_waitforyou";
    level._ID30908["afcaves_pri_dontbother"] = "afcaves_pri_dontbother";
    level._ID30908["afcaves_nkl_goodluck"] = "afcaves_nkl_goodluck";
    level._ID30908["afcaves_pri_moveout"] = "afcaves_pri_moveout";
    level._ID30908["afcaves_pri_decryptioncode"] = "afcaves_pri_decryptioncode";
    level._ID30908["afcaves_schq_goahead"] = "afcaves_schq_goahead";
    level._ID30908["afcaves_pri_intelwassolid"] = "afcaves_pri_intelwassolid";
    level._ID30908["afcaves_sc1_riverbedclear"] = "afcaves_sc1_riverbedclear";
    level._ID30908["afcaves_schq_bravo"] = "afcaves_schq_bravo";
    level._ID30908["afcaves_sc2_catwalkclear"] = "afcaves_sc2_catwalkclear";
    level._ID30908["afcaves_schq_zulu"] = "afcaves_schq_zulu";
    level._ID30908["afcaves_sc3_sandstorm"] = "afcaves_sc3_sandstorm";
    level._ID30908["afcaves_sc1_startingpatrol"] = "afcaves_sc1_startingpatrol";
    level._ID30908["afcaves_schq_finishsweep"] = "afcaves_schq_finishsweep";
    level._ID30908["pri_holdup"] = "afcaves_pri_holdup2";
    level._ID30908["pri_enemypatrol"] = "afcaves_pri_enemypatrol2";
    level._ID30908["afcaves_pri_holdyourfire"] = "afcaves_pri_holdyourfire";
    level._ID30908["afcaves_pri_splittingup"] = "afcaves_pri_splittingup";
    level._ID30908["afcaves_pri_grouponright"] = "afcaves_pri_grouponright";
    level._ID30908["afcaves_pri_twoonleft"] = "afcaves_pri_twoonleft";
    level._ID30908["afcaves_pri_onmymark"] = "afcaves_pri_onmymark";
    level._ID30908["afcaves_pri_three"] = "afcaves_pri_three";
    level._ID30908["afcaves_pri_two"] = "afcaves_pri_two";
    level._ID30908["afcaves_pri_one"] = "afcaves_pri_one";
    level._ID30908["afcaves_pri_mark"] = "afcaves_pri_mark";
    level._ID30908["afcaves_pri_justlikeoldtimes"] = "afcaves_pri_justlikeoldtimes";
    level._ID30908["afcaves_pri_dogneutralized"] = "afcaves_pri_dogneutralized";
    level._ID30908["afcaves_pri_closeenough"] = "afcaves_pri_closeenough";
    level._ID30908["afcaves_pri_sticktoplan"] = "afcaves_pri_sticktoplan";
    level._ID30908["afcaves_pri_beenspotted"] = "afcaves_pri_beenspotted";
    level._ID30908["afcaves_pri_nomistakes"] = "afcaves_pri_nomistakes";
    level._ID30908["afcaves_pri_beforecomeback"] = "afcaves_pri_beforecomeback";
    level._ID30908["afcaves_pri_downhere"] = "afcaves_pri_downhere";
    level._ID30908["afcaves_pri_groupsback"] = "afcaves_pri_groupsback";
    level._ID30908["afcaves_pri_taketheothers"] = "afcaves_pri_taketheothers";
    level._ID30908["afcaves_pri_taketheshot"] = "afcaves_pri_taketheshot";
    level._ID30908["afcaves_pri_repositioning"] = "afcaves_pri_repositioning";
    level._ID30908["afcaves_pri_findthebodies"] = "afcaves_pri_findthebodies";
    level._ID30908["afcaves_pri_readytoshoot"] = "afcaves_pri_readytoshoot";
    level._ID30908["afcaves_pri_foundbodies"] = "afcaves_pri_foundbodies";
    level._ID30908["afcaves_pri_muchtime"] = "afcaves_pri_muchtime";
    level._ID30908["pri_thermalspike"] = "afcaves_pri_thermalspike";
    level._ID30908["afcaves_schq_d4whatsyourstatus"] = "afcaves_schq_d4whatsyourstatus";
    level._ID30908["afcaves_schq_d4doyoucopy"] = "afcaves_schq_d4doyoucopy";
    level._ID30908["afcaves_schq_badtransmitter"] = "afcaves_schq_badtransmitter";
    level._ID30908["afcaves_schq_lostcontact2"] = "afcaves_schq_lostcontact2";
    level._ID30908["afcaves_schq_badtransmitter2"] = "afcaves_schq_badtransmitter2";
    level._ID30908["afcaves_schq_sendateam2"] = "afcaves_schq_sendateam2";
    level._ID30908["afcaves_sc2_sendvinson"] = "afcaves_sc2_sendvinson";
    level._ID30908["pri_hookup"] = "afcaves_pri_hookup";
    level._ID30908["pri_soaphookup"] = "afcaves_pri_soaphookup";
    level._ID30908["pri_whatstheproblem"] = "afcaves_pri_whatstheproblem";
    level._ID30908["pri_hookupletsgo"] = "afcaves_pri_hookupletsgo";
    level._ID30908["pri_go"] = "afcaves_pri_go";
    level._ID30908["pri_2inthechest"] = "afcaves_pri_2inthechest";
    level._ID30908["pri_letsgo"] = "afcaves_pri_letsgo";
    level._ID30908["afcaves_pri_tangoupahead"] = "afcaves_pri_tangoupahead";
    level._ID30908["afcaves_pri_patrolcoming"] = "afcaves_pri_patrolcoming";
    level._ID30908["afcaves_pri_letthempass"] = "afcaves_pri_letthempass";
    level._ID30908["afcaves_pri_havingasmoke"] = "afcaves_pri_havingasmoke";
    level._ID30908["pri_goodnight"] = "afcaves_pri_goodnight";
    level._ID30908["afcaves_pri_avoidbeingspotted"] = "afcaves_pri_avoidbeingspotted";
    level._ID30908["afcaves_pri_move2"] = "afcaves_pri_move2";
    level._ID30908["afcaves_pri_easynow"] = "afcaves_pri_easynow";
    level._ID30908["afcaves_pri_incorridor"] = "afcaves_pri_incorridor";
    level._ID30908["afcaves_pri_tangosonsix"] = "afcaves_pri_tangosonsix";
    level._ID30908["afcaves_pri_tangoswithtaclights"] = "afcaves_pri_tangoswithtaclights";
    level._ID30908["afcaves_pri_takeoneright"] = "afcaves_pri_takeoneright";
    level._ID30908["afcaves_pri_impressive"] = "afcaves_pri_impressive";
    level._ID30908["afcaves_pri_cleargo"] = "afcaves_pri_cleargo";
    level._ID30908["afcaves_pri_guardsknow"] = "afcaves_pri_guardsknow";
    level._ID30908["afcaves_pri_ontousgoloud"] = "afcaves_pri_ontousgoloud";
    level._ID30908["afcaves_pri_compromisedgoloud"] = "afcaves_pri_compromisedgoloud";
    level._ID30908["afcaves_pri_getbackhere"] = "afcaves_pri_getbackhere";
    level._ID30908["afcaves_pri_gotlucky"] = "afcaves_pri_gotlucky";
    level._ID30908["afcaves_pri_thatwasclose"] = "afcaves_pri_thatwasclose";
    level._ID30908["afcaves_sc1_iseehim"] = "afcaves_sc1_iseehim";
    level._ID30908["afcaves_sc1_spotted"] = "afcaves_sc1_spotted";
    level._ID30908["afcaves_sc1_hostilemyloc"] = "afcaves_sc1_hostilemyloc";
    level._ID30908["afcaves_schq_sitrep"] = "afcaves_schq_sitrep";
    level._ID30908["afcaves_schq_sitrepover"] = "afcaves_schq_sitrepover";
    level._ID30908["afcaves_schq_lostcontact"] = "afcaves_schq_lostcontact";
    level._ID30908["afcaves_sc3_oncatwalk"] = "afcaves_sc3_oncatwalk";
    level._ID30908["afcaves_pri_topofstairs"] = "afcaves_pri_topofstairs";
    level._ID30908["afcaves_pri_nevermind"] = "afcaves_pri_nevermind";
    level._ID30908["afcaves_sc3_atsteamroom"] = "afcaves_sc3_atsteamroom";
    level._ID30908["afcaves_schq_godark"] = "afcaves_schq_godark";
    level._ID30908["afcaves_pri_meetemheadon"] = "afcaves_pri_meetemheadon";
    level._ID30908["afcaves_pri_getready"] = "afcaves_pri_getready";
    level._ID30908["scl_movein"] = "afcaves_scl_movein";
    level._ID30908["afcaves_sc3_chargeplanted"] = "afcaves_sc3_chargeplanted";
    level._ID30908["afcaves_scl_hitit"] = "afcaves_scl_hitit";
    level._ID30908["afcaves_sc3_breaching"] = "afcaves_sc3_breaching";
    level._ID30908["afcaves_scl_foxtrotelement"] = "afcaves_scl_foxtrotelement";
    level._ID30908["afcaves_scl_patternecho"] = "afcaves_scl_patternecho";
    level._ID30908["afcaves_sc3_areaclear"] = "afcaves_sc3_areaclear";
    level._ID30908["afcaves_scl_checkcorners"] = "afcaves_scl_checkcorners";
    level._ID30908["afcaves_scl_theyrehere"] = "afcaves_scl_theyrehere";
    level._ID30908["afcaves_scl_huntthemdown"] = "afcaves_scl_huntthemdown";
    level._ID30908["afcaves_pri_goloud"] = "afcaves_pri_goloud";
    level._ID30908["afcaves_schq_flatlined"] = "afcaves_schq_flatlined";
    level._ID30908["afcaves_sc3_notpossible"] = "afcaves_sc3_notpossible";
    level._ID30908["afcaves_shp_itsprice"] = "afcaves_shp_itsprice";
    level._ID30908["afcaves_shp_burntherest"] = "afcaves_shp_burntherest";
    level._ID30908["pri_gettingaway"] = "afcaves_pri_gettingaway";
    level._ID30908["pri_positiontobreach"] = "afcaves_pri_positiontobreach";
    level._ID30908["pri_doit"] = "afcaves_pri_doit";
    level._ID30908["shp_menstaywithme"] = "afcaves_shp_menstaywithme";
    level._ID30908["shp_twosquads"] = "afcaves_shp_twosquads";
    level._ID30908["lnt_yessir3"] = "afcaves_lnt_yessir3";
    level._ID30908["pri_intothetunnel"] = "afcaves_pri_intothetunnel";
    level._ID30908["shp_airsupport"] = "afcaves_shp_airsupport";
    level._ID30908["lnt_littlebirdinbound"] = "afcaves_lnt_littlebirdinbound";
    level._ID30908["pri_gonnagetaway"] = "afcaves_pri_gonnagetaway";
    level._ID30908["pri_takeoutheli"] = "afcaves_pri_takeoutheli";
    level._ID30908["pri_regrouponme"] = "afcaves_pri_regrouponme";
    level._ID30908["pri_keepmoving"] = "afcaves_pri_keepmoving";
    level._ID30908["pri_moveup1"] = "afcaves_pri_moveup1";
}
#using_animtree("vehicles");

_ID47674()
{
    level._ID30900["zodiac"] = #animtree;
    level._ID30895["zodiac"]["bounce"] = %h2_zodiac_afcave_additive;
}
