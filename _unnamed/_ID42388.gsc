// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36373()
{
    _unknown_01CB();
    thread _unknown_0009();
}

_ID12947()
{
    self endon( "death" );
    self endon( "pain_death" );

    if ( self._ID1244 == "dog" )
        thread _unknown_004E();

    for (;;)
    {
        self waittill( "_stealth_enemy_alert_level_change",  var_0  );

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        _unknown_0052( var_0 );
    }
}

_ID12764( var_0 )
{
    _ID42407::_ID13025( "_stealth_enemy_alert_level_action" );
    var_1 = var_0;

    if ( _func_125( var_0, "warning" ) )
        var_1 = "warning";

    switch ( var_1 )
    {

    }

    case "reset":
    case "attack":
    case "warning":
}

_ID12944()
{
    self endon( "death" );
    self endon( "pain_death" );

    if ( !_ID42407::_ID13019( "_stealth_behavior_asleep" ) )
        return;

    _unknown_00E2();
    wait 0.5;
    _ID42407::_ID10226( 0.6, _ID42407::_ID13021, "_stealth_behavior_asleep" );
    self._ID507 = 0;
}

_ID12945()
{
    self endon( "pain" );
    self endon( "enemy" );
    _ID42237::_ID3350( level._ID805, ::_unknown_0127, self, 128 );

    for (;;)
    {
        self waittill( "event_awareness",  var_0  );

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        if ( var_0 == "heard_scream" || var_0 == "bulletwhizby" || var_0 == "projectile_impact" || var_0 == "explode" )
            return;
    }
}

_ID12946( var_0, var_1 )
{
    var_0 endon( "death" );
    self endon( "death" );

    if ( !var_0 _ID42407::_ID13019( "_stealth_behavior_asleep" ) )
        return;

    var_0 endon( "_stealth_behavior_asleep" );
    var_2 = var_1 * var_1;

    while ( _func_0F5( self._ID740, var_0._ID740 ) > var_2 && _ID42407::_ID13019( "_stealth_enabled" ) )
        wait 0.1;

    var_0._ID507 = 0;
    var_0._ID377 = self;
    wait 0.1;
    var_0._ID377 = undefined;
}

_ID12770()
{
    self endon( "_stealth_enemy_alert_level_change" );
    self endon( "enemy_awareness_reaction" );
    self endon( "death" );
    self endon( "pain_death" );
    _ID42389::_ID36333();
    _ID42386::_ID12929();
    _ID42407::_ID13021( "_stealth_enemy_alert_level_action" );

    if ( _func_02F( self._ID1644._ID28153._ID8751 ) )
    {
        _ID42407::_ID13021( "_stealth_saw_corpse" );
        _ID42407::_ID13021( "_stealth_found_corpse" );
    }

    _ID42407::_ID13021( "_stealth_attack" );
    _ID42407::_ID13025( "_stealth_normal" );
    var_0 = _ID42386::_ID2284( "threat", "reset" );
    self thread [[ var_0 ]]();
}

_ID12773( var_0 )
{
    var_1 = _ID42386::_ID17449( "_stealth_spotted" );
    self endon( "_stealth_enemy_alert_level_change" );
    level endon( var_1 );
    self endon( "death" );
    self endon( "pain_death" );
    self endon( "event_awareness" );
    _ID42386::_ID12870();
    _ID42386::_ID12929();
    var_2 = _ID42386::_ID2284( "threat", var_0 );
    self [[ var_2 ]]();
    _unknown_03A9();
}

_ID12892( var_0 )
{
    var_1 = self._ID411;
    self._ID411 = 0.1;
    _ID42386::_ID36360( "_stealth_look_around" );
    wait(var_0);
    _ID42407::_ID7869();
    self._ID411 = var_1;
}

_ID12790()
{
    self endon( "death" );
    wait 0.25;

    if ( _func_02F( self._ID322 ) && self _meth_81CA( self._ID322 ) )
    {
        _ID42386::_ID12795( "huh" );
        thread _ID42386::_ID12791();
    }
    else
        thread _ID42386::_ID12794();
}

_ID50459()
{
    if ( !_func_02F( level._ID54139 ) )
        level._ID54139 = 1;

    level._ID54139 = !level._ID54139;
    return level._ID54139;
}

_ID12774()
{
    if ( !_func_02F( self._ID322 ) )
        return;

    thread _unknown_0320();

    if ( _func_02F( self._ID31391 ) )
    {
        if ( self._ID1244 != "dog" )
        {
            var_0 = "a";

            if ( _unknown_0348() )
                var_0 = "b";

            _ID42386::_ID36361( "_stealth_patrol_search_" + var_0, 1 );
        }
        else
        {
            _ID42407::_ID32280();
            self._ID31246 = 1;
        }

        self._ID10998 = 1;
        self._ID11025 = 1;
    }
    else if ( self._ID1244 == "dog" )
    {
        _ID42407::_ID32280();
        self._ID31246 = 1;
        self._ID10998 = 1;
        self._ID11025 = 1;
    }

    var_1 = _func_119( self._ID322._ID740 - self._ID740 );
    var_2 = _func_0F3( self._ID322._ID740, self._ID740 );
    var_2 *= 0.25;
    var_2 = _func_0EE( var_2, 64, 128 );
    var_1 *= var_2;
    var_3 = self._ID740 + var_1 + ( 0, 0, 16 );
    var_4 = var_3 + ( 0, 0, -96 );
    var_3 = _func_091( var_3, var_4 );

    if ( var_3 == var_4 )
        return;

    _ID42407::_ID13025( "_stealth_override_goalpos" );
    self _meth_81B2( var_3 );
    self._ID452 = 64;
    _ID42237::_ID41123( "goal", 2 );

    if ( !self _meth_8169( self._ID740 ) )
        self._ID33812 = var_3 + ( 0, 0, 64 );

    _unknown_03F5( 10 );
    self._ID33812 = undefined;
}

_ID12775()
{
    if ( !_func_02F( self._ID322 ) )
        return;

    thread _unknown_040E();

    if ( self._ID1244 != "dog" )
        _ID42386::_ID36361( "_stealth_patrol_cqb" );
    else
    {
        _ID42407::_ID7892();
        self._ID31356 = 1;
        self._ID31246 = 1;
    }

    self._ID10998 = 0;
    self._ID11025 = 0;
    var_0 = self._ID322._ID740;
    var_1 = _func_0F3( var_0, self._ID740 );
    _ID42407::_ID13025( "_stealth_override_goalpos" );
    self _meth_81B2( var_0 );
    self._ID452 = var_1 * 0.5;
    self waittill( "goal" );

    if ( self._ID1244 != "dog" )
    {
        var_2 = "_stealth_patrol_search_a";

        if ( _unknown_047E() )
            var_2 = "_stealth_patrol_search_b";

        _ID42386::_ID36361( var_2, 1 );
    }
    else
    {
        _ID42386::_ID36246( self, "gravity", "_stealth_dog_stop" );
        _ID42407::_ID32280();
    }

    self _meth_81B2( var_0 );
    self._ID452 = 64;
    self._ID10998 = 1;
    self._ID11025 = 1;
    self waittill( "goal" );
    _unknown_04A4( 15 );

    if ( self._ID1244 != "dog" )
    {
        var_2 = "a";

        if ( _unknown_04CE() )
            var_2 = "b";

        _ID42386::_ID36361( "_stealth_patrol_search_" + var_2, 1 );
    }
    else
    {
        _ID42407::_ID32280();
        self._ID31246 = undefined;
    }
}

_ID12762()
{
    self endon( "death" );
    self endon( "pain_death" );
    self endon( "_stealth_enemy_alert_level_change" );

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
    {
        var_0 = self._ID740;
        self _meth_816A( var_0 );
    }
    else
        self notify( "endNewEnemyReactionAnim" );

    self notify( "movemode" );
    self._ID10998 = 0;
    self._ID11025 = 0;
    _ID42386::_ID12870();
    _ID42407::_ID13025( "_stealth_attack" );
    var_1 = _ID42386::_ID2284( "threat", "attack" );
    self [[ var_1 ]]();
}

_ID12761()
{
    thread _ID42386::_ID12797( self._ID740 );

    if ( _func_02F( self._ID31238 ) )
        thread _ID42372::_ID32338();
    else
        _unknown_061C();
}

_ID12811()
{
    var_0 = 2048;
    self._ID452 = var_0;

    if ( _func_02F( self._ID31461 ) && self._ID31461 == 1 )
        return;

    self endon( "death" );
    _ID42407::_ID13025( "_stealth_override_goalpos" );

    while ( _func_02F( self._ID322 ) && _ID42407::_ID13019( "_stealth_enabled" ) )
    {
        self _meth_81B2( self._ID322._ID740 );
        self._ID452 = var_0;

        if ( var_0 > 600 )
            var_0 *= 0.75;
        else
            return;

        wait 15;

        if ( _func_02F( self._ID31461 ) && self._ID31461 == 1 )
            return;
    }
}

_ID12769()
{
    _unknown_0708( "reset" );
    _ID42407::_ID13021( "_stealth_enemy_alert_level_action" );

    if ( _ID42407::_ID13023( "_stealth_saw_corpse" ) )
        _ID42407::_ID13031( "_stealth_saw_corpse" );

    wait 0.05;

    if ( _ID42407::_ID13023( "_stealth_found_corpse" ) )
        _ID42407::_ID13031( "_stealth_found_corpse" );

    _ID42407::_ID13025( "_stealth_normal" );
    var_0 = _ID42386::_ID2284( "threat", "normal" );
    self [[ var_0 ]]();
}

_ID12768()
{
    thread _ID42386::_ID12793();
    _ID42386::_ID12877();
}

_ID12882()
{
    _unknown_0737();
    _unknown_07D8();
    self._ID1644._ID28153._ID37658 = 1;
    self._ID31461 = 1;
    self._ID38 = "noncombat";
    self._ID686 = _func_0ED( level._ID1644._ID22585._ID30["ai_eventDistFootstepSprint"]["hidden"] );
}

_ID12835()
{
    var_0 = [];
    var_0["reset"] = ::_unknown_0758;
    var_0["warning1"] = ::_unknown_0666;
    var_0["warning2"] = ::_unknown_06BD;
    var_0["attack"] = ::_unknown_072B;
    var_0["normal"] = ::_unknown_0779;

    if ( !_func_02F( level._ID1644._ID22585._ID2504 ) )
    {
        level._ID1644._ID22585._ID2504 = [];
        level._ID1644._ID22585._ID2504["reset"] = "noncombat";
        level._ID1644._ID22585._ID2504["warning"] = "alert";
        level._ID1644._ID22585._ID2504["attack"] = "combat";
    }

    _unknown_0810( var_0 );
}

_ID12917( var_0 )
{
    self._ID38 = level._ID1644._ID22585._ID2504[var_0];
}

_ID12920( var_0 )
{
    self._ID1644._ID5029._ID2281["threat"] = [];

    if ( !_func_02F( var_0["reset"] ) )
        var_0["reset"] = ::_unknown_07FB;

    if ( !_func_02F( var_0["attack"] ) )
        var_0["attack"] = ::_unknown_07C7;

    if ( !_func_02F( var_0["normal"] ) )
        var_0["normal"] = ::_unknown_081F;

    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42386::_ID2261( "threat", var_3, var_2 );
    }

    var_clear_2
    self._ID1644._ID22585._ID2503._ID23071 = var_0.size - 3;
}

_ID12763( var_0 )
{
    self notify( "_stealth_enemy_alert_level_change",  var_0  );

    if ( !_func_02F( self._ID1644._ID28153._ID37658 ) )
    {
        self._ID452 = level._ID10115;
        return;
    }

    if ( _func_125( var_0, "warning" ) )
        var_0 = "warning";

    _unknown_08C3( var_0 );
    self notify( "awareness_alert_level",  var_0  );
}

_ID12942()
{
    var_0 = [];
    var_0["reset"] = _ID42375::_ID12784;
    var_0["warning"] = _ID42375::_ID12784;

    if ( self._ID1244 == "dog" )
        var_0["attack"] = _ID42375::_ID11400;
    else
        var_0["attack"] = _ID42375::_ID12778;

    return var_0;
}

_ID12919( var_0 )
{
    var_1 = _unknown_0943();

    if ( !_func_02F( var_0["reset"] ) )
        var_0["reset"] = var_1["reset"];

    if ( !_func_02F( var_0["warning"] ) )
        var_0["warning"] = var_1["warning"];

    if ( !_func_02F( var_0["attack"] ) )
        var_0["attack"] = var_1["attack"];

    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _ID42386::_ID2261( "animation", var_4, var_3 );
    }

    var_clear_2
}

_ID12834()
{
    var_0 = _unknown_09AB();
    _unknown_09C2( var_0 );
}
