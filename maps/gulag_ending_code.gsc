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
    var_0 = getaiarray( "allies" );
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

        foreach ( var_21, var_19 in var_0 )
        {
            var_16 += var_19._ID740;
            var_20 = distance( var_19._ID740, level._ID54199 );
            var_17[var_21] = var_20 + var_15[var_21];
        }

        var_16 /= var_0.size;
        var_22 = 99999999;

        foreach ( var_20 in var_17 )
        {
            if ( var_20 < var_22 )
                var_22 = var_20;
        }

        var_25 = [];

        foreach ( var_21, var_20 in var_17 )
            var_17[var_21] -= var_22;

        var_27 = 0;

        foreach ( var_20 in var_17 )
        {
            if ( var_20 > var_27 )
                var_27 = var_20;
        }

        var_30 = var_27 * var_13 / var_14;
        var_30 *= 0.5;

        if ( var_30 > var_13 )
            var_30 = var_13;

        var_31 = var_27 * 0.5;
        var_25 = [];

        foreach ( var_21, var_20 in var_17 )
        {
            var_20 -= var_31;
            var_20 /= abs( var_31 );
            var_25[var_21] = var_20 * var_30;
        }

        var_33 = distance( var_16, level._ID54199 );
        var_34 = distance( level._ID794._ID740, level._ID54199 );
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
            setsaveddvar( "player_sprintSpeedScale", var_38 );

        if ( _ID42237::_ID14385( "modify_ai_moveplaybackrate" ) )
        {
            foreach ( var_21, var_19 in var_0 )
            {
                var_19._ID24424 = var_37 + var_25[var_21];

                if ( var_19._ID24424 > 1.15 )
                    var_19._ID24424 = 1.15;
            }
        }

        wait 0.05;
    }
}

_ID49866( var_0 )
{
    var_1 = level._ID48547[self._ID3189][var_0._ID3189];
    var_2 = distance( self._ID740, var_0._ID740 );
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
    var_8 = int( var_8 * 100 ) * 0.01;
    var_9 = int( var_9 * 100 ) * 0.01;
}

_ID49223( var_0 )
{
    var_1 = level._ID48547[self._ID3189][var_0._ID3189];
    var_2 = distance( self._ID740, var_0._ID740 );
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
    var_8 = int( var_8 * 100 ) * 0.01;
    var_9 = int( var_9 * 100 ) * 0.01;
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
    if ( getdvar( "no_escape" ) == "1" )
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
        var_7 = randomfloat( 1 );

        if ( var_6 )
        {
            var_6 = 0;
            var_7 = 1;
        }

        var_8 = var_0 + var_7 * var_2;
        var_9 = var_3 + var_7 * var_5;

        if ( randomint( 100 ) < 35 )
            _ID43169();

        _ID43994( var_8, 3 + var_7 * 2, level._ID794._ID740 + _ID42237::_ID28976( 1000 ), 5000 );
        var_10 = level._ID794 getplayerangles();
        var_11 = anglestoforward( var_10 );
        var_12 = level._ID794._ID740 + var_11 * 180;
        var_12 = _ID42407::_ID32530( var_12, level._ID794._ID740[2] + 64 );
        var_13 = _ID42237::_ID28976( var_9 );

        if ( var_13[2] < 0 )
            var_13 = _ID42407::_ID32530( var_13, var_13[2] * -1 );

        physicsjolt( var_12, 350, 250, var_13 );
        wait(randomfloatrange( 1, 5 ));
    }
}

_ID54691()
{
    level._ID794 takeallweapons();
    level._ID794 giveweapon( "m4m203_reflex_arctic" );
    level._ID794 setviewmodel( "viewhands_udt" );
    level._ID794 switchtoweapon( "m4m203_reflex_arctic" );
    level._ID794 switchtoweapon( "m14_scoped_arctic" );
}

_ID43283()
{
    if ( getdvar( "no_escape" ) == "1" )
        return;

    level endon( "skip_stumble_trigger_think" );
    wait 3;
    var_0 = getent( "eq_view_roller", "targetname" );
    var_1 = _ID42237::_ID35164();
    var_0._ID740 = var_1._ID740;
    var_1 linkto( var_0 );
    level._ID794 playersetgroundreferenceent( var_1 );
    var_2 = _ID42237::_ID35164();

    if ( !_ID42237::_ID14385( "exit_collapses" ) )
    {
        self waittill( "trigger",  var_3  );
        thread _ID49989();
        _ID43994( 0.25, 4, self._ID740, 5000 );
        var_4 = _ID42237::_ID28976( 0.6 );
        var_5 = level._ID794._ID740;
        physicsjolt( var_5, 350, 250, var_4 );
        var_6 = var_0._ID65;
        level._ID794 thread _ID54604();
        _ID42237::_ID14413( "exit_collapses" );
        _ID42237::_ID14402( "controlled_player_rumble" );
        level._ID794 playrumblelooponentity( "heavy_3s" );
        _ID42407::_ID10226( 3.0, _ID42237::_ID14388, "controlled_player_rumble" );
        thread _ID45503();
        thread _ID48042();
    }

    if ( !_ID42237::_ID14385( "big_earthquake_hits" ) )
    {
        _ID42237::_ID14413( "big_earthquake_hits" );
        var_7 = _ID42407::_ID16268( "big_earthquake_hits" );
        var_0 = getent( var_7._ID1191, "targetname" );
        var_5 = var_0._ID740;
        var_6 = var_0._ID65;
        var_0._ID740 = var_1._ID740;
        var_1 linkto( var_0 );
        _ID43994( 0.25, 4, self._ID740, 5000 );
        var_4 = _ID42237::_ID28976( 0.6 );
        physicsjolt( var_5, 350, 250, var_4 );
    }

    _ID42237::_ID14413( "player_falls_down" );
    _ID43994( 0.35, 4, self._ID740, 5000 );
    var_4 = _ID42237::_ID28976( 0.6 );
    var_5 = level._ID794._ID740;
    physicsjolt( var_5, 350, 250, var_4 );
    _ID42237::_ID14402( "controlled_player_rumble" );
    level._ID794 playrumblelooponentity( "light_3s" );
    level._ID794 _ID42237::_ID10192( 1.5, ::playrumblelooponentity, "heavy_2s" );
    _ID42407::_ID10226( 3.5, _ID42237::_ID14388, "controlled_player_rumble" );
    var_6 = var_0._ID65;
    var_0._ID740 = var_1._ID740;
    var_8 = level._ID794 getplayerangles();
    var_0._ID65 = ( 0, var_8[1], 0 );
    var_2._ID65 = var_0._ID65;
    var_1 linkto( var_0 );
    var_9 = anglestoforward( var_0._ID65 );
    var_10 = anglestoright( var_0._ID65 );
    var_11 = level._ID794._ID740 + ( 0, 0, 100 ) + var_9 * 50;
    level._ID794 enabledeathshield( 1 );
    level._ID794 setmovespeedscale( 0.25 );
    level._ID794 dodamage( ( level._ID794._ID486 - 5 ) / level._ID794._ID255, var_11 );
    level._ID794 thread _ID44497();
    level._ID794 disableweapons();
    _ID42475::_ID34575( "start_evac_rock_falling" );

    if ( getdvar( "use_old_cafeteria_behavior" ) != "1" )
    {
        thread _ID42407::_ID14403( "cafeteria_lights_off", 2 );
        thread _ID54609();
    }

    var_12 = 1.9;

    if ( getdvar( "use_old_cafeteria_behavior" ) != "1" )
        level._ID794 playersetgroundreferenceent( undefined );

    var_2 addyaw( 20 );
    var_2 addpitch( 35 );
    var_2 addroll( 25 );
    var_13 = 0.2;
    var_0 rotateto( var_2._ID65, var_13, var_13 * 0.5, var_13 * 0.5 );
    wait(var_13);
    thread _ID49135( var_0._ID65 );

    if ( getdvar( "use_old_cafeteria_behavior" ) == "1" )
    {
        wait 0.75;
        var_13 = 0.5;
        var_2 addpitch( -35 );
        var_2 addroll( -25 );
        var_0 rotateto( var_2._ID65, var_13, var_13 * 0.5, var_13 * 0.5 );
        wait(var_13);
        var_13 = 0.5;
        var_2 addpitch( 5 );
        var_2 addroll( -15 );
        var_0 rotateto( var_2._ID65, var_13, 0, var_13 );
        wait(var_13);
        var_13 = 0.55;
        var_2 addpitch( 15 );
        var_2 addroll( -60 );
        var_0 rotateto( var_2._ID65, var_13, 0, 0 );
        level._ID794 setstance( "prone" );
        wait 0.65;
    }

    if ( getdvar( "use_old_cafeteria_behavior" ) != "1" )
        wait 2.1;

    setomnvar( "ui_consciousness_init", 1 );
    setsaveddvar( "ui_consciousnessVignetteDarkness", 0.3 );
    setomnvar( "ui_consciousness_play", 2 );
    _ID42475::_ID34575( "start_evac_rock_falling_black_screen" );
    level._ID794 nightvisiongogglesforceoff();
    level._ID794 allowcrouch( 1 );
    level._ID794 allowstand( 1 );
    _ID42237::_ID14388( "player_falls_down" );
    wait 1;
}

_ID44497()
{
    level endon( "time_to_evac" );
    level._ID794 _ID42407::_ID13025( "player_no_auto_blur" );
    level._ID794 setblurforplayer( 12, 0.05 );
    var_0 = 0.8;
    var_1 = 0.4;
    var_2 = 7;
    var_3 = 1;

    for (;;)
    {
        level._ID794 setblurforplayer( var_1, var_0 );
        wait(var_0);
        level._ID794 setblurforplayer( var_2, var_3 );
        wait(var_3);
        var_2 *= 1.5;
    }
}

_ID49135( var_0 )
{
    var_1 = anglestoforward( var_0 );
    var_2 = anglestoright( var_0 );
    var_3 = level._ID794._ID740 + ( 0, 0, 100 ) + var_1 * 50;
    var_4 = level._ID794._ID740 + var_1 * 35 + var_2 * -10 + ( 0, 0, 32 );
    var_5 = _ID42237::_ID16299( "hallway_collapsing_huge" );

    for ( var_6 = 0; var_6 < 10; var_6++ )
    {
        var_4 = level._ID794._ID740 + var_1 * 35 + var_2 * -10 + ( 0, 0, 180 );
        _ID42237::_ID24938( 0.05, ::playfx, var_5, var_4 );
        wait(randomfloatrange( 0.1, 0.25 ));
    }
}

_ID47225( var_0 )
{
    var_0 = _ID42407::_ID16303( var_0 );
    self._ID30386 = var_0;
    self setflaggedanimknob( "stumble_run", var_0, 1, 0.2, 1, 1 );
    wait 1.5;
    var_1 = _ID42407::_ID16303( "run_root" );
    var_2 = 0;

    for (;;)
    {
        if ( self getanimtime( var_1 ) < var_2 )
            break;

        var_2 = self getanimtime( var_1 );
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

        if ( !isalive( var_4 ) )
            return;

        if ( isdefined( var_0[var_4._ID39468] ) )
            continue;

        var_0[var_4._ID39468] = 1;
        var_5 = var_1[var_2];
        var_2++;

        if ( var_2 >= var_1.size )
            var_2 = 0;

        var_4 thread _ID45129( var_5 );
    }
}

_ID45129( var_0 )
{
    var_1 = getentarray( "friendly_changedirection_org", "targetname" );
    var_1 = _ID42407::_ID3310( var_1 );
    thread _ID42372::_ID16964( var_1[self._ID3189], "struct" );
    _ID42259::_ID3020( self, var_0 );
}

_ID45668()
{
    wait 0.3;
    _ID43994( 0.25, 4, self._ID740, 5000 );
}

_ID49358( var_0, var_1 )
{
    self endon( "death" );
    var_2 = _ID42407::_ID16303( "run_root" );
    var_3 = self getanimtime( var_2 );

    for (;;)
    {
        if ( self getanimtime( var_2 ) < var_3 )
            break;

        var_3 = self getanimtime( var_2 );
        wait 0.05;
    }

    if ( isdefined( var_1 ) && !var_1._ID50373 )
    {
        var_1._ID50373 = 1;
        _ID43994( 0.25, 4, self._ID740, 5000 );
    }

    self._ID30386 = _ID42407::_ID16303( var_0 );
    var_3 = self getanimtime( var_2 );

    for (;;)
    {
        if ( self getanimtime( var_2 ) < var_3 )
            break;

        var_3 = self getanimtime( var_2 );
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
    var_3 = getent( var_2._ID1191, "targetname" );

    if ( !isdefined( var_3 ) )
        return;

    var_4 = var_3 getlightintensity();

    for (;;)
    {
        var_5 = randomint( 3 ) + 2;

        for ( var_6 = 0; var_6 < var_5; var_6++ )
        {
            var_3 setlightintensity( 0 );
            var_2 setmodel( var_0 );
            wait(randomfloatrange( 0.05, 0.1 ));
            var_3 setlightintensity( var_4 );
            var_2 setmodel( var_1 );
            wait 0.05;
        }

        var_3 setlightintensity( var_4 );
        var_2 setmodel( var_1 );
        wait(randomfloatrange( 1.2, 2 ));
    }
}

_ID47589()
{
    _ID42411::_ID16988();
    var_0 = 50;
    self setyawspeed( 140, 80, 80 );
    self sethoverparams( 5, 5, var_0 );
    thread maps\gulag_aud::_ID52379();
}

_ID45601()
{
    for (;;)
    {
        var_0 = level._ID794 getplayerangles();
        var_1 = anglestoforward( var_0 );
        var_2 = level._ID794._ID740 + var_1 * 180;
        var_2 = _ID42407::_ID32530( var_2, level._ID794._ID740[2] + 64 );
        var_3 = _ID42237::_ID28976( 0.3 );
        physicsjolt( var_2, 350, 250, var_3 );
        wait 0.5;
    }
}

_ID47922( var_0 )
{
    wait 10.3;

    if ( distance( level._ID794._ID740, var_0 ) > 700 )
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
    var_0 = getent( "stumble_baddie_spawner", "targetname" );

    if ( _ID42407::_ID41804( var_0._ID740, 0.7 ) )
        return;

    if ( distance( var_0._ID740, level._ID794._ID740 ) < 500 )
        return;

    var_1 = var_0 stalingradspawn();
    var_1._ID3189 = "stumble_baddie";
    var_1 thread maps\gulag_aud::_ID45098();
    var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    var_1 _ID42407::_ID17509();
    var_1._ID49 = 1;
    var_1 endon( "death" );
    var_1._ID486 = 1;
    var_1._ID511 = 1;
    var_1._ID287 = 1;
    setsaveddvar( "ragdoll_explode_force", 0 );
    var_2 thread _ID42259::_ID3044( var_1, "idle" );
    wait 8;
    var_2 _ID42259::_ID3111( var_1, "stumble" );
    var_1 kill();
}

_ID48991()
{
    self waittill( "trigger" );
    _ID42237::_ID27077( "scn_gulag_exp_trashcan_debris", self._ID25988 );
}

_ID46444()
{
    var_0 = getentarray( "file_cabinet_anim", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID48400 );
    var_0 = _ID42407::_ID3310( var_0 );
    _ID42237::_ID14413( "enter_final_room" );
    wait 3;
    var_0["1"] _ID53220( 0.2 );
    wait 0.1;
    var_0["1"] _ID53220( 0.1 );
    var_0["2"] _ID53220( 0.1 );
    wait 0.1;
    var_0["1"] _ID53220( 0.3 );
    var_0["2"] _ID53220( 0.3 );
    var_0["3"] _ID53220( 0.3 );
}

_ID48400()
{
    self._ID44381 = _ID44651();
    self._ID48689 = 0;
}

_ID53220( var_0, var_1, var_2 )
{
    var_3 = self._ID44381[self._ID48689];

    if ( !isdefined( var_3 ) )
        return;

    self._ID48689++;

    if ( isdefined( var_1 ) )
    {
        self moveto( var_3["origin"], var_0, var_1, var_2 );
        self rotateto( var_3["angles"], var_0, var_1, var_2 );
    }
    else
    {
        self moveto( var_3["origin"], var_0 );
        self rotateto( var_3["angles"], var_0 );
    }
}

_ID50033()
{
    var_0 = getentarray( "pillar_anim", "targetname" );
    var_0 = _ID42407::_ID3310( var_0 );
    var_1 = getent( var_0["1"]._ID1191, "targetname" );
    var_2 = getent( var_0["2"]._ID1191, "targetname" );
    var_0["1"] linkto( var_1 );
    var_0["2"] linkto( var_0["1"] );
    var_2 linkto( var_1 );
    _ID42237::_ID14413( "enter_final_room" );
    wait 1;
    var_3 = getent( var_1._ID1191, "targetname" );
    var_1 moveto( var_3._ID740, 5, 1, 2 );
    var_1 rotateto( var_3._ID65, 5, 1, 2 );
    wait 5;
    var_4 = getent( "pillar_rotater", "targetname" );
    var_1 linkto( var_4 );
    var_5 = getent( var_4._ID1191, "targetname" );
    var_4 rotateto( var_5._ID65, 2, 2, 0 );
    var_4 moveto( var_5._ID740, 2, 2, 0 );
    wait 2;
    var_4 = getent( var_4._ID1191, "targetname" );
    var_1 linkto( var_4 );
    var_6 = 0.75;
    var_5 = getent( var_4._ID1191, "targetname" );
    var_4 rotateto( var_5._ID65, var_6 );
    var_4 moveto( var_5._ID740, var_6 );
    wait(var_6);
    var_7 = getentarray( var_5._ID1191, "targetname" );
    var_7 = _ID42407::_ID3309( var_7 );
    var_0["2"] linkto( var_2 );
    var_2 linkto( var_7["script_origin_pillar2"] );
    var_0["1"] linkto( var_1 );
    var_1 linkto( var_7["script_origin_pillar1"] );
    var_6 = 0.4;
    var_1 unlink();
    var_1 rotateto( var_7["script_origin_pillar1"]._ID65, var_6 );
    var_1 moveto( var_7["script_origin_pillar1"]._ID740, var_6 );
    var_6 = 1.5;
    var_2 unlink();
    var_2 rotateto( var_7["script_origin_pillar2"]._ID65, var_6, 0, var_6 );
    var_2 moveto( var_7["script_origin_pillar2"]._ID740, var_6, 0, var_6 );
}

_ID47891()
{
    var_0 = self;

    for (;;)
    {
        if ( !isdefined( var_0._ID1191 ) )
            break;

        var_1 = getent( var_0._ID1191, "targetname" );
        var_0 delete();
        var_0 = var_1;
    }

    var_0 delete();
}

_ID43668()
{
    ambientstop( 0.5 );
}

_ID46033( var_0 )
{
    if ( getdvar( "no_escape" ) == "1" )
        return;

    if ( _ID42237::_ID14385( "player_died_to_cave_in" ) )
        return;

    level._ID794 _meth_80b5( "damage_light" );
    _ID42237::_ID14402( "player_died_to_cave_in" );
    level._ID794 enabledeathshield( 0 );
    var_1 = [];
    var_1[var_1.size] = "hallway_collapsing";
    var_1[var_1.size] = "hallway_collapsing_big";
    var_1[var_1.size] = "hallway_collapsing_huge";
    var_1[var_1.size] = "hallway_collapsing_huge";
    var_2 = var_0;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_3 = [];
    var_3[0] = 12;
    var_3[1] = 15;
    var_3[2] = 10;
    var_3[3] = 20;
    thread _ID53266();
    var_4 = level._ID794._ID740;

    for (;;)
    {
        for ( var_5 = 0; var_5 < var_3[var_2]; var_5++ )
        {
            var_6 = level._ID794 getplayerangles();
            var_7 = anglestoforward( var_6 );
            var_8 = level._ID794._ID740 - var_4;
            var_9 = level._ID794._ID740 + var_7 * 100 + var_8 * 10;
            var_9 = _ID42407::_ID32530( var_9, level._ID794._ID740[2] );
            var_10 = bullettrace( var_9, var_9 + ( 0, 0, 3000 ), 0, undefined );
            var_11 = _ID42237::_ID16299( var_1[var_2] );
            playfx( var_11, var_10["position"] );
            var_4 = level._ID794._ID740;

            if ( randomint( 100 ) > 40 )
            {
                var_12 = _ID42237::_ID28976( 20 ) + level._ID794._ID740;

                if ( var_2 == 1 )
                    level._ID794 dodamage( 5 / level._ID794._ID255, var_12 );

                if ( var_2 > 1 )
                    level._ID794 dodamage( 15 / level._ID794._ID255, var_12 );

                level._ID794 playrumblelooponentity( "damage_heavy" );
            }

            wait 0.05;
        }

        if ( var_2 == 2 )
            level._ID794 kill();

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
        playfx( var_0, level._ID794._ID740 + ( 0, 0, 60 ) );
        var_1 -= 0.75;

        if ( var_1 <= 0.2 )
            var_1 = 0.2;
    }
}

_ID53266()
{
    wait 4.5;
    var_0 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_0 fadeovertime( 2.5 );
    var_0._ID55 = 1;
    var_0._ID408 = 0;
    level waittill( "stop_cavein" );
    wait 0.05;
    var_0 destroy();
}

_ID54305()
{
    self waittill( "trigger" );
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    radiusdamage( var_0._ID740 + ( 0, 0, 16 ), 32, 500, 500, level._ID794 );

    if ( isdefined( var_0._ID31259 ) )
        _ID42234::_ID13611( var_0._ID31259 );

    wait 0.2;
    radiusdamage( var_0._ID740 - ( 0, 0, 16 ), 32, 500, 500, level._ID794 );
}

_ID52825()
{
    level._ID794 endon( "death" );
    _ID42237::_ID14413( "chase_brush_kill_volume_activates" );
    _ID42407::_ID10226( 4, _ID42237::_ID14402, "chase_brush_kill_volume_2_activates" );
    var_0 = getent( "player_cavein_kill_volume", "targetname" );
    var_1 = getent( "player_cavein_kill_volume_later", "targetname" );

    for (;;)
    {
        if ( level._ID794 istouching( var_0 ) || _ID42237::_ID14385( "chase_brush_kill_volume_2_activates" ) && level._ID794 istouching( var_1 ) )
        {
            thread _ID46033( 2 );
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
        var_8 = getaiarray( "allies" );
        var_9 = _ID42237::_ID16182( self._ID740, var_8 );
        var_0 = distance( self._ID740, var_9._ID740 );
        level._ID47533[var_1]["dist"] = var_0;
        var_0 -= var_4;
        var_10 = var_0 / var_7;

        if ( var_10 < 0 )
            var_10 = 0;
        else if ( var_10 > 1 )
            var_10 = 1;

        var_11 = var_2 + var_6 * var_10;
        level._ID47533[var_1]["speed"] = var_11;
        self vehicle_setspeed( var_11, 5, 5 );
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

        var_0 vehicle_setspeedimmediate( var_6, var_6, var_6 );
        wait 0.05;
    }

    wait(var_1);
}

_ID53931()
{
    if ( getdvar( "no_escape" ) == "1" )
        return;

    level notify( "collapse_fx_stop" );
    var_0 = 190;
    var_0 = 270;
    var_0 /= 19.76;
    var_0 = 6;
    var_1 = getent( "chase_brush_vehicle", "targetname" );
    var_2 = var_1 vehicle_dospawn();
    level._ID54339 = var_2;
    var_2 thread _ID51754();
    var_2 thread _ID42237::_ID27000( "scn_tunnel_collapsing_loop", undefined, 0.5, 3 );
    var_3 = getvehiclenode( var_2._ID1191, "targetname" );
    var_2 attachpath( var_3 );
    var_2 startpath();
    var_4 = 4;
    thread _ID48575( var_2, var_4, var_0 );
    thread _ID52825();
    level._ID47533 = [];
    var_2 thread _ID50782( 400, 1 );
    wait 3.5;
    var_5 = getent( "chase_brush", "targetname" );
    var_5 show();
    var_1 = getent( "chase_brush_vehicle", "targetname" );
    var_6 = var_1 vehicle_dospawn();
    var_6 thread _ID52054();
    level._ID49333 = var_6;
    var_6 attachpath( var_3 );
    var_6 startpath();
    var_5 linkto( var_6 );
    var_6 thread _ID50782( 900, 0 );
    level waittill( "stop_tunnel_collapsing_sfx" );
    var_2 thread _ID42237::_ID36516( "scn_tunnel_collapsing_loop" );
    level waittill( "stop_chase_fx" );
    var_6 delete();
}

_ID51754()
{
    level endon( "stop_chase_fx" );
    var_0 = _ID42237::_ID35164();
    var_1 = _ID42237::_ID16299( "hallway_collapsing_chase" );
    var_0 linkto( self, "tag_origin", ( 0, 0, 0 ), ( 0, 0, -90 ) );
    var_2 = 5;

    for (;;)
    {
        var_3 = self._ID65;
        var_4 = anglestoforward( var_3 );
        var_2--;

        if ( var_2 <= 0 )
        {
            var_5 = _ID42237::_ID28976( 0.125 );
            physicsjolt( level._ID794._ID740 + var_4 * 250, 250, 250, var_5 );
            var_2 = randomint( 10 );
        }

        playfxontag( var_1, var_0, "tag_origin" );
        wait 0.1;
    }
}

_ID52054()
{
    level endon( "stop_chase_fx" );
    _ID5262();
    var_0 = 400;
    var_1 = 700;
    var_2 = abs( var_0 - var_1 );

    for (;;)
    {
        var_3 = level._ID794._ID740;
        var_3 = _ID42407::_ID32530( var_3, 0 );
        var_4 = self._ID740;
        var_4 = _ID42407::_ID32530( var_4, 0 );
        level._ID46587 = distance( var_3, var_4 );
        var_5 = level._ID46587;
        var_6 = 1 - ( var_5 - var_0 ) / var_2;
        var_6 = clamp( var_6, 0, 1 );
        level._ID5261._ID55 = var_6;
        level._ID5261 fadeovertime( 0.2 );

        if ( var_5 < 260 )
            thread _ID46033( 2 );

        wait 0.1;
    }
}

_ID5262( var_0 )
{
    if ( isdefined( level._ID5261 ) )
    {
        level._ID5261 destroy();
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
    self castshadows();
    _ID42407::_ID916();

    if ( getdvar( "no_escape" ) == "1" )
        return;

    self moveto( var_0, 1, 0.2, 0 );
    earthquake( 1.0, 4, var_0, 1000 );
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

    foreach ( var_2 in var_0 )
    {
        var_2._ID14540 = _ID42237::_ID14540( var_2._ID40005["origin"] );
        var_2._ID53573 = 0;
    }

    for (;;)
    {
        var_4 = _ID42237::_ID14385( "exit_collapses" );
        var_0 = _ID42237::_ID3320( var_0 );
        var_5 = _ID42237::_ID14540( level._ID794._ID740 );
        var_6 = level._ID794._ID65;
        var_7 = anglestoforward( var_6 );
        var_5 += var_7 * -350;
        var_8 = [];

        foreach ( var_2 in var_0 )
        {
            if ( !var_4 && var_2._ID40005["fxid"] == "ceiling_collapse_dirt1" )
                continue;

            if ( var_2._ID53573 > gettime() - 1000 )
                continue;

            var_10 = distance( var_2._ID14540, var_5 );

            if ( var_10 < level._ID52172 )
                continue;

            if ( var_10 < level._ID54564 )
                continue;

            var_11 = vectornormalize( var_2._ID14540 - var_5 );
            var_12 = vectordot( var_7, var_11 );

            if ( var_12 < level._ID45271 )
                continue;

            var_8[var_8.size] = var_2;

            if ( var_8.size >= level._ID54653 )
                break;
        }

        foreach ( var_2 in var_8 )
        {
            var_2 _ID42237::_ID1792();
            var_2._ID53573 = gettime();
            wait 0.1;
        }

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

        foreach ( var_2 in var_0 )
        {
            var_2 _ID42237::_ID1792();
            wait(level._ID48582);
        }

        wait 0.1;
    }
}

_ID49989()
{
    level endon( "collapse_fx_stop" );
    var_0 = _ID42237::_ID16638( "ceiling_collapse_org", "targetname" );
    var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2 = vectortoangles( var_1._ID740 - var_0._ID740 );
    var_3 = distance( var_0._ID740, var_1._ID740 );
    var_4 = anglestoforward( var_2 );
    var_5 = [];
    var_5[var_5.size] = "hallway_collapsing";
    var_5[var_5.size] = "hallway_collapsing_big";
    var_5[var_5.size] = "hallway_collapsing_huge";
    _ID42407::_ID10226( 5.5, _ID42237::_ID27077, "scn_gulag_heli_tunnel_collapse", var_0._ID740 );
    thread _ID49733( var_0._ID740, var_4, var_3, var_5[0], 6 );
    wait 3.5;
    thread _ID49733( var_0._ID740, var_4, var_3, var_5[1], 3 );
    wait 2.5;
    thread _ID49733( var_0._ID740, var_4, 0, var_5[2], 8 );
}

_ID49733( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "collapse_fx_stop" );
    var_5 = spawnstruct();
    var_5 endon( "stop" );
    var_5 _ID42407::_ID10226( var_4, _ID42407::_ID31877, "stop" );
    var_6 = _ID42237::_ID16299( var_3 );
    var_7 = 0.5;

    for (;;)
    {
        var_8 = var_0 + var_1 * randomfloat( var_2 );
        playfx( var_6, var_8 );
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
        if ( !isdefined( var_0._ID1191 ) )
            break;

        var_0 = getent( var_0._ID1191, "targetname" );
        var_2 = [];
        var_2["angles"] = var_0._ID65;
        var_2["origin"] = var_0._ID740;
        var_2["model"] = var_0;
        var_1[var_1.size] = var_2;
    }

    foreach ( var_0 in var_1 )
        var_0["model"] delete();

    return var_1;
}

_ID54382()
{
    var_0 = getent( self._ID1191, "targetname" );
    var_0 thread _ID51986();
    _ID42237::_ID14413( "exit_collapses" );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !isalive( var_1 ) )
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
    thread _ID46719();
}

_ID51986()
{
    var_0 = getentarray( self._ID1191, "targetname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
        var_1[var_3._ID170] = var_3;

    var_5 = var_1["script_model"];
    var_1["script_brushmodel"] linkto( var_5 );
    var_6 = var_5 _ID44651();
    self waittill( "topple" );
    var_5 _ID42407::_ID10226( 0.25, _ID42407::_ID27079, "door_cargo_container_burst_open" );
    var_1["script_brushmodel"] thread _ID46390();

    foreach ( var_8 in var_6 )
    {
        var_5 moveto( var_8["origin"], 0.1 );
        var_5 rotateto( var_8["angles"], 0.1 );
        wait 0.1;
    }

    var_1["script_brushmodel"] notify( "stop_killing" );
}

_ID46390()
{
    level._ID49332 = self;
    self endon( "stop_killing" );

    for (;;)
    {
        if ( level._ID794 istouching( self ) )
        {
            level._ID794 kill();
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
    setsaveddvar( "player_sprintSpeedScale", level._ID54582 );
}

_ID48571()
{
    var_0 = spawnstruct();
    var_1 = getent( self._ID1191, "targetname" );

    if ( !isdefined( var_1 ) )
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
    var_4["slow_flicker"] = ::_ID45195;
    var_0._ID20129 = var_1 getlightintensity();

    if ( !isdefined( self._ID31388 ) )
        thread _ID44776( var_0 );
    else
        thread [[ var_4[self._ID31388] ]]( var_0 );
}

_ID44776( var_0 )
{
    for (;;)
    {
        var_1 = randomint( 5 ) + 2;

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            var_0._ID594 setlightintensity( 0 );
            self setmodel( var_0._ID47202[self._ID669] );
            wait 0.05;
            var_0._ID594 setlightintensity( var_0._ID20129 );
            self setmodel( var_0._ID43904[self._ID669] );
            wait 0.05;
        }

        var_0._ID594 setlightintensity( 0 );
        self setmodel( var_0._ID47202[self._ID669] );
        wait(randomfloatrange( 0.2, 0.3 ));
        var_1 = randomint( 5 ) + 2;

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            var_0._ID594 setlightintensity( 0 );
            self setmodel( var_0._ID47202[self._ID669] );
            wait 0.05;
            var_0._ID594 setlightintensity( var_0._ID20129 );
            self setmodel( var_0._ID43904[self._ID669] );
            wait 0.05;
        }

        var_0._ID594 setlightintensity( var_0._ID20129 );
        self setmodel( var_0._ID43904[self._ID669] );
        wait(randomfloatrange( 0.2, 0.3 ));
    }
}

_ID45195( var_0 )
{
    for (;;)
    {
        var_1 = randomint( 5 ) + 2;

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            var_0._ID594 setlightintensity( 0 );
            self setmodel( var_0._ID47202[self._ID669] );
            wait 0.1;
            var_0._ID594 setlightintensity( var_0._ID20129 );
            self setmodel( var_0._ID43904[self._ID669] );
            wait 0.1;
        }

        var_0._ID594 setlightintensity( var_0._ID20129 );
        self setmodel( var_0._ID43904[self._ID669] );
        wait(randomfloatrange( 0.2, 0.3 ));
    }
}

_ID46074()
{
    var_0 = _ID42407::_ID15611( self._ID740, level._ID43155, 32 );

    if ( !isdefined( var_0 ) )
        return;

    var_1 = level._ID43155[var_0];
    level._ID43155[var_0] = undefined;
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2._ID740 = self._ID740;
    var_2._ID65 = self._ID65;
    var_1 linkto( var_2 );
    wait 1;
    var_3 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_4 = 5;
    var_2 moveto( var_3._ID740, var_4, var_4 * 0.1, var_4 * 0.1 );
    var_2 rotateto( var_3._ID65, var_4, var_4 * 0.1, var_4 * 0.1 );
    var_5 = var_4 * 20;
    var_6 = var_2._ID740 + ( 0, 0, 32 );

    for ( var_7 = 0; var_7 < var_5; var_7++ )
    {
        physicsjolt( var_6, 350, 250, _ID42237::_ID28976( 0.05 ) );
        wait 0.05;
    }
}

_ID52256()
{
    var_0 = getent( self._ID1191, "targetname" );
    var_0 linkto( self );
}

_ID53575()
{
    for (;;)
    {
        wait(randomfloatrange( 3, 17 ));
        var_0 = randomintrange( 4, 8 );

        for ( var_1 = 0; var_1 < var_0; var_1++ )
        {
            var_2 = _ID42237::_ID28976( 0.18 );

            if ( var_2[2] < 0 )
                var_2 = _ID42407::_ID32530( var_2, var_2[2] * -1 );

            physicsjolt( self._ID740, 120, 80, var_2 );
            wait 0.05;
        }
    }
}

_ID53540()
{
    wait(randomfloatrange( 7, 20 ));
    radiusdamage( self._ID740, 32, 500, 500 );
}

_ID50785()
{
    var_0 = _ID42237::_ID35164();
    var_1 = self._ID65;
    var_2 = 25;
    self setlightfovrange( 50, 25 );

    for (;;)
    {
        var_0._ID65 = var_1;
        var_3 = randomfloatrange( var_2 * -1, var_2 );
        var_0 addpitch( var_3 );
        var_4 = randomfloatrange( var_2 * -1, var_2 );
        var_0 addyaw( var_4 );
        self rotateto( var_0._ID65, 1, 0.3, 0.3 );
        var_5 = anglestoforward( var_0._ID65 );
        wait 1;
    }
}

_ID43581()
{
    self hide();
    self setcontents( 0 );
    self._ID486 = 50000;
    var_0 = _ID42237::_ID16638( "weapon_drop_org", "targetname" );
    var_1 = _ID42237::_ID35164();
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65;
    self linkto( var_1, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    self._ID1194 = "neutral";
    self._ID511 = 1;
    self._ID507 = 1;
    var_2 = _ID42407::_ID16303( "gundrop_death" );
    var_1 _ID42259::_ID3023( self, "gundrop_death" );
    var_3 = level._ID794 getcurrentweapon();
    _ID42407::_ID14803( var_3, "primary" );
    wait 0.05;
    self unlink();
    level waittill( "dropit" );
    wait 0.3;
    self setanim( var_2, 1, 0, 0.55 );
    wait 0.05;
    self dropweapon( var_3, "right", 50000 );
    wait 0.3;
    var_1 delete();
    self delete();
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
    level._ID794 playerlinktodelta( var_0, "tag_player", 1, 0, 0, 0, 0, 1 );
    wait 2.5;
    level._ID794 lerpviewangleclamp( 1.0, 0.5, 0.5, 10, 10, 10, 4 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    wait 2.5;
    level._ID794 lerpviewangleclamp( 1.5, 0.5, 0.5, 17, 10, 12, 4 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    wait 4.15;
    level._ID794 lerpviewangleclamp( 1.5, 0.5, 0.5, 17, 17, 12, 2 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    wait 8.5;
    level._ID794 lerpviewangleclamp( 1.0, 0.5, 0.5, 0, 0, 0, 0 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
}

_ID44775()
{
    level._ID14776 = 0;
}

_ID48602()
{
    var_0 = _ID42313::_ID9125( "white", 0, level._ID794 );
    var_0._ID55 = 1;
    var_0 fadeovertime( 1 );
    var_0._ID55 = 0;
    wait 1;
    var_0 destroy();
}

_ID45716()
{
    var_0 = _ID42313::_ID9125( "black", 0.0, level._ID794 );
    var_1 = _ID42313::_ID9125( "white", 1.0, level._ID794 );
    wait 0.3;
    var_0 fadeovertime( 0.4 );
    var_0._ID55 = 0.9;
    var_1 fadeovertime( 0.9 );
    var_1._ID55 = 0;
    wait 0.4;
    var_0 fadeovertime( 0.5 );
    var_0._ID55 = 0;
    wait 0.5;
    var_1 destroy();
    var_0 destroy();
}

_ID45873( var_0 )
{
    var_1 = _ID42237::_ID35164();
    var_1 linkto( var_0, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _ID44445();
    var_2 = gettime();
    level._ID48599 = var_2;
    level._ID28789 = level._ID48599;
    wait 0.5;
    _ID42407::_ID10226( 0.5, ::_ID44775 );
    level._ID14775 = 2;
    _ID42407::_ID40847( var_2, 2.8 );
    level notify( "dropit" );
    level._ID794 _ID42237::_ID10192( 0.05, ::disableweapons );
    setsaveddvar( "ammoCounterHide", 1 );
    var_3 = 0.25;
    level._ID28544 unlink();
    level._ID794 unlink();
    level._ID28544 rotateto( level._ID52027._ID65, 0.5, 0.2, 0.2 );
    level._ID28544 notify( "stop_following_player" );
    _ID42237::_ID24938( 0.1, ::earthquake, 1.0, 0.6, level._ID794._ID740, 128 );
    _ID42407::_ID10226( 0.0, ::_ID45716 );
    level._ID794 nightvisiongogglesforceoff();
    level._ID794 playerlinktoblend( var_0, "tag_player", var_3, var_3 * 0.4, var_3 * 0.4 );
    var_0 show();
    var_4 = getent( "pricecell_stagelight", "targetname" );
    var_4 thread _ID42407::_ID25088( "staging_on", 1 );
    _ID42407::_ID10226( var_3, ::_ID48902, var_0 );
    level notify( "breach_concludes" );
    level._ID794 dodamage( 50 / level._ID794._ID255, level._ID28543._ID740 );
    _ID42407::_ID40847( var_2, 6.7 );
    _ID42407::_ID40847( var_2, 7.3 );
    _ID42407::_ID40847( var_2, 24.6 );
    thread _ID42407::_ID28864( "gulag_hqr_getout" );
}

_ID44445()
{
    var_0 = gettime();
    wait 4.2;
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
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
    var_1 setmodel( "gulag_price_ak47" );

    foreach ( var_5, var_4 in var_2 )
    {

    }

    var_1 linkto( level._ID28543, "tag_weapon_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    wait 1.4;
    _ID42407::_ID40847( var_0, 11.3 );
    var_1 linkto( level._ID28543, "tag_weapon_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID28543 waittill( "change_to_regular_weapon" );
    var_1 delete();
}

_ID49706()
{
    var_0 = getentarray( "cafe_distance_tracker", "targetname" );
    var_1 = var_0;
    var_2 = [];

    foreach ( var_4 in var_0 )
    {
        foreach ( var_6 in var_1 )
        {
            if ( var_4 == var_6 )
                continue;

            var_7 = var_4._ID31388;
            var_8 = var_6._ID31388;
            var_9 = distance( var_4._ID740, var_6._ID740 );
            var_2[var_7][var_8] = var_9;
        }
    }

    level._ID48547 = var_2;

    foreach ( var_13 in var_0 )
        var_13 delete();
}

_ID53470()
{
    self endon( "death" );
    _ID42237::_ID14413( "enemy_cavein" );
    wait 0.5;

    for (;;)
    {
        radiusdamage( self._ID740, 35, 10, 10 );
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
    if ( !isai( self ) )
        return;

    self._ID525 = 16;
    thread _ID49510();
    _ID42407::_ID13024( "run_into_room" );
    self._ID513 = 1;
    self._ID3195 = 1;
    self._ID24474 = 1;
    self._ID24424 = 1;
    self._ID34146 = 1.35;
    self pushplayer( 1 );
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
        radiusdamage( var_3._ID740, 64, 350, 250 );
        var_4 = var_1[var_2];
        var_2++;

        if ( !isdefined( var_4 ) )
            var_4 = randomfloatrange( 0.3, 1.5 );

        wait(var_4);

        if ( !isdefined( var_3._ID1191 ) )
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
    thread _ID51907();
    var_0 _ID54167::_ID48166();
}

_ID51907()
{
    wait 1.0;
    level._ID794 lerpviewangleclamp( 2.0, 0.25, 0.25, 2, 8, 20, 2 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    wait 10.0;
    level._ID794 lerpviewangleclamp( 1.0, 0.25, 0.25, 0, 0, 0, 0 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
}

_ID49760()
{
    self endon( "death" );
    wait(randomfloat( 3 ));
    self._ID287 = 1;
    self kill();
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
    thread _ID51467();
    thread _ID51999();
    _ID42407::_ID14689( "gulag_cafe_falls_apart", 5 );
}

_ID51999()
{
    level notify( "stop_minor_earthquakes" );
    var_0 = gettime();
    _ID42407::_ID40847( var_0, 2.9 );
    _ID43994( 0.3, 1.4, level._ID53563._ID740, 5000 );
    _ID42407::_ID40847( var_0, 4.2 );
    thread _ID44153();
    _ID42407::_ID40847( var_0, 6.45 );
    _ID43994( 0.45, 4, level._ID53563._ID740, 5000 );
    wait 1;
    _ID43994( 0.45, 3, level._ID794._ID740, 5000 );
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
    playrumbleonposition( var_1, level._ID794._ID740 + var_2 );
}

_ID43994( var_0, var_1, var_2, var_3 )
{
    thread _ID46781();
    earthquake( var_0, var_1, var_2, var_3 );
    level notify( "swing",  var_0  );
    var_4 = ( randomint( 360 ), randomint( 360 ), randomint( 360 ) );
    var_5 = anglestoforward( var_4 );
    var_3 = randomfloatrange( 500, 1000 );
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
    var_0 = getentarray( "light_destructible", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID53540 );
}

_ID47526()
{
    if ( _ID42237::_ID14385( "time_to_evac" ) )
        return;

    level endon( "time_to_evac" );

    for (;;)
    {
        _ID42237::_ID14413( "player_pushes_slab" );
        level._ID794 disableweapons();
        _ID42237::_ID14426( "player_pushes_slab" );
        level._ID794 enableweapons();
    }
}

_ID45290()
{
    if ( level._ID35897 == "evac" )
        return;

    var_0 = 240;
    self connectpaths();
    self._ID740 = self._ID740 + ( 0, 0, var_0 * -1 );
    var_1 = getentarray( self._ID1191, "targetname" );
    var_1[var_1.size] = self;

    foreach ( var_3 in var_1 )
    {
        var_3 hide();
        var_3 notsolid();
    }

    if ( getdvar( "no_escape" ) == "1" )
        return;

    _ID42237::_ID14413( "enter_final_room" );
    wait 4;
    _ID42234::_ID13611( "cafeteria_collapse" );
    var_5 = getent( "chase_brush", "targetname" );
    var_5 unlink();
    thread _ID43224();

    foreach ( var_3 in var_1 )
    {
        var_3 show();
        var_3 solid();
    }

    self moveto( self._ID740 + ( 0, 0, var_0 ), 4, 1, 3 );
    var_5 moveto( var_5._ID740 + ( 0, 0, -300 ), 4, 2 );
    level notify( "stop_tunnel_collapsing_sfx" );
    wait 4;
    level notify( "stop_chase_fx" );
    var_5 delete();
    self disconnectpaths();
}

_ID43224()
{
    level endon( "stop_chase_fx" );

    for (;;)
    {
        if ( level._ID794 istouching( self ) )
            radiusdamage( level._ID794._ID740, 35, 10, 5 );

        wait 0.05;
    }
}

_ID53427()
{
    var_0 = _ID42237::_ID16299( "gulag_cafe_spotlight" );
    var_1 = _ID42237::_ID35164();
    var_1 linkto( self._ID45080, "j_hanging_light_04", ( 0, 0, -32 ), ( 0, 0, 0 ) );
    playfxontag( var_0, var_1, "tag_origin" );
    _ID42237::_ID14413( "time_to_evac" );
    stopfxontag( var_0, var_1, "tag_origin" );
}

_ID51038()
{
    var_0 = _ID42407::_ID35028( "lamp" );
    var_0 thread _ID53736( self );
}

_ID45311()
{
    var_0 = _ID42407::_ID35028( "lamp_off" );
    var_0 thread _ID53736( self );
}

_ID53736( var_0 )
{
    var_0._ID45080 = self;
    self._ID3189 = "lamp";
    self._ID740 = var_0._ID740;
    self dontcastshadows();
    var_1 = 1;
    var_2 = [];
    var_2[0] = _ID42407::_ID16120( "swing" );
    var_2[1] = _ID42407::_ID16120( "swing_dup" );
    thread _ID53851();

    for (;;)
    {
        level waittill( "swing",  var_3  );
        var_4 = var_2[var_1];
        var_5 = !var_1;
        self setanimrestart( var_4, 1, 0.3, 1 );
        wait 2.5;
    }
}

_ID53851()
{
    var_0 = _ID42237::_ID35164();

    for (;;)
    {
        var_1 = randomfloatrange( -30, 30 );
        var_0 addyaw( var_1 );
        var_2 = randomfloatrange( 0.5, 1.5 );
        self rotateto( var_0._ID65, var_2, var_2 * 0.4, var_2 * 0.4 );
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
    level._ID794 playersetgroundreferenceent( var_1 );
    wait 5;
    wait 0.05;
    var_1 linktoblendtotag( var_0, "tag_player", 0 );
}

_ID47048( var_0 )
{
    var_1 = getent( "price_spawner", "targetname" );
    var_1._ID740 = var_0["price"]._ID740;
    var_1._ID65 = var_0["price"]._ID65;
    var_1 _ID42407::_ID35014();
    var_1 = getent( "endlog_soap_spawner", "targetname" );
    var_1._ID740 = var_0["soap"]._ID740;
    var_1._ID65 = var_0["soap"]._ID65;
    var_1 _ID42407::_ID35014();
    var_1 = getentarray( "endlog_redshirt_spawner", "targetname" )[0];
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
        level._ID794 dodamage( 15 / level._ID794._ID255, level._ID794._ID740 + var_0 );
        level._ID794 playsound( "scn_gulag_player_gets_hit_by_rock" );
    }
}

_ID45617()
{
    var_0 = 2.5;
    var_1 = var_0 / 20;

    for ( var_2 = 0; var_2 <= 1; var_2 += var_1 )
    {
        level._ID794 setmovespeedscale( var_2 );
        wait 0.05;
    }
}

_ID54609()
{
    level._ID794 freezecontrols( 1 );
    level._ID794 setstance( "stand" );
    var_0 = _ID42407::_ID35028( "worldbody" );
    var_0._ID740 = level._ID794 getorigin();
    var_0._ID65 = level._ID794 getplayerangles();
    level._ID794 playerlinktodelta( var_0, "tag_player", 0, 0, 0, 0, 0, 0 );
    var_0 _ID42259::_ID3111( var_0, "player_downed" );
    level._ID794 unlink();
    level._ID794 freezecontrols( 0 );
    var_0 delete();
}

_ID47856( var_0 )
{
    var_0[var_0.size] = level._ID46553;
    var_1 = getent( "escape_scripted_node", "targetname" );
    thread _ID49558();
    var_1 _ID42259::_ID3099( var_0, "escape" );
    _ID42237::_ID14402( "do_cafeteria_anims" );
}

_ID49558()
{
    var_0 = getent( "animated_barrel", "targetname" );
    var_1 = getent( "animated_barrel_col", "targetname" );
    var_1 linkto( var_0 );
    var_0 _ID42407::_ID3428( "barrel" );
    var_0 thread _ID42259::_ID3111( var_0, "barrel_falling" );
    var_2 = getent( "animated_crate", "targetname" );
    var_3 = getent( "animated_crate_col", "targetname" );
    var_3 linkto( var_2 );
    var_2 _ID42407::_ID3428( "crate" );
    var_2 thread _ID42259::_ID3111( var_2, "crate_falling" );
}
#using_animtree("player");

_ID54604()
{
    self _meth_84c7( "h2_gulag_escapesequence_player_additive" );
    wait(getanimlength( %h2_gulag_escapesequence_player_additive ));
    self _meth_84c7( 0 );
}

_ID44732()
{
    var_0 = getent( "player_in_fake_sewer", "targetname" );
    var_0 waittill( "trigger" );
    _ID42237::_ID14388( "enable_interior_fx" );
    _ID42237::_ID14402( "enable_endlog_fx" );
}
