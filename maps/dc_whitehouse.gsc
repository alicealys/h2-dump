// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" )
    {
        maps\dc_whitehouse_beautiful_corner::_ID50786();
        return;
    }

    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\dc_whitehouse_mission_select_cam::_ID50320();
        return;
    }

    thread maps\dc_whitehouse_code::whitehouse_fx_volumes();
    _func_0DB( "fx_cast_shadow", 0 );
    _ID42407::_ID10126( ::_unknown_01DE );
    _ID42407::_ID1951( "tunnels", ::_unknown_01EC, "[tunnels] -> make you way to WH", ::_unknown_01FE );
    _ID42407::_ID1951( "oval_office", ::_unknown_03AD, "[oval_office] -> Will only work for testing anims" );
    _ID42407::_ID1951( "flare", ::_unknown_083C, "[flare] -> pop the flare" );
    _unknown_019B();
    _unknown_00F9();
    var_0 = _func_1A2( "ceilling_light_flickering", "script_noteworthy" );
    _ID42237::_ID3350( _func_1A2( "lantern_animate", "targetname" ), maps\dc_whitehouse_code::h2_wh_animated_lantern );
    _ID42237::_ID3350( _func_1A2( "lantern_flicker", "targetname" ), maps\dc_whitehouse_code::h2_wh_flickering_lantern, var_0 );
    thread _unknown_00EF();
    thread maps\dc_whitehouse_code::h2_wh_static_model_groups();
    level._ID46837 = [];
    level._ID46837["water_waist"] = 1;
    level._ID794 thread _ID42407::_ID46142();
    thread maps\dc_whitehouse_code::delete_weapon_in_volume();
}

play_rain_in_hole()
{
    level endon( "player_outside" );
    thread _unknown_0135();
    var_0 = _ID42237::_ID35164();
    var_0._ID740 = ( -8090, 6280, -80 );
    var_0._ID65 = ( -90, 0, 0 );
    _ID42237::_ID14413( "player_weather_enabled" );

    while ( _ID42237::_ID14385( "player_weather_enabled" ) )
    {
        if ( level._ID28926 > 8 )
            _func_157( level._ID1426["rain_hole_" + level._ID28926], var_0, "tag_origin" );

        wait 0.4;
    }
}

watch_player_exit()
{
    _ID42237::_ID14413( "outside_tunnels" );
    level notify( "player_outside" );
    level._ID1426["rain_10"] = _func_155( "fx/weather/rain_heavy_mist" );
    level._ID1426["rain_9"] = _func_155( "fx/weather/rain_9_lite" );
    level._ID1426["rain_hole_10"] = _func_155( "fx/misc/blank" );
    level._ID1426["rain_hole_9"] = _func_155( "fx/misc/blank" );
    thread _ID42422::_ID28930( 1 );
    wait 8.0;
    thread _ID42422::_ID28929( 24 );
}

_ID49840()
{
    _ID50819::_ID616();
    _ID51366::_ID616();
    maps\dc_whitehouse_lighting::_ID616();
    _ID49734::_ID616();
    _ID54417::_ID616();
    _ID53829::_ID616();
    _ID42323::_ID616();
    _func_14E( "flare" );
    _func_14C( "picture_frame_07_animated" );
    _func_14C( "h2_wh_oval_office_secret_door_anim" );
    _func_14D( "minor" );
    _func_14C( "mil_sandbag_plastic_white_single_flat" );
    _func_14C( "mil_sandbag_plastic_white_single_bent" );
    _func_14C( "rappelrope100_ri" );
    _func_14C( "mil_emergency_flare" );
    _func_14C( "h2_light_chandelier_vintage_04" );
    _func_14C( "h2_light_chandelier_vintage_04_on" );
    _func_001( "heli_spotlight" );
    _func_14C( "com_blackhawk_spotlight_on_mg_setup_small_on" );
    _func_14C( "com_blackhawk_spotlight_on_mg_setup_small_off" );
    _func_14E( "rpg_straight" );
    _func_14C( "com_door_01_handleleft2" );
    _func_14C( "weapon_binocular" );
    _func_14C( "head_us_army_g" );
    _func_14C( "head_us_army_a" );
    _func_14F( "h1_hud_tutorial_blur" );
    _func_14F( "h1_hud_tutorial_border" );
    _ID42407::_ID1895( "how_to_pop_flare", &"SCRIPT_PLATFORM_HINTSTR_POPFLARE", maps\dc_whitehouse_code::_ID52508, undefined, "medium_background" );
    level._ID10114 = 72;
    maps\dc_whitehouse_anim::_ID616();
    _ID42287::_ID521();
    _func_0DB( "compassMaxRange", 4500 );
    maps\dc_whitehouse_aud::_ID616();
    level._ID794 _meth_822E( 1 );
    _ID42272::_ID33575( "compass_map_dcemp_static" );
    _ID42407::_ID1892( "allies", maps\dc_whitehouse_code::_ID46537 );
    _ID42237::_ID3350( _func_1F3( "plane_sound", "script_noteworthy" ), _ID46486::_ID26746 );
    _func_10C( "ignore_player" );
    _func_10C( "player" );
    _func_111( "player", "ignore_player" );
    level._ID794 _meth_8183( "player" );
    _ID42407::_ID10226( 1, _ID42407::_ID14543, "allies" );
    _ID42237::_ID3350( _func_1A2( "flickerlight1", "script_noteworthy" ), maps\dc_whitehouse_code::_ID48143 );
    level thread _unknown_03C3();
    _ID42237::_ID3350( _func_1A2( "animated_hanging_model", "targetname" ), maps\dc_whitehouse_code::_ID43010 );
    _ID42237::_ID3350( _func_1A2( "rotating_fan", "targetname" ), maps\dc_whitehouse_code::_ID50162 );
    _ID42237::_ID3350( _func_1A2( "player_usable_turret", "script_noteworthy" ), maps\dc_whitehouse_code::player_usable_turret_init );
    _ID42237::_ID3350( _func_1A2( "pan_metal_idle", "targetname" ), maps\dc_whitehouse_code::metal_pan_scripted_anim, "pan_metal_idle" );
    _ID42237::_ID3350( _func_1A2( "pan_copper_idle", "targetname" ), maps\dc_whitehouse_code::metal_pan_scripted_anim, "pan_copper_idle" );
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
    var_0 = _func_1A1( "intro_scripted_node", "targetname" );
    _ID42237::_ID3350( level.intro_guys, maps\dc_whitehouse_code::intro_scripted_anim, var_0 );
    thread _unknown_06EC();
    _ID42407::_ID1805( "tunnels_start_color_trigger" );
    level thread _unknown_07C2();
}

_ID46100()
{
    _ID42422::_ID28924( 1 );
    _ID42407::_ID3343( "tunnels_wave_guy", ::_unknown_0711 );
    _ID42407::_ID3343( "tunnels_twirl_guy", ::_unknown_0752 );
    maps\dc_whitehouse_code::_ID53326();
    _ID42407::_ID4917( "allies" );
    level._ID388 thread _unknown_0B38();
    level._ID44224 thread _unknown_0C00();
    _ID42237::_ID14413( "tunnels_wave_guy" );
    thread _ID42422::_ID28930( 15 );
    _ID42237::_ID14413( "whitehouse_init" );
    var_0 = _ID53829::_ID22335;
    var_1 = _ID53829::_ID22333;
    thread _ID42422::_ID22340( var_0, var_1 );
    level thread _unknown_07AB();
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
    thread _unknown_07C2( self );
    _ID42226::_ID32651( "head_us_army_a" );
    _ID42407::_ID14803( "m4_grunt", "primary" );
    var_0 = _func_1A1( self._ID1191, "targetname" );
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

        wait(_func_0BA( 7, 10 ));

        if ( var_2 == 2 )
            wait 10;

        var_2 = var_2 + 1 % var_1.size;
    }
}

wave_guy_deleter( var_0 )
{
    _ID42237::_ID14413( "whitehouse_init" );
    var_0 _meth_80B7();
}

_ID46110()
{
    var_0 = _func_1A1( "tunnels_twirl_animent", "targetname" );
    _ID42407::_ID41232();
    var_0 _ID42259::_ID3027( self, "combatwalk_F_spin" );
    var_0 _ID42259::_ID3020( self, "combatwalk_F_spin" );
    _ID42407::_ID12445();
    _ID42407::_ID41231();
}

_ID54727()
{
    _ID42407::_ID4422( "tunnel_exit" );
    _ID42407::_ID3343( "whitehouse_drone", ::_unknown_0E36 );
    _ID42407::_ID3343( "drone_war_drone", ::_unknown_0E54 );
    var_0 = _func_1A1( "marshall", "script_noteworthy" );
    var_0 _ID42407::_ID1947( ::_unknown_0DCA );
    var_0 _ID42407::_ID35014();
    maps\dc_whitehouse_code::_ID47565();
    maps\dc_whitehouse_code::_ID44314();
    maps\dc_whitehouse_code::_ID43750();
    maps\dc_whitehouse_code::_ID51903( "sandbag_group" );
    maps\dc_whitehouse_code::_ID51903( "westwing_sandbag_group" );
    maps\dc_whitehouse_code::_ID52432();
    maps\dc_whitehouse_code::_ID53722();
    level thread _unknown_0943();
    level thread _unknown_0A55();
    level thread _unknown_0C38();
    _ID42237::_ID3350( level._ID1194, ::_unknown_0CA5 );
    level thread _unknown_0ADD();
    level thread _unknown_0B8B();
    level thread _unknown_0B5F();
    level._ID794._ID511 = 1;
    _ID42237::_ID14413( "whitehouse_moveout" );
    level._ID794._ID511 = 0;
    thread maps\dc_whitehouse_code::calm_down_courtyard_heroes();
    _ID42407::_ID4422( "moveout" );
    _ID42407::_ID1805( "whitehouse_moveout_color_trigger" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14413( "whitehouse_spotlight" );
    thread _ID42422::_ID28931( 20 );
    _ID42407::_ID10226( 19.0, _ID42237::_ID14402, "stop_rain" );
    level thread maps\dc_whitehouse_code::_ID48766();
    _unknown_0EBF();
}

_ID51985()
{
    var_0 = maps\dc_whitehouse_code::_ID52411( "whitehouse_spotlight", 400 );
    var_1 = maps\dc_whitehouse_code::_ID52411( "westwing_spotlight", 600 );
    _ID42237::_ID14413( "whitehouse_spotlight" );
    var_0 thread maps\dc_whitehouse_code::_ID47720();
    var_0 thread _unknown_0A0F();
    _ID42237::_ID14413( "whitehouse_entrance_init" );

    if ( _func_02F( var_0 ) )
        var_0._ID54115 notify( "damage",  1000, level._ID794  );

    var_1 thread maps\dc_whitehouse_code::_ID47720();
    _ID42237::_ID14413( "whitehouse_radio_start" );
    wait 30;

    if ( _func_02F( var_1 ) )
        var_1._ID54115 notify( "damage",  1000, level._ID794  );
}

_ID45647()
{
    _ID42237::_ID14413( "whitehouse_entrance_moveup" );
    wait 8;

    if ( self.spotlight_is_dead )
        return;
    else
    {
        level._ID44224 _meth_8173( self );
        self waittill( "death" );
        level._ID44224 _meth_8174();
    }
}

_ID25349()
{
    wait 2;

    switch ( level._ID35897 )
    {

    }

    _ID42237::_ID14413( "whitehouse_completed" );
    wait 3;
    _ID42475::_ID34575( "start_fade_out_mix" );
    maps\dc_whitehouse_code::_ID13799( 3.5 );

    if ( _ID42407::_ID20505() )
    {
        _ID42407::_ID24793();
        return;
    }

    _func_19F( "DEVELOPER: END OF SCRIPTED LEVEL" );
    return;
    case "flare":
    default:
}

_ID52083()
{
    var_0 = _func_03B( "objectiveFadeTimeWaitOff" );
    var_1 = _func_03B( "objectiveFadeTooFar" );
    _func_0DB( "objectiveFadeTimeWaitOff", 2 );
    _func_0DB( "objectiveFadeTooFar", 0.1 );
    wait 2;
    _func_0DB( "objectiveFadeTimeWaitOff", var_0 );
    _func_0DB( "objectiveFadeTooFar", var_1 );
}

_ID49935()
{
    var_0 = _func_03B( "objectiveFadeTimeWaitOff" );
    var_1 = _func_03B( "objectiveFadeTooFar" );
    _func_0DB( "objectiveFadeTimeWaitOff", 0.5 );
    _func_0DB( "objectiveFadeTooFar", 0.1 );
    wait 2;
    _func_0DB( "objectiveFadeTimeWaitOff", 2 );
    _func_0DB( "objectiveFadeTooFar", 0.1 );
    wait 2;
    _func_0DB( "objectiveFadeTimeWaitOff", var_0 );
    _func_0DB( "objectiveFadeTooFar", var_1 );
}

_ID49678()
{
    _ID42475::_ID34575( "start_oval_office_checkpoint" );
    maps\dc_whitehouse_code::_ID45184();
    maps\dc_whitehouse_code::_ID51715( level._ID1194, _ID42237::_ID16640( "oval_office_start_points", "targetname" ) );
    maps\dc_whitehouse_code::_ID44431();
    maps\dc_whitehouse_code::_ID47565();
    maps\dc_whitehouse_lighting::_ID53004( "dc_whitehouse_lawn" );
    level._ID388 thread _unknown_1009();
    level._ID44224 thread _unknown_10D2();
    level thread _unknown_0E33();
    _ID42407::_ID1805( "allies_lawn_trigger" );
    _ID42407::_ID1805( "whitehouse_approach_color_trigger" );
    _ID42237::_ID14402( "whitehouse_moveout" );
    _ID42237::_ID14402( "whitehouse_briefing_end" );
    _ID42237::_ID14402( "whitehouse_radio_start" );
    _ID42237::_ID14402( "whitehouse_entrance_clear" );
    level thread _unknown_0D07();
    level thread _unknown_0F06();
    level thread _unknown_0EDB();
    level thread _unknown_0DF5();
}

_ID50538()
{
    level thread _unknown_0E26();
    level thread _unknown_0E51();
    level thread _unknown_118A();
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
    var_0 = _func_1A1( "oval_office_window_closed", "targetname" );
    var_1 = _func_1A1( "oval_office_window_open", "targetname" );
    var_2 = _func_1A1( "oval_office_barrel_blocker", "targetname" );
    var_3 = _func_1A1( var_2._ID1191, "targetname" );
    var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
    var_2 _meth_8053( var_3 );
    var_1 _meth_805A();
    _ID42237::_ID14413( "oval_office_scene" );
    var_1 _meth_8059();
    var_5 = _func_1A1( var_0._ID1191, "targetname" );
    var_5 _meth_805F();
    var_0 _meth_80B7();
    var_5 _meth_80B7();
    var_2 _meth_805F();
    var_3._ID740 = var_4._ID740;
}

_ID51691()
{
    var_0 = _func_1A1( "oval_office_animent", "targetname" );
    level._ID11587 = _func_1A1( "door", "targetname" );
    level._ID11587._ID3189 = "door";
    level._ID11587 _ID42407::_ID3428();
    var_0 _ID42259::_ID3018( level._ID11587, "oval_office" );
    _ID42237::_ID14413( "oval_office_door_open" );
    _ID42407::_ID1805( "oval_office_exit_color_trigger_heroes" );
    _ID42407::_ID4422( "oval_office_door" );
    var_1 = _func_1A1( "oval_office_door_clip", "targetname" );
    var_1 _meth_82C9();
    var_1 _meth_805F();
    wait 4;
    _ID42237::_ID14402( "oval_office_moveout" );
}

_ID44771()
{
    level thread _unknown_1187();
    _ID42237::_ID14413( "whitehouse_briefing_end" );
    _ID42237::_ID14413( "whitehouse_entrance_init" );
    wait 4;
    level._ID388 _ID42407::_ID10805( "dcemp_fly_punchthrough" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_machineguns" );
    level thread _unknown_1007();
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
    var_1 = _func_1C0( level._ID46238, level._ID794._ID740 );
    var_2 = 3;
    var_3 = [];
    var_4 = undefined;

    for ( var_5 = 0; var_5 < var_1.size; var_5++ )
    {
        var_6 = _func_0C3( level._ID794 _meth_80AF()[2] - var_1[var_5]._ID740[2] );

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

    var_8 = _func_1C0( level.ext_door_radio_array, level._ID794._ID740 );

    for ( var_5 = 0; var_5 < 6; var_5++ )
        var_8[var_5] _meth_80A1( var_0 + "_int_3d_door_ext" );

    var_9 = var_3;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_4 = var_9[var_10];
        var_4 _ID42407::_ID1985( _ID42407::_ID41116, "sounddone" );
    }

    var_clear_1
    var_clear_0
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
        _unknown_1187( "dcemp_fp1_hammerdown" );
        _ID42237::_ID14426( "broadcast_pause" );
        _unknown_1198( "dcemp_fp1_highvalue" );
        _ID42237::_ID14426( "broadcast_pause" );
        _unknown_11A8( "dcemp_fp1_greenflares" );
        _ID42237::_ID14426( "broadcast_pause" );
        _unknown_11B9( "dcemp_fp1_willabort" );
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
    level._ID46238 = _func_1A2( "radio_origin", "targetname" );
    level.ext_door_radio_array = _func_1A2( "ext_door_radio_origin", "targetname" );
    _ID42237::_ID14413( "whitehouse_radio_start" );
    level._ID43953 = 0;
    var_0 = _func_1A2( "countdown_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_1291 );
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
    var_3 = _func_03D();

    for (;;)
    {
        level._ID43953++;
        _ID42237::_ID14402( "broadcast_pause" );
        _ID42237::_ID14426( "broadcast" );
        level _unknown_129D( var_1[level._ID43953 - 1] );
        var_3 = _func_03D();
        var_4 = 120 - level._ID43953 - 1 * 30;
        level._ID45455 = _func_03D() + var_4 * 1000;
        _ID42237::_ID14402( var_2[level._ID43953 - 1] );

        if ( level._ID43953 == 4 )
            break;

        level thread _unknown_133B();
        wait 6;
        _ID42237::_ID14388( "broadcast_pause" );
        _ID42237::_ID14413( "countdown" );
        _ID42237::_ID14388( "countdown" );
    }

    _ID42237::_ID14402( "whitehouse_hammerdown_jets" );
    _ID42237::_ID14413( "whitehouse_path_office_2" );
    level thread _unknown_1303( "dcemp_fp1_beenauthorized" );
    _ID42237::_ID14413( "whitehouse_hammerdown_jets_fly" );
    wait 7;
    _ID42237::_ID14402( "player_flare_abort" );
    level._ID794 thread _ID42407::_ID25088( "drop_flare", 1.0 );
    level._ID794 thread _ID42407::_ID25088( "flare_lookup", 3.75 );
    level._ID794 _ID42407::_ID28864( "dcemp_fp1_abortabort" );
    level._ID794 _ID42407::_ID28864( "dcemp_fp2_abortmission" );
    wait 4;
    _ID42407::_ID10226( 1.5, _ID42237::_ID14402, "whitehouse_wrapup" );
    level._ID794 _ID42407::_ID28864( "dcemp_fp3_rollingout" );
}

_ID49611()
{
    level endon( "whitehouse_hammerdown" );
    _ID42237::_ID14413( "whitehouse_path_office_2" );
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_14B1();
    }

    var_clear_2
    var_clear_0
    var_4 = -100;

    if ( level._ID44224._ID740[2] < var_4 && level._ID388._ID740[2] < var_4 )
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
    if ( !_func_1A7( self ) )
        return;

    self endon( "death" );
    var_0 = 65536;

    while ( _ID42407::_ID54053( self._ID740 + ( 0, 0, 48 ), undefined, 1 ) || _func_0F5( level._ID794._ID740, self._ID740 ) <= var_0 )
        waittillframeend;

    self._ID287 = 1;
    self _meth_8058();
}

_ID53920()
{
    level endon( "whitehouse_path_roof" );
    _ID42237::_ID14413( "whitehouse_30sec" );
    wait 30;
    level thread _unknown_1589();
}

_ID54343()
{
    _ID42237::_ID14402( "whitehouse_hammerdown" );
    thread maps\dc_whitehouse_aud::aud_mission_failed_jet_flyby();
    _unknown_1463( "dcemp_fp1_bombsaway" );
    wait 1;
    _ID42234::_ID13611( "carpetbomb" );
    _func_192( 0.1, 1, level._ID794._ID740, 512 );
    wait 0.5;
    _func_192( 0.2, 1, level._ID794._ID740, 512 );
    wait 0.5;
    _func_192( 0.4, 1, level._ID794._ID740, 512 );
    wait 0.5;
    _func_192( 0.6, 3, level._ID794._ID740, 512 );
    wait 0.75;
    _func_156( level._ID1426["carpet_bomb_explosion_player"], level._ID794._ID740 );
    level._ID794 _meth_80A1( "explo_metal_rand" );
    wait 0.5;
    level._ID388 _ID42407::_ID36519();
    level._ID388 _meth_8058();
    level._ID44224 _ID42407::_ID36519();
    level._ID44224 _meth_8058();

    if ( _func_02F( level._ID44929 ) )
    {
        level._ID44929 _ID42407::_ID36519();
        level._ID44929 _meth_8058();
    }

    var_0 = _ID42237::_ID37527( level._ID794 _meth_8188() == "stand", "h2_wpn_death_stand_explosion", "h2_wpn_death_crouch_explosion" );
    level._ID794 _meth_85A8( var_0 );
    waitframe;
    level._ID794 _meth_8058();
    waitframe;
    _func_034( "ui_deadquote", &"DC_WHITEHOUSE_FLARE_DEADQUOTE" );
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
    self._ID511 = 1;
    self._ID507 = 1;
    _ID42237::_ID14413( "whitehouse_moveout" );
    self._ID511 = 0;
    self._ID507 = 0;
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
    level._ID49566._ID507 = 0;
    level._ID49566 _meth_81D6( "crouch", "stand" );
}

_ID51613()
{
    thread _unknown_179E();
    thread _unknown_17BF();
    thread _unknown_17CB();
    thread _unknown_181F();
    thread _unknown_1861();
}

_ID46929()
{
    _ID42237::_ID14413( "whitehouse_init" );
    self._ID24727 = 1;
    _ID42407::_ID10896();
    _ID42407::_ID10871();
    self._ID511 = 1;
    self._ID507 = 1;
    wait 1;
    var_0 = _func_0C8( "foley_briefing_approach_node", "targetname" );
    self._ID452 = var_0._ID851;
    self _meth_81B1( var_0 );
    self waittill( "goal" );
    var_1 = _func_1A1( "whitehouse_briefing_ent", "targetname" );
    var_1 _ID42259::_ID3074( self, "DCemp_whitehouse_briefing" );
    level thread _unknown_17E7( var_1 );
}

_ID48561()
{
    _ID42237::_ID14413( "whitehouse_briefing_end" );
    _ID42407::_ID12445();
    self._ID24727 = undefined;
    self._ID511 = 0;
    self._ID507 = 0;
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

    if ( _func_0F3( level._ID794._ID740, level._ID388._ID740 ) > 500 )
    {
        var_1 = _ID42237::_ID16638( "oval_office_foley_teleport", "targetname" );
        level._ID388 _meth_81D2( var_1._ID740, var_1._ID65 );
    }

    self._ID24727 = 1;
    _ID42407::_ID10896();
    self._ID52882 = "run";
    _ID42407::_ID10871();
    var_2 = _func_1A1( "oval_office_animent", "targetname" );

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
    var_0 = _func_1A1( "whitehouse_kitchen_door", "targetname" );
    var_0._ID26282 = _func_1A2( var_0._ID1191, "targetname" );
    _ID42237::_ID3294( var_0._ID26282, ::_meth_8053, var_0 );
    var_1 = _func_1A1( "whitehouse_kitchen_kick", "targetname" );
    var_1 _ID42259::_ID3028( level._ID388, "doorburst_wave" );
    var_1 thread _ID42259::_ID3024( level._ID388, "doorburst_wave" );
    var_0 thread maps\dc_whitehouse_code::_ID53767();
    level._ID388 _ID42407::_ID10226( 1, _ID42407::_ID27079, "dcburn_mcy_moveupgogo" );
    _ID42237::_ID14402( "whitehouse_kitchen_open" );
    _ID42407::_ID12492( 1 );
    level._ID388.always_use_delay_min = undefined;
    level._ID44224.always_use_delay_min = undefined;
    var_2 = _func_0C8( "foley_wh_path", "targetname" );
    thread _ID42372::_ID16964( var_2 );
    self._ID24727 = undefined;
    _ID42407::_ID12467();
    self._ID511 = 0;
    self._ID507 = 0;
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
    self _meth_81AF( 1 );
}

_ID43987()
{
    self._ID511 = 1;
    self._ID507 = 1;
    wait 0.8;
    thread _unknown_1AB5();
    thread _unknown_1ABE();
    thread _unknown_1B1B();
    thread _unknown_1B32();
}

_ID48908()
{
    _ID42237::_ID14413( "whitehouse_moveout" );
    self._ID511 = 0;
    self._ID507 = 0;
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
    self _meth_81D2( var_0._ID740, var_0._ID65 );
    var_1 = _func_1A1( "oval_office_animent", "targetname" );
    level thread _unknown_1B61( var_1 );
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
    var_1 = _func_1C0( _func_0DE( "axis" ), var_0._ID740 );

    for ( var_2 = 0; var_2 < var_1.size && var_2 < 3; var_2++ )
        var_1[var_2] _meth_8058( level._ID44224._ID740 );
}

_ID53225()
{
    var_0 = _func_1A1( "oval_office_animent", "targetname" );
    level._ID53860 = _ID42407::_ID35028( "painting", var_0._ID740 );
    var_0 _ID42259::_ID3018( level._ID53860, "oval_office" );
}

_ID46472()
{
    _ID42237::_ID14413( "whitehouse_breached" );
    _ID42407::_ID10871();
    var_0 = _func_0C8( "dunn_wh_path", "targetname" );
    thread _ID42372::_ID16964( var_0 );
    _ID42237::_ID14413( "whitehouse_path_elevator" );
    _ID42407::_ID12492( 1 );
    _ID42237::_ID14413( "whitehouse_hammerdown_jets_safe" );
    self _meth_81AF( 1 );
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
    self._ID511 = 1;
    self._ID507 = 1;
    level._ID49566 = self;
    thread _ID42407::_ID22746();
    thread _unknown_1CF7();
    _ID42226::_ID32651( "head_us_army_g" );
    self _meth_81D6( "crouch" );
    var_0 = _func_1A1( "whitehouse_briefing_ent", "targetname" );
    self _meth_801D( "weapon_binocular", "tag_inhand" );
    var_0 _ID42259::_ID3111( self, "dcw_briefing_marshall_moremen" );

    if ( !_ID42237::_ID14385( "whitehouse_briefing_start" ) )
        var_0 thread _ID42259::_ID3044( self, "DCemp_whitehouse_briefing_idle", "stop_marshall_idle" );

    _ID42237::_ID14413( "whitehouse_briefing_end" );
    _ID42237::_ID14413( "whitehouse_spotlight" );
    _ID42407::_ID36519();
    self _meth_80B7();
}

dropbinocular( var_0 )
{
    var_0 _meth_802A( "weapon_binocular", "TAG_INHAND" );
    var_1 = var_0 _meth_818C( "TAG_INHAND" );
    var_2 = _func_06A( "script_model", var_1 );
    var_2 _meth_80B8( "weapon_binocular" );
}

returnguntomarshall()
{
    var_0 = _func_1A1( "marshall_gun", "targetname" );
    _ID42407::_ID14803( "scar_h_reflex", "primary" );
    _ID42407::_ID17509();
    _ID42237::_ID14413( "marshallTakeBackWeapon" );
    var_0 _meth_80B7();
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
    _unknown_1E1E();
}

_ID49171()
{
    _ID42407::_ID32343( 45, 1 );
    _ID42407::_ID29746( "axis" );
    level thread _unknown_1BC1();
    level thread _unknown_1ECA();
    _func_0DB( "ai_friendlysuppression", 0 );
    _func_0DB( "ai_friendlyfireblockduration", 0 );
    _ID42237::_ID14413( "whitehouse_path_elevator" );
    var_0 = level._ID45455 - _func_03D() / 1000;

    if ( var_0 > 70 )
        _ID42407::_ID4422( "whitehouse_parlor" );

    _ID42237::_ID14413( "whitehouse_chandelier" );
    var_1 = _func_1A1( "chandelier_grenade_source", "targetname" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );
    _func_074( "fraggrenade", var_1._ID740, var_2._ID740, 1.5 );
    _ID42237::_ID14413( "whitehouse_path_stairs" );
    _ID42407::_ID4917( "allies" );
}

_ID44221()
{
    self endon( "death" );

    if ( !_func_02F( level._ID49439 ) )
        level._ID49439 = [];

    level._ID49439[level._ID49439.size] = self;
    self._ID486 = 10000;
    _ID42237::_ID14413( "whitehouse_silhouette_ready" );

    if ( _func_02F( self._ID31039 ) )
        self._ID9813 = level._ID43035[self._ID31039];

    self._ID486 = 200;
}

_ID50077()
{
    self endon( "death" );
    _ID42237::_ID14413( "whitehouse_path_roof" );
    wait(_func_0B8( 5 ));
    self _meth_80B7();
}

_ID47821()
{
    _ID42475::_ID34575( "start_flare_checkpoint" );
    maps\dc_whitehouse_code::_ID45184();
    maps\dc_whitehouse_code::_ID51715( level._ID1194, _ID42237::_ID16640( "flare_start_points", "targetname" ) );
    maps\dc_whitehouse_code::_ID44431();
    thread _ID42407::_ID32188( "dcemp_dry" );
    maps\dc_whitehouse_code::_ID47565();
    maps\dc_whitehouse_lighting::_ID53004( "dc_whitehouse_interior" );
    level._ID45455 = _func_03D();
    level thread _unknown_1F38();
    level thread _unknown_1C4F();
    _ID42237::_ID14402( "whitehouse_path_elevator" );
    _ID42237::_ID14402( "whitehouse_chandelier" );
    _ID42237::_ID14402( "whitehouse_radio_start" );
    _ID42237::_ID14402( "whitehouse_breached" );
    wait 0.1;
    level._ID43953 = 2;
    _ID42237::_ID14402( "whitehouse_radio_done" );
    _ID42237::_ID14402( "countdown_start" );
    _ID42237::_ID14388( "broadcast" );
    level._ID388 thread _unknown_1E9C();
    level._ID44224 thread _unknown_1F26();
    var_0 = _func_0C8( "foley_flare_start", "script_noteworthy" );
    level._ID388 thread _ID42372::_ID16964( var_0 );
    var_0 = _func_0C8( "dunn_flare_start", "script_noteworthy" );
    level._ID44224 thread _ID42372::_ID16964( var_0 );
    level thread _unknown_1ACF();
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID24582( "mus_dc_whitehouse_endrun", 1 );
    _ID42475::_ID34575( "start_endrun_mix" );
}

_ID46508()
{
    level thread _unknown_20C7();
    _ID42407::_ID3343( "whitehouse_flare_guy", ::_unknown_20DD );
    _ID42407::_ID3343( "blind_enemies", maps\dc_whitehouse_code::_ID47348 );
    _ID42407::_ID3343( "whitehouse_flare_breach_guy", ::_unknown_217B );
    thread _unknown_20A8();
    level._ID794 thread _unknown_219A();
    level thread _unknown_20D2();
    _ID42237::_ID14413( "whitehouse_flare_run" );
    _ID42234::_ID13611( "roof_flares" );
}

dunnending()
{
    var_0 = _func_1A1( "flare_scene_upper_animent", "targetname" );
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
    level._ID44224 _meth_820F();
    _ID42237::_ID14402( "whitehouse_completed" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_timeisright" );
}

_ID46431()
{
    _ID42237::_ID14413( "whitehouse_flare_breach" );
    _ID42234::_ID13611( "flare_breach" );
    _func_192( 0.3, 1, ( -2011, 8295.5, 199.5 ), 5000 );
    level._ID794 _meth_80B4( "grenade_rumble" );
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
    self._ID511 = 1;
    self._ID3189 = "flare_guy";
    _ID42407::_ID32430( "whitehouse_ending_runuphill" );
    wait 0.1;
    var_0 = _func_1A1( "ramp_flare_animent", "targetname" );
    var_0 thread _ID42259::_ID3044( self, "dcemp_flare_reshoot_start_idle" );
    _ID42237::_ID14413( "whitehouse_path_office" );
    self._ID7._ID24414 = "run";
    level._ID794 thread _unknown_22F9();
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

    var_0 = _func_1A1( "flare_scene_upper_animent", "targetname" );
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
        if ( _ID42407::_ID27540( level._ID44929 _meth_80AF(), 0.75 ) )
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

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "m240_acog" )
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
