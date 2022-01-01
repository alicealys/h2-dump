// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36229()
{
    _ID14953();
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
    _ID14933();
    self._ID1644._ID28153._ID1749 = 1;
}

_ID14930( var_0 )
{
    foreach ( var_3, var_2 in var_0 )
        _ID42386::_ID2261( "accuracy", var_3, var_2 );

    var_4 = self._ID1644._ID5029._ID2281["accuracy"]["hidden"];
    thread _ID42386::_ID2310( var_4, "accuracy_friendly" );
    var_4 = self._ID1644._ID5029._ID2281["accuracy"]["spotted"];
    thread _ID42386::_ID2311( var_4, "accuracy_friendly" );
}

_ID14933()
{
    var_0 = [];
    var_0["hidden"] = ::_ID14912;
    var_0["spotted"] = ::_ID14913;
    _ID14930( var_0 );
}
