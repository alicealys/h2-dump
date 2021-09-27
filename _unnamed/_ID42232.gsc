// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    _ID42237::_ID3350( _func_1A2( "com_wall_fan_blade_rotate", "targetname" ), ::_unknown_073A, "slow" );
    _ID42237::_ID3350( _func_1A2( "com_wall_fan_blade_rotate_fast", "targetname" ), ::_unknown_074F, "fast" );
    var_0 = [];
    var_0["trigger_multiple_dyn_metal_detector"] = ::_unknown_0365;
    var_0["trigger_multiple_dyn_creaky_board"] = ::_unknown_04CA;
    var_0["trigger_multiple_dyn_photo_copier"] = ::_unknown_06E5;
    var_0["trigger_multiple_dyn_copier_no_light"] = ::_unknown_0708;
    var_0["trigger_radius_motion_light"] = ::_unknown_04FB;
    var_0["trigger_radius_dyn_motion_dlight"] = ::_unknown_0589;
    var_0["trigger_multiple_dog_bark"] = ::_unknown_05FA;
    var_0["trigger_radius_bird_startle"] = ::_unknown_06B1;
    var_0["trigger_multiple_dyn_motion_light"] = ::_unknown_051C;
    var_0["trigger_multiple_dyn_door"] = ::_unknown_063F;
    _unknown_00D8();
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _func_1A2( var_4, "classname" );
        _ID42237::_ID3350( var_3, ::_unknown_081D );
        _ID42237::_ID3350( var_3, var_2 );
    }

    var_clear_3
    _ID42237::_ID3350( _func_1A2( "vending_machine", "targetname" ), ::_unknown_0308 );
    _ID42237::_ID3350( _func_1A2( "toggle", "targetname" ), ::_unknown_06DB );
    level thread _unknown_012B();
    var_5 = _func_1A1( "civilian_jet_origin", "targetname" );

    if ( _func_02F( var_5 ) )
        var_5 thread _unknown_0159();
}

_ID25803()
{
    for (;;)
    {
        level waittill( "connecting",  var_0  );
        var_0 thread _unknown_08D7();
    }
}

_ID27484()
{
    if ( _ID42237::_ID20913() )
    {
        var_0 = level._ID805;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            var_1._ID37906 = [];
            var_1 thread _unknown_08FD();
        }

        var_clear_2
        var_clear_0
    }
}

_ID2288()
{
    self._ID37906 = [];
    thread _unknown_0910();
}

_ID7636()
{
    level endon( "game_ended" );
    _unknown_01BC();
    level waittill( "prematch_over" );

    for (;;)
    {
        thread _unknown_0230();
        self waittill( "start_flyby" );
        thread _unknown_027D();
        self waittill( "flyby_done" );
        _unknown_0237();
    }
}

_ID21050()
{
    self._ID21053 = _func_1A2( self._ID1191, "targetname" );
    self._ID21049 = _func_1A1( "civilian_jet_flyto", "targetname" );
    self._ID13013 = _func_1A2( "engine_fx", "targetname" );
    self._ID14498 = _func_1A2( "flash_fx", "targetname" );
    self._ID21041 = _func_155( "fx/fire/jet_afterburner" );
    self._ID21045 = _func_155( "fx/misc/aircraft_light_wingtip_red" );
    self._ID21044 = _func_155( "fx/misc/aircraft_light_wingtip_green" );
    self._ID21043 = _func_155( "fx/misc/aircraft_light_red_blink" );
    level._ID7699 = undefined;
    var_0 = _ID42407::_ID49965( _func_119( self._ID740 - self._ID21049._ID740 ), 20000 );
    self._ID21049._ID740 = self._ID21049._ID740 - var_0;
    self._ID740 = self._ID740 + var_0;
    var_1 = self._ID21053;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID740 = var_2._ID740 + var_0;
        var_2._ID25524 = var_2._ID740;
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_4 = self._ID13013;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5._ID740 = var_5._ID740 + var_0;
    }

    var_clear_2
    var_clear_0
    var_7 = self._ID14498;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_8._ID740 = var_8._ID740 + var_0;
    }

    var_clear_2
    var_clear_0
    var_10 = self._ID740;
    var_11 = self._ID21049._ID740;
    self._ID21047 = var_11 - var_10;
    var_12 = 2000;
    var_13 = _func_0C3( _func_0F3( var_10, var_11 ) );
    self._ID21046 = var_13 / var_12;
}

_ID21055()
{
    var_0 = self._ID21053;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID740 = var_1._ID25524;
        var_1 _meth_805A();
    }

    var_clear_2
    var_clear_0
}

_ID21061()
{
    level endon( "game_ended" );
    var_0 = _unknown_03BB();
    var_1 = _func_0E6( 10, var_0 );
    var_1 = _func_0C4( var_1, 100 );

    if ( _func_039( "jet_flyby_timer" ) != "" )
        level._ID7700 = 5 + _func_03A( "jet_flyby_timer" );
    else
        level._ID7700 = 0.25 + _func_0BA( 0.3, 0.7 ) * 60 * var_1;

    wait(level._ID7700);

    while ( _func_02F( level._ID2463 ) || _func_02F( level._ID1748 ) || _func_02F( level._ID7499 ) || _func_02F( level._ID29483 ) )
        wait 0.05;

    self notify( "start_flyby" );
    level._ID7699 = 1;
    self waittill( "flyby_done" );
    level._ID7699 = undefined;
}

_ID16685()
{
    if ( _ID42237::_ID20913() )
        return 10.0;

    if ( _func_02F( game["status"] ) && game["status"] == "overtime" )
        return 1.0;
    else
        return _unknown_046F( "timelimit" );
}

_ID16737( var_0 )
{
    var_0 = "scr_" + level._ID435 + "_" + var_0;
    return level._ID41495[var_0]._ID40022;
}

_ID21048()
{
    var_0 = self._ID21053;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _meth_8059();
    }

    var_clear_2
    var_clear_0
    var_3 = [];
    var_4 = [];
    var_5 = self._ID13013;

    for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
    {
        var_6 = var_5[var_8];
        var_7 = _func_06A( "script_model", var_6._ID740 );
        var_7 _meth_80B8( "tag_origin" );
        var_7._ID65 = var_6._ID65;
        var_3[var_3.size] = var_7;
    }

    var_clear_3
    var_clear_0
    var_9 = self._ID14498;

    for ( var_12 = _func_1DA( var_9 ); _func_02F( var_12 ); var_12 = _func_1BF( var_9, var_12 ) )
    {
        var_10 = var_9[var_12];
        var_11 = _func_06A( "script_model", var_10._ID740 );
        var_11 _meth_80B8( "tag_origin" );
        var_11._ID196 = var_10._ID922;
        var_11._ID65 = var_10._ID65;
        var_4[var_4.size] = var_11;
    }

    var_clear_3
    var_clear_0
    thread _unknown_05EB( self._ID21053[0], level._ID22921 );
    wait 0.05;
    var_13 = var_3;

    for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
    {
        var_7 = var_13[var_14];
        _func_157( self._ID21041, var_7, "tag_origin" );
    }

    var_clear_1
    var_clear_0
    var_15 = var_4;

    for ( var_16 = _func_1DA( var_15 ); _func_02F( var_16 ); var_16 = _func_1BF( var_15, var_16 ) )
    {
        var_11 = var_15[var_16];

        if ( _func_02F( var_11._ID196 ) && var_11._ID196 == "blink" )
        {
            _func_157( self._ID21043, var_11, "tag_origin" );
            continue;
        }

        if ( _func_02F( var_11._ID196 ) && var_11._ID196 == "red" )
        {
            _func_157( self._ID21045, var_11, "tag_origin" );
            continue;
        }

        _func_157( self._ID21044, var_11, "tag_origin" );
    }

    var_clear_1
    var_clear_0
    var_17 = self._ID21053;

    for ( var_18 = _func_1DA( var_17 ); _func_02F( var_18 ); var_18 = _func_1BF( var_17, var_18 ) )
    {
        var_1 = var_17[var_18];
        var_1 _meth_82B8( var_1._ID740 + self._ID21047, self._ID21046 );
    }

    var_clear_1
    var_clear_0
    var_19 = var_3;

    for ( var_20 = _func_1DA( var_19 ); _func_02F( var_20 ); var_20 = _func_1BF( var_19, var_20 ) )
    {
        var_7 = var_19[var_20];
        var_7 _meth_82B8( var_7._ID740 + self._ID21047, self._ID21046 );
    }

    var_clear_1
    var_clear_0
    var_21 = var_4;

    for ( var_22 = _func_1DA( var_21 ); _func_02F( var_22 ); var_22 = _func_1BF( var_21, var_22 ) )
    {
        var_11 = var_21[var_22];
        var_11 _meth_82B8( var_11._ID740 + self._ID21047, self._ID21046 );
    }

    var_clear_1
    var_clear_0
    wait(self._ID21046 + 1);
    var_23 = var_3;

    for ( var_24 = _func_1DA( var_23 ); _func_02F( var_24 ); var_24 = _func_1BF( var_23, var_24 ) )
    {
        var_7 = var_23[var_24];
        var_7 _meth_80B7();
    }

    var_clear_1
    var_clear_0
    var_25 = var_4;

    for ( var_26 = _func_1DA( var_25 ); _func_02F( var_26 ); var_26 = _func_1BF( var_25, var_26 ) )
    {
        var_11 = var_25[var_26];
        var_11 _meth_80B7();
    }

    var_clear_1
    var_clear_0
    self notify( "flyby_done" );
}

_ID21054( var_0, var_1 )
{
    var_0 thread _unknown_077C( "veh_mig29_dist_loop" );

    while ( !_unknown_07B3( var_0, var_1 ) )
        wait 0.05;

    var_0 thread _unknown_0793( "veh_mig29_close_loop" );

    while ( _ID28123( var_0, var_1 ) )
        wait 0.05;

    wait 0.5;
    var_0 thread _unknown_0797( "veh_mig29_sonic_boom" );

    while ( _unknown_07E6( var_0, var_1 ) )
        wait 0.05;

    var_0 notify( "stop soundveh_mig29_close_loop" );
    self waittill( "flyby_done" );
    var_0 notify( "stop soundveh_mig29_dist_loop" );
}

_ID28123( var_0, var_1, var_2 )
{
    var_3 = _func_06A( "script_origin", ( 0, 0, 1 ) );
    var_3 _meth_805A();

    if ( !_func_02F( var_1 ) )
        var_1 = self._ID740;

    var_3._ID740 = var_1;

    if ( _func_02F( var_2 ) && var_2 )
        var_3 _meth_807B( var_0 );
    else
        var_3 _meth_80A1( var_0 );

    wait 10.0;
    var_3 _meth_80B7();
}

_ID28124( var_0, var_1 )
{
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_2 _meth_805A();
    var_2 endon( "death" );
    thread _ID42237::_ID10280( var_2 );

    if ( _func_02F( var_1 ) )
    {
        var_2._ID740 = self._ID740 + var_1;
        var_2._ID65 = self._ID65;
        var_2 _meth_8053( self );
    }
    else
    {
        var_2._ID740 = self._ID740;
        var_2._ID65 = self._ID65;
        var_2 _meth_8053( self );
    }

    var_2 _meth_807C( var_0 );
    self waittill( "stop sound" + var_0 );
    var_2 _meth_80B2( var_0 );
    var_2 _meth_80B7();
}

_ID37333( var_0, var_1 )
{
    var_2 = _func_11F( _ID42237::_ID14539( var_0._ID65 ) );
    var_3 = _func_119( _ID42237::_ID14540( var_1 ) - var_0._ID740 );
    var_4 = _func_0FB( var_2, var_3 );

    if ( var_4 > 0 )
        return 1;
    else
        return 0;
}

_ID37332( var_0, var_1 )
{
    var_2 = _unknown_08D6( var_0, var_1 );

    if ( var_2 )
        var_3 = 1;
    else
        var_3 = -1;

    var_4 = _ID42237::_ID14540( var_0._ID740 );
    var_5 = var_4 + _ID42407::_ID49965( _func_11F( _ID42237::_ID14539( var_0._ID65 ) ), var_3 * 100000 );
    var_6 = _func_0F2( var_4, var_5, var_1 );
    var_7 = _func_0F3( var_4, var_6 );

    if ( var_7 < 3000 )
        return 1;
    else
        return 0;
}

_ID40327()
{
    level endon( "game_ended" );
    self endon( "death" );
    self _meth_80E1( "HINT_ACTIVATE" );
    self._ID40650 = _func_1A1( self._ID1191, "targetname" );
    var_0 = _func_1A1( self._ID40650._ID1191, "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    self._ID40647 = _func_1A1( var_1._ID1191, "targetname" );
    self._ID40648 = _func_1A1( self._ID40647._ID1191, "targetname" );

    if ( _func_02F( self._ID40648._ID1191 ) )
        self._ID40641 = _func_1A1( self._ID40648._ID1191, "targetname" );

    self._ID40650 _meth_82CA( 1 );
    self._ID40651 = self._ID40650._ID669;
    self._ID40638 = self._ID40650._ID922;
    self._ID40657 = var_0._ID669;
    self._ID40659 = var_0._ID740;
    self._ID40658 = var_0._ID65;
    self._ID40661 = var_1._ID740;
    self._ID40660 = var_1._ID65;
    _func_14C( self._ID40638 );
    var_0 _meth_80B7();
    var_1 _meth_80B7();
    self._ID34908 = [];
    self._ID34911 = 12;
    self._ID34912 = undefined;
    self._ID19111 = 400;
    thread _unknown_0A4E( self._ID40650 );
    self _meth_807C( "vending_machine_hum" );

    for (;;)
    {
        self waittill( "trigger",  var_2  );
        self _meth_80A1( "vending_machine_button_press" );

        if ( !self._ID34911 )
            continue;

        if ( _func_02F( self._ID34912 ) )
            _unknown_0AD1();

        _unknown_0ACE( _unknown_0AC0() );
        wait 0.05;
    }
}

_ID40328( var_0 )
{
    level endon( "game_ended" );
    var_1 = "mod_grenade mod_projectile mod_explosive mod_grenade_splash mod_projectile_splash splash";
    var_2 = _func_155( "fx/explosions/tv_explosion" );

    for (;;)
    {
        var_0 waittill( "damage",  var_7, var_6, var_5, var_4, var_3  );

        if ( _func_02F( var_7 ) )
        {
            if ( _func_125( var_1, _func_128( var_7 ) ) )
                var_3 *= 3;

            self._ID19111 = self._ID19111 - var_3;

            if ( self._ID19111 > 0 )
                continue;

            thread _ID42237::_ID27077( "h2_explosion_vending_machine_sparks", self._ID740 );
            self notify( "death" );
            self._ID740 = self._ID740 + ( 0, 0, 10000 );

            if ( !_func_02F( self._ID40641 ) )
                var_8 = self._ID40650._ID740 + ( 37, -31, 52 );
            else
                var_8 = self._ID40641._ID740;

            _func_156( var_2, var_8 );
            self._ID40650 _meth_80B8( self._ID40638 );

            while ( self._ID34911 > 0 )
            {
                if ( _func_02F( self._ID34912 ) )
                    _unknown_0B8B();

                _unknown_0B88( _unknown_0B7B() );
                wait 0.05;
            }

            self _meth_80B2( "vending_machine_hum" );
            return;
        }
    }
}

_ID35159()
{
    var_0 = _func_06A( "script_model", self._ID40659 );
    var_0 _meth_80B8( self._ID40657 );
    var_0._ID740 = self._ID40659;
    var_0._ID65 = self._ID40658;
    return var_0;
}

_ID34909( var_0 )
{
    var_0 _meth_82B8( self._ID40661, 0.1 );
    var_0 _meth_80A1( "vending_machine_soda_drop" );
    wait 0.1;
    self._ID34912 = var_0;
    self._ID34911--;
}

_ID34910()
{
    self endon( "death" );

    if ( _func_02F( self._ID34912._ID12325 ) && self._ID34912._ID12325 == 1 )
        return;

    var_0 = 1150.0;
    var_1 = var_0 * 0.75 * 1.15;
    var_2 = _func_119( self._ID40648._ID740 - self._ID40647._ID740 );
    var_3 = _ID42407::_ID49965( var_2, _func_0BA( var_1, var_0 ) );
    var_4 = ( var_3[0] * _func_0BA( 1, 1.15 ), var_3[1] * _func_0BA( 1, 1.15 ), var_3[2] * _func_0BA( 1, 1.15 ) );
    self._ID34912 _meth_82CC( self._ID40647._ID740, var_4 );
    self._ID34912._ID12325 = 1;
}

_ID14890()
{
    level endon( "game_ended" );
    var_0 = "briefcase_bomb_mp";
    _func_14E( var_0 );

    for (;;)
    {
        self waittill( "trigger_enter",  var_1  );

        if ( !var_1 _meth_831F( var_0 ) )
        {
            var_1 _meth_80A1( "freefall_death" );
            var_1 _meth_8319( var_0 );
            var_1 _meth_8302( var_0, 0 );
            var_1 _meth_8301( var_0, 0 );
            var_1 _meth_8320( var_0 );
        }
    }
}

_ID23485()
{
    level endon( "game_ended" );
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_0 _meth_81BF();
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );
    var_3 = _func_1A1( var_2._ID1191, "targetname" );
    var_4 = _func_1A1( var_3._ID1191, "targetname" );
    var_5 = [];
    var_6 = _func_0C4( var_1._ID740[0], var_2._ID740[0] );
    var_5[0] = var_6;
    var_7 = _func_0E6( var_1._ID740[0], var_2._ID740[0] );
    var_5[1] = var_7;
    var_8 = _func_0C4( var_1._ID740[1], var_2._ID740[1] );
    var_5[2] = var_8;
    var_9 = _func_0E6( var_1._ID740[1], var_2._ID740[1] );
    var_5[3] = var_9;
    var_10 = _func_0C4( var_1._ID740[2], var_2._ID740[2] );
    var_5[4] = var_10;
    var_11 = _func_0E6( var_1._ID740[2], var_2._ID740[2] );
    var_5[5] = var_11;
    var_1 _meth_80B7();
    var_2 _meth_80B7();

    if ( !_ID42237::_ID20913() )
        self._ID2486 = 7;
    else
        self._ID2486 = 2;

    self._ID2490 = 0;
    self._ID2482 = 0;
    self._ID37859 = 0;
    thread _unknown_0EE7( var_0 );
    thread _unknown_0EFC();
    thread _unknown_0EA6( var_5, "weapon_claymore", "weapon_c4" );
    var_12 = [];

    if ( _func_02F( var_4._ID1191 ) )
    {
        var_12 = _ID42237::_ID16640( var_4._ID1191, "targetname" );
        var_13 = var_12;

        for ( var_15 = _func_1DA( var_13 ); _func_02F( var_15 ); var_15 = _func_1BF( var_13, var_15 ) )
        {
            var_14 = var_13[var_15];
            var_14._ID50045 = _func_155( var_14._ID31220 );
        }

        var_clear_2
        var_clear_0
    }
    else
    {
        var_16 = _func_155( "fx/props/metal_detector_light" );
        var_17 = _func_1A5();
        var_17._ID740 = ( var_3._ID740[0], var_3._ID740[1], var_11 );
        var_17._ID50045 = var_16;
        var_18 = _func_1A5();
        var_18._ID740 = ( var_4._ID740[0], var_4._ID740[1], var_11 );
        var_18._ID50045 = var_16;
        var_12[0] = var_17;
        var_12[1] = var_18;
    }

    if ( !_func_02F( level.alarm_to_play_index ) )
        level.alarm_to_play_index = 0;

    level.alarm_to_play_index = 1 + level.alarm_to_play_index % 3;
    var_19 = "alarm_metal_detector_" + level.alarm_to_play_index;

    for (;;)
    {
        _ID42237::_ID41068( "dmg_triggered", "touch_triggered", "weapon_triggered" );
        thread _unknown_0F11( var_19, var_12 );
    }
}

_ID51854( var_0, var_1 )
{
    level endon( "game_ended" );

    if ( !self._ID2490 )
    {
        self._ID2490 = 1;
        thread _unknown_0F51();

        if ( !self._ID2482 )
            self _meth_80A1( var_0 );

        var_2 = var_1;

        for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
        {
            var_3 = var_2[var_5];

            if ( _func_02F( var_3._ID65 ) )
            {
                var_4 = _func_256( var_3._ID65 );
                _func_156( var_3._ID50045, var_3._ID740, var_4["forward"], var_4["up"] );
                continue;
            }

            _func_156( var_3._ID50045, var_3._ID740 );
        }

        var_clear_2
        var_clear_0
        wait(self._ID2486);
        self._ID2490 = 0;
    }
}

_ID3221()
{
    level endon( "game_ended" );

    if ( !self._ID37859 )
        return;

    var_0 = self._ID2486 + 0.15;

    if ( self._ID37859 )
        self._ID37859--;
    else
        self._ID2482 = 1;

    var_1 = _func_03D();
    var_2 = 7;

    if ( _ID42237::_ID20913() )
        var_2 = 2;

    _unknown_1013( "dmg_triggered", "touch_triggered", "weapon_triggered", var_2 + 2 );
    var_3 = _func_03D() - var_1;

    if ( var_3 > var_2 * 1000 + 1150 )
    {
        self._ID2482 = 0;
        self._ID37859 = 0;
    }
}

_ID41074( var_0, var_1, var_2, var_3 )
{
    level endon( "game_ended" );
    self endon( var_0 );
    self endon( var_1 );
    self endon( var_2 );
    wait(var_3);
}

_ID23488( var_0, var_1, var_2 )
{
    level endon( "game_ended" );

    for (;;)
    {
        _unknown_107C();
        var_3 = _func_1A2( "grenade", "classname" );
        var_4 = var_3;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( _func_02F( var_5._ID669 ) && var_5._ID669 == var_1 || var_5._ID669 == var_2 )
            {
                if ( _unknown_10C5( var_5, var_0 ) )
                    thread _unknown_10C3( var_5, var_0 );
            }
        }

        var_clear_2
        var_clear_0
    }
}

_ID41165()
{
    level endon( "game_ended" );
    self endon( "dmg_triggered" );
    self waittill( "touch_triggered" );
}

_ID41675( var_0, var_1 )
{
    var_0 endon( "death" );

    while ( _unknown_10FA( var_0, var_1 ) )
    {
        self notify( "weapon_triggered" );
        wait(self._ID2486);
    }
}

_ID20772( var_0, var_1 )
{
    var_2 = var_1[0];
    var_3 = var_1[1];
    var_4 = var_1[2];
    var_5 = var_1[3];
    var_6 = var_1[4];
    var_7 = var_1[5];
    var_8 = var_0._ID740[0];
    var_9 = var_0._ID740[1];
    var_10 = var_0._ID740[2];

    if ( _unknown_115F( var_8, var_2, var_3 ) )
    {
        if ( _unknown_1168( var_9, var_4, var_5 ) )
        {
            if ( _unknown_1171( var_10, var_6, var_7 ) )
                return 1;
        }
    }

    return 0;
}

_ID20773( var_0, var_1, var_2 )
{
    if ( var_0 > var_1 && var_0 < var_2 )
        return 1;

    return 0;
}

_ID23486( var_0 )
{
    level endon( "game_ended" );

    for (;;)
    {
        var_0 waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

        if ( _func_02F( var_5 ) && _unknown_11D3( var_5 ) )
            self notify( "dmg_triggered" );
    }
}

_ID23487()
{
    level endon( "game_ended" );

    for (;;)
    {
        self waittill( "trigger_enter" );

        while ( _unknown_155B( self ) )
        {
            self notify( "touch_triggered" );
            wait(self._ID2486);
        }
    }
}

_ID2496( var_0 )
{
    var_1 = "mod_melee melee mod_grenade mod_projectile mod_explosive mod_impact";
    var_2 = _func_129( var_1, " " );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_128( var_4 ) == _func_128( var_0 ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID9112()
{
    level endon( "game_ended" );

    for (;;)
    {
        self waittill( "trigger_enter",  var_0  );
        var_0 thread _unknown_1266( self );
    }
}

_ID11197( var_0 )
{
    self endon( "disconnect" );
    self endon( "death" );
    self _meth_80A1( "step_walk_plr_woodcreak_on" );

    for (;;)
    {
        self waittill( "trigger_leave",  var_1  );

        if ( var_0 != var_1 )
            continue;

        self _meth_80A1( "step_walk_plr_woodcreak_off" );
        return;
    }
}

_ID24308()
{
    level endon( "game_ended" );
    self._ID24472 = 1;
    self._ID22369 = 0;
    var_0 = _func_1A2( self._ID1191, "targetname" );
    _func_14C( "com_two_light_fixture_off" );
    _func_14C( "com_two_light_fixture_on" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_2._ID22342 = [];
        var_3 = _func_1A1( var_2._ID1191, "targetname" );

        if ( !_func_02F( var_3._ID1191 ) )
            continue;

        var_2._ID22342 = _func_1A2( var_3._ID1191, "targetname" );
    }

    var_clear_3
    var_clear_0

    for (;;)
    {
        self waittill( "trigger_enter" );

        while ( _unknown_1666( self ) )
        {
            var_5 = 0;
            var_6 = self._ID37904;

            for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
            {
                var_7 = var_6[var_8];

                if ( _func_02F( var_7._ID11138 ) && var_7._ID11138 > 5.0 )
                    var_5 = 1;
            }

            var_clear_2
            var_clear_0

            if ( var_5 )
            {
                if ( !self._ID22369 )
                {
                    self._ID22369 = 1;
                    var_0[0] _meth_80A1( "switch_auto_lights_on" );
                    var_9 = var_0;

                    for ( var_13 = _func_1DA( var_9 ); _func_02F( var_13 ); var_13 = _func_1BF( var_9, var_13 ) )
                    {
                        var_2 = var_9[var_13];
                        var_2 _meth_81EB( 1.0 );

                        if ( _func_02F( var_2._ID22342 ) )
                        {
                            var_10 = var_2._ID22342;

                            for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
                            {
                                var_11 = var_10[var_12];
                                var_11 _meth_80B8( "com_two_light_fixture_on" );
                            }

                            var_clear_2
                            var_clear_0
                        }
                    }

                    var_clear_1
                    var_clear_0
                }

                thread _unknown_142C( var_0, 10.0 );
            }

            wait 0.05;
        }
    }
}

_ID24309( var_0, var_1 )
{
    self notify( "motion_light_timeout" );
    self endon( "motion_light_timeout" );
    wait(var_1);
    var_2 = var_0;

    for ( var_7 = _func_1DA( var_2 ); _func_02F( var_7 ); var_7 = _func_1BF( var_2, var_7 ) )
    {
        var_3 = var_2[var_7];
        var_3 _meth_81EB( 0 );

        if ( _func_02F( var_3._ID22342 ) )
        {
            var_4 = var_3._ID22342;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];
                var_5 _meth_80B8( "com_two_light_fixture_off" );
            }

            var_clear_2
            var_clear_0
        }
    }

    var_clear_2
    var_clear_0
    var_0[0] _meth_80A1( "switch_auto_lights_off" );
    self._ID22369 = 0;
}

_ID26042()
{
    if ( !_func_02F( level._ID26044 ) )
        level._ID26044 = _func_155( "fx/misc/outdoor_motion_light" );

    level endon( "game_ended" );
    self._ID24472 = 1;
    self._ID22369 = 0;
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    _func_14C( "com_two_light_fixture_off" );
    _func_14C( "com_two_light_fixture_on" );

    for (;;)
    {
        self waittill( "trigger_enter" );

        while ( _unknown_17CE( self ) )
        {
            var_2 = 0;
            var_3 = self._ID37904;

            for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
            {
                var_4 = var_3[var_5];

                if ( _func_02F( var_4._ID11138 ) && var_4._ID11138 > 5.0 )
                    var_2 = 1;
            }

            var_clear_2
            var_clear_0

            if ( var_2 )
            {
                if ( !self._ID22369 )
                {
                    self._ID22369 = 1;
                    var_0 _meth_80A1( "switch_auto_lights_on" );
                    var_0 _meth_80B8( "com_two_light_fixture_on" );
                    var_6 = var_1;

                    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
                    {
                        var_7 = var_6[var_8];
                        var_7._ID22297 = _func_06A( "script_model", var_7._ID740 );
                        var_7._ID22297 _meth_80B8( "tag_origin" );
                        _func_157( level._ID26044, var_7._ID22297, "tag_origin" );
                    }

                    var_clear_2
                    var_clear_0
                }

                thread _unknown_15FD( var_0, var_1, 10.0 );
            }

            wait 0.05;
        }
    }
}

_ID26043( var_0, var_1, var_2 )
{
    self notify( "motion_light_timeout" );
    self endon( "motion_light_timeout" );
    wait(var_2);
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4._ID22297 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_0 _meth_80A1( "switch_auto_lights_off" );
    var_0 _meth_80B8( "com_two_light_fixture_off" );
    self._ID22369 = 0;
}

_ID11412()
{
    level endon( "game_ended" );
    self._ID24472 = 1;
    var_0 = _func_1A1( self._ID1191, "targetname" );

    for (;;)
    {
        self waittill( "trigger_enter",  var_1  );

        while ( _unknown_18DE( self ) )
        {
            var_2 = 0;
            var_3 = self._ID37904;

            for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
            {
                var_4 = var_3[var_5];

                if ( _func_02F( var_4._ID11138 ) && var_4._ID11138 > var_2 )
                    var_2 = var_4._ID11138;
            }

            var_clear_2
            var_clear_0

            if ( var_2 > 6.0 )
            {
                var_0 _meth_80A1( "dyn_anml_dog_bark" );
                wait(_func_0BA( 16 / var_2, 16 / var_2 + _func_0B8( 1.0 ) ));
                continue;
            }

            wait 0.05;
        }
    }
}

_ID38770()
{
    var_0 = _func_1A1( self._ID1191, "targetname" );
    self._ID11617 = var_0;
    self._ID11615 = _unknown_177B( _func_119( self _meth_809C() - var_0 _meth_809C() ) );
    var_0._ID4893 = var_0._ID65[1];
    var_1 = 1.0;

    for (;;)
    {
        self waittill( "trigger_enter",  var_2  );
        var_0 thread _unknown_177A( var_1, _unknown_1793( var_2 ) );

        if ( _unknown_1982( self ) )
            self waittill( "trigger_empty" );

        wait 3.0;

        if ( _unknown_1993( self ) )
            self waittill( "trigger_empty" );

        var_0 thread _unknown_17B3( var_1 );
    }
}

_ID11627( var_0, var_1 )
{
    if ( var_1 )
        self _meth_82BF( ( 0, self._ID4893 + 90, 1 ), var_0, 0.1, 0.75 );
    else
        self _meth_82BF( ( 0, self._ID4893 - 90, 1 ), var_0, 0.1, 0.75 );

    self _meth_80A1( "door_generic_house_open" );
    wait(var_0 + 0.05);
}

_ID11616( var_0 )
{
    self _meth_82BF( ( 0, self._ID4893, 1 ), var_0 );
    self _meth_80A1( "door_generic_house_close" );
    wait(var_0 + 0.05);
}

_ID16239( var_0 )
{
    return _func_0FB( self._ID11615, _func_119( var_0._ID740 - self._ID11617 _meth_809C() ) ) > 0;
}

_ID16725( var_0 )
{
    return ( var_0[1], 0 - var_0[0], var_0[2] );
}

_ID39917()
{
    if ( self._ID170 != "trigger_use_touch" )
        return;

    var_0 = _func_1A2( self._ID1191, "targetname" );
    self._ID22369 = 1;
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_81EB( 1.5 * self._ID22369 );
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        self waittill( "trigger" );
        self._ID22369 = !self._ID22369;

        if ( self._ID22369 )
        {
            var_4 = var_0;

            for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
            {
                var_2 = var_4[var_5];
                var_2 _meth_81EB( 1.5 );
            }

            var_clear_1
            var_clear_0
            self _meth_80A1( "switch_auto_lights_on" );
            continue;
        }

        var_6 = var_0;

        for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
        {
            var_2 = var_6[var_7];
            var_2 _meth_81EB( 0 );
        }

        var_clear_1
        var_clear_0
        self _meth_80A1( "switch_auto_lights_off" );
    }
}

_ID5250()
{

}

_ID26612( var_0 )
{
    self._ID8657 = _unknown_1958( var_0 );

    if ( !_func_02F( self._ID8657._ID1191 ) )
    {
        self._ID8657 = undefined;
        return;
    }

    _unknown_1AE8();
    self._ID8657._ID3189 = "photocopier";
    self._ID8657 _ID42259::_ID32556();
    var_1 = _func_1A1( self._ID8657._ID1191, "targetname" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );
    var_2._ID20129 = var_2 _meth_81EA();
    var_2 _meth_81EB( 0 );
    var_0._ID8663 = var_1;
    var_0._ID35908 = var_1._ID740;
    var_0._ID594 = var_2;
    var_3 = self._ID8657._ID65 + ( 0, 90, 0 );
    var_4 = _func_11F( var_3 );
    var_0._ID12609 = var_0._ID35908 + _ID42407::_ID49965( var_4, 30 );
}

_ID15904( var_0 )
{
    if ( !_func_02F( var_0._ID1191 ) )
    {
        var_1 = _func_1A2( "destructible_toy", "targetname" );
        var_2 = var_1[0];
        var_3 = var_1;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( _func_02F( var_4._ID279 ) && var_4._ID279 == "toy_copier" )
            {
                if ( _func_0F3( var_0._ID740, var_2._ID740 ) > _func_0F3( var_0._ID740, var_4._ID740 ) )
                    var_2 = var_4;
            }
        }

        var_clear_2
        var_clear_0
    }
    else
    {
        var_2 = _func_1A1( var_0._ID1191, "targetname" );
        var_2 _meth_82CA( 1 );
    }

    return var_2;
}

_ID41085()
{
    self._ID8657 endon( "FX_State_Change0" );
    self._ID8657 endon( "death" );
    self waittill( "trigger_enter" );
}

_ID26610()
{
    level endon( "game_ended" );
    _unknown_1A44( self );

    if ( !_func_02F( self._ID8657 ) )
        return;

    self._ID8657 endon( "FX_State_Change0" );
    thread _unknown_1B2A();

    for (;;)
    {
        _unknown_1AB0();
        self._ID8657 thread _ID42259::_ID3111( self._ID8657, "photocopier_copying" );
        self _meth_80A1( "mach_copier_run" );

        if ( _func_02F( self._ID8663 ) )
        {
            _unknown_1AFE( self );
            thread _unknown_1B0A();
            thread _unknown_1B3A();
        }

        wait 6;
    }
}

_ID26614()
{
    level endon( "game_ended" );
    self._ID8657 = _unknown_1AC2( self );
    self._ID8657 endon( "FX_State_Change0" );

    for (;;)
    {
        _unknown_1AF6();
        self _meth_80A1( "mach_copier_run" );
        wait 3;
    }
}

_ID29738( var_0 )
{
    var_0._ID8663 _meth_82B8( var_0._ID35908, 0.2 );
    var_0._ID594 _meth_81EB( 0 );
}

_ID26611()
{
    self._ID8657 notify( "bar_goes" );
    self._ID8657 endon( "bar_goes" );
    self._ID8657 endon( "FX_State_Change0" );
    self._ID8657 endon( "death" );
    var_0 = self._ID8663;
    wait 2.0;
    var_0 _meth_82B8( self._ID12609, 1.6 );
    wait 1.8;
    var_0 _meth_82B8( self._ID35908, 1.6 );
    wait 1.6;
    var_1 = self._ID594;
    var_2 = 0.2;
    var_3 = var_2 / 0.05;

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        var_5 = var_4 * 0.05;
        var_5 /= var_2;
        var_5 = 1 - var_5 * var_1._ID20129;

        if ( var_5 > 0 )
            var_1 _meth_81EB( var_5 );

        wait 0.05;
    }

    var_1 _meth_81EB( 0 );
}

_ID26613()
{
    self._ID8657 notify( "light_on" );
    self._ID8657 endon( "light_on" );
    self._ID8657 endon( "FX_State_Change0" );
    self._ID8657 endon( "death" );
    var_0 = self._ID594;
    var_1 = 0.2;
    var_2 = var_1 / 0.05;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        var_4 = var_3 * 750;
        var_4 /= var_1;
        var_0 _meth_81EB( var_4 * var_0._ID20129 );
        wait 0.05;
    }

    _unknown_1C77( var_0 );
}

_ID26615()
{
    self._ID8657 waittill( "FX_State_Change0" );
    self._ID8657 endon( "death" );
    _unknown_1C35( self );
}

_ID26616( var_0 )
{
    var_0 _meth_81EB( 3000 );
    wait 0.05;
    var_0 _meth_81EB( 0 );
    wait 0.1;
    var_0 _meth_81EB( 3000 );
    wait 0.05;
    var_0 _meth_81EB( 0 );
    wait 0.1;
    var_0 _meth_81EB( 3000 );
}

_ID13933( var_0 )
{
    var_1 = 0;
    var_2 = 20000;
    var_3 = 1.0;

    if ( _func_02F( self._ID997 ) )
        var_3 = self._ID997;

    if ( var_0 == "slow" )
        var_1 = _func_0BA( 100 * var_3, 360 * var_3 );
    else if ( var_0 == "fast" )
        var_1 = _func_0BA( 720 * var_3, 1000 * var_3 );
    else
    {

    }

    wait(_func_0BA( 0, 1 ));
    var_4 = self._ID65;
    var_5 = _ID42407::_ID49965( _func_11E( self._ID65 ), 100 );
    var_5 = _func_119( var_5 );

    for (;;)
    {
        var_6 = _func_0C3( _func_0FB( var_5, ( 1, 0, 0 ) ) );
        var_7 = _func_0C3( _func_0FB( var_5, ( 0, 1, 0 ) ) );
        var_8 = _func_0C3( _func_0FB( var_5, ( 0, 0, 1 ) ) );

        if ( var_6 > 0.9 )
            self _meth_82C7( ( var_1, 0, 0 ), var_2 );
        else if ( var_7 > 0.9 )
            self _meth_82C7( ( var_1, 0, 0 ), var_2 );
        else if ( var_8 > 0.9 )
            self _meth_82C7( ( 0, var_1, 0 ), var_2 );
        else
            self _meth_82C7( ( 0, var_1, 0 ), var_2 );

        wait(var_2);
    }
}

_ID38943( var_0, var_1 )
{
    level endon( "game_ended" );
    self._ID13087 = self _meth_81BD();

    for (;;)
    {
        self waittill( "trigger",  var_2  );

        if ( !_func_1B3( var_2 ) && !_func_02F( var_2._ID14234 ) )
            continue;

        if ( !_func_1A7( var_2 ) )
            continue;

        if ( !_func_02F( var_2._ID37906[self._ID13087] ) )
            var_2 thread _unknown_1E50( self, var_0, var_1 );
    }
}

_ID28020( var_0, var_1, var_2 )
{
    if ( !_func_1B3( self ) )
        self endon( "death" );

    if ( !_ID42237::_ID20913() )
        var_3 = self._ID17491;
    else
        var_3 = "player" + _func_03D();

    var_0._ID37904[var_3] = self;

    if ( _func_02F( var_0._ID24472 ) )
        self._ID24473++;

    var_0 notify( "trigger_enter",  self  );
    self notify( "trigger_enter",  var_0  );

    if ( _func_02F( var_1 ) )
        self thread [[ var_1 ]]( var_0 );

    self._ID37906[var_0._ID13087] = var_0;

    while ( _func_1A7( self ) && self _meth_80B0( var_0 ) && _ID42237::_ID20913() || !level._ID15325 )
        wait 0.05;

    if ( _func_02F( self ) )
    {
        self._ID37906[var_0._ID13087] = undefined;

        if ( _func_02F( var_0._ID24472 ) )
            self._ID24473--;

        self notify( "trigger_leave",  var_0  );

        if ( _func_02F( var_2 ) )
            self thread [[ var_2 ]]( var_0 );
    }

    if ( !_ID42237::_ID20913() && level._ID15325 )
        return;

    var_0._ID37904[var_3] = undefined;
    var_0 notify( "trigger_leave",  self  );

    if ( !_unknown_1F65( var_0 ) )
        var_0 notify( "trigger_empty" );
}

_ID24418()
{
    self endon( "disconnect" );

    if ( !_func_1B3( self ) )
        self endon( "death" );

    self._ID24473 = 0;
    self._ID11138 = 0;

    for (;;)
    {
        self waittill( "trigger_enter" );
        var_0 = self._ID740;

        while ( self._ID24473 )
        {
            self._ID11138 = _func_0F3( var_0, self._ID740 );
            var_0 = self._ID740;
            wait 0.05;
        }

        self._ID11138 = 0;
    }
}

_ID3230( var_0 )
{
    return var_0._ID37904.size;
}

_ID28019( var_0, var_1 )
{
    return _func_02F( var_0._ID37906[var_1._ID13087] );
}
#using_animtree("script_model");

_ID48125()
{
    level._ID30900["photocopier"] = #animtree;
    level._ID30895["photocopier"]["photocopier_copying"] = %h2_com_photocopier_animated;
}
