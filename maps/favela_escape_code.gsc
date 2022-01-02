// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID54598()
{
    _ID53187();
    var_0 = getentarray();

    while ( !isdefined( level._ID36711 ) )
        wait 0.05;

    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( !isdefined( var_3.code_classname ) )
            continue;

        if ( issubstr( var_3.code_classname, "trigger" ) )
            var_1[var_1.size] = var_3;
    }

    foreach ( var_6 in var_1 )
    {
        if ( !isdefined( var_6.target ) )
            continue;

        var_7 = _ID42237::_ID16640( var_6.target, "targetname" );

        foreach ( var_9 in var_7 )
        {
            if ( isdefined( var_9.script_noteworthy ) && var_9.script_noteworthy == "hostile_burst" )
                var_6 thread _ID44107( var_9 );
        }
    }
}

_ID53187()
{
    var_0 = [];
    var_0[var_0.size] = "favesc_pe1_youhearme";
    var_0[var_0.size] = "favesc_pe2_callthetruck";
    var_0[var_0.size] = "favesc_pe3_killslowly";
    var_0[var_0.size] = "favesc_pe3_cantstop";
    var_0[var_0.size] = "favesc_pe4_wellfindyou";
    var_0[var_0.size] = "favesc_pe3_mginalley";
    var_0[var_0.size] = "favesc_pe3_afterthem";
    var_0[var_0.size] = "favesc_pe3_blockexits";
    var_0[var_0.size] = "favesc_pe4_killthemall";
    var_0[var_0.size] = "favesc_pe4_wellfindyou";
    var_0[var_0.size] = "favesc_pe4_chasethem";
    var_0[var_0.size] = "favesc_pe4_huntthem";
    var_0[var_0.size] = "favesc_pe2_limbbylimb";
    var_0[var_0.size] = "favesc_pe4_neveragain";
    var_0[var_0.size] = "favesc_pe1_nohonor";
    var_0[var_0.size] = "favesc_pe2_wait2seconds";
    var_0[var_0.size] = "favesc_pe1_keepthemalive";
    var_0[var_0.size] = "favesc_pe2_morebandages";
    var_0[var_0.size] = "favesc_pe1_avengemybrother";
    var_0[var_0.size] = "favesc_pe3_cantstop";
    var_0[var_0.size] = "favesc_pe1_goingtodie";
    var_0 = _ID42237::_ID3320( var_0 );
    level._ID50615 = var_0;
    level._ID50902 = undefined;
}

_ID44107( var_0 )
{
    self waittill( "trigger" );

    if ( !_ID42407::_ID916() )
        wait(randomfloatrange( 0.5, 1.25 ));

    var_1 = undefined;

    if ( isdefined( var_0._ID31388 ) )
        var_1 = var_0._ID31388;

    if ( !isdefined( var_1 ) )
    {
        if ( !isdefined( level._ID50902 ) )
            level._ID50902 = 0;

        var_1 = level._ID50615[level._ID50902];
        level._ID50902++;

        if ( level._ID50902 >= level._ID50615.size - 1 )
            level._ID50902 = 0;
    }

    level thread _ID42237::_ID27077( var_1, var_0.origin );
}

_ID54569()
{
    thread _ID48478();
    var_0 = "mus_favelaescape_combat";
    var_1 = _ID42407::_ID24586( var_0 );

    while ( !_ID42237::_ID14385( "market_evac_insidepath_start" ) )
    {
        _ID42407::_ID24587( var_0 );
        wait(var_1);
        _ID42407::_ID24584( 1 );
        wait 3;
    }
}

_ID48478()
{
    _ID42237::_ID14413( "market_evac_insidepath_start" );
    _ID42407::_ID24584( 7.5 );
}

_ID54728()
{
    _ID42407::_ID24577( "mus_favelaescape_waveoff", 72 );
}

_ID49650()
{
    _ID42407::_ID24584( 3 );
    level.player _ID42407::_ID27079( "mus_favelaescape_fixedfall", "fixedfall_music_done" );
}

_ID52086()
{
    _ID42407::_ID24584( 3 );
    wait 3;
    _ID42407::_ID24587( "mus_favelaescape_finalrun" );
    _ID42237::_ID14413( "solorun_player_boarded_chopper" );
    _ID42407::_ID24584( 10 );
    level.player _ID42407::_ID27079( "mus_favelaescape_ending" );
}

_ID52490()
{
    var_0 = ( 3712, 576, 1211 );
    _ID42407::_ID10226( 5, _ID42237::_ID27077, "favesc_pgm_wellfindyou", var_0 );
    _ID42407::_ID10226( 20, _ID42237::_ID27077, "favesc_pgm_huntthem", var_0 );
    _ID42407::_ID10226( 0.5, _ID42237::_ID27077, "wlla_favela_escape_start", var_0 );
}

_ID43380()
{
    var_0 = ( 1972, -1340, 734 );
    _ID42407::_ID10226( 5, _ID42237::_ID27077, "favesc_pgm_blockexits", var_0 );
    _ID42237::_ID27077( "wlla_favela_escape_vista1", var_0 );
}

_ID49960()
{
    _ID42237::_ID14413( "uphill_advance_3" );
    var_0 = ( -1156, 1796, 1124 );
    _ID42407::_ID10226( 5, _ID42237::_ID27077, "favesc_pgm_killthemall", var_0 );
    _ID42407::_ID10226( 20, _ID42237::_ID27077, "favesc_pgm_nohonor", var_0 );
    _ID42237::_ID27077( "wlla_favela_escape_vista2", var_0 );
}

_ID49849()
{
    var_0 = getent( "walla_escape_soccer", "targetname" );
    var_0 _ID42407::_ID27079( "wlla_favela_escape_soccer" );
}

_ID52646()
{
    level.player _ID42407::_ID27079( "wlla_favela_escape_running1" );
}

_ID50290()
{
    var_0 = ( -5588, -1852, 912 );
    _ID42407::_ID10226( 5, _ID42237::_ID27077, "favesc_pgm_wellfindyou", var_0 );
    _ID42237::_ID27077( "wlla_favela_escape_fallen_right", var_0 );
}

_ID51267()
{
    var_0 = ( -5704, -376, 814 );
    _ID42407::_ID10226( 10, _ID42237::_ID27077, "favesc_pgm_huntthem", var_0 );
    _ID42237::_ID27077( "wlla_favela_escape_fallen_left", var_0 );
}

_ID47784()
{
    var_0 = "runpath_dialogue_continue";
    _ID42237::_ID14400( var_0 );
    thread _ID43718( var_0 );
    _ID42237::_ID14413( var_0 );
    _ID42237::_ID14413( "runpath_resume_dialogue" );
    level._ID47826 _ID10742( "favesc_cmt_surrounded" );
    _ID42407::_ID28864( "favesc_nkl_ontheway" );
    level._ID47826 _ID10742( "favesc_cmt_lockandload" );
    level._ID51527 _ID10742( "favesc_gst_letsdothis" );
    _ID42237::_ID14402( "radiotower_runpath_dialogue_done" );
}

_ID43718( var_0 )
{
    _ID42407::_ID38929( "trig_script_color_allies_b0" );
    _ID42237::_ID14402( var_0 );
}

_ID49152()
{
    var_0 = 5;
    var_1 = getentarray( "spawner_radiotower_wave1", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_ID43884 );

    if ( !isdefined( level._ID48743 ) )
        level._ID48743 = 0;

    while ( level._ID48743 < var_0 )
        wait 0.1;

    _ID45186( "trig_killspawner_7" );
}

_ID43884()
{
    self waittill( "death",  var_0  );

    if ( _ID42372::_ID27638( self, var_0 ) )
        level._ID48743++;
}

_ID48509()
{
    var_0 = getent( "radiotower_path_scout", "targetname" );
    var_1 = var_0._ID70;
    var_2 = getnode( var_0.target, "targetname" );
    var_3 = var_0 _ID42407::_ID35014();
    var_3 thread _ID42407::_ID22746( 1 );
    var_3 _ID19365();
    var_3.ignoreme = 1;
    var_0 _ID42259::_ID3023( var_3, var_1 );
    _ID42407::_ID38929( "trig_radiotower_brushpath_start" );
    var_3 _ID42407::_ID36519();
    var_3 endon( "death" );
    var_3.allowdeath = 1;
    var_3 thread _ID42407::_ID27079( "favesc_pe1_heretheycome" );
    var_0 _ID42259::_ID3020( var_3, var_1 );
    var_3.goalradius = 64;
    var_3 setgoalnode( var_2 );
    var_3 waittill( "goal" );

    if ( isdefined( var_3 ) )
    {
        var_3 _ID47487();
        var_3.ignoreme = 0;
        var_3.fixednode = 0;
        var_3.goalradius = 1024;
        var_3.combatmode = "ambush";
    }
}

_ID51235()
{
    _ID42237::_ID3350( level._ID49912, ::_ID45776, 1 );
    _ID42407::_ID38929( "trig_radiotower_brushpath_start" );
    wait 2.25;
    _ID42237::_ID3350( level._ID49912, ::_ID45776, 0 );
}

_ID52540()
{
    _ID42407::_ID38929( "trig_radiotower_forcecolor_change_1" );
    level._ID47826 _ID42407::_ID32315( "b" );
}

_ID44513()
{
    _ID42407::_ID38929( "trig_radiotower_doorkick_1" );
    var_0 = _ID42237::_ID16638( "struct_radiotower_doorkick_1_sighttracer", "targetname" );
    var_0 _ID42407::_ID41136( 1, 0.7 );
    var_1 = getentarray( "spawner_radiotower_doorkick_1", "targetname" );
    var_2 = getent( "sbmodel_radiotower_doorkick_1", "targetname" );
    var_3 = _ID42237::_ID16638( "struct_radiotower_doorkick_1_animref", "targetname" );
    thread _ID44259( var_1, var_2, var_3 );

    if ( _ID42237::_ID14385( "radiotower_runpath_dialogue_done" ) )
        level._ID51527 _ID42407::_ID10226( 1, ::_ID10742, "favesc_gst_shackonleft" );

    wait 5;
    var_4 = getent( "sbmodel_radiotower_doorkick_1_backdoor_blocker", "targetname" );
    var_4 delete();
}

_ID52719()
{
    var_0 = getent( "radiotower_curtainpull1_animref", "targetname" );
    _ID44807( var_0 );
    var_0._ID43475 = _ID42237::_ID16638( "radiotower_curtainpull1_sighttracer", "targetname" );
    var_1 = getent( "spawner_radiotower_curtainpull_1", "targetname" );
    var_1 thread _ID46383( 1, ::_ID47679 );
    level endon( "radiotower_exit" );
    _ID42407::_ID38928( "trig_radiotower_rooftop_spawn", "script_noteworthy" );
    var_1 _ID42407::_ID35014();
}

_ID47679( var_0, var_1 )
{
    var_0 endon( "death" );
    var_0 _ID42407::_ID41135( 0.6, undefined, 1, 5.0 );
}

_ID50644()
{
    var_0 = getent( "trig_killspawner_radiotower_hiding_door_guy", "targetname" );
    var_1 = undefined;
    var_2 = undefined;
    var_3 = ( 4374, 1252, 1060 );
    var_4 = getentarray( "hiding_door_spawner", "script_noteworthy" );
    var_1 = _ID42237::_ID16182( var_3, var_4 );
    var_5 = level._ID49274;
    var_6 = _ID42237::_ID16182( var_3, var_5 );
    thread _ID53119( var_1, var_0 );
    level endon( "radiotower_hiding_door_guy_cleanup_cancel" );
    var_0 waittill( "trigger" );
    var_6 delete();
}

_ID53119( var_0, var_1 )
{
    var_1 endon( "trigger" );
    var_0 waittill( "trigger" );
    level notify( "radiotower_hiding_door_guy_cleanup_cancel" );
}

_ID53766( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( var_0 )
    {
        _ID42234::_ID13611( "fence_ambient" );
        thread _ID53437();
    }
}

_ID43739()
{
    _ID42237::_ID14413( "radiotower_vehicles_start" );
    thread _ID53414();
}

_ID53414()
{
    var_0 = _ID42411::_ID9185( 0 );
    var_1 = var_0[0];
    _ID42234::_ID13611( 110 );
    _ID42234::_ID13611( 120 );
    var_1 thread _ID46109();
    var_1 thread _ID51010();
    var_2 = getvehiclenode( "node_technical_bust_gate", "script_noteworthy" );
    var_2 waittill( "trigger" );
    _ID42237::_ID14402( "radiotower_escape_technical_1_arrival" );
    level thread _ID53766();
    _ID42407::_ID10226( 2, ::_ID51393 );
    _ID42407::_ID10226( 5, ::_ID51303 );
}

_ID51010()
{
    _ID46804();
    var_0 = [];
    var_0 = _ID42237::_ID16640( "struct_radiotower_vehicle1_road_badplaceRef", "targetname" );
    var_0[var_0.size] = _ID42237::_ID16638( "struct_radiotower_vehicle1_donut_badplaceRef", "targetname" );
    var_1 = [];

    foreach ( var_5, var_3 in var_0 )
    {
        var_4 = "vehicle1_badplace_" + var_5;
        badplace_cylinder( var_4, -1, _ID42407::_ID17434( var_3.origin ), var_3.radius, 128, "axis", "allies" );
        var_1[var_1.size] = var_4;
    }

    while ( !_ID42237::_ID14385( "radiotower_vehicle1_donut_done" ) && self.health > 0 && self vehicle_getspeed() > 1 )
        wait 0.1;

    foreach ( var_7 in var_1 )
        badplace_delete( var_7 );
}

_ID51393()
{
    var_0 = _ID42411::_ID9185( 1 );
    var_1 = var_0[0];
    _ID42237::_ID14402( "pickup2_spawned" );
    var_1 thread _ID46109();
    var_2 = getvehiclenode( "vnode_technical2_arrival", "script_noteworthy" );
    var_2 waittill( "trigger" );
    _ID42237::_ID14402( "radiotower_escape_technical_2_arrival" );
}

_ID46109()
{
    waitframe;
    _ID42407::_ID13024( "reached_end_node" );
    _ID42407::_ID13024( "stopped" );
    thread _ID46052();
    thread _ID53046();
    var_0 = _ID48036();
    var_0 _meth_8583();
    _ID42407::_ID13024( "godoff" );
    thread _ID52530( var_0 );
    var_1 = self._ID23512[0];
    var_1 thread _ID54631( self, var_0 );
}

_ID46052()
{
    self endon( "death" );
    self waittill( "reached_end_node" );
    _ID42407::_ID13025( "reached_end_node" );
}

_ID53046()
{
    self endon( "death" );
    _ID46804();

    while ( self vehicle_getspeed() > 0 )
        wait 0.05;

    _ID42407::_ID13025( "stopped" );
}

_ID48036()
{
    var_0 = undefined;

    foreach ( var_2 in self._ID29965 )
    {
        var_3 = _ID42412::_ID3052( self, var_2._ID40222 );

        if ( _ID42412::_ID17586( var_3 ) )
        {
            var_0 = var_2;
            break;
        }
    }

    return var_0;
}

_ID52530( var_0 )
{
    self._ID51640 = 0;
    var_1 = self._ID29965;
    _ID42237::_ID3350( var_1, _ID42407::_ID22746, 1 );

    foreach ( var_3 in var_1 )
    {
        var_3.health = 10000000;
        var_3.threatbias = -2500;
        var_3.attackeraccuracy = 0.5;
        var_3 thread _ID46301( self, var_0 );
    }

    thread _ID42411::_ID16988();
    _ID46804();
    thread _ID48549();
    thread _ID50443();

    while ( isdefined( self ) && !self._ID51640 && !_ID42407::_ID13019( "godoff" ) )
        wait 0.05;

    if ( isdefined( self ) )
    {
        thread _ID42411::_ID16987();
        _ID40247( 1500 );
        self notify( "technical_health_reset" );
    }
}

_ID46301( var_0, var_1 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_0 _ID42407::_ID13027( "godoff" );
    self.allowdeath = 1;

    if ( isdefined( var_1 ) && self == var_1 )
        self.health = 1;
    else
        self.health = 150;

    thread _ID43804();
}

_ID40247( var_0 )
{
    self.health = var_0 + self._ID18313;
    self._ID9497 = self.health;
}

_ID48549()
{
    self endon( "death" );
    self endon( "technical_health_reset" );
    _ID46584();
    self._ID51640 = 1;
}

_ID50443()
{
    self endon( "death" );
    self endon( "technical_health_reset" );
    _ID47150();
    self._ID51640 = 1;
}

_ID46584()
{
    self endon( "death" );
    self waittill( "reached_end_node" );
}

_ID47150()
{
    self endon( "death" );
    self endon( "technical_health_reset" );

    while ( self vehicle_getspeed() > 2 )
        wait 0.1;
}

_ID46804()
{
    self endon( "death" );
    self endon( "technical_health_reset" );

    while ( self vehicle_getspeed() < 1 )
        wait 0.1;
}

_ID54631( var_0, var_1 )
{
    self endon( "death" );
    var_1 thread _ID47002();
    var_1 waittill( "death" );
    var_0 _ID42407::_ID13028( "reached_end_node", "stopped" );
    self makeusable();
}

_ID48321( var_0, var_1 )
{
    self endon( "death" );
    var_1 endon( "death" );
    self turretfiredisable();
    var_0 waittillmatch( "noteworthy",  "vnode_technical_turret_activate"  );
    self turretfireenable();
}

_ID47002()
{
    self endon( "death" );
    level waittill( "kill_technical_gunners" );
    _ID43804();
    self kill();
}

_ID51303()
{
    var_0 = getent( "sbmodel_technical_jump_helper", "targetname" );
    var_0 _ID42237::_ID38863();
}

_ID46559()
{
    thread _ID43524();
    thread _ID47986();
    level._ID51527 _ID10742( "favesc_gst_deadahead" );
    level._ID47826 _ID10742( "favesc_cmt_thrugate" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14413( "radiotower_escape_technical_1_arrival" );
    _ID42407::_ID4917( "allies" );
    level._ID51527 _ID10742( "favesc_gst_technical" );
    _ID42237::_ID14413( "radiotower_escape_technical_2_arrival" );
    level._ID47826 _ID10742( "favesc_cmt_technical" );
    _ID42407::_ID4918( "allies" );
}

_ID43524()
{
    level endon( "radiotower_exit" );
    _ID42407::_ID38928( "trig_radiotower_rooftop_spawn", "script_noteworthy" );
    level._ID51527 _ID10742( "favesc_gst_onrooftops" );
}

_ID47986()
{
    level endon( "radiotower_exit" );
    _ID42407::_ID38929( "trig_radiotower_walljumper_spawn" );
    level._ID47826 _ID10742( "favesc_cmt_lowfromse" );
}

_ID52816()
{
    _ID42237::_ID14413( "radiotower_escape_technical_2_arrival" );

    while ( _ID53294().size >= 6 )
        wait 0.1;

    var_0 = getentarray( "trig_radiotower_cleanup_at_exit", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42237::_ID38863 );
    _ID45186( "trig_killspawner_7" );
    var_1 = _ID53294();
    var_2 = [];
    var_3 = [];

    foreach ( var_5 in var_1 )
    {
        if ( var_5.origin[0] > 3600 )
        {
            if ( var_5.origin[2] > 1140 )
            {
                var_3[var_3.size] = var_5;
                continue;
            }

            var_2[var_2.size] = var_5;
        }
    }

    _ID42237::_ID14402( "radiotower_enemies_retreat" );
    level thread _ID50496( var_3, 10 );
    level notify( "kill_technical_gunners" );

    foreach ( var_5 in var_2 )
        var_5 setgoalpos( var_5.origin );

    wait 0.05;
    var_9 = getent( "goalvolume_52", "targetname" );
    var_2 = _ID42237::_ID3332( var_2 );
    var_2 = _ID42407::_ID3328( var_2 );
    thread _ID42237::_ID3294( var_2, ::setgoalvolumeauto, var_9 );
    level._ID47826 _ID10742( "favesc_cmt_thruthatgate" );
    level._ID51527 _ID10742( "favesc_gst_gogogo" );
    _ID42237::_ID14402( "radiotower_escape_moveup" );
    var_10 = getentarray( "trig_radiotower_escape_removeAtExit", "targetname" );
    _ID42237::_ID3350( var_10, _ID42237::_ID38863 );
    _ID45186( "trig_radiotower_forcecolor_change_1" );

    if ( !_ID42237::_ID14385( "market_respawn_trigger" ) )
    {
        var_11 = getent( "trig_script_color_allies_b5", "targetname" );

        if ( isdefined( var_11 ) )
            var_11 notify( "trigger" );
    }
}

_ID46723()
{
    thread _ID50601();
    thread _ID52042();
    _ID42237::_ID14413( "vista1_dialogue_start" );
    level._ID47826 _ID10742( "favesc_cmt_pushthrustreets" );
    _ID42237::_ID14413( "multipath_dialogue_start" );
    level._ID47826 _ID10742( "favesc_cmt_flankingroutes" );
    _ID42237::_ID14413( "almostatmarket_dialogue_start" );
    level._ID47826 _ID10742( "favesc_cmt_almostatmarket" );
}

_ID50601()
{
    level endon( "playerabove_dialogue_cancel" );
    _ID42237::_ID14413( "playerabove_dialogue_start" );
    level._ID47826 _ID10742( "favesc_cmt_laydownfire" );
}

_ID52042()
{
    _ID42237::_ID14413( "leftalley_dialogue_start" );
    level._ID47826 thread _ID10742( "favesc_cmt_alleyonleft" );
}

init_fx_alphathreshold()
{
    for (;;)
    {
        _ID42237::_ID14413( "alphathreshold_activate" );
        _ID42237::_ID14388( "alphathreshold_deactivate" );
        setsaveddvar( "fx_alphathreshold", 3 );
        _ID42237::_ID14413( "alphathreshold_deactivate" );
        _ID42237::_ID14388( "alphathreshold_activate" );
        setsaveddvar( "fx_alphathreshold", 0 );
    }
}

_ID43553()
{
    _ID42407::_ID38929( "trig_vista1_doorkick1" );
    var_0 = _ID42237::_ID16638( "struct_vista1_doorkick1_sighttracer", "targetname" );
    var_0 _ID42407::_ID41136( 1.5, 0.7 );
    var_1 = getent( "sbmodel_vista1_door1", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_vista1_door1_animref", "targetname" );
    var_3 = getentarray( "spawner_vista1_door1_houseguy", "targetname" );
    thread _ID44259( var_3, var_1, var_2 );
}

_ID46619()
{
    level endon( "multipath_dialogue_start" );
    _ID42237::_ID14413( "street_advance_1" );
    var_0 = _ID42237::_ID16638( "struct_vista1_wavingguy_animref", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = "favela_run_and_wave";
    var_3 = var_1 _ID42407::_ID35014();
    var_3.ignoreme = 1;
    var_3.ignoreall = 1;
    var_3 thread _ID42407::_ID22746();
    var_0 _ID42259::_ID3023( var_3, var_2 );
    var_3 thread _ID44149();
    _ID42407::_ID38929( "trig_vista1_wavingguy" );
    thread _ID44030( "trig_vista1_wavingguy_spawngroup" );
    var_3 _ID42407::_ID36519();
    var_3.allowdeath = 1;
    var_3 notify( "wavingguy_activated" );
    var_3 thread _ID42407::_ID27079( "favesc_pe1_attack" );
    var_0 _ID42259::_ID3020( var_3, var_2 );

    if ( isalive( var_3 ) )
    {
        var_3.ignoreme = 0;
        var_3.ignoreall = 0;
        var_4 = getnode( var_3.target, "targetname" );
        var_3 setgoalnode( var_4 );
    }
}

_ID44149()
{
    self endon( "death" );
    self endon( "wavingguy_activated" );
    _ID42237::_ID14413( "multipath_dialogue_start" );
    _ID42407::_ID36519();
    self delete();
}

_ID47074()
{
    _ID44801( "trig_street_roof1_doorkick" );
    var_0 = getentarray( "spawner_street_roof1_doorkick", "targetname" );
    var_1 = getent( "sbmodel_street_roof1_doorkick", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_street_roof1_doorkick_animref", "targetname" );
    thread _ID44259( var_0, var_1, var_2 );
}

_ID53907()
{
    _ID42237::_ID14413( "uphill_advance_3" );
    thread _ID54216();
    var_0 = getentarray( "volume_enemies_street_mid_intersection", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID44811 );
}

_ID54216()
{
    var_0 = _ID42407::_ID15543( "street_mid_inside_guys" );
    _ID42237::_ID3350( var_0, ::_ID21318 );
}

_ID44811()
{
    level endon( "market_evac_start" );
    var_0 = _ID47906( 5 );

    for (;;)
    {
        wait(randomfloatrange( 0.5, 1 ));
        var_1 = _ID42407::_ID15547( "axis", "human" );

        foreach ( var_3 in var_1 )
        {
            if ( !isalive( var_3 ) )
                continue;

            if ( var_3 _ID42407::_ID11498() )
                continue;

            if ( isdefined( var_3._ID50357 ) )
            {
                if ( gettime() > var_3._ID50357 + var_0 && !isdefined( var_3._ID49788 ) )
                {
                    var_3._ID49788 = 1;
                    var_3 thread _ID21318();
                }

                continue;
            }

            var_3._ID50357 = gettime();
            var_3.health = 1;
            var_3.attackeraccuracy = 1;
        }
    }
}

_ID21318()
{
    self endon( "death" );

    while ( _ID42237::_ID41802( level.player.origin, level.player getplayerangles(), self.origin, level._ID8760["45"] ) )
        wait(randomfloatrange( 0.5, 2 ));

    _ID45456::_ID54623( self );
    self kill();
}

_ID43984()
{
    _ID42407::_ID38929( "trig_vista2_truckstart" );
    thread _ID53815();
}

_ID53815()
{
    var_0 = _ID42411::_ID9185( 3 );
    var_1 = var_0[0];
    var_1 thread _ID46109();
}

_ID50759()
{
    _ID42407::_ID38929( "trig_vista2_endhouse_clearout" );
    var_0 = getent( "vista2_endhouse_goalvolume", "targetname" );
    var_1 = getaiarray( "axis" );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( var_4 istouching( var_0 ) )
            var_2[var_2.size] = var_4;
    }

    if ( !var_2.size )
        return;

    var_6 = var_2[0];
    var_7 = getnode( "node_vista2_endhouse_firespot", "targetname" );
    var_8 = getent( "org_vista2_endhouse_nadetarget", "targetname" );
    var_9 = _ID42237::_ID16638( "street_vista2_jumpthru_animref", "targetname" );
    var_10 = getnode( "node_vista2_endhouse_windowjumper_target", "targetname" );
    var_11 = level._ID51527;
    var_12 = var_11._ID834;
    var_11 thread _ID42407::_ID14803( "m79", "primary" );
    var_13 = var_11 _ID42407::_ID15740();
    var_11 _ID47402( 64 );
    var_11 _ID19365();
    var_11 _ID42407::_ID7867();
    var_11 allowedstances( "stand" );
    var_11 setgoalnode( var_7 );
    var_11 waittill( "goal" );

    if ( isalive( var_6 ) )
    {
        var_6 thread _ID42407::_ID22746( 1 );
        var_9 = _ID42237::_ID16638( "street_vista2_jumpthru_animref", "targetname" );
        var_14 = "traverse_window_M_2_dive";
        var_6._ID3189 = "generic";
        var_15 = var_6 _ID42407::_ID16120( var_14 );
        var_16 = getstartorigin( var_9.origin, var_9.angles, var_15 );
        var_17 = getstartangles( var_9.origin, var_9.angles, var_15 );
        var_6 forceteleport( var_16, var_17 );
        var_11 setentitytarget( var_8 );
        wait 1;
        var_11 shoot( 1.0, var_8.origin );
        var_6 _ID42407::_ID10226( 1.5, _ID42407::_ID36519 );
        var_6 _ID42407::_ID10226( 2, _ID42407::_ID32187, 1 );
        var_9 thread _ID42259::_ID3020( var_6, var_14 );
        wait(getanimlength( var_15 ));
    }

    if ( isalive( var_6 ) )
        var_6 setgoalnode( var_10 );

    var_11 clearentitytarget();
    var_11 allowedstances( "stand", "crouch", "prone" );
    var_11 _ID42407::_ID32315( var_13 );
    var_11 _ID47487();
    var_11 _ID47888();
    var_11 _ID42407::_ID10226( 5, _ID42407::_ID14803, var_12, "primary" );
}

_ID54435()
{
    var_0 = getent( "volume_vista2_retreat", "targetname" );
    _ID42407::_ID38929( "trig_vista2_truckstart" );
    var_1 = _ID42407::_ID15543( "vista2_firsthalf_enemies" );

    foreach ( var_3 in var_1 )
        var_3 setgoalvolumeauto( var_0 );
}

_ID50921()
{
    level endon( "vista2_leftbalcony_deathflag" );
    _ID42237::_ID14413( "market_advance_1" );
    var_0 = [];
    var_0[0] = ( -1064, 1340, 1254 );
    var_0[1] = ( -1156, 1380, 1254 );

    foreach ( var_2 in var_0 )
        magicgrenade( "fraggrenade", var_2, _ID42407::_ID17434( var_2 ), randomfloat( 0.25 ) );
}

_ID47028()
{
    thread _ID48229();
    thread _ID52425();
    _ID42237::_ID14413( "market_dialogue_start" );
    wait 2;
    level._ID47826 _ID10742( "favesc_cmt_splitup" );
    _ID42237::_ID14402( "market_introdialogue_done" );
}

_ID48229()
{
    _ID42407::_ID38929( "trig_market_chaoticaboves_1" );
    _ID42237::_ID14413( "market_introdialogue_done" );
    level._ID51527 _ID10742( "favesc_gst_firingblind" );
}

_ID52425()
{
    _ID42407::_ID38929( "trig_market_door1" );

    if ( !_ID42237::_ID14385( "market_introdialogue_done" ) )
        _ID42237::_ID14413( "market_introdialogue_done" );
    else
        wait 2;

    level._ID47826 _ID10742( "favesc_cmt_shackonright" );
}

_ID53495()
{
    _ID42407::_ID38929( "trig_market_door1" );
    level notify( "kill_hidden_reinforcement_waiting" );
    var_0 = _ID46434();
    var_1 = var_0[0];

    if ( isdefined( var_1 ) )
        var_1 _ID42407::_ID32315( "p" );

    if ( var_0.size > 1 )
    {
        var_0 = _ID42237::_ID3321( var_0, var_1 );
        _ID42237::_ID3350( var_0, ::_ID44439 );
        _ID42237::_ID3350( var_0, _ID42407::_ID10959 );
        _ID42237::_ID3350( var_0, ::_ID44231, 1 );
        _ID42237::_ID3350( var_0, ::_ID47023, 10, 10 );
        _ID42407::_ID38929( "trig_market_redshirts_remove_failsafe" );
        var_0 = _ID42407::_ID3328( var_0 );
        _ID42237::_ID3350( var_0, _ID42407::_ID10871 );
    }
}

_ID52360()
{
    _ID42407::_ID38929( "trig_market_redshirts_remove_failsafe" );
    level._ID51527 _ID42407::_ID32315( "b" );
}

_ID50918()
{
    _ID42407::_ID38929( "trig_market_door1" );
    var_0 = getentarray( "spawner_market_door_1", "targetname" );
    var_1 = getent( "sbmodel_market_door_1", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_physicsref_market_door1", "targetname" );
    var_3 = _ID42237::_ID16638( "struct_animref_market_door1_kick", "targetname" );
    _ID44259( var_0, var_1, var_3, var_2 );
}

_ID50205()
{
    _ID42237::_ID14413( "market_evac_insidepath_start" );
    _ID42407::_ID4917( "allies" );
    level._ID47826 _ID10742( "favesc_cmt_immediatedustoff" );
    _ID42407::_ID28864( "favesc_nkl_notfastenough" );
    level._ID47826 _ID10742( "favesc_cmt_pickuppace" );
    _ID42237::_ID14413( "market_evac_chopper_incoming" );
    _ID42407::_ID28864( "favesc_nkl_toohot" );
    _ID42407::_ID10226( 2, ::_ID54728 );
    level._ID47826 _ID10742( "favesc_cmt_waveoff" );
    _ID42407::_ID28864( "favesc_nkl_meetyouthere" );
}

_ID44181( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 1;

    var_2 = [];

    if ( var_1 )
        var_2 = _ID42411::_ID9185( var_0 );
    else
        var_2 = _ID42411::_ID31551( var_0 );

    var_3 = var_2[0];
    var_3.health = 2000000;
    missile_createrepulsorent( var_3, 1150, 850 );
    return var_3;
}

_ID51914()
{
    var_0 = _ID44181( 4 );
    level._ID7499 = var_0;
    thread _ID46282( 0, "heli_loop", 10 );
    _ID42237::_ID14402( "market_chopper_spawned" );
    var_0 setmaxpitchroll( 30, 40 );
    var_0 thread maps\favela_escape_aud::_ID53808();
    _ID42237::_ID14413( "market_evac_player_near_soccerfield" );
    level._ID7499 delete();
    var_0 = _ID44181( 6, 0 );
    level._ID7499 = var_0;
    thread _ID46282( 0, "warbird_flyby", 6 );
    thread _ID46282( 6, "heli_loop", 9 );
    _ID42237::_ID14402( "market_evac_chopper_spawned" );
    var_1 = _ID42237::_ID16638( "struct_market_evac_chopper_path2", "targetname" );
    var_0 thread _ID51583( var_1 );
}

_ID51583( var_0 )
{
    thread maps\favela_escape_aud::_ID49609();
    _ID42237::_ID14402( "market_evac_chopper_incoming" );
    var_1 = _ID42237::_ID16638( var_0.target, "targetname" );
    var_2 = _ID42237::_ID16638( var_1.target, "targetname" );
    var_3 = _ID42237::_ID16638( var_2.target, "targetname" );
    var_4 = _ID42237::_ID16638( var_3.target, "targetname" );
    self vehicle_setspeedimmediate( 30 );
    self vehicle_setspeed( 30, 15, 5 );
    self setvehgoalpos( var_1.origin, 1 );
    self setmaxpitchroll( 30, 25 );
    self neargoalnotifydist( 256 );
    self waittill( "near_goal" );
    self setgoalyaw( var_1.angles[1] );
    self waittill( "goal" );
    thread _ID42407::_ID27079( "scn_favela_escape_heli_leave" );
    wait 1;
    _ID42237::_ID14402( "market_evac_chopper_bugout" );
    self setvehgoalpos( var_2.origin );
    self vehicle_setspeed( 60, 10 );
    self neargoalnotifydist( 600 );
    self waittill( "near_goal" );
    self setvehgoalpos( var_3.origin );
    _ID42237::_ID14402( "market_evac_chopper_leaves_scene" );
    _ID42407::_ID10226( 4, ::_ID49849 );
    self waittill( "near_goal" );
    self setvehgoalpos( var_4.origin );
    self waittill( "goal" );
    self notify( "death" );
    self delete();
    level._ID7499 = undefined;
}

_ID43515()
{
    _ID42237::_ID14413( "market_evac_insidepath_start" );
    var_0 = "market_evac_ambush_start";
    var_1 = [];
    var_1[var_1.size] = "favesc_pe1_youhearme";
    var_1[var_1.size] = "favesc_pe2_callthetruck";
    var_1[var_1.size] = "favesc_pe3_killslowly";
    var_1[var_1.size] = "favesc_pe3_cantstop";
    var_1[var_1.size] = "favesc_pe2_morerockets";
    var_1[var_1.size] = "favesc_pe4_wellfindyou";
    var_1[var_1.size] = "favesc_pe1_keepthemalive";
    var_2 = 3.5;
    var_3 = 8;
    var_4 = 13;
    var_5 = _ID42237::_ID16640( "struct_market_evac_foreshadow_dialoguespot", "targetname" );
    var_6 = spawn( "script_origin", ( 0, 0, 0 ) );
    wait(randomfloat( var_2 ));

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        var_1 = _ID42237::_ID3320( var_1 );
        var_5 = _ID42237::_ID3320( var_5 );
        var_7 = 0;

        foreach ( var_9 in var_1 )
        {
            if ( _ID42237::_ID14385( var_0 ) )
                break;

            var_6.origin = var_5[var_7].origin;
            var_6 playsound( var_9, "sound_done" );
            var_6 waittill( "sound_done" );

            if ( var_7 == var_5.size - 1 )
                var_7 = 0;
            else
                var_7++;

            wait(randomfloatrange( var_3, var_4 ));
        }
    }

    var_6 delete();
}

_ID49455()
{
    var_0 = _ID42237::_ID16640( "market_evac_ambush_rpg_firespot", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID50456, "market_evac_chopper_leaves_scene" );
}

_ID50456( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        if ( isdefined( self._ID31190 ) )
            var_0 = self._ID31190;
    }

    if ( var_0 == "none" )
        return;

    var_1 = self;
    var_2 = level._ID52504;
    var_3 = 5;
    var_4 = 12;
    var_5 = 0.1;
    var_6 = 0.15;
    var_7 = 0.5;
    var_8 = 1;
    var_9 = var_1.origin;

    while ( !_ID42237::_ID14385( var_0 ) && isdefined( level._ID7499 ) )
    {
        var_10 = _ID54703( var_2 );
        var_11 = randomintrange( 5, 12 );

        for ( var_12 = 0; var_12 < var_11; var_12++ )
        {
            if ( !isdefined( level._ID7499 ) )
                break;

            var_13 = level._ID7499.origin[0] + randomintrange( -256, 256 );
            var_14 = level._ID7499.origin[1] + randomintrange( -256, 256 );
            var_15 = level._ID7499.origin[2] + randomintrange( -256, 0 );
            var_16 = ( var_13, var_14, var_15 );
            var_17 = vectortoangles( var_16 - var_9 );
            var_18 = anglestoforward( var_17 );
            var_19 = var_18 * 12;
            var_20 = var_9 + var_19;
            var_21 = bullettrace( var_1.origin, var_20, 1 );
            var_22 = var_21["entity"];

            if ( isdefined( var_22 ) )
            {
                if ( isdefined( level._ID47826 ) )
                {
                    if ( var_22 == level._ID47826 )
                        continue;
                }

                if ( isplayernumber( var_22 ) )
                    continue;
            }

            magicbullet( var_10, var_1.origin, var_20 );
            wait(randomfloatrange( var_5, var_6 ));
        }

        wait(randomfloatrange( var_7, var_8 ));
    }
}

_ID45996()
{
    var_0 = _ID42237::_ID16640( "market_evac_ambush_rpg_firespot", "targetname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3._ID31453 ) )
            var_1[var_1.size] = var_3;
    }

    var_5 = var_1.size - 1;

    for ( var_6 = 0; var_6 < var_5; var_6++ )
    {
        for ( var_7 = 0; var_7 < var_5 - var_6; var_7++ )
        {
            if ( var_1[var_7 + 1]._ID31453 < var_1[var_7]._ID31453 )
            {
                var_8 = var_1[var_7];
                var_1[var_7] = var_1[var_7 + 1];
                var_1[var_7 + 1] = var_8;
            }
        }
    }

    var_0 = _ID42237::_ID3322( var_0, var_1 );
    var_0 = _ID42237::_ID3320( var_0 );

    foreach ( var_3 in var_0 )
        var_1[var_1.size] = var_3;

    foreach ( var_3 in var_1 )
    {
        var_12 = _ID42237::_ID16638( var_3.target, "targetname" );
        var_13 = magicbullet( "rpg_straight", var_3.origin, var_12.origin );
        var_13 thread _ID42407::_ID27001( "scn_evac_rpg_loop", undefined, 1 );
        wait(randomfloatrange( 0.8, 1.5 ));
    }

    while ( !_ID42237::_ID14385( "market_evac_chopper_leaves_scene" ) && isdefined( level._ID7499 ) )
    {
        var_1 = _ID42237::_ID3320( var_1 );

        foreach ( var_3 in var_1 )
        {
            if ( _ID42237::_ID14385( "market_evac_chopper_leaves_scene" ) || !isdefined( level._ID7499 ) )
                break;

            if ( _ID27290( var_3.origin ) )
            {
                wait 0.05;
                continue;
            }

            var_12 = level._ID7499;
            var_13 = magicbullet( "rpg_straight", var_3.origin, var_12.origin );
            var_13 thread _ID42407::_ID27001( "scn_evac_rpg_loop", undefined, 1 );
            wait(randomfloatrange( 0.8, 1.5 ));
        }
    }

    _ID42475::_ID34575( "stop_evac_fakefire_rpgs" );
}

_ID46773()
{
    var_0 = level._ID49240;

    foreach ( var_2 in var_0 )
    {
        var_2 disconnectpaths();
        var_2 delete();
    }
}

_ID43528()
{
    var_0 = getentarray( "ai_market_evac_ambusher", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_ID44628 );
    wait 1.5;
    _ID44030( "trig_market_evac_spawn1" );
    _ID42237::_ID14400( "housespawners_done" );
    _ID42407::_ID10226( 9, ::_ID43706 );
    _ID42237::_ID14413( "housespawners_done" );
    wait 0.05;
    var_1 = 2;

    for (;;)
    {
        var_2 = _ID49469();
        var_3 = 0;

        foreach ( var_5 in var_2 )
        {
            if ( isalive( var_5 ) && !var_5 _ID42407::_ID11498() )
                var_3++;
        }

        if ( var_3 <= var_1 )
        {
            break;
            continue;
        }

        wait 0.1;
    }

    var_7 = _ID49469();
    level thread _ID50496( var_7, 4 );
    _ID42237::_ID14402( "market_evac_enemies_depleted" );
}

_ID49469()
{
    var_0 = getaiarray( "axis" );
    var_0 = _ID42407::_ID3328( var_0 );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3.script_noteworthy ) && var_3.script_noteworthy == "ai_market_evac_ambusher" )
            var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID44628()
{
    self endon( "death" );
    self._ID4867 = self._ID4867 * 0.35;

    if ( isdefined( level._ID7499 ) )
        self setentitytarget( level._ID7499, 0.4 );

    wait 15;
    _ID43767();
}

_ID43706()
{
    var_0 = getentarray( "spawner_market_evac_door1", "targetname" );
    var_1 = getentarray( "spawner_market_evac_door2", "targetname" );
    var_2 = getentarray( "spawner_market_evac_door3", "targetname" );
    var_3 = getent( "sbmodel_market_evac_door1", "targetname" );
    var_4 = getent( "sbmodel_market_evac_door2", "targetname" );
    var_5 = getent( "sbmodel_market_evac_door3", "targetname" );
    var_6 = _ID42237::_ID16638( "struct_animref_market_evac_kick_door1", "targetname" );
    var_7 = _ID42237::_ID16638( "struct_animref_market_evac_kick_door2", "targetname" );
    var_8 = _ID42237::_ID16638( "struct_animref_market_evac_kick_door3", "targetname" );
    thread _ID44259( var_2, var_5, var_8 );
    _ID42407::_ID10226( 2, ::_ID44259, var_0, var_3, var_6 );
    _ID42407::_ID10226( 4, ::_ID44259, var_1, var_4, var_7 );
    wait 6;
    _ID42237::_ID14402( "housespawners_done" );
}

_ID43896()
{
    var_0 = "market_evac_player_on_roof";
    level endon( var_0 );
    var_1 = [];
    var_1[var_1.size] = "favesc_cmt_getuphere";
    var_1[var_1.size] = "favesc_cmt_climbup";
    var_1[var_1.size] = "favesc_cmt_climbuphere";

    while ( !_ID42237::_ID14385( var_0 ) && isdefined( level._ID47826 ) )
    {
        var_1 = _ID42237::_ID3320( var_1 );

        foreach ( var_3 in var_1 )
        {
            while ( distance( level.player.origin, level._ID47826.origin ) < 256 )
                wait 1;

            if ( !_ID42237::_ID14385( var_0 ) )
            {
                level._ID47826 _ID10742( var_3 );
                wait 20;
            }
        }
    }
}

_ID44491( var_0 )
{
    while ( level.player.origin[2] < var_0 )
        wait 0.05;

    _ID42237::_ID14402( "market_evac_player_mantled" );
}

_ID54188( var_0 )
{
    var_1 = getent( "trig_market_evac_mantlehelper", "targetname" );
    notifyoncommand( "mantle", "+gostand" );
    notifyoncommand( "mantle", "+moveup" );

    for (;;)
    {
        if ( level.player istouching( var_1 ) && !level.player canmantle() && level.player.origin[2] < var_0 )
        {
            thread _ID46172( var_1 );

            while ( level.player istouching( var_1 ) )
            {
                level.player _ID52323( var_1 );
                level.player forcemantle();
                setsaveddvar( "hud_forceMantleHint", 0 );

                while ( !level.player isonground() )
                    wait 0.05;

                break;
            }
        }
        else
            setsaveddvar( "hud_forceMantleHint", 0 );

        wait 0.05;
    }
}

_ID52323( var_0 )
{
    self endon( "left_trigger" );
    thread _ID44139( var_0 );
    self waittill( "mantle" );
}

_ID44139( var_0 )
{
    self endon( "mantle" );

    while ( self istouching( var_0 ) )
        wait 0.05;

    self notify( "left_trigger" );
}

_ID44040()
{
    level._ID47826 _ID10742( "favesc_cmt_letsgoletsgo" );
    _ID42407::_ID28864( "favesc_nkl_wholevillage" );
    level._ID47826 _ID10742( "favesc_cmt_pickusup" );
    level._ID51527 _ID10742( "favesc_gst_runoutofroof" );
    level._ID30909["freerunner"]["favela_escape_bigjump_ghost"] = "favesc_gst_jumpsfx";
    level._ID47826 _ID10742( "favesc_cmt_makeitgogo" );
    level._ID30909["freerunner"]["favela_escape_bigjump_soap"] = "favesc_cmt_jumpsfx";

    if ( !_ID42237::_ID14385( "player_jump_watcher_stop" ) && !_ID42237::_ID14385( "player_fell_normally" ) )
        thread _ID45861();
}

_ID45861()
{
    level endon( "player_fell_normally" );
    level endon( "player_jump_watcher_stop" );
    var_0 = [];
    var_0[0] = "favesc_cmt_gettochopper";
    var_0[1] = "favesc_cmt_whatsholdup";
    var_0[2] = "favesc_cmt_getoutta";
    var_1 = 0;
    var_2 = 10000;
    var_3 = -1;

    for (;;)
    {
        wait 0.1;
        var_4 = 0;
        var_5 = 0;
        var_6 = level.player getvelocity();
        var_7 = distance( ( var_6[0], var_6[1], 0 ), ( 0, 0, 0 ) );

        if ( var_7 < 125 )
            var_4 = 1;

        if ( gettime() >= var_3 )
            var_5 = 1;

        if ( !var_4 || !var_5 )
            continue;

        level._ID47826 _ID10742( var_0[var_1] );
        var_3 = gettime() + var_2;
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;
    }
}

_ID48487()
{
    while ( level._ID51544 < level._ID49912.size )
        wait 0.05;

    _ID42237::_ID14402( "roofrun_done" );
}

_ID50416()
{
    level._ID43135.greenberet_disabled = 1;
    var_0 = level.player;
    var_1 = getent( "trig_roofrun_player_bigjump_start", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_player_bigjump_edge_reference", "targetname" );
    var_3 = getnode( "big_jump_node", "targetname" );
    _ID50100( var_3 );
    var_4 = anglestoforward( var_2.angles );
    thread _ID43630();
    thread _ID47764();
    level endon( "player_fell_normally" );

    for (;;)
    {
        var_5 = 0;

        while ( level.player istouching( var_1 ) )
        {
            _ID42237::_ID14413( "player_jumping" );

            if ( _ID49536( var_1, var_4, 0.915, 1 ) )
            {
                var_5 = 1;
                break;
            }

            wait 0.05;
        }

        if ( var_5 )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "player_jump_watcher_stop" );
    thread _ID49650();
    var_6 = getent( "trig_roofrun_playerjump_falltrig", "targetname" );
    var_6 delete();
    _ID42237::_ID14402( "roofrun_player_bigjump_start" );
    var_7 = getnode( "big_jump_node", "targetname" );
    var_8 = _ID53412( var_0, var_7 );
    thread _ID46333( var_8, var_3 );
    thread _ID43146();
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showStance", 0 );
    var_8 waittillmatch( "single anim",  "start_soap"  );
    level.player freezecontrols( 1 );
    level.player allowcrouch( 1 );
    level._ID47826 thread _ID43645( 1 );

    if ( _ID42237::_ID14385( "roofrun_sarge_bigjumped" ) )
    {
        thread _ID47427();
        _ID42237::_ID14402( "bigjump_sargeplayer_interact_start" );

        if ( isdefined( level._ID47826._ID54091 ) )
            level._ID47826._ID54091 notify( "stop_loop" );

        var_7 thread _ID42259::_ID3111( level._ID47826, "favela_escape_bigjump_soap_reach" );
    }

    thread _ID43385( var_8, var_3 );

    if ( _ID42237::_ID14385( "roofrun_sarge_bigjumped" ) )
    {
        level._ID47826 waittillmatch( "single anim",  "end"  );
        wait 1;
    }
    else
        wait 5;
}

_ID53412( var_0, var_1 )
{
    var_2 = "player_bigjump";
    var_3 = "jump";
    _ID42475::_ID34575( "start_player_bigjump" );
    var_4 = _ID42407::_ID35028( var_2 );
    var_5 = var_4 _ID42407::_ID16120( var_3 );
    var_6 = getstartorigin( var_1.origin, var_1.angles, var_5 );
    var_7 = getstartangles( var_1.origin, var_1.angles, var_5 ) - var_0.angles;
    var_8 = spawnstruct();
    var_8.angles = var_1.angles - var_7;
    var_9 = var_6 - var_0.origin;
    var_10 = var_1.origin - var_6;
    var_11 = var_10[0] * cos( var_7[1] ) - var_10[1] * sin( var_7[1] );
    var_12 = var_10[0] * sin( var_7[1] ) + var_10[1] * cos( var_7[1] );
    var_13 = var_10 - ( var_11, var_12, var_10[2] );
    var_8.origin = var_1.origin - var_9 + var_13;
    var_4 hide();
    var_8 _ID42259::_ID3018( var_4, var_3 );
    var_0 disableweapons( 1, 500 );
    var_0 allowcrouch( 0 );
    thread _ID43934();
    var_4 thread handle_player_big_jump_notetrack();
    var_0 playerlinktoblend( var_4, "tag_player", 0.5, 0.25, 0.25 );
    var_14 = "single anim";
    var_4 animscripted( var_14, var_8.origin, var_8.angles, var_5 );
    var_15 = getnotetracktimes( var_5, "start_roof_collapse" );
    var_16 = getanimlength( var_5 ) * var_15[0];
    var_4 thread _ID42259::_ID46811( undefined, var_8, var_1, var_16 );
    wait 0.5;
    var_0 takeallweapons();
    var_0 playerlinktodelta( var_4, "tag_player", 1.0, 0, 0, 0, 0, 1 );
    var_4 show();
    return var_4;
}

handle_player_big_jump_notetrack()
{
    for (;;)
    {
        self waittill( "single anim",  var_0  );

        if ( isdefined( var_0 ) )
        {
            var_1 = getsubstr( var_0, 0, 3 );

            if ( var_1 == "ps_" )
            {
                var_2 = getsubstr( var_0, 3 );
                self playsound( var_2 );
            }
            else if ( var_0 == "end" )
                return;
            else if ( var_0 == "webble" )
                _ID42237::_ID14402( "no_wobble_roof" );
        }
    }
}

_ID43146()
{
    wait 1.25;
    level.player playrumblelooponentity( "artillery_rumble" );
    wait 0.25;
    var_0 = gettime() + _ID47906( 0.4 );

    while ( gettime() < var_0 )
    {
        level.player playrumblelooponentity( "damage_light" );
        wait 0.115;
    }

    wait 0.1;
    level.player playrumblelooponentity( "artillery_rumble" );
}

_ID47427()
{
    wait 0.5;
    _ID42407::_ID34379();
    _ID42407::_ID34377( 0.3 );
    _ID42407::_ID34374( 0.15 );
    _ID42407::_ID34371();
    thread maps\favela_escape_aud::_ID43790();
    wait 0.6;
    _ID42407::_ID34375( 0.15 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
    thread maps\favela_escape_aud::_ID52893();
}

_ID47764()
{
    level endon( "player_jump_watcher_stop" );
    var_0 = getent( "trig_roofrun_playerjump_falltrig", "targetname" );
    var_0 waittill( "trigger" );
    var_0 delete();
    _ID42237::_ID14402( "player_fell_normally" );
    var_1 = _ID42313::_ID9125( "black", 0, level.player );
    var_1 fadeovertime( 0.2 );
    var_1.alpha = 1.0;
    _ID42475::_ID34575( "start_player_normal_fall" );
    thread _ID43385();
    var_1 _ID42237::_ID10192( 2.0, ::destroy );
}

_ID43385( var_0, var_1 )
{
    var_2 = getent( "vista_end", "targetname" );
    var_3 = getentarray( "vista_end_water", "targetname" );
    var_3 = _ID42237::_ID3293( var_3, var_2 );

    foreach ( var_5 in var_3 )
        var_5 show();

    var_7 = getent( "sky_favela_escape", "targetname" );
    var_7 delete();
    _ID42234::_ID13611( "cloud_mountain_vista_favela_s" );
    _ID42234::_ID13611( "cloud_mountain_vista_02_favela_s" );
    _ID42234::_ID13611( "mist_ocean_vista_02_favela_s" );
    _ID42234::_ID13611( "mist_ocean_vista_favela_s" );
    level.player disableoffhandweapons();

    if ( isdefined( var_0 ) )
        var_0 waittillmatch( "single anim",  "blackout"  );
    else
    {
        level.player enableinvulnerability();

        while ( !level.player isonground() )
            wait 0.05;

        _ID42407::_ID24584();
        level.player freezecontrols( 1 );
        level.player disableinvulnerability();
    }

    level.player _meth_80b5( "artillery_rumble" );
    level.player _ID42237::_ID10192( 1, ::_meth_80b6, "artillery_rumble" );
    var_8 = 6.5;
    thread _ID50646( var_8 );
    thread _ID43074( var_8 );
    var_9 = "favela_escape_player_recovery";
    level.player shellshock( var_9, var_8 + 0.1 );

    if ( !isdefined( var_1 ) )
        var_1 = getnode( "big_jump_node", "targetname" );

    setsaveddvar( "objectiveHide", 1 );
    level thread _ID52086();
    var_10 = _ID42313::_ID9125( "black", 0, level.player );
    var_10 fadeovertime( 0.1 );
    var_10.alpha = 1;
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    level.player setstance( "stand" );
    _ID42237::_ID14402( "player_recovery_blackscreen" );
    level.player takeallweapons();
    var_11 = "player_bigjump";
    var_12 = "recover";
    var_13 = level._ID30895[var_11][var_12];
    var_14 = getstartorigin( var_1.origin, var_1.angles, var_13 );
    var_15 = getstartangles( var_1.origin, var_1.angles, var_13 );

    if ( !isdefined( var_0 ) )
    {
        var_0 = _ID42407::_ID35028( "player_bigjump", var_14 );
        var_0.angles = var_15;
        level.player playerlinktoblend( var_0, "tag_player", 0.05 );
    }

    foreach ( var_17 in level._ID49912 )
    {
        var_17 notify( "stop_loop" );

        if ( isdefined( var_17._ID54091 ) )
            var_17._ID54091 notify( "stop_loop" );
    }

    _ID42407::_ID10226( 0.05, ::_ID51958 );
    var_19 = _ID42407::_ID16053( "veh_chopper_roofrun", "targetname" );

    if ( isdefined( var_19 ) )
        var_19 delete();

    thread maps\favela_escape_lighting::_ID50564( "favela_escape_playerfall_recovery" );
    wait(var_8);
    _ID42237::_ID14402( "player_bigjump_done" );
    var_1 thread _ID42259::_ID3111( var_0, var_12 );
    var_20 = getanimlength( level._ID30895["player_bigjump"]["recover"] );
    thread _ID48252( var_20 );
    thread _ID53615( var_20, var_9 );
    thread _ID48207( level._ID27625 );
    wait 0.3;
    setomnvar( "ui_consciousness_init", 1 );
    setsaveddvar( "ui_consciousnessVignetteDarkness", 0.5 );
    setomnvar( "ui_consciousness_play", 1 );
    _ID42407::_ID10226( var_20 - 2, ::_ID46642 );
    wait 0.25;
    var_10 fadeovertime( 0.5 );
    var_10.alpha = 0;
    var_0 waittillmatch( "single anim",  "end"  );
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
    thread maps\favela_escape_lighting::_ID50564( "favela_escape" );
    _ID42237::_ID14402( "player_recovery_done" );
    _ID42475::_ID34575( "start_player_recovery_done" );
    var_10 destroy();
    level.player unlink();
    level.player freezecontrols( 0 );
    var_0 delete();
    setsaveddvar( "compass", 1 );
    setsaveddvar( "hud_showStance", 1 );
}

_ID48252( var_0 )
{
    var_1 = var_0 * 0.75;
    wait(var_1);
    _ID42237::_ID14402( "solorun_objective_display" );
    setsaveddvar( "objectiveHide", 0 );
}

_ID46062()
{
    setsaveddvar( "cg_fov", 30 );
    wait 5;
    _ID42407::_ID22156( 2, 40 );
    wait 2.2;
    _ID42407::_ID22156( 2, 65 );
}

_ID43934()
{
    var_0 = _ID54167::_ID43386( "favela_escape_player_failjump" );
    var_0 _ID54167::_ID48800( 3.15 ) _ID54167::_ID44191( 53, 0.7, 0 );
    var_0 _ID54167::_ID48800( 4.0 ) _ID54167::_ID43500( 0.65, 0 );
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 6.3 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 1.15 ) _ID54167::_ID50321( 8.0, 18, 32.0, 32.0 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 1.5 ) _ID54167::_ID50321( 6.0, -1, 8.0, 8.0 ) _ID54167::_ID44545( 2.0 ) _ID54167::_ID52391( level._ID47826, "tag_eye" );
    var_0 _ID54167::_ID48800( 2.15 ) _ID54167::_ID50321( 4.0, 16, 6.0, 6.0 );
    var_0 _ID54167::_ID48800( 2.85 ) _ID54167::_ID50321( 3.0, -1, 3.0, 3.0 ) _ID54167::_ID44545( 2.0 ) _ID54167::_ID52391( level._ID47826, "tag_eye" );
    var_0 _ID54167::_ID48800( 6.3 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 1.05 ) _ID54167::_ID47198( 0.25, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.4 );
    var_0 _ID54167::_ID48800( 1.8 ) _ID54167::_ID47198( 0.25, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_0 _ID54167::_ID48166();
}

_ID48207( var_0 )
{
    var_1 = _ID54167::_ID43386( "favela_escape_player_wakeup" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 40, 0.0, 0 );
    var_1 _ID54167::_ID48800( 2.85 ) _ID54167::_ID44191( 26, 1.3, 0 );
    var_1 _ID54167::_ID48800( 5.5 ) _ID54167::_ID44191( 35, 1.3, 0 );
    var_1 _ID54167::_ID48800( 8.3 ) _ID54167::_ID44191( 40, 0.85, 0 );
    var_1 _ID54167::_ID48800( 9.5 ) _ID54167::_ID43500( 2.0, 0 );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.0, 27, 16.0, 16.0 ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 2.85 ) _ID54167::_ID50321( 2.0, 1000, 3.0, 3.0 );
    var_1 _ID54167::_ID48800( 5.5 ) _ID54167::_ID50321( 2.0, 1100, 3.0, 3.0 );
    var_1 _ID54167::_ID48800( 8.3 ) _ID54167::_ID50321( 2.0, 1000, 3.0, 3.0 );
    var_1 _ID54167::_ID48800( 10.0 ) _ID54167::_ID50321( 16.0, 250, 0.7, 0.7 );
    var_1 _ID54167::_ID48800( 11.6 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_1 _ID54167::_ID48800( 11.6 ) _ID54167::_ID47844( 0 );
    var_1 _ID54167::_ID48800( 2.2 ) _ID54167::_ID47198( 0.06, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_1 _ID54167::_ID48800( 2.6 ) _ID54167::_ID47198( 0.08, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_1 _ID54167::_ID48800( 8.55 ) _ID54167::_ID47198( 0.06, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_1 _ID54167::_ID48800( 11.6 ) _ID54167::_ID47198( 0.08, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_1 _ID54167::_ID48166();
}

_ID46642()
{
    savegame( "bigjump_recovery", &"AUTOSAVE_AUTOSAVE" );
}

_ID43697( var_0 )
{
    var_1 = 175;
    var_2 = 300;
    var_3 = 425;
    var_4 = 80;
    var_5 = 90;
    var_6 = 95;
    var_7 = 1.2;
    var_8 = 1.4;
    var_9 = 1.5;
    var_10 = 0.5;
    var_11 = 850;
    var_12 = 75;

    while ( !_ID42237::_ID14385( "roofrun_done" ) )
    {
        var_13 = _ID51883( var_0 );
        var_14 = var_5;
        var_15 = var_8;

        if ( var_13 > var_3 )
        {
            var_14 = var_6;
            var_15 = var_9;
        }
        else
        {
            var_16 = _ID47387( var_13, var_1, var_2 );
            var_17 = var_5 - var_4;
            var_18 = var_17 * ( 1 - var_16 );
            var_14 = var_5 - var_18;
            var_19 = var_8 - var_7;
            var_20 = var_19 * ( 1 - var_16 );
            var_15 = var_8 - var_20;

            if ( var_13 >= var_2 )
            {

            }
            else if ( var_13 <= var_1 )
            {

            }
        }

        _ID42407::_ID27683( var_14, var_10 );
        _ID49651( var_15, var_10 );
        wait(var_10);
    }
}

_ID51883( var_0 )
{
    var_1 = level.player.origin;
    var_2 = var_0.origin + anglestoright( var_0.angles ) * -5000;
    var_3 = var_0.origin + anglestoright( var_0.angles ) * 5000;
    var_4 = pointonsegmentnearesttopoint( var_2, var_3, var_1 );
    return distance( var_1, var_4 );
}

_ID47387( var_0, var_1, var_2 )
{
    if ( var_0 >= var_2 )
        return 1.0;

    if ( var_0 <= var_1 )
        return 0.0;

    var_3 = ( var_0 - var_1 ) / ( var_2 - var_1 );
    var_3 = clamp( var_3, 0.0, 1.0 );
    return var_3;
}

_ID49651( var_0, var_1 )
{
    var_2 = getdvarfloat( "player_sprintSpeedScale" );

    if ( isdefined( var_1 ) )
    {
        var_3 = var_0 - var_2;
        var_4 = 0.05;
        var_5 = var_1 / var_4;
        var_6 = var_3 / var_5;

        while ( abs( var_0 - var_2 ) > abs( var_6 * 1.1 ) )
        {
            var_2 += var_6;
            setsaveddvar( "player_sprintSpeedScale", var_2 );
            wait(var_4);
        }
    }

    setsaveddvar( "player_sprintSpeedScale", var_0 );
}

_ID46474( var_0 )
{
    self endon( "death" );
    _ID42407::_ID13027( "roofrun_start" );

    if ( !isdefined( var_0 ) )
        var_0 = 0;

    _ID42407::_ID32328( "freerunnerA_run" );

    if ( !var_0 )
    {
        var_1 = _ID42237::_ID16638( "roofrun_jump1", "targetname" );
        var_2 = "freerunnerA_sideslope";
        var_1 _ID42259::_ID3074( self, var_2 );
        var_1 _ID42259::_ID3110( self, var_2 );
        _ID52465();
        var_3 = _ID42237::_ID16638( "roofrun_sarge_waitforplayer", "targetname" );
        self setgoalpos( var_3.origin );
        self waittill( "goal" );
    }
    else
        _ID52465();

    _ID42237::_ID14413( "player_near_bigjump" );
    thread _ID46282( 0, "heli_loop", 5 );
    var_1 = getnode( "big_jump_node", "targetname" );
    var_2 = "favela_escape_bigjump_soap";
    self._ID7._ID50527 = 8;
    var_1 _ID42259::_ID3074( self, var_2 );
    self._ID7._ID50527 = undefined;
    self pushplayer( 0 );

    if ( !_ID42237::_ID14385( "roofrun_player_bigjump_start" ) )
    {
        _ID42237::_ID14402( "roofrun_sarge_bigjumped" );
        var_1 _ID42259::_ID3111( self, var_2 );
        self setgoalpos( self.origin );

        if ( !_ID42237::_ID14385( "bigjump_sargeplayer_interact_start" ) )
        {
            var_2 = "favela_escape_bigjump_soap_loop";
            self._ID54091 = var_1;
            var_1 thread _ID42259::_ID3044( self, var_2, "stop_loop" );
        }
    }

    level._ID51544++;
}

_ID52461( var_0 )
{
    self endon( "death" );
    var_1 = _ID42237::_ID16638( "roofrun_jump2", "targetname" );
    var_2 = "roofrun_laundry_2";
    var_3 = getent( "smodel_roofrun_sheet_right", "targetname" );
    thread _ID49226( var_1, var_3, var_2 );
    _ID42407::_ID13027( "roofrun_start" );

    if ( !isdefined( var_0 ) )
        var_0 = 0;

    _ID42407::_ID32328( "freerunnerB_run" );

    if ( !var_0 )
    {
        var_2 = "freerunnerB_mid";
        var_1 _ID42259::_ID3074( self, var_2 );
        var_1 _ID42259::_ID3110( self, var_2 );
    }

    _ID52465();
    var_1 = getnode( "big_jump_node", "targetname" );
    var_2 = "favela_escape_bigjump_ghost";

    if ( !var_0 )
    {
        self._ID7._ID50527 = 8;
        var_1 _ID42259::_ID3074( self, var_2 );
        self._ID7._ID50527 = undefined;
    }

    self pushplayer( 0 );
    var_1 _ID42259::_ID3110( self, var_2 );
    self._ID54091 = var_1;
    var_2 = "favela_escape_bigjump_ghost_loop";
    var_1 thread _ID42259::_ID3044( self, var_2, "stop_loop" );
    level._ID51544++;
}

_ID43901( var_0 )
{
    self endon( "death" );
    var_1 = _ID42237::_ID16638( "roofrun_jump2", "targetname" );
    var_2 = "roofrun_laundry_1";
    var_3 = getent( "smodel_roofrun_sheet_left", "targetname" );
    thread _ID49226( var_1, var_3, var_2 );
    _ID42407::_ID13027( "roofrun_start" );

    if ( !isdefined( var_0 ) )
        var_0 = 0;

    _ID42407::_ID32328( "freerunnerA_run" );

    if ( !var_0 )
    {
        var_2 = "freerunnerA_left";
        var_1 _ID42259::_ID3074( self, var_2 );
        var_1 _ID42259::_ID3110( self, var_2 );
    }

    _ID52465();
    var_1 = getnode( "big_jump_node", "targetname" );
    var_2 = "favela_escape_bigjump_faust";

    if ( !var_0 )
    {
        self._ID7._ID50527 = 8;
        var_1 _ID42259::_ID3074( self, var_2 );
        self._ID7._ID50527 = undefined;
    }

    self pushplayer( 0 );
    var_1 _ID42259::_ID3110( self, var_2 );
    self._ID54091 = var_1;
    var_2 = "favela_escape_bigjump_faust_loop";
    var_1 thread _ID42259::_ID3044( self, var_2, "stop_loop" );
    level._ID51544++;
}

_ID49226( var_0, var_1, var_2 )
{
    var_3 = _ID42407::_ID35028( "laundry", var_1.origin );
    var_3.angles = var_1.angles;
    var_1 delete();
    var_0 thread _ID42259::_ID3018( var_3, var_2 );
    self waittillmatch( "single anim",  "start_laundry"  );
    var_0 _ID42259::_ID3111( var_3, var_2 );
}

_ID45772()
{
    _ID52465();
    self waittill( "roofrun_reset" );
    _ID47888();
    self setgoalpos( self.origin );
    _ID49779();
}

_ID52465()
{
    self pushplayer( 1 );
    _ID42407::_ID10896();
    self.dontavoidplayer = 1;
    self._ID10998 = 1;
    self._ID11025 = 1;
    self.usechokepoints = 0;
    _ID19365();
    _ID47402( 32 );
    _ID43941( 1 );

    if ( !isdefined( self._ID43795 ) )
        self._ID50447 = self.walkdistfacingmotion;

    self.walkdistfacingmotion = 0;

    if ( !isdefined( self._ID43795 ) )
        self._ID53974 = self.maxsightdistsqrd;

    self.maxsightdistsqrd = 0;

    if ( !isdefined( self._ID43795 ) )
        self._ID52067 = self.pathrandompercent;

    self.pathrandompercent = 0;

    if ( !isdefined( self._ID43795 ) )
        self._ID49555 = self._ID3189;

    self._ID3189 = "freerunner";
    self._ID43795 = 1;
}

_ID49779()
{
    self notify( "roofrun_friendly_cleanup" );
    self._ID24424 = 1;
    self._ID3195 = 1;
    self._ID24474 = 1;
    self pushplayer( 0 );
    self.dontavoidplayer = 0;
    self._ID10998 = 0;
    self._ID11025 = 0;
    self.usechokepoints = 1;
    self.walkdistfacingmotion = self._ID50447;
    _ID47487();
    _ID47888();
    self.maxsightdistsqrd = self._ID53974;
    self.pathrandompercent = self._ID52067;
    self._ID3189 = self._ID49555;
}

_ID49536( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0.965;

    if ( !isdefined( var_3 ) )
        var_3 = 1;

    if ( !level.player istouching( var_0 ) )
        return 0;

    if ( level.player getstance() != "stand" )
        return 0;

    if ( var_3 && level.player isonground() )
        return 0;

    var_4 = level.player getplayerangles();
    var_4 = ( 0, var_4[1], 0 );
    var_5 = anglestoforward( var_4 );
    var_6 = vectordot( var_5, var_1 );

    if ( var_6 < var_2 )
        return 0;

    var_7 = level.player getvelocity();
    var_8 = distance( ( var_7[0], var_7[1], 0 ), ( 0, 0, 0 ) );

    if ( var_8 < 162 )
        return 0;

    return 1;
}

_ID46333( var_0, var_1 )
{
    var_2 = "breakaway";
    var_0 waittillmatch( "single anim",  "start_roof_collapse"  );
    level._ID54453._ID43571 hide();
    level._ID54453.node _ID42259::_ID3111( level._ID54453._ID29975, var_2 );
}

_ID50100( var_0 )
{
    var_1 = _ID46414();
    var_2 = _ID42407::_ID35028( "roof_rig" );
    var_3 = "breakaway";
    var_4 = level._ID30895[var_2._ID3189][var_3];
    var_2.origin = getstartorigin( var_0.origin, var_0.angles, var_4 );
    var_2.angles = getstartangles( var_0.origin, var_0.angles, var_4 );
    var_1 linkto( var_2 );
    level._ID54453 = spawnstruct();
    level._ID54453.node = var_0;
    level._ID54453._ID29975 = var_2;
    level._ID54453._ID43571 = var_1;
}

_ID46414()
{
    var_0 = getentarray( "roof_fall", "targetname" );
    var_1 = undefined;

    foreach ( var_3 in var_0 )
    {
        if ( var_3.code_classname == "script_brushmodel" )
        {
            var_1 = var_3;
            break;
        }
    }

    var_0 = _ID42237::_ID3321( var_0, var_1 );

    foreach ( var_3 in var_0 )
    {
        var_3 linkto( var_1 );
        var_3 hide();
    }

    return var_1;
}

_ID49750( var_0 )
{
    wait 0.3;
    level.player playerlinktoblend( var_0, "tag_player", 0.6, 0.2, 0.4 );
}

_ID53615( var_0, var_1 )
{
    var_2 = var_0 * 0.75;
    var_3 = gettime() + _ID47906( var_2 );
    level.player shellshock( var_1, var_2 + 1.5 );
}

_ID54323( var_0 )
{
    var_1 = 1.5;
    var_2 = gettime() + _ID47906( var_0 );

    while ( gettime() < var_2 )
    {
        _ID42237::_ID27077( "breathing_heartbeat", level.player.origin );

        if ( gettime() < var_2 )
            wait(var_1);
    }

    var_1 = 1;
    _ID42237::_ID27077( "breathing_hurt_start", level.player.origin, 1 );
    wait(var_1);
    var_3 = 0;

    while ( !_ID42237::_ID14385( "player_recovery_done" ) )
    {
        var_4 = "breathing_hurt";

        if ( var_3 % 2 != 0 )
            var_4 = "breathing_heartbeat";

        _ID42237::_ID27077( var_4, level.player.origin, 1 );
        var_3++;
        wait(var_1);
    }

    _ID42237::_ID27077( "breathing_better", level.player.origin, 1 );
}

_ID43074( var_0 )
{
    wait 5.5;
    _ID42407::_ID28864( "favesc_cmt_wakeup" );
    wait 0.5;
    _ID42407::_ID28864( "favesc_gst_comingforyou" );
    wait 0.5;
    thread _ID42407::_ID28864( "favesc_cmt_toomany" );
}

_ID50646( var_0 )
{
    if ( isdefined( var_0 ) )
        wait(var_0);

    thread _ID50290();
    thread _ID51267();
    thread _ID43191();
    _ID42407::_ID10226( 3.5, ::_ID53155 );
    _ID42407::_ID10226( 7.75, ::_ID52879 );
}

_ID53155()
{
    wait 1;
    var_0 = _ID42237::_ID16638( "struct_mob_roof_2", "targetname" );
    var_1 = _ID42237::_ID16638( "struct_mob_roof_1", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_mob_roof_3", "targetname" );
    var_3 = getentarray( "spawner_mob_left_roof", "targetname" );
    var_4 = _ID35081( var_3, 1, 0 );
    var_4[0]._ID3196 = var_0;
    var_4[0]._ID3183 = "favela_escape_rooftop_mob1";
    var_4[1]._ID3196 = var_0;
    var_4[1]._ID3183 = "favela_escape_rooftop_mob2";
    var_4[2]._ID3196 = var_2;
    var_4[2]._ID3183 = "favela_escape_rooftop_mob4";
    var_4[3]._ID3196 = var_1;
    var_4[3]._ID3183 = "favela_escape_rooftop_mob3";
    _ID42237::_ID3350( var_4, ::_ID43836 );
}

_ID52879()
{
    var_0 = getent( "animref_mob_left", "targetname" );
    var_1 = getentarray( "spawner_mob_left", "targetname" );
    var_2 = [];
    var_2[var_2.size] = "mob_left_A";
    var_2[var_2.size] = "mob_left_B";
    var_2[var_2.size] = "mob_left_C";
    var_2[var_2.size] = "mob_left_D";
    var_3 = _ID35081( var_1, 1, 0 );

    foreach ( var_8, var_5 in var_3 )
    {
        var_5.ignoreall = 1;
        var_5.ignoreme = 1;
        var_6 = var_2[var_8];
        var_7 = level._ID30895["generic"][var_6];
        var_0 thread _ID42259::_ID3024( var_5, var_6 );
        var_5 thread _ID48932( var_7, var_0 );
    }
}

_ID43191()
{
    var_0 = getent( "animref_mob_right", "targetname" );
    var_1 = getentarray( "spawner_mob_right", "targetname" );
    var_2 = [];
    var_2[var_2.size] = "mob2_arc_A";
    var_2[var_2.size] = "mob2_arc_B";
    var_2[var_2.size] = "mob3_arc_C";
    var_2[var_2.size] = "mob2_arc_D";
    var_2[var_2.size] = "mob2_arc_E";
    var_2[var_2.size] = "mob2_arc_F";
    var_2[var_2.size] = "mob2_arc_G";
    var_2[var_2.size] = "mob2_arc_H";
    var_3 = _ID35081( var_1, 1, 0 );

    foreach ( var_8, var_5 in var_3 )
    {
        var_5.ignoreall = 1;
        var_5.ignoreme = 1;
        var_6 = var_2[var_8];
        var_7 = level._ID30895["generic"][var_6];
        var_0 thread _ID42259::_ID3024( var_5, var_6 );
        var_5 thread _ID48932( var_7, var_0 );
    }
}

_ID43836()
{
    self.ignoreall = 1;
    self.ignoreme = 1;
    self._ID3196 _ID42259::_ID3020( self, self._ID3183 );
    self setgoalpos( self.origin );
}

_ID48932( var_0, var_1 )
{
    var_2 = getanimlength( var_0 );
    var_3 = gettime() + _ID47906( var_2 );
    level _ID42237::_ID41078( var_2, "solorun_mob_start_shooting" );

    if ( gettime() < var_3 )
        self stopanimscripted();

    if ( !_ID42237::_ID14385( "solorun_mob_start_shooting" ) )
    {
        _ID42407::_ID32328( "intro_casual_walk", 1 );
        self._ID45793 = 1;
    }

    self.goalradius = 512;
    self setgoalentity( level.player );
    _ID42237::_ID14413( "solorun_mob_start_shooting" );
    self notify( "stop_animmode" );

    if ( isdefined( self._ID45793 ) )
        _ID42407::_ID7892();

    self.ignoreall = 0;
}

_ID43280()
{
    if ( !isdefined( level._ID47533 ) )
        level._ID47533 = [];

    level._ID47533[level._ID47533.size] = self;
    _ID42407::_ID32328( "chase_run", 0, 0 );
}

_ID49927()
{
    _ID42237::_ID14413( "solorun_player_off_balcony" );

    if ( !isdefined( level._ID47533 ) )
        return;

    level._ID47533 = _ID42407::_ID3328( level._ID47533 );
    level._ID47533 = _ID42237::_ID3332( level._ID47533 );
    _ID42237::_ID3350( level._ID47533, ::_ID54328 );
}

_ID51747()
{
    self endon( "death" );
    level.player endon( "death" );

    for (;;)
    {
        var_0 = level.player getplayerangles();
        var_1 = anglestoforward( var_0 );
        var_2 = vectornormalize( self.origin - level.player geteye() );
        var_3 = vectortoangles( var_2 );
        var_4 = anglestoforward( var_3 );
        var_5 = vectordot( var_1, var_4 );

        if ( var_5 > 0.75 || _ID42237::_ID14385( "solorun_player_progression_stalled" ) )
        {
            if ( isdefined( self._ID11575 ) )
                self._ID11575 = undefined;
        }
        else if ( !isdefined( self._ID11575 ) )
            self._ID11575 = 1;

        wait 0.05;
    }
}

_ID54328()
{
    self endon( "death" );

    while ( _ID42407::_ID27291( self ) )
        wait 0.1;

    self delete();
}

_ID50014()
{
    var_0 = getdvarint( "timer_off" );

    if ( isdefined( var_0 ) && var_0 > 0 )
        return;

    _ID42237::_ID14413( "solorun_timer_start" );
    var_1 = 30;
    var_2 = &"FAVELA_ESCAPE_CHOPPER_TIMER";
    thread _ID49031( var_1 );
    thread _ID43925( var_1, var_2, 1 );
    thread _ID54147( var_1, var_2 );
    _ID42237::_ID14413( "chopperjump_player_jump" );
    _ID42313::_ID52053();
}

_ID49031( var_0 )
{
    level endon( "chopperjump_player_jump" );
    level._ID49176 = var_0;

    for (;;)
    {
        wait 1;
        level._ID49176 = level._ID49176 - 1;
    }
}

_ID54147( var_0, var_1 )
{
    if ( level._ID15361 == 3 )
        return;

    _ID42237::_ID14413( "trig_solorun_player_on_slide" );

    if ( level._ID49176 >= 10 )
        thread _ID42407::_ID4422( "chopperjump" );
}

_ID43925( var_0, var_1, var_2 )
{
    level endon( "kill_timer" );
    level._ID37750 = _ID42313::_ID47327( var_0, var_1, var_2 );
    _ID42237::_ID14402( "timer_expired" );
    level thread _ID45194();
}

_ID45194()
{
    var_0 = &"FAVELA_ESCAPE_CHOPPER_TIMER_EXPIRED";
    level.player endon( "death" );
    level endon( "kill_timer" );
    level notify( "mission failed" );
    level.player freezecontrols( 1 );
    setdvar( "ui_deadquote", var_0 );
    _ID42407::_ID23778();
}

_ID53296( var_0 )
{
    level endon( "solorun_player_off_balcony" );
    thread _ID42407::_ID28864( "favesc_cmt_runforit" );
    var_1 = -6074;
    var_2 = 900;
    var_3 = getent( "trig_solorun_start_playersafezone", "targetname" );
    var_4 = level.player.maxhealth;
    thread _ID45736( var_0 );
    thread _ID45708( var_3 );

    for (;;)
    {
        if ( _ID53342( var_1, var_3, "solorun_mob_start_shooting" ) )
        {
            var_5 = level.player.origin;
            var_6 = getaiarray( "axis" );

            if ( var_6.size )
            {
                var_7 = _ID54703( var_6 );
                var_5 = var_7.origin;
            }

            level.player dodamage( var_4 * 0.25, var_5 );

            if ( !_ID42237::_ID14385( "solorun_mob_start_shooting" ) )
                _ID42237::_ID14402( "solorun_mob_start_shooting" );
        }

        wait 0.5;
    }
}

_ID53342( var_0, var_1, var_2 )
{
    if ( level.player.origin[0] < var_0 && !level.player istouching( var_1 ) )
        return 1;

    if ( level.player istouching( var_1 ) && _ID42237::_ID14385( var_2 ) )
        return 1;

    return 0;
}

_ID45736( var_0 )
{
    level endon( "solorun_mob_start_shooting" );
    wait(var_0);
    _ID42237::_ID14402( "solorun_mob_start_shooting" );
}

_ID45708( var_0 )
{
    level endon( "solorun_mob_start_shooting" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( isplayernumber( var_1 ) )
            break;

        wait 0.05;
    }

    while ( level.player istouching( var_0 ) )
        wait 0.05;

    _ID42237::_ID14402( "solorun_mob_start_shooting" );
}

_ID43129()
{
    var_0 = getent( "trig_solorun_civilian_doorshut", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = _ID42237::_ID16638( "struct_solorun_civilian_doorshut_animref", "targetname" );
    var_3 = _ID42407::_ID35028( "civ_door" );
    var_4 = var_1 _ID42407::_ID35014();
    var_4._ID3189 = "default_civilian";
    var_4.ignoreme = 1;
    var_4 _ID19365();
    var_4 thread _ID42407::_ID22746( 1 );
    var_5[0] = var_3;
    var_5[1] = var_4;
    var_2 thread _ID42259::_ID3040( var_5, "run_and_slam_idle", "stop_loop" );
    var_0 waittill( "trigger" );
    var_3 notify( "stop_loop" );
    var_4 notify( "stop_loop" );
    var_2 _ID42259::_ID3099( var_5, "run_and_slam" );
    var_4 setgoalpos( var_4.origin );
    var_4 thread _ID42259::_ID3044( var_4, "run_and_slam_endidle", "stop_loop" );
    _ID42237::_ID14413( "solorun_player_at_balcony" );
    var_4 _ID42407::_ID36519();
    var_4 notify( "stop_loop" );
    wait 0.05;
    var_4 delete();
}

_ID46207()
{
    _ID42237::_ID14413( "trig_solorun_player_on_slide" );
    _ID42234::_ID13611( "roof_slide" );
}

rooftop_slide_dust_exploder()
{
    _ID42237::_ID14413( "trig_solorun_player_on_slide" );
    _ID42234::_ID13611( "roof_slide_dust" );
}

_ID43741()
{
    _ID42407::_ID38929( "trig_end_glass_break" );
    level notify( "glass_break",  level.player  );
    level.player playrumblelooponentity( "artillery_rumble" );
    thread _ID42237::_ID27077( "scn_favela_escape_player_window", level.player.origin );
    _ID42234::_ID13611( "window_glass_interior_favela_s" );
    _ID42474::_ID4669( "interior_stone" );
}

_ID51326()
{
    _ID42407::_ID38929( "trig_end_glass_break" );
    var_0 = getaiarray( "axis" );
    _ID42237::_ID3294( var_0, ::delete );
}

_ID49658()
{
    var_0 = 170;
    var_1 = 0;
    var_2 = 0;
    var_3 = getent( "trig_solorun_start_playersafezone", "targetname" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "solorun_player_outside_first_house" ) && !level.player istouching( var_3 ) && !var_2 )
        {
            var_2 = 1;
            level.player._ID24923 = 1;
            _ID42407::_ID32255( ::_ID50905 );
        }
        else if ( ( !_ID42237::_ID14385( "solorun_player_outside_first_house" ) || level.player istouching( var_3 ) ) && var_2 )
        {
            var_2 = 0;
            level.player._ID24923 = undefined;
            _ID42407::_ID32255( ::_ID51805 );
        }

        var_4 = level.player getvelocity();
        var_5 = distance( ( var_4[0], var_4[1], 0 ), ( 0, 0, 0 ) );

        if ( var_5 >= var_0 && !var_1 )
        {
            var_1 = 1;
            _ID42407::_ID32255( ::_ID51100 );
        }
        else if ( var_5 < var_0 && var_1 )
        {
            var_1 = 0;
            _ID42407::_ID32255( ::_ID53835 );
        }

        wait 0.5;
    }
}

_ID50905()
{
    level._ID10851["playerDifficultyHealth"]["easy"] = 100;
    level._ID10851["playerDifficultyHealth"]["normal"] = 100;
    level._ID10851["playerDifficultyHealth"]["hardened"] = 100;
    level._ID10851["playerDifficultyHealth"]["veteran"] = 100;
    level._ID10851["longRegenTime"]["easy"] = 20000;
    level._ID10851["longRegenTime"]["normal"] = 20000;
    level._ID10851["longRegenTime"]["hardened"] = 20000;
    level._ID10851["longRegenTime"]["veteran"] = 20000;
    level._ID10851["player_deathInvulnerableTime"]["easy"] = 0;
    level._ID10851["player_deathInvulnerableTime"]["normal"] = 0;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 0;
    level._ID10851["player_deathInvulnerableTime"]["veteran"] = 0;
    level._ID10851["base_enemy_accuracy"]["easy"] = 50000;
    level._ID10851["base_enemy_accuracy"]["normal"] = 50000;
    level._ID10851["base_enemy_accuracy"]["hardened"] = 50000;
    level._ID10851["base_enemy_accuracy"]["veteran"] = 50000;
    level._ID10851["invulTime_preShield"]["easy"] = 0;
    level._ID10851["invulTime_preShield"]["normal"] = 0;
    level._ID10851["invulTime_preShield"]["hardened"] = 0;
    level._ID10851["invulTime_preShield"]["veteran"] = 0;
    level._ID10851["invulTime_onShield"]["easy"] = 0;
    level._ID10851["invulTime_onShield"]["normal"] = 0;
    level._ID10851["invulTime_onShield"]["hardened"] = 0;
    level._ID10851["invulTime_onShield"]["veteran"] = 0;
    level._ID10851["invulTime_postShield"]["easy"] = 0;
    level._ID10851["invulTime_postShield"]["normal"] = 0;
    level._ID10851["invulTime_postShield"]["hardened"] = 0;
    level._ID10851["invulTime_postShield"]["veteran"] = 0;
}

_ID51805()
{
    level._ID10851["player_deathInvulnerableTime"]["easy"] = 4000;
    level._ID10851["player_deathInvulnerableTime"]["normal"] = 2500;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 600;
    level._ID10851["player_deathInvulnerableTime"]["veteran"] = 100;
    level._ID10851["base_enemy_accuracy"]["easy"] = 0.9;
    level._ID10851["base_enemy_accuracy"]["normal"] = 1.0;
    level._ID10851["base_enemy_accuracy"]["hardened"] = 1.15;
    level._ID10851["base_enemy_accuracy"]["veteran"] = 1.15;
    level._ID10851["invulTime_preShield"]["easy"] = 0.6;
    level._ID10851["invulTime_preShield"]["normal"] = 0.5;
    level._ID10851["invulTime_preShield"]["hardened"] = 0.3;
    level._ID10851["invulTime_preShield"]["veteran"] = 0.0;
    level._ID10851["invulTime_onShield"]["easy"] = 1.6;
    level._ID10851["invulTime_onShield"]["normal"] = 1.0;
    level._ID10851["invulTime_onShield"]["hardened"] = 0.5;
    level._ID10851["invulTime_onShield"]["veteran"] = 0.25;
    level._ID10851["invulTime_postShield"]["easy"] = 0.5;
    level._ID10851["invulTime_postShield"]["normal"] = 0.4;
    level._ID10851["invulTime_postShield"]["hardened"] = 0.3;
    level._ID10851["invulTime_postShield"]["veteran"] = 0.0;
}

_ID51100()
{
    level._ID10851["playerDifficultyHealth"]["easy"] = 900;
    level._ID10851["playerDifficultyHealth"]["normal"] = 550;
    level._ID10851["playerDifficultyHealth"]["hardened"] = 330;
    level._ID10851["playerDifficultyHealth"]["veteran"] = 230;
    level._ID10851["longRegenTime"]["easy"] = 1000;
    level._ID10851["longRegenTime"]["normal"] = 1000;
    level._ID10851["longRegenTime"]["hardened"] = 1000;
    level._ID10851["longRegenTime"]["veteran"] = 1000;
}

_ID53835()
{
    level._ID10851["playerDifficultyHealth"]["easy"] = 475;
    level._ID10851["playerDifficultyHealth"]["normal"] = 275;
    level._ID10851["playerDifficultyHealth"]["hardened"] = 165;
    level._ID10851["playerDifficultyHealth"]["veteran"] = 115;
    level._ID10851["longRegenTime"]["easy"] = 5000;
    level._ID10851["longRegenTime"]["normal"] = 5000;
    level._ID10851["longRegenTime"]["hardened"] = 3200;
    level._ID10851["longRegenTime"]["veteran"] = 3200;
}

_ID50249()
{
    wait 1;
    level._ID36699["take_cover"]._ID37557 = &"FAVELA_ESCAPE_SOLORUN_KEEP_MOVING";
}

_ID49375()
{
    level endon( "trig_solorun_player_on_slide" );
    var_0 = getentarray( "trig_solorun_roof_progression", "targetname" );
    level._ID53417 = 0;
    thread _ID46699();
    var_1 = 1;
    var_2 = 1;

    for (;;)
    {
        foreach ( var_4 in var_0 )
        {
            if ( level.player istouching( var_4 ) )
            {
                if ( var_4._ID31103 > var_1 )
                {
                    if ( level._ID53417 >= var_2 )
                        level._ID53417 = 0;

                    level._ID53417++;
                }
                else if ( var_4._ID31103 < var_1 )
                    level._ID53417--;

                while ( level.player istouching( var_4 ) )
                    wait 0.05;

                var_1 = var_4._ID31103;
                break;
            }
        }

        wait 0.05;
    }
}

_ID46699()
{
    level endon( "trig_solorun_player_on_slide" );
    var_0 = "solorun_player_progression_stalled";
    var_1 = 0;

    for (;;)
    {
        while ( level._ID53417 == var_1 )
            wait 0.1;

        if ( level._ID53417 < 1 )
        {
            if ( !_ID42237::_ID14385( var_0 ) )
                _ID42237::_ID14402( var_0 );
        }
        else if ( _ID42237::_ID14385( var_0 ) )
            _ID42237::_ID14388( var_0 );

        var_1 = level._ID53417;
    }
}

_ID44763()
{
    if ( level._ID15361 > 2 )
        return;

    var_0 = "solorun_player_sprinted";
    _ID42237::_ID14400( var_0 );
    level thread _ID44824( var_0 );

    while ( level.player.health > level.player.maxhealth * 0.9 && !_ID42237::_ID14385( var_0 ) )
        wait 0.1;

    if ( !_ID42237::_ID14385( var_0 ) )
        level thread _ID53558( var_0 );
}

_ID53558( var_0 )
{
    var_1 = &"FAVELA_ESCAPE_HINT_SPRINT";

    if ( !level._ID8534 )
    {
        var_2 = 0;

        if ( _ID42407::_ID20493( "+sprint" ) )
            var_2 = 1;
        else if ( !_ID42407::_ID20493( "+breath_sprint" ) )
            var_2 = 1;

        if ( var_2 )
            var_1 = &"FAVELA_ESCAPE_HINT_SPRINT_PC";
    }

    _ID42407::_ID18611( var_1 );

    while ( !_ID42237::_ID14385( var_0 ) && level.player.health > 0 )
        wait 0.05;

    var_3 = 0.25;
    thread _ID42407::_ID18638( var_3 );
}

_ID44824( var_0 )
{
    notifyoncommand( var_0, "+breath_sprint" );
    notifyoncommand( var_0, "+sprint" );
    level.player waittill( var_0 );
    _ID42237::_ID14402( var_0 );
}

_ID51547()
{
    thread _ID48206();
    var_0 = getentarray( "solorun_dmgtrig", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID53519 );
    var_1 = getentarray( "trig_solorun_squibs", "targetname" );
    _ID42237::_ID3350( var_1, ::_ID47945 );
}

_ID48206()
{
    level endon( "solorun_player_at_balcony" );
    var_0 = 0.07;
    var_1 = 0.1;
    var_2 = 5;
    var_3 = 9;
    var_4 = 1;
    var_5 = 2;
    var_6 = level._ID52504;
    var_7 = level._ID46286;

    for (;;)
    {
        var_8 = _ID54703( var_6 );
        var_9 = randomintrange( var_2, var_3 );

        for ( var_10 = 0; var_10 < var_9; var_10++ )
        {
            var_11 = level.player geteye();

            if ( isdefined( level._ID47533 ) )
            {
                var_12 = _ID54703( level._ID47533 );
                var_12 thread _ID42407::_ID27079( var_7[var_8] );
            }

            if ( _ID42237::_ID8201() )
                thread _ID42237::_ID27077( "h2_solorun_whizby_near", var_11 );

            wait(randomfloatrange( var_0, var_1 ));
        }

        wait(randomfloatrange( var_4, var_5 ));
    }
}

_ID53519()
{
    self waittill( "trigger" );
    radiusdamage( self.origin, 32, 1000, 1000 );
}

_ID47945()
{
    self waittill( "trigger" );
    var_0 = level._ID52504;
    var_1 = _ID54703( var_0 );
    var_2 = _ID42237::_ID16299( "squib_plaster" );
    var_3 = 0.07;
    var_4 = 0.1;
    var_5 = _ID42237::_ID16640( self.target, "targetname" );

    if ( isdefined( var_5[0].target ) )
        var_5 = _ID52328( var_5[0] );
    else
        var_5 = _ID42237::_ID3320( var_5 );

    var_5[0] _ID42407::_ID916();

    foreach ( var_7 in var_5 )
    {
        var_8 = anglestoforward( var_7.angles );
        var_9 = var_8 * 1024;
        var_10 = var_7.origin + var_9;
        magicbullet( var_1, var_7.origin, var_10 );

        if ( _ID42237::_ID8201() )
            thread _ID42237::_ID27077( "h2_solorun_whizby_near", level.player.origin );

        wait(randomfloatrange( var_3, var_4 ));
    }
}

_ID52328( var_0 )
{
    var_1 = [];
    var_1[0] = var_0;

    for ( var_2 = var_0; isdefined( var_2.target ); var_2 = var_3 )
    {
        var_3 = _ID42237::_ID16638( var_2.target, "targetname" );

        if ( !isdefined( var_3 ) )
            var_3 = getent( var_2.target, "targetname" );

        if ( !isdefined( var_3 ) )
            var_3 = getnode( var_2.target, "targetname" );

        if ( isdefined( var_3 ) )
        {
            var_1[var_1.size] = var_3;
            continue;
        }

        break;
    }

    return var_1;
}

_ID52820()
{
    var_0 = _ID42237::_ID16640( self.target, "targetname" );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( isplayernumber( var_1 ) && !_ID42237::_ID14385( "whizby_location_updating" ) )
        {
            _ID42237::_ID14402( "whizby_location_updating" );
            level._ID51963 = var_0;

            while ( var_1 istouching( self ) )
                wait 0.1;

            _ID42237::_ID14388( "whizby_location_updating" );
        }

        wait 0.05;
    }
}

_ID46755()
{
    level.player endon( "death" );
    level endon( "trig_solorun_player_on_slide" );
    _ID42237::_ID14413( "solorun_player_off_balcony" );
    var_0 = 128;
    var_1 = 256;
    var_2 = 32;
    var_3 = 64;
    var_4 = 0.08;
    var_5 = 0.11;
    var_6 = 0.5;
    var_7 = 1;
    var_8 = 5;
    var_9 = 9;
    var_10 = level._ID52504;

    for (;;)
    {
        var_11 = _ID54703( var_10 );
        var_12 = randomintrange( var_8, var_9 );
        var_13 = getaiarray( "axis" );
        var_14 = undefined;

        foreach ( var_16 in var_13 )
        {
            if ( var_16 cansee( level.player ) && !_ID42407::_ID27291( var_16 ) )
            {
                if ( !isdefined( var_14 ) || distance( var_16.origin, level.player.origin ) < distance( var_14.origin, level.player.origin ) )
                    var_14 = var_16;
            }
        }

        if ( !isdefined( var_14 ) )
        {
            wait 1;
            continue;
        }

        for ( var_18 = 0; var_18 < var_12; var_18++ )
        {
            if ( !isalive( var_14 ) || _ID42407::_ID27291( var_14 ) )
            {
                wait 0.05;
                continue;
            }

            var_19 = var_14 geteye() + ( 0, 0, 32 );
            var_20 = level.player geteye();
            var_21 = level.player.angles;
            var_22 = anglestoforward( var_21 );
            var_23 = var_20 + var_22 * 256;
            var_24 = var_23[2] + 256;
            var_25 = _ID42407::_ID17434( var_23 );
            var_26 = _ID47697( var_25[0], var_2, var_3 );
            var_27 = _ID47697( var_25[1], var_2, var_3 );
            var_28 = var_24;
            var_29 = _ID42407::_ID17434( ( var_26, var_27, var_28 ) );
            var_30 = bullettrace( var_19, var_29, 1 );
            var_31 = var_30["entity"];

            if ( isdefined( var_31 ) )
            {
                if ( isplayernumber( var_31 ) )
                    continue;
            }

            magicbullet( var_11, var_19, var_29 );
            wait(randomfloatrange( var_4, var_5 ));
        }

        wait(randomfloatrange( var_6, var_7 ));
    }
}

_ID47697( var_0, var_1, var_2 )
{
    var_3 = randomintrange( var_1, var_2 );

    if ( _ID42237::_ID8201() )
        var_3 *= -1;

    var_4 = var_0 + var_3;
    return var_4;
}

_ID43973()
{
    _ID42407::_ID38929( "trig_balcony_chopper_spawn" );

    for ( var_0 = undefined; !isdefined( var_0 ); var_0 = _ID42407::_ID16053( "solorun_balcony_chopper", "targetname" ) )
        wait 0.05;

    var_0 thread _ID42407::_ID27079( "scn_favela_escape_heli_flyover" );
    var_0 thread maps\favela_escape_aud::_ID44782();
    thread _ID46282( 0, "heli_loop", 5 );
}

_ID52477()
{
    var_0 = getentarray( "solorun_chopper_fakefire_trig", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID51810 );
}

_ID51810()
{
    var_0 = _ID42237::_ID16640( self.target, "targetname" );
    self waittill( "trigger" );
    _ID42237::_ID3350( var_0, ::_ID50456 );
    _ID42237::_ID3350( var_0, ::_ID45568 );
}

_ID45568()
{
    if ( !_ID42407::_ID916() )
        wait(randomfloatrange( 0.5, 1.2 ));

    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    magicbullet( "rpg_straight_short_life", self.origin, var_0.origin );
}

_ID49331()
{
    self.health = 2000000;
    missile_createrepulsorent( self, 1150, 1200 );
    level._ID7499 = self;
}

_ID51456( var_0 )
{
    var_1 = "solorun_player_at_balcony";

    if ( !isdefined( var_0 ) || var_0 )
        thread _ID43398( var_1 );

    _ID42237::_ID14413( var_1 );
    _ID42407::_ID28864( "favesc_cmt_meetussouth" );
    _ID42407::_ID28864( "favesc_nkl_verylow" );
    _ID42237::_ID14402( "solorun_timer_start" );
    _ID42407::_ID28864( "favesc_cmt_onfumes" );
    _ID42237::_ID14413( "solorun_dialogue_4" );
    _ID42407::_ID28864( "favesc_cmt_leftturnleft" );
    _ID42237::_ID14413( "solorun_dialogue_5" );
    _ID42407::_ID28864( "favesc_cmt_comeon" );
}

_ID43398( var_0 )
{
    level endon( var_0 );
    level.player endon( "death" );
    wait 5;
    _ID42407::_ID28864( "favesc_cmt_circlingarea" );
    wait 15;
    _ID42407::_ID28864( "favesc_cmt_lowonfuel" );
}

_ID48756()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( isplayernumber( var_0 ) )
        {
            setdvar( "ui_deadquote", "@FAVELA_ESCAPE_DEADQUOTE_FAILED_CHOPPER_JUMP" );
            _ID42407::_ID23778();
        }

        wait 0.05;
    }
}

_ID44500( var_0 )
{
    if ( !isdefined( var_0 ) || var_0 )
        _ID42237::_ID14413( "trig_solorun_player_on_slide" );

    thread _ID46282( 4, "heli_loop", 6 );
    var_1 = getent( "trig_slide_chopperjump_ledge", "targetname" );
    var_2 = getent( "killtrig_chopperjump", "script_noteworthy" );
    var_2 thread _ID48756();
    var_3 = _ID42237::_ID16638( "solorun_chopperjump_animref", "targetname" );
    var_4 = "worldbody";
    var_5 = "chopper";
    var_6 = "ladder";
    var_7 = "chopper_door_guy";
    var_8 = "tag_detach";
    var_9 = "tag_body";
    var_10 = "chopperjump_in";
    var_11 = "chopperjump_loop";
    var_12 = "chopperjump_jump";
    var_13 = "chopperjump_flyaway";
    var_14 = level._ID30895[var_4][var_12];
    var_15 = _ID42407::_ID35028( var_4, var_3.origin );
    var_15 hide();
    var_16 = _ID42407::_ID35028( var_5, var_3.origin );
    var_16.angles = var_3.angles;
    _ID42411::_ID6220( var_16 _ID42407::_ID16120( "rotors" ), undefined, 0 );
    var_16 thread _ID42413::_ID3160();
    var_16 thread maps\favela_escape_aud::_ID50228();
    level._ID7499 = var_16;
    var_17 = getent( "chopperjump_sarge", "targetname" );
    var_18 = var_17 _ID42407::_ID35014();
    var_18._ID3189 = var_7;
    level._ID47826 = var_18;
    var_18 linkto( var_16, var_8 );
    thread _ID49060();
    var_19 = _ID42407::_ID35028( var_6, ( 0, 0, 0 ) );
    level._ID51492 = var_19;
    var_15 linkto( var_16, var_9 );
    var_19 linkto( var_16, var_9 );
    var_20 = [];
    var_20[0] = var_19;
    enableforcedsunshadows();
    thread _ID51990( var_3, var_16, var_19, var_18, var_10, var_9, var_11, var_8 );
    var_21 = getent( "trig_player_chopperjump", "script_noteworthy" );
    var_22 = anglestoforward( ( 0, 90, 0 ) );
    thread _ID43630();
    var_23 = _ID42237::_ID16640( "struct_chopperjump_alt_lookspot", "targetname" );

    for (;;)
    {
        var_24 = 0;

        while ( level.player istouching( var_21 ) )
        {
            _ID42237::_ID14413( "player_jumping" );

            if ( _ID49291( var_21, var_19, var_23, 1 ) )
            {
                var_24 = 1;
                break;
            }

            wait 0.05;
        }

        if ( var_24 )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "chopperjump_player_jump" );
    thread favela_escape_jump_dof( var_15 );
    thread maps\favela_escape_lighting::_ID50564( "favela_escape_chopperjump" );
    var_2 delete();
    var_1 delete();
    var_16 notify( "stop_loop" );
    var_25 = getanimlength( var_15 _ID42407::_ID16120( var_12 ) );
    level.player allowjump( 0 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showStance", 0 );
    level.player disableweapons( 0, 500, 0.5 );
    var_26 = getstartorigin( var_16.origin, var_16.angles, var_14 );
    var_27 = getstartangles( var_16.origin, var_16.angles, var_14 ) - level.player.angles;
    var_28 = spawnstruct();
    var_28.angles = var_16.angles - var_27;
    var_29 = var_26 - level.player.origin;
    var_30 = var_16.origin - var_26;
    var_31 = var_30[0] * cos( var_27[1] ) - var_30[1] * sin( var_27[1] );
    var_32 = var_30[0] * sin( var_27[1] ) + var_30[1] * cos( var_27[1] );
    var_33 = var_30 - ( var_31, var_32, var_30[2] );
    var_28.origin = var_16.origin - var_29 + var_33;
    thread blend_player_anim_and_linktodelta( var_15 );
    var_34 = "player_jump";
    var_35 = getnotetracktimes( var_14, "favela_escape_end_grab" );
    var_36 = getanimlength( var_14 ) * var_35[0];
    var_37 = var_16 _ID42259::_ID15565( var_9, var_12 );
    var_38 = _ID42237::_ID35164();
    var_38.origin = var_37["origin"];
    var_38.angles = var_37["angles"];
    var_38 _ID42259::_ID3018( var_15, "chopperjump_jump" );
    var_15 animscripted( var_34, var_28.origin, var_28.angles, var_14 );
    var_15 thread _ID42259::_ID46811( undefined, var_28, var_38, var_36 );
    var_15 thread maps\favela_escape_aud::chopperjump_player_foley_sounds();
    var_16 thread _ID42259::_ID3099( var_20, var_12, var_9 );
    var_15 _ID42237::_ID10192( 0.5, ::show );
    _ID42407::_ID10226( 1, ::_ID52105 );
    level._ID51917 = var_25 * 0.2;
    _ID42237::_ID14402( "solorun_player_boarded_chopper" );
    var_3 _ID42407::_ID10226( 0.05, _ID42259::_ID3111, var_16, var_13 );
    var_16 _ID42407::_ID10226( 0.05, _ID42259::_ID3111, var_18, var_13, var_8 );
}

favela_escape_jump_dof( var_0 )
{
    var_1 = _ID54167::_ID43386( "player_jumps_to_ladder" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 16.0, -1, 16.0, 16.0 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44545( 0.4 ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 0.1 ) _ID54167::_ID50321( 4.5, -1, 8.0, 4.0 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44545( 0.4 );
    var_1 _ID54167::_ID48800( 12.0 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 12.1 ) _ID54167::_ID46727();
    var_1 _ID54167::_ID48800( 1.15 ) _ID54167::_ID47844( 2 );
    var_1 _ID54167::_ID48800( 1.35 ) _ID54167::_ID47844( 0 );
    var_1 _ID54167::_ID48800( 1.5 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.35, 0.15, 0.15, 5, 15, 5, 8 ) _ID54167::_ID43376( ::setviewangleresistance, level.player, 50, 50, 20, 20 );
    var_1 _ID54167::_ID48800( 3.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.65, 0.2, 0.2, 0, 0, 0, 0 );
    var_1 _ID54167::_ID48800( 4.35 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.5, 0.2, 0.2, 10, 12, 8, 8 ) _ID54167::_ID43376( ::setviewangleresistance, level.player, 50, 50, 20, 20 );
    var_1 _ID54167::_ID48800( 7.15 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.35, 0.15, 0.15, 0, 0, 0, 0 );
    var_1 _ID54167::_ID48800( 8.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.5, 0.2, 0.2, 5, 18, 8, 10 ) _ID54167::_ID43376( ::setviewangleresistance, level.player, 50, 50, 20, 20 );
    var_1 _ID54167::_ID48166();
}

_ID52105()
{
    level.player playrumblelooponentity( "artillery_rumble" );
    wait 0.5;

    while ( !_ID42237::_ID14385( "level_faded_to_black" ) )
    {
        level.player playrumblelooponentity( "damage_light" );
        wait 0.115;
    }
}

_ID49291( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 1;

    if ( !var_0 istouching( level.player ) )
        return 0;

    if ( level.player getstance() != "stand" )
        return 0;

    if ( var_3 && level.player isonground() )
        return 0;

    var_4 = 1;
    var_5 = var_1.origin + ( 0, 0, -85 );
    var_6 = getdvarint( "cg_fov" );

    if ( !level.player worldpointinreticle_circle( var_5, var_6, 120 ) )
        var_4 = 0;

    if ( !var_4 )
    {
        var_7 = 0;

        foreach ( var_9 in var_2 )
        {
            if ( level.player worldpointinreticle_circle( var_9.origin, var_6, 165 ) )
            {
                var_7 = 1;
                break;
            }
        }

        if ( var_7 )
            var_4 = 1;
    }

    if ( !var_4 )
        return 0;

    var_11 = level.player getvelocity();
    var_12 = distance( ( var_11[0], var_11[1], 0 ), ( 0, 0, 0 ) );

    if ( var_12 < 145 )
        return 0;

    return 1;
}

_ID51990( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_0 thread _ID42259::_ID3111( var_1, var_4 );
    var_1 thread _ID42259::_ID3111( var_3, var_4, var_7 );
    var_1 _ID42259::_ID3111( var_2, var_4, var_5 );

    if ( !_ID42237::_ID14385( "chopperjump_player_jump" ) )
    {
        var_8 = [];
        var_9 = [];
        var_9["guy"] = var_1;
        var_9["entity"] = var_0;
        var_9["tag"] = undefined;
        var_8[var_8.size] = var_9;
        var_10 = [];
        var_10["guy"] = var_2;
        var_10["entity"] = var_1;
        var_10["tag"] = var_5;
        var_8[var_8.size] = var_10;
        var_11 = [];
        var_11["guy"] = var_3;
        var_11["entity"] = var_1;
        var_11["tag"] = var_7;
        var_8[var_8.size] = var_11;
        var_1 thread _ID42259::_ID3042( var_8, var_6 );
    }
}

_ID45427()
{
    var_0 = "pavelow_idle_high";
    var_1 = "pavelow_engine_high";
    thread _ID42237::_ID27000( var_0 );
    _ID42237::_ID14413( "chopperjump_player_jump" );
    wait(level._ID51917);
    thread _ID42237::_ID27000( var_1 );
    wait 0.25;
    self notify( "stop sound" + var_0 );
}

_ID43630()
{
    level endon( "player_jump_watcher_stop" );
    var_0 = "player_jumping";

    if ( !_ID42237::_ID14396( var_0 ) )
        _ID42237::_ID14400( var_0 );
    else
        _ID42237::_ID14388( var_0 );

    notifyoncommand( "playerjump", "+gostand" );
    notifyoncommand( "playerjump", "+moveup" );

    for (;;)
    {
        level.player waittill( "playerjump" );
        wait 0.1;

        if ( !level.player _meth_83c0() )
            continue;

        if ( !level.player isonground() )
            _ID42237::_ID14402( var_0 );

        while ( !level.player isonground() )
            wait 0.05;

        _ID42237::_ID14388( var_0 );
    }
}

_ID53040( var_0 )
{
    wait 0.3;
    level.player notify( "stop_sliding" );
    level.player _meth_8572( var_0, "tag_player", 0.5, 0.6, 0.2, 0.4, 40, 40, 60, 20 );
}

_ID49060()
{
    _ID42407::_ID38929( "chopperjump_dialogue_jumpforit" );
    _ID42474::_ID4669( "exterior_roof" );
    level._ID47826 thread _ID42407::_ID10805( "favesc_cmt_jump" );
    _ID42237::_ID14413( "chopperjump_player_jump" );
    wait 2;
    wait 3;
    wait 1;
    _ID42407::_ID28864( "favesc_nkl_whereto" );
    wait 0.4;
    _ID42407::_ID28864( "favesc_cmt_tothesub" );
}

_ID47511()
{
    var_0 = _ID46434();
    var_1 = var_0[0];
    return var_1;
}

_ID44223()
{
    var_0 = getentarray( "color_friendly_spawner", "targetname" );
    level._ID43367 = var_0;
}

_ID49430()
{
    var_0 = getentarray( "enemy_cleanup_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID46968 );
}

_ID46968()
{
    var_0 = "Enemy cleanup trigger at origin " + self.origin + " needs to target a volume.";
    var_1 = getentarray( self.target, "targetname" );
    self waittill( "trigger" );
    var_2 = getaiarray( "axis" );

    foreach ( var_4 in var_2 )
    {
        foreach ( var_6 in var_1 )
        {
            var_7 = 0;

            if ( var_4 istouching( var_6 ) )
            {
                var_7 = 1;
                var_4 delete();
                break;
            }

            if ( var_7 )
                break;
        }
    }

    _ID42407::_ID3304( var_1 );
    self delete();
}

_ID45848( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 10;

    if ( !isdefined( var_1 ) )
        var_1 = 0.05;

    for ( var_2 = 0; var_2 < var_0; var_2++ )
    {
        if ( isdefined( self._ID14795 ) && self._ID14795 > 0 )
            var_3 = self stalingradspawn();
        else
            var_3 = self dospawn();

        if ( !_ID42407::_ID35060( var_3 ) )
            return var_3;

        wait(var_1);
    }

    return undefined;
}

_ID50606( var_0, var_1 )
{
    _ID35081( var_0, var_1, 1 );
}

_ID35081( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_0 = _ID42237::_ID3320( var_0 );
    var_3 = [];

    foreach ( var_7, var_5 in var_0 )
    {
        var_6 = var_5 _ID42407::_ID35014();
        var_3[var_3.size] = var_6;

        if ( var_2 )
        {
            if ( var_7 != var_0.size - 1 )
                wait(randomfloatrange( 0.25, 1 ));
        }
    }

    if ( var_1 )
    {

    }

    return var_3;
}

_ID47626()
{
    self endon( "death" );

    for (;;)
    {
        if ( self._ID7._ID30103 < 3 )
            self._ID7._ID30103 = 3;

        wait 1;
    }
}

_ID46526( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( var_0 <= 1 )
        return;

    var_7 = vectortoangles( var_2 );
    var_8 = anglestoforward( var_7 );
    var_9 = anglestoup( var_7 );
    var_10 = vectortoangles( var_2 ) + ( 0, 180, 0 );
    var_11 = anglestoforward( var_10 );
    playfx( _ID42237::_ID16299( "headshot" ), var_3, var_8, var_9 );
    playfx( _ID42237::_ID16299( "bodyshot" ), var_3, var_11, var_9 );
}

_ID44259( var_0, var_1, var_2, var_3 )
{
    var_0 = _ID42237::_ID3320( var_0 );
    var_4 = undefined;

    foreach ( var_6 in var_0 )
    {
        if ( isdefined( var_6._ID31388 ) && var_6._ID31388 == "kicker" )
        {
            var_4 = var_6;
            break;
        }
    }

    if ( !isdefined( var_4 ) )
        var_4 = var_0[0];

    var_0 = _ID42237::_ID3321( var_0, var_4 );
    var_8 = var_4 _ID42407::_ID35014( 1 );
    var_8 thread _ID42407::_ID22746( 1 );

    if ( var_0.size )
        _ID42407::_ID10226( 0.15, ::_ID35081, var_0 );

    var_9 = "door_kick_in";
    var_10 = "kick";

    if ( isdefined( var_2.script_noteworthy ) )
    {
        switch ( var_2.script_noteworthy )
        {
            case "wave":
                var_9 = "doorburst_wave";
                var_10 = "door_kick";
                break;
            case "search":
                var_9 = "doorburst_search";
                var_10 = "door_kick";
                break;
            case "fall":
                var_9 = "doorburst_fall";
                var_10 = "door_kick";
                break;
        }
    }

    var_2 thread _ID42259::_ID3020( var_8, var_9 );
    var_8 waittillmatch( "single anim",  var_10  );
    thread _ID42237::_ID27077( "door_wood_double_kick", var_1.origin );
    var_1 thread _ID46023( 0.25, 1 );

    if ( isdefined( var_3 ) )
        physicsexplosioncylinder( var_3.origin, var_3.radius, var_3.radius / 2, 1.0 );

    var_8 _ID42407::_ID36519();
    var_8.allowdeath = 1;
    var_8 waittillmatch( "single anim",  "end"  );

    if ( isalive( var_8 ) )
    {
        if ( isdefined( var_4._ID31400 ) && var_4._ID31400 > 0 )
            var_8 _ID43767();
        else if ( isdefined( var_4.target ) )
        {
            var_11 = getnode( var_4.target, "targetname" );

            if ( isdefined( var_11 ) )
            {
                var_8 _ID47402( 96 );
                var_8 setgoalnode( var_11 );
                var_8 _ID42237::_ID41123( "goal", 5 );

                if ( isalive( var_8 ) )
                    var_8 _ID47888();
            }
        }
    }
}

_ID49951()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 = "favela_chaotic_above_through";

    if ( isdefined( var_0.script_noteworthy ) )
        var_1 = var_0.script_noteworthy;

    var_0 _ID42259::_ID3027( self, var_1 );
    self.allowdeath = 1;
    var_0 _ID42259::_ID3020( self, var_1 );
}

_ID43131()
{
    self endon( "death" );
    _ID45027( "window_smash_stop_inside" );
    var_0 = getnode( self.target, "targetname" );

    if ( isdefined( self._ID31400 ) && self._ID31400 )
        _ID43767();
    else if ( isdefined( var_0 ) )
        self setgoalnode( var_0 );
}

_ID45027( var_0 )
{
    self endon( "death" );
    var_1 = "window smash guy at origin " + self.origin + " needs to be targeting a script_struct that he can use as his animref.";
    var_2 = _ID42237::_ID16638( self.target, "targetname" );
    var_2 _ID42259::_ID3027( self, var_0 );
    var_2 _ID42259::_ID3020( self, var_0 );
}

_ID46383( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    var_2 = _ID50948();
    var_3 = _ID44807( var_2 );
    self waittill( "spawned",  var_4  );

    if ( _ID42407::_ID35060( var_4 ) )
        return;

    var_4 endon( "death" );
    var_4._ID3189 = "curtain_pull";
    var_4 _ID42407::_ID32353( 1 );
    var_4.usechokepoints = 0;
    wait 0.05;
    var_5[0] = var_4;
    var_5[1] = var_3;
    var_2 _ID42259::_ID3074( var_4, "pulldown" );

    if ( var_0 )
    {
        var_2 _ID42259::_ID3018( var_4, "pulldown" );

        if ( isdefined( var_1 ) )
            [[ var_1 ]]( var_4, var_2 );
        else
            _ID42407::_ID41135( 0.9, undefined, 1, 5.0 );
    }

    var_4.allowdeath = 1;
    var_2 _ID42259::_ID3099( var_5, "pulldown" );
    var_4 endon( "death" );
    var_4 _ID42407::_ID32353( 0 );
    var_4.goalradius = 1000;
    var_4 setgoalpos( var_4.origin );
    var_4.usechokepoints = 1;
}

_ID44807( var_0 )
{
    if ( isdefined( var_0._ID52385 ) )
        return var_0._ID52385;

    var_1 = _ID42407::_ID35028( "curtain" );
    var_0 thread _ID42259::_ID3018( var_1, "pulldown" );
    var_0._ID52385 = var_1;
    return var_0._ID52385;
}

_ID50948()
{
    var_0 = getentarray( self.target, "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( var_2.classname == "script_origin" )
            return var_2;
    }
}

_ID10742( var_0 )
{
    if ( !isdefined( level._ID43919 ) )
        level._ID43919 = spawnstruct();

    level._ID43919 _ID42407::_ID15093( ::_ID43731, self, var_0 );
}

_ID43731( var_0, var_1 )
{
    if ( _func_2a5( var_0 ) )
        return;

    var_0 _ID42407::_ID10805( var_1 );
}

_ID47316( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 3;

    var_2 = 0.5;
    level endon( "clearing_hints" );

    if ( isdefined( level._ID48851 ) )
        level._ID48851 _ID42313::_ID10476();

    level._ID48851 = _ID42313::_ID9220( "default", 1.5 );
    level._ID48851 _ID42313::_ID32753( "BOTTOM", undefined, 0, -40 );
    level._ID48851.color = ( 1, 1, 1 );
    level._ID48851 settext( var_0 );
    level._ID48851.alpha = 0;
    level._ID48851 fadeovertime( 0.5 );
    level._ID48851.alpha = 1;
    level._ID48851.sort = 1;
    wait 0.5;
    level._ID48851 endon( "death" );
    wait(var_1);
    level._ID48851 fadeovertime( var_2 );
    level._ID48851.alpha = 0;
    wait(var_2);
    level._ID48851 _ID42313::_ID10476();
}

_ID43297( var_0, var_1 )
{
    if ( !isarray( var_1 ) )
    {
        var_2 = [];
        var_2[0] = var_1;
        var_1 = var_2;
    }

    var_3 = spawn( "script_origin", _ID54703( var_1 ).origin );
    var_3 playsound( var_0, "sound_done" );
    var_3 waittill( "sound_done" );
    var_3 delete();
}

_ID10240()
{
    self waittill( "reached_path_end" );

    if ( isalive( self ) )
    {
        _ID45456::_ID54623( self );
        self kill();
    }

    wait 0.1;

    if ( isdefined( self ) )
        self delete();
}

_ID50353()
{
    self endon( "death" );
    _ID19365();
    _ID42237::_ID41098( "reached_path_end", "damage" );
    _ID47487();
}

_ID54540()
{
    self endon( "death" );
    _ID19365();
    self waittill( "reached_path_end" );
    _ID47487();
}

_ID51433()
{
    self endon( "death" );
    _ID19365();

    for (;;)
    {
        var_0 = _ID42237::_ID41075( "reached_path_end", "damage" );

        if ( var_0 == "damage" )
        {
            _ID47487();
            continue;
        }

        if ( var_0 == "reached_path_end" )
            break;
    }

    wait 0.1;

    if ( isdefined( self ) )
        self delete();
}

_ID49916()
{
    self endon( "death" );
    self waittill( "reached_path_end" );
    _ID43767();
}

_ID43767()
{
    self setgoalentity( level.player );
}

_ID43645( var_0 )
{
    self._ID3195 = var_0;
}

_ID52666( var_0 )
{
    self.usechokepoints = var_0;
}

_ID47802()
{
    self._ID11582 = undefined;
}

_ID43941( var_0 )
{
    self._ID24424 = var_0;
}

_ID49104( var_0 )
{
    self._ID4867 = var_0;
}

_ID50673( var_0 )
{
    self setgoalvolume( var_0 );
}

_ID46779()
{
    self cleargoalvolume();
}

_ID44231( var_0 )
{
    self.health = var_0;
}

_ID45776( var_0 )
{
    self.ignoreall = var_0;
}

_ID44526( var_0 )
{
    self.ignoreme = var_0;
}

_ID52680( var_0 )
{
    self.walkdistfacingmotion = var_0;
}

_ID47402( var_0 )
{
    if ( !isdefined( self._ID46327 ) )
        self._ID46327 = self.goalradius;

    self.goalradius = var_0;
}

_ID47888()
{
    if ( isdefined( self._ID46327 ) )
        self.goalradius = self._ID46327;
}

_ID50024( var_0 )
{
    self._ID47572 = self getthreatbiasgroup();
    self setthreatbiasgroup( var_0 );
}

_ID47280()
{
    self setthreatbiasgroup( self._ID47572 );
}

_ID45702()
{
    if ( !isdefined( self._ID22746 ) || !self._ID22746 )
        thread _ID42407::_ID22746();
}

_ID43804()
{
    if ( isdefined( self._ID22746 ) && self._ID22746 )
        thread _ID42407::_ID36519();
}

_ID19365()
{
    self.ignoreall = 1;
    self.grenadeawareness = 0;
    self.ignoreexplosionevents = 1;
    self.ignorerandombulletdamage = 1;
    self.ignoresuppression = 1;
    self.fixednode = 0;
    self._ID11002 = 1;
    _ID42407::_ID10949();
    self._ID25485 = self.newenemyreactiondistsq;
    self.newenemyreactiondistsq = 0;
}

_ID47487()
{
    self.ignoreall = 0;
    self.grenadeawareness = 1;
    self.ignoreexplosionevents = 0;
    self.ignorerandombulletdamage = 0;
    self.ignoresuppression = 0;
    self.fixednode = 1;
    self._ID11002 = 0;
    _ID42407::_ID12508();

    if ( isdefined( self._ID25485 ) )
        self.newenemyreactiondistsq = self._ID25485;
}

_ID43103()
{
    self.grenadeawareness = 0;
    self.ignoreexplosionevents = 1;
    self.ignorerandombulletdamage = 1;
    self.ignoresuppression = 1;
    self._ID11002 = 1;
    _ID42407::_ID10949();
    self pushplayer( 1 );
}

_ID47174( var_0 )
{
    foreach ( var_2 in var_0 )
        var_2._ID48671 = 0;
}

_ID45924( var_0 )
{
    _ID19365();
    _ID47402( 32 );
    self setgoalnode( var_0 );
    self waittill( "goal" );
    self._ID48671 = 1;
    _ID47487();
}

_ID46927( var_0 )
{
    for (;;)
    {
        var_1 = 0;

        foreach ( var_3 in var_0 )
        {
            if ( isalive( var_3 ) && !var_3._ID48671 )
            {
                var_1 = 1;
                break;
            }
        }

        if ( !var_1 )
            break;

        wait 0.05;
    }

    level notify( "group_at_scriptedgoal" );
}

_ID53294()
{
    var_0 = getaiarray( "axis" );
    return _ID42407::_ID3328( var_0 );
}

_ID46434()
{
    var_0 = [];

    foreach ( var_2 in level._ID49912 )
    {
        if ( !isdefined( var_2._ID52287 ) )
            var_0[var_0.size] = var_2;
    }

    return var_0;
}

_ID51461( var_0 )
{
    _ID42237::_ID14413( "friends_setup" );
    var_1 = _ID46434();

    if ( isdefined( var_0 ) )
        var_1 = _ID42237::_ID3321( var_1, var_1[0] );

    _ID42407::_ID4917( "allies" );

    foreach ( var_3 in var_1 )
    {
        level._ID49912 = _ID42237::_ID3321( level._ID49912, var_3 );
        var_3 _ID42407::_ID10959();
        var_3 _ID43804();
        var_3 kill();
    }

    _ID42407::_ID4918( "allies" );
}

_ID51238()
{
    _ID49104( level._ID49010 );
    _ID53025();
    _ID47730();
}

_ID53025()
{
    if ( isdefined( level._ID49912 ) && isdefined( level._ID49912[0] ) )
    {
        if ( level._ID49912[0] _meth_816f() )
            _ID43557( 1 );
    }
}

_ID43557( var_0 )
{
    self _meth_8170( var_0 );
    self._ID12573 = !var_0;

    if ( var_0 )
        _ID42407::_ID12467();
    else
        _ID42407::_ID10896();
}

_ID47730()
{
    if ( !isdefined( level._ID49912 ) )
        level._ID49912 = [];

    level._ID49912 = _ID42237::_ID3293( level._ID49912, self );
    thread _ID48258();
}

_ID44439()
{
    level._ID49912 = _ID42237::_ID3321( level._ID49912, self );
}

_ID48258()
{
    self waittill( "death" );
    _ID44439();
}

_ID51958()
{
    if ( isdefined( level._ID43919 ) )
        level._ID43919 _ID42407::_ID15095();

    _ID42407::_ID3319( level._ID49912, "death" );
    var_0 = _ID46434();

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42407::_ID10959();
        var_2 _ID43804();
        var_2 delete();
    }

    level._ID47826 _ID42407::_ID10959();
    level._ID51527 _ID42407::_ID10959();
    level._ID47826 _ID42407::_ID36519();
    level._ID51527 _ID42407::_ID36519();
    level._ID47826 delete();
    level._ID51527 delete();
}

_ID44127( var_0 )
{
    level._ID49912 = _ID42237::_ID3332( level._ID49912 );
    level._ID49912 = _ID42407::_ID3328( level._ID49912 );
    var_1 = _ID42237::_ID16640( var_0, "targetname" );
    var_2 = _ID42237::_ID16638( var_0 + "_player", "targetname" );

    foreach ( var_7, var_4 in level._ID49912 )
    {
        var_5 = var_1[var_7].origin;
        var_6 = var_1[var_7].angles;
        var_4 thread _ID45573( var_5, var_6 );
    }

    level.player _ID45573( var_2.origin, var_2.angles );
}

_ID45599( var_0 )
{
    _ID45573( var_0.origin, var_0.angles );
}

_ID45573( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = ( 0, 0, 0 );

    if ( !isplayernumber( self ) )
    {
        self forceteleport( _ID42407::_ID17434( var_0 ), var_1 );
        self setgoalpos( self.origin );
    }
    else
    {
        var_2 = level.player _ID42237::_ID35164();
        level.player playerlinkto( var_2, "tag_origin", 1 );
        var_2 moveto( var_0, 0.05 );
        var_2 rotateto( var_1, 0.05 );
        wait 0.1;
        level.player unlink();
        var_2 delete();
    }
}

_ID50496( var_0, var_1 )
{
    if ( var_0.size < 1 )
        return;

    var_2 = var_1 / var_0.size;

    foreach ( var_5, var_4 in var_0 )
    {
        var_4 thread _ID5311( 0 );

        if ( var_5 != var_0.size - 1 )
            wait(var_2);
    }
}

_ID47023( var_0, var_1 )
{
    wait(var_0);
    _ID5311( var_1 );
}

_ID5311( var_0 )
{
    self endon( "death" );

    if ( !issentient( self ) || !isalive( self ) )
        return;

    if ( isdefined( self._ID5311 ) && self._ID5311 )
        return;

    self._ID5311 = 1;

    if ( isdefined( var_0 ) )
        wait(randomfloat( var_0 ));

    var_1 = [];
    var_1[0] = "j_hip_le";
    var_1[1] = "j_hip_ri";
    var_1[2] = "j_head";
    var_1[3] = "j_spine4";
    var_1[4] = "j_elbow_le";
    var_1[5] = "j_elbow_ri";
    var_1[6] = "j_clavicle_le";
    var_1[7] = "j_clavicle_ri";

    for ( var_2 = 0; var_2 < 3 + randomint( 5 ); var_2++ )
    {
        var_3 = randomintrange( 0, var_1.size );
        thread _ID5313( var_1[var_3], undefined );
        wait(randomfloat( 0.1 ));
    }

    self dodamage( self.health + 50, self.origin );
}

_ID5313( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = level._ID1426["flesh_hit"];

    playfxontag( var_1, self, var_0 );
}

_ID52334( var_0, var_1, var_2 )
{
    thread _ID45409();
    level endon( "color_flags_advance_stop" );
    var_3 = "allies";

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    for ( var_4 = var_2; var_4 <= var_1; var_4++ )
    {
        var_5 = var_0 + "_" + var_4;
        var_6 = getent( var_5, "targetname" );
        var_7 = getent( var_6.target, "targetname" );
        _ID42237::_ID14413( var_5 );
        var_8 = var_7 _ID42271::_ID44106( var_7._ID31096, var_3 );
        var_9 = var_8["colorCodes"];
        var_10 = var_8["colorCodesByColorIndex"];
        var_11 = var_8["colors"];
        var_12 = [];

        foreach ( var_14 in var_9 )
        {
            var_15 = level._ID3364[var_3][var_14];

            if ( isdefined( var_15 ) )
            {
                var_16 = spawnstruct();
                var_16._ID47540[0] = var_14;
                var_17 = getsubstr( var_14, 0, 1 );
                var_16._ID8283[0] = var_17;
                var_16._ID44413[var_17] = var_10[var_17];
                var_16._ID54592 = var_7;
                var_16.name = var_5;
                var_16._ID40767 = var_15;
                var_12[var_12.size] = var_16;
            }
        }

        _ID42237::_ID3350( var_12, ::_ID50709 );
    }
}

_ID45409()
{
    level waittill( "color_flags_advance_stop" );
    level._ID45330 = undefined;
}

_ID52008( var_0 )
{
    level endon( "color_flags_advance_stop" );

    for (;;)
    {
        if ( level._ID45330[var_0].size )
        {
            var_1 = level._ID45330[var_0][0];
            var_1 _ID52930();
            continue;
        }

        level waittill( "color_flag_advance_queue_updated" );
    }
}

_ID50709()
{
    var_0 = self._ID8283[0];

    if ( !isdefined( level._ID45330 ) )
        level._ID45330 = [];

    var_1 = getarraykeys( level._ID45330 );
    var_2 = 0;

    foreach ( var_4 in var_1 )
    {
        if ( var_4 == var_0 )
        {
            var_2 = 1;
            break;
        }
    }

    if ( !var_2 )
    {
        level._ID45330[var_0] = [];
        thread _ID52008( var_0 );
    }

    level._ID45330[var_0][level._ID45330[var_0].size] = self;
    level notify( "color_flag_advance_queue_updated" );
}

_ID51767()
{
    var_0 = self._ID8283[0];
    level._ID45330[var_0] = _ID42237::_ID3321( level._ID45330[var_0], self );
}

_ID52930()
{
    level endon( "color_flags_advance_stop" );
    self._ID40767 _ID42407::_ID41163();
    self._ID54592 thread _ID42271::_ID46681( self._ID47540, self._ID8283, "allies", self._ID44413 );
    _ID51767();
}

_ID50855( var_0, var_1 )
{
    if ( !var_0.size )
        return 0;

    foreach ( var_3 in var_0 )
    {
        if ( var_3._ID47540[0] == var_1 )
            return 1;
    }

    return 0;
}

_ID53382()
{
    _ID49837();
    var_0 = "airliner_flyby";
    _ID42237::_ID14400( var_0 );
    var_1 = getentarray( "trig_airliner_flyby", "targetname" );
    _ID42237::_ID3350( var_1, ::_ID46786, var_0 );
}

_ID44784()
{
    var_0 = getentarray( "sbmodel_airliner_flyby", "targetname" );
    level._ID50445 = var_0;
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = undefined;
    var_5 = [];
    var_6 = [];

    foreach ( var_8 in var_0 )
    {
        if ( var_8.code_classname == "script_origin" )
        {
            switch ( var_8.script_noteworthy )
            {
                case "origin_marker":
                    var_1 = var_8;
                    continue;
                case "light_wingtip_left":
                    var_2 = var_8;
                    continue;
                case "light_belly":
                    var_3 = var_8;
                    continue;
                case "light_tail":
                    var_4 = var_8;
                    continue;
                case "light_wingtip_right":
                    var_5[var_5.size] = var_8;
                    continue;
                case "engine_exhaust":
                    var_6[var_6.size] = var_8;
                    continue;
            }
        }
    }

    var_10 = _ID42237::_ID3321( var_0, var_1 );
    var_2 = _ID48170( var_2, "airliner_wingtip_left" );
    var_3 = _ID48170( var_3, "airliner_belly" );
    var_4 = _ID48170( var_4, "airliner_tail" );
    var_5 = _ID54061( var_5, "airliner_wingtip_right" );
    var_6 = _ID54061( var_6, "airliner_exhaust" );
    var_10[var_10.size] = var_2;
    var_10[var_10.size] = var_3;
    var_10[var_10.size] = var_4;
    var_10 = _ID42237::_ID3296( var_10, var_5 );
    var_10 = _ID42237::_ID3296( var_10, var_6 );

    foreach ( var_8 in var_10 )
        var_8 linkto( var_1 );

    var_1._ID52204 = var_1.angles;
    return var_1;
}

_ID48170( var_0, var_1 )
{
    if ( isdefined( var_0 ) )
    {
        var_2 = var_0 _ID42237::_ID35164();
        var_0 = var_2;
        playfxontag( _ID42237::_ID16299( var_1 ), var_0, "tag_origin" );
        return var_0;
    }

    return undefined;
}

_ID54061( var_0, var_1 )
{
    if ( var_0.size )
    {
        var_2 = [];

        foreach ( var_4 in var_0 )
        {
            var_5 = var_4 _ID42237::_ID35164();
            var_2[var_2.size] = var_5;
        }

        var_0 = var_2;

        foreach ( var_4 in var_0 )
            playfxontag( _ID42237::_ID16299( var_1 ), var_4, "tag_origin" );

        return var_0;
    }

    return undefined;
}

_ID49837()
{
    _ID42237::_ID3294( level._ID50445, ::hide );
}

_ID46285()
{
    _ID42237::_ID3294( level._ID50445, ::show );
}

_ID46786( var_0 )
{
    var_1 = _ID42237::_ID16638( self.target, "targetname" );
    var_2 = _ID42237::_ID16638( var_1.target, "targetname" );
    self waittill( "trigger" );

    if ( isdefined( self._ID31197 ) )
        _ID42237::_ID14413( self._ID31197 );

    if ( isdefined( self._ID916 ) )
        wait(self._ID916);

    level notify( "airliner_flyby" );
    var_3 = 1500;

    if ( isdefined( var_1.speed ) )
        var_3 = var_1.speed;

    _ID42237::_ID14426( var_0 );
    _ID42237::_ID14402( var_0 );
    level._ID48251.origin = var_1.origin;

    if ( isdefined( var_1.angles ) )
        level._ID48251.angles = var_1.angles;
    else
        level._ID48251.angles = level._ID48251._ID52204;

    wait 0.05;
    _ID46285();
    level._ID48251 thread _ID45833( self );
    var_4 = int( self.script_noteworthy );
    level._ID48251 thread _ID50517( var_4 );
    var_5 = distance( var_1.origin, var_2.origin );
    var_6 = var_5 / var_3;
    level._ID48251 moveto( var_2.origin, var_6 );
    level._ID48251 waittill( "movedone" );
    _ID49837();
    _ID42237::_ID14388( var_0 );
    self delete();
}

_ID45833( var_0 )
{
    if ( isdefined( var_0._ID31437 ) )
    {
        _ID42407::_ID27079( var_0._ID31437 );
        return;
    }
}

_ID36556( var_0 )
{
    self notify( "stop sound" + var_0 );
}

_ID46023( var_0, var_1 )
{
    var_2 = undefined;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    var_3 = getent( self.target, "targetname" );
    self linkto( var_3 );

    if ( isdefined( var_3.target ) )
    {
        var_2 = getent( var_3.target, "targetname" );
        var_2 linkto( self );
        var_2 connectpaths();
    }
    else
        self connectpaths();

    var_3._ID52204 = var_3.angles;
    var_3 rotateto( var_3._ID31037, var_0 );
    var_3 waittill( "rotatedone" );

    if ( isdefined( var_2 ) )
    {
        var_2 disconnectpaths();
        var_2 unlink();

        if ( var_1 )
        {
            var_2 notsolid();
            var_2 thread _ID44053();
        }
    }
    else
        self disconnectpaths();

    self unlink();

    if ( var_1 )
    {
        self notsolid();
        thread _ID44053();
    }

    self notify( "sbmodel_rotatedone" );
}

_ID44053()
{
    while ( level.player istouching( self ) )
        wait 0.05;

    self solid();
}

_ID51495( var_0 )
{
    var_1 = getent( self.target, "targetname" );
    var_2 = undefined;
    self linkto( var_1 );

    if ( isdefined( var_1.target ) )
    {
        var_2 = getent( var_1.target, "targetname" );
        var_2 linkto( self );
        var_2 connectpaths();
    }
    else
        self connectpaths();

    var_1 rotateto( var_1._ID52204, var_0 );
    var_1 waittill( "rotatedone" );

    if ( isdefined( var_2 ) )
    {
        var_2 disconnectpaths();
        var_2 unlink();
    }
    else
        self disconnectpaths();

    self unlink();
    self notify( "sbmodel_rotatedone" );
}

_ID54729( var_0, var_1, var_2 )
{
    var_3 = self._ID49537;
    var_4 = _ID42237::_ID16638( "hind_fakefire_impactLine_start", "targetname" );
    var_5 = _ID42237::_ID16638( var_4.target, "targetname" );
    var_6 = var_0 / var_1;
    var_7 = distance2d( var_4.origin, var_5.origin );
    var_8 = var_7 / var_6;
    var_9 = var_4.origin;
    var_10 = vectornormalize( var_5.origin - var_4.origin );
    var_11 = vectortoangles( var_10 );
    var_12 = anglestoforward( var_11 );
    var_13 = -25;
    var_14 = 25;
    var_15 = getaiarray( "axis" );
    var_16 = 64;
    var_17 = gettime();

    for ( var_18 = 0; var_18 < var_6; var_18++ )
    {
        var_19 = _ID42407::_ID17434( var_9 );
        var_20 = randomfloatrange( var_13, var_14 );
        var_21 = randomfloatrange( var_13, var_14 );
        var_22 = ( var_19[0] + var_20, var_19[1] + var_21, var_19[2] );
        magicbullet( var_2, var_3 gettagorigin( "tag_flash" ), var_22 );

        foreach ( var_24 in var_15 )
        {
            if ( !isalive( var_24 ) )
                continue;

            if ( distance2d( var_24.origin, var_19 ) < 64 )
                var_24 kill();
        }

        wait(var_1);
        var_9 += var_12 * var_8;
    }
}

_ID27290( var_0 )
{
    if ( !level.player animscripts\battlechatter::_ID28201( var_0 ) )
        return 0;

    if ( sighttracepassed( level.player geteye(), var_0, 0, level.player ) )
        return 1;

    return 0;
}

_ID54253()
{
    var_0 = getentarray( "delete", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID54361 );
}

_ID54361()
{
    self waittill( "trigger" );
    wait 0.05;

    if ( isdefined( self ) )
        self delete();
}

_ID23667()
{
    if ( self getbarrelspinrate() == 1 )
        return;

    self startbarrelspin();

    while ( self getbarrelspinrate() < 1 )
        wait 0.05;
}

_ID47231( var_0, var_1 )
{
    var_1 endon( "death" );
    level endon( "objective_complete" + var_0 );

    for (;;)
    {
        objective_current( var_0, var_1.origin );
        wait 0.05;
    }
}

_ID51887( var_0, var_1 )
{
    self endon( "death" );

    while ( isdefined( self ) && isdefined( var_0 ) )
    {
        var_0 waittill( "trigger",  var_2  );

        if ( self == var_2 )
        {
            var_3 = gettime() + _ID47906( var_1 );

            while ( gettime() < var_3 )
            {
                wait 0.1;

                if ( !self istouching( var_0 ) )
                    break;
            }

            if ( gettime() >= var_3 )
            {
                var_0 notify( "trigger_fuse",  self  );
                return;
            }
        }

        wait 0.05;
    }
}

_ID44801( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );

    if ( !var_1.size )
        return;

    var_2 = undefined;

    if ( var_1.size > 1 )
    {
        _ID42237::_ID3350( var_1, ::_ID50029, var_0 );
        level waittill( var_0,  var_2  );
    }
    else
        var_1[0] waittill( "trigger",  var_2  );

    return var_2;
}

_ID50029( var_0 )
{
    self endon( var_0 );
    self waittill( "trigger",  var_1  );
    level notify( var_0,  var_1  );
}

_ID45186( var_0 )
{
    var_1 = getent( var_0, "targetname" );

    if ( isdefined( var_1 ) )
        var_1 notify( "trigger" );
}

_ID44030( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_1 notify( "trigger" );
}

_ID44529( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    self thread [[ var_1 ]]();
}

_ID52682( var_0 )
{
    while ( !isdefined( var_0 ) )
        wait 0.05;
}

_ID45426( var_0 )
{
    while ( isdefined( var_0 ) )
        wait 0.05;
}

_ID47906( var_0 )
{
    return var_0 * 1000;
}

_ID43796( var_0 )
{
    return var_0 / 1000;
}

_ID13805( var_0, var_1 )
{
    level._ID5261 = _ID42313::_ID9125( "black", 0, level.player );
    level._ID5261 fadeovertime( var_0 );
    level._ID5261.alpha = 1;

    if ( isdefined( var_1 ) )
        level._ID5261.foreground = var_1;

    wait(var_0);
}

_ID52029( var_0 )
{
    level._ID5261 fadeovertime( var_0 );
    level._ID5261.alpha = 0;
    wait(var_0);
    level._ID5261 destroy();
}

_ID50397()
{
    var_0 = getentarray( "flood_spawner", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID54703( var_0 )
{
    if ( var_0.size == 1 )
        return var_0[0];

    return var_0[randomint( var_0.size - 1 )];
}

_ID45841()
{
    for (;;)
        wait 0.05;
}

_ID46271()
{
    setsaveddvar( "r_spotlightStartRadius", 36 );
    setsaveddvar( "r_spotlightEndRadius", 325 );
    setsaveddvar( "r_spotlightBrightness", 0.9 );
    var_0 = _ID42237::_ID35164();
    var_0.origin = level.player geteye();
    var_0.angles = level.player getplayerangles();
    var_0 thread _ID53976();
    var_1 = _ID42237::_ID16299( "flashlight" );
    playfxontag( var_1, var_0, "tag_origin" );
    level.player._ID52470 = var_0;
}

_ID53976()
{
    for (;;)
    {
        var_0 = level.player getplayerangles();
        var_1 = level.player geteye();

        if ( self.angles != var_0 )
            self.angles = var_0;

        if ( self.origin != var_1 )
            self.origin = var_1;

        wait 0.05;
    }
}

_ID50517( var_0 )
{
    self endon( "movedone" );
    var_1 = _ID46974();

    while ( var_1 > var_0 )
    {
        var_1 = _ID46974();
        wait 0.5;
    }

    level.player _meth_80b5( "airliner_flyby" );
    wait 4;
    level.player _meth_80b6( "airliner_flyby" );
}

_ID46974()
{
    var_0 = level.player.origin;
    var_1 = level._ID48251.origin;
    var_2 = distance( var_0, var_1 );
    return var_2;
}

_ID48776()
{
    _ID42407::_ID38929( "trig_alley_carstart" );
    var_0 = getent( "spawn_enemies_slope_trigger", "targetname" );

    if ( !_ID42237::_ID14385( "pickup2_spawned" ) )
    {
        wait 1.5;
        var_0 thread _ID42407::_ID25088( "trigger", 1.5 );
    }
    else
    {
        wait 0.6;
        var_0 thread _ID42407::_ID25088( "trigger", 1.5 );
    }

    var_1 = _ID42411::_ID35196( "fire_car_slope" );
    playfxontag( level._ID1426["fire_crash_jeepride"], var_1, "tag_body" );
    var_1._ID23512[0] delete();
    var_1 thread maps\favela_escape_aud::_ID53534();
    var_1 waittill( "reached_end_node" );
    var_1 dodamage( var_1.health, var_1.origin );
}

_ID53437()
{
    _ID42234::_ID13611( "fence_destruction_1" );
}

_ID52127()
{
    level endon( "move_ai_intro" );
    var_0 = getent( "intro_anim_node", "targetname" );
    var_1 = _ID42407::_ID35028( "payphone" );
    level._ID47826.payphone = var_1;
    var_2 = [ level._ID51527, level._ID47826 ];
    thread move_ai_intro( var_2 );
    var_0 _ID42259::_ID3016( var_2, "opening_radiotower" );
    var_0 thread _ID42259::_ID3111( var_1, "opening_radiotower" );
    var_0 _ID42259::_ID3099( var_2, "opening_radiotower" );
    var_3 = getnode( "node_sarge_post_intro_goal", "targetname" );
    level._ID47826 setgoalnode( var_3 );
    var_4 = getnode( "node_hero1_post_intro_goal", "targetname" );
    level._ID51527 setgoalnode( var_4 );
    _ID42237::_ID14413( "player_start_moving" );
    _ID42237::_ID14402( "move_ai_intro" );
}

_ID43233()
{
    self hide();
    var_0 = getent( "chicken_box", "targetname" );
    var_0 setcandamage( 1 );
    var_1 = [ "crazy01", "crazy02" ];
    var_2 = [ "death01", "death02" ];
    var_3 = _ID42237::_ID28945( var_1 );
    var_4 = _ID42237::_ID28945( var_2 );
    _ID42407::_ID3428( "chicken_anim" );
    thread _ID42259::_ID3044( self, var_3 );
    var_0 waittill( "damage" );
    playfx( level._ID1426["chicken_box"], var_0.origin );
    playfx( level._ID1426["chicken_box_impact"], var_0.origin );
    playfx( level._ID1426["chicken_box_burst"], var_0.origin );
    var_0 delete();
    self show();
    wait 1.1;
    var_5 = getent( self.target, "targetname" );
    var_5 setcandamage( 1 );
    var_5 waittill( "damage" );
    var_5 delete();
    _ID42259::_ID3111( self, var_4 );
    wait 30;
    self delete();
}

_ID46282( var_0, var_1, var_2 )
{
    wait(var_0);
    level.player _meth_80b5( var_1 );
    wait(var_2);
    level.player _meth_80b6( var_1 );
}

_ID46172( var_0 )
{
    level.player endon( "mantle" );

    for (;;)
    {
        var_1 = level.player getstance();

        if ( level.player istouching( var_0 ) && var_1 != "crouch" && var_1 != "prone" )
            setsaveddvar( "hud_forceMantleHint", 1 );
        else
            setsaveddvar( "hud_forceMantleHint", 0 );

        wait 0.05;
    }
}

destroyed_car_no_burn()
{
    var_0 = getent( "crushed_car", "targetname" );
    var_0 _ID42407::_ID3428( "car" );
    var_0 _ID42259::_ID3038( var_0, "destroyed_car" );
}

animated_soccer_goals()
{
    var_0 = getentarray( "soccer_goal", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread animated_soccer_goals_think();
}

helicopter_soccerfield_exploder()
{
    _ID42237::_ID14413( "market_evac_player_near_soccerfield" );
    _ID42234::_ID13611( "heli_dust_large_soccer" );
    _ID42234::_ID13611( "heli_dust_large_soccer_02" );
}

animated_soccer_goals_think()
{
    _ID42407::_ID3428( "goals" );
    thread _ID42259::_ID3044( self, "soccer_goal", "stop_idle" );
    _ID42237::_ID14413( "market_evac_player_near_soccerfield" );
    self notify( "stop_idle" );
    _ID42259::_ID3111( self, "soccer_goal_heli" );
    _ID42259::_ID3111( self, "soccer_goal_heli2idle" );
    thread _ID42259::_ID3044( self, "soccer_goal" );
}

soccerfield_animated_wires()
{
    var_0 = getent( "animated_wires", "targetname" );
    var_0 _ID42407::_ID3428( "heavy_wires" );
    _ID42237::_ID14413( "market_evac_player_near_soccerfield" );
    var_0 _ID42259::_ID3111( var_0, "helicopter_wires" );
}

playerjump_roof_fx()
{
    _ID42237::_ID14413( "roofrun_player_bigjump_start" );
    _ID42234::_ID13611( "dust_player_jump_top_favela_s" );
    _ID42234::_ID13611( "dust_player_jump_top_02_favela_s" );
    wait 0.25;
    _ID42234::_ID13611( "dust_player_jump_down_favela_s" );
}

soap_random_idle_anims( var_0, var_1 )
{
    self endon( "sarge_idle_stop" );
    var_2 = [];
    var_2[0] = "favela_escape_rooftop_traverse_M_idle_dialog1";
    var_2[1] = "favela_escape_rooftop_traverse_M_idle_dialog2";
    var_2[2] = "favela_escape_rooftop_traverse_M_idle_dialog3";

    for (;;)
    {
        var_3 = _ID42237::_ID28945( var_2 );
        _ID42259::_ID3111( var_0, var_1 );
        _ID42259::_ID3111( var_0, var_3 );
    }
}

animated_airconditioners_setup()
{
    var_0 = getentarray( "airconditioner_animated", "targetname" );
    _ID42237::_ID3350( var_0, ::animated_airconditioners_think );
}

animated_airconditioners_think()
{
    _ID42407::_ID3428( "airconditioner" );
    _ID42259::_ID3044( self, "idle" );
}

blend_player_anim_and_linktodelta( var_0 )
{
    level.player playerlinktoblend( var_0, "tag_player", 0.5, 0.25, 0.25 );
    wait 1.2;
    level.player playerlinktodelta( var_0, "tag_player", 1, 0, 0, 0, 0 );
}

player_on_slide_magic_bullet()
{
    var_0 = getentarray( "bullet_slide", "targetname" );
    var_1 = getent( "bullet_slide_start", "targetname" );
    _ID42237::_ID14413( "trig_solorun_player_on_slide" );

    foreach ( var_3 in var_0 )
    {
        magicbullet( "ak47", var_1.origin, var_3.origin );
        wait 0.1;
    }
}

move_ai_intro( var_0 )
{
    _ID42237::_ID14413( "move_ai_intro" );

    foreach ( var_2 in var_0 )
        var_2 _ID42407::_ID12445();

    _ID44030( "trig_script_color_allies_b0" );
}

_ID50162()
{
    var_0 = getent( "fan_spin", "targetname" );
    var_0 rotatevelocity( ( 0, 0, 100 ), 200 );
}

wibble_helicopter()
{
    _func_2f1( 0, "xy", 2.2, 2 );
}

early_fall_kill_trig_remove()
{
    var_0 = getent( "early_fall_kill", "targetname" );
    var_0 delete();
}
