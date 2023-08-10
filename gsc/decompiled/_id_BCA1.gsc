// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_CFA0()
{
    if ( !isdefined( level._id_BD18 ) )
        level._id_BD18 = [];

    level._id_BD18[self.unique_id] = self;

    if ( isdefined( level._id_B981._id_B34B ) && !isdefined( level._id_B1DF ) )
    {
        level endon( "draw_target_end" );

        while ( isdefined( level._id_C0D8 ) && level._id_C0D8 == gettime() )
            wait 0.05;

        level._id_C0D8 = gettime();

        if ( isalive( self ) )
            _id_C630::_id_C1B7();
    }

    self waittill( "death" );
    level._id_BD18[self.unique_id] = undefined;

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._id_C192 ) )
    {
        self._id_C192 = undefined;
        target_remove( self );
    }
}

_id_AA51()
{
    if ( isdefined( level.uavrig ) )
        return level.uavrig;

    var_0 = _id_C630::_id_CE9C();
    return var_0;
}

_id_CC3E( var_0 )
{
    foreach ( var_2 in level.players )
    {
        var_3 = common_scripts\utility::spawn_tag_origin();
        var_3.origin = self.origin;
        var_3._id_C176 = self;
        var_3 thread _id_C630::_id_D0F3( var_0, var_2 );
        var_2 _id_C1C7( var_3 );
        var_2 thread _id_C630::_id_B922();
    }
}

_id_C1C7( var_0 )
{
    if ( !isdefined( self._id_D456 ) )
        self._id_D456 = [];

    self._id_D456[self._id_D456.size] = var_0;
}

_id_CB1E()
{
    self giveweapon( "remote_missile_detonator" );
    self.remotemissile_actionslot = 4;
    thread _id_AB5A();
    common_scripts\utility::flag_clear( "predator_missile_launch_allowed" );
    self setactionslot( self.remotemissile_actionslot, "weapon", "remote_missile_detonator" );
}

_id_A950()
{
    level endon( "stop_uav_reload" );
    level endon( "special_op_terminated" );

    if ( common_scripts\utility::flag( "uav_reloading" ) )
    {
        if ( isdefined( level._id_B1DF ) )
            return;

        _id_C630::_id_CB86();

        if ( common_scripts\utility::flag( "uav_collecting_stats" ) )
        {
            level waittill( "uav_collecting_stats" );
            _id_C630::_id_AA28();
        }

        if ( isdefined( level._id_B1DF ) )
            return;

        level._id_B27A = undefined;

        if ( common_scripts\utility::flag( "uav_reloading" ) )
            level waittill( "uav_reloading" );

        if ( isdefined( level._id_B1DF ) )
            return;

        if ( !common_scripts\utility::flag( "uav_enabled" ) )
            return;

        if ( self getweaponammoclip( self._id_C277 ) < 1 )
        {
            _id_C630::_id_C563();
            return;
        }

        _id_C630::_id_B802();
        thread _id_C630::_id_CBA7( "uav_online" );
        thread _id_C630::_id_AF62();
    }
}

_id_AB5A()
{
    _id_C630::_id_BA47( ::_id_A950 );
}

_id_C597()
{
    _id_C630::_id_BA47();
}

_id_ACF2()
{
    return isdefined( level._id_D592 );
}
