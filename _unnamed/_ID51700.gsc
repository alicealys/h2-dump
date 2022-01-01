// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID45798( var_0, var_1, var_2 )
{
    if ( isdefined( self._ID922 ) && self._ID922 == "blackice_tv" )
    {
        _ID42231::_ID10505( "toy_tv_flatscreen_" + var_1 + var_0, "tag_origin", 1, undefined, 32 );
        _ID42231::_ID10544( 1 );
        _ID42231::_ID10517( "tag_fx", "fx/explosions/tv_flatscreen_explosion_quick" );
        _ID42231::_ID10541( "tv_shot_burst" );
        _ID42231::_ID10512( 20, 2000, 10, 3, 3 );
        _ID42231::_ID10548( undefined, "ma_flatscreen_tv_" + var_1 + "broken_" + var_0, 200, undefined, "no_melee" );
    }
    else
    {
        _ID42231::_ID10505( "toy_tv_flatscreen_" + var_1 + var_0, "tag_origin", 1, undefined, 32 );
        _ID42231::_ID10544( 1 );
        _ID42231::_ID10517( "tag_fx", "fx/explosions/tv_flatscreen_explosion" );
        _ID42231::_ID10541( "tv_shot_burst" );
        _ID42231::_ID10512( 20, 2000, 10, 3, 3 );
        _ID42231::_ID10548( undefined, "ma_flatscreen_tv_" + var_1 + "broken_" + var_0, 200, undefined, "no_melee" );
    }
}

_ID53480( var_0, var_1, var_2 )
{
    if ( isdefined( self._ID922 ) && self._ID922 == "blackice_tv" )
    {
        _ID42231::_ID10505( "toy_tv_flatscreen_" + var_1 + var_0 + "_sturdy", "tag_origin", 1, undefined, 1280 );
        _ID42231::_ID10544( 0.5 );
        _ID42231::_ID10517( "tag_fx", "fx/explosions/tv_flatscreen_explosion_quick" );
        _ID42231::_ID10541( "tv_shot_burst" );
        _ID42231::_ID10512( 20, 2000, 10, 3, 3 );
        _ID42231::_ID10548( undefined, "ma_flatscreen_tv_" + var_1 + "broken_" + var_0, 200, undefined, "no_melee" );
    }
    else
    {
        _ID42231::_ID10505( "toy_tv_flatscreen_" + var_1 + var_0 + "_sturdy", "tag_origin", 1, undefined, 1280 );
        _ID42231::_ID10544( 0.5 );
        _ID42231::_ID10517( "tag_fx", "fx/explosions/tv_flatscreen_explosion_cheap" );
        _ID42231::_ID10541( "tv_shot_burst" );
        _ID42231::_ID10512( 20, 2000, 10, 3, 3 );
        _ID42231::_ID10548( undefined, "ma_flatscreen_tv_" + var_1 + "broken_" + var_0, 200, undefined, "no_melee" );
    }
}

_ID46188( var_0, var_1 )
{
    if ( isdefined( self._ID922 ) && self._ID922 == "blackice_tv" )
    {
        _ID42231::_ID10505( "toy_" + var_0, "tag_origin", 1, undefined, 32 );
        _ID42231::_ID10544( 1 );
        _ID42231::_ID10517( "tag_fx", "fx/explosions/tv_flatscreen_explosion_quick" );
        _ID42231::_ID10541( "tv_shot_burst" );
        _ID42231::_ID10512( 20, 2000, 10, 3, 3 );
        _ID42231::_ID10548( undefined, var_0 + "_d", 200, undefined, "no_melee" );
    }
    else
    {
        _ID42231::_ID10505( "toy_" + var_0, "tag_origin", 1, undefined, 32 );
        _ID42231::_ID10544( 1 );
        _ID42231::_ID10517( "tag_fx", "fx/explosions/tv_flatscreen_explosion" );
        _ID42231::_ID10541( "tv_shot_burst" );
        _ID42231::_ID10512( 20, 2000, 10, 3, 3 );
        _ID42231::_ID10548( undefined, var_0 + "_d", 200, undefined, "no_melee" );
    }
}

_ID46531()
{
    if ( isdefined( self._ID1191 ) )
    {
        var_0 = getentarray( self._ID1191, "targetname" );

        if ( isdefined( var_0 ) )
        {
            foreach ( var_2 in var_0 )
            {
                if ( var_2._ID170 == "light_omni" || var_2._ID170 == "light_spot" )
                {
                    var_2 setlightintensity( 0 );
                    continue;
                }

                var_2 delete();
            }
        }
    }
}
