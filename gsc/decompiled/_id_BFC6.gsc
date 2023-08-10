// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_D065( "green" );
}

_id_D065( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_mailbox2_" + var_0, "tag_origin", 120 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mail_box_explode", 1 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/mail_box_explode", 1 );
    common_scripts\_destructible::destructible_sound( "exp_mailbox_sweet" );
    common_scripts\_destructible::destructible_explode( 2800, 3000, 64, 0, 0 );
    common_scripts\_destructible::destructible_state( undefined, "mailbox_" + var_0 + "_dam", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_state( undefined, "mailbox_black_dest", undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_part( "tag_door", "mailbox_" + var_0 + "_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_flag", "mailbox_black_flag", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
