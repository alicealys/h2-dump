// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B94A( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_dt_mirror" + var_0, "tag_origin", 150, undefined, 32 );
    common_scripts\_destructible::destructible_splash_damage_scaler( 5 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mirror_shatter" + var_0 );
    common_scripts\_destructible::destructible_sound( "mirror_shatter" );
    common_scripts\_destructible::destructible_state( "tag_origin", "dt_mirror" + var_0 + "_dam", 150, undefined );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mirror_dt_panel" + var_0 + "_broken" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 48 );
    common_scripts\_destructible::destructible_state( "tag_origin", "dt_mirror" + var_0 + "_des", 150, undefined );
}
