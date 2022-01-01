// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID10730();
    _ID52952();
    _ID50191();
    _ID49926();
    _ID52626();
    _ID5997();
    _ID47971();
    _ID46477();
    _ID50777();
    _ID44402();
    _ID43799();
    _ID42411::_ID52468( "script_vehicle_uaz_hardtop_physics", _ID51074::_ID32550, ::_ID48336 );
}
#using_animtree("generic_human");

_ID52952()
{
    level._ID30895["ghost"]["temp_cellphone"] = %patrol_bored_idle_cellphone;
    level._ID30895["ghost"]["temp_walkto"] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["estate_ghost_radio"] = %h2_estate_ghost_radio;
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_gst_regroup" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_gst_photos" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_scr_rogerthat" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_gst_nosign" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_pri_atleast50" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_gst_goldmine" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_shp_everything" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_gst_alreadyonit" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_shp_eta5mins" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_gst_starttransfer" );
    _ID42259::_ID2062( "generic", "dialog", "estate_ghost_radio", "est_gst_rearsecurity" );
    _ID42259::_ID2063( "generic", "ghost_gives_regroup_order", "ghost_gives_regroup_order", "estate_ghost_radio" );
    _ID42259::_ID2063( "generic", "house_briefing_is_over", "house_briefing_is_over", "estate_ghost_radio" );
    _ID42259::_ID2063( "generic", "dsm_ready_to_use", "dsm_ready_to_use", "estate_ghost_radio" );
    level._ID30895["generic"]["estate_house_photoshoot"] = %h2_estate_house_photoshoot;
    _ID42259::_ID2057( "generic", "attach_camera", "electronics_camera_pointandshoot_animated", "TAG_INHAND", "estate_house_photoshoot" );
    _ID42259::_ID2059( "generic", "detach_camera", "electronics_camera_pointandshoot_animated", "TAG_INHAND", "estate_house_photoshoot" );
    level._ID30895["generic"]["exposed_crouch_extendedpainA"] = %exposed_crouch_extendedpaina;
}

_ID50191()
{
    level._ID30895["ghost"]["downhill_run"] = %estate_downhill_1;
    level._ID30895["generic"]["downhill_run"] = %estate_downhill_1;
    level._ID30895["ozone"]["downhill_run"] = %estate_downhill_1;
    level._ID30895["scarecrow"]["downhill_run"] = %estate_downhill_1;
    level._ID30895["ghost"]["run"] = %run_lowready_f;
    level._ID30895["generic"]["run"] = %run_lowready_f;
    level._ID30895["ozone"]["run"] = %run_lowready_f;
    level._ID30895["scarecrow"]["run"] = %run_lowready_f;
}

_ID5997()
{
    level._ID30895["generic"]["exposed_idle_reactA"] = %exposed_idle_reacta;
    level._ID30895["generic"]["favela_chaotic_cornerR_med90"] = %favela_chaotic_cornerr_med90;
    level._ID30895["generic"]["favela_chaotic_cornerCrL_fire_mid"] = %favela_chaotic_cornercrl_fire_mid;
    level._ID30895["generic"]["favela_chaotic_cornerCrR_fire_mid"] = %favela_chaotic_cornercrr_fire_mid;
    level._ID30895["generic"]["favela_chaotic_crouchcover_fireA"] = %favela_chaotic_crouchcover_firea;
    level._ID30895["generic"]["favela_chaotic_crouchcover_fireB"] = %favela_chaotic_crouchcover_fireb;
    level._ID30895["generic"]["breach_react_blowback_v1"] = %breach_react_blowback_v1;
    level._ID30895["generic"]["breach_react_blowback_v2"] = %breach_react_blowback_v2;
    level._ID30895["generic"]["breach_react_blowback_v3"] = %breach_react_blowback_v3;
    level._ID30895["generic"]["breach_react_knife_charge"] = %breach_react_knife_charge;
    level._ID30895["generic"]["breach_react_knife_charge_death"] = %death_shotgun_back_v1;
}

_ID46477()
{
    level._ID30895["ghost"]["estate_ending_drag"] = %estate_drag_friendly;
    level._ID30895["ghost_ending"]["estate_ending_part1"] = %h2_estate_chopper_sequence_ghost;
    _ID42259::_ID2062( "ghost_ending", "dialog", "estate_ending_part1", "est_gst_comeongetup" );
    _ID42259::_ID2062( "ghost_ending", "dialog", "estate_ending_part1", "est_gst_getupgetup" );
    _ID42259::_ID2062( "ghost_ending", "dialog", "estate_ending_part1", "est_gst_wegotit" );
    _ID42259::_ID2062( "ghost_ending", "dialog", "estate_ending_part1", "est_gst_no" );
    level._ID30895["shepherd_ending"]["estate_ending_part1"] = %h2_estate_chopper_sequence_leader;
    _ID42259::_ID2062( "shepherd_ending", "shepherd_dsm_talk", "estate_ending_part1", "est_shp_havethedsm" );
    _ID42259::_ID2062( "shepherd_ending", "shepherd_talk_looseend", "estate_ending_part1", "est_shp_looseend" );
    _ID42259::_ID2058( "shepherd_ending", "shepherd_vilain", ::ee_cheat_villain_shepherd, "estate_ending_part1" );
    _ID42259::_ID2069( "shepherd_ending", "shepherd_starts_walking", "estate_ending_part1", "scn_estate_finale_shepherd_foley_01" );
    level._ID30895["guy1_ending"]["estate_ending_part1"] = %h2_estate_chopper_sequence_enemy1;
    level._ID30895["guy2_ending"]["estate_ending_part1"] = %h2_estate_chopper_sequence_enemy2;
    level._ID30895["guy1_ending"]["estate_ending_part2"] = %h2_estate_body_toss_guy1;
    level._ID30895["guy2_ending"]["estate_ending_part2"] = %h2_estate_body_toss_guy2;
    level._ID30895["body_ending"]["estate_ending_part2"] = %h2_estate_body_toss_body;
    level._ID30895["guy1_ending"]["estate_ending_part2_2ndbody"] = %h2_estate_body_2nd_toss_guy1;
    level._ID30895["guy2_ending"]["estate_ending_part2_2ndbody"] = %h2_estate_body_2nd_toss_guy2;
    level._ID30895["ghost_ending_dead"]["estate_ending_part2_2ndbody"] = %h2_estate_2nd_body_toss_body;
    _ID42259::_ID2069( "ghost_ending_dead", "ghost_drop_floor", "estate_ending_part2_2ndbody", "scn_estate_betrayal_drop_ghost_01" );
    level._ID30895["gasolineGuy"]["estate_ending_part3"] = %h2_estate_ending_gasoline_guy1;
    level._ID30895["shepherd_ending"]["estate_ending_part3"] = %h2_estate_ending_gasoline_leader;
    _ID42259::_ID2058( "gasolineGuy", "gas_splash_start", ::_ID48443 );
    _ID42259::_ID2058( "ghost_ending_dead", "bodyfall large", ::_ID48618 );
    _ID42259::_ID2058( "ghost_ending", "blood_splat", ::_ID52459 );
}

ee_cheat_villain_shepherd( var_0 )
{
    var_0 thread _ID49347::addspecialmonitors();
}

play_shepherd_ending_gun_anim()
{
    waittillframeend;
    self setanim( %h2_estate_chopper_sequence_gun );
}

play_cannister_guy_cannister_anim()
{
    waittillframeend;
    self setanim( %h2_estate_ending_gasoline_cannister );
}

_ID52459( var_0 )
{
    playfxontag( _ID42237::_ID16299( "flesh_hit_body_fatal_exit" ), var_0, "J_SpineUpper" );
}

_ID48443( var_0 )
{
    playfxontag( _ID42237::_ID16299( "gas_can_splash" ), var_0, "TAG_FX" );
}

_ID47369( var_0 )
{
    self endon( "gas_drip_end" );

    for (;;)
    {
        playfxontag( _ID42237::_ID16299( "gas_can_splash" ), var_0, "TAG_FX" );
        wait 0.03;
    }
}

_ID43802( var_0 )
{
    self notify( "gas_splash_end" );
}

_ID50968( var_0 )
{
    self notify( "gas_drip_end" );
}

_ID48618( var_0 )
{
    playfxontag( _ID42237::_ID16299( "bodydump_dust_large" ), var_0, "J_SpineLower" );
}

_ID49926()
{
    level._ID30895["ghillie"]["prone_2_stand"] = %prone_2_stand;
    level._ID30895["ghillie"]["prone_2_stand_firing"] = %prone_2_stand_firing;
}

_ID10730()
{
    level._ID30908["est_snp1_inposition"] = "est_snp1_inposition";
    level._ID30908["est_sld1_rogerthat"] = "est_sld1_rogerthat";
    level._ID30908["est_sld2_solidcopy"] = "est_sld2_solidcopy";
    level._ID30909["ghost"]["est_gst_engageonsight"] = "est_gst_engageonsight";
    level._ID30909["ghost"]["est_gst_letsgoletsgo"] = "est_gst_letsgoletsgo";
    level._ID30909["ghost"]["est_gst_ambush"] = "est_gst_ambush";
    level._ID30909["ozone"]["est_tf1_ambush"] = "est_tf1_ambush";
    level._ID30909["scarecrow"]["est_tf2_ambush"] = "est_tf2_ambush";
    level._ID30909["ghost"]["est_gst_targetsleftside"] = "est_gst_targetsleftside";
    level._ID30909["ghost"]["est_gst_counterattack"] = "est_gst_counterattack";
    level._ID30909["ghost"]["est_gst_loseeminsmoke"] = "est_gst_loseeminsmoke";
    level._ID30909["scarecrow"]["est_scr_presighted"] = "est_scr_presighted";
    level._ID30909["ghost"]["est_gst_hostchopper"] = "est_gst_hostchopper";
    level._ID30908["est_snp1_trucksleaving"] = "est_snp1_trucksleaving";
    level._ID30909["ghost"]["est_gst_trucksgetaway"] = "est_gst_trucksgetaway";
    level._ID30909["ghost"]["est_gst_bulletproofed"] = "est_gst_bulletproofed";
    level._ID30908["est_snp1_firingjavelin"] = "est_snp1_firingjavelin";
    level._ID30909["ghost"]["est_gst_dangerclose"] = "est_gst_dangerclose";
    level._ID30908["est_snp1_twoaway"] = "est_snp1_twoaway";
    level._ID30908["est_snp1_neutralized"] = "est_snp1_neutralized";
    level._ID30908["est_snp1_decoys"] = "est_snp1_decoys";
    level._ID30909["ghost"]["est_gst_advancingonhouse"] = "est_gst_advancingonhouse";
    level._ID30909["ghost"]["est_gst_clearperimieter"] = "est_gst_clearperimieter";
    level._ID30909["ghost"]["est_gst_breachnclear"] = "est_gst_breachnclear";
    level._ID30908["est_gst_officeclear"] = "est_gst_officeclear";
    level._ID30908["est_gst_diningroomclr"] = "est_gst_diningroomclr";
    level._ID30908["est_gst_clear"] = "est_gst_clear";
    level._ID30908["est_gst_letsgo2"] = "est_gst_letsgo2";
    level._ID30908["est_gst_lockedrooms"] = "est_gst_lockedrooms";
    level._ID30908["est_scr_getupstairs"] = "est_scr_getupstairs";
    level._ID30908["est_gst_checkbasement"] = "est_gst_checkbasement";
    level._ID30908["est_gst_sitrep"] = "est_gst_sitrep";
    level._ID30908["est_scr_noonesleaving"] = "est_scr_noonesleaving";
    level._ID30908["est_gst_thrukitchen"] = "est_gst_thrukitchen";
    level._ID30908["est_ozn_rogerthat"] = "est_ozn_rogerthat";
    level._ID30908["est_scr_mainfloor"] = "est_scr_mainfloor";
    level._ID30908["est_gst_mainfloor"] = "est_gst_mainfloor";
    level._ID30908["est_scr_gotyourback"] = "est_scr_gotyourback";
    level._ID30908["est_scr_basement"] = "est_scr_basement";
    level._ID30908["est_gst_basement"] = "est_gst_basement";
    level._ID30908["est_scr_topfloor"] = "est_scr_topfloor";
    level._ID30908["est_gst_topfloor"] = "est_gst_topfloor";
    level._ID30908["est_gst_regroup"] = "est_gst_regroup";
    level._ID30909["ghost"]["est_gst_photos"] = "est_gst_photos";
    level._ID30908["est_scr_rogerthat"] = "est_scr_rogerthat";
    level._ID30909["ghost"]["est_gst_nosign"] = "est_gst_nosign";
    level._ID30908["est_pri_somuchforintel"] = "est_pri_somuchforintel";
    level._ID30908["est_pri_atleast50"] = "est_pri_atleast50";
    level._ID30909["ghost"]["est_gst_goldmine"] = "est_gst_goldmine";
    level._ID30908["est_shp_everything"] = "est_shp_everything";
    level._ID30909["ghost"]["est_gst_alreadyonit"] = "est_gst_alreadyonit";
    level._ID30908["est_shp_eta5mins"] = "est_shp_eta5mins";
    level._ID30909["ghost"]["est_gst_starttransfer"] = "est_gst_starttransfer";
    level._ID30909["ghost"]["est_gst_rearsecurity"] = "est_gst_rearsecurity";
    level._ID30908["est_ozn_onmyway"] = "est_ozn_onmyway";
    level._ID30908["est_pri_searching"] = "est_pri_searching";
    level._ID30908["est_pri_gettingcloser"] = "est_pri_gettingcloser";
    level._ID30908["est_pri_goingsilent"] = "est_pri_goingsilent";
    level._ID30908["est_gst_filesoff"] = "est_gst_filesoff";
    level._ID30908["est_gst_startdownload"] = "est_gst_startdownload";
    level._ID30908["est_snp1_mainroad"] = "est_snp1_mainroad";
    level._ID30908["est_snp1_60seconds"] = "est_snp1_60seconds";
    level._ID30908["est_gst_withintel"] = "est_gst_withintel";
    level._ID30908["est_gst_weaponscache"] = "est_gst_weaponscache";
    level._ID30908["est_snp1_15seconds"] = "est_snp1_15seconds";
    level._ID30908["est_gst_15seconds"] = "est_gst_15seconds";
    level._ID30908["est_scr_inposition"] = "est_scr_inposition";
    level._ID30908["est_ozn_readyengage"] = "est_ozn_readyengage";
    level._ID30908["est_ozn_stockup"] = "est_ozn_stockup";
    level._ID30908["est_snp1_fastattack"] = "est_snp1_fastattack";
    level._ID30908["est_gst_helosnw"] = "est_gst_helosnw";
    level._ID30908["est_scr_frontlawn"] = "est_scr_frontlawn";
    level._ID30908["est_ozn_mainwindows"] = "est_ozn_mainwindows";
    level._ID30908["est_gst_useclaymores"] = "est_gst_useclaymores";
    level._ID30908["est_scr_whatwasthat"] = "est_scr_whatwasthat";
    level._ID30908["est_snp1_hostilesse"] = "est_snp1_hostilesse";
    level._ID30908["est_snp1_thinemout"] = "est_snp1_thinemout";
    level._ID30908["est_gst_fieldtose"] = "est_gst_fieldtose";
    level._ID30908["est_ozn_eyeson"] = "est_ozn_eyeson";
    level._ID30908["est_snp1_troopswest"] = "est_snp1_troopswest";
    level._ID30908["est_gst_boathouse"] = "est_gst_boathouse";
    level._ID30908["est_ozn_249sandrpgs"] = "est_ozn_249sandrpgs";
    level._ID30908["est_gst_cutemdown"] = "est_gst_cutemdown";
    level._ID30908["est_snp1_boathousewest"] = "est_snp1_boathousewest";
    level._ID30908["est_gst_westsideofhouse"] = "est_gst_westsideofhouse";
    level._ID30908["est_snp1_additionalhostile"] = "est_snp1_additionalhostile";
    level._ID30908["est_gst_solarpanelseast"] = "est_gst_solarpanelseast";
    level._ID30908["est_scr_comethrutrees"] = "est_scr_comethrutrees";
    level._ID30908["est_gst_easttrail"] = "est_gst_easttrail";
    level._ID30908["est_snp1_tangodown"] = "est_snp1_tangodown";
    level._ID30908["est_snp1_gotone"] = "est_snp1_gotone";
    level._ID30908["est_snp1_hostneut"] = "est_snp1_hostneut";
    level._ID30908["est_snp1_thatsakill"] = "est_snp1_thatsakill";
    level._ID30908["est_snp1_thatsone"] = "est_snp1_thatsone";
    level._ID30908["est_snp1_tangodown2"] = "est_snp1_tangodown2";
    level._ID30908["est_snp1_droppedhim"] = "est_snp1_droppedhim";
    level._ID30908["est_snp1_hesdown"] = "est_snp1_hesdown";
    level._ID30908["est_snp1_moving"] = "est_snp1_moving";
    level._ID30908["est_snp1_displacing"] = "est_snp1_displacing";
    level._ID30908["est_snp1_rpgteameast"] = "est_snp1_rpgteameast";
    level._ID30908["est_ozn_rpgteameast"] = "est_ozn_rpgteameast";
    level._ID30908["est_snp1_rpgteamwest"] = "est_snp1_rpgteamwest";
    level._ID30908["est_gst_rpgteamwest"] = "est_gst_rpgteamwest";
    level._ID30908["est_snp1_rpgteamsw"] = "est_snp1_rpgteamsw";
    level._ID30908["est_ozn_rpgteamsw"] = "est_ozn_rpgteamsw";
    level._ID30908["est_ozn_imhit"] = "est_ozn_imhit";
    level._ID30908["est_snp1_ozoneisdown"] = "est_snp1_ozoneisdown";
    level._ID30908["est_scr_imhit"] = "est_scr_imhit";
    level._ID30908["est_snp1_scarecrowdown"] = "est_snp1_scarecrowdown";
    level._ID30908["est_gst_stayclose"] = "est_gst_stayclose";
    level._ID30908["est_gst_dontstray"] = "est_gst_dontstray";
    level._ID30908["est_gst_fallback"] = "est_gst_fallback";
    level._ID30908["est_gst_tryingtostop"] = "est_gst_tryingtostop";
    level._ID30908["est_gst_lostthedsm"] = "est_gst_lostthedsm";
    level._ID30908["est_gst_destroyedthedsm"] = "est_gst_destroyedthedsm";
    level._ID30908["est_gst_dsmcomplete"] = "est_gst_dsmcomplete";
    level._ID30908["est_gst_getouttahere"] = "est_gst_getouttahere";
    level._ID30908["est_shp_almostatlz"] = "est_shp_almostatlz";
    level._ID30909["ghost"]["est_gst_onourway"] = "est_gst_onourway";
    level._ID30909["ghost"]["est_gst_bracketing"] = "est_gst_bracketing";
    level._ID30909["ghost"]["est_gst_gettothelz"] = "est_gst_gettothelz";
    level._ID30909["ghost"]["est_gst_gotyoucovered"] = "est_gst_gotyoucovered";
    level._ID30909["ghost"]["est_gst_illcoveryou"] = "est_gst_illcoveryou";
    level._ID30909["ghost"]["est_gst_keepmoving"] = "est_gst_keepmoving";
    level._ID30909["ghost"]["est_gst_gogo"] = "est_gst_gogo";
    level._ID30908["est_gst_gotyouroach"] = "est_gst_gotyouroach";
    level._ID30908["est_gst_redsmoke"] = "est_gst_redsmoke";
    level._ID30908["est_fp1_visual"] = "est_fp1_visual";
    level._ID30908["est_gst_clearedhot"] = "est_gst_clearedhot";
    level._ID30908["est_fp1_clearedhot"] = "est_fp1_clearedhot";
    level._ID30908["est_hp1_gunsgunsguns"] = "est_hp1_gunsgunsguns";
    level._ID30908["est_gst_hanginthere"] = "est_gst_hanginthere";
    level._ID30909["ghost_ending"]["est_gst_comeongetup"] = "est_gst_comeongetup";
    level._ID30909["ghost_ending"]["est_gst_getupgetup"] = "est_gst_getupgetup";
    level._ID30908["est_hp1_rocketattck"] = "est_hp1_rocketattck";
    level._ID30908["est_hp2_hitemhard"] = "est_hp2_hitemhard";
    level._ID30908["est_hp1_imonit"] = "est_hp1_imonit";
    level._ID30908["est_hp1_linedup"] = "est_hp1_linedup";
    level._ID30908["est_hp2_watchforsnipers"] = "est_hp2_watchforsnipers";
    level._ID30909["ghost_ending"]["est_gst_wegotit"] = "est_gst_wegotit";
    level._ID30909["shepherd_ending"]["est_shp_welldone"] = "est_shp_welldone";
    level._ID30909["ghost_ending"]["est_gst_no"] = "est_gst_no";
    level._ID30908["est_hp2_sanitized"] = "est_hp2_sanitized";
    level._ID30908["est_hp1_holdingpattern"] = "est_hp1_holdingpattern";
    level._ID30908["est_pri_comein"] = "est_pri_comein";
    level._ID30908["est_pri_holdleftflank"] = "est_pri_holdleftflank";
    level._ID30908["est_pri_donottrust"] = "est_pri_donottrust";
    level._ID30908["est_pri_getdown"] = "est_pri_getdown";
    level._ID30908["est_pri_underattack"] = "est_pri_underattack";
}
#using_animtree("script_model");

_ID52626()
{
    level._ID30900["bouncingbetty"] = #animtree;
    level._ID30895["bouncingbetty"]["bouncing_betty_detonate"] = %bouncing_betty_detonate;
    level._ID30904["bouncingbetty"] = "projectile_bouncing_betty_grenade";
}

_ID47971()
{
    level._ID30895["breach_door_model_estate"]["breach"] = %breach_player_door_v2;
    level._ID30900["breach_door_model_estate"] = #animtree;
    level._ID30904["breach_door_model_estate"] = "h2_est_com_door_02";
    level._ID30895["breach_door_hinge_estate"]["breach"] = %breach_player_door_hinge_v1;
    level._ID30900["breach_door_hinge_estate"] = #animtree;
    level._ID30904["breach_door_hinge_estate"] = "h2_est_com_door_piece_02";
}
#using_animtree("player");

_ID50777()
{
    level._ID30900["playerview"] = #animtree;
    level._ID30904["playerview"] = "viewhands_player_tf141";
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_tf141_forest";
    level._ID30895["worldbody"]["estate_ending_drag"] = %h2_estate_drag_player;
    level._ID30895["worldbody"]["estate_ending_part1"] = %h2_estate_chopper_sequence_player;
    level._ID30895["worldbody"]["estate_ending_part2"] = %h2_estate_body_toss_player;
    _ID42259::_ID2058( "playerview", "bodyfall large", ::_ID48786 );
    level._ID30895["worldbody"]["dsm_in"] = %h2_estate_dsm_vm_in;
    level._ID30895["worldbody"]["dsm_out"] = %h2_estate_dsm_vm_out;
}

_ID48786( var_0 )
{
    playfxontag( _ID42237::_ID16299( "bodydump_dust_large" ), var_0, "J_Wrist_RI" );
}
#using_animtree("vehicles");

_ID44402()
{
    level._ID30900["pavelow"] = #animtree;
    level._ID30895["pavelow"]["estate_ending_part1"] = %h2_estate_chopper_sequence_pavelow;
}
#using_animtree("script_model");

_ID43799()
{
    level._ID30900["lamp"] = #animtree;
    level._ID30895["lamp"]["idle"] = %h2_est_industrial_lamp_off_idle;
    level._ID30900["flower"] = #animtree;
    level._ID30895["flower"]["idle"] = %h2_hanging_flowerpot_idle;
    level._ID30900["chandelier_small"] = #animtree;
    level._ID30895["chandelier_small"]["idle"] = %h2_estate_chandelier_small;
    level._ID30900["chandelier_big"] = #animtree;
    level._ID30895["chandelier_big"]["idle"] = %h2_estate_chandelier_big;
    level._ID30900["cigar"] = #animtree;
    level._ID30904["cigar"] = "prop_price_cigar";
    level._ID30895["cigar"]["estate_ending_part3"] = %h2_estate_ending_gasoline_leader_cigar;
    level._ID30900["dsm"] = #animtree;
    level._ID30904["dsm"] = "mil_wireless_dsm";
    level._ID30895["dsm"]["estate_ending_part1"] = %h2_estate_chopper_sequence_dsm;
    level._ID30900["dsm"] = #animtree;
    level._ID30904["dsm"] = "mil_wireless_dsm";
    level._ID30895["dsm"]["dsm_in"] = %h2_estate_dsm_in;
    level._ID30895["dsm"]["dsm_out"] = %h2_estate_dsm_out;
}
#using_animtree("vehicles");

_ID48336( var_0 )
{
    var_0 = _ID51074::_ID32509( var_0 );
    var_0[0]._ID40152 = %uaz_driver_exit_into_stand_door_alt;
    var_0[1]._ID40152 = %uaz_passenger_exit_into_stand_door_alt;
    var_0[2]._ID40152 = %uaz_rear_driver_exit_into_stand_door_alt;
    var_0[3]._ID40152 = %uaz_passenger2_exit_into_stand_door_alt;
    return var_0;
}
