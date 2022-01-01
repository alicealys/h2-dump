// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID53206::_ID616();
    _ID44190::_ID616();
    maps\af_caves_anim::_ID616();
    _ID47599::_ID616();
    _ID42323::_ID616();
    _ID50289::_ID616();
    maps\af_caves_lighting::_ID616();
    getent( "cell_hook1", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook1", "cell_hook" );
    getent( "cell_hook2", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook2", "cell_hook" );
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( 4148.4, 6920.6, -3628.8 );
    var_1 = ( -4.7, -81, 0 );
    level._ID794 setorigin( var_0 );
    level._ID794 setplayerangles( var_1 );
    level._ID794 lerpfov( 80, 0.1 );
    level._ID794._ID511 = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "af_caves_overlook", 1 );
    _ID42407::_ID14689( "af_caves", 1 );
    level._ID794 lightset( "af_caves" );
}
