// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_0007();
    _unknown_0035( "favela_escape" );
}

_ID32363()
{
    if ( _func_242() )
        _func_0DB( "r_disablelightsets", 0 );
}

_ID45391( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    var_1 = undefined;

    switch ( var_0 )
    {

    }

    case "ending_rappel":
    case "bathroom_out":
    case "bathroom_in":
    case "exploding_wall":
    case "cellblock_01":
    default:
}

_ID50564( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    var_1 = undefined;
    var_1 = "4065 1090 1110";

    switch ( var_0 )
    {

    }

    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_access_3 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_access_3 );
    _ID42407::_ID32515( var_0, var_access_2 );
    _ID42407::_ID14689( var_1, var_access_2 );
    level._ID794 _ID42407::_ID48929( var_access_4 );
    case "favela_escape_chopperjump":
    case "favela_escape_solorun_buildings":
    case "favela_escape_playerfall_recovery":
    case "favela_escape_rooftops":
    case "favela_escape_soccerfield":
    case "favela_escape_market":
    case "favela_escape_radiotower":
    default:
}
