// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52537( var_0, var_1 )
{
    _ID42237::_ID14400( "player_can_die_on_zodiac" );
    _ID42237::_ID14400( "player_shot_on_zodiac" );
    _ID42237::_ID14402( "player_can_die_on_zodiac" );

    if ( !isdefined( var_0 ) )
        level._ID52555 = "viewhands_player_udt";
    else
        level._ID52555 = var_0;

    if ( !isdefined( var_1 ) )
        level._ID54044 = "vehicle_zodiac_viewmodel";
    else
        level._ID54044 = var_1;

    level._ID43508 = "h2_viewmodel_miniuzi_base";
    level._ID45615 = "uzi_zodiac";
    precachemodel( level._ID52555 );
    precachemodel( level._ID54044 );
    precachemodel( level._ID43508 );
    precacheitem( level._ID45615 );
    level._ID44916 = loadfx( "fx/muzzleflashes/uzi_flash_view" );
    level._ID44902 = loadfx( "vfx/shelleject/pistol_view" );
    level._ID52387 = [];
    level._ID52387["weap_glock_fire_snowmobile"] = "h1_wpn_uzi_zodiac_plr_LEFT";
    _ID44461();
    _ID42407::_ID1865( "zodiac_attack", &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK", ::_ID51514, &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK_KEYBOARD", undefined, "small_background" );
    _ID42407::_ID1865( "zodiac_drive", &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE", ::_ID46985, &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE_KEYBOARD", undefined, "small_background" );
    var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE";

    if ( _func_9a() )
        var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_BUTTON_INVERSED";

    _ID42407::_ID1865( "zodiac_reverse", var_2, ::_ID43328, &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_KEYBOARD", undefined, "medium_background" );
}

_ID50469( var_0, var_1 )
{
    var_2 = self;
    var_2 makeusable();
    self waittill( "vehicle_mount",  var_3  );
    setsaveddvar( "g_friendlyNameDist", 0 );

    if ( !getdvarint( "scr_zodiac_test" ) && _ID42407::_ID20505() )
    {
        _ID42407::_ID10226( 20, _ID42407::_ID18684, "zodiac_attack" );
        _ID42407::_ID10226( 1.5, _ID42407::_ID18684, "zodiac_drive" );
    }

    var_3._ID40065 = var_2;
    var_2._ID52578 = var_2._ID669;
    var_2._ID45078 = 32;
    var_2._ID3189 = "zodiac_player";
    var_2 _ID42407::_ID3428();
    var_2 makeunusable();
    var_2 dontcastshadows();
    var_2 _meth_859e( 0 );
    var_3 thread _ID54207( var_2 );

    if ( !isdefined( var_1 ) || !isdefined( var_0 ) )
        var_3 thread _ID51137( var_2, var_0, var_1 );

    var_3 thread _ID48108( var_2 );
    var_3 thread _ID46907( var_2, var_1 );
    var_3 thread _ID49397( var_2 );
    var_3 thread _ID47797( var_2 );
    var_2 thread _ID50304();
    var_3 thread _ID40851( var_2 );
    var_3 thread _ID51357( var_2 );
    var_3 thread _ID54374( var_2 );
    var_2 thread _ID53325();
    var_3 thread _ID53630( var_2, "pullout_anim" );
    var_3 thread _ID53630( var_2, "fire_anim" );
    var_3 thread _ID53630( var_2, "reload_anim" );
    var_3 thread _ID53630( var_2, "putaway_anim" );
    var_3 _ID45562( var_2, var_1 );
    var_3 thread _ID51776();
    var_2 thread drive_update_bounce_additive();
    var_2 setanim( var_2 _ID42407::_ID16120( "zodiac_bounce" ) );
    var_2 _ID42237::_ID41098( "vehicle_dismount", "death" );
    var_3._ID40065 = undefined;
}

_ID51776()
{
    self._ID40065 endon( "vehicle_dismount" );
    self._ID40065 endon( "death" );
    self waittill( "death" );
    self._ID40065 notify( "kill_anims" );
    self._ID45556 = "h2_zodiac_player_death_0" + randomintrange( 1, 3 );
    self._ID40065 childthread _ID46860();
    self._ID40065 setflaggedanimknob( self._ID45556, self._ID40065 _ID42407::_ID16120( self._ID45556 ), 1, 0.1, 1 );
}

_ID46860()
{
    var_0 = int( self vehicle_getspeed() );

    while ( isdefined( self ) )
    {
        var_0 -= 0.75;

        if ( var_0 < 0 )
            break;

        self vehphys_setspeed( var_0 );
        wait 0.05;
    }

    if ( isdefined( self ) )
        self vehphys_setspeed( 0 );
}

_ID47788()
{
    return getaiarray( "bad_guys" );
}

_ID47507()
{
    return getaiarray( "bad_guys" );
}

_ID49397( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_1 = 500;

    for (;;)
    {
        var_0 waittill( "veh_jolt",  var_2  );

        if ( var_0 getanimweight( var_0 _ID42407::_ID16120( "left_arm" ) ) != 0 )
        {
            if ( var_2[0] > var_1 )
            {
                var_0 _ID46747( "start_additive" );
                continue;
            }

            if ( var_2[0] < -1 * var_1 )
                var_0 _ID46747( "end_additive" );
        }
    }
}

_ID47797( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_1 = 500;
    var_2 = 5000;

    for (;;)
    {
        var_0 waittill( "veh_jolt",  var_3  );
        var_4 = var_3[2];

        if ( var_4 >= var_1 && var_0._ID47370 )
        {
            var_5 = clamp( var_4 / var_2, 0, 1 );
            var_0 setflaggedanimlimited( "land", var_0 _ID42407::_ID16120( "land_anim" ), 1.0, 0 );
            var_0 setanim( var_0 _ID42407::_ID16120( "land" ), var_5, 0.05 );
            var_0 waittillmatch( "land",  "end"  );
            var_0 clearanim( var_0 _ID42407::_ID16120( "land" ), 0.2 );
        }
    }
}

drive_update_bounce_additive()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    self setanimlimited( _ID42407::_ID16120( "bounce_add_loop_anim" ), 1.0, 0.0, 1.0 );
    var_0 = 40;

    for (;;)
    {
        var_1 = self vehicle_getspeed();
        var_2 = clamp( var_1, 0, var_0 ) / var_0;
        self setanim( _ID42407::_ID16120( "bounce_add_loop" ), var_2, 0.1 );
        waittillframeend;
    }
}

_ID53325()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    self._ID46229 = 10;

    for (;;)
    {
        if ( _ID42237::_ID14385( "player_zodiac_on_ground" ) )
        {
            if ( self._ID1278 != self._ID46229 )
                self._ID1278 = self._ID46229;
        }
        else if ( !_ID42237::_ID14385( "boat_start_rubber_band" ) )
        {
            if ( isdefined( self._ID51804 ) && self._ID1278 != self._ID51804 )
                self._ID1278 = self._ID51804;
        }

        waittillframeend;
    }
}

_ID50304()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    var_0 = 4;
    var_1 = 0;
    self._ID43666 = self _meth_84dd();

    for (;;)
    {
        self._ID47370 = self._ID43666;
        self._ID43666 = self _meth_84dd();

        if ( self._ID43666 )
        {
            var_1++;

            if ( var_1 == var_0 )
            {
                self setanim( _ID42407::_ID16120( "air_in" ), 1.0, 0.05 );
                self setflaggedanimlimited( "air_in", _ID42407::_ID16120( "air_in_anim" ), 1.0, 0 );
                thread _ID48020();
            }
        }
        else
            var_1 = 0;

        wait 0.05;
    }
}

_ID48020()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    self waittill( "veh_landed" );
    self clearanim( _ID42407::_ID16120( "air_in" ), 0.05 );
}

_ID40851( var_0 )
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    var_1 = 0.2;

    for (;;)
    {
        self waittill( "damage",  var_2, var_3, var_4, var_5, var_6  );

        if ( var_6 == "MOD_PROJECTILE_SPLASH" || var_6 == "MOD_PROJECTILE" )
        {
            var_7 = vectornormalize( var_5 - var_0._ID740 );
            var_8 = anglestoforward( var_0._ID65 );
            var_9 = anglestoright( var_0._ID65 );
            var_10 = vectordot( var_7, var_8 );

            if ( var_10 >= 0 )
                var_11 = "explosion_front_anim";
            else
                var_11 = "explosion_back_anim";

            var_12 = vectordot( var_7, var_9 );

            if ( var_12 >= 0 )
                var_13 = "explosion_right_anim";
            else
                var_13 = "explosion_left_anim";

            if ( abs( var_12 ) > abs( var_10 ) )
                var_14 = var_13;
            else
                var_14 = var_11;

            var_0 setanimlimited( var_0 _ID42407::_ID16120( "explosion" ), 1.0, var_1 );
            var_0 setanimknoblimitedrestart( var_0 _ID42407::_ID16120( var_14 ), 1, var_1 );
        }
    }
}

_ID51357( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_1 = 1500;
    var_2 = 0.2;

    for (;;)
    {
        var_0 waittill( "veh_jolt",  var_3  );
        var_4 = abs( var_3[0] );
        var_5 = abs( var_3[1] );

        if ( var_4 > var_5 && var_3[0] < 0 && var_4 > var_1 )
        {
            var_0 setanimlimited( var_0 _ID42407::_ID16120( "explosion" ), 1.0, var_2 );
            var_0 setanimknoblimitedrestart( var_0 _ID42407::_ID16120( "explosion_back_anim" ), 1, var_2 );
        }
    }
}

_ID54374( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_1 = 1500;
    var_2 = 10000;
    var_3 = 30000;

    for (;;)
    {
        var_0 waittill( "veh_jolt",  var_4  );
        var_5 = abs( var_4[0] );
        var_6 = abs( var_4[1] );

        if ( var_5 > var_6 && var_4[0] < 0 && var_5 > var_1 )
        {
            var_7 = anglestoright( var_0._ID65 );
            var_8 = anglestoforward( var_0._ID65 );
            var_9 = var_0._ID740 + ( 0, 0, 40 );
            var_10 = var_9 - var_7 * 12;
            var_11 = var_9 + var_7 * 12;
            var_12 = var_8 * 175;
            var_13 = bullettrace( var_10, var_10 + var_12, 0, var_0, 0, 0, 1, 0, 0, 0, 0 );
            var_14 = bullettrace( var_11, var_11 + var_12, 0, var_0, 0, 0, 1, 0, 0, 0, 0 );

            if ( !( var_13["fraction"] >= 1 && var_14["fraction"] >= 1 ) )
            {
                var_15 = var_8 * 30;
                var_16 = var_0._ID740 + var_15;
                var_17 = clamp( var_5, var_2, var_3 );
                var_18 = ( var_17 - var_2 ) / ( var_3 - var_2 );
                var_19 = 12 + 35 * var_18;
                var_20 = var_7 * var_19 * _ID42237::_ID37527( var_13["fraction"] < var_14["fraction"], 1, -1 );
                var_0 vehphys_launch( var_20, ( 0, 0, 0 ), var_16 );

                if ( var_5 > var_2 )
                    var_0 notify( "veh_wall_hit" );
            }
        }
    }
}

_ID46747( var_0 )
{
    self setflaggedanim( var_0, _ID42407::_ID16120( var_0 ), 1.0, 0 );
    self waittillmatch( var_0,  "end"  );
    self clearanim( _ID42407::_ID16120( "shoot_additive" ), 0.1 );
}

_ID51137( var_0, var_1, var_2 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "stop_targetting" );
    var_3 = [];
    var_4 = [];
    var_5 = [];
    var_6 = [];
    var_7 = [];

    if ( !isdefined( var_2 ) )
    {
        var_3["player"] = 490000;
        var_4["player"] = 1690000;
        var_5["player"] = 1690000;
        var_6["player"] = ::_ID47788;
        var_7["player"] = spawnstruct();
        var_7["player"]._ID23586 = -20;
        var_7["player"]._ID23033 = 20;
        var_7["player"]._ID52648 = 0;
        var_8 = "player";
    }
    else
        var_8 = "price";

    if ( !isdefined( var_1 ) )
    {
        var_3["price"] = 1000000;
        var_4["price"] = 14440000;
        var_5["price"] = 18490000;
        var_6["price"] = ::_ID47507;
        var_7["price"]["right"] = spawnstruct();
        var_7["price"]["right"]._ID23586 = -80;
        var_7["price"]["right"]._ID23033 = 5;
        var_7["price"]["right"]._ID52648 = -25;
        var_7["price"]["right"]._ID49486 = -55;
        var_7["price"]["right"]._ID50983 = 5;
        var_7["price"]["left"] = spawnstruct();
        var_7["price"]["left"]._ID23586 = -5;
        var_7["price"]["left"]._ID23033 = 80;
        var_7["price"]["left"]._ID52648 = 25;
        var_7["price"]["left"]._ID49486 = -5;
        var_7["price"]["left"]._ID50983 = 55;
    }

    for (;;)
    {
        var_9 = var_3[var_8];
        var_10 = [[ var_6[var_8] ]]();
        var_11 = 180.1;
        var_12 = undefined;
        var_13 = self;

        if ( var_8 == "price" )
            var_13 = level._ID28543;

        var_14 = var_13._ID740;
        var_15 = var_7["player"];

        if ( var_8 == "price" )
        {
            if ( !isdefined( var_13._ID7._ID52880 ) )
            {
                var_8 = "player";
                wait 0.05;
                continue;
            }

            var_15 = var_7["price"][var_13._ID7._ID52880];
        }

        foreach ( var_17 in var_10 )
        {
            var_18 = var_17._ID740;

            if ( isdefined( var_17._ID29969 ) )
            {
                if ( var_17._ID29969 == level._ID48502 )
                    var_9 = var_3[var_8];

                var_9 = var_4[var_8];
            }
            else
                var_9 = var_5[var_8];

            var_19 = distancesquared( var_18, var_14 );

            if ( var_19 > var_9 )
                continue;

            var_20 = vectortoangles( var_18 - var_14 );
            var_21 = angleclamp180( var_20[0] );

            if ( abs( var_21 ) > 15 )
                continue;

            var_22 = angleclamp180( var_20[1] - var_13._ID65[1] );

            if ( var_22 < var_15._ID23586 || var_22 > var_15._ID23033 )
                continue;

            if ( var_8 == "price" )
            {
                if ( var_19 < 62500 )
                {
                    var_12 = var_17;
                    break;
                }

                if ( isdefined( var_13._ID45197 ) && var_17 == var_13._ID45197 && var_22 >= var_15._ID49486 && var_22 <= var_15._ID50983 )
                {
                    var_12 = var_17;
                    break;
                }
            }

            var_22 = abs( angleclamp180( var_22 - var_15._ID52648 ) );

            if ( var_22 < var_11 )
            {
                var_11 = var_22;
                var_12 = var_17;
            }
        }

        var_13._ID45197 = var_12;
        wait 0.1;

        if ( isdefined( var_2 ) )
        {
            var_8 = "price";
            continue;
        }

        if ( isdefined( var_1 ) )
        {
            var_8 = "player";
            continue;
        }

        if ( var_8 == "price" )
        {
            var_8 = "player";
            continue;
        }

        var_8 = "price";
    }
}

_ID48108( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    level endon( "avalanche_begins" );
    var_0 _ID52886();
    var_1 = var_0 vehicle_getspeed();
    var_1 *= 17.6;
    var_2 = ( 0, var_1, 64 );

    if ( _ID42237::_ID14385( "player_can_die_on_zodiac" ) )
    {
        if ( isalive( self ) )
            _ID42407::_ID21321();
    }
}

_ID52886()
{
    level endon( "player_crashes" );
    self waittill( "veh_collision" );
}

_ID51130( var_0, var_1 )
{
    var_0 waittill( "vehicle_dismount" );
    _ID42407::_ID5026( var_1 );

    if ( _ID42237::_ID14385( "player_can_die_on_zodiac" ) )
        _ID42407::_ID21321();

    wait 1.0;
}

_ID46907( var_0, var_1 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( "third_person" );
        _ID51371( var_0 );
        var_0 waittill( "first_person" );
        _ID45562( var_0, var_1 );
    }
}

_ID53630( var_0, var_1 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( var_1,  var_2  );
        var_3 = getsubstr( var_2, 0, 3 );

        if ( var_3 == "ps_" )
        {
            var_4 = getsubstr( var_2, 3 );

            if ( isdefined( level._ID52387[var_4] ) )
                var_4 = level._ID52387[var_4];

            var_0 playsound( var_4 );
            continue;
        }
    }
}

_ID45562( var_0, var_1 )
{
    if ( isdefined( var_0._ID45277 ) )
        return;

    var_0 setmodel( level._ID54044 );
    var_0 attach( level._ID52555, "tag_player" );
    var_0 clearanim( var_0 _ID42407::_ID16120( "root" ), 0 );
    var_0._ID45277 = 1;
    thread _ID45386( var_0, var_1 );
}

_ID53035( var_0 )
{
    if ( !isdefined( var_0._ID45277 ) )
        return;

    if ( isdefined( var_0._ID46302 ) )
    {
        var_0 detach( level._ID43508, "tag_weapon_left" );
        var_0._ID46302 = undefined;
    }

    var_0 detach( level._ID52555, "tag_player" );
    var_0 clearanim( var_0 _ID42407::_ID16120( "root" ), 0 );
    var_0._ID45277 = undefined;
    var_0 notify( "kill_anims" );
}

_ID51371( var_0 )
{
    if ( !isdefined( var_0._ID45277 ) )
        return;

    _ID53035( var_0 );
    var_0 setmodel( var_0._ID52578 );
}

_ID45386( var_0, var_1 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_0 endon( "cleanup" );
    childthread _ID47689( var_0, var_1 );
}

_ID51901( var_0 )
{
    var_1 = _ID42237::_ID16640( "dont_assist_destructible_destruction_here", "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( distance( var_3._ID740, var_0._ID740 ) < var_3._ID851 )
            return;
    }

    self notify( "new_shootable_stuff_assist" );
    self endon( "new_shootable_stuff_assist" );
    var_0 waittill( "damage",  var_5, var_6, var_7, var_8, var_9  );

    for ( var_10 = 0; var_10 < 10; var_10++ )
    {
        wait 0.05;
        var_0 notify( "damage",  var_5, undefined, var_7, var_8, var_9  );
    }
}

_ID43183( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();

    if ( level._ID794 _ID42407::_ID13019( "zodiac_aim_helicopter" ) )
    {
        var_3._ID25268 = level._ID52084;
        var_3._ID740 = level._ID52084._ID740;
        return var_3;
    }

    if ( isalive( self._ID45197 ) )
    {
        var_3._ID25268 = self._ID45197;
        var_3._ID740 = self._ID45197 getshootatpos() + _ID42237::_ID28978( -10, 10 ) + ( 0, 0, -1 * randomfloat( 40 ) );
        return var_3;
    }

    var_4 = _ID42237::_ID3296( getentarray( "destructible_toy", "targetname" ), getentarray( "explodable_barrel", "targetname" ) );

    foreach ( var_6 in var_4 )
    {
        if ( distance( level._ID794._ID740, var_6._ID740 ) > 2300 )
            continue;

        if ( !_ID42407::_ID41803( level._ID794._ID740, level._ID794._ID65, var_6._ID740, 0.965925 ) )
            continue;

        if ( !level._ID794 sightconetrace( var_6 getshootatpos(), var_6 ) )
            continue;

        var_3._ID25268 = var_6;
        var_3._ID740 = var_6._ID740;
        thread _ID51901( var_6 );
        return var_3;
    }

    var_8 = _ID49468();

    foreach ( var_6 in var_8 )
    {
        if ( distance( level._ID794._ID740, var_6._ID740 ) > 1300 )
            continue;

        if ( !_ID42407::_ID41803( level._ID794._ID740, level._ID794._ID65, var_6._ID740, cos( 15 ) ) )
            continue;

        if ( !level._ID794 sightconetrace( var_6._ID740 + ( 0, 0, 16 ), var_6 ) )
            continue;

        var_3._ID25268 = var_6;
        var_3._ID740 = var_6._ID740;
        var_3._ID44118 = 1;
        return var_3;
    }

    if ( isdefined( var_2 ) )
        return var_3;

    var_11 = anglestoforward( self._ID65 );
    var_3._ID740 = var_1 + var_11 * 1500;
    return var_3;
}

_ID49468()
{
    var_0 = getentarray( "script_vehicle_zodiac_physics", "classname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( var_3 == level._ID46392 )
            continue;

        if ( isdefined( level._ID48502 ) && var_3 == level._ID48502 )
            continue;

        if ( isdefined( level._ID46883 ) && var_3 == level._ID46883 )
            continue;

        if ( isspawner( var_3 ) )
            continue;

        if ( var_3._ID29965.size > 1 )
            continue;

        if ( !var_3._ID29965.size )
            continue;

        if ( isdefined( var_3._ID922 ) && var_3._ID922 == "bobbing_boat" )
            continue;

        var_3 thread _ID46903();
        var_1[var_1.size] = var_3._ID29965[0];
    }

    return var_1;
}

_ID46903()
{
    self notify( "wipeout_when_not_in_fov" );
    self endon( "wipeout_when_not_in_fov" );
    self endon( "death" );

    while ( _ID42407::_ID41804( self._ID740, 0.5 ) )
        wait 0.05;

    self._ID41798 = 1;
}

_ID48699( var_0, var_1, var_2 )
{
    var_3 = bullettrace( var_1, var_2, 0, self );

    if ( !isdefined( var_3["entity"] ) )
        return 0;

    if ( var_3["entity"] != var_0 )
        return 0;

    return 1;
}

_ID51581( var_0, var_1 )
{
    var_2 = var_0 gettagorigin( "tag_flash" );

    if ( !isdefined( var_1 ) )
        var_1 = _ID43183( var_0, var_2 );

    if ( _ID42237::_ID14385( "player_in_sight_of_boarding" ) )
        magicbullet( level._ID45615, var_2, var_2 + ( 0, 0, 255 ), self );
    else
        magicbullet( level._ID45615, var_2, var_1._ID740, self );

    playfxontag( level._ID44916, var_0, "tag_flash" );
    playfxontag( level._ID44902, var_0, "tag_brass" );
    level._ID794 playrumblelooponentity( "smg_fire" );

    if ( !isdefined( var_1._ID25268 ) )
        return;

    if ( !isai( var_1._ID25268 ) )
        var_1._ID25268 notify( "damage",  50, level._ID794, self._ID740, var_1._ID25268._ID740, "MOD_PISTOL_BULLET", "", ""  );

    if ( isdefined( var_1._ID44118 ) )
    {
        _ID48600( var_1._ID25268 );
        return;
    }
}

_ID48600( var_0 )
{
    var_0 notify( "newanim" );
    _ID48610::rider_death_animate_or_ragdoll( var_0._ID29969, var_0 );
    var_0._ID29969._ID41798 = 1;
    var_0._ID29969._ID48060 = 1;
}

_ID48564( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 endon( var_2 );
    var_0 setflaggedanimrestart( var_1, var_0 _ID42407::_ID16120( var_3 ), 0.001, 0.08, 1.0 );
    var_0 setflaggedanimrestart( var_1, var_0 _ID42407::_ID16120( var_4 ), 0.001, 0.08, 1.0 );
    var_0 setflaggedanimrestart( var_1, var_0 _ID42407::_ID16120( var_5 ), 0.001, 0.08, 1.0 );

    for (;;)
    {
        var_6 = var_0 vehicle_getsteering() * -1.0;

        if ( var_6 >= 0.0 )
        {
            var_7 = 0.001;
            var_8 = -0.999 * var_6 + 1.0;
            var_9 = 0.999 * var_6 + 0.001;
        }
        else
        {
            var_7 = -0.999 * var_6 + 0.001;
            var_8 = 0.999 * var_6 + 1.0;
            var_9 = 0.001;
        }

        var_0 setflaggedanim( var_1, var_0 _ID42407::_ID16120( var_3 ), var_7, 0.08, 1.0 );
        var_0 setflaggedanim( var_1, var_0 _ID42407::_ID16120( var_4 ), var_8, 0.08, 1.0 );
        var_0 setflaggedanim( var_1, var_0 _ID42407::_ID16120( var_5 ), var_9, 0.08, 1.0 );
        wait 0.05;
    }
}

_ID45584( var_0 )
{
    var_0 setflaggedanimknobrestart( "pullout_anim", var_0 _ID42407::_ID16120( "gun_pullout" ), 1.0, 0.08 );
    var_0 waittillmatch( "pullout_anim",  "end"  );
    var_0 notify( "pullout_done" );
    var_0 setanim( var_0 _ID42407::_ID16120( "gun_idle" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_left_anim" ) );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_right_anim" ) );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_up_anim" ) );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_down_anim" ) );
    var_1 = 0;
    var_2 = 6;
    var_3 = [];
    var_4 = [];
    var_5 = 0.2;
    var_0._ID49686 = 1.0;

    for (;;)
    {
        if ( var_0._ID49686 <= 0.0 )
            break;

        var_6 = _ID20608();

        if ( level._ID794 _ID42407::_ID13019( "disable_shooting" ) )
            var_6 = 0;

        var_7 = var_0 gettagorigin( "tag_flash" );
        var_8 = _ID43183( var_0, var_7 );
        var_9 = var_0 gettagangles( "tag_flash" );
        var_10 = vectortoangles( var_8._ID740 - var_7 );
        var_11 = var_10[1];
        var_12 = var_10[0];
        var_13 = angleclamp( self._ID65[1] );
        var_14 = 15;
        var_15 = angleclamp180( var_11 - var_13 );
        var_3[var_1 % var_2] = var_15;
        var_16 = _ID42237::_ID44103( var_3 );
        var_17 = clamp( var_16 / var_14, 0, 1 );
        var_18 = abs( clamp( var_16 / var_14, -1, 0 ) );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_right" ), var_18, var_5 );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_left" ), var_17, var_5 );
        var_13 = angleclamp( self._ID65[0] );
        var_14 = 10;
        var_15 = angleclamp180( var_12 - var_13 );
        var_4[var_1 % var_2] = var_15;
        var_16 = _ID42237::_ID44103( var_4 );
        var_19 = clamp( var_16 / var_14, 0, 1 );
        var_20 = abs( clamp( var_16 / var_14, -1, 0 ) );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_up" ), var_20, var_5 );
        var_0 setanimlimited( var_0 _ID42407::_ID16120( "gun_down" ), var_19, var_5 );
        var_1++;

        if ( var_6 && var_0._ID45078 > 0 )
        {
            _ID42237::_ID14402( "player_shot_on_zodiac" );

            if ( var_0._ID45078 == 1 )
                var_0 setflaggedanimknobrestart( "fire_anim", var_0 _ID42407::_ID16120( "uzi_last_fire" ), 1.0, 0.0, 1.0 );
            else
                var_0 setflaggedanimknobrestart( "fire_anim", var_0 _ID42407::_ID16120( "uzi_fire" ), 1.0, 0.0, 1.0 );

            _ID51581( var_0, var_8 );
            wait 0.05;

            if ( !getdvarint( "player_sustainAmmo" ) )
                var_0._ID45078 = var_0._ID45078 - 1;

            var_0._ID49686 = 1.0;
        }
        else if ( var_0._ID45078 <= 0 )
        {
            var_0 setflaggedanimknobrestart( "reload_anim", var_0 _ID42407::_ID16120( "uzi_reload" ), 1.0, 0.0, 1.0 );
            var_0 waittillmatch( "reload_anim",  "end"  );
            var_0._ID45078 = 32;
            var_0._ID49686 = 1.0;
        }
        else
        {
            var_0 setanimknob( var_0 _ID42407::_ID16120( "gun_idle" ), 1.0, 0.0, 1.0 );
            var_0._ID49686 = var_0._ID49686 - 0.05;
        }

        wait 0.05;
    }

    var_0 setflaggedanimknobrestart( "putaway_anim", var_0 _ID42407::_ID16120( "gun_putaway" ), 1.0, 0.08 );
    var_0 waittillmatch( "putaway_anim",  "end"  );
    var_0 notify( "putaway_done" );
    var_0 notify( "drive_shooting_done" );
}

_ID47689( var_0, var_1 )
{
    var_0 setanim( var_0 _ID42407::_ID16120( "shoot_left_arm" ), 0.0, 0.1, 1.0 );
    var_0 attach( level._ID43508, "tag_weapon_left" );
    var_0 hidepart( "TAG_ACOG_2", level._ID43508 );
    var_0 hidepart( "TAG_RAIL", level._ID43508 );
    var_0 hidepart( "TAG_RED_DOT", level._ID43508 );
    var_0 hidepart( "TAG_EOTECH", level._ID43508 );
    var_0 hidepart( "TAG_SILENCER", level._ID43508 );
    var_0 hidepart( "TAG_THERMAL_SCOPE", level._ID43508 );
    var_0._ID46302 = 1;

    if ( isdefined( var_1 ) && var_1 )
        return;

    for (;;)
    {
        var_2 = _ID20608();

        if ( level._ID794 _ID42407::_ID13019( "disable_shooting" ) )
            var_2 = 0;

        if ( var_2 )
        {
            var_0 setanimknob( var_0 _ID42407::_ID16120( "left_arm" ), 1.0, 0.1, 1.0 );
            childthread _ID45584( var_0 );
            var_0 waittill( "drive_shooting_done" );
        }

        var_0 setanimknob( var_0 _ID42407::_ID16120( "idle" ), 1.0, 0.1, 1.0 );
        wait 0.05;
    }
}

_ID20608()
{
    if ( !level._ID8534 && !level._ID794 _meth_835b() )
        return self attackbuttonpressed();

    return self _meth_8108();
}
#using_animtree("vehicles");

_ID44461()
{
    level._ID30900["zodiac_player"] = #animtree;
    level._ID30904["zodiac_player"] = level._ID52555;
    level._ID30895["zodiac_player"]["root"] = %root;
    level._ID30895["zodiac_player"]["left_arm"] = %player_zodiac_left_arm;
    level._ID30895["zodiac_player"]["idle"] = %h2_player_zodiac_idle;
    level._ID30895["zodiac_player"]["shoot_left_arm"] = %player_zodiac_shoot_left_arm;
    level._ID30895["zodiac_player"]["gun_idle"] = %h2_player_zodiac_gun_idle;
    level._ID30895["zodiac_player"]["gun_pullout"] = %h2_player_zodiac_gun_pullout;
    level._ID30895["zodiac_player"]["gun_putaway"] = %h2_player_zodiac_gun_putaway;
    level._ID30895["zodiac_player"]["gun_reload"] = %h2_player_zodiac_gun_reload;
    level._ID30895["zodiac_player"]["right_arm"] = %player_snowmobile_right_arm;
    level._ID30895["zodiac_player"]["uzi_fire"] = %h2_player_zodiac_gun_fire;
    level._ID30895["zodiac_player"]["uzi_last_fire"] = %h2_player_zodiac_gun_last_fire;
    level._ID30895["zodiac_player"]["uzi_reload"] = %h2_player_zodiac_gun_reload;
    level._ID30895["zodiac_player"]["sleeve_pose"] = %player_sleeve_pose;
    level._ID30895["zodiac_player"]["sleeve_flapping"] = %player_sleeve_flapping;
    level._ID30895["zodiac_player"]["gun_left_anim"] = %h2_player_zodiac_gun_left_add;
    level._ID30895["zodiac_player"]["gun_right_anim"] = %h2_player_zodiac_gun_right_add;
    level._ID30895["zodiac_player"]["gun_up_anim"] = %h2_player_zodiac_gun_up_add;
    level._ID30895["zodiac_player"]["gun_down_anim"] = %h2_player_zodiac_gun_down_add;
    level._ID30895["zodiac_player"]["gun_left"] = %player_zodiac_gun_additive_left;
    level._ID30895["zodiac_player"]["gun_right"] = %player_zodiac_gun_additive_right;
    level._ID30895["zodiac_player"]["gun_down"] = %player_zodiac_gun_additive_down;
    level._ID30895["zodiac_player"]["gun_up"] = %player_zodiac_gun_additive_up;
    level._ID30895["zodiac_player"]["start_additive"] = %h2_player_zodiac_start;
    level._ID30895["zodiac_player"]["end_additive"] = %h2_player_zodiac_end;
    level._ID30895["zodiac_player"]["shoot_additive"] = %player_zodiac_shoot_additive;
    level._ID30895["zodiac_player"]["land"] = %player_zodiac_land_cam_shake;
    level._ID30895["zodiac_player"]["land_anim"] = %h2_player_zodiac_jump_out;
    level._ID30895["zodiac_player"]["air_in"] = %player_zodiac_air_in_shake;
    level._ID30895["zodiac_player"]["air_in_anim"] = %h2_player_zodiac_jump_in;
    level._ID30895["zodiac_player"]["explosion"] = %player_zodiac_explosion;
    level._ID30895["zodiac_player"]["explosion_left_anim"] = %h2_zodiac_explosion_l;
    level._ID30895["zodiac_player"]["explosion_right_anim"] = %h2_zodiac_explosion_r;
    level._ID30895["zodiac_player"]["explosion_front_anim"] = %h2_zodiac_explosion_f;
    level._ID30895["zodiac_player"]["explosion_back_anim"] = %h2_zodiac_explosion_b;
    level._ID30895["zodiac_player"]["h2_zodiac_player_death_01"] = %h2_zodiac_player_death_01;
    level._ID30895["zodiac_player"]["h2_zodiac_player_death_02"] = %h2_zodiac_player_death_02;
    level._ID30895["zodiac_player"]["zodiac_bounce"] = %h2_zodiac_bounce;
    level._ID30895["zodiac_player"]["bounce_add_loop"] = %zodiac_bounce_add_loop;
    level._ID30895["zodiac_player"]["bounce_add_loop_anim"] = %h2_zodiac_bounce_add;
}

_ID51514()
{
    if ( !isdefined( level._ID794._ID40065 ) )
        return 1;

    if ( _ID42237::_ID14385( "shepherd_got_away" ) )
        return 1;

    return _ID42237::_ID14385( "player_shot_on_zodiac" );
}

_ID46985()
{
    if ( !isdefined( level._ID794._ID40065 ) )
        return 1;

    if ( _ID42237::_ID14385( "shepherd_got_away" ) )
        return 1;

    return level._ID794._ID40065._ID1276 > 10;
}

_ID54207( var_0 )
{
    self endon( "death" );
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    level endon( "no_more_reverse_hints" );
    var_0 _ID49316();
    var_0._ID45638 = 0;

    for (;;)
    {
        if ( abs( var_0._ID1276 ) < 5 )
        {
            var_0._ID45638++;

            if ( var_0._ID45638 >= 3 )
                var_0 _ID42407::_ID18684( "zodiac_reverse" );
        }
        else
            var_0._ID45638 = 0;

        wait 1;
    }
}

_ID49316()
{
    for (;;)
    {
        if ( self._ID1276 > 40 )
            return;

        wait 1;
    }
}

_ID43328()
{
    if ( !isdefined( self._ID40065 ) )
        return 1;

    if ( _ID42237::_ID14385( "shepherd_got_away" ) )
        return 1;

    return self._ID40065._ID45638 < 3;
}
