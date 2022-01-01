// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2, var_3, var_4 )
{
    _ID42411::_ID6255( "blackhawk_minigun", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6220( %bh_rotors, undefined, 0 );

    if ( !isdefined( var_3 ) )
    {
        var_5 = [];
        var_5["vehicle_blackhawk_minigun_low"] = "fx/explosions/helicopter_explosion";
        var_5["vehicle_blackhawk_minigun_hero"] = "fx/explosions/helicopter_explosion";
        var_5["vehicle_blackhawk_minigun_player"] = "fx/explosions/helicopter_explosion";
        var_5["vehicle_blackhawk_minigun_player_so_ac130"] = "fx/explosions/helicopter_explosion";
        var_5["vehicle_ny_blackhawk"] = "fx/explosions/helicopter_explosion";
        var_5["h2_vehicle_blackhawk_minigun_hero_exterior"] = "fx/explosions/helicopter_explosion";
        _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", "blackhawk_helicopter_hit", undefined, undefined, undefined, 0.2, 1, undefined );
        _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "elevator_jnt", "blackhawk_helicopter_secondary_exp", undefined, undefined, undefined, 0.5, 1, undefined );
        _ID42411::_ID6213( "fx/fire/fire_smoke_trail_L", "elevator_jnt", "blackhawk_helicopter_dying_loop", 1, 0.05, 1, 0.5, 1, undefined );
        _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", "blackhawk_helicopter_secondary_exp", undefined, undefined, undefined, 2.5, 1, undefined );
        _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "tag_deathfx", "blackhawk_helicopter_secondary_exp", undefined, undefined, undefined, 4.0, undefined, undefined );
        _ID42411::_ID6213( var_5[var_0], undefined, "blackhawk_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
        _ID42411::_ID6247( "fx/explosions/aerial_explosion_heli_large", "tag_deathfx", "blackhawk_helicopter_crash", undefined, undefined, undefined, undefined, 1, undefined, 0 );
    }

    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6206( ::_ID32221 );
    _ID42411::_ID6262( ::_ID39488 );
    var_6 = randomfloatrange( 0, 1 );
    _ID42411::_ID6234( var_0, "cockpit_blue_cargo01", "tag_light_cargo01", "fx/misc/aircraft_light_cockpit_red", "interior", 0.0 );
    _ID42411::_ID6234( var_0, "cockpit_blue_cockpit01", "tag_light_cockpit01", "fx/misc/aircraft_light_cockpit_blue", "interior", 0.0 );
    _ID42411::_ID6234( var_0, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_white_blink", "running", var_6 );
    _ID42411::_ID6234( var_0, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_white_blink", "running", var_6 );
    _ID42411::_ID6234( var_0, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", var_6 );
    _ID42411::_ID6234( var_0, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", var_6 );

    if ( isdefined( var_4 ) )
        _ID42411::_ID6261( var_4, "tag_doorgun", "weapon_blackhawk_minigun", undefined, undefined, 0.2, 20, -14 );

    if ( var_0 == "h2_vehicle_blackhawk_minigun_hero_exterior" )
        precachemodel( "h2_vehicle_blackhawk_minigun_hero_interior_low" );

    _ID42411::_ID6232();
}

_ID19731()
{
    self._ID26026 = distance( self gettagorigin( "tag_origin" ), self gettagorigin( "tag_ground" ) );
    self._ID13954 = 762;
    self._ID31066 = 0;
}

_ID32509( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1]._ID40152 = %bh_idle;

    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 8; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID19302 = %bh_pilot_idle;
    var_0[1]._ID19302 = %bh_copilot_idle;
    var_0[2]._ID19302 = %bh_1_idle;
    var_0[3]._ID19302 = %bh_2_idle;
    var_0[4]._ID19302 = %bh_4_idle;
    var_0[5]._ID19302 = %bh_5_idle;
    var_0[6]._ID19302 = %bh_8_idle;
    var_0[7]._ID19302 = %bh_6_idle;
    var_0[0]._ID34225 = "tag_detach";
    var_0[1]._ID34225 = "tag_detach";
    var_0[2]._ID34225 = "tag_detach";
    var_0[3]._ID34225 = "tag_detach";
    var_0[4]._ID34225 = "tag_detach";
    var_0[5]._ID34225 = "tag_detach";
    var_0[6]._ID34225 = "tag_detach";
    var_0[7]._ID34225 = "tag_detach";
    var_0[2]._ID16491 = %bh_1_drop;
    var_0[3]._ID16491 = %bh_2_drop;
    var_0[4]._ID16491 = %bh_4_drop;
    var_0[5]._ID16491 = %bh_5_drop;
    var_0[6]._ID16491 = %bh_8_drop;
    var_0[7]._ID16491 = %bh_6_drop;
    var_0[2]._ID16505 = "crouch";
    var_0[3]._ID16505 = "crouch";
    var_0[4]._ID16505 = "crouch";
    var_0[5]._ID16505 = "crouch";
    var_0[6]._ID16505 = "crouch";
    var_0[7]._ID16505 = "crouch";
    var_0[2]._ID28894 = 1;
    var_0[3]._ID28894 = 1;
    var_0[4]._ID28894 = 1;
    var_0[5]._ID28894 = 1;
    var_0[6]._ID28894 = 1;
    var_0[7]._ID28894 = 1;
    var_0[2]._ID28893 = %fastrope_fall;
    var_0[3]._ID28893 = %fastrope_fall;
    var_0[4]._ID28893 = %fastrope_fall;
    var_0[5]._ID28893 = %fastrope_fall;
    var_0[6]._ID28893 = %fastrope_fall;
    var_0[7]._ID28893 = %fastrope_fall;
    var_0[1]._ID28994 = 1;
    var_0[2]._ID28994 = 1;
    var_0[3]._ID28994 = 1;
    var_0[4]._ID28994 = 1;
    var_0[5]._ID28994 = 1;
    var_0[6]._ID28994 = 1;
    var_0[7]._ID28994 = 1;
    var_0[2]._ID16498 = "fastrope_loop_npc";
    var_0[3]._ID16498 = "fastrope_loop_npc";
    var_0[4]._ID16498 = "fastrope_loop_npc";
    var_0[5]._ID16498 = "fastrope_loop_npc";
    var_0[6]._ID16498 = "fastrope_loop_npc";
    var_0[7]._ID16498 = "fastrope_loop_npc";
    var_0[2]._ID13955 = "TAG_FastRope_RI";
    var_0[3]._ID13955 = "TAG_FastRope_RI";
    var_0[4]._ID13955 = "TAG_FastRope_LE";
    var_0[5]._ID13955 = "TAG_FastRope_LE";
    var_0[6]._ID13955 = "TAG_FastRope_RI";
    var_0[7]._ID13955 = "TAG_FastRope_LE";
    return var_0;
}

_ID39488()
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

_ID32221()
{
    var_0 = [];
    var_0["TAG_FastRope_LE"] = spawnstruct();
    var_0["TAG_FastRope_LE"]._ID669 = "rope_test";
    var_0["TAG_FastRope_LE"]._ID1067 = "TAG_FastRope_LE";
    var_0["TAG_FastRope_LE"]._ID19324 = %bh_rope_idle_le;
    var_0["TAG_FastRope_LE"]._ID12144 = %bh_rope_drop_le;
    var_0["TAG_FastRope_RI"] = spawnstruct();
    var_0["TAG_FastRope_RI"]._ID669 = "rope_test_ri";
    var_0["TAG_FastRope_RI"]._ID1067 = "TAG_FastRope_RI";
    var_0["TAG_FastRope_RI"]._ID19324 = %bh_rope_idle_ri;
    var_0["TAG_FastRope_RI"]._ID12144 = %bh_rope_drop_ri;

    if ( level._ID40793 == "h2_vehicle_blackhawk_minigun_hero_exterior" )
    {
        var_0["interior_attach"] = spawnstruct();
        var_0["interior_attach"]._ID669 = "h2_vehicle_blackhawk_minigun_hero_interior";
        var_0["interior_attach"]._ID1067 = "TAG_ORIGIN";
        var_0["interior_attach"].no_link = 1;
    }

    var_1 = getarraykeys( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        precachemodel( var_0[var_1[var_2]]._ID669 );

    return var_0;
}

_ID49743( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = level._ID794;

    self._ID50372 = var_1;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    thread _ID43651( var_2 );
    var_1 allowprone( 0 );
    var_1 allowcrouch( 0 );

    if ( !isdefined( var_0 ) )
    {
        var_1 disableweapons( 1 );
        var_3 = spawn( "script_origin", self gettagorigin( "tag_barrel" ) );
        var_3._ID65 = self gettagangles( "tag_barrel" );
        var_3 linkto( self );
        self._ID3189 = "minigun";
        level._ID794._ID49929 = _ID42407::_ID35028( "worldhands" );
        level._ID794._ID49929 hide();
        var_3 _ID42407::_ID49392( "minigun_in_fast", [ self ], undefined, 0.2, 1, undefined, undefined, undefined, undefined, undefined, undefined, 1 );

        if ( self._ID669 == "h2_vehicle_blackhawk_minigun_hero_exterior" )
        {
            self detach( "h2_vehicle_blackhawk_minigun_hero_interior", "tag_origin" );
            self attach( "h2_vehicle_blackhawk_minigun_hero_interior_low", "tag_origin" );
        }

        if ( !isdefined( self._ID23875 ) )
        {
            self._ID23875 = _ID42407::_ID35028( "minigun_dummy", self._ID740, self._ID65 );
            self._ID23875 setcontents( 0 );
            self._ID23875 hide();
            self._ID23875 linkto( self );
        }
    }

    self useby( var_1 );

    if ( isdefined( var_0 ) )
    {
        var_4 = self gettagangles( "tag_player" );
        var_1 setplayerangles( var_4 + ( 0, 0, 0 ) );
    }

    self attach( level._ID30904["viewhands"], "tag_barrel" );
    thread _ID43238();
    _ID42237::_ID14388( "player_off_minigun" );
    _ID42237::_ID14402( "player_on_minigun" );
    thread _ID45306::_ID49378();
}

_ID43238()
{
    self endon( "death" );

    for (;;)
    {
        level waittill( "player_on_minigun" );
        self setanim( _ID42407::_ID16120( "minigun_idle" ), 1, 0 );
        level waittill( "player_off_minigun" );
        self clearanim( _ID42407::_ID16120( "minigun_idle" ), 0 );
    }
}

_ID49339()
{
    self useby( self._ID50372 );
    self._ID50372 unlink();
    level notify( "player_off_blackhawk_gun" );
}

_ID43651( var_0 )
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
