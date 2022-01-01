// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42237::_ID14400( "obj_heli_ride_complete" );
    _ID42237::_ID14400( "player_crash_done" );
    _ID42237::_ID14400( "obj_crash_site_given" );
    _ID42237::_ID14400( "obj_crash_site_complete" );
    _ID42237::_ID14400( "crash_actors_ready" );
    _ID42237::_ID14400( "crash_fade_up" );
    _ID42237::_ID14400( "crash_redshirt_speaks" );
    _ID42237::_ID14400( "macey_last_mag_dialogue" );
    _ID42237::_ID14400( "give_player_weapon" );
    _ID42237::_ID14400( "redshirt_headshot" );
    _ID42237::_ID14400( "player_ran_out_of_first_clip" );
    _ID42237::_ID14400( "macey_clip_to_player" );
    _ID42237::_ID14400( "macey_wont_throw_clip_to_player" );
    _ID42237::_ID14400( "macey_should_throw_clip_to_player" );
    _ID42237::_ID14400( "end_sequence_music" );
    _ID42237::_ID14400( "end_sequence_starting" );
    _ID42237::_ID14400( "friendly_02_injured" );
    _ID42237::_ID14400( "crash_cut_to_black" );
    _ID42237::_ID14400( "notetrack_player_upright" );
    _ID42237::_ID14400( "notetrack_player_raisehands" );
    _ID42237::_ID14400( "notetrack_player_lowerhands" );
    _ID42237::_ID14400( "emp_entity_cleanup_done" );
    _ID42237::_ID14400( "emp_back_from_whiteout" );
    _ID42237::_ID14400( "first_wave_done" );
    _ID42237::_ID14400( "can_talk_crashsite" );
    _ID42237::_ID14402( "can_talk_crashsite" );
    _ID42237::_ID14400( "emp_happening" );
    precacheshellshock( "dcburning" );
    precachemodel( "weapon_m4_clip" );
    precachemodel( "viewhands_player_us_army" );
    precacheturret( "heli_spotlight" );
    precachemodel( "weapon_m4" );
    precachemodel( "viewbody_us_army_injured" );
    precachemodel( "head_us_army_b" );
    _ID48275();
    _ID43949();
    _ID53995();
    crash_script_model_anims();
    _ID42237::_ID3350( getvehiclenodearray( "plane_sound", "script_noteworthy" ), _ID42549::_ID26746 );
    _ID46630::_ID616();
    maps\dcburning_lighting::_ID616();
}

_ID49092()
{
    _ID42407::_ID3343( "axis_crash", ::_ID52106 );
    thread _ID45252();
    thread _ID50866();
    thread _ID50054();
    thread _ID46680();
    thread _ID47825();
    thread _ID49677();
    thread traffic_signal_animated();
}

player_crash_site_cinematic()
{
    waittillframeend;
    var_0 = _ID54167::_ID43386( "crash_site_cinematic" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 2.8, -1, 8, 8 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 14.0 ) _ID54167::_ID50321( 4.5, -1, 8, 8 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 );
    var_0 _ID54167::_ID48800( 17.2 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_init", 1 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_play", 3 ) _ID54167::_ID43376( ::setsaveddvar, undefined, "ui_consciousnessVignetteDarkness", 0.2 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 12.2 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.15 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 0.0, 0.0, 0.0, 2, 2, 1, 1 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 3.3 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 2.0, 0.9, 0.9, 5, 5, 3, 3 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 5.3 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 2.0, 0.9, 0.9, 2, 2, 1, 1 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 7.5 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 1.3, 0.6, 0.6, 10, 10, 7, 7 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 9.85 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 1.6, 0.8, 0.8, 2, 2, -5, 7 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 12.5 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 1.1, 1.0, 1.0, 10, 10, 7, 7 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 14.3 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 1.0, 0.5, 0.5, 0, 0, 0, 0 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 55, 0.05, 0 );
    var_0 _ID54167::_ID48800( 0.1 ) _ID54167::_ID43500( 5.5, 0 );
    var_0 _ID54167::_ID48800( 9.65 ) _ID54167::_ID44191( 60, 2.1, 0 );
    var_0 _ID54167::_ID48800( 12.0 ) _ID54167::_ID43500( 2.65, 0 );
    var_0 _ID54167::_ID48800( 3.6 ) _ID54167::_ID47198( 0.05, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 4.75 ) _ID54167::_ID47198( 0.05, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 5.5 ) _ID54167::_ID47198( 0.08, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 7.35 ) _ID54167::_ID47198( 0.1, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 15.3 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 16.0 ) _ID54167::_ID47198( 0.1, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48166();
    setomnvar( "ui_consciousness_play", 0 );
}

_ID50054()
{
    var_0 = getent( "crash_chatter_org_left", "targetname" );
    var_1 = getent( "crash_chatter_org_right", "targetname" );
    _ID42237::_ID14413( "crash_actors_ready" );
    _ID42407::_ID28864( "dcburn_hqr_doyoucopy" );
    wait 1;
    _ID42407::_ID28864( "dcburn_hqr_howcopy" );
    wait 1;
    var_0 _ID42237::_ID10192( 1.5, ::playsound, "dcburn_ar3_twomags" );
    level._ID49792 _ID42407::_ID10805( "dcburn_cpd_target2" );
    wait 2;
    level._ID44035 _ID42407::_ID10805( "dcburn_mcy_talktome" );
    var_1 _ID42237::_ID10192( 0, ::playsound, "dcburn_ar4_watch3" );
    wait 1;
    level._ID49792 thread _ID42407::_ID10805( "dcburn_cpd_target11" );
    _ID42237::_ID14413( "crash_redshirt_speaks" );
    level._ID48061._ID49204 = _ID42237::_ID35164();
    level._ID48061._ID49204._ID740 = level._ID794._ID740;
    level._ID48061._ID49204 linkto( level._ID794 );
    level._ID48061._ID49204 thread _ID50587( "redshirt_headshot" );
    level._ID48061._ID49204 thread _ID42407::_ID27081( "dcburn_gr1_hangon", "tag_origin" );
    _ID42237::_ID14413( "redshirt_headshot" );
    wait 1;
    var_0 _ID42237::_ID10192( 1, ::playsound, "dcburn_ar1_reloadingcover" );
    level._ID44035 _ID42407::_ID10805( "dcburn_mcy_wadesdown" );
    _ID42237::_ID14402( "obj_crash_site_given" );
    wait 2;
    var_1 _ID42237::_ID27077( "dcburn_ar2_mccordcovering" );
    wait 4;
    var_0 _ID42237::_ID10192( 0, ::playsound, "dcburn_ar2_lastmag" );
    _ID42237::_ID14413( "macey_last_mag_dialogue" );
    level._ID44035 _ID42407::_ID27079( "dcburn_mcy_lastone" );
    wait 0.5;
    level._ID44035 _ID42407::_ID10805( "dcburn_mcy_ammocheck" );
    var_1 _ID42237::_ID10192( 0.3, ::playsound, "dcburn_ar4_imgood" );
    wait 1.5;
    level._ID49792 _ID42407::_ID10805( "dcburn_cpd_toomany" );
    var_1 _ID42237::_ID27077( "dcburn_ar2_seanlast" );
    level._ID44035 thread _ID42407::_ID10805( "dcburn_mcy_soundoff" );
    _ID42237::_ID14413( "end_sequence_starting" );
    var_0 = getent( "crash_chatter_org_left", "targetname" );
    var_1 = getent( "crash_chatter_org_right", "targetname" );
    var_1 _ID42237::_ID10192( 0, ::playsound, "dcburn_ar1_newtarget" );
    wait 1;
    wait 1;
    var_0 _ID42237::_ID10192( 0.6, ::playsound, "dcburn_ar2_gotitgotit" );
}

_ID50587( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( var_0 );

    if ( isdefined( self ) )
        self delete();
}

_ID45252()
{
    level._ID794 enableinvulnerability();
    level._ID44303 = 1;
    level._ID49598 = ( 0, 0, 0 );
    level._ID1426["mortar"]["dirt"] = loadfx( "fx/explosions/grenadeExp_dirt" );
    var_0 = getent( "crash_node", "targetname" );
    var_1 = _ID52955();
    _ID42237::_ID14413( "player_crash_done" );

    if ( level._ID912 == "dcburning" )
        thread _ID42407::_ID4433( 1 );

    if ( level._ID912 == "dc_burning" )
    {
        setsaveddvar( "sm_sunSampleSizeNear", 0.25 );
        setsaveddvar( "sm_sunShadowScale", 1 );
    }

    if ( level._ID912 == "dc_burning" )
        maps\dcburning_lighting::_ID51844( "dcburning_crash" );

    if ( getdvarint( "r_dcburning_culldist" ) == 1 )
    {
        level._ID50401 = _func_44();
        setculldist( 23000 );
    }

    _ID42407::_ID24584();

    if ( level._ID912 == "dc_burning" )
    {
        _ID42237::_ID3350( level._ID52835, _ID42237::_ID26402 );
        _ID42237::_ID3350( level._ID53293, _ID42237::_ID26402 );
        _ID42237::_ID3350( level._ID44593, _ID42237::_ID26402 );
    }

    if ( !isdefined( level._ID5261 ) )
    {
        level._ID5261 = _ID42313::_ID9125( "black", 1 );
        level._ID5261._ID408 = 0;
    }

    var_2 = [];
    level._ID44035 = _ID42407::_ID35168( "teamLeaderCrash", 1 );
    level._ID49792 = _ID42407::_ID35168( "friendly02Crash", 1 );
    level._ID48061 = _ID42407::_ID35168( "friendly03Crash", 1 );
    level._ID48061 _ID42226::_ID32651( "head_us_army_b" );
    level._ID44035 hide();
    level._ID49792 hide();
    level._ID48061 hide();
    level._ID44035._ID3189 = "crash_leader";
    level._ID49792._ID3189 = "crash_dunn";
    level._ID48061._ID3189 = "crash_redshirt";
    level._ID44035 thread _ID49720();
    level._ID49792 thread _ID49720();
    level._ID48061 thread _ID49720();
    level._ID44035 thread _ID42407::_ID22746( 1 );
    level._ID49792 thread _ID42407::_ID22746( 1 );
    level._ID44035 _ID42407::_ID32309( 0 );
    level._ID49792 _ID42407::_ID32309( 0 );
    level._ID48061 _ID42407::_ID32309( 0 );
    var_0 = getent( "crash_node", "targetname" );
    var_3 = _ID42407::_ID35028( "player_rig" );
    level._ID794._ID49929 = var_3;
    var_2[0] = var_3;
    var_2[1] = level._ID48061;
    level._ID52855 = spawn( "script_model", ( 0, 0, 0 ) );
    level._ID52855 setmodel( "weapon_m4" );
    level._ID52855 hidepart( "TAG_THERMAL_SCOPE" );
    level._ID52855 hidepart( "TAG_FOREGRIP" );
    level._ID52855 hidepart( "TAG_ACOG_2" );
    level._ID52855 hidepart( "TAG_HEARTBEAT" );
    level._ID52855 hidepart( "TAG_RED_DOT" );
    level._ID52855 hidepart( "TAG_SHOTGUN" );
    level._ID52855 hidepart( "TAG_SILENCER" );
    level._ID52855 _ID42407::_ID3428( "weapon_m4" );
    var_2[2] = level._ID52855;
    var_0 _ID42259::_ID3016( var_2, "dcburning_BHrescue" );
    level._ID794 freezecontrols( 1 );
    level._ID794 playerlinktodelta( var_3, "tag_player", 1, 0, 0, 0, 0, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    thread _ID47240( var_1["top_left"], var_1["bot_right"], var_3 );
    _ID42237::_ID14402( "crash_actors_ready" );
    wait 3;
    _ID42237::_ID14402( "obj_heli_ride_complete" );
    thread crash_remove_vehicles();
    wait 4;
    _ID47493( "dummy_spawner_axis_crash_flood" );
    var_4 = getentarray( "axis_crash_drones", "targetname" );
    thread _ID48385( var_4, "axis_crash_drones" );
    _ID42237::_ID14402( "crash_fade_up" );

    if ( level._ID912 == "dcburning" || level._ID912 == "dcemp" )
        _ID42475::_ID34575( "stop_heli_crash_black_screen" );

    _ID42407::_ID10226( 8, _ID54017::_ID43738, 3 );
    level._ID5261 fadeovertime( 2 );
    level._ID5261._ID55 = 0;
    level._ID48061 show();
    var_5 = _ID42407::_ID3339( getentarray( "hostiles_drones_crash_site_01", "targetname" ) );
    level._ID48061._ID309 = 0;
    level._ID48061._ID31276 = 0;
    level._ID48061 setcontents( 0 );
    level._ID48061._ID34237 = 1;
    level._ID48061._ID24924 = 1;
    level._ID48061._ID7._ID24881 = 1;
    level._ID48061._ID24817 = 1;
    var_0 thread _ID42259::_ID3099( var_2, "dcburning_BHrescue" );
    thread player_crash_site_cinematic();
    level._ID52855 _ID42237::_ID10192( getanimlength( level._ID52855 _ID42407::_ID16120( "dcburning_BHrescue" ) ), ::delete );
    var_6 = [];
    var_6[0] = level._ID44035;
    var_6[1] = level._ID49792;
    level._ID44035 show();
    level._ID49792 show();
    var_0 _ID42259::_ID3099( var_6, "vehicle_cover" );
    _ID42237::_ID14402( "first_wave_done" );
    _ID42237::_ID14402( "macey_should_throw_clip_to_player" );
    thread _ID46462();
    var_7 = getanimlength( level._ID44035 _ID42407::_ID16120( "dcburning_BHrescue_throwclip" ) ) - 5.0;
    thread _ID42407::_ID14403( "end_sequence_music", var_7 );
    var_0 _ID42259::_ID3099( var_6, "dcburning_BHrescue_throwclip" );
    _ID42237::_ID14402( "end_sequence_starting" );
    _ID42407::_ID10226( 2, _ID54017::_ID49923, 3 );
    var_0 thread _ID42259::_ID3099( var_6, "dcburning_BHrescue_laststand" );
    level._ID49792 _ID42407::_ID10226( 4, _ID42407::_ID27079, "dcburn_cpd_tracer3rounds" );

    foreach ( var_9 in var_6 )
        var_9._ID47696 = 1;

    level._ID794._ID511 = 1;
    _ID42237::_ID14413( "crash_cut_to_black" );
    level._ID5261 destroy();
    _ID43497();
}

_ID43236( var_0 )
{
    _ID42237::_ID14413( var_0 );

    if ( isdefined( self ) )
        self delete();
}

_ID46462()
{

}

_ID47825()
{
    _ID42237::_ID14413( "player_crash_done" );
    level._ID794 takeallweapons();
    level._ID794 disableweapons();

    if ( level._ID912 == "dcburning" )
    {
        level._ID43135.greenberet_currentweapon = "m4m203_eotech";
        level._ID43135.greenberet_previousweapons = [];
        level._ID43135.greenberet_previousweapons["m4m203_eotech"] = [];
        level._ID43135.greenberet_previousweapons["m4m203_eotech"]["ammoClip"] = 30;
        level._ID43135.greenberet_previousweapons["m4m203_eotech"]["ammoStock"] = 0;
        level._ID43135.greenberet_previousweapons["m4m203_eotech"]["akimbo"] = 0;
    }

    _ID42237::_ID14413( "give_player_weapon" );
    thread _ID42407::_ID4433( 1 );
    setsaveddvar( "hud_showStance", "1" );
    setsaveddvar( "ui_hidemap", 0 );
    setsaveddvar( "hud_drawhud", "1" );
    setsaveddvar( "hud_showStance", "1" );
    setsaveddvar( "compass", "1" );
    setdvar( "old_compass", "1" );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "actionSlotsHide", "0" );
    level._ID794 allowcrouch( 1 );
    level._ID794 disableoffhandweapons();
    level._ID794 giveweapon( "m4m203_eotech" );
    level._ID794 setweaponammoclip( "m4m203_eotech", 0 );
    level._ID794 setweaponammostock( "m4m203_eotech", 0 );
    level._ID794 setweaponammoclip( "m203_m4_eotech", 0 );
    level._ID794 setweaponammostock( "m203_m4_eotech", 0 );
    level._ID794 switchtoweapon( "m4m203_eotech" );
    level._ID794 enableweapons();

    if ( level._ID912 == "dcemp" )
    {
        if ( !level._ID50958 )
        {
            level._ID794 setoffhandprimaryclass( "fraggrenade" );
            level._ID794 giveweapon( "fraggrenade" );
            level._ID794 setweaponammostock( "fraggrenade", 0 );
        }

        if ( !level._ID52856 )
        {
            level._ID794 setoffhandsecondaryclass( "flash_grenade" );
            level._ID794 giveweapon( "flash_grenade" );
            level._ID794 setweaponammostock( "flash_grenade", 0 );
        }

        level._ID794 enableoffhandweapons();
    }

    level._ID794 setweaponammoclip( "m4m203_eotech", 30 );
    level._ID794 setweaponammostock( "m4m203_eotech", 0 );
    thread _ID50279();
    _ID42237::_ID14421( "macey_wont_throw_clip_to_player", "macey_should_throw_clip_to_player" );

    if ( _ID42237::_ID14385( "macey_should_throw_clip_to_player" ) )
    {
        _ID42237::_ID14413( "macey_clip_to_player" );
        level._ID794 playsound( "scn_dcemp_player_receive_ammo" );
        level._ID794 setweaponammostock( "m4m203_eotech", 30 );
        level._ID794 _meth_8440();
    }
    else
    {

    }
}

_ID54477()
{
    self waittillmatch( "single anim",  "end"  );
    var_0 = getweaponmodel( self._ID1302 );
    var_1 = self._ID1302;

    if ( isdefined( var_0 ) )
        self detach( var_0, "tag_weapon_right" );

    self kill();
}

_ID50279()
{
    while ( level._ID794 getweaponammoclip( "m4m203_eotech" ) > 0 )
        wait 0.05;

    _ID42237::_ID14402( "player_ran_out_of_first_clip" );
}

_ID45653()
{
    while ( !level._ID794 attackbuttonpressed() )
        wait 0.05;
}

_ID52955()
{
    var_0 = getent( "crash_node", "targetname" );
    level._ID794 allowstand( 1 );
    level._ID794 allowprone( 0 );
    level._ID794 _meth_830f( 0 );
    level._ID794 allowjump( 0 );
    level._ID794 allowcrouch( 0 );
    var_1 = getent( "crash_site", "targetname" );
    var_2 = getent( "heli_top_propeller", "targetname" );
    var_3 = var_1;
    var_4 = getent( "crash_site_clip", "targetname" );
    var_5 = getent( "intro_heli_after_emp_clip", "targetname" );
    var_6 = getent( "crash_site_top_bar", "targetname" );
    var_7 = getent( "crash_site_bot_bar", "targetname" );
    var_8 = getent( "movement_grid_top_left", "targetname" );
    var_9 = getent( "movement_grid_bot_right", "targetname" );
    var_10 = getent( "movement_grid_exit", "targetname" );
    var_4 show();
    var_5 notsolid();
    var_4 linkto( var_3 );
    var_8 linkto( var_3 );
    var_9 linkto( var_3 );
    var_10 linkto( var_3 );
    var_5 linkto( var_3 );
    level.plank = _ID42407::_ID35028( "plank", var_6 getorigin() );
    level.plank _ID42407::_ID3428( "plank" );

    if ( level._ID912 == "dcburning" )
    {
        var_6 linkto( var_3 );
        var_7 linkto( var_3 );
        var_0 _ID42259::_ID3018( level.plank, "dcemp_BHrescue" );
    }
    else
    {
        level._ID45381 = _ID42407::_ID35028( "plank2", var_6 getorigin() );
        level._ID45052 = _ID42407::_ID35028( "plank1", var_7 getorigin() );
        level._ID48113 = [];
        level._ID48113[0] = level._ID45052;
        level._ID48113[1] = level._ID45381;
        level._ID48113[2] = level.plank;
        var_6 linkto( level._ID45381 );
        var_7 linkto( level._ID45052 );
        var_0 _ID42259::_ID3016( level._ID48113, "dcemp_BHrescue" );
    }

    var_1._ID3189 = "crash_blackhawk";
    var_1 _ID42407::_ID3428();
    var_0 _ID42259::_ID3018( var_1, "rotors_start" );
    var_2._ID3189 = "crash_blackhawk";
    var_2 _ID42407::_ID3428();
    var_0 _ID42259::_ID3018( var_2, "rotors_start" );
    _ID42407::_ID1985( _ID42237::_ID14413, "player_crash_done" );
    _ID42407::_ID1890( ::_ID50052 );
    var_0 _ID42407::_ID1890( _ID42259::_ID3044, var_2, "rotors" );
    thread _ID42407::_ID11231();
    var_11 = [];
    var_11["top_left"] = var_8;
    var_11["bot_right"] = var_9;
    return var_11;
}

_ID43497()
{
    if ( level._ID912 == "dcburning" )
    {
        var_0 = _ID47692();
        wait 1;
        _ID49438();
        var_1 = getaiarray();
        _ID42237::_ID3350( var_1, ::_ID53169 );
        wait 2;
        _ID42407::_ID24793();
    }
    else
    {
        var_0 = _ID47692();
        level._ID41743 = var_0;

        if ( level._ID35897 != "emp" )
        {
            var_2 = [];
            var_2[var_2.size] = level._ID54159;
            var_2[var_2.size] = level._ID48741;
            var_2 = _ID42237::_ID3296( var_2, level._ID45399 );
            var_2 = _ID42237::_ID3296( var_2, level._ID48169 );
            _ID49438( var_2 );
            _ID42237::_ID3350( getaiarray( "neutral", "allies" ), ::_ID53169 );
            _ID42237::_ID3294( getentarray( "axis_crash_flood", "targetname" ), ::delete );
            level notify( "stop_drone_floodaxis_crash_drones" );
            var_3 = getentarray( "axis_crash_drone", "script_noteworthy" );
            _ID42237::_ID3294( var_3, ::delete );
        }

        _ID42237::_ID14402( "emp_entity_cleanup_done" );
        level._ID794 disableinvulnerability();

        if ( getdvarint( "r_dcburning_culldist" ) == 1 )
            setculldist( level._ID50401 );
    }
}

_ID47692()
{
    var_0 = _ID42313::_ID9125( "white", 0 );
    wait 0.6;
    var_0 fadeovertime( 0.2 );
    var_0._ID55 = 1;
    wait 0.3;
    return var_0;
}

_ID45395()
{
    var_0 = 0.25;
    ambientstop( var_0 );
}

_ID49677()
{
    _ID42237::_ID14413( "crash_redshirt_speaks" );
    _ID42407::_ID10226( 0, _ID42411::_ID35200, "jets_crash_site_01" );
    var_0 = _ID42411::_ID35200( "helis_crash_rappel" );
    _ID42237::_ID3350( var_0, _ID42411::_ID16988 );
    _ID42237::_ID14413( "end_sequence_starting" );
    var_1 = _ID42411::_ID35200( "btr80s_end" );
    _ID42237::_ID3350( var_1, _ID42411::_ID16988 );
    _ID42237::_ID3350( var_1, ::_ID51292 );
    _ID42237::_ID3350( var_1, ::_ID45707 );
    thread _ID45131( var_1 );
}

_ID51292()
{
    _ID42407::_ID13024( "stop_btr" );
    _ID42407::_ID13027( "stop_btr" );
    self vehicle_setspeed( 0, 3, 3 );
    self setturrettargetvec( level._ID794._ID740 + ( 0, 0, 32 ) );
}

_ID50052()
{
    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "hud_showStance", "0" );
    setsaveddvar( "compass", "0" );
    var_0 = getanimlength( level._ID30895["player_rig"]["dcburning_BHrescue"] );
    var_1 = var_0 + 2;
    level._ID794 shellshock( "dcburning", var_1 );
    var_2 = level._ID11390;
    _ID42237::_ID14413( "notetrack_player_upright" );
    _ID42237::_ID14413( "notetrack_player_raisehands" );
    var_3 = [];
    var_3["nearStart"] = 0;
    var_3["nearEnd"] = 0;
    var_3["nearBlur"] = 6;
    var_3["farStart"] = 30;
    var_3["farEnd"] = 70;
    var_3["farBlur"] = 2.5;
    var_4 = 3;
    thread _ID42407::_ID46938( var_2, var_3, 3 );
    _ID42262::_ID11342( var_3["nearStart"], var_3["nearEnd"], var_3["nearBlur"], var_3["farStart"], var_3["farEnd"], var_3["farBlur"], var_4, undefined );
    setblur( 0, 3 );
    _ID42237::_ID14413( "notetrack_player_lowerhands" );
    var_5 = [];
    var_5["nearStart"] = 4.7;
    var_5["nearEnd"] = 56;
    var_5["nearBlur"] = 6;
    var_5["farStart"] = 1000;
    var_5["farEnd"] = 7000;
    var_5["farBlur"] = 0;
    var_4 = 6;
    thread _ID42407::_ID46938( var_3, var_2, 6 );
    _ID42262::_ID11342( var_5["nearStart"], var_5["nearEnd"], var_5["nearBlur"], var_5["farStart"], var_5["farEnd"], var_5["farBlur"], var_4, undefined );
}

_ID46568()
{
    setblur( 3, 0.5 );
    wait 0.5;
    setblur( 0, 0.5 );
    wait 0.5;
    setblur( 3, 0.5 );
}

_ID46680()
{
    _ID42237::_ID14413( "end_sequence_music" );
    thread _ID42407::_ID24587( "mus_dcburning_crashsite_01" );
    _ID42475::_ID34575( "start_space_transition_in_mix" );
    _ID42237::_ID14413( "end_sequence_starting" );
    wait 11.5;
    _ID42237::_ID14402( "crash_cut_to_black" );
    _ID42407::_ID4917( "axis" );
}

_ID46471()
{
    var_0 = gettime();
    var_1 = var_0 - level._ID52350;

    if ( var_0 == level._ID52350 )
        return 1;
    else if ( var_1 > 5000 )
        return 0;
    else
        return 1;
}

_ID51254( var_0 )
{
    while ( !_ID42237::_ID14385( "end_sequence_starting" ) )
    {
        playfxontag( _ID42237::_ID16299( "dlight_blue" ), var_0, "tag_player" );
        wait 1;
        stopfxontag( _ID42237::_ID16299( "dlight_blue" ), var_0, "tag_player" );
        wait 0.3;
        playfxontag( _ID42237::_ID16299( "dlight_blue" ), var_0, "tag_player" );
        wait 0.5;
        stopfxontag( _ID42237::_ID16299( "dlight_blue" ), var_0, "tag_player" );
        wait 0.3;
        playfxontag( _ID42237::_ID16299( "dlight_blue" ), var_0, "tag_player" );
        wait 0.2;
        stopfxontag( _ID42237::_ID16299( "dlight_blue" ), var_0, "tag_player" );
        wait 0.4;
        playfxontag( _ID42237::_ID16299( "dlight_blue" ), var_0, "tag_player" );
        wait 0.6;
        stopfxontag( _ID42237::_ID16299( "dlight_blue" ), var_0, "tag_player" );
        wait 0.4;
    }

    stopfxontag( _ID42237::_ID16299( "dlight_blue" ), var_0, "tag_player" );
}

_ID47240( var_0, var_1, var_2 )
{
    level endon( "player_shot" );
    level endon( "player_unlinked" );
    _ID42237::_ID14413( "crash_fade_up" );
    _ID42237::_ID14413( "redshirt_headshot" );
    var_2 hide();
    var_3 = ( 0, 0, 0 );
    var_4 = getent( "crash_node", "targetname" );
    var_5 = _ID42237::_ID35164();
    var_6 = getent( "crash_site", "targetname" );
    var_6 delete();
    var_5._ID740 = level._ID794._ID740 + var_3;
    var_5._ID65 = var_2._ID65 + ( 0, 0, 0 );

    if ( level._ID912 != "dcemp" || level._ID35897 != "iss" )
    {
        level._ID794 unlink();
        level._ID794 playerlinktoblend( var_5, "tag_player", 0.5 );
        wait 0.5;
        level._ID794 playerlinktodelta( var_5, "tag_player", 1, 50, 60, 20, 15, 1 );
        level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    }

    level._ID794._ID45272 = var_5;
    var_7 = 3;
    var_8 = 0.05;
    var_9 = var_0._ID740[0];
    var_10 = var_1._ID740[1];
    var_11 = var_1._ID740[0];
    var_12 = var_0._ID740[1];
    var_13 = undefined;
    var_14 = undefined;
    var_15 = undefined;

    for (;;)
    {
        wait(var_8);
        var_16 = level._ID794 getnormalizedmovement();
        var_17 = anglestoforward( level._ID794._ID65 );
        var_18 = anglestoright( level._ID794._ID65 );
        var_17 *= ( var_16[0] * var_7 );
        var_18 *= ( var_16[1] * var_7 );
        var_19 = var_5._ID740 + var_17 + var_18;
        var_19 = ( var_19[0], var_19[1], var_4._ID740[2] );
        var_13 = _ID42237::_ID53482( var_19[0], var_11, var_9 );
        var_14 = _ID42237::_ID53482( var_19[1], var_12, var_10 );
        var_15 = var_5._ID740[2];
        var_19 = ( var_13, var_14, var_15 );
        var_5._ID740 = var_19;
    }
}

_ID52106()
{
    self._ID525 = 0;
    self._ID24727 = 1;
    self._ID465 = 0;
    self._ID513 = 1;
    self._ID2219 = 1;
    self.cheat.ignorewolfthink = 1;
    self.cheat._ID48626 = 1;
    self waittill( "death",  var_0  );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
        level._ID52350 = gettime();
}

_ID46384( var_0 )
{
    level._ID794 freezecontrols( 0 );
    level._ID794 playerlinktodelta( var_0, "tag_player", 1, 25, 25, 15, 10, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
}

_ID45131( var_0 )
{
    var_1 = _ID42411::_ID35196( "heli_crash_site_spotlight" );
    var_1 endon( "death" );
    var_1 thread _ID42411::_ID16988();
    var_1 vehicle_setspeed( 30 );
    var_1 setmaxpitchroll( 20, 20 );
    var_1 crashsite_heli_spotlight();
    wait 5;
    var_1 setlookatent( level._ID794 );
    wait 2.5;
    var_1 thread _ID42508::_ID18413( "tag_spotlight", 0 );
    var_1 setturrettargetent( var_0[0] );
    wait 1.5;
    var_2 = getent( "btr80s_old_end", "targetname" );
    var_1 setturrettargetent( var_2 );
    var_1 setlookatent( level._ID794 );
    wait 2;
    var_1 vehicle_setspeed( 10 );
    var_1 notify( "stop_spotlight_random_targets" );
    wait 0.1;
    var_1 setturrettargetent( level._ID794 );
    wait 2;
}

_ID50866()
{
    _ID42237::_ID14413( "obj_crash_site_given" );

    if ( level._ID912 == "dcburning" )
    {
        var_0 = 10;
        objective_add( var_0, "active", &"DCBURNING_OBJ_CRASH_SITE" );
        _func_1e9( var_0 );
        _ID42237::_ID14413( "obj_crash_site_complete" );
        objective_state( var_0, "done" );
    }
    else
    {
        objective_add( level._ID52635, "active", &"DCEMP_OBJ_CRASH_SITE" );
        _func_1e9( level._ID52635 );
        _ID42237::_ID14413( "iss_fx" );
        objective_delete( level._ID52635 );
    }
}

_ID47930()
{
    var_0 = level._ID794._ID17476._ID22610;
    var_1 = level._ID794._ID266;
    var_2 = getdvar( "bg_viewKickScale" );
    var_3 = getdvar( "bg_viewKickMax" );
    var_4 = getdvar( "bg_viewKickMin" );
    level._ID794 _ID42407::_ID13021( "near_death_vision_enabled" );
    level._ID794._ID17476._ID22610 = 500;
    level._ID794._ID4878 = 1;
    level._ID512 = 1;
    level._ID794._ID266 = 7000;
    setsaveddvar( "bg_viewKickScale", 0.1 );
    setsaveddvar( "bg_viewKickMax", "5" );
    setsaveddvar( "bg_viewKickMin", "1" );
    _ID42237::_ID14413( "player_crash_done" );
    level._ID794._ID17476._ID22610 = var_0;
    level._ID794._ID266 = var_1;
    setsaveddvar( "bg_viewKickScale", var_2 );
    setsaveddvar( "bg_viewKickMax", var_3 );
    setsaveddvar( "bg_viewKickMin", var_4 );
    level._ID794 _ID42407::_ID13025( "near_death_vision_enabled" );
}
#using_animtree("generic_human");

_ID48275()
{
    level._ID30908["dcburn_hqr_doyoucopy"] = "dcburn_hqr_doyoucopy";
    level._ID30908["dcburn_hqr_howcopy"] = "dcburn_hqr_howcopy";
    level._ID30908["dcburn_hqr_doyoureadme"] = "dcburn_hqr_doyoureadme";
    level._ID30909["crash_redshirt"]["dcburn_gr1_ramirez1"] = "dcburn_gr1_ramirez1";
    level._ID30909["crash_redshirt"]["dcburn_gr1_ramirez2"] = "dcburn_gr1_ramirez2";
    level._ID30909["dcburn_gr1_hangon"] = "dcburn_gr1_hangon";
    level._ID30909["crash_leader"]["dcburn_mcy_wadesdown"] = "dcburn_mcy_wadesdown";
    level._ID30909["crash_dunn"]["dcburn_cpd_toomany"] = "dcburn_cpd_toomany";
    level._ID30909["crash_leader"]["dcburn_mcy_defendthispos"] = "dcburn_mcy_defendthispos";
    level._ID30909["crash_dunn"]["dcburn_cpd_lastmag"] = "dcburn_cpd_lastmag";
    level._ID30909["crash_leader"]["dcburn_mcy_lastone"] = "dcburn_mcy_lastone";
    level._ID30909["crash_dunn"]["dcburn_cpd_imout"] = "dcburn_cpd_imout";
    level._ID30909["crash_leader"]["dcburn_mcy_getdown"] = "dcburn_mcy_getdown";
    level._ID30909["generic"]["dcburn_ar1_reloadingcover"] = "dcburn_ar1_reloadingcover";
    level._ID30909["generic"]["dcburn_ar2_mccordcovering"] = "dcburn_ar2_mccordcovering";
    level._ID30909["generic"]["dcburn_ar1_loading"] = "dcburn_ar1_loading";
    level._ID30909["generic"]["dcburn_ar2_seanlast"] = "dcburn_ar2_seanlast";
    level._ID30909["crash_dunn"]["dcburn_cpd_target2"] = "dcburn_cpd_target2";
    level._ID30909["crash_leader"]["dcburn_mcy_ammocheck"] = "dcburn_mcy_ammocheck";
    level._ID30909["generic"]["dcburn_ar4_imgood"] = "dcburn_ar4_imgood";
    level._ID30909["crash_leader"]["dcburn_mcy_soundoff"] = "dcburn_mcy_soundoff";
    level._ID30909["generic"]["dcburn_ar3_twomags"] = "dcburn_ar3_twomags";
    level._ID30909["crash_leader"]["dcburn_mcy_mccord"] = "dcburn_mcy_mccord";
    level._ID30909["generic"]["dcburn_ar2_lastmag"] = "dcburn_ar2_lastmag";
    level._ID30909["crash_leader"]["dcburn_mcy_talktome"] = "dcburn_mcy_talktome";
    level._ID30909["generic"]["dcburn_ar4_watch3"] = "dcburn_ar4_watch3";
    level._ID30909["generic"]["dcburn_ar1_newtarget"] = "dcburn_ar1_newtarget";
    level._ID30909["generic"]["dcburn_ar2_gotitgotit"] = "dcburn_ar2_gotitgotit";
    level._ID30909["crash_dunn"]["dcburn_cpd_target11"] = "dcburn_cpd_target11";
    level._ID30909["crash_dunn"]["dcburn_cpd_pain"] = "dcburn_cpd_pain";
    level._ID30909["crash_leader"]["dcburn_mcy_hangon"] = "dcburn_mcy_hangon";
    level._ID1426["mortar"]["bunker_ceiling"] = loadfx( "fx/dust/ceiling_dust_bunker" );
    level._ID1426["mortar"]["bunker_ceiling_green"] = loadfx( "fx/dust/ceiling_dust_bunker_green" );
    level._ID1426["mortar"]["dirt_large"] = loadfx( "fx/explosions/artilleryExp_dirt_brown_2_dcburning" );
    level._ID1426["mortar"]["dirt"] = loadfx( "fx/explosions/grenadeExp_dirt" );
    level._ID1426["mortar"]["concrete"] = loadfx( "vfx/explosion/frag_grenade_concrete_dcemp" );
    level._ID30909["mortar"]["incomming"] = "mortar_incoming";
    level._ID30909["mortar"]["dirt"] = "mortar_explosion_dirt";
    level._ID30909["mortar"]["dirt_large"] = "mortar_explosion_dirt";
    level._ID30909["mortar"]["concrete"] = "mortar_explosion_dirt";
    level._ID30909["mortar"]["mud"] = "mortar_explosion_water";
    level._ID1426["nuke_flash"] = loadfx( "fx/explosions/nuke_flash" );
    level._ID30895["crash_redshirt"]["dcburning_BHrescue"] = %h2_dcburning_bhrescue_soldier_wakeup;
    _ID42259::_ID2058( "crash_redshirt", "dialogue", ::_ID48934, "dcburning_BHrescue" );
    _ID42259::_ID2058( "crash_redshirt", "detachgun", ::_ID51756, "dcburning_BHrescue" );
    _ID42259::_ID2058( "crash_redshirt", "headshot", ::_ID47733, "dcburning_BHrescue" );
    level._ID30895["crash_leader"]["vehicle_cover"] = %h2_dcburning_bhrescue_soldier1_fighting;
    level._ID30895["crash_dunn"]["vehicle_cover"] = %h2_dcburning_bhrescue_soldier2_fighting;
    level._ID30895["crash_leader"]["vehicle_cover_loop"] = %h2_dcburning_bhrescue_soldier1_loop;
    level._ID30895["crash_dunn"]["vehicle_cover_loop"] = %h2_dcburning_bhrescue_soldier2_loop;
    level._ID30895["crash_leader"]["dcburning_BHrescue_throwclip"] = %h2_dcburning_bhrescue_soldier1_giveammo;
    _ID42259::_ID2058( "crash_leader", "dialogue", ::_ID53189, "dcburning_BHrescue_throwclip" );
    level._ID30895["crash_dunn"]["dcburning_BHrescue_throwclip"] = %h2_dcburning_bhrescue_soldier2_giveammo;
    _ID42259::_ID2057( "crash_leader", "clipattach", "weapon_m4_clip", "tag_inhand", "dcburning_BHrescue_throwclip" );
    _ID42259::_ID2059( "crash_leader", "clipdetach", "weapon_m4_clip", "tag_inhand", "dcburning_BHrescue_throwclip" );
    level._ID30895["crash_leader"]["dcburning_BHrescue_laststand"] = %h2_dcburning_bhrescue_soldier1_wounded;
    level._ID30895["crash_dunn"]["dcburning_BHrescue_laststand"] = %h2_dcburning_bhrescue_soldier2_wounded;
    _ID42259::_ID2058( "crash_dunn", "wounded", ::_ID48276, "dcburning_BHrescue_laststand" );
}

_ID53189( var_0 )
{
    _ID42237::_ID14402( "macey_last_mag_dialogue" );
    wait 2.2;
    _ID42237::_ID14402( "macey_clip_to_player" );
}

_ID48934( var_0 )
{
    _ID42237::_ID14402( "crash_redshirt_speaks" );
    wait 1.0;
    level._ID794 playsound( "scn_dcemp_player_handed_gun" );
}

_ID51756( var_0 )
{
    _ID42237::_ID14402( "give_player_weapon" );
}

_ID47733( var_0 )
{
    _ID42237::_ID14402( "redshirt_headshot" );
    thread _ID42237::_ID27077( "h2_wpn_desert_eagle_npc_close", var_0._ID740 );
    thread _ID42237::_ID27077( "bullet_large_flesh", var_0._ID740 );
    playfxontag( _ID42237::_ID16299( "killshot" ), var_0, "TAG_EYE" );
}

_ID48276( var_0 )
{
    _ID42237::_ID14402( "friendly_02_injured" );
    thread _ID42237::_ID27077( "h2_wpn_desert_eagle_npc_close", var_0._ID740 );
    thread _ID42237::_ID27077( "bullet_large_flesh", var_0._ID740 );
    playfxontag( _ID42237::_ID16299( "headshot3" ), var_0, "J_Shoulder_RI" );
    wait 1;
    level._ID44035 thread _ID42407::_ID10805( "dcburn_mcy_hangon" );
    var_1 = getent( "crash_chatter_org_right", "targetname" );
    var_1 _ID42407::_ID10226( 1, _ID42237::_ID27077, "dcburn_ar1_loading" );
    wait 2;
    level._ID44035 thread _ID42407::_ID10805( "dcburn_mcy_defendthispos" );

    if ( level._ID912 == "dcburning" )
        _ID42407::_ID10226( 2.3, _ID42237::_ID27077, "scn_dcemp_space_transition_in", level._ID794._ID740 + ( 0, 0, 100 ), 1 );
    else
        thread _ID42237::_ID27077( "scn_dcemp_space_transition_in", level._ID794._ID740 + ( 0, 0, 100 ), 1 );
}

_ID45334( var_0 )
{
    _ID42237::_ID14402( "notetrack_player_upright" );
}

_ID50223( var_0 )
{
    _ID42237::_ID14402( "notetrack_player_raisehands" );
}

_ID53913( var_0 )
{
    _ID42237::_ID14402( "notetrack_player_lowerhands" );
}
#using_animtree("player");

_ID43949()
{
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewbody_us_army_injured";
    level._ID30895["player_rig"]["dcburning_BHrescue"] = %h2_dcburning_bhrescue_player_wakeup;
    level._ID30895["player_rig"]["dcburning_BHrescue_throwclip"] = %h2_dcburning_bhrescue_player_takeammo;
    _ID42259::_ID2058( "player_rig", "upright", ::_ID45334, "dcburning_BHrescue" );
    _ID42259::_ID2058( "player_rig", "handsup", ::_ID50223, "dcburning_BHrescue" );
    _ID42259::_ID2058( "player_rig", "handsdown", ::_ID53913, "dcburning_BHrescue" );
}
#using_animtree("script_model");

_ID53995()
{
    level._ID30895["crash_blackhawk"]["rotors_start"] = %dcburning_bhrescue_bh;
    level._ID30895["crash_blackhawk"]["rotors"][0] = %dcburning_bhrescue_bh;
    level._ID30900["crash_blackhawk"] = #animtree;
}

_ID53169( var_0 )
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( var_0 ) && var_0.size > 0 )
    {
        if ( _ID42407::_ID20542( var_0, self ) )
            return;
    }

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    if ( !issentient( self ) )
    {

    }

    self delete();
}

_ID49438( var_0 )
{
    var_1 = level._ID40317["axis"];
    var_2 = level._ID40317["allies"];
    var_3 = _ID42407::_ID3317( var_1, var_2 );

    foreach ( var_5 in var_3 )
    {
        if ( !isdefined( var_5 ) )
            continue;

        if ( isdefined( var_0 ) && var_0.size > 0 )
        {
            if ( _ID42407::_ID20542( var_0, var_5 ) )
                continue;
        }

        var_5 _ID42411::_ID16987();
        var_5 _ID46022();
    }
}

_ID46022()
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );

    if ( isdefined( self._ID29965 ) && self._ID29965.size )
        _ID42237::_ID3350( self._ID29965, ::_ID53169 );

    if ( isdefined( self._ID23512 ) )
    {
        foreach ( var_1 in self._ID23512 )
        {
            if ( isdefined( var_1 ) )
                var_1 delete();
        }
    }

    self delete();
}

_ID48385( var_0, var_1 )
{
    level endon( "stop_drone_flood" + var_1 );

    for (;;)
    {
        foreach ( var_3 in var_0 )
        {
            var_3._ID922 = "axis_crash_drone";
            _ID42407::_ID1985( _ID42407::_ID1687, randomfloatrange( 5, 6 ) );
            var_3 _ID42407::_ID1841( _ID42407::_ID41116, "death" );
            _ID42407::_ID1890( _ID42407::_ID12076, var_3 );
            thread _ID42407::_ID11231();
        }

        wait(randomfloatrange( 5, 6 ));
    }
}

_ID47493( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_2 = getent( var_1._ID31273, "script_linkname" );
    var_2 notify( "trigger",  level._ID794  );
}

_ID49720()
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID172 ) && self._ID172 == "script_model" )
        return;

    _ID42407::_ID32628( 1 );
    self._ID511 = 1;
    self._ID507 = 1;
    self._ID465 = 0;
}

_ID45707()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

crashsite_heli_spotlight()
{
    thread _ID45707();
    self playsound( "scn_dcemp_heli_spotlight" );
}

crash_remove_vehicles()
{
    var_0 = getentarray( "crash_hide_model", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

crash_script_model_anims()
{
    level._ID30904["weapon_m4"] = "weapon_m4";
    level._ID30900["weapon_m4"] = #animtree;
    level._ID30895["weapon_m4"]["dcburning_BHrescue"] = %h2_dcburning_bhrescue_weapon_wakeup;
    level._ID30900["traffic_light"] = #animtree;
    level._ID30895["traffic_light"]["traffic_light_shock"] = %h2_dcb_traffic_light_crash_shock;
    level._ID30895["traffic_light"]["traffic_light_idle"][0] = %h2_dcb_traffic_light_crash_idle;
    level._ID1426["traffic_red_light"] = loadfx( "fx/misc/usa_traffic_light_red_dcemp" );
}

traffic_signal_animated()
{
    var_0 = getent( "animated_traffic_light", "targetname" );
    var_0 _ID42407::_ID3428( "traffic_light" );
    var_0 thread blinking_light_fx();
    var_0 thread _ID42259::_ID3044( var_0, "traffic_light_idle", "stop_idle" );

    if ( level._ID912 != "dcburning" )
    {
        _ID42237::_ID14413( "intro_heli_crashing" );
        wait 2;
        var_0 notify( "stop_idle" );
        var_0 _ID42259::_ID3111( var_0, "traffic_light_shock" );
        var_0 thread _ID42259::_ID3044( var_0, "traffic_light_idle", "stop_idle" );
        _ID42237::_ID14413( "player_and_squad_safe" );
        var_0 notify( "stop_idle" );
        var_0 delete();
    }
}

blinking_light_fx()
{
    var_0 = [];
    var_1 = _ID42237::_ID46831( "tag_light_fx_01", ( -25, 0, 0 ), ( -90, 0, -90 ) );
    var_2 = _ID42237::_ID46831( "tag_light_fx_02", ( -25, 0, 0 ), ( -90, 0, -90 ) );
    var_3 = _ID42237::_ID46831( "tag_light_fx_03", ( -25, 0, 0 ), ( 0, -90, 0 ) );
    var_0 = [ var_1, var_2, var_3 ];

    if ( level._ID912 != "dcburning" )
        thread traffic_light_spark( var_0 );

    while ( !_ID42237::_ID14385( "emp_happening" ) )
    {
        foreach ( var_5 in var_0 )
            playfxontag( level._ID1426["traffic_red_light"], var_5, "tag_origin" );

        wait 0.75;

        foreach ( var_5 in var_0 )
            killfxontag( level._ID1426["traffic_red_light"], var_5, "tag_origin" );

        wait 0.75;
    }

    foreach ( var_5 in var_0 )
        killfxontag( level._ID1426["traffic_red_light"], var_5, "tag_origin" );
}

traffic_light_spark( var_0 )
{
    _ID42237::_ID14413( "intro_heli_crashing" );
    wait 2;
    _ID42237::_ID14402( "emp_happening" );

    foreach ( var_2 in var_0 )
        playfxontag( level._ID1426["powerline_runner_oneshot"], var_2, "tag_origin" );
}
