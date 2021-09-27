// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    _func_14F( "h2_damage_feedback" );
    _func_14F( "h2_damage_feedback_headshot" );
    _ID42407::_ID12469();
    _ID42407::_ID12470();
    _ID42237::_ID3350( level._ID805, ::_unknown_0029 );
    _ID42237::_ID3350( level._ID805, _ID42407::_ID15503 );
    _ID42237::_ID3350( level._ID805, ::_unknown_0073 );
}

_ID19666()
{
    self._ID19130 = _func_1B0( self );
    self._ID19130._ID44 = "center";
    self._ID19130._ID45 = "middle";
    self._ID19130._ID499 = "center";
    self._ID19130._ID1284 = "middle";
    self._ID19130._ID55 = 0;
    self._ID19130._ID53718 = 0;
    self._ID19130._ID72 = 1;
    self._ID19130 _meth_80D3( "h2_damage_feedback", 50, 100 );
    self._ID19130._ID1339 = 25;
    self._ID19131 = _func_1B0( self );
    self._ID19131._ID44 = "center";
    self._ID19131._ID45 = "middle";
    self._ID19131._ID499 = "center";
    self._ID19131._ID1284 = "middle";
    self._ID19131._ID55 = 0;
    self._ID19131._ID72 = 1;
    self._ID19131 _meth_80D3( "h2_damage_feedback_headshot", 50, 100 );
    self._ID19131._ID1339 = 25;
}

_ID24130()
{
    _ID42407::_ID1868( ::_unknown_0129 );
}

_ID36604()
{
    _ID42407::_ID29503( ::_unknown_0132 );
}

_ID9633( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_10 = 0;

    if ( _func_02F( self._ID6315 ) )
    {
        var_11 = [];
        var_11["MOD_PISTOL_BULLET"] = 1;
        var_11["MOD_RIFLE_BULLET"] = 1;

        if ( _func_02F( var_11[var_4] ) )
        {
            if ( var_0 <= self._ID6315 && !_func_02F( self._ID23165 ) || !self._ID23165 || !_func_02F( var_9 ) || !_func_125( var_9, "iw5_em1" ) )
                return;
        }
    }

    if ( _func_02F( self._ID253 ) && self._ID253 == "head" || self._ID253 == "helmet" )
        var_10 = 1;

    var_1 _unknown_01DE( self, var_10, var_4 );
}

_ID39695( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( _func_02F( var_0._ID1194 ) )
        var_3 = var_0._ID1194;
    else if ( _func_02F( var_0._ID31474 ) )
        var_3 = var_0._ID31474;

    if ( !_func_02F( var_3 ) )
        return;

    if ( var_3 == "neutral" || _func_02F( self._ID1194 ) && var_3 == self._ID1194 )
        return;

    if ( _func_02F( var_0._ID43135 ) && _func_02F( var_0._ID43135.ts_forced_hit_marker ) && var_0._ID43135.ts_forced_hit_marker )
        var_0._ID43135.ts_forced_hit_marker = 0;
    else if ( _func_02F( var_0._ID22746 ) && var_0._ID22746 )
        return;

    if ( _func_02F( var_0._ID16986 ) && var_0._ID16986 )
        return;

    if ( _func_02F( var_0._ID31241 ) && var_0._ID31241 )
        return;

    _unknown_02B7( var_0, var_2 );
    _unknown_02DD( var_1, var_0 );
}

_ID39697( var_0, var_1 )
{
    if ( !_ID42407::_ID20501() )
        return;

    if ( _func_02F( var_0 ) && _func_02F( var_0._ID11013 ) && var_0._ID11013 )
        return;

    if ( _func_1B3( self ) )
    {
        var_2 = "SP_hit_alert_npc";

        if ( _func_1D0( var_2 ) )
        {
            level._ID794 _meth_82FF( var_2 );
            return;
        }
    }
    else if ( _func_1B3( var_0 ) )
    {
        if ( _func_02F( var_1 ) && var_1 == "MOD_CRUSH" )
        {
            var_2 = "h2_player_gets_crushed";

            if ( _func_1D0( var_2 ) )
                level._ID794 _meth_82FF( var_2 );
        }
    }
}

_ID39696( var_0, var_1 )
{
    if ( !_ID42407::_ID20500() )
        return;

    if ( !_func_1B3( self ) )
        return;

    if ( _func_02F( var_1.skiphitmarker ) && var_1.skiphitmarker )
        return;

    var_2 = 1;

    if ( _func_02F( level._ID34362._ID35417 ) )
        var_2 = level._ID34362._ID35417;

    var_3 = var_1._ID486 <= 0 || !_func_1A7( var_1 ) || _func_02F( var_1._ID52049 ) && var_1._ID52049;

    if ( var_3 && !_func_02F( var_1._ID45747 ) || _func_02F( var_1.alwaysredhitmarker ) && var_1.alwaysredhitmarker )
    {
        self._ID19130._ID196 = ( 1, 0, 0 );
        self._ID19131._ID196 = ( 1, 0, 0 );
        self._ID19130._ID53718 = 1;
    }
    else if ( self._ID19130._ID53718 )
    {
        self._ID19130._ID196 = ( 1, 1, 1 );
        self._ID19131._ID196 = ( 1, 1, 1 );
        self._ID19130._ID53718 = 0;
    }

    if ( _func_02F( var_0 ) && var_0 && _func_02F( var_1 ) && var_3 )
    {
        self._ID19131._ID55 = 1;
        self._ID19131 _meth_808B( var_2 );
        self._ID19131._ID55 = 0;
        var_4 = _func_03B( "cg_crosshairVerticalOffset" ) * 240;
        self._ID19131._ID1339 = 25 - _func_0C1( var_4 );
    }
    else
    {
        self._ID19130._ID55 = 1;
        self._ID19130 _meth_808B( var_2 );
        self._ID19130._ID55 = 0;
        var_4 = _func_03B( "cg_crosshairVerticalOffset" ) * 240;
        self._ID19130._ID1339 = 25 - _func_0C1( var_4 );
    }
}
