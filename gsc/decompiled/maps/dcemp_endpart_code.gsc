// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_BA68()
{
    level endon( "kill_spotlight" );
    var_0 = common_scripts\utility::getstruct( "whitehouse_spotlight", "targetname" );
    var_1 = spawnturret( "misc_turret", var_0.origin, "heli_spotlight" );
    var_1.angles = var_0.angles;
    var_1 setmodel( "cod3mg42" );
    var_1 setturretteam( "axis" );
    var_1 setmode( "manual" );
    var_1 setconvergencetime( 1, "yaw" );
    var_1 setconvergencetime( 1, "pitch" );
    var_1 endon( "death" );
    var_2 = common_scripts\utility::getstruct( var_0.target, "targetname" );
    var_2.ent = spawn( "script_origin", var_2.origin );
    var_1 settargetentity( var_2.ent );
    var_1 waittill( "turret_on_target" );
    var_1 thread _id_D535();
    var_1 thread _id_BD1D();
    var_1 _id_AA07( var_2 );
    var_1 thread _id_D43A();
    common_scripts\utility::flag_wait( "whitehouse_breached" );
    stopfxontag( level._effect["_attack_heli_spotlight"], var_1, "tag_flash" );
    var_1 notify( "death" );
}

_id_AA07( var_0 )
{
    self endon( "death" );
    var_1 = var_0.ent;

    for (;;)
    {
        if ( isdefined( var_0.script_speed ) )
        {
            var_2 = var_0.script_speed / 1000;
            self setconvergencetime( var_2, "yaw" );
            self setconvergencetime( var_2, "pitch" );
        }

        var_1 delete();
        var_1 = spawn( "script_origin", var_0.origin );
        self settargetentity( var_1 );
        self waittill( "turret_on_target" );

        if ( isdefined( var_0.script_flag_set ) )
            common_scripts\utility::flag_set( var_0.script_flag_set );

        var_0 maps\_utility::script_delay();

        if ( isdefined( var_0.script_flag_wait ) )
            common_scripts\utility::flag_wait( var_0.script_flag_wait );

        if ( !isdefined( var_0.target ) )
            break;

        var_0 = common_scripts\utility::getstruct( var_0.target, "targetname" );
    }
}

_id_D43A()
{
    self endon( "death" );
    var_0 = getent( "entrance_stage_area", "targetname" );
    self setconvergencetime( 5, "yaw" );
    self setconvergencetime( 5, "pitch" );

    for (;;)
    {
        var_1 = getaiarray( "allies" );
        var_2 = [];

        foreach ( var_4 in var_1 )
        {
            if ( var_4 istouching( var_0 ) && !var_4 maps\_utility::is_hero() )
                var_2[var_2.size] = var_4;
        }

        if ( var_2.size == 0 )
        {
            wait 1;
            continue;
        }

        var_6 = common_scripts\utility::random( var_2 );
        self settargetentity( var_6 );
        self waittill( "turret_on_target" );
        wait( randomfloatrange( 0.5, 1.5 ) );
    }
}

_id_D535()
{
    self endon( "death" );
    var_0 = randomintrange( 3, 5 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        playfxontag( level._effect["_attack_heli_spotlight"], self, "tag_flash" );
        wait( randomfloatrange( 0.05, 0.15 ) );
        waittillframeend;
        stopfxontag( level._effect["_attack_heli_spotlight"], self, "tag_flash" );
        wait( randomfloatrange( 0.05, 0.15 ) );
        waittillframeend;
    }

    wait 0.1;
    playfxontag( level._effect["_attack_heli_spotlight"], self, "tag_flash" );
}

_id_BD1D()
{
    self endon( "death" );
    var_0 = getent( "spotlight_damage_trigger", "targetname" );
    var_1 = 0;
    var_2 = var_0 _id_CC25( 400 );
    var_1 += var_2;
    common_scripts\_exploder::exploder( "spotlight_exploder" );
    stopfxontag( level._effect["_attack_heli_spotlight"], self, "tag_flash" );
    self notify( "death" );
}

_id_BCAB( var_0 )
{
    self endon( "death" );

    if ( isdefined( var_0 ) )
        wait( randomint( 3 ) );

    thread _id_C68F();
    self setmode( "auto_nonai" );
    self setturretteam( "axis" );
    self setbottomarc( 35 );
    self setleftarc( 90 );
    self setrightarc( 90 );
    thread _id_B8CA();

    if ( isdefined( self.target ) )
        thread _id_D058();

    if ( isdefined( self.script_group ) )
    {
        level waittill( "sandbag_group_" + self.script_group );
        thread _id_BB7B();
    }
}

_id_C68F()
{
    self endon( "death" );
    var_0 = common_scripts\utility::get_linked_ent();
    self.drone = var_0 maps\_utility::spawn_ai( 1 );
    self.drone.health = 250;
    self.drone waittill( "death" );
    level notify( "sandbag_group_" + self.script_group );
}

_id_B8CA()
{
    self endon( "stop_firing" );

    for (;;)
    {
        var_0 = randomfloatrange( 1, 2.5 ) * 20;

        for ( var_1 = 0; var_1 < var_0; var_1++ )
        {
            self shootturret();
            wait 0.05;
        }

        wait( randomfloatrange( 1, 3 ) );
    }
}

_id_D058( var_0, var_1 )
{
    self endon( "stop_path" );
    self setconvergencetime( 4, "yaw" );
    self setconvergencetime( 2, "pitch" );
    self setaispread( 0.4 );
    self setmode( "manual" );

    if ( isdefined( var_0 ) )
        self.current_target = var_0;
    else
        self.current_target = common_scripts\utility::getstruct( self.target, "targetname" );

    var_2 = spawn( "script_origin", self.current_target.origin );

    for (;;)
    {
        if ( isdefined( self.current_target.script_speed ) )
        {
            var_3 = self.current_target.script_speed / 1000;
            self setconvergencetime( var_3, "yaw" );
            self setconvergencetime( var_3, "pitch" );
        }

        var_2 delete();
        var_2 = spawn( "script_origin", self.current_target.origin );
        self settargetentity( var_2 );
        turret_on_target( self.current_target );

        if ( isdefined( self.current_target.target ) )
        {
            self.current_target = common_scripts\utility::getstruct( self.current_target.target, "targetname" );
            continue;
        }

        if ( isdefined( self.target ) )
        {
            self.current_target = common_scripts\utility::getstruct( self.target, "targetname" );
            continue;
        }

        break;
    }

    var_2 delete();
}

_id_BB7B( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        var_0 *= 3;
        wait( randomfloatrange( var_0, var_0 + 2 ) );
    }

    if ( isdefined( self ) )
    {
        self notify( "stop_path" );
        self notify( "stop_firing" );
    }

    self delete();

    if ( isalive( self.drone ) )
        self.drone kill();
}

_id_C3EE( var_0 )
{
    self waittill( "trigger" );

    if ( common_scripts\utility::flag( "mg_threat" ) )
        return;

    var_0 setmode( "manual" );
    var_0 setturretteam( "axis" );
    var_0 setbottomarc( 45 );
    var_0 setconvergencetime( 0.25, "yaw" );
    var_0 setconvergencetime( 0.25, "pitch" );
    common_scripts\utility::flag_set( "mg_threat" );
    var_1 = common_scripts\utility::getstruct( self.target, "targetname" );
    var_2 = spawn( "script_origin", var_1.origin );
    var_0 settargetentity( var_2 );
    var_0 waittill( "turret_on_target" );
    var_0 thread _id_B8CA();
    var_0 _id_D058( var_1 );
    var_0 notify( "stop_firing" );
    common_scripts\utility::flag_clear( "mg_threat" );
}

_id_AD1A()
{
    var_0 = getentarray( "magic_rpg_trigger", "targetname" );
    common_scripts\utility::array_thread( var_0, ::_id_CB77 );
}

_id_CB77()
{
    self waittill( "trigger" );
    var_0 = common_scripts\utility::getstructarray( self.target, "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_3 = common_scripts\utility::getstructarray( var_2.target, "targetname" );
        common_scripts\utility::array_thread( var_3, ::_id_CA29, var_2 );
    }
}

_id_CA29( var_0 )
{
    maps\_utility::script_delay();
    var_1 = magicbullet( "rpg_straight", var_0.origin, self.origin );
}

_id_CABF( var_0 )
{
    _id_CF1A( var_0 );
    var_1 = getentarray( var_0, "targetname" );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        var_5 = var_4.script_group;

        if ( !isdefined( var_2[var_5] ) )
            var_2[var_5] = [];

        var_6 = var_2[var_5].size;
        var_2[var_5][var_6] = var_4;
    }

    foreach ( var_9 in var_2 )
        level thread _id_B1B3( var_9 );
}

_id_CF1A( var_0 )
{
    var_1 = common_scripts\utility::getstructarray( var_0, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = spawn( "script_model", var_3.origin );
        var_4.angles = var_3.angles;
        var_4 setmodel( var_3.script_modelname );
        var_4.script_group = var_3.script_group;
        var_4.script_index = var_3.script_index;
        var_4.script_parameters = var_3.script_parameters;
        var_4.targetname = var_3.targetname;
        var_3 = undefined;
    }
}

_id_B1B3( var_0 )
{
    var_1 = spawnstruct();
    var_1._id_D0BF = 0;
    common_scripts\utility::array_thread( var_0, ::_id_AC0D, var_1 );
    var_2 = anglestoforward( ( 345, 180, 0 ) );
    var_3 = var_2 * 3000;

    while ( var_0.size )
    {
        var_1 waittill( "damage", var_4, var_5 );
        waittillframeend;

        if ( var_5 > 500 )
        {
            var_1._id_D0BF = max( var_1._id_D0BF, int( var_0.size * 0.75 ) );
            level notify( "sandbag_group_" + var_4.script_group );
        }

        for ( var_6 = 0; var_6 < var_1._id_D0BF; var_6++ )
        {
            if ( var_6 == 0 )
            {
                var_7 = _id_A9F6( var_0, var_4 );

                if ( isdefined( var_7.script_parameters ) )
                {
                    var_1._id_D0BF = var_0.size;
                    level notify( "sandbag_group_" + var_7.script_group );
                }
            }
            else
                var_7 = _id_A9F6( var_0 );

            var_7 notify( "thrown" );
            var_0 = common_scripts\utility::array_remove( var_0, var_7 );
            var_7 physicslaunchclient( var_7.origin, var_3 );
        }

        var_1._id_D0BF = 0;
        var_1 notify( "throw_done" );
    }
}

_id_A9F6( var_0, var_1 )
{
    var_2 = 1000000;
    var_3 = undefined;

    foreach ( var_5 in var_0 )
    {
        if ( var_5.script_index > var_2 )
            continue;

        var_2 = var_5.script_index;
        var_3 = var_5;
    }

    if ( isdefined( var_1 ) && var_3.script_index == var_1.script_index )
        return var_1;

    return var_3;
}

_id_AC0D( var_0 )
{
    self endon( "thrown" );
    self.health = 10000;
    self setcandamage( 1 );

    for (;;)
    {
        var_1 = _id_CC25( 100 );
        var_0._id_D0BF++;
        var_0 notify( "damage", self, var_1 );
        var_0 waittill( "throw_done" );
    }
}

_id_A98A()
{
    var_0 = maps\_utility::get_ai_group_ai( "allied_mg" );

    foreach ( var_2 in var_0 )
        var_2 kill();

    var_4 = maps\_utility::get_ai_group_ai( "whitehouse_approach_enemies" );
    var_5 = 0;

    foreach ( var_2 in var_4 )
    {
        var_2 thread _id_B7EF( var_5 );
        var_5 += 1;
    }

    common_scripts\utility::flag_wait( "whitehouse_breached" );
    var_8 = getentarray( "manual_mg", "script_noteworthy" );
    var_8 = common_scripts\utility::array_add( var_8, getent( "west_side_mg", "script_noteworthy" ) );

    for ( var_9 = 0; var_9 < var_8.size; var_9++ )
        var_8[var_9] thread _id_BB7B( var_9 + 1 );

    var_10 = getaiarray( "axis" );
    common_scripts\utility::array_call( var_10, ::kill );
    var_11 = getaiarray( "allies" );

    foreach ( var_2 in var_11 )
    {
        if ( var_2 maps\_utility::is_hero() )
            continue;

        var_2 kill();
    }
}

_id_CCD0()
{
    var_0 = getentarray( "manual_mg", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, ::_id_BCAB, 1 );
    var_1 = getent( "threat_mg", "targetname" );
    var_2 = getentarray( "mg_threat_trigger", "targetname" );
    common_scripts\utility::array_thread( var_2, ::_id_C3EE, var_1 );
}

_id_BE7E()
{
    common_scripts\utility::flag_wait( "whitehouse_silhouette_ready" );
    var_0 = getentarray( "drone_rocket_source", "targetname" );
    var_1 = maps\_utility::array_removedead( level._id_C11F );

    for ( var_2 = 0; var_1.size; var_2++ )
    {
        var_3 = var_0[var_2 % var_0.size];
        magicbullet( "rpg_straight", var_3.origin, common_scripts\utility::random( var_1 ).origin );
        wait( randomfloat( 2 ) );
        var_1 = maps\_utility::array_removedead( level._id_C11F );
    }

    common_scripts\utility::flag_set( "whitehouse_silhouette_over" );
}

_id_AAE6()
{
    maps\_utility::array_spawn_function_noteworthy( "whitehouse_rappel_ai", ::_id_B402 );
}

_id_B402( var_0 )
{
    self endon( "death" );
    var_1 = getent( self.target, "targetname" );
    var_2 = maps\_utility::spawn_anim_model( "rope", var_1.origin );
    var_3 = [];
    var_3[0] = self;
    var_3[1] = var_2;
    var_4 = randomintrange( 1, 3 );
    self.animname = "rappel_guy";
    self.allowdeath = 1;
    var_1 thread maps\_anim::anim_loop( var_3, "rappel_stand_idle_" + var_4, "stop_loop" );
    common_scripts\utility::flag_wait( "whitehouse_rappel" );
    var_1 maps\_utility::script_delay();
    var_1 maps\_utility::anim_stopanimscripted();
    var_2 common_scripts\utility::delaycall( 9, ::delete );
    var_1 maps\_anim::anim_single( var_3, "rappel_drop", undefined, 4.3 );
    var_5 = getent( "rappel_goal", "targetname" );
    self setgoalpos( var_5.origin );
    self.goalradius = 1024;
    self.goalheight = 128;
}

_id_CF80( var_0, var_1, var_2, var_3 )
{
    wait( var_0 );
    var_4 = spawn( "script_model", ( 0, 0, 0 ) );
    var_4 setmodel( "mil_emergency_flare" );
    var_4 linkto( self, var_1, var_2, var_3 );
    playfxontag( level._effect["green_flare"], var_4, "tag_fire_fx" );
    wait 12;
    stopfxontag( level._effect["green_flare"], var_4, "tag_fire_fx" );
    wait 0.5;
    var_4 delete();
}

_id_B470( var_0 )
{
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    var_1 setmodel( "mil_emergency_flare" );
    var_1 linkto( var_0, "tag_weapon_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_2 = common_scripts\utility::getfx( "green_flare" );
    playfxontag( var_2, var_1, "tag_fire_fx" );
    playfxontag( var_2, var_0, "tag_fire_fx" );
    var_0 waittill( "remove_flare" );
    stopfxontag( var_2, var_1, "tag_fire_fx" );
    stopfxontag( var_2, var_0, "tag_fire_fx" );
    var_1 unlink();
    var_1 delete();
    var_0 detach( "mil_emergency_flare", "tag_inhand" );
}

_id_AEAD()
{
    level.player._id_B01D = spawn( "script_model", ( 0, 0, 0 ) );
    level.player._id_B01D setmodel( "mil_emergency_flare" );
    level.player._id_B01D linkto( self, "tag_weapon_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level.player._id_B01D endon( "death" );
    common_scripts\utility::flag_wait( "flare_start_fx" );
    playfxontag( level._effect["green_flare"], level.player._id_B01D, "tag_fire_fx" );
    level.player._id_B01D playloopsound( "emt_road_flare_burn" );
    common_scripts\utility::flag_wait( "flare_end_fx" );
    var_0 = level.player._id_B01D.origin;
    var_1 = var_0 + ( 0, 0, -64 );
    var_2 = physicstrace( var_0, var_1 );
    level.player._id_B01D.origin = var_2 + ( 0, 0, 1 );
    level.player._id_B01D.angles = ( 0, level.player._id_B01D.angles[1], 0 );
}

_id_D207()
{
    wait 0.4;
    self playsound( "door_wood_double_kick" );
    self connectpaths();
    self rotateto( self.angles + ( 0, 90, 0 ), 0.5, 0.1, 0 );
    self waittill( "rotatedone" );
    self rotateto( self.angles + ( 0, -10, 0 ), 0.3, 0, 0.3 );
    self waittill( "rotatedone" );
    self rotateto( self.angles + ( 0, 5, 0 ), 0.3, 0.15, 0.15 );
}

_id_CC25( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    var_1 = 0;

    for ( var_2 = 0; !var_1; var_1 = var_2 > var_0 )
    {
        self waittill( "damage", var_3, var_4 );

        if ( var_4 == level.player )
            var_2 += var_3;
    }

    return var_2;
}

turret_on_target( var_0 )
{
    self waittill( "turret_on_target" );

    for (;;)
    {
        var_1 = anglestoforward( self gettagangles( "tag_flash" ) );
        var_2 = vectornormalize( var_0.origin - self.origin );
        var_3 = vectordot( var_1, var_2 );

        if ( var_3 > 0.9999 )
            return;

        wait 0.05;
    }
}

_id_B7EF( var_0 )
{
    self endon( "death" );
    wait( randomfloatrange( var_0, var_0 + 2 ) );
    self kill();
}

_id_B9C4()
{
    self endon( "death" );
    self endon( "stop_dynamic_speed" );

    for (;;)
    {
        if ( common_scripts\utility::within_fov( level.player.origin, level.player.angles, self.origin, level.cosine["60"] ) )
            self.moveplaybackrate = 1.0;
        else
            self.moveplaybackrate = 2.5;

        wait 0.05;
    }
}

_id_B9CD()
{
    var_0 = getentarray( "chandelier", "targetname" );
    common_scripts\utility::array_thread( var_0, ::_id_BC11 );
}

_id_BC11()
{
    var_0 = getentarray( self.target, "targetname" );
    self._id_B2B4 = var_0[0];
    self.light = var_0[1];

    if ( var_0[0].classname != "script_model" )
    {
        self._id_B2B4 = var_0[1];
        self.light = var_0[0];
    }

    if ( isdefined( self._id_B2B4.target ) )
    {
        var_1 = common_scripts\utility::getstruct( self._id_B2B4.target, "targetname" );
        var_2 = var_1.origin;
    }
    else
        var_2 = physicstrace( self.origin, self.origin + ( 0, 0, 80 ) );

    self._id_C49C = spawn( "script_origin", var_2 );
    self._id_C0D5 = 0;
    self linkto( self._id_C49C );
    self._id_B2B4 linkto( self._id_C49C );
    thread _id_C128();
    self.light setlightintensity( 1.5 );
    thread _id_D252();
}

_id_D252()
{
    self endon( "chandelier_fall" );
    self setcandamage( 1 );
    self setcanradiusdamage( 1 );

    for (;;)
    {
        self waittill( "damage", var_0, var_1, var_2, var_3, var_4 );

        if ( common_scripts\_destructible::getdamagetype( var_4 ) != "splash" )
            continue;

        thread _id_D2B0( var_0, var_2 );
        thread _id_D282();

        if ( isdefined( self.script_parameters ) )
            thread _id_D088();
    }
}

_id_D2B0( var_0, var_1 )
{
    self._id_C0D5 = 1;
    self notify( "chandelier_swing" );
    self endon( "chandelier_swing" );
    var_0 = clamp( var_0, 0, 80 );
    var_2 = var_0 / 100;
    var_3 = 75 * var_2;
    var_4 = 0.4;
    var_5 = vectornormalize( ( var_1[0] * -1, var_1[1], 0 ) );
    var_6 = ( var_3 * var_5[0], 0, var_3 * var_5[1] );
    self._id_C49C rotateto( var_6, var_4, 0, var_4 );
    self._id_C49C waittill( "rotatedone" );

    while ( abs( var_3 ) > 2 )
    {
        var_3 *= -0.75;
        var_6 = ( var_3 * var_5[0], 0, var_3 * var_5[1] );
        self._id_C49C rotateto( var_6, var_4 * 2, var_4, var_4 );
        self._id_C49C waittill( "rotatedone" );
        self notify( "chandelier_turn" );
    }

    self._id_C49C rotateto( ( 0, 0, 0 ), var_4 * 2, var_4, var_4 );
    self._id_C49C waittill( "rotatedone" );
    self._id_C0D5 = 0;
    self notify( "chandelier_turn" );
}

_id_D282()
{
    self endon( "chandelier_fall" );
    self endon( "chandelier_swing" );
    wait 0.5;

    for ( var_0 = 0; var_0 < 14; var_0++ )
    {
        self.light setlightintensity( 0 );
        self setmodel( "furniture_chandelier1_off" );
        wait( randomfloatrange( 0.05, 0.2 ) );
        self.light setlightintensity( randomfloatrange( 0.5, 1.5 ) );
        self setmodel( "furniture_chandelier1" );
        wait( randomfloatrange( 0.15, 0.3 ) );
    }

    self.light setlightintensity( 1.5 );
}

_id_D088()
{
    self endon( "chandelier_swing" );
    var_0 = self._id_AFC8.origin;
    wait( randomfloatrange( 1, 4 ) );
    self notify( "chandelier_fall" );
    self.light setlightintensity( 4 );
    self setmodel( "furniture_chandelier1" );
    wait 0.05;
    self.light setlightintensity( 0 );
    self setmodel( "furniture_chandelier1_off" );
    playfx( level._effect["wire_spark"], self.origin );

    if ( self._id_C0D5 )
        self waittill( "chandelier_turn" );

    self unlink();
    var_1 = var_0 - self._id_AFC8.origin;
    self physicslaunchclient( self._id_AFC8.origin, var_1 * 2 );
}

_id_C128()
{
    self endon( "chandelier_fall" );
    self._id_AFC8 = spawn( "script_origin", self.light.origin );
    self._id_AFC8 linkto( self );

    for (;;)
    {
        self waittill( "chandelier_swing" );

        while ( self._id_C0D5 )
        {
            self.light.origin = self._id_AFC8.origin;
            wait 0.05;
        }
    }
}

_id_B03C( var_0 )
{
    var_1 = getentarray( var_0, "script_noteworthy" );
    var_2 = undefined;

    foreach ( var_2 in var_1 )
    {
        if ( var_2.targetname == "chandelier" )
            break;
    }

    return var_2;
}

_id_C0CA( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = ( 10, 10, 0 );

    self notify( "damage", var_0, undefined, var_1, undefined, "mod_grenade_splash" );
}

_id_B259( var_0 )
{
    var_1 = spawn( "script_origin", level.player.origin + ( 0, 0, 32 ) );
    var_1 makeusable();
    var_1 sethintstring( var_0 );
    var_1 linkto( level.player );
    level thread maps\_utility::set_flag_on_trigger( var_1, "remove_use_hint" );
    common_scripts\utility::flag_wait( "remove_use_hint" );
    var_1 delete();
}

_id_C098( var_0 )
{
    return int( ( gettime() - var_0 ) / 1000 );
}

_id_CC8D( var_0, var_1 )
{
    var_2 = anglestoright( var_1 ) * -1;
    var_3 = anglestoforward( var_1 );
    var_4 = anglestoup( var_1 );
    var_5 = var_3 * var_0[0] + var_2 * var_0[1] + var_4 * var_0[2];
    return var_5;
}

#using_animtree("generic_human");

_id_C51F()
{
    self useanimtree( #animtree );
    self setcandamage( 1 );
}

_id_AB5B()
{
    var_0 = getent( "tunnels_teleport_trigger", "targetname" );
    var_0 waittill( "trigger" );
    common_scripts\utility::flag_set( "tunnels_teleport" );
    maps\dcemp_code::_id_BF7A();
    maps\dcemp_code::_id_D1BA();

    while ( !level.player isonground() )
        wait 0.05;

    common_scripts\utility::flag_set( "end_fx" );
    var_1 = getent( var_0.target, "targetname" );
    var_2 = getent( var_1.target, "targetname" );
    var_3 = var_2.angles - var_1.angles;
    var_4 = level.player.origin - var_1.origin;
    var_4 = _id_CC8D( var_4, var_3 );
    var_5 = level.player getplayerangles() - var_1.angles;
    var_6 = var_2.origin + var_4;
    var_7 = var_2.angles + var_5;
    level.player setorigin( var_6 );
    level.player setplayerangles( var_7 );
    setnorthyaw( 0.0 );
    var_8 = getent( "tunnels_teleport_volume", "targetname" );
    var_9 = common_scripts\utility::getstructarray( "tunnels_teleport_struct", "targetname" );
    var_10 = 0;
    var_3 = var_2.angles - var_1.angles;

    foreach ( var_12 in level.team )
    {
        var_4 = var_12.origin - var_1.origin;
        var_4 = _id_CC8D( var_4, var_3 );
        var_13 = var_12.angles - var_1.angles;
        var_6 = var_2.origin + var_4;
        var_7 = var_2.angles + var_13;
        var_12 forceteleport( var_6, var_7 );
    }

    common_scripts\utility::flag_set( "tunnels_teleport_done" );
}

_id_B832( var_0, var_1 )
{
    var_2 = spawn( "script_model", var_0 );
    var_3 = var_2 istouching( var_1 );
    var_2 delete();
    return var_3;
}

_id_CECD()
{
    var_0 = self getattachsize();

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        var_2 = self getattachmodelname( var_1 );
        var_3 = self getattachtagname( var_1 );

        if ( issubstr( var_2, "weapon" ) )
            self detach( var_2, var_3 );
    }
}

_id_D04E()
{
    var_0 = getentarray( "force_flash", "targetname" );
    common_scripts\utility::array_thread( var_0, ::_id_CDA3 );
}

_id_CDA3()
{
    self waittill( "trigger" );
    thread maps\_weather::lightningflash( _id_CD74::lightning_normal, _id_CD74::lightning_flash );
}
