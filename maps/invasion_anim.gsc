// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID43266()
{
    _ID40317();
    _ID3197();
    _ID10730();
    _ID31296();
    player();
}
#using_animtree("script_model");

_ID31296()
{
    level._ID30900["tangled_chute_parachute"] = #animtree;
    level._ID30895["tangled_chute_parachute"]["idle"][0] = %parachute_detach_idle;
    level._ID30895["tangled_chute_parachute"]["end_idle"][0] = %parachute_detach_endidle;
    level._ID30895["tangled_chute_parachute"]["reaction"] = %parachute_detach_reaction;
    level._ID30895["tangled_chute_parachute"]["death"] = %parachute_detach_death;
    level._ID30904["tangled_chute_parachute"] = "invasion_parachute_hanging_char_animated";
    level._ID30900["chute"] = #animtree;
    level._ID30895["chute"]["idle"] = %h2_invasion_parachute_hanging_idle;
    level._ID30900["roof_landing_parachute"] = #animtree;
    level._ID30895["roof_landing_parachute"]["roof_landing_parachute"] = %invasion_paratrooper_roof_landing_parachute;
    level._ID30904["roof_landing_parachute"] = "parachute_roof";
    level._ID30900["distant_parachute_guy"] = #animtree;
    level._ID30895["distant_parachute_guy"]["distant_parachute_guy_left1"] = %paratrooper_jump_lefta_chute;
    level._ID30895["distant_parachute_guy"]["distant_parachute_guy_right1"] = %paratrooper_jump_righta_chute;
    level._ID30895["distant_parachute_guy"]["distant_parachute_guy_left2"] = %paratrooper_jump_leftb_chute;
    level._ID30895["distant_parachute_guy"]["distant_parachute_guy_right2"] = %paratrooper_jump_rightb_chute;
    level._ID30904["distant_parachute_guy"] = "parachute_deploy_low_with_body";
    level._ID30900["paradrop_cargo_tank_chuteA"] = #animtree;
    level._ID30895["paradrop_cargo_tank_chuteA"]["paradrop_cargo_tank_chuteA"] = %paradrop_cargo_tank_chutea;
    level._ID30904["paradrop_cargo_tank_chuteA"] = "parachute_tank_animated_low";
    level._ID30900["paradrop_cargo_tank_chuteB"] = #animtree;
    level._ID30895["paradrop_cargo_tank_chuteB"]["paradrop_cargo_tank_chuteB"] = %paradrop_cargo_tank_chuteb;
    level._ID30904["paradrop_cargo_tank_chuteB"] = "parachute_tank_animated_low";
    level._ID30900["paradrop_cargo_tank_chuteC"] = #animtree;
    level._ID30895["paradrop_cargo_tank_chuteC"]["paradrop_cargo_tank_chuteC"] = %paradrop_cargo_tank_chutec;
    level._ID30904["paradrop_cargo_tank_chuteC"] = "parachute_tank_animated_low";
    level._ID30900["bmp_chute_paradrop"] = #animtree;
    level._ID30895["bmp_chute_paradrop"]["bmp_chute_paradrop"] = %paradrop_cargo_chute;
    level._ID30904["bmp_chute_paradrop"] = "parachute_cargo_animated";
    level._ID43404 = [];
    level._ID43404[0] = "exploder_script_model";
    level._ID30900["exploder_script_model"] = #animtree;
    level._ID30895["exploder_script_model"]["h2_invasion_firsthouse_break_a_anim"] = %h2_invasion_firsthouse_break_a_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_firsthouse_break_b_anim"] = %h2_invasion_firsthouse_break_b_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_firsthouse_break_c_anim"] = %h2_invasion_firsthouse_break_c_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_firsthouse_break_d_anim"] = %h2_invasion_firsthouse_break_d_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_firsthouse_break_e_anim"] = %h2_invasion_firsthouse_break_e_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_firsthouse_break_f_anim"] = %h2_invasion_firsthouse_break_f_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_firsthouse_break_g_anim"] = %h2_invasion_firsthouse_break_g_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_firsthouse_break_h_anim"] = %h2_invasion_firsthouse_break_h_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_whitehouse_break_a_anim"] = %h2_invasion_whitehouse_break_a_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_whitehouse_break_b_anim"] = %h2_invasion_whitehouse_break_b_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_whitehouse_break_c_anim"] = %h2_invasion_whitehouse_break_c_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_whitehouse_break_d_anim"] = %h2_invasion_whitehouse_break_d_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_whitehouse_break_e_anim"] = %h2_invasion_whitehouse_break_e_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_whitehouse_break_f_anim"] = %h2_invasion_whitehouse_break_f_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_whitehouse_break_g_anim"] = %h2_invasion_whitehouse_break_g_anim;
    level._ID30895["exploder_script_model"]["h2_invasion_whitehouse_break_h_anim"] = %h2_invasion_whitehouse_break_h_anim;
    level._ID30904["h2_laatpv_ending_weapon"] = "h2_weapon_scar_h_reflex";
    level._ID30900["h2_laatpv_ending_weapon"] = #animtree;
    level._ID30895["h2_laatpv_ending_weapon"]["h2_laatpv_outro_in"] = %h2_invasion_ending_weapon_climbin;
    level._ID30904["h2_wires_animated"] = "dcburning_commerce_wires1_pho_anim";
    level._ID30900["h2_wires_animated"] = #animtree;
    level._ID30895["h2_wires_animated"]["h2_wires_animated"][0] = %h2_dcburning_commerce_wires1_idle;
    level._ID30900["h2_nates_beam_destruction"] = #animtree;
    level._ID30904["h2_nates_beam_destruction"] = "h2_inv_nates_wood_beam_destruct_anim";
    level._ID30895["h2_nates_beam_destruction"]["h2_nates_beam_destruction"] = %h2_inv_nates_beam_destruction;
}
#using_animtree("vehicles");

_ID40317()
{
    level._ID30900["btr_ground_smash"] = #animtree;
    level._ID30895["btr_ground_smash"]["btr_ground_smash"] = %invasion_btr_crash_btr;
    level._ID30904["btr_ground_smash"] = "vehicle_btr80";
    level._ID30900["btr_squashedcar"] = #animtree;
    level._ID30895["btr_squashedcar"]["btr_squashedcar"] = %invasion_btr_crash_squashedcar;
    level._ID30904["btr_squashedcar"] = "vehicle_80s_sedan1_tankcrush";
    level._ID30900["bmp_paradrop"] = #animtree;
    level._ID30895["bmp_paradrop"]["bmp_paradrop"] = %h2_paradrop_cargo_vehicle_btr80;
    level._ID30904["bmp_paradrop"] = "vehicle_btr80_static_low";
    level._ID30900["anatov_opendoors"] = #animtree;
    level._ID30895["anatov_opendoors"]["anatov_opendoors"] = %paratrooper_jet_opendoors;
    var_0 = spawnstruct();
    var_0._ID3197 = [];
    var_0._ID3197["front"] = %mi17_heli_hitreact_front;
    var_0._ID3197["rear"] = %mi17_heli_hitreact_rear;
    var_0._ID3197["left"] = %mi17_heli_hitreact_left;
    var_0._ID3197["right"] = %mi17_heli_hitreact_right;
    var_0._ID53560 = 0;
    var_0._ID50561 = 1;
    _ID42411::_ID43943( "script_vehicle_mi28", undefined, var_0 );
}
#using_animtree("player");

player()
{
    level._ID30904["viewbody"] = "viewbody_us_army";
    level._ID30900["viewbody"] = #animtree;
    level._ID30895["viewbody"]["invasion_intro_jeepride"] = %h2_invasion_intro_jeepride_player;
    _ID42259::_ID2058( "viewbody", "btr_shot", maps\invasion::latvee_destroyer_fire_notetrack, "invasion_intro_jeepride" );
    _ID42259::_ID2058( "viewbody", "latvee_explode", maps\invasion::latvee_player_explode_notetrack, "invasion_intro_jeepride" );
    level._ID30904["carry_sentry_player"] = "viewhands_player_us_army";
    level._ID30895["viewbody"]["h2_laatpv_outro_in"] = %h2_invasion_ending_vm_climbin;
    level._ID30895["viewbody"]["h2_laatpv_outro_loop"][0] = %h2_invasion_ending_vm_idle;
}
#using_animtree("generic_human");

_ID3197()
{
    level._ID30895["taco"]["invasion_intro_jeepride"] = %h2_invasion_intro_jeepride_dunn;
    level._ID30895["raptor"]["invasion_intro_jeepride"] = %h2_invasion_intro_jeepride_foley;
    level._ID30895["worm"]["invasion_intro_jeepride"] = %h2_invasion_intro_jeepride_soldier;
    level._ID30895["generic"]["invasion_latvee_exit_v1_guy1_idle"][0] = %invasion_latvee_exit_v1_guy1_idle;
    level._ID30895["generic"]["invasion_latvee_exit_v1_guy1_react"] = %invasion_latvee_exit_v1_guy1_react;
    _ID42259::_ID2058( "generic", "explosion_react1", maps\invasion::_ID46169, "invasion_latvee_exit_v1_guy1_react" );
    _ID42259::_ID2058( "generic", "explosion_react2", maps\invasion::_ID48974, "invasion_latvee_exit_v1_guy1_react" );
    level._ID30895["generic"]["invasion_latvee_exit_v1_passenger_idle"][0] = %invasion_latvee_exit_v1_passenger_idle;
    level._ID30895["generic"]["invasion_latvee_exit_v1_passenger_react"] = %invasion_latvee_exit_v1_passenger_react;
    level._ID30895["generic"]["invasion_parachute_ground_detach_idle"][0] = %invasion_parachute_ground_detach_idle;
    level._ID30895["generic"]["tangled_guy_trys_to_free_self"] = %invasion_parachute_ground_detach_reaction;
    level._ID30895["generic"]["invasion_parachute_ground_detach_death\t"] = %invasion_parachute_ground_detach_death;
    level._ID30895["generic"]["distant_parachute_guy_left1"] = %paratrooper_jump_lefta_guy;
    level._ID30895["generic"]["distant_parachute_guy_right1"] = %paratrooper_jump_righta_guy;
    level._ID30895["generic"]["distant_parachute_guy_left2"] = %paratrooper_jump_leftb_guy;
    level._ID30895["generic"]["distant_parachute_guy_right2"] = %paratrooper_jump_rightb_guy;
    level._ID30895["generic"]["pronehide_dive"] = %hunted_dive_2_pronehide_v1;
    level._ID30895["generic"]["roof_landing_parachute"] = %invasion_paratrooper_roof_landing;
    level._ID30895["generic"]["rolldeath"] = %invasion_paratrooper_roof_landing_rolldeath;
    level._ID30895["generic"]["crawldeath"] = %invasion_paratrooper_roof_landing_crawldeath;
    _ID42259::_ID2058( "generic", "roll_death", ::_ID51971, "roof_landing_parachute" );
    _ID42259::_ID2058( "generic", "crawl_death_start", ::_ID53191, "roof_landing_parachute" );
    _ID42259::_ID2058( "generic", "crawl_death", ::_ID45605, "roof_landing_parachute" );
    _ID42259::_ID2063( "generic", "roll_death", "roll_death", "roof_landing_parachute" );
    _ID42259::_ID2063( "generic", "crawl_death_start", "crawl_death_start", "roof_landing_parachute" );
    _ID42259::_ID2063( "generic", "crawl_death", "crawl_death", "roof_landing_parachute" );
    level._ID30895["generic"]["invasion_vehicle_cover_dialogue_guy1"] = %invasion_vehicle_cover_dialogue_guy1;
    level._ID30895["generic"]["invasion_vehicle_cover_dialogue_guy1_idle"][0] = %invasion_vehicle_cover_dialogue_guy1_idle;
    level._ID30895["generic"]["invasion_vehicle_cover_dialogue_guy2"] = %invasion_vehicle_cover_dialogue_guy2;
    level._ID30895["generic"]["turret_guy_panic"] = %h2_invasion_latvee_explosion_turret_panic;
    level._ID30895["generic"]["convoy_driver_idle"][0] = %h2_invasion_ending_driver_idle;
    level._ID30895["generic"]["convoy_driver_nod"] = %h2_invasion_ending_driver_nod;
    _ID42259::_ID2058( "generic", "dialog_inv_six_gimmesitrep", ::_ID43608, "invasion_vehicle_cover_dialogue_guy2" );
    _ID42259::_ID2058( "generic", "dialog_inv_six_status", ::_ID49385, "invasion_vehicle_cover_dialogue_guy2" );
    _ID42259::_ID2058( "generic", "dialog_inv_six_whatelse", ::_ID54036, "invasion_vehicle_cover_dialogue_guy2" );
    _ID42259::_ID2058( "generic", "dialog_inv_six_sentrygunsouth", ::_ID51056, "invasion_vehicle_cover_dialogue_guy2" );
    _ID42259::_ID2058( "generic", "dunn_checkout", ::_ID47691, "invasion_vehicle_cover_dialogue_guy2" );
    _ID42259::_ID2058( "generic", "dialog_inv_sgw_meatlocker", ::_ID53627, "invasion_vehicle_cover_dialogue_guy1" );
    _ID42259::_ID2058( "generic", "dialog_inv_sgw_unconscious", ::_ID51843, "invasion_vehicle_cover_dialogue_guy1" );
    _ID42259::_ID2058( "generic", "dialog_inv_sgw_supplydrop", ::_ID44054, "invasion_vehicle_cover_dialogue_guy1" );
}

_ID43608( var_0 )
{
    _ID42237::_ID14402( "notetrack_gimmesitrep" );
}

_ID49385( var_0 )
{
    _ID42237::_ID14402( "notetrack_status" );
}

_ID54036( var_0 )
{
    _ID42237::_ID14402( "notetrack_whatelse" );
}

_ID51056( var_0 )
{
    _ID42237::_ID14402( "notetrack_sentrygunsouth" );
}

_ID47691( var_0 )
{
    _ID42237::_ID14402( "notetrack_checkout" );
}

_ID53627( var_0 )
{
    _ID42237::_ID14402( "notetrack_meatlocker" );
}

_ID51843( var_0 )
{
    _ID42237::_ID14402( "notetrack_unconscious" );
}

_ID44054( var_0 )
{
    _ID42237::_ID14402( "notetrack_supplydrop" );
}

_ID43872()
{
    self.ignoreme = 1;
    thread _ID42407::_ID22746();
    self._ID9813 = %invasion_parachute_ground_detach_death;
    var_0 = getent( "tangled_parachute_guy_node", "targetname" );
    var_1 = _ID42407::_ID35028( "tangled_chute_parachute" );
    var_0 thread _ID42259::_ID3044( var_1, "idle", "stop_tangled_chute_idle" );
    var_0 thread _ID42259::_ID3025( self, "invasion_parachute_ground_detach_idle", "stop_tangled_guy_idle" );

    while ( !_ID42407::_ID54053( self geteye() ) )
        wait 0.05;

    self.allowdeath = 1;
    thread _ID42407::_ID36519();
    thread _ID53719( var_0, var_1 );
    self endon( "death" );
    wait 1;
    thread _ID53057( var_0, var_1 );
}

_ID53057( var_0, var_1 )
{
    self endon( "death" );
    var_0 notify( "stop_tangled_chute_idle" );
    var_0 notify( "stop_tangled_guy_idle" );
    self.ignoreme = 0;
    var_0 thread _ID42259::_ID3111( var_1, "reaction" );
    var_0 _ID42259::_ID3020( self, "tangled_guy_trys_to_free_self" );
    var_0 thread _ID42259::_ID3044( var_1, "end_idle" );
    self._ID9813 = undefined;
    var_0 notify( "he got free" );
}

_ID53719( var_0, var_1 )
{
    var_0 endon( "he got free" );
    self waittill( "death" );
    var_0 notify( "stop_tangled_chute_idle" );
    var_0 _ID42259::_ID3111( var_1, "death" );
    var_0 thread _ID42259::_ID3044( var_1, "end_idle" );
}

_ID52448()
{
    wait 3;
    _ID42407::_ID1805( "pizza_rushers_trigger" );
}

_ID43827()
{
    wait 3;
    var_0 = getent( "burning_tree", "script_noteworthy" );
    var_0._ID3189 = "burning_tree";
    var_0 _ID42407::_ID3428();
    var_0 _ID42259::_ID3044( var_0, "tree_oak_fire", "stop_burning_tree" );
}

_ID43813( var_0 )
{
    self linkto( level._ID51121, "tag_guy1" );
    level._ID51121 thread _ID42259::_ID3025( self, "invasion_latvee_exit_v1_guy1_idle", "stop_front_latvee_anims", "tag_guy1" );
    level waittill( "latvee_blows_up" );
    self notify( "stop_front_latvee_anims" );
    var_0 thread _ID42259::_ID3020( self, "invasion_latvee_exit_v1_guy1_react" );
    level._ID51121 waittill( "reached_end_node" );
    self unlink();
    var_0 unlink();
    _ID42407::_ID41115( "single anim", "end", 1000 );
    self.allowdeath = 1;
    self._ID7._ID24881 = 1;
    self kill();
}

_ID53447( var_0 )
{
    self linkto( level._ID51121, "tag_passenger" );
    level._ID51121 thread _ID42259::_ID3025( self, "invasion_latvee_exit_v1_passenger_idle", "stop_front_latvee_anims", "tag_passenger" );
    level waittill( "latvee_blows_up" );
    self notify( "stop_front_latvee_anims" );
    var_0 thread _ID42259::_ID3020( self, "invasion_latvee_exit_v1_passenger_react" );
    level._ID51121 waittill( "reached_end_node" );
    self unlink();
    var_0 unlink();
    _ID42407::_ID41115( "single anim", "end", 1000 );
    self.allowdeath = 1;
    self._ID7._ID24881 = 1;
    self kill();
}

_ID50748( var_0 )
{
    self.allowdeath = 0;
    self._ID24924 = 1;

    if ( isdefined( var_0 ) )
        self._ID43028 = 1;

    self.health = 1;
    var_1 = spawn( "script_origin", self.origin );
    var_1.angles = self.angles;
    var_2 = _ID42407::_ID35028( "roof_landing_parachute" );
    var_1 thread _ID42259::_ID3020( self, "roof_landing_parachute" );
    var_1 _ID42259::_ID3111( var_2, "roof_landing_parachute" );
    var_2 delete();
    level notify( "roof_landing_anim_finished" );
}

_ID51971( var_0 )
{
    if ( isdefined( var_0._ID43028 ) )
        return;

    var_0._ID34237 = 1;
    thread _ID42259::_ID3020( var_0, "rolldeath" );
    wait 0.5;
    var_0.allowdeath = 1;
    var_0 kill();
}

_ID53191( var_0 )
{
    if ( isdefined( var_0._ID43028 ) )
        return;

    level endon( "crawl_death_finished" );
    wait 2;
    var_0._ID34237 = 1;
    var_0 thread _ID42259::_ID3020( var_0, "crawldeath" );
    wait 0.5;
    var_0.allowdeath = 1;
    var_0 kill();
}

_ID45605( var_0 )
{
    var_0.allowdeath = 0;
    level notify( "crawl_death_finished" );
    level waittill( "roof_landing_anim_finished" );
    var_0 delete();
}

convoy_latvee_remap_dismount_anims()
{
    convoy_latvee_remap_dismount_anims_guys();
    convoy_latvee_remap_dismount_anims_vehicle();
}

convoy_latvee_remap_dismount_anims_guys()
{
    level._ID40069["script_vehicle_laatpv_minigun_physics"][1]._ID16491 = %latvee_dismount_frontr;
    level._ID40069["script_vehicle_laatpv_minigun_physics"][2]._ID16491 = %latvee_dismount_backl;
    level._ID40069["script_vehicle_laatpv_minigun_physics"][3]._ID16491 = %latvee_dismount_backr;
}
#using_animtree("vehicles");

convoy_latvee_remap_dismount_anims_vehicle()
{
    level._ID40069["script_vehicle_laatpv_minigun_physics"][1]._ID40152 = %latvee_dismount_frontr_door;
    level._ID40069["script_vehicle_laatpv_minigun_physics"][2]._ID40152 = %latvee_dismount_backl_door;
    level._ID40069["script_vehicle_laatpv_minigun_physics"][3]._ID40152 = %latvee_dismount_backr_door;
}

_ID10730()
{
    level._ID30909["raptor"]["inv_six_gotbmp"] = "inv_six_gotbmp";
    level._ID30909["raptor"]["inv_six_teamthisway"] = "inv_six_teamthisway";
    level._ID30909["raptor"]["inv_six_300meast"] = "inv_six_300meast";
    level._ID30909["raptor"]["inv_six_hangright"] = "inv_six_hangright";
    level._ID30909["raptor"]["inv_six_viscrashsite"] = "inv_six_viscrashsite";
    level._ID30909["raptor"]["inv_six_grabrpg"] = "inv_six_grabrpg";
    level._ID30909["raptor"]["inv_six_rpgsupplydrop"] = "inv_six_rpgsupplydrop";
    level._ID30909["raptor"]["inv_six_takepoint"] = "inv_six_takepoint";
    level._ID30909["raptor"]["inv_six_truck12"] = "inv_six_truck12";
    level._ID30909["taco"]["inv_tco_juggernaut"] = "inv_tco_juggernaut";
    level._ID30909["raptor"]["inv_six_hitflashbang"] = "inv_six_hitflashbang";
    level._ID30909["raptor"]["inv_six_stayback"] = "inv_six_stayback";
    level._ID30909["raptor"]["inv_six_aimforthehead"] = "inv_six_aimforthehead";
    level._ID30909["raptor"]["inv_six_headshot"] = "inv_six_headshot";
    level._ID30909["raptor"]["inv_six_dontengageapc"] = "inv_six_dontengageapc";
    level._ID30909["raptor"]["inv_six_getbackfromapc"] = "inv_six_getbackfromapc";
    level._ID30909["raptor"]["inv_six_closeairsupport"] = "inv_six_closeairsupport";
    level._ID30909["raptor"]["inv_six_purplebuilding"] = "inv_six_purplebuilding";
    level._ID30909["raptor"]["inv_six_gimmesitrep"] = "inv_six_gimmesitrep";
    level._ID30909["wells"]["inv_sgw_meatlocker"] = "inv_sgw_meatlocker";
    level._ID30909["raptor"]["inv_six_status"] = "inv_six_status";
    level._ID30909["wells"]["inv_sgw_unconscious"] = "inv_sgw_unconscious";
    level._ID30909["raptor"]["inv_six_whatelse"] = "inv_six_whatelse";
    level._ID30909["wells"]["inv_sgw_supplydrop"] = "inv_sgw_supplydrop";
    level._ID30909["raptor"]["inv_six_sentrygunsouth"] = "inv_six_sentrygunsouth";
    level._ID30909["raptor"]["inv_six_antitank"] = "inv_six_antitank";
    level._ID30909["wells"]["inv_sgw_allout"] = "inv_sgw_allout";
    level._ID30909["raptor"]["inv_six_rogerthat"] = "inv_six_rogerthat";
    level._ID30908["inv_six_rogerthat"] = "inv_six_rogerthat";
    level._ID30908["inv_six_ladderinkitchen"] = "inv_six_ladderinkitchen";
    level._ID30908["inv_six_gettoroof"] = "inv_six_gettoroof";
    level._ID30908["inv_six_onroofyet"] = "inv_six_onroofyet";
    level._ID30908["inv_six_headsupladies"] = "inv_six_headsupladies";
    level._ID30908["inv_six_thermaloptics"] = "inv_six_thermaloptics";
    level._ID30908["inv_six_hadenough"] = "inv_six_hadenough";
    level._ID30908["inv_six_checkammo"] = "inv_six_checkammo";
    level._ID30908["inv_wrm_whatwasthat"] = "inv_wrm_whatwasthat";
    level._ID30908["inv_six_offtheroof"] = "inv_six_offtheroof";
    level._ID30908["inv_six_bmpsfromnorth"] = "inv_six_bmpsfromnorth";
    level._ID30908["inv_tco_rogerthat"] = "inv_tco_rogerthat";
    level._ID30909["taco"]["inv_tco_controlrig"] = "inv_tco_controlrig";
    level._ID30909["taco"]["inv_tco_pickupcontrolrig"] = "inv_tco_pickupcontrolrig";
    level._ID30909["taco"]["inv_tco_incoming"] = "inv_tco_incoming";
    level._ID30909["taco"]["inv_tco_backdoor"] = "inv_tco_backdoor";
    level._ID30908["inv_six_wastebmpsnow"] = "inv_six_wastebmpsnow";
    level._ID30908["inv_six_fastmovers"] = "inv_six_fastmovers";
    level._ID30908["inv_tco_stillthere"] = "inv_tco_stillthere";
    level._ID30908["inv_six_newplan"] = "inv_six_newplan";
    level._ID30908["inv_six_secureburgertown"] = "inv_six_secureburgertown";
    level._ID30908["inv_six_listenup"] = "inv_six_listenup";
    level._ID30908["inv_six_anotherpass"] = "inv_six_anotherpass";
    level._ID30908["inv_six_hostilesinbt"] = "inv_six_hostilesinbt";
    level._ID30908["inv_six_clearbtroof"] = "inv_six_clearbtroof";
    level._ID30908["inv_six_gotpresident"] = "inv_six_gotpresident";
    level._ID30908["inv_six_keepoffme"] = "inv_six_keepoffme";
    level._ID30909["raptor"]["inv_six_keepoffme"] = "inv_six_keepoffme";
    level._ID30908["inv_tco_incomingnorth"] = "inv_tco_incomingnorth";
    level._ID30908["inv_tco_contactnorth"] = "inv_tco_contactnorth";
    level._ID30908["inv_tco_incomingsouth"] = "inv_tco_incomingsouth";
    level._ID30908["inv_tco_contactsouth"] = "inv_tco_contactsouth";
    level._ID30908["inv_tco_contactnw"] = "inv_tco_contactnw";
    level._ID30908["inv_tco_contactse"] = "inv_tco_contactse";
    level._ID30908["inv_tco_incominghelo"] = "inv_tco_incominghelo";
    level._ID30908["inv_six_getoffroof"] = "inv_six_getoffroof";
    level._ID30908["inv_six_convoyshere"] = "inv_six_convoyshere";
    level._ID30908["inv_hqr_sitrep"] = "inv_hqr_sitrep";
    level._ID30908["inv_six_cargosecure"] = "inv_six_cargosecure";
    level._ID30908["inv_hqr_goodjob"] = "inv_hqr_goodjob";
    level._ID30909["raptor"]["inv_six_ourobjective"] = "inv_six_ourobjective";
    level._ID30909["raptor"]["inv_six_pickuprpg"] = "inv_six_pickuprpg";
    level._ID30909["raptor"]["inv_six_pickupthatrpg"] = "inv_six_pickupthatrpg";
    level._ID30909["raptor"]["inv_six_morerockets"] = "inv_six_morerockets";
    level._ID30909["raptor"]["inv_six_anotherrpg"] = "inv_six_anotherrpg";
    level._ID30909["raptor"]["inv_six_pickup"] = "inv_six_pickup";
    level._ID30909["raptor"]["inv_six_getmore"] = "inv_six_getmore";
    level._ID30908["inv_tco_hesdown"] = "inv_tco_hesdown";
    level._ID30909["taco"]["inv_tco_hesdown"] = "inv_tco_hesdown";
    level._ID30908["inv_six_niceoneheli"] = "inv_six_niceoneheli";
    level._ID30909["raptor"]["inv_six_niceoneheli"] = "inv_six_niceoneheli";
    level._ID30908["inv_six_niceoneguys"] = "inv_six_niceoneguys";
    level._ID30909["raptor"]["inv_six_niceoneguys"] = "inv_six_niceoneguys";
    level._ID30908["inv_six_staywithus"] = "inv_six_staywithus";
    level._ID30909["raptor"]["inv_six_staywithus"] = "inv_six_staywithus";
    level._ID30908["inv_six_onme"] = "inv_six_onme";
    level._ID30909["raptor"]["inv_six_onme"] = "inv_six_onme";
    level._ID30908["inv_six_getoverhere"] = "inv_six_getoverhere";
    level._ID30908["inv_six_gogogo"] = "inv_six_gogogo";
    level._ID30909["raptor"]["inv_six_gogogo"] = "inv_six_gogogo";
    level._ID30908["inv_six_crashsite"] = "inv_six_crashsite";
    level._ID30908["inv_six_northofnates"] = "inv_six_northofnates";
    level._ID30908["inv_six_2dozen"] = "inv_six_2dozen";
    level._ID30908["inv_tco_usingsmoke"] = "inv_tco_usingsmoke";
    level._ID30908["inv_six_getoffroof2"] = "inv_six_getoffroof2";
    level._ID30908["inv_six_getoffroofnow"] = "inv_six_getoffroofnow";
    level._ID30908["inv_six_regroup"] = "inv_six_regroup";
    level._ID30908["inv_six_regroupinrest"] = "inv_six_regroupinrest";
    level._ID30908["inv_six_shiftfiren"] = "inv_six_shiftfiren";
    level._ID30908["inv_six_contactsn"] = "inv_six_contactsn";
    level._ID30908["inv_tco_smokescrnth"] = "inv_tco_smokescrnth";
    level._ID30908["inv_six_switchthermal"] = "inv_six_switchthermal";
    level._ID30908["inv_six_readytocover"] = "inv_six_readytocover";
    level._ID30908["inv_six_coverusgo"] = "inv_six_coverusgo";
    level._ID30908["inv_six_needtomove"] = "inv_six_needtomove";
    level._ID30908["inv_six_whatsholdup"] = "inv_six_whatsholdup";
    level._ID30908["inv_six_bmpspottedyou"] = "inv_six_bmpspottedyou";
    level._ID30908["inv_six_bmphasavisual"] = "inv_six_bmphasavisual";
    level._ID30908["inv_six_behindsolid"] = "inv_six_behindsolid";
    level._ID30908["inv_six_bmplostyou"] = "inv_six_bmplostyou";
    level._ID30908["inv_six_bmplostyoumove"] = "inv_six_bmplostyoumove";
    level._ID30908["inv_six_bmplostyougo"] = "inv_six_bmplostyougo";
    level._ID30908["inv_six_neutralizearmor"] = "inv_six_neutralizearmor";
    level._ID30908["inv_six_destroyapcs"] = "inv_six_destroyapcs";
    level._ID30908["inv_six_stillonebmp"] = "inv_six_stillonebmp";
    level._ID30908["inv_six_wastethatbmpnow"] = "inv_six_wastethatbmpnow";
    level._ID30908["inv_six_gotthepresident"] = "inv_six_gotthepresident";
    level._ID30908["inv_six_friedlyconvoy"] = "inv_six_friedlyconvoy";
    level._ID30909["raptor"]["inv_six_paratrooper"] = "inv_six_paratrooper";
    level._ID30909["raptor"]["inv_six_enemyptroop"] = "inv_six_enemyptroop";
    level._ID30909["raptor"]["inv_six_rusptroop"] = "inv_six_rusptroop";
    level._ID30909["taco"]["inv_tco_rogerthat"] = "inv_tco_rogerthat";
    level._ID30908["inv_six_shiftfirew"] = "inv_six_shiftfirew";
    level._ID30908["inv_six_contactsw"] = "inv_six_contactsw";
    level._ID30908["inv_tco_smokescrwest"] = "inv_tco_smokescrwest";
    level._ID30908["inv_six_overwatch"] = "inv_six_overwatch";
    level._ID30908["inv_tco_regroupsquad"] = "inv_tco_regroupsquad";
    level._ID30908["inv_six_roachonme"] = "inv_six_roachonme";
    level._ID30908["inv_six_backhere"] = "inv_six_backhere";
    level._ID30908["inv_six_theinfantry"] = "inv_six_theinfantry";
    level._ID30908["inv_six_thatarmor"] = "inv_six_thatarmor";
    level._ID30908["inv_gm1_eastof95"] = "inv_gm1_eastof95";
    level._ID30908["inv_gm2_airsupport"] = "inv_gm2_airsupport";
    level._ID30908["inv_gm3_cutoff"] = "inv_gm3_cutoff";
    level._ID30908["inv_gm4_brokenarrow"] = "inv_gm4_brokenarrow";
    level._ID30908["inv_gm1_495and50"] = "inv_gm1_495and50";
    level._ID30909["raptor"]["inv_six_reqairsupport"] = "inv_six_reqairsupport";
    level._ID30909["raptor"]["inv_hqr_engaged"] = "inv_hqr_engaged";
    level._ID30909["raptor"]["inv_six_onfoot"] = "inv_six_onfoot";
    level._ID30909["raptor"]["inv_hqr_goodluck"] = "inv_hqr_goodluck";
    level._ID30908["inv_six_convoyshere"] = "inv_six_convoyshere";
    level._ID30908["inv_six_southofbtown"] = "inv_six_southofbtown";
    level._ID30908["inv_tco_backtoconvoy"] = "inv_tco_backtoconvoy";
    level._ID30909["raptor"]["inv_six_staybehind"] = "inv_six_staybehind";
    level._ID30909["raptor"]["inv_six_throwsemtex"] = "inv_six_throwsemtex";
    level._ID30909["raptor"]["inv_six_getsemtex"] = "inv_six_getsemtex";
    level._ID30909["raptor"]["inv_six_destroy"] = "inv_six_destroy";
    level._ID30908["inv_hqr_enemyhelo"] = "inv_hqr_enemyhelo";
    level._ID30908["inv_hqr_capunavail"] = "inv_hqr_capunavail";
    level._ID30908["inv_six_takedown"] = "inv_six_takedown";
    level._ID30908["inv_tco_roofofnates"] = "inv_tco_roofofnates";
    level._ID30908["inv_tco_killthathelo"] = "inv_tco_killthathelo";
    level._ID30908["inv_tco_dispatchchopper"] = "inv_tco_dispatchchopper";
    level._ID30908["inv_tco_insidediner"] = "inv_tco_insidediner";
    level._ID30908["inv_hqr_relaygol1"] = "inv_hqr_relaygol1";
    level._ID30908["inv_tco_eyesup"] = "inv_tco_eyesup";
    level._ID30908["inv_six_anotherhelo"] = "inv_six_anotherhelo";
    level._ID30908["inv_six_beforeconvoy"] = "inv_six_beforeconvoy";
    level._ID30908["inv_six_antiaircraft"] = "inv_six_antiaircraft";
    level._ID30908["inv_six_takegunship"] = "inv_six_takegunship";
    level._ID30908["inv_tco_firedmissile"] = "inv_tco_firedmissile";
    level._ID30908["inv_tco_uavoffline"] = "inv_tco_uavoffline";
    level._ID30908["inv_hqr_enemynorth"] = "inv_hqr_enemynorth";
    level._ID30908["inv_hqr_banktonorth"] = "inv_hqr_banktonorth";
    level._ID30908["inv_hqr_footmobiles"] = "inv_hqr_footmobiles";
    level._ID30908["inv_hqr_southeast"] = "inv_hqr_southeast";
    level._ID30908["inv_hqr_visualse"] = "inv_hqr_visualse";
    level._ID30908["inv_hqr_tacojoint"] = "inv_hqr_tacojoint";
    level._ID30908["inv_hqr_novagasstation"] = "inv_hqr_novagasstation";
    level._ID30908["inv_hqr_enemywest"] = "inv_hqr_enemywest";
    level._ID30908["inv_hqr_dinerwest"] = "inv_hqr_dinerwest";
    level._ID30909["raptor"]["inv_hqr_engaged2"] = "inv_hqr_engaged2";
    level._ID30909["raptor"]["inv_six_onfoot2"] = "inv_six_onfoot2";
    level._ID30909["raptor"]["inv_tco_fourselves"] = "inv_tco_fourselves";
    level._ID30909["taco"]["inv_six_prettymuch"] = "inv_six_prettymuch";
    level._ID30908["inv_tco_uavop"] = "inv_tco_uavop";
    level._ID30908["inv_tco_uavop2"] = "inv_tco_uavop2";
    level._ID30908["inv_six_killthatsob"] = "inv_six_killthatsob";
    level._ID30908["inv_six_killthatsob2"] = "inv_six_killthatsob2";
    level._ID30908["inv_six_onemore"] = "inv_six_onemore";
    level._ID30908["inv_six_gotthepresident2"] = "inv_six_gotthepresident2";
    level._ID30908["inv_six_theinfantry2"] = "inv_six_theinfantry2";
    level._ID30908["inv_tco_roofofnates2"] = "inv_tco_roofofnates2";
    level._ID30908["inv_tco_killthathelo2"] = "inv_tco_killthathelo2";
    level._ID30908["inv_six_checktheroof"] = "inv_six_checktheroof";
    level._ID30908["inv_six_supplydroponroof"] = "inv_six_supplydroponroof";
    level._ID30908["inv_tco_dispatchchopper2"] = "inv_tco_dispatchchopper2";
    level._ID30908["inv_tco_nexttostation"] = "inv_tco_nexttostation";
    level._ID30908["inv_tco_dineruav"] = "inv_tco_dineruav";
    level._ID30908["inv_six_sitreponraptor"] = "inv_six_sitreponraptor";
    level._ID30908["inv_tco_secureandstable"] = "inv_tco_secureandstable";
    level._ID30908["inv_six_lockandload"] = "inv_six_lockandload";
    level._ID30908["inv_six_onthree"] = "inv_six_onthree";
    level._ID30908["inv_six_one"] = "inv_six_one";
    level._ID30908["inv_six_two"] = "inv_six_two";
    level._ID30908["inv_six_three"] = "inv_six_three";
    level._ID30908["inv_six_gogogo2"] = "inv_six_gogogo2";
    level._ID30908["inv_six_concentratefire"] = "inv_six_concentratefire";
    level._ID30908["inv_six_keepfiring"] = "inv_six_keepfiring";
    level._ID30909["raptor"]["inv_six_roofbehind"] = "inv_six_roofbehind";
    level._ID30909["raptor"]["inv_six_enemiesonroof"] = "inv_six_enemiesonroof";
    level._ID30909["raptor"]["inv_six_insideperim"] = "inv_six_insideperim";
    level._ID30909["raptor"]["inv_six_turnaround"] = "inv_six_turnaround";
    level._ID44684 = 1;
    level._ID30908["uav_offline"] = "inv_hqr_hellfireoffline";
    level._ID30908["uav_down"] = "inv_hqr_hellfiredown";
    level._ID30908["uav_down_variant"][0] = "inv_hqr_hellfiredown";
    level._ID30908["uav_down_variant"][1] = "inv_hqr_predatoroffline";
    level._ID30908["uav_down_variant"][2] = "inv_hqr_hellfireoffline";
    level._ID30908["uav_down_variant"][3] = "inv_hqr_predatoroffline2";
    level._ID30908["inv_hqr_fivenotenkills"] = "inv_hqr_fivenotenkills";
    level._ID30908["inv_hqr_tenmoreconfirms"] = "inv_hqr_tenmoreconfirms";
    level._ID30908["inv_hqr_tenpluskia"] = "inv_hqr_tenpluskia";
    level._ID30908["inv_hqr_fiveplus"] = "inv_hqr_fiveplus";
    level._ID30908["inv_hqr_another5plus"] = "inv_hqr_another5plus";
    level._ID30908["inv_hqr_morethanfive"] = "inv_hqr_morethanfive";
    level._ID30908["inv_hqr_yougotem"] = "inv_hqr_yougotem";
    level._ID30908["inv_hqr_goodkills"] = "inv_hqr_goodkills";
    level._ID30908["inv_hqr_directhit"] = "inv_hqr_directhit";
    level._ID30908["inv_hqr_hesdown"] = "inv_hqr_hesdown";
    level._ID30909["raptor"]["inv_six_coverofsmoke"] = "inv_six_coverofsmoke";
    level._ID30909["raptor"]["inv_six_cometoalley"] = "inv_six_cometoalley";
    level._ID30908["inv_fly_2kcivvies"] = "inv_fly_2kcivvies";
}
