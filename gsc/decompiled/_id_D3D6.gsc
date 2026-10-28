// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2, var_3, var_4 )
{
    maps\_vehicle::build_template( "blackhawk_minigun", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_drive( %bh_rotors, undefined, 0 );

    if ( !isdefined( var_3 ) )
    {
        var_5 = [];
        var_5["vehicle_blackhawk_minigun_low"] = "fx/explosions/helicopter_explosion";
        var_5["vehicle_blackhawk_minigun_hero"] = "fx/explosions/helicopter_explosion";
        var_5["vehicle_blackhawk_minigun_player"] = "fx/explosions/helicopter_explosion";
        var_5["vehicle_blackhawk_minigun_player_so_ac130"] = "fx/explosions/helicopter_explosion";
        var_5["vehicle_ny_blackhawk"] = "fx/explosions/helicopter_explosion";
        var_5["h2_vehicle_blackhawk_minigun_hero_exterior"] = "fx/explosions/helicopter_explosion";
        maps\_vehicle::build_deathfx( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", "blackhawk_helicopter_hit", undefined, undefined, undefined, 0.2, 1, undefined );
        maps\_vehicle::build_deathfx( "fx/explosions/helicopter_explosion_secondary_small", "elevator_jnt", "blackhawk_helicopter_secondary_exp", undefined, undefined, undefined, 0.5, 1, undefined );
        maps\_vehicle::build_deathfx( "fx/fire/fire_smoke_trail_L", "elevator_jnt", "blackhawk_helicopter_dying_loop", 1, 0.05, 1, 0.5, 1, undefined );
        maps\_vehicle::build_deathfx( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", "blackhawk_helicopter_secondary_exp", undefined, undefined, undefined, 2.5, 1, undefined );
        maps\_vehicle::build_deathfx( "fx/explosions/helicopter_explosion_secondary_small", "tag_deathfx", "blackhawk_helicopter_secondary_exp", undefined, undefined, undefined, 4.0, undefined, undefined );
        maps\_vehicle::build_deathfx( var_5[var_0], undefined, "blackhawk_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
        maps\_vehicle::build_rocket_deathfx( "fx/explosions/aerial_explosion_heli_large", "tag_deathfx", "blackhawk_helicopter_crash", undefined, undefined, undefined, undefined, 1, undefined, 0 );
    }

    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
    maps\_vehicle::build_attach_models( ::set_attached_models );
    maps\_vehicle::build_unload_groups( ::unload_groups );
    var_6 = randomfloatrange( 0, 1 );
    maps\_vehicle::build_light( var_0, "cockpit_blue_cargo01", "tag_light_cargo01", "fx/misc/aircraft_light_cockpit_red", "interior", 0.0 );
    maps\_vehicle::build_light( var_0, "cockpit_blue_cockpit01", "tag_light_cockpit01", "fx/misc/aircraft_light_cockpit_blue", "interior", 0.0 );
    maps\_vehicle::build_light( var_0, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_white_blink", "running", var_6 );
    maps\_vehicle::build_light( var_0, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_white_blink", "running", var_6 );
    maps\_vehicle::build_light( var_0, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", var_6 );
    maps\_vehicle::build_light( var_0, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", var_6 );

    if ( isdefined( var_4 ) )
        maps\_vehicle::build_turret( var_4, "tag_doorgun", "weapon_blackhawk_minigun", undefined, undefined, 0.2, 20, -14 );

    if ( var_0 == "h2_vehicle_blackhawk_minigun_hero_exterior" )
        precachemodel( "h2_vehicle_blackhawk_minigun_hero_interior_low" );

    maps\_vehicle::build_is_helicopter();
}

init_local()
{
    self.originheightoffset = distance( self gettagorigin( "tag_origin" ), self gettagorigin( "tag_ground" ) );
    self.fastropeoffset = 762;
    self.script_badplace = 0;
}

set_vehicle_anims( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1].vehicle_getoutanim = %bh_idle;

    return var_0;
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 8; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].idle = %bh_pilot_idle;
    var_0[1].idle = %bh_copilot_idle;
    var_0[2].idle = %bh_1_idle;
    var_0[3].idle = %bh_2_idle;
    var_0[4].idle = %bh_4_idle;
    var_0[5].idle = %bh_5_idle;
    var_0[6].idle = %bh_8_idle;
    var_0[7].idle = %bh_6_idle;
    var_0[0].sittag = "tag_detach";
    var_0[1].sittag = "tag_detach";
    var_0[2].sittag = "tag_detach";
    var_0[3].sittag = "tag_detach";
    var_0[4].sittag = "tag_detach";
    var_0[5].sittag = "tag_detach";
    var_0[6].sittag = "tag_detach";
    var_0[7].sittag = "tag_detach";
    var_0[2].getout = %bh_1_drop;
    var_0[3].getout = %bh_2_drop;
    var_0[4].getout = %bh_4_drop;
    var_0[5].getout = %bh_5_drop;
    var_0[6].getout = %bh_8_drop;
    var_0[7].getout = %bh_6_drop;
    var_0[2].getoutstance = "crouch";
    var_0[3].getoutstance = "crouch";
    var_0[4].getoutstance = "crouch";
    var_0[5].getoutstance = "crouch";
    var_0[6].getoutstance = "crouch";
    var_0[7].getoutstance = "crouch";
    var_0[2].ragdoll_getout_death = 1;
    var_0[3].ragdoll_getout_death = 1;
    var_0[4].ragdoll_getout_death = 1;
    var_0[5].ragdoll_getout_death = 1;
    var_0[6].ragdoll_getout_death = 1;
    var_0[7].ragdoll_getout_death = 1;
    var_0[2].ragdoll_fall_anim = %fastrope_fall;
    var_0[3].ragdoll_fall_anim = %fastrope_fall;
    var_0[4].ragdoll_fall_anim = %fastrope_fall;
    var_0[5].ragdoll_fall_anim = %fastrope_fall;
    var_0[6].ragdoll_fall_anim = %fastrope_fall;
    var_0[7].ragdoll_fall_anim = %fastrope_fall;
    var_0[1].rappel_kill_achievement = 1;
    var_0[2].rappel_kill_achievement = 1;
    var_0[3].rappel_kill_achievement = 1;
    var_0[4].rappel_kill_achievement = 1;
    var_0[5].rappel_kill_achievement = 1;
    var_0[6].rappel_kill_achievement = 1;
    var_0[7].rappel_kill_achievement = 1;
    var_0[2].getoutloopsnd = "fastrope_loop_npc";
    var_0[3].getoutloopsnd = "fastrope_loop_npc";
    var_0[4].getoutloopsnd = "fastrope_loop_npc";
    var_0[5].getoutloopsnd = "fastrope_loop_npc";
    var_0[6].getoutloopsnd = "fastrope_loop_npc";
    var_0[7].getoutloopsnd = "fastrope_loop_npc";
    var_0[2].fastroperig = "TAG_FastRope_RI";
    var_0[3].fastroperig = "TAG_FastRope_RI";
    var_0[4].fastroperig = "TAG_FastRope_LE";
    var_0[5].fastroperig = "TAG_FastRope_LE";
    var_0[6].fastroperig = "TAG_FastRope_RI";
    var_0[7].fastroperig = "TAG_FastRope_LE";
    return var_0;
}

unload_groups()
{
    var_0 = [];
    var_0["left"] = [];
    var_0["right"] = [];
    var_0["both"] = [];
    var_0["left"][var_0["left"].size] = 4;
    var_0["left"][var_0["left"].size] = 5;
    var_0["left"][var_0["left"].size] = 7;
    var_0["right"][var_0["right"].size] = 2;
    var_0["right"][var_0["right"].size] = 3;
    var_0["right"][var_0["right"].size] = 6;
    var_0["both"][var_0["both"].size] = 2;
    var_0["both"][var_0["both"].size] = 3;
    var_0["both"][var_0["both"].size] = 4;
    var_0["both"][var_0["both"].size] = 5;
    var_0["both"][var_0["both"].size] = 6;
    var_0["both"][var_0["both"].size] = 7;
    var_0["default"] = var_0["both"];
    return var_0;
}

set_attached_models()
{
    var_0 = [];
    var_0["TAG_FastRope_LE"] = spawnstruct();
    var_0["TAG_FastRope_LE"].model = "rope_test";
    var_0["TAG_FastRope_LE"].tag = "TAG_FastRope_LE";
    var_0["TAG_FastRope_LE"].idleanim = %bh_rope_idle_le;
    var_0["TAG_FastRope_LE"].dropanim = %bh_rope_drop_le;
    var_0["TAG_FastRope_RI"] = spawnstruct();
    var_0["TAG_FastRope_RI"].model = "rope_test_ri";
    var_0["TAG_FastRope_RI"].tag = "TAG_FastRope_RI";
    var_0["TAG_FastRope_RI"].idleanim = %bh_rope_idle_ri;
    var_0["TAG_FastRope_RI"].dropanim = %bh_rope_drop_ri;

    if ( level.vtmodel == "h2_vehicle_blackhawk_minigun_hero_exterior" )
    {
        var_0["interior_attach"] = spawnstruct();
        var_0["interior_attach"].model = "h2_vehicle_blackhawk_minigun_hero_interior";
        var_0["interior_attach"].tag = "TAG_ORIGIN";
        var_0["interior_attach"].no_link = 1;
    }

    var_1 = getarraykeys( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        precachemodel( var_0[var_1[var_2]].model );

    return var_0;
}

_id_C24F( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = level.player;

    self._id_C4C4 = var_1;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    thread _id_AA83( var_2 );
    var_1 allowprone( 0 );
    var_1 allowcrouch( 0 );

    if ( !isdefined( var_0 ) )
    {
        var_1 disableweapons( 1 );
        var_3 = spawn( "script_origin", self gettagorigin( "tag_barrel" ) );
        var_3.angles = self gettagangles( "tag_barrel" );
        var_3 linkto( self );
        self.animname = "minigun";
        level.player._id_C309 = maps\_utility::spawn_anim_model( "worldhands" );
        level.player._id_C309 hide();
        var_3 maps\_utility::_id_C0F0( "minigun_in_fast", [ self ], undefined, 0.2, 1, undefined, undefined, undefined, undefined, undefined, undefined, 1 );

        if ( self.model == "h2_vehicle_blackhawk_minigun_hero_exterior" )
        {
            self detach( "h2_vehicle_blackhawk_minigun_hero_interior", "tag_origin" );
            self attach( "h2_vehicle_blackhawk_minigun_hero_interior_low", "tag_origin" );
        }

        if ( !isdefined( self.modeldummy ) )
        {
            self.modeldummy = maps\_utility::spawn_anim_model( "minigun_dummy", self.origin, self.angles );
            self.modeldummy setcontents( 0 );
            self.modeldummy hide();
            self.modeldummy linkto( self );
        }
    }

    self useby( var_1 );

    if ( isdefined( var_0 ) )
    {
        var_4 = self gettagangles( "tag_player" );
        var_1 setplayerangles( var_4 + ( 0, 0, 0 ) );
    }

    self attach( level.scr_model["viewhands"], "tag_barrel" );
    thread _id_A8E6();
    common_scripts\utility::flag_clear( "player_off_minigun" );
    common_scripts\utility::flag_set( "player_on_minigun" );
    thread _id_B0FA::_id_C0E2();
}

_id_A8E6()
{
    self endon( "death" );

    for (;;)
    {
        level waittill( "player_on_minigun" );
        self setanim( maps\_utility::getanim( "minigun_idle" ), 1, 0 );
        level waittill( "player_off_minigun" );
        self clearanim( maps\_utility::getanim( "minigun_idle" ), 0 );
    }
}

_id_C0BB()
{
    self useby( self._id_C4C4 );
    self._id_C4C4 unlink();
    level notify( "player_off_blackhawk_gun" );
}

_id_AA83( var_0 )
{
    wait 0.05;

    if ( var_0 )
    {
        setsaveddvar( "ui_hidemap", 1 );
        setsaveddvar( "hud_showStance", "0" );
        setsaveddvar( "compass", "0" );
        setdvar( "old_compass", "0" );
        setsaveddvar( "ammoCounterHide", "1" );
    }
    else
    {
        setsaveddvar( "ui_hidemap", 0 );
        setsaveddvar( "hud_drawhud", "1" );
        setsaveddvar( "hud_showStance", "1" );
        setsaveddvar( "compass", "1" );
        setdvar( "old_compass", "1" );
        setsaveddvar( "ammoCounterHide", "0" );
    }
}
