// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main()
{
    _ID46912();
    _ID46888();
    script_model_animation();
    _ID10742();
    c130_anims();
    _ID44253();
    level._ID30895["generic"]["prone_2_stand"] = %prone_2_stand;
    level._ID30895["rook"]["boneyard_driver_death"] = %h2_boneyard_driver_death;
    level._ID30895["rook"]["boneyard_driver_death_pushed"] = %h2_boneyard_driver_death_pushed;
    level._ID30895["rook"]["jeep_ride_driver"] = %h2_boneyard_jeep_ride_driver;
    level._ID30895["rook"]["jeep_evac_driver"] = %h2_boneyard_jeep_evac_driver;
    level._ID30895["price"]["boneyard_jeep_ride_price"] = %h2_boneyard_jeep_ride_price;
    _ID42259::_ID2058( "price", "pri_dialog_01", ::play_price_jeep_ride_vo, "boneyard_jeep_ride_price", "byard_pri_thedrivers" );
    _ID42259::_ID2058( "price", "pri_dialog_02", ::play_price_jeep_ride_vo, "boneyard_jeep_ride_price", "byard_pri_hangon" );
    _ID42259::_ID2058( "price", "pri_dialog_03", ::play_price_jeep_ride_vo, "boneyard_jeep_ride_price", "byard_pri_behindus" );
    _ID42259::_ID2058( "price", "pri_dialog_04", ::play_price_jeep_ride_vo, "boneyard_jeep_ride_price", "byard_pri_rightside" );
    _ID42259::_ID2058( "price", "pri_dialog_05", ::play_price_jeep_ride_vo, "boneyard_jeep_ride_price", "byard_pri_holdon" );
    _ID42259::_ID2058( "price", "pri_dialog_06", ::play_price_jeep_ride_vo, "boneyard_jeep_ride_price", "byard_pri_droptheramp" );
    _ID42259::_ID2058( "price", "pri_dialog_07", ::play_price_jeep_ride_vo, "boneyard_jeep_ride_price", "byard_pri_vehiclesat12" );
    _ID42259::_ID2058( "price", "pri_dialog_08", ::play_price_jeep_ride_vo, "boneyard_jeep_ride_price", "byard_pri_takewheel" );
    _ID42259::_ID2058( "price", "dialog2", ::playvoprice, "boneyard_jeep_ride_price" );
}

_ID10742()
{
    level._ID30908["byard_pri_wipeoutus"] = "byard_pri_wipeoutus";
    level._ID30908["byard_pri_backupplan"] = "byard_pri_backupplan";
    level._ID30908["byard_pri_lzishot"] = "byard_pri_lzishot";
    level._ID30908["byard_pri_sharpish"] = "byard_pri_sharpish";
    level._ID30908["byard_pri_gettransport"] = "byard_pri_gettransport";
    level._ID30908["byard_pri_headnorth"] = "byard_pri_headnorth";
    level._ID30908["byard_pri_radiotraffic"] = "byard_pri_radiotraffic";
    level._ID30908["byard_pri_contactmakarov"] = "byard_pri_contactmakarov";
    level._ID30908["byard_pri_warhero"] = "byard_pri_warhero";
    level._ID30908["byard_pri_takecareofrest"] = "byard_pri_takecareofrest";
    level._ID30908["byard_pri_onthischannel"] = "byard_pri_onthischannel";
    level._ID30908["byard_pri_lastaweek"] = "byard_pri_lastaweek";
    level._ID30908["byard_pri_myfriend"] = "byard_pri_myfriend";
    level._ID30908["byard_pri_myregards"] = "byard_pri_myregards";
    level._ID30908["byard_pri_whereareyou"] = "byard_pri_whereareyou";
    level._ID30908["byard_pri_landtheplane"] = "byard_pri_landtheplane";
    level._ID30908["byard_pri_gettoplane"] = "byard_pri_gettoplane";
    level._ID30908["byard_pri_muchtime"] = "byard_pri_muchtime";
    level._ID30908["byard_pri_foudntransport"] = "byard_pri_foudntransport";
    level._ID30909["price"]["byard_pri_getinjeep"] = "byard_pri_getinjeep";
    level._ID30909["price"]["byard_pri_contact12"] = "byard_pri_contact12";
    level._ID30909["price"]["byard_pri_contactahead"] = "byard_pri_contactahead";
    level._ID30909["price"]["byard_pri_behindus"] = "byard_pri_behindus";
    level._ID30909["price"]["byard_pri_onour6"] = "byard_pri_onour6";
    level._ID30909["price"]["byard_pri_totheright"] = "byard_pri_totheright";
    level._ID30909["price"]["byard_pri_rightside"] = "byard_pri_rightside";
    level._ID30909["price"]["byard_pri_totheleft"] = "byard_pri_totheleft";
    level._ID30909["price"]["byard_pri_ontheleft"] = "byard_pri_ontheleft";
    level._ID30909["price"]["byard_pri_vehiclesat12"] = "byard_pri_vehiclesat12";
    level._ID30909["price"]["byard_pri_vehicleson6"] = "byard_pri_vehicleson6";
    level._ID30909["price"]["byard_pri_thedrivers"] = "byard_pri_thedrivers";
    level._ID30909["price"]["byard_pri_hangon"] = "byard_pri_hangon";
    level._ID30909["price"]["byard_pri_holdon"] = "byard_pri_holdon";
    level._ID30909["price"]["byard_pri_takewheel"] = "byard_pri_takewheel";
    level._ID30909["price"]["byard_pri_droptheramp"] = "byard_pri_droptheramp";
    level._ID30901["price"]["byard_pri_droptheramp"] = %byard_pri_droptheramp;
    level._ID30909["price"]["byard_pri_aimforramp"] = "byard_pri_aimforramp";
    level._ID30909["price"]["byard_pri_weareleaving"] = "byard_pri_weareleaving";
    level._ID30908["byard_mkv_neitherwillyou"] = "byard_mkv_neitherwillyou";
    level._ID30908["byard_mkv_cutsbothways"] = "byard_mkv_cutsbothways";
    level._ID30908["byard_mkv_hotelbravo"] = "byard_mkv_hotelbravo";
    level._ID30908["byard_nkl_ontheway"] = "byard_nkl_ontheway";
    level._ID30908["byard_nkl_sandstorms"] = "byard_nkl_sandstorms";
    level._ID30908["byard_nkl_unsafetoland"] = "byard_nkl_unsafetoland";
    level._ID30908["byard_nkl_paidenough"] = "byard_nkl_paidenough";
    level._ID30908["byard_nkl_oneminute"] = "byard_nkl_oneminute";
}

_ID44253()
{
    _ID42411::_ID52468( "script_vehicle_uaz_open_destructible", ::_ID48336, ::_ID44361 );
    _ID42411::_ID48311( "script_vehicle_uaz_open_destructible", maps\boneyard_code::_ID53245 );
    _ID42411::_ID52468( "script_vehicle_pickup_roobars_physics", ::_ID47022, ::_ID54151 );
    _ID42411::_ID52468( "script_vehicle_suburban_technical", ::_ID44209, _ID54270::_ID32509 );
    _ID42411::_ID52468( "script_vehicle_suburban", ::_ID53879, _ID44504::_ID32509 );
}

_ID47022()
{
    var_0 = _ID48763::_ID32550();
    var_0[1]._ID34225 = "tag_guy3";
    var_0[3]._ID34225 = "tag_guy2";
    var_0[4]._ID34225 = "tag_passenger";
    var_0[4]._ID19302 = %technical_passenger_idle;
    var_0[4]._ID16491 = %pickup_passenger_climb_out;
    return var_0;
}

_ID44209()
{
    var_0 = _ID54270::_ID32550();
    var_0 = _ID48748( var_0 );
    return var_0;
}

_ID53879()
{
    var_0 = _ID44504::_ID32550();
    var_0 = _ID48748( var_0 );
    var_0[1]._ID264 = %uaz_rear_driver_death;
    var_0[2]._ID264 = %uaz_rear_driver_death;
    var_0[3]._ID264 = %uaz_rear_driver_death;
    return var_0;
}

_ID48748( var_0 )
{
    var_0[1]._ID53367[0] = %uaz_rguy_scan_side_v1;
    var_0[1]._ID53367[1] = %uaz_rguy_scan_side_v1;
    var_0[1]._ID43992[0] = 500;
    var_0[1]._ID43992[1] = 500;
    var_0[2]._ID53367[0] = %uaz_rguy_scan_side_v1;
    var_0[2]._ID53367[1] = %uaz_rguy_scan_side_v1;
    var_0[2]._ID43992[0] = 500;
    var_0[2]._ID43992[1] = 500;
    var_0[3]._ID53367[0] = %uaz_lguy_fire_side_v1;
    var_0[3]._ID53367[1] = %uaz_lguy_fire_side_v2;
    var_0[3]._ID43992[0] = 500;
    var_0[3]._ID43992[1] = 500;
    return var_0;
}

_ID48336()
{
    var_0 = _ID51074::_ID32550();
    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[2]._ID34225 = "tag_guy0";
    var_0[3]._ID34225 = "tag_guy1";
    var_0[4]._ID34225 = "tag_guy2";
    var_0[5]._ID34225 = "tag_guy3";
    var_0[0]._ID19302 = %uaz_driver_idle;
    var_0[0]._ID16491 = %uaz_driver_exit_into_stand;
    var_0[2]._ID16491 = %uaz_driver_exit_into_run;
    var_0[0]._ID16341 = %uaz_driver_enter_from_huntedrun;
    var_0[2]._ID19302 = [];
    var_0[2]._ID19302[0] = %uaz_lguy_idle_hide;
    var_0[2]._ID19302[1] = %uaz_lguy_idle_react;
    var_0[2]._ID19329[0] = 1000;
    var_0[2]._ID19329[1] = 100;
    var_0[2]._ID54231 = %uaz_lguy_trans_hide2back;
    var_0[2]._ID49218 = %uaz_lguy_fire_back;
    var_0[2]._ID53738 = %uaz_lguy_trans_back2hide;
    var_0[2]._ID47438 = %uaz_lguy_fire_hide_forward;
    var_0[2]._ID53367[0] = %uaz_lguy_fire_side_v1;
    var_0[2]._ID53367[1] = %uaz_lguy_fire_side_v2;
    var_0[2]._ID43992[0] = 500;
    var_0[2]._ID43992[1] = 500;
    var_0[2]._ID51378[0] = %uaz_lguy_standfire_side_v3;
    var_0[2]._ID51378[1] = %uaz_lguy_standfire_side_v4;
    var_0[2]._ID45828[0] = 100;
    var_0[2]._ID45828[1] = 100;
    var_0[2]._ID45775[0] = %uaz_lguy_fire_hide_back_v1;
    var_0[2]._ID45775[1] = %uaz_lguy_fire_hide_back_v2;
    var_0[2]._ID48666[0] = 500;
    var_0[2]._ID48666[1] = 500;
    var_0[2]._ID43178 = %uaz_lguy_idle_react;
    var_0[0]._ID12217 = %uaz_driver_duck;
    var_0[0]._ID39208 = %uaz_driver_turnright;
    var_0[0]._ID39182 = %uaz_driver_turnleft;
    var_0[0]._ID41722 = %uaz_driver_weave;
    return var_0;
}
#using_animtree("vehicles");

_ID44361( var_0 )
{
    var_0 = _ID51074::_ID32509( var_0 );
    var_0[0]._ID40167 = %uaz_steeringwheel_idle;
    var_0[0]._ID40129 = %uaz_steeringwheel_duck;
    var_0[0]._ID40287 = %uaz_steeringwheel_turnleft;
    var_0[0]._ID40288 = %uaz_steeringwheel_turnright;
    var_0[0]._ID40303 = %uaz_steeringwheel_weave;
    var_0[2]._ID40152 = %uaz_rear_driver_exit_into_run_door;
    var_0[3]._ID40152 = %uaz_passenger2_exit_into_run_door;
    return var_0;
}

_ID54151( var_0 )
{
    var_0[0]._ID40152 = %door_pickup_driver_climb_out;
    var_0[1]._ID40152 = %door_pickup_passenger_climb_out;
    var_0[2]._ID40152 = %door_pickup_passenger_rr_climb_out;
    var_0[3]._ID40152 = %door_pickup_passenger_rl_climb_out;
    var_0[4]._ID40152 = %door_pickup_passenger_climb_out;
    var_0[0]._ID40153 = 0;
    var_0[1]._ID40153 = 0;
    var_0[2]._ID40153 = 0;
    var_0[3]._ID40153 = 0;
    var_0[4]._ID40153 = 0;
    var_0[0]._ID40147 = %door_pickup_driver_climb_in;
    var_0[1]._ID40147 = %door_pickup_passenger_climb_in;
    return var_0;
}

_ID46912()
{
    level._ID30895["c130_propeller"]["rotate"][0] = %rotate_x_r;
    level._ID30900["c130_propeller"] = #animtree;
    level._ID30895["generic"]["boneyard_jeep_evac"] = %boneyard_jeep_evac;
    level._ID30895["generic"]["boneyard_UAZ_door"] = %boneyard_uaz_door;
    level._ID30895["generic"]["steer_straight"] = %h2_boneyard_uaz_steer_straight;
    level._ID30895["generic"]["steer_left"] = %h2_boneyard_uaz_steer_left;
    level._ID30895["generic"]["steer_right"] = %h2_boneyard_uaz_steer_right;
    level._ID30895["generic"]["jeep_ride_vehicle"] = %h2_boneyard_jeep_ride_vehicle;
    level._ID30895["generic"]["jeep_evac_vehicle"] = %h2_boneyard_jeep_evac_vehicle;
    level._ID30895["generic"]["old_steering"] = %uaz_steeringwheel_idle;
}

c130_anims()
{
    level._ID30900["nikolai"] = #animtree;
    level._ID30904["nikolai"] = "body_hero_nikolai";
    level._ID30895["nikolai"]["nikolai_idle"][0] = %cobra_copilot_idle;
}
#using_animtree("player");

_ID46888()
{
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewhands_player_marines";
    level._ID30895["player_rig"]["boneyard_uaz_sit"] = %boneyard_player_uaz_sit;
    level._ID30895["player_rig"]["boneyard_uaz_stand"] = %boneyard_player_uaz_stand;
    level._ID30895["player_rig"]["boneyard_uaz_mount"] = %boneyard_player_enter_uaz;
    level._ID30895["player_rig"]["boneyard_player_evac"] = %boneyard_player_evac;
    level._ID30895["player_rig"]["grab_wheel"] = %h2_boneyard_player_grab_wheel;
    level._ID30895["player_rig"]["steer_straight"] = %h2_boneyard_player_steer_straight;
    level._ID30895["player_rig"]["steer_left"] = %h2_boneyard_player_steer_left;
    level._ID30895["player_rig"]["steer_right"] = %h2_boneyard_player_steer_right;
    level._ID30895["player_rig"]["jeep_evac"] = %h2_boneyard_jeep_evac;
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_sniper";
    level._ID30895["worldbody"]["jeep_evac"] = %h2_boneyard_jeep_evac;
    level._ID30900["worldbody"] = #animtree;
    level._ID30895["worldbody"]["slide_in"] = %h2_cliffhanger_slide_in;
    level._ID30895["worldbody"]["slide_loop"][0] = %h2_cliffhanger_slide_idle;
    level._ID30895["worldbody"]["slide_out"] = %h2_cliffhanger_slide_out;
    level._ID30895["worldbody"]["slide_back_loop"][0] = %h2_cliffhanger_slide_back;
    level._ID30895["worldbody"]["slide_back_in"] = %h2_cliffhanger_slide_back_in;
    level._ID30895["worldbody"]["slide_back_out"] = %h2_cliffhanger_slide_back_out;
    level._ID30895["worldbody"]["slide_ar"] = %h2_cliffhanger_slide_turnl;
    level._ID30895["worldbody"]["slide_al"] = %h2_cliffhanger_slide_turnr;
    _ID42259::_ID2075( "player_rig", "boneyard_uaz_mount", "scn_plr_boneyard_uaz_mount" );
}
#using_animtree("script_model");

script_model_animation()
{
    level._ID30900["angel_flare_rig"] = #animtree;
    level._ID30904["angel_flare_rig"] = "angel_flare_rig";
    level._ID30895["angel_flare_rig"]["ac130_angel_flares"][0] = %ac130_angel_flares01;
    level._ID30895["angel_flare_rig"]["ac130_angel_flares"][1] = %ac130_angel_flares02;
    level._ID30895["angel_flare_rig"]["ac130_angel_flares"][2] = %ac130_angel_flares03;
    level._ID30900["airMask"] = #animtree;
    level._ID30895["airMask"]["idle"] = %h2_bya_air_mask_idle;
}

playvoprice( var_0 )
{
    var_0 thread _ID42407::_ID27080( "byard_pri_hangon", "j_head", 1 );
}

play_price_jeep_ride_vo( var_0, var_1 )
{
    if ( !_ID42237::_ID14385( "makarov_dialogue" ) )
        var_0 thread _ID42407::_ID27080( var_1, "j_head", 1 );
}
