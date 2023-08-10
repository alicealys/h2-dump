// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_newspaper_stand_blue", "tag_origin", 120 );
    common_scripts\_destructible::destructible_fx( "tag_door", "fx/props/news_stand_paper_spill_shatter", 1 );
    common_scripts\_destructible::destructible_sound( "exp_newspaper_box" );
    common_scripts\_destructible::destructible_explode( 800, 2001, 64, 0, 0 );
    common_scripts\_destructible::destructible_state( undefined, "com_newspaperbox_blue_dam", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/news_stand_explosion", 1 );
    common_scripts\_destructible::destructible_state( undefined, "com_newspaperbox_blue_des", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_door", "com_newspaperbox_blue_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
