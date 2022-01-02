// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52411( var_0, var_1 )
{
    var_2 = getent( var_0, "targetname" );
    var_2.health = var_1;
    var_3 = _ID42237::_ID16638( var_2.target, "targetname" );
    var_4 = spawnturret( "misc_turret", var_3.origin, "heli_spotlight" );
    var_4.angles = var_3.angles + ( 0, 0, 180 );
    var_4 setmodel( "com_blackhawk_spotlight_on_mg_setup_small_off" );
    var_4 setturretteam( "axis" );
    var_4 setmode( "manual" );
    var_4 setconvergencetime( 1, "yaw" );
    var_4 setconvergencetime( 1, "pitch" );
    var_4.target = var_3.target;
    var_4._ID54115 = var_2;
    var_4.spotlight_is_dead = 0;
    var_5 = _ID42237::_ID16638( var_4.target, "targetname" );
    var_4._ID47896 = spawn( "script_origin", var_5.origin );
    var_4 settargetentity( var_4._ID47896 );
    return var_4;
}

_ID47720()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_0._ID13016 = spawn( "script_origin", var_0.origin );
    self settargetentity( var_0._ID13016 );
    self waittill( "turret_on_target" );
    self._ID47896 delete();
    self._ID54115 setcandamage( 1 );
    self setmodel( "com_blackhawk_spotlight_on_mg_setup_small_on" );
    thread _ID54581();
    thread _ID48413();
    thread _ID43527( var_0 );
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
        var_1 = spawn( "script_origin", var_0.origin );
        self settargetentity( var_1 );
        self waittill( "turret_on_target" );

        if ( isdefined( var_0._ID31195 ) )
            _ID42237::_ID14402( var_0._ID31195 );

        var_0 _ID42407::_ID916();

        if ( isdefined( var_0._ID31197 ) )
            _ID42237::_ID14413( var_0._ID31197 );

        if ( !isdefined( var_0.target ) )
            break;

        var_3 = _ID42237::_ID16640( var_0.target, "targetname" );
        var_0 = _ID42237::_ID28945( var_3 );
    }
}

_ID54581()
{
    self endon( "death" );
    playfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.15;
    killfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.08;
    playfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.3;
    killfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.08;
    playfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.05;
    killfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.08;
    playfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.1;
    killfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    wait 0.05;
    playfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
}

_ID48413()
{
    self endon( "spotlight_delete" );
    var_0 = self._ID54115.health;
    self._ID54115 _ID48052( var_0 );
    thread _ID42407::_ID27079( "scn_dcwhitehouse_spotlight_destroy" );
    self setmodel( "com_blackhawk_spotlight_on_mg_setup_small_off" );
    killfxontag( level._ID1426["_attack_heli_spotlight"], self, "tag_light" );
    self notify( "death" );
    self.spotlight_is_dead = 1;
    playfxontag( level._ID1426["spotlight_spark"], self, "tag_light" );
    wait 0.5;
    playfxontag( level._ID1426["spotlight_spark"], self, "tag_light" );
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

    if ( level._ID50605 > 0 )
    {
        if ( isdefined( self.target ) )
            thread _ID53336();
    }

    level._ID50605--;

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
    self._ID11805.health = 250;
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
        self._ID9472 = _ID42237::_ID16638( self.target, "targetname" );

    var_2 = spawn( "script_origin", self._ID9472.origin );

    for (;;)
    {
        if ( isdefined( self._ID9472._ID31446 ) )
        {
            var_3 = self._ID9472._ID31446 / 1000;
            self setconvergencetime( var_3, "yaw" );
            self setconvergencetime( var_3, "pitch" );
        }

        var_2 delete();
        var_2 = spawn( "script_origin", self._ID9472.origin );
        self settargetentity( var_2 );
        _ID1235( self._ID9472 );

        if ( isdefined( self._ID9472.target ) )
        {
            self._ID9472 = _ID42237::_ID16638( self._ID9472.target, "targetname" );
            continue;
        }

        if ( isdefined( self.target ) )
        {
            self._ID9472 = _ID42237::_ID16638( self.target, "targetname" );
            continue;
        }

        break;
    }

    var_2 delete();
}

_ID47995( var_0 )
{
    self endon( "death" );

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

    if ( isalive( self._ID11805 ) )
        self._ID11805 kill();

    self delete();
}

_ID50158( var_0 )
{
    level endon( "whitehouse_breached" );
    self waittill( "trigger" );

    if ( _ID42237::_ID14385( "mg_threat" ) )
        return;

    var_0 setmode( "manual" );
    var_0 setturretteam( "axis" );
    var_0 setbottomarc( 45 );
    var_0 setconvergencetime( 0.25, "yaw" );
    var_0 setconvergencetime( 0.25, "pitch" );
    _ID42237::_ID14402( "mg_threat" );
    var_1 = _ID42237::_ID16638( self.target, "targetname" );
    var_2 = spawn( "script_origin", var_1.origin );
    var_0 settargetentity( var_2 );
    var_0 waittill( "turret_on_target" );
    var_2 delete();
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
    var_0 = _ID42237::_ID16640( self.target, "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_3 = _ID42237::_ID16640( var_2.target, "targetname" );
        _ID42237::_ID3350( var_3, ::_ID51753, var_2 );
    }
}

_ID51753( var_0 )
{
    _ID42407::_ID916();
    var_1 = magicbullet( "rpg_straight", var_0.origin, self.origin );
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

    var_8 = _ID42237::_ID16638( var_0, "script_noteworthy" );

    foreach ( var_10 in var_2 )
        level thread _ID45491( var_10, var_8 );
}

_ID53018( var_0 )
{
    var_1 = _ID42237::_ID16640( var_0, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = spawn( "script_model", var_3.origin );
        var_4.angles = var_3.angles;
        var_4 setmodel( var_3._ID31295 );
        var_4._ID31245 = var_3._ID31245;
        var_4._ID31259 = var_3._ID31259;
        var_4._ID31388 = var_3._ID31388;
        var_4.targetname = var_3.targetname;
        var_3 = undefined;
    }
}

_ID45491( var_0, var_1 )
{
    var_2 = spawnstruct();
    var_2._ID53439 = 0;
    _ID42237::_ID3350( var_0, ::_ID44045, var_2 );
    var_3 = anglestoforward( var_1.angles );
    var_4 = var_3 * 3000;

    while ( var_0.size )
    {
        var_2 waittill( "damage",  var_5, var_6  );
        waitframe;

        if ( var_6 > 500 )
        {
            var_2._ID53439 = max( var_2._ID53439, int( var_0.size * 0.75 ) );
            level notify( "sandbag_group_" + var_5._ID31245 );
        }

        for ( var_7 = 0; var_7 < var_2._ID53439; var_7++ )
        {
            if ( var_7 == 0 )
            {
                var_8 = _ID43510( var_0, var_5 );

                if ( isdefined( var_8._ID31388 ) )
                {
                    var_2._ID53439 = var_0.size;
                    level notify( "sandbag_group_" + var_8._ID31245 );
                }
            }
            else
                var_8 = _ID43510( var_0 );

            var_8 notify( "thrown" );
            var_0 = _ID42237::_ID3321( var_0, var_8 );
            var_8 physicslaunchclient( var_8.origin, var_4 );
        }

        var_2._ID53439 = 0;
        var_2 notify( "throw_done" );
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
    self.health = 10000;
    self setcandamage( 1 );

    for (;;)
    {
        var_1 = _ID48052( 100 );
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
    _ID42237::_ID3350( var_4, ::_ID47087, 10, 15 );
    _ID42237::_ID3294( var_4, ::setthreatbiasgroup, "ignore_player" );
    _ID42237::_ID14413( "whitehouse_entrance_init" );
    var_5 = getentarray( "manual_mg", "script_noteworthy" );
    var_5 = _ID42237::_ID3293( var_5, getent( "west_side_mg", "script_noteworthy" ) );

    for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        var_5[var_6] thread _ID47995( var_6 + 1 );

    _ID42237::_ID14413( "whitehouse_entrance_clear" );
    var_4 = _ID42407::_ID15543( "westwing_roof_enemies" );
    _ID42237::_ID3350( var_4, ::_ID47087, 5, 15 );
    _ID42237::_ID14413( "whitehouse_breached" );
    var_7 = getaiarray( "axis" );
    _ID42237::_ID3294( var_7, ::kill );
    _ID42237::_ID14413( "whitehouse_path_kitchen" );
    var_8 = getaiarray( "allies" );

    foreach ( var_2 in var_8 )
    {
        if ( var_2 _ID42407::_ID20537() )
            continue;

        var_2 _ID47087( 4, 10, 1 );
    }
}

_ID52432()
{
    level._ID50605 = level._ID15361 - 1;
    var_0 = getentarray( "manual_mg", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID48299, 1 );
    var_1 = getent( "threat_mg", "targetname" );
    var_2 = getentarray( "mg_threat_trigger", "targetname" );
    _ID42237::_ID3350( var_2, ::_ID50158, var_1 );
    var_1 makeunusable();
}

_ID53722()
{
    var_0 = 2;
    var_1 = 1.5;

    switch ( level._ID15361 )
    {
        case 0:
            var_0 = 5;
            var_1 = 2;
            break;
        case 1:
            var_0 = 4;
            var_1 = 2;
            break;
    }

    var_2 = getentarray( "westwing_mg", "script_noteworthy" );

    foreach ( var_4 in var_2 )
    {
        var_4 setaispread( var_0 );
        var_4 setconvergencetime( var_1 );
    }
}

_ID53568()
{
    _ID42237::_ID14413( "whitehouse_breached" );
    self delete();
}

_ID48766()
{
    _ID42237::_ID14413( "whitehouse_silhouette_ready" );
    var_0 = getentarray( "drone_rocket_source", "targetname" );
    var_1 = _ID42407::_ID3328( level._ID49439 );

    for ( var_2 = 0; var_1.size; var_2++ )
    {
        var_3 = var_0[var_2 % var_0.size];
        magicbullet( "rpg_straight", var_3.origin, _ID42237::_ID28945( var_1 ).origin );
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
    var_1 = getent( self.target, "targetname" );
    _ID42407::_ID12442();
    var_2 = _ID42407::_ID35028( "rope", var_1.origin );
    var_2 thread _ID46958();
    var_3 = [];
    var_3[0] = self;
    var_3[1] = var_2;

    switch ( self.classname )
    {
        case "actor_enemy_airborne_AR":
            var_4 = 1;
            break;
        case "actor_enemy_airborne_RPG":
            var_4 = 2;
            break;
        case "actor_enemy_airborne_SMG":
            var_4 = 3;
            break;
        default:
            var_4 = randomintrange( 1, 3 );
            break;
    }

    self._ID3189 = "rappel_guy";
    self.allowdeath = 1;
    self.ignoreme = 1;
    var_1 thread _ID42259::_ID3040( var_3, "rappel_stand_idle_" + var_4, "stop_loop" );
    var_1 _ID42407::_ID916();
    var_1 _ID42407::_ID3136();
    var_1 _ID42259::_ID3099( var_3, "rappel_drop", undefined, 4.3 );
    _ID42407::_ID10869();
    var_5 = getent( "rappel_goal", "targetname" );
    self setgoalpos( var_5.origin );
    self.goalradius = 1024;
    self.goalheight = 128;
    self.ignoreme = 0;
}

_ID46958()
{
    _ID42407::_ID41115( "single anim", "end", 10 );
    _ID42237::_ID14413( "whitehouse_rappel_delete_rope" );
    self delete();
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

_ID47435( var_0 )
{
    var_0 endon( "death" );

    if ( !_ID42237::_ID14385( "player_looking_at_flareguy" ) )
        return 0;

    var_0 thread _ID42407::_ID27081( "scn_dcwhite_npc_flare_start", "J_Wrist_RI" );
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    var_1 setmodel( "mil_emergency_flare" );
    var_1 linkto( var_0, "tag_weapon_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_1 thread _ID53069( var_0 );
    var_0 thread _ID53069( var_0 );
    _ID42237::_ID14413( "flare_guy_drop_flares" );
    var_0 notify( "stop_flare_fx" );
    var_1 notify( "stop_flare_fx" );
    var_1 unlink();
    var_1 delete();
    var_0 detach( "mil_emergency_flare", "tag_inhand" );
}

_ID53069( var_0 )
{
    var_0 endon( "death" );
    playfxontag( _ID42237::_ID16299( "green_flare_ignite" ), self, "tag_fire_fx" );
    level endon( "whitehouse_hammerdown" );
    self endon( "stop_flare_fx" );

    for (;;)
    {
        wait 0.1;
        playfxontag( _ID42237::_ID16299( "green_flare" ), self, "tag_fire_fx" );
    }
}

_ID50784()
{
    self endon( "remove_flare" );
    var_0 = level.player getweaponslistprimaries();

    if ( var_0.size > 0 )
    {
        self._ID25540 = var_0[0];
        var_1 = level.player getcurrentweapon();

        if ( weaponinventorytype( var_1 ) == "altmode" )
        {
            var_2 = level.player getweaponslistall();

            if ( var_2.size > 1 && var_2[0] == var_0[0] && var_2[1] == var_1 )
                self._ID25540 = var_1;
        }
    }
    else
        self._ID25540 = self getcurrentprimaryweapon();

    level.player allowfire( 0 );
    level.player giveweapon( "flare" );
    level.player switchtoweapon( "flare" );
    level.player disableweaponswitch();
    level.player disableoffhandweapons();
    level.player disableweaponpickup();
    setsaveddvar( "actionSlotsHide", 1 );
    wait 0.5;
    _ID42407::_ID11085( "how_to_pop_flare" );
    level.player allowfire( 1 );
    var_3 = _ID42237::_ID41075( "drop_flare", "weapon_fired" );

    if ( var_3 == "weapon_fired" )
    {
        _ID42237::_ID14402( "player_flare_popped" );
        level thread _ID42407::_ID24584( 7 );
        level.player thread _ID42407::_ID27079( "mus_dc_whitehouse_endrun_ending" );
        thread _ID47238();
        self waittill( "end_firing" );
    }

    self._ID25540 = _ID48713( self._ID25540 );
    level.player switchtoweapon( self._ID25540 );

    if ( var_3 == "drop_flare" )
        self waittill( "weapon_change" );

    level.player takeweapon( "flare" );
    level.player enableweaponswitch();
    level.player enableoffhandweapons();
    level.player enableweaponpickup();
    setsaveddvar( "cg_gunDownAnimDelayTime", 250 );
    setsaveddvar( "actionSlotsHide", 0 );
}
#using_animtree("generic_human");

_ID47238()
{
    self waittill( "flare_lookup" );
    var_0 = 30.0;

    if ( _ID42237::_ID14385( "whitehouse_flare_lookup" ) && abs( self getplayerangles()[0] ) < var_0 )
    {
        self _meth_84c7( "h2_dcwhitehouse_flare_add" );
        var_1 = gettime() + getanimlength( %h2_dcwhitehouse_flare_add ) * 1000;

        while ( gettime() < var_1 && abs( self getplayerangles()[0] ) < var_0 )
            waittillframeend;

        self _meth_84c7( 0 );
    }
}

_ID52508()
{
    return _ID42237::_ID14385( "player_flare_popped" ) || _ID42237::_ID14385( "remove_flare_hint" );
}

_ID48713( var_0 )
{
    var_1 = self getweaponslistprimaries()[0];

    if ( !isdefined( var_0 ) )
        return var_1;

    if ( !self hasweapon( var_0 ) )
        return var_1;

    return var_0;
}

_ID53767()
{
    wait 0.4;
    self playsound( "scn_windowed_door_kick" );

    foreach ( var_1 in self._ID26282 )
        var_1 connectpaths();

    self rotateto( self.angles + ( 0, 90, 0 ), 0.5, 0.1, 0 );
    self waittill( "rotatedone" );
    self rotateto( self.angles + ( 0, -10, 0 ), 0.3, 0, 0.3 );
    self waittill( "rotatedone" );
    self rotateto( self.angles + ( 0, 5, 0 ), 0.3, 0.15, 0.15 );
}

_ID52261( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    var_1 = 0;

    for ( var_2 = 0; !var_1; var_1 = var_2 > var_0 )
    {
        self waittill( "damage",  var_3, var_4  );

        if ( var_4 == level.player )
            var_2 += var_3;
    }

    return var_2;
}

_ID48052( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    var_1 = 0;

    for ( var_2 = 0; !var_1; var_1 = var_2 > var_0 )
    {
        self waittill( "damage",  var_3, var_4  );

        if ( isdefined( var_4.team ) && var_4.team == "allies" )
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
        var_2 = vectornormalize( var_0.origin - self.origin );
        var_3 = vectordot( var_1, var_2 );

        if ( var_3 > 0.9999 )
            return;

        wait 0.05;
    }
}

_ID47087( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3["allies"] = "axis";
    var_3["axis"] = "allies";
    self endon( "death" );

    for (;;)
    {
        wait(randomfloatrange( var_0, var_1 ));

        if ( isdefined( var_2 ) && self cansee( level.player ) )
            continue;

        var_4 = getaiarray( var_3[self.team] );
        var_4 = sortbydistance( var_4, self.origin );
        var_5 = var_4[0];

        if ( isdefined( var_5 ) )
        {
            self kill( var_5 geteye(), var_5 );
            continue;
        }

        self kill( self geteye() );
    }
}

_ID47565()
{
    var_0 = getentarray( "lamp_coll", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 notsolid();

    var_4 = getentarray( "chandelier", "targetname" );
    _ID42237::_ID3350( var_4, ::_ID48145 );
}

_ID48145()
{
    self._ID49365 = 0;

    if ( isdefined( self.script_noteworthy ) )
    {
        self._ID22343 = getentarray( "chandelier_light_" + self.script_noteworthy, "targetname" );

        foreach ( var_1 in self._ID22343 )
            var_1._ID45911 = var_1 getlightintensity();

        thread _ID49448();
    }

    thread _ID53842();
}

_ID53842()
{
    self setcandamage( 1 );
    self setcanradiusdamage( 1 );
    self._ID3189 = "chandelier";
    _ID42407::_ID3428();
    var_0 = randomfloatrange( 0.5, 1 );
    var_1 = _ID42407::_ID16120( "idle" );
    self _meth_83d4( var_1, var_0 );
    wait(randomfloat( 3 ));
    thread _ID42259::_ID3111( self, "idle" );

    for (;;)
    {
        self waittill( "damage",  var_2, var_3, var_4, var_5, var_6  );

        if ( !self._ID49365 && _ID42231::_ID16207( var_6 ) != "splash" )
            continue;

        if ( isdefined( self._ID22343 ) )
            thread _ID53890();

        if ( isdefined( self._ID31388 ) )
        {
            thread _ID53384();
            return;
            continue;
        }

        thread _ID53936( var_0 );
    }
}

_ID53936( var_0 )
{
    self._ID49365 = 1;
    self notify( "chandelier_swing" );
    self stopanimscripted();
    waittillframeend;
    var_1 = _ID42407::_ID16120( "swing" );
    self _meth_83d4( var_1, var_0 );
    thread _ID42407::_ID27080( "emt_chandelier_swing", "TAG_LIGHT" );
    _ID42259::_ID3111( self, "swing" );
    thread _ID42259::_ID3111( self, "idle" );
    self._ID52088 = 0;
}

_ID53890()
{
    self endon( "chandelier_fall" );
    self endon( "chandelier_swing" );
    wait 0.5;

    for ( var_0 = 0; var_0 < 14; var_0++ )
    {
        _ID47268( 0 );
        self setmodel( "h2_light_chandelier_vintage_04" );
        wait(randomfloatrange( 0.05, 0.2 ));
        _ID47268( _ID42407::_ID30229( randomfloatrange( 0.4, 0.8 ), 1, 0 ) );
        self setmodel( "h2_light_chandelier_vintage_04_on" );
        wait(randomfloatrange( 0.15, 0.3 ));
    }

    _ID47268( 1 );
}

_ID47268( var_0 )
{
    foreach ( var_2 in self._ID22343 )
        var_2 setlightintensity( _ID42237::_ID47530( var_0, var_2._ID45911 ) );
}

_ID53384()
{
    _ID42234::_ID13611( "chandelier" );
    thread chandelier_fall_flicker();
    thread _ID42407::_ID27080( "emt_chandelier_fall", "TAG_LIGHT" );
    _ID42259::_ID3111( self, "swing_fall" );
    thread _ID42259::_ID3111( self, "idle_fall" );
    var_0 = getentarray( "lamp_coll", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 solid();
}

chandelier_fall_flicker()
{
    wait(randomfloatrange( 1, 4 ));
    _ID47268( 0.4 );
    self setmodel( "h2_light_chandelier_vintage_04_on" );
    wait 0.05;
    _ID47268( 0 );
    self setmodel( "h2_light_chandelier_vintage_04" );
    self notify( "chandelier_fall" );
    playfx( level._ID1426["wire_spark"], self.origin );
}

_ID49448()
{
    self endon( "chandelier_fall" );

    foreach ( var_1 in self._ID22343 )
    {
        var_1.node = spawn( "script_origin", var_1.origin );
        var_1.node linkto( self, "tag_light" );
    }

    for (;;)
    {
        self waittill( "chandelier_swing" );

        while ( self._ID49365 )
        {
            foreach ( var_1 in self._ID22343 )
                var_1 moveto( var_1.node.origin, 0.1 );

            wait 0.1;
        }
    }
}

_ID45116( var_0 )
{
    var_1 = getentarray( var_0, "script_noteworthy" );
    var_2 = undefined;

    foreach ( var_2 in var_1 )
    {
        if ( var_2.targetname == "chandelier" )
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
    var_1 = spawn( "script_origin", level.player.origin + ( 0, 0, 32 ) );
    var_1 makeusable();
    var_1 sethintstring( var_0 );
    var_1 linkto( level.player );
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

_ID50463()
{
    self useanimtree( #animtree );
    self setcandamage( 1 );
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
    thread _ID42422::_ID22340( _ID53829::_ID22335, _ID53829::_ID22333 );

    if ( isdefined( self.script_noteworthy ) )
        _ID42234::_ID13611( "lightning_strike" );
}

_ID45184()
{
    var_0 = getentarray( "team", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_ID48925, var_0.size );
    _ID42407::_ID1805( "team_trigger" );
    _ID42237::_ID14413( "team_initialized" );
}

_ID48925( var_0 )
{
    _ID51011( self );

    if ( isdefined( self.script_noteworthy ) )
    {
        if ( self.script_noteworthy == "foley" )
        {
            thread _ID42407::_ID22746();
            _ID42407::_ID22825();
            level._ID388 = self;
        }

        if ( self.script_noteworthy == "dunn" )
        {
            thread _ID42407::_ID22746();
            _ID42407::_ID22825();
            level._ID44224 = self;
        }
    }

    if ( !isdefined( level.intro_guys ) )
        level.intro_guys = [];

    level.intro_guys[level.intro_guys.size] = self;

    if ( level.team.size == var_0 )
        _ID42237::_ID14402( "team_initialized" );
}

_ID51011( var_0 )
{
    var_1 = [];

    if ( !isarray( var_0 ) )
        var_1[var_1.size] = var_0;
    else
        var_1 = var_0;

    _ID42237::_ID3350( var_1, ::_ID46343 );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3.script_noteworthy ) )
        {
            var_3._ID3189 = var_3.script_noteworthy;
            level.team[var_3.script_noteworthy] = var_3;
            continue;
        }

        level.team[level.team.size] = var_3;
    }
}

_ID46343()
{
    self notify( "remove_team" );
    self endon( "remove_team" );
    self waittill( "death" );
    level.team = _ID42407::_ID3329( level.team );
}

_ID46537()
{
    self._ID8274 = ::_ID43049;
}

_ID43049( var_0 )
{
    self endon( "stop_going_to_node" );
    self endon( "stop_color_move" );
    self endon( "death" );
    self waittill( "goal" );

    if ( isdefined( var_0._ID31195 ) )
        _ID42237::_ID14402( var_0._ID31195 );

    var_0 notify( "trigger",  self  );
}

_ID44431( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = level._ID35897;

    var_1 = _ID42237::_ID16640( "start_point", "targetname" );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( var_4.script_noteworthy != var_0 )
            continue;

        var_2[var_2.size] = var_4;
    }

    _ID42407::_ID37442( var_2 );
}

_ID51715( var_0, var_1 )
{
    var_2 = 0;

    foreach ( var_4 in var_0 )
    {
        var_4 thread _ID49717( var_1[var_2] );
        var_2++;
    }
}

_ID49717( var_0 )
{
    self forceteleport( var_0.origin, var_0.angles );
    self setgoalpos( self.origin );
}

_ID47348()
{
    self endon( "death" );
    self._ID4867 = 0.1;
    self.health = 200;
    _ID42237::_ID14413( "whitehouse_path_office" );
    self kill( level.player.origin );
}

_ID13799( var_0 )
{
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showStance", 0 );
    var_1 = newhudelem();
    var_1.x = 0;
    var_1.y = 0;
    var_1 setshader( "black", 640, 480 );
    var_1.alignx = "left";
    var_1.aligny = "top";
    var_1.horzalign = "fullscreen";
    var_1.vertalign = "fullscreen";
    var_1.alpha = 0;
    var_1 fadeovertime( var_0 );
    var_1.alpha = 1;
    wait(var_0);
    level.player freezecontrols( 1 );
    _ID42407::_ID12569( 0 );
}

_ID48143()
{
    wait(randomfloatrange( 0.05, 0.5 ));
    var_0 = self getlightintensity();

    for (;;)
    {
        self setlightintensity( var_0 * randomfloatrange( 0.8, 1.1 ) );
        wait 0.05;
    }
}

_ID43010()
{
    self._ID3189 = self.model;
    _ID42407::_ID3428();
    var_0 = randomfloatrange( 0.8, 1.5 );
    var_1 = _ID42407::_ID16120( "idle" )[0];
    self _meth_83d4( var_1, var_0 );
    thread _ID42259::_ID3044( self, "idle" );
}

_ID50162()
{
    for (;;)
    {
        self addpitch( 24 );
        wait 0.05;
    }
}
#using_animtree("mg42");

player_usable_turret_init()
{
    self _meth_857f( 1 );
    self setdefaultdroppitch( 0 );
    self useanimtree( #animtree );
    self setanim( %h2_dcwhitehouse_turret_m249saw_wait );
    thread player_usable_turret_think();
}

player_usable_turret_think()
{
    for (;;)
    {
        self waittill( "turretownerchange",  var_0  );

        if ( var_0 )
        {
            player_usable_turret_use();
            self _meth_841a( 1 );
        }
        else
        {
            self useanimtree( #animtree );
            self clearanim( %h2_dcwhitehouse_turret_m249saw_wait, 0.5 );
        }

        self waittill( "turretownerchange",  var_0  );

        if ( var_0 && isalive( level.player ) )
        {
            player_usable_turret_drop();
            self _meth_841a( 0 );
            continue;
        }

        self useanimtree( #animtree );
        self setanim( %h2_dcwhitehouse_turret_m249saw_out );
        var_1 = getanimlength( %h2_dcwhitehouse_turret_m249saw_out );
        _ID42237::_ID10192( var_1, ::clearanim, %h2_dcwhitehouse_turret_m249saw_out, 0.0 );
        _ID42407::_ID1985( _ID42407::_ID1687, var_1 );
        _ID42407::_ID1855( ::setanim, %h2_dcwhitehouse_turret_m249saw_wait );
        _ID42407::_ID1886( "turretownerchange" );
        thread _ID42407::_ID11231();
    }
}

player_usable_turret_use()
{
    level.player freezecontrols( 1 );
    level.player disableweapons( 1 );
    level.player setstance( "crouch" );
    level.player.pre_turret_fov = getdvarfloat( "cg_fov" );
    level.player lerpfov( getstarttime(), getanimlength( %h2_dcwhitehouse_turret_m249saw_in ) );
    var_0 = angleclamp180( self.angles[1] - level.player getplayerangles()[1] );
    var_1 = distance2d( self.origin, level.player.origin );
    var_2 = abs( var_0 ) / 120.0;
    var_3 = var_1 / 150.0;
    var_4 = _ID42407::_ID22382( max( var_2, var_3 ), 0.1, 0.5 );
    self useanimtree( #animtree );
    _ID42237::_ID10192( var_4, ::clearanim, %h2_dcwhitehouse_turret_m249saw_wait, 0.0 );
    _ID42237::_ID10192( var_4, ::setanim, %h2_dcwhitehouse_turret_m249saw_in );
    _ID42407::_ID49392( "player_turret_in", undefined, 0, var_4, 0, 0, undefined, undefined, undefined, undefined, undefined, 1, 1 );
    var_5 = self gettagorigin( "tag_player" );
    var_6 = anglestoaxis( self gettagangles( "tag_player" ) );
    var_7 = self.origin - var_5;
    level.player.turret_anim_node_offset = ( vectordot( var_7, var_6["forward"] ), vectordot( var_7, var_6["right"] ), vectordot( var_7, var_6["up"] ) );
    level.player._ID49929 hide();
    level.player _meth_84da( 0 );
    self _meth_8580();
    self clearanim( %h2_dcwhitehouse_turret_m249saw_in, 0.0 );
    thread player_usable_turret_fire();
}

player_usable_turret_fire()
{
    self endon( "turretownerchange" );
    var_0 = undefined;

    for (;;)
    {
        var_1 = level.player attackbuttonpressed();

        if ( !isdefined( var_0 ) || var_0 != var_1 )
        {
            var_0 = var_1;

            if ( var_0 )
            {
                self clearanim( %h2_dcwhitehouse_turret_m249saw_idle, 0.0 );
                self setanim( %h2_dcwhitehouse_turret_m249saw_fire );
            }
            else
            {
                self clearanim( %h2_dcwhitehouse_turret_m249saw_fire, 0.0 );
                self setanim( %h2_dcwhitehouse_turret_m249saw_idle );
            }
        }

        waittillframeend;
    }
}

player_usable_turret_drop()
{
    self _meth_857d( 75 );
    self _meth_8581();
    level.player _meth_84db();
    level.player._ID49929 show();
    var_0 = getanimlength( %h2_dcwhitehouse_turret_m249saw_out );
    level.player lerpfov( level.player.pre_turret_fov, var_0 );
    self clearanim( %h2_dcwhitehouse_turret_m249saw_idle, 0.0 );
    self clearanim( %h2_dcwhitehouse_turret_m249saw_fire, 0.0 );
    self setanim( %h2_dcwhitehouse_turret_m249saw_out );
    var_1 = self gettagorigin( "tag_player" );
    var_2 = self gettagangles( "tag_player" );
    var_3 = anglestoaxis( var_2 );
    var_4 = var_1;
    var_4 += level.player.turret_anim_node_offset[0] * var_3["forward"];
    var_4 += level.player.turret_anim_node_offset[1] * var_3["right"];
    var_4 += level.player.turret_anim_node_offset[2] * var_3["up"];
    var_5 = spawn( "script_origin", var_4 );
    var_5.angles = var_2;
    var_5 thread _ID42407::_ID49392( "player_turret_out", undefined, 0, 0.0, 1, 0 );
    wait 0.05;
    var_6 = _func_315( self.origin, self.angles, level.player._ID49929 _ID42407::_ID16120( "player_turret_out" ) );
    var_7 = playerphysicstrace( var_6 + ( 0, 0, 40 ), var_6 + ( 0, 0, -40 ) );
    var_8 = spawn( "script_origin", self.origin + var_7 - var_6 );
    var_8.angles = self.angles;
    level.player._ID49929 thread _ID42259::_ID46811( undefined, var_5, var_8, 0.9 * ( var_0 - 0.05 ) );
    wait(var_0 - 0.05);
    self clearanim( %h2_dcwhitehouse_turret_m249saw_out, 0.0 );
    self setanim( %h2_dcwhitehouse_turret_m249saw_wait );
    self _meth_857e();
    var_5 delete();
    var_8 delete();
}

calm_down_courtyard_heroes()
{
    var_0 = [];
    var_0[0] = level._ID388;
    var_0[1] = level._ID44224;

    foreach ( var_2 in var_0 )
    {
        var_2._ID51367 = var_2.threatupdateinterval;
        var_2.threatupdateinterval = 2000;
    }

    _ID42237::_ID14413( "whitehouse_entrance_init" );

    foreach ( var_2 in var_0 )
        var_2.threatupdateinterval = var_2._ID51367;
}

intro_scripted_anim( var_0 )
{
    var_0 _ID42259::_ID3111( self, "intro" );

    if ( self == level._ID44224 )
    {
        if ( !level.skip_intro_goal )
        {
            var_0 thread _ID42259::_ID3044( self, "intro_loop", "stop_loop" );

            while ( !level.skip_intro_goal )
                waittillframeend;

            var_0 notify( "stop_loop" );
        }

        var_0 _ID42259::_ID3111( self, "intro_out" );
    }
    else if ( !level.skip_intro_goal )
        self setgoalpos( self.origin );
}

metal_pan_scripted_anim( var_0 )
{
    _ID42407::_ID3428( "pan" );
    var_1 = randomint( 3 );
    _ID42407::_ID10226( var_1, _ID42259::_ID3044, self, var_0 );
    self setcandamage( 1 );
    self waittill( "damage",  var_2, var_3, var_4  );
    _ID42407::_ID3136();
    waittillframeend;
    self physicslaunchclient( self.origin, var_4 * var_2 );
}

check_trigger()
{
    level.skip_intro_goal = 0;
    var_0 = getent( "post_intro_color_trigger", "targetname" );
    var_0 waittill( "trigger" );
    level.skip_intro_goal = 1;
}

whitehouse_fx_volumes()
{
    level _ID42237::_ID41068( "createfx_common_done", "start_is_set" );

    if ( isdefined( level._ID9228 ) && level._ID9228 )
        return;

    if ( isdefined( level._ID35897 ) && level._ID35897 == "no_game" )
        return;

    var_0 = [ "tunnel", "outside_tunnels", "oval_office", "west_wing1", "west_wing2", "whitehouse_kitchen", "whitehouse_foyer", "whitehouse_top_floor", "whitehouse_penthouse", "ellipse" ];

    foreach ( var_2 in var_0 )
    {
        _ID42237::_ID14400( var_2 );
        _ID42407::_ID53651( var_2, var_2 );
        _ID42407::_ID52583( var_2, getentarray( var_2, "targetname" ) );
    }

    switch ( level._ID35897 )
    {
        case "tunnels":
        case "default":
            _ID42237::_ID14402( "tunnel" );
            break;
        case "oval_office":
            _ID42237::_ID14402( "oval_office" );
            break;
        case "flare":
            _ID42237::_ID14402( "whitehouse_foyer" );
            break;
        default:
            break;
    }
}

h2_marshall_dialogue_foley_ignore_damage()
{
    _ID42237::_ID14413( "whitehouse_marshall_dialogue" );
    level._ID388.ignoreall = 1;
    _ID42237::_ID14413( "whitehouse_moveout" );
    wait 6;
    level._ID388.ignoreall = 0;
}

h2_wh_static_model_groups()
{
    switch ( level._ID35897 )
    {
        case "tunnels":
        case "default":
            _func_31c( 1 );
            _func_31c( 2 );
            _func_31c( 4 );
            _func_31c( 5 );
            _func_31c( 6 );
            _func_31c( 7 );
            break;
        case "oval_office":
            _func_31c( 1 );
            _func_31c( 4 );
            _func_31c( 5 );
            _func_31c( 6 );
            _func_31c( 7 );
            break;
        case "flare":
            _func_31c( 3 );
            break;
        default:
            break;
    }

    thread h2_wh_static_model_group_thread( 1, "west_wing_windows" );
    thread h2_wh_static_model_group_thread( 2, "smodelgroup_2" );
    thread h2_wh_static_model_group_thread( 3, "smodelgroup_3" );
    thread h2_wh_static_model_group_thread( 4, "smodelgroup_4" );
    thread h2_wh_static_model_group_thread( 5, "smodelgroup_5" );
    thread h2_wh_static_model_group_thread( 6, "smodelgroup_6" );
    thread h2_wh_static_model_group_thread( 7, "smodelgroup_7" );
}

h2_wh_static_model_group_thread( var_0, var_1 )
{
    for (;;)
    {
        _ID42237::_ID14413( var_1 );
        _func_31b( var_0 );
        _ID42237::_ID14426( var_1 );
        _func_31c( var_0 );
    }
}

h2_wh_animated_lantern()
{
    self._ID3189 = "lantern";
    _ID42407::_ID3428();
    wait(randomfloatrange( 0, 3 ));
    _ID42259::_ID3092( [ self ], "idle", randomfloatrange( 0.8, 1.2 ) );
    thread _ID42259::_ID3044( self, "idle", "kill_anim" );
}

h2_wh_flickering_lantern( var_0 )
{
    h2_wh_animated_lantern();
    var_1 = _ID42237::_ID16182( self.origin, var_0, 100 );
    playfxontag( level._ID1426["lamp_ceiling_dust"], self, "tag_light" );

    for (;;)
    {
        h2_wh_flickering_lantern_on( var_1 );
        wait(randomfloatrange( 0.5, 6 ));
        h2_wh_flickering_lantern_off( var_1 );
        wait(randomfloatrange( 0.05, 0.2 ));

        if ( !randomintrange( 0, 4 ) )
        {
            thread h2_wh_flickering_lantern_on( var_1 );
            wait(randomfloatrange( 0.05, 0.2 ));
            thread h2_wh_flickering_lantern_off( var_1 );
            wait(randomfloatrange( 0.05, 0.2 ));
        }
    }
}

h2_wh_flickering_lantern_on( var_0 )
{
    playfxontag( level._ID1426["lamp_ceiling_glow"], self, "tag_light" );

    if ( isdefined( var_0 ) )
        var_0 setlightintensity( 150 );
}

h2_wh_flickering_lantern_off( var_0 )
{
    killfxontag( level._ID1426["lamp_ceiling_glow"], self, "tag_light" );

    if ( isdefined( var_0 ) )
        var_0 setlightintensity( 0 );
}

delete_weapon_in_volume()
{
    var_0 = getentarray( "delete_weapons_volume", "targetname" );

    for (;;)
    {
        var_1 = getweaponarray();

        foreach ( var_3 in var_1 )
        {
            foreach ( var_5 in var_0 )
            {
                if ( isdefined( var_3 ) && !_func_2a5( var_3 ) && var_3 istouching( var_5 ) )
                {
                    var_3 delete();
                    _ID42237::_ID3321( var_1, var_3 );
                }
            }
        }

        waittillframeend;
    }
}
