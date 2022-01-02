// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36376()
{
    _ID14953();
    thread _ID14992();
}

_ID14992()
{
    self endon( "death" );
    self endon( "pain_death" );
    var_0 = self._ID1644._ID22585._ID9469;

    if ( isplayernumber( self ) )
        thread _ID27563();

    for (;;)
    {
        _ID42407::_ID13027( "_stealth_enabled" );
        self [[ var_0 ]]();
        self.maxvisibledist = _ID14927();
        wait 0.05;
    }
}

_ID14947()
{
    return length( self getvelocity() );
}

_ID14944()
{
    return _ID42407::_ID13023( "_stealth_in_shadow" ) && _ID42407::_ID13019( "_stealth_in_shadow" );
}

_ID27439()
{
    var_0 = length( self getvelocity() );
    var_1 = self._ID1644._ID22585._ID35573;
    var_2 = [];
    var_2["stand"] = 30;
    var_2["crouch"] = 15;
    var_2["prone"] = 4;
    var_3 = [];
    var_3["stand"] = 40;
    var_3["crouch"] = 25;
    var_3["prone"] = 10;

    if ( !var_0 )
        self._ID1644._ID22585._ID27577 = 0;
    else if ( var_0 > self._ID1644._ID22585._ID27577 )
    {
        self._ID1644._ID22585._ID27577 = self._ID1644._ID22585._ID27577 + var_2[var_1];

        if ( self._ID1644._ID22585._ID27577 > var_0 )
            self._ID1644._ID22585._ID27577 = var_0;
    }
    else if ( var_0 < self._ID1644._ID22585._ID27577 )
    {
        self._ID1644._ID22585._ID27577 = self._ID1644._ID22585._ID27577 - var_3[var_1];

        if ( self._ID1644._ID22585._ID27577 < 0 )
            self._ID1644._ID22585._ID27577 = 0;
    }

    return self._ID1644._ID22585._ID27577;
}

_ID14941( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        if ( isdefined( self._ID1644 ) )
            var_0 = self._ID1644._ID22585._ID35573;
        else
            var_0 = self._ID7._ID35573;
    }

    if ( isdefined( var_0 ) && var_0 == "back" )
        var_0 = "prone";

    if ( isdefined( self.type ) && self.type == "dog" )
    {
        if ( isdefined( self._ID35499 ) && self._ID35499 )
            var_0 = "crouch";
        else
            var_0 = "prone";
    }

    return var_0;
}

_ID14927( var_0 )
{
    if ( !isdefined( self._ID1644 ) )
        return;

    var_0 = _ID14941( var_0 );
    var_1 = level._ID1644._ID22585._ID10660;
    var_2 = level._ID1644._ID22585._ID10641[var_1][var_0];

    if ( self [[ self._ID1644._ID22585._ID16347 ]]() )
    {
        var_2 *= 0.5;

        if ( var_2 < level._ID1644._ID22585._ID10641["hidden"]["prone"] )
            var_2 = level._ID1644._ID22585._ID10641["hidden"]["prone"];
    }

    var_3 = self._ID1644._ID22585._ID24441[var_1][var_0];

    if ( isdefined( self._ID1645 ) && var_3 > self._ID1645 )
        var_3 = self._ID1645;

    return var_2 + var_3;
}

_ID14945()
{
    return self._ID7._ID28253;
}

_ID14942()
{
    return self.angles;
}

_ID14928()
{
    self._ID1644._ID22585._ID35573 = self [[ self._ID1644._ID22585._ID16617 ]]();
    self._ID1644._ID22585._ID25574 = self._ID1644._ID22585._ID35573;
}

_ID27563()
{
    self endon( "death" );
    self endon( "pain_death" );
    var_0 = self._ID1644._ID22585._ID16119;
    var_1 = self._ID1644._ID22585._ID16730;
    var_2 = self [[ var_0 ]]();

    for (;;)
    {
        _ID42407::_ID13027( "_stealth_enabled" );
        var_3 = undefined;

        if ( self [[ self._ID1644._ID22585._ID16347 ]]() )
            var_3 = 0;
        else
            var_3 = self [[ var_1 ]]();

        foreach ( var_9, var_5 in self._ID1644._ID22585._ID24441 )
        {
            foreach ( var_8, var_7 in var_5 )
                var_7 = var_3 * self._ID1644._ID22585._ID24443[var_9][var_8];
        }

        var_2 = self [[ var_0 ]]();
        wait 0.1;
    }
}

_ID14946()
{
    return self getstance();
}

_ID14943()
{
    return self getplayerangles();
}

_ID14929()
{
    var_0 = self [[ self._ID1644._ID22585._ID16617 ]]();

    if ( !self._ID1644._ID22585._ID35577 )
    {
        switch ( var_0 )
        {
            case "prone":
                if ( self._ID1644._ID22585._ID25574 != "prone" )
                    self._ID1644._ID22585._ID35577 = self._ID1644._ID22585._ID35578;

                break;
            case "crouch":
                if ( self._ID1644._ID22585._ID25574 == "stand" )
                    self._ID1644._ID22585._ID35577 = self._ID1644._ID22585._ID35578;

                break;
        }
    }

    if ( self._ID1644._ID22585._ID35577 )
    {
        self._ID1644._ID22585._ID35573 = self._ID1644._ID22585._ID25574;

        if ( self._ID1644._ID22585._ID35577 > 0.05 )
            self._ID1644._ID22585._ID35577 = self._ID1644._ID22585._ID35577 - 0.05;
        else
        {
            self._ID1644._ID22585._ID35577 = 0;
            self._ID1644._ID22585._ID35573 = var_0;
            self._ID1644._ID22585._ID25574 = var_0;
        }
    }
    else
    {
        self._ID1644._ID22585._ID35573 = var_0;
        self._ID1644._ID22585._ID25574 = var_0;
    }
}

_ID14953()
{
    _ID42407::_ID13024( "_stealth_in_shadow" );
    _ID42407::_ID13024( "_stealth_enabled" );
    _ID42407::_ID13025( "_stealth_enabled" );
    self._ID1644 = spawnstruct();
    self._ID1644._ID22585 = spawnstruct();

    if ( isplayernumber( self ) )
    {
        self._ID1644._ID22585._ID16617 = ::_ID14946;
        self._ID1644._ID22585._ID16119 = ::_ID14943;

        if ( level._ID8534 )
            self._ID1644._ID22585._ID16730 = ::_ID14947;
        else
        {
            self._ID1644._ID22585._ID16730 = ::_ID27439;
            self._ID1644._ID22585._ID27577 = 0;
        }

        self._ID1644._ID22585._ID9469 = ::_ID14929;
    }
    else
    {
        self._ID1644._ID22585._ID16617 = ::_ID14945;
        self._ID1644._ID22585._ID16119 = ::_ID14942;
        self._ID1644._ID22585._ID16730 = ::_ID14947;
        self._ID1644._ID22585._ID9469 = ::_ID14928;
    }

    self._ID1644._ID22585._ID16347 = ::_ID14944;
    self._ID1644._ID22585._ID35578 = 0.2;
    self._ID1644._ID22585._ID35577 = 0;
    self._ID1644._ID22585._ID25574 = self [[ self._ID1644._ID22585._ID16617 ]]();
    self._ID1644._ID22585._ID35573 = self [[ self._ID1644._ID22585._ID16617 ]]();
    self._ID1644._ID22585._ID35478 = [];
    self._ID1644._ID22585._ID24441 = [];
    self._ID1644._ID22585._ID24443 = [];
    self._ID1644._ID22585._ID24441["hidden"] = [];
    self._ID1644._ID22585._ID24441["hidden"]["prone"] = 0;
    self._ID1644._ID22585._ID24441["hidden"]["crouch"] = 0;
    self._ID1644._ID22585._ID24441["hidden"]["stand"] = 0;
    self._ID1644._ID22585._ID24441["spotted"] = [];
    self._ID1644._ID22585._ID24441["spotted"]["prone"] = 0;
    self._ID1644._ID22585._ID24441["spotted"]["crouch"] = 0;
    self._ID1644._ID22585._ID24441["spotted"]["stand"] = 0;
    _ID14935();
}

_ID14935()
{
    var_0 = [];
    var_0["prone"] = 3;
    var_0["crouch"] = 2;
    var_0["stand"] = 2;
    var_1 = [];
    var_1["prone"] = 2;
    var_1["crouch"] = 2;
    var_1["stand"] = 2;
    _ID14976( var_0, var_1 );
}

_ID14976( var_0, var_1 )
{
    if ( isdefined( var_0 ) )
    {
        self._ID1644._ID22585._ID24443["hidden"]["prone"] = var_0["prone"];
        self._ID1644._ID22585._ID24443["hidden"]["crouch"] = var_0["crouch"];
        self._ID1644._ID22585._ID24443["hidden"]["stand"] = var_0["stand"];
    }

    if ( isdefined( var_1 ) )
    {
        self._ID1644._ID22585._ID24443["spotted"]["prone"] = var_1["prone"];
        self._ID1644._ID22585._ID24443["spotted"]["crouch"] = var_1["crouch"];
        self._ID1644._ID22585._ID24443["spotted"]["stand"] = var_1["stand"];
    }
}
