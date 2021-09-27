// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42231::_ID10505( "toy_copier", "tag_body", 250, undefined, 32, "no_melee" );
    _ID42231::_ID10544( 15 );
    _ID42231::_ID10531( "tag_left_feeder", "fx/smoke/car_damage_whitesmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 250, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_left_feeder", "fx/smoke/car_damage_blacksmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 500, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_fx", "fx/props/photocopier_sparks", 3 );
    _ID42231::_ID10532( "copier_spark_loop" );
    _ID42231::_ID10528( 12, 0.2 );
    _ID42231::_ID10548( undefined, undefined, 800, undefined, 5, "no_melee" );
    _ID42231::_ID10517( "tag_fx", "fx/props/photocopier_exp", 0 );
    _ID42231::_ID10517( "tag_fx", "fx/props/photocopier_fire" );
    _ID42231::_ID10541( "copier_exp" );
    _ID42231::_ID10532( "copier_fire_loop" );
    _ID42231::_ID10512( 7000, 8000, 96, 32, 48 );
    _ID42231::_ID10548( undefined, "prop_photocopier_destroyed", undefined, undefined, "no_melee" );
    _ID42231::_ID10535( "tag_left_feeder", "prop_photocopier_destroyed_left_feeder", 4, undefined, undefined, undefined, 1.0, 1.0 );
    _ID42231::_ID10535( "tag_right_shelf", "prop_photocopier_destroyed_right_shelf", 4, undefined, undefined, undefined, 1.0, 1.0 );
    _ID42231::_ID10535( "tag_top", "prop_photocopier_destroyed_top", 4, undefined, undefined, undefined, 1.0, 1.0 );
}
