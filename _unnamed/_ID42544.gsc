// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19728()
{
    if ( isdefined( level._ID22445 ) )
        return;

    level._ID22445 = 1;
    thread _ID19729();
}

_ID19729()
{
    waitframe;
    _ID42237::_ID3350( _ID42237::_ID16640( "gag_stage_littlebird_unload", "script_noteworthy" ), ::_ID33060 );
    _ID42237::_ID3350( _ID42237::_ID16640( "gag_stage_littlebird_load", "script_noteworthy" ), ::_ID33059 );
}

_ID22452()
{
    self endon( "death" );
    _ID42407::_ID13024( "prep_unload" );
    _ID42407::_ID13027( "prep_unload" );
    _ID42413::_ID39215();
    var_0 = _ID15794();
    var_0 _ID22453( self );
    _ID42411::_ID40218( var_0 );
}

_ID33060()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        _ID22453( var_0 );
    }
}

_ID33059()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        var_0 setdeceleration( 6 );
        var_0 setacceleration( 4 );
        var_0 settargetyaw( self._ID65[1] );
        var_0 vehicle_setspeed( 20, 7, 7 );

        while ( distance( _ID42237::_ID14540( var_0._ID740 ), _ID42237::_ID14540( self._ID740 ) ) > 256 )
            wait 0.05;

        var_0 endon( "death" );
        var_0 thread _ID40185( 220, self );
        var_0 waittill( "near_goal" );
        var_0 vehicle_setspeed( 20, 22, 7 );
        var_0 thread _ID40185( 16, self );
        var_0 waittill( "near_goal" );
        var_0 _ID42413::_ID41147();
        var_0 notify( "touch_down",  self  );
        var_0 vehicle_setspeed( 20, 8, 7 );
    }
}

_ID22453( var_0 )
{
    var_0 setdeceleration( 6 );
    var_0 setacceleration( 4 );
    var_0 settargetyaw( self._ID65[1] );
    var_0 vehicle_setspeed( 20, 7, 7 );

    while ( distance( _ID42237::_ID14540( var_0._ID740 ), _ID42237::_ID14540( self._ID740 ) ) > 512 )
        wait 0.05;

    var_0 endon( "death" );
    var_1 = "landing" + randomint( 99999 );
    badplace_cylinder( var_1, 30, self._ID740, 200, 300, "axis", "allies", "neutral", "team3" );
    var_0 thread _ID40185( 424, self );
    var_0 waittill( "near_goal" );
    badplace_delete( var_1 );
    badplace_cylinder( var_1, 30, self._ID740, 200, 300, "axis", "allies", "neutral", "team3" );
    var_0 notify( "groupedanimevent",  "pre_unload"  );
    var_0 thread _ID42412::_ID3162( "pre_unload" );
    var_0 vehicle_setspeed( 20, 22, 7 );
    var_0 notify( "nearing_landing" );

    if ( isdefined( var_0._ID9548 ) )
    {
        switch ( var_0._ID9548 )
        {
            case "hover_then_land":
                var_0 vehicle_setspeed( 10, 22, 7 );
                var_0 thread _ID40185( 32, self, 64 );
                var_0 waittill( "near_goal" );
                var_0 notify( "hovering" );
                wait 1;
                break;
            default:
                break;
        }
    }

    var_0 thread _ID40185( 16, self );
    var_0 waittill( "near_goal" );
    badplace_delete( var_1 );
    _ID42407::_ID916();
    var_0 _ID42411::_ID40298();
    var_0 _ID42413::_ID41147();
    var_0 vehicle_setspeed( 20, 8, 7 );
    wait 0.2;
    var_0 notify( "stable_for_unlink" );
    wait 0.2;

    if ( isdefined( self._ID31195 ) )
        _ID42237::_ID14402( self._ID31195 );

    if ( isdefined( self._ID31197 ) )
        _ID42237::_ID14413( self._ID31197 );

    var_0 notify( "littlebird_liftoff" );
}

_ID15794()
{
    var_0 = self._ID9504;

    for (;;)
    {
        var_1 = _ID42407::_ID16261( var_0._ID1191, "targetname" );

        if ( isdefined( var_1._ID31497 ) )
            return var_1;

        var_0 = var_1;
    }
}

_ID40185( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0;

    self notify( "newpath" );

    if ( !isdefined( var_0 ) )
        var_0 = 2;

    self neargoalnotifydist( var_0 );
    self sethoverparams( 0, 0, 0 );
    self cleargoalyaw();
    self settargetyaw( _ID42237::_ID14539( var_1._ID65 )[1] );
    _ID42413::_ID1609( _ID42407::_ID17434( var_1._ID740 ) + ( 0, 0, var_2 ), 1 );
    self waittill( "goal" );
}
