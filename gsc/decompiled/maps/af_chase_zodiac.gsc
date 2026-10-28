// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B9DC()
{
    maps\_utility::add_global_spawn_function( "axis", ::no_grenades );
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
        var_2 no_grenades();
}

no_grenades()
{
    self.grenadeammo = 0;
}

_id_D5CF()
{
    thread _id_C6CC();
    _id_C83C::_id_B750();
    _id_B9DC();
    level._id_AD92 = 1;
    common_scripts\utility::flag_wait( "player_on_boat" );
    level.longregentime = 2000;

    if ( level.player.deathinvulnerabletime > 2000 )
        level.player.deathinvulnerabletime = 2000;

    var_0 = level._id_B538;

    if ( getdvarint( "zodiac_passby_system" ) )
        var_0 thread maps\af_chase_aud::_id_B1B8();

    level.player thread _id_C83C::_id_AC20( var_0.origin );
    common_scripts\utility::flag_wait( "exit_caves" );
    level.player.baseignorerandombulletdamage = 1;
    level.ignorerandombulletdamage = 1;
    level.dopickyautosavechecks = 0;
    level.autosave_threat_check_enabled = 0;
    level._id_B8C1 = 0;
    thread _id_B57C();
}

_id_D01B()
{
    self waittill( "trigger" );
    var_0 = getvehiclenode( self.target, "targetname" );
    level.player.vehicle.veh_pathtype = "follow";
    level.player.vehicle startpath( var_0 );
}

_id_B57C()
{
    if ( common_scripts\utility::flag( "enemy_zodiacs_wipe_out" ) )
        return;

    level endon( "enemy_zodiacs_wipe_out" );
    var_0 = 3;
    wait 2;

    for (;;)
    {
        thread _id_C83C::_id_B44C();
        wait( var_0 );
        var_0 -= 0.5;

        if ( var_0 < 0.5 )
            var_0 = 0.5;
    }
}

_id_CAED()
{
    self waittill( "trigger" );
    common_scripts\utility::flag_set( "enemy_zodiacs_wipe_out" );
}

_id_C6CC()
{
    common_scripts\utility::flag_wait( "enemy_zodiacs_wipe_out" );

    foreach ( var_1 in level._id_CEB7 )
        var_1 thread _id_A9EF();
}

_id_A9EF()
{
    self endon( "death" );
    thread _id_AABD();
    wait( randomfloatrange( 2, 4 ) );

    if ( !isdefined( self ) )
        return;

    self.wipeout = 1;
    thread _id_B4A7();
}

_id_AABD()
{
    var_0 = common_scripts\utility::getfx( "heli_crash_fire_short_smoke" );
    playfxontag( var_0, self, "tag_motor_fx" );

    for (;;)
    {
        if ( self.wipeout )
        {
            killfxontag( var_0, self, "tag_motor_fx" );
            return;
        }

        wait 0.05;
    }
}

_id_B4A7()
{
    var_0 = common_scripts\utility::getfx( "rocket_explosion_water_af_chase" );
    var_1 = common_scripts\utility::getfx( "rocket_hits_heli" );
    var_2 = self gettagorigin( "tag_origin" ) - ( 0, 0, 64 ) + common_scripts\utility::randomvectorrange( -16, 16 );
    magicgrenade( "fraggrenade", self gettagorigin( "tag_guy2" ), self gettagorigin( "tag_guy2" ), 0, 0 );
    playfxontag( var_1, self, "tag_motor_fx" );
    playfxontag( var_0, self, "tag_origin" );
    physicsexplosionsphere( var_2, 64, 64, 2 );
}
