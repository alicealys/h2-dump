// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID51427()
{
    if ( !_func_02F( level._ID49405 ) )
        level._ID49405 = "none";

    if ( level._ID49405 != "huddle" )
    {
        self.patrolset = "huddle";
        self._ID26393["patrol_start"] = "patrol_cold_huddle_start";
        self.patrol_turn180 = "patrol_cold_huddle_turn180";
        self._ID26394["patrol_stop"] = "patrol_cold_huddle_stop";
        self._ID26395 = "patrol_cold_huddle";
        self._ID26396 = "patrol_twitch_weights";
        self._ID26391["pause"][0] = "patrol_cold_huddle_pause";
        self._ID26394["pause"] = "patrol_cold_huddle_stop";
        self._ID26393["pause"] = "patrol_cold_huddle_start";
        self._ID26394["path_end_idle"] = "patrol_cold_huddle_stop";
        self._ID26382[0] = "patrol_cold_huddle_pause";
        level._ID49405 = "huddle";
    }
    else
    {
        self.patrolset = "crossed";
        self._ID26393["patrol_start"] = "patrol_cold_crossed_start";
        self.patrol_turn180 = "patrol_cold_crossed_turn180";
        self._ID26394["patrol_stop"] = "patrol_cold_crossed_stop";
        self._ID26395 = "patrol_cold_crossed";
        self._ID26396 = "patrol_twitch_weights";
        self._ID26391["pause"][0] = "patrol_cold_crossed_pause";
        self._ID26394["pause"] = "patrol_cold_crossed_stop";
        self._ID26393["pause"] = "patrol_cold_crossed_start";
        self._ID26394["path_end_idle"] = "patrol_cold_crossed_stop";
        self._ID26382[0] = "patrol_cold_crossed_pause";
        level._ID49405 = "crossed";
    }
}

_ID46887()
{
    self._ID26395 = undefined;
    self._ID26396 = undefined;
    self._ID26391 = undefined;
    self._ID26394 = undefined;
    self._ID26393 = undefined;
    self.patrol_turn180 = undefined;
    self.patrolset = undefined;
    self._ID26377 = undefined;
    self._ID26394 = undefined;
    self._ID26382 = undefined;
    _ID42338::_ID32407();
}

_ID47098()
{
    self._ID26395 = "patrol_cold_gunup";
    self._ID26396 = "patrol_gunup_twitch_weights";
}

_ID46153()
{
    _ID42389::_ID36343();

    if ( _func_1B3( self ) )
        return;

    var_0["warning1"] = _ID42388::_ID12775;

    switch ( self._ID1194 )
    {

    }

    case "allies":
    case "axis":
}

_ID48480()
{
    _ID42389::_ID36343();

    if ( _func_1B3( self ) )
    {
        self._ID1645 = 0;
        return;
    }

    switch ( self._ID1194 )
    {

    }

    case "allies":
    case "axis":
}

_ID54193()
{
    self endon( "death" );
    self endon( "pain_death" );
    self endon( "_stealth_attack" );
    self endon( "restart_attack_behavior" );
    self endon( "_stealth_enemy_alert_level_change" );

    if ( _unknown_0393() )
    {
        level._ID47321 = 1;
        level thread _unknown_03B4( self );
        thread _ID42386::_ID12793();
        self._ID9575 = _ID42338::_ID26389;
    }
    else
        self._ID9575 = _ID42338::_ID39181;

    _unknown_02C6();
    _ID42338::_ID32407();
}

_ID47379()
{
    if ( _func_02F( level._ID47321 ) )
        return 0;

    if ( !_func_02F( self._ID7._ID35573 ) || self._ID7._ID35573 != "stand" )
        return 0;

    var_0 = _func_094( level._ID30895["generic"]["patrol_radio_in_clear"], 0, 1 );
    var_1 = self _meth_81BC( var_0 );

    if ( !self _meth_81CF( var_1 ) )
        return 0;

    return 1;
}

_ID51851( var_0 )
{
    var_1 = _func_067( level._ID30895["generic"]["patrol_radio_in_clear"] );
    wait(var_1);
    level._ID47321 = undefined;
}

_ID43641()
{
    var_0 = level._ID47341;
    var_0._ID216 = 1;
    level._ID28543 = var_0 _meth_809B();
    level._ID28543 thread animscripts\utility::_ID26591();
    level._ID28543 _meth_85C2( 1 );
    _ID42407::_ID35060( level._ID28543 );
    level._ID28543._ID51578 = _func_06A( "script_origin", level._ID28543._ID740 );
    level._ID28543._ID3189 = "price";
    level._ID28543 _ID42407::_ID12445();
    level._ID28543._ID764 = 0;
    level._ID28543 thread _ID42407::_ID22746();
    level._ID28543 _ID42407::_ID22825();
    level._ID28543._ID49 = 0;
    level._ID28543 thread maps\cliffhanger_code::_ID53107();
    thread _ID42407::_ID4917( "allies" );
    level._ID28543._ID4867 = 5000000;
}

_ID53712()
{
    thread _ID42407::_ID32226( 0 );
    self._ID464 = 0;
    self._ID14794 = undefined;
    self._ID511 = 1;
}

_ID54026()
{
    if ( _ID42237::_ID14385( "price_go_to_climb_ridge" ) )
        self._ID11575 = 1;

    self._ID464 = 0;

    if ( !_ID42237::_ID14385( "said_lets_split_up" ) )
        self._ID511 = 0;

    self _meth_81AF( 0 );
}

_ID46381()
{
    self endon( "death" );
    self endon( "stop_check_near_enemy" );
    self endon( "restart_attack_behavior" );
    var_0 = _func_0E6( self._ID686, _func_0ED( self._ID760 ) );
    waitframe;

    for (;;)
    {
        if ( !_func_02F( self._ID322 ) )
            return;

        if ( _func_0F5( self._ID740, self._ID322._ID740 ) < var_0 )
            break;

        wait 0.1;
    }

    self notify( "near_enemy" );
}

_ID53983()
{
    self endon( "death" );
    self endon( "_stealth_attack" );
    level endon( "_stealth_spotted" );
    wait 2;
    self waittill( "_stealth_bad_event_listener" );
    _ID42386::_ID12904();
    _ID42407::_ID13025( "not_first_attack" );
    self notify( "enemy_runto_and_lookaround" );
    self notify( "restart_attack_behavior" );
    _ID42407::_ID7869();
    thread _unknown_05BF( self._ID322 );
}

_ID46042( var_0 )
{
    self endon( "restart_attack_behavior" );
    _unknown_04B7();

    if ( !_ID42407::_ID13019( "not_first_attack" ) )
        thread _ID42386::_ID12797( self._ID740 );

    self endon( "death" );
    _ID42407::_ID13025( "_stealth_override_goalpos" );
    thread _unknown_05DA();

    if ( !_ID42389::_ID36331() )
    {
        thread _unknown_0633();
        _unknown_0622();

        if ( !_ID42407::_ID13019( "not_first_attack" ) )
        {
            thread _unknown_05DF();
            _ID42237::_ID41123( "near_enemy", 3 );
            self notify( "stop_check_near_enemy" );
        }

        thread _unknown_06E0( "player_found" );
        _ID42407::_ID13027( "player_found" );
    }

    self._ID11575 = undefined;
    _unknown_06B4();
}

_ID50652()
{
    var_0 = _func_0F3( self._ID740, _ID42407::_ID15617( self._ID740 )._ID740 );
    var_1 = var_0 - 200 / 1000;
    var_1 = _func_0EE( var_1, 0, 0.5 );
    wait(var_1);
}

_ID43459()
{
    if ( !_func_02F( level._ID53302 ) )
        level._ID53302 = -1;

    level._ID53302 = _ID42237::_ID648( level._ID53302 + 1, 4 );
    var_0 = level._ID53302 / 5;
    return var_0;
}

_ID45180()
{
    self endon( "player_found" );
    self endon( "death" );
    self endon( "_stealth_attack" );
    self endon( "restart_attack_behavior" );
    self endon( "_stealth_enemy_alert_level_change" );
    level endon( "_stealth_spotted" );
    self._ID11575 = 1;
    wait(_unknown_06CC());
    _ID42407::_ID12467();
    self._ID10998 = 0;
    self._ID11025 = 0;
    self._ID452 = 64;
    var_0 = _ID42407::_ID15617( self._ID740 );
    var_1 = var_0._ID740;
    var_2 = _func_0F3( var_1, self._ID740 );
    _ID42407::_ID13025( "_stealth_override_goalpos" );

    if ( self _meth_81CA( var_0 ) )
        self _meth_81B2( var_1 );
    else
    {
        var_3 = 256;
        var_4 = _func_0CB( var_1, var_3, 0, 512, "Path" );

        if ( var_4.size )
        {
            var_5 = var_4[_func_0B7( var_4.size )];
            self _meth_81B2( var_5._ID740 );
        }
        else
            self _meth_81B2( var_1 );
    }

    self._ID452 = var_2 * 0.5;
    self waittill( "goal" );

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) && !_func_02F( self._ID322 ) || !self _meth_81CA( self._ID322 ) )
    {
        _unknown_07A8();
        thread _ID42386::_ID12914( undefined, var_1 );
    }
}

_ID51031()
{
    _ID42407::_ID10896();
    _ID42407::_ID32328( "patrol_cold_gunup_search", 1 );
    self._ID10998 = 1;
    self._ID11025 = 1;
}

_ID52948()
{
    self endon( "death" );
    self endon( "_stealth_enemy_alert_level_change" );
    self notify( "enemy_runto_and_lookaround" );
    _ID42386::_ID12929();
    self._ID11575 = undefined;
    self._ID2219 = 1;
    var_0 = undefined;

    while ( !_ID42237::_ID14385( "script_attack_override" ) )
    {
        var_1 = _ID42407::_ID15617( self._ID740 );

        if ( animscripts\utility::_ID20902( self._ID1302 ) )
            var_2 = 250;
        else
            var_2 = _func_0E6( 500, var_1._ID630 );

        self._ID452 = var_2;
        var_3 = self _meth_81CD( var_1 );
        var_4 = var_1._ID740 * 0.25 + var_3 * 0.75;

        if ( _unknown_0860( var_4, var_0 ) )
            var_0 = var_4;

        wait 5;
    }
}

_ID46276( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) || _func_0F5( var_0, var_1 ) > _func_0ED( 64 ) )
    {
        var_2 = 256;
        var_3 = _func_0CB( var_0, var_2, 0 );

        if ( var_3.size )
        {
            var_4 = var_3[_func_0B7( var_3.size )];
            self _meth_81B2( var_4._ID740 );
        }
        else
            self _meth_81B2( var_0 );

        return 1;
    }

    return 0;
}

_ID49432( var_0 )
{
    self endon( "death" );
    self endon( "restart_attack_behavior" );

    for (;;)
    {
        var_1 = _ID42407::_ID15617( self._ID740 );

        if ( self _meth_81CA( var_1 ) )
        {
            _ID42407::_ID13025( var_0 );
            break;
        }

        wait 0.1;
    }
}

_ID44658( var_0 )
{
    thread _ID42386::_ID12791();
}

_ID46260()
{
    _ID42389::_ID36356( "cliffhanger", ::_unknown_0743 );
    _ID42389::_ID36356( "clifftop", ::_unknown_0730 );
    var_0 = [];
    var_0["ai_eventDistNewEnemy"] = [];
    var_0["ai_eventDistNewEnemy"]["spotted"] = 512;
    var_0["ai_eventDistNewEnemy"]["hidden"] = 256;
    var_0["ai_eventDistExplosion"] = [];
    var_0["ai_eventDistExplosion"]["spotted"] = 1500;
    var_0["ai_eventDistExplosion"]["hidden"] = 1500;
    var_0["ai_eventDistDeath"] = [];
    var_0["ai_eventDistDeath"]["spotted"] = 512;
    var_0["ai_eventDistDeath"]["hidden"] = 512;
    var_0["ai_eventDistPain"] = [];
    var_0["ai_eventDistPain"]["spotted"] = 256;
    var_0["ai_eventDistPain"]["hidden"] = 256;
    var_0["ai_eventDistBullet"] = [];
    var_0["ai_eventDistBullet"]["spotted"] = 96;
    var_0["ai_eventDistBullet"]["hidden"] = 96;
    _ID42389::_ID36234( var_0 );
    var_1 = [];
    var_1["player_dist"] = 1000;
    var_1["sight_dist"] = 400;
    var_1["detect_dist"] = 200;
    _ID42389::_ID36268( var_1 );
}

_ID52956()
{
    var_0["ai_eventDistFootstep"] = [];
    var_0["ai_eventDistFootstep"]["spotted"] = 300;
    var_0["ai_eventDistFootstep"]["hidden"] = 300;
    var_0["ai_eventDistFootstepWalk"] = [];
    var_0["ai_eventDistFootstepWalk"]["spotted"] = 300;
    var_0["ai_eventDistFootstepWalk"]["hidden"] = 300;
    var_0["ai_eventDistFootstepSprint"] = [];
    var_0["ai_eventDistFootstepSprint"]["spotted"] = 400;
    var_0["ai_eventDistFootstepSprint"]["hidden"] = 400;
    _ID42389::_ID36234( var_0 );
    var_1 = [];
    var_1["prone"] = 800;
    var_1["crouch"] = 800;
    var_1["stand"] = 800;
    var_2 = [];
    var_2["prone"] = 8192;
    var_2["crouch"] = 8192;
    var_2["stand"] = 8192;
    _ID42389::_ID36284( var_1, var_2 );
    _ID42389::_ID36243( 0.5 );
}

_ID47363()
{
    var_0["ai_eventDistFootstep"] = [];
    var_0["ai_eventDistFootstep"]["spotted"] = 120;
    var_0["ai_eventDistFootstep"]["hidden"] = 120;
    var_0["ai_eventDistFootstepWalk"] = [];
    var_0["ai_eventDistFootstepWalk"]["spotted"] = 60;
    var_0["ai_eventDistFootstepWalk"]["hidden"] = 60;
    var_0["ai_eventDistFootstepSprint"] = [];
    var_0["ai_eventDistFootstepSprint"]["spotted"] = 400;
    var_0["ai_eventDistFootstepSprint"]["hidden"] = 400;
    _ID42389::_ID36234( var_0 );
    var_1 = [];
    var_1["prone"] = 250;
    var_1["crouch"] = 450;
    var_1["stand"] = 500;
    var_2 = [];
    var_2["prone"] = 500;
    var_2["crouch"] = 500;
    var_2["stand"] = 600;
    _ID42389::_ID36284( var_1, var_2 );
    var_3 = [];
    var_3[0] = 1;
    var_3[1] = 1;
    var_3[2] = 1;
    var_3[3] = 0.75;
    _ID42389::_ID36243( var_3[level._ID15361] );
}

_ID51097()
{
    self._ID4912 = 0;
    wait 5;
    self._ID4912 = 1;
}

_ID10006()
{
    for ( var_0 = 0; var_0 < 10; var_0 += 0.05 )
        wait 0.05;
}

_ID44020()
{
    self._ID4912 = 0;

    if ( level._ID15361 < 3 )
        _ID42407::_ID13027( "player_found" );

    if ( level._ID15361 < 2 )
        wait 3;
    else
        wait 0.25;

    self._ID4912 = 1;
}

_ID45583( var_0 )
{
    level._ID28543 _ID42407::_ID10871();
    self._ID11566 = undefined;
    level._ID28543._ID377 = self;
    self._ID486 = 1;
    self waittill( "death" );

    if ( _func_1A7( var_0 ) )
    {
        var_0._ID377 = level._ID794;
        wait 0.2;
        level._ID28543._ID377 = self;
        var_0._ID11566 = undefined;
        var_0 waittill( "death" );
    }

    wait 0.8;
    wait 2;
    level._ID28543 _ID42407::_ID12445();
}

_ID45007( var_0, var_1 )
{
    if ( _ID42237::_ID14385( var_0 ) )
        return;

    level endon( "_stealth_spotted" );
    level endon( var_0 );

    if ( _func_02F( var_1 ) )
        level endon( var_1 );

    level._ID794 waittill( "weapon_fired" );
}

_ID46731()
{
    _ID42237::_ID3350( _func_1A2( "truck_guys", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_0D73 );
    _ID42237::_ID14413( "start_truck_patrol" );
    _ID42407::_ID4439();
    var_0 = _func_1A1( "truck_patrol", "targetname" );
    var_0._ID31066 = 1;
    level._ID48340 = _ID42411::_ID35196( "truck_patrol" );
    level._ID48340._ID31066 = 0;
    level._ID48340 thread maps\cliffhanger_code::_ID43520();
    level._ID48340 thread _ID42237::_ID27000( "cliffhanger_truck_music" );
    level._ID48340 thread _unknown_0D89();
    level._ID48340 thread _unknown_0D5F();
    thread maps\cliffhanger_code::_ID53079();
    level._ID48340 thread maps\cliffhanger_code::_ID50317();
    level._ID48340 waittill( "death" );
    _ID42237::_ID14402( "jeep_blown_up" );
    level._ID48340 notify( "stop soundcliffhanger_truck_music" );
}

_ID43232()
{
    _func_157( level._ID1426["lighthaze_snow_headlights"], self, "TAG_LIGHT_RIGHT_FRONT" );
    _func_157( level._ID1426["lighthaze_snow_headlights"], self, "TAG_LIGHT_LEFT_FRONT" );
    _func_157( level._ID1426["car_taillight_uaz_l"], self, "TAG_LIGHT_LEFT_TAIL" );
    _func_157( level._ID1426["car_taillight_uaz_l"], self, "TAG_LIGHT_RIGHT_TAIL" );
    self waittill( "death" );

    if ( _func_02F( self ) )
        _unknown_0DE4();
}

_ID46710()
{
    _func_158( level._ID1426["lighthaze_snow_headlights"], self, "TAG_LIGHT_RIGHT_FRONT" );
    _func_158( level._ID1426["lighthaze_snow_headlights"], self, "TAG_LIGHT_LEFT_FRONT" );
    waittillframeend;

    if ( _func_02F( self ) && !_func_2A5( self ) )
    {
        _func_158( level._ID1426["car_taillight_uaz_l"], self, "TAG_LIGHT_LEFT_TAIL" );
        _func_158( level._ID1426["car_taillight_uaz_l"], self, "TAG_LIGHT_RIGHT_TAIL" );
    }
}

_ID49855()
{
    self endon( "death" );
    thread maps\cliffhanger_aud::_ID47705();
    level._ID48340 thread _unknown_0E76();
    _ID42237::_ID14413( "truck_guys_alerted" );
    level._ID48340._ID31066 = 1;
    var_0 = _ID42407::_ID15817( "truck_guys", "script_noteworthy" );

    if ( var_0.size == 0 )
    {
        self _meth_828D( 0, 15 );
        return;
    }

    var_1 = _ID42237::_ID28945( var_0 );
    var_1 _ID42386::_ID12800();
    self waittill( "safe_to_unload" );
    self _meth_828D( 0, 15 );
    wait 1;
    _ID42411::_ID40298();
    _ID42237::_ID14402( "jeep_stopped" );
}

_ID47078()
{
    self endon( "truck_guys_alerted" );

    for (;;)
    {
        _ID42237::_ID14413( "_stealth_spotted" );
        level._ID794 _ID42407::_ID41104( self, 800 );

        if ( !_ID42237::_ID14385( "_stealth_spotted" ) )
        {
            continue;
            continue;
        }

        break;
    }

    _ID42237::_ID14402( "truck_guys_alerted" );
}

_ID43422()
{
    self endon( "death" );
    self endon( "_stealth_attack" );
    level endon( "_stealth_spotted" );
    wait 2;
    self waittill( "_stealth_bad_event_listener" );
    _ID42386::_ID12904();
    _ID42407::_ID13025( "not_first_attack" );
}

_ID52114()
{
    self endon( "death" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    _ID42407::_ID13024( "jumped_out" );
    thread _unknown_0FBE();
    var_0 = [];
    var_0["saw"] = ::_unknown_0FE7;
    var_0["found"] = ::_unknown_0FEF;
    var_1 = [];
    var_1["warning1"] = ::_unknown_0FFA;
    var_1["warning2"] = ::_unknown_1002;
    var_1["attack"] = ::_unknown_1074;
    var_2 = [];
    var_2["explode"] = ::_unknown_1048;
    var_2["heard_scream"] = ::_unknown_1051;
    var_2["doFlashBanged"] = ::_unknown_1059;
    _ID42386::_ID2261( "animation", "wrapper", ::_unknown_1023 );
    _ID42389::_ID36369( var_1 );
    _ID42389::_ID36258( var_0 );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        _ID42385::_ID36309( var_5, var_4 );
    }

    var_clear_2
    _ID42407::_ID13025( "_stealth_behavior_reaction_anim" );
}

_ID53246( var_0 )
{
    self endon( "_stealth_enemy_alert_level_change" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    self endon( "death" );
    self endon( "pain_death" );
    thread _unknown_0FFE();
    self._ID10998 = 0;
    self._ID11025 = 0;
    var_1 = _func_0F3( var_0._ID740, self._ID740 );
    self _meth_81B1( var_0 );
    self._ID452 = var_1 * 0.5;
    wait 0.05;
    _ID42407::_ID32328( "_stealth_patrol_cqb" );
    self waittill( "goal" );

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) && !_func_02F( self._ID322 ) || !self _meth_81CA( self._ID322 ) )
    {
        _unknown_0E75();
        _ID42386::_ID12914( var_0 );
    }
}

_ID51586()
{
    self endon( "death" );
    self endon( "pain_death" );

    for (;;)
    {
        self waittill( "jumpedout" );
        _ID42386::_ID12918( self._ID740 );
        self._ID50030 = self._ID740;
        _ID42407::_ID13025( "jumped_out" );
        self waittill( "enteredvehicle" );
        wait 0.15;
        _ID42407::_ID13021( "jumped_out" );
        _ID42407::_ID13025( "_stealth_behavior_reaction_anim" );
    }
}

_ID46809( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    _ID42237::_ID14402( "truck_guys_alerted" );
    _ID42407::_ID13027( "jumped_out" );
    _ID42386::_ID12789( var_0 );
}

_ID53752( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    _ID42237::_ID14402( "truck_guys_alerted" );
    _ID42407::_ID13027( "jumped_out" );

    if ( !_ID42237::_ID14385( "truck_guys_alerted" ) )
        return;

    if ( _ID42237::_ID14396( "truck_guys_not_going_back" ) && _ID42237::_ID14385( "truck_guys_not_going_back" ) )
        return;

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) && !_ID42407::_ID13019( "_stealth_attack" ) )
    {
        var_1 = _ID42407::_ID15617( self._ID740 );
        var_2 = _ID42386::_ID12869( var_1._ID740, 1500, 128 );

        if ( _func_02F( var_2 ) )
            thread _unknown_1179( var_2 );
    }

    var_3 = _ID42386::_ID17449( "_stealth_spotted" );

    if ( _ID42237::_ID14385( var_3 ) )
        _ID42237::_ID14426( var_3 );
    else
        self waittill( "normal" );
}

_ID48469( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    _ID42237::_ID14402( "truck_guys_alerted" );
    _ID42407::_ID13027( "jumped_out" );

    if ( !_ID42237::_ID14385( "truck_guys_alerted" ) )
        return;

    if ( _ID42237::_ID14396( "truck_guys_not_going_back" ) && _ID42237::_ID14385( "truck_guys_not_going_back" ) )
        return;

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) && !_ID42407::_ID13019( "_stealth_attack" ) )
    {
        var_1 = self._ID1644._ID22585._ID13251._ID4629[var_0];
        var_2 = _ID42386::_ID12869( var_1, 300, 40 );
        thread _ID42386::_ID12800();

        if ( _func_02F( var_2 ) )
            thread _unknown_121C( var_2 );
    }

    var_3 = _ID42386::_ID17449( "_stealth_spotted" );

    if ( _ID42237::_ID14385( var_3 ) )
        _ID42237::_ID14426( var_3 );
    else
        self waittill( "normal" );
}

_ID50854( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    _ID42237::_ID14402( "truck_guys_alerted" );
    _ID42407::_ID13027( "jumped_out" );
    _unknown_0FC4();
}

_ID53224()
{
    level endon( "done_with_stealth_camp" );
    var_0 = _func_1A2( "beehive_spawner", "targetname" );
    _ID42237::_ID3350( _func_1A2( "beehive_spawner", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_1381 );

    for (;;)
    {
        _ID42237::_ID14413( "_stealth_spotted" );
        wait 1;
        var_1 = _unknown_138E();
        var_2 = 0;

        if ( var_1 <= 3 )
            var_2 = 2;

        if ( var_1 > 3 )
            var_2 = 1;

        if ( var_1 > 5 )
            var_2 = 0;

        if ( !_unknown_139F() )
            var_2 = 0;

        var_0 = _ID42237::_ID15566( _ID42407::_ID16145(), var_0 );

        for ( var_3 = 2; var_3 < 2 + var_2; var_3++ )
            var_0[var_3] notify( "trigger" );

        _ID42237::_ID14426( "_stealth_spotted" );
    }
}

_ID50599()
{
    var_0 = _ID42389::_ID36330();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2 == "77" )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID49628()
{
    var_0 = _func_0DE( "axis" );
    var_1 = 0;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 _ID42407::_ID13023( "_stealth_normal" ) )
        {
            if ( !var_3 _ID42407::_ID13019( "_stealth_normal" ) )
                var_1++;
        }
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID43371()
{
    self endon( "death" );
    self._ID4867 = 1;
    self._ID2219 = 1;
    var_0 = 700;

    if ( self._ID1302 == "m1014" )
        var_0 = 250;

    for (;;)
    {
        if ( _func_02F( self._ID322 ) )
        {
            self._ID452 = var_0;
            var_1 = _ID42407::_ID15617( self._ID740 );
            self _meth_81B2( var_1._ID740 );
        }

        wait 4;
    }
}

_ID48152()
{
    var_0 = _func_0DE( self._ID1194 );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];

        if ( self == var_2 )
            continue;

        if ( var_2._ID38 == "alert" )
            var_3 = 1000000;
        else
            var_3 = 90000;

        if ( _func_0F5( self._ID740, var_2._ID740 ) < var_3 )
            return 0;
    }

    var_clear_3
    var_clear_0
    return 1;
}
