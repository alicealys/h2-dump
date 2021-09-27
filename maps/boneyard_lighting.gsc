// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_0019();
    thread _unknown_0023();
    thread _unknown_0028();
    thread _unknown_001A();
    maps\_thermal_scope_lightset::_ID521( "boneyard_thermal" );
    level._ID40576 = "boneyard_thermal";
}

_ID43873()
{
    _ID42237::_ID14413( "lighting_kickoff_threads" );
    thread _unknown_0089();
    thread _unknown_0084();
    thread _unknown_00BD();
    thread _unknown_00B0();
    thread _unknown_00DC();
    thread _unknown_006B();
}

_ID19720()
{
    _ID42237::_ID14400( "lighting_kickoff_threads" );
    _ID42237::_ID14400( "lighting_do_uaz_control_dof" );
}

_ID32969()
{

}

_ID32363()
{
    _ID42407::_ID40561( "boneyard", 0 );
    level._ID794 _ID42407::_ID48929( "boneyard" );
    level._ID51424 = "boneyard";
    level._ID49027 = "boneyard";
}

_ID46792()
{
    _ID42237::_ID14413( "flyby_c130" );
    level._ID794 _meth_80B4( "c130_flyby" );
    level thread maps\boneyard_code::_ID54203( 0.2, 5, 1, 4 );
    wait 1.5;
    level._ID794 thread _ID42407::_ID5278( 0.1, 1.5 );
    var_0 = _func_0C1( 15.0 );
    var_1 = -8;

    for ( var_2 = 0; var_2 < var_0; var_2++ )
    {
        var_3 = level._ID794 _meth_8346();
        var_4 = var_3[0];
        var_5 = var_1 - var_4 / var_0 - var_2;
        var_5 = _func_0EE( var_5, -1.5, 1.5 );
        level._ID794 _meth_8345( var_3 + ( var_5, 0, 0 ) );
        wait 0.05;
    }

    level._ID794 thread _ID42407::_ID5278( 1, 1 );
}

_ID44411()
{
    _ID42237::_ID14413( "flyby_vision_change" );
    level thread _ID42407::_ID40561( "boneyard", 10 );
    _ID42237::_ID14413( "higround_ascend" );
}

_ID45874()
{
    _ID42237::_ID14413( "ride_uaz_arriving" );
    var_0 = 0.65;
    var_1 = 3;
    var_2 = _func_03B( "sm_sunSampleSizeNear" );
    var_3 = var_2 - var_0;
    var_4 = var_1 * 20;

    for ( var_5 = 0; var_5 <= var_4; var_5++ )
    {
        var_6 = var_5 / var_4;
        var_6 = 1 - var_6;
        var_7 = var_6 * var_3;
        var_8 = var_0 + var_7;
        _func_0DB( "sm_sunSampleSizeNear", var_8 );
        wait 0.05;
    }
}

_ID49148()
{
    _ID42237::_ID14413( "uaz_mounted" );
    _ID42407::_ID22156( 0.1, 80 );
    wait 2;
    level thread _ID42407::_ID40561( "boneyard_ride", 5 );
    _ID42237::_ID14413( "uaz_player_in_control" );
    level thread _ID42407::_ID40561( "boneyard_steer", 2 );
}

_ID44927()
{
    _ID42237::_ID14413( "lighting_do_uaz_control_dof" );
    var_0 = 2.0;
    var_1 = level._ID11390;
    var_2["nearStart"] = 8;
    var_2["nearEnd"] = 27;
    var_2["nearBlur"] = 4;
    var_2["farStart"] = 5000;
    var_2["farEnd"] = 10000;
    var_2["farBlur"] = 2;
    _ID42407::_ID46938( var_1, var_2, var_0 );
}

_ID45406()
{
    _ID42237::_ID14413( "uaz_park" );
    wait 0.15;
    _func_192( 0.35, 0.5, level._ID794._ID740, 5000 );
    level._ID794 _meth_80B4( "damage_heavy" );
}
