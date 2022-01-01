// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID8467();
    _ID19806();
    _ID19703();
    _ID22056();
    _ID22043();
    thread _ID22042();
    _ID9159();
    _ID28366();
    _ID29419();
    thread aud_intro_start();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_trainer_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{

}

_ID22043()
{

}

_ID22042()
{
    wait 0.1;
}

_ID9159()
{

}

_ID28366()
{

}

_ID29419()
{
    _ID42475::_ID34640( "start_timed_ads_checkpoint", ::_ID47600 );
    _ID42475::_ID34640( "start_bullet_penetration_checkpoint", ::_ID50378 );
    _ID42475::_ID34640( "start_frag_checkpoint", ::_ID44310 );
    _ID42475::_ID34640( "start_pit_checkpoint", ::_ID52848 );
    _ID42475::_ID34640( "start_course_checkpoint", ::_ID49605 );
    _ID42475::_ID34640( "start_end_checkpoint", ::_ID45096 );
    _ID42475::_ID34640( "start_fade_out_level", ::_ID52274 );
    _ID42475::_ID34640( "aud_start_mix_info_popup", ::aud_start_mix_info_popup );
    _ID42475::_ID34640( "aud_stop_mix_info_popup", ::aud_stop_mix_info_popup );
    _ID42475::_ID34640( "aud_start_mix_practice_range", ::aud_start_mix_practice_range );
    _ID42475::_ID34640( "aud_stop_mix_practice_range", ::aud_stop_mix_practice_range );
    _ID42475::_ID34640( "aud_start_mix_evacuation", ::aud_start_mix_evacuation );
    _ID42475::_ID34640( "scn_trainer_pavelow_h2_intro_heli", ::scn_trainer_pavelow_h2_intro_heli );
    _ID42475::_ID34640( "scn_trainer_pavelow_h2_intro_heli_land", ::scn_trainer_pavelow_h2_intro_heli_land );
    _ID42475::_ID34640( "scn_trainer_tower_latvee_01", ::scn_trainer_tower_latvee_01 );
    _ID42475::_ID34640( "scn_trainer_tower_latvee_02", ::scn_trainer_tower_latvee_02 );
    _ID42475::_ID34640( "scn_trainer_tower_stryker", ::scn_trainer_tower_stryker );
    _ID42475::_ID34640( "scn_trainer_tower_m1a1", ::scn_trainer_tower_m1a1 );
    _ID42475::_ID34640( "scn_trainer_tower_f15_01", ::scn_trainer_tower_f15_01 );
    _ID42475::_ID34640( "scn_trainer_tower_f15_02", ::scn_trainer_tower_f15_02 );
    _ID42475::_ID34640( "aud_start_scn_trainer_ending_laatpv_01", ::aud_start_scn_trainer_ending_laatpv_01 );
    _ID42475::_ID34640( "aud_start_scn_trainer_ending_laatpv_02", ::aud_start_scn_trainer_ending_laatpv_02 );
    _ID42475::_ID34640( "aud_start_scn_trainer_ending_bridge", ::aud_start_scn_trainer_ending_bridge );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID47600( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID50378( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID44310( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID52848( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID49605( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID45096( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

aud_intro_start()
{
    _ID42237::_ID14413( "introscreen_activate" );
    _ID42465::_ID23797( "mix_intro_amb_fade_in" );
    _ID42407::_ID10226( 1, _ID42465::_ID23801, "mix_intro_amb_fade_in" );
    _ID42465::_ID23797( "mix_intro_level" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    wait 0.8;
    _ID42465::_ID23801( "mix_intro_level" );
}

_ID52274()
{
    _ID42465::_ID23797( "fade_out_level_mix" );
}

aud_start_mix_info_popup()
{
    _ID42465::_ID23797( "mix_info_popup" );
}

aud_stop_mix_info_popup()
{
    _ID42465::_ID23801( "mix_info_popup" );
}

aud_start_mix_practice_range()
{
    _ID42465::_ID23797( "mix_practice_range" );
}

aud_stop_mix_practice_range()
{
    _ID42465::_ID23801( "mix_practice_range" );
}

aud_handle_pit_scene_mix()
{
    for (;;)
    {
        _ID42237::_ID14413( "player_has_started_course" );
        _ID42465::_ID23797( "mix_running_pit" );
        _ID42237::_ID14426( "player_has_started_course" );
        _ID42237::_ID14413( "player_course_end" );
        _ID42465::_ID23801( "mix_running_pit" );
    }
}

aud_start_mix_evacuation()
{
    _ID42465::_ID23797( "mix_evacuation" );
}

scn_trainer_pavelow_h2_intro_heli( var_0 )
{
    var_0 _ID45008();
    var_0 thread _ID42237::_ID27000( "scn_trainer_pavelow_h2_intro_heli", undefined, 0.3, 1.2 );
}

scn_trainer_pavelow_h2_intro_heli_land( var_0 )
{
    var_0 _ID42237::_ID36516( "scn_trainer_pavelow_h2_intro_heli" );
    var_0 thread _ID42407::_ID27079( "scn_trainer_pavelow_h2_intro_heli_land" );
    var_0 _ID42237::_ID14413( "h2_heli_landed" );
    var_0 waittill( "goal" );
    var_0 thread _ID42407::_ID27001( "scn_trainer_pavelow_h2_intro_heli_idle", undefined, 1, 1, 0.6, 0.3 );
}

aud_handle_veh_group( var_0, var_1, var_2 )
{
    foreach ( var_4 in var_0 )
    {
        if ( isdefined( var_4._ID922 ) && var_4._ID922 != "h2_intro_heli" )
        {
            var_4 _ID45008();

            if ( var_2 )
            {
                var_4 thread _ID42237::_ID27000( "scn_trainer_" + var_1 + "_" + var_4._ID922 );
                continue;
            }

            var_4 thread _ID42407::_ID27079( "scn_trainer_" + var_1 + "_" + var_4._ID922 );
        }
    }
}

aud_handle_ending_latvees( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID922 ) )
        {
            var_3 = spawn( "script_origin", var_2._ID740 );
            var_3 linkto( var_2 );
            var_3 thread _ID42237::_ID27000( "scn_trainer_latvee_idle" );
            var_3 setvolume( 0, 0 );
            var_2 _ID42407::_ID27079( "scn_trainer_latvee_" + var_2._ID922 );
            var_3 setvolume( 1, 0.5 );
        }
    }
}

_ID45008()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

scn_trainer_tower_latvee_01( var_0 )
{
    _ID42237::_ID14413( "tower_02" );
    var_0 _ID45008();
    var_0 thread _ID42407::_ID27079( "scn_trainer_tower_latvee_01" );
}

scn_trainer_tower_latvee_02( var_0 )
{
    _ID42237::_ID14413( "tower_02" );
    var_0 _ID45008();
    var_0 thread _ID42407::_ID27079( "scn_trainer_tower_latvee_02" );
}

scn_trainer_tower_m1a1( var_0 )
{
    _ID42237::_ID14413( "tower_02" );
    var_0 _ID45008();
    var_0 thread _ID42407::_ID27079( "scn_trainer_tower_m1a1" );
}

scn_trainer_tower_stryker( var_0 )
{
    _ID42237::_ID14413( "tower_02" );
    self vehicle_turnengineoff();
    var_0 thread _ID42407::_ID27079( "scn_trainer_tower_stryker" );
}

scn_trainer_tower_f15_01( var_0 )
{
    var_0 _ID45008();
    var_0 thread _ID42407::_ID27079( "scn_trainer_tower_f15_01" );
}

scn_trainer_tower_f15_02( var_0 )
{
    var_0 _ID45008();
    var_0 thread _ID42407::_ID27079( "scn_trainer_tower_f15_02" );
}

aud_start_scn_trainer_ending_laatpv_01( var_0 )
{
    var_0 _ID45008();
    var_1 = spawn( "script_origin", var_0._ID740 );
    var_1 linkto( var_0 );
    var_1 thread _ID42237::_ID27000( "scn_trainer_latvee_idle" );
    var_1 setvolume( 0, 0 );
    var_0 _ID42407::_ID27079( "scn_trainer_ending_laatpv_01" );
    var_1 setvolume( 1, 0.5 );
}

aud_start_scn_trainer_ending_laatpv_02( var_0 )
{
    var_0 _ID45008();
    var_1 = spawn( "script_origin", var_0._ID740 );
    var_1 linkto( var_0 );
    var_1 thread _ID42237::_ID27000( "scn_trainer_latvee_idle" );
    var_1 setvolume( 0, 0 );
    var_0 _ID42407::_ID27079( "scn_trainer_ending_laatpv_02" );
    var_1 setvolume( 1, 0.5 );
}

aud_start_scn_trainer_ending_bridge( var_0 )
{
    var_0 _ID45008();
    var_0 thread _ID42407::_ID27079( "scn_trainer_ending_bridge" );
}

_ID43109( var_0, var_1 )
{
    var_2 = level._ID794 geteye();
    var_3 = 4;
    var_4 = 182358016;
    var_5 = sortbydistance( var_1, var_2 );
    var_5[0] thread play_sound_on_pa( var_0, 1 );

    for ( var_6 = 1; var_6 < var_3; var_6++ )
    {
        var_7 = distancesquared( var_5[var_6]._ID740, var_2 ) / var_4;

        if ( var_6 != var_3 - 1 )
        {
            var_5[var_6] thread play_sound_on_pa_with_delay( var_0, var_7 );
            continue;
        }

        wait(var_7);
        var_5[var_6] play_sound_on_pa( var_0 );
    }
}

play_sound_on_pa( var_0, var_1 )
{
    var_2 = "";

    if ( !isdefined( var_1 ) || !var_1 )
        var_2 = "_noSub";

    if ( isdefined( level._ID30908[var_0] ) )
        _ID42407::_ID27080( level._ID30908[var_0] + var_2 );
    else
        _ID42407::_ID27080( var_0 + var_2 );

    wait 0.3;
}

play_sound_on_pa_with_delay( var_0, var_1 )
{
    wait(var_1);

    if ( isdefined( level._ID30908[var_0] ) )
        self playsound( level._ID30908[var_0] + "_noSub" );
    else
        self playsound( var_0 + "_noSub" );
}

course_end_timer_buzzer()
{
    var_0 = getent( "training_course_timer", "targetname" );
    var_0 _ID42407::_ID27079( "scn_timer_buzzer" );
}
