// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID48221( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    level._ID794 _meth_8343( var_1._ID740 );
    level._ID794 _meth_8345( var_1._ID65 );
}

_ID43423()
{
    if ( _ID42237::_ID14385( "used_laser" ) )
        return;

    if ( _ID42237::_ID14385( "laser_hint_print" ) )
        return;

    _ID42237::_ID14402( "laser_hint_print" );
    thread _ID42407::_ID11085( "use_laser" );
}

_ID48319()
{
    _ID42237::_ID14413( "laser_golf_hint_print" );
    wait 10;

    if ( _ID42237::_ID14385( "used_laser_golf" ) )
        return;

    thread _ID42407::_ID11085( "use_laser_golf" );
}

_ID49697()
{
    thread _unknown_008A();
    thread _unknown_00A8();
}

_ID53066()
{
    level endon( "golf_course_mansion" );
    self endon( "death" );
    var_0 = [];
    var_0[var_0.size] = "arcadia_str_wererollin";
    var_0[var_0.size] = "arcadia_str_standclear";
    var_0[var_0.size] = "arcadia_str_oscarmike";

    for (;;)
    {
        self waittill( "resuming speed" );

        if ( _func_0B7( 100 ) < 25 )
        {
            if ( !_ID42237::_ID14385( "disable_stryker_dialog" ) && !_func_1FB() )
                thread _ID42407::_ID28864( var_0[_func_0B7( var_0.size )] );
        }
    }
}

_ID49064()
{
    level endon( "golf_course_mansion" );
    self endon( "death" );
    var_0 = [];
    var_0[var_0.size] = "arcadia_str_holdingposition";

    for (;;)
    {
        self waittill( "wait for gate" );

        if ( _func_0B7( 100 ) < 25 )
        {
            if ( !_ID42237::_ID14385( "disable_stryker_dialog" ) && !_func_1FB() )
                thread _ID42407::_ID28864( var_0[_func_0B7( var_0.size )] );
        }
    }
}

_ID46945()
{
    if ( !_func_02F( self._ID31388 ) )
        return;

    var_0 = _func_129( self._ID31388, ":;, " );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 = _func_128( var_2 );

        if ( var_2 == "playerseek" )
        {
            thread _unknown_01C7();
            continue;
        }

        if ( var_2 == "ignoreme" )
        {
            _ID42407::_ID32353( 1 );
            continue;
        }

        if ( var_2 == "rpg_enemy" )
        {
            thread _unknown_01CE();
            continue;
        }
    }

    var_clear_2
    var_clear_0
}

_ID48058()
{
    self waittill( "spawned",  var_0  );

    if ( !_func_1A7( var_0 ) )
        return;

    var_0 endon( "death" );
    var_0 _ID42407::_ID32353( 1 );
    var_0 waittill( "jumpedout" );
    var_0 _ID42407::_ID32353( 0 );
}

_ID49020()
{
    if ( !_func_1A7( level._ID51107 ) )
        return;

    self endon( "death" );
    _ID42407::_ID32353( 1 );
    wait 0.05;
    self._ID450 = 64;
    self._ID452 = 64;
    self waittill( "goal" );

    if ( !_func_1A7( level._ID51107 ) )
    {
        _ID42407::_ID32353( 0 );
        return;
    }

    self _meth_8173( level._ID51107 );
    _ID42407::_ID10226( 3.0, _ID42407::_ID32353, 0 );
    _ID42237::_ID10192( 15.0, ::_meth_8172 );
}

_ID53399()
{
    self endon( "death" );

    if ( _func_02F( self._ID1191 ) )
        self waittill( "goal" );

    self _meth_81B3( level._ID794 );
    self._ID452 = 2000;
}

_ID48768()
{
    _ID42407::_ID13024( "start_drop" );
    _ID42407::_ID13027( "start_drop" );
}

_ID50665( var_0, var_1 )
{
    self._ID3189 = var_1 + "_guy";
    _ID42407::_ID3428();
    var_2 = _ID42407::_ID35028( var_1 );
    self _meth_8053( var_0 );
    var_2 _meth_8053( var_0 );
    var_3 = [];
    var_3[var_3.size] = self;
    var_3[var_3.size] = var_2;
    var_4 = "drop1";

    if ( _ID42237::_ID8201() )
        var_4 = "drop2";

    var_0 _ID42259::_ID3099( var_3, var_4 );
    var_2 _meth_80B7();

    if ( _func_1A7( self ) )
        self _meth_80B7();
}

_ID53657()
{
    var_0 = _ID42237::_ID15807();
    var_0 _ID53924::_ID43271();
    self waittill( "trigger" );

    if ( var_0._ID486 < var_0._ID18313 )
        return;

    var_0 _ID53924::_ID51968();
    var_0 endon( "death" );
    wait 5;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_sentryguns" );
    wait 15;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_takeoutsgun" );
}

_ID43364()
{
    var_0 = _func_1A2( "checkpoint_fake_chopper", "targetname" );
    _ID42237::_ID3294( var_0, ::_meth_805A );
    _ID42237::_ID14413( "checkpoint_fake_choppers" );

    if ( _func_03A( "r_arcadia_culldist" ) == 1 )
        return;

    _ID42237::_ID3350( var_0, ::_unknown_03B1 );
}

_ID45504()
{
    var_0 = _func_1A2( "fake_creek_chopper", "targetname" );
    _ID42237::_ID3294( var_0, ::_meth_805A );
    _ID42407::_ID38929( "fake_creek_choppers_start" );
    _ID42237::_ID3350( var_0, ::_unknown_03D6 );
}

_ID43441()
{
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_1 = var_0._ID740;
    var_2 = _func_0F3( self._ID740, var_1 );
    var_3 = var_2 / 1200;

    for (;;)
    {
        thread _unknown_0417( var_3, var_1 );

        if ( !_func_02F( self._ID31103 ) )
            break;

        self._ID31103--;

        if ( self._ID31103 <= 0 )
            break;

        wait(_func_0BA( 3.0, 5.0 ));
    }

    self _meth_80B7();
}
#using_animtree("vehicles");

_ID51637( var_0, var_1 )
{
    var_2 = _func_06A( "script_model", self._ID740 );
    var_2 thread _unknown_0474();
    var_2 endon( "delete" );
    var_2._ID65 = self._ID65;
    var_3[0] = "vehicle_blackhawk_low";
    var_3[1] = "vehicle_pavelow_low";
    var_2 _meth_80B8( var_3[_func_0B7( var_3.size )] );
    var_2 _meth_811E( #animtree );
    var_2 _meth_8155( %bh_rotors, 1, 0.2, 1 );

    if ( _func_0B7( 2 ) == 0 )
        var_2 maps\arcadia_aud::ambient_chopper_snd();

    var_2 _meth_82B8( var_1, var_0, 0, 0 );
    wait(var_0);
    var_2 _meth_80B7();
}

_ID49534()
{
    self endon( "death" );
    level waittill( "delete_all_fake_choppers" );

    if ( !_func_02F( self ) )
        return;

    self notify( "delete" );
    self _meth_80B7();
}

_ID21733( var_0 )
{
    var_0 endon( "remove_laser_targeting_device" );
    var_0._ID22029 = undefined;
    var_0._ID21752 = 0;
    var_0 _meth_822C( "actionslot4", "dpad_laser_designator" );
    var_0 _meth_82E8( "use_laser", "+actionslot 4" );

    if ( !var_0 _ID42407::_ID13023( "disable_stryker_laser" ) )
        var_0 _ID42407::_ID13024( "disable_stryker_laser" );

    var_1 = undefined;
    level._ID794 _meth_8313( 4, "weapon", "usp_laserdesignator" );

    for (;;)
    {
        var_0 waittill( "use_laser" );

        if ( _func_02F( var_0.disable_laser_designator ) && var_0.disable_laser_designator )
            continue;

        if ( var_0._ID21752 )
        {
            var_0 notify( "cancel_laser" );
            var_0 _meth_80BA();

            if ( var_0 _meth_831C() == "usp_laserdesignator" )
            {
                if ( _func_02F( var_1 ) )
                {
                    var_0 _meth_8320( var_1 );
                    jump loc_5AA
                }

                var_0 _meth_832C();
                var_1 = undefined;

                while ( var_0 _meth_831C() == "usp_laserdesignator" )
                    waittillframeend;
            }

            if ( _func_02F( var_0.previousdontallowcache ) )
            {
                var_0._ID11546 = var_0.previousdontallowcache;
                var_0.previousdontallowcache = undefined;
            }
            else
                var_0._ID11546 = undefined;

            var_0._ID21752 = 0;
            var_0 _meth_831A( "usp_laserdesignator" );
            var_0 _meth_82D6();
            var_0 _meth_832D();
        }
        else
        {
            var_0._ID21752 = 1;
            var_1 = var_0 _meth_831C();
            var_0 _meth_8319( "usp_laserdesignator" );
            var_0 _meth_8320( "usp_laserdesignator" );
            var_0 _meth_832C();
            var_0 _meth_82D5();

            while ( var_0 _meth_831C() != "usp_laserdesignator" )
                waittillframeend;

            var_0 childthread _unknown_0674();
            var_0 childthread _unknown_0664( 0.2 );
            wait 0.1;
            wait(var_0 _meth_859B() / 1000 - 0.1);
            var_0 _meth_832D();
            var_0 thread _unknown_0745();

            if ( _func_02F( var_0._ID11546 ) )
                var_0.previousdontallowcache = var_0._ID11546;

            var_0._ID11546 = 1;
        }

        wait 0.05;
    }
}

_ID52954( var_0 )
{
    self endon( "cancel_laser" );
    wait(var_0);
    var_1 = 0;

    while ( self._ID21752 )
    {
        var_2 = _func_0F9( self _meth_8344() );

        if ( self _meth_83E5() || self _meth_8188() == "prone" && var_2 > 25 )
        {
            if ( var_1 )
            {
                self _meth_80BA();
                var_1 = 0;
            }
        }
        else if ( !var_1 )
        {
            wait 0.2;
            _ID42407::_ID53909();
            var_1 = 1;
        }

        waittillframeend;
    }
}

_ID51536()
{
    self endon( "use_laser" );
    self endon( "cancel_laser" );

    for (;;)
    {
        if ( self _meth_831C() != "usp_laserdesignator" )
        {
            self notify( "use_laser" );
            break;
        }

        waittillframeend;
    }
}

_ID52668( var_0, var_1 )
{
    var_2 = _func_1A2( "stryker_target_location", "targetname" );
    var_3 = _func_06A( "script_origin", var_0 );
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( !var_3 _meth_80B0( var_5 ) )
            continue;

        var_3 _meth_80B7();
        return var_5._ID922;
    }

    var_clear_2
    var_clear_0
    var_3 _meth_80B7();

    if ( _func_02F( var_1 ) )
    {
        if ( _func_02F( var_1._ID1282 ) || _func_02F( var_1._ID10556 ) )
        {
            if ( _func_02F( var_1._ID1282 ) && var_1._ID1282 == "mi17" )
                return "chopper";
            else
                return "vehicle";
        }

        if ( _func_0D4( var_1 ) )
            return "ai";
    }

    return "generic";
}

_ID45433( var_0, var_1, var_2 )
{
    var_3 = [];

    if ( var_0 )
    {
        _ID42237::_ID14402( "used_laser_attack" );
        var_4 = _unknown_07D4( var_1, var_2 );
        level._ID794 thread _ID42407::_ID27079( "wpn_plr_laser_target_acquired" );
        wait 0.4;

        switch ( var_4 )
        {

        }
    }
    else
    {
        var_3[var_3.size] = "arcadia_str_uhnegative";
        var_3[var_3.size] = "arcadia_str_invalidtarget";
        var_3[var_3.size] = "arcadia_str_outtarange";
        var_3[var_3.size] = "arcadia_str_outofrange";
    }

    if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1FB() )
        return;

    thread _ID42407::_ID28864( var_3[_func_0B7( var_3.size )] );
    case "security_station":
    case "apartment_office":
    case "policecar":
    case "firetruck":
    case "greyhouse":
    case "yellowhouse":
    case "house":
    case "chopper":
    case "vehicle":
    case "ai":
    case "generic":
    case "checkpoint":
    default:
}

_ID21706()
{
    self endon( "cancel_laser" );

    if ( !_ID42237::_ID14385( "used_laser" ) )
    {
        _ID42237::_ID14402( "used_laser" );
        thread _ID42407::_ID11085( "use_laser_attack" );
    }

    self waittill( "weapon_fired" );
    var_0 = _unknown_0A3B();
    var_1 = var_0["position"];
    var_2 = var_0["entity"];
    level notify( "laser_coordinates_received" );
    var_3 = undefined;

    if ( _ID42237::_ID14385( "golf_course_mansion" ) )
        var_3 = _unknown_0A47( var_1 );

    if ( _func_02F( var_3 ) )
        thread _unknown_0A9B( var_3 );
    else if ( !_ID42237::_ID14385( "disable_stryker_laser" ) && !_ID42407::_ID13019( "disable_stryker_laser" ) )
    {
        if ( _func_1A7( level._ID51107 ) )
        {
            var_4 = _func_0F3( level._ID51107._ID740, var_1 );
            var_5 = var_4 >= 200 && var_4 <= 3500;
            thread _unknown_09DE( var_5, var_1, var_2 );

            if ( var_5 )
                level._ID51107 thread maps\arcadia_stryker::_ID49367( var_1 );
        }
    }

    wait 0.5;
    self notify( "use_laser" );
}

_ID54700( var_0 )
{
    var_1 = _func_1A2( "stealth_laser_zone", "targetname" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];

        if ( level._ID49728[var_3._ID31245] )
            continue;

        var_4 = _func_0F3( var_0, var_3._ID740 );

        if ( var_4 <= var_3._ID851 )
            return var_3._ID31245;
    }

    var_clear_3
    var_clear_0
    return undefined;
}

_ID15795()
{
    var_0 = self _meth_80AF();
    var_1 = self _meth_8346();
    var_2 = _func_11F( var_1 );
    var_3 = var_0 + var_2 * 7000;
    var_4 = _func_06D( var_0, var_3, 1, self );
    var_5 = var_4["entity"];

    if ( _func_02F( var_5 ) )
        var_4["position"] = var_5._ID740;

    return var_4;
}

_ID53758()
{
    return _ID42237::_ID14385( "used_laser" );
}

_ID50043()
{
    return _ID42237::_ID14385( "used_laser_attack" ) || !level._ID794._ID21752;
}

_ID53228()
{
    return _ID42237::_ID14385( "used_laser_golf" );
}

_ID45879( var_0, var_1 )
{
    var_2 = _func_1A2( var_0, "targetname" );
    var_3 = [];
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_5._ID31245 == var_1 )
            var_3[var_3.size] = var_5;
    }

    var_clear_2
    var_clear_0
    return var_3;
}

_ID21702( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    _ID42237::_ID14402( "used_laser_golf" );
    _ID42407::_ID14543( "allies" );
    level._ID49728[var_0] = 1;
    var_2 = undefined;

    if ( var_0 == 0 )
    {
        _ID42237::_ID14402( "lazed_targets_0" );
        level._ID794 thread _ID42407::_ID27079( "wpn_plr_laser_target_acquired" );
        var_2 = _func_1A1( "artillery_soundent_0", "targetname" );

        if ( !var_1 )
            thread _ID42407::_ID28864( "arcadia_art_missionrec" );
    }

    if ( var_0 == 1 )
    {
        _ID42237::_ID14402( "lazed_targets_1" );
        level._ID794 thread _ID42407::_ID27079( "wpn_plr_laser_target_acquired" );
        var_2 = _func_1A1( "artillery_soundent_1", "targetname" );

        if ( !var_1 )
            thread _ID42407::_ID28864( "arcadia_art_confirmed" );
    }

    if ( _ID42237::_ID14385( "lazed_targets_0" ) && _ID42237::_ID14385( "lazed_targets_1" ) )
        level notify( "stop_laze_golf_course_dialog" );

    var_3[0] = 4;
    var_3[1] = 4;

    if ( !var_1 )
    {
        wait(var_3[var_0]);
        wait 3;
    }

    _ID42234::_ID13611( var_0 );
    wait 1;
    _func_1CD( "arcadia_artillery_rumble", var_2._ID740 );
    var_4 = _unknown_0C7F( "golf_before", var_0 );
    _ID42237::_ID3294( var_4, ::_meth_805A );
    var_5 = _unknown_0C90( "golf_after", var_0 );
    _ID42237::_ID3294( var_5, ::_meth_8059 );

    if ( var_0 == 0 )
    {
        _ID42237::_ID14402( "stealth_bombed_0" );
        _func_117( 0, 0, ( 0, 0, 0 ) );
    }

    if ( var_0 == 1 )
    {
        _ID42237::_ID14402( "stealth_bombed_1" );
        _func_117( 0, 1, ( 0, 0, 0 ) );
    }
}

_ID48885()
{
    thread _unknown_0D66();
    _ID42237::_ID14413( "golf_course_battle" );
    level._ID51107 _meth_805F();
    level._ID51107 _meth_80B7();
    thread maps\arcadia::_ID51929();
    thread _unknown_0D74();
    level._ID794 thread _ID42407::_ID41628();
    _ID42237::_ID3350( _func_1A2( "golf_course_enemy_spawner", "targetname" ), ::_unknown_0ED5 );
}

_ID47814()
{
    level endon( "second_bridge" );
    level endon( "stop_laze_golf_course_dialog" );

    for (;;)
    {
        level._ID388 _ID42407::_ID10805( "arcadia_fly_laserdes" );
        wait 20;
        level._ID388 _ID42407::_ID10805( "arcadia_fly_callartillery" );
        wait 20;
    }
}

_ID46440()
{
    _ID42237::_ID14413( "golf_course_vehicles" );
    var_0 = _ID42407::_ID16729( "golf_course_vehicle" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = var_2 _ID42407::_ID35192();
        var_3._ID37340 = var_2 _ID42237::_ID15808();

        if ( var_3._ID1282 == "bmp" )
            var_3 thread _unknown_0F30();

        var_3 thread _unknown_0E2C();
    }

    var_clear_3
    var_clear_0
    _ID42237::_ID3350( _func_1A2( "golf_course_zpu", "targetname" ), ::_unknown_0E87 );
}

_ID53365()
{
    var_0 = "stealth_bombed_" + self._ID31245;
    _ID42237::_ID14413( var_0 );
    wait 1;

    if ( _func_1A7( self ) )
        self _meth_8058();

    if ( _func_02F( self ) )
        self notify( "death" );
}

_ID46833()
{
    var_0 = _func_1A2( "fake_golf_course_chopper", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "golf_course_vehicles" );
    thread _unknown_0EEC();
    var_4 = 27.0833;
    level endon( "delete_all_fake_choppers" );
    var_5 = 0;
    var_6 = _func_0B9( 8, 16 );

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );
        var_7 = var_0;

        for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
        {
            var_2 = var_7[var_9];
            var_8 = _ID42237::_ID16638( var_2._ID1191, "targetname" );
            var_2 thread _unknown_0C68( var_4, var_8._ID740 );
            var_5++;

            if ( var_5 >= var_6 )
            {
                var_5 = 0;
                var_6 = _func_0B9( 8, 16 );
                wait(_func_0BA( 24.0, 34.0 ));
                continue;
            }

            wait(_func_0BA( 0.5, 1.5 ));
        }

        var_clear_2
        var_clear_0
    }
}

_ID47865()
{
    _ID42237::_ID14413( "golf_course_vehicles_stop" );
    level notify( "delete_all_fake_choppers" );
}

_ID44946()
{
    var_0 = self._ID31245;
    var_1 = undefined;
    var_2 = undefined;
    var_3 = _func_1A2( self._ID1191, "targetname" );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_125( var_5._ID170, "actor" ) )
        {
            var_1 = var_5;
            continue;
        }

        if ( _func_125( var_5._ID170, "trigger" ) )
            var_2 = var_5;
    }

    var_clear_2
    var_clear_0
    var_7 = var_1 _ID42407::_ID35014();
    var_7._ID3189 = "zpu_gunner";
    var_8 = _ID42407::_ID35028( "zpu_turret", self._ID740 );
    var_8._ID65 = self._ID65;
    var_8._ID31245 = var_0;
    self _meth_80B7();
    var_7 _meth_8053( var_8, "tag_driver" );
    thread _unknown_1059( var_8, var_7, var_2 );
    thread _unknown_106D( var_8, var_7, var_2 );

    if ( _func_02F( var_2 ) )
        thread _unknown_108C( var_8, var_7, var_2 );

    var_8 thread _unknown_0FD0();
    var_8 endon( "death" );
    var_7 endon( "death" );
    var_8 endon( "stop_shooting" );
    var_7 endon( "stop_shooting" );
    var_9 = undefined;

    for (;;)
    {
        var_10 = "fire_a";

        if ( _ID42237::_ID8201() )
            var_10 = "fire_b";

        if ( !_func_02F( var_9 ) || var_9 != var_10 )
        {
            var_8 notify( "stop_fire_loop" );
            waitframe;
            var_8 thread _ID42259::_ID3044( var_7, var_10, "stop_fire_loop", "tag_driver" );
            var_8 thread _ID42259::_ID3044( var_8, var_10, "stop_fire_loop" );
            wait(_func_067( var_8 _ID42407::_ID16120( var_10 )[0] ));
        }

        var_9 = var_10;
    }
}

_ID50081( var_0, var_1, var_2 )
{
    var_0 waittill( "death" );
    _unknown_111A( var_0, var_1 );
    thread _ID42237::_ID27077( "exp_armor_vehicle", var_0._ID740 );
    var_0 _meth_80B8( "vehicle_zpu4_burn" );
}

_ID52190( var_0, var_1, var_2 )
{
    var_1 endon( "dismount" );
    var_1 waittill( "damage_notdone" );
    _unknown_1144( var_0, var_1 );
    var_0 _ID42259::_ID3111( var_1, "gunnerdeath", "tag_driver" );
    var_0 thread _ID42259::_ID3044( var_1, "death_idle", "stop_death_loop", "tag_driver" );
}

_ID52971( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    var_1 endon( "death" );
    var_2 waittill( "trigger" );
    var_1 notify( "dismount" );
    _unknown_1186( var_0, var_1 );
    var_1._ID49 = 1;
    var_1._ID24924 = 1;
    var_1 _meth_8055();
    var_0 _ID42259::_ID3111( var_1, "dismount", "tag_driver" );
}

_ID49298( var_0, var_1 )
{
    var_0 notify( "stop_shooting" );
    var_0 notify( "stop_fire_loop" );
    var_0 _ID42407::_ID3136();
    var_0 _meth_80B3();

    if ( _func_1A7( var_1 ) )
    {
        var_1 notify( "stop_shooting" );
        var_1 notify( "stop_fire_loop" );
        var_1 _ID42407::_ID3136();
    }

    var_0 _meth_8155( level._ID30895[var_0._ID3189]["idle"], 1.0, 0, 1 );
}

_ID46090( var_0 )
{
    _func_157( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash" );
    _func_157( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash2" );
    var_0 _meth_80A1( "zpu_fire1" );
}

_ID49911( var_0 )
{
    _func_157( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash1" );
    _func_157( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash3" );
    var_0 _meth_80A1( "zpu_fire2" );
}

_ID45975()
{
    if ( _func_02F( self._ID922 ) && self._ID922 == "bmp" )
        level._ID47656 = self;

    self endon( "death" );
    self endon( "attacking_player" );

    for (;;)
    {
        self _meth_826B( self._ID37340[_func_0B7( self._ID37340.size )]._ID740 );
        wait(_func_0BA( 0.5, 1.5 ));
        var_0 = _func_0B9( 2, 7 );

        for ( var_1 = 0; var_1 < var_0; var_1++ )
        {
            self _meth_8272();
            wait 0.3;
        }
    }
}

_ID50352()
{
    var_0 = _ID42407::_ID35014( 1 );

    if ( !_func_02F( var_0 ) || !_func_1A7( var_0 ) )
        return;

    var_0._ID452 = 16;
    var_0 endon( "death" );
    var_1 = _func_0C8( self._ID1191, "targetname" );
    var_0 _meth_81B1( var_1 );
    var_2 = _func_1A2( "golf_enemy_target", "targetname" );
    var_0 _meth_8173( var_2[_func_0B7( var_2.size )] );

    if ( !_func_02F( var_1._ID1191 ) )
        return;

    var_3 = _func_0C8( var_1._ID1191, "targetname" );
    wait(_func_0BA( 9.0, 11.0 ));
    var_0 _meth_81B1( var_3 );
}

_ID48686()
{
    _ID42237::_ID14413( "crashing_c130" );
    var_0 = _ID42411::_ID35196( "c130_spawner" );
    var_0 thread _ID42407::_ID27079( "scn_arcadia_c130_goingdown" );
    _ID42475::_ID34575( "start_crash_mix", "c130_sequence_started" );
    thread _unknown_13F1();
    thread _unknown_13AA( var_0 );
}

_ID47510( var_0 )
{
    _func_157( level._ID1426["c130_engine_crashing"], var_0, "tag_prop_l_1" );
    _func_157( level._ID1426["c130_engine_crashing"], var_0, "tag_prop_r_2" );
    wait 6.8;
    _func_192( 0.2, 0.25, var_0._ID740, 8000 );
    _func_157( level._ID1426["c130_engine_explosion"], var_0, "tag_prop_l_1" );
    var_0 thread _ID42407::_ID27079( "scn_arcadia_c130_explosions" );
    wait 1.2;
    _func_192( 0.18, 0.25, var_0._ID740, 8000 );
    _func_157( level._ID1426["c130_engine_explosion_sml"], var_0, "tag_light_belly" );
    var_0 thread _ID42407::_ID27079( "scn_arcadia_c130_explosions" );
    wait 2.1;
    _func_192( 0.18, 0.25, var_0._ID740, 8000 );
    _func_157( level._ID1426["c130_engine_explosion_sml"], var_0, "tag_light_top" );
    var_0 thread _ID42407::_ID27079( "scn_arcadia_c130_explosions" );
    wait 2.0;
    _ID42234::_ID13611( "c130_crash_impact" );
    _ID42234::_ID13611( "c130_crash_leftovers" );
    wait 0.35;
    _func_192( 0.45, 0.7, var_0._ID740, 15000 );
    var_0 thread _ID42407::_ID27079( "scn_arcadia_c130_crash" );
    _ID42475::_ID34575( "clear_crash_mix", "c130_sequence_started" );
}

_ID44320()
{
    var_0 = ( 13635.8, -6606.73, 2825.83 );
    var_1 = ( 270, 114.597, 5.40301 );
    var_2 = "airplane_crash_smoke_sun_blocker";
    wait 4;

    for (;;)
    {
        var_3 = _func_06A( "script_model", var_0 );
        var_3._ID65 = var_1;
        var_3 _meth_80B8( "tag_origin" );
        _func_157( _ID42237::_ID16299( var_2 ), var_3, "tag_origin" );
        _ID42237::_ID14413( "remove_sun_blocker" );
        var_3 _meth_80B7();
        _ID42237::_ID14426( "remove_sun_blocker" );
    }
}

_ID18146()
{
    _ID42237::_ID14413( "harriers_spawn" );
    var_0 = _ID42411::_ID35199( "harrier" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_8266( var_2._ID65[1] );
        var_2 _meth_8265( var_2._ID740, 1 );
        var_2 _ID42411::_ID16988();
        var_2 _meth_825D( _func_0B9( 80, 120 ), _func_0B9( 50, 80 ), _func_0B9( 10, 20 ) );
        var_2 thread maps\arcadia_aud::_ID48779();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "harriers_move" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        thread _ID42411::_ID17021( var_2 );
        var_2 thread maps\arcadia_aud::_ID49592();
        var_2 thread _unknown_1608( var_5 + 2 );
        wait 2.0;
    }

    var_clear_1
}

_ID50085( var_0 )
{
    wait 15;

    if ( !_func_1A7( self ) )
        return;

    self _meth_8271( "harrier_FFAR" );
    var_1[0] = "tag_right_alamo_missile";
    var_1[1] = "tag_left_alamo_missile";
    var_2 = 0;

    for ( var_3 = 0; var_3 < var_0; var_3++ )
    {
        self _meth_8272( var_1[var_2], undefined, ( 0, 0, -250 ) );
        var_2++;

        if ( var_2 >= var_1.size )
            var_2 = 0;

        wait 0.4;
    }
}

_ID46323()
{
    var_0 = [];
    var_1 = _func_1A2( self._ID1191, "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_82C9();
        var_3._ID740 = var_3._ID740 - ( 0, 0, 1024 );
        var_0[var_0.size] = "vehicle_bad_place_brush_" + var_3 _meth_81BD();
    }

    var_clear_2
    var_clear_0
    var_5 = [ level._ID388, level._ID44224 ];

    for (;;)
    {
        self waittill( "trigger",  var_6  );

        if ( !_func_1A7( level._ID51107 ) )
            return;

        if ( !_func_02F( var_6 ) )
            continue;

        if ( var_6 != level._ID51107 )
            continue;

        if ( var_6 _meth_8290() == 0 )
            continue;

        var_7 = var_1;

        for ( var_11 = _func_1DA( var_7 ); _func_02F( var_11 ); var_11 = _func_1BF( var_7, var_11 ) )
        {
            var_3 = var_7[var_11];

            if ( !_func_02F( var_3._ID44254 ) )
            {
                var_3 _meth_82C8();
                _func_022( var_0[var_11], 0, var_3, "allies", "axis" );
                var_8 = var_5;

                for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
                {
                    var_9 = var_8[var_10];

                    if ( var_3 _meth_80B0( var_9 ) )
                        thread _unknown_1798( var_9, var_3 );
                }

                var_clear_2
                var_clear_0
                var_3 _meth_82C9();
                var_3._ID44254 = 1;
            }

            thread _unknown_17D8( var_3, var_0[var_11] );
        }

        var_clear_1
    }
}

ai_leave_badplace_zone( var_0, var_1 )
{
    if ( !_func_02F( var_0.leavebadplacezonecount ) )
        var_0.leavebadplacezonecount = 1;
    else
        var_0.leavebadplacezonecount = var_0.leavebadplacezonecount + 1;

    var_0._ID513 = 1;
    var_0._ID52 = 0;
    var_0._ID7._ID11043 = 1;

    while ( _func_02F( var_1 ) && var_1 _meth_80B0( var_0 ) )
        waittillframeend;

    var_0.leavebadplacezonecount = var_0.leavebadplacezonecount - 1;

    if ( var_0.leavebadplacezonecount > 0 )
        return;

    var_0._ID513 = 0;
    var_0._ID7._ID11043 = 0;
    var_0._ID52 = 1;
}

_ID48695( var_0, var_1 )
{
    var_0 notify( "waiting_for_path_reconnection" );
    var_0 endon( "waiting_for_path_reconnection" );
    wait 0.5;
    var_0 _meth_82C8();
    _func_01F( var_1 );
    var_0 _meth_82C9();
    var_0._ID44254 = undefined;
}

_ID51783()
{
    self endon( "death" );
    self._ID9798 = 1;
    thread maps\arcadia_aud::_ID49380();
    wait 7;
    var_0 = _func_1A1( "evac_chopper_1_rpg", "targetname" );
    var_1 = _func_0F3( var_0._ID740, self._ID740 );
    var_1 *= 1.2;
    _func_1A9( self, 100000, var_1 );
    var_2 = _func_1C8( "rpg_straight", var_0._ID740, self._ID740 );
    var_2 thread _ID42407::_ID27079( "scn_rpg_shoot_01" );
    self waittill( "damage" );

    if ( _func_1A7( self ) )
        self _meth_8058();
}

_ID54278()
{
    _ID42237::_ID14413( "civilian_car" );
    var_0 = _ID42411::_ID35196( "civilian_car" );
    var_0 endon( "death" );
    var_0 thread maps\arcadia_aud::_ID47993();
    var_0 thread _unknown_1933();
    var_1 = _func_1A1( "civilian_car_clip", "targetname" );
    _func_022( "civilian_car_badplace", 12, var_1, "allies", "axis" );
    var_0 waittill( "reached_end_node" );
    var_0 _meth_8057( 500000, var_0._ID740, level._ID794 );
}

_ID44913()
{
    var_0 = _func_1A1( "civilian_car_dummy", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_1 _meth_8053( var_0 );
    var_2[0] = _func_1A1( "civilian_car_luggage_1", "targetname" );
    var_2[1] = _func_1A1( "civilian_car_luggage_2", "targetname" );
    var_2[2] = _func_1A1( "civilian_car_luggage_3", "targetname" );
    var_2[3] = _func_1A1( "civilian_car_luggage_4", "targetname" );
    var_2[4] = _func_1A1( "civilian_car_luggage_5", "targetname" );
    var_2[5] = _func_1A1( "civilian_car_luggage_6", "targetname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _meth_8053( var_0 );
    }

    var_clear_2
    var_clear_0
    var_0._ID740 = self._ID740;
    var_0._ID65 = self._ID65;
    var_0 _meth_8053( self );
    wait 6;
    var_6 = _func_119( var_1._ID740 - var_0._ID740 );
    var_7 = var_2;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_4 = var_7[var_9];
        wait(_func_0BA( 0.05, 0.15 ));
        var_4 _meth_8055();
        var_8 = _func_0BA( 1500, 2500 );
        var_4 _meth_82CC( var_4._ID740, var_6 * var_8 );
    }

    var_clear_2
    var_clear_0
    var_0 _meth_80B7();
    var_1 _meth_80B7();
}

parked_civilian_car_lighting()
{
    var_0 = _func_1A1( "parked_car", "script_noteworthy" );
    var_1 = _func_1A1( "parked_car_light_org", "targetname" );

    if ( _func_02F( var_0 ) && _func_02F( var_1 ) )
        var_0 _meth_848A( var_1._ID740 );
}

_ID51431()
{
    var_0 = self._ID486 - self._ID18313;
    thread _unknown_1B2A( var_0 * 0.75, "smoke_1", level._ID1426["damaged_wheel_smoke"], "left_wheel_08_jnt", ( 105, -50, -25 ), ( 0, 180, 0 ) );
    thread _unknown_1B55( var_0 * 0.45, "smoke_3", level._ID1426["badger_dmg_smk"], "tag_playerride", ( 30, -12, -5 ), ( -20, 260, 0 ) );
}

_ID45173( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    _ID42407::_ID13024( var_1 );

    for (;;)
    {
        self waittill( "damage" );
        var_6 = self._ID486 - self._ID18313;

        if ( var_6 <= var_0 && !_ID42407::_ID13019( var_1 ) )
        {
            _ID42407::_ID13025( var_1 );
            _ID42237::_ID49667( var_2, self, var_3, var_4, var_5 );
            break;
        }
    }
}

_ID48556()
{
    self waittill( "trigger" );
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_1 = _func_0DE( "axis" );
    var_2 = [];
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( !var_4 _meth_80B0( var_0 ) )
            continue;

        var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0

    if ( var_2.size == 0 )
        return;

    _ID42237::_ID3350( var_2, ::_unknown_1C19 );
}

_ID52348()
{
    self endon( "death" );
    wait(_func_0BA( 0, 1.0 ));

    if ( _func_1A7( self ) )
        self _meth_80B7();
}

_ID45315()
{
    var_0 = undefined;

    if ( _func_125( self._ID170, "trigger" ) )
    {
        self waittill( "trigger" );
        var_0 = _func_1A1( self._ID1191, "targetname" );
    }
    else
    {
        wait 6;
        var_0 = self;
    }

    for (;;)
    {
        if ( _func_02F( level._ID51107 ) )
        {
            var_1 = _func_1C8( "rpg_straight", var_0._ID740, level._ID51107._ID740 + ( 0, 0, 60 ) );
            var_1 thread maps\arcadia_aud::_ID52296();

            if ( !_func_02F( var_0._ID1191 ) )
                return;

            var_0 = _func_1A1( var_0._ID1191, "targetname" );
        }

        wait(_func_0BA( 1.0, 2.0 ));
    }
}

_ID45978()
{
    self notify( "ai_avoid_stryker" );
    self endon( "ai_avoid_stryker" );
    self endon( "death" );
    var_0 = _func_0BC( 90 );
    var_1 = 160000;

    for (;;)
    {
        wait 0.2;

        if ( !_func_1A7( level._ID51107 ) )
            break;

        if ( _ID42237::_ID14385( "disable_friendly_move_checks" ) )
            break;

        var_2 = _func_0F5( self._ID740, level._ID51107._ID740 ) <= var_1;
        var_3 = _ID42237::_ID41802( self._ID740, self._ID65, level._ID51107._ID740, var_0 );

        if ( var_2 && var_3 )
        {
            _ID42407::_ID8925( "on" );
            continue;
        }

        _ID42407::_ID8925( "off" );
    }

    _ID42407::_ID8925( "off" );
}

_ID28210()
{
    var_0 = _func_1A1( "pool", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_1B3( var_1 ) )
            continue;

        while ( var_1 _meth_80B0( var_0 ) )
        {
            var_1 _meth_81F1( 0.3 );
            var_1 _meth_8121( 1 );
            var_1 _meth_8122( 0 );
            var_1 _meth_8123( 0 );
            wait 0.1;
        }

        var_1 _meth_81F1( 1 );
        var_1 _meth_8121( 1 );
        var_1 _meth_8122( 1 );
        var_1 _meth_8123( 1 );
    }
}

_ID51604()
{
    wait 0.05;
    _ID42237::_ID14413( "all_enemies_low_health" );
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_1A7( var_2 ) )
            var_2._ID486 = 1;
    }

    var_clear_2
    var_clear_0
}

_ID44670()
{
    _ID42237::_ID14413( "foley_purple" );
    level._ID388 thread _ID42407::_ID32315( "p" );
    _ID42237::_ID14426( "foley_purple" );
    level._ID388 thread _ID42407::_ID32315( "g" );
}

_ID54226()
{
    level._ID51107 endon( "death" );
    var_0 = _func_0BC( 35 );
    var_1 = 0;

    while ( _func_1A7( level._ID51107 ) )
    {
        wait 0.1;
        var_2 = level._ID51107 _meth_8290();

        if ( var_2 <= 1 )
            continue;

        if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1FB() )
            continue;

        var_3 = _func_0F3( level._ID794._ID740, level._ID51107._ID740 );

        if ( var_3 > 450 )
            continue;

        var_4 = _ID42237::_ID41802( level._ID51107._ID740, level._ID51107._ID65, level._ID794._ID740, var_0 );

        if ( !var_4 )
            continue;

        if ( var_1 == 0 )
        {
            var_1 = 1;
            level._ID388 _ID42407::_ID10805( "arcadia_fly_getrunover" );
        }
        else
        {
            var_1 = 0;
            level._ID44224 _ID42407::_ID10805( "arcadia_cpd_getoutta" );
        }

        wait 3;
    }
}

_ID49954( var_0 )
{
    self endon( "trigger" );
    _ID42237::_ID14413( var_0 );
    thread _ID42407::_ID1802( level._ID794 );
}

_ID52678()
{
    _ID42237::_ID38863( "friendly_trigger_at_artillery", "script_noteworthy" );
    _ID42237::_ID14413( "stealth_bombed_1" );
    _ID42237::_ID38865( "friendly_trigger_at_artillery", "script_noteworthy" );
}

_ID47355()
{
    level endon( "stealth_bombed_1" );
    _ID42237::_ID14413( "bmp_kills_player" );

    if ( !_func_02F( level._ID47656 ) )
        return;

    level._ID47656 endon( "death" );
    level._ID47656 notify( "attacking_player" );

    for (;;)
    {
        level._ID47656 _meth_826C( level._ID794, ( 0, 0, 20 ) );
        wait(_func_0BA( 0.5, 1.5 ));
        var_0 = _func_0B9( 8, 15 );

        for ( var_1 = 0; var_1 < var_0; var_1++ )
        {
            level._ID47656 _meth_8272();
            wait 0.2;
        }
    }
}

_ID53091()
{
    level endon( "stealth_bombed_1" );
    _ID42237::_ID14413( "bmp_force_kills_player" );
    level._ID794 _meth_8058();
}

_ID46846()
{
    level endon( "stealth_bombed_0" );
    _ID42237::_ID14413( "force_artillery_0" );
    thread _unknown_1B23( 0, 1 );
}

_ID45256()
{
    _ID42237::_ID14413( "honey_badger_threats_dead_1" );

    if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1FB() )
        return;

    thread _ID42407::_ID28864( "arcadia_str_thanks" );
}

_ID53156()
{
    _ID42237::_ID14413( "honey_badger_threats_dead_2" );

    if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1FB() )
        return;

    thread _ID42407::_ID28864( "arcadia_str_nicework" );
}

_ID43758( var_0 )
{
    if ( _func_03A( "r_arcadia_culldist" ) == 0 )
        return;

    _func_08E( var_0 );
}

portal_group_start_point_initializer()
{
    var_0 = [ "portal_starting_area_flag", "portal_stryker_road_flag", "portal_first_street_flag" ];
    var_1 = [ "portal_starting_area_flag", "portal_stryker_road_flag", "portal_first_street_flag" ];
    var_2 = [ "portal_stryker_road_flag", "portal_golf_road_flag", "portal_first_street_flag", "portal_second_street_flag" ];
    var_3 = [ "portal_golf_road_flag", "portal_plane_crash_flag", "portal_first_street_flag" ];
    var_4 = [ "portal_golf_road_flag", "portal_plane_crash_flag", "portal_first_street_flag" ];
    var_5 = [ "portal_starting_area_flag", "portal_stryker_road_flag", "portal_golf_road_flag", "portal_plane_crash_flag", "portal_first_street_flag", "portal_second_street_flag" ];

    switch ( level._ID35897 )
    {

    }

    return var_5;
    case "no_game":
    case "crash":
    case "golf":
    case "checkpoint":
    case "street":
    default:
}

initialize_portal_flags()
{
    var_0 = _unknown_2176();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42237::_ID14402( var_2 );
    }

    var_clear_2
    var_clear_0
}

act_as_ambush_combat_for_a_while( var_0, var_1 )
{
    self endon( "death" );
    wait(var_0);
    self._ID199 = "ambush";
    wait(var_1);
    self._ID199 = "cover";
}

static_model_group_setup()
{
    thread _unknown_2222( "portal_first_street_flag", 1 );
    thread _unknown_222C( "portal_second_street_flag", 2 );
    thread _unknown_2236( "portal_golf_road_flag", 3 );
    thread _unknown_2240( "misc_model_group_golf_flag", 4 );
    thread _unknown_2249( "mansions_interior_flag", 5 );
    thread _unknown_2253( "misc_model_group_security_flag", 6 );
}

static_model_group_think( var_0, var_1 )
{
    _func_31C( var_1 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        _func_31B( var_1 );
        _ID42237::_ID14426( var_0 );
        _func_31C( var_1 );
    }
}

mansion_ceiling_fans_setup()
{
    level endon( "golf_course_vehicles_stop" );
    _ID42237::_ID14413( "portal_second_street_flag" );
    var_0 = _func_1A2( "mansion_ceiling_fan", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_82C7( ( 0, 250, 0 ), 20000 );
    }

    var_clear_2
    var_clear_0
}

_ID50162()
{
    for (;;)
    {
        self _meth_82C3( 24 );
        wait 0.05;
    }
}

plane_wire_anim_setup()
{
    _ID42237::_ID14413( "golf_course_vehicles_stop" );
    var_0 = _func_1A1( "plane_wires", "targetname" );
    var_0 _ID42407::_ID3428( "crashed_plane_wires" );
    var_0 thread _ID42259::_ID3044( var_0, "idle" );
}

mansion_horizontal_lights_setup()
{
    _ID42237::_ID14413( "golf_course_vehicles_stop" );
    var_0 = _func_1A2( "horizontal_lights", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        wait(_func_0B8( 2 ));
        var_2 _ID42407::_ID3428( "horizontal_lights" );
        var_2 thread _ID42259::_ID3044( var_2, "idle" );
    }

    var_clear_2
    var_clear_0
}

bx_signs_setup()
{
    level endon( "portal_second_street_flag" );
    var_0 = _func_1A2( "office_sign", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID3428( "signs" );
        var_2 thread _ID42259::_ID3044( var_2, "office_sign_idle" );
    }

    var_clear_2
    var_clear_0
    var_2 = _func_1A1( "bx_realstate_sign", "targetname" );
    var_2 _ID42407::_ID3428( "signs" );
    var_2 thread _ID42259::_ID3044( var_2, "bx_sign_idle" );
    var_2 = _func_1A1( "security_sign", "targetname" );
    var_2 _ID42407::_ID3428( "signs" );
    var_2 thread _ID42259::_ID3044( var_2, "security_sign_idle" );
}

plane_crash_culldist_setup()
{
    _ID42237::_ID14413( "golf_course_vehicles_stop" );

    for (;;)
    {
        _ID42237::_ID14413( "crash_culldist_flag" );
        _func_08E( 5000 );
        _ID42237::_ID14426( "crash_culldist_flag" );
        _func_08E( 0 );
    }
}

init_scope_fov_setup()
{
    _func_0DB( "r_lodFOVScaleOverride", 1 );
    _func_0DB( "r_lodFOVScaleOverrideStartMaxAngle", 65 );
    _func_0DB( "r_lodFOVScaleOverrideStartMinAngle", 55 );
    _func_0DB( "r_lodFOVScaleOverrideStopMaxAngle", 15 );
    _func_0DB( "r_lodFOVScaleOverrideStopMinAngle", 0 );
    _func_0DB( "r_lodFOVScaleOverrideAmount", 0.75 );
}

covered_bridge_exit_manage_allies()
{
    level endon( "golf_course_vehicles" );
    var_0 = _func_1A1( "bridge_exit_allies_no_suppress", "targetname" );
    var_0.alliesinzone = [];

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( _ID42237::_ID3303( var_0.alliesinzone, var_1 ) )
            continue;

        var_0.alliesinzone[var_0.alliesinzone.size] = var_1;
        var_1._ID513 = 1;

        if ( var_0.alliesinzone.size == 1 )
            var_0 thread _unknown_24FD();
    }
}

covered_bridge_exit_no_suppress()
{
    while ( self.alliesinzone.size > 0 )
    {
        waittillframeend;

        for ( var_0 = self.alliesinzone.size - 1; var_0 >= 0; var_0-- )
        {
            var_1 = self.alliesinzone[var_0];

            if ( _func_1A7( var_1 ) && var_1 _meth_80B0( self ) )
                continue;

            var_1._ID513 = 0;
            self.alliesinzone[var_0] = self.alliesinzone[self.alliesinzone.size - 1];
            self.alliesinzone[self.alliesinzone.size - 1] = undefined;
        }
    }
}
