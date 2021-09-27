// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52277()
{
    level._ID54177 = 0;

    if ( _func_039( "moto_drive" ) == "" )
        _func_034( "moto_drive", "0" );

    maps\cliffhanger::_ID45912();
    maps\cliffhanger_stealth::_ID43641();
    var_0 = _func_1A2( "enemy_snowmobile_chase_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID46572 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_1 = _func_1A1( "price_snowmobile_start", "targetname" );
    level._ID28543 _meth_81D2( var_1._ID740, var_1._ID65 );
    level._ID28543 _meth_81B2( var_1._ID740 );
    level._ID28543._ID507 = 1;
    level._ID28543._ID512 = 1;
    var_1 = _func_1A1( "player_snowmobile_start", "targetname" );
    level._ID794 _meth_8343( var_1._ID740 );
    level._ID794 _meth_8345( var_1._ID65 );
    _ID42237::_ID14402( "hanger_reinforcements" );
}

_ID50508()
{
    var_0 = _func_0C8( "price_slide_catchup", "targetname" );

    if ( _ID42237::_ID14385( "player_slides_down_hill" ) )
        level._ID28543 _ID42407::_ID37404( var_0 );

    var_1 = _func_1A1( "cliffhanger_slide", "targetname" );
    var_1 thread _ID42259::_ID3074( level._ID28543, "hill_slide" );
    level._ID28543 endon( "goal" );
    _ID42237::_ID14413( "player_slides_down_hill" );

    if ( level._ID28543._ID740[1] > var_0._ID740[1] )
        level._ID28543 _ID42407::_ID37404( var_0 );

    level._ID28543 waittill( "goal" );
}

_ID48314()
{
    var_0 = _func_1A1( "cliffhanger_slide", "targetname" );
    _unknown_0139();
    level._ID28543 _ID42407::_ID10226( 1, animscripts\notetracks::_ID25058 );
    _ID42237::_ID14402( "price_reaches_bottom" );
    level._ID28543 _ID42407::_ID10973();
    var_0 _ID42259::_ID3111( level._ID28543, "hill_slide" );
}

_ID51739()
{
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID45456::_ID54623( var_2 );
        var_2 _meth_8058();
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A2( "hill_attack_spawner", "targetname" );
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
    var_5 = _func_1A2( "clifftop_mobile_spawner", "targetname" );
    _ID42237::_ID3350( var_5, ::_unknown_02FE );
    wait 2;
    _ID42237::_ID14402( "cliff_guys_all_dead" );
    level._ID44226 = _func_03D();
    level._ID40069["script_vehicle_snowmobile_friendly"][0]._ID47849 = 1;
    level._ID40069["script_vehicle_snowmobile_friendly"][1]._ID47849 = 1;
    level._ID40069["script_vehicle_snowmobile_friendly"][0]._ID46105 = level._ID30895["snowmobile"]["small"]["death"]["left"];
    level._ID40069["script_vehicle_snowmobile_friendly"][1]._ID46105 = level._ID30895["snowmobile"]["small"]["death"]["back"];
    _unknown_0499();
}

_ID52936()
{
    maps\cliffhanger_code::_ID48160( "obj_exfiltrate", level._ID28543 );
    maps\cliffhanger_code::_ID54025( "obj_exfiltrate", &"SCRIPT_WAYPOINT_COVER" );
}

_ID50913()
{
    var_0 = _ID42237::_ID16638( "mig_obj_struct", "targetname" );
    var_1 = var_0._ID740;
    var_2 = "obj_exfiltrate";
    maps\cliffhanger_code::_ID54163( var_2, var_1 );
    maps\cliffhanger_code::_ID54025( var_2, "" );
    level thread maps\cliffhanger_snowmobile_code::_ID43598( var_2, var_1 );
}

_ID48234()
{
    var_0 = _ID42237::_ID16638( "final_obj_struct", "targetname" );
    var_1 = var_0._ID740;
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

    if ( _func_03D() > self._ID48881 )
    {
        var_2 = undefined;

        switch ( var_0._ID922 )
        {

        }

        if ( _func_02F( var_2 ) )
        {
            thread _ID42407::_ID10805( var_2 );

            if ( _func_02F( var_1 ) )
            {
                _ID42407::_ID10226( 1.5, var_1 );
                var_1 = undefined;
            }

            _unknown_0455();
        }
    }

    self waittill( "goal" );
    var_3 = [];

    switch ( var_0._ID922 )
    {

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
        _unknown_04D9();

        if ( _func_02F( var_1 ) )
        {
            _ID42407::_ID10226( 1.5, var_1 );
            var_1 = undefined;
        }

        _ID42407::_ID10805( var_2 );
        wait(_func_0BA( 5, 7 ));
    }

    case "final_spot":
    case "last_mig":
    case "central_jeeps":
    case "cinderblock_wall":
    case "final_spot":
    case "last_mig":
    case "central_jeeps":
}

_ID54478()
{
    var_0 = 4800;
    var_1 = 1800;

    if ( level._ID15361 >= 2 )
        var_0 += 2500;

    self._ID48881 = _func_03D() + _func_0BA( var_0, var_0 + var_1 );
}

_ID52585()
{
    thread _ID42407::_ID1947( maps\cliffhanger_snowmobile_code::_ID43153 );

    if ( _func_02F( self._ID916 ) )
    {
        self._ID916 = undefined;
        _ID42237::_ID14413( "cliff_guys_all_dead" );
    }

    thread _ID42411::_ID35194();
}

_ID53546()
{
    _ID42237::_ID14413( "tarmac_snowmobiles_spawned" );
    var_0 = _func_03D();

    for (;;)
    {
        if ( _func_03D() > var_0 + 2500 )
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
    level._ID28543._ID811 = self._ID922;
}

_ID53114()
{
    level endon( "player_slides_down_hill" );
    var_0 = _func_1A1( "tarmac_destination", "targetname" );
    level._ID794._ID811 = "hanger";
    var_1 = _func_1A2( "player_position_trigger", "targetname" );
    _ID42237::_ID3350( var_1, maps\cliffhanger_snowmobile_code::_ID43916 );
    var_2 = _func_1A2( "price_progress_trigger", "targetname" );
    _ID42237::_ID3350( var_2, ::_unknown_05E0 );
    var_3 = level._ID28543;
    var_4 = _func_0C8( "price_tarmac_path", "targetname" );
    var_3._ID811 = var_4._ID922;
    var_3 _ID42407::_ID10871();
    var_3 _meth_81B1( var_4 );
    var_3._ID452 = 64;
    var_3._ID381 = 1;
    var_3._ID382 = 0;

    if ( maps\cliffhanger_code::_ID53109() )
        wait 2;
    else if ( level._ID794._ID811 == "hanger" )
        wait 5;

    _ID42237::_ID14402( "escape_with_soap" );
    var_3 _ID42407::_ID10805( "hugthewall" );

    if ( maps\cliffhanger_code::_ID53109() )
        wait 1.2;
    else
    {
        var_5 = _func_03D();
        var_3 _unknown_0712( var_4 );

        if ( level._ID794._ID811 == "hanger" )
            _ID42407::_ID40847( var_5, 5 );
    }

    var_3._ID465 = 0;
    var_3._ID51893 = 0;
    var_3._ID48881 = 0;
    thread _ID42407::_ID4422( "hugthewall" );
    level._ID794._ID4878 = 1;
    level._ID794._ID512 = 1;
    var_3 thread maps\cliffhanger_snowmobile_code::_ID43598( "obj_exfiltrate" );
    var_3._ID8274 = ::_unknown_061B;
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
    if ( !_func_02F( var_0[level._ID794._ID811] ) )
        return;

    self endon( "player_left_bad_positions" );
    _ID42407::_ID1985( ::_unknown_080D, var_0 );
    _ID42407::_ID1890( _ID42407::_ID31877, "player_left_bad_positions" );
    _ID42407::_ID1886( "next_goal" );
    thread _ID42407::_ID11231();

    if ( _func_02F( var_1 ) )
        wait(var_1);

    wait 4;
}

_ID43299( var_0, var_1 )
{
    thread _unknown_07D2( var_1 );

    for (;;)
    {
        if ( level._ID794._ID811 != var_0 )
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

        wait(_func_0BA( 5, 7 ));
    }
}

_ID52241( var_0, var_1 )
{
    if ( _func_02F( var_0[level._ID794._ID811] ) )
        return;

    self endon( "player_reached_good_position" );
    _ID42407::_ID1985( ::_unknown_0893, var_0 );
    _ID42407::_ID1890( _ID42407::_ID31877, "player_reached_good_position" );
    _ID42407::_ID1886( "next_goal" );
    thread _ID42407::_ID11231();

    if ( _func_02F( var_1 ) )
        wait(var_1);

    wait 4;
}

_ID46284( var_0 )
{
    level endon( "time_to_leave_hanger" );
    var_0 endon( "enemies_receded" );
    thread _unknown_0896( var_0 );
    var_1 = [];
    var_1["hanger"] = 1;
    var_2 = _unknown_08DF( var_1 );
}

_ID53726( var_0 )
{
    if ( !_func_02F( var_0._ID1191 ) )
        return;

    var_1 = _func_1A1( var_0._ID1191, "targetname" );

    if ( !_func_02F( var_1 ) )
        return;

    for (;;)
    {
        if ( _unknown_08DA( var_1 ) )
            break;

        wait 1.5;
    }

    var_0 notify( "enemies_receded" );
}

_ID52512( var_0 )
{
    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !var_3 _meth_80B0( var_0 ) )
            continue;

        if ( var_3 _ID42407::_ID11498() )
            continue;

        if ( _func_02F( var_3._ID7._ID8878 ) && var_3._ID7._ID8878 == "hide" )
            continue;

        if ( var_3 _meth_81D9() )
            continue;

        return 0;
    }

    var_clear_2
    var_clear_0
    return 1;
}

_ID51823( var_0 )
{
    for (;;)
    {
        level waittill( "new_player_position",  var_1  );

        if ( _func_02F( var_0[var_1] ) )
            return;
    }
}

_ID49784( var_0 )
{
    if ( !_func_02F( var_0[level._ID794._ID811] ) )
        return;

    for (;;)
    {
        level waittill( "new_player_position",  var_1  );

        if ( !_func_02F( var_0[level._ID794._ID811] ) )
            return;
    }
}

_ID54016()
{
    level._ID28543._ID4867 = 1;
    var_0 = _func_1A1( "price_icepick_snowmobile_org", "targetname" );
    var_1 = _func_1A2( "snowmobile_icepick_spawner", "targetname" );
    var_2 = _ID42407::_ID35028( "snowmobile" );
    var_2 _meth_805A();
    var_3 = _func_071( var_0._ID740, var_0._ID65, level._ID28543 _ID42407::_ID16120( "icepick_fight" ) );
    var_1[0]._ID3189 = "passenger";
    var_1[1] _meth_80B7();
    var_1[1] = undefined;
    var_0 _ID42259::_ID3141( var_1, "icepick_fight" );
    var_0 _ID42259::_ID3064( level._ID28543, "icepick_fight", undefined, "Cover Right" );
    _ID42407::_ID40847( level._ID44226, 3.5 );
    var_4 = _ID42407::_ID51768( "snowmobile_icepick_spawner" );
    var_5 = var_4[0];
    var_5._ID3189 = "passenger";
    var_6 = _func_1A1( "player_snowmobile_spawner", "targetname" );
    var_6._ID740 = var_2._ID740;
    var_6._ID65 = var_2._ID65;
    var_2 = var_6 _ID42407::_ID35192();
    var_2._ID3189 = "snowmobile";
    var_7 = [];
    var_7[var_7.size] = level._ID28543;
    var_7[var_7.size] = var_5;
    var_7[var_7.size] = var_2;
    var_0 thread _ID42259::_ID3099( var_7, "icepick_fight" );
    var_8 = _func_067( level._ID30895["snowmobile"]["icepick_fight"] );
    thread _ID49347::cheat_death_corpse_check( var_8 - 1.5 );
    var_2 _ID42259::_ID46741( "stop_lerp", level._ID30895["snowmobile"]["icepick_fight"], var_8 - 6, var_0 );
    wait 0.75;
    level._ID48727 = var_2;
    var_2 thread _ID44905::_ID50469();
    level._ID48727 thread _unknown_0B6F();
    thread _unknown_0B93();
    level._ID48727 _meth_823C();
    _ID42237::_ID14402( "player_snowmobile_available" );
    level._ID48727 waittill( "vehicle_mount",  var_9  );
    level._ID48727._ID51615 = 1;
    level._ID28543 _ID42407::_ID1868( ::_unknown_0B89 );
    var_10 = _func_0DE( "axis" );
    var_11 = var_10;

    for ( var_14 = _func_1DA( var_11 ); _func_02F( var_14 ); var_14 = _func_1BF( var_11, var_14 ) )
    {
        var_12 = var_11[var_14];
        var_13 = _func_0B8( 2 );
        var_12 _ID42407::_ID10226( var_13, ::_unknown_0BD0 );
    }

    var_clear_3
    var_clear_0
    var_15 = _func_1A1( "player_snowmobile_block", "targetname" );
    var_15 _meth_80B7();
    waitframe;
    _ID42237::_ID14402( "player_rides_snowmobile" );
    level._ID794._ID11803 = level._ID48727;
}

_ID44357( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( level._ID794._ID40065 ) )
        return;

    if ( var_1 != level._ID794._ID40065 )
        return;

    _func_034( "ui_deadquote", &"CLIFFHANGER_RUN_OVER" );
    _ID42407::_ID23778();
}

_ID45421()
{
    level._ID48727 endon( "vehicle_mount" );

    for (;;)
    {
        level._ID28543 thread _ID42407::_ID10805( "cliff_pri_takesnowmobile" );
        wait(_func_0BA( 9, 14 ));
        level._ID28543 thread _ID42407::_ID10805( "cliff_pri_snowmobileletsgo" );
        wait(_func_0BA( 9, 14 ));
    }
}

_ID54301()
{
    if ( _func_0F3( self._ID740, level._ID794._ID740 ) < 512 )
        self _meth_8058();
}

_ID54269()
{
    self endon( "death" );
    self._ID49 = 1;
    self._ID486 = 25;
    self waittillmatch( "single anim",  "end"  );
    _ID42407::_ID7854();
}

_ID53906()
{
    level._ID28543._ID511 = 0;
    level._ID28543._ID507 = 0;
    level._ID28543._ID512 = 0;

    if ( !level._ID48831.size )
        level waittill( "new_icepick_snowmobile" );

    var_0 = level._ID53165;
    var_0 _meth_82CA( 0 );
    var_0._ID47178 = 250;
    level._ID28543._ID35499 = 1;
    level._ID28543._ID4867 = 50;
    var_1 = level._ID49452;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_1A7( var_2 ) )
            continue;

        var_2._ID1204 = 50000;
    }

    var_clear_2
    var_clear_0
    _unknown_0DDE();
    level._ID40300["script_vehicle_snowmobile_friendly"]["default"] = [];

    while ( level._ID53165._ID1276 > 0 )
        wait 0.05;

    var_0._ID29965 = [];
    var_4 = var_0._ID39936;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_0._ID39936[var_6] = 0;
    }

    var_clear_2
    level._ID28543 _ID42407::_ID10973();
    _unknown_0E42( var_0 );
    level._ID28543._ID4867 = 1;
    var_7 = level._ID49452;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];

        if ( _func_1A7( var_8 ) )
            var_8 _meth_80B7();
    }

    var_clear_2
    var_clear_0

    if ( !var_0._ID29965.size )
    {
        var_0 thread _ID42259::_ID3020( level._ID28543, "snowmobile_driver_mount_dir1_short", "tag_driver" );
        var_0 thread _ID42412::_ID17557( level._ID28543 );
    }

    var_10 = _func_1F2( "price_snowmobile_path", "targetname" );
    var_11 = 15625.0;

    while ( !_ID42237::_ID14385( "player_rides_snowmobile" ) && _func_22D( level._ID794._ID740, var_0._ID740 ) <= var_11 )
        waittillframeend;

    var_0 _meth_8289( var_10 );
    var_0._ID1191 = var_10._ID1193;
    var_0 thread _ID42413::_ID16485( 1 );
    var_0 _meth_828E( 15, 5, 5 );
    var_0 thread maps\cliffhanger_snowmobile_code::_ID51832();
    level._ID28543 _ID42407::_ID29503( ::_unknown_0DCD );
    level._ID28543 _meth_8172();
    level._ID28543 _ID42407::_ID32352( 1 );
    wait 1;
    var_0 _meth_829B( 5 );
    _ID42237::_ID14413( "player_rides_snowmobile" );
    level._ID28543 _ID42407::_ID32352( 0 );
    level._ID53165 thread _unknown_0EB4();
    level._ID53165 thread _unknown_0EC2();
}

adjust_price_snowmobile_jump()
{
    for (;;)
    {
        if ( self._ID740[1] > 26300 )
        {
            self._ID1278 = 150;
            break;
        }

        waittillframeend;
    }
}

resolve_stuck_price_snowmobile()
{
    var_0 = 0;
    var_1 = self._ID740;

    for (;;)
    {
        if ( self._ID740[1] > 26300 )
            break;

        if ( _func_0F7( var_1 - self._ID740 ) < 1 )
            var_0 += 0.05;
        else
            var_0 = 0;

        if ( var_0 > 3 )
        {
            if ( !_ID42407::_ID12324( self._ID740, 0.8, 1 ) )
            {
                if ( _func_02F( self._ID43692 ) )
                {
                    var_2 = _func_091( self._ID43692._ID53771._ID23570 + ( 0, 0, self._ID740[2] + 4000 ), self._ID43692._ID53771._ID23570 + ( 0, 0, self._ID740[2] - 1000 ) );
                    var_2 += ( 0, 0, 5 );

                    if ( !_ID42407::_ID12324( var_2, 0.8, 1 ) )
                        self _meth_8286( var_2, ( 0, _func_11B( self._ID43692._ID53771._ID23570 - self._ID43692._ID53771._ID28484._ID23570 ), 0 ) );
                    else
                    {
                        waittillframeend;
                        continue;
                    }
                }
                else
                {
                    var_3 = _func_11F( self._ID65 );
                    var_4 = _func_25B( self._ID65 );
                    self _meth_8286( self._ID740 - 36 * var_3, var_4 );
                }

                var_0 = 0;
            }
        }

        var_1 = self._ID740;
        waittillframeend;
    }
}

_ID51821()
{
    level endon( "player_starts_snowmobile_trip" );

    if ( _ID42237::_ID14385( "player_starts_snowmobile_trip" ) )
        return;

    var_0 = level._ID49452;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_1A7( var_1 ) )
            var_1 waittill( "death" );
    }

    var_clear_2
    var_clear_0
}

_ID48022( var_0 )
{
    level endon( "player_starts_snowmobile_trip" );

    if ( _ID42237::_ID14385( "player_starts_snowmobile_trip" ) )
        return;

    var_1 = _func_06A( "script_origin", var_0 _meth_818C( "tag_driver" ) );
    var_1._ID65 = var_0 _meth_818D( "tag_driver" );
    var_1 _ID42259::_ID3074( level._ID28543, "run_to_snowmobile" );
    var_1 _ID42259::_ID3111( level._ID28543, "run_to_snowmobile" );
    level._ID28543 animscripts\shared::_ID26732( level._ID28543._ID1302, "none" );
    level._ID28543 _ID42407::_ID14803( level._ID53839, "primary" );
    var_0 thread _ID42412::_ID17557( level._ID28543 );
    var_1 _meth_80B7();
}

_ID50756()
{
    _ID42475::_ID34575( "start_icepick_checkpoint" );
    level._ID54177 = 0;

    if ( _func_039( "moto_drive" ) == "" )
        _func_034( "moto_drive", "0" );

    maps\cliffhanger::_ID45912();
    maps\cliffhanger_stealth::_ID43641();

    if ( _func_02F( level._ID28543._ID1644 ) )
        level._ID28543 _ID42389::_ID36248();

    _ID42389::_ID10971();
    _ID42237::_ID14402( "player_in_hanger" );
    _ID42237::_ID14402( "hanger_slowmo_ends" );
    _ID42237::_ID14402( "start_big_explosion" );
    _ID42237::_ID14402( "player_slides_down_hill" );
    _ID42237::_ID14402( "start_busted_music" );
    _ID50343::_ID46928();
    level notify( "stop_price_shield" );

    if ( !_func_02F( level._ID28543._ID22746 ) )
        level._ID28543 thread _ID42407::_ID22746();

    level notify( "stop_price_shield" );
    level._ID28543._ID4867 = 1;
    var_0 = _func_1A1( "player_snowmobile_spawner", "targetname" );
    level._ID794 _ID42407::_ID37404( var_0 );
    wait 1.5;
    var_1 = _func_1A1( "price_icepick_snowmobile_org", "targetname" );
    level._ID28543 _ID42407::_ID14803( "ak47_arctic", "primary" );
    level._ID28543 _ID42407::_ID37404( var_1 );
    thread _unknown_0DC9();
    thread maps\cliffhanger_snowmobile_code::_ID45130();
    thread _ID49359::_ID48104();
}

_ID46598( var_0 )
{
    _ID42475::_ID34575( "start_snowmobile_checkpoint" );
    level._ID54177 = 0;

    if ( _func_039( "moto_drive" ) == "" )
        _func_034( "moto_drive", "0" );

    var_1 = _func_0DE( "axis" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_80B7();
    }

    var_clear_2
    var_clear_0

    if ( !_func_02F( var_0 ) )
    {
        maps\cliffhanger::_ID45912();
        maps\cliffhanger_stealth::_ID43641();
    }

    if ( _func_02F( level._ID28543._ID1644 ) )
        level._ID28543 _ID42389::_ID36248();

    _ID42389::_ID10971();
    _ID42237::_ID14402( "player_in_hanger" );
    _ID42237::_ID14402( "hanger_slowmo_ends" );
    _ID42237::_ID14402( "start_big_explosion" );
    _ID50343::_ID46928();
    level notify( "stop_price_shield" );

    if ( !_func_02F( level._ID28543._ID22746 ) )
        level._ID28543 thread _ID42407::_ID22746();

    var_5 = _func_1A2( "magic_bullet_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1408 );
    var_6 = _func_1A1( "god_vehicle_spawner", "script_noteworthy" );
    var_6._ID31516 = undefined;
    var_6._ID1191 = "price_snowmobile_path";
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
    var_9 = _func_1A1( "player_snowmobile_spawner", "targetname" );
    level._ID48727 = var_9 _ID42407::_ID35192();
    level._ID53165 = var_8;
    level._ID48727 thread _ID44905::_ID50469();
    level._ID794 _ID42407::_ID27557( level._ID48727 );
    waitframe;
    _ID42237::_ID14402( "player_rides_snowmobile" );
    _ID42237::_ID14402( "player_slides_down_hill" );
    var_14 = _func_1A1( "player_snowmobile_block", "targetname" );
    var_14 _meth_80B7();
    thread _ID49359::_ID52826();
    level._ID53165 thread _unknown_1275();
    level._ID53165 thread _unknown_1283();
}

_ID52489()
{
    _func_0DB( "hud_showStance", "0" );
    level._ID49803 = _func_06A( "script_origin", ( -57787.7, 41002, -24529.4 ) );
    level._ID49803._ID65 = ( -15, 52.838, 0 );
    _ID42237::_ID14402( "escape_with_soap" );
    level notify( "kill_variable_blizzard" );
    thread maps\cliffhanger_snowmobile_code::_ID46844();
    thread _unknown_1710();
    level._ID44434 = 3;
    thread _unknown_16A2();
    thread _unknown_16B9();
    thread _unknown_16D3();
    thread _unknown_16DC();
    thread _unknown_1738();
    thread _unknown_1754();
    thread _unknown_1742( "delete_mountains", 1 );
    thread _unknown_174C( "player_starts_snowmobile_trip", 2 );
    var_0 = _func_1A2( "player_top_speed_limit_trigger", "targetname" );
    _ID42237::_ID3350( var_0, maps\cliffhanger_snowmobile_code::_ID51213 );
    var_1 = _func_1A2( "kill_enemy_snowmobile", "targetname" );
    _ID42237::_ID3350( var_1, maps\cliffhanger_snowmobile_code::_ID44520 );
    var_2 = _func_1A2( "player_path_trigger", "targetname" );
    _ID42237::_ID3350( var_2, maps\cliffhanger_snowmobile_code::_ID47537 );
    thread maps\cliffhanger_snowmobile_code::_ID45687();
    thread _unknown_15A6();
    thread _unknown_158A();
    _ID42407::_ID1985( _ID42237::_ID14413, "snowmobile_fog_clears" );
    _ID42407::_ID1890( _ID42237::_ID14388, "ai_snowmobiles_ram_player" );
    thread _ID42407::_ID11231();

    if ( !_func_1A7( level._ID28543 ) )
        return;

    _ID42237::_ID14402( "reached_top" );
    _ID42237::_ID14413( "player_rides_snowmobile" );
    _func_0DB( "ui_hideMap", "1" );
    _func_0DB( "fx_marks_lruPriority", 2 );
    level._ID794 _meth_831B();
    var_3 = _func_1A2( "fence_plank", "targetname" );
    _ID42237::_ID3350( var_3, ::_unknown_17CA );
    level._ID22610 = 2000;

    if ( level._ID794._ID266 > 2000 )
        level._ID794._ID266 = 2000;

    thread _unknown_15F9();
    var_4 = level._ID48727;
    level._ID794 thread _ID50343::_ID44064( var_4._ID740 );
    _ID42237::_ID14402( "player_gets_on_snowmobile" );
    _ID42407::_ID32255( ::_unknown_1601 );
    thread _ID49359::_ID52826();
    thread maps\cliffhanger_snowmobile_code::_ID49505();
    _ID42407::_ID29534( "axis", maps\cliffhanger_code::_ID53499 );
    thread maps\cliffhanger_snowmobile_code::_ID48603();
    level._ID794._ID4878 = 1;
    level._ID512 = 1;
    level._ID11635 = 0;
    level._ID4449 = 0;
    _func_0DB( "sm_sunSampleSizeNear", 1 );
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
    level._ID53165 _meth_823C();
    level._ID48727 _meth_823C( 1 );
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

    if ( _func_03A( "use_old_cliffhanger_ending", 0 ) )
    {
        _ID42237::_ID14413( "end_begins" );
        wait 2.5;
        var_5 = _ID42313::_ID9125( "black", 0, level._ID794 );
        var_5 _meth_808B( 1 );
        var_5._ID55 = 1;
        _ID42475::_ID34575( "start_fade_out_level" );
        wait 2;
        _ID42407::_ID24793();
    }
    else
        thread _unknown_1707();
}

h2_monitor_airport_video_skip()
{
    for (;;)
    {
        if ( _func_039( "ui_stop_airport_movie" ) == "1" )
        {
            var_0 = _ID42313::_ID9125( "black", 1, level._ID794 );
            waittillframeend;
            waittillframeend;
            _func_060();
            _ID42407::_ID24793();
            var_0 _meth_808F();
            return;
        }

        waittillframeend;
    }
}

_ID47267()
{
    _ID42237::_ID14413( "h2_ending_ends" );
    var_0 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_0 _meth_808B( 2.5 );
    var_0._ID55 = 1;
    _ID42475::_ID34575( "start_fade_out_level" );
    wait 2.5;
    _ID42407::_ID24793();
    var_0 _meth_808F();
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
    self._ID48744 = _func_03D();
}

_ID51220()
{
    _ID42237::_ID14413( "snowmobile_jump" );
    _ID42475::_ID34575( "aud_stop_mix_snowmobile_descent" );
    _ID42475::_ID34575( "aud_start_mix_snowmobile_jump" );
    level._ID794 _meth_80A1( "scn_cliff_snowmobile_jump" );
    var_0 = _ID42237::_ID16638( "ending_fuel_explosion", "targetname" );
    wait 0.5;

    for (;;)
    {
        _func_18F( var_0._ID740, var_0._ID851, 50000, 50000, level._ID28543 );

        if ( !_func_02F( var_0._ID1191 ) )
            return;

        var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
        wait 0.15;
    }
}

_ID47557()
{
    _ID42237::_ID14413( "player_survived_minijump" );
    var_0 = _func_0DE( "axis" );
    _func_0DB( "vehNotifyHitEntityWithVehContactEvent", 1 );
    _ID42237::_ID3350( var_0, ::_unknown_18A4 );
}

_ID46150()
{
    self endon( "guy_entered" );

    for (;;)
    {
        self waittill( "veh_contact",  var_0  );

        if ( !_func_02F( level._ID794._ID40065 ) )
            break;

        if ( var_0 == level._ID794 || var_0 == level._ID794._ID40065 )
        {
            self._ID34237 = 1;
            var_1 = _func_119( self._ID740 - var_0._ID740 );
            var_1 += ( 0, 0, 0.5 );
            var_1 *= 4000;
            self _meth_8024( "torso_lower", var_1 );
            break;
        }
    }
}

_ID49336()
{
    _ID42237::_ID14413( "snowmobile_jump" );
    wait 0.4;
    wait 2.6;

    if ( level._ID794._ID40065 _meth_8290() > 50 )
        level._ID794._ID40065 _meth_828D( 50, 20, 20 );
}

_ID50717()
{
    _ID42237::_ID14413( "player_falls_to_avalanche_section" );
    var_0 = _ID42407::_ID16268( "player_falls_to_avalanche_section" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );
    var_1 _meth_8053( var_2 );
    var_2._ID740 = level._ID794._ID740;
    var_3 = level._ID794._ID40065._ID65;
    var_3 = ( 0, var_3[1], 0 );
    var_2._ID65 = var_3;
    _ID42237::_ID14402( "avalanche_begins" );
}

_ID35646()
{
    _ID50343::_ID46928();
    level._ID54177 = 0;

    if ( _func_039( "moto_drive" ) == "" )
        _func_034( "moto_drive", "0" );

    maps\cliffhanger::_ID45912();
    maps\cliffhanger_stealth::_ID43641();
    var_0 = _func_1A2( "enemy_snowmobile_chase_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\cliffhanger_snowmobile_code::_ID46572 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    thread _ID49359::_ID52826();
}

_ID53172()
{
    _ID42237::_ID14402( "reached_top" );
    level._ID28543._ID507 = 1;
    var_0 = level._ID9242;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 thread _ID42237::_ID26402();
    }

    var_clear_2
    var_clear_0
    level._ID794._ID86 = 0;
    level._ID50466 = [];
    var_3 = _func_1A2( "avalanche_chase_vehicle_spawner", "script_noteworthy" );
    _ID42237::_ID3350( var_3, maps\cliffhanger_snowmobile_code::_ID47342 );
    thread maps\cliffhanger_snowmobile_code::_ID53661();
    thread _unknown_1B5B();
    _ID42237::_ID14402( "avalanche_ride_starts" );
    var_4 = _ID42411::_ID35195( "player_end_ride" );
    level._ID51355 = var_4;
    var_5 = _func_1A1( "avalanche_progress_org", "targetname" );
    var_6 = _func_1A1( var_5._ID1191, "targetname" );
    level._ID794._ID4878 = 1;
    level._ID512 = 1;
    var_4 thread maps\cliffhanger_snowmobile_code::_ID45101();
    thread maps\cliffhanger_snowmobile_code::_ID45715();
    level._ID794 _meth_8328();

    if ( _func_02F( level._ID794._ID40065 ) )
    {
        level._ID794._ID40065 _meth_80A0( level._ID794 );
        level._ID794._ID11803 = level._ID794._ID40065;
        level._ID794._ID40065 _meth_80B7();
        level._ID794._ID40065 = undefined;
    }

    var_7 = _ID42407::_ID35028( "player_rig" );
    var_7 _meth_805A();
    var_8 = _ID42237::_ID35164();
    var_8 _meth_8053( var_7, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 _meth_8098( var_8 );
    level._ID794 _meth_8084( var_7, "tag_player", 1, 0, 0, 0, 0 );
    _ID42407::_ID10226( 2.5, maps\cliffhanger_code::_ID53243, var_7, "tag_player" );
    var_9 = [];
    var_9[0] = level._ID28543;
    var_9[1] = var_7;
    level._ID28543 _ID42407::_ID17509();

    if ( _func_02F( level._ID28543._ID22746 ) )
        level._ID28543 _ID42407::_ID36519();

    var_10 = _func_1A1( "crash_recovery", "targetname" );
    var_11 = _func_06A( "script_origin", var_10._ID740 );
    var_11._ID65 = var_10._ID65;
    level._ID28543 _ID42407::_ID10226( 3.5, _ID42407::_ID10805, "i_drive" );
    _ID42407::_ID10226( 12.5, _ID42407::_ID28871, "avalanche" );
    _ID42407::_ID10226( 16.5, _ID42407::_ID28871, "moretangos" );
    var_11 _ID42259::_ID3099( var_9, "crash_rescue" );
    var_8 = _ID42237::_ID35164();
    var_8._ID740 = var_4._ID740;
    var_8._ID65 = var_4._ID65;
    var_12 = _func_1A5();
    var_12._ID337 = var_8;
    var_12._ID409 = -20;
    var_12._ID1251 = 10;
    var_12._ID893 = 0;
    var_12._ID41911 = 180;
    var_12 _ID42407::_ID38694();
    var_8 _meth_8053( var_4 );
    level._ID794 _meth_8098( undefined );
    var_13 = 0.5;
    var_7 _meth_80B7();
    level._ID794 _meth_8087( var_8, "tag_origin", var_13, var_13 * 0.2, var_13 * 0.2 );
    _ID42407::_ID10226( var_13 + 0.1, maps\cliffhanger_code::_ID53243, var_8, "tag_origin" );
    level._ID28543 _meth_80B7();
    level._ID794 _meth_8329();
    thread _ID42411::_ID17021( var_4 );
    var_4 _meth_823C();
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
    var_15 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_15 _meth_808B( 1 );
    var_15._ID55 = 1;
    wait 2;
    _ID42407::_ID24793();
}

_ID52650()
{
    _ID42237::_ID14413( "avalanche_heli_attacks" );
    var_0 = _func_1A1( "avalanche_heli", "targetname" );
    var_1 = var_0 _ID42407::_ID35192();
    var_1 _ID42411::_ID17021();
    var_2 = level._ID51355 _meth_8290();
    var_1._ID53680 = 900;
    maps\cliffhanger_snowmobile_code::_ID52894( 2300 );
    var_1 _ID42407::_ID10226( 5, maps\cliffhanger_snowmobile_code::_ID43489 );
    var_1 _meth_8266( 90 );
    var_1 waittill( "reached_dynamic_path_end" );
    var_3 = _func_1A1( "avalanche_heli_crash", "targetname" );
    var_1 = var_1 _ID42411::_ID40283();
    var_1 _ID42407::_ID3428( "heli" );
    _ID42407::_ID10226( 1.5, maps\cliffhanger_snowmobile_code::_ID52894, 500 );
    var_3 _ID42259::_ID3111( var_1, "avalanche_heli_wipeout" );
}

_ID49177()
{
    _ID42237::_ID14413( "downhill_autosave" );

    if ( level._ID794._ID486 < 75 )
        return;

    var_0 = _func_08A( "blah", &"AUTOSAVE_AUTOSAVE" );
    level._ID794 endon( "death" );
    _ID42237::_ID14413( "downhill_autosave_failsafe" );

    if ( !_func_08C( var_0 ) )
        return;

    _func_08B( var_0 );
}

_ID44650()
{
    _ID42237::_ID14413( "enemy_snowmobiles_wipe_out" );
    var_0 = level._ID52919;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 thread _unknown_1E99();
    }

    var_clear_2
    var_clear_0
}

_ID43503()
{
    self endon( "death" );
    wait(_func_0BA( 5, 12 ));

    if ( !_func_02F( self ) )
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
    level._ID794._ID40065 endon( "veh_collision" );
    level endon( "player_crashes" );
    _ID42237::_ID14413( "bad_heli_goes_to_death_position" );

    for (;;)
    {
        if ( !_func_02F( level._ID794._ID40065 ) )
            return;

        if ( level._ID794._ID40065._ID1276 >= 120 )
            break;

        wait 0.05;
    }

    var_0 = level._ID794._ID40065._ID1276;

    for (;;)
    {
        if ( !_func_02F( level._ID794._ID40065 ) )
            return;

        if ( level._ID794._ID40065._ID1276 < var_0 - 35 )
            break;

        var_0 = level._ID794._ID40065._ID1276;
        wait 0.05;
    }

    level._ID794._ID40065 notify( "veh_collision" );
}

_ID44245()
{
    for (;;)
    {
        var_0 = _unknown_1FAC( level._ID28543._ID40065 );
        var_1 = _unknown_1FB7( level._ID794._ID40065 );

        if ( var_0 < 100 )
            break;

        if ( var_1 < 100 )
            break;

        if ( var_1 > 1500 )
            break;

        wait 0.05;
    }

    self _meth_80B7();
}

_ID46594( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 500;

    return _func_0F3( var_0._ID740, self._ID740 );
}

_ID45933()
{
    _ID42237::_ID14413( "player_rides_snowmobile" );

    if ( _func_039( "scr_hide_snowmobile" ) == "1" )
        level._ID48727 _meth_805A();
}

_ID48943( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    _func_31C( var_1 );
}

_ID49433()
{
    _ID42237::_ID14413( "magic_rocket_flag" );
    var_0 = _ID42237::_ID16638( "magic_rocket_start", "targetname" );
    var_1 = _ID42237::_ID16638( "magic_rocket_end", "targetname" );
    var_2 = _func_1C8( "rpg_straight", var_0._ID740, var_1._ID740 );
    var_2 waittill( "death" );
    _func_156( level._ID1426["large_snow_explode"], var_1._ID740 );
}

_ID44938()
{
    for (;;)
    {
        if ( _ID42237::_ID14385( "fade_to_death" ) || !_func_1A7( level._ID794 ) && _ID42237::_ID14385( "snowmobile_jump" ) && !_ID42237::_ID14385( "made_jump" ) )
            break;

        waittillframeend;
    }

    maps\cliffhanger_code::_ID54496();
}
