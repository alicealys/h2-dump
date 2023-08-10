// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    init_level_lighting_flags();
    thread setup_dof_presets();
    thread set_level_lighting_values();
    thread _id_AB61();
    maps\_thermal_scope_lightset::init( "boneyard_thermal" );
    level.visionthermaldefault = "boneyard_thermal";
}

_id_AB61()
{
    common_scripts\utility::flag_wait( "lighting_kickoff_threads" );
    thread _id_B332();
    thread _id_AD7B();
    thread _id_AF7F();
    thread _id_BFFC();
    thread _id_B15E();
    thread _id_B6C8();
}

init_level_lighting_flags()
{
    common_scripts\utility::flag_init( "lighting_kickoff_threads" );
    common_scripts\utility::flag_init( "lighting_do_uaz_control_dof" );
}

setup_dof_presets()
{

}

set_level_lighting_values()
{
    maps\_utility::vision_set_fog_changes( "boneyard", 0 );
    level.player maps\_utility::_id_BF21( "boneyard" );
    level._id_C8E0 = "boneyard";
    level._id_BF83 = "boneyard";
}

_id_B6C8()
{
    common_scripts\utility::flag_wait( "flyby_c130" );
    level.player playrumblelooponentity( "c130_flyby" );
    level thread maps\boneyard_code::_id_D3BB( 0.2, 5, 1, 4 );
    wait 1.5;
    level.player thread maps\_utility::blend_movespeedscale( 0.1, 1.5 );
    var_0 = int( 15.0 );
    var_1 = -8;

    for ( var_2 = 0; var_2 < var_0; var_2++ )
    {
        var_3 = level.player getplayerangles();
        var_4 = var_3[0];
        var_5 = ( var_1 - var_4 ) / ( var_0 - var_2 );
        var_5 = clamp( var_5, -1.5, 1.5 );
        level.player setplayerangles( var_3 + ( var_5, 0, 0 ) );
        wait 0.05;
    }

    level.player thread maps\_utility::blend_movespeedscale( 1, 1 );
}

_id_AD7B()
{
    common_scripts\utility::flag_wait( "flyby_vision_change" );
    level thread maps\_utility::vision_set_fog_changes( "boneyard", 10 );
    common_scripts\utility::flag_wait( "higround_ascend" );
}

_id_B332()
{
    common_scripts\utility::flag_wait( "ride_uaz_arriving" );
    var_0 = 0.65;
    var_1 = 3;
    var_2 = getdvarfloat( "sm_sunSampleSizeNear" );
    var_3 = var_2 - var_0;
    var_4 = var_1 * 20;

    for ( var_5 = 0; var_5 <= var_4; var_5++ )
    {
        var_6 = var_5 / var_4;
        var_6 = 1 - var_6;
        var_7 = var_6 * var_3;
        var_8 = var_0 + var_7;
        setsaveddvar( "sm_sunSampleSizeNear", var_8 );
        wait 0.05;
    }
}

_id_BFFC()
{
    common_scripts\utility::flag_wait( "uaz_mounted" );
    maps\_utility::lerp_fov_overtime( 0.1, 80 );
    wait 2;
    level thread maps\_utility::vision_set_fog_changes( "boneyard_ride", 5 );
    common_scripts\utility::flag_wait( "uaz_player_in_control" );
    level thread maps\_utility::vision_set_fog_changes( "boneyard_steer", 2 );
}

_id_AF7F()
{
    common_scripts\utility::flag_wait( "lighting_do_uaz_control_dof" );
    var_0 = 2.0;
    var_1 = level.dofdefault;
    var_2["nearStart"] = 8;
    var_2["nearEnd"] = 27;
    var_2["nearBlur"] = 4;
    var_2["farStart"] = 5000;
    var_2["farEnd"] = 10000;
    var_2["farBlur"] = 2;
    maps\_utility::_id_B75A( var_1, var_2, var_0 );
}

_id_B15E()
{
    common_scripts\utility::flag_wait( "uaz_park" );
    wait 0.15;
    earthquake( 0.35, 0.5, level.player.origin, 5000 );
    level.player playrumblelooponentity( "damage_heavy" );
}
