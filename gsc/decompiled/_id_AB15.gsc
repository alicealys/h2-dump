// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init()
{
    common_scripts\utility::flag_init( "remaster_blockout" );
    common_scripts\utility::flag_set( "remaster_blockout" );
    setdvar( "bcs_enable", 0 );
    _id_ACE5();
    _id_BC69();
    _id_C941();
    _id_B437();
    _id_C796();
    _id_C7E4();
    _id_B2B0();
}

_id_ACE5()
{
    var_0 = getspawnerteamarray( "axis" );

    foreach ( var_2 in var_0 )
        var_2 delete();

    var_4 = getaiarray( "axis" );

    foreach ( var_6 in var_4 )
        var_6 delete();
}

_id_BC69()
{
    var_0 = getentarray( "trigger_multiple", "code_classname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( var_0[var_1].classname == "trigger_multiple_visionset" )
            continue;

        if ( isdefined( var_0[var_1].targetname ) && var_0[var_1].targetname == "trigger_fog" )
            continue;

        if ( isdefined( var_0[var_1].script_noteworthy ) && var_0[var_1].script_noteworthy == "skip_blockout_delete" )
            continue;

        var_0[var_1] delete();
    }
}

_id_C941()
{
    var_0 = [];
    var_0 = common_scripts\utility::array_combine( var_0, getentarray( "trigger_radius", "code_classname" ) );
    var_0 = common_scripts\utility::array_combine( var_0, getentarray( "trigger_disk", "code_classname" ) );
    var_0 = common_scripts\utility::array_combine( var_0, getentarray( "trigger_multiple", "code_classname" ) );
    var_0 = common_scripts\utility::array_combine( var_0, getentarray( "trigger_lookat", "code_classname" ) );
    var_0 = common_scripts\utility::array_combine( var_0, getentarray( "trigger_once", "code_classname" ) );
    var_0 = common_scripts\utility::array_combine( var_0, getentarray( "trigger_use", "code_classname" ) );
    var_0 = common_scripts\utility::array_combine( var_0, getentarray( "trigger_damage", "code_classname" ) );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( isdefined( var_0[var_1].script_bctrigger ) )
            var_0[var_1] delete();

        if ( isdefined( var_0[var_1].script_hint ) )
            var_0[var_1] delete();
    }
}

_id_B437()
{
    var_0 = getentarray( "flood_spawner", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_C796()
{
    var_0 = getentarray( "camper_spawner", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_C65B()
{
    var_0 = getentarray( "trigger_fog", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_AEAC()
{
    var_0 = getentarray( "script_vehicle", "code_classname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_C7E4()
{
    var_0 = getentarray( "truckjunk", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_B424()
{
    var_0 = getentarray( "animated_model", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_AF20()
{
    var_0 = getentarray( "interactive_tv", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_AD2B()
{
    var_0 = getentarray( "explodable_barrel", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_B2B0()
{
    var_0 = getallnodes();
    var_1 = [];
    var_1 = common_scripts\utility::array_combine( var_1, getentarray( "trigger_multiple", "classname" ) );
    var_1 = common_scripts\utility::array_combine( var_1, getentarray( "trigger_radius", "classname" ) );
    var_1 = common_scripts\utility::array_combine( var_1, getentarray( "trigger_once", "classname" ) );
    var_2 = getentarray( "info_volume", "classname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( isdefined( var_0[var_3].script_color_allies ) || isdefined( var_0[var_3].script_color_axis ) )
            var_0[var_3] disconnectnode();
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( isdefined( var_1[var_3].script_color_allies ) || isdefined( var_1[var_3].script_color_axis ) )
            var_1[var_3] delete();
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( isdefined( var_2[var_3].script_color_allies ) || isdefined( var_2[var_3].script_color_axis ) )
            var_2[var_3] delete();
    }
}
