// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

init()
{
    level.drone_anims["allies"]["stand"]["idle"] = %casual_stand_idle;
    level.drone_anims["allies"]["stand"]["run"] = %run_lowready_f_relative;
    level.drone_anims["allies"]["stand"]["death"] = %exposed_death;
    level.drone_anims["allies"]["stairs"]["up"] = %traverse_stair_run_relative;
    level.drone_anims["allies"]["stairs"]["down"] = %traverse_stair_run_down_relative;
    level.drone_anims["allies"]["covercrouch"]["idle"][0] = %covercrouch_hide_idle;
    level.drone_anims["allies"]["covercrouch"]["idle"][1] = %covercrouch_twitch_1;
    level.drone_anims["allies"]["covercrouch"]["idle"][2] = %covercrouch_twitch_2;
    level.drone_anims["allies"]["covercrouch"]["idle"][3] = %covercrouch_twitch_3;
    level.drone_anims["allies"]["covercrouch"]["idle"][4] = %covercrouch_hide_look;
    level.drone_anims["allies"]["covercrouch"]["hide_2_aim"] = %covercrouch_hide_2_aim;
    level.drone_anims["allies"]["covercrouch"]["aim_2_hide"] = %covercrouch_aim_2_hide;
    level.drone_anims["allies"]["covercrouch"]["reload"] = %covercrouch_reload_hide;
    level.drone_anims["allies"]["covercrouch"]["fire"] = %covercrouch_aim5;
    level.drone_anims["allies"]["covercrouch"]["death"] = %covercrouch_death_1;
    level.drone_anims["allies"]["covercrouch"]["pop_up_chance"] = 1;
    level.drone_anims["allies"]["coverstand"]["idle"][0] = %coverstand_hide_idle;
    level.drone_anims["allies"]["coverstand"]["idle"][1] = %coverstand_look_quick;
    level.drone_anims["allies"]["coverstand"]["idle"][2] = %coverstand_look_quick_v2;
    level.drone_anims["allies"]["coverstand"]["idle"][3] = %coverstand_hide_idle_twitch04;
    level.drone_anims["allies"]["coverstand"]["idle"][4] = %coverstand_hide_idle_twitch05;
    level.drone_anims["allies"]["coverstand"]["hide_2_aim"] = %coverstand_hide_2_aim;
    level.drone_anims["allies"]["coverstand"]["aim_2_hide"] = %coverstand_aim_2_hide;
    level.drone_anims["allies"]["coverstand"]["reload"] = %coverstand_reloada;
    level.drone_anims["allies"]["coverstand"]["fire"] = %exposed_aim_5;
    level.drone_anims["allies"]["coverstand"]["death"] = %coverstand_death_left;
    level.drone_anims["allies"]["coverstand"]["pop_up_chance"] = 1;
    level.drone_anims["allies"]["coverleftstand"]["idle"][0] = %corner_standl_alert_idle;
    level.drone_anims["allies"]["coverleftstand"]["idle"][1] = %corner_standl_alert_twitch01;
    level.drone_anims["allies"]["coverleftstand"]["idle"][2] = %corner_standl_alert_twitch02;
    level.drone_anims["allies"]["coverleftstand"]["idle"][3] = %corner_standl_alert_twitch03;
    level.drone_anims["allies"]["coverleftstand"]["idle"][4] = %corner_standl_alert_twitch04;
    level.drone_anims["allies"]["coverleftstand"]["hide_2_aim"] = %corner_standl_trans_alert_2_b_v2;
    level.drone_anims["allies"]["coverleftstand"]["aim_2_hide"] = %corner_standl_trans_b_2_alert_v2;
    level.drone_anims["allies"]["coverleftstand"]["reload"] = %corner_standl_reload_v1;
    level.drone_anims["allies"]["coverleftstand"]["fire"] = %exposed_aim_5;
    level.drone_anims["allies"]["coverleftstand"]["death"] = %corner_standl_deathb;
    level.drone_anims["allies"]["coverleftstand"]["pop_up_chance"] = 1;
    level.drone_anims["allies"]["coverrightstand"]["idle"][0] = %corner_standr_alert_idle;
    level.drone_anims["allies"]["coverrightstand"]["idle"][1] = %corner_standr_alert_twitch01;
    level.drone_anims["allies"]["coverrightstand"]["idle"][2] = %corner_standr_alert_twitch02;
    level.drone_anims["allies"]["coverrightstand"]["idle"][3] = %corner_standr_alert_twitch04;
    level.drone_anims["allies"]["coverrightstand"]["hide_2_aim"] = %corner_standr_trans_alert_2_b;
    level.drone_anims["allies"]["coverrightstand"]["aim_2_hide"] = %corner_standr_trans_b_2_alert;
    level.drone_anims["allies"]["coverrightstand"]["reload"] = %corner_standr_reload_v1;
    level.drone_anims["allies"]["coverrightstand"]["fire"] = %exposed_aim_5;
    level.drone_anims["allies"]["coverrightstand"]["death"] = %corner_standr_deathb;
    level.drone_anims["allies"]["coverrightstand"]["pop_up_chance"] = 1;
    level.drone_anims["allies"]["coverrightcrouch"]["idle"][0] = %cornercrr_alert_idle;
    level.drone_anims["allies"]["coverrightcrouch"]["idle"][1] = %cornercrr_alert_twitch_v1;
    level.drone_anims["allies"]["coverrightcrouch"]["idle"][2] = %cornercrr_alert_twitch_v2;
    level.drone_anims["allies"]["coverrightcrouch"]["idle"][3] = %cornercrr_alert_twitch_v3;
    level.drone_anims["allies"]["coverrightcrouch"]["hide_2_aim"] = %cornercrr_alert_2_lean;
    level.drone_anims["allies"]["coverrightcrouch"]["aim_2_hide"] = %cornercrr_lean_2_alert;
    level.drone_anims["allies"]["coverrightcrouch"]["reload"] = %cornercrr_reloada;
    level.drone_anims["allies"]["coverrightcrouch"]["death"] = %exposed_crouch_death_fetal;
    level.drone_anims["allies"]["coverrightcrouch"]["pop_up_chance"] = 1;
    level.drone_anims["allies"]["coverguard"]["idle"][0] = %exposed_crouch_idle_twitch_v2;
    level.drone_anims["allies"]["coverguard"]["idle"][1] = %exposed_crouch_idle_twitch_v3;
    level.drone_anims["allies"]["coverguard"]["reload"] = %exposed_crouch_reload;
    level.drone_anims["allies"]["coverguard"]["fire"] = %exposed_crouch_aim_5;
    level.drone_anims["allies"]["coverguard"]["death"] = %exposed_crouch_death_fetal;
    level.drone_anims["allies"]["coverguard"]["hide_2_aim"] = %covercrouch_hide_2_aim;
    level.drone_anims["allies"]["coverguard"]["aim_2_hide"] = %covercrouch_aim_2_hide;
    level.drone_anims["allies"]["coverguard"]["pop_up_chance"] = 0;
    level.drone_anims["allies"]["coverprone"]["idle"][0] = %prone_reaction_a;
    level.drone_anims["allies"]["coverprone"]["idle"][1] = %prone_twitch_ammocheck;
    level.drone_anims["allies"]["coverprone"]["idle"][2] = %prone_twitch_scan;
    level.drone_anims["allies"]["coverprone"]["idle"][3] = %prone_twitch_look;
    level.drone_anims["allies"]["coverprone"]["idle"][4] = %prone_twitch_lookup;
    level.drone_anims["allies"]["coverprone"]["hide_2_aim"] = %prone_2_crouch;
    level.drone_anims["allies"]["coverprone"]["aim_2_hide"] = %crouch_2_prone;
    level.drone_anims["allies"]["coverprone"]["reload"] = %prone_reload;
    level.drone_anims["allies"]["coverprone"]["fire"] = %prone_fire_1;
    level.drone_anims["allies"]["coverprone"]["fire_exposed"] = %exposed_crouch_aim_5;
    level.drone_anims["allies"]["coverprone"]["death"] = %saw_gunner_prone_death;
    level.drone_anims["allies"]["coverprone"]["pop_up_chance"] = 0.5;
    level.drone_anims["allies"]["coverprone_no_pop"]["idle"][0] = %prone_reaction_a;
    level.drone_anims["allies"]["coverprone_no_pop"]["idle"][1] = %prone_twitch_ammocheck;
    level.drone_anims["allies"]["coverprone_no_pop"]["idle"][2] = %prone_twitch_scan;
    level.drone_anims["allies"]["coverprone_no_pop"]["idle"][3] = %prone_twitch_look;
    level.drone_anims["allies"]["coverprone_no_pop"]["idle"][4] = %prone_twitch_lookup;
    level.drone_anims["allies"]["coverprone_no_pop"]["hide_2_aim"] = %prone_2_crouch;
    level.drone_anims["allies"]["coverprone_no_pop"]["aim_2_hide"] = %crouch_2_prone;
    level.drone_anims["allies"]["coverprone_no_pop"]["reload"] = %prone_reload;
    level.drone_anims["allies"]["coverprone_no_pop"]["fire"] = %prone_fire_1;
    level.drone_anims["allies"]["coverprone_no_pop"]["fire_exposed"] = %exposed_crouch_aim_5;
    level.drone_anims["allies"]["coverprone_no_pop"]["death"] = %saw_gunner_prone_death;
    level.drone_anims["allies"]["coverprone_no_pop"]["pop_up_chance"] = 0;
    level.drone_anims["axis"]["stand"]["idle"] = %casual_stand_idle;
    level.drone_anims["axis"]["stand"]["run"] = %run_lowready_f_relative;
    level.drone_anims["axis"]["stand"]["death"] = %exposed_death;
    level.drone_anims["axis"]["covercrouch"]["idle"][0] = %covercrouch_hide_idle;
    level.drone_anims["axis"]["covercrouch"]["idle"][1] = %covercrouch_twitch_1;
    level.drone_anims["axis"]["covercrouch"]["idle"][2] = %covercrouch_twitch_2;
    level.drone_anims["axis"]["covercrouch"]["idle"][3] = %covercrouch_twitch_3;
    level.drone_anims["axis"]["covercrouch"]["idle"][4] = %covercrouch_hide_look;
    level.drone_anims["axis"]["covercrouch"]["hide_2_aim"] = %covercrouch_hide_2_aim;
    level.drone_anims["axis"]["covercrouch"]["aim_2_hide"] = %covercrouch_aim_2_hide;
    level.drone_anims["axis"]["covercrouch"]["reload"] = %covercrouch_reload_hide;
    level.drone_anims["axis"]["covercrouch"]["fire"] = %covercrouch_aim5;
    level.drone_anims["axis"]["covercrouch"]["death"] = %covercrouch_death_1;
    level.drone_anims["axis"]["covercrouch"]["pop_up_chance"] = 1;
    level.drone_anims["axis"]["coverstand"]["idle"][0] = %coverstand_hide_idle;
    level.drone_anims["axis"]["coverstand"]["idle"][1] = %coverstand_look_quick;
    level.drone_anims["axis"]["coverstand"]["idle"][2] = %coverstand_look_quick_v2;
    level.drone_anims["axis"]["coverstand"]["idle"][3] = %coverstand_hide_idle_twitch04;
    level.drone_anims["axis"]["coverstand"]["idle"][4] = %coverstand_hide_idle_twitch05;
    level.drone_anims["axis"]["coverstand"]["hide_2_aim"] = %coverstand_hide_2_aim;
    level.drone_anims["axis"]["coverstand"]["aim_2_hide"] = %coverstand_aim_2_hide;
    level.drone_anims["axis"]["coverstand"]["reload"] = %coverstand_reloada;
    level.drone_anims["axis"]["coverstand"]["fire"] = %exposed_aim_5;
    level.drone_anims["axis"]["coverstand"]["death"] = %coverstand_death_left;
    level.drone_anims["axis"]["coverstand"]["pop_up_chance"] = 1;
    level.drone_anims["axis"]["coverleftstand"]["idle"][0] = %corner_standl_alert_idle;
    level.drone_anims["axis"]["coverleftstand"]["idle"][1] = %corner_standl_alert_twitch01;
    level.drone_anims["axis"]["coverleftstand"]["idle"][2] = %corner_standl_alert_twitch02;
    level.drone_anims["axis"]["coverleftstand"]["idle"][3] = %corner_standl_alert_twitch03;
    level.drone_anims["axis"]["coverleftstand"]["idle"][4] = %corner_standl_alert_twitch04;
    level.drone_anims["axis"]["coverleftstand"]["hide_2_aim"] = %corner_standl_trans_alert_2_b_v2;
    level.drone_anims["axis"]["coverleftstand"]["aim_2_hide"] = %corner_standl_trans_b_2_alert_v2;
    level.drone_anims["axis"]["coverleftstand"]["reload"] = %corner_standl_reload_v1;
    level.drone_anims["axis"]["coverleftstand"]["fire"] = %exposed_aim_5;
    level.drone_anims["axis"]["coverleftstand"]["death"] = %corner_standl_deathb;
    level.drone_anims["axis"]["coverleftstand"]["pop_up_chance"] = 1;
    level.drone_anims["axis"]["coverrightstand"]["idle"][0] = %corner_standr_alert_idle;
    level.drone_anims["axis"]["coverrightstand"]["idle"][1] = %corner_standr_alert_twitch01;
    level.drone_anims["axis"]["coverrightstand"]["idle"][2] = %corner_standr_alert_twitch02;
    level.drone_anims["axis"]["coverrightstand"]["idle"][3] = %corner_standr_alert_twitch04;
    level.drone_anims["axis"]["coverrightstand"]["hide_2_aim"] = %corner_standr_trans_alert_2_b;
    level.drone_anims["axis"]["coverrightstand"]["aim_2_hide"] = %corner_standr_trans_b_2_alert;
    level.drone_anims["axis"]["coverrightstand"]["reload"] = %corner_standr_reload_v1;
    level.drone_anims["axis"]["coverrightstand"]["fire"] = %exposed_aim_5;
    level.drone_anims["axis"]["coverrightstand"]["death"] = %corner_standr_deathb;
    level.drone_anims["axis"]["coverrightstand"]["pop_up_chance"] = 1;
    level.drone_anims["axis"]["coverrightcrouch"]["idle"][0] = %cornercrr_alert_idle;
    level.drone_anims["axis"]["coverrightcrouch"]["idle"][1] = %cornercrr_alert_twitch_v1;
    level.drone_anims["axis"]["coverrightcrouch"]["idle"][2] = %cornercrr_alert_twitch_v2;
    level.drone_anims["axis"]["coverrightcrouch"]["idle"][3] = %cornercrr_alert_twitch_v3;
    level.drone_anims["axis"]["coverrightcrouch"]["hide_2_aim"] = %cornercrr_alert_2_lean;
    level.drone_anims["axis"]["coverrightcrouch"]["aim_2_hide"] = %cornercrr_lean_2_alert;
    level.drone_anims["axis"]["coverrightcrouch"]["reload"] = %cornercrr_reloada;
    level.drone_anims["axis"]["coverrightcrouch"]["death"] = %exposed_crouch_death_fetal;
    level.drone_anims["axis"]["coverrightcrouch"]["pop_up_chance"] = 1;
    level.drone_anims["axis"]["coverguard"]["idle"][0] = %exposed_crouch_idle_twitch_v2;
    level.drone_anims["axis"]["coverguard"]["idle"][1] = %exposed_crouch_idle_twitch_v3;
    level.drone_anims["axis"]["coverguard"]["reload"] = %exposed_crouch_reload;
    level.drone_anims["axis"]["coverguard"]["fire"] = %exposed_crouch_aim_5;
    level.drone_anims["axis"]["coverguard"]["hide_2_aim"] = %covercrouch_hide_2_aim;
    level.drone_anims["axis"]["coverguard"]["aim_2_hide"] = %covercrouch_aim_2_hide;
    level.drone_anims["axis"]["coverguard"]["death"] = %exposed_crouch_death_fetal;
    level.drone_anims["axis"]["coverguard"]["pop_up_chance"] = 0;
    level.drone_anims["axis"]["coverprone"]["idle"][0] = %prone_reaction_a;
    level.drone_anims["axis"]["coverprone"]["idle"][1] = %prone_twitch_ammocheck;
    level.drone_anims["axis"]["coverprone"]["idle"][2] = %prone_twitch_scan;
    level.drone_anims["axis"]["coverprone"]["idle"][3] = %prone_twitch_look;
    level.drone_anims["axis"]["coverprone"]["idle"][4] = %prone_twitch_lookup;
    level.drone_anims["axis"]["coverprone"]["hide_2_aim"] = %prone_2_crouch;
    level.drone_anims["axis"]["coverprone"]["aim_2_hide"] = %crouch_2_prone;
    level.drone_anims["axis"]["coverprone"]["reload"] = %prone_reload;
    level.drone_anims["axis"]["coverprone"]["fire"] = %prone_fire_1;
    level.drone_anims["axis"]["coverprone"]["fire_exposed"] = %exposed_crouch_aim_5;
    level.drone_anims["axis"]["coverprone"]["death"] = %saw_gunner_prone_death;
    level.drone_anims["axis"]["coverprone"]["pop_up_chance"] = 0.5;
    level.drone_anims["axis"]["coverprone_no_pop"]["idle"][0] = %prone_reaction_a;
    level.drone_anims["axis"]["coverprone_no_pop"]["idle"][1] = %prone_twitch_ammocheck;
    level.drone_anims["axis"]["coverprone_no_pop"]["idle"][2] = %prone_twitch_scan;
    level.drone_anims["axis"]["coverprone_no_pop"]["idle"][3] = %prone_twitch_look;
    level.drone_anims["axis"]["coverprone_no_pop"]["idle"][4] = %prone_twitch_lookup;
    level.drone_anims["axis"]["coverprone_no_pop"]["hide_2_aim"] = %prone_2_crouch;
    level.drone_anims["axis"]["coverprone_no_pop"]["aim_2_hide"] = %crouch_2_prone;
    level.drone_anims["axis"]["coverprone_no_pop"]["reload"] = %prone_reload;
    level.drone_anims["axis"]["coverprone_no_pop"]["fire"] = %prone_fire_1;
    level.drone_anims["axis"]["coverprone_no_pop"]["fire_exposed"] = %exposed_crouch_aim_5;
    level.drone_anims["axis"]["coverprone_no_pop"]["death"] = %saw_gunner_prone_death;
    level.drone_anims["axis"]["coverprone_no_pop"]["pop_up_chance"] = 0;
    level._effect["pdrone_flash_wv"] = loadfx( "vfx/muzzleflash/pdrone_flash_wv" );
    maps\_drone::initglobals();
}
