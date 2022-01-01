// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    _ID42237::_ID14400( "remaster_blockout" );
    _ID42237::_ID14402( "remaster_blockout" );
    setdvar( "bcs_enable", 0 );
    _ID44261();
    _ID48233();
    _ID51521();
    _ID46135();
    _ID51094();
    _ID51172();
    _ID45744();
}

_ID44261()
{
    var_0 = getspawnerteamarray( "axis" );

    foreach ( var_2 in var_0 )
        var_2 delete();

    var_4 = getaiarray( "axis" );

    foreach ( var_6 in var_4 )
        var_6 delete();
}

_ID48233()
{
    var_0 = getentarray( "trigger_multiple", "code_classname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( var_0[var_1]._ID170 == "trigger_multiple_visionset" )
            continue;

        if ( isdefined( var_0[var_1]._ID1193 ) && var_0[var_1]._ID1193 == "trigger_fog" )
            continue;

        if ( isdefined( var_0[var_1]._ID922 ) && var_0[var_1]._ID922 == "skip_blockout_delete" )
            continue;

        var_0[var_1] delete();
    }
}

_ID51521()
{
    var_0 = [];
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_radius", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_disk", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_multiple", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_lookat", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_once", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_use", "code_classname" ) );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "trigger_damage", "code_classname" ) );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( isdefined( var_0[var_1]._ID31072 ) )
            var_0[var_1] delete();

        if ( isdefined( var_0[var_1]._ID31250 ) )
            var_0[var_1] delete();
    }
}

_ID46135()
{
    var_0 = getentarray( "flood_spawner", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID51094()
{
    var_0 = getentarray( "camper_spawner", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID50779()
{
    var_0 = getentarray( "trigger_fog", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID44716()
{
    var_0 = getentarray( "script_vehicle", "code_classname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID51172()
{
    var_0 = getentarray( "truckjunk", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID46116()
{
    var_0 = getentarray( "animated_model", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID44832()
{
    var_0 = getentarray( "interactive_tv", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID44331()
{
    var_0 = getentarray( "explodable_barrel", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_ID45744()
{
    var_0 = getallnodes();
    var_1 = [];
    var_1 = _ID42237::_ID3296( var_1, getentarray( "trigger_multiple", "classname" ) );
    var_1 = _ID42237::_ID3296( var_1, getentarray( "trigger_radius", "classname" ) );
    var_1 = _ID42237::_ID3296( var_1, getentarray( "trigger_once", "classname" ) );
    var_2 = getentarray( "info_volume", "classname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( isdefined( var_0[var_3]._ID31096 ) || isdefined( var_0[var_3]._ID31097 ) )
            var_0[var_3] disconnectnode();
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( isdefined( var_1[var_3]._ID31096 ) || isdefined( var_1[var_3]._ID31097 ) )
            var_1[var_3] delete();
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( isdefined( var_2[var_3]._ID31096 ) || isdefined( var_2[var_3]._ID31097 ) )
            var_2[var_3] delete();
    }
}
