// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "mi28", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_mi-28_flying" );
    maps\_vehicle::build_deathmodel( "vehicle_mi-28_flying_low" );
    maps\_vehicle::build_drive( %mi28_rotors, undefined, 0, 3.0 );
    maps\_vehicle::build_deathfx( "vfx/fire/mi28_cabin_damaged_fire_smoke", "tag_deathfx", undefined, undefined, undefined, undefined, 0.2, 1 );
    maps\_vehicle::build_deathfx( "vfx/explosion/helicopter_explosion_secondary_small", "tag_engine_left", "havoc_helicopter_secondary_exp", undefined, undefined, undefined, 0.0, 1 );
    maps\_vehicle::build_deathfx( "fx/fire/fire_smoke_trail_L_small", "tail_rotor_jnt", "havoc_helicopter_dying_loop", 1, 0.07, 1, 0.5, 1 );
    maps\_vehicle::build_deathfx( "vfx/explosion/helicopter_explosion_secondary_small", "tag_engine_right", "havoc_helicopter_secondary_exp", undefined, undefined, undefined, 2.5, 1 );
    maps\_vehicle::build_deathfx( "fx/explosions/helicopter_explosion_mi28_flying", undefined, "havoc_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    maps\_vehicle::build_rocket_deathfx( "fx/explosions/aerial_explosion_mi28_flying", "tag_deathfx", "havoc_helicopter_crash", undefined, undefined, undefined, undefined, 1, undefined, 0 );
    maps\_vehicle::build_deathquake( 0.8, 1.6, 2048 );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_mainturret();
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
    var_3 = randomfloatrange( 0, 1 );
    maps\_vehicle::build_light( var_2, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", var_3 );
    maps\_vehicle::build_light( var_2, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", var_3 );
    maps\_vehicle::build_light( var_2, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_white_blink", "running", var_3 );
    maps\_vehicle::build_light( var_2, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_red_blink", "running", var_3 );
}

init_local()
{
    self.script_badplace = 0;
    self._id_C6BC = 1;
    maps\_vehicle::vehicle_lights_on( "running" );
    thread handle_audio();
}

set_vehicle_anims( var_0 )
{
    return var_0;
}

handle_audio()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 12000;
    _id_AA34::_id_D035();
    thread monitor_death_stop_sounds();

    for (;;)
    {
        if ( !isdefined( self.script_disablevehicleaudio ) || !self.script_disablevehicleaudio )
        {
            var_2 = distance( self.origin, level.player.origin );

            if ( var_0 && var_2 > var_1 )
            {
                _id_AA34::_id_B850( 1.0 );
                var_0 = 0;
                wait 0.1;
            }
            else if ( !var_0 && var_2 < var_1 )
            {
                _id_AA34::_id_BD5D();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _id_AA34::_id_B850( 1.0 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

monitor_death_stop_sounds()
{
    self waittill( "death" );
    _id_AA34::_id_B850( 1.0 );
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_pilot";
    var_0[1].sittag = "tag_gunner";
    var_0[0].idle[0] = %helicopter_pilot1_idle;
    var_0[0].idle[1] = %helicopter_pilot1_twitch_clickpannel;
    var_0[0].idle[2] = %helicopter_pilot1_twitch_lookback;
    var_0[0].idle[3] = %helicopter_pilot1_twitch_lookoutside;
    var_0[0].idleoccurrence[0] = 500;
    var_0[0].idleoccurrence[1] = 100;
    var_0[0].idleoccurrence[2] = 100;
    var_0[0].idleoccurrence[3] = 100;
    var_0[1].idle[0] = %helicopter_pilot2_idle;
    var_0[1].idle[1] = %helicopter_pilot2_twitch_clickpannel;
    var_0[1].idle[2] = %helicopter_pilot2_twitch_lookoutside;
    var_0[1].idle[3] = %helicopter_pilot2_twitch_radio;
    var_0[1].idleoccurrence[0] = 450;
    var_0[1].idleoccurrence[1] = 100;
    var_0[1].idleoccurrence[2] = 100;
    var_0[1].idleoccurrence[3] = 100;
    var_0[0].bhasgunwhileriding = 0;
    var_0[1].bhasgunwhileriding = 0;
    return var_0;
}
