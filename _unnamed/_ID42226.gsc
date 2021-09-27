// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID32691( var_0 )
{
    self _meth_80B8( var_0[_func_0B7( var_0.size )] );
}

_ID28388( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        _func_14C( var_0[var_1] );
}

_ID3584( var_0, var_1 )
{
    if ( !_func_02F( level._ID7309 ) )
        level._ID7309 = [];

    if ( !_func_02F( level._ID7309[var_0] ) )
        level._ID7309[var_0] = _func_0B7( var_1.size );

    var_2 = level._ID7309[var_0] + 1 % var_1.size;

    if ( _func_02F( self._ID31091 ) )
        var_2 = self._ID31091 % var_1.size;

    level._ID7309[var_0] = var_2;
    _unknown_007E( var_1[var_2] );
}

_ID32651( var_0 )
{
    var_1 = 1;

    if ( _func_02F( self.cheat ) && _func_02F( self.cheat._ID51310 ) && self.cheat._ID51310 )
    {
        var_1 = 0;
        self.cheat.pineapple_previoushead = var_0;
    }

    if ( _func_02F( self.cheat ) && _func_02F( self.cheat._ID50247 ) && self.cheat._ID50247 )
    {
        var_1 = 0;
        self.cheat._ID53636 = var_0;
    }

    if ( _func_02F( self._ID43135 ) && _func_02F( self._ID43135.polterghostmode ) && self._ID43135.polterghostmode )
    {
        var_1 = 0;
        self._ID43135.polterghostmode_previousmodel = var_0;
    }

    if ( !var_1 )
        return;

    if ( _func_02F( self._ID18304 ) )
        self _meth_802A( self._ID18304 );

    self _meth_801D( var_0, "", 1 );
    self._ID18304 = var_0;
}

sethatmodel( var_0 )
{
    if ( _func_02F( self._ID18272 ) )
        self _meth_802A( self._ID18272 );

    self _meth_801D( var_0, "", 1 );
    self._ID18272 = var_0;
}

_ID3583( var_0, var_1 )
{
    if ( !_func_02F( level._ID7308 ) )
        level._ID7308 = [];

    if ( !_func_02F( level._ID7308[var_0] ) )
        level._ID7308[var_0] = _func_0B7( var_1.size );

    var_2 = level._ID7308[var_0] + 1 % var_1.size;
    level._ID7308[var_0] = var_2;
    self _meth_801D( var_1[var_2] );
    self._ID18272 = var_1[var_2];
}

_ID24732()
{
    self _meth_802B();
    var_0 = self._ID3031;

    if ( !_func_02F( var_0 ) )
        return;

    self._ID3031 = "none";
    self [[ anim._ID28778 ]]( var_0 );
}

_ID30725()
{
    var_0["gunHand"] = self._ID3031;
    var_0["gunInHand"] = self._ID3032;
    var_0["model"] = self._ID669;
    var_0["hatModel"] = self._ID18272;

    if ( _func_02F( self._ID680 ) )
    {
        var_0["name"] = self._ID680;
        jump loc_20F
    }

    var_1 = self _meth_802C();

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        var_0["attach"][var_2]["model"] = self _meth_802D( var_2 );
        var_0["attach"][var_2]["tag"] = self _meth_802E( var_2 );
    }

    return var_0;
}

_ID22464( var_0 )
{
    self _meth_802B();
    self._ID3031 = var_0["gunHand"];
    self._ID3032 = var_0["gunInHand"];
    self _meth_80B8( var_0["model"] );
    self._ID18272 = var_0["hatModel"];

    if ( _func_02F( var_0["name"] ) )
    {
        self._ID680 = var_0["name"];
        jump loc_29F
    }

    var_1 = var_0["attach"];
    var_2 = var_1.size;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
        self _meth_801D( var_1[var_3]["model"], var_1[var_3]["tag"] );
}

_ID814( var_0 )
{
    if ( _func_02F( var_0["name"] ) )
        jump loc_2E8

    _func_14C( var_0["model"] );
    var_1 = var_0["attach"];
    var_2 = var_1.size;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
        _func_14C( var_1[var_3]["model"] );
}

_ID15942( var_0 )
{
    if ( _func_02F( self._ID170 ) )
        var_1 = _func_129( self._ID170, "_" );
    else
        var_1 = [];

    if ( !_ID42237::_ID20913() )
    {
        if ( _func_02F( self._ID778["modelIndex"] ) && self._ID778["modelIndex"] < var_0 )
            return self._ID778["modelIndex"];

        var_2 = _func_0B7( var_0 );
        self._ID778["modelIndex"] = var_2;
        return var_2;
    }
    else if ( var_1.size <= 2 )
        return _func_0B7( var_0 );

    var_3 = "auto";
    var_2 = undefined;
    var_4 = var_1[2];

    if ( _func_02F( self._ID31091 ) )
        var_2 = self._ID31091;

    if ( _func_02F( self._ID31090 ) )
    {
        var_5 = "grouped";
        var_3 = "group_" + self._ID31090;
    }

    if ( !_func_02F( level._ID7310 ) )
        level._ID7310 = [];

    if ( !_func_02F( level._ID7310[var_4] ) )
        level._ID7310[var_4] = [];

    if ( !_func_02F( level._ID7310[var_4][var_3] ) )
        _unknown_0428( var_4, var_3, var_0 );

    if ( !_func_02F( var_2 ) )
    {
        var_2 = _unknown_0419( var_4, var_3 );

        if ( !_func_02F( var_2 ) )
            var_2 = _func_0B7( 5000 );
    }

    while ( var_2 >= var_0 )
        var_2 -= var_0;

    level._ID7310[var_4][var_3][var_2]++;
    return var_2;
}

_ID15801( var_0, var_1 )
{
    var_2 = [];
    var_3 = level._ID7310[var_0][var_1][0];
    var_2[0] = 0;

    for ( var_4 = 1; var_4 < level._ID7310[var_0][var_1].size; var_4++ )
    {
        if ( level._ID7310[var_0][var_1][var_4] > var_3 )
            continue;

        if ( level._ID7310[var_0][var_1][var_4] < var_3 )
        {
            var_2 = [];
            var_3 = level._ID7310[var_0][var_1][var_4];
        }

        var_2[var_2.size] = var_4;
    }

    return _unknown_04B0( var_2 );
}

_ID19931( var_0, var_1, var_2 )
{
    for ( var_3 = 0; var_3 < var_2; var_3++ )
        level._ID7310[var_0][var_1][var_3] = 0;
}

_ID15950( var_0 )
{
    return _func_0B7( var_0 );
}

_ID28945( var_0 )
{
    return var_0[_func_0B7( var_0.size )];
}
