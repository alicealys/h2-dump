// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID42231::_ID10505( "toy_transformer_ratnest01", "tag_origin", 75, undefined, 32, "no_melee" );
    _ID42231::_ID10544( 15 );
    _ID42231::_ID10517( "tag_fx", "fx/smoke/transformer_damage_whitesmoke_ratnest01" );
    _ID42231::_ID10548( undefined, undefined, 75, undefined, 32, "no_melee" );
    _ID42231::_ID10517( "tag_fx", "fx/smoke/transformer_damage_blacksmoke_ratnest01" );
    _ID42231::_ID10548( undefined, undefined, 150, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_fx", "fx/explosions/transformer_spark_runner_ratnest01", 0.5 );
    _ID42231::_ID10532( "transformer_spark_loop" );
    _ID42231::_ID10528( 24, 0.2 );
    _ID42231::_ID10548( undefined, undefined, 250, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_fx", "fx/explosions/transformer_spark_runner_ratnest01", 0.5 );
    _ID42231::_ID10531( "tag_fx", "fx/fire/transformer_blacksmoke_fire_ratnest01", 0.4 );
    _ID42231::_ID10541( "transformer01_flareup_med" );
    _ID42231::_ID10532( "transformer_spark_loop" );
    _ID42231::_ID10528( 24, 0.2, 150, "allies" );
    _ID42231::_ID10548( undefined, undefined, 400, undefined, 5, "no_melee" );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/transformer_explosion_ratnest01", 0 );
    _ID42231::_ID10517( "tag_fx", "fx/fire/firelp_small_pm_ratnest01" );
    _ID42231::_ID10541( "transformer01_explode" );
    _ID42231::_ID10512( 7000, 8000, 150, 16, 100 );
    _ID42231::_ID10548( undefined, "utility_transformer_ratnest01_dest", undefined, undefined, "no_melee" );
}
