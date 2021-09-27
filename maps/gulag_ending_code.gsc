// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52342()
{
    level._ID53563 = self;
    self._ID3189 = "soap";
    _ID42407::_ID22825();
}

_ID44629()
{
    level._ID28543 = self;
    self._ID486 = 5000;
    self._ID3189 = "price";
    thread _ID42407::_ID22746();
    _ID42407::_ID22825();
    self._ID86 = 0;
    self._ID512 = 1;
    _ID42407::_ID17509();
    self._ID18169 = 1;
    self notify( "saved" );
    self waittill( "change_to_regular_weapon" );
    _ID42407::_ID14803( "ak47", "primary" );
}

_ID44567()
{
    self._ID3189 = "redshirt";
    level._ID46875 = self;
    thread _ID42407::_ID22746();
    _ID42407::_ID22825();
}

_ID49253()
{
    level endon( "cafeteria_sequence_begins" );
    var_0 = _func_0DE( "allies" );
    var_1 = 1.0;
    var_2 = 50;
    var_3 = 1.0;
    var_4 = 200;
    var_5 = 1;
    var_6 = 1.5;
    var_7 = 100;
    var_8 = 200;
    var_9 = var_4 - var_2;
    var_10 = var_3 - var_1;
    var_11 = var_6 - var_5;
    var_12 = var_8 - var_7;

    if ( _ID42237::_ID14385( "match_up_for_final_room" ) )
        return;

    level endon( "match_up_for_final_room" );
    var_13 = 0.45;
    var_14 = 200;
    var_15 = [];
    var_15["soap"] = 20;
    var_15["redshirt"] = -40;
    var_15["price"] = -10;

    for (;;)
    {
        var_0 = [];
        var_0["soap"] = level._ID53563;
        var_0["price"] = level._ID28543;
        var_0["redshirt"] = level._ID46875;

        if ( _ID42237::_ID14385( "exit_collapses" ) )
        {
            var_15["soap"] = 75;
            var_15["redshirt"] = -25;
            var_15["price"] = -40;
        }

        var_16 = ( 0, 0, 0 );
        var_17 = [];
        var_18 = var_0;

        for ( var_21 = _func_1DA( var_18 ); _func_02F( var_21 ); var_21 = _func_1BF( var_18, var_21 ) )
        {
            var_19 = var_18[var_21];
            var_16 += var_19._ID740;
            var_20 = _func_0F3( var_19._ID740, level._ID54199 );
            var_17[var_21] = var_20 + var_15[var_21];
        }

        var_clear_20
        var_16 /= var_0.size;
        var_22 = 99999999;
        var_23 = var_17;

        for ( var_24 = _func_1DA( var_23 ); _func_02F( var_24 ); var_24 = _func_1BF( var_23, var_24 ) )
        {
            var_20 = var_23[var_24];

            if ( var_20 < var_22 )
                var_22 = var_20;
        }

        var_clear_15
        var_clear_14
        var_25 = [];
        var_26 = var_17;

        for ( var_21 = _func_1DA( var_26 ); _func_02F( var_21 ); var_21 = _func_1BF( var_26, var_21 ) )
        {
            var_20 = var_26[var_21];
            var_17[var_21] -= var_22;
        }

        var_clear_12
        var_27 = 0;
        var_28 = var_17;

        for ( var_29 = _func_1DA( var_28 ); _func_02F( var_29 ); var_29 = _func_1BF( var_28, var_29 ) )
        {
            var_20 = var_28[var_29];

            if ( var_20 > var_27 )
                var_27 = var_20;
        }

        var_clear_10
        var_clear_9
        var_30 = var_27 * var_13 / var_14;
        var_30 *= 0.5;

        if ( var_30 > var_13 )
            var_30 = var_13;

        var_31 = var_27 * 0.5;
        var_25 = [];
        var_32 = var_17;

        for ( var_21 = _func_1DA( var_32 ); _func_02F( var_21 ); var_21 = _func_1BF( var_32, var_21 ) )
        {
            var_20 = var_32[var_21];
            var_20 -= var_31;
            var_20 /= _func_0C3( var_31 );
            var_25[var_21] = var_20 * var_30;
        }

        var_clear_6
        var_33 = _func_0F3( var_16, level._ID54199 );
        var_34 = _func_0F3( level._ID794._ID740, level._ID54199 );
        var_20 = var_34 - var_33;
        level notify( "player_dist_from_squad",  var_20  );
        var_35 = var_20;
        var_20 -= var_2;
        var_36 = var_20 / var_9;

        if ( var_36 < 0 )
            var_36 = 0;
        else if ( var_36 > 1 )
            var_36 = 1;

        var_36 = 1 - var_36;
        var_37 = var_1 + var_10 * var_36;
        var_20 = var_35 - var_7;
        var_36 = var_20 / var_12;

        if ( var_36 < 0 )
            var_36 = 0;
        else if ( var_36 > 1 )
            var_36 = 1;

        var_38 = var_5 + var_11 * var_36;

        if ( !_ID42237::_ID14385( "exit_collapses" ) )
            _func_0DB( "player_sprintSpeedScale", var_38 );

        if ( _ID42237::_ID14385( "modify_ai_moveplaybackrate" ) )
        {
            var_39 = var_0;

            for ( var_21 = _func_1DA( var_39 ); _func_02F( var_21 ); var_21 = _func_1BF( var_39, var_21 ) )
            {
                var_19 = var_39[var_21];
                var_19._ID24424 = var_37 + var_25[var_21];

                if ( var_19._ID24424 > 1.15 )
                    var_19._ID24424 = 1.15;
            }

            var_clear_0
        }

        wait 0.05;
    }
}

_ID49866( var_0 )
{
    var_1 = level._ID48547[self._ID3189][var_0._ID3189];
    var_2 = _func_0F3( self._ID740, var_0._ID740 );
    var_3 = undefined;
    var_4 = _ID42407::_ID15689( self._ID740, self._ID65, var_0._ID740 );

    if ( var_4 < 0.8 )
        var_3 = -0.15;
    else
    {
        var_5 = var_1 - var_2;
        var_6 = 50;
        var_7 = 0.15;
        var_3 = var_5 * var_7 / var_6;

        if ( var_3 > var_7 )
            var_3 = var_7;
        else if ( var_3 < var_7 * -1 )
            var_3 = var_7 * -1;
    }

    self._ID24424 = 1 + var_3;
    var_8 = self._ID24424;
    var_9 = var_3;
    var_8 = _func_0C1( var_8 * 100 ) * 0.01;
    var_9 = _func_0C1( var_9 * 100 ) * 0.01;
}

_ID49223( var_0 )
{
    var_1 = level._ID48547[self._ID3189][var_0._ID3189];
    var_2 = _func_0F3( self._ID740, var_0._ID740 );
    var_3 = _ID42407::_ID15689( self._ID740, self._ID65, var_0._ID740 );

    if ( var_3 > 0 )
        var_2 *= -1;

    var_4 = var_1 - var_2;
    var_5 = 50;
    var_6 = 0.15;
    var_7 = var_4 * var_6 / var_5;

    if ( var_7 > var_6 )
        var_7 = var_6;
    else if ( var_7 < var_6 * -1 )
        var_7 = var_6 * -1;

    self._ID24424 = 1 + var_7;
    var_8 = self._ID24424;
    var_9 = var_7;
    var_8 = _func_0C1( var_8 * 100 ) * 0.01;
    var_9 = _func_0C1( var_9 * 100 ) * 0.01;
}

_ID44592( var_0 )
{
    self endon( "death" );
    var_1 = self._ID740;

    for (;;)
    {
        var_1 = self._ID740;
        wait 0.05;
    }
}

_ID43761()
{
    if ( _func_039( "no_escape" ) == "1" )
        return;

    level endon( "stop_minor_earthquakes" );
    var_0 = 0.15;
    var_1 = 0.25;
    var_2 = var_1 - var_0;
    var_3 = 0.2;
    var_4 = 0.3;
    var_5 = var_4 - var_3;
    var_6 = 1;

    for (;;)
    {
        var_7 = _func_0B8( 1 );

        if ( var_6 )
        {
            var_6 = 0;
            var_7 = 1;
        }

        var_8 = var_0 + var_7 * var_2;
        var_9 = var_3 + var_7 * var_5;

        if ( _func_0B7( 100 ) < 35 )
            _unknown_1215();

        _unknown_1104( var_8, 3 + var_7 * 2, level._ID794._ID740 + _ID42237::_ID28976( 1000 ), 5000 );
        var_10 = level._ID794 _meth_8346();
        var_11 = _func_11F( var_10 );
        var_12 = level._ID794._ID740 + var_11 * 180;
        var_12 = _ID42407::_ID32530( var_12, level._ID794._ID740[2] + 64 );
        var_13 = _ID42237::_ID28976( var_9 );

        if ( var_13[2] < 0 )
            var_13 = _ID42407::_ID32530( var_13, var_13[2] * -1 );

        _func_186( var_12, 350, 250, var_13 );
        wait(_func_0BA( 1, 5 ));
    }
}

_ID54691()
{
    level._ID794 _meth_831B();
    level._ID794 _meth_8319( "m4m203_reflex_arctic" );
    level._ID794 _meth_834E( "viewhands_udt" );
    level._ID794 _meth_8320( "m4m203_reflex_arctic" );
    level._ID794 _meth_8320( "m14_scoped_arctic" );
}

_ID43283()
{
    if ( _func_039( "no_escape" ) == "1" )
        return;

    level endon( "skip_stumble_trigger_think" );
    wait 3;
    var_0 = _func_1A1( "eq_view_roller", "targetname" );
    var_1 = _ID42237::_ID35164();
    var_0._ID740 = var_1._ID740;
    var_1 _meth_8053( var_0 );
    level._ID794 _meth_8098( var_1 );
    var_2 = _ID42237::_ID35164();

    if ( !_ID42237::_ID14385( "exit_collapses" ) )
    {
        self waittill( "trigger",  var_3  );
        thread _unknown_0CA6();
        _unknown_11DE( 0.25, 4, self._ID740, 5000 );
        var_4 = _ID42237::_ID28976( 0.6 );
        var_5 = level._ID794._ID740;
        _func_186( var_5, 350, 250, var_4 );
        var_6 = var_0._ID65;
        level._ID794 thread _unknown_1395();
        _ID42237::_ID14413( "exit_collapses" );
        _ID42237::_ID14402( "controlled_player_rumble" );
        level._ID794 _meth_80B4( "heavy_3s" );
        _ID42407::_ID10226( 3.0, _ID42237::_ID14388, "controlled_player_rumble" );
        thread _unknown_098D();
        thread _unknown_098A();
    }

    if ( !_ID42237::_ID14385( "big_earthquake_hits" ) )
    {
        _ID42237::_ID14413( "big_earthquake_hits" );
        var_7 = _ID42407::_ID16268( "big_earthquake_hits" );
        var_0 = _func_1A1( var_7._ID1191, "targetname" );
        var_5 = var_0._ID740;
        var_6 = var_0._ID65;
        var_0._ID740 = var_1._ID740;
        var_1 _meth_8053( var_0 );
        _unknown_1281( 0.25, 4, self._ID740, 5000 );
        var_4 = _ID42237::_ID28976( 0.6 );
        _func_186( var_5, 350, 250, var_4 );
    }

    _ID42237::_ID14413( "player_falls_down" );
    _unknown_12AA( 0.35, 4, self._ID740, 5000 );
    var_4 = _ID42237::_ID28976( 0.6 );
    var_5 = level._ID794._ID740;
    _func_186( var_5, 350, 250, var_4 );
    _ID42237::_ID14402( "controlled_player_rumble" );
    level._ID794 _meth_80B4( "light_3s" );
    level._ID794 _ID42237::_ID10192( 1.5, ::_meth_80B4, "heavy_2s" );
    _ID42407::_ID10226( 3.5, _ID42237::_ID14388, "controlled_player_rumble" );
    var_6 = var_0._ID65;
    var_0._ID740 = var_1._ID740;
    var_8 = level._ID794 _meth_8346();
    var_0._ID65 = ( 0, var_8[1], 0 );
    var_2._ID65 = var_0._ID65;
    var_1 _meth_8053( var_0 );
    var_9 = _func_11F( var_0._ID65 );
    var_10 = _func_11E( var_0._ID65 );
    var_11 = level._ID794._ID740 + ( 0, 0, 100 ) + var_9 * 50;
    level._ID794 _meth_80F3( 1 );
    level._ID794 _meth_81F1( 0.25 );
    level._ID794 _meth_8057( level._ID794._ID486 - 5 / level._ID794._ID255, var_11 );
    level._ID794 thread _unknown_09BF();
    level._ID794 _meth_8328();
    _ID42475::_ID34575( "start_evac_rock_falling" );

    if ( _func_039( "use_old_cafeteria_behavior" ) != "1" )
    {
        thread _ID42407::_ID14403( "cafeteria_lights_off", 2 );
        thread _unknown_14DE();
    }

    var_12 = 1.9;

    if ( _func_039( "use_old_cafeteria_behavior" ) != "1" )
        level._ID794 _meth_8098( undefined );

    var_2 _meth_82C4( 20 );
    var_2 _meth_82C3( 35 );
    var_2 _meth_82C5( 25 );
    var_13 = 0.2;
    var_0 _meth_82BF( var_2._ID65, var_13, var_13 * 0.5, var_13 * 0.5 );
    wait(var_13);
    thread _unknown_0A4B( var_0._ID65 );

    if ( _func_039( "use_old_cafeteria_behavior" ) == "1" )
    {
        wait 0.75;
        var_13 = 0.5;
        var_2 _meth_82C3( -35 );
        var_2 _meth_82C5( -25 );
        var_0 _meth_82BF( var_2._ID65, var_13, var_13 * 0.5, var_13 * 0.5 );
        wait(var_13);
        var_13 = 0.5;
        var_2 _meth_82C3( 5 );
        var_2 _meth_82C5( -15 );
        var_0 _meth_82BF( var_2._ID65, var_13, 0, var_13 );
        wait(var_13);
        var_13 = 0.55;
        var_2 _meth_82C3( 15 );
        var_2 _meth_82C5( -60 );
        var_0 _meth_82BF( var_2._ID65, var_13, 0, 0 );
        level._ID794 _meth_8189( "prone" );
        wait 0.65;
    }

    if ( _func_039( "use_old_cafeteria_behavior" ) != "1" )
        wait 2.1;

    _func_032( "ui_consciousness_init", 1 );
    _func_0DB( "ui_consciousnessVignetteDarkness", 0.3 );
    _func_032( "ui_consciousness_play", 2 );
    _ID42475::_ID34575( "start_evac_rock_falling_black_screen" );
    level._ID794 _meth_80F5();
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8121( 1 );
    _ID42237::_ID14388( "player_falls_down" );
    wait 1;
}

_ID44497()
{
    level endon( "time_to_evac" );
    level._ID794 _ID42407::_ID13025( "player_no_auto_blur" );
    level._ID794 _meth_82E4( 12, 0.05 );
    var_0 = 0.8;
    var_1 = 0.4;
    var_2 = 7;
    var_3 = 1;

    for (;;)
    {
        level._ID794 _meth_82E4( var_1, var_0 );
        wait(var_0);
        level._ID794 _meth_82E4( var_2, var_3 );
        wait(var_3);
        var_2 *= 1.5;
    }
}

_ID49135( var_0 )
{
    var_1 = _func_11F( var_0 );
    var_2 = _func_11E( var_0 );
    var_3 = level._ID794._ID740 + ( 0, 0, 100 ) + var_1 * 50;
    var_4 = level._ID794._ID740 + var_1 * 35 + var_2 * -10 + ( 0, 0, 32 );
    var_5 = _ID42237::_ID16299( "hallway_collapsing_huge" );

    for ( var_6 = 0; var_6 < 10; var_6++ )
    {
        var_4 = level._ID794._ID740 + var_1 * 35 + var_2 * -10 + ( 0, 0, 180 );
        _ID42237::_ID24938( 0.05, ::_func_156, var_5, var_4 );
        wait(_func_0BA( 0.1, 0.25 ));
    }
}

_ID47225( var_0 )
{
    var_0 = _ID42407::_ID16303( var_0 );
    self._ID30386 = var_0;
    self _meth_815C( "stumble_run", var_0, 1, 0.2, 1, 1 );
    wait 1.5;
    var_1 = _ID42407::_ID16303( "run_root" );
    var_2 = 0;

    for (;;)
    {
        if ( self _meth_8159( var_1 ) < var_2 )
            break;

        var_2 = self _meth_8159( var_1 );
        wait 0.05;
    }

    self._ID30386 = undefined;
    self notify( "movemode" );
}

_ID46626()
{
    var_0 = [];
    var_1 = [];
    var_1[var_1.size] = "reaction_180";
    var_1[var_1.size] = "reaction_180";
    var_1[var_1.size] = "run_180";
    var_2 = 0;
    var_3 = 0;

    for (;;)
    {
        self waittill( "trigger",  var_4  );

        if ( !_func_1A7( var_4 ) )
            return;

        if ( _func_02F( var_0[var_4._ID39468] ) )
            continue;

        var_0[var_4._ID39468] = 1;
        var_5 = var_1[var_2];
        var_2++;

        if ( var_2 >= var_1.size )
            var_2 = 0;

        var_4 thread _unknown_0CE1( var_5 );
    }
}

_ID45129( var_0 )
{
    var_1 = _func_1A2( "friendly_changedirection_org", "targetname" );
    var_1 = _ID42407::_ID3310( var_1 );
    thread _ID42372::_ID16964( var_1[self._ID3189], "struct" );
    _ID42259::_ID3020( self, var_0 );
}

_ID45668()
{
    wait 0.3;
    _unknown_1651( 0.25, 4, self._ID740, 5000 );
}

_ID49358( var_0, var_1 )
{
    self endon( "death" );
    var_2 = _ID42407::_ID16303( "run_root" );
    var_3 = self _meth_8159( var_2 );

    for (;;)
    {
        if ( self _meth_8159( var_2 ) < var_3 )
            break;

        var_3 = self _meth_8159( var_2 );
        wait 0.05;
    }

    if ( _func_02F( var_1 ) && !var_1._ID50373 )
    {
        var_1._ID50373 = 1;
        _unknown_16A1( 0.25, 4, self._ID740, 5000 );
    }

    self._ID30386 = _ID42407::_ID16303( var_0 );
    var_3 = self _meth_8159( var_2 );

    for (;;)
    {
        if ( self _meth_8159( var_2 ) < var_3 )
            break;

        var_3 = self _meth_8159( var_2 );
        wait 0.05;
    }

    self._ID30386 = undefined;
    self notify( "movemode" );
}

_ID49134()
{
    var_0 = "com_floodlight";
    var_1 = "com_floodlight_on";
    var_2 = self;
    var_3 = _func_1A1( var_2._ID1191, "targetname" );

    if ( !_func_02F( var_3 ) )
        return;

    var_4 = var_3 _meth_81EA();

    for (;;)
    {
        var_5 = _func_0B7( 3 ) + 2;

        for ( var_6 = 0; var_6 < var_5; var_6++ )
        {
            var_3 _meth_81EB( 0 );
            var_2 _meth_80B8( var_0 );
            wait(_func_0BA( 0.05, 0.1 ));
            var_3 _meth_81EB( var_4 );
            var_2 _meth_80B8( var_1 );
            wait 0.05;
        }

        var_3 _meth_81EB( var_4 );
        var_2 _meth_80B8( var_1 );
        wait(_func_0BA( 1.2, 2 ));
    }
}

_ID47589()
{
    _ID42411::_ID16988();
    var_0 = 50;
    self _meth_829C( 140, 80, 80 );
    self _meth_825D( 5, 5, var_0 );
    thread maps\gulag_aud::_ID52379();
}

_ID45601()
{
    for (;;)
    {
        var_0 = level._ID794 _meth_8346();
        var_1 = _func_11F( var_0 );
        var_2 = level._ID794._ID740 + var_1 * 180;
        var_2 = _ID42407::_ID32530( var_2, level._ID794._ID740[2] + 64 );
        var_3 = _ID42237::_ID28976( 0.3 );
        _func_186( var_2, 350, 250, var_3 );
        wait 0.5;
    }
}

_ID47922( var_0 )
{
    wait 10.3;

    if ( _func_0F3( level._ID794._ID740, var_0 ) > 700 )
        _ID42234::_ID13611( "first_hallway_collapse" );
}

_ID48042( var_0 )
{
    wait 9.5;
    _ID42234::_ID13611( "first_hallway_collapse" );
    _ID42237::_ID14402( "chase_brush_kill_volume_activates" );
}

_ID45503()
{
    var_0 = _func_1A1( "stumble_baddie_spawner", "targetname" );

    if ( _ID42407::_ID41804( var_0._ID740, 0.7 ) )
        return;

    if ( _func_0F3( var_0._ID740, level._ID794._ID740 ) < 500 )
        return;

    var_1 = var_0 _meth_809B();
    var_1._ID3189 = "stumble_baddie";
    var_1 thread maps\gulag_aud::_ID45098();
    var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    var_1 _ID42407::_ID17509();
    var_1._ID49 = 1;
    var_1 endon( "death" );
    var_1._ID486 = 1;
    var_1._ID511 = 1;
    var_1._ID287 = 1;
    _func_0DB( "ragdoll_explode_force", 0 );
    var_2 thread _ID42259::_ID3044( var_1, "idle" );
    wait 8;
    var_2 _ID42259::_ID3111( var_1, "stumble" );
    var_1 _meth_8058();
}

_ID48991()
{
    self waittill( "trigger" );
    _ID42237::_ID27077( "scn_gulag_exp_trashcan_debris", self._ID25988 );
}

_ID46444()
{
    var_0 = _func_1A2( "file_cabinet_anim", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_1040 );
    var_0 = _ID42407::_ID3310( var_0 );
    _ID42237::_ID14413( "enter_final_room" );
    wait 3;
    var_0["1"] _unknown_1065( 0.2 );
    wait 0.1;
    var_0["1"] _unknown_1077( 0.1 );
    var_0["2"] _unknown_1084( 0.1 );
    wait 0.1;
    var_0["1"] _unknown_1096( 0.3 );
    var_0["2"] _unknown_10A4( 0.3 );
    var_0["3"] _unknown_10B1( 0.3 );
}

_ID48400()
{
    self._ID44381 = _unknown_141B();
    self._ID48689 = 0;
}

_ID53220( var_0, var_1, var_2 )
{
    var_3 = self._ID44381[self._ID48689];

    if ( !_func_02F( var_3 ) )
        return;

    self._ID48689++;

    if ( _func_02F( var_1 ) )
    {
        self _meth_82B8( var_3["origin"], var_0, var_1, var_2 );
        self _meth_82BF( var_3["angles"], var_0, var_1, var_2 );
    }
    else
    {
        self _meth_82B8( var_3["origin"], var_0 );
        self _meth_82BF( var_3["angles"], var_0 );
    }
}

_ID50033()
{
    var_0 = _func_1A2( "pillar_anim", "targetname" );
    var_0 = _ID42407::_ID3310( var_0 );
    var_1 = _func_1A1( var_0["1"]._ID1191, "targetname" );
    var_2 = _func_1A1( var_0["2"]._ID1191, "targetname" );
    var_0["1"] _meth_8053( var_1 );
    var_0["2"] _meth_8053( var_0["1"] );
    var_2 _meth_8053( var_1 );
    _ID42237::_ID14413( "enter_final_room" );
    wait 1;
    var_3 = _func_1A1( var_1._ID1191, "targetname" );
    var_1 _meth_82B8( var_3._ID740, 5, 1, 2 );
    var_1 _meth_82BF( var_3._ID65, 5, 1, 2 );
    wait 5;
    var_4 = _func_1A1( "pillar_rotater", "targetname" );
    var_1 _meth_8053( var_4 );
    var_5 = _func_1A1( var_4._ID1191, "targetname" );
    var_4 _meth_82BF( var_5._ID65, 2, 2, 0 );
    var_4 _meth_82B8( var_5._ID740, 2, 2, 0 );
    wait 2;
    var_4 = _func_1A1( var_4._ID1191, "targetname" );
    var_1 _meth_8053( var_4 );
    var_6 = 0.75;
    var_5 = _func_1A1( var_4._ID1191, "targetname" );
    var_4 _meth_82BF( var_5._ID65, var_6 );
    var_4 _meth_82B8( var_5._ID740, var_6 );
    wait(var_6);
    var_7 = _func_1A2( var_5._ID1191, "targetname" );
    var_7 = _ID42407::_ID3309( var_7 );
    var_0["2"] _meth_8053( var_2 );
    var_2 _meth_8053( var_7["script_origin_pillar2"] );
    var_0["1"] _meth_8053( var_1 );
    var_1 _meth_8053( var_7["script_origin_pillar1"] );
    var_6 = 0.4;
    var_1 _meth_8055();
    var_1 _meth_82BF( var_7["script_origin_pillar1"]._ID65, var_6 );
    var_1 _meth_82B8( var_7["script_origin_pillar1"]._ID740, var_6 );
    var_6 = 1.5;
    var_2 _meth_8055();
    var_2 _meth_82BF( var_7["script_origin_pillar2"]._ID65, var_6, 0, var_6 );
    var_2 _meth_82B8( var_7["script_origin_pillar2"]._ID740, var_6, 0, var_6 );
}

_ID47891()
{
    var_0 = self;

    for (;;)
    {
        if ( !_func_02F( var_0._ID1191 ) )
            break;

        var_1 = _func_1A1( var_0._ID1191, "targetname" );
        var_0 _meth_80B7();
        var_0 = var_1;
    }

    var_0 _meth_80B7();
}

_ID43668()
{
    _func_14B( 0.5 );
}

_ID46033( var_0 )
{
    if ( _func_039( "no_escape" ) == "1" )
        return;

    if ( _ID42237::_ID14385( "player_died_to_cave_in" ) )
        return;

    level._ID794 _meth_80B5( "damage_light" );
    _ID42237::_ID14402( "player_died_to_cave_in" );
    level._ID794 _meth_80F3( 0 );
    var_1 = [];
    var_1[var_1.size] = "hallway_collapsing";
    var_1[var_1.size] = "hallway_collapsing_big";
    var_1[var_1.size] = "hallway_collapsing_huge";
    var_1[var_1.size] = "hallway_collapsing_huge";
    var_2 = var_0;

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    var_3 = [];
    var_3[0] = 12;
    var_3[1] = 15;
    var_3[2] = 10;
    var_3[3] = 20;
    thread _unknown_1427();
    var_4 = level._ID794._ID740;

    for (;;)
    {
        for ( var_5 = 0; var_5 < var_3[var_2]; var_5++ )
        {
            var_6 = level._ID794 _meth_8346();
            var_7 = _func_11F( var_6 );
            var_8 = level._ID794._ID740 - var_4;
            var_9 = level._ID794._ID740 + var_7 * 100 + var_8 * 10;
            var_9 = _ID42407::_ID32530( var_9, level._ID794._ID740[2] );
            var_10 = _func_06D( var_9, var_9 + ( 0, 0, 3000 ), 0, undefined );
            var_11 = _ID42237::_ID16299( var_1[var_2] );
            _func_156( var_11, var_10["position"] );
            var_4 = level._ID794._ID740;

            if ( _func_0B7( 100 ) > 40 )
            {
                var_12 = _ID42237::_ID28976( 20 ) + level._ID794._ID740;

                if ( var_2 == 1 )
                    level._ID794 _meth_8057( 5 / level._ID794._ID255, var_12 );

                if ( var_2 > 1 )
                    level._ID794 _meth_8057( 15 / level._ID794._ID255, var_12 );

                level._ID794 _meth_80B4( "damage_heavy" );
            }

            wait 0.05;
        }

        if ( var_2 == 2 )
            level._ID794 _meth_8058();

        var_2++;

        if ( var_2 >= var_1.size )
            break;
    }
}

_ID44153()
{
    level endon( "stop_cavein" );
    var_0 = _ID42237::_ID16299( "player_cavein" );
    var_1 = 1.5;

    for (;;)
    {
        wait(var_1);
        _func_156( var_0, level._ID794._ID740 + ( 0, 0, 60 ) );
        var_1 -= 0.75;

        if ( var_1 <= 0.2 )
            var_1 = 0.2;
    }
}

_ID53266()
{
    wait 4.5;
    var_0 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_0 _meth_808B( 2.5 );
    var_0._ID55 = 1;
    var_0._ID408 = 0;
    level waittill( "stop_cavein" );
    wait 0.05;
    var_0 _meth_808F();
}

_ID54305()
{
    self waittill( "trigger" );
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    _func_18F( var_0._ID740 + ( 0, 0, 16 ), 32, 500, 500, level._ID794 );

    if ( _func_02F( var_0._ID31259 ) )
        _ID42234::_ID13611( var_0._ID31259 );

    wait 0.2;
    _func_18F( var_0._ID740 - ( 0, 0, 16 ), 32, 500, 500, level._ID794 );
}

_ID52825()
{
    level._ID794 endon( "death" );
    _ID42237::_ID14413( "chase_brush_kill_volume_activates" );
    _ID42407::_ID10226( 4, _ID42237::_ID14402, "chase_brush_kill_volume_2_activates" );
    var_0 = _func_1A1( "player_cavein_kill_volume", "targetname" );
    var_1 = _func_1A1( "player_cavein_kill_volume_later", "targetname" );

    for (;;)
    {
        if ( level._ID794 _meth_80B0( var_0 ) || _ID42237::_ID14385( "chase_brush_kill_volume_2_activates" ) && level._ID794 _meth_80B0( var_1 ) )
        {
            thread _unknown_15A1( 2 );
            return;
        }

        wait 0.05;
    }
}

_ID50782( var_0, var_1 )
{
    level endon( "stop_chase_fx" );
    var_2 = 6.0;
    var_3 = 16;
    var_4 = var_0;
    var_5 = var_0 + 75;
    var_6 = var_3 - var_2;
    var_7 = var_5 - var_4;
    level._ID47533[var_1] = [];

    for (;;)
    {
        var_8 = _func_0DE( "allies" );
        var_9 = _ID42237::_ID16182( self._ID740, var_8 );
        var_0 = _func_0F3( self._ID740, var_9._ID740 );
        level._ID47533[var_1]["dist"] = var_0;
        var_0 -= var_4;
        var_10 = var_0 / var_7;

        if ( var_10 < 0 )
            var_10 = 0;
        else if ( var_10 > 1 )
            var_10 = 1;

        var_11 = var_2 + var_6 * var_10;
        level._ID47533[var_1]["speed"] = var_11;
        self _meth_828D( var_11, 5, 5 );
        wait 0.05;
    }
}

_ID48575( var_0, var_1, var_2 )
{
    var_3 = var_1 * 20;

    for ( var_4 = 0; var_4 <= var_3; var_4++ )
    {
        var_5 = var_4 / var_3;
        var_6 = var_2 * var_5;

        if ( var_6 <= 0 )
            var_6 = 0.1;

        var_0 _meth_828E( var_6, var_6, var_6 );
        wait 0.05;
    }

    wait(var_1);
}

_ID53931()
{
    if ( _func_039( "no_escape" ) == "1" )
        return;

    level notify( "collapse_fx_stop" );
    var_0 = 190;
    var_0 = 270;
    var_0 /= 19.76;
    var_0 = 6;
    var_1 = _func_1A1( "chase_brush_vehicle", "targetname" );
    var_2 = var_1 _meth_8237();
    level._ID54339 = var_2;
    var_2 thread _unknown_17FD();
    var_2 thread _ID42237::_ID27000( "scn_tunnel_collapsing_loop", undefined, 0.5, 3 );
    var_3 = _func_1F2( var_2._ID1191, "targetname" );
    var_2 _meth_8287( var_3 );
    var_2 _meth_8289();
    var_4 = 4;
    thread _unknown_17D2( var_2, var_4, var_0 );
    thread _unknown_1789();
    level._ID47533 = [];
    var_2 thread _unknown_17B4( 400, 1 );
    wait 3.5;
    var_5 = _func_1A1( "chase_brush", "targetname" );
    var_5 _meth_8059();
    var_1 = _func_1A1( "chase_brush_vehicle", "targetname" );
    var_6 = var_1 _meth_8237();
    var_6 thread _unknown_1889();
    level._ID49333 = var_6;
    var_6 _meth_8287( var_3 );
    var_6 _meth_8289();
    var_5 _meth_8053( var_6 );
    var_6 thread _unknown_17F4( 900, 0 );
    level waittill( "stop_tunnel_collapsing_sfx" );
    var_2 thread _ID42237::_ID36516( "scn_tunnel_collapsing_loop" );
    level waittill( "stop_chase_fx" );
    var_6 _meth_80B7();
}

_ID51754()
{
    level endon( "stop_chase_fx" );
    var_0 = _ID42237::_ID35164();
    var_1 = _ID42237::_ID16299( "hallway_collapsing_chase" );
    var_0 _meth_8053( self, "tag_origin", ( 0, 0, 0 ), ( 0, 0, -90 ) );
    var_2 = 5;

    for (;;)
    {
        var_3 = self._ID65;
        var_4 = _func_11F( var_3 );
        var_2--;

        if ( var_2 <= 0 )
        {
            var_5 = _ID42237::_ID28976( 0.125 );
            _func_186( level._ID794._ID740 + var_4 * 250, 250, 250, var_5 );
            var_2 = _func_0B7( 10 );
        }

        _func_157( var_1, var_0, "tag_origin" );
        wait 0.1;
    }
}

_ID52054()
{
    level endon( "stop_chase_fx" );
    _unknown_195E();
    var_0 = 400;
    var_1 = 700;
    var_2 = _func_0C3( var_0 - var_1 );

    for (;;)
    {
        var_3 = level._ID794._ID740;
        var_3 = _ID42407::_ID32530( var_3, 0 );
        var_4 = self._ID740;
        var_4 = _ID42407::_ID32530( var_4, 0 );
        level._ID46587 = _func_0F3( var_3, var_4 );
        var_5 = level._ID46587;
        var_6 = 1 - var_5 - var_0 / var_2;
        var_6 = _func_0EE( var_6, 0, 1 );
        level._ID5261._ID55 = var_6;
        level._ID5261 _meth_808B( 0.2 );

        if ( var_5 < 260 )
            thread _unknown_1817( 2 );

        wait 0.1;
    }
}

_ID5262( var_0 )
{
    if ( _func_02F( level._ID5261 ) )
    {
        level._ID5261 _meth_808F();
        return;
    }

    var_1 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_1._ID55 = 1;
    var_1._ID408 = 0;
    level._ID5261 = var_1;
}

_ID50448()
{
    _ID42237::_ID14413( "rescue_begins" );
    var_0 = self._ID740;
    self._ID740 = self._ID740 + ( 0, 0, 300 );
    _ID42237::_ID14413( "exit_collapses" );
    self _meth_8096();
    _ID42407::_ID916();

    if ( _func_039( "no_escape" ) == "1" )
        return;

    self _meth_82B8( var_0, 1, 0.2, 0 );
    _func_192( 1.0, 4, var_0, 1000 );
}

_ID51861()
{
    level._ID54199 = self._ID740;
    _ID42237::_ID14413( "exit_collapses" );
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    level._ID54199 = var_0._ID740;
    _ID42237::_ID14388( "friendlies_turn_corner" );
    _ID42237::_ID14413( "friendlies_turn_corner" );
    var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    level._ID54199 = var_1._ID740;
    _ID42237::_ID14413( "friendlies_turn_to_cafeteria" );
    level._ID54199 = self._ID740;
}

_ID45227()
{
    if ( _ID42237::_ID14385( "enter_final_room" ) )
        return;

    level endon( "enter_final_room" );
    level endon( "stop_ending_run_fx" );
    var_0 = _ID42407::_ID15714( "wall_rock" );
    level._ID54653 = 3;
    level._ID52172 = 280;
    level._ID54564 = 700;
    level._ID45271 = 0.8;
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID14540 = _ID42237::_ID14540( var_2._ID40005["origin"] );
        var_2._ID53573 = 0;
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        var_4 = _ID42237::_ID14385( "exit_collapses" );
        var_0 = _ID42237::_ID3320( var_0 );
        var_5 = _ID42237::_ID14540( level._ID794._ID740 );
        var_6 = level._ID794._ID65;
        var_7 = _func_11F( var_6 );
        var_5 += var_7 * -350;
        var_8 = [];
        var_9 = var_0;

        for ( var_13 = _func_1DA( var_9 ); _func_02F( var_13 ); var_13 = _func_1BF( var_9, var_13 ) )
        {
            var_2 = var_9[var_13];

            if ( !var_4 && var_2._ID40005["fxid"] == "ceiling_collapse_dirt1" )
                continue;

            if ( var_2._ID53573 > _func_03D() - 1000 )
                continue;

            var_10 = _func_0F3( var_2._ID14540, var_5 );

            if ( var_10 < level._ID52172 )
                continue;

            if ( var_10 < level._ID54564 )
                continue;

            var_11 = _func_119( var_2._ID14540 - var_5 );
            var_12 = _func_0FB( var_7, var_11 );

            if ( var_12 < level._ID45271 )
                continue;

            var_8[var_8.size] = var_2;

            if ( var_8.size >= level._ID54653 )
                break;
        }

        var_clear_6
        var_clear_2
        var_14 = var_8;

        for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
        {
            var_2 = var_14[var_15];
            var_2 _ID42237::_ID1792();
            var_2._ID53573 = _func_03D();
            wait 0.1;
        }

        var_clear_1
        var_clear_0
        wait 0.1;
    }
}

_ID54280()
{
    _ID42237::_ID14413( "enter_final_room" );
    level endon( "stop_ending_run_fx" );
    var_0 = _ID42407::_ID15714( "cafe_rock" );
    level._ID48582 = 0.07;

    for (;;)
    {
        var_0 = _ID42237::_ID3320( var_0 );
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_2 _ID42237::_ID1792();
            wait(level._ID48582);
        }

        var_clear_2
        var_clear_0
        wait 0.1;
    }
}

_ID49989()
{
    level endon( "collapse_fx_stop" );
    var_0 = _ID42237::_ID16638( "ceiling_collapse_org", "targetname" );
    var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2 = _func_11A( var_1._ID740 - var_0._ID740 );
    var_3 = _func_0F3( var_0._ID740, var_1._ID740 );
    var_4 = _func_11F( var_2 );
    var_5 = [];
    var_5[var_5.size] = "hallway_collapsing";
    var_5[var_5.size] = "hallway_collapsing_big";
    var_5[var_5.size] = "hallway_collapsing_huge";
    _ID42407::_ID10226( 5.5, _ID42237::_ID27077, "scn_gulag_heli_tunnel_collapse", var_0._ID740 );
    thread _unknown_1DB5( var_0._ID740, var_4, var_3, var_5[0], 6 );
    wait 3.5;
    thread _unknown_1DC7( var_0._ID740, var_4, var_3, var_5[1], 3 );
    wait 2.5;
    thread _unknown_1DDA( var_0._ID740, var_4, 0, var_5[2], 8 );
}

_ID49733( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "collapse_fx_stop" );
    var_5 = _func_1A5();
    var_5 endon( "stop" );
    var_5 _ID42407::_ID10226( var_4, _ID42407::_ID31877, "stop" );
    var_6 = _ID42237::_ID16299( var_3 );
    var_7 = 0.5;

    for (;;)
    {
        var_8 = var_0 + var_1 * _func_0B8( var_2 );
        _func_156( var_6, var_8 );
        wait(var_7);
        var_7 -= 0.35;

        if ( var_7 < 0.5 )
            var_7 = 0.5;
    }
}

_ID44651()
{
    var_0 = self;
    var_1 = [];

    for (;;)
    {
        if ( !_func_02F( var_0._ID1191 ) )
            break;

        var_0 = _func_1A1( var_0._ID1191, "targetname" );
        var_2 = [];
        var_2["angles"] = var_0._ID65;
        var_2["origin"] = var_0._ID740;
        var_2["model"] = var_0;
        var_1[var_1.size] = var_2;
    }

    var_3 = var_1;

    for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
    {
        var_0 = var_3[var_4];
        var_0["model"] _meth_80B7();
    }

    var_clear_1
    var_clear_0
    return var_1;
}

_ID54382()
{
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_0 thread _unknown_1F00();
    _ID42237::_ID14413( "exit_collapses" );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !_func_1A7( var_1 ) )
            continue;

        if ( var_1 == level._ID46875 )
            break;
    }

    if ( _ID42237::_ID14385( "do_not_flip_box" ) )
    {
        wait 0.35;
        wait 1.7;
        _ID42237::_ID14402( "match_up_for_final_room" );
        return;
    }

    var_0 notify( "topple" );
    var_0 waittill( "trigger" );
    thread _unknown_1F94();
}

_ID51986()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1[var_3._ID170] = var_3;
    }

    var_clear_2
    var_clear_0
    var_5 = var_1["script_model"];
    var_1["script_brushmodel"] _meth_8053( var_5 );
    var_6 = var_5 _unknown_1F55();
    self waittill( "topple" );
    var_5 _ID42407::_ID10226( 0.25, _ID42407::_ID27079, "door_cargo_container_burst_open" );
    var_1["script_brushmodel"] thread _unknown_1FED();
    var_7 = var_6;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_5 _meth_82B8( var_8["origin"], 0.1 );
        var_5 _meth_82BF( var_8["angles"], 0.1 );
        wait 0.1;
    }

    var_clear_2
    var_clear_0
    var_1["script_brushmodel"] notify( "stop_killing" );
}

_ID46390()
{
    level._ID49332 = self;
    self endon( "stop_killing" );

    for (;;)
    {
        if ( level._ID794 _meth_80B0( self ) )
        {
            level._ID794 _meth_8058();
            return;
        }

        wait 0.05;
    }
}

_ID46719()
{
    var_0 = _ID42237::_ID16638( "car_slide_org", "targetname" );
    wait 0.35;
    var_0 thread _ID42259::_ID3020( level._ID46875, "slide_across_car" );
    wait 1.7;
    level._ID46875 _ID42407::_ID3136();
    _ID42237::_ID14402( "match_up_for_final_room" );
    _func_0DB( "player_sprintSpeedScale", level._ID54582 );
}

_ID48571()
{
    var_0 = _func_1A5();
    var_1 = _func_1A1( self._ID1191, "targetname" );

    if ( !_func_02F( var_1 ) )
        return;

    var_2["ch_street_wall_light_01_on"] = "ch_street_wall_light_01_on";
    var_2["ch_street_wall_light_01_off"] = "ch_street_wall_light_01_on";
    var_3["ch_street_wall_light_01_off"] = "ch_street_wall_light_01_off";
    var_3["ch_street_wall_light_01_on"] = "ch_street_wall_light_01_off";
    var_2["com_floodlight_on"] = "com_floodlight_on";
    var_2["com_floodlight"] = "com_floodlight_on";
    var_3["com_floodlight"] = "com_floodlight";
    var_3["com_floodlight_on"] = "com_floodlight";
    var_0._ID43904 = var_2;
    var_0._ID47202 = var_3;
    var_0._ID594 = var_1;
    var_4 = [];
    var_4["slow_flicker"] = ::_unknown_2191;
    var_0._ID20129 = var_1 _meth_81EA();

    if ( !_func_02F( self._ID31388 ) )
        thread _unknown_2166( var_0 );
    else
        thread [[ var_4[self._ID31388] ]]( var_0 );
}

_ID44776( var_0 )
{
    for (;;)
    {
        var_1 = _func_0B7( 5 ) + 2;

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            var_0._ID594 _meth_81EB( 0 );
            self _meth_80B8( var_0._ID47202[self._ID669] );
            wait 0.05;
            var_0._ID594 _meth_81EB( var_0._ID20129 );
            self _meth_80B8( var_0._ID43904[self._ID669] );
            wait 0.05;
        }

        var_0._ID594 _meth_81EB( 0 );
        self _meth_80B8( var_0._ID47202[self._ID669] );
        wait(_func_0BA( 0.2, 0.3 ));
        var_1 = _func_0B7( 5 ) + 2;

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            var_0._ID594 _meth_81EB( 0 );
            self _meth_80B8( var_0._ID47202[self._ID669] );
            wait 0.05;
            var_0._ID594 _meth_81EB( var_0._ID20129 );
            self _meth_80B8( var_0._ID43904[self._ID669] );
            wait 0.05;
        }

        var_0._ID594 _meth_81EB( var_0._ID20129 );
        self _meth_80B8( var_0._ID43904[self._ID669] );
        wait(_func_0BA( 0.2, 0.3 ));
    }
}

_ID45195( var_0 )
{
    for (;;)
    {
        var_1 = _func_0B7( 5 ) + 2;

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            var_0._ID594 _meth_81EB( 0 );
            self _meth_80B8( var_0._ID47202[self._ID669] );
            wait 0.1;
            var_0._ID594 _meth_81EB( var_0._ID20129 );
            self _meth_80B8( var_0._ID43904[self._ID669] );
            wait 0.1;
        }

        var_0._ID594 _meth_81EB( var_0._ID20129 );
        self _meth_80B8( var_0._ID43904[self._ID669] );
        wait(_func_0BA( 0.2, 0.3 ));
    }
}

_ID46074()
{
    var_0 = _ID42407::_ID15611( self._ID740, level._ID43155, 32 );

    if ( !_func_02F( var_0 ) )
        return;

    var_1 = level._ID43155[var_0];
    level._ID43155[var_0] = undefined;
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_2._ID740 = self._ID740;
    var_2._ID65 = self._ID65;
    var_1 _meth_8053( var_2 );
    wait 1;
    var_3 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_4 = 5;
    var_2 _meth_82B8( var_3._ID740, var_4, var_4 * 0.1, var_4 * 0.1 );
    var_2 _meth_82BF( var_3._ID65, var_4, var_4 * 0.1, var_4 * 0.1 );
    var_5 = var_4 * 20;
    var_6 = var_2._ID740 + ( 0, 0, 32 );

    for ( var_7 = 0; var_7 < var_5; var_7++ )
    {
        _func_186( var_6, 350, 250, _ID42237::_ID28976( 0.05 ) );
        wait 0.05;
    }
}

_ID52256()
{
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_0 _meth_8053( self );
}

_ID53575()
{
    for (;;)
    {
        wait(_func_0BA( 3, 17 ));
        var_0 = _func_0B9( 4, 8 );

        for ( var_1 = 0; var_1 < var_0; var_1++ )
        {
            var_2 = _ID42237::_ID28976( 0.18 );

            if ( var_2[2] < 0 )
                var_2 = _ID42407::_ID32530( var_2, var_2[2] * -1 );

            _func_186( self._ID740, 120, 80, var_2 );
            wait 0.05;
        }
    }
}

_ID53540()
{
    wait(_func_0BA( 7, 20 ));
    _func_18F( self._ID740, 32, 500, 500 );
}

_ID50785()
{
    var_0 = _ID42237::_ID35164();
    var_1 = self._ID65;
    var_2 = 25;
    self _meth_8020( 50, 25 );

    for (;;)
    {
        var_0._ID65 = var_1;
        var_3 = _func_0BA( var_2 * -1, var_2 );
        var_0 _meth_82C3( var_3 );
        var_4 = _func_0BA( var_2 * -1, var_2 );
        var_0 _meth_82C4( var_4 );
        self _meth_82BF( var_0._ID65, 1, 0.3, 0.3 );
        var_5 = _func_11F( var_0._ID65 );
        wait 1;
    }
}

_ID43581()
{
    self _meth_805A();
    self _meth_80C5( 0 );
    self._ID486 = 50000;
    var_0 = _ID42237::_ID16638( "weapon_drop_org", "targetname" );
    var_1 = _ID42237::_ID35164();
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65;
    self _meth_8053( var_1, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    self._ID1194 = "neutral";
    self._ID511 = 1;
    self._ID507 = 1;
    var_2 = _ID42407::_ID16303( "gundrop_death" );
    var_1 _ID42259::_ID3023( self, "gundrop_death" );
    var_3 = level._ID794 _meth_831C();
    _ID42407::_ID14803( var_3, "primary" );
    wait 0.05;
    self _meth_8055();
    level waittill( "dropit" );
    wait 0.3;
    self _meth_8155( var_2, 1, 0, 0.55 );
    wait 0.05;
    self _meth_81CE( var_3, "right", 50000 );
    wait 0.3;
    var_1 _meth_80B7();
    self _meth_80B7();
    var_4 = _ID42237::_ID16638( "weapon_impact_org", "targetname" );
    _ID42407::_ID10226( 0.2, _ID42237::_ID27077, "physics_brick_default", var_4._ID740 );
    _ID42407::_ID10226( 0.2, _ID42237::_ID27077, "physics_brick_default", var_4._ID740 );
    _ID42407::_ID10226( 0.2, _ID42237::_ID27077, "physics_brick_default", var_4._ID740 );
    _ID42407::_ID10226( 0.2, _ID42237::_ID27077, "physics_brick_default", var_4._ID740 );
    _ID42407::_ID10226( 0.2, _ID42237::_ID27077, "physics_brick_default", var_4._ID740 );
}

_ID48902( var_0 )
{
    wait 0.5;
    level._ID794 _meth_8084( var_0, "tag_player", 1, 0, 0, 0, 0, 1 );
    wait 2.5;
    level._ID794 _meth_80A9( 1.0, 0.5, 0.5, 10, 10, 10, 4 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 2.5;
    level._ID794 _meth_80A9( 1.5, 0.5, 0.5, 17, 10, 12, 4 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 4.15;
    level._ID794 _meth_80A9( 1.5, 0.5, 0.5, 17, 17, 12, 2 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 8.5;
    level._ID794 _meth_80A9( 1.0, 0.5, 0.5, 0, 0, 0, 0 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
}

_ID44775()
{
    level._ID14776 = 0;
}

_ID48602()
{
    var_0 = _ID42313::_ID9125( "white", 0, level._ID794 );
    var_0._ID55 = 1;
    var_0 _meth_808B( 1 );
    var_0._ID55 = 0;
    wait 1;
    var_0 _meth_808F();
}

_ID45716()
{
    var_0 = _ID42313::_ID9125( "black", 0.0, level._ID794 );
    var_1 = _ID42313::_ID9125( "white", 1.0, level._ID794 );
    wait 0.3;
    var_0 _meth_808B( 0.4 );
    var_0._ID55 = 0.9;
    var_1 _meth_808B( 0.9 );
    var_1._ID55 = 0;
    wait 0.4;
    var_0 _meth_808B( 0.5 );
    var_0._ID55 = 0;
    wait 0.5;
    var_1 _meth_808F();
    var_0 _meth_808F();
}

_ID45873( var_0 )
{
    var_1 = _ID42237::_ID35164();
    var_1 _meth_8053( var_0, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _unknown_288A();
    var_2 = _func_03D();
    level._ID48599 = var_2;
    level._ID28789 = level._ID48599;
    wait 0.5;
    _ID42407::_ID10226( 0.5, ::_unknown_280C );
    level._ID14775 = 2;
    _ID42407::_ID40847( var_2, 2.8 );
    level notify( "dropit" );
    level._ID794 _ID42237::_ID10192( 0.05, ::_meth_8328 );
    _func_0DB( "ammoCounterHide", 1 );
    var_3 = 0.25;
    level._ID28544 _meth_8055();
    level._ID794 _meth_8055();
    level._ID28544 _meth_82BF( level._ID52027._ID65, 0.5, 0.2, 0.2 );
    level._ID28544 notify( "stop_following_player" );
    _ID42237::_ID24938( 0.1, ::_func_192, 1.0, 0.6, level._ID794._ID740, 128 );
    _ID42407::_ID10226( 0.0, ::_unknown_2892 );
    level._ID794 _meth_80F5();
    level._ID794 _meth_8087( var_0, "tag_player", var_3, var_3 * 0.4, var_3 * 0.4 );
    var_0 _meth_8059();
    var_4 = _func_1A1( "pricecell_stagelight", "targetname" );
    var_4 thread _ID42407::_ID25088( "staging_on", 1 );
    _ID42407::_ID10226( var_3, ::_unknown_288A, var_0 );
    level notify( "breach_concludes" );
    level._ID794 _meth_8057( 50 / level._ID794._ID255, level._ID28543._ID740 );
    _ID42407::_ID40847( var_2, 6.7 );
    _ID42407::_ID40847( var_2, 7.3 );
    _ID42407::_ID40847( var_2, 24.6 );
    thread _ID42407::_ID28864( "gulag_hqr_getout" );
}

_ID44445()
{
    var_0 = _func_03D();
    wait 4.2;
    var_1 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_1._ID740 = ( -4245.72, 1688.15, 167.671 );
    var_1._ID65 = ( 63.0343, 48.6473, -14.4095 );
    var_2 = [];
    var_2["tag_acog_2"] = 1;
    var_2["tag_heartbeat"] = 1;
    var_2["tag_m203"] = 1;
    var_2["tag_red_dot_mars"] = 1;
    var_2["tag_shotgun"] = 1;
    var_2["tag_silencer"] = 1;
    var_2["tag_flash_silenced"] = 1;
    var_2["tag_motion_tracker"] = 1;
    var_1 _meth_80B8( "gulag_price_ak47" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        var_4 = var_3[var_5];

    var_clear_2
    var_1 _meth_8053( level._ID28543, "tag_weapon_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    wait 1.4;
    _ID42407::_ID40847( var_0, 11.3 );
    var_1 _meth_8053( level._ID28543, "tag_weapon_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID28543 waittill( "change_to_regular_weapon" );
    var_1 _meth_80B7();
}

_ID49706()
{
    var_0 = _func_1A2( "cafe_distance_tracker", "targetname" );
    var_1 = var_0;
    var_2 = [];
    var_3 = var_0;

    for ( var_11 = _func_1DA( var_3 ); _func_02F( var_11 ); var_11 = _func_1BF( var_3, var_11 ) )
    {
        var_4 = var_3[var_11];
        var_5 = var_1;

        for ( var_10 = _func_1DA( var_5 ); _func_02F( var_10 ); var_10 = _func_1BF( var_5, var_10 ) )
        {
            var_6 = var_5[var_10];

            if ( var_4 == var_6 )
                continue;

            var_7 = var_4._ID31388;
            var_8 = var_6._ID31388;
            var_9 = _func_0F3( var_4._ID740, var_6._ID740 );
            var_2[var_7][var_8] = var_9;
        }

        var_clear_6
        var_clear_1
    }

    var_clear_8
    var_clear_0
    level._ID48547 = var_2;
    var_12 = var_0;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        var_13 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID53470()
{
    self endon( "death" );
    _ID42237::_ID14413( "enemy_cavein" );
    wait 0.5;

    for (;;)
    {
        _func_18F( self._ID740, 35, 10, 10 );
        wait 0.05;
    }
}

_ID49510()
{
    wait 10;
    self._ID525 = 64;
}

_ID45885()
{
    if ( !_func_0D4( self ) )
        return;

    self._ID525 = 16;
    thread _unknown_2BD8();
    _ID42407::_ID13024( "run_into_room" );
    self._ID513 = 1;
    self._ID3195 = 1;
    self._ID24474 = 1;
    self._ID24424 = 1;
    self._ID34146 = 1.35;
    self _meth_81AF( 1 );
    self._ID304 = 1;
    _ID42407::_ID10871();
    self._ID10998 = 1;
    self._ID452 = 45;
    self._ID764 = 0;
    self._ID1298 = 16;
    self._ID1299 = 16;

    if ( self._ID3189 == "redshirt" )
    {
        self waittillmatch( "single anim",  "end"  );
        self._ID24424 = 1.1;
        wait 1;
        self._ID24424 = 1.0;
    }
}

_ID46633( var_0, var_1 )
{
    var_2 = var_1 * 20;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        var_4 = var_3 / var_2;
        self._ID525 = var_0 * var_4;
        wait 0.05;
    }
}

_ID46794()
{
    var_0 = 0.3;
    var_1 = [];
    var_1[0] = var_0;
    var_1[1] = var_0;
    var_1[2] = var_0;
    var_1[3] = var_0;
    var_1[4] = var_0;
    var_2 = 0;
    var_3 = _ID42237::_ID16638( "glass_shatter_struct", "targetname" );

    for (;;)
    {
        _func_18F( var_3._ID740, 64, 350, 250 );
        var_4 = var_1[var_2];
        var_2++;

        if ( !_func_02F( var_4 ) )
            var_4 = _func_0BA( 0.3, 1.5 );

        wait(var_4);

        if ( !_func_02F( var_3._ID1191 ) )
            return;

        var_3 = _ID42237::_ID16638( var_3._ID1191, "targetname" );
    }
}

_ID43462()
{
    wait 4.5;
    _ID42407::_ID34379();
    _ID42475::_ID34575( "start_evac_slomo" );
    _ID42407::_ID34377( 0.4 );
    _ID42407::_ID34374( 0.25 );
    _ID42407::_ID34371();
    wait 3;
    var_0 = 0.75;
    level notify( "blend_out_dof",  var_0  );
    _ID42407::_ID34374( var_0 );
    _ID42407::_ID34372();
    _ID42475::_ID34575( "stop_evac_slomo" );
    _ID42407::_ID34369();
}

_ID43267()
{
    var_0 = _ID54167::_ID43386( "gulag_rock_remove" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 60, 0.05, 0 );
    var_0 _ID54167::_ID48800( 1.8 ) _ID54167::_ID44191( 52, 1.75, 0 );
    var_0 _ID54167::_ID48800( 7.0 ) _ID54167::_ID43500( 4.5, 0 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.0, -1, 64.0, 64.0, "gulag_rock_remove_dof" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_rock_remove_dof" ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 2.0 ) _ID54167::_ID50321( 4.8, -1, 2.0, 2.0, "gulag_rock_remove_dof" ) _ID54167::_ID52391( level._ID53563, "tag_eye", "gulag_rock_remove_dof" );
    var_0 _ID54167::_ID48800( 5.8 ) _ID54167::_ID50321( 13, -1, 2.0, 2.0, "gulag_rock_remove_dof" ) _ID54167::_ID52391( level._ID28543, "tag_eye", "gulag_rock_remove_dof" );
    var_0 _ID54167::_ID48800( 7.0 ) _ID54167::_ID50321( 4.8, -1, 2.0, 2.0, "gulag_rock_remove_dof" );
    var_0 _ID54167::_ID48800( 12.0 ) _ID54167::_ID50321( 64, -1, 0.5, 0.5, "gulag_rock_remove_dof" );
    var_0 _ID54167::_ID48800( 14.0 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 12.0 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.05 ) _ID54167::_ID47198( 0.1, 0.8, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.3 );
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48800( 11.95 ) _ID54167::_ID47198( 0.08, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    thread _unknown_2F9E();
    var_0 _ID54167::_ID48166();
}

_ID51907()
{
    wait 1.0;
    level._ID794 _meth_80A9( 2.0, 0.25, 0.25, 2, 8, 20, 2 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 10.0;
    level._ID794 _meth_80A9( 1.0, 0.25, 0.25, 0, 0, 0, 0 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
}

_ID49760()
{
    self endon( "death" );
    wait(_func_0B8( 3 ));
    self._ID287 = 1;
    self _meth_8058();
}

_ID44720()
{
    wait 0.5;
    wait 2.8;
    _ID42407::_ID28864( "gulag_plp_cantsee" );
}

_ID48193()
{
    level._ID52172 = 0;
    level._ID54564 = 800;
    level._ID45271 = 0.3;
}

_ID53177()
{
    thread _unknown_30C6();
    thread _unknown_3060();
    _ID42407::_ID14689( "gulag_cafe_falls_apart", 5 );
}

_ID51999()
{
    level notify( "stop_minor_earthquakes" );
    var_0 = _func_03D();
    _ID42407::_ID40847( var_0, 2.9 );
    _unknown_30E4( 0.3, 1.4, level._ID53563._ID740, 5000 );
    _ID42407::_ID40847( var_0, 4.2 );
    thread _unknown_29C1();
    _ID42407::_ID40847( var_0, 6.45 );
    _unknown_310C( 0.45, 4, level._ID53563._ID740, 5000 );
    wait 1;
    _unknown_3120( 0.45, 3, level._ID794._ID740, 5000 );
}

_ID46781()
{
    if ( _ID42237::_ID14385( "controlled_player_rumble" ) )
        return;

    level._ID794 endon( "death" );
    var_0 = [];
    var_0[var_0.size] = "heavy_1s";
    var_0[var_0.size] = "heavy_2s";
    var_0[var_0.size] = "heavy_1s";
    var_0[var_0.size] = "heavy_2s";
    var_0[var_0.size] = "heavy_3s";
    var_0[var_0.size] = "light_1s";
    var_0[var_0.size] = "light_2s";
    var_0[var_0.size] = "light_1s";
    var_0[var_0.size] = "light_2s";
    var_0[var_0.size] = "light_1s";
    var_0[var_0.size] = "light_2s";
    var_0[var_0.size] = "light_1s";
    var_0[var_0.size] = "light_2s";
    var_0[var_0.size] = "light_3s";
    var_0[var_0.size] = "light_3s";
    var_1 = _ID42237::_ID28945( var_0 );
    var_2 = _ID42237::_ID28976( 1700 );
    _func_1CD( var_1, level._ID794._ID740 + var_2 );
}

_ID43994( var_0, var_1, var_2, var_3 )
{
    thread _unknown_318C();
    _func_192( var_0, var_1, var_2, var_3 );
    level notify( "swing",  var_0  );
    var_4 = ( _func_0B7( 360 ), _func_0B7( 360 ), _func_0B7( 360 ) );
    var_5 = _func_11F( var_4 );
    var_3 = _func_0BA( 500, 1000 );
    var_6 = level._ID794._ID740 + var_5 * var_3;
    thread _ID42237::_ID27077( "exp_artillery_underground", var_6 );
}

_ID51467()
{
    var_0 = 7;
    var_1 = 0.01;
    var_2 = level._ID48582;
    var_3 = var_2 - var_1;
    var_4 = var_0 * 20;

    for ( var_5 = 0; var_5 < var_4; var_5++ )
    {
        var_6 = var_5 / var_4;
        var_6 = 1 - var_6;
        level._ID48582 = var_1 + var_3 * var_6;
        wait 0.05;
    }
}

_ID49389()
{
    wait 3;
    var_0 = _func_1A2( "light_destructible", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_2EEC );
}

_ID47526()
{
    if ( _ID42237::_ID14385( "time_to_evac" ) )
        return;

    level endon( "time_to_evac" );

    for (;;)
    {
        _ID42237::_ID14413( "player_pushes_slab" );
        level._ID794 _meth_8328();
        _ID42237::_ID14426( "player_pushes_slab" );
        level._ID794 _meth_8329();
    }
}

_ID45290()
{
    if ( level._ID35897 == "evac" )
        return;

    var_0 = 240;
    self _meth_805F();
    self._ID740 = self._ID740 + ( 0, 0, var_0 * -1 );
    var_1 = _func_1A2( self._ID1191, "targetname" );
    var_1[var_1.size] = self;
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_805A();
        var_3 _meth_82C9();
    }

    var_clear_2
    var_clear_0

    if ( _func_039( "no_escape" ) == "1" )
        return;

    _ID42237::_ID14413( "enter_final_room" );
    wait 4;
    _ID42234::_ID13611( "cafeteria_collapse" );
    var_5 = _func_1A1( "chase_brush", "targetname" );
    var_5 _meth_8055();
    thread _unknown_337C();
    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_3 = var_6[var_7];
        var_3 _meth_8059();
        var_3 _meth_82C8();
    }

    var_clear_1
    var_clear_0
    self _meth_82B8( self._ID740 + ( 0, 0, var_0 ), 4, 1, 3 );
    var_5 _meth_82B8( var_5._ID740 + ( 0, 0, -300 ), 4, 2 );
    level notify( "stop_tunnel_collapsing_sfx" );
    wait 4;
    level notify( "stop_chase_fx" );
    var_5 _meth_80B7();
    self _meth_805E();
}

_ID43224()
{
    level endon( "stop_chase_fx" );

    for (;;)
    {
        if ( level._ID794 _meth_80B0( self ) )
            _func_18F( level._ID794._ID740, 35, 10, 5 );

        wait 0.05;
    }
}

_ID53427()
{
    var_0 = _ID42237::_ID16299( "gulag_cafe_spotlight" );
    var_1 = _ID42237::_ID35164();
    var_1 _meth_8053( self._ID45080, "j_hanging_light_04", ( 0, 0, -32 ), ( 0, 0, 0 ) );
    _func_157( var_0, var_1, "tag_origin" );
    _ID42237::_ID14413( "time_to_evac" );
    _func_158( var_0, var_1, "tag_origin" );
}

_ID51038()
{
    var_0 = _ID42407::_ID35028( "lamp" );
    var_0 thread _unknown_347B( self );
}

_ID45311()
{
    var_0 = _ID42407::_ID35028( "lamp_off" );
    var_0 thread _unknown_348B( self );
}

_ID53736( var_0 )
{
    var_0._ID45080 = self;
    self._ID3189 = "lamp";
    self._ID740 = var_0._ID740;
    self _meth_8095();
    var_1 = 1;
    var_2 = [];
    var_2[0] = _ID42407::_ID16120( "swing" );
    var_2[1] = _ID42407::_ID16120( "swing_dup" );
    thread _unknown_34DF();

    for (;;)
    {
        level waittill( "swing",  var_3  );
        var_4 = var_2[var_1];
        var_5 = !var_1;
        self _meth_8157( var_4, 1, 0.3, 1 );
        wait 2.5;
    }
}

_ID53851()
{
    var_0 = _ID42237::_ID35164();

    for (;;)
    {
        var_1 = _func_0BA( -30, 30 );
        var_0 _meth_82C4( var_1 );
        var_2 = _func_0BA( 0.5, 1.5 );
        self _meth_82BF( var_0._ID65, var_2, var_2 * 0.4, var_2 * 0.4 );
        wait(var_2);
    }
}

_ID45151()
{
    wait 3;
    _ID42237::_ID14388( "enable_endlog_fx" );
    _ID42237::_ID14388( "disable_exterior_fx" );
}

_ID52704( var_0 )
{
    var_1 = _ID42237::_ID35164();
    var_1._ID740 = level._ID794._ID740;
    var_1._ID65 = level._ID794._ID65;
    wait 0.05;
    level._ID794 _meth_8098( var_1 );
    wait 5;
    wait 0.05;
    var_1 _meth_8054( var_0, "tag_player", 0 );
}

_ID47048( var_0 )
{
    var_1 = _func_1A1( "price_spawner", "targetname" );
    var_1._ID740 = var_0["price"]._ID740;
    var_1._ID65 = var_0["price"]._ID65;
    var_1 _ID42407::_ID35014();
    var_1 = _func_1A1( "endlog_soap_spawner", "targetname" );
    var_1._ID740 = var_0["soap"]._ID740;
    var_1._ID65 = var_0["soap"]._ID65;
    var_1 _ID42407::_ID35014();
    var_1 = _func_1A2( "endlog_redshirt_spawner", "targetname" )[0];
    var_1._ID740 = var_0["redshirt"]._ID740;
    var_1._ID65 = var_0["redshirt"]._ID65;
    var_1 _ID42407::_ID35014();
}

_ID54628()
{

}

_ID43169()
{
    if ( _ID42237::_ID14385( "time_to_evac" ) )
        return;

    var_0 = _ID42237::_ID28976( 16 );
    var_0 = _ID42407::_ID32530( var_0, 80 );

    if ( level._ID794._ID486 > 80 )
    {
        level._ID794 _meth_8057( 15 / level._ID794._ID255, level._ID794._ID740 + var_0 );
        level._ID794 _meth_80A1( "scn_gulag_player_gets_hit_by_rock" );
    }
}

_ID45617()
{
    var_0 = 2.5;
    var_1 = var_0 / 20;

    for ( var_2 = 0; var_2 <= 1; var_2 += var_1 )
    {
        level._ID794 _meth_81F1( var_2 );
        wait 0.05;
    }
}

_ID54609()
{
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_8189( "stand" );
    var_0 = _ID42407::_ID35028( "worldbody" );
    var_0._ID740 = level._ID794 _meth_809C();
    var_0._ID65 = level._ID794 _meth_8346();
    level._ID794 _meth_8084( var_0, "tag_player", 0, 0, 0, 0, 0, 0 );
    var_0 _ID42259::_ID3111( var_0, "player_downed" );
    level._ID794 _meth_8055();
    level._ID794 _meth_8334( 0 );
    var_0 _meth_80B7();
}

_ID47856( var_0 )
{
    var_0[var_0.size] = level._ID46553;
    var_1 = _func_1A1( "escape_scripted_node", "targetname" );
    thread _unknown_3774();
    var_1 _ID42259::_ID3099( var_0, "escape" );
    _ID42237::_ID14402( "do_cafeteria_anims" );
}

_ID49558()
{
    var_0 = _func_1A1( "animated_barrel", "targetname" );
    var_1 = _func_1A1( "animated_barrel_col", "targetname" );
    var_1 _meth_8053( var_0 );
    var_0 _ID42407::_ID3428( "barrel" );
    var_0 thread _ID42259::_ID3111( var_0, "barrel_falling" );
    var_2 = _func_1A1( "animated_crate", "targetname" );
    var_3 = _func_1A1( "animated_crate_col", "targetname" );
    var_3 _meth_8053( var_2 );
    var_2 _ID42407::_ID3428( "crate" );
    var_2 thread _ID42259::_ID3111( var_2, "crate_falling" );
}
#using_animtree("player");

_ID54604()
{
    self _meth_84C7( "h2_gulag_escapesequence_player_additive" );
    wait(_func_067( %h2_gulag_escapesequence_player_additive ));
    self _meth_84C7( 0 );
}

_ID44732()
{
    var_0 = _func_1A1( "player_in_fake_sewer", "targetname" );
    var_0 waittill( "trigger" );
    _ID42237::_ID14388( "enable_interior_fx" );
    _ID42237::_ID14402( "enable_endlog_fx" );
}
