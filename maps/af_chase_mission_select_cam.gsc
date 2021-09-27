// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID48548::_ID616();
    _ID52272::_ID616();
    _ID54615::_ID616();
    _ID42407::_ID10126( maps\af_chase::_ID47474 );
    maps\af_chase_knife_fight::_ID53376();
    maps\af_chase::_ID53732();
    _ID42323::_ID616();
    maps\af_chase_anim::_ID43266();
    _ID48270::_ID616();
    _ID48669::_ID52537( "viewhands_player_tf141" );
    _ID45655::_ID616();
    var_0 = _func_1A2( "script_vehicle_zodiac_player", "classname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, _ID48669::_ID50469 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID48364 );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, maps\af_chase_code::_ID44200 );
    _unknown_0083();
    return 1;
}

_ID49243()
{
    var_0 = _func_06A( "script_origin", ( -17560.4, -25627.9, 372.9 ) );
    var_0._ID65 = ( 1.8, -34.9, 0 );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    level._ID794 _meth_8032( 70, 0.1 );
    level._ID794._ID511 = 1;
    _func_0DB( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "af_chase_caves_end", 0 );
    level._ID794 _ID42407::_ID40561( "af_chase_caves_end", 0 );
    level._ID794 _meth_83CD( "af_chase_caves_end" );
    return;
}
