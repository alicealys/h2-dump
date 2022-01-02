// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
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
    thread _ID51200();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_cliffhanger_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    thread _ID44955();
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
    _ID42475::_ID34640( "start_cave_checkpoint", ::_ID49052 );
    _ID42475::_ID34640( "start_e3_checkpoint", ::_ID52373 );
    _ID42475::_ID34640( "start_climb_checkpoint", ::_ID43020 );
    _ID42475::_ID34640( "start_jump_checkpoint", ::_ID52333 );
    _ID42475::_ID34640( "start_clifftop_checkpoint", ::_ID47020 );
    _ID42475::_ID34640( "start_camp_checkpoint", ::_ID50863 );
    _ID42475::_ID34640( "start_c4_checkpoint", ::_ID48555 );
    _ID42475::_ID34640( "start_goto_hanger_checkpoint", ::_ID47955 );
    _ID42475::_ID34640( "start_hangerpath_checkpoint", ::_ID50874 );
    _ID42475::_ID34640( "start_hanger_checkpoint", ::_ID48362 );
    _ID42475::_ID34640( "start_satellite_checkpoint", ::_ID53894 );
    _ID42475::_ID34640( "start_tarmac_checkpoint", ::_ID50190 );
    _ID42475::_ID34640( "start_icepick_checkpoint", ::_ID44178 );
    _ID42475::_ID34640( "start_snowmobile_checkpoint", ::_ID50027 );
    _ID42475::_ID34640( "start_fade_out_level", ::_ID52274 );
    _ID42475::_ID34640( "aud_change_hanger_ambience", ::_ID45253 );
    _ID42475::_ID34640( "aud_turnoff_hanger_door_transition", ::_ID43154 );
    _ID42475::_ID34640( "aud_activate_hanger_door_transition", ::_ID49150 );
    _ID42475::_ID34640( "aud_add_snowstorm_ambience", ::_ID54473 );
    _ID42475::_ID34640( "aud_remove_snowstorm_ambience", ::_ID50943 );
    _ID42475::_ID34640( "aud_base_alarm_system", ::_ID45894 );
    _ID42475::_ID34640( "aud_start_mix_mig_passby", ::_ID46032 );
    _ID42475::_ID34640( "aud_stop_mix_mig_passby", ::_ID54503 );
    _ID42475::_ID34640( "aud_start_mix_player_climbing", ::_ID43863 );
    _ID42475::_ID34640( "aud_stop_mix_player_climbing", ::_ID49925 );
    _ID42475::_ID34640( "aud_start_mix_initial_icepick", ::_ID43584 );
    _ID42475::_ID34640( "aud_stop_mix_initial_icepick", ::_ID46952 );
    _ID42475::_ID34640( "aud_start_mix_slowmo_jump_event", ::_ID43850 );
    _ID42475::_ID34640( "aud_stop_mix_slowmo_jump_event", ::_ID48164 );
    _ID42475::_ID34640( "aud_mix_jet_landing", ::_ID51564 );
    _ID42475::_ID34640( "aud_mix_stealth_takedown", ::_ID48524 );
    _ID42475::_ID34640( "aud_start_mix_stealth_busted", ::_ID48079 );
    _ID42475::_ID34640( "aud_stop_mix_stealth_busted", ::_ID49845 );
    _ID42475::_ID34640( "aud_start_mix_mactavish_trapped", ::_ID48757 );
    _ID42475::_ID34640( "aud_stop_mix_mactavish_trapped", ::_ID45935 );
    _ID42475::_ID34640( "aud_start_mix_slowmo_explosion", ::_ID50021 );
    _ID42475::_ID34640( "aud_stop_mix_slowmo_explosion", ::_ID49003 );
    _ID42475::_ID34640( "aud_handle_explosion", ::_ID45480 );
    _ID42475::_ID34640( "aud_start_mix_snowmobile_ride", ::_ID53130 );
    _ID42475::_ID34640( "aud_stop_mix_snowmobile_ride", ::_ID43539 );
    _ID42475::_ID34640( "aud_start_mix_snowmobile_descent", ::_ID46035 );
    _ID42475::_ID34640( "aud_stop_mix_snowmobile_descent", ::_ID51833 );
    _ID42475::_ID34640( "aud_start_mix_snowmobile_jump", ::_ID45247 );
    _ID42475::_ID34640( "aud_stop_mix_snowmobile_jump", ::_ID48029 );
    _ID42475::_ID34640( "start_fade_to_death", ::start_fade_to_death );
    _ID42475::_ID34640( "start_tarmac_bmp_scripted_sfx", ::_ID47477 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID49052( var_0 )
{
    _ID42474::_ID4669( "exterior_cliff" );
}

_ID52373( var_0 )
{
    _ID42474::_ID4669( "exterior_cliff" );
}

_ID43020( var_0 )
{
    _ID42474::_ID4669( "exterior_cliff" );
}

_ID52333( var_0 )
{
    _ID42474::_ID4669( "exterior_cliff" );
}

_ID47020( var_0 )
{
    _ID42474::_ID4669( "exterior_cliff" );
}

_ID50863( var_0 )
{
    _ID42474::_ID4669( "exterior_clifftop" );
}

_ID48555( var_0 )
{
    _ID42474::_ID4669( "exterior_camp" );
}

_ID47955( var_0 )
{
    _ID42474::_ID4669( "exterior_camp" );
}

_ID50874( var_0 )
{
    _ID42474::_ID4669( "exterior_camp" );
}

_ID48362( var_0 )
{
    _ID42474::_ID4669( "exterior_metal_roof" );
}

_ID53894( var_0 )
{
    _ID42474::_ID4669( "office" );
}

_ID50190( var_0 )
{
    _ID42474::_ID4669( "hanger" );
}

_ID44178( var_0 )
{
    _ID42474::_ID4669( "exterior_mountain" );
}

_ID50027( var_0 )
{
    _ID42474::_ID4669( "exterior_mountain" );
}

_ID52274()
{
    _ID42465::_ID23797( "fade_out_level_mix" );
}

_ID46032()
{
    wait 1.0;
    _ID42465::_ID23797( "mix_mig_passby" );
}

_ID54503()
{
    _ID42465::_ID23801( "mix_mig_passby" );
}

_ID43863()
{
    _ID42465::_ID23797( "mix_player_climbing" );
}

_ID49925()
{
    _ID42465::_ID23801( "mix_player_climbing" );
}

_ID43584( var_0 )
{
    _ID42465::_ID23797( "mix_initial_icepick" );
}

_ID46952( var_0 )
{
    _ID42465::_ID23801( "mix_initial_icepick" );
}

_ID43850()
{
    _ID42465::_ID23797( "mix_slowmo_jump_event" );
}

_ID48164()
{
    _ID42465::_ID23801( "mix_slowmo_jump_event" );
}

_ID51564()
{
    wait 2.0;
    _ID42465::_ID23797( "mix_jet_landing" );
    wait 8.0;
    _ID42465::_ID23801( "mix_jet_landing" );
}

_ID48524()
{
    _ID42465::_ID23797( "mix_stealth_takedown" );
    _ID42237::_ID14413( "clifftop_patrol1_dead" );
    _ID42465::_ID23801( "mix_stealth_takedown" );
}

_ID48079()
{
    _ID42465::_ID23797( "mix_stealth_busted" );
}

_ID49845()
{
    _ID42465::_ID23801( "mix_stealth_busted" );
}

_ID48757()
{
    _ID42465::_ID23797( "mix_mactavish_trapped" );
}

_ID45935()
{
    _ID42465::_ID23801( "mix_mactavish_trapped" );
}

_ID50021()
{
    _ID42465::_ID23797( "mix_slowmo_explosion" );
}

_ID49003()
{
    _ID42465::_ID23801( "mix_slowmo_explosion" );
}

_ID53130()
{
    _ID42465::_ID23797( "mix_snowmobile_ride" );
}

_ID43539()
{
    _ID42465::_ID23801( "mix_snowmobile_ride" );
}

_ID46035()
{
    _ID42465::_ID23797( "mix_snowmobile_descent" );
}

_ID51833()
{
    _ID42465::_ID23801( "mix_snowmobile_descent" );
}

_ID45247()
{
    _ID42465::_ID23797( "mix_snowmobile_jump" );
}

_ID48029()
{
    _ID42465::_ID23801( "mix_snowmobile_jump" );
}

_ID47477( var_0 )
{
    var_0 thread _ID42407::_ID27081( "scn_tarmac_bmp_stop" );
    wait 1.8;
    var_0 vehicle_turnengineoff();
    wait 3.0;
    var_0 thread _ID42407::_ID27001( "bmp_idle_low", undefined, 1, 1, 1.0 );
}

start_fade_to_death()
{
    thread _ID42237::_ID27077( "scn_cliff_plr_snowmobile_jump_fail", ( 0, 0, 0 ) );
    _ID42465::_ID23797( "fade_to_death_mix" );
}

_ID51200()
{
    _ID42237::_ID14413( "introscreen_activate" );
    _ID42465::_ID23797( "fade_in_intro_mix" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    _ID42465::_ID23801( "fade_in_intro_mix" );
}

_ID47416()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    var_0 thread _ID42407::_ID27079( "scn_cliff_plane_passby" );
}

_ID44955()
{
    _ID44859( "climb_pullup_wind", "scn_cliffhanger_pullup_strong_wind" );
    _ID44859( "2nd_climb_pullup_wind", "scn_cliffhanger_pullup_strong_wind_2nd" );
}

_ID44859( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    level.player playsound( var_1 );
}

_ID54473( var_0 )
{
    _ID42465::_ID23797( "mix_heavy_wind_storm_active", var_0 );
    _ID42474::_ID4668( "exterior_clifftop", "ambient_cliff_ext_snowstorm", var_0 );
    _ID42474::_ID4668( "exterior_camp", "ambient_cliff_ext_snowstorm", var_0 );
    _ID42474::_ID4668( "between_hangar", "ambient_cliff_ext_snowstorm", var_0 );
    _ID42474::_ID4668( "exterior_metal_roof", "ambient_cliff_metal_roof_storm_front", var_0 );
    _ID42474::_ID4664( "exterior_clifftop", "exterior_storm", var_0 );
    _ID42474::_ID4664( "exterior_camp", "exterior_storm", var_0 );
    _ID42474::_ID4664( "between_hangar", "exterior_storm", var_0 );
    _ID50744();
}

_ID50943( var_0 )
{
    _ID42465::_ID23801( "mix_heavy_wind_storm_active", var_0 );
    _ID42474::_ID4668( "exterior_clifftop", "ambient_cliffhanger_ext0", var_0 );
    _ID42474::_ID4668( "exterior_camp", "ambient_cliffhanger_ext0", var_0 );
    _ID42474::_ID4668( "between_hangar", "ambient_cliffhanger_ext0", var_0 );
    _ID42474::_ID4668( "exterior_metal_roof", "ambient_cliffhanger_ext0", var_0 );
    _ID42474::_ID4664( "exterior_clifftop", "exterior", var_0 );
    _ID42474::_ID4664( "exterior_camp", "exterior", var_0 );
    _ID42474::_ID4664( "between_hangar", "exterior", var_0 );
    _ID53286();
}

_ID43154()
{
    _ID42237::_ID38863( "hangar_door", "script_noteworthy" );
}

_ID49150()
{
    _ID42237::_ID38865( "hangar_door", "script_noteworthy" );
}

_ID45253()
{
    _ID42474::_ID4664( "hanger", "exterior_base", 0.5 );
    _ID42474::_ID4665( "hanger", "hanger_open_mix", 0.5 );
}

_ID45894()
{
    var_0 = getent( "base_alarm_speaker", "targetname" );
    var_0 playloopsound( "emt_cliff_base_alarm" );
    _ID42237::_ID14413( "player_snowmobile_available" );
    var_0 stopsounds();
}

_ID47705()
{
    self endon( "death" );
    var_0 = _ID46546();
    _ID42237::_ID14413( "truck_guys_alerted" );
    self waittill( "safe_to_unload" );
    thread _ID51982( var_0 );
    thread _ID51875();
}

_ID46546()
{
    var_0 = _ID49451( "emt_cliff_jeep_wheel_lf", self, "tag_wheel_front_left" );
    var_1 = _ID49451( "emt_cliff_jeep_wheel_rf", self, "tag_wheel_front_right" );
    var_2 = _ID49451( "emt_cliff_jeep_wheel_lb", self, "tag_wheel_back_left" );
    var_3 = _ID49451( "emt_cliff_jeep_wheel_rb", self, "tag_wheel_back_right" );
    var_4 = [ var_0, var_2, var_1, var_3 ];
    return var_4;
}

_ID51982( var_0 )
{
    self endon( "death" );
    thread _ID42407::_ID27080( "scn_cliff_jeep_brake", "tag_body", 1 );

    foreach ( var_2 in var_0 )
        var_2 setvolume( 0, 1 );

    wait 1.5;

    foreach ( var_2 in var_0 )
        var_2 stopsounds();

    wait 0.05;
    self notify( "jeep_stopping" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID51875()
{
    self vehicle_turnengineoff();
    thread _ID42407::_ID27001( "veh_uaz_idle_low", "tag_body", 1 );
}

_ID49451( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_3 linkto( var_1, var_2, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_3 playloopsound( var_0 );
    var_1 thread handle_entity_link_sound_death( var_3 );
    return var_3;
}

handle_entity_link_sound_death( var_0 )
{
    self endon( "jeep_stopping" );
    self waittill( "death" );
    var_0 stopsounds();
    wait 0.05;
    var_0 delete();
}

_ID50744()
{
    var_0 = getentarray( "wind_ent", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2 playloopsound( "emt_wind_interior_wood" );
}

_ID53286()
{
    var_0 = getentarray( "wind_ent", "script_noteworthy" );
    var_1 = getentarray( "door_ent", "script_noteworthy" );

    foreach ( var_3 in var_0 )
        var_3 stopsounds();

    foreach ( var_6 in var_1 )
        var_6 stopsounds();
}

_ID45480( var_0, var_1 )
{
    switch ( var_0 )
    {
        case "mig1":
            var_1 thread _ID42237::_ID27077( "scn_hangar_jet_impact_01" );
            break;
        case "mig2":
            var_1 thread _ID42237::_ID27077( "scn_hangar_jet_impact_02" );
            break;
    }
}

_ID51792( var_0 )
{
    level._ID28543 _ID42407::_ID10805( "compromised" );
}

aud_setup_sitter_takedown()
{
    self endon( "death" );
    self waittill( "stealth_takedown_started" );
    _ID42465::_ID23797( "sitter_takedown_mix" );
    self waittill( "stealth_takedown_ended" );
    _ID42465::_ID23801( "sitter_takedown_mix" );
}
