// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52277()
{
    level._ID54177 = 0;

    if ( getdvar( "moto_drive" ) == "" )
        setdvar( "moto_drive", "0" );

    maps\cliffhanger::_ID45912();
    maps\cliffhanger_stealth::_ID43641();
    var_0 = getentarray( "enemy_snowmobile_chase_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID46572 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_1 = getent( "price_snowmobile_start", "targetname" );
    level._ID28543 forceteleport( var_1.origin, var_1.angles );
    level._ID28543 setgoalpos( var_1.origin );
    level._ID28543.ignoreall = 1;
    level._ID28543.ignorerandombulletdamage = 1;
    var_1 = getent( "player_snowmobile_start", "targetname" );
    level.player setorigin( var_1.origin );
    level.player setplayerangles( var_1.angles );
    _ID42237::_ID14402( "hanger_reinforcements" );
}

_ID50508()
{
    var_0 = getnode( "price_slide_catchup", "targetname" );

    if ( _ID42237::_ID14385( "player_slides_down_hill" ) )
        level._ID28543 _ID42407::_ID37404( var_0 );

    var_1 = getent( "cliffhanger_slide", "targetname" );
    var_1 thread _ID42259::_ID3074( level._ID28543, "hill_slide" );
    level._ID28543 endon( "goal" );
    _ID42237::_ID14413( "player_slides_down_hill" );

    if ( level._ID28543.origin[1] > var_0.origin[1] )
        level._ID28543 _ID42407::_ID37404( var_0 );

    level._ID28543 waittill( "goal" );
}

_ID48314()
{
    var_0 = getent( "cliffhanger_slide", "targetname" );
    _ID50508();
    level._ID28543 _ID42407::_ID10226( 1, animscripts\notetracks::_ID25058 );
    _ID42237::_ID14402( "price_reaches_bottom" );
    level._ID28543 _ID42407::_ID10973();
    var_0 _ID42259::_ID3111( level._ID28543, "hill_slide" );
}

_ID51739()
{
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
    {
        _ID45456::_ID54623( var_2 );
        var_2 kill();
    }

    var_4 = getentarray( "hill_attack_spawner", "targetname" );
    _ID42237::_ID3350( var_4, _ID42407::_ID35014 );
    _ID42407::_ID10226( 25, _ID42237::_ID14402, "clifftop_snowmobile_guys_die" );

    for (;;)
    {
        if ( level._ID48660 >= 3 )
            break;

        level waittill( "cliff_death" );
        waitframe;
    }

    if ( !_ID42237::_ID14385( "clifftop_snowmobile_guys_die" ) )
    {
        _ID42237::_ID14402( "clifftop_snowmobile_guys_die" );
        wait 0.15;
    }

    wait 3;
    var_5 = getentarray( "clifftop_mobile_spawner", "targetname" );
    _ID42237::_ID3350( var_5, ::_ID52585 );
    wait 2;
    _ID42237::_ID14402( "cliff_guys_all_dead" );
    level._ID44226 = gettime();
    level._ID40069["script_vehicle_snowmobile_friendly"][0]._ID47849 = 1;
    level._ID40069["script_vehicle_snowmobile_friendly"][1]._ID47849 = 1;
    level._ID40069["script_vehicle_snowmobile_friendly"][0]._ID46105 = level._ID30895["snowmobile"]["small"]["death"]["left"];
    level._ID40069["script_vehicle_snowmobile_friendly"][1]._ID46105 = level._ID30895["snowmobile"]["small"]["death"]["back"];
    _ID54016();
}

_ID52936()
{
    maps\cliffhanger_code::_ID48160( "obj_exfiltrate", level._ID28543 );
    maps\cliffhanger_code::_ID54025( "obj_exfiltrate", &"SCRIPT_WAYPOINT_COVER" );
}

_ID50913()
{
    var_0 = _ID42237::_ID16638( "mig_obj_struct", "targetname" );
    var_1 = var_0.origin;
    var_2 = "obj_exfiltrate";
    maps\cliffhanger_code::_ID54163( var_2, var_1 );
    maps\cliffhanger_code::_ID54025( var_2, "" );
    level thread maps\cliffhanger_snowmobile_code::_ID43598( var_2, var_1 );
}

_ID48234()
{
    var_0 = _ID42237::_ID16638( "final_obj_struct", "targetname" );
    var_1 = var_0.origin;
    var_2 = "obj_exfiltrate";
    maps\cliffhanger_code::_ID54163( var_2, var_1 );
    maps\cliffhanger_code::_ID54025( var_2, "" );
    level thread maps\cliffhanger_snowmobile_code::_ID43598( var_2, var_1 );
}

_ID51600( var_0 )
{
    self notify( "new_node_orders" );
    self endon( "new_node_orders" );
    var_1 = undefined;

    if ( gettime() > self._ID48881 )
    {
        var_2 = undefined;

        switch ( var_0.script_noteworthy )
        {
            case "central_jeeps":
                var_2 = "headingforjeeps";
                var_1 = ::_ID52936;
                break;
            case "last_mig":
                var_2 = "runtonextmig";
                var_1 = ::_ID52936;
                break;
            case "final_spot":
                var_2 = "makingabreak";
                var_1 = ::_ID52936;
                break;
        }

        if ( isdefined( var_2 ) )
        {
            thread _ID42407::_ID10805( var_2 );

            if ( isdefined( var_1 ) )
            {
                _ID42407::_ID10226( 1.5, var_1 );
                var_1 = undefined;
            }

            _ID54478();
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
            var_1 = ::_ID50913;
            break;
        case "central_jeeps":
        case "last_mig":
        case "final_spot":
            var_3[var_3.size] = "allright";
            var_3[var_3.size] = "cometome";
            var_3[var_3.size] = "eastgo";
            var_3[var_3.size] = "moveup";
            var_1 = ::_ID48234;
            break;
    }

    if ( !var_3.size )
        return;

    for (;;)
    {
        wait 2;
        self._ID51893++;

        if ( self._ID51893 >= var_3.size )
            self._ID51893 = 0;

        var_2 = var_3[self._ID51893];
        _ID54478();

        if ( isdefined( var_1 ) )
        {
            _ID42407::_ID10226( 1.5, var_1 );
            var_1 = undefined;
        }

        _ID42407::_ID10805( var_2 );
        wait(randomfloatrange( 5, 7 ));
    }
}

_ID54478()
{
    var_0 = 4800;
    var_1 = 1800;

    if ( level._ID15361 >= 2 )
        var_0 += 2500;

    self._ID48881 = gettime() + randomfloatrange( var_0, var_0 + var_1 );
}

_ID52585()
{
    thread _ID42407::_ID1947( maps\cliffhanger_snowmobile_code::_ID43153 );

    if ( isdefined( self._ID916 ) )
    {
        self._ID916 = undefined;
        _ID42237::_ID14413( "cliff_guys_all_dead" );
    }

    thread _ID42411::_ID35194();
}

_ID53546()
{
    _ID42237::_ID14413( "tarmac_snowmobiles_spawned" );
    var_0 = gettime();

    for (;;)
    {
        if ( gettime() > var_0 + 2500 )
            return;

        if ( !level._ID28543._ID15093.size )
            break;

        wait 0.05;
    }

    level._ID28543 thread _ID42407::_ID10805( "snowmoibles" );
}

_ID50186()
{
    self waittill( "trigger" );
    level._ID28543._ID811 = self.script_noteworthy;
}

_ID53114()
{
    level endon( "player_slides_down_hill" );
    var_0 = getent( "tarmac_destination", "targetname" );
    level.player._ID811 = "hanger";
    var_1 = getentarray( "player_position_trigger", "targetname" );
    _ID42237::_ID3350( var_1, maps\cliffhanger_snowmobile_code::_ID43916 );
    var_2 = getentarray( "price_progress_trigger", "targetname" );
    _ID42237::_ID3350( var_2, ::_ID50186 );
    var_3 = level._ID28543;
    var_4 = getnode( "price_tarmac_path", "targetname" );
    var_3._ID811 = var_4.script_noteworthy;
    var_3 _ID42407::_ID10871();
    var_3 setgoalnode( var_4 );
    var_3.goalradius = 64;
    var_3.fixednode = 1;
    var_3.fixednodesaferadius = 0;

    if ( maps\cliffhanger_code::_ID53109() )
        wait 2;
    else if ( level.player._ID811 == "hanger" )
        wait 5;

    _ID42237::_ID14402( "escape_with_soap" );
    var_3 _ID42407::_ID10805( "hugthewall" );

    if ( maps\cliffhanger_code::_ID53109() )
        wait 1.2;
    else
    {
        var_5 = gettime();
        var_3 _ID46284( var_4 );

        if ( level.player._ID811 == "hanger" )
            _ID42407::_ID40847( var_5, 5 );
    }

    var_3.grenadeawareness = 0;
    var_3._ID51893 = 0;
    var_3._ID48881 = 0;
    thread _ID42407::_ID4422( "hugthewall" );
    level.player._ID4878 = 1;
    level.player.ignorerandombulletdamage = 1;
    var_3 thread maps\cliffhanger_snowmobile_code::_ID43598( "obj_exfiltrate" );
    var_3._ID8274 = ::_ID51600;
    var_3 thread _ID42407::_ID10805( "follow_me" );
    _ID42407::_ID1805( "price_tarmac_run_trigger" );
    level._ID28543 _ID42407::_ID32315( "b" );
    _ID42237::_ID14413( "price_ready_to_slide" );
    level notify( "new_player_protection_trip" );
    maps\cliffhanger_code::_ID48160( "obj_exfiltrate", level._ID28543 );
    maps\cliffhanger_code::_ID54025( "obj_exfiltrate", "" );
    var_3._ID8274 = undefined;
    var_3 notify( "new_node_orders" );
    var_3 _ID42407::_ID10871();
}

_ID49816( var_0, var_1 )
{
    if ( !isdefined( var_0[level.player._ID811] ) )
        return;

    self endon( "player_left_bad_positions" );
    _ID42407::_ID1985( ::_ID49784, var_0 );
    _ID42407::_ID1890( _ID42407::_ID31877, "player_left_bad_positions" );
    _ID42407::_ID1886( "next_goal" );
    thread _ID42407::_ID11231();

    if ( isdefined( var_1 ) )
        wait(var_1);

    wait 4;
}

_ID43299( var_0, var_1 )
{
    thread _ID50805( var_1 );

    for (;;)
    {
        if ( level.player._ID811 != var_0 )
            break;

        level waittill( "new_player_position" );
    }

    self notify( "player_moved_on" );
}

_ID50805( var_0 )
{
    self endon( "player_moved_on" );
    var_1 = 0;

    for (;;)
    {
        wait 2;
        var_2 = var_0[var_1];
        _ID42407::_ID10805( var_2 );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;

        wait(randomfloatrange( 5, 7 ));
    }
}

_ID52241( var_0, var_1 )
{
    if ( isdefined( var_0[level.player._ID811] ) )
        return;

    self endon( "player_reached_good_position" );
    _ID42407::_ID1985( ::_ID51823, var_0 );
    _ID42407::_ID1890( _ID42407::_ID31877, "player_reached_good_position" );
    _ID42407::_ID1886( "next_goal" );
    thread _ID42407::_ID11231();

    if ( isdefined( var_1 ) )
        wait(var_1);

    wait 4;
}

_ID46284( var_0 )
{
    level endon( "time_to_leave_hanger" );
    var_0 endon( "enemies_receded" );
    thread _ID53726( var_0 );
    var_1 = [];
    var_1["hanger"] = 1;
    var_2 = _ID49784( var_1 );
}

_ID53726( var_0 )
{
    if ( !isdefined( var_0.target ) )
        return;

    var_1 = getent( var_0.target, "targetname" );

    if ( !isdefined( var_1 ) )
        return;

    for (;;)
    {
        if ( _ID52512( var_1 ) )
            break;

        wait 1.5;
    }

    var_0 notify( "enemies_receded" );
}

_ID52512( var_0 )
{
    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
    {
        if ( !var_3 istouching( var_0 ) )
            continue;

        if ( var_3 _ID42407::_ID11498() )
            continue;

        if ( isdefined( var_3._ID7._ID8878 ) && var_3._ID7._ID8878 == "hide" )
            continue;

        if ( var_3 issuppressed() )
            continue;

        return 0;
    }

    return 1;
}

_ID51823( var_0 )
{
    for (;;)
    {
        level waittill( "new_player_position",  var_1  );

        if ( isdefined( var_0[var_1] ) )
            return;
    }
}

_ID49784( var_0 )
{
    if ( !isdefined( var_0[level.player._ID811] ) )
        return;

    for (;;)
    {
        level waittill( "new_player_position",  var_1  );

        if ( !isdefined( var_0[level.player._ID811] ) )
            return;
    }
}

_ID54016()
{
    level._ID28543._ID4867 = 1;
    var_0 = getent( "price_icepick_snowmobile_org", "targetname" );
    var_1 = getentarray( "snowmobile_icepick_spawner", "targetname" );
    var_2 = _ID42407::_ID35028( "snowmobile" );
    var_2 hide();
    var_3 = getstartorigin( var_0.origin, var_0.angles, level._ID28543 _ID42407::_ID16120( "icepick_fight" ) );
    var_1[0]._ID3189 = "passenger";
    var_1[1] delete();
    var_1[1] = undefined;
    var_0 _ID42259::_ID3141( var_1, "icepick_fight" );
    var_0 _ID42259::_ID3064( level._ID28543, "icepick_fight", undefined, "Cover Right" );
    _ID42407::_ID40847( level._ID44226, 3.5 );
    var_4 = _ID42407::_ID51768( "snowmobile_icepick_spawner" );
    var_5 = var_4[0];
    var_5._ID3189 = "passenger";
    var_6 = getent( "player_snowmobile_spawner", "targetname" );
    var_6.origin = var_2.origin;
    var_6.angles = var_2.angles;
    var_2 = var_6 _ID42407::_ID35192();
    var_2._ID3189 = "snowmobile";
    var_7 = [];
    var_7[var_7.size] = level._ID28543;
    var_7[var_7.size] = var_5;
    var_7[var_7.size] = var_2;
    var_0 thread _ID42259::_ID3099( var_7, "icepick_fight" );
    var_8 = getanimlength( level._ID30895["snowmobile"]["icepick_fight"] );
    thread _ID49347::cheat_death_corpse_check( var_8 - 1.5 );
    var_2 _ID42259::_ID46741( "stop_lerp", level._ID30895["snowmobile"]["icepick_fight"], var_8 - 6, var_0 );
    wait 0.75;
    level._ID48727 = var_2;
    var_2 thread _ID44905::_ID50469();
    level._ID48727 thread _ID45421();
    thread _ID53906();
    level._ID48727 vehphys_disablecrashing();
    _ID42237::_ID14402( "player_snowmobile_available" );
    level._ID48727 waittill( "vehicle_mount",  var_9  );
    level._ID48727._ID51615 = 1;
    level._ID28543 _ID42407::_ID1868( ::_ID44357 );
    var_10 = getaiarray( "axis" );

    foreach ( var_12 in var_10 )
    {
        var_13 = randomfloat( 2 );
        var_12 _ID42407::_ID10226( var_13, ::_ID54301 );
    }

    var_15 = getent( "player_snowmobile_block", "targetname" );
    var_15 delete();
    waitframe;
    _ID42237::_ID14402( "player_rides_snowmobile" );
    level.player._ID11803 = level._ID48727;
}

_ID44357( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( level.player._ID40065 ) )
        return;

    if ( var_1 != level.player._ID40065 )
        return;

    setdvar( "ui_deadquote", &"CLIFFHANGER_RUN_OVER" );
    _ID42407::_ID23778();
}

_ID45421()
{
    level._ID48727 endon( "vehicle_mount" );

    for (;;)
    {
        level._ID28543 thread _ID42407::_ID10805( "cliff_pri_takesnowmobile" );
        wait(randomfloatrange( 9, 14 ));
        level._ID28543 thread _ID42407::_ID10805( "cliff_pri_snowmobileletsgo" );
        wait(randomfloatrange( 9, 14 ));
    }
}

_ID54301()
{
    if ( distance( self.origin, level.player.origin ) < 512 )
        self kill();
}

_ID54269()
{
    self endon( "death" );
    self.allowdeath = 1;
    self.health = 25;
    self waittillmatch( "single anim",  "end"  );
    _ID42407::_ID7854();
}

_ID53906()
{
    level._ID28543.ignoreme = 0;
    level._ID28543.ignoreall = 0;
    level._ID28543.ignorerandombulletdamage = 0;

    if ( !level._ID48831.size )
        level waittill( "new_icepick_snowmobile" );

    var_0 = level._ID53165;
    var_0 setcandamage( 0 );
    var_0._ID47178 = 250;
    level._ID28543._ID35499 = 1;
    level._ID28543._ID4867 = 50;

    foreach ( var_2 in level._ID49452 )
    {
        if ( !isalive( var_2 ) )
            continue;

        var_2.threatbias = 50000;
    }

    _ID51821();
    level._ID40300["script_vehicle_snowmobile_friendly"]["default"] = [];

    while ( level._ID53165.veh_speed > 0 )
        wait 0.05;

    var_0._ID29965 = [];

    foreach ( var_6, var_5 in var_0._ID39936 )
        var_0._ID39936[var_6] = 0;

    level._ID28543 _ID42407::_ID10973();
    _ID48022( var_0 );
    level._ID28543._ID4867 = 1;

    foreach ( var_8 in level._ID49452 )
    {
        if ( isalive( var_8 ) )
            var_8 delete();
    }

    if ( !var_0._ID29965.size )
    {
        var_0 thread _ID42259::_ID3020( level._ID28543, "snowmobile_driver_mount_dir1_short", "tag_driver" );
        var_0 thread _ID42412::_ID17557( level._ID28543 );
    }

    var_10 = getvehiclenode( "price_snowmobile_path", "targetname" );
    var_11 = 15625.0;

    while ( !_ID42237::_ID14385( "player_rides_snowmobile" ) && distance2dsquared( level.player.origin, var_0.origin ) <= var_11 )
        waittillframeend;

    var_0 startpath( var_10 );
    var_0.target = var_10.targetname;
    var_0 thread _ID42413::_ID16485( 1 );
    var_0 vehicle_setspeedimmediate( 15, 5, 5 );
    var_0 thread maps\cliffhanger_snowmobile_code::_ID51832();
    level._ID28543 _ID42407::_ID29503( ::_ID44357 );
    level._ID28543 clearenemy();
    level._ID28543 _ID42407::_ID32352( 1 );
    wait 1;
    var_0 resumespeed( 5 );
    _ID42237::_ID14413( "player_rides_snowmobile" );
    level._ID28543 _ID42407::_ID32352( 0 );
    level._ID53165 thread adjust_price_snowmobile_jump();
    level._ID53165 thread resolve_stuck_price_snowmobile();
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

        waittillframeend;
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
            if ( !_ID42407::_ID12324( self.origin, 0.8, 1 ) )
            {
                if ( isdefined( self._ID43692 ) )
                {
                    var_2 = physicstrace( self._ID43692._ID53771._ID23570 + ( 0, 0, self.origin[2] + 4000 ), self._ID43692._ID53771._ID23570 + ( 0, 0, self.origin[2] - 1000 ) );
                    var_2 += ( 0, 0, 5 );

                    if ( !_ID42407::_ID12324( var_2, 0.8, 1 ) )
                        self vehicle_teleport( var_2, ( 0, vectortoyaw( self._ID43692._ID53771._ID23570 - self._ID43692._ID53771._ID28484._ID23570 ), 0 ) );
                    else
                    {
                        waittillframeend;
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
        waittillframeend;
    }
}

_ID51821()
{
    level endon( "player_starts_snowmobile_trip" );

    if ( _ID42237::_ID14385( "player_starts_snowmobile_trip" ) )
        return;

    foreach ( var_1 in level._ID49452 )
    {
        if ( isalive( var_1 ) )
            var_1 waittill( "death" );
    }
}

_ID48022( var_0 )
{
    level endon( "player_starts_snowmobile_trip" );

    if ( _ID42237::_ID14385( "player_starts_snowmobile_trip" ) )
        return;

    var_1 = spawn( "script_origin", var_0 gettagorigin( "tag_driver" ) );
    var_1.angles = var_0 gettagangles( "tag_driver" );
    var_1 _ID42259::_ID3074( level._ID28543, "run_to_snowmobile" );
    var_1 _ID42259::_ID3111( level._ID28543, "run_to_snowmobile" );
    level._ID28543 animscripts\shared::_ID26732( level._ID28543.weapon, "none" );
    level._ID28543 _ID42407::_ID14803( level._ID53839, "primary" );
    var_0 thread _ID42412::_ID17557( level._ID28543 );
    var_1 delete();
}

_ID50756()
{
    _ID42475::_ID34575( "start_icepick_checkpoint" );
    level._ID54177 = 0;

    if ( getdvar( "moto_drive" ) == "" )
        setdvar( "moto_drive", "0" );

    maps\cliffhanger::_ID45912();
    maps\cliffhanger_stealth::_ID43641();

    if ( isdefined( level._ID28543._ID1644 ) )
        level._ID28543 _ID42389::_ID36248();

    _ID42389::_ID10971();
    _ID42237::_ID14402( "player_in_hanger" );
    _ID42237::_ID14402( "hanger_slowmo_ends" );
    _ID42237::_ID14402( "start_big_explosion" );
    _ID42237::_ID14402( "player_slides_down_hill" );
    _ID42237::_ID14402( "start_busted_music" );
    _ID50343::_ID46928();
    level notify( "stop_price_shield" );

    if ( !isdefined( level._ID28543._ID22746 ) )
        level._ID28543 thread _ID42407::_ID22746();

    level notify( "stop_price_shield" );
    level._ID28543._ID4867 = 1;
    var_0 = getent( "player_snowmobile_spawner", "targetname" );
    level.player _ID42407::_ID37404( var_0 );
    wait 1.5;
    var_1 = getent( "price_icepick_snowmobile_org", "targetname" );
    level._ID28543 _ID42407::_ID14803( "ak47_arctic", "primary" );
    level._ID28543 _ID42407::_ID37404( var_1 );
    thread _ID51739();
    thread maps\cliffhanger_snowmobile_code::_ID45130();
    thread _ID49359::_ID48104();
}

_ID46598( var_0 )
{
    _ID42475::_ID34575( "start_snowmobile_checkpoint" );
    level._ID54177 = 0;

    if ( getdvar( "moto_drive" ) == "" )
        setdvar( "moto_drive", "0" );

    var_1 = getaiarray( "axis" );

    foreach ( var_3 in var_1 )
        var_3 delete();

    if ( !isdefined( var_0 ) )
    {
        maps\cliffhanger::_ID45912();
        maps\cliffhanger_stealth::_ID43641();
    }

    if ( isdefined( level._ID28543._ID1644 ) )
        level._ID28543 _ID42389::_ID36248();

    _ID42389::_ID10971();
    _ID42237::_ID14402( "player_in_hanger" );
    _ID42237::_ID14402( "hanger_slowmo_ends" );
    _ID42237::_ID14402( "start_big_explosion" );
    _ID50343::_ID46928();
    level notify( "stop_price_shield" );

    if ( !isdefined( level._ID28543._ID22746 ) )
        level._ID28543 thread _ID42407::_ID22746();

    var_5 = getentarray( "magic_bullet_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1408 );
    var_6 = getent( "god_vehicle_spawner", "script_noteworthy" );
    var_6._ID31516 = undefined;
    var_6.target = "price_snowmobile_path";
    var_7 = undefined;
    var_8 = var_6 _ID42407::_ID35192();
    var_8._ID47178 = 250;
    level._ID28543 _ID42407::_ID14803( level._ID53839, "primary" );
    var_8 thread _ID42412::_ID17557( level._ID28543 );
    var_8 maps\cliffhanger_snowmobile_code::_ID45858();
    var_8 thread _ID42411::_ID17021();
    var_8 thread maps\cliffhanger_snowmobile_code::_ID51832();
    level notify( "stop_price_shield" );
    level._ID28543._ID4867 = 0;
    var_9 = getent( "player_snowmobile_spawner", "targetname" );
    level._ID48727 = var_9 _ID42407::_ID35192();
    level._ID53165 = var_8;
    level._ID48727 thread _ID44905::_ID50469();
    level.player _ID42407::_ID27557( level._ID48727 );
    waitframe;
    _ID42237::_ID14402( "player_rides_snowmobile" );
    _ID42237::_ID14402( "player_slides_down_hill" );
    var_14 = getent( "player_snowmobile_block", "targetname" );
    var_14 delete();
    thread _ID49359::_ID52826();
    level._ID53165 thread adjust_price_snowmobile_jump();
    level._ID53165 thread resolve_stuck_price_snowmobile();
}

_ID52489()
{
    setsaveddvar( "hud_showStance", "0" );
    level._ID49803 = spawn( "script_origin", ( -57787.7, 41002, -24529.4 ) );
    level._ID49803.angles = ( -15, 52.838, 0 );
    _ID42237::_ID14402( "escape_with_soap" );
    level notify( "kill_variable_blizzard" );
    thread maps\cliffhanger_snowmobile_code::_ID46844();
    thread _ID45933();
    level._ID44434 = 3;
    thread _ID49177();
    thread _ID44650();
    thread _ID45859();
    thread _ID47871();
    thread _ID49433();
    thread _ID44938();
    thread _ID48943( "delete_mountains", 1 );
    thread _ID48943( "player_starts_snowmobile_trip", 2 );
    var_0 = getentarray( "player_top_speed_limit_trigger", "targetname" );
    _ID42237::_ID3350( var_0, maps\cliffhanger_snowmobile_code::_ID51213 );
    var_1 = getentarray( "kill_enemy_snowmobile", "targetname" );
    _ID42237::_ID3350( var_1, maps\cliffhanger_snowmobile_code::_ID44520 );
    var_2 = getentarray( "player_path_trigger", "targetname" );
    _ID42237::_ID3350( var_2, maps\cliffhanger_snowmobile_code::_ID47537 );
    thread maps\cliffhanger_snowmobile_code::_ID45687();
    thread _ID47557();
    thread _ID51220();
    _ID42407::_ID1985( _ID42237::_ID14413, "snowmobile_fog_clears" );
    _ID42407::_ID1890( _ID42237::_ID14388, "ai_snowmobiles_ram_player" );
    thread _ID42407::_ID11231();

    if ( !isalive( level._ID28543 ) )
        return;

    _ID42237::_ID14402( "reached_top" );
    _ID42237::_ID14413( "player_rides_snowmobile" );
    setsaveddvar( "ui_hideMap", "1" );
    setsaveddvar( "fx_marks_lruPriority", 2 );
    level.player takeallweapons();
    var_3 = getentarray( "fence_plank", "targetname" );
    _ID42237::_ID3350( var_3, ::_ID44245 );
    level._ID22610 = 2000;

    if ( level.player.deathinvulnerabletime > 2000 )
        level.player.deathinvulnerabletime = 2000;

    thread _ID53902();
    var_4 = level._ID48727;
    level.player thread _ID50343::_ID44064( var_4.origin );
    _ID42237::_ID14402( "player_gets_on_snowmobile" );
    _ID42407::_ID32255( ::_ID46079 );
    thread _ID49359::_ID52826();
    thread maps\cliffhanger_snowmobile_code::_ID49505();
    _ID42407::_ID29534( "axis", maps\cliffhanger_code::_ID53499 );
    thread maps\cliffhanger_snowmobile_code::_ID48603();
    level.player._ID4878 = 1;
    level.ignorerandombulletdamage = 1;
    level._ID11635 = 0;
    level._ID4449 = 0;
    setsaveddvar( "sm_sunSampleSizeNear", 1 );
    _ID42407::_ID4422( "ride_the_bike" );
    level._ID47297 = 0;
    wait 2.4;
    _ID42407::_ID1985( _ID42237::_ID14413, "snowmobile_fog_clears" );
    thread _ID42407::_ID11231();
    thread maps\cliffhanger_snowmobile_code::_ID45328();
    thread maps\cliffhanger_snowmobile_code::_ID48961();
    _ID42407::_ID1985( _ID42237::_ID14413, "price_get_speed_up" );
    _ID42407::_ID1890( _ID42407::_ID28864, "cliff_pri_pinthrottle" );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "player_reaches_hilltop" );
    level._ID53165 vehphys_disablecrashing();
    level._ID48727 vehphys_disablecrashing( 1 );
    level._ID28543 animscripts\custom\snowmobile::_ID46580();
    thread maps\cliffhanger_snowmobile_code::_ID54066();
    level._ID47317 = -6000;
    _ID42407::_ID28864( "cliff_hp1_status" );
    _ID42407::_ID28864( "cliff_pri_almostthere" );
    _ID42237::_ID14413( "there_is_chopper" );
    _ID42407::_ID28864( "cliff_pri_thechopper" );
    _ID42407::_ID28864( "cliff_hp1_fumes" );
    thread _ID42407::_ID28864( "cliff_crc_gotacs" );
    _ID42237::_ID14413( "ending_heli_flies_in" );

    if ( getdvarint( "use_old_cliffhanger_ending", 0 ) )
    {
        _ID42237::_ID14413( "end_begins" );
        wait 2.5;
        var_5 = _ID42313::_ID9125( "black", 0, level.player );
        var_5 fadeovertime( 1 );
        var_5.alpha = 1;
        _ID42475::_ID34575( "start_fade_out_level" );
        wait 2;
        _ID42407::_ID24793();
    }
    else
        thread _ID47267();
}

h2_monitor_airport_video_skip()
{
    for (;;)
    {
        if ( getdvar( "ui_stop_airport_movie" ) == "1" )
        {
            var_0 = _ID42313::_ID9125( "black", 1, level.player );
            waittillframeend;
            waittillframeend;
            stopcinematicingame();
            _ID42407::_ID24793();
            var_0 destroy();
            return;
        }

        waittillframeend;
    }
}

_ID47267()
{
    _ID42237::_ID14413( "h2_ending_ends" );
    var_0 = _ID42313::_ID9125( "black", 0, level.player );
    var_0 fadeovertime( 2.5 );
    var_0.alpha = 1;
    _ID42475::_ID34575( "start_fade_out_level" );
    wait 2.5;
    _ID42407::_ID24793();
    var_0 destroy();
}

_ID46079()
{
    level._ID10851["longRegenTime"]["easy"] = 2000;
    level._ID10851["longRegenTime"]["normal"] = 2000;
    level._ID10851["longRegenTime"]["hardened"] = 2000;
    level._ID10851["longRegenTime"]["veteran"] = 2000;
}

_ID53902()
{
    wait 2.5;
    thread _ID42407::_ID28864( "cliff_pri_enroute" );
    thread _ID42407::_ID28864( "cliff_hp1_seeyouatbravo" );
}

_ID50141()
{
    self waittill( "veh_landed" );
    self._ID48744 = gettime();
}

_ID51220()
{
    _ID42237::_ID14413( "snowmobile_jump" );
    _ID42475::_ID34575( "aud_stop_mix_snowmobile_descent" );
    _ID42475::_ID34575( "aud_start_mix_snowmobile_jump" );
    level.player playsound( "scn_cliff_snowmobile_jump" );
    var_0 = _ID42237::_ID16638( "ending_fuel_explosion", "targetname" );
    wait 0.5;

    for (;;)
    {
        radiusdamage( var_0.origin, var_0.radius, 50000, 50000, level._ID28543 );

        if ( !isdefined( var_0.target ) )
            return;

        var_0 = _ID42237::_ID16638( var_0.target, "targetname" );
        wait 0.15;
    }
}

_ID47557()
{
    _ID42237::_ID14413( "player_survived_minijump" );
    var_0 = getaiarray( "axis" );
    setsaveddvar( "vehNotifyHitEntityWithVehContactEvent", 1 );
    _ID42237::_ID3350( var_0, ::_ID46150 );
}

_ID46150()
{
    self endon( "guy_entered" );

    for (;;)
    {
        self waittill( "veh_contact",  var_0  );

        if ( !isdefined( level.player._ID40065 ) )
            break;

        if ( var_0 == level.player || var_0 == level.player._ID40065 )
        {
            self._ID34237 = 1;
            var_1 = vectornormalize( self.origin - var_0.origin );
            var_1 += ( 0, 0, 0.5 );
            var_1 *= 4000;
            self startragdollfromimpact( "torso_lower", var_1 );
            break;
        }
    }
}

_ID49336()
{
    _ID42237::_ID14413( "snowmobile_jump" );
    wait 0.4;
    wait 2.6;

    if ( level.player._ID40065 vehicle_getspeed() > 50 )
        level.player._ID40065 vehicle_setspeed( 50, 20, 20 );
}

_ID50717()
{
    _ID42237::_ID14413( "player_falls_to_avalanche_section" );
    var_0 = _ID42407::_ID16268( "player_falls_to_avalanche_section" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = getent( var_1.target, "targetname" );
    var_1 linkto( var_2 );
    var_2.origin = level.player.origin;
    var_3 = level.player._ID40065.angles;
    var_3 = ( 0, var_3[1], 0 );
    var_2.angles = var_3;
    _ID42237::_ID14402( "avalanche_begins" );
}

_ID35646()
{
    _ID50343::_ID46928();
    level._ID54177 = 0;

    if ( getdvar( "moto_drive" ) == "" )
        setdvar( "moto_drive", "0" );

    maps\cliffhanger::_ID45912();
    maps\cliffhanger_stealth::_ID43641();
    var_0 = getentarray( "enemy_snowmobile_chase_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID46572 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    thread _ID49359::_ID52826();
}

_ID53172()
{
    _ID42237::_ID14402( "reached_top" );
    level._ID28543.ignoreall = 1;

    foreach ( var_1 in level._ID9242 )
        var_1 thread _ID42237::_ID26402();

    level.player.attackeraccuracy = 0;
    level._ID50466 = [];
    var_3 = getentarray( "avalanche_chase_vehicle_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_3, maps\cliffhanger_snowmobile_code::_ID47342 );
    thread maps\cliffhanger_snowmobile_code::_ID53661();
    thread _ID52650();
    _ID42237::_ID14402( "avalanche_ride_starts" );
    var_4 = _ID42411::_ID35195( "player_end_ride" );
    level._ID51355 = var_4;
    var_5 = getent( "avalanche_progress_org", "targetname" );
    var_6 = getent( var_5.target, "targetname" );
    level.player._ID4878 = 1;
    level.ignorerandombulletdamage = 1;
    var_4 thread maps\cliffhanger_snowmobile_code::_ID45101();
    thread maps\cliffhanger_snowmobile_code::_ID45715();
    level.player disableweapons();

    if ( isdefined( level.player._ID40065 ) )
    {
        level.player._ID40065 useby( level.player );
        level.player._ID11803 = level.player._ID40065;
        level.player._ID40065 delete();
        level.player._ID40065 = undefined;
    }

    var_7 = _ID42407::_ID35028( "player_rig" );
    var_7 hide();
    var_8 = _ID42237::_ID35164();
    var_8 linkto( var_7, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level.player playersetgroundreferenceent( var_8 );
    level.player playerlinktodelta( var_7, "tag_player", 1, 0, 0, 0, 0 );
    _ID42407::_ID10226( 2.5, maps\cliffhanger_code::_ID53243, var_7, "tag_player" );
    var_9 = [];
    var_9[0] = level._ID28543;
    var_9[1] = var_7;
    level._ID28543 _ID42407::_ID17509();

    if ( isdefined( level._ID28543._ID22746 ) )
        level._ID28543 _ID42407::_ID36519();

    var_10 = getent( "crash_recovery", "targetname" );
    var_11 = spawn( "script_origin", var_10.origin );
    var_11.angles = var_10.angles;
    level._ID28543 _ID42407::_ID10226( 3.5, _ID42407::_ID10805, "i_drive" );
    _ID42407::_ID10226( 12.5, _ID42407::_ID28871, "avalanche" );
    _ID42407::_ID10226( 16.5, _ID42407::_ID28871, "moretangos" );
    var_11 _ID42259::_ID3099( var_9, "crash_rescue" );
    var_8 = _ID42237::_ID35164();
    var_8.origin = var_4.origin;
    var_8.angles = var_4.angles;
    var_12 = spawnstruct();
    var_12._ID337 = var_8;
    var_12._ID409 = -20;
    var_12._ID1251 = 10;
    var_12._ID893 = 0;
    var_12._ID41911 = 180;
    var_12 _ID42407::_ID38694();
    var_8 linkto( var_4 );
    level.player playersetgroundreferenceent( undefined );
    var_13 = 0.5;
    var_7 delete();
    level.player playerlinktoblend( var_8, "tag_origin", var_13, var_13 * 0.2, var_13 * 0.2 );
    _ID42407::_ID10226( var_13 + 0.1, maps\cliffhanger_code::_ID53243, var_8, "tag_origin" );
    level._ID28543 delete();
    level.player enableweapons();
    thread _ID42411::_ID17021( var_4 );
    var_4 vehphys_disablecrashing();
    wait 0.5;
    wait 2.0;
    level._ID52515 = [];
    var_14 = _ID42411::_ID35199( "avalance_vehicle" );
    _ID42237::_ID3350( var_14, maps\cliffhanger_snowmobile_code::_ID47862 );
    _ID42234::_ID13611( 2 );
    _ID42237::_ID14413( "avalanche_reconstitutes" );
    wait 2.5;
    _ID42237::_ID14413( "the_end" );
    wait 6;
    var_15 = _ID42313::_ID9125( "black", 0, level.player );
    var_15 fadeovertime( 1 );
    var_15.alpha = 1;
    wait 2;
    _ID42407::_ID24793();
}

_ID52650()
{
    _ID42237::_ID14413( "avalanche_heli_attacks" );
    var_0 = getent( "avalanche_heli", "targetname" );
    var_1 = var_0 _ID42407::_ID35192();
    var_1 _ID42411::_ID17021();
    var_2 = level._ID51355 vehicle_getspeed();
    var_1._ID53680 = 900;
    maps\cliffhanger_snowmobile_code::_ID52894( 2300 );
    var_1 _ID42407::_ID10226( 5, maps\cliffhanger_snowmobile_code::_ID43489 );
    var_1 setgoalyaw( 90 );
    var_1 waittill( "reached_dynamic_path_end" );
    var_3 = getent( "avalanche_heli_crash", "targetname" );
    var_1 = var_1 _ID42411::_ID40283();
    var_1 _ID42407::_ID3428( "heli" );
    _ID42407::_ID10226( 1.5, maps\cliffhanger_snowmobile_code::_ID52894, 500 );
    var_3 _ID42259::_ID3111( var_1, "avalanche_heli_wipeout" );
}

_ID49177()
{
    _ID42237::_ID14413( "downhill_autosave" );

    if ( level.player.health < 75 )
        return;

    var_0 = savegamenocommit( "blah", &"AUTOSAVE_AUTOSAVE" );
    level.player endon( "death" );
    _ID42237::_ID14413( "downhill_autosave_failsafe" );

    if ( !commitwouldbevalid( var_0 ) )
        return;

    commitsave( var_0 );
}

_ID44650()
{
    _ID42237::_ID14413( "enemy_snowmobiles_wipe_out" );

    foreach ( var_1 in level._ID52919 )
        var_1 thread _ID43503();
}

_ID43503()
{
    self endon( "death" );
    wait(randomfloatrange( 5, 12 ));

    if ( !isdefined( self ) )
        return;

    self._ID41798 = 1;
}

_ID45859()
{
    _ID42237::_ID14413( "destroyed_fallen_tree_cliffhanger01" );
    level._ID44434 = 4;
}

_ID47871()
{
    level endon( "snowmobile_jump" );
    _ID42237::_ID14413( "player_rides_snowmobile" );
    level.player._ID40065 endon( "veh_collision" );
    level endon( "player_crashes" );
    _ID42237::_ID14413( "bad_heli_goes_to_death_position" );

    for (;;)
    {
        if ( !isdefined( level.player._ID40065 ) )
            return;

        if ( level.player._ID40065.veh_speed >= 120 )
            break;

        wait 0.05;
    }

    var_0 = level.player._ID40065.veh_speed;

    for (;;)
    {
        if ( !isdefined( level.player._ID40065 ) )
            return;

        if ( level.player._ID40065.veh_speed < var_0 - 35 )
            break;

        var_0 = level.player._ID40065.veh_speed;
        wait 0.05;
    }

    level.player._ID40065 notify( "veh_collision" );
}

_ID44245()
{
    for (;;)
    {
        var_0 = _ID46594( level._ID28543._ID40065 );
        var_1 = _ID46594( level.player._ID40065 );

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

_ID46594( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 500;

    return distance( var_0.origin, self.origin );
}

_ID45933()
{
    _ID42237::_ID14413( "player_rides_snowmobile" );

    if ( getdvar( "scr_hide_snowmobile" ) == "1" )
        level._ID48727 hide();
}

_ID48943( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    _func_31c( var_1 );
}

_ID49433()
{
    _ID42237::_ID14413( "magic_rocket_flag" );
    var_0 = _ID42237::_ID16638( "magic_rocket_start", "targetname" );
    var_1 = _ID42237::_ID16638( "magic_rocket_end", "targetname" );
    var_2 = magicbullet( "rpg_straight", var_0.origin, var_1.origin );
    var_2 waittill( "death" );
    playfx( level._ID1426["large_snow_explode"], var_1.origin );
}

_ID44938()
{
    for (;;)
    {
        if ( _ID42237::_ID14385( "fade_to_death" ) || !isalive( level.player ) && _ID42237::_ID14385( "snowmobile_jump" ) && !_ID42237::_ID14385( "made_jump" ) )
            break;

        waittillframeend;
    }

    maps\cliffhanger_code::_ID54496();
}
