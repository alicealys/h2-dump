// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000B();
    _unknown_0018( "dcburning_bunker" );
    level._ID44391 = "dcburning_nvg";
    level._ID40576 = "dcburning_thermal";
}

_ID32363()
{
    if ( _func_242() )
        _func_0DB( "r_disablelightsets", 0 );
}

_ID51844( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        return;

    if ( level._ID912 == "dcemp" )
        return;

    switch ( var_0 )
    {

    }

    if ( _func_02F( var_access_3 ) )
        var_access_2 = var_access_3;

    _ID42407::_ID32515( var_0, var_access_2 );

    if ( _func_02F( var_1 ) )
        _ID42407::_ID14689( var_1, var_access_2 );

    if ( _func_02F( var_access_4 ) )
        level._ID794 _ID42407::_ID48929( var_access_4 );

    if ( level._ID912 == "dc_burning" )
    {
        level._ID794 _meth_849F( "dcburning", var_access_2 );
        return;
        case "dcburning_barrett_thermal":
        case "dcburning_heliride_takeoff":
        case "dcburning_helicrash":
        case "dcburning_thermal":
        case "dcburning_heliride":
        case "dcburning_rooftops":
        case "dcburning_commerce":
        case "dcburning_bunker":
        case "dcburning_nvg":
        case "dcburning_trenches":
        case "dcburning_crash":
        case "dcburning":
        default:
    }
}
