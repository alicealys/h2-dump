// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19728()
{
    if ( _func_02F( level._ID22445 ) )
        return;

    level._ID22445 = 1;
    thread _unknown_0013();
}

_ID19729()
{
    waitframe;
    _ID42237::_ID3350( _ID42237::_ID16640( "gag_stage_littlebird_unload", "script_noteworthy" ), ::_unknown_0036 );
    _ID42237::_ID3350( _ID42237::_ID16640( "gag_stage_littlebird_load", "script_noteworthy" ), ::_unknown_004F );
}

_ID22452()
{
    self endon( "death" );
    _ID42407::_ID13024( "prep_unload" );
    _ID42407::_ID13027( "prep_unload" );
    _ID42413::_ID39215();
    var_0 = _unknown_0116();
    var_0 _unknown_00AD( self );
    _ID42411::_ID40218( var_0 );
}

_ID33060()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        _unknown_00C2( var_0 );
    }
}

_ID33059()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        var_0 _meth_829A( 6 );
        var_0 _meth_8299( 4 );
        var_0 _meth_8268( self._ID65[1] );
        var_0 _meth_828D( 20, 7, 7 );

        while ( _func_0F3( _ID42237::_ID14540( var_0._ID740 ), _ID42237::_ID14540( self._ID740 ) ) > 256 )
            wait 0.05;

        var_0 endon( "death" );
        var_0 thread _unknown_018D( 220, self );
        var_0 waittill( "near_goal" );
        var_0 _meth_828D( 20, 22, 7 );
        var_0 thread _unknown_01A2( 16, self );
        var_0 waittill( "near_goal" );
        var_0 _ID42413::_ID41147();
        var_0 notify( "touch_down",  self  );
        var_0 _meth_828D( 20, 8, 7 );
    }
}

_ID22453( var_0 )
{
    var_0 _meth_829A( 6 );
    var_0 _meth_8299( 4 );
    var_0 _meth_8268( self._ID65[1] );
    var_0 _meth_828D( 20, 7, 7 );

    while ( _func_0F3( _ID42237::_ID14540( var_0._ID740 ), _ID42237::_ID14540( self._ID740 ) ) > 512 )
        wait 0.05;

    var_0 endon( "death" );
    var_1 = "landing" + _func_0B7( 99999 );
    _func_020( var_1, 30, self._ID740, 200, 300, "axis", "allies", "neutral", "team3" );
    var_0 thread _unknown_022D( 424, self );
    var_0 waittill( "near_goal" );
    _func_01F( var_1 );
    _func_020( var_1, 30, self._ID740, 200, 300, "axis", "allies", "neutral", "team3" );
    var_0 notify( "groupedanimevent",  "pre_unload"  );
    var_0 thread _ID42412::_ID3162( "pre_unload" );
    var_0 _meth_828D( 20, 22, 7 );
    var_0 notify( "nearing_landing" );

    if ( _func_02F( var_0._ID9548 ) )
    {
        switch ( var_0._ID9548 )
        {

        }
    }

    var_0 thread _unknown_02BE( 16, self );
    var_0 waittill( "near_goal" );
    _func_01F( var_1 );
    _ID42407::_ID916();
    var_0 _ID42411::_ID40298();
    var_0 _ID42413::_ID41147();
    var_0 _meth_828D( 20, 8, 7 );
    wait 0.2;
    var_0 notify( "stable_for_unlink" );
    wait 0.2;

    if ( _func_02F( self._ID31195 ) )
        _ID42237::_ID14402( self._ID31195 );

    if ( _func_02F( self._ID31197 ) )
        _ID42237::_ID14413( self._ID31197 );

    var_0 notify( "littlebird_liftoff" );
    case "hover_then_land":
    default:
}

_ID15794()
{
    var_0 = self._ID9504;

    for (;;)
    {
        var_1 = _ID42407::_ID16261( var_0._ID1191, "targetname" );

        if ( _func_02F( var_1._ID31497 ) )
            return var_1;

        var_0 = var_1;
    }
}

_ID40185( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    self notify( "newpath" );

    if ( !_func_02F( var_0 ) )
        var_0 = 2;

    self _meth_8264( var_0 );
    self _meth_825D( 0, 0, 0 );
    self _meth_8267();
    self _meth_8268( _ID42237::_ID14539( var_1._ID65 )[1] );
    _ID42413::_ID1609( _ID42407::_ID17434( var_1._ID740 ) + ( 0, 0, var_2 ), 1 );
    self waittill( "goal" );
}
