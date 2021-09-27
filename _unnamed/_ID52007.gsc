// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID45469( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "viewhands_player_us_army";

    var_0 _meth_811E( #animtree );

    if ( !_func_02F( var_2 ) )
        var_0._ID3189 = "suburban_hands";
    else
        var_0._ID3189 = var_2;

    var_0._ID43798 = 0;
    var_0 _unknown_0086( var_1 );
    var_0 _unknown_0056();
    var_0 thread _unknown_00E5( "LEFT" );
    var_0 thread _unknown_00EE( "RIGHT" );
    var_0 thread _unknown_0094( var_1 );
}

_ID44631()
{
    self _meth_8155( _ID42407::_ID16120( "idle_L" ), 1, 0, 1 );
    self _meth_8155( _ID42407::_ID16120( "idle_R" ), 1, 0, 1 );
    thread _unknown_009D();
}

play_additive_idle()
{
    self endon( "death" );

    if ( _func_02F( self._ID26175 ) )
    {
        self _meth_8156( _ID42407::_ID16120( "idle_add_anim" ), 1.0, 0.0, 1.0 );

        for (;;)
        {
            var_0 = _func_0EE( self._ID26175._ID1276 / 50.0, 0.0, 1.0 );
            self _meth_8155( _ID42407::_ID16120( "idle_add" ), var_0, 0.2, 1.0 );
            waittillframeend;
        }
    }
}

_ID43022( var_0 )
{
    var_1 = self;
    var_1 endon( "death" );

    for (;;)
    {
        var_1 waittill( "turretownerchange" );
        var_2 = var_1 _meth_80F2();

        if ( !_func_1A7( var_2 ) )
        {
            _unknown_0145( var_0 );
            continue;
        }

        _unknown_0142( var_0 );
    }
}

_ID43190( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = "viewhands_player_us_army";

    var_1 = self;

    if ( var_1._ID43798 )
        return;

    var_1._ID43798 = 1;
    var_1 _meth_801D( var_0, "tag_player" );
}

_ID47360( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = "viewhands_player_us_army";

    var_1 = self;

    if ( !var_1._ID43798 )
        return;

    var_1._ID43798 = 0;
    var_1 _meth_802A( var_0, "tag_player" );
}

_ID51189()
{
    level._ID30900["suburban_hands"] = #animtree;
    level._ID30904["suburban_hands"] = "viewhands_player_us_army";
    level._ID30895["suburban_hands"]["idle_L"] = %player_suburban_minigun_idle_l;
    level._ID30895["suburban_hands"]["idle_R"] = %player_suburban_minigun_idle_r;
    level._ID30895["suburban_hands"]["idle2fire_L"] = %player_suburban_minigun_idle2fire_l;
    level._ID30895["suburban_hands"]["idle2fire_R"] = %player_suburban_minigun_idle2fire_r;
    level._ID30895["suburban_hands"]["fire2idle_L"] = %player_suburban_minigun_fire2idle_l;
    level._ID30895["suburban_hands"]["fire2idle_R"] = %player_suburban_minigun_fire2idle_r;
    level._ID30895["suburban_hands"]["idle_add"] = %h2_suburban_minigun_idle_add;
    level._ID30895["suburban_hands"]["idle_add_anim"] = %h2_suburban_minigun_idle;
}

_ID47675( var_0 )
{
    self endon( "death" );
    var_1 = 0;
    var_2 = undefined;

    if ( var_0 == "LEFT" )
        var_2 = ::_unknown_02C0;
    else if ( var_0 == "RIGHT" )
        var_2 = ::_unknown_02D6;

    for (;;)
    {
        if ( level._ID794 [[ var_2 ]]() )
        {
            thread _unknown_0308( var_0 );

            while ( level._ID794 [[ var_2 ]]() )
                wait 0.05;
        }
        else
        {
            if ( var_1 )
                thread _unknown_02FD( var_0 );

            while ( !level._ID794 [[ var_2 ]]() )
                wait 0.05;
        }

        var_1 = 1;
    }
}

_ID46127()
{
    if ( level._ID794 _meth_8349() )
        return 1;

    if ( level._ID794 _meth_8348() )
        return 1;

    return 0;
}

_ID45974()
{
    return level._ID794 _meth_8348();
}

_ID46713( var_0 )
{
    self endon( "minigun_pressed" );
    var_1 = undefined;

    if ( var_0 == "LEFT" )
        var_1 = "L";
    else if ( var_0 == "RIGHT" )
        var_1 = "R";

    self _meth_814C( _ID42407::_ID16120( "idle2fire_" + var_1 ), 0.2 );
    self _meth_811C( "anim", _ID42407::_ID16120( "fire2idle_" + var_1 ) );
    self waittillmatch( "anim",  "end"  );
    self _meth_814C( _ID42407::_ID16120( "fire2idle_" + var_1 ), 0.2 );
    self _meth_8155( _ID42407::_ID16120( "idle_" + var_1 ) );
}

_ID46163( var_0 )
{
    var_1 = undefined;

    if ( var_0 == "LEFT" )
        var_1 = "L";
    else if ( var_0 == "RIGHT" )
        var_1 = "R";

    self notify( "minigun_pressed" );
    self _meth_814C( _ID42407::_ID16120( "idle_" + var_1 ), 0.2 );
    self _meth_814C( _ID42407::_ID16120( "fire2idle_" + var_1 ), 0.2 );
    self _meth_8155( _ID42407::_ID16120( "idle2fire_" + var_1 ) );
}
