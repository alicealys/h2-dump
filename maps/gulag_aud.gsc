// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000E();
    _unknown_001B();
    _unknown_001F();
    _unknown_0023();
    _unknown_0030();
    thread _unknown_0034();
    _unknown_003B();
    _unknown_003F();
    _unknown_0043();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_gulag_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    _unknown_01AA();
    thread _unknown_0279();
    _ID42495::_ID34653( "gulag_timescale_factor" );
    thread _unknown_0328();
    thread _unknown_035D();
}

_ID22043()
{

}

_ID22042()
{
    wait 0.1;
}

_ID9159()
{

}

_ID28366()
{

}

_ID29419()
{
    _ID42475::_ID34640( "start_run_checkpoint", ::_unknown_00F5 );
    _ID42475::_ID34640( "start_cafeteria_checkpoint", ::_unknown_010B );
    _ID42475::_ID34640( "start_evac_checkpoint", ::_unknown_0122 );
    _ID42475::_ID34640( "start_empty_checkpoint", ::_unknown_013C );
    _ID42475::_ID34640( "start_approach_checkpoint", ::_unknown_014D );
    _ID42475::_ID34640( "start_f15_checkpoint", ::_unknown_015F );
    _ID42475::_ID34640( "start_control_room_checkpoint", ::_unknown_0171 );
    _ID42475::_ID34640( "start_armory_checkpoint", ::_unknown_0180 );
    _ID42475::_ID34640( "start_rappel_checkpoint", ::_unknown_018F );
    _ID42475::_ID34640( "start_tunnel_checkpoint", ::_unknown_019E );
    _ID42475::_ID34640( "start_bathroom_checkpoint", ::_unknown_01AD );
    _ID42475::_ID34640( "start_rescue_checkpoint", ::_unknown_01BC );
    _ID42475::_ID34640( "start_helicopter_landing", ::_unknown_01E2 );
    _ID42475::_ID34640( "start_evac_rock_falling", ::_unknown_0292 );
    _ID42475::_ID34640( "start_evac_rock_falling_black_screen", ::_unknown_02A4 );
    _ID42475::_ID34640( "stop_evac_rock_falling_black_screen", ::_unknown_02C0 );
    _ID42475::_ID34640( "start_evac_slomo", ::_unknown_02DA );
    _ID42475::_ID34640( "stop_evac_slomo", ::_unknown_02EF );
    _ID42475::_ID34640( "start_evac_player", ::_unknown_0304 );
    _ID42475::_ID34640( "start_plr_shield_mix", ::_unknown_0315 );
    _ID42475::_ID34640( "stop_plr_shield_mix", ::_unknown_0324 );
    _ID42475::_ID34640( "start_hallway_attack", ::_unknown_03D7 );
    _ID42475::_ID34640( "start_price_hit_unconscious", ::_unknown_03FA );
    _ID42475::_ID34640( "start_limited_mode_fade_out", ::_unknown_0247 );
    _ID42475::_ID34640( "start_balcony_destruction", ::_unknown_0256 );
    _ID42475::_ID34640( "final_explosion_mix", ::_unknown_0463 );
    _ID42475::_ID34640( "start_heli_bullet_impact_mix", ::_unknown_027C );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID44772( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
    wait 0.1;
    level._ID794 thread _ID42237::_ID27000( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
}

_ID46660( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
    wait 0.1;
    level._ID794 thread _ID42237::_ID27000( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
}

_ID46924( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
    _ID42465::_ID23797( "mix_evac_rock_falling" );
    wait 0.1;
    level._ID794 thread _ID42237::_ID27000( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
}

_ID54276( var_0 )
{
    _ID42474::_ID4669( "helicopter" );
    _ID42465::_ID23797( "intro_siren_mix" );
}

_ID44273( var_0 )
{
    _ID42474::_ID4669( "helicopter" );
    _ID42465::_ID23797( "intro_siren_mix" );
}

_ID53063( var_0 )
{
    _ID42474::_ID4669( "helicopter" );
    _ID42465::_ID23797( "intro_siren_mix" );
}

_ID53420( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID52352( var_0 )
{
    _ID42474::_ID4669( "interior_large" );
}

_ID43333( var_0 )
{
    _ID42474::_ID4669( "interior_large" );
}

_ID51624( var_0 )
{
    _ID42474::_ID4669( "interior_tunnel" );
}

_ID46999( var_0 )
{
    _ID42474::_ID4669( "interior_tunnel" );
}

_ID48979( var_0 )
{
    _ID42474::_ID4669( "interior_sewer" );
}

_ID54480( var_0 )
{
    _ID42465::_ID23797( "limited_mode_fade_out_mix", var_0 );
}

_ID47391()
{
    var_0 = _func_1A1( "balcony_destruction_sfx_01", "targetname" );
    var_1 = _func_1A1( "balcony_destruction_sfx_02", "targetname" );
    wait 2;
    var_0 thread _ID42407::_ID27079( "scn_gulag_bhd_balcony_destruction_01" );
    wait 8;
    var_1 thread _ID42407::_ID27079( "scn_gulag_bhd_balcony_destruction_02" );
}

_ID51878()
{
    _ID42465::_ID23797( "intro_heli_bullet_impact_mix" );
}

_ID49631()
{
    _ID42474::_ID4669( "exterior" );
    _ID42465::_ID23801( "intro_siren_mix" );
    _ID42465::_ID23801( "intro_heli_bullet_impact_mix" );
    _ID42465::_ID23797( "plr_heli_landing" );
    wait 8;
    _ID42465::_ID23801( "plr_heli_landing" );
}

_ID48909()
{
    wait 0.1;
    self _meth_8295();
    self._ID31138 = 1;
}

_ID49562( var_0 )
{
    self waittill( "trigger",  var_1  );
    var_1 endon( "death" );
    var_1 notify( var_0 );
}

_ID46376( var_0 )
{
    var_1 = _ID42407::_ID16262( var_0, "script_noteworthy" );
    var_1 thread _unknown_0435( var_0 );
}

_ID51249( var_0, var_1, var_2 )
{
    _unknown_0448( var_0 );
    _ID42237::_ID41068( var_0 );
    self _meth_8074( var_1, var_2 );
}

_ID54133( var_0, var_1, var_2 )
{
    _unknown_045E( var_0 );
    _ID42237::_ID41068( var_0 );
    wait(var_1);
    _ID42407::_ID27079( var_2 );
}

_ID45727( var_0, var_1, var_2, var_3 )
{
    _unknown_0476( var_0 );
    _ID42237::_ID41068( var_0 );
    wait(var_1);
    self _meth_8076( var_2, var_3 );
}

_ID48176( var_0, var_1 )
{
    var_2 = _ID42407::_ID16262( var_0, "script_noteworthy" );
    var_3 waittill( "trigger",  var_3  );
    var_3 _meth_80A1( var_1 );
}

_ID52870()
{
    self endon( "death" );
    thread _unknown_049D();
    wait 0.4;
    self _meth_80A1( "scn_gulag_helicopter_intro" );
    thread _unknown_04C8( "heli_aud_01", 0.925, 3 );
    _ID42237::_ID14413( "stab1_clear" );
    wait 3;
    self _meth_8074( 1, 1.5 );
    wait 5.5;
    self _meth_8074( 0.925, 1.5 );
    _ID42237::_ID14413( "stab2_clear" );
    wait 1;
    self _meth_8074( 1, 1.5 );
    thread _unknown_050D( "heli_aud_04", 0.91, 2 );
    thread _unknown_0518( "heli_aud_05", 1, 2 );
    thread _unknown_052C( "heli_aud_02", 0, "scn_gulag_helicopter_intro_landing" );
    thread _unknown_053C( "heli_aud_03", 2.5, "scn_gulag_helicopter_leave" );
    thread _unknown_054F( "heli_aud_03", 5, 0, 4 );
}

_ID47424()
{
    thread _unknown_0565( "ai_heli_01", "scn_gulag_ai_helicopter_leave_01" );
    thread _unknown_0571( "ai_heli_02", "scn_gulag_ai_helicopter_leave_02" );
    thread _unknown_057D( "ai_heli_03", "scn_gulag_ai_helicopter_leave_03" );
    thread _unknown_0589( "ai_heli_04", "scn_gulag_ai_helicopter_passby_01" );
    thread _unknown_0595( "ai_heli_05", "scn_gulag_ai_helicopter_passby_02" );
    thread _unknown_05A1( "ai_heli_06", "scn_gulag_ai_helicopter_passby_03" );
    thread _unknown_05AD( "aud_heli_steady", "scn_gulag_ai_helicopter_steady" );
}

_ID52379()
{
    thread _unknown_058A();
    var_0 = _ID42407::_ID16262( "aud_tunnel_heli_sfx", "script_noteworthy" );
    var_1 waittill( "trigger",  var_1  );
    thread _ID42237::_ID27000( "scn_gulag_ending_window_heli", undefined, 0.8, 2 );
    _ID42237::_ID14413( "exit_collapses" );
    _ID42237::_ID36516( "scn_gulag_ending_window_heli" );
}

_ID52884()
{
    _ID42465::_ID23797( "mix_evac_rock_falling" );
    level._ID794 _meth_80A1( "scn_gulag_evac_rock_falling_plr" );
}

_ID45951()
{
    _ID42465::_ID23797( "mix_evac_rock_falling_black_screen" );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "evac_rock_falling_filter", 0.5 );
    _ID42474::_ID4662( 1 );
    _ID42469::_ID30454( "slowmo" );
    level._ID794 _meth_80A1( "scn_gulag_price_remove_debris_ant" );
}

_ID51223()
{
    level._ID794 _meth_80A1( "scn_gulag_evac_rock_falling_shellshock_out" );
    _ID42465::_ID23801( "mix_evac_rock_falling_black_screen" );
    _ID42490::_ID34527( 1 );
    _ID42474::_ID4655( 0 );
    _ID42474::_ID4662( 0 );
    _ID42469::_ID30454( "evac_event_room" );
}

_ID49039()
{
    _ID42465::_ID23797( "mix_evac_slomo" );
    _unknown_0740( "mix_evac_slomo", "scn_gulag_evac_slomo_in", "scn_gulag_evac_slomo_loop", "evac_slomo_filter" );
}

_ID47008()
{
    _ID42465::_ID23801( "mix_evac_rock_falling" );
    _unknown_0777( "mix_evac_slomo", "scn_gulag_evac_slomo_loop", "scn_gulag_evac_slomo_out", "evac_event_room" );
}

_ID50672()
{
    _ID42465::_ID23797( "mix_evac_player" );
    level._ID794 _meth_80A1( "scn_gulag_evac_player" );
}

_ID48231()
{
    _ID42465::_ID23797( "plr_shield_mix" );
}

_ID48376()
{
    _ID42465::_ID23801( "plr_shield_mix" );
}

_ID54652( var_0 )
{
    level._ID794 _meth_8522();
    _ID42476::_ID34512( var_0 );
}

_ID48248( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    thread _ID42407::_ID4917();
    level waittill( "plant_go" );
    level waittill( "slowmo_go" );
    _unknown_07B4( var_0, var_1, var_2, var_4 );
    level waittill( "slowmo_breach_ending" );
    _unknown_07DB( var_0, var_2, var_3, var_5 );
    _ID42407::_ID4918();
}

_ID43790( var_0, var_1, var_2, var_3 )
{
    level._ID794 _meth_8521();
    _ID42476::_ID34518( "slomo" );
    level._ID794 _meth_80A1( var_1 );
    level._ID794 thread _ID42237::_ID27000( var_2, undefined, 1.0, 1.0 );
    _ID42465::_ID23797( var_0 );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( var_3, 0.5 );
    _ID42474::_ID4662( 1 );
    _ID42469::_ID30454( "slowmo" );
}

_ID52893( var_0, var_1, var_2, var_3 )
{
    _unknown_080C( "slomo" );
    _ID42465::_ID23801( var_0 );
    level._ID794 _ID42237::_ID36516( var_1 );
    level._ID794 _meth_80A1( var_2 );
    _ID42490::_ID34527( 1 );
    _ID42474::_ID4655( 0 );
    _ID42474::_ID4662( 0 );
    _ID42469::_ID30454( var_3 );
}

_ID52322()
{
    _unknown_0856( "bathroom_breach_mix", "scn_bathroom_breach_slomo_in", "scn_bathroom_breach_slomo_lp", "scn_bathroom_breach_slomo_out", "slomo_breach_filter", "interior_shower_large" );
}

_ID46776()
{
    _unknown_0872( "rescue_breach_mix", "scn_rescue_breach_slomo_in", "scn_rescue_breach_slomo_lp", "scn_rescue_breach_slomo_out", "slomo_breach_filter", "price_rescue_room" );
}

_ID51064()
{
    level endon( "stop_exterior_alarm" );
    var_0 = _func_1A2( "alarm_speaker", "script_noteworthy" );

    for (;;)
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2 thread _ID42407::_ID27079( var_2._ID43356 );
        }

        var_clear_2
        var_clear_0
        wait 5;
    }
}

_ID51380()
{
    _unknown_07D3();
    var_0 = _func_06A( "script_origin", self._ID740 );
    var_0._ID31232 = 1;
    var_0 _meth_8053( self );
    var_0 _meth_80A1( "scn_gulag_heli_reinforcement_arrival_01" );
    _ID42237::_ID14413( "bhd_attack" );
    thread _unknown_095D();
    _ID42237::_ID14413( "bhd_heli_flies_off" );
    self _meth_80A1( "scn_gulag_heli_reinforcement_leave_01" );
    var_0 _meth_8076( 0, 1.5 );
    wait 1.5;
    var_0 _meth_80B3();
    wait 0.1;
    var_0 _meth_80B7();
}

_ID43830()
{
    var_0 = _func_1A1( "aud_bhd_attack_submix", "script_noteworthy" );

    if ( !_func_02F( var_0 ) )
        return;

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_1B3( var_1 ) )
            continue;

        _ID42465::_ID23797( "bhd_attack_mix" );

        while ( var_1 _meth_80B0( var_0 ) && !_ID42237::_ID14385( "bhd_heli_flies_off" ) )
            wait 0.1;

        _ID42465::_ID23801( "bhd_attack_mix" );

        if ( _ID42237::_ID14385( "bhd_heli_flies_off" ) )
            break;
    }
}

_ID50732()
{
    _ID42465::_ID23797( "1st_hallway_collapse_mix" );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "1st_hallway_collapse_filter", 0.5 );
    thread _ID42237::_ID27077( "scn_gulag_shellshock_01_explo_rear", ( -3065.64, -1606.94, 744.227 ) );
    level waittill( "stop_hallway_attack" );
    _ID42465::_ID23801( "1st_hallway_collapse_mix" );
    _ID42490::_ID34527( 1 );
    _ID42474::_ID4655( 0 );
}

_ID43550()
{
    _ID42465::_ID23797( "price_hit_unconscious_mix" );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "price_hit_unconscious_filter", 0.5 );
    _ID42474::_ID4662( 1 );
    _ID42469::_ID30454( "slowmo" );
    wait 4;
    _ID42465::_ID23801( "price_hit_unconscious_mix" );
    _ID42490::_ID34527( 3 );
    _ID42474::_ID4655( 0 );
    _ID42474::_ID4662( 0 );
    _ID42469::_ID30454( "price_rescue_room" );
}

_ID54392()
{
    var_0 = _func_1A1( "bombardment_hallway", "targetname" );
    var_0 _meth_807C( "emt_offshore_bombardment_shellshock1_area" );
    level waittill( "stop_hallway_bombardment" );
    var_0 _meth_8076( 0, 4 );
    wait 4;
    var_0 _meth_80B3();
    wait 0.1;
    var_0 _meth_80B7();
}

_ID44942()
{
    var_0 = _func_1A1( "rescue_room_alarm", "targetname" );
    wait 2;
    var_0 thread _ID42237::_ID27000( "emt_gulag_escape_alarm_01" );
}

_ID45098()
{
    self _meth_80A1( "scn_dizzy_soldier_01" );
    self waittill( "death" );
    self _meth_80B3();
    wait 0.1;
    self _meth_80A1( "scn_dizzy_soldier_01_death" );
}

_ID54282()
{
    var_0 = _func_1A1( "tower_exit", "targetname" );

    if ( _func_02F( var_0 ) )
    {
        var_1 waittill( "trigger",  var_1  );
        _ID42465::_ID23797( "tower_exit_mix" );
    }
}

_ID46137()
{
    wait 6.15;
    _ID42465::_ID23797( "final_explosion_mix" );
    wait 1.7;
    _ID42465::_ID23797( "black_screen_mix" );
}

_ID52694( var_0 )
{
    level._ID48016 thread _ID42407::_ID27079( "scn_gulag_rappel_metal_plate" );
}

_ID51932( var_0 )
{
    level._ID47292 thread _ID42407::_ID27080( "scn_gulag_rappel_soap_rope", "RopeJoint142" );
}

_ID43970()
{
    var_0 = _func_1A1( "aud_rockslide_explosion_slapback", "targetname" );
    _ID42237::_ID14413( "rockslide_event" );
    var_0 thread _ID42407::_ID27079( "scn_gulag_rockslide_before_antenna_slap" );
}

pipe_room_breach_dialog_flag()
{
    _ID42237::_ID14402( "bathroom_breach_objective_dialog" );
    wait 7;
    _ID42237::_ID14388( "bathroom_breach_objective_dialog" );
}

unstable_platform_landing_sfx()
{
    level._ID794 endon( "death" );

    for (;;)
    {
        level._ID794 waittill( "foley",  var_2, var_1, var_0  );

        if ( _ID42237::_ID14385( "stairs_unstable_platform" ) )
        {
            switch ( var_0 )
            {

            }

            endswitch( 3 )  case "heavyland" loc_C59 case "mediumland" loc_C5E case "lightland" loc_C64
        }

        wait 0.5;
        case "mediumland":
        case "lightland":
    }
}
