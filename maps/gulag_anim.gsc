// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID53093();
    _ID45817();
    _ID49100();
    _ID49657();
    _ID54396();
    _ID46385();
    _ID51444();
    _ID47863();
    thread _ID53378();
}
#using_animtree("generic_human");

_ID53093()
{
    level._ID30895["operator"]["pulldown"] = %h2_gulag_slamraam_tarp_pull_guy2;
    level._ID30895["operator"]["idle"][0] = %h2_gulag_slamraam_tarp_idle_guy2;
    level._ID30895["puller"]["pulldown"] = %h2_gulag_slamraam_tarp_pull_guy1;
    level._ID30895["soap"]["rappel_start"] = %h2_gulag_rappel_soap;
    level._ID30895["pilot"]["idle"][0] = %f15_pilot_idle;
    level._ID30900["pilot"] = #animtree;
    level._ID30895["generic"]["sewer_slide_1"] = %h2_gulag_sewer_slide_guy1;
    level._ID30895["generic"]["sewer_slide_2"] = %h2_gulag_sewer_slide_guy2;
    level._ID30895["generic"]["sewer_slide_soap"] = %h2_gulag_sewer_slide_soap;
    var_0 = [ "sewer_slide_1", "sewer_slide_2", "sewer_slide_soap" ];

    foreach ( var_2 in var_0 )
    {
        _ID42259::_ID2058( "generic", "slide_start", ::_ID54029, var_2 );
        _ID42259::_ID2058( "generic", "slide_land", ::_ID53259, var_2 );
        _ID42259::_ID2058( "generic", "slide_land_deep", ::_ID44878, var_2 );
        _ID42259::_ID2058( "generic", "slide_end", ::_ID54626, var_2 );
    }

    level._ID30895["generic"]["breach_stackL_approach"] = %breach_stackl_approach;
    level._ID30895["generic"]["death_explosion_stand_B_v3"] = %death_explosion_stand_b_v3;
    level._ID30895["generic"]["react_stand_2_run_R45"] = %react_stand_2_run_r45;
    level._ID30895["generic"]["execution_fightback_guy1_03"] = %execution_fightback_guy1_03;
    level._ID30895["generic"]["execution_fightback_guy2_03"] = %execution_fightback_guy2_03;
    level._ID30895["generic"]["execution_fightback_guy2_03_survives"] = %execution_fightback_guy2_03_survives;
    level._ID30895["generic"]["execution_fightback_guy2_03_death"] = %execution_fightback_guy2_03_death;
    level._ID30895["generic"]["h2_gulag_breachwall_enemy1"] = %h2_gulag_breachwall_enemy1;
    level._ID30895["generic"]["h2_gulag_breachwall_enemy2"] = %h2_gulag_breachwall_enemy2;
    level._ID30895["ghost"]["laptop_approach"] = %h2_gulag_controlroom_ghost_in;
    level._ID30895["ghost"]["hacking_vo1"] = %h2_gulag_controlroom_ghost_patchedin;
    level._ID30895["ghost"]["hacking_vo2"] = %h2_gulag_controlroom_ghost_negative;
    level._ID30895["ghost"]["hacking_vo3"] = %h2_gulag_controlroom_ghost_ancienthardware;
    level._ID30895["ghost"]["hacking_vo4"] = %h2_gulag_controlroom_ghost_roger;
    level._ID30895["ghost"]["hacking_vo5"] = %h2_gulag_controlroom_ghost_gotit;
    level._ID30895["ghost"]["laptop_idle_0"] = %h2_gulag_controlroom_ghost_angry;
    level._ID30895["ghost"]["laptop_idle_1"] = %h2_gulag_controlroom_ghost_backspace;
    level._ID30895["ghost"]["laptop_idle_2"] = %h2_gulag_controlroom_ghost_calculating;
    level._ID30895["ghost"]["laptop_idle_3"] = %h2_gulag_controlroom_ghost_cantunderstand;
    level._ID30895["ghost"]["laptop_idle_4"] = %h2_gulag_controlroom_ghost_crackfingers;
    level._ID30895["ghost"]["laptop_idle_5"] = %h2_gulag_controlroom_ghost_lookaround;
    level._ID30895["ghost"]["laptop_idle_6"] = %h2_gulag_controlroom_ghost_loop_typing;
    level._ID30895["generic"]["grenade_throw"] = %corner_standr_grenade_b;
    _ID42259::_ID2058( "generic", "grenade_right", ::_ID46882, "grenade_throw" );
    _ID42259::_ID2058( "generic", "grenade_throw", ::_ID45739, "grenade_throw" );
    level._ID30895["guy"]["explosion"] = %death_explosion_run_f_v1;
    level._ID30895["ghost"]["voiceover"] = %h2_gulag_armory_ghost_voiceover;
    level._ID30895["generic"]["armory_jumpdown"] = %h2_gulag_armory_guy1_dropdown;
    level._ID30895["generic"]["armory_wait_in"] = %h2_gulag_armory_guy1_wait;
    level._ID30895["generic"]["armory_wait_idle"][0] = %h2_gulag_armory_guy1_waitidle;
    level._ID30895["generic"]["armory_wait_out"] = %h2_gulag_armory_guy1_wait2enter;
    level._ID30895["soap"]["armory_jumpdown"] = %h2_gulag_armory_soap_dropdown;
    level._ID30895["soap"]["armory_wait_in"] = %h2_gulag_armory_soap_wait;
    level._ID30895["soap"]["armory_wait_idle"][0] = %h2_gulag_armory_soap_waitidle;
    level._ID30895["soap"]["armory_wait_out"] = %h2_gulag_armory_soap_wait2enter;
    level._ID30895["soap"]["riotshield"] = %h2_gulag_armory_soap_grabriotshield;
    level._ID30895["generic"]["riotshield_pickup"] = %h2_gulag_armory_guy_grabriotshield;
    level._ID30902["soap"]["riotshield"] = 0.8;
    _ID42259::_ID2058( "soap", "grab_gun", ::_ID51598, "armory_wait_out" );
    _ID42259::_ID2062( "soap", "dialog", "armory_wait_out", "gulag_cmt_seeanything" );
    _ID42259::_ID50350( "ghost", "dialog", "voiceover", "gulag_gst_badnews" );
    _ID42259::_ID2062( "soap", "dialog", "armory_wait_out", "gulag_cmt_hearcoming" );
    _ID42259::_ID2062( "soap", "dialog", "armory_wait_out", "gulag_cmt_opendoor" );
    _ID42259::_ID50350( "ghost", "dialog", "voiceover", "gulag_gst_runabypass" );
    _ID42259::_ID2062( "soap", "dialog", "armory_wait_out", "gulag_cmt_toolate" );
    _ID42259::_ID2062( "soap", "dialog", "riotshield", "gulag_cmt_morecover" );
    _ID42259::_ID2066( "soap", "door_open", "door_open", "armory_wait_out" );
    _ID42259::_ID2066( "soap", "wave1_start", "wave1_start", "armory_wait_out" );
    _ID42259::_ID2066( "soap", "dialog", "shield_dialog", "riotshield" );
    level._ID30895["soap"]["securitydoor_soap_enter"] = %h2_gulag_securitydoor_soap_enter;
    level._ID30895["generic"]["hide_2_stand"] = %covercrouch_hide_2_stand;
    level._ID30895["generic"]["ai_running_wall_01"] = %h2_gulag_runningsoldier1_run1;
    level._ID30895["generic"]["ai_running_wall_02"] = %h2_gulag_runningsoldier2_run1;
    level._ID30895["generic"]["ai_running_wall_11"] = %h2_gulag_runningsoldier1_run2;
    level._ID30895["generic"]["ai_running_wall_12"] = %h2_gulag_runningsoldier2_run2;
    level._ID30895["generic"]["ai_running_wall_21"] = %h2_gulag_runningsoldier1_run3;
    level._ID30895["generic"]["ai_running_wall_22"] = %h2_gulag_runningsoldier2_run3;
    level._ID30895["generic"]["ai_running_wall_31"] = %h2_gulag_runningsoldier1_run4;
    level._ID30895["generic"]["ai_running_wall_32"] = %h2_gulag_runningsoldier2_run4;
    level._ID30895["soap"]["soap_intro_start"] = %h2_gulag_intro_soap;
    level._ID30895["soap"]["soap_intro_1st_tower"][0] = %h2_gulag_intro_soap_1sttower;
    level._ID30895["soap"]["soap_intro_2nd_tower"][0] = %h2_gulag_intro_soap_2ndtower;
    level._ID30895["soap"]["soap_intro_dialog1"] = %h2_gulag_intro_soap_dialogue1;
    level._ID30895["soap"]["soap_intro_dialog2"] = %h2_gulag_intro_soap_dialogue2;
    level._ID30895["soap"]["soap_intro_sniping"] = %h2_gulag_intro_soap_sniping_add;
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_start", "gulag_rpt_30sec" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_start", "gulag_hrp1_angelsone" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_start", "gulag_lbp1_gogetem" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_start", "gulag_fp1_goodtone" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_start", "gulag_fp2_goodkill" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_start", "gulag_fp1_niceday" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_start", "gulag_lbp1_copies" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_start", "gulag_lbp2_copiesall" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_start", "gulag_lbp3_solidcopy" );
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_start", "gulag_rpt_stbyengage" );
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_start", "gulag_rpt_stabilize" );
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_start", "gulag_rpt_clearedengage" );
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_dialog1", "gulag_rpt_shiftright" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog1", "gulag_lbp1_shifting" );
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_dialog1", "gulag_rpt_stabilize2" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog1", "gulag_lbp1_ready" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog1", "gulag_wrm_ontarget" );
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_dialog2", "gulag_rpt_shiftright2" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog2", "gulag_lbp1_shifting2" );
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_dialog2", "gulag_cmt_seehostiles" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog2", "gulag_lbp1_hangon" );
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_dialog2", "gulag_rpt_tooclose" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog2", "gulag_hqr_moretime" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog2", "gulag_gst_yanks1" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog2", "gulag_rpt_cutchatter" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog2", "gulag_lbp1_2ndwave" );
    _ID42259::_ID50350( "soap", "dialog", "soap_intro_dialog2", "gulag_lbp1_10ft" );
    _ID42259::_ID2062( "soap", "dialog", "soap_intro_dialog2", "gulag_rpt_gogogo" );
    level._ID30895["gunner"]["fire_a"] = %h2_gulag_zpu_gunner_fire_a;
    level._ID30895["gunner"]["fire_b"] = %h2_gulag_zpu_gunner_fire_b;
    level._ID30895["gunner"]["gunnerdeath"] = %zpu_gunner_deathslouch;
    level._ID30895["gunner"]["death_idle"][0] = %zpu_gunner_deathslouchidle;
    _ID42259::_ID2070( "breach_door_charge", "play_redlight", "breach_price", "redlight_charge_breach_gulag", "j_frame_charge" );
    _ID42259::_ID2070( "breach_door_charge", "play_redlight", "breach_price2", "redlight_charge_breach_gulag", "j_frame_charge" );
    _ID42259::_ID2071( "breach_door_charge", "stop_redlight", "breach_price", "redlight_charge_breach_gulag", "j_frame_charge" );
    _ID42259::_ID2071( "breach_door_charge", "stop_redlight", "breach_price2", "redlight_charge_breach_gulag", "j_frame_charge" );
    _ID42259::_ID2070( "breach_door_charge", "play_greenlight", "breach_price", "greenlight_charge_breach_gulag", "j_frame_charge" );
    _ID42259::_ID2070( "breach_door_charge", "play_greenlight", "breach_price2", "greenlight_charge_breach_gulag", "j_frame_charge" );
}

_ID53378()
{
    waitframe;
    _ID42259::_ID2075( "me_transmitting_tower", "radiotower_fall", "scn_gulag_tower_antenna" );
    _ID42259::_ID2075( "generic", "armory_jumpdown", "scn_guy_armory_jumpdown" );
    _ID42259::_ID2075( "soap", "armory_jumpdown", "scn_soap_armory_jumpdown" );
    _ID42259::_ID2075( "generic", "rappel_start", "scn_gulag_rappel_npc_01" );
    _ID42259::_ID2075( "generic", "sewer_slide_1", "scn_gulag_npc_sewer_slide_01" );
    _ID42259::_ID2075( "generic", "sewer_slide_2", "scn_gulag_npc_sewer_slide_02" );
    _ID42259::_ID2075( "generic", "sewer_slide_soap", "scn_gulag_npc_sewer_slide_soap" );
    _ID42259::_ID2075( "h2_active_breacher_rig", "breach_inspect", "scn_gulag_breach_bathroom_player" );
    _ID42259::_ID2075( "h2_active_breacher_rig", "breach_price", "scn_gulag_breach_rescue_player" );
    _ID42259::_ID2058( "player_rappel", "scn_gulag_intro_player_dismount", ::_ID43482, "player_dismount_start" );
}

_ID46882( var_0 )
{
    var_0._ID54030 = spawn( "script_model", var_0 gettagorigin( "tag_inhand" ) );
    var_1 = getweaponmodel( var_0.grenadeweapon );
    var_0._ID54030 setmodel( var_1 );
    var_0._ID54030 linkto( var_0, "tag_inhand", ( 0, 0, 3 ), ( 0, 0, 0 ) );
}

_ID45739( var_0 )
{
    var_1 = var_0._ID54030.origin;
    var_0._ID54030 delete();
    var_0._ID54030 = undefined;
    var_2 = _ID42237::_ID16638( "flash_org", "targetname" );
    var_3 = _ID42237::_ID16638( var_2.target, "targetname" );
    var_4 = var_3.origin;
    var_5 = var_0 magicgrenade( var_1, var_4, 0.9 );
    var_0._ID7._ID24783 = gettime() + 5000;
    wait 1.0;
    level notify( "flashed_room" );
}

_ID49186( var_0 )
{
    if ( _ID42237::_ID14385( "dont_flash_me_pls" ) )
        var_0 delete();
    else
    {
        _ID42237::_ID40867( "dont_flash_me_pls", 1 );

        if ( _ID42237::_ID14385( "dont_flash_me_pls" ) )
            var_0 delete();
    }
}

_ID54029( var_0, var_1 )
{
    var_2 = "water_slide";
    var_3 = 0.0;

    if ( isdefined( var_1 ) )
    {
        var_2 = var_1[0];

        if ( isdefined( var_1[1] ) )
        {
            var_3 = var_1[1];
            thread player_slide_end_fx( var_0 );
        }
    }

    var_4 = _ID42237::_ID16299( var_2 );
    var_0 endon( "stop_slide_fx" );
    var_0 endon( "death" );

    if ( var_3 > 0.0 )
        wait(var_3);

    for (;;)
    {
        playfxontag( var_4, var_0, "tag_origin" );
        wait 0.03;
    }
}

player_slide_end_fx( var_0 )
{
    _ID42237::_ID14413( "player_fx_slide_end" );
    var_0 notify( "stop_slide_fx" );
}

_ID54626( var_0 )
{
    var_0 notify( "stop_slide_fx" );
}

_ID53259( var_0, var_1 )
{
    if ( !isdefined( var_0._ID48927 ) )
    {
        var_2 = var_0 _ID43257();
        var_0._ID48927 = 1;
        var_0 playsound( "scn_gulag_sewer_slide_friend" + var_2 );
    }

    if ( isdefined( var_1 ) )
        var_3 = _ID42237::_ID16299( var_1 );
    else
        var_3 = _ID42237::_ID16299( "water_slide_start" );

    playfxontag( var_3, var_0, "tag_origin" );
}

_ID44878( var_0, var_1 )
{
    if ( !isdefined( var_0._ID44338 ) )
    {
        var_2 = var_0 _ID43257();
        var_0._ID44338 = 1;
        var_0 playsound( "scn_gulag_sewer_splash_friend" + var_2 );
    }

    if ( isdefined( var_1 ) )
        var_3 = _ID42237::_ID16299( var_1 );
    else
        var_3 = _ID42237::_ID16299( "water_slide_splash" );

    playfxontag( var_3, var_0, "tag_origin" );
}

_ID43257()
{
    var_0 = getaiarray( "allies" );
    var_1 = 0;

    foreach ( var_4, var_3 in var_0 )
    {
        if ( var_3 == self )
        {
            var_1 = var_4;
            break;
        }
    }

    var_1 %= 3;
    var_1++;
    return var_1;
}
#using_animtree("script_model");

_ID49100()
{
    level._ID30900["tarp"] = #animtree;
    level._ID30895["tarp"]["pulldown"] = %h2_gulag_slamraam_tarp_simulation;
    level._ID30902["tarp"]["pulldown"] = 0.5;
    level._ID30895["tarp"]["idle"][0] = %h2_gulag_slamraam_tarp_idle_sim;
    level._ID30904["tarp"] = "slamraam_tarp";
    level._ID30900["ai_rope"] = #animtree;
    level._ID30904["ai_rope"] = "h2_gulag_rappel_rope_player_60ft_standard";
    level._ID30895["ai_rope"]["rappel_start"] = %h2_gulag_rappelrope_soap_60ft;
    _ID42259::_ID2058( "ai_rope", "scn_gulag_rappel_soap_rope", maps\gulag_aud::_ID51932 );
    level._ID30900["rappel_obj"] = #animtree;
    level._ID30904["rappel_obj"] = "h2_gulag_rappel_kicked_part_01";
    level._ID30895["rappel_obj"]["rappel_start"] = %h2_gulag_rappel_kicked_part;
    _ID42259::_ID2058( "rappel_obj", "scn_gulag_rappel_metal_plate", maps\gulag_aud::_ID52694 );
    level._ID30900["player_rope"] = #animtree;
    level._ID30904["player_rope"] = "h2_gulag_rappel_rope_player_60ft_standard";
    level._ID30895["player_rope"]["rappel_start"] = %h2_gulag_rappelrope_player_60ft;
    level._ID30900["player_rope_obj"] = #animtree;
    level._ID30904["player_rope_obj"] = "h2_gulag_rappel_rope_player_60ft";
    level._ID30895["player_rope_obj"]["rappel_start"] = %h2_gulag_rappelrope_player_60ft;
    level._ID30900["folding_chair"] = #animtree;
    level._ID30904["folding_chair"] = "com_folding_chair";
    level._ID30895["folding_chair"]["laptop_approach"] = %h2_gulag_controlroom_chair_in;
    level._ID30900["strangle_chain"] = #animtree;
    level._ID30904["strangle_chain"] = "price_strangle_chain";
    level._ID30895["strangle_chain"]["price_breach"] = %h2_gulag_rescuea_chain;
    level._ID30895["strangle_chain"]["price_rescue"] = %h2_gulag_rescueb_chain;
    level._ID30900["hanging_light"] = #animtree;
    level._ID30904["hanging_light"] = "h2_gulag_hanging_light";
    level._ID30895["hanging_light"]["hanging_light_loop"][0] = %h2_gulag_hanging_light_idle;
    level._ID30895["hanging_light"]["hanging_light_loop_cafeteria"][0] = %h2_gulag_hanging_light_shorter_idle;
    level._ID30895["hanging_light"]["hanging_light_explosion_a"] = %h2_gulag_hanging_light_explosion_a;
    level._ID30895["hanging_light"]["hanging_light_explosion_b"] = %h2_gulag_hanging_light_explosion_b;
    level._ID30895["hanging_light"]["hanging_light_explosion_c"] = %h2_gulag_hanging_light_explosion_c;
    level._ID30895["hanging_light"]["hanging_light_impact_1"] = %h2_gulag_hanging_light_hit_02;
    level._ID30895["hanging_light"]["hanging_light_impact_2"] = %h2_gulag_hanging_light_hit_04;
    level._ID30895["hanging_light"]["hanging_light_impact_3"] = %h2_gulag_hanging_light_hit_06;
    level._ID30895["hanging_light"]["hanging_light_impact_4"] = %h2_gulag_hanging_light_hit_08;
    level._ID30902["hanging_light"]["hanging_light_impact_1"] = 0.05;
    level._ID30902["hanging_light"]["hanging_light_impact_2"] = 0.05;
    level._ID30902["hanging_light"]["hanging_light_impact_3"] = 0.05;
    level._ID30902["hanging_light"]["hanging_light_impact_4"] = 0.05;
    level._ID30900["rat_animations"] = #animtree;
    level._ID30904["rat_animations"] = "rat";
    level._ID30895["rat_animations"]["frantic_idle"][0] = %h1_mp_rat_frantic_idle;
    level._ID30895["rat_animations"]["run"][0] = %h1_mp_rat_run_01;
    level._ID30895["rat_animations"]["death_02"] = %h1_mp_rat_death_02;
    level._ID30895["rat_animations"]["death_03"] = %h1_mp_rat_death_03;
    level._ID30900["me_transmitting_tower"] = #animtree;
    level._ID30895["me_transmitting_tower"]["radiotower_fall"] = %h2_gulag_introride_radiotower_fall;
    _ID42259::_ID2058( "me_transmitting_tower", "fx_light_flicker", ::_ID45076 );
    _ID42259::_ID2058( "me_transmitting_tower", "fx_sparks", ::_ID46672 );
    _ID42259::_ID2058( "me_transmitting_tower", "fx_fall_impact", ::_ID44570 );
    level._ID30900["h2_chains_01_animated"] = #animtree;
    level._ID30904["h2_chains_01_animated"] = "h2_chains_01_animated";
    level._ID30895["h2_chains_01_animated"]["idle"][0] = %h2_gulag_chains_01;
    level._ID30895["h2_chains_01_animated"]["breach"] = %h2_gulag_chains_01_hit;
    level._ID30900["h2_chains_02_animated"] = #animtree;
    level._ID30904["h2_chains_02_animated"] = "h2_chains_02_animated";
    level._ID30895["h2_chains_02_animated"]["idle"][0] = %h2_gulag_chains_02;
    level._ID30895["h2_chains_02_animated"]["breach"] = %h2_gulag_chains_02_hit;
    level._ID30900["h2_chains_03_animated"] = #animtree;
    level._ID30904["h2_chains_03_animated"] = "h2_chains_03_animated";
    level._ID30895["h2_chains_03_animated"]["idle"][0] = %h2_gulag_chains_03;
    level._ID30895["h2_chains_03_animated"]["breach"] = %h2_gulag_chains_03_hit;
    level._ID30900["h2_chains_04_animated"] = #animtree;
    level._ID30904["h2_chains_04_animated"] = "h2_chains_04_animated";
    level._ID30895["h2_chains_04_animated"]["idle"][0] = %h2_gulag_chains_04;
    level._ID30895["h2_chains_04_animated"]["breach"] = %h2_gulag_chains_04_hit;
    level._ID30900["h2_chains_05_animated"] = #animtree;
    level._ID30904["h2_chains_05_animated"] = "h2_chains_05_animated";
    level._ID30895["h2_chains_05_animated"]["idle"][0] = %h2_gulag_chains_05;
    level._ID30895["h2_chains_05_animated"]["idle_strong"][0] = %h2_gulag_chains_05_escape;
    level._ID30895["h2_chains_05_animated"]["breach"] = %h2_gulag_chains_05_hit;
    level._ID30900["h2_chains_06_animated"] = #animtree;
    level._ID30904["h2_chains_06_animated"] = "h2_chains_06_animated";
    level._ID30895["h2_chains_06_animated"]["idle"][0] = %h2_gulag_chains_06;
    level._ID30895["h2_chains_06_animated"]["idle_strong"][0] = %h2_gulag_chains_06_escape;
    level._ID30895["h2_chains_06_animated"]["breach"] = %h2_gulag_chains_06_hit;
    level._ID30900["h2_chains_07_animated"] = #animtree;
    level._ID30904["h2_chains_07_animated"] = "h2_chains_07_animated";
    level._ID30895["h2_chains_07_animated"]["idle"][0] = %h2_gulag_chains_07;
    level._ID30895["h2_chains_07_animated"]["idle_strong"][0] = %h2_gulag_chains_07_escape;
    level._ID30895["h2_chains_07_animated"]["breach"] = %h2_gulag_chains_07_hit;
    level._ID30900["h2_chains_08_animated"] = #animtree;
    level._ID30904["h2_chains_08_animated"] = "h2_chains_08_animated";
    level._ID30895["h2_chains_08_animated"]["idle"][0] = %h2_gulag_chains_08;
    level._ID30895["h2_chains_08_animated"]["idle_strong"][0] = %h2_gulag_chains_08_escape;
    level._ID30895["h2_chains_08_animated"]["breach"] = %h2_gulag_chains_08_hit;
    level._ID30900["h2_chains_09_animated"] = #animtree;
    level._ID30904["h2_chains_09_animated"] = "h2_chains_09_animated";
    level._ID30895["h2_chains_09_animated"]["idle"][0] = %h2_gulag_chains_09;
    level._ID30895["h2_chains_09_animated"]["idle_strong"][0] = %h2_gulag_chains_09_escape;
    level._ID30895["h2_chains_09_animated"]["breach"] = %h2_gulag_chains_09_hit;
    level._ID30900["h2_chains_alone_03_animated"] = #animtree;
    level._ID30904["h2_chains_alone_03_animated"] = "h2_chains_alone_03_animated";
    level._ID30895["h2_chains_alone_03_animated"]["idle"][0] = %h2_chains_03_alone_animated;
    level._ID30900["h2_chains_02_without_attach_animated"] = #animtree;
    level._ID30904["h2_chains_02_without_attach_animated"] = "h2_chains_02_without_attach_animated";
    level._ID30895["h2_chains_02_without_attach_animated"]["idle"][0] = %h2_gulag_hanging_chains_03;
    level._ID30900["h2_cs_chain_accessories_hanging_straight_short_01"] = #animtree;
    level._ID30904["h2_cs_chain_accessories_hanging_straight_short_01"] = "h2_cs_chain_accessories_hanging_straight_short_01";
    level._ID30895["h2_cs_chain_accessories_hanging_straight_short_01"]["idle"][0] = %h2_gulag_hanging_chains_02;
    level._ID30900["h2_cs_chain_accessories_hanging_loop_long"] = #animtree;
    level._ID30904["h2_cs_chain_accessories_hanging_loop_long"] = "h2_cs_chain_accessories_hanging_loop_long";
    level._ID30895["h2_cs_chain_accessories_hanging_loop_long"]["idle"][0] = %h2_gulag_hanging_chains_01;
    level._ID30900["landslide_iceberg"] = #animtree;
    level._ID30895["landslide_iceberg"]["move"] = %h2_landslide_icebergs_animated;
    level._ID30900["shield"] = #animtree;
    level._ID30895["shield"]["shield"] = %h2_gulag_armory_riotshield_full;
    level._ID30895["shield"]["guy_shield"] = %h2_gulag_armory_guy_riotshield_full;
    level._ID30900["sandbag"] = #animtree;
    level._ID30895["sandbag"]["destruction"] = %h2_gulag_littlebird_break_sandbag;
}
#using_animtree("player");

_ID54396()
{
    level._ID30900["player_rappel"] = #animtree;
    level._ID30904["player_rappel"] = "viewbody_udt";
    level._ID30895["player_rappel"]["rappel_start"] = %h2_gulag_rappel_player;
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_udt";
    level._ID30895["worldbody"]["slide_in"] = %h2_gulag_sewer_slide_player_in;
    level._ID30895["worldbody"]["slide_loop"][0] = %h2_gulag_sewer_slide_player_idle;
    level._ID30895["worldbody"]["slide_out"] = %h2_gulag_sewer_slide_player_out;
    level._ID30895["worldbody"]["slide_ar"] = %h2_gulag_sewer_slide_player_turnr;
    level._ID30895["worldbody"]["slide_al"] = %h2_gulag_sewer_slide_player_turnl;
    _ID42259::_ID2058( "worldbody", "slide_fx_start", ::_ID54029, "slide_in", [ "water_slide_player", 0.25 ] );
    _ID42259::_ID2058( "worldbody", "slide_fx_land", ::_ID53259, "slide_out", "water_slide_splash_player" );
    level._ID30895["player_rappel"]["player_intro_start"] = %h2_gulag_intro_player;
    level._ID30895["player_rappel"]["player_dismount_start"] = %h2_gulag_intro_player_dismount;
    level._ID30895["player_rappel"]["player_shoot_start"] = %h2_gulag_intro_player_shoot;
    level._ID30895["worldbody"]["explosion_front"] = %h2_gulag_cellexplosion_player_front;
    level._ID30895["worldbody"]["explosion_back"] = %h2_gulag_cellexplosion_player_back;
    level._ID30895["worldbody"]["explosion_right"] = %h2_gulag_cellexplosion_player_right;
    level._ID30895["worldbody"]["explosion_left"] = %h2_gulag_cellexplosion_player_left;
}
#using_animtree("vehicles");

_ID49657()
{
    level._ID49682 = [];
    level._ID49682["x_right"] = %rotate_body_x_r;
    level._ID30900["f15"] = #animtree;
    level._ID30904["f15"] = "vehicle_f15";
    level._ID30900["f15"] = #animtree;
    level._ID30904["f15"] = "vehicle_f15";
    level._ID30895["f15"]["intro_1"] = %h2_gulag_f15_intro_1;
    level._ID30895["f15"]["landing_gear"] = %mig_landing_gear_up;
    level._ID30895["f15"]["intro_2"] = %h2_gulag_f15_intro_2;
    _ID42259::_ID2058( "f15", "explode", ::_ID44396 );
    level._ID30900["intro_1_missile"] = #animtree;
    level._ID30904["intro_1_missile"] = "vehicle_f15_missile";
    level._ID30895["intro_1_missile"]["missile_fire_a"] = %gulag_missile_f15_1_a;
    level._ID30900["intro_1_missile"] = #animtree;
    level._ID30904["intro_1_missile"] = "vehicle_f15_missile";
    level._ID30895["intro_1_missile"]["missile_fire_b"] = %gulag_missile_f15_1_b;
    level._ID30900["intro_2_missile"] = #animtree;
    level._ID30904["intro_2_missile"] = "vehicle_f15_missile";
    level._ID30895["intro_2_missile"]["missile_fire_a"] = %gulag_missile_f15_2_a;
    level._ID30900["intro_2_missile"] = #animtree;
    level._ID30904["intro_2_missile"] = "vehicle_f15_missile";
    level._ID30895["intro_2_missile"]["missile_fire_b"] = %gulag_missile_f15_2_b;
    _ID42259::_ID2058( "f15", "missile", ::_ID46303 );
    _ID42259::_ID2058( "f15", "missile_fx", ::_ID52292 );
    _ID42259::_ID2058( "f15", "afterburner", ::_ID54125 );
    level._ID30900["littlebird"] = #animtree;
    level._ID30895["littlebird"]["spawn"][0] = %h2_gulag_intro_littlebird_shooter;
    level._ID30895["littlebird"]["spawn"][1] = %h2_gulag_intro_littlebird_soldier01;
    level._ID30895["littlebird"]["spawn"][2] = %h2_gulag_intro_littlebird_soldier02;
    level._ID30895["littlebird"]["respawn"][0] = %h2_gulag_landing_helicopter_front;
    level._ID30895["littlebird"]["respawn"][1] = %h2_gulag_landing_helicopter_solo;
    level._ID30895["littlebird"]["respawn"][2] = %h2_gulag_landing_helicopter_back;
    level._ID30895["littlebird"]["bhd_spawner_additive"] = %h2_gulag_landing_helicopter_gattlingattack;
    level._ID30895["littlebird"]["player_additive"] = %h2_gulag_intro_littlebird_player;
    level._ID30900["turret"] = #animtree;
    level._ID30904["turret"] = "h1_vehicle_zpu4_nowheels";
    level._ID30895["turret"]["fire_a"] = %h2_gulag_zpu_gun_fire_a;
    level._ID30895["turret"]["fire_b"] = %h2_gulag_zpu_gun_fire_b;
    level._ID30895["turret"]["idle"] = %zpu_gun_stop;
    _ID42259::_ID2058( "turret", "fire_1", maps\gulag_code::_ID47701 );
    _ID42259::_ID2058( "turret", "fire_2", maps\gulag_code::_ID46980 );
}

_ID46303( var_0 )
{
    if ( var_0._ID49871 == "intro_1" )
        var_0._ID23749[0] playsound( "scn_gulag_f15_missile_fire1" );
    else
        var_0._ID23749[0] playsound( "scn_gulag_f15_missile_fire2" );

    var_1 = _ID42237::_ID16299( "missile_brackets" );

    foreach ( var_3 in var_0._ID23749 )
    {
        var_3 show();
        playfxontag( var_1, var_3, "TAG_FX" );
    }
}

_ID52292( var_0 )
{
    wait 0.3;
    var_1 = _ID42237::_ID16299( "javelin_trail" );
    var_2 = _ID42237::_ID16299( "javelin_ignition" );

    if ( level._ID48643 == var_0 )
    {
        level._ID48643 = var_0._ID23749[0];
        level notify( "switch_look" );
    }

    foreach ( var_4 in var_0._ID23749 )
    {
        var_4 show();
        playfxontag( var_1, var_4, "TAG_FX" );
        playfxontag( var_2, var_4, "TAG_FX" );
    }
}

_ID54125( var_0 )
{
    var_1 = _ID42237::_ID16299( "jet_afterburner_ignite" );
    playfxontag( var_1, var_0, "tag_engine_left" );
    playfxontag( var_1, var_0, "tag_engine_right" );
    var_0 _ID42407::_ID13025( "contrails" );
}

_ID51441( var_0 )
{
    var_0 endon( "death" );
    var_1 = _ID42237::_ID16299( "missile_trail" );

    for (;;)
    {
        playfxontag( var_1, var_0, "tag_weapon" );
        wait 0.05;
    }
}

_ID44396( var_0 )
{
    var_1 = _ID42237::_ID16299( "missile_explosion" );
    playfxontag( var_1, var_0, "le_side_wing_jnt" );
    var_0 thread _ID49653::_ID53311();
}
#using_animtree("generic_human");

_ID45817()
{
    level._ID30909["soap"]["gulag_rpt_30sec"] = "gulag_rpt_30sec";
    level._ID30901["soap"]["gulag_rpt_30sec"] = %gulag_rpt_30sec;
    level._ID30908["gulag_hrp1_angelsone"] = "gulag_hrp1_angelsone";
    level._ID30908["gulag_lbp1_gogetem"] = "gulag_lbp1_gogetem";
    level._ID30908["gulag_fp1_goodtone"] = "gulag_fp1_goodtone";
    level._ID30908["gulag_fp2_goodkill"] = "gulag_fp2_goodkill";
    level._ID30908["gulag_fp1_niceday"] = "gulag_fp1_niceday";
    level._ID30908["gulag_lbp1_copies"] = "gulag_lbp1_copies";
    level._ID30908["gulag_lbp2_copiesall"] = "gulag_lbp2_copiesall";
    level._ID30908["gulag_lbp3_solidcopy"] = "gulag_lbp3_solidcopy";
    level._ID30908["gulag_lbp2_goinghot"] = "gulag_lbp2_goinghot";
    level._ID30908["gulag_lbp1_roger"] = "gulag_lbp1_roger";
    level._ID30908["gulag_lbp2_guns"] = "gulag_lbp2_guns";
    level._ID30908["gulag_lbp2_guns2"] = "gulag_lbp2_guns2";
    level._ID30908["gulag_lbp1_goodeffect"] = "gulag_lbp1_goodeffect";
    level._ID30908["gulag_lbp2_peeling"] = "gulag_lbp2_peeling";
    level._ID30908["gulag_lbp1_startattack"] = "gulag_lbp1_startattack";
    level._ID30908["gulag_lbp3_rollingin"] = "gulag_lbp3_rollingin";
    level._ID30909["soap"]["gulag_rpt_stbyengage"] = "gulag_rpt_stbyengage";
    level._ID30909["soap"]["gulag_rpt_stabilize"] = "gulag_rpt_stabilize";
    level._ID30908["gulag_lbp1_roger2"] = "gulag_lbp1_roger2";
    level._ID30908["gulag_tco_ontarget"] = "gulag_tco_ontarget";
    level._ID30909["soap"]["gulag_rpt_clearedengage"] = "gulag_rpt_clearedengage";
    level._ID30909["soap"]["gulag_rpt_shiftright"] = "gulag_rpt_shiftright";
    level._ID30908["gulag_lbp1_shifting"] = "gulag_lbp1_shifting";
    level._ID30908["gulag_rpt_stabilize2"] = "gulag_rpt_stabilize2";
    level._ID30908["gulag_lbp1_ready"] = "gulag_lbp1_ready";
    level._ID30908["gulag_wrm_ontarget"] = "gulag_wrm_ontarget";
    level._ID30909["soap"]["gulag_rpt_shiftright2"] = "gulag_rpt_shiftright2";
    level._ID30908["gulag_lbp1_shifting2"] = "gulag_lbp1_shifting2";
    level._ID30908["gulag_rpt_stabilize3"] = "gulag_rpt_stabilize3";
    level._ID30908["gulag_lbp1_ready2"] = "gulag_lbp1_ready2";
    level._ID30908["gulag_wrm_ontarget2"] = "gulag_wrm_ontarget2";
    level._ID30908["gulag_tco_ontarget2"] = "gulag_tco_ontarget2";
    level._ID30908["gulag_rpt_takeemout"] = "gulag_rpt_takeemout";
    level._ID30908["gulag_lbp1_hangon"] = "gulag_lbp1_hangon";
    level._ID30908["gulag_rpt_tooclose"] = "gulag_rpt_tooclose";
    level._ID30908["gulag_hqr_moretime"] = "gulag_hqr_moretime";
    level._ID30908["gulag_tco_goodorbad"] = "gulag_tco_goodorbad";
    level._ID30908["gulag_tco_goodorbad"] = "gulag_gst_yanks2";
    level._ID30908["gulag_tco_goodorbad"] = "gulag_gst_yanks1";
    level._ID30908["gulag_rpt_cutchatter"] = "gulag_rpt_cutchatter";
    level._ID30895["gulag_rpt_cutchatter"] = %gulag_rpt_cutchatter;
    level._ID30908["gulag_lbp2_firstwave"] = "gulag_lbp2_firstwave";
    level._ID30908["gulag_lbp2_ondeck"] = "gulag_lbp2_ondeck";
    level._ID30908["gulag_lbp2_holdingpatt"] = "gulag_lbp2_holdingpatt";
    level._ID30908["gulag_lbp1_2ndwave"] = "gulag_lbp1_2ndwave";
    level._ID30908["gulag_lbp1_50ft"] = "gulag_lbp1_50ft";
    level._ID30908["gulag_lbp1_10ft"] = "gulag_lbp1_10ft";
    level._ID30908["gulag_lbp1_touchdown"] = "gulag_lbp1_touchdown";
    level._ID30908["gulag_lbp1_deployed"] = "gulag_lbp1_deployed";
    level._ID30908["gulag_lbp3_snipercover"] = "gulag_lbp3_snipercover";
    level._ID30908["gulag_lbp1_solidcopy"] = "gulag_lbp1_solidcopy";
    level._ID30909["generic"]["gulag_rpt_gogogo"] = "gulag_rpt_gogogo";
    level._ID30909["soap"]["gulag_cmt_tapinto"] = "gulag_cmt_tapinto";
    level._ID30909["soap"]["gulag_cmt_secdoor"] = "gulag_cmt_secdoor";
    level._ID30908["gulag_cmt_ancient"] = "gulag_cmt_ancient";
    level._ID30909["soap"]["gulag_cmt_wrongdoor"] = "gulag_cmt_wrongdoor";
    level._ID30908["gulag_gst_standby"] = "gulag_gst_standby";
    level._ID30908["gulag_gst_gotit2"] = "gulag_gst_gotit2";
    level._ID30909["soap"]["gulag_cmt_thatsbetter"] = "gulag_cmt_thatsbetter";
    level._ID30908["gulag_gst_threetwo"] = "gulag_gst_threetwo";
    level._ID30909["soap"]["gulag_cmt_seeanything"] = "gulag_cmt_seeanything";
    level._ID30909["soap"]["gulag_cmt_gotcompany"] = "gulag_cmt_gotcompany";
    level._ID30909["soap"]["gulag_cmt_riotshield"] = "gulag_cmt_riotshield";
    level._ID30901["soap"]["gulag_cmt_riotshield"] = %gulag_cmt_riotshield;
    level._ID30909["soap"]["gulag_cmt_openarmory"] = "gulag_cmt_openarmory";
    level._ID30908["gulag_gst_almostthere"] = "gulag_gst_almostthere";
    level._ID30909["soap"]["gulag_cmt_openthedoor"] = "gulag_cmt_openthedoor";
    level._ID30908["gulag_gst_gotit"] = "gulag_gst_gotit";
    level._ID30909["soap"]["gulag_cmt_switchnv"] = "gulag_cmt_switchnv";
    level._ID30908["gulag_gst_badnews"] = "gulag_gst_badnews";
    level._ID30909["soap"]["gulag_cmt_hearcoming"] = "gulag_cmt_hearcoming";
    level._ID30909["soap"]["gulag_cmt_opendoor"] = "gulag_cmt_opendoor";
    level._ID30908["gulag_gst_runabypass"] = "gulag_gst_runabypass";
    level._ID30909["soap"]["gulag_cmt_toolate"] = "gulag_cmt_toolate";
    level._ID30908["gulag_gst_gotmoretangos"] = "gulag_gst_gotmoretangos";
    level._ID30909["soap"]["gulag_cmt_morecover"] = "gulag_cmt_morecover";
    level._ID30909["soap"]["gulag_cmt_pickupone"] = "gulag_cmt_pickupone";
    level._ID30909["soap"]["gulag_cmt_openthedoor"] = "gulag_cmt_openthedoor";
    level._ID30908["gulag_gst_gotit"] = "gulag_gst_gotit";
    level._ID30909["soap"]["gulag_cmt_gotcompany"] = "gulag_cmt_gotcompany";
    level._ID30909["soap"]["gulag_cmt_riotshield"] = "gulag_cmt_riotshield";
    level._ID30909["soap"]["gulag_cmt_roachisdown"] = "gulag_cmt_roachisdown";
    level._ID30909["soap"]["gulag_cmt_roach"] = "gulag_cmt_roach";
    level._ID30908["gulag_tf1_cellclear"] = "gulag_tf1_cellclear";
    level._ID30908["gulag_tf1_cell4dclear"] = "gulag_tf1_cell4dclear";
    level._ID30908["gulag_tf1_cellsclear"] = "gulag_tf1_cellsclear";
    level._ID30908["gulag_tf1_lastfloor"] = "gulag_tf1_lastfloor";
    level._ID30908["gulag_tf1_captainlastfloor"] = "gulag_tf1_captainlastfloor";
    level._ID30908["gulag_tf2_clear"] = "gulag_tf2_clear";
    level._ID30908["gulag_tf2_onesempty"] = "gulag_tf2_onesempty";
    level._ID30908["gulag_tf3_emptytoo"] = "gulag_tf3_emptytoo";
    level._ID30908["gulag_tf3_clear"] = "gulag_tf3_clear";
    level._ID30909["soap"]["gulag_cmt_calloff"] = "gulag_cmt_calloff";
    level._ID30908["gulag_hqr_working"] = "gulag_hqr_working";
    level._ID30908["gulag_hqr_loosecannon"] = "gulag_hqr_loosecannon";
    level._ID30909["soap"]["gulag_cmt_gogogo1"] = "gulag_cmt_gogogo1";
    level._ID30908["gulag_gst_oncameras"] = "gulag_gst_oncameras";
    level._ID30908["gulag_gst_30ftonleft"] = "gulag_gst_30ftonleft";
    level._ID30909["soap"]["gulag_cmt_plantbreach"] = "gulag_cmt_plantbreach";
    level._ID30909["soap"]["gulag_cmt_hurryup"] = "gulag_cmt_hurryup";
    level._ID30909["soap"]["gulag_cmt_wegotcompany"] = "gulag_cmt_wegotcompany";
    level._ID30909["soap"]["gulag_cmt_whichway"] = "gulag_cmt_whichway";
    level._ID30908["gulag_gst_50meters"] = "gulag_gst_50meters";
    level._ID30909["soap"]["gulag_cmt_startfiring"] = "gulag_cmt_startfiring";
    level._ID30908["gulag_gst_cistern"] = "gulag_gst_cistern";
    level._ID30908["gulag_gst_8tangos"] = "gulag_gst_8tangos";
    level._ID30909["soap"]["gulag_cmt_needmoretime"] = "gulag_cmt_needmoretime";
    level._ID30908["gulag_hqr_nocando"] = "gulag_hqr_nocando";
    level._ID30908["gulag_hqr_getout"] = "gulag_hqr_getout";
    level._ID30909["soap"]["gulag_cmt_spierig"] = "gulag_cmt_spierig";
    level._ID30908["gulag_plp_rogeronspie"] = "gulag_plp_rogeronspie";
    level._ID30909["soap"]["gulag_cmt_sendit"] = "gulag_cmt_sendit";
    level._ID30908["gulag_plp_ontheway"] = "gulag_plp_ontheway";
    level._ID30909["soap"]["gulag_cmt_hookup"] = "gulag_cmt_hookup";
    level._ID30909["soap"]["gulag_cmt_gogogo2"] = "gulag_cmt_gogogo2";
    level._ID30909["soap"]["gulag_plp_onwayhome"] = "gulag_plp_onwayhome";
    level._ID30909["soap"]["gulag_cmt_ready2jump"] = "gulag_cmt_ready2jump";
    level._ID30909["soap"]["gulag_cmt_anotherway"] = "gulag_cmt_anotherway";
    level._ID30909["soap"]["gulag_cmt_depth100"] = "gulag_cmt_depth100";
    level._ID30908["gulag_plp_15secs"] = "gulag_plp_15secs";
    level._ID30909["soap"]["gulag_cmt_deadinfive"] = "gulag_cmt_deadinfive";
    level._ID30909["soap"]["gulag_cmt_whereareyou"] = "gulag_cmt_whereareyou";
    level._ID30908["gulag_plp_cantsee"] = "gulag_plp_cantsee";
    level._ID30909["price"]["gulag_pri_doitfast"] = "gulag_pri_doitfast";
    level._ID30908["gulag_plp_seeflare"] = "gulag_plp_seeflare";
    level._ID30909["price"]["gulag_pri_letsgo"] = "gulag_pri_letsgo";
    level._ID30909["soap"]["gulag_cmt_hookup2"] = "gulag_cmt_hookup2";
    level._ID30909["soap"]["gulag_cmt_gogo"] = "gulag_cmt_gogo";
    level._ID30909["price"]["gulag_pri_hangon"] = "gulag_pri_hangon";
    level._ID30908["gulag_lbp1_gunrun"] = "gulag_lbp1_gunrun";
    level._ID30909["soap"]["gulag_cmt_lasingtarget"] = "gulag_cmt_lasingtarget";
    level._ID30908["gulag_lbp1_gotatally"] = "gulag_lbp1_gotatally";
    level._ID30909["soap"]["gulag_cmt_usem203"] = "gulag_cmt_usem203";
    level._ID30909["soap"]["gulag_cmt_upahead"] = "gulag_cmt_upahead";
    level._ID30909["soap"]["gulag_cmt_getout"] = "gulag_cmt_getout";
    level._ID30909["soap"]["gulag_cmt_checkcorners"] = "gulag_cmt_checkcorners";
    level._ID30908["gulag_gst_controlroom"] = "gulag_gst_controlroom";
    level._ID30909["ghost"]["gulag_gst_controlroom_ghost"] = "gulag_gst_controlroom";
    level._ID30908["gulag_cmt_tapinto"] = "gulag_cmt_tapinto";
    level._ID30909["ghost"]["gulag_cmt_tapinto_ghost"] = "gulag_cmt_tapinto";
    level._ID30909["soap"]["gulag_cmt_cellduty"] = "gulag_cmt_cellduty";
    level._ID30908["gulag_gst_patchedin"] = "gulag_gst_patchedin";
    level._ID30909["soap"]["gulag_cmt_location"] = "gulag_cmt_location";
    level._ID30908["gulag_gst_jobeasier"] = "gulag_gst_jobeasier";
    level._ID30909["soap"]["gulag_cmt_staysharp"] = "gulag_cmt_staysharp";
    level._ID30909["soap"]["gulag_cmt_wrongdoor"] = "gulag_cmt_wrongdoor";
    level._ID30909["soap"]["gulag_cmt_talktome"] = "gulag_cmt_talktome";
    level._ID30908["gulag_gst_eastwing"] = "gulag_gst_eastwing";
    level._ID30909["soap"]["gulag_cmt_armorydownthere"] = "gulag_cmt_armorydownthere";
    level._ID30908["gulag_gst_almostthere"] = "gulag_gst_almostthere";
    level._ID30908["gulag_gst_gotit"] = "gulag_gst_gotit";
    level._ID30909["soap"]["gulag_cmt_letsgo"] = "gulag_cmt_letsgo";
    level._ID30909["soap"]["gulag_cmt_ready2jump"] = "gulag_cmt_ready2jump";
    level._ID30909["soap"]["gulag_cmt_anotherway"] = "gulag_cmt_anotherway";
    level._ID30901["soap"]["gulag_cmt_anotherway"] = %gulag_cmt_anotherway;
    level._ID30909["redshirt"]["gulag_wrm_thisway"] = "gulag_wrm_thisway";
    level._ID30901["redshirt"]["gulag_wrm_thisway"] = %gulag_wrm_thisway;
    level._ID30909["redshirt"]["gulag_wrm_deadend"] = "gulag_wrm_deadend";
    level._ID30909["price"]["gulag_pri_doorsopen"] = "gulag_pri_doorsopen";
    level._ID30909["soap"]["gulag_cmt_depth100"] = "gulag_cmt_depth100";
    level._ID30908["gulag_plp_15secs"] = "gulag_plp_15secs";
    level._ID30909["soap"]["gulag_cmt_deadinfive"] = "gulag_cmt_deadinfive";
    level._ID30909["soap"]["gulag_cmt_whereareyou"] = "gulag_cmt_whereareyou";
    level._ID30908["gulag_plp_cantsee"] = "gulag_plp_cantsee";
    level._ID30909["price"]["gulag_pri_doitfast"] = "gulag_pri_doitfast";
    level._ID30908["gulag_plp_seeflare"] = "gulag_plp_seeflare";
    level._ID30909["soap"]["gulag_cmt_hookup2"] = "gulag_cmt_hookup2";
    level._ID30909["soap"]["gulag_cmt_gogo"] = "gulag_cmt_gogo";
    level._ID30909["price"]["gulag_pri_hangon"] = "gulag_pri_hangon";
    level._ID30909["soap"]["gulag_cmt_seehostiles"] = "gulag_cmt_seehostiles";
    level._ID30901["soap"]["gulag_cmt_seehostiles"] = %gulag_cmt_seehostiles;
    level._ID30908["gulag_rpt_tooclose"] = "gulag_rpt_tooclose";
    level._ID30909["soap"]["gulag_cmt_usesheild"] = "gulag_cmt_usesheild";
    level._ID30909["soap"]["gulag_cmt_illdrawfire"] = "gulag_cmt_illdrawfire";
    level._ID30908["gulag_gst_bypassfloors"] = "gulag_gst_bypassfloors";
    level._ID30909["soap"]["gulag_cmt_roachfollow"] = "gulag_cmt_roachfollow";
    level._ID30901["soap"]["gulag_cmt_roachfollow"] = %gulag_cmt_roachfollow;
    level._ID30908["gulag_gst_feedisdead"] = "gulag_gst_feedisdead";
    level._ID30909["soap"]["gulag_cmt_switchnv"] = "gulag_cmt_switchnv";
    level._ID30909["soap"]["gulag_cmt_stragglers"] = "gulag_cmt_stragglers";
    level._ID30909["soap"]["gulag_cmt_calloff"] = "gulag_cmt_calloff";
    level._ID30908["gulag_hqr_working"] = "gulag_hqr_working";
    level._ID30908["gulag_hqr_loosecannon"] = "gulag_hqr_loosecannon";
    level._ID30909["soap"]["gulag_cmt_toonarrow"] = "gulag_cmt_toonarrow";
    level._ID30909["soap"]["gulag_cmt_plantbreach"] = "gulag_cmt_plantbreach";
    level._ID30909["soap"]["gulag_cmt_hurryup"] = "gulag_cmt_hurryup";
    level._ID30909["soap"]["gulag_cmt_forgetthatdoor"] = "gulag_cmt_forgetthatdoor";
    level._ID30909["soap"]["gulag_cmt_spreadout"] = "gulag_cmt_spreadout";
    level._ID30909["soap"]["gulag_cmt_hostiles2ndfloor"] = "gulag_cmt_hostiles2ndfloor";
    level._ID30909["soap"]["gulag_cmt_keepmoving"] = "gulag_cmt_keepmoving";
    level._ID30909["soap"]["gulag_cmt_uselockers"] = "gulag_cmt_uselockers";
    level._ID30909["soap"]["gulag_cmt_hitfromside"] = "gulag_cmt_hitfromside";
    level._ID30909["soap"]["gulag_cmt_cookgrenades"] = "gulag_cmt_cookgrenades";
    level._ID30909["soap"]["gulag_cmt_holeinfloor"] = "gulag_cmt_holeinfloor";
    level._ID30909["soap"]["gulag_cmt_needmoretime"] = "gulag_cmt_needmoretime";
    level._ID30908["gulag_hqr_nocando"] = "gulag_hqr_nocando";
    level._ID30909["generic"]["gulag_cmt_heswithus"] = "gulag_cmt_heswithus";
    level._ID30909["generic"]["gulag_pri_soap"] = "gulag_pri_soap";
    level._ID30909["generic"]["gulag_wrm_whosoap"] = "gulag_wrm_whosoap";
    level._ID30909["generic"]["gulag_cmt_heswithus"] = "gulag_cmt_heswithus";
    level._ID30909["generic"]["gulag_pri_soap"] = "gulag_pri_soap";
    level._ID30909["generic"]["gulag_wrm_whosoap"] = "gulag_wrm_whosoap";
    level._ID30909["generic"]["gulag_cmt_belongstoyou"] = "gulag_cmt_belongstoyou";
    level._ID30909["generic"]["gulag_cmt_getouttaheremove"] = "gulag_cmt_getouttaheremove";
    level._ID30909["generic"]["gulag_rpa_ext_1"] = "gulag_rpa_ext_1";
    level._ID30909["generic"]["gulag_rpa_ext_2"] = "gulag_rpa_ext_2";
    level._ID30909["generic"]["gulag_rpa_ext_3"] = "gulag_rpa_ext_3";
    level._ID30909["generic"]["gulag_rpa_ext_4"] = "gulag_rpa_ext_4";
    level._ID30909["generic"]["gulag_rpa_ext_5"] = "gulag_rpa_ext_5";
    level._ID30909["generic"]["gulag_rpa_ext_6"] = "gulag_rpa_ext_6";
    level._ID30909["generic"]["gulag_rpa_ext_7"] = "gulag_rpa_ext_7";
    level._ID30909["generic"]["gulag_rpa_ext_8"] = "gulag_rpa_ext_8";
    level._ID30909["generic"]["gulag_rpa_int_1"] = "gulag_rpa_int_1";
    level._ID30909["generic"]["gulag_rpa_int_2"] = "gulag_rpa_int_2";
    level._ID30909["generic"]["gulag_rpa_int_3"] = "gulag_rpa_int_3";
    level._ID30909["generic"]["gulag_rpa_int_4"] = "gulag_rpa_int_4";
    level._ID30909["generic"]["gulag_rpa_int_5"] = "gulag_rpa_int_5";
    level._ID30909["generic"]["gulag_pri_yes"] = "gulag_pri_yes";
}

_ID51444()
{
    level._ID43404 = [];
    level._ID43404[0] = "exploder_script_model";
}
#using_animtree("script_model");

_ID47863()
{
    level._ID30900["exploder_script_model"] = #animtree;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_a_anim"] = %h2_gulag_castletower_1_break_a_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_b_anim"] = %h2_gulag_castletower_1_break_b_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_c_anim"] = %h2_gulag_castletower_1_break_c_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_d_anim"] = %h2_gulag_castletower_1_break_d_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_d2_anim"] = %h2_gulag_castletower_1_break_d2_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_e_anim"] = %h2_gulag_castletower_1_break_e_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_f_anim"] = %h2_gulag_castletower_1_break_f_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_g_anim"] = %h2_gulag_castletower_1_break_g_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_h_anim"] = %h2_gulag_castletower_1_break_h_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_i_anim"] = %h2_gulag_castletower_1_break_i_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_1_break_j_anim"] = %h2_gulag_castletower_1_break_j_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_2_break_a_anim"] = %h2_gulag_castletower_2_break_a_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_2_break_b_anim"] = %h2_gulag_castletower_2_break_b_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_2_break_c_anim"] = %h2_gulag_castletower_2_break_c_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_2_break_d_anim"] = %h2_gulag_castletower_2_break_d_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_2_break_e_anim"] = %h2_gulag_castletower_2_break_e_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_2_break_f_anim"] = %h2_gulag_castletower_2_break_f_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_castletower_2_break_g_anim"] = %h2_gulag_castletower_2_break_g_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_radiotower_break_a_anim"] = %h2_gulag_radiotower_break_a_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_radiotower_break_b_anim"] = %h2_gulag_radiotower_break_b_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_radiotower_break_c_anim"] = %h2_gulag_radiotower_break_c_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_radiotower_break_d_anim"] = %h2_gulag_radiotower_break_d_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_radiotower_break_e_anim"] = %h2_gulag_radiotower_break_e_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_radiotower_break_f_anim"] = %h2_gulag_radiotower_break_f_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_radiotower_break_g_anim"] = %h2_gulag_radiotower_break_g_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_radiotower_break_h_anim"] = %h2_gulag_radiotower_break_h_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_littlebird_break_a_anim"] = %h2_gulag_littlebird_break_a_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_littlebird_break_b_anim"] = %h2_gulag_littlebird_break_b_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_littlebird_break_c_anim"] = %h2_gulag_littlebird_break_c_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_littlebird_break_d_anim"] = %h2_gulag_littlebird_break_d_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_littlebird_break_e_anim"] = %h2_gulag_littlebird_break_e_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_littlebird_break_f_anim"] = %h2_gulag_littlebird_break_f_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_rockslide_break_a_anim"] = %h2_gulag_rockslide_break_a_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_rockslide_break_b_anim"] = %h2_gulag_rockslide_break_b_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_rockslide_break_c_anim"] = %h2_gulag_rockslide_break_c_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_rockslide_break_d_anim"] = %h2_gulag_rockslide_break_d_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_rockslide_break_e_anim"] = %h2_gulag_rockslide_break_e_anim;
    level._ID30895["exploder_script_model"]["h2_gulag_rockslide_break_f_anim"] = %h2_gulag_rockslide_break_f_anim;
}
#using_animtree("animated_props");

_ID46385()
{
    var_0 = [ "trq_tree_pine_snow_045_02_rig", "trq_tree_pine_snow_060_02_rig", "trq_tree_pine_snow_070_02_rig", "trq_tree_pine_snow_080_02_rig", "trq_tree_pine_snow_090_02_rig", "trq_tree_pine_snow_105_02_rig" ];

    foreach ( var_2 in var_0 )
    {
        level._ID3055[var_2]["still"] = %h2_trq_tree_pine_still;
        level._ID3055[var_2]["strong"] = %h2_trq_tree_pine_sway;
        level._ID3055[var_2]["heli"] = %h2_trq_tree_pine_heli_sway;
    }
}

_ID43482( var_0 )
{
    level.player thread _ID42407::_ID27079( "scn_gulag_intro_player_dismount" );
}

_ID45076( var_0 )
{
    killfxontag( _ID42237::_ID16299( "radio_tower_red_static_glow" ), self, "tag_fx" );
    playfxontag( _ID42237::_ID16299( "radio_tower_fall_light_flicker" ), self, "tag_fx" );
}

_ID46672( var_0 )
{
    playfxontag( _ID42237::_ID16299( "radio_tower_fall_sparks_runner" ), self, "transmitting_tower4" );
}

_ID44570( var_0 )
{
    _ID42234::_ID13611( "radio_tower_impact" );
}

_ID51598( var_0 )
{
    level._ID53563 _ID42407::_ID14803( "mp5", "primary" );
    var_1 = getent( "soap_mp5", "targetname" );
    var_1 delete();
}
