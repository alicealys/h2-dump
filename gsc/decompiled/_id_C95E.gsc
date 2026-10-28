// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_newspaper_stand_red", "tag_origin", 120 );
    common_scripts\_destructible::destructible_fx( "tag_door", "fx/props/news_stand_paper_spill", 1 );
    common_scripts\_destructible::destructible_sound( "exp_newspaper_box" );
    common_scripts\_destructible::destructible_explode( 2500, 2501, 64, 0, 0 );
    common_scripts\_destructible::destructible_state( undefined, "com_newspaperbox_red_dam", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/news_stand_explosion", 1 );
    common_scripts\_destructible::destructible_state( undefined, "com_newspaperbox_red_des", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_door", "com_newspaperbox_red_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
