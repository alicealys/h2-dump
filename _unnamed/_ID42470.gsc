// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34390()
{
    level._ID1374._ID36658 = spawnstruct();
    level._ID1374._ID36658._ID24574 = spawnstruct();
    level._ID1374._ID36658._ID24574._ID9421 = _ID34459();
    level._ID1374._ID36658._ID24574._ID28470 = _ID34459();
    level._ID1374._ID36658._ID2841 = spawnstruct();
    level._ID1374._ID36658._ID2841._ID9421 = _ID34459();
    level._ID1374._ID36658._ID2841._ID28470 = _ID34459();
}

_ID34393( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !soundexists( var_0 ) )
        return;

    var_6 = 1.0;

    if ( isdefined( var_1 ) )
        var_6 = max( var_1, 0 );

    var_7 = 1.0;

    if ( isdefined( var_4 ) )
        var_7 = max( var_4, 0 );

    _ID34460( level._ID1374._ID36658._ID2841._ID28470, level._ID1374._ID36658._ID2841._ID9421._ID680, level._ID1374._ID36658._ID2841._ID9421._ID40762, level._ID1374._ID36658._ID2841._ID9421._ID13788 );
    _ID34460( level._ID1374._ID36658._ID2841._ID9421, var_0, var_7, var_6 );
    ambientplay( var_0, var_6, var_7 );
}

_ID34392( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !soundexists( var_0 ) )
        return;

    var_6 = 1.0;

    if ( isdefined( var_1 ) )
        var_6 = max( var_1, 0 );

    var_7 = 1.0;

    if ( isdefined( var_2 ) )
        var_7 = var_2;

    var_8 = 1.0;

    if ( isdefined( var_3 ) )
        var_8 = max( var_3, 0 );

    _ID34460( level._ID1374._ID36658._ID24574._ID28470, level._ID1374._ID36658._ID24574._ID9421._ID680, level._ID1374._ID36658._ID24574._ID9421._ID40762, level._ID1374._ID36658._ID24574._ID9421._ID13788 );
    _ID34460( level._ID1374._ID36658._ID24574._ID9421, var_0, var_8, var_6 );

    if ( isdefined( var_4 ) )
    {
        musicstop( var_7, var_4 );
        musicplay( var_0, var_6, var_8, 0 );
    }
    else
        musicplay( var_0, var_6, var_8 );
}

_ID34395( var_0, var_1 )
{
    if ( var_0 != "none" )
    {
        if ( !soundexists( var_0 ) )
            return;

        var_3 = 1.0;

        if ( isdefined( var_1 ) )
            var_3 = max( var_1, 0 );

        if ( level._ID1374._ID36658._ID2841._ID9421._ID680 == var_0 )
        {
            level._ID1374._ID36658._ID2841._ID9421 = level._ID1374._ID36658._ID2841._ID28470;
            _ID34458( level._ID1374._ID36658._ID2841._ID28470 );
        }
        else if ( level._ID1374._ID36658._ID2841._ID28470._ID680 == var_0 )
            _ID34458( level._ID1374._ID36658._ID2841._ID28470 );

        ambientstop( var_3, var_0 );
    }
}

_ID34397( var_0, var_1 )
{
    if ( !soundexists( var_0 ) )
        return;

    var_3 = 1.0;

    if ( isdefined( var_1 ) )
        var_3 = max( var_1, 0 );

    if ( level._ID1374._ID36658._ID24574._ID9421._ID680 == var_0 )
    {
        level._ID1374._ID36658._ID24574._ID9421 = level._ID1374._ID36658._ID24574._ID28470;
        _ID34458( level._ID1374._ID36658._ID24574._ID28470 );
    }
    else if ( level._ID1374._ID36658._ID2841._ID28470._ID680 == var_0 )
        _ID34458( level._ID1374._ID36658._ID24574._ID28470 );

    musicstop( var_3, var_0 );
}

_ID34394( var_0 )
{
    var_1 = 1.0;

    if ( isdefined( var_0 ) )
        var_1 = var_0;

    ambientstop( var_1 );
}

_ID34396( var_0 )
{
    var_1 = 1.0;

    if ( isdefined( var_0 ) )
        var_1 = var_0;

    _ID34458( level._ID1374._ID36658._ID24574._ID9421 );
    _ID34458( level._ID1374._ID36658._ID24574._ID28470 );
    musicstop( var_1 );
}

_ID34391( var_0 )
{
    var_1 = 0.009;

    if ( var_0.size == 1 )
        _ID34460( level._ID1374._ID36658._ID2841._ID9421, var_0[0]._ID2521, var_0[0]._ID40762, var_0[0]._ID13788 );
    else if ( var_0.size == 2 )
    {
        _ID34460( level._ID1374._ID36658._ID2841._ID28470, var_0[0]._ID2521, var_0[0]._ID40762, var_0[0]._ID13788 );
        _ID34460( level._ID1374._ID36658._ID2841._ID9421, var_0[1]._ID2521, var_0[1]._ID40762, var_0[1]._ID13788 );
    }

    for ( var_6 = 0; var_6 < var_0.size; var_6++ )
    {
        var_7 = var_0[var_6]._ID2521;
        var_8 = max( var_0[var_6]._ID40762, 0 );
        var_9 = clamp( var_0[var_6]._ID13788, 0, 1 );

        if ( var_7 != "none" )
        {
            if ( !soundexists( var_7 ) )
                continue;

            if ( var_8 < var_1 )
            {
                ambientstop( var_9, var_7 );
                continue;
            }

            ambientplay( var_7, var_9, var_8, 0 );
        }
    }
}

_ID34388()
{
    return level._ID1374._ID36658._ID2841._ID9421._ID680;
}

_ID34389()
{
    return level._ID1374._ID36658._ID24574._ID9421._ID680;
}

_ID34460( var_0, var_1, var_2, var_3 )
{
    var_0._ID680 = var_1;
    var_0._ID40762 = var_2;
    var_0._ID13788 = var_3;
}

_ID34459()
{
    var_0 = spawnstruct();
    var_0._ID680 = "";
    var_0._ID40762 = 0.0;
    var_0._ID13788 = 0.0;
    return var_0;
}

_ID34458( var_0 )
{
    var_0._ID680 = "";
    var_0._ID40762 = 0.0;
    var_0._ID13788 = 0.0;
}
