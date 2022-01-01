// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID51620::_ID616();
    _ID52608::_ID616();
    _ID49419::_ID616();
    maps\contingency_anim::_ID43266();
    _ID42323::_ID616();
    maps\contingency_lighting::_ID44761( "defend_sub" );
    thread sat_rotate_cam();
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( -17184.7, -730.3, 1469.6 );
    var_1 = ( 16, 57.4, 0 );
    level._ID794 setorigin( var_0 );
    level._ID794 setplayerangles( var_1 );
    level._ID794 lerpfov( 80, 0.1 );
    level._ID794._ID511 = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "contingency_port", 1 );
    _ID42407::_ID14689( "contingency_port", 1 );
    level._ID794 lightset( "contingency" );
}

sat_rotate_cam()
{
    var_0 = getent( "sat_dish", "targetname" );

    for (;;)
    {
        var_0 rotateyaw( 360, 25, 0.05, 0.05 );
        wait 25;
    }
}
