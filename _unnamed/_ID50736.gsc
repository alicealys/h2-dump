// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    level._ID24830 = 1;

    if ( !_func_02F( level._ID50703 ) )
        level._ID50703 = 12000;

    if ( !_func_02F( level._ID48408 ) )
        level._ID48408 = [];

    level._ID51129 = 0 - level._ID50703;
    level._ID45067 = 0;
    level._ID43997 = 0;
    _func_14E( "remote_missile_detonator" );

    if ( _func_02F( level._ID43372 ) )
        _func_14E( level._ID43372 );
    else
        _func_14E( "remote_missile" );

    _func_14F( "veh_hud_target" );
    _func_14F( "veh_hud_target_colorblind" );
    _func_14F( "veh_hud_target_offscreen" );
    _func_14F( "veh_hud_missile_flash" );
    _func_14F( "ac130_overlay_grain" );
    _func_14F( "remotemissile_infantry_target" );
    _func_14F( "remotemissile_infantry_target_2plr" );
    _func_14F( "remotemissile_infantry_target_colorblind" );
    _func_14F( "hud_fofbox_self_sp" );
    _func_14F( "hud_fofbox_self_sp_colorblind" );
    _func_14F( "dpad_killstreak_hellfire_missile_inactive" );
    _func_14F( "h2_overlays_predator_reticle" );
    _func_14D( "remoteMissile" );
    _func_150( &"HELLFIRE_DRONE_VIEW" );
    _func_150( &"HELLFIRE_MISSILE_VIEW" );
    _func_150( &"HELLFIRE_FIRE" );
    _func_150( &"HELLFIRE_BOOST_PROMPT" );
    _func_150( &"HELLFIRE_CANCEL_PROMPT" );
    _func_150( &"HELLFIRE_CANCEL_PROMPT_PC" );
    _func_150( &"CANCEL_PROMPT_WITH_CLAYMORE_PC" );
    _unknown_0B95();
    level._ID47489 = _func_1A5();
    level._ID47489._ID45626 = 4;
    _ID42237::_ID14400( "predator_missile_launch_allowed" );
    _ID42237::_ID14402( "predator_missile_launch_allowed" );
    _ID42407::_ID1895( "hint_predator_drone_destroyed", &"HELLFIRE_DESTROYED", ::_unknown_0218, undefined, "small_background" );
    _ID42407::_ID1895( "hint_predator_drone_4", &"HELLFIRE_USE_DRONE", ::_unknown_01A3, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_predator_drone_2", &"HELLFIRE_USE_DRONE_2", ::_unknown_01B7, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_predator_drone_not_available", &"HELLFIRE_DRONE_NOT_AVAILABLE", ::_unknown_024E, undefined, "small_background" );

    if ( _func_02F( level._ID51882 ) && level._ID51882 )
        _func_14A( "missilecam" );
    else if ( !_func_02F( level._ID43292 ) )
        _func_14A( "missilecam" );
    else
        _func_14A( level._ID43292 );

    _func_0DB( "missileRemoteSpeedUp", "1000" );
    _func_0DB( "missileRemoteSpeedTargetRange", "6000 12000" );
    _ID42407::_ID1892( "axis", ::_unknown_0823 );
    _ID42237::_ID14400( "uav_reloading" );
    _ID42237::_ID14400( "uav_collecting_stats" );
    _ID42237::_ID14400( "uav_enabled" );
    _ID42237::_ID14402( "uav_enabled" );
    level._ID794 maps\_portal::portal_group_add_global_notify_wait( "player_is_controlling_UAV", "exiting_uav_control" );
    var_0 = level._ID805;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID13024( "controlling_UAV" );
    }

    var_clear_2
    var_clear_0
    level._ID49157 = 10;
}

_ID48862()
{
    var_0 = 0;

    if ( _func_02F( level._ID45535 ) )
        var_0 = 1;

    var_1 = _unknown_0905();

    if ( !_func_1A7( var_1 ) )
        var_0 = 1;

    if ( _func_02F( self._ID51771 ) )
        var_0 = 1;

    if ( _ID42237::_ID14396( "wave_wiped_out" ) && _ID42237::_ID14385( "wave_wiped_out" ) )
        var_0 = 1;

    if ( _ID42407::_ID13023( "laststand_downed" ) && _ID42407::_ID13019( "laststand_downed" ) )
        var_0 = 1;

    if ( self _meth_831C() == "remote_missile_detonator" )
        var_0 = 1;

    if ( _ID42237::_ID14396( "no_default_uav_hint" ) && _ID42237::_ID14385( "no_default_uav_hint" ) )
        var_0 = 1;

    return var_0;
}

_ID51835()
{
    if ( !_func_02F( level._ID30908 ) )
        level._ID30908 = [];

    level._ID44684 = 1;
    level._ID30908["uav_reloading"] = "cont_cmt_rearmhellfires";
    level._ID30908["uav_offline"] = "cont_cmt_hellfiresoffline";
    level._ID30908["uav_online"] = "cont_cmt_hellfireonline";
    level._ID30908["uav_online_repeat"] = "cont_cmt_repeatonline";
    level._ID30908["uav_down"] = "cont_cmt_uavdown";
    level._ID30908["uav_multi_kill"] = "cont_cmt_mutlipleconfirmed";
    level._ID30908["uav_multi_kill2"] = "cont_cmt_fivepluskias";
    level._ID30908["uav_few_kills"] = "cont_cmt_theyredown";
    level._ID30908["uav_3_kills"] = "cont_cmt_3kills";
    level._ID30908["uav_1_kill"] = "cont_cmt_hesdown";
    level._ID30908["uav_btr_kill"] = "cont_cmt_mutlipleconfirmed";
    level._ID30908["uav_few_kills"] = "cont_cmt_theyredown";
    level._ID30908["uav_3_kills"] = "cont_cmt_3kills";
    level._ID30908["uav_1_kill"] = "cont_cmt_hesdown";
    level._ID30908["uav_multi_vehicle_kill"] = "cont_cmt_goodhitvehicles";
    level._ID30908["uav_multi_vehicle_kill2"] = "cont_cmt_goodeffectkia";
    level._ID30908["uav_helo_kill"] = "cont_cmt_directhitshelo";
    level._ID30908["uav_btr_kill"] = "cont_cmt_btrdestroyed";
    level._ID30908["uav_truck_kill"] = "cont_cmt_goodkilltruck";
    level._ID30908["uav_jeep_kill"] = "cont_cmt_directhitjeep";
    level._ID30908["uav_direct_hit"] = "cont_cmt_directhit";
}

_ID52730( var_0 )
{
    return _func_02F( level._ID30908[var_0] ) || _func_02F( level._ID30908[var_0 + "_variant"] );
}

_ID48619()
{
    if ( _func_02F( level._ID51655 ) )
        return 0;
    else
        return 1;
}

_ID43132()
{
    if ( _func_02F( level._ID45535 ) )
        return 0;
    else
        return 1;
}

_ID54399( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    if ( !_ID42237::_ID14385( "uav_enabled" ) )
    {
        _ID42237::_ID14402( "uav_enabled" );

        if ( !_ID42237::_ID14385( "uav_reloading" ) && var_0 )
            thread _unknown_06CE( "uav_online" );
    }

    if ( _func_02F( var_1 ) )
        _unknown_0518( var_1 );
}

_ID50531( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    if ( _ID42237::_ID14385( "uav_enabled" ) )
    {
        _ID42237::_ID14388( "uav_enabled" );

        if ( !_ID42237::_ID14385( "uav_reloading" ) && var_0 )
            thread _unknown_070F( "uav_offline" );
    }

    if ( _func_02F( var_1 ) && var_1 )
        _unknown_0575();
    else
        _unknown_0585();
}

_ID47106( var_0 )
{
    if ( _func_02F( level._ID45535 ) )
        return;

    if ( _func_031( var_0 ) )
        var_1 = var_0;
    else if ( _func_02F( self._ID49783 ) )
        var_1 = self._ID49783;
    else
        return;

    if ( !self _meth_831F( var_0 ) )
        return;

    self _meth_822C( "actionslot" + _unknown_05E5(), "none" );
    self _meth_8313( _unknown_05F1(), "weapon", var_0 );
    _func_032( "ui_updateactionslot", 1 );
}

_ID50882()
{
    self _meth_822C( "actionslot" + _unknown_0609(), "" );
    self _meth_8313( _unknown_0614(), "" );
    _func_032( "ui_updateactionslot", 1 );
}

_ID52102()
{
    self _meth_822C( "actionslot" + _unknown_062C(), "dpad_killstreak_hellfire_missile_inactive" );
    self _meth_8313( _unknown_0637(), "" );
    _func_032( "ui_updateactionslot", 1 );
}

_ID47102( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( var_0 == "remote_missile_detonator" )
        return 1;

    if ( var_0 == "remote_missile_detonator_finite" )
        return 1;

    return 0;
}

_ID44738( var_0 )
{
    _unknown_0661();
    self _meth_8313( _unknown_0670(), "weapon", var_0 );
    self _meth_8319( var_0 );
    _func_032( "ui_updateactionslot", 1 );
    thread _ID48289::_ID43866();
}

_ID46425()
{
    if ( !self _meth_831F( "claymore" ) )
        self._ID29480 = 4;
    else
        self._ID29480 = 2;
}

_ID48383()
{
    return self._ID29480;
}

_ID43701()
{
    if ( !_func_02F( self._ID54358 ) )
        return 0;

    return self._ID54358.size > 1;
}

_ID51120( var_0 )
{
    self._ID39980 = 0;

    for (;;)
    {
        self waittill( "weapon_change",  var_1  );

        if ( _unknown_06A4( var_1 ) )
        {
            self._ID39980 = 1;

            while ( !self _meth_834C() )
                waittillframeend;

            if ( _func_02F( level._ID45535 ) )
            {
                thread _unknown_0755( 0, "uav_down" );
                self _meth_8320( self._ID51820 );
                self._ID39980 = 0;
                continue;
            }

            if ( _ID42407::_ID13023( "laststand_downed" ) && _ID42407::_ID13019( "laststand_downed" ) )
            {
                _unknown_0F6C();
                self._ID39980 = 0;
                continue;
            }

            if ( _ID42407::_ID20618() && _func_02F( level._ID45690 ) && level._ID45690 != self )
            {
                thread _ID42407::_ID28864( "so_hq_uav_busy" );
                _unknown_0F92();
                self._ID39980 = 0;
                continue;
            }

            self._ID49783 = var_1;
            thread _unknown_08BF();

            if ( _func_02F( level._ID51276 ) )
                [[ level._ID51276 ]]();

            _ID42463::_ID10405( "player_UAV_use" );
            level._ID45690 = self;
            level._ID48964 = [];
            _unknown_0AA6( self, var_1 );
            level._ID45690 = undefined;
            self._ID39980 = 0;

            if ( _func_02F( level._ID53190 ) )
                [[ level._ID53190 ]]();

            if ( _func_02F( var_0 ) )
                thread [[ var_0 ]]();
        }
    }
}

_ID48023()
{
    self endon( "death" );
    self._ID51820 = self _meth_831C();

    for (;;)
    {
        self waittill( "weapon_change",  var_0  );

        if ( !_unknown_0770( var_0 ) )
            self._ID51820 = var_0;
    }
}

_ID47687( var_0 )
{
    self _meth_82E8( "switch_to_remotemissile", "+actionslot " + _unknown_079E() );
    thread _unknown_07B0( var_0 );
    thread _unknown_07F7();

    for (;;)
    {
        self waittill( "switch_to_remotemissile" );

        if ( self._ID39980 )
            continue;

        if ( !_unknown_07A8( self _meth_831C() ) )
            self._ID51820 = self _meth_831C();

        if ( _func_02F( level._ID45535 ) )
        {
            if ( !level._ID43997 )
                thread _unknown_0857( 0, "uav_down" );

            continue;
        }

        if ( _ID42237::_ID14385( "uav_reloading" ) || !_ID42237::_ID14385( "uav_enabled" ) )
            thread _unknown_0876( 1 );
    }
}

_ID48041( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "uav_offline";

    var_2 = _func_03D();

    if ( var_0 && level._ID51129 + level._ID50703 - var_2 < 2000 || level._ID50703 < 5000 )
    {
        if ( !_func_02F( level._ID45535 ) && _func_02F( self._ID49783 ) && self _meth_8303( self._ID49783 ) > 0 )
            return;
    }

    if ( _ID42237::_ID14385( "uav_reloading" ) )
    {
        if ( _func_02F( level._ID30908["uav_reloading"] ) )
            var_1 = "uav_reloading";
    }

    if ( !_ID42237::_ID14385( "uav_collecting_stats" ) && !level._ID45067 )
    {
        level._ID45067 = 1;
        _unknown_09EC( var_1 );
        level._ID45067 = 0;
        level._ID43997 = 1;
    }
}

_ID44898()
{
    level notify( "stop_remotemissile_radio_reminder" );
    level endon( "special_op_terminated" );
    level endon( "starting_predator_drone_control" );
    level endon( "stop_remotemissile_radio_reminder" );

    for (;;)
    {
        wait(7 + _func_0B7( 4 ));

        if ( _ID42237::_ID14396( "special_op_terminated" ) && _ID42237::_ID14385( "special_op_terminated" ) )
            return;

        if ( _func_02F( level._ID45535 ) )
            return;

        if ( _ID42237::_ID14385( "uav_reloading" ) )
            return;

        if ( !_ID42237::_ID14385( "uav_enabled" ) )
            return;

        _unknown_0A4B( "uav_online_repeat" );
        wait(15 + _func_0B7( 10 ));

        if ( _ID42237::_ID14396( "special_op_terminated" ) && _ID42237::_ID14385( "special_op_terminated" ) )
            return;

        if ( _func_02F( level._ID45535 ) )
            return;

        if ( _func_02F( level._ID49601 ) )
            return;

        _unknown_0A7E( "uav_online" );
        thread _ID42407::_ID11090( "hint_predator_drone_" + _unknown_0913(), 6 );
    }
}

_ID43560()
{
    if ( _func_02F( level._ID50627 ) )
        return;

    if ( !_func_02F( level._ID44684 ) )
        return;

    var_0 = undefined;
    var_1 = 0;

    if ( _func_02F( level._ID48964["ai"] ) )
        var_1 = level._ID48964["ai"];

    if ( var_1 > 5 )
    {
        var_0 = "uav_multi_kill";

        if ( _unknown_08C8( "uav_multi_kill2" ) && _ID42237::_ID8201() )
            var_0 = "uav_multi_kill2";
    }
    else if ( var_1 >= 3 )
        var_0 = "uav_3_kills";
    else if ( var_1 > 1 )
        var_0 = "uav_few_kills";
    else if ( var_1 > 0 )
        var_0 = "uav_1_kill";

    var_2 = undefined;
    var_3 = 0;
    var_4 = 0;
    var_3 = 0;
    var_5 = 0;
    var_6 = 0;
    var_7 = 0;
    var_8 = level._ID48964;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];

        if ( var_10 == "ai" )
            continue;

        if ( var_9 > 0 )
        {
            var_4 += var_9;

            if ( var_10 == "btr" )
            {
                var_3 = var_9;
                continue;
            }

            if ( var_10 == "helo" )
            {
                var_5 = var_9;
                continue;
            }

            if ( var_10 == "jeep" )
            {
                var_6 = var_9;
                continue;
            }

            if ( var_10 == "truck" )
                var_7 = var_9;
        }
    }

    var_clear_2
    var_11 = var_0;

    if ( var_3 > 0 )
        var_11 = "uav_btr_kill";
    else if ( var_5 > 0 )
        var_11 = "uav_helo_kill";
    else if ( var_4 > 1 )
    {
        var_11 = "uav_multi_vehicle_kill";

        if ( _unknown_09A1( "uav_multi_vehicle_kill2" ) && _ID42237::_ID8201() )
            var_11 = "uav_multi_vehicle_kill2";
    }
    else if ( var_6 > 0 )
    {
        var_11 = "uav_jeep_kill";

        if ( var_1 > 2 && var_1 <= 5 && _unknown_09CF( "uav_direct_hit" ) && _ID42237::_ID8201() )
            var_11 = "uav_direct_hit";
    }
    else if ( var_7 > 0 )
    {
        var_11 = "uav_truck_kill";

        if ( var_1 > 2 && var_1 <= 5 && _unknown_09FD( "uav_direct_hit" ) && _ID42237::_ID8201() )
            var_11 = "uav_direct_hit";
    }

    if ( !_func_02F( var_11 ) )
        return;

    if ( _ID42237::_ID14396( "special_op_terminated" ) && _ID42237::_ID14385( "special_op_terminated" ) )
        return;

    _unknown_0C2A( var_11 );
    level notify( "remote_missile_kill_dialogue" );
}

_ID54555( var_0 )
{
    if ( _func_02F( level._ID30908[var_0 + "_variant"] ) && _func_0D3( level._ID30908[var_0 + "_variant"] ) )
        level._ID30908[var_0] = level._ID30908[var_0 + "_variant"][_func_0B7( level._ID30908[var_0 + "_variant"].size )];
}

_ID52135( var_0 )
{
    if ( !_func_02F( level._ID44684 ) )
        return;

    if ( _func_02F( level._ID52258 ) && level._ID52258 )
        return;

    if ( !_unknown_0A84( var_0 ) )
        return;

    if ( _ID42237::_ID14396( "special_op_terminated" ) && _ID42237::_ID14385( "special_op_terminated" ) )
        return;

    _unknown_0C8E( var_0 );
    _ID42407::_ID28864( var_0 );
}

_ID53927()
{
    self endon( "exiting_uav_control" );
    self._ID47295 = 0;

    if ( _ID42407::_ID20618() )
        _ID42237::_ID41068( "player_has_red_flashing_overlay", "player_downed", "dtest", "force_out_of_uav" );
    else
        _ID42237::_ID41068( "damage", "dtest", "force_out_of_uav" );

    self._ID47295 = 1;
    _ID42463::_ID10405( "abort_UAV_control" );
}

_ID46513()
{
    level._ID49278 = _ID42313::_ID9200( "objective", 1.25 );
    level._ID49278._ID196 = ( 0.8, 0.8, 0.8 );
    var_0 = -165;

    if ( _ID42407::_ID20618() )
    {
        var_0 = -150;

        if ( _func_145() )
            var_0 = -110;
    }

    level._ID49278 _ID42313::_ID32753( "CENTER", undefined, 0, var_0 );
}

_ID47117( var_0 )
{
    level._ID49278 _meth_80D1( "" );
    level._ID49278._ID578 = var_0;
    level._ID49278._ID408 = 0;
}

_ID47277( var_0 )
{
    level._ID49278 _meth_80DE( var_0 );
}

_ID52336()
{
    if ( !_func_02F( level._ID45535 ) )
        level._ID49278 _meth_808B( 0.25 );

    level._ID49278._ID55 = 0;
}

_ID47058()
{
    if ( !_func_02F( level._ID49278 ) )
        return;

    level._ID49278 _meth_808F();
    level._ID49278 = undefined;
}

_ID54090( var_0 )
{
    _unknown_0E0E();
    _unknown_0DDF( &"HELLFIRE_RELOADING_WITH_TIME", var_0 );
    wait 1;
    _unknown_0E1D();
}

_ID45202( var_0, var_1 )
{
    level._ID48541 = _ID42313::_ID9200( "objective", 1.0 );
    level._ID48541 _ID42313::_ID32753( "CENTER", undefined, 0, -150 );
    level._ID48541._ID578 = var_0;
    level._ID48541 _meth_80DE( var_1 );
    level._ID48541._ID196 = ( 0.6, 0.6, 0.6 );
    level._ID48541._ID55 = 0.75;
}

_ID53159( var_0 )
{
    level._ID48541 = _ID42313::_ID9200( "objective", 1.0 );
    level._ID48541 _ID42313::_ID32753( "CENTER", undefined, 0, -150 );
    level._ID48541 _meth_80D1( var_0 );
    level._ID48541._ID196 = ( 0.6, 0.6, 0.6 );
    level._ID48541._ID55 = 0.75;
    level._ID48541._ID408 = 0;
}

_ID46480()
{
    if ( !_func_02F( level._ID48541 ) )
        return;

    if ( !_func_02F( level._ID45535 ) )
        level._ID48541 _meth_808B( 0.25 );

    level._ID48541._ID55 = 0;
}

_ID51361()
{
    if ( !_func_02F( level._ID48541 ) )
        return;

    level._ID48541 _meth_808F();
    level._ID48541 = undefined;
}

_ID50311( var_0 )
{
    var_1 = _func_03D() + var_0 * 1000;

    while ( _func_03D() < var_1 )
    {
        if ( self._ID47295 )
            return 0;

        if ( _func_02F( level._ID45535 ) )
            return 0;

        if ( self _meth_8347() )
            return 0;

        if ( !_ID42237::_ID14385( "uav_enabled" ) )
            return 0;

        wait 0.05;
    }

    return 1;
}

_ID47508( var_0, var_1 )
{
    var_2 = _func_03D();
    level._ID43486 = var_2;

    if ( _func_02F( var_0 ) )
    {
        level._ID46167 = var_0;
        var_0 waittill( "death" );
    }

    var_1 _ID42407::_ID10226( 0.1, ::_unknown_0F9A, 1 );
    var_1._ID45566 = undefined;

    if ( _func_02F( level._ID43486 ) && level._ID43486 == var_2 )
    {
        level notify( "remote_missile_exploded" );
        var_1 notify( "remote_missile_exploded" );
        level._ID46167 = undefined;
    }

    level _ID42407::_ID10226( 0.2, _ID42407::_ID31877, "delayed_remote_missile_exploded" );
}

_ID50930( var_0 )
{
    var_0 _ID42407::_ID13021( "controlling_UAV" );
    var_0 notify( "exiting_uav_control" );
    _ID42463::_ID10405( "abort_UAV_control" );
    var_0 _ID49347::_ID47192( 0.5 );

    if ( _func_02F( level._ID794._ID43494 ) )
        level._ID794 _ID42407::_ID48929( level._ID794._ID43494 );

    if ( _func_02F( level._ID51882 ) && level._ID51882 )
        var_0 _meth_82E2( level._ID40576, 0.5 );
    else if ( _func_02F( _ID42407::_ID16066( level._ID22719 ) ) )
        var_0 _ID42407::_ID14689( level._ID22719, 0.5 );

    var_0 _unknown_1635();
    var_0 _meth_8334( 0 );

    if ( !_ID42407::_ID20581( var_0 ) )
        var_0 _meth_832B();

    var_0 _ID42407::_ID10226( 0.1, ::_unknown_1054, 1 );
    level._ID52466 = undefined;
    wait 0.1;
    _unknown_153E();
}

_ID45284( var_0 )
{
    if ( var_0 && !_func_02F( level.remotemissile_stances_blocked ) )
        return;

    if ( !var_0 )
    {
        var_1 = self _meth_8188();

        if ( var_1 != "prone" )
            self _meth_8123( var_0 );

        if ( var_1 != "crouch" )
            self _meth_8122( var_0 );

        if ( var_1 != "stand" )
            self _meth_8121( var_0 );

        level.remotemissile_stances_blocked = 1;
    }
    else
    {
        self _meth_8123( var_0 );
        self _meth_8122( var_0 );
        self _meth_8121( var_0 );
        level.remotemissile_stances_blocked = undefined;
    }
}

_ID47107( var_0 )
{
    _func_032( "ui_predatordrone", level._ID49157 );
    _ID42475::_ID34575( "player_predator_use" );
    var_0._ID19183["screen_distort"] = _func_1AF();
    var_0._ID19183["screen_distort"]._ID1331 = 0;
    var_0._ID19183["screen_distort"]._ID1339 = 0;
    var_0._ID19183["screen_distort"]._ID44 = "left";
    var_0._ID19183["screen_distort"]._ID45 = "top";
    var_0._ID19183["screen_distort"]._ID499 = "fullscreen";
    var_0._ID19183["screen_distort"]._ID1284 = "fullscreen";
    var_0._ID19183["screen_distort"] _meth_80D3( "h1_ac130_distort", 640, 480 );
    var_0._ID19183["screen_distort"]._ID55 = 1.0;
    var_0._ID19183["screen_distort"]._ID983 = 5;

    if ( !_func_02F( var_0._ID52526 ) )
    {
        var_0._ID52526 = var_0 _ID42313::_ID9200( "objective", 1 );
        var_0._ID52526._ID1331 = 31;
        var_0._ID52526._ID1339 = -15;
        var_0._ID52526._ID44 = "left";
        var_0._ID52526._ID45 = "bottom";
        var_0._ID52526._ID499 = "left_adjustable";
        var_0._ID52526._ID1284 = "bottom_adjustable";
        var_0._ID52526._ID196 = ( 0.85, 0.85, 0.85 );
        var_0._ID52526._ID55 = 0.75;
        var_0._ID52526._ID493 = 1;
    }

    var_1 = &"HELLFIRE_CANCEL_PROMPT";

    if ( _unknown_0F72() == 4 )
        var_2 = &"HELLFIRE_CANCEL_PROMPT_PC";
    else
        var_2 = &"HELLFIRE_CANCEL_PROMPT_WITH_CLAYMORE_PC";

    if ( var_0 _ID42237::_ID20583() )
    {
        var_0._ID52526 _meth_80D1( var_1 );
        var_0._ID52526 thread _ID42237::_ID47857( var_0, var_1, var_2, "stopHint" );
    }
    else
    {
        var_0._ID52526 _meth_80D1( var_2 );
        var_0._ID52526 thread _ID42237::_ID47857( var_0, var_2, var_1, "stopHint" );
    }

    _func_076( 0.8, 0 );
    thread _unknown_12DA();
}

_ID52223()
{
    _func_076( 0, 0 );
    level._ID794 _meth_8190();
    level notify( "post_effects_disabled" );
}

_ID46971()
{
    level endon( "post_effects_disabled" );
    var_0 = 5;

    for (;;)
    {
        level._ID794 _meth_818E( "remoteMissile", var_0 );
        wait(var_0);
    }
}

_ID46825( var_0 )
{
    level _ID42237::_ID41068( "remote_missile_exploded", "uav_destroyed", "remote_missile_exit" );
    var_0._ID19183["screen_distort"] _meth_808F();

    if ( _func_02F( var_0._ID52526 ) )
        var_0._ID52526 _meth_808F();

    _func_032( "ui_predatormissile", 0 );
    _unknown_1336();
}

_ID43464( var_0 )
{
    level endon( "remote_missile_exploded" );
    level endon( "uav_destroyed" );
    level waittill( "missile_boost_done" );
    var_0._ID52526 notify( "stopHint" );
    var_0._ID52526 _meth_808F();
}

_ID45473( var_0 )
{
    var_0._ID52526 notify( "stopHint" );
    var_1 = &"HELLFIRE_BOOST_PROMPT";
    var_0._ID52526 _meth_80D1( var_1 );
    thread _unknown_1397( var_0 );
    _func_032( "ui_predatordrone", 0 );
    _func_032( "ui_predatormissile", 1 );
    thread _unknown_1911( 0.3 );
    thread _unknown_13A2( var_0 );
}

_ID47183( var_0, var_1 )
{
    if ( var_1 == "remote_missile_detonator" )
        var_0 _meth_833D( var_1 );

    level notify( "starting_predator_drone_control" );
    var_0 notify( "starting_predator_drone_control" );
    var_2 = 0;
    var_3 = 0;
    level._ID53434 = "black_bw";

    if ( !_func_02F( level._ID43292 ) )
        level._ID43292 = "ac130";

    level._ID43593 = "missilecam";
    var_0 _meth_832A();
    var_0 _meth_8334( 1 );
    var_0 _unknown_1342( 0 );
    var_0 _ID42407::_ID13025( "controlling_UAV" );
    _unknown_1800();
    var_4 = var_0 _unknown_12F6( 1.0 );

    if ( !var_4 )
        _unknown_132F( var_0 );
    else
    {
        var_5 = 0.25;
        var_0 _meth_82DF( level._ID53434, var_5 );

        if ( _func_02F( level._ID51882 ) && level._ID51882 )
            var_0 _meth_82E2( level._ID53434, var_5 );

        var_4 = _unknown_1323( var_5 );

        if ( !var_4 )
        {
            _unknown_135D( var_0 );
            return;
        }

        var_0._ID20494 = 1;
        level notify( "player_is_controlling_UAV" );
        var_0 notify( "player_is_controlling_UAV" );
        var_6 = var_0 _unknown_16A6();

        if ( _func_02F( var_6 ) )
        {
            if ( _ID42407::_ID20614() )
                var_6 _meth_805D( self );
            else
                var_6 _meth_805A();
        }

        _unknown_1A48( var_0 );
        var_7 = _ID48289::_ID43601();

        if ( !_ID48289::_ID44274() )
        {
            var_0 _meth_8085( var_7, "tag_player", 1.0, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626 );
            var_8 = var_7 _meth_818D( "tag_origin" );
            var_0 _meth_8345( var_8 );
        }
        else
        {
            var_0._ID25524 = var_0._ID740;
            var_0._ID25495 = var_0 _meth_8346();
            var_0 _meth_8084( _ID48289::_ID43601(), "tag_player", 1.0, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626 );
            var_0 _meth_8084( _ID48289::_ID43601(), "tag_player", 1.0, 0, 0, 0, 0 );
            var_0 _ID42407::_ID10226( 0.1, ::_unknown_1AC8 );
        }

        var_0 _meth_8334( 0 );
        var_0 _meth_8491();
        wait 0.05;

        if ( _func_02F( level._ID51019 ) )
            var_0 [[ level._ID51019 ]]();
        else
        {
            var_0 _unknown_13A7();
            _unknown_13C4( &"HELLFIRE_DRONE_VIEW" );
            _unknown_13D3( level._ID49157 );
        }

        _unknown_14AD( var_0 );

        if ( _func_02F( level._ID51882 ) && level._ID51882 )
        {
            _ID42323::_ID37634();
            var_0 _meth_80BD();
            var_0 _meth_82E2( level._ID43292, 0 );
            var_0 _meth_82DF( level._ID22719, 0.25 );
        }
        else
        {
            if ( _func_02F( _ID42407::_ID16066( level._ID43292 ) ) )
                var_0 _ID42407::_ID14689( level._ID43292, 0.25 );

            var_0 _meth_82DF( level._ID43292, 0.25 );
        }

        if ( _func_02F( level._ID43461 ) )
        {
            level._ID794._ID43494 = level._ID794._ID46646;
            level._ID794 _ID42407::_ID48929( level._ID43461 );
        }

        thread _unknown_1A45();
        wait 0.2;
        _ID42237::setshadowmapoff();
        var_9 = _unknown_1964( var_0 );

        if ( !var_9 )
        {
            _unknown_18B9( var_0, var_0._ID47295 );
            return;
        }

        level._ID51129 = _func_03D();
        thread _unknown_176B();
        level._ID794 thread _ID42237::_ID27000( "predator_drone_missile" );
        level notify( "player_fired_remote_missile" );
        var_0 notify( "player_fired_remote_missile" );
        _ID42475::_ID34575( "player_predator_end" );
        var_10 = _unknown_1A55( var_0 );
        var_10 thread _unknown_17AA( var_0 );
        var_10 thread _unknown_17A9( var_0 );

        if ( var_2 )
        {
            var_0 _unknown_14D9( &"HELLFIRE_FIRE" );
            var_4 = _unknown_1509( 1.2 );

            if ( !var_4 )
            {
                _unknown_1918( var_0, 1 );
                return;
            }

            _unknown_1508();
            _unknown_1B5A();
            wait 0.25;
        }

        var_0._ID51771 = 1;

        if ( _func_02F( level._ID46838 ) )
            var_0 [[ level._ID46838 ]]( 0 );
        else
        {
            _unknown_1668( var_0 );
            _unknown_14E7( &"HELLFIRE_MISSILE_VIEW" );
            _unknown_1544();
        }

        var_0 _meth_8221();
        var_0 _meth_8055();
        var_0 _meth_82DF( level._ID53434, 0 );
        var_0 _meth_8139( 0 );

        if ( _func_02F( level._ID50641 ) )
            var_0 _meth_81F2( var_10, level._ID50641 );
        else
            var_0 _meth_81F2( var_10, "tag_origin" );

        var_0 _meth_8211( var_10 );
        var_10 thread _unknown_1AD9( var_0, "h2_overlays_predator_reticle" );
        var_4 = _unknown_1593( 0.2 );

        if ( !var_4 )
        {
            _unknown_1909( var_0, 1 );
            return;
        }

        if ( _func_02F( level._ID46966 ) )
            var_0 [[ level._ID46966 ]]( var_10 );

        thread _unknown_1B5C();

        while ( _func_02F( level._ID46167 ) )
        {
            if ( _func_02F( level._ID45535 ) )
            {
                _unknown_1931( var_0, 1 );
                return;
            }

            if ( var_0._ID47295 )
            {
                _unknown_193F( var_0, 1 );
                return;
            }

            if ( !_ID42237::_ID14385( "uav_enabled" ) )
            {
                _unknown_1951( var_0, 1 );
                return;
            }

            if ( _func_02F( self.remotemissile_lowerbound_limit ) && _func_02F( self.remotemissile_upperbound_limit ) )
            {
                if ( level._ID46167._ID740[0] < self.remotemissile_lowerbound_limit[0] || level._ID46167._ID740[1] < self.remotemissile_lowerbound_limit[1] || level._ID46167._ID740[2] < self.remotemissile_lowerbound_limit[2] || level._ID46167._ID740[0] > self.remotemissile_upperbound_limit[0] || level._ID46167._ID740[1] > self.remotemissile_upperbound_limit[1] || level._ID46167._ID740[2] > self.remotemissile_upperbound_limit[2] )
                {
                    _unknown_19C2( var_0, 0 );
                    return;
                }
            }

            wait 0.05;
        }

        if ( !_func_02F( var_6 ) )
        {
            _unknown_19D5( var_0, 0 );
            return;
        }

        if ( var_3 )
        {
            _func_0DB( "cg_fov", 26 );
            var_0._ID48535 = 1;
            var_0._ID51771 = undefined;
            var_0 _meth_8212();
            var_0 _meth_81F3();
            var_0 _meth_8222();
            var_0 _meth_8085( _ID48289::_ID43601(), "tag_player", 1.0, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626 );
            var_0 _meth_8345( _ID48289::_ID43601() _meth_818D( "tag_origin" ) );
            var_4 = _unknown_16C6( 2 );

            if ( !var_4 )
            {
                _unknown_1AD7( var_0, var_0._ID47295 );
                return;
            }

            _unknown_1ADF( var_0, 0 );
            return;
        }

        _unknown_1A4E( var_0, 0 );
    }
}

_ID49789()
{
    level endon( "stop_uav_reload" );
    _ID42237::_ID14402( "uav_reloading" );
    wait(level._ID50703 * 0.001);
    _ID42237::_ID14388( "uav_reloading" );
}

_ID50436( var_0 )
{
    var_2 waittill( "predicted_projectile_impact",  var_2, var_2  );
    var_0 _meth_82DF( "coup_sunblind", 0 );
}

_ID46236( var_0 )
{
    var_0._ID49913 = 1;
    var_3 waittill( "projectile_impact",  var_3, var_3, var_3  );
    level thread _unknown_1A12( var_0 );
    level._ID49090 = var_2;
    var_4 = 1000;
    var_5 = 6.0;
    _func_192( 0.3, 1.4, var_2, 8000 );
    _ID42463::_ID10405( "remote_missle_impact", var_2 );
    wait 0.1;
    _func_184( var_2, var_4, var_4 / 2, var_5 );
    wait 2;
    level._ID49090 = undefined;
    var_0._ID49913 = undefined;
}

_ID46141( var_0 )
{
    _ID42237::_ID14402( "uav_collecting_stats" );
    var_1 = _ID42407::_ID16726();
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _unknown_1AAE( var_0 );
    }

    var_clear_2
    var_clear_0
    wait 1;
    _ID42237::_ID14388( "uav_collecting_stats" );
}

_ID43765( var_0 )
{
    if ( !_func_02F( level._ID44684 ) )
        return;

    self waittill( "death",  var_0, var_0  );

    if ( !_func_02F( level._ID45690 ) )
        return;

    if ( !_func_02F( level._ID48964["ai"] ) )
        level._ID48964["ai"] = 0;

    if ( _func_02F( var_access_1 ) && _func_02F( level._ID45690 ) )
    {
        if ( var_access_1 == level._ID45690 || _func_02F( var_access_1._ID85 ) && var_access_1._ID85 == level._ID45690 )
        {
            level._ID48964["ai"]++;

            if ( _func_1B3( level._ID45690 ) && level._ID48964["ai"] == 10 )
                level._ID45690 _ID42407::_ID27440( "TEN_PLUS_FOOT_MOBILES" );
        }
    }
}

_ID45511( var_0 )
{
    if ( !_func_02F( level._ID44684 ) )
        return;

    level endon( "delayed_remote_missile_exploded" );
    var_1 = undefined;

    switch ( self._ID1282 )
    {

    }

    if ( !_func_02F( level._ID48964[var_1] ) )
        level._ID48964[var_1] = 0;

    self waittill( "death",  var_1, var_1  );

    if ( var_access_2 == "helo" || var_access_2 == "btr" || _func_02F( self._ID29965 ) && self._ID29965.size > 0 )
    {
        if ( _func_02F( var_0 ) && var_0 == var_access_3 )
        {
            level._ID48964[var_access_2]++;
            return;
        }

        return;
        case "bm21_drivable":
        case "bm21":
        case "uaz_physics":
        case "btr80_physics":
        case "uaz":
        case "btr80":
        case "ucav":
        case "mi17_bulletdamage":
        case "bm21_troops":
        case "mi17_noai":
        case "mi17":
        case "hind":
        default:
    }
}

_ID52892()
{
    var_0 = self._ID54358[self._ID50833];
    return var_0;
}

_ID45914()
{
    if ( !_func_02F( self._ID54358 ) )
        return level._ID49526;

    if ( !_func_02F( self._ID50833 ) )
        self._ID50833 = 0;

    var_0 = _unknown_1C79();
    return var_0._ID49526;
}

_ID43635( var_0, var_1 )
{
    var_0._ID51771 = undefined;

    if ( _func_02F( level._ID46838 ) )
        var_0 [[ level._ID46838 ]]( 1 );
    else
        _unknown_18F2();

    _unknown_1F80();

    if ( _func_02F( level._ID45535 ) )
        thread _unknown_1FCF( 0.5 );

    var_0 _meth_8212();
    var_0 _meth_81F3();

    if ( _func_02F( level._ID51882 ) && level._ID51882 )
    {
        _ID42323::_ID37633();
        var_0 _meth_80BE();
        var_0 _meth_82E2( level._ID40576, 0 );
    }

    var_0 _meth_8222();
    var_2 = var_0 _unknown_1CDD();

    if ( _func_02F( var_2 ) )
    {
        if ( _ID42407::_ID20614() )
            var_2 _meth_805C( self );
        else
            var_2 _meth_8059();
    }

    level notify( "remote_missile_exit" );

    if ( var_1 )
    {
        var_0 _meth_82DF( level._ID53434, 0 );
        var_0 _meth_8490();
        _ID42237::setshadowmapon();
        _unknown_20BA();
        wait 0.05;
        var_0 _ID49347::_ID47192( 0.4 );

        if ( _func_02F( level._ID794._ID43494 ) )
            level._ID794 _ID42407::_ID48929( level._ID794._ID43494 );

        if ( !_func_02F( level._ID51882 ) && level._ID51882 )
        {
            if ( _func_02F( _ID42407::_ID16066( level._ID22719 ) ) )
                var_0 _ID42407::_ID14689( level._ID22719, 0.4 );
        }

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 _meth_8329();

        var_0 _meth_8334( 0 );
        var_0 _unknown_2061();
        wait 0.2;

        if ( !_func_02F( level._ID50570 ) || !level._ID50570 )
            var_0 _meth_8139( 1 );

        _unknown_1F5B();

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 _meth_832B();
    }
    else
    {
        var_0 _meth_82DF( "coup_sunblind", 0 );
        var_0 _meth_8334( 1 );
        var_0 _meth_8490();
        _ID42237::setshadowmapon();
        _unknown_2155();
        wait 0.05;
        var_0 _ID49347::_ID47192( 1.0 );

        if ( !_func_02F( level._ID51882 ) && level._ID51882 )
        {
            if ( _func_02F( _ID42407::_ID16066( level._ID22719 ) ) )
                var_0 _ID42407::_ID14689( level._ID22719, 1.0 );
        }

        if ( _func_02F( level._ID794._ID43494 ) )
            level._ID794 _ID42407::_ID48929( level._ID794._ID43494 );

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 _meth_8329();

        wait 0.5;
        _unknown_1FD9();
        var_0 _unknown_20FD();

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 _meth_832B();

        if ( !_func_02F( level._ID50570 ) || !level._ID50570 )
            var_0 _ID42237::_ID10192( 0.2, ::_meth_8139, 1 );

        var_0 _meth_8334( 0 );
    }

    var_0 _ID42407::_ID10226( 0.1, ::_unknown_1B37, 1 );
    var_0 notify( "exiting_uav_control" );
    var_0._ID20494 = undefined;
    level._ID52466 = undefined;
}

_ID45006( var_0, var_1 )
{
    _func_032( "ui_predatordrone", 0 );
    _ID42475::_ID34575( "player_predator_end" );
    _ID42463::_ID10405( "abort_UAV_control" );
    _unknown_2148();

    if ( _func_02F( level._ID48099 ) )
        var_0 [[ level._ID48099 ]]( 0 );
    else
    {
        _unknown_1ACA();
        _unknown_1B11();
    }

    var_0 _meth_82DF( level._ID53434, 0.25 );

    if ( _func_02F( level._ID51882 ) && level._ID51882 )
        var_0 _meth_82E2( level._ID53434, 0.25 );

    if ( _func_02F( level._ID45535 ) )
        var_0 thread _unknown_21D0( 0.5 );

    if ( _func_02F( var_0._ID52526 ) )
    {
        if ( !_func_02F( level._ID45535 ) )
            var_0._ID52526 _meth_808B( 0.35 );

        var_0._ID52526._ID55 = 0;
    }

    wait 0.15;
    wait 0.35;

    if ( _func_02F( var_0._ID19183 ) )
    {
        if ( _func_02F( var_0._ID19183["screen_distort"] ) )
            var_0._ID19183["screen_distort"] _meth_808F();
    }

    if ( _func_02F( var_0._ID52526 ) )
        var_0._ID52526 _meth_808F();

    _unknown_1CAC();

    if ( _func_02F( level._ID48099 ) )
        var_0 [[ level._ID48099 ]]( 1 );
    else
    {
        _unknown_1B78();
        _unknown_1BC1();
    }

    var_0 _meth_8055();

    if ( _func_02F( level._ID51882 ) && level._ID51882 )
    {
        var_0 _meth_82E2( level._ID40576, 0 );
        _ID42323::_ID37633();
        var_0 _meth_80BE();
    }

    if ( _func_02F( var_0._ID48535 ) )
        _func_0DB( "cg_fov", 65 );

    var_2 = var_0 _unknown_1F5C();

    if ( _func_02F( var_2 ) )
    {
        if ( _ID42407::_ID20614() )
            var_2 _meth_805C( self );
        else
            var_2 _meth_8059();
    }

    if ( _func_02F( level._ID794._ID43494 ) )
        level._ID794 _ID42407::_ID48929( level._ID794._ID43494 );

    _ID42237::setshadowmapon();

    if ( var_1 )
    {
        var_0 _unknown_228F();
        var_0 _meth_8334( 1 );
        wait 0.15;
        var_0 _ID49347::_ID47192( 0.4 );

        if ( !_func_02F( level._ID51882 ) && level._ID51882 )
        {
            if ( _func_02F( _ID42407::_ID16066( level._ID22719 ) ) )
                var_0 _ID42407::_ID14689( level._ID22719, 0.4 );
        }

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 _meth_8329();

        var_0 _meth_8490();
        _unknown_2387();
        wait 0.1;
        _unknown_21BC();

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 _meth_832B();

        var_0 _meth_8334( 0 );
    }
    else
    {
        var_0 _meth_8334( 1 );
        wait 0.05;
        var_0 _ID49347::_ID47192( 0.75 );

        if ( !_func_02F( level._ID51882 ) && level._ID51882 )
        {
            if ( _func_02F( _ID42407::_ID16066( level._ID22719 ) ) )
                var_0 _ID42407::_ID14689( level._ID22719, 0.75 );
        }

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 _meth_8329();

        var_0 _meth_8490();
        _unknown_23E8();
        wait 0.5;
        _unknown_221D();
        var_0 _unknown_2341();

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 _meth_832B();

        var_0 _meth_8334( 0 );
    }

    var_0 _ID42407::_ID10226( 0.1, ::_unknown_1D61, 1 );
    var_0 notify( "exiting_uav_control" );
    var_0._ID20494 = undefined;
    level._ID52466 = undefined;
    return;
}

_ID45827( var_0 )
{
    var_1 = _func_098();
    var_0 _meth_82E8( "abort_remote_missile", var_1 );
    var_0 _meth_82E8( "abort_remote_missile", "weapnext" );
    var_0 _meth_82E8( "abort_remote_missile", "+stance" );
    var_0 _meth_82E8( "abort_remote_missile", "+actionslot " + _unknown_1B2F() );

    if ( !level._ID8534 )
    {
        var_0 _meth_82E8( "abort_remote_missile", "+gostand" );
        var_0 _meth_82E8( "abort_remote_missile", "togglecrouch" );
        var_0 _meth_82E8( "abort_remote_missile", "toggleprone" );
    }

    var_0 _meth_82E8( "launch_remote_missile", "+attack" );
    var_0 _meth_82E8( "launch_remote_missile", "+attack_akimbo_accessible" );
    var_0 thread _unknown_228A();
    var_0 thread _unknown_2290( "abort_remote_missile", "abort" );

    if ( _ID42237::_ID14385( "predator_missile_launch_allowed" ) )
        var_0 thread _unknown_22A6( "launch_remote_missile", "launch" );

    var_0 waittill( "remote_missile_attack",  var_1  );
    var_access_2 _ID42407::_ID13021( "controlling_UAV" );

    if ( var_1 == "launch" )
        return 1;
    else
        return 0;
}

_ID53418( var_0, var_1 )
{
    self endon( "remote_missile_attack" );
    self waittill( var_0 );
    self notify( "remote_missile_attack",  var_1  );
}

_ID48198()
{
    self endon( "remote_missile_attack" );

    for (;;)
    {
        wait 0.05;

        if ( self._ID47295 )
            break;

        if ( !_ID42237::_ID14385( "uav_enabled" ) )
            break;

        if ( _func_02F( level._ID45535 ) )
            break;
    }

    self notify( "remote_missile_attack",  "abort"  );
}

_ID48123()
{
    if ( level._ID805.size > 0 )
    {
        for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
        {
            if ( _func_02F( level._ID805[var_0]._ID39980 ) && level._ID805[var_0]._ID39980 )
                _func_034( "ui_remotemissile_playernum", var_0 + 1 );
        }
    }

    _func_0DB( "ui_hidemap", 1 );
    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", "1" );
    _func_0DB( "actionSlotsHide", "1" );
    _func_0DB( "hud_showstance", "0" );
    level._ID50857 = 1;
    self notify( "kill_pulse" );
}

_ID52998()
{
    if ( level._ID805.size > 0 )
        _func_034( "ui_remotemissile_playernum", 0 );

    _func_0DB( "ui_hidemap", 0 );
    _func_0DB( "compass", "1" );
    _func_0DB( "ammoCounterHide", "0" );
    _func_0DB( "actionSlotsHide", "0" );
    _func_0DB( "hud_showstance", "1" );
    level._ID50857 = 0;
}

_ID43399( var_0, var_1, var_2 )
{
    var_3 = 200;
    var_4 = 200;
    var_5 = var_3 / 2;
    var_6 = var_4 / 2;
    var_7 = _func_1B0( var_0 );
    var_7._ID499 = "center";
    var_7._ID1284 = "middle";
    var_7._ID1331 = var_7._ID1331 - var_5;
    var_7._ID1339 = var_7._ID1339 - var_6;
    var_7 _meth_80D3( var_1, var_3, var_4 );

    if ( _func_02F( var_2 ) )
        level _ID42237::_ID41098( var_2, "draw_target_end" );
    else
        level waittill( "draw_target_end" );

    var_7 _meth_808F();
}

_ID46317( var_0 )
{
    _func_192( 0.25, 0.5, _ID48289::_ID43601()._ID740, 5000 );
    var_1 = _ID48289::_ID43601()._ID740;
    var_2 = var_0 _meth_8346();
    var_3 = _func_11F( var_2 );
    var_4 = _func_11E( var_2 );

    if ( !_func_02F( level._ID53389 ) )
        level._ID53389 = -300.0;

    if ( !_func_02F( level._ID43753 ) )
        level._ID43753 = 700.0;

    var_5 = var_1 + var_4 * level._ID43753 + var_3 * level._ID53389;
    var_6 = var_5 + var_3 * 10.0;

    if ( _func_02F( level._ID43372 ) )
        var_7 = _func_1C8( level._ID43372, var_5, var_6, var_0 );
    else if ( _func_02F( level._ID48753 ) )
        var_7 = _func_1C8( "remote_missile_snow", var_5, var_6, var_0 );
    else if ( _func_02F( level._ID46684 ) )
        var_7 = _func_1C8( "remote_missile_invasion", var_5, var_6, var_0 );
    else
        var_7 = _func_1C8( "remote_missile", var_5, var_6, var_0 );

    var_0._ID45566 = var_7;
    thread _unknown_1FED( var_7, var_0 );
    var_7 thread _unknown_270F();
    return var_7;
}

_ID50368()
{
    level._ID47489._ID45899 = 1;
    level endon( "uav_destroyed" );
    level endon( "draw_target_end" );
    level notify( "stop_prv_draw_targets" );
    level endon( "stop_prv_draw_targets" );
    wait 0.05;
    var_0 = 4;
    var_1 = 0;
    var_2 = 0.05;
    level._ID48408[level._ID794._ID39468] = level._ID794;
    var_3 = level._ID48408;

    for ( var_9 = _func_1DA( var_3 ); _func_02F( var_9 ); var_9 = _func_1BF( var_3, var_9 ) )
    {
        var_4 = var_3[var_9];

        if ( !_func_1A7( var_4 ) )
            continue;

        var_5 = 0;
        var_6 = level._ID48408;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];

            if ( var_7 == var_4 )
            {
                var_5 = 1;
                break;
            }
        }

        var_clear_3
        var_clear_1

        if ( !var_5 )
            continue;

        var_4 _unknown_2655();
        var_1++;

        if ( var_1 >= var_0 )
        {
            var_1 = 0;
            wait(var_2);
        }
    }

    var_clear_6
    var_clear_0
}

_ID49591()
{
    var_0 = level._ID794 _meth_821F( "renderColorBlind" );
    self._ID49554 = 1;

    if ( _func_02F( self._ID18452 ) )
        _func_0A2( self, ( 0, 0, -96 ) );
    else
        _func_0A2( self, ( 0, 0, 0 ) );

    if ( _func_0D4( self ) )
    {
        if ( _func_145() )
            _func_0A4( self, "remotemissile_infantry_target_2plr" );
        else if ( var_0 )
            _func_0A4( self, "remotemissile_infantry_target_colorblind" );
        else
            _func_0A4( self, "remotemissile_infantry_target" );
    }
    else if ( _func_1B3( self ) )
    {
        if ( _func_02F( self._ID20494 ) && self._ID20494 )
        {
            _func_0A2( self, ( 0, 0, 64 ) );

            if ( var_0 )
                _func_0A4( self, "hud_fofbox_self_sp_colorblind" );
            else
                _func_0A4( self, "hud_fofbox_self_sp" );
        }
        else
        {

        }
    }
    else if ( var_0 )
        _func_0A4( self, "veh_hud_target_colorblind" );
    else
        _func_0A4( self, "veh_hud_target" );

    var_1 = undefined;
    var_2 = undefined;
    var_3 = level._ID805;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_02F( var_4._ID20494 ) && var_4._ID20494 )
        {
            _func_0AF( self, var_4 );

            if ( self != var_4 )
            {
                if ( !_func_0D4( self ) )
                    _func_0B2( self, 100 );
                else
                    _func_0B0( self, 1 );

                _func_0B4( self, 15, 0, 1 );
            }

            continue;
        }

        _func_0AE( self, var_4 );
    }

    var_clear_2
    var_clear_0
}

_ID43170()
{
    level notify( "draw_target_end" );
    level._ID47489._ID45899 = undefined;
    waitframe;
    var_0 = level._ID48408;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_02F( var_1 ) )
            continue;

        if ( _func_02F( var_1._ID49554 ) )
        {
            var_1._ID49554 = undefined;

            if ( var_1 != level._ID794 )
                _func_0B0( var_1, 0 );

            _func_0A3( var_1 );
        }
    }

    var_clear_2
    var_clear_0
}

_ID51161()
{
    return _unknown_2851( ::_unknown_2849 );
}

_ID46896()
{
    return _unknown_285A( ::_unknown_2854 );
}

_ID45200( var_0 )
{
    self _meth_8320( var_0 );
}

_ID54005( var_0 )
{
    self _meth_8321( var_0 );
}

_ID44359( var_0 )
{
    if ( _ID42407::_ID13023( "laststand_downed" ) && _ID42407::_ID13019( "laststand_downed" ) )
        return;

    var_1 = self _meth_82DC( "primary", "altmode" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( self._ID51820 == var_3 )
        {
            self [[ var_0 ]]( self._ID51820 );
            return;
        }
    }

    var_clear_2
    var_clear_0

    if ( var_1.size > 0 )
        self [[ var_0 ]]( var_1[0] );
}

_ID43559( var_0 )
{
    var_1 = _func_06A( "script_origin", ( 0, 0, 1 ) );
    var_1._ID740 = self._ID740;
    var_1 _meth_80A1( "predator_drone_static", "sounddone" );
    var_2 = _func_1B0( self );
    var_2._ID499 = "fullscreen";
    var_2._ID1284 = "fullscreen";
    var_2 _meth_80D3( "ac130_overlay_grain", 640, 480 );
    wait(var_0);
    var_2 _meth_808F();
    wait 3;
    var_1 _meth_80B3();
    wait 1;
    var_1 _meth_80B7();
}

_ID43946()
{
    self endon( "controlling_UAV" );
    var_0 = self _meth_8348();

    for (;;)
    {
        var_1 = self _meth_8348();

        if ( !var_0 && var_1 )
        {
            self._ID50833++;
            self._ID50833 = self._ID50833 % self._ID54358.size;
            var_2 = _ID48289::_ID43601();
            self _meth_8055();
            var_3 = level._ID47489._ID45626;
            self _meth_8085( var_2, "tag_player", 1, var_3, var_3, var_3, var_3, 1 );
            var_4 = var_2 _meth_818D( "tag_origin" );
            self _meth_8345( var_4 );
        }

        var_0 = var_1;
        wait 0.05;
    }
}

_ID47394()
{
    if ( self._ID54358.size <= 1 )
        return;

    if ( _func_02F( self._ID51482 ) )
        return;

    self._ID51482 = 1;

    for (;;)
    {
        _ID42407::_ID13027( "controlling_UAV" );
        _unknown_29CD();
    }
}

_ID53491( var_0, var_1 )
{
    var_2 = [];
    var_2["player0"] = "cg_playerFovScale0";
    var_2["player1"] = "cg_playerFovScale1";
    var_3 = var_2[var_1._ID39468];

    for (;;)
    {
        var_1 _ID42407::_ID13027( "controlling_UAV" );
        thread [[ var_0 ]]( var_1 );
        var_1 _ID42407::_ID13031( "controlling_UAV" );
        _func_0DB( var_3, 1 );
    }
}

_ID54128()
{
    self _meth_80A9( 0, 0, 0, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626 * 0.25, level._ID47489._ID45626 );
}

_ID44091( var_0 )
{
    if ( _func_02F( level._ID46121 ) && !_func_02F( level._ID52651 ) )
    {
        level._ID52651 = _ID42407::_ID35028( "remote_missile_player_body", var_0._ID740, var_0._ID65 );
        level._ID52651 _meth_8029();

        if ( _func_02F( level._ID49267 ) )
            level._ID52651 _meth_801D( level._ID49267 );

        if ( _func_02F( level._ID52813 ) )
            level._ID52651 _meth_801D( level._ID52813, "tag_weapon_right" );

        var_1 = _ID42237::_ID37527( var_0 _meth_8188() == "stand", "stand", "crouch" );
        level._ID52651 thread _ID42259::_ID3044( level._ID52651, var_1 );
        level._ID52651 thread _ID42323::_ID22642( var_0._ID39468 );
    }
}

_ID53019()
{
    if ( _func_02F( level._ID52651 ) )
    {
        level._ID52651 _meth_80B7();
        level._ID52651 = undefined;
    }
}
#using_animtree("generic_human");

_ID52138()
{
    if ( _func_02F( level._ID46121 ) )
    {
        level._ID30900["remote_missile_player_body"] = #animtree;
        level._ID30904["remote_missile_player_body"] = level._ID46121;
        level._ID30895["remote_missile_player_body"]["stand"][0] = %h2_npc_predator_stand_idle;
        level._ID30895["remote_missile_player_body"]["crouch"][0] = %h2_npc_predator_crouch_idle;

        if ( _func_02F( level._ID49267 ) )
            _func_14C( level._ID49267 );

        level._ID52813 = "weapon_uav_control_unit";
        _func_14C( level._ID52813 );
    }
}

_ID36603()
{
    _ID42237::_ID41069( level, "remote_missile_exit", self, "death" );
    level._ID794 _ID42237::_ID36516( "predator_drone_missile" );
    self _meth_8561( "mstrike_boost_shot" );
    self _meth_8561( "mstrike_boost_boom" );
    self _meth_8561( "mstrike_boost_swoop" );
    self _meth_8561( "mstrike_boost_jet" );
    waittillframeend;
    self _meth_8561( "mstrike_boost_roar" );
}
