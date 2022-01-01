// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
        return;

    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
    {
        maps\roadkill_beautiful_corner::_ID616();
        return;
    }

    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\roadkill_mission_select_cam::_ID50320();
        return;
    }

    thread _ID43442();
    setdvar( "newintro", 1 );
    level._ID54654 = 0;
    level._ID46686 = 1;
    precacheitem( "m14_scoped" );
    precacheitem( "littlebird_FFAR" );
    _ID42287::_ID521();
    _ID49192::_ID616();
    _ID53481::_ID616();
    maps\roadkill_anim::_ID616();
    maps\roadkill_lighting::_ID616();
    _ID45890::_ID616();
    _ID46125::_ID616();
    _ID42411::_ID52468( "script_vehicle_laatpv_minigun_physics_player", maps\roadkill_anim::_ID50120, maps\roadkill_anim::_ID49234 );
    maps\roadkill_code::_ID51313();
    _ID42407::_ID32271( "riverbank" );
    _ID42407::_ID1951( "riverbank", ::_ID44057, "riverbank", ::_ID52946 );
    _ID42407::_ID1951( "convoy", ::_ID44873, "convoy", ::_ID48411 );
    _ID42407::_ID1951( "ride", ::_ID54583, "ride", ::_ID54142 );
    _ID42407::_ID1951( "ambush", ::_ID45367, "ambush", ::_ID49117 );
    _ID42407::_ID1951( "ride_later", ::_ID51976, "ride_later", ::_ID52649 );
    _ID42407::_ID1951( "dismount", ::_ID50764, "dismount", ::_ID43234 );
    _ID42407::_ID1951( "school", ::_ID53153, "school", ::_ID44068 );
    _ID42407::_ID1951( "endfight", ::_ID51950, "end", ::_ID53110 );
    _ID42407::_ID1951( "end", ::_ID49864, "end", ::_ID53110 );
    precacheturret( "latvee_50cal_mg" );
    precacheturret( "rpd_bipod_prone" );
    precacheturret( "rpd_bipod_crouch" );
    precachemodel( "weapon_m16" );
    precachemodel( "weapon_rpd_mg_setup" );
    precachemodel( "com_soup_can" );
    precachemodel( "com_bottle1" );
    precachemodel( "me_plastic_crate1" );
    precachemodel( "mil_mre_chocolate01" );
    precachemodel( "weapon_binocular" );
    precachemodel( "vehicle_laatpv_seat_rb_obj" );
    precachemodel( "viewhands_player_us_army" );
    precachemodel( "hat_opforce_arab_d" );
    precachemodel( "electronics_camera_pointandshoot_low" );
    precachemodel( "h2_rkl_cellphone_camera" );
    precachemodel( "viewbody_us_army" );
    precachemodel( "weapon_suburban_minigun_viewmodel" );
    precacherumble( "collapsing_building" );
    precacherumble( "tank_rumble" );
    precachemodel( "me_woodcrateclosed" );
    precachemodel( "com_cardboardboxshortclosed_2" );
    precachemodel( "com_hand_radio" );
    precacheitem( "scripted_silent" );
    precachemodel( "h2_rkl_handheld_gps" );
    precachestring( &"ROADKILL_BRIDGELAYER_DESTROYED" );
    precachestring( &"ROADKILL_HOLD_TO_BOARD" );
    precachestring( &"ROADKILL_SHOT_TOO_MUCH" );
    precachestring( &"ROADKILL_OBJECTIVE_BRIDGELAYER" );
    precachestring( &"ROADKILL_OBJECTIVE_LATVEE" );
    precachestring( &"ROADKILL_OBJECTIVE_AIRSTRIKE" );
    precachestring( &"ROADKILL_OBJECTIVE_SCAN" );
    precachestring( &"ROADKILL_OBJECTIVE_TARGETS" );
    precachestring( &"ROADKILL_OBJECTIVE_DISMOUNT" );
    precachestring( &"ROADKILL_OBJECTIVE_SECURE_TOP_FLOOR" );
    precachestring( &"ROADKILL_OBJECTIVE_SCHOOL" );
    precachestring( &"ROADKILL_OBJECTIVE_REPORT" );
    precachestring( &"ROADKILL_GOT_SNIPED" );
    precachestring( &"ROADKILL_SHOT_UNARMED" );
    precachestring( &"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN" );
    precachestring( &"SCRIPT_LEARN_JAVELIN" );
    precachestring( &"SCRIPT_PLATFORM_HINT_FLASH" );
    precachestring( &"SCRIPT_LEARN_GRENADE_LAUNCHER" );
    precachestring( &"SCRIPT_WAYPOINT_TARGETS" );
    precacheshader( "h1_hud_tutorial_blur" );
    precacheshader( "h1_hud_tutorial_border" );
    precachemodel( "h2_com_clipboard_wpaper_anim" );
    precachemodel( "h2_characters_accessories_pencil" );
    level._ID47547 = maps\roadkill_code::_ID47542;
    level._ID52834 = [];
    level._ID52834["detour"] = spawnstruct();
    level._ID52834["max"] = 4;
    level._ID49654 = [];
    level._ID44591 = [];
    var_0 = getent( "trapper_clip", "targetname" );
    var_0 connectpaths();
    var_0 delete();
    precachestring( &"SCRIPT_LEARN_JAVELIN" );
    _ID42530::_ID616( "tag_origin" );
    _ID42323::_ID616();
    _ID44133::_ID521();
    _ID42407::_ID1892( "neutral", maps\roadkill_code::_ID54215 );
    _ID42237::_ID14400( "intro_started" );
    _ID42237::_ID14400( "riverbank_baddies_retreat" );
    _ID42237::_ID14400( "binoc_explosion" );
    _ID42237::_ID14400( "player_gets_in" );
    _ID42237::_ID14400( "player_latvee_stops" );
    _ID42237::_ID14400( "shepherd_moves_out" );
    _ID42237::_ID14400( "shepherd_vehicles_leave" );
    _ID42237::_ID14400( "ambush_auto_adjust_speed" );
    _ID42237::_ID14400( "player_knocked_down" );
    _ID42237::_ID14400( "resume_the_path" );
    _ID42237::_ID14400( "bridgelayer_crosses" );
    _ID42237::_ID14400( "time_to_go_stair_guys" );
    _ID42237::_ID14400( "time_to_go" );
    _ID42237::_ID14400( "get_on_the_line" );
    _ID42237::_ID14400( "guys_get_in_convoy_vehicles" );
    _ID42237::_ID14400( "convoy_moment" );
    _ID42237::_ID14400( "lets_go_trigger" );
    _ID42237::_ID14400( "room_was_flashed" );
    _ID42237::_ID14400( "we're cut off" );
    _ID42237::_ID14400( "retreaters_run" );
    _ID42237::_ID14400( "final_objective" );
    _ID42237::_ID14400( "friendlies_run_to_school" );
    _ID42237::_ID14400( "leaving_riverbank" );
    _ID42237::_ID14400( "player_attacked_bridge_enemy" );
    _ID42237::_ID14400( "player_switched_to_javelin" );
    _ID42237::_ID14400( "missile_fire_1" );
    _ID42237::_ID14400( "missile_fire_2" );
    _ID42237::_ID14400( "missile_fire_3" );
    _ID42237::_ID14400( "push_through" );
    _ID42237::_ID14400( "100ton_bomb_goes_off" );
    _ID42237::_ID14400( "bridge_baddies_retreat" );
    _ID42237::_ID14400( "player_is_dismounted" );
    _ID42237::_ID14400( "hidden_guy_opens_fire" );
    _ID42237::_ID14400( "bridgelayer_starts" );
    _ID42237::_ID14400( "roadkill_school_10" );
    _ID42237::_ID14400( "roadkill_school_11" );
    _ID42237::_ID14400( "pull_garage" );
    _ID42237::_ID14400( "rpg_end" );
    _ID42237::_ID14400( "friendlies_suppress_school" );
    _ID42237::_ID14400( "intro_lines_complete" );
    _ID42237::_ID14400( "fight_back" );
    _ID42237::_ID14400( "trapper_spawners_ignoreme" );
    _ID42237::_ID14400( "riverbank_scene_starts" );
    _ID42237::_ID14400( "player_closes_gap" );
    _ID42237::_ID14400( "bridgelayer_complete" );
    _ID42237::_ID14400( "convoy_oscar_mike_after_explosion" );
    _ID42237::_ID14400( "bridge_layer_attacked_by_bridge_baddies" );
    _ID42237::_ID14400( "shot_rings_out" );
    _ID42237::_ID14400( "latvees_spin_up" );
    _ID42237::_ID14400( "video_tapers_react" );
    _ID42237::_ID14400( "playground_baddies_retreat" );
    _ID42237::_ID14400( "sweep_dismount_building" );
    _ID42237::_ID14400( "h2_intro_done" );
    _ID42237::_ID14400( "intro_latvee_complete" );
    _ID42237::_ID14400( "safe_to_delete_bridge_allies" );
    _ID54200::_ID51026();
    _ID42407::_ID1895( "learn_javelin", &"SCRIPT_LEARN_JAVELIN", maps\roadkill_code::_ID52824, undefined, "medium_background" );
    _ID42407::_ID1895( "learn_flash", &"SCRIPT_PLATFORM_HINT_FLASH", maps\roadkill_code::_ID44206, undefined, "medium_background" );
    _ID42407::_ID1895( "learn_m203", &"SCRIPT_LEARN_GRENADE_LAUNCHER", maps\roadkill_code::_ID43629, undefined, "medium_background" );
    _ID42407::_ID1892( "allies", maps\roadkill_code::_ID15786 );
    _ID42407::_ID1892( "axis", maps\roadkill_code::_ID46083 );
    _ID42237::_ID30396( "fire_missile", _ID42508::_ID5479 );
    _ID42237::_ID30396( "plane_sound", _ID46486::_ID26746 );
    _ID42237::_ID30398( "helper_model", _ID42407::_ID31860 );
    _ID42237::_ID30398( "barbwire_ride_cutoff", maps\roadkill_code::_ID53601 );
    _ID42237::_ID30398( "vehicle_break", maps\roadkill_code::_ID53154 );
    _ID42237::_ID30398( "ent_flag_set_trigger", maps\roadkill_code::_ID47053 );
    _ID42237::_ID30398( "trigger_delete_axis_not_in_volume", maps\roadkill_code::_ID48787 );
    level._ID52610 = [];
    level._ID47529 = [];
    _ID42237::_ID30398( "spark_preset", maps\roadkill_code::_ID45635 );
    _ID42237::_ID30398( "vehicle_spark_trigger", maps\roadkill_code::_ID48366 );
    _ID42272::_ID33575( "compass_map_roadkill" );
    _ID42237::_ID30398( "deleteme", _ID42407::_ID31860 );
    _ID42237::_ID30398( "damage_targ_trigger", maps\roadkill_code::_ID49768 );
    _ID42237::_ID30398( "wave_right_trigger", maps\roadkill_code::_ID53772 );
    level.moving_tank = getent( "moving_riverbank_tank", "targetname" );
    level.moving_tank _ID42407::_ID1947( maps\roadkill_code::intro_moving_tank );
    _ID42407::_ID3344( "riverbank_tank", maps\roadkill_code::_ID48886 );
    _ID42407::_ID3343( "retreat_spawner", maps\roadkill_code::_ID52319 );
    level._ID51221 = 0;
    _ID42407::_ID3343( "extra_retreat_spawner", maps\roadkill_code::_ID43981 );
    _ID42407::_ID3343( "convoy_gunner", maps\roadkill_code::_ID54297 );
    _ID42407::_ID3343( "dismount_macey", maps\roadkill_code::_ID43578 );
    _ID42407::_ID3343( "dismount_dunn", maps\roadkill_code::_ID50751 );
    _ID42407::_ID3343( "school_unreachable_spawner", maps\roadkill_code::_ID46635 );
    thread maps\roadkill_code::_ID53818();
    _ID42407::_ID3344( "foley_spawner", maps\roadkill_code::_ID46849 );
    _ID42407::_ID3343( "dunn_spawner", maps\roadkill_code::_ID49993 );
    _ID42407::_ID3343( "shepherd_spawner", maps\roadkill_code::_ID50532 );
    level._ID43117 = [];
    _ID42407::_ID3344( "ambushed_laatpv", maps\roadkill_code::_ID53557 );
    level._ID53922 = getentarray( "more_street_spawner", "script_noteworthy" );
    level._ID48014 = getentarray( "school_ambush", "targetname" );
    _ID42407::_ID3342( level._ID48014, maps\roadkill_code::_ID52672 );
    level._ID8248 = 1;
    level._ID8249 = 1;
    level._ID54178 = spawnstruct();
    level._ID50802 = spawnstruct();
    level._ID35367["javelin"] = _ID42262::_ID21033;
    var_1 = getentarray( "player_backtrack_blocker_model", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 hide();

    var_1 = getentarray( "player_backtrack_blocker_brush", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3 hide();
        var_3 notsolid();
    }

    var_7 = getentarray( "dead_vehicle_spawner", "targetname" );

    foreach ( var_9 in var_7 )
    {
        var_9._ID25546 = var_9 setcontents( 0 );
        var_9 hide();
    }

    thread maps\roadkill_code::_ID44863();
    maps\roadkill_aud::_ID616();
    _ID42407::_ID40561( "roadkill", 0 );
    thread _ID46458();
    createthreatbiasgroup( "axis_school" );
    createthreatbiasgroup( "axis_school_unreachable" );
    createthreatbiasgroup( "axis_ambush_house" );
    createthreatbiasgroup( "axis_dismount_attackers" );
    createthreatbiasgroup( "ally_with_player" );
    createthreatbiasgroup( "ally_outside_school" );
    createthreatbiasgroup( "bridge_attackers" );
    createthreatbiasgroup( "just_player" );
    level._ID794 setthreatbiasgroup( "just_player" );
    setignoremegroup( "ally_with_player", "axis_school_unreachable" );
    setignoremegroup( "axis_school_unreachable", "ally_with_player" );
    setignoremegroup( "ally_with_player", "axis_school" );
    setignoremegroup( "axis_school", "ally_with_player" );
    setthreatbias( "ally_outside_school", "axis_ambush_house", 750 );
    thread _ID52481();
    thread _ID51524();
    _ID42237::_ID30398( "roadkill_tree", maps\roadkill_code::_ID53536 );
    thread _ID43858::_ID616();
    var_11 = getent( "pickup_crash_and_shoot", "targetname" );
    var_11 _ID42407::_ID1947( maps\roadkill_code::_ID49950, 0.05 );
    waitframe;
    level._ID794._ID4934 = undefined;
    thread maps\roadkill_code::bring_back_buildings();
    thread maps\roadkill_code::static_model_groups_think();
    _ID42237::_ID3350( getentarray( "building_collapse_lamp_post", "targetname" ), maps\roadkill_code::building_collapse_lamp_post );
}

_ID49377()
{

}

_ID47373()
{
    _ID42237::_ID14402( "Beach_Begin_Section_Flag" );
    _ID42237::_ID14402( "City_Ceiling_Flag" );
    thread maps\roadkill_lighting::_ID45110();
    _ID42237::_ID3294( getentarray( "city_dynamics_models", "targetname" ), ::hide );
    _ID42237::_ID3294( getentarray( "inside_school_dynamiques", "script_noteworthy" ), ::hide );
    thread maps\roadkill_code::_ID44112();
    var_0 = getent( "bridge_layer_clipbrush", "targetname" );
    var_0 disconnectpaths();
    var_1 = getentarray( "destroyed_latvee_model", "targetname" );
    _ID42237::_ID3350( var_1, _ID42237::_ID18529 );
    _ID42407::_ID3343( "enemy_riverbank_rpg_spawner", maps\roadkill_code::_ID45889 );
    thread maps\roadkill_code::_ID51559();
    _ID42407::_ID3344( "foley_spawner", maps\roadkill_code::_ID48859 );
    _ID42407::_ID3343( "stryker", maps\roadkill_code::_ID53854 );
    _ID42407::_ID3343( "network_chatter_spawner1", maps\roadkill_code::_ID51041 );
    _ID42407::_ID3343( "network_chatter_spawner2", maps\roadkill_code::_ID51041 );
    _ID42407::_ID1892( "allies", maps\roadkill_code::_ID43424 );
    _ID42407::_ID3346( "foley_spawner" );

    if ( _ID42407::_ID20505() )
    {
        thread maps\roadkill_code::h2_roadkill_new_intro();
        _ID42407::_ID3345( "shepherd_spawner" );
        thread maps\roadkill_code::_ID51215();
    }

    maps\roadkill_code::_ID51777();
    level._ID43793 = [];
    _ID42407::_ID3344( "riverbank_spawner", maps\roadkill_code::_ID51091 );
    thread maps\roadkill_aud::_ID47883();
    thread maps\roadkill_code::_ID50917();
    thread maps\roadkill_code::_ID50284();

    if ( !getdvarint( "use_old_waving_guy" ) )
    {
        var_2 = getent( "stair_wave_spawner", "targetname" );
        var_2 _ID42407::_ID1947( maps\roadkill_code::_ID49485 );
        var_2 _ID42407::_ID35014();
    }

    _ID42407::_ID3344( "enemy_bridge_spawner", maps\roadkill_code::_ID47771 );

    if ( _ID42407::_ID20505() )
    {
        thread maps\roadkill_code::_ID45857();
        _ID42237::_ID30398( "cover_scene_rock", maps\roadkill_code::_ID52317 );
        _ID42237::_ID30398( "candy_man", maps\roadkill_code::_ID49322 );
        _ID42237::_ID30398( "riverbank_mg", maps\roadkill_code::_ID49669 );
    }

    _ID42407::_ID3344( "enemy_riverbank_spawner", maps\roadkill_code::_ID44564 );
    _ID42407::_ID3346( "enemy_riverbank_spawner" );
    _ID42407::_ID3343( "player_personal_convoy", maps\roadkill_code::_ID49239 );
    _ID42407::_ID1892( "allies", maps\roadkill_code::_ID52978, 1 );
    _ID42411::_ID35199( "riverbank_tank" );
    level.moving_tank _ID42407::_ID10226( 4.5, _ID42411::_ID35194 );
    _ID42237::_ID30398( "mortar_org", maps\roadkill_code::_ID53136 );
    _ID42407::_ID3346( "riverbank_spawner" );
    level._ID45913 = [];
    _ID42407::_ID3344( "stair_block_guy", maps\roadkill_code::_ID48715 );

    if ( _ID42407::_ID20505() )
        _ID42407::_ID3346( "stair_block_guy" );

    thread maps\roadkill_code::_ID46967();
}

_ID44057()
{
    _ID42475::_ID34575( "start_riverbank_checkpoint" );
    _ID42465::_ID23797( "intro_fight_part_a_mix" );
    setsaveddvar( "g_friendlyNameDist", 0 );
    _ID42237::_ID24938( 3, ::setsaveddvar, "g_friendlyNameDist", 15000 );
    _ID47373();
}

_ID46095()
{
    thread _ID47373();
}

_ID52946()
{
    _ID42237::setaicount( 64 );
    var_0 = getentarray( "enemy_riverhouse_spawner", "targetname" );
    var_1 = getentarray( "enemy_riverside_spawner", "targetname" );
    _ID42407::_ID3342( var_0, maps\roadkill_code::_ID44023 );
    _ID42407::_ID3342( var_1, maps\roadkill_code::_ID44023 );
    thread maps\roadkill_code::_ID44995( var_0 );
    thread maps\roadkill_code::_ID48412( var_1 );
    _ID42407::_ID10226( 25, ::_ID45809, "littlebird_attacks", 9 );
    _ID42407::_ID10226( 30, ::_ID45809, "littlebird_attacks_2", 11 );
}

_ID44873()
{
    _ID42475::_ID34575( "start_convoy_checkpoint" );
    _ID47373();
    var_0 = _ID42237::_ID16638( "start_ride_player", "targetname" );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
}

_ID48411()
{
    var_0 = getent( "friendly_video_blocker", "targetname" );
    var_0 solid();
    var_0 connectpaths();
    var_0 notsolid();
    level._ID52228 = 0;
    thread maps\roadkill_code::_ID46408();
    _ID42407::_ID3344( "riverbank_bmp", maps\roadkill_code::_ID48886 );
    thread maps\roadkill_code::_ID43933();
    thread maps\roadkill_code::_ID54518();
    _ID42407::_ID3344( "lead_vehicle_spawner", maps\roadkill_code::_ID47167 );
    _ID42407::_ID3344( "ride_vehicle_starts_spawned", maps\roadkill_code::_ID47167 );
    level._ID44748 = [];
    level._ID49143 = [];
    var_1 = getent( "guy_gets_in_vehicle", "targetname" );
    var_1 thread maps\roadkill_code::_ID49246();
    var_2 = getent( "stairs_blocker", "targetname" );
    var_2 connectpaths();
    var_2 delete();
    var_3 = getent( "friendly_midroad_blocker", "targetname" );
    var_3 connectpaths();
    var_3 delete();
    var_4 = getentarray( "player_backtrack_blocker_model", "targetname" );

    foreach ( var_0 in var_4 )
        var_0 show();

    var_4 = getentarray( "player_backtrack_blocker_brush", "targetname" );

    foreach ( var_0 in var_4 )
    {
        var_0 show();
        var_0 solid();
    }

    _ID42407::_ID3343( "friendly_open_latvee", maps\roadkill_code::_ID48503 );
    _ID42407::_ID3344( "player_ride_vehicle", maps\roadkill_code::_ID43427 );
    _ID42407::_ID3344( "ride_vehicle_starts_moving", maps\roadkill_code::_ID47333 );

    if ( !_ID42407::_ID20505() )
        wait 0.1;

    level._ID43427 = _ID42411::_ID35195( "player_ride_vehicle" );
    _ID42411::_ID35199( "ride_vehicle_starts_moving" );
    level._ID43427 maps\roadkill_code::intro_hide_entity();
    level._ID43427 thread maps\roadkill_aud::_ID46867();
    thread maps\roadkill_code::_ID54124();

    if ( _ID42407::_ID20505() || level._ID35897 == "riverbank" )
        _ID42237::_ID14413( "get_on_the_line" );

    _ID42237::_ID14425( "player_enters_riverbank", 10 );
    _ID42237::_ID14402( "riverbank_scene_starts" );

    if ( _ID42407::_ID20505() )
    {
        _ID42407::_ID1890( maps\roadkill_code::_ID48646 );
        _ID42407::_ID1890( maps\roadkill_code::_ID45792 );
        thread _ID42407::_ID11204();
    }

    _ID42237::_ID14413( "bridge_baddies_retreat" );
    _ID42407::_ID4422( "bridge_baddies_retreat" );
    _ID42237::_ID14413( "bridgelayer_crosses" );
    var_9 = getent( "bridge_layer_clipbrush", "targetname" );
    var_9 connectpaths();
    var_9 delete();
    _ID42465::_ID23801( "intro_fight_part_b_mix" );
    _ID42407::_ID1985( _ID42237::_ID14413, "leaving_riverbank" );
    _ID42407::_ID1890( maps\roadkill_code::_ID44937 );
    _ID42407::_ID1890( maps\roadkill_code::_ID52681 );
    _ID42407::_ID1890( maps\roadkill_code::_ID46703 );
    _ID42407::_ID1890( _ID42407::_ID4422, "leaving_riverbank" );
    _ID42407::_ID11231();

    if ( getdvarint( "use_old_waving_guy" ) )
    {
        var_10 = getent( "stair_wave_spawner", "targetname" );
        var_10 _ID42407::_ID1947( maps\roadkill_code::_ID51659 );
        var_10 stalingradspawn();
    }

    var_11 = getent( "player_latvee_passenger_spawner", "targetname" );
    var_11 _ID42407::_ID1947( maps\roadkill_code::_ID43653 );
    var_11 _ID42407::_ID35014();
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID14413( "player_climbs_stairs" );
    _ID42407::_ID4917( "axis" );
    level._ID50316 = 1;
    _ID42407::_ID3344( "escape_block_spawner", maps\roadkill_code::_ID43491 );
    _ID42407::_ID3346( "escape_block_spawner" );
    _ID42407::_ID3344( "escape_block_spawner_middle", maps\roadkill_code::escape_block_spawner_middle );
    _ID42407::_ID3346( "escape_block_spawner_middle" );
    _ID42237::_ID14402( "convoy_moment" );
    _ID42237::resetaicount();
    thread maps\roadkill_aud::_ID47919();
    var_12 = getaiarray( "axis" );

    foreach ( var_14 in var_12 )
    {
        var_15 = randomfloat( 2 );
        var_14 _ID42237::_ID10192( var_15, ::kill );
    }

    _ID42407::_ID10226( 4.5, _ID42237::_ID14402, "guys_get_in_convoy_vehicles" );
    thread maps\roadkill_code::_ID52234();
    _ID42237::_ID14413( "player_gets_in" );
    thread player_gets_in_latvee_dof();
    thread maps\roadkill_code::_ID44324();
    _ID42407::_ID3344( "apache_show_building_spawner", maps\roadkill_aud::scn_apache_show_building_scripted_sfx );
    _ID42407::_ID10226( 0, _ID42411::_ID35200, "apache_show_building_spawner" );
    clearallcorpses();
    _ID42407::_ID4422( "player_gets_in" );
    var_12 = getaiarray( "allies" );

    foreach ( var_14 in var_12 )
    {
        if ( isdefined( var_14._ID22746 ) )
            var_14 _ID42407::_ID36519();

        var_14._ID507 = 0;
    }

    thread maps\roadkill_code::_ID48774();
    wait 0.8;
    _ID42237::_ID30398( "film_org", maps\roadkill_code::_ID51396 );
    _ID42237::_ID14402( "safe_to_delete_bridge_allies" );
    wait 2.7;
    var_0 = getent( "friendly_video_blocker", "targetname" );
    var_0 solid();
    var_0 disconnectpaths();
    var_19 = getentarray( "jeep_rider_spawner", "targetname" );
    _ID42407::_ID3342( var_19, maps\roadkill_code::_ID50920 );
    _ID42237::_ID3350( var_19, _ID42407::_ID35014 );
    level notify( "continue_film_explosion_h2" );
    thread maps\roadkill_code::_ID45262();
    _ID42237::_ID14413( "convoy_oscar_mike_after_explosion" );
    _ID42407::_ID10226( 2.2, _ID42237::_ID14402, "lead_vehicle_rolls_out" );
    var_20 = [];
    var_20[1] = 0.7;
    var_20[2] = 0.6;
    var_20[3] = 0.1;
    var_20[4] = 3.2;
    var_20[5] = 0.4;
    var_20[6] = 0;
    _ID42465::_ID23797( "vehicle_ride_mix" );

    for ( var_21 = 1; var_21 <= 6; var_21++ )
    {
        if ( _ID42237::_ID14396( "convoy_crosses_bridge" + var_21 ) )
            _ID42237::_ID14402( "convoy_crosses_bridge" + var_21 );

        wait(var_20[var_21]);
    }

    _ID45445( 0 );
}

player_gets_in_latvee_dof()
{
    var_0 = _ID54167::_ID43386( "teamplayer_climb_latvee" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 16, 100, 16.0, 16.0 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.0, 45, 1.0, 1.0 );
    var_0 _ID54167::_ID48800( 1.5 ) _ID54167::_ID50321( 3.0, 37, 1.0, 1.0 );
    var_0 _ID54167::_ID48800( 2.15 ) _ID54167::_ID50321( 6.0, 20, 2.0, 2.0 );
    var_0 _ID54167::_ID48800( 2.85 ) _ID54167::_ID50321( 7.0, 29, 6.0, 6.0 );
    var_0 _ID54167::_ID48800( 3.3 ) _ID54167::_ID50321( 7.0, 18, 3.0, 3.0 );
    var_0 _ID54167::_ID48800( 3.85 ) _ID54167::_ID50321( 9.0, 14, 4.0, 4.0 );
    var_0 _ID54167::_ID48800( 4.15 ) _ID54167::_ID50321( 14.0, 400, 4.0, 2.0 );
    var_0 _ID54167::_ID48800( 5.15 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 5.15 ) _ID54167::_ID46727();
    var_0 _ID54167::_ID48800( 25.9 ) _ID54167::_ID47198( 0.35, 2.0, level._ID794, 100 );
    var_1 = 0.04;
    var_2 = 1.0;
    var_3 = 10000;
    var_4 = level._ID794;
    var_5 = 35.5;

    for ( var_6 = 31.85; var_6 <= var_5; var_6 += 0.5 )
        var_0 _ID54167::_ID48800( var_6 ) _ID54167::_ID47198( var_1, var_2, var_4, var_3 );

    var_0 _ID54167::_ID48800( 1.05 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 1.7 ) _ID54167::_ID47198( 0.08, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.65 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 3.8 ) _ID54167::_ID47198( 0.1, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.4 );
    var_0 _ID54167::_ID48800( 4.45 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 5.25 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID54583()
{
    _ID42475::_ID34575( "start_ride_checkpoint" );
    _ID42237::_ID14402( "Beach_Begin_Section_Flag" );
    _ID42237::_ID14402( "City_Ceiling_Flag" );
    _ID42237::_ID14402( "First_City_Section_Flag" );
    _ID42237::_ID14402( "Crossroads_Flag" );
    maps\roadkill_code::_ID46274( "start_vehicle_ride" );
    _ID45445( 1 );
}

_ID45445( var_0 )
{
    thread h2_latvee_ride_cinematic();
    thread h2_latvee_escape_cinematic();
    _ID42237::_ID3294( getentarray( "city_dynamics_models", "targetname" ), ::show );
    _ID42407::_ID1892( "axis", _ID42407::_ID32355, 1 );
    _ID42407::_ID32255( maps\roadkill_code::_ID49363 );
    maps\roadkill_code::_ID47829();
    var_1 = getentarray( "destroyed_latvee_model", "targetname" );
    _ID42237::_ID3350( var_1, _ID42237::_ID18529 );
    level._ID9277 = 0;
    level._ID794 enabledeathshield( 1 );
    thread maps\roadkill_code::_ID49867();
    level._ID794 disableweapons();
    level._ID794 _ID42407::_ID13021( "near_death_vision_enabled" );
    level._ID27617 = missile_createrepulsorent( level._ID794, 2000, 500 );
    level._ID45681 = [];
    _ID42407::_ID3343( "run_away_die", maps\roadkill_code::_ID51066 );
    _ID42407::_ID3343( "start_player_crazy_ride", maps\roadkill_code::_ID48458 );
    _ID42407::_ID3344( "ride_vehicle_spawner", maps\roadkill_code::_ID49239 );
    _ID42407::_ID3343( "traffic_jam_truck", maps\roadkill_code::_ID52139 );
    _ID42407::_ID3343( "ignore_until_attack", maps\roadkill_code::_ID44600 );
    _ID42407::_ID3343( "trapper_spawner", maps\roadkill_code::_ID49635 );
    _ID42407::_ID3343( "rpg_ambush_spawner", maps\roadkill_code::_ID50639 );
    thread maps\roadkill_code::_ID43914();
    _ID42407::_ID3343( "blocker_driver", maps\roadkill_code::_ID43588 );
    _ID42407::_ID3343( "ride_killer", maps\roadkill_code::_ID48697 );

    if ( var_0 )
        _ID42411::_ID35200( "ride_vehicle_spawner" );

    _ID42407::_ID1892( "axis", maps\roadkill_code::_ID24832 );
    thread maps\roadkill_code::_ID43259();
    thread maps\roadkill_code::_ID50523();
}

h2_latvee_ride_cinematic()
{
    var_0 = _ID54167::_ID43386( "roadkill_latvee_gameplay_ride" );
    var_1 = 1.0;
    var_2 = 10000;
    var_3 = level._ID794;
    var_4 = 99;

    for ( var_5 = 0.0; var_5 <= var_4; var_5 += 0.25 )
    {
        if ( var_5 > 14.35 && var_5 <= 43.5 )
            var_6 = 0.05;
        else if ( var_5 > 78.5 && var_5 <= 94.0 )
            var_6 = 0.07;
        else
            var_6 = 0.04;

        var_0 _ID54167::_ID48800( var_5 ) _ID54167::_ID47198( var_6, var_1, var_3, var_2 );
    }

    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47198( 0.16, 0.9, var_3, var_2 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 0.7 ) _ID54167::_ID47198( 0.12, 0.75, var_3, var_2 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 4.95 ) _ID54167::_ID47198( 0.16, 0.9, var_3, var_2 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 5.7 ) _ID54167::_ID47198( 0.12, 0.75, var_3, var_2 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48166();
}

h2_latvee_escape_cinematic()
{
    _ID42237::_ID14413( "rpg_super_ambush" );
    var_0 = _ID54167::_ID43386( "roadkill_latvee_gameplay_escape" );
    var_1 = 1.0;
    var_2 = 10000;
    var_3 = level._ID794;
    var_4 = 41;

    for ( var_5 = 5.6; var_5 <= var_4; var_5 += 0.15 )
    {
        if ( var_5 > 5.6 && var_5 <= 7.95 )
            var_6 = 0.06;

        if ( var_5 > 7.95 && var_5 <= 8.35 )
            var_6 = 0.01;
        else if ( var_5 > 8.35 && var_5 <= 16.5 )
            var_6 = 0.08;
        else if ( var_5 > 18.5 && var_5 <= 23.0 )
            var_6 = 0.07;
        else if ( var_5 > 24.3 && var_5 <= 25.8 )
            var_6 = 0.1;
        else if ( var_5 > 26.3 && var_5 <= 27.3 )
            var_6 = 0.06;
        else if ( var_5 > 28.3 && var_5 <= 30.3 )
            var_6 = 0.1;
        else if ( var_5 > 30.3 && var_5 <= 32.8 )
            var_6 = 0.08;
        else if ( var_5 > 32.8 && var_5 <= 34.0 )
            var_6 = 0.06;
        else
            var_6 = 0.04;

        var_0 _ID54167::_ID48800( var_5 ) _ID54167::_ID47198( var_6, var_1, var_3, var_2 );
    }

    thread h2_latvee_escape_pickup_push_cin();
    var_0 _ID54167::_ID48166();
}

h2_latvee_escape_pickup_push_cin()
{
    var_0 = _ID54167::_ID43386( "roadkill_latvee_pickup_push" );
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID47198( 0.25, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.8 );
    var_0 _ID54167::_ID48800( 4.35 ) _ID54167::_ID47198( 0.25, 1.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 1.6 );
    _ID42237::_ID14413( "push_through" );
    var_0 _ID54167::_ID48166();
}

_ID54142()
{
    var_0 = getaiarray();

    foreach ( var_2 in var_0 )
    {
        if ( isalive( level._ID46107 ) && var_2 == level._ID46107 )
            continue;

        if ( isdefined( var_2._ID22746 ) )
            var_2 _ID42407::_ID36519();
    }

    _ID42237::_ID14413( "roadkill_town_dialogue" );
    _ID42407::_ID4422( "roadkill_town_dialogue" );
    thread maps\roadkill_code::_ID49480();
    waitframe;

    if ( level._ID35897 != "ride" )
    {
        var_4 = gettime();
        wait 0.6;
        thread maps\roadkill_code::_ID43640( "roadkill_fly_breakingaway" );
        wait 2.1;
        thread maps\roadkill_code::_ID43640( "roadkill_hqr_copyhunter2" );
        _ID42407::_ID40847( var_4, 6.5 );
        thread maps\roadkill_code::_ID43640( "roadkill_fly_eyeoutforciv" );
        wait 6.5;
        thread maps\roadkill_code::_ID43640( "roadkill_fly_scanrooftops" );
        wait 4.8;
        _ID42407::_ID40847( var_4, 17.8 );
    }

    thread maps\roadkill_code::_ID43123( "roadkill_cpd_seeanything" );
    wait 2.2;
    thread maps\roadkill_code::_ID49738( "roadkill_cpd_placeisdead" );
    wait 2.3;
    thread maps\roadkill_code::_ID43123( "roadkill_ar3_huah" );
    wait 2.5;
    thread maps\roadkill_code::_ID43640( "roadkill_fly_crossstreeteliz" );
    wait 4.5;
    thread maps\roadkill_code::_ID43640( "roadkill_hqr_caution" );
    wait 4.0;
    _ID42237::_ID14413( "civie_dialogue" );
    wait 2.9;
    thread maps\roadkill_code::_ID49738( "roadkill_cpd_wildwest" );
    wait 2.6;
    thread maps\roadkill_code::_ID43123( "roadkill_ar3_rogerthat" );
    _ID42237::_ID14413( "start_runner" );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID29969 ) )
            continue;

        var_2 maps\roadkill_code::_ID52943();
    }

    thread maps\roadkill_code::_ID44805();
    _ID42407::_ID10226( 6.0, maps\roadkill_code::_ID43640, "roadkill_fly_watchalleys" );
    _ID42407::_ID10226( 8.0, maps\roadkill_code::_ID43640, "roadkill_ar3_covering" );
    wait 13.7;
    thread maps\roadkill_code::_ID43640( "roadkill_ar1_probablemilitia" );
    wait 3.5;
    thread maps\roadkill_code::_ID43640( "roadkill_fly_aretheyarmed" );
    wait 2.2;
    thread maps\roadkill_code::_ID43640( "roadkill_ar1_watchingus" );
    wait 5.1;
    thread maps\roadkill_code::_ID49738( "roadkill_cpd_scoutingus" );
    wait 2.0;
    thread maps\roadkill_code::_ID43123( "roadkill_fly_doesntmean" );
}

_ID45367()
{
    _ID42475::_ID34575( "start_crazy_ride_checkpoint" );
    _ID42237::_ID14402( "First_City_Section_Flag" );
    _ID42237::_ID14402( "Crossroads_Flag" );
    _func_31b( 1 );
    _func_31b( 3 );
    _func_31c( 2 );
    maps\roadkill_code::_ID46274( "start_vehicle_crazy_ride" );
    _ID45445( 1 );
}

_ID49117()
{
    _ID42237::_ID30398( "shot_fired_trigger", maps\roadkill_code::_ID54657 );
    thread maps\roadkill_aud::_ID49995();
    _ID42237::_ID14413( "shot_rings_out" );
    thread maps\roadkill_code::_ID49525();
    thread _ID53393();
    thread maps\roadkill_code::_ID47699();
    _ID42237::_ID14413( "ambush_spawn" );
    var_0 = getaiarray();

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2 getturret() ) )
            continue;

        if ( var_2._ID1194 != "neutral" )
            continue;

        var_2 maps\roadkill_code::_ID52943();
    }

    level._ID794._ID511 = 0;
    level._ID794._ID512 = 0;
    _ID42237::_ID3350( level._ID48014, _ID42407::_ID35014 );
    _ID42237::_ID14413( "ambush" );
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID1892( "axis", maps\roadkill_code::_ID43159 );
    level._ID54552 = getdvarfloat( "physveh_explodeforce", 0 );
    setsaveddvar( "physveh_explodeforce", 0 );
    wait 3;
    _ID42407::_ID4422( "ambush" );
}

_ID53393()
{
    _ID42237::_ID14413( "shot_rings_out" );
    wait 1;
    thread maps\roadkill_code::_ID50181( "roadkill_ar2_seeem" );
    _ID42475::_ID34575( "start_ambush_mix" );
    wait 1.5;
    thread maps\roadkill_code::_ID49738( "roadkill_cpd_dontseejack" );
    wait 1.5;
    thread maps\roadkill_code::_ID43640( "roadkill_fly_prepeng" );
    wait 3.8;
    thread maps\roadkill_code::_ID49738( "roadkill_cpd_goinin" );
    wait 1.8;
    thread maps\roadkill_code::_ID43123( "roadkill_ar1_spinemup" );
    wait 1.5;
    _ID42237::_ID14402( "latvees_spin_up" );
    thread maps\roadkill_code::_ID48216( "roadkill_ar3_12and6" );
    wait 0.5;
    thread maps\roadkill_code::_ID44340( "roadkill_ar4_tonacontacts" );
    wait 1.5;
    thread maps\roadkill_code::_ID44340( "roadkill_ar5_longrange" );
    wait 1.0;
    thread maps\roadkill_code::_ID48216( "roadkill_ar2_goinforward" );
    wait 2.0;
    _ID42407::_ID4918( "axis" );
    thread maps\roadkill_code::_ID49738( "roadkill_cpd_lightemup" );
    _ID42407::_ID10226( 0.5, maps\roadkill_code::_ID48126, "roadkill_AB2_heretheycome" );
    _ID42407::_ID10226( 2.5, maps\roadkill_code::_ID48126, "roadkill_AB2_rpgslatvees" );
    _ID42237::_ID14413( "ambush" );
    wait 5.0;
    thread maps\roadkill_code::_ID49738( "roadkill_cpd_backup" );
    wait 2;
    thread maps\roadkill_code::_ID49738( "roadkill_cpd_outtahere" );
    _ID42407::_ID10226( 3.5, maps\roadkill_code::_ID48126, "roadkill_AB2_hassanmove" );
    _ID42407::_ID10226( 6.5, maps\roadkill_code::_ID48126, "roadkill_AB2_diedogs" );
    _ID42407::_ID10226( 8.5, maps\roadkill_code::_ID48126, "roadkill_AB2_movex3" );
}

_ID51976()
{
    _ID42475::_ID34575( "start_crazy_ride_later_checkpoint" );
    _ID42237::_ID14402( "School_Section_Flag" );
    _ID42237::_ID14402( "Crossroads_Flag" );
    _func_31b( 1 );
    _func_31b( 3 );
    _func_31c( 2 );
    _func_31c( 4 );
    _func_31c( 5 );
    maps\roadkill_code::_ID46274( "start_vehicle_ride_later" );
    _ID45445( 1 );
}

_ID52649()
{
    thread _ID52162();
    var_0 = getent( "player_brake_trigger", "targetname" );
    var_0 thread maps\roadkill_code::_ID45988();
    var_1 = level._ID52834[0];
    var_2 = level._ID52834[1];
    var_3 = level._ID52834[2];
    var_2 vehphys_disablecrashing();
    level._ID794 enabledeathshield( 0 );
    wait 0.05;
    thread maps\roadkill_code::_ID45499();
    thread maps\roadkill_code::_ID54662();
    _ID42237::_ID14413( "lead_vehicle_speeds_up" );
    level._ID54552 = getdvarfloat( "physveh_explodeforce", 0 );
    setsaveddvar( "physveh_explodeforce", 0 );
    _ID42237::_ID14413( "resume_the_path" );
    setplayerignoreradiusdamage( 1 );
    _ID42407::_ID10226( 0.25, maps\roadkill_code::_ID45561, 12 );
    _ID42407::_ID10226( 0.2, maps\roadkill_code::_ID46217 );
    _ID42407::_ID10226( 1.25, maps\roadkill_code::_ID45561, 8 );
    _ID42237::_ID14413( "player_is_pushing_truck" );
    _ID42237::_ID3350( getentarray( "rotate_object", "targetname" ), maps\roadkill_code::rotate_object );
    var_4 = getvehiclenode( "player_reattach_route", "script_noteworthy" );
    var_2 startpath( var_4 );
    var_3._ID1266 = 0;
    var_1 thread maps\roadkill_code::_ID54293();
    var_2 resumespeed( 5 );
    _ID42237::_ID14402( "push_complete" );
    level notify( "stop_updating_player_vehicle_speed" );
    setplayerignoreradiusdamage( 0 );
    thread _ID46200();
    var_1 = level._ID52834[0];
    var_2 = level._ID52834[1];
    var_3 = level._ID52834[2];
    _ID42237::_ID14413( "player_vehicle_wipes_out" );
    var_2 vehicle_setspeed( 14, 2, 2 );
    var_3 vehicle_setspeed( 14, 2, 2 );
    var_5 = getentarray( "last_building_spawner", "targetname" );
    _ID42407::_ID3339( var_5 );
    missile_deleteattractor( level._ID27617 );
    var_6 = getent( "missile_target", "targetname" );
    var_7 = getent( var_6._ID1191, "targetname" );
    var_8 = missile_createattractorent( var_7, 50000, 50000, level._ID48697 );
    _ID42407::_ID32411( 0.0 );
    level._ID794._ID512 = 1;
    thread maps\roadkill_code::_ID49415();
    wait 2;
    var_2 vehicle_setspeed( 10, 2, 2 );
    var_3 vehicle_setspeed( 10, 2, 2 );
    level._ID794 enabledeathshield( 1 );
    var_9 = undefined;

    for (;;)
    {
        var_10 = 0;
        var_11 = getentarray( "rocket", "classname" );

        foreach ( var_9 in var_11 )
        {
            if ( distance( var_9._ID740, level._ID794._ID740 ) < 750 )
            {
                var_10 = 1;
                break;
            }
        }

        if ( var_10 )
            break;

        wait 0.05;
    }

    var_14 = _ID42407::_ID15689( level._ID794 geteye(), level._ID794 getplayerangles(), var_9._ID740 );
    var_15 = var_14 >= 0.8;

    if ( var_15 )
    {
        _ID42407::_ID34379();
        _ID42407::_ID34377( 0.65 );
        _ID42407::_ID34374( 0.2 );
        _ID42407::_ID34371();
        thread maps\roadkill_aud::dismount_rpg_slomo_mix();
    }

    for (;;)
    {
        if ( !isdefined( var_9 ) )
            break;

        if ( distance( var_9._ID740, level._ID794._ID740 ) < 150 )
        {
            if ( var_15 )
            {
                var_15 = 0;
                _ID42407::_ID34375( 0.0 );
                _ID42407::_ID34372();
                _ID42407::_ID34369();
            }
        }

        if ( distance( var_9._ID740, level._ID794._ID740 ) < 75 )
            break;

        wait 0.05;
    }

    if ( var_15 )
    {
        _ID42407::_ID34375( 0.0 );
        _ID42407::_ID34372();
        _ID42407::_ID34369();
    }

    thread maps\roadkill_code::_ID45240();
    var_16 = level._ID794._ID740;
    level._ID794 unlink();
    level._ID44301 delete();
    level._ID794 setorigin( var_16 );
    level notify( "ride_ends" );
    level._ID794 _ID42298::_ID39638();
    var_17 = getaiarray( "allies" );

    foreach ( var_19 in var_17 )
    {
        if ( isdefined( var_19._ID22746 ) )
            var_19 _ID42407::_ID36519();
    }

    var_21 = [];
    var_21[0] = var_1;
    var_21[1] = var_2;
    var_21[2] = var_3;
    var_22 = getvehiclenode( "vehicle_hell", "targetname" );

    foreach ( var_24 in var_21 )
        var_24 thread maps\roadkill_code::_ID54403( var_22 );

    setsaveddvar( "physveh_explodeforce", level._ID54552 );
}

_ID52162()
{
    _ID42237::_ID14413( "lead_vehicle_speeds_up" );
    var_0 = gettime();
    thread maps\roadkill_code::_ID45780( "roadkill_fly_strungout" );
    _ID42237::_ID14413( "we're cut off" );
    maps\roadkill_code::_ID49738( "roadkill_cpd_cutoff" );
    _ID42237::_ID14413( "push_through" );
    maps\roadkill_code::_ID45780( "roadkill_fly_pushthrough" );
}

_ID46200()
{
    _ID42237::_ID14413( "player_vehicle_wipes_out" );
    maps\roadkill_code::_ID45780( "roadkill_fly_headsup" );
    level._ID794 _ID42407::_ID27079( "roadkill_cpd_lookout" );
}

_ID50764()
{
    _ID42475::_ID34575( "start_dismount_checkpoint" );
    _ID42237::_ID14402( "School_Section_Flag" );
    _ID42237::_ID3350( getentarray( "rotate_object", "targetname" ), maps\roadkill_code::rotate_object );
    _func_31b( 1 );
    _func_31b( 3 );
    _func_31c( 2 );
    _func_31c( 4 );
    _func_31c( 5 );
    level._ID794 disableweapons();
    var_0 = _ID42237::_ID16638( "slide_org", "targetname" );
    level._ID794 setorigin( var_0._ID740 );
}

_ID43234()
{
    _ID42237::_ID14402( "kill_drones" );
    _ID42407::_ID29534( "axis", maps\roadkill_code::_ID24832 );
    _ID42237::_ID3294( getentarray( "before_school_dynamiques", "script_noteworthy" ), ::hide );
    _ID42475::_ID34575( "stop_interior_vehicle_context" );
    thread maps\roadkill_code::_ID51652();

    if ( isdefined( level._ID52834["detour"] ) && isdefined( level._ID52834["detour"]._ID170 ) )
    {
        level._ID52834["detour"]._ID9829 delete();
        level._ID52834["detour"] delete();
    }

    _ID42234::_ID13611( "smoke_column" );
    var_0 = getentarray( "destroyed_latvee_model", "targetname" );
    _ID42237::_ID3350( var_0, _ID42237::_ID34034 );
    level notify( "dismount_staged_firelights" );

    if ( level._ID35897 != "dismount" )
        thread _ID42263::_ID1376();

    thread _ID43189();
    _ID42407::_ID3342( level._ID48014, maps\roadkill_code::_ID53507 );
    _ID42407::_ID3343( "school_spawner", _ID42407::_ID12471, 5000 );
    _ID42407::_ID3343( "school_spawner", maps\roadkill_code::_ID52672 );
    _ID42237::_ID30398( "barbwire_ride_cutoff", maps\roadkill_code::_ID45329 );
    _ID42407::_ID1805( "friendlies_flee_ambush_trigger" );
    _ID42407::_ID10226( 0.95, maps\roadkill_code::_ID52377 );
    var_1 = 5;
    thread maps\roadkill_aud::_ID46869( var_1, "scn_shellshock_latvee_ambush_02", "shellshock_latvee_ambush_02_mix" );
    level._ID794 shellshock( "default", var_1 );
    earthquake( 0.3, 1.0, level._ID794._ID740, 2000 );
    setomnvar( "ui_consciousness_init", 1 );
    setsaveddvar( "ui_consciousnessVignetteDarkness", 0.1 );
    setomnvar( "ui_consciousness_play", 2 );
    var_2 = getentarray( "dead_vehicle_spawner", "targetname" );

    foreach ( var_4 in var_2 )
    {
        var_4 setcontents( var_4._ID25546 );
        var_4 show();
    }

    level._ID49551 = spawn( "script_origin", ( -6382.98, 8474.13, 334 ) );
    var_6 = _ID42407::_ID35028( "player_worldbody", level._ID49551._ID740, ( 0, 0, 0 ) );
    var_6 hide();
    thread thrown_out_of_latvee_cinseq( var_6 );
    level._ID49551 _ID42259::_ID3018( var_6, "exit_latvee" );
    var_7 = spawn( "script_origin", var_6 gettagorigin( "tag_camera" ) - ( 0, 0, 10 ) );
    var_7._ID65 = var_6 gettagangles( "tag_camera" );
    level._ID794 playerlinkto( var_7, "", 1, 0, 0, 0, 0, 0 );
    waittillframeend;
    var_7 delete();
    level._ID794 freezecontrols( 1 );
    level._ID794 _meth_84da( 0 );
    level._ID794 setstance( "prone" );
    level._ID794 allowstand( 0 );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 1 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    var_8 = getaiarray( "axis" );
    _ID42237::_ID15566( level._ID794._ID740, var_8 );

    for ( var_9 = var_8.size - 1; var_9 >= 0 && var_9 >= var_8.size - 4; var_9-- )
    {
        if ( isdefined( var_8[var_9]._ID22746 ) )
            continue;

        var_8[var_9] kill();
    }

    var_10 = getentarray( "friendly_crash_spawner", "targetname" );
    _ID42407::_ID3342( var_10, maps\roadkill_code::_ID52118 );
    _ID42407::_ID3344( "dismount_enemy_spawner", maps\roadkill_code::_ID44667 );
    _ID42407::_ID10226( 4, _ID42407::_ID3346, "dismount_enemy_spawner" );
    level._ID794 setthreatbiasgroup( "ally_with_player" );
    _ID42237::_ID3350( var_10, _ID42407::_ID35014 );
    waittillframeend;
    level._ID794 _ID42237::_ID10192( 0.15, ::setviewangleresistance, 50, 50, 20, 20 );
    level._ID794 _ID42237::_ID10192( 0.75, ::setviewangleresistance, 50, 50, 20, 20 );
    level._ID794 playerlinktodelta( var_6, "tag_player", 0.9, 0, 0, 0, 0, 1 );
    var_6 show();
    level._ID49551 _ID42259::_ID3111( var_6, "exit_latvee" );
    var_6 delete();
    wait 0.15;
    level._ID794 freezecontrols( 0 );
    level._ID794 _meth_84db();
    level._ID794 allowcrouch( 1 );
    level._ID794 allowstand( 1 );
    _ID42237::_ID14402( "player_knocked_down" );
    _ID42234::_ID13611( "crashed_latvees" );
    _ID42407::_ID29534( "axis", maps\roadkill_code::_ID43159 );
    _ID42407::_ID29534( "axis", _ID42407::_ID32355 );
    setsaveddvar( "ui_ignoreTurretCompassHide", 0 );
    setsaveddvar( "ui_hidemap", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "compass", 1 );
    wait 0.5;
    var_11 = 5;
    var_12 = var_11 * 20;

    for ( var_9 = 0; var_9 < var_12; var_9++ )
    {
        if ( level._ID794 getstance() != "prone" )
            break;

        wait 0.05;
    }

    var_13 = level._ID794 getweaponslistprimaries();
    var_14 = level._ID794 getcurrentweapon();
    var_15 = undefined;

    foreach ( var_17 in var_13 )
    {
        if ( var_17 == "javelin" )
        {
            level._ID794 takeweapon( var_17 );
            continue;
        }

        var_15 = var_17;
    }

    if ( isdefined( var_15 ) && var_14 == "javelin" )
        level._ID794 switchtoweapon( var_15 );

    level._ID794 _ID42237::_ID10192( 4, ::enabledeathshield, 0 );
    level._ID794 enableweapons();
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "actionSlotsHide", 0 );
    _ID42407::_ID32421( "g", "c" );
    _ID42237::_ID14402( "player_is_dismounted" );
    _ID42237::_ID14413( "player_enters_ambush_house" );
    level._ID53321 = 0;
    var_19 = getentarray( "ambush_ally_spawner", "targetname" );
    _ID42407::_ID3342( var_19, maps\roadkill_code::_ID51806 );
    _ID42237::_ID3350( var_19, _ID42407::_ID35014 );
    var_20 = getentarray( "ambush_house_spawner", "targetname" );
    _ID42407::_ID3343( "slowbie", maps\roadkill_code::_ID53791 );
    _ID42407::_ID3342( var_20, maps\roadkill_code::_ID46725 );
    _ID42407::_ID1985( _ID42237::_ID14413, "player_looks_at_staircase" );
    _ID42407::_ID1985( _ID42237::_ID14413, "player_progresses_in_ambush_house" );
    _ID42407::_ID1890( _ID42407::_ID3346, "ambush_house_spawner" );
    thread _ID42407::_ID11232();
    _ID42407::_ID1985( _ID42237::_ID14413, "sweep_dismount_building" );
    _ID42407::_ID1985( _ID42237::_ID14413, "player_progresses_in_ambush_house" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "ambush_house_friendlies_progress_downstairs" );
    _ID42237::_ID14413( "dismount_friendlies_go_for_staircase" );
    _ID42407::_ID1805( "ambush_house_friendlies_reach_staircase" );
    _ID42411::_ID35199( "ambushed_laatpv" );
    var_21 = getent( "remove_car", "script_noteworthy" );
    var_21 delete();
    _ID42407::_ID1985( _ID42237::_ID14413, "foley_flashbang" );
    _ID42407::_ID1890( maps\roadkill_code::_ID50127 );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "ambush_house_player_goes_upstairs" );
    thread maps\roadkill_code::_ID53605();
    thread maps\roadkill_code::school_weaponclips();
    level._ID50953 = [];
    _ID42407::_ID3343( "enemy_playground_spawner", maps\roadkill_code::_ID47014 );
    _ID42407::_ID3345( "enemy_playground_spawner" );

    foreach ( var_23 in level._ID48014 )
    {
        var_23._ID216 = 1;
        var_23._ID31023 = 1;
        var_23 _ID42407::_ID35014();
    }

    var_25 = gettime();
    var_26 = getent( "ambush_house_upstairs_first_room", "targetname" );
    var_26 _ID42407::_ID1985( _ID42407::_ID41163 );
    _ID42407::_ID1985( _ID42237::_ID14413, "player_leaves_ambush_house" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "ambush_house_friendlies_upstairs_trigger" );
    _ID42237::_ID14425( "ambush_house_player_goes_last_room", 12 );
    _ID42407::_ID1805( "ambush_house_friendlies_last_room_trigger" );
    level._ID388 _ID42407::_ID32315( "b" );
    level._ID44224 _ID42407::_ID32315( "p" );
    _ID42237::_ID14413( "playground_baddies_retreat" );
    level._ID388 _ID42407::_ID32355( 1 );
    level._ID388 thread _ID42407::_ID10226( 10, _ID42407::_ID32355, 0 );
    _ID42407::_ID1805( "ambush_house_foley_leave_trigger" );
    _ID42407::_ID1805( "ambush_house_friendlies_leave_trigger" );
    _ID42237::_ID14413( "player_leaves_ambush_house" );
}

thrown_out_of_latvee_cinseq( var_0 )
{
    var_1 = _ID54167::_ID43386( "thrown_out_of_latvee" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, -1, 32, 8 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 7.5 ) _ID54167::_ID48959() _ID54167::_ID46727();
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47198( 0.4, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.65 );
    var_1 _ID54167::_ID48800( 0.9 ) _ID54167::_ID47198( 0.2, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_1 _ID54167::_ID48800( 1.5 ) _ID54167::_ID47198( 0.15, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 2.5 ) _ID54167::_ID47198( 0.08, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 2.85 ) _ID54167::_ID47198( 0.08, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 6.4 ) _ID54167::_ID47198( 0.12, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.5 );
    var_1 _ID54167::_ID48800( 7.5 ) _ID54167::_ID47198( 0.12, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 7.7 ) _ID54167::_ID47198( 0.1, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 8.5 ) _ID54167::_ID47198( 0.08, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_1 _ID54167::_ID48800( 0.9 ) _ID54167::_ID47844( 0 );
    var_1 _ID54167::_ID48800( 1.5 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 0.5, 0.1, 0.2, 20, 20, 15, 5 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_1 _ID54167::_ID48800( 5.3 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 0.65, 0.2, 0.2, 15, 0, 5, 3 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_1 _ID54167::_ID48800( 7.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 1.0, 0.3, 0.4, 20, 10, 10, 3 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_1 _ID54167::_ID48800( 1.4 ) _ID54167::_ID44191( 72, 1.6, 0 );
    var_1 _ID54167::_ID48800( 3.0 ) _ID54167::_ID44191( 58, 2.1, 0 );
    var_1 _ID54167::_ID48800( 5.35 ) _ID54167::_ID43500( 2.3, 0 );
    var_1 _ID54167::_ID48166();
}

_ID43189()
{
    wait 4;
    thread maps\roadkill_code::_ID45780( "roadkill_fly_getoffstreet" );
    _ID42237::_ID14413( "player_is_dismounted" );
    wait 0.5;
    _ID42237::_ID14413( "player_enters_ambush_house" );
    wait 3.0;
    maps\roadkill_code::_ID45780( "roadkill_fly_everybodyok" );
    wait 0.5;
    maps\roadkill_code::_ID49738( "roadkill_cpd_huah" );
    wait 0.45;
    maps\roadkill_code::_ID49738( "roadkill_cpd_movinaroundup" );
    maps\roadkill_code::_ID45780( "roadkill_fly_securetopfloor" );
    _ID42237::_ID14402( "sweep_dismount_building" );
    _ID42237::_ID14413( "eyes_on_school" );

    if ( !_ID42237::_ID14385( "lets_go_trigger" ) )
    {
        _ID42407::_ID1886( "lets_go_trigger" );
        var_0 = getent( "ambush_house_last_room", "targetname" );
        var_0 _ID42407::_ID1985( _ID42407::_ID41162 );
        _ID42407::_ID1985( _ID42407::_ID1687, 4 );
        _ID42407::_ID11232();
    }

    thread maps\roadkill_code::_ID47160();
    _ID42407::_ID1985( _ID42237::_ID14413, "player_leaves_ambush_house" );
    _ID42407::_ID1985( _ID42237::_ID14413, "playground_baddies_retreat" );
    _ID42407::_ID1985( _ID42407::_ID1687, 20 );
    _ID42407::_ID11232();
    _ID42237::_ID14402( "playground_baddies_retreat" );
    maps\roadkill_code::_ID52567();
    _ID42407::_ID10226( 5.1, _ID42237::_ID14402, "friendlies_run_to_school" );
    thread maps\roadkill_code::_ID45780( "roadkill_fly_followme" );
    _ID42237::_ID14413( "friendlies_run_to_school" );
    var_2 = level._ID52610;
    level._ID52610 = _ID42407::_ID3328( level._ID52610 );

    foreach ( var_4 in level._ID52610 )
        var_4 _ID42407::_ID12492();

    _ID42407::_ID1805( "school_friendlies_gather_outside_trigger" );
    _ID42237::_ID30398( "stop_sprinting_trigger", maps\roadkill_code::_ID49703 );
}

_ID53153()
{
    _ID42475::_ID34575( "start_roadkill_school_fight_checkpoint" );
    _ID42237::_ID14402( "School_Section_Flag" );
    _ID42237::_ID14402( "classroom_down_stair" );
    _ID42237::_ID14402( "Crossroads_Flag" );
    _func_31b( 1 );
    _func_31b( 3 );
    _func_31c( 2 );
    _func_31c( 4 );
    _func_31c( 5 );
    _ID42237::_ID3350( getentarray( "rotate_object", "targetname" ), maps\roadkill_code::rotate_object );
    thread maps\roadkill_code::school_weaponclips();
    var_0 = _ID42237::_ID16638( "school_start_player", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    _ID42407::_ID3345( "dismount_macey" );
    _ID42407::_ID3345( "dismount_dunn" );
    waitframe;
    var_0 = _ID42237::_ID16638( "school_start_foley", "targetname" );
    level._ID388 _ID42407::_ID37404( var_0 );
    level._ID388 thread _ID42407::_ID22746();
    var_0 = _ID42237::_ID16638( "school_start_dunn", "targetname" );
    level._ID44224 _ID42407::_ID37404( var_0 );
    level._ID44224 thread _ID42407::_ID22746();
    level._ID388 _ID42407::_ID32315( "b" );
    level._ID44224 _ID42407::_ID32315( "p" );
    _ID42407::_ID1805( "school_friendlies_gather_outside_trigger" );
}

_ID44068()
{
    thread _ID44598();
    thread maps\roadkill_code::_ID54107();
    _ID42407::_ID3343( "hidden_room_spawner", maps\roadkill_code::_ID49284 );
    _ID42237::_ID3294( getentarray( "inside_school_dynamiques", "script_noteworthy" ), ::show );
    thread maps\roadkill_code::_ID46807();
    thread maps\roadkill_code::_ID50204();
    _ID42237::_ID14402( "lets_go_trigger" );
    _ID42237::_ID14413( "roadkill_school_2" );
    maps\roadkill_code::_ID49738( "roadkill_cpd_classonright" );
    wait 2;
    _ID42407::_ID1890( maps\roadkill_code::_ID45780, "roadkill_fly_intheschool" );
    _ID42407::_ID1890( maps\roadkill_code::_ID45692, "roadkill_shp_copythat21" );
    thread _ID42407::_ID11204();
    _ID42237::_ID14413( "roadkill_school_3" );
    setthreatbias( "axis_school", "ally_with_player", 0 );
    setthreatbias( "ally_with_player", "axis_school", 0 );
    _ID42237::_ID14413( "roadkill_school_5" );
    _ID42407::_ID1985( maps\roadkill_code::_ID44554 );
    _ID42407::_ID1985( _ID42407::_ID1687, 3.5 );
    _ID42407::_ID1890( maps\roadkill_code::_ID45780, "roadkill_fly_pressureoff" );
    thread _ID42407::_ID11232();
    _ID42237::_ID14413( "roadkill_school_6" );
    maps\roadkill_code::_ID52866();
    var_0 = getent( "player_shoot_detection_trigger", "targetname" );
    var_0 thread maps\roadkill_code::_ID44657();
    _ID42407::_ID3343( "fleeing_baddie_spawner", maps\roadkill_code::_ID43030 );
    _ID42237::_ID14413( "roadkill_school_9" );
    _ID42237::_ID14402( "shepherd_moves_out" );
    _ID42237::_ID14413( "roadkill_school_13" );
    thread _ID48346();
    thread maps\roadkill_code::_ID45886();
}

_ID44598()
{
    _ID42237::_ID14413( "retreaters_run" );
    wait 2;
    maps\roadkill_code::_ID45692( "roadkill_shp_thanksforassist" );
    maps\roadkill_code::_ID45780( "roadkill_fly_allthewaysir" );
}

_ID48346()
{
    if ( _ID42237::_ID14385( "player_rounds_end_corner" ) )
        return;

    level endon( "player_rounds_end_corner" );
    var_0 = getent( "roadkill_school_14", "targetname" );
    var_1 = var_0 _ID42407::_ID15633();
    var_1 _ID42407::_ID41163();
    wait 1;
    maps\roadkill_code::_ID45780( "roadkill_fly_togoliath" );
    maps\roadkill_code::_ID48700( "roadkill_ar3_sendtraffic" );
    maps\roadkill_code::_ID45780( "roadkill_fly_schoolsecure" );
    maps\roadkill_code::_ID48700( "roadkill_ar3_rallypoint" );
    maps\roadkill_code::_ID45780( "roadkill_fly_thanksfortip" );
    maps\roadkill_code::_ID45780( "roadkill_fly_watchstragglers" );
    _ID42237::_ID14402( "final_objective" );
}

_ID49864()
{
    _ID42475::_ID34575( "start_roadkill_end_checkpoint" );
    _ID42237::_ID14402( "School_Section_Flag" );
    _ID42237::_ID14402( "Final_Section_Flag" );
    _ID42237::_ID14402( "classroom_down_stair" );
    _ID42237::_ID3350( getentarray( "rotate_object", "targetname" ), maps\roadkill_code::rotate_object );
    thread maps\roadkill_code::school_weaponclips();
    _func_31b( 1 );
    _func_31b( 3 );
    _func_31c( 2 );
    _func_31c( 4 );
    _func_31c( 5 );
    var_0 = _ID42237::_ID16638( "start_player_end", "targetname" );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
}

_ID51950()
{
    _ID42475::_ID34575( "start_roadkill_endfight_checkpoint" );
    _ID42237::_ID14402( "School_Section_Flag" );
    _ID42237::_ID14402( "Final_Section_Flag" );
    _ID42237::_ID14402( "classroom_down_stair" );
    _ID42237::_ID3350( getentarray( "rotate_object", "targetname" ), maps\roadkill_code::rotate_object );
    thread maps\roadkill_code::school_weaponclips();
    _func_31b( 1 );
    _func_31b( 3 );
    _func_31c( 2 );
    _func_31c( 4 );
    _func_31c( 5 );
    var_0 = _ID42237::_ID16638( "start_player_endfight", "targetname" );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
    var_1 = _ID42237::_ID16640( "start_ally_endfight", "targetname" );
    var_2 = getent( "dismount_macey", "script_noteworthy" );
    var_2._ID740 = var_1[0]._ID740;
    var_3 = getent( "dismount_dunn", "script_noteworthy" );
    var_3._ID740 = var_1[1]._ID740;
    level._ID388 = var_2 stalingradspawn();
    level._ID44224 = var_3 stalingradspawn();

    for ( var_4 = 0; var_4 <= 16; var_4++ )
    {
        if ( _ID42237::_ID14396( "roadkill_school_" + var_4 ) )
            _ID42237::_ID14402( "roadkill_school_" + var_4 );
    }

    thread maps\roadkill_code::_ID54107();
    waitframe;
    level._ID388 _ID42407::_ID32315( "b" );
    level._ID44224 _ID42407::_ID32315( "p" );
    _ID42407::_ID3343( "fleeing_baddie_spawner", maps\roadkill_code::_ID43030 );
}

_ID53110()
{
    _ID42407::_ID3344( "shepherd_ending_spawner", maps\roadkill_code::_ID50880 );
    _ID42407::_ID3344( "ending_hangout_spawner", maps\roadkill_code::_ID50883 );
    _ID42407::_ID3344( "ending_wounded_spawner", maps\roadkill_code::ending_wounded_spawner );
    level._ID53438 = [];
    _ID42407::_ID3343( "ending_vehicle", maps\roadkill_code::_ID48375 );
    _ID42407::_ID3343( "shepherd_ending_vehicle", maps\roadkill_code::_ID45592 );
    _ID42407::_ID3343( "pistol_walk_spawner", maps\roadkill_code::_ID46299 );
    _ID42407::_ID3343( "pistol_killer_spawner", maps\roadkill_code::_ID46490 );
    _ID42237::_ID30398( "friendlies_get_on_exit_convoy_trigger", maps\roadkill_code::_ID51307 );
    thread dropplayergun();
    _ID42237::_ID14413( "roadkill_school_20" );
    level._ID54471 = [];
    level._ID43526 = [];
    _ID42407::_ID3343( "heli_spawner_left", maps\roadkill_code::_ID44113 );
    _ID42407::_ID3345( "heli_spawner_left" );
    _ID42407::_ID3343( "heli_spawner_right", maps\roadkill_code::_ID52988 );
    _ID42407::_ID3345( "heli_spawner_right" );
    _ID42407::_ID3344( "ending_takeoff_heli_spawner", maps\roadkill_code::_ID45112 );
    _ID42407::_ID3346( "ending_takeoff_heli_spawner" );

    if ( !getdvarint( "use_old_rangers_before_finale" ) )
        thread _ID47758();

    _ID42237::_ID14413( "pistol_runner_died" );
    _ID42407::_ID1805( "final_friendly_trigger" );

    if ( isalive( level._ID45694 ) )
        level._ID45694 thread _ID42407::_ID15504( "roadkill_fly_lastofem" );

    _ID42465::_ID23797( "finale" );
    _ID42237::_ID14413( "player_rounds_end_corner" );
    var_0 = getent( "shepherd_ending_spawner", "targetname" );
    var_0 _ID42407::_ID35014();
    _ID42407::_ID3346( "ending_hangout_spawner" );
    _ID42407::_ID3346( "ending_wounded_spawner" );
    _ID42237::_ID14413( "approaching_end" );
    var_0 = getent( "stryker_blocker_spawner", "targetname" );
    var_0 _ID42407::_ID35192();
    _ID42237::_ID14413( "the_end" );
    var_1 = _ID42407::_ID15741( "allies", "c" );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID22746 ) )
            var_3 _ID42407::_ID36519();

        var_3 delete();
    }

    var_5 = getaiarray( "axis" );

    foreach ( var_3 in var_5 )
        var_3 kill();

    _ID42407::_ID3344( "friendly_ending_runner_spawner", maps\roadkill_code::_ID46353 );
    _ID42407::_ID3346( "friendly_ending_runner_spawner" );
}

dropplayergun()
{
    _ID42237::_ID14413( "start_shepherd_end" );
    setsaveddvar( "cg_gunDownAnimDelayTime", 250 );
}

_ID47758()
{
    _ID42237::_ID14413( "player_rounds_end_corner_setup" );
    var_0 = [];
    var_1 = getentarray( "pistol_killer_spawner", "script_noteworthy" );

    foreach ( var_3 in var_1 )
    {
        if ( isai( var_3 ) )
        {
            var_0 = _ID42237::_ID3293( var_0, var_3 );
            break;
        }
    }

    var_1 = getentarray( "pistol_killer_friend_spawner", "script_noteworthy" );

    foreach ( var_3 in var_1 )
    {
        if ( isai( var_3 ) )
        {
            var_0 = _ID42237::_ID3293( var_0, var_3 );
            break;
        }
    }

    if ( var_0.size > 0 )
    {
        for ( var_7 = 0; var_7 < var_0.size; var_7++ )
            thread _ID50674( var_0[var_7], var_7 + 1 );
    }
    else
    {

    }
}

_ID50674( var_0, var_1 )
{
    var_2 = spawn( "script_origin", ( -9703.88, 12828.4, 511.943 ) );
    var_2._ID65 = ( 0, 34.957, 0 );

    if ( var_1 == 1 )
        var_2 _ID42259::_ID3023( var_0, "end_ranger_pointing" + var_1 );
    else if ( var_1 == 2 )
        var_2 thread _ID42259::_ID3025( var_0, "end_ranger_idle" + var_1, "stop_idle_loop" );

    _ID42237::_ID14413( "player_rounds_end_corner" );
    var_2 notify( "stop_idle_loop" );
    waittillframeend;
    var_2 _ID42259::_ID3020( var_0, "end_ranger_pointing" + var_1 );
    var_2 _ID42259::_ID3025( var_0, "end_ranger_idle" + var_1 );
}

_ID54722()
{
    _ID42465::_ID23801( "finale" );
    thread maps\roadkill_code::_ID50823( "roadkill_ar2_oscarmike2" );
    wait 1.2;
    thread maps\roadkill_code::_ID50823( "roadkill_ar3_stowyourgear" );
    wait 0.7;
    _ID42237::_ID14413( "the_end" );
    thread maps\roadkill_code::_ID50823( "roadkill_ar4_upandrunning" );
    wait 2.1;
    thread maps\roadkill_code::_ID50823( "roadkill_ar1_sparemre" );
    wait 0.3;
    thread maps\roadkill_code::_ID50823( "roadkill_ar4_oscarmike" );
    wait 0.4;
    thread maps\roadkill_code::_ID50823( "roadkill_fly_mountup" );
    wait 1.2;
    thread maps\roadkill_code::_ID50823( "roadkill_fly_movingout" );
}

_ID46458()
{
    waitframe;
    var_0 = level._ID35897;

    if ( var_0 == "intro" )
        return;

    if ( var_0 == "riverbank" )
        return;

    if ( var_0 == "move_out" )
        return;

    _ID42237::_ID14402( "bridgelayer_crosses" );
    _ID42237::_ID14402( "riverbank_baddies_retreat" );
    _ID42237::_ID14402( "leaving_riverbank" );
    _ID42237::_ID14402( "player_enters_riverbank" );
    _ID42237::_ID14402( "bridge_baddies_retreat" );
    _ID42407::_ID4917( "allies" );

    if ( var_0 == "convoy" )
        return;

    _ID42407::_ID4917( "axis" );
    _ID42237::_ID14402( "player_gets_in" );
    _ID42237::_ID14402( "roadkill_town_dialogue" );
    _ID42237::_ID14402( "100ton_bomb_goes_off" );

    if ( var_0 == "ride" )
        return;

    _ID42237::_ID14402( "fight_back" );

    if ( var_0 == "ambush" )
        return;

    _ID42237::_ID14402( "detour_convoy_slows_down" );
    _ID42237::_ID14402( "ambush_spawn" );
    _ID42237::_ID14402( "ambush" );

    if ( var_0 == "ride_later" )
        return;

    if ( var_0 == "ride_end" )
        return;

    _ID42407::_ID32411( 0.0 );
    level._ID794._ID512 = 1;
    thread maps\roadkill_code::_ID45240();

    if ( var_0 == "dismount" )
        return;

    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14402( "player_enters_ambush_house" );
    _ID42237::_ID14402( "player_is_dismounted" );

    if ( var_0 == "school" )
        return;

    _ID42237::_ID14402( "final_objective" );
    _ID42237::_ID14402( "roadkill_school_20" );
    _ID42237::_ID14402( "school_back_baddies_dead" );

    if ( var_0 == "endfight" )
        return;

    if ( var_0 == "end" )
        return;
}

_ID52481()
{
    switch ( level._ID35897 )
    {
        case "default":
        case "intro":
        case "riverbank":
        case "move_out":
        case "convoy":
            maps\roadkill_code::_ID46785();
        case "ambush":
        case "ride":
        case "ride_later":
        case "ride_end":
            maps\roadkill_code::_ID45301();
        case "dismount":
            maps\roadkill_code::_ID52544();
            maps\roadkill_code::_ID49256();
        case "end":
        case "school":
        case "endfight":
            maps\roadkill_code::_ID49096();
            break;
        default:
            break;
    }
}

_ID51524()
{
    switch ( level._ID35897 )
    {
        case "default":
        case "intro":
            _ID42237::_ID14413( "get_on_the_line" );
        case "riverbank":
        case "move_out":
        case "convoy":
            _ID42237::_ID14413( "intro_latvee_complete" );
            wait 5;
            _ID42407::_ID24587( "mus_roadkill_intro" );
            _ID42237::_ID14413( "player_starts_stairs" );
            musicstop( 10 );
            _ID42237::_ID14413( "player_gets_in" );
        case "ambush":
        case "ride":
        case "ride_later":
        case "ride_end":
        case "dismount":
        case "school":
        case "endfight":
            thread _ID42407::_ID24577( "mus_roadkill_armored_and_combat" );
        case "end":
            _ID42237::_ID14413( "start_shepherd_end" );
            level notify( "stop_music" );
            musicstop( 5 );
            level._ID794 _ID42407::_ID27079( "mus_roadkill_finish" );
            break;
        default:
            break;
    }
}

_ID51698( var_0, var_1, var_2 )
{
    var_2 = clamp( ( var_2 - var_0 ) / ( var_1 - var_0 ), 0.0, 1.0 );
    return var_2 * var_2 * ( 3 - 2 * var_2 );
}

_ID43442()
{
    var_0 = 0.25;
    var_1 = 4.0;
    var_2 = 0.0;
    var_3 = 0.05;
    _func_2f1( 0, "x", 1.0 );
    _func_2f1( 0, "y", 0.0 );
    level waittill( "building_collapse" );
    wait(var_0);
    _func_2f1( 0, "y", 1.0 );
    var_2 = var_1;

    while ( var_2 > 0.0 )
    {
        var_4 = _ID51698( 0.0, var_1, var_2 );
        _func_2f1( 0, "y", var_4 );
        var_2 -= var_3;
        wait(var_3);
    }
}

_ID45809( var_0, var_1 )
{
    var_2 = _ID42411::_ID35200( var_0 );
    wait(var_1);

    foreach ( var_4 in var_2 )
    {
        var_4 maps\roadkill_aud::_ID50111();
        var_4 thread _ID42407::_ID27079( var_4._ID43356 );
    }
}
