// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main()
{
    var_0 = [];
    var_0["traverseAnim"] = %h2_gulag_jumpdownhole_soap;
    var_0["traverseNotetrackFunc"] = ::_ID44162;
    animscripts\traverse\shared::_ID11657( var_0 );
}

_ID44162( var_0 )
{
    if ( var_0 == "fx_watersplash_land" )
    {
        playfxontag( level._ID1426["traverse_watersplash_gulag"], self, "j_ankle_le" );
        return;
    }
    else
        return animscripts\traverse\shared::_ID18057( var_0 );
}
