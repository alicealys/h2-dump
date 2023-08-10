// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    var_0 = [];
    var_0["traverseAnim"] = %h2_gulag_jumpdownhole_soap;
    var_0["traverseNotetrackFunc"] = ::_id_AC82;
    animscripts\traverse\shared::dotraverse( var_0 );
}

_id_AC82( var_0 )
{
    if ( var_0 == "fx_watersplash_land" )
    {
        playfxontag( level._effect["traverse_watersplash_gulag"], self, "j_ankle_le" );
        return;
    }
    else
        return animscripts\traverse\shared::handletraversenotetracks( var_0 );
}
