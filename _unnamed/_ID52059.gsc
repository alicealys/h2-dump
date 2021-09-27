// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42231::_ID10505( "toy_propane_tank02", "tag_origin", 50, undefined, 32, "no_melee" );
    _ID42231::_ID10544( 5 );
    _ID42231::_ID10548( undefined, undefined, 350, undefined, 32, "no_melee" );
    _ID42231::_ID10532( "propanetank02_gas_leak_loop" );
    _ID42231::_ID10531( "tag_cap", "fx/distortion/propane_cap_distortion", 0.1 );
    _ID42231::_ID10548( undefined, undefined, 350, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_cap", "fx/fire/propane_capfire_leak", 0.1 );
    _ID42231::_ID10541( "propanetank02_flareup_med" );
    _ID42231::_ID10532( "propanetank02_fire_med" );
    _ID42231::_ID10528( 12, 0.2, 300, "allies" );
    _ID42231::_ID10548( undefined, undefined, 150, undefined, 32, "no_melee" );
    _ID42231::_ID10537( "tag_cap", ( 50, 0, 0 ) );
    _ID42231::_ID10531( "tag_cap", "fx/fire/propane_capfire", 0.6 );
    _ID42231::_ID10517( "tag_valve", "fx/fire/propane_valvefire_flareup" );
    _ID42231::_ID10537( "tag_valve", ( 50, 0, 0 ) );
    _ID42231::_ID10517( "tag_cap", "fx/fire/propane_capfire_flareup" );
    _ID42231::_ID10531( "tag_valve", "fx/fire/propane_valvefire", 0.1 );
    _ID42231::_ID10541( "propanetank02_flareup2_med" );
    _ID42231::_ID10532( "propanetank02_fire_med" );
    _ID42231::_ID10548( undefined, undefined, 150, undefined, 5, "no_melee" );
    _ID42231::_ID10517( "tag_fx", "fx/fire/propane_small_fire" );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/propane_large_exp_fireball" );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/propane_large_exp", 0 );
    _ID42231::_ID10541( "propanetank02_explode" );
    _ID42231::_ID10532( "propanetank02_fire_blown_med" );
    _ID42231::_ID10512( 7000, 8000, 600, 32, 300 );
    _ID42231::_ID10548( undefined, "com_propane_tank02_DES", undefined, undefined, "no_melee" );
    _ID42231::_ID10535( "tag_valve", "com_propane_tank02_valve" );
    _ID42231::_ID10535( "tag_cap", "com_propane_tank02_cap" );
}
