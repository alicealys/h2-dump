// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46572()
{
    self endon( "death" );
    thread _ID44786();

    for (;;)
    {
        self._ID4867 = 0;
        _ID42237::_ID14413( "price_ditches_player" );
        self._ID4867 = 1000;
        _ID42237::_ID14426( "price_ditches_player" );
        self._ID4867 = 0;
    }
}

_ID44786()
{
    self._ID452 = 250;
    var_0 = spawn( "script_origin", ( 0, 0, 0 ) );

    for (;;)
    {
        if ( !isalive( self ) )
            return;

        if ( _ID42237::_ID14385( "player_slides_down_hill" ) )
        {
            self delete();
            return;
        }

        if ( _ID42237::_ID14385( "price_ditches_player" ) )
            self clearentitytarget();
        else
        {
            self setentitytarget( var_0 );
            var_1 = vectortoangles( level._ID794._ID740 - self._ID740 );
            var_1 = ( 0, var_1[1], 0 );
            var_2 = anglestoforward( var_1 );
            var_0._ID740 = level._ID794._ID740 + var_2 * 250;
            var_3 = _ID42237::_ID28976( 200 );
            var_3 = ( var_3[0], var_3[1], 0 );
            var_0._ID740 = var_0._ID740 + var_3;
            var_0._ID740 = _ID42237::_ID12140( var_0._ID740 ) + ( 0, 0, 1 );
        }

        self setgoalpos( level._ID794._ID740 );
        wait(randomfloatrange( 0.4, 0.7 ));
    }
}

_ID43250()
{
    level endon( "player_slides_down_hill" );

    for (;;)
    {
        var_0 = distance( level._ID28543._ID740, level._ID794._ID740 ) < 256;

        if ( _ID42237::_ID14385( "price_ditches_player" ) )
        {
            if ( var_0 )
            {
                _ID42237::_ID14388( "price_ditches_player" );
                level._ID28543._ID511 = 0;
            }
        }
        else if ( !var_0 )
        {
            _ID42237::_ID14402( "price_ditches_player" );
            level._ID28543._ID511 = 1;
        }

        wait 0.05;
    }
}

_ID46328()
{
    if ( _ID42237::_ID14385( "player_gets_on_snowmobile" ) )
        return;

    level endon( "player_gets_on_snowmobile" );

    for (;;)
    {
        var_0 = distance( self._ID740, level._ID794._ID740 );
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

_ID44490()
{
    var_0 = getent( "price_goes_down_hill", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isalive( var_1 ) )
            continue;

        if ( var_1 == level._ID28543 )
            break;
    }

    level._ID28543._ID40065 thread snowmobile_increase_traction( 5 );
    level._ID28543._ID40065 notify( "stop_modulating_speed" );
    level._ID28543._ID40065 resumespeed( 100 );
    level._ID28543._ID40065 thread snowmobile_increase_traction_below_z_coord( 5, -24000 );
}

snowmobile_increase_traction( var_0 )
{
    self endon( "death" );
    self _meth_85bd( 10, 10, 1 );
    wait(var_0);
    self _meth_85bd( 2, 2, 1 );
}

snowmobile_increase_traction_below_z_coord( var_0, var_1 )
{
    self endon( "death" );

    while ( self._ID740[2] > var_1 )
        waittillframeend;

    snowmobile_increase_traction( var_0 );
}

_ID51832()
{
    level._ID28543._ID40065 = self;
    _ID42237::_ID14413( "price_ready_for_auto_speed" );
    level._ID28543 _ID42407::_ID14803( level._ID53839, "primary" );
    _ID46328();
    thread _ID50343::_ID44177();
    thread _ID44490();
    self waittill( "reached_end_node" );
}

_ID43890()
{
    self endon( "unload" );
    level._ID28543 endon( "jumpedout" );
    wait 4;
    _ID42411::_ID40298();
}

_ID48530()
{
    _ID42407::_ID1947( ::_ID47362 );
    _ID42237::_ID14413( "snowmobile_in_house" );
    _ID42407::_ID35014();
}

_ID47362()
{
    self._ID507 = 1;
    self endon( "death" );

    for (;;)
    {
        if ( !isdefined( level._ID794._ID40065 ) )
            break;

        var_0 = distance( level._ID794._ID40065._ID740, self._ID740 );

        if ( var_0 < 300 )
            self._ID507 = 0;

        if ( var_0 < 210 )
        {
            _ID42407::_ID32326( "balcony_death" );
            self kill();
            return;
        }

        wait 0.05;
    }
}

_ID45667()
{
    var_0 = 0.05;
    var_1 = 2;
    var_1 /= var_0;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        if ( !isdefined( level._ID794._ID40065 ) )
            return;

        var_3 = anglestoforward( level._ID794._ID40065._ID65 );
        var_4 = level._ID794._ID40065._ID740 + var_3 * 55;
        var_4 = ( var_4[0], var_4[1], level._ID794._ID40065._ID740[2] );
        physicsexplosionsphere( var_4, 165, 125, 50 );
        wait(var_0);
    }
}

_ID48287()
{
    self._ID45883 = 1;
    var_0 = getent( "price_bike_path", "targetname" );

    for (;;)
    {
        self vehicledriveto( var_0._ID740, 20 );

        if ( distance( self._ID740, var_0._ID740 ) < var_0._ID851 )
            break;

        wait 0.2;
    }

    _ID42237::_ID14413( "player_gets_on_snowmobile" );
    self._ID486 = 5000;
}

_ID51984()
{
    self._ID47224 = 0;
    self._ID46998 = 0;
    self endon( "death" );

    for (;;)
        wait 0.2;
}

_ID45101()
{
    var_0 = getent( "avalanche_progress_org", "targetname" );
    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = distance( var_0._ID740, var_1._ID740 );

    for (;;)
    {
        var_3 = _ID50343::_ID15937( self._ID740, var_0._ID740, var_1._ID740 );
        var_4 = var_3["progress"];
        level._ID49036 = var_4;
        level._ID50218 = var_4 / var_2;
        wait 0.2;
    }
}

_ID53763()
{
    _ID42237::_ID41098( "death", "veh_collision" );
    level._ID50466 = _ID42407::_ID3326( level._ID50466, self );
}

_ID47342()
{
    self waittill( "spawned",  var_0  );
    var_0 endon( "death" );
    var_0 thread _ID42413::_ID40083();
    var_0 thread maps\cliffhanger_code::_ID52402();
    level._ID50466[level._ID50466.size] = var_0;
    var_0._ID53680 = 0;
    var_0 thread _ID53763();
    var_0 _ID45304();
}

_ID45304()
{
    var_0 = getent( "avalanche_progress_org", "targetname" );
    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = gettime();
    self vehicle_setspeed( 35, 25, 25 );

    for (;;)
    {
        var_3 = _ID50343::_ID15937( self._ID740, var_0._ID740, var_1._ID740 );
        var_4 = var_3["progress"];
        var_5 = var_4 - level._ID49036;
        self._ID28677 = var_5;
        var_5 += self._ID53680;

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
            var_7 = level._ID51355 vehicle_getspeed();
            self vehicle_setspeed( var_7 * var_6, 25, 25 );
        }

        wait 0.2;
    }
}

_ID53661()
{
    for (;;)
    {
        var_0 = 100;
        waitframe;

        if ( level._ID50466.size )
        {
            var_1 = _ID42237::_ID15566( level._ID51355._ID740, level._ID50466 );

            for ( var_2 = 0; var_2 < var_1.size; var_2++ )
            {
                var_1[var_2]._ID53680 = var_0;
                var_0 += randomintrange( 100, 200 );
            }
        }

        wait 0.21;
    }
}

_ID47862()
{
    var_0 = getvehiclenode( self._ID1191, "targetname" );
    self hide();
    level._ID52515[level._ID52515.size] = self;
    var_1 = _ID42237::_ID35164();
    var_1 linkto( self, "tag_origin", ( 0, 0, 256 ), ( 0, 0, -90 ) );
    playfxontag( level._ID1426["avalanche_loop_large"], var_1, "tag_origin" );
    thread _ID42411::_ID17021( self );
    self._ID53680 = 2000;
    thread _ID43489();
}

_ID43489()
{
    if ( isdefined( self._ID922 ) && self._ID922 == "main_avalanche" )
    {
        level._ID46742 = self;
        var_0 = getent( "avalanche_trigger", "targetname" );
        var_0 playsound( "avalanche_ambiance_main" );
        self._ID28675 = 0;
        var_0 thread _ID44967();
        var_0 thread _ID43699();
    }

    var_1 = getent( "avalanche_progress_org", "targetname" );
    var_2 = getent( var_1._ID1191, "targetname" );

    for (;;)
    {
        var_3 = _ID50343::_ID15937( self._ID740, var_1._ID740, var_2._ID740 );
        var_4 = var_3["progress"];
        self._ID28675 = var_4;
        var_5 = var_4 - level._ID49036;
        self._ID28677 = var_5;
        var_5 += self._ID53680;
        var_6 = 1;

        if ( var_5 > -100 && var_5 < 100 )
            var_6 = 1;
        else if ( var_5 < -200 )
            var_6 = 1.5;
        else if ( var_5 < -400 )
            var_6 = 2;
        else if ( var_5 > 120 )
            var_6 = 0.25;

        var_7 = level._ID51355 vehicle_getspeed();
        self vehicle_setspeed( var_7 * var_6, 150, 150 );
        wait 0.2;
    }
}

_ID44967()
{
    var_0 = getent( "avalanche_progress_org", "targetname" );
    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = vectortoangles( var_0._ID740 - var_1._ID740 );
    self._ID65 = var_2 + ( 0, 90, 0 );
    var_3 = distance( var_0._ID740, var_1._ID740 );

    for (;;)
    {
        var_4 = level._ID46742._ID28675 - 100;
        var_5 = var_4 / var_3;
        self._ID740 = var_0._ID740 * ( 1 - var_5 ) + var_1._ID740 * var_5;
        wait 0.2;
    }
}

_ID43773( var_0 )
{
    wait 1;
    _ID42411::_ID17021( self );

    for (;;)
    {
        wait 12.5;
        self._ID3577 = undefined;
        self notify( "newpath" );
        self attachpath( var_0 );
        _ID42411::_ID17021( self );
    }
}

_ID43699()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        var_0 notify( "driver_died" );
    }
}

_ID52894( var_0 )
{
    foreach ( var_2 in level._ID52515 )
        var_2._ID53680 = var_0;
}

_ID45328()
{
    level endon( "snowmobile_jump" );
    level endon( "enemy_snowmobiles_wipe_out" );
    var_0 = 3;
    _ID42237::_ID14413( "player_starts_snowmobile_trip" );

    for (;;)
    {
        thread _ID50343::_ID46156();
        wait(var_0);
        var_0 -= 0.5;

        if ( var_0 < 0.5 )
            var_0 = 0.5;
    }
}

_ID50438()
{
    self endon( "death" );
    wait 20;
    self._ID4867 = 1;
}

_ID45858()
{
    self vehphys_disablecrashing( 1 );
}

_ID50412()
{
    if ( !isdefined( self._ID43135._ID53982 ) )
    {
        thread _ID42407::_ID22746();
        wait 7.5;
        _ID42407::_ID36519();
    }
}

_ID48651()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_rides_snowmobile" );
    wait(randomfloat( 0.35 ));
    self kill();
}

_ID43153()
{
    thread _ID48968( 1 );
    self vehphys_disablecrashing();

    foreach ( var_1 in self._ID29965 )
    {
        var_2 = "";

        if ( isdefined( var_1._ID922 ) )
            var_2 = var_1._ID922;

        if ( var_2 == "magic_bullet_spawner" )
            var_1 thread _ID48651();
        else
            var_1._ID486 = 20;

        var_1 thread _ID50438();
    }

    var_4 = isdefined( self._ID922 ) && self._ID922 == "god_vehicle_spawner";

    if ( var_4 )
    {
        self._ID29965[0] _ID50412();
        level._ID53165 = self;
        level._ID49452 = self._ID29965;
        self waittill( "reached_end_node" );
        wait 3;
        _ID45858();
    }
    else
    {
        thread _ID42413::_ID40083();
        _ID53671();
    }

    if ( isalive( self._ID29965[0] ) )
    {
        foreach ( var_1 in self._ID29965 )
        {
            if ( isalive( var_1 ) )
                var_1._ID4867 = 1;
        }
    }

    self vehicle_setspeed( 0, 35, 35 );
    level._ID48831[level._ID48831.size] = self;
    level notify( "new_icepick_snowmobile" );
}

_ID48968( var_0 )
{
    self._ID53940 = 1;
    wait(var_0);
    self._ID53940 = 0;
}

_ID44682()
{
    level endon( "player_rides_snowmobile" );
    self waittill( "reached_end_node" );
}

_ID53671()
{
    self._ID29965[0] endon( "death" );
    self endon( "death" );
    self endon( "veh_collision" );
    _ID44682();
    _ID42237::_ID14413( "player_starts_snowmobile_trip" );
    var_0 = _ID42411::_ID46021( self._ID740 );

    if ( isdefined( level._ID44744 ) )
        var_0 thread [[ level._ID44744 ]]( self );
}

_ID48603()
{
    if ( level._ID35897 != "snowspawn" )
        _ID42237::_ID14413( "enemies_persue_on_bike" );

    var_0 = getent( "hunter_killer", "targetname" );
    var_1 = var_0 _ID42407::_ID35192();
    level._ID53655 = var_1;
    _ID42237::_ID14402( "hk_gives_chase" );
    var_1._ID43037 = 4000;
    var_1._ID52368 = 0;
    var_1._ID48378 = 3;
    var_1 _ID42407::_ID13024( "firing" );
    var_1 thread _ID52212();
    var_1 thread _ID43805();
}

_ID43876()
{
    self endon( "death" );

    if ( !isdefined( level._ID794._ID40065 ) )
        return;

    self endon( "stop_tracking" );
    self setvehweapon( "hind_turret" );
    var_0 = anglestoforward( level._ID794._ID65 );
    level._ID49524._ID740 = level._ID794._ID740;
    var_1 = spawn( "script_origin", level._ID794._ID740 );
    self setturrettargetent( level._ID49524, ( 0, 0, 0 ) );
    self setlookatent( level._ID794 );
    var_2 = 3000;
    var_3 = 5000;
    var_4 = level._ID794._ID40065 vehicle_getspeed() * 80;

    if ( var_4 < var_2 && self._ID52368 < 9 )
        var_4 = var_2;
    else if ( var_4 > var_3 )
        var_4 = var_3;

    var_5 = var_0 * var_4;
    level._ID49524._ID740 = level._ID794._ID740 + var_5;
    var_1._ID740 = level._ID49524._ID740;
    var_1 linkto( level._ID794 );
    var_6 = 5;

    for (;;)
    {
        level._ID49524._ID740 = _ID49120( var_1._ID740, 0 );

        if ( _ID42407::_ID41803( self._ID740, self._ID65, level._ID49524._ID740, 0.9 ) )
            break;

        wait 0.05;
    }

    var_7 = randomintrange( 6, 9 );
    var_8 = level._ID49524._ID740;
    var_9 = var_7;

    if ( self._ID52368 < 5 )
        var_9 = var_7 - 2;

    for ( var_10 = 0; var_10 < var_9; var_10++ )
    {
        var_11 = var_10 / var_7;
        var_12 = var_8 * ( 1 - var_11 ) + level._ID794._ID740 * var_11;
        level._ID49524._ID740 = _ID49120( var_12, 0 );
        var_13 = randomfloatrange( 0.1, 0.3 );
        _ID42306::_ID14269( "hind_zippy", 1, level._ID49524, var_13 );
    }

    var_1 delete();
}

_ID48641( var_0 )
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

_ID49463()
{
    self endon( "death" );
    level endon( "avalanche_begins" );

    if ( _ID42237::_ID14385( "avalanche_begins" ) )
        return;

    for (;;)
    {
        self._ID48788 = randomfloatrange( -4, 4 );

        if ( self._ID52368 < self._ID48378 )
            self._ID43037 = randomfloatrange( 1000, 5000 );

        wait(randomfloatrange( 4, 8 ));
    }
}

_ID52212()
{
    self endon( "death" );
    self vehicle_setspeed( 120, 50, 50 );
    self._ID48788 = 0;
    thread _ID49463();
    _ID42237::_ID14413( "player_gets_on_snowmobile" );

    for (;;)
    {
        if ( _ID50343::_ID53431()._ID517 > 0 )
            break;

        wait 0.05;
    }

    self setyawspeed( 300, 160, 160 );
    self vehicle_setspeed( 350, 75, 275 );
    level._ID49524 = spawn( "script_origin", level._ID794._ID740 );
    self setlookatent( level._ID49524 );

    for (;;)
    {
        var_0 = randomfloatrange( 7500, 9500 );
        var_1 = randomfloatrange( 550, 750 );

        if ( _ID42237::_ID8201() )
            var_1 *= -1;

        var_2 = _ID50343::_ID48037( _ID50343::_ID53431(), _ID50343::_ID53297() + var_0, var_1 );
        var_2 = _ID49120( var_2, 1200 );
        self neargoalnotifydist( 1000 );

        if ( !_ID42237::_ID14385( "bad_heli_goes_to_death_position" ) )
        {
            _ID43227( var_2 );
            self setvehgoalpos( var_2, 1 );
        }

        var_3 = gettime();
        _ID43876();
        var_4 = randomfloatrange( 2, 3 );
        _ID42407::_ID40847( var_3, var_4 );
        self notify( "stop_tracking" );
    }
}

_ID52828()
{
    var_0 = _ID42411::_ID46021( self._ID740 );
    var_1 = _ID50343::_ID15937( self._ID740, var_0._ID23570, var_0._ID24768._ID23570 );

    for (;;)
    {
        var_2 = var_1["progress"];
        var_3 = _ID50343::_ID28677( var_0, var_2, _ID50343::_ID53431(), _ID50343::_ID53297() );

        if ( var_3 < 1200 )
            return;

        wait 0.5;
    }
}

_ID43227( var_0 )
{
    level endon( "bad_heli_goes_to_death_position" );
    self endon( "death" );
    var_1 = 0.2;

    for (;;)
    {
        if ( distance( self._ID740, var_0 ) < 2500 )
            return;

        var_2 = _ID42407::_ID32530( self._ID740, 0 );
        var_3 = vectortoangles( var_0 - var_2 );
        var_4 = anglestoforward( var_3 );
        var_5 = var_2 + var_4 * 600;
        var_5 = ( var_5[0], var_5[1], self._ID740[2] );
        var_5 = _ID49120( var_5, 1200 );
        self setvehgoalpos( var_5, 0 );
        wait(var_1);
    }
}

_ID54567()
{
    self notify( "stop_tracking" );
    self endon( "stop_tracking" );
    self endon( "death" );

    for (;;)
    {
        var_0 = _ID49996( self._ID740, level._ID794._ID740 );
        self setgoalyaw( var_0 );
        level._ID43671 = var_0;
        wait 0.05;
    }
}

_ID49996( var_0, var_1 )
{
    var_2 = vectortoangles( var_1 - var_0 );
    return var_2[1];
}

_ID49120( var_0, var_1 )
{
    var_2 = bullettrace( var_0 + ( 0, 0, 2000 ), var_0 + ( 0, 0, -15000 ), 0, self );
    return var_2["position"] + ( 0, 0, var_1 );
}

_ID43805()
{
    self endon( "death" );
    var_0 = _ID50343::_ID53431()._ID517;
    var_1 = _ID50343::_ID53431();
    var_2 = _ID50343::_ID53297();
    var_3 = 350;

    for (;;)
    {
        var_4 = _ID50343::_ID53431()._ID517;
        var_5 = _ID50343::_ID53297();

        if ( var_4 == var_0 )
        {
            if ( var_5 < var_2 + var_3 )
                self._ID52368++;
            else
                self._ID52368 = 0;
        }
        else if ( var_4 < var_0 )
            self._ID52368++;
        else if ( var_4 > var_0 + 1 )
            self._ID52368 = 0;
        else if ( var_5 + var_1._ID43854 > var_0 + var_3 )
            self._ID52368 = 0;

        if ( self._ID52368 == 0 )
        {
            var_0 = _ID50343::_ID53431()._ID517;
            var_1 = _ID50343::_ID53431();
            var_2 = _ID50343::_ID53297();
        }

        self._ID54558 = self._ID52368 > 10;
        self._ID43181 = self._ID52368 > 50;

        if ( self._ID52368 > 3 )
            _ID42237::_ID14388( "can_save" );
        else if ( !_ID42237::_ID14385( "can_save" ) )
            _ID42237::_ID14402( "can_save" );

        if ( self._ID52368 >= self._ID48378 )
            self._ID43037 = 1000;

        wait 0.5;
    }
}

_ID53849()
{
    level._ID48727 endon( "death" );

    for (;;)
    {
        var_0 = _ID50343::_ID53431();
        var_1 = _ID50343::_ID53297();
        var_1 += 7500;
        var_2 = _ID50343::_ID15931( var_0, var_1, 0 );
        var_2 = _ID42407::_ID32530( var_2, level._ID48727._ID740[2] );
        var_2 = physicstrace( var_2 + ( 0, 0, 5000 ), var_2 + ( 0, 0, -5000 ) );
        self._ID740 = var_2;
        wait 5;
    }
}

_ID45235( var_0, var_1 )
{
    if ( !isdefined( level._ID48727 ) )
        return;

    var_2 = getent( "objective_end_org", "targetname" );
    var_3 = distance( var_2._ID740, level._ID48727._ID740 );
    var_4 = _ID42407::_ID16268( var_1 );
    var_5 = getent( var_4._ID1191, "targetname" );
    var_6 = vectortoangles( var_5._ID740 - var_4._ID740 );
    var_7 = anglestoforward( var_6 );
    var_5._ID740 = var_4._ID740 + var_7 * 500000;
    var_6 = vectortoangles( var_5._ID740 - level._ID48727._ID740 );
    var_7 = anglestoforward( var_6 );
    var_8 = level._ID48727._ID740 + var_7 * var_3;
    objective_current( var_0, var_8 );
}

_ID45687()
{
    _ID42237::_ID14413( "enemies_persue_on_bike" );
    _ID42407::_ID28864( "outrunthem" );
    wait 4;
    _ID42407::_ID28864( "keepmoving" );
    wait 3;
    _ID42407::_ID28864( "gogogo" );
    _ID42237::_ID14413( "snowmobile_price_full_speed" );
    _ID42407::_ID28864( "comeoncomeon" );
}

_ID45715()
{
    for (;;)
    {
        if ( level._ID50218 > 0.6 )
            break;

        wait 0.1;
    }

    thread _ID42407::_ID28871( "gonnamakeit" );

    for (;;)
    {
        if ( level._ID50218 > 0.7 )
            break;

        wait 0.1;
    }

    thread _ID42407::_ID28871( "comeoncomeon" );

    for (;;)
    {
        if ( level._ID50218 > 0.9 )
            break;

        wait 0.1;
    }

    thread _ID42407::_ID28871( "hangon2" );
}

_ID49505()
{
    var_0 = missile_createrepulsorent( level._ID794, 10000, 2000 );
}

_ID43916()
{
    for (;;)
    {
        self waittill( "trigger" );
        level._ID794._ID811 = self._ID922;
        level notify( "new_player_position",  self._ID922  );
        wait 2;
    }
}

_ID52408()
{
    var_0 = self._ID740;
    var_1 = getent( self._ID1191, "targetname" );
    var_2 = var_1._ID65;
    var_3 = level._ID46905[level._ID50893];
    level._ID50893++;

    if ( level._ID50893 >= level._ID46905.size )
        level._ID50893 = 0;

    _ID42407::_ID32326( var_3 );
    _ID46113();

    if ( !isalive( self ) )
    {
        level._ID48660++;
        level notify( "cliff_death" );
        return;
    }

    wait(randomfloatrange( 0.2, 0.7 ));

    if ( isalive( self ) )
    {
        self setgoalpos( var_0 );
        self._ID452 = distance( self._ID740, var_0 ) / 2;
        _ID42237::_ID41098( "goal", "death" );
    }

    level._ID48660++;
    level notify( "cliff_death" );

    if ( !isalive( self ) )
        return;

    self endon( "death" );
    self._ID452 = 8;
    self waittill( "goal" );
    self delete();
}

_ID46113()
{
    self endon( "death" );
    _ID42237::_ID14413( "clifftop_snowmobile_guys_die" );
    wait(randomfloatrange( 0.1, 0.3 ));
}

_ID47380()
{
    level._ID48660 = 0;
    level._ID46905 = [];
    level._ID46905[level._ID46905.size] = "cliffdeath_1";
    level._ID46905[level._ID46905.size] = "cliffdeath_2";
    level._ID46905[level._ID46905.size] = "cliffdeath_3";
    level._ID46905[level._ID46905.size] = "cliffdeath_4";
    level._ID46905 = _ID42237::_ID3320( level._ID46905 );
    level._ID50893 = 0;
}

_ID54682()
{
    var_0 = randomint( 360 );
    self._ID65 = ( 0, var_0, 0 );
    var_1 = 64;
    var_2 = randomint( var_1 * 2 ) - var_1;
    self._ID740 = self._ID740 + ( var_2, 0, 0 );
    var_3 = bullettrace( self._ID740 + ( 0, 0, 64 ), self._ID740 + ( 0, 0, -64 ), 0, undefined );
    self._ID740 = var_3["position"] + ( 0, 0, -8 );
    self._ID8089 hide();
    self._ID8089._ID740 = self._ID740;
    var_4 = _ID42229::_ID9260();
    var_4._ID40005["origin"] = self._ID740;
    var_4._ID40005["angles"] = ( 270, 0, 0 );
    var_4._ID40005["soundalias"] = "velocity_whitenoise_loop";
}

_ID49185()
{
    self endon( "death" );
    self._ID4867 = 0.2;

    for (;;)
    {
        var_0 = getentarray( "script_vehicle_littlebird_armed", "classname" );

        if ( var_0.size )
        {
            var_1 = _ID42237::_ID16182( self._ID740, var_0, 8000 );
            self setentitytarget( var_1, 0.75 );
        }

        wait(randomfloatrange( 0.5, 1 ));
    }
}

_ID44110()
{
    wait 2;
    _ID42306::_ID14269( "hind_zippy", 1, level._ID53655 );
    wait 0.35;
    _ID42306::_ID14269( "hind_zippy", 1, level._ID53655 );
    wait 0.35;
    _ID42306::_ID14269( "hind_zippy", 1, level._ID53655 );
    wait 0.35;
    _ID42237::_ID14402( "bad_heli_missile_killed" );
    _ID42306::_ID14269( "hind_zippy", 1, level._ID53655 );
    wait 0.35;
    _ID42306::_ID14269( "hind_zippy", 1, level._ID53655 );
    _ID42237::_ID14413( "end_camp_player_leaves_camp" );
    waitframe;

    if ( _ID42407::_ID27540( self._ID740 ) )
        return;

    self vehicle_setspeedimmediate( 120, 50, 35 );
    _ID42411::_ID45813( "instant" );
    wait 2;
    _ID42411::_ID45813( "fast" );
}

_ID50770()
{
    level._ID51270 = self;
    _ID42407::_ID13024( "landed" );
    _ID42411::_ID46080();
    _ID42237::_ID14402( "ending_heli_flies_in" );

    for ( var_0 = 1; var_0 < 5; var_0++ )
        self._ID3575[var_0]._ID9580 = ::_ID48071;

    if ( isdefined( self._ID52264["trigger_multiple"] ) )
        _ID42237::_ID3350( self._ID52264["trigger_multiple"], ::_ID54369 );

    if ( isdefined( self._ID52264["trigger_use"] ) )
        _ID42237::_ID3350( self._ID52264["trigger_use"], ::_ID44195 );

    self waittill( "reached_dynamic_path_end" );
    self waittill( "near_goal" );
    self disconnectpaths();
    _ID42407::_ID13025( "landed" );
    _ID42237::_ID14413( "player_boards" );

    if ( 1 )
        return;

    var_1 = _ID42407::_ID35028( "player_rig" );
    var_1 hide();
    var_1 linkto( self, "tag_detach", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _ID42259::_ID3111( var_1, "player_evac", "tag_detach" );
    level._ID794 playerlinktoblend( var_1, "tag_origin", 0.5, 0.2, 0.2 );
    _ID42407::_ID10226( 0.5, ::_ID54126, var_1, "tag_origin" );
    wait 6;
    _ID42237::_ID14413( "price_enters_heli" );
    var_2 = _ID42237::_ID16638( "ending_heli_escape_path", "targetname" );
    thread _ID42411::_ID40218( var_2 );
    _ID42237::_ID14413( "ending_heli_leaves" );
    _ID42407::_ID24793();
}

_ID48071( var_0, var_1 )
{
    var_0 thread _ID45971( self, var_1 );
    return 1;
}

_ID45971( var_0, var_1 )
{
    var_2 = _ID42412::_ID3052( self, var_1 );
    var_3 = _ID42412::_ID16125();

    if ( isdefined( var_2._ID40152 ) )
    {
        var_3 thread _ID42412::_ID32549( var_2._ID40152, var_2._ID40153 );
        var_4 = 0;

        if ( isdefined( var_2._ID40155 ) )
        {
            var_4 = _ID42412::_ID7401( var_2._ID40155 );
            var_5 = var_3 gettagorigin( var_2._ID40155 );
        }
        else
            var_5 = var_3._ID740;

        if ( isdefined( var_2._ID40154 ) && !var_4 )
            thread _ID42237::_ID27077( var_2._ID40154, var_5 );

        var_4 = undefined;
    }

    thread _ID42412::_ID17566( var_0, var_1 );
    _ID42237::_ID14413( "h2_ending_begins" );
    var_0 notify( "stop_idle" );
    var_0 unlink();
    level._ID49803 thread _ID42259::_ID3111( var_0, "cliffhanger_ending_soldier_" + var_1, undefined, undefined, "generic" );
}

_ID54369()
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( _ID42237::_ID14385( "player_boards" ) )
            break;

        if ( level._ID794 getvelocity()[2] > 8 )
            break;
    }

    self delete();
    _ID42237::_ID14402( "player_boards" );
}

_ID44195()
{
    self sethintstring( &"CLIFFHANGER_BOARD" );
    _ID42407::_ID1985( _ID42407::_ID41116, "trigger" );
    level _ID42407::_ID1985( _ID42407::_ID41116, "player_boards" );
    _ID42407::_ID11232();
    _ID42237::_ID14402( "player_boards" );
    self delete();
}

_ID45161()
{
    for (;;)
    {
        if ( !isdefined( level._ID794._ID40065 ) )
            return;

        if ( distance( level._ID794._ID740, self._ID740 ) < 800 )
        {
            level._ID794._ID40065 vehicle_setspeed( 0, 5, 35 );

            if ( level._ID794._ID40065 vehicle_getspeed() < 5 )
                break;
        }

        wait 0.05;
    }

    level._ID794 _ID42407::_ID27348();
    level._ID794._ID40065 vehicle_setspeed( 0, 5, 25 );
}

_ID54126( var_0, var_1 )
{
    level._ID794 playerlinktodelta( var_0, var_1, 1, 90, 90, 35, 45 );
}

_ID45033()
{

}

_ID51332()
{

}

_ID46583()
{
    if ( !isalive( level._ID28543 ) )
        return;

    level._ID28543 endon( "death" );
    var_0 = newhudelem();
    var_0 setshader( "overhead_obj_icon_world", 10, 10 );
    var_0._ID55 = 1.0;
    var_0._ID196 = ( 1, 1, 1 );
    var_0 setwaypoint( 1, 0 );
    var_0 settargetent( level._ID28543 );
    _ID42237::_ID14413( "player_boards" );
    var_0 destroy();
}

_ID49356()
{
    _ID42237::_ID14413( "hk_gives_chase" );

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( isdefined( level._ID53655 ) && level._ID53655 != var_0 )
            continue;

        break;
    }

    _ID42237::_ID14402( "bad_heli_goes_to_death_position" );
    var_1 = _ID42237::_ID16638( self._ID1191, "targetname" );
    level._ID53655 setvehgoalpos( var_1._ID740, 1 );
}

_ID51213()
{
    for (;;)
        self waittill( "trigger",  var_0  );
}

_ID44520()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isdefined( level._ID794._ID40065 ) )
            continue;

        if ( !isdefined( level._ID28543._ID40065 ) )
            continue;

        if ( var_0 == level._ID794._ID40065 )
            continue;

        if ( var_0 == level._ID28543._ID40065 )
            continue;

        if ( !isdefined( var_0._ID41798 ) )
            continue;

        if ( var_0._ID41798 )
            continue;

        var_0._ID41798 = 1;
    }
}

_ID53275()
{
    self waittill( "trigger" );
    var_0 = getvehiclenode( self._ID1191, "targetname" );
    level._ID794._ID40065._ID1274 = "follow";
    level._ID794._ID40065 startpath( var_0 );
    level._ID794 freezecontrols( 1 );
    _ID42237::_ID14413( "end_begins" );
    wait 4.45;
    level._ID794 freezecontrols( 0 );
}

_ID47537()
{
    for (;;)
    {
        self waittill( "trigger" );
        thread scene_snowmobile_ending();
        var_0 = 0;

        while ( level._ID794 istouching( self ) )
        {
            var_1 = vectornormalize( _ID42407::_ID32530( level._ID49803._ID740 - level._ID794._ID40065._ID740, 0 ) );
            var_2 = anglestoforward( level._ID794._ID40065._ID65 );
            var_3 = vectordot( var_1, var_2 );

            if ( var_3 > 0 )
            {
                var_0 = 1;
                break;
            }

            level._ID794._ID40065 _meth_85c0( 1 );
            waittillframeend;
        }

        level._ID794._ID40065 _meth_85c0( 0 );

        if ( var_0 )
            break;
    }

    var_4 = getent( "snowmobile_end_collision", "targetname" );
    var_4 delete();
    var_5 = level._ID794._ID40065;
    var_6 = level._ID28543._ID40065;
    var_7 = level._ID30895["snowmobile_player"]["cliffhanger_ending"];
    var_8 = getstartorigin( level._ID49803._ID740, level._ID49803._ID65, var_7 );
    var_9 = getstartangles( level._ID49803._ID740, level._ID49803._ID65, var_7 );
    var_10 = getanimlength( var_7 );
    var_11 = 61.4;
    var_5 _meth_85a1( var_8, anglestoforward( var_9 ), var_11 );
    var_5 vehicle_setspeed( var_11, var_11 / 4, var_11 / 4 );
    level._ID794 freezecontrols( 1 );
    var_5._ID52700 = 0;

    for (;;)
    {
        var_12 = anglestoforward( var_5._ID65 );
        var_13 = var_5 vehicle_getspeed();
        var_14 = var_5._ID740 + var_12 * ( var_13 * 17.6 ) * 0.05;
        var_15 = distance2d( var_5._ID740, var_8 );
        var_16 = distance2d( var_14, var_8 );

        if ( var_15 < 15 || var_16 > var_15 )
            break;

        waittillframeend;
    }

    var_5 vehicle_setspeedimmediate( 0 );
    var_5 notify( "kill_anims" );
    var_6 _ID42413::_ID40181();
    var_6 vehicle_setspeedimmediate( 0 );
    var_6._ID3189 = "snowmobile";
    var_6 clearanim( var_6 _ID42407::_ID16120( "root" ), 0 );
    var_6 notify( "kill_anims" );
    level._ID28543 unlink();
    level._ID28543._ID3195 = 1;
    level._ID28543 notify( "killanimscript" );
    var_5 clearanim( var_5 _ID42407::_ID16120( "root" ), 0 );
    _ID42237::_ID14402( "h2_ending_begins" );
    _ID42237::_ID24938( 2, ::setsaveddvar, "objectiveHide", 1 );
    level._ID794 _ID42407::_ID13024( "finish_line" );
    level._ID794 _ID42407::_ID13025( "finish_line" );
    level._ID794 lerpviewangleclamp( 0.5, 0, 0, 0, 0, 0, 0 );
    var_17 = [];
    var_17["price_vehicle"] = var_6;
    var_17["price"] = level._ID28543;
    var_18 = var_5 _ID42237::_ID35164();
    level._ID49803 thread _ID42259::_ID3099( var_17, "cliffhanger_ending" );
    var_18 thread _ID42259::_ID3111( var_5, "cliffhanger_ending" );
    var_5 thread _ID42259::_ID46811( "single anim", var_18, level._ID49803, 2 );
    var_5 setanim( var_5 _ID42407::_ID16120( "cliffhanger_ending_player_anim" ), 1, 0 );
    _ID42407::_ID14403( "h2_ending_ends", var_10 - 7.8 );
}

_ID45130()
{
    for (;;)
    {
        var_0 = getent( "recover_vehicle_path_trigger", "targetname" );
        var_0 waittill( "trigger",  var_1  );

        if ( var_1._ID1282 == "snowmobile_friendly" )
            break;
    }

    var_2 = getvehiclenode( var_0._ID1191, "targetname" );
    var_1 thread _ID42411::_ID40218( var_2 );
    var_1 startpath( var_2 );
}

_ID43598( var_0, var_1 )
{
    level notify( "new_player_protection_trip" );
    _ID47000( var_0, var_1 );
    level._ID794 _ID42298::_ID29791();
}

_ID47000( var_0, var_1 )
{
    level endon( "new_player_protection_trip" );
    var_1 = _ID51090( var_1 );
    var_2 = var_1;
    var_3 = distance( level._ID794._ID740, var_1 );
    var_4 = [];
    var_4[0] = 1.25;
    var_4[1] = 1.0;
    var_4[2] = 0.75;
    var_4[3] = 0.75;
    var_5 = var_4[level._ID15361];
    var_6 = gettime() + 3000;
    var_7 = level._ID794._ID740;
    var_8 = 150;

    for (;;)
    {
        var_1 = _ID51090( var_1 );

        if ( var_1 != var_2 )
        {
            var_2 = var_1;
            var_3 = distance( level._ID794._ID740, var_1 );
            var_3 -= 55;
        }

        var_9 = distance( level._ID794._ID740, var_1 );
        var_9 += 50;

        if ( var_9 < var_3 || var_3 < 150 )
        {
            level._ID794 _ID42407::_ID32411( 0 );
            var_3 = var_9;
            wait 0.5;
        }
        else
        {
            var_10 = gettime() < var_6;
            var_11 = distance( level._ID794._ID740, var_7 ) < var_8;

            if ( var_10 && var_11 )
                level._ID794 _ID42407::_ID32411( 0.1 );
            else
                level._ID794 _ID42298::_ID29791();
        }

        wait 0.05;
    }
}

_ID51090( var_0 )
{
    if ( !isalive( self ) )
        return var_0;

    if ( !isdefined( self._ID451 ) )
        return self._ID740;

    return self._ID451;
}

_ID48961()
{
    _ID42237::_ID14413( "snowmobile_fog_clears" );
    thread _ID54451( thisthread );
    _ID42237::_ID14413( "snowmobile_jump" );
    level._ID48727._ID43555 = 1;
    wait 0.25;
}

_ID54451( var_0 )
{
    var_1 = _ID42237::_ID16299( "smowmobile_windshield_snow" );

    while ( isdefined( var_0 ) )
    {
        var_2 = level._ID48727 vehicle_getvelocity();

        if ( var_2[1] > 1000 )
        {
            var_3 = 1000 / var_2[1];
            playfxontag( var_1, level._ID48727, "TAG_ORIGIN" );
            wait(var_3);
            continue;
        }

        wait 0.1;
    }
}

_ID46844()
{
    var_0 = getent( "falling_tree_01", "targetname" );
    var_0._ID3189 = "fallingtree";
    var_0 _ID42259::_ID32556();
    var_0 _ID42259::_ID3018( var_0, "destroyed_fallen_tree_cliffhanger01" );
    _ID42237::_ID14413( "destroyed_fallen_tree_cliffhanger01" );
    _ID42234::_ID13611( 18 );
    wait 0.25;
    playfx( level._ID1426["tree_trunk_explosion"], var_0._ID740 );
    thread _ID42237::_ID27077( "tree_collapse_explosion", var_0._ID740 );
    var_0 _ID42259::_ID3111( var_0, "destroyed_fallen_tree_cliffhanger01" );
}

_ID54066()
{
    var_0 = 0.5;
    var_1 = 0.5;
    var_2 = 0.69;
    var_3 = 0.25;
    _ID42237::_ID14413( "snowmobile_jump" );
    _ID49030( 1, var_0, var_2 );
    wait(var_3 / var_2);
    _ID49030( 0, var_1, var_2 );
    level._ID794 playsound( "scn_snowmobile_jump_land" );
    _ID42475::_ID34575( "aud_stop_mix_snowmobile_jump" );
    level._ID794 thread _ID42407::_ID27079( "mus_cliffhanger_snowmobile_landed" );
}

_ID49030( var_0, var_1, var_2 )
{
    var_3 = gettime();
    var_4 = 0.0;
    var_5 = 1.0;

    while ( var_4 < 1.0 )
    {
        waittillframeend;
        var_4 = ( gettime() - var_3 ) / var_1 * 1000;
        var_4 = min( var_4, 1.0 );

        if ( var_0 )
        {
            var_4 = sqrt( var_4 );
            var_5 = _ID42407::_ID22382( var_4, 1.0, var_2 );
        }
        else
        {
            var_4 *= var_4;
            var_5 = _ID42407::_ID22382( var_4, var_2, 1.0 );
        }

        settimescale( var_5 );
    }
}

scene_snowmobile_ending()
{
    var_0 = _ID54167::_ID43386( "snowmobile_ending" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 24, 250, 32, 32 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 5.0 ) _ID54167::_ID50321( 5.6, -1, 2, 2 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44545( 1 );
    var_0 _ID54167::_ID48800( 9.5 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48166();
}
