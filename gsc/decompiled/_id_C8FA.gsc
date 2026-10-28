// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2, var_3 )
{
    maps\_vehicle::build_template( "stryker", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );

    if ( !isdefined( var_3 ) )
    {
        maps\_vehicle::build_deathmodel( "vehicle_stryker", "vehicle_stryker_destroyed" );
        maps\_vehicle::build_deathfx( "fx/explosions/large_vehicle_explosion", undefined, "exp_armor_vehicle" );
    }

    maps\_vehicle::build_drive( %stryker_movement, %stryker_movement_backwards, 10 );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_mainturret();
    maps\_vehicle::build_frontarmor( 0.33 );
    level._effect["stryker_shell"] = loadfx( "fx/shellejects/stryker_shell" );
    maps\_vehicle::build_shoot_shock( "tankblast" );
}

init_local()
{
    thread _id_C412();
    self.shock_distance = 170;
}

_id_C412()
{
    self endon( "death" );
    var_0 = [];
    var_0["fire"] = %stryker_cannon_fire;
    var_0["hatch"] = %stryker_shell_hatch;
    var_1 = common_scripts\utility::getfx( "stryker_shell" );

    for (;;)
    {
        self waittill( "weapon_fired" );

        foreach ( var_3 in var_0 )
            self setanimrestart( var_3, 1, 0, 1 );

        playfxontag( var_1, self, "tag_ammo_fx" );
    }
}

set_vehicle_anims( var_0 )
{
    return var_0;
}

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 11; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].getout_delete = 1;
    return var_0;
}
