// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID11867()
{
    _unknown_00BE();
    self _meth_8062();

    if ( _func_02F( self._ID31300 ) )
        self._ID24424 = self._ID31300;
    else
        self._ID24424 = 1;

    if ( self._ID1194 == "allies" )
    {
        _ID42336::_ID15845();

        if ( _func_02F( self._ID680 ) )
            self _meth_8041( self._ID680, &"" );
    }

    if ( _func_02F( level._ID12029 ) )
        self thread [[ level._ID12029 ]]();

    if ( !_func_02F( self._ID31216 ) )
        level thread _ID42297::_ID14940( self );

    if ( !_func_02F( level._ID2272 ) )
        _unknown_0078();
}

_ID37637()
{
    if ( !_func_02F( level._ID12082 ) )
        level._ID12082 = "all";

    var_0 = 0;

    switch ( level._ID12082 )
    {

    }

    endswitch( 3 )  case "axis" loc_B6 case "all" loc_B9 default loc_C4

    if ( var_0 )
    {
        self _meth_8029();
        return;
        case "all":
        default:
    }
}

_ID11877()
{
    if ( !_func_02F( self._ID1191 ) )
        return;

    if ( _func_02F( level._ID11937[self._ID1191] ) )
        return;

    level._ID11937[self._ID1191] = 1;
    var_0 = self._ID1191;
    var_1 = _ID42237::_ID16638( var_0, "targetname" );

    if ( !_func_02F( var_1 ) )
        return;

    var_2 = [];
    var_3 = [];
    var_4 = var_1;

    for (;;)
    {
        var_1 = var_4;
        var_5 = 0;

        for (;;)
        {
            if ( !_func_02F( var_1._ID1191 ) )
                break;

            var_6 = _ID42237::_ID16640( var_1._ID1191, "targetname" );

            if ( var_6.size )
                break;

            var_7 = undefined;
            var_8 = var_6;

            for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
            {
                var_9 = var_8[var_10];

                if ( _func_02F( var_3[var_9._ID740 + ""] ) )
                    continue;

                var_7 = var_9;
                break;
            }

            var_clear_2
            var_clear_0

            if ( !_func_02F( var_7 ) )
                break;

            var_3[var_7._ID740 + ""] = 1;
            var_2[var_1._ID1193] = var_7._ID740 - var_1._ID740;
            var_1._ID65 = _func_11A( var_2[var_1._ID1193] );
            var_1 = var_7;
            var_5 = 1;
        }

        if ( !var_5 )
            break;
    }

    var_0 = self._ID1191;
    var_1 = _ID42237::_ID16638( var_0, "targetname" );
    var_11 = var_1;
    var_3 = [];

    for (;;)
    {
        var_1 = var_4;
        var_5 = 0;

        for (;;)
        {
            if ( !_func_02F( var_1._ID1191 ) )
                return;

            if ( !_func_02F( var_2[var_1._ID1193] ) )
                return;

            var_6 = _ID42237::_ID16640( var_1._ID1191, "targetname" );

            if ( var_6.size )
                break;

            var_7 = undefined;
            var_12 = var_6;

            for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
            {
                var_9 = var_12[var_13];

                if ( _func_02F( var_3[var_9._ID740 + ""] ) )
                    continue;

                var_7 = var_9;
                break;
            }

            var_clear_1
            var_clear_0

            if ( !_func_02F( var_7 ) )
                break;

            if ( _func_02F( var_1._ID851 ) )
            {
                var_14 = var_2[var_11._ID1193];
                var_15 = var_2[var_1._ID1193];
                var_16 = var_14 + var_15 * 0.5;
                var_1._ID65 = _func_11A( var_16 );
            }

            var_5 = 1;
            var_11 = var_1;
            var_1 = var_7;
        }

        if ( !var_5 )
            break;
    }
}

_ID3430()
{
    if ( _func_02F( self._ID1244 ) )
    {
        if ( self._ID1244 == "dog" )
            _unknown_030E();
        else
            _unknown_0310();
    }
}
#using_animtree("generic_human");

_ID3432()
{
    self _meth_811E( #animtree );
}
#using_animtree("animals");

_ID3427()
{
    self _meth_811E( #animtree );
}
