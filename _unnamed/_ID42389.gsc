// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36280()
{
    _unknown_001B();

    if ( _func_1B3( self ) )
        return;

    switch ( self._ID1194 )
    {

    }

    case "allies":
    case "axis":
}

_ID36356( var_0, var_1 )
{
    level._ID36281[var_0] = var_1;
}

_ID36343( var_0 )
{
    if ( _func_1B3( self ) )
    {
        _ID42391::_ID36376();
        return;
    }

    if ( !_func_02F( self._ID1644 ) || !_func_02F( self._ID1644._ID28153._ID4894 ) )
    {
        switch ( self._ID1194 )
        {

        }
    }

    if ( _func_02F( var_0 ) )
        _unknown_00DE( var_0 );

    self._ID1644._ID28153._ID4894 = 1;
    case "team3":
    case "allies":
    case "axis":
}

_ID36247( var_0 )
{
    switch ( self._ID1194 )
    {

    }

    case "team3":
    case "allies":
    case "axis":
}

_ID36248()
{
    switch ( self._ID1194 )
    {

    }

    case "team3":
    case "allies":
    case "axis":
}

_ID36353( var_0 )
{
    _ID42390::_ID12771( var_0 );
}

_ID36354()
{
    _ID42390::_ID12765();
}

_ID36352( var_0 )
{
    if ( !_func_02F( self._ID1644._ID28153._ID37658 ) )
        _ID42388::_ID36373();

    if ( _func_02F( var_0 ) )
        _unknown_01A1( var_0 );
}

_ID36299()
{
    self._ID31461 = 0;
}

_ID36285()
{
    self._ID31461 = 1;
}

_ID36369( var_0, var_1 )
{
    if ( _func_02F( var_0 ) )
        _ID42388::_ID12920( var_0 );

    if ( _func_02F( var_1 ) )
        _ID42388::_ID12919( var_1 );
}

_ID36372( var_0, var_1 )
{
    var_2 = "threat";
    var_3 = "warning";
    var_4 = 1;
    var_5 = var_3 + var_4;

    if ( _func_02F( var_0 ) )
    {
        while ( _func_02F( self._ID1644._ID5029._ID2281[var_2][var_5] ) )
        {
            if ( !_func_02F( var_0[var_5] ) )
                var_0[var_5] = _ID42386::_ID2284( var_2, var_5 );

            var_4++;
            var_5 = var_3 + var_4;
        }
    }

    _unknown_0205( var_0, var_1 );
}

_ID36371()
{
    var_0 = [];
    _unknown_020E( var_0 );
}

_ID36370()
{
    _ID42388::_ID12835();
    _ID42388::_ID12834();
}

_ID36243( var_0 )
{
    level._ID1644._ID22585._ID23587 = var_0;
}

_ID36344( var_0 )
{
    if ( !_func_02F( self._ID1644._ID28153._ID8751 ) )
        _ID42381::_ID36265();

    if ( _func_02F( var_0 ) )
        _unknown_0277( var_0 );
}

_ID36258( var_0 )
{
    _ID42381::_ID12826( var_0 );
}

_ID36259()
{
    _ID42381::_ID12832();
}

_ID36267()
{
    _ID42382::_ID36263();
}

_ID36266( var_0 )
{
    _ID42382::_ID36275( var_0 );
}

_ID36272()
{
    _ID42382::_ID36264();
}

_ID36271( var_0 )
{
    _ID42382::_ID36276( var_0 );
}

_ID36260( var_0 )
{
    _ID42382::_ID36273( var_0 );
}

_ID36270()
{
    _ID42382::_ID36261();
}

_ID36345( var_0, var_1 )
{
    _unknown_02D9();
    _ID42385::_ID36310( var_1 );

    if ( _func_02F( var_0 ) )
    {
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            _ID42385::_ID36309( var_4, var_3 );
        }

        var_clear_2
    }
}

_ID36350()
{
    if ( !_func_02F( self._ID1644._ID28153._ID13251 ) )
        _ID42385::_ID36306();
}

_ID36349( var_0, var_1 )
{
    _unknown_031F();
    _ID42385::_ID36309( "heard_scream", var_0, var_1 );
}

_ID36348( var_0, var_1 )
{
    _unknown_0331();
    _ID42385::_ID36309( "doFlashBanged", var_0, var_1 );
}

_ID36347( var_0, var_1 )
{
    _unknown_0343();
    _ID42385::_ID36309( "explode", var_0, var_1 );
}

_ID36346( var_0, var_1, var_2, var_3 )
{
    _unknown_0358();
    _ID42385::_ID36309( var_0, var_1, var_2, var_3 );
}

_ID36342( var_0 )
{
    if ( !_func_02F( self._ID1644._ID28153._ID8260 ) )
        _ID42380::_ID36255();

    if ( _func_02F( var_0 ) )
        _unknown_03A6( var_0 );
}

_ID36256( var_0 )
{
    _ID42380::_ID14931( var_0 );
}

_ID36257()
{
    _ID42380::_ID14934();
}

_ID36341( var_0 )
{
    if ( !_func_02F( self._ID1644._ID28153._ID1749 ) )
        _ID42374::_ID36229();

    if ( _func_02F( var_0 ) )
        _unknown_03E1( var_0 );
}

_ID36230( var_0 )
{
    _ID42374::_ID14930( var_0 );
}

_ID36231()
{
    _ID42374::_ID14933();
}

_ID36351()
{
    _ID42387::_ID36364();
}

_ID12535()
{
    _ID42407::_ID13025( "_stealth_stance_handler" );
}

_ID10970()
{
    _ID42407::_ID13021( "_stealth_stance_handler" );
}

_ID36303()
{
    waitframe;
    _ID42407::_ID13031( "_stealth_normal" );
}

_ID36337()
{
    var_0 = level._ID1644._ID17437._ID17473;
    var_1 = var_0;

    for ( var_7 = _func_1DA( var_1 ); _func_02F( var_7 ); var_7 = _func_1BF( var_1, var_7 ) )
    {
        var_2 = var_1[var_7];
        var_3 = _ID42386::_ID17448( var_7 );
        var_4 = var_3;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( !var_5 _ID42407::_ID13019( "_stealth_normal" ) )
                return 0;
        }

        var_clear_3
        var_clear_1
    }

    var_clear_6
    return 1;
}

_ID36301()
{
    _unknown_047F();
    waitframe;
    self notify( "stealth_enemy_endon_alert" );
}

_ID36307( var_0, var_1 )
{
    thread _ID42386::_ID13257( var_0, var_1 );
}

_ID36284( var_0, var_1 )
{
    _ID42392::_ID37013( var_0, var_1 );
}

_ID36283()
{
    _ID42392::_ID37005();
}

_ID36268( var_0 )
{
    _ID42382::_ID36274( var_0 );
}

_ID36269()
{
    _ID42382::_ID36262();
}

_ID36234( var_0 )
{
    var_1 = level._ID1644._ID22585._ID10660;
    _ID42392::_ID37014( var_0 );
    _ID42392::_ID37007( var_1 );
}

_ID36235()
{
    var_0 = level._ID1644._ID22585._ID10660;
    _ID42392::_ID37006();
    _ID42392::_ID37007( var_0 );
}

_ID36316( var_0, var_1 )
{
    _ID42391::_ID14976( var_0, var_1 );
}

_ID36315()
{
    _ID42391::_ID14935();
}

_ID36318( var_0, var_1, var_2 )
{
    _ID42387::_ID14977( var_0, var_1, var_2 );
}

_ID36317()
{
    _ID42387::_ID14936();
}

_ID36232( var_0 )
{
    _ID42386::_ID2250( var_0 );
}

_ID36233()
{
    _ID42386::_ID2249();
}

_ID36236( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_4 ) )
    {

    }

    var_0 _unknown_05C8();
    var_5 = var_0 _ID42386::_ID17449( "_stealth_spotted" );

    if ( _ID42237::_ID14385( var_5 ) )
        return;

    var_6 = "stop_loop";
    var_0._ID49 = 1;

    if ( !_func_02F( var_4 ) )
        thread _ID42259::_ID3022( var_0, "gravity", var_1, var_3 );
    else
        thread _ID42259::_ID3025( var_0, var_1, var_3 );

    var_0 _ID42386::_ID2323( self, var_2, var_3, var_6 );
    _ID42407::_ID1985( _ID42407::_ID41116, "stop_idle_proc" );
    _ID42407::_ID1890( ::_unknown_05B9 );
    thread _unknown_05E8();
}

_ID11234()
{
    self endon( "death" );
    _ID42407::_ID11231();
}

_ID36242( var_0, var_1, var_2 )
{
    var_0 _unknown_0636();
    var_0 _ID42386::_ID2323( self, var_1, var_2, "stop_loop" );
}

_ID36240( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 _unknown_0650();
    thread _unknown_0632( var_0, var_1, var_2, var_3, var_4 );
}

_ID36241( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 _unknown_0666();
    var_0 thread _unknown_05E0();
    var_0 endon( "stealth_enemy_endon_alert" );
    var_0 endon( "death" );
    _ID42259::_ID3027( var_0, var_1, var_4 );
    _unknown_0629( var_0, var_2, var_3, var_4 );
}

_ID36238( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 _unknown_0692();
    thread _unknown_068B( var_0, var_1, var_2, var_3, var_4 );
}

_ID36239( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 _unknown_06A9();
    var_0 thread _unknown_0622();
    var_0 endon( "stealth_enemy_endon_alert" );
    var_0 endon( "death" );
    _ID42259::_ID3028( var_0, var_1, var_4 );
    _unknown_066B( var_0, var_2, var_3, var_4 );
}

_ID36336()
{

}

_ID36330()
{
    return _ID42386::_ID17461( "_stealth_spotted" );
}

_ID36329()
{
    return _ID42386::_ID17461( "_stealth_event" );
}

_ID36328()
{
    return _ID42386::_ID17461( "_stealth_found_corpse" );
}

_ID36327()
{
    return _ID42386::_ID17460( "_stealth_spotted" );
}

_ID36326()
{
    return _ID42386::_ID17460( "_stealth_event" );
}

_ID36325()
{
    return _ID42386::_ID17460( "_stealth_found_corpse" );
}

_ID36331()
{
    var_0 = _ID42386::_ID17449( "_stealth_spotted" );
    return _ID42237::_ID14385( var_0 );
}

_ID36322()
{
    var_0 = _ID42386::_ID17449( "_stealth_found_corpse" );
    return _ID42237::_ID14385( var_0 );
}

_ID36332()
{
    var_0 = _ID42386::_ID17449( "_stealth_spotted" );
    _ID42237::_ID14413( var_0 );
}

_ID36323()
{
    var_0 = _ID42386::_ID17449( "_stealth_found_corpse" );
    _ID42237::_ID14413( var_0 );
}

_ID36333()
{
    var_0 = _ID42386::_ID17449( "_stealth_spotted" );
    return _ID42237::_ID14426( var_0 );
}

_ID36324()
{
    var_0 = _ID42386::_ID17449( "_stealth_found_corpse" );
    return _ID42237::_ID14426( var_0 );
}

_ID36321()
{
    return _ID42386::_ID17449( "_stealth_spotted" );
}

_ID36320()
{
    return _ID42386::_ID17449( "_stealth_found_corpse" );
}

_ID36357( var_0 )
{
    _unknown_07BD( var_0 );
}

_ID36358()
{
    _unknown_07C7( "default" );
}

_ID36359( var_0 )
{
    if ( _func_02F( self._ID31463 ) )
        level._ID1644._ID17437._ID17473[self._ID31463] = _ID42237::_ID3321( level._ID1644._ID17437._ID17473[self._ID31463], self );

    self._ID31463 = _ID42407::_ID36694( var_0 );

    if ( _func_02F( self._ID1644._ID28153._ID4894 ) )
    {
        _ID42386::_ID17445( "_stealth_spotted" );
        _ID42386::_ID17445( "_stealth_event" );
        _ID42386::_ID17445( "_stealth_found_corpse" );
        _ID42386::_ID17438();
    }
}

_ID36319()
{
    return self._ID31463;
}

_ID12536()
{
    _ID42237::_ID14402( "_stealth_enabled" );
    var_0 = _func_0DF( "all", "all" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _unknown_08B7();
    }

    var_clear_2
    var_4 = level._ID805;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_5 _ID42407::_ID13023( "_stealth_enabled" ) )
            var_5 _ID42407::_ID13025( "_stealth_enabled" );

        var_5 _ID42391::_ID14992();
    }

    var_clear_2
    var_clear_0
    _ID42392::_ID37007( "hidden" );
}

_ID10971()
{
    _ID42237::_ID14388( "_stealth_enabled" );
    var_0 = _func_0DF( "all", "all" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _unknown_0933();
    }

    var_clear_2
    var_4 = level._ID805;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5._ID630 = 8192;

        if ( var_5 _ID42407::_ID13023( "_stealth_enabled" ) )
            var_5 _ID42407::_ID13021( "_stealth_enabled" );
    }

    var_clear_2
    var_clear_0
    _ID42392::_ID37007( "spotted" );
}

_ID12534()
{
    if ( _ID42407::_ID13023( "_stealth_enabled" ) )
        _ID42407::_ID13025( "_stealth_enabled" );

    if ( self._ID1194 == "allies" )
        thread _ID42391::_ID14992();
}

_ID10969()
{
    if ( _ID42407::_ID13023( "_stealth_enabled" ) )
        _ID42407::_ID13021( "_stealth_enabled" );

    self._ID630 = 8192;
}
