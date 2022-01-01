// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36278()
{
    _ID36277();
}

_ID36277()
{
    _ID42237::_ID14400( "_stealth_found_corpse" );
    level._ID1644._ID22585._ID8751 = spawnstruct();
    level._ID1644._ID22585._ID8751._ID21837 = undefined;
    level._ID1644._ID22585._ID8751._ID11135 = [];
    _ID36262();
    level._ID1644._ID22585._ID8751._ID8757 = 6;
    _ID36263();
    _ID36264();
    level._ID1644._ID5029._ID8751 = spawnstruct();
}

_ID36262()
{
    var_0 = [];
    var_0["player_dist"] = 1500;
    var_0["sight_dist"] = 1500;
    var_0["detect_dist"] = 256;
    var_0["found_dist"] = 96;
    var_0["found_dog_dist"] = 50;
    _ID36274( var_0 );
}

_ID36274( var_0 )
{
    foreach ( var_3, var_2 in var_0 )
        level._ID1644._ID22585._ID8751._ID11135[var_3] = var_2;

    level._ID1644._ID22585._ID8751._ID27351 = squared( level._ID1644._ID22585._ID8751._ID11135["player_dist"] );
    level._ID1644._ID22585._ID8751._ID34150 = squared( level._ID1644._ID22585._ID8751._ID11135["sight_dist"] );
    level._ID1644._ID22585._ID8751._ID10637 = squared( level._ID1644._ID22585._ID8751._ID11135["detect_dist"] );
    level._ID1644._ID22585._ID8751._ID14838 = squared( level._ID1644._ID22585._ID8751._ID11135["found_dist"] );
    level._ID1644._ID22585._ID8751._ID14839 = squared( level._ID1644._ID22585._ID8751._ID11135["found_dog_dist"] );
}

_ID36264()
{
    _ID36276( 30 );
}

_ID36276( var_0 )
{
    level._ID1644._ID22585._ID8751._ID29757 = var_0;
}

_ID36263()
{
    _ID36275( 60 );
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
