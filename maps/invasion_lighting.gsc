// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000B();
    _unknown_0018( "invasion" );
    level._ID50231 = "h2_invasion";
    maps\_thermal_scope_lightset::_ID521( "invasion_thermal" );
}

_ID32363()
{
    if ( _func_242() )
        _func_0DB( "r_disablelightsets", 0 );
}

_ID47921( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    switch ( var_0 )
    {

    }

    _ID42407::_ID32515( var_access_1, var_access_2 );
    _ID42407::_ID14689( var_0, var_access_2 );
    level._ID794 _ID42407::_ID48929( var_access_3 );
    level._ID794 _meth_849F( "invasion", var_access_2 );
    case "invasion":
    case "convoy":
    case "helis":
    case "vip_escort":
    case "burgertown":
    case "diner":
    case "defend_diner":
    case "attack_diner":
    case "crash":
    case "pizza":
    case "yards":
    case "latvee":
    default:
}
