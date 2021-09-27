// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36306()
{
    thread _unknown_0008();
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

        if ( !_func_02F( var_1[var_0] ) )
            continue;

        thread _unknown_0076( var_0 );
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
    _unknown_014A( var_2 );
}

_ID12855( var_0 )
{
    var_1 = self._ID1644._ID22585._ID13251._ID4629[var_0];

    if ( _ID42237::_ID20747() && self._ID912 == "<custom>" )
    {
        wait 0.05;
        self _meth_8177( 1 );
    }

    wait 0.05;

    if ( self._ID912 == "flashed" )
        self waittill( "stop_flashbang_effect" );

    var_2 = _ID42386::_ID12869( var_1, 300, 40 );

    if ( _func_02F( var_2 ) )
    {
        thread _ID42386::_ID12800();
        thread _ID42386::_ID12799( var_1 );
    }

    _unknown_01A6( var_2 );
}

_ID12854( var_0 )
{
    var_1 = self._ID1644._ID22585._ID13251._ID4629[var_0];
    wait 0.05;
    _ID42407::_ID13031( "_stealth_behavior_reaction_anim_in_progress" );
    var_2 = _ID42386::_ID12869( var_1, 300, 40 );
    thread _ID42386::_ID12800();
    _unknown_01D7( var_2 );
}

_ID12862( var_0 )
{
    return;
}

_ID12883( var_0, var_1, var_2 )
{
    if ( _func_02F( var_0 ) )
    {
        wait(_func_0B8( 1 ));

        if ( _func_02F( var_2 ) && var_2 )
            thread _ID42386::_ID12903( var_0, var_1 );

        thread _ID42386::_ID12914( var_0, var_1 );
        self._ID10998 = 0;
        self._ID11025 = 0;
        self waittill( "goal" );
        wait(_func_0BA( 15, 25 ));
    }
    else
        wait(_func_0BA( 1, 4 ));
}

_ID36310( var_0 )
{
    if ( !_func_02F( var_0 ) || !_ID42237::_ID3303( var_0, "heard_scream" ) )
        _unknown_0267( "heard_scream" );

    if ( !_func_02F( var_0 ) || !_ID42237::_ID3303( var_0, "doFlashBanged" ) )
        _unknown_0281( "doFlashBanged" );

    if ( !_func_02F( var_0 ) || !_ID42237::_ID3303( var_0, "explode" ) )
        _unknown_029B( "explode" );
}

_ID36309( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_02C8();
    var_5 = _unknown_02EC();

    if ( !_func_02F( var_1 ) )
        var_1 = var_4[var_0];

    if ( !_func_02F( var_2 ) )
        var_2 = var_5[var_0];

    if ( !_func_02F( var_3 ) )
        var_3 = _unknown_02FD( var_0 );

    _ID42386::_ID2261( "event", var_0, var_1 );
    _ID42386::_ID2261( "animation", var_0, var_2 );
    thread _ID42390::_ID12843( var_0 );

    if ( var_3 )
        self _meth_8043( var_0 );

    switch ( var_0 )
    {

    }

    case "explode":
}

_ID36305()
{
    var_0 = [];

    if ( self._ID1244 == "dog" )
    {
        var_0["heard_scream"] = ::_unknown_02DC;
        var_0["doFlashBanged"] = ::_unknown_02E5;
    }
    else
    {
        var_0["heard_scream"] = ::_unknown_02B3;
        var_0["doFlashBanged"] = ::_unknown_02CA;
    }

    var_0["explode"] = ::_unknown_02F1;
    return var_0;
}

_ID36308( var_0 )
{
    switch ( var_0 )
    {

    }

    case "heard_scream":
    case "doFlashBanged":
    case "explode":
    default:
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
