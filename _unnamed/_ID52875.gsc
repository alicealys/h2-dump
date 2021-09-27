// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID50909::_ID616();
    _ID54312::_ID616();
    _func_14C( "h2_weapon_desert_eagle_silver" );
    _func_14C( "h2_weapon_m4_grenadier" );
    _func_14C( "h2_weapon_colt_anaconda_animated" );
    _func_14C( "com_metal_briefcase" );
    _func_14C( "com_cellphone_on" );
    _func_14C( "electronics_pda" );
    _func_14C( "rope_test" );
    _func_14F( "credits_side_bar" );
    _func_14C( "weapon_riot_shield" );
    _func_14C( "h2_ending_rappel_rope" );
    _func_14C( "h2_viewbody_us_army" );

    if ( level._ID44088 != "credits_1" )
    {
        _func_150( &"CHAR_MUSEUM_DO_NOT" );
        _func_150( &"CHAR_MUSEUM_DO_NOT_PC" );
        _func_14F( "panic_button" );
        _ID42542::_ID616( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench" );
    }
}
