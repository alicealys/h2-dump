// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C09A( var_0, var_1 )
{
    common_scripts\utility::flag_init( "player_can_die_on_snowmobile" );
    common_scripts\utility::flag_set( "player_can_die_on_snowmobile" );

    if ( !isdefined( var_0 ) )
        level._id_B440 = "viewhands_player_arctic_wind";
    else
        level._id_B440 = var_0;

    if ( !isdefined( var_1 ) )
        level._id_C0FA = "vehicle_snowmobile_player";
    else
        level._id_C0FA = var_1;

    if ( !isdefined( level._id_D004 ) )
        level._id_D004 = "h2_viewmodel_glock";

    level._id_C935 = "snowmobile_glock";
    level._id_B66A = [];
    level._id_B66A["weap_glock_fire_snowmobile"] = "h2_wpn_g18_snow_plr_shot_LEFT";
    level._id_B66A["weap_miniuzi_clipout_plr"] = "h2_wpn_g18_snowmobile_foley_plr_clipout";
    level._id_B66A["weap_miniclip_clipin_plr"] = "h2_wpn_g18_snowmobile_foley_plr_clipin";
    level._id_B66A["weap_m9_chamber_plr"] = "h2_wpn_g18_snowmobile_foley_plr_chamber";
    precachemodel( level._id_B440 );
    precachemodel( level._id_C0FA );
    precachemodel( level._id_D004 );
    precacheitem( level._id_C935 );
    precacherumble( "pistol_fire_auto" );
    precachemodel( "vehicle_snowmobile_player_glass_break" );
    precachemodel( "vehicle_snowmobile_player_glass_break_alt" );
    precacheshader( "h2_snowmobile_speed_blur" );
    precacheshader( "h2_snowmobile_speed_blur_corners" );
    level._id_D2F9 = loadfx( "fx/muzzleflashes/uzi_flash_view" );
    level._id_CC38 = loadfx( "vfx/shelleject/pistol_view" );
    _id_D1EE();
    maps\_utility::add_control_based_hint_strings( "snowmobile_attack_player1", &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK", ::_id_B979, &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK_KEYBOARD", undefined, "small_background" );
    maps\_utility::add_control_based_hint_strings( "snowmobile_attack_player2", &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK", ::_id_AA6C, &"SCRIPT_PLATFORM_SNOWMOBILE_ATTACK_KEYBOARD", undefined, "small_background" );
    maps\_utility::add_control_based_hint_strings( "snowmobile_drive_player1", &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE", ::_id_B0DC, &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE_KEYBOARD", undefined, "small_background" );
    maps\_utility::add_control_based_hint_strings( "snowmobile_drive_player2", &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE", ::_id_B226, &"SCRIPT_PLATFORM_SNOWMOBILE_DRIVE_KEYBOARD", undefined, "small_background" );
    var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE";

    if ( _func_9A() )
        var_2 = &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_BUTTON_INVERSED";

    maps\_utility::add_control_based_hint_strings( "snowmobile_reverse_player1", var_2, ::_id_CB58, &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_KEYBOARD", undefined, "small_background" );
    maps\_utility::add_control_based_hint_strings( "snowmobile_reverse_player2", var_2, ::_id_CE38, &"SCRIPT_PLATFORM_SNOWMOBILE_REVERSE_KEYBOARD", undefined, "small_background" );
}

_id_C525()
{
    var_0 = self;

    if ( level.script == "cliffhanger" && level.start_point != "snowmobile" && level.start_point != "ending" )
    {
        var_1 = var_0 gettagorigin( "tag_driver" ) + ( 0, 0, 30 );
        var_2 = spawn( "script_origin", var_1 );
        var_2 makeusable();
        var_2 setcursorhint( "HINT_ACTIVATE" );
        var_2 thread common_scripts\utility::_id_AE1E( level.player, &"CLIFFHANGER_BOARD", &"CLIFFHANGER_BOARD_PRESS", "trigger" );
        var_2 waittill( "trigger" );
        var_2 makeunusable();
        var_2 delete();
        level.player maps\cliffhanger_code::_id_C25A( var_0 );
        var_0 makeusable();
        var_3 = level.player;
        var_0 useby( var_3 );
    }
    else
    {
        var_0 makeusable();
        self waittill( "vehicle_mount", var_3 );
        level._id_BE57._id_C99F = 1;
    }

    if ( !var_3 maps\_utility::ent_flag_exist( "player_shot_on_snowmobile" ) )
        var_3 maps\_utility::ent_flag_init( "player_shot_on_snowmobile" );

    var_4 = "snowmobile_attack_player1";
    var_5 = "snowmobile_drive_player1";

    if ( var_3 != level.player )
    {
        var_4 = "snowmobile_attack_player2";
        var_5 = "snowmobile_drive_player2";
    }

    var_3 maps\_utility::delaythread( 20, maps\_utility::hintdisplayhandler, var_4 );
    var_3 maps\_utility::delaythread( 3, maps\_utility::hintdisplayhandler, var_5 );
    maps\_utility::delaythread( 3, ::_id_CCDC );
    var_0.player = var_3;
    var_3.vehicle = var_0;
    var_0 thread _id_AAEF( "veh_landed", "damage_heavy", var_3 );
    var_0 thread _id_AAEF( "veh_jolt", "damage_light", var_3 );
    var_0 thread _id_AF0F();
    var_0 thread _id_C480();
    var_0 thread _id_D255();
    var_0._id_C739 = var_0.model;
    var_0._id_BFD3 = 32;
    var_0.animname = "snowmobile_player";
    var_0 maps\_utility::assign_animtree();
    var_0 makeunusable();
    var_0 dontcastshadows();
    var_0 _meth_859E( 0 );
    var_3 thread _id_D3BF( var_0 );
    var_3 thread _id_C7C1( var_0 );
    var_3 thread _id_BBEC( var_0 );
    var_3 thread _id_B73B( var_0 );
    var_3 thread _id_D17E( var_0, "pullout_anim" );
    var_3 thread _id_D17E( var_0, "fire_anim" );
    var_3 thread _id_D17E( var_0, "reload_anim" );
    var_3 thread _id_D17E( var_0, "putaway_anim" );

    if ( maps\_utility::is_coop() )
        var_3 thread _id_AF61( var_0 );

    if ( maps\_utility::is_specialop() )
        var_0 thread _id_C827( var_3 );

    var_3 _id_B1FA( var_0 );
    var_3 thread _id_B073();
    var_0 common_scripts\utility::waittill_either( "vehicle_dismount", "death" );
    var_3 _id_C8AB( var_0 );
    _id_AD15();
    var_3.vehicle = undefined;
}

_id_AD15()
{
    maps\_utility::remove_extra_autosave_check( "snowmobile_speed" );
    maps\_utility::remove_extra_autosave_check( "snowmobile_fov" );
}

_id_B073()
{
    self.vehicle endon( "vehicle_dismount" );
    self.vehicle endon( "death" );
    self waittill( "death" );
    _id_AD15();
    self.vehicle clearanim( self.vehicle maps\_utility::getanim( "root" ), 0 );
    self.vehicle notify( "kill_anims" );

    if ( !isdefined( self._id_C94B ) )
    {
        var_0 = [ "death_front", "death_back", "death_right" ];
        self._id_C94B = var_0[randomint( var_0.size )];
    }

    self.vehicle setflaggedanim( self._id_C94B, self.vehicle maps\_utility::getanim( self._id_C94B ) );
    self.vehicle waittillmatch( self._id_C94B, "detach_snowmobile" );
    thread _id_AFD3();
}

_id_AFD3()
{
    var_0 = self.vehicle vehicle_getvelocity();
    var_1 = length( var_0 );

    if ( var_1 < 200 )
        return;

    var_2 = spawn( "script_origin", self.vehicle gettagorigin( "tag_camera" ) );
    var_2.angles = self _meth_846A();
    var_3 = maps\_utility::spawn_anim_model( "snowmobile_player_detached", var_2.origin - ( 0, 0, 60 ), var_2.angles );
    var_3 linkto( var_2 );

    if ( var_3 maps\_utility::hasanim( self._id_C94B + "_detached" ) )
        var_3 thread maps\_anim::anim_single_solo( var_3, self._id_C94B + "_detached" );

    var_4 = anglestoforward( self.vehicle.angles );
    var_5 = var_4 * var_1 * ( 0.75, 0.75, 1 );
    var_6 = self _meth_846B();
    self lerpfov( var_6, 0.01 );
    maps\_utility::player_dismount_vehicle();
    _id_C8AB( self.vehicle );
    self setplayerangles( var_3.angles * ( 1, 1, 0 ) );
    self playerlinkto( var_3, "tag_player", 1, 0, 0, 0, 0 );
    wait 0.1;
    var_7 = 5;
    var_2 moveslide( ( 0, 0, 0 ), var_7, var_5 );
    var_8 = 1.0;
    var_9 = var_8;

    for (;;)
    {
        wait 0.05;

        if ( var_9 <= 0.0 )
        {
            var_2.slidevelocity = ( 0, 0, 0 );
            continue;
        }

        var_10 = getgroundposition( var_2.origin, var_7 );

        if ( lengthsquared( var_2.origin - var_10 ) <= var_7 * var_7 + 1 )
        {
            var_9 -= 0.05;
            var_11 = var_9 / var_8;
            var_11 = sqrt( max( 0.0, var_11 ) );
            var_2.slidevelocity *= var_11;
        }
    }
}

_id_AF0F()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    self endon( "kill_anims" );
    childthread _id_C4AA();
    childthread _id_BDE5();
}

_id_C4AA()
{
    var_0 = 500;
    var_1 = 1000;

    for (;;)
    {
        self waittill( "veh_jolt", var_2 );
        var_3 = var_2[2];

        if ( var_3 >= var_0 && self._id_B90A )
        {
            var_4 = clamp( var_3 / var_1, 0, 1 );
            self setflaggedanimlimited( "land", maps\_utility::getanim( "land_anim" ), 1.0, 0 );
            self setanim( maps\_utility::getanim( "land" ), var_4, 0.05 );
            self waittillmatch( "land", "end" );
            self clearanim( maps\_utility::getanim( "land" ), 0.2 );
        }
    }
}

_id_BDE5()
{
    for (;;)
    {
        self waittill( "veh_jolt", var_0 );
        var_1 = 0;
        var_1 |= _id_B10C( -1.0 * var_0[0], "front" );
        var_1 |= _id_B10C( -1.0 * var_0[1], "right" );
        var_1 |= _id_B10C( var_0[1], "left" );

        if ( var_1 )
        {
            self waittillmatch( "collision_reaction", "end" );
            self clearanim( maps\_utility::getanim( "collision_reaction_front" ), 0.2 );
            self clearanim( maps\_utility::getanim( "collision_reaction_right" ), 0.2 );
            self clearanim( maps\_utility::getanim( "collision_reaction_left" ), 0.2 );
        }
    }
}

_id_B10C( var_0, var_1 )
{
    var_2 = 5000;
    var_3 = 30000;

    if ( var_0 < var_2 )
        return 0;

    var_4 = maps\_shg_utility::linear_map_clamp( var_0, var_2, var_3, 0.25, 1.0 );
    self setflaggedanimlimited( "collision_reaction", maps\_utility::getanim( "collision_reaction_" + var_1 + "_anim" ), 1.0, 0 );
    self setanim( maps\_utility::getanim( "collision_reaction_" + var_1 ), var_4, 0.05 );
    return 1;
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
    self waittill( "veh_landed" );
    self clearanim( maps\_utility::getanim( "air_in" ), 0.05 );
}

_id_BDF1()
{
    self._id_BA18 = 0;
    self waittill( "veh_landed" );
    self._id_BA18 = 1;
}

_id_D255()
{
    self endon( "vehicle_dismount" );
    self endon( "death" );
    childthread _id_B63A();
    childthread tweak_suspension_strength_for_jump();
    common_scripts\utility::flag_wait( "snowmobile_jump" );
    self setanimlimited( maps\_utility::getanim( "big_jump" ), 1.0, 0.05 );
    self setflaggedanim( "jump_in", maps\_utility::getanim( "big_jump_in" ), 1, 0.2, 1.2 );
    childthread _id_B55B();
    childthread _id_BDF1();
    self waittillmatch( "jump_in", "end" );
    self setanim( maps\_utility::getanim( "big_jump_idle" ) );

    while ( self._id_BA18 == 0 )
        waitframe();

    _id_B2A3( "vehicle_snowmobile_player_glass_break" );
    self clearanim( maps\_utility::getanim( "head_down" ), 0.2 );
    self setflaggedanim( "jump_out", maps\_utility::getanim( "big_jump_out" ) );
    self waittillmatch( "jump_out", "end" );
    self clearanim( maps\_utility::getanim( "big_jump" ), 0.05 );
}

_id_B55B()
{
    self endon( "veh_landed" );
    self setanim( maps\_utility::getanim( "head_down_anim" ) );
    var_0 = maps\_utility::getanim( "head_down" );
    var_1 = 0;

    for (;;)
    {
        self setanimlimited( var_0, var_1 );
        var_1 += 0.05;
        var_1 = min( 1, var_1 );
        waitframe();
    }
}

_id_B63A()
{
    common_scripts\utility::flag_wait( "snowmobile_downhill_over" );

    for (;;)
    {
        if ( level.player.vehicle vehicle_getspeed() < 30 )
        {
            if ( level.player.origin[1] > 26300 && level.player.origin[1] < 27000 )
            {
                level.player.vehicle _meth_85A5( 1 );
                wait 0.3;
                level.player.vehicle _meth_85A5( 0 );
                break;
            }
        }

        waitframe();
    }
}

tweak_suspension_strength_for_jump()
{
    common_scripts\utility::flag_wait( "snowmobile_downhill_over" );

    for (;;)
    {
        if ( level.player.origin[1] > 26500 )
        {
            level.player.vehicle _meth_85BF( 5000, 10000 );
            wait 0.5;
            level.player.vehicle _meth_85BF( 100, 200 );
            break;
        }

        waitframe();
    }
}

_id_AAEF( var_0, var_1, var_2 )
{
    self endon( "vehicle_dismount" );
    self endon( "death" );

    for (;;)
    {
        self waittill( var_0 );
        var_2 playrumblelooponentity( var_1 );
        self._id_B11F = gettime() + 1000 * randomfloatrange( 0.4, 0.7 );
        self._id_C8DF = randomfloatrange( 0.45, 0.75 );
        self._id_B1E0 = randomfloatrange( 0.35, 0.55 );
    }
}

_id_C827( var_0 )
{
    wait 0.05;

    if ( !isdefined( self ) )
        return;

    if ( !isalive( var_0 ) )
        return;

    common_scripts\utility::array_call( self.riders, ::laserforceoff, var_0 );

    foreach ( var_2 in self.riders )
    {
        var_2 laserforceoff( var_0 );
        var_2 maps\_utility::place_weapon_on( "usp", "left" );
        var_2.primaryweapon = "usp";
    }

    if ( maps\_utility::is_coop() )
    {
        common_scripts\utility::array_thread( self.riders, maps\_utility::set_ignoreall, 1 );
        common_scripts\utility::array_thread( self.riders, maps\_utility::magic_bullet_shield );
    }
    else
        common_scripts\utility::array_call( self.riders, ::delete );
}

_id_CCDC()
{
    maps\_utility::add_extra_autosave_check( "snowmobile_speed", ::_id_B31A, "^3Player was riding too slow" );

    if ( isdefined( level._id_B12B ) )
        maps\_utility::add_extra_autosave_check( "snowmobile_fov", ::_id_CE5D, "Player was pointed the wrong way" );
}

_id_D3BF( var_0 )
{
    self endon( "death" );
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 _id_C0A4();
    var_0._id_B246 = 0;
    var_1 = 0;

    for (;;)
    {
        if ( abs( var_0.veh_speed ) < 5 )
        {
            var_0._id_B246++;

            if ( var_0._id_B246 >= 3 )
            {
                var_2 = "snowmobile_reverse_player1";

                if ( var_0.player != level.player )
                    var_2 = "snowmobile_reverse_player2";

                var_0.player._id_C0F8 = 1;

                if ( !var_1 )
                {
                    var_0.player maps\_utility::hintdisplayhandler( var_2 );
                    var_1 = 1;
                }
            }
        }
        else
        {
            var_1 = 0;
            var_0._id_B246 = 0;
        }

        wait 1;
    }
}

_id_CB58()
{
    return level.player _id_CC15();
}

_id_CE38()
{
    return level.player2 _id_CC15();
}

_id_CC15()
{
    if ( !isdefined( self.vehicle ) )
        var_0 = 1;
    else if ( !isdefined( self.vehicle._id_B246 ) )
        var_0 = 1;
    else if ( maps\_utility::ent_flag_exist( "finish_line" ) && maps\_utility::ent_flag( "finish_line" ) )
        var_0 = 1;
    else
        var_0 = self.vehicle._id_B246 < 3;

    if ( var_0 )
        self._id_C0F8 = undefined;

    return var_0;
}

_id_C0A4()
{
    for (;;)
    {
        if ( self.veh_speed > 10 )
            return;

        wait 1;
    }
}

_id_AF61( var_0 )
{
    var_1 = level.player2;

    if ( self != level.player )
        var_1 = level.player;

    self laserforceoff( var_1 );
}

_id_CE5D()
{
    var_0 = level.player.vehicle.angles;
    var_0 = ( 0, var_0[1], 0 );
    var_1 = anglestoforward( var_0 );
    var_2 = level.player._id_AAAC;
    var_3 = vectortoangles( var_2.next_node.origin - var_2.origin );
    var_3 = ( 0, var_3[1], 0 );
    var_4 = anglestoforward( var_3 );
    var_5 = vectordot( var_1, var_4 );
    return var_5 > 0.7;
}

_id_B31A()
{
    return level.player.vehicle vehicle_getspeed() > 60;
}

_id_C7C1( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_1 = getaiarray( "bad_guys" );
        var_2 = 0.94;
        var_3 = undefined;
        var_4 = maps\_utility::set_z( self.origin, 0 );

        foreach ( var_6 in var_1 )
        {
            var_7 = maps\_utility::set_z( var_6.origin, 0 );

            if ( distance( var_7, var_4 ) > 750 )
                continue;

            var_8 = maps\_utility::get_dot( var_4, self.angles, var_7 );

            if ( var_8 > var_2 )
            {
                var_2 = var_8;
                var_3 = var_6;
            }
        }

        self._id_BEFC = var_3;
        wait 0.2;
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

    if ( isdefined( level._id_CAF4 ) )
        self thread [[ level._id_CAF4 ]]( var_0 );

    if ( common_scripts\utility::flag( "player_can_die_on_snowmobile" ) )
    {
        var_0 _id_B2A3( "vehicle_snowmobile_player_glass_break_alt" );
        self._id_C94B = "death_smash_front";

        if ( isalive( self ) )
            maps\_utility::kill_wrapper();
    }
}

_id_CE96()
{
    if ( !maps\_utility::is_specialop() )
        level endon( "player_crashes" );
    else
        thread _id_C1FB();

    common_scripts\utility::waittill_any( "veh_collision", "veh_falling" );
}

_id_C1FB()
{
    var_0 = getent( "player_crashes_trigger", "script_noteworthy" );

    for (;;)
    {
        var_0 waittill( "trigger", var_1 );

        if ( !isdefined( var_1 ) || !isplayer( var_1 ) )
            continue;

        if ( var_1._id_C351 == self )
        {
            self notify( "veh_falling" );
            return;
        }
    }
}

_id_C7BA( var_0, var_1 )
{
    var_0 waittill( "vehicle_dismount" );
    maps\_utility::beginsliding( var_1 );

    if ( common_scripts\utility::flag( "player_can_die_on_snowmobile" ) )
    {
        if ( isalive( self ) )
            maps\_utility::kill_wrapper();
    }

    wait 1.0;
}

_id_B73B( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( "third_person" );
        _id_C8AB( var_0 );
        var_0 waittill( "first_person" );
        _id_B1FA( var_0 );
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

            if ( isdefined( level._id_B66A[var_4] ) )
                var_4 = level._id_B66A[var_4];

            var_0 playsound( var_4 );
            continue;
        }
    }
}

_id_B1FA( var_0 )
{
    if ( isdefined( var_0._id_B0DD ) )
        return;

    var_0 setmodel( level._id_C0FA );
    var_0 attach( level._id_B440, "tag_player" );
    var_0 clearanim( var_0 maps\_utility::getanim( "root" ), 0 );
    var_0._id_B0DD = 1;
    thread _id_B14A( var_0 );
}

_id_C8AB( var_0 )
{
    if ( !isdefined( var_0._id_B0DD ) )
        return;

    if ( isdefined( var_0._id_B4DE ) )
    {
        var_0 detach( level._id_D004, "tag_weapon_left" );
        var_0._id_B4DE = undefined;
    }

    var_0 detach( level._id_B440, "tag_player" );
    var_0 setmodel( var_0._id_C739 );
    var_0 clearanim( var_0 maps\_utility::getanim( "root" ), 0 );
    var_0._id_B0DD = undefined;
    var_0 notify( "kill_anims" );
}

_id_B14A( var_0 )
{
    var_0 endon( "vehicle_dismount" );
    var_0 endon( "death" );
    var_0 endon( "kill_anims" );
    childthread _id_C3C4( var_0 );
    childthread _id_BA49( var_0 );
    childthread _id_D2FD( var_0 );
    childthread _id_BEB5( var_0 );
    childthread _id_AF2E( var_0 );
    childthread _id_C8EE( var_0 );
    childthread _id_AB4F( var_0 );
    thread _id_C731( var_0 );
}

_id_C3C4( var_0 )
{
    var_1 = 1;
    var_2 = 0;
    var_3 = "turn_right2left_";
    var_4 = "turn_left2right_";
    var_5 = var_4;
    var_6 = "left_cam";
    var_7 = "right_cam";
    var_8[var_4]["L"] = getanimlength( var_0 maps\_utility::getanim( var_4 + "L" ) );
    var_8[var_4]["R"] = getanimlength( var_0 maps\_utility::getanim( var_4 + "R" ) );
    var_8[var_3]["L"] = getanimlength( var_0 maps\_utility::getanim( var_3 + "L" ) );
    var_8[var_3]["R"] = getanimlength( var_0 maps\_utility::getanim( var_3 + "R" ) );
    var_0 setanim( var_0 maps\_utility::getanim( "left_arm" ), 1.0, 0.0, 1.0 );
    var_0 setanim( var_0 maps\_utility::getanim( "right_arm" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 maps\_utility::getanim( var_5 + "L" ), 1.0, 0.5, 0.0 );
    var_0 setanimlimited( var_0 maps\_utility::getanim( var_5 + "R" ), 1.0, 0.5, 0.0 );
    var_0 setanimtime( var_0 maps\_utility::getanim( var_5 + "L" ), 0.5 );
    var_0 setanimtime( var_0 maps\_utility::getanim( var_5 + "R" ), 0.5 );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_left_anim" ) );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_right_anim" ) );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_down_anim" ) );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "tilt_left_anim" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "tilt_right_anim" ), 1.0, 0.0, 1.0 );

    for (;;)
    {
        var_9 = var_2;
        var_2 = var_0 vehicle_getsteering() * -1.0;

        if ( isdefined( var_0._id_CDDC ) )
            var_2 = var_0._id_CDDC;

        var_10 = var_2 - var_9;
        var_11 = var_2;
        var_12 = var_0 _meth_8597();
        var_11 = clamp( var_11 / var_12, -1.0, 1.0 );
        var_13 = 0;
        var_14["L"] = var_0 getanimtime( var_0 maps\_utility::getanim( var_5 + "L" ) );
        var_14["R"] = var_0 getanimtime( var_0 maps\_utility::getanim( var_5 + "R" ) );
        var_15 = abs( ( var_11 - -1.0 ) / -2.0 );

        if ( var_5 == "turn_right2left_" )
            var_15 = 1.0 - var_15;

        var_15 = clamp( var_15, 0.0, 1.0 );

        if ( var_15 < var_14["L"] )
        {
            var_13 = 1;
            var_3 = var_5;
            var_4 = common_scripts\utility::ter_op( var_3 == "turn_left2right_", "turn_right2left_", "turn_left2right_" );
            var_14["L"] = abs( 1.0 - var_14["L"] );
            var_14["R"] = abs( 1.0 - var_14["R"] );
            var_15 = 1.0 - var_15;
        }

        var_16 = maps\_shg_utility::linear_map_clamp( abs( var_11 ), 0.0, 0.6, 0.0, 1.0 );
        var_16 *= var_16;
        var_17 = var_0 vehicle_getspeed();
        var_18 = maps\_shg_utility::linear_map_clamp( var_17, 0.0, 80.0, 0.0, 1.0 );
        var_16 *= var_18;
        var_19 = "tilt_left";
        var_20 = "tilt_right";

        if ( var_11 < 0.0 )
        {
            var_19 = "tilt_right";
            var_20 = "tilt_left";
        }

        var_0 setanimlimited( var_0 maps\_utility::getanim( var_19 ), var_16, 1.0, 1.0 );
        var_0 setanimlimited( var_0 maps\_utility::getanim( var_20 ), 0.0, 0.5, 1.0 );
        var_15 = abs( ( var_11 - -1.0 ) / -2.0 );

        if ( var_4 == "turn_right2left_" )
            var_15 = 1.0 - var_15;

        var_15 = clamp( var_15, 0.0, 1.0 );
        var_21["L"] = abs( var_15 - var_14["L"] );
        var_21["R"] = abs( var_15 - var_14["R"] );
        var_22["L"] = abs( var_8[var_4]["L"] / 0.05 * var_21["L"] ) * 0.5;
        var_22["R"] = abs( var_8[var_4]["R"] / 0.05 * var_21["R"] ) * 0.5;
        var_23 = 0;
        var_24 = 0;

        if ( isdefined( var_0._id_BFD2 ) )
        {
            if ( var_4 == "turn_right2left_" )
            {
                var_25 = var_15 * 2 - 1;
                var_23 = abs( clamp( var_25, -1, 0 ) );
                var_24 = clamp( var_25, 0, 1 );
            }
            else
            {
                var_25 = var_15 * 2 - 1;
                var_24 = abs( clamp( var_25, -1, 0 ) );
                var_23 = clamp( var_25, 0, 1 );
            }
        }

        var_26 = 3;
        var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_left" ), var_24, 0.05 * var_26 );
        var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_right" ), var_23, 0.05 * var_26 );
        var_0 setanimlimited( var_0 maps\_utility::getanim( "gun_down" ), var_24, 0.05 * var_26 );

        if ( var_13 )
        {
            var_0 clearanim( var_0 maps\_utility::getanim( var_3 + "L" ), 0 );
            var_0 clearanim( var_0 maps\_utility::getanim( var_3 + "R" ), 0 );
            var_0 setanimlimited( var_0 maps\_utility::getanim( var_4 + "L" ), 1, 0.5, var_22["L"] );
            var_0 setanimlimited( var_0 maps\_utility::getanim( var_4 + "R" ), 1, 0.5, var_22["R"] );
            var_0 setanimtime( var_0 maps\_utility::getanim( var_4 + "L" ), var_14["L"] );
            var_0 setanimtime( var_0 maps\_utility::getanim( var_4 + "R" ), var_14["R"] );
        }
        else
        {
            var_0 setanimlimited( var_0 maps\_utility::getanim( var_4 + "L" ), 1, 0.5, var_22["L"] );
            var_0 setanimlimited( var_0 maps\_utility::getanim( var_4 + "R" ), 1, 0.5, var_22["R"] );
        }

        var_27 = common_scripts\utility::ter_op( var_11 < 0, 1, 0 );
        var_28 = common_scripts\utility::ter_op( var_11 > 0, 1, 0 );
        var_29 = common_scripts\utility::ter_op( var_11 < 0, abs( var_11 ), 0 );
        var_30 = common_scripts\utility::ter_op( var_11 > 0, var_11, 0 );
        var_31 = var_0 getanimtime( var_0 maps\_utility::getanim( var_6 ) );
        var_32 = var_0 getanimtime( var_0 maps\_utility::getanim( var_7 ) );
        var_33 = getanimlength( var_0 maps\_utility::getanim( var_6 ) ) / 0.05 * ( var_29 - var_31 ) * 0.25;
        var_34 = getanimlength( var_0 maps\_utility::getanim( var_7 ) ) / 0.05 * ( var_30 - var_32 ) * 0.25;
        var_0 setanimlimited( var_0 maps\_utility::getanim( var_6 ), 1, 0.5, var_33 );
        var_0 setanimlimited( var_0 maps\_utility::getanim( var_7 ), 1, 0.5, var_34 );
        var_0 setanim( var_0 maps\_utility::getanim( "camera_left" ), var_27, 0.5 );
        var_0 setanim( var_0 maps\_utility::getanim( "camera_right" ), var_28, 0.5 );
        var_5 = var_4;
        wait 0.05;
    }
}

_id_C97D( var_0, var_1 )
{
    var_2 = var_0 gettagorigin( "tag_flash" );
    self playrumblelooponentity( "pistol_fire_auto" );
    magicbullet( level._id_C935, var_2, var_1, self );
    playfxontag( level._id_D2F9, var_0, "tag_flash" );
    playfxontag( level._id_CC38, var_0, "tag_brass" );
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
        var_6 = clamp( var_6, -1.0, 1.0 );

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

is_shoot_button_pressed()
{
    if ( !level.console && !level.player _meth_835B() )
        return self attackbuttonpressed();

    return self _meth_8108();
}

_id_B210( var_0 )
{
    var_0 setanimknoblimited( var_0 maps\_utility::getanim( "gun_pullout_root" ), 1.0, 0.0, 1.0 );
    childthread _id_BDB4( var_0, "pullout_anim", "pullout_done", "gun_pullout_L", "gun_pullout", "gun_pullout_R" );
    var_0._id_BFD2 = 1;
    var_0 waittillmatch( "pullout_anim", "attach_gun" );
    var_0 attach( level._id_D004, "tag_weapon_left" );
    var_1 = [];
    var_1["TAG_EOTECH"] = 1;
    var_1["TAG_RAIL"] = 1;
    var_1["TAG_RED_DOT"] = 1;
    var_1["TAG_SILENCER"] = 1;

    foreach ( var_4, var_3 in var_1 )
        var_0 hidepart( var_4 );

    var_0._id_B4DE = 1;
    var_0 waittillmatch( "pullout_anim", "end" );
    var_0 notify( "pullout_done" );
    var_0 setanim( var_0 maps\_utility::getanim( "glock" ), 1.0, 0.0, 1.0 );
    var_0 setanimknoblimited( var_0 maps\_utility::getanim( "gun_idle" ), 1.0, 0.0, 1.0 );
    var_0._id_B953 = 1.0;
    var_0 setanimlimited( var_0 maps\_utility::getanim( "aim_left_anim" ) );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "aim_right_anim" ) );
    var_5 = 0;
    var_6 = 6;
    var_7 = [];
    var_8 = 0.2;

    for (;;)
    {
        if ( var_0._id_B953 <= 0.0 )
            break;

        var_9 = is_shoot_button_pressed();
        var_10 = undefined;
        var_11 = var_0 gettagorigin( "tag_flash" );

        if ( isalive( self._id_BEFC ) )
            var_10 = self._id_BEFC geteye();
        else
        {
            var_12 = anglestoforward( self.angles );
            var_10 = var_11 + var_12 * 1500;
        }

        var_13 = vectortoyaw( var_10 - var_11 );
        var_14 = angleclamp( self.angles[1] );
        var_15 = 20;
        var_16 = angleclamp180( var_13 - var_14 );
        var_7[var_5 % var_6] = var_16;
        var_17 = common_scripts\utility::_id_AC47( var_7 );
        var_18 = clamp( var_17 / var_15, 0, 1 );
        var_19 = abs( clamp( var_17 / var_15, -1, 0 ) );
        var_0 setanimlimited( var_0 maps\_utility::getanim( "aim_right" ), var_19, var_8 );
        var_0 setanimlimited( var_0 maps\_utility::getanim( "aim_left" ), var_18, var_8 );
        var_5++;

        if ( var_9 && var_0._id_BFD3 > 0 )
        {
            maps\_utility::ent_flag_set( "player_shot_on_snowmobile" );
            var_0 setflaggedanimknoblimitedrestart( "fire_anim", var_0 maps\_utility::getanim( "gun_fire" ), 1.0, 0.0, 1.0 );

            if ( var_0._id_BFD3 == 1 )
                var_0 setanimknoblimitedrestart( var_0 maps\_utility::getanim( "glock_last_fire" ), 1.0, 0.0, 1.0 );
            else
                var_0 setanimknoblimitedrestart( var_0 maps\_utility::getanim( "glock_fire" ), 1.0, 0.0, 1.0 );

            _id_C97D( var_0, var_10 );
            wait 0.05;

            if ( !getdvarint( "player_sustainAmmo" ) )
                var_0._id_BFD3 -= 1;

            var_0._id_B953 = 1.0;
        }
        else if ( var_0._id_BFD3 <= 0 )
        {
            var_0 setflaggedanimknoblimitedrestart( "reload_anim", var_0 maps\_utility::getanim( "gun_reload" ), 1.0, 0.0, 1.0 );
            var_0 setanimknoblimitedrestart( var_0 maps\_utility::getanim( "glock_reload" ), 1.0, 0.0, 1.0 );
            var_0 waittillmatch( "reload_anim", "end" );
            var_0._id_BFD3 = 32;
            var_0._id_B953 = 1.0;
        }
        else
        {
            var_0 setanimknoblimited( var_0 maps\_utility::getanim( "gun_idle" ), 1.0, 0.0, 1.0 );
            var_0._id_B953 -= 0.05;
        }

        wait 0.05;
    }

    var_0 setanimknoblimited( var_0 maps\_utility::getanim( "gun_putaway_root" ), 1.0, 0.0, 1.0 );
    childthread _id_BDB4( var_0, "putaway_anim", "putaway_done", "gun_putaway_L", "gun_putaway", "gun_putaway_R" );
    var_0 waittillmatch( "putaway_anim", "detach_gun" );
    var_0 detach( level._id_D004, "tag_weapon_left" );
    var_0._id_B4DE = undefined;
    var_0 waittillmatch( "putaway_anim", "stop_steering_additives" );
    var_0._id_BFD2 = undefined;
    var_0 waittillmatch( "putaway_anim", "end" );
    var_0 notify( "putaway_done" );
    var_0 notify( "drive_shooting_done" );
}

_id_BA49( var_0 )
{
    self endon( "death" );
    var_0 setanim( var_0 maps\_utility::getanim( "drive_left_arm" ), 1.0, 0.1, 1.0 );
    var_0 setanim( var_0 maps\_utility::getanim( "shoot_left_arm" ), 0.0, 0.1, 1.0 );

    for (;;)
    {
        var_1 = is_shoot_button_pressed();

        if ( var_1 )
        {
            var_0 setanim( var_0 maps\_utility::getanim( "drive_left_arm" ), 0.001, 0.1, 1.0 );
            var_0 setanim( var_0 maps\_utility::getanim( "shoot_left_arm" ), 1.0, 0.1, 1.0 );
            childthread _id_B210( var_0 );
            var_0 waittill( "drive_shooting_done" );
        }

        var_0 setanim( var_0 maps\_utility::getanim( "drive_left_arm" ), 1.0, 0.1, 1.0 );
        var_0 setanim( var_0 maps\_utility::getanim( "shoot_left_arm" ), 0.0, 0.1, 1.0 );
        wait 0.05;
    }
}

_id_D2FD( var_0 )
{
    for (;;)
    {
        var_1 = var_0 vehicle_getspeed();
        var_2 = var_1 / 65.0;

        if ( var_2 > 1.0 )
            var_2 = 1.0;

        var_3 = 0.75 * var_2 + 0.75;
        var_4 = 0.9 * var_2 + 0.1;
        var_0 setanim( var_0 maps\_utility::getanim( "sleeve_pose" ), 1.0 - var_4, 0.5, var_3 );
        var_0 setanim( var_0 maps\_utility::getanim( "sleeve_flapping" ), var_4, 0.5, var_3 );
        wait 0.05;
    }
}

_id_BEB5( var_0 )
{
    for (;;)
    {
        var_1 = var_0 vehicle_getspeed();
        var_2 = var_1 / 180.0;

        if ( var_2 > 1.0 )
            var_2 = 1.0;

        if ( var_2 < 0.5 )
        {
            var_3 = var_2 / 0.5;
            var_0 setanim( var_0 maps\_utility::getanim( "speedometer_0" ), 1.0 - var_3, 0.1, 1.0 );
            var_0 setanim( var_0 maps\_utility::getanim( "speedometer_90" ), var_3, 0.1, 1.0 );
            var_0 setanim( var_0 maps\_utility::getanim( "speedometer_180" ), 0.0, 0.1, 1.0 );
        }
        else
        {
            var_3 = ( var_2 - 0.5 ) / 0.5;
            var_0 setanim( var_0 maps\_utility::getanim( "speedometer_0" ), 0.0, 0.1, 1.0 );
            var_0 setanim( var_0 maps\_utility::getanim( "speedometer_90" ), 1.0 - var_3, 0.1, 1.0 );
            var_0 setanim( var_0 maps\_utility::getanim( "speedometer_180" ), var_3, 0.1, 1.0 );
        }

        wait 0.05;
    }
}

_id_AF2E( var_0 )
{
    var_1 = 0;

    for (;;)
    {
        var_2 = var_1;
        var_1 = var_0 vehicle_getthrottle();

        if ( var_1 > var_2 || var_1 == 1.0 )
        {
            var_3 = 0.2;
            var_4 = var_1 - 0.3 + randomfloat( 0.6 );
        }
        else
        {
            var_3 = 1.3;
            var_4 = var_1 - 0.8 + randomfloat( 1.6 );
        }

        if ( var_4 < 0.0 )
            var_4 = 0.0;
        else if ( var_4 > 1.0 )
            var_4 = 1.0;

        var_0 setanim( var_0 maps\_utility::getanim( "rpm_min" ), 1.0 - var_4, var_3, 1.0 );
        var_0 setanim( var_0 maps\_utility::getanim( "rpm_max" ), var_4, var_3, 1.0 );
        wait 0.05;
    }
}

_id_C8EE( var_0 )
{
    var_0 setanimlimited( var_0 maps\_utility::getanim( "throttle" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "throttle_left" ), 1.0, 0.0, 1.0 );
    var_0 setanimlimited( var_0 maps\_utility::getanim( "throttle_right" ), 1.0, 0.0, 1.0 );

    for (;;)
    {
        var_1 = var_0 vehicle_getthrottle();
        var_2 = var_0 vehicle_getsteering() * -1.0;
        var_2 = clamp( var_2, -1.0, 1.0 );

        if ( var_2 >= 0.0 )
        {
            var_3 = var_1 * ( 1.0 - var_2 );
            var_4 = 0.0;
            var_5 = var_1 * var_2;
        }
        else
        {
            var_3 = var_1 * ( 1.0 + var_2 );
            var_4 = var_1 * var_2 * -1.0;
            var_5 = 0.0;
        }

        var_0 setanim( var_0 maps\_utility::getanim( "throttle_add" ), var_3, 0.08, 1.0 );
        var_0 setanim( var_0 maps\_utility::getanim( "throttle_add_left" ), var_4, 0.08, 1.0 );
        var_0 setanim( var_0 maps\_utility::getanim( "throttle_add_right" ), var_5, 0.08, 1.0 );
        wait 0.05;
    }
}

_id_AB4F( var_0 )
{
    var_0._id_B11F = 0.0;
    var_0._id_C8DF = 0.0;
    var_0._id_B1E0 = 0.0;
    var_0 setanimlimited( var_0 maps\_utility::getanim( "hand_shake_loop_anim" ), 1.0, 0.0, 1.0 );

    for (;;)
    {
        var_1 = 0.0;
        var_2 = 0.0;

        if ( !var_0._id_AA92 )
        {
            var_3 = var_0 vehicle_getspeed();

            if ( var_3 > 85.0 )
            {
                var_1 = maps\_shg_utility::linear_map_clamp( var_3, 85.0, 180.0, 0.25, 0.55 );
                var_2 = maps\_shg_utility::linear_map_clamp( var_3, 85.0, 180.0, 0.2, 0.5 );
            }

            if ( var_3 > 20.0 && gettime() < var_0._id_B11F )
            {
                var_1 += var_0._id_C8DF;
                var_2 += var_0._id_B1E0;
            }

            var_1 = min( var_1, 0.75 );
            var_2 = min( var_2, 0.7 );
        }

        var_0 setanim( var_0 maps\_utility::getanim( "hand_shake_loop" ), var_1, 0.2, var_2 );
        wait 0.05;
    }
}

_id_C731( var_0 )
{
    if ( isplayer( self ) && !isdefined( self._id_ABCB ) )
    {
        self._id_C038 = maps\_hud_util::_id_C6FB( "h2_snowmobile_speed_blur_corners", 1.0, 180, 240, self );
        self._id_ABCB = maps\_hud_util::create_client_overlay( "h2_snowmobile_speed_blur", 0.0, self );
    }

    var_1 = 60;
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;

    for (;;)
    {
        if ( isdefined( var_0._id_AA23 ) && var_0._id_AA23 || !isalive( self ) || common_scripts\utility::flag( "fade_to_death" ) )
        {
            if ( var_3 == 0 )
            {
                var_3 = gettime();
                var_4 = var_2;
            }

            var_5 = ( gettime() - var_3 ) / 500;
            var_5 = min( var_5, 1.0 );
            var_5 = 1.0 - var_5 * var_5;
            var_2 = var_4 * var_5;
        }
        else
        {
            var_2 = clamp( ( var_0 vehicle_getspeed() - 110 ) / var_1, 0, 1 );
            var_3 = 0;
        }

        self._id_ABCB.alpha = var_2;

        foreach ( var_7 in self._id_C038.children )
            var_7.alpha = var_2;

        wait 0.05;
    }
}

#using_animtree("vehicles");

_id_D1EE()
{
    level.scr_animtree["snowmobile_player"] = #animtree;
    level.scr_model["snowmobile_player"] = level._id_B440;
    level.scr_anim["snowmobile_player"]["root"] = %root;
    level.scr_anim["snowmobile_player"]["left_arm"] = %player_snowmobile_left_arm;
    level.scr_anim["snowmobile_player"]["drive_left_arm"] = %player_snowmobile_drive_left_arm;
    level.scr_anim["snowmobile_player"]["turn_left2right_L"] = %player_snowmobile_drive_turn_left2right_l;
    level.scr_anim["snowmobile_player"]["turn_right2left_L"] = %player_snowmobile_drive_turn_right2left_l;
    level.scr_anim["snowmobile_player"]["shoot_left_arm"] = %player_snowmobile_shoot_left_arm;
    level.scr_anim["snowmobile_player"]["gun_fire"] = %player_snowmobile_gun_fire;
    level.scr_anim["snowmobile_player"]["gun_idle"] = %player_snowmobile_gun_idle;
    level.scr_anim["snowmobile_player"]["gun_pullout_root"] = %player_snowmobile_gun_pullout_root;
    level.scr_anim["snowmobile_player"]["gun_pullout_L"] = %player_snowmobile_gun_pullout_l;
    level.scr_anim["snowmobile_player"]["gun_pullout"] = %player_snowmobile_gun_pullout;
    level.scr_anim["snowmobile_player"]["gun_pullout_R"] = %player_snowmobile_gun_pullout_r;
    level.scr_anim["snowmobile_player"]["gun_putaway_root"] = %player_snowmobile_gun_putaway_root;
    level.scr_anim["snowmobile_player"]["gun_putaway_L"] = %player_snowmobile_gun_putaway_l;
    level.scr_anim["snowmobile_player"]["gun_putaway"] = %player_snowmobile_gun_putaway;
    level.scr_anim["snowmobile_player"]["gun_putaway_R"] = %player_snowmobile_gun_putaway_r;
    level.scr_anim["snowmobile_player"]["gun_reload"] = %player_snowmobile_gun_reload;
    level.scr_anim["snowmobile_player"]["gun_root"] = %player_snowmobile_shoot_left_arm;
    level.scr_anim["snowmobile_player"]["gun_left"] = %player_snowmobile_gun_additive_left;
    level.scr_anim["snowmobile_player"]["gun_left_anim"] = %h2_player_snowmobile_gun_left;
    level.scr_anim["snowmobile_player"]["gun_right"] = %player_snowmobile_gun_additive_right;
    level.scr_anim["snowmobile_player"]["gun_right_anim"] = %h2_player_snowmobile_gun_right;
    level.scr_anim["snowmobile_player"]["gun_down"] = %player_snowmobile_gun_additive_down;
    level.scr_anim["snowmobile_player"]["gun_down_anim"] = %h2_player_snowmobile_gun_down;
    level.scr_anim["snowmobile_player"]["aim_left"] = %player_snowmobile_gun_aim_left;
    level.scr_anim["snowmobile_player"]["aim_left_anim"] = %h2_player_snowmobile_gun_aim_left;
    level.scr_anim["snowmobile_player"]["aim_right"] = %player_snowmobile_gun_aim_right;
    level.scr_anim["snowmobile_player"]["aim_right_anim"] = %h2_player_snowmobile_gun_aim_right;
    level.scr_anim["snowmobile_player"]["right_arm"] = %player_snowmobile_right_arm;
    level.scr_anim["snowmobile_player"]["turn_left2right_R"] = %player_snowmobile_drive_turn_left2right_r;
    level.scr_anim["snowmobile_player"]["turn_right2left_R"] = %player_snowmobile_drive_turn_right2left_r;
    level.scr_anim["snowmobile_player"]["camera_left"] = %player_snowmobile_camera_left;
    level.scr_anim["snowmobile_player"]["camera_right"] = %player_snowmobile_camera_right;
    level.scr_anim["snowmobile_player"]["left_cam"] = %h2_player_snowmobile_drive_turn_right2left_r_cam;
    level.scr_anim["snowmobile_player"]["right_cam"] = %h2_player_snowmobile_drive_turn_left2right_r_cam;
    level.scr_anim["snowmobile_player"]["glock"] = %snowmobile_glock;
    level.scr_anim["snowmobile_player"]["glock_fire"] = %snowmobile_glock_fire;
    level.scr_anim["snowmobile_player"]["glock_last_fire"] = %snowmobile_glock_last_fire;
    level.scr_anim["snowmobile_player"]["glock_reload"] = %snowmobile_glock_reload;
    level.scr_anim["snowmobile_player"]["rpm_min"] = %player_snowmobile_drive_rpm_min;
    level.scr_anim["snowmobile_player"]["rpm_max"] = %player_snowmobile_drive_rpm_max;
    level.scr_anim["snowmobile_player"]["speedometer_0"] = %player_snowmobile_drive_speedometer_0;
    level.scr_anim["snowmobile_player"]["speedometer_90"] = %player_snowmobile_drive_speedometer_90;
    level.scr_anim["snowmobile_player"]["speedometer_180"] = %player_snowmobile_drive_speedometer_180;
    level.scr_anim["snowmobile_player"]["throttle_add"] = %player_snowmobile_drive_throttle_add;
    level.scr_anim["snowmobile_player"]["throttle"] = %player_snowmobile_drive_throttle;
    level.scr_anim["snowmobile_player"]["throttle_add_left"] = %player_snowmobile_drive_throttle_add_left;
    level.scr_anim["snowmobile_player"]["throttle_left"] = %player_snowmobile_drive_throttle_left;
    level.scr_anim["snowmobile_player"]["throttle_add_right"] = %player_snowmobile_drive_throttle_add_right;
    level.scr_anim["snowmobile_player"]["throttle_right"] = %player_snowmobile_drive_throttle_right;
    level.scr_anim["snowmobile_player"]["sleeve_pose"] = %player_sleeve_pose;
    level.scr_anim["snowmobile_player"]["sleeve_flapping"] = %player_sleeve_flapping;
    level.scr_anim["snowmobile_player"]["land"] = %player_snowmobile_land_cam_shake;
    level.scr_anim["snowmobile_player"]["land_anim"] = %h2_player_snowmobile_jump_out;
    level.scr_anim["snowmobile_player"]["air_in"] = %player_snowmobile_air_in_shake;
    level.scr_anim["snowmobile_player"]["air_in_anim"] = %h2_player_snowmobile_jump_in;
    level.scr_anim["snowmobile_player"]["hand_shake_loop"] = %player_snowmobile_hand_shake_loop;
    level.scr_anim["snowmobile_player"]["hand_shake_loop_anim"] = %h2_player_snowmobile_hand_shake_loop;
    level.scr_anim["snowmobile_player"]["tilt_left"] = %player_snowmobile_tilt_left;
    level.scr_anim["snowmobile_player"]["tilt_left_anim"] = %h2_player_snowmobile_tilt_left;
    level.scr_anim["snowmobile_player"]["tilt_right"] = %player_snowmobile_tilt_right;
    level.scr_anim["snowmobile_player"]["tilt_right_anim"] = %h2_player_snowmobile_tilt_right;
    level.scr_anim["snowmobile_player"]["big_jump"] = %player_snowmobile_big_jump;
    level.scr_anim["snowmobile_player"]["big_jump_in"] = %h2_player_snowmobile_big_jump_in;
    level.scr_anim["snowmobile_player"]["big_jump_idle"] = %h2_player_snowmobile_big_jump_idle;
    level.scr_anim["snowmobile_player"]["big_jump_out"] = %h2_player_snowmobile_big_jump_out;
    level.scr_anim["snowmobile_player"]["head_down"] = %player_snowmobile_jump_head_down;
    level.scr_anim["snowmobile_player"]["head_down_anim"] = %h2_player_snowmobile_big_jump_down_add;
    level.scr_anim["snowmobile_player"]["death_back"] = %h2_player_snowmobile_death_back;
    level.scr_anim["snowmobile_player"]["death_front"] = %h2_player_snowmobile_death_front;
    level.scr_anim["snowmobile_player"]["death_right"] = %h2_player_snowmobile_death_right;
    level.scr_anim["snowmobile_player"]["death_smash_front"] = %h2_player_snowmobile_death_smash_front;
    level.scr_animtree["snowmobile_player_detached"] = #animtree;
    level.scr_model["snowmobile_player_detached"] = level._id_B440;
    level.scr_anim["snowmobile_player_detached"]["death_right_detached"] = %h2_player_snowmobile_death_right_wb;
    level.scr_anim["snowmobile_player"]["collision_reaction_front"] = %player_snowmobile_collision_reaction_front;
    level.scr_anim["snowmobile_player"]["collision_reaction_front_anim"] = %h2_player_snowmobile_collision_reaction_front;
    level.scr_anim["snowmobile_player"]["collision_reaction_left"] = %player_snowmobile_collision_reaction_left;
    level.scr_anim["snowmobile_player"]["collision_reaction_left_anim"] = %h2_player_snowmobile_collision_reaction_left;
    level.scr_anim["snowmobile_player"]["collision_reaction_right"] = %player_snowmobile_collision_reaction_right;
    level.scr_anim["snowmobile_player"]["collision_reaction_right_anim"] = %h2_player_snowmobile_collision_reaction_right;
    level.scr_anim["snowmobile_player"]["cliffhanger_ending_player_anim"] = %h2_cliffhanger_ending_player;
}

_id_B979()
{
    return level.player _id_ADD7();
}

_id_AA6C()
{
    return level.player2 _id_ADD7();
}

_id_ADD7()
{
    if ( isdefined( self._id_C0F8 ) )
        return 1;

    if ( isdefined( level._id_A8AB ) )
        return 1;

    if ( !isdefined( self.vehicle ) )
        return 1;

    if ( maps\_utility::ent_flag_exist( "finish_line" ) && maps\_utility::ent_flag( "finish_line" ) )
        return 1;

    return maps\_utility::ent_flag( "player_shot_on_snowmobile" );
}

_id_B0DC()
{
    return level.player _id_CFB8();
}

_id_B226()
{
    return level.player2 _id_CFB8();
}

_id_CFB8()
{
    if ( !isdefined( self.vehicle ) )
        return 1;

    return self.vehicle.veh_speed > 10;
}

_id_B2A3( var_0 )
{
    if ( !isdefined( self._id_B306 ) )
        self._id_B306 = [];

    if ( !isdefined( self._id_B306[var_0] ) )
    {
        self._id_B306[var_0] = 1;
        self attach( var_0, "tag_window_break" );
    }
}
