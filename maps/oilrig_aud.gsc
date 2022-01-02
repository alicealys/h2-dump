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
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_oilrig_global" );
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
    _ID42475::_ID34640( "start_underwater_checkpoint", ::_ID44173 );
    _ID42475::_ID34640( "start_surface_checkpoint", ::_ID46769 );
    _ID42475::_ID34640( "start_rig_checkpoint", ::_ID47079 );
    _ID42475::_ID34640( "start_deck1_checkpoint", ::_ID48044 );
    _ID42475::_ID34640( "start_heli_checkpoint", ::_ID51445 );
    _ID42475::_ID34640( "start_deck2_checkpoint", ::_ID54376 );
    _ID42475::_ID34640( "start_deck3_checkpoint", ::_ID44867 );
    _ID42475::_ID34640( "start_escape_checkpoint", ::_ID43800 );
    _ID42475::_ID34640( "start_fade_out_level", ::_ID52274 );
    _ID42475::_ID34640( "aud_start_mix_stealth_kill", ::_ID51348 );
    _ID42475::_ID34640( "aud_stop_mix_stealth_kill", ::_ID47564 );
    _ID42475::_ID34640( "aud_start_stealth_kill_amb_transition", ::aud_start_stealth_kill_amb_transition );
    _ID42475::_ID34640( "aud_start_mix_lbs_reveal", ::aud_start_mix_lbs_reveal );
    _ID42475::_ID34640( "aud_start_mix_room_clear", ::_ID48034 );
    _ID42475::_ID34640( "aud_stop_mix_room_clear", ::_ID43114 );
    _ID42475::_ID34640( "aud_start_mix_escape", ::_ID45539 );
    _ID42475::_ID34640( "aud_stop_mix_escape", ::_ID43282 );
    _ID42475::_ID34640( "aud_underwater_ambience", ::_ID47470 );
    _ID42475::_ID34640( "aud_start_player_inside_helicopter", ::_ID46154 );
    _ID42475::_ID34640( "aud_scn_oilrig_chopper_lz_flyby", ::aud_scn_oilrig_chopper_lz_flyby );
    _ID42475::_ID34640( "aud_scn_oilrig_lower_lbs", ::aud_scn_oilrig_lower_lbs );
    _ID42475::_ID34640( "aud_scn_oilrig_upper_lbs", ::aud_scn_oilrig_upper_lbs );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID44173( var_0 )
{
    _ID42474::_ID4669( "underwater_silo" );
}

_ID46769( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID47079( var_0 )
{
    _ID42474::_ID4669( "exterior_rig_intro" );
}

_ID48044( var_0 )
{
    _ID42474::_ID4669( "interior_metal_small" );
}

_ID51445( var_0 )
{
    _ID42474::_ID4669( "exterior_rig" );
}

_ID54376( var_0 )
{
    _ID42474::_ID4669( "exterior_rig" );
}

_ID44867( var_0 )
{
    _ID42474::_ID4669( "exterior_rig" );
}

_ID43800( var_0 )
{
    _ID42474::_ID4669( "interior_metal_open" );
}

_ID52274()
{
    _ID42465::_ID23797( "fade_out_level_mix" );
}

_ID51348()
{
    _ID42465::_ID23797( "mix_stealth_kill" );
}

_ID47564()
{
    _ID42465::_ID23801( "mix_stealth_kill" );
}

aud_start_mix_lbs_reveal()
{
    _ID42465::_ID23797( "mix_lbs_reveal" );
    _ID42237::_ID14415( "heli_deck2_shot_down", "derrick_room_getting_breached" );
    _ID42465::_ID23801( "mix_lbs_reveal" );
}

_ID45539()
{
    _ID42465::_ID23797( "mix_escape" );
}

_ID43282()
{
    _ID42465::_ID23801( "mix_escape" );
}

_ID48034()
{
    _ID42465::_ID23797( "mix_room_clear" );
}

_ID43114()
{
    _ID42465::_ID23801( "mix_room_clear" );
}

aud_start_stealth_kill_amb_transition()
{
    var_0 = getent( "underwater_transition_zone", "targetname" );
    var_0 _ID42237::_ID38864();
    wait 6.2;
    _ID42474::_ID4669( "exterior_rig_intro" );
}

vehicle_turn_engine_off()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID45335( var_0 )
{
    _ID42474::_ID4669( "underwater" );
    var_0 playsound( "scn_oilrig_exit_sub_silo" );
}

_ID49708()
{
    var_0 = spawn( "script_origin", self.origin );
    var_0 linkto( self, "TAG_PROPELLER" );
    var_0 playloopsound( "scn_oilrig_diveboat_plr_layer2" );
    var_0 setvolume( 0, 0 );
    wait 0.5;
    var_0 setvolume( 1, 4 );
    self waittill( "stopped_moving" );
    var_0 setvolume( 0, 3 );
    wait 3.0;
    var_0 stopsounds();
}

_ID47470()
{
    level.player _ID42407::_ID27079( "elm_oilrig_fish" );
    level.player _ID42407::_ID27079( "elm_oilrig_whales" );
    wait 1.0;
    level.player _ID42407::_ID27079( "elm_oilrig_fish" );
    wait 1.0;
    level.player _ID42407::_ID27079( "elm_oilrig_whales" );
}

_ID48248( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID42465::_ID23797( "breach_initiated_mix" );
    level waittill( "slowmo_go" );
    _ID52625( var_0, var_1, var_2, var_4 );
    level waittill( "slowmo_breach_ending" );
    _ID52851( var_0, var_2, var_3, var_5 );
    _ID42465::_ID23801( "breach_initiated_mix" );
}

_ID52625( var_0, var_1, var_2, var_3 )
{
    thread _ID42407::_ID4917( "axis" );
    level.player _meth_8521();
    _ID42476::_ID34518( "slomo" );
    level.player playsound( var_1 );
    level.player thread _ID42237::_ID27000( var_2, undefined, 1.0, 1.0 );
    _ID42465::_ID23797( var_0 );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( var_3, 0.5 );
    _ID42474::_ID4662( 1 );
    _ID42469::_ID30454( "slowmo" );
}

_ID52851( var_0, var_1, var_2, var_3 )
{
    _ID42465::_ID23801( var_0 );
    level.player _meth_8522();
    _ID42476::_ID34512( "slomo" );
    level.player _ID42237::_ID36516( var_1 );
    level.player playsound( var_2 );
    _ID42490::_ID34527( 1.0 );
    _ID42407::_ID10226( 1.0, _ID42490::_ID34501 );
    _ID42407::_ID10226( 1.05, _ID42474::_ID4655, 0 );
    _ID42474::_ID4662( 0 );
    _ID42469::_ID30454( var_3 );
    thread _ID42407::_ID4918( "axis" );
}

_ID54685()
{
    _ID48248( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "slomo_breach_filter", "interior_stone" );
}

_ID52265()
{
    _ID48248( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "slomo_breach_filter", "interior_stone" );
}

_ID46492()
{
    _ID48248( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "slomo_breach_filter", "interior_metal_med" );
}

_ID48358( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_room2a_takedown_soldier" );
}

_ID46817()
{
    vehicle_turn_engine_off();
    _ID42237::_ID14413( "player_approaching_derrick_building_exit" );
    thread _ID42407::_ID27079( "scn_player_heli_landing" );
    self waittill( "touch_down" );
    thread _ID42407::_ID27001( "scn_player_heli_idle", undefined, 1, 1, 0.8, 0.8 );
}

_ID46154()
{
    level.player thread _ID42407::_ID27079( "scn_player_mount_escape_heli" );
    wait 0.5;
    _ID42474::_ID4669( "helicopter" );
    _ID42237::_ID14413( "littlebird_escape_lifted_off" );
    _ID42465::_ID23797( "mix_player_heli_liftoff" );
    level.player thread _ID42407::_ID27079( "scn_player_heli_liftoff" );
}

heli_patrol_02_flyby()
{
    self endon( "death" );
    thread _ID42407::_ID27001( "scn_heli_patrol_02_flyby_01", undefined, 1, 1, 0.05, 0.5 );
    self waittill( "damage" );
    thread _ID42407::_ID27080( "scn_heli_patrol_02_spot_plr", undefined, 1 );
    _ID42237::_ID36516( "scn_heli_patrol_02_flyby_01" );
}

player_moves_on_water_surface()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = "scn_player_move_surface_in";
    var_2 = "scn_player_move_surface_lp";
    var_3 = "scn_player_move_surface_out";
    var_4 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_4 linkto( self );
    var_5 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_5 linkto( self );
    var_6 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_6 linkto( self );
    var_5 setvolume( 0 );
    var_5 playloopsound( var_2 );
    var_7 = 0;

    while ( !_ID42237::_ID14385( "player_starting_stealth_kill" ) )
    {
        var_8 = self getnormalizedmovement();
        var_9 = max( abs( var_8[0] ), abs( var_8[1] ) );

        if ( var_9 <= 0.1 )
        {
            if ( var_7 )
            {
                var_4 setvolume( 0, 0.5 );
                var_6 setvolume( 1, 0 );
                var_6 playsound( var_3 );
                var_7 = 0;
            }

            var_5 setvolume( 0, 0.1 );
        }
        else
        {
            if ( !var_7 )
            {
                var_6 setvolume( 0, 0.5 );
                var_4 setvolume( 1, 0 );
                var_4 playsound( var_1 );
                var_7 = 1;
            }

            var_5 setvolume( var_9, 0.1 );
        }

        wait 0.1;
    }

    var_5 setvolume( 0, 0.5 );
    wait 0.5;
    var_4 playrumbleonentity();
    var_5 stopsounds( var_2 );
    var_6 playrumbleonentity();
    wait 0.1;
    var_4 delete();
    var_5 delete();
    var_6 delete();
}

aud_scn_oilrig_chopper_lz_flyby( var_0 )
{
    var_0 vehicle_turn_engine_off();
    var_0 thread _ID42407::_ID27079( "scn_oilrig_chopper_lz_flyby" );
    var_0 waittill( "reached_dynamic_path_end" );
    var_0 thread _ID42237::_ID27000( "scn_oilrig_chopper_lz_lp" );
}

aud_scn_oilrig_lower_lbs( var_0 )
{
    var_0 vehicle_turn_engine_off();
    var_0 thread _ID42407::_ID27079( "scn_oilrig_lower_lbs" );
}

aud_scn_oilrig_upper_lbs( var_0 )
{
    var_0 vehicle_turn_engine_off();
    var_0 thread _ID42407::_ID27079( "scn_oilrig_upper_lbs" );
    wait 2.0;
    _ID42465::_ID23797( "mix_finale_lbs_approach" );
}

heli_deck2_audio()
{
    self endon( "death" );
    vehicle_turn_engine_off();
    self.scripted_move_sfx = 1;
    thread _ID42407::_ID27079( "scn_oilrig_chopper_appear" );
    var_0 = 0;
    var_1 = spawn( "script_origin", self.origin );
    var_1 linkto( self );
    var_2 = spawn( "script_origin", self.origin );
    var_2 linkto( self );
    thread heli_deck2_handle_death( var_1 );
    thread heli_deck2_handle_death( var_2 );
    var_2 setvolume( 0, 0 );
    var_2 setpitch( 1, 0 );
    var_2 playloopsound( "scn_heli_deck_2_loop" );
    var_2 setvolume( 1, 0.8 );

    for (;;)
    {
        self waittill( "start_heli_scripted_move_sfx" );
        var_1 setvolume( 1, 0 );
        var_1 playsound( "scn_heli_deck_2_moving" );
        var_2 setpitch( 1.1, 0.8 );
        self waittill( "stop_heli_scripted_move_sfx" );
        var_1 setvolume( 0, 0.8 );
        var_2 setpitch( 1, 0.8 );
    }
}

heli_deck2_handle_death( var_0 )
{
    self waittill( "death" );
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

breach_2_fire_sounds()
{
    var_0 = getentarray( "breach2_fire_ent", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _ID42237::_ID27000( "emt_fire_metal_small", undefined, 1, 1 );

    wait 53;

    foreach ( var_2 in var_0 )
        var_2 thread _ID42237::_ID36516( "emt_fire_metal_small" );
}

aud_handle_alarm()
{
    var_0 = getent( "origin_alarm", "targetname" );
    var_1 = 7;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        var_0 playsound( "emt_oilrig_alarm_alert_oneshot" );
        wait 3.0;
    }
}

deck_1_disable_enemy_battlechatter()
{
    thread _ID42407::_ID4917( "axis" );
    level waittill( "slomo_breach_over" );
    _ID42407::_ID4918( "axis" );
}

aud_zodiac_hostage_extraction()
{
    thread _ID42407::_ID27079( "scn_zodiac_hostage_extraction" );
}
