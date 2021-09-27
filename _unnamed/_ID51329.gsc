// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID4940()
{
    level._ID4938 = [];
    _unknown_005D();
    _unknown_000E();
    level._ID4938 = undefined;
}

_ID4952()
{
    anim._ID4941 = [];
    var_0 = _func_1A2();
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID170 ) && _func_125( var_3._ID170, "trigger_multiple_bcs" ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    var_5 = var_1;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_3 = var_5[var_7];
        var_6 = _unknown_0094( level._ID4938[var_3._ID170] );

        if ( var_6.size > 1 )
            var_6 = _ID42237::_ID3320( var_6 );

        var_3._ID22526 = var_6;
    }

    var_clear_2
    var_clear_0
    anim._ID4941 = var_1;
}

_ID26267( var_0 )
{
    var_1 = _func_129( var_0, " " );
    return var_1;
}

_ID1850( var_0, var_1 )
{
    if ( _func_02F( level._ID4938[var_0] ) )
    {
        var_2 = level._ID4938[var_0];
        var_3 = _unknown_00D7( var_2 );
        var_4 = _unknown_00DD( var_1 );
        var_5 = var_4;

        for ( var_10 = _func_1DA( var_5 ); _func_02F( var_10 ); var_10 = _func_1BF( var_5, var_10 ) )
        {
            var_6 = var_5[var_10];
            var_7 = var_3;

            for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
            {
                var_8 = var_7[var_9];

                if ( var_6 == var_8 )
                    return;
            }

            var_clear_3
            var_clear_1
        }

        var_clear_5
        var_clear_0
        var_2 += " " + var_1;
        level._ID4938[var_0] = var_2;
        return;
    }

    level._ID4938[var_0] = var_1;
}

_ID44256()
{
    _unknown_0145( "trigger_multiple_bcs_us_building_1stfloor_window", "blg_1f_wndw callout_loc_wndw_1st_report" );
    _unknown_0151( "trigger_multiple_bcs_taskforce_building_1stfloor_window", "blg_1f_wndw callout_loc_wndw_1st_report" );
    _unknown_015D( "trigger_multiple_bcs_tfstealth_building_1stfloor_window", "blg_1f_wndw callout_loc_wndw_1st_report" );
    _unknown_0169( "trigger_multiple_bcs_us_building_1stfloor_door", "blg_1f_door callout_loc_door_1st_report" );
    _unknown_0175( "trigger_multiple_bcs_taskforce_building_1stfloor_door", "blg_1f_door callout_loc_door_1st_report" );
    _unknown_0181( "trigger_multiple_bcs_tfstealth_building_1stfloor_door", "blg_1f_door callout_loc_door_1st_report" );
    _unknown_018D( "trigger_multiple_bcs_us_building_1stfloor_yellow", "blg_1f_ylw" );
    _unknown_0199( "trigger_multiple_bcs_taskforce_building_1stfloor_yellow", "blg_1f_ylw" );
    _unknown_01A5( "trigger_multiple_bcs_tfstealth_building_1stfloor_yellow", "blg_1f_ylw" );
    _unknown_01B1( "trigger_multiple_bcs_us_building_2ndfloor_window_arched", "blg_1f_wndw_arch" );
    _unknown_01BD( "trigger_multiple_bcs_taskforce_building_2ndfloor_window_arched", "blg_1f_wndw_arch" );
    _unknown_01C9( "trigger_multiple_bcs_tfstealth_building_2ndfloor_window_arched", "blg_1f_wndw_arch" );
    _unknown_01D5( "trigger_multiple_bcs_us_building_2ndfloor_balcony", "blg_2f_blc" );
    _unknown_01E1( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony", "blg_2f_blc" );
    _unknown_01ED( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony", "blg_2f_blc" );
    _unknown_01F9( "trigger_multiple_bcs_us_building_2ndfloor_balcony_brick", "blg_2f_blc_brk" );
    _unknown_0205( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_brick", "blg_2f_blc_brk" );
    _unknown_0211( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_brick", "blg_2f_blc_brk" );
    _unknown_021D( "trigger_multiple_bcs_us_building_2ndfloor_balcony_south", "blg_2f_s" );
    _unknown_0229( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_south", "blg_2f_s" );
    _unknown_0235( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_south", "blg_2f_s" );
    _unknown_0241( "trigger_multiple_bcs_us_building_2ndfloor_balcony_behindmetalsheets", "blg_2f_mtlshts" );
    _unknown_024D( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_behindmetalsheets", "blg_2f_mtlshts" );
    _unknown_0259( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_behindmetalsheets", "blg_2f_mtlshts" );
    _unknown_0265( "trigger_multiple_bcs_us_building_2ndfloor_balcony_behindsandbags", "blg_2f_sndbgs" );
    _unknown_0271( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_behindsandbags", "blg_2f_sndbgs" );
    _unknown_027D( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_behindsandbags", "blg_2f_sndbgs" );
    _unknown_0289( "trigger_multiple_bcs_us_building_2ndfloor_balcony_corrugatedmetal", "blg_2f_crgmtl" );
    _unknown_0295( "trigger_multiple_bcs_taskforce_building_2ndfloor_balcony_corrugatedmetal", "blg_2f_crgmtl" );
    _unknown_02A1( "trigger_multiple_bcs_tfstealth_building_2ndfloor_balcony_corrugatedmetal", "blg_2f_crgmtl" );
    _unknown_02AD( "trigger_multiple_bcs_us_building_1story_grey", "blg_1s_gry" );
    _unknown_02B9( "trigger_multiple_bcs_taskforce_building_1story_grey", "blg_1s_gry" );
    _unknown_02C5( "trigger_multiple_bcs_tfstealth_building_1story_grey", "blg_1s_gry" );
    _unknown_02D1( "trigger_multiple_bcs_us_building_2story_roof", "blg_2s_rf" );
    _unknown_02DD( "trigger_multiple_bcs_taskforce_building_2story_roof", "blg_2s_rf" );
    _unknown_02E9( "trigger_multiple_bcs_tfstealth_building_2story_roof", "blg_2s_rf" );
    _unknown_02F5( "trigger_multiple_bcs_us_building_2story_roof_leftmost", "blg_2s_rf_left" );
    _unknown_0301( "trigger_multiple_bcs_taskforce_building_2story_roof_leftmost", "blg_2s_rf_left" );
    _unknown_030D( "trigger_multiple_bcs_tfstealth_building_2story_roof_leftmost", "blg_2s_rf_left" );
    _unknown_0319( "trigger_multiple_bcs_us_building_2story_yellow_roof", "blg_2s_ylw_rf" );
    _unknown_0325( "trigger_multiple_bcs_taskforce_building_2story_yellow_roof", "blg_2s_ylw_rf" );
    _unknown_0331( "trigger_multiple_bcs_tfstealth_building_2story_yellow_roof", "blg_2s_ylw_rf" );
    _unknown_033D( "trigger_multiple_bcs_us_building_2story_white_roof", "blg_2s_wht_rf" );
    _unknown_0349( "trigger_multiple_bcs_taskforce_building_2story_white_roof", "blg_2s_wht_rf" );
    _unknown_0355( "trigger_multiple_bcs_tfstealth_building_2story_white_roof", "blg_2s_wht_rf" );
    _unknown_0361( "trigger_multiple_bcs_us_building_inside_frontdoor", "blg_ins_door_frnt" );
    _unknown_036D( "trigger_multiple_bcs_taskforce_building_inside_frontdoor", "blg_ins_door_frnt" );
    _unknown_0379( "trigger_multiple_bcs_tfstealth_building_inside_frontdoor", "blg_ins_door_frnt" );
    _unknown_0385( "trigger_multiple_bcs_us_building_inside_backdoor", "blg_ins_door_bck" );
    _unknown_0391( "trigger_multiple_bcs_taskforce_building_inside_backdoor", "blg_ins_door_bck" );
    _unknown_039D( "trigger_multiple_bcs_tfstealth_building_inside_backdoor", "blg_ins_door_bck" );
    _unknown_03A9( "trigger_multiple_bcs_us_building_inside_stairs", "blg_ins_stairs" );
    _unknown_03B5( "trigger_multiple_bcs_taskforce_building_inside_stairs", "blg_ins_stairs" );
    _unknown_03C1( "trigger_multiple_bcs_tfstealth_building_inside_stairs", "blg_ins_stairs" );
    _unknown_03CD( "trigger_multiple_bcs_us_building_inside_bathroom", "blg_ins_bthrm" );
    _unknown_03D9( "trigger_multiple_bcs_taskforce_building_inside_bathroom", "blg_ins_bthrm" );
    _unknown_03E5( "trigger_multiple_bcs_tfstealth_building_inside_bathroom", "blg_ins_bthrm" );
    _unknown_03F1( "trigger_multiple_bcs_us_building_inside_livingroom", "blg_ins_lvgrm" );
    _unknown_03FD( "trigger_multiple_bcs_taskforce_building_inside_livingroom", "blg_ins_lvgrm" );
    _unknown_0409( "trigger_multiple_bcs_tfstealth_building_inside_livingroom", "blg_ins_lvgrm" );
    _unknown_0415( "trigger_multiple_bcs_us_building_inside_upstairs", "blg_ins_upstrs" );
    _unknown_0421( "trigger_multiple_bcs_taskforce_building_inside_upstairs", "blg_ins_upstrs" );
    _unknown_042D( "trigger_multiple_bcs_tfstealth_building_inside_upstairs", "blg_ins_upstrs" );
    _unknown_0439( "trigger_multiple_bcs_us_building_inside_garage", "blg_ins_grge" );
    _unknown_0445( "trigger_multiple_bcs_taskforce_building_inside_garage", "blg_ins_grge" );
    _unknown_0451( "trigger_multiple_bcs_tfstealth_building_inside_garage", "blg_ins_grge" );
    _unknown_045D( "trigger_multiple_bcs_us_building_inside_basement", "blg_ins_bsmt" );
    _unknown_0469( "trigger_multiple_bcs_taskforce_building_inside_basement", "blg_ins_bsmt" );
    _unknown_0475( "trigger_multiple_bcs_tfstealth_building_inside_basement", "blg_ins_bsmt" );
    _unknown_0481( "trigger_multiple_bcs_us_building_inside_balcony", "blg_ins_balc" );
    _unknown_048D( "trigger_multiple_bcs_taskforce_building_inside_balcony", "blg_ins_balc" );
    _unknown_0499( "trigger_multiple_bcs_tfstealth_building_inside_balcony", "blg_ins_balc" );
    _unknown_04A5( "trigger_multiple_bcs_us_building_inside_cubicles", "blg_ins_cubes" );
    _unknown_04B1( "trigger_multiple_bcs_taskforce_building_inside_cubicles", "blg_ins_cubes" );
    _unknown_04BD( "trigger_multiple_bcs_tfstealth_building_inside_cubicles", "blg_ins_cubes" );
    _unknown_04C9( "trigger_multiple_bcs_us_building_inside_office_eastcorner", "blg_ins_offce_cnr_e" );
    _unknown_04D5( "trigger_multiple_bcs_taskforce_building_inside_office_eastcorner", "blg_ins_offce_cnr_e" );
    _unknown_04E1( "trigger_multiple_bcs_tfstealth_building_inside_office_eastcorner", "blg_ins_offce_cnr_e" );
    _unknown_04ED( "trigger_multiple_bcs_us_building_shed", "blg_shed" );
    _unknown_04F9( "trigger_multiple_bcs_taskforce_building_shed", "blg_shed" );
    _unknown_0505( "trigger_multiple_bcs_tfstealth_building_shed", "blg_shed" );
    _unknown_0511( "trigger_multiple_bcs_us_building_roof", "blg_shed" );
    _unknown_051D( "trigger_multiple_bcs_taskforce_building_roof", "blg_roof" );
    _unknown_0529( "trigger_multiple_bcs_tfstealth_building_roof", "blg_roof" );
    _unknown_0535( "trigger_multiple_bcs_us_landmark_desk_large", "lm_dsk_lg" );
    _unknown_0541( "trigger_multiple_bcs_taskforce_landmark_desk_large", "lm_dsk_lg" );
    _unknown_054D( "trigger_multiple_bcs_tfstealth_landmark_desk_large", "lm_dsk_lg" );
    _unknown_0559( "trigger_multiple_bcs_us_landmark_desks_stacked", "lm_dsk_stck" );
    _unknown_0565( "trigger_multiple_bcs_taskforce_landmark_desks_stacked", "lm_dsk_stck" );
    _unknown_0571( "trigger_multiple_bcs_tfstealth_landmark_desks_stacked", "lm_dsk_stck" );
    _unknown_057D( "trigger_multiple_bcs_us_landmark_ammocrates_stacked", "lm_amcrt_stck" );
    _unknown_0589( "trigger_multiple_bcs_taskforce_landmark_ammocrates_stacked", "lm_amcrt_stck" );
    _unknown_0595( "trigger_multiple_bcs_tfstealth_landmark_ammocrates_stacked", "lm_amcrt_stck" );
    _unknown_05A1( "trigger_multiple_bcs_us_landmark_crates_stacked", "lm_crt_stck" );
    _unknown_05AD( "trigger_multiple_bcs_taskforce_landmark_crates_stacked", "lm_crt_stck" );
    _unknown_05B9( "trigger_multiple_bcs_tfstealth_landmark_crates_stacked", "lm_crt_stck" );
    _unknown_05C5( "trigger_multiple_bcs_us_landmark_fuelcontainer", "lm_fuelcont" );
    _unknown_05D1( "trigger_multiple_bcs_taskforce_landmark_fuelcontainer", "lm_fuelcont" );
    _unknown_05DD( "trigger_multiple_bcs_tfstealth_landmark_fuelcontainer", "lm_fuelcont" );
    _unknown_05E9( "trigger_multiple_bcs_us_landmark_fuelcontainers", "lm_fuelconts" );
    _unknown_05F5( "trigger_multiple_bcs_taskforce_landmark_fuelcontainers", "lm_fuelconts" );
    _unknown_0601( "trigger_multiple_bcs_tfstealth_landmark_fuelcontainers", "lm_fuelconts" );
    _unknown_060D( "trigger_multiple_bcs_us_landmark_garbagecans", "lm_gbgcns" );
    _unknown_0619( "trigger_multiple_bcs_taskforce_landmark_garbagecans", "lm_gbgcns" );
    _unknown_0625( "trigger_multiple_bcs_tfstealth_landmark_garbagecans", "lm_gbgcns" );
    _unknown_0631( "trigger_multiple_bcs_us_landmark_barrels", "lm_brls" );
    _unknown_063D( "trigger_multiple_bcs_taskforce_landmark_barrels", "lm_brls" );
    _unknown_0649( "trigger_multiple_bcs_tfstealth_landmark_barrels", "lm_brls" );
    _unknown_0655( "trigger_multiple_bcs_us_landmark_dumpster", "lm_dpstr" );
    _unknown_0661( "trigger_multiple_bcs_taskforce_landmark_dumpster", "lm_dpstr" );
    _unknown_066D( "trigger_multiple_bcs_tfstealth_landmark_dumpster", "lm_dpstr" );
    _unknown_0679( "trigger_multiple_bcs_us_landmark_driveway", "lm_drvwy" );
    _unknown_0685( "trigger_multiple_bcs_taskforce_landmark_driveway", "lm_drvwy" );
    _unknown_0691( "trigger_multiple_bcs_tfstealth_landmark_driveway", "lm_drvwy" );
    _unknown_069D( "trigger_multiple_bcs_us_landmark_intersection_threeway", "lm_intsec_3w" );
    _unknown_06A9( "trigger_multiple_bcs_taskforce_landmark_intersection_threeway", "lm_intsec_3w" );
    _unknown_06B5( "trigger_multiple_bcs_tfstealth_landmark_intersection_threeway", "lm_intsec_3w" );
    _unknown_06C1( "trigger_multiple_bcs_us_landmark_phonebooth", "lm_phnbth" );
    _unknown_06CD( "trigger_multiple_bcs_taskforce_landmark_phonebooth", "lm_phnbth" );
    _unknown_06D9( "trigger_multiple_bcs_tfstealth_landmark_phonebooth", "lm_phnbth" );
    _unknown_06E5( "trigger_multiple_bcs_us_landmark_vendingmachine", "lm_vendmach" );
    _unknown_06F1( "trigger_multiple_bcs_taskforce_landmark_vendingmachine", "lm_vendmach" );
    _unknown_06FD( "trigger_multiple_bcs_tfstealth_landmark_vendingmachine", "lm_vendmach" );
    _unknown_0709( "trigger_multiple_bcs_us_landmark_icemachine", "lm_icemach" );
    _unknown_0715( "trigger_multiple_bcs_taskforce_landmark_icemachine", "lm_icemach" );
    _unknown_0721( "trigger_multiple_bcs_tfstealth_landmark_icemachine", "lm_icemach" );
    _unknown_072D( "trigger_multiple_bcs_us_landmark_newspaperbox", "lm_newsbox" );
    _unknown_0739( "trigger_multiple_bcs_taskforce_landmark_newspaperbox", "lm_newsbox" );
    _unknown_0745( "trigger_multiple_bcs_tfstealth_landmark_newspaperbox", "lm_newsbox" );
    _unknown_0751( "trigger_multiple_bcs_us_landmark_sandbags", "lm_sndbgs" );
    _unknown_075D( "trigger_multiple_bcs_taskforce_landmark_sandbags", "lm_sndbgs" );
    _unknown_0769( "trigger_multiple_bcs_tfstealth_landmark_sandbags", "lm_sndbgs" );
    _unknown_0775( "trigger_multiple_bcs_us_landmark_barricade_concrete", "lm_barr_conc" );
    _unknown_0781( "trigger_multiple_bcs_taskforce_landmark_barricade_concrete", "lm_barr_conc" );
    _unknown_078D( "trigger_multiple_bcs_tfstealth_landmark_barricade_concrete", "lm_barr_conc" );
    _unknown_0799( "trigger_multiple_bcs_us_landmark_hescobarrier", "lm_hescobarr" );
    _unknown_07A5( "trigger_multiple_bcs_taskforce_landmark_hescobarrier", "lm_hescobarr" );
    _unknown_07B1( "trigger_multiple_bcs_tfstealth_landmark_hescobarrier", "lm_hescobarr" );
    _unknown_07BD( "trigger_multiple_bcs_us_vehicle_latvee_parked", "vh_lat_pkd" );
    _unknown_07C9( "trigger_multiple_bcs_taskforce_vehicle_latvee_parked", "vh_lat_pkd" );
    _unknown_07D5( "trigger_multiple_bcs_tfstealth_vehicle_latvee_parked", "vh_lat_pkd" );
    _unknown_07E1( "trigger_multiple_bcs_us_vehicle_latvee_parked_left", "vh_lat_pkd_l" );
    _unknown_07ED( "trigger_multiple_bcs_taskforce_vehicle_latvee_parked_left", "vh_lat_pkd_l" );
    _unknown_07F9( "trigger_multiple_bcs_tfstealth_vehicle_latvee_parked_left", "vh_lat_pkd_l" );
    _unknown_0805( "trigger_multiple_bcs_us_vehicle_latvee_parked_right", "vh_lat_pkd_r" );
    _unknown_0811( "trigger_multiple_bcs_taskforce_vehicle_latvee_parked_right", "vh_lat_pkd_r" );
    _unknown_081D( "trigger_multiple_bcs_tfstealth_vehicle_latvee_parked_right", "vh_lat_pkd_r" );
    _unknown_0829( "trigger_multiple_bcs_us_vehicle_car_taxi", "vh_car_taxi" );
    _unknown_0835( "trigger_multiple_bcs_taskforce_vehicle_car_taxi", "vh_car_taxi" );
    _unknown_0841( "trigger_multiple_bcs_tfstealth_vehicle_car_taxi", "vh_car_taxi" );
    _unknown_084D( "trigger_multiple_bcs_us_vehicle_car_black", "vh_car_blk" );
    _unknown_0859( "trigger_multiple_bcs_taskforce_vehicle_car_black", "vh_car_blk" );
    _unknown_0865( "trigger_multiple_bcs_tfstealth_vehicle_car_black", "vh_car_blk" );
    _unknown_0871( "trigger_multiple_bcs_us_vehicle_car_grey", "vh_car_gry" );
    _unknown_087D( "trigger_multiple_bcs_taskforce_vehicle_car_grey", "vh_car_gry" );
    _unknown_0889( "trigger_multiple_bcs_tfstealth_vehicle_car_grey", "vh_car_gry" );
    _unknown_0895( "trigger_multiple_bcs_us_vehicle_van_white", "vh_van_wht" );
    _unknown_08A1( "trigger_multiple_bcs_taskforce_vehicle_van_white", "vh_van_wht" );
    _unknown_08AD( "trigger_multiple_bcs_tfstealth_vehicle_van_white", "vh_van_wht" );
    _unknown_08B9( "trigger_multiple_bcs_us_vehicle_car_hatchback_blue", "vh_car_hb_blu" );
    _unknown_08C5( "trigger_multiple_bcs_taskforce_vehicle_car_hatchback_blue", "vh_car_hb_blu" );
    _unknown_08D1( "trigger_multiple_bcs_tfstealth_vehicle_car_hatchback_blue", "vh_car_hb_blu" );
    _unknown_08DD( "trigger_multiple_bcs_us_vehicle_car_hatchback_green", "vh_car_hb_grn" );
    _unknown_08E9( "trigger_multiple_bcs_taskforce_vehicle_car_hatchback_green", "vh_car_hb_grn" );
    _unknown_08F5( "trigger_multiple_bcs_tfstealth_vehicle_car_hatchback_green", "vh_car_hb_grn" );
    _unknown_0901( "trigger_multiple_bcs_us_vehicle_car_hatchback_black", "vh_car_hb_blk" );
    _unknown_090D( "trigger_multiple_bcs_taskforce_vehicle_car_hatchback_black", "vh_car_hb_blk" );
    _unknown_0919( "trigger_multiple_bcs_tfstealth_vehicle_car_hatchback_black", "vh_car_hb_blk" );
    _unknown_0925( "trigger_multiple_bcs_us_vehicle_car_stationwagon_yellow", "vh_car_sw_ylw" );
    _unknown_0931( "trigger_multiple_bcs_taskforce_vehicle_car_stationwagon_yellow", "vh_car_sw_ylw" );
    _unknown_093D( "trigger_multiple_bcs_tfstealth_vehicle_car_stationwagon_yellow", "vh_car_sw_ylw" );
    _unknown_0949( "trigger_multiple_bcs_us_vehicle_car_police", "vh_car_pol" );
    _unknown_0955( "trigger_multiple_bcs_taskforce_vehicle_car_police", "vh_car_pol" );
    _unknown_0961( "trigger_multiple_bcs_tfstealth_vehicle_car_police", "vh_car_pol" );
    _unknown_096D( "trigger_multiple_bcs_us_vehicle_car_police_destroyed", "vh_car_pol_dst" );
    _unknown_0979( "trigger_multiple_bcs_taskforce_vehicle_car_police_destroyed", "vh_car_pol_dst" );
    _unknown_0985( "trigger_multiple_bcs_tfstealth_vehicle_car_police_destroyed", "vh_car_pol_dst" );
    _unknown_0991( "trigger_multiple_bcs_us_vehicle_truck_white", "vh_trk_wht" );
    _unknown_099D( "trigger_multiple_bcs_taskforce_vehicle_truck_white", "vh_trk_wht" );
    _unknown_09A9( "trigger_multiple_bcs_tfstealth_vehicle_truck_white", "vh_trk_wht" );
    _unknown_09B5( "trigger_multiple_bcs_us_vehicle_truck_white_destroyed", "vh_trk_wht_dst" );
    _unknown_09C1( "trigger_multiple_bcs_taskforce_vehicle_truck_white_destroyed", "vh_trk_wht_dst" );
    _unknown_09CD( "trigger_multiple_bcs_tfstealth_vehicle_truck_white_destroyed", "vh_trk_wht_dst" );
    _unknown_09D9( "trigger_multiple_bcs_us_vehicle_truck_black", "vh_trk_blk" );
    _unknown_09E5( "trigger_multiple_bcs_taskforce_vehicle_truck_black", "vh_trk_blk" );
    _unknown_09F1( "trigger_multiple_bcs_tfstealth_vehicle_truck_black", "vh_trk_blk" );
    _unknown_09FD( "trigger_multiple_bcs_us_vehicle_truck_destroyed", "vh_trk_dst" );
    _unknown_0A09( "trigger_multiple_bcs_taskforce_vehicle_truck_destroyed", "vh_trk_dst" );
    _unknown_0A15( "trigger_multiple_bcs_tfstealth_vehicle_truck_destroyed", "vh_trk_dst" );
    _unknown_0A21( "trigger_multiple_bcs_us_vehicle_suv_black", "vh_suv_blk" );
    _unknown_0A2D( "trigger_multiple_bcs_taskforce_vehicle_suv_black", "vh_suv_blk" );
    _unknown_0A39( "trigger_multiple_bcs_tfstealth_vehicle_suv_black", "vh_suv_blk" );
    _unknown_0A45( "trigger_multiple_bcs_us_vehicle_suv_black_overturned", "vh_suv_blk_ovrtnd" );
    _unknown_0A51( "trigger_multiple_bcs_taskforce_vehicle_suv_black_overturned", "vh_suv_blk_ovrtnd" );
    _unknown_0A5D( "trigger_multiple_bcs_tfstealth_vehicle_suv_black_overturned", "vh_suv_blk_ovrtnd" );
    _unknown_0A69( "trigger_multiple_bcs_us_vehicle_tankertruck", "vh_trk_tnk" );
    _unknown_0A75( "trigger_multiple_bcs_taskforce_vehicle_tankertruck", "vh_trk_tnk" );
    _unknown_0A81( "trigger_multiple_bcs_tfstealth_vehicle_tankertruck", "vh_trk_tnk" );
    _unknown_0A8D( "trigger_multiple_bcs_us_vehicle_uaz", "vh_uaz" );
    _unknown_0A99( "trigger_multiple_bcs_taskforce_vehicle_uaz", "vh_uaz" );
    _unknown_0AA5( "trigger_multiple_bcs_tfstealth_vehicle_uaz", "vh_uaz" );
    _unknown_0AB1( "trigger_multiple_bcs_us_vehicle_bus", "vh_bus" );
    _unknown_0ABD( "trigger_multiple_bcs_taskforce_vehicle_bus", "vh_bus" );
    _unknown_0AC9( "trigger_multiple_bcs_tfstealth_vehicle_bus", "vh_bus" );
    _unknown_0AD5( "trigger_multiple_bcs_tfstealth_building_2ndfloor_windows", "blg_2f_wndws" );
    _unknown_0AE1( "trigger_multiple_bcs_tfstealth_landmark_rappelling_leftside", "lm_rappel_left" );
    _unknown_0AED( "trigger_multiple_bcs_tfstealth_landmark_stairs_down", "lm_stairs_down" );
    _unknown_0AF9( "trigger_multiple_bcs_tfstealth_landmark_stairs_up", "lm_stairs_up" );
    _unknown_0B05( "trigger_multiple_bcs_tfstealth_landmark_stairs_yellow", "lm_stairs_ylw" );
    _unknown_0B11( "trigger_multiple_bcs_tfstealth_landmark_catwalk_yellow_small", "lm_ctwlk_ylw_sml" );
    _unknown_0B1D( "trigger_multiple_bcs_tfstealth_landmark_catwalk_yellow_large", "lm_ctwlk_ylw_lg" );
    _unknown_0B29( "trigger_multiple_bcs_tfstealth_landmark_catwalk_yellow_behindgirderstack", "lm_ctwlk_ylw_grdr" );
    _unknown_0B35( "trigger_multiple_bcs_tfstealth_landmark_corrugatedmetal", "lm_corrgatedmtl" );
    _unknown_0B41( "trigger_multiple_bcs_tfstealth_landmark_dumpster_red_long", "lm_dmpstr_red_lng" );
    _unknown_0B4D( "trigger_multiple_bcs_tfstealth_landmark_wirespool_large", "lm_wirespl_lg" );
    _unknown_0B59( "trigger_multiple_bcs_tfstealth_landmark_lowwall_underbarbedwire", "lm_lowwall_bwire" );
    _unknown_0B65( "trigger_multiple_bcs_tfstealth_landmark_celldoor_endofhall", "lm_celldr_endhl" );
    _unknown_0B71( "trigger_multiple_bcs_tfstealth_landmark_cell_left", "lm_cell_l" );
    _unknown_0B7D( "trigger_multiple_bcs_tfstealth_landmark_cell_right", "lm_cell_r" );
    _unknown_0B89( "trigger_multiple_bcs_tfstealth_landmark_pipes_behind", "lm_pipes_behind" );
    _unknown_0B95( "trigger_multiple_bcs_tfstealth_landmark_showers_center", "lm_shwr_cntr" );
    _unknown_0BA1( "trigger_multiple_bcs_tfstealth_landmark_showers_SWside", "lm_shwr_sw" );
    _unknown_0BAD( "trigger_multiple_bcs_tfstealth_landmark_showers_NEside", "lm_shwr_ne" );
    _unknown_0BB9( "trigger_multiple_bcs_tfstealth_landmark_lockers_center", "lm_lckr_cntr" );
    _unknown_0BC5( "trigger_multiple_bcs_tfstealth_landmark_lockers_left", "lm_lckr_l" );
    _unknown_0BD1( "trigger_multiple_bcs_tfstealth_landmark_lockers_right", "lm_lckr_r" );
    _unknown_0BDD( "trigger_multiple_bcs_tfstealth_landmark_arches_above", "lm_wlkwy_abv_archs" );
    _unknown_0BE9( "trigger_multiple_bcs_taskforce_building_shack_left", "blg_shack_left" );
    _unknown_0BF5( "trigger_multiple_bcs_taskforce_building_icecreamstore_balcony", "blg_icecrm_balc" );
    _unknown_0C01( "trigger_multiple_bcs_taskforce_building_rooftops_ahead", "blg_rftop_ahead" );
    _unknown_0C0D( "trigger_multiple_bcs_taskforce_landmark_market_alleyway_shotgunner", "lm_mrkt_alley_shgn" );
    _unknown_0C19( "trigger_multiple_bcs_taskforce_landmark_awning_green_marketcenter", "lm_awn_grn_mrktcntr" );
    _unknown_0C25( "trigger_multiple_bcs_taskforce_landmark_awning_redwhitestriped", "lm_awn_rdwhtstripe" );
    _unknown_0C31( "trigger_multiple_bcs_taskforce_landmark_vista_bigtree", "lm_vst_bigtree" );
    _unknown_0C3D( "trigger_multiple_bcs_taskforce_landmark_lowwall_betweentwobldgs_right", "lm_wall_bt2bldgs_r" );
    _unknown_0C49( "trigger_multiple_bcs_taskforce_landmark_fence_white_atopridge", "lm_fence_wht_ridge" );
    _unknown_0C55( "trigger_multiple_bcs_taskforce_landmark_refrigerator", "lm_fridge" );
    _unknown_0C61( "trigger_multiple_bcs_taskforce_landmark_tirestack", "lm_tirestk" );
    _unknown_0C6D( "trigger_multiple_bcs_taskforce_vehicle_car_stationwagon_black", "vh_stwag_blk" );
    _unknown_0C79( "trigger_multiple_bcs_taskforce_landmark_haybale", "lm_haybale" );
    _unknown_0C85( "trigger_multiple_bcs_taskforce_landmark_logstack", "lm_logstack" );
    _unknown_0C91( "trigger_multiple_bcs_taskforce_vehicle_tractor", "vh_tractor" );
    _unknown_0C9D( "trigger_multiple_bcs_taskforce_landmark_wall_barbwire", "lm_wall_barbwire" );
    _unknown_0CA9( "trigger_multiple_bcs_taskforce_landmark_stairs_behindstairs", "lm_stairs_behind" );
    _unknown_0CB5( "trigger_multiple_bcs_taskforce_landmark_refuelingstation", "lm_fuelstation" );
    _unknown_0CC1( "trigger_multiple_bcs_taskforce_building_hangar_num1", "blg_hngr_num1" );
    _unknown_0CCD( "trigger_multiple_bcs_taskforce_building_hangar_num2", "blg_hngr_num2" );
    _unknown_0CD9( "trigger_multiple_bcs_taskforce_landmark_cargocontainer", "lm_crgocont" );
    _unknown_0CE5( "trigger_multiple_bcs_taskforce_landmark_cargocontainer_2stack", "lm_crgocont_2stack" );
    _unknown_0CF1( "trigger_multiple_bcs_taskforce_landmark_cargocontainer_3stack", "lm_crgocont_3stack" );
    _unknown_0CFD( "trigger_multiple_bcs_taskforce_landmark_cargocontainer_4stack", "lm_crgocont_4stack" );
    _unknown_0D09( "trigger_multiple_bcs_taskforce_landmark_cargocontainer_between", "lm_crgocont_between" );
    _unknown_0D15( "trigger_multiple_bcs_taskforce_landmark_helipad", "lm_helipad" );
    _unknown_0D21( "trigger_multiple_bcs_taskforce_landmark_railing", "lm_railing" );
    _unknown_0D2D( "trigger_multiple_bcs_taskforce_landmark_wall_concrete_tall", "lm_wall_conc_tall" );
    _unknown_0D39( "trigger_multiple_bcs_taskforce_landmark_submarine_nextto", "lm_sub_nextto" );
    _unknown_0D45( "trigger_multiple_bcs_taskforce_vehicle_forklift", "vh_forklift" );
    _unknown_0D51( "trigger_multiple_bcs_taskforce_vehicle_snowcat", "vh_snowcat" );
    _unknown_0D5D( "trigger_multiple_bcs_taskforce_landmark_crane_beneath", "lm_crane_beneath" );
    _unknown_0D69( "trigger_multiple_bcs_taskforce_landmark_stairs_on", "lm_stairs_on" );
    _unknown_0D75( "trigger_multiple_bcs_taskforce_landmark_stairs_nextto", "lm_stairs_nextto" );
    _unknown_0D81( "trigger_multiple_bcs_tfstealth_building_guardtower", "blg_grdtwr" );
    _unknown_0D8D( "trigger_multiple_bcs_tfstealth_landmark_cave_center", "lm_cv_cent" );
    _unknown_0D99( "trigger_multiple_bcs_tfstealth_landmark_cave_center_tv", "lm_cv_cent_tv" );
    _unknown_0DA5( "trigger_multiple_bcs_tfstealth_landmark_cave_center_concretesupport", "lm_cv_cent_concsup" );
    _unknown_0DB1( "trigger_multiple_bcs_tfstealth_landmark_cave_outsidewall", "lm_cv_wall_outside" );
    _unknown_0DBD( "trigger_multiple_bcs_tfstealth_landmark_cave_insidewall", "lm_cv_wall_inside" );
    _unknown_0DC9( "trigger_multiple_bcs_tfstealth_landmark_tunnel_leadingoutside", "lm_tun_leadoutside" );
    _unknown_0DD5( "trigger_multiple_bcs_tfstealth_landmark_cave_small_left", "lm_cv_small_l" );
    _unknown_0DE1( "trigger_multiple_bcs_tfstealth_landmark_cratestack_nearledge", "lm_crtstk_nrldge" );
    _unknown_0DED( "trigger_multiple_bcs_tfstealth_landmark_hescobarrier_nearledge", "lm_hesco_nrldge" );
    _unknown_0DF9( "trigger_multiple_bcs_tfstealth_landmark_pipes_northside", "lm_pipes_nside" );
    _unknown_0E05( "trigger_multiple_bcs_tfstealth_landmark_catwalk", "lm_catwlk" );
    _unknown_0E11( "trigger_multiple_bcs_tfstealth_landmark_across_chasm", "lm_acrosschasm" );
    _unknown_0E1D( "trigger_multiple_bcs_tfstealth_landmark_SAMlauncher", "lm_samlnchr" );
    _unknown_0E29( "trigger_multiple_bcs_tfstealth_landmark_hedgehog", "lm_hdghog" );
    _unknown_0E35( "trigger_multiple_bcs_tfstealth_landmark_cot", "lm_cot" );
    _unknown_0E41( "trigger_multiple_bcs_tfstealth_landmark_sentrygun", "lm_sentrygun" );
    _unknown_0E4D( "trigger_multiple_bcs_us_building_diner_inside", "blg_diner_ins" );
    _unknown_0E59( "trigger_multiple_bcs_us_building_diner_behindcounter", "blg_diner_bhcntr" );
    _unknown_0E65( "trigger_multiple_bcs_us_building_burgertown_inside", "blg_bgrtwn_ins" );
    _unknown_0E71( "trigger_multiple_bcs_us_building_burgertown_roof", "blg_bgrtwn_roof" );
    _unknown_0E7D( "trigger_multiple_bcs_us_building_burgertown_backdoor", "blg_bgrtwn_bkdr" );
    _unknown_0E89( "trigger_multiple_bcs_us_building_burgertown_kitchen", "blg_bgrtwn_kchn" );
    _unknown_0E95( "trigger_multiple_bcs_us_building_burgertown_diningarea", "blg_bgrtwn_tbls" );
    _unknown_0EA1( "trigger_multiple_bcs_us_building_burgertown_parkinglot", "blg_bgrtwn_prklt" );
    _unknown_0EAD( "trigger_multiple_bcs_us_building_crbfinancial_inside", "blg_crb_ins" );
    _unknown_0EB9( "trigger_multiple_bcs_us_building_crbfinancial_nextto", "blg_crb_nextto" );
    _unknown_0EC5( "trigger_multiple_bcs_us_building_conveniencestore_nextto", "blg_cnvstr_nextto" );
    _unknown_0ED1( "trigger_multiple_bcs_us_building_novastarstation_inside", "blg_nova_ins" );
    _unknown_0EDD( "trigger_multiple_bcs_us_landmark_gaspumps_between", "lm_pmps_btwn" );
    _unknown_0EE9( "trigger_multiple_bcs_us_vehicle_helicopter_crashed", "vh_heli_crsh" );
    _unknown_0EF5( "trigger_multiple_bcs_us_building_natesrestaurant_nextto", "blg_nates_nextto" );
    _unknown_0F01( "trigger_multiple_bcs_us_building_natesrestaurant_inside", "blg_nates_ins" );
    _unknown_0F0D( "trigger_multiple_bcs_us_building_natesrestaurant_roof", "blg_nates_roof" );
    _unknown_0F19( "trigger_multiple_bcs_us_building_tacotogo_inside", "blg_tcotgo_ins" );
    _unknown_0F25( "trigger_multiple_bcs_us_building_tacotogo_nextto", "blg_tcotgo_nextto" );
    _unknown_0F31( "trigger_multiple_bcs_us_building_tacotogo_parkinglot", "blg_tcotgo_prklt" );
    _unknown_0F3D( "trigger_multiple_bcs_us_landmark_burgertown_sign", "lm_bgrtwn_roof" );
    _unknown_0F49( "trigger_multiple_bcs_us_vehicle_van_blue", "vh_van_blue" );
    _unknown_0F55( "trigger_multiple_bcs_us_building_apartments_office", "blg_apt_office" );
    _unknown_0F61( "trigger_multiple_bcs_us_building_apartments_3rdfloor", "blg_apt_3f" );
    _unknown_0F6D( "trigger_multiple_bcs_us_building_mansion_grey_frontsteps", "blg_mn_stps" );
    _unknown_0F79( "trigger_multiple_bcs_us_building_archway_right", "blg_arch_right" );
    _unknown_0F85( "trigger_multiple_bcs_us_building_archway_left", "blg_arch_left" );
    _unknown_0F91( "trigger_multiple_bcs_us_building_mansion_whitestripe_east", "blg_mn_whtstrp_e" );
    _unknown_0F9D( "trigger_multiple_bcs_us_building_mansion_fountainfrontyard_east", "blg_mn_ftn_e" );
    _unknown_0FA9( "trigger_multiple_bcs_us_building_mansion_lightbrown_west", "blg_mn_ltbrwn_w" );
    _unknown_0FB5( "trigger_multiple_bcs_us_building_mansion_brickwhitetrim_west", "blg_mn_bkwtrm_w" );
    _unknown_0FC1( "trigger_multiple_bcs_us_landmark_median", "lm_med" );
    _unknown_0FCD( "trigger_multiple_bcs_us_landmark_parkinglot_eastside", "lm_parkinglot_e" );
    _unknown_0FD9( "trigger_multiple_bcs_us_landmark_sign_arcadia", "lm_sign_arc" );
    _unknown_0FE5( "trigger_multiple_bcs_us_landmark_archway_large", "lm_arch_lg" );
    _unknown_0FF1( "trigger_multiple_bcs_us_landmark_golfcourse_green", "lm_golfcourse_green" );
    _unknown_0FFD( "trigger_multiple_bcs_us_landmark_barricade_police", "lm_barr_police" );
    _unknown_1009( "trigger_multiple_bcs_us_landmark_guardhouse", "lm_guardhouse" );
    _unknown_1015( "trigger_multiple_bcs_us_landmark_planecrash_tailsection", "lm_plane_tailsec" );
    _unknown_1021( "trigger_multiple_bcs_us_landmark_planecrash_engine", "lm_plane_engine" );
    _unknown_102D( "trigger_multiple_bcs_us_vehicle_firetruck", "vh_firetruck" );
    _unknown_1039( "trigger_multiple_bcs_us_building_house_red_porch", "blg_house_rd_prch" );
    _unknown_1045( "trigger_multiple_bcs_us_building_house_grey_patio", "blg_house_gry_ptio" );
    _unknown_1051( "trigger_multiple_bcs_us_building_inside_pooltable", "blg_ins_pooltbl" );
    _unknown_105D( "trigger_multiple_bcs_us_building_inside_minibar", "blg_ins_minibar" );
    _unknown_1069( "trigger_multiple_bcs_us_building_inside_winecellar", "blg_ins_winecllr" );
    _unknown_1075( "trigger_multiple_bcs_us_building_inside_diningroom", "blg_ins_dngrm" );
    _unknown_1081( "trigger_multiple_bcs_us_building_inside_kitchen", "blg_ins_ktchn" );
    _unknown_108D( "trigger_multiple_bcs_us_landmark_apartments_sign", "lm_apt_sign" );
    _unknown_1099( "trigger_multiple_bcs_us_landmark_fence_white", "lm_fence_wht" );
    _unknown_10A5( "trigger_multiple_bcs_us_landmark_wall_stone", "lm_wall_stn" );
    _unknown_10B1( "trigger_multiple_bcs_us_building_inside_balcony_south", "blg_ins_bal_s" );
    _unknown_10BD( "trigger_multiple_bcs_us_building_inside_balcony_farside", "blg_ins_bal_far" );
    _unknown_10C9( "trigger_multiple_bcs_us_landmark_copymachine", "lm_copymach" );
    _unknown_10D5( "trigger_multiple_bcs_us_building_inside_windows_rightside", "blg_ins_wndws_rside" );
    _unknown_10E1( "trigger_multiple_bcs_us_building_inside_office_glass_right", "blg_ins_off_gls_rside" );
    _unknown_10ED( "trigger_multiple_bcs_us_building_inside_office_glass_left", "blg_ins_off_gls_lside" );
    _unknown_10F9( "trigger_multiple_bcs_us_building_inside_cubicles_middle", "blg_ins_cubes_mid" );
    _unknown_1105( "trigger_multiple_bcs_us_building_inside_cubicles_right", "blg_ins_cubes_rside" );
    _unknown_1111( "trigger_multiple_bcs_us_building_inside_cubicles_left", "blg_ins_cubes_lside" );
    _unknown_111D( "trigger_multiple_bcs_us_landmark_shelves_middle", "lm_shlvs_mid" );
    _unknown_1129( "trigger_multiple_bcs_us_landmark_shelves_left", "lm_shlvs_lside" );
    _unknown_1135( "trigger_multiple_bcs_us_landmark_shelves_right", "lm_shlvs_rside" );
    _unknown_1141( "trigger_multiple_bcs_us_vehicle_car_burning", "vh_car_brng" );
    _unknown_114D( "trigger_multiple_bcs_us_vehicle_tank", "vh_tank" );
    _unknown_1159( "trigger_multiple_bcs_us_building_airport_terminal_2ndfloor", "blg_airport_term_2f" );
    _unknown_1165( "trigger_multiple_bcs_us_landmark_supportbeams_orange", "lm_sprtbms_orange" );
    _unknown_1171( "trigger_multiple_bcs_us_landmark_luggagecart", "lm_lugcrt_long" );
    _unknown_117D( "trigger_multiple_bcs_us_building_door", "callout_loc_door_report" );
    _unknown_1189( "trigger_multiple_bcs_taskforce_building_door", "callout_loc_door_report" );
    _unknown_1195( "trigger_multiple_bcs_tfstealth_building_door", "callout_loc_door_report" );
    _unknown_11A1( "trigger_multiple_bcs_us_building_1stfloor", "callout_loc_1st_report" );
    _unknown_11AD( "trigger_multiple_bcs_taskforce_building_1stfloor", "callout_loc_1st_report" );
    _unknown_11B9( "trigger_multiple_bcs_tfstealth_building_1stfloor", "callout_loc_1st_report" );
    _unknown_11C5( "trigger_multiple_bcs_us_building_1stfloor_door_leftside", "callout_loc_door_1st_left_report" );
    _unknown_11D1( "trigger_multiple_bcs_taskforce_building_1stfloor_door_leftside", "callout_loc_door_1st_left_report" );
    _unknown_11DD( "trigger_multiple_bcs_tfstealth_building_1stfloor_door_leftside", "callout_loc_door_1st_left_report" );
    _unknown_11E9( "trigger_multiple_bcs_us_building_1stfloor_door_rightside", "callout_loc_door_1st_right_report" );
    _unknown_11F5( "trigger_multiple_bcs_taskforce_building_1stfloor_door_rightside", "callout_loc_door_1st_right_report" );
    _unknown_1201( "trigger_multiple_bcs_tfstealth_building_1stfloor_door_rightside", "callout_loc_door_1st_right_report" );
    _unknown_120D( "trigger_multiple_bcs_us_building_1stfloor_window_leftside", "callout_loc_wndw_1st_left_report" );
    _unknown_1219( "trigger_multiple_bcs_taskforce_building_1stfloor_window_leftside", "callout_loc_wndw_1st_left_report" );
    _unknown_1225( "trigger_multiple_bcs_tfstealth_building_1stfloor_window_leftside", "callout_loc_wndw_1st_left_report" );
    _unknown_1231( "trigger_multiple_bcs_us_building_1stfloor_window_rightside", "callout_loc_wndw_1st_right_report" );
    _unknown_123D( "trigger_multiple_bcs_taskforce_building_1stfloor_window_rightside", "callout_loc_wndw_1st_right_report" );
    _unknown_1249( "trigger_multiple_bcs_tfstealth_building_1stfloor_window_rightside", "callout_loc_wndw_1st_right_report" );
    _unknown_1255( "trigger_multiple_bcs_us_building_2ndfloor", "callout_loc_2nd_report" );
    _unknown_1261( "trigger_multiple_bcs_taskforce_building_2ndfloor", "callout_loc_2nd_report" );
    _unknown_126D( "trigger_multiple_bcs_tfstealth_building_2ndfloor", "callout_loc_2nd_report" );
    _unknown_1279( "trigger_multiple_bcs_us_building_2ndfloor_door", "callout_loc_door_2nd_report" );
    _unknown_1285( "trigger_multiple_bcs_taskforce_building_2ndfloor_door", "callout_loc_door_2nd_report" );
    _unknown_1291( "trigger_multiple_bcs_tfstealth_building_2ndfloor_door", "callout_loc_door_2nd_report" );
    _unknown_129D( "trigger_multiple_bcs_us_building_2ndfloor_window", "callout_loc_wndw_2nd_report" );
    _unknown_12A9( "trigger_multiple_bcs_taskforce_building_2ndfloor_window", "callout_loc_wndw_2nd_report" );
    _unknown_12B5( "trigger_multiple_bcs_tfstealth_building_2ndfloor_window", "callout_loc_wndw_2nd_report" );
    _unknown_12C1( "trigger_multiple_bcs_us_building_2ndfloor_window_leftside", "callout_loc_wndw_2nd_left_report" );
    _unknown_12CD( "trigger_multiple_bcs_taskforce_building_2ndfloor_window_leftside", "callout_loc_wndw_2nd_left_report" );
    _unknown_12D9( "trigger_multiple_bcs_tfstealth_building_2ndfloor_window_leftside", "callout_loc_wndw_2nd_left_report" );
    _unknown_12E5( "trigger_multiple_bcs_us_building_2ndfloor_window_rightside", "callout_loc_wndw_2nd_right_report" );
    _unknown_12F1( "trigger_multiple_bcs_taskforce_building_2ndfloor_window_rightside", "callout_loc_wndw_2nd_right_report" );
    _unknown_12FD( "trigger_multiple_bcs_tfstealth_building_2ndfloor_window_rightside", "callout_loc_wndw_2nd_right_report" );
}
