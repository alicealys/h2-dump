// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34503()
{
    _ID29406();
    _ID9129();
    _ID29417();
    _ID48536();
    level._ID24600 = 0;
    level.player._ID47915 = "radiation_none";
    level._ID1632._ID8549 = [ [ "mute", 0 ], [ "predator", 0 ], [ "credits", 0 ], [ "slomo", 0 ], [ "deathsdoor", 0 ], [ "underwater", 0 ], [ "diveboat", 0 ], [ "interior_vehicle", 0 ], [ "wpn_int_med", 0 ], [ "wpn_int_sml", 0 ], [ "wpn_semi_open", 0 ], [ "bullet_metal_vehicle", 0 ], [ "bullet_whizby_glass", 0 ], [ "finale_handgun", 0 ] ];
    soundtime( "interface", 0 );
    soundtime( "notimescale", 0 );
    soundtime( "voices_unfiltered", 0 );

    if ( _ID42237::_ID20913() )
    {
        thread _ID53626();
        _ID53404();
        thread snd_monitor_no_ammo_mix();
    }
}

_ID29417()
{
    level._ID30908["squelches"]["plt"]["on"] = "squelch_on_plt";
    level._ID30908["squelches"]["plt"]["off"] = "squelch_off_plt";
    level._ID30908["squelches"]["hqr"]["on"] = "squelch_on_hqr";
    level._ID30908["squelches"]["hqr"]["off"] = "squelch_off_hqr";
    level._ID30908["squelches"]["prophet"]["on"] = "squelch_on_prophet";
    level._ID30908["squelches"]["prophet"]["off"] = "squelch_off_hqr";
    level._ID30908["squelches"]["battle_commander"]["on"] = "squelch_on_plt";
    level._ID30908["squelches"]["battle_commander"]["off"] = "squelch_off_hqr";
    level._ID30908["squelches"]["cormack_sfa"]["on"] = "squelch_on_plt";
    level._ID30908["squelches"]["cormack_sfa"]["off"] = "squelch_off_hqr";
}

_ID9129()
{
    level._ID1632._ID13114["explo_shake_over_distance"] = [ [ 0.0, 1.0 ], [ 0.25, 0.65 ], [ 0.35, 0.5 ], [ 0.75, 0.2 ], [ 1.0, 0.1 ] ];
    level._ID1632._ID13114["veh_crash_intensity_to_pitch"] = [ [ 0.0, 0.7 ], [ 0.1, 0.7 ], [ 0.5, 0.8 ], [ 0.9, 1.0 ], [ 1.0, 1.1 ] ];
    level._ID1632._ID13114["veh_crash_vel_to_lfe_vol"] = [ [ 0.0, 0.0 ], [ 200, 0.05 ], [ 500, 0.25 ], [ 850, 0.35 ], [ 1000, 0.6 ] ];
    level._ID1632._ID13114["aud_mute_device_falloff"] = [ [ 0.0, 1.0 ], [ 0.1, 0.9 ], [ 0.2, 0.88 ], [ 0.3, 0.85 ], [ 0.4, 0.82 ], [ 0.5, 0.8 ], [ 0.6, 0.65 ], [ 0.7, 0.5 ], [ 0.8, 0.35 ], [ 0.9, 0.15 ], [ 1.0, 0.0 ] ];
}

_ID48536()
{
    if ( _ID42237::_ID20913() )
        _ID42465::_ID23797( "sp_common_global_mix" );
}

_ID19574()
{
    if ( level._ID227 )
        level._ID1632._ID2901["exp_generic_explo_shot"] = [ [ "exp_generic_explo_shot_04", 0.17 ], [ "exp_generic_explo_shot_07", 0.11 ], [ "exp_generic_explo_shot_10", 0.22 ], [ "exp_generic_explo_shot_12", 0.15 ], [ "exp_generic_explo_shot_13", 0.08 ], [ "exp_generic_explo_shot_20", 0.15 ], [ "exp_generic_explo_shot_22", 0.25 ] ];
    else
        level._ID1632._ID2901["exp_generic_explo_shot"] = [ [ "exp_generic_explo_shot_01", 0.13 ], [ "exp_generic_explo_shot_02", 0.25 ], [ "exp_generic_explo_shot_03", 0.12 ], [ "exp_generic_explo_shot_04", 0.17 ], [ "exp_generic_explo_shot_05", 0.16 ], [ "exp_generic_explo_shot_06", 0.14 ], [ "exp_generic_explo_shot_07", 0.11 ], [ "exp_generic_explo_shot_08", 0.21 ], [ "exp_generic_explo_shot_09", 0.16 ], [ "exp_generic_explo_shot_10", 0.22 ], [ "exp_generic_explo_shot_11", 0.13 ], [ "exp_generic_explo_shot_12", 0.15 ], [ "exp_generic_explo_shot_13", 0.08 ], [ "exp_generic_explo_shot_14", 0.16 ], [ "exp_generic_explo_shot_16", 0.2 ], [ "exp_generic_explo_shot_17", 0.1 ], [ "exp_generic_explo_shot_18", 0.08 ], [ "exp_generic_explo_shot_19", 0.12 ], [ "exp_generic_explo_shot_20", 0.15 ], [ "exp_generic_explo_shot_21", 0.15 ], [ "exp_generic_explo_shot_22", 0.25 ] ];
}

_ID19714()
{
    level._ID1632._ID1267._ID36853 = [ "vehicle", "wood", "metal" ];
}

_ID19647()
{
    level._ID1632._ID5493._ID36853 = [ "ice", "asphalt", "concrete", "metal", "metal_solid" ];
}

_ID29406()
{
    _ID42475::_ID34640( "player_death", ::_ID27337 );
    _ID42475::_ID34640( "friendly_fire_mission_failed", ::_ID45025 );
    _ID42475::_ID34640( "end_mission_fade_to_black", ::_ID47887 );
    _ID42475::_ID34640( "specops_end_mission", ::_ID47251 );
    _ID42475::_ID34640( "wpn_deam160_init", ::_ID41820 );
    _ID42475::_ID34640( "wpn_deam160_charge", ::_ID41817 );
    _ID42475::_ID34640( "wpn_deam160_charge_dots_increase", ::_ID41818 );
    _ID42475::_ID34640( "wpn_deam160_full_charge", ::_ID41819 );
    _ID42475::_ID34640( "wpn_deam160_shot", ::_ID41823 );
    _ID42475::_ID34640( "variable_grenade_type_switch", ::_ID40035 );
    _ID42475::_ID34640( "paint_grenade_detonate", ::_ID26207 );
    _ID42475::_ID34640( "emp_grenade_detonate", ::_ID12399 );
    _ID42475::_ID34640( "smart_grenade_detonate", ::_ID34403 );
    _ID42475::_ID34640( "foam_grenade", ::_ID14653 );
    _ID42475::_ID34640( "aud_sonar_vision_on", ::_ID4250 );
    _ID42475::_ID34640( "aud_sonar_vision_off", ::_ID4249 );
    _ID42475::_ID34640( "play_vehicle_collision", ::_ID34634 );
    _ID42475::_ID34640( "start_vehicle_shell_shock", ::_ID51454 );
    _ID42475::_ID34640( "aud_radiation_shellshock", ::_ID43409 );
    _ID42475::_ID34640( "boost_jump_enable", ::_ID5496 );
    _ID42475::_ID34640( "boost_jump_disable", ::_ID5494 );
    _ID42475::_ID34640( "boost_jump_disable_npc", ::_ID5495 );
    _ID42475::_ID34640( "boost_jump_player", ::_ID5500 );
    _ID42475::_ID34640( "boost_land_player", ::_ID5516 );
    _ID42475::_ID34640( "boost_jump_npc", ::_ID5499 );
    _ID42475::_ID34640( "boost_land_npc", ::_ID5512 );
    _ID42475::_ID34640( "pdrone_death_explode", ::_ID26489 );
    _ID42475::_ID34640( "pdrone_emp_death", ::_ID26493 );
    _ID42475::_ID34640( "pdrone_crash_land", ::_ID26485 );
    _ID42475::_ID34640( "doorshield_ripoff", ::_ID11630 );
    _ID42475::_ID34640( "doorshield_throw", ::_ID11631 );
    _ID42475::_ID34640( "exo_raise_shield", ::_ID13527 );
    _ID42475::_ID34640( "exo_lower_shield", ::_ID13482 );
    _ID42475::_ID34640( "snd_cloak_init", ::_ID34502 );
    _ID42475::_ID34640( "exo_cloak_button_press", ::_ID13429 );
    _ID42475::_ID34640( "exo_cloak_enable", ::_ID13431 );
    _ID42475::_ID34640( "exo_cloak_disable", ::_ID13430 );
    _ID42475::_ID34640( "exo_cloak_battery_low", ::_ID13427 );
    _ID42475::_ID34640( "exo_cloak_battery_dead", ::_ID13426 );
    _ID42475::_ID34640( "exo_cloak_battery_recharge", ::_ID13428 );
    _ID42475::_ID34640( "npc_cloak_buttons", ::_ID25161 );
    _ID42475::_ID34640( "npc_cloak_enable", ::_ID25162 );
    _ID42475::_ID34640( "npc_cloak_disable", ::_ID25162 );
    _ID42475::_ID34640( "overdrive_on", ::_ID26092 );
    _ID42475::_ID34640( "overdrive_off", ::_ID26091 );
    _ID42475::_ID34640( "sonic_blast", ::_ID34948 );
    _ID42475::_ID34640( "sonic_blast_aftershock", ::_ID34949 );
    _ID42475::_ID34640( "sonic_blast_done", ::_ID34950 );
    _ID42475::_ID34640( "exo_stim_on", ::_ID13554 );
    _ID42475::_ID34640( "boost_dodge_activate_plr", ::_ID5489 );
    _ID42475::_ID34640( "boost_land_hud_enable", ::_ID5509 );
    _ID42475::_ID34640( "boost_land_hud_disable", ::_ID5508 );
    _ID42475::_ID34640( "boost_land_out_of_fuel", ::_ID5514 );
    _ID42475::_ID34640( "boost_land_use_fuel", ::_ID5520 );
    _ID42475::_ID34640( "boost_land_assist_npc", ::_ID5505 );
    _ID42475::_ID34640( "boost_land_assist_npc_ground", ::_ID5506 );
    _ID42475::_ID34640( "tracking_grenade_hover", ::_ID38094 );
    _ID42475::_ID34640( "tracking_grenade_jump", ::_ID38095 );
    _ID42475::_ID34640( "tracking_grenade_strike", ::_ID38098 );
    _ID42475::_ID34640( "tracking_grenade_dud", ::_ID38090 );
    _ID42475::_ID34640( "tracking_grenade_beep", ::_ID38088 );
    _ID42475::_ID34640( "anml_doberman", ::_ID3219 );
    _ID42475::_ID34640( "finish_mission_fade", ::_ID14229 );
    _ID42475::_ID34640( "aud_start_ragtime_warfare", ::_ID53730 );
    _ID42475::_ID34640( "aud_stop_ragtime_warfare", ::_ID45070 );
    _ID42475::_ID34640( "aud_start_slowmo_cheat", ::aud_start_slowmo_cheat );
    _ID42475::_ID34640( "aud_stop_slowmo_cheat", ::aud_stop_slowmo_cheat );
}

_ID27337()
{
    level notify( "kill_deaths_door_audio" );
    _ID42465::_ID23801( "deaths_door" );
    _ID42465::_ID23797( "player_dead" );
    _ID42494::_ID34606( "bullet_large_fatal" );
}

_ID45025()
{
    if ( !isdefined( level._ID46740 ) && _ID42237::_ID20913() )
    {
        _ID42465::_ID23797( "friendly_fire_failed_mix" );
        _ID42494::_ID34606( "friendly_fire_mission_failed" );
        level._ID46740 = 1;
    }
}

_ID47887()
{
    if ( _ID42237::_ID20913() )
        _ID42465::_ID23797( "fade_to_black_end_mix" );
}

_ID47251()
{
    _ID42465::_ID23797( "so_end_mission_mix" );
}

_ID41820()
{
    level._ID41816 = 0;
}

_ID41823( var_0 )
{
    var_1 = var_0;
    level._ID41816 = 0;

    switch ( var_1 )
    {
        case "large":
            _ID42463::_ID10399( "wpn_deam160_shot_max" );
            level notify( "aud_deam160_charge_break" );
            break;
        case "medium":
            _ID42463::_ID10399( "wpn_deam160_shot_med" );
            level notify( "aud_deam160_charge_break" );
            break;
        case "small":
            _ID42463::_ID10399( "wpn_deam160_shot_sml" );
            level notify( "aud_deam160_charge_break" );
            break;
    }
}

_ID41817( var_0 )
{
    var_1 = _ID42463::_ID10401( "wpn_deam160_charge_hi", level.player, "oneshot" );
    thread _ID41822();
    level.player thread _ID41824();
    level.player thread _ID41821();
    level waittill( "aud_deam160_charge_break" );

    if ( isdefined( var_1 ) )
        var_1 setvolume( 0, 0.05 );
}

_ID41824()
{
    level endon( "aud_deam160_charge_break" );

    for (;;)
    {
        if ( self isthrowinggrenade() || self isreloading() || self ismeleeing() || self ismantling() )
        {
            level notify( "aud_deam160_charge_break" );
            break;
        }

        wait 0.05;
    }
}

_ID41821()
{
    level endon( "aud_deam160_charge_break" );

    for (;;)
    {
        var_0 = _func_24a( self getcurrentweapon() );

        if ( !var_0 )
        {
            level notify( "aud_deam160_charge_break" );
            break;
        }

        wait 0.05;
    }
}

_ID41822()
{
    level endon( "aud_deam160_charge_break" );
    var_0 = _ID42463::_ID10401( "wpn_deam160_charge_hi_lp", level.player, "loop", "aud_deam160_charge_break" );
    var_0 setvolume( 0, 0.05 );
    wait 2;

    if ( isdefined( var_0 ) )
        var_0 setvolume( 1, 0.4 );
}

_ID41818( var_0 )
{
    level._ID41816++;
}

_ID41819()
{
    var_0 = _ID42463::_ID10401( "wpn_deam160_full_charge_beep_lp", level.player, "loop", "aud_deam160_charge_break" );
    level waittill( "aud_deam160_charge_break" );
}

_ID40035( var_0 )
{
    level._ID4310 = var_0;
    _ID42494::_ID34606( "var_grenade_change_type" );
}

_ID26207()
{
    var_0 = self;
    _ID42494::_ID34609( "wpn_paint_grenade_exp", var_0.origin );
}

_ID12399()
{
    var_0 = self;
    _ID42494::_ID34609( "wpn_emp_grenade_exp", var_0.origin );
}

_ID34403()
{
    level notify( "kill_tracking_loop" );
    var_0 = self;
    _ID42494::_ID34609( "wpn_smart_grenade_exp", var_0.origin );
}

_ID14653( var_0 )
{
    _ID42465::_ID23797( "foam_grenade_mix", 0.5 );
    var_1 = self.origin;
    wait 2.1;
    _ID42463::_ID10401( "foam_bomb_equip", var_0 );
    wait 1.1;
    _ID42463::_ID10401( "foam_bomb_pin_pull", var_0 );
    wait 1.3;
    _ID42463::_ID10402( "foam_bomb_wall_stick", var_1 );
    level waittill( "vfx_foam_corridor_explode_start" );
    _ID42463::_ID10402( "foam_bomb_corridor_exp", var_1 );
    wait 2.0;
    _ID42465::_ID23801( "foam_grenade_mix", 0.5 );
}

_ID4052()
{
    var_0 = self.origin;
    thread _ID42494::_ID34609( "wpn_mw_grenade_exp", var_0 );
    var_1 = thread _ID42494::_ID34627( "wpn_mw_grenade_pulse_sweeps_lp", var_0, "mw_nade_death", 0.2, 0.45 );
    var_2 = thread _ID42494::_ID34627( "wpn_mw_grenade_pulse_big_lp", var_0, "mw_nade_death", 0.2, 0.45 );
    self waittill( "death" );
    thread _ID42494::_ID34609( "wpn_mw_grenade_die", var_0 );

    if ( isdefined( var_2 ) )
        var_2 setvolume( 0, 0.3 );

    if ( isdefined( var_1 ) )
        var_1 setvolume( 0, 0.3 );

    wait 0.3;

    if ( isdefined( var_2 ) )
        var_2 playrumbleonentity();

    if ( isdefined( var_1 ) )
        var_1 playrumbleonentity();
}

_ID4054( var_0 )
{
    if ( isdefined( var_0 ) )
        thread _ID42494::_ID34609( "wpn_mw_grenade_elect", var_0 );
}

_ID4053( var_0 )
{
    if ( isdefined( var_0 ) )
        var_0 thread _ID42494::_ID34619( "wpn_mw_grenade_elect" );
}

_ID53626()
{
    level.player endon( "death" );

    for (;;)
    {
        while ( !level.player _ID42407::_ID20652() )
            waittillframeend;

        var_0 = 0;

        while ( level.player _ID42407::_ID20652() )
        {
            var_1 = level.player _ID42407::_ID43898();

            if ( !var_0 && var_1 )
                _ID42465::_ID23797( "sniper_ads_holdbreath_mix" );
            else if ( var_0 && !var_1 )
                _ID42465::_ID23801( "sniper_ads_holdbreath_mix" );

            var_0 = var_1;
            waittillframeend;
        }

        _ID42465::_ID23801( "sniper_ads_holdbreath_mix" );
    }
}

_ID34586( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    thread _ID34719();
    thread _ID34720();

    if ( !isdefined( self._ID3674 ) )
        self._ID3674 = spawnstruct();

    self._ID3674._ID24605 = 1;
    self._ID3674._ID24604 = 1;

    if ( isdefined( var_2 ) )
        var_6 = var_2;
    else
        var_6 = var_1 + 250;

    level._ID24600 = 1;

    if ( isdefined( var_4 ) )
    {
        self._ID3674._ID24603 = 1;
        thread _ID42490::_ID34526( var_4, 0.5 );
    }

    var_7 = 0;
    thread _ID34725( var_0, var_3, var_7 );

    while ( isdefined( self._ID3674._ID24605 ) )
    {
        var_8 = distance( self.origin, level.player.origin );

        if ( var_8 < var_1 )
        {
            if ( !isdefined( self._ID3674._ID24607 ) )
            {
                self notify( "mute_device_bubble_enter" );
                _ID42465::_ID23797( var_0, 0.05 );
                self._ID3674._ID22639 = _ID42494::_ID34626( "mute_device_active_lp", "stop_mute_device_lp", 5, 3, 1 );
                self._ID3674._ID24607 = 1;
            }

            _ID42465::_ID23798( var_0, 1 );

            if ( !isdefined( self._ID3674._ID24603 ) && isdefined( var_4 ) )
            {
                self._ID3674._ID24603 = 1;
                thread _ID42490::_ID34526( var_4, 0.5 );

                if ( !isdefined( self._ID3674._ID24601 ) )
                {
                    self notify( "mute_device_bubble_enter" );
                    _ID42494::_ID34610( "mute_device_active_enter", 0.05 );
                    self._ID3674._ID24604 = 1;
                    thread _ID34726( self._ID3674._ID24601 );
                    self._ID3674._ID22639 setvolume( 1.0, 2 );
                }
            }
        }
        else if ( var_8 < var_6 && self._ID3674._ID24607 == 1 )
        {
            var_9 = ( var_8 - var_1 ) / ( var_6 - var_1 );
            clamp( var_9, 0, 1 );
            var_10 = _ID42475::_ID34571( var_9, level._ID1632._ID13114["aud_mute_device_falloff"] );
            _ID42465::_ID23798( var_0, var_10 );

            if ( isdefined( self._ID3674._ID24603 ) )
            {
                self._ID3674._ID24603 = undefined;
                thread _ID42490::_ID34527( 1 );

                if ( !isdefined( self._ID3674._ID24602 ) )
                {
                    thread _ID34722( "mute_device_bubble_exit", 0.5 );
                    _ID42494::_ID34610( "mute_device_active_exit", 0.05 );
                    self._ID3674._ID24604 = 0;
                    thread _ID34726( self._ID3674._ID24602 );
                    self._ID3674._ID22639 setvolume( 0.0, 2 );
                }
            }
        }
        else if ( self._ID3674._ID24607 == 1 )
        {
            _ID42465::_ID23798( var_0, 0 );

            if ( isdefined( self._ID3674._ID24603 ) )
            {
                wait 0.05;
                self._ID3674._ID24603 = undefined;
                thread _ID42490::_ID34527( 1 );
                self._ID3674._ID22639 setvolume( 0.0, 2 );
            }
        }

        wait 0.05;
    }

    level._ID24600 = 0;
}

_ID34722( var_0, var_1 )
{
    var_2 = 0;

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    wait(var_2);
    self notify( var_0 );
}

_ID34725( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "turn_off" );
    thread _ID34723( var_0, "death" );
    thread _ID34723( var_0, "turn_off" );
    var_3 = 30;

    if ( isdefined( var_1 ) )
        var_3 = var_1;

    wait(var_3);
    self notify( "complete" );
    thread _ID34724( var_0 );
}

_ID34724( var_0 )
{
    if ( isdefined( self._ID3674._ID22639 ) )
        level notify( "stop_mute_device_lp" );

    if ( self._ID3674._ID24604 )
    {
        thread _ID34722( "mute_device_bubble_exit", 0.5 );
        thread _ID34722( "mute_device_bubble_off", 1 );

        if ( !isdefined( self._ID3674._ID24602 ) )
            _ID42494::_ID34610( "mute_device_active_exit", 0.05 );
    }

    self._ID3674._ID24605 = undefined;
    _ID42465::_ID23801( var_0, 3 );
    self._ID3674._ID24603 = undefined;
    _ID42490::_ID34527( 3 );
}

_ID34723( var_0, var_1 )
{
    self endon( "complete" );
    var_2 = "death";

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    self waittill( var_2 );
    thread _ID34724( var_0 );
    self notify( "complete" );
}

_ID34726( var_0 )
{
    var_0 = 1;
    wait 2;
    var_0 = undefined;
}

_ID34721( var_0 )
{
    self endon( "death" );
    var_1 = var_0;
}

_ID34719()
{
    self endon( "mute_device_bubble_off" );

    while ( isdefined( self ) )
    {
        self waittill( "mute_device_bubble_enter" );
        _ID28073( "mute_breach_distort_vm_enter" );
        self waittill( "mute_device_bubble_exit" );
        _ID21357( "mute_breach_distort_vm_enter" );
        _ID28073( "mute_breach_distort_vm_exit" );
        wait 0.05;
    }
}

_ID34720()
{
    while ( isdefined( self ) )
    {
        self waittill( "mute_device_bubble_off" );
        wait 0.05;
    }
}

_ID28073( var_0 )
{
    if ( isdefined( self ) && isdefined( level._ID1426[var_0] ) )
        playfxontag( _ID42237::_ID16299( var_0 ), self, "tag_origin" );
    else
    {

    }
}

_ID21357( var_0 )
{
    if ( isdefined( self ) && isdefined( level._ID1426[var_0] ) )
        killfxontag( _ID42237::_ID16299( var_0 ), self, "tag_origin" );
    else
    {

    }
}

_ID4250()
{
    _ID42465::_ID23797( "sonar_vision", 0.05 );
    _ID42463::_ID10399( "sonar_vision_on" );
}

_ID4249()
{
    _ID42463::_ID10399( "sonar_vision_off" );
    _ID42465::_ID23801( "sonar_vision", 1.0 );
}

_ID26489()
{
    var_0 = self;
    var_1 = var_0.origin;

    while ( isdefined( var_0 ) )
    {
        var_1 = var_0.origin;
        wait 0.05;
    }

    _ID42494::_ID34609( "pdrone_exp", var_1 );
}

_ID26493( var_0 )
{
    var_0 _ID42494::_ID34619( "pdrone_emp_death" );
    var_0 _ID42494::_ID34619( "pdrone_deathspin", "kill_drone_deathspin" );
}

_ID26485( var_0 )
{
    _ID42494::_ID34609( "pdrone_exp", var_0 );
    level notify( "kill_drone_deathspin" );
}

_ID11630()
{
    _ID34518( "bullet_metal_vehicle" );
    _ID42465::_ID23797( "doorshield_rip_player" );
    _ID42494::_ID34610( "doorshield_foley_plr", 0.15 );
    _ID42494::_ID34610( "doorshield_grabs_plr", 0.2 );
    _ID42494::_ID34610( "doorshield_tension_plr", 0.85 );
    _ID42494::_ID34610( "doorshield_rip_plr", 1.1 );
    _ID42494::_ID34610( "doorshield_debris_plr", 1.15 );
    wait 3;
    _ID42465::_ID23801( "doorshield_rip_player" );
}

_ID11631()
{
    _ID42494::_ID34606( "exo_throw_start" );
    _ID34512( "bullet_metal_vehicle" );
}

_ID13527()
{
    _ID42494::_ID34610( "exo_shield_open", 0.5 );
    _ID34518( "bullet_metal_vehicle" );
}

_ID13482()
{
    _ID42494::_ID34610( "exo_shield_close", 0.05 );
    _ID34512( "bullet_metal_vehicle" );
}

_ID5496()
{

}

_ID5494()
{

}

_ID5495( var_0 )
{
    var_1 = var_0;
    _ID42463::_ID10401( "tac_npc_boost_power_dwn", var_1 );
}

_ID5500()
{
    if ( !isdefined( level._ID1632._ID5493 ) )
    {
        level._ID1632._ID5493 = spawnstruct();
        level._ID1632._ID5493._ID20551 = 0;
        thread _ID19647();
    }

    var_0 = self;

    if ( var_0 == level.player )
        level._ID1632._ID5493._ID20551 = 1;
}

_ID5516( var_0 )
{
    var_1 = 40;
    var_2 = 10;

    if ( !isdefined( level._ID1632._ID5493 ) )
    {
        level._ID1632._ID5493 = spawnstruct();
        level._ID1632._ID5493._ID20551 = 0;
        thread _ID19647();
    }

    var_3 = self;

    if ( var_3 == level.player )
    {
        if ( level._ID1632._ID5493._ID20551 == 1 )
        {
            var_4 = _ID34710( var_0, var_1, var_2 );
            var_5 = _ID34709( var_0, var_1, var_2 );
            var_6 = "pc_boost_land_" + var_5;
            level._ID1632._ID5493._ID20551 = 0;

            if ( isdefined( level._ID1632._ID5493._ID21182 ) )
                _ID42463::_ID3871( level._ID1632._ID5493._ID21182, 0.5 );

            if ( var_0 < var_2 )
                return;

            var_7 = _func_245( var_3.origin + ( 0, 0, 16 ), var_3.origin + ( 0, 0, -16 ), var_3 )["surfacetype"];
            var_8 = _ID34566( var_7, level._ID1632._ID5493._ID36853 );

            if ( var_8 )
                var_9 = "boost_land_surface_" + var_5 + "_" + var_7;
        }
    }
}

_ID34710( var_0, var_1, var_2 )
{
    var_0 = clamp( var_0, var_2, var_1 );
    var_3 = var_0 / var_1;
    return var_3;
}

_ID34709( var_0, var_1, var_2 )
{
    if ( var_0 <= var_2 )
        var_3 = "lt";
    else if ( var_0 <= var_1 )
        var_3 = "med";
    else
        var_3 = "hvy";

    return var_3;
}

_ID5499()
{
    var_0 = self;

    if ( level.script == "recovery" )
        _ID42463::_ID10401( "npc_boost_jump_rec", var_0 );
    else
        _ID42463::_ID10401( "npc_boost_jump", var_0 );
}

_ID5512()
{
    var_0 = self;

    if ( level.script == "recovery" )
        _ID42463::_ID10401( "npc_boost_land_med_rec", var_0 );
    else
        _ID42463::_ID10401( "npc_boost_land_med", var_0 );
}

_ID5489()
{
    level._ID1632._ID5493._ID20551 = 0;

    if ( isdefined( level._ID1632._ID5493._ID21182 ) )
        _ID42463::_ID3871( level._ID1632._ID5493._ID21182, 0.5 );
}

_ID5509()
{
    _ID42494::_ID34606( "tac_pc_boost_land_assist_pwrup" );
}

_ID5508()
{
    _ID42494::_ID34606( "tac_pc_boost_land_assist_pwrdown" );
}

_ID5520( var_0 )
{
    var_1 = 0.5;

    if ( !isdefined( level._ID3674._ID5513 ) )
    {
        level._ID3674._ID5513 = 1;
        thread _ID5515();
        level.player _ID42494::_ID34629( "tac_pc_boost_land_assist_jet_lp", var_0, 0.1, 0.2 );
        level waittill( var_0 );
        var_2 = getlevelticks();

        if ( !isdefined( level._ID3674._ID5519 ) )
        {
            level._ID3674._ID5519 = var_2;
            _ID42494::_ID34606( "tac_pc_boost_land_assist_release" );
        }
        else if ( var_2 - level._ID3674._ID5519 >= var_1 / 0.05 )
        {
            level._ID3674._ID5519 = var_2;
            _ID42494::_ID34606( "tac_pc_boost_land_assist_release" );
        }

        level._ID3674._ID5513 = undefined;
    }
}

_ID5521()
{
    for (;;)
    {
        var_0 = length( level.player getvelocity() );
        iprintlnbold( var_0 );
        wait 0.05;
    }
}

_ID5515()
{
    var_0 = 1000;
    var_1 = 7500;
    var_2 = 500;

    if ( !isdefined( level._ID3674._ID5507 ) )
        level._ID3674._ID5507 = 1;

    if ( !isdefined( level._ID3674._ID5510 ) )
        level._ID3674._ID5510 = 0;

    var_3 = length( level.player getvelocity() );

    if ( var_3 >= var_0 || level._ID3674._ID5507 == 1 )
    {
        if ( level._ID3674._ID5510 == 0 )
        {
            thread _ID5511();
            _ID42494::_ID34606( "tac_pc_boost_land_assist_shot_max" );
            level._ID3674._ID5507 = 0;
        }
        else if ( level._ID3674._ID5510 == 1 )
            _ID42494::_ID34606( "tac_pc_boost_land_assist_shot_sml" );
    }
    else if ( var_3 < var_0 && var_3 >= var_2 )
        _ID42494::_ID34606( "tac_pc_boost_land_assist_shot_med" );
    else if ( var_3 < var_1 )
        _ID42494::_ID34606( "tac_pc_boost_land_assist_shot_sml" );
}

_ID5511()
{
    var_0 = 4.0;

    if ( !isdefined( level._ID3674._ID5511 ) )
        level._ID3674._ID5511 = 0;

    for (;;)
    {
        level._ID3674._ID5511 = level._ID3674._ID5511 + 0.1;
        level._ID3674._ID5510 = 1;
        wait 0.1;

        if ( level._ID3674._ID5511 > var_0 )
        {
            level._ID3674._ID5511 = 0;
            level._ID3674._ID5510 = 0;
            break;
        }
    }
}

_ID5518()
{
    var_0 = 0.1;

    if ( !isdefined( level._ID3674._ID5518 ) )
        level._ID3674._ID5518 = 0;

    for (;;)
    {
        level._ID3674._ID5518 = level._ID3674._ID5518 + 0.1;
        level._ID3674._ID5517 = 1;
        wait 0.1;

        if ( level._ID3674._ID5518 > var_0 )
        {
            level._ID3674._ID5518 = 0;
            level._ID3674._ID5517 = 0;
            break;
        }
    }
}

_ID5505()
{
    _ID42494::_ID34619( "boost_land_assist_npc" );
}

_ID5506()
{
    _ID42494::_ID34619( "boost_land_assist_npc_ground" );
}

_ID5514()
{

}

_ID38094( var_0 )
{
    var_0 _ID42494::_ID34619( "track_grenade_hover", "kill_tracking_loop" );
    var_0 _ID42494::_ID34629( "track_grenade_loop", "kill_tracking_loop", undefined, 1.2 );
    var_0 waittill( "death" );
    level notify( "kill_tracking_loop" );
}

_ID38095( var_0 )
{
    var_0 _ID42494::_ID34619( "track_grenade_jump" );
}

_ID38098( var_0 )
{
    var_0 _ID42494::_ID34619( "track_grenade_strike" );
    var_0 notify( "kill_tracking_loop" );
}

_ID38090( var_0 )
{
    var_0 _ID42494::_ID34619( "track_grenade_dud" );
    level notify( "kill_tracking_loop" );
}

_ID38088( var_0 )
{
    var_0 _ID42494::_ID34619( "track_grenade_beep" );
}

_ID3219( var_0 )
{
    var_1 = "anml_doberman_" + var_0;

    if ( isdefined( self._ID34548 ) )
        level notify( self._ID34548 );

    self._ID34548 = "anml_doberman_" + _ID42475::_ID34587();

    if ( var_0 == "death" )
        _ID42494::_ID34609( var_1, self.origin, self._ID34548, 0, 0.1 );
    else
        _ID42494::_ID34619( var_1, self._ID34548, 0, 0.15 );
}

_ID14229( var_0 )
{
    _ID42465::_ID23797( "mute_all", var_0 );
}

_ID34502()
{
    _ID42237::_ID14400( "snd_cloak_is_enabled" );
}

_ID13429()
{
    _ID42463::_ID10399( "exo_cloak_buttons" );
}

_ID13431()
{
    if ( !_ID42237::_ID14385( "snd_cloak_is_enabled" ) )
    {
        _ID42237::_ID14402( "snd_cloak_is_enabled" );
        _ID42463::_ID10401( "exo_cloak_enable_click", level.player );
        _ID42463::_ID10401( "exo_cloak_enable", level.player );
        _ID42463::_ID10389( "exo_cloak_enable_wide", 0.4 );
    }

    thread _ID13427();
}

_ID13430()
{
    _ID42237::_ID14388( "snd_cloak_is_enabled" );
    _ID42463::_ID10401( "exo_cloak_enable_click", level.player );
    _ID42463::_ID10401( "exo_cloak_disable", level.player );
    _ID42463::_ID10389( "exo_cloak_disable_wide", 0.2 );
    wait 1;
    thread _ID13428();
}

_ID13427()
{
    level notify( "kill_exo_cloak_battery_low" );
    level endon( "kill_exo_cloak_battery_low" );
    var_0 = level._ID1396._ID8096;
    var_1 = undefined;

    while ( _ID42237::_ID14385( "snd_cloak_is_enabled" ) )
    {
        var_2 = level._ID1396._ID8096;

        if ( var_2 <= 0.26 && var_0 > 0.26 )
            var_1 = _ID42463::_ID10401( "exo_cloak_battery_low", level.player, "loop", "notify_stop_exo_cloak_battery_low" );
        else if ( var_2 >= 0.26 && var_0 < 0.26 )
            level notify( "notify_stop_exo_cloak_battery_low" );

        var_0 = var_2;
        wait 0.05;
    }

    if ( isdefined( var_1 ) )
    {
        var_1 setvolume( 0, 0.25 );
        wait 0.25;
        level notify( "notify_stop_exo_cloak_battery_low" );
    }
}

_ID13426()
{
    _ID42237::_ID14388( "snd_cloak_is_enabled" );
    _ID42463::_ID10401( "exo_cloak_disable", level.player );
    _ID42463::_ID10389( "exo_cloak_battery_dead", 0.25 );
    wait 3;
    thread _ID13428();
}

_ID13428()
{
    var_0 = _ID42463::_ID10399( "exo_cloak_battery_recharge" );

    while ( level._ID1396._ID8096 < 1.0 && !_ID42237::_ID14385( "snd_cloak_is_enabled" ) )
        wait 0.1;

    if ( isdefined( var_0 ) )
        var_0 setvolume( 0, 0.25 );
}

_ID25161( var_0 )
{
    var_1 = self;

    if ( var_0 == "cornercrouch_right_cloak_toggle" )
    {
        _ID42463::_ID10391( "exo_cloak_npc_buttons", var_1, 1 );
        _ID42463::_ID10391( "exo_cloak_npc_buttons", var_1, 6.5 );
    }
    else if ( var_0 == "cornercrouch_left_cloak_toggle" )
    {
        _ID42463::_ID10391( "exo_cloak_npc_buttons", var_1, 1 );
        _ID42463::_ID10391( "exo_cloak_npc_buttons", var_1, 6.75 );
    }
    else
    {
        _ID42463::_ID10391( "exo_cloak_npc_buttons", var_1, 1.2 );
        _ID42463::_ID10391( "exo_cloak_npc_buttons", var_1, 6.4 );
    }
}

_ID25162()
{
    var_0 = self;
    var_1 = gettime();

    if ( var_1 > 1000 )
        return;
}

_ID26092()
{
    level.player _meth_8521();
    _ID34518( "slomo" );
    _ID42474::_ID4662( 1 );
    level.player setreverb( "snd_enveffectsprio_level", "sewer", 1, 0.7, 1 );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "overdrive", 1 );
    _ID42465::_ID23797( "overdrive", 1 );
    _ID42495::_ID34653( "overdrive_timescale" );
    _ID42494::_ID34606( "overdrive_start", undefined, undefined, 0.25 );
    _ID42494::_ID34626( "overdrive_loop", "kill_overdrive_loop", 1, 2 );
    level.player waittill( "death" );
    _ID42465::_ID23801( "overdrive", 2.5 );
    level notify( "kill_overdrive_loop" );
}

_ID26091()
{
    _ID42494::_ID34606( "overdrive_stop" );
    level notify( "kill_overdrive_loop" );
    _ID42465::_ID23801( "overdrive", 2 );
    _ID42495::_ID34653( "default" );
    level.player deactivatereverb( "snd_enveffectsprio_level", 1 );
    _ID42474::_ID4662( 0 );
    _ID42490::_ID34527( 2 );
    _ID42474::_ID4655( 0 );
    _ID34512( "slomo" );
    level.player _meth_8522();
}

_ID34948()
{
    level._ID3674._ID34951 = 1;
    _ID42465::_ID23797( "sonic_attack" );
    _ID42494::_ID34606( "sonic_attack_shoot" );
    _ID42490::_ID34526( "sonic_attack", 0.25 );
    wait 1.5;
    _ID42490::_ID34527( 3.0 );
}

_ID34949()
{
    if ( isdefined( level._ID3674._ID34951 ) && level._ID3674._ID34951 == 1 )
        level._ID3674._ID34951 = 0;
    else
        _ID42494::_ID34606( "sonic_attack_aftershock" );
}

_ID34950()
{
    _ID42465::_ID23801( "sonic_attack" );
}

_ID13554()
{
    _ID42494::_ID34606( "stim_activate" );
}

_ID53730()
{
    _ID42465::_ID23797( "ragtime_warfare_cheat_mix" );
    level.player thread _ID42237::_ID27000( "cheat_chaplin_music" );
    level.player thread _ID42237::_ID27000( "cheat_chaplin_projector_loop" );
}

_ID45070()
{
    _ID42465::_ID23801( "ragtime_warfare_cheat_mix" );
    level.player _ID42237::_ID36516( "cheat_chaplin_music" );
    level.player _ID42237::_ID36516( "cheat_chaplin_projector_loop" );
}

aud_start_slowmo_cheat()
{
    _ID42465::_ID23797( "slowmo_cheat_mix" );
    level.player _meth_8521();
    _ID34518( "slomo" );
    level.player playsound( "scn_cheat_slomo_in" );
    level.player thread _ID42237::_ID27000( "scn_cheat_slomo_lp", undefined, 0.8, 0.8 );
}

aud_stop_slowmo_cheat()
{
    _ID42465::_ID23801( "slowmo_cheat_mix" );
    level.player _meth_8522();
    _ID34512( "slomo" );
    level.player _ID42237::_ID36516( "scn_cheat_slomo_lp" );
    level.player playsound( "scn_cheat_slomo_out" );
}

_ID43409( var_0, var_1 )
{
    level.player endon( "death" );
    _ID42474::_ID4655( 1 );

    if ( level.player._ID47915 != var_0 )
    {
        level.player._ID47915 = var_0;

        switch ( level.player._ID47915 )
        {
            case "radiation_high":
                _ID51528( "rad_shellshock_high", "item_geigercounter_high", "breathing_hurt" );
                break;
            case "radiation_med":
                _ID51528( "rad_shellshock_med", "item_geigercounter_med", "breathing_hurt" );
                break;
            case "radiation_low":
                _ID51528( "rad_shellshock_low", "item_geigercounter_med", "breathing_hurt" );
                break;
            case "radiation_none":
                _ID45483( 4.0, "breathing_better" );
                break;
        }
    }
}

_ID51528( var_0, var_1, var_2 )
{
    var_3 = 0.5;
    _ID42490::_ID34527( var_3 );
    _ID42490::_ID34526( var_0, var_3 );
    _ID47581();
    level.player thread _ID42237::_ID27000( var_1 );
    level.player playsound( var_2 );
}

_ID45483( var_0, var_1 )
{
    var_2 = 0.5;
    wait(var_0);
    _ID42490::_ID34527( var_2 );
    wait 1.0;
    _ID42474::_ID4655( 0 );
    _ID47581();
    level.player playsound( var_1 );
}

_ID47581()
{
    level.player _ID42237::_ID36516( "item_geigercounter_high" );
    level.player _ID42237::_ID36516( "item_geigercounter_med" );
}

_ID34499( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0;

    if ( isdefined( var_2 ) )
        var_5 = var_2;

    var_6 = 0;

    if ( isdefined( var_3 ) )
        var_6 = var_3;

    while ( isdefined( self ) )
    {
        if ( var_6 )
            var_7 = distance( self.origin, level.player.origin );
        else
            var_7 = distance2d( self.origin, level.player.origin );

        if ( var_7 < var_1 )
        {
            var_8 = spawn( "script_origin", self.origin );
            var_8 linkto( self );
            var_8 playsound( var_0, "sounddone" );
            var_8 thread _ID34705( self, var_4 );
            var_8 thread _ID34706();
            var_8 waittill( "flyby_ent",  var_9  );

            if ( var_9 == "deathspin" )
            {
                var_8 setvolume( 0.0, 0.3 );
                wait 0.4;
                var_8 playrumbleonentity();
                var_8 delete();
                return;
            }
            else if ( var_9 == "sounddone" )
            {
                wait 0.1;
                var_8 delete();
                return;
            }

            continue;
        }

        wait 0.05;
    }
}

_ID34705( var_0, var_1 )
{
    self endon( "flyby_ent" );
    var_0 waittill( "deathspin" );
    self notify( "flyby_ent",  "deathspin"  );

    if ( isdefined( var_1 ) )
    {
        var_2 = spawn( "script_origin", self.origin );
        var_2 linkto( self );
        var_2 playsound( var_1, "sounddone" );
        var_2 waittill( "sounddone" );
        var_2 delete();
    }
}

_ID34706()
{
    self endon( "flyby_ent" );
    self waittill( "sounddone" );
    self notify( "flyby_ent",  "sounddone"  );
}

_ID34498( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11 )
{
    self endon( "death" );
    self endon( "deathspin" );
    self vehicle_turnengineoff();

    if ( !isdefined( self._ID4339 ) )
        self._ID4339 = spawnstruct();

    self._ID4339._ID28476 = _ID34701( var_4 );
    self._ID4339._ID14642 = 0;
    self._ID4339._ID14641 = 0;
    self._ID4339._ID9806 = 0;
    self._ID4339._ID3259 = 1;
    self._ID4339._ID9900 = var_10;

    if ( isdefined( var_5 ) )
        thread _ID34699( var_5, var_10 );

    if ( isdefined( var_6 ) )
    {
        var_12 = spawn( "script_origin", self.origin );
        var_12 linkto( self );
        thread _ID34700( var_12, var_6, var_10 );
    }

    self._ID4339._ID23597 = 5;

    if ( isdefined( var_7 ) )
        self._ID4339._ID23597 = var_7;

    self._ID4339._ID23596 = 3;

    if ( isdefined( var_8 ) )
        self._ID4339._ID23596 = var_8;

    var_13 = 0.05;

    if ( isdefined( var_9 ) )
        var_13 = var_9;

    if ( isarray( var_1 ) )
    {
        foreach ( var_16, var_15 in var_1 )
            thread _ID34704( var_16, var_15, var_10 );
    }

    if ( isarray( var_2 ) )
    {
        while ( isdefined( self ) )
        {
            var_17 = _ID34701( var_4 );

            for ( var_18 = 0; var_18 < var_2.size; var_18++ )
            {
                if ( var_17 < var_2[var_18] )
                {
                    if ( var_18 == 0 )
                    {
                        if ( self._ID4339._ID3259 && self._ID4339._ID14642 == 0 && self._ID4339._ID9806 == 0 )
                        {
                            var_19 = _ID34698( var_0, var_18, var_3, var_10 );

                            if ( isdefined( var_19 ) )
                                thread _ID34702( var_19, var_18 );
                        }
                        else if ( var_17 < self._ID4339._ID28476 )
                            self._ID4339._ID3259 = 1;
                        else
                            self._ID4339._ID3259 = 0;
                    }
                    else if ( var_17 > self._ID4339._ID28476 )
                    {
                        if ( self._ID4339._ID3259 && self._ID4339._ID14642 == 0 && self._ID4339._ID14641 == 0 && self._ID4339._ID9806 == 0 )
                        {
                            self._ID4339._ID3259 = 0;
                            var_19 = _ID34698( var_0, var_18, var_3, var_10 );

                            if ( isdefined( var_19 ) )
                                thread _ID34702( var_19, var_18 );
                        }
                    }
                    else
                        self._ID4339._ID3259 = 1;

                    break;
                }
            }

            self._ID4339._ID28476 = var_17;
            wait(var_13);
        }
    }
}

_ID34704( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "deathspin" );
    wait(var_1);
    thread _ID34702( var_0 );
}

_ID34701( var_0 )
{
    var_1 = 0;

    if ( isdefined( var_0 ) )
        var_1 = var_0;

    if ( var_1 )
        var_2 = distance( self.origin, level.player.origin );
    else
        var_2 = distance2d( self.origin, level.player.origin );

    return var_2;
}

_ID34698( var_0, var_1, var_2, var_3 )
{
    var_4 = 0;
    var_5 = self vehicle_getvelocity();
    var_6 = length( var_5 ) * 0.0568182;

    if ( var_6 > 5 )
    {
        if ( isarray( var_2 ) )
        {
            var_7 = level.player getvelocity();
            var_8 = var_5 - var_7;
            var_9 = length( var_8 ) * 0.0568182;

            for ( var_10 = 0; var_10 < var_2.size; var_10++ )
            {
                var_4 = var_10 + 1;

                if ( var_9 > var_2[var_10] )
                {
                    var_4 = var_10;
                    break;
                }
            }
        }

        if ( var_4 == 0 )
            var_11 = "fast";
        else if ( var_4 == 1 )
            var_11 = "med";
        else
            var_11 = "slow";

        if ( var_1 == 0 )
            var_12 = "close";
        else if ( var_1 == 1 )
            var_12 = "mid";
        else if ( var_1 == 2 )
            var_12 = "far";
        else
            return undefined;

        var_13 = var_access_8 + "_" + var_6 + "_" + var_11;

        if ( var_0 == 0 )
            self._ID4339._ID14642 = 1;
        else
            self._ID4339._ID14641 = 1;

        return var_13;
    }
    else
        return undefined;
}

_ID34702( var_0, var_1 )
{
    thread _ID34703( var_1 );
    var_2 = _ID42463::_ID10401( var_0, self );
    thread _ID34697( var_2, "deathspin" );
}

_ID34699( var_0, var_1 )
{
    self endon( "crash_done" );
    self waittill( "deathspin" );
    var_2 = _ID42463::_ID10401( var_0, self );
    thread _ID34697( var_2, "crash_done" );
}

_ID34700( var_0, var_1, var_2 )
{
    self waittill( "crash_done" );
    var_3 = spawn( "script_origin", var_0.origin );
    var_3 _ID42494::_ID34605( var_1, "sounddone" );
    var_3 waittill( "sounddone" );
    var_3 delete();
}

_ID34703( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        if ( var_0 == 0 )
        {
            wait(self._ID4339._ID23597);

            if ( isdefined( self ) )
                self._ID4339._ID14642 = 0;
        }
        else
        {
            wait(self._ID4339._ID23596);

            if ( isdefined( self ) )
                self._ID4339._ID14641 = 0;
        }
    }
}

_ID34697( var_0, var_1, var_2 )
{
    self waittill( var_1 );

    if ( isdefined( var_0 ) )
    {
        var_3 = 0.3;

        if ( isdefined( var_2 ) )
            var_3 = var_2;

        var_0 setvolume( 0.0, var_3 );
        wait(var_3);

        if ( isdefined( var_0 ) )
        {
            var_0 playrumbleonentity();
            wait 0.1;

            if ( isdefined( var_0 ) )
                var_0 delete();
        }
    }
}

_ID34550( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_0 + "_" + var_1 + "_" + var_2;

    if ( isdefined( var_4 ) )
        var_6 = _ID42463::_ID10401( var_5, var_4, undefined, undefined, undefined, undefined, var_3 );
    else
        var_6 = _ID42463::_ID10402( var_5, var_3 );

    return var_6;
}

_ID34634( var_0, var_1, var_2 )
{
    var_3 = var_0["vehicle"];
    var_4 = var_3 _ID34748( var_0, var_1, var_2 );
    var_3 thread _ID34747( var_4 );
}

_ID51454( var_0 )
{
    level.player endon( "death" );
    var_1 = 1.0;
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "vehicle_shellshock", 0.5 );
    var_2 = min( 0, var_0 - var_1 );
    wait(var_2);
    _ID42490::_ID34527( var_1 );
    _ID42474::_ID4655( 0 );
}

_ID34748( var_0, var_1, var_2 )
{
    if ( !isdefined( self._ID4339 ) )
        self._ID4339 = spawnstruct();

    if ( !isarray( var_1 ) )
        var_1 = [];

    self._ID4339._ID9847 = _ID42463::_ID3891( 0, var_1["Debug"] );
    self._ID4339._ID40311 = _ID42463::_ID3891( "veh_impact", var_1["VehicleID"] );
    self._ID4339._ID28784 = _ID42463::_ID3891( 25, var_1["PV_MinVelocityThreshold"] );
    self._ID4339._ID28783 = _ID42463::_ID3891( 1000, var_1["PV_MaxVelocity"] );
    self._ID4339._ID28785 = _ID42463::_ID3891( 3, var_1["PV_NumVelocityRanges"] );
    self._ID4339._ID28782 = _ID42463::_ID3891( 100, var_1["PV_MaxSmlVelocity"] );
    self._ID4339._ID28781 = _ID42463::_ID3891( 600, var_1["PV_MaxMedVelocity"] );
    self._ID4339._ID28780 = _ID42463::_ID3891( 1000, var_1["PV_MaxLrgVelocity"] );
    self._ID4339._ID25168 = _ID42463::_ID3891( 25, var_1["NPC_MinVelocityThreshold"] );
    self._ID4339._ID25167 = _ID42463::_ID3891( 800, var_1["NPC_MaxVelocity"] );
    self._ID4339._ID25169 = _ID42463::_ID3891( 3, var_1["NPC_NumVelocityRanges"] );
    self._ID4339._ID25166 = _ID42463::_ID3891( 100, var_1["NPC_MaxSmlVelocity"] );
    self._ID4339._ID25165 = _ID42463::_ID3891( 400, var_1["NPC_MaxMedVelocity"] );
    self._ID4339._ID25164 = _ID42463::_ID3891( 800, var_1["NPC_MaxLrgVelocity"] );
    self._ID4339._ID23684 = _ID42463::_ID3891( 0.0, var_1["MinLFEVolumeThreshold"] );
    self._ID4339._ID13932 = _ID42463::_ID3891( 2, var_1["FallVelMultiplier"] );
    self._ID4339._ID23692 = _ID42463::_ID3891( 250, var_1["MinTimeThreshold"] );
    self._ID4339._ID37768 = _ID42463::_ID3891( 35, var_1["TireSkidProbability"] );
    self._ID4339._ID23093 = _ID42463::_ID3891( 6000, var_1["MaxDistanceThreshold"] );
    self._ID4339._ID23345 = _ID42463::_ID3891( 0.1, var_1["MedVolMin"] );
    self._ID4339._ID22706 = _ID42463::_ID3891( 0.3, var_1["LrgVolMin"] );
    self._ID4339._ID24919 = _ID42463::_ID3891( 0.0, var_1["NonPlayerImpVolReduction"] );

    if ( !isdefined( self._ID4339._ID28483 ) )
        self._ID4339._ID28483 = 0;

    if ( !isdefined( level._ID1632._ID1267 ) )
    {
        level._ID1632._ID1267 = spawnstruct();
        _ID19714();
        level._ID1632._ID1267._ID20605 = 0;
        level._ID1632._ID1267._ID30998 = _ID42463::_ID3891( 1, var_1["ScrapeEnabled"] );
        level._ID1632._ID1267._ID31000 = _ID42463::_ID3891( 0.5, var_1["ScrapeSeperationTime"] );
        level._ID1632._ID1267._ID30999 = _ID42463::_ID3891( 0.5, var_1["ScrapeFadeOutTime"] );
        level._ID1632._ID1267._ID31001 = _ID42463::_ID3891( 0.05, var_1["ScrapeUpdateRate"] );
    }

    if ( var_0["surface"] == "none" )
        var_0["surface"] = "vehicle";

    var_3 = level._ID1632._ID1267._ID36853;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    if ( !_ID34566( var_0["surface"], var_3 ) )
        var_0["surface"] = "default";

    return var_0;
}

_ID34747( var_0 )
{
    var_1 = self;
    var_2 = var_0["hit_entity"];
    var_3 = var_0["pos"];
    var_4 = var_0["impulse"];
    var_5 = var_0["relativeVel"];
    var_6 = var_0["surface"];
    var_7 = ( var_5[0], var_5[1], 0 );
    var_8 = length( var_7 );
    var_9 = abs( var_5[2] ) * self._ID4339._ID13932;
    var_10 = distance( var_3, level.player.origin );
    var_11 = gettime();
    var_12 = var_11 - self._ID4339._ID28483;
    var_13 = undefined;
    var_14 = undefined;
    var_15 = 0;

    if ( isdefined( level.player._ID11803 ) )
    {
        var_13 = level.player._ID11803;

        if ( isdefined( var_2 ) && var_2 == var_13 || var_1 == var_13 )
        {
            var_14 = var_13;
            var_15 = 1;

            if ( level._ID1632._ID1267._ID20605 )
                thread _ID34758();
        }
    }

    if ( var_10 < self._ID4339._ID23093 && var_8 > self._ID4339._ID28784 )
    {
        var_8 = clamp( var_8, 0, self._ID4339._ID28783 );
        var_9 = clamp( var_9, 0, self._ID4339._ID28783 );
        var_16 = var_8;

        if ( var_9 > var_8 )
            var_16 = var_9;

        if ( var_15 )
        {
            var_17 = _ID34753( var_16, self._ID4339._ID28782, self._ID4339._ID28781 );
            var_18 = _ID34754( var_16, self._ID4339._ID28782, self._ID4339._ID28781, self._ID4339._ID28780 );
            var_19 = "PV-IMPACT";
        }
        else
        {
            var_17 = _ID34753( var_16, self._ID4339._ID25166, self._ID4339._ID25165 );
            var_18 = _ID34754( var_16, self._ID4339._ID25166, self._ID4339._ID25165, self._ID4339._ID25164 );
            var_19 = "NPC-IMPACT";

            if ( var_17 == "sml" )
                return;

            clamp( var_18, self._ID4339._ID24919, 1.0 );
            var_18 -= self._ID4339._ID24919;
        }

        if ( var_12 < self._ID4339._ID23692 )
        {
            if ( var_17 == "sml" )
                return;

            if ( !var_15 )
                return;
        }

        self._ID4339._ID28483 = var_11;

        if ( var_15 )
        {
            if ( level._ID1632._ID1267._ID30998 )
            {
                if ( var_12 <= self._ID4339._ID23692 )
                {
                    level._ID1632._ID1267._ID30996 = var_3;

                    if ( !level._ID1632._ID1267._ID20605 )
                        thread _ID34757( var_13 );
                    else
                        return;
                }
                else if ( level._ID1632._ID1267._ID20605 )
                    _ID34759();
            }
        }

        if ( isdefined( var_13 ) && var_1 != var_13 )
        {
            if ( randomint( 100 ) < self._ID4339._ID37768 )
                _ID42463::_ID10402( "vehicle_tire_skid", var_3 );
        }

        var_20 = _ID42463::_ID10398( var_18, level._ID1632._ID13114["veh_crash_intensity_to_pitch"] );
        var_21 = _ID34550( self._ID4339._ID40311, var_6, var_17, var_3, var_14 );
        var_21 setvolume( var_18, 0.1 );
        var_21 setpitch( var_20, 0.1 );

        if ( var_15 && var_17 != "sml" )
        {
            var_22 = _ID42463::_ID10398( var_16, level._ID1632._ID13114["veh_crash_vel_to_lfe_vol"] );

            if ( var_22 > self._ID4339._ID23684 )
            {
                var_23 = _ID34550( self._ID4339._ID40311, var_6, "lfe", var_3 );
                var_23 setvolume( var_22, 0.1 );
            }
        }
    }
}

_ID34753( var_0, var_1, var_2 )
{
    if ( var_0 <= var_1 )
        var_3 = "sml";
    else if ( var_0 <= var_2 )
        var_3 = "med";
    else
        var_3 = "lrg";

    return var_3;
}

_ID34754( var_0, var_1, var_2, var_3 )
{
    if ( var_0 <= var_1 )
        var_4 = var_0 / var_1;
    else if ( var_0 <= self._ID4339._ID28781 )
    {
        var_4 = var_0 / var_2;

        if ( var_4 < self._ID4339._ID23345 )
            var_4 = self._ID4339._ID23345;
    }
    else
    {
        var_4 = var_0 / var_3;

        if ( var_4 < self._ID4339._ID22706 )
            var_4 = self._ID4339._ID22706;
    }

    return var_4;
}

_ID34757( var_0 )
{
    level._ID1632._ID1267._ID20605 = 1;
    level endon( "aud_stop_vehicle_scraping" );

    while ( level._ID1632._ID1267._ID20605 )
    {
        if ( isdefined( var_0 ) )
        {
            var_1 = var_0.origin;

            if ( isdefined( level._ID1632._ID1267._ID30996 ) )
                var_1 = level._ID1632._ID1267._ID30996;

            var_2 = var_0._ID4339._ID40311 + "_scrape";
            var_3 = _ID42463::_ID10401( var_2, var_0, undefined, undefined, undefined, undefined, var_1 );

            if ( !isdefined( level._ID1632._ID1267._ID30997 ) )
                level._ID1632._ID1267._ID30997 = [];

            level._ID1632._ID1267._ID30997[level._ID1632._ID1267._ID30997.size] = var_3;
        }

        wait 0.05;
        wait(level._ID1632._ID1267._ID31000);
    }
}

_ID34758()
{
    level notify( "aud_vehicle_collision_scrape_timer_reset" );
    level endon( "aud_vehicle_collision_scrape_timer_reset" );
    wait(level._ID1632._ID1267._ID31001);
    waitframe;
    _ID34759();
}

_ID34759( var_0 )
{
    var_1 = level._ID1632._ID1267._ID30999;

    if ( isdefined( var_0 ) )
        var_1 = var_0;

    level notify( "aud_stop_vehicle_scraping" );
    level._ID1632._ID1267._ID20605 = 0;

    if ( isdefined( level._ID1632._ID1267._ID30997 ) )
    {
        for ( var_2 = 0; var_2 < level._ID1632._ID1267._ID30997.size; var_2++ )
        {
            if ( isdefined( level._ID1632._ID1267._ID30997[var_2] ) )
            {
                var_3 = level._ID1632._ID1267._ID30997[var_2];
                thread _ID42463::_ID3871( var_3, var_1 );
            }
        }

        level._ID1632._ID1267._ID30997 = undefined;
    }
}

_ID34756( var_0, var_1, var_2, var_3 )
{
    if ( self._ID4339._ID9847 )
    {
        if ( !isdefined( var_1 ) )
            var_1 = "-";

        if ( !isdefined( var_2 ) )
            var_2 = "-";

        if ( !isdefined( var_3 ) )
            var_3 = "-";

        if ( self._ID4339._ID26060 )
        {
            if ( isdefined( var_0 ) )
                return;
        }
        else
        {

        }
    }
}

_ID34755( var_0, var_1, var_2, var_3 )
{
    if ( self._ID4339._ID9847 )
    {
        if ( !isdefined( var_0 ) )
            var_0 = "-";

        if ( !isdefined( var_1 ) )
            var_1 = "-";

        if ( !isdefined( var_2 ) )
            var_2 = "-";

        if ( !isdefined( var_3 ) )
            var_3 = "-";
    }
}

_ID34752()
{
    _ID42465::_ID23797( "impact_system_solo" );
}

_ID34749()
{
    _ID42465::_ID23801( "impact_system_solo" );
}

_ID34750()
{
    if ( isdefined( self._ID4339._ID20100 ) )
        self._ID4339._ID26060 = 1;
}

_ID34751()
{
    if ( isdefined( self._ID4339._ID20100 ) )
        self._ID4339._ID26060 = 0;
}

_ID34566( var_0, var_1 )
{
    var_2 = 0;

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( var_0 == var_1[var_3] )
        {
            var_2 = 1;
            break;
        }
    }

    return var_2;
}

_ID34516( var_0, var_1, var_2, var_3 )
{
    level.player notifyonplayercommand( "dpad_action_01", "+actionslot 1" );
    level.player notifyonplayercommand( "dpad_action_02", "+actionslot 2" );
    level.player notifyonplayercommand( "dpad_action_03", "+actionslot 3" );
    level.player notifyonplayercommand( "dpad_action_04", "+actionslot 4" );
    thread _ID34714( "dpad_action_01", var_0 );
    thread _ID34714( "dpad_action_02", var_1 );
    thread _ID34714( "dpad_action_03", var_2 );
    thread _ID34714( "dpad_action_04", var_3 );
}

_ID34714( var_0, var_1 )
{
    if ( isdefined( var_0 ) )
    {
        for (;;)
        {
            level.player waittill( var_0 );

            if ( isdefined( var_1 ) )
                thread [[ var_1 ]]();

            wait 0.05;
        }
    }
}

_ID34693( var_0, var_1, var_2 )
{
    var_3 = 0;
    var_1 = _ID42463::_ID3891( 1, var_1 );
    var_2 = _ID42463::_ID3891( 0.1, var_2 );

    while ( isdefined( self ) && !var_3 )
    {
        if ( var_1 )
        {
            if ( distance( self.origin, level.player.origin ) < var_0 )
                var_3 = 1;
        }
        else if ( distance2d( self.origin, level.player.origin ) < var_0 )
            var_3 = 1;

        wait(var_2);
    }

    return var_3;
}

_ID34588( var_0, var_1, var_2, var_3 )
{
    thread _ID34727( var_0, var_1, var_2 );
}

_ID34727( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID34693( var_1, var_2, var_3 );
    level notify( var_0,  var_4  );
}

_ID34507( var_0, var_1, var_2 )
{

}

_ID34509( var_0, var_1 )
{

}

_ID34508( var_0 )
{

}

_ID34711( var_0, var_1, var_2, var_3 )
{

}

_ID34713( var_0, var_1 )
{

}

_ID34712( var_0 )
{

}

_ID34506( var_0, var_1 )
{

}

_ID34691( var_0 )
{
    for (;;)
    {
        var_1 = getaiarray( "axis" );

        foreach ( var_3 in var_1 )
        {
            if ( var_3 isenemyaware() )
            {
                if ( isstring( var_0 ) )
                    level notify( var_0 );

                return;
            }
        }

        wait 0.2;
    }
}

_ID34692( var_0 )
{
    for (;;)
    {
        var_1 = getaiarray( "axis" );

        foreach ( var_3 in var_1 )
        {
            if ( var_3 cansee( level.player ) )
            {
                if ( isstring( var_0 ) )
                    level notify( var_0 );

                return;
            }
        }

        wait 0.2;
    }
}

_ID34522()
{
    var_0 = 0;
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3 cansee( level.player ) )
        {
            var_0 = 1;
            break;
        }
    }

    return var_0;
}

_ID34540()
{
    var_0 = 0;
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3 isenemyaware() )
            var_0 += 1;
    }

    return var_0;
}

_ID1633()
{
    foreach ( var_1 in level._ID1632._ID8549 )
    {
        if ( var_1[1] )
        {
            enablecontext( var_1[0] );
            return;
        }
    }

    disablecontext();
}

_ID34518( var_0 )
{
    foreach ( var_3, var_2 in level._ID1632._ID8549 )
    {
        if ( var_2[0] == var_0 )
        {
            level._ID1632._ID8549[var_3][1] = 1;
            _ID1633();
            return;
        }
    }

    _ID42463::_ID4142( "Trying to enable override sound context that was not configured: " + var_0 );
}

_ID34512( var_0 )
{
    foreach ( var_3, var_2 in level._ID1632._ID8549 )
    {
        if ( var_2[0] == var_0 )
        {
            level._ID1632._ID8549[var_3][1] = 0;
            _ID1633();
            return;
        }
    }

    _ID42463::_ID4142( "Trying to disable override sound context that was not configured: " + var_0 );
}

_ID53404()
{
    if ( !isdefined( level._ID48133 ) )
    {
        _func_2dd( "animals", "solid", "glass" );
        _func_2dd( "emitters", "solid", "glass" );
        _func_2dd( "emitters_ext", "solid", "glass" );
        _func_2dd( "emitters_int", "solid", "glass" );
        _func_2dd( "explosions", "solid", "glass" );
        _func_2dd( "explosions_critical", "solid", "glass" );
        _func_2dd( "foley", "solid", "glass" );
        _func_2dd( "physics", "solid", "glass" );
        _func_2dd( "scripted1", "solid", "glass" );
        _func_2dd( "scripted2", "solid", "glass" );
        _func_2dd( "scripted3", "solid", "glass" );
        _func_2dd( "scripted4", "solid", "glass" );
        _func_2dd( "vehicles_air", "solid", "glass" );
        _func_2dd( "vehicles_land", "solid", "glass" );
        _func_2dd( "weapons_npc", "solid", "glass" );
        _func_2dd( "weapons_npc_dist", "solid", "glass" );
        _func_2dd( "voices", "solid", "glass" );
        _func_2dd( "voices_env", "solid", "glass" );
        _func_2dd( "voices_critical", "solid", "glass" );
        _func_2dd( "whizbys", "solid", "glass" );
    }
}

snd_monitor_no_ammo_mix()
{
    level.player endon( "death" );
    var_0 = 0;

    for (;;)
    {
        var_1 = level.player getcurrentweaponclipammo();

        if ( !var_0 && var_1 == 0 )
        {
            _ID42465::_ID23797( "no_ammo_mix" );
            var_0 = 1;
        }
        else if ( var_0 && var_1 > 0 )
        {
            _ID42465::_ID23801( "no_ammo_mix" );
            var_0 = 0;
        }

        wait 0.1;
    }
}
