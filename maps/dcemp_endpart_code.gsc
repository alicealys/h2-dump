// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID47720()
{
    level endon( "kill_spotlight" );
    var_0 = _ID42237::_ID16638( "whitehouse_spotlight", "targetname" );
    var_1 = spawnturret( "misc_turret", var_0._ID740, "heli_spotlight" );
    var_1._ID65 = var_0._ID65;
    var_1 setmodel( "cod3mg42" );
    var_1 setturretteam( "axis" );
    var_1 setmode( "manual" );
    var_1 setconvergencetime( 1, "yaw" );
    var_1 setconvergencetime( 1, "pitch" );
    var_1 endon( "death" );
    var_2 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2._ID13016 = spawn( "script_origin", var_2._ID740 );
    var_1 settargetentity( var_2._ID13016 );
    var_1 waittill( "turret_on_target" );
    var_1 thread _ID54581();
    var_1 thread _ID48413();
    var_1 _ID43527( var_2 );
    var_1 thread _ID54330();
    _ID42237::_ID14413( "whitehouse_breached" );
    stopfxontag( level._ID1426["_attack_heli_spotlight"], var_1, "tag_flash" );
    var_1 notify( "death" );
}

_ID43527( var_0 )
{
    self endon( "death" );
    var_1 = var_0._ID13016;

    for (;;)
    {
        if ( isdefined( var_0._ID31446 ) )
        {
            var_2 = var_0._ID31446 / 1000;
            self setconvergencetime( var_2, "yaw" );
            self setconvergencetime( var_2, "pitch" );
        }

        var_1 delete();
        var_1 = spawn( "script_origin", var_0._ID740 );
        self settargetentity( var_1 );
        self waittill( "turret_on_target" );

        if ( isdefined( var_0._ID31195 ) )
            _ID42237::_ID14402( var_0._ID31195 );

        var_0 _ID42407::_ID916();

        if ( isdefined( var_0._ID31197 ) )
            _ID42237::_ID14413( var_0._ID31197 );

        if ( !isdefined( var_0._ID1191 ) )
            break;

        var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    }
}

_ID54330()
{
    self endon( "death" );
    var_0 = getent( "entrance_stage_area", "targetname" );
    self setconvergencetime( 5, "yaw" );
    self setconvergencetime( 5, "pitch" );

    for (;;)
    {
        var_1 = getaiarray( "allies" );
        var_2 = [];

        foreach ( var_4 in var_1 )
        {
            if ( var_4 istouching( var_0 ) && !var_4 _ID42407::_ID20537() )
                var_2[var_2.size] = var_4;
        }

        if ( var_2.size == 0 )
        {
            wait 1;
            continue;
        }

        var_6 = _ID42237::_ID28945( var_2 );
        self settargetentity( var_6 );
        self waittill( "turret_on_target" );
        wait(randomfloatrange( 0.5, 1.5 ));
    }
}

_ID54581()
{
    self endon( "death" );
    var_0 = randomintrange( 3, 5 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        playfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_flash" );
        wait(randomfloatrange( 0.05, 0.15 ));
        waitframe;
        stopfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_flash" );
        wait(randomfloatrange( 0.05, 0.15 ));
        waitframe;
    }

    wait 0.1;
    playfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_flash" );
}

_ID48413()
{
    self endon( "death" );
    var_0 = getent( "spotlight_damage_trigger", "targetname" );
    var_1 = 0;
    var_2 = var_0 _ID52261( 400 );
    var_1 += var_2;
    _ID42234::_ID13611( "spotlight_exploder" );
    stopfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_flash" );
    self notify( "death" );
}

_ID48299( var_0 )
{
    self endon( "death" );

    if ( isdefined( var_0 ) )
        wait(randomint( 3 ));

    thread _ID50831();
    self setmode( "auto_nonai" );
    self setturretteam( "axis" );
    self setbottomarc( 35 );
    self setleftarc( 90 );
    self setrightarc( 90 );
    thread _ID47306();

    if ( isdefined( self._ID1191 ) )
        thread _ID53336();

    if ( isdefined( self._ID31245 ) )
    {
        level waittill( "sandbag_group_" + self._ID31245 );
        thread _ID47995();
    }
}

_ID50831()
{
    self endon( "death" );
    var_0 = _ID42237::_ID15807();
    self._ID11805 = var_0 _ID42407::_ID35014( 1 );
    self._ID11805._ID486 = 250;
    self._ID11805 waittill( "death" );
    level notify( "sandbag_group_" + self._ID31245 );
}

_ID47306()
{
    self endon( "stop_firing" );

    for (;;)
    {
        var_0 = randomfloatrange( 1, 2.5 ) * 20;

        for ( var_1 = 0; var_1 < var_0; var_1++ )
        {
            self shootturret();
            wait 0.05;
        }

        wait(randomfloatrange( 1, 3 ));
    }
}

_ID53336( var_0, var_1 )
{
    self endon( "stop_path" );
    self setconvergencetime( 4, "yaw" );
    self setconvergencetime( 2, "pitch" );
    self setaispread( 0.4 );
    self setmode( "manual" );

    if ( isdefined( var_0 ) )
        self._ID9472 = var_0;
    else
        self._ID9472 = _ID42237::_ID16638( self._ID1191, "targetname" );

    var_2 = spawn( "script_origin", self._ID9472._ID740 );

    for (;;)
    {
        if ( isdefined( self._ID9472._ID31446 ) )
        {
            var_3 = self._ID9472._ID31446 / 1000;
            self setconvergencetime( var_3, "yaw" );
            self setconvergencetime( var_3, "pitch" );
        }

        var_2 delete();
        var_2 = spawn( "script_origin", self._ID9472._ID740 );
        self settargetentity( var_2 );
        _ID1235( self._ID9472 );

        if ( isdefined( self._ID9472._ID1191 ) )
        {
            self._ID9472 = _ID42237::_ID16638( self._ID9472._ID1191, "targetname" );
            continue;
        }

        if ( isdefined( self._ID1191 ) )
        {
            self._ID9472 = _ID42237::_ID16638( self._ID1191, "targetname" );
            continue;
        }

        break;
    }

    var_2 delete();
}

_ID47995( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        var_0 *= 3;
        wait(randomfloatrange( var_0, var_0 + 2 ));
    }

    if ( isdefined( self ) )
    {
        self notify( "stop_path" );
        self notify( "stop_firing" );
    }

    self delete();

    if ( isalive( self._ID11805 ) )
        self._ID11805 kill();
}

_ID50158( var_0 )
{
    self waittill( "trigger" );

    if ( _ID42237::_ID14385( "mg_threat" ) )
        return;

    var_0 setmode( "manual" );
    var_0 setturretteam( "axis" );
    var_0 setbottomarc( 45 );
    var_0 setconvergencetime( 0.25, "yaw" );
    var_0 setconvergencetime( 0.25, "pitch" );
    _ID42237::_ID14402( "mg_threat" );
    var_1 = _ID42237::_ID16638( self._ID1191, "targetname" );
    var_2 = spawn( "script_origin", var_1._ID740 );
    var_0 settargetentity( var_2 );
    var_0 waittill( "turret_on_target" );
    var_0 thread _ID47306();
    var_0 _ID53336( var_1 );
    var_0 notify( "stop_firing" );
    _ID42237::_ID14388( "mg_threat" );
}

_ID44314()
{
    var_0 = getentarray( "magic_rpg_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID52087 );
}

_ID52087()
{
    self waittill( "trigger" );
    var_0 = _ID42237::_ID16640( self._ID1191, "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_3 = _ID42237::_ID16640( var_2._ID1191, "targetname" );
        _ID42237::_ID3350( var_3, ::_ID51753, var_2 );
    }
}

_ID51753( var_0 )
{
    _ID42407::_ID916();
    var_1 = magicbullet( "rpg_straight", var_0._ID740, self._ID740 );
}

_ID51903( var_0 )
{
    _ID53018( var_0 );
    var_1 = getentarray( var_0, "targetname" );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        var_5 = var_4._ID31245;

        if ( !isdefined( var_2[var_5] ) )
            var_2[var_5] = [];

        var_6 = var_2[var_5].size;
        var_2[var_5][var_6] = var_4;
    }

    foreach ( var_9 in var_2 )
        level thread _ID45491( var_9 );
}

_ID53018( var_0 )
{
    var_1 = _ID42237::_ID16640( var_0, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = spawn( "script_model", var_3._ID740 );
        var_4._ID65 = var_3._ID65;
        var_4 setmodel( var_3._ID31295 );
        var_4._ID31245 = var_3._ID31245;
        var_4._ID31259 = var_3._ID31259;
        var_4._ID31388 = var_3._ID31388;
        var_4._ID1193 = var_3._ID1193;
        var_3 = undefined;
    }
}

_ID45491( var_0 )
{
    var_1 = spawnstruct();
    var_1._ID53439 = 0;
    _ID42237::_ID3350( var_0, ::_ID44045, var_1 );
    var_2 = anglestoforward( ( 345, 180, 0 ) );
    var_3 = var_2 * 3000;

    while ( var_0.size )
    {
        var_1 waittill( "damage",  var_4, var_5  );
        waitframe;

        if ( var_5 > 500 )
        {
            var_1._ID53439 = max( var_1._ID53439, int( var_0.size * 0.75 ) );
            level notify( "sandbag_group_" + var_4._ID31245 );
        }

        for ( var_6 = 0; var_6 < var_1._ID53439; var_6++ )
        {
            if ( var_6 == 0 )
            {
                var_7 = _ID43510( var_0, var_4 );

                if ( isdefined( var_7._ID31388 ) )
                {
                    var_1._ID53439 = var_0.size;
                    level notify( "sandbag_group_" + var_7._ID31245 );
                }
            }
            else
                var_7 = _ID43510( var_0 );

            var_7 notify( "thrown" );
            var_0 = _ID42237::_ID3321( var_0, var_7 );
            var_7 physicslaunchclient( var_7._ID740, var_3 );
        }

        var_1._ID53439 = 0;
        var_1 notify( "throw_done" );
    }
}

_ID43510( var_0, var_1 )
{
    var_2 = 1000000;
    var_3 = undefined;

    foreach ( var_5 in var_0 )
    {
        if ( var_5._ID31259 > var_2 )
            continue;

        var_2 = var_5._ID31259;
        var_3 = var_5;
    }

    if ( isdefined( var_1 ) && var_3._ID31259 == var_1._ID31259 )
        return var_1;

    return var_3;
}

_ID44045( var_0 )
{
    self endon( "thrown" );
    self._ID486 = 10000;
    self setcandamage( 1 );

    for (;;)
    {
        var_1 = _ID52261( 100 );
        var_0._ID53439++;
        var_0 notify( "damage",  self, var_1  );
        var_0 waittill( "throw_done" );
    }
}

_ID43402()
{
    var_0 = _ID42407::_ID15543( "allied_mg" );

    foreach ( var_2 in var_0 )
        var_2 kill();

    var_4 = _ID42407::_ID15543( "whitehouse_approach_enemies" );
    var_5 = 0;

    foreach ( var_2 in var_4 )
    {
        var_2 thread _ID47087( var_5 );
        var_5 += 1;
    }

    _ID42237::_ID14413( "whitehouse_breached" );
    var_8 = getentarray( "manual_mg", "script_noteworthy" );
    var_8 = _ID42237::_ID3293( var_8, getent( "west_side_mg", "script_noteworthy" ) );

    for ( var_9 = 0; var_9 < var_8.size; var_9++ )
        var_8[var_9] thread _ID47995( var_9 + 1 );

    var_10 = getaiarray( "axis" );
    _ID42237::_ID3294( var_10, ::kill );
    var_11 = getaiarray( "allies" );

    foreach ( var_2 in var_11 )
    {
        if ( var_2 _ID42407::_ID20537() )
            continue;

        var_2 kill();
    }
}

_ID52432()
{
    var_0 = getentarray( "manual_mg", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID48299, 1 );
    var_1 = getent( "threat_mg", "targetname" );
    var_2 = getentarray( "mg_threat_trigger", "targetname" );
    _ID42237::_ID3350( var_2, ::_ID50158, var_1 );
}

_ID48766()
{
    _ID42237::_ID14413( "whitehouse_silhouette_ready" );
    var_0 = getentarray( "drone_rocket_source", "targetname" );
    var_1 = _ID42407::_ID3328( level._ID49439 );

    for ( var_2 = 0; var_1.size; var_2++ )
    {
        var_3 = var_0[var_2 % var_0.size];
        magicbullet( "rpg_straight", var_3._ID740, _ID42237::_ID28945( var_1 )._ID740 );
        wait(randomfloat( 2 ));
        var_1 = _ID42407::_ID3328( level._ID49439 );
    }

    _ID42237::_ID14402( "whitehouse_silhouette_over" );
}

_ID43750()
{
    _ID42407::_ID3343( "whitehouse_rappel_ai", ::_ID46082 );
}

_ID46082( var_0 )
{
    self endon( "death" );
    var_1 = getent( self._ID1191, "targetname" );
    var_2 = _ID42407::_ID35028( "rope", var_1._ID740 );
    var_3 = [];
    var_3[0] = self;
    var_3[1] = var_2;
    var_4 = randomintrange( 1, 3 );
    self._ID3189 = "rappel_guy";
    self._ID49 = 1;
    var_1 thread _ID42259::_ID3040( var_3, "rappel_stand_idle_" + var_4, "stop_loop" );
    _ID42237::_ID14413( "whitehouse_rappel" );
    var_1 _ID42407::_ID916();
    var_1 _ID42407::_ID3136();
    var_2 _ID42237::_ID10192( 9, ::delete );
    var_1 _ID42259::_ID3099( var_3, "rappel_drop", undefined, 4.3 );
    var_5 = getent( "rappel_goal", "targetname" );
    self setgoalpos( var_5._ID740 );
    self._ID452 = 1024;
    self._ID450 = 128;
}

_ID53120( var_0, var_1, var_2, var_3 )
{
    wait(var_0);
    var_4 = spawn( "script_model", ( 0, 0, 0 ) );
    var_4 setmodel( "mil_emergency_flare" );
    var_4 linkto( self, var_1, var_2, var_3 );
    playfxontag( level._ID1426["green_flare"], var_4, "tag_fire_fx" );
    wait 12;
    stopfxontag( level._ID1426["green_flare"], var_4, "tag_fire_fx" );
    wait 0.5;
    var_4 delete();
}

_ID46192( var_0 )
{
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    var_1 setmodel( "mil_emergency_flare" );
    var_1 linkto( var_0, "tag_weapon_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_2 = _ID42237::_ID16299( "green_flare" );
    playfxontag( var_2, var_1, "tag_fire_fx" );
    playfxontag( var_2, var_0, "tag_fire_fx" );
    var_0 waittill( "remove_flare" );
    stopfxontag( var_2, var_1, "tag_fire_fx" );
    stopfxontag( var_2, var_0, "tag_fire_fx" );
    var_1 unlink();
    var_1 delete();
    var_0 detach( "mil_emergency_flare", "tag_inhand" );
}

_ID44717()
{
    level._ID794._ID45085 = spawn( "script_model", ( 0, 0, 0 ) );
    level._ID794._ID45085 setmodel( "mil_emergency_flare" );
    level._ID794._ID45085 linkto( self, "tag_weapon_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794._ID45085 endon( "death" );
    _ID42237::_ID14413( "flare_start_fx" );
    playfxontag( level._ID1426["green_flare"], level._ID794._ID45085, "tag_fire_fx" );
    level._ID794._ID45085 playloopsound( "emt_road_flare_burn" );
    _ID42237::_ID14413( "flare_end_fx" );
    var_0 = level._ID794._ID45085._ID740;
    var_1 = var_0 + ( 0, 0, -64 );
    var_2 = physicstrace( var_0, var_1 );
    level._ID794._ID45085._ID740 = var_2 + ( 0, 0, 1 );
    level._ID794._ID45085._ID65 = ( 0, level._ID794._ID45085._ID65[1], 0 );
}

_ID53767()
{
    wait 0.4;
    self playsound( "door_wood_double_kick" );
    self connectpaths();
    self rotateto( self._ID65 + ( 0, 90, 0 ), 0.5, 0.1, 0 );
    self waittill( "rotatedone" );
    self rotateto( self._ID65 + ( 0, -10, 0 ), 0.3, 0, 0.3 );
    self waittill( "rotatedone" );
    self rotateto( self._ID65 + ( 0, 5, 0 ), 0.3, 0.15, 0.15 );
}

_ID52261( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    var_1 = 0;

    for ( var_2 = 0; !var_1; var_1 = var_2 > var_0 )
    {
        self waittill( "damage",  var_3, var_4  );

        if ( var_4 == level._ID794 )
            var_2 += var_3;
    }

    return var_2;
}

_ID1235( var_0 )
{
    self waittill( "turret_on_target" );

    for (;;)
    {
        var_1 = anglestoforward( self gettagangles( "tag_flash" ) );
        var_2 = vectornormalize( var_0._ID740 - self._ID740 );
        var_3 = vectordot( var_1, var_2 );

        if ( var_3 > 0.9999 )
            return;

        wait 0.05;
    }
}

_ID47087( var_0 )
{
    self endon( "death" );
    wait(randomfloatrange( var_0, var_0 + 2 ));
    self kill();
}

_ID47556()
{
    self endon( "death" );
    self endon( "stop_dynamic_speed" );

    for (;;)
    {
        if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740, level._ID8760["60"] ) )
            self._ID24424 = 1.0;
        else
            self._ID24424 = 2.5;

        wait 0.05;
    }
}

_ID47565()
{
    var_0 = getentarray( "chandelier", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID48145 );
}

_ID48145()
{
    var_0 = getentarray( self._ID1191, "targetname" );
    self._ID45748 = var_0[0];
    self._ID594 = var_0[1];

    if ( var_0[0]._ID170 != "script_model" )
    {
        self._ID45748 = var_0[1];
        self._ID594 = var_0[0];
    }

    if ( isdefined( self._ID45748._ID1191 ) )
    {
        var_1 = _ID42237::_ID16638( self._ID45748._ID1191, "targetname" );
        var_2 = var_1._ID740;
    }
    else
        var_2 = physicstrace( self._ID740, self._ID740 + ( 0, 0, 80 ) );

    self._ID50332 = spawn( "script_origin", var_2 );
    self._ID49365 = 0;
    self linkto( self._ID50332 );
    self._ID45748 linkto( self._ID50332 );
    thread _ID49448();
    self._ID594 setlightintensity( 1.5 );
    thread _ID53842();
}

_ID53842()
{
    self endon( "chandelier_fall" );
    self setcandamage( 1 );
    self setcanradiusdamage( 1 );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( _ID42231::_ID16207( var_4 ) != "splash" )
            continue;

        thread _ID53936( var_0, var_2 );
        thread _ID53890();

        if ( isdefined( self._ID31388 ) )
            thread _ID53384();
    }
}

_ID53936( var_0, var_1 )
{
    self._ID49365 = 1;
    self notify( "chandelier_swing" );
    self endon( "chandelier_swing" );
    var_0 = clamp( var_0, 0, 80 );
    var_2 = var_0 / 100;
    var_3 = 75 * var_2;
    var_4 = 0.4;
    var_5 = vectornormalize( ( var_1[0] * -1, var_1[1], 0 ) );
    var_6 = ( var_3 * var_5[0], 0, var_3 * var_5[1] );
    self._ID50332 rotateto( var_6, var_4, 0, var_4 );
    self._ID50332 waittill( "rotatedone" );

    while ( abs( var_3 ) > 2 )
    {
        var_3 *= -0.75;
        var_6 = ( var_3 * var_5[0], 0, var_3 * var_5[1] );
        self._ID50332 rotateto( var_6, var_4 * 2, var_4, var_4 );
        self._ID50332 waittill( "rotatedone" );
        self notify( "chandelier_turn" );
    }

    self._ID50332 rotateto( ( 0, 0, 0 ), var_4 * 2, var_4, var_4 );
    self._ID50332 waittill( "rotatedone" );
    self._ID49365 = 0;
    self notify( "chandelier_turn" );
}

_ID53890()
{
    self endon( "chandelier_fall" );
    self endon( "chandelier_swing" );
    wait 0.5;

    for ( var_0 = 0; var_0 < 14; var_0++ )
    {
        self._ID594 setlightintensity( 0 );
        self setmodel( "furniture_chandelier1_off" );
        wait(randomfloatrange( 0.05, 0.2 ));
        self._ID594 setlightintensity( randomfloatrange( 0.5, 1.5 ) );
        self setmodel( "furniture_chandelier1" );
        wait(randomfloatrange( 0.15, 0.3 ));
    }

    self._ID594 setlightintensity( 1.5 );
}

_ID53384()
{
    self endon( "chandelier_swing" );
    var_0 = self._ID45000._ID740;
    wait(randomfloatrange( 1, 4 ));
    self notify( "chandelier_fall" );
    self._ID594 setlightintensity( 4 );
    self setmodel( "furniture_chandelier1" );
    wait 0.05;
    self._ID594 setlightintensity( 0 );
    self setmodel( "furniture_chandelier1_off" );
    playfx( level._ID1426["wire_spark"], self._ID740 );

    if ( self._ID49365 )
        self waittill( "chandelier_turn" );

    self unlink();
    var_1 = var_0 - self._ID45000._ID740;
    self physicslaunchclient( self._ID45000._ID740, var_1 * 2 );
}

_ID49448()
{
    self endon( "chandelier_fall" );
    self._ID45000 = spawn( "script_origin", self._ID594._ID740 );
    self._ID45000 linkto( self );

    for (;;)
    {
        self waittill( "chandelier_swing" );

        while ( self._ID49365 )
        {
            self._ID594._ID740 = self._ID45000._ID740;
            wait 0.05;
        }
    }
}

_ID45116( var_0 )
{
    var_1 = getentarray( var_0, "script_noteworthy" );
    var_2 = undefined;

    foreach ( var_2 in var_1 )
    {
        if ( var_2._ID1193 == "chandelier" )
            break;
    }

    return var_2;
}

_ID49354( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = ( 10, 10, 0 );

    self notify( "damage",  var_0, undefined, var_1, undefined, "mod_grenade_splash"  );
}

_ID45657( var_0 )
{
    var_1 = spawn( "script_origin", level._ID794._ID740 + ( 0, 0, 32 ) );
    var_1 makeusable();
    var_1 sethintstring( var_0 );
    var_1 linkto( level._ID794 );
    level thread _ID42407::_ID32305( var_1, "remove_use_hint" );
    _ID42237::_ID14413( "remove_use_hint" );
    var_1 delete();
}

_ID49304( var_0 )
{
    return int( ( gettime() - var_0 ) / 1000 );
}

_ID52365( var_0, var_1 )
{
    var_2 = anglestoright( var_1 ) * -1;
    var_3 = anglestoforward( var_1 );
    var_4 = anglestoup( var_1 );
    var_5 = var_3 * var_0[0] + var_2 * var_0[1] + var_4 * var_0[2];
    return var_5;
}
#using_animtree("generic_human");

_ID50463()
{
    self useanimtree( #animtree );
    self setcandamage( 1 );
}

_ID43867()
{
    var_0 = getent( "tunnels_teleport_trigger", "targetname" );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "tunnels_teleport" );
    maps\dcemp_code::_ID49018();
    maps\dcemp_code::_ID53690();

    while ( !level._ID794 isonground() )
        wait 0.05;

    _ID42237::_ID14402( "end_fx" );
    var_1 = getent( var_0._ID1191, "targetname" );
    var_2 = getent( var_1._ID1191, "targetname" );
    var_3 = var_2._ID65 - var_1._ID65;
    var_4 = level._ID794._ID740 - var_1._ID740;
    var_4 = _ID52365( var_4, var_3 );
    var_5 = level._ID794 getplayerangles() - var_1._ID65;
    var_6 = var_2._ID740 + var_4;
    var_7 = var_2._ID65 + var_5;
    level._ID794 setorigin( var_6 );
    level._ID794 setplayerangles( var_7 );
    setnorthyaw( 0.0 );
    var_8 = getent( "tunnels_teleport_volume", "targetname" );
    var_9 = _ID42237::_ID16640( "tunnels_teleport_struct", "targetname" );
    var_10 = 0;
    var_3 = var_2._ID65 - var_1._ID65;

    foreach ( var_12 in level._ID1194 )
    {
        var_4 = var_12._ID740 - var_1._ID740;
        var_4 = _ID52365( var_4, var_3 );
        var_13 = var_12._ID65 - var_1._ID65;
        var_6 = var_2._ID740 + var_4;
        var_7 = var_2._ID65 + var_13;
        var_12 forceteleport( var_6, var_7 );
    }

    _ID42237::_ID14402( "tunnels_teleport_done" );
}

_ID47154( var_0, var_1 )
{
    var_2 = spawn( "script_model", var_0 );
    var_3 = var_2 istouching( var_1 );
    var_2 delete();
    return var_3;
}

_ID52941()
{
    var_0 = self getattachsize();

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        var_2 = self getattachmodelname( var_1 );
        var_3 = self getattachtagname( var_1 );

        if ( issubstr( var_2, "weapon" ) )
            self detach( var_2, var_3 );
    }
}

_ID53326()
{
    var_0 = getentarray( "force_flash", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID52643 );
}

_ID52643()
{
    self waittill( "trigger" );
    thread _ID42422::_ID22340( _ID52596::_ID22335, _ID52596::_ID22333 );
}
