// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID4940()
{
    level._ID4938 = [];
    _ID44256();
    _ID4952();
    level._ID4938 = undefined;
}

_ID4952()
{
    anim._ID4941 = [];
    var_0 = getentarray();
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3.classname ) && issubstr( var_3.classname, "trigger_multiple_bcs" ) )
            var_1[var_1.size] = var_3;
    }

    foreach ( var_3 in var_1 )
    {
        var_6 = _ID26267( level._ID4938[var_3.classname] );

        if ( var_6.size > 1 )
            var_6 = _ID42237::_ID3320( var_6 );

        var_3._ID22526 = var_6;
    }

    anim._ID4941 = var_1;
}

_ID26267( var_0 )
{
    var_1 = strtok( var_0, " " );
    return var_1;
}

_ID1850( var_0, var_1 )
{
    if ( isdefined( level._ID4938[var_0] ) )
    {
        var_2 = level._ID4938[var_0];
        var_3 = _ID26267( var_2 );
        var_4 = _ID26267( var_1 );

        foreach ( var_6 in var_4 )
        {
            foreach ( var_8 in var_3 )
            {
                if ( var_6 == var_8 )
                    return;
            }
        }

        var_2 += ( " " + var_1 );
        level._ID4938[var_0] = var_2;
        return;
    }

    level._ID4938[var_0] = var_1;
}

_ID44256()
{
    _ID1850( "trigger_multiple_bcs_us_building_1stfloor_window", "blg_1f_wndw callout_loc_wndw_1st_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_1stfloor_window", "blg_1f_wndw callout_loc_wndw_1st_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_1stfloor_window", "blg_1f_wndw callout_loc_wndw_1st_report" );
    _ID1850( "trigger_multiple_bcs_us_building_1stfloor_door", "blg_1f_door callout_loc_door_1st_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_1stfloor_door", "blg_1f_door callout_loc_door_1st_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_1stfloor_door", "blg_1f_door callout_loc_door_1st_report" );
    _ID1850( "trigger_multiple_bcs_us_building_1stfloor_yellow", "blg_1f_ylw" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_1stfloor_yellow", "blg_1f_ylw" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_1stfloor_yellow", "blg_1f_ylw" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_window_arched", "blg_1f_wndw_arch" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_window_arched", "blg_1f_wndw_arch" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_window_arched", "blg_1f_wndw_arch" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_balcony", "blg_2f_blc" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony", "blg_2f_blc" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony", "blg_2f_blc" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_balcony_brick", "blg_2f_blc_brk" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_brick", "blg_2f_blc_brk" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_brick", "blg_2f_blc_brk" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_balcony_south", "blg_2f_s" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_south", "blg_2f_s" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_south", "blg_2f_s" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_balcony_behindmetalsheets", "blg_2f_mtlshts" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_behindmetalsheets", "blg_2f_mtlshts" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_behindmetalsheets", "blg_2f_mtlshts" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_balcony_behindsandbags", "blg_2f_sndbgs" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_behindsandbags", "blg_2f_sndbgs" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_behindsandbags", "blg_2f_sndbgs" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_balcony_corrugatedmetal", "blg_2f_crgmtl" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_corrugatedmetal", "blg_2f_crgmtl" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_corrugatedmetal", "blg_2f_crgmtl" );
    _ID1850( "trigger_multiple_bcs_us_building_1story_grey", "blg_1s_gry" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_1story_grey", "blg_1s_gry" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_1story_grey", "blg_1s_gry" );
    _ID1850( "trigger_multiple_bcs_us_building_2story_roof", "blg_2s_rf" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2story_roof", "blg_2s_rf" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2story_roof", "blg_2s_rf" );
    _ID1850( "trigger_multiple_bcs_us_building_2story_roof_leftmost", "blg_2s_rf_left" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2story_roof_leftmost", "blg_2s_rf_left" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2story_roof_leftmost", "blg_2s_rf_left" );
    _ID1850( "trigger_multiple_bcs_us_building_2story_yellow_roof", "blg_2s_ylw_rf" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2story_yellow_roof", "blg_2s_ylw_rf" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2story_yellow_roof", "blg_2s_ylw_rf" );
    _ID1850( "trigger_multiple_bcs_us_building_2story_white_roof", "blg_2s_wht_rf" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2story_white_roof", "blg_2s_wht_rf" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2story_white_roof", "blg_2s_wht_rf" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_frontdoor", "blg_ins_door_frnt" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_frontdoor", "blg_ins_door_frnt" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_frontdoor", "blg_ins_door_frnt" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_backdoor", "blg_ins_door_bck" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_backdoor", "blg_ins_door_bck" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_backdoor", "blg_ins_door_bck" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_stairs", "blg_ins_stairs" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_stairs", "blg_ins_stairs" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_stairs", "blg_ins_stairs" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_bathroom", "blg_ins_bthrm" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_bathroom", "blg_ins_bthrm" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_bathroom", "blg_ins_bthrm" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_livingroom", "blg_ins_lvgrm" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_livingroom", "blg_ins_lvgrm" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_livingroom", "blg_ins_lvgrm" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_upstairs", "blg_ins_upstrs" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_upstairs", "blg_ins_upstrs" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_upstairs", "blg_ins_upstrs" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_garage", "blg_ins_grge" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_garage", "blg_ins_grge" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_garage", "blg_ins_grge" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_basement", "blg_ins_bsmt" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_basement", "blg_ins_bsmt" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_basement", "blg_ins_bsmt" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_balcony", "blg_ins_balc" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_balcony", "blg_ins_balc" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_balcony", "blg_ins_balc" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_cubicles", "blg_ins_cubes" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_cubicles", "blg_ins_cubes" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_cubicles", "blg_ins_cubes" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_office_eastcorner", "blg_ins_offce_cnr_e" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_inside_office_eastcorner", "blg_ins_offce_cnr_e" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_inside_office_eastcorner", "blg_ins_offce_cnr_e" );
    _ID1850( "trigger_multiple_bcs_us_building_shed", "blg_shed" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_shed", "blg_shed" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_shed", "blg_shed" );
    _ID1850( "trigger_multiple_bcs_us_building_roof", "blg_shed" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_roof", "blg_roof" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_roof", "blg_roof" );
    _ID1850( "trigger_multiple_bcs_us_landmark_desk_large", "lm_dsk_lg" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_desk_large", "lm_dsk_lg" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_desk_large", "lm_dsk_lg" );
    _ID1850( "trigger_multiple_bcs_us_landmark_desks_stacked", "lm_dsk_stck" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_desks_stacked", "lm_dsk_stck" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_desks_stacked", "lm_dsk_stck" );
    _ID1850( "trigger_multiple_bcs_us_landmark_ammocrates_stacked", "lm_amcrt_stck" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_ammocrates_stacked", "lm_amcrt_stck" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_ammocrates_stacked", "lm_amcrt_stck" );
    _ID1850( "trigger_multiple_bcs_us_landmark_crates_stacked", "lm_crt_stck" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_crates_stacked", "lm_crt_stck" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_crates_stacked", "lm_crt_stck" );
    _ID1850( "trigger_multiple_bcs_us_landmark_fuelcontainer", "lm_fuelcont" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_fuelcontainer", "lm_fuelcont" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_fuelcontainer", "lm_fuelcont" );
    _ID1850( "trigger_multiple_bcs_us_landmark_fuelcontainers", "lm_fuelconts" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_fuelcontainers", "lm_fuelconts" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_fuelcontainers", "lm_fuelconts" );
    _ID1850( "trigger_multiple_bcs_us_landmark_garbagecans", "lm_gbgcns" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_garbagecans", "lm_gbgcns" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_garbagecans", "lm_gbgcns" );
    _ID1850( "trigger_multiple_bcs_us_landmark_barrels", "lm_brls" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_barrels", "lm_brls" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_barrels", "lm_brls" );
    _ID1850( "trigger_multiple_bcs_us_landmark_dumpster", "lm_dpstr" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_dumpster", "lm_dpstr" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_dumpster", "lm_dpstr" );
    _ID1850( "trigger_multiple_bcs_us_landmark_driveway", "lm_drvwy" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_driveway", "lm_drvwy" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_driveway", "lm_drvwy" );
    _ID1850( "trigger_multiple_bcs_us_landmark_intersection_threeway", "lm_intsec_3w" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_intersection_threeway", "lm_intsec_3w" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_intersection_threeway", "lm_intsec_3w" );
    _ID1850( "trigger_multiple_bcs_us_landmark_phonebooth", "lm_phnbth" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_phonebooth", "lm_phnbth" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_phonebooth", "lm_phnbth" );
    _ID1850( "trigger_multiple_bcs_us_landmark_vendingmachine", "lm_vendmach" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_vendingmachine", "lm_vendmach" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_vendingmachine", "lm_vendmach" );
    _ID1850( "trigger_multiple_bcs_us_landmark_icemachine", "lm_icemach" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_icemachine", "lm_icemach" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_icemachine", "lm_icemach" );
    _ID1850( "trigger_multiple_bcs_us_landmark_newspaperbox", "lm_newsbox" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_newspaperbox", "lm_newsbox" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_newspaperbox", "lm_newsbox" );
    _ID1850( "trigger_multiple_bcs_us_landmark_sandbags", "lm_sndbgs" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_sandbags", "lm_sndbgs" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_sandbags", "lm_sndbgs" );
    _ID1850( "trigger_multiple_bcs_us_landmark_barricade_concrete", "lm_barr_conc" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_barricade_concrete", "lm_barr_conc" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_barricade_concrete", "lm_barr_conc" );
    _ID1850( "trigger_multiple_bcs_us_landmark_hescobarrier", "lm_hescobarr" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_hescobarrier", "lm_hescobarr" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_hescobarrier", "lm_hescobarr" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_latvee_parked", "vh_lat_pkd" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_latvee_parked", "vh_lat_pkd" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_latvee_parked", "vh_lat_pkd" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_latvee_parked_left", "vh_lat_pkd_l" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_latvee_parked_left", "vh_lat_pkd_l" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_latvee_parked_left", "vh_lat_pkd_l" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_latvee_parked_right", "vh_lat_pkd_r" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_latvee_parked_right", "vh_lat_pkd_r" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_latvee_parked_right", "vh_lat_pkd_r" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_taxi", "vh_car_taxi" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_taxi", "vh_car_taxi" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_car_taxi", "vh_car_taxi" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_black", "vh_car_blk" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_black", "vh_car_blk" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_car_black", "vh_car_blk" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_grey", "vh_car_gry" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_grey", "vh_car_gry" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_car_grey", "vh_car_gry" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_van_white", "vh_van_wht" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_van_white", "vh_van_wht" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_van_white", "vh_van_wht" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_hatchback_blue", "vh_car_hb_blu" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_hatchback_blue", "vh_car_hb_blu" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_car_hatchback_blue", "vh_car_hb_blu" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_hatchback_green", "vh_car_hb_grn" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_hatchback_green", "vh_car_hb_grn" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_car_hatchback_green", "vh_car_hb_grn" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_hatchback_black", "vh_car_hb_blk" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_hatchback_black", "vh_car_hb_blk" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_car_hatchback_black", "vh_car_hb_blk" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_stationwagon_yellow", "vh_car_sw_ylw" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_stationwagon_yellow", "vh_car_sw_ylw" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_car_stationwagon_yellow", "vh_car_sw_ylw" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_police", "vh_car_pol" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_police", "vh_car_pol" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_car_police", "vh_car_pol" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_police_destroyed", "vh_car_pol_dst" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_police_destroyed", "vh_car_pol_dst" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_car_police_destroyed", "vh_car_pol_dst" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_truck_white", "vh_trk_wht" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_truck_white", "vh_trk_wht" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_truck_white", "vh_trk_wht" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_truck_white_destroyed", "vh_trk_wht_dst" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_truck_white_destroyed", "vh_trk_wht_dst" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_truck_white_destroyed", "vh_trk_wht_dst" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_truck_black", "vh_trk_blk" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_truck_black", "vh_trk_blk" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_truck_black", "vh_trk_blk" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_truck_destroyed", "vh_trk_dst" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_truck_destroyed", "vh_trk_dst" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_truck_destroyed", "vh_trk_dst" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_suv_black", "vh_suv_blk" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_suv_black", "vh_suv_blk" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_suv_black", "vh_suv_blk" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_suv_black_overturned", "vh_suv_blk_ovrtnd" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_suv_black_overturned", "vh_suv_blk_ovrtnd" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_suv_black_overturned", "vh_suv_blk_ovrtnd" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_tankertruck", "vh_trk_tnk" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_tankertruck", "vh_trk_tnk" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_tankertruck", "vh_trk_tnk" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_uaz", "vh_uaz" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_uaz", "vh_uaz" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_uaz", "vh_uaz" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_bus", "vh_bus" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_bus", "vh_bus" );
    _ID1850( "trigger_multiple_bcs_tfstealth_vehicle_bus", "vh_bus" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_windows", "blg_2f_wndws" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_rappelling_leftside", "lm_rappel_left" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_stairs_down", "lm_stairs_down" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_stairs_up", "lm_stairs_up" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_stairs_yellow", "lm_stairs_ylw" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_catwalk_yellow_small", "lm_ctwlk_ylw_sml" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_catwalk_yellow_large", "lm_ctwlk_ylw_lg" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_catwalk_yellow_behindgirderstack", "lm_ctwlk_ylw_grdr" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_corrugatedmetal", "lm_corrgatedmtl" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_dumpster_red_long", "lm_dmpstr_red_lng" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_wirespool_large", "lm_wirespl_lg" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_lowwall_underbarbedwire", "lm_lowwall_bwire" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_celldoor_endofhall", "lm_celldr_endhl" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cell_left", "lm_cell_l" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cell_right", "lm_cell_r" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_pipes_behind", "lm_pipes_behind" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_showers_center", "lm_shwr_cntr" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_showers_SWside", "lm_shwr_sw" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_showers_NEside", "lm_shwr_ne" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_lockers_center", "lm_lckr_cntr" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_lockers_left", "lm_lckr_l" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_lockers_right", "lm_lckr_r" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_arches_above", "lm_wlkwy_abv_archs" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_shack_left", "blg_shack_left" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_icecreamstore_balcony", "blg_icecrm_balc" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_rooftops_ahead", "blg_rftop_ahead" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_market_alleyway_shotgunner", "lm_mrkt_alley_shgn" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_awning_green_marketcenter", "lm_awn_grn_mrktcntr" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_awning_redwhitestriped", "lm_awn_rdwhtstripe" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_vista_bigtree", "lm_vst_bigtree" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_lowwall_betweentwobldgs_right", "lm_wall_bt2bldgs_r" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_fence_white_atopridge", "lm_fence_wht_ridge" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_refrigerator", "lm_fridge" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_tirestack", "lm_tirestk" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_car_stationwagon_black", "vh_stwag_blk" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_haybale", "lm_haybale" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_logstack", "lm_logstack" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_tractor", "vh_tractor" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_wall_barbwire", "lm_wall_barbwire" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_stairs_behindstairs", "lm_stairs_behind" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_refuelingstation", "lm_fuelstation" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_hangar_num1", "blg_hngr_num1" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_hangar_num2", "blg_hngr_num2" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_cargocontainer", "lm_crgocont" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_cargocontainer_2stack", "lm_crgocont_2stack" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_cargocontainer_3stack", "lm_crgocont_3stack" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_cargocontainer_4stack", "lm_crgocont_4stack" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_cargocontainer_between", "lm_crgocont_between" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_helipad", "lm_helipad" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_railing", "lm_railing" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_wall_concrete_tall", "lm_wall_conc_tall" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_submarine_nextto", "lm_sub_nextto" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_forklift", "vh_forklift" );
    _ID1850( "trigger_multiple_bcs_taskforce_vehicle_snowcat", "vh_snowcat" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_crane_beneath", "lm_crane_beneath" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_stairs_on", "lm_stairs_on" );
    _ID1850( "trigger_multiple_bcs_taskforce_landmark_stairs_nextto", "lm_stairs_nextto" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_guardtower", "blg_grdtwr" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cave_center", "lm_cv_cent" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cave_center_tv", "lm_cv_cent_tv" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cave_center_concretesupport", "lm_cv_cent_concsup" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cave_outsidewall", "lm_cv_wall_outside" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cave_insidewall", "lm_cv_wall_inside" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_tunnel_leadingoutside", "lm_tun_leadoutside" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cave_small_left", "lm_cv_small_l" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cratestack_nearledge", "lm_crtstk_nrldge" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_hescobarrier_nearledge", "lm_hesco_nrldge" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_pipes_northside", "lm_pipes_nside" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_catwalk", "lm_catwlk" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_across_chasm", "lm_acrosschasm" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_SAMlauncher", "lm_samlnchr" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_hedgehog", "lm_hdghog" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_cot", "lm_cot" );
    _ID1850( "trigger_multiple_bcs_tfstealth_landmark_sentrygun", "lm_sentrygun" );
    _ID1850( "trigger_multiple_bcs_us_building_diner_inside", "blg_diner_ins" );
    _ID1850( "trigger_multiple_bcs_us_building_diner_behindcounter", "blg_diner_bhcntr" );
    _ID1850( "trigger_multiple_bcs_us_building_burgertown_inside", "blg_bgrtwn_ins" );
    _ID1850( "trigger_multiple_bcs_us_building_burgertown_roof", "blg_bgrtwn_roof" );
    _ID1850( "trigger_multiple_bcs_us_building_burgertown_backdoor", "blg_bgrtwn_bkdr" );
    _ID1850( "trigger_multiple_bcs_us_building_burgertown_kitchen", "blg_bgrtwn_kchn" );
    _ID1850( "trigger_multiple_bcs_us_building_burgertown_diningarea", "blg_bgrtwn_tbls" );
    _ID1850( "trigger_multiple_bcs_us_building_burgertown_parkinglot", "blg_bgrtwn_prklt" );
    _ID1850( "trigger_multiple_bcs_us_building_crbfinancial_inside", "blg_crb_ins" );
    _ID1850( "trigger_multiple_bcs_us_building_crbfinancial_nextto", "blg_crb_nextto" );
    _ID1850( "trigger_multiple_bcs_us_building_conveniencestore_nextto", "blg_cnvstr_nextto" );
    _ID1850( "trigger_multiple_bcs_us_building_novastarstation_inside", "blg_nova_ins" );
    _ID1850( "trigger_multiple_bcs_us_landmark_gaspumps_between", "lm_pmps_btwn" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_helicopter_crashed", "vh_heli_crsh" );
    _ID1850( "trigger_multiple_bcs_us_building_natesrestaurant_nextto", "blg_nates_nextto" );
    _ID1850( "trigger_multiple_bcs_us_building_natesrestaurant_inside", "blg_nates_ins" );
    _ID1850( "trigger_multiple_bcs_us_building_natesrestaurant_roof", "blg_nates_roof" );
    _ID1850( "trigger_multiple_bcs_us_building_tacotogo_inside", "blg_tcotgo_ins" );
    _ID1850( "trigger_multiple_bcs_us_building_tacotogo_nextto", "blg_tcotgo_nextto" );
    _ID1850( "trigger_multiple_bcs_us_building_tacotogo_parkinglot", "blg_tcotgo_prklt" );
    _ID1850( "trigger_multiple_bcs_us_landmark_burgertown_sign", "lm_bgrtwn_roof" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_van_blue", "vh_van_blue" );
    _ID1850( "trigger_multiple_bcs_us_building_apartments_office", "blg_apt_office" );
    _ID1850( "trigger_multiple_bcs_us_building_apartments_3rdfloor", "blg_apt_3f" );
    _ID1850( "trigger_multiple_bcs_us_building_mansion_grey_frontsteps", "blg_mn_stps" );
    _ID1850( "trigger_multiple_bcs_us_building_archway_right", "blg_arch_right" );
    _ID1850( "trigger_multiple_bcs_us_building_archway_left", "blg_arch_left" );
    _ID1850( "trigger_multiple_bcs_us_building_mansion_whitestripe_east", "blg_mn_whtstrp_e" );
    _ID1850( "trigger_multiple_bcs_us_building_mansion_fountainfrontyard_east", "blg_mn_ftn_e" );
    _ID1850( "trigger_multiple_bcs_us_building_mansion_lightbrown_west", "blg_mn_ltbrwn_w" );
    _ID1850( "trigger_multiple_bcs_us_building_mansion_brickwhitetrim_west", "blg_mn_bkwtrm_w" );
    _ID1850( "trigger_multiple_bcs_us_landmark_median", "lm_med" );
    _ID1850( "trigger_multiple_bcs_us_landmark_parkinglot_eastside", "lm_parkinglot_e" );
    _ID1850( "trigger_multiple_bcs_us_landmark_sign_arcadia", "lm_sign_arc" );
    _ID1850( "trigger_multiple_bcs_us_landmark_archway_large", "lm_arch_lg" );
    _ID1850( "trigger_multiple_bcs_us_landmark_golfcourse_green", "lm_golfcourse_green" );
    _ID1850( "trigger_multiple_bcs_us_landmark_barricade_police", "lm_barr_police" );
    _ID1850( "trigger_multiple_bcs_us_landmark_guardhouse", "lm_guardhouse" );
    _ID1850( "trigger_multiple_bcs_us_landmark_planecrash_tailsection", "lm_plane_tailsec" );
    _ID1850( "trigger_multiple_bcs_us_landmark_planecrash_engine", "lm_plane_engine" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_firetruck", "vh_firetruck" );
    _ID1850( "trigger_multiple_bcs_us_building_house_red_porch", "blg_house_rd_prch" );
    _ID1850( "trigger_multiple_bcs_us_building_house_grey_patio", "blg_house_gry_ptio" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_pooltable", "blg_ins_pooltbl" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_minibar", "blg_ins_minibar" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_winecellar", "blg_ins_winecllr" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_diningroom", "blg_ins_dngrm" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_kitchen", "blg_ins_ktchn" );
    _ID1850( "trigger_multiple_bcs_us_landmark_apartments_sign", "lm_apt_sign" );
    _ID1850( "trigger_multiple_bcs_us_landmark_fence_white", "lm_fence_wht" );
    _ID1850( "trigger_multiple_bcs_us_landmark_wall_stone", "lm_wall_stn" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_balcony_south", "blg_ins_bal_s" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_balcony_farside", "blg_ins_bal_far" );
    _ID1850( "trigger_multiple_bcs_us_landmark_copymachine", "lm_copymach" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_windows_rightside", "blg_ins_wndws_rside" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_office_glass_right", "blg_ins_off_gls_rside" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_office_glass_left", "blg_ins_off_gls_lside" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_cubicles_middle", "blg_ins_cubes_mid" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_cubicles_right", "blg_ins_cubes_rside" );
    _ID1850( "trigger_multiple_bcs_us_building_inside_cubicles_left", "blg_ins_cubes_lside" );
    _ID1850( "trigger_multiple_bcs_us_landmark_shelves_middle", "lm_shlvs_mid" );
    _ID1850( "trigger_multiple_bcs_us_landmark_shelves_left", "lm_shlvs_lside" );
    _ID1850( "trigger_multiple_bcs_us_landmark_shelves_right", "lm_shlvs_rside" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_car_burning", "vh_car_brng" );
    _ID1850( "trigger_multiple_bcs_us_vehicle_tank", "vh_tank" );
    _ID1850( "trigger_multiple_bcs_us_building_airport_terminal_2ndfloor", "blg_airport_term_2f" );
    _ID1850( "trigger_multiple_bcs_us_landmark_supportbeams_orange", "lm_sprtbms_orange" );
    _ID1850( "trigger_multiple_bcs_us_landmark_luggagecart", "lm_lugcrt_long" );
    _ID1850( "trigger_multiple_bcs_us_building_door", "callout_loc_door_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_door", "callout_loc_door_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_door", "callout_loc_door_report" );
    _ID1850( "trigger_multiple_bcs_us_building_1stfloor", "callout_loc_1st_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_1stfloor", "callout_loc_1st_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_1stfloor", "callout_loc_1st_report" );
    _ID1850( "trigger_multiple_bcs_us_building_1stfloor_door_leftside", "callout_loc_door_1st_left_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_1stfloor_door_leftside", "callout_loc_door_1st_left_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_1stfloor_door_leftside", "callout_loc_door_1st_left_report" );
    _ID1850( "trigger_multiple_bcs_us_building_1stfloor_door_rightside", "callout_loc_door_1st_right_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_1stfloor_door_rightside", "callout_loc_door_1st_right_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_1stfloor_door_rightside", "callout_loc_door_1st_right_report" );
    _ID1850( "trigger_multiple_bcs_us_building_1stfloor_window_leftside", "callout_loc_wndw_1st_left_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_1stfloor_window_leftside", "callout_loc_wndw_1st_left_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_1stfloor_window_leftside", "callout_loc_wndw_1st_left_report" );
    _ID1850( "trigger_multiple_bcs_us_building_1stfloor_window_rightside", "callout_loc_wndw_1st_right_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_1stfloor_window_rightside", "callout_loc_wndw_1st_right_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_1stfloor_window_rightside", "callout_loc_wndw_1st_right_report" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor", "callout_loc_2nd_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor", "callout_loc_2nd_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor", "callout_loc_2nd_report" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_door", "callout_loc_door_2nd_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_door", "callout_loc_door_2nd_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_door", "callout_loc_door_2nd_report" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_window", "callout_loc_wndw_2nd_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_window", "callout_loc_wndw_2nd_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_window", "callout_loc_wndw_2nd_report" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_window_leftside", "callout_loc_wndw_2nd_left_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_window_leftside", "callout_loc_wndw_2nd_left_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_window_leftside", "callout_loc_wndw_2nd_left_report" );
    _ID1850( "trigger_multiple_bcs_us_building_2ndfloor_window_rightside", "callout_loc_wndw_2nd_right_report" );
    _ID1850( "trigger_multiple_bcs_taskforce_building_2ndfloor_window_rightside", "callout_loc_wndw_2nd_right_report" );
    _ID1850( "trigger_multiple_bcs_tfstealth_building_2ndfloor_window_rightside", "callout_loc_wndw_2nd_right_report" );
}
