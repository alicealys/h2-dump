// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_CE66()
{
    self endon( "head_tracking_end" );
    self endon( "death" );
    self._id_CE66 = 1;
    self._id_CA34 = self.name;

    for (;;)
    {
        wait 0.2;

        if ( distance( self.origin, level.player.origin ) <= 200 && maps\_utility::player_looking_at( self.origin ) )
        {
            self setlookatyawlimits( 60, 60, randomfloatrange( 0.5, 2.0 ) );
            self setlookatentity( level.player, 1, randomint( 5 ) == 0 );
            maps\_utility::_id_B13F( 5, 7 );
            self controlslinkto( 1 );
            maps\_utility::_id_B13F( 5, 7 );
        }
    }
}

_id_C834( var_0, var_1 )
{
    self notify( "head_tracking_end" );
    self._id_CE66 = 0;
    var_2 = isdefined( var_1 ) && var_1;

    if ( isdefined( var_0 ) && var_0 )
        self setlookatentity();
    else
        self controlslinkto( 1, var_2 );
}

_id_BEBA( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_0 = _id_C5FF( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level.player;

    if ( !isdefined( var_2 ) )
        var_2 = 200;

    if ( !isdefined( var_7 ) )
        var_7 = 0;

    if ( !isdefined( var_9 ) )
        var_9 = 10;

    if ( !isdefined( var_10 ) )
        var_10 = 0;

    var_3 = _id_D55B( var_3, 0, 180, 60 );
    var_4 = _id_D55B( var_4, 0, 180, 60 );
    var_5 = _id_D55B( var_5, 0, 90, 30 );
    var_6 = _id_D55B( var_6, 0, 90, 30 );
    var_11 = !isdefined( self._id_C171 );

    if ( var_11 )
        self._id_C171 = spawnstruct();

    var_12 = var_5 != 0 || var_6 != 0;
    _id_B764( var_0, var_1, var_12, var_7 );
    self._id_C171._id_C85E = 1;
    self._id_C171._id_D062 = var_2 * var_2;
    self._id_C171._id_B1EC = 0.125;
    self._id_C171._id_C33D = var_3;
    self._id_C171._id_CBC8 = var_4;
    self._id_C171._id_AE70 = var_5;
    self._id_C171._id_D273 = var_6;
    self._id_C171._id_AF7B = var_9;
    self._id_C171._id_BBC0 = var_10;

    if ( isdefined( var_8 ) )
        self._id_C171.paused = var_8;
    else if ( !isdefined( self._id_C171.paused ) )
        self._id_C171.paused = 0;

    if ( var_11 )
        thread _id_C382();
}

_id_B0AC()
{
    if ( isdefined( self._id_C171 ) )
        self._id_C171._id_C85E = 0;
}

_id_B6FF()
{
    if ( isdefined( self._id_C171 ) )
        self._id_C171.paused = 1;
}

_id_AC8B()
{
    if ( isdefined( self._id_C171 ) )
        self._id_C171.paused = 0;
}

#using_animtree("generic_human");

_id_B764( var_0, var_1, var_2, var_3 )
{
    var_4 = !isdefined( self._id_C171.type ) || self._id_C171.type != var_0;
    var_5 = !isdefined( self._id_C171.target ) || self._id_C171.target != var_1;
    var_6 = isdefined( self._id_C171._id_BE6F ) && self._id_C171._id_BE6F;
    var_7 = var_6 != var_2;
    var_8 = isdefined( self._id_C171._id_D366 ) && self._id_C171._id_D366;
    var_9 = var_8 != var_3;

    if ( var_4 )
    {
        [var_11, var_12] = _id_C7C8( self._id_C171.type );
        [var_14, var_15] = _id_C7C8( var_0 );
        _id_C1FF( %h2_headtracking_addleft, var_11, var_14 );
        _id_C1FF( %h2_headtracking_addright, var_12, var_15 );
    }

    if ( var_7 )
    {
        [var_17, var_18] = _id_B55E( self._id_C171._id_BE6F );
        [var_20, var_21] = _id_B55E( var_2 );
        _id_C1FF( %h2_headtracking_addup, var_17, var_20 );
        _id_C1FF( %h2_headtracking_adddown, var_18, var_21 );
    }

    if ( var_9 || var_5 )
    {
        var_22 = isdefined( self._id_C171.state ) && self._id_C171.state == ::_id_AADE;

        if ( var_22 )
        {
            if ( var_8 )
                self controlslinkto();
            else
                self setlookatentity( var_1, 1, 0, 1 );
        }
    }

    self._id_C171.type = var_0;
    self._id_C171.target = var_1;
    self._id_C171._id_BE6F = var_2;
    self._id_C171._id_D366 = var_3;
}

_id_C7C8( var_0 )
{
    if ( !isdefined( var_0 ) )
        return [ undefined, undefined ];

    return [[ var_0 ]]();
}

_id_B55E( var_0 )
{
    if ( isdefined( var_0 ) && var_0 )
        return [ %h2_lookat_head_45up, %h2_lookat_head_45down ];

    return [ undefined, undefined ];
}

_id_C1FF( var_0, var_1, var_2 )
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

_id_C382()
{
    self endon( "death" );
    self endon( "additive_headtracking_killed" );
    self._id_C171.state = ::_id_ACED;
    self._id_C171._id_D2B2 = 0;
    self._id_C171._id_B8D8 = 0;
    self._id_C171._id_C7EF = 0;
    self._id_C171._id_BB92 = 0;

    for (;;)
    {
        if ( _id_C040() )
        {
            if ( self._id_C171.state != ::_id_AADE )
            {
                if ( self._id_C171._id_D366 )
                    self setlookatentity( self._id_C171.target, 1, 0, 1 );

                self._id_C171.state = ::_id_AADE;
                _id_B53C();
            }
        }
        else if ( self._id_C171.state != ::_id_ACED && self._id_C171.state != ::_id_D204 )
        {
            if ( self._id_C171._id_D366 )
                self controlslinkto();

            self._id_C171.state = ::_id_D204;
            _id_B53C();
        }

        [[ self._id_C171.state ]]();
        waitframe();
    }
}

_id_C040()
{
    if ( !self._id_C171._id_C85E || self._id_C171.paused )
        return 0;

    if ( distancesquared( self.origin, self._id_C171.target.origin ) > self._id_C171._id_D062 )
        return 0;

    var_0 = _id_CF2F();

    if ( var_0 < 0 - self._id_C171._id_CBC8 || var_0 > self._id_C171._id_C33D )
        return 0;

    self._id_C171._id_A90F = var_0;
    return 1;
}

_id_B53C()
{
    self._id_C171._id_C6A5 = 1;
    self._id_C171._id_D3C5 = 1;
    self._id_C171._id_D2B2 = self._id_C171._id_B8D8;
    self._id_C171._id_C7EF = self._id_C171._id_BB92;
}

_id_D1CC()
{
    self clearanim( %h2_headtracking_addleft, 0 );
    self clearanim( %h2_headtracking_addright, 0 );
    self clearanim( %h2_headtracking_addup, 0 );
    self clearanim( %h2_headtracking_adddown, 0 );
    self._id_C171 = undefined;
    self notify( "additive_headtracking_killed" );
}

_id_ACED()
{
    if ( !self._id_C171._id_C85E )
    {
        if ( self getanimweight( %h2_headtracking_addleft ) == 0.0 && self getanimweight( %h2_headtracking_addright ) == 0.0 && self getanimweight( %h2_headtracking_addup ) == 0.0 && self getanimweight( %h2_headtracking_adddown ) == 0.0 )
            _id_D1CC();
    }
}

_id_AADE()
{
    var_0 = clamp( self._id_C171._id_A90F, 0 - self._id_C171._id_CBC8, self._id_C171._id_C33D );
    _id_BC40( var_0 );

    if ( self._id_C171._id_BE6F )
    {
        var_1 = _id_D188();
        var_1 = clamp( var_1, 0 - self._id_C171._id_D273, self._id_C171._id_AE70 );
        _id_B42A( var_1 );
    }
}

_id_C66B()
{
    var_0 = self getanimweight( %h2_headtracking_addup );
    var_1 = self getanimweight( %h2_headtracking_adddown );
    return ( var_1 - var_0 ) * 45;
}

_id_D204()
{
    _id_BC40( 0 );

    if ( self._id_C171._id_BE6F )
        _id_B42A( 0 );

    if ( self._id_C171._id_C6A5 == 1 && self._id_C171._id_D3C5 == 1 )
        self._id_C171.state = ::_id_ACED;
}

_id_BC40( var_0 )
{
    var_1 = self._id_C171._id_C6A5;

    if ( var_1 < 1 )
        var_1 = min( var_1 + self._id_C171._id_B1EC, 1 );
    else if ( abs( var_0 - self._id_C171._id_D2B2 ) > 10 )
        var_1 = self._id_C171._id_B1EC;

    self._id_C171._id_C6A5 = var_1;
    var_2 = var_1 * var_1 * ( 3 - 2 * var_1 );
    var_3 = var_2 * var_0 + ( 1 - var_2 ) * self._id_C171._id_D2B2;
    self setanimlimited( %h2_headtracking_addleft, clamp( var_3 / 90, 0, 2 ), 0.1 );
    self setanimlimited( %h2_headtracking_addright, clamp( var_3 / -90, 0, 2 ), 0.1 );
    self._id_C171._id_B8D8 = var_3;

    if ( var_1 == 1 )
        self._id_C171._id_D2B2 = var_0;
}

_id_B42A( var_0 )
{
    var_1 = self._id_C171._id_D3C5;

    if ( var_1 < 1 )
        var_1 = min( var_1 + self._id_C171._id_B1EC, 1 );
    else if ( abs( var_0 - self._id_C171._id_C7EF ) > 7.5 )
        var_1 = self._id_C171._id_B1EC;

    self._id_C171._id_D3C5 = var_1;
    var_2 = var_1 * var_1 * ( 3 - 2 * var_1 );
    var_3 = var_2 * var_0 + ( 1 - var_2 ) * self._id_C171._id_C7EF;
    self setanimlimited( %h2_headtracking_adddown, clamp( var_3 / 45, 0, 2 ), 0.1 );
    self setanimlimited( %h2_headtracking_addup, clamp( var_3 / -45, 0, 2 ), 0.1 );
    self._id_C171._id_BB92 = var_3;

    if ( var_1 == 1 )
        self._id_C171._id_C7EF = var_0;
}

_id_CF2F()
{
    var_0 = self._id_C171.target.origin;
    var_1 = self.origin;
    var_2 = vectortoyaw( var_0 - var_1 );
    var_3 = self.angles[1] + self._id_C171._id_BBC0;
    var_4 = angleclamp180( var_2 - var_3 );
    return var_4;
}

_id_D188()
{
    var_0 = self._id_C171.target geteye();
    var_1 = vectortoangles( var_0 - self geteye() );
    var_2 = angleclamp180( var_1[0] + self._id_C171._id_AF7B );
    var_3 = self gettagangles( "J_HEAD" );
    var_4 = anglestoaxis( var_3 );
    var_5 = vectortoangles( 0 - var_4["right"] );
    var_6 = angleclamp180( var_1[1] - var_5[1] );

    if ( var_6 < 0 - self._id_C171._id_CBC8 || var_6 > self._id_C171._id_C33D )
        return 0;

    var_7 = angleclamp180( var_5[0] );
    var_2 -= ( var_7 - _id_C66B() );
    return var_2;
}

_id_D55B( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_0 ) )
        return var_3;

    return clamp( var_0, var_1, var_2 );
}

_id_C5FF( var_0 )
{
    if ( !isdefined( var_0 ) )
        return ::_id_BDFC;

    if ( isstring( var_0 ) )
    {
        switch ( var_0 )
        {
            case "head":
                return ::_id_B29B;
            case "upperbody":
                return ::_id_BDFC;
            case "fullbody":
                return ::_id_BBC5;
            default:
                return;
        }
    }

    if ( _func_314( var_0 ) )
        return var_0;
}

_id_B29B()
{
    return [ %h2_lookat_head_90l, %h2_lookat_head_90r ];
}

_id_BDFC()
{
    return [ %h2_lookat_upper_90l, %h2_lookat_upper_90r ];
}

_id_BBC5()
{
    return [ %h2_lookat_full_90l, %h2_lookat_full_90r ];
}
