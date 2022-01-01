// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19742()
{
    if ( isdefined( anim._ID24380 ) )
        return;

    anim._ID24380 = 1;

    if ( !isdefined( anim._ID8906 ) )
        anim._ID8906 = [];

    if ( !isdefined( anim._ID8870 ) )
        anim._ID8870 = [];

    anim._ID23090 = [];
    anim._ID13291 = [];
    anim._ID38721 = [];

    if ( !isdefined( anim._ID8908 ) )
        anim._ID8908 = [];

    if ( !isdefined( anim._ID8872 ) )
        anim._ID8872 = [];

    anim._ID8874 = [];
    anim._ID8909 = [];

    if ( !isdefined( anim._ID8907 ) )
        anim._ID8907 = [];

    if ( !isdefined( anim._ID8871 ) )
        anim._ID8871 = [];

    anim._ID3367 = [];
}
#using_animtree("generic_human");

_ID20001()
{
    var_0 = [];
    var_0["right"][1] = %corner_standr_trans_in_1;
    var_0["right"][2] = %corner_standr_trans_in_2;
    var_0["right"][3] = %corner_standr_trans_in_3;
    var_0["right"][4] = %corner_standr_trans_in_4;
    var_0["right"][6] = %corner_standr_trans_in_6;
    var_0["right"][8] = %corner_standr_trans_in_8;
    var_0["right"][9] = %corner_standr_trans_in_9;
    var_0["right_crouch"][1] = %cornercrr_trans_in_ml;
    var_0["right_crouch"][2] = %cornercrr_trans_in_m;
    var_0["right_crouch"][3] = %cornercrr_trans_in_mr;
    var_0["right_crouch"][4] = %cornercrr_trans_in_l;
    var_0["right_crouch"][6] = %cornercrr_trans_in_r;
    var_0["right_crouch"][8] = %cornercrr_trans_in_f;
    var_0["right_crouch"][9] = %cornercrr_trans_in_mf;
    var_0["right_cqb"][1] = %corner_standr_trans_cqb_in_1;
    var_0["right_cqb"][2] = %corner_standr_trans_cqb_in_2;
    var_0["right_cqb"][3] = %corner_standr_trans_cqb_in_3;
    var_0["right_cqb"][4] = %corner_standr_trans_cqb_in_4;
    var_0["right_cqb"][6] = %corner_standr_trans_cqb_in_6;
    var_0["right_cqb"][8] = %corner_standr_trans_cqb_in_8;
    var_0["right_cqb"][9] = %corner_standr_trans_cqb_in_9;
    var_0["right_crouch_cqb"][1] = %cornercrr_cqb_trans_in_1;
    var_0["right_crouch_cqb"][2] = %cornercrr_cqb_trans_in_2;
    var_0["right_crouch_cqb"][3] = %cornercrr_cqb_trans_in_3;
    var_0["right_crouch_cqb"][4] = %cornercrr_cqb_trans_in_4;
    var_0["right_crouch_cqb"][6] = %cornercrr_cqb_trans_in_6;
    var_0["right_crouch_cqb"][8] = %cornercrr_cqb_trans_in_8;
    var_0["right_crouch_cqb"][9] = %cornercrr_cqb_trans_in_9;
    var_0["left"][1] = %corner_standl_trans_in_1;
    var_0["left"][2] = %corner_standl_trans_in_2;
    var_0["left"][3] = %corner_standl_trans_in_3;
    var_0["left"][4] = %corner_standl_trans_in_4;
    var_0["left"][6] = %corner_standl_trans_in_6;
    var_0["left"][7] = %corner_standl_trans_in_7;
    var_0["left"][8] = %corner_standl_trans_in_8;
    var_0["left_crouch"][1] = %cornercrl_trans_in_ml;
    var_0["left_crouch"][2] = %cornercrl_trans_in_m;
    var_0["left_crouch"][3] = %cornercrl_trans_in_mr;
    var_0["left_crouch"][4] = %cornercrl_trans_in_l;
    var_0["left_crouch"][6] = %cornercrl_trans_in_r;
    var_0["left_crouch"][7] = %cornercrl_trans_in_mf;
    var_0["left_crouch"][8] = %cornercrl_trans_in_f;
    var_0["left_cqb"][1] = %corner_standl_trans_cqb_in_1;
    var_0["left_cqb"][2] = %corner_standl_trans_cqb_in_2;
    var_0["left_cqb"][3] = %corner_standl_trans_cqb_in_3;
    var_0["left_cqb"][4] = %corner_standl_trans_cqb_in_4;
    var_0["left_cqb"][6] = %corner_standl_trans_cqb_in_6;
    var_0["left_cqb"][7] = %corner_standl_trans_cqb_in_7;
    var_0["left_cqb"][8] = %corner_standl_trans_cqb_in_8;
    var_0["left_crouch_cqb"][1] = %cornercrl_cqb_trans_in_1;
    var_0["left_crouch_cqb"][2] = %cornercrl_cqb_trans_in_2;
    var_0["left_crouch_cqb"][3] = %cornercrl_cqb_trans_in_3;
    var_0["left_crouch_cqb"][4] = %cornercrl_cqb_trans_in_4;
    var_0["left_crouch_cqb"][6] = %cornercrl_cqb_trans_in_6;
    var_0["left_crouch_cqb"][7] = %cornercrl_cqb_trans_in_7;
    var_0["left_crouch_cqb"][8] = %cornercrl_cqb_trans_in_8;
    var_0["crouch"][1] = %covercrouch_run_in_ml;
    var_0["crouch"][2] = %covercrouch_run_in_m;
    var_0["crouch"][3] = %covercrouch_run_in_mr;
    var_0["crouch"][4] = %covercrouch_run_in_l;
    var_0["crouch"][6] = %covercrouch_run_in_r;
    var_0["stand"][1] = %coverstand_trans_in_ml;
    var_0["stand"][2] = %coverstand_trans_in_m;
    var_0["stand"][3] = %coverstand_trans_in_mr;
    var_0["stand"][4] = %coverstand_trans_in_l;
    var_0["stand"][6] = %coverstand_trans_in_r;
    var_0["stand_saw"][1] = %saw_gunner_runin_ml;
    var_0["stand_saw"][2] = %saw_gunner_runin_m;
    var_0["stand_saw"][3] = %saw_gunner_runin_mr;
    var_0["stand_saw"][4] = %saw_gunner_runin_l;
    var_0["stand_saw"][6] = %saw_gunner_runin_r;
    var_0["stand_unstable"] = [];
    var_0["stand_unstable_run"] = [];
    var_0["crouch_saw"][1] = %saw_gunner_lowwall_runin_ml;
    var_0["crouch_saw"][2] = %saw_gunner_lowwall_runin_m;
    var_0["crouch_saw"][3] = %saw_gunner_lowwall_runin_mr;
    var_0["crouch_saw"][4] = %saw_gunner_lowwall_runin_l;
    var_0["crouch_saw"][6] = %saw_gunner_lowwall_runin_r;
    var_0["prone_saw"][1] = %saw_gunner_prone_runin_ml;
    var_0["prone_saw"][2] = %saw_gunner_prone_runin_m;
    var_0["prone_saw"][3] = %saw_gunner_prone_runin_mr;
    var_0["exposed"] = [];
    var_0["exposed"][1] = %run_2_idle_1;
    var_0["exposed"][2] = %run_2_stand_f_6;
    var_0["exposed"][3] = %run_2_idle_3;
    var_0["exposed"][4] = %run_2_stand_90l;
    var_0["exposed"][6] = %run_2_stand_90r;
    var_0["exposed"][7] = %run_2_idle_7;
    var_0["exposed"][8] = %run_2_stand_180l;
    var_0["exposed"][9] = %run_2_idle_9;
    var_0["exposed_smg"] = [];
    var_0["exposed_smg"][1] = %cqb_stop_1;
    var_0["exposed_smg"][2] = %smg_run_2_stand_f_6;
    var_0["exposed_smg"][3] = %cqb_stop_3;
    var_0["exposed_smg"][4] = %run_2_stand_90l;
    var_0["exposed_smg"][6] = %run_2_stand_90r;
    var_0["exposed_smg"][7] = %cqb_stop_7;
    var_0["exposed_smg"][8] = %run_2_stand_180l;
    var_0["exposed_smg"][9] = %cqb_stop_9;
    var_0["exposed_crouch"] = [];
    var_0["exposed_crouch"][1] = %run_2_crouch_idle_1;
    var_0["exposed_crouch"][2] = %run_2_crouch_f;
    var_0["exposed_crouch"][3] = %run_2_crouch_idle_3;
    var_0["exposed_crouch"][4] = %run_2_crouch_90l;
    var_0["exposed_crouch"][6] = %run_2_crouch_90r;
    var_0["exposed_crouch"][7] = %run_2_crouch_idle_7;
    var_0["exposed_crouch"][8] = %run_2_crouch_180l;
    var_0["exposed_crouch"][9] = %run_2_crouch_idle_9;
    var_0["exposed_crouch_crouchwalk"] = [];
    var_0["exposed_crouch_crouchwalk"][1] = %crouchwalk_2_crouch_stop_1;
    var_0["exposed_crouch_crouchwalk"][2] = %crouchwalk_2_crouch_stop_2;
    var_0["exposed_crouch_crouchwalk"][3] = %crouchwalk_2_crouch_stop_3;
    var_0["exposed_crouch_crouchwalk"][4] = %crouchwalk_2_crouch_stop_4;
    var_0["exposed_crouch_crouchwalk"][6] = %crouchwalk_2_crouch_stop_6;
    var_0["exposed_crouch_crouchwalk"][7] = %crouchwalk_2_crouch_stop_7;
    var_0["exposed_crouch_crouchwalk"][8] = %crouchwalk_2_crouch_stop_8;
    var_0["exposed_crouch_crouchwalk"][9] = %crouchwalk_2_crouch_stop_9;
    var_0["exposed_cqb"] = [];
    var_0["exposed_cqb"][1] = %cqb_stop_1;
    var_0["exposed_cqb"][2] = %cqb_stop_2;
    var_0["exposed_cqb"][3] = %cqb_stop_3;
    var_0["exposed_cqb"][4] = %cqb_stop_4;
    var_0["exposed_cqb"][6] = %cqb_stop_6;
    var_0["exposed_cqb"][7] = %cqb_stop_7;
    var_0["exposed_cqb"][8] = %cqb_stop_8;
    var_0["exposed_cqb"][9] = %cqb_stop_9;
    var_0["exposed_crouch_cqb"] = [];
    var_0["exposed_crouch_cqb"][1] = %cqb_crouch_stop_1;
    var_0["exposed_crouch_cqb"][2] = %cqb_crouch_stop_2;
    var_0["exposed_crouch_cqb"][3] = %cqb_crouch_stop_3;
    var_0["exposed_crouch_cqb"][4] = %cqb_crouch_stop_4;
    var_0["exposed_crouch_cqb"][6] = %cqb_crouch_stop_6;
    var_0["exposed_crouch_cqb"][7] = %cqb_crouch_stop_7;
    var_0["exposed_crouch_cqb"][8] = %cqb_crouch_stop_8;
    var_0["exposed_crouch_cqb"][9] = %cqb_crouch_stop_9;
    var_0["heat"] = [];
    var_0["heat"][1] = %heat_approach_1;
    var_0["heat"][2] = %heat_approach_2;
    var_0["heat"][3] = %heat_approach_3;
    var_0["heat"][4] = %heat_approach_4;
    var_0["heat"][6] = %heat_approach_6;
    var_0["heat"][8] = %heat_approach_8;
    var_0["heat_left"] = [];
    var_0["heat_right"] = [];
    var_0["wall_over_96"][1] = %traverse90_in_ml;
    var_0["wall_over_96"][2] = %traverse90_in_m;
    var_0["wall_over_96"][3] = %traverse90_in_mr;
    anim._ID38721["wall_over_96"]["height"] = 96;
    var_0["wall_over_40"][1] = %traverse_window_m_2_run;
    var_0["wall_over_40"][2] = %traverse_window_m_2_run;
    var_0["wall_over_40"][3] = %traverse_window_m_2_run;
    anim._ID3277["soldier"]["cover_trans"] = var_0;
}

_ID20002()
{
    var_0 = [];
    var_0["right"][1] = %corner_standr_trans_out_1;
    var_0["right"][2] = %corner_standr_trans_out_2;
    var_0["right"][3] = %corner_standr_trans_out_3;
    var_0["right"][4] = %corner_standr_trans_out_4;
    var_0["right"][6] = %corner_standr_trans_out_6;
    var_0["right"][8] = %corner_standr_trans_out_8;
    var_0["right"][9] = %corner_standr_trans_out_9;
    var_0["right_crouch"][1] = %cornercrr_trans_out_ml;
    var_0["right_crouch"][2] = %cornercrr_trans_out_m;
    var_0["right_crouch"][3] = %cornercrr_trans_out_mr;
    var_0["right_crouch"][4] = %cornercrr_trans_out_l;
    var_0["right_crouch"][6] = %cornercrr_trans_out_r;
    var_0["right_crouch"][8] = %cornercrr_trans_out_f;
    var_0["right_crouch"][9] = %cornercrr_trans_out_mf;
    var_0["right_cqb"][1] = %corner_standr_trans_cqb_out_1;
    var_0["right_cqb"][2] = %corner_standr_trans_cqb_out_2;
    var_0["right_cqb"][3] = %corner_standr_trans_cqb_out_3;
    var_0["right_cqb"][4] = %corner_standr_trans_cqb_out_4;
    var_0["right_cqb"][6] = %corner_standr_trans_cqb_out_6;
    var_0["right_cqb"][8] = %corner_standr_trans_cqb_out_8;
    var_0["right_cqb"][9] = %corner_standr_trans_cqb_out_9;
    var_0["right_crouch_cqb"][1] = %cornercrr_cqb_trans_out_1;
    var_0["right_crouch_cqb"][2] = %cornercrr_cqb_trans_out_2;
    var_0["right_crouch_cqb"][3] = %cornercrr_cqb_trans_out_3;
    var_0["right_crouch_cqb"][4] = %cornercrr_cqb_trans_out_4;
    var_0["right_crouch_cqb"][6] = %cornercrr_cqb_trans_out_6;
    var_0["right_crouch_cqb"][8] = %cornercrr_cqb_trans_out_8;
    var_0["right_crouch_cqb"][9] = %cornercrr_cqb_trans_out_9;
    var_0["left"][1] = %corner_standl_trans_out_1;
    var_0["left"][2] = %corner_standl_trans_out_2;
    var_0["left"][3] = %corner_standl_trans_out_3;
    var_0["left"][4] = %corner_standl_trans_out_4;
    var_0["left"][6] = %corner_standl_trans_out_6;
    var_0["left"][7] = %corner_standl_trans_out_7;
    var_0["left"][8] = %corner_standl_trans_out_8;
    var_0["left_crouch"][1] = %cornercrl_trans_out_ml;
    var_0["left_crouch"][2] = %cornercrl_trans_out_m;
    var_0["left_crouch"][3] = %cornercrl_trans_out_mr;
    var_0["left_crouch"][4] = %cornercrl_trans_out_l;
    var_0["left_crouch"][6] = %cornercrl_trans_out_r;
    var_0["left_crouch"][7] = %cornercrl_trans_out_mf;
    var_0["left_crouch"][8] = %cornercrl_trans_out_f;
    var_0["left_cqb"][1] = %corner_standl_trans_cqb_out_1;
    var_0["left_cqb"][2] = %corner_standl_trans_cqb_out_2;
    var_0["left_cqb"][3] = %corner_standl_trans_cqb_out_3;
    var_0["left_cqb"][4] = %corner_standl_trans_cqb_out_4;
    var_0["left_cqb"][6] = %corner_standl_trans_cqb_out_6;
    var_0["left_cqb"][7] = %corner_standl_trans_cqb_out_7;
    var_0["left_cqb"][8] = %corner_standl_trans_cqb_out_8;
    var_0["left_crouch_cqb"][1] = %cornercrl_cqb_trans_out_1;
    var_0["left_crouch_cqb"][2] = %cornercrl_cqb_trans_out_2;
    var_0["left_crouch_cqb"][3] = %cornercrl_cqb_trans_out_3;
    var_0["left_crouch_cqb"][4] = %cornercrl_cqb_trans_out_4;
    var_0["left_crouch_cqb"][6] = %cornercrl_cqb_trans_out_6;
    var_0["left_crouch_cqb"][7] = %cornercrl_cqb_trans_out_7;
    var_0["left_crouch_cqb"][8] = %cornercrl_cqb_trans_out_8;
    var_0["crouch"][1] = %covercrouch_run_out_ml;
    var_0["crouch"][2] = %covercrouch_run_out_m;
    var_0["crouch"][3] = %covercrouch_run_out_mr;
    var_0["crouch"][4] = %covercrouch_run_out_l;
    var_0["crouch"][6] = %covercrouch_run_out_r;
    var_0["stand"][1] = %coverstand_trans_out_ml;
    var_0["stand"][2] = %coverstand_trans_out_m;
    var_0["stand"][3] = %coverstand_trans_out_mr;
    var_0["stand"][4] = %coverstand_trans_out_l;
    var_0["stand"][6] = %coverstand_trans_out_r;
    var_0["stand_saw"][1] = %saw_gunner_runout_ml;
    var_0["stand_saw"][2] = %saw_gunner_runout_m;
    var_0["stand_saw"][3] = %saw_gunner_runout_mr;
    var_0["stand_saw"][4] = %saw_gunner_runout_l;
    var_0["stand_saw"][6] = %saw_gunner_runout_r;
    var_0["stand_unstable"] = [];
    var_0["stand_unstable_run"] = [];
    var_0["prone_saw"][2] = %saw_gunner_prone_runout_m;
    var_0["prone_saw"][4] = %saw_gunner_prone_runout_l;
    var_0["prone_saw"][6] = %saw_gunner_prone_runout_r;
    var_0["prone_saw"][8] = %saw_gunner_prone_runout_f;
    var_0["crouch_saw"][1] = %saw_gunner_lowwall_runout_ml;
    var_0["crouch_saw"][2] = %saw_gunner_lowwall_runout_m;
    var_0["crouch_saw"][3] = %saw_gunner_lowwall_runout_mr;
    var_0["crouch_saw"][4] = %saw_gunner_lowwall_runout_l;
    var_0["crouch_saw"][6] = %saw_gunner_lowwall_runout_r;
    var_0["exposed"] = [];
    var_0["exposed"][1] = %cqb_start_1;
    var_0["exposed"][2] = %stand_2_run_180l;
    var_0["exposed"][3] = %cqb_start_3;
    var_0["exposed"][4] = %stand_2_run_l;
    var_0["exposed"][6] = %stand_2_run_r;
    var_0["exposed"][7] = %cqb_start_7;
    var_0["exposed"][8] = %surprise_start_v1;
    var_0["exposed"][9] = %cqb_start_9;
    var_0["exposed_smg"] = [];
    var_0["exposed_smg"][1] = %cqb_start_1;
    var_0["exposed_smg"][2] = %smg_stand_2_run_180l;
    var_0["exposed_smg"][3] = %cqb_start_3;
    var_0["exposed_smg"][4] = %smg_stand_2_run_l;
    var_0["exposed_smg"][6] = %smg_stand_2_run_r;
    var_0["exposed_smg"][7] = %cqb_start_7;
    var_0["exposed_smg"][8] = %smg_stand_2_run_f_2;
    var_0["exposed_smg"][9] = %cqb_start_9;
    var_0["exposed_crouch"] = [];
    var_0["exposed_crouch"][1] = %cqb_crouch_start_1;
    var_0["exposed_crouch"][2] = %crouch_2run_180;
    var_0["exposed_crouch"][3] = %cqb_crouch_start_3;
    var_0["exposed_crouch"][4] = %crouch_2run_l;
    var_0["exposed_crouch"][6] = %crouch_2run_r;
    var_0["exposed_crouch"][7] = %cqb_crouch_start_7;
    var_0["exposed_crouch"][8] = %crouch_2run_f;
    var_0["exposed_crouch"][9] = %cqb_crouch_start_9;
    var_0["exposed_crouch_crouchwalk"] = [];
    var_0["exposed_crouch_crouchwalk"][1] = %crouchwalk_2_crouch_start_1;
    var_0["exposed_crouch_crouchwalk"][2] = %crouchwalk_2_crouch_start_2;
    var_0["exposed_crouch_crouchwalk"][3] = %crouchwalk_2_crouch_start_3;
    var_0["exposed_crouch_crouchwalk"][4] = %crouchwalk_2_crouch_start_4;
    var_0["exposed_crouch_crouchwalk"][6] = %crouchwalk_2_crouch_start_6;
    var_0["exposed_crouch_crouchwalk"][7] = %crouchwalk_2_crouch_start_7;
    var_0["exposed_crouch_crouchwalk"][8] = %crouchwalk_2_crouch_start_8;
    var_0["exposed_crouch_crouchwalk"][9] = %crouchwalk_2_crouch_start_9;
    var_0["exposed_cqb"] = [];
    var_0["exposed_cqb"][1] = %cqb_start_1;
    var_0["exposed_cqb"][2] = %cqb_start_2;
    var_0["exposed_cqb"][3] = %cqb_start_3;
    var_0["exposed_cqb"][4] = %cqb_start_4;
    var_0["exposed_cqb"][6] = %cqb_start_6;
    var_0["exposed_cqb"][7] = %cqb_start_7;
    var_0["exposed_cqb"][8] = %cqb_start_8;
    var_0["exposed_cqb"][9] = %cqb_start_9;
    var_0["exposed_crouch_cqb"] = [];
    var_0["exposed_crouch_cqb"][1] = %cqb_crouch_start_1;
    var_0["exposed_crouch_cqb"][2] = %cqb_crouch_start_2;
    var_0["exposed_crouch_cqb"][3] = %cqb_crouch_start_3;
    var_0["exposed_crouch_cqb"][4] = %cqb_crouch_start_4;
    var_0["exposed_crouch_cqb"][6] = %cqb_crouch_start_6;
    var_0["exposed_crouch_cqb"][7] = %cqb_crouch_start_7;
    var_0["exposed_crouch_cqb"][8] = %cqb_crouch_start_8;
    var_0["exposed_crouch_cqb"][9] = %cqb_crouch_start_9;
    var_0["heat"] = [];
    var_0["heat"][1] = %heat_exit_1;
    var_0["heat"][2] = %heat_exit_2;
    var_0["heat"][3] = %heat_exit_3;
    var_0["heat"][4] = %heat_exit_4;
    var_0["heat"][6] = %heat_exit_6;
    var_0["heat"][7] = %heat_exit_7;
    var_0["heat"][8] = %heat_exit_8;
    var_0["heat"][9] = %heat_exit_9;
    var_0["heat_left"] = [];
    var_0["heat_left"][1] = %heat_exit_1;
    var_0["heat_left"][2] = %heat_exit_2;
    var_0["heat_left"][3] = %heat_exit_3;
    var_0["heat_left"][4] = %heat_exit_4;
    var_0["heat_left"][6] = %heat_exit_6;
    var_0["heat_left"][7] = %heat_exit_8l;
    var_0["heat_left"][8] = %heat_exit_8l;
    var_0["heat_left"][9] = %heat_exit_8r;
    var_0["heat_right"] = [];
    var_0["heat_right"][1] = %heat_exit_1;
    var_0["heat_right"][2] = %heat_exit_2;
    var_0["heat_right"][3] = %heat_exit_3;
    var_0["heat_right"][4] = %heat_exit_4;
    var_0["heat_right"][6] = %heat_exit_6;
    var_0["heat_right"][7] = %heat_exit_8l;
    var_0["heat_right"][8] = %heat_exit_8r;
    var_0["heat_right"][9] = %heat_exit_8r;
    var_0["prone"] = [];
    var_0["prone"][1] = %h1_crawlstart_l90;
    var_0["prone"][2] = %h1_crawlstart_180;
    var_0["prone"][3] = %h1_crawlstart_180;
    var_0["prone"][4] = %h1_crawlstart_l90;
    var_0["prone"][6] = %h1_crawlstart_r90;
    var_0["prone"][7] = %h1_crawlstart_l45;
    var_0["prone"][8] = %h1_crawlstart_f_codemove;
    var_0["prone"][9] = %h1_crawlstart_r45;
    anim._ID3277["soldier"]["cover_exit"] = var_0;
}

_ID49458( var_0 )
{
    var_1 = 0.5;
    var_2 = 0;
    var_3 = 1;
    var_4 = 0.05;

    for ( var_5 = getanimlength( var_0 ); ( var_3 - var_2 ) * var_5 > var_4; var_1 = ( var_3 - var_2 ) / 2 + var_2 )
    {
        var_6 = getangledelta( var_0, var_1, 1 );

        if ( length2dsquared( var_6 ) < 1 )
        {
            var_3 = var_1;
            continue;
        }

        var_2 = var_1;
    }

    return var_3;
}

_ID20018( var_0 )
{
    if ( !isdefined( anim._ID3277[var_0] ) )
        return;

    var_1 = [];
    var_1[0] = "left";
    var_1[1] = "right";
    var_1[2] = "left_crouch";
    var_1[3] = "right_crouch";
    var_1[4] = "crouch";
    var_1[5] = "stand";
    var_1[6] = "exposed";
    var_1[7] = "exposed_crouch";
    var_1[8] = "stand_saw";
    var_1[9] = "prone_saw";
    var_1[10] = "crouch_saw";
    var_1[11] = "wall_over_40";
    var_1[12] = "right_cqb";
    var_1[13] = "right_crouch_cqb";
    var_1[14] = "left_cqb";
    var_1[15] = "left_crouch_cqb";
    var_1[16] = "exposed_cqb";
    var_1[17] = "exposed_crouch_cqb";
    var_1[18] = "heat";
    var_1[19] = "heat_left";
    var_1[20] = "heat_right";
    var_1[21] = "exposed_ready";
    var_1[22] = "exposed_ready_cqb";
    var_1[23] = "exposed_smg";
    var_1[24] = "exposed_crouch_crouchwalk";
    var_1[25] = "prone";

    if ( !isdefined( anim._ID3277[var_0]["cover_trans"] ) )
        return;

    for ( var_2 = 1; var_2 <= 6; var_2++ )
    {
        if ( var_2 == 5 )
            continue;

        for ( var_3 = 0; var_3 < var_1.size; var_3++ )
        {
            var_4 = var_1[var_3];

            if ( isdefined( anim._ID3277[var_0]["cover_trans"][var_4] ) && isdefined( anim._ID3277[var_0]["cover_trans"][var_4][var_2] ) )
            {
                anim._ID3277[var_0]["cover_trans_dist"][var_4][var_2] = getangledelta( anim._ID3277[var_0]["cover_trans"][var_4][var_2], 0, 1 );
                anim._ID3277[var_0]["cover_trans_angles"][var_4][var_2] = getmovedelta( anim._ID3277[var_0]["cover_trans"][var_4][var_2], 0, 1 );
                anim._ID3277[var_0]["cover_trans_move_end"][var_4][var_2] = _ID49458( anim._ID3277[var_0]["cover_trans"][var_4][var_2] );
            }

            if ( isdefined( anim._ID3277[var_0]["cover_exit"][var_4] ) && isdefined( anim._ID3277[var_0]["cover_exit"][var_4][var_2] ) )
            {
                if ( animhasnotetrack( anim._ID3277[var_0]["cover_exit"][var_4][var_2], "code_move" ) )
                    var_5 = getnotetracktimes( anim._ID3277[var_0]["cover_exit"][var_4][var_2], "code_move" )[0];
                else
                    var_5 = 1;

                anim._ID3277[var_0]["cover_exit_dist"][var_4][var_2] = getangledelta( anim._ID3277[var_0]["cover_exit"][var_4][var_2], 0, var_5 );
                anim._ID3277[var_0]["cover_exit_angles"][var_4][var_2] = getmovedelta( anim._ID3277[var_0]["cover_exit"][var_4][var_2], 0, 1 );
            }
        }
    }

    if ( !isdefined( anim._ID3277[var_0]["CoverTransLongestDist"] ) )
        anim._ID3277[var_0]["CoverTransLongestDist"] = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_4 = var_1[var_3];
        anim._ID3277[var_0]["CoverTransLongestDist"][var_4] = 0;

        for ( var_2 = 1; var_2 <= 6; var_2++ )
        {
            if ( var_2 == 5 || !isdefined( anim._ID3277[var_0]["cover_trans"][var_4] ) || !isdefined( anim._ID3277[var_0]["cover_trans"][var_4][var_2] ) )
                continue;

            var_6 = lengthsquared( anim._ID3277[var_0]["cover_trans_dist"][var_4][var_2] );

            if ( anim._ID3277[var_0]["CoverTransLongestDist"][var_4] < var_6 )
                anim._ID3277[var_0]["CoverTransLongestDist"][var_4] = var_6;
        }

        anim._ID3277[var_0]["CoverTransLongestDist"][var_4] = sqrt( anim._ID3277[var_0]["CoverTransLongestDist"][var_4] );
    }

    anim._ID13719["exposed"] = 1;
    anim._ID13719["exposed_crouch"] = 1;
    anim._ID13719["exposed_crouch_crouchwalk"] = 1;
    anim._ID13719["exposed_cqb"] = 1;
    anim._ID13719["exposed_crouch_cqb"] = 1;
    anim._ID13719["exposed_ready_cqb"] = 1;
    anim._ID13719["exposed_ready"] = 1;
    anim._ID13719["exposed_smg"] = 1;
    anim._ID13719["heat"] = 1;

    if ( !isdefined( anim._ID3277[var_0]["longestExposedApproachDist"] ) )
        anim._ID3277[var_0]["longestExposedApproachDist"] = 0;

    foreach ( var_4, var_8 in anim._ID13719 )
    {
        for ( var_2 = 7; var_2 <= 9; var_2++ )
        {
            if ( isdefined( anim._ID3277[var_0]["cover_trans"][var_4] ) && isdefined( anim._ID3277[var_0]["cover_trans"][var_4][var_2] ) )
            {
                anim._ID3277[var_0]["cover_trans_dist"][var_4][var_2] = getangledelta( anim._ID3277[var_0]["cover_trans"][var_4][var_2], 0, 1 );
                anim._ID3277[var_0]["cover_trans_angles"][var_4][var_2] = getmovedelta( anim._ID3277[var_0]["cover_trans"][var_4][var_2], 0, 1 );
                anim._ID3277[var_0]["cover_trans_move_end"][var_4][var_2] = _ID49458( anim._ID3277[var_0]["cover_trans"][var_4][var_2] );
            }

            if ( isdefined( anim._ID3277[var_0]["cover_exit"][var_4] ) && isdefined( anim._ID3277[var_0]["cover_exit"][var_4][var_2] ) )
            {
                var_9 = animhasnotetrack( anim._ID3277[var_0]["cover_exit"][var_4][var_2], "code_move" );
                var_5 = getnotetracktimes( anim._ID3277[var_0]["cover_exit"][var_4][var_2], "code_move" )[0];
                anim._ID3277[var_0]["cover_exit_dist"][var_4][var_2] = getangledelta( anim._ID3277[var_0]["cover_exit"][var_4][var_2], 0, var_5 );
                anim._ID3277[var_0]["cover_exit_angles"][var_4][var_2] = getmovedelta( anim._ID3277[var_0]["cover_exit"][var_4][var_2], 0, 1 );
            }
        }

        for ( var_2 = 1; var_2 <= 9; var_2++ )
        {
            if ( !isdefined( anim._ID3277[var_0]["cover_trans"][var_4] ) || !isdefined( anim._ID3277[var_0]["cover_trans"][var_4][var_2] ) )
                continue;

            var_10 = length( anim._ID3277[var_0]["cover_trans_dist"][var_4][var_2] );

            if ( var_10 > anim._ID3277[var_0]["longestExposedApproachDist"] )
                anim._ID3277[var_0]["longestExposedApproachDist"] = var_10;
        }
    }
}

_ID19958()
{
    _ID19742();
    anim._ID3257 = [];
    anim._ID3257["Cover Left"] = [];
    anim._ID3257["Cover Left"]["stand"] = "left";
    anim._ID3257["Cover Left"]["crouch"] = "left_crouch";
    anim._ID3257["Cover Wide Left"] = anim._ID3257["Cover Left"];
    anim._ID23090["Cover Left"] = 9;
    anim._ID13291["Cover Left"] = 9;
    anim._ID3257["Cover Right"] = [];
    anim._ID3257["Cover Right"]["stand"] = "right";
    anim._ID3257["Cover Right"]["crouch"] = "right_crouch";
    anim._ID3257["Cover Wide Right"] = anim._ID3257["Cover Right"];
    anim._ID23090["Cover Right"] = 9;
    anim._ID13291["Cover Right"] = 7;
    anim._ID3257["Cover Crouch"] = [];
    anim._ID3257["Cover Crouch"]["stand"] = "crouch";
    anim._ID3257["Cover Crouch"]["crouch"] = "crouch";
    anim._ID3257["Conceal Crouch"] = anim._ID3257["Cover Crouch"];
    anim._ID3257["Cover Crouch Window"] = anim._ID3257["Cover Crouch"];
    anim._ID23090["Cover Crouch"] = 6;
    anim._ID13291["Cover Crouch"] = -1;
    anim._ID23090["Conceal Crouch"] = 6;
    anim._ID13291["Conceal Crouch"] = -1;
    anim._ID3257["Cover Stand"] = [];
    anim._ID3257["Cover Stand"]["stand"] = "stand";
    anim._ID3257["Cover Stand"]["crouch"] = "stand";
    anim._ID3257["Conceal Stand"] = anim._ID3257["Cover Stand"];
    anim._ID23090["Cover Stand"] = 6;
    anim._ID13291["Cover Stand"] = -1;
    anim._ID23090["Conceal Stand"] = 6;
    anim._ID13291["Conceal Stand"] = -1;
    anim._ID3257["Cover Prone"] = [];
    anim._ID3257["Cover Prone"]["stand"] = "exposed";
    anim._ID3257["Cover Prone"]["crouch"] = "exposed";
    anim._ID3257["Conceal Prone"] = anim._ID3257["Cover Prone"];
    anim._ID13291["Conceal Prone"] = -1;
    anim._ID3257["Path"] = [];
    anim._ID3257["Path"]["stand"] = "exposed";
    anim._ID3257["Path"]["crouch"] = "exposed_crouch";
    anim._ID3257["Guard"] = anim._ID3257["Path"];
    anim._ID3257["Guard"]["prone"] = "prone";
    anim._ID3257["Ambush"] = anim._ID3257["Path"];
    anim._ID3257["Scripted"] = anim._ID3257["Path"];
    anim._ID3257["Exposed"] = anim._ID3257["Path"];
    anim._ID20710["Guard"] = 1;
    anim._ID20710["Ambush"] = 1;
    anim._ID20710["Exposed"] = 1;
    anim._ID20711["Guard"] = 1;
    anim._ID20711["Exposed"] = 1;
    _ID20001();
    _ID20002();
    _ID20018( "soldier" );
    anim._ID35451 = [];
    anim._ID35451["left"] = 1;
    anim._ID35451["left_crouch"] = 1;
    anim._ID35451["left_crouch_cqb"] = 1;
    anim._ID35451["left_cqb"] = 1;
    anim._ID35453 = [];
    anim._ID35453["left"] = 1;
    anim._ID35453["left_crouch"] = 1;
    anim._ID35453["left_crouch_cqb"] = 1;
    anim._ID35453["left_cqb"] = 1;
    anim._ID35453["heat_left"] = 1;
    anim._ID35452 = [];
    anim._ID35452["right"] = 1;
    anim._ID35452["right_crouch"] = 1;
    anim._ID35452["right_cqb"] = 1;
    anim._ID35452["right_crouch_cqb"] = 1;
    anim._ID35454 = [];
    anim._ID35454["right"] = 1;
    anim._ID35454["right_crouch"] = 1;
    anim._ID35454["right_cqb"] = 1;
    anim._ID35454["right_crouch_cqb"] = 1;
    anim._ID35454["heat_right"] = 1;
    _ID16612( "soldier" );
    anim._ID3367["left"] = "stand";
    anim._ID3367["left_cqb"] = "stand";
    anim._ID3367["right"] = "stand";
    anim._ID3367["right_cqb"] = "stand";
    anim._ID3367["stand"] = "stand";
    anim._ID3367["stand_saw"] = "stand";
    anim._ID3367["stand_unstable"] = "stand";
    anim._ID3367["exposed"] = "stand";
    anim._ID3367["exposed_cqb"] = "stand";
    anim._ID3367["exposed_smg"] = "stand";
    anim._ID3367["exposed_unstable"] = "stand";
    anim._ID3367["exposed_unstable_run"] = "stand";
    anim._ID3367["heat"] = "stand";
    anim._ID3367["left_crouch"] = "crouch";
    anim._ID3367["left_crouch_cqb"] = "crouch";
    anim._ID3367["right_crouch"] = "crouch";
    anim._ID3367["right_crouch_cqb"] = "crouch";
    anim._ID3367["crouch_saw"] = "crouch";
    anim._ID3367["crouch"] = "crouch";
    anim._ID3367["exposed_crouch"] = "crouch";
    anim._ID3367["exposed_crouch_crouchwalk"] = "crouch";
    anim._ID3367["exposed_crouch_cqb"] = "crouch";
    anim._ID3367["prone_saw"] = "prone";
    anim._ID3367["exposed_ready"] = "stand";
    anim._ID3367["exposed_ready_cqb"] = "stand";
    anim._ID29710["Cover Stand"] = "stand";
    anim._ID29710["Conceal Stand"] = "stand";
    anim._ID29710["Cover Crouch"] = "crouch";
    anim._ID29710["Conceal Crouch"] = "crouch";
}

_ID16612( var_0 )
{
    _ID16613( var_0, 7, 8, 0, anim._ID35451, anim._ID35453 );
    _ID16613( var_0, 8, 9, 1, anim._ID35452, anim._ID35454 );
}

_ID49033( var_0, var_1 )
{
    var_2 = 1;

    if ( animhasnotetrack( var_0, "code_move" ) )
        var_2 = getnotetracktimes( var_0, "code_move" )[0];

    var_3 = spawnstruct();
    var_3._ID46547 = getangledelta( var_0, 0, var_1 );
    var_3._ID44458 = getangledelta( var_0, 0, var_2 ) - var_3._ID46547;
    var_3._ID50830 = getmovedelta( var_0, 0, 1 );
    return var_3;
}

_ID16613( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    for ( var_6 = var_1; var_6 <= var_2; var_6++ )
    {
        if ( isdefined( anim._ID3277[var_0]["cover_trans"] ) )
        {
            foreach ( var_11, var_8 in var_4 )
            {
                if ( issubstr( var_11, "heat" ) )
                    continue;

                if ( isdefined( anim._ID3277[var_0]["cover_trans"][var_11] ) && isdefined( anim._ID3277[var_0]["cover_trans"][var_11][var_6] ) )
                {
                    var_9 = _ID45765( anim._ID3277[var_0]["cover_trans"][var_11][var_6], 1, var_3 );
                    var_10 = _ID49033( anim._ID3277[var_0]["cover_trans"][var_11][var_6], var_9 );
                    anim._ID3277[var_0]["cover_trans_predist"][var_11][var_6] = var_10._ID46547;
                    anim._ID3277[var_0]["cover_trans_dist"][var_11][var_6] = var_10._ID44458;
                    anim._ID3277[var_0]["cover_trans_angles"][var_11][var_6] = var_10._ID50830;
                    anim._ID3277[var_0]["cover_trans_move_end"][var_11][var_6] = _ID49458( anim._ID3277[var_0]["cover_trans"][var_11][var_6] );
                }
            }
        }

        if ( isdefined( anim._ID3277[var_0]["cover_exit"] ) )
        {
            foreach ( var_11, var_8 in var_5 )
            {
                if ( issubstr( var_11, "heat" ) )
                    continue;

                if ( isdefined( anim._ID3277[var_0]["cover_exit"][var_11] ) && isdefined( anim._ID3277[var_0]["cover_exit"][var_11][var_6] ) )
                {
                    var_9 = _ID45765( anim._ID3277[var_0]["cover_exit"][var_11][var_6], 0, var_3 );
                    var_10 = _ID49033( anim._ID3277[var_0]["cover_exit"][var_11][var_6], var_9 );
                    anim._ID3277[var_0]["cover_exit_dist"][var_11][var_6] = var_10._ID46547;
                    anim._ID3277[var_0]["cover_exit_postdist"][var_11][var_6] = var_10._ID44458;
                    anim._ID3277[var_0]["cover_exit_angles"][var_11][var_6] = var_10._ID50830;
                }
            }
        }
    }
}

_ID45765( var_0, var_1, var_2 )
{
    var_3 = getmovedelta( var_0, 0, 1 );
    var_4 = getangledelta( var_0, 0, 1 );
    var_5 = 1000;
    var_6 = -1;
    var_7 = -100000000;
    var_8 = ( 0, 0, 0 );

    for ( var_9 = 0; var_9 < var_5; var_9++ )
    {
        var_10 = 1.0 * var_9 / ( var_5 - 1 );
        var_11 = getangledelta( var_0, 0, var_10 );

        if ( var_1 )
            var_11 = _ID47164( var_4 - var_11, 180 - var_3 );

        if ( var_2 )
            var_11 = ( var_11[0], 0 - var_11[1], var_11[2] );

        var_12 = min( var_11[0] - 32, var_11[1] );

        if ( var_12 > var_7 || var_6 < 0 )
        {
            var_7 = var_12;
            var_6 = var_10;
            var_8 = var_11;
        }
    }

    return var_6;
}

_ID47164( var_0, var_1 )
{
    var_2 = cos( var_1 );
    var_3 = sin( var_1 );
    return ( var_0[0] * var_2 - var_0[1] * var_3, var_0[1] * var_2 + var_0[0] * var_3, 0 );
}
