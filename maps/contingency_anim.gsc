// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID43266()
{
    _ID46912();
    _ID46888();
    _ID15518();
    _ID10730();
    _ID40317();
    _ID50600();
    _ID27230();
}

_ID51341( var_0 )
{
    var_0 notify( "attach rocket" );
}

_ID49514( var_0 )
{
    var_0 notify( "fire rocket" );
}

_ID47325( var_0 )
{
    var_0 notify( "drop rocket" );
}
#using_animtree("vehicles");

_ID46912()
{
    level._ID30895["generic"]["boneyard_UAZ_door"] = %boneyard_uaz_door;
}

_ID53058()
{
    var_0 = _ID42412::_ID16125();
    var_0 setflaggedanimknob( "uaz_door_anim", level._ID30895["generic"]["boneyard_UAZ_door"], 1, 0.2, 1 );
    var_0 waittillmatch( "uaz_door_anim",  "end"  );
    var_0 clearanim( level._ID30895["generic"]["boneyard_UAZ_door"], 0 );
}
#using_animtree("player");

_ID46888()
{
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewhands_player_arctic_wind";
    level._ID30895["player_rig"]["boneyard_uaz_mount"] = %boneyard_player_enter_uaz;
}
#using_animtree("generic_human");

_ID15518()
{
    level._ID30895["price"]["submarine"] = %h2_contingency_submarine_price;
    _ID42259::_ID2058( "price", "price_open_sub_hatch", maps\contingency_aud::aud_price_open_sub_hatch, "submarine" );
    level._ID30895["price"]["intro"] = %h2_contingency_price_intro;
    level._ID30895["generic"]["cqb_stand_idle_scan"] = %patrol_bored_react_look_v1;
    level._ID30895["price"]["ridge_in"] = %h2_contingency_price_ridge_in;
    _ID42259::_ID2062( "price", "dialog", "ridge_in", "cont_pri_ridgeisperfect" );
    level._ID30895["price"]["ridge_idle"][0] = %h2_contingency_price_ridge_idle;
    level._ID30895["price"]["ridge_dialogue"] = %h2_contingency_price_ridge_dialog;
    _ID42259::_ID2062( "price", "dialog", "ridge_dialogue", "cont_pri_controluav" );
    _ID42259::_ID2062( "price", "dialog", "ridge_dialogue", "cont_pri_bollocks" );
    _ID42259::_ID2062( "price", "dialog", "ridge_dialogue", "cont_pri_mobilesaminvillage" );
    _ID42259::_ID2062( "price", "dialog", "ridge_dialogue", "cont_pri_uavsharpish" );
    _ID42259::_ID2058( "price", "dialog2", ::_ID49055, "ridge_dialogue", "cont_cmt_whathappened" );
    _ID42259::_ID2058( "price", "activate_predator", maps\contingency::_ID48117, "ridge_dialogue" );
    level._ID30895["price"]["running_slide"] = %h2_contingency_price_ridge_runandslide;
    level._ID30895["price"]["slide"] = %h2_contingency_price_slide;
    level._ID30895["price"]["pre_BTR"] = %h2_contingency_price_road_dialog;
    level._ID30895["price"]["pre_BTR_idle"][0] = %h2_contingency_price_road_dialog_idle;
    level._ID30895["price"]["price_run_in_wood"] = %h2_contingency_btrattack_price;
    level._ID30895["price"]["price_run_in_wood_quick"] = %h2_contingency_btr_price_stop;
    level._ID30902["price"]["price_run_in_wood_quick"] = 0.1;
    _ID42259::_ID2062( "price", "dialog", "price_run_in_wood", "cont_pri_incoming" );
    _ID42259::_ID2062( "price", "dialog", "price_run_in_wood", "cont_pri_intothewoods" );
    _ID42259::_ID2062( "price", "dialog", "price_run_in_wood", "cont_pri_followme" );
    _ID42259::_ID2062( "price", "dialog", "price_run_in_wood_quick", "cont_pri_incoming" );
    _ID42259::_ID2062( "price", "dialog", "price_run_in_wood_quick", "cont_pri_intothewoods" );
    _ID42259::_ID2062( "price", "dialog", "price_run_in_wood_quick", "cont_pri_followme" );
    level._ID30895["price"]["price_new_running"][0] = %h2_contingency_btrattack_sprint;
    level._ID30895["generic"]["tear_gas_guy1"] = %contingency_teargas_1;
    level._ID30895["generic"]["tear_gas_guy2"] = %contingency_teargas_2;
    level._ID30895["generic"]["tear_gas_guy3"] = %contingency_teargas_3;
    _ID42259::_ID2058( "price", "price_land", ::_ID48705, "slide" );
    _ID42259::_ID2058( "price", "price_land_settle", ::_ID54501, "slide" );
    _ID42259::_ID2058( "price", "price_slide_start", ::_ID44893, "slide", [ "J_Ankle_LE" ] );
    _ID42259::_ID2058( "price", "price_slide_end", ::_ID49745, "slide" );
    level._ID30895["bricktop"]["at4_fire"] = %contengency_rocket_moment;
    _ID42259::_ID2058( "bricktop", "attach rocket", ::_ID51341, "at4_fire" );
    _ID42259::_ID2058( "bricktop", "fire rocket", ::_ID49514, "at4_fire" );
    _ID42259::_ID2058( "bricktop", "drop rocket", ::_ID47325, "at4_fire" );
    level._ID30895["rasta"]["at4_fire"] = %contengency_rocket_moment;
    _ID42259::_ID2058( "rasta", "attach rocket", ::_ID51341, "at4_fire" );
    _ID42259::_ID2058( "rasta", "fire rocket", ::_ID49514, "at4_fire" );
    _ID42259::_ID2058( "rasta", "drop rocket", ::_ID47325, "at4_fire" );
    level._ID30895["price"]["at4_fire"] = %contengency_rocket_moment;
    _ID42259::_ID2058( "price", "attach rocket", ::_ID51341, "at4_fire" );
    _ID42259::_ID2058( "price", "fire rocket", ::_ID49514, "at4_fire" );
    _ID42259::_ID2058( "price", "drop rocket", ::_ID47325, "at4_fire" );
    _ID42304::_ID19911();
    level._ID30895["generic"]["_stealth_patrol_search_a"] = %patrolwalk_cold_gunup_idle;
    level._ID30895["generic"]["_stealth_patrol_search_b"] = %patrolwalk_cold_gunup_idle;
    level._ID30895["generic"]["_stealth_patrol_cqb"] = %patrolwalk_cold_gunup_idle;
    level._ID30895["generic"]["patrol_cold_huddle"][0] = %patrolwalk_cold_huddle_idle;
    level._ID30895["generic"]["patrol_cold_huddle"][1] = %patrolwalk_cold_huddle_twitch;
    level._ID30895["generic"]["patrol_cold_huddle_pause"] = %patrolwalk_cold_huddle_stand_idle;
    level._ID30895["generic"]["patrol_cold_huddle_stop"] = %patrolwalk_cold_huddle_walk2stand;
    level._ID30895["generic"]["patrol_cold_huddle_start"] = %patrolwalk_cold_huddle_stand2walk;
    level._ID30895["generic"]["patrol_cold_crossed"][0] = %patrolwalk_cold_crossed_idle;
    level._ID30895["generic"]["patrol_cold_crossed"][1] = %patrolwalk_cold_crossed_twitch;
    level._ID30895["generic"]["patrol_cold_crossed_pause"] = %patrolwalk_cold_crossed_stand_idle;
    level._ID30895["generic"]["patrol_cold_crossed_stop"] = %patrolwalk_cold_crossed_walk2stand;
    level._ID30895["generic"]["patrol_cold_crossed_start"] = %patrolwalk_cold_crossed_stand2walk;
    level._ID30895["generic"]["sprint"] = %sprint1_loop;
    var_0 = [];
    var_0[0] = 8;
    var_0[1] = 2;
    level._ID30895["generic"]["patrol_twitch_weights"] = _ID42237::_ID15649( var_0 );
    level._ID30895["generic"]["patrol_cold_gunup_search"] = %patrolwalk_cold_gunup_idle;
    level._ID30895["generic"]["patrol_cold_gunup"][0] = %patrolwalk_cold_gunup_idle;
    level._ID30895["generic"]["patrol_cold_gunup"][1] = %patrolwalk_cold_gunup_twitcha;
    level._ID30895["generic"]["patrol_cold_gunup"][2] = %patrolwalk_cold_gunup_twitchb;
    var_0 = [];
    var_0[0] = 4;
    var_0[1] = 3;
    var_0[2] = 3;
    level._ID30895["generic"]["patrol_gunup_twitch_weights"] = _ID42237::_ID15649( var_0 );
    level._ID30895["generic"]["truckride_climbin"] = %traverse_stepup_52;
    level._ID30895["rasta"]["nuke_ending"] = %h2_contingency_ghost_nuke_reaction;
    _ID42259::_ID2062( "rasta", "dialog", "nuke_ending", "cont_gst_youthere" );
    _ID42259::_ID2062( "rasta", "dialog", "nuke_ending", "cont_gst_comein" );
    _ID42259::_ID2062( "rasta", "dialog", "nuke_ending", "cont_gst_doyoucopy" );
    _ID42259::_ID2062( "rasta", "dialog", "nuke_ending", "cont_gst_whatwait" );
    _ID42259::_ID2062( "rasta", "dialog", "nuke_ending", "cont_gst_codeblack" );
}

_ID49055( var_0, var_1 )
{
    _ID42407::_ID28864( var_1 );
}

_ID52208()
{
    level endon( "run_to_woods" );
    _ID42259::_ID3074( level._ID28543, "caution_stop" );
    _ID42259::_ID3111( level._ID28543, "caution_stop" );
    level._ID28543 setgoalnode( self );
}
#using_animtree("vehicles");

_ID40317()
{
    level._ID30895["gauntlet"]["radar_spinup"] = %sa15_radar_spinup;
    level._ID30895["gauntlet"]["radar_spinloop"] = %sa15_radar_spinloop;
    level._ID30895["gauntlet"]["radar_spindown"] = %sa15_radar_spindown;
    level._ID30895["gauntlet"]["turret_scanloop"] = %sa15_turret_scanloop;
    level._ID30900["contingency_btr_slide"] = #animtree;
    level._ID30895["contingency_btr_slide"]["contingency_btr_slide"] = %h2_contingency_btrattack;
    level._ID30904["contingency_btr_slide"] = "vehicle_btr80_snow";
    _ID42259::_ID2058( "contingency_btr_slide", "btr_fire", ::_ID51940, "contingency_btr_slide" );
}

_ID51940( var_0 )
{
    var_0 fireweapon();
    level notify( "btr_fired" );
}

_ID48705( var_0 )
{
    var_1 = var_0 gettagorigin( "J_Ankle_RI" );
    var_1 = physicstrace( var_1 + ( 0, 0, 64 ), var_1 + ( 0, 0, -64 ) );
    playfx( level._ID1426["price_landing"], var_1 );
}

_ID54501( var_0 )
{
    var_1 = var_0 gettagorigin( "J_Ankle_LE" );
    var_1 = physicstrace( var_1 + ( 0, 0, 64 ), var_1 + ( 0, 0, -64 ) );
    playfx( level._ID1426["price_landing"], var_1 );
}

_ID44893( var_0, var_1 )
{
    var_0 endon( "stop_slide_fx" );
    var_0 endon( "death" );
    var_2 = var_1[0];

    for (;;)
    {
        playfxontag( _ID42237::_ID16299( "price_sliding" ), var_0, var_2 );
        wait 0.1;
    }
}

_ID49745( var_0 )
{
    var_0 notify( "stop_slide_fx" );
}

_ID10730()
{
    level._ID30908["cont_pri_alertenemies"] = "cont_pri_alertenemies";
    level._ID30908["cont_pri_foundabody"] = "cont_pri_foundabody";
    level._ID30908["cont_pri_foundabody2"] = "cont_pri_foundabody2";
    level._ID30908["cont_pri_letpass"] = "cont_pri_letpass";
    level._ID30908["cont_pri_twoonleft"] = "cont_pri_twoonleft";
    level._ID30908["cont_pri_slippast"] = "cont_pri_slippast";
    level._ID30908["cont_pri_nicelydone"] = "cont_pri_nicelydone";
    level._ID30908["cont_pri_welldone"] = "cont_pri_welldone";
    level._ID30908["cont_pri_good"] = "cont_pri_good";
    level._ID30908["cont_pri_seenbetter"] = "cont_pri_seenbetter";
    level._ID30908["cont_pri_goodwork"] = "cont_pri_goodwork";
    level._ID30908["cont_pri_impressive"] = "cont_pri_impressive";
    level._ID30908["cont_pri_forasmoke"] = "cont_pri_forasmoke";
    level._ID30908["cont_pri_twoinwoods"] = "cont_pri_twoinwoods";
    level._ID30908["cont_pri_imready"] = "cont_pri_imready";
    level._ID30908["cont_pri_endawar"] = "cont_pri_endawar";
    level._ID30909["price"]["cont_pri_foundroach"] = "cont_pri_foundroach";
    level._ID30908["cont_pri_foundroach"] = "cont_pri_foundroach";
    level._ID30909["price"]["cont_pri_headnw"] = "cont_pri_headnw";
    level._ID30908["cont_pri_headnw"] = "cont_pri_headnw";
    level._ID30908["cont_cmt_fareast"] = "cont_cmt_fareast";
    level._ID30909["price"]["cont_pri_proceed"] = "cont_pri_proceed";
    level._ID30908["cont_pri_proceed"] = "cont_pri_proceed";
    level._ID30909["price"]["cont_pri_foundtransport"] = "cont_pri_foundtransport";
    level._ID30908["cont_pri_foundtransport"] = "cont_pri_foundtransport";
    level._ID30908["cont_cmt_workingonit"] = "cont_cmt_workingonit";
    level._ID30908["cont_pri_outofsight"] = "cont_pri_outofsight";
    level._ID30908["cont_pri_30metersfront"] = "cont_pri_30metersfront";
    level._ID30908["cont_pri_pickoffstragglers"] = "cont_pri_pickoffstragglers";
    level._ID30909["price"]["cont_pri_convoycoming"] = "cont_pri_convoycoming";
    level._ID30908["cont_pri_convoycoming"] = "cont_pri_convoycoming";
    level._ID30909["price"]["cont_pri_letthempass"] = "cont_pri_letpass";
    level._ID30908["cont_pri_letthempass"] = "cont_pri_letpass";
    level._ID30909["price"]["cont_pri_intelwasoff"] = "cont_pri_intelwasoff";
    level._ID30908["cont_pri_intelwasoff"] = "cont_pri_intelwasoff";
    level._ID30909["price"]["cont_cmt_rogerthat"] = "cont_cmt_rogerthat";
    level._ID30908["cont_cmt_rogerthat"] = "cont_cmt_rogerthat";
    level._ID30908["cont_pri_yourparachute"] = "cont_pri_yourparachute";
    level._ID30908["cont_pri_keepmoving"] = "cont_pri_keepmoving";
    level._ID30908["cont_pri_getdown"] = "cont_pri_getdown";
    level._ID30908["cont_pri_hugthewalls"] = "cont_pri_hugthewalls";
    level._ID30908["cont_pri_thatwasclose"] = "cont_pri_thatwasclose";
    level._ID30908["cont_pri_sittingducks"] = "cont_pri_sittingducks";
    level._ID30908["cont_pri_goloud"] = "cont_pri_goloud";
    level._ID30908["cont_pri_ontous"] = "cont_pri_ontous";
    level._ID30908["cont_pri_werespotted"] = "cont_pri_werespotted";
    level._ID30908["cont_pri_patience"] = "cont_pri_patience";
    level._ID30908["cont_pri_sametime"] = "cont_pri_sametime";
    level._ID30908["cont_pri_yourchance"] = "cont_pri_yourchance";
    level._ID30908["cont_pri_dontgetclose"] = "cont_pri_dontgetclose";
    level._ID30908["cont_pri_waitposition"] = "cont_pri_waitposition";
    level._ID30908["cont_pri_waitforme"] = "cont_pri_waitforme";
    level._ID30908["cont_pri_whenyoureready"] = "cont_pri_whenyoureready";
    level._ID30908["cont_pri_getuskilled"] = "cont_pri_getuskilled";
    level._ID30908["cont_pri_thewordstealth"] = "cont_pri_thewordstealth";
    level._ID30908["cont_pri_giveawayposition"] = "cont_pri_giveawayposition";
    level._ID30908["cont_pri_lowprofile"] = "cont_pri_lowprofile";
    level._ID30908["cont_pri_moveup"] = "cont_pri_moveup";
    level._ID30908["cont_pri_move"] = "cont_pri_move";
    level._ID30908["cont_pri_hideinwoods"] = "cont_pri_hideinwoods";
    level._ID30908["cont_pri_getintowoods"] = "cont_pri_getintowoods";
    level._ID30908["cont_pri_theyrealerted"] = "cont_pri_theyrealerted";
    level._ID30908["cont_pri_arentlooking"] = "cont_pri_arentlooking";
    level._ID30908["cont_pri_splittingup"] = "cont_pri_splittingup";
    level._ID30908["cont_pri_beautiful"] = "cont_pri_beautiful";
    level._ID30908["cont_pri_goodshot"] = "cont_pri_goodshot";
    level._ID30908["cont_pri_gotone"] = "cont_pri_gotone";
    level._ID30908["cont_pri_hesdown2"] = "cont_pri_hesdown2";
    level._ID30908["cont_pri_tangodown"] = "cont_pri_tangodown";
    level._ID30908["cont_pri_goodnight"] = "cont_pri_goodnight";
    level._ID30908["cont_pri_targeteliminated"] = "cont_pri_targeteliminated";
    level._ID30908["cont_pri_targetdown"] = "cont_pri_targetdown";
    level._ID30908["cont_pri_henoticed"] = "cont_pri_henoticed";
    level._ID30908["cont_pri_getoutofsight"] = "cont_pri_getoutofsight";
    level._ID30908["cont_pri_hidebeenalerted"] = "cont_pri_hidebeenalerted";
    level._ID30908["cont_pri_hesalerted"] = "cont_pri_hesalerted";
    level._ID30908["cont_pri_dogpatrol"] = "cont_pri_dogpatrol";
    level._ID30908["cont_pri_3manpatrol"] = "cont_pri_3manpatrol";
    level._ID30908["cont_pri_largepatrol12"] = "cont_pri_largepatrol12";
    level._ID30908["cont_pri_anotherdogpatrol"] = "cont_pri_anotherdogpatrol";
    level._ID30908["cont_pri_anotherpatrol"] = "cont_pri_anotherpatrol";
    level._ID30908["cont_pri_yourcall"] = "cont_pri_yourcall";
    level._ID30908["cont_pri_cantslipby"] = "cont_pri_cantslipby";
    level._ID30908["cont_pri_outoraround"] = "cont_pri_outoraround";
    level._ID30909["price"]["cont_pri_incoming"] = "cont_pri_incoming";
    level._ID30908["cont_pri_incoming"] = "cont_pri_incoming";
    level._ID30908["cont_pri_getdown2"] = "cont_pri_getdown2";
    level._ID30909["price"]["cont_pri_intothewoods"] = "cont_pri_intothewoods";
    level._ID30908["cont_pri_intothewoods"] = "cont_pri_intothewoods";
    level._ID30909["price"]["cont_pri_followme"] = "cont_pri_followme";
    level._ID30908["cont_pri_followme"] = "cont_pri_followme";
    level._ID30909["price"]["cont_pri_slowdown"] = "cont_pri_slowdown";
    level._ID30908["cont_pri_slowdown"] = "cont_pri_slowdown";
    level._ID30908["cont_pri_hatedogs"] = "cont_pri_hatedogs";
    level._ID30908["cont_pri_gotm"] = "cont_pri_gotm";
    level._ID30908["cont_pri_hesdown"] = "cont_pri_hesdown";
    level._ID30908["cont_pri_downboy"] = "cont_pri_downboy";
    level._ID30908["cont_pri_naptime"] = "cont_pri_naptime";
    level._ID30909["price"]["cont_pri_airsupport"] = "cont_pri_airsupport";
    level._ID30908["cont_pri_airsupport"] = "cont_pri_airsupport";
    level._ID30908["cont_cmt_almostinpos"] = "cont_cmt_almostinpos";
    level._ID30909["price"]["cont_pri_rogerthat"] = "cont_pri_rogerthat";
    level._ID30908["cont_pri_rogerthat"] = "cont_pri_rogerthat";
    level._ID30909["price"]["cont_pri_ridgeisperfect"] = "cont_pri_ridgeisperfect";
    level._ID30908["cont_pri_ridgeisperfect"] = "cont_pri_ridgeisperfect";
    level._ID30909["price"]["cont_pri_controluav"] = "cont_pri_controluav";
    level._ID30908["cont_pri_controluav"] = "cont_pri_controluav";
    level._ID30909["price"]["cont_pri_bollocks"] = "cont_pri_bollocks";
    level._ID30908["cont_pri_bollocks"] = "cont_pri_bollocks";
    level._ID30908["cont_cmt_whathappened"] = "cont_cmt_whathappened";
    level._ID30909["price"]["cont_pri_mobilesaminvillage"] = "cont_pri_mobilesaminvillage";
    level._ID30908["cont_pri_mobilesaminvillage"] = "cont_pri_mobilesaminvillage";
    level._ID30909["price"]["cont_pri_uavsharpish"] = "cont_pri_uavsharpish";
    level._ID30908["cont_pri_uavsharpish"] = "cont_pri_uavsharpish";
    level._ID30909["price"]["cont_pri_roachletsgo"] = "cont_pri_roachletsgo";
    level._ID30908["cont_pri_roachletsgo"] = "cont_pri_roachletsgo";
    level._ID30909["rasta"]["cont_rst_standback"] = "cont_rst_standback";
    level._ID30909["rasta"]["cont_rst_getback"] = "cont_rst_getback";
    level._ID30909["rasta"]["cont_rst_checkfire"] = "cont_rst_checkfire";
    level._ID30909["price"]["cont_pri_nicework"] = "cont_pri_nicework";
    level._ID30909["rasta"]["cont_rst_getmoving"] = "cont_rst_getmoving";
    level._ID30909["price"]["cont_pri_grabweapon"] = "cont_pri_grabweapon";
    level._ID30909["price"]["cont_pri_rastaandbricktop"] = "cont_pri_rastaandbricktop";
    level._ID30908["cont_cmt_2nduav"] = "cont_cmt_2nduav";
    level._ID30909["price"]["cont_pri_belowcrane"] = "cont_pri_belowcrane";
    level._ID30909["price"]["cont_pri_softendefenses"] = "cont_pri_softendefenses";
    level._ID30908["cont_cmt_gotattention"] = "cont_cmt_gotattention";
    level._ID30908["cont_cmt_baseonalert"] = "cont_cmt_baseonalert";
    level._ID30908["cont_cmt_betterhurry"] = "cont_cmt_betterhurry";
    level._ID30909["price"]["cont_pri_weremoving"] = "cont_pri_weremoving";
    level._ID30908["cont_cmt_halwaythere"] = "cont_cmt_halwaythere";
    level._ID30908["cont_cmt_90secs"] = "cont_cmt_90secs";
    level._ID30908["cont_cmt_60secs"] = "cont_cmt_60secs";
    level._ID30908["cont_cmt_30secs"] = "cont_cmt_30secs";
    level._ID30909["price"]["cont_pri_subwontwait"] = "cont_pri_subwontwait";
    level._ID30909["price"]["cont_pri_gogogo"] = "cont_pri_gogogo";
    level._ID30909["price"]["cont_pri_gettosub"] = "cont_pri_gettosub";
    level._ID30909["price"]["cont_pri_reachedsub"] = "cont_pri_reachedsub";
    level._ID30908["cont_cmt_rogerthat2"] = "cont_cmt_rogerthat2";
    level._ID30909["price"]["cont_pri_getmaskon"] = "cont_pri_getmaskon";
    level._ID30909["price"]["cont_pri_downthehatch"] = "cont_pri_downthehatch";
    level._ID30909["price"]["cont_pri_needfewminutes"] = "cont_pri_needfewminutes";
    level._ID30908["cont_cmt_eastgate"] = "cont_cmt_eastgate";
    level._ID30909["price"]["cont_pri_copythatsoap"] = "cont_pri_copythatsoap";
    level._ID30909["price"]["cont_pri_almostdone"] = "cont_pri_almostdone";
    level._ID30908["cont_cmt_muchlonger"] = "cont_cmt_muchlonger";
    level._ID30909["price"]["cont_pri_notsinking"] = "cont_pri_notsinking";
    level._ID30908["cont_cmt_bloodyhell"] = "cont_cmt_bloodyhell";
    level._ID30909["price"]["cont_pri_notime"] = "cont_pri_notime";
    level._ID30909["price"]["cont_pri_runningout"] = "cont_pri_runningout";
    level._ID30909["price"]["cont_pri_trustme"] = "cont_pri_trustme";
    level._ID30909["price"]["cont_pri_donehereletsgo"] = "cont_pri_donehereletsgo";
    level._ID30909["price"]["cont_pri_gettotruck"] = "cont_pri_gettotruck";
    level._ID30909["price"]["cont_pri_endawar"] = "cont_pri_endawar";
    level._ID30909["price"]["cont_pri_usehellfire"] = "cont_pri_usehellfire";
    level._ID30909["price"]["cont_pri_takeoutheli"] = "cont_pri_takeoutheli";
    level._ID30908["cont_pri_fivemen"] = "cont_pri_fivemen";
    level._ID30908["cont_cmt_hatedogs"] = "cont_cmt_hatedogs";
    level._ID30908["cont_pri_twoonright"] = "cont_pri_twoonright";
    level._ID30908["cont_pri_searchingforus"] = "cont_pri_searchingforus";
    level._ID30909["price"]["cont_pri_armoredvehicle"] = "cont_pri_armoredvehicle";
    level._ID30909["price"]["cont_pri_goingforsub"] = "cont_pri_goingforsub";
    level._ID30909["price"]["cont_pri_coverme"] = "cont_pri_coverme";
    level._ID30909["rasta"]["cont_gst_rogerthat"] = "cont_gst_rogerthat";
    level._ID30909["rasta"]["cont_gst_guardhouse"] = "cont_gst_guardhouse";
    level._ID30908["cont_pri_insidesub"] = "cont_pri_insidesub";
    level._ID30909["rasta"]["cont_gst_twotruckseast"] = "cont_gst_twotruckseast";
    level._ID30909["rasta"]["cont_gst_morevehicleseast"] = "cont_gst_morevehicleseast";
    level._ID30909["rasta"]["cont_gst_nexttosub"] = "cont_gst_nexttosub";
    level._ID30909["rasta"]["cont_gst_youthere"] = "cont_gst_youthere";
    level._ID30909["rasta"]["cont_gst_comein"] = "cont_gst_comein";
    level._ID30909["rasta"]["cont_gst_doyoucopy"] = "cont_gst_doyoucopy";
    level._ID30908["cont_pri_good2"] = "cont_pri_good2";
    level._ID30909["rasta"]["cont_gst_whatwait"] = "cont_gst_whatwait";
    level._ID30909["rasta"]["cont_gst_codeblack"] = "cont_gst_codeblack";
    level._ID30909["rasta"]["cont_gst_whathaveyoudone"] = "cont_gst_whathaveyoudone";
    level._ID30908["cont_pri_russiandogs"] = "cont_pri_russiandogs";
    level._ID30908["cont_cmt_haveyouback"] = "cont_cmt_haveyouback";
    level._ID30908["cont_pri_rogerthat2"] = "cont_pri_rogerthat2";
    level._ID30908["cont_cmt_directhitshelo"] = "cont_cmt_directhitshelo";
    level._ID30908["cont_cmt_btrdestroyed"] = "cont_cmt_btrdestroyed";
    level._ID30908["cont_cmt_directhitjeep"] = "cont_cmt_directhitjeep";
    level._ID30908["cont_cmt_goodkilltruck"] = "cont_cmt_goodkilltruck";
    level._ID30908["cont_cmt_goodhitvehicles"] = "cont_cmt_goodhitvehicles";
    level._ID30908["cont_cmt_goodeffectkia"] = "cont_cmt_goodeffectkia";
    level._ID30908["cont_cmt_fivepluskias"] = "cont_cmt_fivepluskias";
    level._ID30908["cont_cmt_mutlipleconfirmed"] = "cont_cmt_mutlipleconfirmed";
    level._ID30908["cont_cmt_3kills"] = "cont_cmt_3kills";
    level._ID30908["cont_cmt_theyredown"] = "cont_cmt_theyredown";
    level._ID30908["cont_cmt_directhit"] = "cont_cmt_directhit";
    level._ID30908["cont_cmt_hesdown"] = "cont_cmt_hesdown";
    level._ID44684 = 1;
    level._ID30908["uav_reloading"] = "cont_cmt_rearmhellfires";
    level._ID30908["uav_offline"] = "cont_cmt_hellfiresoffline";
    level._ID30908["uav_online"] = "cont_cmt_hellfireonline";
    level._ID30908["uav_online_repeat"] = "cont_cmt_repeatonline";
    level._ID30908["uav_down"] = "cont_cmt_predatordown";
    level._ID30908["cont_cmt_barelysee"] = "cont_cmt_barelysee";
    level._ID30909["price"]["cont_pri_strobes"] = "cont_pri_strobes";
}
#using_animtree("script_model");

_ID50600()
{
    level._ID30900["tree_snow_tall"] = #animtree;
    level._ID30895["tree_snow_tall"]["idle_slow"][0] = %h2_foliage_contingency_snow_tall_slowidle;
    level._ID30895["tree_snow_tall"]["fall_broken"] = %h2_foliage_contingency_snow_tall_broken_fall;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_01"] = %h2_contingency_falling_tree_01;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_02"] = %h2_contingency_falling_tree_02;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_03"] = %h2_contingency_falling_tree_03;
    _ID42259::_ID2058( "tree_snow_tall", "kill_player", maps\contingency::h2_tree_hit_ground_check, "h2_contingency_falling_tree_03" );
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_05"] = %h2_contingency_falling_tree_05;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_10"] = %h2_contingency_falling_tree_10;
    _ID42259::_ID2058( "tree_snow_tall", "kill_player", maps\contingency::h2_tree_hit_ground_check, "h2_contingency_falling_tree_10" );
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_11"] = %h2_contingency_falling_tree_11;
    _ID42259::_ID2058( "tree_snow_tall", "kill_player", maps\contingency::h2_tree_hit_ground_check, "h2_contingency_falling_tree_11" );
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_12"] = %h2_contingency_falling_tree_12;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_13"] = %h2_contingency_falling_tree_13;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_14"] = %h2_contingency_falling_tree_14;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_15"] = %h2_contingency_falling_tree_15;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_16"] = %h2_contingency_falling_tree_16;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_17"] = %h2_contingency_falling_tree_17;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_18"] = %h2_contingency_falling_tree_18;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_19"] = %h2_contingency_falling_tree_19;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_20"] = %h2_contingency_falling_tree_20;
    level._ID30895["tree_snow_tall"]["h2_contingency_falling_tree_21"] = %h2_contingency_falling_tree_21;
    level._ID30900["tree_snow_mid"] = #animtree;
    level._ID30895["tree_snow_mid"]["idle_slow"][0] = %h2_foliage_contingency_snow_tall_slowidle;
    level._ID30895["tree_snow_mid"]["h2_contingency_falling_tree_04"] = %h2_contingency_falling_tree_04;
    _ID42259::_ID2058( "tree_snow_mid", "kill_player", maps\contingency::h2_tree_hit_ground_check, "h2_contingency_falling_tree_04" );
    level._ID30895["tree_snow_mid"]["h2_contingency_falling_tree_06"] = %h2_contingency_falling_tree_06;
    level._ID30895["tree_snow_mid"]["h2_contingency_falling_tree_07"] = %h2_contingency_falling_tree_07;
    level._ID30895["tree_snow_mid"]["h2_contingency_falling_tree_08"] = %h2_contingency_falling_tree_08;
    _ID42259::_ID2058( "tree_snow_mid", "kill_player", maps\contingency::h2_tree_hit_ground_check, "h2_contingency_falling_tree_08" );
    level._ID30895["tree_snow_mid"]["h2_contingency_falling_tree_09"] = %h2_contingency_falling_tree_09;
    _ID42259::_ID2058( "tree_snow_mid", "kill_player", maps\contingency::h2_tree_hit_ground_check, "h2_contingency_falling_tree_09" );
    level._ID30900["tree_snow_react"] = #animtree;
    level._ID30895["tree_snow_react"]["idle_slow"][0] = %h2_foliage_contingency_snow_tall_slowidle;
    level._ID30895["tree_snow_react"]["h2_contingency_shake_tree"] = %h2_contingency_shake_tree;
    level._ID30900["hatch"] = #animtree;
    level._ID30895["hatch"]["hatch_anim"] = %h2_contingency_submarine_hatchdoor;
    level._ID30900["animated_cable"] = #animtree;
    level._ID30895["animated_cable"]["crane_idle"][0] = %h2_con_crane_05_idle;
    level._ID30900["bushes"] = #animtree;
    level._ID30895["bushes"]["bushes_shuffle"] = %h2_contingency_bushes_shuffle;
    level._ID30895["bushes"]["bushes_idle"] = %h2_contingency_bushes_idle;
    level._ID30895["bushes"]["bushes_shuffle_add_loop"] = %h2_contingency_bushes_add_loop;
    level._ID30895["bushes"]["bushes_shuffle_add_loop_anim"] = %h2_contingency_bushes_walkthroughshuffle;
    level._ID30900["parachute"] = #animtree;
    level._ID30895["parachute"]["hanging_idle"] = %h2_invasion_parachute_hanging_idle;
    level._ID30900["ice_chunk"] = #animtree;
    level._ID30895["ice_chunk"]["h2_gulag_ice_chunk_01_idle"][0] = %h2_gulag_ice_chunk_01_idle;
    level._ID30895["ice_chunk"]["h2_gulag_ice_chunk_02_idle"][0] = %h2_gulag_ice_chunk_02_idle;
    level._ID30895["ice_chunk"]["h2_gulag_ice_chunk_03_idle"][0] = %h2_gulag_ice_chunk_03_idle;
    level._ID30895["ice_chunk"]["h2_gulag_ice_chunk_04_idle"][0] = %h2_gulag_ice_chunk_04_idle;
    level._ID30895["ice_chunk"]["h2_gulag_ice_chunk_05_idle"][0] = %h2_gulag_ice_chunk_05_idle;
    level._ID30895["ice_chunk"]["h2_gulag_ice_chunk_06_idle"][0] = %h2_gulag_ice_chunk_06_idle;
    level._ID30895["ice_chunk"]["h2_gulag_ice_chunk_07_idle"][0] = %h2_gulag_ice_chunk_07_idle;
    level._ID30895["ice_chunk"]["h2_gulag_ice_chunk_08_idle"][0] = %h2_gulag_ice_chunk_08_idle;
    level._ID30900["animated_buoy"] = #animtree;
    level._ID30895["animated_buoy"]["h2_contingency_buoy_idle"][0] = %h2_contingency_buoy_idle;
    level._ID30895["animated_buoy"]["h2_contingency_buoy_idle_calm"][0] = %h2_contingency_buoy_idle_calm;
    level._ID30895["animated_buoy"]["h2_contingency_small_buoy_idle"][0] = %h2_contingency_small_buoy_idle;
    level._ID30895["animated_buoy"]["h2_contingency_small_buoy_idle_calm"][0] = %h2_contingency_small_buoy_idle_calm;
}
#using_animtree("player");

_ID27230()
{
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_tf141_arctic";
    level._ID30895["worldbody"]["slide_in"] = %h2_contingency_slide_player_in;
    level._ID30895["worldbody"]["slide_loop"][0] = %h2_contingency_slide_player_idle;
    level._ID30895["worldbody"]["slide_out"] = %h2_contingency_slide_player_out;
    level._ID30895["worldbody"]["slide_back_loop"][0] = %h2_cliffhanger_slide_back;
    level._ID30895["worldbody"]["slide_back_in"] = %h2_cliffhanger_slide_back_in;
    level._ID30895["worldbody"]["slide_back_out"] = %h2_cliffhanger_slide_back_out;
    level._ID30895["worldbody"]["slide_ar"] = %h2_contingency_slide_player_turnl;
    level._ID30895["worldbody"]["slide_al"] = %h2_contingency_slide_player_turnr;
    _ID42259::_ID2058( "worldbody", "slide_fx_start", ::_ID44893, "slide_in", [ "tag_origin" ] );
    _ID42259::_ID2058( "worldbody", "slide_fx_end", ::_ID49745, "slide_out" );
    _ID42259::_ID2058( "worldbody", "slide_fx_end", ::_ID49745, "slide_back_out" );
}
