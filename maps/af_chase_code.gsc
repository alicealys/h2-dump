// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46266()
{
    var_0 = self._ID31446;

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !isdefined( var_1._ID40065 ) )
            continue;

        if ( var_1._ID40065 == level.player._ID40065 )
        {
            var_1._ID40065._ID51804 = var_0;

            if ( _ID42237::_ID14385( "player_zodiac_on_ground" ) && isdefined( self._ID46229 ) )
                var_1._ID40065.veh_topspeed = self._ID46229;
            else
                var_1._ID40065.veh_topspeed = var_1._ID40065._ID51804;

            continue;
        }

        var_1._ID40065.veh_topspeed = var_0;
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

    var_1 = _ID42237::_ID37527( var_0.classname == "script_vehicle_zodiac_player", "_player", "" );

    if ( !var_0 _ID42407::_ID13019( "in_rapids" ) )
        playfxontag( _ID42237::_ID16299( "zodiac_wake_geotrail" + var_1 ), self, "tag_origin" );

    self._ID47054 = _ID42237::_ID35164();
    self._ID47054 linkto( self, "tag_origin", ( 30, 0, 0 ), ( -90, 180, 0 ) );
    playfxontag( _ID42237::_ID16299( "zodiac_splash_front" + var_1 ), self._ID47054, "tag_origin" );
    self notsolid();
    self hide();
    self endon( "death" );
    var_0 endon( "death" );
    thread _ID47939( var_0 );
    self._ID47054 thread _ID47939( var_0 );
    var_0 _ID42407::_ID13024( "in_air" );
    var_0 _ID42407::_ID13024( "on_water" );
    childthread _ID54131( var_0 );
    childthread _ID48531( var_0 );
    childthread _ID54433( var_0 );
    childthread _ID52137( var_0 );
    childthread _ID46702( var_0 );
    self linkto( var_0, "tag_origin" );
}

_ID47957()
{
    var_0 = getent( "ending_animated_chain01", "targetname" );
    var_0._ID3189 = "chain";
    var_0 _ID42259::_ID32556();
    var_0 thread _ID42259::_ID3044( var_0, "idle1" );
    var_1 = getent( "ending_animated_lamp01", "targetname" );
    var_1._ID3189 = "light";
    var_1 _ID42259::_ID32556();
    var_1 thread _ID42259::_ID3044( var_1, "idle1" );
}

_ID54131( var_0 )
{
    var_1 = 0;

    for (;;)
    {
        var_2 = var_0 gettagangles( "tag_origin" );
        var_3 = var_0 gettagorigin( "tag_origin" );
        var_4 = anglestoup( var_2 );
        var_5 = anglestoforward( var_2 );
        var_6 = var_3 + var_4 * 40 + var_5 * 80;
        var_7 = var_3 - var_4 * 10 + var_5 * 80;
        var_8 = bullettrace( var_6, var_7, 0, var_0, 0, 0, 0, 1, 0, 1, 0, 0 );

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
    var_1 = _ID42237::_ID37527( var_0.classname == "script_vehicle_zodiac_player", "_player", "" );

    for (;;)
    {
        var_0 waittill( "zodiac_treadfx_stop" );
        var_0 _ID50335( "StopFXOnTag", "zodiac_wake_geotrail" + var_1, self, "tag_origin" );
        var_0 waittill( "zodiac_treadfx_go" );
        var_0 _ID50335( "PlayFXOnTag", "zodiac_wake_geotrail" + var_1, self, "tag_origin" );
    }
}

_ID46702( var_0 )
{
    var_1 = _ID42237::_ID37527( var_0.classname == "script_vehicle_zodiac_player", "_player", "" );

    for (;;)
    {
        var_0 waittill( "zodiac_splash_front_stop" );
        var_0 _ID50335( "StopFXOnTag", "zodiac_splash_front" + var_1, self._ID47054, "tag_origin" );
        var_0 waittill( "zodiac_splash_front_go" );
        var_0 _ID50335( "PlayFXOnTag", "zodiac_splash_front" + var_1, self._ID47054, "tag_origin" );
    }
}

_ID54433( var_0 )
{
    for (;;)
    {
        var_1 = var_0 vehicle_getvelocity();
        var_2 = anglestoaxis( var_0.angles );
        var_3 = vectordot( var_2["forward"], var_1 );
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
    self delete();
}

_ID51905()
{
    var_0 = spawn( "script_model", self.origin );
    var_0 setmodel( self.model );
    var_0.angles = ( 0, self.angles[1], 0 );
    var_0 thread _ID45868( self );
}

_ID51179()
{
    var_0 = spawnstruct();
    var_0.origin = self.origin;
    var_0.angles = _ID42237::_ID14539( self.angles );
    var_0._ID35181 = gettime();
    level._ID43093[level._ID43093.size] = var_0;
}

_ID50621()
{
    var_0 = getentarray( "script_vehicle", "code_classname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( isspawner( var_3 ) )
            continue;

        var_4 = spawnstruct();
        var_4.classname = var_3.classname;
        var_4.origin = var_3.origin;
        var_4.angles = var_3.angles;
        var_4._ID50839 = var_3 vehicle_getspeed();
        var_4._ID31517 = var_3._ID31517;
        var_4._ID31518 = var_3._ID31518;
        var_4.model = var_3.model;
        var_4.angles = var_3.angles;

        if ( isdefined( level._ID51296 ) && var_3 == level._ID51296 )
            var_4._ID51296 = 1;

        var_1[var_1.size] = var_4;
    }

    _ID42237::_ID14012();
    _ID42237::_ID14017();

    foreach ( var_9, var_3 in var_1 )
    {
        var_7 = _ID42237::_ID14018( var_3.origin );
        var_8 = _ID42237::_ID14018( var_3.angles );
        _ID42237::_ID14014();
        _ID42237::_ID14016( "classname", "script_struct" );
        _ID42237::_ID14016( "model", var_3.model );
        _ID42237::_ID14016( "origin", var_7 );
        _ID42237::_ID14016( "angles", var_8 );

        if ( isdefined( var_3._ID50839 ) )
            _ID42237::_ID14016( "current_speed", var_3._ID50839 );

        if ( isdefined( var_3._ID31517 ) )
            _ID42237::_ID14016( "script_vehiclespawngroup", var_3._ID31517 );

        if ( isdefined( var_3._ID31518 ) )
            _ID42237::_ID14016( "script_vehiclestartmove", var_3._ID31518 );

        _ID42237::_ID14013();
    }

    var_10 = level.script + "_veh_ref.map";
    _ID42237::_ID14011( "/map_source/" + var_10 );
    _ID42237::_ID22062( var_10 );
}

_ID52025( var_0, var_1, var_2 )
{
    if ( !_ID42237::_ID14385( "debug_crumbs" ) )
        return;

    var_3 = var_0.origin + anglestoright( var_0.angles ) * -1000;
    var_4 = var_0.origin + anglestoright( var_0.angles ) * 1000;
    var_5 = ( var_2, 1 - var_2, 0 );

    if ( !isdefined( var_1 ) )
        return;

    var_6 = var_1.origin + anglestoright( var_1.angles ) * -1000;
    var_7 = var_1.origin + anglestoright( var_1.angles ) * 1000;
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
    childthread _ID53614();
    childthread _ID53917();
    childthread _ID52727();
    childthread _ID54521();
    childthread _ID50704();
    childthread _ID48933();

    if ( self.classname == "script_vehicle_zodiac_player" )
        childthread _ID53522();
}

_ID45734( var_0, var_1 )
{
    if ( isdefined( var_1 ) && var_1 && !_ID42407::_ID13019( "on_water" ) )
        return;

    var_2 = "tag_origin";

    if ( isdefined( level._ID50636[var_0] ) )
        var_2 = level._ID50636[var_0];

    if ( isdefined( level._ID1426[var_0] ) )
        _ID50335( "PlayFXOnTag", var_0, self, var_2 );

    if ( var_0 == "player_zodiac_bumpbig" )
        wet_price();

    if ( isdefined( level._ID44365[var_0] ) )
        _ID50335( "play_sound_on_entity", var_0 );
}

_ID50335( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();

    if ( isdefined( var_2 ) )
        var_5 = var_2 getentitynumber();
    else
        var_5 = self getentitynumber();

    if ( !isdefined( self._ID51685[var_5] ) )
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
            foreach ( var_4, var_2 in self._ID51685 )
            {
                var_3 = _ID42237::_ID3308( var_2 );

                switch ( var_3._ID48645 )
                {
                    case "PlayFXOnTag":
                        playfxontag( var_3._ID52616, var_3._ID47541, var_3._ID44989 );
                        break;
                    case "StopFXOnTag":
                        stopfxontag( var_3._ID52616, var_3._ID47541, var_3._ID44989 );
                        break;
                    case "play_sound_on_entity":
                        thread _ID42407::_ID27079( var_3._ID52616 );
                        break;
                    default:
                        break;
                }

                var_2 = _ID42237::_ID3321( var_2, var_3 );
                self._ID51685[var_4] = _ID42237::_ID37527( var_2.size, var_2, undefined );
            }

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
        self._ID52501 = gettime();
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

        if ( self._ID52501 + self._ID52006 < gettime() )
        {
            self._ID13251["bump_big"]["driver"] = 1;
            self._ID13251["bump_big"]["passenger"] = 1;

            if ( !_ID42237::_ID14385( "player_in_sight_of_boarding" ) )
                thread _ID43868( "bump_big" );

            if ( self == level._ID46392 )
                _ID45734( "player_zodiac_bumpbig" );
            else
                _ID45734( "zodiac_bumpbig" );

            continue;
        }

        self._ID13251["bump"]["driver"] = 1;
        self._ID13251["bump"]["passenger"] = 1;

        if ( !_ID42237::_ID14385( "player_in_sight_of_boarding" ) )
            thread _ID43868( "bump" );

        if ( self == level._ID46392 )
        {
            _ID45734( "player_zodiac_bump" );
            continue;
        }

        _ID45734( "zodiac_bump" );
    }
}

_ID47093( var_0, var_1 )
{
    self waittill( "trigger" );
    _ID46312( var_0, var_1 );
}

_ID46312( var_0, var_1 )
{
    level._ID54262["bump"] = level._ID54262[var_0];
    level._ID54262["bump_big"] = level._ID54262[var_1];
}

_ID43868( var_0 )
{
    if ( !isdefined( level._ID46392 ) || self != level._ID46392 )
        return;

    level endon( "missionfailed" );

    if ( _ID42237::_ID14385( "missionfailed" ) )
        return;

    if ( var_0 == "bump_big" )
        level.player playrumblelooponentity( "damage_heavy" );
    else
        level.player playrumblelooponentity( "damage_light" );

    thread _ID49829( var_0 );
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
    _ID53743( var_1 );
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
            _ID45734( "zodiac_sway_left", 1 );
            continue;
        }

        self._ID13251["sway_right"]["driver"] = 1;
        self._ID13251["sway_right"]["passenger"] = 1;
        _ID45734( "zodiac_sway_right", 1 );
    }
}

_ID53522()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_on_boat" );

    for (;;)
    {
        self waittill( "veh_wall_hit" );
        thread _ID49829( "bump_big" );
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
            _ID45734( "zodiac_bounce_small_left" );
            _ID45734( "zodiac_bounce_small_right" );
            continue;
        }

        _ID45734( "zodiac_bounce_large_left" );
        _ID45734( "zodiac_bounce_large_right" );
    }
}

_ID48933()
{
    self endon( "death" );
    var_0 = _ID42237::_ID37527( self.classname == "script_vehicle_zodiac_player", "_player", "" );

    for (;;)
    {
        var_1 = self vehicle_getbodyvelocity();

        if ( self vehicle_getspeed() > 10 )
        {
            if ( var_1[1] < -30.0 )
                _ID45734( "zodiac_sway_right_light" + var_0, 1 );
            else if ( var_1[1] > 30.0 )
                _ID45734( "zodiac_sway_left_light" + var_0, 1 );
        }
        else if ( self vehicle_getspeed() > 70 )
        {
            if ( var_1[1] < -70.0 )
                _ID45734( "zodiac_sway_right" + var_0, 1 );
            else if ( var_1[1] > 70.0 )
                _ID45734( "zodiac_sway_left" + var_0, 1 );
        }

        wait 0.05;
    }
}

_ID52863()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "veh_collision",  var_0, var_1  );

        foreach ( var_3 in self._ID29965 )
        {
            if ( isalive( var_3 ) && !isdefined( var_3._ID22746 ) )
                var_3 kill();
        }

        _ID45734( "zodiac_collision" );
    }
}

_ID53614()
{
    self endon( "death" );
    var_0 = self vehicle_getvelocity();

    for (;;)
    {
        self._ID28502 = var_0;
        var_0 = self vehicle_getvelocity();
        wait 0.05;
    }
}

_ID45596()
{
    self waittill( "trigger" );

    if ( isdefined( self.targetname ) )
        _ID42407::_ID4422( self.targetname );
    else
        _ID42407::_ID4422( "boat_chase" );
}

_ID54370()
{
    return _ID49500() < 0.5;
}

_ID49502()
{
    return level._ID46392 vehicle_getspeed() > 20;
}

_ID49500()
{
    if ( !level._ID43093.size )
        return 0;

    var_0 = level._ID43093[0];
    var_1 = ( gettime() - var_0._ID35181 ) / 1000;
    return var_1 / level._ID50426._ID13835;
}

_ID46371()
{
    var_0 = gettime();
    var_1 = undefined;
    var_2 = [];
    var_3 = 0;

    for ( var_4 = 0; var_4 < level._ID43093.size; var_4++ )
    {
        var_5 = level._ID43093[var_4];
        var_6 = ( var_0 - var_5._ID35181 ) / 1000;
        var_7 = var_6 / level._ID50426._ID13835;

        if ( var_7 > 1 )
            _ID43792();

        if ( !var_3 )
            _ID49266( var_7 );

        if ( var_3 < level._ID50426._ID45722 )
            var_2[var_3] = var_5;

        if ( _ID50815() )
            _ID52025( var_5, var_1, var_7 );

        var_1 = var_5;
        var_3++;
    }

    foreach ( var_5 in var_2 )
    {
        var_9 = anglestoforward( var_5.angles );
        var_10 = vectornormalize( level.player.origin - var_5.origin );
        var_11 = vectordot( var_9, var_10 );

        if ( var_11 > 0 )
            level._ID43093 = _ID42237::_ID44115( level._ID43093, var_5 );
    }
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
    if ( !isalive( level.player ) )
        return;

    level notify( "stop_deadquote_for_gettingout_of_bounds" );
    _ID42237::_ID14402( "shepherd_got_away" );
    setdvar( "ui_deadquote", &"AF_CHASE_MISSION_FAILED_KEEP_UP" );

    if ( level._ID35897 != "test_boat_current" )
        _ID42407::_ID23778();
}

_ID50815()
{
    return getdvarint( "scr_debug_breadcrumbs" );
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
            var_0 = level._ID46392 vehicle_getspeed() + 5;

            if ( self vehicle_getspeed() < var_0 )
                self vehicle_setspeed( var_0, 15, 15 );

            var_0 = undefined;
            continue;
        }

        self resumespeed( 15 );
    }
}

_ID52915()
{
    var_0 = level._ID46392 vehicle_getspeed() + 5;

    if ( self vehicle_getspeed() < var_0 )
        self vehicle_setspeed( var_0, 15, 15 );
}

_ID47191()
{
    if ( !isdefined( self.targetname ) )
        return 0;

    return self.targetname == "enemy_chase_boat";
}

_ID44731( var_0 )
{
    if ( !isai( self ) )
        return;

    self notify( "newanim" );
    self._ID10423 = "crouch";
    self allowedstances( "crouch" );
    thread animscripts\utility::_ID39672();
    self allowedstances( "crouch" );
    self._ID4867 = 0;
    self._ID1759 = 0.5;
}

_ID48083()
{
    self waittill( "trigger",  var_0  );
    level._ID46392 endon( "death" );
    var_0 thread _ID42411::_ID23509();
    var_0 endon( "death" );
    var_0 thread _ID48887();

    while ( distance( level.player.origin, self.origin ) > 8500 )
        wait 0.05;

    var_0 thread _ID42237::_ID27000( "scn_helicopter_01_lp" );

    if ( !isdefined( var_0.targetname ) || var_0.targetname != "heli_no_turret" )
        var_0 thread _ID42411::_ID23510();

    foreach ( var_2 in var_0._ID23512 )
    {
        var_2 setaispread( 2 );
        var_2 setconvergencetime( 5 );
        var_2.accuracy = 0.5;
    }

    if ( !_ID42237::_ID14385( "rapids_trigger" ) )
        level notify( "dialog_helicopter_ahead" );

    var_0 setlookatent( level.player );

    while ( _ID43352( level._ID46392, var_0 ) )
        wait 0.05;

    if ( !_ID42237::_ID14385( "rapids_trigger" ) )
        level notify( "dialog_helicopter_six" );

    foreach ( var_2 in var_0._ID23512 )
    {
        var_2 setaispread( 20 );
        var_2 setconvergencetime( 7 );
        var_2.accuracy = 0;
    }

    wait 3;
    var_0 thread _ID42411::_ID23509();
}

new_helicopter_setup()
{
    foreach ( var_1 in self._ID23512 )
    {
        var_1 setaispread( 20 );
        var_1 setconvergencetime( 7 );
        var_1.accuracy = 0;
    }
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
        var_5 = self vehicle_getthrottle();
        var_3 += 0.05;

        if ( var_5 < 0.5 )
        {
            var_3 = 0;
            var_6 = 1;
        }
        else
            var_6 = 1 - var_3 / var_1;

        var_0._ID20129 = var_5 * var_4 * var_6;

        if ( var_3 > var_1 || self vehicle_getspeed() > 43 )
        {
            var_3 = var_1;
            var_0._ID20129 = 0;
        }

        wait 0.05;

        if ( _ID42237::_ID14385( "player_in_sight_of_boarding" ) )
            break;
    }

    var_0 delete();
}

_ID50360()
{
    var_0 = getent( self.target, "targetname" );
    self waittill( "trigger" );
    var_1 = getaiarray();

    foreach ( var_3 in var_1 )
    {
        if ( var_3 istouching( var_0 ) && !var_3 _ID42407::_ID20537() )
            var_3 delete();
    }

    var_5 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_6 = 0;

    foreach ( var_8 in level._ID9242 )
    {
        var_6++;

        if ( isdefined( var_8._ID22654 ) )
        {
            level._ID9242 = _ID42237::_ID3321( level._ID9242, var_8 );
            var_5.origin = var_8._ID40005["origin"];

            if ( var_5 istouching( var_0 ) )
                var_8._ID22654 delete();
        }

        if ( var_6 > 3 )
        {
            var_6 = 0;
            wait 0.05;
        }
    }

    var_5 delete();
}

_ID48797()
{
    var_0 = getentarray( "kill_ai_in_volume", "targetname" );

    foreach ( var_2 in var_0 )
    {
        wait 0.1;
        var_2 notify( "trigger",  level.player  );
    }
}

_ID44724()
{
    var_0 = getent( self.target, "targetname" );
    self waittill( "trigger" );
    var_1 = getentarray( "destructible_toy", "targetname" );
    var_2 = 0;

    foreach ( var_4 in var_1 )
    {
        var_4 _ID49334( var_0 );
        var_2++;

        if ( var_2 > 3 )
        {
            var_2 = 0;
            wait 0.05;
        }
    }

    var_1 = getentarray( "explodable_barrel", "targetname" );

    foreach ( var_4 in var_1 )
    {
        var_4 _ID49334( var_0 );
        var_2++;

        if ( var_2 > 3 )
        {
            var_2 = 0;
            wait 0.05;
        }
    }
}

_ID49334( var_0 )
{
    if ( !self istouching( var_0 ) )
        return;

    self notify( "delete_destructible" );
    self delete();
}

_ID45902()
{
    self._ID26026 = undefined;
}

_ID54470()
{
    self waittill( "trigger" );
    var_0 = getent( self.target, "targetname" );
    var_1 = 600;

    if ( isdefined( var_0.radius ) )
        var_1 = var_0.radius;

    var_2 = 3;
    _ID44855( var_2, var_1, var_0.origin );
}

_ID44855( var_0, var_1, var_2 )
{
    var_3 = _ID42237::_ID15566( var_2, getentarray( "destructible_toy", "targetname" ), undefined, var_0, var_1, 0 );

    foreach ( var_5 in var_3 )
    {
        wait(randomfloatrange( 0.1, 0.4 ));
        thread _ID49578( var_5 );
    }
}

_ID49578( var_0 )
{
    for ( var_1 = 0; var_1 < 5; var_1++ )
    {
        var_0 notify( "damage",  160, level.player, self.origin, var_0.origin, "MOD_PISTOL_BULLET", "", ""  );
        wait(randomfloatrange( 0.1, 0.2 ));
    }
}

_ID43382()
{
    _ID42237::_ID14413( "player_on_boat" );
    level._ID46392 endon( "death" );

    for (;;)
    {
        _ID43125();
        wait 0.05;
    }
}

_ID43125( var_0, var_1 )
{
    var_2 = getentarray( "script_vehicle_zodiac_physics", "classname" );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( var_5 == level._ID46392 )
            continue;

        if ( isspawner( var_5 ) )
            continue;

        if ( !_ID49352( var_5 ) )
            continue;

        var_5 thread _ID43451();
    }

    return var_3;
}

_ID43451()
{
    self notify( "raise_attacker_accuracy_while_in_range" );
    self endon( "raise_attacker_accuracy_while_in_range" );
    self endon( "death" );

    foreach ( var_1 in self._ID29965 )
    {
        var_1._ID4867 = 6;
        var_1.suppressionwait = 1000;
    }

    while ( _ID49352( self ) )
        wait 0.05;

    foreach ( var_1 in self._ID29965 )
        var_1._ID4867 = 0;
}

_ID49352( var_0 )
{
    if ( _ID42237::_ID14385( "player_in_open" ) )
        return 1;

    if ( distancesquared( var_0.origin, level._ID46392.origin ) > 1960000 )
        return 0;

    var_1 = _ID42407::_ID15689( level._ID46392.origin, level._ID46392.angles, var_0.origin );

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

    var_4 = abs( var_3 / var_2 );
    level notify( "conveyerbelt_speed" );
    level endon( "conveyerbelt_speed" );
    var_5 = int( var_4 / 0.05 );
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
    var_2 = level._ID46392 vehicle_getvelocity();
    var_3 = distance( var_2, ( 0, 0, 0 ) ) / 17.6;
    var_2 = _ID42237::_ID14540( var_2 );
    var_4 = vectornormalize( var_2 );
    var_5 = anglestoforward( ( 0, level._ID47013, 0 ) );
    var_6 = vectordot( var_5, var_4 );

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
    self vehphys_setconveyorbelt( level._ID47013, level._ID45954 );
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
    var_3 = int( var_1 * 20 );
    var_4 = ( var_0 - var_2 ) / var_3;

    for ( var_5 = 0; var_5 < var_3; var_5++ )
    {
        level._ID47868 = level._ID47868 + var_4;
        wait 0.05;
    }

    level._ID47868 = var_0;
}

_ID50582()
{
    _ID48802( 1 );
}

_ID46820()
{
    self endon( "death" );

    if ( issubstr( self.classname, "shepherd" ) )
        return;

    while ( !self cansee( level.player ) && distance( self.origin, level.player.origin ) > 3500 )
        wait 0.1;

    self.fixednode = 1;
    self.pathenemyfightdist = 0;
    self.pathenemylookahead = 0;
}

_ID52721( var_0 )
{
    level notify( "new_river_current" );
    level endon( "new_river_current" );
    var_1 = _ID42237::_ID16638( var_0, "script_noteworthy" );
    var_2 = _ID42237::_ID16638( var_1.target, "targetname" );
    var_3 = cos( 35 );
    var_4 = 45;
    var_5 = var_4;
    var_6 = cos( 3 );
    var_7 = 10;

    if ( isdefined( var_1._ID31446 ) )
        var_7 = var_1._ID31446;

    var_8 = _ID50678( var_2 );
    level._ID51596 = 4;
    _ID42237::_ID14413( "player_on_boat" );
    level._ID46392 endon( "death" );
    level endon( "player_over_the_waterfall" );
    level endon( "water_cliff_jump_splash_sequence" );
    childthread _ID53055();
    var_9 = ( 0, 0, 0 );

    for (;;)
    {
        var_10 = _ID42407::_ID15689( var_2.origin, var_8, level._ID46392.origin );

        if ( var_10 < 0 )
        {
            var_10 = _ID42407::_ID15689( var_1.origin, _ID42237::_ID14539( vectortoangles( var_2.origin - var_1.origin ) ), level._ID46392.origin );

            if ( var_10 > 0 )
            {
                wait 0.05;
                continue;
            }
            else
            {
                var_1 = _ID42237::_ID16638( var_1.targetname, "target" );

                if ( !isdefined( var_1 ) )
                {
                    var_1 = _ID42237::_ID16638( var_2.targetname, "target" );
                    level._ID46392 thread _ID50549( var_9[1], 0, 4 );
                }
            }
        }
        else
            var_1 = var_2;

        if ( isdefined( var_1._ID31446 ) )
            var_7 = var_1._ID31446;

        if ( !isdefined( var_1.target ) )
            break;

        if ( var_7 > var_5 )
            var_4 = var_7 + 20;
        else
            var_4 = var_5;

        var_2 = _ID42237::_ID16638( var_1.target, "targetname" );

        if ( !isdefined( var_2 ) )
        {
            var_2 = var_1;
            var_1 = _ID42237::_ID16638( var_2.targetname, "target" );
            wait 0.05;
            continue;
        }

        if ( isdefined( var_2.target ) )
            var_8 = _ID50678( var_2 );

        var_11 = var_7;
        var_9 = _ID42237::_ID14539( vectortoangles( var_2.origin - var_1.origin ) );
        var_10 = _ID42407::_ID15689( var_1.origin, var_9, var_2.origin );
        var_10 = abs( var_10 );

        if ( var_10 > var_6 )
            var_11 = var_7;
        else if ( var_10 < var_3 )
            var_11 = var_4;
        else
            var_11 = var_3 / var_10 * var_4;

        level._ID43545 = var_11;
        level._ID46392 childthread _ID50549( var_9[1], var_11, 4 );
        wait 0.05;
    }

    level._ID46392 childthread _ID50549( 0, 0, 4 );
}

_ID53055()
{
    if ( !isdefined( level._ID47868 ) )
        level._ID47868 = 1;

    while ( !isdefined( level._ID47013 ) )
        wait 0.05;

    level._ID46392 endon( "death" );

    for (;;)
    {
        level._ID46392 _ID45954();
        wait 0.05;
    }
}

_ID50678( var_0, var_1 )
{
    var_2 = _ID42237::_ID16638( var_0.target, "targetname" );
    return vectortoangles( var_2.origin - var_0.origin );
}

_ID53263()
{
    var_0 = spawnstruct();
    var_0._ID45722 = 3;
    var_0._ID13835 = 10;
    level endon( "quit_bread_crumb" );
    level._ID50426 = var_0;
    level._ID43093 = [];

    for (;;)
    {
        _ID46371();
        wait 0.05;
    }
}

_ID45435( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
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
        while ( !level.player buttonpressed( "BUTTON_Y" ) )
            wait 0.05;

        if ( _ID42237::_ID14385( "debug_crumbs" ) )
            _ID42237::_ID14388( "debug_crumbs" );
        else
            _ID42237::_ID14402( "debug_crumbs" );

        while ( level.player buttonpressed( "BUTTON_Y" ) )
            wait 0.05;
    }
}

_ID45581()
{
    level._ID28543 endon( "death" );

    while ( !_ID42237::_ID14385( "exit_caves" ) )
    {
        var_0 = level._ID28543 gettagorigin( "tag_flash" );
        var_1 = level._ID28543 gettagangles( "tag_flash" );

        if ( level._ID28543 _ID51952( var_0, var_1 ) )
        {
            playfxontag( level._ID1426["fx/muzzleflashes/m203_flshview"], level._ID28543, "tag_flash" );
            var_2 = level._ID28543.enemy getshootatpos() + ( 0, 0, 150 );

            if ( distance( level._ID28543.origin, level._ID28543.enemy.origin ) > 1700 )
                var_2 += ( 0, 0, 150 );

            magicbullet( "m203", var_0, var_2 );
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
        var_0 = level._ID28543 gettagorigin( "tag_flash" );
        var_1 = level._ID28543 gettagangles( "tag_flash" );

        if ( level._ID28543 _ID51952( var_0, var_1 ) )
        {
            playfxontag( level._ID1426["fx/muzzleflashes/m203_flshview"], level._ID28543, "tag_flash" );
            var_2 = level._ID28543.enemy getshootatpos() + ( 0, 0, 190 );

            if ( distance( level._ID28543.origin, level._ID28543.enemy.origin ) > 1700 )
                var_2 += ( 0, 0, 120 );

            magicbullet( "m203", var_0, var_2 );
            wait 2.5;
        }

        wait 0.05;
    }
}

_ID51952( var_0, var_1 )
{
    if ( !isdefined( self.enemy ) )
        return 0;

    if ( !distancesquared( var_0, self.enemy.origin ) > 422500 )
        return 0;

    if ( !_ID42237::_ID41802( var_0, var_1, self.enemy getshootatpos(), 0.965925 ) )
        return 0;

    var_2 = _ID42237::_ID16640( "good_spot_for_grenade_launcher", "targetname" );

    foreach ( var_4 in var_2 )
    {
        if ( distance( var_4.origin, self.enemy.origin ) < var_4.radius )
        {
            if ( !_ID46397( var_4 ) )
                return 1;
        }
    }

    return 0;
}

_ID46397( var_0 )
{
    var_1 = getentarray( "explodable_barrel", "targetname" );
    var_2 = var_0.radius * var_0.radius;

    foreach ( var_4 in var_1 )
    {
        if ( distancesquared( var_0.origin, var_4.origin ) > var_2 )
            continue;

        if ( var_4.damagetaken )
            return 1;
    }

    return 0;
}

_ID45906()
{
    self waittill( "trigger" );
    level._ID28543._ID49812 = self.script_noteworthy;
}

_ID43202()
{
    self vehphys_crash();
}

_ID43352( var_0, var_1 )
{
    return _ID42407::_ID15689( var_0.origin, var_0.angles, var_1.origin ) > 0;
}

_ID44689( var_0, var_1 )
{
    return _ID42407::_ID15689( var_0.origin, vectortoangles( var_0 vehicle_getvelocity() ), var_1.origin ) > 0;
}

_ID44677()
{
    var_0 = cos( 55 );

    while ( _ID42407::_ID41804( self.origin, var_0 ) )
        wait 0.05;

    self delete();
}

_ID51173( var_0, var_1, var_2, var_3 )
{
    self notify( "newmove" );
    self endon( "newmove" );

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    self._ID49674 = 0;

    if ( !isdefined( var_1 ) )
        var_1 = 200;

    var_4 = distance( self.origin, var_0 );
    var_5 = var_4 / var_1;
    var_6 = vectornormalize( var_0 - self.origin );
    var_7 = 0;
    var_8 = 0;

    if ( var_2 > 0 )
        var_7 = var_5 * var_2;

    if ( var_3 > 0 )
        var_8 = var_5 * var_3;

    self moveto( var_0, var_5, var_7, var_8 );
    wait(var_5);

    if ( !isdefined( self ) )
        return;

    self.velocity = var_6 * var_4 / var_5;
    self._ID49674 = 1;
}

_ID53743( var_0, var_1 )
{
    self endon( "death" );
    self endon( "waterfall_sequence" );

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    level._ID28543 notify( "new_price_anim_single_on_boat" );
    level._ID28543 endon( "new_price_anim_single_on_boat" );
    level._ID28543 endon( "death" );

    if ( isdefined( level._ID28543._ID21839 ) )
        _ID42407::_ID40847( level._ID28543._ID21839, 0.5 );

    _ID42407::_ID15093( ::_ID52263, var_0, var_1 );
    level._ID28543._ID21839 = gettime();
}

_ID52263( var_0, var_1 )
{
    level._ID46392 endon( "death" );
    level._ID28543 endon( "death" );
    level._ID28543 endon( "waterfall_sequence" );
    _ID42237::_ID14402( "price_anim_on_boat" );
    level._ID28543 linkto( level._ID46392, "tag_guy2" );
    level._ID28543 _meth_859d( 0 );
    level._ID46392 _ID42259::_ID3111( level._ID28543, var_0, "tag_guy2", 0, "generic" );
    level._ID28543 _meth_859d();

    if ( !var_1 )
        return;

    _ID48752();
    _ID42237::_ID14388( "price_anim_on_boat" );
}

_ID44930( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    level._ID28543 notify( "new_price_anim_single_on_boat" );
    level._ID28543 endon( "new_price_anim_single_on_boat" );
    level._ID46392 thread _ID42259::_ID3025( level._ID28543, var_0, var_1, "tag_guy2" );
    level._ID46392 waittill( var_1 );

    if ( var_2 )
        _ID48752();

    _ID42237::_ID14388( "price_anim_on_boat" );
}

_ID51590( var_0 )
{
    self linktoblendtotag( var_0, "tag_guy2", 0 );
}

_ID49297( var_0 )
{
    _ID51590( var_0 );
    self allowedstances( "crouch" );
    self._ID40065 = var_0;
    self._ID45554 = 1;
    thread _ID45537();
    self._ID52797 = 4000000;
    self.highlyawareradius = 2048;
    self animcustom( _ID45655::_ID37647 );
}

_ID45537()
{
    level._ID28543 endon( "stop_boatrider_targets" );
    level._ID28543 endon( "death" );

    for (;;)
    {
        wait 0.05;
        var_0 = level._ID28543 _ID48669::_ID43183( level._ID46392, level.player geteye(), 1 );

        if ( !isdefined( var_0._ID25268 ) )
        {
            level._ID28543 clearentitytarget();
            continue;
        }

        if ( !isai( var_0._ID25268 ) )
        {
            level._ID28543 setentitytarget( var_0._ID25268 );
            level._ID28543.favoriteenemy = undefined;

            if ( isdefined( var_0._ID44118 ) )
                var_0._ID25268 thread _ID43246();

            continue;
        }

        level._ID28543 clearentitytarget();
        level._ID28543.favoriteenemy = var_0._ID25268;
    }
}

_ID43246()
{
    self notify( "enable_shoot_driver" );
    self endon( "enable_shoot_driver" );
    self.allowdeath = 1;
    self setcandamage( 1 );
    self waittill( "damage" );
    _ID48669::_ID48600( self );
}

_ID48752()
{
    level._ID28543 _ID51590( level._ID46392 );
    level._ID28543 animcustom( _ID45655::_ID37647 );
}

_ID46291( var_0 )
{
    var_1 = var_0._ID1210;
    var_2 = var_0._ID13016;
    var_3 = var_0._ID1067;
    var_4 = var_0._ID43241;
    var_5 = var_0._ID52073;
    level.player freezecontrols( 1 );
    var_6 = var_1 * 20;
    var_7 = var_4;
    var_8 = var_5 - var_4;
    var_9 = var_8 / var_6;
    var_6 = int( var_6 );

    for ( var_10 = 0; var_10 < var_6; var_10++ )
    {
        var_7 += var_9;
        level.player playerlinktodelta( var_2, var_3, 1, var_7, var_7, var_7, var_7 );
        wait 0.05;
    }

    level.player freezecontrols( 0 );
}

_ID54554()
{
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    self waittill( "trigger" );
    var_1 = vectornormalize( self.origin - var_0.origin );
    var_2 = vectornormalize( level._ID46392 vehicle_getvelocity() );
    var_3 = vectordot( var_2, var_1 );

    if ( var_3 > 0.984807 )
        level._ID28543 _ID42407::_ID28864( "afchase_pri_threadtheneedle", 1 );
}

_ID54171( var_0, var_1 )
{
    _func_194( var_0, var_1, ( 0, 0, 80 ) );
    var_1 waittill( "death" );
    objective_current( var_0, ( 0, 0, 0 ) );
}

_ID46511()
{
    self.veh_pathtype = "follow";
    self vehphys_enablecrashing();

    for (;;)
    {
        self waittill( "veh_jolt" );

        if ( distance( self.origin, level.player.origin ) < 512 )
            break;
    }

    self vehphys_crash();
}

_ID50998( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = distancesquared( var_1[0].origin, var_0 );
    var_3 = var_1[0];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = distancesquared( var_1[var_4].origin, var_0 );

        if ( var_5 < var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_ID44304( var_0 )
{
    var_1 = var_0.team;
    var_0 endon( "death" );
    var_0.ignoreall = 1;

    while ( var_0 istouching( self ) )
        wait 0.05;

    var_0.ignoreall = 0;
}

_ID44476()
{
    for (;;)
    {
        while ( !level.player buttonpressed( "BUTTON_B" ) )
            wait 0.05;

        _ID50621();

        while ( level.player buttonpressed( "BUTTON_B" ) )
            wait 0.05;
    }
}

_ID43915( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = spawnstruct();
    var_5._ID1210 = var_0;
    var_5._ID13016 = var_1;
    var_5._ID1067 = var_2;
    var_5._ID43241 = var_3;
    var_5._ID52073 = var_4;
    return var_5;
}

_ID47634()
{
    return level.player.health / level.player.maxhealth == 1;
}

_ID46641()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !isalive( var_0 ) )
            continue;

        if ( !_ID42407::_ID14360( var_0 ) )
            continue;

        thread _ID44304( var_0 );
    }
}

_ID50658()
{
    self endon( "death" );

    for (;;)
    {
        _ID42237::_ID11682( self.origin, self.origin + anglestoforward( self.angles ) * 200, ( 0, 0, 1 ) );
        wait 0.05;
    }
}

_ID45831()
{
    if ( !getdvarint( "scr_zodiac_test" ) )
        return;

    wait 3;
    iprintlnbold( "you will need to reset scr_zodiac_test to play the level normally again ( restart the game )" );
}

_ID46011( var_0 )
{
    if ( !isdefined( level._ID52679 ) )
        level._ID52679 = [];
    else if ( isdefined( level._ID52679[var_0] ) )
        return level._ID52679[var_0];

    level._ID52679[var_0] = _ID42407::_ID35168( var_0, 1 );
    level._ID52679[var_0] thread _ID42407::_ID22746();
    level._ID52679[var_0] _ID42407::_ID10949();
    level._ID52679[var_0].ignoresuppression = 1;
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
    self _meth_85a2( 1 );
    thread _ID48669::_ID54374( self );
    self._ID11584 = 1;

    foreach ( var_1 in self._ID29965 )
        var_1 thread _ID44731( self );

    _ID42237::_ID14413( "player_on_boat" );
    self endon( "death" );
    level._ID46392 endon( "death" );

    for (;;)
    {
        var_3 = level._ID46392.origin;
        var_4 = self.origin;

        if ( distancesquared( self.origin, level._ID46392.origin ) > 9000000 )
        {
            wait 0.05;
            continue;
        }

        level._ID45454 = animscripts\battlechatter::_ID16223( level._ID46392.angles, var_3, var_4 );
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
    var_6 = self.alpha;
    var_7 = var_6 - var_0;

    for ( var_8 = 0; var_8 < var_2; var_8++ )
    {
        var_4 += var_3;
        self fadeovertime( var_5 );

        if ( var_0 > var_6 )
        {
            var_9 = 1 - cos( var_4 );
            self.alpha = var_6 - var_7 * var_9;
        }
        else
        {
            var_9 = sin( var_4 );
            self.alpha = var_6 - var_7 * var_9;
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
        var_1 = _ID45122( level._ID46392 vehicle_getvelocity() );

        if ( !_ID42407::_ID41803( self.origin, self.angles, var_1, 0.984808 ) )
            var_0 = 0;

        if ( distance( self.origin, var_1 ) < 2000 )
            var_0 = 0;

        if ( distance( self.origin, var_1 ) > 5000 )
            var_0 = 0;

        if ( !_ID47634() )
            var_0 = 0;

        if ( var_0 )
        {
            thread _ID43770();
            _ID42237::_ID14426( "heli_firing" );
            wait(randomfloatrange( 1.2, 2.4 ));
        }

        wait 0.05;
    }
}

_ID45122( var_0 )
{
    return level._ID46392.origin + var_0 * 1.5;
}

_ID45609( var_0 )
{
    if ( _ID42237::_ID14385( "rapids_trigger" ) )
        return;

    var_1 = vectornormalize( var_0 - level._ID46392.origin );
    var_2 = anglestoright( level._ID46392.angles );
    var_3 = vectordot( var_2, var_1 );

    if ( var_3 < 0 )
    {
        if ( _ID42237::_ID8201() )
            _ID49615( "afchase_pri_rightright", 0.5 );
        else
            _ID49615( "afchase_pri_right", 0.5 );
    }
    else if ( _ID42237::_ID8201() )
        _ID49615( "afchase_pri_leftleft", 0.5 );
    else
        _ID49615( "afchase_pri_left", 0.5 );
}

_ID43770()
{
    if ( !isalive( self ) )
        return;

    if ( _ID42237::_ID14385( "heli_firing" ) )
        return;

    _ID42237::_ID14402( "heli_firing" );
    var_0 = gettime() + 3000;

    if ( !isalive( self ) )
    {
        _ID42237::_ID14388( "heli_firing" );
        return;
    }

    var_1 = randomintrange( 4, 5 );
    var_2 = level._ID46392 vehicle_getvelocity();
    var_3 = _ID45122( var_2 );
    var_3 += _ID42237::_ID14540( _ID42237::_ID28978( -120, 120 ) );
    _ID45609( var_3 );
    var_4 = var_3;
    var_5 = [];
    var_6 = spawn( "script_origin", level._ID46392.origin );
    var_6 thread _ID47252( level._ID46392 );

    for ( var_7 = 0; var_7 < var_1; var_7++ )
    {
        var_5[var_7] = spawn( "script_origin", var_4 );
        var_5[var_7] linkto( var_6 );
        var_4 += var_2 * 0.1;
    }

    var_8 = [];
    var_8[0] = "tag_missile_right";
    var_8[1] = "tag_missile_left";
    var_9 = [];

    for ( var_7 = 0; var_7 < var_1; var_7++ )
    {
        if ( !isalive( self ) )
            break;

        self setvehweapon( "littlebird_FFAR" );
        self setturrettargetent( var_5[var_7] );
        var_10 = self fireweapon( var_8[var_7 % var_8.size], var_5[var_7], ( 0, 0, 0 ) );
        var_10 missile_setflightmodedirect();
        var_10 missile_settargetent( var_5[var_7] );
        var_10 thread _ID46827();
        wait(randomfloatrange( 0.2, 0.3 ));
    }

    var_6 notify( "balls" );
    _ID42237::_ID14388( "heli_firing" );
    wait 15;

    foreach ( var_12 in var_5 )
        var_12 delete();

    var_6 delete();
}

_ID47252( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_1 = self.origin - var_0.origin;

    for (;;)
    {
        self moveto( var_0.origin + var_1, 0.05, 0, 0 );
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

    if ( isdefined( level._ID46392._ID46302 ) )
    {
        level._ID46392 detach( level._ID43508, "tag_weapon_left" );
        level._ID46392._ID46302 = undefined;
    }
}

_ID49269()
{
    level endon( "water_cliff_jump_splash_sequence" );

    if ( !0 )
        level.player waittill( "death" );

    if ( 0 )
    {
        while ( !level.player buttonpressed( "BUTTON_B" ) )
            wait 0.05;

        wait 0.5;
        level.player kill();
    }

    thread _ID42407::_ID28876();
    _ID46312( "bump_small_player_dies", "bump_big_player_dies" );
    _ID52556();
}

_ID48432( var_0 )
{
    var_1 = getnodesinradius( level.player.origin, 800, 500, 1000, "path" );
    var_2 = anglestoforward( level.player.angles );

    foreach ( var_4 in var_1 )
    {
        var_5 = vectornormalize( var_4.origin - level.player.origin );
        var_6 = vectordot( var_2, var_5 );

        if ( var_6 > cos( 15 ) )
        {
            level._ID43501 = var_4;
            return 1;
        }
    }

    return 0;
}

_ID53710()
{
    var_0 = getnodesinradius( level.player.origin, 230, 100, 1000, "path" );
    var_1 = anglestoforward( level.player.angles );

    foreach ( var_3 in var_0 )
    {
        var_4 = vectornormalize( var_3.origin - level.player.origin );
        var_5 = vectordot( var_1, var_4 );

        if ( var_5 < cos( 45 ) && var_5 > 0 && _ID48432( var_3 ) )
            return var_3;
    }
}

_ID46114()
{
    self endon( "death" );
    var_0 = self._ID4867;
    wait 0.1;

    if ( !isdefined( level._ID46392 ) )
        return;

    level._ID46392 endon( "death" );

    if ( isdefined( self._ID29969 ) && issubstr( self._ID29969.classname, "zodiac" ) )
        return;

    if ( issubstr( self.classname, "shepherd" ) )
        return;

    for (;;)
    {
        while ( _ID49352( self ) )
            wait 0.05;

        self._ID4867 = 0;
        self.ignoresuppression = 0;

        while ( !_ID49352( self ) )
            wait 0.05;

        self._ID4867 = var_0;
    }
}

_ID48364()
{
    self vehicle_turnengineoff();
    _ID42411::_ID16988();
    self makeunusable();
    level._ID46392 = self;
    level._ID46392 startusingheroonlylighting();
    self setmodel( "vehicle_zodiac" );
    self waittill( "vehicle_mount",  var_0  );
    self playsound( "zodiac_player_startup" );
    level._ID11390["nearStart"] = 10;
    level._ID11390["nearEnd"] = 20;
    setsaveddvar( "hud_showstance", 0 );
    self setmodel( "vehicle_zodiac_viewmodel" );
    self vehicle_turnengineon();
    _ID42237::_ID14402( "player_on_boat" );
    thread _ID42407::_ID4423( "mount_boat" );
    _ID42407::_ID10226( 4, _ID42407::_ID1888, "boat_check_player_speeding_along", ::_ID49502, "players boat not moving fast enough!" );
    level.player _ID42407::_ID13021( "near_death_vision_enabled" );
    thread _ID49818();
    thread _ID50675();
    thread _ID43382();
    thread _ID52531();
    thread _ID49269();
    thread _ID51905();
    var_1 = _ID46011( "boatrider0" );

    if ( !var_1 _ID42407::_ID13023( "price_animated_into_boat" ) )
        var_1 thread _ID49297( self );
    else
    {
        var_1 _ID42407::_ID13027( "price_animated_into_boat" );
        level notify( "stop_animate_price_into_boat" );
        level._ID28543 stopanimscripted();
        level._ID28543 thread _ID49297( level._ID46392 );
    }

    self vehphys_disablecrashing();
    level._ID46392 thread af_chase_update_wibble_on_price();
}

_ID48492( var_0 )
{
    var_0.attackeraccuracy = 0;
    var_0._ID4867 = 0.1;
    var_0.ignoresuppression = 1;
    var_0.dontavoidplayer = 1;
    var_0._ID1190 = 0;
    var_0.suppressionwait = 0;
    var_0.pathrandompercent = 0;
    var_0.ignoreexplosionevents = 1;
    var_0 _ID42407::_ID10973();
    var_0.grenadeawareness = 0;
    var_0.ignoreme = 1;
    var_0.ignorerandombulletdamage = 1;
    var_0._ID11002 = 1;
    _ID42237::_ID14413( "player_on_boat" );
    var_0._ID4867 = 25;
}

_ID46392()
{

}

_ID43845( var_0, var_1 )
{
    var_2 = getent( var_0, "targetname" );
    var_3 = getvehiclenode( var_1, "targetname" );
    var_2.target = var_3.targetname;
}

_ID52505( var_0, var_1 )
{
    var_2 = getent( var_0, "targetname" );
    var_3 = getent( var_1, "targetname" );
    var_2.target = var_3.targetname;
    var_2.origin = var_3.origin;
    var_2.angles = var_3.angles;
    var_2.speed = var_3.speed;
}

_ID44610()
{
    level._ID43093 = [];
    level._ID48502 = self;
    self endon( "death" );
    self vehphys_disablecrashing( 1 );
    self.veh_pathtype = "constrained";
    thread _ID45984();

    foreach ( var_1 in self._ID29965 )
    {
        if ( isdefined( var_1._ID22746 ) && var_1._ID22746 )
            continue;

        var_1 thread _ID42407::_ID22746();
    }

    for (;;)
    {
        wait 0.25;
        _ID51179();
    }
}

_ID49209()
{
    if ( !_ID42407::_ID20505() )
        _ID42297::_ID39221();

    var_0 = _ID46011( "boatrider0" );
    level._ID28543 = var_0;
    thread _ID48492( var_0 );
    thread _ID45581();
    var_1 = getentarray( "kill_ai_in_volume", "targetname" );
    _ID42237::_ID3350( var_1, ::_ID50360 );
}

_ID44939()
{
    var_0 = spawn( "trigger_radius", self.origin + ( 0, 0, -2000 ), 0, 4500, 2000 );
    var_0 waittill( "trigger" );
    level notify( "dialog_rpg_bridge_guy" );
}

_ID47566()
{
    self endon( "death" );
    var_0 = spawn( "script_origin", level._ID46392.origin );
    _ID42407::_ID13024( "first_player_sighting" );
    _ID42407::_ID10932();
    self setentitytarget( var_0 );
    self.favoriteenemy = var_0;
    self.ignoreall = 1;
    self._ID45762 = gettime() + randomintrange( 1000, 2000 );
    var_1 = _ID42237::_ID14540( _ID42237::_ID28978( -64, 64 ) );
    var_2 = 3000;

    while ( isalive( self ) )
    {
        var_3 = level._ID46392 vehicle_getvelocity() * 1.4;
        var_4 = level._ID46392.origin + var_3;
        var_4 = _ID42407::_ID32530( var_4, level._ID46392.origin[2] + 24 );

        if ( !bullettracepassed( level.player geteye() + ( 0, 0, 16 ), var_4, 0, self ) )
        {
            var_5 = distance( ( 0, 0, 0 ), var_3 );
            var_0.origin = _ID51260::_ID48037( level.player._ID43692, level.player._ID28675 + var_5 - level._ID50860, level.player._ID25468 );
            var_0.origin = _ID42407::_ID32530( var_0.origin, level._ID46392.origin[2] + 24 );
            var_0.origin = ( var_0.origin + var_4 ) / 2;
        }
        else
            var_0.origin = var_4;

        self orientmode( "face point", var_0.origin );
        var_6 = 0;

        if ( isdefined( self.weapon ) && self.weapon != "none" && bullettracepassed( self gettagorigin( "tag_flash" ), level.player geteye(), 0, self ) )
        {
            var_6 = 1;

            if ( !_ID42407::_ID13019( "first_player_sighting" ) )
                _ID42407::_ID13025( "first_player_sighting" );
        }

        if ( !_ID42407::_ID13019( "first_player_sighting" ) )
            self._ID45762 = gettime() + randomintrange( 1000, 2000 );

        if ( gettime() > self._ID45762 )
        {
            if ( var_6 )
            {
                if ( isdefined( self.weapon ) && self.weapon != "none" && bullettracepassed( self gettagorigin( "tag_flash" ), var_0.origin + var_1, 0, self ) )
                {
                    if ( distance( self.origin, level.player.origin ) < var_2 )
                    {
                        if ( gettime() > level._ID53724 )
                            break;
                    }
                }
            }
        }

        wait 0.05;
    }

    var_7 = "rpg_straight_af_chase";

    if ( isdefined( self ) && isdefined( self.weapon ) && self.weapon != "none" && isdefined( self gettagorigin( "tag_flash" ) ) )
    {
        var_8 = magicbullet( var_7, self gettagorigin( "tag_flash" ), var_0.origin + var_1 );
        var_8 thread _ID46827();
    }

    level._ID53724 = gettime() + randomintrange( 300, 500 );
    var_0 delete();
}

_ID46827()
{
    level._ID46392 endon( "death" );
    self endon( "death" );

    while ( _ID43352( level.player, self ) )
        wait 0.05;

    thread _ID42237::_ID27077( "wpn_exp_water_lyr_behind" );
    self delete();
}

_ID52462()
{
    _ID42237::_ID14413( "exit_caves" );
    _ID48552();
}

_ID52434( var_0 )
{
    level endon( "end_teleport_price_on_mount" );
    level._ID46392 waittill( "vehicle_mount" );
    level._ID28543 _ID46760( var_0 );
}

_ID46760( var_0 )
{
    self forceteleport( var_0.origin, var_0.angles );
    self setgoalpos( self.origin );
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
    var_7["dialog_direction"] = gettime();
    var_7["dialog_helicopter_six"] = gettime();
    var_7["dialog_helicopter_ahead"] = gettime();
    var_7["dialog_rpg_bridge_guy"] = gettime();
    var_8 = var_4;
    var_9 = undefined;
    wait 1;
    level endon( "price_stops_talking_about_helicopters" );
    level.player endon( "death" );
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

        if ( gettime() - var_7[var_10] < var_6[var_10] )
            continue;

        var_7[var_10] = gettime();

        if ( var_10 == "dialog_direction" )
        {
            if ( level._ID45454 == "12" )
                _ID49615( var_9 + level._ID45454, var_5[var_10] );
            else
                level._ID28543 thread _ID42407::_ID15504( var_9 + level._ID45454, var_5[var_10] );
        }
        else
            _ID49615( var_9, var_5[var_10] );

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
    if ( !isdefined( var_1 ) )
        var_1 = 1;

    var_2 = level._ID28543._ID7._ID52880;
    var_3 = 0;

    if ( level._ID28543._ID7._ID21978 > gettime() - 2000 && !_ID47634() || isdefined( level._ID28543._ID54140 ) && level._ID28543._ID54140 || level._ID28543 _ID42407::_ID13019( "transitioning_positions" ) )
        var_3 = 1;

    if ( var_3 )
        level._ID28543 thread _ID45248( _ID42407::_ID15504, var_0, var_1 );
    else
        level._ID28543 thread _ID45248( ::_ID53743, var_2 + "_" + var_0 );
}

_ID45248( var_0, var_1, var_2 )
{
    if ( isdefined( level._ID48967 ) && !level._ID48967 )
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
    var_1 = gettime() + var_0;
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
        if ( _ID49500() > 0.5 && var_1 < gettime() && !level._ID28543 _ID42407::_ID13019( "transitioning_positions" ) )
        {
            var_4 = _ID42237::_ID28945( var_3 );

            if ( _ID42237::_ID14385( "rapids_head_bobbing" ) )
            {
                wait 0.05;
                continue;
            }

            _ID49615( var_4 );
            var_3 = _ID42237::_ID3321( var_3, var_4 );
            var_1 = gettime() + var_0;

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
    level.player endon( "death" );
    self waittill( "trigger" );
    _ID49615( "afchase_pri_thrucave" );
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
    var_1 = gettime() + var_0;
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
    level.player endon( "death" );

    for (;;)
    {
        if ( !_ID44689( level._ID46392, level._ID48502 ) && var_1 < gettime() )
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
            var_1 = gettime() + var_0;

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
    var_0 = getnode( self.target, "targetname" );
    var_1 = spawn( "script_origin", var_0.origin );
    var_1.angles = var_0.angles + ( 0, -90, 0 );
    level._ID28543 _ID42407::_ID13024( "price_animated_into_boat" );
    var_1 _ID42237::_ID10192( 2, ::linkto, level._ID46392 );
    thread _ID52434( var_1 );
    var_1 _ID42259::_ID3027( level._ID28543, "price_into_boat" );
    level notify( "end_teleport_price_on_mount" );
    level._ID28543 linkto( var_1 );
    level._ID28543 _ID42407::_ID10226( 1.5, _ID42407::_ID13025, "price_animated_into_boat" );
    level._ID46392 _ID42237::_ID10192( 1, ::joltbody, level._ID28543.origin, 0.15 );
    level._ID46392 _ID42407::_ID10226( 1, _ID42237::_ID27077, "water_boat_splash_small", level._ID46392.origin );
    var_1 _ID42259::_ID3020( level._ID28543, "price_into_boat" );
    level._ID28543 thread _ID49297( level._ID46392 );
}

_ID47094()
{
    getent( "damaged_pavelow", "targetname" ) hide();
    _ID42237::_ID14413( "end_heli_crashed" );
    _ID42234::_ID13611( "heli_fire" );
    var_0 = getent( "damaged_pavelow", "targetname" );
    wait 0.5;
    var_0 show();
    var_1 = spawn( "trigger_radius", var_0.origin + ( 0, 0, -100 ), 0, 670, 600 );
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

    switch ( self.targetname )
    {
        case "helicopterFireHill01_trigger":
            self waittill( "trigger" );
            var_2 = getent( "helicopterExplosionHillOrigin01_Left", "targetname" );
            var_3 = getent( "helicopterExplosionHillOrigin01_Right", "targetname" );
            var_1 = _ID42411::_ID44773( "helicopterFireAtHill01" );
            _ID42475::_ID34575( "stop_heli_passby_submix" );
            break;
        case "helicopterFireHill02_trigger":
            self waittill( "trigger" );
            var_2 = getent( "helicopterExplosionHillOrigin02_Left", "targetname" );
            var_3 = getent( "helicopterExplosionHillOrigin02_Right", "targetname" );
            var_1 = _ID42411::_ID44773( "helicopterFireAtHill01" );
            _ID42475::_ID34575( "stop_heli_passby_submix" );
            break;
        case "helicopterFireHill03_trigger":
            self waittill( "trigger" );
            var_2 = getent( "helicopterExplosionHillOrigin03_Left", "targetname" );
            var_3 = getent( "helicopterExplosionHillOrigin03_Right", "targetname" );
            var_1 = _ID42411::_ID44773( "helicopterFireAtHill01" );
            _ID42475::_ID34575( "stop_heli_passby_submix" );
            break;
        case "helicopterFireHill04_trigger":
            self waittill( "trigger" );
            var_2 = getent( "helicopterExplosionHillOrigin04_Left", "targetname" );
            var_3 = getent( "helicopterExplosionHillOrigin04_Right", "targetname" );
            var_1 = _ID42411::_ID44773( "helicopterFireAtHill01" );
            _ID42475::_ID34575( "stop_heli_passby_submix" );
            break;
        case "helicopterFireHill05_trigger":
            self waittill( "trigger" );
            var_2 = getent( "helicopterExplosionHillOrigin05_Left", "targetname" );
            var_3 = getent( "helicopterExplosionHillOrigin05_Right", "targetname" );
            var_1 = _ID42411::_ID44773( "helicopterFireAtHill01" );
            _ID42475::_ID34575( "stop_heli_passby_submix" );
            break;
        default:
            return;
    }

    var_1 setvehweapon( "littlebird_FFAR" );
    var_1 setturrettargetent( var_2 );
    var_4 = var_1 fireweapon( "tag_missile_left", var_2, ( 0, 0, 0 ) );
    var_4 missile_setflightmodedirect();
    var_4 missile_settargetent( var_2 );
    wait 0.25;
    var_1 setturrettargetent( var_3 );
    var_5 = var_1 fireweapon( "tag_missile_right", var_3, ( 0, 0, 0 ) );
    var_5 missile_setflightmodedirect();
    var_5 missile_settargetent( var_3 );
    wait 0.5;
    playfx( var_0, var_2.origin );
    thread _ID42237::_ID27077( "scn_cliff_rocket_explosion", var_2.origin );
    wait 0.25;
    playfx( var_0, var_3.origin );
    thread _ID42237::_ID27077( "scn_cliff_rocket_explosion", var_3.origin );
}

_ID47428()
{
    self waittill( "trigger" );
    setsaveddvar( "hud_showStance", 0 );

    if ( _ID42237::_ID14385( "player_on_boat" ) )
        return;

    var_0 = level._ID46392 gettagorigin( "tag_player" );
    var_1 = level._ID46392 gettagangles( "tag_player" );
    thread _ID48323();
    level.player _ID52358( level._ID46392 );
    level._ID46392 makeusable();
    level._ID46392 useby( level.player );
    level.player._ID11803 = level._ID46392;
    _ID48490();
    level._ID28543 _meth_859d();
    level._ID28543 _meth_8583();
}

af_chase_update_wibble_on_price()
{
    self endon( "death" );
    var_0 = 0;

    for (;;)
    {
        var_1 = self vehicle_getspeed();

        if ( _ID42237::_ID14396( "player_in_position_for_boarding_sequence" ) && _ID42237::_ID14385( "player_in_position_for_boarding_sequence" ) )
        {
            var_0 += self.veh_topspeed / 300.0;
            var_1 -= var_0;
        }

        var_1 = clamp( var_1 / self.veh_topspeed, 0, 1 );
        _func_2f1( 0, "xy", var_1 * 0.7, var_1 * 0.5 );
        waittillframeend;
    }
}

_ID48323()
{
    var_0 = _ID54167::_ID43386( "enter_zodiac" );
    var_0 _ID54167::_ID48800( 0.85 ) _ID54167::_ID47198( 0.06, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 1.1 ) _ID54167::_ID47198( 0.08, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_0 _ID54167::_ID48800( 1.55 ) _ID54167::_ID47198( 0.06, 0.9, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID48490()
{
    var_0 = getentarray( "vehicle_clip_boat_only_1", "targetname" );

    foreach ( var_2 in var_0 )
        var_2.origin = var_2.origin + ( 0, 0, 256 );
}

_ID46117()
{
    self.origin = self.origin + ( 0, 0, -50 );
    self waittill( "trigger" );
    level._ID28543 thread _ID42407::_ID15504( "afchase_pri_right" );
}

_ID54038()
{
    return _ID48435();
}

_ID49813()
{
    self waittill( "trigger" );
    _ID42237::_ID14402( "exit_caves" );
    wait 1.1;
    wait 3;
    setsaveddvar( "sm_sunSampleSizeNear", "2" );

    if ( isdefined( level._ID28543 ) )
        level._ID28543 dontcastshadows();

    level.player._ID11803 _meth_85a2( 1 );
}

_ID54639()
{
    self endon( "death" );
    wait 0.5;
    var_0 = self.origin[2];

    while ( self.origin[2] == var_0 )
        wait 0.1;

    self kill();
}

_ID47096( var_0 )
{
    self waittill( "trigger" );
    level._ID44434 = var_0;
}

_ID44036()
{
    level.player endon( "death" );
    self waittill( "trigger" );
    _ID42237::_ID14402( "rapids_trigger" );
    level.player._ID49032 = 1;
    level._ID44434 = 1;
    _ID42237::_ID14402( "rapids_head_bobbing" );
    level._ID28543 _ID42407::_ID15504( "afchase_pri_rapidsahead" );
    thread _ID44930( "rapids_loop", "end_the_rapids_loop", 0 );
    var_0 = getent( "end_price_crazy", "targetname" );
    var_0 waittill( "trigger" );
    level._ID46392 notify( "end_the_rapids_loop" );
    level._ID44434 = 2;
    _ID53743( "rapids_out" );
    _ID42237::_ID14388( "rapids_head_bobbing" );
    _ID48552();
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
    level.player endon( "death" );
    var_0 = gettime() + 30000;

    for (;;)
    {
        setdvar( "ui_deadquote", "" );
        _ID42237::_ID14388( "player_in_open" );
        self waittill( "trigger" );

        while ( level.player istouching( self ) )
        {
            if ( gettime() > var_0 )
            {
                var_0 = gettime() + randomfloatrange( 20000, 22000 );
                level._ID28543 thread _ID42407::_ID15504( "afchase_pri_openareas" );
            }

            _ID42237::_ID14402( "player_in_open" );
            level notify( "new_quote_string" );
            setdvar( "ui_deadquote", &"AF_CHASE_MISSION_FAILED_IN_THE_OPEN" );
            wait 0.05;
        }
    }
}

_ID52842()
{
    wait 0.5;
    var_0 = self._ID23512[0];
    var_0 setmode( "manual_ai" );
    var_0 settargetentity( level.player );

    foreach ( var_2 in self._ID29965 )
    {
        var_2.favoriteenemy = level.player;
        var_2.maxsightdistsqrd = 400000000;
    }
}

_ID51619()
{
    if ( isdefined( level._ID24942 ) )
        return;

    if ( isdefined( level._ID22245 ) && !level._ID22245 )
        return;

    _ID42407::_ID1868( ::_ID47833 );
    _ID42407::_ID29503( _ID42372::_ID37271 );
}

_ID47833( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( self ) )
        return;

    if ( isalive( self ) )
        return;

    if ( !isalive( var_1 ) )
        return;

    if ( !isdefined( var_1._ID1282 ) )
        return;

    if ( var_1 _ID42411::_ID20763() )
        return;

    if ( abs( self.origin[2] - level._ID46392.origin[2] ) > 64 )
        self delete();

    thread _ID52602();

    if ( !isdefined( self ) )
        return;

    _ID42407::_ID29503( ::_ID47833 );
}

_ID52602()
{
    _ID54543();
    var_0 = gettime() + 500;

    while ( gettime() < var_0 )
    {
        if ( !isdefined( self ) )
            return;

        if ( self isragdoll() )
            return;

        self startragdoll();
        wait 0.05;
    }

    self delete();
}

_ID54543()
{
    var_0 = getcorpsearray();

    foreach ( var_2 in var_0 )
    {
        if ( distance( var_2.origin, level.player geteye() ) > 600 )
            var_2 delete();
    }
}

_ID47294()
{
    var_0 = getentarray( "explodable_barrel", "targetname" );
    var_1 = _ID42237::_ID14540( self.origin );
    var_2 = [];

    foreach ( var_4 in var_0 )
    {
        if ( distance( var_1, _ID42237::_ID14540( var_4.origin ) ) < self.radius )
            var_2[var_2.size] = var_4;
    }

    self waittill( "trigger" );

    for ( var_6 = 0; var_6 < 10; var_6++ )
    {
        foreach ( var_8 in var_2 )
            var_8 notify( "damage",  50, undefined, ( 0, 0, 0 ), var_8.origin, "MOD_EXPLOSIVE"  );

        wait 0.05;
    }
}

_ID48435()
{
    return level.player buttonpressed( "BUTTON_B" ) || 1;
}

_ID50404()
{
    _ID42237::_ID14413( "water_cliff_jump_splash_sequence" );
    _ID42407::_ID29534( "axis", ::_ID46114 );
    _ID42407::_ID29534( "axis", ::_ID46820 );
}

_ID52748()
{
    level._ID28543._ID49245 = level._ID28543.model;
    level._ID28543 setmodel( "body_desert_tf141_zodiac" );
    level._ID28543._ID3189 = "generic";
    var_0 = getent( "price_intro_sequence", "targetname" );
    thread _ID20307();
    var_0 _ID42259::_ID3111( level._ID28543, "endgame_price_intro" );
    var_1 = _ID42237::_ID35164();
    var_2 = getstartangles( level._ID28543.origin, level._ID28543.angles, level._ID28543 _ID42407::_ID16120( "price_into_boat" ) ) - level._ID28543.angles;
    var_1.angles = level._ID28543.angles - var_2;
    var_3 = getstartorigin( level._ID28543.origin, var_1.angles, level._ID28543 _ID42407::_ID16120( "price_into_boat" ) ) - level._ID28543.origin;
    var_1.origin = level._ID28543.origin - var_3;
    level._ID28543 _ID42407::_ID10226( 0.05, _ID42259::_ID45303, "stop_attach_axis", var_1, level._ID46392, "TAG_GUY2", 0.5 );
    level._ID46392 _ID42237::_ID10192( 0.66, ::joltbody, level._ID28543.origin, 0.1 );
    level._ID46392 _ID42407::_ID10226( 0.66, _ID42237::_ID27077, "water_boat_splash_small", level._ID46392.origin );
    var_1 _ID42259::_ID3111( level._ID28543, "price_into_boat" );
    level._ID28543 notify( "stop_attach_axis" );
    var_1 delete();

    if ( _ID42237::_ID14385( "distant_explosion" ) != 1 )
        level._ID46392 _ID42259::_ID3111( level._ID28543, "price_into_boat_idle", "tag_guy2" );

    level._ID28543 thread _ID49297( level._ID46392 );
}

_ID20307()
{
    level.player disableweapons( 1 );
    level.player freezecontrols( 1 );
    wait 1;
    level.player freezecontrols( 0 );
    wait 0.8;
    level.player enableweapons();

    for (;;)
    {
        waittillframeend;

        if ( level.player issprinting() )
            level.player _ID42407::_ID27683( 60 );
        else
            level.player _ID42407::_ID27680();

        if ( _ID42237::_ID14385( "distant_explosion" ) )
        {
            level.player _ID42407::_ID27680();
            break;
        }
    }
}

_ID52358( var_0 )
{
    var_1 = getentarray( "water", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 notify( "stop_water_think" );

    self enabledeathshield( 1 );
    var_5 = spawn( "script_origin", var_0 gettagorigin( "tag_detach" ) );
    var_5.angles = var_0.angles;
    var_6 = _ID42407::_ID35028( "worldbody" );
    var_6 hide();
    var_6 dontcastshadows();
    var_5 _ID42259::_ID3018( var_6, "jumpin_zodiac" );
    level.player thread _ID42407::_ID27079( "scn_afchase_plr_jumpin_boat" );

    while ( animscripts\utility::_ID1736( var_6.angles[1] ) > 90 || distance2d( self.origin, var_5.origin ) > 150 )
        waittillframeend;

    self freezecontrols( 1 );
    self allowcrouch( 0 );
    self allowprone( 0 );
    var_7 = self getstance();
    var_8 = 0.4;

    if ( var_7 == "crouch" )
        var_8 = 0.5;

    if ( var_7 != "stand" )
    {
        self setstance( "stand" );

        if ( var_7 == "prone" )
            wait 0.5;
    }

    self disableweapons( 1 );
    var_9 = var_6 _ID42407::_ID16120( "jumpin_zodiac" );
    var_10 = getstartorigin( var_5.origin, var_5.angles, var_9 );
    var_11 = getstartangles( var_5.origin, var_5.angles, var_9 ) - self.angles;
    var_12 = spawnstruct();
    var_12.angles = var_5.angles - var_11;
    var_13 = var_10 - self.origin;
    var_14 = var_5.origin - var_10;
    var_15 = var_14[0] * cos( var_11[1] ) - var_14[1] * sin( var_11[1] );
    var_16 = var_14[0] * sin( var_11[1] ) + var_14[1] * cos( var_11[1] );
    var_17 = var_14 - ( var_15, var_16, var_14[2] );
    var_12.origin = var_5.origin - var_13 + var_17;
    var_12 _ID42259::_ID3018( var_6, "jumpin_zodiac" );
    self playerlinktoblend( var_6, "tag_player", var_8, 0, var_8 );
    var_18 = "jump_notify";
    var_6 animscripted( var_18, var_12.origin, var_12.angles, var_9 );
    var_19 = getnotetracktimes( var_9, "land" );
    var_20 = getanimlength( var_9 ) * var_19[0];
    var_6 thread _ID42259::_ID45303( "stop_update_scripted_node_pos", var_12, var_0, "tag_detach", var_20 );
    wait(var_8);
    self playerlinktodelta( var_6, "tag_player", 1.0, 0, 0, 0, 0, 1 );
    var_6 show();
    _ID42234::_ID13611( "player_enter_zodiac" );
    wait 0.1;
    self switchtoweapon( "uzi" );
    var_6 waittillmatch( var_18,  "end"  );
    var_6 notify( "stop_update_scripted_node_pos" );
    level._ID28543 notify( "stop_attach_axis" );
    self unlink();
    var_6 delete();
    var_5 delete();
    self allowcrouch( 1 );
    self allowprone( 1 );
    self enabledeathshield( 0 );
    self freezecontrols( 0 );
}

_ID44976()
{
    waitframe;
    var_0 = getent( "player_zodiac_tall_collision", "targetname" );
    var_0 linkto( level._ID40317["allies"][0] );
}

lod_scale_setup()
{
    level waittill( "player_over_the_waterfall" );
    setsaveddvar( "r_lodFOVFixedScale", 2 );
}

wet_price()
{
    if ( _ID42237::_ID14385( "price_is_soaked" ) )
        return;

    level._ID28543 setmodel( "body_desert_tf141_zodiac_wet" );
    level._ID28543 _ID42226::_ID32651( "head_hero_price_zodiac_wet" );
    _ID42237::_ID14402( "price_is_soaked" );
}
