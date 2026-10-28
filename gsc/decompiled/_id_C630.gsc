// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init()
{
    level.no_friendly_fire_splash_damage = 1;

    if ( !isdefined( level._id_C60F ) )
        level._id_C60F = 12000;

    if ( !isdefined( level._id_BD18 ) )
        level._id_BD18 = [];

    level._id_C7B9 = 0 - level._id_C60F;
    level._id_B00B = 0;
    level._id_ABDD = 0;
    precacheitem( "remote_missile_detonator" );

    if ( isdefined( level._id_A96C ) )
        precacheitem( level._id_A96C );
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
    _id_CBAA();
    level._id_B981 = spawnstruct();
    level._id_B981._id_B23A = 4;
    common_scripts\utility::flag_init( "predator_missile_launch_allowed" );
    common_scripts\utility::flag_set( "predator_missile_launch_allowed" );
    maps\_utility::add_hint_string( "hint_predator_drone_destroyed", &"HELLFIRE_DESTROYED", ::_id_A87C, undefined, "small_background" );
    maps\_utility::add_hint_string( "hint_predator_drone_4", &"HELLFIRE_USE_DRONE", ::_id_BEDE, undefined, "medium_background" );
    maps\_utility::add_hint_string( "hint_predator_drone_2", &"HELLFIRE_USE_DRONE_2", ::_id_BEDE, undefined, "medium_background" );
    maps\_utility::add_hint_string( "hint_predator_drone_not_available", &"HELLFIRE_DRONE_NOT_AVAILABLE", ::_id_BDEB, undefined, "small_background" );

    if ( isdefined( level._id_CAAA ) && level._id_CAAA )
        visionsetmissilecam( "missilecam" );
    else if ( !isdefined( level._id_A91C ) )
        visionsetmissilecam( "missilecam" );
    else
        visionsetmissilecam( level._id_A91C );

    setsaveddvar( "missileRemoteSpeedUp", "1000" );
    setsaveddvar( "missileRemoteSpeedTargetRange", "6000 12000" );
    maps\_utility::add_global_spawn_function( "axis", ::_id_AAF5 );
    common_scripts\utility::flag_init( "uav_reloading" );
    common_scripts\utility::flag_init( "uav_collecting_stats" );
    common_scripts\utility::flag_init( "uav_enabled" );
    common_scripts\utility::flag_set( "uav_enabled" );
    level.player maps\_portal::portal_group_add_global_notify_wait( "player_is_controlling_UAV", "exiting_uav_control" );

    foreach ( var_1 in level.players )
        var_1 maps\_utility::ent_flag_init( "controlling_UAV" );

    level._id_C005 = 10;
}

_id_BEDE()
{
    var_0 = 0;

    if ( isdefined( level._id_B1DF ) )
        var_0 = 1;

    var_1 = _id_B35A();

    if ( !isalive( var_1 ) )
        var_0 = 1;

    if ( isdefined( self._id_CA3B ) )
        var_0 = 1;

    if ( common_scripts\utility::flag_exist( "wave_wiped_out" ) && common_scripts\utility::flag( "wave_wiped_out" ) )
        var_0 = 1;

    if ( maps\_utility::ent_flag_exist( "laststand_downed" ) && maps\_utility::ent_flag( "laststand_downed" ) )
        var_0 = 1;

    if ( self getcurrentweapon() == "remote_missile_detonator" )
        var_0 = 1;

    if ( common_scripts\utility::flag_exist( "no_default_uav_hint" ) && common_scripts\utility::flag( "no_default_uav_hint" ) )
        var_0 = 1;

    return var_0;
}

_id_CA7B()
{
    if ( !isdefined( level.scr_radio ) )
        level.scr_radio = [];

    level._id_AE8C = 1;
    level.scr_radio["uav_reloading"] = "cont_cmt_rearmhellfires";
    level.scr_radio["uav_offline"] = "cont_cmt_hellfiresoffline";
    level.scr_radio["uav_online"] = "cont_cmt_hellfireonline";
    level.scr_radio["uav_online_repeat"] = "cont_cmt_repeatonline";
    level.scr_radio["uav_down"] = "cont_cmt_uavdown";
    level.scr_radio["uav_multi_kill"] = "cont_cmt_mutlipleconfirmed";
    level.scr_radio["uav_multi_kill2"] = "cont_cmt_fivepluskias";
    level.scr_radio["uav_few_kills"] = "cont_cmt_theyredown";
    level.scr_radio["uav_3_kills"] = "cont_cmt_3kills";
    level.scr_radio["uav_1_kill"] = "cont_cmt_hesdown";
    level.scr_radio["uav_btr_kill"] = "cont_cmt_mutlipleconfirmed";
    level.scr_radio["uav_few_kills"] = "cont_cmt_theyredown";
    level.scr_radio["uav_3_kills"] = "cont_cmt_3kills";
    level.scr_radio["uav_1_kill"] = "cont_cmt_hesdown";
    level.scr_radio["uav_multi_vehicle_kill"] = "cont_cmt_goodhitvehicles";
    level.scr_radio["uav_multi_vehicle_kill2"] = "cont_cmt_goodeffectkia";
    level.scr_radio["uav_helo_kill"] = "cont_cmt_directhitshelo";
    level.scr_radio["uav_btr_kill"] = "cont_cmt_btrdestroyed";
    level.scr_radio["uav_truck_kill"] = "cont_cmt_goodkilltruck";
    level.scr_radio["uav_jeep_kill"] = "cont_cmt_directhitjeep";
    level.scr_radio["uav_direct_hit"] = "cont_cmt_directhit";
}

_id_CDFA( var_0 )
{
    return isdefined( level.scr_radio[var_0] ) || isdefined( level.scr_radio[var_0 + "_variant"] );
}

_id_BDEB()
{
    if ( isdefined( level._id_C9C7 ) )
        return 0;
    else
        return 1;
}

_id_A87C()
{
    if ( isdefined( level._id_B1DF ) )
        return 0;
    else
        return 1;
}

_id_D47F( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( !common_scripts\utility::flag( "uav_enabled" ) )
    {
        common_scripts\utility::flag_set( "uav_enabled" );

        if ( !common_scripts\utility::flag( "uav_reloading" ) && var_0 )
            thread _id_CBA7( "uav_online" );
    }

    if ( isdefined( var_1 ) )
        _id_B802( var_1 );
}

_id_C563( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( common_scripts\utility::flag( "uav_enabled" ) )
    {
        common_scripts\utility::flag_clear( "uav_enabled" );

        if ( !common_scripts\utility::flag( "uav_reloading" ) && var_0 )
            thread _id_CBA7( "uav_offline" );
    }

    if ( isdefined( var_1 ) && var_1 )
        _id_C6C2();
    else
        _id_CB86();
}

_id_B802( var_0 )
{
    if ( isdefined( level._id_B1DF ) )
        return;

    if ( isstring( var_0 ) )
        var_1 = var_0;
    else if ( isdefined( self._id_C277 ) )
        var_1 = self._id_C277;
    else
        return;

    if ( !self hasweapon( var_1 ) )
        return;

    self setweaponhudiconoverride( "actionslot" + _id_BCFF(), "none" );
    self setactionslot( _id_BCFF(), "weapon", var_1 );
    setomnvar( "ui_updateactionslot", 1 );
}

_id_C6C2()
{
    self setweaponhudiconoverride( "actionslot" + _id_BCFF(), "" );
    self setactionslot( _id_BCFF(), "" );
    setomnvar( "ui_updateactionslot", 1 );
}

_id_CB86()
{
    self setweaponhudiconoverride( "actionslot" + _id_BCFF(), "dpad_killstreak_hellfire_missile_inactive" );
    self setactionslot( _id_BCFF(), "" );
    setomnvar( "ui_updateactionslot", 1 );
}

_id_B7FE( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( var_0 == "remote_missile_detonator" )
        return 1;

    if ( var_0 == "remote_missile_detonator_finite" )
        return 1;

    return 0;
}

_id_AEC2( var_0 )
{
    _id_B559();
    self setactionslot( _id_BCFF(), "weapon", var_0 );
    self giveweapon( var_0 );
    setomnvar( "ui_updateactionslot", 1 );
    thread _id_BCA1::_id_AB5A();
}

_id_B559()
{
    if ( !self hasweapon( "claymore" ) )
        self.remotemissile_actionslot = 4;
    else
        self.remotemissile_actionslot = 2;
}

_id_BCFF()
{
    return self.remotemissile_actionslot;
}

_id_AAB5()
{
    if ( !isdefined( self._id_D456 ) )
        return 0;

    return self._id_D456.size > 1;
}

_id_C7B0( var_0 )
{
    self.using_uav = 0;

    for (;;)
    {
        self waittill( "weapon_change", var_1 );

        if ( _id_B7FE( var_1 ) )
        {
            self.using_uav = 1;

            while ( !self isonground() )
                waitframe();

            if ( isdefined( level._id_B1DF ) )
            {
                thread _id_BBA9( 0, "uav_down" );
                self switchtoweapon( self._id_CA6C );
                self.using_uav = 0;
                continue;
            }

            if ( maps\_utility::ent_flag_exist( "laststand_downed" ) && maps\_utility::ent_flag( "laststand_downed" ) )
            {
                _id_C7D9();
                self.using_uav = 0;
                continue;
            }

            if ( maps\_utility::is_survival() && isdefined( level._id_B27A ) && level._id_B27A != self )
            {
                thread maps\_utility::radio_dialogue( "so_hq_uav_busy" );
                _id_C7D9();
                self.using_uav = 0;
                continue;
            }

            self._id_C277 = var_1;
            thread _id_D2A7();

            if ( isdefined( level._id_C84C ) )
                [[ level._id_C84C ]]();

            soundscripts\_audio::deprecated_aud_send_msg( "player_UAV_use" );
            level._id_B27A = self;
            level._id_BF44 = [];
            _id_B84F( self, var_1 );
            level._id_B27A = undefined;
            self.using_uav = 0;

            if ( isdefined( level._id_CFC6 ) )
                [[ level._id_CFC6 ]]();

            if ( isdefined( var_0 ) )
                thread [[ var_0 ]]();
        }
    }
}

_id_BB97()
{
    self endon( "death" );
    self._id_CA6C = self getcurrentweapon();

    for (;;)
    {
        self waittill( "weapon_change", var_0 );

        if ( !_id_B7FE( var_0 ) )
            self._id_CA6C = var_0;
    }
}

_id_BA47( var_0 )
{
    self notifyonplayercommand( "switch_to_remotemissile", "+actionslot " + _id_BCFF() );
    thread _id_C7B0( var_0 );
    thread _id_BB97();

    for (;;)
    {
        self waittill( "switch_to_remotemissile" );

        if ( self.using_uav )
            continue;

        if ( !_id_B7FE( self getcurrentweapon() ) )
            self._id_CA6C = self getcurrentweapon();

        if ( isdefined( level._id_B1DF ) )
        {
            if ( !level._id_ABDD )
                thread _id_BBA9( 0, "uav_down" );

            continue;
        }

        if ( common_scripts\utility::flag( "uav_reloading" ) || !common_scripts\utility::flag( "uav_enabled" ) )
            thread _id_BBA9( 1 );
    }
}

_id_BBA9( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "uav_offline";

    var_2 = gettime();

    if ( var_0 && level._id_C7B9 + level._id_C60F - var_2 < 2000 || level._id_C60F < 5000 )
    {
        if ( !isdefined( level._id_B1DF ) && ( isdefined( self._id_C277 ) && self getweaponammoclip( self._id_C277 ) > 0 ) )
            return;
    }

    if ( common_scripts\utility::flag( "uav_reloading" ) )
    {
        if ( isdefined( level.scr_radio["uav_reloading"] ) )
            var_1 = "uav_reloading";
    }

    if ( !common_scripts\utility::flag( "uav_collecting_stats" ) && !level._id_B00B )
    {
        level._id_B00B = 1;
        _id_CBA7( var_1 );
        level._id_B00B = 0;
        level._id_ABDD = 1;
    }
}

_id_AF62()
{
    level notify( "stop_remotemissile_radio_reminder" );
    level endon( "special_op_terminated" );
    level endon( "starting_predator_drone_control" );
    level endon( "stop_remotemissile_radio_reminder" );

    for (;;)
    {
        wait( 7 + randomint( 4 ) );

        if ( common_scripts\utility::flag_exist( "special_op_terminated" ) && common_scripts\utility::flag( "special_op_terminated" ) )
            return;

        if ( isdefined( level._id_B1DF ) )
            return;

        if ( common_scripts\utility::flag( "uav_reloading" ) )
            return;

        if ( !common_scripts\utility::flag( "uav_enabled" ) )
            return;

        _id_CBA7( "uav_online_repeat" );
        wait( 15 + randomint( 10 ) );

        if ( common_scripts\utility::flag_exist( "special_op_terminated" ) && common_scripts\utility::flag( "special_op_terminated" ) )
            return;

        if ( isdefined( level._id_B1DF ) )
            return;

        if ( isdefined( level._id_C1C1 ) )
            return;

        _id_CBA7( "uav_online" );
        thread maps\_utility::display_hint_timeout( "hint_predator_drone_" + _id_BCFF(), 6 );
    }
}

_id_AA28()
{
    if ( isdefined( level._id_C5C3 ) )
        return;

    if ( !isdefined( level._id_AE8C ) )
        return;

    var_0 = undefined;
    var_1 = 0;

    if ( isdefined( level._id_BF44["ai"] ) )
        var_1 = level._id_BF44["ai"];

    if ( var_1 > 5 )
    {
        var_0 = "uav_multi_kill";

        if ( _id_CDFA( "uav_multi_kill2" ) && common_scripts\utility::cointoss() )
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

    foreach ( var_10, var_9 in level._id_BF44 )
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

        if ( _id_CDFA( "uav_multi_vehicle_kill2" ) && common_scripts\utility::cointoss() )
            var_11 = "uav_multi_vehicle_kill2";
    }
    else if ( var_6 > 0 )
    {
        var_11 = "uav_jeep_kill";

        if ( var_1 > 2 && var_1 <= 5 && _id_CDFA( "uav_direct_hit" ) && common_scripts\utility::cointoss() )
            var_11 = "uav_direct_hit";
    }
    else if ( var_7 > 0 )
    {
        var_11 = "uav_truck_kill";

        if ( var_1 > 2 && var_1 <= 5 && _id_CDFA( "uav_direct_hit" ) && common_scripts\utility::cointoss() )
            var_11 = "uav_direct_hit";
    }

    if ( !isdefined( var_11 ) )
        return;

    if ( common_scripts\utility::flag_exist( "special_op_terminated" ) && common_scripts\utility::flag( "special_op_terminated" ) )
        return;

    _id_CBA7( var_11 );
    level notify( "remote_missile_kill_dialogue" );
}

_id_D51B( var_0 )
{
    if ( isdefined( level.scr_radio[var_0 + "_variant"] ) && isarray( level.scr_radio[var_0 + "_variant"] ) )
        level.scr_radio[var_0] = level.scr_radio[var_0 + "_variant"][randomint( level.scr_radio[var_0 + "_variant"].size )];
}

_id_CBA7( var_0 )
{
    if ( !isdefined( level._id_AE8C ) )
        return;

    if ( isdefined( level._id_CC22 ) && level._id_CC22 )
        return;

    if ( !_id_CDFA( var_0 ) )
        return;

    if ( common_scripts\utility::flag_exist( "special_op_terminated" ) && common_scripts\utility::flag( "special_op_terminated" ) )
        return;

    _id_D51B( var_0 );
    maps\_utility::radio_dialogue( var_0 );
}

_id_D2A7()
{
    self endon( "exiting_uav_control" );
    self._id_B8BF = 0;

    if ( maps\_utility::is_survival() )
        common_scripts\utility::waittill_any( "player_has_red_flashing_overlay", "player_downed", "dtest", "force_out_of_uav" );
    else
        common_scripts\utility::waittill_any( "damage", "dtest", "force_out_of_uav" );

    self._id_B8BF = 1;
    soundscripts\_audio::deprecated_aud_send_msg( "abort_UAV_control" );
}

_id_B5B1()
{
    level._id_C07E = maps\_hud_util::createclientfontstring( "objective", 1.25 );
    level._id_C07E.color = ( 0.8, 0.8, 0.8 );
    var_0 = -165;

    if ( maps\_utility::is_survival() )
    {
        var_0 = -150;

        if ( _func_145() )
            var_0 = -110;
    }

    level._id_C07E maps\_hud_util::setpoint( "CENTER", undefined, 0, var_0 );
}

_id_B80D( var_0 )
{
    level._id_C07E settext( "" );
    level._id_C07E.label = var_0;
    level._id_C07E.foreground = 0;
}

_id_B8AD( var_0 )
{
    level._id_C07E setvalue( var_0 );
}

_id_CC70()
{
    if ( !isdefined( level._id_B1DF ) )
        level._id_C07E fadeovertime( 0.25 );

    level._id_C07E.alpha = 0;
}

_id_B7D2()
{
    if ( !isdefined( level._id_C07E ) )
        return;

    level._id_C07E destroy();
    level._id_C07E = undefined;
}

_id_D34A( var_0 )
{
    _id_C8A1();
    _id_B092( &"HELLFIRE_RELOADING_WITH_TIME", var_0 );
    wait 1;
    _id_C8A1();
}

_id_B092( var_0, var_1 )
{
    level._id_BD9D = maps\_hud_util::createclientfontstring( "objective", 1.0 );
    level._id_BD9D maps\_hud_util::setpoint( "CENTER", undefined, 0, -150 );
    level._id_BD9D.label = var_0;
    level._id_BD9D setvalue( var_1 );
    level._id_BD9D.color = ( 0.6, 0.6, 0.6 );
    level._id_BD9D.alpha = 0.75;
}

_id_CFA7( var_0 )
{
    level._id_BD9D = maps\_hud_util::createclientfontstring( "objective", 1.0 );
    level._id_BD9D maps\_hud_util::setpoint( "CENTER", undefined, 0, -150 );
    level._id_BD9D settext( var_0 );
    level._id_BD9D.color = ( 0.6, 0.6, 0.6 );
    level._id_BD9D.alpha = 0.75;
    level._id_BD9D.foreground = 0;
}

_id_B590()
{
    if ( !isdefined( level._id_BD9D ) )
        return;

    if ( !isdefined( level._id_B1DF ) )
        level._id_BD9D fadeovertime( 0.25 );

    level._id_BD9D.alpha = 0;
}

_id_C8A1()
{
    if ( !isdefined( level._id_BD9D ) )
        return;

    level._id_BD9D destroy();
    level._id_BD9D = undefined;
}

_id_C487( var_0 )
{
    var_1 = gettime() + var_0 * 1000;

    while ( gettime() < var_1 )
    {
        if ( self._id_B8BF )
            return 0;

        if ( isdefined( level._id_B1DF ) )
            return 0;

        if ( self usebuttonpressed() )
            return 0;

        if ( !common_scripts\utility::flag( "uav_enabled" ) )
            return 0;

        wait 0.05;
    }

    return 1;
}

_id_B994( var_0, var_1 )
{
    var_2 = gettime();
    level._id_A9DE = var_2;

    if ( isdefined( var_0 ) )
    {
        level._id_B457 = var_0;
        var_0 waittill( "death" );
    }

    var_1 maps\_utility::delaythread( 0.1, ::_id_B0E4, 1 );
    var_1._id_B1FE = undefined;

    if ( isdefined( level._id_A9DE ) && level._id_A9DE == var_2 )
    {
        level notify( "remote_missile_exploded" );
        var_1 notify( "remote_missile_exploded" );
        level._id_B457 = undefined;
    }

    level maps\_utility::delaythread( 0.2, maps\_utility::send_notify, "delayed_remote_missile_exploded" );
}

_id_C6F2( var_0 )
{
    var_0 maps\_utility::ent_flag_clear( "controlling_UAV" );
    var_0 notify( "exiting_uav_control" );
    soundscripts\_audio::deprecated_aud_send_msg( "abort_UAV_control" );
    var_0 _id_C0C3::_id_B858( 0.5 );

    if ( isdefined( level.player._id_A9E6 ) )
        level.player maps\_utility::_id_BF21( level.player._id_A9E6 );

    if ( isdefined( level._id_CAAA ) && level._id_CAAA )
        var_0 visionsetmissilecamforplayer( level.visionthermaldefault, 0.5 );
    else if ( isdefined( maps\_utility::get_vision_set_fog( level.lvl_visionset ) ) )
        var_0 maps\_utility::fog_set_changes( level.lvl_visionset, 0.5 );

    var_0 _id_C7D9();
    var_0 freezecontrols( 0 );

    if ( !maps\_utility::is_player_down( var_0 ) )
        var_0 enableoffhandweapons();

    var_0 maps\_utility::delaythread( 0.1, ::_id_B0E4, 1 );
    level._id_CCF2 = undefined;
    wait 0.1;
    _id_CF06();
}

_id_B0E4( var_0 )
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

_id_B803( var_0 )
{
    setomnvar( "ui_predatordrone", level._id_C005 );
    soundscripts\_snd::snd_message( "player_predator_use" );
    var_0.huditem["screen_distort"] = newhudelem();
    var_0.huditem["screen_distort"].x = 0;
    var_0.huditem["screen_distort"].y = 0;
    var_0.huditem["screen_distort"].alignx = "left";
    var_0.huditem["screen_distort"].aligny = "top";
    var_0.huditem["screen_distort"].horzalign = "fullscreen";
    var_0.huditem["screen_distort"].vertalign = "fullscreen";
    var_0.huditem["screen_distort"] setshader( "h1_ac130_distort", 640, 480 );
    var_0.huditem["screen_distort"].alpha = 1.0;
    var_0.huditem["screen_distort"].sort = 5;

    if ( !isdefined( var_0._id_CD2E ) )
    {
        var_0._id_CD2E = var_0 maps\_hud_util::createclientfontstring( "objective", 1 );
        var_0._id_CD2E.x = 31;
        var_0._id_CD2E.y = -15;
        var_0._id_CD2E.alignx = "left";
        var_0._id_CD2E.aligny = "bottom";
        var_0._id_CD2E.horzalign = "left_adjustable";
        var_0._id_CD2E.vertalign = "bottom_adjustable";
        var_0._id_CD2E.color = ( 0.85, 0.85, 0.85 );
        var_0._id_CD2E.alpha = 0.75;
        var_0._id_CD2E.hidewheninmenu = 1;
    }

    var_1 = &"HELLFIRE_CANCEL_PROMPT";

    if ( _id_BCFF() == 4 )
        var_2 = &"HELLFIRE_CANCEL_PROMPT_PC";
    else
        var_2 = &"HELLFIRE_CANCEL_PROMPT_WITH_CLAYMORE_PC";

    if ( var_0 common_scripts\utility::is_player_gamepad_enabled() )
    {
        var_0._id_CD2E settext( var_1 );
        var_0._id_CD2E thread common_scripts\utility::_id_BAF1( var_0, var_1, var_2, "stopHint" );
    }
    else
    {
        var_0._id_CD2E settext( var_2 );
        var_0._id_CD2E thread common_scripts\utility::_id_BAF1( var_0, var_2, var_1, "stopHint" );
    }

    setblur( 0.8, 0 );
    thread _id_B77B();
}

_id_CBFF()
{
    setblur( 0, 0 );
    level.player stopshellshock();
    level notify( "post_effects_disabled" );
}

_id_B77B()
{
    level endon( "post_effects_disabled" );
    var_0 = 5;

    for (;;)
    {
        level.player shellshock( "remoteMissile", var_0 );
        wait( var_0 );
    }
}

_id_B6E9( var_0 )
{
    level common_scripts\utility::waittill_any( "remote_missile_exploded", "uav_destroyed", "remote_missile_exit" );
    var_0.huditem["screen_distort"] destroy();

    if ( isdefined( var_0._id_CD2E ) )
        var_0._id_CD2E destroy();

    setomnvar( "ui_predatormissile", 0 );
    _id_CBFF();
}

_id_A9C8( var_0 )
{
    level endon( "remote_missile_exploded" );
    level endon( "uav_destroyed" );
    level waittill( "missile_boost_done" );
    var_0._id_CD2E notify( "stopHint" );
    var_0._id_CD2E destroy();
}

_id_B1A1( var_0 )
{
    var_0._id_CD2E notify( "stopHint" );
    var_1 = &"HELLFIRE_BOOST_PROMPT";
    var_0._id_CD2E settext( var_1 );
    thread _id_A9C8( var_0 );
    setomnvar( "ui_predatordrone", 0 );
    setomnvar( "ui_predatormissile", 1 );
    thread _id_AA27( 0.3 );
    thread _id_B6E9( var_0 );
}

_id_B84F( var_0, var_1 )
{
    if ( var_1 == "remote_missile_detonator" )
        var_0 givemaxammo( var_1 );

    level notify( "starting_predator_drone_control" );
    var_0 notify( "starting_predator_drone_control" );
    var_2 = 0;
    var_3 = 0;
    level._id_D0BA = "black_bw";

    if ( !isdefined( level._id_A91C ) )
        level._id_A91C = "ac130";

    level._id_AA49 = "missilecam";
    var_0 disableoffhandweapons();
    var_0 freezecontrols( 1 );
    var_0 _id_B0E4( 0 );
    var_0 maps\_utility::ent_flag_set( "controlling_UAV" );
    _id_BBFB();
    var_4 = var_0 _id_C487( 1.0 );

    if ( !var_4 )
        _id_C6F2( var_0 );
    else
    {
        var_5 = 0.25;
        var_0 _meth_82DF( level._id_D0BA, var_5 );

        if ( isdefined( level._id_CAAA ) && level._id_CAAA )
            var_0 visionsetmissilecamforplayer( level._id_D0BA, var_5 );

        var_4 = _id_C487( var_5 );

        if ( !var_4 )
        {
            _id_C6F2( var_0 );
            return;
        }

        var_0.is_controlling_uav = 1;
        level notify( "player_is_controlling_UAV" );
        var_0 notify( "player_is_controlling_UAV" );
        var_6 = var_0 _id_B35A();

        if ( isdefined( var_6 ) )
        {
            if ( maps\_utility::is_specialop() )
                var_6 laserforceoff( self );
            else
                var_6 hide();
        }

        _id_AC3B( var_0 );
        var_7 = _id_BCA1::_id_AA51();

        if ( !_id_BCA1::_id_ACF2() )
        {
            var_0 playerlinkweaponviewtodelta( var_7, "tag_player", 1.0, level._id_B981._id_B23A, level._id_B981._id_B23A, level._id_B981._id_B23A, level._id_B981._id_B23A );
            var_8 = var_7 gettagangles( "tag_origin" );
            var_0 setplayerangles( var_8 );
        }
        else
        {
            var_0.old_origin = var_0.origin;
            var_0.old_angles = var_0 getplayerangles();
            var_0 playerlinktodelta( _id_BCA1::_id_AA51(), "tag_player", 1.0, level._id_B981._id_B23A, level._id_B981._id_B23A, level._id_B981._id_B23A, level._id_B981._id_B23A );
            var_0 playerlinktodelta( _id_BCA1::_id_AA51(), "tag_player", 1.0, 0, 0, 0, 0 );
            var_0 maps\_utility::delaythread( 0.1, ::_id_D370 );
        }

        var_0 freezecontrols( 0 );
        var_0 _meth_8491();
        wait 0.05;

        if ( isdefined( level._id_C74B ) )
            var_0 [[ level._id_C74B ]]();
        else
        {
            var_0 _id_B5B1();
            _id_B80D( &"HELLFIRE_DRONE_VIEW" );
            _id_B8AD( level._id_C005 );
        }

        _id_B803( var_0 );

        if ( isdefined( level._id_CAAA ) && level._id_CAAA )
        {
            maps\_load::thermal_effectson();
            var_0 laseraltviewon();
            var_0 visionsetmissilecamforplayer( level._id_A91C, 0 );
            var_0 _meth_82DF( level.lvl_visionset, 0.25 );
        }
        else
        {
            if ( isdefined( maps\_utility::get_vision_set_fog( level._id_A91C ) ) )
                var_0 maps\_utility::fog_set_changes( level._id_A91C, 0.25 );

            var_0 _meth_82DF( level._id_A91C, 0.25 );
        }

        if ( isdefined( level._id_A9C5 ) )
        {
            level.player._id_A9E6 = level.player._id_B636;
            level.player maps\_utility::_id_BF21( level._id_A9C5 );
        }

        thread _id_C4C0();
        wait 0.2;
        common_scripts\utility::setshadowmapoff();
        var_9 = _id_B303( var_0 );

        if ( !var_9 )
        {
            _id_AFCE( var_0, var_0._id_B8BF );
            return;
        }

        level._id_C7B9 = gettime();
        thread _id_C27D();
        level.player thread common_scripts\utility::play_loop_sound_on_entity( "predator_drone_missile" );
        level notify( "player_fired_remote_missile" );
        var_0 notify( "player_fired_remote_missile" );
        soundscripts\_snd::snd_message( "player_predator_end" );
        var_10 = _id_B4ED( var_0 );
        var_10 thread _id_B49C( var_0 );
        var_10 thread _id_C504( var_0 );

        if ( var_2 )
        {
            var_0 _id_CFA7( &"HELLFIRE_FIRE" );
            var_4 = _id_C487( 1.2 );

            if ( !var_4 )
            {
                _id_AFCE( var_0, 1 );
                return;
            }

            _id_B590();
            _id_A8A2();
            wait 0.25;
        }

        var_0._id_CA3B = 1;

        if ( isdefined( level._id_B6F6 ) )
            var_0 [[ level._id_B6F6 ]]( 0 );
        else
        {
            _id_B1A1( var_0 );
            _id_B80D( &"HELLFIRE_MISSILE_VIEW" );
            _id_C8A1();
        }

        var_0 remotecamerasoundscapeon();
        var_0 unlink();
        var_0 _meth_82DF( level._id_D0BA, 0 );
        var_0 allowmelee( 0 );

        if ( isdefined( level._id_C5D1 ) )
            var_0 cameralinkto( var_10, level._id_C5D1 );
        else
            var_0 cameralinkto( var_10, "tag_origin" );

        var_0 controlsunlink( var_10 );
        var_10 thread _id_A987( var_0, "h2_overlays_predator_reticle" );
        var_4 = _id_C487( 0.2 );

        if ( !var_4 )
        {
            _id_AA73( var_0, 1 );
            return;
        }

        if ( isdefined( level._id_B776 ) )
            var_0 [[ level._id_B776 ]]( var_10 );

        thread _id_C4C0();

        while ( isdefined( level._id_B457 ) )
        {
            if ( isdefined( level._id_B1DF ) )
            {
                _id_AA73( var_0, 1 );
                return;
            }

            if ( var_0._id_B8BF )
            {
                _id_AA73( var_0, 1 );
                return;
            }

            if ( !common_scripts\utility::flag( "uav_enabled" ) )
            {
                _id_AA73( var_0, 1 );
                return;
            }

            if ( isdefined( self.remotemissile_lowerbound_limit ) && isdefined( self.remotemissile_upperbound_limit ) )
            {
                if ( level._id_B457.origin[0] < self.remotemissile_lowerbound_limit[0] || level._id_B457.origin[1] < self.remotemissile_lowerbound_limit[1] || level._id_B457.origin[2] < self.remotemissile_lowerbound_limit[2] || level._id_B457.origin[0] > self.remotemissile_upperbound_limit[0] || level._id_B457.origin[1] > self.remotemissile_upperbound_limit[1] || level._id_B457.origin[2] > self.remotemissile_upperbound_limit[2] )
                {
                    _id_AA73( var_0, 0 );
                    return;
                }
            }

            wait 0.05;
        }

        if ( !isdefined( var_6 ) )
        {
            _id_AA73( var_0, 0 );
            return;
        }

        if ( var_3 )
        {
            setsaveddvar( "cg_fov", 26 );
            var_0._id_BD97 = 1;
            var_0._id_CA3B = undefined;
            var_0 makevehiclesolidcapsule();
            var_0 cameraunlink();
            var_0 remotecamerasoundscapeoff();
            var_0 playerlinkweaponviewtodelta( _id_BCA1::_id_AA51(), "tag_player", 1.0, level._id_B981._id_B23A, level._id_B981._id_B23A, level._id_B981._id_B23A, level._id_B981._id_B23A );
            var_0 setplayerangles( _id_BCA1::_id_AA51() gettagangles( "tag_origin" ) );
            var_4 = _id_C487( 2 );

            if ( !var_4 )
            {
                _id_AFCE( var_0, var_0._id_B8BF );
                return;
            }

            _id_AFCE( var_0, 0 );
            return;
        }

        _id_AA73( var_0, 0 );
    }
}

_id_C27D()
{
    level endon( "stop_uav_reload" );
    common_scripts\utility::flag_set( "uav_reloading" );
    wait( level._id_C60F * 0.001 );
    common_scripts\utility::flag_clear( "uav_reloading" );
}

_id_C504( var_0 )
{
    var_0 waittill( "predicted_projectile_impact", var_1, var_2 );
    var_0 _meth_82DF( "coup_sunblind", 0 );
}

_id_B49C( var_0 )
{
    var_0._id_C2F9 = 1;
    var_0 waittill( "projectile_impact", var_1, var_2, var_3 );
    level thread _id_B43D( var_0 );
    level._id_BFC2 = var_2;
    var_4 = 1000;
    var_5 = 6.0;
    earthquake( 0.3, 1.4, var_2, 8000 );
    soundscripts\_audio::deprecated_aud_send_msg( "remote_missle_impact", var_2 );
    wait 0.1;
    physicsexplosionsphere( var_2, var_4, var_4 / 2, var_5 );
    wait 2;
    level._id_BFC2 = undefined;
    var_0._id_C2F9 = undefined;
}

_id_B43D( var_0 )
{
    common_scripts\utility::flag_set( "uav_collecting_stats" );
    var_1 = maps\_utility::getvehiclearray();

    foreach ( var_3 in var_1 )
        var_3 thread _id_B1C7( var_0 );

    wait 1;
    common_scripts\utility::flag_clear( "uav_collecting_stats" );
}

_id_AAF5( var_0 )
{
    if ( !isdefined( level._id_AE8C ) )
        return;

    self waittill( "death", var_0, var_1 );

    if ( !isdefined( level._id_B27A ) )
        return;

    if ( !isdefined( level._id_BF44["ai"] ) )
        level._id_BF44["ai"] = 0;

    if ( isdefined( var_0 ) && isdefined( level._id_B27A ) )
    {
        if ( var_0 == level._id_B27A || isdefined( var_0.attacker ) && var_0.attacker == level._id_B27A )
        {
            level._id_BF44["ai"]++;

            if ( isplayer( level._id_B27A ) && level._id_BF44["ai"] == 10 )
                level._id_B27A maps\_utility::player_giveachievement_wrapper( "TEN_PLUS_FOOT_MOBILES" );
        }
    }
}

_id_B1C7( var_0 )
{
    if ( !isdefined( level._id_AE8C ) )
        return;

    level endon( "delayed_remote_missile_exploded" );
    var_1 = undefined;

    switch ( self.vehicletype )
    {
        case "btr80_physics":
        case "btr80":
            var_1 = "btr";
            break;
        case "ucav":
        case "mi17_bulletdamage":
        case "mi17_noai":
        case "mi17":
        case "hind":
            var_1 = "helo";
            break;
        case "uaz_physics":
        case "uaz":
            var_1 = "jeep";
            break;
        case "bm21_drivable":
        case "bm21":
        case "bm21_troops":
            var_1 = "truck";
            break;
        default:
            var_1 = "vehicle";
            break;
    }

    if ( !isdefined( level._id_BF44[var_1] ) )
        level._id_BF44[var_1] = 0;

    self waittill( "death", var_2, var_3 );

    if ( var_1 == "helo" || var_1 == "btr" || isdefined( self.riders ) && self.riders.size > 0 )
    {
        if ( isdefined( var_2 ) && var_2 == var_0 )
            level._id_BF44[var_1]++;
    }
}

_id_CE9C()
{
    var_0 = self._id_D456[self._id_C691];
    return var_0;
}

_id_B35A()
{
    if ( !isdefined( self._id_D456 ) )
        return level._id_C176;

    if ( !isdefined( self._id_C691 ) )
        self._id_C691 = 0;

    var_0 = _id_CE9C();
    return var_0._id_C176;
}

_id_AA73( var_0, var_1 )
{
    var_0._id_CA3B = undefined;

    if ( isdefined( level._id_B6F6 ) )
        var_0 [[ level._id_B6F6 ]]( 1 );
    else
        _id_B7D2();

    _id_A8A2();

    if ( isdefined( level._id_B1DF ) )
        thread _id_AA27( 0.5 );

    var_0 makevehiclesolidcapsule();
    var_0 cameraunlink();

    if ( isdefined( level._id_CAAA ) && level._id_CAAA )
    {
        maps\_load::thermal_effectsoff();
        var_0 laseraltviewoff();
        var_0 visionsetmissilecamforplayer( level.visionthermaldefault, 0 );
    }

    var_0 remotecamerasoundscapeoff();
    var_2 = var_0 _id_B35A();

    if ( isdefined( var_2 ) )
    {
        if ( maps\_utility::is_specialop() )
            var_2 laserforceon( self );
        else
            var_2 show();
    }

    level notify( "remote_missile_exit" );

    if ( var_1 )
    {
        var_0 _meth_82DF( level._id_D0BA, 0 );
        var_0 _meth_8490();
        common_scripts\utility::setshadowmapon();
        _id_CF1B();
        wait 0.05;
        var_0 _id_C0C3::_id_B858( 0.4 );

        if ( isdefined( level.player._id_A9E6 ) )
            level.player maps\_utility::_id_BF21( level.player._id_A9E6 );

        if ( !( isdefined( level._id_CAAA ) && level._id_CAAA ) )
        {
            if ( isdefined( maps\_utility::get_vision_set_fog( level.lvl_visionset ) ) )
                var_0 maps\_utility::fog_set_changes( level.lvl_visionset, 0.4 );
        }

        if ( !maps\_utility::is_player_down( var_0 ) )
            var_0 enableweapons();

        var_0 freezecontrols( 0 );
        var_0 _id_B730();
        wait 0.2;

        if ( !isdefined( level._id_C58A ) || !level._id_C58A )
            var_0 allowmelee( 1 );

        _id_CF06();

        if ( !maps\_utility::is_player_down( var_0 ) )
            var_0 enableoffhandweapons();
    }
    else
    {
        var_0 _meth_82DF( "coup_sunblind", 0 );
        var_0 freezecontrols( 1 );
        var_0 _meth_8490();
        common_scripts\utility::setshadowmapon();
        _id_CF1B();
        wait 0.05;
        var_0 _id_C0C3::_id_B858( 1.0 );

        if ( !( isdefined( level._id_CAAA ) && level._id_CAAA ) )
        {
            if ( isdefined( maps\_utility::get_vision_set_fog( level.lvl_visionset ) ) )
                var_0 maps\_utility::fog_set_changes( level.lvl_visionset, 1.0 );
        }

        if ( isdefined( level.player._id_A9E6 ) )
            level.player maps\_utility::_id_BF21( level.player._id_A9E6 );

        if ( !maps\_utility::is_player_down( var_0 ) )
            var_0 enableweapons();

        wait 0.5;
        _id_CF06();
        var_0 _id_C7D9();

        if ( !maps\_utility::is_player_down( var_0 ) )
            var_0 enableoffhandweapons();

        if ( !isdefined( level._id_C58A ) || !level._id_C58A )
            var_0 common_scripts\utility::delaycall( 0.2, ::allowmelee, 1 );

        var_0 freezecontrols( 0 );
    }

    var_0 maps\_utility::delaythread( 0.1, ::_id_B0E4, 1 );
    var_0 notify( "exiting_uav_control" );
    var_0.is_controlling_uav = undefined;
    level._id_CCF2 = undefined;
}

_id_AFCE( var_0, var_1 )
{
    setomnvar( "ui_predatordrone", 0 );
    soundscripts\_snd::snd_message( "player_predator_end" );
    soundscripts\_audio::deprecated_aud_send_msg( "abort_UAV_control" );
    _id_A8A2();

    if ( isdefined( level._id_BBE3 ) )
        var_0 [[ level._id_BBE3 ]]( 0 );
    else
    {
        _id_CC70();
        _id_B590();
    }

    var_0 _meth_82DF( level._id_D0BA, 0.25 );

    if ( isdefined( level._id_CAAA ) && level._id_CAAA )
        var_0 visionsetmissilecamforplayer( level._id_D0BA, 0.25 );

    if ( isdefined( level._id_B1DF ) )
        var_0 thread _id_AA27( 0.5 );

    if ( isdefined( var_0._id_CD2E ) )
    {
        if ( !isdefined( level._id_B1DF ) )
            var_0._id_CD2E fadeovertime( 0.35 );

        var_0._id_CD2E.alpha = 0;
    }

    wait 0.15;
    wait 0.35;

    if ( isdefined( var_0.huditem ) )
    {
        if ( isdefined( var_0.huditem["screen_distort"] ) )
            var_0.huditem["screen_distort"] destroy();
    }

    if ( isdefined( var_0._id_CD2E ) )
        var_0._id_CD2E destroy();

    _id_CBFF();

    if ( isdefined( level._id_BBE3 ) )
        var_0 [[ level._id_BBE3 ]]( 1 );
    else
    {
        _id_B7D2();
        _id_C8A1();
    }

    var_0 unlink();

    if ( isdefined( level._id_CAAA ) && level._id_CAAA )
    {
        var_0 visionsetmissilecamforplayer( level.visionthermaldefault, 0 );
        maps\_load::thermal_effectsoff();
        var_0 laseraltviewoff();
    }

    if ( isdefined( var_0._id_BD97 ) )
        setsaveddvar( "cg_fov", 65 );

    var_2 = var_0 _id_B35A();

    if ( isdefined( var_2 ) )
    {
        if ( maps\_utility::is_specialop() )
            var_2 laserforceon( self );
        else
            var_2 show();
    }

    if ( isdefined( level.player._id_A9E6 ) )
        level.player maps\_utility::_id_BF21( level.player._id_A9E6 );

    common_scripts\utility::setshadowmapon();

    if ( var_1 )
    {
        var_0 _id_B730();
        var_0 freezecontrols( 1 );
        wait 0.15;
        var_0 _id_C0C3::_id_B858( 0.4 );

        if ( !( isdefined( level._id_CAAA ) && level._id_CAAA ) )
        {
            if ( isdefined( maps\_utility::get_vision_set_fog( level.lvl_visionset ) ) )
                var_0 maps\_utility::fog_set_changes( level.lvl_visionset, 0.4 );
        }

        if ( !maps\_utility::is_player_down( var_0 ) )
            var_0 enableweapons();

        var_0 _meth_8490();
        _id_CF1B();
        wait 0.1;
        _id_CF06();

        if ( !maps\_utility::is_player_down( var_0 ) )
            var_0 enableoffhandweapons();

        var_0 freezecontrols( 0 );
    }
    else
    {
        var_0 freezecontrols( 1 );
        wait 0.05;
        var_0 _id_C0C3::_id_B858( 0.75 );

        if ( !( isdefined( level._id_CAAA ) && level._id_CAAA ) )
        {
            if ( isdefined( maps\_utility::get_vision_set_fog( level.lvl_visionset ) ) )
                var_0 maps\_utility::fog_set_changes( level.lvl_visionset, 0.75 );
        }

        if ( !maps\_utility::is_player_down( var_0 ) )
            var_0 enableweapons();

        var_0 _meth_8490();
        _id_CF1B();
        wait 0.5;
        _id_CF06();
        var_0 _id_C7D9();

        if ( !maps\_utility::is_player_down( var_0 ) )
            var_0 enableoffhandweapons();

        var_0 freezecontrols( 0 );
    }

    var_0 maps\_utility::delaythread( 0.1, ::_id_B0E4, 1 );
    var_0 notify( "exiting_uav_control" );
    var_0.is_controlling_uav = undefined;
    level._id_CCF2 = undefined;
    return;
}

_id_B303( var_0 )
{
    var_1 = getsticksconfig();
    var_0 notifyonplayercommand( "abort_remote_missile", var_1 );
    var_0 notifyonplayercommand( "abort_remote_missile", "weapnext" );
    var_0 notifyonplayercommand( "abort_remote_missile", "+stance" );
    var_0 notifyonplayercommand( "abort_remote_missile", "+actionslot " + _id_BCFF() );

    if ( !level.console )
    {
        var_0 notifyonplayercommand( "abort_remote_missile", "+gostand" );
        var_0 notifyonplayercommand( "abort_remote_missile", "togglecrouch" );
        var_0 notifyonplayercommand( "abort_remote_missile", "toggleprone" );
    }

    var_0 notifyonplayercommand( "launch_remote_missile", "+attack" );
    var_0 notifyonplayercommand( "launch_remote_missile", "+attack_akimbo_accessible" );
    var_0 thread _id_BC46();
    var_0 thread _id_D0AA( "abort_remote_missile", "abort" );

    if ( common_scripts\utility::flag( "predator_missile_launch_allowed" ) )
        var_0 thread _id_D0AA( "launch_remote_missile", "launch" );

    var_0 waittill( "remote_missile_attack", var_2 );
    var_0 maps\_utility::ent_flag_clear( "controlling_UAV" );

    if ( var_2 == "launch" )
        return 1;
    else
        return 0;
}

_id_D0AA( var_0, var_1 )
{
    self endon( "remote_missile_attack" );
    self waittill( var_0 );
    self notify( "remote_missile_attack", var_1 );
}

_id_BC46()
{
    self endon( "remote_missile_attack" );

    for (;;)
    {
        wait 0.05;

        if ( self._id_B8BF )
            break;

        if ( !common_scripts\utility::flag( "uav_enabled" ) )
            break;

        if ( isdefined( level._id_B1DF ) )
            break;
    }

    self notify( "remote_missile_attack", "abort" );
}

_id_BBFB()
{
    if ( level.players.size > 0 )
    {
        for ( var_0 = 0; var_0 < level.players.size; var_0++ )
        {
            if ( isdefined( level.players[var_0].using_uav ) && level.players[var_0].using_uav )
                setdvar( "ui_remotemissile_playernum", var_0 + 1 );
        }
    }

    setsaveddvar( "ui_hidemap", 1 );
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "actionSlotsHide", "1" );
    setsaveddvar( "hud_showstance", "0" );
    level._id_C6A9 = 1;
    self notify( "kill_pulse" );
}

_id_CF06()
{
    if ( level.players.size > 0 )
        setdvar( "ui_remotemissile_playernum", 0 );

    setsaveddvar( "ui_hidemap", 0 );
    setsaveddvar( "compass", "1" );
    setsaveddvar( "ammoCounterHide", "0" );
    setsaveddvar( "actionSlotsHide", "0" );
    setsaveddvar( "hud_showstance", "1" );
    level._id_C6A9 = 0;
}

_id_A987( var_0, var_1, var_2 )
{
    var_3 = 200;
    var_4 = 200;
    var_5 = var_3 / 2;
    var_6 = var_4 / 2;
    var_7 = newclienthudelem( var_0 );
    var_7.horzalign = "center";
    var_7.vertalign = "middle";
    var_7.x -= var_5;
    var_7.y -= var_6;
    var_7 setshader( var_1, var_3, var_4 );

    if ( isdefined( var_2 ) )
        level common_scripts\utility::waittill_either( var_2, "draw_target_end" );
    else
        level waittill( "draw_target_end" );

    var_7 destroy();
}

_id_B4ED( var_0 )
{
    earthquake( 0.25, 0.5, _id_BCA1::_id_AA51().origin, 5000 );
    var_1 = _id_BCA1::_id_AA51().origin;
    var_2 = var_0 getplayerangles();
    var_3 = anglestoforward( var_2 );
    var_4 = anglestoright( var_2 );

    if ( !isdefined( level._id_D08D ) )
        level._id_D08D = -300.0;

    if ( !isdefined( level._id_AAE9 ) )
        level._id_AAE9 = 700.0;

    var_5 = var_1 + var_4 * level._id_AAE9 + var_3 * level._id_D08D;
    var_6 = var_5 + var_3 * 10.0;

    if ( isdefined( level._id_A96C ) )
        var_7 = magicbullet( level._id_A96C, var_5, var_6, var_0 );
    else if ( isdefined( level._id_BE71 ) )
        var_7 = magicbullet( "remote_missile_snow", var_5, var_6, var_0 );
    else if ( isdefined( level._id_B65C ) )
        var_7 = magicbullet( "remote_missile_invasion", var_5, var_6, var_0 );
    else
        var_7 = magicbullet( "remote_missile", var_5, var_6, var_0 );

    var_0._id_B1FE = var_7;
    thread _id_B994( var_7, var_0 );
    var_7 thread stopmissileboostsounds();
    return var_7;
}

_id_C4C0()
{
    level._id_B981._id_B34B = 1;
    level endon( "uav_destroyed" );
    level endon( "draw_target_end" );
    level notify( "stop_prv_draw_targets" );
    level endon( "stop_prv_draw_targets" );
    wait 0.05;
    var_0 = 4;
    var_1 = 0;
    var_2 = 0.05;
    level._id_BD18[level.player.unique_id] = level.player;

    foreach ( var_4 in level._id_BD18 )
    {
        if ( !isalive( var_4 ) )
            continue;

        var_5 = 0;

        foreach ( var_7 in level._id_BD18 )
        {
            if ( var_7 == var_4 )
            {
                var_5 = 1;
                break;
            }
        }

        if ( !var_5 )
            continue;

        var_4 _id_C1B7();
        var_1++;

        if ( var_1 >= var_0 )
        {
            var_1 = 0;
            wait( var_2 );
        }
    }
}

_id_C1B7()
{
    var_0 = level.player getlocalplayerprofiledata( "renderColorBlind" );
    self._id_C192 = 1;

    if ( isdefined( self.helicopter_predator_target_shader ) )
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
    else if ( isplayer( self ) )
    {
        if ( isdefined( self.is_controlling_uav ) && self.is_controlling_uav )
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

    foreach ( var_4 in level.players )
    {
        if ( isdefined( var_4.is_controlling_uav ) && var_4.is_controlling_uav )
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

_id_A8A2()
{
    level notify( "draw_target_end" );
    level._id_B981._id_B34B = undefined;
    waittillframeend;

    foreach ( var_1 in level._id_BD18 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        if ( isdefined( var_1._id_C192 ) )
        {
            var_1._id_C192 = undefined;

            if ( var_1 != level.player )
                target_setscaledrendermode( var_1, 0 );

            target_remove( var_1 );
        }
    }
}

_id_C7D9()
{
    return _id_AD47( ::_id_B090 );
}

_id_B730()
{
    return _id_AD47( ::_id_D2F5 );
}

_id_B090( var_0 )
{
    self switchtoweapon( var_0 );
}

_id_D2F5( var_0 )
{
    self switchtoweaponimmediate( var_0 );
}

_id_AD47( var_0 )
{
    if ( maps\_utility::ent_flag_exist( "laststand_downed" ) && maps\_utility::ent_flag( "laststand_downed" ) )
        return;

    var_1 = self getweaponslist( "primary", "altmode" );

    foreach ( var_3 in var_1 )
    {
        if ( self._id_CA6C == var_3 )
        {
            self [[ var_0 ]]( self._id_CA6C );
            return;
        }
    }

    if ( var_1.size > 0 )
        self [[ var_0 ]]( var_1[0] );
}

_id_AA27( var_0 )
{
    var_1 = spawn( "script_origin", ( 0, 0, 1 ) );
    var_1.origin = self.origin;
    var_1 playsound( "predator_drone_static", "sounddone" );
    var_2 = newclienthudelem( self );
    var_2.horzalign = "fullscreen";
    var_2.vertalign = "fullscreen";
    var_2 setshader( "ac130_overlay_grain", 640, 480 );
    wait( var_0 );
    var_2 destroy();
    wait 3;
    var_1 playrumbleonentity();
    wait 1;
    var_1 delete();
}

_id_ABAA()
{
    self endon( "controlling_UAV" );
    var_0 = self attackbuttonpressed();

    for (;;)
    {
        var_1 = self attackbuttonpressed();

        if ( !var_0 && var_1 )
        {
            self._id_C691++;
            self._id_C691 %= self._id_D456.size;
            var_2 = _id_BCA1::_id_AA51();
            self unlink();
            var_3 = level._id_B981._id_B23A;
            self playerlinkweaponviewtodelta( var_2, "tag_player", 1, var_3, var_3, var_3, var_3, 1 );
            var_4 = var_2 gettagangles( "tag_origin" );
            self setplayerangles( var_4 );
        }

        var_0 = var_1;
        wait 0.05;
    }
}

_id_B922()
{
    if ( self._id_D456.size <= 1 )
        return;

    if ( isdefined( self._id_C91A ) )
        return;

    self._id_C91A = 1;

    for (;;)
    {
        maps\_utility::ent_flag_wait( "controlling_UAV" );
        _id_ABAA();
    }
}

_id_D0F3( var_0, var_1 )
{
    var_2 = [];
    var_2["player0"] = "cg_playerFovScale0";
    var_2["player1"] = "cg_playerFovScale1";
    var_3 = var_2[var_1.unique_id];

    for (;;)
    {
        var_1 maps\_utility::ent_flag_wait( "controlling_UAV" );
        thread [[ var_0 ]]( var_1 );
        var_1 maps\_utility::ent_flag_waitopen( "controlling_UAV" );
        setsaveddvar( var_3, 1 );
    }
}

_id_D370()
{
    self lerpviewangleclamp( 0, 0, 0, level._id_B981._id_B23A, level._id_B981._id_B23A, level._id_B981._id_B23A * 0.25, level._id_B981._id_B23A );
}

_id_AC3B( var_0 )
{
    if ( isdefined( level._id_B429 ) && !isdefined( level._id_CDAB ) )
    {
        level._id_CDAB = maps\_utility::spawn_anim_model( "remote_missile_player_body", var_0.origin, var_0.angles );
        level._id_CDAB thermaldrawenable();

        if ( isdefined( level._id_C073 ) )
            level._id_CDAB attach( level._id_C073 );

        if ( isdefined( level._id_CE4D ) )
            level._id_CDAB attach( level._id_CE4D, "tag_weapon_right" );

        var_1 = common_scripts\utility::ter_op( var_0 getstance() == "stand", "stand", "crouch" );
        level._id_CDAB thread maps\_anim::anim_loop_solo( level._id_CDAB, var_1 );
        level._id_CDAB thread maps\_load::loop_friendly_thermal_reflector_effect( var_0.unique_id );
    }
}

_id_CF1B()
{
    if ( isdefined( level._id_CDAB ) )
    {
        level._id_CDAB delete();
        level._id_CDAB = undefined;
    }
}

#using_animtree("generic_human");

_id_CBAA()
{
    if ( isdefined( level._id_B429 ) )
    {
        level.scr_animtree["remote_missile_player_body"] = #animtree;
        level.scr_model["remote_missile_player_body"] = level._id_B429;
        level.scr_anim["remote_missile_player_body"]["stand"][0] = %h2_npc_predator_stand_idle;
        level.scr_anim["remote_missile_player_body"]["crouch"][0] = %h2_npc_predator_crouch_idle;

        if ( isdefined( level._id_C073 ) )
            precachemodel( level._id_C073 );

        level._id_CE4D = "weapon_uav_control_unit";
        precachemodel( level._id_CE4D );
    }
}

stopmissileboostsounds()
{
    common_scripts\utility::waittill_any_ents( level, "remote_missile_exit", self, "death" );
    level.player common_scripts\utility::stop_loop_sound_on_entity( "predator_drone_missile" );
    self _meth_8561( "mstrike_boost_shot" );
    self _meth_8561( "mstrike_boost_boom" );
    self _meth_8561( "mstrike_boost_swoop" );
    self _meth_8561( "mstrike_boost_jet" );
    waitframe();
    self _meth_8561( "mstrike_boost_roar" );
}
