// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID54498::_ID616();
    _ID43529::_ID616();
    _ID52246::_ID616();
    _ID42323::_ID616();
    maps\boneyard_anim::_ID616();
    maps\boneyard_lighting::_ID616();
    thread _unknown_0022();
}

_ID49243()
{
    var_0 = ( -5873.6, -4813.4, 181.9 );
    var_1 = ( 15.6, 55.6, 0 );
    level._ID794 _meth_8343( var_0 );
    level._ID794 _meth_8345( var_1 );
    level._ID794 _meth_8032( 80, 0.1 );
    level._ID794._ID511 = 1;
    _func_0DB( "hud_drawhud", 0 );
    _ID42407::_ID32515( "boneyard", 1 );
    _ID42407::_ID14689( "boneyard", 1 );
    level._ID794 _meth_83CD( "boneyard" );
    var_2 = _func_1A1( "intro_btr80", "script_noteworthy" );
    var_2 _ID42407::_ID1947( ::_unknown_00BA );
    var_2._ID740 = ( -5160, -2920, 22.4 );
    var_2._ID11577 = 1;
    var_3 = var_2 _ID42407::_ID35192();
}

_ID49870()
{
    waittillframeend;
    _ID42411::_ID14749();
}
