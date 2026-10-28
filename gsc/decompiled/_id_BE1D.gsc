// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_CD39( var_0, var_1 )
{
    common_scripts\utility::flag_init( "player_can_die_on_zodiac" );
    common_scripts\utility::flag_init( "player_shot_on_zodiac" );
    common_scripts\utility::flag_set( "player_can_die_on_zodiac" );

    if ( !isdefined( var_0 ) )
        level._id_CD4B = "viewhands_player_udt";
    else
        level._id_CD4B = var_0;

    if ( !isdefined( var_1 ) )
        level._id_D31C = "vehicle_zodiac_viewmodel";
    else
        level._id_D31C = var_1;

    level._id_A9F4 = "h2_viewmodel_miniuzi_base";
    level._id_B22F = "uzi_zodiac";
    precachemodel( level._id_CD4B );
    precachemodel( level._id_D31C );
    precachemodel( level._id_A9F4 );
    precacheitem( level._id_B22F );
    level._id_AF74 = loadfx( "fx/muzzleflashes/uzi_flash_view" );
    level._id_AF66 = loadfx( "vfx/shelleject/pistol_view" );
    level._id_CCA3 = [];
    level._id_CCA3["weap_glock_fire_snowmobile"] = "h1_wpn_uzi_zodiac_plr_LEFT";
    _id_ADAD();
    maps\_utility::add_control_based_hint_strings( "zodiac_attack", &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK", ::_id_C93A, &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK_KEYBOARD", undefined, "small_background" );
    maps\_utility::add_control_based_hint_strings( "zodiac_drive", &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE", ::_id_B789, &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE_KEYBOARD", undefined, "small_background" );
    var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE";

    if ( _func_9A() )
        var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_BUTTON_INVERSED";

    maps\_utility::add_control_based_hint_strings( "zodiac_reverse", var_2, ::_id_A940, &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_KEYBOARD", undefined, "medium_background" );
}

_id_C525( var_0, var_1 )
{
    var_2 = self;
    var_2 makeusable();
    self waittill( "vehicle_mount", var_3 );
    setsaveddvar( "g_friendlyNameDist", 0 );

    if ( !getdvarint( "scr_zodiac_test" ) && maps\_utility::is_default_start() )
    {
        maps\_utility::delaythread( 20, maps\_utility::hintdisplayhandler, "zodiac_attack" );
        maps\_utility::delaythread( 1.5, maps\_utility::hintdisplayhandler, "zodiac_drive" );
    }

    var_3.vehicle = var_2;
    var_2._id_CD62 = var_2.model;
    var_2._id_B016 = 32;
    var_2.animname = "zodiac_player";
    var_2 maps\_utility::assign_animtree();
    var_2 makeunusable();
    var_2 dontcastshadows();
    var_2 _meth_859E( 0 );
    var_3 thread _id_D3BF( var_2 );

    if ( !isdefined( var_1 ) || !isdefined( var_0 ) )
        var_3 thread _id_C7C1( var_2, var_0, var_1 );

    var_3 thread _id_BBEC( var_2 );
    var_3 thread _id_B73B( var_2, var_1 );
    var_3 thread _id_C0F5( var_2 );
    var_3 thread _id_BAB5( var_2 );
    var_2 thread _id_C480();
    var_3 thread wait_for_damage( var_2 );
    var_3 thread _id_C89D( var_2 );
    var_3 thread _id_D466( var_2 );
    var_2 thread _id_D04D();
    var_3 thread _id_D17E( var_2, "pullout_anim" );
    var_3 thread _id_D17E( var_2, "fire_anim" );
    var_3 thread _id_D17E( var_2, "reload_anim" );
    var_3 thread _id_D17E( var_2, "putaway_anim" );
    var_3 _id_B1FA( var_2, var_1 );
    var_3 thread _id_CA40();
    var_2 thread drive_update_bounce_additive();
    var_2 setanim( var_2 maps\_utility::getanim( "zodiac_bounce" ) );
    var_2 common_scripts\utility::waittill_either( "vehicle_dismount", "death" );
    var_3.vehicle = undefined;
}

_id_CA40()
{
    self.vehicle endon( "vehicle_dismount" );
    self.vehicle endon( "death" );
    self waittill( "death" );
    self.vehicle notify( "kill_anims" );
    self._id_B1F4 = "h2_zodiac_player_death_0" + randomintrange( 1, 3 );
    self.vehicle childthread _id_B70C();
    self.vehicle setflaggedanimknob( self._id_B1F4, self.vehicle maps\_utility::getanim( self._id_B1F4 ), 1, 0.1, 1 );
}

_id_B70C()
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

_id_BAAC()
{
    return getaiarray( "bad_guys" );
}

_id_B993()
{
    return getaiarray( "bad_guys" );
}

_id_C0F5( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_1 = 500;

    for (;;)
    {
        var_0 waittill( "veh_jolt", var_2 );

        if ( var_0 getanimweight( var_0 maps\_utility::getanim( "left_arm" ) ) != 0 )
        {
            if ( var_2[0] > var_1 )
            {
                var_0 _id_B69B( "start_additive" );
                continue;
            }

            if ( var_2[0] < -1 * var_1 )
                var_0 _id_B69B( "end_additive" );
        }
    }
}

_id_BAB5( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_1 = 500;
    var_2 = 5000;

    for (;;)
    {
        var_0 waittill( "veh_jolt", var_3 );
        var_4 = var_3[2];

        if ( var_4 >= var_1 && var_0._id_B90A )
        {
            var_5 = clamp( var_4 / var_2, 0, 1 );
            var_0 setflaggedanimlimited( "land", var_0 maps\_utility::getanim( "land_anim" ), 1.0, 0 );
            var_0 setanim( var_0 maps\_utility::getanim( "land" ), var_5, 0.05 );
            var_0 waittillmatch( "land", "end" );
            var_0 clearanim( var_0 maps\_utility::getanim( "land" ), 0.2 );
        }
    }
}

drive_update_bounce_additive()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    self setanimlimited( maps\_utility::getanim( "bounce_add_loop_anim" ), 1.0, 0.0, 1.0 );
    var_0 = 40;

    for (;;)
    {
        var_1 = self vehicle_getspeed();
        var_2 = clamp( var_1, 0, var_0 ) / var_0;
        self setanim( maps\_utility::getanim( "bounce_add_loop" ), var_2, 0.1 );
        waitframe();
    }
}

_id_D04D()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    self._id_B495 = 10;

    for (;;)
    {
        if ( common_scripts\utility::flag( "player_zodiac_on_ground" ) )
        {
            if ( self.veh_topspeed != self._id_B495 )
                self.veh_topspeed = self._id_B495;
        }
        else if ( !common_scripts\utility::flag( "boat_start_rubber_band" ) )
        {
            if ( isdefined( self._id_CA5C ) && self.veh_topspeed != self._id_CA5C )
                self.veh_topspeed = self._id_CA5C;
        }

        waitframe();
    }
}

_id_C480()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    var_0 = 4;
    var_1 = 0;
    self._id_AA92 = self _meth_84DD();

    for (;;)
    {
        self._id_B90A = self._id_AA92;
        self._id_AA92 = self _meth_84DD();

        if ( self._id_AA92 )
        {
            var_1++;

            if ( var_1 == var_0 )
            {
                self setanim( maps\_utility::getanim( "air_in" ), 1.0, 0.05 );
                self setflaggedanimlimited( "air_in", maps\_utility::getanim( "air_in_anim" ), 1.0, 0 );
                thread _id_BB94();
            }
        }
        else
            var_1 = 0;

        wait 0.05;
    }
}

_id_BB94()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    self waittill( "veh_landed" );
    self clearanim( maps\_utility::getanim( "air_in" ), 0.05 );
}

wait_for_damage( var_0 )
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    var_1 = 0.2;

    for (;;)
    {
        self waittill( "damage", var_2, var_3, var_4, var_5, var_6 );

        if ( var_6 == "MOD_PROJECTILE_SPLASH" || var_6 == "MOD_PROJECTILE" )
        {
            var_7 = vectornormalize( var_5 - var_0.origin );
            var_8 = anglestoforward( var_0.angles );
            var_9 = anglestoright( var_0.angles );
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

            var_0 setanimlimited( var_0 maps\_utility::getanim( "explosion" ), 1.0, var_1 );
            var_0 setanimknoblimitedrestart( var_0 maps\_utility::getanim( var_14 ), 1, var_1 );
        }
    }
}

_id_C89D( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_1 = 1500;
    var_2 = 0.2;

    for (;;)
    {
        var_0 waittill( "veh_jolt", var_3 );
        var_4 = abs( var_3[0] );
        var_5 = abs( var_3[1] );

        if ( var_4 > var_5 && var_3[0] < 0 && var_4 > var_1 )
        {
            var_0 setanimlimited( var_0 maps\_utility::getanim( "explosion" ), 1.0, var_2 );
            var_0 setanimknoblimitedrestart( var_0 maps\_utility::getanim( "explosion_back_anim" ), 1, var_2 );
        }
    }
}

_id_D466( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_1 = 1500;
    var_2 = 10000;
    var_3 = 30000;

    for (;;)
    {
        var_0 waittill( "veh_jolt", var_4 );
        var_5 = abs( var_4[0] );
        var_6 = abs( var_4[1] );

        if ( var_5 > var_6 && var_4[0] < 0 && var_5 > var_1 )
        {
            var_7 = anglestoright( var_0.angles );
            var_8 = anglestoforward( var_0.angles );
            var_9 = var_0.origin + ( 0, 0, 40 );
            var_10 = var_9 - var_7 * 12;
            var_11 = var_9 + var_7 * 12;
            var_12 = var_8 * 175;
            var_13 = bullettrace( var_10, var_10 + var_12, 0, var_0, 0, 0, 1, 0, 0, 0, 0 );
            var_14 = bullettrace( var_11, var_11 + var_12, 0, var_0, 0, 0, 1, 0, 0, 0, 0 );

            if ( !( var_13["fraction"] >= 1 && var_14["fraction"] >= 1 ) )
            {
                var_15 = var_8 * 30;
                var_16 = var_0.origin + var_15;
                var_17 = clamp( var_5, var_2, var_3 );
                var_18 = ( var_17 - var_2 ) / ( var_3 - var_2 );
                var_19 = 12 + 35 * var_18;
                var_20 = var_7 * var_19 * common_scripts\utility::ter_op( var_13["fraction"] < var_14["fraction"], 1, -1 );
                var_0 vehphys_launch( var_20, ( 0, 0, 0 ), var_16 );

                if ( var_5 > var_2 )
                    var_0 notify( "veh_wall_hit" );
            }
        }
    }
}

_id_B69B( var_0 )
{
    self setflaggedanim( var_0, maps\_utility::getanim( var_0 ), 1.0, 0 );
    self waittillmatch( var_0, "end" );
    self clearanim( maps\_utility::getanim( "shoot_additive" ), 0.1 );
}

_id_C7C1( var_0, var_1, var_2 )
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
        var_6["player"] = ::_id_BAAC;
        var_7["player"] = spawnstruct();
        var_7["player"].min = -20;
        var_7["player"]._id_59F9 = 20;
        var_7["player"]._id_CDA8 = 0;
        var_8 = "player";
    }
    else
        var_8 = "price";

    if ( !isdefined( var_1 ) )
    {
        var_3["price"] = 1000000;
        var_4["price"] = 14440000;
        var_5["price"] = 18490000;
        var_6["price"] = ::_id_B993;
        var_7["price"]["right"] = spawnstruct();
        var_7["price"]["right"].min = -80;
        var_7["price"]["right"]._id_59F9 = 5;
        var_7["price"]["right"]._id_CDA8 = -25;
        var_7["price"]["right"]._id_C14E = -55;
        var_7["price"]["right"]._id_C727 = 5;
        var_7["price"]["left"] = spawnstruct();
        var_7["price"]["left"].min = -5;
        var_7["price"]["left"]._id_59F9 = 80;
        var_7["price"]["left"]._id_CDA8 = 25;
        var_7["price"]["left"]._id_C14E = -5;
        var_7["price"]["left"]._id_C727 = 55;
    }

    for (;;)
    {
        var_9 = var_3[var_8];
        var_10 = [[ var_6[var_8] ]]();
        var_11 = 180.1;
        var_12 = undefined;
        var_13 = self;

        if ( var_8 == "price" )
            var_13 = level.price;

        var_14 = var_13.origin;
        var_15 = var_7["player"];

        if ( var_8 == "price" )
        {
            if ( !isdefined( var_13.a._id_CE90 ) )
            {
                var_8 = "player";
                wait 0.05;
                continue;
            }

            var_15 = var_7["price"][var_13.a._id_CE90];
        }

        foreach ( var_17 in var_10 )
        {
            var_18 = var_17.origin;

            if ( isdefined( var_17.ridingvehicle ) )
            {
                if ( var_17.ridingvehicle == level._id_BD76 )
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

            var_22 = angleclamp180( var_20[1] - var_13.angles[1] );

            if ( var_22 < var_15.min || var_22 > var_15._id_59F9 )
                continue;

            if ( var_8 == "price" )
            {
                if ( var_19 < 62500 )
                {
                    var_12 = var_17;
                    break;
                }

                if ( isdefined( var_13._id_B08D ) && var_17 == var_13._id_B08D && var_22 >= var_15._id_C14E && var_22 <= var_15._id_C727 )
                {
                    var_12 = var_17;
                    break;
                }
            }

            var_22 = abs( angleclamp180( var_22 - var_15._id_CDA8 ) );

            if ( var_22 < var_11 )
            {
                var_11 = var_22;
                var_12 = var_17;
            }
        }

        var_13._id_B08D = var_12;
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

_id_BBEC( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    level endon( "avalanche_begins" );
    var_0 _id_CE96();
    var_1 = var_0 vehicle_getspeed();
    var_1 *= 17.6;
    var_2 = ( 0, var_1, 64 );

    if ( common_scripts\utility::flag( "player_can_die_on_zodiac" ) )
    {
        if ( isalive( self ) )
            maps\_utility::kill_wrapper();
    }
}

_id_CE96()
{
    level endon( "player_crashes" );
    self waittill( "veh_collision" );
}

_id_C7BA( var_0, var_1 )
{
    var_0 waittill( "vehicle_dismount" );
    maps\_utility::beginsliding( var_1 );

    if ( common_scripts\utility::flag( "player_can_die_on_zodiac" ) )
        maps\_utility::kill_wrapper();

    wait 1.0;
}

_id_B73B( var_0, var_1 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( "third_person" );
        _id_C8AB( var_0 );
        var_0 waittill( "first_person" );
        _id_B1FA( var_0, var_1 );
    }
}

_id_D17E( var_0, var_1 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( var_1, var_2 );
        var_3 = getsubstr( var_2, 0, 3 );

        if ( var_3 == "ps_" )
        {
            var_4 = getsubstr( var_2, 3 );

            if ( isdefined( level._id_CCA3[var_4] ) )
                var_4 = level._id_CCA3[var_4];

            var_0 playsound( var_4 );
            continue;
        }
    }
}

_id_B1FA( var_0, var_1 )
{
    if ( isdefined( var_0._id_B0DD ) )
        return;

    var_0 setmodel( level._id_D31C );
    var_0 attach( level._id_CD4B, "tag_player" );
    var_0 clearanim( var_0 maps\_utility::getanim( "root" ), 0 );
    var_0._id_B0DD = 1;
    thread _id_B14A( var_0, var_1 );
}

_id_CF2B( var_0 )
{
    if ( !isdefined( var_0._id_B0DD ) )
        return;

    if ( isdefined( var_0._id_B4DE ) )
    {
        var_0 detach( level._id_A9F4, "tag_weapon_left" );
        var_0._id_B4DE = undefined;
    }

    var_0 detach( level._id_CD4B, "tag_player" );
    var_0 clearanim( var_0 maps\_utility::getanim( "root" ), 0 );
    var_0._id_B0DD = undefined;
    var_0 notify( "kill_anims" );
}

_id_C8AB( var_0 )
{
    if ( !isdefined( var_0._id_B0DD ) )
        return;

    _id_CF2B( var_0 );
    var_0 setmodel( var_0._id_CD62 );
}

_id_B14A( var_0, var_1 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    var_0 endon( "cleanup" );
    childthread _id_BA49( var_0, var_1 );
}

_id_CABD( var_0 )
{
    var_1 = common_scripts\utility::getstructarray( "dont_assist_destructible_destruction_here", "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( distance( var_3.origin, var_0.origin ) < var_3.radius )
            return;
    }

    self notify( "new_shootable_stuff_assist" );
    self endon( "new_shootable_stuff_assist" );
    var_0 waittill( "damage", var_5, var_6, var_7, var_8, var_9 );

    for ( var_10 = 0; var_10 < 10; var_10++ )
    {
        wait 0.05;
        var_0 notify( "damage", var_5, undefined, var_7, var_8, var_9 );
    }
}

_id_A8AF( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();

    if ( level.player maps\_utility::ent_flag( "zodiac_aim_helicopter" ) )
    {
        var_3.obj = level._id_CB74;
        var_3.origin = level._id_CB74.origin;
        return var_3;
    }

    if ( isalive( self._id_B08D ) )
    {
        var_3.obj = self._id_B08D;
        var_3.origin = self._id_B08D getshootatpos() + common_scripts\utility::randomvectorrange( -10, 10 ) + ( 0, 0, -1 * randomfloat( 40 ) );
        return var_3;
    }

    var_4 = common_scripts\utility::array_combine( getentarray( "destructible_toy", "targetname" ), getentarray( "explodable_barrel", "targetname" ) );

    foreach ( var_6 in var_4 )
    {
        if ( distance( level.player.origin, var_6.origin ) > 2300 )
            continue;

        if ( !maps\_utility::within_fov_2d( level.player.origin, level.player.angles, var_6.origin, 0.965925 ) )
            continue;

        if ( !level.player sightconetrace( var_6 getshootatpos(), var_6 ) )
            continue;

        var_3.obj = var_6;
        var_3.origin = var_6.origin;
        thread _id_CABD( var_6 );
        return var_3;
    }

    var_8 = _id_C13C();

    foreach ( var_6 in var_8 )
    {
        if ( distance( level.player.origin, var_6.origin ) > 1300 )
            continue;

        if ( !maps\_utility::within_fov_2d( level.player.origin, level.player.angles, var_6.origin, cos( 15 ) ) )
            continue;

        if ( !level.player sightconetrace( var_6.origin + ( 0, 0, 16 ), var_6 ) )
            continue;

        var_3.obj = var_6;
        var_3.origin = var_6.origin;
        var_3._id_AC56 = 1;
        return var_3;
    }

    if ( isdefined( var_2 ) )
        return var_3;

    var_11 = anglestoforward( self.angles );
    var_3.origin = var_1 + var_11 * 1500;
    return var_3;
}

_id_C13C()
{
    var_0 = getentarray( "script_vehicle_zodiac_physics", "classname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( var_3 == level._id_B538 )
            continue;

        if ( isdefined( level._id_BD76 ) && var_3 == level._id_BD76 )
            continue;

        if ( isdefined( level._id_B723 ) && var_3 == level._id_B723 )
            continue;

        if ( isspawner( var_3 ) )
            continue;

        if ( var_3.riders.size > 1 )
            continue;

        if ( !var_3.riders.size )
            continue;

        if ( isdefined( var_3.script_noteworthy ) && var_3.script_noteworthy == "bobbing_boat" )
            continue;

        var_3 thread _id_B737();
        var_1[var_1.size] = var_3.riders[0];
    }

    return var_1;
}

_id_B737()
{
    self notify( "wipeout_when_not_in_fov" );
    self endon( "wipeout_when_not_in_fov" );
    self endon( "death" );

    while ( maps\_utility::within_fov_of_players( self.origin, 0.5 ) )
        wait 0.05;

    self.wipeout = 1;
}

_id_BE3B( var_0, var_1, var_2 )
{
    var_3 = bullettrace( var_1, var_2, 0, self );

    if ( !isdefined( var_3["entity"] ) )
        return 0;

    if ( var_3["entity"] != var_0 )
        return 0;

    return 1;
}

_id_C97D( var_0, var_1 )
{
    var_2 = var_0 gettagorigin( "tag_flash" );

    if ( !isdefined( var_1 ) )
        var_1 = _id_A8AF( var_0, var_2 );

    if ( common_scripts\utility::flag( "player_in_sight_of_boarding" ) )
        magicbullet( level._id_B22F, var_2, var_2 + ( 0, 0, 255 ), self );
    else
        magicbullet( level._id_B22F, var_2, var_1.origin, self );

    playfxontag( level._id_AF74, var_0, "tag_flash" );
    playfxontag( level._id_AF66, var_0, "tag_brass" );
    level.player playrumblelooponentity( "smg_fire" );

    if ( !isdefined( var_1.obj ) )
        return;

    if ( !isai( var_1.obj ) )
        var_1.obj notify( "damage", 50, level.player, self.origin, var_1.obj.origin, "MOD_PISTOL_BULLET", "", "" );

    if ( isdefined( var_1._id_AC56 ) )
    {
        _id_BDD8( var_1.obj );
        return;
    }
}

_id_BDD8( var_0 )
{
    var_0 notify( "newanim" );
    _id_BDE2::rider_death_animate_or_ragdoll( var_0.ridingvehicle, var_0 );
    var_0.ridingvehicle.wipeout = 1;
    var_0.ridingvehicle._id_BBBC = 1;
}

_id_BDB4( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 endon( var_2 );
    var_0 setflaggedanimrestart( var_1, var_0 maps\_utility::getanim( var_3 ), 0.001, 0.08, 1.0 );
    var_0 setflaggedanimrestart( var_1, var_0 maps\_utility::getanim( var_4 ), 0.001, 0.08, 1.0 );
    var_0 setflaggedanimrestart( var_1, var_0 maps\_utility::getanim( var_5 ), 0.001, 0.08, 1.0 );

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

        var_0 setflaggedanim( var_1, var_0 maps\_utility::getanim( var_3 ), var_7, 0.08, 1.0 );
        var_0 setflaggedanim( var_1, var_0 maps\_utility::getanim( var_4 ), var_8, 0.08, 1.0 );
        var_0 setflaggedanim( var_1, var_0 maps\_utility::getanim( var_5 ), var_9, 0.08, 1.0 );
        wait 0.05;
    }
}

_id_B210( var_0 )
{
    var_0 setflaggedanimknobrestart( "pullout_anim", var_0 maps\_utility::getanim( "gun_pullout" ), 1.0, 0.08 );
    var_0 waittillmatch( "pullout_anim", "end" );
    var_0 notify( "pullout_done" );
    var_0 setanim( var_0 maps\_utility::getanim( "gun_idle" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_left_anim" ) );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_right_anim" ) );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_up_anim" ) );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_down_anim" ) );
    var_1 = 0;
    var_2 = 6;
    var_3 = [];
    var_4 = [];
    var_5 = 0.2;
    var_0._id_C216 = 1.0;

    for (;;)
    {
        if ( var_0._id_C216 <= 0.0 )
            break;

        var_6 = is_shoot_button_pressed();

        if ( level.player maps\_utility::ent_flag( "disable_shooting" ) )
            var_6 = 0;

        var_7 = var_0 gettagorigin( "tag_flash" );
        var_8 = _id_A8AF( var_0, var_7 );
        var_9 = var_0 gettagangles( "tag_flash" );
        var_10 = vectortoangles( var_8.origin - var_7 );
        var_11 = var_10[1];
        var_12 = var_10[0];
        var_13 = angleclamp( self.angles[1] );
        var_14 = 15;
        var_15 = angleclamp180( var_11 - var_13 );
        var_3[var_1 % var_2] = var_15;
        var_16 = common_scripts\utility::_id_AC47( var_3 );
        var_17 = clamp( var_16 / var_14, 0, 1 );
        var_18 = abs( clamp( var_16 / var_14, -1, 0 ) );
        var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_right" ), var_18, var_5 );
        var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_left" ), var_17, var_5 );
        var_13 = angleclamp( self.angles[0] );
        var_14 = 10;
        var_15 = angleclamp180( var_12 - var_13 );
        var_4[var_1 % var_2] = var_15;
        var_16 = common_scripts\utility::_id_AC47( var_4 );
        var_19 = clamp( var_16 / var_14, 0, 1 );
        var_20 = abs( clamp( var_16 / var_14, -1, 0 ) );
        var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_up" ), var_20, var_5 );
        var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_down" ), var_19, var_5 );
        var_1++;

        if ( var_6 && var_0._id_B016 > 0 )
        {
            common_scripts\utility::flag_set( "player_shot_on_zodiac" );

            if ( var_0._id_B016 == 1 )
                var_0 setflaggedanimknobrestart( "fire_anim", var_0 maps\_utility::getanim( "uzi_last_fire" ), 1.0, 0.0, 1.0 );
            else
                var_0 setflaggedanimknobrestart( "fire_anim", var_0 maps\_utility::getanim( "uzi_fire" ), 1.0, 0.0, 1.0 );

            _id_C97D( var_0, var_8 );
            wait 0.05;

            if ( !getdvarint( "player_sustainAmmo" ) )
                var_0._id_B016 -= 1;

            var_0._id_C216 = 1.0;
        }
        else if ( var_0._id_B016 <= 0 )
        {
            var_0 setflaggedanimknobrestart( "reload_anim", var_0 maps\_utility::getanim( "uzi_reload" ), 1.0, 0.0, 1.0 );
            var_0 waittillmatch( "reload_anim", "end" );
            var_0._id_B016 = 32;
            var_0._id_C216 = 1.0;
        }
        else
        {
            var_0 setanimknob( var_0 maps\_utility::getanim( "gun_idle" ), 1.0, 0.0, 1.0 );
            var_0._id_C216 -= 0.05;
        }

        wait 0.05;
    }

    var_0 setflaggedanimknobrestart( "putaway_anim", var_0 maps\_utility::getanim( "gun_putaway" ), 1.0, 0.08 );
    var_0 waittillmatch( "putaway_anim", "end" );
    var_0 notify( "putaway_done" );
    var_0 notify( "drive_shooting_done" );
}

_id_BA49( var_0, var_1 )
{
    var_0 setanim( var_0 maps\_utility::getanim( "shoot_left_arm" ), 0.0, 0.1, 1.0 );
    var_0 attach( level._id_A9F4, "tag_weapon_left" );
    var_0 hidepart( "TAG_ACOG_2", level._id_A9F4 );
    var_0 hidepart( "TAG_RAIL", level._id_A9F4 );
    var_0 hidepart( "TAG_RED_DOT", level._id_A9F4 );
    var_0 hidepart( "TAG_EOTECH", level._id_A9F4 );
    var_0 hidepart( "TAG_SILENCER", level._id_A9F4 );
    var_0 hidepart( "TAG_THERMAL_SCOPE", level._id_A9F4 );
    var_0._id_B4DE = 1;

    if ( isdefined( var_1 ) && var_1 )
        return;

    for (;;)
    {
        var_2 = is_shoot_button_pressed();

        if ( level.player maps\_utility::ent_flag( "disable_shooting" ) )
            var_2 = 0;

        if ( var_2 )
        {
            var_0 setanimknob( var_0 maps\_utility::getanim( "left_arm" ), 1.0, 0.1, 1.0 );
            childthread _id_B210( var_0 );
            var_0 waittill( "drive_shooting_done" );
        }

        var_0 setanimknob( var_0 maps\_utility::getanim( "idle" ), 1.0, 0.1, 1.0 );
        wait 0.05;
    }
}

is_shoot_button_pressed()
{
    if ( !level.console && !level.player _meth_835B() )
        return self attackbuttonpressed();

    return self _meth_8108();
}

#using_animtree("vehicles");

_id_ADAD()
{
    level.scr_animtree["zodiac_player"] = #animtree;
    level.scr_model["zodiac_player"] = level._id_CD4B;
    level.scr_anim["zodiac_player"]["root"] = %root;
    level.scr_anim["zodiac_player"]["left_arm"] = %player_zodiac_left_arm;
    level.scr_anim["zodiac_player"]["idle"] = %h2_player_zodiac_idle;
    level.scr_anim["zodiac_player"]["shoot_left_arm"] = %player_zodiac_shoot_left_arm;
    level.scr_anim["zodiac_player"]["gun_idle"] = %h2_player_zodiac_gun_idle;
    level.scr_anim["zodiac_player"]["gun_pullout"] = %h2_player_zodiac_gun_pullout;
    level.scr_anim["zodiac_player"]["gun_putaway"] = %h2_player_zodiac_gun_putaway;
    level.scr_anim["zodiac_player"]["gun_reload"] = %h2_player_zodiac_gun_reload;
    level.scr_anim["zodiac_player"]["right_arm"] = %player_snowmobile_right_arm;
    level.scr_anim["zodiac_player"]["uzi_fire"] = %h2_player_zodiac_gun_fire;
    level.scr_anim["zodiac_player"]["uzi_last_fire"] = %h2_player_zodiac_gun_last_fire;
    level.scr_anim["zodiac_player"]["uzi_reload"] = %h2_player_zodiac_gun_reload;
    level.scr_anim["zodiac_player"]["sleeve_pose"] = %player_sleeve_pose;
    level.scr_anim["zodiac_player"]["sleeve_flapping"] = %player_sleeve_flapping;
    level.scr_anim["zodiac_player"]["gun_left_anim"] = %h2_player_zodiac_gun_left_add;
    level.scr_anim["zodiac_player"]["gun_right_anim"] = %h2_player_zodiac_gun_right_add;
    level.scr_anim["zodiac_player"]["gun_up_anim"] = %h2_player_zodiac_gun_up_add;
    level.scr_anim["zodiac_player"]["gun_down_anim"] = %h2_player_zodiac_gun_down_add;
    level.scr_anim["zodiac_player"]["gun_left"] = %player_zodiac_gun_additive_left;
    level.scr_anim["zodiac_player"]["gun_right"] = %player_zodiac_gun_additive_right;
    level.scr_anim["zodiac_player"]["gun_down"] = %player_zodiac_gun_additive_down;
    level.scr_anim["zodiac_player"]["gun_up"] = %player_zodiac_gun_additive_up;
    level.scr_anim["zodiac_player"]["start_additive"] = %h2_player_zodiac_start;
    level.scr_anim["zodiac_player"]["end_additive"] = %h2_player_zodiac_end;
    level.scr_anim["zodiac_player"]["shoot_additive"] = %player_zodiac_shoot_additive;
    level.scr_anim["zodiac_player"]["land"] = %player_zodiac_land_cam_shake;
    level.scr_anim["zodiac_player"]["land_anim"] = %h2_player_zodiac_jump_out;
    level.scr_anim["zodiac_player"]["air_in"] = %player_zodiac_air_in_shake;
    level.scr_anim["zodiac_player"]["air_in_anim"] = %h2_player_zodiac_jump_in;
    level.scr_anim["zodiac_player"]["explosion"] = %player_zodiac_explosion;
    level.scr_anim["zodiac_player"]["explosion_left_anim"] = %h2_zodiac_explosion_l;
    level.scr_anim["zodiac_player"]["explosion_right_anim"] = %h2_zodiac_explosion_r;
    level.scr_anim["zodiac_player"]["explosion_front_anim"] = %h2_zodiac_explosion_f;
    level.scr_anim["zodiac_player"]["explosion_back_anim"] = %h2_zodiac_explosion_b;
    level.scr_anim["zodiac_player"]["h2_zodiac_player_death_01"] = %h2_zodiac_player_death_01;
    level.scr_anim["zodiac_player"]["h2_zodiac_player_death_02"] = %h2_zodiac_player_death_02;
    level.scr_anim["zodiac_player"]["zodiac_bounce"] = %h2_zodiac_bounce;
    level.scr_anim["zodiac_player"]["bounce_add_loop"] = %zodiac_bounce_add_loop;
    level.scr_anim["zodiac_player"]["bounce_add_loop_anim"] = %h2_zodiac_bounce_add;
}

_id_C93A()
{
    if ( !isdefined( level.player.vehicle ) )
        return 1;

    if ( common_scripts\utility::flag( "shepherd_got_away" ) )
        return 1;

    return common_scripts\utility::flag( "player_shot_on_zodiac" );
}

_id_B789()
{
    if ( !isdefined( level.player.vehicle ) )
        return 1;

    if ( common_scripts\utility::flag( "shepherd_got_away" ) )
        return 1;

    return level.player.vehicle.veh_speed > 10;
}

_id_D3BF( var_0 )
{
    self endon( "death" );
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    level endon( "no_more_reverse_hints" );
    var_0 _id_C0A4();
    var_0._id_B246 = 0;

    for (;;)
    {
        if ( abs( var_0.veh_speed ) < 5 )
        {
            var_0._id_B246++;

            if ( var_0._id_B246 >= 3 )
                var_0 maps\_utility::hintdisplayhandler( "zodiac_reverse" );
        }
        else
            var_0._id_B246 = 0;

        wait 1;
    }
}

_id_C0A4()
{
    for (;;)
    {
        if ( self.veh_speed > 40 )
            return;

        wait 1;
    }
}

_id_A940()
{
    if ( !isdefined( self.vehicle ) )
        return 1;

    if ( common_scripts\utility::flag( "shepherd_got_away" ) )
        return 1;

    return self.vehicle._id_B246 < 3;
}
