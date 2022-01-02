// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
    {
        maps\dc_whitehouse_beautiful_corner::_ID50786();
        return;
    }

    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\dc_whitehouse_mission_select_cam::_ID50320();
        return;
    }

    thread maps\dc_whitehouse_code::whitehouse_fx_volumes();
    setsaveddvar( "fx_cast_shadow", 0 );
    _ID42407::_ID10126( ::_ID49665 );
    _ID42407::_ID1951( "tunnels", ::_ID49665, "[tunnels] -> make you way to WH", ::_ID46100 );
    _ID42407::_ID1951( "oval_office", ::_ID49678, "[oval_office] -> Will only work for testing anims" );
    _ID42407::_ID1951( "flare", ::_ID47821, "[flare] -> pop the flare" );
    _ID46258();
    _ID49840();
    var_0 = getentarray( "ceilling_light_flickering", "script_noteworthy" );
    _ID42237::_ID3350( getentarray( "lantern_animate", "targetname" ), maps\dc_whitehouse_code::h2_wh_animated_lantern );
    _ID42237::_ID3350( getentarray( "lantern_flicker", "targetname" ), maps\dc_whitehouse_code::h2_wh_flickering_lantern, var_0 );
    thread play_rain_in_hole();
    thread maps\dc_whitehouse_code::h2_wh_static_model_groups();
    level._ID46837 = [];
    level._ID46837["water_waist"] = 1;
    level.player thread _ID42407::_ID46142();
    thread maps\dc_whitehouse_code::delete_weapon_in_volume();
}

play_rain_in_hole()
{
    level endon( "player_outside" );
    thread watch_player_exit();
    var_0 = _ID42237::_ID35164();
    var_0.origin = ( -8090, 6280, -80 );
    var_0.angles = ( -90, 0, 0 );
    _ID42237::_ID14413( "player_weather_enabled" );

    while ( _ID42237::_ID14385( "player_weather_enabled" ) )
    {
        if ( level._ID28926 > 8 )
            playfxontag( level._ID1426["rain_hole_" + level._ID28926], var_0, "tag_origin" );

        wait 0.4;
    }
}

watch_player_exit()
{
    _ID42237::_ID14413( "outside_tunnels" );
    level notify( "player_outside" );
    level._ID1426["rain_10"] = loadfx( "fx/weather/rain_heavy_mist" );
    level._ID1426["rain_9"] = loadfx( "fx/weather/rain_9_lite" );
    level._ID1426["rain_hole_10"] = loadfx( "fx/misc/blank" );
    level._ID1426["rain_hole_9"] = loadfx( "fx/misc/blank" );
    thread _ID42422::_ID28930( 1 );
    wait 8.0;
    thread _ID42422::_ID28929( 24 );
}

_ID49840()
{
    _ID50819::main();
    _ID51366::main();
    maps\dc_whitehouse_lighting::main();
    _ID49734::main();
    _ID54417::main();
    _ID53829::main();
    _ID42323::main();
    precacheitem( "flare" );
    precachemodel( "picture_frame_07_animated" );
    precachemodel( "h2_wh_oval_office_secret_door_anim" );
    precacheshellshock( "minor" );
    precachemodel( "mil_sandbag_plastic_white_single_flat" );
    precachemodel( "mil_sandbag_plastic_white_single_bent" );
    precachemodel( "rappelrope100_ri" );
    precachemodel( "mil_emergency_flare" );
    precachemodel( "h2_light_chandelier_vintage_04" );
    precachemodel( "h2_light_chandelier_vintage_04_on" );
    precacheturret( "heli_spotlight" );
    precachemodel( "com_blackhawk_spotlight_on_mg_setup_small_on" );
    precachemodel( "com_blackhawk_spotlight_on_mg_setup_small_off" );
    precacheitem( "rpg_straight" );
    precachemodel( "com_door_01_handleleft2" );
    precachemodel( "weapon_binocular" );
    precachemodel( "head_us_army_g" );
    precachemodel( "head_us_army_a" );
    precacheshader( "h1_hud_tutorial_blur" );
    precacheshader( "h1_hud_tutorial_border" );
    _ID42407::_ID1895( "how_to_pop_flare", &"SCRIPT_PLATFORM_HINTSTR_POPFLARE", maps\dc_whitehouse_code::_ID52508, undefined, "medium_background" );
    level._ID10114 = 72;
    maps\dc_whitehouse_anim::main();
    _ID42287::init();
    setsaveddvar( "compassMaxRange", 4500 );
    maps\dc_whitehouse_aud::main();
    level.player setempjammed( 1 );
    _ID42272::_ID33575( "compass_map_dcemp_static" );
    _ID42407::_ID1892( "allies", maps\dc_whitehouse_code::_ID46537 );
    _ID42237::_ID3350( getvehiclenodearray( "plane_sound", "script_noteworthy" ), _ID46486::_ID26746 );
    createthreatbiasgroup( "ignore_player" );
    createthreatbiasgroup( "player" );
    setignoremegroup( "player", "ignore_player" );
    level.player setthreatbiasgroup( "player" );
    _ID42407::_ID10226( 1, _ID42407::_ID14543, "allies" );
    _ID42237::_ID3350( getentarray( "flickerlight1", "script_noteworthy" ), maps\dc_whitehouse_code::_ID48143 );
    level thread _ID24574();
    _ID42237::_ID3350( getentarray( "animated_hanging_model", "targetname" ), maps\dc_whitehouse_code::_ID43010 );
    _ID42237::_ID3350( getentarray( "rotating_fan", "targetname" ), maps\dc_whitehouse_code::_ID50162 );
    _ID42237::_ID3350( getentarray( "player_usable_turret", "script_noteworthy" ), maps\dc_whitehouse_code::player_usable_turret_init );
    _ID42237::_ID3350( getentarray( "pan_metal_idle", "targetname" ), maps\dc_whitehouse_code::metal_pan_scripted_anim, "pan_metal_idle" );
    _ID42237::_ID3350( getentarray( "pan_copper_idle", "targetname" ), maps\dc_whitehouse_code::metal_pan_scripted_anim, "pan_copper_idle" );
    thread maps\dc_whitehouse_code::h2_marshall_dialogue_foley_ignore_damage();
}

_ID24574()
{
    _ID42407::_ID24577( "mus_dc_whitehouse_tunneldrone", 140 );
    _ID42237::_ID14413( "music_cue" );
    wait 2.1;
    _ID42407::_ID24577( "mus_dc_whitehouse_attack", 328, 1 );
    _ID42237::_ID14413( "whitehouse_entrance_clear" );
    _ID42407::_ID24577( "mus_dc_whitehouse_attack_int", 328, 7 );
    _ID42237::_ID14413( "whitehouse_2min" );
    _ID42407::_ID24582( "mus_dc_whitehouse_endrun", 5 );
    _ID42475::_ID34575( "start_endrun_mix" );
}

_ID46258()
{
    _ID42237::_ID14400( "team_initialized" );
    _ID42237::_ID14400( "mg_threat" );
    _ID42237::_ID14400( "oval_office_foley_react" );
    _ID42237::_ID14400( "oval_office_done" );
    _ID42237::_ID14400( "oval_office_door_open" );
    _ID42237::_ID14400( "oval_office_moveout" );
    _ID42237::_ID14400( "oval_office_dunn_ready" );
    _ID42237::_ID14400( "oval_office_foley_ready" );
    _ID42237::_ID14400( "oval_office_anim_started" );
    _ID42237::_ID14400( "oval_office_foley_inplace" );
    _ID42237::_ID14400( "whitehouse_kitchen_open" );
    _ID42237::_ID14400( "whitehouse_interior" );
    _ID42237::_ID14400( "whitehouse_radio_done" );
    _ID42237::_ID14400( "whitehouse_hammerdown" );
    _ID42237::_ID14400( "whitehouse_hammerdown_stopped" );
    _ID42237::_ID14400( "whitehouse_briefing_start" );
    _ID42237::_ID14400( "whitehouse_briefing_end" );
    _ID42237::_ID14400( "whitehouse_hammerdown_started" );
    _ID42237::_ID14400( "whitehouse_flare_breach" );
    _ID42237::_ID14400( "whitehouse_wrapup" );
    _ID42237::_ID14400( "whitehouse_completed" );
    _ID42237::_ID14400( "broadcast" );
    _ID42237::_ID14400( "broadcast_pause" );
    _ID42237::_ID14400( "broadcast_end" );
    _ID42237::_ID14400( "countdown" );
    _ID42237::_ID14400( "whitehouse_hammerdown_jets" );
    _ID42237::_ID14400( "whitehouse_hammerdown_jets_fly" );
    _ID42237::_ID14400( "remove_use_hint" );
    _ID42237::_ID14400( "flare_end_fx" );
    _ID42237::_ID14400( "whitehouse_2min" );
    _ID42237::_ID14400( "whitehouse_90sec" );
    _ID42237::_ID14400( "whitehouse_1min" );
    _ID42237::_ID14400( "whitehouse_30sec" );
    _ID42237::_ID14400( "player_flare" );
    _ID42237::_ID14400( "player_flare_popped" );
    _ID42237::_ID14400( "player_flare_abort" );
    _ID42237::_ID14400( "marshallTakeBackWeapon" );
    _ID42237::_ID14400( "remove_flare_hint" );
    _ID42237::_ID14400( "player_looking_at_flareguy" );
    _ID42237::_ID14400( "music_cue_endrun_ending" );
    _ID42237::_ID14400( "stop_rain" );
    _ID42237::_ID14400( "whitehouse_entrance_clear" );
    _ID42237::_ID14400( "whitehouse_marshall_dialogue" );
    _ID42237::_ID14400( "start_ending_dialog" );
}

_ID49665()
{
    _ID42475::_ID34575( "start_tunnels_checkpoint" );
    maps\dc_whitehouse_code::_ID45184();
    _ID42407::_ID1805( "tunnels_init_color_trigger" );
    level waittill( "introscreen_complete" );
    thread maps\dc_whitehouse_code::check_trigger();
    var_0 = getent( "intro_scripted_node", "targetname" );
    _ID42237::_ID3350( level.intro_guys, maps\dc_whitehouse_code::intro_scripted_anim, var_0 );
    thread _ID52169();
    _ID42407::_ID1805( "tunnels_start_color_trigger" );
    level thread _ID25349();
}

_ID46100()
{
    _ID42422::_ID28924( 1 );
    _ID42407::_ID3343( "tunnels_wave_guy", ::_ID47665 );
    _ID42407::_ID3343( "tunnels_twirl_guy", ::_ID46110 );
    maps\dc_whitehouse_code::_ID53326();
    _ID42407::_ID4917( "allies" );
    level._ID388 thread _ID51613();
    level._ID44224 thread _ID43987();
    _ID42237::_ID14413( "tunnels_wave_guy" );
    thread _ID42422::_ID28930( 15 );
    _ID42237::_ID14413( "whitehouse_init" );
    var_0 = _ID53829::_ID22335;
    var_1 = _ID53829::_ID22333;
    thread _ID42422::_ID22340( var_0, var_1 );
    level thread _ID54727();
}

_ID52169()
{
    _ID42237::_ID14413( "tunnel_dialogue" );
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_partystarted" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_rogerstayfrosty" );
}

_ID47665()
{
    self endon( "death" );
    thread wave_guy_deleter( self );
    _ID42226::_ID32651( "head_us_army_a" );
    _ID42407::_ID14803( "m4_grunt", "primary" );
    var_0 = getent( self.target, "targetname" );
    var_0 thread _ID42259::_ID3025( self, "wave_idle", "stop_loop" );
    _ID42237::_ID14413( "tunnels_wave_guy" );
    var_1 = [];
    var_1[0] = "wave_whiskey";
    var_1[1] = "wave_come_on";
    var_1[2] = "wave_move";
    var_2 = 0;

    for (;;)
    {
        if ( !_ID42237::_ID14385( "tunnel_dialogue" ) )
        {
            var_0 notify( "stop_loop" );
            var_0 _ID42259::_ID3020( self, var_1[var_2] );
            var_0 thread _ID42259::_ID3025( self, "wave_idle", "stop_loop" );
        }

        wait(randomfloatrange( 7, 10 ));

        if ( var_2 == 2 )
            wait 10;

        var_2 = ( var_2 + 1 ) % var_1.size;
    }
}

wave_guy_deleter( var_0 )
{
    _ID42237::_ID14413( "whitehouse_init" );
    var_0 delete();
}

_ID46110()
{
    var_0 = getent( "tunnels_twirl_animent", "targetname" );
    _ID42407::_ID41232();
    var_0 _ID42259::_ID3027( self, "combatwalk_F_spin" );
    var_0 _ID42259::_ID3020( self, "combatwalk_F_spin" );
    _ID42407::_ID12445();
    _ID42407::_ID41231();
}

_ID54727()
{
    _ID42407::_ID4422( "tunnel_exit" );
    _ID42407::_ID3343( "whitehouse_drone", ::_ID44221 );
    _ID42407::_ID3343( "drone_war_drone", ::_ID50077 );
    var_0 = getent( "marshall", "script_noteworthy" );
    var_0 _ID42407::_ID1947( ::_ID54571 );
    var_0 _ID42407::_ID35014();
    maps\dc_whitehouse_code::_ID47565();
    maps\dc_whitehouse_code::_ID44314();
    maps\dc_whitehouse_code::_ID43750();
    maps\dc_whitehouse_code::_ID51903( "sandbag_group" );
    maps\dc_whitehouse_code::_ID51903( "westwing_sandbag_group" );
    maps\dc_whitehouse_code::_ID52432();
    maps\dc_whitehouse_code::_ID53722();
    level thread _ID51985();
    level thread _ID50538();
    level thread _ID53920();
    _ID42237::_ID3350( level.team, ::_ID48722 );
    level thread _ID44771();
    level thread _ID44070();
    level thread _ID48046();
    level.player.ignoreme = 1;
    _ID42237::_ID14413( "whitehouse_moveout" );
    level.player.ignoreme = 0;
    thread maps\dc_whitehouse_code::calm_down_courtyard_heroes();
    _ID42407::_ID4422( "moveout" );
    _ID42407::_ID1805( "whitehouse_moveout_color_trigger" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14413( "whitehouse_spotlight" );
    thread _ID42422::_ID28931( 20 );
    _ID42407::_ID10226( 19.0, _ID42237::_ID14402, "stop_rain" );
    level thread maps\dc_whitehouse_code::_ID48766();
    _ID46986();
}

_ID51985()
{
    var_0 = maps\dc_whitehouse_code::_ID52411( "whitehouse_spotlight", 400 );
    var_1 = maps\dc_whitehouse_code::_ID52411( "westwing_spotlight", 600 );
    _ID42237::_ID14413( "whitehouse_spotlight" );
    var_0 thread maps\dc_whitehouse_code::_ID47720();
    var_0 thread _ID45647();
    _ID42237::_ID14413( "whitehouse_entrance_init" );

    if ( isdefined( var_0 ) )
        var_0._ID54115 notify( "damage",  1000, level.player  );

    var_1 thread maps\dc_whitehouse_code::_ID47720();
    _ID42237::_ID14413( "whitehouse_radio_start" );
    wait 30;

    if ( isdefined( var_1 ) )
        var_1._ID54115 notify( "damage",  1000, level.player  );
}

_ID45647()
{
    _ID42237::_ID14413( "whitehouse_entrance_moveup" );
    wait 8;

    if ( self.spotlight_is_dead )
        return;
    else
    {
        level._ID44224 setentitytarget( self );
        self waittill( "death" );
        level._ID44224 clearentitytarget();
    }
}

_ID25349()
{
    wait 2;

    switch ( level._ID35897 )
    {
        case "tunnels":
        default:
            objective_add( 8, "active", &"DC_WHITEHOUSE_OBJ_GET_TO_WH" );
            objective_add( 9, "invisible", &"DC_WHITEHOUSE_OBJ_FOLLOW" );
            objective_state_nomessage( 9, "current" );
            objective_position( 9, 1 );
            _func_194( 9, level._ID388, ( 0, 0, 70 ) );
            thread _ID52083();
            _ID42237::_ID14413( "whitehouse_moveout" );
            wait 5;
            objective_state( 9, "active" );
            objective_state_nomessage( 9, "done" );
            var_0 = _ID42237::_ID16638( "objective_entrance", "targetname" );
            objective_add( 10, "current", &"DC_WHITEHOUSE_OBJ_BREACH_WH", var_0.origin );
            objective_position( 10, 1 );
            _ID42237::_ID14413( "oval_office_scene" );
            level thread _ID49935();
            wait 0.5;
            objective_state( 10, "done" );
            objective_state_nomessage( 8, "current" );
            wait 1;
            _func_194( 8, level._ID44224, ( 0, 0, 70 ) );
            _ID42237::_ID14413( "oval_office_done" );
            objective_state( 8, "done" );
        case "flare":
            objective_add( 11, "current", &"DC_WHITEHOUSE_OBJ_DEPLOY_FLARE" );
            _func_194( 11, level._ID388, ( 0, 0, 70 ) );
            thread _ID52083();
            _ID42237::_ID14413( "whitehouse_flare_breach" );
            setsaveddvar( "objectiveFadeTimeWaitOff", 0.5 );
            setsaveddvar( "objectiveFadeTooFar", 0.1 );
            _func_194( 11, level._ID44929, ( 0, 0, 70 ) );
            thread _ID52083();
            _ID42237::_ID14413( "whitehouse_hammerdown_jets_safe" );
            wait 2;
            objective_current( 11, ( 0, 0, 0 ) );
            level _ID42237::_ID41068( "player_flare_abort", "player_flare_popped" );
            objective_state( 11, "done" );
            _ID42237::_ID14402( "remove_flare_hint" );
    }

    _ID42237::_ID14413( "whitehouse_completed" );
    wait 3;
    _ID42475::_ID34575( "start_fade_out_mix" );
    maps\dc_whitehouse_code::_ID13799( 3.5 );

    if ( _ID42407::_ID20505() )
        _ID42407::_ID24793();
    else
        iprintlnbold( "DEVELOPER: END OF SCRIPTED LEVEL" );
}

_ID52083()
{
    var_0 = getdvarfloat( "objectiveFadeTimeWaitOff" );
    var_1 = getdvarfloat( "objectiveFadeTooFar" );
    setsaveddvar( "objectiveFadeTimeWaitOff", 2 );
    setsaveddvar( "objectiveFadeTooFar", 0.1 );
    wait 2;
    setsaveddvar( "objectiveFadeTimeWaitOff", var_0 );
    setsaveddvar( "objectiveFadeTooFar", var_1 );
}

_ID49935()
{
    var_0 = getdvarfloat( "objectiveFadeTimeWaitOff" );
    var_1 = getdvarfloat( "objectiveFadeTooFar" );
    setsaveddvar( "objectiveFadeTimeWaitOff", 0.5 );
    setsaveddvar( "objectiveFadeTooFar", 0.1 );
    wait 2;
    setsaveddvar( "objectiveFadeTimeWaitOff", 2 );
    setsaveddvar( "objectiveFadeTooFar", 0.1 );
    wait 2;
    setsaveddvar( "objectiveFadeTimeWaitOff", var_0 );
    setsaveddvar( "objectiveFadeTooFar", var_1 );
}

_ID49678()
{
    _ID42475::_ID34575( "start_oval_office_checkpoint" );
    maps\dc_whitehouse_code::_ID45184();
    maps\dc_whitehouse_code::_ID51715( level.team, _ID42237::_ID16640( "oval_office_start_points", "targetname" ) );
    maps\dc_whitehouse_code::_ID44431();
    maps\dc_whitehouse_code::_ID47565();
    maps\dc_whitehouse_lighting::_ID53004( "dc_whitehouse_lawn" );
    level._ID388 thread _ID51613();
    level._ID44224 thread _ID43987();
    level thread _ID53142();
    _ID42407::_ID1805( "allies_lawn_trigger" );
    _ID42407::_ID1805( "whitehouse_approach_color_trigger" );
    _ID42237::_ID14402( "whitehouse_moveout" );
    _ID42237::_ID14402( "whitehouse_briefing_end" );
    _ID42237::_ID14402( "whitehouse_radio_start" );
    _ID42237::_ID14402( "whitehouse_entrance_clear" );
    level thread _ID25349();
    level thread _ID44070();
    level thread _ID48046();
    level thread _ID50538();
}

_ID50538()
{
    level thread _ID50334();
    level thread _ID51691();
    level thread _ID53225();
    _ID42237::_ID14413( "oval_office_scene" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID14413( "oval_office_moveout" );
    _ID42407::_ID1805( "oval_office_exit_enemies_trigger" );
    _ID42407::_ID1805( "oval_office_exit_color_trigger_allies" );
    _ID42407::_ID4918( "allies" );
}

_ID54680()
{
    _ID42237::_ID14413( "oval_office_foley_dialogue" );
    level._ID388 _ID42407::_ID10805( "dcwhite_fly_dunngetdoor" );
    wait 2.5;

    if ( !_ID42237::_ID14385( "oval_office_foley_inplace" ) )
    {
        level._ID388 _ID42407::_ID10805( "dcwhite_fly_dunn" );
        wait 2;
        level._ID388 _ID42407::_ID10805( "dcwhite_fly_thatswhy" );
    }
}

_ID50334()
{
    var_0 = getent( "oval_office_window_closed", "targetname" );
    var_1 = getent( "oval_office_window_open", "targetname" );
    var_2 = getent( "oval_office_barrel_blocker", "targetname" );
    var_3 = getent( var_2.target, "targetname" );
    var_4 = _ID42237::_ID16638( var_3.target, "targetname" );
    var_2 linkto( var_3 );
    var_1 hide();
    _ID42237::_ID14413( "oval_office_scene" );
    var_1 show();
    var_5 = getent( var_0.target, "targetname" );
    var_5 connectpaths();
    var_0 delete();
    var_5 delete();
    var_2 connectpaths();
    var_3.origin = var_4.origin;
}

_ID51691()
{
    var_0 = getent( "oval_office_animent", "targetname" );
    level._ID11587 = getent( "door", "targetname" );
    level._ID11587._ID3189 = "door";
    level._ID11587 _ID42407::_ID3428();
    var_0 _ID42259::_ID3018( level._ID11587, "oval_office" );
    _ID42237::_ID14413( "oval_office_door_open" );
    _ID42407::_ID1805( "oval_office_exit_color_trigger_heroes" );
    _ID42407::_ID4422( "oval_office_door" );
    var_1 = getent( "oval_office_door_clip", "targetname" );
    var_1 notsolid();
    var_1 connectpaths();
    wait 4;
    _ID42237::_ID14402( "oval_office_moveout" );
}

_ID44771()
{
    level thread _ID51702();
    _ID42237::_ID14413( "whitehouse_briefing_end" );
    _ID42237::_ID14413( "whitehouse_entrance_init" );
    wait 4;
    level._ID388 _ID42407::_ID10805( "dcemp_fly_punchthrough" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_machineguns" );
    level thread _ID53142();
}

_ID53142()
{
    _ID42237::_ID14413( "whitehouse_entrance_clear" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_ramirezgo" );
    _ID42237::_ID14413( "whitehouse_2min" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_flattenthecity" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_lessthantwomins" );
    _ID42237::_ID14413( "whitehouse_90sec" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_90seconds" );
    _ID42237::_ID14413( "whitehouse_1min" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_60seconds" );
    _ID42237::_ID14413( "whitehouse_30sec" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_30seconds" );
}

_ID44834( var_0 )
{
    _ID42237::_ID14426( "broadcast" );
    _ID42237::_ID14402( "broadcast" );
    var_1 = sortbydistance( level._ID46238, level.player.origin );
    var_2 = 3;
    var_3 = [];
    var_4 = undefined;

    for ( var_5 = 0; var_5 < var_1.size; var_5++ )
    {
        var_6 = abs( level.player geteye()[2] - var_1[var_5].origin[2] );

        if ( var_6 > 150 )
            continue;

        var_4 = var_1[var_5];
        var_7 = var_0 + "_" + var_4._ID31259;
        var_4 maps\dc_whitehouse_aud::play_speaker_vo( var_7 );
        var_3[var_3.size] = var_4;
        var_2--;

        if ( !var_2 )
            break;
    }

    var_8 = sortbydistance( level.ext_door_radio_array, level.player.origin );

    for ( var_5 = 0; var_5 < 6; var_5++ )
        var_8[var_5] playsound( var_0 + "_int_3d_door_ext" );

    foreach ( var_4 in var_3 )
        var_4 _ID42407::_ID1985( _ID42407::_ID41116, "sounddone" );

    _ID42407::_ID11231();
    _ID42237::_ID14388( "broadcast" );
}

_ID48046()
{
    level endon( "broadcast_terminate" );
    _ID42237::_ID14413( "whitehouse_radio_start" );

    for (;;)
    {
        _ID42237::_ID14388( "broadcast_end" );
        _ID42237::_ID14426( "broadcast_pause" );
        _ID44834( "dcemp_fp1_hammerdown" );
        _ID42237::_ID14426( "broadcast_pause" );
        _ID44834( "dcemp_fp1_highvalue" );
        _ID42237::_ID14426( "broadcast_pause" );
        _ID44834( "dcemp_fp1_greenflares" );
        _ID42237::_ID14426( "broadcast_pause" );
        _ID44834( "dcemp_fp1_willabort" );
        _ID42237::_ID14402( "broadcast_end" );
        wait 0.05;
    }
}

_ID44397()
{
    self waittill( "trigger" );

    if ( self._ID31259 == level._ID43953 )
        _ID42237::_ID14402( "countdown" );
}

_ID53692()
{
    level endon( "countdown" );
    wait 30;
    _ID42237::_ID14402( "countdown" );
}

_ID44070()
{
    level endon( "whitehouse_hammerdown" );
    level._ID46238 = getentarray( "radio_origin", "targetname" );
    level.ext_door_radio_array = getentarray( "ext_door_radio_origin", "targetname" );
    _ID42237::_ID14413( "whitehouse_radio_start" );
    level._ID43953 = 0;
    var_0 = getentarray( "countdown_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID44397 );
    var_1 = [];
    var_1[0] = "dcemp_fp1_2minutes";
    var_1[1] = "dcemp_fp1_90secs";
    var_1[2] = "dcemp_fp1_1minute";
    var_1[3] = "dcemp_fp1_30secs";
    var_2 = [];
    var_2[0] = "whitehouse_2min";
    var_2[1] = "whitehouse_90sec";
    var_2[2] = "whitehouse_1min";
    var_2[3] = "whitehouse_30sec";
    _ID42237::_ID14413( "countdown_start" );
    _ID42237::_ID14402( "whitehouse_interior" );
    var_3 = gettime();

    for (;;)
    {
        level._ID43953++;
        _ID42237::_ID14402( "broadcast_pause" );
        _ID42237::_ID14426( "broadcast" );
        level _ID44834( var_1[level._ID43953 - 1] );
        var_3 = gettime();
        var_4 = 120 - ( level._ID43953 - 1 ) * 30;
        level._ID45455 = gettime() + var_4 * 1000;
        _ID42237::_ID14402( var_2[level._ID43953 - 1] );

        if ( level._ID43953 == 4 )
            break;

        level thread _ID53692();
        wait 6;
        _ID42237::_ID14388( "broadcast_pause" );
        _ID42237::_ID14413( "countdown" );
        _ID42237::_ID14388( "countdown" );
    }

    _ID42237::_ID14402( "whitehouse_hammerdown_jets" );
    _ID42237::_ID14413( "whitehouse_path_office_2" );
    level thread _ID44834( "dcemp_fp1_beenauthorized" );
    _ID42237::_ID14413( "whitehouse_hammerdown_jets_fly" );
    wait 7;
    _ID42237::_ID14402( "player_flare_abort" );
    level.player thread _ID42407::_ID25088( "drop_flare", 1.0 );
    level.player thread _ID42407::_ID25088( "flare_lookup", 3.75 );
    level.player _ID42407::_ID28864( "dcemp_fp1_abortabort" );
    level.player _ID42407::_ID28864( "dcemp_fp2_abortmission" );
    wait 4;
    _ID42407::_ID10226( 1.5, _ID42237::_ID14402, "whitehouse_wrapup" );
    level.player _ID42407::_ID28864( "dcemp_fp3_rollingout" );
}

_ID49611()
{
    level endon( "whitehouse_hammerdown" );
    _ID42237::_ID14413( "whitehouse_path_office_2" );
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
        var_2 thread whitehouse_kill_when_player_not_looking();

    var_4 = -100;

    if ( level._ID44224.origin[2] < var_4 && level._ID388.origin[2] < var_4 )
    {
        level._ID44224 _ID42407::_ID10896();
        level._ID44224._ID24727 = 1;
        level._ID388 _ID42407::_ID10896();
        level._ID388._ID24727 = 1;
    }

    _ID42407::_ID1805( "hammer_down_jet_safe_trigger" );
    _ID42407::_ID1805( "flare_ai_color_trigger" );
    wait 18;
    _ID42407::_ID1805( "h2_jet_trigger_a" );
    wait 2;
    _ID42407::_ID1805( "h2_jet_trigger_b" );
}

whitehouse_kill_when_player_not_looking()
{
    if ( !isalive( self ) )
        return;

    self endon( "death" );
    var_0 = 65536;

    while ( _ID42407::_ID54053( self.origin + ( 0, 0, 48 ), undefined, 1 ) || distancesquared( level.player.origin, self.origin ) <= var_0 )
        waittillframeend;

    self.diequietly = 1;
    self kill();
}

_ID53920()
{
    level endon( "whitehouse_path_roof" );
    _ID42237::_ID14413( "whitehouse_30sec" );
    wait 30;
    level thread _ID54343();
}

_ID54343()
{
    _ID42237::_ID14402( "whitehouse_hammerdown" );
    thread maps\dc_whitehouse_aud::aud_mission_failed_jet_flyby();
    _ID44834( "dcemp_fp1_bombsaway" );
    wait 1;
    _ID42234::_ID13611( "carpetbomb" );
    earthquake( 0.1, 1, level.player.origin, 512 );
    wait 0.5;
    earthquake( 0.2, 1, level.player.origin, 512 );
    wait 0.5;
    earthquake( 0.4, 1, level.player.origin, 512 );
    wait 0.5;
    earthquake( 0.6, 3, level.player.origin, 512 );
    wait 0.75;
    playfx( level._ID1426["carpet_bomb_explosion_player"], level.player.origin );
    level.player playsound( "explo_metal_rand" );
    wait 0.5;
    level._ID388 _ID42407::_ID36519();
    level._ID388 kill();
    level._ID44224 _ID42407::_ID36519();
    level._ID44224 kill();

    if ( isdefined( level._ID44929 ) )
    {
        level._ID44929 _ID42407::_ID36519();
        level._ID44929 kill();
    }

    var_0 = _ID42237::_ID37527( level.player getstance() == "stand", "h2_wpn_death_stand_explosion", "h2_wpn_death_crouch_explosion" );
    level.player _meth_85a8( var_0 );
    waitframe;
    level.player kill();
    waitframe;
    setdvar( "ui_deadquote", &"DC_WHITEHOUSE_FLARE_DEADQUOTE" );
}

_ID51702()
{
    level endon( "whitehouse_entrance_init" );
    _ID42237::_ID14413( "whitehouse_briefing_end" );

    for (;;)
    {
        wait 30;
        level._ID388 _ID42407::_ID10805( "dcemp_fly_workyourwayleft" );
        wait 15;
        level._ID388 _ID42407::_ID10805( "dcemp_fly_ramirezgo" );
        wait 20;
        level._ID388 _ID42407::_ID10805( "dcemp_fly_takeleftflank" );
        wait 15;
    }
}

_ID48722()
{
    if ( _ID42407::_ID20537() )
        return;

    self endon( "death" );
    self.ignoreme = 1;
    self.ignoreall = 1;
    _ID42237::_ID14413( "whitehouse_moveout" );
    self.ignoreme = 0;
    self.ignoreall = 0;
}

_ID43881( var_0 )
{
    _ID42237::_ID14402( "whitehouse_briefing_start" );
    var_1 = [];
    var_1[0] = level._ID388;
    var_1[1] = level._ID49566;
    var_0 notify( "stop_marshall_idle" );
    var_0 _ID42259::_ID3099( var_1, "DCemp_whitehouse_briefing" );
    _ID42237::_ID14402( "whitehouse_briefing_end" );
    level._ID49566.ignoreall = 0;
    level._ID49566 allowedstances( "crouch", "stand" );
}

_ID51613()
{
    thread _ID46929();
    thread _ID48561();
    thread _ID52150();
    thread _ID49723();
    thread _ID52179();
}

_ID46929()
{
    _ID42237::_ID14413( "whitehouse_init" );
    self._ID24727 = 1;
    _ID42407::_ID10896();
    _ID42407::_ID10871();
    self.ignoreme = 1;
    self.ignoreall = 1;
    wait 1;
    var_0 = getnode( "foley_briefing_approach_node", "targetname" );
    self.goalradius = var_0.radius;
    self setgoalnode( var_0 );
    self waittill( "goal" );
    var_1 = getent( "whitehouse_briefing_ent", "targetname" );
    var_1 _ID42259::_ID3074( self, "DCemp_whitehouse_briefing" );
    level thread _ID43881( var_1 );
}

_ID48561()
{
    _ID42237::_ID14413( "whitehouse_briefing_end" );
    _ID42407::_ID12445();
    self._ID24727 = undefined;
    self.ignoreme = 0;
    self.ignoreall = 0;
}

_ID52150()
{
    _ID42237::_ID14413( "oval_office_scene" );
    var_0 = 0;

    if ( !_ID42237::_ID14385( "whitehouse_briefing_end" ) )
    {
        _ID42237::_ID14413( "whitehouse_briefing_end" );
        wait 1.0;
        var_0 = 1;
    }

    if ( distance( level.player.origin, level._ID388.origin ) > 500 )
    {
        var_1 = _ID42237::_ID16638( "oval_office_foley_teleport", "targetname" );
        level._ID388 forceteleport( var_1.origin, var_1.angles );
    }

    self._ID24727 = 1;
    _ID42407::_ID10896();
    self._ID52882 = "run";
    _ID42407::_ID10871();
    var_2 = getent( "oval_office_animent", "targetname" );

    if ( var_0 )
        var_2 _ID42259::_ID47538( self, "oval_office_in" );
    else
        var_2 _ID42259::_ID3074( self, "oval_office_in" );

    var_2 _ID42259::_ID3111( self, "oval_office_in" );
    self._ID24727 = 0;
    _ID42407::_ID12467();
    self._ID52882 = undefined;
    _ID42237::_ID14402( "oval_office_foley_ready" );

    if ( !_ID42237::_ID14385( "oval_office_dunn_ready" ) )
    {
        var_2 thread _ID42259::_ID3044( self, "oval_office_idle", "stop_foley_loop" );
        _ID42237::_ID14413( "oval_office_dunn_ready" );
        var_2 notify( "stop_foley_loop" );
    }

    _ID42407::_ID12445();
    var_2 _ID42259::_ID3111( self, "oval_office" );
    _ID42237::_ID14402( "oval_office_done" );
    level._ID388.always_use_delay_min = 1;
    level._ID44224.always_use_delay_min = 1;
}

_ID49723()
{
    _ID42237::_ID14413( "whitehouse_breached" );
    _ID42407::_ID10871();
    var_0 = getent( "whitehouse_kitchen_door", "targetname" );
    var_0._ID26282 = getentarray( var_0.target, "targetname" );
    _ID42237::_ID3294( var_0._ID26282, ::linkto, var_0 );
    var_1 = getent( "whitehouse_kitchen_kick", "targetname" );
    var_1 _ID42259::_ID3028( level._ID388, "doorburst_wave" );
    var_1 thread _ID42259::_ID3024( level._ID388, "doorburst_wave" );
    var_0 thread maps\dc_whitehouse_code::_ID53767();
    level._ID388 _ID42407::_ID10226( 1, _ID42407::_ID27079, "dcburn_mcy_moveupgogo" );
    _ID42237::_ID14402( "whitehouse_kitchen_open" );
    _ID42407::_ID12492( 1 );
    level._ID388.always_use_delay_min = undefined;
    level._ID44224.always_use_delay_min = undefined;
    var_2 = getnode( "foley_wh_path", "targetname" );
    thread _ID42372::_ID16964( var_2 );
    self._ID24727 = undefined;
    _ID42407::_ID12467();
    self.ignoreme = 0;
    self.ignoreall = 0;
    _ID42407::_ID32355( 1 );
    _ID42407::_ID32294();
    _ID42237::_ID14413( "whitehouse_path_elevator" );
    _ID42407::_ID32355( 0 );
    _ID42407::_ID32295();
}

_ID52179()
{
    _ID42237::_ID14413( "whitehouse_hammerdown_jets_safe" );
    self._ID24727 = 1;
    _ID42407::_ID10896();
    _ID42407::_ID10926();
    self pushplayer( 1 );
}

_ID43987()
{
    self.ignoreme = 1;
    self.ignoreall = 1;
    wait 0.8;
    thread _ID48908();
    thread _ID43752();
    thread _ID46472();
    thread _ID44277();
}

_ID48908()
{
    _ID42237::_ID14413( "whitehouse_moveout" );
    self.ignoreme = 0;
    self.ignoreall = 0;
}

_ID43752()
{
    _ID42237::_ID14413( "whitehouse_entrance_clear" );
    _ID42407::_ID10871();
    _ID42407::_ID32335( "whitehouse_entrance_dunn_node" );
    _ID42237::_ID14413( "oval_office_scene" );
    self._ID24727 = undefined;
    _ID42407::_ID12467();
    var_0 = _ID42237::_ID16638( "oval_office_dune_start", "targetname" );
    self forceteleport( var_0.origin, var_0.angles );
    var_1 = getent( "oval_office_animent", "targetname" );
    level thread _ID45630( var_1 );
    _ID42407::_ID41232();
    var_1 _ID42259::_ID3074( self, "oval_office_in" );
    var_1 _ID42259::_ID3111( self, "oval_office_in" );
    _ID42237::_ID14402( "oval_office_dunn_ready" );

    if ( !_ID42237::_ID14385( "oval_office_foley_ready" ) )
    {
        var_1 thread _ID42259::_ID3044( self, "oval_office_idle", "stop_dunn_loop" );
        _ID42237::_ID14413( "oval_office_foley_ready" );
        var_1 notify( "stop_dunn_loop" );
    }

    var_2 = [];
    var_2[0] = self;
    var_2[1] = level._ID53860;
    var_2[2] = level._ID11587;
    _ID42407::_ID12445();
    var_1 _ID42259::_ID3099( var_2, "oval_office", undefined );
    _ID42407::_ID41231();
}

_ID45630( var_0 )
{
    var_1 = sortbydistance( getaiarray( "axis" ), var_0.origin );

    for ( var_2 = 0; var_2 < var_1.size && var_2 < 3; var_2++ )
        var_1[var_2] kill( level._ID44224.origin );
}

_ID53225()
{
    var_0 = getent( "oval_office_animent", "targetname" );
    level._ID53860 = _ID42407::_ID35028( "painting", var_0.origin );
    var_0 _ID42259::_ID3018( level._ID53860, "oval_office" );
}

_ID46472()
{
    _ID42237::_ID14413( "whitehouse_breached" );
    _ID42407::_ID10871();
    var_0 = getnode( "dunn_wh_path", "targetname" );
    thread _ID42372::_ID16964( var_0 );
    _ID42237::_ID14413( "whitehouse_path_elevator" );
    _ID42407::_ID12492( 1 );
    _ID42237::_ID14413( "whitehouse_hammerdown_jets_safe" );
    self pushplayer( 1 );
}

_ID44277()
{
    _ID42237::_ID14413( "whitehouse_hammerdown_jets_safe" );
    self._ID24727 = 1;
    _ID42407::_ID10896();
    _ID42407::_ID10926();
}

_ID54571()
{
    self endon( "death" );
    self._ID3189 = "marshall";
    self.ignoreme = 1;
    self.ignoreall = 1;
    level._ID49566 = self;
    thread _ID42407::_ID22746();
    thread returnguntomarshall();
    _ID42226::_ID32651( "head_us_army_g" );
    self allowedstances( "crouch" );
    var_0 = getent( "whitehouse_briefing_ent", "targetname" );
    self attach( "weapon_binocular", "tag_inhand" );
    var_0 _ID42259::_ID3111( self, "dcw_briefing_marshall_moremen" );

    if ( !_ID42237::_ID14385( "whitehouse_briefing_start" ) )
        var_0 thread _ID42259::_ID3044( self, "DCemp_whitehouse_briefing_idle", "stop_marshall_idle" );

    _ID42237::_ID14413( "whitehouse_briefing_end" );
    _ID42237::_ID14413( "whitehouse_spotlight" );
    _ID42407::_ID36519();
    self delete();
}

dropbinocular( var_0 )
{
    var_0 detach( "weapon_binocular", "TAG_INHAND" );
    var_1 = var_0 gettagorigin( "TAG_INHAND" );
    var_2 = spawn( "script_model", var_1 );
    var_2 setmodel( "weapon_binocular" );
}

returnguntomarshall()
{
    var_0 = getent( "marshall_gun", "targetname" );
    _ID42407::_ID14803( "scar_h_reflex", "primary" );
    _ID42407::_ID17509();
    _ID42237::_ID14413( "marshallTakeBackWeapon" );
    var_0 delete();
    _ID42407::_ID17508();
}

_ID46986()
{
    _ID42237::_ID14413( "whitehouse_entrance_moveup" );
    level thread maps\dc_whitehouse_code::_ID43402();
    _ID42237::_ID14413( "whitehouse_entrance_init" );
    _ID42407::_ID4422( "entrance" );
    _ID42237::_ID14413( "countdown_start" );
    _ID42407::_ID4422( "countdown_started" );
    _ID42237::_ID14413( "whitehouse_breached" );
    _ID42407::_ID1805( "drone_war_trigger" );
    _ID42237::_ID14413( "whitehouse_kitchen_open" );
    _ID49171();
}

_ID49171()
{
    _ID42407::_ID32343( 45, 1 );
    _ID42407::_ID29746( "axis" );
    level thread _ID49611();
    level thread _ID46508();
    setsaveddvar( "ai_friendlysuppression", 0 );
    setsaveddvar( "ai_friendlyfireblockduration", 0 );
    _ID42237::_ID14413( "whitehouse_path_elevator" );
    var_0 = ( level._ID45455 - gettime() ) / 1000;

    if ( var_0 > 70 )
        _ID42407::_ID4422( "whitehouse_parlor" );

    _ID42237::_ID14413( "whitehouse_chandelier" );
    var_1 = getent( "chandelier_grenade_source", "targetname" );
    var_2 = getent( var_1.target, "targetname" );
    magicgrenade( "fraggrenade", var_1.origin, var_2.origin, 1.5 );
    _ID42237::_ID14413( "whitehouse_path_stairs" );
    _ID42407::_ID4917( "allies" );
}

_ID44221()
{
    self endon( "death" );

    if ( !isdefined( level._ID49439 ) )
        level._ID49439 = [];

    level._ID49439[level._ID49439.size] = self;
    self.health = 10000;
    _ID42237::_ID14413( "whitehouse_silhouette_ready" );

    if ( isdefined( self._ID31039 ) )
        self._ID9813 = level._ID43035[self._ID31039];

    self.health = 200;
}

_ID50077()
{
    self endon( "death" );
    _ID42237::_ID14413( "whitehouse_path_roof" );
    wait(randomfloat( 5 ));
    self delete();
}

_ID47821()
{
    _ID42475::_ID34575( "start_flare_checkpoint" );
    maps\dc_whitehouse_code::_ID45184();
    maps\dc_whitehouse_code::_ID51715( level.team, _ID42237::_ID16640( "flare_start_points", "targetname" ) );
    maps\dc_whitehouse_code::_ID44431();
    thread _ID42407::_ID32188( "dcemp_dry" );
    maps\dc_whitehouse_code::_ID47565();
    maps\dc_whitehouse_lighting::_ID53004( "dc_whitehouse_interior" );
    level._ID45455 = gettime();
    level thread _ID49171();
    level thread _ID44070();
    _ID42237::_ID14402( "whitehouse_path_elevator" );
    _ID42237::_ID14402( "whitehouse_chandelier" );
    _ID42237::_ID14402( "whitehouse_radio_start" );
    _ID42237::_ID14402( "whitehouse_breached" );
    wait 0.1;
    level._ID43953 = 2;
    _ID42237::_ID14402( "whitehouse_radio_done" );
    _ID42237::_ID14402( "countdown_start" );
    _ID42237::_ID14388( "broadcast" );
    level._ID388 thread _ID52179();
    level._ID44224 thread _ID44277();
    var_0 = getnode( "foley_flare_start", "script_noteworthy" );
    level._ID388 thread _ID42372::_ID16964( var_0 );
    var_0 = getnode( "dunn_flare_start", "script_noteworthy" );
    level._ID44224 thread _ID42372::_ID16964( var_0 );
    level thread _ID25349();
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID24582( "mus_dc_whitehouse_endrun", 1 );
    _ID42475::_ID34575( "start_endrun_mix" );
}

_ID46508()
{
    level thread _ID46431();
    _ID42407::_ID3343( "whitehouse_flare_guy", ::_ID48280 );
    _ID42407::_ID3343( "blind_enemies", maps\dc_whitehouse_code::_ID47348 );
    _ID42407::_ID3343( "whitehouse_flare_breach_guy", ::_ID52949 );
    thread dunnending();
    level.player thread _ID49213();
    level thread _ID47296();
    _ID42237::_ID14413( "whitehouse_flare_run" );
    _ID42234::_ID13611( "roof_flares" );
}

dunnending()
{
    var_0 = getent( "flare_scene_upper_animent", "targetname" );
    _ID42237::_ID14413( "whitehouse_path_roof" );
    level._ID44224 notify( "stop_going_to_node" );
    var_0 _ID42259::_ID3074( level._ID44224, "ending_dialogue_in" );
    var_0 _ID42259::_ID3111( level._ID44224, "ending_dialogue_in" );
    var_0 thread _ID42259::_ID3044( level._ID44224, "ending_dialogue_idle", "dunn_stop_loop" );
    _ID42237::_ID14413( "start_ending_dialog" );
    var_0 notify( "dunn_stop_loop" );
    var_0 _ID42259::_ID3111( level._ID44224, "ending_dialogue_out" );
}

_ID47296()
{
    level endon( "whitehouse_hammerdown" );
    _ID42237::_ID14413( "whitehouse_flare_run" );
    wait 1.5;
    level._ID388 _ID42407::_ID10805( "dcemp_fly_gettoroof" );
    _ID42237::_ID14413( "whitehouse_hammerdown_jets_fly" );
    wait 2;
    _ID42237::_ID14402( "player_flare" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_useyourflares" );
    _ID42237::_ID14413( "whitehouse_wrapup" );
    level._ID44929 _ID42407::_ID10805( "dcemp_ar1_moscow" );
    wait 5.3;
    level._ID44929 _ID42407::_ID10805( "dcwhite_ar1_huah" );
    level._ID44224 setlookatentity();
    _ID42237::_ID14402( "whitehouse_completed" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_timeisright" );
}

_ID46431()
{
    _ID42237::_ID14413( "whitehouse_flare_breach" );
    _ID42234::_ID13611( "flare_breach" );
    earthquake( 0.3, 1, ( -2011, 8295.5, 199.5 ), 5000 );
    level.player playrumblelooponentity( "grenade_rumble" );
    maps\dc_whitehouse_aud::flare_breach_debris_snd();
}

_ID48280()
{
    self endon( "death" );
    _ID42407::_ID10877();
    _ID42407::_ID10912();
    _ID42407::_ID10973();
    _ID42407::_ID10989();
    level._ID44929 = self;
    _ID42237::_ID14402( "whitehouse_flare_breach" );
    self notify( "stop_going_to_node" );
    _ID42407::_ID22746();
    self.ignoreme = 1;
    self._ID3189 = "flare_guy";
    _ID42407::_ID32430( "whitehouse_ending_runuphill" );
    wait 0.1;
    var_0 = getent( "ramp_flare_animent", "targetname" );
    var_0 thread _ID42259::_ID3044( self, "dcemp_flare_reshoot_start_idle" );
    _ID42237::_ID14413( "whitehouse_path_office" );
    self._ID7._ID24414 = "run";
    level.player thread _ID49957();
    self._ID24727 = 1;
    _ID42407::_ID10896();
    var_0 notify( "stop_loop" );
    _ID42237::_ID14402( "music_cue_endrun_ending" );
    var_0 thread _ID42259::_ID3116( self, "dcemp_flare_reshoot_start" );
    wait 4;

    if ( !_ID42237::_ID14385( "whitehouse_flare_run" ) || !_ID42237::_ID14385( "player_looking_at_flareguy" ) )
    {
        _ID42407::_ID3136();
        var_0 _ID42259::_ID3018( self, "dcemp_flare_reshoot_start_short" );
        _ID42237::_ID14413( "player_looking_at_flareguy" );
        level notify( "flare_spotted" );
        var_0 _ID42259::_ID3116( self, "dcemp_flare_reshoot_start_short" );
    }
    else
    {
        level notify( "flare_spotted" );
        var_0 waittill( "dcemp_flare_reshoot_start" );
    }

    var_0 = getent( "flare_scene_upper_animent", "targetname" );
    var_0 _ID42259::_ID3074( self, "dcemp_flare_reshoot_end" );

    if ( !_ID42237::_ID14385( "whitehouse_path_roof" ) )
    {
        var_0 _ID42259::_ID3018( self, "dcemp_flare_reshoot_end" );
        _ID42237::_ID14413( "whitehouse_path_roof" );
    }

    _ID42237::_ID14402( "whitehouse_hammerdown_jets_fly" );
    _ID42237::_ID14402( "whitehouse_hammerdown_jets_safe" );
    _ID42237::_ID14402( "music_cue_endrun_ending" );
    thread _ID42407::_ID27081( "scn_dcwhite_npc_flare_end", "J_Wrist_RI" );
    var_0 _ID42259::_ID3111( self, "dcemp_flare_reshoot_end" );
    _ID42259::_ID3044( self, "dcemp_flare_idle" );
}

_ID49957()
{
    level endon( "flareguy_flare_popped" );
    level endon( "flare_spotted" );
    level._ID44929 endon( "death" );

    for (;;)
    {
        if ( _ID42407::_ID27540( level._ID44929 geteye(), 0.75 ) )
            _ID42237::_ID14402( "player_looking_at_flareguy" );
        else if ( _ID42237::_ID14385( "flareguy_force" ) )
            _ID42237::_ID14402( "player_looking_at_flareguy" );
        else
            _ID42237::_ID14388( "player_looking_at_flareguy" );

        wait 0.05;
    }
}

_ID52949()
{
    self._ID24727 = 1;
    _ID42407::_ID10896();

    if ( isdefined( self._ID31388 ) && self._ID31388 == "m240_acog" )
    {
        _ID42407::_ID17509();
        _ID42407::_ID14803( "m240_acog", "primary" );
    }
}

_ID49213()
{
    _ID42237::_ID14413( "player_flare" );
    thread maps\dc_whitehouse_code::_ID50784();
}
