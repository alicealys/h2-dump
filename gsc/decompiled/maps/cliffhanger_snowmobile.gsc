// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_CC35()
{
    level._id_D3A1 = 0;

    if ( getdvar( "moto_drive" ) == "" )
        setdvar( "moto_drive", "0" );

    maps\cliffhanger::_id_B358();
    maps\cliffhanger_stealth::_id_AA79();
    var_0 = getentarray( "enemy_snowmobile_chase_spawner", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, maps\cliffhanger_snowmobile_code::_id_B5EC );
    common_scripts\utility::array_thread( var_0, maps\_utility::spawn_ai );
    var_1 = getent( "price_snowmobile_start", "targetname" );
    level.price forceteleport( var_1.origin, var_1.angles );
    level.price setgoalpos( var_1.origin );
    level.price.ignoreall = 1;
    level.price.ignorerandombulletdamage = 1;
    var_1 = getent( "player_snowmobile_start", "targetname" );
    level.player setorigin( var_1.origin );
    level.player setplayerangles( var_1.angles );
    common_scripts\utility::flag_set( "hanger_reinforcements" );
}

_id_C54C()
{
    var_0 = getnode( "price_slide_catchup", "targetname" );

    if ( common_scripts\utility::flag( "player_slides_down_hill" ) )
        level.price maps\_utility::teleport_ent( var_0 );

    var_1 = getent( "cliffhanger_slide", "targetname" );
    var_1 thread maps\_anim::anim_reach_solo( level.price, "hill_slide" );
    level.price endon( "goal" );
    common_scripts\utility::flag_wait( "player_slides_down_hill" );

    if ( level.price.origin[1] > var_0.origin[1] )
        level.price maps\_utility::teleport_ent( var_0 );

    level.price waittill( "goal" );
}

_id_BCBA()
{
    var_0 = getent( "cliffhanger_slide", "targetname" );
    _id_C54C();
    level.price maps\_utility::delaythread( 1, animscripts\notetracks::notetrackposecrouch );
    common_scripts\utility::flag_set( "price_reaches_bottom" );
    level.price maps\_utility::disable_surprise();
    var_0 maps\_anim::anim_single_solo( level.price, "hill_slide" );
}

_id_CA1B()
{
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
    {
        _id_B190::_id_D55F( var_2 );
        var_2 kill();
    }

    var_4 = getentarray( "hill_attack_spawner", "targetname" );
    common_scripts\utility::array_thread( var_4, maps\_utility::spawn_ai );
    maps\_utility::delaythread( 25, common_scripts\utility::flag_set, "clifftop_snowmobile_guys_die" );

    for (;;)
    {
        if ( level._id_BE14 >= 3 )
            break;

        level waittill( "cliff_death" );
        waittillframeend;
    }

    if ( !common_scripts\utility::flag( "clifftop_snowmobile_guys_die" ) )
    {
        common_scripts\utility::flag_set( "clifftop_snowmobile_guys_die" );
        wait 0.15;
    }

    wait 3;
    var_5 = getentarray( "clifftop_mobile_spawner", "targetname" );
    common_scripts\utility::array_thread( var_5, ::_id_CD69 );
    wait 2;
    common_scripts\utility::flag_set( "cliff_guys_all_dead" );
    level._id_ACC2 = gettime();
    level.vehicle_aianims["script_vehicle_snowmobile_friendly"][0]._id_BAE9 = 1;
    level.vehicle_aianims["script_vehicle_snowmobile_friendly"][1]._id_BAE9 = 1;
    level.vehicle_aianims["script_vehicle_snowmobile_friendly"][0]._id_B419 = level.scr_anim["snowmobile"]["small"]["death"]["left"];
    level.vehicle_aianims["script_vehicle_snowmobile_friendly"][1]._id_B419 = level.scr_anim["snowmobile"]["small"]["death"]["back"];
    _id_D300();
}

_id_CEC8()
{
    maps\cliffhanger_code::_id_BC20( "obj_exfiltrate", level.price );
    maps\cliffhanger_code::_id_D309( "obj_exfiltrate", &"SCRIPT_WAYPOINT_COVER" );
}

_id_C6E1()
{
    var_0 = common_scripts\utility::getstruct( "mig_obj_struct", "targetname" );
    var_1 = var_0.origin;
    var_2 = "obj_exfiltrate";
    maps\cliffhanger_code::_id_D393( var_2, var_1 );
    maps\cliffhanger_code::_id_D309( var_2, "" );
    level thread maps\cliffhanger_snowmobile_code::_id_AA4E( var_2, var_1 );
}

_id_BC6A()
{
    var_0 = common_scripts\utility::getstruct( "final_obj_struct", "targetname" );
    var_1 = var_0.origin;
    var_2 = "obj_exfiltrate";
    maps\cliffhanger_code::_id_D393( var_2, var_1 );
    maps\cliffhanger_code::_id_D309( var_2, "" );
    level thread maps\cliffhanger_snowmobile_code::_id_AA4E( var_2, var_1 );
}

_id_C990( var_0 )
{
    self notify( "new_node_orders" );
    self endon( "new_node_orders" );
    var_1 = undefined;

    if ( gettime() > self._id_BEF1 )
    {
        var_2 = undefined;

        switch ( var_0.script_noteworthy )
        {
            case "central_jeeps":
                var_2 = "headingforjeeps";
                var_1 = ::_id_CEC8;
                break;
            case "last_mig":
                var_2 = "runtonextmig";
                var_1 = ::_id_CEC8;
                break;
            case "final_spot":
                var_2 = "makingabreak";
                var_1 = ::_id_CEC8;
                break;
        }

        if ( isdefined( var_2 ) )
        {
            thread maps\_utility::dialogue_queue( var_2 );

            if ( isdefined( var_1 ) )
            {
                maps\_utility::delaythread( 1.5, var_1 );
                var_1 = undefined;
            }

            _id_D4CE();
        }
    }

    self waittill( "goal" );
    var_3 = [];

    switch ( var_0.script_noteworthy )
    {
        case "cinderblock_wall":
            wait 0.5;
            var_3[var_3.size] = "eastgo";
            var_3[var_3.size] = "headformig";
            var_1 = ::_id_C6E1;
            break;
        case "final_spot":
        case "last_mig":
        case "central_jeeps":
            var_3[var_3.size] = "allright";
            var_3[var_3.size] = "cometome";
            var_3[var_3.size] = "eastgo";
            var_3[var_3.size] = "moveup";
            var_1 = ::_id_BC6A;
            break;
    }

    if ( !var_3.size )
        return;

    for (;;)
    {
        wait 2;
        self._id_CAB5++;

        if ( self._id_CAB5 >= var_3.size )
            self._id_CAB5 = 0;

        var_2 = var_3[self._id_CAB5];
        _id_D4CE();

        if ( isdefined( var_1 ) )
        {
            maps\_utility::delaythread( 1.5, var_1 );
            var_1 = undefined;
        }

        maps\_utility::dialogue_queue( var_2 );
        wait( randomfloatrange( 5, 7 ) );
    }
}

_id_D4CE()
{
    var_0 = 4800;
    var_1 = 1800;

    if ( level.gameskill >= 2 )
        var_0 += 2500;

    self._id_BEF1 = gettime() + randomfloatrange( var_0, var_0 + var_1 );
}

_id_CD69()
{
    thread maps\_utility::add_spawn_function( maps\cliffhanger_snowmobile_code::_id_A891 );

    if ( isdefined( self.script_delay ) )
    {
        self.script_delay = undefined;
        common_scripts\utility::flag_wait( "cliff_guys_all_dead" );
    }

    thread maps\_vehicle::spawn_vehicle_and_gopath();
}

_id_D12A()
{
    common_scripts\utility::flag_wait( "tarmac_snowmobiles_spawned" );
    var_0 = gettime();

    for (;;)
    {
        if ( gettime() > var_0 + 2500 )
            return;

        if ( !level.price.function_stack.size )
            break;

        wait 0.05;
    }

    level.price thread maps\_utility::dialogue_queue( "snowmoibles" );
}

_id_C40A()
{
    self waittill( "trigger" );
    level.price.position = self.script_noteworthy;
}

_id_CF7A()
{
    level endon( "player_slides_down_hill" );
    var_0 = getent( "tarmac_destination", "targetname" );
    level.player.position = "hanger";
    var_1 = getentarray( "player_position_trigger", "targetname" );
    common_scripts\utility::array_thread( var_1, maps\cliffhanger_snowmobile_code::_id_AB8C );
    var_2 = getentarray( "price_progress_trigger", "targetname" );
    common_scripts\utility::array_thread( var_2, ::_id_C40A );
    var_3 = level.price;
    var_4 = getnode( "price_tarmac_path", "targetname" );
    var_3.position = var_4.script_noteworthy;
    var_3 maps\_utility::disable_ai_color();
    var_3 setgoalnode( var_4 );
    var_3.goalradius = 64;
    var_3.fixednode = 1;
    var_3.fixednodesaferadius = 0;

    if ( maps\cliffhanger_code::_id_CF75() )
        wait 2;
    else if ( level.player.position == "hanger" )
        wait 5;

    common_scripts\utility::flag_set( "escape_with_soap" );
    var_3 maps\_utility::dialogue_queue( "hugthewall" );

    if ( maps\cliffhanger_code::_id_CF75() )
        wait 1.2;
    else
    {
        var_5 = gettime();
        var_3 _id_B4CC( var_4 );

        if ( level.player.position == "hanger" )
            maps\_utility::wait_for_buffer_time_to_pass( var_5, 5 );
    }

    var_3.grenadeawareness = 0;
    var_3._id_CAB5 = 0;
    var_3._id_BEF1 = 0;
    thread maps\_utility::autosave_by_name( "hugthewall" );
    level.player.baseignorerandombulletdamage = 1;
    level.player.ignorerandombulletdamage = 1;
    var_3 thread maps\cliffhanger_snowmobile_code::_id_AA4E( "obj_exfiltrate" );
    var_3.colornode_func = ::_id_C990;
    var_3 thread maps\_utility::dialogue_queue( "follow_me" );
    maps\_utility::activate_trigger_with_targetname( "price_tarmac_run_trigger" );
    level.price maps\_utility::set_force_color( "b" );
    common_scripts\utility::flag_wait( "price_ready_to_slide" );
    level notify( "new_player_protection_trip" );
    maps\cliffhanger_code::_id_BC20( "obj_exfiltrate", level.price );
    maps\cliffhanger_code::_id_D309( "obj_exfiltrate", "" );
    var_3.colornode_func = undefined;
    var_3 notify( "new_node_orders" );
    var_3 maps\_utility::disable_ai_color();
}

_id_C298( var_0, var_1 )
{
    if ( !isdefined( var_0[level.player.position] ) )
        return;

    self endon( "player_left_bad_positions" );
    maps\_utility::add_wait( ::_id_C278, var_0 );
    maps\_utility::add_func( maps\_utility::send_notify, "player_left_bad_positions" );
    maps\_utility::add_endon( "next_goal" );
    thread maps\_utility::do_wait();

    if ( isdefined( var_1 ) )
        wait( var_1 );

    wait 4;
}

_id_A923( var_0, var_1 )
{
    thread _id_C675( var_1 );

    for (;;)
    {
        if ( level.player.position != var_0 )
            break;

        level waittill( "new_player_position" );
    }

    self notify( "player_moved_on" );
}

_id_C675( var_0 )
{
    self endon( "player_moved_on" );
    var_1 = 0;

    for (;;)
    {
        wait 2;
        var_2 = var_0[var_1];
        maps\_utility::dialogue_queue( var_2 );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;

        wait( randomfloatrange( 5, 7 ) );
    }
}

_id_CC11( var_0, var_1 )
{
    if ( isdefined( var_0[level.player.position] ) )
        return;

    self endon( "player_reached_good_position" );
    maps\_utility::add_wait( ::_id_CA6F, var_0 );
    maps\_utility::add_func( maps\_utility::send_notify, "player_reached_good_position" );
    maps\_utility::add_endon( "next_goal" );
    thread maps\_utility::do_wait();

    if ( isdefined( var_1 ) )
        wait( var_1 );

    wait 4;
}

_id_B4CC( var_0 )
{
    level endon( "time_to_leave_hanger" );
    var_0 endon( "enemies_receded" );
    thread _id_D1DE( var_0 );
    var_1 = [];
    var_1["hanger"] = 1;
    var_2 = _id_C278( var_1 );
}

_id_D1DE( var_0 )
{
    if ( !isdefined( var_0.target ) )
        return;

    var_1 = getent( var_0.target, "targetname" );

    if ( !isdefined( var_1 ) )
        return;

    for (;;)
    {
        if ( _id_CD20( var_1 ) )
            break;

        wait 1.5;
    }

    var_0 notify( "enemies_receded" );
}

_id_CD20( var_0 )
{
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
    {
        if ( !var_3 istouching( var_0 ) )
            continue;

        if ( var_3 maps\_utility::doinglongdeath() )
            continue;

        if ( isdefined( var_3.a.covermode ) && var_3.a.covermode == "hide" )
            continue;

        if ( var_3 issuppressed() )
            continue;

        return 0;
    }

    return 1;
}

_id_CA6F( var_0 )
{
    for (;;)
    {
        level waittill( "new_player_position", var_1 );

        if ( isdefined( var_0[var_1] ) )
            return;
    }
}

_id_C278( var_0 )
{
    if ( !isdefined( var_0[level.player.position] ) )
        return;

    for (;;)
    {
        level waittill( "new_player_position", var_1 );

        if ( !isdefined( var_0[level.player.position] ) )
            return;
    }
}

_id_D300()
{
    level.price.baseaccuracy = 1;
    var_0 = getent( "price_icepick_snowmobile_org", "targetname" );
    var_1 = getentarray( "snowmobile_icepick_spawner", "targetname" );
    var_2 = maps\_utility::spawn_anim_model( "snowmobile" );
    var_2 hide();
    var_3 = getstartorigin( var_0.origin, var_0.angles, level.price maps\_utility::getanim( "icepick_fight" ) );
    var_1[0].animname = "passenger";
    var_1[1] delete();
    var_1[1] = undefined;
    var_0 maps\_anim::anim_teleport( var_1, "icepick_fight" );
    var_0 maps\_anim::anim_reach_and_approach_solo( level.price, "icepick_fight", undefined, "Cover Right" );
    maps\_utility::wait_for_buffer_time_to_pass( level._id_ACC2, 3.5 );
    var_4 = maps\_utility::_id_CA38( "snowmobile_icepick_spawner" );
    var_5 = var_4[0];
    var_5.animname = "passenger";
    var_6 = getent( "player_snowmobile_spawner", "targetname" );
    var_6.origin = var_2.origin;
    var_6.angles = var_2.angles;
    var_2 = var_6 maps\_utility::spawn_vehicle();
    var_2.animname = "snowmobile";
    var_7 = [];
    var_7[var_7.size] = level.price;
    var_7[var_7.size] = var_5;
    var_7[var_7.size] = var_2;
    var_0 thread maps\_anim::anim_single( var_7, "icepick_fight" );
    var_8 = getanimlength( level.scr_anim["snowmobile"]["icepick_fight"] );
    thread _id_C0C3::cheat_death_corpse_check( var_8 - 1.5 );
    var_2 maps\_anim::_id_B695( "stop_lerp", level.scr_anim["snowmobile"]["icepick_fight"], var_8 - 6, var_0 );
    wait 0.75;
    level._id_BE57 = var_2;
    var_2 thread _id_AF69::_id_C525();
    level._id_BE57 thread _id_B16D();
    thread _id_D292();
    level._id_BE57 vehphys_disablecrashing();
    common_scripts\utility::flag_set( "player_snowmobile_available" );
    level._id_BE57 waittill( "vehicle_mount", var_9 );
    level._id_BE57._id_C99F = 1;
    level.price maps\_utility::add_damage_function( ::_id_AD45 );
    var_10 = getaiarray( "axis" );

    foreach ( var_12 in var_10 )
    {
        var_13 = randomfloat( 2 );
        var_12 maps\_utility::delaythread( var_13, ::_id_D41D );
    }

    var_15 = getent( "player_snowmobile_block", "targetname" );
    var_15 delete();
    waittillframeend;
    common_scripts\utility::flag_set( "player_rides_snowmobile" );
    level.player.drivingvehicle = level._id_BE57;
}

_id_AD45( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( level.player.vehicle ) )
        return;

    if ( var_1 != level.player.vehicle )
        return;

    setdvar( "ui_deadquote", &"CLIFFHANGER_RUN_OVER" );
    maps\_utility::missionfailedwrapper();
}

_id_B16D()
{
    level._id_BE57 endon( "vehicle_mount" );

    for (;;)
    {
        level.price thread maps\_utility::dialogue_queue( "cliff_pri_takesnowmobile" );
        wait( randomfloatrange( 9, 14 ) );
        level.price thread maps\_utility::dialogue_queue( "cliff_pri_snowmobileletsgo" );
        wait( randomfloatrange( 9, 14 ) );
    }
}

_id_D41D()
{
    if ( distance( self.origin, level.player.origin ) < 512 )
        self kill();
}

_id_D3FD()
{
    self endon( "death" );
    self.allowdeath = 1;
    self.health = 25;
    self waittillmatch( "single anim", "end" );
    maps\_utility::clear_deathanim();
}

_id_D292()
{
    level.price.ignoreme = 0;
    level.price.ignoreall = 0;
    level.price.ignorerandombulletdamage = 0;

    if ( !level._id_BEBF.size )
        level waittill( "new_icepick_snowmobile" );

    var_0 = level._id_CFAD;
    var_0 setcandamage( 0 );
    var_0._id_B84A = 250;
    level.price.sprint = 1;
    level.price.baseaccuracy = 50;

    foreach ( var_2 in level._id_C12C )
    {
        if ( !isalive( var_2 ) )
            continue;

        var_2.threatbias = 50000;
    }

    _id_CA6D();
    level.vehicle_unloadgroups["script_vehicle_snowmobile_friendly"]["default"] = [];

    while ( level._id_CFAD.veh_speed > 0 )
        wait 0.05;

    var_0.riders = [];

    foreach ( var_6, var_5 in var_0.usedpositions )
        var_0.usedpositions[var_6] = 0;

    level.price maps\_utility::disable_surprise();
    _id_BB96( var_0 );
    level.price.baseaccuracy = 1;

    foreach ( var_8 in level._id_C12C )
    {
        if ( isalive( var_8 ) )
            var_8 delete();
    }

    if ( !var_0.riders.size )
    {
        var_0 thread maps\_anim::anim_generic( level.price, "snowmobile_driver_mount_dir1_short", "tag_driver" );
        var_0 thread maps\_vehicle_aianim::guy_enter( level.price );
    }

    var_10 = getvehiclenode( "price_snowmobile_path", "targetname" );
    var_11 = 15625.0;

    while ( !common_scripts\utility::flag( "player_rides_snowmobile" ) && distance2dsquared( level.player.origin, var_0.origin ) <= var_11 )
        waitframe();

    var_0 startpath( var_10 );
    var_0.target = var_10.targetname;
    var_0 thread maps\_vehicle_code::getonpath( 1 );
    var_0 vehicle_setspeedimmediate( 15, 5, 5 );
    var_0 thread maps\cliffhanger_snowmobile_code::_id_CA78();
    level.price maps\_utility::remove_damage_function( ::_id_AD45 );
    level.price clearenemy();
    level.price maps\_utility::set_ignoreall( 1 );
    wait 1;
    var_0 resumespeed( 5 );
    common_scripts\utility::flag_wait( "player_rides_snowmobile" );
    level.price maps\_utility::set_ignoreall( 0 );
    level._id_CFAD thread adjust_price_snowmobile_jump();
    level._id_CFAD thread resolve_stuck_price_snowmobile();
}

adjust_price_snowmobile_jump()
{
    for (;;)
    {
        if ( self.origin[1] > 26300 )
        {
            self.veh_topspeed = 150;
            break;
        }

        waitframe();
    }
}

resolve_stuck_price_snowmobile()
{
    var_0 = 0;
    var_1 = self.origin;

    for (;;)
    {
        if ( self.origin[1] > 26300 )
            break;

        if ( length2d( var_1 - self.origin ) < 1 )
            var_0 += 0.05;
        else
            var_0 = 0;

        if ( var_0 > 3 )
        {
            if ( !maps\_utility::either_player_looking_at( self.origin, 0.8, 1 ) )
            {
                if ( isdefined( self._id_AAAC ) )
                {
                    var_2 = physicstrace( self._id_AAAC._id_D20B.midpoint + ( 0, 0, self.origin[2] + 4000 ), self._id_AAAC._id_D20B.midpoint + ( 0, 0, self.origin[2] - 1000 ) );
                    var_2 += ( 0, 0, 5 );

                    if ( !maps\_utility::either_player_looking_at( var_2, 0.8, 1 ) )
                        self vehicle_teleport( var_2, ( 0, vectortoyaw( self._id_AAAC._id_D20B.midpoint - self._id_AAAC._id_D20B.prev_node.midpoint ), 0 ) );
                    else
                    {
                        waitframe();
                        continue;
                    }
                }
                else
                {
                    var_3 = anglestoforward( self.angles );
                    var_4 = invertangles( self.angles );
                    self vehicle_teleport( self.origin - 36 * var_3, var_4 );
                }

                var_0 = 0;
            }
        }

        var_1 = self.origin;
        waitframe();
    }
}

_id_CA6D()
{
    level endon( "player_starts_snowmobile_trip" );

    if ( common_scripts\utility::flag( "player_starts_snowmobile_trip" ) )
        return;

    foreach ( var_1 in level._id_C12C )
    {
        if ( isalive( var_1 ) )
            var_1 waittill( "death" );
    }
}

_id_BB96( var_0 )
{
    level endon( "player_starts_snowmobile_trip" );

    if ( common_scripts\utility::flag( "player_starts_snowmobile_trip" ) )
        return;

    var_1 = spawn( "script_origin", var_0 gettagorigin( "tag_driver" ) );
    var_1.angles = var_0 gettagangles( "tag_driver" );
    var_1 maps\_anim::anim_reach_solo( level.price, "run_to_snowmobile" );
    var_1 maps\_anim::anim_single_solo( level.price, "run_to_snowmobile" );
    level.price animscripts\shared::placeweaponon( level.price.weapon, "none" );
    level.price maps\_utility::forceuseweapon( level._id_D24F, "primary" );
    var_0 thread maps\_vehicle_aianim::guy_enter( level.price );
    var_1 delete();
}

_id_C644()
{
    soundscripts\_snd::snd_message( "start_icepick_checkpoint" );
    level._id_D3A1 = 0;

    if ( getdvar( "moto_drive" ) == "" )
        setdvar( "moto_drive", "0" );

    maps\cliffhanger::_id_B358();
    maps\cliffhanger_stealth::_id_AA79();

    if ( isdefined( level.price._stealth ) )
        level.price maps\_stealth_utility::stealth_basic_states_default();

    maps\_stealth_utility::disable_stealth_system();
    common_scripts\utility::flag_set( "player_in_hanger" );
    common_scripts\utility::flag_set( "hanger_slowmo_ends" );
    common_scripts\utility::flag_set( "start_big_explosion" );
    common_scripts\utility::flag_set( "player_slides_down_hill" );
    common_scripts\utility::flag_set( "start_busted_music" );
    _id_C4A7::_id_B750();
    level notify( "stop_price_shield" );

    if ( !isdefined( level.price.magic_bullet_shield ) )
        level.price thread maps\_utility::magic_bullet_shield();

    level notify( "stop_price_shield" );
    level.price.baseaccuracy = 1;
    var_0 = getent( "player_snowmobile_spawner", "targetname" );
    level.player maps\_utility::teleport_ent( var_0 );
    wait 1.5;
    var_1 = getent( "price_icepick_snowmobile_org", "targetname" );
    level.price maps\_utility::forceuseweapon( "ak47_arctic", "primary" );
    level.price maps\_utility::teleport_ent( var_1 );
    thread _id_CA1B();
    thread maps\cliffhanger_snowmobile_code::_id_B04A();
    thread _id_C0CF::_id_BBE8();
}

_id_B606( var_0 )
{
    soundscripts\_snd::snd_message( "start_snowmobile_checkpoint" );
    level._id_D3A1 = 0;

    if ( getdvar( "moto_drive" ) == "" )
        setdvar( "moto_drive", "0" );

    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
        var_3 delete();

    if ( !isdefined( var_0 ) )
    {
        maps\cliffhanger::_id_B358();
        maps\cliffhanger_stealth::_id_AA79();
    }

    if ( isdefined( level.price._stealth ) )
        level.price maps\_stealth_utility::stealth_basic_states_default();

    maps\_stealth_utility::disable_stealth_system();
    common_scripts\utility::flag_set( "player_in_hanger" );
    common_scripts\utility::flag_set( "hanger_slowmo_ends" );
    common_scripts\utility::flag_set( "start_big_explosion" );
    _id_C4A7::_id_B750();
    level notify( "stop_price_shield" );

    if ( !isdefined( level.price.magic_bullet_shield ) )
        level.price thread maps\_utility::magic_bullet_shield();

    var_5 = getentarray( "magic_bullet_spawner", "script_noteworthy" );
    common_scripts\utility::array_thread( var_5, maps\_utility::_delete );
    var_6 = getent( "god_vehicle_spawner", "script_noteworthy" );
    var_6.script_vehicleride = undefined;
    var_6.target = "price_snowmobile_path";
    var_7 = undefined;
    var_8 = var_6 maps\_utility::spawn_vehicle();
    var_8._id_B84A = 250;
    level.price maps\_utility::forceuseweapon( level._id_D24F, "primary" );
    var_8 thread maps\_vehicle_aianim::guy_enter( level.price );
    var_8 maps\cliffhanger_snowmobile_code::_id_B322();
    var_8 thread maps\_vehicle::gopath();
    var_8 thread maps\cliffhanger_snowmobile_code::_id_CA78();
    level notify( "stop_price_shield" );
    level.price.baseaccuracy = 0;
    var_9 = getent( "player_snowmobile_spawner", "targetname" );
    level._id_BE57 = var_9 maps\_utility::spawn_vehicle();
    level._id_CFAD = var_8;
    level._id_BE57 thread _id_AF69::_id_C525();
    level.player maps\_utility::player_mount_vehicle( level._id_BE57 );
    waittillframeend;
    common_scripts\utility::flag_set( "player_rides_snowmobile" );
    common_scripts\utility::flag_set( "player_slides_down_hill" );
    var_14 = getent( "player_snowmobile_block", "targetname" );
    var_14 delete();
    thread _id_C0CF::_id_CE5A();
    level._id_CFAD thread adjust_price_snowmobile_jump();
    level._id_CFAD thread resolve_stuck_price_snowmobile();
}

_id_CD09()
{
    setsaveddvar( "hud_showStance", "0" );
    level._id_C28B = spawn( "script_origin", ( -57787.7, 41002, -24529.4 ) );
    level._id_C28B.angles = ( -15, 52.838, 0 );
    common_scripts\utility::flag_set( "escape_with_soap" );
    level notify( "kill_variable_blizzard" );
    thread maps\cliffhanger_snowmobile_code::_id_B6FC();
    thread _id_B36D();
    level._id_AD92 = 3;
    thread _id_C019();
    thread _id_AE6A();
    thread _id_B323();
    thread _id_BAFF();
    thread _id_C119();
    thread _id_AF8A();
    thread _id_BF2F( "delete_mountains", 1 );
    thread _id_BF2F( "player_starts_snowmobile_trip", 2 );
    var_0 = getentarray( "player_top_speed_limit_trigger", "targetname" );
    common_scripts\utility::array_thread( var_0, maps\cliffhanger_snowmobile_code::_id_C80D );
    var_1 = getentarray( "kill_enemy_snowmobile", "targetname" );
    common_scripts\utility::array_thread( var_1, maps\cliffhanger_snowmobile_code::_id_ADE8 );
    var_2 = getentarray( "player_path_trigger", "targetname" );
    common_scripts\utility::array_thread( var_2, maps\cliffhanger_snowmobile_code::_id_B9B1 );
    thread maps\cliffhanger_snowmobile_code::_id_B277();
    thread _id_B9C5();
    thread _id_C814();
    maps\_utility::add_wait( common_scripts\utility::flag_wait, "snowmobile_fog_clears" );
    maps\_utility::add_func( common_scripts\utility::flag_clear, "ai_snowmobiles_ram_player" );
    thread maps\_utility::do_wait();

    if ( !isalive( level.price ) )
        return;

    common_scripts\utility::flag_set( "reached_top" );
    common_scripts\utility::flag_wait( "player_rides_snowmobile" );
    setsaveddvar( "ui_hideMap", "1" );
    setsaveddvar( "fx_marks_lruPriority", 2 );
    level.player takeallweapons();
    var_3 = getentarray( "fence_plank", "targetname" );
    common_scripts\utility::array_thread( var_3, ::_id_ACD5 );
    level.longregentime = 2000;

    if ( level.player.deathinvulnerabletime > 2000 )
        level.player.deathinvulnerabletime = 2000;

    thread _id_D28E();
    var_4 = level._id_BE57;
    level.player thread _id_C4A7::_id_AC20( var_4.origin );
    common_scripts\utility::flag_set( "player_gets_on_snowmobile" );
    maps\_utility::set_custom_gameskill_func( ::_id_B3FF );
    thread _id_C0CF::_id_CE5A();
    thread maps\cliffhanger_snowmobile_code::_id_C161();
    maps\_utility::remove_global_spawn_function( "axis", maps\cliffhanger_code::_id_D0FB );
    thread maps\cliffhanger_snowmobile_code::_id_BDDB();
    level.player.baseignorerandombulletdamage = 1;
    level.ignorerandombulletdamage = 1;
    level.dopickyautosavechecks = 0;
    level.autosave_threat_check_enabled = 0;
    setsaveddvar( "sm_sunSampleSizeNear", 1 );
    maps\_utility::autosave_by_name( "ride_the_bike" );
    level._id_B8C1 = 0;
    wait 2.4;
    maps\_utility::add_wait( common_scripts\utility::flag_wait, "snowmobile_fog_clears" );
    thread maps\_utility::do_wait();
    thread maps\cliffhanger_snowmobile_code::_id_B110();
    thread maps\cliffhanger_snowmobile_code::_id_BF41();
    maps\_utility::add_wait( common_scripts\utility::flag_wait, "price_get_speed_up" );
    maps\_utility::add_func( maps\_utility::radio_dialogue, "cliff_pri_pinthrottle" );
    thread maps\_utility::do_wait();
    common_scripts\utility::flag_wait( "player_reaches_hilltop" );
    level._id_CFAD vehphys_disablecrashing();
    level._id_BE57 vehphys_disablecrashing( 1 );
    level.price animscripts\custom\snowmobile::_id_B5F4();
    thread maps\cliffhanger_snowmobile_code::_id_D332();
    level._id_B8D5 = -6000;
    maps\_utility::radio_dialogue( "cliff_hp1_status" );
    maps\_utility::radio_dialogue( "cliff_pri_almostthere" );
    common_scripts\utility::flag_wait( "there_is_chopper" );
    maps\_utility::radio_dialogue( "cliff_pri_thechopper" );
    maps\_utility::radio_dialogue( "cliff_hp1_fumes" );
    thread maps\_utility::radio_dialogue( "cliff_crc_gotacs" );
    common_scripts\utility::flag_wait( "ending_heli_flies_in" );

    if ( getdvarint( "use_old_cliffhanger_ending", 0 ) )
    {
        common_scripts\utility::flag_wait( "end_begins" );
        wait 2.5;
        var_5 = maps\_hud_util::create_client_overlay( "black", 0, level.player );
        var_5 fadeovertime( 1 );
        var_5.alpha = 1;
        soundscripts\_snd::snd_message( "start_fade_out_level" );
        wait 2;
        maps\_utility::nextmission();
    }
    else
        thread _id_B8A3();
}

h2_monitor_airport_video_skip()
{
    for (;;)
    {
        if ( getdvar( "ui_stop_airport_movie" ) == "1" )
        {
            var_0 = maps\_hud_util::create_client_overlay( "black", 1, level.player );
            waitframe();
            waitframe();
            stopcinematicingame();
            maps\_utility::nextmission();
            var_0 destroy();
            return;
        }

        waitframe();
    }
}

_id_B8A3()
{
    common_scripts\utility::flag_wait( "h2_ending_ends" );
    var_0 = maps\_hud_util::create_client_overlay( "black", 0, level.player );
    var_0 fadeovertime( 2.5 );
    var_0.alpha = 1;
    soundscripts\_snd::snd_message( "start_fade_out_level" );
    wait 2.5;
    maps\_utility::nextmission();
    var_0 destroy();
}

_id_B3FF()
{
    level.difficultysettings["longRegenTime"]["easy"] = 2000;
    level.difficultysettings["longRegenTime"]["normal"] = 2000;
    level.difficultysettings["longRegenTime"]["hardened"] = 2000;
    level.difficultysettings["longRegenTime"]["veteran"] = 2000;
}

_id_D28E()
{
    wait 2.5;
    thread maps\_utility::radio_dialogue( "cliff_pri_enroute" );
    thread maps\_utility::radio_dialogue( "cliff_hp1_seeyouatbravo" );
}

_id_C3DD()
{
    self waittill( "veh_landed" );
    self._id_BE68 = gettime();
}

_id_C814()
{
    common_scripts\utility::flag_wait( "snowmobile_jump" );
    soundscripts\_snd::snd_message( "aud_stop_mix_snowmobile_descent" );
    soundscripts\_snd::snd_message( "aud_start_mix_snowmobile_jump" );
    level.player playsound( "scn_cliff_snowmobile_jump" );
    var_0 = common_scripts\utility::getstruct( "ending_fuel_explosion", "targetname" );
    wait 0.5;

    for (;;)
    {
        radiusdamage( var_0.origin, var_0.radius, 50000, 50000, level.price );

        if ( !isdefined( var_0.target ) )
            return;

        var_0 = common_scripts\utility::getstruct( var_0.target, "targetname" );
        wait 0.15;
    }
}

_id_B9C5()
{
    common_scripts\utility::flag_wait( "player_survived_minijump" );
    var_0 = getaiarray( "axis" );
    setsaveddvar( "vehNotifyHitEntityWithVehContactEvent", 1 );
    common_scripts\utility::array_thread( var_0, ::_id_B446 );
}

_id_B446()
{
    self endon( "guy_entered" );

    for (;;)
    {
        self waittill( "veh_contact", var_0 );

        if ( !isdefined( level.player.vehicle ) )
            break;

        if ( var_0 == level.player || var_0 == level.player.vehicle )
        {
            self.skipdeathanim = 1;
            var_1 = vectornormalize( self.origin - var_0.origin );
            var_1 += ( 0, 0, 0.5 );
            var_1 *= 4000;
            self startragdollfromimpact( "torso_lower", var_1 );
            break;
        }
    }
}

_id_C0B8()
{
    common_scripts\utility::flag_wait( "snowmobile_jump" );
    wait 0.4;
    wait 2.6;

    if ( level.player.vehicle vehicle_getspeed() > 50 )
        level.player.vehicle vehicle_setspeed( 50, 20, 20 );
}

_id_C61D()
{
    common_scripts\utility::flag_wait( "player_falls_to_avalanche_section" );
    var_0 = maps\_utility::getentwithflag( "player_falls_to_avalanche_section" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = getent( var_1.target, "targetname" );
    var_1 linkto( var_2 );
    var_2.origin = level.player.origin;
    var_3 = level.player.vehicle.angles;
    var_3 = ( 0, var_3[1], 0 );
    var_2.angles = var_3;
    common_scripts\utility::flag_set( "avalanche_begins" );
}

start_avalanche()
{
    _id_C4A7::_id_B750();
    level._id_D3A1 = 0;

    if ( getdvar( "moto_drive" ) == "" )
        setdvar( "moto_drive", "0" );

    maps\cliffhanger::_id_B358();
    maps\cliffhanger_stealth::_id_AA79();
    var_0 = getentarray( "enemy_snowmobile_chase_spawner", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, maps\cliffhanger_snowmobile_code::_id_B5EC );
    common_scripts\utility::array_thread( var_0, maps\_utility::spawn_ai );
    thread _id_C0CF::_id_CE5A();
}

_id_CFB4()
{
    common_scripts\utility::flag_set( "reached_top" );
    level.price.ignoreall = 1;

    foreach ( var_1 in level.createfxent )
        var_1 thread common_scripts\utility::pauseeffect();

    level.player.attackeraccuracy = 0;
    level._id_C522 = [];
    var_3 = getentarray( "avalanche_chase_vehicle_spawner", "script_noteworthy" );
    common_scripts\utility::array_thread( var_3, maps\cliffhanger_snowmobile_code::_id_B8EE );
    thread maps\cliffhanger_snowmobile_code::_id_D19D();
    thread _id_CDAA();
    common_scripts\utility::flag_set( "avalanche_ride_starts" );
    var_4 = maps\_vehicle::spawn_vehicle_from_targetname( "player_end_ride" );
    level._id_C89B = var_4;
    var_5 = getent( "avalanche_progress_org", "targetname" );
    var_6 = getent( var_5.target, "targetname" );
    level.player.baseignorerandombulletdamage = 1;
    level.ignorerandombulletdamage = 1;
    var_4 thread maps\cliffhanger_snowmobile_code::_id_B02D();
    thread maps\cliffhanger_snowmobile_code::_id_B293();
    level.player disableweapons();

    if ( isdefined( level.player.vehicle ) )
    {
        level.player.vehicle useby( level.player );
        level.player.drivingvehicle = level.player.vehicle;
        level.player.vehicle delete();
        level.player.vehicle = undefined;
    }

    var_7 = maps\_utility::spawn_anim_model( "player_rig" );
    var_7 hide();
    var_8 = common_scripts\utility::spawn_tag_origin();
    var_8 linkto( var_7, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level.player playersetgroundreferenceent( var_8 );
    level.player playerlinktodelta( var_7, "tag_player", 1, 0, 0, 0, 0 );
    maps\_utility::delaythread( 2.5, maps\cliffhanger_code::_id_CFFB, var_7, "tag_player" );
    var_9 = [];
    var_9[0] = level.price;
    var_9[1] = var_7;
    level.price maps\_utility::gun_remove();

    if ( isdefined( level.price.magic_bullet_shield ) )
        level.price maps\_utility::stop_magic_bullet_shield();

    var_10 = getent( "crash_recovery", "targetname" );
    var_11 = spawn( "script_origin", var_10.origin );
    var_11.angles = var_10.angles;
    level.price maps\_utility::delaythread( 3.5, maps\_utility::dialogue_queue, "i_drive" );
    maps\_utility::delaythread( 12.5, maps\_utility::radio_dialogue_queue, "avalanche" );
    maps\_utility::delaythread( 16.5, maps\_utility::radio_dialogue_queue, "moretangos" );
    var_11 maps\_anim::anim_single( var_9, "crash_rescue" );
    var_8 = common_scripts\utility::spawn_tag_origin();
    var_8.origin = var_4.origin;
    var_8.angles = var_4.angles;
    var_12 = spawnstruct();
    var_12.entity = var_8;
    var_12.forward = -20;
    var_12.up = 10;
    var_12.right = 0;
    var_12.yaw = 180;
    var_12 maps\_utility::translate_local();
    var_8 linkto( var_4 );
    level.player playersetgroundreferenceent( undefined );
    var_13 = 0.5;
    var_7 delete();
    level.player playerlinktoblend( var_8, "tag_origin", var_13, var_13 * 0.2, var_13 * 0.2 );
    maps\_utility::delaythread( var_13 + 0.1, maps\cliffhanger_code::_id_CFFB, var_8, "tag_origin" );
    level.price delete();
    level.player enableweapons();
    thread maps\_vehicle::gopath( var_4 );
    var_4 vehphys_disablecrashing();
    wait 0.5;
    wait 2.0;
    level._id_CD23 = [];
    var_14 = maps\_vehicle::spawn_vehicles_from_targetname( "avalance_vehicle" );
    common_scripts\utility::array_thread( var_14, maps\cliffhanger_snowmobile_code::_id_BAF6 );
    common_scripts\_exploder::exploder( 2 );
    common_scripts\utility::flag_wait( "avalanche_reconstitutes" );
    wait 2.5;
    common_scripts\utility::flag_wait( "the_end" );
    wait 6;
    var_15 = maps\_hud_util::create_client_overlay( "black", 0, level.player );
    var_15 fadeovertime( 1 );
    var_15.alpha = 1;
    wait 2;
    maps\_utility::nextmission();
}

_id_CDAA()
{
    common_scripts\utility::flag_wait( "avalanche_heli_attacks" );
    var_0 = getent( "avalanche_heli", "targetname" );
    var_1 = var_0 maps\_utility::spawn_vehicle();
    var_1 maps\_vehicle::gopath();
    var_2 = level._id_C89B vehicle_getspeed();
    var_1._id_D1B0 = 900;
    maps\cliffhanger_snowmobile_code::_id_CE9E( 2300 );
    var_1 maps\_utility::delaythread( 5, maps\cliffhanger_snowmobile_code::_id_A9E1 );
    var_1 setgoalyaw( 90 );
    var_1 waittill( "reached_dynamic_path_end" );
    var_3 = getent( "avalanche_heli_crash", "targetname" );
    var_1 = var_1 maps\_vehicle::vehicle_to_dummy();
    var_1 maps\_utility::assign_animtree( "heli" );
    maps\_utility::delaythread( 1.5, maps\cliffhanger_snowmobile_code::_id_CE9E, 500 );
    var_3 maps\_anim::anim_single_solo( var_1, "avalanche_heli_wipeout" );
}

_id_C019()
{
    common_scripts\utility::flag_wait( "downhill_autosave" );

    if ( level.player.health < 75 )
        return;

    var_0 = savegamenocommit( "blah", &"AUTOSAVE_AUTOSAVE" );
    level.player endon( "death" );
    common_scripts\utility::flag_wait( "downhill_autosave_failsafe" );

    if ( !commitwouldbevalid( var_0 ) )
        return;

    commitsave( var_0 );
}

_id_AE6A()
{
    common_scripts\utility::flag_wait( "enemy_snowmobiles_wipe_out" );

    foreach ( var_1 in level._id_CEB7 )
        var_1 thread _id_A9EF();
}

_id_A9EF()
{
    self endon( "death" );
    wait( randomfloatrange( 5, 12 ) );

    if ( !isdefined( self ) )
        return;

    self.wipeout = 1;
}

_id_B323()
{
    common_scripts\utility::flag_wait( "destroyed_fallen_tree_cliffhanger01" );
    level._id_AD92 = 4;
}

_id_BAFF()
{
    level endon( "snowmobile_jump" );
    common_scripts\utility::flag_wait( "player_rides_snowmobile" );
    level.player.vehicle endon( "veh_collision" );
    level endon( "player_crashes" );
    common_scripts\utility::flag_wait( "bad_heli_goes_to_death_position" );

    for (;;)
    {
        if ( !isdefined( level.player.vehicle ) )
            return;

        if ( level.player.vehicle.veh_speed >= 120 )
            break;

        wait 0.05;
    }

    var_0 = level.player.vehicle.veh_speed;

    for (;;)
    {
        if ( !isdefined( level.player.vehicle ) )
            return;

        if ( level.player.vehicle.veh_speed < var_0 - 35 )
            break;

        var_0 = level.player.vehicle.veh_speed;
        wait 0.05;
    }

    level.player.vehicle notify( "veh_collision" );
}

_id_ACD5()
{
    for (;;)
    {
        var_0 = _id_B602( level.price.vehicle );
        var_1 = _id_B602( level.player.vehicle );

        if ( var_0 < 100 )
            break;

        if ( var_1 < 100 )
            break;

        if ( var_1 > 1500 )
            break;

        wait 0.05;
    }

    self delete();
}

_id_B602( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 500;

    return distance( var_0.origin, self.origin );
}

_id_B36D()
{
    common_scripts\utility::flag_wait( "player_rides_snowmobile" );

    if ( getdvar( "scr_hide_snowmobile" ) == "1" )
        level._id_BE57 hide();
}

_id_BF2F( var_0, var_1 )
{
    common_scripts\utility::flag_wait( var_0 );
    _func_31C( var_1 );
}

_id_C119()
{
    common_scripts\utility::flag_wait( "magic_rocket_flag" );
    var_0 = common_scripts\utility::getstruct( "magic_rocket_start", "targetname" );
    var_1 = common_scripts\utility::getstruct( "magic_rocket_end", "targetname" );
    var_2 = magicbullet( "rpg_straight", var_0.origin, var_1.origin );
    var_2 waittill( "death" );
    playfx( level._effect["large_snow_explode"], var_1.origin );
}

_id_AF8A()
{
    for (;;)
    {
        if ( common_scripts\utility::flag( "fade_to_death" ) || !isalive( level.player ) && common_scripts\utility::flag( "snowmobile_jump" ) && !common_scripts\utility::flag( "made_jump" ) )
            break;

        waitframe();
    }

    maps\cliffhanger_code::_id_D4E0();
}
