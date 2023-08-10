// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C2BC()
{
    common_scripts\utility::run_thread_on_noteworthy( "hiding_door_spawner", ::_id_B762 );
}

_id_B762()
{
    var_0 = undefined;

    if ( isdefined( self.script_parameters ) && common_scripts\utility::flag_exist( self.script_parameters ) )
        var_0 = self.script_parameters;

    var_1 = undefined;

    if ( isdefined( self.script_parameters ) && self.script_parameters == "open_door_when_spawner_deleted" )
        var_1 = self.script_parameters;

    var_2 = getentarray( "hiding_door_guy_org", "targetname" );
    var_3 = common_scripts\utility::getclosest( self.origin, var_2 );
    var_3.targetname = undefined;
    var_4 = getentarray( var_3.target, "targetname" );
    var_5 = undefined;
    var_6 = undefined;
    var_7 = undefined;

    if ( isdefined( var_3.script_linkto ) )
        var_7 = var_3 common_scripts\utility::get_linked_ent();

    if ( var_4.size == 1 )
        var_5 = var_4[0];
    else
    {
        foreach ( var_9 in var_4 )
        {
            if ( var_9.code_classname == "script_brushmodel" )
            {
                var_6 = var_9;
                continue;
            }

            if ( var_9.code_classname == "script_model" )
                var_5 = var_9;
        }
    }

    if ( !isdefined( var_6 ) && isdefined( var_5 ) && isdefined( var_5.script_noteworthy ) && var_5.script_noteworthy == "keep_door" )
    {
        var_6 = spawn( "script_model", var_5.origin );
        var_6 setmodel( var_5.model );
        var_6.angles = var_5.angles;
        var_6.script_noteworthy = var_5.script_noteworthy;
    }

    var_11 = getent( var_5.target, "targetname" );
    var_12 = undefined;

    if ( isdefined( var_11.target ) )
        var_12 = getent( var_11.target, "targetname" );

    if ( isdefined( var_12 ) )
    {
        if ( isdefined( var_0 ) )
            var_12 thread _id_B11D( var_0 );

        var_3 thread _id_BEAD( var_12 );

        if ( !isdefined( level._id_C07A ) )
            level._id_C07A = [];

        level._id_C07A[level._id_C07A.size] = var_12;
    }

    var_5 delete();
    var_13 = maps\_utility::spawn_anim_model( "hiding_door" );
    var_3 thread maps\_anim::anim_first_frame_solo( var_13, "fire_3" );

    if ( isdefined( var_6 ) )
    {
        var_6 linkto( var_13, "door_hinge_jnt" );
        var_13 hide();
    }

    if ( isdefined( var_11 ) )
    {
        var_11 linkto( var_13, "door_hinge_jnt" );
        var_11 disconnectpaths();
    }

    var_14 = undefined;

    if ( isdefined( self.target ) )
    {
        var_14 = getent( self.target, "targetname" );

        if ( !issubstr( var_14.classname, "trigger" ) )
            var_14 = undefined;
    }

    if ( !isdefined( self.script_flag_wait ) && !isdefined( var_14 ) )
    {
        var_15 = 200;

        if ( isdefined( self.radius ) )
            var_15 = self.radius;

        var_14 = spawn( "trigger_radius", var_3.origin, 0, var_15, 48 );
    }

    if ( isdefined( var_7 ) )
        badplace_brush( var_7 getentitynumber(), 0, var_7, "allies" );

    maps\_utility::add_spawn_function( ::_id_CA91, var_3, var_14, var_13, var_11, var_7 );

    if ( isdefined( var_1 ) )
        thread _id_CA08( var_3, var_13, var_11, var_7 );
}

_id_D0EE( var_0 )
{
    self endon( "kill_player_watch_behind" );
    self endon( "death" );

    for (;;)
    {
        var_1 = _id_B51B( var_0.angles, self.origin, level.player.origin );

        if ( _id_C452( var_1 ) )
        {
            if ( _id_B1F3() )
                return;
        }

        waitframe();
    }
}

_id_CA91( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "quitted_door_behavior" );
    var_5 = _id_CF20( var_0 );
    var_3 setcandamage( 1 );
    var_3 thread _id_C3BE( self );
    self.animname = "hiding_door_guy";
    self endon( "death" );
    self endon( "damage" );
    self.grenadeammo = 2;
    maps\_utility::set_deathanim( "death_2" );
    self.allowdeath = 1;
    self.health = 50000;
    self.alwaysredhitmarker = 1;
    var_6 = [];
    var_6[var_6.size] = var_2;
    var_6[var_6.size] = self;
    thread _id_D178( var_0, self, var_2, var_3, var_4 );
    thread _id_C7FD( var_2, var_0, self, var_3, var_4 );

    if ( var_5 )
        var_0 thread maps\_anim::anim_loop( var_6, "idle" );
    else
        var_0 thread maps\_anim::anim_first_frame( var_6, "fire_3" );

    if ( isdefined( var_1 ) )
    {
        wait 0.05;
        var_1 waittill( "trigger" );
    }
    else
        common_scripts\utility::flag_wait( self.script_flag_wait );

    if ( var_5 )
    {
        var_0 notify( "stop_loop" );
        var_0 maps\_anim::anim_single( var_6, "close" );
    }

    var_7 = 0;
    var_8 = 0;

    for (;;)
    {
        var_9 = level.player;

        if ( isdefined( self.enemy ) )
            var_9 = self.enemy;

        var_10 = _id_B51B( var_2.angles, self.origin, var_9.origin );

        if ( _id_C452( var_10 ) )
        {
            if ( _id_B1F3() )
                return;
        }

        if ( var_7 >= 2 )
        {
            if ( _id_B1F3( 1 ) )
                return;
        }

        var_11 = undefined;

        if ( var_10 == "left" || var_10 == "front" )
            var_11 = "fire_3";
        else if ( var_10 == "right" )
        {
            var_11 = "fire_1";

            if ( common_scripts\utility::cointoss() )
                var_11 = "fire_2";
        }
        else
        {
            thread _id_D0EE( var_2 );
            var_0 maps\_anim::anim_single( var_6, "open" );
            var_0 maps\_anim::anim_single( var_6, "close" );
            self notify( "kill_player_watch_behind" );
            var_7++;
            continue;
        }

        if ( _id_B184( var_10, var_9, var_8 ) )
        {
            var_11 = "jump";

            if ( common_scripts\utility::cointoss() )
            {
                if ( self maymovetopoint( animscripts\utility::getanimendpos( level.scr_anim[self.animname]["kick"] ) ) )
                    var_11 = "kick";
            }

            thread _id_CC2E( var_3, var_4 );
            var_0 notify( "push_player" );
            self notify( "charge" );
            self.allowdeath = 1;
            self.health = 100;
            maps\_utility::clear_deathanim();
            var_0 maps\_anim::anim_single( var_6, var_11 );
            _id_B1F3();
            return;
        }

        if ( _id_BC15( var_10, var_8 ) )
        {
            self.grenadeammo--;
            var_11 = "grenade";
        }

        var_7 = 0;
        var_8++;
        var_12 = getentarray( "hiding_door_guy_anim_org", "targetname" );
        var_13 = undefined;

        if ( isdefined( var_12 ) )
            var_13 = common_scripts\utility::getclosest( self.origin, var_12, 256 );

        if ( isdefined( var_13 ) )
        {
            var_0 thread maps\_anim::anim_single_solo( var_6[0], var_11 );
            var_13 thread maps\_anim::anim_single_solo( var_6[1], var_11 );
        }
        else
            var_0 thread maps\_anim::anim_single( var_6, var_11 );

        maps\_utility::delaythread( 0.05, maps\_anim::anim_set_time, var_6, var_11, 0.3 );
        var_0 waittill( var_11 );
        var_0 thread maps\_anim::anim_first_frame( var_6, "open" );
        wait( randomfloatrange( 0.2, 1.0 ) );
        var_0 notify( "stop_loop" );
    }
}

_id_B1F3( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    if ( var_0 )
    {
        if ( !sighttracepassed( level.player geteye(), self geteye(), 0, self ) )
            return 0;
    }

    self.health = 100;
    maps\_utility::clear_deathanim();
    self.goalradius = 512;
    self setgoalpos( self.origin );
    self notify( "quit_door_behavior" );
    self stopanimscripted();
    self notify( "killanimscript" );
    self notify( "quitted_door_behavior" );
    return 1;
}

_id_C452( var_0 )
{
    if ( var_0 != "behind" )
        return 0;

    var_1 = distance( self.origin, level.player.origin );

    if ( var_1 > 250 )
        return 0;

    if ( !sighttracepassed( level.player geteye(), self geteye(), 0, self ) )
        return 0;

    return 1;
}

_id_B184( var_0, var_1, var_2 )
{
    var_3 = 3;
    var_4 = 100;
    var_5 = 600;

    if ( var_2 < var_3 )
        return 0;

    if ( var_1 != level.player )
        return 0;

    if ( var_0 != "front" )
        return 0;

    var_6 = distance( self.origin, level.player.origin );

    if ( var_6 < var_4 )
        return 0;

    if ( var_6 > var_5 )
        return 0;

    return common_scripts\utility::cointoss();
}

_id_BC15( var_0, var_1 )
{
    if ( var_1 < 1 )
        return 0;

    if ( var_0 == "behind" )
        return 0;

    if ( randomint( 100 ) < 25 * self.grenadeammo )
        return 1;

    return 0;
}

_id_B51B( var_0, var_1, var_2 )
{
    var_3 = anglestoforward( var_0 );
    var_4 = vectornormalize( var_3 );
    var_5 = vectortoangles( var_4 );
    var_6 = vectortoangles( var_2 - var_1 );
    var_7 = var_5[1] - var_6[1];
    var_7 += 360;
    var_7 = int( var_7 ) % 360;
    var_8 = undefined;

    if ( var_7 >= 90 && var_7 <= 270 )
        var_8 = "behind";
    else if ( var_7 >= 300 || var_7 <= 45 )
        var_8 = "front";
    else if ( var_7 < 90 )
        var_8 = "right";
    else if ( var_7 > 270 )
        var_8 = "left";

    return var_8;
}

_id_CA08( var_0, var_1, var_2, var_3 )
{
    self endon( "spawned" );
    self waittill( "death" );
    waitframe();
    var_0 notify( "stop_loop" );
    thread _id_CC2E( var_2, var_3 );
    var_0 notify( "push_player" );

    if ( !isdefined( var_1._id_A9D2 ) )
    {
        var_1._id_A9D2 = 1;
        var_0 thread maps\_anim::anim_single_solo( var_1, "death_2" );
    }
}

_id_D178( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 endon( "charge" );
    var_1 common_scripts\utility::waittill_either( "death", "quit_door_behavior" );
    var_0 notify( "stop_loop" );
    thread _id_CC2E( var_3, var_4 );
    var_0 notify( "push_player" );

    if ( !isdefined( var_2._id_A9D2 ) )
    {
        var_2._id_A9D2 = 1;
        var_0 thread maps\_anim::anim_single_solo( var_2, "death_2" );
    }
}

_id_BEAD( var_0 )
{
    self waittill( "push_player" );
    var_0 moveto( self.origin, 1.5 );
    wait 1.5;
    var_0 delete();
}

_id_C3BE( var_0 )
{
    var_0 endon( "death" );
    var_0 endon( "charge" );
    var_0 endon( "quit_door_behavior" );

    for (;;)
    {
        self waittill( "damage", var_1, var_2, var_3, var_4, var_5 );

        if ( !isplayer( var_2 ) || !( var_5 == "MOD_PROJECTILE_SPLASH" || var_5 == "MOD_GRENADE_SPLASH" ) )
            continue;

        break;
    }

    var_0 dodamage( var_1, var_4, var_2 );
}

_id_B11D( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        common_scripts\utility::flag_wait( var_0 );
        self notsolid();
        common_scripts\utility::flag_waitopen( var_0 );
        self solid();
    }
}

_id_D400( var_0 )
{
    var_1 = var_0 gettagorigin( "J_Wrist_RI" );
    var_2 = distance( level.player.origin, var_0.origin ) * 2.0;

    if ( var_2 < 300 )
        var_2 = 300;

    if ( var_2 > 1000 )
        var_2 = 1000;

    var_3 = vectornormalize( level.player.origin - var_0.origin );
    var_4 = var_3 * var_2;
    var_0 magicgrenademanual( var_1, var_4, randomfloatrange( 3.0, 5.0 ) );
}

_id_C7FD( var_0, var_1, var_2, var_3, var_4 )
{
    var_2 endon( "charge" );
    var_2 endon( "quit_door_behavior" );
    var_2 waittill( "damage", var_5, var_6 );

    if ( !isalive( var_2 ) )
        return;

    thread _id_CC2E( var_3, var_4 );
    var_1 notify( "push_player" );
    var_7 = getentarray( "hiding_door_guy_anim_org", "targetname" );
    var_8 = undefined;

    if ( isdefined( var_7 ) )
        var_8 = common_scripts\utility::getclosest( self.origin, var_7, 256 );

    if ( isdefined( var_8 ) )
        var_8 thread maps\_anim::anim_single_solo( var_2, "death_2" );
    else
        var_1 thread maps\_anim::anim_single_solo( var_2, "death_2" );

    if ( !isdefined( var_0._id_A9D2 ) )
    {
        var_0._id_A9D2 = 1;
        var_1 thread maps\_anim::anim_single_solo( var_0, "death_2" );
    }

    var_2 _id_C0C3::_id_B95B( 1, 1 );
    wait 0.5;

    if ( isalive( var_2 ) )
    {
        _id_B190::_id_D55F( var_2 );
        var_2 kill( ( 0, 0, 0 ) );
    }
}

_id_CC2E( var_0, var_1 )
{
    wait 2;

    if ( isdefined( var_0 ) )
        var_0 disconnectpaths();

    if ( isdefined( var_1 ) )
        badplace_delete( var_1 getentitynumber() );
}

_id_CF20( var_0 )
{
    return isdefined( var_0.script_noteworthy ) && var_0.script_noteworthy == "starts_open";
}
