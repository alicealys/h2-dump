// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    maps\airport::_ID49693();
    maps\airport_challenge::_ID52260();
    _ID45908::_ID616();
    _ID47439::_ID616();
    _ID47204::_ID616();
    _ID48878::_ID616();
    _ID53660::_ID616();
    maps\airport_anim::_ID616();
    _ID42323::_ID616();
    maps\airport_lighting::_ID616();
    _ID42289::_ID521();
    _ID42287::_ID521();
    var_0 = _func_1A2( "script_model", "classname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
    thread _unknown_0077();
}

_ID49243()
{
    var_0 = ( 5358.4, 2161.7, 308.9 );
    var_1 = ( 12.6, 161.5, 0 );
    level._ID794 _meth_8343( var_0 );
    level._ID794 _meth_8345( var_1 );
    level._ID794 _meth_8032( 95, 0.1 );
    level._ID794._ID511 = 1;
    _func_0DB( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "airport", 0 );
    level._ID794 _ID42407::_ID40561( "airport", 0 );
    level._ID794 _meth_83CD( "airport" );
}
