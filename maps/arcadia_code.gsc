// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID48221( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    level._ID794 setorigin( var_1._ID740 );
    level._ID794 setplayerangles( var_1._ID65 );
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
    thread _ID53066();
    thread _ID49064();
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

        if ( randomint( 100 ) < 25 )
        {
            if ( !_ID42237::_ID14385( "disable_stryker_dialog" ) && !_func_1fb() )
                thread _ID42407::_ID28864( var_0[randomint( var_0.size )] );
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

        if ( randomint( 100 ) < 25 )
        {
            if ( !_ID42237::_ID14385( "disable_stryker_dialog" ) && !_func_1fb() )
                thread _ID42407::_ID28864( var_0[randomint( var_0.size )] );
        }
    }
}

_ID46945()
{
    if ( !isdefined( self._ID31388 ) )
        return;

    var_0 = strtok( self._ID31388, ":;, " );

    foreach ( var_2 in var_0 )
    {
        var_2 = tolower( var_2 );

        if ( var_2 == "playerseek" )
        {
            thread _ID53399();
            continue;
        }

        if ( var_2 == "ignoreme" )
        {
            _ID42407::_ID32353( 1 );
            continue;
        }

        if ( var_2 == "rpg_enemy" )
        {
            thread _ID49020();
            continue;
        }
    }
}

_ID48058()
{
    self waittill( "spawned",  var_0  );

    if ( !isalive( var_0 ) )
        return;

    var_0 endon( "death" );
    var_0 _ID42407::_ID32353( 1 );
    var_0 waittill( "jumpedout" );
    var_0 _ID42407::_ID32353( 0 );
}

_ID49020()
{
    if ( !isalive( level._ID51107 ) )
        return;

    self endon( "death" );
    _ID42407::_ID32353( 1 );
    wait 0.05;
    self._ID450 = 64;
    self._ID452 = 64;
    self waittill( "goal" );

    if ( !isalive( level._ID51107 ) )
    {
        _ID42407::_ID32353( 0 );
        return;
    }

    self setentitytarget( level._ID51107 );
    _ID42407::_ID10226( 3.0, _ID42407::_ID32353, 0 );
    _ID42237::_ID10192( 15.0, ::clearenemy );
}

_ID53399()
{
    self endon( "death" );

    if ( isdefined( self._ID1191 ) )
        self waittill( "goal" );

    self setgoalentity( level._ID794 );
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
    self linkto( var_0 );
    var_2 linkto( var_0 );
    var_3 = [];
    var_3[var_3.size] = self;
    var_3[var_3.size] = var_2;
    var_4 = "drop1";

    if ( _ID42237::_ID8201() )
        var_4 = "drop2";

    var_0 _ID42259::_ID3099( var_3, var_4 );
    var_2 delete();

    if ( isalive( self ) )
        self delete();
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
    var_0 = getentarray( "checkpoint_fake_chopper", "targetname" );
    _ID42237::_ID3294( var_0, ::hide );
    _ID42237::_ID14413( "checkpoint_fake_choppers" );

    if ( getdvarint( "r_arcadia_culldist" ) == 1 )
        return;

    _ID42237::_ID3350( var_0, ::_ID43441 );
}

_ID45504()
{
    var_0 = getentarray( "fake_creek_chopper", "targetname" );
    _ID42237::_ID3294( var_0, ::hide );
    _ID42407::_ID38929( "fake_creek_choppers_start" );
    _ID42237::_ID3350( var_0, ::_ID43441 );
}

_ID43441()
{
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_1 = var_0._ID740;
    var_2 = distance( self._ID740, var_1 );
    var_3 = var_2 / 1200;

    for (;;)
    {
        thread _ID51637( var_3, var_1 );

        if ( !isdefined( self._ID31103 ) )
            break;

        self._ID31103--;

        if ( self._ID31103 <= 0 )
            break;

        wait(randomfloatrange( 3.0, 5.0 ));
    }

    self delete();
}
#using_animtree("vehicles");

_ID51637( var_0, var_1 )
{
    var_2 = spawn( "script_model", self._ID740 );
    var_2 thread _ID49534();
    var_2 endon( "delete" );
    var_2._ID65 = self._ID65;
    var_3[0] = "vehicle_blackhawk_low";
    var_3[1] = "vehicle_pavelow_low";
    var_2 setmodel( var_3[randomint( var_3.size )] );
    var_2 useanimtree( #animtree );
    var_2 setanim( %bh_rotors, 1, 0.2, 1 );

    if ( randomint( 2 ) == 0 )
        var_2 maps\arcadia_aud::ambient_chopper_snd();

    var_2 moveto( var_1, var_0, 0, 0 );
    wait(var_0);
    var_2 delete();
}

_ID49534()
{
    self endon( "death" );
    level waittill( "delete_all_fake_choppers" );

    if ( !isdefined( self ) )
        return;

    self notify( "delete" );
    self delete();
}

_ID21733( var_0 )
{
    var_0 endon( "remove_laser_targeting_device" );
    var_0._ID22029 = undefined;
    var_0._ID21752 = 0;
    var_0 setweaponhudiconoverride( "actionslot4", "dpad_laser_designator" );
    var_0 notifyonplayercommand( "use_laser", "+actionslot 4" );

    if ( !var_0 _ID42407::_ID13023( "disable_stryker_laser" ) )
        var_0 _ID42407::_ID13024( "disable_stryker_laser" );

    var_1 = undefined;
    level._ID794 setactionslot( 4, "weapon", "usp_laserdesignator" );

    for (;;)
    {
        var_0 waittill( "use_laser" );

        if ( isdefined( var_0.disable_laser_designator ) && var_0.disable_laser_designator )
            continue;

        if ( var_0._ID21752 )
        {
            var_0 notify( "cancel_laser" );
            var_0 laseroff();

            if ( var_0 getcurrentweapon() == "usp_laserdesignator" )
            {
                if ( isdefined( var_1 ) )
                {
                    var_0 switchtoweapon( var_1 );
                    jump loc_5AA
                }

                var_0 disableweaponswitch();
                var_1 = undefined;

                while ( var_0 getcurrentweapon() == "usp_laserdesignator" )
                    waittillframeend;
            }

            if ( isdefined( var_0.previousdontallowcache ) )
            {
                var_0._ID11546 = var_0.previousdontallowcache;
                var_0.previousdontallowcache = undefined;
            }
            else
                var_0._ID11546 = undefined;

            var_0._ID21752 = 0;
            var_0 takeweapon( "usp_laserdesignator" );
            var_0 enableweaponpickup();
            var_0 enableweaponswitch();
        }
        else
        {
            var_0._ID21752 = 1;
            var_1 = var_0 getcurrentweapon();
            var_0 giveweapon( "usp_laserdesignator" );
            var_0 switchtoweapon( "usp_laserdesignator" );
            var_0 disableweaponswitch();
            var_0 disableweaponpickup();

            while ( var_0 getcurrentweapon() != "usp_laserdesignator" )
                waittillframeend;

            var_0 childthread _ID51536();
            var_0 childthread _ID52954( 0.2 );
            wait 0.1;
            wait(var_0 _meth_859b() / 1000 - 0.1);
            var_0 enableweaponswitch();
            var_0 thread _ID21706();

            if ( isdefined( var_0._ID11546 ) )
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
        var_2 = length2dsquared( self getvelocity() );

        if ( self issprinting() || self getstance() == "prone" && var_2 > 25 )
        {
            if ( var_1 )
            {
                self laseroff();
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
        if ( self getcurrentweapon() != "usp_laserdesignator" )
        {
            self notify( "use_laser" );
            break;
        }

        waittillframeend;
    }
}

_ID52668( var_0, var_1 )
{
    var_2 = getentarray( "stryker_target_location", "targetname" );
    var_3 = spawn( "script_origin", var_0 );

    foreach ( var_5 in var_2 )
    {
        if ( !var_3 istouching( var_5 ) )
            continue;

        var_3 delete();
        return var_5._ID922;
    }

    var_3 delete();

    if ( isdefined( var_1 ) )
    {
        if ( isdefined( var_1._ID1282 ) || isdefined( var_1._ID10556 ) )
        {
            if ( isdefined( var_1._ID1282 ) && var_1._ID1282 == "mi17" )
                return "chopper";
            else
                return "vehicle";
        }

        if ( isai( var_1 ) )
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
        var_4 = _ID52668( var_1, var_2 );
        level._ID794 thread _ID42407::_ID27079( "wpn_plr_laser_target_acquired" );
        wait 0.4;

        switch ( var_4 )
        {
            case "house":
                var_3[var_3.size] = "arcadia_str_havealock";
                var_3[var_3.size] = "arcadia_str_badgeronecopies";
                break;
            case "yellowhouse":
                var_3[var_3.size] = "arcadia_str_engyellowhouse";
                break;
            case "greyhouse":
                var_3[var_3.size] = "arcadia_str_targgreyhouse";
                break;
            case "firetruck":
                var_3[var_3.size] = "arcadia_str_engfiretruck";
                break;
            case "policecar":
                var_3[var_3.size] = "arcadia_str_confpolicecar";
                break;
            case "apartment_office":
                var_3[var_3.size] = "arcadia_str_apartmentoffice";
                break;
            case "security_station":
                var_3[var_3.size] = "arcadia_str_securitystation";
                break;
            case "checkpoint":
                var_3[var_3.size] = "arcadia_str_checkpoint";
                break;
            case "vehicle":
                var_3[var_3.size] = "arcadia_str_attackingvehicle";
                var_3[var_3.size] = "arcadia_str_engagingvehicle";
                break;
            case "chopper":
                var_3[var_3.size] = "arcadia_str_engchopper";
                break;
            case "ai":
                var_3[var_3.size] = "arcadia_str_engaginginfantry";
                break;
            case "generic":
                var_3[var_3.size] = "arcadia_str_wehavelock";
                var_3[var_3.size] = "arcadia_str_engaging";
                var_3[var_3.size] = "arcadia_str_attacking";
                var_3[var_3.size] = "arcadia_str_solidcopyeng";
                break;
            default:
                break;
        }
    }
    else
    {
        var_3[var_3.size] = "arcadia_str_uhnegative";
        var_3[var_3.size] = "arcadia_str_invalidtarget";
        var_3[var_3.size] = "arcadia_str_outtarange";
        var_3[var_3.size] = "arcadia_str_outofrange";
    }

    if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1fb() )
        return;

    thread _ID42407::_ID28864( var_3[randomint( var_3.size )] );
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
    var_0 = _ID15795();
    var_1 = var_0["position"];
    var_2 = var_0["entity"];
    level notify( "laser_coordinates_received" );
    var_3 = undefined;

    if ( _ID42237::_ID14385( "golf_course_mansion" ) )
        var_3 = _ID54700( var_1 );

    if ( isdefined( var_3 ) )
        thread _ID21702( var_3 );
    else if ( !_ID42237::_ID14385( "disable_stryker_laser" ) && !_ID42407::_ID13019( "disable_stryker_laser" ) )
    {
        if ( isalive( level._ID51107 ) )
        {
            var_4 = distance( level._ID51107._ID740, var_1 );
            var_5 = var_4 >= 200 && var_4 <= 3500;
            thread _ID45433( var_5, var_1, var_2 );

            if ( var_5 )
                level._ID51107 thread maps\arcadia_stryker::_ID49367( var_1 );
        }
    }

    wait 0.5;
    self notify( "use_laser" );
}

_ID54700( var_0 )
{
    var_1 = getentarray( "stealth_laser_zone", "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( level._ID49728[var_3._ID31245] )
            continue;

        var_4 = distance( var_0, var_3._ID740 );

        if ( var_4 <= var_3._ID851 )
            return var_3._ID31245;
    }

    return undefined;
}

_ID15795()
{
    var_0 = self geteye();
    var_1 = self getplayerangles();
    var_2 = anglestoforward( var_1 );
    var_3 = var_0 + var_2 * 7000;
    var_4 = bullettrace( var_0, var_3, 1, self );
    var_5 = var_4["entity"];

    if ( isdefined( var_5 ) )
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
    var_2 = getentarray( var_0, "targetname" );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( var_5._ID31245 == var_1 )
            var_3[var_3.size] = var_5;
    }

    return var_3;
}

_ID21702( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    _ID42237::_ID14402( "used_laser_golf" );
    _ID42407::_ID14543( "allies" );
    level._ID49728[var_0] = 1;
    var_2 = undefined;

    if ( var_0 == 0 )
    {
        _ID42237::_ID14402( "lazed_targets_0" );
        level._ID794 thread _ID42407::_ID27079( "wpn_plr_laser_target_acquired" );
        var_2 = getent( "artillery_soundent_0", "targetname" );

        if ( !var_1 )
            thread _ID42407::_ID28864( "arcadia_art_missionrec" );
    }

    if ( var_0 == 1 )
    {
        _ID42237::_ID14402( "lazed_targets_1" );
        level._ID794 thread _ID42407::_ID27079( "wpn_plr_laser_target_acquired" );
        var_2 = getent( "artillery_soundent_1", "targetname" );

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
    playrumbleonposition( "arcadia_artillery_rumble", var_2._ID740 );
    var_4 = _ID45879( "golf_before", var_0 );
    _ID42237::_ID3294( var_4, ::hide );
    var_5 = _ID45879( "golf_after", var_0 );
    _ID42237::_ID3294( var_5, ::show );

    if ( var_0 == 0 )
    {
        _ID42237::_ID14402( "stealth_bombed_0" );
        objective_additionalposition( 0, 0, ( 0, 0, 0 ) );
    }

    if ( var_0 == 1 )
    {
        _ID42237::_ID14402( "stealth_bombed_1" );
        objective_additionalposition( 0, 1, ( 0, 0, 0 ) );
    }
}

_ID48885()
{
    thread _ID46440();
    _ID42237::_ID14413( "golf_course_battle" );
    level._ID51107 connectpaths();
    level._ID51107 delete();
    thread maps\arcadia::_ID51929();
    thread _ID47814();
    level._ID794 thread _ID42407::_ID41628();
    _ID42237::_ID3350( getentarray( "golf_course_enemy_spawner", "targetname" ), ::_ID50352 );
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

    foreach ( var_2 in var_0 )
    {
        var_3 = var_2 _ID42407::_ID35192();
        var_3._ID37340 = var_2 _ID42237::_ID15808();

        if ( var_3._ID1282 == "bmp" )
            var_3 thread _ID45975();

        var_3 thread _ID53365();
    }

    _ID42237::_ID3350( getentarray( "golf_course_zpu", "targetname" ), ::_ID44946 );
}

_ID53365()
{
    var_0 = "stealth_bombed_" + self._ID31245;
    _ID42237::_ID14413( var_0 );
    wait 1;

    if ( isalive( self ) )
        self kill();

    if ( isdefined( self ) )
        self notify( "death" );
}

_ID46833()
{
    var_0 = getentarray( "fake_golf_course_chopper", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 hide();

    _ID42237::_ID14413( "golf_course_vehicles" );
    thread _ID47865();
    var_4 = 27.0833;
    level endon( "delete_all_fake_choppers" );
    var_5 = 0;
    var_6 = randomintrange( 8, 16 );

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );

        foreach ( var_2 in var_0 )
        {
            var_8 = _ID42237::_ID16638( var_2._ID1191, "targetname" );
            var_2 thread _ID51637( var_4, var_8._ID740 );
            var_5++;

            if ( var_5 >= var_6 )
            {
                var_5 = 0;
                var_6 = randomintrange( 8, 16 );
                wait(randomfloatrange( 24.0, 34.0 ));
                continue;
            }

            wait(randomfloatrange( 0.5, 1.5 ));
        }
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
    var_3 = getentarray( self._ID1191, "targetname" );

    foreach ( var_5 in var_3 )
    {
        if ( issubstr( var_5._ID170, "actor" ) )
        {
            var_1 = var_5;
            continue;
        }

        if ( issubstr( var_5._ID170, "trigger" ) )
            var_2 = var_5;
    }

    var_7 = var_1 _ID42407::_ID35014();
    var_7._ID3189 = "zpu_gunner";
    var_8 = _ID42407::_ID35028( "zpu_turret", self._ID740 );
    var_8._ID65 = self._ID65;
    var_8._ID31245 = var_0;
    self delete();
    var_7 linkto( var_8, "tag_driver" );
    thread _ID50081( var_8, var_7, var_2 );
    thread _ID52190( var_8, var_7, var_2 );

    if ( isdefined( var_2 ) )
        thread _ID52971( var_8, var_7, var_2 );

    var_8 thread _ID53365();
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

        if ( !isdefined( var_9 ) || var_9 != var_10 )
        {
            var_8 notify( "stop_fire_loop" );
            waitframe;
            var_8 thread _ID42259::_ID3044( var_7, var_10, "stop_fire_loop", "tag_driver" );
            var_8 thread _ID42259::_ID3044( var_8, var_10, "stop_fire_loop" );
            wait(getanimlength( var_8 _ID42407::_ID16120( var_10 )[0] ));
        }

        var_9 = var_10;
    }
}

_ID50081( var_0, var_1, var_2 )
{
    var_0 waittill( "death" );
    _ID49298( var_0, var_1 );
    thread _ID42237::_ID27077( "exp_armor_vehicle", var_0._ID740 );
    var_0 setmodel( "vehicle_zpu4_burn" );
}

_ID52190( var_0, var_1, var_2 )
{
    var_1 endon( "dismount" );
    var_1 waittill( "damage_notdone" );
    _ID49298( var_0, var_1 );
    var_0 _ID42259::_ID3111( var_1, "gunnerdeath", "tag_driver" );
    var_0 thread _ID42259::_ID3044( var_1, "death_idle", "stop_death_loop", "tag_driver" );
}

_ID52971( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    var_1 endon( "death" );
    var_2 waittill( "trigger" );
    var_1 notify( "dismount" );
    _ID49298( var_0, var_1 );
    var_1._ID49 = 1;
    var_1._ID24924 = 1;
    var_1 unlink();
    var_0 _ID42259::_ID3111( var_1, "dismount", "tag_driver" );
}

_ID49298( var_0, var_1 )
{
    var_0 notify( "stop_shooting" );
    var_0 notify( "stop_fire_loop" );
    var_0 _ID42407::_ID3136();
    var_0 playrumbleonentity();

    if ( isalive( var_1 ) )
    {
        var_1 notify( "stop_shooting" );
        var_1 notify( "stop_fire_loop" );
        var_1 _ID42407::_ID3136();
    }

    var_0 setanim( level._ID30895[var_0._ID3189]["idle"], 1.0, 0, 1 );
}

_ID46090( var_0 )
{
    playfxontag( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash" );
    playfxontag( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash2" );
    var_0 playsound( "zpu_fire1" );
}

_ID49911( var_0 )
{
    playfxontag( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash1" );
    playfxontag( _ID42237::_ID16299( "zpu_muzzle" ), var_0, "tag_flash3" );
    var_0 playsound( "zpu_fire2" );
}

_ID45975()
{
    if ( isdefined( self._ID922 ) && self._ID922 == "bmp" )
        level._ID47656 = self;

    self endon( "death" );
    self endon( "attacking_player" );

    for (;;)
    {
        self setturrettargetvec( self._ID37340[randomint( self._ID37340.size )]._ID740 );
        wait(randomfloatrange( 0.5, 1.5 ));
        var_0 = randomintrange( 2, 7 );

        for ( var_1 = 0; var_1 < var_0; var_1++ )
        {
            self fireweapon();
            wait 0.3;
        }
    }
}

_ID50352()
{
    var_0 = _ID42407::_ID35014( 1 );

    if ( !isdefined( var_0 ) || !isalive( var_0 ) )
        return;

    var_0._ID452 = 16;
    var_0 endon( "death" );
    var_1 = getnode( self._ID1191, "targetname" );
    var_0 setgoalnode( var_1 );
    var_2 = getentarray( "golf_enemy_target", "targetname" );
    var_0 setentitytarget( var_2[randomint( var_2.size )] );

    if ( !isdefined( var_1._ID1191 ) )
        return;

    var_3 = getnode( var_1._ID1191, "targetname" );
    wait(randomfloatrange( 9.0, 11.0 ));
    var_0 setgoalnode( var_3 );
}

_ID48686()
{
    _ID42237::_ID14413( "crashing_c130" );
    var_0 = _ID42411::_ID35196( "c130_spawner" );
    var_0 thread _ID42407::_ID27079( "scn_arcadia_c130_goingdown" );
    _ID42475::_ID34575( "start_crash_mix", "c130_sequence_started" );
    thread _ID44320();
    thread _ID47510( var_0 );
}

_ID47510( var_0 )
{
    playfxontag( level._ID1426["c130_engine_crashing"], var_0, "tag_prop_l_1" );
    playfxontag( level._ID1426["c130_engine_crashing"], var_0, "tag_prop_r_2" );
    wait 6.8;
    earthquake( 0.2, 0.25, var_0._ID740, 8000 );
    playfxontag( level._ID1426["c130_engine_explosion"], var_0, "tag_prop_l_1" );
    var_0 thread _ID42407::_ID27079( "scn_arcadia_c130_explosions" );
    wait 1.2;
    earthquake( 0.18, 0.25, var_0._ID740, 8000 );
    playfxontag( level._ID1426["c130_engine_explosion_sml"], var_0, "tag_light_belly" );
    var_0 thread _ID42407::_ID27079( "scn_arcadia_c130_explosions" );
    wait 2.1;
    earthquake( 0.18, 0.25, var_0._ID740, 8000 );
    playfxontag( level._ID1426["c130_engine_explosion_sml"], var_0, "tag_light_top" );
    var_0 thread _ID42407::_ID27079( "scn_arcadia_c130_explosions" );
    wait 2.0;
    _ID42234::_ID13611( "c130_crash_impact" );
    _ID42234::_ID13611( "c130_crash_leftovers" );
    wait 0.35;
    earthquake( 0.45, 0.7, var_0._ID740, 15000 );
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
        var_3 = spawn( "script_model", var_0 );
        var_3._ID65 = var_1;
        var_3 setmodel( "tag_origin" );
        playfxontag( _ID42237::_ID16299( var_2 ), var_3, "tag_origin" );
        _ID42237::_ID14413( "remove_sun_blocker" );
        var_3 delete();
        _ID42237::_ID14426( "remove_sun_blocker" );
    }
}

_ID18146()
{
    _ID42237::_ID14413( "harriers_spawn" );
    var_0 = _ID42411::_ID35199( "harrier" );

    foreach ( var_2 in var_0 )
    {
        var_2 setgoalyaw( var_2._ID65[1] );
        var_2 setvehgoalpos( var_2._ID740, 1 );
        var_2 _ID42411::_ID16988();
        var_2 sethoverparams( randomintrange( 80, 120 ), randomintrange( 50, 80 ), randomintrange( 10, 20 ) );
        var_2 thread maps\arcadia_aud::_ID48779();
    }

    _ID42237::_ID14413( "harriers_move" );

    foreach ( var_5, var_2 in var_0 )
    {
        thread _ID42411::_ID17021( var_2 );
        var_2 thread maps\arcadia_aud::_ID49592();
        var_2 thread _ID50085( var_5 + 2 );
        wait 2.0;
    }
}

_ID50085( var_0 )
{
    wait 15;

    if ( !isalive( self ) )
        return;

    self setvehweapon( "harrier_FFAR" );
    var_1[0] = "tag_right_alamo_missile";
    var_1[1] = "tag_left_alamo_missile";
    var_2 = 0;

    for ( var_3 = 0; var_3 < var_0; var_3++ )
    {
        self fireweapon( var_1[var_2], undefined, ( 0, 0, -250 ) );
        var_2++;

        if ( var_2 >= var_1.size )
            var_2 = 0;

        wait 0.4;
    }
}

_ID46323()
{
    var_0 = [];
    var_1 = getentarray( self._ID1191, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3 notsolid();
        var_3._ID740 = var_3._ID740 - ( 0, 0, 1024 );
        var_0[var_0.size] = "vehicle_bad_place_brush_" + var_3 getentitynumber();
    }

    var_5 = [ level._ID388, level._ID44224 ];

    for (;;)
    {
        self waittill( "trigger",  var_6  );

        if ( !isalive( level._ID51107 ) )
            return;

        if ( !isdefined( var_6 ) )
            continue;

        if ( var_6 != level._ID51107 )
            continue;

        if ( var_6 vehicle_getspeed() == 0 )
            continue;

        foreach ( var_11, var_3 in var_1 )
        {
            if ( !isdefined( var_3._ID44254 ) )
            {
                var_3 solid();
                badplace_brush( var_0[var_11], 0, var_3, "allies", "axis" );

                foreach ( var_9 in var_5 )
                {
                    if ( var_3 istouching( var_9 ) )
                        thread ai_leave_badplace_zone( var_9, var_3 );
                }

                var_3 notsolid();
                var_3._ID44254 = 1;
            }

            thread _ID48695( var_3, var_0[var_11] );
        }
    }
}

ai_leave_badplace_zone( var_0, var_1 )
{
    if ( !isdefined( var_0.leavebadplacezonecount ) )
        var_0.leavebadplacezonecount = 1;
    else
        var_0.leavebadplacezonecount = var_0.leavebadplacezonecount + 1;

    var_0._ID513 = 1;
    var_0._ID52 = 0;
    var_0._ID7._ID11043 = 1;

    while ( isdefined( var_1 ) && var_1 istouching( var_0 ) )
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
    var_0 solid();
    badplace_delete( var_1 );
    var_0 notsolid();
    var_0._ID44254 = undefined;
}

_ID51783()
{
    self endon( "death" );
    self._ID9798 = 1;
    thread maps\arcadia_aud::_ID49380();
    wait 7;
    var_0 = getent( "evac_chopper_1_rpg", "targetname" );
    var_1 = distance( var_0._ID740, self._ID740 );
    var_1 *= 1.2;
    missile_createattractorent( self, 100000, var_1 );
    var_2 = magicbullet( "rpg_straight", var_0._ID740, self._ID740 );
    var_2 thread _ID42407::_ID27079( "scn_rpg_shoot_01" );
    self waittill( "damage" );

    if ( isalive( self ) )
        self kill();
}

_ID54278()
{
    _ID42237::_ID14413( "civilian_car" );
    var_0 = _ID42411::_ID35196( "civilian_car" );
    var_0 endon( "death" );
    var_0 thread maps\arcadia_aud::_ID47993();
    var_0 thread _ID44913();
    var_1 = getent( "civilian_car_clip", "targetname" );
    badplace_brush( "civilian_car_badplace", 12, var_1, "allies", "axis" );
    var_0 waittill( "reached_end_node" );
    var_0 dodamage( 500000, var_0._ID740, level._ID794 );
}

_ID44913()
{
    var_0 = getent( "civilian_car_dummy", "targetname" );
    var_1 = getent( var_0._ID1191, "targetname" );
    var_1 linkto( var_0 );
    var_2[0] = getent( "civilian_car_luggage_1", "targetname" );
    var_2[1] = getent( "civilian_car_luggage_2", "targetname" );
    var_2[2] = getent( "civilian_car_luggage_3", "targetname" );
    var_2[3] = getent( "civilian_car_luggage_4", "targetname" );
    var_2[4] = getent( "civilian_car_luggage_5", "targetname" );
    var_2[5] = getent( "civilian_car_luggage_6", "targetname" );

    foreach ( var_4 in var_2 )
        var_4 linkto( var_0 );

    var_0._ID740 = self._ID740;
    var_0._ID65 = self._ID65;
    var_0 linkto( self );
    wait 6;
    var_6 = vectornormalize( var_1._ID740 - var_0._ID740 );

    foreach ( var_4 in var_2 )
    {
        wait(randomfloatrange( 0.05, 0.15 ));
        var_4 unlink();
        var_8 = randomfloatrange( 1500, 2500 );
        var_4 physicslaunchclient( var_4._ID740, var_6 * var_8 );
    }

    var_0 delete();
    var_1 delete();
}

parked_civilian_car_lighting()
{
    var_0 = getent( "parked_car", "script_noteworthy" );
    var_1 = getent( "parked_car_light_org", "targetname" );

    if ( isdefined( var_0 ) && isdefined( var_1 ) )
        var_0 _meth_848a( var_1._ID740 );
}

_ID51431()
{
    var_0 = self._ID486 - self._ID18313;
    thread _ID45173( var_0 * 0.75, "smoke_1", level._ID1426["damaged_wheel_smoke"], "left_wheel_08_jnt", ( 105, -50, -25 ), ( 0, 180, 0 ) );
    thread _ID45173( var_0 * 0.45, "smoke_3", level._ID1426["badger_dmg_smk"], "tag_playerride", ( 30, -12, -5 ), ( -20, 260, 0 ) );
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
    var_0 = getent( self._ID1191, "targetname" );
    var_1 = getaiarray( "axis" );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( !var_4 istouching( var_0 ) )
            continue;

        var_2[var_2.size] = var_4;
    }

    if ( var_2.size == 0 )
        return;

    _ID42237::_ID3350( var_2, ::_ID52348 );
}

_ID52348()
{
    self endon( "death" );
    wait(randomfloatrange( 0, 1.0 ));

    if ( isalive( self ) )
        self delete();
}

_ID45315()
{
    var_0 = undefined;

    if ( issubstr( self._ID170, "trigger" ) )
    {
        self waittill( "trigger" );
        var_0 = getent( self._ID1191, "targetname" );
    }
    else
    {
        wait 6;
        var_0 = self;
    }

    for (;;)
    {
        if ( isdefined( level._ID51107 ) )
        {
            var_1 = magicbullet( "rpg_straight", var_0._ID740, level._ID51107._ID740 + ( 0, 0, 60 ) );
            var_1 thread maps\arcadia_aud::_ID52296();

            if ( !isdefined( var_0._ID1191 ) )
                return;

            var_0 = getent( var_0._ID1191, "targetname" );
        }

        wait(randomfloatrange( 1.0, 2.0 ));
    }
}

_ID45978()
{
    self notify( "ai_avoid_stryker" );
    self endon( "ai_avoid_stryker" );
    self endon( "death" );
    var_0 = cos( 90 );
    var_1 = 160000;

    for (;;)
    {
        wait 0.2;

        if ( !isalive( level._ID51107 ) )
            break;

        if ( _ID42237::_ID14385( "disable_friendly_move_checks" ) )
            break;

        var_2 = distancesquared( self._ID740, level._ID51107._ID740 ) <= var_1;
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
    var_0 = getent( "pool", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isplayernumber( var_1 ) )
            continue;

        while ( var_1 istouching( var_0 ) )
        {
            var_1 setmovespeedscale( 0.3 );
            var_1 allowstand( 1 );
            var_1 allowcrouch( 0 );
            var_1 allowprone( 0 );
            wait 0.1;
        }

        var_1 setmovespeedscale( 1 );
        var_1 allowstand( 1 );
        var_1 allowcrouch( 1 );
        var_1 allowprone( 1 );
    }
}

_ID51604()
{
    wait 0.05;
    _ID42237::_ID14413( "all_enemies_low_health" );
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
    {
        if ( isalive( var_2 ) )
            var_2._ID486 = 1;
    }
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
    var_0 = cos( 35 );
    var_1 = 0;

    while ( isalive( level._ID51107 ) )
    {
        wait 0.1;
        var_2 = level._ID51107 vehicle_getspeed();

        if ( var_2 <= 1 )
            continue;

        if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1fb() )
            continue;

        var_3 = distance( level._ID794._ID740, level._ID51107._ID740 );

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

    if ( !isdefined( level._ID47656 ) )
        return;

    level._ID47656 endon( "death" );
    level._ID47656 notify( "attacking_player" );

    for (;;)
    {
        level._ID47656 setturrettargetent( level._ID794, ( 0, 0, 20 ) );
        wait(randomfloatrange( 0.5, 1.5 ));
        var_0 = randomintrange( 8, 15 );

        for ( var_1 = 0; var_1 < var_0; var_1++ )
        {
            level._ID47656 fireweapon();
            wait 0.2;
        }
    }
}

_ID53091()
{
    level endon( "stealth_bombed_1" );
    _ID42237::_ID14413( "bmp_force_kills_player" );
    level._ID794 kill();
}

_ID46846()
{
    level endon( "stealth_bombed_0" );
    _ID42237::_ID14413( "force_artillery_0" );
    thread _ID21702( 0, 1 );
}

_ID45256()
{
    _ID42237::_ID14413( "honey_badger_threats_dead_1" );

    if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1fb() )
        return;

    thread _ID42407::_ID28864( "arcadia_str_thanks" );
}

_ID53156()
{
    _ID42237::_ID14413( "honey_badger_threats_dead_2" );

    if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1fb() )
        return;

    thread _ID42407::_ID28864( "arcadia_str_nicework" );
}

_ID43758( var_0 )
{
    if ( getdvarint( "r_arcadia_culldist" ) == 0 )
        return;

    setculldist( var_0 );
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
        case "street":
            var_6 = var_1;
            break;
        case "checkpoint":
            var_6 = var_2;
            break;
        case "golf":
            var_6 = var_3;
            break;
        case "crash":
            var_6 = var_4;
            break;
        case "no_game":
            var_6 = var_5;
            break;
        default:
            var_6 = var_0;
            break;
    }

    return var_6;
}

initialize_portal_flags()
{
    var_0 = portal_group_start_point_initializer();

    foreach ( var_2 in var_0 )
        _ID42237::_ID14402( var_2 );
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
    thread static_model_group_think( "portal_first_street_flag", 1 );
    thread static_model_group_think( "portal_second_street_flag", 2 );
    thread static_model_group_think( "portal_golf_road_flag", 3 );
    thread static_model_group_think( "misc_model_group_golf_flag", 4 );
    thread static_model_group_think( "mansions_interior_flag", 5 );
    thread static_model_group_think( "misc_model_group_security_flag", 6 );
}

static_model_group_think( var_0, var_1 )
{
    _func_31c( var_1 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        _func_31b( var_1 );
        _ID42237::_ID14426( var_0 );
        _func_31c( var_1 );
    }
}

mansion_ceiling_fans_setup()
{
    level endon( "golf_course_vehicles_stop" );
    _ID42237::_ID14413( "portal_second_street_flag" );
    var_0 = getentarray( "mansion_ceiling_fan", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 rotatevelocity( ( 0, 250, 0 ), 20000 );
}

_ID50162()
{
    for (;;)
    {
        self addpitch( 24 );
        wait 0.05;
    }
}

plane_wire_anim_setup()
{
    _ID42237::_ID14413( "golf_course_vehicles_stop" );
    var_0 = getent( "plane_wires", "targetname" );
    var_0 _ID42407::_ID3428( "crashed_plane_wires" );
    var_0 thread _ID42259::_ID3044( var_0, "idle" );
}

mansion_horizontal_lights_setup()
{
    _ID42237::_ID14413( "golf_course_vehicles_stop" );
    var_0 = getentarray( "horizontal_lights", "targetname" );

    foreach ( var_2 in var_0 )
    {
        wait(randomfloat( 2 ));
        var_2 _ID42407::_ID3428( "horizontal_lights" );
        var_2 thread _ID42259::_ID3044( var_2, "idle" );
    }
}

bx_signs_setup()
{
    level endon( "portal_second_street_flag" );
    var_0 = getentarray( "office_sign", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42407::_ID3428( "signs" );
        var_2 thread _ID42259::_ID3044( var_2, "office_sign_idle" );
    }

    var_2 = getent( "bx_realstate_sign", "targetname" );
    var_2 _ID42407::_ID3428( "signs" );
    var_2 thread _ID42259::_ID3044( var_2, "bx_sign_idle" );
    var_2 = getent( "security_sign", "targetname" );
    var_2 _ID42407::_ID3428( "signs" );
    var_2 thread _ID42259::_ID3044( var_2, "security_sign_idle" );
}

plane_crash_culldist_setup()
{
    _ID42237::_ID14413( "golf_course_vehicles_stop" );

    for (;;)
    {
        _ID42237::_ID14413( "crash_culldist_flag" );
        setculldist( 5000 );
        _ID42237::_ID14426( "crash_culldist_flag" );
        setculldist( 0 );
    }
}

init_scope_fov_setup()
{
    setsaveddvar( "r_lodFOVScaleOverride", 1 );
    setsaveddvar( "r_lodFOVScaleOverrideStartMaxAngle", 65 );
    setsaveddvar( "r_lodFOVScaleOverrideStartMinAngle", 55 );
    setsaveddvar( "r_lodFOVScaleOverrideStopMaxAngle", 15 );
    setsaveddvar( "r_lodFOVScaleOverrideStopMinAngle", 0 );
    setsaveddvar( "r_lodFOVScaleOverrideAmount", 0.75 );
}

covered_bridge_exit_manage_allies()
{
    level endon( "golf_course_vehicles" );
    var_0 = getent( "bridge_exit_allies_no_suppress", "targetname" );
    var_0.alliesinzone = [];

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( _ID42237::_ID3303( var_0.alliesinzone, var_1 ) )
            continue;

        var_0.alliesinzone[var_0.alliesinzone.size] = var_1;
        var_1._ID513 = 1;

        if ( var_0.alliesinzone.size == 1 )
            var_0 thread covered_bridge_exit_no_suppress();
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

            if ( isalive( var_1 ) && var_1 istouching( self ) )
                continue;

            var_1._ID513 = 0;
            self.alliesinzone[var_0] = self.alliesinzone[self.alliesinzone.size - 1];
            self.alliesinzone[self.alliesinzone.size - 1] = undefined;
        }
    }
}
