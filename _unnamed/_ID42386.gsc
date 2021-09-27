// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID2311( var_0, var_1 )
{
    self endon( "death" );
    var_1 += "spotted";
    self notify( var_1 );
    self endon( var_1 );

    switch ( self._ID1194 )
    {

    }

    case "team3":
    case "allies":
    case "axis":
}

_ID2310( var_0, var_1 )
{
    self endon( "death" );
    var_1 += "hidden";
    self notify( var_1 );
    self endon( var_1 );

    switch ( self._ID1194 )
    {

    }

    case "team3":
    case "allies":
    case "axis":
}

_ID2261( var_0, var_1, var_2 )
{
    self._ID1644._ID5029._ID2281[var_0][var_1] = var_2;
}

_ID2284( var_0, var_1 )
{
    return self._ID1644._ID5029._ID2281[var_0][var_1];
}

_ID2324( var_0 )
{
    self._ID1644._ID5029._ID16985 = var_0;
}

_ID36311( var_0 )
{
    if ( var_0 == "heard_scream" || var_0 == "doFlashBanged" || var_0 == "explode" )
        return 1;

    return 0;
}

_ID36279( var_0 )
{

}

_ID12846( var_0 )
{
    _func_036( "stealth_debug_prints", "0" );

    if ( !_func_02F( _func_039( "stealth_debug_prints" ) ) )
        _func_034( "stealth_debug_prints", "0" );

    if ( _func_03A( "stealth_debug_prints" ) != 1 )
        return;
}

_ID36314( var_0 )
{

}

_ID17445( var_0 )
{
    if ( _func_02F( self._ID31463 ) )
        self._ID31463 = _ID42407::_ID36694( self._ID31463 );
    else
        self._ID31463 = "default";

    var_1 = _unknown_0263( var_0 );

    if ( !_ID42237::_ID14396( var_1 ) )
    {
        _ID42237::_ID14400( var_1 );

        if ( !_func_02F( level._ID1644._ID17437._ID14446[var_0] ) )
            level._ID1644._ID17437._ID14446[var_0] = [];

        var_2 = level._ID1644._ID17437._ID14446[var_0].size;
        level._ID1644._ID17437._ID14446[var_0][var_2] = var_1;
    }
}

_ID17438()
{
    if ( !_func_02F( level._ID1644._ID17437._ID17473[self._ID31463] ) )
    {
        level._ID1644._ID17437._ID17473[self._ID31463] = [];
        level._ID1644._ID17437 notify( self._ID31463 );
    }

    var_0 = level._ID1644._ID17437._ID17473[self._ID31463].size;
    level._ID1644._ID17437._ID17473[self._ID31463][var_0] = self;
}

_ID17449( var_0 )
{
    return _unknown_02F4( var_0, self._ID31463 );
}

_ID17450( var_0, var_1 )
{
    var_2 = var_0 + "-Group:" + var_1;
    return var_2;
}

_ID17446( var_0 )
{
    var_1 = _unknown_0307( var_0 );
    _ID42237::_ID14402( var_1 );
    _ID42237::_ID14402( var_0 );
}

_ID17461( var_0 )
{
    var_1 = [];
    var_2 = level._ID1644._ID17437._ID17473;
    var_3 = var_2;

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];
        var_5 = _unknown_033E( var_0, var_6 );

        if ( _ID42237::_ID14385( var_5 ) )
            var_1[var_1.size] = var_6;
    }

    var_clear_3
    return var_1;
}

_ID17460( var_0 )
{
    var_1 = [];
    var_2 = level._ID1644._ID17437._ID17473;
    var_3 = var_2;

    for ( var_7 = _func_1DA( var_3 ); _func_02F( var_7 ); var_7 = _func_1BF( var_3, var_7 ) )
    {
        var_4 = var_3[var_7];
        var_5 = _unknown_037C( var_0, var_7 );

        if ( _ID42237::_ID14385( var_5 ) )
        {
            var_6 = _ID17444( var_7 );
            var_1 = _ID42407::_ID3317( var_1, var_6 );
        }
    }

    var_clear_3
    return var_1;
}

_ID17444( var_0, var_1 )
{
    var_2 = _unknown_03A7( var_0, var_1 );
    _ID42237::_ID14388( var_2 );
    var_3 = level._ID1644._ID17437._ID14446[var_0];
    var_4 = 1;
    var_5 = var_3;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _ID42237::_ID14385( var_6 ) )
            return;
    }

    var_clear_2
    _ID42237::_ID14388( var_0 );
}

_ID17448( var_0 )
{
    level._ID1644._ID17437._ID17473[var_0] = _ID42407::_ID3328( level._ID1644._ID17437._ID17473[var_0] );
    return level._ID1644._ID17437._ID17473[var_0];
}

_ID17468( var_0 )
{
    if ( !_func_02F( level._ID1644._ID17437._ID17473[var_0] ) )
        level._ID1644._ID17437 waittill( var_0 );
}

_ID2342()
{
    self endon( "death" );
    self endon( "pain_death" );

    for (;;)
    {
        _ID42407::_ID13031( "_stealth_enabled" );
        var_0 = self._ID1644._ID5029._ID2281["state"]["spotted"];

        switch ( self._ID1194 )
        {

        }

        _ID42407::_ID13027( "_stealth_enabled" );
        var_1 = self._ID1644._ID5029._ID2281["state"]["hidden"];
        self [[ var_1 ]]();
        case "team3":
        case "allies":
        case "axis":
    }
}

_ID12877()
{
    self notify( "going_back" );
    self endon( "death" );
    self notify( "stop_loop" );
    self._ID1644._ID9995 = "Going Back";

    if ( _func_02F( self._ID1644._ID5029._ID16985 ) )
        self [[ self._ID1644._ID5029._ID16985 ]]();

    var_0 = self._ID1644._ID5029._ID21856;

    if ( _func_02F( var_0 ) && self._ID1244 != "dog" && !_func_02F( self._ID9575 ) && !_func_02F( self._ID23165 ) )
        self._ID9575 = _ID42338::_ID26389;

    if ( _func_02F( self._ID9575 ) && _func_02F( self._ID762 ) )
    {
        self _meth_81B2( self._ID740 );
        wait 0.05;
    }

    if ( _func_02F( self._ID31391 ) )
    {
        if ( _func_02F( self._ID21832 ) )
            self._ID1191 = self._ID21832._ID1193;

        if ( _func_02F( self._ID36313 ) )
        {
            self._ID1191 = self._ID36313._ID1193;
            self._ID36313 = undefined;
        }

        thread _ID42338::_ID26367();
    }
    else if ( _func_1A7( self._ID26385 ) )
    {
        thread _ID42338::_ID26602();
        _ID42407::_ID32280();
        self._ID31246 = undefined;
    }
    else if ( _func_02F( var_0 ) )
    {
        if ( self._ID1244 != "dog" )
            _unknown_0A26( "_stealth_patrol_walk", 1 );
        else
        {
            _ID42407::_ID32280();
            self._ID31246 = undefined;
        }

        self._ID10998 = 1;
        self._ID11025 = 1;
        self _meth_81B2( var_0 );
        self._ID452 = 40;
    }

    waitframe;
    _ID42407::_ID13021( "_stealth_override_goalpos" );

    if ( _func_02F( var_0 ) )
        thread _unknown_067B( var_0 );
}

_ID12878( var_0 )
{
    self endon( "death" );
    self endon( "_stealth_enemy_alert_level_change" );
    _ID42407::_ID41159( var_0 );
    self._ID1644._ID5029._ID21856 = undefined;
}

_ID12876( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    if ( _func_02F( level._ID1644._ID24875._ID24893 ) && _func_0F5( var_0, level._ID1644._ID24875._ID740 ) < 4096 && var_1 == level._ID1644._ID24875._ID851 && var_2 == level._ID1644._ID24875._ID23605 )
        return level._ID1644._ID24875._ID24893;

    level._ID1644._ID24875._ID740 = var_0;
    level._ID1644._ID24875._ID851 = var_1;
    level._ID1644._ID24875._ID23605 = var_2;
    level._ID1644._ID24875._ID24893 = _func_0CB( var_0, var_1, var_2, 512, "Path" );
    return level._ID1644._ID24875._ID24893;
}

_ID12904()
{
    self._ID411 = 0.01;
    self._ID507 = 0;
    self._ID287 = 0;
    _ID42407::_ID7892();
    self._ID381 = 0;
}

_ID12766( var_0, var_1 )
{
    self endon( "death" );
    var_0 endon( "death" );

    if ( !_func_02F( var_1 ) )
        var_1 = 60;

    wait(var_1);

    if ( _func_02F( var_0._ID1644 ) && _func_02F( var_0._ID1644._ID22585._ID35478[self._ID39468] ) && var_0._ID1644._ID22585._ID35478[self._ID39468] > 0 )
        var_0._ID1644._ID22585._ID35478[self._ID39468]--;
}

_ID12929()
{
    if ( !_ID42407::_ID13019( "_stealth_behavior_reaction_anim" ) )
    {
        _ID42407::_ID3136();
        self notify( "stop_animmode" );
        self notify( "stop_loop" );
    }

    if ( _func_02F( self._ID31391 ) )
    {
        if ( _func_02F( self._ID21832 ) )
            self._ID21832._ID26378 = undefined;

        self notify( "release_node" );
        self notify( "end_patrol" );
    }

    self notify( "stop_first_frame" );
    _ID42407::_ID7892();
    _ID42407::_ID7869();
}

_ID12870()
{
    if ( _func_02F( self._ID1644._ID5029._ID21856 ) )
        return;

    if ( _func_02F( self._ID21851 ) )
        self._ID1644._ID5029._ID21856 = self._ID21851._ID740;
    else if ( _func_02F( self._ID21850 ) )
        self._ID1644._ID5029._ID21856 = self._ID21850._ID740;
    else if ( _func_02F( self._ID21852 ) )
        self._ID1644._ID5029._ID21856 = self._ID21852;
    else
        self._ID1644._ID5029._ID21856 = self._ID740;
}

_ID12918( var_0 )
{
    self._ID1644._ID5029._ID21856 = var_0;
}

_ID12903( var_0, var_1 )
{
    self notify( "enemy_react_and_displace_to" );
    self endon( "enemy_react_and_displace_to" );
    self endon( "death" );
    self endon( "_stealth_enemy_alert_level_change" );

    if ( self._ID1244 == "dog" )
        return;

    if ( _func_02F( var_0 ) )
        var_2 = var_0._ID740;
    else
        var_2 = var_1;

    var_3 = _func_11F( self._ID65 );
    var_4 = _func_119( var_3 );
    var_5 = _func_11A( var_4 );
    var_6 = _func_11A( var_2 - self._ID740 );
    var_7 = var_5[1] - var_6[1];
    var_7 += 360;
    var_7 = _func_0C1( var_7 ) % 360;

    if ( var_7 > 315 || var_7 < 45 )
        var_8 = "8";
    else if ( var_7 < 135 )
        var_8 = "6";
    else if ( var_7 < 225 )
        var_8 = "2";
    else
        var_8 = "4";

    if ( _func_02F( self._ID23165 ) )
        _unknown_0CD8( self, "gravity", "mech_stealth_idle_to_run_" + var_8 );
    else
        _unknown_0CE7( self, "gravity", "_stealth_idle_to_run_" + var_8 );
}

_ID12914( var_0, var_1 )
{
    self notify( "enemy_runto_and_lookaround" );
    self endon( "enemy_runto_and_lookaround" );
    self endon( "death" );
    self endon( "_stealth_enemy_alert_level_change" );

    if ( self._ID1244 != "dog" )
        self endon( "_stealth_saw_corpse" );

    var_2 = _unknown_0839( "_stealth_spotted" );
    level endon( var_2 );
    self notify( "stop_loop" );
    _ID42407::_ID13025( "_stealth_override_goalpos" );

    if ( _func_02F( var_0 ) )
        self _meth_81B1( var_0 );
    else
        self _meth_81B2( var_1 );

    self._ID452 = 64;
    self waittill( "goal" );

    if ( self._ID1244 != "dog" )
        _unknown_0D46( "_stealth_look_around" );
}

_ID12905( var_0 )
{
    self notify( "enemy_reactto_and_lookaround" );
    self endon( "enemy_reactto_and_lookaround" );
    self endon( "death" );
    self endon( "_stealth_enemy_alert_level_change" );

    if ( self._ID1244 != "dog" )
        self endon( "_stealth_saw_corpse" );

    var_1 = _unknown_08A8( "_stealth_spotted" );
    level endon( var_1 );
    self notify( "stop_loop" );
    self _meth_819B( "face angle", _func_11B( var_0 - self._ID740 ) );

    if ( self._ID1244 != "dog" )
        _ID42259::_ID3021( self, "gravity", "_stealth_look_around" );
}

_ID12869( var_0, var_1, var_2 )
{
    var_3 = _unknown_09D0( var_0, var_1, var_2 );

    if ( !_func_02F( var_3 ) || var_3.size == 0 )
        return;

    var_4 = var_3[_func_0B7( var_3.size )];

    for ( var_3 = _ID42237::_ID3321( var_3, var_4 ); _func_02F( var_4._ID743 ); var_3 = _ID42237::_ID3321( var_3, var_4 ) )
    {
        if ( var_3.size == 0 )
            return;

        var_4 = var_3[_func_0B7( var_3.size )];
    }

    level._ID1644._ID24875._ID24893 = var_3;
    return var_4;
}

_ID12868( var_0, var_1, var_2 )
{
    var_3 = _unknown_0A20( var_0, var_1, var_2 );

    if ( !_func_02F( var_3 ) || var_3.size == 0 )
        return;

    var_3 = _func_1C0( var_3, var_0 );
    var_4 = var_3[0];

    for ( var_3 = _ID42237::_ID3321( var_3, var_4 ); _func_02F( var_4._ID743 ); var_3 = _ID42237::_ID3321( var_3, var_4 ) )
    {
        if ( var_3.size == 0 )
            return;

        var_4 = var_3[0];
    }

    level._ID1644._ID24875._ID24893 = var_3;
    return var_4;
}

_ID12800()
{
    if ( self._ID1244 == "dog" )
        return;

    if ( !_unknown_0C78( "wtf" ) )
        return;

    var_0 = _unknown_0E95();

    if ( _func_031( var_0 ) && _func_031( self._ID25173 ) )
    {
        var_1 = var_0 + self._ID25173 + "_anexplosion";
        _ID42494::_ID34619( var_1, "stop_sound" );
    }
}

_ID12794()
{
    if ( self._ID1244 == "dog" )
        return;

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    if ( !_unknown_0CBD( "huh" ) )
        return;

    var_0 = _unknown_0EDA();

    if ( _func_031( var_0 ) && _func_031( self._ID25173 ) )
    {
        var_1 = var_0 + self._ID25173 + "_huh";
        _ID42494::_ID34619( var_1, "stop_sound" );
    }
}

_ID12793()
{
    if ( self._ID1244 == "dog" )
        return;

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    if ( !_unknown_0D02( "hmph" ) )
        return;

    var_0 = _unknown_0F1F();

    if ( _func_031( var_0 ) && _func_031( self._ID25173 ) )
    {
        var_1 = var_0 + self._ID25173 + "_hmph";
        _ID42494::_ID34619( var_1, "stop_sound" );
    }
}

_ID12791()
{
    self endon( "death" );
    self endon( "pain_death" );

    if ( self._ID1244 == "dog" )
        return;

    if ( !_unknown_0D47( "spotted" ) )
        return;

    var_0 = _unknown_0F64();

    if ( _func_031( var_0 ) && _func_031( self._ID25173 ) )
    {
        var_1 = var_0 + self._ID25173 + "_stealth_alert";
        _ID42494::_ID34619( var_1, "stop_sound" );
    }
}

_ID12797( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    _ID42389::_ID36332();

    if ( self._ID1244 == "dog" )
        return;

    if ( _unknown_0D91( "spotted" ) )
    {
        thread _unknown_0D59( var_0 );
        var_1 = _unknown_0FB3();
        var_2 = var_1 + self._ID25173 + "_stealth_alert";
        _ID42494::_ID34619( var_2, "stop_sound" );
    }

    if ( _unknown_0DB9( "acknowledge" ) )
        thread _unknown_0D77( self._ID740, _unknown_0FD6() );
}

_ID12798( var_0, var_1 )
{
    wait 1.5;

    if ( _func_02F( self._ID25173 ) )
        var_2 = self._ID25173;
    else
        var_2 = _func_0B7( 3 );

    var_3 = var_1 + var_2 + "_stealth_alert_r";
    _ID42237::_ID27077( var_3, var_0 );
}

_ID12799( var_0 )
{
    var_1 = _unknown_0B5C( self._ID31463 );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == self )
            continue;

        if ( _func_02F( var_3._ID322 ) || _func_02F( var_3._ID377 ) )
            continue;

        var_3 notify( "heard_scream",  var_0  );
    }

    var_clear_2
}

_ID12792()
{
    self endon( "death" );

    if ( _func_02F( self._ID14837 ) )
        wait(self._ID14837);

    if ( !_unknown_0E50( "corpse" ) )
        return;

    if ( self._ID1244 == "dog" )
    {
        _ID42407::_ID13031( "_stealth_behavior_reaction_anim_in_progress" );
        self notify( "event_awareness",  "howl"  );
        return;
    }

    if ( _ID42237::_ID54738() == "LANGUAGE_RUSSIAN" || _ID42237::_ID54738() == "LANGUAGE_RUSSIAN_PARTIAL" )
        var_0 = "RUS_stealth_" + self._ID25173 + "_deadbody";
    else
        var_0 = "stealth_" + self._ID25173 + "_deadbody";

    _ID42494::_ID34619( var_0, "stop_sound" );
}

_ID12795( var_0 )
{
    if ( _func_1FB() )
        return 0;

    if ( var_0 == "spotted" )
    {
        if ( level._ID1644._ID5029._ID34972[var_0][self._ID31463] )
            return 0;

        level._ID1644._ID5029._ID34972[var_0][self._ID31463] = 1;
    }
    else
    {
        if ( level._ID1644._ID5029._ID34972[var_0] )
            return 0;

        level._ID1644._ID5029._ID34972[var_0] = 1;
        thread _unknown_0F17( var_0 );
    }

    return 1;
}

_ID12796( var_0 )
{
    wait(level._ID1644._ID5029._ID34984);
    level._ID1644._ID5029._ID34972[var_0] = 0;
}

_ID12789( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );

    if ( _unknown_0FB3( var_0 ) )
        return;

    _unknown_0F5E( var_0 );
    _unknown_1005( var_0 );
}

_ID12780( var_0 )
{
    if ( _func_02F( self._ID1644._ID5029._ID13251._ID54123 ) )
    {
        if ( self [[ self._ID1644._ID5029._ID13251._ID54123 ]]( var_0 ) )
            return;
    }
    else if ( _func_02F( self._ID1644._ID5029._ID13251._ID9525 ) )
    {
        if ( self._ID1644._ID5029._ID13251._ID9525._ID3183 != "smoke_react" )
        {
            _unknown_0FDF( var_0 );
            return;
        }
        else if ( _func_0F3( level._ID794._ID740, self._ID740 ) >= 300 )
        {
            _unknown_0FF8( var_0 );
            return;
        }
    }

    var_1 = self._ID1644._ID5029._ID2281["animation"][var_0];
    self [[ var_1 ]]( var_0 );
}

_ID12779( var_0 )
{
    var_1 = self._ID1644._ID5029._ID13251._ID9525._ID700;
    var_2 = self._ID1644._ID5029._ID13251._ID9525._ID3183;
    var_3 = self._ID1644._ID5029._ID13251._ID9525._ID1067;
    var_4 = self._ID1644._ID5029._ID13251._ID9525._ID12638;
    _ID42407::_ID13025( "_stealth_behavior_reaction_anim" );
    self._ID49 = 1;
    var_1 notify( var_4 );

    if ( _func_02F( self._ID3057 ) )
    {
        self._ID3058 = 1;
        self._ID54288 = _func_03D();
        var_1 thread _ID42259::_ID3099( self._ID3057, var_2 );
    }

    if ( var_0 != "doFlashBanged" )
    {
        if ( _func_02F( var_3 ) || _func_02F( self._ID18156 ) )
            var_1 _unknown_123B( self, var_2, var_3 );
        else
            var_1 _unknown_1235( self, "gravity", var_2 );
    }

    _unknown_1126();
}

_ID12786( var_0 )
{
    self notify( "enemy_awareness_reaction",  var_0  );

    if ( _ID42407::_ID13019( "_stealth_behavior_first_reaction" ) || _ID42407::_ID13019( "_stealth_behavior_reaction_anim_in_progress" ) )
        return 1;

    _unknown_0EBB();

    if ( _func_125( var_0, "warning" ) )
        var_0 = "warning";

    switch ( var_0 )
    {

    }

    _ID42407::_ID13025( "_stealth_behavior_reaction_anim_in_progress" );
    return 0;
    case "reset":
    case "found_corpse":
    case "saw_corpse":
    case "heard_corpse":
    case "warning":
    case "explode":
    default:
}

_ID12787()
{
    var_0 = _unknown_0E0E( "_stealth_spotted" );
    self endon( "death" );
    _ID42237::_ID14425( var_0, 3 );

    if ( _ID42237::_ID14385( var_0 ) )
        _ID42407::_ID13025( "_stealth_behavior_first_reaction" );
}

_ID12785( var_0 )
{
    switch ( var_0 )
    {

    }

    _ID42407::_ID13021( "_stealth_behavior_reaction_anim_in_progress" );
    default:
}

_ID2249()
{
    self._ID1644._ID5029._ID13251._ID9525 = undefined;
    self._ID686 = _func_0ED( 512 );
}

_ID2250( var_0 )
{
    if ( !_func_02F( self._ID1644._ID5029._ID13251._ID9525 ) )
        return;

    self._ID1644._ID5029._ID13251._ID9525._ID700 notify( "stop_loop" );

    if ( !_func_02F( var_0 ) || var_0 == 0 )
        self _meth_814B();

    _unknown_1268();
}

_ID2323( var_0, var_1, var_2, var_3 )
{
    self._ID1644._ID5029._ID13251._ID9525 = _func_1A5();
    self._ID1644._ID5029._ID13251._ID9525._ID700 = var_0;
    self._ID1644._ID5029._ID13251._ID9525._ID3183 = var_1;
    self._ID1644._ID5029._ID13251._ID9525._ID1067 = var_2;
    self._ID1644._ID5029._ID13251._ID9525._ID12638 = var_3;

    if ( _func_02F( level._ID43687 ) && _func_02F( level._ID43687[var_0._ID31039] ) )
        self._ID1644._ID5029._ID13251._ID54123 = level._ID43687[var_0._ID31039];

    thread _unknown_132F( var_0, var_1, var_2, var_3 );
    self._ID686 = 0;
}

_ID2236( var_0, var_1, var_2, var_3 )
{
    wait 0.1;

    if ( !_func_02F( self._ID3057 ) )
        return;

    var_4 = self._ID3057;
    self waittill( "death" );

    if ( _func_02F( self._ID3058 ) )
        return;

    var_0 thread _ID42259::_ID3099( var_4, var_1 );
}

_ID13257( var_0, var_1 )
{
    level notify( "event_awareness_handler" );
    level endon( "event_awareness_handler" );
    level endon( "default_event_awareness_enders" );
    _unknown_13B7( var_1 );
    _ID42407::_ID1985( _ID42407::_ID41116, "event_awareness_handler" );
    _ID42407::_ID1985( _ID42407::_ID41116, "default_event_awareness_enders" );
    _ID42407::_ID1890( _ID42237::_ID14388, "_stealth_event" );
    thread _ID42407::_ID11232();

    for (;;)
    {
        _ID42237::_ID14413( "_stealth_enabled" );
        _ID42237::_ID14413( "_stealth_event" );

        if ( !_ID42237::_ID14385( "_stealth_enabled" ) )
            continue;

        wait 2;
        _unknown_13F8( var_0 );
        _ID42237::_ID14426( "_stealth_event" );
    }
}

_ID13255( var_0 )
{
    wait(_func_0BA( 0.5, 1 ));

    if ( !_func_02F( var_0 ) )
        return;

    var_1 = _ID42237::_ID28945( var_0 );
    level thread _ID42407::_ID15093( _ID42407::_ID28864, var_1 );
}

_ID13256( var_0 )
{
    level endon( "default_event_awareness_enders" );
    level endon( "event_awareness_handler" );

    if ( _func_02F( var_0 ) )
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( _ID42237::_ID14396( var_2 ) && _ID42237::_ID14385( var_2 ) )
                level notify( "default_event_awareness_enders" );
        }

        var_clear_2
        var_clear_0
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];
            _ID42407::_ID1985( _ID42407::_ID41116, var_2 );
        }

        var_clear_1
        var_clear_0
    }

    _ID42407::_ID1985( _ID42237::_ID14413, "_stealth_spotted" );
    _ID42407::_ID1985( _ID42407::_ID41116, "end_event_awareness_handler" );
    _ID42407::_ID1985( _ID42407::_ID41116, "event_awareness_handler" );
    _ID42407::_ID1890( _ID42407::_ID31877, "default_event_awareness_enders" );
    thread _ID42407::_ID11232();
}

_ID1378()
{
    if ( !_ID42389::_ID36337() )
        return 0;

    if ( _ID42237::_ID14385( "_stealth_player_nade" ) )
        return 0;

    if ( level._ID794 _ID42407::_ID13023( "_radiation_poisoning" ) )
    {
        if ( level._ID794 _ID42407::_ID13019( "_radiation_poisoning" ) )
            return 0;
    }

    var_0 = _func_1A2( "destructible", "classname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID18315 ) )
            return 0;
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A2( "grenade", "classname" );

    if ( var_4.size > 0 )
        return 0;

    return 1;
}

_ID1547()
{
    var_0 = _ID42389::_ID36321();
    var_1 = _ID42389::_ID36320();
    _ID42407::_ID1985( _ID42237::_ID14413, var_0 );
    _ID42407::_ID1985( _ID42237::_ID14413, var_1 );
    _ID42407::_ID1841( _ID42407::_ID41116, "death" );
    _ID42407::_ID1890( _ID42407::_ID31877, "end_patrol" );
    thread _ID42407::_ID11232();
}

_ID1639()
{
    thread _ID42389::_ID36280();
}

_ID36361( var_0, var_1 )
{
    if ( _func_02F( self._ID31039 ) && _func_02F( level._ID30895["generic"][var_0 + "_" + self._ID31039] ) )
    {
        _ID42407::_ID32328( var_0 + "_" + self._ID31039, var_1 );
        return;
    }

    _ID42407::_ID32328( var_0, var_1 );
}

_ID36360( var_0 )
{
    if ( _func_02F( self._ID31039 ) && _func_02F( level._ID30895["generic"][var_0 + "_" + self._ID31039] ) )
    {
        _ID42407::_ID32327( var_0 + "_" + self._ID31039 );
        return;
    }

    _ID42407::_ID32327( var_0 );
}

_ID36246( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_0._ID31039 ) && _func_02F( level._ID30895["generic"][var_2 + "_" + var_0._ID31039] ) )
    {
        _ID42259::_ID3000( var_0, var_1, var_2 + "_" + var_0._ID31039, var_3 );
        return;
    }

    _ID42259::_ID3021( var_0, var_1, var_2, var_3 );
}

_ID36245( var_0, var_1, var_2 )
{
    if ( _func_02F( var_0._ID31039 ) && _func_02F( level._ID30895["generic"][var_1 + "_" + var_0._ID31039] ) )
    {
        _ID42259::_ID3111( var_0, var_1 + "_" + var_0._ID31039, var_2 );
        return;
    }

    _ID42259::_ID3020( var_0, var_1, var_2 );
}

_ID15643()
{
    var_0 = self._ID40757;

    switch ( var_0 )
    {

    }

    case "atlas":
    case "kva":
    case "african":
    case "arab":
    case "british":
    case "shadowcompany":
    case "russian":
    case "secretservice":
    case "seal":
    case "taskforce":
    case "french":
    case "czech":
    case "pmc":
    case "american":
    case "delta":
    default:
}
