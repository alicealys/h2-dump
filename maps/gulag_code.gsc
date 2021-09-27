// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID45347()
{
    level._ID27617 = _func_1AB( level._ID794, 10000, 800 );
    var_0 = _func_1A1( "looker_guy", "script_noteworthy" );
    var_0 _ID42407::_ID1947( ::_unknown_0701 );
    level._ID44029 = [];
    level._ID794._ID512 = 1;
    _ID42407::_ID27300();
    level._ID52066 = _ID42411::_ID35196( "heli_intro_player" );

    if ( !_func_02F( level._ID18457 ) )
        level._ID18457 = [];

    level._ID18457 = _ID42237::_ID3293( level._ID18457, level._ID52066 );
    thread _unknown_2752();
    level._ID52066 thread maps\gulag_aud::_ID52870();
    level._ID52066 thread _unknown_0499();
    level._ID52066 _meth_829E( 10, 10 );
    level._ID52066 thread _unknown_03C0();
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_830C( 0 );
    level._ID52066 thread _unknown_0377();
    thread _unknown_042D();
    level._ID52066 thread _ID42411::_ID16988();
    level._ID52066 thread _unknown_0509();
    var_1 = _ID42407::_ID15921( level._ID52066, "tag_guy2", ( 0, 0, -8 ) );
    var_2 = _ID42237::_ID35164();
    var_2 _meth_8053( level._ID52066, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID17429 = var_2;
    level._ID794 _meth_8098( var_2 );
    var_3 = _func_1A1( "gulag_center", "targetname" );
    level._ID40469 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    level._ID40469._ID740 = var_3._ID740;
    level._ID49891 = var_3._ID740;
    level._ID52235 = var_1;
    var_1 _meth_810F( level._ID40469 );
    var_4 = 1;
    var_5 = level._ID52066 _meth_818C( "tag_guy2" );
    level._ID794 _meth_8343( var_5 );
    thread _unknown_0212();
    wait 0.1;
    level._ID794 _meth_8084( var_1, "TAG_aim", var_4, -16.95, 16.95, -9.6, 9.6, 1 );
    thread _unknown_02DF();
    thread _unknown_01DB();
    var_6 = 0.05;
    wait(var_6);
    wait(3 - var_6);
    _ID42237::_ID14413( "approach_dialogue" );
    _ID42237::_ID14413( "player_goes_in_for_landing" );
    var_1 _meth_8111();
    var_1 _meth_810F( var_3 );
    _ID42237::_ID14413( "player_goes_in_for_landing" );
    var_7 = 45;
    var_8 = 45;
    var_9 = 15;
    var_10 = 45;
    wait 1;
    level._ID794 _meth_8084( var_1, "TAG_aim", var_4, var_7, var_8, var_9, var_10, 1 );
}

gulag_heli_intro_rumbles_seq()
{
    wait 0.5;
    var_0 = _ID54167::_ID43386( "gulag_heli_intro_rumbles" );
    var_0 _ID54167::_ID48800( 15.6 ) _ID54167::_ID47198( 0.1, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 16.25 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 19.95 ) _ID54167::_ID47198( 0.1, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 20.7 ) _ID54167::_ID47198( 0.15, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 20.86 ) _ID54167::_ID47198( 0.12, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 30.3 ) _ID54167::_ID47198( 0.12, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 46.75 ) _ID54167::_ID47198( 0.12, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID46651()
{
    thread _unknown_0451( 52.8 );
    thread _unknown_0504( 55, 0.07 );
    level._ID794 _meth_84B8();
    var_0 = _unknown_0467( 26.0, 32, 1.5, 1.5 );
    var_1 = _unknown_047A( 12.0, 1000, 2.5, 2.5 );
    var_2 = _unknown_048C( 16.0, 1000, 3.0, 3.0 );
    level._ID794 _meth_84BA( var_1._ID50910, var_1._ID53129, 64, 64 );
    thread _unknown_0462( var_0, var_1, "stabilize", 999 );
    _ID42237::_ID14413( "stabilize" );
    level._ID794 _meth_84B9();
    _ID42237::_ID14413( "stab1_clear" );
    _ID42237::_ID14413( "stab1_shift" );
    wait 0.5;
    thread _unknown_0589( 5, 0.06 );
    _ID42237::_ID14413( "stabilize" );
    _ID42237::_ID14413( "stab2_clear" );
    wait 0.5;
    thread _unknown_05AA( 6.5, 0.06 );
    wait 0.5;
    wait 6.0;
    wait 2.5;
    wait 2.5;
    thread _unknown_05C5( 12, 0.07 );
    wait 12.0;
    thread _unknown_05D6( 12.5, 0.05 );
    wait 7.5;
    wait 5.0;
}

_ID47948( var_0, var_1, var_2, var_3 )
{
    var_4 = ( 0, 0, 0 );
    var_5 = ( 0, 0, 0 );
    var_6 = 0;
    var_7 = var_3;
    var_8 = -31;

    while ( var_6 < var_7 )
    {
        var_9 = level._ID52066 _meth_818C( "tag_guy2" );
        var_9 = _func_11F( _func_119( var_9 ) );
        var_10 = level._ID794 _meth_8346();
        var_10 = _func_11F( var_10 );
        var_11 = _func_1FA( var_9[1], var_9[0] ) - _func_1FA( var_10[1], var_10[0] );

        if ( var_11 < var_8 )
        {
            var_12 = var_1._ID50910;
            var_13 = var_1._ID53129;
            var_14 = var_1._ID50198;
            var_15 = var_1._ID48640;
        }
        else
        {
            var_12 = var_0._ID50910;
            var_13 = var_0._ID53129;
            var_14 = var_0._ID50198;
            var_15 = var_0._ID48640;
        }

        level._ID794 _meth_84BA( var_12, var_13, var_14, var_15 );
        wait 0.05;
        var_6 += 0.05;

        if ( var_2 != "" && _ID42237::_ID14385( var_2 ) )
            break;
    }

    level._ID794 _meth_84BA( var_1._ID50910, var_1._ID53129, var_1._ID50198, var_1._ID48640 );
}

_ID49056( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A5();
    var_4._ID50910 = var_0;
    var_4._ID53129 = var_1;
    var_4._ID50198 = var_2;
    var_4._ID48640 = var_3;
    return var_4;
}

_ID51718( var_0 )
{
    _func_0DB( "r_mbEnable", 2 );
    wait(var_0);
    _func_0DB( "r_mbEnable", 0 );
}

_ID49203()
{
    wait 0.5;
    level._ID794 _meth_80A9( 0, 0, 0, 0, 0, -6, 6 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 0.5;
    var_0 = 22;
    var_1 = 90;
    var_2 = 15;
    var_3 = 45;
    level._ID794 _meth_80A9( 0, 0, 0, var_0, var_1, var_2, var_3 );
    level._ID794 _meth_85AA( 90, 0, 0, 145 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    _ID42237::_ID14413( "approach_dialogue" );
    var_0 = 27;
    var_1 = 85;
    var_2 = 15;
    var_3 = 45;
    level._ID794 _meth_80A9( 0.0, 0.0, 0.0, var_0, var_1, var_2, var_3 );
    level._ID794 _meth_85AA( 90, 0, 0, 145 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    _ID42237::_ID14413( "clear_dof" );
    wait 2.15;
    var_0 = 35;
    var_1 = -30;
    var_2 = 0;
    var_3 = 3;
    level._ID794 _meth_80A9( 1.9, 0.25, 0.75, var_0, var_1, var_2, var_3 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 2.0;
    wait 1.15;
    var_0 = 32;
    var_1 = -32;
    var_2 = 20;
    var_3 = -20;
    level._ID794 _meth_80A9( 1.15, 0.25, 0.25, var_0, var_1, var_2, var_3 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 1.25;
    wait 0.55;
    var_0 = 35;
    var_1 = 40;
    var_2 = 15;
    var_3 = 45;
    level._ID794 _meth_80A9( 1.0, 0.5, 0.25, var_0, var_1, var_2, var_3 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 5.2;
    var_0 = 35;
    var_1 = 10;
    var_2 = 15;
    var_3 = 40;
    level._ID794 _meth_80A9( 6.0, 0.25, 0.25, var_0, var_1, var_2, var_3 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 6.0;
    var_0 = 35;
    var_1 = 35;
    var_2 = 15;
    var_3 = 40;
    level._ID794 _meth_80A9( 6.0, 0.25, 0.25, var_0, var_1, var_2, var_3 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 12.0;
    var_0 = 5;
    var_1 = 10;
    var_2 = 10;
    var_3 = 5;
    level._ID794 _meth_80A9( 1.4, 0.25, 0.25, var_0, var_1, var_2, var_3 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 1.65;
    var_0 = -5;
    var_1 = 5;
    var_2 = 5;
    var_3 = 5;
    level._ID794 _meth_80A9( 0.5, 0.15, 0.15, var_0, var_1, var_2, var_3 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
}

_ID45704( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0; var_2 += 0.25 )
    {
        _func_192( var_1, 3.0, level._ID794._ID740, 4096 );
        wait 0.25;
    }
}

_ID45206( var_0 )
{
    var_1 = 45;
    var_2 = 45;
    var_3 = 15;
    var_4 = 45;
    var_5 = 2;
    level._ID794 _meth_8084( var_0, "tag_origin", 1, var_1, var_2, var_3, var_4, 1 );
}

_ID48195( var_0 )
{
    for (;;)
        wait 0.05;
}

_ID51937()
{
    var_0 = _ID42237::_ID35164();
    var_0 _meth_8053( level._ID52066, "tag_guy2", ( 0, 0, -16 ), ( 0, 90, 0 ) );
    level._ID794 _meth_80A9( 1, 0.25, 0.25, 25, 25, 15, 25 );
    wait 1;
    var_1 = 1;
    var_2 = 45;
    var_3 = 45;
    var_4 = 15;
    var_5 = 45;
    level._ID794 _meth_8084( var_0, "tag_origin", var_1, var_2, var_3, var_4, var_5, 1 );
}

_ID47954( var_0, var_1 )
{
    var_2 = [ "head_seal_udt_d_lifesaver_gulag_intro", "head_seal_udt_a_gulag_intro", "head_seal_udt_c_gulag_intro", "head_seal_udt_d_gulag_intro", "head_seal_udt_e_gulag_intro", "h2_head_seal_udt_b_c_gulag_intro" ];
    var_3 = var_0;

    for ( var_9 = _func_1DA( var_3 ); _func_02F( var_9 ); var_9 = _func_1BF( var_3, var_9 ) )
    {
        var_4 = var_3[var_9];
        var_5 = _func_1A2( var_4._ID1191, "targetname" );
        var_6 = var_5;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];
            var_7._ID216 = 1;
            var_7 _ID42407::_ID1947( ::_unknown_315A, var_2 );
        }

        var_clear_3
        var_clear_1
    }

    var_clear_6
    var_clear_0
    var_10 = [];
    var_11 = 0;
    var_12 = var_0;

    for ( var_15 = _func_1DA( var_12 ); _func_02F( var_15 ); var_15 = _func_1BF( var_12, var_15 ) )
    {
        var_13 = var_12[var_15];
        var_14 = var_13 _ID42407::_ID35192();
        var_14 thread _ID42411::_ID17021();
        var_14 thread maps\gulag::_ID46411( var_1[var_11] );
        var_14 thread _unknown_2737();
        var_10[var_10.size] = var_14;
        var_11++;
    }

    var_clear_3
    var_clear_0
    _ID42237::_ID3350( var_10, _ID42411::_ID16988 );
    _ID42237::_ID3350( var_10, ::_unknown_0C1A );
    var_16 = var_10;

    for ( var_17 = _func_1DA( var_16 ); _func_02F( var_17 ); var_17 = _func_1BF( var_16, var_17 ) )
    {
        var_14 = var_16[var_17];
        var_14 thread _ID44982();
        var_14 thread _unknown_0BBC();

        if ( !_func_125( var_14._ID170, "armed" ) )
            continue;

        level._ID47232 = var_14;
    }

    var_clear_1
    var_clear_0
    level._ID50956 = var_10;
}

_ID44982()
{
    for (;;)
        wait 0.05;
}

_ID43180()
{
    self endon( "death" );
    wait 10;
    self._ID512 = 0;
}

_ID52965()
{
    self endon( "death" );
    self waittill( "unload" );
    waitframe;
    wait 60;
    self._ID512 = 0;
    self._ID86 = 1.0;
    self._ID486 = 50;
    self._ID1204 = 200;

    for (;;)
    {
        wait 3;
        self._ID86 = self._ID86 + 0.2;
        self._ID1204 = self._ID1204 + 40;
    }
}

_ID52891( var_0 )
{
    self endon( "death" );
    self endon( "new_color_being_set" );
    self._ID28791 = 0;

    if ( !_func_02F( self._ID22746 ) )
        self._ID486 = 280;

    self._ID4867 = 2;
    self._ID86 = 0.0;
    self._ID512 = 1;
    self waittill( "unload" );
    self._ID86 = 0.1;
}

_ID45124()
{
    _ID42407::_ID13027( "prep_unload" );
    _ID42237::_ID14402( "a_heli_landed" );
    waitframe;
    var_0 = _func_1A5();
    var_0._ID51182 = undefined;
    var_1 = self._ID29965;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_0D4( var_2 ) )
        {
            if ( !_func_02F( var_0._ID51182 ) && var_2 != level._ID53563 )
                var_0._ID51182 = var_2;

            var_2 thread _unknown_0BF2( var_0 );
        }
    }

    var_clear_2
    var_clear_0
}

_ID43956()
{
    level endon( "player_progresses_passed_ext_area" );
    _ID42407::_ID1805( "friendlies_leave_courtyard" );

    for ( var_0 = 1; var_0 <= 5; var_0++ )
    {
        if ( var_0 == 4 )
        {
            var_1 = _func_0DE( "allies" );
            var_2 = var_1;

            for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
            {
                var_3 = var_2[var_4];
                var_3._ID513 = 0;
            }

            var_clear_2
            var_clear_0
        }

        var_5 = "ext_progress_" + var_0;
        var_6 = _func_1A1( var_5, "targetname" );

        if ( _ID42237::_ID14396( var_5 ) )
            _ID42237::_ID14413( var_5 );

        var_7 = var_6 _ID42407::_ID15633();
        var_7 _ID42407::_ID41163();

        if ( var_5 == "ext_progress_5" )
        {
            wait 0.7;
            level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_upahead" );
            wait 0.6;
        }

        var_6 _ID42407::_ID1801();
    }
}

_ID49489()
{
    if ( _ID42237::_ID14385( "leaving_bathroom_vol2" ) )
        return;

    level endon( "leaving_bathroom_vol2" );

    for ( var_0 = 1; var_0 <= 5; var_0++ )
    {
        var_1 = "bathroom_int" + var_0;
        var_2 = _func_1A1( var_1, "targetname" );
        _ID42237::_ID14413( var_1 );
        var_3 = var_2 _ID42407::_ID15633();

        if ( _func_02F( var_3 ) )
            var_3 _ID42407::_ID41163();

        var_2 _ID42407::_ID1801();
    }
}

_ID44348()
{
    level._ID44029[self._ID1191] = [];
    var_0 = _func_03D();

    for (;;)
    {
        var_1 = _func_03D();
        self waittill( "reached_current_node",  var_3, var_2  );
        var_4 = [];
        var_4["name"] = var_2._ID1193;
        var_4["time"] = _func_03D() - var_1 * 0.001;
        var_4["total_time"] = _func_03D() - var_0 * 0.001;
        var_4["flag"] = var_3;
        level._ID44029[self._ID1191][level._ID44029[self._ID1191].size] = var_4;
    }
}

_ID52996()
{
    var_0 = level._ID44029;

    for ( var_5 = _func_1DA( var_0 ); _func_02F( var_5 ); var_5 = _func_1BF( var_0, var_5 ) )
    {
        var_1 = var_0[var_5];
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _func_02F( var_3["flag"] ) )
                continue;
        }

        var_clear_3
    }

    var_clear_5
}

_ID43007()
{
    wait 2;
    level._ID794 _meth_8087( level._ID44508, "tag_origin", 2, 0, 0 );
}

_ID52832()
{
    thread _unknown_0E77();
    _ID42407::_ID13024( "start_attack_run" );
    _ID42407::_ID13027( "start_attack_run" );
    _ID42407::_ID13025( "unlock_pitch" );
    _ID42411::_ID23510();
    _ID42407::_ID13021( "unlock_pitch" );
}

_ID43658()
{
    waitframe;
    level._ID52066 thread _ID42411::_ID40066( "idle_alert_to_casual" );
}

_ID53188()
{
    self endon( "death" );
    _ID42407::_ID13024( "force_fire" );
    _ID42407::_ID13027( "force_fire" );
    var_0 = self._ID9504;
    var_1 = var_0._ID31210;
    var_2 = var_0._ID31211;
    var_2 = 10;
    var_3 = self._ID23512;

    for (;;)
    {
        if ( _func_02F( var_1 ) )
            wait(var_1);

        _ID42411::_ID23510();
        wait(var_2);
        _ID42407::_ID13021( "force_fire" );
        _ID42411::_ID23509();
        _ID42407::_ID13027( "force_fire" );
    }
}

_ID44653()
{
    self endon( "death" );
    _ID42407::_ID13024( "force_fire" );

    for (;;)
    {
        _ID42407::_ID13027( "force_fire" );
        _unknown_0F1D();
        self._ID54705 _meth_80B7();
    }
}

_ID49129()
{
    self endon( "force_fire" );
    var_0 = self._ID39358;

    if ( !_func_02F( var_0 ) )
        var_0 = self._ID23512;

    var_1 = self._ID9504;

    if ( _func_02F( var_1._ID31210 ) )
        wait(var_1._ID31210);

    _ID42407::_ID10226( var_1._ID31211, _ID42407::_ID13021, "force_fire" );
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_3 = _func_11F( self._ID65 );
    var_4 = _func_11D( self._ID65 );
    var_2._ID740 = self._ID740 + var_3 * 400 + var_4 * -400;
    var_2 _meth_8053( self );
    self._ID54705 = var_2;
    var_5 = var_0;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6 _meth_810F( var_2 );
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        var_8 = var_0;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_6 = var_8[var_9];
            var_6 _meth_8059();

            if ( !var_6 _meth_80EB() )
                var_6 _meth_80F1();
        }

        var_clear_1
        var_clear_0
        wait 0.1;
    }
}

_ID51585()
{
    self endon( "death" );
    var_0 = self._ID740;

    for (;;)
    {
        var_0 = self._ID740;
        wait 0.05;
    }
}

_ID54099()
{
    self endon( "death" );
    _ID42407::_ID13024( "unlock_pitch" );
    _ID42407::_ID13024( "lock_pitch" );
    _ID42407::_ID13025( "lock_pitch" );
    var_0 = 10;
    var_1 = 60;
    self _meth_829E( var_0, var_1 );

    for (;;)
    {
        if ( _ID42407::_ID13019( "lock_pitch" ) )
            self _meth_829E( 5, 60 );
        else if ( _ID42407::_ID13019( "unlock_pitch" ) )
            self _meth_829E( 100, 100 );
        else
            self _meth_829E( var_0, var_1 );

        _ID42237::_ID41098( "unlock_pitch", "lock_pitch" );
    }
}

_ID51479( var_0, var_1 )
{
    var_2 = _func_1A2( var_0, "targetname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4._ID1193 = var_1;
    }

    var_clear_2
    var_clear_0
}

_ID51597()
{
    for (;;)
    {
        self _meth_825D( 50, 1, 0.5 );
        _ID42237::_ID14413( "stabilize" );
        self _meth_825D( 0, 0, 0 );
        _ID42237::_ID14426( "stabilize" );
    }
}

_ID43175()
{
    var_0 = _ID42237::_ID16299( "missile_explosion" );
    self endon( "death" );

    for (;;)
    {
        var_1 = _func_1A2( "rocket", "classname" );
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( var_3._ID669 != "projectile_stinger_missile" )
                continue;

            if ( _func_0F3( self._ID740, var_3._ID740 ) < 100 )
            {
                _ID42237::_ID14402( "aa_hit" );
                _func_156( var_0, var_3._ID740 );
                var_3 _meth_80B7();
            }
        }

        var_clear_2
        var_clear_0
        wait 0.05;
    }
}

_ID47559()
{
    level endon( "player_heli_uses_modified_yaw" );

    if ( _ID42237::_ID14385( "player_heli_uses_modified_yaw" ) )
        return;

    var_0 = _ID42237::_ID16638( "yaw_progress_ent", "targetname" );
    var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2 = _ID42237::_ID16638( "pitch_target", "targetname" );
    var_3 = _func_06A( "script_origin", var_2._ID740 );
    self _meth_826F( var_3 );
    var_4 = _ID42237::_ID16638( "fly_in_progress", "targetname" );
    var_5 = _ID42237::_ID16638( var_4._ID1191, "targetname" );
    var_6 = _func_0F3( var_4._ID740, var_5._ID740 );

    for (;;)
    {
        var_7 = _ID50343::_ID15937( self._ID740, var_4._ID740, var_5._ID740 );
        var_8 = var_7["progress"];
        var_9 = var_8 / var_6;

        if ( var_9 < 0 )
            var_9 = 0;

        if ( var_9 > 1 )
            var_9 = 1;

        level._ID28675 = var_9;
        var_3._ID740 = var_0._ID740 * 1 - var_9 + var_1._ID740 * var_9;
        wait 0.05;
    }
}

_ID53194( var_0 )
{
    var_1 = 80;
    var_2 = 70;
    var_3 = -125;
    var_4 = 125;
    var_5 = var_1 - var_2;
    var_6 = var_4 - var_3;
    waitframe;
    var_7 = self._ID28675 - level._ID52066._ID28675;
    var_7 *= 5;
    self._ID47596 = var_7;

    for (;;)
    {
        var_8 = self._ID28675 - var_7;
        var_8 -= 50;
        var_9 = level._ID52066._ID28675 - var_8;

        if ( var_9 < var_3 )
            var_9 = var_3;
        else if ( var_9 > var_4 )
            var_9 = var_4;

        var_9 += var_3 * -1;
        var_10 = var_9 * var_5 / var_6;
        var_10 += var_2;
        var_10 += _func_0B8( 4 ) - 2;
        self _meth_828D( var_10, 15, 15 );
        wait 0.05;
    }
}

_ID51778( var_0, var_1, var_2 )
{
    if ( self != level._ID52066 )
        thread _unknown_132F( var_2 );

    self._ID47596 = 0;

    for (;;)
    {
        var_3 = _ID50343::_ID15937( self._ID740, var_0._ID740, var_1._ID740 );
        self._ID28675 = var_3["progress"];
        wait 0.05;
    }
}

_ID51497()
{
    wait 1;
    _func_0DB( "cg_cinematicFullScreen", "0" );
    _ID42237::_ID14413( "player_near_tv" );
    _func_05E( "h2_gulag_securitycam", 1.0, 1 );
}

_ID45608()
{
    _func_060();
    level notify( "stop_tv_loop" );
}

_ID47075()
{
    var_0 = level._ID47232;
    var_1 = _func_1A1( "armed_target_1", "targetname" );
    var_2 = var_0._ID23512;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_810F( var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID48224()
{
    var_0 = _ID42237::_ID16299( "glassy_pain" );
    self waittill( "death" );

    if ( !_func_02F( self ) )
        return;

    var_1 = _func_11A( _ID42237::_ID28976( 10 ) );
    var_2 = _func_11F( var_1 );
    var_3 = _func_11D( var_1 );
    _func_156( var_0, self._ID740 + ( 0, 0, 40 ), var_2, var_3 );
}

_ID52338()
{
    level endon( "stop_moving_gulag_center" );
    var_0 = _func_1A1( "gulag_center", "targetname" );
    var_1 = var_0._ID740;
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    self _meth_826F( var_2 );
    thread _unknown_159F( var_0, var_2 );
    _ID42237::_ID14413( "stab2_clear" );
    var_3 = _func_1A1( var_0._ID1191, "targetname" );
    var_4 = _func_1A1( var_3._ID1191, "targetname" );
    level._ID40469 _meth_82B8( var_3._ID740, 4, 1, 1 );
    level._ID794._ID511 = 1;
    level._ID53563._ID511 = 1;
    _ID42237::_ID14413( "f15_gulag_explosion" );
    _ID42237::_ID14402( "clear_dof" );
    level._ID794._ID511 = 0;
    level._ID53563._ID511 = 0;
    _ID42407::_ID10226( 2.5, _ID42234::_ID13611, 93 );
    _ID42407::_ID10226( 2, ::_unknown_38B6 );
    var_5 = _ID42237::_ID16638( "player_heli_landing_path", "targetname" );
    level._ID52066 _ID42407::_ID10226( 1.5, _ID42411::_ID40218, var_5 );
    wait 1.5;
    wait 1;
    var_0 _meth_82B8( var_4._ID740, 2, 1, 1 );
    level._ID40469 _meth_82B8( var_4._ID740, 1.5, 0.5, 0.5 );
    _ID42475::_ID34575( "start_heli_bullet_impact_mix" );
    level._ID52066 _ID42407::_ID10226( 2.7, _ID42407::_ID27079, "scn_gulag_heli_atlitude_alarm" );
    level._ID794 _ID42407::_ID10226( 2.7, _ID42407::_ID27079, "scn_gulag_heli_shakes" );
    _ID42237::_ID24938( 0.5, ::_func_192, 0.25, 2.5, level._ID794._ID740, 5000 );
    _ID42237::_ID24938( 2.0, ::_func_192, 0.35, 2.5, level._ID794._ID740, 5000 );
    _ID42237::_ID24938( 2.35, ::_func_192, 0.2, 1, level._ID794._ID740, 5000 );
    _ID42237::_ID24938( 2.75, ::_func_192, 0.4, 4.5, level._ID794._ID740, 5000 );
    level _ID42407::_ID10226( 1.8, _ID42407::_ID31877, "f15_smoke" );
    level _ID42407::_ID10226( 2.1, _ID42407::_ID31877, "afterburner" );
    wait 1;
    wait 1;
    _ID42407::_ID10226( 2, ::_unknown_27E3 );
    thread _unknown_16DB();
    var_6 = _func_1A1( "f15_hli_target_ent", "targetname" );
    var_0 _meth_82B8( var_6._ID740, 3, 0.5, 0.5 );
    level._ID40469 _meth_82B8( var_6._ID740, 3, 0.5, 0.5 );
    _ID42407::_ID10226( 3.5, _ID42237::_ID14388, "clear_dof" );
    wait 5;
    var_0 _meth_82B8( var_1, 3, 0.5, 0.5 );
    level._ID40469 _meth_82B8( var_1, 3, 0.5, 0.5 );
    _ID42237::_ID14413( "stop_rotating_around_gulag" );
    level notify( "stop_rotating_around_gulag_break" );
    var_7 = _func_1A1( "fly_in_lookat_ent", "targetname" );
    self _meth_826F( var_7 );
    wait 2;
    var_7 _meth_82B8( ( 40280, 28549, 1900 ), 20 );
    self _meth_826F( var_7 );
    _ID42237::_ID14413( "player_lands" );
    _ID42237::_ID14402( "clear_dof" );
}

_ID47525( var_0, var_1 )
{
    wait 4.9;
    var_2 = _func_1A1( "f15_hli_target_ent", "targetname" );
    var_3 = var_0._ID740;
    var_4 = level._ID40469._ID740;
    var_0 _meth_82B8( var_2._ID740, 2, 1, 1 );
    level._ID40469 _meth_82B8( var_2._ID740, 2, 1, 1 );
    wait 3;
    var_0 _meth_82B8( var_3, 2, 1, 1 );
    level._ID40469 _meth_82B8( var_4, 2, 1, 1 );
    wait 2;
    var_0._ID740 = var_3;
    level._ID40469._ID740 = var_4;
}

_ID50789()
{
    var_0 = level._ID17429;
    var_0 _meth_8055();
    var_1 = 4;
    var_2 = _ID42237::_ID35164();
    var_2._ID65 = var_0._ID65;
    var_2 _meth_82C3( 15 * var_1 );
    var_2 _meth_82C5( 25 * var_1 );
    var_0 _meth_82BF( var_2._ID65, 1, 0.4, 0.4 );
    wait 1.5;
    var_2 _meth_82C3( -35 * var_1 );
    var_2 _meth_82C5( -55 * var_1 );
    var_0 _meth_82BF( var_2._ID65, 1, 0.4, 0.4 );
    var_0._ID65 = var_0._ID65 + ( 0.0001, 0, 0 );
    wait 1;
    var_0 _meth_82BF( level._ID52066._ID65, 1, 0.4, 0.4 );
    wait 1;
    var_0 _meth_8053( level._ID52066, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
}

_ID43413( var_0, var_1 )
{
    level endon( "stop_rotating_around_gulag_break" );

    for (;;)
    {
        var_2 = _func_11A( self._ID740 - var_0._ID740 );
        var_3 = _func_11E( var_2 );
        var_4 = _func_0F3( var_0._ID740, self._ID740 );
        var_3 *= var_4 * level._ID49614 * -1;
        var_1._ID740 = var_0._ID740 + var_3;
        wait 0.05;
    }
}

_ID43091( var_0 )
{
    self endon( "death" );
    var_1 = -1;

    for (;;)
    {
        var_2 = _func_03A( "f15" );

        if ( var_2 != var_1 )
        {
            if ( var_2 == var_0 || var_2 == 2 )
                self _meth_8059();
            else
                self _meth_805A();
        }

        var_1 = var_2;
        wait 0.05;
    }
}

_ID46254( var_0, var_1 )
{
    var_2 = _func_1A1( var_0 + "_f15", "targetname" );
    var_3 = var_2 _ID42407::_ID35192();
    waitframe;
    var_3._ID3189 = "f15";
    var_3 _ID42407::_ID3428();
    var_3 _ID42407::_ID13021( "contrails" );
    var_3._ID49871 = var_0;

    if ( var_1 )
        level._ID48643 = var_3;

    level._ID46000[var_0] = var_3;
    var_4 = _func_1A1( "plane_org", "targetname" );
    var_4 thread _ID42259::_ID3111( var_3, var_0 );
    var_5 = _ID42407::_ID35028( var_0 + "_missile" );
    var_6 = _ID42407::_ID35028( var_0 + "_missile" );
    var_7 = [];
    var_7[0] = var_5;
    var_7[1] = var_6;
    var_3._ID23749 = var_7;
    var_8 = var_7;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_9 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_4 thread _ID42259::_ID3111( var_5, "missile_fire_a" );
    var_4 thread _ID42259::_ID3111( var_6, "missile_fire_b" );
    var_3 thread _unknown_1A5C();
    var_5 thread _unknown_1A61();
    var_6 thread _unknown_1A67();
    var_11 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_11._ID740 = var_3._ID740;
    var_11._ID65 = var_3._ID65;
    var_11._ID3189 = "pilot";
    var_11 _ID42407::_ID3428();
    var_11 _ID51306::_ID616();
    var_11 _meth_8053( var_3, "tag_body", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_3 thread _ID42259::_ID3044( var_11, "idle", "stop_idle", "tag_body" );
    var_3 waittill( "death" );
    var_11 _meth_80B7();
}

_ID52440()
{
    self waittillmatch( "single anim",  "end"  );
    self _meth_80B7();
}

_ID51863( var_0 )
{
    var_1 = _ID42407::_ID35028( var_0 );
    var_2 = _func_1A1( "plane_org", "targetname" );
    var_2 thread _ID42259::_ID3111( var_1, "intro" );
}

_ID53085()
{
    _ID42237::_ID14402( "f15s_spawn" );
    level._ID46000 = [];
    thread _unknown_1AB7( "intro_1", 1 );
    thread _unknown_1AC0( "intro_2", 0 );
    thread maps\gulag_aud::_ID43970();
    thread _ID42407::_ID14403( "rockslide_event", 20 );
    _ID42407::_ID10226( 20.6, _ID42234::_ID13611, 20 );
    _ID42407::_ID10226( 21.2, _ID42234::_ID13611, 21 );
    _ID42407::_ID10226( 24.0, _ID42234::_ID13611, 22 );
}

_ID49503()
{
    level._ID47319 = self;
    self._ID3189 = "ghost";
    thread _ID42407::_ID22746();
    _ID42407::_ID22825();
}

_ID54209()
{
    self endon( "death" );
    level endon( "player_lands" );
    self._ID4867 = 60;
    self._ID10 = 60;
    _unknown_2706();

    if ( _ID42407::_ID20505() )
    {
        _ID42407::_ID14803( "m14_scoped_arctic", "primary" );
        wait 0.05;
        level waittill( "switch_look" );
        level._ID48643 waittill( "death" );
    }
    else if ( level._ID35897 == "approach" )
        _ID42407::_ID14803( "m14_scoped_arctic", "primary" );

    _unknown_1C5F( 0 );
}

_ID46072()
{
    self endon( "death" );
    level endon( "player_lands" );
    self._ID4867 = 60;
    self._ID10 = 60;
    _unknown_275E();

    if ( _ID42407::_ID20505() )
    {
        _ID42407::_ID14803( "m14_scoped_arctic", "primary" );
        wait 0.05;
        var_0 = _ID42237::_ID35164();
        var_0 _meth_8053( level._ID48643, "tag_origin", ( 0, 0, 250 ), ( 0, 0, 0 ) );
        self _meth_820F( var_0 );
        level waittill( "switch_look" );
        var_0 _meth_80B7();
        self _meth_820F( level._ID48643 );
        level._ID48643 waittill( "death" );
        self _meth_820F();
    }
    else if ( level._ID35897 == "approach" )
        _ID42407::_ID14803( "m14_scoped_arctic", "primary" );

    var_1 = _func_1A1( "gulag_center", "targetname" );
    var_2 = _ID42237::_ID35164();
    var_2._ID740 = var_1._ID740 + ( 0, 0, 1000 );
    level._ID50175 = var_2;
    self _meth_820F( var_2 );
    _unknown_1D15();
    wait 1.1;
    var_3 = _func_1A1( "soap_tower_lookat", "targetname" );
    self _meth_820F( var_3 );
    var_2 _meth_80B7();
    _ID42237::_ID14413( "final_tower_died" );
    wait 1.2;
    self _meth_820F( level._ID44109 );
    wait 3;
    self _meth_820F();
}

_ID53884( var_0 )
{
    level endon( "gulag_perimeter" );

    if ( _ID42237::_ID14385( "gulag_perimeter" ) )
        return;

    for (;;)
    {
        _ID42237::_ID14413( "soap_snipes_tower" );
        _unknown_1D78();
        _ID42237::_ID14426( "soap_snipes_tower" );

        if ( !_func_02F( var_0 ) || var_0 )
            self _meth_820F( level._ID50175 );
    }
}

_ID49612()
{
    level endon( "soap_snipes_tower" );
    wait 4.4;

    for (;;)
    {
        if ( _func_1A7( self._ID322 ) )
        {
            self _meth_814F( level._ID30895["soap"]["soap_intro_sniping"], 1, 0, 1 );
            self _meth_81F7();
            self _meth_80A1( "scn_gulag_mctavish_m14" );
            wait 0.05;
            wait(_func_0BA( 2.5, 3 ));
        }

        wait 0.1;
    }
}

_ID45082()
{
    self._ID50598 = 1;
    var_0 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_0 _meth_80B8( "vehicle_slamraam_launcher_no_spike" );
    var_0._ID740 = self._ID740;
    var_0._ID65 = self._ID65;
    var_1 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_1 _meth_80B8( "vehicle_slamraam_missiles" );
    var_1._ID740 = self._ID740;
    var_1._ID65 = self._ID65;
    self._ID48638 = var_1;
    self._ID49758 = var_0;
    self._ID65 = self._ID65 + ( 0, 90, 0 );
    self._ID17617 = [];
    var_2 = _ID42407::_ID35028( "tarp" );
    thread _ID42259::_ID3044( var_2, "idle", "stop_idle" );
    self._ID44386 = var_2;
}

_ID44715()
{
    self endon( "stop_tracking" );
    self endon( "death" );
    _ID42407::_ID10226( 12, _ID42407::_ID31877, "stop_tracking" );
    var_0 = 1;

    for (;;)
    {
        var_1 = _func_11A( level._ID794._ID740 - self._ID740 );
        var_2 = var_1[1];
        var_3 = self._ID65[1];
        var_4 = _func_11F( ( 0, var_2, 0 ) );
        var_5 = _func_11F( ( 0, var_3, 0 ) );
        var_6 = _func_0FB( var_4, var_5 );
        var_7 = 0;

        if ( var_6 < 1 )
            var_7 = _func_0BF( var_6 );

        var_8 = var_7 * 0.025;

        if ( var_8 > 0.05 || var_0 )
        {
            if ( var_0 )
            {
                var_8 = var_7 * 0.011;
                var_0 = 0;
                self _meth_82BF( ( 0, var_2, 0 ), var_8, var_8 * 0.25, var_8 * 0.25 );
            }
            else
                self _meth_82BF( ( 0, var_2, 0 ), var_8, 0, 0 );

            wait(var_8);
            continue;
        }

        self._ID65 = ( 0, var_2, 0 );
        wait 0.05;
    }
}

_ID53181( var_0, var_1 )
{
    var_2 = [];
    var_2[var_2.size] = "tag_missle1";
    var_2[var_2.size] = "tag_missle2";
    var_2[var_2.size] = "tag_missle3";
    var_2[var_2.size] = "tag_missle4";
    var_2[var_2.size] = "tag_missle5";
    var_2[var_2.size] = "tag_missle6";
    var_2[var_2.size] = "tag_missle7";
    var_2[var_2.size] = "tag_missle8";
    var_3 = [];
    var_4 = self._ID49758;
    var_4 thread _unknown_1F8F();
    self._ID48638 _meth_8053( var_4 );
    self endon( "lose_operation" );

    for (;;)
    {
        if ( _ID42407::_ID41803( var_4._ID740, var_4._ID65, level._ID794._ID740, 0.96 ) )
            break;

        wait 0.05;
    }

    if ( _func_02F( var_0 ) )
        wait(var_0);

    var_5 = var_2;

    for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
    {
        var_6 = var_5[var_8];
        var_7 = _func_06A( "script_model", ( 0, 0, 0 ) );
        var_7._ID740 = var_4 _meth_818C( var_6 );
        var_7._ID65 = var_4 _meth_818D( var_6 );
        var_7 _meth_80B8( "projectile_slamraam_missile" );
        var_7 _meth_8053( var_4 );
        var_3[var_8] = var_7;
    }

    var_clear_3
    self._ID48638 _meth_80B7();

    for ( var_8 = 0; var_8 < 4; var_8++ )
    {
        var_6 = var_2[var_8];
        var_4 _unknown_20B8( var_6, var_3[var_8] );
    }

    if ( _func_02F( var_1 ) )
        wait(var_1);

    for ( var_8 = 4; var_8 < var_2.size; var_8++ )
    {
        var_6 = var_2[var_8];
        var_4 _unknown_20D9( var_6, var_3[var_8] );
    }
}

_ID43435( var_0, var_1 )
{
    var_2 = self _meth_818C( var_0 );
    var_3 = self _meth_818D( var_0 );
    var_4 = _func_11F( var_3 );
    _func_1C8( level._ID45432, var_2, var_2 + var_4 * 5000 );
    wait 0.05;
    var_1 _meth_80B7();
    wait 0.2;
}

_ID45107()
{
    self._ID3189 = self._ID31388;
    var_0 = self._ID740;

    if ( _func_02F( self._ID1191 ) )
    {
        var_1 = _ID42237::_ID16012();
        var_0 = var_1._ID740;
    }

    var_2 = _func_1A2( "tarp_pull_org", "targetname" );
    var_3 = _ID42237::_ID16182( var_0, var_2, 1000 );
    var_3._ID17617[var_3._ID17617.size] = self;

    if ( var_3._ID17617.size == 1 )
        return;

    var_4 = var_3._ID17617;
    _unknown_2182( var_3, var_4 );
}

_ID52511( var_0, var_1 )
{
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID49 = 1;
        var_3._ID452 = 16;
        var_3._ID507 = 1;
        var_3._ID511 = 1;
        var_3._ID49 = 1;
        var_3._ID486 = 5;
        var_3._ID706 = 1;
    }

    var_clear_2
    var_clear_0
    var_0 _ID42259::_ID3061( var_1, "pulldown" );

    if ( !var_0._ID50598 )
        return 0;

    var_1 = _ID42407::_ID29506( var_1 );
    var_1[var_1.size] = var_0._ID44386;

    if ( _func_02F( var_0._ID51921 ) )
    {
        var_5 = 0;
        var_6 = var_1;

        for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
        {
            var_3 = var_6[var_7];

            if ( _func_1A7( var_3 ) )
                var_5++;
        }

        var_clear_1
        var_clear_0

        if ( !var_5 )
            return 0;
    }

    level notify( "tarp_activate" );
    var_0 _ID42407::_ID10226( 3.15, _ID42407::_ID31877, "tarp_activate" );
    var_0._ID44386._ID53238 = 1;
    thread _unknown_227F( var_0, var_1 );
    return 1;
}

_ID52782( var_0, var_1 )
{
    thread _unknown_2299( var_1 );
    var_0 notify( "stop_idle" );
    var_0 _ID42259::_ID3109( var_1, "pulldown" );
    var_1 = _ID42407::_ID29506( var_1 );

    if ( var_1.size )
        thread _unknown_22C8( var_0, var_1 );
}

_ID48630( var_0 )
{
    wait 1.6;
    var_1 = 0;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_1A7( var_3 ) )
            return;
    }

    var_clear_2
    var_clear_0
    var_0[var_0.size - 1] _meth_814B();
}

_ID45158( var_0, var_1 )
{
    var_2 = undefined;
    var_1 = _ID42407::_ID29506( var_1 );
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_1A7( var_4 ) )
            var_4 _meth_81B2( var_4._ID740 );

        if ( var_4._ID3189 == "operator" )
            var_2 = var_4;
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_2 ) )
        var_0 thread _ID42259::_ID3044( var_2, "idle" );

    wait 3;
    var_1 = _ID42407::_ID29506( var_1 );
    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];
        var_4._ID511 = 0;
        var_4._ID452 = 750;
    }

    var_clear_1
    var_clear_0
}

_ID53012( var_0 )
{
    var_0 thread _unknown_2103( 0 );
    self endon( "death" );
    var_1 = 1.0;
    var_2 = 2.0;
    var_3 = 1;
    var_4 = var_2 - var_1;
    var_5 = var_3 * 20;
    var_6 = 0;
    var_7 = 0.35;

    for ( var_8 = 0; var_8 < var_5; var_8++ )
    {
        var_9 = var_1 + var_8 * var_4 / var_5;
        var_0 _meth_8155( level._ID49682["x_right"], 1, 10, var_9 );
        wait 0.05;
    }

    wait 10;
}

_ID48680()
{
    level._ID43958 = 0;
    level._ID12029 = ::_unknown_2459;
    _ID42237::_ID14413( "approach_dialogue" );
    var_0 = _func_1A2( "gulag_top_gate", "targetname" );
    _ID42237::_ID3294( var_0, ::_meth_82C9 );
    _ID42237::_ID3294( var_0, ::_meth_805A );
    var_1 = _func_1A2( "gulag_ring_drone", "targetname" );
    _ID42237::_ID3350( var_1, ::_unknown_2495 );
    var_2 = _func_1A2( "gulag_top_drone", "targetname" );
    _ID42237::_ID3350( var_2, ::_unknown_24AC );
}

_ID50544()
{
    var_0 = _func_1A1( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_0 _unknown_24B1();
    wait 0.3;
    var_0 _unknown_24BB();
    wait 0.2;
    var_0 _unknown_24C5();
    wait 0.4;
    var_0 _unknown_24CE();
    wait 0.1;
    var_0 _unknown_24D8();
    wait 0.2;
    var_0 _unknown_24E2();
}

_ID43487()
{
    var_0 = 56;

    if ( _func_03A( "r_gulag_lessdrones" ) )
        var_0 = 10;

    if ( level._ID43958 >= var_0 )
        return;

    self._ID216 = 1;
    _ID42407::_ID35014();
}

_ID47562()
{
    level._ID43958++;
    _unknown_2516();
    level._ID43958--;
}

_ID53390()
{
    self waittill( "goal" );
    self _meth_80B7();
}

_ID46204()
{
    _unknown_253F( 1, 3 );
}

_ID52422()
{
    _unknown_2548( 1, 3 );
}

_ID49782()
{
    self endon( "death" );
    level waittill( "stop_gulag_drones" );
    wait(_func_0BA( 1, 6 ));
    self _meth_8058();
}

_ID44839( var_0, var_1 )
{
    _ID42407::_ID1947( ::_unknown_2560 );
    level endon( "stop_gulag_drones" );

    for (;;)
    {
        var_2 = _func_0B9( var_0, var_1 );

        for ( var_3 = 0; var_3 < var_2; var_3++ )
        {
            _ID44839();
            wait(_func_0BA( 0.4, 0.7 ));
        }

        wait(var_2 * 2);
    }
}

_ID54648( var_0 )
{
    var_1 = level._ID11390;
    var_2["nearStart"] = 1;
    var_2["nearEnd"] = 1;
    var_2["nearBlur"] = 4;
    var_2["farStart"] = 5000;
    var_2["farEnd"] = 10000;
    var_2["farBlur"] = 2;

    for (;;)
    {
        _ID42407::_ID46938( var_1, var_2, var_0 );
        _ID42237::_ID14413( "clear_dof" );
        _ID42407::_ID46938( var_2, var_1, 1 );
        _ID42237::_ID14426( "clear_dof" );
    }
}

_ID54277()
{
    _ID42237::_ID14413( "blow_up_first_tower_soon" );
    wait 1.5;
    _ID42237::_ID14402( "control_tower_event" );
    wait 0.15;
    _ID42234::_ID13611( "tower_explosion" );
    wait 0.15;
    _ID42234::_ID13611( "tower_explosion_fx" );
}

_ID49141()
{
    _ID42237::_ID14413( "remove_rpgs" );
    var_0 = _func_1A1( "tower_height_ent", "targetname" );
    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID6323 = 0;
        var_3._ID7._ID30103 = 0;

        if ( var_3._ID740[2] > var_0._ID740[2] )
        {
            _ID45456::_ID54623( var_3 );
            var_3 _meth_8058();
        }
    }

    var_clear_2
    var_clear_0
}

_ID50055( var_0, var_1 )
{
    var_2 = _func_0C8( var_0, var_1 );
    var_3 = [];

    for (;;)
    {
        var_3[var_3.size] = var_2;

        if ( !_func_02F( var_2._ID1191 ) )
            break;

        var_2 = _func_0C8( var_2._ID1191, var_1 );
    }

    return var_3;
}

_ID47897( var_0, var_1 )
{
    level notify( "new_ai_move_command" );
    level endon( "new_ai_move_command" );
    var_2 = _unknown_2713( var_1, "targetname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( var_3 >= var_2.size )
            break;

        var_4 = var_0[var_3];
        var_5 = var_2[var_3];

        if ( !_func_1A7( var_4 ) )
            continue;

        var_4 _meth_81B1( var_5 );
        var_4._ID452 = 64;
        wait(_func_0BA( 0.1, 0.25 ));
    }
}

_ID53391( var_0 )
{
    var_1 = _unknown_2A5C();
    _unknown_276C( var_1, var_0 );
}

_ID54363()
{
    level notify( "new_ai_move_command" );
    var_0 = _func_1A1( "friendly_reinforcement_trigger", "targetname" );
    var_0 thread _unknown_2829();
    var_1 = _unknown_2783( "control_room_chain", "targetname" );
    level._ID48088 = var_1;
    var_2 = _func_0DE( "allies" );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_4 = var_1[var_3];
        var_4._ID54258 = 0;

        if ( var_3 >= 1 && var_3 <= 4 )
            var_4._ID53545 = 1;
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_1[var_3];
        var_4._ID54258 = 1;
        var_2[var_3] thread _unknown_2823( var_4 );
    }
}

_ID51262( var_0 )
{
    var_0._ID54258 = 1;
    self _meth_81B1( var_0 );
    self _meth_81B7();
    self._ID452 = 64;
    self._ID381 = 1;
    self._ID53545 = var_0._ID53545;

    if ( _func_02F( self._ID53545 ) )
    {
        self endon( "death" );
        self waittill( "goal" );
        self._ID511 = 1;
        self._ID11575 = 1;
    }
}

_ID44794()
{
    var_0 = _unknown_2B15();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID22746 ) )
            return var_2;
    }

    var_clear_2
    var_clear_0
}

_ID49900( var_0 )
{
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID22746 ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID48059( var_0 )
{
    level notify( "new_ai_move_command" );

    if ( !_func_02F( var_0 ) )
        var_0 = level._ID52683;

    level._ID52683 = var_0;
    var_1 = _func_0C9( "cell_goalnode", "targetname" );
    var_2 = undefined;
    var_3 = var_1;

    for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
    {
        var_2 = var_3[var_4];

        if ( var_2._ID31238 == var_0 )
            break;
    }

    var_clear_1
    var_clear_0
    var_5 = _func_1A1( var_2._ID1191, "targetname" );
    var_6 = _unknown_2BBC();
    var_7 = var_6;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_8 _meth_81B1( var_2 );
        var_8._ID381 = 0;
        var_8._ID452 = var_2._ID851;
        var_8 _meth_81B4( var_5 );
    }

    var_clear_2
    var_clear_0
}

_ID46588()
{
    self waittill( "trigger" );
    var_0 = _func_0DE( "allies" );
    var_1 = _func_1A2( self._ID1191, "targetname" );
    var_2 = 0;

    for ( var_3 = var_0.size; var_3 < 7; var_3++ )
    {
        var_4 = var_1[var_2];
        var_4 _ID42407::_ID35014();
        var_2++;

        if ( var_2 >= var_1.size )
            return;
    }
}

_ID46606( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = undefined;
    var_3 = undefined;
    var_4 = [];
    var_5 = var_1;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( var_6._ID172 == "script_brushmodel" )
        {
            var_2 = var_6;
            continue;
        }

        if ( var_6._ID172 == "script_model" )
        {
            var_4[var_4.size] = var_6;
            continue;
        }

        if ( var_6._ID172 == "script_origin" )
            var_3 = var_6;
    }

    var_clear_2
    var_clear_0
    var_8 = [];
    var_9 = var_4;

    for ( var_12 = _func_1DA( var_9 ); _func_02F( var_12 ); var_12 = _func_1BF( var_9, var_12 ) )
    {
        var_10 = var_9[var_12];
        var_11 = [];
        var_11["origin"] = var_10._ID740;
        var_11["angles"] = var_10._ID65;
        var_11["model"] = var_10._ID669;
        var_8[var_12] = var_11;
        var_10 _meth_80B7();
    }

    var_clear_3
    _ID42237::_ID14413( "gulag_cell_doors_enabled" );
    var_13 = var_8;

    for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
    {
        var_11 = var_13[var_14];

        if ( var_11["model"] != "metal_prison_door" && var_11["model"] != "h2_gulag_prison_door_sliding" )
            continue;

        var_10 = _func_06A( "script_model", ( 0, 0, 0 ) );
        var_10._ID740 = var_11["origin"];
        var_10._ID65 = var_11["angles"];
        var_10 _meth_80B8( var_11["model"] );
        var_10 _meth_8053( var_2 );
    }

    var_clear_1
    var_clear_0
    var_2._ID25988 = var_3;
    var_15 = _func_1A2( "door_light", "targetname" );
    var_16 = _ID42237::_ID15566( var_2._ID740, var_15, undefined, 2, 100 );
    var_2._ID22343 = [];

    for ( var_17 = 0; var_17 < var_16.size; var_17++ )
    {
        var_18 = var_16[var_17];
        var_2._ID22343[var_2._ID22343.size] = var_18;
        var_18._ID1193 = undefined;
    }

    var_2 thread _unknown_2BF4();
}

_ID44264()
{
    var_0 = _func_1A2( "cell_door_weapons", "targetname" );
    var_1 = var_0[0]._ID740;
    wait 1.2;
    _ID42407::_ID10226( 1.8, _ID42237::_ID14402, "open_cell_door_weapons" );
    wait 2.9;
}

_ID52703( var_0 )
{
    _ID42237::_ID14402( "armory_attack_sounds" );
    thread _ID42237::_ID27077( "scn_gulag_jail_door_buzzer", level._ID794._ID740 + ( 0, var_0, 500 ) );
    wait 1.2;
    thread _ID42237::_ID27077( "scn_gulag_jail_door_unlock", level._ID794._ID740 + ( 0, var_0, 500 ) );
    thread _ID42237::_ID27077( "scn_gulag_armory_door_open", level._ID794._ID740 + ( 0, var_0, 500 ) );
    wait 2.0;
    thread _ID42237::_ID27077( "scn_gulag_jail_door_unlock", level._ID794._ID740 + ( 0, var_0, 500 ) );
    thread _ID42237::_ID27077( "scn_gulag_armory_door_open", level._ID794._ID740 + ( 0, var_0, 500 ) );
}

spawn_light_fx( var_0, var_1 )
{
    var_2 = _func_15B( var_0, var_1 );
    _func_15C( var_2 );
    return var_2;
}

_ID47917()
{
    _ID42237::_ID14400( "open_" + self._ID1193 );
    self._ID8154 = 1;
    self._ID35908 = self._ID740;
    var_0 = _func_11F( self._ID25988._ID65 );
    var_1 = _func_11E( self._ID25988._ID65 );
    var_2 = 3;
    var_3 = 0.5;
    var_4 = 0.2;

    if ( self._ID22343.size )
    {
        var_5 = self._ID22343;

        for ( var_9 = _func_1DA( var_5 ); _func_02F( var_9 ); var_9 = _func_1BF( var_5, var_9 ) )
        {
            var_6 = var_5[var_9];
            var_7 = _func_11D( var_6._ID65 );
            var_6._ID54492 = var_6._ID740 + var_7 * 8;

            if ( var_6._ID669 != "h1_cs_light_alarm_on" )
                var_6 _meth_80B8( "h1_cs_light_alarm_on" );

            var_8 = _unknown_3B81( "light_red_steady_FX_origin_int" );
            var_6._ID22654 = _unknown_2D23( var_8, var_6._ID54492 );
        }

        var_clear_4
        var_clear_0
    }

    self _meth_805E();
    var_10 = self._ID740 + var_1 * 128 + var_0 * -64 + ( 0, 0, 32 );

    for (;;)
    {
        _ID42237::_ID14413( "open_" + self._ID1193 );
        thread _ID42237::_ID27077( "scn_gulag_jail_door_buzzer", var_10 );
        _ID42407::_ID10226( 1.2, _ID42237::_ID27077, "scn_gulag_jail_door_unlock", self._ID740 );

        if ( self._ID22343.size )
        {
            var_11 = self._ID22343;

            for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
            {
                var_6 = var_11[var_12];
                var_6 _meth_80B8( "h1_cs_light_alarm_blue_on" );
                var_8 = _unknown_3C04( "light_blue_steady_FX_origin_int" );
                var_6._ID22654 _meth_80B7();
                var_6._ID22654 = _unknown_2DAD( var_8, var_6._ID54492 );
            }

            var_clear_1
            var_clear_0
        }

        wait 2;

        if ( self._ID1193 == "cell_door_weapons" )
        {
            self _meth_80A1( "scn_gulag_armory_door_open" );
            self _meth_82B8( self._ID35908 + var_0 * 16, var_2 * 0.25, var_3, 0 );
            wait(var_2 * 0.25);
            self _meth_80A1( "door_bounce" );
            _ID42234::_ID13611( "door_dies" );
            _ID42407::_ID10226( 1, _ID42234::_ID13611, "door_dies" );
            _ID42407::_ID10226( 1.3, _ID42234::_ID13611, "door_dies" );
            _ID42407::_ID10226( 2, _ID42234::_ID13611, "door_dies" );
            var_13 = self._ID22343;

            for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
            {
                var_6 = var_13[var_14];
                var_6 _meth_80B8( "h1_cs_light_alarm_blue" );

                if ( _func_02F( var_6._ID22654 ) )
                    var_6._ID22654 _meth_80B7();
            }

            var_clear_1
            var_clear_0

            if ( _func_02F( self._ID22654 ) )
                self._ID22654 _meth_80B7();

            wait 1;
            var_15 = self._ID22343;

            for ( var_16 = _func_1DA( var_15 ); _func_02F( var_16 ); var_16 = _func_1BF( var_15, var_16 ) )
            {
                var_6 = var_15[var_16];
                var_6 thread _unknown_2F95();
            }

            var_clear_1
            var_clear_0
            _ID42407::_ID10226( 1, _ID42234::_ID13611, "door_dies" );
            _ID42407::_ID10226( 1.3, _ID42234::_ID13611, "door_dies" );
            _ID42407::_ID10226( 2, _ID42234::_ID13611, "door_dies" );
            level waittill( "force_door_open" );
            var_17 = self._ID22343;

            for ( var_18 = _func_1DA( var_17 ); _func_02F( var_18 ); var_18 = _func_1BF( var_17, var_18 ) )
            {
                var_6 = var_17[var_18];
                var_6 notify( "stop_flickering" );
                var_6 _meth_80B8( "h1_cs_light_alarm_blue_on" );

                if ( _func_02F( var_6._ID22654 ) )
                    var_6._ID22654 _meth_80B7();

                var_8 = _unknown_3D4C( "light_blue_steady_FX_origin_int" );
                var_6._ID22654 = _unknown_2EEF( var_8, var_6._ID54492 );
            }

            var_clear_1
            var_clear_0
            self _meth_80A1( "scn_gulag_armory_door_open2" );
            self _meth_82B8( self._ID35908 + var_0 * 48, var_2 * 0.75, var_3, 0 );
            wait(var_2 * 0.75);
        }
        else
        {
            self _meth_80A1( "scn_gulag_jail_door_open" );
            self _meth_82B8( self._ID35908 + var_0 * 64, var_2, var_3, var_4 );
            wait(var_2);
        }

        self _meth_805F();
        level notify( "opened_" + self._ID1193 );
        level notify( "cell_door_opens" );
        _ID42237::_ID14426( "open_" + self._ID1193 );
        var_19 = self._ID22343;

        for ( var_20 = _func_1DA( var_19 ); _func_02F( var_20 ); var_20 = _func_1BF( var_19, var_20 ) )
        {
            var_6 = var_19[var_20];
            var_6 _meth_80B8( "h1_cs_light_alarm_on" );
            var_8 = _unknown_3DE0( "light_red_steady_FX_origin_int" );
            var_6._ID22654 _meth_80B7();
            var_6._ID22654 = _unknown_2F89( var_8, var_6._ID54492 );
        }

        var_clear_3
        var_clear_0
        wait 0.5;
        self _meth_82B8( self._ID35908, var_2, var_3, var_4 );
        wait(var_2);
        self _meth_805E();
    }
}

_ID49573( var_0 )
{
    var_0 = 0.5;
    var_1 = var_0 * 20;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        self _meth_80B8( "h1_cs_light_alarm_blue_on" );
        wait 0.055;
        self _meth_80B8( "h1_cs_light_alarm_blue" );
        wait 0.095;

        if ( _func_0B7( 100 ) > 75 )
            _ID42234::_ID13611( "door_dies" );
    }
}

_ID45239()
{
    self endon( "stop_flickering" );
    var_0 = _ID42237::_ID16299( "dlight_blue_flicker" );

    for (;;)
    {
        self._ID22654 = _unknown_3003( var_0, self._ID54492 );
        _unknown_3118( 0.5 );
        self._ID22654 _meth_80B7();
        wait 1.3;
        self._ID22654 = _unknown_301E( var_0, self._ID54492 );
        _unknown_3133( 0.35 );
        self._ID22654 _meth_80B7();
        wait 0.7;
        self._ID22654 = _unknown_3039( var_0, self._ID54492 );
        _unknown_314E( 1.1 );
        self._ID22654 _meth_80B7();
        wait 1.4;
        self._ID22654 = _unknown_3054( var_0, self._ID54492 );
        _unknown_3169( 0.5 );
        self._ID22654 _meth_80B7();
        wait 0.9;
    }
}

_ID54410()
{
    level endon( "stop_cellblock_respawn" );
    level._ID53405 = _func_1A1( "friendly_cellblock_spawner", "targetname" );

    for (;;)
    {
        _ID42237::_ID14413( "cellblock_respawn" );

        for (;;)
        {
            wait 1;

            if ( !_ID42237::_ID14385( "cellblock_respawn" ) )
                break;

            if ( _func_0DE( "allies" ).size >= 7 )
                continue;

            var_0 = level._ID53405;
            var_0._ID216 = 1;
            var_1 = var_0 _ID42407::_ID35014();
            var_1 _meth_8170( 1 );
        }
    }
}

_ID47038( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = undefined;
    var_3 = undefined;
    var_4 = [];
    var_5 = var_1;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( var_6._ID172 == "script_brushmodel" )
        {
            var_2 = var_6;
            continue;
        }

        if ( var_6._ID172 == "script_model" )
        {
            var_4[var_4.size] = var_6;
            continue;
        }

        if ( var_6._ID172 == "script_origin" )
            var_3 = var_6;
    }

    var_clear_2
    var_clear_0
    var_8 = var_4;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_9 _meth_8053( var_2 );
    }

    var_clear_2
    var_clear_0
    var_2 _meth_8053( var_3 );
    var_3 _meth_82C1( -115, 5, 0, 3 );
}

_ID53292()
{
    var_0 = _func_0DE( "allies" );
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID53545 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID49713()
{
    var_0 = _unknown_331D();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID465 = 0;
    }

    var_clear_2
    var_clear_0
    wait 3;
    var_0 = _unknown_3343();
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2._ID465 = 0.9;
    }

    var_clear_1
    var_clear_0
}

_ID48367()
{
    var_0 = _func_0C8( "rappel_room_node", "targetname" );
    self _meth_81B7();
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self._ID381 = 0;
}

_ID53804()
{
    var_0 = _func_0DE( "axis" );

    if ( var_0.size )
    {
        var_1 = var_0;

        for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
        {
            var_2 = var_1[var_4];
            var_3 = _func_0B8( 2 );
            var_2 _ID42237::_ID10192( var_3, ::_meth_8058 );
        }

        var_clear_3
        var_clear_0
        wait 4;
    }
}

_ID47810()
{
    var_0 = _func_1A1( "h2_rappel_node", "targetname" );
    self._ID381 = 1;
    _unknown_4186();
    var_0 _ID42259::_ID3074( self, "rappel_start" );
    self._ID48569 = 1;
    level._ID47292 _meth_8059();
    var_1 = [];
    var_1["rope"] = level._ID47292;
    var_1["soap"] = self;
    var_1["object"] = level._ID48016;
    var_0 _ID42259::_ID3099( var_1, "rappel_start" );
    _ID42407::_ID32315( "green" );
    _ID42407::_ID12445();
    self._ID48569 = undefined;
}

_ID48873()
{
    var_0 = _func_1A5();
    var_0._ID43342 = level._ID52019;
    var_0._ID30179 = level._ID51418;
    var_0._ID44420 = "player_rappels";
    var_0._ID43342 _meth_8059();
    var_0._ID54415 = _func_1A1( "h2_rappel_node", "targetname" );
    var_0._ID49871 = "rappel_start";
    _unknown_34D2( var_0 );
    _ID42237::_ID14402( "cellblock_player_starts_rappel" );
    wait 1.8;
    _ID42407::_ID28864( "gulag_tf1_captainlastfloor" );
}

_ID45782( var_0 )
{
    var_1 = _func_1A1( "rappel_trigger", "script_noteworthy" );
    var_1 thread _ID42237::_ID44574( level._ID794, &"GULAG_RAPPEL_HINT", &"GULAG_RAPPEL_HINT_PC", "trigger" );
    _ID42237::_ID14413( var_0._ID44420 );
    var_1 _meth_80B7();

    if ( level._ID794 _meth_8188() != "stand" )
    {
        level._ID794 _meth_8189( "stand" );

        if ( level._ID794 _meth_834C() )
            wait 0.4;
    }

    if ( _func_02F( var_0._ID43342 ) )
        var_0._ID43342 _meth_80B7();

    var_0._ID30179 _meth_8059();
    _ID42407::_ID50742();
    var_2 = _ID42407::_ID35028( "player_rappel", var_0._ID54415._ID740 );
    var_3 = [];
    var_3[0] = var_0._ID30179;
    var_3[1] = var_2;
    level._ID44861 = _func_03D();
    var_0._ID54415 thread _ID42259::_ID3099( var_3, var_0._ID49871 );
    var_0._ID54264 = _func_067( var_2 _ID42407::_ID16120( var_0._ID49871 ) );
    level._ID794 _ID42237::_ID10192( var_0._ID54264 - 0.35, ::_meth_8055 );
    level._ID794 _ID42237::_ID10192( var_0._ID54264 - 0.35, ::_meth_8329 );
    level._ID794 _ID42237::_ID10192( var_0._ID54264 - 0.35, ::_meth_8122, 1 );
    level._ID794 _ID42237::_ID10192( var_0._ID54264 - 0.35, ::_meth_8123, 1 );
    level thread _ID42407::_ID25088( "spotlights_off", var_0._ID54264 );
    _func_0DB( "actionSlotsHide", 1 );
    _func_032( "ui_expireHUD", 1 );
    _ID42237::_ID24938( var_0._ID54264, ::_func_0DB, "actionSlotsHide", 0 );
    _ID42237::_ID24938( 3, ::_func_31B, 6 );
    _ID42237::_ID24938( var_0._ID54264, ::_func_31C, 4 );
    var_2 _ID42237::_ID10192( var_0._ID54264, ::_meth_80B7 );
    thread _unknown_3699( var_2 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_8328();
    level._ID794 _meth_8087( var_2, "tag_player", 0.5, 0.2, 0.2 );
}

_ID54607( var_0 )
{
    var_1 = _ID54167::_ID43386( "rappel" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 5.0, 5.0, "rappel" ) _ID54167::_ID45145( 1, "rappel" ) _ID54167::_ID52391( var_0, "tag_dof", "rappel" ) _ID54167::_ID44545( 1.0, "rappel" ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 7.5 ) _ID54167::_ID50321( 12.0, -1, 5.0, 5.0, "rappel" );
    var_1 _ID54167::_ID48800( 9.0 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.5 ) _ID54167::_ID47844( 2 );
    var_1 _ID54167::_ID48800( 8.65 ) _ID54167::_ID47844( 0 );
    var_1 _ID54167::_ID48800( 1.4 ) _ID54167::_ID48161( "damage_light" );
    var_1 _ID54167::_ID48800( 6.1 ) _ID54167::_ID48161( "damage_light" );
    var_1 _ID54167::_ID48800( 7.3 ) _ID54167::_ID48161( "damage_heavy" );
    var_1 _ID54167::_ID48166();
}

_ID47811()
{
    var_0 = self _meth_8317();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        self _meth_8320( var_2 );
        break;
    }

    var_clear_1
    var_clear_0
}

_ID53146()
{
    var_0 = _func_1A1( "h2_rappel_node", "targetname" );
    level._ID47292 = _ID42407::_ID35028( "ai_rope" );
    var_1 = [];
    var_1[0] = level._ID47292;
    var_0 _ID42259::_ID3016( var_1, "rappel_start" );
    level._ID51418 = _ID42407::_ID35028( "player_rope" );
    level._ID52019 = _ID42407::_ID35028( "player_rope_obj" );
    level._ID52019 _meth_805A();
    var_0 _ID42259::_ID3018( level._ID51418, "rappel_start" );
    var_0 _ID42259::_ID3038( level._ID52019, "rappel_start" );
    level._ID47292 _meth_805A();
    level._ID51418 _meth_805A();
    level._ID48016 = _ID42407::_ID35028( "rappel_obj" );
    var_0 _ID42259::_ID3018( level._ID48016, "rappel_start" );
}

_ID54691()
{
    if ( _ID42407::_ID20614() )
        return;

    level._ID43135.greenberet_disabled = undefined;
    level._ID794 _meth_8319( "m14_scoped_arctic" );
    level._ID794 _meth_834F( "fraggrenade" );
    level._ID794 _meth_8319( "fraggrenade" );
    level._ID794 _meth_8324( "flash_grenade" );
    level._ID794 _meth_8319( "flash_grenade" );
    level._ID794 _meth_834E( "viewhands_udt" );

    if ( _ID42407::_ID20505() || level._ID35897 == "approach" )
    {
        level._ID794 _meth_8320( "m14_scoped_arctic" );
        thread _ID49347::weapons_specialfeatures();
        return;
    }

    if ( level._ID35897 == "perimeter" )
    {
        level._ID794 _meth_8319( "m4m203_reflex_arctic" );
        level._ID794 _meth_8320( "m4m203_reflex_arctic" );
        thread _ID49347::weapons_specialfeatures();
        return;
    }

    level._ID794 _meth_8313( 1, "nightvision" );
    level._ID794 _meth_8319( "claymore" );
    level._ID794 _meth_8313( 4, "weapon", "claymore" );
    level._ID794 _meth_833D( "claymore" );
    level._ID794 _meth_8319( "m4m203_reflex_arctic" );
    level._ID794 _meth_8320( "m4m203_reflex_arctic" );
    thread _ID49347::weapons_specialfeatures();
}

_ID46525( var_0, var_1 )
{
    var_2 = _ID42237::_ID15566( var_1, var_0, undefined, 3, 750 );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 thread _ID42237::_ID1792();
        wait 0.05;
    }

    var_clear_2
    var_clear_0
}

_ID44266()
{
    thread _unknown_3A04();
    self._ID512 = 1;
    self._ID1060 = 0;

    for (;;)
    {
        self waittill( "damage",  var_6, var_5, var_4, var_3, var_2, var_1, var_0  );

        if ( !_func_1A7( var_1 ) )
            continue;

        if ( var_1 == level._ID794 )
            _ID42237::_ID14402( "force_bhd_start" );

        if ( !_func_1A7( self ) )
            return;
    }
}

_ID50773()
{
    self endon( "death" );
    _ID42237::_ID14413( "overlook_attack" );
    self._ID1204 = 1500;
}

_ID43126()
{
    _ID42237::_ID14413( "force_bhd_start" );
    thread _unknown_3BCB();
    wait 3;
    var_0 = _ID42411::_ID35200( "bhd_spawner" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_8155( level._ID30895["littlebird"]["bhd_spawner_additive"] );
    }

    var_clear_2
    var_clear_0
}

_ID47457()
{
    if ( _ID42237::_ID14385( "overlook_cleared" ) )
        return;

    self _meth_829C( 80, 60, 60, 0 );
    self _meth_82A0( 1 );
    var_0 = _ID42237::_ID16638( "bhd_heli_rotate_node", "script_noteworthy" );
    var_1 = var_0._ID65[1];
    _ID42234::_ID13611( 3501 );
    thread _unknown_500F();
    var_2 = _ID42407::_ID15714( "110" );
    var_3 = var_2;

    for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
    {
        var_0 = var_3[var_4];
        var_0._ID740 = var_0._ID40005["origin"];
    }

    var_clear_1
    var_clear_0
    thread _unknown_3BB2( self );
    wait 3;
    _ID42407::_ID10226( 6, _ID42407::_ID21257, "overlook_cleared", 2 );
    wait 8;
    _ID42234::_ID13611( "3500" );
    wait 2.5;
    _ID42237::_ID14402( "stop_shooting_right_side" );
    self._ID23512[0] _meth_806C( "auto_nonai" );
    self._ID23512[1] _meth_806C( "manual" );
    self _meth_8266( var_1 + 30 );
    var_5 = _func_0DE( "axis" );
    var_6 = 1;
    var_7 = undefined;
    var_8 = var_5;

    for ( var_11 = _func_1DA( var_8 ); _func_02F( var_11 ); var_11 = _func_1BF( var_8, var_11 ) )
    {
        var_9 = var_8[var_11];
        var_10 = _ID42407::_ID15689( self._ID740, ( 0, var_1 + 30, 0 ), var_9._ID740 );

        if ( var_10 >= var_6 )
            continue;

        var_6 = var_10;
        var_7 = var_9;
    }

    var_clear_3
    var_clear_0

    if ( _func_02F( var_7 ) )
    {
        var_12 = self._ID23512;

        for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
        {
            var_13 = var_12[var_14];
            var_13 _meth_810F( var_7 );
        }

        var_clear_2
        var_clear_0
    }

    wait 4;
    thread _unknown_3C5D( var_1 + 40 );
    wait 9;
    self._ID1204 = 0;
    _ID42237::_ID14402( "bhd_heli_flies_off" );
    var_15 = self._ID23512;

    for ( var_16 = _func_1DA( var_15 ); _func_02F( var_16 ); var_16 = _func_1BF( var_15, var_16 ) )
    {
        var_13 = var_15[var_16];
        var_13 _meth_8166();
    }

    var_clear_2
    var_clear_0
}

_ID45120( var_0 )
{
    level endon( "stop_shooting_right_side" );

    if ( _ID42237::_ID14385( "stop_shooting_right_side" ) )
        return;

    _unknown_3CAB( var_0 );
}

_ID43015( var_0 )
{
    level endon( "bhd_heli_flies_off" );

    if ( _ID42237::_ID14385( "bhd_heli_flies_off" ) )
        return;

    _unknown_3CC3( var_0 );
}

_ID54049( var_0 )
{
    var_1 = 12;

    for (;;)
    {
        self _meth_8266( var_0 - var_1 );
        wait 1.5;
        self _meth_8266( var_0 + var_1 );
        wait 1.5;
    }
}

_ID50167( var_0 )
{
    var_1 = _ID42237::_ID16640( "heli_grenade_struct", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID1210 = 0;
    }

    var_clear_2
    var_clear_0
    var_5 = 1;
    var_6 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_6._ID31232 = 1;
    var_7 = _func_1A1( "h2_gulag_littlebird_break_a", "script_noteworthy" );
    var_6 _meth_8053( var_7, "tag_gun_aim", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    self._ID23512[0] thread _unknown_3DCA( var_0, var_5, var_6 );
    _ID42237::_ID14413( "stop_shooting_right_side" );
    var_6 _meth_80B7();
}

_ID44452()
{
    self endon( "death" );

    for (;;)
    {
        level waittill( "physics_jump",  var_0  );
        var_1 = ( 30, -30, 160 );
        _func_186( var_0, 256, 256, var_1 );
        wait 1.0;
    }
}

_ID49416()
{
    var_0 = _ID42237::_ID16640( "heli_grenade_struct", "targetname" );
    var_1 = _ID42237::_ID16299( "grenade_wood" );

    for (;;)
    {
        wait 0.05;

        if ( _ID42237::_ID14385( "stop_shooting_right_side" ) )
            break;

        if ( self _meth_80EB() )
        {
            var_2 = _ID42407::_ID15768( self._ID740, self._ID740 + self._ID409, var_0 );

            if ( var_2._ID1210 > _func_03D() )
                continue;

            var_2._ID1210 = _func_03D() + 250;
            var_3 = _ID42237::_ID28976( 8 );
            var_4 = _func_0C3( var_3[2] ) * -1;
            var_3 = ( var_3[0], var_3[1], var_4 );
            level notify( "physics_jump",  var_2._ID740  );
            wait 0.25;
        }
    }
}

_ID52887( var_0, var_1, var_2 )
{
    self _meth_806C( "manual" );
    self _meth_810F( var_2 );
    self _meth_80E9();
    var_3 = _ID42407::_ID15714( "110" );
    self._ID43488 = 1;
    self waittill( "turret_fire" );
    thread _unknown_3EF1();
    wait 0.5;
    self._ID409 = ( 0, 0, 0 );
    thread _unknown_3E97();

    for (;;)
    {
        if ( _ID42237::_ID14385( "stop_shooting_right_side" ) )
            break;

        var_4 = var_0._ID65;
        var_5 = _func_11F( var_0._ID65 );
        self._ID409 = var_5;
        var_6 = _ID42407::_ID15768( self._ID740, self._ID740 + var_5, var_3 );
        var_7 = level._ID9822["overlook_cleared"]["ai"];
        var_8 = var_7;

        for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
        {
            var_9 = var_8[var_10];

            if ( _ID42237::_ID41802( self._ID740, var_0._ID65, var_9._ID740, 0.98 ) )
            {
                _ID45456::_ID54623( var_9 );
                var_9 _meth_8058();
            }
        }

        var_clear_2
        var_clear_0
        _unknown_3E09( var_3, var_6._ID740 );
        wait 0.2;
    }

    self _meth_80EA();
    self notify( "stop_setting_off_exploders" );
}

_ID51344()
{
    _ID42237::_ID14402( "balcony_event" );
    var_0 = _func_1A1( "balcony_sandbag", "targetname" );
    var_0 _ID42407::_ID3428( "sandbag" );
    var_0 thread _ID42259::_ID3111( var_0, "destruction" );
    _ID42475::_ID34575( "start_balcony_destruction" );
}

_ID48065()
{
    _ID42407::_ID21257( "first_second_story_guys_dead", 4 );
    _ID42407::_ID28864( "gulag_lbp1_gunrun" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_lasingtarget" );
    _ID42407::_ID28864( "gulag_lbp1_gotatally" );
    _ID42237::_ID14413( "ext_progress_4" );
    _ID42237::_ID14388( "player_shot_at_m203_guys" );
    _ID42237::_ID14413( "player_shot_at_m203_guys" );

    if ( _unknown_45A2() )
        return;

    level._ID53563 _ID42407::_ID10805( "gulag_cmt_usem203" );
    _ID42407::_ID21257( "upper_balcony_deathflag", 12 );
}

_ID47364()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16299( "minigun_shell_eject" );
    self._ID43667 = 0;

    for (;;)
    {
        if ( self _meth_80EB() )
        {
            wait 2;

            for (;;)
            {
                if ( !self _meth_80EB() )
                    break;

                _func_157( var_0, self, "tag_brass" );
                thread _unknown_4094();
                wait 0.05;
            }

            wait 0.75;
            continue;
        }

        wait 0.05;
    }
}

_ID54174()
{
    if ( _func_03D() < self._ID43667 + 2500 )
        return;

    self._ID43667 = _func_03D();
    var_0 = self._ID740;
    var_0 = _ID42407::_ID32530( var_0, level._ID53563._ID740[2] );
    _ID42237::_ID27077( "scn_gulag_gattling_shells", var_0 );
}

_ID48969()
{
    wait 2;
    _ID42237::_ID14413( "overlook_cleared" );
    _ID42237::_ID14402( "overlook_cleared_with_safe_time" );
}

_ID47756()
{
    level._ID18457 = _ID42237::_ID3293( level._ID18457, self );
    _ID42237::_ID3350( self._ID23512, ::_unknown_40E2 );
    self._ID23512[1] _meth_8140( self._ID23512[0] );
    _ID42237::_ID3294( self._ID23512, ::_meth_857D, 30 );
    thread maps\gulag_aud::_ID51380();
    _ID42237::_ID14413( "bhd_attack" );
    var_0 = level._ID9822["overlook_cleared"]["ai"];
    var_1 = undefined;
    var_2 = var_0;

    for ( var_3 = _func_1DA( var_2 ); _func_02F( var_3 ); var_3 = _func_1BF( var_2, var_3 ) )
    {
        var_1 = var_2[var_3];
        break;
    }

    var_clear_1
    var_clear_0
    var_4 = self._ID23512;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 _meth_806C( "manual" );

        if ( _func_1A7( var_1 ) )
            var_5 _meth_810F( var_1 );
    }

    var_clear_2
    var_clear_0
    wait 1.5;
    self _meth_8143( "allies" );
    self._ID1204 = 1500;
    self._ID86 = 5;
    _ID42237::_ID14413( "overlook_heli_rotates" );
    thread _unknown_401D();
    _ID42237::_ID14413( "overlook_attack" );
    thread _unknown_41B4();
    wait 3;
    _ID42372::_ID21376( 0 );
    wait 15;
    var_7 = _func_1A1( "bhd_kill_trigger", "targetname" );
    var_0 = _func_0DE( "axis" );
    var_8 = var_0;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_1 = var_8[var_9];

        if ( var_1 _meth_80B0( var_7 ) )
            var_1 _meth_8058();
    }

    var_clear_1
    var_clear_0
}

_ID44119()
{
    _ID42407::_ID1801( "bhd_scene", "targetname" );
    var_0 = _func_1A1( "bhd_scene", "targetname" );
    var_0 _meth_80B7();
    _ID42407::_ID1801( "bhd_spawner_trigger", "script_noteworthy" );
}

_ID51859( var_0 )
{

}

_ID53212()
{
    return _func_1A1( "find_pow_org", "targetname" )._ID740;
}

_ID52841()
{
    return _func_1A1( "control_room_org", "targetname" )._ID740;
}

_ID48658()
{
    return _func_1A1( "cellblock_sweep_org", "targetname" )._ID740;
}

_ID49776()
{
    return _func_1A1( "pipe_breach_org", "targetname" )._ID740;
}

_ID51028()
{
    return _func_1A1( "breach_rescue_org", "targetname" )._ID740;
}

_ID52773()
{
    return _ID42237::_ID16638( "false_objective", "script_noteworthy" )._ID740 + ( 0, 0, 100 );
}

_ID43963()
{
    return _func_1A1( "evac_obj_org", "targetname" )._ID740;
}

_ID53033()
{
    self endon( "death" );
    self._ID11025 = 1;
    self._ID86 = 0;
    self._ID512 = 1;
    wait 1;
    self._ID11025 = 0;
    _ID42407::_ID1985( _ID42407::_ID1687, 8 );
    _ID42407::_ID1985( _ID42407::_ID41116, "damage" );
    _ID42407::_ID11232();
    self._ID86 = 1;
    self._ID512 = 0;
}

_ID44333()
{
    self endon( "death" );
    _ID42407::_ID17509();
    self._ID7._ID11043 = 1;
    self._ID486 = 5000;
    self waittillmatch( "single anim",  "start_ragdoll"  );
    wait 0.1;
    waitframe;
    self._ID7._ID24881 = 1;
    self _meth_8058();
}

_ID48876()
{
    self endon( "death" );
    _ID42360::_ID30024();
    wait(_func_0BA( 1.8, 2.2 ));
    _ID42360::_ID30023();
}

_ID51588()
{
    if ( self._ID834 != "mp5" || self._ID1302 != self._ID834 )
        _ID42407::_ID14803( "mp5", "primary" );

    if ( self != level._ID53563 )
    {
        var_0 = _func_1A1( "guy_riotshield", "targetname" );
        var_0._ID3189 = "shield";
        var_0 _ID42259::_ID32556();
        var_1 = _func_1A1( "node_armory_scriptedevent", "targetname" );
        var_1 _ID42259::_ID3074( self, "riotshield_pickup" );
        _ID42407::_ID12445();
        var_1 thread _ID42259::_ID3111( var_0, "guy_shield" );
        var_1 _ID42259::_ID3111( self, "riotshield_pickup" );

        if ( _func_02F( var_0 ) )
            var_0 _meth_80B7();
    }

    self._ID43647 = 1;
    self._ID1204 = self._ID1204 + level._ID54424;
    animscripts\init::_ID20021( "riotshield" );
    self._ID949 = "riotshield";
    _ID42360::_ID36741();
    self._ID452 = 64;
    self._ID465 = 0;
    animscripts\combat::_ID32834();
}

_ID48606()
{
    _ID42237::_ID14400( "hole_rappel_failsafe" );
    var_0 = _func_1A2( "ai_hole_rappel_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_44E4 );
    _ID42237::_ID14413( "hole_rappel_failsafe" );
    wait 4;
    var_0 = _func_1A2( "ai_hole_rappel_trigger", "targetname" );

    if ( !var_0.size )
        return;

    var_1 = _func_0DE( "allies" );
    var_2 = undefined;
    var_3 = var_1;

    for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
    {
        var_2 = var_3[var_4];

        if ( _func_02F( var_2._ID49640 ) )
            continue;

        break;
    }

    var_clear_1
    var_clear_0

    if ( !_func_1A7( var_2 ) )
        return;

    var_0[0] notify( "trigger",  var_2  );
}

_ID52983()
{
    var_0 = undefined;
    var_1 = self._ID31259;

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_func_1A7( var_0 ) )
            continue;

        if ( var_0._ID1194 != "allies" )
            continue;

        break;
    }

    _ID42237::_ID14402( "hole_rappel_failsafe" );
    var_0._ID49640 = 1;
    self _meth_80B7();
    var_0 endon( "death" );
    var_2 = _func_1A1( "bathroom_rappel_" + var_1, "targetname" );
    var_2 _ID42259::_ID3027( var_0, "hole_rappel_start" + var_1 );
    var_0._ID48569 = 1;
    var_0 _ID42407::_ID10226( 6.3, _ID42407::_ID3136 );
    var_0 _ID42407::_ID10226( 6.3, ::_unknown_45F1 );
    level._ID54319[var_1] = _func_03D();
    var_3 = level._ID48085[var_1];
    var_2 thread _ID42259::_ID3111( var_3, "hole_rappel_start" );
    var_2 _ID42259::_ID3020( var_0, "hole_rappel_start" + var_1 );
    var_2 thread _ID42259::_ID3111( var_3, "hole_rappel" );
    var_2 _ID42259::_ID3020( var_0, "hole_rappel" + var_1 );
    var_0 _ID42407::_ID12445();
    var_0._ID48569 = undefined;
}

_ID48749()
{
    self._ID48569 = undefined;
}

_ID51385()
{
    level._ID48085 = [];
    level._ID48085[1] = _ID42407::_ID35028( "ai_rope1" );
    level._ID48085[2] = _ID42407::_ID35028( "ai_rope2" );
    var_0 = _func_1A1( "bathroom_rappel_2", "targetname" );
    var_0 _ID42259::_ID3018( level._ID44156, "hole_rappel_start" );
    var_0 = _func_1A1( "bathroom_rappel_1", "targetname" );
    var_0 _ID42259::_ID3018( level._ID50274, "hole_rappel_start" );
}

_ID52469()
{
    var_0 = _func_1A5();
    var_0._ID30179 = level._ID48843;
    var_0._ID43342 = level._ID52706;
    var_0._ID44420 = "player_hole_rappel";
    var_0._ID43342 _meth_8059();
    var_0._ID54415 = _func_1A1( "bathroom_rappel_player", "targetname" );
    var_0._ID49871 = "hole_rappel_start";
    var_0._ID54264 = 1.55;
    _unknown_4278( var_0 );
    _ID42237::_ID14402( "player_exited_bathroom" );
}

_ID49199()
{
    level._ID28543 = self;
    self._ID3189 = "price";
    self._ID86 = 0;
    self._ID512 = 1;
    self._ID486 = 200;
    _ID42237::_ID41078( 5, "death" );

    if ( !_func_1A7( self ) )
    {
        _func_034( "ui_deadquote", "@GULAG_PRICE_KILLED" );
        return;
    }

    self notify( "saved" );
    thread _ID42407::_ID22746();
}

_ID46063()
{
    level endon( "lift_off" );

    for (;;)
    {
        _func_192( 0.2, 4, level._ID794._ID740 + _ID42237::_ID28976( 1000 ), 5000 );
        wait(_func_0BA( 6, 8 ));
    }
}

_ID48742()
{
    var_0 = level._ID35897 == "ending";
    var_1 = _func_1A1( "hookup_rope_ent", "targetname" );
    var_1._ID740 = var_1._ID740 + ( 0, 0, 12 );
    var_1 _meth_805A();
    level._ID48742 = var_1;
    var_2 = var_1._ID740;
    var_1._ID740 = var_1._ID740 + ( 0, 0, 600 );

    if ( !var_0 )
        _ID42237::_ID14413( "rope_drops_now" );

    var_1 _meth_8059();
    var_1 _meth_82B8( var_2, 1, 1, 0 );
    wait 1.1;
    var_1 _meth_80C6();
    var_1 _ID42407::_ID16953();
    var_3 = _ID42407::_ID16268( "player_ropes" );
    var_3 thread _ID42237::_ID44574( level._ID794, &"GULAG_RAPPEL_HINT", &"GULAG_RAPPEL_HINT_PC", "trigger" );
    var_4 = _ID42411::_ID35195( "escape_lift" );
    var_5 = _ID42237::_ID35164();
    var_5 _meth_8053( var_4, "tag_origin", ( 0, 0, 0 ), ( 0, 180, 0 ) );
    var_6 = _func_1A1( "evac_obj_org", "targetname" );
    var_7 = _ID42407::_ID15921( var_4, "tag_origin", ( 0, 0, -16 ) );
    var_7 _meth_810F( var_6 );
    var_8 = 1.0;
    var_9 = 10;
    var_10 = 10;
    var_11 = 10;
    var_12 = 10;
    _ID42237::_ID14413( "player_ropes" );
    level._ID794 _meth_8328();
    var_4 _meth_8289();
    level._ID794 _meth_8087( var_5, "tag_origin", 2, 1.5, 0 );
}

_ID53053()
{
    level._ID53563 = self;
    self._ID3189 = "soap";

    if ( !_func_02F( self._ID22746 ) )
        thread _ID42407::_ID22746();

    _ID42407::_ID22825();
}

_ID52628()
{
    var_0 = _func_1A1( "fly_in_attack_org", "targetname" );
    var_1 = _func_1A1( "fly_in_attack_org_end", "targetname" );
    _ID42237::_ID14413( "going_in_hot" );
    wait 3.5;
    var_2 = self._ID23512;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_80E9();
    }

    var_clear_2
    var_clear_0
    wait 4.8;
    var_5 = self._ID23512;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        var_3 _meth_810F( var_0 );
        var_3 _meth_806C( "manual" );
    }

    var_clear_1
    var_clear_0
    var_0 _meth_82B8( var_1 _meth_809C(), 3 );
    wait 3;
    _ID42411::_ID23509();
    var_7 = self._ID23512;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_3 = var_7[var_8];
        var_3 _meth_80EA();
    }

    var_clear_1
    var_clear_0
}

_ID46391()
{
    if ( _func_02F( level._ID20122 ) )
    {
        var_0 = _func_1A2( "intelligence_item", "targetname" );
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2._ID31232 = 1;
            var_2._ID530._ID31232 = 1;
        }

        var_clear_2
        var_clear_0
    }

    var_4 = _func_1A1( "interior_entity_volume", "targetname" );
    var_5 = _func_1A2();
    var_6 = [];
    var_6["script_model"] = 1;
    var_6["script_brushmodel"] = 1;
    var_6["choose_light"] = 1;
    var_6["script_vehicle_collmap"] = 1;
    var_6["info_volume_breachroom"] = 1;
    var_6["actor_ally_hero_soap_udt"] = 1;
    var_6["stage"] = 1;
    var_6["portal_group"] = 1;
    var_6["trigger_multiple_compass"] = 1;
    var_7 = var_5;

    for ( var_10 = _func_1DA( var_7 ); _func_02F( var_10 ); var_10 = _func_1BF( var_7, var_10 ) )
    {
        var_8 = var_7[var_10];

        if ( _func_1A7( var_8 ) )
            continue;

        if ( _func_02F( var_8._ID31232 ) )
            continue;

        if ( var_8._ID740[2] < 1850 )
            continue;

        if ( !_func_02F( var_8._ID170 ) )
        {
            if ( !var_8 _meth_80B0( var_4 ) )
                var_8 _meth_80B7();

            continue;
        }

        if ( _func_02F( var_6[var_8._ID170] ) )
            continue;

        if ( _func_02F( var_6[var_8._ID172] ) )
            continue;

        if ( var_8 _unknown_4B47() )
        {
            var_9 = _func_06A( "script_origin", var_8._ID740 );

            if ( !var_9 _meth_80B0( var_4 ) )
                var_8 _meth_80B7();

            var_9 _meth_80B7();
            continue;
        }

        if ( !var_8 _meth_80B0( var_4 ) )
            var_8 _meth_80B7();
    }

    var_clear_3
    var_clear_0
    var_11 = [];
    var_12 = anim._ID4941;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];

        if ( !_func_02F( var_13 ) )
            continue;

        var_11[var_11.size] = var_13;
    }

    var_clear_2
    var_clear_0
    anim._ID4941 = var_11;
}

_ID49313()
{
    if ( _func_125( self._ID172, "trigger" ) )
        return 1;

    return self._ID172 == "info_volume";
}

_ID45749()
{
    var_0 = 1;

    for (;;)
    {
        _ID42237::_ID14413( "disable_exterior_fx" );

        if ( var_0 )
        {
            var_0 = 0;
            _unknown_4B5F();
        }

        _func_052();
        _ID42237::_ID14426( "disable_exterior_fx" );
        _func_053();
    }
}

_ID54113()
{
    level endon( "player_enters_bathroom" );
    level endon( "breaching" );

    for (;;)
    {
        _ID42237::_ID14413( "player_tries_door_that_cant_open" );
        level._ID53563 _ID42407::_ID10805( "gulag_cmt_hurryup" );
        wait 6;
        _ID42237::_ID14413( "player_tries_door_that_cant_open" );
        level._ID53563 _ID42407::_ID10805( "gulag_cmt_forgetthatdoor" );
        wait 6;
    }
}

_ID53923()
{
    level endon( "breaching" );

    if ( _ID42237::_ID14385( "player_enters_bathroom" ) )
        return;

    level endon( "player_enters_bathroom" );
    _ID42237::_ID14413( "tunnel_guys_die" );
    thread _unknown_4C52();

    for (;;)
    {
        if ( !_ID42237::_ID14385( "bathroom_breach_objective_dialog" ) )
            level._ID53563 _ID42407::_ID10805( "gulag_cmt_plantbreach" );

        wait 20;
    }
}

_ID54390()
{
    var_0 = _func_0DE( "axis" );
    _ID42237::_ID3350( var_0, ::_unknown_4CA5 );
}

_ID47659()
{
    self endon( "death" );
    self._ID470 = "armory_grenade";

    for (;;)
    {
        anim._ID17424["AI_armory_grenade"] = 0;
        level._ID794._ID17424["armory_grenade"] = 0;
        self._ID464 = 5;
        _ID42407::_ID37694();
        wait 0.05;
    }
}

_ID49201()
{
    if ( _func_0B7( 100 ) > 60 )
        return;

    wait(_func_0B8( 3 ));
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_1 = _func_0BA( 11.5, 13.5 );
    _func_074( "fraggrenade", self._ID740, var_0._ID740, var_1 );
}

_ID51063()
{
    if ( _ID42237::_ID14385( "player_nears_cell_door1" ) )
        return;

    level endon( "player_nears_cell_door1" );

    for (;;)
    {
        var_0 = _func_0DE( "axis" );
        var_1 = 0;
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _func_0F3( var_3._ID740, level._ID794._ID740 ) > 600 )
                continue;

            var_1 = 1;
            break;
        }

        var_clear_2
        var_clear_0

        if ( !var_1 )
            return;

        wait 1;
    }
}

_ID47217()
{
    self _meth_8178( 0, 0 );
    self _meth_8179( 400, 800 );
}

_ID52103()
{
    _ID42237::_ID14413( "heli_strike" );
    _ID42407::_ID1805( "heli_strike_badguy_trigger" );
    var_0 = _ID42411::_ID35196( "heli_strike_heli" );
    var_1 = var_0._ID23512;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80E9();
    }

    var_clear_2
    var_clear_0
    wait 2.6;
    _ID42234::_ID13611( 110 );
}

_ID49760()
{
    self endon( "death" );
    wait(_func_0B8( 3 ));
    self._ID287 = 1;
    self _meth_8058();
}

_ID47683()
{
    self._ID1258 = 1;
}

_ID52548()
{
    self endon( "death" );
    level._ID50844 = level._ID50844 + 0.35;

    if ( level._ID50844 > 1.5 )
        level._ID50844 = 1.5;

    wait(level._ID50844);
    thread _unknown_4E6F();
    wait(_func_0BA( 2, 2.5 ));
}

_ID45308()
{
    if ( self._ID486 <= 1 )
        return;

    self._ID199 = "no_cover";
    self._ID18169 = undefined;
    self._ID9549 = ::_unknown_4E9F;
    _unknown_4EA4();
}

_ID51511()
{
    if ( self._ID486 <= 1 )
        return;

    self._ID199 = "cover";
    self._ID18169 = 1;
    self._ID9549 = undefined;
    self _meth_80BA();
}

_ID50987()
{
    if ( self._ID7._ID41701["right"] == "none" )
        return;

    if ( animscripts\shared::_ID6909() )
        _ID42407::_ID53909();
    else
        self _meth_80BA();
}

_ID46539( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_1A7( var_2 ) )
            continue;

        var_2 _unknown_4EF9();
        wait(_func_0BA( 0.5, 0.8 ));
    }

    var_clear_2
    var_clear_0
}

_ID47560()
{
    var_0 = _func_1A2( "cellblock_smoke_grenade_org", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _func_075( "smoke_grenade_american", var_2._ID740, var_2._ID740 + ( 0, 0, 20 ), 0 );
    }

    var_clear_2
    var_clear_0
}

_ID43329()
{
    self endon( "death" );
    _ID42237::_ID14413( "open_cell_door_weapons" );
    var_0 = _func_0C8( "armory_flee_node", "targetname" );
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
}

_ID43566()
{
    if ( !_func_0D6( self ) )
        return;

    if ( self._ID36736 == "riotshield" )
        return;

    self._ID199 = "ambush";
}

_ID48307()
{
    level._ID49181++;

    if ( level._ID50003 < level._ID49181 )
        level._ID50003 = level._ID49181;

    thread _unknown_4FF9();
    self waittill( "death" );
    level._ID49181--;
    level notify( "ending_flee_death" );
}

_ID53068()
{
    self endon( "death" );
    level waittill( "ending_flee_death" );
    waitframe;
    var_0 = 1 - level._ID49181 / level._ID50003;
    var_0 += 0.2;

    if ( _func_0B8( 1 ) > var_0 )
        return;

    var_1 = _func_0C8( "ending_flee_node", "targetname" );
    self _meth_81B1( var_1 );
    self._ID452 = var_1._ID851;
}

_ID53952()
{
    if ( _ID42237::_ID14385( "nvg_leave_cellarea" ) )
        return;

    level endon( "nvg_leave_cellarea" );

    if ( _ID42237::_ID14385( "checking_to_sweep_cells" ) )
        return;

    level endon( "checking_to_sweep_cells" );
    wait 5;

    for (;;)
    {
        var_0 = _func_0BA( 3, 7 );
        wait(var_0);
        _func_020( "", 2, self._ID740, 16, 64, "axis" );
    }
}

_ID52347()
{
    self._ID1194 = "team3";
    self _meth_8183( "team3" );
}

_ID52257()
{
    if ( _ID42237::_ID14385( "player_exited_bathroom" ) )
        return;

    level endon( "player_exited_bathroom" );

    if ( _ID42237::_ID14385( "bathroom_room2_enemies_dead" ) )
        return;

    level endon( "bathroom_room2_enemies_dead" );
    var_0 = _func_1A1( "bathroom_nosave_volume", "targetname" );

    for (;;)
    {
        wait 45;

        if ( !level._ID794 _meth_80B0( var_0 ) )
            _ID42407::_ID4422( "bathroom_autosave" );
    }
}

_ID43040()
{
    self endon( "death" );
    waitframe;
    self waittill( "goal" );
    var_0 = _func_1A2( self._ID31273, "script_linkname" );
    var_1 = undefined;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_1A7( var_3 ) )
            continue;

        var_1 = var_3;
        break;
    }

    var_clear_2
    var_clear_0

    if ( !_func_1A7( var_1 ) )
        return;

    self._ID452 = 128;

    for (;;)
    {
        if ( !_func_1A7( var_1 ) )
            break;

        self _meth_81B2( var_1._ID740 );
        wait 1;
    }

    self _meth_81B5( self _meth_81B6() );
}

_ID52767()
{
    if ( _ID42237::_ID14385( "bathroom_second_wave_trigger" ) )
        return;

    _ID42237::_ID14402( "bathroom_second_wave_trigger" );
    var_0 = 8;
    _ID42407::_ID10226( var_0, _ID42407::_ID1805, "bathroom_balcony_room2_trigger" );
    _ID42407::_ID1805( "bathroom_second_wave_trigger" );
}

_ID44886( var_0 )
{
    for (;;)
        wait 0.05;
}

_ID43318()
{
    level endon( "stop_moving_gulag_center" );
    var_0 = [];
    var_1 = [];
    var_1["time"] = 2;
    var_1["in"] = 0.2;
    var_1["out"] = 0.2;
    var_1["delay"] = 7;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["pre_delay"] = 4;
    var_1["time"] = 11;
    var_1["in"] = 0.2;
    var_1["out"] = 0.2;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["flag"] = "heli_rotates_to_face_center";
    var_1["time"] = 4.8;
    var_1["in"] = 2;
    var_1["out"] = 2;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["flag"] = "heli_roller_coaster";
    var_1["time"] = 1.8;
    var_1["in"] = var_1["time"] - 0.5;
    var_1["out"] = 0.5;
    var_1["delay"] = var_1["time"];
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["time"] = 2.6;
    var_1["in"] = var_1["time"] * 0.5;
    var_1["out"] = var_1["time"] * 0.5;
    var_1["delay"] = var_1["time"];
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["time"] = 1.5;
    var_1["in"] = var_1["time"] * 0.5;
    var_1["out"] = var_1["time"] * 0.5;
    var_1["delay"] = var_1["time"];
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["pre_delay"] = 3;
    var_1["flag"] = "slamraam_killed_0";
    var_1["time"] = 3;
    var_1["in"] = var_1["time"] * 0.25;
    var_1["out"] = var_1["time"] * 0.25;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["flag"] = "slamraam_killed_1";
    var_1["time"] = 3;
    var_1["in"] = var_1["time"] * 0.25;
    var_1["out"] = var_1["time"] * 0.25;
    var_0[var_0.size] = var_1;
    var_1 = [];
    var_1["flag"] = "slamraam_killed_2";
    var_1["time"] = 3;
    var_1["in"] = var_1["time"] * 0.25;
    var_1["out"] = var_1["time"] * 0.25;
    var_0[var_0.size] = var_1;
    _ID42237::_ID14413( "slamraam_gets_players_attention" );
    var_2 = _func_1A1( "gulag_center", "targetname" );
    var_3 = var_2;

    if ( !_func_02F( level._ID52235 ) )
        return;

    level._ID52235 _meth_8111();
    level._ID52235 _meth_810F( var_2 );
    level._ID46313 = [];
    var_4 = 0;

    if ( level._ID35897 == "perimeter" )
    {
        var_0[1]["time"] = 1;
        var_5 = _func_1A1( var_2._ID1191, "targetname" );
        var_3 = var_5;
        var_2._ID740 = var_3._ID740;
        var_4 = 1;
    }

    for (;;)
    {
        level._ID46313[var_4] = _func_03D();
        var_5 = _func_1A1( var_3._ID1191, "targetname" );
        var_1 = var_0[var_4];

        if ( _func_02F( var_1["flag"] ) )
            _ID42237::_ID14413( var_1["flag"] );

        if ( _func_02F( var_1["pre_delay"] ) )
            wait(var_1["pre_delay"]);

        var_2 _meth_82B8( var_5._ID740, var_1["time"], var_1["in"], var_1["out"] );

        if ( _func_02F( var_1["delay"] ) )
            wait(var_1["delay"]);

        var_3 = var_5;
        var_4++;

        if ( var_4 >= var_0.size )
            break;

        if ( !_func_02F( var_3._ID1191 ) )
            break;
    }
}

_ID54461( var_0 )
{
    self notify( "new_debug_print" );
    self endon( "new_debug_print" );

    for (;;)
        wait 0.05;
}

_ID45547()
{
    if ( _ID42237::_ID14385( "second_tower_clear" ) )
        return;

    level endon( "second_tower_clear" );
    wait 2.5;
    _ID42407::_ID28864( "gulag_rpt_stabilize2" );
    _ID42407::_ID28864( "gulag_lbp1_ready" );
    _ID42407::_ID28864( "gulag_wrm_ontarget" );
}

_ID47539()
{
    level._ID51475 = [];
    var_0 = _func_1A2( "perimeter_tarp_spawner", "targetname" );
    _ID42407::_ID3342( var_0, ::_unknown_55E0 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID53886()
{
    level._ID51475[level._ID51475.size] = self;
}

_ID51178( var_0 )
{
    var_1 = _func_1A1( "small_balcony_volume", "targetname" );
    var_2 = var_1 _ID42407::_ID15547( "axis" );

    if ( var_2.size <= 0 )
        return 1;

    var_3 = _ID42407::_ID15912();
    var_4 = var_3 _meth_831C();
    var_5 = _func_127( var_4, 0, 4 );

    if ( var_5 == "m203" )
        return 1;

    var_6 = var_3 _meth_8316();
    var_7 = var_6;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_4 = var_7[var_9];
        var_8 = var_3 _meth_8303( var_4 );

        if ( !_func_125( var_4, "m203" ) )
            continue;

        if ( var_8 > 0 )
            return 0;
    }

    var_clear_2
    var_clear_0
    return 1;
}

_ID47011()
{
    _ID42237::_ID14413( "new_friendly_helis_spawn" );
    level._ID45432 = "slamraam_missile";
    thread _unknown_56E1();
    _ID42407::_ID10226( 7, ::_unknown_5676 );
    wait 3.7;
    var_0 = _func_1A2( "intro_heli_1", "targetname" );
    var_1 = _ID42237::_ID16640( "heli_restart_path", "script_noteworthy" );
    var_2 = var_0;

    for ( var_8 = _func_1DA( var_2 ); _func_02F( var_8 ); var_8 = _func_1BF( var_2, var_8 ) )
    {
        var_3 = var_2[var_8];
        var_4 = var_3._ID740;
        var_5 = var_1;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];

            if ( var_6._ID31388 != var_3._ID31388 )
                continue;

            _unknown_459C( var_3._ID1191, var_6._ID1193 );
            var_3._ID1191 = var_6._ID1193;
            var_3._ID740 = var_6._ID740;
            break;
        }

        var_clear_3
        var_clear_1
    }

    var_clear_6
    var_clear_0
    var_0 = _func_1A2( "intro_heli_1", "targetname" );
}

_ID54640()
{
    var_0 = _func_1A2( "perimeter_slamraam", "script_noteworthy" );
    var_1 = _ID42407::_ID3310( var_0 );
    var_2 = 20;
    var_1["0"] thread _unknown_57B5( var_2 );
    var_1["1"] thread _unknown_57C1( var_2 + 5 );
    var_1["2"] thread _unknown_57CE( var_2 + 7 );
}

_ID43657( var_0 )
{
    self._ID51921 = 1;
    self._ID48638 thread _unknown_581A( self );
    self._ID50598 = 1;
    wait(var_0);
    var_1 = _ID42407::_ID3328( level._ID51475 );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID49170 ) )
            var_1[var_4] = undefined;
    }

    var_clear_2

    for (;;)
    {
        var_1 = _ID42407::_ID3328( var_1 );

        if ( !var_1.size )
            return;

        var_5 = _ID42237::_ID15566( self._ID740, var_1, undefined, 2, 1000, 0 );

        if ( var_5.size != 2 )
            return;

        var_6 = var_5;

        for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
        {
            var_3 = var_6[var_7];
            var_3._ID49170 = 1;
        }

        var_clear_1
        var_clear_0
        var_5[0]._ID3189 = "puller";
        var_5[1]._ID3189 = "operator";

        if ( _unknown_4AD9( self, var_5 ) )
        {
            if ( !self._ID50598 )
                return;

            thread _unknown_4A6B( 1.2, 0.5 );
            break;
        }

        wait 1;
    }
}

_ID52839( var_0 )
{
    self _meth_82CA( 1 );
    self._ID486 = 250;

    for (;;)
    {
        self waittill( "damage",  var_7, var_6, var_5, var_4, var_3, var_2, var_1  );

        if ( _func_1A7( var_2 ) && _func_1B3( var_2 ) )
        {
            if ( self._ID486 <= 0 )
            {
                _ID42237::_ID14402( "slamraam_killed_" + var_0._ID31388 );
                var_0._ID50598 = 0;
                _func_156( _ID42237::_ID16299( "slamraam_explosion" ), var_0._ID740 );
                var_0 notify( "lose_operation" );
                var_0._ID49758 _meth_80B7();
                var_0 thread _unknown_595B();
                self _meth_80B7();
            }
        }

        if ( !_func_02F( self ) || self._ID486 <= 0 )
            return;
    }
}

_ID46959()
{
    var_0 = 0.5;
    var_1 = self._ID44386 _ID42407::_ID16120( "pulldown" );

    if ( _func_02F( self._ID44386._ID53238 ) )
    {
        if ( self._ID44386 _meth_8159( var_1 ) >= var_0 )
            return;
    }
    else
    {
        self._ID44386._ID53238 = 1;
        thread _ID42259::_ID3111( self._ID44386, "pulldown" );
        wait 0.05;
    }

    self._ID44386 _meth_8120( var_1, var_0 );
}

_ID52004()
{
    var_0 = _func_1A2( "later_boats", "targetname" );
    _ID42237::_ID3294( var_0, ::_meth_805A );
    _ID42237::_ID14413( "new_friendly_helis_spawn" );
    var_1 = _func_1A2( "early_boats", "targetname" );
    _ID42237::_ID3294( var_1, ::_meth_80B7 );
    _ID42237::_ID3294( var_0, ::_meth_8059 );
    _ID42237::_ID14413( "pre_boats_attack" );
    var_2 = _ID42237::_ID16640( "boat_artillery", "targetname" );
    _ID42237::_ID3350( var_2, ::_unknown_5A56 );
    _ID42407::_ID10226( 10.5, _ID42237::_ID14402, "red_goes_in_for_early_landing" );
    wait 1.8;
    _ID42234::_ID13611( "boat_attack1" );
    wait 1;
    _ID42237::_ID14402( "player_heli_backs_up" );
    _ID42234::_ID13611( "boat_attack_tracers" );
    _ID42234::_ID13611( "boat_attack" );
    wait 1;
    wait 1.15;
    _ID42234::_ID13611( "93" );
    _ID42237::_ID14413( "player_lands" );
    _ID42237::_ID3294( var_0, ::_meth_80B7 );
}

_ID52314()
{
    wait(_func_0B8( 1.3 ));
    var_0 = _func_11A( level._ID794._ID740 - self._ID740 );
    var_1 = _func_11F( var_0 );
    var_2 = _func_11D( var_0 );
    var_3 = _ID42237::_ID16299( "0_boat_artillery" );
    _func_156( var_3, self._ID740, var_1, var_2 );
}

_ID43779()
{
    if ( !_func_02F( level._ID49195 ) )
        level._ID49195 = [];

    for (;;)
    {
        self waittill( "trigger",  var_0  );
        var_1 = var_0._ID39468;

        if ( _func_02F( level._ID49195[var_1] ) )
            continue;

        level._ID49195[var_1] = 1;

        if ( var_0 == level._ID52066 )
            continue;

        var_0 thread _unknown_5B3B();
    }
}

_ID49587()
{
    var_0 = _ID42237::_ID16299( "smoke_swirl_runner_dual" );
    _func_157( var_0, self, "tag_origin" );
}

_ID49386()
{
    var_0 = _ID42237::_ID16299( "f15_missile" );
    _func_157( var_0, self, "tag_origin" );
    self _meth_80A1( "scn_gulag_f15_missile_fire3" );
}

_ID53175()
{
    _ID42237::_ID14413( "f15_gulag_attack" );
    var_0 = _func_1A2( "f15_gulag_attack", "targetname" );
    var_1 = _func_1A2( "f15_missile_spawner", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_unknown_5B96 );
    _ID42411::_ID35200( "f15_missile_spawner" );
    var_2 = _ID42411::_ID35196( "f15_gulag_attack" );
    var_2._ID3189 = "f15";
    var_2 _meth_80A1( "scn_gulag_f15_overhead" );
    level._ID44109 = var_2;
    var_3 = var_2 _ID42407::_ID16120( "landing_gear" );
    var_2 _meth_8155( var_3, 1, 0, 1 );
    level waittill( "f15_smoke" );
    level waittill( "afterburner" );
    var_2 thread _unknown_5C12();
}

_ID54683()
{
    maps\gulag_anim::_ID54125( self );
}

_ID47845()
{
    var_0 = _func_1A2( "extra_flyin_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID31860 );
    var_1 = _func_1A2( "heli_respawn_spawner", "script_noteworthy" );
    var_2 = _ID42237::_ID16640( "heli_landing_org", "script_noteworthy" );
    var_3 = [];
    var_4 = var_1;

    for ( var_11 = _func_1DA( var_4 ); _func_02F( var_11 ); var_11 = _func_1BF( var_4, var_11 ) )
    {
        var_5 = var_4[var_11];

        if ( _func_1A7( var_5 ) )
            continue;

        var_6 = var_5._ID740;
        var_7 = var_2;

        for ( var_10 = _func_1DA( var_7 ); _func_02F( var_10 ); var_10 = _func_1BF( var_7, var_10 ) )
        {
            var_8 = var_7[var_10];

            if ( var_8._ID31388 != var_5._ID31388 )
                continue;

            _unknown_49C3( var_5._ID1191, var_8._ID1193 );
            var_9 = var_8._ID31388;
            var_5._ID1191 = var_8._ID1193;
            var_5._ID740 = var_8._ID740;
            var_5._ID65 = var_8._ID65;
            var_3[var_3.size] = var_5;
            break;
        }

        var_clear_3
        var_clear_1
    }

    var_clear_6
    var_clear_0
    var_12 = level._ID30895["littlebird"]["respawn"];
    thread _unknown_4852( var_3, var_12 );
}

_ID46753()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_lands" );
    wait 4;
    self _meth_80B7();
}

_ID47546()
{
    _ID42237::_ID14413( "enable_interior_fx" );
    var_0 = _func_1A1( "gulag_cellblock_destructibles", "script_noteworthy" );
    var_0 _ID42407::_ID1786();
    var_0 _ID42407::_ID1794();
    var_1 = _func_1A2( "gulag_endlog_destructibles", "script_noteworthy" );
    var_2 = var_1;

    for ( var_3 = _func_1DA( var_2 ); _func_02F( var_3 ); var_3 = _func_1BF( var_2, var_3 ) )
    {
        var_0 = var_2[var_3];
        var_0 _ID42407::_ID1786();
        var_0 _ID42407::_ID1794();
    }

    var_clear_1
    var_clear_0
    var_4 = _func_1A2( "security_tv", "script_noteworthy" );
    _ID42237::_ID3350( var_4, ::_unknown_5DCC );
}

_ID49655()
{
    var_0 = undefined;

    if ( _func_02F( self._ID1191 ) )
        var_0 = _func_1A1( self._ID1191, "targetname" );

    if ( !_func_02F( var_0 ) )
        return;

    self waittill( "exploded" );
    var_0 _meth_80B7();
}

_ID49768()
{
    for (;;)
    {
        self waittill( "damage",  var_6, var_5, var_4, var_3, var_2, var_1, var_0  );

        if ( !_func_1A7( var_1 ) )
            continue;

        if ( _func_0F3( var_1._ID740, self._ID740 ) > 940 )
            continue;

        break;
    }

    var_7 = _ID42237::_ID16638( self._ID1191, "targetname" );
    _func_18F( var_7._ID740, 80, 5000, 5000 );
    self _meth_80B7();
}

_ID54146()
{
    self._ID86 = 0.25;
}

_ID44693()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_func_1A7( var_0 ) )
            continue;

        var_0._ID86 = 0;
        var_0._ID512 = 1;
    }
}

_ID53778()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_func_1A7( var_0 ) )
            continue;

        var_0._ID86 = 1;
        var_0._ID512 = 0;
    }
}

_ID45948()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_func_1A7( var_0 ) )
            continue;

        var_0._ID47260 = 1;
    }
}

_ID45819()
{
    var_0 = [];

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !_func_1A7( var_1 ) )
            continue;

        if ( _func_02F( var_0[var_1._ID39468] ) )
            continue;

        var_0[var_1._ID39468] = 1;
        var_1._ID465 = 0.9;
        var_1 _ID42407::_ID10226( 4, _ID42407::_ID10909 );
    }
}

_ID48805( var_0 )
{
    var_1 = _func_1A1( "endlog_soap_spawner", "targetname" );
    var_1._ID740 = var_0[0]._ID740;
    var_0[0] _meth_80B7();
    var_0[0] = var_1;
    return var_0;
}

_ID46248()
{
    _func_156( _ID42237::_ID16299( "sparks_e_sound" ), self._ID740 );
    self _meth_81EB( 0 );
}

_ID49016()
{
    self _meth_82CC( self._ID740 + ( 0, 0, 5 ), ( 0, 0, -5 ) );
}

_ID44373()
{
    if ( level._ID794 _meth_831C() != "riotshield" )
        return;

    level._ID794 _meth_831A( "riotshield" );
    var_0 = level._ID794 _meth_8317();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        level._ID794 _meth_8320( var_2 );
        break;
    }

    var_clear_1
    var_clear_0
    var_4 = level._ID794._ID740 + ( 0, 0, 64 );
    _func_06A( "weapon_riotshield", var_4 );
    var_5 = _func_1A2( "weapon_riotshield", "code_classname" );
    wait 0.05;
    var_6 = _ID42237::_ID16182( level._ID794._ID740, var_5 );

    for ( var_7 = 0; var_7 < 100; var_7++ )
    {
        if ( !_func_02F( var_6 ) )
            return;

        var_6._ID65 = ( 270, 180, 0 );
        wait 0.05;
    }
}

_ID53375()
{
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_calloff" );
    wait 1;
    _ID42407::_ID28864( "gulag_hqr_working" );
    _ID42407::_ID10226( 3, _ID42407::_ID28864, "gulag_hqr_loosecannon" );
    level _ID42407::_ID25088( "stop_hallway_bombardment", 6 );
}

_ID52390()
{
    var_0 = _func_1A1( "gulag_spotlight", "targetname" );
    var_0 _meth_806C( "manual" );
    var_1 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_0 _meth_810F( var_1 );
    var_2 = _ID42237::_ID16299( "_attack_heli_spotlight" );
    var_3 = "tag_light";
    _ID42407::_ID1985( _ID42237::_ID14413, "spotlight_turns_on" );
    _ID42407::_ID1918( ::_func_157, var_2, var_0, var_3 );
    _ID42407::_ID1890( _ID42237::_ID27077, "scn_gulag_spotlight_on", var_0._ID740, 1 );
    thread _ID42407::_ID11231();
    _unknown_61AE( var_1, var_0 );
    wait 2.5;
    var_1 _meth_80B7();
    _func_158( var_2, var_0, var_3 );
}

_ID50385()
{
    level._ID35473 = [];
    level._ID35473["a"] = _func_1A1( "gulag_spotlight_a", "targetname" );
    level._ID35473["b"] = _func_1A1( "gulag_spotlight_b", "targetname" );
    var_0 = level._ID35473;

    for ( var_3 = _func_1DA( var_0 ); _func_02F( var_3 ); var_3 = _func_1BF( var_0, var_3 ) )
    {
        var_1 = var_0[var_3];
        var_1 _meth_806C( "manual" );
        var_1._ID13016 = _func_1A1( var_1._ID1193, "script_noteworthy" );
        var_2 = var_1._ID1193[var_1._ID1193.size - 1];
        var_1._ID48253 = _func_1A1( "target_" + var_2 + "1", "targetname" );
        var_1 _meth_810F( var_1._ID13016 );
        var_1 _meth_8164( 45 );
        var_1._ID15142 = _ID42237::_ID16299( "jail_spotlight_gulag" );
        var_1._ID15244 = "tag_light";
        _ID42407::_ID1985( _ID42237::_ID14413, "spotlight_turns_on" );
        _ID42407::_ID1918( ::_func_157, var_1._ID15142, var_1, var_1._ID15244 );
        _ID42407::_ID1890( _ID42237::_ID27077, "scn_gulag_spotlight_on", var_1._ID740, 1 );
        var_1 _ID42407::_ID1855( ::_meth_80B8, "com_blackhawk_spotlight_on_mg_setup_3x_cold" );
        thread _ID42407::_ID11231();
    }

    var_clear_3
    var_clear_0
    level waittill( "spotlights_off" );
    var_4 = level._ID35473;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_1 = var_4[var_5];
        var_1._ID13016 _meth_80B7();
        _func_158( var_1._ID15142, var_1, var_1._ID15244 );
        var_1 _meth_80B8( "com_blackhawk_spotlight_on_mg_setup_3x_cold_off" );
    }

    var_clear_1
    var_clear_0
}

_ID48988( var_0, var_1 )
{
    level endon( "rappel_time" );
    var_2 = _func_11F( var_1._ID65 );
    var_0._ID740 = var_1._ID740 + var_2 * 500 + ( 0, 0, -500 );
    var_3 = 200;

    for (;;)
    {
        var_4 = _func_0DE( "axis" );
        var_5 = [];
        var_6 = var_4;

        for ( var_9 = _func_1DA( var_6 ); _func_02F( var_9 ); var_9 = _func_1BF( var_6, var_9 ) )
        {
            var_7 = var_6[var_9];
            var_8 = _func_0C3( var_7._ID740[2] - level._ID794._ID740[2] );

            if ( var_8 > 64 )
                continue;

            var_5[var_5.size] = var_7;
        }

        var_clear_9
        var_clear_6
        var_7 = _ID42237::_ID16182( level._ID794._ID740, var_5 );

        if ( !_func_1A7( var_7 ) )
        {
            wait 0.2;
            continue;
        }

        var_10 = _func_0F3( var_7._ID740, var_0._ID740 );
        var_11 = _ID42237::_ID28976( 25 );
        var_12 = _func_0BA( -16, 16 );
        var_11 += ( 0, 0, var_12 );
        var_13 = var_10 / var_3;
        var_14 = _func_0BA( 0.7, 1.3 );

        if ( var_13 < var_14 )
            var_13 = var_14;

        var_15 = var_7._ID740 + ( 0, 0, 40 ) + var_11;

        if ( _func_02F( level._ID51375 ) )
            var_15 = level._ID51375;

        var_0 _meth_82B8( var_15, var_13, var_13 * 0.4, var_13 * 0.4 );
        wait(var_13);
    }
}

_ID50694( var_0 )
{
    level endon( "spotlights_off" );
    self endon( "stop_searching" );
    var_1 = _func_11F( self._ID65 );
    self._ID13016._ID740 = self._ID740 + var_1 * 500 + ( 0, 0, -500 );
    var_2 = 200;

    for (;;)
    {
        var_3 = var_0 _ID42407::_ID15547( "axis" );

        if ( var_3.size > 0 )
        {
            var_4 = [];
            var_5 = var_3;

            for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
            {
                var_6 = var_5[var_8];
                var_7 = _func_0C3( var_6._ID740[2] - level._ID794._ID740[2] );

                if ( var_7 > 64 )
                    continue;

                var_4[var_4.size] = var_6;
            }

            var_clear_7
            var_clear_4
            var_6 = _ID42237::_ID16182( level._ID794._ID740, var_4 );

            if ( !_func_1A7( var_6 ) )
            {
                wait 0.2;
                continue;
            }
        }
        else
        {
            var_6 = self._ID48253;
            wait 0.2;
        }

        var_9 = _func_0F3( var_6._ID740, self._ID13016._ID740 );

        if ( var_6 != self._ID48253 )
        {
            var_10 = _ID42237::_ID28976( 25 );
            var_11 = _func_0BA( -16, 16 );
            var_10 += ( 0, 0, var_11 );
            var_12 = var_6._ID740 + ( 0, 0, 40 ) + var_10;
        }
        else
            var_12 = var_6._ID740;

        var_13 = var_9 / var_2;
        var_14 = _func_0BA( 0.7, 1.3 );

        if ( var_13 < var_14 )
            var_13 = var_14;

        self._ID13016 _meth_82B8( var_12, var_13, var_13 * 0.4, var_13 * 0.4 );
        wait(var_13);
    }
}

_ID48944()
{
    for (;;)
        wait 0.05;
}

_ID54658()
{
    self._ID86 = 0;
    var_0 = _func_1A1( "armory_clear_enemy_volume", "targetname" );
    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];

        if ( var_3 == self )
            continue;

        if ( !var_3 _meth_80B0( var_0 ) )
            continue;

        var_4 = _func_0BA( 0.5, 1.5 );
        var_3 _ID42237::_ID10192( var_4, ::_meth_8058 );
    }

    var_clear_3
    var_clear_0
}

_ID51974( var_0 )
{
    var_1 = level._ID16944[var_0];
    return level._ID1426[var_1];
}

_ID50061()
{
    level endon( "open_cell_door2" );
    var_0 = _func_1A2( "close_fighter_spawner", "targetname" );
    var_1 = _func_1A1( "door_guys_fight_vol", "targetname" );
    var_1 _ID42407::_ID41162();
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID216 = 1;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    wait 3;
    var_5 = var_0;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        var_3._ID216 = 1;
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID43130()
{
    var_0 = _ID42407::_ID16268( "player_approaches_armory" );
    level._ID51375 = var_0._ID740;
    var_1 = _func_0C8( "cellblock_delete_node", "targetname" );
    var_2 = _func_0DE( "axis" );
    _ID42237::_ID3350( var_2, ::_unknown_672D, var_1 );
}

_ID54664()
{
    var_0 = _ID42407::_ID16268( "player_approaches_armory" );
    level._ID51375 = var_0._ID740;
    var_1 = _func_0C8( "cells_last_flee_node", "targetname" );
    var_2 = _func_0DE( "axis" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( !_func_02F( var_4._ID31238 ) )
            continue;

        if ( var_4._ID31238 == "cells_north" )
            var_4 thread _unknown_6781( var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID43860( var_0 )
{
    self endon( "death" );
    var_1 = _func_0B8( 6 );
    wait(var_1);
    self _meth_81B1( var_0 );
    self._ID452 = var_0._ID851;
    self waittill( "goal" );
    self _meth_80B7();
}

_ID50467()
{
    level._ID794 endon( "death" );
    var_0 = level._ID794._ID1204;
    thread _unknown_67FF();

    for (;;)
    {
        if ( level._ID794 _meth_831C() == "riotshield" )
        {
            level._ID794._ID1204 = var_0 + 1000;
            thread _unknown_6801();
            _ID42475::_ID34575( "start_plr_shield_mix" );
        }
        else
        {
            level._ID794._ID1204 = var_0;
            _ID42475::_ID34575( "stop_plr_shield_mix" );
        }

        level._ID794 waittill( "weapon_change" );
    }
}

_ID50548()
{
    level._ID794 endon( "weapon_change" );

    for (;;)
    {
        var_0 = _func_0DE( "axis" );
        var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0, 700 );

        if ( _func_1A7( var_1 ) )
            var_1 thread _unknown_6860();

        wait 1;
    }
}

_ID51483()
{
    self endon( "death" );
    self._ID86 = 10;
    self._ID1204 = 1000;
    wait 1;
    self._ID86 = 1;
    self._ID1204 = 0;
}

_ID44011()
{
    _unknown_689C();
    _ID42298::_ID39669();
    anim._ID33782 = animscripts\utility::_ID33784;
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID4867 = 1;
    }

    var_clear_2
    var_clear_0
}

_ID44778()
{
    level endon( "run_from_armory" );

    if ( _ID42237::_ID14385( "run_from_armory" ) )
        return;

    for (;;)
    {
        level._ID794 waittill( "weapon_change" );

        if ( level._ID794 _meth_831C() != "riotshield" )
            continue;

        anim._ID33782 = ::_unknown_690E;
        level._ID794 waittill( "weapon_change" );
        _ID42298::_ID39669();
        anim._ID33782 = animscripts\utility::_ID33784;
    }
}

_ID47561( var_0 )
{
    if ( !_func_1A7( self._ID322 ) )
        return;

    if ( !_func_1A7( level._ID794 ) )
        return;

    var_1 = [];
    var_1[0] = 0.85;
    var_1[1] = 0.85;
    var_1[2] = 0.83;
    var_1[3] = 0.81;
    var_2 = var_1[level._ID15361];

    if ( self._ID322 == level._ID794 )
    {
        var_3 = level._ID794 _meth_8346();
        var_4 = _func_11F( var_3 );
        var_5 = _func_11A( self._ID740 - level._ID794._ID740 );
        var_6 = _func_11F( var_5 );

        if ( _func_0FB( var_4, var_6 ) >= var_2 )
            self._ID4867 = 5000;
        else
            self._ID4867 = 0;
    }

    animscripts\utility::_ID33784( var_0 );
}

_ID43606()
{
    if ( !_func_02F( self._ID43647 ) )
        return;

    self._ID11002 = 0;
    self._ID43647 = undefined;
    self._ID1204 = self._ID1204 - level._ID54424;
    self._ID12180 = 1;
    self._ID52 = 0;
    _ID42407::_ID10226( 8, ::_unknown_69E9 );
    self _meth_81A6( animscripts\riotshield\riotshield::_ID30015 );
    self._ID381 = 1;
}

_ID45071()
{
    self._ID642 = 0;
    _ID42407::_ID12508();
}

_ID53370()
{
    self endon( "death" );
    wait 0.05;
    self._ID4867 = 5000;
    level._ID48920[level._ID48920.size] = self;
    var_0 = self._ID851;
    self._ID50065 = 1;
    self._ID452 = 16;
    self._ID464 = 0;
    self._ID199 = "ambush";
    self _meth_81B2( self._ID740 );
    self _meth_81B7();
    self._ID43111 = 0;
    self._ID52889 = 0;
    _ID42407::_ID32226( 0 );
    _unknown_6A64();

    if ( !self._ID43111 && !self._ID52889 )
        self _meth_80B7();

    self._ID452 = var_0;
}

_ID47262()
{
    level endon( "lets_sweep_the_nvg_cells" );

    if ( _ID42237::_ID14385( "lets_sweep_the_nvg_cells" ) )
        return;

    for (;;)
    {
        if ( self _meth_81CA( level._ID794 ) )
            break;

        wait 0.05;
    }

    self._ID43111 = 1;
}

_ID46212()
{
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID86 = 0.1;
        var_2._ID630 = 100;
    }

    var_clear_2
    var_clear_0
    _unknown_6B06();
    level notify( "stop_following_node_chain" );
    var_0 = _func_0DE( "allies" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _ID42407::_ID12445();
        var_2._ID86 = 1;
        var_2._ID630 = 8192;
    }

    var_clear_1
    var_clear_0
    _ID42407::_ID1805( "nvg_hallway_fightnodes" );
}

_ID44350()
{
    if ( _ID42237::_ID14385( "nvg_leave_cellarea" ) )
        return;

    level endon( "nvg_leave_cellarea" );
    level._ID50504 = [];
    level._ID44787 = 0;
    _ID42237::_ID30398( "friendly_clears_cell_trigger", ::_unknown_6B9F );
    var_0 = _func_1A5();
    var_0._ID517 = 1;
    var_0 thread _unknown_6B94();

    for (;;)
    {
        _ID42237::_ID14413( "nvg_moveup" + var_0._ID517 );
        var_0._ID517++;

        if ( var_0._ID517 > 4 )
        {
            var_0 notify( "stop" );
            return;
        }
    }
}

_ID52160()
{
    level endon( "nvg_leave_cellarea" );
    self endon( "stop" );

    for (;;)
    {
        _ID42407::_ID1805( "friendly_nvg_cell_hall_moveup" + self._ID517 );
        wait 0.5;
    }
}

_ID45359( var_0 )
{
    self endon( "death" );
    level endon( "stop_following_node_chain" );

    if ( _ID42237::_ID14385( "nvg_leave_cellarea" ) )
        return;

    level endon( "nvg_leave_cellarea" );
    _ID42407::_ID10871();

    for (;;)
    {
        self _meth_81B1( var_0 );
        _ID42237::_ID14413( var_0._ID31190 );

        if ( !_func_02F( var_0._ID1191 ) )
            return;

        var_0 = _func_0C8( var_0._ID1191, "targetname" );
    }
}

_ID43355()
{
    if ( _ID42237::_ID14385( "nvg_leave_cellarea" ) )
        return;

    level endon( "nvg_leave_cellarea" );
    var_0 = self._ID31190;

    if ( !_func_02F( level._ID50504[var_0] ) )
        level._ID50504[var_0] = 0;

    level._ID50504[var_0]++;
    var_1 = _func_1A1( self._ID1191, "targetname" );
    var_2 = _func_0C8( self._ID1191, "targetname" );
    var_3 = undefined;

    for (;;)
    {
        self waittill( "trigger",  var_4  );

        if ( _func_02F( var_2 ) )
            var_4 thread _unknown_6C74( var_2 );

        if ( _func_02F( var_4._ID700 ) && _func_02F( var_4._ID700._ID851 ) )
            var_4._ID630 = var_4._ID700._ID851;

        var_3 = var_1 _ID42407::_ID41163();

        if ( _func_1A7( var_4 ) && var_4 _meth_80B0( self ) )
            break;
    }

    var_5 = [];
    var_5[var_5.size] = "gulag_tf2_onesempty";
    var_5[var_5.size] = "gulag_tf3_emptytoo";
    var_5[var_5.size] = "gulag_tf2_clear";
    var_5[var_5.size] = "gulag_tf3_clear";
    var_6 = var_5[level._ID44787];

    if ( var_3 )
    {
        var_6 = "gulag_tf3_clear";
        wait 0.9;
    }
    else
    {
        level._ID44787++;
        level._ID44787 = level._ID44787 % var_5.size;
    }

    thread _ID42407::_ID28864( var_6 );
    level._ID50504[var_0]--;

    if ( !level._ID50504[var_0] )
        _ID42237::_ID14402( var_0 );
}

_ID46777()
{
    _ID42237::_ID14413( "nvg_hallway_fight" );
    level._ID48920 = [];
    _ID42407::_ID3343( "hallway_hider_spawner", ::_unknown_6C9C );
    _ID42407::_ID3345( "hallway_hider_spawner" );
    _ID42237::_ID14413( "nvg_enemy_flag" );
    wait 1.5;
    var_0 = _func_1A1( "nvg_vol", "targetname" );

    for (;;)
    {
        var_0 _ID42407::_ID41163();
        wait 2.8;
        _ID42407::_ID40847( anim._ID22021["axis"], 2.5 );
        var_1 = var_0 _ID42407::_ID15547( "axis" );

        if ( !var_1.size )
            break;
    }

    _ID42237::_ID14402( "checking_to_sweep_cells" );
    var_2 = _func_0DE( "axis" );
    var_3 = [];
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_02F( var_5._ID50065 ) )
            continue;

        var_5 _meth_81B7();
        var_5 _meth_81B2( level._ID53563._ID740 );
        var_5._ID199 = "no_cover";
        var_5 _ID42407::_ID32226( 0 );
        var_5._ID464 = 0;
        var_5._ID452 = 500;
        var_3[var_3.size] = var_5;
    }

    var_clear_2
    var_clear_0
    var_7 = var_3.size;
    _ID42407::_ID41090( var_3, 0, 6 );

    if ( var_7 )
        wait 1.4;

    var_8 = 1;
    level._ID48920 = _ID42237::_ID3320( level._ID48920 );
    var_9 = level._ID48920;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_5 = var_9[var_10];

        if ( !_func_1A7( var_5 ) )
            continue;

        var_5._ID52889 = 1;
        var_8--;

        if ( !var_8 )
            break;
    }

    var_clear_1
    var_clear_0
    _ID42407::_ID10226( 1.5, _ID42237::_ID14402, "lets_sweep_the_nvg_cells" );

    if ( !_ID42237::_ID14385( "nvg_moveup1" ) )
        level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_stragglers" );
}

_ID53977()
{
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID287 = 1;
        var_2 _meth_8058();
    }

    var_clear_2
    var_clear_0
}

_ID49301()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_func_1A7( var_0 ) )
            continue;

        if ( _func_125( var_0._ID170, "riot" ) )
            break;
    }

    wait 2.5;
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_hitfromside" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_cookgrenades" );
}

_ID54694()
{
    _func_0DB( "compass", "1" );
    _func_0DB( "hud_showStance", 1 );
    _func_0DB( "ammoCounterHide", 0 );
    _func_0DB( "hud_drawhud", 1 );
}

_ID51268()
{
    level._ID794 _meth_8329();
    _func_0DB( "ammoCounterHide", 0 );
    _func_0DB( "hud_drawhud", 1 );
}

_ID53686()
{
    _ID42237::_ID14413( "player_lands" );
    var_0 = _func_1A2( "gulag_top_gate", "targetname" );
    _ID42237::_ID3294( var_0, ::_meth_82C8 );
    _ID42237::_ID3294( var_0, ::_meth_8059 );
    _func_31C( 2 );
    _ID42407::_ID10226( 6, ::_unknown_7001 );
    _ID42407::_ID10226( 6, _ID42407::_ID27289 );
    var_1 = _func_1A1( "landing_death_volume", "targetname" );
    var_2 = _func_0DE( "axis" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4 _meth_80B0( var_1 ) )
        {
            _ID45456::_ID54623( var_4 );
            var_4._ID287 = 1;
            var_4 _meth_8058();
        }
    }

    var_clear_2
    var_clear_0
    var_1 _meth_80B7();
    var_2 = _func_0DE( "allies" );
    var_6 = var_2;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];

        if ( var_4._ID4867 > 2 )
            var_4._ID4867 = 2;
    }

    var_clear_1
    var_clear_0
}

_ID54681()
{
    var_0 = _func_0C8( "soap_heli_node", "targetname" );
    level._ID53563 _ID42407::_ID10871();
    level._ID53563 _meth_81B1( var_0 );
    level._ID53563._ID452 = var_0._ID851;
    level._ID53563 waittill( "goal" );
    level._ID53563 _ID42407::_ID32315( "g" );
}

_ID50916()
{
    wait 3.75;
    var_0 = level._ID11390;
    var_1 = [];
    var_1["nearStart"] = 5;
    var_1["nearEnd"] = 10;
    var_1["nearBlur"] = 10;
    var_1["farStart"] = 25;
    var_1["farEnd"] = 30;
    var_1["farBlur"] = 10;
    var_2 = [];
    var_2["nearStart"] = 2;
    var_2["nearEnd"] = 17;
    var_2["nearBlur"] = 7;
    var_2["farStart"] = 25;
    var_2["farEnd"] = 30;
    var_2["farBlur"] = 7;
    var_3 = [];
    var_3["nearStart"] = 30;
    var_3["nearEnd"] = 36;
    var_3["nearBlur"] = 7;
    var_3["farStart"] = 100;
    var_3["farEnd"] = 120;
    var_3["farBlur"] = 7;
    var_4 = [];
    var_4["nearStart"] = 24;
    var_4["nearEnd"] = 28;
    var_4["nearBlur"] = 4;
    var_4["farStart"] = 140;
    var_4["farEnd"] = 180;
    var_4["farBlur"] = 4;
    var_5 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_5._ID740 = ( 65, 0, 0 );
    var_5 thread _unknown_739C();
    var_6 = level._ID48599;
    _ID42407::_ID46938( var_0, var_1, 0.25 );
    var_7 = 0.85;
    _ID42407::_ID40847( var_6, 5.0 );
    _ID42407::_ID46938( var_1, var_2, 0.5 );
    var_5 _ID42237::_ID10192( 0.0, ::_meth_82B8, ( 45, 0, 0 ), 0.8, 0.4, 0.4 );
    _ID42407::_ID40847( var_6, 5.85 + var_7 );
    _ID42237::_ID24938( 2.0, ::_func_0DB, "g_friendlynamedist", 196 );
    _ID42407::_ID46938( var_2, var_3, 1.0 );
    _ID42407::_ID40847( var_6, 7.5 + var_7 + 2 );
    var_5 thread _unknown_7408();
    _ID42407::_ID46938( var_3, var_4, 2 );
    _ID42237::_ID14413( "background_explosion" );
    _ID42407::_ID46938( var_4, var_0, 1 );
}

_ID53463()
{
    var_0 = _ID54167::_ID43386( "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44944( 1.0 );
    var_0 _ID54167::_ID48800( 25.5 ) _ID54167::_ID53207();
    var_0 _ID54167::_ID48800( 0.3 ) _ID54167::_ID50321( 18, -1, 16, 16, "gulag_price_rescue" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_price_rescue" ) _ID54167::_ID44518( -27, "gulag_price_rescue" ) _ID54167::_ID53584( 6.0, "gulag_price_rescue" ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.75 ) _ID54167::_ID50321( 6.8, -1, 3, 3, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID50321( 0.4, 10, 8, 8, "gulag_price_rescue" ) _ID54167::_ID44518( 0, "gulag_price_rescue" ) _ID54167::_ID53584( 4, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 6.5 ) _ID54167::_ID50321( 0.4, 30, 2, 2, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 7.5 ) _ID54167::_ID50321( 8.5, 7.0, 12, 12, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 9.25 ) _ID54167::_ID50321( 1.6, -1, 6, 6, "gulag_price_rescue" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 12.0 ) _ID54167::_ID50321( 4.5, -1, 2, 2, "gulag_price_rescue" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_price_rescue" ) _ID54167::_ID44518( 7, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 17.0 ) _ID54167::_ID50321( 4.0, -1, 0.5, 0.5, "gulag_price_rescue" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_price_rescue" ) _ID54167::_ID44518( 0, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 23.3 ) _ID54167::_ID50321( 32.0, 500, 2.0, 2.0, "gulag_price_rescue" );
    var_0 _ID54167::_ID48800( 25.5 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID44191( 55, 1.15, 0 );
    var_0 _ID54167::_ID48800( 8.0 ) _ID54167::_ID44191( 45, 2.5, 0 );
    var_0 _ID54167::_ID48800( 11.5 ) _ID54167::_ID44191( 50, 1.75, 0 );
    var_0 _ID54167::_ID48800( 17.0 ) _ID54167::_ID44191( 55, 3, 0 );
    var_0 _ID54167::_ID48800( 22.0 ) _ID54167::_ID43500( 3.8, 0 );
    var_0 _ID54167::_ID48800( 22.15 ) _ID54167::_ID47198( 0.8, 2.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48800( 22.4 ) _ID54167::_ID47198( 1.0, 2.5 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.25 );
    var_0 _ID54167::_ID48800( 23.25 ) _ID54167::_ID47198( 1.0, 2.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.25 );
    var_0 _ID54167::_ID48800( 23.75 ) _ID54167::_ID47198( 0.7, 2.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 24.75 ) _ID54167::_ID47198( 1.0, 3.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.25 );
    var_0 _ID54167::_ID48800( 3.95 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.25 );
    var_0 _ID54167::_ID48800( 4.9 ) _ID54167::_ID47198( 0.8, 2.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.2 );
    var_0 _ID54167::_ID48800( 5.2 ) _ID54167::_ID47198( 0.6, 3.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.5 );
    var_0 _ID54167::_ID48800( 23.5 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 22.0 ) _ID54167::_ID51018();
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( ::_func_032, undefined, "ui_consciousness_init", 1 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID43376( ::_func_032, undefined, "ui_consciousness_play", 1 );
    var_0 _ID54167::_ID48800( 4.5 ) _ID54167::_ID43376( _ID42475::_ID34575, undefined, "start_price_hit_unconscious" );
    var_0 _ID54167::_ID48166();
}

_ID50710()
{
    level waittill( "background_explosion" );
    wait 0.15;
    var_0 = 0.6;
    self _meth_82B8( ( 65, 0, 0 ), var_0, var_0 * 0.5, var_0 * 0.5 );
    wait(var_0);
    wait 0.1;
    self _meth_80B7();
}

_ID49079()
{
    self endon( "death" );

    for (;;)
    {
        _func_0DB( "cg_fov", self._ID740[0] );
        wait 0.05;
    }
}

_ID46608()
{
    var_0 = [];
    var_0[0] = "sewer_slide_1";
    var_0[1] = "sewer_slide_2";
    var_0[2] = "sewer_slide_soap";
    var_1 = [];
    var_1[0] = _ID42237::_ID16638( "sewer_slide_guy1", "targetname" );
    var_1[1] = _ID42237::_ID16638( "sewer_slide_guy2", "targetname" );
    var_1[2] = _ID42237::_ID16638( "sewer_slide_soap", "targetname" );
    level._ID49890 = 0;
    level._ID794 thread _unknown_787D();
    thread _unknown_785E();

    for (;;)
    {
        self waittill( "trigger",  var_2  );

        if ( !_func_1A7( var_2 ) )
            continue;

        if ( !_ID42407::_ID14360( var_2 ) )
            continue;

        var_2 thread _unknown_788C( var_1, var_0 );
    }
}

_ID47967()
{
    var_0 = _func_1A1( "clip_player_avoid_going_back_into_slide", "targetname" );
    var_0 _meth_82C9();
    _ID42237::_ID14413( "kill_slide_trigger" );
    wait 0.5;
    var_0 _meth_82C8();
}

_ID50507( var_0, var_1 )
{
    self endon( "death" );
    self endon( "start_breach" );

    if ( self == level._ID53563 )
    {
        var_2 = var_1[2];
        var_3 = var_0[2];
    }
    else
    {
        var_2 = var_1[level._ID49890];
        var_3 = var_0[level._ID49890];
        level._ID49890++;
    }

    var_3 _ID42259::_ID3027( self, var_2 );
    _ID42407::_ID10226( 2, _ID42407::_ID12445 );
    var_3 _ID42259::_ID3111( self, var_2, undefined, undefined, "generic" );
}

_ID47790()
{
    var_0 = _func_1A1( "sewer_slide_trigger", "targetname" );
    var_1 = [];
    var_1[var_1.size] = _ID42237::_ID16638( "sewer_slide_guy1", "targetname" );
    var_1[var_1.size] = _ID42237::_ID16638( "sewer_slide_guy2", "targetname" );
    var_1[var_1.size] = _ID42237::_ID16638( "sewer_slide_soap", "targetname" );
    var_2 = _func_1A1( "sewer_slide_input", "targetname" );
    var_2 waittill( "trigger" );
    var_3 = _func_1A1( "sewer_slide_hint", "targetname" );
    var_3 _meth_80E2( &"SCRIPT_MANTLE" );
    var_3 _meth_8187();
    var_3 _meth_85BC();

    for (;;)
    {
        if ( self _meth_80B0( var_2 ) )
        {
            self _meth_830C( 0 );

            if ( self _meth_85A3() && self _meth_83EB() )
                break;
        }
        else
            self _meth_830C( 1 );

        waittillframeend;
    }

    self _meth_830C( 1 );
    self _meth_85A4( 0 );
    var_3 _meth_80E2( "" );
    var_3 _ID42237::_ID38863();
    var_2 _ID42237::_ID38863();
    self endon( "death" );
    self endon( "cancel_sliding" );
    var_4 = _ID42237::_ID16182( self._ID740, var_1 );
    var_5 = _func_071( var_4._ID740, var_4._ID65, level._ID30895["worldbody"]["slide_in"] );
    var_6 = _func_06A( "script_origin", var_5 );
    var_6._ID65 = var_4._ID65;
    _ID42407::_ID22166( var_6._ID740, var_6._ID65, 0.25, 1 );
    var_7 = _func_067( level._ID30895["worldbody"]["slide_in"] );
    thread _ID42407::_ID5026( ( 0, 0, -240 ), undefined, undefined, 1, 0, var_4, var_0._ID31422 );
    wait(var_7);

    for ( var_8 = _ID42237::_ID35164(); var_8 _meth_80B0( var_0 ); var_8._ID65 = self._ID65 )
    {
        waittillframeend;
        var_8._ID740 = self._ID740;
    }

    var_8 _meth_80B7();
    _ID42407::_ID12746( 1, 0, 1, 0.08, var_0._ID31422 );
}

_ID44852()
{
    _ID42237::_ID14413( "a_heli_landed" );
    var_0 = _func_1A1( "ai_field_blocker", "targetname" );
    var_0 _meth_82C8();
    var_0 _meth_805E();
}

_ID53817()
{
    var_0 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_0._ID740 = self._ID740;
    var_0 _meth_80B8( "tag_laser" );
    var_0 thread _unknown_7B25( self._ID1191 );
}

_ID45759( var_0 )
{
    var_1 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    thread _unknown_7B72( var_1 );
    var_1 thread _unknown_7B69();
    wait 1;
    var_1 notify( "stop_jitter" );
    var_2 = _ID42237::_ID16638( var_0, "targetname" );
    var_1 _meth_82B8( var_2._ID740, 3, 1, 2 );
    wait 3;
    var_2 = _ID42237::_ID16638( var_2._ID1191, "targetname" );
    var_1 _meth_82B8( var_2._ID740, 1.5, 0.5, 0.7 );
    wait 1.5;
    self notify( "stop_line" );
    self _meth_80B7();
    var_1 _meth_80B7();
}

_ID47765()
{
    self endon( "stop_jitter" );
    var_0 = self._ID740;

    for (;;)
    {
        var_1 = var_0 + _ID42237::_ID28976( 30 );
        var_2 = _func_0BA( 0.5, 0.75 );
        self _meth_82B8( var_1, var_2 );
        wait(var_2);
    }
}

_ID43636( var_0 )
{
    self endon( "stop_line" );
    _ID42407::_ID53909();
    wait 0.05;
    self._ID65 = _func_11A( var_0._ID740 - self._ID740 );
    wait 0.05;

    for (;;)
    {
        self _meth_82BF( _func_11A( var_0._ID740 - self._ID740 ), 0.1 );
        wait 0.1;
    }
}

_ID50040()
{
    if ( self._ID1302 == "m1014" )
        self._ID44037 = self._ID625;

    self._ID625 = 3048;
}

_ID52165()
{
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID44037 ) )
            var_2._ID625 = var_2._ID44037;
    }

    var_clear_2
    var_clear_0
}

_ID49698()
{
    var_0 = 0.8;

    switch ( level._ID35897 )
    {

    }

    case "approach":
    case "intro":
    case "unload":
    case "f15":
    default:
}

_ID44548()
{
    if ( _ID42237::_ID14385( "disable_intro_heli_treadfx_hack" ) )
        return;

    self notify( "stop_kicking_up_dust" );
    var_0 = _ID42237::_ID46831( "tag_origin", ( 2000, 1500, 0 ), ( 0, 0, 0 ) );
    thread _ID42413::_ID2456( var_0 );
    _ID42237::_ID14413( "disable_intro_heli_treadfx_hack" );
    self notify( "stop_kicking_up_dust" );
    waittillframeend;
    thread _ID42413::_ID2456();
    var_0 _meth_80B7();
}

_ID47471( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_0 ) )
        return;

    if ( var_0 != "water" && var_0 != "ice" )
        return;

    var_3 = _func_03D() * 0.001;
}

_ID53993( var_0, var_1 )
{
    var_0 -= 1.3;
    var_0 *= 1000;
    var_2 = var_0 - _func_03D();

    if ( var_2 > 0 )
        wait(var_2 * 0.001);

    _func_156( level._ID52421, var_1 );
}

_ID51085()
{

}

_ID47347()
{
    _ID42237::_ID14413( "kill_slide_trigger" );
    wait 1;
    var_0 = _ID42407::_ID16268( "kill_slide_trigger" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_1 _ID42237::_ID38863();
}

_ID44484()
{
    if ( self._ID172 != "script_model" )
        return;

    thread _unknown_7E2F();
}

_ID52770()
{
    self waittill( "damage" );
    var_0 = 0;

    for (;;)
    {
        if ( !_func_02F( self._ID10536 ) )
            return;

        self _meth_8057( 500, self._ID740, level._ID794 );
        waitframe;
        var_0++;

        if ( var_0 >= 10 )
        {
            var_0 = 0;
            wait 0.05;
        }
    }
}

_ID47067()
{

}

_ID52125()
{
    var_0 = _func_1A2( "landing_blocker", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805F();
        var_2 _meth_82C9();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_lands" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _meth_82C8();
        var_2 _meth_805E();
    }

    var_clear_1
    var_clear_0
}

_ID46832()
{
    var_0 = _ID42237::_ID16638( "ghost_laptop_struct", "targetname" );
    level._ID51565 = _ID42407::_ID35028( "folding_chair" );
    var_0 thread _ID42259::_ID3018( level._ID51565, "laptop_approach" );
}

_ID52110()
{
    level._ID47319 endon( "death" );
    _ID42237::_ID14413( "ghost_goes_to_laptop" );
    var_0 = _ID42237::_ID16638( "ghost_laptop_struct", "targetname" );
    level._ID54527 = var_0;
    var_0 thread _ID42259::_ID3074( level._ID47319, "laptop_approach" );
    level._ID47319 waittill( "goal" );
    _ID42237::_ID14402( "ghost_uses_laptop" );
    var_1 = [];
    var_1["ghost"] = level._ID47319;
    var_1["chair"] = level._ID51565;
    var_0 _ID42259::_ID3099( var_1, "laptop_approach" );
    thread _unknown_85D5();
    var_2 = _func_1A1( "ghost_laptop", "targetname" );
    var_2 _meth_80B8( "h2_com_laptop_rugged_open_gulag" );
}

_ID53490()
{
    if ( _ID42237::_ID14385( "ghost_uses_laptop" ) )
        return;

    level endon( "ghost_uses_laptop" );
    var_0 = _ID42237::_ID16638( "ghost_teleport_look_target_struct", "targetname" );

    for (;;)
    {
        if ( !_ID42407::_ID27540( var_0._ID740, 0.7, 1 ) )
            break;

        wait 0.05;
    }

    level._ID47319 _meth_81D1( level._ID47319._ID451 );
}

_ID46354()
{
    self endon( "death" );
    _ID42407::_ID1868( ::_unknown_8015 );
    self._ID10998 = 1;
    self._ID507 = 1;
    self waittill( "goal" );
    wait 1.2;
    self._ID10998 = 0;
    self._ID507 = 0;
}

_ID51092()
{
    _ID42407::_ID1868( ::_unknown_8036 );
}

_ID49348( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_4 ) )
        return;

    if ( var_4 != "MOD_TRIGGER_HURT" )
        return;

    self _meth_8057( 50, var_3, var_1, var_1 );
}

_ID46526( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = var_2;
    var_8 = _func_11F( var_7 );
    var_9 = _func_11D( var_7 );
    var_10 = _ID42237::_ID16299( "headshot" );
    _func_156( var_10, var_3, var_8, var_9 );
}

_ID53253()
{
    if ( _ID42237::_ID14385( "player_exited_bathroom" ) )
        return;

    if ( _ID42237::_ID14385( "leaving_bathroom_vol2" ) )
        return;

    level endon( "player_exited_bathroom" );
    level endon( "leaving_bathroom_vol2" );
    level._ID43883 = -1;
    var_0 = _func_1A2( "bathroom_enemy_volume", "targetname" );
    var_0 = _ID42407::_ID3311( var_0 );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID50183 = _func_1A1( var_2._ID1191, "targetname" );
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        var_4 = _func_0DE( "axis" );

        for ( var_5 = 0; var_5 < var_0.size; var_5++ )
        {
            var_2 = var_0[var_5];

            if ( var_2 _unknown_814A( var_4 ) )
            {
                if ( var_2._ID31259 != level._ID43883 )
                    level._ID43883 = var_2._ID31259;

                var_2._ID50183 _ID42407::_ID1801();
                wait 1;
                break;
                continue;
            }

            wait 0.1;
        }
    }
}

_ID51486( var_0 )
{
    var_1 = _func_02F( self._ID31388 );
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_1A7( var_3 ) )
            continue;

        if ( var_3 _ID42407::_ID11498() )
            continue;

        if ( var_1 )
        {
            if ( !_func_125( var_3._ID170, self._ID31388 ) )
                continue;
        }

        if ( var_3 _meth_80B0( self ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID50041()
{
    level._ID51375 = undefined;
    _ID42407::_ID3346( "cellblock_armory_first_wave_spawner" );
    wait 3;
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID11002 = 1;
        var_2 _ID42407::_ID10909();
    }

    var_clear_2
    var_clear_0
}

_ID52846()
{
    _ID42407::_ID3346( "cellblock_armory_second_wave_spawner" );
    var_0 = _func_1A2( "cellblock_armory_attacker_spawner", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID46940()
{
    level._ID44260 = [];
    var_0 = _func_0DE();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2._ID47260 ) )
            continue;

        var_2 thread _unknown_72E4();
        level._ID44260[level._ID44260.size] = var_2;
    }

    var_clear_2
    var_clear_0
}

_ID53098()
{
    if ( !_func_02F( self._ID47260 ) )
        return;

    if ( self == level._ID53563 )
    {
        var_0 = _func_1A1( "node_armory_scriptedevent", "targetname" );
        var_0 _ID42259::_ID3074( self, "riotshield" );
        var_0 notify( "shield_anim" );
        var_0 _ID42259::_ID3111( self, "riotshield" );
        _ID42407::_ID12445();
    }
    else
    {
        level waittill( "shield_dialog" );
        wait 1.5;
    }

    thread _unknown_7340();
    level._ID44260[level._ID44260.size] = self;
}

_ID52132()
{
    if ( _ID42237::_ID14385( "cellblock_first_wave" ) )
        return;

    level endon( "cellblock_first_wave" );
    var_0 = _func_1A5();
    var_0 _ID42407::_ID10226( 35, _ID42407::_ID31877, "stop" );
    var_0 endon( "stop" );
    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _ID42407::_ID10932();
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        var_1 = _func_0DE( "axis" );

        if ( var_1.size <= 2 )
            return;

        wait 0.05;
    }
}

_ID46059()
{
    var_0 = [];
    var_0[var_0.size] = "gulag_cmt_pickupone";
    var_0[var_0.size] = "gulag_cmt_riotshield";
    var_1 = 0;

    for (;;)
    {
        if ( _ID42407::_ID27470( "riotshield" ) )
            return;

        var_2 = var_0[var_1];
        var_1++;
        level._ID53563 thread _ID42407::_ID10805( var_2 );

        if ( var_1 >= var_0.size )
            return;

        var_3 = _func_0BA( 4, 5 );
        wait(var_3);
    }
}

_ID51013()
{
    if ( !_func_1A7( level._ID794 ) )
        return;

    if ( !_func_1A7( level._ID53563 ) )
        return;

    level._ID53563 endon( "death" );
    var_0 = [];
    var_0[0] = "gulag_cmt_roach";
    var_0[1] = "gulag_cmt_roachisdown";
    level._ID794 waittill( "death" );
    var_1 = _ID42237::_ID28945( var_0 );
    level._ID53563 _ID42407::_ID15093( _ID42407::_ID1687, 0.4 );
    level._ID53563 thread _ID42407::_ID10805( var_1 );
    level._ID53563 _ID42407::_ID15093( _ID42407::_ID1687, 5000 );
}

_ID45545()
{
    _ID42237::_ID14400( "player_learned_melee_bash" );
    _func_00E( "player_did_melee", "+melee" );
    _func_00E( "player_did_melee", "+melee_breath" );
    _func_00E( "player_did_melee", "+melee_zoom" );
    thread _unknown_84A9();

    for (;;)
    {
        level._ID794 waittill( "player_did_melee" );

        if ( _unknown_84E1( "riotshield" ) )
            _ID42237::_ID14402( "player_learned_melee_bash" );
    }
}

_ID53716()
{
    for (;;)
    {
        if ( _unknown_84F7( "riotshield" ) )
        {
            var_0 = _func_0DE( "axis" );
            var_1 = var_0;

            for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
            {
                var_2 = var_1[var_3];

                if ( !_func_1A7( var_2 ) )
                    continue;

                if ( _func_0F3( var_2._ID740, level._ID794._ID740 ) < 250 )
                {
                    _ID42407::_ID11085( "riot_bash", undefined, undefined, undefined, undefined, 15 );
                    return;
                }

                wait 0.05;
            }

            var_clear_2
            var_clear_0
        }

        wait 0.05;
    }
}

_ID54034()
{
    if ( !_unknown_8557( "riotshield" ) )
        return 1;

    return _ID42237::_ID14385( "player_learned_melee_bash" );
}

_ID50382( var_0 )
{
    return level._ID794 _meth_831C() == var_0;
}

_ID47384()
{
    wait 1;
    level._ID794 _meth_830B( 0 );
    wait 2.5;
    level._ID794 _meth_830B( 1 );
}

_ID54137()
{
    var_0 = _func_1A1( "throw_flash_trigger", "targetname" );
    var_1 = _func_0C8( var_0._ID1191, "targetname" );
    var_1 waittill( "trigger",  var_2  );

    if ( !_func_1A7( var_2 ) )
        return;

    var_2 endon( "death" );
    wait 2;

    for (;;)
    {
        var_3 = _func_0F3( var_2._ID740, var_1._ID740 );

        if ( var_3 < 8 )
            break;

        if ( var_3 > 250 )
            return;

        wait 0.05;
    }

    var_4 = _func_0DE( "axis" );
    var_5 = _func_1A1( "tunnel_pre_hallway_volume", "targetname" );

    if ( !var_5 _unknown_8638( var_4 ) )
        return;

    if ( _ID42237::_ID14385( "dont_flash_me_pls" ) )
    {
        wait 1;
        level notify( "flashed_room" );
        return;
    }

    var_2._ID49 = 1;
    var_6 = _func_1A5();
    var_6._ID740 = var_1._ID740;
    var_6._ID65 = var_1._ID65 + ( 0, -90, 0 );
    var_7 = var_2._ID470;
    var_2._ID470 = "flash_grenade";
    var_2._ID464++;
    var_6 _ID42259::_ID3020( var_2, "grenade_throw" );
    var_2._ID470 = var_7;
    level notify( "flashed_room" );
}

_ID44627( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2 _meth_80B0( self ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID48200()
{
    self endon( "death" );

    if ( _func_02F( self._ID700 ) )
        self._ID700 _ID42407::_ID916();

    self._ID381 = 0;
    _ID42407::_ID3136();
    wait 2;
    self._ID381 = 1;
}

_ID43605()
{
    if ( !_func_03A( "soap" ) )
        return;

    wait 2.7;
    var_0 = _func_1A1( "endlog_soap_spawner", "targetname" );
    var_0._ID35075 = [];
    var_0._ID740 = ( 0, 0, 0 );
    var_0._ID216 = 1;
    var_0._ID31214 = 1;
    var_1 = var_0 _ID42407::_ID35014();
    var_1 _ID42407::_ID17509();
    var_1._ID3189 = "old_soap";
    _ID42259::_ID3111( var_1, "price_rescue" );
    var_1 _meth_80B7();
}

_ID24832()
{
    self._ID464 = 0;
}

_ID44459( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !_func_02F( var_0[var_2] ) )
            continue;

        var_3 = var_0[var_2];

        for ( var_4 = 0; var_4 < var_0.size; var_4++ )
        {
            if ( !_func_02F( var_0[var_4] ) )
                continue;

            var_5 = var_0[var_4];

            if ( var_3 == var_5 )
                continue;

            var_6 = _func_0F3( var_3, var_5 );

            if ( var_6 < var_1 )
                var_0[var_4] = undefined;
        }
    }

    return var_0;
}

_ID43205()
{
    var_0 = _func_1A2( "aud_pa_ext", "targetname" );
    var_1 = _func_1A2( "aud_pa_int", "targetname" );
    waitframe;

    switch ( level._ID35897 )
    {

    }

    case "bathroom":
    case "tunnel":
    case "armory":
    case "rappel":
    case "control_room":
    case "approach":
    case "intro":
    case "unload":
    case "f15":
    case "default":
    case "rescue":
    case "ending":
    case "evac":
    case "cafe":
    case "run":
    default:
}

_ID43109( var_0, var_1 )
{
    var_2 = level._ID794 _meth_80AF();
    var_3 = 182358016;
    var_4 = 3;
    var_5 = _func_1C0( var_1, var_2 );
    var_6 = _func_0C4( var_4, var_1.size );

    for ( var_7 = 0; var_7 < var_6; var_7++ )
    {
        var_8 = _func_0F5( var_5[var_7]._ID740, var_2 ) / var_3;

        if ( var_7 != var_6 - 1 )
        {
            var_5[var_7] _ID42407::_ID10226( var_8, _ID42407::_ID27079, var_0 );
            continue;
        }

        wait(var_8);
        var_5[var_7] _ID42407::_ID27079( var_0 );
    }
}

_ID45049()
{
    self._ID35181 = _func_03D();
}

_ID48604()
{
    _ID42237::_ID14413( "player_nears_cell_door1" );
    _ID42407::_ID1805( "first_cell_postup" );
}

_ID44699( var_0 )
{
    if ( _func_1A7( level._ID47319 ) )
    {
        level._ID47319 _ID42407::_ID10805( var_0 + "_ghost" );
        return;
    }

    _ID42407::_ID28864( var_0 );
}

_ID51304( var_0, var_1, var_2 )
{
    var_3 = _func_1A5();
    var_3.lights_array = _func_1A2( var_1, "script_noteworthy" );
    var_4 = _func_1A2( var_0, "targetname" );
    _ID42237::_ID3350( var_4, ::_unknown_8A87, var_3, var_2 );

    if ( var_0 == "shower_hanging_lamp" )
        thread _unknown_8B03( var_4 );
}

_ID54414( var_0, var_1 )
{
    self._ID47543 = undefined;

    if ( self._ID669 == "h2_gulag_hanging_light_on_soft" || self._ID669 == "h2_gulag_hanging_light_short_01_on_soft" )
        self._ID47543 = level._ID1426["spotlight_hanged_soft"];
    else if ( self._ID669 == "h2_gulag_hanging_light_on" || self._ID669 == "h2_gulag_hanging_light_short_01_on" )
        self._ID47543 = level._ID1426["spotlight_hanged"];

    if ( _func_02F( self._ID47543 ) && !_func_02F( self._ID31388 ) )
    {
        _func_157( self._ID47543, self, "tag_fx" );
        thread _unknown_8B31( var_0 );

        if ( self._ID1193 == "cafeteria_hanging_lamp" )
            thread _unknown_8BC4();
    }

    self._ID3189 = "hanging_light";
    _ID42407::_ID3428();
    self._ID855 = _func_0BA( 1.5, 3 );

    if ( _func_02F( var_1 ) && _func_02F( self._ID922 ) )
    {
        var_2 = _ID42407::_ID16120( self._ID922 );
        self _meth_83D4( var_2, self._ID855 );
        _ID42259::_ID3111( self, self._ID922 );
    }

    thread _unknown_8B99();
}

_ID47036( var_0 )
{
    var_1 = self _meth_818C( "tag_fx" );
    self._ID594 = _ID42237::_ID16182( var_1, var_0.lights_array );
    var_0.lights_array = _ID42237::_ID3321( var_0.lights_array, self._ID594 );
    var_2 = _func_06A( "script_origin", self._ID594._ID740 );
    var_2 _meth_8053( self, "tag_fx" );

    for (;;)
    {
        self._ID594 _meth_82B8( var_2._ID740, 0.1 );
        var_3 = self _meth_818D( "tag_fx" );
        self._ID594._ID65 = var_3;
        wait 0.1;
    }
}

_ID46393()
{
    for (;;)
    {
        self notify( "idle_loop_stop" );
        waittillframeend;
        var_0 = _ID42237::_ID37527( self._ID1193 == "cafeteria_hanging_lamp", "hanging_light_loop_cafeteria", "hanging_light_loop" );
        var_1 = _ID42407::_ID16120( var_0 )[0];
        self _meth_83D4( var_1, self._ID855 );
        thread _ID42259::_ID3044( self, var_0, "idle_loop_stop" );
        self waittill( "idle_loop_restart" );
    }
}

_ID50364( var_0 )
{
    _ID42237::_ID14413( "shower_balcony_spawned" );
    var_1 = [ "hanging_light_impact_1", "hanging_light_impact_2", "hanging_light_impact_3", "hanging_light_impact_4" ];
    var_2 = _func_1A2( "lamp_trigger", "targetname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4._ID45080 = _ID42237::_ID16182( var_4._ID740, var_0, 5000 );
        var_4 thread _unknown_8CC9( var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID54701( var_0 )
{
    self notify( "idle_loop_stop" );
    waittillframeend;
    var_1 = _ID42407::_ID16120( var_0 );
    _func_157( level._ID1426["metalhit_tag_gulag"], self, "Tag_hit_fx" );
    thread _ID42407::_ID27080( "scn_gulag_lamp_sway", "Tag_hit_fx" );
    _ID42259::_ID3111( self, var_0 );
    self notify( "idle_loop_restart" );
}

_ID50648( var_0 )
{
    level endon( "player_exited_bathroom" );

    for (;;)
    {
        self waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );
        var_6 = _func_0B9( 1, 100 );

        if ( var_5 == "MOD_GRENADE" || var_5 == "MOD_GRENADE_SPLASH" )
        {
            self._ID45080 _unknown_8D37( _ID42237::_ID28945( var_0 ) );
            continue;
        }

        if ( var_2 != level._ID794 && var_6 <= 30 )
        {
            self._ID45080 _unknown_8D53( _ID42237::_ID28945( var_0 ) );
            continue;
        }

        continue;
    }
}

_ID53816()
{
    _ID42237::_ID14413( "cafeteria_lights_off" );

    if ( _func_02F( self._ID47543 ) )
        _func_159( self._ID47543, self, "tag_fx" );

    if ( _func_02F( self._ID594 ) )
    {
        self._ID594 _meth_81EB( 1 );
        self._ID594 _meth_804C( 12 );
        self._ID594 _meth_8020( 6, 0 );
    }
}

_ID51291( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );
    _ID42237::_ID3350( var_1, ::_unknown_8DF0 );
}

_ID43066( var_0 )
{
    self._ID3189 = self._ID669;
    _ID42407::_ID3428();
    var_1 = _func_0BA( 0.8, 1.5 );

    if ( _func_02F( self._ID922 ) )
    {
        var_2 = _ID42407::_ID16120( "breach" );
        self _meth_83D4( var_2, var_1 );
        _ID42259::_ID3111( self, "breach" );
    }

    var_2 = _ID42407::_ID16120( "idle" )[0];
    self _meth_83D4( var_2, var_1 );
    thread _ID42259::_ID3044( self, "idle", "stop_loop" );

    if ( _ID42407::_ID18203( "idle_strong" ) )
    {
        level waittill( "explosion" );
        self notify( "stop_loop" );
        waittillframeend;
        var_2 = _ID42407::_ID16120( "idle_strong" )[0];
        self _meth_83D4( var_2, var_1 );
        thread _ID42259::_ID3044( self, "idle_strong" );
    }
}

_ID52141()
{
    var_0 = [ "light_1s", "light_2s", "light_3s" ];

    for (;;)
    {
        while ( _ID42237::_ID14385( "bombardment_immersion" ) )
        {
            var_1 = _func_0B9( 6, 14 );
            wait(var_1);
            _unknown_8EE0( _ID42237::_ID28945( var_0 ) );
        }

        wait 0.5;
    }
}

_ID49467( var_0 )
{
    if ( !_ID42237::_ID14385( "bombardment_immersion" ) )
        return;

    level._ID794 _meth_80A1( "amb_bomb_explo_shakes" );
    _func_192( 0.1, 2, level._ID794._ID740, 5000 );
    _ID42234::_ID13611( "2501" );
    level._ID794 _meth_80B4( var_0 );
}

_ID43875()
{
    wait 6.2;
    var_0 = _func_1A1( "overlook_explosion_guy", "targetname" );

    if ( !_func_02F( var_0 ) )
        return;

    var_1 = var_0 _ID42407::_ID35014( 1 );
    waittillframeend;
    var_1._ID511 = 1;
    var_1 thread _ID42407::_ID19379( 1 );
    var_1 _ID42407::_ID17509();
    var_1._ID3189 = "guy";
    var_1 thread _ID42259::_ID3111( var_1, "explosion" );

    if ( _func_02F( var_1 ) )
        var_1 _ID42407::_ID27079( "scn_bhd_guy" );

    wait(_func_067( var_1 _ID42407::_ID16120( "explosion" ) ) - 0.2);
    var_1 _meth_8058();
}

_ID43502()
{
    var_0 = _ID42407::_ID16268( "trigger_armory_scriptedevent" );
    var_1 = _func_1A1( "node_armory_scriptedevent", "targetname" );
    _ID42237::_ID14413( "trigger_armory_scriptedevent" );
    level._ID51159 = [];

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( var_2 != level._ID794 && !_ID42237::_ID3303( level._ID51159, var_2 ) )
        {
            var_2 thread _unknown_9014( var_1 );
            level._ID51159 = _ID42237::_ID3293( level._ID51159, var_2 );
        }

        if ( level._ID51159.size == 2 )
        {
            var_0 _meth_80B7();
            break;
        }
    }
}

_ID49882( var_0 )
{
    self endon( "death" );

    if ( self == level._ID53563 )
    {
        var_1 = "soap";
        var_2 = "cyan";
    }
    else
    {
        var_1 = "guy";
        var_2 = "g";
        level._ID53694 = self;
        self._ID3189 = "generic";
    }

    _ID42407::_ID32315( var_2 );
    var_0 _ID42259::_ID3074( self, "armory_jumpdown" );
    _ID42407::_ID12445();
    var_0 _ID42259::_ID3111( self, "armory_jumpdown" );
    var_0 _ID42259::_ID3111( self, "armory_wait_in" );
    _ID42237::_ID14402( var_1 + "_is_waiting" );
    var_0 thread _ID42259::_ID3044( self, "armory_wait_idle", "stop_waiting" );
    _ID42237::_ID14413( "player_in_armory" );

    if ( self == level._ID53563 )
    {
        if ( _func_02F( level._ID53694 ) && _func_1A7( level._ID53694 ) )
            _ID42237::_ID14413( "guy_is_waiting" );
        else
            _ID42237::_ID14402( "too_late" );
    }
    else
        _ID42237::_ID14413( "soap_is_waiting" );

    var_0 notify( "stop_waiting" );

    if ( self != level._ID53563 && _ID42237::_ID14385( "too_late" ) )
        return;
    else if ( self == level._ID53563 && _func_02F( level._ID47319 ) )
        thread _unknown_9322( "voiceover" );

    _ID42237::_ID14402( "playing_armory_anim" );
    var_0 _ID42259::_ID3111( self, "armory_wait_out" );
}

_ID48710()
{
    var_0 = _func_1A1( "soap_riotshield", "targetname" );
    var_0._ID3189 = "shield";
    var_0 _ID42259::_ID32556();
    var_1 = _func_1A1( "node_armory_scriptedevent", "targetname" );
    var_1 _ID42259::_ID3018( var_0, "shield" );
    var_2 = _func_1A1( "guy_riotshield", "targetname" );
    var_2._ID3189 = "shield";
    var_2 _ID42259::_ID32556();
    var_1 _ID42259::_ID3018( var_2, "guy_shield" );
    var_1 waittill( "shield_anim" );
    var_1 _ID42259::_ID3111( var_0, "shield" );
    var_0 _meth_80B7();
}

_ID50315( var_0, var_1 )
{
    var_2 = _func_1A2( var_0, "targetname" );
    var_3 = var_2;

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];
        var_5 = _ID42237::_ID35164();
        var_5._ID740 = var_4._ID740;
        var_5._ID65 = var_4._ID65;
        var_5 _meth_8053( var_4 );
        _func_157( _ID42237::_ID16299( var_1 ), var_5, "tag_origin" );
        var_4 thread _unknown_925F( _func_11D( var_4._ID65 ) );
    }

    var_clear_3
    var_clear_0
}

_ID48529( var_0 )
{
    var_1 = 18;

    for (;;)
    {
        var_2 = _func_256( self._ID65 );
        var_2["forward"] = _func_124( var_0, var_2["forward"], var_1 );
        var_2["right"] = _func_124( var_0, var_2["right"], var_1 );
        var_2["up"] = _func_0FC( var_2["forward"], var_2["right"] );
        self._ID65 = _func_0FD( var_2["forward"], var_2["right"], var_2["up"] );
        wait 0.05;
    }
}

_ID50753()
{
    var_0 = _func_1A1( "ai_01", "script_noteworthy" );
    var_1 = _func_1A1( "ai_02", "script_noteworthy" );
    var_2 = _func_1A1( "ai_11", "script_noteworthy" );
    var_3 = _func_1A1( "ai_12", "script_noteworthy" );
    var_4 = _func_1A1( "ai_21", "script_noteworthy" );
    var_5 = _func_1A1( "ai_22", "script_noteworthy" );
    var_6 = _func_1A1( "ai_31", "script_noteworthy" );
    var_7 = _func_1A1( "ai_32", "script_noteworthy" );
    var_8 = _ID42237::_ID16638( "wall_sequence_blast_1", "script_noteworthy" );
    var_9 = var_0._ID740;
    var_10 = var_0._ID65;
    var_11 = var_1._ID740;
    var_12 = var_1._ID65;
    var_13 = var_2._ID740;
    var_14 = var_2._ID65;
    var_15 = var_3._ID740;
    var_16 = var_3._ID65;
    var_17 = var_4._ID740;
    var_18 = var_4._ID65;
    var_19 = var_5._ID740;
    var_20 = var_5._ID65;
    var_21 = var_6._ID740;
    var_22 = var_6._ID65;
    var_23 = var_7._ID740;
    var_24 = var_7._ID65;
    var_25 = [ var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 ];
    var_26 = var_25;

    for ( var_28 = _func_1DA( var_26 ); _func_02F( var_28 ); var_28 = _func_1BF( var_26, var_28 ) )
    {
        var_27 = var_26[var_28];
        var_27._ID3189 = "generic";
        var_27._ID507 = 1;
        var_27._ID49 = 1;
        var_27._ID511 = 1;
    }

    var_clear_2
    var_clear_0
    var_0 thread _ID42259::_ID3018( var_0, "ai_running_wall_01" );
    var_1 thread _ID42259::_ID3018( var_1, "ai_running_wall_02" );
    var_2 thread _ID42259::_ID3018( var_2, "ai_running_wall_11" );
    var_3 thread _ID42259::_ID3018( var_3, "ai_running_wall_12" );
    var_4 thread _ID42259::_ID3018( var_4, "ai_running_wall_21" );
    var_5 thread _ID42259::_ID3018( var_5, "ai_running_wall_22" );
    var_6 thread _ID42259::_ID3018( var_6, "ai_running_wall_31" );
    var_7 thread _ID42259::_ID3018( var_7, "ai_running_wall_32" );
    _ID42237::_ID14413( "display_introscreen_text" );
    wait 14;
    var_0 _meth_81D2( var_9, var_10 );
    var_1 _meth_81D2( var_11, var_12 );
    var_0 thread _unknown_951C( var_0, "ai_running_wall_01" );
    var_1 thread _unknown_9527( var_1, "ai_running_wall_02" );
    wait 4;
    var_2 _meth_81D2( var_13, var_14 );
    var_3 _meth_81D2( var_15, var_16 );
    var_2 thread _unknown_9543( var_2, "ai_running_wall_11" );
    var_3 thread _unknown_954F( var_3, "ai_running_wall_12" );
    _ID42237::_ID14413( "stab1_shift" );
    var_4 _meth_81D2( var_17, var_18 );
    var_5 _meth_81D2( var_19, var_20 );
    var_4 thread _unknown_9571( var_4, "ai_running_wall_21" );
    var_5 thread _unknown_957C( var_5, "ai_running_wall_22" );
    _ID42237::_ID14413( "castle_tower_event" );
    wait 2;
    var_6 _meth_81D2( var_21, var_22 );
    var_7 _meth_81D2( var_23, var_24 );
    var_6 thread _ID42259::_ID3111( var_6, "ai_running_wall_31" );
    var_7 thread _ID42259::_ID3111( var_7, "ai_running_wall_32" );
    _ID42237::_ID14413( "f15_gulag_attack" );
    wait 1.5;
    var_6 thread _unknown_95D6( var_6, var_8, 4000 );
    var_7 thread _unknown_95E1( var_7, var_8, 4000 );
}

_ID47368( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID42259::_ID3111( var_0, var_1, var_2, var_3, var_4, var_5 );

    if ( _func_1A7( var_0 ) )
        var_0 _meth_80B7();
    else
    {
        wait 30;

        if ( _func_02F( var_0 ) && _ID42259::_ID54080( var_0 ) && !_func_2A5( var_0 ) )
            var_0 _meth_80B7();
    }
}

_ID54514( var_0, var_1, var_2, var_3 )
{
    if ( _func_1A7( var_0 ) )
    {
        if ( !_func_02F( var_2 ) )
            var_2 = _func_0F3( var_0._ID740, var_1._ID740 ) + 5000;

        if ( !_func_02F( var_3 ) )
            var_3 = 1;

        var_4 = _func_119( var_0._ID740 - var_1._ID740 );
        var_5 = var_2 - _func_0F3( var_0._ID740, var_1._ID740 );
        var_5 *= var_3;
        var_5 = _func_0E6( var_5, 1 );
        var_6 = var_0._ID740 + var_4 * var_5;
        var_0 _meth_8024( "torso_lower", var_6 );
        var_0 _meth_8058();
    }
}

ambient_snowing()
{
    _ID42237::_ID14413( "player_lands" );
    _ID42234::_ID13611( "ambient_snowing" );
}

_ID53948()
{
    var_0 = _func_1A2( "rat_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_96C9 );
}

_ID53641()
{
    self waittill( "trigger" );
    _ID42234::_ID13611( 2601 );
}

_ID49442()
{
    var_0 = _func_1A2( "animated_rat", "targetname" );
    _ID42237::_ID14413( "player_lands" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _func_06A( "script_model", var_2._ID740 );
        var_3 _meth_80B8( var_2._ID669 );
        var_3._ID65 = var_2._ID65;
        var_3._ID70 = var_2._ID70;
        var_3._ID922 = var_2._ID922;
        var_3 thread _unknown_9758();
    }

    var_clear_3
    var_clear_0
}

_ID51086()
{
    if ( !_func_02F( self._ID922 ) )
        return;

    switch ( self._ID922 )
    {

    }

    case "frantic":
    case "run":
    default:
}

_ID49670( var_0, var_1 )
{
    self._ID3189 = "rat_animations";
    _ID42407::_ID3428();
    self _meth_82CA( 1 );
    self._ID486 = 1;
    _ID42259::_ID3044( self, var_0 );
    self waittill( "damage" );
    _func_156( _ID42237::_ID16299( "rat_bleed" ), self._ID740, ( 0, 0, 1 ) );
    _ID42259::_ID3111( self, _ID42237::_ID28945( var_1 ) );
}

_ID50955( var_0, var_1 )
{
    var_2 = _func_1A1( "rat_trigger", "targetname" );
    var_2 waittill( "trigger" );
    self._ID3189 = "rat_animations";
    _ID42407::_ID3428();
    self _meth_82CA( 1 );
    self._ID486 = 1;
    _ID42259::_ID3044( self, var_0 );
    self waittill( "damage" );
    _func_156( _ID42237::_ID16299( "rat_bleed" ), self._ID740, ( 0, 0, 1 ) );
    _ID42259::_ID3111( self, _ID42237::_ID28945( var_1 ) );
}

_ID50199( var_0 )
{
    level._ID54527 notify( "ghost_stop_idle" );
    level._ID47319 _meth_814B();
    waittillframeend;
    level._ID47319 _ID42259::_ID3111( level._ID47319, var_0 );
    thread _unknown_98BB();
}

_ID50540()
{
    level._ID47319 endon( "death" );
    level._ID54527 endon( "ghost_stop_idle" );

    for (;;)
    {
        level._ID54527 _ID42259::_ID3111( level._ID47319, "laptop_idle_6" );
        level._ID54527 _ID42259::_ID3111( level._ID47319, "laptop_idle_" + _func_0B7( 6 ) );
    }
}

_ID52452()
{
    wait 0.5;
    level._ID50232 = _ID42407::_ID35028( "player_rappel" );
    level._ID50232._ID740 = level._ID52066 _meth_818C( "tag_guy2" );
    level._ID50232._ID65 = level._ID52066 _meth_818D( "tag_guy2" );
    level._ID50232 _meth_8053( level._ID52066, "tag_guy2" );
    level._ID794 _meth_8084( level._ID50232, "tag_player", 1 );
    level._ID52066 thread _unknown_9978();
    level._ID52066 thread _ID42259::_ID3111( level._ID53563, "soap_intro_start", "tag_detach_left" );
    _unknown_99B2( "player_intro_start" );
}

_ID50370()
{
    level._ID52066 endon( "death" );
    level._ID52066 _ID42259::_ID3111( level._ID53563, "soap_intro_dialog1", "tag_detach_left" );
    level._ID52066 notify( "stop_loop" );
    level._ID52066 _ID42259::_ID3044( level._ID53563, "soap_intro_2nd_tower", "stop_loop", "tag_detach_left" );
}

_ID51828()
{
    level._ID52066 endon( "death" );
    self waittill( "soap_intro_start" );
    level._ID52066 _ID42259::_ID3044( level._ID53563, "soap_intro_1st_tower", "stop_loop", "tag_detach_left" );
}

_ID46613()
{
    level._ID52066 thread _ID42259::_ID3111( level._ID53563, "soap_intro_dialog2", "tag_detach_left" );
    level._ID52066 notify( "stop_loop" );
}

_ID43698()
{
    _ID54035( "player_dismount_start" );
    _unknown_9A28();
}

_ID54035()
{
    if ( _func_02F( level._ID50232 ) )
    {
        level._ID794 _meth_8055();
        level._ID50232 _meth_80B7();
    }

    level._ID794 _meth_8329();
}

_ID52569( var_0 )
{
    level._ID52066 _ID42259::_ID3111( level._ID50232, var_0, "tag_guy2" );
}

_ID43073()
{
    _ID42237::_ID14413( "activate_guns" );
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_1._ID3189 = "gunner";
    waittillframeend;
    var_2 = _ID42407::_ID35028( "turret", self._ID740 );
    var_2._ID65 = self._ID65;
    self _meth_80B7();
    var_1 _meth_8053( var_2, "tag_driver" );
    var_1 thread _unknown_9ADC( var_2 );
    var_2 endon( "stop_shooting" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "kill_guns" ) )
            break;

        var_3 = "fire_a";

        if ( _ID42237::_ID8201() )
            var_3 = "fire_b";

        var_2 thread _ID42259::_ID3111( var_1, var_3, "tag_driver" );
        var_2 _ID42259::_ID3111( var_2, var_3 );
    }

    var_1 _meth_8057( 1, var_1._ID740 );
}

_ID47188()
{
    self notify( "stop_shooting" );
    _ID42407::_ID3136();
    self _meth_80B3();
    self _meth_8155( level._ID30895[self._ID3189]["idle"], 1.0, 0, 1 );
}

_ID50914( var_0 )
{
    self waittill( "damage" );
    self._ID511 = 1;
    var_0 _unknown_9B44();
    var_0 _ID42259::_ID3111( self, "gunnerdeath", "tag_driver" );
    var_0 thread _ID42259::_ID3044( self, "death_idle", "stop_death_loop", "tag_driver" );
}

_ID47701( var_0 )
{
    _func_157( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash" );
    _func_157( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash2" );
    var_0 thread _ID42407::_ID27080( "h1_zpu_fire", "tag_flash" );
}

_ID46980( var_0 )
{
    _func_157( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash1" );
    _func_157( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash3" );
}

_ID48867()
{
    var_0 = _func_1A1( "worm_spawner", "targetname" );
    var_0._ID216 = 1;
    var_1 = var_0 _ID42407::_ID35014();
    var_1._ID511 = 1;
}

_ID46389()
{
    var_0 = level._ID52066;
    var_1 = _ID42237::_ID35164();
    var_2 = ( 20, 110, -40 );
    var_3 = ( 15, -90, 0 );
    var_1 _meth_8053( var_0, "tag_origin", var_2, var_3 );
    _func_157( level._ID1426["amb_snow_heli_hack"], var_0, "tag_deathfx" );
    _func_157( level._ID1426["aircraft_omnilight_cockpit_gulag"], var_0, "tag_origin" );
    _func_157( level._ID1426["aircraft_spotlight_cockpit_gulag"], var_1, "tag_origin" );
    _ID42237::_ID14413( "control_tower_event" );
    _func_159( level._ID1426["aircraft_omnilight_cockpit_gulag"], var_0, "tag_origin" );
    _func_157( level._ID1426["aircraft_omnilight_cockpit_gulag_out"], var_0, "tag_origin" );
    _func_159( level._ID1426["aircraft_spotlight_cockpit_gulag"], var_1, "tag_origin" );
    _func_157( level._ID1426["aircraft_spotlight_cockpit_gulag_out"], var_1, "tag_origin" );
    wait 2.5;
    _func_157( level._ID1426["aircraft_spotlight_cockpit_gulag_2"], var_1, "tag_origin" );
    _ID42237::_ID14413( "kill_heli_light_fx" );
    _func_159( level._ID1426["aircraft_spotlight_cockpit_gulag_2"], var_1, "tag_origin" );
    _func_157( level._ID1426["aircraft_spotlight_cockpit_gulag_2_out"], var_1, "tag_origin" );
    _ID42237::_ID14413( "access_control_room" );
    _func_158( level._ID1426["amb_snow_heli_hack"], var_0, "tag_deathfx" );
}

_ID50384( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    _ID42234::_ID13611( var_1 );
}

_ID46373( var_0 )
{
    var_1 = [];
    var_1["aug_reflex"] = "ak47_arctic_reflex";
    var_1["aug_scope"] = "ak47_arctic_acog";
    var_1["tavor_reflex"] = "famas_arctic_reflex";
    var_1["tavor_woodland_eotech"] = "famas_arctic_reflex";
    var_1["pp2000"] = "beretta";
    var_1["striker"] = "spas12";
    var_1["striker_reflex"] = "spas12_reflex";
    var_1["striker_woodland"] = "spas12_arctic";
    var_1["striker_woodland_reflex"] = "spas12_arctic_refex";
    var_1["ump45"] = "kriss";
    var_1["ump45_arctic"] = "kriss";
    var_1["ump45_reflex"] = "p90_reflex";
    var_1["ump45_eotech"] = "kriss_reflex";
    var_1["ump45_acog"] = "kriss_reflex";
    var_1["kriss_eotech"] = "kriss_reflex";
    var_1["mg4"] = "rpd";
    var_1["mg4_arctic"] = "rpd";
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_4 == var_0 )
            return var_3;
    }

    var_clear_2
    return var_0;
}

_ID49884( var_0, var_1, var_2 )
{
    if ( _func_039( "limitedmodeStart" ) != "" )
    {
        _func_034( "start", _func_039( "limitedmodeStart" ) );
        _func_034( "limitedmodeStart", "" );
        return;
    }

    _ID42237::_ID14413( var_0 );

    if ( _func_039( "start" ) != var_1 )
    {
        _func_0DB( "compass", 0 );
        _func_0DB( "ammoCounterHide", 1 );
        _func_0DB( "hud_showStance", 0 );
        _func_0DB( "g_friendlyNameDist", 0 );

        if ( level._ID794 _meth_821F( "subtitles" ) != 0 )
        {

        }

        level._ID794 _meth_80F6();
        level._ID794 _meth_831B();
        var_3 = _func_1AF();
        var_3._ID1331 = 0;
        var_3._ID1339 = 0;
        var_3 _meth_80D3( "black", 640, 480 );
        var_3._ID44 = "left";
        var_3._ID45 = "top";
        var_3._ID499 = "fullscreen";
        var_3._ID1284 = "fullscreen";
        var_3._ID55 = 0;
        var_3._ID408 = 1;
        _ID42475::_ID34575( "start_limited_mode_fade_out", var_2 / 2 );
        var_3 _meth_808B( var_2 / 2 );
        var_3._ID55 = 1;
        wait(var_2 / 2);
        _ID42318::_ID52593( "In the interest of time..." );
        wait(var_2 / 2);
        _func_036( "limitedmodeStart", level._ID35897 );
        _func_034( "start", var_1 );
        _func_316();
    }
}

_ID53102()
{
    var_0 = _func_1A1( "radiotower_intro_sequence", "targetname" );
    _func_157( _ID42237::_ID16299( "radio_tower_red_static_glow" ), var_0, "tag_fx" );
    wait 25;
    var_0._ID3189 = "me_transmitting_tower";
    var_0 _ID42259::_ID32556();
    var_0 thread _ID42259::_ID3111( var_0, "radiotower_fall" );
    _ID42234::_ID13611( "5001" );
    wait 3;
    level._ID794 _ID42407::_ID48929( "gulag_flight" );
}

_ID47199()
{
    var_0 = _func_1A1( "exploding_wall_origin", "targetname" );
    var_1 = _func_06A( "script_model", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_1 _meth_80B8( "h2_gulag_cellblock2_intact_wall_01" );
    level waittill( "hall_attack" );
    var_1 _meth_80B7();
    var_2 = _func_1A1( "cb2_stagelight", "targetname" );
    var_2 notify( "staging_on" );
}

_ID43609()
{
    var_0 = _func_1A1( "exploding_canister", "script_noteworthy" );
    var_0._ID13610 = undefined;
    var_0._ID13632 = undefined;
    var_1 = _func_1A1( "exploding_canister2", "script_noteworthy" );
    var_1._ID13610 = undefined;
    var_1._ID13632 = undefined;
    var_2 = [ var_0, var_1 ];
    _ID42237::_ID14413( "stop_shooting_right_side" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( !_func_02F( var_4._ID13632 ) || !_func_02F( var_4._ID13610 ) )
        {
            wait 1;
            var_4 _ID42231::_ID47021( 0 );
            var_4 _ID42407::_ID10514();
            return;
        }
    }

    var_clear_2
    var_clear_0
}

_ID53011( var_0, var_1 )
{
    if ( var_1 )
    {
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( !_func_1A7( var_3 ) )
                continue;

            var_3._ID513 = 1;
            var_3._ID7._ID11043 = 1;
            var_3._ID52 = 0;
            var_3 _meth_8579( 1 );
        }

        var_clear_1
        var_clear_0
    }
    else
    {
        var_5 = var_0;

        for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
        {
            var_3 = var_5[var_6];

            if ( !_func_1A7( var_3 ) )
                continue;

            var_3._ID513 = 0;
            var_3._ID7._ID11043 = 0;
            var_3._ID52 = 1;
            var_3 _meth_8579( 0 );
        }

        var_clear_1
        var_clear_0
    }
}

_ID48290( var_0, var_1 )
{
    var_0 _ID42407::_ID3428( "rescue_chair" );
    var_0._ID3189 = "rescue_chair";
    var_2 = var_0 _ID42407::_ID16120( "rescuea_chair" );
    var_3 = _func_067( var_2 );
    wait 0.5;
    var_1 _ID42259::_ID3111( var_0, "rescuea_chair" );
    wait(var_3 + 0.5);
    var_1 _ID42259::_ID3111( var_0, "rescueb_chair" );
}

_ID50170()
{
    wait 8;
    var_0 = _func_0BA( 2, 5 );
    wait(var_0);

    if ( _func_02F( self ) )
    {
        if ( _func_1A7( self ) )
        {
            _ID45456::_ID54623( self );
            self _meth_8058();
        }

        wait 15;

        if ( !_func_2A5( self ) )
            self _meth_80B7();
    }
}

_ID47239()
{
    var_0 = _func_1A1( "landslide_iceberg", "targetname" );
    var_0._ID3189 = var_0._ID1193;
    var_0 _ID42259::_ID32556();
    _ID42237::_ID14413( "rockslide_event" );
    var_0 _ID42259::_ID3111( var_0, "move" );
}

_ID51065( var_0 )
{
    self._ID3189 = "hanging_light";
    _ID42407::_ID3428( "hanging_light" );
    var_0._ID3189 = "hanging_light";
    var_0 _ID42407::_ID3428( "hanging_light" );
    self._ID855 = 2;
    var_0._ID855 = 2;
    var_0 _meth_805A();
    var_1 = _func_1A1( "bathroom_exploding_light_trigger", "targetname" );
    var_1._ID45080 = self;
    var_0 thread _unknown_9D0D();
    var_1._ID45080 thread _unknown_9D15();
    var_2 = _func_1A1( "bathroom_light_trigger", "targetname" );
    var_2 waittill( "trigger" );
    var_3 = [ "hanging_light_impact_1", "hanging_light_impact_2", "hanging_light_impact_3", "hanging_light_impact_4" ];
    var_4 = _ID42237::_ID28945( var_3 );
    _func_157( level._ID1426["bullet_spark"], self, "tag_fx" );
    var_0 thread _unknown_9D87( var_4 );
    var_1._ID45080 _unknown_9D91( var_4 );
    thread _ID42407::_ID27080( "bullet_large_metal_thin", "tag_fx" );
    waittillframeend;
    _func_157( level._ID1426["sparks"], self, "tag_fx" );
    self notify( "start_flickering" );
    var_0 _meth_8059();
}

_ID47698()
{
    var_0 = _ID42237::_ID16638( "f15_blast_1", "script_noteworthy" );
    var_1 = _func_1A2( "exploding_ignore_spawner", "script_noteworthy" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = _func_0BA( 1, 1.5 );
        _unknown_A04A( var_3, var_0, 4000, var_4 );
    }

    var_clear_3
    var_clear_0
}

_ID54713()
{
    var_0 = _func_1A1( "aud_scn_gulag_explo_anticipation_ent", "targetname" );
    var_0 thread _ID42407::_ID27079( "scn_gulag_explo_anticipation" );
    wait 0.6;
    self notify( "trigger" );
}

_ID54342()
{
    var_0 = _func_1A1( "radio_tower_cleanup", "targetname" );
    var_0 waittill( "trigger" );
    var_1 = _func_1A2( "animated_model", "targetname" );
    var_2 = var_1;

    for ( var_7 = _func_1DA( var_2 ); _func_02F( var_7 ); var_7 = _func_1BF( var_2, var_7 ) )
    {
        var_3 = var_2[var_7];
        var_3 _ID42260::_ID51416();
        var_4 = _func_06A( "script_model", var_3._ID740 );
        var_4._ID65 = var_3._ID65;
        var_5 = _func_127( var_3._ID669, 19, 22 );
        var_6 = "trq_tree_pine_snow_" + var_5 + "_02_static";
        var_4 _meth_80B8( var_6 );
        var_3 _meth_80B7();
    }

    var_clear_5
    var_clear_0
    var_8 = _func_1A1( "landslide_iceberg", "targetname" );
    var_8 _meth_80B7();
}

_ID49773()
{
    var_0 = [];
    var_0[var_0.size] = _func_1A1( "first_cell_moving_on", "targetname" );
    var_0[var_0.size] = _func_1A1( "mid_door_rambo", "targetname" );
    var_0[var_0.size] = _func_1A1( "third_cell_moving_on", "targetname" );
    var_0[var_0.size] = _func_1A1( "pre_armory_rambo", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_A4FF( var_3 );
    }

    var_clear_2
}

_ID46800( var_0 )
{
    self endon( "i_must_end" + var_0 );
    self waittill( "trigger" );
    level notify( "i_must_end" + var_0 - 1 );
    var_1 = _func_0DE( "allies" );
    _ID42407::_ID53914( var_1, 1 );
    wait 4;
    _ID42407::_ID53914( var_1, 0 );
}

_ID52041( var_0 )
{
    wait 3;
    _ID42407::_ID1805( var_0 );
}

_ID43235()
{
    var_0 = _func_1A1( "set_dof_ads_cellblock", "targetname" );
    var_1 = _func_1A1( "clear_dof_ads_cellblock", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger" );
        _ID42407::_ID50742( "0.5 12 2 2" );
        var_1 waittill( "trigger" );
        _ID42407::_ID50742();
    }
}

_ID44337()
{
    var_0 = _func_1A1( "flash_postup_distributor_trigger", "targetname" );
    var_1 = [];
    var_1[var_1.size] = _func_0C8( "flash_spot_1", "script_noteworthy" );
    var_1[var_1.size] = _func_0C8( "flash_spot_2", "script_noteworthy" );
    var_1[var_1.size] = _func_0C8( "flash_spot_3", "script_noteworthy" );
    var_2 = [];

    for (;;)
    {
        var_0 waittill( "trigger",  var_3  );

        if ( var_3 != level._ID794 && !_ID42237::_ID3303( var_2, var_3 ) )
        {
            if ( !_func_02F( var_3._ID700._ID1193 ) || var_3._ID700._ID1193 != "moving_to_tunnel" )
            {
                var_0 _meth_80B7();
                return;
            }

            var_3 _meth_81B1( var_1[var_2.size] );
            var_2 = _ID42237::_ID3293( var_2, var_3 );

            if ( var_2.size == 3 )
            {
                var_0 _meth_80B7();
                break;
            }
        }
    }
}

_ID52852()
{
    var_0 = _func_1A1( "tarp_idle", "targetname" );
    var_0 _ID42407::_ID3428( "tarp" );
    var_1 = _ID42237::_ID16638( "idle_tarp_struct", "targetname" );
    var_1 thread _ID42259::_ID3044( var_0, "idle" );
    level waittill( "stop_tarp_idle" );
    var_0 _meth_814B();
}

_ID53023()
{
    level._ID6032[2]._ID1224 _ID42237::_ID38864();
    level waittill( "activate_shower_breach" );
    level._ID6032[2]._ID1224 _ID42237::_ID38866();
}

_ID51623( var_0 )
{
    if ( _ID42237::_ID14385( "first_squad_spawned" ) )
        return;

    var_1 = self._ID669;
    var_2 = self._ID18304;
    self _meth_80B8( var_1 + "_gulag_intro" );

    if ( _ID42237::_ID3303( var_0, var_2 + "_gulag_intro" ) )
        _unknown_A70D( var_2 + "_gulag_intro" );
    else
        _unknown_A717( _ID42237::_ID28945( var_0 ) );
}

_ID32651( var_0 )
{
    self _meth_802A( self._ID18304 );
    self _meth_801D( var_0, "", 1 );
    self._ID18304 = var_0;
}

_ID45884()
{
    var_0 = _func_1A1( "armory_exit_volume", "targetname" );
    _unknown_A5B6( level._ID44260, 1 );
    var_1 = level._ID44260;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42360::_ID30011();
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        var_4 = var_0 _ID42407::_ID15547( "axis" );

        if ( var_4.size <= 0 || _ID42237::_ID14385( "out_of_armory" ) )
        {
            var_5 = level._ID44260;

            for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
            {
                var_6 = var_5[var_7];

                if ( !_func_1A7( var_6 ) )
                    continue;

                var_6 _ID42407::_ID32291( undefined );
            }

            var_clear_1
            var_clear_0
            _unknown_A628( level._ID44260, 0 );
            var_8 = level._ID44260;

            for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
            {
                var_2 = var_8[var_9];
                var_2 _ID42360::_ID30012();
                var_2 _meth_81D6( "stand", "crouch" );
            }

            var_clear_1
            var_clear_0
            return;
        }

        var_10 = level._ID44260;

        for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
        {
            var_6 = var_10[var_11];

            if ( !_func_1A7( var_6 ) )
                continue;

            if ( !_func_02F( var_6._ID377 ) || !_func_1A7( var_6._ID377 ) )
                var_6 _ID42407::_ID32291( _ID42237::_ID28945( var_4 ) );
        }

        var_clear_2
        var_clear_0
        wait 0.5;
    }
}

_ID51318()
{
    var_0 = _func_0DE( "allies" );
    wait 1;
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2 _ID42407::_ID20537() )
            continue;

        if ( _func_02F( var_2._ID22746 ) )
            var_2 _ID42407::_ID36519();

        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

surprise()
{
    level endon( "cancel_surprise" );
    var_0 = _func_1A1( "surprise_tv", "script_noteworthy" );
    var_0 thread _unknown_A90F();
    _ID42237::_ID14413( "player_nears_cell_door3" );
    _unknown_A925();
    _unknown_A93D();
    var_0 thread _ID42407::_ID27079( "h2_zombie_easter_egg" );
    var_0._ID31002 = _func_06A( "script_model", var_0._ID740 );
    var_0._ID31002._ID65 = var_0._ID65;
    var_0._ID31002 _meth_80B8( "com_tv1_pho_zombie" );
    wait 3.3;
    var_0._ID31002 _meth_80B7();
}

surprise_tv()
{
    self waittill( "off" );
    level notify( "cancel_surprise" );

    if ( _func_02F( self._ID31002 ) )
        self._ID31002 _meth_80B7();
}

surprise_damage_trigger()
{
    level endon( "cancel_surprise" );
    var_0 = _func_1A1( "surprise_damage_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

        if ( var_5 == "MOD_GRENADE" || var_5 == "MOD_GRENADE_SPLASH" )
            break;
    }
}

surprise_flag_touching()
{
    level endon( "cancel_surprise" );
    var_0 = _func_1A1( "surprise_trigger", "targetname" );

    for (;;)
    {
        var_1 = 0;

        while ( level._ID794 _meth_80B0( var_0 ) )
        {
            if ( var_1 > 3 )
                return;

            var_1 += 0.05;
            wait 0.05;
        }

        waittillframeend;
    }
}

gulag_entrance_portal_group()
{
    _func_31A( "gulag_entrance_portalgrp", 0 );
    _ID42237::_ID14413( "player_lands" );
    _func_31A( "gulag_entrance_portalgrp", 1 );
}

hide_courtyard_models()
{
    level waittill( "fxvolume_grp_setup_done" );
    var_0 = _func_1A2( "courtyard_hide", "script_noteworthy" );

    for (;;)
    {
        _ID42237::_ID14426( "gulag_enable_exterior_fx_vol" );
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2 _meth_805A();
        }

        var_clear_4
        var_clear_2
        _ID42237::_ID14413( "gulag_enable_exterior_fx_vol" );
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];
            var_2 _meth_8059();
        }

        var_clear_1
        var_clear_0
    }
}

exterior_interior_lightgrid()
{
    for (;;)
    {
        _ID42237::_ID14413( "disable_exterior_fx" );
        maps\gulag_lighting::_ID45391( "cellblock_01" );
        _ID42237::_ID14426( "disable_exterior_fx" );
        maps\gulag_lighting::_ID45391( "exterior" );
    }
}
