// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "swat_van_troops", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0054 );
    _ID42411::_ID6216( var_0, "h2_vehicle_russian_swat_van_destroy" );
    _ID42411::_ID6213( "fx/explosions/huge_vehicle_explosion", "TAG_DEATHFX", "car_explode", undefined, undefined, undefined, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_swat_van_back", "TAG_CARGO_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_swat_van", "TAG_CAB_FIRE", undefined, undefined, undefined, undefined, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_swat_van_addon", "TAG_CAB_FIRE", undefined, undefined, undefined, undefined, 0 );
    _ID42411::_ID6245( ( 0, 0, 32 ), 300, 200, 100, 0 );
    _ID42411::_ID6220( %uaz_driving_idle_forward, %uaz_driving_idle_backward, 10 );
    _ID42411::_ID6217( 1, 1.6, 800 );
    _unknown_00DF();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6257();
    _ID42411::_ID6204( ::_unknown_0158, ::_unknown_0109 );
    _ID42411::_ID6262( ::_unknown_021E );
}

_ID19731()
{
    self.disconnectpathsondeathfinished = 1;
}

_ID47509()
{
    var_0 = _func_1A5();
    var_0._ID3197 = [];
    var_0._ID3197 = _ID42237::_ID3293( var_0._ID3197, %h2_destroyed_swat_van );
    var_0._ID7836 = 1;
    _ID42411::_ID6212( var_0 );
}

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %russian_swat_van_driver_getout_door;
    var_0[0]._ID40155 = "front_door_left_jnt";
    var_1 = %h2_russian_swat_van_doorsopen;
    var_2 = "front_door_left_jnt";
    var_0[1]._ID40152 = var_1;
    var_0[1]._ID40155 = var_2;
    var_0[2]._ID40152 = var_1;
    var_0[2]._ID40155 = var_2;
    var_0[3]._ID40152 = var_1;
    var_0[3]._ID40155 = var_2;
    var_0[4]._ID40152 = var_1;
    var_0[4]._ID40155 = var_2;
    var_0[5]._ID40152 = var_1;
    var_0[5]._ID40155 = var_2;
    var_0[6]._ID40152 = var_1;
    var_0[6]._ID40155 = var_2;
    var_0[7]._ID40152 = var_1;
    var_0[7]._ID40155 = var_2;
    var_0[8]._ID40152 = var_1;
    var_0[8]._ID40155 = var_2;
    var_0[0]._ID40153 = 1;
    var_0[1]._ID40153 = 0;
    var_0[2]._ID40153 = 0;
    var_0[3]._ID40153 = 0;
    var_0[4]._ID40153 = 0;
    var_0[5]._ID40153 = 0;
    var_0[6]._ID40153 = 0;
    var_0[7]._ID40153 = 0;
    var_0[8]._ID40153 = 0;
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 9; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID34225 = "tag_driver";
    var_0[0]._ID19302 = %russian_swat_van_driver_idle;
    var_0[0]._ID16491 = %russian_swat_van_driver_getout;
    var_0[1]._ID34225 = "tag_detach";
    var_0[1]._ID19302 = %russian_swat_van_guyl1_idle;
    var_0[1]._ID16491 = %russian_swat_van_guyl1_getout;
    var_0[1]._ID16495 = %russian_swat_van_guyl_runoff;
    var_0[1]._ID13635 = %death_explosion_stand_b_v1;
    var_0[2]._ID34225 = "tag_detach";
    var_0[2]._ID19302 = %russian_swat_van_guyr1_idle;
    var_0[2]._ID16491 = %russian_swat_van_guyr1_getout;
    var_0[2]._ID16495 = %russian_swat_van_guyr_runoff;
    var_0[2]._ID13635 = %death_explosion_stand_b_v2;
    var_0[3]._ID34225 = "tag_detach";
    var_0[3]._ID19302 = %russian_swat_van_guyl2_idle;
    var_0[3]._ID16491 = %russian_swat_van_guyl2_getout;
    var_0[3]._ID16495 = %russian_swat_van_guyl_runoff;
    var_0[3]._ID13635 = %death_explosion_stand_b_v3;
    var_0[4]._ID34225 = "tag_detach";
    var_0[4]._ID19302 = %russian_swat_van_guyr2_idle;
    var_0[4]._ID16491 = %russian_swat_van_guyr2_getout;
    var_0[4]._ID16495 = %russian_swat_van_guyr_runoff;
    var_0[4]._ID13635 = %death_explosion_stand_b_v4;
    var_0[5]._ID34225 = "tag_detach";
    var_0[5]._ID19302 = %russian_swat_van_guyl3_idle;
    var_0[5]._ID16491 = %russian_swat_van_guyl3_getout;
    var_0[5]._ID16495 = %russian_swat_van_guyl_runoff;
    var_0[5]._ID13635 = %death_explosion_stand_b_v2;
    var_0[6]._ID34225 = "tag_detach";
    var_0[6]._ID19302 = %russian_swat_van_guyr3_idle;
    var_0[6]._ID16491 = %russian_swat_van_guyr3_getout;
    var_0[6]._ID16495 = %russian_swat_van_guyr_runoff;
    var_0[6]._ID13635 = %death_explosion_stand_b_v1;
    var_0[7]._ID34225 = "tag_detach";
    var_0[7]._ID19302 = %russian_swat_van_guyl4_idle;
    var_0[7]._ID16491 = %russian_swat_van_guyl4_getout;
    var_0[7]._ID16495 = %russian_swat_van_guyl_runoff;
    var_0[7]._ID13635 = %death_explosion_stand_b_v4;
    var_0[8]._ID34225 = "tag_detach";
    var_0[8]._ID19302 = %russian_swat_van_guyr4_idle;
    var_0[8]._ID16491 = %russian_swat_van_guyr4_getout;
    var_0[8]._ID16495 = %russian_swat_van_guyr_runoff;
    var_0[8]._ID13635 = %death_explosion_stand_b_v3;
    return var_0;
}

_ID39488()
{
    var_0 = [];
    var_0["passengers"] = [];
    var_0["all"] = [];
    var_1 = "passengers";
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_0[var_1][var_0[var_1].size] = 5;
    var_0[var_1][var_0[var_1].size] = 6;
    var_0[var_1][var_0[var_1].size] = 7;
    var_0[var_1][var_0[var_1].size] = 8;
    var_1 = "all";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_0[var_1][var_0[var_1].size] = 5;
    var_0[var_1][var_0[var_1].size] = 6;
    var_0[var_1][var_0[var_1].size] = 7;
    var_0[var_1][var_0[var_1].size] = 8;
    var_0["default"] = var_0["all"];
    return var_0;
}
