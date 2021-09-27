// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36278()
{
    _unknown_0004();
}

_ID36277()
{
    _ID42237::_ID14400( "_stealth_found_corpse" );
    level._ID1644._ID22585._ID8751 = _func_1A5();
    level._ID1644._ID22585._ID8751._ID21837 = undefined;
    level._ID1644._ID22585._ID8751._ID11135 = [];
    _unknown_0050();
    level._ID1644._ID22585._ID8751._ID8757 = 6;
    _unknown_00B8();
    _unknown_00B4();
    level._ID1644._ID5029._ID8751 = _func_1A5();
}

_ID36262()
{
    var_0 = [];
    var_0["player_dist"] = 1500;
    var_0["sight_dist"] = 1500;
    var_0["detect_dist"] = 256;
    var_0["found_dist"] = 96;
    var_0["found_dog_dist"] = 50;
    _unknown_00AC( var_0 );
}

_ID36274( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        level._ID1644._ID22585._ID8751._ID11135[var_3] = var_2;
    }

    var_clear_2
    level._ID1644._ID22585._ID8751._ID27351 = _func_0ED( level._ID1644._ID22585._ID8751._ID11135["player_dist"] );
    level._ID1644._ID22585._ID8751._ID34150 = _func_0ED( level._ID1644._ID22585._ID8751._ID11135["sight_dist"] );
    level._ID1644._ID22585._ID8751._ID10637 = _func_0ED( level._ID1644._ID22585._ID8751._ID11135["detect_dist"] );
    level._ID1644._ID22585._ID8751._ID14838 = _func_0ED( level._ID1644._ID22585._ID8751._ID11135["found_dist"] );
    level._ID1644._ID22585._ID8751._ID14839 = _func_0ED( level._ID1644._ID22585._ID8751._ID11135["found_dog_dist"] );
}

_ID36264()
{
    _unknown_01B7( 30 );
}

_ID36276( var_0 )
{
    level._ID1644._ID22585._ID8751._ID29757 = var_0;
}

_ID36263()
{
    _unknown_01D6( 60 );
}

_ID36275( var_0 )
{
    level._ID1644._ID22585._ID8751._ID14820 = var_0;
}

_ID36273( var_0 )
{
    level._ID1644._ID22585._ID8751._ID8235 = var_0;
}

_ID36261()
{
    level._ID1644._ID22585._ID8751._ID8235 = undefined;
}
