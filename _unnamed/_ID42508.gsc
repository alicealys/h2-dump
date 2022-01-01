// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID28414()
{
    precacheitem( "turret_attackheli" );
    precacheitem( "missile_attackheli" );
    _ID3619();
    thread _ID521();
}

_ID3619()
{
    if ( getdvarint( "sm_enable" ) && getdvar( "r_zfeather" ) != "0" )
        level._ID1426["_attack_heli_spotlight"] = loadfx( "fx/misc/hunted_spotlight_model" );
    else
        level._ID1426["_attack_heli_spotlight"] = loadfx( "fx/misc/spotlight_large" );
}

_ID521()
{
    if ( isdefined( level._ID3642 ) )
        return;

    while ( !isdefined( level._ID15361 ) )
        wait 0.05;

    if ( !isdefined( level._ID8760 ) )
        level._ID8760 = [];

    if ( !isdefined( level._ID8760["25"] ) )
        level._ID8760["25"] = cos( 25 );

    if ( !isdefined( level._ID8760["35"] ) )
        level._ID8760["35"] = cos( 35 );

    if ( !isdefined( level._ID3650 ) )
        level._ID3650 = 3500;

    if ( !isdefined( level._ID3646 ) )
        level._ID3646 = 0;

    if ( !isdefined( level._ID3644 ) )
        level._ID3644 = cos( 30 );

    level._ID3642 = 1;
    level._ID3647 = 3;
    level._ID3651 = 6;
    level._ID3648 = 3;

    switch ( level._ID15361 )
    {
        case 0:
            level._ID3649 = 9;
            level._ID3652 = 1;
            break;
        case 1:
            level._ID3649 = 7;
            level._ID3652 = 2;
            break;
        case 2:
            level._ID3649 = 5;
            level._ID3652 = 3;
            break;
        case 3:
            level._ID3649 = 3;
            level._ID3652 = 5;
            break;
    }
}

_ID35642( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "kill_heli";

    var_1 = _ID42411::_ID35196( var_0 );
    var_1 = _ID4977( var_1 );
    return var_1;
}

_ID4977( var_0, var_1 )
{
    var_0 endon( "death" );
    var_0 endon( "heli_players_dead" );

    if ( level._ID15361 == 0 || level._ID15361 == 1 )
    {
        var_2 = spawn( "script_origin", var_0._ID740 + ( 0, 0, -20 ) );
        var_2 linkto( var_0 );
        var_0 thread _ID42237::_ID10280( var_2 );
        var_3 = undefined;

        if ( level._ID15361 == 0 )
            var_3 = 2800;
        else
            var_3 = 2200;

        if ( !isdefined( var_0._ID24819 ) )
        {
            var_0._ID3671 = missile_createattractorent( var_2, var_3, 10000, level._ID794 );

            if ( _ID42407::_ID20495() )
                var_0._ID3672 = missile_createattractorent( var_2, var_3, 10000, level._ID27742 );
        }
    }

    var_0 enableaimassist();
    var_0._ID36137 = spawn( "script_origin", var_0._ID740 );
    var_0 thread _ID42237::_ID10280( var_0._ID36137 );

    if ( !isdefined( var_0._ID7544 ) )
        var_0._ID7544 = 0;

    var_0._ID2738 = 1;
    var_0._ID14344 = 0;
    var_0._ID24481 = 1;
    var_0._ID20939 = 0;
    var_0._ID18383 = undefined;
    var_0 thread _ID25091();
    var_0 thread _ID25095();
    thread _ID21276( var_0, var_1 );
    var_0._ID39368 = undefined;
    var_0 _ID18362();
    var_0 thread _ID10640();

    switch ( var_0._ID1282 )
    {
        case "hind":
        case "hind_blackice":
        case "ny_harbor_hind":
            var_0._ID39368 = "default";
            break;
        case "mi17":
        case "mi28":
        case "nh90":
            var_0._ID39368 = "default";
            break;
        case "apache":
            var_0._ID39368 = "default";
            break;
        case "littlebird":
        case "littlebird_spotlight":
            var_0 setyawspeed( 90, 30, 20 );
            var_0 setmaxpitchroll( 40, 40 );
            var_0 sethoverparams( 100, 20, 5 );
            var_0 _ID33336();
            break;
        default:
            break;
    }

    var_0._ID13197 = var_0._ID37319;

    if ( isdefined( var_0._ID31447 ) && var_0._ID31447 == 1 && !isdefined( var_0._ID35464 ) )
        var_0 thread _ID18413( undefined, 1 );

    var_0 thread _ID3618();
    return var_0;
}

_ID10640()
{
    foreach ( var_1 in level._ID805 )
        var_1 _ID42407::_ID1985( _ID42407::_ID41116, "death" );

    _ID42407::_ID11232();
    self notify( "heli_players_dead" );
}

_ID18362()
{
    var_0 = undefined;
    var_1 = undefined;

    switch ( self._ID1282 )
    {
        case "hind":
        case "hind_blackice":
        case "ny_harbor_hind":
            var_1 = 600;
            var_0 = -100;
            break;
        case "mi17":
        case "mi28":
        case "nh90":
            var_1 = 600;
            var_0 = -100;
            break;
        case "apache":
            var_1 = 600;
            var_0 = -100;
            break;
        case "littlebird":
        case "littlebird_spotlight":
            var_1 = 600;
            var_0 = -204;
            break;
        default:
            break;
    }

    self._ID37319 = spawn( "script_origin", self._ID740 );
    self._ID37319._ID65 = self._ID65;
    self._ID37319._ID740 = self._ID740;
    var_2 = spawnstruct();
    var_2._ID337 = self._ID37319;
    var_2._ID409 = var_1;
    var_2._ID1251 = var_0;
    var_2 _ID42407::_ID38694();
    self._ID37319 linkto( self );
    self._ID37319 thread _ID18361( self );
}

_ID16045()
{
    if ( isdefined( self._ID39358 ) )
        return self._ID39358;

    _ID33336();
    return self._ID39358;
}

_ID33336()
{
    self._ID39368 = "miniguns";
    self._ID23668 = 0;
    self._ID14343 = 0;

    if ( !isdefined( self._ID23512 ) )
        return;

    self._ID39358 = self._ID23512;
    _ID42237::_ID3350( self._ID39358, ::_ID22457, self );
}

_ID18361( var_0 )
{
    var_0 _ID42237::_ID41098( "death", "crash_done" );

    if ( isdefined( self ) )
        self delete();
}

_ID35681( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "kill_heli";

    var_2 = _ID42411::_ID35196( var_0 );
    var_2._ID36137 = spawn( "script_origin", var_2._ID740 );
    var_2 thread _ID42237::_ID10280( var_2._ID36137 );
    var_2._ID7544 = 1;
    var_2._ID2738 = 1;
    var_2._ID14344 = 0;
    var_2 thread _ID25091();
    var_2 thread _ID25095();
    thread _ID21276( var_2, var_1 );
    return var_2;
}

_ID21276( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
    {
        var_0 = _ID42411::_ID35196( "kill_heli" );
        var_0._ID2738 = 1;
        var_0._ID14344 = 0;
        var_0 thread _ID25091();
        var_0 thread _ID25095();
    }

    var_2 = undefined;

    if ( !isdefined( var_0._ID31027 ) )
        var_2 = 40;
    else
        var_2 = var_0._ID31027;

    if ( !isdefined( level._ID12881 ) )
        level._ID12881 = 0;

    if ( !isdefined( level._ID8383 ) )
        level._ID8383 = 0;

    if ( !isdefined( level._ID12880 ) )
        level._ID12880 = 0;

    level._ID3620 = undefined;
    var_3 = getentarray( "attack_heli_safe_volume", "script_noteworthy" );

    if ( var_3.size > 0 )
        level._ID3620 = var_3;

    if ( !level._ID12881 )
        thread _ID10737( var_0 );

    if ( !isdefined( var_0._ID18452 ) )
    {
        switch ( var_0._ID1282 )
        {
            case "mi17":
            case "mi28":
            case "nh90":
                target_set( var_0, ( 0, 0, -80 ) );
                break;
            case "hind":
            case "hind_blackice":
            case "ny_harbor_hind":
                target_set( var_0, ( 0, 0, -96 ) );
                break;
            case "apache":
                target_set( var_0, ( 0, 0, -96 ) );
                break;
            case "littlebird":
            case "littlebird_spotlight":
                target_set( var_0, ( 0, 0, -80 ) );
                break;
            default:
                break;
        }

        target_setjavelinonly( var_0, 1 );
    }

    var_0 thread _ID18356();
    var_0 thread _ID18358();
    var_0 endon( "death" );
    var_0 endon( "heli_players_dead" );
    var_0 endon( "returning_home" );
    var_0 setvehweapon( "turret_attackheli" );

    if ( !isdefined( var_0._ID7544 ) )
        var_0._ID7544 = 0;

    if ( !var_0._ID7544 )
    {
        var_0 neargoalnotifydist( 100 );

        if ( !isdefined( var_0._ID11585 ) )
            var_0 waittill( "reached_dynamic_path_end" );
    }
    else
    {
        var_0 neargoalnotifydist( 500 );
        var_0 waittill( "near_goal" );
    }

    var_0 thread _ID18403();

    if ( var_0._ID7544 )
        var_0 thread _ID18348( var_1, var_2 );
    else
        var_0 thread _ID18379( var_2 );
}

_ID18348( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "attack_heli_circle_node";

    var_2 = getentarray( var_0, "targetname" );

    if ( !isdefined( var_2 ) || var_2.size < 1 )
        var_2 = _ID42237::_ID16640( var_0, "targetname" );

    var_3 = self;
    var_3 endon( "stop_circling" );
    var_3 endon( "death" );
    var_3 endon( "returning_home" );
    var_3 endon( "heli_players_dead" );

    for (;;)
    {
        var_3 vehicle_setspeed( var_1, var_1 / 4, var_1 / 4 );
        var_3 neargoalnotifydist( 100 );
        var_4 = _ID42407::_ID15618( var_3._ID740 );
        var_5 = var_4._ID740;
        var_3 setlookatent( var_4 );
        var_6 = _ID42237::_ID16182( var_5, var_2 );
        var_7 = getentarray( var_6._ID1191, "targetname" );

        if ( !isdefined( var_7 ) || var_7.size < 1 )
            var_7 = _ID42237::_ID16640( var_6._ID1191, "targetname" );

        var_8 = var_7[randomint( var_7.size )];
        var_3 setvehgoalpos( var_8._ID740, 1 );
        var_3 waittill( "near_goal" );

        if ( !isdefined( var_4._ID20494 ) )
        {
            wait 1;
            wait(randomfloatrange( 0.8, 1.3 ));
        }
    }
}

_ID18379( var_0 )
{
    self endon( "death" );
    var_1 = getentarray( "kill_heli_spot", "targetname" );
    var_2 = self;
    var_3 = _ID42237::_ID16182( var_2._ID740, var_1 );
    var_4 = var_3;
    var_2 endon( "death" );
    var_2 endon( "returning_home" );
    var_2 endon( "heli_players_dead" );
    var_5 = undefined;

    for (;;)
    {
        wait 0.05;

        if ( isdefined( var_2.scripted_move_sfx ) )
            var_2 notify( "start_heli_scripted_move_sfx" );

        var_2 vehicle_setspeed( var_0, var_0 / 2, var_0 / 10 );
        var_2 neargoalnotifydist( 100 );
        var_6 = _ID42407::_ID15618( var_2._ID740 );
        var_7 = var_6._ID740;

        if ( var_3 == var_4 && var_2._ID20939 )
        {
            var_8 = _ID15810( var_2, var_3, var_1, var_6, var_7 );
            var_3 = _ID42237::_ID16182( var_7, var_8 );
        }

        var_2 setvehgoalpos( var_3._ID740, 1 );
        var_2._ID24481 = 1;
        var_6 = _ID42407::_ID15618( var_2._ID740 );

        if ( isdefined( self._ID13197 ) && isdefined( self._ID13197._ID170 ) && self._ID13197._ID170 == "script_origin" )
            var_5 = var_6;
        else if ( isdefined( self._ID13197 ) )
            var_5 = self._ID13197;
        else
            var_5 = self._ID37319;

        var_2 setlookatent( var_5 );
        var_2 waittill( "near_goal" );
        var_2._ID24481 = 0;

        if ( isdefined( var_2.scripted_move_sfx ) )
            var_2 notify( "stop_heli_scripted_move_sfx" );

        if ( !_ID42407::_ID20495() )
        {
            if ( level._ID15361 == 0 || level._ID15361 == 1 )
            {
                while ( _ID27501( var_2 ) )
                    wait 0.5;

                wait 3;
            }
        }

        var_6 = _ID42407::_ID15618( var_2._ID740 );
        var_7 = var_6._ID740;
        var_8 = _ID15810( var_2, var_3, var_1, var_6, var_7 );
        var_8[var_8.size] = var_3;
        var_4 = var_3;
        var_9 = _ID42237::_ID16182( var_7, var_1 );
        var_10 = _ID42237::_ID16182( var_7, var_8 );

        foreach ( var_12 in var_8 )
        {
            if ( var_6 sightconetrace( var_12._ID740, var_2 ) != 1 )
            {
                var_8 = _ID42237::_ID3321( var_8, var_12 );
                continue;
            }
        }

        var_14 = _ID42237::_ID16182( var_7, var_8 );

        if ( var_8.size < 2 )
            var_3 = var_10;
        else if ( var_14 != var_9 )
            var_3 = var_14;
        else
        {
            var_15 = [];
            var_15[0] = var_14;
            var_8 = _ID42237::_ID15566( var_7, var_8, var_15, 2 );
            var_16 = randomint( var_8.size );

            if ( randomint( 100 ) > 50 )
                var_3 = var_8[var_16];
            else
                var_3 = var_9;
        }

        var_17 = randomfloatrange( level._ID3648 - 0.5, level._ID3648 + 0.5 );
        _ID42237::_ID41123( "damage_by_player", var_17 );
    }
}

_ID27501( var_0 )
{
    if ( !level._ID794 _ID39982() )
        return 0;

    if ( !level._ID794 adsbuttonpressed() )
        return 0;

    var_1 = level._ID794 geteye();

    if ( sighttracepassed( var_1, var_0._ID740, 0, level._ID794 ) )
        return 1;

    return 0;
}

_ID18403()
{
    self endon( "stop_shooting" );
    self endon( "death" );
    self endon( "heli_players_dead" );
    thread _ID18392();
    var_0 = level._ID3650 * level._ID3650;
    level._ID3645 = 0;

    while ( isdefined( self ) )
    {
        wait(randomfloatrange( 0.8, 1.3 ));

        if ( !_ID18381() || !_ID18380() )
        {
            var_1 = _ID18377();

            if ( isplayernumber( var_1 ) )
                self._ID13197 = var_1;
        }

        if ( _ID18380() && level._ID805.size > 1 )
        {
            var_2 = _ID42407::_ID15618( self._ID740 );

            if ( self._ID13197 != var_2 )
            {
                var_1 = _ID18377();

                if ( isplayernumber( var_1 ) )
                    self._ID13197 = var_1;
            }
        }

        if ( _ID18380() )
        {
            if ( !_ID18347() || level._ID3645 == 1 )
            {
                var_1 = _ID18376();
                self._ID13197 = var_1;
            }
        }

        if ( isdefined( self._ID18383 ) && isplayernumber( self._ID18383 ) )
            self._ID13197 = self._ID18383;
        else if ( !_ID18381() )
        {
            var_1 = _ID18376();
            self._ID13197 = var_1;
        }

        if ( !_ID18381() )
            continue;

        if ( self._ID13197 _ID20538( self ) )
            continue;

        if ( _ID18381() && distancesquared( self._ID13197._ID740, self._ID740 ) > var_0 )
            continue;

        if ( self._ID39368 == "default" && _ID18380() )
        {
            _ID23693( self._ID13197 );
            wait(randomfloatrange( 0.8, 1.3 ));
            _ID23693( self._ID13197 );
            wait(randomfloatrange( 0.8, 1.3 ));

            while ( _ID6739( self._ID13197 ) && !self._ID13197 _ID20538( self ) )
            {
                _ID14263();
                wait(randomfloatrange( 2.0, 4.0 ));
            }

            continue;
        }

        if ( isplayernumber( self._ID13197 ) || isai( self._ID13197 ) )
            _ID14263();

        if ( isplayernumber( self._ID13197 ) )
            thread _ID27441( self );

        _ID42237::_ID41123( "damage_by_player", level._ID3651 );
    }
}

_ID27441( var_0 )
{
    level notify( "player_is_heli_target" );
    level endon( "player_is_heli_target" );
    level._ID3645 = 1;
    var_0 _ID42237::_ID41123( "damage_by_player", level._ID3649 );
    level._ID3645 = 0;
}

_ID18347()
{
    if ( !isdefined( self._ID13197 ) )
        return 0;

    var_0 = self._ID13197._ID740 + ( 0, 0, 32 );

    if ( isplayernumber( self._ID13197 ) )
        var_0 = self._ID13197 geteye();

    var_1 = self gettagorigin( "tag_flash" );
    var_2 = sighttracepassed( var_1, var_0, 0, self );
    return var_2;
}

_ID18380()
{
    if ( !isdefined( self._ID13197 ) )
        return 0;

    if ( isplayernumber( self._ID13197 ) )
        return 1;
    else
        return 0;
}

_ID18381()
{
    if ( !isdefined( self._ID13197 ) )
        return 0;

    if ( !isalive( self._ID13197 ) )
        return 0;

    if ( self._ID13197 == self._ID37319 )
        return 0;
    else
        return 1;
}

_ID18375()
{
    var_0 = _ID42306::_ID16258( level._ID3650, level._ID3644, 1, 1, 0, 1, level._ID3643 );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
        var_0 = self._ID37319;

    if ( !isdefined( var_0 ) )
        var_0 = self._ID37319;

    return var_0;
}

_ID18377()
{
    var_0 = getaiarray( "allies" );
    var_1 = _ID42306::_ID16258( level._ID3650, level._ID3644, 1, 0, 0, 0, var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = self._ID37319;

    return var_1;
}

_ID18376()
{
    var_0 = _ID42306::_ID16258( level._ID3650, level._ID3644, 1, 1, 0, 1, level._ID805 );

    if ( !isdefined( var_0 ) )
        var_0 = self._ID37319;

    return var_0;
}

_ID18392()
{
    if ( !isdefined( self._ID31293 ) )
        return;

    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "stop_shooting" );
    var_0 = undefined;
    var_1 = "turret_attackheli";
    var_2 = "missile_attackheli";
    var_3 = undefined;
    var_4 = undefined;
    var_5 = [];

    switch ( self._ID1282 )
    {
        case "mi28":
            var_0 = 1;
            var_3 = 1;
            var_4 = 0.5;
            var_5[0] = "tag_store_L_2_a";
            var_5[1] = "tag_store_R_2_a";
            var_5[2] = "tag_store_L_2_b";
            var_5[3] = "tag_store_R_2_b";
            var_5[4] = "tag_store_L_2_c";
            var_5[5] = "tag_store_R_2_c";
            var_5[6] = "tag_store_L_2_d";
            var_5[7] = "tag_store_R_2_d";
            break;
        case "apache":
        case "littlebird":
            var_0 = 1;
            var_3 = 1;
            var_4 = 0.5;
            var_5[0] = "tag_missile_left";
            var_5[1] = "tag_missile_right";
            break;
        default:
            break;
    }

    var_6 = -1;

    for (;;)
    {
        wait 0.05;
        self waittill( "fire_missiles",  var_7  );

        if ( !isplayernumber( var_7 ) )
            continue;

        var_8 = var_7;

        if ( !_ID27504( var_8 ) )
            continue;

        for ( var_9 = 0; var_9 < var_0; var_9++ )
        {
            var_6++;

            if ( var_6 >= var_5.size )
                var_6 = 0;

            self setvehweapon( var_2 );
            self._ID14344 = 1;
            var_10 = self fireweapon( var_5[var_6], var_8 );
            var_10 thread _ID23745( var_4 );
            var_10 thread _ID23704();

            if ( var_9 < var_0 - 1 )
                wait(var_3);
        }

        self._ID14344 = 0;
        self setvehweapon( var_1 );
        wait 10;
    }
}

_ID27504( var_0 )
{
    if ( self._ID24481 )
        return 0;
    else
        return 1;
}

_ID23704()
{
    if ( distancesquared( self._ID740, level._ID794._ID740 ) > 9000000 )
        return;

    var_0 = self._ID740;

    while ( isdefined( self ) )
    {
        var_0 = self._ID740;
        wait 0.1;
    }

    earthquake( 0.7, 1.5, var_0, 1600 );
    _ID42475::_ID34575( "start_missile_earthquake" );
}

_ID23745( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    wait(var_0);

    if ( isdefined( self ) )
        self missile_cleartarget();
}

_ID15677( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID805.size; var_1++ )
    {
        if ( var_0 != level._ID805[var_1] )
            return level._ID805[var_1];
    }

    return level._ID805[0];
}

_ID25091()
{
    self notify( "notify_disable_thread" );
    self endon( "notify_disable_thread" );
    self endon( "death" );
    self endon( "heli_players_dead" );

    for (;;)
    {
        self waittill( "disable_turret" );
        self._ID2738 = 0;
    }
}

_ID25095()
{
    self notify( "notify_enable_thread" );
    self endon( "notify_enable_thread" );
    self endon( "death" );
    self endon( "heli_players_dead" );

    for (;;)
    {
        self waittill( "enable_turret" );
        self._ID2738 = 1;
    }
}

_ID14263()
{
    switch ( self._ID39368 )
    {
        case "default":
            var_0 = randomintrange( 5, 10 );
            var_1 = weaponfiretime( "turret_attackheli" );
            _ID39255( self._ID13197, var_0, var_1 );
            break;
        case "miniguns":
            var_0 = _ID16163( self._ID13197 );

            if ( self._ID2738 && !self._ID14344 )
                _ID39283( self._ID13197, var_0 );

            break;
        default:
            break;
    }
}

_ID16163( var_0 )
{
    var_1 = undefined;

    if ( !isplayernumber( var_0 ) )
    {
        var_1 = level._ID3642;
        return var_1;
    }

    switch ( level._ID15361 )
    {
        case 0:
        case 1:
        case 2:
        case 3:
            var_1 = randomintrange( 2, 3 );
            break;
    }

    return var_1;
}

_ID14270( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    wait(var_0);

    if ( !isplayernumber( self._ID13197 ) )
        return;

    self notify( "fire_missiles",  self._ID13197  );
}

_ID39255( var_0, var_1, var_2 )
{
    thread _ID14270( randomfloatrange( 0.2, 2 ) );

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        self setturrettargetent( var_0, _ID42237::_ID28976( 50 ) + ( 0, 0, 32 ) );

        if ( self._ID2738 && !self._ID14344 )
            self fireweapon();

        wait(var_2);
    }
}

_ID39283( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self notify( "firing_miniguns" );
    self endon( "firing_miniguns" );
    var_3 = _ID16045();
    _ID42237::_ID3350( var_3, ::_ID39284, var_0, self );

    if ( !self._ID23668 )
    {
        self._ID14343 = 1;
        thread _ID42407::_ID27080( "littlebird_gatling_spinup", "tag_flash" );
        wait 2.1;
        thread _ID42407::_ID27001( "littlebird_minigun_spinloop", "tag_flash" );
    }

    self._ID23668 = 1;

    if ( !isdefined( var_2 ) )
        var_2 = 3;

    var_4 = 0.5;

    if ( var_4 > var_2 )
        var_4 = var_2;

    if ( var_4 > 0 )
        wait(randomfloatrange( var_4, var_2 ));

    _ID23663( var_0, var_1 );
    var_3 = _ID16045();
    _ID42237::_ID3294( var_3, ::stopfiring );
    thread _ID23665( var_0 );
    self notify( "stopping_firing" );
}

_ID23663( var_0, var_1 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );

    if ( isplayernumber( var_0 ) )
        self endon( "cant_see_player" );

    var_2 = _ID16045();
    _ID42237::_ID3294( var_2, ::startfiring );
    wait(randomfloatrange( 1, 2 ));

    if ( isplayernumber( var_0 ) )
        thread _ID37313( var_0 );

    if ( isplayernumber( var_0 ) )
    {
        var_3 = randomfloatrange( 0.5, 3 );
        thread _ID14270( var_3 );
    }

    wait(var_1);
}

_ID37313( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "stopping_firing" );
    self notify( "tracking_player" );
    self endon( "tracking_player" );

    for (;;)
    {
        if ( !_ID6739( var_0 ) )
            break;

        wait 0.5;
    }

    wait(level._ID3652);
    self notify( "cant_see_player" );
}

_ID39284( var_0, var_1 )
{
    var_1 endon( "death" );
    var_1 endon( "heli_players_dead" );
    self notify( "miniguns_have_new_target" );
    self endon( "miniguns_have_new_target" );

    if ( !isplayernumber( var_0 ) && isai( var_0 ) && level._ID3646 == 0 )
    {
        var_2 = spawn( "script_origin", var_0._ID740 + ( 0, 0, 100 ) );
        var_2 linkto( var_0 );
        thread _ID23661( var_2 );
        var_0 = var_2;
    }

    for (;;)
    {
        wait 0.5;
        self settargetentity( var_0 );
    }
}

_ID23661( var_0 )
{
    _ID42237::_ID41098( "death", "miniguns_have_new_target" );
    var_0 delete();
}

_ID23665( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "firing_miniguns" );

    if ( isplayernumber( var_0 ) )
        wait(randomfloatrange( 3, 4 ));
    else
        wait(randomfloatrange( 1, 2 ));

    thread _ID23666();
    self._ID14343 = 0;
}

_ID23666()
{
    self notify( "stop soundlittlebird_minigun_spinloop" );
    self._ID23668 = 0;
    _ID42407::_ID27080( "littlebird_gatling_cooldown", "tag_flash" );
}

_ID23693( var_0 )
{
    var_1 = anglestoforward( level._ID794._ID65 );
    var_2 = var_1 * 400;
    var_3 = var_2 + _ID42237::_ID28976( 50 );
    var_4 = randomintrange( 10, 20 );
    var_5 = weaponfiretime( "turret_attackheli" );

    for ( var_6 = 0; var_6 < var_4; var_6++ )
    {
        var_3 = var_2 + _ID42237::_ID28976( 50 );
        self setturrettargetent( var_0, var_3 );

        if ( self._ID2738 )
            self fireweapon();

        wait(var_5);
    }
}

_ID6739( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    var_1 = self gettagorigin( "tag_flash" );
    var_2 = ( 0, 0, 0 );

    if ( isplayernumber( var_0 ) )
        var_2 = var_0 geteye();
    else
        var_2 = var_0._ID740;

    if ( sighttracepassed( var_1, var_2, 0, undefined ) )
        return 1;
    else
        return 0;
}

_ID15810( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];
    var_6 = strtok( var_1._ID31273, " " );

    for ( var_7 = 0; var_7 < var_2.size; var_7++ )
    {
        for ( var_8 = 0; var_8 < var_6.size; var_8++ )
        {
            if ( var_2[var_7]._ID920 == var_6[var_8] )
                var_5[var_5.size] = var_2[var_7];
        }
    }

    foreach ( var_10 in var_5 )
    {
        if ( var_10._ID740[2] < var_4[2] )
        {
            var_5 = _ID42237::_ID3321( var_5, var_10 );
            continue;
        }
    }

    return var_5;
}

_ID18356()
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "crashing" );
    self endon( "leaving" );
    self._ID257 = 0;
    self._ID31833 = undefined;

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( !isdefined( var_1 ) || !isplayernumber( var_1 ) )
            continue;

        self notify( "damage_by_player" );
        thread _ID18357();
        thread _ID6736( var_1 );
    }
}

_ID18357()
{
    self notify( "taking damage" );
    self endon( "taking damage" );
    self endon( "death" );
    self endon( "heli_players_dead" );
    self._ID20939 = 1;
    wait 1;
    self._ID20939 = 0;
}

_ID6736( var_0 )
{
    self notify( "attacker_seen" );
    self endon( "attacker_seen" );
    self._ID31833 = var_0;
    self._ID18383 = var_0;
    wait(level._ID3647);
    self._ID18383 = undefined;
    self._ID31833 = undefined;
}

_ID20538( var_0 )
{
    if ( isdefined( var_0._ID31833 ) )
    {
        if ( var_0._ID31833 == self )
            return 0;
    }

    if ( isdefined( level._ID3620 ) )
    {
        foreach ( var_2 in level._ID3620 )
        {
            if ( self istouching( var_2 ) )
                return 1;
        }
    }

    return 0;
}

_ID39696()
{
    if ( !isplayernumber( self ) )
        return;

    self._ID19130 setshader( "h2_damage_feedback", 50, 100 );
    self._ID19130._ID55 = 1;
    self._ID19130 fadeovertime( 1 );
    self._ID19130._ID55 = 0;
}

_ID39697()
{
    if ( !isplayernumber( self ) )
        return;

    self playlocalsound( "player_feedback_hit_alert" );
}

_ID9600()
{
    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        var_1 = level._ID805[var_0];
        var_1._ID19130 = newclienthudelem( var_1 );
        var_1._ID19130._ID499 = "center";
        var_1._ID19130._ID1284 = "middle";
        var_1._ID19130._ID1331 = -12;
        var_1._ID19130._ID1339 = -12;
        var_1._ID19130._ID55 = 0;
        var_1._ID19130._ID72 = 1;
        var_1._ID19130 setshader( "damage_feedback", 24, 48 );
    }
}

_ID18358()
{
    self waittill( "death" );
    level notify( "attack_heli_destroyed" );
    level._ID12881 = 1;
    wait 15;
    level._ID12880 = 0;
}

_ID10737( var_0 )
{
    var_0 endon( "death" );
    var_0 endon( "heli_players_dead" );
    wait 30;

    if ( !level._ID12880 )
        return;

    _ID8382( "co_cf_cmd_heli_small_fire" );

    if ( !level._ID12880 )
        return;

    _ID8382( "co_cf_cmd_rpg_stinger" );
    wait 30;

    if ( !level._ID12880 )
        return;

    _ID8382( "co_cf_cmd_heli_wonders" );
}

_ID8382( var_0 )
{
    while ( level._ID8383 )
        wait 1;

    level._ID8383 = 1;
    level._ID794 playsound( var_0, "sounddone" );
    level._ID794 waittill( "sounddone" );
    wait 0.5;
    level._ID8383 = 0;
}

_ID39982()
{
    var_0 = self getcurrentweapon();

    if ( !isdefined( var_0 ) )
        return 0;

    if ( issubstr( tolower( var_0 ), "rpg" ) )
        return 1;

    if ( issubstr( tolower( var_0 ), "stinger" ) )
        return 1;

    if ( issubstr( tolower( var_0 ), "at4" ) )
        return 1;

    return 0;
}

_ID18408( var_0 )
{
    _ID42237::_ID41068( "death", "crash_done", "turn_off_spotlight" );
    self._ID35464 = undefined;

    if ( isdefined( self ) )
        stopfxontag( _ID42237::_ID16299( "_attack_heli_spotlight" ), self, var_0 );
}

_ID18409( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    var_1 = self._ID37319;

    if ( isdefined( var_0 ) )
        var_1 = var_0;

    var_1._ID1193 = "original_ent";
    self._ID22137 = spawn( "script_origin", var_1._ID740 );
    self._ID22137._ID740 = var_1._ID740;
    self._ID22137._ID65 = var_1._ID65;
    self._ID22137._ID1193 = "left_ent";
    self._ID29985 = spawn( "script_origin", var_1._ID740 );
    self._ID29985._ID740 = var_1._ID740;
    self._ID29985._ID65 = var_1._ID65;
    self._ID29985._ID1193 = "right_ent";
    var_2 = spawnstruct();
    var_2._ID337 = self._ID22137;
    var_2._ID893 = 250;
    var_2 _ID42407::_ID38694();
    self._ID22137 linkto( self );
    var_3 = spawnstruct();
    var_3._ID337 = self._ID29985;
    var_3._ID893 = -250;
    var_3 _ID42407::_ID38694();
    self._ID29985 linkto( self );
    var_4 = [];
    var_4[0] = var_1;
    var_4[1] = self._ID22137;
    var_4[2] = self._ID29985;
    level._ID35465 = var_4;
    self._ID35475 = var_1;
}

_ID18410()
{
    if ( isdefined( level._ID35465 ) )
    {
        foreach ( var_1 in level._ID35465 )
        {
            if ( isdefined( var_1 ) )
                var_1 delete();
        }
    }
}

_ID18406( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );

    if ( self._ID1282 != "littlebird" )
        return;

    thread _ID18416( var_0 );
    var_1 = undefined;

    for (;;)
    {
        wait 0.05;

        switch ( self._ID1282 )
        {
            case "littlebird":
            case "littlebird_spotlight":
                var_1 = self._ID35475;
                break;
            default:
                var_1 = self._ID13197;
                break;
        }

        if ( isdefined( var_1 ) )
            self setturrettargetent( var_1, ( 0, 0, 0 ) );
    }
}

_ID18416( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    _ID18409();
    _ID42237::_ID3350( level._ID35465, ::_ID18407, self );

    if ( isdefined( var_0 ) )
        self thread [[ var_0 ]]();
    else
    {
        for (;;)
        {
            wait(randomfloatrange( 1, 3 ));

            if ( _ID18380() && !_ID41805() )
            {
                self._ID35475 = self._ID13197;
                continue;
            }

            var_1 = randomint( level._ID35465.size );
            self._ID37319 = level._ID35465[var_1];
            self._ID35475 = self._ID37319;
        }
    }
}

_ID41805()
{
    self endon( "death" );
    self endon( "heli_players_dead" );

    if ( !isdefined( self._ID13197 ) )
        return 0;

    if ( !isplayernumber( self._ID13197 ) )
        return 0;

    var_0 = self._ID13197;
    var_1 = _ID42237::_ID41802( var_0 geteye(), var_0 getplayerangles(), self._ID740, level._ID8760["35"] );
    return var_1;
}

_ID18407( var_0 )
{
    var_0 _ID42237::_ID41098( "death", "crash_done" );

    if ( isdefined( self ) )
        self delete();
}

_ID22457( var_0 )
{
    var_1 = self;
    var_1 _ID42413::_ID39304( "manual" );

    if ( isdefined( var_0._ID37319 ) )
        var_1 settargetentity( var_0._ID37319 );

    var_1 setmode( "manual" );
    var_0 waittill( "death" );

    if ( isdefined( var_0._ID14343 ) && var_0._ID14343 == 1 )
        thread _ID23666();
}

_ID3618()
{
    _ID42237::_ID41098( "death", "crash_done" );

    if ( isdefined( self._ID3671 ) )
        missile_deleteattractor( self._ID3671 );

    if ( isdefined( self._ID3672 ) )
        missile_deleteattractor( self._ID3672 );
}

_ID18360( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "stop_default_heli_missiles" );
    self._ID28408 = undefined;

    while ( isdefined( self ) )
    {
        wait 0.05;
        var_1 = undefined;
        var_2 = undefined;
        var_3 = undefined;
        self._ID28408 = undefined;
        var_4 = undefined;

        if ( isdefined( self._ID9504 ) && isdefined( self._ID9504._ID1191 ) )
            var_4 = _ID42407::_ID16261( self._ID9504._ID1191, "targetname" );

        if ( isdefined( var_4 ) && isdefined( var_4._ID31273 ) )
            self._ID28408 = _ID42407::_ID16261( var_4._ID31273, "script_linkname" );

        if ( isdefined( self._ID28408 ) )
        {
            var_1 = self._ID28408;
            var_2 = var_1._ID31429;
            var_3 = var_1._ID916;
            var_4 waittill( "trigger" );
        }
        else
            _ID42237::_ID41068( "near_goal", "goal" );

        if ( isdefined( var_1 ) )
            thread _ID18368( var_1, var_2, var_3, var_0 );
    }
}

_ID18359()
{
    self notify( "stop_default_heli_missiles" );
}

_ID18413( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "tag_barrel";

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    playfxontag( _ID42237::_ID16299( "_attack_heli_spotlight" ), self, var_0 );
    self._ID35464 = 1;
    thread _ID18408( var_0 );

    if ( var_2 )
        self setturrettargetent( level._ID794 );
    else if ( var_1 )
    {
        self endon( "death" );
        self endon( "heli_players_dead" );
        var_3 = self gettagorigin( "tag_origin" );

        if ( !isdefined( self._ID37319 ) )
            _ID18362();

        self setturrettargetent( self._ID37319 );
        thread _ID18406();
    }
}

_ID18412()
{
    self notify( "turn_off_spotlight" );
}

_ID18415()
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "stop_spotlight_random_targets" );

    if ( !isdefined( self._ID37319 ) )
        thread _ID18362();

    if ( !isdefined( self._ID22137 ) )
        thread _ID18416();

    while ( isdefined( self ) )
    {
        wait 0.05;
        self setturrettargetent( self._ID37319, ( 0, 0, 0 ) );
    }
}

_ID18414()
{
    self notify( "stop_spotlight_random_targets" );
}

_ID18368( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );

    if ( isdefined( self._ID10149 ) )
        var_4 = self._ID10149;
    else
        var_4 = "turret_attackheli";

    var_5 = "missile_attackheli";

    if ( isdefined( var_3 ) )
        var_5 = var_3;

    var_6 = undefined;
    var_7 = [];
    self setvehweapon( var_4 );

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_0._ID170 ) )
    {
        if ( !isdefined( self._ID12232 ) )
        {
            self._ID12232 = spawn( "script_origin", var_0._ID740 );
            thread _ID42237::_ID10280( self._ID12232 );
        }

        self._ID12232._ID740 = var_0._ID740;
        var_0 = self._ID12232;
    }

    switch ( self._ID1282 )
    {
        case "mi28":
            var_6 = 0.5;
            var_7[0] = "tag_store_L_2_a";
            var_7[1] = "tag_store_R_2_a";
            var_7[2] = "tag_store_L_2_b";
            var_7[3] = "tag_store_R_2_b";
            var_7[4] = "tag_store_L_2_c";
            var_7[5] = "tag_store_R_2_c";
            var_7[6] = "tag_store_L_2_d";
            var_7[7] = "tag_store_R_2_d";
            break;
        case "apache":
        case "littlebird":
            var_6 = 0.5;
            var_7[0] = "tag_missile_left";
            var_7[1] = "tag_missile_right";
            break;
        case "hind_battle":
            var_7[0] = "tag_missile_left";
            var_7[1] = "tag_missile_right";
            break;
        default:
            break;
    }

    var_8 = -1;

    for ( var_9 = 0; var_9 < var_1; var_9++ )
    {
        var_8++;

        if ( var_8 >= var_7.size )
            var_8 = 0;

        self setvehweapon( var_5 );
        self._ID14344 = 1;
        var_10 = self fireweapon( var_7[var_8], var_0 );
        var_10 thread _ID23704();

        if ( var_9 < var_1 - 1 )
            wait(var_2);
    }

    self._ID14344 = 0;
    self setvehweapon( var_4 );
}

_ID5478()
{
    self waittill( "trigger",  var_0  );
    var_1 = _ID42237::_ID16640( self._ID1191, "targetname" );
    var_1 = _ID42407::_ID3311( var_1 );
    _ID5477( var_0, var_1 );
}

_ID5479()
{
    self waittill( "trigger",  var_0  );
    var_1 = _ID42407::_ID15811();
    var_1 = _ID42407::_ID3311( var_1 );
    _ID5477( var_0, var_1 );
}

_ID5477( var_0, var_1 )
{
    var_2 = [];
    var_2[0] = "tag_missile_right";
    var_2[1] = "tag_missile_left";

    if ( level._ID912 == "roadkill" )
    {
        var_2[0] = "tag_flash_2";
        var_2[1] = "tag_flash_11";
    }

    if ( var_0._ID1282 == "cobra" )
    {
        var_2[0] = "tag_store_L_1_a";
        var_2[1] = "tag_store_R_1_a";
    }

    var_3 = [];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_3[var_4] = spawn( "script_origin", var_1[var_4]._ID740 );
        var_0 setvehweapon( "littlebird_FFAR" );
        var_0 setturrettargetent( var_3[var_4] );
        var_5 = var_0 fireweapon( var_2[var_4 % var_2.size], var_3[var_4], ( 0, 0, 0 ) );

        if ( isdefined( var_5 ) )
            var_5 _ID42237::_ID10192( 1, ::missile_cleartarget );

        wait(randomfloatrange( 0.2, 0.3 ));
    }

    wait 2;

    foreach ( var_7 in var_3 )
        var_7 delete();
}
