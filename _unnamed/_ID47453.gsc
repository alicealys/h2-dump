// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID53349( "black" );
}

_ID53349( var_0 )
{
    _ID42231::_ID10505( "toy_mailbox2_" + var_0, "tag_origin", 120 );
    _ID42231::_ID10517( "tag_fx", "fx/props/mail_box_explode", 1 );
    _ID42231::_ID10517( "tag_fx", "fx/props/mail_box_explode", 1 );
    _ID42231::_ID10541( "h2_exp_mailbox_metal" );
    _ID42231::_ID10512( 2800, 3000, 64, 0, 0 );
    _ID42231::_ID10548( undefined, "mailbox_" + var_0 + "_dam", 20, undefined, undefined, "splash" );
    _ID42231::_ID10548( undefined, "mailbox_black_dest", undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10535( "tag_door", "mailbox_" + var_0 + "_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    _ID42231::_ID10535( "tag_flag", "mailbox_black_flag", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
