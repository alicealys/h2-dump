// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36255()
{
    _unknown_001B();
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
    _unknown_0088();
    self._ID1644._ID28153._ID8260 = 1;
}

_ID14931( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42386::_ID2261( "color", var_3, var_2 );
    }

    var_clear_2
    var_4 = self._ID1644._ID5029._ID2281["color"]["hidden"];
    thread _ID42386::_ID2310( var_4, "color_friendly" );
    var_4 = self._ID1644._ID5029._ID2281["color"]["spotted"];
    thread _ID42386::_ID2311( var_4, "color_friendly" );
}

_ID14934()
{
    var_0 = [];
    var_0["hidden"] = ::_unknown_00CF;
    var_0["spotted"] = ::_unknown_00DA;
    _unknown_00EA( var_0 );
}
