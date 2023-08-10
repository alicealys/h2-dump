// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

_id_B1BE()
{
    level.scr_anim["price"]["price_climb_intro"] = %h2_cliffhanger_price_intro;
    maps\_anim::addnotetrack_detach( "price", "hide_cigar", "prop_price_cigar", "tag_inhand", "price_climb_intro" );
    level.scr_anim["price"]["price_climb_intro_idle"][0] = %h2_cliffhanger_price_intro_idle;
    level.scr_anim["price"]["price_climb_start"] = %h2_cliffhanger_climb_up_start;
    level.scr_anim["price"]["price_climb_mid"] = %h2_cliffhanger_climb_up_mid;
    level.scr_anim["price"]["price_jump"] = %h2_cliffhanger_jump_price;
    level.scr_anim["price"]["price_idle"][0] = %h2_cliffhanger_jump_price_idle;
    level.scr_anim["price"]["price_reach"] = %h2_cliffhanger_jump_price_reach;
    level.scr_anim["generic"]["faux_player"] = %invasion_parachute_ground_detach_idle;
    level.scr_anim["price"]["soap_cliff_climb"] = %h2_cliffhanger_cliff_mound_climb_soap;
    level.scr_anim["price"]["soap_cliff_crouch_idle"] = %h2_crouch_casual_idle_lookat;
    level.scr_anim["price"]["soap_cliff_crouch_idle_look_add"] = [ %h2_lookat_casual_crouch_upper_90l, %h2_lookat_casual_crouch_upper_90r ];
    level.scr_anim["price"]["climb_catch"] = %h2_price_icepicker_bigjump;
    maps\_anim::addnotetrack_customfunction( "price", "ps_cliff_pri_breaksover", maps\cliffhanger_anim::_id_BE61, "price_climb_intro" );
    maps\_anim::addnotetrack_customfunction( "price", "ps_cliff_pri_breaksover", ::_id_D1E0, "price_climb_intro" );
    maps\_anim::addnotetrack_customfunction( "price", "price_finished_talking", maps\cliffhanger_anim::_id_C6E7, "price_climb_intro" );
    maps\_anim::addnotetrack_customfunction( "price", "ps_cliff_pri_spotme", maps\cliffhanger_anim::_id_BE61, "price_climb_start" );
    maps\_anim::addnotetrack_customfunction( "price", "ps_cliff_pri_iceisgood", maps\cliffhanger_anim::_id_D1DB, "price_climb_start" );
    maps\_anim::addnotetrack_customfunction( "price", "price_finished_talking", maps\cliffhanger_anim::_id_C6E7, "price_climb_start" );
    maps\_anim::addnotetrack_customfunction( "price", "ps_cliff_pri_thefarside", maps\cliffhanger_anim::_id_BE61, "price_jump" );
    maps\_anim::addnotetrack_customfunction( "price", "scn_cliffhanger_price_jump_dx", maps\cliffhanger_anim::_id_C6E7, "price_jump" );
    maps\_anim::addnotetrack_customfunction( "price", "price_not_talking", maps\cliffhanger_anim::_id_C6E7, "price_reach" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_foley", ::_id_A7F8, "price_climb_intro" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_foley_getup", ::_id_AECD, "price_climb_intro" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_foley_snow", ::_id_AB44, "price_climb_intro" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_foley_snow", ::_id_AB44, "price_climb_start" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_fs_spike", ::price_intro_fs_spike_ledgewalk, "price_climb_intro" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_fs_spike", ::_id_ACE6, "price_climb_start" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_fs_spike", ::_id_ACE6, "price_climb_mid" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_fs_spike", ::_id_ACE6, "price_reach" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_fs_spike", ::_id_ACE6, "soap_cliff_climb" );
    maps\_anim::addnotetrack_customfunction( "price", "price_intro_fs_spike", ::_id_ACE6, "climb_catch" );
    maps\_anim::addnotetrack_animsound( "price", "price_climb_start", "pickaxe_pullout", "scn_cliff_soap_icepick_pullout" );
    maps\_anim::addnotetrack_customfunction( "price", "catch", ::_id_C478, "climb_catch" );
    maps\_anim::addnotetrack_customfunction( "price", "exhale", ::_id_BF5B );
    maps\_anim::addnotetrack_customfunction( "price", "puff", ::_id_AEE1 );
    maps\_anim::addnotetrack_customfunction( "price", "attach_axe", ::_id_C667 );
    maps\_anim::addnotetrack_customfunction( "price", "detach_axe", ::_id_CCCB );
    maps\_anim::addnotetrack_customfunction( "price", "attach_second_axe", ::_id_C925 );
    maps\_anim::addnotetrack_customfunction( "price", "detach_second_axe", ::_id_D3AA );
    maps\_anim::addnotetrack_customfunction( "price", "attach_gun", ::_id_D229 );
    maps\_anim::addnotetrack_customfunction( "price", "attach_pick", ::_id_BB5A );
    maps\_anim::addnotetrack_customfunction( "price", "pick_slide_left", ::_id_B480 );
    maps\_anim::addnotetrack_customfunction( "price", "pick_in_left", ::_id_CF64 );
    maps\_anim::addnotetrack_customfunction( "price", "pick_in_right", ::_id_B207 );
    maps\_anim::addnotetrack_customfunction( "price", "pick_out_left", ::_id_D4F0 );
    maps\_anim::addnotetrack_customfunction( "price", "pick_out_right", ::_id_CD1A );
    maps\_anim::addnotetrack_customfunction( "price", "left_foot_stab", _id_BB6C::_id_C145, "price_climb_start" );
    level._id_AE68 = "none";
}

_id_D1E0( var_0 )
{
    common_scripts\utility::flag_set( "breaks_over" );
}

_id_A7F8( var_0 )
{
    wait 0.1;
    var_0 playsound( "scn_cliffhanger_price_intro" );
}

_id_AECD( var_0 )
{
    var_0 playsound( "scn_cliffhanger_price_intro1_getup" );
}

_id_AB44( var_0 )
{
    var_0 playsound( "scn_cliffhanger_price_foley_snowfall" );
}

_id_ACE6( var_0 )
{
    var_0 playsound( "scn_cliffhanger_fs_spike_ice" );
}

price_intro_fs_spike_ledgewalk( var_0 )
{
    var_0 playsound( "ledgewalk_foley_price_fs_metal" );
}

_id_C478( var_0 )
{
    if ( isdefined( level.rumble_ent ) )
        level.rumble_ent delete();

    level.player playrumblelooponentity( "damage_light" );
    common_scripts\utility::flag_set( "player_was_caught" );
}

_id_D42A( var_0 )
{
    common_scripts\_exploder::exploder( 4 );
}

_id_C6BF( var_0 )
{

}

_id_CF64( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_inhand" );
    var_0 maps\_utility::tracefx_on_tag( "ice_pick", "TAG_ICE_PICKER_FX", 10 );
    var_0 maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_inhand" );
}

_id_B480( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_inhand" );
    var_0 maps\_utility::tracefx_on_tag( "ice_pick", "TAG_ICE_PICKER_FX", 10 );
    var_0 maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_inhand" );
}

_id_B207( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_weapon_left" );
    var_0 maps\_utility::tracefx_on_tag( "ice_pick", "TAG_ICE_PICKER_FX", 10 );
    var_0 maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_weapon_left" );
}

_id_D4F0( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_inhand" );
    var_0 maps\_utility::tracefx_on_tag( "ice_pick_out", "TAG_ICE_PICKER_FX", 10 );
    var_0 maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_inhand" );
}

_id_CD1A( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_weapon_left" );
    var_0 maps\_utility::tracefx_on_tag( "ice_pick_out", "TAG_ICE_PICKER_FX", 10 );
    var_0 maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_weapon_left" );
}

_id_BB5A( var_0 )
{
    if ( isdefined( var_0._id_C093 ) )
        return;

    var_0._id_C093 = 1;
    var_0 maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_weapon_left" );
    var_0 maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_inhand" );
    var_0 showpart( "tag_weapon", "weapon_ice_picker" );
}

_id_C667( var_0 )
{
    var_0 maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_weapon_left" );
}

_id_C925( var_0 )
{
    var_0 maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_inhand" );
}

_id_CCCB( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_weapon_left" );
}

_id_D3AA( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_inhand" );
}

_id_D229( var_0 )
{
    var_0 maps\_utility::gun_recall();
}

_id_AE29()
{
    if ( !isdefined( self._id_C093 ) )
        return;

    self._id_C093 = undefined;
    self detach( "weapon_ice_picker", "tag_weapon_left" );
    self detach( "weapon_ice_picker", "tag_inhand" );
}

_id_BF5B( var_0 )
{
    playfxontag( common_scripts\utility::getfx( "cigar_exhale_price" ), var_0, "J_Head" );
}

_id_AEE1( var_0 )
{
    playfxontag( common_scripts\utility::getfx( "cigar_glow_puff" ), var_0, "tag_cigarglow" );
    wait 1;
    playfxontag( common_scripts\utility::getfx( "cigar_smoke_puff" ), var_0, "tag_eye" );
}

_id_B69F( var_0, var_1 )
{
    level.player playrumblelooponentity( "icepick_climb" );
    var_2 = _id_BB6C::_id_C9D4( "right" );
    var_3 = _id_BB6C::_id_CB4D( var_0, var_2, var_1 );
    var_3 maps\_utility::tracefx_on_tag( "player_ice_pick", "tag_origin", 10 );
    var_3 delete();
}

_id_B07B( var_0, var_1 )
{
    level.player playrumblelooponentity( "icepick_climb" );
    var_2 = _id_BB6C::_id_C9D4( var_1 );
    var_3 = _id_BB6C::_id_CB4D( var_0, var_2 );
    var_3 maps\_utility::tracefx_on_tag( "player_ice_pick", "tag_origin", 10 );
    var_3 delete();
}

_id_D3CF( var_0 )
{
    var_1 = level._id_B05B._id_B04C;
    _id_B07B( var_0, var_1 );
}

_id_A98D( var_0 )
{
    var_1 = "left";
    _id_B07B( var_0, var_1 );
}

_id_AB6E( var_0 )
{
    var_1 = "right";
    _id_B07B( var_0, var_1 );
}

#using_animtree("player");

player_animations()
{
    level.scr_animtree["player_rig"] = #animtree;
    level.scr_model["player_rig"] = "viewhands_player_arctic_wind";
    level.scr_anim["player_rig"]["big_jump"] = %h2_playerview_icepicker_bigjump;
    level.scr_anim["player_rig"]["climb_finish"] = %h2_playerview_icepicker_bigjump_end_getup;
    level.scr_anim["player_rig"]["big_jump_both_in"] = %h2_playerview_icepicker_bigjump_slide_both_in;
    level.scr_anim["player_rig"]["big_jump_both_out"] = %h2_playerview_icepicker_bigjump_slide_both_out;
    level.scr_anim["player_rig"]["big_jump_left"] = %h2_playerview_icepicker_bigjump_slide_left_in;
    level.scr_anim["player_rig"]["big_jump_right"] = %h2_playerview_icepicker_bigjump_slide_right_in;
    level.scr_anim["player_rig"]["first_pullup_left"] = %player_icepicker_climbup_from_left;
    level.scr_anim["player_rig"]["first_pullup_right"] = %player_icepicker_climbup_from_right;
    level.scr_anim["player_rig"]["controller_slide"] = %cliffhanger_bigjump;
    level.scr_anim["player_rig"]["controller_climb"] = %player_climb;
    level.scr_anim["player_rig"]["controller_both_in"] = %slide_both_in;
    level.scr_anim["player_rig"]["controller_both_out"] = %slide_both_out;
    level.scr_anim["player_rig"]["controller_left"] = %slide_left;
    level.scr_anim["player_rig"]["controller_right"] = %slide_right;
    level.scr_animtree["worldbody"] = #animtree;
    level.scr_model["worldbody"] = "viewbody_arctic";
    level.scr_anim["worldbody"]["intro"] = %h2_cliffhanger_player_intro;
    level.scr_anim["worldbody"]["intro_idle"][0] = %h2_cliffhanger_player_idle;
    level.scr_anim["worldbody"]["cam_add"] = %h2_cliffhanger_player_cam_add;
    level.scr_anim["worldbody"]["cam_add_root"] = %intro_add;
    level.scr_anim["worldbody"]["ledgewalking_in"] = %h2_cliffhanger_ledgewalking_in;
    level.scr_anim["worldbody"]["ledgewalking_in_idle"] = %h2_cliffhanger_ledgewalking_in_idle;
    level.scr_anim["worldbody"]["ledgewalking_1"] = %h2_cliffhanger_ledgewalking_1;
    level.scr_anim["worldbody"]["ledgewalking_1_r"] = %h2_cliffhanger_ledgewalking_1_r;
    level.scr_anim["worldbody"]["ledgewalking_idle_1"] = %h2_cliffhanger_ledgewalking_1_idle;
    level.scr_anim["worldbody"]["ledgewalking_2"] = %h2_cliffhanger_ledgewalking_2;
    level.scr_anim["worldbody"]["ledgewalking_2_r"] = %h2_cliffhanger_ledgewalking_2_r;
    level.scr_anim["worldbody"]["ledgewalking_idle_2"] = %h2_cliffhanger_ledgewalking_2_idle;
    level.scr_anim["worldbody"]["ledgewalking_3"] = %h2_cliffhanger_ledgewalking_3;
    level.scr_anim["worldbody"]["ledgewalking_3_r"] = %h2_cliffhanger_ledgewalking_3_r;
    level.scr_anim["worldbody"]["ledgewalking_idle_3"] = %h2_cliffhanger_ledgewalking_3_idle;
    level.scr_anim["worldbody"]["ledgewalking_4"] = %h2_cliffhanger_ledgewalking_4;
    level.scr_anim["worldbody"]["ledgewalking_4_r"] = %h2_cliffhanger_ledgewalking_4_r;
    level.scr_anim["worldbody"]["ledgewalking_idle_4"] = %h2_cliffhanger_ledgewalking_4_idle;
    level.scr_anim["worldbody"]["ledgewalking_5"] = %h2_cliffhanger_ledgewalking_5;
    level.scr_anim["worldbody"]["ledgewalking_5_r"] = %h2_cliffhanger_ledgewalking_5_r;
    level.scr_anim["worldbody"]["ledgewalking_idle_5"] = %h2_cliffhanger_ledgewalking_5_idle;
    level.scr_anim["worldbody"]["ledgewalking_6"] = %h2_cliffhanger_ledgewalking_6;
    level.scr_anim["worldbody"]["ledgewalking_6_r"] = %h2_cliffhanger_ledgewalking_6_r;
    level.scr_anim["worldbody"]["ledgewalking_blend"] = %h2_cliffhanger_ledgewalking_blend;
    level.scr_anim["worldbody"]["ledgewalking_in_front"] = %h2_cliffhanger_ledgewalking_in_front;
    level.scr_anim["worldbody"]["ledgewalking_1_front"] = %h2_cliffhanger_ledgewalking_1_front;
    level.scr_anim["worldbody"]["ledgewalking_2_front"] = %h2_cliffhanger_ledgewalking_2_front;
    level.scr_goaltime["worldbody"]["ledgewalking_in_front"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_1_front"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_2_front"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_in_idle"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_1"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_1_r"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_idle_1"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_2"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_2_r"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_idle_2"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_3"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_3_r"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_idle_3"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_4"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_4_r"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_idle_4"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_5"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_5_r"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_idle_5"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_6"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_6_r"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_idle_6"] = 0;
    level.scr_goaltime["worldbody"]["ledgewalking_blend"] = 0;
    level.scr_anim["worldbody"]["h2_cliff_jump"] = %h2_playerview_bigjump;
    level.scr_anim["worldbody"]["h2_slide_left"] = %h2_playerview_slide;
    level.scr_anim["worldbody"]["h2_hang"] = %h2_playerview_hang;
    level.scr_anim["worldbody"]["fail_icepick"] = %h2_playerview_icepicker_bigjump_slide_fail_right;
    maps\_anim::addnotetrack_customfunction( "player_rig", "start_gaz", _id_BB6C::_id_D3DE );
    maps\_anim::addnotetrack_customfunction( "player_rig", "stab", ::_id_B69F, "big_jump" );
    maps\_anim::addnotetrack_customfunction( "worldbody", "start_gaz", _id_BB6C::_id_D3DE );
    maps\_anim::addnotetrack_customfunction( "worldbody", "stab", ::_id_B69F, "h2_hang", ( 0, 1, 5.5 ) );
    maps\_anim::addnotetrack_customfunction( "player_rig", "stab", ::_id_D3CF, "climbing" );
    maps\_anim::addnotetrack_customfunction( "player_rig", "stab_left", ::_id_A98D, "climbing" );
    maps\_anim::addnotetrack_customfunction( "player_rig", "stab_right", ::_id_AB6E, "climbing" );
    var_0 = [ "ledgewalking_in", "ledgewalking_1", "ledgewalking_2", "ledgewalking_3" ];

    foreach ( var_2 in var_0 )
    {
        maps\_anim::addnotetrack_customfunction( "worldbody", "footstep_right_small", _id_BB6C::_id_C864, var_2, [ "right", "small" ] );
        maps\_anim::addnotetrack_customfunction( "worldbody", "footstep_left_small", _id_BB6C::_id_C864, var_2, [ "left", "small" ] );
        maps\_anim::addnotetrack_customfunction( "worldbody", "footstep_right_large", _id_BB6C::_id_C864, var_2, [ "right", "large" ] );
        maps\_anim::addnotetrack_customfunction( "worldbody", "footstep_left_large", _id_BB6C::_id_C864, var_2, [ "left", "large" ] );
    }
}

_id_C0DA( var_0, var_1, var_2 )
{
    var_0["root"] = %climb_root;
    var_0["player_climb_root"] = %player_climb;
    var_0["wrist"] = %climb_wrist;
    var_0["jump_down_start"] = %player_icepicker_drop_down_start;
    var_0["jump_down_end"] = %player_icepicker_drop_down_end;
    var_0["big_jump"] = %h2_playerview_icepicker_bigjump;
    var_0["big_jump_both_in"] = %h2_playerview_icepicker_bigjump_slide_both_in;
    var_0["big_jump_both_out"] = %h2_playerview_icepicker_bigjump_slide_both_out;
    var_0["big_jump_left"] = %h2_playerview_icepicker_bigjump_slide_left_in;
    var_0["big_jump_right"] = %h2_playerview_icepicker_bigjump_slide_right_in;
    var_0["sleeve_flap"] = %player_sleeve_flapping;
    var_0["climb_finish"] = %h2_playerview_icepicker_bigjump_end_getup;
    var_0["start_climb_left"] = %player_icepicker_start_climb_up_left;
    var_0["start_climb_right"] = %player_icepicker_start_climb_up_right;
    var_0["early_climb_left"] = %player_icepicker_start_climb_up_left_early;
    var_0["early_climb_right"] = %player_icepicker_start_climb_up_right_early;

    if ( var_1 == "up" )
    {
        if ( var_2 == "right" )
        {
            var_0["stab"] = %player_icepicker_right_high_stab_a;
            var_0["settle"] = %player_icepicker_right_high_settle_a;
            var_0["fail"] = %player_icepicker_right_high_stab_fail_a;
            var_0["idle"] = %player_icepicker_right_idle;
            var_0["additive"] = %climb_right_additive;
            var_0["additive_in"] = %player_icepicker_right_high_stab_in;
            var_0["additive_out"] = %player_icepicker_right_high_stab_out;
            var_0["wrist_in"] = %player_icepicker_right_high_wrist_in;
            var_0["wrist_out"] = %player_icepicker_right_high_wrist_out;
            var_0["fall"] = %player_icepicker_right_fall;
            var_0["fall_small"] = %player_icepicker_right_fall_small;
            var_0["new_fall"] = %h2_cliffhanger_iceaxeclimbing_death_l;
            var_0["bigjump_fall"] = %h2_playerview_icepicker_bigjump_death_l;
        }
        else
        {
            var_0["stab"] = %player_icepicker_left_high_stab_a;
            var_0["settle"] = %player_icepicker_left_high_settle_a;
            var_0["fail"] = %player_icepicker_left_high_stab_fail_a;
            var_0["idle"] = %player_icepicker_left_idle;
            var_0["additive"] = %climb_left_additive;
            var_0["additive_in"] = %player_icepicker_left_high_stab_in;
            var_0["additive_out"] = %player_icepicker_left_high_stab_out;
            var_0["wrist_in"] = %player_icepicker_left_high_wrist_in;
            var_0["wrist_out"] = %player_icepicker_left_high_wrist_out;
            var_0["fall"] = %player_icepicker_left_fall;
            var_0["fall_small"] = %player_icepicker_left_fall_small;
            var_0["new_fall"] = %h2_cliffhanger_iceaxeclimbing_death_r;
            var_0["bigjump_fall"] = %h2_playerview_icepicker_bigjump_death_r;
        }

        var_0["additive_in_strength"] = 1;
        var_0["additive_out_strength"] = 1;
        return var_0;
    }

    if ( var_1 == "right" )
    {
        if ( var_2 == "right" )
        {
            var_0["additive"] = %climb_right_additive;
            var_0["additive_in_strength"] = 0.5;
            var_0["additive_out_strength"] = 1;
        }
        else
        {
            var_0["fail"] = %player_icepicker_left_high_stab_fail_a;
            var_0["additive"] = %climb_left_additive;
            var_0["additive_in_strength"] = 0.5;
            var_0["additive_out_strength"] = 0.5;
        }

        return var_0;
    }

    if ( var_1 == "left" )
    {
        if ( var_2 == "right" )
        {
            var_0["fail"] = %player_icepicker_right_high_stab_fail_a;
            var_0["additive"] = %climb_right_additive;
            var_0["additive_in_strength"] = 0.5;
            var_0["additive_out_strength"] = 0.5;
        }
        else
        {
            var_0["additive"] = %climb_left_additive;
            var_0["additive_in_strength"] = 0.5;
            var_0["additive_out_strength"] = 1;
            var_0["vertical_corrector"] = %climb_left_vertical_corrector;
        }

        return var_0;
    }
}

#using_animtree("script_model");

_id_BF1B()
{
    var_0 = [];
    var_0["cliff_hero1_pose_A"] = %cliff_hero1_pose_a;
    var_0["cliff_hero1_pose_B"] = %cliff_hero1_pose_b;
    var_0["cliff_hero1_pose_C"] = %cliff_hero1_pose_c;
    var_0["cliff_hero1_pose_D"] = %cliff_hero1_pose_d;
    var_0["cliff_hero2_pose_A"] = %cliff_hero2_pose_a;
    var_0["cliff_hero2_pose_B"] = %cliff_hero2_pose_b;
    var_0["cliff_hero2_pose_C"] = %cliff_hero2_pose_c;
    var_0["cliff_hero2_pose_D"] = %cliff_hero2_pose_d;
    var_0["cliff_hero1_pose_jump1"] = %cliff_hero1_pose_jump1;
    var_0["cliff_hero1_pose_jump2"] = %cliff_hero1_pose_jump2;
    var_0["cliff_hero1_pose_jump3"] = %cliff_hero1_pose_jump3;
    var_0["cliff_hero1_pose_jump4"] = %cliff_hero1_pose_jump4;
    var_0["cliff_hero1_pose_jump5"] = %cliff_hero1_pose_jump5;
    var_0["cliff_hero1_pose_jump6"] = %cliff_hero1_pose_jump6;
    self useanimtree( #animtree );
    var_1 = var_0[self.animation];
    var_2 = getstartorigin( self.origin, self.angles, var_1 );
    var_3 = getstartangles( self.origin, self.angles, var_1 );
    thread _id_B738( var_1, var_2, var_3 );
    maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_weapon_left" );
    maps\_anim::anim_spawn_tag_model( "weapon_ice_picker", "tag_inhand" );

    for (;;)
    {
        if ( distance( level.player.origin, self.origin ) < 150 )
            break;

        wait 0.05;
    }

    self delete();
}

_id_B738( var_0, var_1, var_2 )
{
    self endon( "death" );

    for (;;)
    {
        self.origin = var_1;
        self.angles = var_2;
        self setflaggedanim( "anim", var_0, 1, 0, 1 );
        self waittillmatch( "anim", "end" );
    }
}
