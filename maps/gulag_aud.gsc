// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID8467();
    _ID19806();
    _ID19703();
    _ID22056();
    _ID22043();
    thread _ID22042();
    _ID9159();
    _ID28366();
    _ID29419();
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
    _ID47424();
    thread _ID51064();
    _ID42495::_ID34653( "gulag_timescale_factor" );
    thread _ID54282();
    thread unstable_platform_landing_sfx();
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
    _ID42475::_ID34640( "start_run_checkpoint", ::_ID44772 );
    _ID42475::_ID34640( "start_cafeteria_checkpoint", ::_ID46660 );
    _ID42475::_ID34640( "start_evac_checkpoint", ::_ID46924 );
    _ID42475::_ID34640( "start_empty_checkpoint", ::_ID54276 );
    _ID42475::_ID34640( "start_approach_checkpoint", ::_ID44273 );
    _ID42475::_ID34640( "start_f15_checkpoint", ::_ID53063 );
    _ID42475::_ID34640( "start_control_room_checkpoint", ::_ID53420 );
    _ID42475::_ID34640( "start_armory_checkpoint", ::_ID52352 );
    _ID42475::_ID34640( "start_rappel_checkpoint", ::_ID43333 );
    _ID42475::_ID34640( "start_tunnel_checkpoint", ::_ID51624 );
    _ID42475::_ID34640( "start_bathroom_checkpoint", ::_ID46999 );
    _ID42475::_ID34640( "start_rescue_checkpoint", ::_ID48979 );
    _ID42475::_ID34640( "start_helicopter_landing", ::_ID49631 );
    _ID42475::_ID34640( "start_evac_rock_falling", ::_ID52884 );
    _ID42475::_ID34640( "start_evac_rock_falling_black_screen", ::_ID45951 );
    _ID42475::_ID34640( "stop_evac_rock_falling_black_screen", ::_ID51223 );
    _ID42475::_ID34640( "start_evac_slomo", ::_ID49039 );
    _ID42475::_ID34640( "stop_evac_slomo", ::_ID47008 );
    _ID42475::_ID34640( "start_evac_player", ::_ID50672 );
    _ID42475::_ID34640( "start_plr_shield_mix", ::_ID48231 );
    _ID42475::_ID34640( "stop_plr_shield_mix", ::_ID48376 );
    _ID42475::_ID34640( "start_hallway_attack", ::_ID50732 );
    _ID42475::_ID34640( "start_price_hit_unconscious", ::_ID43550 );
    _ID42475::_ID34640( "start_limited_mode_fade_out", ::_ID54480 );
    _ID42475::_ID34640( "start_balcony_destruction", ::_ID47391 );
    _ID42475::_ID34640( "final_explosion_mix", ::_ID46137 );
    _ID42475::_ID34640( "start_heli_bullet_impact_mix", ::_ID51878 );
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
    level.player thread _ID42237::_ID27000( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
}

_ID46660( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
    wait 0.1;
    level.player thread _ID42237::_ID27000( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
}

_ID46924( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
    _ID42465::_ID23797( "mix_evac_rock_falling" );
    wait 0.1;
    level.player thread _ID42237::_ID27000( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
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
    var_0 = getent( "balcony_destruction_sfx_01", "targetname" );
    var_1 = getent( "balcony_destruction_sfx_02", "targetname" );
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
    self vehicle_turnengineoff();
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
    var_1 thread _ID49562( var_0 );
}

_ID51249( var_0, var_1, var_2 )
{
    _ID46376( var_0 );
    _ID42237::_ID41068( var_0 );
    self setpitch( var_1, var_2 );
}

_ID54133( var_0, var_1, var_2 )
{
    _ID46376( var_0 );
    _ID42237::_ID41068( var_0 );
    wait(var_1);
    _ID42407::_ID27079( var_2 );
}

_ID45727( var_0, var_1, var_2, var_3 )
{
    _ID46376( var_0 );
    _ID42237::_ID41068( var_0 );
    wait(var_1);
    self setvolume( var_2, var_3 );
}

_ID48176( var_0, var_1 )
{
    var_2 = _ID42407::_ID16262( var_0, "script_noteworthy" );
    var_2 waittill( "trigger",  var_3  );
    var_3 playsound( var_1 );
}

_ID52870()
{
    self endon( "death" );
    thread _ID48909();
    wait 0.4;
    self playsound( "scn_gulag_helicopter_intro" );
    thread _ID51249( "heli_aud_01", 0.925, 3 );
    _ID42237::_ID14413( "stab1_clear" );
    wait 3;
    self setpitch( 1, 1.5 );
    wait 5.5;
    self setpitch( 0.925, 1.5 );
    _ID42237::_ID14413( "stab2_clear" );
    wait 1;
    self setpitch( 1, 1.5 );
    thread _ID51249( "heli_aud_04", 0.91, 2 );
    thread _ID51249( "heli_aud_05", 1, 2 );
    thread _ID54133( "heli_aud_02", 0, "scn_gulag_helicopter_intro_landing" );
    thread _ID54133( "heli_aud_03", 2.5, "scn_gulag_helicopter_leave" );
    thread _ID45727( "heli_aud_03", 5, 0, 4 );
}

_ID47424()
{
    thread _ID48176( "ai_heli_01", "scn_gulag_ai_helicopter_leave_01" );
    thread _ID48176( "ai_heli_02", "scn_gulag_ai_helicopter_leave_02" );
    thread _ID48176( "ai_heli_03", "scn_gulag_ai_helicopter_leave_03" );
    thread _ID48176( "ai_heli_04", "scn_gulag_ai_helicopter_passby_01" );
    thread _ID48176( "ai_heli_05", "scn_gulag_ai_helicopter_passby_02" );
    thread _ID48176( "ai_heli_06", "scn_gulag_ai_helicopter_passby_03" );
    thread _ID48176( "aud_heli_steady", "scn_gulag_ai_helicopter_steady" );
}

_ID52379()
{
    thread _ID48909();
    var_0 = _ID42407::_ID16262( "aud_tunnel_heli_sfx", "script_noteworthy" );
    var_0 waittill( "trigger",  var_1  );
    thread _ID42237::_ID27000( "scn_gulag_ending_window_heli", undefined, 0.8, 2 );
    _ID42237::_ID14413( "exit_collapses" );
    _ID42237::_ID36516( "scn_gulag_ending_window_heli" );
}

_ID52884()
{
    _ID42465::_ID23797( "mix_evac_rock_falling" );
    level.player playsound( "scn_gulag_evac_rock_falling_plr" );
}

_ID45951()
{
    _ID42465::_ID23797( "mix_evac_rock_falling_black_screen" );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "evac_rock_falling_filter", 0.5 );
    _ID42474::_ID4662( 1 );
    _ID42469::_ID30454( "slowmo" );
    level.player playsound( "scn_gulag_price_remove_debris_ant" );
}

_ID51223()
{
    level.player playsound( "scn_gulag_evac_rock_falling_shellshock_out" );
    _ID42465::_ID23801( "mix_evac_rock_falling_black_screen" );
    _ID42490::_ID34527( 1 );
    _ID42474::_ID4655( 0 );
    _ID42474::_ID4662( 0 );
    _ID42469::_ID30454( "evac_event_room" );
}

_ID49039()
{
    _ID42465::_ID23797( "mix_evac_slomo" );
    _ID43790( "mix_evac_slomo", "scn_gulag_evac_slomo_in", "scn_gulag_evac_slomo_loop", "evac_slomo_filter" );
}

_ID47008()
{
    _ID42465::_ID23801( "mix_evac_rock_falling" );
    _ID52893( "mix_evac_slomo", "scn_gulag_evac_slomo_loop", "scn_gulag_evac_slomo_out", "evac_event_room" );
}

_ID50672()
{
    _ID42465::_ID23797( "mix_evac_player" );
    level.player playsound( "scn_gulag_evac_player" );
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
    level.player _meth_8522();
    _ID42476::_ID34512( var_0 );
}

_ID48248( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    thread _ID42407::_ID4917();
    level waittill( "plant_go" );
    level waittill( "slowmo_go" );
    _ID43790( var_0, var_1, var_2, var_4 );
    level waittill( "slowmo_breach_ending" );
    _ID52893( var_0, var_2, var_3, var_5 );
    _ID42407::_ID4918();
}

_ID43790( var_0, var_1, var_2, var_3 )
{
    level.player _meth_8521();
    _ID42476::_ID34518( "slomo" );
    level.player playsound( var_1 );
    level.player thread _ID42237::_ID27000( var_2, undefined, 1.0, 1.0 );
    _ID42465::_ID23797( var_0 );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( var_3, 0.5 );
    _ID42474::_ID4662( 1 );
    _ID42469::_ID30454( "slowmo" );
}

_ID52893( var_0, var_1, var_2, var_3 )
{
    _ID54652( "slomo" );
    _ID42465::_ID23801( var_0 );
    level.player _ID42237::_ID36516( var_1 );
    level.player playsound( var_2 );
    _ID42490::_ID34527( 1 );
    _ID42474::_ID4655( 0 );
    _ID42474::_ID4662( 0 );
    _ID42469::_ID30454( var_3 );
}

_ID52322()
{
    _ID48248( "bathroom_breach_mix", "scn_bathroom_breach_slomo_in", "scn_bathroom_breach_slomo_lp", "scn_bathroom_breach_slomo_out", "slomo_breach_filter", "interior_shower_large" );
}

_ID46776()
{
    _ID48248( "rescue_breach_mix", "scn_rescue_breach_slomo_in", "scn_rescue_breach_slomo_lp", "scn_rescue_breach_slomo_out", "slomo_breach_filter", "price_rescue_room" );
}

_ID51064()
{
    level endon( "stop_exterior_alarm" );
    var_0 = getentarray( "alarm_speaker", "script_noteworthy" );

    for (;;)
    {
        foreach ( var_2 in var_0 )
            var_2 thread _ID42407::_ID27079( var_2._ID43356 );

        wait 5;
    }
}

_ID51380()
{
    _ID48909();
    var_0 = spawn( "script_origin", self.origin );
    var_0._ID31232 = 1;
    var_0 linkto( self );
    var_0 playsound( "scn_gulag_heli_reinforcement_arrival_01" );
    _ID42237::_ID14413( "bhd_attack" );
    thread _ID43830();
    _ID42237::_ID14413( "bhd_heli_flies_off" );
    self playsound( "scn_gulag_heli_reinforcement_leave_01" );
    var_0 setvolume( 0, 1.5 );
    wait 1.5;
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

_ID43830()
{
    var_0 = getent( "aud_bhd_attack_submix", "script_noteworthy" );

    if ( !isdefined( var_0 ) )
        return;

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isplayernumber( var_1 ) )
            continue;

        _ID42465::_ID23797( "bhd_attack_mix" );

        while ( var_1 istouching( var_0 ) && !_ID42237::_ID14385( "bhd_heli_flies_off" ) )
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
    var_0 = getent( "bombardment_hallway", "targetname" );
    var_0 playloopsound( "emt_offshore_bombardment_shellshock1_area" );
    level waittill( "stop_hallway_bombardment" );
    var_0 setvolume( 0, 4 );
    wait 4;
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

_ID44942()
{
    var_0 = getent( "rescue_room_alarm", "targetname" );
    wait 2;
    var_0 thread _ID42237::_ID27000( "emt_gulag_escape_alarm_01" );
}

_ID45098()
{
    self playsound( "scn_dizzy_soldier_01" );
    self waittill( "death" );
    self playrumbleonentity();
    wait 0.1;
    self playsound( "scn_dizzy_soldier_01_death" );
}

_ID54282()
{
    var_0 = getent( "tower_exit", "targetname" );

    if ( isdefined( var_0 ) )
    {
        var_0 waittill( "trigger",  var_1  );
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
    var_0 = getent( "aud_rockslide_explosion_slapback", "targetname" );
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
    level.player endon( "death" );

    for (;;)
    {
        level.player waittill( "foley",  var_0, var_1, var_2  );

        if ( _ID42237::_ID14385( "stairs_unstable_platform" ) )
        {
            switch ( var_0 )
            {
                case "lightland":
                case "mediumland":
                case "heavyland":
                    level.player thread _ID42407::_ID27079( "step_land_gulag_unstable_platform_plr" );
                    break;
            }
        }

        wait 0.5;
    }
}
