// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init_portals()
{
    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" || getdvar( "beautiful_corner_security_cameras" ) == "1" || level._ID35897 == "no_game" )
        return;

    level.portals = spawnstruct();
    level.portals.global_wait = [];
    level.portals._ID17473 = getentarray( "portal_group", "classname" );

    foreach ( var_1 in level.portals._ID17473 )
    {
        var_1.iswaiting = 0;
        var_1.notifier = spawnstruct();

        if ( isdefined( var_1._ID31190 ) && !_ID42237::_ID14396( var_1._ID31190 ) )
            _ID42237::_ID14400( var_1._ID31190 );

        var_1 thread portal_group_activation();
    }
}

portal_group_add_global_flag_wait( var_0 )
{
    if ( isdefined( level.portals.global_wait[var_0] ) && _ID42237::_ID14385( var_0 ) )
        return;

    var_1 = spawnstruct();
    var_1.type = 0;
    var_1.msg = var_0;
    level.portals.global_wait[var_0] = var_1;
    level portal_group_add_global_wait( var_1 );
}

portal_group_add_global_notify_wait( var_0, var_1 )
{
    if ( isdefined( level.portals.global_wait[var_0] ) )
        return;

    var_2 = spawnstruct();
    var_2.type = 1;
    var_2.msg = var_0;
    var_2.callon = self;
    var_2.msgend = var_1;

    if ( !isdefined( self ) )
        var_2.callon = level;

    var_2.callon portal_group_add_global_wait( var_2 );
}

portal_group_add_global_wait( var_0 )
{
    level.portals.global_wait[var_0.msg] = var_0;

    foreach ( var_2 in level.portals._ID17473 )
    {
        if ( var_2.iswaiting )
            thread portal_group_waittill_string( var_0.msg, var_2.notifier, var_0.msgend );
    }
}

portal_group_activation()
{
    self endon( "entitydeleted" );

    if ( isdefined( self._ID31163 ) )
        level endon( self._ID31163 );

    enablepg( self.targetname, 0 );
    var_0 = undefined;
    var_1 = undefined;

    for (;;)
    {
        var_2 = portal_group_wait();
        var_0 = var_2[0];
        var_1 = var_2[1];
        var_clear_0
        enablepg( self.targetname, 1 );

        if ( isdefined( level._ID14385[var_0] ) )
            _ID42237::_ID14426( var_0 );
        else
            var_1 waittill( var_0 );

        enablepg( self.targetname, 0 );
        waittillframeend;
    }
}

portal_group_wait()
{
    self endon( "entitydeleted" );
    self.iswaiting = 1;

    if ( isdefined( self._ID31190 ) && _ID42237::_ID14396( self._ID31190 ) )
        level thread portal_group_waittill_string( self._ID31190, self.notifier );

    foreach ( var_1 in level.portals.global_wait )
    {
        switch ( var_1.type )
        {
            case 0:
                if ( _ID42237::_ID14385( var_1.msg ) )
                    return [ var_1.msg, level ];

                level thread portal_group_waittill_string( var_1.msg, self.notifier );
                continue;
            case 1:
                var_2 = var_1.msg;
                var_1.callon thread portal_group_waittill_string( var_2, self.notifier, var_1.msgend );
                continue;
        }
    }

    self.notifier waittill( "returned",  var_2, var_4  );
    self.iswaiting = 0;
    return [ var_2, var_4 ];
}

portal_group_waittill_string( var_0, var_1, var_2 )
{
    if ( var_0 != "death" )
        self endon( "death" );

    self waittill( var_0 );

    if ( isdefined( var_2 ) )
        var_1 notify( "returned",  var_2, self  );
    else
        var_1 notify( "returned",  var_0, self  );
}
