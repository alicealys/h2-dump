// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36229()
{
    _unknown_0025();
    var_0 = self._ID1644._ID5029._ID2281["accuracy"]["hidden"];
    thread _ID42386::_ID2310( var_0, "accuracy_friendly" );
    var_0 = self._ID1644._ID5029._ID2281["accuracy"]["spotted"];
    thread _ID42386::_ID2311( var_0, "accuracy_friendly" );
}

_ID14912()
{
    self._ID4867 = self._ID1644._ID5029._ID17018;
    self._ID10 = self._ID1644._ID5029._ID17018;
}

_ID14913()
{
    self._ID4867 = self._ID1644._ID5029._ID25499;
    self._ID10 = self._ID1644._ID5029._ID25493;
}

_ID14953()
{
    self._ID1644._ID5029._ID17018 = 50;
    self._ID1644._ID5029._ID25499 = self._ID4867;
    self._ID1644._ID5029._ID25493 = self._ID10;
    _unknown_00DE();
    self._ID1644._ID28153._ID1749 = 1;
}

_ID14930( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42386::_ID2261( "accuracy", var_3, var_2 );
    }

    var_clear_2
    var_4 = self._ID1644._ID5029._ID2281["accuracy"]["hidden"];
    thread _ID42386::_ID2310( var_4, "accuracy_friendly" );
    var_4 = self._ID1644._ID5029._ID2281["accuracy"]["spotted"];
    thread _ID42386::_ID2311( var_4, "accuracy_friendly" );
}

_ID14933()
{
    var_0 = [];
    var_0["hidden"] = ::_unknown_010F;
    var_0["spotted"] = ::_unknown_011F;
    _unknown_0140( var_0 );
}
