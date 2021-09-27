// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46266()
{
    var_0 = self._ID31446;

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !_func_02F( var_1._ID40065 ) )
            continue;

        if ( var_1._ID40065 == level._ID794._ID40065 )
        {
            var_1._ID40065._ID51804 = var_0;

            if ( _ID42237::_ID14385( "player_zodiac_on_ground" ) && _func_02F( self._ID46229 ) )
                var_1._ID40065._ID1278 = self._ID46229;
            else
                var_1._ID40065._ID1278 = var_1._ID40065._ID51804;

            continue;
        }

        var_1._ID40065._ID1278 = var_0;
    }
}

_ID44369()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( var_0 _ID42407::_ID13023( "in_rapids" ) )
            var_0 _ID42407::_ID13025( "in_rapids" );
    }
}

_ID45868( var_0 )
{
    var_0 _ID42407::_ID13024( "in_rapids" );

    if ( _ID42237::_ID14385( "rapids_trigger" ) )
        var_0 _ID42407::_ID13025( "in_rapids" );

    var_1 = _ID42237::_ID37527( var_0._ID170 == "script_vehicle_zodiac_player", "_player", "" );

    if ( !var_0 _ID42407::_ID13019( "in_rapids" ) )
        _func_157( _ID42237::_ID16299( "zodiac_wake_geotrail" + var_1 ), self, "tag_origin" );

    self._ID47054 = _ID42237::_ID35164();
    self._ID47054 _meth_8053( self, "tag_origin", ( 30, 0, 0 ), ( -90, 180, 0 ) );
    _func_157( _ID42237::_ID16299( "zodiac_splash_front" + var_1 ), self._ID47054, "tag_origin" );
    self _meth_82C9();
    self _meth_805A();
    self endon( "death" );
    var_0 endon( "death" );
    thread _unknown_0244( var_0 );
    self._ID47054 thread _unknown_024C( var_0 );
    var_0 _ID42407::_ID13024( "in_air" );
    var_0 _ID42407::_ID13024( "on_water" );
    childthread _unknown_01CC( var_0 );
    childthread _unknown_0201( var_0 );
    childthread _unknown_0246( var_0 );
    childthread _unknown_0217( var_0 );
    childthread _unknown_0236( var_0 );
    self _meth_8053( var_0, "tag_origin" );
}

_ID47957()
{
    var_0 = _func_1A1( "ending_animated_chain01", "targetname" );
    var_0._ID3189 = "chain";
    var_0 _ID42259::_ID32556();
    var_0 thread _ID42259::_ID3044( var_0, "idle1" );
    var_1 = _func_1A1( "ending_animated_lamp01", "targetname" );
    var_1._ID3189 = "light";
    var_1 _ID42259::_ID32556();
    var_1 thread _ID42259::_ID3044( var_1, "idle1" );
}

_ID54131( var_0 )
{
    var_1 = 0;

    for (;;)
    {
        var_2 = var_0 _meth_818D( "tag_origin" );
        var_3 = var_0 _meth_818C( "tag_origin" );
        var_4 = _func_11D( var_2 );
        var_5 = _func_11F( var_2 );
        var_6 = var_3 + var_4 * 40 + var_5 * 80;
        var_7 = var_3 - var_4 * 10 + var_5 * 80;
        var_8 = _func_06D( var_6, var_7, 0, var_0, 0, 0, 0, 1, 0, 1, 0, 0 );

        if ( var_8["surfacetype"] == "water_waist" || var_8["surfacetype"] == "water_ankle" )
        {
            if ( !var_1 )
                var_0 _ID42407::_ID13025( "on_water" );

            var_1 = 1;
        }
        else if ( var_1 )
        {
            var_0 _ID42407::_ID13021( "on_water" );
            var_1 = 0;
        }

        waittillframeend;
    }
}

_ID48531( var_0 )
{
    for (;;)
    {
        var_0 waittill( "veh_leftground" );
        var_0 _ID42407::_ID13025( "in_air" );
        var_0 waittill( "veh_landed" );
        var_0 _ID42407::_ID13021( "in_air" );
    }
}

_ID52137( var_0 )
{
    var_1 = _ID42237::_ID37527( var_0._ID170 == "script_vehicle_zodiac_player", "_player", "" );

    for (;;)
    {
        var_0 waittill( "zodiac_treadfx_stop" );
        var_0 _unknown_04BE( "StopFXOnTag", "zodiac_wake_geotrail" + var_1, self, "tag_origin" );
        var_0 waittill( "zodiac_treadfx_go" );
        var_0 _unknown_04D7( "PlayFXOnTag", "zodiac_wake_geotrail" + var_1, self, "tag_origin" );
    }
}

_ID46702( var_0 )
{
    var_1 = _ID42237::_ID37527( var_0._ID170 == "script_vehicle_zodiac_player", "_player", "" );

    for (;;)
    {
        var_0 waittill( "zodiac_splash_front_stop" );
        var_0 _unknown_050C( "StopFXOnTag", "zodiac_splash_front" + var_1, self._ID47054, "tag_origin" );
        var_0 waittill( "zodiac_splash_front_go" );
        var_0 _unknown_0526( "PlayFXOnTag", "zodiac_splash_front" + var_1, self._ID47054, "tag_origin" );
    }
}

_ID54433( var_0 )
{
    for (;;)
    {
        var_1 = var_0 _meth_8291();
        var_2 = _func_256( var_0._ID65 );
        var_3 = _func_0FB( var_2["forward"], var_1 );
        var_4 = var_3 * 0.0568182;

        if ( var_4 < 4 || !var_0 _ID42407::_ID13019( "on_water" ) || var_0 _ID42407::_ID13019( "in_air" ) )
        {
            var_0 notify( "zodiac_treadfx_stop" );
            var_0 notify( "zodiac_splash_front_stop" );
        }
        else
        {
            if ( var_0 _ID42407::_ID13019( "in_rapids" ) )
                var_0 notify( "zodiac_treadfx_stop" );
            else
                var_0 notify( "zodiac_treadfx_go" );

            var_0 notify( "zodiac_splash_front_go" );
        }

        wait 0.05;
    }
}

_ID47939( var_0 )
{
    var_0 _ID42237::_ID41068( "stop_bike", "death", "kill_treadfx" );
    self _meth_80B7();
}

_ID51905()
{
    var_0 = _func_06A( "script_model", self._ID740 );
    var_0 _meth_80B8( self._ID669 );
    var_0._ID65 = ( 0, self._ID65[1], 0 );
    var_0 thread _unknown_03CF( self );
}

_ID51179()
{
    var_0 = _func_1A5();
    var_0._ID740 = self._ID740;
    var_0._ID65 = _ID42237::_ID14539( self._ID65 );
    var_0._ID35181 = _func_03D();
    level._ID43093[level._ID43093.size] = var_0;
}

_ID50621()
{
    var_0 = _func_1A2( "script_vehicle", "code_classname" );
    var_1 = [];
    var_2 = var_0;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];

        if ( _func_1A8( var_3 ) )
            continue;

        var_4 = _func_1A5();
        var_4._ID170 = var_3._ID170;
        var_4._ID740 = var_3._ID740;
        var_4._ID65 = var_3._ID65;
        var_4._ID50839 = var_3 _meth_8290();
        var_4._ID31517 = var_3._ID31517;
        var_4._ID31518 = var_3._ID31518;
        var_4._ID669 = var_3._ID669;
        var_4._ID65 = var_3._ID65;

        if ( _func_02F( level._ID51296 ) && var_3 == level._ID51296 )
            var_4._ID51296 = 1;

        var_1[var_1.size] = var_4;
    }

    var_clear_3
    var_clear_0
    _ID42237::_ID14012();
    _ID42237::_ID14017();
    var_6 = var_1;

    for ( var_9 = _func_1DA( var_6 ); _func_02F( var_9 ); var_9 = _func_1BF( var_6, var_9 ) )
    {
        var_3 = var_6[var_9];
        var_7 = _ID42237::_ID14018( var_3._ID740 );
        var_8 = _ID42237::_ID14018( var_3._ID65 );
        _ID42237::_ID14014();
        _ID42237::_ID14016( "classname", "script_struct" );
        _ID42237::_ID14016( "model", var_3._ID669 );
        _ID42237::_ID14016( "origin", var_7 );
        _ID42237::_ID14016( "angles", var_8 );

        if ( _func_02F( var_3._ID50839 ) )
            _ID42237::_ID14016( "current_speed", var_3._ID50839 );

        if ( _func_02F( var_3._ID31517 ) )
            _ID42237::_ID14016( "script_vehiclespawngroup", var_3._ID31517 );

        if ( _func_02F( var_3._ID31518 ) )
            _ID42237::_ID14016( "script_vehiclestartmove", var_3._ID31518 );

        _ID42237::_ID14013();
    }

    var_clear_3
    var_10 = level._ID912 + "_veh_ref.map";
    _ID42237::_ID14011( "/map_source/" + var_10 );
    _ID42237::_ID22062( var_10 );
}

_ID52025( var_0, var_1, var_2 )
{
    if ( !_ID42237::_ID14385( "debug_crumbs" ) )
        return;

    var_3 = var_0._ID740 + _func_11E( var_0._ID65 ) * -1000;
    var_4 = var_0._ID740 + _func_11E( var_0._ID65 ) * 1000;
    var_5 = ( var_2, 1 - var_2, 0 );

    if ( !_func_02F( var_1 ) )
        return;

    var_6 = var_1._ID740 + _func_11E( var_1._ID65 ) * -1000;
    var_7 = var_1._ID740 + _func_11E( var_1._ID65 ) * 1000;
}

_ID44200()
{
    self._ID52006 = 500;
    self._ID52501 = -1;
    self._ID13251 = [];
    self._ID13251["jump"] = [];
    self._ID13251["jump"]["driver"] = 0;
    self._ID13251["jump"]["passenger"] = 0;
    self._ID13251["bump"] = [];
    self._ID13251["bump"]["driver"] = 0;
    self._ID13251["bump"]["passenger"] = 0;
    self._ID13251["bump_big"] = [];
    self._ID13251["bump_big"]["driver"] = 0;
    self._ID13251["bump_big"]["passenger"] = 0;
    self._ID13251["sway_left"] = [];
    self._ID13251["sway_left"]["driver"] = 0;
    self._ID13251["sway_left"]["passenger"] = 0;
    self._ID13251["sway_right"] = [];
    self._ID13251["sway_right"]["driver"] = 0;
    self._ID13251["sway_right"]["passenger"] = 0;
    childthread _unknown_09E7();
    childthread _unknown_08BB();
    childthread _unknown_08D5();
    childthread _unknown_095E();
    childthread _unknown_0992();
    childthread _unknown_09B2();

    if ( self._ID170 == "script_vehicle_zodiac_player" )
        childthread _unknown_099A();
}

_ID45734( var_0, var_1 )
{
    if ( _func_02F( var_1 ) && var_1 && !_ID42407::_ID13019( "on_water" ) )
        return;

    var_2 = "tag_origin";

    if ( _func_02F( level._ID50636[var_0] ) )
        var_2 = level._ID50636[var_0];

    if ( _func_02F( level._ID1426[var_0] ) )
        _unknown_08C0( "PlayFXOnTag", var_0, self, var_2 );

    if ( var_0 == "player_zodiac_bumpbig" )
        _unknown_1849();

    if ( _func_02F( level._ID44365[var_0] ) )
        _unknown_08DC( "play_sound_on_entity", var_0 );
}

_ID50335( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A5();

    if ( _func_02F( var_2 ) )
        var_5 = var_2 _meth_81BD();
    else
        var_5 = self _meth_81BD();

    if ( !_func_02F( self._ID51685[var_5] ) )
        self._ID51685[var_5] = [];

    var_4._ID48645 = var_0;
    var_4._ID47541 = var_2;
    var_4._ID44989 = var_3;

    if ( var_0 != "play_sound_on_entity" )
        var_4._ID52616 = _ID42237::_ID16299( var_1 );
    else
        var_4._ID52616 = level._ID44365[var_1];

    self._ID51685[var_5] = _ID42237::_ID3293( self._ID51685[var_5], var_4 );
}

_ID53340()
{
    self endon( "death" );
    self._ID51685 = [];

    for (;;)
    {
        var_0 = 0;

        while ( self._ID51685.size )
        {
            var_1 = self._ID51685;

            for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
            {
                var_2 = var_1[var_4];
                var_3 = _ID42237::_ID3308( var_2 );

                switch ( var_3._ID48645 )
                {

                }

                var_2 = _ID42237::_ID3321( var_2, var_3 );
                self._ID51685[var_4] = _ID42237::_ID37527( var_2.size, var_2, undefined );
                case "PlayFXOnTag":
                case "StopFXOnTag":
                case "play_sound_on_entity":
                default:
            }

            var_clear_3
            var_0++;

            if ( var_0 >= 3 )
            {
                var_0 = 0;
                waittillframeend;
            }
        }

        waittillframeend;
    }
}

_ID53917()
{
    self endon( "death" );
    self endon( "zodiac_fall_over_waterfall" );
    _ID42237::_ID14413( "player_on_boat" );

    for (;;)
    {
        self waittill( "veh_leftground" );
        self._ID52501 = _func_03D();
        self._ID13251["jump"]["driver"] = 1;
        self._ID13251["jump"]["passenger"] = 1;
        thread maps\af_chase_aud::_ID48012();
    }
}

_ID52727()
{
    self endon( "death" );
    wait 2;
    _ID42237::_ID14413( "player_on_boat" );

    for (;;)
    {
        self waittill( "veh_landed" );
        self._ID13251["jump"]["driver"] = 0;
        self._ID13251["jump"]["passenger"] = 0;

        if ( self._ID52501 + self._ID52006 < _func_03D() )
        {
            self._ID13251["bump_big"]["driver"] = 1;
            self._ID13251["bump_big"]["passenger"] = 1;

            if ( !_ID42237::_ID14385( "player_in_sight_of_boarding" ) )
                thread _unknown_0B59( "bump_big" );

            if ( self == level._ID46392 )
                _unknown_0A86( "player_zodiac_bumpbig" );
            else
                _unknown_0A92( "zodiac_bumpbig" );

            continue;
        }

        self._ID13251["bump"]["driver"] = 1;
        self._ID13251["bump"]["passenger"] = 1;

        if ( !_ID42237::_ID14385( "player_in_sight_of_boarding" ) )
            thread _unknown_0BA4( "bump" );

        if ( self == level._ID46392 )
        {
            _unknown_0AD1( "player_zodiac_bump" );
            continue;
        }

        _unknown_0ADD( "zodiac_bump" );
    }
}

_ID47093( var_0, var_1 )
{
    self waittill( "trigger" );
    _unknown_0BC9( var_0, var_1 );
}

_ID46312( var_0, var_1 )
{
    level._ID54262["bump"] = level._ID54262[var_0];
    level._ID54262["bump_big"] = level._ID54262[var_1];
}

_ID43868( var_0 )
{
    if ( !_func_02F( level._ID46392 ) || self != level._ID46392 )
        return;

    level endon( "missionfailed" );

    if ( _ID42237::_ID14385( "missionfailed" ) )
        return;

    if ( var_0 == "bump_big" )
        level._ID794 _meth_80B4( "damage_heavy" );
    else
        level._ID794 _meth_80B4( "damage_light" );

    thread _unknown_0C47( var_0 );
}

_ID49829( var_0 )
{
    if ( _ID42237::_ID14385( "rapids_head_bobbing" ) )
        return;

    if ( _ID42237::_ID14385( "price_anim_on_boat" ) )
        return;

    if ( level._ID28543 _ID42407::_ID13019( "transitioning_positions" ) )
        return;

    var_1 = level._ID28543._ID7._ID52880 + "_react_" + var_0;
    level._ID28543 _ID42407::_ID13025( "transitioning_positions" );
    _unknown_11BD( var_1 );
    level._ID28543 _ID42407::_ID13021( "transitioning_positions" );
}

_ID54521()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_on_boat" );

    for (;;)
    {
        self waittill( "veh_jolt",  var_0  );

        if ( var_0[1] >= 0 )
        {
            self._ID13251["sway_left"]["driver"] = 1;
            self._ID13251["sway_left"]["passenger"] = 1;
            _unknown_0BE1( "zodiac_sway_left", 1 );
            continue;
        }

        self._ID13251["sway_right"]["driver"] = 1;
        self._ID13251["sway_right"]["passenger"] = 1;
        _unknown_0C09( "zodiac_sway_right", 1 );
    }
}

_ID53522()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_on_boat" );

    for (;;)
    {
        self waittill( "veh_wall_hit" );
        thread _unknown_0D21( "bump_big" );
    }
}

_ID50704()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_on_boat" );

    for (;;)
    {
        self waittill( "veh_boatbounce",  var_0  );

        if ( var_0 < 50.0 )
            continue;

        if ( var_0 < 65.0 )
        {
            _unknown_0C5E( "zodiac_bounce_small_left" );
            _unknown_0C66( "zodiac_bounce_small_right" );
            continue;
        }

        _unknown_0C72( "zodiac_bounce_large_left" );
        _unknown_0C7B( "zodiac_bounce_large_right" );
    }
}

_ID48933()
{
    self endon( "death" );
    var_0 = _ID42237::_ID37527( self._ID170 == "script_vehicle_zodiac_player", "_player", "" );

    for (;;)
    {
        var_1 = self _meth_8292();

        if ( self _meth_8290() > 10 )
        {
            if ( var_1[1] < -30.0 )
                _unknown_0CB9( "zodiac_sway_right_light" + var_0, 1 );
            else if ( var_1[1] > 30.0 )
                _unknown_0CD2( "zodiac_sway_left_light" + var_0, 1 );
        }
        else if ( self _meth_8290() > 70 )
        {
            if ( var_1[1] < -70.0 )
                _unknown_0CF2( "zodiac_sway_right" + var_0, 1 );
            else if ( var_1[1] > 70.0 )
                _unknown_0D0B( "zodiac_sway_left" + var_0, 1 );
        }

        wait 0.05;
    }
}

_ID52863()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "veh_collision",  var_1, var_0  );
        var_2 = self._ID29965;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _func_1A7( var_3 ) && !_func_02F( var_3._ID22746 ) )
                var_3 _meth_8058();
        }

        var_clear_2
        var_clear_0
        _unknown_0D5D( "zodiac_collision" );
    }
}

_ID53614()
{
    self endon( "death" );
    var_0 = self _meth_8291();

    for (;;)
    {
        self._ID28502 = var_0;
        var_0 = self _meth_8291();
        wait 0.05;
    }
}

_ID45596()
{
    self waittill( "trigger" );

    if ( _func_02F( self._ID1193 ) )
        _ID42407::_ID4422( self._ID1193 );
    else
        _ID42407::_ID4422( "boat_chase" );
}

_ID54370()
{
    return _unknown_0F5E() < 0.5;
}

_ID49502()
{
    return level._ID46392 _meth_8290() > 20;
}

_ID49500()
{
    if ( !level._ID43093.size )
        return 0;

    var_0 = level._ID43093[0];
    var_1 = _func_03D() - var_0._ID35181 / 1000;
    return var_1 / level._ID50426._ID13835;
}

_ID46371()
{
    var_0 = _func_03D();
    var_1 = undefined;
    var_2 = [];
    var_3 = 0;

    for ( var_4 = 0; var_4 < level._ID43093.size; var_4++ )
    {
        var_5 = level._ID43093[var_4];
        var_6 = var_0 - var_5._ID35181 / 1000;
        var_7 = var_6 / level._ID50426._ID13835;

        if ( var_7 > 1 )
            _unknown_1013();

        if ( !var_3 )
            _unknown_1012( var_7 );

        if ( var_3 < level._ID50426._ID45722 )
            var_2[var_3] = var_5;

        if ( _unknown_103C() )
            _unknown_0DBD( var_5, var_1, var_7 );

        var_1 = var_5;
        var_3++;
    }

    var_8 = var_2;

    for ( var_12 = _func_1DA( var_8 ); _func_02F( var_12 ); var_12 = _func_1BF( var_8, var_12 ) )
    {
        var_5 = var_8[var_12];
        var_9 = _func_11F( var_5._ID65 );
        var_10 = _func_119( level._ID794._ID740 - var_5._ID740 );
        var_11 = _func_0FB( var_9, var_10 );

        if ( var_11 > 0 )
            level._ID43093 = _ID42237::_ID44115( level._ID43093, var_5 );
    }

    var_clear_4
    var_clear_0
}

_ID49266( var_0 )
{
    if ( var_0 < 0.25 )
        _ID42237::_ID14402( "zodiac_catchup" );
    else
        _ID42237::_ID14388( "zodiac_catchup" );
}

_ID43792()
{
    if ( !_func_1A7( level._ID794 ) )
        return;

    level notify( "stop_deadquote_for_gettingout_of_bounds" );
    _ID42237::_ID14402( "shepherd_got_away" );
    _func_034( "ui_deadquote", &"AF_CHASE_MISSION_FAILED_KEEP_UP" );

    if ( level._ID35897 != "test_boat_current" )
        _ID42407::_ID23778();
}

_ID50815()
{
    return _func_03A( "scr_debug_breadcrumbs" );
}

_ID45984()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_on_boat" );

    for (;;)
    {
        level waittill( "zodiac_catchup" );

        if ( _ID42237::_ID14385( "zodiac_boarding" ) )
            return;

        if ( _ID42237::_ID14385( "zodiac_catchup" ) )
        {
            var_0 = level._ID46392 _meth_8290() + 5;

            if ( self _meth_8290() < var_0 )
                self _meth_828D( var_0, 15, 15 );

            var_0 = undefined;
            continue;
        }

        self _meth_829B( 15 );
    }
}

_ID52915()
{
    var_0 = level._ID46392 _meth_8290() + 5;

    if ( self _meth_8290() < var_0 )
        self _meth_828D( var_0, 15, 15 );
}

_ID47191()
{
    if ( !_func_02F( self._ID1193 ) )
        return 0;

    return self._ID1193 == "enemy_chase_boat";
}

_ID44731( var_0 )
{
    if ( !_func_0D4( self ) )
        return;

    self notify( "newanim" );
    self._ID10423 = "crouch";
    self _meth_81D6( "crouch" );
    thread animscripts\utility::_ID39672();
    self _meth_81D6( "crouch" );
    self._ID4867 = 0;
    self._ID1759 = 0.5;
}

_ID48083()
{
    self waittill( "trigger",  var_0  );
    level._ID46392 endon( "death" );
    var_0 thread _ID42411::_ID23509();
    var_0 endon( "death" );
    var_0 thread _unknown_1772();

    while ( _func_0F3( level._ID794._ID740, self._ID740 ) > 8500 )
        wait 0.05;

    var_0 thread _ID42237::_ID27000( "scn_helicopter_01_lp" );

    if ( !_func_02F( var_0._ID1193 ) || var_0._ID1193 != "heli_no_turret" )
        var_0 thread _ID42411::_ID23510();

    var_1 = var_0._ID23512;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_8114( 2 );
        var_2 _meth_813C( 5 );
        var_2._ID10 = 0.5;
    }

    var_clear_2
    var_clear_0

    if ( !_ID42237::_ID14385( "rapids_trigger" ) )
        level notify( "dialog_helicopter_ahead" );

    var_0 _meth_826F( level._ID794 );

    while ( _unknown_1608( level._ID46392, var_0 ) )
        wait 0.05;

    if ( !_ID42237::_ID14385( "rapids_trigger" ) )
        level notify( "dialog_helicopter_six" );

    var_4 = var_0._ID23512;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _meth_8114( 20 );
        var_2 _meth_813C( 7 );
        var_2._ID10 = 0;
    }

    var_clear_1
    var_clear_0
    wait 3;
    var_0 thread _ID42411::_ID23509();
}

new_helicopter_setup()
{
    var_0 = self._ID23512;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _meth_8114( 20 );
        var_1 _meth_813C( 7 );
        var_1._ID10 = 0;
    }

    var_clear_2
    var_clear_0
}

_ID52531()
{
    var_0 = _ID42407::_ID15963();
    var_1 = 3.4;
    var_2 = 0.01;
    var_3 = 0;
    var_4 = 0.13;

    for (;;)
    {
        var_5 = self _meth_8294();
        var_3 += 0.05;

        if ( var_5 < 0.5 )
        {
            var_3 = 0;
            var_6 = 1;
        }
        else
            var_6 = 1 - var_3 / var_1;

        var_0._ID20129 = var_5 * var_4 * var_6;

        if ( var_3 > var_1 || self _meth_8290() > 43 )
        {
            var_3 = var_1;
            var_0._ID20129 = 0;
        }

        wait 0.05;

        if ( _ID42237::_ID14385( "player_in_sight_of_boarding" ) )
            break;
    }

    var_0 _meth_80B7();
}

_ID50360()
{
    var_0 = _func_1A1( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_1 = _func_0DE();
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 _meth_80B0( var_0 ) && !var_3 _ID42407::_ID20537() )
            var_3 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_5 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_6 = 0;
    var_7 = level._ID9242;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_6++;

        if ( _func_02F( var_8._ID22654 ) )
        {
            level._ID9242 = _ID42237::_ID3321( level._ID9242, var_8 );
            var_5._ID740 = var_8._ID40005["origin"];

            if ( var_5 _meth_80B0( var_0 ) )
                var_8._ID22654 _meth_80B7();
        }

        if ( var_6 > 3 )
        {
            var_6 = 0;
            wait 0.05;
        }
    }

    var_clear_2
    var_clear_0
    var_5 _meth_80B7();
}

_ID48797()
{
    var_0 = _func_1A2( "kill_ai_in_volume", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        wait 0.1;
        var_2 notify( "trigger",  level._ID794  );
    }

    var_clear_2
    var_clear_0
}

_ID44724()
{
    var_0 = _func_1A1( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_1 = _func_1A2( "destructible_toy", "targetname" );
    var_2 = 0;
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _unknown_1573( var_0 );
        var_2++;

        if ( var_2 > 3 )
        {
            var_2 = 0;
            wait 0.05;
        }
    }

    var_clear_2
    var_clear_0
    var_1 = _func_1A2( "explodable_barrel", "targetname" );
    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];
        var_4 _unknown_15AD( var_0 );
        var_2++;

        if ( var_2 > 3 )
        {
            var_2 = 0;
            wait 0.05;
        }
    }

    var_clear_1
    var_clear_0
}

_ID49334( var_0 )
{
    if ( !self _meth_80B0( var_0 ) )
        return;

    self notify( "delete_destructible" );
    self _meth_80B7();
}

_ID45902()
{
    self._ID26026 = undefined;
}

_ID54470()
{
    self waittill( "trigger" );
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_1 = 600;

    if ( _func_02F( var_0._ID851 ) )
        var_1 = var_0._ID851;

    var_2 = 3;
    _unknown_1623( var_2, var_1, var_0._ID740 );
}

_ID44855( var_0, var_1, var_2 )
{
    var_3 = _ID42237::_ID15566( var_2, _func_1A2( "destructible_toy", "targetname" ), undefined, var_0, var_1, 0 );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        wait(_func_0BA( 0.1, 0.4 ));
        thread _unknown_1672( var_5 );
    }

    var_clear_2
    var_clear_0
}

_ID49578( var_0 )
{
    for ( var_1 = 0; var_1 < 5; var_1++ )
    {
        var_0 notify( "damage",  160, level._ID794, self._ID740, var_0._ID740, "MOD_PISTOL_BULLET", "", ""  );
        wait(_func_0BA( 0.1, 0.2 ));
    }
}

_ID43382()
{
    _ID42237::_ID14413( "player_on_boat" );
    level._ID46392 endon( "death" );

    for (;;)
    {
        _unknown_16DF();
        wait 0.05;
    }
}

_ID43125( var_0, var_1 )
{
    var_2 = _func_1A2( "script_vehicle_zodiac_physics", "classname" );
    var_3 = [];
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_5 == level._ID46392 )
            continue;

        if ( _func_1A8( var_5 ) )
            continue;

        if ( !_unknown_175E( var_5 ) )
            continue;

        var_5 thread _unknown_1746();
    }

    var_clear_2
    var_clear_0
    return var_3;
}

_ID43451()
{
    self notify( "raise_attacker_accuracy_while_in_range" );
    self endon( "raise_attacker_accuracy_while_in_range" );
    self endon( "death" );
    var_0 = self._ID29965;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID4867 = 6;
        var_1._ID1060 = 1000;
    }

    var_clear_2
    var_clear_0

    while ( _unknown_17B3( self ) )
        wait 0.05;

    var_3 = self._ID29965;

    for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
    {
        var_1 = var_3[var_4];
        var_1._ID4867 = 0;
    }

    var_clear_1
    var_clear_0
}

_ID49352( var_0 )
{
    if ( _ID42237::_ID14385( "player_in_open" ) )
        return 1;

    if ( _func_0F5( var_0._ID740, level._ID46392._ID740 ) > 1960000 )
        return 0;

    var_1 = _ID42407::_ID15689( level._ID46392._ID740, level._ID46392._ID65, var_0._ID740 );

    if ( var_1 < 0.642787 )
        return 0;

    return 1;
}

_ID50549( var_0, var_1, var_2 )
{
    level._ID47013 = var_0;
    var_3 = var_1 - level._ID51596;

    if ( var_3 == 0 )
        return;

    var_4 = _func_0C3( var_3 / var_2 );
    level notify( "conveyerbelt_speed" );
    level endon( "conveyerbelt_speed" );
    var_5 = _func_0C1( var_4 / 0.05 );
    var_6 = 0;

    if ( var_5 != 0 )
        var_6 = var_3 / var_5;
    else
        return;

    for ( var_7 = 0; var_7 < var_5; var_7++ )
    {
        wait 0.05;
        level._ID51596 = level._ID51596 + var_6;
    }

    level._ID51596 = var_1;
}

_ID45954()
{
    var_0 = 1;
    var_1 = 20;
    var_2 = level._ID46392 _meth_8291();
    var_3 = _func_0F3( var_2, ( 0, 0, 0 ) ) / 17.6;
    var_2 = _ID42237::_ID14540( var_2 );
    var_4 = _func_119( var_2 );
    var_5 = _func_11F( ( 0, level._ID47013, 0 ) );
    var_6 = _func_0FB( var_5, var_4 );

    if ( _ID42237::_ID14385( "enemy_heli_takes_off" ) )
        var_0 = 1;

    if ( var_3 > 40 )
        var_0 = 0;
    else if ( var_3 < 20 )
        var_0 = 1;
    else
    {
        var_7 = var_3 - 20;
        var_0 = 1 - var_7 / var_1;
    }

    level._ID45954 = level._ID51596 * var_0;
    level._ID45954 = level._ID45954 * level._ID47868;
    self _meth_823F( level._ID47013, level._ID45954 );
}

_ID48802( var_0, var_1 )
{
    level notify( "conveyerbelt_set_speed_fraction" );
    level endon( "conveyerbelt_set_speed_fraction" );

    if ( var_1 == 0 )
    {
        level._ID47868 = var_0;
        return;
    }

    var_2 = level._ID47868;
    var_3 = _func_0C1( var_1 * 20 );
    var_4 = var_0 - var_2 / var_3;

    for ( var_5 = 0; var_5 < var_3; var_5++ )
    {
        level._ID47868 = level._ID47868 + var_4;
        wait 0.05;
    }

    level._ID47868 = var_0;
}

_ID50582()
{
    _unknown_1996( 1 );
}

_ID46820()
{
    self endon( "death" );

    if ( _func_125( self._ID170, "shepherd" ) )
        return;

    while ( !self _meth_81CA( level._ID794 ) && _func_0F3( self._ID740, level._ID794._ID740 ) > 3500 )
        wait 0.1;

    self._ID381 = 1;
    self._ID760 = 0;
    self._ID761 = 0;
}

_ID52721( var_0 )
{
    level notify( "new_river_current" );
    level endon( "new_river_current" );
    var_1 = _ID42237::_ID16638( var_0, "script_noteworthy" );
    var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    var_3 = _func_0BC( 35 );
    var_4 = 45;
    var_5 = var_4;
    var_6 = _func_0BC( 3 );
    var_7 = 10;

    if ( _func_02F( var_1._ID31446 ) )
        var_7 = var_1._ID31446;

    var_8 = _unknown_1AE4( var_2 );
    level._ID51596 = 4;
    _ID42237::_ID14413( "player_on_boat" );
    level._ID46392 endon( "death" );
    level endon( "player_over_the_waterfall" );
    level endon( "water_cliff_jump_splash_sequence" );
    childthread _unknown_1AF7();
    var_9 = ( 0, 0, 0 );

    for (;;)
    {
        var_10 = _ID42407::_ID15689( var_2._ID740, var_8, level._ID46392._ID740 );

        if ( var_10 < 0 )
        {
            var_10 = _ID42407::_ID15689( var_1._ID740, _ID42237::_ID14539( _func_11A( var_2._ID740 - var_1._ID740 ) ), level._ID46392._ID740 );

            if ( var_10 > 0 )
            {
                wait 0.05;
                continue;
            }
            else
            {
                var_1 = _ID42237::_ID16638( var_1._ID1193, "target" );

                if ( !_func_02F( var_1 ) )
                {
                    var_1 = _ID42237::_ID16638( var_2._ID1193, "target" );
                    level._ID46392 thread _unknown_1A6F( var_9[1], 0, 4 );
                }
            }
        }
        else
            var_1 = var_2;

        if ( _func_02F( var_1._ID31446 ) )
            var_7 = var_1._ID31446;

        if ( !_func_02F( var_1._ID1191 ) )
            break;

        if ( var_7 > var_5 )
            var_4 = var_7 + 20;
        else
            var_4 = var_5;

        var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );

        if ( !_func_02F( var_2 ) )
        {
            var_2 = var_1;
            var_1 = _ID42237::_ID16638( var_2._ID1193, "target" );
            wait 0.05;
            continue;
        }

        if ( _func_02F( var_2._ID1191 ) )
            var_8 = _unknown_1BEB( var_2 );

        var_11 = var_7;
        var_9 = _ID42237::_ID14539( _func_11A( var_2._ID740 - var_1._ID740 ) );
        var_10 = _ID42407::_ID15689( var_1._ID740, var_9, var_2._ID740 );
        var_10 = _func_0C3( var_10 );

        if ( var_10 > var_6 )
            var_11 = var_7;
        else if ( var_10 < var_3 )
            var_11 = var_4;
        else
            var_11 = var_3 / var_10 * var_4;

        level._ID43545 = var_11;
        level._ID46392 childthread _unknown_1B27( var_9[1], var_11, 4 );
        wait 0.05;
    }

    level._ID46392 childthread _unknown_1B37( 0, 0, 4 );
}

_ID53055()
{
    if ( !_func_02F( level._ID47868 ) )
        level._ID47868 = 1;

    while ( !_func_02F( level._ID47013 ) )
        wait 0.05;

    level._ID46392 endon( "death" );

    for (;;)
    {
        level._ID46392 _unknown_1B7B();
        wait 0.05;
    }
}

_ID50678( var_0, var_1 )
{
    var_2 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    return _func_11A( var_2._ID740 - var_0._ID740 );
}

_ID53263()
{
    var_0 = _func_1A5();
    var_0._ID45722 = 3;
    var_0._ID13835 = 10;
    level endon( "quit_bread_crumb" );
    level._ID50426 = var_0;
    level._ID43093 = [];

    for (;;)
    {
        _unknown_197C();
        wait 0.05;
    }
}

_ID45435( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
    {
        level._ID50426._ID13835 = var_0;
        return;
    }

    level notify( "set_breadcrumb_fail_time" );
    level endon( "set_breadcrumb_fail_time" );
    var_2 = level._ID50426._ID13835;
    var_3 = var_0 - var_2;
    var_4 = var_1 * 20;
    var_5 = var_3 / var_4;

    for ( var_6 = 0; var_6 < var_4; var_6++ )
    {
        level._ID50426._ID13835 = level._ID50426._ID13835 + var_5;
        wait 0.05;
    }

    level._ID50426._ID13835 = var_0;
}

_ID54157()
{
    for (;;)
    {
        while ( !level._ID794 _meth_8256( "BUTTON_Y" ) )
            wait 0.05;

        if ( _ID42237::_ID14385( "debug_crumbs" ) )
            _ID42237::_ID14388( "debug_crumbs" );
        else
            _ID42237::_ID14402( "debug_crumbs" );

        while ( level._ID794 _meth_8256( "BUTTON_Y" ) )
            wait 0.05;
    }
}

_ID45581()
{
    level._ID28543 endon( "death" );

    while ( !_ID42237::_ID14385( "exit_caves" ) )
    {
        var_0 = level._ID28543 _meth_818C( "tag_flash" );
        var_1 = level._ID28543 _meth_818D( "tag_flash" );

        if ( level._ID28543 _unknown_1E24( var_0, var_1 ) )
        {
            _func_157( level._ID1426["fx/muzzleflashes/m203_flshview"], level._ID28543, "tag_flash" );
            var_2 = level._ID28543._ID322 _meth_809E() + ( 0, 0, 150 );

            if ( _func_0F3( level._ID28543._ID740, level._ID28543._ID322._ID740 ) > 1700 )
                var_2 += ( 0, 0, 150 );

            _func_1C8( "m203", var_0, var_2 );
            wait 2.5;
        }

        wait 0.05;
    }
}

_ID52026()
{
    level._ID28543 endon( "death" );

    for (;;)
    {
        var_0 = level._ID28543 _meth_818C( "tag_flash" );
        var_1 = level._ID28543 _meth_818D( "tag_flash" );

        if ( level._ID28543 _unknown_1EA5( var_0, var_1 ) )
        {
            _func_157( level._ID1426["fx/muzzleflashes/m203_flshview"], level._ID28543, "tag_flash" );
            var_2 = level._ID28543._ID322 _meth_809E() + ( 0, 0, 190 );

            if ( _func_0F3( level._ID28543._ID740, level._ID28543._ID322._ID740 ) > 1700 )
                var_2 += ( 0, 0, 120 );

            _func_1C8( "m203", var_0, var_2 );
            wait 2.5;
        }

        wait 0.05;
    }
}

_ID51952( var_0, var_1 )
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( !_func_0F5( var_0, self._ID322._ID740 ) > 422500 )
        return 0;

    if ( !_ID42237::_ID41802( var_0, var_1, self._ID322 _meth_809E(), 0.965925 ) )
        return 0;

    var_2 = _ID42237::_ID16640( "good_spot_for_grenade_launcher", "targetname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_0F3( var_4._ID740, self._ID322._ID740 ) < var_4._ID851 )
        {
            if ( !_unknown_1F8B( var_4 ) )
                return 1;
        }
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID46397( var_0 )
{
    var_1 = _func_1A2( "explodable_barrel", "targetname" );
    var_2 = var_0._ID851 * var_0._ID851;
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_0F5( var_0._ID740, var_4._ID740 ) > var_2 )
            continue;

        if ( var_4._ID257 )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID45906()
{
    self waittill( "trigger" );
    level._ID28543._ID49812 = self._ID922;
}

_ID43202()
{
    self _meth_8239();
}

_ID43352( var_0, var_1 )
{
    return _ID42407::_ID15689( var_0._ID740, var_0._ID65, var_1._ID740 ) > 0;
}

_ID44689( var_0, var_1 )
{
    return _ID42407::_ID15689( var_0._ID740, _func_11A( var_0 _meth_8291() ), var_1._ID740 ) > 0;
}

_ID44677()
{
    var_0 = _func_0BC( 55 );

    while ( _ID42407::_ID41804( self._ID740, var_0 ) )
        wait 0.05;

    self _meth_80B7();
}

_ID51173( var_0, var_1, var_2, var_3 )
{
    self notify( "newmove" );
    self endon( "newmove" );

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    self._ID49674 = 0;

    if ( !_func_02F( var_1 ) )
        var_1 = 200;

    var_4 = _func_0F3( self._ID740, var_0 );
    var_5 = var_4 / var_1;
    var_6 = _func_119( var_0 - self._ID740 );
    var_7 = 0;
    var_8 = 0;

    if ( var_2 > 0 )
        var_7 = var_5 * var_2;

    if ( var_3 > 0 )
        var_8 = var_5 * var_3;

    self _meth_82B8( var_0, var_5, var_7, var_8 );
    wait(var_5);

    if ( !_func_02F( self ) )
        return;

    self._ID1283 = var_6 * var_4 / var_5;
    self._ID49674 = 1;
}

_ID53743( var_0, var_1 )
{
    self endon( "death" );
    self endon( "waterfall_sequence" );

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    level._ID28543 notify( "new_price_anim_single_on_boat" );
    level._ID28543 endon( "new_price_anim_single_on_boat" );
    level._ID28543 endon( "death" );

    if ( _func_02F( level._ID28543._ID21839 ) )
        _ID42407::_ID40847( level._ID28543._ID21839, 0.5 );

    _ID42407::_ID15093( ::_unknown_2171, var_0, var_1 );
    level._ID28543._ID21839 = _func_03D();
}

_ID52263( var_0, var_1 )
{
    level._ID46392 endon( "death" );
    level._ID28543 endon( "death" );
    level._ID28543 endon( "waterfall_sequence" );
    _ID42237::_ID14402( "price_anim_on_boat" );
    level._ID28543 _meth_8053( level._ID46392, "tag_guy2" );
    level._ID28543 _meth_859D( 0 );
    level._ID46392 _ID42259::_ID3111( level._ID28543, var_0, "tag_guy2", 0, "generic" );
    level._ID28543 _meth_859D();

    if ( !var_1 )
        return;

    _unknown_2243();
    _ID42237::_ID14388( "price_anim_on_boat" );
}

_ID44930( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    level._ID28543 notify( "new_price_anim_single_on_boat" );
    level._ID28543 endon( "new_price_anim_single_on_boat" );
    level._ID46392 thread _ID42259::_ID3025( level._ID28543, var_0, var_1, "tag_guy2" );
    level._ID46392 waittill( var_1 );

    if ( var_2 )
        _unknown_2280();

    _ID42237::_ID14388( "price_anim_on_boat" );
}

_ID51590( var_0 )
{
    self _meth_8054( var_0, "tag_guy2", 0 );
}

_ID49297( var_0 )
{
    _ID49297( var_0 );
    self _meth_81D6( "crouch" );
    self._ID40065 = var_0;
    self._ID45554 = 1;
    thread _unknown_227E();
    self._ID52797 = 4000000;
    self._ID495 = 2048;
    self _meth_81A6( _ID45655::_ID37647 );
}

_ID45537()
{
    level._ID28543 endon( "stop_boatrider_targets" );
    level._ID28543 endon( "death" );

    for (;;)
    {
        wait 0.05;
        var_0 = level._ID28543 _ID48669::_ID43183( level._ID46392, level._ID794 _meth_80AF(), 1 );

        if ( !_func_02F( var_0._ID25268 ) )
        {
            level._ID28543 _meth_8174();
            continue;
        }

        if ( !_func_0D4( var_0._ID25268 ) )
        {
            level._ID28543 _meth_8173( var_0._ID25268 );
            level._ID28543._ID377 = undefined;

            if ( _func_02F( var_0._ID44118 ) )
                var_0._ID25268 thread _unknown_2311();

            continue;
        }

        level._ID28543 _meth_8174();
        level._ID28543._ID377 = var_0._ID25268;
    }
}

_ID43246()
{
    self notify( "enable_shoot_driver" );
    self endon( "enable_shoot_driver" );
    self._ID49 = 1;
    self _meth_82CA( 1 );
    self waittill( "damage" );
    _ID48669::_ID48600( self );
}

_ID48752()
{
    level._ID28543 _unknown_231A( level._ID46392 );
    level._ID28543 _meth_81A6( _ID45655::_ID37647 );
}

_ID46291( var_0 )
{
    var_1 = var_0._ID1210;
    var_2 = var_0._ID13016;
    var_3 = var_0._ID1067;
    var_4 = var_0._ID43241;
    var_5 = var_0._ID52073;
    level._ID794 _meth_8334( 1 );
    var_6 = var_1 * 20;
    var_7 = var_4;
    var_8 = var_5 - var_4;
    var_9 = var_8 / var_6;
    var_6 = _func_0C1( var_6 );

    for ( var_10 = 0; var_10 < var_6; var_10++ )
    {
        var_7 += var_9;
        level._ID794 _meth_8084( var_2, var_3, 1, var_7, var_7, var_7, var_7 );
        wait 0.05;
    }

    level._ID794 _meth_8334( 0 );
}

_ID54554()
{
    var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
    self waittill( "trigger" );
    var_1 = _func_119( self._ID740 - var_0._ID740 );
    var_2 = _func_119( level._ID46392 _meth_8291() );
    var_3 = _func_0FB( var_2, var_1 );

    if ( var_3 > 0.984807 )
        level._ID28543 _ID42407::_ID28864( "afchase_pri_threadtheneedle", 1 );
}

_ID54171( var_0, var_1 )
{
    _func_194( var_0, var_1, ( 0, 0, 80 ) );
    var_1 waittill( "death" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
}

_ID46511()
{
    self._ID1274 = "follow";
    self _meth_823D();

    for (;;)
    {
        self waittill( "veh_jolt" );

        if ( _func_0F3( self._ID740, level._ID794._ID740 ) < 512 )
            break;
    }

    self _meth_8239();
}

_ID50998( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = _func_0F5( var_1[0]._ID740, var_0 );
    var_3 = var_1[0];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = _func_0F5( var_1[var_4]._ID740, var_0 );

        if ( var_5 < var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_ID44304( var_0 )
{
    var_1 = var_0._ID1194;
    var_0 endon( "death" );
    var_0._ID507 = 1;

    while ( var_0 _meth_80B0( self ) )
        wait 0.05;

    var_0._ID507 = 0;
}

_ID44476()
{
    for (;;)
    {
        while ( !level._ID794 _meth_8256( "BUTTON_B" ) )
            wait 0.05;

        _unknown_1D3C();

        while ( level._ID794 _meth_8256( "BUTTON_B" ) )
            wait 0.05;
    }
}

_ID43915( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _func_1A5();
    var_5._ID1210 = var_0;
    var_5._ID13016 = var_1;
    var_5._ID1067 = var_2;
    var_5._ID43241 = var_3;
    var_5._ID52073 = var_4;
    return var_5;
}

_ID47634()
{
    return level._ID794._ID486 / level._ID794._ID626 == 1;
}

_ID46641()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_func_1A7( var_0 ) )
            continue;

        if ( !_ID42407::_ID14360( var_0 ) )
            continue;

        thread _unknown_25A7( var_0 );
    }
}

_ID50658()
{
    self endon( "death" );

    for (;;)
    {
        _ID42237::_ID11682( self._ID740, self._ID740 + _func_11F( self._ID65 ) * 200, ( 0, 0, 1 ) );
        wait 0.05;
    }
}

_ID45831()
{
    if ( !_func_03A( "scr_zodiac_test" ) )
        return;

    wait 3;
    _func_19F( "you will need to reset scr_zodiac_test to play the level normally again ( restart the game )" );
}

_ID46011( var_0 )
{
    if ( !_func_02F( level._ID52679 ) )
        level._ID52679 = [];
    else if ( _func_02F( level._ID52679[var_0] ) )
        return level._ID52679[var_0];

    level._ID52679[var_0] = _ID42407::_ID35168( var_0, 1 );
    level._ID52679[var_0] thread _ID42407::_ID22746();
    level._ID52679[var_0] _ID42407::_ID10949();
    level._ID52679[var_0]._ID513 = 1;
    level._ID52679[var_0] _ID42407::_ID32226( 0 );
    return level._ID52679[var_0];
}

_ID48552()
{
    level._ID28543._ID49812 = undefined;
    level._ID28543._ID51079 = 1;
}

_ID45377()
{
    self _meth_85A2( 1 );
    thread _ID48669::_ID54374( self );
    self._ID11584 = 1;
    var_0 = self._ID29965;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 thread _unknown_218E( self );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_on_boat" );
    self endon( "death" );
    level._ID46392 endon( "death" );

    for (;;)
    {
        var_3 = level._ID46392._ID740;
        var_4 = self._ID740;

        if ( _func_0F5( self._ID740, level._ID46392._ID740 ) > 9000000 )
        {
            wait 0.05;
            continue;
        }

        level._ID45454 = animscripts\battlechatter::_ID16223( level._ID46392._ID65, var_3, var_4 );
        level notify( "dialog_direction" );
        wait 0.05;
    }
}

_ID53957( var_0, var_1 )
{
    self notify( "exp_fade_overlay" );
    self endon( "exp_fade_overlay" );
    var_2 = 4;
    var_3 = 90 / var_2;
    var_4 = 0;
    var_5 = var_1 / var_2;
    var_6 = self._ID55;
    var_7 = var_6 - var_0;

    for ( var_8 = 0; var_8 < var_2; var_8++ )
    {
        var_4 += var_3;
        self _meth_808B( var_5 );

        if ( var_0 > var_6 )
        {
            var_9 = 1 - _func_0BC( var_4 );
            self._ID55 = var_6 - var_7 * var_9;
        }
        else
        {
            var_9 = _func_0BB( var_4 );
            self._ID55 = var_6 - var_7 * var_9;
        }

        wait(var_5);
    }
}

_ID48887()
{
    self endon( "death" );
    level._ID46392 endon( "death" );

    for (;;)
    {
        var_0 = 1;
        var_1 = _unknown_281E( level._ID46392 _meth_8291() );

        if ( !_ID42407::_ID41803( self._ID740, self._ID65, var_1, 0.984808 ) )
            var_0 = 0;

        if ( _func_0F3( self._ID740, var_1 ) < 2000 )
            var_0 = 0;

        if ( _func_0F3( self._ID740, var_1 ) > 5000 )
            var_0 = 0;

        if ( !_unknown_2797() )
            var_0 = 0;

        if ( var_0 )
        {
            thread _unknown_287F();
            _ID42237::_ID14426( "heli_firing" );
            wait(_func_0BA( 1.2, 2.4 ));
        }

        wait 0.05;
    }
}

_ID45122( var_0 )
{
    return level._ID46392._ID740 + var_0 * 1.5;
}

_ID45609( var_0 )
{
    if ( _ID42237::_ID14385( "rapids_trigger" ) )
        return;

    var_1 = _func_119( var_0 - level._ID46392._ID740 );
    var_2 = _func_11E( level._ID46392._ID65 );
    var_3 = _func_0FB( var_2, var_1 );

    if ( var_3 < 0 )
    {
        if ( _ID42237::_ID8201() )
            _unknown_2BE9( "afchase_pri_rightright", 0.5 );
        else
            _unknown_2BF5( "afchase_pri_right", 0.5 );
    }
    else if ( _ID42237::_ID8201() )
        _unknown_2C08( "afchase_pri_leftleft", 0.5 );
    else
        _unknown_2C15( "afchase_pri_left", 0.5 );
}

_ID43770()
{
    if ( !_func_1A7( self ) )
        return;

    if ( _ID42237::_ID14385( "heli_firing" ) )
        return;

    _ID42237::_ID14402( "heli_firing" );
    var_0 = _func_03D() + 3000;

    if ( !_func_1A7( self ) )
    {
        _ID42237::_ID14388( "heli_firing" );
        return;
    }

    var_1 = _func_0B9( 4, 5 );
    var_2 = level._ID46392 _meth_8291();
    var_3 = _unknown_292B( var_2 );
    var_3 += _ID42237::_ID14540( _ID42237::_ID28978( -120, 120 ) );
    _unknown_2943( var_3 );
    var_4 = var_3;
    var_5 = [];
    var_6 = _func_06A( "script_origin", level._ID46392._ID740 );
    var_6 thread _unknown_29E0( level._ID46392 );

    for ( var_7 = 0; var_7 < var_1; var_7++ )
    {
        var_5[var_7] = _func_06A( "script_origin", var_4 );
        var_5[var_7] _meth_8053( var_6 );
        var_4 += var_2 * 0.1;
    }

    var_8 = [];
    var_8[0] = "tag_missile_right";
    var_8[1] = "tag_missile_left";
    var_9 = [];

    for ( var_7 = 0; var_7 < var_1; var_7++ )
    {
        if ( !_func_1A7( self ) )
            break;

        self _meth_8271( "littlebird_FFAR" );
        self _meth_826C( var_5[var_7] );
        var_10 = self _meth_8272( var_8[var_7 % var_8.size], var_5[var_7], ( 0, 0, 0 ) );
        var_10 _meth_81E8();
        var_10 _meth_81E5( var_5[var_7] );
        var_10 thread _unknown_2C4E();
        wait(_func_0BA( 0.2, 0.3 ));
    }

    var_6 notify( "balls" );
    _ID42237::_ID14388( "heli_firing" );
    wait 15;
    var_11 = var_5;

    for ( var_13 = _func_1DA( var_11 ); _func_02F( var_13 ); var_13 = _func_1BF( var_11, var_13 ) )
    {
        var_12 = var_11[var_13];
        var_12 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_6 _meth_80B7();
}

_ID47252( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_1 = self._ID740 - var_0._ID740;

    for (;;)
    {
        self _meth_82B8( var_0._ID740 + var_1, 0.05, 0, 0 );
        wait 0.05;
    }
}

_ID54310( var_0 )
{
    return level._ID30895["generic"][var_0];
}

_ID52556()
{
    level._ID46392 notify( "cleanup" );

    if ( _func_02F( level._ID46392._ID46302 ) )
    {
        level._ID46392 _meth_802A( level._ID43508, "tag_weapon_left" );
        level._ID46392._ID46302 = undefined;
    }
}

_ID49269()
{
    level endon( "water_cliff_jump_splash_sequence" );

    if ( !0 )
        level._ID794 waittill( "death" );

    if ( 0 )
    {
        while ( !level._ID794 _meth_8256( "BUTTON_B" ) )
            wait 0.05;

        wait 0.5;
        level._ID794 _meth_8058();
    }

    thread _ID42407::_ID28876();
    _unknown_2382( "bump_small_player_dies", "bump_big_player_dies" );
    _unknown_2B4C();
}

_ID48432( var_0 )
{
    var_1 = _func_0CB( level._ID794._ID740, 800, 500, 1000, "path" );
    var_2 = _func_11F( level._ID794._ID65 );
    var_3 = var_1;

    for ( var_7 = _func_1DA( var_3 ); _func_02F( var_7 ); var_7 = _func_1BF( var_3, var_7 ) )
    {
        var_4 = var_3[var_7];
        var_5 = _func_119( var_4._ID740 - level._ID794._ID740 );
        var_6 = _func_0FB( var_2, var_5 );

        if ( var_6 > _func_0BC( 15 ) )
        {
            level._ID43501 = var_4;
            return 1;
        }
    }

    var_clear_4
    var_clear_0
    return 0;
}

_ID53710()
{
    var_0 = _func_0CB( level._ID794._ID740, 230, 100, 1000, "path" );
    var_1 = _func_11F( level._ID794._ID65 );
    var_2 = var_0;

    for ( var_6 = _func_1DA( var_2 ); _func_02F( var_6 ); var_6 = _func_1BF( var_2, var_6 ) )
    {
        var_3 = var_2[var_6];
        var_4 = _func_119( var_3._ID740 - level._ID794._ID740 );
        var_5 = _func_0FB( var_1, var_4 );

        if ( var_5 < _func_0BC( 45 ) && var_5 > 0 && _unknown_2C22( var_3 ) )
            return var_3;
    }

    var_clear_4
    var_clear_0
}

_ID46114()
{
    self endon( "death" );
    var_0 = self._ID4867;
    wait 0.1;

    if ( !_func_02F( level._ID46392 ) )
        return;

    level._ID46392 endon( "death" );

    if ( _func_02F( self._ID29969 ) && _func_125( self._ID29969._ID170, "zodiac" ) )
        return;

    if ( _func_125( self._ID170, "shepherd" ) )
        return;

    for (;;)
    {
        while ( _unknown_278D( self ) )
            wait 0.05;

        self._ID4867 = 0;
        self._ID513 = 0;

        while ( !_unknown_27A1( self ) )
            wait 0.05;

        self._ID4867 = var_0;
    }
}

_ID48364()
{
    self _meth_8295();
    _ID42411::_ID16988();
    self _meth_80C7();
    level._ID46392 = self;
    level._ID46392 _meth_8062();
    self _meth_80B8( "vehicle_zodiac" );
    self waittill( "vehicle_mount",  var_0  );
    self _meth_80A1( "zodiac_player_startup" );
    level._ID11390["nearStart"] = 10;
    level._ID11390["nearEnd"] = 20;
    _func_0DB( "hud_showstance", 0 );
    self _meth_80B8( "vehicle_zodiac_viewmodel" );
    self _meth_8296();
    _ID42237::_ID14402( "player_on_boat" );
    thread _ID42407::_ID4423( "mount_boat" );
    _ID42407::_ID10226( 4, _ID42407::_ID1888, "boat_check_player_speeding_along", ::_unknown_25FA, "players boat not moving fast enough!" );
    level._ID794 _ID42407::_ID13021( "near_death_vision_enabled" );
    thread _unknown_2FB7();
    thread _unknown_3007();
    thread _unknown_27F5();
    thread _unknown_271C();
    thread _unknown_2D13();
    thread _unknown_237D();
    var_1 = _unknown_2BE8( "boatrider0" );

    if ( !var_1 _ID42407::_ID13023( "price_animated_into_boat" ) )
        var_1 thread _unknown_2B01( self );
    else
    {
        var_1 _ID42407::_ID13027( "price_animated_into_boat" );
        level notify( "stop_animate_price_into_boat" );
        level._ID28543 _meth_814B();
        level._ID28543 thread _unknown_2B22( level._ID46392 );
    }

    self _meth_823C();
    level._ID46392 thread _unknown_31A0();
}

_ID48492( var_0 )
{
    var_0._ID86 = 0;
    var_0._ID4867 = 0.1;
    var_0._ID513 = 1;
    var_0._ID304 = 1;
    var_0._ID1190 = 0;
    var_0._ID1060 = 0;
    var_0._ID764 = 0;
    var_0._ID509 = 1;
    var_0 _ID42407::_ID10973();
    var_0._ID465 = 0;
    var_0._ID511 = 1;
    var_0._ID512 = 1;
    var_0._ID11002 = 1;
    _ID42237::_ID14413( "player_on_boat" );
    var_0._ID4867 = 25;
}

_ID46392()
{

}

_ID43845( var_0, var_1 )
{
    var_2 = _func_1A1( var_0, "targetname" );
    var_3 = _func_1F2( var_1, "targetname" );
    var_2._ID1191 = var_3._ID1193;
}

_ID52505( var_0, var_1 )
{
    var_2 = _func_1A1( var_0, "targetname" );
    var_3 = _func_1A1( var_1, "targetname" );
    var_2._ID1191 = var_3._ID1193;
    var_2._ID740 = var_3._ID740;
    var_2._ID65 = var_3._ID65;
    var_2._ID997 = var_3._ID997;
}

_ID44610()
{
    level._ID43093 = [];
    level._ID48502 = self;
    self endon( "death" );
    self _meth_823C( 1 );
    self._ID1274 = "constrained";
    thread _unknown_27A0();
    var_0 = self._ID29965;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_02F( var_1._ID22746 ) && var_1._ID22746 )
            continue;

        var_1 thread _ID42407::_ID22746();
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        wait 0.25;
        _unknown_24D8();
    }
}

_ID49209()
{
    if ( !_ID42407::_ID20505() )
        _ID42297::_ID39221();

    var_0 = _unknown_2D44( "boatrider0" );
    level._ID28543 = var_0;
    thread _unknown_2F47( var_0 );
    thread _unknown_2B2B();
    var_1 = _func_1A2( "kill_ai_in_volume", "targetname" );
    _ID42237::_ID3350( var_1, ::_unknown_28CD );
}

_ID44939()
{
    var_0 = _func_06A( "trigger_radius", self._ID740 + ( 0, 0, -2000 ), 0, 4500, 2000 );
    var_0 waittill( "trigger" );
    level notify( "dialog_rpg_bridge_guy" );
}

_ID47566()
{
    self endon( "death" );
    var_0 = _func_06A( "script_origin", level._ID46392._ID740 );
    _ID42407::_ID13024( "first_player_sighting" );
    _ID42407::_ID10932();
    self _meth_8173( var_0 );
    self._ID377 = var_0;
    self._ID507 = 1;
    self._ID45762 = _func_03D() + _func_0B9( 1000, 2000 );
    var_1 = _ID42237::_ID14540( _ID42237::_ID28978( -64, 64 ) );
    var_2 = 3000;

    while ( _func_1A7( self ) )
    {
        var_3 = level._ID46392 _meth_8291() * 1.4;
        var_4 = level._ID46392._ID740 + var_3;
        var_4 = _ID42407::_ID32530( var_4, level._ID46392._ID740[2] + 24 );

        if ( !_func_08F( level._ID794 _meth_80AF() + ( 0, 0, 16 ), var_4, 0, self ) )
        {
            var_5 = _func_0F3( ( 0, 0, 0 ), var_3 );
            var_0._ID740 = _ID51260::_ID48037( level._ID794._ID43692, level._ID794._ID28675 + var_5 - level._ID50860, level._ID794._ID25468 );
            var_0._ID740 = _ID42407::_ID32530( var_0._ID740, level._ID46392._ID740[2] + 24 );
            var_0._ID740 = var_0._ID740 + var_4 / 2;
        }
        else
            var_0._ID740 = var_4;

        self _meth_819B( "face point", var_0._ID740 );
        var_6 = 0;

        if ( _func_02F( self._ID1302 ) && self._ID1302 != "none" && _func_08F( self _meth_818C( "tag_flash" ), level._ID794 _meth_80AF(), 0, self ) )
        {
            var_6 = 1;

            if ( !_ID42407::_ID13019( "first_player_sighting" ) )
                _ID42407::_ID13025( "first_player_sighting" );
        }

        if ( !_ID42407::_ID13019( "first_player_sighting" ) )
            self._ID45762 = _func_03D() + _func_0B9( 1000, 2000 );

        if ( _func_03D() > self._ID45762 )
        {
            if ( var_6 )
            {
                if ( _func_02F( self._ID1302 ) && self._ID1302 != "none" && _func_08F( self _meth_818C( "tag_flash" ), var_0._ID740 + var_1, 0, self ) )
                {
                    if ( _func_0F3( self._ID740, level._ID794._ID740 ) < var_2 )
                    {
                        if ( _func_03D() > level._ID53724 )
                            break;
                    }
                }
            }
        }

        wait 0.05;
    }

    var_7 = "rpg_straight_af_chase";

    if ( _func_02F( self ) && _func_02F( self._ID1302 ) && self._ID1302 != "none" && _func_02F( self _meth_818C( "tag_flash" ) ) )
    {
        var_8 = _func_1C8( var_7, self _meth_818C( "tag_flash" ), var_0._ID740 + var_1 );
        var_8 thread _unknown_325E();
    }

    level._ID53724 = _func_03D() + _func_0B9( 300, 500 );
    var_0 _meth_80B7();
}

_ID46827()
{
    level._ID46392 endon( "death" );
    self endon( "death" );

    while ( _unknown_2DF1( level._ID794, self ) )
        wait 0.05;

    thread _ID42237::_ID27077( "wpn_exp_water_lyr_behind" );
    self _meth_80B7();
}

_ID52462()
{
    _ID42237::_ID14413( "exit_caves" );
    _unknown_2FB2();
}

_ID52434( var_0 )
{
    level endon( "end_teleport_price_on_mount" );
    level._ID46392 waittill( "vehicle_mount" );
    level._ID28543 _unknown_32D9( var_0 );
}

_ID46760( var_0 )
{
    self _meth_81D2( var_0._ID740, var_0._ID65 );
    self _meth_81B2( self._ID740 );
}

_ID46043()
{
    var_0 = [];
    var_0 = _ID42237::_ID3293( var_0, "TF_pri_callout_targetclock_" );
    var_1 = [];
    var_1 = _ID42237::_ID3293( var_1, "afchase_pri_evasive" );
    var_1 = _ID42237::_ID3293( var_1, "afchase_pri_shakeemoff" );
    var_1 = _ID42237::_ID3293( var_1, "afchase_pri_miniguns" );
    var_2 = [];
    var_2 = _ID42237::_ID3293( var_2, "afchase_pri_dodgeheli" );
    var_2 = _ID42237::_ID3293( var_2, "afchase_pri_gunsspinup" );
    var_2 = _ID42237::_ID3293( var_2, "afchase_pri_steerclear" );
    var_3 = [];
    var_3 = _ID42237::_ID3293( var_3, "afchase_pri_rpgsonbridge" );
    var_4 = [];
    var_4["dialog_direction"] = var_0;
    var_4["dialog_helicopter_six"] = var_1;
    var_4["dialog_helicopter_ahead"] = var_2;
    var_4["dialog_rpg_bridge_guy"] = var_3;
    var_5["dialog_direction"] = 0.5;
    var_5["dialog_helicopter_six"] = 1;
    var_5["dialog_helicopter_ahead"] = 1;
    var_5["dialog_rpg_bridge_guy"] = 0.7;
    var_6["dialog_direction"] = 5500;
    var_6["dialog_helicopter_six"] = 9300;
    var_6["dialog_helicopter_ahead"] = 2000;
    var_6["dialog_rpg_bridge_guy"] = 10000;
    var_7["dialog_direction"] = _func_03D();
    var_7["dialog_helicopter_six"] = _func_03D();
    var_7["dialog_helicopter_ahead"] = _func_03D();
    var_7["dialog_rpg_bridge_guy"] = _func_03D();
    var_8 = var_4;
    var_9 = undefined;
    wait 1;
    level endon( "price_stops_talking_about_helicopters" );
    level._ID794 endon( "death" );
    self endon( "death" );
    _ID42237::_ID14413( "exit_caves" );

    for (;;)
    {
        var_10 = level _ID42237::_ID41075( "dialog_direction", "dialog_helicopter_six", "dialog_helicopter_ahead", "dialog_rpg_bridge_guy" );

        if ( _ID42237::_ID14385( "price_anim_on_boat" ) )
            continue;

        if ( _ID42237::_ID14385( "rapids_head_bobbing" ) )
            continue;

        var_9 = _ID42237::_ID28945( var_8[var_10] );

        if ( _func_03D() - var_7[var_10] < var_6[var_10] )
            continue;

        var_7[var_10] = _func_03D();

        if ( var_10 == "dialog_direction" )
        {
            if ( level._ID45454 == "12" )
                _unknown_34D1( var_9 + level._ID45454, var_5[var_10] );
            else
                level._ID28543 thread _ID42407::_ID15504( var_9 + level._ID45454, var_5[var_10] );
        }
        else
            _unknown_34ED( var_9, var_5[var_10] );

        var_8[var_10] = _ID42237::_ID3321( var_8[var_10], var_9 );

        if ( !var_8[var_10].size )
        {
            var_8[var_10] = var_4[var_10];

            if ( var_4[var_10].size > 1 )
                var_8[var_10] = _ID42237::_ID3321( var_8[var_10], var_9 );
        }

        wait 0.05;

        if ( _ID42237::_ID14385( "player_in_sight_of_boarding" ) )
            return;
    }
}

_ID49615( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    var_2 = level._ID28543._ID7._ID52880;
    var_3 = 0;

    if ( level._ID28543._ID7._ID21978 > _func_03D() - 2000 && !_unknown_316E() || _func_02F( level._ID28543._ID54140 ) && level._ID28543._ID54140 || level._ID28543 _ID42407::_ID13019( "transitioning_positions" ) )
        var_3 = 1;

    if ( var_3 )
        level._ID28543 thread _unknown_35A8( _ID42407::_ID15504, var_0, var_1 );
    else
        level._ID28543 thread _unknown_35B9( ::_unknown_3088, var_2 + "_" + var_0 );
}

_ID45248( var_0, var_1, var_2 )
{
    if ( _func_02F( level._ID48967 ) && !level._ID48967 )
    {
        level._ID48967 = 1;
        level._ID28543 [[ var_0 ]]( var_1, var_2 );
        wait 0.5;
        level._ID48967 = 0;
    }
}

_ID49818()
{
    var_0 = 8000;
    var_1 = _func_03D() + var_0;
    var_2 = [];
    var_2 = _ID42237::_ID3293( var_2, "afchase_pri_gettingaway" );
    var_2 = _ID42237::_ID3293( var_2, "afchase_pri_gogogo" );
    var_2 = _ID42237::_ID3293( var_2, "afchase_pri_cantlet" );
    var_2 = _ID42237::_ID3293( var_2, "afchase_pri_losinghim" );
    var_2 = _ID42237::_ID3293( var_2, "afchase_pri_drivingtheboat" );
    var_2 = _ID42237::_ID3293( var_2, "afchase_pri_fullpower" );
    var_3 = var_2;
    var_4 = undefined;
    self endon( "death" );
    level._ID28543 endon( "death" );

    for (;;)
    {
        if ( _unknown_2CA4() > 0.5 && var_1 < _func_03D() && !level._ID28543 _ID42407::_ID13019( "transitioning_positions" ) )
        {
            var_4 = _ID42237::_ID28945( var_3 );

            if ( _ID42237::_ID14385( "rapids_head_bobbing" ) )
            {
                wait 0.05;
                continue;
            }

            _unknown_3648( var_4 );
            var_3 = _ID42237::_ID3321( var_3, var_4 );
            var_1 = _func_03D() + var_0;

            if ( !var_3.size )
                var_3 = var_2;
        }

        wait 0.05;

        if ( _ID42237::_ID14385( "stop_boat_dialogue" ) )
            return;
    }
}

_ID52533()
{
    level._ID794 endon( "death" );
    self waittill( "trigger" );
    _unknown_3682( "afchase_pri_thrucave" );
}

_ID45651()
{
    level._ID28543 thread _ID42407::_ID15504( "afchase_pri_aroundcorner" );
    wait 4;
    level._ID28543 thread _ID42407::_ID15504( "afchase_pri_getonboat" );
    wait 2;
}

_ID50675()
{
    var_0 = 4000;
    var_1 = _func_03D() + var_0;
    var_2 = 2;
    var_3 = 0;
    var_4 = [];
    var_4 = _ID42237::_ID3293( var_4, "afchase_pri_wrongway" );
    var_4 = _ID42237::_ID3293( var_4, "afchase_pri_turntoobjective" );
    var_4 = _ID42237::_ID3293( var_4, "afchase_pri_wheregoing" );
    var_5 = var_4;
    var_6 = undefined;
    wait 1;
    self endon( "death" );
    level._ID48502 endon( "death" );
    level._ID794 endon( "death" );

    for (;;)
    {
        if ( !_unknown_31B2( level._ID46392, level._ID48502 ) && var_1 < _func_03D() )
            var_3 += 0.05;
        else
            var_3 = 0;

        if ( _ID42237::_ID14385( "price_anim_on_boat" ) )
        {
            wait 0.05;
            continue;
        }

        if ( var_3 > var_2 )
        {
            var_6 = _ID42237::_ID28945( var_5 );
            level._ID28543 thread _ID42407::_ID15504( var_6 );
            var_5 = _ID42237::_ID3321( var_5, var_6 );
            var_1 = _func_03D() + var_0;

            if ( !var_5.size )
                var_5 = var_4;
        }

        wait 0.05;

        if ( _ID42237::_ID14385( "stop_boat_dialogue" ) )
            return;
    }
}

_ID46280()
{
    level endon( "stop_animate_price_into_boat" );
    waitframe;
    var_0 = _func_0C8( self._ID1191, "targetname" );
    var_1 = _func_06A( "script_origin", var_0._ID740 );
    var_1._ID65 = var_0._ID65 + ( 0, -90, 0 );
    level._ID28543 _ID42407::_ID13024( "price_animated_into_boat" );
    var_1 _ID42237::_ID10192( 2, ::_meth_8053, level._ID46392 );
    thread _unknown_36F9( var_1 );
    var_1 _ID42259::_ID3027( level._ID28543, "price_into_boat" );
    level notify( "end_teleport_price_on_mount" );
    level._ID28543 _meth_8053( var_1 );
    level._ID28543 _ID42407::_ID10226( 1.5, _ID42407::_ID13025, "price_animated_into_boat" );
    level._ID46392 _ID42237::_ID10192( 1, ::_meth_825E, level._ID28543._ID740, 0.15 );
    level._ID46392 _ID42407::_ID10226( 1, _ID42237::_ID27077, "water_boat_splash_small", level._ID46392._ID740 );
    var_1 _ID42259::_ID3020( level._ID28543, "price_into_boat" );
    level._ID28543 thread _unknown_3344( level._ID46392 );
}

_ID47094()
{
    _func_1A1( "damaged_pavelow", "targetname" ) _meth_805A();
    _ID42237::_ID14413( "end_heli_crashed" );
    _ID42234::_ID13611( "heli_fire" );
    var_0 = _func_1A1( "damaged_pavelow", "targetname" );
    wait 0.5;
    var_0 _meth_8059();
    var_1 = _func_06A( "trigger_radius", var_0._ID740 + ( 0, 0, -100 ), 0, 670, 600 );
    var_1 waittill( "trigger" );
}

_ID54381()
{
    self waittill( "trigger" );
    level._ID28543 thread _ID42407::_ID15504( "afchase_pri_openareas" );
}

_ID47193()
{
    var_0 = _ID42237::_ID16299( "cliff_rocket_explosion" );
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;

    switch ( self._ID1193 )
    {

    }

    var_1 _meth_8271( "littlebird_FFAR" );
    var_1 _meth_826C( var_2 );
    var_4 = var_1 _meth_8272( "tag_missile_left", var_2, ( 0, 0, 0 ) );
    var_4 _meth_81E8();
    var_4 _meth_81E5( var_2 );
    wait 0.25;
    var_1 _meth_826C( var_3 );
    var_5 = var_1 _meth_8272( "tag_missile_right", var_3, ( 0, 0, 0 ) );
    var_5 _meth_81E8();
    var_5 _meth_81E5( var_3 );
    wait 0.5;
    _func_156( var_0, var_2._ID740 );
    thread _ID42237::_ID27077( "scn_cliff_rocket_explosion", var_2._ID740 );
    wait 0.25;
    _func_156( var_0, var_3._ID740 );
    thread _ID42237::_ID27077( "scn_cliff_rocket_explosion", var_3._ID740 );
    case "helicopterFireHill05_trigger":
    case "helicopterFireHill04_trigger":
    case "helicopterFireHill03_trigger":
    case "helicopterFireHill02_trigger":
    case "helicopterFireHill01_trigger":
    default:
}

_ID47428()
{
    self waittill( "trigger" );
    _func_0DB( "hud_showStance", 0 );

    if ( _ID42237::_ID14385( "player_on_boat" ) )
        return;

    var_0 = level._ID46392 _meth_818C( "tag_player" );
    var_1 = level._ID46392 _meth_818D( "tag_player" );
    thread _unknown_3C11();
    level._ID794 _unknown_3DF6( level._ID46392 );
    level._ID46392 _meth_80C6();
    level._ID46392 _meth_80A0( level._ID794 );
    level._ID794._ID11803 = level._ID46392;
    _unknown_3C5F();
    level._ID28543 _meth_859D();
    level._ID28543 _meth_8583();
}

af_chase_update_wibble_on_price()
{
    self endon( "death" );
    var_0 = 0;

    for (;;)
    {
        var_1 = self _meth_8290();

        if ( _ID42237::_ID14396( "player_in_position_for_boarding_sequence" ) && _ID42237::_ID14385( "player_in_position_for_boarding_sequence" ) )
        {
            var_0 += self._ID1278 / 300.0;
            var_1 -= var_0;
        }

        var_1 = _func_0EE( var_1 / self._ID1278, 0, 1 );
        _func_2F1( 0, "xy", var_1 * 0.7, var_1 * 0.5 );
        waittillframeend;
    }
}

_ID48323()
{
    var_0 = _ID54167::_ID43386( "enter_zodiac" );
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.1 ) _ID54167::_ID47198( 0.08, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 1.55 ) _ID54167::_ID47198( 0.06, 0.9, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID48490()
{
    var_0 = _func_1A2( "vehicle_clip_boat_only_1", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID740 = var_2._ID740 + ( 0, 0, 256 );
    }

    var_clear_2
    var_clear_0
}

_ID46117()
{
    self._ID740 = self._ID740 + ( 0, 0, -50 );
    self waittill( "trigger" );
    level._ID28543 thread _ID42407::_ID15504( "afchase_pri_right" );
}

_ID54038()
{
    return _unknown_3EC2();
}

_ID49813()
{
    self waittill( "trigger" );
    _ID42237::_ID14402( "exit_caves" );
    wait 1.1;
    wait 3;
    _func_0DB( "sm_sunSampleSizeNear", "2" );

    if ( _func_02F( level._ID28543 ) )
        level._ID28543 _meth_8095();

    level._ID794._ID11803 _meth_85A2( 1 );
}

_ID54639()
{
    self endon( "death" );
    wait 0.5;
    var_0 = self._ID740[2];

    while ( self._ID740[2] == var_0 )
        wait 0.1;

    self _meth_8058();
}

_ID47096( var_0 )
{
    self waittill( "trigger" );
    level._ID44434 = var_0;
}

_ID44036()
{
    level._ID794 endon( "death" );
    self waittill( "trigger" );
    _ID42237::_ID14402( "rapids_trigger" );
    level._ID794._ID49032 = 1;
    level._ID44434 = 1;
    _ID42237::_ID14402( "rapids_head_bobbing" );
    level._ID28543 _ID42407::_ID15504( "afchase_pri_rapidsahead" );
    thread _unknown_376F( "rapids_loop", "end_the_rapids_loop", 0 );
    var_0 = _func_1A1( "end_price_crazy", "targetname" );
    var_0 waittill( "trigger" );
    level._ID46392 notify( "end_the_rapids_loop" );
    level._ID44434 = 2;
    _unknown_375A( "rapids_out" );
    _ID42237::_ID14388( "rapids_head_bobbing" );
    _unknown_38CA();
    wait 9;
    level._ID44434 = 1;
}

_ID48629()
{
    self waittill( "trigger" );
    _ID42237::_ID14402( "on_river" );
}

_ID43265()
{
    _ID42237::_ID14413( "exit_caves" );
    level endon( "stop_deadquote_for_gettingout_of_bounds" );
    level._ID794 endon( "death" );
    var_0 = _func_03D() + 30000;

    for (;;)
    {
        _func_034( "ui_deadquote", "" );
        _ID42237::_ID14388( "player_in_open" );
        self waittill( "trigger" );

        while ( level._ID794 _meth_80B0( self ) )
        {
            if ( _func_03D() > var_0 )
            {
                var_0 = _func_03D() + _func_0BA( 20000, 22000 );
                level._ID28543 thread _ID42407::_ID15504( "afchase_pri_openareas" );
            }

            _ID42237::_ID14402( "player_in_open" );
            level notify( "new_quote_string" );
            _func_034( "ui_deadquote", &"AF_CHASE_MISSION_FAILED_IN_THE_OPEN" );
            wait 0.05;
        }
    }
}

_ID52842()
{
    wait 0.5;
    var_0 = self._ID23512[0];
    var_0 _meth_806C( "manual_ai" );
    var_0 _meth_810F( level._ID794 );
    var_1 = self._ID29965;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID377 = level._ID794;
        var_2._ID628 = 400000000;
    }

    var_clear_2
    var_clear_0
}

_ID51619()
{
    if ( _func_02F( level._ID24942 ) )
        return;

    if ( _func_02F( level._ID22245 ) && !level._ID22245 )
        return;

    _ID42407::_ID1868( ::_unknown_401A );
    _ID42407::_ID29503( _ID42372::_ID37271 );
}

_ID47833( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( self ) )
        return;

    if ( _func_1A7( self ) )
        return;

    if ( !_func_1A7( var_1 ) )
        return;

    if ( !_func_02F( var_1._ID1282 ) )
        return;

    if ( var_1 _ID42411::_ID20763() )
        return;

    if ( _func_0C3( self._ID740[2] - level._ID46392._ID740[2] ) > 64 )
        self _meth_80B7();

    thread _unknown_408C();

    if ( !_func_02F( self ) )
        return;

    _ID42407::_ID29503( ::_unknown_407A );
}

_ID52602()
{
    _unknown_40AE();
    var_0 = _func_03D() + 500;

    while ( _func_03D() < var_0 )
    {
        if ( !_func_02F( self ) )
            return;

        if ( self _meth_81F0() )
            return;

        self _meth_8023();
        wait 0.05;
    }

    self _meth_80B7();
}

_ID54543()
{
    var_0 = _func_0E1();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_0F3( var_2._ID740, level._ID794 _meth_80AF() ) > 600 )
            var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID47294()
{
    var_0 = _func_1A2( "explodable_barrel", "targetname" );
    var_1 = _ID42237::_ID14540( self._ID740 );
    var_2 = [];
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_0F3( var_1, _ID42237::_ID14540( var_4._ID740 ) ) < self._ID851 )
            var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0
    self waittill( "trigger" );

    for ( var_6 = 0; var_6 < 10; var_6++ )
    {
        var_7 = var_2;

        for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
        {
            var_8 = var_7[var_9];
            var_8 notify( "damage",  50, undefined, ( 0, 0, 0 ), var_8._ID740, "MOD_EXPLOSIVE"  );
        }

        var_clear_2
        var_clear_0
        wait 0.05;
    }
}

_ID48435()
{
    return level._ID794 _meth_8256( "BUTTON_B" ) || 1;
}

_ID50404()
{
    _ID42237::_ID14413( "water_cliff_jump_splash_sequence" );
    _ID42407::_ID29534( "axis", ::_unknown_3C9F );
    _ID42407::_ID29534( "axis", ::_unknown_37FA );
}

_ID52748()
{
    level._ID28543._ID49245 = level._ID28543._ID669;
    level._ID28543 _meth_80B8( "body_desert_tf141_zodiac" );
    level._ID28543._ID3189 = "generic";
    var_0 = _func_1A1( "price_intro_sequence", "targetname" );
    thread _unknown_42A6();
    var_0 _ID42259::_ID3111( level._ID28543, "endgame_price_intro" );
    var_1 = _ID42237::_ID35164();
    var_2 = _func_072( level._ID28543._ID740, level._ID28543._ID65, level._ID28543 _ID42407::_ID16120( "price_into_boat" ) ) - level._ID28543._ID65;
    var_1._ID65 = level._ID28543._ID65 - var_2;
    var_3 = _func_071( level._ID28543._ID740, var_1._ID65, level._ID28543 _ID42407::_ID16120( "price_into_boat" ) ) - level._ID28543._ID740;
    var_1._ID740 = level._ID28543._ID740 - var_3;
    level._ID28543 _ID42407::_ID10226( 0.05, _ID42259::_ID45303, "stop_attach_axis", var_1, level._ID46392, "TAG_GUY2", 0.5 );
    level._ID46392 _ID42237::_ID10192( 0.66, ::_meth_825E, level._ID28543._ID740, 0.1 );
    level._ID46392 _ID42407::_ID10226( 0.66, _ID42237::_ID27077, "water_boat_splash_small", level._ID46392._ID740 );
    var_1 _ID42259::_ID3111( level._ID28543, "price_into_boat" );
    level._ID28543 notify( "stop_attach_axis" );
    var_1 _meth_80B7();

    if ( _ID42237::_ID14385( "distant_explosion" ) != 1 )
        level._ID46392 _ID42259::_ID3111( level._ID28543, "price_into_boat_idle", "tag_guy2" );

    level._ID28543 thread _unknown_3B3D( level._ID46392 );
}

_ID20307()
{
    level._ID794 _meth_8328( 1 );
    level._ID794 _meth_8334( 1 );
    wait 1;
    level._ID794 _meth_8334( 0 );
    wait 0.8;
    level._ID794 _meth_8329();

    for (;;)
    {
        waittillframeend;

        if ( level._ID794 _meth_83E5() )
            level._ID794 _ID42407::_ID27683( 60 );
        else
            level._ID794 _ID42407::_ID27680();

        if ( _ID42237::_ID14385( "distant_explosion" ) )
        {
            level._ID794 _ID42407::_ID27680();
            break;
        }
    }
}

_ID52358( var_0 )
{
    var_1 = _func_1A2( "water", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 notify( "stop_water_think" );
    }

    var_clear_2
    var_clear_0
    self _meth_80F3( 1 );
    var_5 = _func_06A( "script_origin", var_0 _meth_818C( "tag_detach" ) );
    var_5._ID65 = var_0._ID65;
    var_6 = _ID42407::_ID35028( "worldbody" );
    var_6 _meth_805A();
    var_6 _meth_8095();
    var_5 _ID42259::_ID3018( var_6, "jumpin_zodiac" );
    level._ID794 thread _ID42407::_ID27079( "scn_afchase_plr_jumpin_boat" );

    while ( animscripts\utility::_ID1736( var_6._ID65[1] ) > 90 || _func_0F4( self._ID740, var_5._ID740 ) > 150 )
        waittillframeend;

    self _meth_8334( 1 );
    self _meth_8122( 0 );
    self _meth_8123( 0 );
    var_7 = self _meth_8188();
    var_8 = 0.4;

    if ( var_7 == "crouch" )
        var_8 = 0.5;

    if ( var_7 != "stand" )
    {
        self _meth_8189( "stand" );

        if ( var_7 == "prone" )
            wait 0.5;
    }

    self _meth_8328( 1 );
    var_9 = var_6 _ID42407::_ID16120( "jumpin_zodiac" );
    var_10 = _func_071( var_5._ID740, var_5._ID65, var_9 );
    var_11 = _func_072( var_5._ID740, var_5._ID65, var_9 ) - self._ID65;
    var_12 = _func_1A5();
    var_12._ID65 = var_5._ID65 - var_11;
    var_13 = var_10 - self._ID740;
    var_14 = var_5._ID740 - var_10;
    var_15 = var_14[0] * _func_0BC( var_11[1] ) - var_14[1] * _func_0BB( var_11[1] );
    var_16 = var_14[0] * _func_0BB( var_11[1] ) + var_14[1] * _func_0BC( var_11[1] );
    var_17 = var_14 - ( var_15, var_16, var_14[2] );
    var_12._ID740 = var_5._ID740 - var_13 + var_17;
    var_12 _ID42259::_ID3018( var_6, "jumpin_zodiac" );
    self _meth_8087( var_6, "tag_player", var_8, 0, var_8 );
    var_18 = "jump_notify";
    var_6 _meth_8148( var_18, var_12._ID740, var_12._ID65, var_9 );
    var_19 = _func_069( var_9, "land" );
    var_20 = _func_067( var_9 ) * var_19[0];
    var_6 thread _ID42259::_ID45303( "stop_update_scripted_node_pos", var_12, var_0, "tag_detach", var_20 );
    wait(var_8);
    self _meth_8084( var_6, "tag_player", 1.0, 0, 0, 0, 0, 1 );
    var_6 _meth_8059();
    _ID42234::_ID13611( "player_enter_zodiac" );
    wait 0.1;
    self _meth_8320( "uzi" );
    var_6 waittillmatch( var_18,  "end"  );
    var_6 notify( "stop_update_scripted_node_pos" );
    level._ID28543 notify( "stop_attach_axis" );
    self _meth_8055();
    var_6 _meth_80B7();
    var_5 _meth_80B7();
    self _meth_8122( 1 );
    self _meth_8123( 1 );
    self _meth_80F3( 0 );
    self _meth_8334( 0 );
}

_ID44976()
{
    waitframe;
    var_0 = _func_1A1( "player_zodiac_tall_collision", "targetname" );
    var_0 _meth_8053( level._ID40317["allies"][0] );
}

lod_scale_setup()
{
    level waittill( "player_over_the_waterfall" );
    _func_0DB( "r_lodFOVFixedScale", 2 );
}

wet_price()
{
    if ( _ID42237::_ID14385( "price_is_soaked" ) )
        return;

    level._ID28543 _meth_80B8( "body_desert_tf141_zodiac_wet" );
    level._ID28543 _ID42226::_ID32651( "head_hero_price_zodiac_wet" );
    _ID42237::_ID14402( "price_is_soaked" );
}
