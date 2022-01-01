// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36255()
{
    _ID14953();
    var_0 = self._ID1644._ID5029._ID2281["color"]["hidden"];
    thread _ID42386::_ID2310( var_0, "color_friendly" );
    var_0 = self._ID1644._ID5029._ID2281["color"]["spotted"];
    thread _ID42386::_ID2311( var_0, "color_friendly" );
}

_ID14925()
{
    _ID42407::_ID10871();
    self._ID381 = 0;
}

_ID14926()
{
    _ID42407::_ID12445();
}

_ID14953()
{
    _ID14934();
    self._ID1644._ID28153._ID8260 = 1;
}

_ID14931( var_0 )
{
    foreach ( var_3, var_2 in var_0 )
        _ID42386::_ID2261( "color", var_3, var_2 );

    var_4 = self._ID1644._ID5029._ID2281["color"]["hidden"];
    thread _ID42386::_ID2310( var_4, "color_friendly" );
    var_4 = self._ID1644._ID5029._ID2281["color"]["spotted"];
    thread _ID42386::_ID2311( var_4, "color_friendly" );
}

_ID14934()
{
    var_0 = [];
    var_0["hidden"] = ::_ID14925;
    var_0["spotted"] = ::_ID14926;
    _ID14931( var_0 );
}
