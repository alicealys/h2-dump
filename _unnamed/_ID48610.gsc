// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "zodiac", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_zodiac" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6262( ::_ID39488 );
}

_ID19731()
{

}

_ID32509( var_0 )
{
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 6; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_body";
    var_0[1]._ID34225 = "tag_body";
    var_0[2]._ID34225 = "tag_body";
    var_0[3]._ID34225 = "tag_body";
    var_0[4]._ID34225 = "tag_body";
    var_0[5]._ID34225 = "tag_body";
    var_0[0]._ID19302 = %oilrig_civ_escape_1_seal_a;
    var_0[1]._ID19302 = %oilrig_civ_escape_2_seal_a;
    var_0[2]._ID19302 = %oilrig_civ_escape_3_a;
    var_0[3]._ID19302 = %oilrig_civ_escape_4_a;
    var_0[4]._ID19302 = %oilrig_civ_escape_5_a;
    var_0[5]._ID19302 = %oilrig_civ_escape_6_a;
    var_0[0]._ID16491 = %pickup_driver_climb_out;
    var_0[1]._ID16491 = %pickup_driver_climb_out;
    var_0[2]._ID16491 = %pickup_passenger_climb_out;
    var_0[3]._ID16491 = %pickup_passenger_climb_out;
    var_0[4]._ID16491 = %pickup_passenger_climb_out;
    var_0[5]._ID16491 = %pickup_passenger_climb_out;
    var_0[0]._ID264 = %h2_af_chase_zodiacdriver_dying;
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
    var_1 = "all";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_0[var_1][var_0[var_1].size] = 5;
    var_0["default"] = var_0["all"];
    return var_0;
}

rider_death_animate_or_ragdoll( var_0, var_1 )
{
    if ( isdefined( var_1.zodiac_rider_in_death_anim ) && var_1.zodiac_rider_in_death_anim )
        return;

    var_1 notify( "newanim" );
    var_2 = _ID42412::_ID3052( var_0, var_1._ID40222 );

    if ( isdefined( var_2._ID264 ) )
    {
        var_0 thread _ID42412::_ID17549( var_1, var_2 );
        var_1.zodiac_rider_in_death_anim = 1;
        return;
    }

    var_1 startragdoll();
}
