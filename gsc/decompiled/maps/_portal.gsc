// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init_portals()
{
    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" || getdvar( "beautiful_corner_security_cameras" ) == "1" || level.start_point == "no_game" )
        return;

    level.portals = spawnstruct();
    level.portals.global_wait = [];
    level.portals.groups = getentarray( "portal_group", "classname" );

    foreach ( var_1 in level.portals.groups )
    {
        var_1.iswaiting = 0;
        var_1.notifier = spawnstruct();

        if ( isdefined( var_1.script_flag ) && !common_scripts\utility::flag_exist( var_1.script_flag ) )
            common_scripts\utility::flag_init( var_1.script_flag );

        var_1 thread portal_group_activation();
    }
}

portal_group_add_global_flag_wait( var_0 )
{
    if ( isdefined( level.portals.global_wait[var_0] ) && common_scripts\utility::flag( var_0 ) )
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

    foreach ( var_2 in level.portals.groups )
    {
        if ( var_2.iswaiting )
            thread portal_group_waittill_string( var_0.msg, var_2.notifier, var_0.msgend );
    }
}

portal_group_activation()
{
    self endon( "entitydeleted" );

    if ( isdefined( self.script_ender ) )
        level endon( self.script_ender );

    enablepg( self.targetname, 0 );
    var_0 = undefined;
    var_1 = undefined;

    for (;;)
    {
        [var_0, var_1] = portal_group_wait();
        enablepg( self.targetname, 1 );

        if ( isdefined( level.flag[var_0] ) )
            common_scripts\utility::flag_waitopen( var_0 );
        else
            var_1 waittill( var_0 );

        enablepg( self.targetname, 0 );
        waitframe();
    }
}

portal_group_wait()
{
    self endon( "entitydeleted" );
    self.iswaiting = 1;

    if ( isdefined( self.script_flag ) && common_scripts\utility::flag_exist( self.script_flag ) )
        level thread portal_group_waittill_string( self.script_flag, self.notifier );

    foreach ( var_1 in level.portals.global_wait )
    {
        switch ( var_1.type )
        {
            case 0:
                if ( common_scripts\utility::flag( var_1.msg ) )
                    return [ var_1.msg, level ];

                level thread portal_group_waittill_string( var_1.msg, self.notifier );
                break;
            case 1:
                var_2 = var_1.msg;
                var_1.callon thread portal_group_waittill_string( var_2, self.notifier, var_1.msgend );
                break;
        }
    }

    self.notifier waittill( "returned", var_2, var_4 );
    self.iswaiting = 0;
    return [ var_2, var_4 ];
}

portal_group_waittill_string( var_0, var_1, var_2 )
{
    if ( var_0 != "death" )
        self endon( "death" );

    self waittill( var_0 );

    if ( isdefined( var_2 ) )
        var_1 notify( "returned", var_2, self );
    else
        var_1 notify( "returned", var_0, self );
}
