// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36306()
{
    thread _ID12852();
    self._ID1644._ID28153._ID13251 = 1;
}

_ID12852()
{
    self endon( "death" );
    self endon( "pain_death" );

    for (;;)
    {
        self waittill( "event_awareness",  var_0  );

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        if ( _ID42389::_ID36331() )
            continue;

        var_1 = self._ID1644._ID5029._ID2281["event"];

        if ( !isdefined( var_1[var_0] ) )
            continue;

        thread _ID12866( var_0 );
    }
}

_ID12866( var_0 )
{
    var_1 = _ID42386::_ID17449( "_stealth_spotted" );
    self endon( "_stealth_enemy_alert_level_change" );
    level endon( var_1 );
    self endon( "death" );
    waitframe;
    self endon( "enemy_awareness_reaction" );
    self endon( "event_awareness" );
    _ID42386::_ID12904();
    _ID42386::_ID12870();
    _ID42386::_ID12929();
    var_2 = self._ID1644._ID5029._ID2281["event"][var_0];
    self [[ var_2 ]]( var_0 );
    _ID42388::_ID12763( "reset" );
}

_ID12859( var_0 )
{
    var_1 = self._ID1644._ID22585._ID13251._ID4629[var_0];
    wait 0.05;
    _ID42407::_ID13031( "_stealth_behavior_reaction_anim_in_progress" );
    var_2 = _ID42386::_ID12869( var_1, 300, 40 );
    _ID12883( var_2 );
}

_ID12855( var_0 )
{
    var_1 = self._ID1644._ID22585._ID13251._ID4629[var_0];

    if ( _ID42237::_ID20747() && self._ID912 == "<custom>" )
    {
        wait 0.05;
        self setflashbanged( 1 );
    }

    wait 0.05;

    if ( self._ID912 == "flashed" )
        self waittill( "stop_flashbang_effect" );

    var_2 = _ID42386::_ID12869( var_1, 300, 40 );

    if ( isdefined( var_2 ) )
    {
        thread _ID42386::_ID12800();
        thread _ID42386::_ID12799( var_1 );
    }

    _ID12883( var_2 );
}

_ID12854( var_0 )
{
    var_1 = self._ID1644._ID22585._ID13251._ID4629[var_0];
    wait 0.05;
    _ID42407::_ID13031( "_stealth_behavior_reaction_anim_in_progress" );
    var_2 = _ID42386::_ID12869( var_1, 300, 40 );
    thread _ID42386::_ID12800();
    _ID12883( var_2 );
}

_ID12862( var_0 )
{
    return;
}

_ID12883( var_0, var_1, var_2 )
{
    if ( isdefined( var_0 ) )
    {
        wait(randomfloat( 1 ));

        if ( isdefined( var_2 ) && var_2 )
            thread _ID42386::_ID12903( var_0, var_1 );

        thread _ID42386::_ID12914( var_0, var_1 );
        self._ID10998 = 0;
        self._ID11025 = 0;
        self waittill( "goal" );
        wait(randomfloatrange( 15, 25 ));
    }
    else
        wait(randomfloatrange( 1, 4 ));
}

_ID36310( var_0 )
{
    if ( !isdefined( var_0 ) || !_ID42237::_ID3303( var_0, "heard_scream" ) )
        _ID36309( "heard_scream" );

    if ( !isdefined( var_0 ) || !_ID42237::_ID3303( var_0, "doFlashBanged" ) )
        _ID36309( "doFlashBanged" );

    if ( !isdefined( var_0 ) || !_ID42237::_ID3303( var_0, "explode" ) )
        _ID36309( "explode" );
}

_ID36309( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID36305();
    var_5 = _ID36304();

    if ( !isdefined( var_1 ) )
        var_1 = var_4[var_0];

    if ( !isdefined( var_2 ) )
        var_2 = var_5[var_0];

    if ( !isdefined( var_3 ) )
        var_3 = _ID36308( var_0 );

    _ID42386::_ID2261( "event", var_0, var_1 );
    _ID42386::_ID2261( "animation", var_0, var_2 );
    thread _ID42390::_ID12843( var_0 );

    if ( var_3 )
        self addaieventlistener( var_0 );

    switch ( var_0 )
    {
        case "explode":
            self._ID509 = 1;
            break;
    }
}

_ID36305()
{
    var_0 = [];

    if ( self._ID1244 == "dog" )
    {
        var_0["heard_scream"] = ::_ID12862;
        var_0["doFlashBanged"] = ::_ID12862;
    }
    else
    {
        var_0["heard_scream"] = ::_ID12859;
        var_0["doFlashBanged"] = ::_ID12855;
    }

    var_0["explode"] = ::_ID12854;
    return var_0;
}

_ID36308( var_0 )
{
    switch ( var_0 )
    {
        case "heard_scream":
            return 0;
        case "doFlashBanged":
            return 0;
        case "explode":
            return 0;
        default:
            return 0;
    }
}

_ID36304()
{
    var_0 = [];
    var_0["doFlashBanged"] = _ID42375::_ID12784;

    if ( self._ID1244 == "dog" )
    {
        var_0["heard_scream"] = _ID42375::_ID11400;
        var_0["explode"] = _ID42375::_ID11403;
    }
    else
    {
        var_0["heard_scream"] = _ID42375::_ID12782;
        var_0["explode"] = _ID42375::_ID12782;
    }

    return var_0;
}
