// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000B();
    _unknown_0018( "gulag_intro_flight" );
    level._ID44391 = "gulag_nvg";
    _unknown_0111();
    _unknown_013B();
}

_ID32363()
{
    if ( _func_242() )
        _func_0DB( "r_disablelightsets", 0 );
}

_ID46054( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    var_1 = "gulag_global";

    switch ( var_0 )
    {

    }

    _ID42407::_ID32515( var_0, var_access_2 );
    _ID42407::_ID14689( var_1, var_access_2 );
    level._ID794 _ID42407::_ID48929( var_access_4 );
    level._ID794 _meth_849F( "gulag", var_access_2 );
    _ID42407::_ID49346( var_access_3, 1 );
    case "gulag_torture":
    case "gulag_sewers_slide":
    case "gulag_sewers":
    case "gulag_pipetunnels":
    case "gulag_showers":
    case "slomo_breach":
    case "gulag_nvg_corridors":
    case "gulag_cellblock_02":
    case "gulag_cellblock_01":
    case "gulag_flight":
    case "gulag_entrance":
    case "gulag_nvg":
    case "gulag_intro_flight":
    case "gulag":
    case "gulag_rappel":
    case "gulag_ending":
    case "gulag_hallways":
    default:
}

_ID45391( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return;

    var_1 = undefined;

    switch ( var_0 )
    {

    }

    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_1 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_1 );
    case "ending_rappel":
    case "bathroom_out":
    case "bathroom_in":
    case "exploding_wall":
    case "cellblock_01":
    case "exterior":
    default:
}

_ID51919()
{
    level._ID52349 = ( 0, 0, 0 );
    var_0 = _func_1A2( "reflexion_override_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_0417 );
}

_ID46803()
{
    var_0 = undefined;

    if ( _func_02F( self._ID1191 ) )
    {
        self._ID49589 = _func_1A1( self._ID1191, "targetname" );
        var_0 = self._ID49589._ID740;
        var_1 = 1;
    }
    else
        var_1 = 0;

    for (;;)
    {
        self waittill( "trigger" );

        if ( var_1 )
        {
            if ( var_0 != level._ID52349 )
            {
                level._ID794 _meth_85A6( var_0 );
                level._ID52349 = var_0;
            }

            continue;
        }

        level._ID794 _meth_85A7();
        level._ID52349 = ( 0, 0, 0 );
    }
}

shower_scriptables_light_target_override()
{
    var_0 = _func_1A2( "ceramic_lighting_override", "targetname" );
    var_1 = _func_23E( "ceramic_lighting_override", "targetname" );
    var_2 = _ID42237::_ID3296( var_0, var_1 );
    var_3 = var_2;

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];

        if ( !_func_02F( self._ID1191 ) )
            continue;

        var_5 = _func_1A1( self._ID1191, "targetname" );
        var_4 _meth_848A( var_5._ID740 );
    }

    var_clear_3
    var_clear_0
}
