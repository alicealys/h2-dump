// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36250()
{
    _unknown_005F();
    var_0 = self._ID1644._ID5029._ID2281["state"]["hidden"];
    thread _ID42386::_ID2310( var_0, "friendly_behavior" );
    var_0 = self._ID1644._ID5029._ID2281["state"]["spotted"];
    thread _ID42386::_ID2311( var_0, "friendly_behavior" );
}

_ID14989()
{
    thread _ID42407::_ID32226( 0 );
    self._ID1644._ID5029._ID25553 = self._ID464;
    self._ID464 = 0;
    self._ID14794 = undefined;
    self._ID511 = 1;
}

_ID14990()
{
    thread _ID42407::_ID32226( 1 );

    if ( _func_02F( self._ID1644._ID5029._ID25553 ) )
        self._ID464 = self._ID1644._ID5029._ID25553;
    else
        self._ID464 = 3;

    self._ID511 = 0;
    self _meth_81AF( 0 );
    _ID42407::_ID10896();
    thread _unknown_00C7();
    self _meth_81D6( "prone", "crouch", "stand" );

    if ( self._ID1244 != "dog" || !_func_02F( self._ID19464 ) || !self._ID19464 )
        _ID42407::_ID3136();
}

_ID14979( var_0 )
{
    self endon( "death" );

    if ( self._ID1644._ID22585._ID35573 != "prone" )
        return;

    _ID42407::_ID13025( "_stealth_custom_anim" );
    var_1 = "_stealth_prone_2_run_roll";

    if ( _func_02F( var_0 ) )
        self _meth_819B( "face angle", var_0[1] + 20 );

    thread _ID42386::_ID36246( self, "gravity", var_1 );
    var_2 = _func_067( _ID42407::_ID16122( var_1 ) );
    wait(var_2 - 0.2);
    self notify( "stop_animmode" );
    _ID42407::_ID13021( "_stealth_custom_anim" );
}

_ID14953()
{
    _ID42407::_ID13024( "_stealth_custom_anim" );
    _ID42407::_ID13024( "_stealth_override_goalpos" );
    self._ID1644._ID5029 = _func_1A5();
    self._ID1644._ID5029._ID2281 = [];
    _unknown_01C8();
    self._ID1644._ID28153 = _func_1A5();
    thread _ID42386::_ID2342();
}

_ID14932( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42386::_ID2261( "state", var_3, var_2 );
    }

    var_clear_2
    var_4 = self._ID1644._ID5029._ID2281["state"]["hidden"];
    thread _ID42386::_ID2310( var_4, "friendly_behavior" );
    var_4 = self._ID1644._ID5029._ID2281["state"]["spotted"];
    thread _ID42386::_ID2311( var_4, "friendly_behavior" );
}

_ID14937()
{
    var_0 = [];
    var_0["hidden"] = ::_unknown_01C0;
    var_0["spotted"] = ::_unknown_01D2;
    _unknown_022C( var_0 );
}
