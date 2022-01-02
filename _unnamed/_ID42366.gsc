// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24356( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = level._ID35897 + "_playerstart";

    var_1 = _ID42237::_ID16638( var_0, "targetname" );

    if ( isdefined( var_1 ) )
        _ID42407::_ID37441( var_1 );
}

_ID35071( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    var_4 = getentarray( var_1, "script_noteworthy" );
    var_5 = [];
    var_6 = 0;
    var_7 = [];

    foreach ( var_9 in var_4 )
    {
        if ( isspawner( var_9 ) )
            var_5[var_5.size] = var_9;
    }

    var_11 = _ID42237::_ID16638( var_0, "targetname" );
    var_12 = 0;

    foreach ( var_14 in var_5 )
    {
        var_15 = var_14 _ID42407::_ID35014( 1 );

        if ( var_2 )
            var_15 thread _ID42407::_ID29701();

        var_15 forceteleport( var_11.origin, var_11.angles );
        var_15 setgoalpos( var_15.origin );
        var_7 = _ID42237::_ID3293( var_7, var_15 );
        var_12++;

        if ( isdefined( var_3 ) && var_12 >= var_3 )
            return var_7;
    }

    return var_7;
}

_ID33383( var_0, var_1 )
{
    self allowmelee( 0 );
    self disableweapons();
    self disableoffhandweapons();
    self allowstand( 1 );
    self allowcrouch( 0 );
    self allowprone( 0 );
    self _meth_830f( 0 );
    setsaveddvar( "ammoCounterHide", 1 );

    if ( isdefined( var_0 ) && var_0 )
    {
        var_2 = 0;

        for ( var_3 = 0; self getstance() != "stand"; var_3 += 0.05 )
        {
            self setstance( "stand" );
            waittillframeend;
        }

        while ( self isthrowinggrenade() || self isswitchingweapon() || self getcurrentweapon( 0 ) != "none" )
        {
            waittillframeend;
            var_3 += 0.05;
        }

        if ( isdefined( var_1 ) && var_1 > var_3 )
            wait(var_1 - var_3);
    }
}

_ID33382()
{
    setsaveddvar( "ammoCounterHide", 0 );
    self _meth_830f( 1 );
    self allowprone( 1 );
    self allowcrouch( 1 );
    self allowstand( 1 );
    self enableoffhandweapons();
    self enableweapons();
    self allowmelee( 1 );
}

_ID24255()
{
    foreach ( var_1 in level._ID805 )
    {
        if ( !isdefined( var_1._ID34789 ) )
        {
            var_1._ID34789 = var_1 _ID42313::_ID9200( "default", 1.75 );
            var_1._ID34789.horzalign = "center";
            var_1._ID34789.vertalign = "top";
            var_1._ID34789.alignx = "center";
            var_1._ID34789.aligny = "top";
            var_1._ID34789.x = 0;
            var_1._ID34789.y = 20;
            var_1._ID34789 settext( &"VARIABLE_SCOPE_SNIPER_ZOOM" );
            var_1._ID34789.alpha = 0;
            var_1._ID34789.sort = 0.5;
            var_1._ID34789.foreground = 1;
        }

        var_1._ID14854 = 1;
    }

    var_3 = 0;
    level._ID805[0]._ID34773 = "cg_playerFovScale0";

    if ( level._ID805.size == 2 )
        level._ID805[1]._ID34773 = "cg_playerFovScale1";

    foreach ( var_1 in level._ID805 )
    {
        var_1 thread _ID24193();
        var_1 thread _ID11055();
    }

    if ( !isdefined( level._ID40039 ) )
        level._ID40039 = [];

    var_6 = undefined;
    var_7 = undefined;

    for (;;)
    {
        var_8 = 0;
        var_7 = var_6;
        var_6 = undefined;

        foreach ( var_10 in level._ID40039 )
        {
            foreach ( var_1 in level._ID805 )
            {
                if ( var_1 getcurrentweapon() == var_10 && isalive( var_1 ) )
                {
                    var_8 = 1;
                    var_6 = var_1;
                    break;
                }
            }

            if ( var_8 )
                break;
        }

        if ( var_8 && !var_6 isreloading() && !var_6 isswitchingweapon() )
        {
            if ( var_6 _ID42407::_ID20652() && var_6 adsbuttonpressed() )
            {
                var_6 _ID39228( var_3 );
                var_3 = 1;

                if ( isdefined( level._ID40038 ) )
                {
                    var_14 = undefined;
                    var_15 = undefined;
                    var_16 = anglestoforward( var_6 getplayerangles() );
                    var_17 = var_6.origin;

                    foreach ( var_19 in level._ID40038 )
                    {
                        var_20 = anglestoforward( vectortoangles( var_19 - var_17 ) );
                        var_21 = vectordot( var_16, var_20 );

                        if ( !isdefined( var_14 ) || var_21 > var_15 )
                        {
                            var_14 = var_19;
                            var_15 = var_21;
                        }
                    }

                    if ( isdefined( var_14 ) )
                        setsaveddvar( "sm_sunShadowCenter", var_14 );
                }
            }
            else if ( var_3 )
            {
                var_3 = 0;

                if ( isdefined( var_6 ) )
                    var_6 _ID39222();

                setsaveddvar( "sm_sunShadowCenter", "0 0 0" );
            }
        }
        else if ( var_3 )
        {
            var_3 = 0;

            if ( isdefined( var_7 ) )
                var_7 _ID39222();

            setsaveddvar( "sm_sunShadowCenter", "0 0 0" );
        }

        wait 0.05;
    }
}

_ID39228( var_0 )
{
    self disableoffhandweapons();
    setsaveddvar( self._ID34773, self._ID14854 );
    self._ID34789.alpha = 1;

    if ( !var_0 )
        level notify( "variable_sniper_hud_enter" );
}

_ID39222()
{
    level notify( "variable_sniper_hud_exit" );
    self enableoffhandweapons();
    setsaveddvar( self._ID34773, 1 );
    self._ID34789.alpha = 0;
}

_ID24193()
{
    notifyoncommand( "mag_cycle", "+melee_zoom" );
    notifyoncommand( "mag_cycle", "+sprint_zoom" );

    for (;;)
    {
        self waittill( "mag_cycle" );

        if ( self._ID34789.alpha )
        {
            if ( self._ID14854 == 0.5 )
            {
                self._ID14854 = 1;
                continue;
            }

            self._ID14854 = 0.5;
        }
    }
}

_ID11055()
{
    self waittill( "death" );
    _ID39222();
}

_ID10811( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "stop_reminders" );
    level endon( "missionfailed" );
    var_5 = undefined;

    if ( !isdefined( var_3 ) )
        var_3 = 10;

    if ( !isdefined( var_4 ) )
        var_4 = 20;

    while ( !_ID42237::_ID14385( var_1 ) )
    {
        var_6 = randomfloatrange( var_3, var_4 );
        var_7 = _ID42237::_ID28945( var_2 );

        if ( isdefined( var_5 ) && var_7 == var_5 )
        {
            continue;
            continue;
        }

        var_5 = var_7;
        wait(var_6);

        if ( !_ID42237::_ID14385( var_1 ) )
        {
            if ( isstring( var_0 ) && var_0 == "radio" )
            {
                _ID8609();
                _ID42407::_ID28864( var_7 );
                _ID8610();
                continue;
            }

            _ID8609();
            var_0 _ID42407::_ID10805( var_7 );
            _ID8610();
        }
    }
}

_ID8609()
{
    if ( !_ID42237::_ID14396( "flag_conversation_in_progress" ) )
        _ID42237::_ID14400( "flag_conversation_in_progress" );

    _ID42237::_ID14426( "flag_conversation_in_progress" );
    _ID42237::_ID14402( "flag_conversation_in_progress" );
}

_ID8610()
{
    _ID42237::_ID14388( "flag_conversation_in_progress" );
}

_ID3301( var_0, var_1 )
{
    var_2 = [];

    foreach ( var_4 in var_0 )
    {
        if ( !isdefined( _ID42237::_ID3307( var_2, var_4 ) ) )
            var_2[var_2.size] = var_4;
    }

    foreach ( var_4 in var_1 )
    {
        if ( !isdefined( _ID42237::_ID3307( var_2, var_4 ) ) )
            var_2[var_2.size] = var_4;
    }

    return var_2;
}

_ID21733( var_0 )
{
    var_0 endon( "remove_laser_targeting_device" );
    var_0._ID22029 = undefined;
    var_0._ID21752 = 0;
    var_0 setweaponhudiconoverride( "actionslot4", "dpad_laser_designator" );
    var_0 thread _ID7822();
    var_0 notifyonplayercommand( "use_laser", "+actionslot 4" );
    var_0 notifyonplayercommand( "fired_laser", "+attack" );
    var_0 notifyonplayercommand( "fired_laser", "+attack_akimbo_accessible" );
    var_0._ID21745 = 1;
    var_0._ID21746 = 20;
    var_0 childthread _ID24187();

    for (;;)
    {
        var_0 waittill( "use_laser" );

        if ( var_0._ID21752 || !var_0._ID21745 || var_0 _ID33949() )
        {
            var_0 notify( "cancel_laser" );
            var_0 laseroff();
            var_0._ID21752 = 0;
            var_0 allowads( 1 );
            wait 0.2;
            var_0 allowfire( 1 );
            continue;
        }

        var_0 laseron();
        var_0 allowfire( 0 );
        var_0._ID21752 = 1;
        var_0 allowads( 0 );
        var_0 thread _ID21706();
    }
}

_ID33949()
{
    var_0 = self getcurrentweapon();

    if ( var_0 == "rpg" )
        return 1;

    if ( _ID42237::_ID36698( var_0, "gl" ) )
        return 1;

    if ( isdefined( level._ID21708 ) && isarray( level._ID21708 ) )
    {
        foreach ( var_2 in level._ID21708 )
        {
            if ( var_0 == var_2 )
                return 1;
        }
    }

    if ( self isreloading() )
        return 1;

    if ( self isthrowinggrenade() )
        return 1;

    return 0;
}

_ID7822()
{
    self waittill( "remove_laser_targeting_device" );
    self setweaponhudiconoverride( "actionslot4", "none" );
    self notify( "cancel_laser" );
    self laseroff();
    self._ID21752 = undefined;
    self allowfire( 1 );
    self allowads( 1 );
}

_ID24187()
{
    for (;;)
    {
        if ( _ID33949() && isdefined( self._ID21752 ) && self._ID21752 )
        {
            self notify( "use_laser" );
            wait 2.0;
        }

        wait 0.05;
    }
}

_ID21706()
{
    self endon( "cancel_laser" );

    for (;;)
    {
        self waittill( "fired_laser" );
        var_0 = _ID15795();
        var_1 = var_0["position"];
        var_2 = var_0["entity"];
        level notify( "laser_coordinates_received" );
        var_3 = undefined;

        if ( isdefined( level._ID21734 ) && isdefined( var_2 ) && _ID42237::_ID3303( level._ID21734, var_2 ) )
        {
            var_3 = var_2;
            level._ID21734 = _ID42237::_ID3321( level._ID21734, var_2 );
        }
        else
            var_3 = _ID16652( var_1 );

        if ( isdefined( var_3 ) )
        {
            thread _ID21702( var_3 );
            level notify( "laser_target_painted" );
            wait 0.5;
            self notify( "use_laser" );
        }
    }
}

_ID16652( var_0 )
{
    if ( !isdefined( level._ID21735 ) || level._ID21735.size == 0 )
        return undefined;

    foreach ( var_2 in level._ID21735 )
    {
        var_3 = distance2d( var_0, var_2.origin );
        var_4 = var_0[2] - var_2.origin[2];

        if ( !isdefined( var_2.radius ) )
            continue;

        if ( !isdefined( var_2._ID488 ) )
            continue;

        if ( var_3 <= var_2.radius && var_4 <= var_2._ID488 && var_4 >= 0 )
        {
            level._ID21735 = _ID42237::_ID3321( level._ID21735, var_2 );
            return getent( var_2.target, "script_noteworthy" );
        }
    }

    return undefined;
}

_ID15795()
{
    var_0 = self geteye();
    var_1 = self getplayerangles();
    var_2 = anglestoforward( var_1 );
    var_3 = var_0 + var_2 * 7000;
    var_4 = bullettrace( var_0, var_3, 1, self );
    var_5 = var_4["entity"];

    if ( isdefined( var_5 ) )
        var_4["position"] = var_5.origin;

    return var_4;
}

_ID21702( var_0 )
{
    level.player endon( "remove_laser_targeting_device" );
    level.player._ID21745 = 0;
    self setweaponhudiconoverride( "actionslot4", "dpad_killstreak_hellfire_missile_inactive" );
    _ID42407::_ID14543( "allies" );
    var_1 = level.player;
    wait 2.5;

    if ( !isdefined( var_0._ID31259 ) )
        var_0._ID31259 = 99;

    wait 1;

    if ( isdefined( var_0._ID31245 ) )
    {
        var_2 = _ID15754( "geo_before", var_0._ID31245 );

        if ( var_2.size > 0 )
            _ID42237::_ID3294( var_2, ::hide );

        var_3 = _ID15754( "geo_after", var_0._ID31245 );

        if ( var_3.size > 0 )
            _ID42237::_ID3294( var_3, ::show );
    }

    wait(level.player._ID21746);
    level.player._ID21745 = 1;
    self setweaponhudiconoverride( "actionslot4", "dpad_laser_designator" );
}

_ID15754( var_0, var_1 )
{
    var_2 = getentarray( var_0, "targetname" );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( isdefined( var_5._ID31245 ) && var_5._ID31245 == var_1 )
            var_3[var_3.size] = var_5;
    }

    return var_3;
}

_ID22383( var_0, var_1, var_2, var_3, var_4 )
{
    return var_3 + ( var_0 - var_1 ) * ( var_4 - var_3 ) / ( var_2 - var_1 );
}

_ID22384( var_0, var_1, var_2, var_3, var_4 )
{
    return clamp( _ID22383( var_0, var_1, var_2, var_3, var_4 ), min( var_3, var_4 ), max( var_3, var_4 ) );
}

_ID10841()
{
    var_0 = gettime() * 0.001;

    if ( !isdefined( self._ID10846 ) )
    {
        self._ID10846 = var_0;
        self._ID10845 = self.origin;
        self._ID10847 = ( 0, 0, 0 );
        self._ID10844 = ( 0, 0, 0 );
        self._ID10843 = ( 0, 0, 0 );
        self._ID10842 = ( 0, 0, 0 );
        self._ID10849 = ( 0, 0, 0 );
        self._ID10848 = 0;
    }
    else if ( self._ID10846 != var_0 )
    {
        var_1 = var_0 - self._ID10846;
        self._ID10846 = var_0;
        self._ID10843 = ( self._ID10842 - self._ID10844 ) / var_1;
        self._ID10844 = self._ID10842;
        self._ID10842 = ( self._ID10849 - self._ID10847 ) / var_1;
        self._ID10847 = self._ID10849;
        self._ID10849 = ( self.origin - self._ID10845 ) / var_1;
        self._ID10845 = self.origin;
        self._ID10848 = length( self._ID10849 );
    }
}

_ID15680()
{
    _ID10841();
    return self._ID10848;
}

_ID15681()
{
    _ID10841();
    return self._ID10849;
}

_ID15678()
{
    _ID10841();
    return self._ID10842;
}

_ID15679()
{
    _ID10841();
    return self._ID10843;
}

_ID34028( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_0 ) )
        setsaveddvar( "g_friendlyNameDist", var_0 );
    else
        setsaveddvar( "g_friendlyNameDist", 15000 );

    if ( isdefined( var_1 ) )
        setsaveddvar( "compass", var_1 );
    else
        setsaveddvar( "compass", "1" );

    if ( isdefined( var_2 ) )
        setsaveddvar( "ammoCounterHide", var_2 );
    else
        setsaveddvar( "ammoCounterHide", "0" );

    if ( isdefined( var_3 ) )
        setsaveddvar( "actionSlotsHide", var_3 );
    else
        setsaveddvar( "actionSlotsHide", "0" );

    if ( isdefined( var_4 ) )
        setsaveddvar( "hud_showStance", var_4 );
    else
        setsaveddvar( "hud_showStance", "1" );
}

_ID18534( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_0 ) )
        setsaveddvar( "g_friendlyNameDist", var_0 );
    else
        setsaveddvar( "g_friendlyNameDist", 0 );

    if ( isdefined( var_1 ) )
        setsaveddvar( "compass", var_1 );
    else
        setsaveddvar( "compass", "0" );

    if ( isdefined( var_2 ) )
        setsaveddvar( "ammoCounterHide", var_2 );
    else
        setsaveddvar( "ammoCounterHide", "1" );

    if ( isdefined( var_3 ) )
        setsaveddvar( "actionSlotsHide", var_3 );
    else
        setsaveddvar( "actionSlotsHide", "1" );

    if ( isdefined( var_4 ) )
        setsaveddvar( "hud_showStance", var_4 );
    else
        setsaveddvar( "hud_showStance", "0" );
}

_ID10918( var_0 )
{
    _ID18534();
}

_ID12484( var_0 )
{
    _ID34028();
}

_ID17918( var_0, var_1, var_2 )
{
    level.player endon( "death" );
    level endon( "missionfailed" );

    if ( isdefined( var_2 ) && isstring( var_2 ) )
        level endon( var_2 );

    if ( !isdefined( var_0 ) || !isstring( var_0 ) )
        return;

    if ( !isdefined( var_1 ) || !isstring( var_1 ) || !_ID42237::_ID14396( var_0 ) )
        return;

    var_3 = getent( var_1, "targetname" );

    if ( !isdefined( var_3 ) )
        var_3 = getent( var_1, "script_noteworthy" );

    if ( !isdefined( var_3 ) )
        return;

    var_3 scalevolume( 0 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        var_3 scalevolume( 1 );
        _ID42237::_ID14426( var_0 );
        var_3 scalevolume( 0 );
        wait 0.05;
    }
}

_ID28249( var_0, var_1 )
{
    level.player endon( "death" );
    level endon( "missionfailed" );

    if ( !isdefined( var_0 ) || !isstring( var_0 ) )
        return;

    if ( !isdefined( var_1 ) || !isstring( var_1 ) || !_ID42237::_ID14396( var_0 ) )
        return;

    var_2 = getent( var_1, "targetname" );

    if ( !isdefined( var_2 ) )
        var_2 = getent( var_1, "script_noteworthy" );

    if ( !isdefined( var_2 ) )
        return;

    var_2 scalevolume( 0 );
    _ID42237::_ID14413( var_0 );
    var_2 scalevolume( 1 );
}

_ID28248( var_0, var_1 )
{
    level.player endon( "death" );
    level endon( "missionfailed" );

    if ( !isdefined( var_0 ) || !isstring( var_0 ) )
        return;

    if ( !isdefined( var_1 ) || !isstring( var_1 ) || !_ID42237::_ID14396( var_0 ) )
        return;

    var_2 = getent( var_1, "targetname" );

    if ( !isdefined( var_2 ) )
        var_2 = getent( var_1, "script_noteworthy" );

    if ( !isdefined( var_2 ) )
        return;

    _ID42237::_ID14413( var_0 );
    var_2 scalevolume( 0 );
}

_ID22818()
{
    if ( !isdefined( level._ID12411 ) )
        level._ID12411 = [];

    level._ID12411 = _ID42237::_ID3293( level._ID12411, self );
    self waittill( "death" );
    level._ID12411 = _ID42237::_ID3321( level._ID12411, self );
}

_ID26968( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4._ID15195 = _ID42237::_ID16299( var_0 );
    var_4._ID337 = var_1;
    var_4._ID1067 = var_2;

    if ( isdefined( var_3 ) && var_3 )
    {
        var_4._ID1139 = _ID42237::_ID35164();
        var_4._ID1139 linkto( var_1, var_4._ID1067, ( 0, 0, 0 ), ( 0, 0, 0 ) );
        playfxontag( var_4._ID15195, var_4._ID1139, "tag_origin" );
        _ID21271( var_4 );
    }
    else
        playfxontag( var_4._ID15195, var_4._ID337, var_4._ID1067 );

    return var_4;
}

_ID21271( var_0 )
{
    thread _ID21272( var_0 );
}

_ID21272( var_0 )
{
    var_0._ID337 waittill( "death" );
    _ID21270( var_0 );
}

_ID21270( var_0 )
{
    if ( isdefined( var_0._ID1139 ) )
    {
        killfxontag( var_0._ID15195, var_0._ID1139, "tag_origin" );
        var_0._ID1139 _ID42237::_ID10192( 0.05, ::delete );
        var_0._ID1139 = undefined;
        var_0._ID337 = undefined;
    }
    else if ( isdefined( var_0._ID337 ) )
    {
        killfxontag( var_0._ID15195, var_0._ID337, var_0._ID1067 );
        var_0._ID337 = undefined;
    }
}

_ID18629( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 200;

    return _ID18625( var_0, self.origin, undefined, var_1, undefined, self );
}

_ID18628( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    return _ID18619( var_0, var_1, var_2, var_3, 0, var_4, var_5 );
}

_ID18625( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID42237::_ID35164();

    if ( !isdefined( var_1 ) )
    {
        if ( isdefined( var_5 ) )
            var_1 = var_5.origin;
        else
            var_1 = self.origin;
    }

    var_6.origin = var_1;
    return var_6 _ID18619( var_0, "tag_origin", var_2, var_3, 1, var_4, var_5 );
}

_ID18619( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = newclienthudelem( level.player );
    var_7.alignx = "center";
    var_7.aligny = "middle";
    var_7.fontscale = 3;
    var_7.font = "buttonprompt";
    var_7.positioninworld = 1;

    if ( isdefined( self ) )
    {
        if ( isdefined( var_1 ) )
            var_7 settargetent( self, var_1 );
        else
            var_7 settargetent( self );
    }

    var_8 = _ID18626( var_0 );
    var_7 settext( var_8 );
    var_7.hidewheninmenu = 1;
    var_7.sort = -1;
    var_7.alpha = 1;

    if ( !isdefined( var_5 ) || !var_5 )
        var_7 thread _ID30769( self, var_1, level.player, var_2, var_3, var_6 );

    var_7._ID25316 = self;

    if ( isdefined( var_4 ) && var_4 )
        var_7._ID10331 = 1;

    return var_7;
}

_ID30769( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    var_0 endon( "death" );

    if ( !isdefined( var_3 ) )
        var_3 = getdvarint( "player_useradius" );

    if ( !isdefined( var_4 ) )
        var_4 = 0;

    var_6 = 0;
    self.fontscale = 2;
    self.font = "buttonprompt";

    for (;;)
    {
        if ( isdefined( var_1 ) )
            var_6 = distance( var_0 gettagorigin( var_1 ), var_2 geteye() );
        else
            var_6 = distance( var_0, var_2 geteye() );

        if ( var_4 != 0 && var_6 > var_4 )
            self.alpha = 0;
        else if ( var_3 != 0 && var_6 > var_3 )
        {
            if ( var_4 - var_3 > 0 )
                self.alpha = ( 1 - ( var_6 - var_3 ) / ( var_4 - var_3 ) ) * 0.3;
            else
                self.alpha = 0.3;
        }
        else if ( isdefined( var_5 ) && isdefined( var_5.classname ) && issubstr( var_5.classname, "trigger" ) )
        {
            var_7 = var_2 _meth_852a();

            if ( isdefined( var_7 ) && var_7 == var_5 )
                self.alpha = 1;
            else
                self.alpha = 0.3;
        }
        else
            self.alpha = 1;

        waittillframeend;
    }
}

_ID18626( var_0 )
{
    switch ( var_0 )
    {
        case "reload":
        case "x":
        case "use":
        case "usereload":
        case "activate":
            return "^3[{+activate}]^7";
        case "a":
        case "jump":
        case "gostand":
            return "^3[{+gostand}]^7";
        case "y":
        case "weapnext":
            return "^3[{weapnext}]^7";
        case "crouch":
        case "b":
        case "stance":
            return "^3[{+stance}]^7";
        case "melee":
        case "rs":
            return "^3[{+melee}]^7";
        case "sprint":
        case "ls":
        case "breath":
            return "^3[{+sprint}]^7";
        case "rt":
        case "r1":
        case "attack":
            return "^3[{+attack}]^7";
        case "grenade":
        case "rb":
        case "r2":
        case "frag":
            return "^3[{+frag}]^7";
        case "lt":
        case "l1":
        case "ads":
            if ( level._ID765 )
                return "^3[{+ads}]^7";
            else if ( level.player _meth_835b() )
                return "^3[{+speed_throw}]^7";
            else
                return "^3[{+toggleads_throw}]^7";
        case "flashbang":
        case "lb":
        case "l2":
        case "smoke":
        case "flash":
            return "^3[{+smoke}]^7";
        case "start":
        case "pause":
            return "^3[{pause}]^7";
        case "up":
            return "^3[{+actionslot 1}]^7";
        case "down":
            return "^3[{+actionslot 2}]^7";
        case "left":
            return "^3[{+actionslot 3}]^7";
        case "right":
            return "^3[{+actionslot 4}]^7";
        default:
            break;
    }
}

_ID18617()
{
    if ( isdefined( self._ID10331 ) && self._ID10331 )
        self._ID25316 delete();

    if ( isdefined( self ) )
        self destroy();
}

_ID18621( var_0, var_1 )
{
    while ( isdefined( self ) )
    {
        var_2 = self.alpha;
        self fadeovertime( var_0 / 3 );
        self.alpha = var_1;
        wait(var_0);

        if ( !isdefined( self ) )
            return;

        self fadeovertime( var_0 / 3 );
        self.alpha = var_2;
        wait(var_0);
    }
}

_ID6483( var_0, var_1, var_2, var_3 )
{
    self endon( var_2 );
    level.player endon( var_2 );
    self endon( "death" );
    thread _ID42407::_ID18611( var_0 );
    var_4 = var_1 + "_button_mash_dynamic_hint";
    thread _ID6497( var_2, var_4, var_1, var_3 );
    level.player notifyonplayercommand( var_4, var_1 );

    if ( isdefined( var_3 ) )
        level.player notifyonplayercommand( var_4, var_3 );

    for (;;)
    {
        self waittill( var_4 );
        level._ID18694.alpha = 0.2;
        level._ID18694 fadeovertime( 0.3 );
        level._ID18694.alpha = 1;
        waittillframeend;
    }
}

_ID6497( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    _ID42237::_ID41069( self, var_0, level.player, var_0 );
    thread _ID42407::_ID18638();
    level.player _meth_84ab( var_1, var_2 );

    if ( isdefined( var_3 ) )
        level.player _meth_84ab( var_1, var_3 );
}

_ID18620( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_3 ) )
        var_3 = ( 0, 0, 0 );

    self endon( "death" );
    var_7 = _ID42237::_ID35164();
    var_7.origin = self gettagorigin( var_0 );
    var_7.origin = var_7.origin + var_3;
    var_7 linkto( self, var_0 );
    var_1 = var_7 _ID18619( var_1, "TAG_ORIGIN", var_4, var_5, 1, 1 );

    if ( isdefined( var_6 ) )
        var_1.fontscale = var_6;

    var_1 thread _ID18621( 0.15, 0.1 );
    _ID42237::_ID41069( self, var_2, level.player, var_2 );
    var_1 _ID18617();
}

_ID27167( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !isdefined( var_6 ) )
        var_6 = 1;

    var_8 = undefined;

    if ( isdefined( var_2 ) || isdefined( var_3 ) || isdefined( var_4 ) || isdefined( var_5 ) )
    {
        var_8 = [];
        var_8["top"] = var_2;
        var_8["left"] = var_3;
        var_8["bottom"] = var_4;
        var_8["right"] = var_5;
    }

    var_9 = [];
    var_9["add"] = 0;
    var_9["blend"] = 1;
    var_9["blend_add"] = 2;
    var_9["screen_add"] = 3;
    var_9["multiply"] = 4;
    var_9["replace"] = 5;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    var_10 = var_9[var_1];
    var_11 = getdvarint( "cg_cinematicfullscreen" );
    setsaveddvar( "cg_cinematicfullscreen", 0 );
    var_12 = [];

    if ( isdefined( var_8 ) )
    {
        var_12["top"] = getomnvar( "ui_videolog_pos_top" );
        var_12["left"] = getomnvar( "ui_videolog_pos_left" );
        var_12["bottom"] = getomnvar( "ui_videolog_pos_bottom" );
        var_12["right"] = getomnvar( "ui_videolog_pos_right" );
        setomnvar( "ui_videolog_pos_top", var_8["top"] );
        setomnvar( "ui_videolog_pos_left", var_8["left"] );
        setomnvar( "ui_videolog_pos_bottom", var_8["bottom"] );
        setomnvar( "ui_videolog_pos_right", var_8["right"] );
    }

    setomnvar( "ui_videolog", 1 );
    var_13 = getomnvar( "ui_videolog_blendfunc" );
    setomnvar( "ui_videolog_blendfunc", var_10 );
    setomnvar( "ui_videolog_blur_bkgrnd", var_6 );

    if ( !isdefined( var_7 ) )
        var_7 = level._ID1632._ID10132;

    cinematicingame( var_0, 0, var_7, 1 );

    while ( !iscinematicplaying() )
        waittillframeend;

    while ( iscinematicplaying() )
        waittillframeend;

    setomnvar( "ui_videolog", 0 );
    setomnvar( "ui_videolog_blendfunc", var_13 );
    setsaveddvar( "cg_cinematicfullscreen", var_11 );

    if ( isdefined( var_8 ) )
    {
        setomnvar( "ui_videolog_pos_top", var_12["top"] );
        setomnvar( "ui_videolog_pos_left", var_12["left"] );
        setomnvar( "ui_videolog_pos_bottom", var_12["bottom"] );
        setomnvar( "ui_videolog_pos_right", var_12["right"] );
    }
}

_ID36566()
{
    if ( iscinematicplaying() )
        stopcinematicingame();
}

_ID26800( var_0, var_1, var_2 )
{
    _ID42237::_ID14400( "chyron_video_done" );
    var_3 = newclienthudelem( level.player );
    var_3 setshader( "black", 1280, 720 );
    var_3.horzalign = "fullscreen";
    var_3.vertalign = "fullscreen";
    var_3.alpha = 1;
    var_3.foreground = 0;
    cinematicingame( var_0 );
    var_4 = getdvarint( "cg_cinematicCanPause", 0 );
    setsaveddvar( "cg_cinematicCanPause", 1 );

    while ( !iscinematicplaying() )
        waittillframeend;

    while ( iscinematicplaying() )
        waittillframeend;

    _ID42237::_ID14402( "chyron_video_done" );

    if ( isdefined( var_1 ) )
        wait(var_1);

    if ( isdefined( var_2 ) )
    {
        var_3 fadeovertime( var_2 );
        var_3.alpha = 0;
        wait(var_2);
    }

    setsaveddvar( "cg_cinematicCanPause", var_4 );
    var_3 destroy();
}

_ID28189( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = level.player;

    return vectordot( vectornormalize( var_0 - var_2 geteye() ), anglestoforward( var_2 getplayerangles() ) ) > cos( var_1 );
}

_ID13078( var_0, var_1, var_2, var_3 )
{
    return _ID28189( var_0.origin, atan( tan( 0.5 * var_2 ) * var_3 / 320.0 ), var_1 );
}
