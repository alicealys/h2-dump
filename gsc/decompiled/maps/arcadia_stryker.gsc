// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C7CE()
{
    level._id_CD37["ai"] = spawnstruct();
    level._id_CD37["ai"]._id_B926 = 3.0;
    level._id_CD37["ai"]._id_C1C0 = 3.0;
    level._id_CD37["ai"].target_min_range = 300;
    level._id_CD37["ai"]._id_CEAC = 3500;
    level._id_CD37["ai"]._id_D416 = 0;
    level._id_CD37["ai"]._id_BC07 = 300;
    level._id_CD37["ai"]._id_A922 = 3;
    level._id_CD37["ai"]._id_C833 = 10;
    level._id_CD37["ai"]._id_D224 = 8.0;
    level._id_CD37["ai"]._id_C549 = 15.0;
    level._id_CD37["ai"]._id_AEB3 = 0.1;
    level._id_CD37["ai"]._id_B379 = 0;
    level._id_CD37["manual"] = spawnstruct();
    level._id_CD37["manual"]._id_B926 = 4.0;
    level._id_CD37["manual"]._id_C1C0 = 0.2;
    level._id_CD37["manual"].target_min_range = 0;
    level._id_CD37["manual"]._id_CEAC = 4500;
    level._id_CD37["manual"]._id_D416 = 0;
    level._id_CD37["manual"]._id_BC07 = 200;
    level._id_CD37["manual"]._id_A922 = 15;
    level._id_CD37["manual"]._id_C833 = 25;
    level._id_CD37["manual"]._id_D224 = 0.1;
    level._id_CD37["manual"]._id_C549 = 0.4;
    level._id_CD37["manual"]._id_AEB3 = 0.1;
    level._id_CD37["manual"]._id_B379 = 1;
}

_id_BBBF()
{
    self._id_B39C = "ai";
    self._id_D1FC = undefined;
    thread _id_A8F3();
}

_id_C0D7( var_0 )
{
    self endon( "death" );
    self notify( "stryker_setmode_manual" );
    self endon( "stryker_setmode_manual" );
    self._id_B39C = "manual";
    self._id_D1FC = var_0;
    thread _id_A8F3();
    wait 20;
    thread _id_CBE1();
    thread _id_B373();
    thread _id_BBBF();
}

_id_A8F3()
{
    self notify( "stryker_turret_think" );
    self endon( "stryker_turret_think" );
    self endon( "death" );
    thread _id_CEE2();

    for (;;)
    {
        var_0 = _id_C9B3();

        if ( !isdefined( var_0 ) )
        {
            thread _id_AB68();
            wait( level._id_CD37[self._id_B39C]._id_C1C0 );
            _id_CEE2();
            continue;
        }

        _id_BC14( var_0 );
        wait( level._id_CD37[self._id_B39C]._id_C1C0 );
    }
}

_id_AB68()
{
    self endon( "death" );
    self endon( "stop_scanning" );
    self.scanning = 1;
    var_0 = 0;

    for (;;)
    {
        var_1 = anglestoforward( self.angles ) * 1000;

        if ( var_0 == 0 )
        {
            var_0 = 1;
            var_2 = randomintrange( -1500, -200 );
        }
        else
        {
            var_0 = 0;
            var_2 = randomintrange( 200, 1500 );
        }

        var_3 = anglestoright( self.angles ) * var_2;
        var_4 = self.origin + var_1 + var_3;
        var_4 = ( var_4[0], var_4[1], self.origin[2] );
        self setturrettargetvec( var_4 );
        wait( randomfloatrange( 2.0, 5.0 ) );
    }
}

_id_CEE2()
{
    self clearturrettargetent();
    self.scanning = undefined;
    self notify( "stop_scanning" );
}

_id_C9B3()
{
    var_0 = self.origin;

    if ( isdefined( self._id_D1FC ) )
        var_0 = self._id_D1FC;

    var_1 = level._id_CD37[self._id_B39C].target_min_range;
    var_2 = level._id_CD37[self._id_B39C]._id_CEAC;
    var_3 = level._id_CD37[self._id_B39C]._id_D416;
    var_4 = level._id_CD37[self._id_B39C]._id_BC07;
    var_5 = level._id_CD37[self._id_B39C]._id_B379;
    var_6 = [];
    var_7 = common_scripts\utility::get_enemy_team( self.script_team );
    var_8 = [];
    var_9 = [];
    var_10 = [];
    var_11 = [];

    if ( var_5 )
    {
        var_9 = level.vehicles[var_7];
        var_9 = common_scripts\utility::get_array_of_closest( var_0, var_9, undefined, undefined, var_4, var_3 );
        var_12 = getentarray( "destructible_vehicle", "targetname" );

        foreach ( var_14 in var_12 )
        {
            if ( isdefined( var_14.exploded ) )
                continue;

            var_10[var_10.size] = var_14;
        }

        var_12 = undefined;
        var_10 = common_scripts\utility::get_array_of_closest( var_0, var_10, undefined, undefined, var_4, var_3 );
    }

    var_11 = getaiarray( var_7 );
    var_11 = common_scripts\utility::get_array_of_closest( var_0, var_11, undefined, undefined, var_2, var_1 );
    var_8 = common_scripts\utility::array_combine( var_8, var_9 );
    var_8 = common_scripts\utility::array_combine( var_8, var_10 );
    var_8 = common_scripts\utility::array_combine( var_8, var_11 );
    var_9 = undefined;
    var_10 = undefined;
    var_11 = undefined;

    foreach ( var_17 in var_8 )
    {
        if ( isdefined( self.threatbiasgroup ) && issentient( var_17 ) )
        {
            var_18 = getthreatbias( var_17 getthreatbiasgroup(), self.threatbiasgroup );

            if ( var_18 <= -1000000 )
                continue;
        }

        if ( isdefined( var_17.ignoreme ) && var_17.ignoreme == 1 )
            continue;

        if ( isai( var_17 ) )
        {
            if ( !sighttracepassed( self gettagorigin( "tag_flash" ), var_17 geteye(), 0, self ) )
                continue;
        }

        return var_17;
    }

    return undefined;
}

_id_AF4D( var_0 )
{
    if ( isai( var_0 ) )
    {
        var_1 = var_0 geteye();
        var_2 = var_1[2] - var_0.origin[2];
        return ( 0, 0, var_2 );
    }

    if ( isdefined( var_0.vehicletype ) )
    {
        if ( var_0 maps\_vehicle::ishelicopter() )
            return ( 0, 0, -80 );

        return ( 0, 0, 30 );
    }

    if ( isdefined( var_0.destructibleinfo ) )
        return ( 0, 0, 30 );

    return ( 0, 0, 0 );
}

_id_BC14( var_0 )
{
    self notify( "stryker_shoot_target" );
    self endon( "stryker_shoot_target" );

    if ( !isdefined( var_0 ) )
        return;

    var_1 = _id_AF4D( var_0 );
    self setturrettargetent( var_0, var_1 );

    if ( self._id_D215 != var_0 )
        common_scripts\utility::waittill_notify_or_timeout( "turret_rotate_stopped", 1.0 );

    self._id_D215 = var_0;
    var_2 = gettime();

    while ( isdefined( var_0 ) )
    {
        var_3 = gettime() - var_2;

        if ( var_3 >= level._id_CD37[self._id_B39C]._id_B926 * 1000 )
            return;

        _id_C44E( var_0, var_1 );
        wait( randomfloatrange( level._id_CD37[self._id_B39C]._id_D224, level._id_CD37[self._id_B39C]._id_C549 ) );
    }
}

_id_C44E( var_0, var_1 )
{
    self notify( "stryker_fire_shots" );
    self endon( "stryker_fire_shots" );
    var_2 = randomintrange( level._id_CD37[self._id_B39C]._id_A922, level._id_CD37[self._id_B39C]._id_C833 );

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        if ( isdefined( var_0 ) && isdefined( var_1 ) )
            self fireweapon( "tag_flash", var_0, var_1, 0.0 );
        else
            self fireweapon( "tag_flash", undefined, ( 0, 0, 0 ), 0.0 );

        wait( level._id_CD37[self._id_B39C]._id_AEB3 );
    }
}

_id_CBE1()
{
    var_0 = [];
    var_0[var_0.size] = "arcadia_str_targdestroyed";
    var_0[var_0.size] = "arcadia_str_areasuppressed";
    var_0[var_0.size] = "arcadia_str_tasuppressed";

    if ( common_scripts\utility::flag( "disable_stryker_dialog" ) || _func_1FB() )
        return;

    thread maps\_utility::radio_dialogue( var_0[randomint( var_0.size )] );
}

_id_B373()
{
    level endon( "golf_course_mansion" );
    level endon( "laser_coordinates_received" );
    level._id_C7A3 notify( "stryker_laser_reminder_dialog" );
    level._id_C7A3 endon( "stryker_laser_reminder_dialog" );
    level._id_C7A3 endon( "death" );

    for (;;)
    {
        wait( randomintrange( 30, 60 ) );

        if ( !isalive( level._id_C7A3 ) )
            return;

        if ( common_scripts\utility::flag( "disable_stryker_dialog" ) || _func_1FB() )
            continue;

        if ( common_scripts\utility::flag_exist( "no_living_enemies" ) && common_scripts\utility::flag( "no_living_enemies" ) )
            continue;

        thread maps\arcadia_code::_id_A99F();
        var_0 = randomint( 5 );

        switch ( var_0 )
        {
            case 0:
                level.foley thread maps\_anim::anim_single_queue( level.foley, "arcadia_fly_usedesignator" );
                break;
            case 1:
                level.foley thread maps\_anim::anim_single_queue( level.foley, "arcadia_fly_painttargets" );
                break;
            case 2:
                thread maps\_utility::radio_dialogue( "arcadia_str_lasetarget" );
                break;
            case 3:
                thread maps\_utility::radio_dialogue( "arcadia_str_standingby" );
                break;
            case 4:
                thread maps\_utility::radio_dialogue( "arcadia_str_painttarget" );
                break;
        }
    }
}

_id_C2D9()
{
    level endon( "golf_course_mansion" );
    self waittill( "death" );
    wait 1.5;
    level.foley thread maps\_anim::anim_single_queue( level.foley, "arcadia_fly_lostbadgerone" );
}

achievement_target_confirmed_init()
{
    level.achievementstrikerkill = 0;
    maps\_utility::add_global_spawn_function( "axis", ::achievement_target_confirmed_ai_spawned );
    thread achievement_target_confirmed_manager();
}

achievement_target_confirmed_ai_spawned()
{
    level endon( "golf_course_mansion" );
    level endon( "achievement_striker_done" );
    level._id_C7A3 endon( "death" );
    self waittill( "death", var_0, var_1, var_2 );

    if ( isdefined( var_0 ) && var_0.classname == "script_vehicle_stryker50cal" )
    {
        if ( var_0._id_B39C == "manual" )
            level.achievementstrikerkill++;
    }
}

achievement_target_confirmed_manager()
{
    level endon( "golf_course_mansion" );
    level._id_C7A3 endon( "death" );

    while ( level.achievementstrikerkill < 80 )
        waitframe();

    maps\_utility::giveachievement_wrapper( "TARGET_CONFIRMED" );
    maps\_utility::remove_global_spawn_function( "axis", ::achievement_target_confirmed_ai_spawned );
    level notify( "achievement_striker_done" );
}
