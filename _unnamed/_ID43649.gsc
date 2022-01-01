// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2, var_3 )
{
    _ID42411::_ID6255( "hind", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_mi24p_hind_desert" );
    _ID42411::_ID6216( "vehicle_mi24p_hind_woodland" );
    _ID42411::_ID6216( "vehicle_mi24p_hind_woodland_opened_door" );
    var_4 = [];
    var_4["vehicle_mi24p_hind_desert"] = "fx/explosions/helicopter_explosion_hind_desert";
    var_4["vehicle_mi24p_hind_woodland"] = "vfx/explosion/helicopter_crash_explosion_02";
    var_4["vehicle_mi24p_hind_woodland_opened_door"] = "vfx/explosion/helicopter_crash_explosion_02";
    var_4["vehicle_mi24p_hind_chernobyl"] = "vfx/explosion/helicopter_crash_explosion_02";
    var_4["vehicle_hind_chernobyl"] = "vfx/explosion/helicopter_crash_explosion_02";
    _ID42411::_ID6220( %bh_rotors, undefined, 0 );
    _ID42411::_ID6213( "fx/fire/helicopter_fire_engin", "tag_engine_right", undefined, 1, 0.5, undefined, undefined, 1, undefined );
    _ID42411::_ID6213( "fx/fire/helicopter_fire_engin", "tag_engine_left", undefined, 1, 0.5, undefined, 0.15, 1, undefined );
    _ID42411::_ID6213( "vfx/fire/helicopter_damaged_fire_ignition", "tag_origin", "hind_helicopter_secondary_exp", undefined, undefined, undefined, 1.5, 1, undefined );
    _ID42411::_ID6213( "vfx/fire/helicopter_damaged_fire_m", "tag_origin", undefined, 1, 0.5, undefined, 1.5, 1, undefined );
    _ID42411::_ID6213( "fx/fire/helicopter_main_rotor_explosion", "tag_origin", undefined, undefined, undefined, undefined, 1, 1, undefined );
    _ID42411::_ID6213( "fx/explosions/grenadeexp_default", "tag_engine_left", "hind_helicopter_hit", undefined, undefined, undefined, 0.2, 1, undefined );
    _ID42411::_ID6213( "fx/explosions/grenadeexp_default", "tail_rotor_jnt", "hind_helicopter_secondary_exp", undefined, undefined, undefined, 0.5, 1, undefined );
    _ID42411::_ID6213( "fx/fire/helicopter_rotor_smoke_trail", "tail_rotor_jnt", "hind_helicopter_dying_loop", 1, 0.05, 1, 0.5, 1, undefined );
    _ID42411::_ID6213( var_4[var_0], undefined, "hind_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6206( ::_ID32221 );
    _ID42411::_ID6262( ::_ID39488 );
    _ID42411::_ID6234( var_2, "cockpit_blue_cargo01", "tag_light_cargo01", "fx/misc/aircraft_light_cockpit_red", "interior", 0.0 );
    _ID42411::_ID6234( var_2, "cockpit_blue_cockpit01", "tag_light_cockpit01", "fx/misc/aircraft_light_cockpit_blue", "interior", 0.1 );
    _ID42411::_ID6234( var_2, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_white_blink", "running", 0.0 );
    _ID42411::_ID6234( var_2, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_red_blink", "running", 0.3 );
    _ID42411::_ID6234( var_2, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", 0.0 );
    _ID42411::_ID6234( var_2, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", 0.0 );
    _ID42411::_ID6232();
}

_ID19731()
{
    self._ID26026 = 144;
    self._ID13954 = 792;
    self._ID31066 = 0;
    _ID42411::_ID40197( "running" );
    _ID17700();
}

_ID17700()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 144000000;
    _ID52901::_ID53457();
    thread _ID23939();

    for (;;)
    {
        if ( !isdefined( self._ID31138 ) || !self._ID31138 )
        {
            var_2 = distancesquared( self._ID740, level._ID794._ID740 );

            if ( var_0 && var_2 > var_1 )
            {
                _ID52901::_ID54593( 1.0 );
                var_0 = 0;
                wait 0.1;
            }
            else if ( !var_0 && var_2 <= var_1 )
            {
                _ID52901::_ID49962();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _ID52901::_ID54593( 1.0 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

_ID23939()
{
    self waittill( "death" );
    _ID52901::_ID54593( 1.0 );
}

_ID32509( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1]._ID40152 = %bh_idle;

    return var_0;
}
#using_animtree("fastrope");

_ID32742( var_0 )
{
    var_0[3]._ID27477 = %bh_player_idle;
    var_0[3]._ID27435 = "fastrope_start_plr";
    var_0[3]._ID27437 = "fastrope_loop_plr";
    var_0[3]._ID27436 = "fastrope_end_plr";
    var_0[3]._ID27434 = %bh_player_drop;
    var_0[3]._ID51633 = #animtree;
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 9; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID19302[0] = %helicopter_pilot1_idle;
    var_0[0]._ID19302[1] = %helicopter_pilot1_twitch_clickpannel;
    var_0[0]._ID19302[2] = %helicopter_pilot1_twitch_lookback;
    var_0[0]._ID19302[3] = %helicopter_pilot1_twitch_lookoutside;
    var_0[0]._ID19329[0] = 500;
    var_0[0]._ID19329[1] = 100;
    var_0[0]._ID19329[2] = 100;
    var_0[0]._ID19329[3] = 100;
    var_0[1]._ID19302[0] = %helicopter_pilot2_idle;
    var_0[1]._ID19302[1] = %helicopter_pilot2_twitch_clickpannel;
    var_0[1]._ID19302[2] = %helicopter_pilot2_twitch_lookoutside;
    var_0[1]._ID19302[3] = %helicopter_pilot2_twitch_radio;
    var_0[1]._ID19329[0] = 450;
    var_0[1]._ID19329[1] = 100;
    var_0[1]._ID19329[2] = 100;
    var_0[1]._ID19329[3] = 100;
    var_0[0]._ID5174 = 0;
    var_0[1]._ID5174 = 0;
    var_0[2]._ID19302 = %bh_1_idle;
    var_0[3]._ID19302 = %bh_2_idle;
    var_0[4]._ID19302 = %bh_4_idle;
    var_0[5]._ID19302 = %bh_5_idle;
    var_0[6]._ID19302 = %bh_8_idle;
    var_0[7]._ID19302 = %bh_6_idle;
    var_0[8]._ID19302 = %bh_7_idle;
    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[2]._ID34225 = "tag_detach";
    var_0[3]._ID34225 = "tag_detach";
    var_0[4]._ID34225 = "tag_detach";
    var_0[5]._ID34225 = "tag_detach";
    var_0[6]._ID34225 = "tag_detach";
    var_0[7]._ID34225 = "tag_detach";
    var_0[8]._ID34225 = "tag_detach";
    var_0[2]._ID16491 = %bh_1_drop;
    var_0[3]._ID16491 = %bh_2_drop;
    var_0[4]._ID16491 = %bh_4_drop;
    var_0[5]._ID16491 = %bh_5_drop;
    var_0[6]._ID16491 = %bh_8_drop;
    var_0[7]._ID16491 = %bh_6_drop;
    var_0[8]._ID16491 = %bh_7_drop;
    var_0[2]._ID16505 = "crouch";
    var_0[3]._ID16505 = "crouch";
    var_0[4]._ID16505 = "crouch";
    var_0[5]._ID16505 = "crouch";
    var_0[6]._ID16505 = "crouch";
    var_0[7]._ID16505 = "crouch";
    var_0[8]._ID16505 = "crouch";
    var_0[2]._ID28894 = 1;
    var_0[3]._ID28894 = 1;
    var_0[4]._ID28894 = 1;
    var_0[5]._ID28894 = 1;
    var_0[6]._ID28894 = 1;
    var_0[7]._ID28894 = 1;
    var_0[8]._ID28894 = 1;
    var_0[2]._ID28893 = %fastrope_fall;
    var_0[3]._ID28893 = %fastrope_fall;
    var_0[4]._ID28893 = %fastrope_fall;
    var_0[5]._ID28893 = %fastrope_fall;
    var_0[6]._ID28893 = %fastrope_fall;
    var_0[7]._ID28893 = %fastrope_fall;
    var_0[8]._ID28893 = %fastrope_fall;
    var_0[1]._ID28994 = 1;
    var_0[2]._ID28994 = 1;
    var_0[3]._ID28994 = 1;
    var_0[4]._ID28994 = 1;
    var_0[5]._ID28994 = 1;
    var_0[6]._ID28994 = 1;
    var_0[7]._ID28994 = 1;
    var_0[8]._ID28994 = 1;
    var_0[2]._ID16498 = "fastrope_loop_npc";
    var_0[3]._ID16498 = "fastrope_loop_npc";
    var_0[4]._ID16498 = "fastrope_loop_npc";
    var_0[5]._ID16498 = "fastrope_loop_npc";
    var_0[6]._ID16498 = "fastrope_loop_npc";
    var_0[7]._ID16498 = "fastrope_loop_npc";
    var_0[8]._ID16498 = "fastrope_loop_npc";
    var_0[2]._ID13955 = "TAG_FastRope_RI";
    var_0[3]._ID13955 = "TAG_FastRope_RI";
    var_0[4]._ID13955 = "TAG_FastRope_LE";
    var_0[5]._ID13955 = "TAG_FastRope_LE";
    var_0[6]._ID13955 = "TAG_FastRope_RI";
    var_0[7]._ID13955 = "TAG_FastRope_LE";
    var_0[8]._ID13955 = "TAG_FastRope_RI";
    return _ID32742( var_0 );
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
    var_0["right"][var_0["right"].size] = 8;
    var_0["both"][var_0["both"].size] = 2;
    var_0["both"][var_0["both"].size] = 3;
    var_0["both"][var_0["both"].size] = 4;
    var_0["both"][var_0["both"].size] = 5;
    var_0["both"][var_0["both"].size] = 6;
    var_0["both"][var_0["both"].size] = 7;
    var_0["both"][var_0["both"].size] = 8;
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
    var_1 = getarraykeys( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        precachemodel( var_0[var_1[var_2]]._ID669 );

    return var_0;
}
