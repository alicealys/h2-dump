// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_0005();
    _unknown_0074();
}
#using_animtree("generic_human");

_ID19206()
{
    level._ID30895["generic"]["patrol_walk"] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["patrol_walk_twitch"] = %patrol_bored_patrolwalk_twitch;
    level._ID30895["generic"]["patrol_stop"] = %patrol_bored_walk_2_bored;
    level._ID30895["generic"]["patrol_start"] = %patrol_bored_2_walk;
    level._ID30895["generic"]["patrol_turn180"] = %patrol_bored_2_walk_180turn;
    level._ID30895["generic"]["patrol_radio_in_clear"] = %patrolwalk_cold_gunup_transition;
    level._ID30895["generic"]["patrol_idle"] = %patrol_bored_idle;
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
}
#using_animtree("dog");

_ID11483()
{
    level._ID30895["generic"]["patrol_dog_stop"] = %german_shepherd_run_stop;
    level._ID30895["generic"]["patrol_dog_start"] = %german_shepherd_run_start;
}