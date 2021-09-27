// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID54598()
{
    _unknown_0041();
    var_0 = _func_1A2();

    while ( !_func_02F( level._ID36711 ) )
        wait 0.05;

    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3._ID172 ) )
            continue;

        if ( _func_125( var_3._ID172, "trigger" ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    var_5 = var_1;

    for ( var_11 = _func_1DA( var_5 ); _func_02F( var_11 ); var_11 = _func_1BF( var_5, var_11 ) )
    {
        var_6 = var_5[var_11];

        if ( !_func_02F( var_6._ID1191 ) )
            continue;

        var_7 = _ID42237::_ID16640( var_6._ID1191, "targetname" );
        var_8 = var_7;

        for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
        {
            var_9 = var_8[var_10];

            if ( _func_02F( var_9._ID922 ) && var_9._ID922 == "hostile_burst" )
                var_6 thread _unknown_0118( var_9 );
        }

        var_clear_3
        var_clear_1
    }

    var_clear_6
    var_clear_0
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
        wait(_func_0BA( 0.5, 1.25 ));

    var_1 = undefined;

    if ( _func_02F( var_0._ID31388 ) )
        var_1 = var_0._ID31388;

    if ( !_func_02F( var_1 ) )
    {
        if ( !_func_02F( level._ID50902 ) )
            level._ID50902 = 0;

        var_1 = level._ID50615[level._ID50902];
        level._ID50902++;

        if ( level._ID50902 >= level._ID50615.size - 1 )
            level._ID50902 = 0;
    }

    level thread _ID42237::_ID27077( var_1, var_0._ID740 );
}

_ID54569()
{
    thread _unknown_0253();
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
    level._ID794 _ID42407::_ID27079( "mus_favelaescape_fixedfall", "fixedfall_music_done" );
}

_ID52086()
{
    _ID42407::_ID24584( 3 );
    wait 3;
    _ID42407::_ID24587( "mus_favelaescape_finalrun" );
    _ID42237::_ID14413( "solorun_player_boarded_chopper" );
    _ID42407::_ID24584( 10 );
    level._ID794 _ID42407::_ID27079( "mus_favelaescape_ending" );
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
    var_0 = _func_1A1( "walla_escape_soccer", "targetname" );
    var_0 _ID42407::_ID27079( "wlla_favela_escape_soccer" );
}

_ID52646()
{
    level._ID794 _ID42407::_ID27079( "wlla_favela_escape_running1" );
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
    thread _unknown_0472( var_0 );
    _ID42237::_ID14413( var_0 );
    _ID42237::_ID14413( "runpath_resume_dialogue" );
    level._ID47826 _unknown_1B82( "favesc_cmt_surrounded" );
    _ID42407::_ID28864( "favesc_nkl_ontheway" );
    level._ID47826 _unknown_1B95( "favesc_cmt_lockandload" );
    level._ID51527 _unknown_1BA0( "favesc_gst_letsdothis" );
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
    var_1 = _func_1A2( "spawner_radiotower_wave1", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_unknown_04ED );

    if ( !_func_02F( level._ID48743 ) )
        level._ID48743 = 0;

    while ( level._ID48743 < var_0 )
        wait 0.1;

    _unknown_20A3( "trig_killspawner_7" );
}

_ID43884()
{
    self waittill( "death",  var_0  );

    if ( _ID42372::_ID27638( self, var_0 ) )
        level._ID48743++;
}

_ID48509()
{
    var_0 = _func_1A1( "radiotower_path_scout", "targetname" );
    var_1 = var_0._ID70;
    var_2 = _func_0C8( var_0._ID1191, "targetname" );
    var_3 = var_0 _ID42407::_ID35014();
    var_3 thread _ID42407::_ID22746( 1 );
    var_3 _unknown_1CF6();
    var_3._ID511 = 1;
    var_0 _ID42259::_ID3023( var_3, var_1 );
    _ID42407::_ID38929( "trig_radiotower_brushpath_start" );
    var_3 _ID42407::_ID36519();
    var_3 endon( "death" );
    var_3._ID49 = 1;
    var_3 thread _ID42407::_ID27079( "favesc_pe1_heretheycome" );
    var_0 _ID42259::_ID3020( var_3, var_1 );
    var_3._ID452 = 64;
    var_3 _meth_81B1( var_2 );
    var_3 waittill( "goal" );

    if ( _func_02F( var_3 ) )
    {
        var_3 _unknown_1D53();
        var_3._ID511 = 0;
        var_3._ID381 = 0;
        var_3._ID452 = 1024;
        var_3._ID199 = "ambush";
    }
}

_ID51235()
{
    _ID42237::_ID3350( level._ID49912, ::_unknown_1D44, 1 );
    _ID42407::_ID38929( "trig_radiotower_brushpath_start" );
    wait 2.25;
    _ID42237::_ID3350( level._ID49912, ::_unknown_1D5C, 0 );
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
    var_1 = _func_1A2( "spawner_radiotower_doorkick_1", "targetname" );
    var_2 = _func_1A1( "sbmodel_radiotower_doorkick_1", "targetname" );
    var_3 = _ID42237::_ID16638( "struct_radiotower_doorkick_1_animref", "targetname" );
    thread _unknown_1C1C( var_1, var_2, var_3 );

    if ( _ID42237::_ID14385( "radiotower_runpath_dialogue_done" ) )
        level._ID51527 _ID42407::_ID10226( 1, ::_unknown_1D38, "favesc_gst_shackonleft" );

    wait 5;
    var_4 = _func_1A1( "sbmodel_radiotower_doorkick_1_backdoor_blocker", "targetname" );
    var_4 _meth_80B7();
}

_ID52719()
{
    var_0 = _func_1A1( "radiotower_curtainpull1_animref", "targetname" );
    _unknown_1D42( var_0 );
    var_0._ID43475 = _ID42237::_ID16638( "radiotower_curtainpull1_sighttracer", "targetname" );
    var_1 = _func_1A1( "spawner_radiotower_curtainpull_1", "targetname" );
    var_1 thread _unknown_1D2C( 1, ::_unknown_072F );
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
    var_0 = _func_1A1( "trig_killspawner_radiotower_hiding_door_guy", "targetname" );
    var_1 = undefined;
    var_2 = undefined;
    var_3 = ( 4374, 1252, 1060 );
    var_4 = _func_1A2( "hiding_door_spawner", "script_noteworthy" );
    var_1 = _ID42237::_ID16182( var_3, var_4 );
    var_5 = level._ID49274;
    var_6 = _ID42237::_ID16182( var_3, var_5 );
    thread _unknown_07C6( var_1, var_0 );
    level endon( "radiotower_hiding_door_guy_cleanup_cancel" );
    var_0 waittill( "trigger" );
    var_6 _meth_80B7();
}

_ID53119( var_0, var_1 )
{
    var_1 endon( "trigger" );
    var_0 waittill( "trigger" );
    level notify( "radiotower_hiding_door_guy_cleanup_cancel" );
}

_ID53766( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    if ( var_0 )
    {
        _ID42234::_ID13611( "fence_ambient" );
        thread _unknown_239D();
    }
}

_ID43739()
{
    _ID42237::_ID14413( "radiotower_vehicles_start" );
    thread _unknown_082A();
}

_ID53414()
{
    var_0 = _ID42411::_ID9185( 0 );
    var_1 = var_0[0];
    _ID42234::_ID13611( 110 );
    _ID42234::_ID13611( 120 );
    var_1 thread _unknown_08A9();
    var_1 thread _unknown_0867();
    var_2 = _func_1F2( "node_technical_bust_gate", "script_noteworthy" );
    var_2 waittill( "trigger" );
    _ID42237::_ID14402( "radiotower_escape_technical_1_arrival" );
    level thread _unknown_085D();
    _ID42407::_ID10226( 2, ::_unknown_08C2 );
    _ID42407::_ID10226( 5, ::_unknown_099D );
}

_ID51010()
{
    _unknown_0980();
    var_0 = [];
    var_0 = _ID42237::_ID16640( "struct_radiotower_vehicle1_road_badplaceRef", "targetname" );
    var_0[var_0.size] = _ID42237::_ID16638( "struct_radiotower_vehicle1_donut_badplaceRef", "targetname" );
    var_1 = [];
    var_2 = var_0;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = "vehicle1_badplace_" + var_5;
        _func_020( var_4, -1, _ID42407::_ID17434( var_3._ID740 ), var_3._ID851, 128, "axis", "allies" );
        var_1[var_1.size] = var_4;
    }

    var_clear_3

    while ( !_ID42237::_ID14385( "radiotower_vehicle1_donut_done" ) && self._ID486 > 0 && self _meth_8290() > 1 )
        wait 0.1;

    var_6 = var_1;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        _func_01F( var_7 );
    }

    var_clear_2
    var_clear_0
}

_ID51393()
{
    var_0 = _ID42411::_ID9185( 1 );
    var_1 = var_0[0];
    _ID42237::_ID14402( "pickup2_spawned" );
    var_1 thread _unknown_099C();
    var_2 = _func_1F2( "vnode_technical2_arrival", "script_noteworthy" );
    var_2 waittill( "trigger" );
    _ID42237::_ID14402( "radiotower_escape_technical_2_arrival" );
}

_ID46109()
{
    waitframe;
    _ID42407::_ID13024( "reached_end_node" );
    _ID42407::_ID13024( "stopped" );
    thread _unknown_09E1();
    thread _unknown_09EC();
    var_0 = _unknown_09FC();
    var_0 _meth_8583();
    _ID42407::_ID13024( "godoff" );
    thread _unknown_0A20( var_0 );
    var_1 = self._ID23512[0];
    var_1 thread _unknown_0A96( self, var_0 );
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
    _unknown_0AAD();

    while ( self _meth_8290() > 0 )
        wait 0.05;

    _ID42407::_ID13025( "stopped" );
}

_ID48036()
{
    var_0 = undefined;
    var_1 = self._ID29965;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _ID42412::_ID3052( self, var_2._ID40222 );

        if ( _ID42412::_ID17586( var_3 ) )
        {
            var_0 = var_2;
            break;
        }
    }

    var_clear_3
    var_clear_0
    return var_0;
}

_ID52530( var_0 )
{
    self._ID51640 = 0;
    var_1 = self._ID29965;
    _ID42237::_ID3350( var_1, _ID42407::_ID22746, 1 );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID486 = 10000000;
        var_3._ID1204 = -2500;
        var_3._ID86 = 0.5;
        var_3 thread _unknown_0B0D( self, var_0 );
    }

    var_clear_2
    var_clear_0
    thread _ID42411::_ID16988();
    _unknown_0B50();
    thread _unknown_0B3A();
    thread _unknown_0B45();

    while ( _func_02F( self ) && !self._ID51640 && !_ID42407::_ID13019( "godoff" ) )
        wait 0.05;

    if ( _func_02F( self ) )
    {
        thread _ID42411::_ID16987();
        _unknown_0B68( 1500 );
        self notify( "technical_health_reset" );
    }
}

_ID46301( var_0, var_1 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_0 _ID42407::_ID13027( "godoff" );
    self._ID49 = 1;

    if ( _func_02F( var_1 ) && self == var_1 )
        self._ID486 = 1;
    else
        self._ID486 = 150;

    thread _unknown_2197();
}

_ID40247( var_0 )
{
    self._ID486 = var_0 + self._ID18313;
    self._ID9497 = self._ID486;
}

_ID48549()
{
    self endon( "death" );
    self endon( "technical_health_reset" );
    _unknown_0BD4();
    self._ID51640 = 1;
}

_ID50443()
{
    self endon( "death" );
    self endon( "technical_health_reset" );
    _unknown_0BEB();
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

    while ( self _meth_8290() > 2 )
        wait 0.1;
}

_ID46804()
{
    self endon( "death" );
    self endon( "technical_health_reset" );

    while ( self _meth_8290() < 1 )
        wait 0.1;
}

_ID54631( var_0, var_1 )
{
    self endon( "death" );
    var_1 thread _unknown_0C68();
    var_1 waittill( "death" );
    var_0 _ID42407::_ID13028( "reached_end_node", "stopped" );
    self _meth_80C6();
}

_ID48321( var_0, var_1 )
{
    self endon( "death" );
    var_1 endon( "death" );
    self _meth_8166();
    var_0 waittillmatch( "noteworthy",  "vnode_technical_turret_activate"  );
    self _meth_8185();
}

_ID47002()
{
    self endon( "death" );
    level waittill( "kill_technical_gunners" );
    _unknown_2265();
    self _meth_8058();
}

_ID51303()
{
    var_0 = _func_1A1( "sbmodel_technical_jump_helper", "targetname" );
    var_0 _ID42237::_ID38863();
}

_ID46559()
{
    thread _unknown_0CF8();
    thread _unknown_0D07();
    level._ID51527 _unknown_21D8( "favesc_gst_deadahead" );
    level._ID47826 _unknown_21E2( "favesc_cmt_thrugate" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14413( "radiotower_escape_technical_1_arrival" );
    _ID42407::_ID4917( "allies" );
    level._ID51527 _unknown_2206( "favesc_gst_technical" );
    _ID42237::_ID14413( "radiotower_escape_technical_2_arrival" );
    level._ID47826 _unknown_2218( "favesc_cmt_technical" );
    _ID42407::_ID4918( "allies" );
}

_ID43524()
{
    level endon( "radiotower_exit" );
    _ID42407::_ID38928( "trig_radiotower_rooftop_spawn", "script_noteworthy" );
    level._ID51527 _unknown_223E( "favesc_gst_onrooftops" );
}

_ID47986()
{
    level endon( "radiotower_exit" );
    _ID42407::_ID38929( "trig_radiotower_walljumper_spawn" );
    level._ID47826 _unknown_2257( "favesc_cmt_lowfromse" );
}

_ID52816()
{
    _ID42237::_ID14413( "radiotower_escape_technical_2_arrival" );

    while ( _unknown_2375().size >= 6 )
        wait 0.1;

    var_0 = _func_1A2( "trig_radiotower_cleanup_at_exit", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42237::_ID38863 );
    _unknown_273D( "trig_killspawner_7" );
    var_1 = _unknown_23A0();
    var_2 = [];
    var_3 = [];
    var_4 = var_1;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_5._ID740[0] > 3600 )
        {
            if ( var_5._ID740[2] > 1140 )
            {
                var_3[var_3.size] = var_5;
                continue;
            }

            var_2[var_2.size] = var_5;
        }
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14402( "radiotower_enemies_retreat" );
    level thread _unknown_24B7( var_3, 10 );
    level notify( "kill_technical_gunners" );
    var_7 = var_2;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_5 = var_7[var_8];
        var_5 _meth_81B2( var_5._ID740 );
    }

    var_clear_1
    var_clear_0
    wait 0.05;
    var_9 = _func_1A1( "goalvolume_52", "targetname" );
    var_2 = _ID42237::_ID3332( var_2 );
    var_2 = _ID42407::_ID3328( var_2 );
    thread _ID42237::_ID3294( var_2, ::_meth_81B5, var_9 );
    level._ID47826 _unknown_2338( "favesc_cmt_thruthatgate" );
    level._ID51527 _unknown_2343( "favesc_gst_gogogo" );
    _ID42237::_ID14402( "radiotower_escape_moveup" );
    var_10 = _func_1A2( "trig_radiotower_escape_removeAtExit", "targetname" );
    _ID42237::_ID3350( var_10, _ID42237::_ID38863 );
    _unknown_2818( "trig_radiotower_forcecolor_change_1" );

    if ( !_ID42237::_ID14385( "market_respawn_trigger" ) )
    {
        var_11 = _func_1A1( "trig_script_color_allies_b5", "targetname" );

        if ( _func_02F( var_11 ) )
            var_11 notify( "trigger" );
    }
}

_ID46723()
{
    thread _unknown_0F4C();
    thread _unknown_0F59();
    _ID42237::_ID14413( "vista1_dialogue_start" );
    level._ID47826 _unknown_23A6( "favesc_cmt_pushthrustreets" );
    _ID42237::_ID14413( "multipath_dialogue_start" );
    level._ID47826 _unknown_23B9( "favesc_cmt_flankingroutes" );
    _ID42237::_ID14413( "almostatmarket_dialogue_start" );
    level._ID47826 _unknown_23CB( "favesc_cmt_almostatmarket" );
}

_ID50601()
{
    level endon( "playerabove_dialogue_cancel" );
    _ID42237::_ID14413( "playerabove_dialogue_start" );
    level._ID47826 _unknown_23E5( "favesc_cmt_laydownfire" );
}

_ID52042()
{
    _ID42237::_ID14413( "leftalley_dialogue_start" );
    level._ID47826 thread _unknown_23F8( "favesc_cmt_alleyonleft" );
}

init_fx_alphathreshold()
{
    for (;;)
    {
        _ID42237::_ID14413( "alphathreshold_activate" );
        _ID42237::_ID14388( "alphathreshold_deactivate" );
        _func_0DB( "fx_alphathreshold", 3 );
        _ID42237::_ID14413( "alphathreshold_deactivate" );
        _ID42237::_ID14388( "alphathreshold_activate" );
        _func_0DB( "fx_alphathreshold", 0 );
    }
}

_ID43553()
{
    _ID42407::_ID38929( "trig_vista1_doorkick1" );
    var_0 = _ID42237::_ID16638( "struct_vista1_doorkick1_sighttracer", "targetname" );
    var_0 _ID42407::_ID41136( 1.5, 0.7 );
    var_1 = _func_1A1( "sbmodel_vista1_door1", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_vista1_door1_animref", "targetname" );
    var_3 = _func_1A2( "spawner_vista1_door1_houseguy", "targetname" );
    thread _unknown_2371( var_3, var_1, var_2 );
}

_ID46619()
{
    level endon( "multipath_dialogue_start" );
    _ID42237::_ID14413( "street_advance_1" );
    var_0 = _ID42237::_ID16638( "struct_vista1_wavingguy_animref", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = "favela_run_and_wave";
    var_3 = var_1 _ID42407::_ID35014();
    var_3._ID511 = 1;
    var_3._ID507 = 1;
    var_3 thread _ID42407::_ID22746();
    var_0 _ID42259::_ID3023( var_3, var_2 );
    var_3 thread _unknown_10F8();
    _ID42407::_ID38929( "trig_vista1_wavingguy" );
    thread _unknown_2993( "trig_vista1_wavingguy_spawngroup" );
    var_3 _ID42407::_ID36519();
    var_3._ID49 = 1;
    var_3 notify( "wavingguy_activated" );
    var_3 thread _ID42407::_ID27079( "favesc_pe1_attack" );
    var_0 _ID42259::_ID3020( var_3, var_2 );

    if ( _func_1A7( var_3 ) )
    {
        var_3._ID511 = 0;
        var_3._ID507 = 0;
        var_4 = _func_0C8( var_3._ID1191, "targetname" );
        var_3 _meth_81B1( var_4 );
    }
}

_ID44149()
{
    self endon( "death" );
    self endon( "wavingguy_activated" );
    _ID42237::_ID14413( "multipath_dialogue_start" );
    _ID42407::_ID36519();
    self _meth_80B7();
}

_ID47074()
{
    _unknown_29DC( "trig_street_roof1_doorkick" );
    var_0 = _func_1A2( "spawner_street_roof1_doorkick", "targetname" );
    var_1 = _func_1A1( "sbmodel_street_roof1_doorkick", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_street_roof1_doorkick_animref", "targetname" );
    thread _unknown_2462( var_0, var_1, var_2 );
}

_ID53907()
{
    _ID42237::_ID14413( "uphill_advance_3" );
    thread _unknown_11CE();
    var_0 = _func_1A2( "volume_enemies_street_mid_intersection", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_11E4 );
}

_ID54216()
{
    var_0 = _ID42407::_ID15543( "street_mid_inside_guys" );
    _ID42237::_ID3350( var_0, ::_unknown_1229 );
}

_ID44811()
{
    level endon( "market_evac_start" );
    var_0 = _unknown_2A7A( 5 );

    for (;;)
    {
        wait(_func_0BA( 0.5, 1 ));
        var_1 = _ID42407::_ID15547( "axis", "human" );
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( !_func_1A7( var_3 ) )
                continue;

            if ( var_3 _ID42407::_ID11498() )
                continue;

            if ( _func_02F( var_3._ID50357 ) )
            {
                if ( _func_03D() > var_3._ID50357 + var_0 && !_func_02F( var_3._ID49788 ) )
                {
                    var_3._ID49788 = 1;
                    var_3 thread _unknown_129E();
                }

                continue;
            }

            var_3._ID50357 = _func_03D();
            var_3._ID486 = 1;
            var_3._ID86 = 1;
        }

        var_clear_2
        var_clear_0
    }
}

_ID21318()
{
    self endon( "death" );

    while ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), self._ID740, level._ID8760["45"] ) )
        wait(_func_0BA( 0.5, 2 ));

    _ID45456::_ID54623( self );
    self _meth_8058();
}

_ID43984()
{
    _ID42407::_ID38929( "trig_vista2_truckstart" );
    thread _unknown_1317();
}

_ID53815()
{
    var_0 = _ID42411::_ID9185( 3 );
    var_1 = var_0[0];
    var_1 thread _unknown_10D0();
}

_ID50759()
{
    _ID42407::_ID38929( "trig_vista2_endhouse_clearout" );
    var_0 = _func_1A1( "vista2_endhouse_goalvolume", "targetname" );
    var_1 = _func_0DE( "axis" );
    var_2 = [];
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4 _meth_80B0( var_0 ) )
            var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0

    if ( !var_2.size )
        return;

    var_6 = var_2[0];
    var_7 = _func_0C8( "node_vista2_endhouse_firespot", "targetname" );
    var_8 = _func_1A1( "org_vista2_endhouse_nadetarget", "targetname" );
    var_9 = _ID42237::_ID16638( "street_vista2_jumpthru_animref", "targetname" );
    var_10 = _func_0C8( "node_vista2_endhouse_windowjumper_target", "targetname" );
    var_11 = level._ID51527;
    var_12 = var_11._ID834;
    var_11 thread _ID42407::_ID14803( "m79", "primary" );
    var_13 = var_11 _ID42407::_ID15740();
    var_11 _unknown_27C4( 64 );
    var_11 _unknown_27E8();
    var_11 _ID42407::_ID7867();
    var_11 _meth_81D6( "stand" );
    var_11 _meth_81B1( var_7 );
    var_11 waittill( "goal" );

    if ( _func_1A7( var_6 ) )
    {
        var_6 thread _ID42407::_ID22746( 1 );
        var_9 = _ID42237::_ID16638( "street_vista2_jumpthru_animref", "targetname" );
        var_14 = "traverse_window_M_2_dive";
        var_6._ID3189 = "generic";
        var_15 = var_6 _ID42407::_ID16120( var_14 );
        var_16 = _func_071( var_9._ID740, var_9._ID65, var_15 );
        var_17 = _func_072( var_9._ID740, var_9._ID65, var_15 );
        var_6 _meth_81D2( var_16, var_17 );
        var_11 _meth_8173( var_8 );
        wait 1;
        var_11 _meth_81F7( 1.0, var_8._ID740 );
        var_6 _ID42407::_ID10226( 1.5, _ID42407::_ID36519 );
        var_6 _ID42407::_ID10226( 2, _ID42407::_ID32187, 1 );
        var_9 thread _ID42259::_ID3020( var_6, var_14 );
        wait(_func_067( var_15 ));
    }

    if ( _func_1A7( var_6 ) )
        var_6 _meth_81B1( var_10 );

    var_11 _meth_8174();
    var_11 _meth_81D6( "stand", "crouch", "prone" );
    var_11 _ID42407::_ID32315( var_13 );
    var_11 _unknown_28BD();
    var_11 _unknown_289E();
    var_11 _ID42407::_ID10226( 5, _ID42407::_ID14803, var_12, "primary" );
}

_ID54435()
{
    var_0 = _func_1A1( "volume_vista2_retreat", "targetname" );
    _ID42407::_ID38929( "trig_vista2_truckstart" );
    var_1 = _ID42407::_ID15543( "vista2_firsthalf_enemies" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_81B5( var_0 );
    }

    var_clear_2
    var_clear_0
}

_ID50921()
{
    level endon( "vista2_leftbalcony_deathflag" );
    _ID42237::_ID14413( "market_advance_1" );
    var_0 = [];
    var_0[0] = ( -1064, 1340, 1254 );
    var_0[1] = ( -1156, 1380, 1254 );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _func_074( "fraggrenade", var_2, _ID42407::_ID17434( var_2 ), _func_0B8( 0.25 ) );
    }

    var_clear_2
    var_clear_0
}

_ID47028()
{
    thread _unknown_1603();
    thread _unknown_1611();
    _ID42237::_ID14413( "market_dialogue_start" );
    wait 2;
    level._ID47826 _unknown_28B8( "favesc_cmt_splitup" );
    _ID42237::_ID14402( "market_introdialogue_done" );
}

_ID48229()
{
    _ID42407::_ID38929( "trig_market_chaoticaboves_1" );
    _ID42237::_ID14413( "market_introdialogue_done" );
    level._ID51527 _unknown_28DD( "favesc_gst_firingblind" );
}

_ID52425()
{
    _ID42407::_ID38929( "trig_market_door1" );

    if ( !_ID42237::_ID14385( "market_introdialogue_done" ) )
        _ID42237::_ID14413( "market_introdialogue_done" );
    else
        wait 2;

    level._ID47826 _unknown_2909( "favesc_cmt_shackonright" );
}

_ID53495()
{
    _ID42407::_ID38929( "trig_market_door1" );
    level notify( "kill_hidden_reinforcement_waiting" );
    var_0 = _unknown_2A32();
    var_1 = var_0[0];

    if ( _func_02F( var_1 ) )
        var_1 _ID42407::_ID32315( "p" );

    if ( var_0.size > 1 )
    {
        var_0 = _ID42237::_ID3321( var_0, var_1 );
        _ID42237::_ID3350( var_0, ::_unknown_2AA5 );
        _ID42237::_ID3350( var_0, _ID42407::_ID10959 );
        _ID42237::_ID3350( var_0, ::_unknown_29EB, 1 );
        _ID42237::_ID3350( var_0, ::_unknown_2B47, 10, 10 );
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
    var_0 = _func_1A2( "spawner_market_door_1", "targetname" );
    var_1 = _func_1A1( "sbmodel_market_door_1", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_physicsref_market_door1", "targetname" );
    var_3 = _ID42237::_ID16638( "struct_animref_market_door1_kick", "targetname" );
    _unknown_28C5( var_0, var_1, var_3, var_2 );
}

_ID50205()
{
    _ID42237::_ID14413( "market_evac_insidepath_start" );
    _ID42407::_ID4917( "allies" );
    level._ID47826 _unknown_29EB( "favesc_cmt_immediatedustoff" );
    _ID42407::_ID28864( "favesc_nkl_notfastenough" );
    level._ID47826 _unknown_29FE( "favesc_cmt_pickuppace" );
    _ID42237::_ID14413( "market_evac_chopper_incoming" );
    _ID42407::_ID28864( "favesc_nkl_toohot" );
    _ID42407::_ID10226( 2, ::_unknown_1293 );
    level._ID47826 _unknown_2A22( "favesc_cmt_waveoff" );
    _ID42407::_ID28864( "favesc_nkl_meetyouthere" );
}

_ID44181( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    var_2 = [];

    if ( var_1 )
        var_2 = _ID42411::_ID9185( var_0 );
    else
        var_2 = _ID42411::_ID31551( var_0 );

    var_3 = var_2[0];
    var_3._ID486 = 2000000;
    _func_1AB( var_3, 1150, 850 );
    return var_3;
}

_ID51914()
{
    var_0 = _unknown_1845( 4 );
    level._ID7499 = var_0;
    thread _unknown_3042( 0, "heli_loop", 10 );
    _ID42237::_ID14402( "market_chopper_spawned" );
    var_0 _meth_829E( 30, 40 );
    var_0 thread maps\favela_escape_aud::_ID53808();
    _ID42237::_ID14413( "market_evac_player_near_soccerfield" );
    level._ID7499 _meth_80B7();
    var_0 = _unknown_187B( 6, 0 );
    level._ID7499 = var_0;
    thread _unknown_3078( 0, "warbird_flyby", 6 );
    thread _unknown_3083( 6, "heli_loop", 9 );
    _ID42237::_ID14402( "market_evac_chopper_spawned" );
    var_1 = _ID42237::_ID16638( "struct_market_evac_chopper_path2", "targetname" );
    var_0 thread _unknown_18E6( var_1 );
}

_ID51583( var_0 )
{
    thread maps\favela_escape_aud::_ID49609();
    _ID42237::_ID14402( "market_evac_chopper_incoming" );
    var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    var_3 = _ID42237::_ID16638( var_2._ID1191, "targetname" );
    var_4 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
    self _meth_828E( 30 );
    self _meth_828D( 30, 15, 5 );
    self _meth_8265( var_1._ID740, 1 );
    self _meth_829E( 30, 25 );
    self _meth_8264( 256 );
    self waittill( "near_goal" );
    self _meth_8266( var_1._ID65[1] );
    self waittill( "goal" );
    thread _ID42407::_ID27079( "scn_favela_escape_heli_leave" );
    wait 1;
    _ID42237::_ID14402( "market_evac_chopper_bugout" );
    self _meth_8265( var_2._ID740 );
    self _meth_828D( 60, 10 );
    self _meth_8264( 600 );
    self waittill( "near_goal" );
    self _meth_8265( var_3._ID740 );
    _ID42237::_ID14402( "market_evac_chopper_leaves_scene" );
    _ID42407::_ID10226( 4, ::_unknown_1459 );
    self waittill( "near_goal" );
    self _meth_8265( var_4._ID740 );
    self waittill( "goal" );
    self notify( "death" );
    self _meth_80B7();
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
    var_6 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    wait(_func_0B8( var_2 ));

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        var_1 = _ID42237::_ID3320( var_1 );
        var_5 = _ID42237::_ID3320( var_5 );
        var_7 = 0;
        var_8 = var_1;

        for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
        {
            var_9 = var_8[var_10];

            if ( _ID42237::_ID14385( var_0 ) )
                break;

            var_6._ID740 = var_5[var_7]._ID740;
            var_6 _meth_80A1( var_9, "sound_done" );
            var_6 waittill( "sound_done" );

            if ( var_7 == var_5.size - 1 )
                var_7 = 0;
            else
                var_7++;

            wait(_func_0BA( var_3, var_4 ));
        }

        var_clear_2
        var_clear_0
    }

    var_6 _meth_80B7();
}

_ID49455()
{
    var_0 = _ID42237::_ID16640( "market_evac_ambush_rpg_firespot", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_1B61, "market_evac_chopper_leaves_scene" );
}

_ID50456( var_0 )
{
    if ( !_func_02F( var_0 ) )
    {
        if ( _func_02F( self._ID31190 ) )
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
    var_9 = var_1._ID740;

    while ( !_ID42237::_ID14385( var_0 ) && _func_02F( level._ID7499 ) )
    {
        var_10 = _unknown_320E( var_2 );
        var_11 = _func_0B9( 5, 12 );

        for ( var_12 = 0; var_12 < var_11; var_12++ )
        {
            if ( !_func_02F( level._ID7499 ) )
                break;

            var_13 = level._ID7499._ID740[0] + _func_0B9( -256, 256 );
            var_14 = level._ID7499._ID740[1] + _func_0B9( -256, 256 );
            var_15 = level._ID7499._ID740[2] + _func_0B9( -256, 0 );
            var_16 = ( var_13, var_14, var_15 );
            var_17 = _func_11A( var_16 - var_9 );
            var_18 = _func_11F( var_17 );
            var_19 = var_18 * 12;
            var_20 = var_9 + var_19;
            var_21 = _func_06D( var_1._ID740, var_20, 1 );
            var_22 = var_21["entity"];

            if ( _func_02F( var_22 ) )
            {
                if ( _func_02F( level._ID47826 ) )
                {
                    if ( var_22 == level._ID47826 )
                        continue;
                }

                if ( _func_1B3( var_22 ) )
                    continue;
            }

            _func_1C8( var_10, var_1._ID740, var_20 );
            wait(_func_0BA( var_5, var_6 ));
        }

        wait(_func_0BA( var_7, var_8 ));
    }
}

_ID45996()
{
    var_0 = _ID42237::_ID16640( "market_evac_ambush_rpg_firespot", "targetname" );
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID31453 ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
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
    var_9 = var_0;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_3 = var_9[var_10];
        var_1[var_1.size] = var_3;
    }

    var_clear_1
    var_clear_0
    var_11 = var_1;

    for ( var_14 = _func_1DA( var_11 ); _func_02F( var_14 ); var_14 = _func_1BF( var_11, var_14 ) )
    {
        var_3 = var_11[var_14];
        var_12 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
        var_13 = _func_1C8( "rpg_straight", var_3._ID740, var_12._ID740 );
        var_13 thread _ID42407::_ID27001( "scn_evac_rpg_loop", undefined, 1 );
        wait(_func_0BA( 0.8, 1.5 ));
    }

    var_clear_3
    var_clear_0

    while ( !_ID42237::_ID14385( "market_evac_chopper_leaves_scene" ) && _func_02F( level._ID7499 ) )
    {
        var_1 = _ID42237::_ID3320( var_1 );
        var_15 = var_1;

        for ( var_16 = _func_1DA( var_15 ); _func_02F( var_16 ); var_16 = _func_1BF( var_15, var_16 ) )
        {
            var_3 = var_15[var_16];

            if ( _ID42237::_ID14385( "market_evac_chopper_leaves_scene" ) || !_func_02F( level._ID7499 ) )
                break;

            if ( _unknown_3357( var_3._ID740 ) )
            {
                wait 0.05;
                continue;
            }

            var_12 = level._ID7499;
            var_13 = _func_1C8( "rpg_straight", var_3._ID740, var_12._ID740 );
            var_13 thread _ID42407::_ID27001( "scn_evac_rpg_loop", undefined, 1 );
            wait(_func_0BA( 0.8, 1.5 ));
        }

        var_clear_1
        var_clear_0
    }

    _ID42475::_ID34575( "stop_evac_fakefire_rpgs" );
}

_ID46773()
{
    var_0 = level._ID49240;
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805E();
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID43528()
{
    var_0 = _func_1A2( "ai_market_evac_ambusher", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_unknown_1F72 );
    wait 1.5;
    _unknown_3451( "trig_market_evac_spawn1" );
    _ID42237::_ID14400( "housespawners_done" );
    _ID42407::_ID10226( 9, ::_unknown_1F9F );
    _ID42237::_ID14413( "housespawners_done" );
    wait 0.05;
    var_1 = 2;

    for (;;)
    {
        var_2 = _unknown_1F9B();
        var_3 = 0;
        var_4 = var_2;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( _func_1A7( var_5 ) && !var_5 _ID42407::_ID11498() )
                var_3++;
        }

        var_clear_2
        var_clear_0

        if ( var_3 <= var_1 )
        {
            break;
            continue;
        }

        wait 0.1;
    }

    var_7 = _unknown_1FDD();
    level thread _unknown_31E4( var_7, 4 );
    _ID42237::_ID14402( "market_evac_enemies_depleted" );
}

_ID49469()
{
    var_0 = _func_0DE( "axis" );
    var_0 = _ID42407::_ID3328( var_0 );
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID922 ) && var_3._ID922 == "ai_market_evac_ambusher" )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID44628()
{
    self endon( "death" );
    self._ID4867 = self._ID4867 * 0.35;

    if ( _func_02F( level._ID7499 ) )
        self _meth_8173( level._ID7499, 0.4 );

    wait 15;
    _unknown_3109();
}

_ID43706()
{
    var_0 = _func_1A2( "spawner_market_evac_door1", "targetname" );
    var_1 = _func_1A2( "spawner_market_evac_door2", "targetname" );
    var_2 = _func_1A2( "spawner_market_evac_door3", "targetname" );
    var_3 = _func_1A1( "sbmodel_market_evac_door1", "targetname" );
    var_4 = _func_1A1( "sbmodel_market_evac_door2", "targetname" );
    var_5 = _func_1A1( "sbmodel_market_evac_door3", "targetname" );
    var_6 = _ID42237::_ID16638( "struct_animref_market_evac_kick_door1", "targetname" );
    var_7 = _ID42237::_ID16638( "struct_animref_market_evac_kick_door2", "targetname" );
    var_8 = _ID42237::_ID16638( "struct_animref_market_evac_kick_door3", "targetname" );
    thread _unknown_2FEA( var_2, var_5, var_8 );
    _ID42407::_ID10226( 2, ::_unknown_2FF2, var_0, var_3, var_6 );
    _ID42407::_ID10226( 4, ::_unknown_2FFE, var_1, var_4, var_7 );
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

    while ( !_ID42237::_ID14385( var_0 ) && _func_02F( level._ID47826 ) )
    {
        var_1 = _ID42237::_ID3320( var_1 );
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            while ( _func_0F3( level._ID794._ID740, level._ID47826._ID740 ) < 256 )
                wait 1;

            if ( !_ID42237::_ID14385( var_0 ) )
            {
                level._ID47826 _unknown_3183( var_3 );
                wait 20;
            }
        }

        var_clear_2
        var_clear_0
    }
}

_ID44491( var_0 )
{
    while ( level._ID794._ID740[2] < var_0 )
        wait 0.05;

    _ID42237::_ID14402( "market_evac_player_mantled" );
}

_ID54188( var_0 )
{
    var_1 = _func_1A1( "trig_market_evac_mantlehelper", "targetname" );
    _func_00E( "mantle", "+gostand" );
    _func_00E( "mantle", "+moveup" );

    for (;;)
    {
        if ( level._ID794 _meth_80B0( var_1 ) && !level._ID794 _meth_82E9() && level._ID794._ID740[2] < var_0 )
        {
            thread _unknown_37C6( var_1 );

            while ( level._ID794 _meth_80B0( var_1 ) )
            {
                level._ID794 _unknown_228D( var_1 );
                level._ID794 _meth_82EA();
                _func_0DB( "hud_forceMantleHint", 0 );

                while ( !level._ID794 _meth_834C() )
                    wait 0.05;

                break;
            }
        }
        else
            _func_0DB( "hud_forceMantleHint", 0 );

        wait 0.05;
    }
}

_ID52323( var_0 )
{
    self endon( "left_trigger" );
    thread _unknown_22D2( var_0 );
    self waittill( "mantle" );
}

_ID44139( var_0 )
{
    self endon( "mantle" );

    while ( self _meth_80B0( var_0 ) )
        wait 0.05;

    self notify( "left_trigger" );
}

_ID44040()
{
    level._ID47826 _unknown_326E( "favesc_cmt_letsgoletsgo" );
    _ID42407::_ID28864( "favesc_nkl_wholevillage" );
    level._ID47826 _unknown_3280( "favesc_cmt_pickusup" );
    level._ID51527 _unknown_328B( "favesc_gst_runoutofroof" );
    level._ID30909["freerunner"]["favela_escape_bigjump_ghost"] = "favesc_gst_jumpsfx";
    level._ID47826 _unknown_32A5( "favesc_cmt_makeitgogo" );
    level._ID30909["freerunner"]["favela_escape_bigjump_soap"] = "favesc_cmt_jumpsfx";

    if ( !_ID42237::_ID14385( "player_jump_watcher_stop" ) && !_ID42237::_ID14385( "player_fell_normally" ) )
        thread _unknown_238E();
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
        var_6 = level._ID794 _meth_8344();
        var_7 = _func_0F3( ( var_6[0], var_6[1], 0 ), ( 0, 0, 0 ) );

        if ( var_7 < 125 )
            var_4 = 1;

        if ( _func_03D() >= var_3 )
            var_5 = 1;

        if ( !var_4 || !var_5 )
            continue;

        level._ID47826 _unknown_334A( var_0[var_1] );
        var_3 = _func_03D() + var_2;
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
    var_0 = level._ID794;
    var_1 = _func_1A1( "trig_roofrun_player_bigjump_start", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_player_bigjump_edge_reference", "targetname" );
    var_3 = _func_0C8( "big_jump_node", "targetname" );
    _unknown_2989( var_3 );
    var_4 = _func_11F( var_2._ID65 );
    thread _unknown_31CA();
    thread _unknown_25C7();
    level endon( "player_fell_normally" );

    for (;;)
    {
        var_5 = 0;

        while ( level._ID794 _meth_80B0( var_1 ) )
        {
            _ID42237::_ID14413( "player_jumping" );

            if ( _unknown_2985( var_1, var_4, 0.915, 1 ) )
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
    thread _unknown_1C8B();
    var_6 = _func_1A1( "trig_roofrun_playerjump_falltrig", "targetname" );
    var_6 _meth_80B7();
    _ID42237::_ID14402( "roofrun_player_bigjump_start" );
    var_7 = _func_0C8( "big_jump_node", "targetname" );
    var_8 = _unknown_2598( var_0, var_7 );
    thread _unknown_2A05( var_8, var_3 );
    thread _unknown_261D();
    _func_0DB( "compass", 0 );
    _func_0DB( "hud_showStance", 0 );
    var_8 waittillmatch( "single anim",  "start_soap"  );
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_8122( 1 );
    level._ID47826 thread _unknown_34F6( 1 );

    if ( _ID42237::_ID14385( "roofrun_sarge_bigjumped" ) )
    {
        thread _unknown_2671();
        _ID42237::_ID14402( "bigjump_sargeplayer_interact_start" );

        if ( _func_02F( level._ID47826._ID54091 ) )
            level._ID47826._ID54091 notify( "stop_loop" );

        var_7 thread _ID42259::_ID3111( level._ID47826, "favela_escape_bigjump_soap_reach" );
    }

    thread _unknown_26D0( var_8, var_3 );

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
    var_6 = _func_071( var_1._ID740, var_1._ID65, var_5 );
    var_7 = _func_072( var_1._ID740, var_1._ID65, var_5 ) - var_0._ID65;
    var_8 = _func_1A5();
    var_8._ID65 = var_1._ID65 - var_7;
    var_9 = var_6 - var_0._ID740;
    var_10 = var_1._ID740 - var_6;
    var_11 = var_10[0] * _func_0BC( var_7[1] ) - var_10[1] * _func_0BB( var_7[1] );
    var_12 = var_10[0] * _func_0BB( var_7[1] ) + var_10[1] * _func_0BC( var_7[1] );
    var_13 = var_10 - ( var_11, var_12, var_10[2] );
    var_8._ID740 = var_1._ID740 - var_9 + var_13;
    var_4 _meth_805A();
    var_8 _ID42259::_ID3018( var_4, var_3 );
    var_0 _meth_8328( 1, 500 );
    var_0 _meth_8122( 0 );
    thread _unknown_289A();
    var_4 thread _unknown_2746();
    var_0 _meth_8087( var_4, "tag_player", 0.5, 0.25, 0.25 );
    var_14 = "single anim";
    var_4 _meth_8148( var_14, var_8._ID740, var_8._ID65, var_5 );
    var_15 = _func_069( var_5, "start_roof_collapse" );
    var_16 = _func_067( var_5 ) * var_15[0];
    var_4 thread _ID42259::_ID46811( undefined, var_8, var_1, var_16 );
    wait 0.5;
    var_0 _meth_831B();
    var_0 _meth_8084( var_4, "tag_player", 1.0, 0, 0, 0, 0, 1 );
    var_4 _meth_8059();
    return var_4;
}

handle_player_big_jump_notetrack()
{
    for (;;)
    {
        self waittill( "single anim",  var_0  );

        if ( _func_02F( var_0 ) )
        {
            var_1 = _func_127( var_0, 0, 3 );

            if ( var_1 == "ps_" )
            {
                var_2 = _func_127( var_0, 3 );
                self _meth_80A1( var_2 );
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
    level._ID794 _meth_80B4( "artillery_rumble" );
    wait 0.25;
    var_0 = _func_03D() + _unknown_3B1F( 0.4 );

    while ( _func_03D() < var_0 )
    {
        level._ID794 _meth_80B4( "damage_light" );
        wait 0.115;
    }

    wait 0.1;
    level._ID794 _meth_80B4( "artillery_rumble" );
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
    var_0 = _func_1A1( "trig_roofrun_playerjump_falltrig", "targetname" );
    var_0 waittill( "trigger" );
    var_0 _meth_80B7();
    _ID42237::_ID14402( "player_fell_normally" );
    var_1 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_1 _meth_808B( 0.2 );
    var_1._ID55 = 1.0;
    _ID42475::_ID34575( "start_player_normal_fall" );
    thread _unknown_2926();
    var_1 _ID42237::_ID10192( 2.0, ::_meth_808F );
}

_ID43385( var_0, var_1 )
{
    var_2 = _func_1A1( "vista_end", "targetname" );
    var_3 = _func_1A2( "vista_end_water", "targetname" );
    var_3 = _ID42237::_ID3293( var_3, var_2 );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 _meth_8059();
    }

    var_clear_2
    var_clear_0
    var_7 = _func_1A1( "sky_favela_escape", "targetname" );
    var_7 _meth_80B7();
    _ID42234::_ID13611( "cloud_mountain_vista_favela_s" );
    _ID42234::_ID13611( "cloud_mountain_vista_02_favela_s" );
    _ID42234::_ID13611( "mist_ocean_vista_02_favela_s" );
    _ID42234::_ID13611( "mist_ocean_vista_favela_s" );
    level._ID794 _meth_832A();

    if ( _func_02F( var_0 ) )
        var_0 waittillmatch( "single anim",  "blackout"  );
    else
    {
        level._ID794 _meth_80F6();

        while ( !level._ID794 _meth_834C() )
            wait 0.05;

        _ID42407::_ID24584();
        level._ID794 _meth_8334( 1 );
        level._ID794 _meth_80F7();
    }

    level._ID794 _meth_80B5( "artillery_rumble" );
    level._ID794 _ID42237::_ID10192( 1, ::_meth_80B6, "artillery_rumble" );
    var_8 = 6.5;
    thread _unknown_2E40( var_8 );
    thread _unknown_2E38( var_8 );
    var_9 = "favela_escape_player_recovery";
    level._ID794 _meth_818E( var_9, var_8 + 0.1 );

    if ( !_func_02F( var_1 ) )
        var_1 = _func_0C8( "big_jump_node", "targetname" );

    _func_0DB( "objectiveHide", 1 );
    level thread _unknown_2097();
    var_10 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_10 _meth_808B( 0.1 );
    var_10._ID55 = 1;
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_8189( "stand" );
    _ID42237::_ID14402( "player_recovery_blackscreen" );
    level._ID794 _meth_831B();
    var_11 = "player_bigjump";
    var_12 = "recover";
    var_13 = level._ID30895[var_11][var_12];
    var_14 = _func_071( var_1._ID740, var_1._ID65, var_13 );
    var_15 = _func_072( var_1._ID740, var_1._ID65, var_13 );

    if ( !_func_02F( var_0 ) )
    {
        var_0 = _ID42407::_ID35028( "player_bigjump", var_14 );
        var_0._ID65 = var_15;
        level._ID794 _meth_8087( var_0, "tag_player", 0.05 );
    }

    var_16 = level._ID49912;

    for ( var_18 = _func_1DA( var_16 ); _func_02F( var_18 ); var_18 = _func_1BF( var_16, var_18 ) )
    {
        var_17 = var_16[var_18];
        var_17 notify( "stop_loop" );

        if ( _func_02F( var_17._ID54091 ) )
            var_17._ID54091 notify( "stop_loop" );
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID10226( 0.05, ::_unknown_3A37 );
    var_19 = _ID42407::_ID16053( "veh_chopper_roofrun", "targetname" );

    if ( _func_02F( var_19 ) )
        var_19 _meth_80B7();

    thread maps\favela_escape_lighting::_ID50564( "favela_escape_playerfall_recovery" );
    wait(var_8);
    _ID42237::_ID14402( "player_bigjump_done" );
    var_1 thread _ID42259::_ID3111( var_0, var_12 );
    var_20 = _func_067( level._ID30895["player_bigjump"]["recover"] );
    thread _unknown_2C26( var_20 );
    thread _unknown_2F45( var_20, var_9 );
    thread _unknown_2CBA( level._ID27625 );
    wait 0.3;
    _func_032( "ui_consciousness_init", 1 );
    _func_0DB( "ui_consciousnessVignetteDarkness", 0.5 );
    _func_032( "ui_consciousness_play", 1 );
    _ID42407::_ID10226( var_20 - 2, ::_unknown_2D71 );
    wait 0.25;
    var_10 _meth_808B( 0.5 );
    var_10._ID55 = 0;
    var_0 waittillmatch( "single anim",  "end"  );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
    thread maps\favela_escape_lighting::_ID50564( "favela_escape" );
    _ID42237::_ID14402( "player_recovery_done" );
    _ID42475::_ID34575( "start_player_recovery_done" );
    var_10 _meth_808F();
    level._ID794 _meth_8055();
    level._ID794 _meth_8334( 0 );
    var_0 _meth_80B7();
    _func_0DB( "compass", 1 );
    _func_0DB( "hud_showStance", 1 );
}

_ID48252( var_0 )
{
    var_1 = var_0 * 0.75;
    wait(var_1);
    _ID42237::_ID14402( "solorun_objective_display" );
    _func_0DB( "objectiveHide", 0 );
}

_ID46062()
{
    _func_0DB( "cg_fov", 30 );
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
    var_0 _ID54167::_ID48800( 1.05 ) _ID54167::_ID47198( 0.25, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.4 );
    var_0 _ID54167::_ID48800( 1.8 ) _ID54167::_ID47198( 0.25, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID47198( 0.08, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
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
    var_1 _ID54167::_ID48800( 2.2 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 2.6 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_1 _ID54167::_ID48800( 8.55 ) _ID54167::_ID47198( 0.06, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 11.6 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48166();
}

_ID46642()
{
    _func_087( "bigjump_recovery", &"AUTOSAVE_AUTOSAVE" );
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
        var_13 = _unknown_31B7( var_0 );
        var_14 = var_5;
        var_15 = var_8;

        if ( var_13 > var_3 )
        {
            var_14 = var_6;
            var_15 = var_9;
        }
        else
        {
            var_16 = _unknown_31E4( var_13, var_1, var_2 );
            var_17 = var_5 - var_4;
            var_18 = var_17 * 1 - var_16;
            var_14 = var_5 - var_18;
            var_19 = var_8 - var_7;
            var_20 = var_19 * 1 - var_16;
            var_15 = var_8 - var_20;

            if ( var_13 >= var_2 )
            {

            }
            else if ( var_13 <= var_1 )
            {

            }
        }

        _ID42407::_ID27683( var_14, var_10 );
        _unknown_3230( var_15, var_10 );
        wait(var_10);
    }
}

_ID51883( var_0 )
{
    var_1 = level._ID794._ID740;
    var_2 = var_0._ID740 + _func_11E( var_0._ID65 ) * -5000;
    var_3 = var_0._ID740 + _func_11E( var_0._ID65 ) * 5000;
    var_4 = _func_0F2( var_2, var_3, var_1 );
    return _func_0F3( var_1, var_4 );
}

_ID47387( var_0, var_1, var_2 )
{
    if ( var_0 >= var_2 )
        return 1.0;

    if ( var_0 <= var_1 )
        return 0.0;

    var_3 = var_0 - var_1 / var_2 - var_1;
    var_3 = _func_0EE( var_3, 0.0, 1.0 );
    return var_3;
}

_ID49651( var_0, var_1 )
{
    var_2 = _func_03B( "player_sprintSpeedScale" );

    if ( _func_02F( var_1 ) )
    {
        var_3 = var_0 - var_2;
        var_4 = 0.05;
        var_5 = var_1 / var_4;
        var_6 = var_3 / var_5;

        while ( _func_0C3( var_0 - var_2 ) > _func_0C3( var_6 * 1.1 ) )
        {
            var_2 += var_6;
            _func_0DB( "player_sprintSpeedScale", var_2 );
            wait(var_4);
        }
    }

    _func_0DB( "player_sprintSpeedScale", var_0 );
}

_ID46474( var_0 )
{
    self endon( "death" );
    _ID42407::_ID13027( "roofrun_start" );

    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    _ID42407::_ID32328( "freerunnerA_run" );

    if ( !var_0 )
    {
        var_1 = _ID42237::_ID16638( "roofrun_jump1", "targetname" );
        var_2 = "freerunnerA_sideslope";
        var_1 _ID42259::_ID3074( self, var_2 );
        var_1 _ID42259::_ID3110( self, var_2 );
        _unknown_340F();
        var_3 = _ID42237::_ID16638( "roofrun_sarge_waitforplayer", "targetname" );
        self _meth_81B2( var_3._ID740 );
        self waittill( "goal" );
    }
    else
        _unknown_3432();

    _ID42237::_ID14413( "player_near_bigjump" );
    thread _unknown_44A4( 0, "heli_loop", 5 );
    var_1 = _func_0C8( "big_jump_node", "targetname" );
    var_2 = "favela_escape_bigjump_soap";
    self._ID7._ID50527 = 8;
    var_1 _ID42259::_ID3074( self, var_2 );
    self._ID7._ID50527 = undefined;
    self _meth_81AF( 0 );

    if ( !_ID42237::_ID14385( "roofrun_player_bigjump_start" ) )
    {
        _ID42237::_ID14402( "roofrun_sarge_bigjumped" );
        var_1 _ID42259::_ID3111( self, var_2 );
        self _meth_81B2( self._ID740 );

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
    var_3 = _func_1A1( "smodel_roofrun_sheet_right", "targetname" );
    thread _unknown_34BC( var_1, var_3, var_2 );
    _ID42407::_ID13027( "roofrun_start" );

    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    _ID42407::_ID32328( "freerunnerB_run" );

    if ( !var_0 )
    {
        var_2 = "freerunnerB_mid";
        var_1 _ID42259::_ID3074( self, var_2 );
        var_1 _ID42259::_ID3110( self, var_2 );
    }

    _unknown_3509();
    var_1 = _func_0C8( "big_jump_node", "targetname" );
    var_2 = "favela_escape_bigjump_ghost";

    if ( !var_0 )
    {
        self._ID7._ID50527 = 8;
        var_1 _ID42259::_ID3074( self, var_2 );
        self._ID7._ID50527 = undefined;
    }

    self _meth_81AF( 0 );
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
    var_3 = _func_1A1( "smodel_roofrun_sheet_left", "targetname" );
    thread _unknown_3563( var_1, var_3, var_2 );
    _ID42407::_ID13027( "roofrun_start" );

    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    _ID42407::_ID32328( "freerunnerA_run" );

    if ( !var_0 )
    {
        var_2 = "freerunnerA_left";
        var_1 _ID42259::_ID3074( self, var_2 );
        var_1 _ID42259::_ID3110( self, var_2 );
    }

    _unknown_35B0();
    var_1 = _func_0C8( "big_jump_node", "targetname" );
    var_2 = "favela_escape_bigjump_faust";

    if ( !var_0 )
    {
        self._ID7._ID50527 = 8;
        var_1 _ID42259::_ID3074( self, var_2 );
        self._ID7._ID50527 = undefined;
    }

    self _meth_81AF( 0 );
    var_1 _ID42259::_ID3110( self, var_2 );
    self._ID54091 = var_1;
    var_2 = "favela_escape_bigjump_faust_loop";
    var_1 thread _ID42259::_ID3044( self, var_2, "stop_loop" );
    level._ID51544++;
}

_ID49226( var_0, var_1, var_2 )
{
    var_3 = _ID42407::_ID35028( "laundry", var_1._ID740 );
    var_3._ID65 = var_1._ID65;
    var_1 _meth_80B7();
    var_0 thread _ID42259::_ID3018( var_3, var_2 );
    self waittillmatch( "single anim",  "start_laundry"  );
    var_0 _ID42259::_ID3111( var_3, var_2 );
}

_ID45772()
{
    _unknown_3635();
    self waittill( "roofrun_reset" );
    _unknown_4177();
    self _meth_81B2( self._ID740 );
    _unknown_366C();
}

_ID52465()
{
    self _meth_81AF( 1 );
    _ID42407::_ID10896();
    self._ID304 = 1;
    self._ID10998 = 1;
    self._ID11025 = 1;
    self._ID1258 = 0;
    _unknown_41B6();
    _unknown_419E( 32 );
    _unknown_4193( 1 );

    if ( !_func_02F( self._ID43795 ) )
        self._ID50447 = self._ID1299;

    self._ID1299 = 0;

    if ( !_func_02F( self._ID43795 ) )
        self._ID53974 = self._ID628;

    self._ID628 = 0;

    if ( !_func_02F( self._ID43795 ) )
        self._ID52067 = self._ID764;

    self._ID764 = 0;

    if ( !_func_02F( self._ID43795 ) )
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
    self _meth_81AF( 0 );
    self._ID304 = 0;
    self._ID10998 = 0;
    self._ID11025 = 0;
    self._ID1258 = 1;
    self._ID1299 = self._ID50447;
    _unknown_423A();
    _unknown_4219();
    self._ID628 = self._ID53974;
    self._ID764 = self._ID52067;
    self._ID3189 = self._ID49555;
}

_ID49536( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 0.965;

    if ( !_func_02F( var_3 ) )
        var_3 = 1;

    if ( !level._ID794 _meth_80B0( var_0 ) )
        return 0;

    if ( level._ID794 _meth_8188() != "stand" )
        return 0;

    if ( var_3 && level._ID794 _meth_834C() )
        return 0;

    var_4 = level._ID794 _meth_8346();
    var_4 = ( 0, var_4[1], 0 );
    var_5 = _func_11F( var_4 );
    var_6 = _func_0FB( var_5, var_1 );

    if ( var_6 < var_2 )
        return 0;

    var_7 = level._ID794 _meth_8344();
    var_8 = _func_0F3( ( var_7[0], var_7[1], 0 ), ( 0, 0, 0 ) );

    if ( var_8 < 162 )
        return 0;

    return 1;
}

_ID46333( var_0, var_1 )
{
    var_2 = "breakaway";
    var_0 waittillmatch( "single anim",  "start_roof_collapse"  );
    level._ID54453._ID43571 _meth_805A();
    level._ID54453._ID700 _ID42259::_ID3111( level._ID54453._ID29975, var_2 );
}

_ID50100( var_0 )
{
    var_1 = _unknown_382A();
    var_2 = _ID42407::_ID35028( "roof_rig" );
    var_3 = "breakaway";
    var_4 = level._ID30895[var_2._ID3189][var_3];
    var_2._ID740 = _func_071( var_0._ID740, var_0._ID65, var_4 );
    var_2._ID65 = _func_072( var_0._ID740, var_0._ID65, var_4 );
    var_1 _meth_8053( var_2 );
    level._ID54453 = _func_1A5();
    level._ID54453._ID700 = var_0;
    level._ID54453._ID29975 = var_2;
    level._ID54453._ID43571 = var_1;
}

_ID46414()
{
    var_0 = _func_1A2( "roof_fall", "targetname" );
    var_1 = undefined;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3._ID172 == "script_brushmodel" )
        {
            var_1 = var_3;
            break;
        }
    }

    var_clear_2
    var_clear_0
    var_0 = _ID42237::_ID3321( var_0, var_1 );
    var_5 = var_0;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        var_3 _meth_8053( var_1 );
        var_3 _meth_805A();
    }

    var_clear_1
    var_clear_0
    return var_1;
}

_ID49750( var_0 )
{
    wait 0.3;
    level._ID794 _meth_8087( var_0, "tag_player", 0.6, 0.2, 0.4 );
}

_ID53615( var_0, var_1 )
{
    var_2 = var_0 * 0.75;
    var_3 = _func_03D() + _unknown_47E2( var_2 );
    level._ID794 _meth_818E( var_1, var_2 + 1.5 );
}

_ID54323( var_0 )
{
    var_1 = 1.5;
    var_2 = _func_03D() + _unknown_47FE( var_0 );

    while ( _func_03D() < var_2 )
    {
        _ID42237::_ID27077( "breathing_heartbeat", level._ID794._ID740 );

        if ( _func_03D() < var_2 )
            wait(var_1);
    }

    var_1 = 1;
    _ID42237::_ID27077( "breathing_hurt_start", level._ID794._ID740, 1 );
    wait(var_1);
    var_3 = 0;

    while ( !_ID42237::_ID14385( "player_recovery_done" ) )
    {
        var_4 = "breathing_hurt";

        if ( var_3 % 2 != 0 )
            var_4 = "breathing_heartbeat";

        _ID42237::_ID27077( var_4, level._ID794._ID740, 1 );
        var_3++;
        wait(var_1);
    }

    _ID42237::_ID27077( "breathing_better", level._ID794._ID740, 1 );
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
    if ( _func_02F( var_0 ) )
        wait(var_0);

    thread _unknown_2CAF();
    thread _unknown_2CC0();
    thread _unknown_3AB5();
    _ID42407::_ID10226( 3.5, ::_unknown_3A60 );
    _ID42407::_ID10226( 7.75, ::_unknown_3A9A );
}

_ID53155()
{
    wait 1;
    var_0 = _ID42237::_ID16638( "struct_mob_roof_2", "targetname" );
    var_1 = _ID42237::_ID16638( "struct_mob_roof_1", "targetname" );
    var_2 = _ID42237::_ID16638( "struct_mob_roof_3", "targetname" );
    var_3 = _func_1A2( "spawner_mob_left_roof", "targetname" );
    var_4 = _unknown_42EB( var_3, 1, 0 );
    var_4[0]._ID3196 = var_0;
    var_4[0]._ID3183 = "favela_escape_rooftop_mob1";
    var_4[1]._ID3196 = var_0;
    var_4[1]._ID3183 = "favela_escape_rooftop_mob2";
    var_4[2]._ID3196 = var_2;
    var_4[2]._ID3183 = "favela_escape_rooftop_mob4";
    var_4[3]._ID3196 = var_1;
    var_4[3]._ID3183 = "favela_escape_rooftop_mob3";
    _ID42237::_ID3350( var_4, ::_unknown_3B89 );
}

_ID52879()
{
    var_0 = _func_1A1( "animref_mob_left", "targetname" );
    var_1 = _func_1A2( "spawner_mob_left", "targetname" );
    var_2 = [];
    var_2[var_2.size] = "mob_left_A";
    var_2[var_2.size] = "mob_left_B";
    var_2[var_2.size] = "mob_left_C";
    var_2[var_2.size] = "mob_left_D";
    var_3 = _unknown_4377( var_1, 1, 0 );
    var_4 = var_3;

    for ( var_8 = _func_1DA( var_4 ); _func_02F( var_8 ); var_8 = _func_1BF( var_4, var_8 ) )
    {
        var_5 = var_4[var_8];
        var_5._ID507 = 1;
        var_5._ID511 = 1;
        var_6 = var_2[var_8];
        var_7 = level._ID30895["generic"][var_6];
        var_0 thread _ID42259::_ID3024( var_5, var_6 );
        var_5 thread _unknown_3C0F( var_7, var_0 );
    }

    var_clear_4
}

_ID43191()
{
    var_0 = _func_1A1( "animref_mob_right", "targetname" );
    var_1 = _func_1A2( "spawner_mob_right", "targetname" );
    var_2 = [];
    var_2[var_2.size] = "mob2_arc_A";
    var_2[var_2.size] = "mob2_arc_B";
    var_2[var_2.size] = "mob3_arc_C";
    var_2[var_2.size] = "mob2_arc_D";
    var_2[var_2.size] = "mob2_arc_E";
    var_2[var_2.size] = "mob2_arc_F";
    var_2[var_2.size] = "mob2_arc_G";
    var_2[var_2.size] = "mob2_arc_H";
    var_3 = _unknown_4414( var_1, 1, 0 );
    var_4 = var_3;

    for ( var_8 = _func_1DA( var_4 ); _func_02F( var_8 ); var_8 = _func_1BF( var_4, var_8 ) )
    {
        var_5 = var_4[var_8];
        var_5._ID507 = 1;
        var_5._ID511 = 1;
        var_6 = var_2[var_8];
        var_7 = level._ID30895["generic"][var_6];
        var_0 thread _ID42259::_ID3024( var_5, var_6 );
        var_5 thread _unknown_3CAC( var_7, var_0 );
    }

    var_clear_4
}

_ID43836()
{
    self._ID507 = 1;
    self._ID511 = 1;
    self._ID3196 _ID42259::_ID3020( self, self._ID3183 );
    self _meth_81B2( self._ID740 );
}

_ID48932( var_0, var_1 )
{
    var_2 = _func_067( var_0 );
    var_3 = _func_03D() + _unknown_4A9C( var_2 );
    level _ID42237::_ID41078( var_2, "solorun_mob_start_shooting" );

    if ( _func_03D() < var_3 )
        self _meth_814B();

    if ( !_ID42237::_ID14385( "solorun_mob_start_shooting" ) )
    {
        _ID42407::_ID32328( "intro_casual_walk", 1 );
        self._ID45793 = 1;
    }

    self._ID452 = 512;
    self _meth_81B3( level._ID794 );
    _ID42237::_ID14413( "solorun_mob_start_shooting" );
    self notify( "stop_animmode" );

    if ( _func_02F( self._ID45793 ) )
        _ID42407::_ID7892();

    self._ID507 = 0;
}

_ID43280()
{
    if ( !_func_02F( level._ID47533 ) )
        level._ID47533 = [];

    level._ID47533[level._ID47533.size] = self;
    _ID42407::_ID32328( "chase_run", 0, 0 );
}

_ID49927()
{
    _ID42237::_ID14413( "solorun_player_off_balcony" );

    if ( !_func_02F( level._ID47533 ) )
        return;

    level._ID47533 = _ID42407::_ID3328( level._ID47533 );
    level._ID47533 = _ID42237::_ID3332( level._ID47533 );
    _ID42237::_ID3350( level._ID47533, ::_unknown_3DD0 );
}

_ID51747()
{
    self endon( "death" );
    level._ID794 endon( "death" );

    for (;;)
    {
        var_0 = level._ID794 _meth_8346();
        var_1 = _func_11F( var_0 );
        var_2 = _func_119( self._ID740 - level._ID794 _meth_80AF() );
        var_3 = _func_11A( var_2 );
        var_4 = _func_11F( var_3 );
        var_5 = _func_0FB( var_1, var_4 );

        if ( var_5 > 0.75 || _ID42237::_ID14385( "solorun_player_progression_stalled" ) )
        {
            if ( _func_02F( self._ID11575 ) )
                self._ID11575 = undefined;
        }
        else if ( !_func_02F( self._ID11575 ) )
            self._ID11575 = 1;

        wait 0.05;
    }
}

_ID54328()
{
    self endon( "death" );

    while ( _ID42407::_ID27291( self ) )
        wait 0.1;

    self _meth_80B7();
}

_ID50014()
{
    var_0 = _func_03A( "timer_off" );

    if ( _func_02F( var_0 ) && var_0 > 0 )
        return;

    _ID42237::_ID14413( "solorun_timer_start" );
    var_1 = 30;
    var_2 = &"FAVELA_ESCAPE_CHOPPER_TIMER";
    thread _unknown_3EA0( var_1 );
    thread _unknown_3EBB( var_1, var_2, 1 );
    thread _unknown_3EB5( var_1, var_2 );
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
    level thread _unknown_3F33();
}

_ID45194()
{
    var_0 = &"FAVELA_ESCAPE_CHOPPER_TIMER_EXPIRED";
    level._ID794 endon( "death" );
    level endon( "kill_timer" );
    level notify( "mission failed" );
    level._ID794 _meth_8334( 1 );
    _func_034( "ui_deadquote", var_0 );
    _ID42407::_ID23778();
}

_ID53296( var_0 )
{
    level endon( "solorun_player_off_balcony" );
    thread _ID42407::_ID28864( "favesc_cmt_runforit" );
    var_1 = -6074;
    var_2 = 900;
    var_3 = _func_1A1( "trig_solorun_start_playersafezone", "targetname" );
    var_4 = level._ID794._ID626;
    thread _unknown_3FD7( var_0 );
    thread _unknown_3FE2( var_3 );

    for (;;)
    {
        if ( _unknown_3FD7( var_1, var_3, "solorun_mob_start_shooting" ) )
        {
            var_5 = level._ID794._ID740;
            var_6 = _func_0DE( "axis" );

            if ( var_6.size )
            {
                var_7 = _unknown_4D03( var_6 );
                var_5 = var_7._ID740;
            }

            level._ID794 _meth_8057( var_4 * 0.25, var_5 );

            if ( !_ID42237::_ID14385( "solorun_mob_start_shooting" ) )
                _ID42237::_ID14402( "solorun_mob_start_shooting" );
        }

        wait 0.5;
    }
}

_ID53342( var_0, var_1, var_2 )
{
    if ( level._ID794._ID740[0] < var_0 && !level._ID794 _meth_80B0( var_1 ) )
        return 1;

    if ( level._ID794 _meth_80B0( var_1 ) && _ID42237::_ID14385( var_2 ) )
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

        if ( _func_1B3( var_1 ) )
            break;

        wait 0.05;
    }

    while ( level._ID794 _meth_80B0( var_0 ) )
        wait 0.05;

    _ID42237::_ID14402( "solorun_mob_start_shooting" );
}

_ID43129()
{
    var_0 = _func_1A1( "trig_solorun_civilian_doorshut", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = _ID42237::_ID16638( "struct_solorun_civilian_doorshut_animref", "targetname" );
    var_3 = _ID42407::_ID35028( "civ_door" );
    var_4 = var_1 _ID42407::_ID35014();
    var_4._ID3189 = "default_civilian";
    var_4._ID511 = 1;
    var_4 _unknown_49B7();
    var_4 thread _ID42407::_ID22746( 1 );
    var_5[0] = var_3;
    var_5[1] = var_4;
    var_2 thread _ID42259::_ID3040( var_5, "run_and_slam_idle", "stop_loop" );
    var_0 waittill( "trigger" );
    var_3 notify( "stop_loop" );
    var_4 notify( "stop_loop" );
    var_2 _ID42259::_ID3099( var_5, "run_and_slam" );
    var_4 _meth_81B2( var_4._ID740 );
    var_4 thread _ID42259::_ID3044( var_4, "run_and_slam_endidle", "stop_loop" );
    _ID42237::_ID14413( "solorun_player_at_balcony" );
    var_4 _ID42407::_ID36519();
    var_4 notify( "stop_loop" );
    wait 0.05;
    var_4 _meth_80B7();
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
    level notify( "glass_break",  level._ID794  );
    level._ID794 _meth_80B4( "artillery_rumble" );
    thread _ID42237::_ID27077( "scn_favela_escape_player_window", level._ID794._ID740 );
    _ID42234::_ID13611( "window_glass_interior_favela_s" );
    _ID42474::_ID4669( "interior_stone" );
}

_ID51326()
{
    _ID42407::_ID38929( "trig_end_glass_break" );
    var_0 = _func_0DE( "axis" );
    _ID42237::_ID3294( var_0, ::_meth_80B7 );
}

_ID49658()
{
    var_0 = 170;
    var_1 = 0;
    var_2 = 0;
    var_3 = _func_1A1( "trig_solorun_start_playersafezone", "targetname" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "solorun_player_outside_first_house" ) && !level._ID794 _meth_80B0( var_3 ) && !var_2 )
        {
            var_2 = 1;
            level._ID794._ID24923 = 1;
            _ID42407::_ID32255( ::_unknown_42BD );
        }
        else if ( !_ID42237::_ID14385( "solorun_player_outside_first_house" ) || level._ID794 _meth_80B0( var_3 ) && var_2 )
        {
            var_2 = 0;
            level._ID794._ID24923 = undefined;
            _ID42407::_ID32255( ::_unknown_4363 );
        }

        var_4 = level._ID794 _meth_8344();
        var_5 = _func_0F3( ( var_4[0], var_4[1], 0 ), ( 0, 0, 0 ) );

        if ( var_5 >= var_0 && !var_1 )
        {
            var_1 = 1;
            _ID42407::_ID32255( ::_unknown_43F7 );
        }
        else if ( var_5 < var_0 && var_1 )
        {
            var_1 = 0;
            _ID42407::_ID32255( ::_unknown_4433 );
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
    var_0 = _func_1A2( "trig_solorun_roof_progression", "targetname" );
    level._ID53417 = 0;
    thread _unknown_4850();
    var_1 = 1;
    var_2 = 1;

    for (;;)
    {
        var_3 = var_0;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( level._ID794 _meth_80B0( var_4 ) )
            {
                if ( var_4._ID31103 > var_1 )
                {
                    if ( level._ID53417 >= var_2 )
                        level._ID53417 = 0;

                    level._ID53417++;
                }
                else if ( var_4._ID31103 < var_1 )
                    level._ID53417--;

                while ( level._ID794 _meth_80B0( var_4 ) )
                    wait 0.05;

                var_1 = var_4._ID31103;
                break;
            }
        }

        var_clear_2
        var_clear_0
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
    level thread _unknown_4964( var_0 );

    while ( level._ID794._ID486 > level._ID794._ID626 * 0.9 && !_ID42237::_ID14385( var_0 ) )
        wait 0.1;

    if ( !_ID42237::_ID14385( var_0 ) )
        level thread _unknown_4973( var_0 );
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

    while ( !_ID42237::_ID14385( var_0 ) && level._ID794._ID486 > 0 )
        wait 0.05;

    var_3 = 0.25;
    thread _ID42407::_ID18638( var_3 );
}

_ID44824( var_0 )
{
    _func_00E( var_0, "+breath_sprint" );
    _func_00E( var_0, "+sprint" );
    level._ID794 waittill( var_0 );
    _ID42237::_ID14402( var_0 );
}

_ID51547()
{
    thread _unknown_4A29();
    var_0 = _func_1A2( "solorun_dmgtrig", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_4A63 );
    var_1 = _func_1A2( "trig_solorun_squibs", "targetname" );
    _ID42237::_ID3350( var_1, ::_unknown_4A7D );
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
        var_8 = _unknown_5507( var_6 );
        var_9 = _func_0B9( var_2, var_3 );

        for ( var_10 = 0; var_10 < var_9; var_10++ )
        {
            var_11 = level._ID794 _meth_80AF();

            if ( _func_02F( level._ID47533 ) )
            {
                var_12 = _unknown_5528( level._ID47533 );
                var_12 thread _ID42407::_ID27079( var_7[var_8] );
            }

            if ( _ID42237::_ID8201() )
                thread _ID42237::_ID27077( "h2_solorun_whizby_near", var_11 );

            wait(_func_0BA( var_0, var_1 ));
        }

        wait(_func_0BA( var_4, var_5 ));
    }
}

_ID53519()
{
    self waittill( "trigger" );
    _func_18F( self._ID740, 32, 1000, 1000 );
}

_ID47945()
{
    self waittill( "trigger" );
    var_0 = level._ID52504;
    var_1 = _unknown_5577( var_0 );
    var_2 = _ID42237::_ID16299( "squib_plaster" );
    var_3 = 0.07;
    var_4 = 0.1;
    var_5 = _ID42237::_ID16640( self._ID1191, "targetname" );

    if ( _func_02F( var_5[0]._ID1191 ) )
        var_5 = _unknown_4B87( var_5[0] );
    else
        var_5 = _ID42237::_ID3320( var_5 );

    var_5[0] _ID42407::_ID916();
    var_6 = var_5;

    for ( var_11 = _func_1DA( var_6 ); _func_02F( var_11 ); var_11 = _func_1BF( var_6, var_11 ) )
    {
        var_7 = var_6[var_11];
        var_8 = _func_11F( var_7._ID65 );
        var_9 = var_8 * 1024;
        var_10 = var_7._ID740 + var_9;
        _func_1C8( var_1, var_7._ID740, var_10 );

        if ( _ID42237::_ID8201() )
            thread _ID42237::_ID27077( "h2_solorun_whizby_near", level._ID794._ID740 );

        wait(_func_0BA( var_3, var_4 ));
    }

    var_clear_5
    var_clear_0
}

_ID52328( var_0 )
{
    var_1 = [];
    var_1[0] = var_0;

    for ( var_2 = var_0; _func_02F( var_2._ID1191 ); var_2 = var_3 )
    {
        var_3 = _ID42237::_ID16638( var_2._ID1191, "targetname" );

        if ( !_func_02F( var_3 ) )
            var_3 = _func_1A1( var_2._ID1191, "targetname" );

        if ( !_func_02F( var_3 ) )
            var_3 = _func_0C8( var_2._ID1191, "targetname" );

        if ( _func_02F( var_3 ) )
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
    var_0 = _ID42237::_ID16640( self._ID1191, "targetname" );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( _func_1B3( var_1 ) && !_ID42237::_ID14385( "whizby_location_updating" ) )
        {
            _ID42237::_ID14402( "whizby_location_updating" );
            level._ID51963 = var_0;

            while ( var_1 _meth_80B0( self ) )
                wait 0.1;

            _ID42237::_ID14388( "whizby_location_updating" );
        }

        wait 0.05;
    }
}

_ID46755()
{
    level._ID794 endon( "death" );
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
        var_11 = _unknown_5714( var_10 );
        var_12 = _func_0B9( var_8, var_9 );
        var_13 = _func_0DE( "axis" );
        var_14 = undefined;
        var_15 = var_13;

        for ( var_17 = _func_1DA( var_15 ); _func_02F( var_17 ); var_17 = _func_1BF( var_15, var_17 ) )
        {
            var_16 = var_15[var_17];

            if ( var_16 _meth_81CA( level._ID794 ) && !_ID42407::_ID27291( var_16 ) )
            {
                if ( !_func_02F( var_14 ) || _func_0F3( var_16._ID740, level._ID794._ID740 ) < _func_0F3( var_14._ID740, level._ID794._ID740 ) )
                    var_14 = var_16;
            }
        }

        var_clear_16
        var_clear_14

        if ( !_func_02F( var_14 ) )
        {
            wait 1;
            continue;
        }

        for ( var_18 = 0; var_18 < var_12; var_18++ )
        {
            if ( !_func_1A7( var_14 ) || _ID42407::_ID27291( var_14 ) )
            {
                wait 0.05;
                continue;
            }

            var_19 = var_14 _meth_80AF() + ( 0, 0, 32 );
            var_20 = level._ID794 _meth_80AF();
            var_21 = level._ID794._ID65;
            var_22 = _func_11F( var_21 );
            var_23 = var_20 + var_22 * 256;
            var_24 = var_23[2] + 256;
            var_25 = _ID42407::_ID17434( var_23 );
            var_26 = _unknown_4E7F( var_25[0], var_2, var_3 );
            var_27 = _unknown_4E8A( var_25[1], var_2, var_3 );
            var_28 = var_24;
            var_29 = _ID42407::_ID17434( ( var_26, var_27, var_28 ) );
            var_30 = _func_06D( var_19, var_29, 1 );
            var_31 = var_30["entity"];

            if ( _func_02F( var_31 ) )
            {
                if ( _func_1B3( var_31 ) )
                    continue;
            }

            _func_1C8( var_11, var_19, var_29 );
            wait(_func_0BA( var_4, var_5 ));
        }

        wait(_func_0BA( var_6, var_7 ));
    }
}

_ID47697( var_0, var_1, var_2 )
{
    var_3 = _func_0B9( var_1, var_2 );

    if ( _ID42237::_ID8201() )
        var_3 *= -1;

    var_4 = var_0 + var_3;
    return var_4;
}

_ID43973()
{
    _ID42407::_ID38929( "trig_balcony_chopper_spawn" );

    for ( var_0 = undefined; !_func_02F( var_0 ); var_0 = _ID42407::_ID16053( "solorun_balcony_chopper", "targetname" ) )
        wait 0.05;

    var_0 thread _ID42407::_ID27079( "scn_favela_escape_heli_flyover" );
    var_0 thread maps\favela_escape_aud::_ID44782();
    thread _unknown_5960( 0, "heli_loop", 5 );
}

_ID52477()
{
    var_0 = _func_1A2( "solorun_chopper_fakefire_trig", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_4F57 );
}

_ID51810()
{
    var_0 = _ID42237::_ID16640( self._ID1191, "targetname" );
    self waittill( "trigger" );
    _ID42237::_ID3350( var_0, ::_unknown_4275 );
    _ID42237::_ID3350( var_0, ::_unknown_4F86 );
}

_ID45568()
{
    if ( !_ID42407::_ID916() )
        wait(_func_0BA( 0.5, 1.2 ));

    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    _func_1C8( "rpg_straight_short_life", self._ID740, var_0._ID740 );
}

_ID49331()
{
    self._ID486 = 2000000;
    _func_1AB( self, 1150, 1200 );
    level._ID7499 = self;
}

_ID51456( var_0 )
{
    var_1 = "solorun_player_at_balcony";

    if ( !_func_02F( var_0 ) || var_0 )
        thread _unknown_5010( var_1 );

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
    level._ID794 endon( "death" );
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

        if ( _func_1B3( var_0 ) )
        {
            _func_034( "ui_deadquote", "@FAVELA_ESCAPE_DEADQUOTE_FAILED_CHOPPER_JUMP" );
            _ID42407::_ID23778();
        }

        wait 0.05;
    }
}

_ID44500( var_0 )
{
    if ( !_func_02F( var_0 ) || var_0 )
        _ID42237::_ID14413( "trig_solorun_player_on_slide" );

    thread _unknown_5A9E( 4, "heli_loop", 6 );
    var_1 = _func_1A1( "trig_slide_chopperjump_ledge", "targetname" );
    var_2 = _func_1A1( "killtrig_chopperjump", "script_noteworthy" );
    var_2 thread _unknown_50E9();
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
    var_15 = _ID42407::_ID35028( var_4, var_3._ID740 );
    var_15 _meth_805A();
    var_16 = _ID42407::_ID35028( var_5, var_3._ID740 );
    var_16._ID65 = var_3._ID65;
    _ID42411::_ID6220( var_16 _ID42407::_ID16120( "rotors" ), undefined, 0 );
    var_16 thread _ID42413::_ID3160();
    var_16 thread maps\favela_escape_aud::_ID50228();
    level._ID7499 = var_16;
    var_17 = _func_1A1( "chopperjump_sarge", "targetname" );
    var_18 = var_17 _ID42407::_ID35014();
    var_18._ID3189 = var_7;
    level._ID47826 = var_18;
    var_18 _meth_8053( var_16, var_8 );
    thread _unknown_53DD();
    var_19 = _ID42407::_ID35028( var_6, ( 0, 0, 0 ) );
    level._ID51492 = var_19;
    var_15 _meth_8053( var_16, var_9 );
    var_19 _meth_8053( var_16, var_9 );
    var_20 = [];
    var_20[0] = var_19;
    _func_051();
    thread _unknown_53A2( var_3, var_16, var_19, var_18, var_10, var_9, var_11, var_8 );
    var_21 = _func_1A1( "trig_player_chopperjump", "script_noteworthy" );
    var_22 = _func_11F( ( 0, 90, 0 ) );
    thread _unknown_53FC();
    var_23 = _ID42237::_ID16640( "struct_chopperjump_alt_lookspot", "targetname" );

    for (;;)
    {
        var_24 = 0;

        while ( level._ID794 _meth_80B0( var_21 ) )
        {
            _ID42237::_ID14413( "player_jumping" );

            if ( _unknown_53AA( var_21, var_19, var_23, 1 ) )
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
    thread _unknown_534C( var_15 );
    thread maps\favela_escape_lighting::_ID50564( "favela_escape_chopperjump" );
    var_2 _meth_80B7();
    var_1 _meth_80B7();
    var_16 notify( "stop_loop" );
    var_25 = _func_067( var_15 _ID42407::_ID16120( var_12 ) );
    level._ID794 _meth_830C( 0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    _func_0DB( "ui_hidemap", 1 );
    _func_0DB( "compass", 0 );
    _func_0DB( "hud_showStance", 0 );
    level._ID794 _meth_8328( 0, 500, 0.5 );
    var_26 = _func_071( var_16._ID740, var_16._ID65, var_14 );
    var_27 = _func_072( var_16._ID740, var_16._ID65, var_14 ) - level._ID794._ID65;
    var_28 = _func_1A5();
    var_28._ID65 = var_16._ID65 - var_27;
    var_29 = var_26 - level._ID794._ID740;
    var_30 = var_16._ID740 - var_26;
    var_31 = var_30[0] * _func_0BC( var_27[1] ) - var_30[1] * _func_0BB( var_27[1] );
    var_32 = var_30[0] * _func_0BB( var_27[1] ) + var_30[1] * _func_0BC( var_27[1] );
    var_33 = var_30 - ( var_31, var_32, var_30[2] );
    var_28._ID740 = var_16._ID740 - var_29 + var_33;
    thread _unknown_5D6B( var_15 );
    var_34 = "player_jump";
    var_35 = _func_069( var_14, "favela_escape_end_grab" );
    var_36 = _func_067( var_14 ) * var_35[0];
    var_37 = var_16 _ID42259::_ID15565( var_9, var_12 );
    var_38 = _ID42237::_ID35164();
    var_38._ID740 = var_37["origin"];
    var_38._ID65 = var_37["angles"];
    var_38 _ID42259::_ID3018( var_15, "chopperjump_jump" );
    var_15 _meth_8148( var_34, var_28._ID740, var_28._ID65, var_14 );
    var_15 thread _ID42259::_ID46811( undefined, var_28, var_38, var_36 );
    var_15 thread maps\favela_escape_aud::chopperjump_player_foley_sounds();
    var_16 thread _ID42259::_ID3099( var_20, var_12, var_9 );
    var_15 _ID42237::_ID10192( 0.5, ::_meth_8059 );
    _ID42407::_ID10226( 1, ::_unknown_5517 );
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
    var_1 _ID54167::_ID48800( 1.5 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 0.35, 0.15, 0.15, 5, 15, 5, 8 ) _ID54167::_ID43376( ::_meth_80AA, level._ID794, 50, 50, 20, 20 );
    var_1 _ID54167::_ID48800( 3.0 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 0.65, 0.2, 0.2, 0, 0, 0, 0 );
    var_1 _ID54167::_ID48800( 4.35 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 0.5, 0.2, 0.2, 10, 12, 8, 8 ) _ID54167::_ID43376( ::_meth_80AA, level._ID794, 50, 50, 20, 20 );
    var_1 _ID54167::_ID48800( 7.15 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 0.35, 0.15, 0.15, 0, 0, 0, 0 );
    var_1 _ID54167::_ID48800( 8.0 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 0.5, 0.2, 0.2, 5, 18, 8, 10 ) _ID54167::_ID43376( ::_meth_80AA, level._ID794, 50, 50, 20, 20 );
    var_1 _ID54167::_ID48166();
}

_ID52105()
{
    level._ID794 _meth_80B4( "artillery_rumble" );
    wait 0.5;

    while ( !_ID42237::_ID14385( "level_faded_to_black" ) )
    {
        level._ID794 _meth_80B4( "damage_light" );
        wait 0.115;
    }
}

_ID49291( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 1;

    if ( !var_0 _meth_80B0( level._ID794 ) )
        return 0;

    if ( level._ID794 _meth_8188() != "stand" )
        return 0;

    if ( var_3 && level._ID794 _meth_834C() )
        return 0;

    var_4 = 1;
    var_5 = var_1._ID740 + ( 0, 0, -85 );
    var_6 = _func_03A( "cg_fov" );

    if ( !level._ID794 _meth_8225( var_5, var_6, 120 ) )
        var_4 = 0;

    if ( !var_4 )
    {
        var_7 = 0;
        var_8 = var_2;

        for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
        {
            var_9 = var_8[var_10];

            if ( level._ID794 _meth_8225( var_9._ID740, var_6, 165 ) )
            {
                var_7 = 1;
                break;
            }
        }

        var_clear_2
        var_clear_0

        if ( var_7 )
            var_4 = 1;
    }

    if ( !var_4 )
        return 0;

    var_11 = level._ID794 _meth_8344();
    var_12 = _func_0F3( ( var_11[0], var_11[1], 0 ), ( 0, 0, 0 ) );

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

    _func_00E( "playerjump", "+gostand" );
    _func_00E( "playerjump", "+moveup" );

    for (;;)
    {
        level._ID794 waittill( "playerjump" );
        wait 0.1;

        if ( !level._ID794 _meth_83C0() )
            continue;

        if ( !level._ID794 _meth_834C() )
            _ID42237::_ID14402( var_0 );

        while ( !level._ID794 _meth_834C() )
            wait 0.05;

        _ID42237::_ID14388( var_0 );
    }
}

_ID53040( var_0 )
{
    wait 0.3;
    level._ID794 notify( "stop_sliding" );
    level._ID794 _meth_8572( var_0, "tag_player", 0.5, 0.6, 0.2, 0.4, 40, 40, 60, 20 );
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
    var_0 = _unknown_5CBF();
    var_1 = var_0[0];
    return var_1;
}

_ID44223()
{
    var_0 = _func_1A2( "color_friendly_spawner", "targetname" );
    level._ID43367 = var_0;
}

_ID49430()
{
    var_0 = _func_1A2( "enemy_cleanup_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_5A3D );
}

_ID46968()
{
    var_0 = "Enemy cleanup trigger at origin " + self._ID740 + " needs to target a volume.";
    var_1 = _func_1A2( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_2 = _func_0DE( "axis" );
    var_3 = var_2;

    for ( var_9 = _func_1DA( var_3 ); _func_02F( var_9 ); var_9 = _func_1BF( var_3, var_9 ) )
    {
        var_4 = var_3[var_9];
        var_5 = var_1;

        for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
        {
            var_6 = var_5[var_8];
            var_7 = 0;

            if ( var_4 _meth_80B0( var_6 ) )
            {
                var_7 = 1;
                var_4 _meth_80B7();
                break;
            }

            if ( var_7 )
                break;
        }

        var_clear_4
        var_clear_1
    }

    var_clear_6
    var_clear_0
    _ID42407::_ID3304( var_1 );
    self _meth_80B7();
}

_ID45848( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 10;

    if ( !_func_02F( var_1 ) )
        var_1 = 0.05;

    for ( var_2 = 0; var_2 < var_0; var_2++ )
    {
        if ( _func_02F( self._ID14795 ) && self._ID14795 > 0 )
            var_3 = self _meth_809B();
        else
            var_3 = self _meth_809A();

        if ( !_ID42407::_ID35060( var_3 ) )
            return var_3;

        wait(var_1);
    }

    return undefined;
}

_ID50606( var_0, var_1 )
{
    _unknown_5B62( var_0, var_1, 1 );
}

_ID35081( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    var_0 = _ID42237::_ID3320( var_0 );
    var_3 = [];
    var_4 = var_0;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];
        var_6 = var_5 _ID42407::_ID35014();
        var_3[var_3.size] = var_6;

        if ( var_2 )
        {
            if ( var_7 != var_0.size - 1 )
                wait(_func_0BA( 0.25, 1 ));
        }
    }

    var_clear_3

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

    var_7 = _func_11A( var_2 );
    var_8 = _func_11F( var_7 );
    var_9 = _func_11D( var_7 );
    var_10 = _func_11A( var_2 ) + ( 0, 180, 0 );
    var_11 = _func_11F( var_10 );
    _func_156( _ID42237::_ID16299( "headshot" ), var_3, var_8, var_9 );
    _func_156( _ID42237::_ID16299( "bodyshot" ), var_3, var_11, var_9 );
}

_ID44259( var_0, var_1, var_2, var_3 )
{
    var_0 = _ID42237::_ID3320( var_0 );
    var_4 = undefined;
    var_5 = var_0;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _func_02F( var_6._ID31388 ) && var_6._ID31388 == "kicker" )
        {
            var_4 = var_6;
            break;
        }
    }

    var_clear_2
    var_clear_0

    if ( !_func_02F( var_4 ) )
        var_4 = var_0[0];

    var_0 = _ID42237::_ID3321( var_0, var_4 );
    var_8 = var_4 _ID42407::_ID35014( 1 );
    var_8 thread _ID42407::_ID22746( 1 );

    if ( var_0.size )
        _ID42407::_ID10226( 0.15, ::_unknown_5C95, var_0 );

    var_9 = "door_kick_in";
    var_10 = "kick";

    if ( _func_02F( var_2._ID922 ) )
    {
        switch ( var_2._ID922 )
        {

        }

        endswitch( 3 )  case "fall" loc_5D61 case "search" loc_5D62 case "wave" loc_5D63
    }

    var_2 thread _ID42259::_ID3020( var_8, var_9 );
    var_8 waittillmatch( "single anim",  var_10  );
    thread _ID42237::_ID27077( "door_wood_double_kick", var_1._ID740 );
    var_1 thread _unknown_6211( 0.25, 1 );

    if ( _func_02F( var_3 ) )
        _func_185( var_3._ID740, var_3._ID851, var_3._ID851 / 2, 1.0 );

    var_8 _ID42407::_ID36519();
    var_8._ID49 = 1;
    var_8 waittillmatch( "single anim",  "end"  );

    if ( _func_1A7( var_8 ) )
    {
        if ( _func_02F( var_4._ID31400 ) && var_4._ID31400 > 0 )
        {
            var_8 _unknown_5F37();
            return;
        }

        if ( _func_02F( var_4._ID1191 ) )
        {
            var_11 = _func_0C8( var_4._ID1191, "targetname" );

            if ( _func_02F( var_11 ) )
            {
                var_8 _unknown_5F70( 96 );
                var_8 _meth_81B1( var_11 );
                var_8 _ID42237::_ID41123( "goal", 5 );

                if ( _func_1A7( var_8 ) )
                {
                    var_8 _unknown_5F8F();
                    return;
                }

                return;
            }

            return;
        }

        return;
        return;
        case "search":
        case "wave":
    }
}

_ID49951()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_1 = "favela_chaotic_above_through";

    if ( _func_02F( var_0._ID922 ) )
        var_1 = var_0._ID922;

    var_0 _ID42259::_ID3027( self, var_1 );
    self._ID49 = 1;
    var_0 _ID42259::_ID3020( self, var_1 );
}

_ID43131()
{
    self endon( "death" );
    _unknown_5EC8( "window_smash_stop_inside" );
    var_0 = _func_0C8( self._ID1191, "targetname" );

    if ( _func_02F( self._ID31400 ) && self._ID31400 )
        _unknown_5FD3();
    else if ( _func_02F( var_0 ) )
        self _meth_81B1( var_0 );
}

_ID45027( var_0 )
{
    self endon( "death" );
    var_1 = "window smash guy at origin " + self._ID740 + " needs to be targeting a script_struct that he can use as his animref.";
    var_2 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_2 _ID42259::_ID3027( self, var_0 );
    var_2 _ID42259::_ID3020( self, var_0 );
}

_ID46383( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    var_2 = _unknown_5F83();
    var_3 = _unknown_5F7B( var_2 );
    self waittill( "spawned",  var_4  );

    if ( _ID42407::_ID35060( var_4 ) )
        return;

    var_4 endon( "death" );
    var_4._ID3189 = "curtain_pull";
    var_4 _ID42407::_ID32353( 1 );
    var_4._ID1258 = 0;
    wait 0.05;
    var_5[0] = var_4;
    var_5[1] = var_3;
    var_2 _ID42259::_ID3074( var_4, "pulldown" );

    if ( var_0 )
    {
        var_2 _ID42259::_ID3018( var_4, "pulldown" );

        if ( _func_02F( var_1 ) )
            [[ var_1 ]]( var_4, var_2 );
        else
            _ID42407::_ID41135( 0.9, undefined, 1, 5.0 );
    }

    var_4._ID49 = 1;
    var_2 _ID42259::_ID3099( var_5, "pulldown" );
    var_4 endon( "death" );
    var_4 _ID42407::_ID32353( 0 );
    var_4._ID452 = 1000;
    var_4 _meth_81B2( var_4._ID740 );
    var_4._ID1258 = 1;
}

_ID44807( var_0 )
{
    if ( _func_02F( var_0._ID52385 ) )
        return var_0._ID52385;

    var_1 = _ID42407::_ID35028( "curtain" );
    var_0 thread _ID42259::_ID3018( var_1, "pulldown" );
    var_0._ID52385 = var_1;
    return var_0._ID52385;
}

_ID50948()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2._ID170 == "script_origin" )
            return var_2;
    }

    var_clear_2
    var_clear_0
}

_ID10742( var_0 )
{
    if ( !_func_02F( level._ID43919 ) )
        level._ID43919 = _func_1A5();

    level._ID43919 _ID42407::_ID15093( ::_unknown_60AD, self, var_0 );
}

_ID43731( var_0, var_1 )
{
    if ( _func_2A5( var_0 ) )
        return;

    var_0 _ID42407::_ID10805( var_1 );
}

_ID47316( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 3;

    var_2 = 0.5;
    level endon( "clearing_hints" );

    if ( _func_02F( level._ID48851 ) )
        level._ID48851 _ID42313::_ID10476();

    level._ID48851 = _ID42313::_ID9220( "default", 1.5 );
    level._ID48851 _ID42313::_ID32753( "BOTTOM", undefined, 0, -40 );
    level._ID48851._ID196 = ( 1, 1, 1 );
    level._ID48851 _meth_80D1( var_0 );
    level._ID48851._ID55 = 0;
    level._ID48851 _meth_808B( 0.5 );
    level._ID48851._ID55 = 1;
    level._ID48851._ID983 = 1;
    wait 0.5;
    level._ID48851 endon( "death" );
    wait(var_1);
    level._ID48851 _meth_808B( var_2 );
    level._ID48851._ID55 = 0;
    wait(var_2);
    level._ID48851 _ID42313::_ID10476();
}

_ID43297( var_0, var_1 )
{
    if ( !_func_0D3( var_1 ) )
    {
        var_2 = [];
        var_2[0] = var_1;
        var_1 = var_2;
    }

    var_3 = _func_06A( "script_origin", _unknown_665E( var_1 )._ID740 );
    var_3 _meth_80A1( var_0, "sound_done" );
    var_3 waittill( "sound_done" );
    var_3 _meth_80B7();
}

_ID10240()
{
    self waittill( "reached_path_end" );

    if ( _func_1A7( self ) )
    {
        _ID45456::_ID54623( self );
        self _meth_8058();
    }

    wait 0.1;

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID50353()
{
    self endon( "death" );
    _unknown_6270();
    _ID42237::_ID41098( "reached_path_end", "damage" );
    _unknown_628C();
}

_ID54540()
{
    self endon( "death" );
    _unknown_628A();
    self waittill( "reached_path_end" );
    _unknown_62A0();
}

_ID51433()
{
    self endon( "death" );
    _unknown_629E();

    for (;;)
    {
        var_0 = _ID42237::_ID41075( "reached_path_end", "damage" );

        if ( var_0 == "damage" )
        {
            _unknown_62C4();
            continue;
        }

        if ( var_0 == "reached_path_end" )
            break;
    }

    wait 0.1;

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID49916()
{
    self endon( "death" );
    self waittill( "reached_path_end" );
    _unknown_62B1();
}

_ID43767()
{
    self _meth_81B3( level._ID794 );
}

_ID43645( var_0 )
{
    self._ID3195 = var_0;
}

_ID52666( var_0 )
{
    self._ID1258 = var_0;
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
    self _meth_81B4( var_0 );
}

_ID46779()
{
    self _meth_81B7();
}

_ID44231( var_0 )
{
    self._ID486 = var_0;
}

_ID45776( var_0 )
{
    self._ID507 = var_0;
}

_ID44526( var_0 )
{
    self._ID511 = var_0;
}

_ID52680( var_0 )
{
    self._ID1299 = var_0;
}

_ID47402( var_0 )
{
    if ( !_func_02F( self._ID46327 ) )
        self._ID46327 = self._ID452;

    self._ID452 = var_0;
}

_ID47888()
{
    if ( _func_02F( self._ID46327 ) )
        self._ID452 = self._ID46327;
}

_ID50024( var_0 )
{
    self._ID47572 = self _meth_8184();
    self _meth_8183( var_0 );
}

_ID47280()
{
    self _meth_8183( self._ID47572 );
}

_ID45702()
{
    if ( !_func_02F( self._ID22746 ) || !self._ID22746 )
        thread _ID42407::_ID22746();
}

_ID43804()
{
    if ( _func_02F( self._ID22746 ) && self._ID22746 )
        thread _ID42407::_ID36519();
}

_ID19365()
{
    self._ID507 = 1;
    self._ID465 = 0;
    self._ID509 = 1;
    self._ID512 = 1;
    self._ID513 = 1;
    self._ID381 = 0;
    self._ID11002 = 1;
    _ID42407::_ID10949();
    self._ID25485 = self._ID686;
    self._ID686 = 0;
}

_ID47487()
{
    self._ID507 = 0;
    self._ID465 = 1;
    self._ID509 = 0;
    self._ID512 = 0;
    self._ID513 = 0;
    self._ID381 = 1;
    self._ID11002 = 0;
    _ID42407::_ID12508();

    if ( _func_02F( self._ID25485 ) )
        self._ID686 = self._ID25485;
}

_ID43103()
{
    self._ID465 = 0;
    self._ID509 = 1;
    self._ID512 = 1;
    self._ID513 = 1;
    self._ID11002 = 1;
    _ID42407::_ID10949();
    self _meth_81AF( 1 );
}

_ID47174( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID48671 = 0;
    }

    var_clear_2
    var_clear_0
}

_ID45924( var_0 )
{
    _unknown_641D();
    _unknown_6405( 32 );
    self _meth_81B1( var_0 );
    self waittill( "goal" );
    self._ID48671 = 1;
    _unknown_6441();
}

_ID46927( var_0 )
{
    for (;;)
    {
        var_1 = 0;
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _func_1A7( var_3 ) && !var_3._ID48671 )
            {
                var_1 = 1;
                break;
            }
        }

        var_clear_2
        var_clear_0

        if ( !var_1 )
            break;

        wait 0.05;
    }

    level notify( "group_at_scriptedgoal" );
}

_ID53294()
{
    var_0 = _func_0DE( "axis" );
    return _ID42407::_ID3328( var_0 );
}

_ID46434()
{
    var_0 = [];
    var_1 = level._ID49912;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2._ID52287 ) )
            var_0[var_0.size] = var_2;
    }

    var_clear_2
    var_clear_0
    return var_0;
}

_ID51461( var_0 )
{
    _ID42237::_ID14413( "friends_setup" );
    var_1 = _unknown_6521();

    if ( _func_02F( var_0 ) )
        var_1 = _ID42237::_ID3321( var_1, var_1[0] );

    _ID42407::_ID4917( "allies" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        level._ID49912 = _ID42237::_ID3321( level._ID49912, var_3 );
        var_3 _ID42407::_ID10959();
        var_3 _unknown_64FE();
        var_3 _meth_8058();
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID4918( "allies" );
}

_ID51238()
{
    _unknown_64F6( level._ID49010 );
    _unknown_65B0();
    _unknown_65C7();
}

_ID53025()
{
    if ( _func_02F( level._ID49912 ) && _func_02F( level._ID49912[0] ) )
    {
        if ( level._ID49912[0] _meth_816F() )
            _unknown_65DE( 1 );
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
    if ( !_func_02F( level._ID49912 ) )
        level._ID49912 = [];

    level._ID49912 = _ID42237::_ID3293( level._ID49912, self );
    thread _unknown_6623();
}

_ID44439()
{
    level._ID49912 = _ID42237::_ID3321( level._ID49912, self );
}

_ID48258()
{
    self waittill( "death" );
    _unknown_6636();
}

_ID51958()
{
    if ( _func_02F( level._ID43919 ) )
        level._ID43919 _ID42407::_ID15095();

    _ID42407::_ID3319( level._ID49912, "death" );
    var_0 = _unknown_6604();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID10959();
        var_2 _unknown_65C4();
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    level._ID47826 _ID42407::_ID10959();
    level._ID51527 _ID42407::_ID10959();
    level._ID47826 _ID42407::_ID36519();
    level._ID51527 _ID42407::_ID36519();
    level._ID47826 _meth_80B7();
    level._ID51527 _meth_80B7();
}

_ID44127( var_0 )
{
    level._ID49912 = _ID42237::_ID3332( level._ID49912 );
    level._ID49912 = _ID42407::_ID3328( level._ID49912 );
    var_1 = _ID42237::_ID16640( var_0, "targetname" );
    var_2 = _ID42237::_ID16638( var_0 + "_player", "targetname" );
    var_3 = level._ID49912;

    for ( var_7 = _func_1DA( var_3 ); _func_02F( var_7 ); var_7 = _func_1BF( var_3, var_7 ) )
    {
        var_4 = var_3[var_7];
        var_5 = var_1[var_7]._ID740;
        var_6 = var_1[var_7]._ID65;
        var_4 thread _unknown_674B( var_5, var_6 );
    }

    var_clear_4
    level._ID794 _unknown_6762( var_2._ID740, var_2._ID65 );
}

_ID45599( var_0 )
{
    _unknown_6771( var_0._ID740, var_0._ID65 );
}

_ID45573( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = ( 0, 0, 0 );

    if ( !_func_1B3( self ) )
    {
        self _meth_81D2( _ID42407::_ID17434( var_0 ), var_1 );
        self _meth_81B2( self._ID740 );
    }
    else
    {
        var_2 = level._ID794 _ID42237::_ID35164();
        level._ID794 _meth_8083( var_2, "tag_origin", 1 );
        var_2 _meth_82B8( var_0, 0.05 );
        var_2 _meth_82BF( var_1, 0.05 );
        wait 0.1;
        level._ID794 _meth_8055();
        var_2 _meth_80B7();
    }
}

_ID50496( var_0, var_1 )
{
    if ( var_0.size < 1 )
        return;

    var_2 = var_1 / var_0.size;
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 thread _unknown_6827( 0 );

        if ( var_5 != var_0.size - 1 )
            wait(var_2);
    }

    var_clear_2
}

_ID47023( var_0, var_1 )
{
    wait(var_0);
    _unknown_6844( var_1 );
}

_ID5311( var_0 )
{
    self endon( "death" );

    if ( !_func_0D6( self ) || !_func_1A7( self ) )
        return;

    if ( _func_02F( self._ID5311 ) && self._ID5311 )
        return;

    self._ID5311 = 1;

    if ( _func_02F( var_0 ) )
        wait(_func_0B8( var_0 ));

    var_1 = [];
    var_1[0] = "j_hip_le";
    var_1[1] = "j_hip_ri";
    var_1[2] = "j_head";
    var_1[3] = "j_spine4";
    var_1[4] = "j_elbow_le";
    var_1[5] = "j_elbow_ri";
    var_1[6] = "j_clavicle_le";
    var_1[7] = "j_clavicle_ri";

    for ( var_2 = 0; var_2 < 3 + _func_0B7( 5 ); var_2++ )
    {
        var_3 = _func_0B9( 0, var_1.size );
        thread _unknown_68F7( var_1[var_3], undefined );
        wait(_func_0B8( 0.1 ));
    }

    self _meth_8057( self._ID486 + 50, self._ID740 );
}

_ID5313( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = level._ID1426["flesh_hit"];

    _func_157( var_1, self, var_0 );
}

_ID52334( var_0, var_1, var_2 )
{
    thread _unknown_6983();
    level endon( "color_flags_advance_stop" );
    var_3 = "allies";

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    for ( var_4 = var_2; var_4 <= var_1; var_4++ )
    {
        var_5 = var_0 + "_" + var_4;
        var_6 = _func_1A1( var_5, "targetname" );
        var_7 = _func_1A1( var_6._ID1191, "targetname" );
        _ID42237::_ID14413( var_5 );
        var_8 = var_7 _ID42271::_ID44106( var_7._ID31096, var_3 );
        var_9 = var_8["colorCodes"];
        var_10 = var_8["colorCodesByColorIndex"];
        var_11 = var_8["colors"];
        var_12 = [];
        var_13 = var_9;

        for ( var_18 = _func_1DA( var_13 ); _func_02F( var_18 ); var_18 = _func_1BF( var_13, var_18 ) )
        {
            var_14 = var_13[var_18];
            var_15 = level._ID3364[var_3][var_14];

            if ( _func_02F( var_15 ) )
            {
                var_16 = _func_1A5();
                var_16._ID47540[0] = var_14;
                var_17 = _func_127( var_14, 0, 1 );
                var_16._ID8283[0] = var_17;
                var_16._ID44413[var_17] = var_10[var_17];
                var_16._ID54592 = var_7;
                var_16._ID680 = var_5;
                var_16._ID40767 = var_15;
                var_12[var_12.size] = var_16;
            }
        }

        var_clear_3
        var_clear_0
        _ID42237::_ID3350( var_12, ::_unknown_6A6B );
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
            var_1 _unknown_6ABF();
            continue;
        }

        level waittill( "color_flag_advance_queue_updated" );
    }
}

_ID50709()
{
    var_0 = self._ID8283[0];

    if ( !_func_02F( level._ID45330 ) )
        level._ID45330 = [];

    var_1 = _func_1D9( level._ID45330 );
    var_2 = 0;
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4 == var_0 )
        {
            var_2 = 1;
            break;
        }
    }

    var_clear_2
    var_clear_0

    if ( !var_2 )
    {
        level._ID45330[var_0] = [];
        thread _unknown_6AE4( var_0 );
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
    _unknown_6B58();
}

_ID50855( var_0, var_1 )
{
    if ( !var_0.size )
        return 0;

    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3._ID47540[0] == var_1 )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID53382()
{
    _unknown_6C41();
    var_0 = "airliner_flyby";
    _ID42237::_ID14400( var_0 );
    var_1 = _func_1A2( "trig_airliner_flyby", "targetname" );
    _ID42237::_ID3350( var_1, ::_unknown_6C63, var_0 );
}

_ID44784()
{
    var_0 = _func_1A2( "sbmodel_airliner_flyby", "targetname" );
    level._ID50445 = var_0;
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = undefined;
    var_5 = [];
    var_6 = [];
    var_7 = var_0;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];

        if ( var_8._ID172 == "script_origin" )
        {
            switch ( var_8._ID922 )
            {

            }

            case "origin_marker":
            case "engine_exhaust":
            case "light_wingtip_right":
            case "light_tail":
            case "light_belly":
            case "light_wingtip_left":
        }
    }

    var_clear_2
    var_clear_0
    var_10 = _ID42237::_ID3321( var_0, var_1 );
    var_2 = _unknown_6CDD( var_2, "airliner_wingtip_left" );
    var_3 = _unknown_6CE7( var_3, "airliner_belly" );
    var_4 = _unknown_6CF2( var_4, "airliner_tail" );
    var_5 = _unknown_6D06( var_5, "airliner_wingtip_right" );
    var_6 = _unknown_6D10( var_6, "airliner_exhaust" );
    var_10[var_10.size] = var_2;
    var_10[var_10.size] = var_3;
    var_10[var_10.size] = var_4;
    var_10 = _ID42237::_ID3296( var_10, var_5 );
    var_10 = _ID42237::_ID3296( var_10, var_6 );
    var_11 = var_10;

    for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
    {
        var_8 = var_11[var_12];
        var_8 _meth_8053( var_1 );
    }

    var_clear_1
    var_clear_0
    var_1._ID52204 = var_1._ID65;
    return var_1;
}

_ID48170( var_0, var_1 )
{
    if ( _func_02F( var_0 ) )
    {
        var_2 = var_0 _ID42237::_ID35164();
        var_0 = var_2;
        _func_157( _ID42237::_ID16299( var_1 ), var_0, "tag_origin" );
        return var_0;
    }

    return undefined;
}

_ID54061( var_0, var_1 )
{
    if ( var_0.size )
    {
        var_2 = [];
        var_3 = var_0;

        for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
        {
            var_4 = var_3[var_6];
            var_5 = var_4 _ID42237::_ID35164();
            var_2[var_2.size] = var_5;
        }

        var_clear_3
        var_clear_0
        var_0 = var_2;
        var_7 = var_0;

        for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
        {
            var_4 = var_7[var_8];
            _func_157( _ID42237::_ID16299( var_1 ), var_4, "tag_origin" );
        }

        var_clear_1
        var_clear_0
        return var_0;
    }

    return undefined;
}

_ID49837()
{
    _ID42237::_ID3294( level._ID50445, ::_meth_805A );
}

_ID46285()
{
    _ID42237::_ID3294( level._ID50445, ::_meth_8059 );
}

_ID46786( var_0 )
{
    var_1 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    self waittill( "trigger" );

    if ( _func_02F( self._ID31197 ) )
        _ID42237::_ID14413( self._ID31197 );

    if ( _func_02F( self._ID916 ) )
        wait(self._ID916);

    level notify( "airliner_flyby" );
    var_3 = 1500;

    if ( _func_02F( var_1._ID997 ) )
        var_3 = var_1._ID997;

    _ID42237::_ID14426( var_0 );
    _ID42237::_ID14402( var_0 );
    level._ID48251._ID740 = var_1._ID740;

    if ( _func_02F( var_1._ID65 ) )
        level._ID48251._ID65 = var_1._ID65;
    else
        level._ID48251._ID65 = level._ID48251._ID52204;

    wait 0.05;
    _unknown_6E95();
    level._ID48251 thread _unknown_6EE4( self );
    var_4 = _func_0C1( self._ID922 );
    level._ID48251 thread _unknown_7076( var_4 );
    var_5 = _func_0F3( var_1._ID740, var_2._ID740 );
    var_6 = var_5 / var_3;
    level._ID48251 _meth_82B8( var_2._ID740, var_6 );
    level._ID48251 waittill( "movedone" );
    _unknown_6ECA();
    _ID42237::_ID14388( var_0 );
    self _meth_80B7();
}

_ID45833( var_0 )
{
    if ( _func_02F( var_0._ID31437 ) )
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

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    var_3 = _func_1A1( self._ID1191, "targetname" );
    self _meth_8053( var_3 );

    if ( _func_02F( var_3._ID1191 ) )
    {
        var_2 = _func_1A1( var_3._ID1191, "targetname" );
        var_2 _meth_8053( self );
        var_2 _meth_805F();
    }
    else
        self _meth_805F();

    var_3._ID52204 = var_3._ID65;
    var_3 _meth_82BF( var_3._ID31037, var_0 );
    var_3 waittill( "rotatedone" );

    if ( _func_02F( var_2 ) )
    {
        var_2 _meth_805E();
        var_2 _meth_8055();

        if ( var_1 )
        {
            var_2 _meth_82C9();
            var_2 thread _unknown_6FE7();
        }
    }
    else
        self _meth_805E();

    self _meth_8055();

    if ( var_1 )
    {
        self _meth_82C9();
        thread _unknown_6FFD();
    }

    self notify( "sbmodel_rotatedone" );
}

_ID44053()
{
    while ( level._ID794 _meth_80B0( self ) )
        wait 0.05;

    self _meth_82C8();
}

_ID51495( var_0 )
{
    var_1 = _func_1A1( self._ID1191, "targetname" );
    var_2 = undefined;
    self _meth_8053( var_1 );

    if ( _func_02F( var_1._ID1191 ) )
    {
        var_2 = _func_1A1( var_1._ID1191, "targetname" );
        var_2 _meth_8053( self );
        var_2 _meth_805F();
    }
    else
        self _meth_805F();

    var_1 _meth_82BF( var_1._ID52204, var_0 );
    var_1 waittill( "rotatedone" );

    if ( _func_02F( var_2 ) )
    {
        var_2 _meth_805E();
        var_2 _meth_8055();
    }
    else
        self _meth_805E();

    self _meth_8055();
    self notify( "sbmodel_rotatedone" );
}

_ID54729( var_0, var_1, var_2 )
{
    var_3 = self._ID49537;
    var_4 = _ID42237::_ID16638( "hind_fakefire_impactLine_start", "targetname" );
    var_5 = _ID42237::_ID16638( var_4._ID1191, "targetname" );
    var_6 = var_0 / var_1;
    var_7 = _func_0F4( var_4._ID740, var_5._ID740 );
    var_8 = var_7 / var_6;
    var_9 = var_4._ID740;
    var_10 = _func_119( var_5._ID740 - var_4._ID740 );
    var_11 = _func_11A( var_10 );
    var_12 = _func_11F( var_11 );
    var_13 = -25;
    var_14 = 25;
    var_15 = _func_0DE( "axis" );
    var_16 = 64;
    var_17 = _func_03D();

    for ( var_18 = 0; var_18 < var_6; var_18++ )
    {
        var_19 = _ID42407::_ID17434( var_9 );
        var_20 = _func_0BA( var_13, var_14 );
        var_21 = _func_0BA( var_13, var_14 );
        var_22 = ( var_19[0] + var_20, var_19[1] + var_21, var_19[2] );
        _func_1C8( var_2, var_3 _meth_818C( "tag_flash" ), var_22 );
        var_23 = var_15;

        for ( var_25 = _func_1DA( var_23 ); _func_02F( var_25 ); var_25 = _func_1BF( var_23, var_25 ) )
        {
            var_24 = var_23[var_25];

            if ( !_func_1A7( var_24 ) )
                continue;

            if ( _func_0F4( var_24._ID740, var_19 ) < 64 )
                var_24 _meth_8058();
        }

        var_clear_2
        var_clear_0
        wait(var_1);
        var_9 += var_12 * var_8;
    }
}

_ID27290( var_0 )
{
    if ( !level._ID794 animscripts\battlechatter::_ID28201( var_0 ) )
        return 0;

    if ( _func_090( level._ID794 _meth_80AF(), var_0, 0, level._ID794 ) )
        return 1;

    return 0;
}

_ID54253()
{
    var_0 = _func_1A2( "delete", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_7214 );
}

_ID54361()
{
    self waittill( "trigger" );
    wait 0.05;

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID23667()
{
    if ( self _meth_80EE() == 1 )
        return;

    self _meth_80EC();

    while ( self _meth_80EE() < 1 )
        wait 0.05;
}

_ID47231( var_0, var_1 )
{
    var_1 endon( "death" );
    level endon( "objective_complete" + var_0 );

    for (;;)
    {
        _func_1E8( var_0, var_1._ID740 );
        wait 0.05;
    }
}

_ID51887( var_0, var_1 )
{
    self endon( "death" );

    while ( _func_02F( self ) && _func_02F( var_0 ) )
    {
        var_0 waittill( "trigger",  var_2  );

        if ( self == var_2 )
        {
            var_3 = _func_03D() + _unknown_72FD( var_1 );

            while ( _func_03D() < var_3 )
            {
                wait 0.1;

                if ( !self _meth_80B0( var_0 ) )
                    break;
            }

            if ( _func_03D() >= var_3 )
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
    var_1 = _func_1A2( var_0, "targetname" );

    if ( !var_1.size )
        return;

    var_2 = undefined;

    if ( var_1.size > 1 )
    {
        _ID42237::_ID3350( var_1, ::_unknown_7326, var_0 );
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
    var_1 = _func_1A1( var_0, "targetname" );

    if ( _func_02F( var_1 ) )
        var_1 notify( "trigger" );
}

_ID44030( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    var_1 notify( "trigger" );
}

_ID44529( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    self thread [[ var_1 ]]();
}

_ID52682( var_0 )
{
    while ( !_func_02F( var_0 ) )
        wait 0.05;
}

_ID45426( var_0 )
{
    while ( _func_02F( var_0 ) )
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
    level._ID5261 = _ID42313::_ID9125( "black", 0, level._ID794 );
    level._ID5261 _meth_808B( var_0 );
    level._ID5261._ID55 = 1;

    if ( _func_02F( var_1 ) )
        level._ID5261._ID408 = var_1;

    wait(var_0);
}

_ID52029( var_0 )
{
    level._ID5261 _meth_808B( var_0 );
    level._ID5261._ID55 = 0;
    wait(var_0);
    level._ID5261 _meth_808F();
}

_ID50397()
{
    var_0 = _func_1A2( "flood_spawner", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID54703( var_0 )
{
    if ( var_0.size == 1 )
        return var_0[0];

    return var_0[_func_0B7( var_0.size - 1 )];
}

_ID45841()
{
    for (;;)
        wait 0.05;
}

_ID46271()
{
    _func_0DB( "r_spotlightStartRadius", 36 );
    _func_0DB( "r_spotlightEndRadius", 325 );
    _func_0DB( "r_spotlightBrightness", 0.9 );
    var_0 = _ID42237::_ID35164();
    var_0._ID740 = level._ID794 _meth_80AF();
    var_0._ID65 = level._ID794 _meth_8346();
    var_0 thread _unknown_74E4();
    var_1 = _ID42237::_ID16299( "flashlight" );
    _func_157( var_1, var_0, "tag_origin" );
    level._ID794._ID52470 = var_0;
}

_ID53976()
{
    for (;;)
    {
        var_0 = level._ID794 _meth_8346();
        var_1 = level._ID794 _meth_80AF();

        if ( self._ID65 != var_0 )
            self._ID65 = var_0;

        if ( self._ID740 != var_1 )
            self._ID740 = var_1;

        wait 0.05;
    }
}

_ID50517( var_0 )
{
    self endon( "movedone" );
    var_1 = _unknown_754F();

    while ( var_1 > var_0 )
    {
        var_1 = _unknown_7558();
        wait 0.5;
    }

    level._ID794 _meth_80B5( "airliner_flyby" );
    wait 4;
    level._ID794 _meth_80B6( "airliner_flyby" );
}

_ID46974()
{
    var_0 = level._ID794._ID740;
    var_1 = level._ID48251._ID740;
    var_2 = _func_0F3( var_0, var_1 );
    return var_2;
}

_ID48776()
{
    _ID42407::_ID38929( "trig_alley_carstart" );
    var_0 = _func_1A1( "spawn_enemies_slope_trigger", "targetname" );

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
    _func_157( level._ID1426["fire_crash_jeepride"], var_1, "tag_body" );
    var_1._ID23512[0] _meth_80B7();
    var_1 thread maps\favela_escape_aud::_ID53534();
    var_1 waittill( "reached_end_node" );
    var_1 _meth_8057( var_1._ID486, var_1._ID740 );
}

_ID53437()
{
    _ID42234::_ID13611( "fence_destruction_1" );
}

_ID52127()
{
    level endon( "move_ai_intro" );
    var_0 = _func_1A1( "intro_anim_node", "targetname" );
    var_1 = _ID42407::_ID35028( "payphone" );
    level._ID47826.payphone = var_1;
    var_2 = [ level._ID51527, level._ID47826 ];
    thread _unknown_7787( var_2 );
    var_0 _ID42259::_ID3016( var_2, "opening_radiotower" );
    var_0 thread _ID42259::_ID3111( var_1, "opening_radiotower" );
    var_0 _ID42259::_ID3099( var_2, "opening_radiotower" );
    var_3 = _func_0C8( "node_sarge_post_intro_goal", "targetname" );
    level._ID47826 _meth_81B1( var_3 );
    var_4 = _func_0C8( "node_hero1_post_intro_goal", "targetname" );
    level._ID51527 _meth_81B1( var_4 );
    _ID42237::_ID14413( "player_start_moving" );
    _ID42237::_ID14402( "move_ai_intro" );
}

_ID43233()
{
    self _meth_805A();
    var_0 = _func_1A1( "chicken_box", "targetname" );
    var_0 _meth_82CA( 1 );
    var_1 = [ "crazy01", "crazy02" ];
    var_2 = [ "death01", "death02" ];
    var_3 = _ID42237::_ID28945( var_1 );
    var_4 = _ID42237::_ID28945( var_2 );
    _ID42407::_ID3428( "chicken_anim" );
    thread _ID42259::_ID3044( self, var_3 );
    var_0 waittill( "damage" );
    _func_156( level._ID1426["chicken_box"], var_0._ID740 );
    _func_156( level._ID1426["chicken_box_impact"], var_0._ID740 );
    _func_156( level._ID1426["chicken_box_burst"], var_0._ID740 );
    var_0 _meth_80B7();
    self _meth_8059();
    wait 1.1;
    var_5 = _func_1A1( self._ID1191, "targetname" );
    var_5 _meth_82CA( 1 );
    var_5 waittill( "damage" );
    var_5 _meth_80B7();
    _ID42259::_ID3111( self, var_4 );
    wait 30;
    self _meth_80B7();
}

_ID46282( var_0, var_1, var_2 )
{
    wait(var_0);
    level._ID794 _meth_80B5( var_1 );
    wait(var_2);
    level._ID794 _meth_80B6( var_1 );
}

_ID46172( var_0 )
{
    level._ID794 endon( "mantle" );

    for (;;)
    {
        var_1 = level._ID794 _meth_8188();

        if ( level._ID794 _meth_80B0( var_0 ) && var_1 != "crouch" && var_1 != "prone" )
            _func_0DB( "hud_forceMantleHint", 1 );
        else
            _func_0DB( "hud_forceMantleHint", 0 );

        wait 0.05;
    }
}

destroyed_car_no_burn()
{
    var_0 = _func_1A1( "crushed_car", "targetname" );
    var_0 _ID42407::_ID3428( "car" );
    var_0 _ID42259::_ID3038( var_0, "destroyed_car" );
}

animated_soccer_goals()
{
    var_0 = _func_1A2( "soccer_goal", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_78A1();
    }

    var_clear_2
    var_clear_0
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
    var_0 = _func_1A1( "animated_wires", "targetname" );
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
    var_0 = _func_1A2( "airconditioner_animated", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_79E1 );
}

animated_airconditioners_think()
{
    _ID42407::_ID3428( "airconditioner" );
    _ID42259::_ID3044( self, "idle" );
}

blend_player_anim_and_linktodelta( var_0 )
{
    level._ID794 _meth_8087( var_0, "tag_player", 0.5, 0.25, 0.25 );
    wait 1.2;
    level._ID794 _meth_8084( var_0, "tag_player", 1, 0, 0, 0, 0 );
}

player_on_slide_magic_bullet()
{
    var_0 = _func_1A2( "bullet_slide", "targetname" );
    var_1 = _func_1A1( "bullet_slide_start", "targetname" );
    _ID42237::_ID14413( "trig_solorun_player_on_slide" );
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _func_1C8( "ak47", var_1._ID740, var_3._ID740 );
        wait 0.1;
    }

    var_clear_2
    var_clear_0
}

move_ai_intro( var_0 )
{
    _ID42237::_ID14413( "move_ai_intro" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID12445();
    }

    var_clear_2
    var_clear_0
    _unknown_7907( "trig_script_color_allies_b0" );
}

_ID50162()
{
    var_0 = _func_1A1( "fan_spin", "targetname" );
    var_0 _meth_82C7( ( 0, 0, 100 ), 200 );
}

wibble_helicopter()
{
    _func_2F1( 0, "xy", 2.2, 2 );
}

early_fall_kill_trig_remove()
{
    var_0 = _func_1A1( "early_fall_kill", "targetname" );
    var_0 _meth_80B7();
}
