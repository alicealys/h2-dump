// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID19206();
    _ID11483();
}
#using_animtree("generic_human");

_ID19206()
{
    level._ID30895["generic"]["patrol_turn180"] = %patrol_bored_2_walk_180turn;
    level._ID30895["generic"]["_stealth_patrol_jog"] = %patrol_jog;
    level._ID30895["generic"]["_stealth_patrol_walk"] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["_stealth_combat_jog"] = %combat_jog;
    level._ID30895["generic"]["_stealth_patrol_cqb"] = %cqb_walk_iw6;
    level._ID30895["generic"]["_stealth_patrol_search_a"] = %patrol_boredwalk_lookcycle_a;
    level._ID30895["generic"]["_stealth_patrol_search_b"] = %patrol_boredwalk_lookcycle_b;
    level._ID30895["generic"]["_stealth_behavior_whizby_0"] = %exposed_idle_reacta;
    level._ID30895["generic"]["_stealth_behavior_whizby_1"] = %exposed_idle_reactb;
    level._ID30895["generic"]["_stealth_behavior_whizby_2"] = %exposed_idle_twitch;
    level._ID30895["generic"]["_stealth_behavior_whizby_3"] = %exposed_idle_twitch_v4;
    level._ID30895["generic"]["_stealth_behavior_whizby_4"] = %run_pain_stumble;
    level._ID30895["generic"]["_stealth_behavior_spotted_short"] = %exposed_idle_twitch_v4;
    level._ID30895["generic"]["_stealth_behavior_spotted_long"] = %patrol_bored_react_walkstop_short;
    level._ID30895["generic"]["_stealth_look_around"][0] = %patrol_bored_react_look_v1;
    level._ID30895["generic"]["_stealth_look_around"][1] = %patrol_bored_react_look_v2;
    level._ID30895["generic"]["_stealth_behavior_saw_corpse"] = %exposed_idle_twitch_v4;
    level._ID30895["generic"]["_stealth_behavior_generic1"] = %patrol_bored_react_look_advance;
    level._ID30895["generic"]["_stealth_behavior_generic2"] = %patrol_bored_react_look_retreat;
    level._ID30895["generic"]["_stealth_behavior_generic3"] = %patrol_bored_react_walkstop;
    level._ID30895["generic"]["_stealth_behavior_generic4"] = %patrol_bored_react_walkstop_short;
    level._ID30895["generic"]["_stealth_find_walk"] = %patrol_boredwalk_find;
    level._ID30895["generic"]["_stealth_find_jog"] = %patrol_boredjog_find;
    level._ID30895["generic"]["_stealth_find_run"] = %patrol_boredrun_find;
}
#using_animtree("dog");

_ID11483()
{
    level._ID30895["generic"]["_stealth_dog_sleeping"][0] = %german_shepherd_sleeping;
    level._ID30895["generic"]["_stealth_dog_stop"] = %german_shepherd_run_stop;
    level._ID30895["generic"]["_stealth_dog_find"] = %german_shepherd_run_flashbang_b;
    level._ID30895["generic"]["_stealth_dog_howl"] = %german_shepherd_attackidle_bark;
    level._ID30895["generic"]["_stealth_dog_saw_corpse"] = %german_shepherd_attackidle_bark;
    level._ID30895["generic"]["_stealth_dog_growl"] = %german_shepherd_attackidle_growl;
    level._ID30895["generic"]["_stealth_dog_wakeup_fast"] = %german_shepherd_wakeup_fast;
    level._ID30895["generic"]["_stealth_dog_wakeup_slow"] = %german_shepherd_wakeup_slow;
}
