// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    _ID42237::_ID14400( "remaster_blockout" );
    _ID42237::_ID14402( "remaster_blockout" );
    _func_034( "bcs_enable", 0 );
    _unknown_002B();
    _unknown_0049();
    _unknown_006D();
    _unknown_00A3();
    _unknown_00B5();
    _unknown_00E4();
    _unknown_0120();
}

_ID44261()
{
    var_0 = _func_0E2( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_4 = _func_0DE( "axis" );
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID48233()
{
    var_0 = _func_1A2( "trigger_multiple", "code_classname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( var_0[var_1]._ID170 == "trigger_multiple_visionset" )
            continue;

        if ( _func_02F( var_0[var_1]._ID1193 ) && var_0[var_1]._ID1193 == "trigger_fog" )
            continue;

        if ( _func_02F( var_0[var_1]._ID922 ) && var_0[var_1]._ID922 == "skip_blockout_delete" )
            continue;

        var_0[var_1] _meth_80B7();
    }
}

_ID51521()
{
    var_0 = [];
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "trigger_radius", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "trigger_disk", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "trigger_multiple", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "trigger_lookat", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "trigger_once", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "trigger_use", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "trigger_damage", "code_classname" ) );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( _func_02F( var_0[var_1]._ID31072 ) )
            var_0[var_1] _meth_80B7();

        if ( _func_02F( var_0[var_1]._ID31250 ) )
            var_0[var_1] _meth_80B7();
    }
}

_ID46135()
{
    var_0 = _func_1A2( "flood_spawner", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID51094()
{
    var_0 = _func_1A2( "camper_spawner", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID50779()
{
    var_0 = _func_1A2( "trigger_fog", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID44716()
{
    var_0 = _func_1A2( "script_vehicle", "code_classname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID51172()
{
    var_0 = _func_1A2( "truckjunk", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID46116()
{
    var_0 = _func_1A2( "animated_model", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID44832()
{
    var_0 = _func_1A2( "interactive_tv", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID44331()
{
    var_0 = _func_1A2( "explodable_barrel", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID45744()
{
    var_0 = _func_0CA();
    var_1 = [];
    var_1 = _ID42237::_ID3296( var_1, _func_1A2( "trigger_multiple", "classname" ) );
    var_1 = _ID42237::_ID3296( var_1, _func_1A2( "trigger_radius", "classname" ) );
    var_1 = _ID42237::_ID3296( var_1, _func_1A2( "trigger_once", "classname" ) );
    var_2 = _func_1A2( "info_volume", "classname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( _func_02F( var_0[var_3]._ID31096 ) || _func_02F( var_0[var_3]._ID31097 ) )
            var_0[var_3] _meth_8060();
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( _func_02F( var_1[var_3]._ID31096 ) || _func_02F( var_1[var_3]._ID31097 ) )
            var_1[var_3] _meth_80B7();
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( _func_02F( var_2[var_3]._ID31096 ) || _func_02F( var_2[var_3]._ID31097 ) )
            var_2[var_3] _meth_80B7();
    }
}
