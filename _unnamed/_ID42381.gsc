// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36265()
{
    _ID12882();
    thread _ID12819();
    thread _ID12820();
}

_ID12820()
{
    self endon( "death" );
    self endon( "pain_death" );
    thread _ID12874();

    for (;;)
    {
        self waittill( "_stealth_saw_corpse" );

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        _ID12915();
    }
}

_ID12874()
{
    var_0 = _ID42386::_ID17449( "_stealth_spotted" );
    var_1 = _ID42386::_ID17449( "_stealth_found_corpse" );
    self endon( "death" );
    self endon( "pain_death" );

    if ( _ID42237::_ID14385( var_0 ) )
        return;

    level endon( var_0 );

    for (;;)
    {
        _ID42407::_ID13027( "_stealth_enabled" );

        if ( _ID42407::_ID13023( "_stealth_behavior_asleep" ) )
            _ID42407::_ID13031( "_stealth_behavior_asleep" );

        _ID42389::_ID36323();

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        while ( _ID42389::_ID36322() )
        {
            if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
                break;

            _ID12818();
            level waittill( var_1 );
        }
    }
}

_ID12915()
{
    var_0 = _ID42386::_ID17449( "_stealth_spotted" );
    var_1 = _ID42386::_ID17449( "_stealth_found_corpse" );

    if ( _ID42237::_ID14385( var_0 ) )
        return;

    level endon( var_0 );
    self endon( "attack" );
    level endon( var_1 );

    for (;;)
    {
        _ID42407::_ID13031( "_stealth_enemy_alert_level_action" );
        _ID12824();
        self waittill( "normal" );
    }
}

_ID12824()
{
    _ID42386::_ID12870();
    self endon( "enemy_alert_level_change" );
    thread _ID42386::_ID12794();
    _ID42407::_ID13025( "_stealth_running_to_corpse" );
    _ID42407::_ID13025( "_stealth_override_goalpos" );
    var_0 = self._ID1644._ID5029._ID2281["corpse"];
    self [[ var_0["saw"] ]]();
}

_ID12818()
{
    _ID42386::_ID12870();

    if ( !_ID42407::_ID13019( "_stealth_found_corpse" ) )
        self notify( "awareness_corpse",  "heard_corpse", ( 0, 0, 0 )  );

    _ID42386::_ID12904();

    if ( self._ID1244 == "dog" )
        _ID42407::_ID13025( "_stealth_override_goalpos" );

    thread _ID12822();
    var_0 = self._ID1644._ID5029._ID2281["corpse"];
    self [[ var_0["found"] ]]();
}

_ID12822()
{
    var_0 = _ID42386::_ID17449( "_stealth_spotted" );
    self endon( "death" );
    self endon( "_stealth_enemy_alert_level_change" );
    level endon( var_0 );
    waitframe;
    self endon( "enemy_awareness_reaction" );
    _ID42389::_ID36324();
    _ID42407::_ID13025( "_stealth_normal" );
    var_1 = self._ID1644._ID5029._ID2281["corpse"];
    self thread [[ var_1["reset"] ]]();
}

_ID12823()
{
    self._ID10998 = 0;
    self._ID11025 = 0;

    if ( self._ID1244 != "dog" )
        _ID42386::_ID36361( "_stealth_combat_jog" );
    else
    {
        _ID42407::_ID7892();
        self._ID31246 = 1;
        self._ID31356 = 1;
    }

    self._ID452 = 80;
    self setgoalpos( self._ID1644._ID22585._ID8751._ID740 );
}

_ID12816()
{
    if ( self._ID1244 == "dog" )
    {
        self setgoalpos( self._ID740 );
        return;
    }

    var_0 = _ID42386::_ID12869( level._ID1644._ID22585._ID8751._ID21837, 512, 40 );

    if ( !isdefined( var_0 ) )
        return;

    thread _ID42386::_ID12914( var_0 );
}

_ID12821()
{
    self endon( "death" );
    wait(randomfloatrange( 0, 5 ));
    _ID42386::_ID12929();
    _ID42388::_ID12763( "reset" );
}

_ID27295( var_0 )
{
    var_1 = _ID42407::_ID15617( var_0 );
    var_2 = distance( var_1._ID740, var_0 );

    if ( var_2 < 150 )
        return 1;

    if ( var_2 > level._ID1644._ID22585._ID8751._ID27351 )
        return 0;

    return sighttracepassed( var_0 + ( 0, 0, 48 ), var_1 geteye(), 0, var_1 );
}

_ID12819()
{
    self endon( "death" );
    self endon( "pain_death" );
    thread _ID12817();

    for (;;)
    {
        if ( _ID42407::_ID13023( "_stealth_behavior_asleep" ) )
            _ID42407::_ID13031( "_stealth_behavior_asleep" );

        _ID42407::_ID13027( "_stealth_enabled" );

        while ( !_ID42389::_ID36331() && !_ID42407::_ID13019( "_stealth_attack" ) )
        {
            var_0 = 0;
            var_1 = 0;
            var_2 = undefined;
            var_3 = undefined;
            var_4 = _ID15641();

            for ( var_5 = 0; var_5 < var_4.size; var_5++ )
            {
                var_2 = var_4[var_5];

                if ( isdefined( var_2._ID14836 ) )
                    continue;

                if ( !isdefined( level._ID8754 ) )
                {
                    if ( !_ID27295( var_2._ID740 ) )
                        continue;
                }

                var_6 = distancesquared( self._ID740, var_2._ID740 );

                if ( self._ID1244 != "dog" )
                    var_3 = level._ID1644._ID22585._ID8751._ID14838;
                else
                    var_3 = level._ID1644._ID22585._ID8751._ID14839;

                if ( var_6 < var_3 )
                {
                    var_0 = 1;
                    break;
                }

                if ( isdefined( self._ID1644._ID22585._ID8751._ID8756 ) )
                {
                    if ( self._ID1644._ID22585._ID8751._ID8756 == var_2 )
                        continue;

                    var_7 = distancesquared( self._ID740, self._ID1644._ID22585._ID8751._ID8756._ID740 );

                    if ( var_7 <= var_6 )
                        continue;
                }

                if ( var_6 > level._ID1644._ID22585._ID8751._ID34150 )
                    continue;

                if ( var_6 < level._ID1644._ID22585._ID8751._ID10637 )
                {
                    if ( isdefined( level.corpse_behavior_require_distance_check_only ) || self cansee( var_2 ) )
                    {
                        var_1 = 1;
                        break;
                    }
                }

                var_8 = self gettagangles( "tag_eye" );
                var_9 = self geteye();
                var_10 = anglestoforward( var_8 );
                var_11 = vectornormalize( var_2._ID740 - var_9 );

                if ( vectordot( var_10, var_11 ) > 0.55 )
                {
                    if ( self cansee( var_2 ) )
                    {
                        var_1 = 1;
                        break;
                    }
                }
            }

            if ( var_0 )
            {
                if ( !_ID42407::_ID13019( "_stealth_found_corpse" ) )
                    _ID42407::_ID13025( "_stealth_found_corpse" );
                else
                    self notify( "_stealth_found_corpse" );

                _ID42407::_ID13021( "_stealth_saw_corpse" );
                thread _ID12815( var_2 );
                self notify( "awareness_corpse",  "found_corpse", var_2  );
            }
            else if ( var_1 )
            {
                self._ID1644._ID22585._ID8751._ID8756 = var_2;
                self._ID1644._ID22585._ID8751._ID740 = var_2._ID740;

                if ( !_ID42407::_ID13019( "_stealth_saw_corpse" ) )
                    _ID42407::_ID13025( "_stealth_saw_corpse" );
                else
                    self notify( "_stealth_saw_corpse" );

                level notify( "_stealth_saw_corpse" );
                self notify( "awareness_corpse",  "saw_corpse", var_2  );
            }

            wait 0.5;
        }

        _ID29501();
        _ID42389::_ID36333();
        _ID42407::_ID13031( "_stealth_attack" );
    }
}

_ID29501()
{
    var_0 = _ID42386::_ID17449( "_stealth_spotted" );

    while ( _ID42237::_ID14385( var_0 ) )
    {
        var_1 = _ID15641();

        for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        {
            var_3 = var_1[var_2];

            if ( isdefined( var_3._ID14836 ) )
                continue;

            var_4 = distancesquared( self._ID740, var_3._ID740 );

            if ( self._ID1244 != "dog" )
                var_5 = level._ID1644._ID22585._ID8751._ID14838;
            else
                var_5 = level._ID1644._ID22585._ID8751._ID14839;

            if ( var_4 < var_5 )
            {
                var_3 setcorpseremovetimer( 10 );
                var_3._ID14836 = 1;
            }
        }

        wait 0.5;
    }
}

_ID12817()
{
    self endon( "death" );
    self endon( "pain_death" );
    var_0 = _ID42389::_ID36320();

    for (;;)
    {
        level waittill( var_0 );

        if ( !_ID42389::_ID36322() )
            continue;

        _ID12813();
    }
}

_ID12813()
{
    var_0 = undefined;

    if ( isdefined( self._ID322 ) )
        var_0 = self._ID322;
    else
        var_0 = _ID42237::_ID28945( level._ID805 );

    if ( !isdefined( var_0._ID1644 ) && !isplayernumber( var_0 ) )
        return;

    if ( !isdefined( var_0._ID1644._ID22585._ID35478[self._ID39468] ) )
        var_0._ID1644._ID22585._ID35478[self._ID39468] = 0;

    if ( var_0._ID1644._ID22585._ID35478[self._ID39468] < self._ID1644._ID22585._ID2503._ID23071 )
    {
        var_0._ID1644._ID22585._ID35478[self._ID39468]++;
        thread _ID42386::_ID12766( var_0 );
    }
}

_ID12815( var_0 )
{
    self endon( "death" );
    level._ID1644._ID22585._ID8751._ID21837 = var_0._ID740;
    var_0 setcorpseremovetimer( level._ID1644._ID22585._ID8751._ID29757 );
    var_0._ID14836 = 1;

    if ( self._ID1244 == "dog" && _ID42407::_ID13023( "_stealth_behavior_reaction_anim_in_progress" ) )
    {
        wait 0.1;
        _ID42407::_ID13031( "_stealth_behavior_reaction_anim_in_progress" );
        wait 0.5;
    }
    else
        wait 2;

    thread _ID42386::_ID12792();
    wait 2;
    var_1 = _ID42386::_ID17449( "_stealth_found_corpse" );

    if ( !_ID42389::_ID36322() )
        _ID42386::_ID17446( "_stealth_found_corpse" );
    else
        level notify( var_1 );

    thread _ID12814();
}

_ID12814()
{
    var_0 = _ID42386::_ID17449( "_stealth_found_corpse" );
    var_1 = self._ID31463;
    level endon( var_0 );
    _ID42407::_ID41090( _ID42386::_ID17448( var_1 ), undefined, level._ID1644._ID22585._ID8751._ID29757 );
    thread _ID42386::_ID17444( "_stealth_found_corpse", var_1 );
}

_ID12882()
{
    self._ID1644._ID22585._ID8751 = spawnstruct();
    self._ID1644._ID22585._ID8751._ID8756 = undefined;
    _ID42407::_ID13024( "_stealth_saw_corpse" );
    _ID42407::_ID13024( "_stealth_found_corpse" );
    _ID12832();
    _ID12831();
    self._ID1644._ID28153._ID8751 = 1;
}

_ID12831()
{
    if ( self._ID1244 == "dog" )
    {
        _ID42386::_ID2261( "animation", "heard_corpse", _ID42375::_ID11400 );
        _ID42386::_ID2261( "animation", "saw_corpse", _ID42375::_ID11402 );
        _ID42386::_ID2261( "animation", "found_corpse", _ID42375::_ID11399 );
        _ID42386::_ID2261( "animation", "howl", _ID42375::_ID11401 );
    }
    else
    {
        _ID42386::_ID2261( "animation", "heard_corpse", _ID42375::_ID12782 );
        _ID42386::_ID2261( "animation", "saw_corpse", _ID42375::_ID12788 );
        _ID42386::_ID2261( "animation", "found_corpse", _ID42375::_ID12781 );
    }
}

_ID12832()
{
    var_0 = [];
    var_0["saw"] = ::_ID12823;
    var_0["found"] = ::_ID12816;
    var_0["reset"] = ::_ID12821;
    _ID12826( var_0 );
}

_ID12826( var_0 )
{
    foreach ( var_3, var_2 in var_0 )
        _ID42386::_ID2261( "corpse", var_3, var_2 );
}

_ID15641()
{
    if ( isdefined( level._ID1644._ID22585._ID8751._ID8235 ) )
        return [[ level._ID1644._ID22585._ID8751._ID8235 ]]();

    return getcorpsearray();
}
