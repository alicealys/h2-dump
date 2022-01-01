// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42237::_ID14400( "change_sun" );
    thread _ID50482();
    thread _ID48420();
    _ID53004( "dc_whitehouse_tunnel" );
}

_ID48420()
{
    level waittill( "load_finished" );
    _ID42234::_ID13611( "5000" );
    _ID42234::_ID13611( "5004" );
}

_ID53004( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "dc_whitehouse_tunnel":
            var_1 = 0;
            var_2 = "dc_whitehouse_tunnel";
            var_3 = "dc_whitehouse_tunnel";
            var_0 = "dc_whitehouse_tunnel";
            break;
        case "dc_whitehouse_lawn":
            var_1 = 0;
            var_2 = "dc_whitehouse_lawn";
            var_3 = "dc_whitehouse_lawn";
            var_0 = "dc_whitehouse_lawn";
            break;
        case "dc_whitehouse_interior":
            var_1 = 0;
            var_2 = "dc_whitehouse_interior";
            var_3 = "dc_whitehouse_interior";
            var_0 = "dc_whitehouse_interior";
            break;
        default:
            var_1 = 1;
            var_2 = "dc_whitehouse";
            var_3 = "dc_whitehouse";
            var_0 = "dc_whitehouse";
            break;
    }

    _ID42407::_ID32515( var_2, var_1 );
    _ID42407::_ID14689( var_3, var_1 );
    level._ID794 _ID42407::_ID48929( var_0 );
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
