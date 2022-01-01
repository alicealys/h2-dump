// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    level._ID24830 = 1;

    if ( !isdefined( level._ID50703 ) )
        level._ID50703 = 12000;

    if ( !isdefined( level._ID48408 ) )
        level._ID48408 = [];

    level._ID51129 = 0 - level._ID50703;
    level._ID45067 = 0;
    level._ID43997 = 0;
    precacheitem( "remote_missile_detonator" );

    if ( isdefined( level._ID43372 ) )
        precacheitem( level._ID43372 );
    else
        precacheitem( "remote_missile" );

    precacheshader( "veh_hud_target" );
    precacheshader( "veh_hud_target_colorblind" );
    precacheshader( "veh_hud_target_offscreen" );
    precacheshader( "veh_hud_missile_flash" );
    precacheshader( "ac130_overlay_grain" );
    precacheshader( "remotemissile_infantry_target" );
    precacheshader( "remotemissile_infantry_target_2plr" );
    precacheshader( "remotemissile_infantry_target_colorblind" );
    precacheshader( "hud_fofbox_self_sp" );
    precacheshader( "hud_fofbox_self_sp_colorblind" );
    precacheshader( "dpad_killstreak_hellfire_missile_inactive" );
    precacheshader( "h2_overlays_predator_reticle" );
    precacheshellshock( "remoteMissile" );
    precachestring( &"HELLFIRE_DRONE_VIEW" );
    precachestring( &"HELLFIRE_MISSILE_VIEW" );
    precachestring( &"HELLFIRE_FIRE" );
    precachestring( &"HELLFIRE_BOOST_PROMPT" );
    precachestring( &"HELLFIRE_CANCEL_PROMPT" );
    precachestring( &"HELLFIRE_CANCEL_PROMPT_PC" );
    precachestring( &"CANCEL_PROMPT_WITH_CLAYMORE_PC" );
    _ID52138();
    level._ID47489 = spawnstruct();
    level._ID47489._ID45626 = 4;
    _ID42237::_ID14400( "predator_missile_launch_allowed" );
    _ID42237::_ID14402( "predator_missile_launch_allowed" );
    _ID42407::_ID1895( "hint_predator_drone_destroyed", &"HELLFIRE_DESTROYED", ::_ID43132, undefined, "small_background" );
    _ID42407::_ID1895( "hint_predator_drone_4", &"HELLFIRE_USE_DRONE", ::_ID48862, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_predator_drone_2", &"HELLFIRE_USE_DRONE_2", ::_ID48862, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_predator_drone_not_available", &"HELLFIRE_DRONE_NOT_AVAILABLE", ::_ID48619, undefined, "small_background" );

    if ( isdefined( level._ID51882 ) && level._ID51882 )
        visionsetmissilecam( "missilecam" );
    else if ( !isdefined( level._ID43292 ) )
        visionsetmissilecam( "missilecam" );
    else
        visionsetmissilecam( level._ID43292 );

    setsaveddvar( "missileRemoteSpeedUp", "1000" );
    setsaveddvar( "missileRemoteSpeedTargetRange", "6000 12000" );
    _ID42407::_ID1892( "axis", ::_ID43765 );
    _ID42237::_ID14400( "uav_reloading" );
    _ID42237::_ID14400( "uav_collecting_stats" );
    _ID42237::_ID14400( "uav_enabled" );
    _ID42237::_ID14402( "uav_enabled" );
    level._ID794 maps\_portal::portal_group_add_global_notify_wait( "player_is_controlling_UAV", "exiting_uav_control" );

    foreach ( var_1 in level._ID805 )
        var_1 _ID42407::_ID13024( "controlling_UAV" );

    level._ID49157 = 10;
}

_ID48862()
{
    var_0 = 0;

    if ( isdefined( level._ID45535 ) )
        var_0 = 1;

    var_1 = _ID45914();

    if ( !isalive( var_1 ) )
        var_0 = 1;

    if ( isdefined( self._ID51771 ) )
        var_0 = 1;

    if ( _ID42237::_ID14396( "wave_wiped_out" ) && _ID42237::_ID14385( "wave_wiped_out" ) )
        var_0 = 1;

    if ( _ID42407::_ID13023( "laststand_downed" ) && _ID42407::_ID13019( "laststand_downed" ) )
        var_0 = 1;

    if ( self getcurrentweapon() == "remote_missile_detonator" )
        var_0 = 1;

    if ( _ID42237::_ID14396( "no_default_uav_hint" ) && _ID42237::_ID14385( "no_default_uav_hint" ) )
        var_0 = 1;

    return var_0;
}

_ID51835()
{
    if ( !isdefined( level._ID30908 ) )
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
    return isdefined( level._ID30908[var_0] ) || isdefined( level._ID30908[var_0 + "_variant"] );
}

_ID48619()
{
    if ( isdefined( level._ID51655 ) )
        return 0;
    else
        return 1;
}

_ID43132()
{
    if ( isdefined( level._ID45535 ) )
        return 0;
    else
        return 1;
}

_ID54399( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( !_ID42237::_ID14385( "uav_enabled" ) )
    {
        _ID42237::_ID14402( "uav_enabled" );

        if ( !_ID42237::_ID14385( "uav_reloading" ) && var_0 )
            thread _ID52135( "uav_online" );
    }

    if ( isdefined( var_1 ) )
        _ID47106( var_1 );
}

_ID50531( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( _ID42237::_ID14385( "uav_enabled" ) )
    {
        _ID42237::_ID14388( "uav_enabled" );

        if ( !_ID42237::_ID14385( "uav_reloading" ) && var_0 )
            thread _ID52135( "uav_offline" );
    }

    if ( isdefined( var_1 ) && var_1 )
        _ID50882();
    else
        _ID52102();
}

_ID47106( var_0 )
{
    if ( isdefined( level._ID45535 ) )
        return;

    if ( isstring( var_0 ) )
        var_1 = var_0;
    else if ( isdefined( self._ID49783 ) )
        var_1 = self._ID49783;
    else
        return;

    if ( !self hasweapon( var_0 ) )
        return;

    self setweaponhudiconoverride( "actionslot" + _ID48383(), "none" );
    self setactionslot( _ID48383(), "weapon", var_0 );
    setomnvar( "ui_updateactionslot", 1 );
}

_ID50882()
{
    self setweaponhudiconoverride( "actionslot" + _ID48383(), "" );
    self setactionslot( _ID48383(), "" );
    setomnvar( "ui_updateactionslot", 1 );
}

_ID52102()
{
    self setweaponhudiconoverride( "actionslot" + _ID48383(), "dpad_killstreak_hellfire_missile_inactive" );
    self setactionslot( _ID48383(), "" );
    setomnvar( "ui_updateactionslot", 1 );
}

_ID47102( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( var_0 == "remote_missile_detonator" )
        return 1;

    if ( var_0 == "remote_missile_detonator_finite" )
        return 1;

    return 0;
}

_ID44738( var_0 )
{
    _ID46425();
    self setactionslot( _ID48383(), "weapon", var_0 );
    self giveweapon( var_0 );
    setomnvar( "ui_updateactionslot", 1 );
    thread _ID48289::_ID43866();
}

_ID46425()
{
    if ( !self hasweapon( "claymore" ) )
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
    if ( !isdefined( self._ID54358 ) )
        return 0;

    return self._ID54358.size > 1;
}

_ID51120( var_0 )
{
    self._ID39980 = 0;

    for (;;)
    {
        self waittill( "weapon_change",  var_1  );

        if ( _ID47102( var_1 ) )
        {
            self._ID39980 = 1;

            while ( !self isonground() )
                waittillframeend;

            if ( isdefined( level._ID45535 ) )
            {
                thread _ID48041( 0, "uav_down" );
                self switchtoweapon( self._ID51820 );
                self._ID39980 = 0;
                continue;
            }

            if ( _ID42407::_ID13023( "laststand_downed" ) && _ID42407::_ID13019( "laststand_downed" ) )
            {
                _ID51161();
                self._ID39980 = 0;
                continue;
            }

            if ( _ID42407::_ID20618() && isdefined( level._ID45690 ) && level._ID45690 != self )
            {
                thread _ID42407::_ID28864( "so_hq_uav_busy" );
                _ID51161();
                self._ID39980 = 0;
                continue;
            }

            self._ID49783 = var_1;
            thread _ID53927();

            if ( isdefined( level._ID51276 ) )
                [[ level._ID51276 ]]();

            _ID42463::_ID10405( "player_UAV_use" );
            level._ID45690 = self;
            level._ID48964 = [];
            _ID47183( self, var_1 );
            level._ID45690 = undefined;
            self._ID39980 = 0;

            if ( isdefined( level._ID53190 ) )
                [[ level._ID53190 ]]();

            if ( isdefined( var_0 ) )
                thread [[ var_0 ]]();
        }
    }
}

_ID48023()
{
    self endon( "death" );
    self._ID51820 = self getcurrentweapon();

    for (;;)
    {
        self waittill( "weapon_change",  var_0  );

        if ( !_ID47102( var_0 ) )
            self._ID51820 = var_0;
    }
}

_ID47687( var_0 )
{
    self notifyonplayercommand( "switch_to_remotemissile", "+actionslot " + _ID48383() );
    thread _ID51120( var_0 );
    thread _ID48023();

    for (;;)
    {
        self waittill( "switch_to_remotemissile" );

        if ( self._ID39980 )
            continue;

        if ( !_ID47102( self getcurrentweapon() ) )
            self._ID51820 = self getcurrentweapon();

        if ( isdefined( level._ID45535 ) )
        {
            if ( !level._ID43997 )
                thread _ID48041( 0, "uav_down" );

            continue;
        }

        if ( _ID42237::_ID14385( "uav_reloading" ) || !_ID42237::_ID14385( "uav_enabled" ) )
            thread _ID48041( 1 );
    }
}

_ID48041( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "uav_offline";

    var_2 = gettime();

    if ( var_0 && level._ID51129 + level._ID50703 - var_2 < 2000 || level._ID50703 < 5000 )
    {
        if ( !isdefined( level._ID45535 ) && ( isdefined( self._ID49783 ) && self getweaponammoclip( self._ID49783 ) > 0 ) )
            return;
    }

    if ( _ID42237::_ID14385( "uav_reloading" ) )
    {
        if ( isdefined( level._ID30908["uav_reloading"] ) )
            var_1 = "uav_reloading";
    }

    if ( !_ID42237::_ID14385( "uav_collecting_stats" ) && !level._ID45067 )
    {
        level._ID45067 = 1;
        _ID52135( var_1 );
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
        wait(7 + randomint( 4 ));

        if ( _ID42237::_ID14396( "special_op_terminated" ) && _ID42237::_ID14385( "special_op_terminated" ) )
            return;

        if ( isdefined( level._ID45535 ) )
            return;

        if ( _ID42237::_ID14385( "uav_reloading" ) )
            return;

        if ( !_ID42237::_ID14385( "uav_enabled" ) )
            return;

        _ID52135( "uav_online_repeat" );
        wait(15 + randomint( 10 ));

        if ( _ID42237::_ID14396( "special_op_terminated" ) && _ID42237::_ID14385( "special_op_terminated" ) )
            return;

        if ( isdefined( level._ID45535 ) )
            return;

        if ( isdefined( level._ID49601 ) )
            return;

        _ID52135( "uav_online" );
        thread _ID42407::_ID11090( "hint_predator_drone_" + _ID48383(), 6 );
    }
}

_ID43560()
{
    if ( isdefined( level._ID50627 ) )
        return;

    if ( !isdefined( level._ID44684 ) )
        return;

    var_0 = undefined;
    var_1 = 0;

    if ( isdefined( level._ID48964["ai"] ) )
        var_1 = level._ID48964["ai"];

    if ( var_1 > 5 )
    {
        var_0 = "uav_multi_kill";

        if ( _ID52730( "uav_multi_kill2" ) && _ID42237::_ID8201() )
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

    foreach ( var_10, var_9 in level._ID48964 )
    {
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

    var_11 = var_0;

    if ( var_3 > 0 )
        var_11 = "uav_btr_kill";
    else if ( var_5 > 0 )
        var_11 = "uav_helo_kill";
    else if ( var_4 > 1 )
    {
        var_11 = "uav_multi_vehicle_kill";

        if ( _ID52730( "uav_multi_vehicle_kill2" ) && _ID42237::_ID8201() )
            var_11 = "uav_multi_vehicle_kill2";
    }
    else if ( var_6 > 0 )
    {
        var_11 = "uav_jeep_kill";

        if ( var_1 > 2 && var_1 <= 5 && _ID52730( "uav_direct_hit" ) && _ID42237::_ID8201() )
            var_11 = "uav_direct_hit";
    }
    else if ( var_7 > 0 )
    {
        var_11 = "uav_truck_kill";

        if ( var_1 > 2 && var_1 <= 5 && _ID52730( "uav_direct_hit" ) && _ID42237::_ID8201() )
            var_11 = "uav_direct_hit";
    }

    if ( !isdefined( var_11 ) )
        return;

    if ( _ID42237::_ID14396( "special_op_terminated" ) && _ID42237::_ID14385( "special_op_terminated" ) )
        return;

    _ID52135( var_11 );
    level notify( "remote_missile_kill_dialogue" );
}

_ID54555( var_0 )
{
    if ( isdefined( level._ID30908[var_0 + "_variant"] ) && isarray( level._ID30908[var_0 + "_variant"] ) )
        level._ID30908[var_0] = level._ID30908[var_0 + "_variant"][randomint( level._ID30908[var_0 + "_variant"].size )];
}

_ID52135( var_0 )
{
    if ( !isdefined( level._ID44684 ) )
        return;

    if ( isdefined( level._ID52258 ) && level._ID52258 )
        return;

    if ( !_ID52730( var_0 ) )
        return;

    if ( _ID42237::_ID14396( "special_op_terminated" ) && _ID42237::_ID14385( "special_op_terminated" ) )
        return;

    _ID54555( var_0 );
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
    level._ID49278 settext( "" );
    level._ID49278._ID578 = var_0;
    level._ID49278._ID408 = 0;
}

_ID47277( var_0 )
{
    level._ID49278 setvalue( var_0 );
}

_ID52336()
{
    if ( !isdefined( level._ID45535 ) )
        level._ID49278 fadeovertime( 0.25 );

    level._ID49278._ID55 = 0;
}

_ID47058()
{
    if ( !isdefined( level._ID49278 ) )
        return;

    level._ID49278 destroy();
    level._ID49278 = undefined;
}

_ID54090( var_0 )
{
    _ID51361();
    _ID45202( &"HELLFIRE_RELOADING_WITH_TIME", var_0 );
    wait 1;
    _ID51361();
}

_ID45202( var_0, var_1 )
{
    level._ID48541 = _ID42313::_ID9200( "objective", 1.0 );
    level._ID48541 _ID42313::_ID32753( "CENTER", undefined, 0, -150 );
    level._ID48541._ID578 = var_0;
    level._ID48541 setvalue( var_1 );
    level._ID48541._ID196 = ( 0.6, 0.6, 0.6 );
    level._ID48541._ID55 = 0.75;
}

_ID53159( var_0 )
{
    level._ID48541 = _ID42313::_ID9200( "objective", 1.0 );
    level._ID48541 _ID42313::_ID32753( "CENTER", undefined, 0, -150 );
    level._ID48541 settext( var_0 );
    level._ID48541._ID196 = ( 0.6, 0.6, 0.6 );
    level._ID48541._ID55 = 0.75;
    level._ID48541._ID408 = 0;
}

_ID46480()
{
    if ( !isdefined( level._ID48541 ) )
        return;

    if ( !isdefined( level._ID45535 ) )
        level._ID48541 fadeovertime( 0.25 );

    level._ID48541._ID55 = 0;
}

_ID51361()
{
    if ( !isdefined( level._ID48541 ) )
        return;

    level._ID48541 destroy();
    level._ID48541 = undefined;
}

_ID50311( var_0 )
{
    var_1 = gettime() + var_0 * 1000;

    while ( gettime() < var_1 )
    {
        if ( self._ID47295 )
            return 0;

        if ( isdefined( level._ID45535 ) )
            return 0;

        if ( self usebuttonpressed() )
            return 0;

        if ( !_ID42237::_ID14385( "uav_enabled" ) )
            return 0;

        wait 0.05;
    }

    return 1;
}

_ID47508( var_0, var_1 )
{
    var_2 = gettime();
    level._ID43486 = var_2;

    if ( isdefined( var_0 ) )
    {
        level._ID46167 = var_0;
        var_0 waittill( "death" );
    }

    var_1 _ID42407::_ID10226( 0.1, ::_ID45284, 1 );
    var_1._ID45566 = undefined;

    if ( isdefined( level._ID43486 ) && level._ID43486 == var_2 )
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

    if ( isdefined( level._ID794._ID43494 ) )
        level._ID794 _ID42407::_ID48929( level._ID794._ID43494 );

    if ( isdefined( level._ID51882 ) && level._ID51882 )
        var_0 visionsetmissilecamforplayer( level._ID40576, 0.5 );
    else if ( isdefined( _ID42407::_ID16066( level._ID22719 ) ) )
        var_0 _ID42407::_ID14689( level._ID22719, 0.5 );

    var_0 _ID51161();
    var_0 freezecontrols( 0 );

    if ( !_ID42407::_ID20581( var_0 ) )
        var_0 enableoffhandweapons();

    var_0 _ID42407::_ID10226( 0.1, ::_ID45284, 1 );
    level._ID52466 = undefined;
    wait 0.1;
    _ID52998();
}

_ID45284( var_0 )
{
    if ( var_0 && !isdefined( level.remotemissile_stances_blocked ) )
        return;

    if ( !var_0 )
    {
        var_1 = self getstance();

        if ( var_1 != "prone" )
            self allowprone( var_0 );

        if ( var_1 != "crouch" )
            self allowcrouch( var_0 );

        if ( var_1 != "stand" )
            self allowstand( var_0 );

        level.remotemissile_stances_blocked = 1;
    }
    else
    {
        self allowprone( var_0 );
        self allowcrouch( var_0 );
        self allowstand( var_0 );
        level.remotemissile_stances_blocked = undefined;
    }
}

_ID47107( var_0 )
{
    setomnvar( "ui_predatordrone", level._ID49157 );
    _ID42475::_ID34575( "player_predator_use" );
    var_0._ID19183["screen_distort"] = newhudelem();
    var_0._ID19183["screen_distort"]._ID1331 = 0;
    var_0._ID19183["screen_distort"]._ID1339 = 0;
    var_0._ID19183["screen_distort"]._ID44 = "left";
    var_0._ID19183["screen_distort"]._ID45 = "top";
    var_0._ID19183["screen_distort"]._ID499 = "fullscreen";
    var_0._ID19183["screen_distort"]._ID1284 = "fullscreen";
    var_0._ID19183["screen_distort"] setshader( "h1_ac130_distort", 640, 480 );
    var_0._ID19183["screen_distort"]._ID55 = 1.0;
    var_0._ID19183["screen_distort"]._ID983 = 5;

    if ( !isdefined( var_0._ID52526 ) )
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

    if ( _ID48383() == 4 )
        var_2 = &"HELLFIRE_CANCEL_PROMPT_PC";
    else
        var_2 = &"HELLFIRE_CANCEL_PROMPT_WITH_CLAYMORE_PC";

    if ( var_0 _ID42237::_ID20583() )
    {
        var_0._ID52526 settext( var_1 );
        var_0._ID52526 thread _ID42237::_ID47857( var_0, var_1, var_2, "stopHint" );
    }
    else
    {
        var_0._ID52526 settext( var_2 );
        var_0._ID52526 thread _ID42237::_ID47857( var_0, var_2, var_1, "stopHint" );
    }

    setblur( 0.8, 0 );
    thread _ID46971();
}

_ID52223()
{
    setblur( 0, 0 );
    level._ID794 stopshellshock();
    level notify( "post_effects_disabled" );
}

_ID46971()
{
    level endon( "post_effects_disabled" );
    var_0 = 5;

    for (;;)
    {
        level._ID794 shellshock( "remoteMissile", var_0 );
        wait(var_0);
    }
}

_ID46825( var_0 )
{
    level _ID42237::_ID41068( "remote_missile_exploded", "uav_destroyed", "remote_missile_exit" );
    var_0._ID19183["screen_distort"] destroy();

    if ( isdefined( var_0._ID52526 ) )
        var_0._ID52526 destroy();

    setomnvar( "ui_predatormissile", 0 );
    _ID52223();
}

_ID43464( var_0 )
{
    level endon( "remote_missile_exploded" );
    level endon( "uav_destroyed" );
    level waittill( "missile_boost_done" );
    var_0._ID52526 notify( "stopHint" );
    var_0._ID52526 destroy();
}

_ID45473( var_0 )
{
    var_0._ID52526 notify( "stopHint" );
    var_1 = &"HELLFIRE_BOOST_PROMPT";
    var_0._ID52526 settext( var_1 );
    thread _ID43464( var_0 );
    setomnvar( "ui_predatordrone", 0 );
    setomnvar( "ui_predatormissile", 1 );
    thread _ID43559( 0.3 );
    thread _ID46825( var_0 );
}

_ID47183( var_0, var_1 )
{
    if ( var_1 == "remote_missile_detonator" )
        var_0 givemaxammo( var_1 );

    level notify( "starting_predator_drone_control" );
    var_0 notify( "starting_predator_drone_control" );
    var_2 = 0;
    var_3 = 0;
    level._ID53434 = "black_bw";

    if ( !isdefined( level._ID43292 ) )
        level._ID43292 = "ac130";

    level._ID43593 = "missilecam";
    var_0 disableoffhandweapons();
    var_0 freezecontrols( 1 );
    var_0 _ID45284( 0 );
    var_0 _ID42407::_ID13025( "controlling_UAV" );
    _ID48123();
    var_4 = var_0 _ID50311( 1.0 );

    if ( !var_4 )
        _ID50930( var_0 );
    else
    {
        var_5 = 0.25;
        var_0 _meth_82df( level._ID53434, var_5 );

        if ( isdefined( level._ID51882 ) && level._ID51882 )
            var_0 visionsetmissilecamforplayer( level._ID53434, var_5 );

        var_4 = _ID50311( var_5 );

        if ( !var_4 )
        {
            _ID50930( var_0 );
            return;
        }

        var_0._ID20494 = 1;
        level notify( "player_is_controlling_UAV" );
        var_0 notify( "player_is_controlling_UAV" );
        var_6 = var_0 _ID45914();

        if ( isdefined( var_6 ) )
        {
            if ( _ID42407::_ID20614() )
                var_6 laserforceoff( self );
            else
                var_6 hide();
        }

        _ID44091( var_0 );
        var_7 = _ID48289::_ID43601();

        if ( !_ID48289::_ID44274() )
        {
            var_0 playerlinkweaponviewtodelta( var_7, "tag_player", 1.0, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626 );
            var_8 = var_7 gettagangles( "tag_origin" );
            var_0 setplayerangles( var_8 );
        }
        else
        {
            var_0._ID25524 = var_0._ID740;
            var_0._ID25495 = var_0 getplayerangles();
            var_0 playerlinktodelta( _ID48289::_ID43601(), "tag_player", 1.0, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626 );
            var_0 playerlinktodelta( _ID48289::_ID43601(), "tag_player", 1.0, 0, 0, 0, 0 );
            var_0 _ID42407::_ID10226( 0.1, ::_ID54128 );
        }

        var_0 freezecontrols( 0 );
        var_0 _meth_8491();
        wait 0.05;

        if ( isdefined( level._ID51019 ) )
            var_0 [[ level._ID51019 ]]();
        else
        {
            var_0 _ID46513();
            _ID47117( &"HELLFIRE_DRONE_VIEW" );
            _ID47277( level._ID49157 );
        }

        _ID47107( var_0 );

        if ( isdefined( level._ID51882 ) && level._ID51882 )
        {
            _ID42323::_ID37634();
            var_0 laseraltviewon();
            var_0 visionsetmissilecamforplayer( level._ID43292, 0 );
            var_0 _meth_82df( level._ID22719, 0.25 );
        }
        else
        {
            if ( isdefined( _ID42407::_ID16066( level._ID43292 ) ) )
                var_0 _ID42407::_ID14689( level._ID43292, 0.25 );

            var_0 _meth_82df( level._ID43292, 0.25 );
        }

        if ( isdefined( level._ID43461 ) )
        {
            level._ID794._ID43494 = level._ID794._ID46646;
            level._ID794 _ID42407::_ID48929( level._ID43461 );
        }

        thread _ID50368();
        wait 0.2;
        _ID42237::setshadowmapoff();
        var_9 = _ID45827( var_0 );

        if ( !var_9 )
        {
            _ID45006( var_0, var_0._ID47295 );
            return;
        }

        level._ID51129 = gettime();
        thread _ID49789();
        level._ID794 thread _ID42237::_ID27000( "predator_drone_missile" );
        level notify( "player_fired_remote_missile" );
        var_0 notify( "player_fired_remote_missile" );
        _ID42475::_ID34575( "player_predator_end" );
        var_10 = _ID46317( var_0 );
        var_10 thread _ID46236( var_0 );
        var_10 thread _ID50436( var_0 );

        if ( var_2 )
        {
            var_0 _ID53159( &"HELLFIRE_FIRE" );
            var_4 = _ID50311( 1.2 );

            if ( !var_4 )
            {
                _ID45006( var_0, 1 );
                return;
            }

            _ID46480();
            _ID43170();
            wait 0.25;
        }

        var_0._ID51771 = 1;

        if ( isdefined( level._ID46838 ) )
            var_0 [[ level._ID46838 ]]( 0 );
        else
        {
            _ID45473( var_0 );
            _ID47117( &"HELLFIRE_MISSILE_VIEW" );
            _ID51361();
        }

        var_0 remotecamerasoundscapeon();
        var_0 unlink();
        var_0 _meth_82df( level._ID53434, 0 );
        var_0 allowmelee( 0 );

        if ( isdefined( level._ID50641 ) )
            var_0 cameralinkto( var_10, level._ID50641 );
        else
            var_0 cameralinkto( var_10, "tag_origin" );

        var_0 controlsunlink( var_10 );
        var_10 thread _ID43399( var_0, "h2_overlays_predator_reticle" );
        var_4 = _ID50311( 0.2 );

        if ( !var_4 )
        {
            _ID43635( var_0, 1 );
            return;
        }

        if ( isdefined( level._ID46966 ) )
            var_0 [[ level._ID46966 ]]( var_10 );

        thread _ID50368();

        while ( isdefined( level._ID46167 ) )
        {
            if ( isdefined( level._ID45535 ) )
            {
                _ID43635( var_0, 1 );
                return;
            }

            if ( var_0._ID47295 )
            {
                _ID43635( var_0, 1 );
                return;
            }

            if ( !_ID42237::_ID14385( "uav_enabled" ) )
            {
                _ID43635( var_0, 1 );
                return;
            }

            if ( isdefined( self.remotemissile_lowerbound_limit ) && isdefined( self.remotemissile_upperbound_limit ) )
            {
                if ( level._ID46167._ID740[0] < self.remotemissile_lowerbound_limit[0] || level._ID46167._ID740[1] < self.remotemissile_lowerbound_limit[1] || level._ID46167._ID740[2] < self.remotemissile_lowerbound_limit[2] || level._ID46167._ID740[0] > self.remotemissile_upperbound_limit[0] || level._ID46167._ID740[1] > self.remotemissile_upperbound_limit[1] || level._ID46167._ID740[2] > self.remotemissile_upperbound_limit[2] )
                {
                    _ID43635( var_0, 0 );
                    return;
                }
            }

            wait 0.05;
        }

        if ( !isdefined( var_6 ) )
        {
            _ID43635( var_0, 0 );
            return;
        }

        if ( var_3 )
        {
            setsaveddvar( "cg_fov", 26 );
            var_0._ID48535 = 1;
            var_0._ID51771 = undefined;
            var_0 makevehiclesolidcapsule();
            var_0 cameraunlink();
            var_0 remotecamerasoundscapeoff();
            var_0 playerlinkweaponviewtodelta( _ID48289::_ID43601(), "tag_player", 1.0, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626 );
            var_0 setplayerangles( _ID48289::_ID43601() gettagangles( "tag_origin" ) );
            var_4 = _ID50311( 2 );

            if ( !var_4 )
            {
                _ID45006( var_0, var_0._ID47295 );
                return;
            }

            _ID45006( var_0, 0 );
            return;
        }

        _ID43635( var_0, 0 );
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
    var_0 waittill( "predicted_projectile_impact",  var_1, var_2  );
    var_0 _meth_82df( "coup_sunblind", 0 );
}

_ID46236( var_0 )
{
    var_0._ID49913 = 1;
    var_0 waittill( "projectile_impact",  var_1, var_2, var_3  );
    level thread _ID46141( var_0 );
    level._ID49090 = var_2;
    var_4 = 1000;
    var_5 = 6.0;
    earthquake( 0.3, 1.4, var_2, 8000 );
    _ID42463::_ID10405( "remote_missle_impact", var_2 );
    wait 0.1;
    physicsexplosionsphere( var_2, var_4, var_4 / 2, var_5 );
    wait 2;
    level._ID49090 = undefined;
    var_0._ID49913 = undefined;
}

_ID46141( var_0 )
{
    _ID42237::_ID14402( "uav_collecting_stats" );
    var_1 = _ID42407::_ID16726();

    foreach ( var_3 in var_1 )
        var_3 thread _ID45511( var_0 );

    wait 1;
    _ID42237::_ID14388( "uav_collecting_stats" );
}

_ID43765( var_0 )
{
    if ( !isdefined( level._ID44684 ) )
        return;

    self waittill( "death",  var_0, var_1  );

    if ( !isdefined( level._ID45690 ) )
        return;

    if ( !isdefined( level._ID48964["ai"] ) )
        level._ID48964["ai"] = 0;

    if ( isdefined( var_0 ) && isdefined( level._ID45690 ) )
    {
        if ( var_0 == level._ID45690 || isdefined( var_0._ID85 ) && var_0._ID85 == level._ID45690 )
        {
            level._ID48964["ai"]++;

            if ( isplayernumber( level._ID45690 ) && level._ID48964["ai"] == 10 )
                level._ID45690 _ID42407::_ID27440( "TEN_PLUS_FOOT_MOBILES" );
        }
    }
}

_ID45511( var_0 )
{
    if ( !isdefined( level._ID44684 ) )
        return;

    level endon( "delayed_remote_missile_exploded" );
    var_1 = undefined;

    switch ( self._ID1282 )
    {
        case "btr80":
        case "btr80_physics":
            var_1 = "btr";
            break;
        case "hind":
        case "mi17":
        case "mi17_noai":
        case "mi17_bulletdamage":
        case "ucav":
            var_1 = "helo";
            break;
        case "uaz":
        case "uaz_physics":
            var_1 = "jeep";
            break;
        case "bm21_troops":
        case "bm21":
        case "bm21_drivable":
            var_1 = "truck";
            break;
        default:
            var_1 = "vehicle";
            break;
    }

    if ( !isdefined( level._ID48964[var_1] ) )
        level._ID48964[var_1] = 0;

    self waittill( "death",  var_2, var_3  );

    if ( var_1 == "helo" || var_1 == "btr" || isdefined( self._ID29965 ) && self._ID29965.size > 0 )
    {
        if ( isdefined( var_2 ) && var_2 == var_0 )
            level._ID48964[var_1]++;
    }
}

_ID52892()
{
    var_0 = self._ID54358[self._ID50833];
    return var_0;
}

_ID45914()
{
    if ( !isdefined( self._ID54358 ) )
        return level._ID49526;

    if ( !isdefined( self._ID50833 ) )
        self._ID50833 = 0;

    var_0 = _ID52892();
    return var_0._ID49526;
}

_ID43635( var_0, var_1 )
{
    var_0._ID51771 = undefined;

    if ( isdefined( level._ID46838 ) )
        var_0 [[ level._ID46838 ]]( 1 );
    else
        _ID47058();

    _ID43170();

    if ( isdefined( level._ID45535 ) )
        thread _ID43559( 0.5 );

    var_0 makevehiclesolidcapsule();
    var_0 cameraunlink();

    if ( isdefined( level._ID51882 ) && level._ID51882 )
    {
        _ID42323::_ID37633();
        var_0 laseraltviewoff();
        var_0 visionsetmissilecamforplayer( level._ID40576, 0 );
    }

    var_0 remotecamerasoundscapeoff();
    var_2 = var_0 _ID45914();

    if ( isdefined( var_2 ) )
    {
        if ( _ID42407::_ID20614() )
            var_2 laserforceon( self );
        else
            var_2 show();
    }

    level notify( "remote_missile_exit" );

    if ( var_1 )
    {
        var_0 _meth_82df( level._ID53434, 0 );
        var_0 _meth_8490();
        _ID42237::setshadowmapon();
        _ID53019();
        wait 0.05;
        var_0 _ID49347::_ID47192( 0.4 );

        if ( isdefined( level._ID794._ID43494 ) )
            level._ID794 _ID42407::_ID48929( level._ID794._ID43494 );

        if ( !( isdefined( level._ID51882 ) && level._ID51882 ) )
        {
            if ( isdefined( _ID42407::_ID16066( level._ID22719 ) ) )
                var_0 _ID42407::_ID14689( level._ID22719, 0.4 );
        }

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 enableweapons();

        var_0 freezecontrols( 0 );
        var_0 _ID46896();
        wait 0.2;

        if ( !isdefined( level._ID50570 ) || !level._ID50570 )
            var_0 allowmelee( 1 );

        _ID52998();

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 enableoffhandweapons();
    }
    else
    {
        var_0 _meth_82df( "coup_sunblind", 0 );
        var_0 freezecontrols( 1 );
        var_0 _meth_8490();
        _ID42237::setshadowmapon();
        _ID53019();
        wait 0.05;
        var_0 _ID49347::_ID47192( 1.0 );

        if ( !( isdefined( level._ID51882 ) && level._ID51882 ) )
        {
            if ( isdefined( _ID42407::_ID16066( level._ID22719 ) ) )
                var_0 _ID42407::_ID14689( level._ID22719, 1.0 );
        }

        if ( isdefined( level._ID794._ID43494 ) )
            level._ID794 _ID42407::_ID48929( level._ID794._ID43494 );

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 enableweapons();

        wait 0.5;
        _ID52998();
        var_0 _ID51161();

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 enableoffhandweapons();

        if ( !isdefined( level._ID50570 ) || !level._ID50570 )
            var_0 _ID42237::_ID10192( 0.2, ::allowmelee, 1 );

        var_0 freezecontrols( 0 );
    }

    var_0 _ID42407::_ID10226( 0.1, ::_ID45284, 1 );
    var_0 notify( "exiting_uav_control" );
    var_0._ID20494 = undefined;
    level._ID52466 = undefined;
}

_ID45006( var_0, var_1 )
{
    setomnvar( "ui_predatordrone", 0 );
    _ID42475::_ID34575( "player_predator_end" );
    _ID42463::_ID10405( "abort_UAV_control" );
    _ID43170();

    if ( isdefined( level._ID48099 ) )
        var_0 [[ level._ID48099 ]]( 0 );
    else
    {
        _ID52336();
        _ID46480();
    }

    var_0 _meth_82df( level._ID53434, 0.25 );

    if ( isdefined( level._ID51882 ) && level._ID51882 )
        var_0 visionsetmissilecamforplayer( level._ID53434, 0.25 );

    if ( isdefined( level._ID45535 ) )
        var_0 thread _ID43559( 0.5 );

    if ( isdefined( var_0._ID52526 ) )
    {
        if ( !isdefined( level._ID45535 ) )
            var_0._ID52526 fadeovertime( 0.35 );

        var_0._ID52526._ID55 = 0;
    }

    wait 0.15;
    wait 0.35;

    if ( isdefined( var_0._ID19183 ) )
    {
        if ( isdefined( var_0._ID19183["screen_distort"] ) )
            var_0._ID19183["screen_distort"] destroy();
    }

    if ( isdefined( var_0._ID52526 ) )
        var_0._ID52526 destroy();

    _ID52223();

    if ( isdefined( level._ID48099 ) )
        var_0 [[ level._ID48099 ]]( 1 );
    else
    {
        _ID47058();
        _ID51361();
    }

    var_0 unlink();

    if ( isdefined( level._ID51882 ) && level._ID51882 )
    {
        var_0 visionsetmissilecamforplayer( level._ID40576, 0 );
        _ID42323::_ID37633();
        var_0 laseraltviewoff();
    }

    if ( isdefined( var_0._ID48535 ) )
        setsaveddvar( "cg_fov", 65 );

    var_2 = var_0 _ID45914();

    if ( isdefined( var_2 ) )
    {
        if ( _ID42407::_ID20614() )
            var_2 laserforceon( self );
        else
            var_2 show();
    }

    if ( isdefined( level._ID794._ID43494 ) )
        level._ID794 _ID42407::_ID48929( level._ID794._ID43494 );

    _ID42237::setshadowmapon();

    if ( var_1 )
    {
        var_0 _ID46896();
        var_0 freezecontrols( 1 );
        wait 0.15;
        var_0 _ID49347::_ID47192( 0.4 );

        if ( !( isdefined( level._ID51882 ) && level._ID51882 ) )
        {
            if ( isdefined( _ID42407::_ID16066( level._ID22719 ) ) )
                var_0 _ID42407::_ID14689( level._ID22719, 0.4 );
        }

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 enableweapons();

        var_0 _meth_8490();
        _ID53019();
        wait 0.1;
        _ID52998();

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 enableoffhandweapons();

        var_0 freezecontrols( 0 );
    }
    else
    {
        var_0 freezecontrols( 1 );
        wait 0.05;
        var_0 _ID49347::_ID47192( 0.75 );

        if ( !( isdefined( level._ID51882 ) && level._ID51882 ) )
        {
            if ( isdefined( _ID42407::_ID16066( level._ID22719 ) ) )
                var_0 _ID42407::_ID14689( level._ID22719, 0.75 );
        }

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 enableweapons();

        var_0 _meth_8490();
        _ID53019();
        wait 0.5;
        _ID52998();
        var_0 _ID51161();

        if ( !_ID42407::_ID20581( var_0 ) )
            var_0 enableoffhandweapons();

        var_0 freezecontrols( 0 );
    }

    var_0 _ID42407::_ID10226( 0.1, ::_ID45284, 1 );
    var_0 notify( "exiting_uav_control" );
    var_0._ID20494 = undefined;
    level._ID52466 = undefined;
    return;
}

_ID45827( var_0 )
{
    var_1 = getsticksconfig();
    var_0 notifyonplayercommand( "abort_remote_missile", var_1 );
    var_0 notifyonplayercommand( "abort_remote_missile", "weapnext" );
    var_0 notifyonplayercommand( "abort_remote_missile", "+stance" );
    var_0 notifyonplayercommand( "abort_remote_missile", "+actionslot " + _ID48383() );

    if ( !level._ID8534 )
    {
        var_0 notifyonplayercommand( "abort_remote_missile", "+gostand" );
        var_0 notifyonplayercommand( "abort_remote_missile", "togglecrouch" );
        var_0 notifyonplayercommand( "abort_remote_missile", "toggleprone" );
    }

    var_0 notifyonplayercommand( "launch_remote_missile", "+attack" );
    var_0 notifyonplayercommand( "launch_remote_missile", "+attack_akimbo_accessible" );
    var_0 thread _ID48198();
    var_0 thread _ID53418( "abort_remote_missile", "abort" );

    if ( _ID42237::_ID14385( "predator_missile_launch_allowed" ) )
        var_0 thread _ID53418( "launch_remote_missile", "launch" );

    var_0 waittill( "remote_missile_attack",  var_2  );
    var_0 _ID42407::_ID13021( "controlling_UAV" );

    if ( var_2 == "launch" )
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

        if ( isdefined( level._ID45535 ) )
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
            if ( isdefined( level._ID805[var_0]._ID39980 ) && level._ID805[var_0]._ID39980 )
                setdvar( "ui_remotemissile_playernum", var_0 + 1 );
        }
    }

    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "actionSlotsHide", "1" );
    setsaveddvar( "hud_showstance", "0" );
    level._ID50857 = 1;
    self notify( "kill_pulse" );
}

_ID52998()
{
    if ( level._ID805.size > 0 )
        setdvar( "ui_remotemissile_playernum", 0 );

    setsaveddvar( "ui_hidemap", 0 );
    setsaveddvar( "compass", "1" );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "actionSlotsHide", "0" );
    setsaveddvar( "hud_showstance", "1" );
    level._ID50857 = 0;
}

_ID43399( var_0, var_1, var_2 )
{
    var_3 = 200;
    var_4 = 200;
    var_5 = var_3 / 2;
    var_6 = var_4 / 2;
    var_7 = newclienthudelem( var_0 );
    var_7._ID499 = "center";
    var_7._ID1284 = "middle";
    var_7._ID1331 = var_7._ID1331 - var_5;
    var_7._ID1339 = var_7._ID1339 - var_6;
    var_7 setshader( var_1, var_3, var_4 );

    if ( isdefined( var_2 ) )
        level _ID42237::_ID41098( var_2, "draw_target_end" );
    else
        level waittill( "draw_target_end" );

    var_7 destroy();
}

_ID46317( var_0 )
{
    earthquake( 0.25, 0.5, _ID48289::_ID43601()._ID740, 5000 );
    var_1 = _ID48289::_ID43601()._ID740;
    var_2 = var_0 getplayerangles();
    var_3 = anglestoforward( var_2 );
    var_4 = anglestoright( var_2 );

    if ( !isdefined( level._ID53389 ) )
        level._ID53389 = -300.0;

    if ( !isdefined( level._ID43753 ) )
        level._ID43753 = 700.0;

    var_5 = var_1 + var_4 * level._ID43753 + var_3 * level._ID53389;
    var_6 = var_5 + var_3 * 10.0;

    if ( isdefined( level._ID43372 ) )
        var_7 = magicbullet( level._ID43372, var_5, var_6, var_0 );
    else if ( isdefined( level._ID48753 ) )
        var_7 = magicbullet( "remote_missile_snow", var_5, var_6, var_0 );
    else if ( isdefined( level._ID46684 ) )
        var_7 = magicbullet( "remote_missile_invasion", var_5, var_6, var_0 );
    else
        var_7 = magicbullet( "remote_missile", var_5, var_6, var_0 );

    var_0._ID45566 = var_7;
    thread _ID47508( var_7, var_0 );
    var_7 thread _ID36603();
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

    foreach ( var_4 in level._ID48408 )
    {
        if ( !isalive( var_4 ) )
            continue;

        var_5 = 0;

        foreach ( var_7 in level._ID48408 )
        {
            if ( var_7 == var_4 )
            {
                var_5 = 1;
                break;
            }
        }

        if ( !var_5 )
            continue;

        var_4 _ID49591();
        var_1++;

        if ( var_1 >= var_0 )
        {
            var_1 = 0;
            wait(var_2);
        }
    }
}

_ID49591()
{
    var_0 = level._ID794 getlocalplayerprofiledata( "renderColorBlind" );
    self._ID49554 = 1;

    if ( isdefined( self._ID18452 ) )
        target_set( self, ( 0, 0, -96 ) );
    else
        target_set( self, ( 0, 0, 0 ) );

    if ( isai( self ) )
    {
        if ( _func_145() )
            target_setshader( self, "remotemissile_infantry_target_2plr" );
        else if ( var_0 )
            target_setshader( self, "remotemissile_infantry_target_colorblind" );
        else
            target_setshader( self, "remotemissile_infantry_target" );
    }
    else if ( isplayernumber( self ) )
    {
        if ( isdefined( self._ID20494 ) && self._ID20494 )
        {
            target_set( self, ( 0, 0, 64 ) );

            if ( var_0 )
                target_setshader( self, "hud_fofbox_self_sp_colorblind" );
            else
                target_setshader( self, "hud_fofbox_self_sp" );
        }
        else
        {

        }
    }
    else if ( var_0 )
        target_setshader( self, "veh_hud_target_colorblind" );
    else
        target_setshader( self, "veh_hud_target" );

    var_1 = undefined;
    var_2 = undefined;

    foreach ( var_4 in level._ID805 )
    {
        if ( isdefined( var_4._ID20494 ) && var_4._ID20494 )
        {
            target_showtoplayer( self, var_4 );

            if ( self != var_4 )
            {
                if ( !isai( self ) )
                    target_drawsquare( self, 100 );
                else
                    target_setscaledrendermode( self, 1 );

                target_setminsize( self, 15, 0, 1 );
            }

            continue;
        }

        target_hidefromplayer( self, var_4 );
    }
}

_ID43170()
{
    level notify( "draw_target_end" );
    level._ID47489._ID45899 = undefined;
    waitframe;

    foreach ( var_1 in level._ID48408 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        if ( isdefined( var_1._ID49554 ) )
        {
            var_1._ID49554 = undefined;

            if ( var_1 != level._ID794 )
                target_setscaledrendermode( var_1, 0 );

            target_remove( var_1 );
        }
    }
}

_ID51161()
{
    return _ID44359( ::_ID45200 );
}

_ID46896()
{
    return _ID44359( ::_ID54005 );
}

_ID45200( var_0 )
{
    self switchtoweapon( var_0 );
}

_ID54005( var_0 )
{
    self switchtoweaponimmediate( var_0 );
}

_ID44359( var_0 )
{
    if ( _ID42407::_ID13023( "laststand_downed" ) && _ID42407::_ID13019( "laststand_downed" ) )
        return;

    var_1 = self getweaponslist( "primary", "altmode" );

    foreach ( var_3 in var_1 )
    {
        if ( self._ID51820 == var_3 )
        {
            self [[ var_0 ]]( self._ID51820 );
            return;
        }
    }

    if ( var_1.size > 0 )
        self [[ var_0 ]]( var_1[0] );
}

_ID43559( var_0 )
{
    var_1 = spawn( "script_origin", ( 0, 0, 1 ) );
    var_1._ID740 = self._ID740;
    var_1 playsound( "predator_drone_static", "sounddone" );
    var_2 = newclienthudelem( self );
    var_2._ID499 = "fullscreen";
    var_2._ID1284 = "fullscreen";
    var_2 setshader( "ac130_overlay_grain", 640, 480 );
    wait(var_0);
    var_2 destroy();
    wait 3;
    var_1 playrumbleonentity();
    wait 1;
    var_1 delete();
}

_ID43946()
{
    self endon( "controlling_UAV" );
    var_0 = self attackbuttonpressed();

    for (;;)
    {
        var_1 = self attackbuttonpressed();

        if ( !var_0 && var_1 )
        {
            self._ID50833++;
            self._ID50833 = self._ID50833 % self._ID54358.size;
            var_2 = _ID48289::_ID43601();
            self unlink();
            var_3 = level._ID47489._ID45626;
            self playerlinkweaponviewtodelta( var_2, "tag_player", 1, var_3, var_3, var_3, var_3, 1 );
            var_4 = var_2 gettagangles( "tag_origin" );
            self setplayerangles( var_4 );
        }

        var_0 = var_1;
        wait 0.05;
    }
}

_ID47394()
{
    if ( self._ID54358.size <= 1 )
        return;

    if ( isdefined( self._ID51482 ) )
        return;

    self._ID51482 = 1;

    for (;;)
    {
        _ID42407::_ID13027( "controlling_UAV" );
        _ID43946();
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
        setsaveddvar( var_3, 1 );
    }
}

_ID54128()
{
    self lerpviewangleclamp( 0, 0, 0, level._ID47489._ID45626, level._ID47489._ID45626, level._ID47489._ID45626 * 0.25, level._ID47489._ID45626 );
}

_ID44091( var_0 )
{
    if ( isdefined( level._ID46121 ) && !isdefined( level._ID52651 ) )
    {
        level._ID52651 = _ID42407::_ID35028( "remote_missile_player_body", var_0._ID740, var_0._ID65 );
        level._ID52651 thermaldrawenable();

        if ( isdefined( level._ID49267 ) )
            level._ID52651 attach( level._ID49267 );

        if ( isdefined( level._ID52813 ) )
            level._ID52651 attach( level._ID52813, "tag_weapon_right" );

        var_1 = _ID42237::_ID37527( var_0 getstance() == "stand", "stand", "crouch" );
        level._ID52651 thread _ID42259::_ID3044( level._ID52651, var_1 );
        level._ID52651 thread _ID42323::_ID22642( var_0._ID39468 );
    }
}

_ID53019()
{
    if ( isdefined( level._ID52651 ) )
    {
        level._ID52651 delete();
        level._ID52651 = undefined;
    }
}
#using_animtree("generic_human");

_ID52138()
{
    if ( isdefined( level._ID46121 ) )
    {
        level._ID30900["remote_missile_player_body"] = #animtree;
        level._ID30904["remote_missile_player_body"] = level._ID46121;
        level._ID30895["remote_missile_player_body"]["stand"][0] = %h2_npc_predator_stand_idle;
        level._ID30895["remote_missile_player_body"]["crouch"][0] = %h2_npc_predator_crouch_idle;

        if ( isdefined( level._ID49267 ) )
            precachemodel( level._ID49267 );

        level._ID52813 = "weapon_uav_control_unit";
        precachemodel( level._ID52813 );
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
