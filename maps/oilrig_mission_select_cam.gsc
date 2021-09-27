// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID52779::_ID616();
    _ID51744::_ID616();
    _ID43617::_ID616();
    maps\oilrig_anim::_ID616();
    _ID42323::_ID616();
    _ID42367::_ID34366();
    _ID42367::_ID1851( maps\oilrig::_ID46835 );
    maps\oilrig_lighting::_ID616();
    var_0 = _func_1A2( "animated_crane_hook", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID3189 = "animated_crane_hook";
        var_2 _ID42407::_ID3428();
        var_2 thread _ID42259::_ID3044( var_2, "idle", "stop_idle" );
    }

    var_clear_2
    var_clear_0
    thread _unknown_0087();
}

_ID49243()
{
    var_0 = ( 723.7, 1188.2, -1413.3 );
    var_1 = ( -2.7, -125.3, 0 );
    level._ID794 _meth_8343( var_0 );
    level._ID794 _meth_8345( var_1 );
    level._ID794 _meth_8032( 80, 0.1 );
    level._ID794._ID511 = 1;
    _func_0DB( "hud_drawhud", 0 );
    _ID42407::_ID32515( "oilrig", 1 );
    _ID42407::_ID14689( "oilrig", 1 );
    level._ID794 _meth_83CD( "oilrig_interiors" );
}
