// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( !isdefined( self._ID217 ) )
        self._ID217 = spawnstruct();

    self._ID217._ID36185 = "none";
    self._ID217._ID22013 = 0;
    self._ID217._ID20941 = 0;
    self._ID217._ID18563 = _ID8879();
    self._ID8893 = self._ID700;
    _ID8892();
    self waittill( "killanimscript" );
}

_ID319()
{
    _ID8882( self._ID217._ID36185 );
    self._ID217._ID14649 = undefined;
    self._ID217._ID22013 = undefined;
    self._ID217._ID20941 = undefined;
    animscripts\corner::_ID12614();
    animscripts\cover_behavior::_ID319( "multi" );
}

_ID8892()
{
    if ( !isdefined( self._ID8893 ) )
        return;

    var_0 = self._ID8893 getvalidcoverpeekouts();

    if ( isdefined( self._ID217._ID3368 ) )
    {
        if ( _ID8888( self._ID217._ID3368, var_0 ) )
        {
            var_1 = _ID8889( self._ID217._ID3368 );
            self._ID217._ID3368 = undefined;
            return;
        }
    }

    if ( !isdefined( self._ID322 ) )
    {
        _ID8889( _ID8886( var_0 ) );
        return;
    }

    var_2 = self._ID8893._ID740;
    var_3 = self._ID322._ID740;
    var_4 = var_3 - var_2;
    var_5 = vectortoangles( var_4 );
    var_6 = angleclamp180( var_5[1] - self._ID8893._ID65[1] );
    var_7 = undefined;

    if ( var_6 > 12 )
        var_8 = [ "left", "over", "right" ];
    else if ( var_6 < -12 )
        var_8 = [ "right", "over", "left" ];
    else if ( var_6 > 5 )
    {
        var_8 = [ [ "left", "over" ], "right" ];
        var_7 = 15000;
    }
    else if ( var_6 < -5 )
    {
        var_8 = [ [ "right", "over" ], "left" ];
        var_7 = 15000;
    }
    else
    {
        var_8 = [ "over", [ "right", "left" ] ];
        var_7 = 15000;
    }

    var_9 = _ID8884( var_8, var_0 );
    var_1 = _ID8889( var_9, var_7 );
}

_ID8888( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = self._ID700 getvalidcoverpeekouts();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] == var_0 )
            return 1;
    }

    return 0;
}

_ID8884( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = self._ID700 getvalidcoverpeekouts();

    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];

        if ( !isarray( var_4 ) )
        {
            var_2[var_2.size] = var_4;
            continue;
        }

        var_4 = _ID42237::_ID3320( var_4 );

        for ( var_5 = 0; var_5 < var_4.size; var_5++ )
            var_2[var_2.size] = var_4[var_5];
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( _ID8888( var_2[var_3], var_1 ) )
            return var_2[var_3];
    }
}

_ID8886( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = self._ID700 getvalidcoverpeekouts();

    var_1 = randomint( var_0.size );
    return var_0[var_1];
}

_ID8885( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = self getvalidcoverpeekouts();

    if ( var_0[0] == "over" )
    {
        if ( self doesnodeallowstance( "stand" ) )
            return "stand";
        else
            return "crouch";
    }

    return var_0[0];
}

_ID8889( var_0, var_1 )
{
    if ( var_0 == "over" )
    {
        var_2 = self._ID700 doesnodeallowstance( "stand" );
        var_3 = self._ID700 doesnodeallowstance( "crouch" );

        if ( var_2 )
        {
            if ( self._ID217._ID36185 != "crouch" || !var_3 )
                _ID8890( "stand", var_1 );

            return 1;
        }
        else if ( var_3 )
        {
            if ( self._ID217._ID36185 != "stand" || !var_2 )
                _ID8890( "crouch", var_1 );

            return 1;
        }
        else
        {

        }
    }
    else
    {
        _ID8890( var_0, var_1 );
        return 1;
    }

    return 0;
}

_ID8890( var_0, var_1 )
{
    if ( self._ID217._ID36185 == var_0 )
        return 0;

    if ( !isdefined( var_1 ) || var_1 < 0 )
        var_1 = 8000;

    var_2 = gettime();

    if ( self._ID217._ID22013 > 0 && var_2 - self._ID217._ID22013 < var_1 )
        return 0;

    self._ID217._ID22013 = var_2;
    thread _ID8891( var_0 );
    return 1;
}

_ID8891( var_0 )
{
    var_1 = _ID8879();
    _ID8880( self._ID217._ID36185, self._ID7._ID28253, self._ID217._ID18563, var_0, self._ID7._ID28253, var_1 );
    _ID8882( self._ID217._ID36185 );
    self._ID217._ID36185 = var_0;
    self._ID217._ID18563 = var_1;
    _ID8881( self._ID217._ID36185 );
}

_ID8881( var_0 )
{
    if ( var_0 == "left" )
        animscripts\cover_left::_ID616();
    else if ( var_0 == "right" )
        animscripts\cover_right::_ID616();
    else if ( var_0 == "stand" )
        animscripts\cover_stand::_ID616();
    else if ( var_0 == "crouch" )
        animscripts\cover_crouch::_ID616();
    else
    {

    }
}

_ID8882( var_0 )
{
    switch ( var_0 )
    {
        case "left":
            animscripts\cover_left::_ID319();
            break;
        case "right":
            animscripts\cover_right::_ID319();
            break;
        case "stand":
            animscripts\cover_stand::_ID319();
            break;
        case "crouch":
            animscripts\cover_crouch::_ID319();
            break;
    }
}
#using_animtree("generic_human");

_ID8880( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "killanimscript" );

    if ( var_0 == "none" || var_3 == "none" )
        return;

    var_6 = _ID8883( var_0, var_1, var_2, var_3, var_4, var_5 );

    if ( !isdefined( var_6 ) )
        return;

    self setflaggedanimknoball( "cover_multi_trans", var_6, %body, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "cover_multi_trans" );
}

_ID8879()
{
    if ( !isdefined( self._ID7._ID3291 ) || !isdefined( self._ID7._ID3291["alert_idle_back"] ) )
        return "forward";

    if ( _ID42237::_ID8201() )
        return "forward";
    else
        return "back";
}

_ID8887( var_0, var_1 )
{
    if ( var_1 == "left" || var_1 == "right" )
        return var_1;

    if ( var_0 doesnodeallowstance( "stand" ) )
        return "stand";

    return "crouch";
}

_ID8883( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( var_2 == "back" )
        var_6 = var_1 + "_back";
    else if ( var_0 == "stand" || var_0 == "crouch" )
        var_6 = var_0 + "_forward";
    else
        var_6 = var_0 + "_" + var_1;

    var_6 += "_to_";

    if ( var_5 == "back" )
        var_6 += ( var_4 + "_back" );
    else if ( var_3 == "stand" || var_3 == "crouch" )
        var_6 += ( var_3 + "_forward" );
    else
        var_6 += ( var_3 + "_" + var_4 );

    var_7 = self._ID3152;

    if ( !isdefined( var_7 ) || !isdefined( anim._ID3277[var_7]["cover_multi"] ) )
        var_7 = "soldier";

    return anim._ID3277[var_7]["cover_multi"][var_6];
}

_ID19585()
{
    var_0 = [];
    var_0["stand"] = [];
    var_0["stand"]["trans"] = [];
    var_0["stand"]["trans"]["left_stand"] = [];
    var_0["stand"]["trans"]["left_crouch"] = [];
    var_0["stand"]["trans"]["right_stand"] = [];
    var_0["stand"]["trans"]["right_crouch"] = [];
    var_0["stand"]["trans"]["front_stand"] = [];
    var_0["stand"]["trans"]["front_crouch"] = [];
    var_0["stand"]["trans"]["back_stand"] = [];
    var_0["stand"]["trans"]["back_crouch"] = [];
    var_0["left_stand_to_right_stand"] = undefined;
    var_0["left_stand_to_right_crouch"] = undefined;
    var_0["left_stand_to_stand_back"] = undefined;
    var_0["left_stand_to_stand_forward"] = undefined;
    var_0["left_stand_to_crouch_back"] = undefined;
    var_0["left_stand_to_crouch_forward"] = undefined;
    var_0["left_crouch_to_right_stand"] = undefined;
    var_0["left_crouch_to_right_crouch"] = undefined;
    var_0["left_crouch_to_stand_back"] = undefined;
    var_0["left_crouch_to_stand_forward"] = undefined;
    var_0["left_crouch_to_crouch_back"] = undefined;
    var_0["left_crouch_to_crouch_forward"] = undefined;
    var_0["crouch"] = [];
    anim._ID3277["soldier"]["cover_multi"] = var_0;
}
