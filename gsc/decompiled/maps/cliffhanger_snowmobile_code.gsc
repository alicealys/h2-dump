// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B5EC()
{
    self endon( "death" );
    thread _id_AEF2();

    for (;;)
    {
        self.baseaccuracy = 0;
        common_scripts\utility::flag_wait( "price_ditches_player" );
        self.baseaccuracy = 1000;
        common_scripts\utility::flag_waitopen( "price_ditches_player" );
        self.baseaccuracy = 0;
    }
}

_id_AEF2()
{
    self.goalradius = 250;
    var_0 = spawn( "script_origin", ( 0, 0, 0 ) );

    for (;;)
    {
        if ( !isalive( self ) )
            return;

        if ( common_scripts\utility::flag( "player_slides_down_hill" ) )
        {
            self delete();
            return;
        }

        if ( common_scripts\utility::flag( "price_ditches_player" ) )
            self clearentitytarget();
        else
        {
            self setentitytarget( var_0 );
            var_1 = vectortoangles( level.player.origin - self.origin );
            var_1 = ( 0, var_1[1], 0 );
            var_2 = anglestoforward( var_1 );
            var_0.origin = level.player.origin + var_2 * 250;
            var_3 = common_scripts\utility::randomvector( 200 );
            var_3 = ( var_3[0], var_3[1], 0 );
            var_0.origin += var_3;
            var_0.origin = common_scripts\utility::drop_to_ground( var_0.origin ) + ( 0, 0, 1 );
        }

        self setgoalpos( level.player.origin );
        wait( randomfloatrange( 0.4, 0.7 ) );
    }
}

_id_A8F2()
{
    level endon( "player_slides_down_hill" );

    for (;;)
    {
        var_0 = distance( level.price.origin, level.player.origin ) < 256;

        if ( common_scripts\utility::flag( "price_ditches_player" ) )
        {
            if ( var_0 )
            {
                common_scripts\utility::flag_clear( "price_ditches_player" );
                level.price.ignoreme = 0;
            }
        }
        else if ( !var_0 )
        {
            common_scripts\utility::flag_set( "price_ditches_player" );
            level.price.ignoreme = 1;
        }

        wait 0.05;
    }
}

_id_B4F8()
{
    if ( common_scripts\utility::flag( "player_gets_on_snowmobile" ) )
        return;

    level endon( "player_gets_on_snowmobile" );

    for (;;)
    {
        var_0 = distance( self.origin, level.player.origin );
        var_1 = 60;
        var_2 = 1000;
        var_0 = var_2 - var_0;

        if ( var_0 < 0 )
            var_0 = 0;

        var_3 = 60 * var_0 / 1000;
        self vehicle_setspeed( var_3, 1, 1 );
        wait 0.05;
    }
}

_id_ADCA()
{
    var_0 = getent( "price_goes_down_hill", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger", var_1 );

        if ( !isalive( var_1 ) )
            continue;

        if ( var_1 == level.price )
            break;
    }

    level.price.vehicle thread snowmobile_increase_traction( 5 );
    level.price.vehicle notify( "stop_modulating_speed" );
    level.price.vehicle resumespeed( 100 );
    level.price.vehicle thread snowmobile_increase_traction_below_z_coord( 5, -24000 );
}

snowmobile_increase_traction( var_0 )
{
    self endon( "death" );
    self _meth_85BD( 10, 10, 1 );
    wait( var_0 );
    self _meth_85BD( 2, 2, 1 );
}

snowmobile_increase_traction_below_z_coord( var_0, var_1 )
{
    self endon( "death" );

    while ( self.origin[2] > var_1 )
        waitframe();

    snowmobile_increase_traction( var_0 );
}

_id_CA78()
{
    level.price.vehicle = self;
    common_scripts\utility::flag_wait( "price_ready_for_auto_speed" );
    level.price maps\_utility::forceuseweapon( level._id_D24F, "primary" );
    _id_B4F8();
    thread _id_C4A7::_id_AC91();
    thread _id_ADCA();
    self waittill( "reached_end_node" );
}

_id_AB72()
{
    self endon( "unload" );
    level.price endon( "jumpedout" );
    wait 4;
    maps\_vehicle::vehicle_unload();
}

_id_BD92()
{
    maps\_utility::add_spawn_function( ::_id_B902 );
    common_scripts\utility::flag_wait( "snowmobile_in_house" );
    maps\_utility::spawn_ai();
}

_id_B902()
{
    self.ignoreall = 1;
    self endon( "death" );

    for (;;)
    {
        if ( !isdefined( level.player.vehicle ) )
            break;

        var_0 = distance( level.player.vehicle.origin, self.origin );

        if ( var_0 < 300 )
            self.ignoreall = 0;

        if ( var_0 < 210 )
        {
            maps\_utility::set_generic_deathanim( "balcony_death" );
            self kill();
            return;
        }

        wait 0.05;
    }
}

_id_B263()
{
    var_0 = 0.05;
    var_1 = 2;
    var_1 /= var_0;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        if ( !isdefined( level.player.vehicle ) )
            return;

        var_3 = anglestoforward( level.player.vehicle.angles );
        var_4 = level.player.vehicle.origin + var_3 * 55;
        var_4 = ( var_4[0], var_4[1], level.player.vehicle.origin[2] );
        physicsexplosionsphere( var_4, 165, 125, 50 );
        wait( var_0 );
    }
}

_id_BC9F()
{
    self._id_B33B = 1;
    var_0 = getent( "price_bike_path", "targetname" );

    for (;;)
    {
        self vehicledriveto( var_0.origin, 20 );

        if ( distance( self.origin, var_0.origin ) < var_0.radius )
            break;

        wait 0.2;
    }

    common_scripts\utility::flag_wait( "player_gets_on_snowmobile" );
    self.health = 5000;
}

_id_CB10()
{
    self._id_B878 = 0;
    self._id_B796 = 0;
    self endon( "death" );

    for (;;)
        wait 0.2;
}

_id_B02D()
{
    var_0 = getent( "avalanche_progress_org", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = distance( var_0.origin, var_1.origin );

    for (;;)
    {
        var_3 = _id_C4A7::get_progression_between_points( self.origin, var_0.origin, var_1.origin );
        var_4 = var_3["progress"];
        level._id_BF8C = var_4;
        level._id_C42A = var_4 / var_2;
        wait 0.2;
    }
}

_id_D203()
{
    common_scripts\utility::waittill_either( "death", "veh_collision" );
    level._id_C522 = maps\_utility::array_remove_nokeys( level._id_C522, self );
}

_id_B8EE()
{
    self waittill( "spawned", var_0 );
    var_0 endon( "death" );
    var_0 thread maps\_vehicle_code::vehicle_becomes_crashable();
    var_0 thread maps\cliffhanger_code::_id_CCB2();
    level._id_C522[level._id_C522.size] = var_0;
    var_0._id_D1B0 = 0;
    var_0 thread _id_D203();
    var_0 _id_B0F8();
}

_id_B0F8()
{
    var_0 = getent( "avalanche_progress_org", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = gettime();
    self vehicle_setspeed( 35, 25, 25 );

    for (;;)
    {
        var_3 = _id_C4A7::get_progression_between_points( self.origin, var_0.origin, var_1.origin );
        var_4 = var_3["progress"];
        var_5 = var_4 - level._id_BF8C;
        self.progress_dif = var_5;
        var_5 += self._id_D1B0;

        if ( var_5 > 250 )
            var_6 = 0.25;
        else if ( var_5 > 50 )
            var_6 = 0.75;
        else if ( var_5 < -400 )
            var_6 = 2;
        else if ( var_5 < -200 )
            var_6 = 1.2;
        else if ( var_5 < -100 )
            var_6 = 1.05;
        else
            var_6 = 1;

        if ( gettime() > var_2 + 3000 )
        {
            var_7 = level._id_C89B vehicle_getspeed();
            self vehicle_setspeed( var_7 * var_6, 25, 25 );
        }

        wait 0.2;
    }
}

_id_D19D()
{
    for (;;)
    {
        var_0 = 100;
        waittillframeend;

        if ( level._id_C522.size )
        {
            var_1 = common_scripts\utility::get_array_of_closest( level._id_C89B.origin, level._id_C522 );

            for ( var_2 = 0; var_2 < var_1.size; var_2++ )
            {
                var_1[var_2]._id_D1B0 = var_0;
                var_0 += randomintrange( 100, 200 );
            }
        }

        wait 0.21;
    }
}

_id_BAF6()
{
    var_0 = getvehiclenode( self.target, "targetname" );
    self hide();
    level._id_CD23[level._id_CD23.size] = self;
    var_1 = common_scripts\utility::spawn_tag_origin();
    var_1 linkto( self, "tag_origin", ( 0, 0, 256 ), ( 0, 0, -90 ) );
    playfxontag( level._effect["avalanche_loop_large"], var_1, "tag_origin" );
    thread maps\_vehicle::gopath( self );
    self._id_D1B0 = 2000;
    thread _id_A9E1();
}

_id_A9E1()
{
    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "main_avalanche" )
    {
        level._id_B696 = self;
        var_0 = getent( "avalanche_trigger", "targetname" );
        var_0 playsound( "avalanche_ambiance_main" );
        self.progress = 0;
        var_0 thread _id_AFA7();
        var_0 thread _id_AAB3();
    }

    var_1 = getent( "avalanche_progress_org", "targetname" );
    var_2 = getent( var_1.target, "targetname" );

    for (;;)
    {
        var_3 = _id_C4A7::get_progression_between_points( self.origin, var_1.origin, var_2.origin );
        var_4 = var_3["progress"];
        self.progress = var_4;
        var_5 = var_4 - level._id_BF8C;
        self.progress_dif = var_5;
        var_5 += self._id_D1B0;
        var_6 = 1;

        if ( var_5 > -100 && var_5 < 100 )
            var_6 = 1;
        else if ( var_5 < -200 )
            var_6 = 1.5;
        else if ( var_5 < -400 )
            var_6 = 2;
        else if ( var_5 > 120 )
            var_6 = 0.25;

        var_7 = level._id_C89B vehicle_getspeed();
        self vehicle_setspeed( var_7 * var_6, 150, 150 );
        wait 0.2;
    }
}

_id_AFA7()
{
    var_0 = getent( "avalanche_progress_org", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = vectortoangles( var_0.origin - var_1.origin );
    self.angles = var_2 + ( 0, 90, 0 );
    var_3 = distance( var_0.origin, var_1.origin );

    for (;;)
    {
        var_4 = level._id_B696.progress - 100;
        var_5 = var_4 / var_3;
        self.origin = var_0.origin * ( 1 - var_5 ) + var_1.origin * var_5;
        wait 0.2;
    }
}

_id_AAFD( var_0 )
{
    wait 1;
    maps\_vehicle::gopath( self );

    for (;;)
    {
        wait 12.5;
        self.attachedpath = undefined;
        self notify( "newpath" );
        self attachpath( var_0 );
        maps\_vehicle::gopath( self );
    }
}

_id_AAB3()
{
    for (;;)
    {
        self waittill( "trigger", var_0 );
        var_0 notify( "driver_died" );
    }
}

_id_CE9E( var_0 )
{
    foreach ( var_2 in level._id_CD23 )
        var_2._id_D1B0 = var_0;
}

_id_B110()
{
    level endon( "snowmobile_jump" );
    level endon( "enemy_snowmobiles_wipe_out" );
    var_0 = 3;
    common_scripts\utility::flag_wait( "player_starts_snowmobile_trip" );

    for (;;)
    {
        thread _id_C4A7::_id_B44C();
        wait( var_0 );
        var_0 -= 0.5;

        if ( var_0 < 0.5 )
            var_0 = 0.5;
    }
}

_id_C506()
{
    self endon( "death" );
    wait 20;
    self.baseaccuracy = 1;
}

_id_B322()
{
    self vehphys_disablecrashing( 1 );
}

_id_C4EC()
{
    if ( !isdefined( self._id_A87F._id_D2DE ) )
    {
        thread maps\_utility::magic_bullet_shield();
        wait 7.5;
        maps\_utility::stop_magic_bullet_shield();
    }
}

_id_BE0B()
{
    self endon( "death" );
    common_scripts\utility::flag_wait( "player_rides_snowmobile" );
    wait( randomfloat( 0.35 ) );
    self kill();
}

_id_A891()
{
    thread _id_BF48( 1 );
    self vehphys_disablecrashing();

    foreach ( var_1 in self.riders )
    {
        var_2 = "";

        if ( isdefined( var_1.script_noteworthy ) )
            var_2 = var_1.script_noteworthy;

        if ( var_2 == "magic_bullet_spawner" )
            var_1 thread _id_BE0B();
        else
            var_1.health = 20;

        var_1 thread _id_C506();
    }

    var_4 = isdefined( self.script_noteworthy ) && self.script_noteworthy == "god_vehicle_spawner";

    if ( var_4 )
    {
        self.riders[0] _id_C4EC();
        level._id_CFAD = self;
        level._id_C12C = self.riders;
        self waittill( "reached_end_node" );
        wait 3;
        _id_B322();
    }
    else
    {
        thread maps\_vehicle_code::vehicle_becomes_crashable();
        _id_D1A7();
    }

    if ( isalive( self.riders[0] ) )
    {
        foreach ( var_1 in self.riders )
        {
            if ( isalive( var_1 ) )
                var_1.baseaccuracy = 1;
        }
    }

    self vehicle_setspeed( 0, 35, 35 );
    level._id_BEBF[level._id_BEBF.size] = self;
    level notify( "new_icepick_snowmobile" );
}

_id_BF48( var_0 )
{
    self._id_D2B4 = 1;
    wait( var_0 );
    self._id_D2B4 = 0;
}

_id_AE8A()
{
    level endon( "player_rides_snowmobile" );
    self waittill( "reached_end_node" );
}

_id_D1A7()
{
    self.riders[0] endon( "death" );
    self endon( "death" );
    self endon( "veh_collision" );
    _id_AE8A();
    common_scripts\utility::flag_wait( "player_starts_snowmobile_trip" );
    var_0 = maps\_vehicle::_id_B3C5( self.origin );

    if ( isdefined( level._id_AEC8 ) )
        var_0 thread [[ level._id_AEC8 ]]( self );
}

_id_BDDB()
{
    if ( level.start_point != "snowspawn" )
        common_scripts\utility::flag_wait( "enemies_persue_on_bike" );

    var_0 = getent( "hunter_killer", "targetname" );
    var_1 = var_0 maps\_utility::spawn_vehicle();
    level._id_D197 = var_1;
    common_scripts\utility::flag_set( "hk_gives_chase" );
    var_1._id_A81D = 4000;
    var_1._id_CC90 = 0;
    var_1._id_BCFA = 3;
    var_1 maps\_utility::ent_flag_init( "firing" );
    var_1 thread _id_CBF4();
    var_1 thread _id_AB1D();
}

_id_AB64()
{
    self endon( "death" );

    if ( !isdefined( level.player.vehicle ) )
        return;

    self endon( "stop_tracking" );
    self setvehweapon( "hind_turret" );
    var_0 = anglestoforward( level.player.angles );
    level._id_C174.origin = level.player.origin;
    var_1 = spawn( "script_origin", level.player.origin );
    self setturrettargetent( level._id_C174, ( 0, 0, 0 ) );
    self setlookatent( level.player );
    var_2 = 3000;
    var_3 = 5000;
    var_4 = level.player.vehicle vehicle_getspeed() * 80;

    if ( var_4 < var_2 && self._id_CC90 < 9 )
        var_4 = var_2;
    else if ( var_4 > var_3 )
        var_4 = var_3;

    var_5 = var_0 * var_4;
    level._id_C174.origin = level.player.origin + var_5;
    var_1.origin = level._id_C174.origin;
    var_1 linkto( level.player );
    var_6 = 5;

    for (;;)
    {
        level._id_C174.origin = _id_BFE0( var_1.origin, 0 );

        if ( maps\_utility::within_fov_2d( self.origin, self.angles, level._id_C174.origin, 0.9 ) )
            break;

        wait 0.05;
    }

    var_7 = randomintrange( 6, 9 );
    var_8 = level._id_C174.origin;
    var_9 = var_7;

    if ( self._id_CC90 < 5 )
        var_9 = var_7 - 2;

    for ( var_10 = 0; var_10 < var_9; var_10++ )
    {
        var_11 = var_10 / var_7;
        var_12 = var_8 * ( 1 - var_11 ) + level.player.origin * var_11;
        level._id_C174.origin = _id_BFE0( var_12, 0 );
        var_13 = randomfloatrange( 0.1, 0.3 );
        maps\_helicopter_globals::fire_missile( "hind_zippy", 1, level._id_C174, var_13 );
    }

    var_1 delete();
}

_id_BE01( var_0 )
{
    var_1 = 0;

    foreach ( var_4, var_3 in var_0 )
        var_1 += var_3;

    var_5 = randomfloat( var_1 );
    var_1 = 0;

    foreach ( var_7, var_3 in var_0 )
    {
        var_1 += var_3;

        if ( var_5 <= var_1 )
            return var_7;
    }
}

_id_C137()
{
    self endon( "death" );
    level endon( "avalanche_begins" );

    if ( common_scripts\utility::flag( "avalanche_begins" ) )
        return;

    for (;;)
    {
        self._id_BE94 = randomfloatrange( -4, 4 );

        if ( self._id_CC90 < self._id_BCFA )
            self._id_A81D = randomfloatrange( 1000, 5000 );

        wait( randomfloatrange( 4, 8 ) );
    }
}

_id_CBF4()
{
    self endon( "death" );
    self vehicle_setspeed( 120, 50, 50 );
    self._id_BE94 = 0;
    thread _id_C137();
    common_scripts\utility::flag_wait( "player_gets_on_snowmobile" );

    for (;;)
    {
        if ( _id_C4A7::_id_D0B7().index > 0 )
            break;

        wait 0.05;
    }

    self setyawspeed( 300, 160, 160 );
    self vehicle_setspeed( 350, 75, 275 );
    level._id_C174 = spawn( "script_origin", level.player.origin );
    self setlookatent( level._id_C174 );

    for (;;)
    {
        var_0 = randomfloatrange( 7500, 9500 );
        var_1 = randomfloatrange( 550, 750 );

        if ( common_scripts\utility::cointoss() )
            var_1 *= -1;

        var_2 = _id_C4A7::_id_BBA5( _id_C4A7::_id_D0B7(), _id_C4A7::_id_D031() + var_0, var_1 );
        var_2 = _id_BFE0( var_2, 1200 );
        self neargoalnotifydist( 1000 );

        if ( !common_scripts\utility::flag( "bad_heli_goes_to_death_position" ) )
        {
            _id_A8DB( var_2 );
            self setvehgoalpos( var_2, 1 );
        }

        var_3 = gettime();
        _id_AB64();
        var_4 = randomfloatrange( 2, 3 );
        maps\_utility::wait_for_buffer_time_to_pass( var_3, var_4 );
        self notify( "stop_tracking" );
    }
}

_id_CE5C()
{
    var_0 = maps\_vehicle::_id_B3C5( self.origin );
    var_1 = _id_C4A7::get_progression_between_points( self.origin, var_0.midpoint, var_0.next_node.midpoint );

    for (;;)
    {
        var_2 = var_1["progress"];
        var_3 = _id_C4A7::progress_dif( var_0, var_2, _id_C4A7::_id_D0B7(), _id_C4A7::_id_D031() );

        if ( var_3 < 1200 )
            return;

        wait 0.5;
    }
}

_id_A8DB( var_0 )
{
    level endon( "bad_heli_goes_to_death_position" );
    self endon( "death" );
    var_1 = 0.2;

    for (;;)
    {
        if ( distance( self.origin, var_0 ) < 2500 )
            return;

        var_2 = maps\_utility::set_z( self.origin, 0 );
        var_3 = vectortoangles( var_0 - var_2 );
        var_4 = anglestoforward( var_3 );
        var_5 = var_2 + var_4 * 600;
        var_5 = ( var_5[0], var_5[1], self.origin[2] );
        var_5 = _id_BFE0( var_5, 1200 );
        self setvehgoalpos( var_5, 0 );
        wait( var_1 );
    }
}

_id_D527()
{
    self notify( "stop_tracking" );
    self endon( "stop_tracking" );
    self endon( "death" );

    for (;;)
    {
        var_0 = _id_C34C( self.origin, level.player.origin );
        self setgoalyaw( var_0 );
        level._id_AA97 = var_0;
        wait 0.05;
    }
}

_id_C34C( var_0, var_1 )
{
    var_2 = vectortoangles( var_1 - var_0 );
    return var_2[1];
}

_id_BFE0( var_0, var_1 )
{
    var_2 = bullettrace( var_0 + ( 0, 0, 2000 ), var_0 + ( 0, 0, -15000 ), 0, self );
    return var_2["position"] + ( 0, 0, var_1 );
}

_id_AB1D()
{
    self endon( "death" );
    var_0 = _id_C4A7::_id_D0B7().index;
    var_1 = _id_C4A7::_id_D0B7();
    var_2 = _id_C4A7::_id_D031();
    var_3 = 350;

    for (;;)
    {
        var_4 = _id_C4A7::_id_D0B7().index;
        var_5 = _id_C4A7::_id_D031();

        if ( var_4 == var_0 )
        {
            if ( var_5 < var_2 + var_3 )
                self._id_CC90++;
            else
                self._id_CC90 = 0;
        }
        else if ( var_4 < var_0 )
            self._id_CC90++;
        else if ( var_4 > var_0 + 1 )
            self._id_CC90 = 0;
        else if ( var_5 + var_1._id_AB4E > var_0 + var_3 )
            self._id_CC90 = 0;

        if ( self._id_CC90 == 0 )
        {
            var_0 = _id_C4A7::_id_D0B7().index;
            var_1 = _id_C4A7::_id_D0B7();
            var_2 = _id_C4A7::_id_D031();
        }

        self._id_D51E = self._id_CC90 > 10;
        self._id_A8AD = self._id_CC90 > 50;

        if ( self._id_CC90 > 3 )
            common_scripts\utility::flag_clear( "can_save" );
        else if ( !common_scripts\utility::flag( "can_save" ) )
            common_scripts\utility::flag_set( "can_save" );

        if ( self._id_CC90 >= self._id_BCFA )
            self._id_A81D = 1000;

        wait 0.5;
    }
}

_id_D259()
{
    level._id_BE57 endon( "death" );

    for (;;)
    {
        var_0 = _id_C4A7::_id_D0B7();
        var_1 = _id_C4A7::_id_D031();
        var_1 += 7500;
        var_2 = _id_C4A7::get_position_from_spline( var_0, var_1, 0 );
        var_2 = maps\_utility::set_z( var_2, level._id_BE57.origin[2] );
        var_2 = physicstrace( var_2 + ( 0, 0, 5000 ), var_2 + ( 0, 0, -5000 ) );
        self.origin = var_2;
        wait 5;
    }
}

_id_B0B3( var_0, var_1 )
{
    if ( !isdefined( level._id_BE57 ) )
        return;

    var_2 = getent( "objective_end_org", "targetname" );
    var_3 = distance( var_2.origin, level._id_BE57.origin );
    var_4 = maps\_utility::getentwithflag( var_1 );
    var_5 = getent( var_4.target, "targetname" );
    var_6 = vectortoangles( var_5.origin - var_4.origin );
    var_7 = anglestoforward( var_6 );
    var_5.origin = var_4.origin + var_7 * 500000;
    var_6 = vectortoangles( var_5.origin - level._id_BE57.origin );
    var_7 = anglestoforward( var_6 );
    var_8 = level._id_BE57.origin + var_7 * var_3;
    objective_position( var_0, var_8 );
}

_id_B277()
{
    common_scripts\utility::flag_wait( "enemies_persue_on_bike" );
    maps\_utility::radio_dialogue( "outrunthem" );
    wait 4;
    maps\_utility::radio_dialogue( "keepmoving" );
    wait 3;
    maps\_utility::radio_dialogue( "gogogo" );
    common_scripts\utility::flag_wait( "snowmobile_price_full_speed" );
    maps\_utility::radio_dialogue( "comeoncomeon" );
}

_id_B293()
{
    for (;;)
    {
        if ( level._id_C42A > 0.6 )
            break;

        wait 0.1;
    }

    thread maps\_utility::radio_dialogue_queue( "gonnamakeit" );

    for (;;)
    {
        if ( level._id_C42A > 0.7 )
            break;

        wait 0.1;
    }

    thread maps\_utility::radio_dialogue_queue( "comeoncomeon" );

    for (;;)
    {
        if ( level._id_C42A > 0.9 )
            break;

        wait 0.1;
    }

    thread maps\_utility::radio_dialogue_queue( "hangon2" );
}

_id_C161()
{
    var_0 = missile_createrepulsorent( level.player, 10000, 2000 );
}

_id_AB8C()
{
    for (;;)
    {
        self waittill( "trigger" );
        level.player.position = self.script_noteworthy;
        level notify( "new_player_position", self.script_noteworthy );
        wait 2;
    }
}

_id_CCB8()
{
    var_0 = self.origin;
    var_1 = getent( self.target, "targetname" );
    var_2 = var_1.angles;
    var_3 = level._id_B739[level._id_C6CD];
    level._id_C6CD++;

    if ( level._id_C6CD >= level._id_B739.size )
        level._id_C6CD = 0;

    maps\_utility::set_generic_deathanim( var_3 );
    _id_B421();

    if ( !isalive( self ) )
    {
        level._id_BE14++;
        level notify( "cliff_death" );
        return;
    }

    wait( randomfloatrange( 0.2, 0.7 ) );

    if ( isalive( self ) )
    {
        self setgoalpos( var_0 );
        self.goalradius = distance( self.origin, var_0 ) / 2;
        common_scripts\utility::waittill_either( "goal", "death" );
    }

    level._id_BE14++;
    level notify( "cliff_death" );

    if ( !isalive( self ) )
        return;

    self endon( "death" );
    self.goalradius = 8;
    self waittill( "goal" );
    self delete();
}

_id_B421()
{
    self endon( "death" );
    common_scripts\utility::flag_wait( "clifftop_snowmobile_guys_die" );
    wait( randomfloatrange( 0.1, 0.3 ) );
}

_id_B914()
{
    level._id_BE14 = 0;
    level._id_B739 = [];
    level._id_B739[level._id_B739.size] = "cliffdeath_1";
    level._id_B739[level._id_B739.size] = "cliffdeath_2";
    level._id_B739[level._id_B739.size] = "cliffdeath_3";
    level._id_B739[level._id_B739.size] = "cliffdeath_4";
    level._id_B739 = common_scripts\utility::array_randomize( level._id_B739 );
    level._id_C6CD = 0;
}

_id_D59A()
{
    var_0 = randomint( 360 );
    self.angles = ( 0, var_0, 0 );
    var_1 = 64;
    var_2 = randomint( var_1 * 2 ) - var_1;
    self.origin += ( var_2, 0, 0 );
    var_3 = bullettrace( self.origin + ( 0, 0, 64 ), self.origin + ( 0, 0, -64 ), 0, undefined );
    self.origin = var_3["position"] + ( 0, 0, -8 );
    self.clip hide();
    self.clip.origin = self.origin;
    var_4 = common_scripts\_createfx::createloopsound();
    var_4.v["origin"] = self.origin;
    var_4.v["angles"] = ( 270, 0, 0 );
    var_4.v["soundalias"] = "velocity_whitenoise_loop";
}

_id_C021()
{
    self endon( "death" );
    self.baseaccuracy = 0.2;

    for (;;)
    {
        var_0 = getentarray( "script_vehicle_littlebird_armed", "classname" );

        if ( var_0.size )
        {
            var_1 = common_scripts\utility::getclosest( self.origin, var_0, 8000 );
            self setentitytarget( var_1, 0.75 );
        }

        wait( randomfloatrange( 0.5, 1 ) );
    }
}

_id_AC4E()
{
    wait 2;
    maps\_helicopter_globals::fire_missile( "hind_zippy", 1, level._id_D197 );
    wait 0.35;
    maps\_helicopter_globals::fire_missile( "hind_zippy", 1, level._id_D197 );
    wait 0.35;
    maps\_helicopter_globals::fire_missile( "hind_zippy", 1, level._id_D197 );
    wait 0.35;
    common_scripts\utility::flag_set( "bad_heli_missile_killed" );
    maps\_helicopter_globals::fire_missile( "hind_zippy", 1, level._id_D197 );
    wait 0.35;
    maps\_helicopter_globals::fire_missile( "hind_zippy", 1, level._id_D197 );
    common_scripts\utility::flag_wait( "end_camp_player_leaves_camp" );
    waittillframeend;

    if ( maps\_utility::player_looking_at( self.origin ) )
        return;

    self vehicle_setspeedimmediate( 120, 50, 35 );
    maps\_vehicle::_id_B2F5( "instant" );
    wait 2;
    maps\_vehicle::_id_B2F5( "fast" );
}

_id_C652()
{
    level._id_C846 = self;
    maps\_utility::ent_flag_init( "landed" );
    maps\_vehicle::_id_B400();
    common_scripts\utility::flag_set( "ending_heli_flies_in" );

    for ( var_0 = 1; var_0 < 5; var_0++ )
        self.attachedguys[var_0].customunloadfunc = ::_id_BBC7;

    if ( isdefined( self._id_CC28["trigger_multiple"] ) )
        common_scripts\utility::array_thread( self._id_CC28["trigger_multiple"], ::_id_D461 );

    if ( isdefined( self._id_CC28["trigger_use"] ) )
        common_scripts\utility::array_thread( self._id_CC28["trigger_use"], ::_id_ACA3 );

    self waittill( "reached_dynamic_path_end" );
    self waittill( "near_goal" );
    self disconnectpaths();
    maps\_utility::ent_flag_set( "landed" );
    common_scripts\utility::flag_wait( "player_boards" );

    if ( 1 )
        return;

    var_1 = maps\_utility::spawn_anim_model( "player_rig" );
    var_1 hide();
    var_1 linkto( self, "tag_detach", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread maps\_anim::anim_single_solo( var_1, "player_evac", "tag_detach" );
    level.player playerlinktoblend( var_1, "tag_origin", 0.5, 0.2, 0.2 );
    maps\_utility::delaythread( 0.5, ::_id_D36E, var_1, "tag_origin" );
    wait 6;
    common_scripts\utility::flag_wait( "price_enters_heli" );
    var_2 = common_scripts\utility::getstruct( "ending_heli_escape_path", "targetname" );
    thread maps\_vehicle::vehicle_paths( var_2 );
    common_scripts\utility::flag_wait( "ending_heli_leaves" );
    maps\_utility::nextmission();
}

_id_BBC7( var_0, var_1 )
{
    var_0 thread _id_B393( self, var_1 );
    return 1;
}

_id_B393( var_0, var_1 )
{
    var_2 = maps\_vehicle_aianim::anim_pos( self, var_1 );
    var_3 = maps\_vehicle_aianim::getanimatemodel();

    if ( isdefined( var_2.vehicle_getoutanim ) )
    {
        var_3 thread maps\_vehicle_aianim::setanimrestart_once( var_2.vehicle_getoutanim, var_2.vehicle_getoutanim_clear );
        var_4 = 0;

        if ( isdefined( var_2.vehicle_getoutsoundtag ) )
        {
            var_4 = maps\_vehicle_aianim::check_sound_tag_dupe( var_2.vehicle_getoutsoundtag );
            var_5 = var_3 gettagorigin( var_2.vehicle_getoutsoundtag );
        }
        else
            var_5 = var_3.origin;

        if ( isdefined( var_2.vehicle_getoutsound ) && !var_4 )
            thread common_scripts\utility::play_sound_in_space( var_2.vehicle_getoutsound, var_5 );

        var_4 = undefined;
    }

    thread maps\_vehicle_aianim::guy_idle( var_0, var_1 );
    common_scripts\utility::flag_wait( "h2_ending_begins" );
    var_0 notify( "stop_idle" );
    var_0 unlink();
    level._id_C28B thread maps\_anim::anim_single_solo( var_0, "cliffhanger_ending_soldier_" + var_1, undefined, undefined, "generic" );
}

_id_D461()
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( common_scripts\utility::flag( "player_boards" ) )
            break;

        if ( level.player getvelocity()[2] > 8 )
            break;
    }

    self delete();
    common_scripts\utility::flag_set( "player_boards" );
}

_id_ACA3()
{
    self sethintstring( &"CLIFFHANGER_BOARD" );
    maps\_utility::add_wait( maps\_utility::waittill_msg, "trigger" );
    level maps\_utility::add_wait( maps\_utility::waittill_msg, "player_boards" );
    maps\_utility::do_wait_any();
    common_scripts\utility::flag_set( "player_boards" );
    self delete();
}

_id_B069()
{
    for (;;)
    {
        if ( !isdefined( level.player.vehicle ) )
            return;

        if ( distance( level.player.origin, self.origin ) < 800 )
        {
            level.player.vehicle vehicle_setspeed( 0, 5, 35 );

            if ( level.player.vehicle vehicle_getspeed() < 5 )
                break;
        }

        wait 0.05;
    }

    level.player maps\_utility::player_dismount_vehicle();
    level.player.vehicle vehicle_setspeed( 0, 5, 25 );
}

_id_D36E( var_0, var_1 )
{
    level.player playerlinktodelta( var_0, var_1, 1, 90, 90, 35, 45 );
}

_id_AFE9()
{

}

_id_C884()
{

}

_id_B5F7()
{
    if ( !isalive( level.price ) )
        return;

    level.price endon( "death" );
    var_0 = newhudelem();
    var_0 setshader( "overhead_obj_icon_world", 10, 10 );
    var_0.alpha = 1.0;
    var_0.color = ( 1, 1, 1 );
    var_0 setwaypoint( 1, 0 );
    var_0 settargetent( level.price );
    common_scripts\utility::flag_wait( "player_boards" );
    var_0 destroy();
}

_id_C0CC()
{
    common_scripts\utility::flag_wait( "hk_gives_chase" );

    for (;;)
    {
        self waittill( "trigger", var_0 );

        if ( isdefined( level._id_D197 ) && level._id_D197 != var_0 )
            continue;

        break;
    }

    common_scripts\utility::flag_set( "bad_heli_goes_to_death_position" );
    var_1 = common_scripts\utility::getstruct( self.target, "targetname" );
    level._id_D197 setvehgoalpos( var_1.origin, 1 );
}

_id_C80D()
{
    for (;;)
        self waittill( "trigger", var_0 );
}

_id_ADE8()
{
    for (;;)
    {
        self waittill( "trigger", var_0 );

        if ( !isdefined( level.player.vehicle ) )
            continue;

        if ( !isdefined( level.price.vehicle ) )
            continue;

        if ( var_0 == level.player.vehicle )
            continue;

        if ( var_0 == level.price.vehicle )
            continue;

        if ( !isdefined( var_0.wipeout ) )
            continue;

        if ( var_0.wipeout )
            continue;

        var_0.wipeout = 1;
    }
}

_id_D01B()
{
    self waittill( "trigger" );
    var_0 = getvehiclenode( self.target, "targetname" );
    level.player.vehicle.veh_pathtype = "follow";
    level.player.vehicle startpath( var_0 );
    level.player freezecontrols( 1 );
    common_scripts\utility::flag_wait( "end_begins" );
    wait 4.45;
    level.player freezecontrols( 0 );
}

_id_B9B1()
{
    for (;;)
    {
        self waittill( "trigger" );
        thread scene_snowmobile_ending();
        var_0 = 0;

        while ( level.player istouching( self ) )
        {
            var_1 = vectornormalize( maps\_utility::set_z( level._id_C28B.origin - level.player.vehicle.origin, 0 ) );
            var_2 = anglestoforward( level.player.vehicle.angles );
            var_3 = vectordot( var_1, var_2 );

            if ( var_3 > 0 )
            {
                var_0 = 1;
                break;
            }

            level.player.vehicle _meth_85C0( 1 );
            waitframe();
        }

        level.player.vehicle _meth_85C0( 0 );

        if ( var_0 )
            break;
    }

    var_4 = getent( "snowmobile_end_collision", "targetname" );
    var_4 delete();
    var_5 = level.player.vehicle;
    var_6 = level.price.vehicle;
    var_7 = level.scr_anim["snowmobile_player"]["cliffhanger_ending"];
    var_8 = getstartorigin( level._id_C28B.origin, level._id_C28B.angles, var_7 );
    var_9 = getstartangles( level._id_C28B.origin, level._id_C28B.angles, var_7 );
    var_10 = getanimlength( var_7 );
    var_11 = 61.4;
    var_5 _meth_85A1( var_8, anglestoforward( var_9 ), var_11 );
    var_5 vehicle_setspeed( var_11, var_11 / 4, var_11 / 4 );
    level.player freezecontrols( 1 );
    var_5._id_CDDC = 0;

    for (;;)
    {
        var_12 = anglestoforward( var_5.angles );
        var_13 = var_5 vehicle_getspeed();
        var_14 = var_5.origin + var_12 * ( var_13 * 17.6 ) * 0.05;
        var_15 = distance2d( var_5.origin, var_8 );
        var_16 = distance2d( var_14, var_8 );

        if ( var_15 < 15 || var_16 > var_15 )
            break;

        waitframe();
    }

    var_5 vehicle_setspeedimmediate( 0 );
    var_5 notify( "kill_anims" );
    var_6 maps\_vehicle_code::vehicle_kill_treads_forever();
    var_6 vehicle_setspeedimmediate( 0 );
    var_6.animname = "snowmobile";
    var_6 clearanim( var_6 maps\_utility::getanim( "root" ), 0 );
    var_6 notify( "kill_anims" );
    level.price unlink();
    level.price.animplaybackrate = 1;
    level.price notify( "killanimscript" );
    var_5 clearanim( var_5 maps\_utility::getanim( "root" ), 0 );
    common_scripts\utility::flag_set( "h2_ending_begins" );
    common_scripts\utility::noself_delaycall( 2, ::setsaveddvar, "objectiveHide", 1 );
    level.player maps\_utility::ent_flag_init( "finish_line" );
    level.player maps\_utility::ent_flag_set( "finish_line" );
    level.player lerpviewangleclamp( 0.5, 0, 0, 0, 0, 0, 0 );
    var_17 = [];
    var_17["price_vehicle"] = var_6;
    var_17["price"] = level.price;
    var_18 = var_5 common_scripts\utility::spawn_tag_origin();
    level._id_C28B thread maps\_anim::anim_single( var_17, "cliffhanger_ending" );
    var_18 thread maps\_anim::anim_single_solo( var_5, "cliffhanger_ending" );
    var_5 thread maps\_anim::_id_B6DB( "single anim", var_18, level._id_C28B, 2 );
    var_5 setanim( var_5 maps\_utility::getanim( "cliffhanger_ending_player_anim" ), 1, 0 );
    maps\_utility::flag_set_delayed( "h2_ending_ends", var_10 - 7.8 );
}

_id_B04A()
{
    for (;;)
    {
        var_0 = getent( "recover_vehicle_path_trigger", "targetname" );
        var_0 waittill( "trigger", var_1 );

        if ( var_1.vehicletype == "snowmobile_friendly" )
            break;
    }

    var_2 = getvehiclenode( var_0.target, "targetname" );
    var_1 thread maps\_vehicle::vehicle_paths( var_2 );
    var_1 startpath( var_2 );
}

_id_AA4E( var_0, var_1 )
{
    level notify( "new_player_protection_trip" );
    _id_B798( var_0, var_1 );
    level.player maps\_gameskill::resetskill();
}

_id_B798( var_0, var_1 )
{
    level endon( "new_player_protection_trip" );
    var_1 = _id_C792( var_1 );
    var_2 = var_1;
    var_3 = distance( level.player.origin, var_1 );
    var_4 = [];
    var_4[0] = 1.25;
    var_4[1] = 1.0;
    var_4[2] = 0.75;
    var_4[3] = 0.75;
    var_5 = var_4[level.gameskill];
    var_6 = gettime() + 3000;
    var_7 = level.player.origin;
    var_8 = 150;

    for (;;)
    {
        var_1 = _id_C792( var_1 );

        if ( var_1 != var_2 )
        {
            var_2 = var_1;
            var_3 = distance( level.player.origin, var_1 );
            var_3 -= 55;
        }

        var_9 = distance( level.player.origin, var_1 );
        var_9 += 50;

        if ( var_9 < var_3 || var_3 < 150 )
        {
            level.player maps\_utility::set_player_attacker_accuracy( 0 );
            var_3 = var_9;
            wait 0.5;
        }
        else
        {
            var_10 = gettime() < var_6;
            var_11 = distance( level.player.origin, var_7 ) < var_8;

            if ( var_10 && var_11 )
                level.player maps\_utility::set_player_attacker_accuracy( 0.1 );
            else
                level.player maps\_gameskill::resetskill();
        }

        wait 0.05;
    }
}

_id_C792( var_0 )
{
    if ( !isalive( self ) )
        return var_0;

    if ( !isdefined( self.goalpos ) )
        return self.origin;

    return self.goalpos;
}

_id_BF41()
{
    common_scripts\utility::flag_wait( "snowmobile_fog_clears" );
    thread _id_D4B3( thisthread );
    common_scripts\utility::flag_wait( "snowmobile_jump" );
    level._id_BE57._id_AA23 = 1;
    wait 0.25;
}

_id_D4B3( var_0 )
{
    var_1 = common_scripts\utility::getfx( "smowmobile_windshield_snow" );

    while ( isdefined( var_0 ) )
    {
        var_2 = level._id_BE57 vehicle_getvelocity();

        if ( var_2[1] > 1000 )
        {
            var_3 = 1000 / var_2[1];
            playfxontag( var_1, level._id_BE57, "TAG_ORIGIN" );
            wait( var_3 );
            continue;
        }

        wait 0.1;
    }
}

_id_B6FC()
{
    var_0 = getent( "falling_tree_01", "targetname" );
    var_0.animname = "fallingtree";
    var_0 maps\_anim::setanimtree();
    var_0 maps\_anim::anim_first_frame_solo( var_0, "destroyed_fallen_tree_cliffhanger01" );
    common_scripts\utility::flag_wait( "destroyed_fallen_tree_cliffhanger01" );
    common_scripts\_exploder::exploder( 18 );
    wait 0.25;
    playfx( level._effect["tree_trunk_explosion"], var_0.origin );
    thread common_scripts\utility::play_sound_in_space( "tree_collapse_explosion", var_0.origin );
    var_0 maps\_anim::anim_single_solo( var_0, "destroyed_fallen_tree_cliffhanger01" );
}

_id_D332()
{
    var_0 = 0.5;
    var_1 = 0.5;
    var_2 = 0.69;
    var_3 = 0.25;
    common_scripts\utility::flag_wait( "snowmobile_jump" );
    _id_BF86( 1, var_0, var_2 );
    wait( var_3 / var_2 );
    _id_BF86( 0, var_1, var_2 );
    level.player playsound( "scn_snowmobile_jump_land" );
    soundscripts\_snd::snd_message( "aud_stop_mix_snowmobile_jump" );
    level.player thread maps\_utility::play_sound_on_entity( "mus_cliffhanger_snowmobile_landed" );
}

_id_BF86( var_0, var_1, var_2 )
{
    var_3 = gettime();
    var_4 = 0.0;
    var_5 = 1.0;

    while ( var_4 < 1.0 )
    {
        waitframe();
        var_4 = ( gettime() - var_3 ) / var_1 * 1000;
        var_4 = min( var_4, 1.0 );

        if ( var_0 )
        {
            var_4 = sqrt( var_4 );
            var_5 = maps\_utility::linear_interpolate( var_4, 1.0, var_2 );
        }
        else
        {
            var_4 *= var_4;
            var_5 = maps\_utility::linear_interpolate( var_4, var_2, 1.0 );
        }

        settimescale( var_5 );
    }
}

scene_snowmobile_ending()
{
    var_0 = _id_D397::_id_A97A( "snowmobile_ending" );
    var_0 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 24, 250, 32, 32 ) _id_D397::_id_AF9C();
    var_0 _id_D397::_id_BEA0( 5.0 ) _id_D397::_id_C491( 5.6, -1, 2, 2 ) _id_D397::_id_CCA7( level.price, "tag_eye" ) _id_D397::_id_AE01( 1 );
    var_0 _id_D397::_id_BEA0( 9.5 ) _id_D397::_id_BF3F();
    var_0 _id_D397::_id_BC26();
}
