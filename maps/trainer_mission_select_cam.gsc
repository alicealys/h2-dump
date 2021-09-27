// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    maps\trainer::_ID28333();
    _ID42323::_ID616();
    maps\trainer::_ID28284();
    thread _unknown_0014();
    return 1;
}

_ID49243()
{
    wait 0.5;
    var_0 = ( -5435.7, 2930.4, 67 );
    var_1 = ( 7.7, -15.1, 0 );
    level._ID794 _meth_8343( var_0 );
    level._ID794 _meth_8345( var_1 );
    level._ID794 _meth_8032( 85, 0.1 );
    level._ID794._ID511 = 1;
    _func_0DB( "hud_drawhud", 0 );
    _ID42407::_ID32515( "trainer", 1 );
    _ID42407::_ID14689( "trainer", 1 );
    level._ID794 _meth_83CD( "trainer" );
}
