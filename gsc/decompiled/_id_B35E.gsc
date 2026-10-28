// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_mailbox", "tag_origin", 200 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mail_box_explode", 1 );
    common_scripts\_destructible::destructible_sound( "exp_mailbox_sweet" );
    common_scripts\_destructible::destructible_explode( 100, 2000, 64, 0, 0 );
    common_scripts\_destructible::destructible_state( "tag_origin", "com_mailbox_dam" );
    common_scripts\_destructible::destructible_part( "tag_door", "com_mailbox_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_flag", "com_mailbox_flag", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
