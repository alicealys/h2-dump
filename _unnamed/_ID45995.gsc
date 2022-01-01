// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52838()
{
    self endon( "head_tracking_end" );
    self endon( "death" );
    self._ID52838 = 1;
    self._ID51764 = self._ID680;

    for (;;)
    {
        wait 0.2;

        if ( distance( self._ID740, level._ID794._ID740 ) <= 200 && _ID42407::_ID27540( self._ID740 ) )
        {
            self setlookatyawlimits( 60, 60, randomfloatrange( 0.5, 2.0 ) );
            self setlookatentity( level._ID794, 1, randomint( 5 ) == 0 );
            _ID42407::_ID45375( 5, 7 );
            self controlslinkto( 1 );
            _ID42407::_ID45375( 5, 7 );
        }
    }
}

_ID51252( var_0, var_1 )
{
    self notify( "head_tracking_end" );
    self._ID52838 = 0;
    var_2 = isdefined( var_1 ) && var_1;

    if ( isdefined( var_0 ) && var_0 )
        self setlookatentity();
    else
        self controlslinkto( 1, var_2 );
}

_ID48826( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_0 = _ID50687( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level._ID794;

    if ( !isdefined( var_2 ) )
        var_2 = 200;

    if ( !isdefined( var_7 ) )
        var_7 = 0;

    if ( !isdefined( var_9 ) )
        var_9 = 10;

    if ( !isdefined( var_10 ) )
        var_10 = 0;

    var_3 = _ID54619( var_3, 0, 180, 60 );
    var_4 = _ID54619( var_4, 0, 180, 60 );
    var_5 = _ID54619( var_5, 0, 90, 30 );
    var_6 = _ID54619( var_6, 0, 90, 30 );
    var_11 = !isdefined( self._ID49521 );

    if ( var_11 )
        self._ID49521 = spawnstruct();

    var_12 = var_5 != 0 || var_6 != 0;
    _ID46948( var_0, var_1, var_12, var_7 );
    self._ID49521._ID51294 = 1;
    self._ID49521._ID53346 = var_2 * var_2;
    self._ID49521._ID45548 = 0.125;
    self._ID49521._ID49981 = var_3;
    self._ID49521._ID52168 = var_4;
    self._ID49521._ID44656 = var_5;
    self._ID49521._ID53875 = var_6;
    self._ID49521._ID44923 = var_9;
    self._ID49521._ID48064 = var_10;

    if ( isdefined( var_8 ) )
        self._ID49521._ID26401 = var_8;
    else if ( !isdefined( self._ID49521._ID26401 ) )
        self._ID49521._ID26401 = 0;

    if ( var_11 )
        thread _ID50050();
}

_ID45228()
{
    if ( isdefined( self._ID49521 ) )
        self._ID49521._ID51294 = 0;
}

_ID46847()
{
    if ( isdefined( self._ID49521 ) )
        self._ID49521._ID26401 = 1;
}

_ID44171()
{
    if ( isdefined( self._ID49521 ) )
        self._ID49521._ID26401 = 0;
}
#using_animtree("generic_human");

_ID46948( var_0, var_1, var_2, var_3 )
{
    var_4 = !isdefined( self._ID49521._ID1244 ) || self._ID49521._ID1244 != var_0;
    var_5 = !isdefined( self._ID49521._ID1191 ) || self._ID49521._ID1191 != var_1;
    var_6 = isdefined( self._ID49521._ID48751 ) && self._ID49521._ID48751;
    var_7 = var_6 != var_2;
    var_8 = isdefined( self._ID49521._ID54118 ) && self._ID49521._ID54118;
    var_9 = var_8 != var_3;

    if ( var_4 )
    {
        var_10 = _ID51144( self._ID49521._ID1244 );
        var_11 = var_10[0];
        var_12 = var_10[1];
        var_clear_2
        var_13 = _ID51144( var_0 );
        var_14 = var_13[0];
        var_15 = var_13[1];
        var_clear_2
        _ID49663( %h2_headtracking_addleft, var_11, var_14 );
        _ID49663( %h2_headtracking_addright, var_12, var_15 );
    }

    if ( var_7 )
    {
        var_16 = _ID46430( self._ID49521._ID48751 );
        var_17 = var_16[0];
        var_18 = var_16[1];
        var_clear_2
        var_19 = _ID46430( var_2 );
        var_20 = var_19[0];
        var_21 = var_19[1];
        var_clear_2
        _ID49663( %h2_headtracking_addup, var_17, var_20 );
        _ID49663( %h2_headtracking_adddown, var_18, var_21 );
    }

    if ( var_9 || var_5 )
    {
        var_22 = isdefined( self._ID49521._ID36185 ) && self._ID49521._ID36185 == ::_ID43742;

        if ( var_22 )
        {
            if ( var_8 )
                self controlslinkto();
            else
                self setlookatentity( var_1, 1, 0, 1 );
        }
    }

    self._ID49521._ID1244 = var_0;
    self._ID49521._ID1191 = var_1;
    self._ID49521._ID48751 = var_2;
    self._ID49521._ID54118 = var_3;
}

_ID51144( var_0 )
{
    if ( !isdefined( var_0 ) )
        return [ undefined, undefined ];

    return [[ var_0 ]]();
}

_ID46430( var_0 )
{
    if ( isdefined( var_0 ) && var_0 )
        return [ %h2_lookat_head_45up, %h2_lookat_head_45down ];

    return [ undefined, undefined ];
}

_ID49663( var_0, var_1, var_2 )
{
    if ( isdefined( var_1 ) && isdefined( var_2 ) )
    {
        self clearanim( var_1, 0.35 );
        self setanimlimited( var_2, 1, 0.35 );
        return;
    }

    if ( isdefined( var_2 ) )
    {
        self setanimlimited( var_2, 1, 0 );
        self setanimlimited( var_0, 0, 0 );
        return;
    }

    if ( isdefined( var_1 ) )
        self clearanim( var_0, 0.35 );
}

_ID50050()
{
    self endon( "death" );
    self endon( "additive_headtracking_killed" );
    self._ID49521._ID36185 = ::_ID44269;
    self._ID49521._ID53938 = 0;
    self._ID49521._ID47320 = 0;
    self._ID49521._ID51183 = 0;
    self._ID49521._ID48018 = 0;

    for (;;)
    {
        if ( _ID49216() )
        {
            if ( self._ID49521._ID36185 != ::_ID43742 )
            {
                if ( self._ID49521._ID54118 )
                    self setlookatentity( self._ID49521._ID1191, 1, 0, 1 );

                self._ID49521._ID36185 = ::_ID43742;
                _ID46396();
            }
        }
        else if ( self._ID49521._ID36185 != ::_ID44269 && self._ID49521._ID36185 != ::_ID53764 )
        {
            if ( self._ID49521._ID54118 )
                self controlslinkto();

            self._ID49521._ID36185 = ::_ID53764;
            _ID46396();
        }

        [[ self._ID49521._ID36185 ]]();
        waittillframeend;
    }
}

_ID49216()
{
    if ( !self._ID49521._ID51294 || self._ID49521._ID26401 )
        return 0;

    if ( distancesquared( self._ID740, self._ID49521._ID1191._ID740 ) > self._ID49521._ID53346 )
        return 0;

    var_0 = _ID53039();

    if ( var_0 < 0 - self._ID49521._ID52168 || var_0 > self._ID49521._ID49981 )
        return 0;

    self._ID49521._ID43279 = var_0;
    return 1;
}

_ID46396()
{
    self._ID49521._ID50853 = 1;
    self._ID49521._ID54213 = 1;
    self._ID49521._ID53938 = self._ID49521._ID47320;
    self._ID49521._ID51183 = self._ID49521._ID48018;
}

_ID53708()
{
    self clearanim( %h2_headtracking_addleft, 0 );
    self clearanim( %h2_headtracking_addright, 0 );
    self clearanim( %h2_headtracking_addup, 0 );
    self clearanim( %h2_headtracking_adddown, 0 );
    self._ID49521 = undefined;
    self notify( "additive_headtracking_killed" );
}

_ID44269()
{
    if ( !self._ID49521._ID51294 )
    {
        if ( self getanimweight( %h2_headtracking_addleft ) == 0.0 && self getanimweight( %h2_headtracking_addright ) == 0.0 && self getanimweight( %h2_headtracking_addup ) == 0.0 && self getanimweight( %h2_headtracking_adddown ) == 0.0 )
            _ID53708();
    }
}

_ID43742()
{
    var_0 = clamp( self._ID49521._ID43279, 0 - self._ID49521._ID52168, self._ID49521._ID49981 );
    _ID48192( var_0 );

    if ( self._ID49521._ID48751 )
    {
        var_1 = _ID53640();
        var_1 = clamp( var_1, 0 - self._ID49521._ID53875, self._ID49521._ID44656 );
        _ID46122( var_1 );
    }
}

_ID50795()
{
    var_0 = self getanimweight( %h2_headtracking_addup );
    var_1 = self getanimweight( %h2_headtracking_adddown );
    return ( var_1 - var_0 ) * 45;
}

_ID53764()
{
    _ID48192( 0 );

    if ( self._ID49521._ID48751 )
        _ID46122( 0 );

    if ( self._ID49521._ID50853 == 1 && self._ID49521._ID54213 == 1 )
        self._ID49521._ID36185 = ::_ID44269;
}

_ID48192( var_0 )
{
    var_1 = self._ID49521._ID50853;

    if ( var_1 < 1 )
        var_1 = min( var_1 + self._ID49521._ID45548, 1 );
    else if ( abs( var_0 - self._ID49521._ID53938 ) > 10 )
        var_1 = self._ID49521._ID45548;

    self._ID49521._ID50853 = var_1;
    var_2 = var_1 * var_1 * ( 3 - 2 * var_1 );
    var_3 = var_2 * var_0 + ( 1 - var_2 ) * self._ID49521._ID53938;
    self setanimlimited( %h2_headtracking_addleft, clamp( var_3 / 90, 0, 2 ), 0.1 );
    self setanimlimited( %h2_headtracking_addright, clamp( var_3 / -90, 0, 2 ), 0.1 );
    self._ID49521._ID47320 = var_3;

    if ( var_1 == 1 )
        self._ID49521._ID53938 = var_0;
}

_ID46122( var_0 )
{
    var_1 = self._ID49521._ID54213;

    if ( var_1 < 1 )
        var_1 = min( var_1 + self._ID49521._ID45548, 1 );
    else if ( abs( var_0 - self._ID49521._ID51183 ) > 7.5 )
        var_1 = self._ID49521._ID45548;

    self._ID49521._ID54213 = var_1;
    var_2 = var_1 * var_1 * ( 3 - 2 * var_1 );
    var_3 = var_2 * var_0 + ( 1 - var_2 ) * self._ID49521._ID51183;
    self setanimlimited( %h2_headtracking_adddown, clamp( var_3 / 45, 0, 2 ), 0.1 );
    self setanimlimited( %h2_headtracking_addup, clamp( var_3 / -45, 0, 2 ), 0.1 );
    self._ID49521._ID48018 = var_3;

    if ( var_1 == 1 )
        self._ID49521._ID51183 = var_0;
}

_ID53039()
{
    var_0 = self._ID49521._ID1191._ID740;
    var_1 = self._ID740;
    var_2 = vectortoyaw( var_0 - var_1 );
    var_3 = self._ID65[1] + self._ID49521._ID48064;
    var_4 = angleclamp180( var_2 - var_3 );
    return var_4;
}

_ID53640()
{
    var_0 = self._ID49521._ID1191 geteye();
    var_1 = vectortoangles( var_0 - self geteye() );
    var_2 = angleclamp180( var_1[0] + self._ID49521._ID44923 );
    var_3 = self gettagangles( "J_HEAD" );
    var_4 = anglestoaxis( var_3 );
    var_5 = vectortoangles( 0 - var_4["right"] );
    var_6 = angleclamp180( var_1[1] - var_5[1] );

    if ( var_6 < 0 - self._ID49521._ID52168 || var_6 > self._ID49521._ID49981 )
        return 0;

    var_7 = angleclamp180( var_5[0] );
    var_2 -= ( var_7 - _ID50795() );
    return var_2;
}

_ID54619( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_0 ) )
        return var_3;

    return clamp( var_0, var_1, var_2 );
}

_ID50687( var_0 )
{
    if ( !isdefined( var_0 ) )
        return ::_ID48636;

    if ( isstring( var_0 ) )
    {
        switch ( var_0 )
        {
            case "head":
                return ::_ID45723;
            case "upperbody":
                return ::_ID48636;
            case "fullbody":
                return ::_ID48069;
            default:
                return;
        }
    }

    if ( _func_314( var_0 ) )
        return var_0;
}

_ID45723()
{
    return [ %h2_lookat_head_90l, %h2_lookat_head_90r ];
}

_ID48636()
{
    return [ %h2_lookat_upper_90l, %h2_lookat_upper_90r ];
}

_ID48069()
{
    return [ %h2_lookat_full_90l, %h2_lookat_full_90r ];
}
