// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID45502()
{
    level._ID30895["price"]["price_climb_intro"] = %h2_cliffhanger_price_intro;
    _ID42259::_ID2059( "price", "hide_cigar", "prop_price_cigar", "tag_inhand", "price_climb_intro" );
    level._ID30895["price"]["price_climb_intro_idle"][0] = %h2_cliffhanger_price_intro_idle;
    level._ID30895["price"]["price_climb_start"] = %h2_cliffhanger_climb_up_start;
    level._ID30895["price"]["price_climb_mid"] = %h2_cliffhanger_climb_up_mid;
    level._ID30895["price"]["price_jump"] = %h2_cliffhanger_jump_price;
    level._ID30895["price"]["price_idle"][0] = %h2_cliffhanger_jump_price_idle;
    level._ID30895["price"]["price_reach"] = %h2_cliffhanger_jump_price_reach;
    level._ID30895["generic"]["faux_player"] = %invasion_parachute_ground_detach_idle;
    level._ID30895["price"]["soap_cliff_climb"] = %h2_cliffhanger_cliff_mound_climb_soap;
    level._ID30895["price"]["soap_cliff_crouch_idle"] = %h2_crouch_casual_idle_lookat;
    level._ID30895["price"]["soap_cliff_crouch_idle_look_add"] = [ %h2_lookat_casual_crouch_upper_90l, %h2_lookat_casual_crouch_upper_90r ];
    level._ID30895["price"]["climb_catch"] = %h2_price_icepicker_bigjump;
    _ID42259::_ID2058( "price", "ps_cliff_pri_breaksover", maps\cliffhanger_anim::_ID48737, "price_climb_intro" );
    _ID42259::_ID2058( "price", "ps_cliff_pri_breaksover", ::_ID53728, "price_climb_intro" );
    _ID42259::_ID2058( "price", "price_finished_talking", maps\cliffhanger_anim::_ID50919, "price_climb_intro" );
    _ID42259::_ID2058( "price", "ps_cliff_pri_spotme", maps\cliffhanger_anim::_ID48737, "price_climb_start" );
    _ID42259::_ID2058( "price", "ps_cliff_pri_iceisgood", maps\cliffhanger_anim::_ID53723, "price_climb_start" );
    _ID42259::_ID2058( "price", "price_finished_talking", maps\cliffhanger_anim::_ID50919, "price_climb_start" );
    _ID42259::_ID2058( "price", "ps_cliff_pri_thefarside", maps\cliffhanger_anim::_ID48737, "price_jump" );
    _ID42259::_ID2058( "price", "scn_cliffhanger_price_jump_dx", maps\cliffhanger_anim::_ID50919, "price_jump" );
    _ID42259::_ID2058( "price", "price_not_talking", maps\cliffhanger_anim::_ID50919, "price_reach" );
    _ID42259::_ID2058( "price", "price_intro_foley", ::_ID43000, "price_climb_intro" );
    _ID42259::_ID2058( "price", "price_intro_foley_getup", ::_ID44749, "price_climb_intro" );
    _ID42259::_ID2058( "price", "price_intro_foley_snow", ::_ID43844, "price_climb_intro" );
    _ID42259::_ID2058( "price", "price_intro_foley_snow", ::_ID43844, "price_climb_start" );
    _ID42259::_ID2058( "price", "price_intro_fs_spike", ::price_intro_fs_spike_ledgewalk, "price_climb_intro" );
    _ID42259::_ID2058( "price", "price_intro_fs_spike", ::_ID44262, "price_climb_start" );
    _ID42259::_ID2058( "price", "price_intro_fs_spike", ::_ID44262, "price_climb_mid" );
    _ID42259::_ID2058( "price", "price_intro_fs_spike", ::_ID44262, "price_reach" );
    _ID42259::_ID2058( "price", "price_intro_fs_spike", ::_ID44262, "soap_cliff_climb" );
    _ID42259::_ID2058( "price", "price_intro_fs_spike", ::_ID44262, "climb_catch" );
    _ID42259::_ID2056( "price", "price_climb_start", "pickaxe_pullout", "scn_cliff_soap_icepick_pullout" );
    _ID42259::_ID2058( "price", "catch", ::_ID50296, "climb_catch" );
    _ID42259::_ID2058( "price", "exhale", ::_ID48987 );
    _ID42259::_ID2058( "price", "puff", ::_ID44769 );
    _ID42259::_ID2058( "price", "attach_axe", ::_ID50791 );
    _ID42259::_ID2058( "price", "detach_axe", ::_ID52427 );
    _ID42259::_ID2058( "price", "attach_second_axe", ::_ID51493 );
    _ID42259::_ID2058( "price", "detach_second_axe", ::_ID54186 );
    _ID42259::_ID2058( "price", "attach_gun", ::_ID53801 );
    _ID42259::_ID2058( "price", "attach_pick", ::_ID47962 );
    _ID42259::_ID2058( "price", "pick_slide_left", ::_ID46208 );
    _ID42259::_ID2058( "price", "pick_in_left", ::_ID53092 );
    _ID42259::_ID2058( "price", "pick_in_right", ::_ID45575 );
    _ID42259::_ID2058( "price", "pick_out_left", ::_ID54512 );
    _ID42259::_ID2058( "price", "pick_out_right", ::_ID52506 );
    _ID42259::_ID2058( "price", "left_foot_stab", _ID47980::_ID49477, "price_climb_start" );
    level._ID44648 = "none";
}

_ID53728( var_0 )
{
    _ID42237::_ID14402( "breaks_over" );
}

_ID43000( var_0 )
{
    wait 0.1;
    var_0 playsound( "scn_cliffhanger_price_intro" );
}

_ID44749( var_0 )
{
    var_0 playsound( "scn_cliffhanger_price_intro1_getup" );
}

_ID43844( var_0 )
{
    var_0 playsound( "scn_cliffhanger_price_foley_snowfall" );
}

_ID44262( var_0 )
{
    var_0 playsound( "scn_cliffhanger_fs_spike_ice" );
}

price_intro_fs_spike_ledgewalk( var_0 )
{
    var_0 playsound( "ledgewalk_foley_price_fs_metal" );
}

_ID50296( var_0 )
{
    if ( isdefined( level._ID30333 ) )
        level._ID30333 delete();

    level._ID794 playrumblelooponentity( "damage_light" );
    _ID42237::_ID14402( "player_was_caught" );
}

_ID54314( var_0 )
{
    _ID42234::_ID13611( 4 );
}

_ID50879( var_0 )
{

}

_ID53092( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_inhand" );
    var_0 _ID42407::_ID38044( "ice_pick", "TAG_ICE_PICKER_FX", 10 );
    var_0 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
}

_ID46208( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_inhand" );
    var_0 _ID42407::_ID38044( "ice_pick", "TAG_ICE_PICKER_FX", 10 );
    var_0 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
}

_ID45575( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_weapon_left" );
    var_0 _ID42407::_ID38044( "ice_pick", "TAG_ICE_PICKER_FX", 10 );
    var_0 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
}

_ID54512( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_inhand" );
    var_0 _ID42407::_ID38044( "ice_pick_out", "TAG_ICE_PICKER_FX", 10 );
    var_0 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
}

_ID52506( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_weapon_left" );
    var_0 _ID42407::_ID38044( "ice_pick_out", "TAG_ICE_PICKER_FX", 10 );
    var_0 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
}

_ID47962( var_0 )
{
    if ( isdefined( var_0._ID49299 ) )
        return;

    var_0._ID49299 = 1;
    var_0 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    var_0 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
    var_0 showpart( "tag_weapon", "weapon_ice_picker" );
}

_ID50791( var_0 )
{
    var_0 _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
}

_ID51493( var_0 )
{
    var_0 _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );
}

_ID52427( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_weapon_left" );
}

_ID54186( var_0 )
{
    var_0 detach( "weapon_ice_picker", "tag_inhand" );
}

_ID53801( var_0 )
{
    var_0 _ID42407::_ID17508();
}

_ID44585()
{
    if ( !isdefined( self._ID49299 ) )
        return;

    self._ID49299 = undefined;
    self detach( "weapon_ice_picker", "tag_weapon_left" );
    self detach( "weapon_ice_picker", "tag_inhand" );
}

_ID48987( var_0 )
{
    playfxontag( _ID42237::_ID16299( "cigar_exhale_price" ), var_0, "J_Head" );
}

_ID44769( var_0 )
{
    playfxontag( _ID42237::_ID16299( "cigar_glow_puff" ), var_0, "tag_cigarglow" );
    wait 1;
    playfxontag( _ID42237::_ID16299( "cigar_smoke_puff" ), var_0, "tag_eye" );
}

_ID46751( var_0, var_1 )
{
    level._ID794 playrumblelooponentity( "icepick_climb" );
    var_2 = _ID47980::_ID51668( "right" );
    var_3 = _ID47980::_ID52045( var_0, var_2, var_1 );
    var_3 _ID42407::_ID38044( "player_ice_pick", "tag_origin", 10 );
    var_3 delete();
}

_ID45179( var_0, var_1 )
{
    level._ID794 playrumblelooponentity( "icepick_climb" );
    var_2 = _ID47980::_ID51668( var_1 );
    var_3 = _ID47980::_ID52045( var_0, var_2 );
    var_3 _ID42407::_ID38044( "player_ice_pick", "tag_origin", 10 );
    var_3 delete();
}

_ID54223( var_0 )
{
    var_1 = level._ID45147._ID45132;
    _ID45179( var_0, var_1 );
}

_ID43405( var_0 )
{
    var_1 = "left";
    _ID45179( var_0, var_1 );
}

_ID43886( var_0 )
{
    var_1 = "right";
    _ID45179( var_0, var_1 );
}
#using_animtree("player");

_ID27229()
{
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewhands_player_arctic_wind";
    level._ID30895["player_rig"]["big_jump"] = %h2_playerview_icepicker_bigjump;
    level._ID30895["player_rig"]["climb_finish"] = %h2_playerview_icepicker_bigjump_end_getup;
    level._ID30895["player_rig"]["big_jump_both_in"] = %h2_playerview_icepicker_bigjump_slide_both_in;
    level._ID30895["player_rig"]["big_jump_both_out"] = %h2_playerview_icepicker_bigjump_slide_both_out;
    level._ID30895["player_rig"]["big_jump_left"] = %h2_playerview_icepicker_bigjump_slide_left_in;
    level._ID30895["player_rig"]["big_jump_right"] = %h2_playerview_icepicker_bigjump_slide_right_in;
    level._ID30895["player_rig"]["first_pullup_left"] = %player_icepicker_climbup_from_left;
    level._ID30895["player_rig"]["first_pullup_right"] = %player_icepicker_climbup_from_right;
    level._ID30895["player_rig"]["controller_slide"] = %cliffhanger_bigjump;
    level._ID30895["player_rig"]["controller_climb"] = %player_climb;
    level._ID30895["player_rig"]["controller_both_in"] = %slide_both_in;
    level._ID30895["player_rig"]["controller_both_out"] = %slide_both_out;
    level._ID30895["player_rig"]["controller_left"] = %slide_left;
    level._ID30895["player_rig"]["controller_right"] = %slide_right;
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_arctic";
    level._ID30895["worldbody"]["intro"] = %h2_cliffhanger_player_intro;
    level._ID30895["worldbody"]["intro_idle"][0] = %h2_cliffhanger_player_idle;
    level._ID30895["worldbody"]["cam_add"] = %h2_cliffhanger_player_cam_add;
    level._ID30895["worldbody"]["cam_add_root"] = %intro_add;
    level._ID30895["worldbody"]["ledgewalking_in"] = %h2_cliffhanger_ledgewalking_in;
    level._ID30895["worldbody"]["ledgewalking_in_idle"] = %h2_cliffhanger_ledgewalking_in_idle;
    level._ID30895["worldbody"]["ledgewalking_1"] = %h2_cliffhanger_ledgewalking_1;
    level._ID30895["worldbody"]["ledgewalking_1_r"] = %h2_cliffhanger_ledgewalking_1_r;
    level._ID30895["worldbody"]["ledgewalking_idle_1"] = %h2_cliffhanger_ledgewalking_1_idle;
    level._ID30895["worldbody"]["ledgewalking_2"] = %h2_cliffhanger_ledgewalking_2;
    level._ID30895["worldbody"]["ledgewalking_2_r"] = %h2_cliffhanger_ledgewalking_2_r;
    level._ID30895["worldbody"]["ledgewalking_idle_2"] = %h2_cliffhanger_ledgewalking_2_idle;
    level._ID30895["worldbody"]["ledgewalking_3"] = %h2_cliffhanger_ledgewalking_3;
    level._ID30895["worldbody"]["ledgewalking_3_r"] = %h2_cliffhanger_ledgewalking_3_r;
    level._ID30895["worldbody"]["ledgewalking_idle_3"] = %h2_cliffhanger_ledgewalking_3_idle;
    level._ID30895["worldbody"]["ledgewalking_4"] = %h2_cliffhanger_ledgewalking_4;
    level._ID30895["worldbody"]["ledgewalking_4_r"] = %h2_cliffhanger_ledgewalking_4_r;
    level._ID30895["worldbody"]["ledgewalking_idle_4"] = %h2_cliffhanger_ledgewalking_4_idle;
    level._ID30895["worldbody"]["ledgewalking_5"] = %h2_cliffhanger_ledgewalking_5;
    level._ID30895["worldbody"]["ledgewalking_5_r"] = %h2_cliffhanger_ledgewalking_5_r;
    level._ID30895["worldbody"]["ledgewalking_idle_5"] = %h2_cliffhanger_ledgewalking_5_idle;
    level._ID30895["worldbody"]["ledgewalking_6"] = %h2_cliffhanger_ledgewalking_6;
    level._ID30895["worldbody"]["ledgewalking_6_r"] = %h2_cliffhanger_ledgewalking_6_r;
    level._ID30895["worldbody"]["ledgewalking_blend"] = %h2_cliffhanger_ledgewalking_blend;
    level._ID30895["worldbody"]["ledgewalking_in_front"] = %h2_cliffhanger_ledgewalking_in_front;
    level._ID30895["worldbody"]["ledgewalking_1_front"] = %h2_cliffhanger_ledgewalking_1_front;
    level._ID30895["worldbody"]["ledgewalking_2_front"] = %h2_cliffhanger_ledgewalking_2_front;
    level._ID30902["worldbody"]["ledgewalking_in_front"] = 0;
    level._ID30902["worldbody"]["ledgewalking_1_front"] = 0;
    level._ID30902["worldbody"]["ledgewalking_2_front"] = 0;
    level._ID30902["worldbody"]["ledgewalking_in_idle"] = 0;
    level._ID30902["worldbody"]["ledgewalking_1"] = 0;
    level._ID30902["worldbody"]["ledgewalking_1_r"] = 0;
    level._ID30902["worldbody"]["ledgewalking_idle_1"] = 0;
    level._ID30902["worldbody"]["ledgewalking_2"] = 0;
    level._ID30902["worldbody"]["ledgewalking_2_r"] = 0;
    level._ID30902["worldbody"]["ledgewalking_idle_2"] = 0;
    level._ID30902["worldbody"]["ledgewalking_3"] = 0;
    level._ID30902["worldbody"]["ledgewalking_3_r"] = 0;
    level._ID30902["worldbody"]["ledgewalking_idle_3"] = 0;
    level._ID30902["worldbody"]["ledgewalking_4"] = 0;
    level._ID30902["worldbody"]["ledgewalking_4_r"] = 0;
    level._ID30902["worldbody"]["ledgewalking_idle_4"] = 0;
    level._ID30902["worldbody"]["ledgewalking_5"] = 0;
    level._ID30902["worldbody"]["ledgewalking_5_r"] = 0;
    level._ID30902["worldbody"]["ledgewalking_idle_5"] = 0;
    level._ID30902["worldbody"]["ledgewalking_6"] = 0;
    level._ID30902["worldbody"]["ledgewalking_6_r"] = 0;
    level._ID30902["worldbody"]["ledgewalking_idle_6"] = 0;
    level._ID30902["worldbody"]["ledgewalking_blend"] = 0;
    level._ID30895["worldbody"]["h2_cliff_jump"] = %h2_playerview_bigjump;
    level._ID30895["worldbody"]["h2_slide_left"] = %h2_playerview_slide;
    level._ID30895["worldbody"]["h2_hang"] = %h2_playerview_hang;
    level._ID30895["worldbody"]["fail_icepick"] = %h2_playerview_icepicker_bigjump_slide_fail_right;
    _ID42259::_ID2058( "player_rig", "start_gaz", _ID47980::_ID54238 );
    _ID42259::_ID2058( "player_rig", "stab", ::_ID46751, "big_jump" );
    _ID42259::_ID2058( "worldbody", "start_gaz", _ID47980::_ID54238 );
    _ID42259::_ID2058( "worldbody", "stab", ::_ID46751, "h2_hang", ( 0, 1, 5.5 ) );
    _ID42259::_ID2058( "player_rig", "stab", ::_ID54223, "climbing" );
    _ID42259::_ID2058( "player_rig", "stab_left", ::_ID43405, "climbing" );
    _ID42259::_ID2058( "player_rig", "stab_right", ::_ID43886, "climbing" );
    var_0 = [ "ledgewalking_in", "ledgewalking_1", "ledgewalking_2", "ledgewalking_3" ];

    foreach ( var_2 in var_0 )
    {
        _ID42259::_ID2058( "worldbody", "footstep_right_small", _ID47980::_ID51300, var_2, [ "right", "small" ] );
        _ID42259::_ID2058( "worldbody", "footstep_left_small", _ID47980::_ID51300, var_2, [ "left", "small" ] );
        _ID42259::_ID2058( "worldbody", "footstep_right_large", _ID47980::_ID51300, var_2, [ "right", "large" ] );
        _ID42259::_ID2058( "worldbody", "footstep_left_large", _ID47980::_ID51300, var_2, [ "left", "large" ] );
    }
}

_ID49370( var_0, var_1, var_2 )
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

_ID48923()
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
    var_1 = var_0[self._ID70];
    var_2 = getstartorigin( self._ID740, self._ID65, var_1 );
    var_3 = getstartangles( self._ID740, self._ID65, var_1 );
    thread _ID46904( var_1, var_2, var_3 );
    _ID42259::_ID3128( "weapon_ice_picker", "tag_weapon_left" );
    _ID42259::_ID3128( "weapon_ice_picker", "tag_inhand" );

    for (;;)
    {
        if ( distance( level._ID794._ID740, self._ID740 ) < 150 )
            break;

        wait 0.05;
    }

    self delete();
}

_ID46904( var_0, var_1, var_2 )
{
    self endon( "death" );

    for (;;)
    {
        self._ID740 = var_1;
        self._ID65 = var_2;
        self setflaggedanim( "anim", var_0, 1, 0, 1 );
        self waittillmatch( "anim",  "end"  );
    }
}
