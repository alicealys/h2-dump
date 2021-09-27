// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34503()
{
    _unknown_0170();
    _unknown_0087();
    _unknown_0046();
    _unknown_00F6();
    level._ID24600 = 0;
    level._ID794._ID47915 = "radiation_none";
    level._ID1632._ID8549 = [ [ "mute", 0 ], [ "predator", 0 ], [ "credits", 0 ], [ "slomo", 0 ], [ "deathsdoor", 0 ], [ "underwater", 0 ], [ "diveboat", 0 ], [ "interior_vehicle", 0 ], [ "wpn_int_med", 0 ], [ "wpn_int_sml", 0 ], [ "wpn_semi_open", 0 ], [ "bullet_metal_vehicle", 0 ], [ "bullet_whizby_glass", 0 ], [ "finale_handgun", 0 ] ];
    _func_080( "interface", 0 );
    _func_080( "notimescale", 0 );
    _func_080( "voices_unfiltered", 0 );

    if ( _ID42237::_ID20913() )
    {
        thread _unknown_0403();
        _unknown_0D7B();
        thread _unknown_0DE1();
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
    _ID42475::_ID34640( "player_death", ::_unknown_06B6 );
    _ID42475::_ID34640( "friendly_fire_mission_failed", ::_unknown_06CC );
    _ID42475::_ID34640( "end_mission_fade_to_black", ::_unknown_06E3 );
    _ID42475::_ID34640( "specops_end_mission", ::_unknown_06F3 );
    _ID42475::_ID34640( "wpn_deam160_init", ::_unknown_0702 );
    _ID42475::_ID34640( "wpn_deam160_charge", ::_unknown_072B );
    _ID42475::_ID34640( "wpn_deam160_charge_dots_increase", ::_unknown_0775 );
    _ID42475::_ID34640( "wpn_deam160_full_charge", ::_unknown_0782 );
    _ID42475::_ID34640( "wpn_deam160_shot", ::_unknown_0730 );
    _ID42475::_ID34640( "variable_grenade_type_switch", ::_unknown_07A1 );
    _ID42475::_ID34640( "paint_grenade_detonate", ::_unknown_07B1 );
    _ID42475::_ID34640( "emp_grenade_detonate", ::_unknown_07C2 );
    _ID42475::_ID34640( "smart_grenade_detonate", ::_unknown_07D2 );
    _ID42475::_ID34640( "foam_grenade", ::_unknown_07E5 );
    _ID42475::_ID34640( "aud_sonar_vision_on", ::_unknown_097E );
    _ID42475::_ID34640( "aud_sonar_vision_off", ::_unknown_0990 );
    _ID42475::_ID34640( "play_vehicle_collision", ::_unknown_0E85 );
    _ID42475::_ID34640( "start_vehicle_shell_shock", ::_unknown_0E99 );
    _ID42475::_ID34640( "aud_radiation_shellshock", ::_unknown_0CAC );
    _ID42475::_ID34640( "boost_jump_enable", ::_unknown_0A10 );
    _ID42475::_ID34640( "boost_jump_disable", ::_unknown_0A1C );
    _ID42475::_ID34640( "boost_jump_disable_npc", ::_unknown_0A28 );
    _ID42475::_ID34640( "boost_jump_player", ::_unknown_0A38 );
    _ID42475::_ID34640( "boost_land_player", ::_unknown_0A55 );
    _ID42475::_ID34640( "boost_jump_npc", ::_unknown_0AB5 );
    _ID42475::_ID34640( "boost_land_npc", ::_unknown_0ACB );
    _ID42475::_ID34640( "pdrone_death_explode", ::_unknown_0A13 );
    _ID42475::_ID34640( "pdrone_emp_death", ::_ID41823 );
    _ID42475::_ID34640( "pdrone_crash_land", ::_unknown_0A3D );
    _ID42475::_ID34640( "doorshield_ripoff", ::_unknown_0A4F );
    _ID42475::_ID34640( "doorshield_throw", ::_unknown_0A77 );
    _ID42475::_ID34640( "exo_raise_shield", ::_unknown_0A89 );
    _ID42475::_ID34640( "exo_lower_shield", ::_ID41817 );
    _ID42475::_ID34640( "snd_cloak_init", ::_unknown_0C1F );
    _ID42475::_ID34640( "exo_cloak_button_press", ::_unknown_0C2E );
    _ID42475::_ID34640( "exo_cloak_enable", ::_unknown_0C3C );
    _ID42475::_ID34640( "exo_cloak_disable", ::_unknown_0C5A );
    _ID42475::_ID34640( "exo_cloak_battery_low", ::_unknown_0C76 );
    _ID42475::_ID34640( "exo_cloak_battery_dead", ::_unknown_0CAE );
    _ID42475::_ID34640( "exo_cloak_battery_recharge", ::_unknown_0CC6 );
    _ID42475::_ID34640( "npc_cloak_buttons", ::_unknown_0CE3 );
    _ID42475::_ID34640( "npc_cloak_enable", ::_unknown_0D0E );
    _ID42475::_ID34640( "npc_cloak_disable", ::_unknown_0D1A );
    _ID42475::_ID34640( "overdrive_on", ::_unknown_0D2A );
    _ID42475::_ID34640( "overdrive_off", ::_unknown_0D60 );
    _ID42475::_ID34640( "sonic_blast", ::_unknown_0D84 );
    _ID42475::_ID34640( "sonic_blast_aftershock", ::_unknown_0DA0 );
    _ID42475::_ID34640( "sonic_blast_done", ::_unknown_0DB8 );
    _ID42475::_ID34640( "exo_stim_on", ::_unknown_0DC6 );
    _ID42475::_ID34640( "boost_dodge_activate_plr", ::_unknown_0BE4 );
    _ID42475::_ID34640( "boost_land_hud_enable", ::_unknown_0BFD );
    _ID42475::_ID34640( "boost_land_hud_disable", ::_unknown_0C0B );
    _ID42475::_ID34640( "boost_land_out_of_fuel", ::_unknown_0CB7 );
    _ID42475::_ID34640( "boost_land_use_fuel", ::_unknown_0C25 );
    _ID42475::_ID34640( "boost_land_assist_npc", ::_unknown_0CC7 );
    _ID42475::_ID34640( "boost_land_assist_npc_ground", ::_unknown_0CD6 );
    _ID42475::_ID34640( "tracking_grenade_hover", ::_unknown_0CE5 );
    _ID42475::_ID34640( "tracking_grenade_jump", ::_unknown_0CFF );
    _ID42475::_ID34640( "tracking_grenade_strike", ::_unknown_0D0E );
    _ID42475::_ID34640( "tracking_grenade_dud", ::_unknown_0D20 );
    _ID42475::_ID34640( "tracking_grenade_beep", ::_unknown_0D31 );
    _ID42475::_ID34640( "anml_doberman", ::_unknown_0D40 );
    _ID42475::_ID34640( "finish_mission_fade", ::_unknown_0D61 );
    _ID42475::_ID34640( "aud_start_ragtime_warfare", ::_unknown_0E72 );
    _ID42475::_ID34640( "aud_stop_ragtime_warfare", ::_unknown_0E88 );
    _ID42475::_ID34640( "aud_start_slowmo_cheat", ::_unknown_0E9D );
    _ID42475::_ID34640( "aud_stop_slowmo_cheat", ::_unknown_0EB9 );
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
    if ( !_func_02F( level._ID46740 ) && _ID42237::_ID20913() )
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

    }

    case "medium":
    case "small":
    case "large":
}

_ID41817( var_0 )
{
    var_1 = _ID42463::_ID10401( "wpn_deam160_charge_hi", level._ID794, "oneshot" );
    thread _unknown_0ADA();
    level._ID794 thread _unknown_0AC6();
    level._ID794 thread _unknown_0ADC();
    level waittill( "aud_deam160_charge_break" );

    if ( _func_02F( var_1 ) )
        var_1 _meth_8076( 0, 0.05 );
}

_ID41824()
{
    level endon( "aud_deam160_charge_break" );

    for (;;)
    {
        if ( self _meth_8135() || self _meth_8341() || self _meth_8137() || self _meth_82EB() )
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
        var_0 = _func_24A( self _meth_831C() );

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
    var_0 = _ID42463::_ID10401( "wpn_deam160_charge_hi_lp", level._ID794, "loop", "aud_deam160_charge_break" );
    var_0 _meth_8076( 0, 0.05 );
    wait 2;

    if ( _func_02F( var_0 ) )
        var_0 _meth_8076( 1, 0.4 );
}

_ID41818( var_0 )
{
    level._ID41816++;
}

_ID41819()
{
    var_0 = _ID42463::_ID10401( "wpn_deam160_full_charge_beep_lp", level._ID794, "loop", "aud_deam160_charge_break" );
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
    _ID42494::_ID34609( "wpn_paint_grenade_exp", var_0._ID740 );
}

_ID12399()
{
    var_0 = self;
    _ID42494::_ID34609( "wpn_emp_grenade_exp", var_0._ID740 );
}

_ID34403()
{
    level notify( "kill_tracking_loop" );
    var_0 = self;
    _ID42494::_ID34609( "wpn_smart_grenade_exp", var_0._ID740 );
}

_ID14653( var_0 )
{
    _ID42465::_ID23797( "foam_grenade_mix", 0.5 );
    var_1 = self._ID740;
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
    var_0 = self._ID740;
    thread _ID42494::_ID34609( "wpn_mw_grenade_exp", var_0 );
    var_1 = thread _ID42494::_ID34627( "wpn_mw_grenade_pulse_sweeps_lp", var_0, "mw_nade_death", 0.2, 0.45 );
    var_2 = thread _ID42494::_ID34627( "wpn_mw_grenade_pulse_big_lp", var_0, "mw_nade_death", 0.2, 0.45 );
    self waittill( "death" );
    thread _ID42494::_ID34609( "wpn_mw_grenade_die", var_0 );

    if ( _func_02F( var_2 ) )
        var_2 _meth_8076( 0, 0.3 );

    if ( _func_02F( var_1 ) )
        var_1 _meth_8076( 0, 0.3 );

    wait 0.3;

    if ( _func_02F( var_2 ) )
        var_2 _meth_80B3();

    if ( _func_02F( var_1 ) )
        var_1 _meth_80B3();
}

_ID4054( var_0 )
{
    if ( _func_02F( var_0 ) )
        thread _ID42494::_ID34609( "wpn_mw_grenade_elect", var_0 );
}

_ID4053( var_0 )
{
    if ( _func_02F( var_0 ) )
        var_0 thread _ID42494::_ID34619( "wpn_mw_grenade_elect" );
}

_ID53626()
{
    level._ID794 endon( "death" );

    for (;;)
    {
        while ( !level._ID794 _ID42407::_ID20652() )
            waittillframeend;

        var_0 = 0;

        while ( level._ID794 _ID42407::_ID20652() )
        {
            var_1 = level._ID794 _ID42407::_ID43898();

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
    thread _unknown_0EDD();
    thread _unknown_0EF4();

    if ( !_func_02F( self._ID3674 ) )
        self._ID3674 = _func_1A5();

    self._ID3674._ID24605 = 1;
    self._ID3674._ID24604 = 1;

    if ( _func_02F( var_2 ) )
        var_6 = var_2;
    else
        var_6 = var_1 + 250;

    level._ID24600 = 1;

    if ( _func_02F( var_4 ) )
    {
        self._ID3674._ID24603 = 1;
        thread _ID42490::_ID34526( var_4, 0.5 );
    }

    var_7 = 0;
    thread _unknown_0EEB( var_0, var_3, var_7 );

    while ( _func_02F( self._ID3674._ID24605 ) )
    {
        var_8 = _func_0F3( self._ID740, level._ID794._ID740 );

        if ( var_8 < var_1 )
        {
            if ( !_func_02F( self._ID3674._ID24607 ) )
            {
                self notify( "mute_device_bubble_enter" );
                _ID42465::_ID23797( var_0, 0.05 );
                self._ID3674._ID22639 = _ID42494::_ID34626( "mute_device_active_lp", "stop_mute_device_lp", 5, 3, 1 );
                self._ID3674._ID24607 = 1;
            }

            _ID42465::_ID23798( var_0, 1 );

            if ( !_func_02F( self._ID3674._ID24603 ) && _func_02F( var_4 ) )
            {
                self._ID3674._ID24603 = 1;
                thread _ID42490::_ID34526( var_4, 0.5 );

                if ( !_func_02F( self._ID3674._ID24601 ) )
                {
                    self notify( "mute_device_bubble_enter" );
                    _ID42494::_ID34610( "mute_device_active_enter", 0.05 );
                    self._ID3674._ID24604 = 1;
                    thread _unknown_0FD0( self._ID3674._ID24601 );
                    self._ID3674._ID22639 _meth_8076( 1.0, 2 );
                }
            }
        }
        else if ( var_8 < var_6 && self._ID3674._ID24607 == 1 )
        {
            var_9 = var_8 - var_1 / var_6 - var_1;
            _func_0EE( var_9, 0, 1 );
            var_10 = _ID42475::_ID34571( var_9, level._ID1632._ID13114["aud_mute_device_falloff"] );
            _ID42465::_ID23798( var_0, var_10 );

            if ( _func_02F( self._ID3674._ID24603 ) )
            {
                self._ID3674._ID24603 = undefined;
                thread _ID42490::_ID34527( 1 );

                if ( !_func_02F( self._ID3674._ID24602 ) )
                {
                    thread _unknown_0FFC( "mute_device_bubble_exit", 0.5 );
                    _ID42494::_ID34610( "mute_device_active_exit", 0.05 );
                    self._ID3674._ID24604 = 0;
                    thread _unknown_105C( self._ID3674._ID24602 );
                    self._ID3674._ID22639 _meth_8076( 0.0, 2 );
                }
            }
        }
        else if ( self._ID3674._ID24607 == 1 )
        {
            _ID42465::_ID23798( var_0, 0 );

            if ( _func_02F( self._ID3674._ID24603 ) )
            {
                wait 0.05;
                self._ID3674._ID24603 = undefined;
                thread _ID42490::_ID34527( 1 );
                self._ID3674._ID22639 _meth_8076( 0.0, 2 );
            }
        }

        wait 0.05;
    }

    level._ID24600 = 0;
}

_ID34722( var_0, var_1 )
{
    var_2 = 0;

    if ( _func_02F( var_1 ) )
        var_2 = var_1;

    wait(var_2);
    self notify( var_0 );
}

_ID34725( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "turn_off" );
    thread _unknown_10D0( var_0, "death" );
    thread _unknown_10D9( var_0, "turn_off" );
    var_3 = 30;

    if ( _func_02F( var_1 ) )
        var_3 = var_1;

    wait(var_3);
    self notify( "complete" );
    thread _unknown_10D0( var_0 );
}

_ID34724( var_0 )
{
    if ( _func_02F( self._ID3674._ID22639 ) )
        level notify( "stop_mute_device_lp" );

    if ( self._ID3674._ID24604 )
    {
        thread _unknown_10DD( "mute_device_bubble_exit", 0.5 );
        thread _unknown_10E7( "mute_device_bubble_off", 1 );

        if ( !_func_02F( self._ID3674._ID24602 ) )
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

    if ( _func_02F( var_1 ) )
        var_2 = var_1;

    self waittill( var_2 );
    thread _unknown_114B( var_0 );
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

    while ( _func_02F( self ) )
    {
        self waittill( "mute_device_bubble_enter" );
        _unknown_11CA( "mute_breach_distort_vm_enter" );
        self waittill( "mute_device_bubble_exit" );
        _unknown_11E3( "mute_breach_distort_vm_enter" );
        _unknown_11E1( "mute_breach_distort_vm_exit" );
        wait 0.05;
    }
}

_ID34720()
{
    while ( _func_02F( self ) )
    {
        self waittill( "mute_device_bubble_off" );
        wait 0.05;
    }
}

_ID28073( var_0 )
{
    if ( _func_02F( self ) && _func_02F( level._ID1426[var_0] ) )
        _func_157( _ID42237::_ID16299( var_0 ), self, "tag_origin" );
    else
    {

    }
}

_ID21357( var_0 )
{
    if ( _func_02F( self ) && _func_02F( level._ID1426[var_0] ) )
        _func_159( _ID42237::_ID16299( var_0 ), self, "tag_origin" );
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
    var_1 = var_0._ID740;

    while ( _func_02F( var_0 ) )
    {
        var_1 = var_0._ID740;
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
    _unknown_1ADE( "bullet_metal_vehicle" );
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
    _unknown_1B54( "bullet_metal_vehicle" );
}

_ID13527()
{
    _ID42494::_ID34610( "exo_shield_open", 0.5 );
    _unknown_1B54( "bullet_metal_vehicle" );
}

_ID13482()
{
    _ID42494::_ID34610( "exo_shield_close", 0.05 );
    _unknown_1B80( "bullet_metal_vehicle" );
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
    if ( !_func_02F( level._ID1632._ID5493 ) )
    {
        level._ID1632._ID5493 = _func_1A5();
        level._ID1632._ID5493._ID20551 = 0;
        thread _unknown_105C();
    }

    var_0 = self;

    if ( var_0 == level._ID794 )
        level._ID1632._ID5493._ID20551 = 1;
}

_ID5516( var_0 )
{
    var_1 = 40;
    var_2 = 10;

    if ( !_func_02F( level._ID1632._ID5493 ) )
    {
        level._ID1632._ID5493 = _func_1A5();
        level._ID1632._ID5493._ID20551 = 0;
        thread _unknown_1099();
    }

    var_3 = self;

    if ( var_3 == level._ID794 )
    {
        if ( level._ID1632._ID5493._ID20551 == 1 )
        {
            var_4 = _unknown_149B( var_0, var_1, var_2 );
            var_5 = _unknown_14A8( var_0, var_1, var_2 );
            var_6 = "pc_boost_land_" + var_5;
            level._ID1632._ID5493._ID20551 = 0;

            if ( _func_02F( level._ID1632._ID5493._ID21182 ) )
                _ID42463::_ID3871( level._ID1632._ID5493._ID21182, 0.5 );

            if ( var_0 < var_2 )
                return;

            var_7 = _func_245( var_3._ID740 + ( 0, 0, 16 ), var_3._ID740 + ( 0, 0, -16 ), var_3 )["surfacetype"];
            var_8 = _unknown_1BA5( var_7, level._ID1632._ID5493._ID36853 );

            if ( var_8 )
                var_9 = "boost_land_surface_" + var_5 + "_" + var_7;
        }
    }
}

_ID34710( var_0, var_1, var_2 )
{
    var_0 = _func_0EE( var_0, var_2, var_1 );
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

    if ( level._ID912 == "recovery" )
        _ID42463::_ID10401( "npc_boost_jump_rec", var_0 );
    else
        _ID42463::_ID10401( "npc_boost_jump", var_0 );
}

_ID5512()
{
    var_0 = self;

    if ( level._ID912 == "recovery" )
        _ID42463::_ID10401( "npc_boost_land_med_rec", var_0 );
    else
        _ID42463::_ID10401( "npc_boost_land_med", var_0 );
}

_ID5489()
{
    level._ID1632._ID5493._ID20551 = 0;

    if ( _func_02F( level._ID1632._ID5493._ID21182 ) )
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

    if ( !_func_02F( level._ID3674._ID5513 ) )
    {
        level._ID3674._ID5513 = 1;
        thread _unknown_165C();
        level._ID794 _ID42494::_ID34629( "tac_pc_boost_land_assist_jet_lp", var_0, 0.1, 0.2 );
        level waittill( var_0 );
        var_2 = _func_106();

        if ( !_func_02F( level._ID3674._ID5519 ) )
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
        var_0 = _func_0F6( level._ID794 _meth_8344() );
        _func_19F( var_0 );
        wait 0.05;
    }
}

_ID5515()
{
    var_0 = 1000;
    var_1 = 7500;
    var_2 = 500;

    if ( !_func_02F( level._ID3674._ID5507 ) )
        level._ID3674._ID5507 = 1;

    if ( !_func_02F( level._ID3674._ID5510 ) )
        level._ID3674._ID5510 = 0;

    var_3 = _func_0F6( level._ID794 _meth_8344() );

    if ( var_3 >= var_0 || level._ID3674._ID5507 == 1 )
    {
        if ( level._ID3674._ID5510 == 0 )
        {
            thread _unknown_1751();
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

    if ( !_func_02F( level._ID3674._ID5511 ) )
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

    if ( !_func_02F( level._ID3674._ID5518 ) )
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

    if ( _func_02F( self._ID34548 ) )
        level notify( self._ID34548 );

    self._ID34548 = "anml_doberman_" + _ID42475::_ID34587();

    if ( var_0 == "death" )
        _ID42494::_ID34609( var_1, self._ID740, self._ID34548, 0, 0.1 );
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
        _ID42463::_ID10401( "exo_cloak_enable_click", level._ID794 );
        _ID42463::_ID10401( "exo_cloak_enable", level._ID794 );
        _ID42463::_ID10389( "exo_cloak_enable_wide", 0.4 );
    }

    thread _unknown_19F2();
}

_ID13430()
{
    _ID42237::_ID14388( "snd_cloak_is_enabled" );
    _ID42463::_ID10401( "exo_cloak_enable_click", level._ID794 );
    _ID42463::_ID10401( "exo_cloak_disable", level._ID794 );
    _ID42463::_ID10389( "exo_cloak_disable_wide", 0.2 );
    wait 1;
    thread _unknown_1A5C();
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
            var_1 = _ID42463::_ID10401( "exo_cloak_battery_low", level._ID794, "loop", "notify_stop_exo_cloak_battery_low" );
        else if ( var_2 >= 0.26 && var_0 < 0.26 )
            level notify( "notify_stop_exo_cloak_battery_low" );

        var_0 = var_2;
        wait 0.05;
    }

    if ( _func_02F( var_1 ) )
    {
        var_1 _meth_8076( 0, 0.25 );
        wait 0.25;
        level notify( "notify_stop_exo_cloak_battery_low" );
    }
}

_ID13426()
{
    _ID42237::_ID14388( "snd_cloak_is_enabled" );
    _ID42463::_ID10401( "exo_cloak_disable", level._ID794 );
    _ID42463::_ID10389( "exo_cloak_battery_dead", 0.25 );
    wait 3;
    thread _unknown_1B08();
}

_ID13428()
{
    var_0 = _ID42463::_ID10399( "exo_cloak_battery_recharge" );

    while ( level._ID1396._ID8096 < 1.0 && !_ID42237::_ID14385( "snd_cloak_is_enabled" ) )
        wait 0.1;

    if ( _func_02F( var_0 ) )
        var_0 _meth_8076( 0, 0.25 );
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
    var_1 = _func_03D();

    if ( var_1 > 1000 )
        return;
}

_ID26092()
{
    level._ID794 _meth_8521();
    _unknown_219C( "slomo" );
    _ID42474::_ID4662( 1 );
    level._ID794 _meth_8339( "snd_enveffectsprio_level", "sewer", 1, 0.7, 1 );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "overdrive", 1 );
    _ID42465::_ID23797( "overdrive", 1 );
    _ID42495::_ID34653( "overdrive_timescale" );
    _ID42494::_ID34606( "overdrive_start", undefined, undefined, 0.25 );
    _ID42494::_ID34626( "overdrive_loop", "kill_overdrive_loop", 1, 2 );
    level._ID794 waittill( "death" );
    _ID42465::_ID23801( "overdrive", 2.5 );
    level notify( "kill_overdrive_loop" );
}

_ID26091()
{
    _ID42494::_ID34606( "overdrive_stop" );
    level notify( "kill_overdrive_loop" );
    _ID42465::_ID23801( "overdrive", 2 );
    _ID42495::_ID34653( "default" );
    level._ID794 _meth_833A( "snd_enveffectsprio_level", 1 );
    _ID42474::_ID4662( 0 );
    _ID42490::_ID34527( 2 );
    _ID42474::_ID4655( 0 );
    _unknown_2267( "slomo" );
    level._ID794 _meth_8522();
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
    if ( _func_02F( level._ID3674._ID34951 ) && level._ID3674._ID34951 == 1 )
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
    level._ID794 thread _ID42237::_ID27000( "cheat_chaplin_music" );
    level._ID794 thread _ID42237::_ID27000( "cheat_chaplin_projector_loop" );
}

_ID45070()
{
    _ID42465::_ID23801( "ragtime_warfare_cheat_mix" );
    level._ID794 _ID42237::_ID36516( "cheat_chaplin_music" );
    level._ID794 _ID42237::_ID36516( "cheat_chaplin_projector_loop" );
}

aud_start_slowmo_cheat()
{
    _ID42465::_ID23797( "slowmo_cheat_mix" );
    level._ID794 _meth_8521();
    _unknown_2318( "slomo" );
    level._ID794 _meth_80A1( "scn_cheat_slomo_in" );
    level._ID794 thread _ID42237::_ID27000( "scn_cheat_slomo_lp", undefined, 0.8, 0.8 );
}

aud_stop_slowmo_cheat()
{
    _ID42465::_ID23801( "slowmo_cheat_mix" );
    level._ID794 _meth_8522();
    _unknown_2360( "slomo" );
    level._ID794 _ID42237::_ID36516( "scn_cheat_slomo_lp" );
    level._ID794 _meth_80A1( "scn_cheat_slomo_out" );
}

_ID43409( var_0, var_1 )
{
    level._ID794 endon( "death" );
    _ID42474::_ID4655( 1 );

    if ( level._ID794._ID47915 != var_0 )
    {
        level._ID794._ID47915 = var_0;

        switch ( level._ID794._ID47915 )
        {

        }

        return;
        case "radiation_low":
        case "radiation_med":
        case "radiation_high":
        case "radiation_none":
    }
}

_ID51528( var_0, var_1, var_2 )
{
    var_3 = 0.5;
    _ID42490::_ID34527( var_3 );
    _ID42490::_ID34526( var_0, var_3 );
    _unknown_1F3F();
    level._ID794 thread _ID42237::_ID27000( var_1 );
    level._ID794 _meth_80A1( var_2 );
}

_ID45483( var_0, var_1 )
{
    var_2 = 0.5;
    wait(var_0);
    _ID42490::_ID34527( var_2 );
    wait 1.0;
    _ID42474::_ID4655( 0 );
    _unknown_1F6B();
    level._ID794 _meth_80A1( var_1 );
}

_ID47581()
{
    level._ID794 _ID42237::_ID36516( "item_geigercounter_high" );
    level._ID794 _ID42237::_ID36516( "item_geigercounter_med" );
}

_ID34499( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0;

    if ( _func_02F( var_2 ) )
        var_5 = var_2;

    var_6 = 0;

    if ( _func_02F( var_3 ) )
        var_6 = var_3;

    while ( _func_02F( self ) )
    {
        if ( var_6 )
            var_7 = _func_0F3( self._ID740, level._ID794._ID740 );
        else
            var_7 = _func_0F4( self._ID740, level._ID794._ID740 );

        if ( var_7 < var_1 )
        {
            var_8 = _func_06A( "script_origin", self._ID740 );
            var_8 _meth_8053( self );
            var_8 _meth_80A1( var_0, "sounddone" );
            var_8 thread _unknown_2029( self, var_4 );
            var_8 thread _unknown_2044();
            var_9 waittill( "flyby_ent",  var_9  );

            if ( var_9 == "deathspin" )
            {
                var_8 _meth_8076( 0.0, 0.3 );
                wait 0.4;
                var_8 _meth_80B3();
                var_8 _meth_80B7();
                return;
            }
            else if ( var_9 == "sounddone" )
            {
                wait 0.1;
                var_8 _meth_80B7();
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

    if ( _func_02F( var_1 ) )
    {
        var_2 = _func_06A( "script_origin", self._ID740 );
        var_2 _meth_8053( self );
        var_2 _meth_80A1( var_1, "sounddone" );
        var_2 waittill( "sounddone" );
        var_2 _meth_80B7();
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
    self _meth_8295();

    if ( !_func_02F( self._ID4339 ) )
        self._ID4339 = _func_1A5();

    self._ID4339._ID28476 = _unknown_21BC( var_4 );
    self._ID4339._ID14642 = 0;
    self._ID4339._ID14641 = 0;
    self._ID4339._ID9806 = 0;
    self._ID4339._ID3259 = 1;
    self._ID4339._ID9900 = var_10;

    if ( _func_02F( var_5 ) )
        thread _unknown_224B( var_5, var_10 );

    if ( _func_02F( var_6 ) )
    {
        var_12 = _func_06A( "script_origin", self._ID740 );
        var_12 _meth_8053( self );
        thread _unknown_2271( var_12, var_6, var_10 );
    }

    self._ID4339._ID23597 = 5;

    if ( _func_02F( var_7 ) )
        self._ID4339._ID23597 = var_7;

    self._ID4339._ID23596 = 3;

    if ( _func_02F( var_8 ) )
        self._ID4339._ID23596 = var_8;

    var_13 = 0.05;

    if ( _func_02F( var_9 ) )
        var_13 = var_9;

    if ( _func_0D3( var_1 ) )
    {
        var_14 = var_1;

        for ( var_16 = _func_1DA( var_14 ); _func_02F( var_16 ); var_16 = _func_1BF( var_14, var_16 ) )
        {
            var_15 = var_14[var_16];
            thread _unknown_2257( var_16, var_15, var_10 );
        }

        var_clear_2
    }

    if ( _func_0D3( var_2 ) )
    {
        while ( _func_02F( self ) )
        {
            var_17 = _unknown_227D( var_4 );

            for ( var_18 = 0; var_18 < var_2.size; var_18++ )
            {
                if ( var_17 < var_2[var_18] )
                {
                    if ( var_18 == 0 )
                    {
                        if ( self._ID4339._ID3259 && self._ID4339._ID14642 == 0 && self._ID4339._ID9806 == 0 )
                        {
                            var_19 = _unknown_22C2( var_0, var_18, var_3, var_10 );

                            if ( _func_02F( var_19 ) )
                                thread _unknown_2312( var_19, var_18 );
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
                            var_19 = _unknown_2330( var_0, var_18, var_3, var_10 );

                            if ( _func_02F( var_19 ) )
                                thread _unknown_237F( var_19, var_18 );
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
    thread _unknown_23B7( var_0 );
}

_ID34701( var_0 )
{
    var_1 = 0;

    if ( _func_02F( var_0 ) )
        var_1 = var_0;

    if ( var_1 )
        var_2 = _func_0F3( self._ID740, level._ID794._ID740 );
    else
        var_2 = _func_0F4( self._ID740, level._ID794._ID740 );

    return var_2;
}

_ID34698( var_0, var_1, var_2, var_3 )
{
    var_4 = 0;
    var_5 = self _meth_8291();
    var_6 = _func_0F6( var_5 ) * 0.0568182;

    if ( var_6 > 5 )
    {
        if ( _func_0D3( var_2 ) )
        {
            var_7 = level._ID794 _meth_8344();
            var_8 = var_5 - var_7;
            var_9 = _func_0F6( var_8 ) * 0.0568182;

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
    thread _unknown_24DA( var_1 );
    var_2 = _ID42463::_ID10401( var_0, self );
    thread _unknown_24FB( var_2, "deathspin" );
}

_ID34699( var_0, var_1 )
{
    self endon( "crash_done" );
    self waittill( "deathspin" );
    var_2 = _ID42463::_ID10401( var_0, self );
    thread _unknown_251B( var_2, "crash_done" );
}

_ID34700( var_0, var_1, var_2 )
{
    self waittill( "crash_done" );
    var_3 = _func_06A( "script_origin", var_0._ID740 );
    var_3 _ID42494::_ID34605( var_1, "sounddone" );
    var_3 waittill( "sounddone" );
    var_3 _meth_80B7();
}

_ID34703( var_0 )
{
    if ( _func_02F( var_0 ) )
    {
        if ( var_0 == 0 )
        {
            wait(self._ID4339._ID23597);

            if ( _func_02F( self ) )
                self._ID4339._ID14642 = 0;
        }
        else
        {
            wait(self._ID4339._ID23596);

            if ( _func_02F( self ) )
                self._ID4339._ID14641 = 0;
        }
    }
}

_ID34697( var_0, var_1, var_2 )
{
    self waittill( var_1 );

    if ( _func_02F( var_0 ) )
    {
        var_3 = 0.3;

        if ( _func_02F( var_2 ) )
            var_3 = var_2;

        var_0 _meth_8076( 0.0, var_3 );
        wait(var_3);

        if ( _func_02F( var_0 ) )
        {
            var_0 _meth_80B3();
            wait 0.1;

            if ( _func_02F( var_0 ) )
                var_0 _meth_80B7();
        }
    }
}

_ID34550( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_0 + "_" + var_1 + "_" + var_2;

    if ( _func_02F( var_4 ) )
        var_6 = _ID42463::_ID10401( var_5, var_4, undefined, undefined, undefined, undefined, var_3 );
    else
        var_6 = _ID42463::_ID10402( var_5, var_3 );

    return var_6;
}

_ID34634( var_0, var_1, var_2 )
{
    var_3 = var_0["vehicle"];
    var_4 = var_3 _unknown_263E( var_0, var_1, var_2 );
    var_3 thread _unknown_270C( var_4 );
}

_ID51454( var_0 )
{
    level._ID794 endon( "death" );
    var_1 = 1.0;
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "vehicle_shellshock", 0.5 );
    var_2 = _func_0C4( 0, var_0 - var_1 );
    wait(var_2);
    _ID42490::_ID34527( var_1 );
    _ID42474::_ID4655( 0 );
}

_ID34748( var_0, var_1, var_2 )
{
    if ( !_func_02F( self._ID4339 ) )
        self._ID4339 = _func_1A5();

    if ( !_func_0D3( var_1 ) )
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

    if ( !_func_02F( self._ID4339._ID28483 ) )
        self._ID4339._ID28483 = 0;

    if ( !_func_02F( level._ID1632._ID1267 ) )
    {
        level._ID1632._ID1267 = _func_1A5();
        _unknown_1FEE();
        level._ID1632._ID1267._ID20605 = 0;
        level._ID1632._ID1267._ID30998 = _ID42463::_ID3891( 1, var_1["ScrapeEnabled"] );
        level._ID1632._ID1267._ID31000 = _ID42463::_ID3891( 0.5, var_1["ScrapeSeperationTime"] );
        level._ID1632._ID1267._ID30999 = _ID42463::_ID3891( 0.5, var_1["ScrapeFadeOutTime"] );
        level._ID1632._ID1267._ID31001 = _ID42463::_ID3891( 0.05, var_1["ScrapeUpdateRate"] );
    }

    if ( var_0["surface"] == "none" )
        var_0["surface"] = "vehicle";

    var_3 = level._ID1632._ID1267._ID36853;

    if ( _func_02F( var_2 ) )
        var_3 = var_2;

    if ( !_unknown_2B05( var_0["surface"], var_3 ) )
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
    var_8 = _func_0F6( var_7 );
    var_9 = _func_0C3( var_5[2] ) * self._ID4339._ID13932;
    var_10 = _func_0F3( var_3, level._ID794._ID740 );
    var_11 = _func_03D();
    var_12 = var_11 - self._ID4339._ID28483;
    var_13 = undefined;
    var_14 = undefined;
    var_15 = 0;

    if ( _func_02F( level._ID794._ID11803 ) )
    {
        var_13 = level._ID794._ID11803;

        if ( _func_02F( var_2 ) && var_2 == var_13 || var_1 == var_13 )
        {
            var_14 = var_13;
            var_15 = 1;

            if ( level._ID1632._ID1267._ID20605 )
                thread _unknown_2B3D();
        }
    }

    if ( var_10 < self._ID4339._ID23093 && var_8 > self._ID4339._ID28784 )
    {
        var_8 = _func_0EE( var_8, 0, self._ID4339._ID28783 );
        var_9 = _func_0EE( var_9, 0, self._ID4339._ID28783 );
        var_16 = var_8;

        if ( var_9 > var_8 )
            var_16 = var_9;

        if ( var_15 )
        {
            var_17 = _unknown_2B31( var_16, self._ID4339._ID28782, self._ID4339._ID28781 );
            var_18 = _unknown_2B54( var_16, self._ID4339._ID28782, self._ID4339._ID28781, self._ID4339._ID28780 );
            var_19 = "PV-IMPACT";
        }
        else
        {
            var_17 = _unknown_2B60( var_16, self._ID4339._ID25166, self._ID4339._ID25165 );
            var_18 = _unknown_2B83( var_16, self._ID4339._ID25166, self._ID4339._ID25165, self._ID4339._ID25164 );
            var_19 = "NPC-IMPACT";

            if ( var_17 == "sml" )
                return;

            _func_0EE( var_18, self._ID4339._ID24919, 1.0 );
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
                        thread _unknown_2C0D( var_13 );
                    else
                        return;
                }
                else if ( level._ID1632._ID1267._ID20605 )
                    _unknown_2C5D();
            }
        }

        if ( _func_02F( var_13 ) && var_1 != var_13 )
        {
            if ( _func_0B7( 100 ) < self._ID4339._ID37768 )
                _ID42463::_ID10402( "vehicle_tire_skid", var_3 );
        }

        var_20 = _ID42463::_ID10398( var_18, level._ID1632._ID13114["veh_crash_intensity_to_pitch"] );
        var_21 = _unknown_2A8F( self._ID4339._ID40311, var_6, var_17, var_3, var_14 );
        var_21 _meth_8076( var_18, 0.1 );
        var_21 _meth_8074( var_20, 0.1 );

        if ( var_15 && var_17 != "sml" )
        {
            var_22 = _ID42463::_ID10398( var_16, level._ID1632._ID13114["veh_crash_vel_to_lfe_vol"] );

            if ( var_22 > self._ID4339._ID23684 )
            {
                var_23 = _unknown_2AD5( self._ID4339._ID40311, var_6, "lfe", var_3 );
                var_23 _meth_8076( var_22, 0.1 );
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
        if ( _func_02F( var_0 ) )
        {
            var_1 = var_0._ID740;

            if ( _func_02F( level._ID1632._ID1267._ID30996 ) )
                var_1 = level._ID1632._ID1267._ID30996;

            var_2 = var_0._ID4339._ID40311 + "_scrape";
            var_3 = _ID42463::_ID10401( var_2, var_0, undefined, undefined, undefined, undefined, var_1 );

            if ( !_func_02F( level._ID1632._ID1267._ID30997 ) )
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
    _unknown_2E09();
}

_ID34759( var_0 )
{
    var_1 = level._ID1632._ID1267._ID30999;

    if ( _func_02F( var_0 ) )
        var_1 = var_0;

    level notify( "aud_stop_vehicle_scraping" );
    level._ID1632._ID1267._ID20605 = 0;

    if ( _func_02F( level._ID1632._ID1267._ID30997 ) )
    {
        for ( var_2 = 0; var_2 < level._ID1632._ID1267._ID30997.size; var_2++ )
        {
            if ( _func_02F( level._ID1632._ID1267._ID30997[var_2] ) )
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
        if ( !_func_02F( var_1 ) )
            var_1 = "-";

        if ( !_func_02F( var_2 ) )
            var_2 = "-";

        if ( !_func_02F( var_3 ) )
            var_3 = "-";

        if ( self._ID4339._ID26060 )
        {
            if ( _func_02F( var_0 ) )
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
        if ( !_func_02F( var_0 ) )
            var_0 = "-";

        if ( !_func_02F( var_1 ) )
            var_1 = "-";

        if ( !_func_02F( var_2 ) )
            var_2 = "-";

        if ( !_func_02F( var_3 ) )
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
    if ( _func_02F( self._ID4339._ID20100 ) )
        self._ID4339._ID26060 = 1;
}

_ID34751()
{
    if ( _func_02F( self._ID4339._ID20100 ) )
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
    level._ID794 _meth_82E8( "dpad_action_01", "+actionslot 1" );
    level._ID794 _meth_82E8( "dpad_action_02", "+actionslot 2" );
    level._ID794 _meth_82E8( "dpad_action_03", "+actionslot 3" );
    level._ID794 _meth_82E8( "dpad_action_04", "+actionslot 4" );
    thread _unknown_3015( "dpad_action_01", var_0 );
    thread _unknown_301E( "dpad_action_02", var_1 );
    thread _unknown_3027( "dpad_action_03", var_2 );
    thread _unknown_3030( "dpad_action_04", var_3 );
}

_ID34714( var_0, var_1 )
{
    if ( _func_02F( var_0 ) )
    {
        for (;;)
        {
            level._ID794 waittill( var_0 );

            if ( _func_02F( var_1 ) )
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

    while ( _func_02F( self ) && !var_3 )
    {
        if ( var_1 )
        {
            if ( _func_0F3( self._ID740, level._ID794._ID740 ) < var_0 )
                var_3 = 1;
        }
        else if ( _func_0F4( self._ID740, level._ID794._ID740 ) < var_0 )
            var_3 = 1;

        wait(var_2);
    }

    return var_3;
}

_ID34588( var_0, var_1, var_2, var_3 )
{
    thread _unknown_30D4( var_0, var_1, var_2 );
}

_ID34727( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_30C4( var_1, var_2, var_3 );
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
        var_1 = _func_0DE( "axis" );
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( var_3 _meth_841B() )
            {
                if ( _func_031( var_0 ) )
                    level notify( var_0 );

                return;
            }
        }

        var_clear_2
        var_clear_0
        wait 0.2;
    }
}

_ID34692( var_0 )
{
    for (;;)
    {
        var_1 = _func_0DE( "axis" );
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( var_3 _meth_81CA( level._ID794 ) )
            {
                if ( _func_031( var_0 ) )
                    level notify( var_0 );

                return;
            }
        }

        var_clear_2
        var_clear_0
        wait 0.2;
    }
}

_ID34522()
{
    var_0 = 0;
    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 _meth_81CA( level._ID794 ) )
        {
            var_0 = 1;
            break;
        }
    }

    var_clear_2
    var_clear_0
    return var_0;
}

_ID34540()
{
    var_0 = 0;
    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 _meth_841B() )
            var_0 += 1;
    }

    var_clear_2
    var_clear_0
    return var_0;
}

_ID1633()
{
    var_0 = level._ID1632._ID8549;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( var_1[1] )
        {
            _func_29A( var_1[0] );
            return;
        }
    }

    var_clear_2
    var_clear_0
    _func_29B();
}

_ID34518( var_0 )
{
    var_1 = level._ID1632._ID8549;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2[0] == var_0 )
        {
            level._ID1632._ID8549[var_3][1] = 1;
            _unknown_32A5();
            return;
        }
    }

    var_clear_2
    _ID42463::_ID4142( "Trying to enable override sound context that was not configured: " + var_0 );
}

_ID34512( var_0 )
{
    var_1 = level._ID1632._ID8549;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2[0] == var_0 )
        {
            level._ID1632._ID8549[var_3][1] = 0;
            _unknown_32E5();
            return;
        }
    }

    var_clear_2
    _ID42463::_ID4142( "Trying to disable override sound context that was not configured: " + var_0 );
}

_ID53404()
{
    if ( !_func_02F( level._ID48133 ) )
    {
        _func_2DD( "animals", "solid", "glass" );
        _func_2DD( "emitters", "solid", "glass" );
        _func_2DD( "emitters_ext", "solid", "glass" );
        _func_2DD( "emitters_int", "solid", "glass" );
        _func_2DD( "explosions", "solid", "glass" );
        _func_2DD( "explosions_critical", "solid", "glass" );
        _func_2DD( "foley", "solid", "glass" );
        _func_2DD( "physics", "solid", "glass" );
        _func_2DD( "scripted1", "solid", "glass" );
        _func_2DD( "scripted2", "solid", "glass" );
        _func_2DD( "scripted3", "solid", "glass" );
        _func_2DD( "scripted4", "solid", "glass" );
        _func_2DD( "vehicles_air", "solid", "glass" );
        _func_2DD( "vehicles_land", "solid", "glass" );
        _func_2DD( "weapons_npc", "solid", "glass" );
        _func_2DD( "weapons_npc_dist", "solid", "glass" );
        _func_2DD( "voices", "solid", "glass" );
        _func_2DD( "voices_env", "solid", "glass" );
        _func_2DD( "voices_critical", "solid", "glass" );
        _func_2DD( "whizbys", "solid", "glass" );
    }
}

snd_monitor_no_ammo_mix()
{
    level._ID794 endon( "death" );
    var_0 = 0;

    for (;;)
    {
        var_1 = level._ID794 _meth_82FB();

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
