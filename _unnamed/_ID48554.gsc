// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

main()
{
    _ID42231::_ID10505( "destructible_gaspump", "tag_origin", 150, undefined, 32, "no_melee" );
    _ID42231::_ID10544( 15 );
    _ID42231::_ID10531( "tag_death_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 150, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_death_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 250, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_death_fx", "fx/fire/gas_pump_fire_damage", 0.4 );
    _ID42231::_ID10541( "gaspump01_flareup_med" );
    _ID42231::_ID10532( "gaspump01_fire_med" );
    _ID42231::_ID10528( 12, 0.2, 210, "allies" );
    _ID42231::_ID10548( undefined, undefined, 300, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_death_fx", "fx/fire/gas_pump_fire_damage", 0.4 );
    _ID42231::_ID10532( "gaspump01_fire_med" );
    _ID42231::_ID10528( 12, 0.2, 210, "allies" );
    _ID42231::_ID10541( "gaspump01_flareup_med" );
    _ID42231::_ID10531( "tag_fx", "fx/fire/gas_pump_fire_handle", 0.0 );
    _ID42231::_ID10493( %gaspump01_hose, #animtree, "setanimknob", undefined, undefined, "gaspump01_hose" );
    _ID42231::_ID10548( undefined, undefined, 400, undefined, 5, "no_melee" );
    _ID42231::_ID10517( "tag_death_fx", "fx/explosions/gas_pump_exp", 0 );
    _ID42231::_ID10541( "gaspump01_explode" );
    _ID42231::_ID10512( 6000, 8000, 210, 50, 300 );
    _ID42231::_ID10548( undefined, "furniture_gaspump01_destroyed", undefined, undefined, "no_melee" );
    _ID42231::_ID10535( "tag_panel_front01", "furniture_gaspump01_panel01", 80, undefined, undefined, undefined, 1.0, 1.0, undefined, 1.0 );
    _ID42231::_ID10537();
    _ID42231::_ID10535( "tag_panel_front02", "furniture_gaspump01_panel02", 40, undefined, undefined, undefined, 1.0, 1.0 );
    _ID42231::_ID10537();
    _ID42231::_ID10535( "tag_panel_front03", "furniture_gaspump01_panel03", 40, undefined, undefined, undefined, 1.0, 1.0 );
    _ID42231::_ID10541( "exp_gaspump_sparks" );
    _ID42231::_ID10517( "tag_panel_front03", "fx/props/electricbox4_explode" );
    _ID42231::_ID10537();
    _ID42231::_ID10535( "tag_panel_back01", "furniture_gaspump01_panel01", 110, undefined, undefined, undefined, 1.0, 1.0, undefined, 1.0 );
    _ID42231::_ID10537();
    _ID42231::_ID10535( "tag_panel_back02", "furniture_gaspump01_panel02", 40, undefined, undefined, undefined, 1.0, 1.0 );
    _ID42231::_ID10537();
    _ID42231::_ID10535( "tag_panel_back03", "furniture_gaspump01_panel03", 40, undefined, undefined, undefined, 1.0, 1.0 );
    _ID42231::_ID10541( "exp_gaspump_sparks" );
    _ID42231::_ID10517( "tag_panel_back03", "fx/props/electricbox4_explode" );
    _ID42231::_ID10537();
}
