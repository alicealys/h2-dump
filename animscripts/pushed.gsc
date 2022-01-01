// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID43955()
{
    var_0 = [];
    var_0["pushed_1"] = [ %h2_civ_tackle_1 ];
    var_0["pushed_3"] = [ %h2_civ_tackle_3 ];
    var_0["pushed_7"] = [ %h2_civ_tackle_7 ];
    var_0["pushed_9"] = [ %h2_civ_tackle_9 ];
    anim._ID3277["soldier"]["pushed"] = var_0;
    anim._ID50137["soldier"] = 0;
}

_ID43150()
{
    var_0 = self._ID740 - self._ID42997._ID740;
    var_1 = anglestoright( self._ID65 );
    var_2 = anglestoforward( self._ID65 );

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

_ID50754( var_0 )
{
    var_1 = "soldier";

    if ( isdefined( self._ID3152 ) && isdefined( anim._ID50137[self._ID3152] ) )
        var_1 = self._ID3152;

    anim._ID50137[var_1]++;

    if ( anim._ID50137[var_1] >= anim._ID3277[var_1]["pushed"][var_0].size )
    {
        anim._ID50137[var_1] = 0;
        anim._ID3277[var_1]["pushed"][var_0] = _ID42237::_ID3320( anim._ID3277[var_1]["pushed"][var_0] );
    }

    return anim._ID3277[var_1]["pushed"][var_0][anim._ID50137[var_1]];
}

_ID616()
{
    self endon( "death" );
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "pushed" );
    animscripts\face::_ID30759( "pushed" );

    if ( isdefined( self._ID49843 ) )
    {
        self [[ self._ID49843 ]]();
        return;
    }

    var_0 = _ID43150();
    var_1 = _ID50754( var_0 );
    _ID45363( var_1 );
}

_ID45363( var_0 )
{
    self endon( "death" );
    self endon( "killanimscript" );

    if ( self._ID7._ID28253 == "prone" )
        animscripts\utility::_ID13390( 1 );

    self._ID7._ID28253 = "stand";
    self._ID49 = 1;
    self setflaggedanimknoball( "pushed_anim", var_0, %body, 0.2, 1 );
    animscripts\shared::_ID11529( "pushed_anim" );
}
