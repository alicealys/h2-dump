// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42237::_ID14400( "startPoint_boatDrive" );
    _func_150( &"AF_CHASE_PURSUE" );
    _func_150( &"AF_CHASE_MISSION_FAILED_IN_THE_OPEN" );
    _func_150( &"AF_CHASE_MISSION_FAILED_KEEP_UP" );
    _func_150( &"AF_CHASE_FAILED_TO_SHOOT_DOWN" );
    _func_150( &"AF_CHASE_PRESS_USE" );
    _func_150( &"AF_CHASE_HINT_CRAWL_RIGHT" );
    _func_150( &"AF_CHASE_HINT_CRAWL_LEFT" );
    _func_150( &"AF_CHASE_HINT_CRAWL_RIGHT_PC" );
    _func_150( &"AF_CHASE_HINT_CRAWL_LEFT_PC" );
    _func_150( &"AF_CHASE_KILL_SHEPHERD" );
    _func_150( &"SCRIPT_WAYPOINT_SHEPHERD" );
    _func_150( &"AF_CHASE_FAILED_TO_CRAWL" );
    _func_150( &"AF_CHASE_FAILED_TO_PULL_KNIFE" );
    _func_150( &"AF_CHASE_PURSUE" );
    _func_150( &"MENU_CAMPAIGN_COMPLETED" );
    _func_14E( "m203" );
    _func_152( "steady_rumble" );
    _func_152( "smg_fire" );
    _func_14E( "m16_grenadier" );
    _func_14E( "rpg_straight_af_chase" );
    _func_14E( "rpg_af_chase" );
    _func_14E( "rpd" );
    _func_14E( "uzi" );
    _func_14E( "littlebird_FFAR" );
    _func_14C( "weapon_commando_knife" );
    _func_14C( "weapon_commando_knife_bloody" );
    _func_14C( "viewmodel_commando_knife" );
    _func_14C( "viewmodel_commando_knife_bloody" );
    _func_14C( "zodiac_head_roller" );
    _func_14C( "weapon_colt_anaconda" );
    _func_14C( "vehicle_pickup_destroyed" );
    _func_14C( "weapon_colt_anaconda_animated" );
    _func_14C( "fx_rifle_shell" );
    _func_14C( "body_desert_tf141_zodiac" );
    _func_14C( "head_hero_price_desert_beaten" );
    _func_14C( "head_vil_shepherd_damaged" );
    _func_14C( "vehicle_little_bird_bench_afghan" );
    _func_14C( "viewbody_tf141_wet" );
    _func_14C( "viewbody_tf141_injured" );
    _func_14C( "head_hero_price_desert_beaten_no_hat" );
    _func_14C( "h2_price_arctic_hat" );
    _func_14C( "cs_coffeemug02" );
    _func_14C( "h2_com_widescreen_monitor_on_01" );
    _func_14C( "h2_com_widescreen_monitor_on_02" );
    _func_14C( "h2_com_widescreen_monitor_on_03" );
    _func_14C( "h2_com_widescreen_monitor_on_04" );
    _func_14C( "h2_com_widescreen_monitor_on_05" );
    _func_14C( "h2_com_widescreen_monitor_on_06" );
    _func_14C( "h2_com_widescreen_monitor_on_07" );
    _func_14C( "h2_com_widescreen_monitor_on_08" );
    _func_14C( "chicken_white" );
    _func_14C( "chicken_black_white" );
    _func_152( "heavy_1s" );
    _func_152( "heavy_2s" );
    _func_152( "heavy_3s" );
    _func_152( "light_1s" );
    _func_152( "light_2s" );
    _func_152( "light_3s" );
    _func_14C( "body_vil_shepherd_no_gun" );
    _func_14C( "body_vil_shepherd_no_gun_dmg" );
    _func_14C( "body_vil_shepherd_dmg" );
    _func_14C( "prop_misc_literock_small_01" );
    _func_14C( "prop_misc_literock_small_02" );
    _func_14C( "prop_misc_literock_small_03" );
    _func_14C( "prop_misc_literock_small_04" );
    _func_14C( "prop_misc_literock_small_05" );
    _func_14C( "prop_misc_literock_small_06" );
    _func_14C( "prop_misc_literock_small_07" );
    _func_14C( "prop_misc_literock_small_08" );
    _func_14C( "hat_militia_bb_blk" );
    _func_14C( "hat_opforce_merc_b" );
    _func_14D( "af_chase_turn_buckle_slam" );
    _func_14D( "af_chase_ending_pulling_knife_later" );
    _func_14D( "af_chase_ending_no_control" );
    _func_14D( "af_chase_ending_no_control_lowkick" );
    _func_14D( "af_chase_ending_wakeup" );
    _func_14D( "af_chase_ending_fakeout" );
    _func_14D( "af_chase_ending_kill" );
    _func_14F( "overlay_hunted_black" );
    _func_14E( "ending_knife" );
    _func_14E( "ending_knife_bloody" );
    _func_14E( "alt_ending_knife_bloody" );
    _func_14F( "hud_icon_commando_knife" );
    _func_14F( "reticle_center_throwingknife" );
    _func_152( "tank_rumble" );
    _func_152( "damage_light" );
    _func_152( "damage_heavy" );
    _func_036( "ui_char_museum_mode", "credits_1" );

    if ( !_func_02F( level._ID794 ) )
        level._ID794 = _func_1A2( "player", "classname" )[0];

    var_0 = level._ID794 _meth_8316();

    if ( _func_02F( var_0 ) && var_0.size )
        _func_034( "ui_char_museum_mode", "credits_1" );

    if ( _func_039( "start" ) == "museum_freeroam" )
        _func_034( "ui_char_museum_mode", "free" );

    if ( _func_039( "start" ) == "museum_credits" )
        _func_034( "ui_char_museum_mode", "credits_2" );

    level._ID44088 = _func_039( "ui_char_museum_mode" );

    if ( level._ID44088 != "free" )
        level._ID11030 = 1;

    _func_0DB( "ui_hidemap", "1" );

    if ( level._ID44088 == "credits_1" )
    {
        _ID52272::_ID616();
        maps\af_chase_knife_fight::_ID52726();
        maps\char_museum::_ID616();
        maps\af_chase_knife_fight::_ID53376();
        maps\af_chase_anim::_ID43266();
        _ID51748::_ID616();
        _ID45371::_ID616();
        maps\ending_lighting::_ID616();
        var_1 = "ending_wakeup";
        maps\ending_lighting::_ID49627( var_1 );
        _ID42323::_ID616();
        thread maps\af_chase_knife_fight::_ID45160();
        thread _ID42234::_ID13611( "heli_fire" );
        thread maps\af_chase_knife_fight::_ID52987();
        thread maps\af_chase_knife_fight::_ID49101();
        thread _unknown_044D();
        _func_0DB( "hud_showStance", 0 );
    }
    else
    {
        _ID46544::_ID616();
        _ID49679::_ID616();
        _ID53014::_ID616();
        _ID45371::_ID616();
        maps\char_museum::_ID616();
        maps\ending_lighting::_ID616();
        maps\ending_lighting::_ID49627( "ending_museum" );
        var_2 = _func_0E0();
        _ID42237::_ID3350( var_2, _ID42407::_ID1947, maps\char_museum::danger_close_fix );
    }

    _ID42234::_ID13611( "waterfall_ending" );
}

_ID54098()
{
    switch ( level._ID35897 )
    {

    }

    case "museum_free":
    case "endgame":
    case "walkoff":
    case "price_wakeup":
    case "pullout":
    case "wounded":
    case "gun_kick":
    case "gun_drop":
    case "gun_fight":
    case "gloat":
    case "turnbuckle":
    case "wakefast":
    case "wakeup":
    case "museum_credits":
    case "kill":
    case "crawl":
    case "default":
    default:
}
