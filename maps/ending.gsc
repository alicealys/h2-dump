// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42237::_ID14400( "startPoint_boatDrive" );
    precachestring( &"AF_CHASE_PURSUE" );
    precachestring( &"AF_CHASE_MISSION_FAILED_IN_THE_OPEN" );
    precachestring( &"AF_CHASE_MISSION_FAILED_KEEP_UP" );
    precachestring( &"AF_CHASE_FAILED_TO_SHOOT_DOWN" );
    precachestring( &"AF_CHASE_PRESS_USE" );
    precachestring( &"AF_CHASE_HINT_CRAWL_RIGHT" );
    precachestring( &"AF_CHASE_HINT_CRAWL_LEFT" );
    precachestring( &"AF_CHASE_HINT_CRAWL_RIGHT_PC" );
    precachestring( &"AF_CHASE_HINT_CRAWL_LEFT_PC" );
    precachestring( &"AF_CHASE_KILL_SHEPHERD" );
    precachestring( &"SCRIPT_WAYPOINT_SHEPHERD" );
    precachestring( &"AF_CHASE_FAILED_TO_CRAWL" );
    precachestring( &"AF_CHASE_FAILED_TO_PULL_KNIFE" );
    precachestring( &"AF_CHASE_PURSUE" );
    precachestring( &"MENU_CAMPAIGN_COMPLETED" );
    precacheitem( "m203" );
    precacherumble( "steady_rumble" );
    precacherumble( "smg_fire" );
    precacheitem( "m16_grenadier" );
    precacheitem( "rpg_straight_af_chase" );
    precacheitem( "rpg_af_chase" );
    precacheitem( "rpd" );
    precacheitem( "uzi" );
    precacheitem( "littlebird_FFAR" );
    precachemodel( "weapon_commando_knife" );
    precachemodel( "weapon_commando_knife_bloody" );
    precachemodel( "viewmodel_commando_knife" );
    precachemodel( "viewmodel_commando_knife_bloody" );
    precachemodel( "zodiac_head_roller" );
    precachemodel( "weapon_colt_anaconda" );
    precachemodel( "vehicle_pickup_destroyed" );
    precachemodel( "weapon_colt_anaconda_animated" );
    precachemodel( "fx_rifle_shell" );
    precachemodel( "body_desert_tf141_zodiac" );
    precachemodel( "head_hero_price_desert_beaten" );
    precachemodel( "head_vil_shepherd_damaged" );
    precachemodel( "vehicle_little_bird_bench_afghan" );
    precachemodel( "viewbody_tf141_wet" );
    precachemodel( "viewbody_tf141_injured" );
    precachemodel( "head_hero_price_desert_beaten_no_hat" );
    precachemodel( "h2_price_arctic_hat" );
    precachemodel( "cs_coffeemug02" );
    precachemodel( "h2_com_widescreen_monitor_on_01" );
    precachemodel( "h2_com_widescreen_monitor_on_02" );
    precachemodel( "h2_com_widescreen_monitor_on_03" );
    precachemodel( "h2_com_widescreen_monitor_on_04" );
    precachemodel( "h2_com_widescreen_monitor_on_05" );
    precachemodel( "h2_com_widescreen_monitor_on_06" );
    precachemodel( "h2_com_widescreen_monitor_on_07" );
    precachemodel( "h2_com_widescreen_monitor_on_08" );
    precachemodel( "chicken_white" );
    precachemodel( "chicken_black_white" );
    precacherumble( "heavy_1s" );
    precacherumble( "heavy_2s" );
    precacherumble( "heavy_3s" );
    precacherumble( "light_1s" );
    precacherumble( "light_2s" );
    precacherumble( "light_3s" );
    precachemodel( "body_vil_shepherd_no_gun" );
    precachemodel( "body_vil_shepherd_no_gun_dmg" );
    precachemodel( "body_vil_shepherd_dmg" );
    precachemodel( "prop_misc_literock_small_01" );
    precachemodel( "prop_misc_literock_small_02" );
    precachemodel( "prop_misc_literock_small_03" );
    precachemodel( "prop_misc_literock_small_04" );
    precachemodel( "prop_misc_literock_small_05" );
    precachemodel( "prop_misc_literock_small_06" );
    precachemodel( "prop_misc_literock_small_07" );
    precachemodel( "prop_misc_literock_small_08" );
    precachemodel( "hat_militia_bb_blk" );
    precachemodel( "hat_opforce_merc_b" );
    precacheshellshock( "af_chase_turn_buckle_slam" );
    precacheshellshock( "af_chase_ending_pulling_knife_later" );
    precacheshellshock( "af_chase_ending_no_control" );
    precacheshellshock( "af_chase_ending_no_control_lowkick" );
    precacheshellshock( "af_chase_ending_wakeup" );
    precacheshellshock( "af_chase_ending_fakeout" );
    precacheshellshock( "af_chase_ending_kill" );
    precacheshader( "overlay_hunted_black" );
    precacheitem( "ending_knife" );
    precacheitem( "ending_knife_bloody" );
    precacheitem( "alt_ending_knife_bloody" );
    precacheshader( "hud_icon_commando_knife" );
    precacheshader( "reticle_center_throwingknife" );
    precacherumble( "tank_rumble" );
    precacherumble( "damage_light" );
    precacherumble( "damage_heavy" );
    setdynamicdvar( "ui_char_museum_mode", "credits_1" );

    if ( !isdefined( level._ID794 ) )
        level._ID794 = getentarray( "player", "classname" )[0];

    var_0 = level._ID794 getweaponslistall();

    if ( isdefined( var_0 ) && var_0.size )
        setdvar( "ui_char_museum_mode", "credits_1" );

    if ( getdvar( "start" ) == "museum_freeroam" )
        setdvar( "ui_char_museum_mode", "free" );

    if ( getdvar( "start" ) == "museum_credits" )
        setdvar( "ui_char_museum_mode", "credits_2" );

    level._ID44088 = getdvar( "ui_char_museum_mode" );

    if ( level._ID44088 != "free" )
        level._ID11030 = 1;

    setsaveddvar( "ui_hidemap", "1" );

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
        thread _ID54098();
        setsaveddvar( "hud_showStance", 0 );
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
        var_2 = getspawnerarray();
        _ID42237::_ID3350( var_2, _ID42407::_ID1947, maps\char_museum::danger_close_fix );
    }

    _ID42234::_ID13611( "waterfall_ending" );
}

_ID54098()
{
    switch ( level._ID35897 )
    {
        case "default":
        case "wakeup":
        case "wakefast":
        case "turnbuckle":
        case "gloat":
        case "gun_fight":
            _ID42237::_ID14413( "af_chase_final_fight" );
        case "gun_drop":
            _ID42407::_ID24587( "mus_af_chase_final_fight" );
        case "crawl":
        case "kill":
        case "museum_credits":
        case "gun_kick":
        case "wounded":
        case "pullout":
        case "price_wakeup":
        case "walkoff":
        case "endgame":
        case "museum_free":
            _ID42237::_ID14413( "af_chase_final_ending" );
            _ID42407::_ID24587( "mus_af_chase_final_ending" );
            break;
        default:
            break;
    }
}
