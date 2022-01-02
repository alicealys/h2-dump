// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36364()
{
    _ID14953();
    thread _ID14980();
}

_ID14980()
{
    self endon( "death" );
    self endon( "pain_death" );
    self._ID25506 = self.fixednode;
    self._ID25507 = self.fixednodesaferadius;

    for (;;)
    {
        _ID42407::_ID13027( "_stealth_stance_handler" );
        _ID42237::_ID14426( "_stealth_spotted" );
        self.fixednode = 1;
        self.fixednodesaferadius = 10;

        while ( _ID42407::_ID13019( "_stealth_stance_handler" ) && !_ID42237::_ID14385( "_stealth_spotted" ) )
        {
            _ID14986();
            var_0 = [];
            var_0 = _ID14983( var_0 );

            if ( var_0[self._ID1644._ID22585._ID35573] )
                thread _ID14981();
            else if ( _ID42407::_ID13019( "_stealth_stay_still" ) )
                thread _ID14984();
            else if ( !var_0[self._ID1644._ID5029._ID35581] && self._ID1644._ID5029._ID35581 != self._ID1644._ID22585._ID35573 )
                thread _ID14982();
            else if ( _ID42407::_ID13019( "_stealth_stance_change" ) )
                self notify( "_stealth_stance_dont_change" );

            wait 0.05;
        }

        self.fixednode = self._ID25506;
        self.fixednodesaferadius = self._ID25507;
        self._ID24424 = 1;
        self allowedstances( "stand", "crouch", "prone" );

        if ( _ID42407::_ID13019( "_stealth_stay_still" ) )
            thread _ID14984( 0 );
    }
}

_ID14986()
{
    switch ( self._ID1644._ID22585._ID35573 )
    {
        case "prone":
            self._ID1644._ID5029._ID35581 = "crouch";
            break;
        case "crouch":
            self._ID1644._ID5029._ID35581 = "stand";
            break;
        case "stand":
            self._ID1644._ID5029._ID35581 = "stand";
            break;
    }
}

_ID14983( var_0 )
{
    var_1 = getaispeciesarray( "bad_guys", "all" );
    var_0[self._ID1644._ID22585._ID35573] = 0;
    var_0[self._ID1644._ID5029._ID35581] = 0;

    foreach ( var_9, var_3 in var_1 )
    {
        var_4 = _ID14985( var_3, self._ID1644._ID22585._ID35573 );
        var_5 = _ID14985( var_3, self._ID1644._ID5029._ID35581 );
        var_6 = _ID42391::_ID14927() + var_4;
        var_7 = _ID42391::_ID14927( self._ID1644._ID5029._ID35581 ) + var_5;
        var_8 = distance( var_3.origin, self.origin );

        if ( var_8 < var_6 )
        {
            var_0[self._ID1644._ID22585._ID35573] = var_6;
            break;
        }

        if ( var_8 < var_7 )
            var_0[self._ID1644._ID5029._ID35581] = var_7;
    }

    return var_0;
}

_ID14985( var_0, var_1 )
{
    var_2 = anglestoforward( var_0.angles );
    var_3 = vectornormalize( self.origin - var_0.origin );
    var_4 = vectordot( var_2, var_3 );

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
        case "stand":
            self._ID24424 = 0.7;
            self allowedstances( "crouch" );
            break;
        case "crouch":
            if ( self._ID1644._ID5029._ID24845 )
                _ID14987();
            else
                self allowedstances( "prone" );

            break;
        case "prone":
            _ID14987();
            break;
    }
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
        case "prone":
            self allowedstances( "crouch" );
            break;
        case "crouch":
            self allowedstances( "stand" );
            break;
        case "stand":
            break;
    }
}

_ID14987()
{
    self notify( "friendly_stance_handler_stay_still" );

    if ( _ID42407::_ID13019( "_stealth_stay_still" ) )
        return;

    _ID42407::_ID13025( "_stealth_stay_still" );
    badplace_cylinder( "_stealth_" + self._ID39468 + "_prone", 0, self.origin, 30, 90, "bad_guys" );
    self.fixednodesaferadius = 5000;
}

_ID14984( var_0 )
{
    self endon( "friendly_stance_handler_stay_still" );

    if ( !isdefined( var_0 ) )
        var_0 = self._ID1644._ID5029._ID40930;

    wait(var_0);

    if ( !_ID42407::_ID13019( "_stealth_stay_still" ) )
        return;

    _ID42407::_ID13021( "_stealth_stay_still" );
    badplace_delete( "_stealth_" + self._ID39468 + "_prone" );
    self.fixednodesaferadius = 10;
}

_ID14953()
{
    _ID42407::_ID13024( "_stealth_stance_handler" );
    _ID42407::_ID13024( "_stealth_stay_still" );
    _ID42407::_ID13024( "_stealth_stance_change" );
    self._ID1644._ID5029._ID35581 = undefined;
    self._ID1644._ID5029._ID35579 = [];
    _ID14936();
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
    _ID14977( var_0, var_1, var_2 );
}

_ID14977( var_0, var_1, var_2 )
{
    if ( isdefined( var_0 ) )
    {
        foreach ( var_5, var_4 in var_0 )
            self._ID1644._ID5029._ID35579["looking_away"][var_5] = var_4;
    }

    if ( isdefined( var_1 ) )
    {
        foreach ( var_5, var_4 in var_1 )
            self._ID1644._ID5029._ID35579["neutral"][var_5] = var_4;
    }

    if ( isdefined( var_2 ) )
    {
        foreach ( var_5, var_4 in var_2 )
            self._ID1644._ID5029._ID35579["looking_towards"][var_5] = var_4;
    }
}
