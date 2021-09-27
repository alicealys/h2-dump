// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "snowmobile", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_005D );
    _ID42411::_ID6216( "vehicle_snowmobile", "vehicle_snowmobile_static" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6204( ::_unknown_0262, ::_unknown_025D );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6262( ::_unknown_0514 );

    if ( !_func_02F( anim._ID1426 ) )
        anim._ID1426 = [];

    _ID42411::_ID6234( var_2, "brakelight_truck_right", "TAG_TAIL_LIGHT_LEFT", "fx/misc/car_brakelight_truck_R_pb", "brakelights" );
    _ID42411::_ID6234( var_2, "brakelight_truck_left", "TAG_TAIL_LIGHT_LEFT", "fx/misc/car_brakelight_truck_L_pb", "brakelights" );
    anim._ID1426["snowmobile_leftground"] = _func_155( "fx/treadfx/bigair_snow_snowmobile_emitter" );
    anim._ID1426["snowmobile_bumpbig"] = _func_155( "fx/treadfx/bigjump_land_snow_snowmobile" );
    anim._ID1426["snowmobile_bump"] = _func_155( "fx/treadfx/smalljump_land_snow_snowmobile" );
    anim._ID1426["snowmobile_sway_left"] = _func_155( "fx/treadfx/leftturn_snow_snowmobile" );
    anim._ID1426["snowmobile_sway_right"] = _func_155( "fx/treadfx/rightturn_snow_snowmobile" );
    anim._ID1426["snowmobile_collision"] = _func_155( "fx/explosions/grenadeExp_snow" );
    _ID42411::_ID6252();
    _ID42411::_ID47700();
}

_ID19731()
{
    self._ID11785 = 0;
    self._ID26297 = 1;
    self._ID36389 = 1;
    self._ID36392 = 180;
    self._ID36391 = 0.15;
    self._ID36388 = 0;
    self._ID39658 = -1;
    self._ID53940 = 0;
    self._ID22114 = 1;
    self._ID48141 = 90;
    self._ID43031 = 55;

    if ( !_ID42407::_ID20614() )
        thread _unknown_02D5();

    self._ID52006 = 500;
    self._ID52501 = -1;
    self._ID13251 = [];
    self._ID13251["jump"] = [];
    self._ID13251["jump"]["driver"] = 0;
    self._ID13251["jump"]["passenger"] = 0;
    self._ID13251["bump"] = [];
    self._ID13251["bump"]["driver"] = 0;
    self._ID13251["bump"]["passenger"] = 0;
    self._ID13251["bump_big"] = [];
    self._ID13251["bump_big"]["driver"] = 0;
    self._ID13251["bump_big"]["passenger"] = 0;
    self._ID13251["sway_left"] = [];
    self._ID13251["sway_left"]["driver"] = 0;
    self._ID13251["sway_left"]["passenger"] = 0;
    self._ID13251["sway_right"] = [];
    self._ID13251["sway_right"]["driver"] = 0;
    self._ID13251["sway_right"]["passenger"] = 0;
    thread _unknown_028E();
    thread _unknown_02E2();
    thread _unknown_02FD();
    thread _unknown_0324();
    thread _unknown_0374();
    thread _unknown_02AC();
    thread _unknown_02C0();

    if ( _func_125( self._ID1282, "player" ) )
    {
        var_0 = _func_06A( "script_model", ( 0, 0, 0 ) );
        var_0 _meth_80B8( "h2_viewmodel_glock" );
        var_0 _meth_8053( self, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        var_0 _meth_8050();
    }
}

_ID53921()
{
    self._ID29969._ID36388 = 0;
    self._ID25834 = 1;
    self._ID9526["combat"] = animscripts\custom\snowmobile::_ID616;
    self._ID9526["stop"] = animscripts\custom\snowmobile::_ID616;
}

_ID53614()
{
    self endon( "death" );
    var_0 = self _meth_8291();

    for (;;)
    {
        self._ID28502 = var_0;
        var_0 = self _meth_8291();
        wait 0.05;
    }
}

_ID47808()
{
    self endon( "death" );
    waitframe;

    if ( self._ID29965.size == 1 )
    {
        self._ID11785 = 1;
        self._ID26297 = 0;
    }
}

_ID43072( var_0 )
{
    if ( _func_02F( anim._ID1426[var_0] ) )
        _func_157( anim._ID1426[var_0], self, "tag_deathfx" );
}

_ID49319()
{
    self endon( "death" );

    for (;;)
    {
        if ( _func_02F( self._ID53527 ) && self._ID53527 )
        {
            wait 0.05;
            continue;
        }

        var_0 = _func_0F0( self._ID65[0] );
        var_1 = _func_0F0( self._ID65[2] );
        var_2 = _func_02F( self._ID43031 ) && _func_0C3( var_1 ) > self._ID43031;
        var_2 |= _func_02F( self._ID48141 ) && _func_0C3( var_0 ) > self._ID48141;

        if ( var_2 )
        {
            var_3 = 0;
            var_4 = 1;
            var_5 = self._ID29965;

            for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
            {
                var_6 = var_5[var_7];

                if ( !_func_1A7( var_6 ) )
                    continue;

                if ( !_func_02F( var_6._ID22746 ) )
                {
                    var_6._ID35375 = animscripts\custom\snowmobile::_ID53889;
                    var_6 _meth_8058();
                    var_3 = 1;
                    continue;
                }

                var_4 = 0;
            }

            var_clear_2
            var_clear_0
            var_2 = var_3 && var_4;
        }

        self._ID53527 = var_2;
        wait 0.05;
    }
}

_ID53917()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "veh_leftground" );

        if ( self._ID53940 == 0 )
        {
            self._ID52501 = _func_03D();
            self._ID13251["jump"]["driver"] = 1;
            self._ID13251["jump"]["passenger"] = 1;
            _unknown_0447( "snowmobile_leftground" );
            thread _ID51653::_ID48279();
            wait 1;
        }
    }
}

_ID52727()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "veh_landed" );

        if ( self._ID53940 == 0 )
        {
            if ( self._ID52501 + self._ID52006 < _func_03D() )
            {
                self._ID13251["bump_big"]["driver"] = 1;
                self._ID13251["bump_big"]["passenger"] = 1;
                _unknown_0490( "snowmobile_bumpbig" );
                continue;
            }

            self._ID13251["bump"]["driver"] = 1;
            self._ID13251["bump"]["passenger"] = 1;
            _unknown_04B7( "snowmobile_bump" );
        }
    }
}

_ID54521()
{
    self endon( "death" );
    var_0 = 10000.0;
    var_1 = 1e+08.0;

    for (;;)
    {
        self waittill( "veh_jolt",  var_2  );

        if ( _func_02F( level._ID794._ID40065 ) )
        {
            var_3 = level._ID794._ID40065._ID740 - self._ID740;

            if ( _func_0F9( var_3 ) < var_0 )
            {
                var_4 = _func_256( level._ID794._ID40065._ID65 );
                var_5 = _func_119( var_3 ) * _func_0F6( var_2 ) * 2.0;
                var_6 = ( _func_0FB( var_5, var_4["forward"] ), _func_0FB( var_5, var_4["right"] ), _func_0FB( var_5, var_4["up"] ) );
                level._ID794._ID40065 notify( "veh_jolt",  var_6  );
            }
        }

        if ( _func_0F9( var_2 ) >= var_1 || var_2[2] >= var_1 )
        {
            if ( self._ID53940 == 0 )
            {
                if ( var_2[1] >= 0 )
                {
                    self._ID13251["sway_left"]["driver"] = 1;
                    self._ID13251["sway_left"]["passenger"] = 1;
                    _unknown_0571( "snowmobile_sway_left" );
                    continue;
                }

                self._ID13251["sway_right"]["driver"] = 1;
                self._ID13251["sway_right"]["passenger"] = 1;
                _unknown_0598( "snowmobile_sway_right" );
            }
        }
    }
}

_ID52863()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "veh_collision",  var_1, var_0  );
        var_2 = self._ID29965;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _func_1A7( var_3 ) && !_func_02F( var_3._ID22746 ) )
            {
                var_3._ID35375 = animscripts\custom\snowmobile::_ID34876;
                var_3 _meth_8058();
            }
        }

        var_clear_2
        var_clear_0

        if ( self._ID53940 == 0 )
            _unknown_05F4( "snowmobile_collision" );
    }
}

_ID50322()
{
    var_0 = self._ID29965;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_1A7( var_1 ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}
#using_animtree("vehicles");

_ID50990()
{
    self endon( "death" );
    self endon( "kill_anims" );
    wait 0.05;
    self _meth_8151( %snowmobile, %root, 1, 0 );
    self _meth_8156( %sm_turn, 1, 0 );

    for (;;)
    {
        _ID42413::_ID39650( self );

        if ( self._ID36389 && _unknown_073D() )
        {
            if ( self._ID36388 >= 0 )
            {
                self _meth_814E( %snowmobile_vehicle_lean_r_delta, 1, 0.1, 0 );
                self _meth_8120( %snowmobile_vehicle_lean_r_delta, self._ID36388 );
            }
            else
            {
                self _meth_814E( %snowmobile_vehicle_lean_l_delta, 1, 0.1, 0 );
                self _meth_8120( %snowmobile_vehicle_lean_l_delta, _func_0C3( self._ID36388 ) );
            }
        }
        else
        {
            self _meth_814C( %snowmobile_vehicle_lean_r_delta, 0.1 );
            self _meth_814C( %snowmobile_vehicle_lean_l_delta, 0.1 );

            if ( !_unknown_07AA() )
                break;
        }

        wait 0.05;
    }
}

_ID44485()
{
    level._ID34889 = [];
    level._ID34889["snowmobile_passenger"] = [];
    level._ID34889["snowmobile_driver"] = [];
    var_0 = level._ID30895["generic"];

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_125( var_2, "snowmobile_passenger_mount" ) )
        {
            level._ID34889["snowmobile_passenger"][var_2] = 1;
            continue;
        }

        if ( _func_125( var_2, "snowmobile_driver_mount" ) )
            level._ID34889["snowmobile_driver"][var_2] = 1;
    }

    var_clear_2
}

_ID32509( var_0 )
{
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    level._ID30895["generic"]["snowmobile_passenger_mount_dir1"] = %snowmobile_passenger_mount_dir3;
    level._ID30895["generic"]["snowmobile_passenger_mount_dir3"] = %snowmobile_passenger_mount_dir1;
    level._ID30895["generic"]["snowmobile_driver_mount_dir3"] = %snowmobile_driver_mount_dir3;
    level._ID30895["generic"]["snowmobile_driver_mount_dir1"] = %snowmobile_driver_mount_dir1;
    level._ID30895["generic"]["snowmobile_passenger_mount_dir1_short"] = %snowmobile_passenger_mount_dir3_short;
    level._ID30895["generic"]["snowmobile_passenger_mount_dir3_short"] = %snowmobile_passenger_mount_dir1_short;
    level._ID30895["generic"]["snowmobile_driver_mount_dir3_short"] = %snowmobile_driver_mount_dir3_short;
    level._ID30895["generic"]["snowmobile_driver_mount_dir1_short"] = %snowmobile_driver_mount_dir1_short;
    level._ID30895["snowmobile"]["driver"]["idle"] = %snowmobile_driver_aiming_idle;
    level._ID30895["snowmobile"]["driver"]["drive"] = %snowmobile_driver_driving_idle;
    level._ID30895["snowmobile"]["driver"]["left2right"] = %snowmobile_driver_lean_l2r;
    level._ID30895["snowmobile"]["driver"]["right2left"] = %snowmobile_driver_lean_r2l;
    level._ID30895["snowmobile"]["driver"]["fire"] = %snowmobile_driver_autofire;
    level._ID30895["snowmobile"]["driver"]["single"] = %snowmobile_driver_fire;
    level._ID30895["snowmobile"]["driver"]["drive_jump"] = %snowmobile_driver_driving_jump_01;
    level._ID30895["snowmobile"]["driver"]["drive_bump"] = %snowmobile_driver_driving_bump_01;
    level._ID30895["snowmobile"]["driver"]["drive_bump_big"] = %snowmobile_driver_driving_bump_02;
    level._ID30895["snowmobile"]["driver"]["drive_sway_left"] = %snowmobile_driver_driving_swayl_01;
    level._ID30895["snowmobile"]["driver"]["drive_sway_right"] = %snowmobile_driver_driving_swayr_01;
    level._ID30895["snowmobile"]["driver"]["shoot_jump"] = %snowmobile_driver_aiming_jump_01;
    level._ID30895["snowmobile"]["driver"]["shoot_bump"] = %snowmobile_driver_aiming_bump_01;
    level._ID30895["snowmobile"]["driver"]["shoot_bump_big"] = %snowmobile_driver_aiming_bump_02;
    level._ID30895["snowmobile"]["driver"]["shoot_sway_left"] = %snowmobile_driver_aiming_swayl_01;
    level._ID30895["snowmobile"]["driver"]["shoot_sway_right"] = %snowmobile_driver_aiming_swayr_01;
    level._ID30895["snowmobile"]["driver"]["add_aim_left"]["left"] = %snowmobile_driver_aim4l_add;
    level._ID30895["snowmobile"]["driver"]["add_aim_left"]["center"] = %snowmobile_driver_aim4c_add;
    level._ID30895["snowmobile"]["driver"]["add_aim_left"]["right"] = %snowmobile_driver_aim4r_add;
    level._ID30895["snowmobile"]["driver"]["straight_level"]["left"] = %snowmobile_driver_aim5l;
    level._ID30895["snowmobile"]["driver"]["straight_level"]["center"] = %snowmobile_driver_aim5c;
    level._ID30895["snowmobile"]["driver"]["straight_level"]["right"] = %snowmobile_driver_aim5r;
    level._ID30895["snowmobile"]["driver"]["add_aim_right"]["left"] = %snowmobile_driver_aim6l_add;
    level._ID30895["snowmobile"]["driver"]["add_aim_right"]["center"] = %snowmobile_driver_aim6c_add;
    level._ID30895["snowmobile"]["driver"]["add_aim_right"]["right"] = %snowmobile_driver_aim6r_add;
    level._ID30895["snowmobile"]["passenger"]["hide"] = %snowmobile_passenger_hide;
    level._ID30895["snowmobile"]["passenger"]["drive"] = %snowmobile_passenger_driving_idle;
    level._ID30895["snowmobile"]["passenger"]["add_lean"]["left"] = %snowmobile_passenger_lean_l;
    level._ID30895["snowmobile"]["passenger"]["add_lean"]["right"] = %snowmobile_passenger_lean_r;
    level._ID30895["snowmobile"]["passenger"]["idle"] = %snowmobile_passenger_aiming_idle;
    level._ID30895["snowmobile"]["passenger"]["fire"] = %snowmobile_passenger_autofire;
    level._ID30895["snowmobile"]["passenger"]["single"] = %snowmobile_passenger_fire;
    level._ID30895["snowmobile"]["passenger"]["reload"] = %snowmobile_passenger_reload;
    level._ID30895["snowmobile"]["passenger"]["gun_down"] = %snowmobile_passenger_aim2hide;
    level._ID30895["snowmobile"]["passenger"]["gun_up"] = %snowmobile_passenger_hide2aim;
    level._ID30895["snowmobile"]["passenger"]["hide_jump"] = %snowmobile_passenger_driving_jump_01;
    level._ID30895["snowmobile"]["passenger"]["hide_bump"] = %snowmobile_passenger_driving_bump_01;
    level._ID30895["snowmobile"]["passenger"]["hide_bump_big"] = %snowmobile_passenger_driving_bump_02;
    level._ID30895["snowmobile"]["passenger"]["hide_sway_left"] = %snowmobile_passenger_driving_swayl_01;
    level._ID30895["snowmobile"]["passenger"]["hide_sway_right"] = %snowmobile_passenger_driving_swayr_01;
    level._ID30895["snowmobile"]["passenger"]["drive_jump"] = %snowmobile_passenger_aiming_jump_01;
    level._ID30895["snowmobile"]["passenger"]["drive_bump"] = %snowmobile_passenger_aiming_bump_01;
    level._ID30895["snowmobile"]["passenger"]["drive_bump_big"] = %snowmobile_passenger_aiming_bump_02;
    level._ID30895["snowmobile"]["passenger"]["drive_sway_left"] = %snowmobile_passenger_aiming_swayl_01;
    level._ID30895["snowmobile"]["passenger"]["drive_sway_right"] = %snowmobile_passenger_aiming_swayr_01;
    level._ID30895["snowmobile"]["passenger"]["aim_left"]["left"] = %snowmobile_passenger_aim4l;
    level._ID30895["snowmobile"]["passenger"]["aim_left"]["center"] = %snowmobile_passenger_aim4c;
    level._ID30895["snowmobile"]["passenger"]["aim_left"]["right"] = %snowmobile_passenger_aim4r;
    level._ID30895["snowmobile"]["passenger"]["aim_right"]["left"] = %snowmobile_passenger_aim6l;
    level._ID30895["snowmobile"]["passenger"]["aim_right"]["center"] = %snowmobile_passenger_aim6c;
    level._ID30895["snowmobile"]["passenger"]["aim_right"]["right"] = %snowmobile_passenger_aim6r;
    level._ID30895["snowmobile"]["passenger"]["add_aim_backleft"]["left"] = %snowmobile_passenger_aim1l_add;
    level._ID30895["snowmobile"]["passenger"]["add_aim_backleft"]["center"] = %snowmobile_passenger_aim1c_add;
    level._ID30895["snowmobile"]["passenger"]["add_aim_backleft"]["right"] = %snowmobile_passenger_aim1r_add;
    level._ID30895["snowmobile"]["passenger"]["add_aim_backright"]["left"] = %snowmobile_passenger_aim3l_add;
    level._ID30895["snowmobile"]["passenger"]["add_aim_backright"]["center"] = %snowmobile_passenger_aim3c_add;
    level._ID30895["snowmobile"]["passenger"]["add_aim_backright"]["right"] = %snowmobile_passenger_aim3r_add;
    level._ID30895["snowmobile"]["passenger"]["straight_level"]["left"] = %snowmobile_passenger_aim5l;
    level._ID30895["snowmobile"]["passenger"]["straight_level"]["center"] = %snowmobile_passenger_aim5c;
    level._ID30895["snowmobile"]["passenger"]["straight_level"]["right"] = %snowmobile_passenger_aim5r;
    level._ID30895["snowmobile"]["big"]["death"]["back"] = %snowmobile_driver_death_b_01;
    level._ID30895["snowmobile"]["big"]["death"]["left"] = %snowmobile_driver_death_l_01;
    level._ID30895["snowmobile"]["big"]["death"]["front"] = %snowmobile_driver_death_f_01;
    level._ID30895["snowmobile"]["big"]["death"]["right"] = %snowmobile_driver_death_r_01;
    level._ID30895["snowmobile"]["small"]["death"]["back"] = %snowmobile_driver_death_b_03;
    level._ID30895["snowmobile"]["small"]["death"]["left"] = %snowmobile_driver_death_l_03;
    level._ID30895["snowmobile"]["small"]["death"]["right"] = %snowmobile_driver_death_r_03;
    _unknown_0FA9();
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID34225 = "tag_driver";
    var_0[0]._ID22432 = 1;
    var_0[0]._ID29963 = ::_unknown_0E8A;
    var_0[1]._ID34225 = "tag_passenger";
    var_0[1]._ID22432 = 1;
    var_0[1]._ID29963 = ::_unknown_0EA6;
    var_0[0]._ID16491 = %snowmobile_driver_dismount;
    var_0[1]._ID16491 = %snowmobile_passenger_dismount;
    var_0[0]._ID16343 = ::_unknown_12C7;
    var_0[1]._ID16343 = ::_unknown_12D0;
    return var_0;
}

_ID43157( var_0, var_1 )
{
    var_0._ID29969._ID36388 = 0;
    var_0._ID25834 = 1;
    var_0._ID9526["combat"] = animscripts\custom\snowmobile::_ID616;
    var_0._ID9526["stop"] = animscripts\custom\snowmobile::_ID616;
}

_ID39488()
{
    var_0 = [];
    var_0["all"] = [];
    var_1 = "all";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0["default"] = var_0["all"];
    return var_0;
}
