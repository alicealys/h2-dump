// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B8EC( var_0 )
{
    var_1 = _id_BE7D( var_0 );

    if ( var_1 >= 0 )
        return var_1;

    switch ( var_0 )
    {
        case "toy_glass120x110":
            _id_A81E( "120x110" );
            break;
        case "toy_glass120x44":
            _id_A81E( "120x44" );
            break;
        case "toy_glass56x59":
            _id_A81E( "56x59" );
            break;
        case "toy_glass74x110":
            _id_A81E( "74x110" );
            break;
        case "toy_glass74x44":
            _id_A81E( "74x44" );
            break;
        case "toy_dt_mirror":
            _id_AEC1( "" );
            break;
        case "toy_dt_mirror_large":
            _id_AEC1( "_large" );
            break;
        case "toy_tubetv_tv1":
            _id_D488( "tv1" );
            break;
        case "toy_tubetv_tv2":
            _id_D488( "tv2" );
            break;
        case "toy_tv_flatscreen_01":
            _id_B2E6( "01", "" );
            break;
        case "toy_tv_flatscreen_02":
            _id_B2E6( "02", "" );
            break;
        case "toy_tv_flatscreen_wallmount_01":
            _id_B2E6( "01", "wallmount_" );
            break;
        case "toy_tv_flatscreen_wallmount_02":
            _id_B2E6( "02", "wallmount_" );
            break;
        case "toy_transformer_ratnest01":
            _id_C3F8( var_0, "utility_transformer_ratnest01_dest" );
            break;
        case "toy_transformer_small01":
            _id_D3D5( var_0, "h1_utility_transformer_sm_dest_01" );
            break;
        case "toy_telegraphpole_transformer01":
            _id_D3D5( var_0, "h2_fav_telegraphpole_transformer_destroy_01" );
            break;
        case "toy_telegraphpole_transformer02":
            _id_D3D5( var_0, "h2_fav_telegraphpole_transformer_destroy_02" );
            break;
        case "toy_generator":
            _id_C550( var_0 );
            break;
        case "toy_generator_on":
            _id_BB2C( var_0 );
            break;
        case "toy_oxygen_tank_01":
            _id_D44C( "01" );
            break;
        case "toy_oxygen_tank_02":
            _id_D44C( "02" );
            break;
        case "toy_electricbox2":
            _id_ABF9( var_0 );
            break;
        case "toy_electricbox4":
            _id_B2D7( var_0 );
            break;
        case "toy_airconditioner":
            _id_BC80( var_0 );
            break;
        case "toy_ceiling_fan":
            _id_AE4B( var_0 );
            break;
        case "toy_ceiling_fan_blades01":
            _id_A839( var_0 );
            break;
        case "toy_ceiling_fan_blades02":
            _id_BF4F( var_0 );
            break;
        case "toy_ceiling_fan_housing01":
            _id_AA2F( var_0 );
            break;
        case "toy_ceiling_fan_housing01_lit":
            toy_ceiling_fan_housing01_lit( var_0 );
            break;
        case "toy_ceiling_fan_housing02":
            _id_AB77( var_0 );
            break;
        case "toy_wall_fan":
            _id_BED4( var_0 );
            break;
        case "toy_propane_tank02":
            _id_AE02( var_0 );
            break;
        case "toy_propane_tank02_small":
            _id_C54E( var_0 );
            break;
        case "toy_copier":
            _id_A91A( var_0 );
            break;
        case "toy_firehydrant":
            _id_C226( var_0 );
            break;
        case "toy_parkingmeter":
            _id_AD18( var_0 );
            break;
        case "toy_mailbox":
            _id_CDF5( var_0 );
            break;
        case "toy_mailbox2_black":
            _id_B302( "black" );
            break;
        case "toy_mailbox2_green":
            _id_B302( "green" );
            break;
        case "toy_mailbox2_yellow":
            _id_B302( "yellow" );
            break;
        case "toy_newspaper_stand_red":
            _id_CDDB( var_0 );
            break;
        case "toy_newspaper_stand_blue":
            _id_BA85( var_0 );
            break;
        case "toy_filecabinet":
            _id_D00A( var_0 );
            break;
        case "toy_trashbin_01":
            _id_D144( var_0 );
            break;
        case "toy_trashbin_02":
            _id_B56A( var_0 );
            break;
        case "toy_recyclebin_01":
            _id_AA1B( var_0 );
            break;
        case "toy_trashcan_metal_closed":
            _id_C6AB( var_0 );
            break;
        case "toy_water_collector":
            _id_B00A( var_0 );
            break;
        case "toy_foliage_tree_oak_1":
            _id_CDC5( var_0 );
            break;
        case "toy_usa_gas_station_trash_bin_01":
            _id_CD0D( var_0 );
            break;
        case "toy_usa_gas_station_trash_bin_02":
            _id_AE2C( var_0 );
            break;
        case "toy_light_ceiling_round":
            _id_BD45( var_0 );
            break;
        case "toy_light_ceiling_fluorescent":
            _id_B8A8( var_0 );
            break;
        case "toy_light_ceiling_fluorescent_spotlight":
            _id_C69D( var_0 );
            break;
        case "toy_light_ceiling_fluorescent_single":
            _id_B0EB( var_0 );
            break;
        case "toy_light_ceiling_fluorescent_single_spotlight":
            _id_C47E( var_0 );
            break;
        case "toy_bookstore_bookstand4_books":
            _id_C7AC( var_0 );
            break;
        case "toy_locker_double":
            _id_D552( var_0 );
            break;
        case "toy_chicken":
            _id_C4BD( "" );
            break;
        case "toy_chicken_white":
            _id_C4BD( "_white" );
            break;
        case "toy_chicken_black_white":
            _id_C4BD( "_black_white" );
            break;
        case "vehicle_bus_destructible":
            _id_B5AD();
            break;
        case "vehicle_80s_sedan1_green":
            _id_B147( "green" );
            break;
        case "vehicle_80s_sedan1_red":
            _id_B147( "red" );
            break;
        case "vehicle_80s_sedan1_silv":
            _id_B147( "silv" );
            break;
        case "vehicle_80s_sedan1_tan":
            _id_B147( "tan" );
            break;
        case "vehicle_80s_sedan1_yel":
            _id_B147( "yel" );
            break;
        case "vehicle_80s_sedan1_brn":
            _id_B147( "brn" );
            break;
        case "vehicle_80s_hatch1_green":
            _id_CA76( "green" );
            break;
        case "vehicle_80s_hatch1_red":
            _id_CA76( "red" );
            break;
        case "vehicle_80s_hatch1_silv":
            _id_CA76( "silv" );
            break;
        case "vehicle_80s_hatch1_tan":
            _id_CA76( "tan" );
            break;
        case "vehicle_80s_hatch1_yel":
            _id_CA76( "yel" );
            break;
        case "vehicle_80s_hatch1_brn":
            _id_CA76( "brn" );
            break;
        case "vehicle_80s_hatch2_green":
            _id_C91D( "green" );
            break;
        case "vehicle_80s_hatch2_red":
            _id_C91D( "red" );
            break;
        case "vehicle_80s_hatch2_silv":
            _id_C91D( "silv" );
            break;
        case "vehicle_80s_hatch2_tan":
            _id_C91D( "tan" );
            break;
        case "vehicle_80s_hatch2_yel":
            _id_C91D( "yel" );
            break;
        case "vehicle_80s_hatch2_brn":
            _id_C91D( "brn" );
            break;
        case "vehicle_80s_wagon1_green":
            _id_C470( "green" );
            break;
        case "vehicle_80s_wagon1_red":
            _id_C470( "red" );
            break;
        case "vehicle_80s_wagon1_silv":
            _id_C470( "silv" );
            break;
        case "vehicle_80s_wagon1_tan":
            _id_C470( "tan" );
            break;
        case "vehicle_80s_wagon1_yel":
            _id_C470( "yel" );
            break;
        case "vehicle_80s_wagon1_brn":
            _id_C470( "brn" );
            break;
        case "vehicle_small_hatch_blue":
            _id_BAA3( "blue" );
            break;
        case "vehicle_small_hatch_green":
            _id_BAA3( "green" );
            break;
        case "vehicle_small_hatch_turq":
            _id_BAA3( "turq" );
            break;
        case "vehicle_small_hatch_white":
            _id_BAA3( "white" );
            break;
        case "vehicle_pickup":
            _id_C9E8( var_0 );
            break;
        case "vehicle_laatpv":
            _id_C5FD( var_0 );
            break;
        case "vehicle_moving_truck":
            _id_CE16( var_0 );
            break;
        case "vehicle_bm21_mobile_bed":
            _id_BD36( var_0, "vehicle_bm21_mobile_bed_dstry" );
            break;
        case "vehicle_bm21_cover":
            _id_BD36( var_0, "vehicle_bm21_mobile_cover_dstry" );
            break;
        case "vehicle_luxurysedan_2008":
            vehicle_luxurysedan( "" );
            break;
        case "vehicle_luxurysedan_2008_gray":
            vehicle_luxurysedan( "_gray" );
            break;
        case "vehicle_luxurysedan_2008_white":
            vehicle_luxurysedan( "_white" );
            break;
        case "vehicle_uaz_winter":
            _id_D081( var_0 );
            break;
        case "vehicle_uaz_fabric":
            _id_B99B( var_0 );
            break;
        case "vehicle_uaz_hardtop":
            _id_C526( var_0 );
            break;
        case "vehicle_uaz_open":
            _id_C233( var_0 );
            break;
        case "vehicle_policecar":
            _id_C21C( var_0 );
            break;
        case "vehicle_policecar_russia":
            _id_D310( var_0 );
            break;
        case "vehicle_taxi":
            _id_D3E1( "" );
            break;
        case "vehicle_taxi_dcburning":
            _id_D3E1( "_dcburning" );
            break;
        case "vehicle_taxi_van":
            vehicle_taxi_van( var_0 );
        case "vehicle_mig29_landed":
            _id_AF4F( var_0 );
            break;
        case "vehicle_mack_truck_short_snow":
            _id_B238( "snow" );
            break;
        case "vehicle_mack_truck_short_green":
            _id_B238( "green" );
            break;
        case "vehicle_mack_truck_short_white":
            _id_B238( "white" );
            break;
        case "vehicle_motorcycle_01":
            _id_B11B( "01" );
            break;
        case "vehicle_motorcycle_02":
            _id_B11B( "02" );
            break;
        case "vehicle_subcompact_black":
            _id_C906( "black" );
            break;
        case "vehicle_subcompact_blue":
            _id_C906( "blue" );
            break;
        case "vehicle_subcompact_dark_gray":
            _id_C906( "dark_gray" );
            break;
        case "vehicle_subcompact_deep_blue":
            _id_C906( "deep_blue" );
            break;
        case "vehicle_subcompact_gold":
            _id_C906( "gold" );
            break;
        case "vehicle_subcompact_gray":
            _id_C906( "gray" );
            break;
        case "vehicle_subcompact_green":
            _id_C906( "green" );
            break;
        case "vehicle_subcompact_mica":
            _id_C906( "mica" );
            break;
        case "vehicle_subcompact_slate":
            _id_C906( "slate" );
            break;
        case "vehicle_subcompact_tan":
            _id_C906( "tan" );
            break;
        case "vehicle_subcompact_white":
            _id_C906( "white" );
            break;
        case "vehicle_coupe_black":
            _id_B451( "black" );
            break;
        case "vehicle_coupe_blue":
            _id_B451( "blue" );
            break;
        case "vehicle_coupe_dark_gray":
            _id_B451( "dark_gray" );
            break;
        case "vehicle_coupe_deep_blue":
            _id_B451( "deep_blue" );
            break;
        case "vehicle_coupe_gold":
            _id_B451( "gold" );
            break;
        case "vehicle_coupe_gray":
            _id_B451( "gray" );
            break;
        case "vehicle_coupe_green":
            _id_B451( "green" );
            break;
        case "vehicle_coupe_mica":
            _id_B451( "mica" );
            break;
        case "vehicle_coupe_slate":
            _id_B451( "slate" );
            break;
        case "vehicle_coupe_tan":
            _id_B451( "tan" );
            break;
        case "vehicle_coupe_white":
            _id_B451( "white" );
            break;
        case "vehicle_van_black":
            _id_C785( "black" );
            break;
        case "vehicle_van_blue":
            _id_C785( "blue" );
            break;
        case "vehicle_van_dark_gray":
            _id_C785( "dark_gray" );
            break;
        case "vehicle_van_deep_blue":
            _id_C785( "deep_blue" );
            break;
        case "vehicle_van_gold":
            _id_C785( "gold" );
            break;
        case "vehicle_van_gray":
            _id_C785( "gray" );
            break;
        case "vehicle_van_green":
            _id_C785( "green" );
            break;
        case "vehicle_van_mica":
            _id_C785( "mica" );
            break;
        case "vehicle_van_slate":
            _id_C785( "slate" );
            break;
        case "vehicle_van_tan":
            _id_C785( "tan" );
            break;
        case "vehicle_van_white":
            _id_C785( "white" );
            break;
        case "vehicle_suburban":
            _id_BE0E( var_0, "" );
            break;
        case "vehicle_suburban_beige":
            _id_BE0E( var_0, "_beige" );
            break;
        case "vehicle_suburban_dull":
            _id_BE0E( var_0, "_dull" );
            break;
        case "vehicle_suburban_red":
            _id_BE0E( var_0, "_red" );
            break;
        case "vehicle_snowmobile":
            _id_B32A( var_0 );
            break;
        case "destructible_gaspump":
            _id_CDE1( var_0 );
            break;
        case "destructible_electrical_transformer_large":
            _id_B138( var_0 );
            break;
        default:
            break;
    }

    var_1 = _id_BE7D( var_0 );
    return var_1;
}

_id_BE7D( var_0 )
{
    if ( !isdefined( level.destructible_type ) )
        return -1;

    if ( level.destructible_type.size == 0 )
        return -1;

    for ( var_1 = 0; var_1 < level.destructible_type.size; var_1++ )
    {
        if ( var_0 == level.destructible_type[var_1].v["type"] )
            return var_1;
    }

    return -1;
}

_id_A81E( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_glass" + var_0, "tag_origin", 50 );
    common_scripts\_destructible::destructible_splash_damage_scaler( 5 );
    common_scripts\_destructible::destructible_sound( "building_glass_shatter" );
    var_1 = "tag_glass";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_1 + "_d", undefined, 200, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1, "fx/props/highrise_glass_" + var_0 );
    common_scripts\_destructible::destructible_sound( "building_glass_blowout" );
    common_scripts\_destructible::destructible_state( var_1 + "_des", undefined, 100, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1, "fx/props/highrise_glass_" + var_0 + "_edge" );
    common_scripts\_destructible::destructible_sound( "building_glass_blowout" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_AEC1( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_dt_mirror" + var_0, "tag_origin", 15, undefined, 32 );
    common_scripts\_destructible::destructible_splash_damage_scaler( 5 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mirror_shatter" + var_0 );
    common_scripts\_destructible::destructible_sound( "h2_explosion_mirror" );
    common_scripts\_destructible::destructible_state( "tag_origin", "dt_mirror" + var_0 + "_dam", 150, undefined );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mirror_dt_panel" + var_0 + "_broken" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 32, 48, undefined, 0 );
    common_scripts\_destructible::destructible_state( "tag_origin", "dt_mirror" + var_0 + "_des", 150, undefined );
}

_id_D488( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_tubetv_" + var_0, "tag_origin", 1, undefined, 32 );
    common_scripts\_destructible::destructible_splash_damage_scaler( 1 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tv_explosion" );
    common_scripts\_destructible::destructible_sound( "tv_shot_burst" );
    common_scripts\_destructible::destructible_explode( 20, 2000, 9, 9, 3, 3, undefined, 12 );
    common_scripts\_destructible::destructible_state( undefined, "com_" + var_0 + "_d", undefined, undefined, "no_melee" );
}

_id_B2E6( var_0, var_1 )
{
    common_scripts\_destructible::destructible_create( "toy_tv_flatscreen_" + var_1 + var_0, "tag_origin", 1, undefined, 32 );
    common_scripts\_destructible::destructible_splash_damage_scaler( 1 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tv_flatscreen_explosion" );
    common_scripts\_destructible::destructible_sound( "tv_shot_burst" );
    common_scripts\_destructible::destructible_explode( 20, 2000, 10, 10, 3, 3, undefined, 15 );
    common_scripts\_destructible::destructible_state( undefined, "ma_flatscreen_tv_" + var_1 + "broken_" + var_0, 200, undefined, "no_melee" );
}

_id_C3F8( var_0, var_1 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/smoke/transformer_damage_whitesmoke_ratnest01" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/smoke/transformer_damage_sparks" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/smoke/transformer_damage_blacksmoke_ratnest01" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/explosions/transformer_spark_runner_ratnest01", 1 );
    common_scripts\_destructible::destructible_loopsound( "transformer_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 24, 0.2 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/explosions/transformer_spark_runner_ratnest01", 1 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/fire/transformer_blacksmoke_fire_ratnest01" );
    common_scripts\_destructible::destructible_sound( "transformer01_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "transformer_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 24, 0.2, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/transformer_explosion_ratnest01", 0 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/smoke/transformer_damage_sparks" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/smoke/transformer_damage_whitesmoke_ratnest01" );
    common_scripts\_destructible::destructible_sound( "transformer01_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 150, 256, 16, 100, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, var_1, undefined, undefined, "no_melee" );
}

_id_D3D5( var_0, var_1 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/smoke/transformer_damage_whitesmoke" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/smoke/transformer_damage_blacksmoke" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/explosions/transformer_spark_runner", 0.5 );
    common_scripts\_destructible::destructible_loopsound( "transformer_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 24, 0.2 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/explosions/transformer_spark_runner", 0.5 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/fire/transformer_small_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "transformer01_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "transformer_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 24, 0.2, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/transformer_explosion", 0 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/fire/firelp_small_pm" );
    common_scripts\_destructible::destructible_sound( "transformer01_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 150, 256, 16, 100, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, var_1, undefined, undefined, "no_melee" );
}

#using_animtree("destructibles");

_id_C550( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_vibrate", 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx4", "fx/explosions/generator_spark_runner", 0.9 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx3", "fx/explosions/generator_spark_runner", 0.6123 );
    common_scripts\_destructible::destructible_loopsound( "generator_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 24, 0.2, 64, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/generator_explosion", 0 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/fire/generator_des_fire" );
    common_scripts\_destructible::destructible_sound( "generator01_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 128, 128, 16, 50, undefined, 0 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "generator_explode" ), #animtree, "setanimknob", undefined, undefined, "generator_explode" );
    common_scripts\_destructible::destructible_state( undefined, "machinery_generator_des", undefined, undefined, "no_melee" );
}

_id_BB2C( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_vibrate", 0, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_exhaust", 0.4 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "generator_vibration" ), #animtree, "setanimknob", undefined, undefined, "generator_vibration" );
    common_scripts\_destructible::destructible_loopsound( "generator_running" );
    common_scripts\_destructible::destructible_state( "tag_origin", "machinery_generator", 150 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_loopsound( "generator_running" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_loopsound( "generator_damage_loop" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx4", "fx/explosions/generator_spark_runner", 0.9 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx3", "fx/explosions/generator_spark_runner", 0.6123 );
    common_scripts\_destructible::destructible_loopsound( "generator_spark_loop" );
    common_scripts\_destructible::destructible_loopsound( "generator_damage_loop" );
    common_scripts\_destructible::destructible_healthdrain( 24, 0.2, 64, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/generator_explosion", 0 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/fire/generator_des_fire" );
    common_scripts\_destructible::destructible_sound( "generator01_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 128, 128, 16, 50, undefined, 0 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "generator_explode" ), #animtree, "setanimknob", undefined, 0, "generator_explode" );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "generator_explode_02" ), #animtree, "setanimknob", undefined, 0, "generator_explode_02" );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "generator_explode_03" ), #animtree, "setanimknob", undefined, 0, "generator_explode_03" );
    common_scripts\_destructible::destructible_state( undefined, "machinery_generator_des", undefined, undefined, "no_melee" );
}

_id_D44C( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_oxygen_tank_" + var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 64, "allies" );
    common_scripts\_destructible::destructible_loopsound( "oxygen_tank_leak_loop" );
    common_scripts\_destructible::destructible_fx( "tag_cap", "fx/props/oxygen_tank" + var_0 + "_cap" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/distortion/oxygen_tank_leak", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, "machinery_oxygen_tank" + var_0 + "_dam", 300, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/oxygen_tank" + var_0 + "_explosion", 0 );
    common_scripts\_destructible::destructible_sound( "oxygen_tank_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 150, 256, 16, 150, undefined, 32 );
    common_scripts\_destructible::destructible_state( undefined, "machinery_oxygen_tank" + var_0 + "_des", undefined, undefined, "no_melee" );
}

_id_ABF9( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/electricbox4_explode", undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_sound( "h2_explosion_fusebox_close" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 32, 48, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "me_electricbox2_dest", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", "me_electricbox2_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_upper", "me_electricbox2_door_upper", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_B2D7( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/electricbox4_explode", undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_sound( "h2_explosion_fusebox_close" );
    common_scripts\_destructible::destructible_explode( 20, 2000, 32, 32, 32, 48, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "me_electricbox4_dest", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", "me_electricbox4_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_BC80( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 0, undefined, 32 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "ex_airconditioner_fan" ), #animtree, "setanimknob", undefined, undefined, "ex_airconditioner_fan" );
    common_scripts\_destructible::destructible_loopsound( "airconditioner_running_loop" );
    common_scripts\_destructible::destructible_state( "tag_origin", "com_ex_airconditioner", 300 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/airconditioner_ex_explode", undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_sound( "airconditioner_burst" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 32, 48, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "com_ex_airconditioner_dam", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", "com_ex_airconditioner_fan", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_AE4B( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 0, undefined, 32 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "me_fanceil1_spin" ), #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin" );
    common_scripts\_destructible::destructible_state( "tag_origin", "me_fanceil1", 150 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "me_fanceil1_spin_stop" ), #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin_stop" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/ceiling_fan_explosion" );
    common_scripts\_destructible::destructible_sound( "ceiling_fan_sparks" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 5, 32, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "me_fanceil1_des", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", undefined, 150, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( undefined, "me_fanceil1_blade", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_A839( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 0, undefined, 32 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "me_fanceil1_spin" ), #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin" );
    common_scripts\_destructible::destructible_state( "tag_origin", "h2_us_ceiling_fan_blades_01_animated", 150 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "me_fanceil1_spin_stop" ), #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin_stop" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/h2_us_ceiling_fan_01_dest" );
    common_scripts\_destructible::destructible_sound( "ceiling_fan_blades" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 5, 32, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "h2_us_ceiling_fan_blades_01_dest_animated", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", undefined, 150, undefined, undefined, undefined, 1.0 );
}

_id_BF4F( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 0, undefined, 32 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "me_fanceil1_spin" ), #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin" );
    common_scripts\_destructible::destructible_state( "tag_origin", "h2_us_ceiling_fan_blades_02_animated", 150 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "me_fanceil1_spin_stop" ), #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin_stop" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/h2_us_ceiling_fan_02_dest" );
    common_scripts\_destructible::destructible_sound( "ceiling_fan_blades" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 5, 32, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "h2_us_ceiling_fan_blades_02_dest_animated", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", undefined, 150, undefined, undefined, undefined, 1.0 );
}

_id_AA2F( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 0, undefined );
    common_scripts\_destructible::destructible_state( "tag_origin", "h2_us_ceiling_fan_housing_01_animated", 150 );
    common_scripts\_destructible::destructible_fx( "tag_origin", "fx/explosions/h2_us_ceiling_fan_housing_01_dest" );
    common_scripts\_destructible::destructible_sound( "ceiling_fan_sparks" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 5, 32, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "h2_us_ceiling_fan_housing_01_dest", undefined, undefined, "no_melee" );
}

toy_ceiling_fan_housing01_lit( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 0, undefined, 32 );
    common_scripts\_destructible::destructible_state( "tag_origin", "h2_us_ceiling_fan_housing_01_lit_animated", 150 );
    common_scripts\_destructible::destructible_fx( "tag_origin", "fx/explosions/h2_us_ceiling_fan_housing_01_dest" );
    common_scripts\_destructible::destructible_sound( "ceiling_fan_sparks" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 5, 32, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "h2_us_ceiling_fan_housing_01_dest", undefined, undefined, "no_melee" );
}

_id_AB77( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 0, undefined, 32 );
    common_scripts\_destructible::destructible_state( "tag_origin", "h2_us_ceiling_fan_housing_02", 150 );
    common_scripts\_destructible::destructible_fx( "tag_origin", "fx/explosions/h2_us_ceiling_fan_housing_01_dest" );
    common_scripts\_destructible::destructible_sound( "ceiling_fan_sparks" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 5, 32, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "h2_us_ceiling_fan_housing_02_dest", undefined, undefined, "no_melee" );
}

_id_BED4( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_swivel", 0, undefined, 32 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "wall_fan_rotate" ), #animtree, "setanimknob", undefined, undefined, "wall_fan_rotate" );
    common_scripts\_destructible::destructible_loopsound( "wall_fan_fanning" );
    common_scripts\_destructible::destructible_state( "tag_wobble", "cs_wallfan1", 150 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "wall_fan_stop" ), #animtree, "setanimknob", undefined, undefined, "wall_fan_wobble" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/wallfan_explosion_dmg" );
    common_scripts\_destructible::destructible_sound( "wall_fan_sparks" );
    common_scripts\_destructible::destructible_state( "tag_wobble", "cs_wallfan1", 150, undefined, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/wallfan_explosion_des" );
    common_scripts\_destructible::destructible_sound( "wall_fan_break" );
    common_scripts\_destructible::destructible_state( undefined, "cs_wallfan1_dmg", undefined, undefined, "no_melee" );
}

_id_AE02( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 50, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 5 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_gas_leak_loop" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/distortion/propane_cap_distortion_h2", 0.1 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/fire/propane_capfire_leak_h2", 0.1 );
    common_scripts\_destructible::destructible_sound( "propanetank02_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_fire_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 300, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_physics( "tag_cap", ( 50, 0, 0 ) );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/fire/propane_capfire_h2", 0.6 );
    common_scripts\_destructible::destructible_fx( "tag_valve", "fx/fire/propane_valvefire_flareup_h2" );
    common_scripts\_destructible::destructible_physics( "tag_valve", ( 50, 0, 0 ) );
    common_scripts\_destructible::destructible_fx( "tag_cap", "fx/fire/propane_capfire_flareup_h2" );
    common_scripts\_destructible::destructible_loopfx( "tag_valve", "fx/fire/propane_valvefire_h2", 0.1 );
    common_scripts\_destructible::destructible_sound( "propanetank02_flareup2_med" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_fire_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 150, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/fire/propane_small_fire_h2" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/propane_large_exp_fireball" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/propane_large_exp_h2", 0 );
    common_scripts\_destructible::destructible_sound( "propanetank02_explode" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_fire_blown_med" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 600, 600, 32, 300 );
    common_scripts\_destructible::destructible_state( undefined, "com_propane_tank02_DES", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_valve", "com_propane_tank02_valve" );
    common_scripts\_destructible::destructible_part( "tag_cap", "com_propane_tank02_cap" );
}

_id_C54E( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 50, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 10 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_gas_leak_loop" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/distortion/propane_cap_distortion_h2", 0.1 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/fire/propane_capfire_leak_h2", 0.1 );
    common_scripts\_destructible::destructible_sound( "propanetank02_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_fire_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_physics( "tag_cap", ( 50, 0, 0 ) );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/fire/propane_capfire_h2", 0.6 );
    common_scripts\_destructible::destructible_fx( "tag_valve", "fx/fire/propane_valvefire_flareup_h2" );
    common_scripts\_destructible::destructible_physics( "tag_valve", ( 50, 0, 0 ) );
    common_scripts\_destructible::destructible_fx( "tag_cap", "fx/fire/propane_capfire_flareup_h2" );
    common_scripts\_destructible::destructible_loopfx( "tag_valve", "fx/fire/propane_valvefire_h2", 0.1 );
    common_scripts\_destructible::destructible_sound( "propanetank02_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_fire_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/fire/propane_small_fire_h2" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/propane_large_exp_h2", 0 );
    common_scripts\_destructible::destructible_loopsound( "fire_metal_large" );
    common_scripts\_destructible::destructible_sound( "propanetank02_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 400, 400, 32, 100 );
    common_scripts\_destructible::destructible_state( undefined, "com_propane_tank02_small_DES", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_valve", "com_propane_tank02_small_valve" );
    common_scripts\_destructible::destructible_part( "tag_cap", "com_propane_tank02_small_cap" );
}

_id_A91A( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_loopfx( "tag_left_feeder", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_left_feeder", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/props/photocopier_sparks", 3 );
    common_scripts\_destructible::destructible_loopsound( "copier_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 800, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/photocopier_exp", 0 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/photocopier_fire" );
    common_scripts\_destructible::destructible_sound( "copier_exp" );
    common_scripts\_destructible::destructible_loopsound( "copier_fire_loop" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 96, 96, 32, 48 );
    common_scripts\_destructible::destructible_state( undefined, "prop_photocopier_destroyed", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_left_feeder", "prop_photocopier_destroyed_left_feeder", 4, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_right_shelf", "prop_photocopier_destroyed_right_shelf", 4, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_top", "prop_photocopier_destroyed_top", 4, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_C226( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 11 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/props/firehydrant_leak", 0.1 );
    common_scripts\_destructible::destructible_loopsound( "firehydrant_spray_loop" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 800, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/firehydrant_exp", 0 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/firehydrant_spray_10sec", 0 );
    common_scripts\_destructible::destructible_sound( "firehydrant_gush" );
    common_scripts\_destructible::destructible_loopsound( "firehydrant_death_water_leak" );
    common_scripts\_destructible::destructible_explode( 17000, 18000, 96, 96, 32, 48 );
    common_scripts\_destructible::destructible_state( undefined, "com_firehydrant_dest", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", "com_firehydrant_dam", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_cap", "com_firehydrant_cap", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_AD18( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_meter", 120 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/parking_meter_coins", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/parking_meter_coins_exploded", 1, "splash" );
    common_scripts\_destructible::destructible_sound( "exp_parking_meter_sweet" );
    common_scripts\_destructible::destructible_explode( 2800, 3000, 64, 64, 0, 0, 1 );
    common_scripts\_destructible::destructible_state( undefined, "com_parkingmeter_damaged", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_state( undefined, "com_parkingmeter_destroyed", undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_part( "tag_cap", "com_parkingmeter_cap", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_CDF5( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 200 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mail_box_explode", 1 );
    common_scripts\_destructible::destructible_sound( "h2_exp_mailbox_metal" );
    common_scripts\_destructible::destructible_explode( 100, 2000, 64, 64, 0, 0 );
    common_scripts\_destructible::destructible_state( "tag_origin", "com_mailbox_dam" );
    common_scripts\_destructible::destructible_part( "tag_door", "com_mailbox_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_flag", "com_mailbox_flag", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_B302( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_mailbox2_" + var_0, "tag_origin", 120 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mail_box_explode", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mail_box_explode", 1, "splash" );
    common_scripts\_destructible::destructible_sound( "h2_exp_mailbox_metal" );
    common_scripts\_destructible::destructible_explode( 2800, 3000, 64, 64, 0, 0, 1 );
    common_scripts\_destructible::destructible_state( undefined, "mailbox_" + var_0 + "_dam", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_state( undefined, "mailbox_black_dest", undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_part( "tag_door", "mailbox_" + var_0 + "_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_flag", "mailbox_black_flag", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_CDDB( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120 );
    common_scripts\_destructible::destructible_fx( "tag_door", "fx/props/news_stand_paper_spill", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_sound( "h2_explosion_newspaper_redbox_metal" );
    common_scripts\_destructible::destructible_explode( 2500, 2501, 64, 64, 0, 0, 1 );
    common_scripts\_destructible::destructible_state( undefined, "com_newspaperbox_red_dam", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/news_stand_explosion", 1, "splash" );
    common_scripts\_destructible::destructible_state( undefined, "com_newspaperbox_red_des", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_door", "com_newspaperbox_red_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_BA85( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120 );
    common_scripts\_destructible::destructible_fx( "tag_door", "fx/props/news_stand_paper_spill_shatter", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_sound( "h2_explosion_newspaper_bluebox_metal" );
    common_scripts\_destructible::destructible_explode( 800, 2001, 64, 64, 0, 0, 1 );
    common_scripts\_destructible::destructible_state( undefined, "com_newspaperbox_blue_dam", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/news_stand_explosion", 1, "splash" );
    common_scripts\_destructible::destructible_state( undefined, "com_newspaperbox_blue_des", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_door", "com_newspaperbox_blue_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_D00A( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120 );
    common_scripts\_destructible::destructible_fx( "tag_drawer_lower", "fx/props/filecabinet_dam", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_sound( "h2_exp_filecabinet_metal" );
    common_scripts\_destructible::destructible_state( undefined, "com_filecabinetblackclosed_dam", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_drawer_upper", "fx/props/filecabinet_des", 1, "splash" );
    common_scripts\_destructible::destructible_sound( "h2_exp_filecabinet_metal" );
    common_scripts\_destructible::destructible_physics( "tag_drawer_upper", ( 50, -10, 5 ) );
    common_scripts\_destructible::destructible_state( undefined, "com_filecabinetblackclosed_des", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_drawer_upper", "com_filecabinetblackclosed_drawer", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_D144( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew_des", 1, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_sound( "exp_trashcan_sweet" );
    common_scripts\_destructible::destructible_explode( 1300, 1351, 1, 1, 10, 20 );
    common_scripts\_destructible::destructible_state( undefined, "com_trashbin01_dmg", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_fx", "com_trashbin01_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_B56A( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew_des", 1, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_sound( "exp_trashcan_sweet" );
    common_scripts\_destructible::destructible_explode( 600, 800, 1, 1, 10, 20 );
    common_scripts\_destructible::destructible_state( undefined, "com_trashbin02_dmg", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_fx", "com_trashbin02_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_AA1B( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew_des", 1, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_sound( "exp_trashcan_sweet" );
    common_scripts\_destructible::destructible_explode( 600, 651, 1, 1, 10, 20 );
    common_scripts\_destructible::destructible_state( undefined, "com_recyclebin01_dmg", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_fx", "com_recyclebin01_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_C6AB( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew_des", 1, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_sound( "exp_trashcan_sweet" );
    common_scripts\_destructible::destructible_explode( 600, 651, 1, 1, 10, 20 );
    common_scripts\_destructible::destructible_state( undefined, "com_trashcan_metal_with_trash", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_fx", "com_trashcan_metalLID", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_B00A( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 220, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/water_collector_explosion" );
    common_scripts\_destructible::destructible_sound( "h2_destruct_water_collector_plastic" );
    common_scripts\_destructible::destructible_explode( 500, 800, 32, 32, 1, 10, undefined, 32 );
    common_scripts\_destructible::destructible_state( undefined, "utility_water_collector_base_dest", undefined, undefined, "no_melee", undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_lid", undefined, 220, undefined, undefined, "no_melee", 1.0 );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_CDC5( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120, undefined, 32, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tree_trunk_explosion_oak_1", 1, "splash" );
    common_scripts\_destructible::destructible_sound( "large_oak_tree_impact" );
    common_scripts\_destructible::destructible_sound( "large_oak_tree_fall" );
    common_scripts\_destructible::destructible_explode( 600, 651, 1, 1, 10, 20 );
    common_scripts\_destructible::destructible_state( undefined, "foliage_tree_oak_1_destroyed_trunk", undefined, undefined, undefined, undefined, undefined, 0 );
}

_id_CD0D( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew_des", 1, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_explode( 600, 651, 1, 1, 10, 20 );
    common_scripts\_destructible::destructible_state( undefined, "usa_gas_station_trash_bin_01_base", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_fx", "usa_gas_station_trash_bin_01_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_AE2C( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 120, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx_high", "fx/props/garbage_spew_des", 1, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx_high", "fx/props/garbage_spew", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_explode( 600, 651, 1, 1, 10, 20 );
    common_scripts\_destructible::destructible_state( undefined, "usa_gas_station_trash_bin_02_base", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_fx_high", "usa_gas_station_trash_bin_02_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

_id_BD45( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/light_blowout_runner" );
    common_scripts\_destructible::destructible_state( undefined, "com_light_ceiling_round_off", undefined, undefined, "no_melee" );
}

_id_B8A8( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/light_fluorescent_blowout_runner" );
    common_scripts\_destructible::destructible_fx( "tag_swing_fx", "fx/misc/light_blowout_swinging_runner" );
    common_scripts\_destructible::destructible_lights_out( 16 );
    common_scripts\_destructible::destructible_explode( 20, 2000, 64, 64, 40, 80 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "light_fluorescent_swing" ), #animtree, "setanimknob", undefined, 0, "light_fluorescent_swing" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_fall", undefined, 0 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb", undefined, 0 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "light_fluorescent_swing_02" ), #animtree, "setanimknob", undefined, 1, "light_fluorescent_swing_02" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_fall", undefined, 1 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb", undefined, 1 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "light_fluorescent_null" ), #animtree, "setanimknob", undefined, 2, "light_fluorescent_null" );
    common_scripts\_destructible::destructible_state( undefined, "me_lightfluohang_double_destroyed", undefined, undefined, "no_melee" );
}

_id_C69D( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/light_fluorescent_blowout_runner" );
    common_scripts\_destructible::destructible_fx( "tag_swing_fx", "fx/misc/light_blowout_swinging_runner" );
    common_scripts\_destructible::destructible_lights_out( 16 );
    common_scripts\_destructible::destructible_explode( 20, 2000, 64, 64, 40, 80 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "light_fluorescent_swing" ), #animtree, "setanimknob", undefined, 0, "light_fluorescent_swing" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_fall", undefined, 0 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb", undefined, 0 );
    common_scripts\_destructible::destructible_spotlight( "tag_swing_r_far" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_fall" );
    common_scripts\_destructible::destructible_state( undefined, "me_lightfluohang_double_destroyed", undefined, undefined, "no_melee" );
}

_id_B0EB( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/light_fluorescent_single_blowout_runner" );
    common_scripts\_destructible::destructible_fx( "tag_swing_center_fx", "fx/misc/light_blowout_swinging_runner" );
    common_scripts\_destructible::destructible_fx( "tag_swing_center_fx_far", "fx/misc/light_blowout_swinging_runner" );
    common_scripts\_destructible::destructible_explode( 20, 2000, 64, 64, 40, 80 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "light_fluorescent_single_swing" ), #animtree, "setanimknob", undefined, 0, "light_fluorescent_single_swing" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_fall", undefined, 0 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb", undefined, 0 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "light_fluorescent_single_swing_02" ), #animtree, "setanimknob", undefined, 1, "light_fluorescent_single_swing_02" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_hinge", undefined, 1 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb", undefined, 1 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "light_fluorescent_single_swing_03" ), #animtree, "setanimknob", undefined, 2, "light_fluorescent_single_swing_03" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_fall", undefined, 2 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb", undefined, 2 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "light_fluorescent_single_null" ), #animtree, "setanimknob", undefined, 3, "light_fluorescent_single_null" );
    common_scripts\_destructible::destructible_state( undefined, "me_lightfluohang_single_destroyed", undefined, undefined, "no_melee" );
}

_id_C47E( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_lights_out( 16 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/light_fluorescent_single_blowout_runner" );
    common_scripts\_destructible::destructible_fx( "tag_swing_center_fx", "fx/misc/light_blowout_swinging_runner" );
    common_scripts\_destructible::destructible_fx( "tag_swing_center_fx_far", "fx/misc/light_blowout_swinging_runner" );
    common_scripts\_destructible::destructible_explode( 20, 2000, 64, 64, 40, 80 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "light_fluorescent_single_swing_02" ), #animtree, "setanimknob", undefined, undefined, "light_fluorescent_single_swing_02" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_fall" );
    common_scripts\_destructible::destructible_spotlight( "tag_swing_center_fx_far" );
    common_scripts\_destructible::destructible_state( undefined, "me_lightfluohang_single_destroyed", undefined, undefined, "no_melee" );
}

_id_C7AC( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 7 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/bookshelf4_dmg", 1, common_scripts\_destructible::damage_not( "splash" ) );
    common_scripts\_destructible::destructible_state( undefined, "bookstore_bookstand4", 100, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/bookshelf4_des", 1, "splash" );
    common_scripts\_destructible::destructible_explode( 2000, 3800, 32, 32, 1, 5, undefined, 0 );
    common_scripts\_destructible::destructible_state( undefined, "bookstore_bookstand4_null", undefined, undefined, undefined, undefined, undefined, 0 );
}

_id_D552( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "locker_broken_both_doors_1" ), #animtree, "setanimknob", undefined, 0, "locker_broken_both_doors_1" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/locker_double_des_02_right", undefined, undefined, 0 );
    common_scripts\_destructible::destructible_sound( "lockers_fast", undefined, 0 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "locker_broken_both_doors_2" ), #animtree, "setanimknob", undefined, 1, "locker_broken_both_doors_2" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/locker_double_des_01_left", undefined, undefined, 1 );
    common_scripts\_destructible::destructible_sound( "lockers_fast", undefined, 1 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "locker_broken_both_doors_4" ), #animtree, "setanimknob", undefined, 2, "locker_broken_both_doors_4" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/locker_double_des_03_both", undefined, undefined, 2 );
    common_scripts\_destructible::destructible_sound( "lockers_double", undefined, 2 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "locker_broken_door1_fast" ), #animtree, "setanimknob", undefined, 3, "locker_broken_door1_fast" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/locker_double_des_01_left", undefined, undefined, 3 );
    common_scripts\_destructible::destructible_sound( "lockers_fast", undefined, 3 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "locker_broken_door2_fast" ), #animtree, "setanimknob", undefined, 4, "locker_broken_door2_fast" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/locker_double_des_02_right", undefined, undefined, 4 );
    common_scripts\_destructible::destructible_sound( "lockers_fast", undefined, 4 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "locker_broken_both_doors_3" ), #animtree, "setanimknob", undefined, 5, "locker_broken_both_doors_3" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/no_effect", undefined, undefined, 5 );
    common_scripts\_destructible::destructible_sound( "lockers_minor", undefined, 5 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "locker_broken_door1_slow" ), #animtree, "setanimknob", undefined, 6, "locker_broken_door1_slow" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/no_effect", undefined, undefined, 6 );
    common_scripts\_destructible::destructible_sound( "lockers_minor", undefined, 6 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "locker_broken_door2_slow" ), #animtree, "setanimknob", undefined, 7, "locker_broken_door2_slow" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/no_effect", undefined, undefined, 7 );
    common_scripts\_destructible::destructible_sound( "lockers_minor", undefined, 7 );
    common_scripts\_destructible::destructible_state( undefined, "com_locker_double_destroyed", undefined, undefined, "no_melee" );
}

_id_C4BD( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_chicken" + var_0, "tag_origin", 0, undefined, 32 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "chicken_cage_loop_01" ), #animtree, "setanimknob", undefined, 0, "chicken_cage_loop_01", 1.6 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "chicken_cage_loop_02" ), #animtree, "setanimknob", undefined, 1, "chicken_cage_loop_02", 1.6 );
    common_scripts\_destructible::destructible_loopsound( "animal_chicken_idle_loop" );
    common_scripts\_destructible::destructible_state( "tag_origin", "chicken" + var_0, 25 );
    common_scripts\_destructible::destructible_fx( "tag_origin", "fx/props/chicken_exp" + var_0 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "chicken_cage_death" ), #animtree, "setanimknob", undefined, 0, "chicken_cage_death" );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "chicken_cage_death_02" ), #animtree, "setanimknob", undefined, 1, "chicken_cage_death_02" );
    common_scripts\_destructible::destructible_sound( "animal_chicken_death" );
    common_scripts\_destructible::destructible_state( undefined, "chicken" + var_0, undefined, undefined, "no_melee" );
}

_id_B5AD()
{
    common_scripts\_destructible::destructible_create( "vehicle_bus_destructible" );
    var_0 = "tag_window_front_left";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    var_0 = "tag_window_front_right";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    var_0 = "tag_window_driver";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_back";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    var_0 = "tag_window_side_1";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_2";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_3";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_4";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_5";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_6";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_7";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_8";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_9";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_10";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_window_side_11";
    common_scripts\_destructible::destructible_part( var_0, undefined, 99, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_0, "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_B147( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_80s_sedan1_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_80s_sedan1_" + var_0 + "_destroyed", undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, "vehicle_80s_sedan1_" + var_0 + "_hood", undefined, undefined, undefined, undefined, 1.0, 2.5 );
    var_1 = "tag_trunk";
    common_scripts\_destructible::destructible_part( var_1, "vehicle_80s_sedan1_" + var_0 + "_trunk", undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_80s_sedan1_" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_80s_sedan1_" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 2.3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_left_back", undefined, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_front", "vehicle_80s_sedan1_" + var_0 + "_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_back", "vehicle_80s_sedan1_" + var_0 + "_door_RB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    common_scripts\_destructible::destructible_part( "tag_bumper_front", "vehicle_80s_sedan1_" + var_0 + "_bumper_F", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_bumper_back", "vehicle_80s_sedan1_" + var_0 + "_bumper_B", undefined, undefined, undefined, undefined, undefined, 1.0 );
}

_id_CA76( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_80s_hatch1_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_80s_hatch1_" + var_0 + "_destroyed", undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, "vehicle_80s_hatch1_" + var_0 + "_hood", 800, undefined, undefined, undefined, 1.0, 1.5 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_80s_hatch1_" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_80s_hatch1_" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_front", "vehicle_80s_hatch1_" + var_0 + "_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 10, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 10, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 10, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 10, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 10, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 10, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    common_scripts\_destructible::destructible_part( "tag_bumper_front" );
    common_scripts\_destructible::destructible_part( "tag_bumper_back" );
}

_id_C91D( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_80s_hatch2_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_origin", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_80s_hatch2_" + var_0 + "_destroyed", undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, undefined, 800, undefined, undefined, undefined, 1.0, 1.5 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_front", undefined, undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    common_scripts\_destructible::destructible_part( "tag_bumper_front" );
    common_scripts\_destructible::destructible_part( "tag_bumper_back" );
}

_id_C470( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_80s_wagon1_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_80s_wagon1_" + var_0 + "_destroyed", undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, "vehicle_80s_wagon1_" + var_0 + "_hood", 800, undefined, undefined, undefined, 1.0, 1.5 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_80s_wagon1_" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_80s_wagon1_" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_left_back", undefined, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_back", "vehicle_80s_wagon1_" + var_0 + "_door_RB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back2";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back2_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back2";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back2_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    common_scripts\_destructible::destructible_part( "tag_bumper_front", "vehicle_80s_wagon1_" + var_0 + "_bumper_F", undefined, undefined, undefined, undefined, 1.0, 0.7 );
    common_scripts\_destructible::destructible_part( "tag_bumper_back", undefined, undefined, undefined, undefined, undefined, undefined, 0.6 );
}

_id_BAA3( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_small_hatch_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "vfx/map/favela_escape/car_damage_blacksmoke_fire_sml_hatch", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_origin", "fx/explosions/hatch_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_small_hatch_" + var_0 + "_destroyed", undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, "vehicle_small_hatch_" + var_0 + "_hood", 800, undefined, undefined, undefined, 1.0, 1.5 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", "vehicle_small_hatch_" + var_0 + "_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_front", "vehicle_small_hatch_" + var_0 + "_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_C9E8( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 300, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_bumper_front", "vfx/map/favela_escape/car_damage_blacksmoke_fire_sml_pickup", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_pickup_destroyed", undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, "vehicle_pickup_hood", 800, undefined, undefined, undefined, 1.0, 2.5 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", "vehicle_pickup_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_front", "vehicle_pickup_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    common_scripts\_destructible::destructible_part( "tag_bumper_front", undefined, undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_bumper_back", undefined, undefined, undefined, undefined, undefined, undefined, 1.0 );
}

_id_C5FD( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_deathfx", "fx/explosions/vehicle_explosion_laatpv", 0 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_laatpv_destroyed", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_BD36( var_0, var_1 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 300, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_deathfx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, var_1, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    var_2 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_2, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_2 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_2, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_2 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_2 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_CE16( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 300, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/vehicle_explosion_medium", 0 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_moving_truck_dst", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

vehicle_luxurysedan( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_luxurysedan_2008" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_luxurysedan_2008" + var_0 + "_destroy", undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, "vehicle_luxurysedan_2008" + var_0 + "_hood", 800, undefined, undefined, undefined, 1.0, 2.5 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_luxurysedan_2008" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_luxurysedan_2008" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_luxurysedan_2008" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_luxurysedan_2008" + var_0 + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "tag_door_left_front", "vehicle_luxurysedan_2008" + var_0 + "_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_front", "vehicle_luxurysedan_2008" + var_0 + "_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_left_back", "vehicle_luxurysedan_2008" + var_0 + "_door_LB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_back", "vehicle_luxurysedan_2008" + var_0 + "_door_RB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
}

_id_AF4F( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "TAG_ORIGIN", 250, undefined, 32, "splash" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 11 );
    common_scripts\_destructible::destructible_loopfx( "TAG_front_fire", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "TAG_rear_fire", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "splash" );
    common_scripts\_destructible::destructible_loopfx( "TAG_front_fire", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "TAG_rear_fire", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "splash" );
    common_scripts\_destructible::destructible_loopfx( "TAG_front_fire", "fx/smoke/airplane_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "TAG_rear_fire", "fx/smoke/airplane_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 512, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "splash" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "splash" );
    common_scripts\_destructible::destructible_fx( "TAG_FX", "fx/explosions/vehicle_explosion_mig29", 0 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 8000, 10000, 512, 512, 50, 300, undefined, undefined, 0.4, 1000 );
    common_scripts\_destructible::destructible_anim( %vehicle_mig29_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_mig29_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_mig29_v2_dest", undefined, 32, "splash" );
    common_scripts\_destructible::destructible_part( "TAG_COCKPIT", "vehicle_mig29_dest_cockpit", 40, undefined, undefined, undefined, undefined, 1.0 );
}

_id_B238( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_mack_truck_short_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/mack_truck_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "tag_gastank", "fx/smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "mack_truck_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "mack_truck_fire_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 300, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "mack_truck_fire_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_gastank", "fx/smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_fx( "tag_cab_fire", "fx/fire/firelp_med_pm" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/propane_large_exp_h2", 0 );
    common_scripts\_destructible::destructible_sound( "mack_truck_explode" );
    common_scripts\_destructible::destructible_loopsound( "fire_metal_large" );
    common_scripts\_destructible::destructible_explode( 8000, 10000, 512, 512, 100, 400, undefined, undefined, 0.4, 1000 );
    common_scripts\_destructible::destructible_anim( %h2_fueltruc_destruction_anim, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_mack_truck_short_" + var_0 + "_destroy_animated", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_mack_truck_short_" + var_0 + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 8.0 );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_mack_truck_short_" + var_0 + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 81.0 );
    common_scripts\_destructible::destructible_part( "left_wheel_03_jnt", "vehicle_mack_truck_short_" + var_0 + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 8.0 );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", "vehicle_mack_truck_short_" + var_0 + "_door_lf", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "mack_truck_glass_break_small" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "mack_truck_glass_break_small" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_B11B( var_0 )
{
    var_1 = undefined;
    var_1 = get_precached_anim( "vehicle_motorcycle_destroy_" + var_0 );
    common_scripts\_destructible::destructible_create( "vehicle_motorcycle_" + var_0, "body_animate_jnt", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 128, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_origin", "fx/explosions/motorcycle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "motorcycle_explode" );
    common_scripts\_destructible::destructible_explode( 3000, 4000, 128, 150, 50, 300, undefined, 0, 0.3, 400 );
    common_scripts\_destructible::destructible_anim( var_1, #animtree, "setanimknob", undefined, undefined, "vehicle_motorcycle_destroy_" + var_0 );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_motorcycle_" + var_0 + "_destroy", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "front_wheel", "vehicle_motorcycle_" + var_0 + "_front_wheel_d", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_part( "rear_wheel", "vehicle_motorcycle_" + var_0 + "_rear_wheel_d", 20, undefined, undefined, "no_melee", undefined, 1.7 );
}

_id_C906( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_subcompact_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, 0, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_subcompact_" + var_0 + "_destroyed", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_subcompact_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_subcompact_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_back", "vehicle_subcompact_" + var_0 + "_door_LB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_back", "vehicle_subcompact_" + var_0 + "_door_RB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    common_scripts\_destructible::destructible_part( "tag_mirror_left", "vehicle_subcompact_" + var_0 + "_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_mirror_right", "vehicle_subcompact_" + var_0 + "_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
}

_id_C785( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_van_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_van_" + var_0 + "_destroyed", undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, "vehicle_van_" + var_0 + "_hood", undefined, undefined, undefined, undefined, 1.0, 2.5 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_van_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_van_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_right_back", "vehicle_van_" + var_0 + "_door_rb_destroyed", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back_02";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back_02";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    common_scripts\_destructible::destructible_part( "tag_mirror_left", "vehicle_van_" + var_0 + "_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_mirror_right", "vehicle_van_" + var_0 + "_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
}

_id_BE0E( var_0, var_1 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 300, 300, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_suburban_destroyed" + var_1, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_suburban_wheel_rf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_suburban_wheel_rf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "tag_door_left_back", "vehicle_suburban_door_lb" + var_1 + "_destroyed", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_2 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_2, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_2 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_2, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_2 = "tag_center_glass";
    common_scripts\_destructible::destructible_part( var_2, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_2 + "_fx", "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_2 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_2 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_2 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_2 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_2 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_2 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_2 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_2 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_2 = "tag_glass_left_back_02";
    common_scripts\_destructible::destructible_part( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_2 = "tag_glass_right_back_02";
    common_scripts\_destructible::destructible_part( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
}

_id_B32A( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/snowmobile_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 150, 150, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( get_precached_anim( "vehicle_snowmobile_destroy_01" ), #animtree, "setanimknob", undefined, undefined, "vehicle_snowmobile_destroy_01" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_snowmobile_destroyed", undefined, 32, "no_melee" );
    var_1 = "right_wheel_01_jnt";
    common_scripts\_destructible::destructible_part( var_1, "vehicle_snowmobile_ski_right", 800, undefined, undefined, undefined, 1.0, 2.5 );
    common_scripts\_destructible::destructible_part( "TAG_BAG_CENTER", "vehicle_snowmobile_bag_center", undefined, undefined, undefined, undefined, 1.0, 2.0 );
    common_scripts\_destructible::destructible_part( "TAG_BAG_LEFT", "vehicle_snowmobile_bag_left", undefined, undefined, undefined, undefined, 1.0, 2.0 );
    common_scripts\_destructible::destructible_part( "TAG_BAG_RIGHT", "vehicle_snowmobile_bag_right", undefined, undefined, undefined, undefined, 1.0, 2.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_1 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_front_fx", "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_CDE1( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/fire/gas_pump_fire_damage", 0.4 );
    common_scripts\_destructible::destructible_sound( "gaspump01_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "gaspump01_fire_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/fire/gas_pump_fire_damage", 0.4 );
    common_scripts\_destructible::destructible_loopsound( "gaspump01_fire_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_sound( "gaspump01_flareup_med" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/fire/gas_pump_fire_handle", 0.0 );
    common_scripts\_destructible::destructible_loopsound( "gaspump01_hose_flame" );
    common_scripts\_destructible::destructible_anim( %gaspump01_hose, #animtree, "setanimknob", undefined, undefined, "gaspump01_hose" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/gas_pump_exp", 0 );
    common_scripts\_destructible::destructible_sound( "gaspump01_explode" );
    common_scripts\_destructible::destructible_explode( 6000, 8000, 210, 300, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_state( undefined, "furniture_gaspump01_destroyed", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_panel_front01", "furniture_gaspump01_panel01", 80, undefined, undefined, undefined, 1.0, 1.0, undefined, 1.0 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_front02", "furniture_gaspump01_panel02", 40, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_front03", "furniture_gaspump01_panel03", 40, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_sound( "exp_gaspump_sparks" );
    common_scripts\_destructible::destructible_fx( "tag_panel_front03", "fx/props/electricbox4_explode" );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_back01", "furniture_gaspump01_panel01", 110, undefined, undefined, undefined, 1.0, 1.0, undefined, 1.0 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_back02", "furniture_gaspump01_panel02", 40, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_back03", "furniture_gaspump01_panel03", 40, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_sound( "exp_gaspump_sparks" );
    common_scripts\_destructible::destructible_fx( "tag_panel_back03", "fx/props/electricbox4_explode" );
    common_scripts\_destructible::destructible_physics();
}

_id_B138( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_origin", 1500, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 2 );
    common_scripts\_destructible::destructible_loopsound( "electrical_transformer_sparks" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/explosions/electrical_transformer_spark_runner", 0.8 );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "electrical_transformer_sparks" );
    common_scripts\_destructible::destructible_fx( "tag_fx_junction", "fx/explosions/generator_sparks_c", 0 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx_junction", "fx/fire/electrical_transformer_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/explosions/electrical_transformer_spark_runner", 0.8 );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "electrical_transformer_sparks" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx_junction", "fx/fire/electrical_transformer_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/explosions/electrical_transformer_spark_runner", 0.8 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx_valve", "fx/explosions/generator_spark_runner", 0.6 );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/electrical_transformer_explosion", 0 );
    common_scripts\_destructible::destructible_sound( "electrical_transformer01_explode" );
    common_scripts\_destructible::destructible_explode( 6000, 8000, 210, 300, 20, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_state( undefined, "com_electrical_transformer_large_des", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_door1", "com_electrical_transformer_large_dam_door1", 1500, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
    common_scripts\_destructible::destructible_sound( "electrical_transformer01_explode_detail" );
    common_scripts\_destructible::destructible_fx( "tag_door1", "fx/explosions/generator_explosion" );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_door2", "com_electrical_transformer_large_dam_door2", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_door3", "com_electrical_transformer_large_dam_door3", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_door4", "com_electrical_transformer_large_dam_door4", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_door5", "com_electrical_transformer_large_dam_door5", 1500, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
    common_scripts\_destructible::destructible_sound( "electrical_transformer01_explode_detail" );
    common_scripts\_destructible::destructible_fx( "tag_door5", "fx/explosions/generator_explosion" );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_door6", "com_electrical_transformer_large_dam_door6", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_door7", "com_electrical_transformer_large_dam_door7", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
    common_scripts\_destructible::destructible_loopsound( "electrical_transformer_sparks" );
    common_scripts\_destructible::destructible_fx( "tag_door7", "fx/props/electricbox4_explode" );
    common_scripts\_destructible::destructible_physics();
}

get_precached_anim( var_0 )
{
    return level._destructible_preanims[var_0];
}

#using_animtree("vehicles");

_id_B451( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_coupe_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_coupe_" + var_0 + "_destroyed", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_coupe_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", "vehicle_coupe_" + var_0 + "_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_spoiler", "vehicle_coupe_" + var_0 + "_spoiler", undefined, undefined, undefined, undefined, 1.0, 2.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_D081( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_uaz_winter_destroy", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee", undefined, 3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee", undefined, 3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back_02";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back_02";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_B99B( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_uaz_fabric_dsr", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_C526( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_uaz_hardtop_dsr", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back2";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back2_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back2";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back2_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_C233( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_uaz_open_dsr", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim", 1 );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back_02";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back_02";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_C21C( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_policecar_lapd_destroy", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_policecar_lapd_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_policecar_lapd_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_policecar_lapd_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_policecar_lapd_wheel_LF", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", "vehicle_policecar_lapd_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_front", "vehicle_policecar_lapd_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_left_back", "vehicle_policecar_lapd_door_LB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_center_glass";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "TAG_CENTER_GLASS_FX", "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_D310( var_0 )
{
    common_scripts\_destructible::destructible_create( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_policecar_russia_destroy", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_policecar_russia_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_policecar_russia_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_policecar_russia_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", "vehicle_policecar_russia_wheel_LF", 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", "vehicle_policecar_russia_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_right_front", "vehicle_policecar_russia_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_door_left_back", "vehicle_policecar_russia_door_LB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_center_glass";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "TAG_CENTER_GLASS_FX", "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

vehicle_taxi_van( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_taxi_van", "tag_body", 250, undefined, 32, "no_melee" );

    if ( getdvar( "loc_arabic_sku" ) != "1" )
        common_scripts\_destructible::random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_1" );

    common_scripts\_destructible::random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_2" );
    common_scripts\_destructible::random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_3" );
    common_scripts\_destructible::random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_4" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_taxivan_yellow_destroy", undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, undefined, undefined, undefined, undefined, undefined, 1.0, 2.5 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee", undefined, 2.3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee", undefined, 2.3 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "tag_door_right_back", undefined, undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( var_1 + "_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back_02";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back_02";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_02_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}

_id_D3E1( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_taxi" + var_0, "tag_body", 250, undefined, 32, "no_melee" );

    if ( getdvar( "loc_arabic_sku" ) != "1" )
        common_scripts\_destructible::random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_1" );

    common_scripts\_destructible::random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_2" );
    common_scripts\_destructible::random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_3" );
    common_scripts\_destructible::random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_4" );
    common_scripts\_destructible::random_dynamic_attachment( "tag_ad", "vehicle_taxi_toplight", undefined, "taxi_ad_clip" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_taxi_yellow_destroy" + var_0, undefined, 32, "no_melee" );
    var_1 = "tag_hood";
    common_scripts\_destructible::destructible_part( var_1, undefined, undefined, undefined, undefined, undefined, 1.0, 2.5 );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_taxi_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", "vehicle_taxi_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_car_alarm();
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_car_alarm();
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_car_alarm();
    var_1 = "tag_center_glass";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "TAG_CENTER_GLASS_FX", "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_car_alarm();
    common_scripts\_destructible::destructible_state( undefined );
    common_scripts\_destructible::destructible_part( "tag_mirror_left", undefined, 40, undefined, undefined, undefined, undefined, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_mirror_right", undefined, 40, undefined, undefined, undefined, undefined, 1.0 );
}
