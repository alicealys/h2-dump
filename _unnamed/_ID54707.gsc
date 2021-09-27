// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "zodiac_player", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_002C );

    if ( var_0 != "vehicle_zodiac_boat" )
        _ID42411::_ID6216( "vehicle_zodiac_viewmodel" );
    else
        _ID42411::_ID6216( var_0 );

    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_unknown_0065, ::_unknown_0060 );
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
        var_0[var_1] = _func_1A5();

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
    var_0[2]._ID16491 = %pickup_driver_climb_out;
    var_0[3]._ID16491 = %pickup_driver_climb_out;
    var_0[4]._ID16491 = %pickup_driver_climb_out;
    var_0[5]._ID16491 = %pickup_driver_climb_out;
    return var_0;
}
