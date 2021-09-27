// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42237::_ID14400( "change_sun" );
    thread _unknown_004B();
    thread _unknown_0018();
    _unknown_0029( "dc_whitehouse_tunnel" );
}

_ID48420()
{
    level waittill( "load_finished" );
    _ID42234::_ID13611( "5000" );
    _ID42234::_ID13611( "5004" );
}

_ID53004( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    switch ( var_0 )
    {

    }

    _ID42407::_ID32515( var_access_1, var_access_2 );
    _ID42407::_ID14689( var_0, var_access_2 );
    level._ID794 _ID42407::_ID48929( var_access_3 );
    case "dc_whitehouse_tunnel":
    case "dc_whitehouse_lawn":
    default:
}

_ID50482()
{
    var_0 = level._ID46787;

    for (;;)
    {
        _ID42237::_ID14413( "change_sun" );
        level._ID46787 = 0.05;
        _ID42234::_ID21260( "5000" );
        _ID42234::_ID21260( "5004" );
        _ID42234::_ID13611( "5001" );
        _ID42237::_ID14426( "change_sun" );
        level._ID46787 = var_0;
        _ID42234::_ID13611( "5000" );
        _ID42234::_ID13611( "5004" );
        _ID42234::_ID21260( "5001" );
    }
}
