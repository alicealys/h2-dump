// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_bookstore_bookstand4_books", "tag_origin", 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 7 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/bookshelf4_dmg", 1 );
    common_scripts\_destructible::destructible_state( undefined, "bookstore_bookstand4", 100, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/bookshelf4_des", 1 );
    common_scripts\_destructible::destructible_explode( 2000, 3800, 32, 1, 5 );
    common_scripts\_destructible::destructible_state( undefined, "bookstore_bookstand4_null", undefined, undefined, undefined, undefined, undefined, 0 );
}
