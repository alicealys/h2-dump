// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "snowmobile_player", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_snowmobile", "vehicle_snowmobile_static" );
    maps\_vehicle::build_deathfx( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_single_tread();
    maps\_vehicle::_id_BA54();

    if ( !isdefined( anim._effect ) )
        anim._effect = [];

    anim._effect["player_snowmobile_bump"] = loadfx( "fx/treadfx/player_land_snow_snowmobile" );
}

init_local()
{
    self._id_CD15 = 0;
    self._id_CB26 = 500;
    self.event = [];
    self.event["jump"] = [];
    self.event["jump"]["driver"] = 0;
    thread handle_audio();
    thread _id_D29D();
    thread _id_CDF7();
}

handle_audio()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 1.0;
    _id_AC4F::init();
    thread monitor_death_stop_sounds();

    for (;;)
    {
        if ( !isdefined( self.script_disablevehicleaudio ) || !self.script_disablevehicleaudio )
        {
            if ( !var_0 )
            {
                _id_AC4F::_id_C44C();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _id_AC4F::_id_B3A8( var_1 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

monitor_death_stop_sounds()
{
    self waittill( "death" );
    var_0 = 1.0;
    _id_AC4F::_id_B3A8( var_0 );
}

_id_D29D()
{
    self endon( "death" );
    waitframe();

    for (;;)
    {
        self waittill( "veh_leftground" );
        self._id_CD15 = gettime();
        self.event["jump"]["driver"] = 1;
        _id_A840( "player_snowmobile_leftground" );
        wait 0.6;
    }
}

_id_CDF7()
{
    self endon( "death" );
    waitframe();

    for (;;)
    {
        self waittill( "veh_landed" );
        self.event["jump"]["driver"] = 0;
        _id_A840( "player_snowmobile_bump" );
    }
}

_id_A840( var_0 )
{
    if ( isdefined( anim._effect[var_0] ) )
        playfxontag( anim._effect[var_0], self, "tag_deathfx" );
}

set_vehicle_anims( var_0 )
{
    return var_0;
}

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].getout_delete = 1;
    var_0[0].sittag = "tag_driver";
    var_0[1].sittag = "tag_passenger";
    return var_0;
}
