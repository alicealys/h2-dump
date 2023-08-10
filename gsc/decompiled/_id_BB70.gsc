// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

_id_ADD2()
{
    if ( isdefined( self.casual_killer ) )
        return;

    casual_killer_setup_custom_turns( 1 );
    maps\_utility::disable_surprise();
    self.casual_killer = 1;
    self.no_pistol_switch = 1;
    self.ignoresuppression = 1;
    self.maxfaceenemydist = 0;
    self.norunreload = 1;
    self.ammocheatinterval = 2000;
    self.disablebulletwhizbyreaction = 1;
    self.usechokepoints = 0;
    self.disabledoorbehavior = 1;
    self.combatmode = "no_cover";
    self.oldgrenadeawareness = self.grenadeawareness;
    self.grenadeawareness = 0;
    self.oldgrenadereturnthrow = self.nogrenadereturnthrow;
    self.nogrenadereturnthrow = 1;
    self.noslopeanimation = 1;
    self.old_walkdist = self.walkdist;
    self.old_walkdistfacingmotion = self.walkdistfacingmotion;
    self.walkdist = 0;
    self.walkdistfacingmotion = 0;
    _id_C951();
    self.a.pose = "stand";
    self allowedstances( "stand" );
    _id_A8CA();
    self.custommovetransition = ::_id_C9C9;
    self.permanentcustommovetransition = 1;
    self.approachtypefunc = ::_id_B248;
    self.approachconditioncheckfunc = ::_id_C44D;
    self.disablecoverarrivalsonly = 1;
    self.customidleanimset = [];

    switch ( self.script_noteworthy )
    {
        case "shotgun":
            self.animarchetype = "casual_killer_shotgun";
            self.customidleanimset["stand"] = %h2_casual_killer_stand_idle_shotgun;
            break;
        case "makarov":
            self.animarchetype = "casual_killer_makarov";
            self.customidleanimset["stand"] = %h2_casual_killer_stand_idle_makarov;
            break;
        case "saw":
            self.animarchetype = "casual_killer_saw";
            self.customidleanimset["stand"] = %h2_casual_killer_stand_idle_m240;
            break;
        default:
            self.animarchetype = "casual_killer";
            self.customidleanimset["stand"] = %h2_casual_killer_stand_idle;
    }

    self.customidleanimset["stand_add"] = %casual_killer_stand_idle;
}

_id_B4C7()
{
    if ( !isdefined( self.casual_killer ) )
        return;

    casual_killer_setup_custom_turns( 0 );
    self.animarchetype = undefined;
    self.casual_killer = undefined;
    self.no_pistol_switch = undefined;
    self.ignoresuppression = 0;
    self.maxfaceenemydist = 512;
    self.norunreload = undefined;
    self.disablebulletwhizbyreaction = undefined;
    self.usechokepoints = 1;
    self.disabledoorbehavior = undefined;
    self.combatmode = "cover";
    self.grenadeawareness = self.oldgrenadeawareness;
    self.nogrenadereturnthrow = self.oldgrenadereturnthrow;
    self.noslopeanimation = undefined;
    self.walkdist = self.old_walkdist;
    self.walkdistfacingmotion = self.old_walkdistfacingmotion;
    animscripts\animset::clear_custom_animset();
    self.prevmovemode = "none";
    self allowedstances( "stand", "crouch", "prone" );
    animscripts\animset::setup_run_n_gun();
    self.custommovetransition = undefined;
    self.permanentcustommovetransition = undefined;
    self.approachtypefunc = undefined;
    self.approachconditioncheckfunc = undefined;
    self.disablecoverarrivalsonly = undefined;
}

_id_C951()
{
    if ( maps\_utility::archetype_exists( "casual_killer" ) )
        return;

    var_0 = [];
    var_1 = [];
    var_1["sprint"] = %casual_killer_jog_a;
    var_1["jog_b"] = %casual_killer_jog_b;
    var_1["straight"] = %casual_killer_walk_f;
    var_1["move_f"] = %casual_killer_walk_f;
    var_1["move_l"] = %walk_left;
    var_1["move_r"] = %walk_right;
    var_1["move_b"] = %walk_backward;
    var_1["crouch"] = %crouch_fastwalk_f;
    var_1["crouch_l"] = %crouch_fastwalk_l;
    var_1["crouch_r"] = %crouch_fastwalk_r;
    var_1["crouch_b"] = %crouch_fastwalk_b;
    var_1["stairs_up"] = %traverse_stair_run_01;
    var_1["stairs_down"] = %traverse_stair_run_down;
    var_0["walk"] = var_1;
    var_0["run"] = var_1;
    var_1 = anim.archetypes["soldier"]["default_stand"];
    var_1["add_aim_up"] = %casual_killer_stand_aim8;
    var_1["add_aim_down"] = %casual_killer_stand_aim2;
    var_1["add_aim_left"] = %casual_killer_stand_aim4;
    var_1["add_aim_right"] = %casual_killer_stand_aim6;
    var_1["straight_level"] = %h2_casual_killer_stand_idle;
    var_1["fire"] = %casual_killer_stand_auto;
    var_1["single"] = animscripts\utility::array( %casual_killer_stand_auto );
    var_1["burst2"] = %casual_killer_stand_auto;
    var_1["burst3"] = %casual_killer_stand_auto;
    var_1["burst4"] = %casual_killer_stand_auto;
    var_1["burst5"] = %casual_killer_stand_auto;
    var_1["burst6"] = %casual_killer_stand_auto;
    var_1["semi2"] = %casual_killer_stand_auto;
    var_1["semi3"] = %casual_killer_stand_auto;
    var_1["semi4"] = %casual_killer_stand_auto;
    var_1["semi5"] = %casual_killer_stand_auto;
    var_1["exposed_idle"] = animscripts\utility::array( %h2_casual_killer_stand_idle );
    var_0["default_stand"] = var_1;
    var_0["default_crouch"] = var_1;
    var_2 = [];
    var_2["fire"] = %casual_killer_stand_auto;
    var_2["single"] = [ %casual_killer_stand_auto ];
    var_2["burst2"] = %casual_killer_stand_auto;
    var_2["burst3"] = %casual_killer_stand_auto;
    var_2["burst4"] = %casual_killer_stand_auto;
    var_2["burst5"] = %casual_killer_stand_auto;
    var_2["burst6"] = %casual_killer_stand_auto;
    var_2["semi2"] = %casual_killer_stand_auto;
    var_2["semi3"] = %casual_killer_stand_auto;
    var_2["semi4"] = %casual_killer_stand_auto;
    var_2["semi5"] = %casual_killer_stand_auto;
    var_0["shoot_while_moving"] = var_2;
    animscripts\init_move_transitions::init_move_transition_arrays();
    var_0["cover_trans"]["casual_killer"][1] = %h2_casual_killer_walk_stop_45l;
    var_0["cover_trans"]["casual_killer"][2] = %casual_killer_walk_stop;
    var_0["cover_trans"]["casual_killer"][3] = %h2_casual_killer_walk_stop_45r;
    var_0["cover_trans"]["casual_killer"][4] = %h2_casual_killer_walk_stop_90l;
    var_0["cover_trans"]["casual_killer"][6] = %h2_casual_killer_walk_stop_90r;
    var_0["cover_trans"]["casual_killer"][7] = %h2_casual_killer_walk_stop_90l;
    var_0["cover_trans"]["casual_killer"][8] = %casual_killer_walk_stop;
    var_0["cover_trans"]["casual_killer"][9] = %h2_casual_killer_walk_stop_90r;
    var_0["cover_trans"]["casual_killer_sprint"][1] = %h2_casual_killer_jog_stop_45l;
    var_0["cover_trans"]["casual_killer_sprint"][2] = %casual_killer_jog_stop;
    var_0["cover_trans"]["casual_killer_sprint"][3] = %h2_casual_killer_jog_stop_45r;
    var_0["cover_trans"]["casual_killer_sprint"][4] = %h2_casual_killer_jog_stop_90l;
    var_0["cover_trans"]["casual_killer_sprint"][6] = %h2_casual_killer_jog_stop_90r;
    var_0["cover_trans"]["casual_killer_sprint"][7] = %h2_casual_killer_jog_stop_90l;
    var_0["cover_trans"]["casual_killer_sprint"][8] = %casual_killer_jog_stop;
    var_0["cover_trans"]["casual_killer_sprint"][9] = %h2_casual_killer_jog_stop_90r;
    var_3 = [];
    var_3[0] = "casual_killer";
    var_3[1] = "casual_killer_sprint";

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = var_3[var_4];

        for ( var_6 = 1; var_6 <= 9; var_6++ )
        {
            if ( var_6 == 5 )
                continue;

            if ( isdefined( var_0["cover_trans"][var_5][var_6] ) )
                var_0["cover_trans_dist"][var_5][var_6] = getangledelta( var_0["cover_trans"][var_5][var_6], 0, 1 );
        }
    }

    var_0["cover_trans_angles"]["casual_killer"][1] = 45;
    var_0["cover_trans_angles"]["casual_killer"][2] = 0;
    var_0["cover_trans_angles"]["casual_killer"][3] = -45;
    var_0["cover_trans_angles"]["casual_killer"][4] = 90;
    var_0["cover_trans_angles"]["casual_killer"][6] = -90;
    var_0["cover_trans_angles"]["casual_killer"][8] = 180;
    var_0["cover_trans_angles"]["casual_killer_sprint"][1] = 45;
    var_0["cover_trans_angles"]["casual_killer_sprint"][2] = 0;
    var_0["cover_trans_angles"]["casual_killer_sprint"][3] = -45;
    var_0["cover_trans_angles"]["casual_killer_sprint"][4] = 90;
    var_0["cover_trans_angles"]["casual_killer_sprint"][6] = -90;
    var_0["cover_trans_angles"]["casual_killer_sprint"][8] = 180;
    var_0["run_n_gun"]["F"] = %casual_killer_walk_shoot_f;
    var_0["run_n_gun"]["L"] = %casual_killer_walk_l45;
    var_0["run_n_gun"]["R"] = %casual_killer_walk_r45;
    var_0["run_n_gun"]["LB"] = %casual_killer_walk_shoot_l;
    var_0["run_n_gun"]["RB"] = %casual_killer_walk_shoot_r;
    var_0["run_n_gun_down"]["F"] = %casual_killer_walk_shoot_f_aimdown;
    var_0["run_n_gun_down"]["L"] = %casual_killer_walk_shoot_l_aimdown;
    var_0["run_n_gun_down"]["R"] = %casual_killer_walk_shoot_r_aimdown;
    var_0["run_n_gun_down"]["LB"] = %casual_killer_walk_shoot_l_aimdown;
    var_0["run_n_gun_down"]["RB"] = %casual_killer_walk_shoot_r_aimdown;
    var_0["casual_killer_turn"] = [];
    var_0["casual_killer_turn"][-90] = [ %h2_casual_killer_turn_90l_passfootl, %h2_casual_killer_turn_90l_passfootr ];
    var_0["casual_killer_turn"][-45] = [ %h2_casual_killer_turn_45l_passfootl, %h2_casual_killer_turn_45l_passfootr ];
    var_0["casual_killer_turn"][-20] = [ %h2_casual_killer_turn_20l_passfootl, %h2_casual_killer_turn_20l_passfootr ];
    var_0["casual_killer_turn"][20] = [ %h2_casual_killer_turn_20r_passfootl, %h2_casual_killer_turn_20r_passfootr ];
    var_0["casual_killer_turn"][45] = [ %h2_casual_killer_turn_45r_passfootl, %h2_casual_killer_turn_45r_passfootr ];
    var_0["casual_killer_turn"][90] = [ %h2_casual_killer_turn_90r_passfootl, %h2_casual_killer_turn_90r_passfootr ];
    var_0["casual_killer_walk_start"] = [];
    var_0["casual_killer_walk_start"][-90] = %h2_casual_killer_walk_start_90l;
    var_0["casual_killer_walk_start"][-45] = %h2_casual_killer_walk_start_45l;
    var_0["casual_killer_walk_start"][0] = %casual_killer_walk_start;
    var_0["casual_killer_walk_start"][45] = %h2_casual_killer_walk_start_45r;
    var_0["casual_killer_walk_start"][90] = %h2_casual_killer_walk_start_90r;
    var_0["casual_killer_jog_start"] = [];
    var_0["casual_killer_jog_start"][-90] = %h2_casual_killer_jog_start_90l;
    var_0["casual_killer_jog_start"][-45] = %h2_casual_killer_jog_start_45l;
    var_0["casual_killer_jog_start"][0] = %casual_killer_jog_start;
    var_0["casual_killer_jog_start"][45] = %h2_casual_killer_jog_start_45r;
    var_0["casual_killer_jog_start"][90] = %h2_casual_killer_jog_start_90r;
    var_0["idle_waiting_for_player"] = [ %h2_casual_killer_stand_idle, %h2_casual_killer_stand_twitch_signal, %h2_casual_killer_stand_twitch_shift, %h2_casual_killer_stand_twitch_wave, %h2_casual_killer_stand_twitch_sweat, %h2_casual_killer_stand_twitch_look_around ];
    maps\_utility::register_archetype( "casual_killer", var_0, 0 );
    var_7 = var_0;
    var_8 = var_0;
    var_9 = var_0;
    var_10 = var_0["walk"];
    var_10["sprint"] = %casual_killer_jog_a_shotgun;
    var_10["jog_b"] = %casual_killer_jog_b_shotgun;
    var_10["straight"] = %casual_killer_walk_f_shotgun;
    var_10["move_f"] = %casual_killer_walk_f_shotgun;
    var_7["walk"] = var_10;
    var_7["run"] = var_10;
    var_10 = anim.archetypes["soldier"]["default_stand"];
    var_10["add_aim_up"] = %casual_killer_stand_aim8_shotgun;
    var_10["add_aim_down"] = %casual_killer_stand_aim2_shotgun;
    var_10["add_aim_left"] = %casual_killer_stand_aim4_shotgun;
    var_10["add_aim_right"] = %casual_killer_stand_aim6_shotgun;
    var_10["straight_level"] = %h2_casual_killer_stand_idle_shotgun;
    var_10["fire"] = %h2_casual_killer_stand_shotgun;
    var_10["single"] = animscripts\utility::array( %h2_casual_killer_stand_shotgun );
    var_10["burst2"] = %h2_casual_killer_stand_shotgun_add;
    var_10["burst3"] = %h2_casual_killer_stand_shotgun_add;
    var_10["burst4"] = %h2_casual_killer_stand_shotgun_add;
    var_10["burst5"] = %h2_casual_killer_stand_shotgun_add;
    var_10["burst6"] = %h2_casual_killer_stand_shotgun_add;
    var_10["semi2"] = %h2_casual_killer_stand_shotgun_add;
    var_10["semi3"] = %h2_casual_killer_stand_shotgun_add;
    var_10["semi4"] = %h2_casual_killer_stand_shotgun_add;
    var_10["semi5"] = %h2_casual_killer_stand_shotgun_add;
    var_10["exposed_idle"] = animscripts\utility::array( %h2_casual_killer_stand_idle_shotgun );
    var_7["default_stand"] = var_10;
    var_7["default_crouch"] = var_10;
    var_2 = [];
    var_2["fire"] = %h2_casual_killer_stand_shotgun;
    var_2["single"] = [ %h2_casual_killer_stand_shotgun ];
    var_2["burst2"] = %h2_casual_killer_stand_shotgun_add;
    var_2["burst3"] = %h2_casual_killer_stand_shotgun_add;
    var_2["burst4"] = %h2_casual_killer_stand_shotgun_add;
    var_2["burst5"] = %h2_casual_killer_stand_shotgun_add;
    var_2["burst6"] = %h2_casual_killer_stand_shotgun_add;
    var_2["semi2"] = %h2_casual_killer_stand_shotgun_add;
    var_2["semi3"] = %h2_casual_killer_stand_shotgun_add;
    var_2["semi4"] = %h2_casual_killer_stand_shotgun_add;
    var_2["semi5"] = %h2_casual_killer_stand_shotgun_add;
    var_7["shoot_while_moving"] = var_2;
    var_7["cover_trans"]["casual_killer"][2] = %casual_killer_walk_stop_shotgun;
    var_7["cover_trans"]["casual_killer"][8] = %casual_killer_walk_stop_shotgun;
    var_7["cover_trans"]["casual_killer_sprint"][2] = %casual_killer_jog_stop_shotgun;
    var_7[" cover_trans"][" casual_killer_sprint "][8] = %casual_killer_jog_stop_shotgun;
    var_7["run_n_gun"]["F"] = %casual_killer_walk_shoot_f_shotgun;
    var_7["run_n_gun"]["L"] = %casual_killer_walk_l45_shotgun;
    var_7["run_n_gun"]["R"] = %casual_killer_walk_r45_shotgun;
    var_7["run_n_gun"]["LB"] = %casual_killer_walk_shoot_l_shotgun;
    var_7["run_n_gun"]["RB"] = %casual_killer_walk_shoot_r_shotgun;
    var_7["run_n_gun_down"]["F"] = %casual_killer_walk_shoot_f_aimdown_shotgun;
    var_7["run_n_gun_down"]["L"] = %casual_killer_walk_shoot_l_aimdown_shotgun;
    var_7["run_n_gun_down"]["R"] = %casual_killer_walk_shoot_r_aimdown_shotgun;
    var_7["run_n_gun_down"]["LB"] = %casual_killer_walk_shoot_l_aimdown_shotgun;
    var_7["run_n_gun_down"]["RB"] = %casual_killer_walk_shoot_r_aimdown_shotgun;
    var_7["casual_killer_walk_start"][0] = %casual_killer_walk_start_shotgun;
    var_7["casual_killer_jog_start"][0] = %casual_killer_jog_start_shotgun;
    var_7["idle_waiting_for_player"] = [ %h2_casual_killer_stand_idle_shotgun, %h2_casual_killer_stand_twitch_signal_shotgun, %h2_casual_killer_stand_twitch_shift_shotgun, %h2_casual_killer_stand_twitch_wave_shotgun, %h2_casual_killer_stand_twitch_sweat_shotgun, %h2_casual_killer_stand_twitch_look_around_shotgun ];
    maps\_utility::register_archetype( "casual_killer_shotgun", var_7, 0 );
    var_11 = var_0["walk"];
    var_11["sprint"] = %casual_killer_jog_a_makarov;
    var_11["jog_b"] = %casual_killer_jog_b_makarov;
    var_11["straight"] = %casual_killer_walk_f_makarov;
    var_11["move_f"] = %casual_killer_walk_f_makarov;
    var_8["walk"] = var_11;
    var_8["run"] = var_11;
    var_11 = anim.archetypes["soldier"]["default_stand"];
    var_11["add_aim_up"] = %casual_killer_stand_aim8_makarov;
    var_11["add_aim_down"] = %casual_killer_stand_aim2_makarov;
    var_11["add_aim_left"] = %casual_killer_stand_aim4_makarov;
    var_11["add_aim_right"] = %casual_killer_stand_aim6_makarov;
    var_11["straight_level"] = %h2_casual_killer_stand_idle_makarov;
    var_11["fire"] = %casual_killer_stand_auto_makarov;
    var_11["single"] = animscripts\utility::array( %casual_killer_stand_auto_makarov );
    var_11["burst2"] = %casual_killer_stand_auto_makarov;
    var_11["burst3"] = %casual_killer_stand_auto_makarov;
    var_11["burst4"] = %casual_killer_stand_auto_makarov;
    var_11["burst5"] = %casual_killer_stand_auto_makarov;
    var_11["burst6"] = %casual_killer_stand_auto_makarov;
    var_11["semi2"] = %casual_killer_stand_auto_makarov;
    var_11["semi3"] = %casual_killer_stand_auto_makarov;
    var_11["semi4"] = %casual_killer_stand_auto_makarov;
    var_11["semi5"] = %casual_killer_stand_auto_makarov;
    var_11["exposed_idle"] = animscripts\utility::array( %h2_casual_killer_stand_idle_makarov );
    var_8["default_stand"] = var_11;
    var_8["default_crouch"] = var_11;
    var_2 = [];
    var_2["fire"] = %casual_killer_stand_auto_makarov;
    var_2["single"] = [ %casual_killer_stand_auto_makarov ];
    var_2["burst2"] = %casual_killer_stand_auto_makarov;
    var_2["burst3"] = %casual_killer_stand_auto_makarov;
    var_2["burst4"] = %casual_killer_stand_auto_makarov;
    var_2["burst5"] = %casual_killer_stand_auto_makarov;
    var_2["burst6"] = %casual_killer_stand_auto_makarov;
    var_2["semi2"] = %casual_killer_stand_auto_makarov;
    var_2["semi3"] = %casual_killer_stand_auto_makarov;
    var_2["semi4"] = %casual_killer_stand_auto_makarov;
    var_2["semi5"] = %casual_killer_stand_auto_makarov;
    var_8["shoot_while_moving"] = var_2;
    var_8["cover_trans"]["casual_killer"][2] = %casual_killer_walk_stop_makarov;
    var_8["cover_trans"]["casual_killer"][8] = %casual_killer_walk_stop_makarov;
    var_8["cover_trans"]["casual_killer_sprint"][2] = %casual_killer_jog_stop_makarov;
    var_8[" cover_trans"][" casual_killer_sprint "][8] = %casual_killer_jog_stop_makarov;
    var_8["run_n_gun"]["F"] = %casual_killer_walk_shoot_f_makarov;
    var_8["run_n_gun"]["L"] = %casual_killer_walk_l45_makarov;
    var_8["run_n_gun"]["R"] = %casual_killer_walk_r45_makarov;
    var_8["run_n_gun"]["LB"] = %casual_killer_walk_shoot_l_makarov;
    var_8["run_n_gun"]["RB"] = %casual_killer_walk_shoot_r_makarov;
    var_8["run_n_gun_down"]["F"] = %casual_killer_walk_shoot_f_aimdown_makarov;
    var_8["run_n_gun_down"]["L"] = %casual_killer_walk_shoot_l_aimdown_makarov;
    var_8["run_n_gun_down"]["R"] = %casual_killer_walk_shoot_r_aimdown_makarov;
    var_8["run_n_gun_down"]["LB"] = %casual_killer_walk_shoot_l_aimdown_makarov;
    var_8["run_n_gun_down"]["RB"] = %casual_killer_walk_shoot_r_aimdown_makarov;
    var_8["casual_killer_walk_start"][0] = %casual_killer_walk_start_makarov;
    var_8["casual_killer_jog_start"][0] = %casual_killer_jog_start_makarov;
    var_8["idle_waiting_for_player"] = [ %h2_casual_killer_stand_idle_makarov, %h2_casual_killer_stand_twitch_signal_makarov, %h2_casual_killer_stand_twitch_shift_makarov, %h2_casual_killer_stand_twitch_wave_makarov, %h2_casual_killer_stand_twitch_sweat_makarov, %h2_casual_killer_stand_twitch_look_around_makarov ];
    maps\_utility::register_archetype( "casual_killer_makarov", var_8, 0 );
    var_12 = var_0["walk"];
    var_12["sprint"] = %casual_killer_jog_a_m240;
    var_12["jog_b"] = %casual_killer_jog_b_m240;
    var_12["straight"] = %casual_killer_walk_f_m240;
    var_12["move_f"] = %casual_killer_walk_f_m240;
    var_9["walk"] = var_12;
    var_9["run"] = var_12;
    var_12 = anim.archetypes["soldier"]["default_stand"];
    var_12["add_aim_up"] = %casual_killer_stand_aim8_m240;
    var_12["add_aim_down"] = %casual_killer_stand_aim2_m240;
    var_12["add_aim_left"] = %casual_killer_stand_aim4_m240;
    var_12["add_aim_right"] = %casual_killer_stand_aim6_m240;
    var_12["straight_level"] = %h2_casual_killer_stand_idle_m240;
    var_12["fire"] = %casual_killer_stand_auto_m240;
    var_12["single"] = animscripts\utility::array( %casual_killer_stand_auto_m240 );
    var_12["burst2"] = %casual_killer_stand_auto_m240;
    var_12["burst3"] = %casual_killer_stand_auto_m240;
    var_12["burst4"] = %casual_killer_stand_auto_m240;
    var_12["burst5"] = %casual_killer_stand_auto_m240;
    var_12["burst6"] = %casual_killer_stand_auto_m240;
    var_12["semi2"] = %casual_killer_stand_auto_m240;
    var_12["semi3"] = %casual_killer_stand_auto_m240;
    var_12["semi4"] = %casual_killer_stand_auto_m240;
    var_12["semi5"] = %casual_killer_stand_auto_m240;
    var_12["exposed_idle"] = animscripts\utility::array( %h2_casual_killer_stand_idle_m240 );
    var_9["default_stand"] = var_12;
    var_9["default_crouch"] = var_12;
    var_2 = [];
    var_2["fire"] = %casual_killer_stand_auto_m240;
    var_2["single"] = [ %casual_killer_stand_auto_m240 ];
    var_2["burst2"] = %casual_killer_stand_auto_m240;
    var_2["burst3"] = %casual_killer_stand_auto_m240;
    var_2["burst4"] = %casual_killer_stand_auto_m240;
    var_2["burst5"] = %casual_killer_stand_auto_m240;
    var_2["burst6"] = %casual_killer_stand_auto_m240;
    var_2["semi2"] = %casual_killer_stand_auto_m240;
    var_2["semi3"] = %casual_killer_stand_auto_m240;
    var_2["semi4"] = %casual_killer_stand_auto_m240;
    var_2["semi5"] = %casual_killer_stand_auto_m240;
    var_9["shoot_while_moving"] = var_2;
    var_9["cover_trans"]["casual_killer"][2] = %casual_killer_walk_stop_m240;
    var_9["cover_trans"]["casual_killer"][8] = %casual_killer_walk_stop_m240;
    var_9["cover_trans"]["casual_killer_sprint"][2] = %casual_killer_jog_stop_m240;
    var_9[" cover_trans"][" casual_killer_sprint "][8] = %casual_killer_jog_stop_m240;
    var_9["run_n_gun"]["F"] = %casual_killer_walk_shoot_f_m240;
    var_9["run_n_gun"]["L"] = %casual_killer_walk_l45_m240;
    var_9["run_n_gun"]["R"] = %casual_killer_walk_r45_m240;
    var_9["run_n_gun"]["LB"] = %casual_killer_walk_shoot_l_m240;
    var_9["run_n_gun"]["RB"] = %casual_killer_walk_shoot_r_m240;
    var_9["run_n_gun_down"]["F"] = %casual_killer_walk_shoot_f_aimdown_m240;
    var_9["run_n_gun_down"]["L"] = %casual_killer_walk_shoot_l_aimdown_m240;
    var_9["run_n_gun_down"]["R"] = %casual_killer_walk_shoot_r_aimdown_m240;
    var_9["run_n_gun_down"]["LB"] = %casual_killer_walk_shoot_l_aimdown_m240;
    var_9["run_n_gun_down"]["RB"] = %casual_killer_walk_shoot_r_aimdown_m240;
    var_9["casual_killer_walk_start"][0] = %casual_killer_walk_start_m240;
    var_9["casual_killer_jog_start"][0] = %casual_killer_jog_start_m240;
    var_9["idle_waiting_for_player"] = [ %h2_casual_killer_stand_idle_m240, %h2_casual_killer_stand_twitch_signal_m240, %h2_casual_killer_stand_twitch_shift_m240, %h2_casual_killer_stand_twitch_wave_m240, %h2_casual_killer_stand_twitch_sweat_m240, %h2_casual_killer_stand_twitch_look_around_m240 ];
    maps\_utility::register_archetype( "casual_killer_saw", var_9, 0 );
    anim.arrivalendstance["casual_killer"] = "stand";
    anim.arrivalendstance["casual_killer_sprint"] = "stand";
}

_id_C44D( var_0 )
{
    return 1;
}

_id_B248()
{
    if ( _id_AAF3() )
        return "casual_killer_sprint";

    return "casual_killer";
}

_id_C9C9()
{
    if ( isdefined( self.disableexits ) )
        return;

    self orientmode( "face angle", self.angles[1] );
    self animmode( "zonly_physics", 0 );
    var_0 = randomfloatrange( 0.9, 1.1 );
    var_0 *= self.moveplaybackrate;

    if ( isdefined( self.overrideexitanim ) )
    {
        var_1 = self.overrideexitanim;
        self.overrideexitanim = undefined;
    }
    else
    {
        if ( isdefined( self.node ) )
            var_2 = self.angles[1] - vectortoyaw( self.node.origin - self.origin );
        else
            var_2 = 0;

        if ( _id_AAF3() )
            var_3 = animscripts\utility::lookupanimarray( "casual_killer_jog_start" );
        else
            var_3 = animscripts\utility::lookupanimarray( "casual_killer_walk_start" );

        var_1 = common_scripts\utility::array_find_closest_to_key( var_3, var_2 );
    }

    var_4 = common_scripts\utility::ter_op( isdefined( self.exitnode_overridetranstime ), self.exitnode_overridetranstime, 0.1 );
    animscripts\move::_id_C8FB();
    self setflaggedanimknoballrestart( "startmove", var_1, %body, 1, var_4, var_0 );
    animscripts\shared::donotetracks( "startmove" );
    self.ignorepathchange = undefined;
    animscripts\move::_id_BF22();
    animscripts\utility::_id_B477( var_1 );
    self orientmode( "face default" );
    self animmode( "none", 0 );

    if ( animhasnotetrack( var_1, "code_move" ) )
        animscripts\exit_node::finishcoverexitnotetracks( "startmove", var_1 );
}

_id_AAF3()
{
    if ( !isdefined( self.run_overrideanim ) )
        return 0;

    if ( isarray( self.run_overrideanim ) )
        var_0 = self.run_overrideanim[0];
    else
        var_0 = self.run_overrideanim;

    var_1 = [ %casual_killer_jog_a, %casual_killer_jog_b, animscripts\utility::lookupanim( "run", "sprint" ), animscripts\utility::lookupanim( "run", "jog_b" ) ];
    return common_scripts\utility::array_contains( var_1, var_0 );
}

_id_A8CA( var_0 )
{
    self.maxrunngunangle = 90;
    self.runnguntransitionpoint = 1;
    self.runngunincrement = 0.2;
    self.maxrunngunanimationangle = self.maxrunngunangle;
    self.useoldrunngunsystem = 1;

    if ( !isdefined( var_0 ) )
        var_0 = "straight";

    if ( var_0 == "straight" )
        self.runnguntransitionpoint = 0.5;

    if ( isdefined( self.run_and_gun_current_type ) && self.run_and_gun_current_type == var_0 )
        return;

    self.run_and_gun_current_type = var_0;
    self clearanim( %run_n_gun, 0.2 );
}

_id_AF1D( var_0 )
{
    if ( isdefined( var_0 ) && var_0 )
        level notify( "abort_all_waiting_player" );
    else
        self notify( "abort_waiting_player" );
}

_id_D157( var_0 )
{
    level endon( "abort_all_waiting_player" );
    self notify( "abort_waiting_player" );
    self endon( "abort_waiting_player" );
    self._id_B664 = thisthread;
    var_1 = animscripts\utility::lookupanimarray( "idle_waiting_for_player" );

    while ( !isdefined( var_0 ) || !common_scripts\utility::flag( var_0 ) )
    {
        var_1 = common_scripts\utility::array_randomize( var_1 );
        var_2 = var_1[0];
        self setflaggedanimknoballrestart( "idle", var_2, %exposed_aiming, 1, 0.5, 1 );
        animscripts\shared::donotetracks( "idle" );
    }
}

casual_killer_setup_custom_turns( var_0 )
{
    self.usepathsmoothingvalues = var_0;

    if ( var_0 )
    {
        self.pathturnanimoverridefunc = ::casual_killer_get_turn_anim;
        self.pathlookaheaddist = 70;
        self.maxturnspeed = 19;
        self.sharpturn = 0.94;
        self.sharpturntooclosetodestdist = 24;
        self.pathturnanimblendtime = 0.35;
    }
    else
    {
        self.pathturnanimoverridefunc = undefined;
        self.sharpturntooclosetodestdist = 64;
        self.pathturnanimblendtime = undefined;
    }
}

casual_killer_get_turn_anim( var_0, var_1 )
{
    if ( isdefined( self.heat ) && self.heat )
        return animscripts\move::pathchange_getturnanim_impl( var_0, var_1 );

    if ( abs( var_0 ) < 10 )
        return undefined;

    if ( _id_AAF3() )
        return undefined;

    var_2 = animscripts\utility::lookupanimarray( "casual_killer_turn" );
    var_3 = common_scripts\utility::array_find_closest_to_key( var_2, 0.75 * var_0 );
    var_4 = common_scripts\utility::ter_op( animscripts\move::movecycle_isleftfootdown(), 1, 0 );
    var_5 = var_3[var_4];

    if ( !animscripts\move::pathchange_candoturnanim( var_5 ) )
        return undefined;

    return var_5;
}
