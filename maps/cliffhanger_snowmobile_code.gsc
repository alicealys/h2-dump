// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46572()
{
    self endon( "death" );
    thread _unknown_0015();

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
    var_0 = _func_06A( "script_origin", ( 0, 0, 0 ) );

    for (;;)
    {
        if ( !_func_1A7( self ) )
            return;

        if ( _ID42237::_ID14385( "player_slides_down_hill" ) )
        {
            self _meth_80B7();
            return;
        }

        if ( _ID42237::_ID14385( "price_ditches_player" ) )
            self _meth_8174();
        else
        {
            self _meth_8173( var_0 );
            var_1 = _func_11A( level._ID794._ID740 - self._ID740 );
            var_1 = ( 0, var_1[1], 0 );
            var_2 = _func_11F( var_1 );
            var_0._ID740 = level._ID794._ID740 + var_2 * 250;
            var_3 = _ID42237::_ID28976( 200 );
            var_3 = ( var_3[0], var_3[1], 0 );
            var_0._ID740 = var_0._ID740 + var_3;
            var_0._ID740 = _ID42237::_ID12140( var_0._ID740 ) + ( 0, 0, 1 );
        }

        self _meth_81B2( level._ID794._ID740 );
        wait(_func_0BA( 0.4, 0.7 ));
    }
}

_ID43250()
{
    level endon( "player_slides_down_hill" );

    for (;;)
    {
        var_0 = _func_0F3( level._ID28543._ID740, level._ID794._ID740 ) < 256;

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
        var_0 = _func_0F3( self._ID740, level._ID794._ID740 );
        var_1 = 60;
        var_2 = 1000;
        var_0 = var_2 - var_0;

        if ( var_0 < 0 )
            var_0 = 0;

        var_3 = 60 * var_0 / 1000;
        self _meth_828D( var_3, 1, 1 );
        wait 0.05;
    }
}

_ID44490()
{
    var_0 = _func_1A1( "price_goes_down_hill", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_1A7( var_1 ) )
            continue;

        if ( var_1 == level._ID28543 )
            break;
    }

    level._ID28543._ID40065 thread _unknown_0236( 5 );
    level._ID28543._ID40065 notify( "stop_modulating_speed" );
    level._ID28543._ID40065 _meth_829B( 100 );
    level._ID28543._ID40065 thread _unknown_0261( 5, -24000 );
}

snowmobile_increase_traction( var_0 )
{
    self endon( "death" );
    self _meth_85BD( 10, 10, 1 );
    wait(var_0);
    self _meth_85BD( 2, 2, 1 );
}

snowmobile_increase_traction_below_z_coord( var_0, var_1 )
{
    self endon( "death" );

    while ( self._ID740[2] > var_1 )
        waittillframeend;

    _unknown_028D( var_0 );
}

_ID51832()
{
    level._ID28543._ID40065 = self;
    _ID42237::_ID14413( "price_ready_for_auto_speed" );
    level._ID28543 _ID42407::_ID14803( level._ID53839, "primary" );
    _unknown_0279();
    thread _ID50343::_ID44177();
    thread _unknown_0299();
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
    _ID42407::_ID1947( ::_unknown_0306 );
    _ID42237::_ID14413( "snowmobile_in_house" );
    _ID42407::_ID35014();
}

_ID47362()
{
    self._ID507 = 1;
    self endon( "death" );

    for (;;)
    {
        if ( !_func_02F( level._ID794._ID40065 ) )
            break;

        var_0 = _func_0F3( level._ID794._ID40065._ID740, self._ID740 );

        if ( var_0 < 300 )
            self._ID507 = 0;

        if ( var_0 < 210 )
        {
            _ID42407::_ID32326( "balcony_death" );
            self _meth_8058();
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
        if ( !_func_02F( level._ID794._ID40065 ) )
            return;

        var_3 = _func_11F( level._ID794._ID40065._ID65 );
        var_4 = level._ID794._ID40065._ID740 + var_3 * 55;
        var_4 = ( var_4[0], var_4[1], level._ID794._ID40065._ID740[2] );
        _func_184( var_4, 165, 125, 50 );
        wait(var_0);
    }
}

_ID48287()
{
    self._ID45883 = 1;
    var_0 = _func_1A1( "price_bike_path", "targetname" );

    for (;;)
    {
        self _meth_8236( var_0._ID740, 20 );

        if ( _func_0F3( self._ID740, var_0._ID740 ) < var_0._ID851 )
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
    var_0 = _func_1A1( "avalanche_progress_org", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = _func_0F3( var_0._ID740, var_1._ID740 );

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
    var_0 thread _unknown_0501();
    var_0 _unknown_051F();
}

_ID45304()
{
    var_0 = _func_1A1( "avalanche_progress_org", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = _func_03D();
    self _meth_828D( 35, 25, 25 );

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

        if ( _func_03D() > var_2 + 3000 )
        {
            var_7 = level._ID51355 _meth_8290();
            self _meth_828D( var_7 * var_6, 25, 25 );
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
                var_0 += _func_0B9( 100, 200 );
            }
        }

        wait 0.21;
    }
}

_ID47862()
{
    var_0 = _func_1F2( self._ID1191, "targetname" );
    self _meth_805A();
    level._ID52515[level._ID52515.size] = self;
    var_1 = _ID42237::_ID35164();
    var_1 _meth_8053( self, "tag_origin", ( 0, 0, 256 ), ( 0, 0, -90 ) );
    _func_157( level._ID1426["avalanche_loop_large"], var_1, "tag_origin" );
    thread _ID42411::_ID17021( self );
    self._ID53680 = 2000;
    thread _unknown_06C9();
}

_ID43489()
{
    if ( _func_02F( self._ID922 ) && self._ID922 == "main_avalanche" )
    {
        level._ID46742 = self;
        var_0 = _func_1A1( "avalanche_trigger", "targetname" );
        var_0 _meth_80A1( "avalanche_ambiance_main" );
        self._ID28675 = 0;
        var_0 thread _unknown_073D();
        var_0 thread _unknown_076F();
    }

    var_1 = _func_1A1( "avalanche_progress_org", "targetname" );
    var_2 = _func_1A1( var_1._ID1191, "targetname" );

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

        var_7 = level._ID51355 _meth_8290();
        self _meth_828D( var_7 * var_6, 150, 150 );
        wait 0.2;
    }
}

_ID44967()
{
    var_0 = _func_1A1( "avalanche_progress_org", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = _func_11A( var_0._ID740 - var_1._ID740 );
    self._ID65 = var_2 + ( 0, 90, 0 );
    var_3 = _func_0F3( var_0._ID740, var_1._ID740 );

    for (;;)
    {
        var_4 = level._ID46742._ID28675 - 100;
        var_5 = var_4 / var_3;
        self._ID740 = var_0._ID740 * 1 - var_5 + var_1._ID740 * var_5;
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
        self _meth_8287( var_0 );
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
    var_1 = level._ID52515;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID53680 = var_0;
    }

    var_clear_2
    var_clear_0
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
    self _meth_823C( 1 );
}

_ID50412()
{
    if ( !_func_02F( self._ID43135._ID53982 ) )
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
    wait(_func_0B8( 0.35 ));
    self _meth_8058();
}

_ID43153()
{
    thread _unknown_09C1( 1 );
    self _meth_823C();
    var_0 = self._ID29965;

    for ( var_3 = _func_1DA( var_0 ); _func_02F( var_3 ); var_3 = _func_1BF( var_0, var_3 ) )
    {
        var_1 = var_0[var_3];
        var_2 = "";

        if ( _func_02F( var_1._ID922 ) )
            var_2 = var_1._ID922;

        if ( var_2 == "magic_bullet_spawner" )
            var_1 thread _unknown_09A9();
        else
            var_1._ID486 = 20;

        var_1 thread _unknown_09A9();
    }

    var_clear_3
    var_clear_0
    var_4 = _func_02F( self._ID922 ) && self._ID922 == "god_vehicle_spawner";

    if ( var_4 )
    {
        self._ID29965[0] _unknown_09D4();
        level._ID53165 = self;
        level._ID49452 = self._ID29965;
        self waittill( "reached_end_node" );
        wait 3;
        _unknown_09E5();
    }
    else
    {
        thread _ID42413::_ID40083();
        _unknown_0A54();
    }

    if ( _func_1A7( self._ID29965[0] ) )
    {
        var_5 = self._ID29965;

        for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
        {
            var_1 = var_5[var_6];

            if ( _func_1A7( var_1 ) )
                var_1._ID4867 = 1;
        }

        var_clear_1
        var_clear_0
    }

    self _meth_828D( 0, 35, 35 );
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
    _unknown_0AC4();
    _ID42237::_ID14413( "player_starts_snowmobile_trip" );
    var_0 = _ID42411::_ID46021( self._ID740 );

    if ( _func_02F( level._ID44744 ) )
        var_0 thread [[ level._ID44744 ]]( self );
}

_ID48603()
{
    if ( level._ID35897 != "snowspawn" )
        _ID42237::_ID14413( "enemies_persue_on_bike" );

    var_0 = _func_1A1( "hunter_killer", "targetname" );
    var_1 = var_0 _ID42407::_ID35192();
    level._ID53655 = var_1;
    _ID42237::_ID14402( "hk_gives_chase" );
    var_1._ID43037 = 4000;
    var_1._ID52368 = 0;
    var_1._ID48378 = 3;
    var_1 _ID42407::_ID13024( "firing" );
    var_1 thread _unknown_0BF4();
    var_1 thread _unknown_0C90();
}

_ID43876()
{
    self endon( "death" );

    if ( !_func_02F( level._ID794._ID40065 ) )
        return;

    self endon( "stop_tracking" );
    self _meth_8271( "hind_turret" );
    var_0 = _func_11F( level._ID794._ID65 );
    level._ID49524._ID740 = level._ID794._ID740;
    var_1 = _func_06A( "script_origin", level._ID794._ID740 );
    self _meth_826C( level._ID49524, ( 0, 0, 0 ) );
    self _meth_826F( level._ID794 );
    var_2 = 3000;
    var_3 = 5000;
    var_4 = level._ID794._ID40065 _meth_8290() * 80;

    if ( var_4 < var_2 && self._ID52368 < 9 )
        var_4 = var_2;
    else if ( var_4 > var_3 )
        var_4 = var_3;

    var_5 = var_0 * var_4;
    level._ID49524._ID740 = level._ID794._ID740 + var_5;
    var_1._ID740 = level._ID49524._ID740;
    var_1 _meth_8053( level._ID794 );
    var_6 = 5;

    for (;;)
    {
        level._ID49524._ID740 = _unknown_0D2D( var_1._ID740, 0 );

        if ( _ID42407::_ID41803( self._ID740, self._ID65, level._ID49524._ID740, 0.9 ) )
            break;

        wait 0.05;
    }

    var_7 = _func_0B9( 6, 9 );
    var_8 = level._ID49524._ID740;
    var_9 = var_7;

    if ( self._ID52368 < 5 )
        var_9 = var_7 - 2;

    for ( var_10 = 0; var_10 < var_9; var_10++ )
    {
        var_11 = var_10 / var_7;
        var_12 = var_8 * 1 - var_11 + level._ID794._ID740 * var_11;
        level._ID49524._ID740 = _unknown_0D8E( var_12, 0 );
        var_13 = _func_0BA( 0.1, 0.3 );
        _ID42306::_ID14269( "hind_zippy", 1, level._ID49524, var_13 );
    }

    var_1 _meth_80B7();
}

_ID48641( var_0 )
{
    var_1 = 0;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1 += var_3;
    }

    var_clear_2
    var_5 = _func_0B8( var_1 );
    var_1 = 0;
    var_6 = var_0;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_3 = var_6[var_7];
        var_1 += var_3;

        if ( var_5 <= var_1 )
            return var_7;
    }

    var_clear_1
}

_ID49463()
{
    self endon( "death" );
    level endon( "avalanche_begins" );

    if ( _ID42237::_ID14385( "avalanche_begins" ) )
        return;

    for (;;)
    {
        self._ID48788 = _func_0BA( -4, 4 );

        if ( self._ID52368 < self._ID48378 )
            self._ID43037 = _func_0BA( 1000, 5000 );

        wait(_func_0BA( 4, 8 ));
    }
}

_ID52212()
{
    self endon( "death" );
    self _meth_828D( 120, 50, 50 );
    self._ID48788 = 0;
    thread _unknown_0DB2();
    _ID42237::_ID14413( "player_gets_on_snowmobile" );

    for (;;)
    {
        if ( _ID50343::_ID53431()._ID517 > 0 )
            break;

        wait 0.05;
    }

    self _meth_829C( 300, 160, 160 );
    self _meth_828D( 350, 75, 275 );
    level._ID49524 = _func_06A( "script_origin", level._ID794._ID740 );
    self _meth_826F( level._ID49524 );

    for (;;)
    {
        var_0 = _func_0BA( 7500, 9500 );
        var_1 = _func_0BA( 550, 750 );

        if ( _ID42237::_ID8201() )
            var_1 *= -1;

        var_2 = _ID50343::_ID48037( _ID50343::_ID53431(), _ID50343::_ID53297() + var_0, var_1 );
        var_2 = _unknown_0EC8( var_2, 1200 );
        self _meth_8264( 1000 );

        if ( !_ID42237::_ID14385( "bad_heli_goes_to_death_position" ) )
        {
            _unknown_0EAC( var_2 );
            self _meth_8265( var_2, 1 );
        }

        var_3 = _func_03D();
        _unknown_0DD0();
        var_4 = _func_0BA( 2, 3 );
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
        if ( _func_0F3( self._ID740, var_0 ) < 2500 )
            return;

        var_2 = _ID42407::_ID32530( self._ID740, 0 );
        var_3 = _func_11A( var_0 - var_2 );
        var_4 = _func_11F( var_3 );
        var_5 = var_2 + var_4 * 600;
        var_5 = ( var_5[0], var_5[1], self._ID740[2] );
        var_5 = _unknown_0F8D( var_5, 1200 );
        self _meth_8265( var_5, 0 );
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
        var_0 = _unknown_0FB1( self._ID740, level._ID794._ID740 );
        self _meth_8266( var_0 );
        level._ID43671 = var_0;
        wait 0.05;
    }
}

_ID49996( var_0, var_1 )
{
    var_2 = _func_11A( var_1 - var_0 );
    return var_2[1];
}

_ID49120( var_0, var_1 )
{
    var_2 = _func_06D( var_0 + ( 0, 0, 2000 ), var_0 + ( 0, 0, -15000 ), 0, self );
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
        var_2 = _func_091( var_2 + ( 0, 0, 5000 ), var_2 + ( 0, 0, -5000 ) );
        self._ID740 = var_2;
        wait 5;
    }
}

_ID45235( var_0, var_1 )
{
    if ( !_func_02F( level._ID48727 ) )
        return;

    var_2 = _func_1A1( "objective_end_org", "targetname" );
    var_3 = _func_0F3( var_2._ID740, level._ID48727._ID740 );
    var_4 = _ID42407::_ID16268( var_1 );
    var_5 = _func_1A1( var_4._ID1191, "targetname" );
    var_6 = _func_11A( var_5._ID740 - var_4._ID740 );
    var_7 = _func_11F( var_6 );
    var_5._ID740 = var_4._ID740 + var_7 * 500000;
    var_6 = _func_11A( var_5._ID740 - level._ID48727._ID740 );
    var_7 = _func_11F( var_6 );
    var_8 = level._ID48727._ID740 + var_7 * var_3;
    _func_1E8( var_0, var_8 );
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
    var_0 = _func_1AB( level._ID794, 10000, 2000 );
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
    var_1 = _func_1A1( self._ID1191, "targetname" );
    var_2 = var_1._ID65;
    var_3 = level._ID46905[level._ID50893];
    level._ID50893++;

    if ( level._ID50893 >= level._ID46905.size )
        level._ID50893 = 0;

    _ID42407::_ID32326( var_3 );
    _unknown_1369();

    if ( !_func_1A7( self ) )
    {
        level._ID48660++;
        level notify( "cliff_death" );
        return;
    }

    wait(_func_0BA( 0.2, 0.7 ));

    if ( _func_1A7( self ) )
    {
        self _meth_81B2( var_0 );
        self._ID452 = _func_0F3( self._ID740, var_0 ) / 2;
        _ID42237::_ID41098( "goal", "death" );
    }

    level._ID48660++;
    level notify( "cliff_death" );

    if ( !_func_1A7( self ) )
        return;

    self endon( "death" );
    self._ID452 = 8;
    self waittill( "goal" );
    self _meth_80B7();
}

_ID46113()
{
    self endon( "death" );
    _ID42237::_ID14413( "clifftop_snowmobile_guys_die" );
    wait(_func_0BA( 0.1, 0.3 ));
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
    var_0 = _func_0B7( 360 );
    self._ID65 = ( 0, var_0, 0 );
    var_1 = 64;
    var_2 = _func_0B7( var_1 * 2 ) - var_1;
    self._ID740 = self._ID740 + ( var_2, 0, 0 );
    var_3 = _func_06D( self._ID740 + ( 0, 0, 64 ), self._ID740 + ( 0, 0, -64 ), 0, undefined );
    self._ID740 = var_3["position"] + ( 0, 0, -8 );
    self._ID8089 _meth_805A();
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
        var_0 = _func_1A2( "script_vehicle_littlebird_armed", "classname" );

        if ( var_0.size )
        {
            var_1 = _ID42237::_ID16182( self._ID740, var_0, 8000 );
            self _meth_8173( var_1, 0.75 );
        }

        wait(_func_0BA( 0.5, 1 ));
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

    self _meth_828E( 120, 50, 35 );
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
        self._ID3575[var_0]._ID9580 = ::_unknown_1675;

    if ( _func_02F( self._ID52264["trigger_multiple"] ) )
        _ID42237::_ID3350( self._ID52264["trigger_multiple"], ::_unknown_16C4 );

    if ( _func_02F( self._ID52264["trigger_use"] ) )
        _ID42237::_ID3350( self._ID52264["trigger_use"], ::_unknown_16EE );

    self waittill( "reached_dynamic_path_end" );
    self waittill( "near_goal" );
    self _meth_805E();
    _ID42407::_ID13025( "landed" );
    _ID42237::_ID14413( "player_boards" );

    if ( 1 )
        return;

    var_1 = _ID42407::_ID35028( "player_rig" );
    var_1 _meth_805A();
    var_1 _meth_8053( self, "tag_detach", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _ID42259::_ID3111( var_1, "player_evac", "tag_detach" );
    level._ID794 _meth_8087( var_1, "tag_origin", 0.5, 0.2, 0.2 );
    _ID42407::_ID10226( 0.5, ::_unknown_179A, var_1, "tag_origin" );
    wait 6;
    _ID42237::_ID14413( "price_enters_heli" );
    var_2 = _ID42237::_ID16638( "ending_heli_escape_path", "targetname" );
    thread _ID42411::_ID40218( var_2 );
    _ID42237::_ID14413( "ending_heli_leaves" );
    _ID42407::_ID24793();
}

_ID48071( var_0, var_1 )
{
    var_0 thread _unknown_176A( self, var_1 );
    return 1;
}

_ID45971( var_0, var_1 )
{
    var_2 = _ID42412::_ID3052( self, var_1 );
    var_3 = _ID42412::_ID16125();

    if ( _func_02F( var_2._ID40152 ) )
    {
        var_3 thread _ID42412::_ID32549( var_2._ID40152, var_2._ID40153 );
        var_4 = 0;

        if ( _func_02F( var_2._ID40155 ) )
        {
            var_4 = _ID42412::_ID7401( var_2._ID40155 );
            var_5 = var_3 _meth_818C( var_2._ID40155 );
        }
        else
            var_5 = var_3._ID740;

        if ( _func_02F( var_2._ID40154 ) && !var_4 )
            thread _ID42237::_ID27077( var_2._ID40154, var_5 );

        var_4 = undefined;
    }

    thread _ID42412::_ID17566( var_0, var_1 );
    _ID42237::_ID14413( "h2_ending_begins" );
    var_0 notify( "stop_idle" );
    var_0 _meth_8055();
    level._ID49803 thread _ID42259::_ID3111( var_0, "cliffhanger_ending_soldier_" + var_1, undefined, undefined, "generic" );
}

_ID54369()
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( _ID42237::_ID14385( "player_boards" ) )
            break;

        if ( level._ID794 _meth_8344()[2] > 8 )
            break;
    }

    self _meth_80B7();
    _ID42237::_ID14402( "player_boards" );
}

_ID44195()
{
    self _meth_80E2( &"CLIFFHANGER_BOARD" );
    _ID42407::_ID1985( _ID42407::_ID41116, "trigger" );
    level _ID42407::_ID1985( _ID42407::_ID41116, "player_boards" );
    _ID42407::_ID11232();
    _ID42237::_ID14402( "player_boards" );
    self _meth_80B7();
}

_ID45161()
{
    for (;;)
    {
        if ( !_func_02F( level._ID794._ID40065 ) )
            return;

        if ( _func_0F3( level._ID794._ID740, self._ID740 ) < 800 )
        {
            level._ID794._ID40065 _meth_828D( 0, 5, 35 );

            if ( level._ID794._ID40065 _meth_8290() < 5 )
                break;
        }

        wait 0.05;
    }

    level._ID794 _ID42407::_ID27348();
    level._ID794._ID40065 _meth_828D( 0, 5, 25 );
}

_ID54126( var_0, var_1 )
{
    level._ID794 _meth_8084( var_0, var_1, 1, 90, 90, 35, 45 );
}

_ID45033()
{

}

_ID51332()
{

}

_ID46583()
{
    if ( !_func_1A7( level._ID28543 ) )
        return;

    level._ID28543 endon( "death" );
    var_0 = _func_1AF();
    var_0 _meth_80D3( "overhead_obj_icon_world", 10, 10 );
    var_0._ID55 = 1.0;
    var_0._ID196 = ( 1, 1, 1 );
    var_0 _meth_80DF( 1, 0 );
    var_0 _meth_80D4( level._ID28543 );
    _ID42237::_ID14413( "player_boards" );
    var_0 _meth_808F();
}

_ID49356()
{
    _ID42237::_ID14413( "hk_gives_chase" );

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( _func_02F( level._ID53655 ) && level._ID53655 != var_0 )
            continue;

        break;
    }

    _ID42237::_ID14402( "bad_heli_goes_to_death_position" );
    var_1 = _ID42237::_ID16638( self._ID1191, "targetname" );
    level._ID53655 _meth_8265( var_1._ID740, 1 );
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

        if ( !_func_02F( level._ID794._ID40065 ) )
            continue;

        if ( !_func_02F( level._ID28543._ID40065 ) )
            continue;

        if ( var_0 == level._ID794._ID40065 )
            continue;

        if ( var_0 == level._ID28543._ID40065 )
            continue;

        if ( !_func_02F( var_0._ID41798 ) )
            continue;

        if ( var_0._ID41798 )
            continue;

        var_0._ID41798 = 1;
    }
}

_ID53275()
{
    self waittill( "trigger" );
    var_0 = _func_1F2( self._ID1191, "targetname" );
    level._ID794._ID40065._ID1274 = "follow";
    level._ID794._ID40065 _meth_8289( var_0 );
    level._ID794 _meth_8334( 1 );
    _ID42237::_ID14413( "end_begins" );
    wait 4.45;
    level._ID794 _meth_8334( 0 );
}

_ID47537()
{
    for (;;)
    {
        self waittill( "trigger" );
        thread _unknown_1C7A();
        var_0 = 0;

        while ( level._ID794 _meth_80B0( self ) )
        {
            var_1 = _func_119( _ID42407::_ID32530( level._ID49803._ID740 - level._ID794._ID40065._ID740, 0 ) );
            var_2 = _func_11F( level._ID794._ID40065._ID65 );
            var_3 = _func_0FB( var_1, var_2 );

            if ( var_3 > 0 )
            {
                var_0 = 1;
                break;
            }

            level._ID794._ID40065 _meth_85C0( 1 );
            waittillframeend;
        }

        level._ID794._ID40065 _meth_85C0( 0 );

        if ( var_0 )
            break;
    }

    var_4 = _func_1A1( "snowmobile_end_collision", "targetname" );
    var_4 _meth_80B7();
    var_5 = level._ID794._ID40065;
    var_6 = level._ID28543._ID40065;
    var_7 = level._ID30895["snowmobile_player"]["cliffhanger_ending"];
    var_8 = _func_071( level._ID49803._ID740, level._ID49803._ID65, var_7 );
    var_9 = _func_072( level._ID49803._ID740, level._ID49803._ID65, var_7 );
    var_10 = _func_067( var_7 );
    var_11 = 61.4;
    var_5 _meth_85A1( var_8, _func_11F( var_9 ), var_11 );
    var_5 _meth_828D( var_11, var_11 / 4, var_11 / 4 );
    level._ID794 _meth_8334( 1 );
    var_5._ID52700 = 0;

    for (;;)
    {
        var_12 = _func_11F( var_5._ID65 );
        var_13 = var_5 _meth_8290();
        var_14 = var_5._ID740 + var_12 * var_13 * 17.6 * 0.05;
        var_15 = _func_0F4( var_5._ID740, var_8 );
        var_16 = _func_0F4( var_14, var_8 );

        if ( var_15 < 15 || var_16 > var_15 )
            break;

        waittillframeend;
    }

    var_5 _meth_828E( 0 );
    var_5 notify( "kill_anims" );
    var_6 _ID42413::_ID40181();
    var_6 _meth_828E( 0 );
    var_6._ID3189 = "snowmobile";
    var_6 _meth_814C( var_6 _ID42407::_ID16120( "root" ), 0 );
    var_6 notify( "kill_anims" );
    level._ID28543 _meth_8055();
    level._ID28543._ID3195 = 1;
    level._ID28543 notify( "killanimscript" );
    var_5 _meth_814C( var_5 _ID42407::_ID16120( "root" ), 0 );
    _ID42237::_ID14402( "h2_ending_begins" );
    _ID42237::_ID24938( 2, ::_func_0DB, "objectiveHide", 1 );
    level._ID794 _ID42407::_ID13024( "finish_line" );
    level._ID794 _ID42407::_ID13025( "finish_line" );
    level._ID794 _meth_80A9( 0.5, 0, 0, 0, 0, 0, 0 );
    var_17 = [];
    var_17["price_vehicle"] = var_6;
    var_17["price"] = level._ID28543;
    var_18 = var_5 _ID42237::_ID35164();
    level._ID49803 thread _ID42259::_ID3099( var_17, "cliffhanger_ending" );
    var_18 thread _ID42259::_ID3111( var_5, "cliffhanger_ending" );
    var_5 thread _ID42259::_ID46811( "single anim", var_18, level._ID49803, 2 );
    var_5 _meth_8155( var_5 _ID42407::_ID16120( "cliffhanger_ending_player_anim" ), 1, 0 );
    _ID42407::_ID14403( "h2_ending_ends", var_10 - 7.8 );
}

_ID45130()
{
    for (;;)
    {
        var_0 = _func_1A1( "recover_vehicle_path_trigger", "targetname" );
        var_0 waittill( "trigger",  var_1  );

        if ( var_1._ID1282 == "snowmobile_friendly" )
            break;
    }

    var_2 = _func_1F2( var_0._ID1191, "targetname" );
    var_1 thread _ID42411::_ID40218( var_2 );
    var_1 _meth_8289( var_2 );
}

_ID43598( var_0, var_1 )
{
    level notify( "new_player_protection_trip" );
    _unknown_1E02( var_0, var_1 );
    level._ID794 _ID42298::_ID29791();
}

_ID47000( var_0, var_1 )
{
    level endon( "new_player_protection_trip" );
    var_1 = _unknown_1E5D( var_1 );
    var_2 = var_1;
    var_3 = _func_0F3( level._ID794._ID740, var_1 );
    var_4 = [];
    var_4[0] = 1.25;
    var_4[1] = 1.0;
    var_4[2] = 0.75;
    var_4[3] = 0.75;
    var_5 = var_4[level._ID15361];
    var_6 = _func_03D() + 3000;
    var_7 = level._ID794._ID740;
    var_8 = 150;

    for (;;)
    {
        var_1 = _unknown_1EA2( var_1 );

        if ( var_1 != var_2 )
        {
            var_2 = var_1;
            var_3 = _func_0F3( level._ID794._ID740, var_1 );
            var_3 -= 55;
        }

        var_9 = _func_0F3( level._ID794._ID740, var_1 );
        var_9 += 50;

        if ( var_9 < var_3 || var_3 < 150 )
        {
            level._ID794 _ID42407::_ID32411( 0 );
            var_3 = var_9;
            wait 0.5;
        }
        else
        {
            var_10 = _func_03D() < var_6;
            var_11 = _func_0F3( level._ID794._ID740, var_7 ) < var_8;

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
    if ( !_func_1A7( self ) )
        return var_0;

    if ( !_func_02F( self._ID451 ) )
        return self._ID740;

    return self._ID451;
}

_ID48961()
{
    _ID42237::_ID14413( "snowmobile_fog_clears" );
    thread _unknown_1F54( thisthread );
    _ID42237::_ID14413( "snowmobile_jump" );
    level._ID48727._ID43555 = 1;
    wait 0.25;
}

_ID54451( var_0 )
{
    var_1 = _ID42237::_ID16299( "smowmobile_windshield_snow" );

    while ( _func_02F( var_0 ) )
    {
        var_2 = level._ID48727 _meth_8291();

        if ( var_2[1] > 1000 )
        {
            var_3 = 1000 / var_2[1];
            _func_157( var_1, level._ID48727, "TAG_ORIGIN" );
            wait(var_3);
            continue;
        }

        wait 0.1;
    }
}

_ID46844()
{
    var_0 = _func_1A1( "falling_tree_01", "targetname" );
    var_0._ID3189 = "fallingtree";
    var_0 _ID42259::_ID32556();
    var_0 _ID42259::_ID3018( var_0, "destroyed_fallen_tree_cliffhanger01" );
    _ID42237::_ID14413( "destroyed_fallen_tree_cliffhanger01" );
    _ID42234::_ID13611( 18 );
    wait 0.25;
    _func_156( level._ID1426["tree_trunk_explosion"], var_0._ID740 );
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
    _unknown_2074( 1, var_0, var_2 );
    wait(var_3 / var_2);
    _unknown_207E( 0, var_1, var_2 );
    level._ID794 _meth_80A1( "scn_snowmobile_jump_land" );
    _ID42475::_ID34575( "aud_stop_mix_snowmobile_jump" );
    level._ID794 thread _ID42407::_ID27079( "mus_cliffhanger_snowmobile_landed" );
}

_ID49030( var_0, var_1, var_2 )
{
    var_3 = _func_03D();
    var_4 = 0.0;
    var_5 = 1.0;

    while ( var_4 < 1.0 )
    {
        waittillframeend;
        var_4 = _func_03D() - var_3 / var_1 * 1000;
        var_4 = _func_0C4( var_4, 1.0 );

        if ( var_0 )
        {
            var_4 = _func_0EC( var_4 );
            var_5 = _ID42407::_ID22382( var_4, 1.0, var_2 );
        }
        else
        {
            var_4 *= var_4;
            var_5 = _ID42407::_ID22382( var_4, var_2, 1.0 );
        }

        _func_008( var_5 );
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
