// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36364()
{
    _unknown_013D();
    thread _unknown_0009();
}

_ID14980()
{
    self endon( "death" );
    self endon( "pain_death" );
    self._ID25506 = self._ID381;
    self._ID25507 = self._ID382;

    for (;;)
    {
        _ID42407::_ID13027( "_stealth_stance_handler" );
        _ID42237::_ID14426( "_stealth_spotted" );
        self._ID381 = 1;
        self._ID382 = 10;

        while ( _ID42407::_ID13019( "_stealth_stance_handler" ) && !_ID42237::_ID14385( "_stealth_spotted" ) )
        {
            _unknown_009C();
            var_0 = [];
            var_0 = _unknown_00BE( var_0 );

            if ( var_0[self._ID1644._ID22585._ID35573] )
                thread _unknown_0124();
            else if ( _ID42407::_ID13019( "_stealth_stay_still" ) )
                thread _unknown_019D();
            else if ( !var_0[self._ID1644._ID5029._ID35581] && self._ID1644._ID5029._ID35581 != self._ID1644._ID22585._ID35573 )
                thread _unknown_017F();
            else if ( _ID42407::_ID13019( "_stealth_stance_change" ) )
                self notify( "_stealth_stance_dont_change" );

            wait 0.05;
        }

        self._ID381 = self._ID25506;
        self._ID382 = self._ID25507;
        self._ID24424 = 1;
        self _meth_81D6( "stand", "crouch", "prone" );

        if ( _ID42407::_ID13019( "_stealth_stay_still" ) )
            thread _unknown_020B( 0 );
    }
}

_ID14986()
{
    switch ( self._ID1644._ID22585._ID35573 )
    {

    }

    case "crouch":
    case "stand":
    case "prone":
}

_ID14983( var_0 )
{
    var_1 = _func_0DF( "bad_guys", "all" );
    var_0[self._ID1644._ID22585._ID35573] = 0;
    var_0[self._ID1644._ID5029._ID35581] = 0;
    var_2 = var_1;

    for ( var_9 = _func_1DA( var_2 ); _func_02F( var_9 ); var_9 = _func_1BF( var_2, var_9 ) )
    {
        var_3 = var_2[var_9];
        var_4 = _unknown_0226( var_3, self._ID1644._ID22585._ID35573 );
        var_5 = _unknown_0235( var_3, self._ID1644._ID5029._ID35581 );
        var_6 = _ID42391::_ID14927() + var_4;
        var_7 = _ID42391::_ID14927( self._ID1644._ID5029._ID35581 ) + var_5;
        var_8 = _func_0F3( var_3._ID740, self._ID740 );

        if ( var_8 < var_6 )
        {
            var_0[self._ID1644._ID22585._ID35573] = var_6;
            break;
        }

        if ( var_8 < var_7 )
            var_0[self._ID1644._ID5029._ID35581] = var_7;
    }

    var_clear_7
    return var_0;
}

_ID14985( var_0, var_1 )
{
    var_2 = _func_11F( var_0._ID65 );
    var_3 = _func_119( self._ID740 - var_0._ID740 );
    var_4 = _func_0FB( var_2, var_3 );

    if ( var_4 > 0.3 )
        return self._ID1644._ID5029._ID35579["looking_towards"][var_1];
    else if ( var_4 < -0.7 )
        return self._ID1644._ID5029._ID35579["looking_away"][var_1];
    else
        return self._ID1644._ID5029._ID35579["neutral"][var_1];
}

_ID14981()
{
    self._ID24424 = 1;
    self notify( "_stealth_stance_down" );

    switch ( self._ID1644._ID22585._ID35573 )
    {

    }

    case "crouch":
    case "stand":
    case "prone":
}

_ID14982()
{
    self endon( "_stealth_stance_down" );
    self endon( "_stealth_stance_dont_change" );
    self endon( "_stealth_stance_handler" );

    if ( _ID42407::_ID13019( "_stealth_stance_change" ) )
        return;

    var_0 = 4;
    _ID42407::_ID13025( "_stealth_stance_change" );
    _ID42407::_ID1985( _ID42407::_ID1687, var_0 );
    _ID42407::_ID1985( _ID42407::_ID41116, "_stealth_stance_down" );
    _ID42407::_ID1985( _ID42407::_ID41116, "_stealth_stance_dont_change" );
    _ID42407::_ID1985( _ID42407::_ID41116, "_stealth_stance_handler" );
    _ID42407::_ID1890( _ID42407::_ID13021, "_stealth_stance_change" );
    thread _ID42407::_ID11232();
    wait(var_0);
    self._ID24424 = 1;

    switch ( self._ID1644._ID22585._ID35573 )
    {

    }

    endswitch( 3 )  case "crouch" loc_439 case "stand" loc_442 case "prone" loc_440
    case "stand":
    case "prone":
}

_ID14987()
{
    self notify( "friendly_stance_handler_stay_still" );

    if ( _ID42407::_ID13019( "_stealth_stay_still" ) )
        return;

    _ID42407::_ID13025( "_stealth_stay_still" );
    _func_020( "_stealth_" + self._ID39468 + "_prone", 0, self._ID740, 30, 90, "bad_guys" );
    self._ID382 = 5000;
}

_ID14984( var_0 )
{
    self endon( "friendly_stance_handler_stay_still" );

    if ( !_func_02F( var_0 ) )
        var_0 = self._ID1644._ID5029._ID40930;

    wait(var_0);

    if ( !_ID42407::_ID13019( "_stealth_stay_still" ) )
        return;

    _ID42407::_ID13021( "_stealth_stay_still" );
    _func_01F( "_stealth_" + self._ID39468 + "_prone" );
    self._ID382 = 10;
}

_ID14953()
{
    _ID42407::_ID13024( "_stealth_stance_handler" );
    _ID42407::_ID13024( "_stealth_stay_still" );
    _ID42407::_ID13024( "_stealth_stance_change" );
    self._ID1644._ID5029._ID35581 = undefined;
    self._ID1644._ID5029._ID35579 = [];
    _unknown_0533();
    self._ID1644._ID5029._ID24845 = 0;
    self._ID1644._ID5029._ID40930 = 2;
    self._ID1644._ID28153._ID34420 = 1;
}

_ID14936()
{
    var_0 = [];
    var_0["stand"] = 500;
    var_0["crouch"] = -400;
    var_0["prone"] = 0;
    var_1 = [];
    var_1["stand"] = 500;
    var_1["crouch"] = 200;
    var_1["prone"] = 50;
    var_2 = [];
    var_2["stand"] = 800;
    var_2["crouch"] = 400;
    var_2["prone"] = 100;
    _unknown_05BB( var_0, var_1, var_2 );
}

_ID14977( var_0, var_1, var_2 )
{
    if ( _func_02F( var_0 ) )
    {
        var_3 = var_0;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            self._ID1644._ID5029._ID35579["looking_away"][var_5] = var_4;
        }

        var_clear_2
    }

    if ( _func_02F( var_1 ) )
    {
        var_6 = var_1;

        for ( var_5 = _func_1DA( var_6 ); _func_02F( var_5 ); var_5 = _func_1BF( var_6, var_5 ) )
        {
            var_4 = var_6[var_5];
            self._ID1644._ID5029._ID35579["neutral"][var_5] = var_4;
        }

        var_clear_2
    }

    if ( _func_02F( var_2 ) )
    {
        var_7 = var_2;

        for ( var_5 = _func_1DA( var_7 ); _func_02F( var_5 ); var_5 = _func_1BF( var_7, var_5 ) )
        {
            var_4 = var_7[var_5];
            self._ID1644._ID5029._ID35579["looking_towards"][var_5] = var_4;
        }

        var_clear_2
    }
}
