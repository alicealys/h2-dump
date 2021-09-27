// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000D();
    _unknown_001A( "af_caves_start" );
    level._ID44391 = "af_caves_nvg";
    maps\_thermal_scope_lightset::_ID521( "af_caves_thermal" );
    level._ID40576 = "af_caves_thermal";
}

_ID32363()
{
    if ( _func_242() )
        _func_0DB( "r_disablelightsets", 0 );
}

_ID51110( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    switch ( var_0 )
    {

    }

    _ID42407::_ID32515( var_access_1, var_access_2 );
    _ID42407::_ID14689( var_0, var_access_2 );
    level._ID794 _ID42407::_ID48929( var_access_3 );
    level._ID794 _meth_849F( "af_caves", var_access_2 );
    case "af_caves_outdoors_explosion_airstrip":
    case "af_caves_steamroom_transition":
    case "af_caves_overlook":
    case "af_caves_ledge":
    case "af_caves_steamroom_breach":
    case "af_caves_steamroom_grp3":
    case "af_caves_steamroom_grp2":
    case "af_caves_steamroom":
    case "af_caves_rappel":
    case "af_caves_nvg":
    case "af_caves_start":
    case "af_caves":
    case "af_caves_outdoors_airstrip":
    case "af_caves_indoors_skylight":
    case "af_caves_indoors":
    default:
}
