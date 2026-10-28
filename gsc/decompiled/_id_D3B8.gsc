// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C752()
{
    level._effect["plant_large_thrower"] = loadfx( "fx/props/plant_large_thrower" );
    level._effect["plant_medium_thrower"] = loadfx( "fx/props/plant_medium_thrower" );
    level._effect["plant_small_thrower"] = loadfx( "fx/props/plant_small_thrower" );
    common_scripts\utility::run_thread_on_targetname( "potted_plant", ::_id_C842 );
}

_id_C842()
{
    var_0 = anglestoforward( self.angles );
    var_1 = anglestoup( self.angles );
    var_2 = self.origin;
    var_3 = undefined;

    if ( isdefined( self.target ) )
        var_3 = getent( self.target, "targetname" );

    thread _id_ACFE();

    if ( isdefined( var_3 ) )
        thread _id_D553( var_3 );

    self waittill( "fall" );
    var_4 = undefined;

    switch ( self.model )
    {
        case "com_potted_plant_small":
            var_4 = common_scripts\utility::getfx( "plant_small_thrower" );
            break;
        case "com_potted_plant_medium":
            var_4 = common_scripts\utility::getfx( "plant_medium_thrower" );
            break;
        case "com_potted_plant_large":
            var_4 = common_scripts\utility::getfx( "plant_large_thrower" );
            break;
        default:
    }

    self delete();
    playfx( var_4, var_2, var_0, var_1 );
}

_id_ACFE()
{
    self endon( "fall" );
    self setcandamage( 1 );
    self waittill( "damage" );
    self notify( "fall" );
}

_id_D553( var_0 )
{
    self endon( "fall" );
    var_0 waittill( "trigger" );
    wait( randomfloatrange( 0.0, 0.2 ) );
    self notify( "fall" );
}
