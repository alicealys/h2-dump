// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID47580()
{
    _ID42407::_ID1892( "axis", ::_ID24832 );
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
        var_2 _ID24832();
}

_ID24832()
{
    self.grenadeammo = 0;
}

_ID54735()
{
    thread _ID50892();
    _ID51260::_ID46928();
    _ID47580();
    level._ID44434 = 1;
    _ID42237::_ID14413( "player_on_boat" );
    level._ID22610 = 2000;

    if ( level.player.deathinvulnerabletime > 2000 )
        level.player.deathinvulnerabletime = 2000;

    var_0 = level._ID46392;

    if ( getdvarint( "zodiac_passby_system" ) )
        var_0 thread maps\af_chase_aud::_ID45496();

    level.player thread _ID51260::_ID44064( var_0.origin );
    _ID42237::_ID14413( "exit_caves" );
    level.player._ID4878 = 1;
    level.ignorerandombulletdamage = 1;
    level._ID11635 = 0;
    level._ID4449 = 0;
    level._ID47297 = 0;
    thread _ID46460();
}

_ID53275()
{
    self waittill( "trigger" );
    var_0 = getvehiclenode( self.target, "targetname" );
    level.player._ID40065.veh_pathtype = "follow";
    level.player._ID40065 startpath( var_0 );
}

_ID46460()
{
    if ( _ID42237::_ID14385( "enemy_zodiacs_wipe_out" ) )
        return;

    level endon( "enemy_zodiacs_wipe_out" );
    var_0 = 3;
    wait 2;

    for (;;)
    {
        thread _ID51260::_ID46156();
        wait(var_0);
        var_0 -= 0.5;

        if ( var_0 < 0.5 )
            var_0 = 0.5;
    }
}

_ID51949()
{
    self waittill( "trigger" );
    _ID42237::_ID14402( "enemy_zodiacs_wipe_out" );
}

_ID50892()
{
    _ID42237::_ID14413( "enemy_zodiacs_wipe_out" );

    foreach ( var_1 in level._ID52919 )
        var_1 thread _ID43503();
}

_ID43503()
{
    self endon( "death" );
    thread _ID43709();
    wait(randomfloatrange( 2, 4 ));

    if ( !isdefined( self ) )
        return;

    self._ID41798 = 1;
    thread _ID46247();
}

_ID43709()
{
    var_0 = _ID42237::_ID16299( "heli_crash_fire_short_smoke" );
    playfxontag( var_0, self, "tag_motor_fx" );

    for (;;)
    {
        if ( self._ID41798 )
        {
            killfxontag( var_0, self, "tag_motor_fx" );
            return;
        }

        wait 0.05;
    }
}

_ID46247()
{
    var_0 = _ID42237::_ID16299( "rocket_explosion_water_af_chase" );
    var_1 = _ID42237::_ID16299( "rocket_hits_heli" );
    var_2 = self gettagorigin( "tag_origin" ) - ( 0, 0, 64 ) + _ID42237::_ID28978( -16, 16 );
    magicgrenade( "fraggrenade", self gettagorigin( "tag_guy2" ), self gettagorigin( "tag_guy2" ), 0, 0 );
    playfxontag( var_1, self, "tag_motor_fx" );
    playfxontag( var_0, self, "tag_origin" );
    physicsexplosionsphere( var_2, 64, 64, 2 );
}
