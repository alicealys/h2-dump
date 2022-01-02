// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36375()
{
    _ID12882();
    thread _ID12943();
}

_ID12943()
{
    self endon( "death" );
    self endon( "pain_death" );

    for (;;)
    {
        _ID42407::_ID13027( "_stealth_enabled" );
        self waittill( "enemy" );

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        if ( !isalive( self.enemy ) )
            continue;

        if ( !_ID42389::_ID36331() )
        {
            if ( !_ID12767( self.enemy ) )
                continue;
        }
        else
            _ID42388::_ID12763( "attack" );

        thread _ID12948();
        wait 10;

        while ( isdefined( self.enemy ) && _ID42407::_ID13019( "_stealth_enabled" ) )
        {
            var_0 = gettime() - self lastknowntime( self.enemy );

            if ( 20000 > var_0 )
            {
                wait(( 20000 - var_0 ) * 0.001);
                continue;
            }

            if ( distance( self.origin, self.enemy.origin ) > self.enemy.maxvisibledist )
                break;

            wait 0.5;
        }

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        _ID42407::_ID13031( "_stealth_behavior_reaction_anim_in_progress" );

        if ( isdefined( self.enemy ) )
            _ID42386::_ID12766( self.enemy, 0 );

        self clearenemy();
        _ID42388::_ID12763( "reset" );
    }
}

_ID12767( var_0 )
{
    if ( !isdefined( var_0._ID1644 ) )
        return 1;

    if ( !isdefined( var_0._ID1644._ID22585._ID35478[self._ID39468] ) )
        var_0._ID1644._ID22585._ID35478[self._ID39468] = 0;

    for (;;)
    {
        var_0._ID1644._ID22585._ID35478[self._ID39468]++;

        if ( _ID42407::_ID13019( "_stealth_bad_event_listener" ) || var_0._ID1644._ID22585._ID35478[self._ID39468] > self._ID1644._ID22585._ID2503._ID23071 )
        {
            _ID42388::_ID12763( "attack" );
            return 1;
        }

        var_1 = var_0._ID1644._ID22585._ID35478[self._ID39468];
        _ID42388::_ID12763( "warning" + var_1 );
        thread _ID42386::_ID12766( var_0 );
        _ID12772( var_0 );

        if ( !isdefined( var_0 ) || gettime() - self lastknowntime( var_0 ) > 500 )
        {
            self clearenemy();
            return 0;
        }
    }
}

_ID12948()
{
    self endon( "death" );
    self endon( "pain_death" );
    var_0 = self.enemy;
    self._ID11575 = undefined;
    self [[ self._ID1644._ID22585._ID28337 ]]();

    if ( isdefined( var_0 ) )
        level._ID1644._ID17437._ID35477[self._ID31463] = var_0;

    _ID42386::_ID17446( "_stealth_spotted" );
}

_ID12901()
{
    wait 2.25;
}

_ID12772( var_0 )
{
    if ( _ID42389::_ID36322() || _ID42407::_ID13019( "_stealth_bad_event_listener" ) )
        return;

    var_1 = distance( self.origin, var_0.origin ) * 0.0005;
    var_2 = level._ID1644._ID22585._ID23587 + var_1;
    _ID42386::_ID36279( "WARNING time = " + var_2 );
    level endon( _ID42386::_ID17449( "_stealth_spotted" ) );
    self endon( "_stealth_bad_event_listener" );
    wait(var_2);
}

_ID12850()
{
    self endon( "death" );
    self addaieventlistener( "grenade danger" );
    self addaieventlistener( "gunshot" );
    self addaieventlistener( "gunshot_teammate" );
    self addaieventlistener( "silenced_shot" );
    self addaieventlistener( "bulletwhizby" );
    self addaieventlistener( "projectile_impact" );

    for (;;)
    {
        self waittill( "ai_event",  var_0, var_1  );

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        if ( _ID42407::_ID13023( "_stealth_behavior_asleep" ) && _ID42407::_ID13019( "_stealth_behavior_asleep" ) )
            continue;

        _ID42407::_ID13025( "_stealth_bad_event_listener" );
    }
}

_ID12851()
{
    self endon( "death" );

    for (;;)
    {
        _ID42407::_ID13027( "_stealth_bad_event_listener" );
        wait 0.65;
        _ID42407::_ID13021( "_stealth_bad_event_listener" );
    }
}

_ID12844( var_0, var_1 )
{
    _ID42407::_ID13021( "_stealth_normal" );
    self._ID1644._ID22585._ID13251._ID4629[var_0] = var_1;
    self notify( "event_awareness",  var_0  );
    level notify( "event_awareness",  var_0  );
}

_ID12845( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );

    for (;;)
    {
        self waittill( var_0,  var_1, var_2  );

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        switch ( var_0 )
        {
            case "awareness_alert_level":
                break;
            case "ai_event":
                if ( !isdefined( self._ID1644._ID22585._ID13251._ID4627[var_1] ) )
                    continue;

                if ( var_1 == "bulletwhizby" && ( !isdefined( var_2.team ) || var_2.team == self.team ) )
                    continue;
            default:
                _ID42386::_ID17446( "_stealth_event" );
                level thread _ID12848( self._ID31463 );
                break;
        }

        _ID12844( var_1, var_2 );
        waitframe;
    }
}

_ID12843( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    self._ID1644._ID22585._ID13251._ID4629[var_0] = 1;

    for (;;)
    {
        self waittill( var_0,  var_1  );

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        _ID42386::_ID17446( "_stealth_event" );
        level thread _ID12848( self._ID31463 );
        _ID12844( var_0, var_1 );
        waitframe;
    }
}

_ID12848( var_0 )
{
    var_1 = "enemy_event_handle_clear:" + var_0 + " Proc";
    var_2 = "enemy_event_handle_clear:" + var_0 + " Cleared";
    level notify( var_1 );
    level endon( var_1 );
    wait 2;
    var_3 = _ID42386::_ID17448( var_0 );

    if ( var_3.size )
    {
        level _ID42407::_ID1985( _ID42407::_ID3355, var_3, "event_awareness_waitclear_ai" );
        level _ID42407::_ID1886( var_1 );
        level _ID42407::_ID1890( _ID42407::_ID31877, var_2 );
        level thread _ID42407::_ID11231();
        _ID42237::_ID3350( var_3, ::_ID13258, var_1 );
        level waittill( var_2 );
    }

    _ID42386::_ID17444( "_stealth_event", var_0 );
}

_ID13258( var_0 )
{
    level endon( var_0 );
    _ID13259();
    self notify( "event_awareness_waitclear_ai" );
}

_ID13259()
{
    self endon( "death" );
    waitframe;
    var_0 = 0;

    if ( isdefined( self._ID13019["_stealth_behavior_first_reaction"] ) )
        var_0 = _ID42407::_ID13019( "_stealth_behavior_first_reaction" );

    var_1 = 0;

    if ( isdefined( self._ID13019["_stealth_behavior_reaction_anim"] ) )
        var_1 = _ID42407::_ID13019( "_stealth_behavior_reaction_anim" );

    if ( !var_0 && !var_1 )
        return;

    _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID1985( _ID42407::_ID41116, "going_back" );
    _ID42407::_ID11232();
    self endon( "goal" );
    var_2 = _ID42237::_ID3296( getaiarray( "allies" ), level._ID805 );
    var_3 = level._ID1644._ID22585._ID10641["hidden"]["crouch"];
    var_4 = var_3 * var_3;
    var_5 = 1;

    if ( var_5 )
    {
        var_5 = 0;

        foreach ( var_7 in var_2 )
        {
            if ( distancesquared( self.origin, var_7.origin ) < var_4 )
                continue;

            var_5 = 1;
        }

        wait 1;
    }
}

_ID12847( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = self.team;

    for (;;)
    {
        if ( !isalive( self ) )
            return;

        self waittill( var_0,  var_4, var_5  );

        if ( isalive( self ) && !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        switch ( var_0 )
        {
            case "death":
                var_2 = var_4;
                break;
            case "damage":
                var_2 = var_5;
                break;
        }

        if ( !isdefined( var_2 ) )
            continue;

        if ( isplayernumber( var_2 ) || isdefined( var_2.team ) && var_2.team != var_3 )
            break;
    }

    if ( !isdefined( self ) )
        return;

    var_6 = getaispeciesarray( "bad_guys", "all" );
    var_7 = int( level._ID1644._ID22585._ID30[var_1][level._ID1644._ID22585._ID10660] );

    for ( var_8 = 0; var_8 < var_6.size; var_8++ )
    {
        if ( !isalive( var_6[var_8] ) )
            continue;

        if ( !isdefined( var_6[var_8]._ID1644 ) )
            continue;

        if ( distance( var_6[var_8].origin, self.origin ) > var_7 )
            continue;

        if ( var_6[var_8] _ID42407::_ID13023( "_stealth_behavior_asleep" ) && var_6[var_8] _ID42407::_ID13019( "_stealth_behavior_asleep" ) )
            continue;

        var_6[var_8] _ID42407::_ID13025( "_stealth_bad_event_listener" );
    }
}

_ID12882()
{
    self clearenemy();
    self._ID1644 = spawnstruct();
    self._ID1644._ID22585 = spawnstruct();
    _ID42407::_ID13024( "_stealth_enabled" );
    _ID42407::_ID13025( "_stealth_enabled" );
    _ID42407::_ID13024( "_stealth_normal" );
    _ID42407::_ID13025( "_stealth_normal" );
    _ID42407::_ID13024( "_stealth_attack" );
    _ID42386::_ID17445( "_stealth_spotted" );
    _ID42386::_ID17445( "_stealth_event" );
    _ID42386::_ID17445( "_stealth_found_corpse" );
    _ID42386::_ID17438();

    if ( !isdefined( level._ID1644._ID5029._ID34972["spotted"][self._ID31463] ) )
        level._ID1644._ID5029._ID34972["spotted"][self._ID31463] = 0;

    self._ID1644._ID22585._ID2503 = spawnstruct();
    self._ID1644._ID22585._ID2503._ID23071 = 0;
    _ID12765();
    _ID12849();
}

_ID12849()
{
    _ID42407::_ID13024( "_stealth_bad_event_listener" );
    self._ID1644._ID22585._ID13251 = spawnstruct();
    thread _ID12850();
    thread _ID12847( "damage", "ai_eventDistPain" );
    thread _ID12847( "death", "ai_eventDistDeath" );
    thread _ID12851();
    self._ID1644._ID22585._ID13251._ID4629 = [];
    self._ID1644._ID22585._ID13251._ID4627 = [];
    self._ID1644._ID22585._ID13251._ID4627["bulletwhizby"] = 1;
    self._ID1644._ID22585._ID13251._ID4627["projectile_impact"] = 1;
    self._ID1644._ID22585._ID13251._ID4627["gunshot_teammate"] = 1;
    self._ID1644._ID22585._ID13251._ID4627["grenade danger"] = 1;
    thread _ID12845( "ai_event" );
    thread _ID12845( "awareness_alert_level" );
    thread _ID12845( "awareness_corpse" );
}

_ID12771( var_0 )
{
    self._ID1644._ID22585._ID28337 = var_0;
}

_ID12765()
{
    self._ID1644._ID22585._ID28337 = ::_ID12901;
}
