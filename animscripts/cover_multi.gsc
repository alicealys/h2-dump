// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( !_func_02F( self._ID217 ) )
        self._ID217 = _func_1A5();

    self._ID217._ID36185 = "none";
    self._ID217._ID22013 = 0;
    self._ID217._ID20941 = 0;
    self._ID217._ID18563 = _unknown_0171();
    self._ID8893 = self._ID700;
    _unknown_0053();
    self waittill( "killanimscript" );
}

_ID319()
{
    _unknown_0161( self._ID217._ID36185 );
    self._ID217._ID14649 = undefined;
    self._ID217._ID22013 = undefined;
    self._ID217._ID20941 = undefined;
    animscripts\corner::_ID12614();
    animscripts\cover_behavior::_ID319( "multi" );
}

_ID8892()
{
    if ( !_func_02F( self._ID8893 ) )
        return;

    var_0 = self._ID8893 _meth_8034();

    if ( _func_02F( self._ID217._ID3368 ) )
    {
        if ( _unknown_00F8( self._ID217._ID3368, var_0 ) )
        {
            var_1 = _unknown_0146( self._ID217._ID3368 );
            self._ID217._ID3368 = undefined;
            return;
        }
    }

    if ( !_func_02F( self._ID322 ) )
    {
        _unknown_015D( _unknown_0143( var_0 ) );
        return;
    }

    var_2 = self._ID8893._ID740;
    var_3 = self._ID322._ID740;
    var_4 = var_3 - var_2;
    var_5 = _func_11A( var_4 );
    var_6 = _func_0F0( var_5[1] - self._ID8893._ID65[1] );
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

    var_9 = _unknown_01D7( var_8, var_0 );
    var_1 = _unknown_0214( var_9, var_7 );
}

_ID8888( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = self._ID700 _meth_8034();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] == var_0 )
            return 1;
    }

    return 0;
}

_ID8884( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = self._ID700 _meth_8034();

    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];

        if ( !_func_0D3( var_4 ) )
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
        if ( _unknown_024E( var_2[var_3], var_1 ) )
            return var_2[var_3];
    }
}

_ID8886( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = self._ID700 _meth_8034();

    var_1 = _func_0B7( var_0.size );
    return var_0[var_1];
}

_ID8885( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = self _meth_8034();

    if ( var_0[0] == "over" )
    {
        if ( self _meth_8036( "stand" ) )
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
        var_2 = self._ID700 _meth_8036( "stand" );
        var_3 = self._ID700 _meth_8036( "crouch" );

        if ( var_2 )
        {
            if ( self._ID217._ID36185 != "crouch" || !var_3 )
                _unknown_0341( "stand", var_1 );

            return 1;
        }
        else if ( var_3 )
        {
            if ( self._ID217._ID36185 != "stand" || !var_2 )
                _unknown_0363( "crouch", var_1 );

            return 1;
        }
        else
        {

        }
    }
    else
    {
        _unknown_0373( var_0, var_1 );
        return 1;
    }

    return 0;
}

_ID8890( var_0, var_1 )
{
    if ( self._ID217._ID36185 == var_0 )
        return 0;

    if ( !_func_02F( var_1 ) || var_1 < 0 )
        var_1 = 8000;

    var_2 = _func_03D();

    if ( self._ID217._ID22013 > 0 && var_2 - self._ID217._ID22013 < var_1 )
        return 0;

    self._ID217._ID22013 = var_2;
    thread _unknown_03D0( var_0 );
    return 1;
}

_ID8891( var_0 )
{
    var_1 = _ID8881();
    _unknown_0432( self._ID217._ID36185, self._ID7._ID28253, self._ID217._ID18563, var_0, self._ID7._ID28253, var_1 );
    _unknown_0428( self._ID217._ID36185 );
    self._ID217._ID36185 = var_0;
    self._ID217._ID18563 = var_1;
    _unknown_042D( self._ID217._ID36185 );
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

    }

    case "right":
    case "left":
    case "stand":
    case "crouch":
}
#using_animtree("generic_human");

_ID8880( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "killanimscript" );

    if ( var_0 == "none" || var_3 == "none" )
        return;

    var_6 = _unknown_0527( var_0, var_1, var_2, var_3, var_4, var_5 );

    if ( !_func_02F( var_6 ) )
        return;

    self _meth_8118( "cover_multi_trans", var_6, %body, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "cover_multi_trans" );
}

_ID8879()
{
    if ( !_func_02F( self._ID7._ID3291 ) || !_func_02F( self._ID7._ID3291["alert_idle_back"] ) )
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

    if ( var_0 _meth_8036( "stand" ) )
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
        var_6 += var_4 + "_back";
    else if ( var_3 == "stand" || var_3 == "crouch" )
        var_6 += var_3 + "_forward";
    else
        var_6 += var_3 + "_" + var_4;

    var_7 = self._ID3152;

    if ( !_func_02F( var_7 ) || !_func_02F( anim._ID3277[var_7]["cover_multi"] ) )
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
