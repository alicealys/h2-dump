// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init_portals()
{
    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" || _func_039( "beautiful_corner_security_cameras" ) == "1" || level._ID35897 == "no_game" )
        return;

    level.portals = _func_1A5();
    level.portals.global_wait = [];
    level.portals._ID17473 = _func_1A2( "portal_group", "classname" );
    var_0 = level.portals._ID17473;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1.iswaiting = 0;
        var_1.notifier = _func_1A5();

        if ( _func_02F( var_1._ID31190 ) && !_ID42237::_ID14396( var_1._ID31190 ) )
            _ID42237::_ID14400( var_1._ID31190 );

        var_1 thread _unknown_00FD();
    }

    var_clear_2
    var_clear_0
}

portal_group_add_global_flag_wait( var_0 )
{
    if ( _func_02F( level.portals.global_wait[var_0] ) && _ID42237::_ID14385( var_0 ) )
        return;

    var_1 = _func_1A5();
    var_1._ID1244 = 0;
    var_1.msg = var_0;
    level.portals.global_wait[var_0] = var_1;
    level _unknown_0123( var_1 );
}

portal_group_add_global_notify_wait( var_0, var_1 )
{
    if ( _func_02F( level.portals.global_wait[var_0] ) )
        return;

    var_2 = _func_1A5();
    var_2._ID1244 = 1;
    var_2.msg = var_0;
    var_2.callon = self;
    var_2.msgend = var_1;

    if ( !_func_02F( self ) )
        var_2.callon = level;

    var_2.callon _unknown_0161( var_2 );
}

portal_group_add_global_wait( var_0 )
{
    level.portals.global_wait[var_0.msg] = var_0;
    var_1 = level.portals._ID17473;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2.iswaiting )
            thread _unknown_0201( var_0.msg, var_2.notifier, var_0.msgend );
    }

    var_clear_2
    var_clear_0
}

portal_group_activation()
{
    self endon( "entitydeleted" );

    if ( _func_02F( self._ID31163 ) )
        level endon( self._ID31163 );

    _func_31A( self._ID1193, 0 );
    var_0 = undefined;
    var_1 = undefined;

    for (;;)
    {
        var_2 = _unknown_01F5();
        var_0 = var_2[0];
        var_1 = var_2[1];
        var_clear_0
        _func_31A( self._ID1193, 1 );

        if ( _func_02F( level._ID14385[var_0] ) )
            _ID42237::_ID14426( var_0 );
        else
            var_1 waittill( var_0 );

        _func_31A( self._ID1193, 0 );
        waittillframeend;
    }
}

portal_group_wait()
{
    self endon( "entitydeleted" );
    self.iswaiting = 1;

    if ( _func_02F( self._ID31190 ) && _ID42237::_ID14396( self._ID31190 ) )
        level thread _unknown_027C( self._ID31190, self.notifier );

    var_0 = level.portals.global_wait;

    for ( var_3 = _func_1DA( var_0 ); _func_02F( var_3 ); var_3 = _func_1BF( var_0, var_3 ) )
    {
        var_1 = var_0[var_3];

        switch ( var_1._ID1244 )
        {

        }

        case 1:
        case 0:
    }

    var_clear_2
    var_clear_0
    self.notifier waittill( "returned",  var_4, var_4  );
    self.iswaiting = 0;
    return [ var_2, var_4 ];
}

portal_group_waittill_string( var_0, var_1, var_2 )
{
    if ( var_0 != "death" )
        self endon( "death" );

    self waittill( var_0 );

    if ( _func_02F( var_2 ) )
        var_1 notify( "returned",  var_2, self  );
    else
        var_1 notify( "returned",  var_0, self  );
}
