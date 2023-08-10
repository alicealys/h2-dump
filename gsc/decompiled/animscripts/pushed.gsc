// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

_id_ABB3()
{
    var_0 = [];
    var_0["pushed_1"] = [ %h2_civ_tackle_1 ];
    var_0["pushed_3"] = [ %h2_civ_tackle_3 ];
    var_0["pushed_7"] = [ %h2_civ_tackle_7 ];
    var_0["pushed_9"] = [ %h2_civ_tackle_9 ];
    anim.archetypes["soldier"]["pushed"] = var_0;
    anim._id_C3D9["soldier"] = 0;
}

_id_A88E()
{
    var_0 = self.origin - self._id_A7F5.origin;
    var_1 = anglestoright( self.angles );
    var_2 = anglestoforward( self.angles );

    if ( vectordot( var_0, var_2 ) > 0 )
    {
        if ( vectordot( var_0, var_1 ) > 0 )
            return "pushed_9";
        else
            return "pushed_7";
    }
    else if ( vectordot( var_0, var_1 ) > 0 )
        return "pushed_3";
    else
        return "pushed_1";
}

_id_C642( var_0 )
{
    var_1 = "soldier";

    if ( isdefined( self.animarchetype ) && isdefined( anim._id_C3D9[self.animarchetype] ) )
        var_1 = self.animarchetype;

    anim._id_C3D9[var_1]++;

    if ( anim._id_C3D9[var_1] >= anim.archetypes[var_1]["pushed"][var_0].size )
    {
        anim._id_C3D9[var_1] = 0;
        anim.archetypes[var_1]["pushed"][var_0] = common_scripts\utility::array_randomize( anim.archetypes[var_1]["pushed"][var_0] );
    }

    return anim.archetypes[var_1]["pushed"][var_0][anim._id_C3D9[var_1]];
}

main()
{
    self endon( "death" );
    self endon( "killanimscript" );
    animscripts\utility::initialize( "pushed" );
    animscripts\face::saygenericdialogue( "pushed" );

    if ( isdefined( self._id_C2B3 ) )
    {
        self [[ self._id_C2B3 ]]();
        return;
    }

    var_0 = _id_A88E();
    var_1 = _id_C642( var_0 );
    _id_B133( var_1 );
}

_id_B133( var_0 )
{
    self endon( "death" );
    self endon( "killanimscript" );

    if ( self.a.pose == "prone" )
        animscripts\utility::exitpronewrapper( 1 );

    self.a.pose = "stand";
    self.allowdeath = 1;
    self setflaggedanimknoball( "pushed_anim", var_0, %body, 0.2, 1 );
    animscripts\shared::donotetracks( "pushed_anim" );
}
