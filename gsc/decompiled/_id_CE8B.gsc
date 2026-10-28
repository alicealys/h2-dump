// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_C6DD::main();
    _id_D428::main();
    precachemodel( "h2_weapon_desert_eagle_silver" );
    precachemodel( "h2_weapon_m4_grenadier" );
    precachemodel( "h2_weapon_colt_anaconda_animated" );
    precachemodel( "com_metal_briefcase" );
    precachemodel( "com_cellphone_on" );
    precachemodel( "electronics_pda" );
    precachemodel( "rope_test" );
    precacheshader( "credits_side_bar" );
    precachemodel( "weapon_riot_shield" );
    precachemodel( "h2_ending_rappel_rope" );
    precachemodel( "h2_viewbody_us_army" );

    if ( level._id_AC38 != "credits_1" )
    {
        precachestring( &"CHAR_MUSEUM_DO_NOT" );
        precachestring( &"CHAR_MUSEUM_DO_NOT_PC" );
        precacheshader( "panic_button" );
        vehicle_scripts\_littlebird::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench" );
    }
}
