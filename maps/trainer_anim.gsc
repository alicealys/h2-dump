// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000C();
    _unknown_09CF();
    _unknown_0D1B();
    _unknown_0E62();
    _unknown_0D69();
    _unknown_0D4C();
    thread _unknown_0F2B();
}
#using_animtree("generic_human");

_ID3197()
{
    _ID42358::_ID1945( "generic" );
    level._ID30895["foley"]["training_intro_begining"] = %h2_training_intro_foley_begining;
    _ID42259::_ID2062( "foley", "dialog", "training_intro_begining", "train_fly_welcome" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_begining", "train_fly_demonstration" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_begining", "train_fly_nooffense" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_begining", "train_fly_makesyoulook" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_begining", "train_fly_showem" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_begining", "train_fly_fireattargets" );
    _ID42259::_ID2063( "foley", "activate_audiomix", "ps_train_fly_welcome", "training_intro_begining" );
    _ID42259::_ID2063( "foley", "pickup", "foley_anim_pickup_weapon", "training_intro_begining" );
    level._ID30895["translator"]["training_intro_begining"] = %h2_training_intro_translator_begining;
    _ID42259::_ID2062( "translator", "dialog", "training_intro_begining", "train_aft_demonstration" );
    _ID42259::_ID2062( "translator", "dialog", "training_intro_begining", "train_aft_makesyoulook" );
    level._ID30895["foley"]["training_intro_idle"][0] = %h2_training_intro_foley_idle;
    level._ID30895["foley"]["training_intro_idle2"][0] = %h2_training_intro_foley_idle2;
    level._ID30895["foley"]["training_intro_idle3"][0] = %h2_training_intro_foley_idle3;
    level._ID30895["translator"]["training_intro_idle"][0] = %h2_training_intro_translator_idle;
    level._ID30895["translator"]["training_intro_idle2"][0] = %h2_training_intro_translator_idle2;
    level._ID30895["trainee_01"]["training_intro_idle"][0] = %h2_training_intro_trainee_1_idle;
    level._ID30895["foley"]["training_intro_talk2"] = %h2_training_intro_foley_talk2;
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk2", "train_fly_sprayedbullets" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk2", "train_fly_pickyourtargets", 1 );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk2", "train_fly_howtherangers" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk2", "train_fly_crouchfirst", 1 );
    level._ID30895["foley"]["training_intro_talk3"] = %h2_training_intro_foley_talk3;
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk3", "train_fly_gottaaim" );
    level._ID30895["foley"]["training_intro_talk4"] = %h2_training_intro_foley_talk4;
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk4", "train_fly_switching" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk4", "train_fly_popinandout" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk4", "train_fly_showemprivate", 1 );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk4", "train_fly_iftargetclose", 1 );
    level._ID30895["foley"]["training_intro_talk5"] = %h2_training_intro_foley_talk5;
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk5", "train_fly_howyoudoit" );
    level._ID30895["foley"]["training_intro_talk6"] = %h2_training_intro_foley_talk6;
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk6", "train_fly_lightcover" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk6", "train_fly_theprivatehere", 1 );
    level._ID30895["foley"]["training_intro_talk7"] = %h2_training_intro_foley_talk7;
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk7", "train_fly_tossafrag" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk7", "train_fly_pickupfrag" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk7", "train_fly_grenadedownrange", 1 );
    level._ID30895["foley"]["training_intro_talk8"] = %h2_training_intro_foley_talk8;
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk8", "train_fly_good" );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_talk8", "train_fly_fragstendtoroll", 1 );
    level._ID30895["foley"]["training_intro_transition_talk3to6"] = %h2_training_intro_foley_transition;
    level._ID30895["translator"]["training_intro_talk2"] = %h2_training_intro_translator_talk2;
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk2", "train_aft_sprayedbullets" );
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk2", "train_aft_pickyourtargets" );
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk2", "train_aft_howtherangers" );
    level._ID30895["translator"]["training_intro_talk3"] = %h2_training_intro_translator_talk3;
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk3", "train_aft_crouchfirst" );
    level._ID30895["translator"]["training_intro_talk4"] = %h2_training_intro_translator_talk4;
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk4", "train_aft_switching" );
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk4", "train_aft_popinandout" );
    level._ID30895["translator"]["training_intro_talk5"] = %h2_training_intro_translator_talk5;
    level._ID30895["translator"]["training_intro_talk6"] = %h2_training_intro_translator_talk6;
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk6", "train_aft_lightcover" );
    level._ID30895["translator"]["training_intro_talk7"] = %h2_training_intro_translator_talk7;
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk7", "train_aft_tossafrag" );
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk7", "train_aft_grenadedownrange" );
    level._ID30895["translator"]["training_intro_talk8"] = %h2_training_intro_translator_talk8;
    _ID42259::_ID2062( "translator", "dialog", "training_intro_talk8", "train_aft_fragstendtoroll" );
    level._ID30895["translator"]["training_intro_transition_talk3to6"] = %h2_training_intro_translator_transition;
    level._ID30895["foley"]["training_intro_end"] = %h2_training_intro_foley_end;
    _ID42259::_ID2062( "foley", "dialog", "training_intro_end", "train_fly_thanksforhelp", 1 );
    _ID42259::_ID2062( "foley", "dialog", "training_intro_end", "train_fly_gofirst" );
    level._ID30895["translator"]["training_intro_end"] = %h2_training_intro_translator_end;
    level._ID30902["translator"]["training_intro_end"] = 1;
    _ID42259::_ID2062( "translator", "dialog", "training_intro_end", "train_aft_gofirst" );
    level._ID30895["trainee_01"]["training_intro_pre_end_idle"][0] = %h2_training_intro_trainee_1_pre_end_idle;
    level._ID30895["trainee_01"]["training_intro_end"] = %h2_training_intro_trainee_1_end;
    level._ID30902["trainee_01"]["training_intro_end"] = 1;
    level._ID30895["foley"]["training_intro_end_idle"][0] = %h2_training_intro_foley_end_idle;
    level._ID30895["translator"]["training_intro_end_idle"][0] = %h2_training_intro_translator_end_idle;
    level._ID30895["trainee_01"]["training_intro_end_idle"][0] = %h2_training_intro_trainee_1_end_idle;
    _ID42259::_ID2058( "trainee_01", "fire_spray", ::_unknown_1427 );
    level._ID30895["soldier_wounded"]["laatpv_sequence"] = %training_latvee_wounded;
    level._ID30895["soldier_door"]["laatpv_sequence"] = %training_latvee_soldier;
    level._ID30895["generic"]["training_intro_soldier1_idle"][0] = %h2_training_intro_soldier1_idle;
    level._ID30895["generic"]["training_intro_soldier1_pre_end_idle"][0] = %h2_training_intro_soldier1_pre_end_idle;
    level._ID30895["generic"]["training_intro_soldier1_end"] = %h2_training_intro_soldier1_end;
    level._ID30902["generic"]["training_intro_soldier1_end"] = 1;
    level._ID30895["generic"]["training_intro_soldier1_end_idle"][0] = %h2_training_intro_soldier1_end_idle;
    level._ID30895["generic"]["training_intro_soldier2_idle"][0] = %h2_training_intro_soldier2_idle;
    level._ID30895["generic"]["training_intro_soldier2_pre_end_idle"][0] = %h2_training_intro_soldier2_pre_end_idle;
    level._ID30895["generic"]["training_intro_soldier2_end"] = %h2_training_intro_soldier2_end;
    level._ID30902["generic"]["training_intro_soldier2_end"] = 1;
    level._ID30895["generic"]["training_intro_soldier2_end_idle"][0] = %h2_training_intro_soldier2_end_idle;
    level._ID30895["generic"]["training_intro_soldier3_idle"][0] = %h2_training_intro_soldier3_idle;
    level._ID30895["generic"]["training_intro_soldier3_pre_end_idle"][0] = %h2_training_intro_soldier3_pre_end_idle;
    level._ID30895["generic"]["training_intro_soldier3_end"] = %h2_training_intro_soldier3_end;
    level._ID30902["generic"]["training_intro_soldier3_end"] = 1;
    level._ID30895["generic"]["training_intro_soldier3_end_idle"][0] = %h2_training_intro_soldier3_end_idle;
    level._ID30895["generic"]["training_intro_soldier4_idle"][0] = %h2_training_intro_soldier4_idle;
    level._ID30895["generic"]["training_intro_soldier4_pre_end_idle"][0] = %h2_training_intro_soldier4_pre_end_idle;
    level._ID30895["generic"]["training_intro_soldier4_end"] = %h2_training_intro_soldier4_end;
    level._ID30902["generic"]["training_intro_soldier4_end"] = 1;
    level._ID30895["generic"]["training_intro_soldier4_end_idle"][0] = %h2_training_intro_soldier4_end_idle;
    level._ID30895["generic"]["training_intro_soldier6_idle"][0] = %h2_training_intro_soldier6_idle;
    level._ID30895["generic"]["training_intro_soldier6_pre_end_idle"][0] = %h2_training_intro_soldier6_pre_end_idle;
    level._ID30895["generic"]["training_intro_soldier6_end"] = %h2_training_intro_soldier6_end;
    level._ID30902["generic"]["training_intro_soldier6_end"] = 1;
    level._ID30895["generic"]["training_intro_soldier6_end_idle"][0] = %h2_training_intro_soldier6_end_idle;
    level._ID30895["generic"]["training_intro_soldier7_idle"][0] = %h2_training_intro_soldier7_idle;
    level._ID30895["generic"]["training_intro_soldier7_pre_end_idle"][0] = %h2_training_intro_soldier7_pre_end_idle;
    level._ID30895["generic"]["training_intro_soldier7_end"] = %h2_training_intro_soldier7_end;
    level._ID30902["generic"]["training_intro_soldier7_end"] = 1;
    level._ID30895["generic"]["training_intro_soldier7_end_idle"][0] = %h2_training_intro_soldier7_end_idle;
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
    level._ID30895["generic"]["combat_jog"] = %combat_jog;
    level._ID30895["generic"]["smoking_reach"] = %parabolic_leaning_guy_smoking_idle;
    level._ID30895["generic"]["smoking"][0] = %parabolic_leaning_guy_smoking_idle;
    level._ID30895["generic"]["smoking"][1] = %parabolic_leaning_guy_smoking_twitch;
    level._ID30895["generic"]["smoking_react"] = %parabolic_leaning_guy_react;
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
    level._ID30895["generic"]["training_jog_guy1"] = %training_jog_guy1;
    level._ID30895["generic"]["training_jog_guy2"] = %training_jog_guy2;
    level._ID30895["generic"]["casual_killer_jog_A"] = %casual_killer_jog_a;
    level._ID30895["generic"]["casual_killer_jog_B"] = %casual_killer_jog_b;
    level._ID30895["generic"]["freerunnerA_loop"] = %freerunnera_loop;
    level._ID30895["generic"]["freerunnerB_loop"] = %freerunnerb_loop;
    level._ID30895["generic"]["huntedrun_1_idle"] = %huntedrun_1_idle;
    level._ID30895["generic"]["training_sleeping_in_chair"][0] = %training_sleeping_in_chair;
    level._ID30895["generic"]["training_basketball_rest"][0] = %training_basketball_rest;
    level._ID30895["generic"]["training_basketball_guy1"][0] = %training_basketball_guy1;
    level._ID30895["generic"]["training_basketball_guy2"][0] = %training_basketball_guy2;
    level._ID30895["generic"]["training_latvee_repair"][0] = %training_latvee_repair;
    level._ID30895["generic"]["h2_training_pushups_guy1"][0] = %h2_training_pushups_guy1;
    level._ID30895["generic"]["h2_training_pushups_guy2"][0] = %h2_training_pushups_guy2;
    level._ID30895["generic"]["h2_training_jumpingjack_guy3"][0] = %h2_training_jumpingjack_guy3;
    level._ID30895["generic"]["h2_training_latveerepair_underguy"][0] = %h2_training_latveerepair_underguy;
    _ID42259::_ID2058( "generic", "detach_wrench", ::_unknown_1B45, "h2_training_latveerepair_underguy", "wrench" );
    _ID42259::_ID2058( "generic", "attach_pliers", ::_unknown_1B77, "h2_training_latveerepair_underguy", "plier" );
    _ID42259::_ID2058( "generic", "detach_pliers", ::_unknown_1B72, "h2_training_latveerepair_underguy", "plier" );
    _ID42259::_ID2058( "generic", "attach_wrench", ::_unknown_1BA4, "h2_training_latveerepair_underguy", "wrench" );
    level._ID30895["generic"]["h2_training_latveerepair_behindguy"][0] = %h2_training_latveerepair_behindguy;
    level._ID30895["generic"]["h2_training_latveerepair_topguy"][0] = %h2_training_latveerepair_topguy;
    level._ID30895["generic"]["h2_training_soldierreading"][0] = %h2_training_soldierreading;
    level._ID30895["generic"]["h2_training_rangerschilling_cell"][0] = %h2_training_rangerschilling_cell;
    level._ID30895["generic"]["h2_training_rangerschilling_rifle"][0] = %h2_training_rangerschilling_rifle;
    level._ID30895["generic"]["h2_training_jogging_runner1"][0] = %h2_training_jogging_runner1;
    level._ID30895["generic"]["h2_training_jogging_runner2"][0] = %h2_training_jogging_runner2;
    level._ID30895["generic"]["h2_training_jogging_runner3"][0] = %h2_training_jogging_runner3;
    level._ID30895["generic"]["h2_training_jogging_runner4"][0] = %h2_training_jogging_runner4;
    level._ID30895["generic"]["h2_training_shootingrange_ranger01"][0] = %h2_training_shootingrange_ranger01;
    level._ID30895["generic"]["h2_training_shootingrange_ranger02"][0] = %h2_training_shootingrange_ranger02;
    level._ID30895["generic"]["h2_training_shootingrange_ranger03"][0] = %h2_training_shootingrange_ranger03;
    level._ID30895["generic"]["h2_training_shootingrange_ranger04"][0] = %h2_training_shootingrange_ranger04;
    level._ID30895["generic"]["h2_training_stand_0"] = %h2_training_shootingrange_stand_shootloop_single;
    level._ID30895["generic"]["h2_training_stand_1"] = %h2_training_shootingrange_stand_shootloop_burst;
    level._ID30895["generic"]["h2_training_stand_2"] = %h2_training_shootingrange_stand_reload;
    level._ID30895["generic"]["h2_training_stand_3"] = %h2_training_shootingrange_stand_gunjam;
    level._ID30895["generic"]["h2_training_stand_4"] = %h2_training_shootingrange_stand_gunproblem;
    level._ID30895["generic"]["h2_training_stand_5"] = %h2_training_shootingrange_stand_surprised;
    level._ID30895["generic"]["h2_training_stand_6"] = %h2_training_shootingrange_stand_lookaround;
    level._ID30895["generic"]["h2_training_stand_7"] = %h2_training_shootingrange_stand_2_crouch;
    level._ID30895["generic"]["h2_training_crouch_0"] = %h2_training_shootingrange_crouch_shootloop_single;
    level._ID30895["generic"]["h2_training_crouch_1"] = %h2_training_shootingrange_crouch_shootloop_mixed;
    level._ID30895["generic"]["h2_training_crouch_2"] = %h2_training_shootingrange_crouch_reload;
    level._ID30895["generic"]["h2_training_crouch_3"] = %h2_training_shootingrange_crouch_2_stand_reload;
    level._ID30895["generic"]["h2_training_shootingrange_formation_student"][0] = %h2_training_shootingrange_formation_student;
    level._ID30895["generic"]["h2_training_shootingrange_formation_teacher"][0] = %h2_training_shootingrange_formation_teacher;
    _ID42259::_ID2075( "generic", "h2_training_stand_0", "scn_h2_training_stand_0" );
    _ID42259::_ID2075( "generic", "h2_training_stand_1", "scn_h2_training_stand_1" );
    _ID42259::_ID2075( "generic", "h2_training_stand_2", "scn_h2_training_stand_2" );
    _ID42259::_ID2075( "generic", "h2_training_stand_3", "scn_h2_training_stand_3" );
    _ID42259::_ID2075( "generic", "h2_training_stand_4", "scn_h2_training_stand_4" );
    _ID42259::_ID2075( "generic", "h2_training_stand_5", "scn_h2_training_stand_5" );
    _ID42259::_ID2075( "generic", "h2_training_stand_6", "scn_h2_training_stand_6" );
    _ID42259::_ID2075( "generic", "h2_training_stand_7", "scn_h2_training_stand_7" );
    _ID42259::_ID2075( "generic", "h2_training_crouch_0", "scn_h2_training_crouch_0" );
    _ID42259::_ID2075( "generic", "h2_training_crouch_1", "scn_h2_training_crouch_1" );
    _ID42259::_ID2075( "generic", "h2_training_crouch_2", "scn_h2_training_crouch_2" );
    _ID42259::_ID2075( "generic", "h2_training_crouch_3", "scn_h2_training_crouch_3" );
    level._ID30900["generic"] = #animtree;
    level._ID30895["generic"]["h2_training_triotalking_soldier01_intro"] = %h2_training_triotalking_soldier01_intro;
    level._ID30895["generic"]["h2_training_triotalking_soldier01"][0] = %h2_training_triotalking_soldier01;
    level._ID30895["generic"]["h2_training_triotalking_soldier02_intro"] = %h2_training_triotalking_soldier02_intro;
    level._ID30895["generic"]["h2_training_triotalking_soldier02"][0] = %h2_training_triotalking_soldier02;
    level._ID30895["generic"]["h2_training_triotalking_soldier03_intro"] = %h2_training_triotalking_soldier03_intro;
    level._ID30895["generic"]["h2_training_triotalking_soldier03"][0] = %h2_training_triotalking_soldier03;
    level._ID30895["generic"]["h2_training_handshake_walking_01_intro"] = %h2_training_handshake_walking_01_intro;
    level._ID30895["generic"]["h2_training_handshake_walking_01"][0] = %h2_training_handshake_walking_01;
    level._ID30895["generic"]["h2_training_handshake_walking_02_intro"] = %h2_training_handshake_walking_02_intro;
    level._ID30895["generic"]["h2_training_handshake_walking_02"][0] = %h2_training_handshake_walking_02;
    level._ID30895["generic"]["h2_training_handshake_join_01_intro"] = %h2_training_handshake_join_01_intro;
    level._ID30895["generic"]["h2_training_handshake_join_01"][0] = %h2_training_handshake_join_01;
    level._ID30895["generic"]["h2_training_handshake_join_02_intro"] = %h2_training_handshake_join_02_intro;
    level._ID30895["generic"]["h2_training_handshake_join_02"][0] = %h2_training_handshake_join_02;
    level._ID30895["generic"]["h2_training_bbq_guy"][0] = %h2_training_bbq_guy;
    level._ID30895["generic"]["h2_training_daydream_sit_01"][0] = %h2_training_daydream_sit_01;
    level._ID30895["generic"]["h2_training_daydream_lean_02"][0] = %h2_training_daydream_lean_02;
    level._ID30895["generic"]["h2_training_daydream_sitground_01"][0] = %h2_training_daydream_sitground_01;
    level._ID30895["generic"]["h2_training_daydream_leg_crate"][0] = %h2_training_daydream_leg_crate;
    level._ID30895["generic"]["h2_training_daydream_sitchair"][0] = %h2_training_daydream_sitchair;
    level._ID30895["generic"]["h2_training_chilling_ground_ranger01"][0] = %h2_training_chilling_ground_ranger01;
    level._ID30895["generic"]["h2_training_chilling_ground_ranger02"][0] = %h2_training_chilling_ground_ranger02;
    level._ID30895["generic"]["h2_training_crowdlife_duotalking_01"][0] = %h2_training_crowdlife_duotalking_01;
    level._ID30895["generic"]["h2_training_crowdlife_duotalking_02"][0] = %h2_training_crowdlife_duotalking_02;
    level._ID30895["generic"]["h2_training_controlroom_soldier"][0] = %h2_training_controlroom_soldier;
    level._ID30895["generic"]["h2_training_burgertown_truck_soldier"][0] = %h2_training_burgertown_truck_soldier;
    level._ID30895["generic"]["h2_parabolic_leaning_guy_smoking_idle"][0] = %h2_parabolic_leaning_guy_smoking_idle;
    level._ID30895["generic"]["h1_killhouse_laptopguy_generic_typing"][0] = %h1_killhouse_laptopguy_generic_typing;
    level._ID30895["generic"]["h1_killhouse_laptopguy_typing_variation"][0] = %h1_killhouse_laptopguy_typing_variation;
    level._ID30895["generic"]["h2_training_basketball_guy1"][0] = %h2_training_basketball_guy1;
    level._ID30895["generic"]["h2_training_basketball_guy2"][0] = %h2_training_basketball_guy2;
    level._ID30895["generic"]["h2_roadkill_latvee_map_sequence_quiet_idle"][0] = %h2_roadkill_latvee_map_sequence_quiet_idle;
    level._ID30895["generic"]["h2_training_shepherdwatching_shepherd_walk"] = %h2_training_shepherdwatching_shepherd_walk;
    level._ID30895["generic"]["h2_training_shepherdwatching_shepherd_loop"][0] = %h2_training_shepherdwatching_shepherd_loop;
    level._ID30895["generic"]["h2_training_shepherdwatching_shepherd_forward"] = %h2_training_shepherdwatching_shepherd_forward;
    level._ID30895["generic"]["h2_training_shepherdwatching_shepherd_Endloop"][0] = %h2_training_shepherdwatching_shepherd_endloop;
    level._ID30895["generic"]["h2_training_shepherdwatching_soldier01_walk"] = %h2_training_shepherdwatching_soldier01_walk;
    level._ID30895["generic"]["h2_training_shepherdwatching_soldier01_loop"][0] = %h2_training_shepherdwatching_soldier01_loop;
    level._ID30895["generic"]["h2_training_shepherdwatching_soldier01_forward"] = %h2_training_shepherdwatching_soldier01_forward;
    level._ID30895["generic"]["h2_training_shepherdwatching_soldier01_Endloop"][0] = %h2_training_shepherdwatching_soldier01_endloop;
    level._ID30895["generic"]["h2_training_shepherdwatching_soldier02_walk"] = %h2_training_shepherdwatching_soldier02_walk;
    level._ID30895["generic"]["h2_training_shepherdwatching_soldier02_loop"][0] = %h2_training_shepherdwatching_soldier02_loop;
    level._ID30895["generic"]["h2_training_shepherdwatching_soldier02_forward"] = %h2_training_shepherdwatching_soldier02_forward;
    level._ID30895["generic"]["h2_training_shepherdwatching_soldier02_Endloop"][0] = %h2_training_shepherdwatching_soldier02_endloop;
    level._ID30895["dunn"]["sitting_welcome_soldier"] = %h2_training_pit_sitting_welcome_soldier;
    _ID42259::_ID2062( "dunn", "dialog", "sitting_welcome_soldier", "train_cpd_welcomeback" );
    _ID42259::_ID2062( "dunn", "dialog", "sitting_welcome_soldier", "train_cpd_specialop" );
    level._ID30895["dunn"]["sitting_welcome_soldier_grab"] = %h2_training_pit_sitting_welcome_pistol_soldier;
    _ID42259::_ID2062( "dunn", "dialog", "sitting_welcome_soldier_grab", "train_cpd_grabapistol" );
    level._ID30895["dunn"]["sitting_welcome_soldier_sidearm"] = %h2_training_pit_sitting_welcome_sidearm_soldier;
    _ID42259::_ID2062( "dunn", "dialog", "sitting_welcome_soldier_sidearm", "train_cpd_alreadyhave" );
    level._ID30895["dunn"]["sitting_idle_soldier"][0] = %h2_training_pit_sitting_idle_soldier;
    _ID42259::_ID2058( "dunn", "stopidle", ::_unknown_2261, "sitting_idle_soldier" );
    level._ID30895["dunn"]["sitting_switchgun_VO1"] = %h2_training_pit_sitting_switchgun_vo1_soldier;
    _ID42259::_ID2062( "dunn", "dialog", "sitting_switchgun_VO1", "train_cpd_switchtorifle" );
    level._ID30895["dunn"]["sitting_switchgun_VO1_switch"] = %h2_training_pit_sitting_switchgun_vo1_sidearm_soldier;
    _ID42259::_ID2062( "dunn", "dialog", "sitting_switchgun_VO1_switch", "train_cpd_tryswitching" );
    level._ID30895["dunn"]["sitting_switchgun_idle"][0] = %h2_training_pit_sitting_switchgun_idle_soldier;
    _ID42259::_ID2058( "dunn", "stopidle", ::_unknown_22D5, "sitting_switchgun_idle" );
    level._ID30895["dunn"]["sitting_switchgun_VO2"] = %h2_training_pit_sitting_switchgun_vo2_soldier;
    _ID42259::_ID2062( "dunn", "dialog", "sitting_switchgun_VO2", "train_cpd_switchtosidearm" );
    level._ID30895["dunn"]["open_case_soldier"] = %h2_training_pit_open_case_soldier;
    _ID42259::_ID2062( "dunn", "dialog", "open_case_soldier", "train_cpd_alwaysfaster" );
    _ID42259::_ID2062( "dunn", "dialog", "open_case_soldier", "train_cpd_smileforcameras" );
    _ID42259::_ID2062( "dunn", "dialog", "open_case_soldier", "train_cpd_timerstarts" );
    _ID42259::_ID2062( "dunn", "dialog", "open_case_soldier", "train_cpd_putusin" );
    _ID42259::_ID2062( "dunn", "dialog", "open_case_soldier", "train_cpd_socombrass" );
    _ID42259::_ID2062( "dunn", "dialog", "open_case_soldier", "train_cpd_realaction" );
    _ID42259::_ID2063( "dunn", "case_flip_01", "case_flip_01", "open_case_soldier" );
    _ID42259::_ID2063( "dunn", "case_flip_02", "case_flip_02", "open_case_soldier" );
    _ID42259::_ID2063( "dunn", "button_press", "button_press", "open_case_soldier" );
    level._ID30895["dunn"]["stand_wait_idle"] = %h2_training_pit_stand_wait_idle_soldier;
    level._ID30895["dunn"]["stand_End_VO3"] = %h2_training_pit_stand_end_vo3_soldier;
    _ID42259::_ID2062( "dunn", "dialog", "stand_End_VO3", "train_cpd_donthaveallday" );
    level._ID30895["dunn"]["stand_End_idle"][0] = %h2_training_pit_stand_end_idle_soldier;
    level._ID30895["dunn"]["stand_End_VO4"] = %h2_training_pit_stand_end_vo4_soldier;
    _ID42259::_ID2062( "dunn", "dialog", "stand_End_VO4", "train_cpd_bothintrouble" );
    level._ID30895["dunn"]["dunn_pit_outro"] = %h2_training_pit_outro;
    _ID42259::_ID2058( "dunn", "Result_dialog", ::_unknown_24A0, "dunn_pit_outro" );
    _ID42259::_ID2058( "dunn", "dialog", ::_unknown_2556, "dunn_pit_outro" );
    level._ID30895["dunn"]["dunn_pit_outro_idle"][0] = %h2_training_pit_outro_idle;
    level._ID30895["dunn"]["dunn_pit_outro_retry"] = %h2_training_pit_outro_stay;
    _ID42259::_ID2058( "dunn", "dialog", ::_unknown_24EC, "dunn_pit_outro_retry" );
    level._ID30895["dunn"]["dunn_pit_outro_retry_idle"][0] = %h2_training_pit_outro_stay_idle;
    level._ID30895["dunn"]["dunn_pit_tryagain"] = %h2_training_pit_outro_tryagain;
    _ID42259::_ID2062( "dunn", "dialog", "dunn_pit_tryagain", "train_cpd_anothergo" );
    level._ID30895["dunn"]["h2_headupstairs_outro_out"] = %h2_training_pit_outro_out;
    _ID42259::_ID2062( "dunn", "dialog", "h2_headupstairs_outro_out", "train_cpd_headupstairs" );
    level._ID30895["generic"]["training_latvee_repair"][0] = %training_latvee_repair;
    level._ID30895["generic"]["killhouse_laptop_idle"][0] = %killhouse_laptop_idle;
    level._ID30895["generic"]["killhouse_laptop_idle"][1] = %killhouse_laptop_lookup;
    level._ID30895["generic"]["killhouse_laptop_idle"][2] = %killhouse_laptop_twitch;
    level._ID30895["generic"]["cliffhanger_welder_wing"][0] = %cliffhanger_welder_wing;
    level._ID30895["generic"]["cliffhanger_welder_engine"][0] = %cliffhanger_welder_engine;
    level._ID30895["generic"]["patrolstand_idle"][0] = %patrolstand_idle;
    level._ID30895["generic"]["parabolic_guard_sleeper_idle"][0] = %parabolic_guard_sleeper_idle;
    level._ID30895["generic"]["roadkill_cover_spotter_idle"][0] = %roadkill_cover_spotter_idle;
    level._ID30895["generic"]["oilrig_balcony_smoke_idle"][0] = %oilrig_balcony_smoke_idle;
    level._ID30895["generic"]["killhouse_gaz_idleB"][0] = %killhouse_gaz_idleb;
    level._ID30895["generic"]["civilian_sitting_talking_A_2"][0] = %civilian_sitting_talking_a_2;
    level._ID30895["generic"]["parabolic_leaning_guy_smoking_idle"][0] = %parabolic_leaning_guy_smoking_idle;
    level._ID30895["generic"]["parabolic_leaning_guy_idle"][0] = %parabolic_leaning_guy_idle;
    level._ID30895["generic"]["parabolic_leaning_guy_idle_training"][0] = %parabolic_leaning_guy_idle_training;
    level._ID30895["generic"]["civilian_texting_sitting"][0] = %civilian_texting_sitting;
    level._ID30895["generic"]["sitting_guard_loadAK_idle"][0] = %sitting_guard_loadak_idle;
    level._ID30895["generic"]["afgan_caves_sleeping_guard_idle"][0] = %afgan_caves_sleeping_guard_idle;
    level._ID30895["generic"]["cargoship_sleeping_guy_idle_2"][0] = %cargoship_sleeping_guy_idle_2;
    level._ID30895["generic"]["civilian_sitting_talking_A_1"][0] = %civilian_sitting_talking_a_1;
    level._ID30895["generic"]["bunker_toss_idle_guy1"][0] = %bunker_toss_idle_guy1;
    level._ID30895["generic"]["roadkill_cover_radio_soldier3"][0] = %roadkill_cover_radio_soldier3;
    level._ID30895["generic"]["civilian_sitting_talking_B_1"][0] = %civilian_sitting_talking_b_1;
    level._ID30895["generic"]["civilian_smoking_A"][0] = %civilian_smoking_a;
    level._ID30895["generic"]["civilian_reader_1"][0] = %civilian_reader_1;
    level._ID30895["generic"]["civilian_reader_2"][0] = %civilian_reader_2;
    level._ID30895["generic"]["guardA_sit_sleeper_sleep_idle"] = %guarda_sit_sleeper_sleep_idle;
    level._ID30895["generic"]["roadkill_latvee_map_sequence_quiet_idle"][0] = %roadkill_latvee_map_sequence_quiet_idle;
    level._ID30895["generic"]["guardB_sit_drinker_idle"][0] = %guardb_sit_drinker_idle;
    level._ID30895["generic"]["guardB_standing_cold_idle"][0] = %guardb_standing_cold_idle;
    level._ID30895["generic"]["civilian_texting_standing"][0] = %civilian_texting_standing;
    level._ID30895["generic"]["killhouse_sas_2_idle"][0] = %killhouse_sas_2_idle;
    level._ID30895["generic"]["killhouse_sas_3_idle"][0] = %killhouse_sas_3_idle;
    level._ID30895["generic"]["killhouse_sas_price_idle"][0] = %killhouse_sas_price_idle;
    level._ID30895["generic"]["killhouse_sas_1_idle"][0] = %killhouse_sas_1_idle;
    level._ID30895["generic"]["little_bird_casual_idle_guy1"][0] = %little_bird_casual_idle_guy1;
    level._ID30895["generic"]["sniper_escape_spotter_idle"][0] = %sniper_escape_spotter_idle;
    level._ID30895["generic"]["patrol_bored_idle"][0] = %patrol_bored_idle;
    level._ID30895["generic"]["training_woundedwalk_soldier_1"] = %training_woundedwalk_soldier_1;
    level._ID30895["generic"]["training_woundedwalk_soldier_2"] = %training_woundedwalk_soldier_2;
    level._ID30895["generic"]["hostage_pickup_runout_guy1"] = %hostage_pickup_runout_guy1;
    level._ID30895["generic"]["hostage_pickup_runout_guy2"] = %hostage_pickup_runout_guy2;
    level._ID30895["generic"]["DC_Burning_stop_bleeding_medic"] = %dc_burning_stop_bleeding_medic;
    _ID42259::_ID2057( "generic", "attach prop", "clotting_powder_animated", "TAG_INHAND", "DC_Burning_stop_bleeding_medic" );
    _ID42259::_ID2059( "generic", "dettach prop", "clotting_powder_animated", "TAG_INHAND", "DC_Burning_stop_bleeding_medic" );
    level._ID30895["generic"]["DC_Burning_stop_bleeding_wounded"] = %dc_burning_stop_bleeding_wounded;
    level._ID30895["generic"]["DC_Burning_stop_bleeding_medic_idle"][0] = %dc_burning_stop_bleeding_medic_endidle;
    level._ID30895["generic"]["DC_Burning_stop_bleeding_wounded_idle"][0] = %dc_burning_stop_bleeding_wounded_endidle;
    level._ID30895["carrier"]["wounded_pickup"] = %wounded_pickup_carrierguy;
    level._ID30895["carried"]["wounded_pickup"] = %wounded_pickup_carriedguy;
    level._ID30895["carrier"]["wounded_carry"] = %wounded_carry_fastwalk_carrier;
    level._ID30895["carried"]["wounded_carry"] = %wounded_carry_fastwalk_wounded;
    level._ID30895["generic"]["cliff_guardA_flick"] = %cliff_guarda_flick;
    level._ID30895["generic"]["unarmed_climb_wall"] = %unarmed_climb_wall;
    level._ID30895["generic"]["civilian_walk_coffee"][0] = %civilian_walk_coffee;
    level._ID30895["generic"]["civilian_walk_cool"][0] = %civilian_walk_cool;
    level._ID30895["generic"]["patrol_bored_patrolwalk"][0] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["patrolwalk_swagger"][0] = %patrolwalk_swagger;
    level._ID30895["generic"]["civilian_walk_hurried_1"][0] = %civilian_walk_hurried_1;
    level._ID30895["generic"]["civilian_crowd_behavior_A"][0] = %civilian_crowd_behavior_a;
    level._ID30895["generic"]["civilian_crazywalker_loop"][0] = %civilian_crazywalker_loop;
    level._ID30895["generic"]["civilian_cellphonewalk"][0] = %civilian_cellphonewalk;
    level._ID30895["generic"]["civilian_briefcase_walk_shoelace"][0] = %civilian_briefcase_walk_shoelace;
    level._ID30895["generic"]["civilian_sodawalk"][0] = %civilian_sodawalk;
    _ID42259::_ID2058( "generic", "footstep_right_large", ::_unknown_2A10 );
    _ID42259::_ID2058( "generic", "footstep_left_large", ::_unknown_2A1F );
    _ID42259::_ID2058( "generic", "footstep_right_small", ::_unknown_2A2E );
    _ID42259::_ID2058( "generic", "footstep_left_small", ::_unknown_2A3D );
    level._ID30895["generic"]["h2_training_ending_soldier02"] = %h2_training_ending_soldier02;
    level._ID30895["generic"]["h2_training_ending_soldier03"] = %h2_training_ending_soldier03;
    _ID42259::_ID2062( "generic", "dialog", "h2_training_ending_soldier03", "train_ar1_trapped" );
    _ID42259::_ID2058( "generic", "dialog", ::_unknown_2AA0, "h2_training_ending_soldier03", 3 );
    level._ID30895["generic"]["h2_training_ending_soldier04"] = %h2_training_ending_soldier04;
    level._ID30895["generic"]["h2_training_ending_injured"] = %h2_training_ending_injured;
    level._ID30895["generic"]["h2_training_ending_soldier01"] = %h2_training_ending_soldier01;
    _ID42259::_ID2062( "generic", "dialog", "h2_training_ending_soldier01", "train_ar2_blewthebridge" );
    _ID42259::_ID2058( "generic", "dialog", ::_unknown_2B02, "h2_training_ending_soldier01", 1.5 );
    level._ID30895["foley"]["h2_training_ending_foley"] = %h2_training_ending_foley;
    _ID42259::_ID2062( "foley", "dialog", "h2_training_ending_foley", "train_fly_movingout" );
    level._ID30895["generic"]["h2_training_ending_foleylatdriver"] = %h2_training_ending_foleylatdriver;
    level._ID30895["generic"]["h2_training_ending_lat01_guy"] = %h2_training_ending_lat01_guy;
    level._ID30895["generic"]["h2_training_ending_lat01_guy2"] = %h2_training_ending_lat01_guy2;
    level._ID30895["generic"]["h2_training_ending_lat02_frontguy"] = %h2_training_ending_lat02_frontguy;
    level._ID30895["generic"]["h2_training_ending_lat02_backguy"] = %h2_training_ending_lat02_backguy;
    level._ID30895["generic"]["h2_training_ending_lat02_driver"] = %h2_training_ending_lat02_driver;
    level._ID30895["generic"]["h2_training_ending_lat01_medic01"] = %h2_training_ending_lat01_medic01;
    level._ID30895["generic"]["h2_training_ending_lat01_medic02"] = %h2_training_ending_lat01_medic02;
    level._ID30895["generic"]["h2_training_ending_carrier"] = %h2_training_ending_carrier;
}

_ID10742()
{
    level._ID30909["court_nag_00"] = "train_ar2_getoffcourt";
    level._ID30909["court_nag_01"] = "train_ar2_waityourturn";
    level._ID30909["court_nag_02"] = "train_ar2_allenwhatthe";
    level._ID30909["foley"]["train_fly_turnaround"] = "train_fly_turnaround";
    level._ID30901["foley"]["train_fly_turnaround"] = %h2_training_intro_foley_turnaround;
    level._ID30909["foley"]["nag_rifle_pickup_01"] = "train_fly_grabthatweapon";
    level._ID30909["foley"]["nag_rifle_pickup_02"] = "train_fly_comeonallen";
    level._ID30909["foley"]["nag_hip_fire_01"] = "train_fly_dontaimdown";
    level._ID30909["foley"]["nag_hip_fire_02"] = "train_fly_firefromthehip";
    level._ID30909["foley"]["train_fly_tryafew"] = "train_fly_tryafew";
    level._ID30909["foley"]["nag_ads_fire_01"] = "train_fly_beforeengaging";
    level._ID30909["foley"]["nag_ads_fire_02"] = "train_fly_dontforget";
    level._ID30909["foley"]["nag_crouch_fire_01"] = "train_fly_crouchingstance";
    level._ID30909["foley"]["nag_crouch_fire_02"] = "train_fly_crouched";
    level._ID30909["foley"]["timed_ads_too_slow_00"] = "train_fly_tooslow";
    level._ID30909["foley"]["timed_ads_too_slow_01"] = "train_fly_acquirenew";
    level._ID30909["foley"]["timed_ads_too_slow_02"] = "train_fly_poppinginandout";
    level._ID30909["foley"]["timed_ads_not_snapping_00"] = "train_fly_speeditup";
    level._ID30909["foley"]["timed_ads_not_snapping_01"] = "train_fly_notsnapping";
    level._ID30909["foley"]["timed_ads_not_snapping_02"] = "train_fly_doingitwrong";
    level._ID30909["foley"]["nag_ads_snap_01"] = "train_fly_aimtosnap";
    level._ID30909["foley"]["nag_ads_snap_02"] = "train_fly_forgettoaim";
    level._ID30909["foley"]["nag_ads_snap_03"] = "train_fly_fromthehip";
    level._ID30909["foley"]["nag_ads_snap_04"] = "train_fly_notaimingprop";
    level._ID30909["foley"]["nag_penetration_fire_01"] = "train_fly_woodpanel";
    level._ID30901["foley"]["nag_penetration_fire_01"] = %train_fly_woodpanel;
    level._ID30909["foley"]["nag_penetration_fire_02"] = "train_fly_allenwoodpanel";
    level._ID30909["foley"]["frag_nag_00"] = "train_fly_throwagrenade";
    level._ID30909["foley"]["frag_nag_01"] = "train_fly_letsgothrow";
    level._ID30909["foley"]["frag_nag_02"] = "train_fly_grenadedownrange";
    level._ID30909["dunn"]["train_cpd_welcomeback"] = "train_cpd_welcomeback";
    level._ID30909["dunn"]["train_cpd_specialop"] = "train_cpd_specialop";
    level._ID30909["dunn"]["train_cpd_grabapistol"] = "train_cpd_grabapistol";
    level._ID30909["dunn"]["train_cpd_alreadyhave"] = "train_cpd_alreadyhave";
    level._ID30909["dunn"]["train_cpd_switchtorifle"] = "train_cpd_switchtorifle";
    level._ID30909["dunn"]["train_cpd_switchtosidearm"] = "train_cpd_switchtosidearm";
    level._ID30909["dunn"]["train_cpd_tryswitching"] = "train_cpd_tryswitching";
    level._ID30909["dunn"]["train_cpd_alwaysfaster"] = "train_cpd_alwaysfaster";
    level._ID30909["dunn"]["train_cpd_smileforcameras"] = "train_cpd_smileforcameras";
    level._ID30909["dunn"]["train_cpd_timerstarts"] = "train_cpd_timerstarts";
    level._ID30909["dunn"]["train_cpd_donthaveallday"] = "train_cpd_donthaveallday";
    level._ID30909["dunn"]["train_cpd_bothintrouble"] = "train_cpd_bothintrouble";
    level._ID30909["dunn"]["train_cpd_putusin"] = "train_cpd_putusin";
    level._ID30909["dunn"]["train_cpd_socombrass"] = "train_cpd_socombrass";
    level._ID30909["dunn"]["train_cpd_realaction"] = "train_cpd_realaction";
    level._ID30909["dunn"]["train_cpd_sigh"] = "train_cpd_sigh";
    level._ID30908["train_cpd_clearthearea"] = "train_cpd_clearthearea";
    level._ID30908["train_cpd_clearfirstgogogo"] = "train_cpd_clearfirstgogogo";
    level._ID30908["train_cpd_areacleared"] = "train_cpd_areacleared";
    level._ID30908["train_cpd_upthestairs"] = "train_cpd_upthestairs";
    level._ID30908["train_cpd_lastareamove"] = "train_cpd_lastareamove";
    level._ID30908["train_cpd_justswitch"] = "train_cpd_justswitch";
    level._ID30908["train_cpd_missedsome"] = "train_cpd_missedsome";
    level._ID30908["train_cpd_lefttargets"] = "train_cpd_lefttargets";
    level._ID30908["train_cpd_watchout"] = "train_cpd_watchout";
    level._ID30908["train_cpd_awwkilled"] = "train_cpd_awwkilled";
    level._ID30908["train_cpd_acivilian"] = "train_cpd_acivilian";
    level._ID30908["train_cpd_melee"] = "train_cpd_melee";
    level._ID30908["train_cpd_jumpdown"] = "train_cpd_jumpdown";
    level._ID30908["train_cpd_sprint"] = "train_cpd_sprint";
    level._ID30908["melee_nag_00"] = "train_cpd_melee";
    level._ID30908["melee_nag_01"] = "train_cpd_needtouseknife";
    level._ID30908["melee_nag_02"] = "train_cpd_nobullets";
    level._ID30908["melee_nag_03"] = "train_cpd_meleethattarget";
    level._ID30908["melee_nag_04"] = "train_cpd_useyourknife";
    level._ID30908["pit_ads_nag_00"] = "train_cpd_stopfiringfromhip";
    level._ID30908["pit_ads_nag_01"] = "train_cpd_aimsightsprivate";
    level._ID30908["pit_ads_nag_02"] = "train_cpd_needtoaim";
    level._ID30908["nag_hurry_00"] = "train_cpd_timedcourse";
    level._ID30908["nag_hurry_01"] = "train_cpd_movingforward";
    level._ID30908["nag_hurry_02"] = "train_cpd_movingforwardgo";
    level._ID30908["nag_hurry_03"] = "train_cpd_runningoutoftime";
    level._ID30908["nag_hurry_04"] = "train_cpd_timedcourse2";
    level._ID30908["nag_didnt_sprint_00"] = "train_cpd_needtosprint";
    level._ID30908["nag_didnt_sprint_01"] = "train_cpd_didntsprint";
    level._ID30908["nag_didnt_sprint_02"] = "train_cpd_gobackandsprint";
    level._ID30908["nag_didnt_sprint_03"] = "train_cpd_cantfinishsprint";
    level._ID30908["nag_sprint_00"] = "train_cpd_sprinttoexit";
    level._ID30908["nag_sprint_01"] = "train_cpd_movesprint";
    level._ID30908["nag_sprint_02"] = "train_cpd_sprintallengogogo";
    level._ID30908["nag_sprint_03"] = "train_cpd_nowsprint";
    level._ID30909["dunn"]["train_cpd_targetswithknife"] = "train_cpd_targetswithknife";
    level._ID30909["dunn"]["train_cpd_longandcivilians"] = "train_cpd_longandcivilians";
    level._ID30909["dunn"]["train_cpd_longandtargets"] = "train_cpd_longandtargets";
    level._ID30909["dunn"]["train_cpd_targets"] = "train_cpd_targets";
    level._ID30909["dunn"]["train_cpd_civilians"] = "train_cpd_civilians";
    level._ID30909["dunn"]["train_cpd_needtorunagain"] = "train_cpd_needtorunagain";
    level._ID30909["dunn"]["train_cpd_anothergo"] = "train_cpd_anothergo";
    level._ID30909["dunn"]["train_cpd_headupstairs"] = "train_cpd_headupstairs";
    level._ID30909["dunn"]["train_cpd_runagain"] = "train_cpd_runagain";
    level._ID30901["dunn"]["train_cpd_runagain"] = %h2_training_pit_outro_okheadupstairs;
    level._ID30909["dunn"]["end_of_course_easy_01"] = "train_cpd_sloppy";
    level._ID30909["dunn"]["end_of_course_easy_02"] = "train_cpd_alrgihtiguess";
    level._ID30901["dunn"]["end_of_course_easy_02"] = %h2_training_pit_outro_notbadlooks;
    level._ID30909["dunn"]["end_of_course_easy_03"] = "train_cpd_goodenough";
    level._ID30909["dunn"]["end_of_course_reg_01"] = "train_cpd_roughedges";
    level._ID30909["dunn"]["end_of_course_reg_02"] = "train_cpd_wasnthorrible";
    level._ID30909["dunn"]["end_of_course_reg_03"] = "train_cpd_lookok";
    level._ID30901["dunn"]["end_of_course_reg_03"] = %h2_training_pit_outro_youlookedok;
    level._ID30909["dunn"]["end_of_course_hard_01"] = "train_cpd_stillgotit";
    level._ID30909["dunn"]["end_of_course_hard_02"] = "train_cpd_prettygood";
    level._ID30909["dunn"]["end_of_course_hard_03"] = "train_cpd_verynice";
    level._ID30901["dunn"]["end_of_course_hard_03"] = %h2_training_pit_outro_okthatwas;
    level._ID30909["dunn"]["end_of_course_vet_01"] = "train_cpd_veryimpressive";
    level._ID30901["dunn"]["end_of_course_vet_01"] = %h2_training_pit_outro_veryimpressive;
    level._ID30909["dunn"]["end_of_course_vet_02"] = "train_cpd_amazingwork";
    level._ID30908["train_hqr_headedout"] = "train_hqr_headedout";
    level._ID30909["foley"]["train_fly_movingout"] = "train_fly_movingout";
    level._ID30909["generic"]["train_ar2_blewthebridge"] = "train_ar2_blewthebridge";
    level._ID30909["generic"]["train_ar1_trapped"] = "train_ar1_trapped";
    level._ID30909["conversation_01"][0] = "train_ar3_boonbugged";
    level._ID30909["conversation_01"][1] = "train_ar4_awol";
    level._ID30909["conversation_01"][2] = "train_ar2_getthoseletters";
    level._ID30909["conversation_01"][3] = "train_ar5_wordcame";
    level._ID30909["conversation_01"][4] = "train_ar2_camelspiders";
    level._ID30909["conversation_01"][5] = "train_ar1_somebatteries";
    level._ID30909["conversation_01"][6] = "train_ar4_likeagirl";
    level._ID30909["conversation_01"][7] = "train_ar4_holdgun";
    level._ID30909["conversation_01"][8] = "train_ar2_secureturret";
    level._ID30909["conversation_01"][9] = "train_ar3_sarmajor";
    level._ID30909["conversation_01"][10] = "train_ar2_nowomen";
    level._ID30909["conversation_01"][11] = "train_ar2_watchtonight";
    level._ID30909["conversation_01"][12] = "train_ar5_rolledout";
    level._ID30909["conversation_01"][13] = "train_ar1_alltheaction";
    level._ID30909["conversation_01"][14] = "train_ar2_icantsleep";
    level._ID30909["conversation_01"][15] = "train_ar2_newplugs";
    level._ID30909["conversation_01"][16] = "train_ar3_getthat";
    level._ID30909["conversation_01"][17] = "train_ar3_toyourself";
    level._ID30909["conversation_01"][18] = "train_ar2_combatjack";
    level._ID30909["conversation_01"][19] = "train_ar5_laugh1";
    level._ID30909["conversation_01"][20] = "train_ar4_traincops";
    level._ID30909["conversation_01"][21] = "train_ar4_tracksuits";
    level._ID30909["conversation_01"][22] = "train_ar4_ridiculous";
    level._ID30909["conversation_02"][0] = "train_ar1_noammo";
    level._ID30909["conversation_02"][1] = "train_ar2_coldblooded";
    level._ID30909["conversation_02"][2] = "train_ar4_monkey";
    level._ID30909["conversation_02"][3] = "train_ar5_laugh1";
    level._ID30909["conversation_02"][4] = "train_ar2_wannagohome";
    level._ID30909["conversation_02"][5] = "train_ar1_motorpool";
    level._ID30909["conversation_02"][6] = "train_ar2_getpaid";
    level._ID30909["conversation_02"][7] = "train_ar3_checkmate";
    level._ID30909["conversation_02"][8] = "train_ar4_weakman";
    level._ID30909["conversation_02"][9] = "train_ar5_deltateam";
    level._ID30909["conversation_02"][10] = "train_ar1_dontthink";
    level._ID30909["conversation_02"][11] = "train_ar2_freakymask";
    level._ID30909["conversation_02"][12] = "train_ar3_nonregulation";
    level._ID30909["conversation_02"][13] = "train_ar4_yathink";
    level._ID30909["conversation_02"][14] = "train_ar5_bendersays";
    level._ID30909["conversation_02"][15] = "train_ar1_nobody";
    level._ID30909["conversation_02"][16] = "train_ar2_tellinya";
    level._ID30909["conversation_02"][17] = "train_ar3_bendersaysalot";
    level._ID30909["conversation_02"][18] = "train_ar2_whateverjerk";
    level._ID30909["conversation_02"][19] = "train_ar4_raisins";
    level._ID30909["conversation_02"][20] = "train_ar5_yeah";
    level._ID30909["conversation_02"][21] = "train_ar1_forkemover";
    level._ID30909["conversation_02"][22] = "train_ar2_thanksman";
    level._ID30909["conversation_02"][23] = "train_ar2_howsyourfamily";
    level._ID30909["conversation_02"][24] = "train_ar3_bloodtype";
    level._ID30909["conversation_02"][25] = "train_ar4_dboysdo";
    level._ID30909["conversation_02"][26] = "train_ar2_boxoftracers";
    level._ID30909["conversation_02"][27] = "train_ar2_sleepsometime";
    level._ID30909["conversation_02"][28] = "train_ar4_tasteofsand";
    level._ID30909["conversation_02"][29] = "train_ar4_sandyorafice";
    level._ID30909["conversation_02"][30] = "train_ar4_crapsand";
    level._ID30909["conversation_03"][0] = "train_ar2_stufffrommom";
    level._ID30909["conversation_03"][1] = "train_ar5_laugh3";
    level._ID30909["conversation_03"][2] = "train_ar3_onetracer";
    level._ID30909["conversation_03"][3] = "train_ar4_coolidea";
    level._ID30909["conversation_03"][4] = "train_ar4_oldlady";
    level._ID30909["conversation_03"][5] = "train_ar4_dontwish";
    level._ID30909["conversation_03"][6] = "train_ar1_extramag";
    level._ID30909["conversation_03"][7] = "train_ar2_gotfive";
    level._ID30909["conversation_03"][8] = "train_ar5_wannalive";
    level._ID30909["conversation_03"][9] = "train_ar1_huah";
    level._ID30909["conversation_03"][10] = "train_ar1_carefulbooker";
    level._ID30909["conversation_03"][11] = "train_ar2_tightschedule";
    level._ID30909["conversation_03"][12] = "train_ar3_tooslow";
    level._ID30909["conversation_03"][13] = "train_ar4_swimming";
    level._ID30909["conversation_03"][14] = "train_ar2_seedeltaguys";
    level._ID30909["conversation_03"][15] = "train_ar2_shewashot";
}
#using_animtree("vehicles");

_ID40317()
{
    level._ID30895["bridge_layer_bridge"]["bridge_lower"] = %h2_roadkill_m60a1_bridge_lower;
    level._ID30895["bridge_layer_bridge"]["bridge_raise"] = %m60a1_bridge_raise;
    level._ID30895["bridge_layer"]["bridge_lower"] = %h2_roadkill_m60a1_tank_lower;
    level._ID30895["bridge_layer"]["bridge_raise"] = %m60a1_tank_raise;
    level._ID30895["bridge_layer"]["bridge_arm_lower"] = %roadkill_m60a1_arm_lower;
    level._ID30900["bridge_layer_bridge"] = #animtree;
    level._ID30900["bridge_layer"] = #animtree;
}
#using_animtree("player");

_ID27230()
{
    level._ID30904["viewbody"] = "viewbody_us_army";
    level._ID30900["viewbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_us_army";
    level._ID30900["worldbody"] = #animtree;
    level._ID30895["worldbody"]["training_intro_gunpickup"] = %h2_training_intro_player_gunpickup;
    level._ID30895["worldbody"]["training_intro_grenadepickup"] = %h2_training_intro_player_grenadepickup;
    _ID42259::_ID2058( "worldbody", "pick_up_additional_grenade", maps\trainer::firing_range_player_pick_up_additional_grenade, "training_intro_grenadepickup" );
}
#using_animtree("script_model");

_ID23866()
{
    level._ID30895["laatpv"]["h2_training_ending_foleylatvee"] = %h2_training_ending_foleylatvee;
    level._ID30895["laatpv"]["h2_training_ending_latvee01"] = %h2_training_ending_latvee01;
    level._ID30895["laatpv"]["h2_training_ending_latvee02"] = %h2_training_ending_latvee02;
    level._ID30900["laatpv"] = #animtree;
    level._ID30895["pit_gun"]["sitting_welcome_soldier"] = %h2_training_pit_sitting_welcome_gun;
    level._ID30895["pit_gun"]["sitting_welcome_soldier_grab"] = %h2_training_pit_sitting_welcome_pistol_gun;
    level._ID30895["pit_gun"]["sitting_welcome_soldier_sidearm"] = %h2_training_pit_sitting_welcome_sidearm_gun;
    level._ID30895["pit_gun"]["sitting_idle_soldier"][0] = %h2_training_pit_sitting_idle_gun;
    level._ID30895["pit_gun"]["sitting_switchgun_VO1"] = %h2_training_pit_sitting_switchgun_vo1_gun;
    level._ID30895["pit_gun"]["sitting_switchgun_VO1_switch"] = %h2_training_pit_sitting_switchgun_vo1_sidearm_gun;
    level._ID30895["pit_gun"]["sitting_switchgun_idle"][0] = %h2_training_pit_sitting_switchgun_idle_gun;
    level._ID30895["pit_gun"]["sitting_switchgun_VO2"] = %h2_training_pit_sitting_switchgun_vo2_gun;
    level._ID30895["pit_gun"]["open_case_soldier"] = %h2_training_pit_open_case_gun;
    level._ID30895["pit_gun"]["stand_wait_idle"] = %h2_training_pit_stand_wait_idle_gun;
    level._ID30895["pit_gun"]["stand_End_VO3"] = %h2_training_pit_stand_end_vo3_gun;
    level._ID30895["pit_gun"]["stand_End_idle"][0] = %h2_training_pit_stand_end_idle_gun;
    level._ID30895["pit_gun"]["stand_End_VO4"] = %h2_training_pit_stand_end_vo4_gun;
    level._ID30895["ac130"]["ac130_intro"] = %h2_training_ac130_intro;
    level._ID30895["ac130"]["h2_training_ac130_intro_rotors"][0] = %h2_training_ac130_intro_rotors;
    level._ID30900["ac130"] = #animtree;
    level._ID30900["pit_gun"] = #animtree;
    level._ID30895["training_case_01"]["open_case_soldier"] = %h2_training_pit_case_1;
    level._ID30895["training_case_02"]["open_case_soldier"] = %h2_training_pit_case_2;
    level._ID30900["training_case_01"] = #animtree;
    level._ID30900["training_case_02"] = #animtree;
    level._ID30895["tarp"]["training_camo_tarp_wind"][0] = %training_camo_tarp_wind;
    level._ID30900["tarp"] = #animtree;
    var_0 = _func_1A2( "tarps", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID3184 = _func_06A( "script_origin", ( 0, 0, 0 ) );
        var_2._ID3184._ID740 = var_2._ID740;
        var_2._ID3184._ID65 = var_2._ID65;
        var_2._ID3189 = "tarp";
        var_2 _ID42407::_ID3428();
        var_2._ID3184 thread _ID42259::_ID3044( var_2, "training_camo_tarp_wind", undefined, "stop_loop" );
    }

    var_clear_2
    var_clear_0
    level._ID30900["grenade_box"] = #animtree;
    level._ID30895["grenade_box"]["training_intro_talk7"] = %h2_training_intro_foley_grenadebox;
    level._ID30900["grenade1"] = #animtree;
    level._ID30895["grenade1"]["training_intro_grenadepickup"] = %h2_training_intro_player_grenadepickup_grenade1;
    level._ID30900["grenade2"] = #animtree;
    level._ID30895["grenade2"]["training_intro_grenadepickup"] = %h2_training_intro_player_grenadepickup_grenade2;
    level._ID30900["grenade3"] = #animtree;
    level._ID30895["grenade3"]["training_intro_grenadepickup"] = %h2_training_intro_player_grenadepickup_grenade3;
    level._ID30900["intro_gun"] = #animtree;
    level._ID30895["intro_gun"]["training_intro_gunpickup"] = %h2_training_intro_player_gunpickup_gun;
    level._ID30900["windstock"] = #animtree;
    level._ID30895["windstock"]["windstock_animated_slow"][0] = %h2_accessories_windsock_animated_slow;
    level._ID30895["windstock"]["windstock_animated_fast"][0] = %h2_accessories_windsock_animated_fast;
}
#using_animtree("animated_props");

_ID46873()
{
    level._ID30895["basketball"]["training_basketball_loop"][0] = %training_basketball_ball;
    level._ID30900["basketball"] = #animtree;
    _ID42259::_ID2058( "basketball", "ps_scn_trainer_bball_dribble", ::_unknown_3985 );
    _ID42259::_ID2058( "basketball", "ps_scn_trainer_bball_bounce_pass", ::_unknown_3994 );
}

_ID45571( var_0 )
{
    _func_157( _ID42237::_ID16299( "ball_bounce_dust_runner" ), var_0, "tag_origin" );
}

bounce_fx_guy( var_0 )
{
    _func_157( _ID42237::_ID16299( "basketball_player_bounce_dust" ), var_0, "tag_origin" );
}

dunnreadytocontinue( var_0 )
{
    level._ID47197 notify( "readyToGo" );
}

_ID47704( var_0 )
{
    if ( !_ID42237::_ID14385( "player_near_range" ) )
        return;

    var_0 _meth_80A1( "h2_wpn_m4a1_npc_close" );
    _func_157( _ID42237::_ID16299( "m16_muzzleflash" ), var_0, "tag_flash" );
}

guytalk( var_0, var_1 )
{
    var_0 thread _ID42259::_ID37173( var_1 );
}

detachitem( var_0, var_1 )
{
    var_2 = _func_1A1( "h2_prop_wrench", "targetname" );
    var_3 = _func_1A1( "h2_prop_plier", "targetname" );

    switch ( var_1 )
    {

    }

    case "plier":
    case "wrench":
}

attachitem( var_0, var_1 )
{
    var_2 = _func_1A1( "h2_prop_wrench", "targetname" );
    var_3 = _func_1A1( "h2_prop_plier", "targetname" );

    switch ( var_1 )
    {

    }

    case "plier":
    case "wrench":
}

playdunnvo( var_0 )
{
    var_1 = undefined;

    switch ( level._ID51689 )
    {

    }

    level._ID47197 thread maps\trainer::_ID10760( level._ID51689 );

    if ( _func_02F( var_1 ) )
    {
        var_0 thread _ID42259::_ID37173( var_1 );
        return;
        case "end_of_course_hard_02":
        case "end_of_course_vet_02":
        case "end_of_course_hard_01":
        case "end_of_course_reg_02":
        case "end_of_course_reg_01":
        case "end_of_course_easy_03":
        case "end_of_course_easy_01":
        case "train_cpd_needtorunagain":
        case "end_of_course_easy_02":
        case "train_cpd_headupstairs":
        case "train_cpd_civilians":
        case "end_of_course_vet_01":
        case "end_of_course_hard_03":
        case "end_of_course_reg_03":
        case "train_cpd_targets":
        case "train_cpd_longandtargets":
        case "train_cpd_longandcivilians":
        case "train_cpd_targetswithknife":
    }
}

audio_anims()
{
    wait 0.1;
    _ID42259::_ID2075( "worldbody", "training_intro_gunpickup", "scn_trainer_plr_gunpickup" );
    _ID42259::_ID2075( "worldbody", "training_intro_grenadepickup", "scn_trainer_plr_grenadepickup" );
    _ID42259::_ID2075( "foley", "training_intro_talk7", "scn_trainer_foley_open_grenade_case" );
    _ID42259::_ID2075( "generic", "h2_training_latveerepair_topguy", "scn_trainer_latvee_welder" );
    _ID42259::_ID2075( "generic", "h1_killhouse_laptopguy_generic_typing", "npc_generic_typing" );
    _ID42259::_ID2075( "generic", "h1_killhouse_laptopguy_typing_variation", "npc_typing_variation" );
    _ID42259::_ID2058( "laatpv", "open_door", ::_unknown_3CED, "h2_training_ending_foleylatvee" );
    _ID42259::_ID2058( "laatpv", "close_door", ::_unknown_3D05, "h2_training_ending_foleylatvee" );
    _ID42259::_ID2058( "laatpv", "open_door", ::_unknown_3D1D, "h2_training_ending_latvee01" );
    _ID42259::_ID2058( "laatpv", "open_door", ::_unknown_3D35, "h2_training_ending_latvee02" );
}

aud_open_door_foleylatvee( var_0 )
{
    var_0 thread _ID42407::_ID27080( "laatpv_door_open", "rear_door_left_jnt" );
}

aud_close_door_foleylatvee( var_0 )
{
    var_0 thread _ID42407::_ID27080( "laatpv_door_close", "rear_door_left_jnt" );
}

aud_open_door_latvee01( var_0 )
{
    var_0 thread _ID42407::_ID27080( "laatpv_door_open", "front_door_right_jnt" );
}

aud_open_door_latvee02( var_0 )
{
    var_0 thread _ID42407::_ID27080( "laatpv_door_open", "front_door_right_jnt" );
}

h2_dunn_headupstairs( var_0 )
{
    level._ID47197 _ID42407::_ID10805( "train_cpd_runagain" );
}
