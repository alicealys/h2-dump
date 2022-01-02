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
    thread _ID51750();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_contingency_global" );
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
    _ID42475::_ID34640( "start_start_checkpoint", ::_ID54719 );
    _ID42475::_ID34640( "start_slide_checkpoint", ::_ID46911 );
    _ID42475::_ID34640( "start_woods_checkpoint", ::_ID51257 );
    _ID42475::_ID34640( "start_midwoods_checkpoint", ::_ID49833 );
    _ID42475::_ID34640( "start_ridge_checkpoint", ::_ID51911 );
    _ID42475::_ID34640( "start_base_checkpoint", ::_ID50851 );
    _ID42475::_ID34640( "start_defend_sub_checkpoint", ::_ID51131 );
    _ID42475::_ID34640( "aud_start_mix_price_arriving", ::_ID44844 );
    _ID42475::_ID34640( "aud_stop_mix_price_arriving", ::_ID44579 );
    _ID42475::_ID34640( "aud_start_mix_jeep_convoy", ::_ID47994 );
    _ID42475::_ID34640( "aud_stop_mix_jeep_convoy", ::_ID45111 );
    _ID42475::_ID34640( "aud_start_mix_2nd_heli_flyby", ::_ID53777 );
    _ID42475::_ID34640( "aud_stop_mix_2nd_heli_flyby", ::_ID49337 );
    _ID42475::_ID34640( "aud_start_mix_tank_attacks", ::_ID44351 );
    _ID42475::_ID34640( "aud_stop_mix_tank_attacks", ::_ID45222 );
    _ID42475::_ID34640( "aud_start_mix_missile_uav", ::_ID49532 );
    _ID42475::_ID34640( "aud_stop_mix_missile_uav", ::_ID53364 );
    _ID42475::_ID34640( "aud_start_mix_sam_explosion", ::_ID50683 );
    _ID42475::_ID34640( "aud_stop_mix_sam_explosion", ::_ID48414 );
    _ID42475::_ID34640( "aud_start_mix_silo_doors", ::_ID49453 );
    _ID42475::_ID34640( "aud_stop_mix_silo_doors", ::_ID49671 );
    _ID42475::_ID34640( "aud_start_mix_nuclear_launch", ::_ID48799 );
    _ID42475::_ID34640( "aud_stop_mix_nuclear_launch", ::_ID45470 );
    _ID42475::_ID34640( "aud_start_heli_flyby_echo", ::_ID44327 );
    _ID42475::_ID34640( "scn_cargo_heli_01", ::_ID48359 );
    _ID42475::_ID34640( "scn_cargo_heli_02", ::_ID51526 );
    _ID42475::_ID34640( "scn_cargo_heli_03", ::_ID43669 );
    _ID42475::_ID34640( "aud_base_truck_linear_pass_01", ::_ID54565 );
    _ID42475::_ID34640( "scn_start_hind_arrival_01", ::_ID47646 );
    _ID42475::_ID34640( "aud_defend_sub_jeep", ::aud_defend_sub_jeep );
    _ID42475::_ID34640( "player_predator_use", ::_ID51106 );
    _ID42475::_ID34640( "player_predator_end", ::_ID50400 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID54719( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID46911( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID51257( var_0 )
{
    _ID42474::_ID4669( "exterior_forest" );
}

_ID49833( var_0 )
{
    _ID42474::_ID4669( "exterior_forest" );
}

_ID51911( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID50851( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID51131( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID44844()
{
    _ID42465::_ID23797( "mix_price_arriving" );
}

_ID44579()
{
    _ID42465::_ID23801( "mix_price_arriving" );
}

_ID47994()
{
    _ID42465::_ID23797( "mix_jeep_convoy" );
}

_ID45111()
{
    _ID42237::_ID14415( "last_truck_left", "player_is_crossing_bridge", "all_bridge_guys_dead", "_stealth_spotted", "someone_became_alert" );
    _ID42465::_ID23801( "mix_jeep_convoy" );
}

_ID53777()
{
    _ID42465::_ID23797( "mix_2nd_heli_flyby" );
}

_ID49337( var_0 )
{
    _ID42465::_ID23801( "mix_2nd_heli_flyby" );
}

_ID44351()
{
    _ID42465::_ID23797( "mix_tank_attacks" );
}

_ID45222()
{
    _ID42465::_ID23801( "mix_tank_attacks" );
}

_ID49532()
{
    _ID42465::_ID23797( "mix_missile_uav" );
}

_ID53364()
{
    wait 4.5;
    _ID42465::_ID23801( "mix_missile_uav" );
}

_ID50683()
{
    _ID42465::_ID23797( "mix_sam_explosion" );
}

_ID48414()
{
    _ID42465::_ID23801( "mix_sam_explosion" );
}

_ID49453()
{
    _ID42465::_ID23797( "mix_silo_doors" );
}

_ID49671()
{
    _ID42465::_ID23801( "mix_silo_doors" );
}

_ID48799()
{
    _ID42465::_ID23797( "mix_nuclear_launch" );
}

_ID45470()
{
    _ID42465::_ID23801( "mix_nuclear_launch" );
}

_ID51750()
{
    _ID42237::_ID14413( "introscreen_activate" );
    _ID42465::_ID23797( "black_screen_intro_mix" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    wait 0.8;
    _ID42465::_ID23801( "black_screen_intro_mix" );
}

_ID44327()
{
    var_0 = getentarray( "cargo_choppers1_reverb", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2 ) && isdefined( var_2._ID43356 ) )
            var_2 playsound( var_2._ID43356 );
    }
}

_ID47705()
{
    var_0 = _ID46546();
    _ID42237::_ID14413( "truck_guys_alerted" );
    _ID42237::_ID14413( "convoy_half_way_across_bridge" );
    thread _ID51982( var_0 );
    thread _ID51875();
}

_ID46546()
{
    var_0 = _ID49451( "veh_cont_jeep_wheel_lf", self, "tag_wheel_front_left" );
    var_1 = _ID49451( "veh_cont_jeep_wheel_rf", self, "tag_wheel_front_right" );
    var_2 = _ID49451( "veh_cont_jeep_wheel_lb", self, "tag_wheel_back_left" );
    var_3 = _ID49451( "veh_cont_jeep_wheel_rb", self, "tag_wheel_back_right" );
    var_4 = [ var_0, var_2, var_1, var_3 ];
    return var_4;
}

_ID51982( var_0 )
{
    thread _ID42407::_ID27080( "veh_cont_jeep_brake", "tag_body" );

    foreach ( var_2 in var_0 )
        var_2 setvolume( 0, 1 );

    wait 1.5;

    foreach ( var_2 in var_0 )
        var_2 stopsounds();
}

_ID51875()
{
    self vehicle_turnengineoff();
    thread _ID42407::_ID27001( "veh_uaz_idle_low", "tag_body" );
}

_ID44372()
{
    var_0 = self[randomint( self.size )];
    var_0 thread _ID42237::_ID27000( "contigency_uaz_music" );
    _ID42237::_ID14413( "truck_guys_alerted" );
    var_0 _ID42237::_ID36516( "contigency_uaz_music" );
}

_ID49451( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_3 linkto( var_1, var_2, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_3 playloopsound( var_0 );
    return var_3;
}

_ID54184()
{
    self._ID31138 = 0;
    self vehicle_turnengineon();
}

_ID45008()
{
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID51762()
{
    _ID45008();
    thread _ID42407::_ID27081( "scn_cont_btr_slider_arrival" );
}

_ID47646( var_0 )
{
    var_0 _ID45008();
    wait 0.5;
    var_0 thread _ID42407::_ID27081( "scn_cont_hind_arrival_01" );
    wait 6.5;
    var_0 thread _ID42407::_ID27001( "scn_cont_hind_fly_loop_01", undefined, 1, 1, 0.8, 0.8 );
}

_ID48842()
{
    var_0 = getent( "snd_dog_barking", "targetname" );
    var_1 = getent( "snd_dog_barking_origin", "targetname" );
    var_0 waittill( "trigger",  var_2  );
    var_1 _ID42407::_ID27079( "scn_dog_bark_dist_aust_shepherd" );
}

_ID48359( var_0 )
{
    var_0 _ID45008();
    var_0 thread _ID42407::_ID27081( "scn_cargo_heli_01" );
}

_ID51526( var_0 )
{
    var_0 _ID45008();
    var_0 thread _ID42407::_ID27081( "scn_cargo_heli_02" );
}

_ID43669( var_0 )
{
    var_0 _ID45008();
    var_0 thread _ID42407::_ID27081( "scn_cargo_heli_03" );
}

_ID53857()
{
    _ID45008();
    _ID42407::_ID27079( "scn_con_base_heli_lift_off" );
    thread _ID42237::_ID27000( "scn_con_base_heli_fly_lp" );
}

_ID54565( var_0 )
{
    var_0 _ID45008();
    var_0 playsound( "scn_con_base_truck_linear_pass_01" );
    var_0 waittill( "unloading" );
    var_0 playrumbleonentity();
    var_0 _ID42407::_ID27079( "scn_con_base_truck_brake" );
    var_0 _ID54184();
}

_ID51106()
{
    level.player thread _ID42407::_ID27001( "predator_drone_ambient_lp", undefined, 1, 1, 0.5, 0.5 );
    _ID42465::_ID23797( "predator_missile_mix" );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "predator_missile_filter", 0.5 );
    enablecontext( "predator_missile" );
}

_ID50400()
{
    _ID42237::_ID36516( "predator_drone_ambient_lp" );
    _ID42465::_ID23801( "predator_missile_mix" );
    _ID42490::_ID34527( 0.5 );
    _ID42474::_ID4655( 0 );
    disablecontext();
}

aud_price_open_sub_hatch( var_0 )
{
    _ID42237::_ID27077( "scn_con_price_open_sub_hatch", level._ID18258.origin + ( -40, 3, 35 ) );
}

aud_defend_sub_jeep( var_0 )
{
    var_0 _ID45008();
    var_0 playsound( "scn_cont_defend_sub_jeep_oneshot" );
    var_0 waittill( "unloading" );
    var_0 playrumbleonentity();
    var_0 thread _ID42407::_ID27080( "veh_cont_jeep_brake", "tag_body" );
    var_0 _ID54184();
}
