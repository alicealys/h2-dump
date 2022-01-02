// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID45528( var_0 )
{
    var_0["left"]._ID8151 = var_0["left"].origin;
    var_0["right"]._ID8151 = var_0["right"].origin;
    var_1 = ( -38, 0, 0 );
    var_0["left"]._ID50301 = var_0["left"].origin - var_1;
    var_0["right"]._ID50301 = var_0["right"].origin + var_1;
}

_ID45434( var_0, var_1, var_2 )
{
    var_1 playsound( "elev_door_close" );
    var_0["left"] disconnectpaths();
    var_0["right"] disconnectpaths();

    if ( !isdefined( var_2 ) )
        var_2 = 14;

    var_3 = var_0["left"]._ID8151;
    var_4 = abs( distance( var_0["left"]._ID50301, var_3 ) );
    var_5 = var_4 / var_2;
    var_0["left"] moveto( var_3, var_5, var_5 * 0.1, var_5 * 0.25 );
    var_0["right"] moveto( var_3, var_5, var_5 * 0.1, var_5 * 0.25 );
    var_0["left"] waittill( "movedone" );
}

_ID44793( var_0, var_1 )
{
    var_1 playsound( "elev_door_open" );
    var_0["left"] connectpaths();
    var_0["right"] connectpaths();
    var_2 = 14;
    var_3 = var_0["left"]._ID8151;
    var_4 = abs( distance( var_0["left"]._ID50301, var_3 ) );
    var_5 = var_4 / var_2 * 0.5;
    var_0["left"] moveto( var_0["left"]._ID50301, var_5, var_5 * 0.1, var_5 * 0.25 );
    var_0["right"] moveto( var_0["right"]._ID50301, var_5, var_5 * 0.1, var_5 * 0.25 );
    var_0["left"] waittill( "movedone" );
}

_ID52002()
{
    _ID42237::_ID14400( "player_DMS_disable_auto_sprint" );
    var_0 = 0.75;
    var_1 = 250;
    var_2 = 750;
    level.player._ID45374 = 0;
    setdynamicdvar( "debug_playerDMS", 0 );

    for (;;)
    {
        var_3 = _ID42237::_ID37527( isdefined( level.player.baseline_speed_scale_max ), level.player.baseline_speed_scale_max, 1.1 );
        var_4 = min( level.player._ID45990 * level.player._ID48238, var_3 );
        var_5 = level.player._ID48238 > 1.65 && !_ID42237::_ID14385( "player_DMS_disable_auto_sprint" ) || _ID42237::_ID14385( "player_DMS_allow_sprint" );
        level.player _meth_830f( var_5 );

        if ( var_4 < var_0 )
        {
            if ( var_5 && level.player issprinting() )
            {
                var_4 = var_0;
                level.player._ID45374 = gettime();
            }
            else
            {
                var_6 = gettime() - level.player._ID45374;

                if ( var_6 < var_1 + var_2 )
                {
                    if ( var_6 < var_1 )
                        var_4 = var_0;
                    else
                        var_4 = _ID42407::_ID22382( ( var_6 - var_1 ) / var_2, var_0, var_4 );
                }
            }
        }

        if ( !isdefined( level.player._ID54573 ) || var_4 != level.player._ID54573 )
        {
            level.player setmovespeedscale( var_4 );
            level.player._ID54573 = var_4;
        }

        waittillframeend;
    }
}

_ID53147( var_0, var_1 )
{
    var_2 = self;

    if ( !isplayernumber( var_2 ) )
        var_2 = level.player;

    var_2 notify( "blend_movespeedscale_custom" );
    var_2 endon( "blend_movespeedscale_custom" );

    if ( !isdefined( var_2._ID45990 ) )
        var_2._ID45990 = 1.0;

    var_3 = var_0 * 0.01;
    var_4 = var_2._ID45990;

    if ( isdefined( var_1 ) )
    {
        var_5 = var_3 - var_4;
        var_6 = 0.05;
        var_7 = var_1 / var_6;
        var_8 = var_5 / var_7;

        while ( abs( var_3 - var_4 ) > abs( var_8 * 1.1 ) )
        {
            var_4 += var_8;
            var_2._ID45990 = var_4;
            wait(var_6);
        }
    }

    var_2._ID45990 = var_3;
}

_ID53994()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    level endon( "player_enter_ambulance" );
    _ID42237::_ID14388( "player_DMS_allow_sprint" );
    _ID42237::_ID14402( "player_dynamic_move_speed" );
    var_0 = 1;
    var_1 = undefined;

    foreach ( var_3 in level.team )
        var_3._ID46830 = spawnstruct();

    while ( _ID42237::_ID14385( "player_dynamic_move_speed" ) )
    {
        var_5 = _ID42237::_ID16182( level.player.origin, level.team );
        var_6 = 0;
        var_7 = ( level.player.origin[0], level.player.origin[1], 0 );
        var_8 = ( var_5.origin[0], var_5.origin[1], 0 );

        if ( distancesquared( var_7, var_8 ) < squared( 200 ) )
        {
            var_6 = var_5 _ID43285();
            var_5._ID46830.origin = var_5 _ID45621();
            var_1 = var_5._ID46830;
        }
        else
        {
            foreach ( var_3 in level.team )
            {
                var_6 = var_3 _ID43285();

                if ( var_6 )
                    break;
            }

            var_11 = [];

            foreach ( var_3 in level.team )
            {
                var_3._ID46830.origin = var_3 _ID45621();
                var_11[var_11.size] = var_3._ID46830;
            }

            var_1 = _ID42237::_ID16182( level.player.origin, var_11 );
        }

        if ( distancesquared( level.player.origin, var_1.origin ) > squared( 100 ) && var_6 )
        {
            if ( var_0 > 0.55 )
                var_0 -= 0.015;
        }
        else if ( distancesquared( level.player.origin, var_1.origin ) < squared( 50 ) || var_6 )
        {
            if ( var_0 < 0.78 )
                var_0 += 0.015;

            if ( var_0 > 0.8 )
                var_0 -= 0.015;
        }
        else if ( distancesquared( level.player.origin, var_1.origin ) > squared( 300 ) )
        {
            if ( var_0 < 1.75 )
                var_0 += 0.02;
        }
        else if ( distancesquared( level.player.origin, var_1.origin ) > squared( 100 ) )
        {
            if ( var_0 < 1.35 )
                var_0 += 0.01;
        }
        else if ( distancesquared( level.player.origin, var_1.origin ) < squared( 85 ) )
        {
            if ( var_0 > 1.0 )
                var_0 -= 0.01;

            if ( var_0 < 1.0 )
                var_0 += 0.01;
        }

        level.player._ID48238 = var_0;
        wait 0.05;
    }
}

_ID45621()
{
    var_0 = level.player.origin;
    var_1 = self.origin + anglestoright( self.angles ) * -500;
    var_2 = self.origin + anglestoright( self.angles ) * 500;
    return pointonsegmentnearesttopoint( var_1, var_2, var_0 );
}

_ID43285()
{
    var_0 = 0;

    if ( isdefined( self._ID21850 ) )
        var_0 = self [[ level._ID12194 ]]( self._ID21850, 50 );
    else if ( isdefined( self._ID21851 ) )
        var_0 = self [[ level._ID12194 ]]( self._ID21851, 50 );
    else if ( _ID42237::_ID14385( "player_set_speed_stairs" ) && !_ID42237::_ID14385( "stairs_go_up" ) )
        var_0 = 1;
    else
    {
        var_1 = anglestoforward( self.angles );

        foreach ( var_3 in level._ID805 )
        {
            var_4 = var_3.origin - self.origin;

            if ( vectordot( var_4, var_1 ) > 50 )
            {
                var_0 = 1;
                break;
            }
        }
    }

    return var_0;
}

_ID48429()
{
    var_0 = getent( "intro_security_sign", "targetname" );
    var_1 = 1;
    var_2 = 1;
    var_3 = 0.5;
    playfx( _ID42237::_ID16299( "sign_fx" ), var_0.origin + ( 0, 120, 5 ) );
    var_0 thread _ID42407::_ID27079( "scn_airport_security_sign_falling" );
    var_0 rotatepitch( -45, var_2, var_2 * 0.5, var_2 * 0.5 );
    playfx( _ID42237::_ID16299( "sign_fx" ), var_0.origin );
    var_0 physicslaunchclient( var_0.origin + ( 0, 5, -25 ), ( 1000, 5000, 0.1 ) );
}

h2_secrutiy_sign_se()
{
    var_0 = getent( "Sign_01", "targetname" );
    var_1 = getent( "Sign_02", "targetname" );
    var_0._ID3189 = "sign";
    var_1._ID3189 = "sign";
    var_0 _ID42259::_ID32556();
    var_1 _ID42259::_ID32556();
    _ID42234::_ID13611( "vfx_add_bullets_2" );
    wait 0.8;
    _ID42234::_ID13611( "vfx_add_bullets_3" );
    wait 0.25;
    _ID42407::_ID1568( var_0.origin, 50, 10, 5 );
    var_0 thread _ID42259::_ID3111( var_0, "security_sign_anim_01" );
    wait 1.8;
    _ID42234::_ID13611( "vfx_add_bullets_1" );
    wait 0.45;
    _ID42407::_ID1568( var_1.origin, 100, 10, 5 );
    var_1 thread _ID42259::_ID3111( var_1, "security_sign_anim_02" );
}

_ID49794()
{
    var_0 = getentarray( "elev_num", "targetname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
        var_1[var_3.script_noteworthy] = var_3;

    var_5 = [];
    var_5["left"] = getent( "intro_elevator_door_left", "targetname" );
    var_5["right"] = getent( "intro_elevator_door_right", "targetname" );
    _ID45528( var_5 );
    var_6 = spawn( "script_origin", var_5["left"]._ID8151 );
    var_7 = spawn( "script_origin", var_5["left"]._ID8151 );
    var_6 playsound( "elev_run_start" );
    thread _ID42237::_ID27077( "scn_airport_elevator_opening_long", level.player.origin + ( 0, 0, 70 ) );
    wait 5.5;
    wait 4.5;
    var_6 playsound( "elevator_pass_floor_beep" );
    wait 6.5;
    var_6 playsound( "elevator_pass_floor_beep" );
    wait 4.5;
    var_6 playsound( "elevator_pass_floor_beep" );
    wait 2;
    level.team["makarov"] thread _ID42407::_ID10805( "airport_mkv_snamibog" );
    wait 2;
    thread _ID42237::_ID27077( "elev_run_end", var_6.origin );
    wait 1;
    var_6 playsound( "elev_bell_ding" );
    wait 0.5;
    _ID44793( var_5, var_6 );
    _ID42237::_ID14402( "elevator_up_done" );
    wait 1;
    var_6 delete();
    var_7 delete();
    _ID42407::_ID10226( 1, ::_ID48186 );
}

_ID51425()
{
    _ID42407::_ID12569( 0 );
    thread _ID47497();
    wait 5;
    wait 5.5;
    wait 2.55;
    _ID42407::_ID12569( 1 );
    setsaveddvar( "ammoCounterHide", "1" );
    level.player takeweapon( "m4_grenadier_airport" );
    level.player takeweapon( "m240" );
    level.player takeweapon( "fraggrenade" );
    level.player takeweapon( "flash_grenade" );
    wait 4.7;

    if ( !isdefined( level._ID43135.tactical_greenberet ) || !level._ID43135.tactical_greenberet )
    {
        level.player giveweapon( "saw_airport" );
        level.player switchtoweapon( "saw_airport" );
    }

    wait 22;
    level.player takeweapon( "saw_airport" );
    level.player enableoffhandweapons();
    _ID42407::_ID12569( 0 );
    setsaveddvar( "ammoCounterHide", "0" );

    if ( !isdefined( level._ID43135.tactical_greenberet ) || !level._ID43135.tactical_greenberet )
    {
        level.player giveweapon( "m4_grenadier_airport" );
        level.player giveweapon( "m240" );
        level.player setoffhandprimaryclass( "fraggrenade" );
        level.player giveweapon( "fraggrenade" );
        level.player setoffhandsecondaryclass( "flash_grenade" );
        level.player giveweapon( "flash_grenade" );
        level.player givemaxammo( "m240" );
        level.player setweaponammoclip( "m240", 100 );
        level.player switchtoweapon( "m240" );
    }

    _ID42407::_ID12569( 1 );
}

_ID47497()
{
    wait 22;
    var_0 = _ID54167::_ID43386( "airport_intro" );
    var_0 _ID54167::_ID48166();
}

_ID51886( var_0 )
{
    var_1 = var_0[self.targetname];

    foreach ( var_3 in var_1 )
    {
        var_4 = getent( var_3["model"], "targetname" );
        var_4.count = 1;

        if ( var_3["anime"] == "airport_civ_in_line_6_C" )
        {
            var_4.target = "lobby_girl_run_node";
            var_4._ID31299 = 1;
        }
        else
        {
            var_4.target = undefined;
            var_4._ID31299 = undefined;
        }

        var_5 = _ID42407::_ID12076( var_4 );
        var_5._ID51578 = self;
        var_5._ID3183 = var_3["anime"];
        var_5._ID916 = var_3["delay"];
        var_5._ID51802 = var_3["deathanim"];
        var_5._ID9844 = var_3["deathtime"];
        var_5 setmodel( var_3["body"] );

        if ( isdefined( var_3["deleteme"] ) )
            var_5._ID10329 = var_3["deleteme"];

        var_5._ID11572 = 1;
        var_5._ID24866 = 1;
        var_5 thread _ID44613();
    }
}
#using_animtree("generic_human");

_ID49293()
{
    self endon( "death" );
    self.ignoreall = 1;
    self.ignoreme = 1;
    self.team = "neutral";
    _ID42407::_ID17509();
    var_0 = spawnstruct();
    var_0.angles = self.angles;
    var_0.origin = self.origin;
    var_0 _ID42259::_ID3023( self, self._ID70 );
    self._ID11572 = 1;
    self._ID24866 = 1;
    _ID42237::_ID14413( "lobby_scene_pre_animate" );

    if ( self._ID70 == "airport_civ_in_line_13_C" )
    {
        self._ID9813 = %exposed_death_falltoknees;
        wait 0.7;
    }
    else
        self._ID9813 = %exposed_death_twist;

    self.health = 1;
    var_0 thread _ID42259::_ID3020( self, self._ID70 );
    _ID42407::_ID32187( 1 );
    self._ID24924 = 1;
    _ID42237::_ID14413( "lobby_open_fire" );
    wait(randomfloatrange( 0.15, 0.25 ));
    self kill();
}

_ID44613()
{
    level.entities_to_delete_before_massacre[level.entities_to_delete_before_massacre.size] = self;
    thread _ID49875();

    if ( !isdefined( level._ID44424 ) )
        level._ID44424 = 0;

    level._ID44424++;
    var_0 = _ID42237::_ID16638( "intro_elevator_anim_node", "targetname" );
    var_0 thread _ID42259::_ID3020( self, self._ID3183 );
    wait 0.05;
    self stopanimscripted();
    var_0 _ID42259::_ID3023( self, self._ID3183 );
    thread _ID45431();

    if ( self._ID3183 == "h2_airport_intro_policeman1" || self._ID3183 == "h2_airport_intro_policeman2" )
        _ID42407::_ID17509();

    _ID42237::_ID14413( "start_civilians" );
    thread _ID48322();
    self.health = 1000000;

    if ( isdefined( self._ID51802 ) )
    {
        var_0 thread _ID42259::_ID3020( self, self._ID3183 );
        wait(self._ID9844);
        self stopanimscripted();
        _ID42259::_ID3020( self, self._ID51802 );
    }
    else if ( self._ID3183 == "airport_civ_in_line_6_C" )
    {
        var_0 thread _ID42259::_ID3020( self, self._ID3183 );
        var_1 = getanimlength( _ID42407::_ID16303( self._ID3183 ) );
        var_1 -= 0.2;
        wait(var_1);
        var_0 = spawnstruct();
        var_0.origin = self.origin;
        var_0.angles = self.angles + ( 0, 180, 0 );
        var_0 _ID42259::_ID3020( self, "run_death3" );
    }
    else
        var_0 _ID42259::_ID3020( self, self._ID3183 );

    self._ID24924 = 1;
    self._ID34237 = 1;
    self kill();

    if ( isdefined( self._ID10329 ) )
    {
        var_2[0] = self;
        childthread _ID42407::_ID2265( var_2, 60 );
    }
}

_ID49875()
{
    self waittill( "death" );
    level._ID44424--;

    if ( !level._ID44424 )
        _ID42237::_ID14402( "lobby_to_stairs_go" );
}

_ID51813()
{
    self.drone_reaction_delay = randomfloatrange( 0.0, 1.0 );
    _ID54651();

    if ( isdefined( self ) )
        self notify( "move" );

    while ( !_ID42237::_ID14385( "player_set_speed_stairs" ) )
    {
        wait 0.2;

        if ( !isdefined( self ) )
            break;

        if ( distancesquared( self.origin, level.player.origin ) < squared( 2048 ) )
            continue;

        if ( _ID42407::_ID27540( self.origin + ( 0, 0, 48 ) ) )
            continue;

        break;
    }

    if ( isdefined( self ) )
        self delete();
}

_ID54651()
{
    level.entities_to_delete_before_massacre[level.entities_to_delete_before_massacre.size] = self;
    self endon( "death" );
    self.maxhealth = 1;
    self.health = 1;
    self.ignoreexplosionevents = 1;
    self.ignoreme = 1;

    if ( issentient( self ) )
        self.ignorerandombulletdamage = 1;
    else
        _ID42407::_ID12495();

    self.grenadeawareness = 0;
    _ID42407::_ID10973();
    var_0 = self._ID31039;

    if ( !isdefined( var_0 ) )
        var_0 = "civilian_stand_idle";

    _ID42407::_ID32187( 1 );
    _ID42407::_ID10226( randomfloatrange( 0, 3 ), _ID42259::_ID3025, self, var_0 );

    if ( isdefined( self.script_noteworthy ) && ( self.script_noteworthy == "crawler" || self.script_noteworthy == "crawler2" ) )
        _ID53797();
    else
        _ID53462();
}

_ID53462()
{
    if ( isai( self ) )
    {
        thread _ID42407::_ID10229();
        self._ID7._ID11043 = 1;
    }

    _ID42237::_ID14413( "lobby_open_fire" );
    wait 0.5;

    if ( isdefined( self.drone_reaction_delay ) )
        wait(self.drone_reaction_delay);

    self notify( "stop_loop" );
    self stopanimscripted();
}

_ID53797()
{
    if ( self.script_noteworthy == "crawler" )
    {
        self._ID25546 = self setcontents( 0 );
        _ID42407::_ID14741( 180, 5 );
    }
    else if ( self.script_noteworthy == "crawler2" )
        _ID42407::_ID14741( 110, 2, level._ID30895["crawl_death_1"] );

    _ID42237::_ID14413( "lobby_open_fire" );
    wait 0.5;

    if ( isdefined( self.drone_reaction_delay ) )
        wait(self.drone_reaction_delay);

    self notify( "stop_loop" );
    self stopanimscripted();

    if ( self.script_noteworthy == "crawler2" )
        self dodamage( 1, level.player.origin );
    else if ( self.script_noteworthy == "crawler" )
    {
        self dodamage( 1, level.player.origin );
        wait 8;
        self setcontents( self._ID25546 );
        wait 11;
        self setcontents( 0 );
        wait 5;
        self setcontents( self._ID25546 );
    }
}

_ID53548()
{
    _ID42237::_ID14413( "lobby_to_stairs_flow" );
    _ID42237::_ID14426( "lobby_to_stairs_flow" );
    _ID42237::_ID14413( "lobby_to_stairs_flow" );
    wait 11;
    var_0 = getent( "upperdeck_terror", "targetname" );
    var_0 playloopsound( "scn_airport_crowd_stairs_loop" );
    _ID42237::_ID14425( "stairs_top_open_fire", 16.5 );
    var_0 stopsounds();
    var_0 playsound( "scn_airport_crowd_stairs_end" );
}

_ID53703()
{
    self waittill( "spawned" );
    wait 1;
    _ID42237::_ID14388( "lobby_to_stairs_flow" );
    level._ID46133 = undefined;
    wait 8;
    self.count = 1;
    _ID42407::_ID35014();
}

_ID44043( var_0 )
{
    _ID42237::_ID14413( "lobby_to_stairs_flow" );
    wait 0.1;
    thread _ID51442( level._ID46133, var_0 );
}

_ID46133()
{
    self endon( "death" );
    self.interval = 50;
    self.health = 1;

    if ( !isdefined( level._ID46133 ) )
        level._ID46133 = [];

    level._ID46133[level._ID46133.size] = self;
    _ID42237::_ID14402( "lobby_to_stairs_flow" );
    thread _ID51364();
    _ID42407::_ID1985( _ID42407::_ID41116, "reached_path_end" );
    _ID42407::_ID1855( ::delete );
    thread _ID42407::_ID11231();

    while ( !_ID42237::_ID14385( "stairs_top_open_fire" ) )
    {
        wait 0.2;

        if ( distancesquared( self.origin, level.player.origin ) < squared( 2048 ) )
            continue;

        if ( _ID42407::_ID27540( self.origin + ( 0, 0, 48 ) ) )
            continue;

        self delete();
    }

    wait 1;
    self kill();
}

_ID51364()
{
    self endon( "death" );
    self waittill( "goal" );
    wait 0.5;
    _ID42407::_ID32329( "stairs_up", "stairs_up_weights" );
    self waittill( "goal" );
    _ID42407::_ID32329( "civ_run_array" );
}

_ID51442( var_0, var_1 )
{
    var_0 = _ID42407::_ID3328( var_0 );
    var_2 = _ID42407::_ID15572( var_0 );
    var_3 = spawn( "script_origin", var_2 + ( 0, 0, 64 ) );
    var_3 playsound( var_1 );

    for ( var_4 = 0.1; var_0.size; var_0 = _ID42407::_ID3328( var_0 ) )
    {
        var_2 = _ID42407::_ID15572( var_0 );
        var_3 moveto( var_2 + ( 0, 0, 64 ), var_4 );
        wait(var_4);
    }

    var_3 playrumbleonentity();
    wait 0.05;
    var_3 delete();
}

_ID50554()
{
    self endon( "death" );
    self setgoalpos( self.origin );
    self.goalradius = 16;
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.ignoresuppression = 1;
    _ID42407::_ID10973();
    self._ID11002 = 1;
    self._ID7._ID11043 = 1;
    thread _ID42407::_ID10229();
    self._ID24926 = 1;
    _ID42407::_ID12477();
    wait 1.8;

    switch ( self._ID31039 )
    {
        case "airport_security_guard_2":
            self._ID9813 = %airport_security_guard_2_reaction;
            wait 1.75;
            break;
        case "airport_security_guard_4":
            self._ID9813 = %airport_security_guard_4_reaction;
            break;
        case "airport_security_guard_3":
            self._ID9813 = %airport_security_guard_3_reaction;
            wait 1.75;
            break;
    }

    _ID42407::_ID17509();
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_0 _ID42259::_ID3027( self, self._ID31039 );

    if ( self._ID31039 == "airport_security_guard_4" )
    {
        thread _ID46996();
        thread intro_security_cleanup();
    }

    self._ID7._ID24881 = 1;
    self._ID24924 = 1;

    if ( self._ID31039 == "airport_security_guard_2" )
    {
        var_1 = getent( "lobby_security_door", "targetname" );
        var_2 = getent( "lobby_security_door_model", "targetname" );
        var_2 linkto( var_1 );
        wait 0.3;
        _ID42407::_ID1568( var_1.origin, 50, 10, 5 );
        wait 0.9;
        var_1 _ID42407::_ID1582( 60, 0.5, 0.05, 0.35 );
    }

    if ( self._ID31039 == "airport_security_guard_4" )
        _ID42407::_ID14803( self._ID34144, "primary" );

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    self._ID7._ID24881 = 0;
    self._ID24924 = undefined;
    self._ID7._ID11043 = 0;
    self.health = 100000;
    thread _ID52370();
    var_0 _ID42259::_ID3020( self, self._ID31039 );
    self kill();
}

_ID46996()
{
    wait 0.9;
    setsaveddvar( "cg_hudGrenadeIconMaxRangeFrag", 0 );
    level._ID54299.grenadeammo++;
    var_0 = ( 0, 0, -1 );
    var_1 = 1;
    level._ID54299 magicgrenademanual( ( 5902, 2208, 96 ), var_0, var_1 );
}

intro_security_cleanup()
{
    wait 1.5;
    setsaveddvar( "cg_hudGrenadeIconMaxRangeFrag", level.grenadeiconmaxrange );
}

_ID52370()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1  );

        if ( isplayernumber( var_1 ) )
            break;
    }

    self.allowdeath = 1;
    self kill();
}

_ID51207()
{
    self endon( "death" );
    _ID54651();

    if ( !isdefined( level._ID49247 ) )
        level._ID49247 = 0;

    if ( !isdefined( self.script_noteworthy ) || self.script_noteworthy != "crawler2" )
        level._ID49247++;

    thread _ID52147();

    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "new_lobby_people" )
        thread _ID49943();
    else
        thread _ID47920();
}

_ID52147()
{
    self waittill( "death" );
    level._ID49247--;

    if ( level._ID49247 == 0 )
        _ID42237::_ID14402( "lobby_ai_peeps_dead" );
}

_ID49943()
{
    _ID42237::_ID14413( "lobby_to_stairs_go" );
    wait 0.5;

    if ( !isalive( self ) )
        return;

    self endon( "death" );
    self._ID7._ID11043 = 0;
    _ID42407::_ID36519();

    switch ( self._ID70 )
    {
        case "unarmed_cowercrouch_react_B":
            thread _ID42259::_ID3025( self, "unarmed_cowercrouch_idle" );
            break;
        case "airport_civ_cellphone_hide":
            thread _ID42259::_ID3023( self, self._ID70 );
            self._ID9813 = %airport_civ_cellphone_death;
            break;
        case "coup_civilians_interrogated_civilian_v3":
            thread _ID53901();
        default:
            thread _ID42259::_ID3025( self, self._ID70 );
            break;
    }

    _ID42237::_ID14413( "lobby_cleanup" );

    switch ( self._ID70 )
    {
        case "unarmed_cowercrouch_react_B":
            wait 1.5;
            thread _ID42259::_ID3020( self, self._ID70 );
            break;
        case "airport_civ_cellphone_hide":
            wait 0.65;
            _ID42259::_ID3020( self, self._ID70 );
            _ID51627( "killshot" );
            self kill();
            break;
    }

    _ID42237::_ID14413( "lobby_cleanup_spray" );

    switch ( self._ID70 )
    {
        case "cliffhanger_capture_Price_idle":
            wait(randomfloatrange( 0.5, 3.0 ));
            self notify( "stop_loop" );
            self stopanimscripted();
            self.health = 1;
            self.allowdeath = 1;
            thread _ID42259::_ID3020( self, "civ_stand_2_run_l" );
            self._ID9813 = %run_death_facedown;
            var_0 = getanimlength( _ID42407::_ID16122( "civ_stand_2_run_l" ) );
            wait(var_0 - 0.2);
            self stopanimscripted();
            _ID51627( "bodyshot" );
            thread _ID42259::_ID3020( self, "civ_fallon_knee" );
            wait 1.25;
            self._ID24924 = 1;
            _ID51627( "killshot" );
            self kill();
            break;
        case "unarmed_cowercrouch_react_B":
            wait 2.75;
            _ID51627( "killshot" );
            self kill();
            break;
        case "coup_civilians_interrogated_civilian_v3":
            wait 0.25;
            _ID51627( "killshot" );
            self kill();
            break;
    }
}

_ID53901()
{
    if ( getdvarint( "ragdoll_enable" ) )
        self._ID7._ID24881 = 1;

    self waittill( "damage" );

    if ( getdvarint( "ragdoll_enable" ) )
        self startragdoll();
    else
        self kill();
}

_ID47920()
{
    if ( isdefined( self.script_noteworthy ) && ( self.script_noteworthy == "crawler" || self.script_noteworthy == "crawler2" ) )
        return;

    self endon( "death" );
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    _ID42407::_ID32329( "civ_run_array" );
    var_1 = var_0._ID31039 + "_reach";
    var_0 _ID42259::_ID3027( self, var_1 );
    var_0 thread _ID42259::_ID3025( self, var_0._ID31039 );
    _ID42237::_ID14413( "lobby_to_stairs_go" );
    wait 0.5;
    self._ID7._ID11043 = 0;
    _ID42407::_ID36519();
    self.allowdeath = 1;
    _ID42237::_ID14413( "lobby_cleanup" );
    self.ignorerandombulletdamage = 1;
    self.health = 1;

    if ( var_0._ID31039 == "unarmed_cowercrouch_idle" )
    {
        var_0 notify( "stop_loop" );
        _ID42259::_ID3020( self, "unarmed_cowercrouch_react_A" );
        thread _ID42259::_ID3025( self, "unarmed_cowerstand_pointidle" );
        wait 0.4;
    }

    _ID42237::_ID14413( "lobby_cleanup_spray" );

    switch ( var_0._ID31039 )
    {
        case "cliffhanger_capture_Price_idle":
            var_0 notify( "stop_loop" );
            self notify( "stop_loop" );
            self stopanimscripted();
            self.health = 1;
            self.allowdeath = 1;
            thread _ID42259::_ID3020( self, "civ_stand_2_run_l" );
            wait 1;
            self._ID9813 = %run_death_roll;
            self._ID24924 = 1;
            _ID51627( "killshot" );
            self kill();
            break;
        case "exposed_squat_idle_grenade_F":
            wait 0.5;
            var_0 notify( "stop_loop" );
            self notify( "stop_loop" );
            self stopanimscripted();
            self.health = 1;
            self.allowdeath = 1;
            thread _ID42259::_ID3020( self, "crouch_2run_L" );
            wait 1;
            self._ID9813 = %run_death_facedown;
            self._ID24924 = 1;
            _ID51627( "killshot" );
            self kill();
            break;
        case "unarmed_cowercrouch_idle":
            var_0 notify( "stop_loop" );
            self notify( "stop_loop" );
            self stopanimscripted();
            self.health = 1;
            var_0 = _ID42237::_ID16638( var_0.target, "targetname" );
            var_0 _ID42259::_ID3027( self, var_0._ID31039 );
            self.ignorerandombulletdamage = 1;
            var_0 thread _ID42259::_ID3020( self, var_0._ID31039 );
            thread _ID53901();
            wait 1;
            _ID51627( "killshot" );
            self kill();
            break;
        case "coup_civilians_interrogated_civilian_v1":
            var_0 notify( "stop_loop" );
            self notify( "stop_loop" );
            self stopanimscripted();
            self.health = 1;
            self.allowdeath = 1;
            _ID42407::_ID12480();
            var_0 = _ID42237::_ID16638( var_0.target, "targetname" );
            var_0 _ID42259::_ID3027( self, var_0._ID31039 );
            self.ignorerandombulletdamage = 1;
            var_0 thread _ID42259::_ID3020( self, var_0._ID31039 );
            break;
    }
}

_ID49219( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID44489();
    self.combatmode = "cover";
    self._ID24926 = 1;
    thread _ID51250( var_0 );
}

_ID51250( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42237::_ID14413( "lobby_open_fire" );
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = 7.5;

    switch ( self.script_noteworthy )
    {
        case "saw":
            var_2 = 1.25;
            var_3 = 1;
            var_1 = 0.05;
            var_4 += 0.5;
            break;
        case "shotgun":
            var_2 = 0.85;
            var_3 = 0;
            var_1 = 0.5;
            var_4 += 0.1;
            break;
        case "makarov":
            var_2 = 1.05;
            var_3 = 1;
            var_1 = 0.25;
            var_4 += 0.15;
            break;
        case "m4":
            var_2 = 1.45;
            var_3 = 0;
            var_1 = 0.3;
            var_4 += 0.25;
            break;
    }

    self._ID8374 = undefined;
    _ID44356( var_1, "Stop_Shooting" );
}

_ID53888( var_0 )
{
    self._ID8374 = anim._ID3277["casual_killer_makarov"]["default_stand"];
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID51400();

    if ( _ID42237::_ID14385( "player_set_speed_stairs" ) )
        return;

    level endon( "player_set_speed_stairs" );
    _ID42407::_ID12452();
    _ID42407::_ID12480();

    if ( !_ID42237::_ID14385( "lobby_ai_peeps_dead" ) )
    {
        thread _ID44393();
        thread _ID44356( 0.1, "stop_spray_and_pray" );
        _ID42237::_ID14413( "lobby_ai_peeps_dead" );
        self notify( "stop_spray_and_pray" );
    }

    _ID42237::_ID14413( "stairs_go_up" );
    _ID42407::_ID32430( "casual_killer_jog_A" );
}

_ID51478()
{
    _ID42237::_ID14388( "player_dynamic_move_speed" );
    wait 0.05;
    _ID42237::_ID14402( "player_DMS_allow_sprint" );
    _ID42237::_ID14413( "player_set_speed_upperstairs" );
    thread _ID53994();
}

_ID51284( var_0 )
{
    self._ID8374 = anim._ID3277["casual_killer_saw"]["default_stand"];
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42407::_ID12480();
    _ID42407::_ID32388( 1.0 );

    if ( !_ID42237::_ID14385( "lobby_ai_peeps_dead" ) )
    {
        thread _ID44393();
        thread _ID44356( 0.1, "stop_spray_and_pray" );
        _ID42237::_ID14413( "lobby_ai_peeps_dead" );
        self notify( "stop_spray_and_pray" );
    }

    _ID51400();

    if ( _ID42237::_ID14385( "player_set_speed_stairs" ) )
        return;

    _ID42407::_ID32430( "casual_killer_jog_A" );
}

_ID46001( var_0 )
{
    self._ID8374 = anim._ID3277["casual_killer"]["default_stand"];
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42407::_ID12480();
    _ID42237::_ID14413( "lobby_cleanup_spray" );

    if ( !_ID42237::_ID14385( "lobby_ai_peeps_dead" ) )
    {
        thread _ID44393();
        thread _ID44356( 0.1, "stop_spray_and_pray" );
        _ID42237::_ID14413( "lobby_ai_peeps_dead" );
        self notify( "stop_spray_and_pray" );
    }

    _ID51400();

    if ( _ID42237::_ID14385( "player_set_speed_stairs" ) )
        return;

    _ID42407::_ID32430( "casual_killer_jog_A" );
}

_ID54450( var_0 )
{
    self._ID8374 = anim._ID3277["casual_killer_shotgun"]["default_stand"];
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42237::_ID14402( "lobby_cleanup" );
    _ID42237::_ID14402( "lobby_cleanup_spray" );
    _ID42407::_ID12480();
    _ID42237::_ID14413( "lobby_cleanup_spray" );

    if ( !_ID42237::_ID14385( "lobby_ai_peeps_dead" ) )
    {
        thread _ID44393( 0.1, 0.25, 0 );
        _ID42237::_ID14413( "lobby_ai_peeps_dead" );
        self notify( "stop_spray_and_pray" );
    }

    _ID51400();

    if ( _ID42237::_ID14385( "player_set_speed_stairs" ) )
        return;

    _ID42407::_ID32430( "casual_killer_jog_A" );
}

_ID51400()
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42407::_ID13025( "prestairs_nodes" );
    level._ID51938++;

    if ( level._ID51938 == 4 )
    {
        if ( !_ID42237::_ID14385( "player_set_speed_stairs" ) )
            thread _ID42407::_ID14403( "stairs_go_up", 1 );
        else
            _ID42237::_ID14402( "stairs_go_up" );
    }

    if ( _ID42237::_ID14385( "player_set_speed_stairs" ) )
        _ID42407::_ID7892();
}

_ID52145( var_0 )
{
    var_1 = [];
    var_1["makarov"] = ::_ID53888;
    var_1["shotgun"] = ::_ID54450;
    var_1["m4"] = ::_ID46001;
    var_1["saw"] = ::_ID51284;
    self [[ var_1[self.script_noteworthy] ]]( var_0 );
}

_ID43748( var_0 )
{
    self setgoalnode( var_0 );
    self.goalradius = 16;
}

update_climb_stairs( var_0, var_1 )
{
    wait 0.1;
    self _meth_83d4( var_0, var_1 );
}

_ID49232( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42237::_ID14413( "stairs_go_up" );
    self notify( "stop_spray_and_pray" );
    self.ignoreall = 0;
    self.ignoreme = 0;
    self._ID24424 = 1.0;
    self._ID24926 = 1;

    switch ( self.script_noteworthy )
    {
        case "saw":
            wait 1.25;
            self.animationrate = 1.1;
            break;
        case "shotgun":
            wait 1;
            self.animationrate = 1.1;
            break;
        case "m4":
            wait 0.25;
            self.animationrate = 1.1;
            break;
        case "makarov":
            self.animationrate = 1.1;
            wait 0.25;
            break;
    }

    _ID42407::_ID10877();
    _ID47984::_ID46279();
    _ID42407::_ID41232();
    waitframe;
    _ID42407::_ID7892();
    _ID42407::_ID10226( 1, _ID42407::_ID12452 );
    var_1 = getent( "se_climb_stairs", "targetname" );
    thread update_climb_stairs( _ID42407::_ID16120( "climb_stairs" ), self.animationrate );
    var_1 _ID42259::_ID3111( self, "climb_stairs" );
    self setgoalpos( self.origin );
    _ID42407::_ID10226( 0.5, _ID42407::_ID1801, "upperdeck_civ", "target" );
    _ID47984::_ID44498();
    wait 1;
    _ID42237::_ID14402( "stairs_top_open_fire" );
    _ID42237::_ID14402( "team_at_top_of_stairs" );

    if ( !_ID42237::_ID14385( "yuri_ee_playing" ) )
        _ID42237::_ID14388( "player_DMS_disable_auto_sprint" );

    _ID42407::_ID13025( "stairs_at_top" );

    if ( _ID42237::_ID14385( "stairs_upperdeck_civs_dead" ) )
        return;

    if ( self == level._ID54299 )
    {
        var_2 = getglass( "upperdeck_glass_roof_1" );
        _ID42407::_ID1890( _ID42237::_ID24938, 1, ::destroyglass, var_2, ( 0, 0, -1 ) );
        thread _ID42407::_ID11231();
    }

    var_3 = undefined;
    var_4 = undefined;
    var_5 = undefined;
    self stopanimscripted();
    var_0 = getnode( var_0.target, "targetname" );
    self orientmode( "face angle", var_0.angles[1] );

    switch ( self.script_noteworthy )
    {
        case "saw":
        case "shotgun":
            wait 0.25;
            break;
        default:
            wait 0.75;
            break;
    }

    thread _ID44393( var_4, var_3, var_5 );
    _ID42237::_ID14413( "stairs_upperdeck_civs_dead" );
    self notify( "stop_spray_and_pray" );
    _ID47984::_ID53591( "player_set_speed_stairs" );
}

_ID47629( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42407::_ID13027( "stairs_at_top" );
    _ID42407::_ID7892();
    _ID42407::_ID10877();
    _ID47984::_ID44498();

    switch ( self.script_noteworthy )
    {
        case "makarov":
            self._ID24424 = 1;
            _ID52772( var_0 );
            break;
        case "m4":
            wait 1;
            self._ID24424 = 1.45;
            break;
        case "shotgun":
            wait 0.5;
            self._ID24424 = 1.35;
            break;
        case "saw":
            self._ID24424 = 1.34;
            break;
    }

    if ( self.script_noteworthy == "makarov" )
        return;

    _ID42407::_ID14701( var_0, 5000 );
    thread _ID42407::_ID13026( "massacre_ready", 0.15 );
    _ID47984::_ID53591( "massacre_rentacop_stop_dead" );
}

_ID52772( var_0 )
{
    thread _ID42407::_ID14701( var_0, 5000 );
    wait 2.5;
    _ID42407::_ID10912();
    _ID42407::_ID10910();
    _ID42259::_ID3029( self, "casual_killer_walk_wave" );
    wait 0.2;
    _ID42407::_ID12480();

    if ( _ID42237::_ID14385( "massacre_rentacop_stop" ) )
        return;

    _ID42407::_ID32388( 0.9, 2 );
    _ID42237::_ID14413( "upperdeck_mak_spray" );
    _ID42407::_ID10877();
    _ID42407::_ID32388( 1, 0.5 );
    _ID42259::_ID3099( [ self ], "casual_killer_walk_stop", undefined, 0, "makarov" );
    self notify( "_utility::follow_path" );
    self setgoalpos( self.origin );
    self.goalradius = 20;
    self._ID44114++;
    thread _ID44393();
    self notify( "upperdeck_canned_deaths_execute_fire" );
    _ID47984::_ID43210( "straight" );
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    wait 3;
    self notify( "stop_spray_and_pray" );
    self._ID44114--;
    var_0 = _ID42237::_ID16638( "stairs_mak_point", "script_noteworthy" );
    _ID42407::_ID13021( "massacre_ready" );
    _ID42407::_ID1985( _ID42407::_ID41116, "reached_path_end" );
    _ID42407::_ID1890( _ID42407::_ID13026, "massacre_ready", 0.15 );
    thread _ID42407::_ID11231();
    thread _ID43950( var_0 );
    var_0 waittill( "trigger" );

    if ( _ID42237::_ID14385( "massacre_rentacop_stop" ) )
        return;

    _ID42407::_ID10910();
    _ID42407::_ID32388( 1.35 );
    wait 0.2;
    _ID42407::_ID12480();
    _ID42407::_ID10877();
}

_ID43950( var_0 )
{
    _ID42407::_ID14701( var_0 );
    _ID47984::_ID53591( "massacre_rentacop_stop_dead" );
}

_ID47789()
{
    self waittill( "trigger",  var_0  );

    if ( var_0 == level._ID54299 )
        return;

    var_0 _ID42407::_ID12452();
}

_ID43137()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    var_0 = 3;
    var_1 = "upperdeck_flow1";
    self.ignorerandombulletdamage = 1;
    thread _ID49207( var_1, var_0 );
    _ID42237::_ID14413( var_1 );
    wait(var_0);
    wait 1.5;

    if ( !isalive( self ) )
        return;

    self.ignorerandombulletdamage = 0;
    level.team["saw"] clearentitytarget();
    level.team["shotgun"] clearentitytarget();
    var_2 = self.origin + ( 0, 0, 40 );
    var_3 = anglestoforward( self.angles );
    var_2 += var_3 * 20;
    var_4 = spawn( "script_origin", var_2 );
    var_4.health = 100;
    level.team["saw"] setentitytarget( var_4 );
    level.team["shotgun"] setentitytarget( var_4 );
    self waittill( "death" );
    wait 1;

    if ( isdefined( level.team["saw"]._ID51473 ) )
        level.team["saw"] setentitytarget( level.team["saw"]._ID51473 );

    if ( isdefined( level.team["shotgun"]._ID51473 ) )
        level.team["shotgun"] setentitytarget( level.team["shotgun"]._ID51473 );

    var_4 delete();
}

_ID49574()
{
    self.health = 1;
    self.ignoreexplosionevents = 1;
    self.ignoreme = 1;
    self.ignorerandombulletdamage = 1;
    self.grenadeawareness = 0;
    _ID42407::_ID10973();
    self._ID7._ID28253 = "prone";
    self endon( "death" );

    switch ( self.script_noteworthy )
    {
        case "upperdeck_crawlers_1":
            _ID42259::_ID3023( self, "civilian_crawl_1" );
            _ID42407::_ID14741( self.angles[1], 5, level._ID30895["crawl_death_1"], 1 );
            break;
        case "upperdeck_crawlers_wait":
            _ID42259::_ID3023( self, "civilian_crawl_2" );
            _ID42407::_ID14741( self.angles[1], 3, level._ID30895["crawl_death_2"], 1 );
            break;
        case "upperdeck_crawlers2":
            _ID42259::_ID3023( self, "civilian_crawl_2" );
            _ID42407::_ID14741( self.angles[1], 5, level._ID30895["crawl_death_2"], 1 );
            break;
        default:
            _ID42259::_ID3023( self, "dying_crawl" );
            _ID42407::_ID14741( self.angles[1], 5, undefined, 1 );
            break;
    }

    if ( self.script_noteworthy == "upperdeck_crawlers_wait" )
    {
        _ID42407::_ID1985( _ID42407::_ID41104, level.player, 550 );
        level _ID42407::_ID1985( _ID42407::_ID1687, 16 );
        _ID42407::_ID11232();
    }
    else
        wait(randomfloat( 1.5 ));

    self dodamage( 1, level.player.origin );
    self._ID24924 = 1;
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42237::_ID14413( "stairs_upperdeck_civs_dead" );

    if ( isdefined( self._ID31388 ) )
    {
        var_0 = level.team[self._ID31388];

        while ( distance( self.origin, var_0.origin ) > 250 )
            wait 0.1;

        self._ID916 = 1.5;
        var_0 thread _ID51728( self, "down" );
        wait 0.5;
        self.ignorerandombulletdamage = 0;
        wait 1.5;
        magicbullet( var_0.weapon, var_0 gettagorigin( "tag_flash" ), self geteye() );
    }
}

_ID47531()
{
    self endon( "death" );
    _ID47979();
    _ID42237::_ID14413( "stairs_top_open_fire" );

    if ( !_ID42237::_ID14385( "player_set_speed_stairs" ) )
    {
        _ID42237::_ID14425( "player_set_speed_stairs", 5 );
        wait 1.5;
    }

    thread _ID54309();
    _ID42237::_ID14402( "upperdeck_flow1" );
    _ID51005();
}

_ID54309()
{
    wait 6.5;
    _ID42237::_ID14413( "stairs_cop_dead" );
    _ID42237::_ID14402( "stairs_upperdeck_civs_dead" );
}

_ID47782()
{
    self endon( "death" );
    _ID42237::_ID14413( "massacre_rentacop_stop_dead" );
    wait 2.0;
    self.usechokepoints = 0;
    _ID42237::_ID14402( "upperdeck_flow3" );

    if ( !isdefined( level._ID52920 ) )
    {
        level._ID52920 = [];
        level._ID52920[level._ID52920.size] = self;
        wait 0.1;
        thread _ID51442( level._ID52920, "scn_airport_running_screams2" );
    }
    else
        level._ID52920[level._ID52920.size] = self;

    _ID51005();
}

_ID46240( var_0 )
{
    self endon( "death" );
    _ID47979();
    _ID42237::_ID14402( var_0 );
    wait 1;
    _ID51005();
}

_ID47979()
{
    waitframe;
    self.allowdeath = 1;
    self.health = 1;
    self.interval = 0;
    self._ID11002 = 1;
    self.ignoreall = 1;
    _ID42407::_ID10973();
    _ID42407::_ID32329( "civ_run_array" );
    self notify( "killanimscript" );

    if ( issubstr( self.classname, "female" ) )
        self._ID3189 = "female_civ_" + randomintrange( 1, 2 );
    else
        self._ID3189 = "male_civ_" + randomintrange( 1, 2 );

    if ( self._ID31039 == "airport_civ_cellphone_hide" )
        thread _ID42259::_ID3023( self, self._ID31039 );
    else
        thread _ID42259::_ID3025( self, self._ID31039 );
}

_ID51005()
{
    self.health = 1;

    if ( self._ID31039 != "null" )
        wait(randomfloat( 1 ));

    self notify( "stop_loop" );
    self stopanimscripted();

    if ( self._ID31039 == "airport_civ_cellphone_hide" )
        thread _ID42259::_ID3029( self, "crouch_2run_L" );

    var_0 = getnode( "upperdeck_escape_node", "targetname" );

    if ( isdefined( self.target ) )
        var_0 = getnode( self.target, "targetname" );

    _ID42407::_ID14701( var_0 );
    wait(randomfloat( 1.5 ));
    _ID51627( "killshot" );
    self kill();
}

upperdeck_update_enemy_targets()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    level endon( "massacre_elevator_start" );

    foreach ( var_1 in level.team )
    {
        var_1.upperdeck_enemy_targets = [];
        var_1.upperdeck_enemy_target_add_index = 0;
    }

    for (;;)
    {
        foreach ( var_1 in level.team )
        {
            var_4 = undefined;
            var_5 = undefined;

            foreach ( var_7 in var_1.upperdeck_enemy_targets )
            {
                if ( isalive( var_7.enemyentity ) && isdefined( var_7.targetentity ) )
                {
                    if ( !isdefined( var_4 ) || var_7._ID12747 < var_4._ID12747 )
                        var_4 = var_7;
                }
            }

            if ( isdefined( var_4 ) )
                var_5 = var_4.targetentity;

            if ( isdefined( var_5 ) != isdefined( var_1.upperdeck_active_target ) || isdefined( var_5 ) && var_5 != var_1.upperdeck_active_target )
            {
                var_1.upperdeck_active_target = var_5;

                if ( isdefined( var_1.upperdeck_active_target ) )
                {
                    var_1 setentitytarget( var_1.upperdeck_active_target );
                    var_9 = var_4.aimtype;
                }
                else
                {
                    var_1 clearentitytarget();
                    var_9 = "straight";
                }

                var_1 _ID47984::_ID43210( var_9 );
            }

            wait 0.2;
        }
    }
}

_ID44643( var_0 )
{
    if ( isdefined( self.target ) )
    {
        var_1 = getent( self.target, "targetname" );
        var_1 thread _ID44643( var_0 );
    }

    var_2 = undefined;
    _ID42237::_ID14413( var_0 );

    if ( isspawner( self ) )
        var_2 = _ID42407::_ID35014( 1 );
    else
    {
        var_3 = undefined;

        if ( issubstr( self.model, "female" ) )
            var_3 = "civilian_female_suit";
        else
            var_3 = "civilian_male_suit";

        var_4 = getent( var_3, "targetname" );
        var_4.count = 1;
        var_2 = _ID42407::_ID12076( var_4 );
    }

    var_2 _ID54508( self );
    var_2 thread _ID54257();
}

_ID54508( var_0 )
{
    waitframe;
    self.ignoreme = 1;
    self.allowdeath = 1;
    self._ID24924 = 1;
    self._ID24866 = 1;
    self._ID11572 = 1;
    self.script_noteworthy = var_0.script_noteworthy;
    self.radius = var_0.radius;
    self._ID47609 = var_0;
    self.targetname = var_0.targetname + "_drone";
    self._ID3189 = "generic";
    self._ID31438 = var_0._ID31438;
    self._ID31273 = var_0._ID31273;
    self._ID31388 = var_0._ID31388;
    self.health = 1;

    if ( issentient( self ) )
        self.ignorerandombulletdamage = 1;
    else
        _ID42407::_ID12495();

    if ( isdefined( var_0._ID31523 ) )
        self._ID31523 = var_0._ID31523;
    else
        self._ID31523 = 0;

    if ( isdefined( var_0.target ) )
        self.target = var_0.target + "_drone";

    if ( isdefined( var_0._ID916 ) )
        self._ID916 = var_0._ID916;
    else
        self._ID916 = getanimlength( _ID42407::_ID16303( var_0._ID70 ) ) - 0.5;

    if ( isdefined( var_0._ID31195 ) )
    {
        self._ID31195 = var_0._ID31195;
        _ID42237::_ID14400( self._ID31195 );
        _ID42407::_ID1985( _ID42407::_ID41116, "death" );
        _ID42407::_ID1890( _ID42237::_ID14402, self._ID31195 );
        thread _ID42407::_ID11231();
    }
}

_ID54257()
{
    self endon( "death" );
    thread _ID44953();
    thread _ID45431();
    waitframe;

    switch ( self._ID47609._ID70 )
    {
        case "airport_civ_dying_groupB_pull":
            _ID43310();
            break;
        case "airport_civ_dying_groupA_kneel":
            _ID44882();
            break;
        case "airport_civ_cellphone_hide":
            _ID46382();
            break;
        case "airport_civ_pillar_exit":
            _ID50430();
            break;
        case "dying_crawl_back":
            _ID45121();
            break;
        case "bleedout_crawlB":
            _ID45121();
            break;
        case "DC_Burning_bunker_stumble":
            _ID47908();
            break;
        case "unarmed_cowercrouch_react_B":
            _ID49577();
            break;
        case "airport_civ_dying_groupA_lean":
            if ( self._ID47609.targetname == "upperdeck_canned_deaths" )
                _ID51255();

            break;
        case "civilian_leaning_death":
            _ID51562();
            break;
    }
}

_ID43310()
{
    var_0 = getent( self.target, "targetname" );
    self._ID9813 = %airport_civ_dying_groupb_pull_death;
    var_0._ID9813 = %airport_civ_dying_groupb_wounded_death;
    _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    var_0 _ID42407::_ID1841( _ID42407::_ID41116, "death" );
    var_0 _ID42407::_ID1890( _ID42407::_ID1500 );
    thread _ID42407::_ID11231();
    var_0 _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID1841( _ID42407::_ID41116, "death" );
    _ID42407::_ID1890( _ID42407::_ID1500 );
    thread _ID42407::_ID11231();
    _ID51078( var_0 );
    self kill();
}

_ID44882()
{
    var_0 = getent( self.target, "targetname" );
    var_0._ID34237 = 1;
    var_0._ID24924 = 1;
    self._ID9813 = %coverstand_death_right;
    _ID51078( var_0 );
}

_ID46382()
{
    self._ID9813 = %airport_civ_cellphone_death;
    _ID46448( "down" );
}

_ID51255()
{
    self._ID34237 = 1;
    self._ID24924 = 1;
    _ID53968();
}

_ID51562()
{
    self._ID9813 = %civilian_leaning_death_shot;
    self._ID24924 = 1;
    _ID53968();
}

_ID50430()
{
    self._ID9813 = %airport_civ_pillar_exit_death;
    _ID46448();
}

_ID45121()
{
    self._ID9813 = %dying_back_death_v1;
    _ID46448( "down" );
}

_ID47908()
{
    self._ID9813 = %corner_standr_deathb;
    _ID46448();
}

_ID49577()
{
    self._ID9813 = %exposed_death_blowback;
    _ID46448();
}

_ID51078( var_0, var_1 )
{
    thread _ID49561();
    var_0 _ID49561();
    wait 0.05;
    var_2 = upperdeck_canned_deaths_loop_wait_animate();

    if ( var_2.size )
        _ID42237::_ID3350( var_2, ::_ID51728, self, var_1 );

    if ( issentient( self ) )
        self.ignorerandombulletdamage = 0;
    else
        _ID42407::_ID10929();

    var_0 _ID42407::_ID10929();

    if ( isdefined( self._ID31438 ) )
        _ID42407::_ID10226( self._ID31523, _ID42407::_ID27081, self._ID31438 );

    if ( var_0.health > 0 )
    {
        if ( isdefined( var_0._ID31438 ) )
            var_0 _ID42407::_ID10226( var_0._ID31523, _ID42407::_ID27081, var_0._ID31438 );

        self._ID47609 _ID42407::_ID1985( _ID42259::_ID3020, var_0, var_0._ID47609._ID70 );
        var_0 _ID42407::_ID1841( _ID42407::_ID41116, "death" );
        var_0 _ID42407::_ID1890( _ID42407::_ID1500 );
        thread _ID42407::_ID11231();
    }

    if ( self._ID47609._ID70 == "airport_civ_dying_groupA_kneel" )
        _ID42407::_ID10226( 3.25, _ID42407::_ID32265, "airport_civ_dying_groupA_kneel_death" );

    self._ID47609 _ID42259::_ID3020( self, self._ID47609._ID70 );

    if ( issentient( self ) )
    {
        self notify( "stop_loop" );
        self stopanimscripted();
        _ID42407::_ID14701( getnode( "upperdeck_escape_node", "targetname" ) );
    }

    self kill();
}

_ID51334( var_0 )
{
    self._ID34237 = var_0;
}

_ID53968()
{
    _ID49561();
    _ID42407::_ID1985( ::_ID48179 );
    _ID42407::_ID1985( ::_ID47395 );
    _ID42407::_ID11232();
    self._ID47609 _ID42259::_ID3020( self, self._ID47609._ID70 );
    self._ID34237 = 1;
    self.timeddeath = 1;
    self notify( "nocleanup" );
    self kill();
    self._ID47609 delete();
}

upperdeck_canned_deaths_loop_wait_animate( var_0 )
{
    switch ( self._ID47609._ID70 )
    {
        case "unarmed_cowercrouch_react_B":
            thread _ID42259::_ID3025( self, "unarmed_cowercrouch_idle" );
            break;
        case "airport_civ_dying_groupA_kneel":
            thread _ID42259::_ID3025( self, "h2_airport_civ_dying_groupa_kneel_idle" );
            break;
        case "airport_civ_pillar_exit":
            thread _ID42259::_ID3025( self, "h2_airport_civ_pillar_exit_idle" );
            break;
        case "dc_burning_bunker_stumble":
            thread _ID42259::_ID3025( self, "h2_dcburning_bunker_stumble_idle" );
            break;
    }

    var_1 = _ID47613();
    self notify( "stop_loop" );
    return var_1;
}

_ID46448( var_0 )
{
    _ID49561();
    var_1 = upperdeck_canned_deaths_loop_wait_animate();

    if ( var_1.size )
        _ID42237::_ID3350( var_1, ::_ID51728, self, var_0 );

    if ( issentient( self ) )
        self.ignorerandombulletdamage = 0;
    else
        _ID42407::_ID10929();

    if ( isdefined( self._ID31438 ) )
        _ID42407::_ID10226( self._ID31523, _ID42407::_ID27081, self._ID31438 );

    self._ID47609 _ID42259::_ID3020( self, self._ID47609._ID70 );

    if ( issentient( self ) )
    {
        self notify( "stop_loop" );
        self stopanimscripted();
        _ID42407::_ID14701( getnode( "upperdeck_escape_node", "targetname" ) );
    }

    self kill();
}

_ID49561()
{
    self._ID47609 thread _ID42259::_ID3020( self, self._ID47609._ID70 );
    wait 0.05;
    self stopanimscripted();
    self._ID47609 _ID42259::_ID3023( self, self._ID47609._ID70 );
}

_ID47613()
{
    var_0 = [];
    var_1 = strtok( self.script_noteworthy, ", " );

    foreach ( var_4, var_3 in var_1 )
    {
        if ( isalive( level.team[var_3] ) )
            var_0[var_0.size] = level.team[var_3];
    }

    if ( !var_0.size )
        return var_0;

    _ID42237::_ID14413( "upperdeck_flow1" );

    while ( var_0.size )
    {
        var_5 = var_0[0];

        if ( distance( var_5.origin, self.origin ) < self.radius )
            return var_0;

        wait 0.1;
        var_0 = _ID42407::_ID3328( var_0 );
    }

    return var_0;
}

_ID48179()
{
    level.player endon( "death" );

    for (;;)
    {
        if ( distance( level.player.origin, self.origin ) < 600 )
            return;

        wait 0.1;
    }
}

_ID47395()
{
    level.player endon( "death" );

    for (;;)
    {
        _ID42407::_ID41135( undefined, 0.25, undefined, undefined, self );

        if ( distance( level.player.origin, self.origin ) < 800 )
            return;

        wait 0.1;
    }
}

_ID51153( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );

    if ( _ID42237::_ID14385( "massacre_rentacop_stop" ) )
        return;

    level endon( "massacre_rentacop_stop" );
    _ID42237::_ID14425( "stairs_upperdeck_civs_dead", 2 );
    var_1 = var_0.origin;
    var_2 = "enemy at " + var_1 + "ready to execute";
    var_3 = var_0._ID916 - 2;

    if ( var_3 < 0 )
        return;

    self endon( var_2 );
    thread _ID42407::_ID25088( var_2, var_3 );

    while ( var_0.health > 0 )
    {
        if ( distance( var_0.origin, self.origin ) < 200 )
            return;

        wait 0.1;
    }
}

_ID44841( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );

    if ( _ID42237::_ID14385( "massacre_rentacop_stop" ) )
        return;

    level endon( "massacre_rentacop_stop" );
    self endon( "upperdeck_canned_deaths_execute_fire" );
    var_1 = self getanimweight( level._ID30895["generic"]["casual_killer_walk_wave"] );

    if ( isdefined( var_1 ) && var_1 != 0 )
        return;

    var_2 = var_0 _ID42407::_ID15811();

    foreach ( var_4 in var_2 )
        _ID42407::_ID10226( randomfloat( 0.25 ), _ID42407::_ID1568, var_4.origin, 8, 1000, 1000 );

    var_6 = 0.1;

    if ( self == level.team["shotgun"] )
        var_6 = 0.25;

    _ID44356( var_6, "upperdeck_canned_deaths_execute_fire" );
}

_ID44356( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( var_1 );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    var_3 = undefined;

    if ( isdefined( var_2 ) )
        var_3 = var_2;
    else if ( isdefined( self._ID8374 ) )
        var_3 = self._ID8374["fire"];

    if ( self == level.team["shotgun"] && !isdefined( var_3 ) )
        var_3 = %h2_casual_killer_stand_shotgun_add;

    if ( isdefined( var_3 ) )
        self setanimknobrestart( var_3, 1, 0.2, 1.0 );

    _ID42407::_ID1985( _ID42407::_ID41116, var_1 );

    if ( isdefined( var_3 ) )
        _ID42407::_ID1855( ::clearanim, var_3, 0.2 );

    thread _ID42407::_ID11231();

    for (;;)
    {
        self shoot();
        wait(var_0);
    }
}

_ID51728( var_0, var_1 )
{
    self endon( "death" );

    if ( _ID42237::_ID14385( "massacre_rentacop_stop" ) )
        return;

    level endon( "massacre_rentacop_stop" );

    if ( var_0.health <= 0 )
        return;

    var_2 = spawnstruct();
    var_2.enemyentity = var_0;
    var_2._ID12747 = gettime() + var_0._ID916 * 1000;
    var_2.aimtype = var_1;
    self.upperdeck_enemy_targets[self.upperdeck_enemy_target_add_index] = var_2;
    self.upperdeck_enemy_target_add_index++;
    _ID42407::_ID1985( _ID42407::_ID1687, var_0._ID916 );
    var_0 _ID42407::_ID1841( _ID42407::_ID41116, "death" );
    _ID42407::_ID1890( ::_ID44841, var_0 );
    thread _ID42407::_ID11231();
    _ID51153( var_0 );
    self._ID11575 = 1;
    _ID42407::_ID10910();
    _ID42407::_ID13025( "aiming_at_civ" );

    if ( isdefined( var_0._ID31195 ) )
        _ID42237::_ID14402( var_0._ID31195 );

    self._ID44114++;
    var_3 = spawn( "script_origin", var_0 gettagorigin( "tag_eye" ) );
    var_3.health = 100;
    var_2.targetentity = var_3;
    thread _ID45546( var_0, var_3 );
    wait 0.5;

    if ( isdefined( var_0 ) && isdefined( var_0.health ) && var_0.health > 0 )
        var_0 waittill( "death" );

    self._ID44114--;
    wait 0.25;
    self notify( "upperdeck_canned_deaths_execute_fire" );
    wait 0.25;
    var_3 delete();

    if ( self._ID44114 )
        return;

    _ID42407::_ID13021( "aiming_at_civ" );
}

_ID45546( var_0, var_1 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_1 endon( "death" );

    for (;;)
    {
        var_2 = self gettagorigin( "j_elbow_ri" );
        var_3 = var_0 gettagorigin( "tag_eye" );
        var_4 = vectornormalize( var_3 - var_2 );
        var_4 *= 80;
        var_5 = var_2 + var_4;
        var_1.origin = var_5;
        wait 0.05;
    }
}

_ID44953()
{
    self endon( "nocleanup" );
    var_0 = self._ID47609;
    self waittill( "death" );

    if ( isdefined( self ) )
    {
        _ID51627( "killshot" );
        self playsound( "generic_death_russian_" + randomintrange( 1, 8 ) );
    }

    var_0 delete();
}

_ID49183()
{
    self waittill( "trigger" );
    var_0 = getent( self.target, "targetname" );
    var_1 = anglestoforward( var_0.angles );
    var_2 = var_0.origin + var_1 * 512;
    var_3 = 8;
    var_0 playsound( self._ID31438 );
    var_0 moveto( var_2, var_3 );
    wait(var_3);
    var_0 delete();
    self delete();
}

_ID52036()
{
    _ID42237::_ID14402( "massacre_rentacop_stop" );
    _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID1890( _ID42237::_ID14402, "massacre_rentacop_stop_dead" );
    thread _ID42407::_ID11231();
    _ID42407::_ID10226( 0.25, _ID42407::_ID32353, 0 );
    _ID42237::_ID3350( level.team, _ID42407::_ID12477 );

    foreach ( var_1 in level.team )
    {
        level _ID42407::_ID1985( _ID42407::_ID1687, 1.5 );
        var_1 _ID42407::_ID1890( _ID42407::_ID10909 );
        _ID42407::_ID1841( _ID42407::_ID41116, "death" );
        thread _ID42407::_ID11231();
    }

    _ID49207();
}

_ID49207( var_0, var_1 )
{
    self endon( "death" );
    self.allowdeath = 1;
    self.health = 1;
    self._ID24924 = 1;
    self.ignoreme = 1;
    _ID42407::_ID17509();
    animscripts\shared::_ID26732( self._ID34144, "right" );

    if ( isdefined( var_0 ) || isdefined( var_1 ) )
    {
        _ID42259::_ID3023( self, self._ID70 );

        if ( isdefined( var_0 ) )
            _ID42237::_ID14413( var_0 );

        if ( isdefined( var_1 ) )
            wait(var_1);
    }

    if ( self._ID70 == "airport_security_guard_pillar_react_L" )
        self._ID9813 = %airport_security_guard_pillar_death_l;
    else
        self._ID9813 = %airport_security_guard_pillar_death_r;

    thread _ID42407::_ID27081( "airport_rac_freeze" );
    _ID42259::_ID3020( self, self._ID70 );
    self kill();
}

_ID49191()
{
    _ID42237::_ID14413( "massacre_rentacop_rush" );
    var_0 = _ID42237::_ID16638( level._ID53497["cop"].target, "targetname" );
    level._ID53497["cop"] _ID42407::_ID17509();
    level._ID53497["cop"] animscripts\shared::_ID26732( level._ID53497["cop"]._ID34144, "right" );
    level._ID53497["cop"] _ID42407::_ID10226( 0.5, _ID42407::_ID32353, 0 );
    level._ID53497["fem"] _ID42407::_ID10226( 0.5, _ID42407::_ID27081, "airport_rfc1_scream4" );
    wait 0.1;
    var_0 thread _ID54513( level._ID53497["cop"], "airport_security_civ_rush_guard" );
    var_0 thread _ID54513( level._ID53497["male1"], "airport_security_civ_rush_civA" );
    var_0 thread _ID54513( level._ID53497["male2"], "airport_security_civ_rush_civC" );
    var_0 thread _ID54513( level._ID53497["fem"], "airport_security_civ_rush_civB" );
}

_ID54513( var_0, var_1 )
{
    var_0 endon( "death" );
    var_0 notify( "stop_loop" );
    var_0 stopanimscripted();
    wait 0.2;
    _ID42259::_ID3020( var_0, var_1 );

    switch ( var_0.script_noteworthy )
    {
        case "cop":
            var_0._ID24924 = 1;
            var_0._ID9813 = %pistol_death_2;
            var_0 _ID51627( "headshot" );
            var_0 kill();
            break;
        case "fem":
            var_0._ID9813 = %run_death_roll;
            var_0 _ID51627( "killshot" );
            var_0 kill();
            break;
        default:
            var_0 setgoalnode( getnode( "upperdeck_escape_node", "targetname" ) );
            var_0.goalradius = 100;
            var_0 waittill( "goal" );
            var_0 _ID51627( "killshot" );
            var_0 kill();
            break;
    }
}

_ID48301()
{
    self endon( "death" );
    waitframe;
    self.allowdeath = 1;
    self.ignoreme = 1;
    self.health = 1;

    if ( !isdefined( level._ID53497 ) )
        level._ID53497 = [];

    level._ID53497[self.script_noteworthy] = self;

    if ( level._ID53497.size == 4 )
        _ID42237::_ID14402( "massacre_rentacop_rush" );

    var_0 = _ID42237::_ID16638( self.target, "targetname" );

    switch ( self.script_noteworthy )
    {
        case "cop":
            var_0 _ID42259::_ID3023( self, "airport_security_civ_rush_guard" );
            break;
        case "male1":
            var_1 = spawnstruct();
            var_1.origin = getstartorigin( var_0.origin, var_0.angles, _ID42407::_ID16122( "airport_security_civ_rush_civA" ) );
            var_1.angles = getstartangles( var_0.origin, var_0.angles, _ID42407::_ID16122( "airport_security_civ_rush_civA" ) );
            var_1 thread _ID42259::_ID3025( self, "CornerCrR_alert_idle" );
            break;
        case "fem":
            var_1 = spawnstruct();
            var_1.origin = getstartorigin( var_0.origin, var_0.angles, _ID42407::_ID16122( "airport_security_civ_rush_civB" ) );
            var_1.angles = getstartangles( var_0.origin, var_0.angles, _ID42407::_ID16122( "airport_security_civ_rush_civB" ) );
            var_1 thread _ID42259::_ID3025( self, "CornerCrR_alert_idle" );
            break;
        case "male2":
            var_1 = spawnstruct();
            var_1.origin = getstartorigin( var_0.origin, var_0.angles, _ID42407::_ID16122( "airport_security_civ_rush_civC" ) );
            var_1.angles = getstartangles( var_0.origin, var_0.angles, _ID42407::_ID16122( "airport_security_civ_rush_civC" ) );
            var_1 thread _ID42259::_ID3025( self, "CornerCrR_alert_idle" );
            break;
    }
}

_ID47135()
{
    self endon( "death" );
    waitframe;
    self.ignoreme = 1;
    self.health = 1;
    self.allowdeath = 1;
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 = spawnstruct();
    var_1.origin = getstartorigin( var_0.origin, var_0.angles, _ID42407::_ID16122( "airport_security_guard_4" ) );
    var_1.angles = getstartangles( var_0.origin, var_0.angles, _ID42407::_ID16122( "airport_security_guard_4" ) );
    var_1 thread _ID42259::_ID3025( self, "covercrouch_hide_idle" );
    _ID42237::_ID14413( "massacre_rentacop_rush" );
    wait 6;
    var_1 notify( "stop_loop" );
    self stopanimscripted();
    self._ID9813 = %airport_security_guard_4_reaction;
    self._ID24924 = 1;
    self.ignoreme = 0;
    self._ID45310 = self._ID834;
    _ID42407::_ID14803( self._ID34144, "primary" );
    _ID42237::_ID14402( "massacre_rentacop_runaway_go" );
    var_0 _ID42259::_ID3020( self, "airport_security_guard_4" );
    _ID42407::_ID14803( self._ID45310, "primary" );
}

_ID48282()
{
    self endon( "death" );
    waitframe;
    self.ignoreme = 1;
    self.health = 1;
    self.allowdeath = 1;
    self.ignorerandombulletdamage = 1;
    self.pathrandompercent = 0;
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    thread _ID42259::_ID3025( self, "CornerCrL_alert_idle" );
    _ID42237::_ID14413( "massacre_rentacop_rush" );
    wait 12;
    self notify( "stop_loop" );
    self stopanimscripted();
    self._ID45310 = self._ID834;
    _ID42407::_ID14803( self._ID34144, "primary" );
    _ID42237::_ID14402( "massacre_rentacop_row1_fighter_go" );
    var_0 thread _ID42259::_ID3020( self, "airport_security_guard_4" );
    var_0 _ID42407::_ID1985( _ID42407::_ID41116, "airport_security_guard_4" );
    _ID42407::_ID1841( _ID42407::_ID41116, "death" );
    level._ID54299 _ID42407::_ID1841( _ID42407::_ID41116, "m79_shot" );
    _ID42407::_ID1890( _ID42407::_ID14803, self._ID45310, "primary" );
    thread _ID42407::_ID11231();
    level._ID54299 waittill( "m79_shot2" );
    var_1 = "death_explosion_run_L_v2";
    var_0 = spawnstruct();
    var_0.angles = self.angles + ( 0, 0, 15 );
    var_0.origin = self.origin;
    thread _ID51549( var_0, var_1, 0.6 );
}

_ID43760()
{
    self endon( "death" );
    waitframe;
    self.ignorerandombulletdamage = 1;
    self.ignoreme = 1;
    self.health = 1;
    self.allowdeath = 1;
    self.pathrandompercent = 0;
    var_0 = _ID42237::_ID16638( "massacre_rentacop_row1_defender_node", "targetname" );
    thread _ID42259::_ID3025( self, "CornerCrR_alert_idle" );
    _ID42237::_ID14413( "massacre_rentacop_rush" );
    wait 8;
    self notify( "stop_loop" );
    self stopanimscripted();
    self._ID45310 = self._ID834;
    _ID42407::_ID14803( self._ID34144, "primary" );
    _ID42237::_ID14402( "massacre_rentacop_row1_runner_go" );
    var_0 thread _ID42259::_ID3020( self, "react_stand_2_run_180" );
    var_0 _ID42407::_ID1985( _ID42407::_ID41116, "react_stand_2_run_180" );
    _ID42407::_ID1841( _ID42407::_ID41116, "death" );
    level._ID54299 _ID42407::_ID1841( _ID42407::_ID41116, "m79_shot" );
    _ID42407::_ID1890( _ID42407::_ID14803, self._ID45310, "primary" );
    thread _ID42407::_ID11231();
    level._ID54299 waittill( "m79_shot" );
    var_1 = "death_explosion_run_R_v1";

    if ( _ID42237::_ID8201() )
        var_1 = "death_explosion_run_R_v2";

    var_0 = spawnstruct();
    var_0.angles = self.angles + ( 0, 0, -20 );
    var_0.origin = self.origin;
    thread _ID51549( var_0, var_1 );
}

_ID47709()
{
    self endon( "death" );
    waitframe;
    self.ignoreme = 1;
    self.health = 1;
    self.allowdeath = 1;
    self.ignorerandombulletdamage = 1;
    self.pathrandompercent = 0;
    var_0 = getnode( self.target, "targetname" );
    self setgoalnode( var_0 );
    self.goalradius = 16;
    var_0 thread _ID42259::_ID3025( self, self._ID70 );
    _ID42237::_ID14413( "massacre_rentacop_rush" );
    wait 9.5;
    var_0 notify( "stop_loop" );
    self stopanimscripted();
    self.favoriteenemy = level.team["saw"];
    self.ignoresuppression = 1;
    self allowedstances( "stand" );
    _ID42407::_ID10973();
    var_0 = getnode( var_0.target, "targetname" );
    self setgoalnode( var_0 );
    wait 1;
    self allowedstances( "stand", "crouch" );
    wait 1.5;
    self.ignoreall = 1;
    level._ID54299 waittill( "m79_shot2" );
    var_1 = _ID42237::_ID16638( "massacre_m79_impact_2", "targetname" );

    if ( distancesquared( self.origin, var_1.origin ) > squared( 100 ) )
        return;

    var_2 = "death_explosion_run_B_v1";

    if ( _ID42237::_ID8201() )
        var_2 = "death_explosion_run_B_v2";

    var_0 = spawnstruct();
    var_0.angles = vectortoangles( var_1.origin - self.origin ) + ( 5, 0, 0 );
    var_0.origin = self.origin;
    thread _ID51549( var_0, var_2, getanimlength( level._ID30895["generic"][var_2] ) - 0.75 );
}

_ID44027()
{
    self endon( "death" );
    _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID1890( _ID42237::_ID14402, "massacre_rentacop_rambo_dead" );
    thread _ID42407::_ID11231();
    self.pathrandompercent = 0;
    self.allowdeath = 1;
    self.ignoreme = 1;
    self.health = 1;
    var_0 = undefined;

    if ( _ID42237::_ID8201() )
        var_0 = "corner_standL_rambo_jam";
    else
        var_0 = "corner_standL_rambo_set";

    thread _ID42259::_ID3020( self, var_0 );
    wait 2;
    _ID42237::_ID14402( "massacre_rentacop_rambo" );
    self.goalradius = 80;
    self.ignoreme = 0;
}

_ID50976()
{
    self endon( "death" );
    self endon( "long_death" );
    self.goalradius = 8;
    self.accuracy = 1;
    self._ID4867 = 1;
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.nogrenadereturnthrow = 1;
    self.allowdeath = 1;
    self.ignorerandombulletdamage = 1;
    self._ID24926 = 1;
    self allowedstances( "crouch" );
    self.pathrandompercent = 0;
    wait 1;
    thread _ID42259::_ID3025( self, "covercrouch_hide_idle" );

    if ( self._ID31388 == "center" )
    {
        _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacop_stop" );
        _ID42407::_ID1841( _ID42407::_ID41116, "death" );
        _ID42407::_ID1890( _ID42407::_ID10226, 5.5, _ID42407::_ID27081, "airport_rac_handsup" );
        thread _ID42407::_ID11231();
    }

    _ID42237::_ID14413( "massacre_nadethrow" );

    if ( self._ID31388 != "center" )
    {
        self.ignoreall = 0;
        self allowedstances( "stand" );
        self notify( "stop_loop" );
        self stopanimscripted();
        self._ID4867 = self._ID4867 * 0.3;
        self.accuracy = self.accuracy * 0.3;
    }

    wait 1;
    thread _ID42407::_ID25088( "switch_to_nade_death", level._ID51803 - 0.05 );
    wait(randomfloatrange( 1, 1.5 ));

    if ( self._ID31388 == "center" )
    {
        self.ignoreall = 0;
        self allowedstances( "stand" );
        self notify( "stop_loop" );
        self stopanimscripted();
        self._ID4867 = self._ID4867 * 0.3;
        self.accuracy = self.accuracy * 0.3;
    }

    var_0 = undefined;
    var_1 = undefined;
    var_2 = 0;
    var_3 = 0;
    var_4 = 0;

    switch ( self._ID31388 )
    {
        case "center":
            var_0 = "exposed_backpedal";
            var_1 = "death_explosion_stand_B_v1";
            var_4 = 5;
            var_2 = 285;
            var_3 = 0;
            break;
        case "right":
            var_0 = "react_stand_2_run_180";
            var_1 = "death_explosion_stand_R_v1";
            var_2 = 290;
            var_3 = -10;
            break;
        case "left":
            var_0 = "walk_backward";
            var_1 = "death_explosion_stand_L_v3";
            var_2 = 260;
            var_3 = 10;
            break;
    }

    var_5 = spawn( "script_origin", self.origin );
    var_5.angles = ( 0, var_2, 0 );
    var_5 thread _ID42259::_ID3020( self, var_0 );
    self waittill( "switch_to_nade_death" );
    var_5.angles = ( var_4, var_2, var_3 );

    if ( self._ID31388 == "center" )
    {
        var_6 = getanimlength( _ID42407::_ID16303( var_1 ) ) - 0.2;
        var_7 = var_6 - 0.4;
        var_6 -= 0.45;
        var_8 = _ID42237::_ID16638( "massacre_glass_shatter", "targetname" );
        level thread _ID42407::_ID10226( var_7, _ID42407::_ID1568, var_8.origin, 32, 2000, 2000 );
        thread _ID51549( var_5, var_1, var_6 );
    }
    else
        thread _ID51549( var_5, var_1 );
}

_ID51549( var_0, var_1, var_2 )
{
    self.maxhealth = 100000;
    self.health = 100000;
    self.allowdeath = 0;
    self._ID34237 = 1;
    self._ID24924 = 1;
    wait 0.05;
    self stopanimscripted();
    var_0.origin = self.origin;
    var_0 thread _ID42259::_ID3020( self, var_1 );
    animscripts\shared::_ID12143();

    if ( !isdefined( var_2 ) )
    {
        var_2 = getanimlength( _ID42407::_ID16303( var_1 ) ) - 0.2;
        _ID42407::_ID10226( 0.05, _ID42407::_ID1500 );
    }
    else
        _ID42407::_ID10226( var_2, _ID42407::_ID1500 );

    wait(var_2);
    self startragdoll();
}

_ID44582()
{
    self endon( "stop_blindfire" );
    self endon( "death" );

    for (;;)
    {
        wait(randomfloatrange( 1.5, 3 ));
        self notify( "stop_loop" );
        self stopanimscripted();
        _ID42259::_ID3020( self, "covercrouch_blindfire_1" );
        thread _ID42259::_ID3025( self, "covercrouch_hide_idle" );
    }
}

_ID45254()
{
    self endon( "death" );
    self.nogrenadereturnthrow = 1;
    self.grenadeawareness = 0;
    self setgoalpos( self.origin );
    self.goalradius = 16;
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.ignoresuppression = 1;
    _ID42407::_ID10973();
    self._ID11002 = 1;
    self.allowdeath = 1;
    self.interval = 0;

    switch ( self.script_noteworthy )
    {
        case "1":
            _ID46324();
            break;
        case "2":
            _ID43359();
            break;
        case "3":
            _ID43324();
            break;
    }
}

_ID46324()
{
    _ID42407::_ID22746();
    self endon( "death" );
    thread _ID42259::_ID3025( self, "corner_standL_alert_idle" );
    _ID42237::_ID14413( "massacre_elevator_down" );
    var_0 = getnode( self.target, "targetname" );
    wait 1;
    self notify( "stop_loop" );
    self stopanimscripted();
    self setgoalnode( var_0 );
    self waittill( "goal" );
    _ID42237::_ID14413( "massacre_elevator_up" );
    _ID42407::_ID36519();
    self.ignoreall = 0;
    self linkto( level._ID43262._ID12279["housing"]["mainframe"][0] );
    _ID42237::_ID14413( "massacre_elevator_at_top" );
    self.goalradius = 100;
    wait 0.5;
    self unlink();
    var_0 = _ID42237::_ID16638( "massacre_elevator_jump_node", "targetname" );
    var_0.angles = ( 0, 90, 0 );
    self._ID25546 = self setcontents( 0 );
    var_0 _ID42259::_ID3027( self, "corner_standL_alert_idle_reach" );
    var_0 thread _ID42259::_ID3025( self, "corner_standL_alert_idle" );
    _ID42237::_ID14413( "massacre_elevator_grenade_throw" );
    var_0.angles = ( 0, 0, 0 );
    self setcontents( self._ID25546 );
    self.allowdeath = 1;
    var_0 notify( "stop_loop" );
    self stopanimscripted();
    self playsound( "airport_rmc2_scream1" );
    var_0 thread _ID42259::_ID3020( self, "corner_standL_explosion_B" );
    wait 1;
    self._ID7._ID28253 = "prone";
    _ID42237::_ID14413( "massacre_elevator_grenade_exp" );
    wait 1;
    self.nogrenadereturnthrow = 0;
    self.grenadeawareness = 1;
    self.ignoreme = 0;
    self.ignoreall = 0;
    self.goalradius = 512;
    level._ID54299.ignoreall = 0;
    level.team["shotgun"].ignoreall = 0;
    level._ID54299.ignoreme = 0;
    level.team["shotgun"].ignoreme = 0;
}

_ID43359()
{
    _ID42407::_ID22746();
    self allowedstances( "stand" );
    thread _ID42259::_ID3025( self, "corner_standR_alert_idle" );
    _ID42237::_ID14413( "massacre_elevator_down" );
    var_0 = getnode( self.target, "targetname" );
    wait 2;
    self notify( "stop_loop" );
    self stopanimscripted();
    self setgoalnode( var_0 );
    self waittill( "goal" );
    _ID42237::_ID14413( "massacre_elevator_up" );
    _ID42407::_ID36519();
    self.ignoreall = 0;
    self.goalradius = 32;
    self linkto( level._ID43262._ID12279["housing"]["mainframe"][0] );
    thread _ID42259::_ID3025( self, "corner_standL_alert_idle" );
    _ID42237::_ID14413( "massacre_elevator_grenade_throw" );
    self unlink();
    self notify( "stop_loop" );
    self stopanimscripted();
    var_0 = spawnstruct();
    var_0.origin = self.origin;
    var_0.angles = ( 0, 100, 0 );
    _ID42407::_ID17509();
    var_0 thread _ID42259::_ID3020( self, "unarmed_cowerstand_react" );
    self playsound( "airport_rmc2_scream3" );
    _ID42237::_ID14413( "massacre_elevator_grenade_exp" );
    var_0.origin = self.origin;
    thread _ID51549( var_0, "death_explosion_stand_B_v2", getanimlength( _ID42407::_ID16303( "death_explosion_stand_B_v2" ) ) - 1 );
    playfxontag( _ID42237::_ID16299( "glass_dust_trail" ), self, "J_SpineLower" );
}

_ID43324()
{
    _ID42407::_ID22746();
    self allowedstances( "stand" );
    thread _ID42259::_ID3025( self, "corner_standL_alert_idle" );
    _ID42237::_ID14413( "massacre_elevator_down" );
    var_0 = getnode( self.target, "targetname" );
    wait 3;
    self notify( "stop_loop" );
    self stopanimscripted();
    self setgoalnode( var_0 );
    self waittill( "goal" );
    wait 0.5;
    _ID42237::_ID14402( "massacre_elevator_guys_ready" );
    _ID42237::_ID14413( "massacre_elevator_up" );
    _ID42407::_ID36519();
    self.ignoreall = 0;
    self linkto( level._ID43262._ID12279["housing"]["mainframe"][0] );
    thread _ID42259::_ID3025( self, "corner_standR_alert_idle" );
    _ID42237::_ID14413( "massacre_elevator_at_top" );
    self.goalradius = 100;
    self setgoalpos( self.origin );
    self unlink();
    self notify( "stop_loop" );
    self stopanimscripted();
    _ID42237::_ID14413( "massacre_elevator_grenade_throw" );
    var_0 = spawnstruct();
    var_0.origin = self.origin;
    var_0.angles = self.angles;
    var_1 = spawnstruct();
    var_1.origin = self.origin;
    var_1.angles = ( 0, 90, 0 );
    var_0 thread _ID42259::_ID3020( self, "exposed_backpedal" );
    waittillframeend;
    thread _ID42259::_ID46811( undefined, var_0, var_1, 1 );
    wait 1.3;
    self stopanimscripted();
    thread _ID42259::_ID3020( self, "stand_2_run_F_2" );
    _ID42237::_ID14413( "massacre_elevator_grenade_exp" );
    var_0.origin = self.origin;

    if ( !isalive( self ) )
        return;

    _ID42407::_ID32187( 0 );
    self stopanimscripted();
    thread _ID42259::_ID3020( self, "exposed_death_blowback" );
    wait 1.55;

    if ( !isalive( self ) )
        return;

    self startragdoll();
    thread _ID47472( "gate_player_off_stairs" );
    self endon( "death" );
    wait 3;
    self kill();
}

_ID43262()
{
    var_0 = _ID54197();
    level._ID43262 = var_0;
    _ID42237::_ID14413( "massacre_elevator_start" );
    var_0 _ID42233::_ID6635( 0 );
    var_0 waittill( "elevator_moved" );
    var_1 = var_0 _ID42233::_ID15889( 0 );
    var_2 = var_0 _ID42233::_ID15891( 0 );
    var_1 connectpaths();
    var_2 connectpaths();
    _ID42237::_ID14402( "massacre_elevator_down" );
    _ID42237::_ID14413( "massacre_elevator_guys_ready" );
    _ID42237::_ID14413( "massacre_eleveator_should_come_up" );
    var_0 _ID42233::_ID6635( 1 );
    var_0 waittill( "closed_inner_doors" );
    _ID42237::_ID14402( "massacre_elevator_up" );
    thread _ID42407::_ID14403( "massacre_elevator_prepare_nade", 2.5 );
    var_0 waittill( "elevator_moved" );
    var_1 = var_0 _ID42233::_ID15889( 1 );
    var_2 = var_0 _ID42233::_ID15891( 1 );
    var_1 connectpaths();
    var_2 connectpaths();
    _ID42237::_ID14402( "massacre_elevator_at_top" );
    _ID42237::_ID14413( "massacre_elevator_grenade_exp" );
    var_0._ID12279["housing"]["mainframe"][0] playsound( "elevator_shake_groan" );
    var_0._ID12279["housing"]["mainframe"][0] thread _ID42407::_ID27079( "scn_airport_elevator_fall" );
    wait 0.05;
    _ID42234::_ID13611( 1 );
    var_3 = _ID42237::_ID16638( "elevator_pick", "targetname" );
    var_4 = getentarray( "elevator_casing_glass", "targetname" );

    if ( var_4.size )
    {
        var_5 = _ID42237::_ID16182( var_3.origin, var_4 );
        var_5 delete();
    }

    var_4 = getentarray( "elevator_housing_glass", "script_noteworthy" );

    if ( var_4.size )
    {
        var_5 = _ID42237::_ID16182( var_3.origin, var_4 );
        var_5 delete();
    }

    wait 0.5;
    var_6 = ( 0, 0, 1000 );
    var_7 = ( 0, 0, -1000 );
    var_0 _ID42407::_ID10226( 0.95, ::_ID46962, var_0._ID53945, var_0._ID12279["housing"]["mainframe"][0], 1.05, var_6, var_7 );
    wait 1;
    var_1 = var_0 _ID42233::_ID15889( 0 );
    var_2 = var_0 _ID42233::_ID15891( 0 );
    level._ID12382 = _ID42237::_ID3321( level._ID12382, var_0 );
    _ID42407::_ID10226( 0.1, ::_ID51551, 80 );
    _ID42407::_ID10226( 0.6, ::_ID51551, 70 );
    _ID42407::_ID10226( 0.75, ::_ID51551, 60 );
    var_0._ID12279["housing"]["inside_trigger"] delete();
    var_0._ID12279["housing"]["mainframe"][0] movegravity( ( 0, 0, 0 ), 1 );
    wait 1;
    var_0._ID12279["housing"]["mainframe"][0] playsound( "elevator_crash" );
    _ID42234::_ID13611( 2 );
    thread elevator_crash_earthquake();
    var_1 delete();
    var_2 delete();
    wait 0.5;
    var_0 notify( "elevator_moved" );
    _ID42237::_ID14402( "elevator_destroyed" );
    level._ID51784 = 94;
}

_ID51551( var_0 )
{
    level._ID51784 = var_0;
}

_ID54197()
{
    var_0 = _ID42237::_ID16638( "elevator_pick", "targetname" );
    var_1 = level._ID12382[0];
    var_2 = distance( var_1._ID12279["housing"]["mainframe"][0] getorigin(), var_0.origin );

    foreach ( var_4 in level._ID12382 )
    {
        var_5 = distance( var_4._ID12279["housing"]["mainframe"][0] getorigin(), var_0.origin );

        if ( var_5 < var_2 )
        {
            var_1 = var_4;
            var_2 = var_5;
        }
    }

    return var_1;
}

_ID45582()
{
    self endon( "death" );
    wait 0.05;
    self.allowdeath = 1;
    thread _ID42259::_ID3025( self, self._ID70 );
    self.ignorerandombulletdamage = 1;
    _ID42237::_ID14413( "massacre_rentacop_rush" );
    wait 5;
    self notify( "stop_loop" );
    self stopanimscripted();
    self.ignorerandombulletdamage = 0;
    self.usechokepoints = 0;

    if ( !isdefined( level._ID45582 ) )
    {
        level._ID45582 = [];
        level._ID45582[level._ID45582.size] = self;
        wait 0.1;
        thread _ID51442( level._ID45582, "scn_airport_running_screams3" );
    }
    else
        level._ID45582[level._ID45582.size] = self;

    thread _ID46364();

    if ( isdefined( self.target ) )
    {
        if ( self.target == "massacre_civ_runner_node" )
        {
            thread _ID42259::_ID3025( self, self._ID70 );
            self.ignorerandombulletdamage = 1;
            wait 1;
            self notify( "stop_loop" );
            self stopanimscripted();
            var_0 = _ID42237::_ID16638( self.target, "targetname" );
            var_0 _ID42259::_ID3020( self, "civilian_run_hunched_flinch" );
        }
        else
        {
            var_0 = getnode( self.target, "targetname" );
            self.ignorerandombulletdamage = 1;
            _ID42407::_ID14701( var_0 );
            self.ignorerandombulletdamage = 0;
        }
    }

    self.target = undefined;
    _ID51005();
}

_ID45923( var_0 )
{
    self endon( "death" );
    wait 0.05;
    self.allowdeath = 1;
    thread _ID42259::_ID3025( self, self._ID70 );
    self.ignorerandombulletdamage = 1;

    if ( !isdefined( level._ID45923 ) )
    {
        level._ID45923 = [];
        level._ID45923[level._ID45923.size] = self;
        wait 0.1;
        thread _ID51442( level._ID45923, var_0 );
        wait 0.05;
        level._ID45923 = undefined;
    }
    else
        level._ID45923[level._ID45923.size] = self;

    self notify( "stop_loop" );
    self stopanimscripted();
    self.ignorerandombulletdamage = 0;
    self.usechokepoints = 0;

    if ( isdefined( self.target ) )
    {
        var_1 = getnode( self.target, "targetname" );
        _ID42407::_ID14701( var_1 );
    }

    self.target = undefined;
    _ID51005();
}

_ID46364()
{
    self endon( "death" );
    level._ID54299 waittill( "m79_shot2" );
    var_0 = _ID42237::_ID16638( "massacre_m79_impact_2", "targetname" );

    if ( distancesquared( self.origin, var_0.origin ) > squared( 100 ) )
        return;

    var_1 = undefined;
    var_2 = var_0.origin - self.origin;
    var_3 = vectordot( var_2, anglestoforward( self.angles ) );
    var_4 = vectordot( var_2, anglestoright( self.angles ) );
    var_5 = ( 0, 0, 0 );

    if ( var_3 > 0.5 )
    {
        var_1 = "death_explosion_run_B_v1";

        if ( _ID42237::_ID8201() )
            var_1 = "death_explosion_run_B_v2";

        var_5 = ( 10, 0, 0 );
    }
    else if ( var_3 < -0.5 )
    {
        var_1 = "death_explosion_run_F_v1";

        if ( _ID42237::_ID8201() )
            var_1 = "death_explosion_run_F_v2";

        var_5 = ( -10, 0, 0 );
    }
    else if ( var_4 > 0.6 )
    {
        var_1 = "death_explosion_run_L_v1";

        if ( _ID42237::_ID8201() )
            var_1 = "death_explosion_run_L_v2";

        var_5 = ( 0, 0, 10 );
    }
    else
    {
        var_1 = "death_explosion_run_R_v1";

        if ( _ID42237::_ID8201() )
            var_1 = "death_explosion_run_R_v2";

        var_5 = ( 0, 0, -10 );
    }

    var_6 = spawnstruct();
    var_6.angles = self.angles;
    var_6.origin = self.origin;
    thread _ID51549( var_6, var_1, 0.5 );
}

_ID44614()
{
    self endon( "death" );
    wait 0.05;
    self.allowdeath = 1;
    _ID42259::_ID3023( self, "dying_crawl" );
    self.ignorerandombulletdamage = 1;
    _ID42407::_ID14741( self.angles[1], 2, undefined, 1 );
    _ID42237::_ID14413( "massacre_elevator_grenade_exp" );
    self stopanimscripted();
    self dodamage( 1, level.player.origin );
}

_ID52475()
{
    var_0 = undefined;

    switch ( self.script_noteworthy )
    {
        case "male":
            var_0 = "civilian_male_suit_low_LOD";
            break;
        case "female":
            var_0 = "civilian_female_suit_low_LOD";
            break;
    }

    var_1 = getent( var_0, "targetname" );
    var_1.count = 1;
    var_2 = _ID42407::_ID12076( var_1 );
    var_2._ID51578 = self;
    var_2._ID3183 = self._ID70;
    var_2._ID916 = self._ID916;
    var_2.maxhealth = 1;
    var_2.health = 1;
    var_2.ignoreexplosionevents = 1;
    var_2.ignoreme = 1;
    var_2 _ID42407::_ID12495();
    var_2.grenadeawareness = 0;
    var_2 _ID42407::_ID10973();
    var_2 thread _ID42407::_ID22746( 1 );
    var_2._ID11572 = 1;
    var_2._ID24866 = 1;
    var_2 thread _ID50018();
    level._ID43244 = 0;
}

_ID50018()
{
    var_0 = self._ID51578;
    waitframe;
    wait 0.5;
    var_0 _ID42259::_ID3023( self, self._ID3183 );
    self setanimtime( _ID42407::_ID16122( self._ID3183 ), 0.2 );
    thread _ID45431();
    _ID42237::_ID14413( "massacre_civ_animate" );

    if ( isalive( level.team["m4"] ) )
        level.team["m4"] _ID42407::_ID13027( "massacre_firing_into_crowd" );

    var_1 = _ID42237::_ID16638( "massacre_random_timing", "targetname" );
    var_1.origin = ( 2570, 3777, 144 );
    var_2 = _ID42237::_ID16638( var_0.target, "targetname" );
    var_3 = squared( var_1.radius );
    var_4 = distancesquared( var_1.origin, var_2.origin );
    var_5 = 1 - ( var_3 - var_4 ) / var_3;
    var_6 = 0.25 * var_5;

    if ( distancesquared( var_1.origin, var_2.origin ) < squared( 128 ) )
        var_6 = 0.1 * var_5;

    wait(var_6);
    _ID42407::_ID916();
    thread _ID48322();
    _ID42407::_ID36519();
    var_0 thread _ID42259::_ID3020( self, self._ID3183 );
    self setanimtime( _ID42407::_ID16122( self._ID3183 ), 0.2 );
    var_0 waittill( self._ID3183 );

    if ( var_0._ID70 != "airport_civ_in_line_6_C_reaction" )
    {
        self._ID24924 = 1;
        self._ID34237 = 1;
    }

    var_0 delete();
    level._ID43244++;

    if ( level._ID43244 > 2 )
        level._ID43244 = 0;

    self kill();
    _ID42237::_ID14413( "delete_massacre_dummies" );
    self delete();
}

_ID43122()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42237::_ID14413( "massacre_rentacop_stop_dead" );
    wait 0.75;
}

_ID52720( var_0 )
{
    _ID42407::_ID13024( "massacre_node_end" );

    while ( isdefined( var_0.target ) )
        var_0 = _ID42237::_ID16638( var_0.target, "targetname" );

    var_0 waittill( "trigger" );
    _ID42407::_ID13025( "massacre_node_end" );
}

_ID45269( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42237::_ID14413( "massacre_rentacop_stop" );
    waitframe;
    _ID47984::_ID44829();
    self pushplayer( 1 );
    self clearentitytarget();
    self.ignoreall = 0;
    self._ID7._ID11043 = 1;
    _ID42407::_ID13021( "aiming_at_civ" );
    _ID42237::_ID14413( "massacre_rentacop_stop_dead" );
    _ID42407::_ID12477();

    if ( self.script_noteworthy == "m4" )
        _ID42407::_ID13025( "massacre_ready" );
    else
    {
        foreach ( var_2 in level.team )
            var_2 _ID42407::_ID13027( "massacre_ready" );

        _ID42407::_ID10226( 4, _ID42407::_ID1801, "massacre_rentacop_rush_guy", "target" );
    }

    if ( self.script_noteworthy == "makarov" )
        thread _ID52720( var_0 );

    thread _ID42407::_ID14701( var_0 );
    _ID42407::_ID10877();
    _ID42407::_ID10226( 3, _ID42407::_ID10912 );

    switch ( self.script_noteworthy )
    {
        case "saw":
            thread _ID54504( var_0 );
            self waittill( "reached_path_end" );
            self notify( "cleanup_killers_saw" );
            self._ID24424 = 1.3;
            thread _ID47795();
            thread monitor_runners_death();
            _ID42407::_ID12452();
            _ID42407::_ID12480();
            self waittill( "stop_killers_saw2" );
            self notify( "stop_spray_and_pray" );
            self.combatmode = "cover";
            self._ID24424 = 1.0;
            self.ignoreall = 0;
            self clearentitytarget();
            _ID42407::_ID10909();
            break;
        case "m4":
            _ID43144();
            break;
        case "shotgun":
            _ID50711( var_0 );
            break;
        case "makarov":
            _ID44947( var_0 );
            thread _ID53586();
            var_0 = getnode( "massacre_elevator_nade_node", "targetname" );
            _ID54340( var_0 );
            break;
    }

    self._ID7._ID11043 = 0;
    wait 1;
    _ID42407::_ID13025( "gate_ready_to_go" );
    wait 4;
    _ID47984::_ID53591( "gate_player_ready" );
}

monitor_runners_death()
{
    _ID42237::_ID14413( "massacre_runners1_dead" );
    _ID42237::_ID14413( "massacre_runners2_dead" );
    _ID42237::_ID14413( "massacre_runners3_dead" );
    wait 3;
    self notify( "stop_killers_saw2" );
}

_ID53831( var_0 )
{
    _ID42237::_ID14413( "massacre_kill_rush" );

    if ( _ID42237::_ID14385( "massacre_rentacop_rush_dead" ) )
        return;

    if ( !isdefined( var_0 ) )
        var_0 = 0.1;

    var_1 = _ID42407::_ID15816( "cop", "script_noteworthy" );

    if ( isalive( var_1 ) )
    {
        var_1.ignoreme = 0;
        self.favoriteenemy = var_1;
    }

    thread _ID44356( var_0, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.5 );
}

_ID47203( var_0 )
{
    _ID42237::_ID14413( "massacre_rentacop_runaway_go" );
    wait 2;

    if ( _ID42237::_ID14385( "massacre_rentacop_runaway_dead" ) )
        return;

    if ( !isdefined( var_0 ) )
        var_0 = 0.1;

    var_1 = _ID42407::_ID15816( "massacre_rentacop_runaway_guy", "script_noteworthy" );

    if ( isalive( var_1 ) )
    {
        var_1.ignoreme = 0;
        self.favoriteenemy = var_1;
    }

    thread _ID44356( var_0, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.5 );
}

_ID54559( var_0 )
{
    _ID42237::_ID14415( "massacre_rentacop_rambo_dead", "massacre_rentacop_rambo" );

    if ( _ID42237::_ID14385( "massacre_rentacop_rambo_dead" ) )
        return;

    if ( !isdefined( var_0 ) )
        var_0 = 0.1;

    thread _ID44356( var_0, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.5 );
}

_ID43144()
{
    self.ignoreall = 1;
    self._ID24424 = 1.1;
    _ID42407::_ID12452();
    _ID42407::_ID32430( "casual_killer_jog_A" );
    _ID42407::_ID10909();
    var_0 = getnode( "massacre_nodes2", "targetname" );
    self.forceapproachyaw = var_0.angles[1];
    self.overridearrival = %h2_casual_killer_jog_2_heat;
    _ID42407::_ID14701( var_0 );
    self.forceapproachyaw = undefined;
    _ID42407::_ID7892();
    self.exitnode_overridetranstime = 0.5;
    _ID54056( var_0 );
    _ID47984::_ID46279();
    waitframe;
    _ID47984::_ID44498();
    waitframe;
    self.combatmode = "cover";
    self._ID24424 = 0.85;
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_makarov_point_at_rambo" );
    _ID42407::_ID1890( _ID42407::_ID32430, "casual_killer_jog_A" );
    _ID42407::_ID1841( _ID42407::_ID41116, "reached_path_end" );
    thread _ID42407::_ID11231();
    _ID42407::_ID12480();
    _ID42407::_ID12452();
    self._ID11007 = undefined;
    self.overrideexitanim = %h2_casual_killer_heat_2_walk;
    var_0 = getnode( "massacre_elevator_secondary_nodes_m4", "targetname" );
    _ID42407::_ID14701( var_0 );
    self.exitnode_overridetranstime = undefined;
    _ID42407::_ID7892();
    self._ID24424 = 1.0;
    wait 1;
    self._ID11007 = 1;

    if ( _ID42237::_ID14385( "massacre_runners1_dead" ) && _ID42237::_ID14385( "massacre_runners2_dead" ) && _ID42237::_ID14385( "massacre_runners3_dead" ) )
        return;

    thread _ID44393( 0, 0.25, 1 );
    _ID42237::_ID14413( "massacre_runners1_dead" );
    _ID42237::_ID14413( "massacre_runners2_dead" );
    _ID42237::_ID14413( "massacre_runners3_dead" );
    wait 1;
    self notify( "stop_spray_and_pray" );
}

_ID54504( var_0 )
{
    self endon( "cleanup_killers_saw" );
    thread _ID53831();
    self._ID24424 = 1.5;
    wait 8;
    _ID42407::_ID10989();
    wait 2;
    self._ID24424 = 1.1;
    wait 0.1;
    self.ignoreall = 1;
    self clearanim( %run_n_gun, 0.2 );
    self._ID48465["F"] = %casual_killer_walk_shoot_f_aimdown_m240;
    self.run_and_gun_current_type = undefined;
    wait 0.5;
    self._ID44305 = %casual_killer_walk_shoot_l_m240;
    self._ID47638 = 0.4;
    self._ID50072 = 0.5;
    self animcustom( ::_ID47090 );
    wait 1;
    self._ID24424 = 1.0;
    self._ID44305 = %casual_killer_walk_shoot_l_m240;
    self._ID47638 = 0.4;
    self._ID50072 = 0.2;
    self animcustom( ::_ID47090 );
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 2 );
    wait 0.5;
    self._ID44305 = %casual_killer_walk_shoot_l_m240;
    self._ID47638 = 0.4;
    self._ID50072 = 0.2;
    self animcustom( ::_ID47090 );
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.5 );
    wait 0.5;
    self._ID44305 = %casual_killer_walk_shoot_l_m240;
    self._ID47638 = 0.4;
    self._ID50072 = 0.2;
    self animcustom( ::_ID47090 );
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 1 );
    wait 1.0;
    self.ignoreall = 0;
    self animcustom( ::_ID46562 );
    _ID42407::_ID12549();
    wait 0.2;
    _ID47984::_ID43210( "straight" );
    level._ID54299 waittill( "m79_shot2" );
    thread _ID42259::_ID3029( self, "casual_killer_flinch2" );
    self._ID24424 = 1.2;
}

_ID47795()
{
    self endon( "stop_killers_saw2" );
    var_0 = getnode( "massacre_elevator_secondary_nodes_saw", "targetname" );
    thread _ID42407::_ID14701( var_0 );
    self._ID24424 = 1;
    var_1 = getent( "massacre_civ_aim_node", "targetname" );
    var_1.health = 100;
    wait 2;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 1 );
    wait 0.5;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.5 );
    self setentitytarget( var_1 );
    self.ignoreall = 0;
    self._ID24424 = 1.0;
    wait 1;
    self._ID24424 = 0.85;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 1 );
    wait 0.5;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 1.5 );
    wait 0.25;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 1.25 );
    _ID42407::_ID10877();
    _ID42407::_ID10912();
    wait 0.2;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 1.75 );
    _ID42407::_ID10877();
    _ID42407::_ID10912();
    _ID52640();
    wait 0.5;
    self.ignoreall = 0;
    self clearentitytarget();
    _ID42407::_ID10909();

    if ( _ID42237::_ID14385( "massacre_runners1_dead" ) && _ID42237::_ID14385( "massacre_runners2_dead" ) && _ID42237::_ID14385( "massacre_runners3_dead" ) )
        return;

    thread _ID44393( 0, 0.5, 1, undefined, 2 );
    _ID42237::_ID14413( "massacre_runners1_dead" );
    _ID42237::_ID14413( "massacre_runners2_dead" );
    _ID42237::_ID14413( "massacre_runners3_dead" );
    wait 1.5;
    self notify( "stop_spray_and_pray" );
}

_ID50711( var_0 )
{
    thread _ID47203( 0.25 );
    thread _ID54559( 0.25 );
    self._ID24424 = 1.0;
    wait 11;
    self._ID24424 = 1.1;
    level._ID54299 waittill( "m79_shot2" );
    self._ID24424 = 1.0;
    thread _ID42259::_ID3029( self, "casual_killer_flinch" );
    self._ID24424 = 1.35;
    self waittill( "reached_path_end" );
    _ID42407::_ID12452();
    _ID42237::_ID14413( "massacre_rentacop_rambo_dead" );
    _ID42259::_ID3099( [ self ], "casual_killer_walk_stop", undefined, 0, "shotgun" );
    self._ID24424 = 1;
    wait 1.5;
    _ID42407::_ID32430( "casual_killer_jog_A" );
    _ID42407::_ID12480();
    _ID42407::_ID12452();
    var_0 = getnode( "massacre_elevator_support_node", "targetname" );
    _ID42407::_ID14701( var_0 );
    _ID42407::_ID7892();
    self._ID24424 = 1.0;
    wait 1;
    var_1 = getent( "massacre_line_of_fire_trig", "targetname" );
    var_1 thread _ID44544( "massacre_line_of_fire_done", level.team );
    _ID42407::_ID1985( _ID42407::_ID38929, "massacre_line_of_fire_trig_final" );
    _ID42407::_ID1841( _ID42237::_ID14413, "massacre_line_of_fire_done" );
    level.player _ID42407::_ID1855( ::kill );
    thread _ID42407::_ID11231();
    self.ignoreall = 0;
    _ID42407::_ID10909();
    thread _ID44393( 0, 0.25, 0, -1, 15 );
    _ID42237::_ID14413( "massacre_runners1_dead" );
    _ID42237::_ID14413( "massacre_runners2_dead" );
    _ID42237::_ID14413( "massacre_runners3_dead" );
    wait 0.5;
    self notify( "stop_spray_and_pray" );
    _ID42237::_ID14402( "massacre_line_of_fire_done" );
}

_ID48855()
{
    var_0 = getent( "massacre_post_roof", "script_noteworthy" );
    var_1 = getentarray( "massacre_post_post_exp", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = getentarray( var_3.target, "targetname" );

        foreach ( var_6 in var_4 )
            var_6 hide();

        var_3 hide();
    }

    level._ID54299 waittill( "m79_shot2" );
    wait 0.05;
    var_1 = getentarray( "massacre_post_post_exp", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = getentarray( var_3.target, "targetname" );

        foreach ( var_6 in var_4 )
        {
            var_6 show();
            var_6 linkto( var_3 );
        }

        var_3 show();
        var_12 = 10;

        if ( isdefined( var_3.script_noteworthy ) )
            var_12 = -10;

        var_13 = 0.1;
        var_3 rotatepitch( var_12, var_13, 0, var_13 );
    }

    var_3 = getent( "massacre_post_pre_exp", "targetname" );
    var_3 delete();
    var_15 = anglestoforward( ( 0, 180, 0 ) );
    var_15 *= 500;
    var_16 = getglassarray( "massacre_glass_exp_1" );
    _ID42237::_ID3314( var_16, ::destroyglass, var_15 );
    var_0 playsound( "storefront_glass_pane_blowout" );
    var_3 = getent( "massacre_post_top", "script_noteworthy" );
    var_3 playsound( "storefront_wood_break" );
    var_17 = getent( "massacre_sign", "script_noteworthy" );
    var_17 physicslaunchclient( var_17.origin + ( 0, 50, 5 ), ( 50, 500, -100 ) );
    wait 1;
    var_0 playsound( "storefront_wood_collapse" );
    var_3 linkto( var_0 );
    var_18 = ( -2.306, 3.01101, -13.3077 );
    var_13 = 0.7;
    var_0 rotateto( var_18, var_13, var_13 );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3.script_noteworthy ) )
            continue;

        var_20 = 0.25;
        var_3 rotateroll( -4, var_20, 0, var_20 );
    }

    wait(var_13);
    var_13 = 0.35;
    var_0 rotateto( var_18 * 0.7, var_13, 0, var_13 );
    wait(var_13 - 0.05);
    var_0 rotateto( var_18, var_13, var_13 );
    wait(var_13);
    var_13 = 0.2;
    var_0 rotateto( var_18 * 0.9, var_13, 0, var_13 );
    wait(var_13);
    var_0 rotateto( var_18, var_13, var_13 );
}

_ID44947( var_0 )
{
    thread _ID53831();
    self._ID24424 = 1.37;
    wait 9.85;
    _ID42407::_ID12477();
    self.ignoreall = 1;
    wait 3.15;
    var_1 = ( 0, 0, 10 );
    thread _ID42407::_ID25088( "m79_shot", 0.15 );
    var_0 = _ID42237::_ID16638( "massacre_m79_target_1", "targetname" );
    thread fire_m203( var_0, var_1 );
    wait 1.5;
    wait 2.5;
    _ID42407::_ID10989();
    self.ignoreall = 1;
    self._ID44305 = %casual_killer_walk_shoot_r_makarov;
    self._ID47638 = 1.0;
    self._ID50072 = 0.5;
    self animcustom( ::_ID47090 );
    wait 0.5;
    var_1 = ( 0, 0, 15 );
    thread _ID42407::_ID25088( "m79_shot2", 0.15 );
    var_0 = _ID42237::_ID16638( "massacre_m79_target_2", "targetname" );
    thread fire_m203( var_0, var_1 );
    wait 0.5;
    wait 0.2;
    self animcustom( ::_ID46562 );
    self._ID24424 = 1.15;
    wait 1.5;
    self.ignoreall = 0;
    _ID42237::_ID14402( "massacre_nadethrow" );
    wait 2.5;
    self.ignoreall = 1;
    self._ID44305 = %casual_killer_walk_shoot_r_makarov;
    self._ID47638 = 0.25;
    self._ID50072 = 0.5;
    self animcustom( ::_ID47090 );
    wait 1.05;
    _ID42237::_ID14402( "massacre_elevator_start" );
    var_1 = ( 0, 0, 8 );
    thread _ID42407::_ID25088( "m79_shot3", 0.2 );
    var_0 = _ID42237::_ID16638( "massacre_m79_target_3", "targetname" );
    thread fire_m203( var_0, var_1 );
    wait 0.5;
    self._ID24424 = 1.1;
    wait 0.5;
    _ID42407::_ID12549();
    wait 0.65;
    wait 2.1;
    self animcustom( ::_ID46562 );
    self.ignoreall = 0;
    _ID42237::_ID14402( "massacre_makarov_point_at_rambo" );
    thread _ID42259::_ID3029( self, "casual_killer_walk_point" );
    wait 0.25;
    self._ID24424 = 1.35;
    _ID42407::_ID13027( "massacre_node_end" );
    _ID42237::_ID14402( "massacre_eleveator_should_come_up" );
}

_ID54084( var_0, var_1 )
{
    magicbullet( self._ID949, self gettagorigin( "tag_flash" ), var_0.origin + var_1 );
    playfxontag( _ID42237::_ID16299( "m79_muzzleflash" ), self, "tag_flash" );
    var_2 = %pistol_stand_fire_a;
    self setanimknobrestart( var_2, 1, 0.2, 1.0 );
    _ID42237::_ID10192( getanimlength( var_2 ), ::clearanim, var_2, 0.2 );
}

fire_m203( var_0, var_1 )
{
    magicbullet( "m203_m4", self gettagorigin( "tag_flash" ), var_0.origin + var_1 );
    playfxontag( _ID42237::_ID16299( "m79_muzzleflash" ), self, "tag_flash" );
    _ID42259::_ID3029( self, "grenadier_fire_and_reload" );
}

_ID53586()
{
    wait 2;
    var_0 = getent( "massacre_civ_aim_node", "targetname" );
    var_0.health = 100;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.75 );
    wait 0.5;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.5 );
    self setentitytarget( var_0 );
    self.ignoreall = 0;
    wait 0.5;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.8 );
    wait 0.5;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.5 );
    wait 0.3;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 0.5 );
    wait 0.25;
    thread _ID44356( 0.1, "stop_spray_and_pray" );
    _ID42407::_ID25088( "stop_spray_and_pray", 1.5 );
    wait 0.2;
    _ID52640( 1 );
    wait 1;
    _ID42407::_ID10909();
    self clearentitytarget();
    thread _ID44393( 0, 0.25, 0 );
    _ID42407::_ID1985( _ID42237::_ID14414, "massacre_runners1_dead", "massacre_runners2_dead", "massacre_runners3_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_elevator_prepare_nade" );
    _ID42407::_ID11232();
    self notify( "stop_spray_and_pray" );
}

_ID52640( var_0 )
{
    _ID42407::_ID12452();
    _ID42407::_ID12480();
    self.combatmode = "cover";
    self._ID24424 = 1.0;

    if ( !isdefined( var_0 ) || var_0 == 0 )
        self waittill( "reached_path_end" );

    _ID42407::_ID12480();
}

_ID47090()
{
    self notify( "aim_stop" );
    self endon( "aim_stop" );
    var_0 = self._ID44305;
    var_1 = self._ID47638;
    var_2 = self._ID50072;
    self._ID47638 = undefined;
    self._ID50072 = undefined;
    var_3 = animscripts\utility::_ID22630( "run_n_gun", "F" );
    self setanimlimited( var_3, 1 - var_1, var_2 );
    self setanimlimited( var_0, var_1, var_2 );
    self setflaggedanimknob( "runanim", %run_n_gun, 1, var_2 );

    for (;;)
        wait 1;
}

_ID46562()
{
    self notify( "aim_stop" );
    self endon( "aim_stop" );
    var_0 = self._ID44305;
    var_1 = self._ID50072;

    if ( !isdefined( var_1 ) )
        var_1 = 0.25;

    var_2 = animscripts\utility::_ID22630( "run_n_gun", "F" );
    self setanimlimited( var_2, 1, var_1 );
    self setanimlimited( var_0, 0, var_1 );
    self setflaggedanimknob( "runanim", %run_n_gun, 1, var_1 );
    wait(var_1);
}

_ID54340( var_0 )
{
    level._ID50841 = self;
    self.goalradius = var_0.radius;
    self setgoalnode( var_0 );
    self waittill( "goal" );
    _ID42237::_ID14421( "massacre_elevator_prepare_nade", "massacre_rentacops_stairs_dead" );
    _ID42237::_ID14402( "massacre_elevator_grenade_ready" );

    if ( _ID42237::_ID14385( "massacre_rentacops_stairs_dead" ) )
        return;

    var_0 _ID42259::_ID3020( self, "exposed_grenadeThrowB" );
}

_ID54056( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    self.ignoreall = 1;
    _ID42407::_ID12477();
    self._ID24926 = 1;
    self.ignoreall = 0;
    waitframe;
    var_1 = anim._ID3204._ID10144;
    var_2 = anim._ID3204._ID50730;

    while ( self getanimweight( %h2_casual_killer_jog_2_heat ) != 0 && self getanimtime( %h2_casual_killer_jog_2_heat ) < 0.98 )
        waittillframeend;

    thread force_orientation_for_lean_massacre( var_0 );
    thread _ID50811();
    var_0 = _ID42237::_ID16638( "massacre_civ_lobby_aim_node", "targetname" );
    thread _ID53262( 0, 4, var_0 );
    _ID42407::_ID10226( 1.5, ::_ID47608 );
    _ID42407::_ID13026( "massacre_firing_into_crowd", 1 );
    _ID42237::_ID14413( "massacre_civ_animate" );
    wait 10.5;
    self notify( "stop_burst_fire" );
    self notify( "stop_fire_full_auto" );
    wait 0.25;
    self notify( "stop_spray_and_pray" );
    self.overridearrival = undefined;
    _ID42407::_ID10909();
    self._ID8867 = undefined;
    self._ID9574 = undefined;
    self._ID8374 = undefined;
    self._ID8364 = undefined;
    waitframe;
}

force_orientation_for_lean_massacre( var_0 )
{
    self endon( "stop_spray_and_pray" );

    for (;;)
    {
        if ( abs( self.angles[1] - var_0.angles[1] ) > 5 )
            self orientmode( "face angle", 180 );

        wait 0.1;
    }
}

_ID47608()
{
    self endon( "stop_spray_and_pray" );
    self endon( "stop_burst_fire" );

    for (;;)
    {
        thread _ID44356( 0.1, "stop_fire_full_auto", level._ID30895["m4"]["recoil"] );
        wait(randomfloatrange( 2, 3 ));
        self notify( "stop_fire_full_auto" );
        wait(randomfloatrange( 0.2, 0.4 ));
    }
}

_ID50811()
{
    self._ID8867 = 1;
    var_0 = anim._ID3204._ID10144;
    var_0["add_aim_up"] = %exposed_aim_8;
    var_0["add_aim_down"] = %exposed_aim_2;
    var_0["add_aim_left"] = %exposed_aim_4;
    var_0["add_aim_right"] = %exposed_aim_6;
    var_0["straight_level"] = %covercrouch_lean_aim5;
    animscripts\animset::_ID19583( var_0 );
    animscripts\animset::_ID19582( var_0 );
}

_ID47677( var_0 )
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42407::_ID13027( "gate_ready_to_go" );
    waitframe;
    _ID42237::_ID14413( "gate_main" );
    _ID42237::_ID14413( "gate_player_ready" );
    self pushplayer( 1 );
    _ID42407::_ID10877();
    self._ID24926 = undefined;
    self._ID24424 = 1.15;
    _ID44489();
    self.interval = 50;
    self._ID6323 = weaponclipsize( self.weapon );
    var_1 = getent( "gate_moveup_node_animation", "targetname" );

    switch ( self.script_noteworthy )
    {
        case "saw":
            wait 4;
            var_1 _ID42259::_ID3074( self, "going_down_stairs" );
            _ID42237::_ID14413( "gate_heli_moveon" );
            var_1 _ID42259::_ID3111( self, "going_down_stairs" );
            self pushplayer( 1 );
            self._ID24424 = 1.05;
            _ID42407::_ID10912();
            thread _ID42407::_ID14701( var_0 );
            thread _ID46088();
            break;
        case "makarov":
            wait 0.25;
            var_1 _ID42259::_ID3074( self, "going_down_stairs" );
            thread _ID46088();
            _ID44367( var_0 );
            break;
        case "shotgun":
            wait 0.5;
            self.overrideexitanim = level._ID30895["shotgun"]["walk_start_after_elevator_massacre"];
            var_1 _ID42259::_ID3074( self, "going_down_stairs" );
            _ID42237::_ID14413( "gate_heli_moveon" );
            var_1 _ID42259::_ID3111( self, "going_down_stairs" );
            self pushplayer( 1 );
            _ID42407::_ID10912();
            thread _ID42407::_ID14701( var_0 );
            thread _ID46088();
            break;
        case "m4":
            wait 0.15;
            var_1 _ID42259::_ID3074( self, "going_down_stairs" );
            _ID42237::_ID14413( "gate_heli_moveon" );
            var_1 _ID42259::_ID3111( self, "going_down_stairs" );
            self pushplayer( 1 );
            self._ID24424 = 1.1;
            _ID42407::_ID10912();
            thread _ID42407::_ID14701( var_0 );
            thread _ID46088();
            break;
    }
}

_ID50432( var_0 )
{
    self._ID24424 = 0.9;
    _ID42407::_ID32430( "casual_killer_jog_A" );
    var_0 = getnode( var_0.target, "targetname" );
    var_0 waittill( "trigger" );

    if ( self.script_noteworthy == "saw" )
    {
        var_0 = getnode( var_0.target, "targetname" );
        var_0 waittill( "trigger" );
    }

    wait 0.5;
    _ID42407::_ID7892();
    var_0 = getnode( var_0.target, "targetname" );
    var_0 waittill( "trigger" );
    wait 0.5;

    if ( self.script_noteworthy != "m4" )
        _ID42407::_ID32430( "casual_killer_jog_A" );

    switch ( self.script_noteworthy )
    {
        case "makarov":
            wait 0.75;
        case "shotgun":
            wait 0.5;
        case "saw":
            wait 1;
        case "m4":
            wait 0.15;
            break;
    }

    if ( self.script_noteworthy == "saw" )
        wait 0.55;

    _ID42407::_ID7892();
    self._ID24424 = 1.2;
}

_ID46088()
{
    var_0 = "basement_start_" + self.script_noteworthy;
    var_1 = getnode( var_0, "targetname" );
    var_1 waittill( "trigger" );
    _ID42407::_ID12452();
    _ID42407::_ID12480();
    _ID42407::_ID32430( "casual_killer_jog_A" );
    self._ID24424 = 1.0;
    self._ID6323 = weaponclipsize( self.weapon );
    _ID42237::_ID14402( "basement_near_entrance" );
}

_ID44367( var_0 )
{
    self._ID24424 = 1.35;
    self._ID24424 = 1.27;
    self._ID24424 = 1.2;
    _ID42237::_ID14402( "gate_heli_moveon" );
    var_1 = getent( "gate_moveup_node_animation", "targetname" );
    var_1 _ID42259::_ID3111( self, "going_down_stairs" );
    self._ID24424 = 1.25;
    self pushplayer( 1 );
    _ID42407::_ID10912();
    thread _ID42407::_ID14701( var_0 );

    if ( !_ID42237::_ID14385( "gate_player_off_stairs" ) )
    {
        _ID42237::_ID14402( "player_DMS_allow_sprint" );
        _ID42407::_ID1985( _ID42237::_ID14413, "gate_player_off_stairs" );
        _ID42407::_ID1890( _ID42407::_ID14389, "player_DMS_allow_sprint", 1.0 );
        thread _ID42407::_ID11231();
    }

    wait 0.5;
    thread _ID49014();
}

_ID51398( var_0, var_1 )
{
    self endon( "death" );

    if ( var_0.health <= 0 )
        return;

    _ID42407::_ID1985( _ID42407::_ID1687, var_0._ID916 );
    var_0 _ID42407::_ID1841( _ID42407::_ID41116, "death" );
    _ID42407::_ID1890( ::_ID44841, var_0 );
    thread _ID42407::_ID11231();
    _ID51153( var_0 );
    _ID47984::_ID44498();
    _ID47984::_ID43210( var_1 );
    self._ID11575 = 1;
    _ID42407::_ID10910();
    _ID42407::_ID13025( "aiming_at_civ" );
    var_2 = var_0;

    if ( isai( var_0 ) )
    {
        var_2 = spawn( "script_origin", var_0.origin + ( 0, 0, 35 ) );
        var_2.health = 100;
        var_2 linkto( var_0 );
    }

    self setentitytarget( var_2 );
    wait 0.5;

    if ( var_0.health > 0 )
        var_0 waittill( "death" );

    wait 0.25;
    self notify( "upperdeck_canned_deaths_execute_fire" );
    wait 0.25;
    self clearentitytarget();

    if ( var_2 != var_0 )
        var_2 delete();

    _ID42407::_ID10909();
    _ID42407::_ID12479( undefined, undefined, undefined, undefined, level.team, 1 );
    _ID42407::_ID13021( "aiming_at_civ" );
    _ID47984::_ID43210( "straight" );
    _ID47984::_ID46279();
    _ID42407::_ID41232();
}

_ID51654( var_0, var_1 )
{
    foreach ( var_3 in level._ID805 )
    {
        if ( distancesquared( var_3.origin, self.origin ) < squared( var_1 ) )
            return 1;
    }

    return 0;
}

_ID51900()
{
    _ID42237::_ID14413( "basement_moveout" );
    self delete();
}

_ID47998()
{
    self.health = 1;
    self.ignoreexplosionevents = 1;
    self.ignoreme = 1;
    self.ignorerandombulletdamage = 1;
    self.grenadeawareness = 0;
    _ID42407::_ID10973();
    self endon( "death" );

    switch ( self._ID70 )
    {
        case "civilian_crawl_1":
            _ID42259::_ID3023( self, "civilian_crawl_1" );
            _ID42407::_ID14741( self.angles[1], 3, level._ID30895["crawl_death_1"], 1 );
            break;
        case "civilian_crawl_2":
            _ID42259::_ID3023( self, "civilian_crawl_1" );
            _ID42407::_ID14741( self.angles[1], 3, level._ID30895["crawl_death_1"], 1 );
            break;
        case "dying_crawl":
            _ID42259::_ID3023( self, "dying_crawl" );
            _ID42407::_ID14741( self.angles[1], 4, undefined, 1 );
            break;
    }

    self dodamage( 1, level.player.origin );
    self._ID24924 = 1;
    _ID42237::_ID14402( "delete_massacre_dummies" );
}

_ID47873()
{
    wait 0.05;
    self.allowdeath = 1;
    thread _ID42259::_ID3025( self, self._ID70 );
    self.usechokepoints = 0;
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.ignorerandombulletdamage = 1;
    self.ignoreexplosionevents = 1;
    self.grenadeawareness = 0;
    self.ignoresuppression = 1;
    self._ID11002 = 1;
    _ID42407::_ID10973();
}

_ID51216()
{
    self endon( "death" );
    _ID47873();

    if ( !isdefined( level._ID45923 ) )
    {
        level._ID45923 = [];
        level._ID45923[level._ID45923.size] = self;
        wait 0.1;
        thread _ID51442( level._ID45923, "scn_airport_running_screams1" );
        wait 0.05;
        level._ID45923 = undefined;
    }
    else
        level._ID45923[level._ID45923.size] = self;

    wait(randomfloat( 1 ));
    self notify( "stop_loop" );
    self stopanimscripted();
    self.interval = 50;
    self.ignorerandombulletdamage = 0;
    var_0 = getnode( self.target, "targetname" );
    _ID42407::_ID14701( var_0 );
    wait 0.25;
    self delete();
}

_ID53675()
{
    self endon( "death" );
    _ID47873();
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 = undefined;
    var_2 = undefined;

    switch ( var_0.targetname )
    {
        case "gate_civ_slide":
            self._ID24424 = 1.0;
            var_1 = "civilian_run_hunched_turnR90_slide";
            var_2 = "civilian_run_hunched_A";
            wait 0.25;
            break;
        case "gate_civ_slide2":
            var_1 = "airport_civilian_run_turnR_90";
            var_2 = "civilian_run_hunched_C";
            self._ID24424 = 1.15;
            break;
    }

    wait 5.5;
    self notify( "stop_loop" );
    self stopanimscripted();
    self.interval = 50;
    self.ignorerandombulletdamage = 0;
    _ID42407::_ID32328( var_2, 1 );
    var_0 _ID42259::_ID3027( self, var_1 );
    var_0 _ID42259::_ID3029( self, var_1 );
    _ID42407::_ID14701( getnode( "gate_civ_node", "targetname" ) );
    wait 0.25;
    self delete();
}

_ID48986()
{
    _ID42237::_ID14413( "gate_do_status" );
    wait 1;
    var_0 = getentarray( "snd_departure_board", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 playsound( var_2._ID31438 );

    var_4 = _ID42237::_ID3320( level._ID46762 );

    foreach ( var_7, var_6 in var_4 )
        var_6 _ID42407::_ID10226( var_7 * 0.1, ::_ID43595, "delayed" );
}

_ID51472()
{
    wait(randomfloat( 0.5 ));
    var_0 = randomfloatrange( 1, 1.15 );

    for (;;)
    {
        self rotateyaw( 360, var_0 );
        self waittill( "rotatedone" );
    }
}

_ID53769()
{
    var_0 = 85;
    var_1 = getent( "gate_gate_closing", "targetname" );
    var_2 = getent( "gate_gate_closing2", "targetname" );
    var_2 connectpaths();
    var_1 movez( var_0, 0.25 );
    var_2 movez( var_0 * 2, 0.25 );
}

_ID46070()
{
    var_0 = 85;
    var_1 = getent( "gate_gate_closing", "targetname" );
    var_2 = getent( "gate_gate_closing2", "targetname" );
    var_3 = 1.5;
    var_1 movez( var_0 * -1, 1 );
    var_2 movez( var_0 * -2, 1 );
    var_1 playsound( "scn_airport_sec_gate_close" );
    wait(var_3 * 2);
    var_2 disconnectpaths();
    var_3 = 0.1;
    var_1 movez( 2, 1 );
    var_2 movez( 2, 1 );
    wait(var_3);
    var_1 movez( -2, 1 );
    var_2 movez( -2, 1 );
}

gate_player_sprint()
{
    _ID42237::_ID14413( "gate_player_off_stairs" );
    _ID42237::_ID14402( "player_DMS_disable_auto_sprint" );
    wait 5.0;
    _ID42237::_ID14388( "player_DMS_disable_auto_sprint" );
}

_ID51927()
{
    _ID42237::_ID14413( "gate_heli_moveon" );
    _ID42237::_ID14388( "player_dynamic_move_speed" );
    wait 0.05;
    _ID42237::_ID14402( "player_DMS_allow_sprint" );
    _ID42237::_ID14413( "gate_player_off_stairs" );
    thread _ID53994();
}

_ID47256()
{
    self endon( "death" );
    self.ignoreall = 1;
    self.ignoreme = 1;
    _ID42407::_ID1985( _ID42407::_ID41116, "damage" );
    _ID42407::_ID1890( _ID42407::_ID32352, 0 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42407::_ID41116, "goal" );
    _ID42407::_ID1985( _ID42407::_ID38928, "tarmac_security", "target" );
    _ID42407::_ID11232();
    self delete();
}

_ID49482()
{
    self endon( "death" );
    self notify( "move" );
    _ID42407::_ID38928( "tarmac_security", "target" );
    self delete();
}

_ID50794()
{
    var_0 = getnodearray( "basement_moveup1", "targetname" );
    var_1 = undefined;
    var_2 = _ID42237::_ID16638( "tarmac_breach_origin", "targetname" );

    foreach ( var_4 in var_0 )
    {
        switch ( var_4.script_noteworthy )
        {
            case "saw":
                var_2 _ID42407::_ID10226( 0.5, _ID42259::_ID3111, level.team["saw"], "lev_first_breach" );
                level.team[var_4.script_noteworthy] _ID42407::_ID10226( 0.8, _ID42407::_ID14701, var_4 );
                level.team[var_4.script_noteworthy].nocornertwitchanim = 1;
                continue;
            default:
                var_2 _ID42259::_ID3074( level._ID54299, "makarov_first_breach" );
                var_2 thread _ID42259::_ID3111( level._ID54299, "makarov_first_breach" );
                level.team[var_4.script_noteworthy] _ID42407::_ID12467();
                level.team[var_4.script_noteworthy] thread _ID42407::_ID14701( var_4 );
                var_1 = var_4;
                continue;
        }
    }

    level._ID54299 waittill( "reached_path_end" );
    _ID42407::_ID10226( 1, _ID42407::_ID28864, "airport_mkv_thisway" );
    level.team["saw"].nodeexitignoreactors = 1;
    level.team["saw"].exitnode_overridetranstime = 0.4;
    level._ID54299 _ID42407::_ID10912();
    var_1 thread _ID42259::_ID3029( level._ID54299, "doorkick_basement" );
    level._ID54299 waittillmatch( "single anim",  "kick"  );
    level._ID54299 _ID42407::_ID10226( 2, _ID42407::_ID12480 );
    level.team["saw"] _ID42407::_ID10226( 2, ::basement_saw_reset_node_exit_ignore_actors );
}

basement_saw_reset_node_exit_ignore_actors()
{
    level.team["saw"].nodeexitignoreactors = undefined;
    level.team["saw"].exitnode_overridetranstime = undefined;
    level.team["saw"].nocornertwitchanim = undefined;
}

_ID44516()
{
    _ID42237::_ID14413( "basement_mak_speach" );
    var_0 = level._ID54299._ID21851;
    level._ID54299 _ID42407::_ID10226( 2.25, _ID42407::_ID10805, "airport_mkv_forzakhaev" );
    var_0 thread _ID42259::_ID3024( level._ID54299, "bog_a_start_briefing" );
    wait 3.75;
    level._ID54299 notify( "stop_animmode" );
    level._ID54299 stopanimscripted();
}

_ID46359()
{
    self endon( "basement_moveout" );
    _ID42237::_ID14413( "gate_heli_moveon" );
    self.nododgemove = 1;
    self._ID3264 = undefined;
    self waittill( "reached_path_end" );
    self.nododgemove = 0;
    _ID51786();
    _ID42407::_ID12452();
    self._ID24424 = 1.0;
    self.combatmode = "cover";
    var_0 = self._ID21851;
    var_1 = var_0.script_noteworthy;
    var_2 = _ID42237::_ID16638( "tarmac_breach_origin", "targetname" );
    var_2 _ID42259::_ID3074( level.team[var_1], "first_breach_arrival" );
    var_2 _ID42259::_ID3111( level.team[var_1], "first_breach_arrival" );
    self.goalradius = 32;
    self setgoalnode( var_0 );
    self waittill( "goal" );
    self.goalradius = 4;

    if ( self.script_noteworthy == "makarov" )
        _ID42237::_ID14402( "basement_mak_speach" );

    _ID42407::_ID12480();
    _ID42407::_ID7892();
    level notify( self.script_noteworthy + "_ready" );
    var_2 _ID42259::_ID3044( level.team[var_1], "first_breach_loop", "basement_moveout" );
}

_ID46852()
{
    foreach ( var_1 in level.team )
        var_1 _ID42407::_ID12467();

    var_3 = getnodearray( "basement_moveup2", "targetname" );
    var_4 = _ID42237::_ID16638( "tarmac_breach_origin", "targetname" );

    foreach ( var_6 in var_3 )
    {
        var_7 = var_6.script_noteworthy;

        if ( var_7 == "makarov" )
        {
            level.team[var_7] thread _ID42407::_ID14701( var_6 );
            continue;
        }

        if ( var_7 == "saw" )
        {
            level.team[var_7].nododgemove = 1;
            level.team[var_7] _ID42407::_ID10226( 0.95, _ID42407::_ID14701, var_6 );
            continue;
        }

        if ( var_7 == "m4" )
        {
            var_4 thread _ID42259::_ID3111( level.team[var_7], "viktor_first_breach" );
            level.team[var_7] _ID42407::_ID10226( 0.25, _ID42407::_ID14701, var_6 );
            continue;
        }

        thread basement_moveup_shotgun( var_4, var_6 );
    }

    level.team["shotgun"] pushplayer( 0 );
    level.team["m4"] pushplayer( 0 );
    level._ID54299 waittill( "reached_path_end" );
    _ID42237::_ID14402( "basement_mak_saw_riot" );
    level._ID54299 thread _ID42259::_ID3020( level._ID54299, "CornerStndR_alert_signal_enemy_spotted" );
}

basement_moveup_shotgun( var_0, var_1 )
{
    wait 0.5;
    var_0 thread _ID42259::_ID3111( level.team["shotgun"], "kiril_first_breach" );
    level.team["shotgun"] _ID42407::_ID10226( 0.25, _ID42407::_ID14701, var_1 );
}

_ID48560()
{
    var_0 = self getlightintensity();

    for (;;)
    {
        self setlightintensity( var_0 * randomfloatrange( 0.5, 1.25 ) );
        wait 0.1;
    }
}

_ID45508()
{
    if ( isdefined( self._ID31152 ) )
        return;

    var_0 = _ID42298::_ID15974( level.player._ID15361 );

    switch ( var_0 )
    {
        case "easy":
            self.grenadeammo = 0;

            if ( isdefined( self._ID4867 ) )
                self._ID4867 = self._ID4867 * 0.5;

            break;
        case "normal":
            self.grenadeammo = 0;

            if ( isdefined( self._ID4867 ) )
                self._ID4867 = self._ID4867 * 0.5;

            break;
    }
}

_ID46182( var_0 )
{
    _ID42237::_ID14402( var_0 );
    self endon( "death" );
    self.ignoreme = 1;
    self.ignoreall = 1;
    self waittill( "unload" );
    self.ignoreme = 0;
    self.ignoreall = 0;

    if ( isdefined( self.script_noteworthy ) && issubstr( self.script_noteworthy, "tarmac_van_riotshield_guys" ) )
        return;

    if ( isdefined( self.target ) )
    {
        var_1 = getnode( self.target, "targetname" );
        self setgoalnode( var_1 );
        self.goalradius = var_1.radius;
        _ID42407::_ID38929( "tarmac_advance5" );
    }

    _ID42407::_ID32315( "blue" );
}

_ID51192()
{
    var_0 = self;
    var_1 = getvehiclenode( "tarmac_van_mid_path", "script_noteworthy" );
    var_1 _ID42407::_ID1985( _ID42407::_ID41116, "trigger" );
    var_0 _ID42407::_ID1890( _ID42407::_ID10226, 0.1, _ID42407::_ID27079, "airport_tire_skid" );
    var_1 _ID42407::_ID1890( _ID42237::_ID14402, "tarmac_van_mid_path" );
    _ID42407::_ID1890( maps\airport::_ID43395 );
    thread _ID42407::_ID11231();
    var_1 = getvehiclenode( "tarmac_van_almost_end_path", "script_noteworthy" );
    var_1 _ID42407::_ID1985( _ID42407::_ID41116, "trigger" );
    var_1 _ID42407::_ID1890( _ID42407::_ID14403, "tarmac_van_almost_end_path", 1 );
    thread _ID42407::_ID11231();
    var_1 = getvehiclenode( "tarmac_van_end_path", "targetname" );
    var_1 _ID42407::_ID1985( _ID42407::_ID41116, "trigger" );
    var_1 _ID42407::_ID1890( _ID42237::_ID14402, "tarmac_van_end_path" );
    _ID42407::_ID11231();
}

_ID47649( var_0, var_1, var_2 )
{
    _ID42237::_ID14413( var_0 );
    wait 0.1;
    var_3 = _ID42407::_ID15817( var_2, "script_noteworthy" );
    _ID42237::_ID3350( var_3, ::tarmac_hide_until_ride_end, var_1 );

    if ( !var_3.size )
    {
        level notify( "tarmac_riotshield_group_van_ready" );
        return;
    }

    var_4 = _ID42237::_ID16638( var_3[0].target, "targetname" );
    var_5 = anglestoforward( var_4.angles );
    var_6 = _ID42360::_ID17441( var_3 );
    var_6 thread _ID47618( var_3 );
    var_6 endon( "break_group" );

    foreach ( var_8 in var_3 )
        var_8 _ID42407::_ID10912();

    var_6 _ID42360::_ID17465();
    var_6 _ID42360::_ID17454( var_5 );
    var_6 _ID42360::_ID17451( var_5 );
    var_6 _ID42360::_ID17456( var_4.origin, var_5 );
    var_6 waittill( "goal" );
    var_6 _ID42360::_ID17464();

    foreach ( var_8 in var_3 )
        var_8 _ID42407::_ID12480();

    level notify( "tarmac_riotshield_group_van_ready" );
}

get_van2()
{
    level.van2 = self;
}

tarmac_hide_until_ride_end( var_0 )
{
    if ( isdefined( var_0 ) && var_0 != "tarmac_swat_van2" )
        return;

    self hide();
    level.van2 waittill( "reached_end_node" );
    _ID42237::_ID10192( 0.2, ::show );
}

_ID54088()
{
    level waittill( "tarmac_riotshield_group_van_ready" );
    level notify( "redoing_riot_groups" );
    level endon( "tarmac_riotshield_group_last_stand" );
    var_0 = _ID42407::_ID15817( "tarmac_van_riotshield_guys", "script_noteworthy" );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15817( "tarmac_van_riotshield_guys2", "script_noteworthy" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15817( "riotshield_group_1", "script_noteworthy" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15817( "riotshield_group_2", "script_noteworthy" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15817( "riotshield_group_3", "script_noteworthy" ) );
    var_1 = _ID42360::_ID17441( var_0 );

    if ( var_1._ID2237.size < 9 )
        var_1._ID14549 = 2;
    else
        var_1._ID14549 = floor( var_1._ID2237.size * 0.25 );

    var_1 thread _ID53874( var_0 );
    var_1 endon( "break_group" );
    var_1 _ID42360::_ID17464();

    foreach ( var_3 in var_0 )
        var_3 _ID42407::_ID12480();

    var_5 = _ID42237::_ID16638( "tarmac_riot_node_retreat1_group_van", "targetname" );
    var_6 = anglestoforward( var_5.angles );
    var_1 _ID42360::_ID17454( var_6 );
    var_1 _ID42360::_ID17451( var_6 );
    var_1 _ID42360::_ID17456( var_5.origin, var_6 );
    var_1 thread _ID54318();
    var_1 _ID42237::_ID41123( "goal", 5 );
    _ID42237::_ID14402( "tarmac_van_guys_far_enough" );
}

_ID51138()
{
    _ID42407::_ID38928( "tarmac_advance6", "targetname" );
    var_0 = _ID42407::_ID15817( "tarmac_van_riotshield_guys", "script_noteworthy" );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15817( "tarmac_van_riotshield_guys2", "script_noteworthy" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15817( "riotshield_group_1", "script_noteworthy" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15817( "riotshield_group_2", "script_noteworthy" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15817( "riotshield_group_3", "script_noteworthy" ) );
    var_1 = [];
    var_1["weak"] = _ID42237::_ID16638( "tarmac_riotshield_van2_retreat1", "targetname" );
    var_1["center"] = _ID42237::_ID16638( "tarmac_riotshield_consolodate_node", "targetname" );
    var_1["strong"] = _ID42237::_ID16638( "tarmac_riotshield_van1_retreat1", "targetname" );
    _ID54263( var_0, var_1 );
    _ID42407::_ID38928( "tarmac_retreat5", "targetname" );
    var_0 = _ID42407::_ID3328( var_0 );
    var_1 = [];
    var_1["weak"] = _ID42237::_ID16638( "tarmac_riotshield_last_stand_right", "targetname" );
    var_1["center"] = _ID42237::_ID16638( "tarmac_riotshield_last_stand_center", "targetname" );
    var_1["strong"] = _ID42237::_ID16638( "tarmac_riotshield_last_stand_left", "targetname" );
    var_2 = _ID54263( var_0, var_1 );
    _ID42407::_ID38928( "tarmac_retreat6", "targetname" );

    if ( !isdefined( var_2 ) )
        return;

    foreach ( var_4 in var_2 )
        var_4._ID14549 = 10;
}

_ID54263( var_0, var_1 )
{
    level notify( "tarmac_riotshield_group_last_stand" );
    level notify( "redoing_riot_groups" );
    var_2 = [];
    var_3 = [];

    foreach ( var_5 in var_0 )
    {
        if ( var_5.combatmode != "no_cover" )
            continue;

        var_3[var_3.size] = var_5;
    }

    var_0 = var_3;

    switch ( var_0.size )
    {
        case 0:
            return;
        case 1:
        case 2:
        case 3:
        case 4:
            var_2["center"] = var_0;
            break;
        case 5:
        case 6:
            var_2["center"] = _ID42237::_ID15567( var_1["strong"].origin, var_0, undefined, 3 );
            var_2["strong"] = _ID42237::_ID3322( var_0, var_2["center"] );
            break;
        default:
            var_7 = var_0.size / 3 - 0.2;
            var_8 = ceil( var_7 );
            var_9 = ceil( var_7 * 2 );
            var_2["strong"] = _ID42237::_ID15566( var_1["strong"].origin, var_0, undefined, var_0.size - var_9 );
            var_0 = _ID42237::_ID3322( var_0, var_2["strong"] );
            var_2["weak"] = _ID42237::_ID15566( var_1["weak"].origin, var_0, undefined, var_0.size - var_8 );
            var_2["center"] = _ID42237::_ID3322( var_0, var_2["weak"] );
            break;
    }

    var_10 = [];

    foreach ( var_18, var_12 in var_2 )
    {
        foreach ( var_5 in var_12 )
            var_5 _ID42407::_ID12480();

        var_15 = var_1[var_18];
        var_16 = anglestoforward( var_15.angles );
        var_17 = _ID42360::_ID17441( var_12 );

        if ( var_17._ID2237.size > 3 )
            var_17._ID14549 = 2;

        var_17 thread _ID53874( var_12 );
        var_17 _ID42360::_ID17464();
        var_17 _ID42360::_ID17454( var_16 );
        var_17 _ID42360::_ID17451( var_16 );
        var_17 _ID42360::_ID17456( var_15.origin, var_16 );
        var_17 thread _ID54318();
        var_10[var_10.size] = var_17;
    }

    return var_10;
}

_ID47618( var_0 )
{
    level endon( "redoing_riot_groups" );
    self waittill( "break_group" );
    var_0 = _ID42407::_ID3328( var_0 );

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42407::_ID30028();
        var_2 _ID42360::_ID30023();
        var_2.goalradius = 1024;
        var_2 _ID42407::_ID32315( "blue" );
    }
}

_ID54352()
{
    self endon( "death" );
    self setgoalpos( self.origin );
    self.goalradius = 16;
    _ID42407::_ID10912();
    _ID42237::_ID14413( "tarmac_heat_fight" );
    wait 1.3;
    var_0 = getnode( self.target, "targetname" );

    if ( !isdefined( var_0 ) )
        var_0 = _ID42237::_ID16638( self.target, "targetname" );

    var_1 = undefined;

    if ( !isdefined( var_0.classname ) )
    {
        if ( !isdefined( var_0.type ) )
            var_1 = "struct";
        else
            var_1 = "node";
    }
    else
        var_1 = "origin";

    var_2 = 300;
    thread _ID42372::_ID16964( var_0, var_1, undefined, var_2 );
    wait 1;
    _ID42407::_ID12480();
}

_ID48267()
{
    self endon( "death" );
    self._ID11575 = 1;
    self.targetname = "tarmac_enemies_wave1";
    thread _ID42407::_ID12541();
    _ID42407::_ID12541();
    _ID42407::_ID1985( _ID42407::_ID41116, "damage" );
    _ID42407::_ID1985( _ID42407::_ID41116, "bullet_hitshield" );
    level _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_open_fire" );
    _ID42407::_ID11232();
    _ID42237::_ID14402( "tarmac_open_fire" );
    wait(randomfloatrange( 0.75, 1.25 ));
    self._ID11575 = undefined;

    if ( !isdefined( self.script_noteworthy ) || !issubstr( self.script_noteworthy, "riotshield_group" ) )
        self.goalradius = 1500;
    else
        return;

    _ID42407::_ID38929( "tarmac_retreat1" );
    _ID42407::_ID32315( "blue" );
}

_ID44412()
{
    self endon( "death" );
    self waittill( "goal" );
    wait 0.1;
    self.goalradius = 1024;
    _ID42237::_ID14413( "tarmac_advance4" );
    _ID42407::_ID32315( "blue" );
}

_ID49427( var_0 )
{
    _ID42237::_ID14413( "tarmac_heat_fight" );
    level endon( "tarmac_riotshield_group_van_ready" );
    level endon( "redoing_riot_groups" );
    wait 0.05;
    var_1 = anglestoforward( ( 0, 360, 0 ) );
    var_2 = _ID42407::_ID15817( var_0, "script_noteworthy" );

    foreach ( var_4 in var_2 )
        var_4 _ID42407::_ID30019( 360 );

    var_6 = _ID42360::_ID17441( var_2 );

    if ( var_6._ID2237.size > 3 )
        var_6._ID14549 = 2;

    var_6 _ID42360::_ID17451( var_1 );
    var_6 endon( "break_group" );
    var_6 thread _ID53874( var_2 );
    var_7 = undefined;
    var_8 = undefined;

    switch ( var_0 )
    {
        case "riotshield_group_1":
            var_8 = "group1";
            break;
        case "riotshield_group_2":
            var_8 = "group2";
            break;
    }

    wait 10;
    _ID42237::_ID14413( "tarmac_retreat1" );
    var_7 = _ID42237::_ID16638( "tarmac_riot_node_retreat1_" + var_8, "targetname" );
    var_6 _ID42360::_ID17456( var_7.origin, var_1 );
    var_6 thread _ID54318();
    _ID42237::_ID14413( "tarmac_retreat2" );
    var_7 = _ID42237::_ID16638( "tarmac_riot_node_retreat2_" + var_8, "targetname" );
    var_6 _ID42360::_ID17456( var_7.origin, var_1 );
    var_6 thread _ID54318();
    _ID42237::_ID14413( "tarmac_retreat3" );
    var_7 = _ID42237::_ID16638( "tarmac_riot_node_retreat3_" + var_8, "targetname" );
    var_6 _ID42360::_ID17456( var_7.origin, var_1 );
    var_6 thread _ID54318();
}

_ID54318()
{
    var_0 = _ID42407::_ID3328( self._ID2237 );

    if ( !var_0.size )
        return;

    _ID42360::_ID17443();

    foreach ( var_2 in var_0 )
    {
        var_2 notify( "tarmac_retreat_logic" );
        var_2 _ID42407::_ID1985( _ID42407::_ID41116, "goal" );
        level _ID42407::_ID1886( "redoing_riot_groups" );
        _ID42407::_ID1886( "break_group" );
        var_2 _ID42407::_ID1886( "damage" );
        var_2 _ID42407::_ID1886( "bad_path" );
        var_2 _ID42407::_ID1841( _ID42407::_ID41116, "tarmac_retreat_logic" );
        var_2 _ID42407::_ID1890( _ID42360::_ID30011 );
        thread _ID42407::_ID11231();
    }
}

_ID53874( var_0 )
{
    level endon( "redoing_riot_groups" );
    self waittill( "break_group" );
    var_0 = _ID42407::_ID3328( var_0 );

    foreach ( var_2 in var_0 )
        var_2 _ID42407::_ID32315( "blue" );
}

_ID43289()
{
    level endon( "tarmac_riotshield_group_van_ready" );
    _ID42407::_ID38928( "tarmac_enemies_wave2", "target" );
    var_0 = _ID42237::_ID16638( "tarmac_riot_node_group3", "targetname" );
    wait 0.05;
    var_1 = anglestoforward( var_0.angles );
    var_2 = _ID42407::_ID15817( "riotshield_group_3", "script_noteworthy" );
    var_3 = _ID42360::_ID17441( var_2 );
    var_3._ID14549 = 2;
    var_3 _ID42360::_ID17454( anglestoforward( ( 0, 360, 0 ) ) );
    var_3 _ID42360::_ID17451( var_1 );
    var_3 thread _ID48525( var_2 );
    var_3 _ID42360::_ID17456( var_0.origin, var_1 );
    var_3 _ID42360::_ID17465();
    var_3 _ID42407::_ID1985( _ID42407::_ID41116, "goal" );
    var_3 _ID42407::_ID1985( _ID42407::_ID41116, "break_group" );
    level _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_advance4" );
    _ID42407::_ID11232();
    var_3 _ID42360::_ID17464();
    level notify( "redoing_riot_groups" );
    var_2 = _ID42407::_ID15817( "riotshield_group_3", "script_noteworthy" );
    var_2 = _ID42237::_ID3296( var_2, _ID42407::_ID15817( "riotshield_group_1", "script_noteworthy" ) );
    var_2 = _ID42237::_ID3296( var_2, _ID42407::_ID15817( "riotshield_group_2", "script_noteworthy" ) );
    var_3 = _ID42360::_ID17441( var_2 );
    var_3._ID14549 = 2;
    var_3 _ID42360::_ID17454( var_1 );
    var_3 _ID42360::_ID17451( var_1 );
    var_3 thread _ID48525( var_2 );
    var_3 _ID42360::_ID17456( var_0.origin, var_1 );
    var_3 thread _ID54318();
    _ID42237::_ID14413( "tarmac_advance4" );
    var_0 = _ID42237::_ID16638( "tarmac_riot_node_group3_retreat1", "targetname" );
    var_1 = anglestoforward( var_0.angles );
    var_3 _ID42360::_ID17454( var_1 );
    var_3 _ID42360::_ID17451( var_1 );
    var_3 _ID42360::_ID17456( var_0.origin, var_1 );
    var_3 thread _ID54318();
}

_ID48525( var_0 )
{
    level endon( "redoing_riot_groups" );
    self waittill( "break_group" );
    var_0 = _ID42407::_ID3328( var_0 );

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42360::_ID30023();
        var_2 _ID42407::_ID30028();
        var_2 _ID42407::_ID32315( "blue" );
    }
}

_ID52499()
{
    self endon( "death" );
    self endon( "long_death" );
    self.ignoreme = 1;
    self.interval = 0;
    self._ID10998 = 1;
    _ID42407::_ID10973();
    self._ID11002 = 1;
    _ID42407::_ID32328( "sprint_loop_distant" );
    self waittill( "reached_path_end" );
    self delete();
}

_ID48665()
{
    self endon( "death" );
    self endon( "long_death" );
    _ID42237::_ID14402( "tarmac_enemies_2ndfloor" );
    self.interval = 0;
    self setthreatbiasgroup( "2ndfloorenemies" );
    _ID42407::_ID10973();
    self waittill( "goal" );
    self.ignoreall = 0;
    var_0 = getnode( self.target, "targetname" );

    if ( isdefined( var_0.script_noteworthy ) && var_0.script_noteworthy == "flash_throw" )
    {
        waitframe;
        self.goalradius = 8;
        self.ignoreall = 1;
        wait(randomfloatrange( 0.5, 1 ));
        self.allowdeath = 1;

        if ( _ID42237::_ID8201() )
            _ID42259::_ID3020( self, "coverstand_grenadeA" );
        else
            _ID42259::_ID3020( self, "coverstand_grenadeB" );

        self.goalradius = 512;
        self.ignoreall = 0;
    }

    _ID42237::_ID14421( "tarmac_advance6", "tarmac_2ndfloor_move_back" );
    self.ignoreall = 1;
    self.ignoreme = 1;
    var_1 = getnodearray( "floor2_covernodes2", "targetname" );

    foreach ( var_0 in var_1 )
    {
        if ( isdefined( var_0._ID49404 ) )
            continue;

        self.goalradius = 8;
        var_0._ID49404 = self;
        self setgoalnode( var_0 );
        break;
    }

    self waittill( "goal" );
    self.goalradius = 512;
    self.ignoreall = 0;
    self.ignoreme = 0;
    _ID42237::_ID14413( "tarmac_clear_out_2nd_floor" );
    self.ignoreall = 1;
    self.ignoreme = 1;
    self.goalradius = 64;
    var_0 = getnode( "tarmac_2ndfloor_clearout", "targetname" );
    self setgoalpos( var_0.origin );
    self waittill( "goal" );
    self delete();
}

_ID44354( var_0, var_1 )
{
    level notify( "spawned" + var_1 );
    thread maps\airport_aud::start_tarmac_swat_van( var_0 );
}

_ID53768( var_0 )
{
    var_1 = spawn( "script_model", self.origin );
    var_1.angles = self.angles;
    var_1 setmodel( self.model );
    level waittill( "spawned" + var_0 );
    var_1 delete();
}

_ID46269()
{
    self waittill( "drone_spawned",  var_0  );
    var_0 waittill( "death" );

    for (;;)
    {
        wait 8;
        self.count = 1;
        var_0 = _ID42407::_ID35014();
        var_0 waittill( "death" );
    }
}

_ID46314()
{
    self endon( "death" );
    wait 0.1;
    self.allowdeath = 1;
    _ID52279();
    _ID42407::_ID13024( "moving" );
    _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID1890( _ID42237::_ID14402, "tarmac_killed_security" );
    thread _ID42407::_ID11231();
    self._ID48950 = level.player;
    self._ID29357 = spawn( "script_origin", self.origin );
    _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    self._ID29357 _ID42407::_ID1855( ::delete );
    thread _ID42407::_ID11231();

    if ( isdefined( self.script_noteworthy ) )
        thread _ID46034();
    else
        thread _ID48770();

    for (;;)
    {
        self notify( "tarmac_police_fire" );
        _ID42237::_ID14421( "tarmac_too_far", "tarmac_killed_security" );
        wait(randomfloat( 1 ));
        thread _ID46028();
        _ID42237::_ID14426( "tarmac_too_far" );
        _ID42237::_ID14426( "tarmac_killed_security" );
    }
}

_ID48770()
{
    self endon( "death" );
    self._ID48950 endon( "death" );
    _ID46134();

    for (;;)
    {
        _ID48828();
        wait 0.1;
    }
}

_ID46034()
{
    self endon( "death" );
    self._ID48950 endon( "death" );
    self._ID48946["stand"] = ::_ID44533;
    self._ID48946["walk"] = ::_ID50826;
    self._ID48946["run"] = ::_ID46350;
    self.radius = 16;
    var_0 = _ID42237::_ID16638( self.target, "targetname" );
    var_1 = "walk";

    for (;;)
    {
        if ( var_0.script_noteworthy == "stand" )
            _ID51399( var_0, var_1 );

        var_1 = var_0.script_noteworthy;
        _ID51399( var_0, var_1 );
        var_0 = _ID42237::_ID16638( var_0.target, "targetname" );
    }
}

_ID44533( var_0 )
{
    _ID46134();
    var_1 = 0.1;

    for ( var_2 = randomfloatrange( 5, 10 ); var_2 > 0; var_2 -= var_1 )
    {
        _ID48828();
        wait(var_1);
    }

    self._ID29357 notify( "stop_loop" );
    self stopanimscripted();
    self unlink();
}

_ID46134()
{
    self._ID29357.origin = self.origin;
    self._ID29357.angles = self.angles;
    self linkto( self._ID29357 );
    self clearanim( %body, 0.2 );
    self stopanimscripted();
    self setflaggedanimknoballrestart( "drone_anim", %pistol_stand_aim_5, %body, 1, 0.2, 1 );
}

_ID48828()
{
    var_0 = ( self._ID48950.origin[0], self._ID48950.origin[1], self.origin[2] );
    var_1 = vectortoangles( var_0 - self.origin );
    self._ID29357 rotateto( var_1, 0.05 );
}

_ID50826( var_0 )
{
    var_1 = ( self._ID48950.origin[0], self._ID48950.origin[1], self.origin[2] );
    var_2 = var_1 - self.origin;
    var_3 = anglestoright( vectortoangles( var_2 ) );
    var_4 = var_0.origin - self.origin;

    if ( vectordot( var_2, var_4 ) > 0.4 )
        self._ID44885 = "pistol_walk";
    else if ( vectordot( var_3, var_4 ) >= 0.6 )
        self._ID44885 = "pistol_walk_left";
    else if ( vectordot( var_3, var_4 ) <= 0.6 )
        self._ID44885 = "pistol_walk_right";
    else
        self._ID44885 = "pistol_walk_back";

    self._ID52186 = 1.0;
    _ID50483( var_0 );
}

_ID46350( var_0 )
{
    self._ID44885 = "pistol_sprint";
    self._ID52186 = 0.8;
    _ID50483( var_0 );
}

_ID50483( var_0 )
{
    thread _ID51474( var_0 );
    _ID44218( var_0 );
    self clearanim( %body, 0.2 );
    self stopanimscripted();
}

_ID51474( var_0 )
{
    self endon( "death" );
    self endon( "goal" );
    self._ID48950 endon( "death" );
    self clearanim( %body, 0.2 );
    self stopanimscripted();
    self setflaggedanimknoballrestart( "drone_anim", _ID42407::_ID16122( self._ID44885 ), %body, 1, 0.2, self._ID24424 * self._ID52186 );
    var_1 = _ID52211( var_0 );
    self rotateto( var_1, 0.2 );
    wait 0.2;

    for (;;)
    {
        var_1 = _ID52211( var_0 );
        self rotateto( var_1, 0.2 );
        wait 0.2;
    }
}

_ID52211( var_0 )
{
    var_1 = undefined;

    switch ( self._ID44885 )
    {
        case "pistol_walk_left":
            var_1 = vectortoangles( anglestoright( vectortoangles( self.origin - var_0.origin ) ) );
            break;
        case "pistol_walk_right":
            var_1 = vectortoangles( anglestoright( vectortoangles( var_0.origin - self.origin ) ) );
            break;
        case "pistol_walk":
            var_1 = vectortoangles( var_0.origin - self.origin );
            break;
        case "pistol_walk_back":
            var_1 = vectortoangles( self.origin - var_0.origin );
            break;
        case "pistol_sprint":
            var_1 = vectortoangles( vectornormalize( var_0.origin - self.origin ) );
            break;
    }

    return var_1;
}

_ID44218( var_0 )
{
    _ID42407::_ID13025( "moving" );

    while ( distancesquared( self.origin, var_0.origin ) > squared( self.radius ) )
        wait 0.05;

    _ID42407::_ID13021( "moving" );
    self notify( "goal" );
}

_ID51399( var_0, var_1 )
{
    var_2 = self._ID48946[var_1];
    self [[ var_2 ]]( var_0 );
}

_ID50104( var_0 )
{
    self notify( "debug_goal" );
    thread _ID42407::_ID11710( self, var_0, 1, 1, 1, self, "debug_goal" );
    thread _ID42407::_ID11688( var_0.origin, self.radius, 1, 1, 1, self, "debug_goal" );
}

_ID52279()
{
    _ID42407::_ID17509();
    self.weapon = "beretta";
    var_0 = getweaponmodel( self.weapon );
    self attach( var_0, "tag_weapon_right" );
    self hidepart( "TAG_SILENCER" );
}

_ID47459()
{
    self endon( "death" );
    self.ignoreme = 1;
    self.favoriteenemy = level.player;

    for (;;)
    {
        self._ID11575 = 1;
        self notify( "tarmac_sniper_fire" );
        _ID42237::_ID14421( "tarmac_too_far", "tarmac_killed_security" );
        thread _ID42407::_ID14389( "tarmac_killed_security", 6 );
        self._ID11575 = undefined;
        thread _ID43922();
        _ID42237::_ID14426( "tarmac_too_far" );
        _ID42237::_ID14426( "tarmac_killed_security" );
    }
}

_ID54541()
{
    self endon( "death" );
    _ID42237::_ID14413( "tarmac_open_fire" );
    wait 0.5;
    _ID42407::_ID32226( 0 );
}

_ID43922()
{
    self endon( "death" );
    self endon( "tarmac_sniper_fire" );

    for (;;)
    {
        if ( self cansee( level.player ) )
            _ID45942();

        wait(randomfloatrange( 1.4, 3 ));
    }
}

_ID46028()
{
    self endon( "tarmac_police_fire" );
    self endon( "death" );

    for (;;)
    {
        if ( !_ID42407::_ID13019( "moving" ) )
            _ID45942();

        wait(randomfloatrange( 0.3, 0.5 ));
    }
}

_ID45942()
{
    if ( isai( self ) )
        self shoot();
    else
    {
        var_0 = %pistol_stand_fire_a;
        self setanimknobrestart( var_0, 1, 0.2, 1.0 );
        _ID42237::_ID10192( 0.25, ::clearanim, var_0, 0 );
        playfxontag( _ID42237::_ID16299( "pistol_muzzleflash" ), self, "tag_flash" );
    }

    var_1 = _ID42298::_ID15974( level.player._ID15361 );

    if ( var_1 == "easy" )
        magicbullet( self.weapon, self gettagorigin( "tag_flash" ), level.player geteye() + ( randomfloat( 32 ), randomfloat( 32 ), randomfloat( 32 ) ) );
    else
        magicbullet( self.weapon, self gettagorigin( "tag_flash" ), level.player geteye() + ( randomfloat( 64 ), randomfloat( 64 ), randomfloat( 64 ) ) );
}

_ID50371()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    var_0 = getent( "tarmac_player_too_far", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger" );
        _ID42237::_ID14402( "tarmac_too_far" );
        var_1 = level._ID53602;
        level._ID53602 = &"AIRPORT_FAIL_POLICE_BARRICADE";
        thread _ID51631();

        while ( level.player istouching( var_0 ) )
            wait 0.1;

        _ID42237::_ID14388( "tarmac_too_far" );
        level._ID53602 = var_1;
    }
}

_ID51631()
{
    level endon( "friendly_fire_warning" );
    level endon( "tarmac_too_far" );
    level.player waittill( "death" );
    setdvar( "ui_deadquote", level._ID53602 );
    _ID42407::_ID23778();
}

_ID45505( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    self._ID11575 = 1;
    self.ignoreall = 0;
    self.ignoreme = 0;
    self._ID24424 = 1.0;
    self.combatmode = "cover";
    self.interval = 0;
    self.nododgemove = 0;
    _ID42407::_ID12452();

    if ( self.script_noteworthy == "makarov" )
        _ID42407::_ID10226( 0.5, _ID42407::_ID28864, "airport_mkv_go" );

    _ID44022( var_0 );
    self stopanimscripted();
    thread _ID42407::_ID14701( var_0 );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "tarmac_pre_heat_fight" );
    _ID42407::_ID10896();
    _ID42407::_ID7892();
    self pushplayer( 0 );
    _ID42237::_ID14413( "tarmac_heat_fight" );
    _ID42407::_ID12492();
    _ID47984::casual_killer_setup_custom_turns( 0 );
    self waittill( "reached_path_end" );

    if ( self.script_noteworthy == "shotgun" || self.script_noteworthy == "saw" )
        self._ID9575 = undefined;

    _ID42237::_ID14413( "tarmac_open_fire" );
    self._ID11575 = undefined;
    _ID42237::_ID14413( "tarmac_retreat1" );
    _ID42407::_ID32315( "red" );
}

tarmac_moveout_custom_heatexit()
{
    if ( self.angles[1] > 140 && self.angles[1] < 220 )
        animscripts\exit_node::_ID11527( "heat_right", 8 );
    else
    {
        self._ID9575 = undefined;
        animscripts\exit_node::_ID36145();
    }
}

_ID50057( var_0, var_1 )
{
    var_2 = 80;
    var_3 = _ID47475();

    while ( distance2d( self.origin, var_3.origin ) > var_2 )
        wait 0.05;

    var_4 = 850;

    while ( isdefined( var_1 ) && distance2d( var_1.origin, var_0.origin ) > var_4 )
        wait 0.05;
}

_ID47259()
{
    var_0 = [];
    var_0["makarov"] = "saw";
    var_0["shotgun"] = "makarov";
    var_0["m4"] = "shotgun";
    return var_0;
}

_ID47475()
{
    var_0 = getnodearray( "basement_moveup2", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( var_2.script_noteworthy == self.script_noteworthy )
            return var_2;
    }
}

_ID44022( var_0 )
{
    var_1 = _ID47259();
    var_2 = var_1[self.script_noteworthy];

    if ( isdefined( var_2 ) )
        var_2 = level.team[var_2];

    _ID50057( var_0, var_2 );
}

_ID52900()
{
    self endon( "death" );
    thread _ID49887();
    _ID42407::_ID39502();

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    self.maxhealth = 250;
    self.health = 250;
    self.grenadeawareness = 0;
    self.nogrenadereturnthrow = 1;
    _ID42407::_ID38929( "tarmac_advance8" );
    thread _ID50757();
}

_ID49887()
{
    self waittill( "death" );
    _ID42237::_ID14426( "tarmac_bcs" );
    var_0 = level._ID54299;
    var_1 = level.team["m4"];
    wait(randomfloat( 0.1 ));

    if ( _ID42237::_ID14385( "tarmac_kill_friendly_bsc" ) )
        return;

    _ID42237::_ID14402( "tarmac_kill_friendly_bsc" );
    _ID42237::_ID14402( "tarmac_bcs" );
    var_1 _ID42407::_ID10805( "man_down" );
    var_0 _ID42407::_ID10805( "man_down" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID50757()
{
    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    self kill();
}

_ID44346()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        var_0 setthreatbiasgroup( "underpass_guys" );
        var_0 thread _ID45962( self );
    }
}

_ID45962( var_0 )
{
    self endon( "death" );

    if ( isdefined( self._ID45962 ) )
        return;

    self._ID45962 = 1;

    while ( self istouching( var_0 ) )
        wait 0.1;

    self._ID45962 = undefined;
    self setthreatbiasgroup();
}

_ID45852()
{
    createthreatbiasgroup( "2ndfloorenemies" );
    createthreatbiasgroup( "underpass_guys" );
    setignoremegroup( "2ndfloorenemies", "underpass_guys" );
    setignoremegroup( "underpass_guys", "2ndfloorenemies" );
    getent( "tarmac_threatbias_group", "targetname" ) thread _ID44346();
}

_ID53541()
{
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_enemies_wave1_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_enemies_wave2_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_van_guys_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_van_guys2_dead" );
    _ID42407::_ID1841( _ID42237::_ID14413, "do_not_save" );
    _ID42407::_ID1890( _ID42407::_ID4436, "tarmac_left_underpass", 4 );
    thread _ID42407::_ID11231();

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4422( "tarmac_heat_fight" );

    _ID42407::_ID38928( "tarmac_enemies_wave2", "target" );

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4436( "tarmac_wave2launch", 4 );

    _ID42407::_ID38928( "tarmac_advance5", "targetname" );

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4436( "tarmac_at_underpass", 4 );

    _ID42407::_ID38928( "tarmac_advance8", "targetname" );

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4436( "tarmac_left_underpass", 4 );
}

_ID43291()
{
    _ID42407::_ID38928( "tarmac_advance8", "targetname" );
    var_0 = getaiarray( "axis" );
    var_1 = _ID42407::_ID15817( "tarmac_enemies_2ndfloor", "script_noteworthy" );
    var_1 = _ID42237::_ID3296( var_1, _ID42407::_ID15817( "tarmac_littlebird_sniper", "script_noteworthy" ) );
    var_1 = _ID42237::_ID3296( var_1, _ID42407::_ID15817( "tarmac_littlebird_sniper2", "script_noteworthy" ) );
    var_0 = _ID42237::_ID3322( var_0, var_1 );

    if ( var_0.size > 4 )
        _ID42407::_ID41090( var_0, var_0.size - 4 );

    _ID42237::_ID14402( "tarmac_clear_out_2nd_floor" );
    _ID46834();
}

_ID45430()
{
    var_0 = getnode( "tarmac_makarov_last_node", "targetname" );
    _ID42407::_ID38928( "tarmac_advance8", "targetname" );
    var_1 = getaiarray( "axis" );
    var_2 = _ID42407::_ID15817( "tarmac_enemies_2ndfloor", "script_noteworthy" );
    var_2 = _ID42237::_ID3296( var_2, _ID42407::_ID15817( "tarmac_littlebird_sniper", "script_noteworthy" ) );
    var_2 = _ID42237::_ID3296( var_2, _ID42407::_ID15817( "tarmac_littlebird_sniper2", "script_noteworthy" ) );
    var_1 = _ID42237::_ID3322( var_1, var_2 );

    if ( var_1.size > 3 )
        _ID42407::_ID41090( var_1, var_1.size - 3 );

    level._ID54299 _ID42407::_ID10871();
    level._ID54299 setgoalnode( var_0 );
    level._ID54299.radius = var_0.radius;
}

_ID49903()
{
    var_0 = getentarray( "elevator_housing", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2 hide();
        var_2 notsolid();
    }
}

_ID47523()
{
    var_0 = getaiarray( "axis" );
    var_1 = _ID42407::_ID15817( "tarmac_enemies_2ndfloor", "script_noteworthy" );
    var_1 = _ID42237::_ID3296( var_1, _ID42407::_ID15817( "tarmac_littlebird_sniper", "script_noteworthy" ) );
    var_1 = _ID42237::_ID3296( var_1, _ID42407::_ID15817( "tarmac_littlebird_sniper2", "script_noteworthy" ) );
    var_0 = _ID42237::_ID3322( var_0, var_1 );
    return var_0;
}

_ID47798( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    _ID46926();
    _ID42237::_ID3350( getentarray( var_1.target, "targetname" ), _ID42407::_ID1947, ::_ID47392, self );
    var_1 delete();
    _ID42237::_ID41068( "reached_end_node", "death" );
    wait 1;
    self notify( "hack_unload" );
}

_ID47392( var_0 )
{
    if ( self.script_noteworthy == "escape_van_mate" )
        return;

    if ( isdefined( self._ID31455 ) && var_0._ID50398[self._ID31455]["free"] )
        _ID47229( var_0, self._ID31455 );
    else
    {
        foreach ( var_3, var_2 in var_0._ID50398 )
        {
            if ( !var_2["free"] )
                continue;

            _ID47229( var_0, var_3 );
            return;
        }
    }
}

_ID47229( var_0, var_1 )
{
    var_0._ID50398[var_1]["free"] = 0;
    self linkto( var_0._ID50398[var_1]["node"] );

    if ( var_1 == 0 )
        var_0._ID50398[var_1]["node"] thread _ID42259::_ID3025( self, "bm21_driver_idle" );
    else
        var_0._ID50398[var_1]["node"] thread _ID42259::_ID3025( self, "riotshield_idle" );

    var_0._ID50398[var_1]["guy"] = self;
    self._ID47535 = var_0._ID50398[var_1]["node"];
}

_ID54150()
{
    self waittill( "hack_unload" );

    foreach ( var_2, var_1 in self._ID50398 )
    {
        if ( isalive( var_1["guy"] ) )
            thread _ID49058( var_2, var_1 );
    }
}

_ID49058( var_0, var_1 )
{
    var_2 = var_1["guy"];
    thread _ID51392( var_0, var_2 );
    var_2 endon( "death" );

    if ( isdefined( var_2._ID44515 ) )
    {
        wait 0.1;
        var_2 notify( "hack_unloaded" );
        return;
    }

    var_3 = undefined;
    var_4 = undefined;
    var_5 = undefined;
    var_6 = 0;
    var_7 = 0;

    switch ( var_0 )
    {
        case 0:
            var_7 = 0;
            var_3 = self._ID50398[0]["node"];
            var_5 = "bm21_driver_climbout";
            break;
        case 1:
        case 3:
        case 5:
        case 7:
            var_7 = var_0 - 1;
            var_3 = self._ID50398[1]["node"];
            var_5 = "traverse_jumpdown_40";
            break;
        case 2:
        case 4:
        case 6:
        case 8:
            var_7 = var_0 - 2;
            var_3 = self._ID50398[2]["node"];
            var_5 = "traverse_jumpdown_40";
            wait(randomfloatrange( 0.1, 0.4 ));
            break;
    }

    wait(var_7 * 0.5);
    self._ID50398[var_0]["node"] notify( "stop_loop" );
    var_2 stopanimscripted();
    var_2.allowdeath = 1;
    var_8 = getanimlength( _ID42407::_ID16303( var_5 ) );

    if ( var_0 == 0 )
    {
        var_4 = spawn( "script_origin", var_3.origin );
        var_4.angles = self.angles;
        var_2 linkto( var_4 );
        var_4 thread _ID42259::_ID3020( var_2, var_5 );
        wait 0.25;
        var_4 movez( 8, 0.25 );
    }
    else
    {
        var_9 = anglestoforward( var_3.angles );
        var_4 = spawn( "script_origin", var_3.origin + var_9 * 16 );
        var_4.angles = self.angles;
        var_2 linkto( var_4 );
        var_2._ID24424 = randomfloatrange( 0.9, 1.1 );
        var_4 thread _ID42259::_ID3020( var_2, var_5 );
        var_2 _ID42407::_ID10226( var_8 - 0.2, _ID42407::_ID3136 );
        wait 0.25;
        var_4 movez( 12, 0.25 );
        wait 0.25;
        var_2 unlink();
    }

    var_2 waittill( "single anim" );
    var_2._ID24424 = 1;
    var_4 delete();
    var_2 notify( "hack_unloaded" );
}

_ID51392( var_0, var_1 )
{
    var_1 _ID42237::_ID41098( "death", "hack_unloaded" );
    self._ID50398[var_0]["free"] = 1;

    foreach ( var_3 in self._ID50398 )
    {
        if ( !self._ID50398[var_0]["free"] )
            return;
    }

    self notify( "finished_unloading" );
}

_ID46926()
{
    var_0 = self;
    var_1 = anglestoforward( var_0.angles );
    var_2 = anglestoright( var_0.angles );
    var_3 = vectortoangles( var_1 * -1 );
    var_4 = ( 0, 0, 28 );
    var_0._ID50398 = [];
    var_0._ID17617 = [];
    var_5 = 0;
    var_6 = var_0.origin + var_1 * 44 + var_2 * -24 + ( 0, 0, 48 );
    var_0._ID50398[var_5] = [];
    var_0._ID50398[var_5]["node"] = spawn( "script_origin", var_6 );
    var_0._ID50398[var_5]["node"].angles = var_0.angles;
    var_0._ID50398[var_5]["node"] linkto( var_0 );
    var_0._ID50398[var_5]["free"] = 1;
    var_5 = 1;
    var_6 = var_0.origin + var_1 * -88 + var_2 * -16 + var_4;
    var_0._ID50398[var_5] = [];
    var_0._ID50398[var_5]["node"] = spawn( "script_origin", var_6 );
    var_0._ID50398[var_5]["node"].angles = var_3;
    var_0._ID50398[var_5]["node"] linkto( var_0 );
    var_0._ID50398[var_5]["free"] = 1;
    var_5 = 2;
    var_6 = var_0.origin + var_1 * -88 + var_2 * 16 + var_4;
    var_0._ID50398[var_5] = [];
    var_0._ID50398[var_5]["node"] = spawn( "script_origin", var_6 );
    var_0._ID50398[var_5]["node"].angles = var_3;
    var_0._ID50398[var_5]["node"] linkto( var_0 );
    var_0._ID50398[var_5]["free"] = 1;
    var_5 = 3;
    var_6 = var_0.origin + var_1 * -56 + var_2 * -16 + var_4;
    var_0._ID50398[var_5] = [];
    var_0._ID50398[var_5]["node"] = spawn( "script_origin", var_6 );
    var_0._ID50398[var_5]["node"].angles = var_3;
    var_0._ID50398[var_5]["node"] linkto( var_0 );
    var_0._ID50398[var_5]["free"] = 1;
    var_5 = 4;
    var_6 = var_0.origin + var_1 * -56 + var_2 * 16 + var_4;
    var_0._ID50398[var_5] = [];
    var_0._ID50398[var_5]["node"] = spawn( "script_origin", var_6 );
    var_0._ID50398[var_5]["node"].angles = var_3;
    var_0._ID50398[var_5]["node"] linkto( var_0 );
    var_0._ID50398[var_5]["free"] = 1;
    var_5 = 5;
    var_6 = var_0.origin + var_1 * -24 + var_2 * -16 + var_4;
    var_0._ID50398[var_5] = [];
    var_0._ID50398[var_5]["node"] = spawn( "script_origin", var_6 );
    var_0._ID50398[var_5]["node"].angles = var_3;
    var_0._ID50398[var_5]["node"] linkto( var_0 );
    var_0._ID50398[var_5]["free"] = 1;
    var_5 = 6;
    var_6 = var_0.origin + var_1 * -24 + var_2 * 16 + var_4;
    var_0._ID50398[var_5] = [];
    var_0._ID50398[var_5]["node"] = spawn( "script_origin", var_6 );
    var_0._ID50398[var_5]["node"].angles = var_3;
    var_0._ID50398[var_5]["node"] linkto( var_0 );
    var_0._ID50398[var_5]["free"] = 1;
    var_5 = 7;
    var_6 = var_0.origin + var_1 * 8 + var_2 * -16 + var_4;
    var_0._ID50398[var_5] = [];
    var_0._ID50398[var_5]["node"] = spawn( "script_origin", var_6 );
    var_0._ID50398[var_5]["node"].angles = var_3;
    var_0._ID50398[var_5]["node"] linkto( var_0 );
    var_0._ID50398[var_5]["free"] = 1;
    var_5 = 8;
    var_6 = var_0.origin + var_1 * 8 + var_2 * 16 + var_4;
    var_0._ID50398[var_5] = [];
    var_0._ID50398[var_5]["node"] = spawn( "script_origin", var_6 );
    var_0._ID50398[var_5]["node"].angles = var_3;
    var_0._ID50398[var_5]["node"] linkto( var_0 );
    var_0._ID50398[var_5]["free"] = 1;
    var_0 thread _ID54150();
}

_ID46420()
{
    magicgrenademanual( "smoke_grenade_american", self.origin, ( 0, 0, -1 ), randomfloat( 1 ) );
}

_ID47148()
{
    if ( !_ID42237::_ID14396( "tarmac_bcs_enemy" ) )
        _ID42237::_ID14400( "tarmac_bcs_enemy" );

    if ( !_ID42237::_ID14396( "bsc_nade" ) )
        _ID42237::_ID14400( "bsc_nade" );

    level endon( "escape_main" );
    _ID42237::_ID14413( "tarmac_open_fire" );
    wait 2;

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( _ID42237::_ID14385( "tarmac_bcs_enemy" ) )
            continue;

        if ( _ID42237::_ID14385( "tarmac_bcs" ) )
            continue;

        if ( _ID42237::_ID14385( "bsc_nade" ) )
            continue;

        if ( !isdefined( var_0 ) )
            continue;

        if ( !isdefined( var_0.origin ) )
            continue;

        if ( distancesquared( var_0.origin, level.player.origin ) > squared( 1024 ) )
            continue;

        _ID42237::_ID14402( "tarmac_bcs_enemy" );
        _ID42237::_ID14402( "tarmac_bcs" );

        if ( _ID42237::_ID8201() && self._ID31438 != "enemy_bus" || self._ID31438 == "enemy_underplane" )
            level._ID54299 _ID42407::_ID10805( self._ID31438 );
        else
            level.team["m4"] _ID42407::_ID10805( self._ID31438 );

        _ID42237::_ID14388( "tarmac_bcs" );
        wait 5;
        _ID42237::_ID14388( "tarmac_bcs_enemy" );
        wait 15;
    }
}

_ID44822()
{
    self._ID44515 = 1;
    thread _ID50011();
}

_ID53798()
{
    self endon( "death" );
    thread _ID50011();
    self._ID3189 = "van_mate";
    self.allowdeath = 1;
    self.health = 1;
    self.maxhealth = 1;
    self setgoalpos( self.origin );
    self.goalradius = 16;
    _ID42407::_ID17509();
    level._ID43574 = self;
    _ID42237::_ID14413( "escape_van_ready" );
    level._ID49338 _ID42259::_ID3018( self, "end_open_door" );
    wait 0.05;
    var_0 = level._ID49338;
    self linkto( var_0, "tag_body" );
}

_ID49286( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    _ID46926();
    _ID42237::_ID3350( getentarray( var_1.target, "targetname" ), _ID42407::_ID1947, ::_ID47392, self );
    var_1 delete();
    var_2 = getent( "ambulance_light", "targetname" );
    var_3 = getent( "ambulance_light_interior", "targetname" );

    if ( isdefined( var_2 ) )
        self _meth_848a( var_2.origin );

    if ( isdefined( var_3 ) )
        self._ID43838["h2_vehicle_ambulance_russian_interior"] _meth_848a( var_3.origin );

    level._ID49338 = self;
    self._ID3189 = "ambulance";
    _ID42259::_ID32556();
    self _meth_85c3( 0 );
    _ID42259::_ID3018( self, "end_open_door" );
    thread maps\airport_aud::start_scripted_escape_van();
    _ID42237::_ID14402( "escape_van_ready" );
}

_ID43859()
{
    self endon( "escape_enter_van" );
    self endon( "death" );

    if ( _ID42237::_ID14385( "escape_sequence_go" ) )
        return;

    level endon( "escape_sequence_go" );
    self waittill( "anim_reach_complete" );

    if ( self == level._ID54299 )
        self waittill( "stand_exposed_wave_halt_v2" );

    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    var_0 = undefined;
    var_1 = undefined;

    switch ( self._ID7._ID28253 )
    {
        case "crouch":
            _ID42259::_ID3020( self, "exposed_crouch_2_stand" );
        case "stand":
            _ID42259::_ID3020( self, "casual_stand_idle_trans_in" );
            thread _ID42259::_ID3025( self, "casual_stand_idle" );
            break;
    }
}

_ID53005()
{
    level._ID30895["generic"]["DRS_sprint"] = %heat_run_loop;
    level._ID30895["generic"]["DRS_combat_jog"] = %combat_jog;
    level._ID30895["generic"]["DRS_run_2_stop"] = %run_2_stand_f_6;
    level._ID30895["generic"]["DRS_stop_idle"][0] = %exposed_aim_5;
    level._ID30895["generic"]["signal_go"] = undefined;
    level._ID30895["generic"]["DRS_run"] = undefined;
    level notify( "friendly_fire_stop_checking_for_player_fire" );
    var_0 = getent( "ambulance_door_right", "targetname" );
    var_1 = getent( "ambulance_door_left", "targetname" );
    var_1 connectpaths();
    var_0 connectpaths();
    wait 2;
    var_1 delete();
    var_0 delete();
    _ID42237::_ID14388( "friendly_fire_pause_flash" );
    _ID42237::_ID14388( "friendly_fire_pause_fire" );
    level.player._ID26273 = 0;
}

_ID47809( var_0, var_1 )
{
    foreach ( var_3 in var_0 )
    {
        if ( !isalive( level._ID47736[var_3.script_noteworthy] ) )
            continue;

        var_4 = 0;
        level._ID47736[var_3.script_noteworthy] _ID42407::_ID10226( var_4, _ID42407::_ID14701, var_3, var_1 );
    }
}

_ID48417()
{
    level._ID47736 = [];
    var_0 = 0;

    foreach ( var_2 in level.team )
    {
        if ( var_2 == level._ID54299 )
            continue;

        var_0++;
        level._ID47736[_ID42407::_ID36694( var_0 )] = var_2;
    }

    level._ID47736["makarov"] = level._ID54299;
}

_ID47361()
{
    level.player allowjump( 0 );
    var_0 = level.player _ID51769();
    _ID45117( var_0 );
    level.player _ID42407::_ID12569( 0 );
}

_ID45117( var_0 )
{
    level._ID49196 = getweaponmodel( var_0 );
}

_ID51769()
{
    var_0 = undefined;

    if ( weaponclass( self getcurrentweapon() ) == "pistol" )
    {
        var_1 = self getweaponslistprimaries();

        foreach ( var_3 in var_1 )
        {
            if ( weaponclass( var_3 ) == "pistol" )
                continue;

            var_0 = var_3;
        }
    }
    else
        var_0 = self getcurrentweapon();

    if ( !isdefined( var_0 ) || var_0 == "riotshield" )
        var_0 = "m4_grenadier_airport";

    return var_0;
}

_ID51219()
{
    var_0 = level._ID49338;
    var_1 = _ID42407::_ID35028( "player_ending" );
    var_1 hide();
    var_0 _ID42259::_ID3018( var_1, "end_player_shot", "origin_animate_jnt" );
    var_2 = var_1 gettagorigin( "tag_player" );
    var_1 delete();
    return var_2;
}

_ID50356( var_0 )
{
    if ( !_ID53612() )
        return 0;

    return distance( var_0, level.player.origin ) < 45;
}

_ID49445()
{
    _ID42237::_ID14386( "end_makarov_in_place" );
    level endon( "end_makarov_in_place" );
    var_0 = 0.5;
    var_1 = _ID51219();
    var_2 = 0.05;

    for (;;)
    {
        if ( _ID50356( var_1 ) )
            break;

        wait 0.05;
    }

    _ID42237::_ID14402( "player_ready_for_proper_ending" );
    _ID42237::_ID14388( "player_dynamic_move_speed" );
    thread _ID47381();
}

_ID47381()
{
    _ID53147( 0, 0.5 );
}

_ID43384()
{
    var_0 = _ID51219();

    while ( distance( var_0, level.player.origin ) > 350 )
        wait 0.05;
}

_ID46106()
{
    _ID42237::_ID14402( "escape_player_realdeath" );
    level.player takeweapon( "flash_grenade" );
    level.player takeweapon( "fraggrenade" );
    var_0 = level.player getcurrentweapon();

    switch ( weaponclass( var_0 ) )
    {
        case "none":
        case "item":
            var_0 = "m240";
            var_1 = level.player getweaponslistall();

            foreach ( var_3 in var_1 )
            {
                var_4 = weaponclass( var_3 );

                if ( var_4 != "none" && var_4 != "item" )
                {
                    var_0 = var_3;
                    break;
                }
            }

            break;
    }

    level.player takeallweapons();
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
    level.player freezecontrols( 1 );
    var_6 = level._ID49338;
    var_7 = _ID42407::_ID35028( "player_ending" );
    var_8 = spawn( "script_model", var_7.origin );
    var_8._ID3189 = "player_weapon";
    var_8 _ID42407::_ID3428();
    var_9 = spawn( "weapon_" + var_0, var_7.origin );
    var_8 setmodel( var_9.model );
    var_9 delete();
    var_7 hide();
    var_8 hide();
    level._ID46233 = var_7;
    var_10 = [];
    var_10[var_10.size] = var_7;
    var_10[var_10.size] = var_8;
    var_6 _ID42259::_ID3016( var_10, "end_player_shot" );
    level.player playsound( "scn_airport_end_player_shot" );
    var_11 = 0.5;
    level.player playerlinktoblend( var_7, "tag_player", var_11, var_11 * 0.5, var_11 * 0.5 );
    _ID42237::_ID3350( var_10, _ID42237::_ID10192, 0.5, ::show );
    var_7 notsolid();
    _ID42237::_ID14413( "end_makarov_in_place" );
    var_6 thread _ID42259::_ID3099( var_10, "end_player_shot" );
    var_7 thread _ID48970();
}

_ID53067()
{
    self waittillmatch( "single anim",  "dialog"  );
    self waittillmatch( "single anim",  "dialog"  );
}

_ID49408()
{
    self animmode( "zonly_physics" );
    self clearanim( %root, 0.2 );
    self setflaggedanimrestart( "shoot_anim", %h2_airport_ending_shoot_makarov, 1, 0, 1 );
    thread _ID42259::_ID35866( self, "shoot_anim", "end_alt", "makarov" );
    animscripts\shared::_ID11529( "shoot_anim" );
    self clearanim( %airport_ending_makarov, 0.2 );
    self notify( "done_shoot_player" );
}

_ID47597()
{
    level endon( "player_enter_ambulance" );
    var_0 = _ID51219();
    var_1 = level._ID49338;
    level._ID54299 stopanimscripted();
    level._ID43574 stopanimscripted();
    level._ID43574 _ID42407::_ID1985( _ID42407::_ID1689, "single anim", "end" );
    var_1 _ID42407::_ID1890( _ID42259::_ID3044, level._ID43574, "end_get_in_idle", "Player_is_close_enough" );
    thread _ID42407::_ID11231();
    var_1 thread _ID42259::_ID3111( level._ID43574, "end_get_in_idle_in" );
    var_1 _ID42259::_ID3111( level._ID54299, "end_get_in_idle_in" );
    var_1 thread _ID42259::_ID3044( level._ID54299, "end_get_in_idle", "Player_is_close_enough" );
    childthread _ID50994();

    for (;;)
    {
        if ( _ID50356( var_0 ) && !_ID42237::_ID14385( "player_is_busted" ) )
        {
            var_1 notify( "Player_is_close_enough" );
            var_1 thread _ID42259::_ID3111( level._ID54299, "end_player_shot" );
            var_1 thread _ID42259::_ID3111( level._ID43574, "end_player_shot" );
            _ID42237::_ID14402( "end_makarov_in_place" );
            thread _ID46106();
            level notify( "player_enter_ambulance" );
            break;
        }
        else if ( distance( var_0, level.player.origin ) > 700 )
            _ID47885();

        wait 0.05;
    }
}

_ID50896()
{
    wait 5.9;
    level._ID54299 _ID45995::_ID48826( "upperbody", level.player, 250, 179, 179, 89, 89, 1, 0, 0, 180 );
    _ID42237::_ID14413( "end_makarov_in_place" );
    level._ID54299 _ID45995::_ID45228();
    var_0 = _ID54167::_ID43386( "airport_makarov_intro" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, -1, 16.0, 16.0 ) _ID54167::_ID44545( 2.0 ) _ID54167::_ID52391( level._ID54299, "tag_eye" ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48166();
    _ID42237::_ID14413( "escape_player_shot" );
    level.player enablehealthshield( 1 );
    level.player dodamage( level.player.health, level.player.origin );
    var_1 = _ID54167::_ID43386( "airport_makarov_kills_allen" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_1 _ID54167::_ID48800( 6.0 ) _ID54167::_ID50321( 2.0, 150, 1.0, 1.0 );
    var_1 _ID54167::_ID48800( 7.5 ) _ID54167::_ID50321( 4.0, 150, 0.5, 0.5 );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 50, 0.0, 1 );
    var_1 _ID54167::_ID48800( 0.05 ) _ID54167::_ID43500( 17.5, 1 );
    var_1 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( 0.1, 1.0, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.4 );
    var_1 _ID54167::_ID48800( 1.55 ) _ID54167::_ID47198( 0.1, 0.8, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.2 );
    var_1 _ID54167::_ID48800( 16.05 ) _ID54167::_ID47198( 0.12, 0.8, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.15 );
    var_1 _ID54167::_ID48800( 17.8 ) _ID54167::_ID47198( 0.04, 1.0, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_1 _ID54167::_ID48800( 19.75 ) _ID54167::_ID47198( 0.04, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_1 _ID54167::_ID48800( 20.05 ) _ID54167::_ID47198( 0.05, 0.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_1 _ID54167::_ID48166();
}

_ID50994()
{
    wait 15;
    _ID42237::_ID14402( "player_is_busted" );
    _ID47885();
}

_ID47885()
{
    setdvar( "ui_deadquote", &"AIRPORT_FAIL_BLEW_COVER_WANDER" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID52741()
{
    var_0 = level._ID49338;
    var_1 = [];
    var_1[var_1.size] = level._ID43574;
    _ID42237::_ID14413( "end_makarov_in_place" );
    var_2 = level._ID54299 geteye();

    while ( !_ID42407::_ID27540( var_2, undefined, undefined, level._ID54299 ) )
        wait 0.1;

    var_0 notify( "stop_loop" );
    var_0 thread _ID42259::_ID3099( var_1, "end_player_shot", "origin_animate_jnt" );
    level._ID54299 stopanimscripted();
    level._ID54299 animcustom( ::_ID49408 );
    _ID42237::_ID14413( "escape_player_shot" );
    level.player takeallweapons();
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", "1" );
    setsaveddvar( "hud_showStance", 0 );
    level.player freezecontrols( 1 );
    var_3 = _ID42237::_ID16638( "escape_ending_node", "targetname" );
    var_4 = ( level.player.origin[0], level.player.origin[1], var_3.origin[2] ) + ( 0, 0, 4.5 );
    var_5 = spawn( "script_origin", var_4 );
    var_5.angles = level.player.angles;
    var_6 = _ID42407::_ID35028( "player_ending" );
    level._ID46233 = var_6;
    var_6 linkto( var_5 );
    var_6 notsolid();
    var_7 = vectortoangles( level._ID54299.origin - level.player.origin );
    var_5 rotateto( ( 0, var_7[1], 0 ), 1.5 );
    var_8 = 0.1;
    level.player playerlinktoblend( var_6, "tag_player", var_8, var_8 * 0.5, var_8 * 0.5 );
    var_5 thread _ID42259::_ID3111( var_6, "end_player_shot_alt" );
    var_6 thread _ID48970();
    physicsexplosioncylinder( var_5.origin, 96, 2, 3 );
    level._ID54299 waittill( "done_shoot_player" );
}

_ID48970()
{
    self waittillmatch( "single anim",  "blood_start"  );
    level.player setcontents( 0 );
    wait 1;
    var_0 = self gettagorigin( "tag_torso" );
    var_1 = spawn( "script_model", var_0 + ( -15, 10, -7.5 ) );
    var_1.angles = ( -90, 135, 0 );
    var_1 setmodel( "tag_origin" );
    var_1 hide();
    _ID42237::_ID49667( _ID42237::_ID16299( "deathfx_bloodpool_airport_escape" ), var_1, "tag_origin", ( 0, 20, 0 ) );
}

_ID53612()
{
    var_0 = level._ID49338;
    var_1 = level.player getplayerangles();
    var_1 = ( 0, var_1[1], 0 );
    var_2 = ( var_0.origin[0], var_0.origin[1], 0 );
    var_3 = ( level.player.origin[0], level.player.origin[1], 0 );
    var_4 = anglestoforward( var_1 );
    var_5 = vectornormalize( var_2 - var_3 );
    var_6 = vectordot( var_4, var_5 ) > 0.75;
    return var_6;
}

_ID52938()
{
    self endon( "death" );
    self.favoriteenemy = level.player;
    self._ID11575 = 1;
    var_0 = getnode( self.target, "targetname" );
    self setgoalnode( var_0 );
    self.goalradius = var_0.radius;
}

_ID49701()
{
    self._ID3189 = "generic";
    _ID42237::_ID14413( "start_ending_sequence" );
    var_0 = spawn( "script_origin", level._ID49338.origin );
    var_0.angles = level._ID49338.angles;
    var_0 _ID42259::_ID3018( self, self._ID70 );
    _ID42237::_ID14413( "cops_arrive" );
    var_0 _ID42259::_ID3111( self, self._ID70 );
    var_0 delete();
}

_ID45404()
{
    self endon( "death" );
    self.ignoreall = 1;
    self.ignoreme = 1;
    self waittill( "goal" );
    self delete();
}

_ID27484()
{
    _ID53147( 15 );
    level.player _meth_830f( 0 );
    level.player allowjump( 0 );
    var_0 = level.player getplayerangles();
    level.player setplayerangles( ( var_0[0] + 7.25, var_0[1], var_0[2] ) );
    level.player._ID48238 = 1.0;
    thread _ID52002();
    _ID42237::_ID14402( "player_DMS_disable_auto_sprint" );
}

_ID48925()
{
    thread _ID42407::_ID22746();
    thread _ID42407::_ID22825();
    _ID42407::_ID13024( "massacre_ready" );
    _ID42407::_ID13024( "massacre_firing_into_crowd" );
    _ID42407::_ID13024( "massacre_at_node" );
    _ID42407::_ID13024( "massacre_throw_nade" );
    _ID42407::_ID13024( "gate_ready_to_go" );
    _ID42407::_ID13024( "prestairs_nodes" );
    _ID42407::_ID13024( "aiming_at_civ" );
    _ID42407::_ID13024( "stairs_at_top" );
    self.ignorerandombulletdamage = 1;
    self.ignoreall = 1;
    self pushplayer( 1 );
    _ID42407::_ID26355();
    _ID42407::_ID41232();
    var_0 = spawn( "script_origin", self.origin );
    var_0.angles = self.angles;
    self._ID51578 = var_0;
    self._ID44114 = 0;

    if ( !isdefined( level.team ) )
        level.team = [];

    level.team[self.script_noteworthy] = self;
    self._ID3189 = self.script_noteworthy;
    self.targetname = self.script_noteworthy;

    if ( self.script_noteworthy == "makarov" )
        level._ID54299 = self;

    self waittill( "death" );
    level.team = _ID42407::_ID3329( level.team );
}

_ID48861()
{
    var_0 = _ID49411();
    _ID42237::_ID3350( var_0, ::_ID49053 );
    level._ID46762 = var_0;
}

_ID49411()
{
    var_0 = getentarray( "sign_departure_status", "targetname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        var_4 = 1;
        var_5 = var_3.origin;

        foreach ( var_7 in var_1 )
        {
            if ( var_7.origin != var_5 )
                continue;

            var_4 = 0;
            var_7._ID50590[var_3.script_noteworthy] = var_3;
            break;
        }

        if ( !var_4 )
            continue;

        var_9 = spawnstruct();
        var_9.origin = var_5;
        var_9._ID50590 = [];
        var_9._ID50590[var_3.script_noteworthy] = var_3;
        var_1[var_1.size] = var_9;
    }

    return var_1;
}

_ID49053()
{
    self._ID36223["angles"] = [];
    self._ID36223["angles"]["bottom"] = self._ID50590["ontime"].angles;
    self._ID36223["angles"]["top"] = self._ID50590["boarding"].angles;
    self._ID36223["angles"]["waiting"] = self._ID50590["delayed"].angles;
    self._ID36223["order"] = [];
    self._ID36223["order"]["ontime"] = "arriving";
    self._ID36223["order"]["arriving"] = "boarding";
    self._ID36223["order"]["boarding"] = "delayed";
    self._ID36223["order"]["delayed"] = "ontime";
    self._ID36223["ontime"] = [];
    self._ID36223["ontime"]["bottom"] = "ontime";
    self._ID36223["ontime"]["top"] = "arriving";
    self._ID36223["arriving"] = [];
    self._ID36223["arriving"]["bottom"] = "arriving";
    self._ID36223["arriving"]["top"] = "boarding";
    self._ID36223["boarding"] = [];
    self._ID36223["boarding"]["bottom"] = "boarding";
    self._ID36223["boarding"]["top"] = "delayed";
    self._ID36223["delayed"] = [];
    self._ID36223["delayed"]["bottom"] = "delayed";
    self._ID36223["delayed"]["top"] = "ontime";
    self._ID46920 = "ontime";
    self._ID50590["arriving"].angles = self._ID36223["angles"]["top"];
    self._ID50590["boarding"].angles = self._ID36223["angles"]["waiting"];
    self._ID50590["boarding"] hide();
    self._ID50590["delayed"] hide();
}

_ID43595( var_0 )
{
    for ( var_1 = 0.2; self._ID46920 != var_0; self._ID46920 = var_2 )
    {
        var_2 = self._ID36223["order"][self._ID46920];
        var_3 = self._ID36223[self._ID46920]["top"];
        var_4 = self._ID36223[self._ID46920]["bottom"];
        var_5 = self._ID36223[var_2]["top"];
        var_6 = self._ID50590[var_3];
        var_7 = self._ID50590[var_4];
        var_8 = self._ID50590[var_5];
        var_6 rotatepitch( 180, var_1 );
        var_8.angles = self._ID36223["angles"]["top"];
        wait 0.05;
        var_8 show();
        wait(var_1 - 0.1);
        var_7 hide();
        var_7.angles = self._ID36223["angles"]["waiting"];
        wait 0.05;
    }
}

_ID53222()
{
    var_0 = self.target;
    var_1 = getglass( var_0 );

    if ( isdefined( var_1 ) )
    {
        level waittillmatch( "glass_destroyed",  var_1  );
        self delete();
    }
}

_ID45431()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( getdvarint( "cg_blood" ) == 0 )
            continue;

        if ( !isplayernumber( var_1 ) )
            continue;

        self.iskilledbyplayer = isplayernumber( var_1 );
        playfx( _ID42237::_ID16299( "killshot" ), var_3 );
    }
}

_ID48322()
{
    self endon( "death" );
    var_0 = "empty";

    while ( var_0 != "end" )
    {
        self waittill( "single anim",  var_0  );

        if ( getdvarint( "cg_blood" ) == 0 )
            continue;

        switch ( var_0 )
        {
            case "bodyshot":
                _ID51627( "bodyshot" );
                continue;
            case "killshot":
                _ID51627( "killshot" );
                continue;
            case "headshot":
                var_1 = self gettagorigin( "tag_eye" );
                var_2 = _ID42237::_ID28945( level.team );
                var_3 = vectornormalize( var_1 - var_2.origin );
                playfx( _ID42237::_ID16299( "headshot" ), var_1, var_3 );
                continue;
        }
    }
}

_ID51627( var_0 )
{
    if ( getdvarint( "cg_blood" ) == 0 )
        return;

    var_1 = self gettagorigin( "J_SpineUpper" );
    var_2 = _ID42237::_ID28945( level.team );
    var_3 = vectornormalize( var_2.origin - var_1 );
    var_3 *= 10;
    playfx( _ID42237::_ID16299( var_0 ), var_1 + var_3 );
}

_ID45479( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_origin", var_0.origin );
    var_3 playsound( var_1 );

    while ( isdefined( var_0.target ) )
    {
        var_4 = _ID42237::_ID16638( var_0.target, "targetname" );
        var_5 = distance( var_0.origin, var_4.origin );
        var_6 = var_5 / var_2;
        var_3 moveto( var_4.origin, var_6 );
        wait(var_6);
        var_0 = var_4;
    }

    wait 4;
    var_3 delete();
}

_ID50280( var_0, var_1, var_2, var_3 )
{
    level endon( "stop_explode_targets" );
    var_0 = _ID42237::_ID3320( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = 4;

    if ( !isdefined( var_2 ) )
        var_2 = 0.75;

    if ( !isdefined( var_3 ) )
        var_3 = var_2 + 0.75;

    foreach ( var_5 in var_0 )
    {
        radiusdamage( var_5.origin, var_1, 500, 500 );
        wait(randomfloatrange( var_2, var_3 ));
    }
}

_ID53262( var_0, var_1, var_2 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    var_3 = "stop_spray_and_pray";
    self endon( var_3 );
    var_4 = _ID50692( var_0, var_1, var_2 );
    thread _ID44795( var_4["target"], var_3 );
    self._ID51473 = var_4["target"];
    self setentitytarget( self._ID51473 );
    self._ID43143 = self._ID24844;
    self._ID24844 = 1;
    _ID47070( var_4 );
}

_ID44393( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    var_6 = "stop_spray_and_pray";
    self endon( var_6 );
    var_7 = _ID54235( var_0, var_1, var_2, var_3, var_4, var_5 );
    thread _ID44795( var_7["target"], var_6 );
    self._ID51473 = var_7["target"];
    self setentitytarget( self._ID51473 );
    self._ID43143 = self._ID24844;
    self._ID24844 = 1;
    _ID46593( var_7 );
}

_ID46593( var_0 )
{
    for (;;)
    {
        var_1 = distance( var_0["node_origin"], var_0["target"].origin );
        var_2 = var_1 / var_0["speed"];
        var_0["target"] moveto( var_0["node_origin"], var_2, var_2 * 0.1, var_2 * 0.1 );
        wait(var_2);

        if ( var_0["node_origin"] == var_0["start_origin"] )
        {
            var_0["node_origin"] = var_0["end_origin"];
            continue;
        }

        var_0["node_origin"] = var_0["start_origin"];
    }
}

_ID47070( var_0 )
{
    var_1 = var_0["node"];

    for (;;)
    {
        var_1 = _ID42237::_ID16638( var_1.target, "targetname" );
        var_2 = distance( var_1.origin, var_0["target"].origin );
        var_3 = var_2 / var_0["speed"];
        var_0["target"] moveto( var_1.origin, var_3, var_3 * 0.1, var_3 * 0.1 );
        wait(var_3);
    }
}

_ID50692( var_0, var_1, var_2 )
{
    var_3 = [];

    if ( !isdefined( var_0 ) )
        var_0 = 0.05;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    wait(var_0);
    var_3["speed"] = 50 * var_1;
    var_3["node"] = var_2;
    var_3["target"] = spawn( "script_origin", var_2.origin );
    return var_3;
}

_ID54235( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = [];

    if ( !isdefined( var_0 ) )
        var_0 = 0.05;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_4 ) )
        var_4 = 38;

    if ( !isdefined( var_5 ) )
        var_5 = 128;

    wait(var_0);
    var_7 = self gettagorigin( "tag_flash" );
    var_6["speed"] = 50 * var_1;
    var_8 = ( self.origin[0], self.origin[1], var_7[2] );
    var_9 = var_8 + anglestoforward( self.angles ) * var_5 + ( 0, 0, var_3 );
    var_6["start_origin"] = var_8 + anglestoforward( self.angles + ( 0, var_4, 0 ) ) * var_5 + ( 0, 0, var_3 );
    var_6["end_origin"] = var_8 + anglestoforward( self.angles + ( 0, var_4 * -1, 0 ) ) * var_5 + ( 0, 0, var_3 );

    if ( var_2 )
        var_6["node_origin"] = var_6["end_origin"];
    else
        var_6["node_origin"] = var_6["start_origin"];

    var_6["target"] = spawn( "script_origin", var_9 );
    return var_6;
}

_ID44795( var_0, var_1 )
{
    self waittill( var_1 );
    self._ID24844 = self._ID43143;
    self clearentitytarget();
    var_0 delete();
}

_ID44563( var_0 )
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

_ID46202( var_0 )
{
    _ID42237::_ID14413( "team_initialized" );

    foreach ( var_2 in var_0 )
    {
        if ( !isalive( level.team[var_2.script_noteworthy] ) )
            continue;

        var_3 = level.team[var_2.script_noteworthy];
        var_3 thread _ID45039( var_2 );
    }
}

_ID45039( var_0 )
{
    var_1 = spawn( "script_origin", self.origin );
    var_1.angles = self.angles;
    self linkto( var_1 );
    var_1 moveto( var_0.origin, 0.05 );

    if ( isdefined( var_0.angles ) )
        var_1 rotateto( var_0.angles, 0.05 );

    var_1 waittill( "movedone" );
    wait 0.05;
    self setgoalpos( var_0.origin );
    self unlink();
    var_1 delete();
    self orientmode( "face angle", var_0.angles[1] );
}

_ID48186()
{
    _ID42237::_ID14402( "airport_alternate" );
}

_ID44123()
{
    _ID42407::_ID24577( "mus_airport_stalk", 164 );
}

_ID49014()
{
    _ID42237::_ID14402( "airport_anticipation" );
}

_ID46834()
{
    _ID42237::_ID14402( "airport_escape" );
}

_ID50513()
{
    _ID42407::_ID24582( "mus_airport_doublecross" );
}

_ID47351( var_0, var_1 )
{
    self endon( "death" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );

    if ( !_ID42407::_ID13023( "side_step" ) )
        _ID42407::_ID13024( "side_step" );

    _ID42407::_ID13025( "side_step" );
    self._ID45178 = 1;

    while ( self._ID45178 )
    {
        self._ID51578.origin = self.origin;
        self._ID51578.angles = var_1;
        self._ID51578 _ID42259::_ID3020( self, var_0 );
    }

    _ID42407::_ID13021( "side_step" );
}

_ID46319()
{
    self._ID45178 = 0;
    self stopanimscripted();
}

_ID43181()
{
    _ID42237::_ID14413( "trigger_kill_player" );
    level.player enabledeathshield( 0 );
    level.player enablehealthshield( 0 );
    level.player kill();
}

_ID51290()
{
    for (;;)
    {
        _ID42237::_ID14415( "friendly_fire_dist_check", "friendly_fire_kill_check", "friendly_fire_warning" );
        level._ID30752 = 0;
        _ID42237::_ID14402( "do_not_save" );

        while ( _ID42237::_ID14385( "do_not_save" ) )
        {
            _ID42237::_ID14426( "friendly_fire_dist_check" );
            _ID42237::_ID14426( "friendly_fire_kill_check" );
            _ID42237::_ID14426( "friendly_fire_warning" );

            if ( _ID42237::_ID14385( "friendly_fire_dist_check" ) || _ID42237::_ID14385( "friendly_fire_kill_check" ) || _ID42237::_ID14385( "friendly_fire_warning" ) )
                continue;

            _ID42237::_ID14388( "do_not_save" );
        }
    }
}

_ID48820()
{
    switch ( int( self.script_noteworthy ) )
    {
        case 2:
            wait 2.25;
            break;
        case 3:
            wait 1.75;
            break;
        case 6:
            wait 1.5;
            break;
        case 7:
            wait 1.7;
            break;
        case 5:
            wait 1.6;
            break;
        default:
            wait 1;
            break;
    }

    self physicslaunchclient( self.origin + ( 0, 0, 32 ), anglestoforward( self.angles ) * 1000 );
}

_ID44544( var_0, var_1 )
{
    var_2 = 0.8 / var_1.size;
    var_3 = 1.6 / var_1.size;

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        if ( distance( self.origin, level.player.origin ) < self.radius )
        {
            var_4 = _ID42237::_ID28945( var_1 );

            foreach ( var_6 in var_1 )
            {
                var_7 = anglestoforward( var_4 gettagangles( "tag_flash" ) );
                var_8 = anglestoforward( var_6 gettagangles( "tag_flash" ) );
                var_9 = vectornormalize( level.player.origin - var_4.origin );
                var_10 = vectornormalize( level.player.origin - var_6.origin );

                if ( vectordot( var_7, var_9 ) < vectordot( var_8, var_10 ) )
                    var_4 = var_6;
            }

            magicbullet( var_4.weapon, var_4 gettagorigin( "tag_flash" ), level.player.origin + ( 0, 0, 12 ) );
        }

        wait(randomfloatrange( var_2, var_3 ));
    }
}

_ID44489()
{
    if ( isdefined( self._ID49764 ) )
        return;

    self._ID49764 = 1;
    self._ID53334 = self.interval;
    self.interval = 1;
    setsaveddvar( "ai_friendlyFireBlockDuration", 0 );
    self._ID52539 = self.accuracy;
    self._ID44919 = self._ID4867;
    self.accuracy = 1000;
    self._ID4867 = 1000;
    self.fixednode = 0;
    _ID42407::_ID32628( 1 );
    _ID47984::_ID44498();
}

_ID51786()
{
    if ( !isdefined( self._ID49764 ) )
        return;

    self._ID49764 = undefined;
    self.accuracy = self._ID52539;
    self._ID4867 = self._ID44919;
    self.interval = self._ID53334;
    _ID47984::_ID46279();
    self._ID24844 = undefined;
}

_ID48008()
{
    level.player endon( "death" );
    precachestring( &"AIRPORT_FAIL_BLEW_COVER_FIRE" );
    precachestring( &"AIRPORT_FAIL_BLEW_COVER_WANDER" );
    level._ID43511 = 0;
    level._ID45411 = [];
    level._ID45411["no_kill_line_num"] = 0;
    level._ID45411["no_kill_line"] = [];
    level._ID45411["no_kill_line"][0] = "airport_mkv_thesesheep";
    level._ID45411["no_kill_line"][1] = "airport_mkv_doubtyou";
    level._ID45411["no_kill_line"][2] = "airport_mkv_openfire";
    level._ID45411["no_kill_line"][3] = "airport_mkv_cowards";
    level._ID45411["no_dist_line_num"] = 0;
    level._ID45411["no_dist_line"] = [];
    level._ID45411["no_dist_line"][0] = "airport_mkv_letsmoveup";
    level._ID45411["no_dist_line"][1] = "airport_mkv_letsgo2";
    level._ID45411["no_dist_line"][2] = "airport_mkv_keepmoving";
    level._ID45411["no_dist_line"][3] = "airport_mkv_cowards";
    level._ID45411["ff_line"] = "airport_mkv_checkfire";
    wait 0.05;
    thread _ID46733();
    _ID42237::_ID3350( level.team, ::_ID50011 );

    if ( _ID42407::_ID20505() )
    {
        wait 16;
        level.player thread _ID43199();
        _ID42407::_ID1985( _ID42237::_ID14413, "lobby_open_fire" );
        level.player _ID42407::_ID1890( ::_ID53825 );
        thread _ID42407::_ID11231();
    }
    else
    {
        wait 0.05;
        level.player thread _ID53825();
        level.player thread _ID43199();
    }

    _ID42237::_ID14413( "friendly_fire_warning" );

    if ( !isdefined( level._ID53602 ) )
    {
        level._ID53602 = &"AIRPORT_FAIL_BLEW_COVER_FIRE";
        level._ID9542 = &"AIRPORT_FAIL_BLEW_COVER_FIRE";
    }

    thread _ID51966();
    level thread _ID42407::_ID25088( "friendly_fire_watch_player", 0.1 );
    level.player enabledeathshield( 0 );
    level.player enablehealthshield( 0 );
    _ID42237::_ID3350( level.team, ::_ID50291 );
    var_0 = 0;

    switch ( level.team.size )
    {
        case 4:
            var_0 = 2;
            break;
        case 3:
            var_0 = 1;
            break;
        case 2:
            var_0 = 2;
            break;
        case 1:
            var_0 = 1;
            break;
    }

    _ID42407::_ID41090( level.team, var_0, 20 );
    var_1 = level._ID54299;
    magicbullet( var_1.weapon, var_1 gettagorigin( "tag_flash" ), level.player.origin + ( 0, 0, 64 ) );
    wait 0.2;
    magicbullet( var_1.weapon, var_1 gettagorigin( "tag_flash" ), level.player.origin + ( 0, 0, 64 ) );
    wait 0.2;
    magicbullet( var_1.weapon, var_1 gettagorigin( "tag_flash" ), level.player.origin + ( 0, 0, 64 ) );
    wait 0.2;
    magicbullet( var_1.weapon, var_1 gettagorigin( "tag_flash" ), level.player.origin + ( 0, 0, 64 ) );
    level.player kill();
}

_ID53825()
{
    level endon( "friendly_fire_warning" );
    self endon( "death" );
    level endon( "friendly_fire_stop_checking_for_player_dist" );
    var_0 = "friendly_fire_not_in_range";
    _ID42237::_ID14400( var_0 );
    thread _ID53062( var_0 );

    while ( level._ID45411["no_dist_line_num"] < 4 )
    {
        _ID42237::_ID14413( var_0 );

        while ( level._ID45411["no_dist_line_num"] < 4 )
        {
            _ID42237::_ID14430( var_0, 25 );

            if ( _ID42237::_ID14385( var_0 ) )
            {
                var_1 = level._ID45411["no_dist_line_num"];
                level._ID54299 thread _ID42407::_ID28864( level._ID45411["no_dist_line"][var_1] );
                level._ID45411["no_dist_line_num"]++;

                if ( level._ID45411["no_dist_line_num"] == 3 )
                    _ID42237::_ID14402( "friendly_fire_dist_check" );

                continue;
            }

            break;
        }

        _ID42237::_ID14388( "friendly_fire_dist_check" );

        if ( level._ID45411["no_dist_line_num"] == 3 )
            level._ID45411["no_dist_line_num"] = 2;
    }

    level._ID53602 = &"AIRPORT_FAIL_BLEW_COVER_WANDER";
    _ID42237::_ID14402( "friendly_fire_warning" );
}

_ID53062( var_0 )
{
    for (;;)
    {
        if ( distance( level._ID44212, self.origin ) > 600 )
        {
            if ( !_ID42237::_ID14385( var_0 ) )
                _ID42237::_ID14402( var_0 );
        }
        else if ( _ID42237::_ID14385( var_0 ) )
            _ID42237::_ID14388( var_0 );

        wait 0.25;
    }
}

_ID43110()
{
    level endon( "friendly_fire_warning" );
    level endon( "friendly_fire_stop_checking_for_player_fire" );
    self endon( "death" );
    var_0 = "friendly_fire_is_attacking";
    _ID42237::_ID14400( var_0 );
    thread _ID54488( var_0 );

    while ( level._ID45411["no_kill_line_num"] < 4 )
    {
        _ID42237::_ID14425( var_0, 25 );

        if ( _ID42237::_ID14385( "gate_main" ) )
        {
            _ID42237::_ID14413( "tarmac_open_fire" );
            _ID42237::_ID14388( "gate_main" );
            continue;
        }

        if ( _ID42237::_ID14385( var_0 ) )
        {
            if ( level._ID45411["no_kill_line_num"] == 3 )
                level._ID45411["no_kill_line_num"] = 2;

            _ID42237::_ID14388( var_0 );
            _ID42237::_ID14388( "friendly_fire_kill_check" );
            thread _ID42407::_ID14389( "friendly_fire_no_kill_line", 5 );
            continue;
        }

        var_1 = level._ID45411["no_kill_line_num"];
        level._ID54299 thread _ID42407::_ID28864( level._ID45411["no_kill_line"][var_1] );
        level._ID45411["no_kill_line_num"]++;
        _ID42237::_ID14402( "friendly_fire_no_kill_line" );

        if ( level._ID45411["no_kill_line_num"] == 3 )
            _ID42237::_ID14402( "friendly_fire_kill_check" );
    }

    level._ID53602 = &"AIRPORT_FAIL_BLEW_COVER_WANDER";
    _ID42237::_ID14402( "friendly_fire_warning" );
}

_ID54488( var_0 )
{
    self endon( "death" );
    level endon( "friendly_fire_warning" );
    notifyoncommand( "attack", "+frag" );
    notifyoncommand( "attack", "+attack" );

    for (;;)
    {
        self waittill( "attack" );
        _ID42237::_ID14402( var_0 );
        _ID42237::_ID14426( var_0 );
    }
}

_ID43199()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "grenade_fire",  var_0  );
        var_0._ID48441 = self;
    }
}

_ID51966()
{
    level.player waittill( "death" );

    if ( isdefined( level._ID53602 ) )
        setdvar( "ui_deadquote", level._ID53602 );

    _ID42407::_ID23778();
}

_ID49548()
{
    wait 10;
    level._ID43511--;
}

_ID44958()
{
    if ( isdefined( level.player._ID26273 ) && isdefined( level._ID423 ) && isdefined( level._ID423["min_participation"] ) && level.player._ID26273 <= level._ID423["min_participation"] )
        level._ID43511 = 2;
    else
        level._ID43511++;

    if ( level._ID43511 >= 2 )
        _ID42237::_ID14402( "friendly_fire_warning" );
    else
        thread _ID49548();
}

_ID49231()
{
    level endon( "friendly_fire_watch_player" );
    self endon( "friendly_fire_new_watch_cycle" );

    for (;;)
    {
        self waittill( "ai_event",  var_0, var_1  );
        waitframe;

        if ( _ID42237::_ID14385( "friendly_fire_pause_flash" ) )
            continue;

        if ( var_0 != "grenade danger" )
            continue;

        if ( !isdefined( var_1._ID48441 ) )
            continue;

        if ( !isdefined( self.grenade ) )
            continue;

        self._ID53205 = var_1._ID48441;

        if ( !isplayernumber( self._ID53205 ) )
            continue;

        _ID42237::_ID14402( "friendly_fire_warning" );
        level._ID53602 = &"AIRPORT_FAIL_BLEW_COVER_FIRE";
        level._ID9542 = &"AIRPORT_FAIL_BLEW_COVER_FIRE";
        break;
    }
}

_ID53166()
{
    level endon( "friendly_fire_watch_player" );
    self endon( "friendly_fire_new_watch_cycle" );

    for (;;)
    {
        self waittill( "flashbang",  var_0, var_1, var_2, var_3, var_4  );
        waitframe;

        if ( _ID42237::_ID14385( "friendly_fire_pause_flash" ) )
            continue;

        self._ID53205 = var_3;

        if ( !isplayernumber( self._ID53205 ) )
            continue;

        _ID44958();

        if ( _ID42237::_ID14385( "friendly_fire_warning" ) )
        {
            level._ID53602 = &"AIRPORT_FAIL_BLEW_COVER_FIRE";
            level._ID9542 = &"AIRPORT_FAIL_BLEW_COVER_FIRE";
        }

        break;
    }
}

_ID53672()
{
    level endon( "friendly_fire_watch_player" );
    self endon( "friendly_fire_new_watch_cycle" );
    self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );
    waitframe;
    self._ID53205 = var_1;

    if ( isplayernumber( self._ID53205 ) && !_ID42237::_ID14385( "friendly_fire_pause_fire" ) )
    {
        _ID44958();

        if ( _ID42237::_ID14385( "friendly_fire_warning" ) )
        {
            level._ID53602 = &"AIRPORT_FAIL_BLEW_COVER_FIRE";
            level._ID9542 = &"AIRPORT_FAIL_BLEW_COVER_FIRE";
        }
    }
}

_ID50011()
{
    level endon( "friendly_fire_watch_player" );
    self endon( "death" );
    var_0 = 0;
    self addaieventlistener( "grenade danger" );

    for (;;)
    {
        self notify( "friendly_fire_new_watch_cycle" );
        _ID42407::_ID1985( ::_ID53672 );
        _ID42407::_ID1985( ::_ID53166 );
        _ID42407::_ID1985( ::_ID49231 );
        _ID42407::_ID11232();

        if ( isplayernumber( self._ID53205 ) && _ID42237::_ID14385( "friendly_fire_warning" ) )
        {
            _ID42407::_ID28876();
            level._ID54299 thread _ID42407::_ID28864( "airport_mkv_youtraitor" );
            break;
            continue;
        }

        if ( isplayernumber( self._ID53205 ) && !_ID42237::_ID14385( "friendly_fire_checkfire_line" ) )
        {
            _ID42237::_ID14402( "friendly_fire_checkfire_line" );
            thread _ID42407::_ID14389( "friendly_fire_checkfire_line", 2.5 );

            if ( !_ID42237::_ID14385( "friendly_fire_pause_fire" ) )
            {
                _ID42407::_ID28876();
                level._ID54299 thread _ID42407::_ID28864( level._ID45411["ff_line"] );
                continue;
            }

            if ( _ID42237::_ID8201() )
            {
                level._ID54299 playrumbleonentity();

                if ( _ID42237::_ID8201() )
                    level._ID54299 thread _ID42407::_ID10805( "check_fire1" );
                else
                    level._ID54299 thread _ID42407::_ID10805( "check_fire2" );

                continue;
            }

            level.team["m4"] playrumbleonentity();

            if ( _ID42237::_ID8201() )
            {
                level.team["m4"] thread _ID42407::_ID10805( "check_fire1" );
                continue;
            }

            level.team["m4"] thread _ID42407::_ID10805( "check_fire2" );
        }
    }

    if ( var_0 < 80 || self.script_noteworthy == "makarov" )
        return;

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    self kill();
}

_ID50291()
{
    self endon( "death" );
    wait 0.05;
    _ID42407::_ID10910();
    waitframe;
    _ID47984::_ID46279();
    _ID42407::_ID7892();
    self.ignoreme = 1;
    self.ignoreall = 0;
    self._ID11575 = undefined;
    self.team = "axis";
    self.favoriteenemy = level.player;
    self._ID4867 = 1000;
    self.accuracy = 1000;
    self.combatmode = "cover";
    self._ID24424 = 1.1;
    self notify( "stop_spray_and_pray" );
    self notify( "stop_loop" );
    self stopanimscripted();
    self pushplayer( 0 );
    self.fixednode = 0;
    self._ID14383 = 0;
    _ID42407::_ID32628( 1 );

    if ( self.script_noteworthy != "makarov" )
    {
        if ( isdefined( self._ID22746 ) )
            _ID42407::_ID36519();

        self.maxhealth = 300;

        if ( self.health > 300 )
            self.health = 300;
    }
    else
    {
        self._ID7._ID11043 = 1;
        self._ID834 = "m4_grunt";
        _ID42407::_ID14803( self._ID834, "primary" );
    }

    self.goalradius = 400;

    for (;;)
    {
        self setgoalentity( level.player );
        wait 1;
    }
}

_ID45056()
{
    if ( _ID42237::_ID14385( "friendly_fire_warning" ) )
        return;

    level endon( "friendly_fire_warning" );

    if ( _ID42237::_ID14385( "tarmac_moveout" ) )
        return;

    level endon( "tarmac_moveout" );
    self waittill( "death",  var_0  );

    if ( !isplayernumber( var_0 ) )
        return;

    if ( _ID42237::_ID14385( "friendly_fire_no_kill_line" ) && !_ID42237::_ID14385( "friendly_fire_good_kill_line" ) )
    {
        _ID42237::_ID14402( "friendly_fire_good_kill_line" );
        thread _ID42407::_ID14389( "friendly_fire_good_kill_line", 20 );

        if ( !_ID42237::_ID14385( "friendly_fire_good_kill_line2" ) )
        {
            _ID42237::_ID14402( "friendly_fire_good_kill_line2" );
            thread _ID42407::_ID14389( "friendly_fire_good_kill_line2", 20 );
        }

        level._ID54299 _ID42407::_ID28864( "airport_mkv_welldone" );
    }
    else if ( !_ID42237::_ID14385( "friendly_fire_good_kill_line2" ) && _ID42237::_ID14385( "stairs_upperdeck_civs_dead" ) )
    {
        _ID42237::_ID14402( "friendly_fire_good_kill_line2" );
        level._ID54299 _ID42407::_ID28864( "airport_mkv_nice" );
    }
}

_ID46733()
{
    while ( !_ID42237::_ID14385( "escape_player_get_in" ) )
    {
        var_0 = ( 0, 0, 0 );
        var_1 = 0;

        foreach ( var_3 in level.team )
        {
            if ( !isalive( var_3 ) )
                continue;

            var_1++;
            var_0 += var_3.origin;
        }

        level._ID44212 = var_0 * 1.0 / var_1;
        wait 0.1;
    }
}

_ID46326()
{
    var_0 = spawn( "script_origin", level.player.origin );
    var_1 = level.player.angles;
    var_0.angles = var_1;
    thread _ID50395( var_0, var_1 );
    wait 0.5;
    maps\airport_lighting::_ID52306( "airport_start" );
    level.player playerlinkto( var_0, undefined, 1, 0, 0, 0, 0, 0 );
    wait 26.2;
    var_0.angles = ( 0, 0, 0 );
    level.player unlink();
    level.player setplayerangles( var_1 );
}

_ID50395( var_0, var_1 )
{
    var_2 = 26.5;
    var_3 = 1.5;
    var_4 = newhudelem();
    var_4.x = 0;
    var_4.y = 0;
    var_4.horzalign = "fullscreen";
    var_4.vertalign = "fullscreen";
    var_4.foreground = 1;
    var_4 setshader( "black", 640, 480 );

    if ( getdvar( "alt_intro" ) == "" )
        setdvar( "alt_intro", "" );

    if ( !isdefined( getdvar( "alt_intro" ) ) )
        setdvar( "alt_intro", "" );

    if ( getdvar( "alt_intro" ) != "" )
    {
        _ID42407::_ID10226( 4.25, ::_ID52293, var_4, var_0, var_1 );
        _ID42407::_ID10226( 8.25, ::_ID44364, var_4, var_0, var_1 );
        _ID42407::_ID10226( 13.75, ::_ID45030, var_4, var_0, var_1 );
        _ID42407::_ID10226( 14.65, ::_ID43045, var_4, var_0, var_1 );
        _ID42407::_ID10226( 19.75, ::_ID50768, var_4, var_0, var_1 );
    }

    wait(var_2);
    var_4 fadeovertime( var_3 );
    var_4.alpha = 0;
}

_ID52293( var_0, var_1, var_2 )
{
    var_1.angles = var_2 + ( 10, 20, 0 );
    var_1 rotateyaw( 7, 2 );
    var_3 = 0.25;
    var_0 fadeovertime( var_3 );
    var_0.alpha = 0.75;
    wait 0.5;
    var_0 fadeovertime( var_3 );
    var_0.alpha = 1;
}

_ID44364( var_0, var_1, var_2 )
{
    var_1.angles = var_2 + ( 10, -7, 0 );
    var_1 rotateyaw( -7, 2 );
    var_3 = 0.25;
    var_0 fadeovertime( var_3 );
    var_0.alpha = 0.85;
    wait 0.35;
    var_0 fadeovertime( var_3 );
    var_0.alpha = 1;
}

_ID45030( var_0, var_1, var_2 )
{
    var_1.angles = var_2 + ( 15, -27, 0 );
    var_1 rotateyaw( 6, 2 );
    var_3 = 0.05;
    var_0 fadeovertime( var_3 );
    var_0.alpha = 0.75;
    wait 0.2;
    var_0 fadeovertime( var_3 );
    var_0.alpha = 1;
}

_ID43045( var_0, var_1, var_2 )
{
    var_1.angles = var_2 + ( 7, 23, 0 );
    var_1 rotateyaw( -5, 2 );
    var_3 = 0.05;
    var_0 fadeovertime( var_3 );
    var_0.alpha = 0.75;
    wait 0.2;
    var_0 fadeovertime( var_3 );
    var_0.alpha = 1;
}

_ID50768( var_0, var_1, var_2 )
{
    setsaveddvar( "cg_fovscale", 0.2 );
    var_1.angles = var_2 + ( 0, 29, 0 );
    var_1 rotateyaw( 3, 2 );
    var_3 = 0.25;
    var_0 fadeovertime( var_3 );
    var_0.alpha = 0.9;
    wait 0.65;
    var_0 fadeovertime( var_3 * 2 );
    var_0.alpha = 1;
}

_ID53896( var_0 )
{
    if ( !isdefined( var_0 ) )
        _ID42407::_ID38928( "intro_vision_set", "targetname" );

    var_1 = 6;
    _ID42407::_ID32515( "airport_intro", var_1 );
    setexpfog( 619.914, 2540.24, 0.357315, 0.371612, 0.314966, 0.75818, var_1, 0.862745, 0.807843, 0.596078, ( -0.834131, 0.375308, -0.404189 ), 18.8429, 49.858, 1.22086 );
}

_ID46987( var_0 )
{
    if ( !isdefined( var_0 ) )
        _ID42237::_ID14413( "player_set_speed_stairs" );

    var_1 = 2;
    _ID42407::_ID32515( "airport_stairs", var_1 );
    setexpfog( 619.914, 2540.24, 0.356863, 0.372549, 0.313726, 0.629246, var_1, 0.862745, 0.807843, 0.596078, ( -0.894864, 0.44208, -0.0615121 ), 0, 20.1783, 1.22086 );
}

_ID47243( var_0 )
{
    if ( !isdefined( var_0 ) )
        _ID42237::_ID14413( "tarmac_hear_fsb" );

    var_1 = 12;
    setexpfog( 619.914, 3914.89, 0.584314, 0.623529, 0.635294, 0.710723, var_1 );
}

_ID46505( var_0 )
{
    if ( !isdefined( var_0 ) )
        _ID42237::_ID14413( "basement_set_vision" );

    var_1 = 5;
    _ID42407::_ID32515( "airport", var_1 );
    setexpfog( 619.914, 3914.89, 0.584314, 0.623529, 0.635294, 0.710723, var_1 );
}

_ID43240( var_0 )
{
    if ( !isdefined( var_0 ) )
        _ID42407::_ID38928( "escape_vision_set", "targetname" );

    var_1 = 3.0;
    _ID42407::_ID32515( "airport_intro", var_1 );
    setexpfog( 521.672, 2540.24, 0.441339, 0.532734, 0.533566, 0.629246, var_1, 0.862745, 0.807843, 0.596078, ( -0.700556, -0.712205, -0.0445665 ), 0, 23.7759, 0.644149 );
}

_ID52902( var_0 )
{
    if ( !isdefined( var_0 ) )
        _ID42237::_ID14413( "escape_mak_grab_hand" );

    var_1 = 1.0;
    _ID42407::_ID32515( "airport_intro", var_1 );
}

_ID43540()
{
    self endon( "death" );
    _ID47742();
    _ID48116();
    thread _ID53070();
    thread _ID53695();

    for (;;)
    {
        self waittill( "took_damage",  var_0  );
        self._ID31247 = self._ID31247 - var_0;
        _ID48116();
        wait 0.05;
    }
}

_ID48116()
{
    var_0 = "idle";

    if ( self._ID31247 < 0 )
        var_0 = "death";
    else if ( self._ID31247 < self._ID23052 * 0.8 )
        var_0 = "burning";
    else if ( self._ID31247 < self._ID23052 )
        var_0 = "damaged";

    if ( var_0 == self._ID36185 )
        return;

    self._ID36185 = var_0;
    thread _ID48696();
}

_ID53070()
{
    self endon( "death" );

    while ( distancesquared( level.player.origin, self.origin ) > squared( 500 ) || self._ID31247 > self._ID23052 * 0.5 )
        wait 0.1;

    _ID42237::_ID14426( "tarmac_bcs" );
    _ID42237::_ID14402( "tarmac_bcs" );
    level._ID54299 _ID42407::_ID10805( "engine_warn" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID48696()
{
    self notify( self._ID36185 );
    self endon( "death" );

    switch ( self._ID36185 )
    {
        case "idle":
            _ID54434();
            self playloopsound( "dst_jet_engine_close" );
            break;
        case "burning":
            self._ID19319 delete();
            _ID48896();
            _ID48511();
            self stopsounds();
            self playloopsound( "dst_jet_engine_burn" );
            thread _ID52225();
            break;
        case "death":
            _ID44465();
            var_0 = 300;
            radiusdamage( self._ID15142.origin + ( 0, 0, -40 ), var_0, 300, 20, self._ID43011 );
            physicsexplosionsphere( self._ID15142.origin, var_0, 0, var_0 * 0.01 );
            self stopsounds();
            self playrumbleonentity();
            self playsound( "dst_jet_engine_explosion" );
            self._ID52076 delete();
            self._ID24732 delete();
            self._ID43011 show();
            self._ID43011 solid();
            _ID42237::_ID10192( 0.5, ::delete );
            break;
    }
}

_ID54434()
{
    self._ID19319 = spawn( "script_model", self._ID15142.origin );
    var_0 = anglestoforward( self._ID15142.angles );
    var_0 *= 135.5;
    self._ID19319.origin = self._ID19319.origin + var_0;
    self._ID19319 setmodel( "tag_origin" );
    self._ID19319 hide();
    self._ID19319.angles = self._ID15142.angles;
    playfxontag( _ID42237::_ID16299( "jet_engine_737" ), self._ID19319, "tag_origin" );
}

_ID48896()
{
    self._ID52076 = spawn( "script_model", self._ID15142.origin );
    var_0 = anglestoforward( self._ID15142.angles );
    var_0 *= 31;
    self._ID52076.origin = self._ID52076.origin + var_0;
    self._ID52076 setmodel( "tag_origin" );
    self._ID52076 hide();
    self._ID52076.angles = self._ID15142.angles;
    playfxontag( _ID42237::_ID16299( "jet_fire" ), self._ID52076, "tag_origin" );
}

_ID44465()
{
    self._ID43335 = spawn( "script_model", self._ID15142.origin );
    var_0 = anglestoforward( self._ID15142.angles );
    var_0 *= 31;
    self._ID43335.origin = self._ID43335.origin + var_0;
    self._ID43335 setmodel( "tag_origin" );
    self._ID43335 hide();
    self._ID43335.angles = self._ID15142.angles;
    playfxontag( _ID42237::_ID16299( "jet_explosion" ), self._ID43335, "tag_origin" );
    self._ID43335 _ID42237::_ID10192( 1, ::delete );
}

_ID48511()
{
    self._ID52191 = spawnstruct();
    var_0 = anglestoforward( self._ID15142.angles );
    var_0 *= -31;
    self._ID52191.origin = self._ID15142.origin + var_0;
    self._ID52191.angles = self._ID15142.angles + ( 0, 180, 0 );
    _ID42237::_ID3350( getentarray( "jet_engine_debri", "targetname" ), ::_ID44711, self );
}

_ID44711( var_0 )
{
    var_0 endon( "death" );
    var_1 = 64;
    var_2 = 386;
    var_3 = 150;
    var_4 = 96;
    var_5 = squared( var_1 );
    var_6 = squared( var_2 );
    var_7 = squared( var_3 );
    var_8 = var_0._ID52191.origin - ( 0, 0, 76 );
    var_9 = ( self.origin[0], self.origin[1], var_8[2] );
    var_10 = vectornormalize( self.origin - var_0._ID52191.origin );

    if ( vectordot( var_10, anglestoforward( var_0._ID52191.angles ) ) < 0.4 )
        return;

    if ( distancesquared( var_0._ID52191.origin, self.origin ) < var_5 )
        return;

    if ( distancesquared( var_0._ID52191.origin, self.origin ) > var_6 )
        return;

    while ( distancesquared( var_0._ID52191.origin, self.origin ) > squared( var_4 ) )
    {
        var_4 += 3;
        wait 0.1;
    }

    var_11 = vectornormalize( var_8 - var_9 );
    var_12 = 1;

    while ( distancesquared( var_0._ID52191.origin, self.origin ) > var_7 )
    {
        var_12 *= 1.5;

        if ( var_12 > 40 )
            var_12 = 40;

        var_10 = var_11 * var_12;
        self moveto( self.origin + var_10, 0.1 );
        self rotatevelocity( ( 0, 300, 0 ), 0.1 );
        wait 0.05;
    }

    thread _ID47567( var_0 );
}

_ID47567( var_0 )
{
    var_1 = 400;
    var_2 = distance( var_0._ID52191.origin, self.origin ) / var_1;
    self moveto( var_0._ID52191.origin + ( randomfloatrange( -10, 10 ), randomfloatrange( -10, 10 ), randomfloat( 10 ) ), var_2 );
    self rotatevelocity( ( randomintrange( -650, -550 ), randomintrange( 350, 450 ), randomintrange( 50, 150 ) ), var_2 );
    wait(var_2);
    playfx( _ID42237::_ID16299( "jet_engine_fire_debris" ), self.origin, anglestoforward( var_0._ID52191.angles ), anglestoup( var_0._ID52191.angles ) );
    self delete();
}

_ID52225()
{
    self endon( "death" );
    var_0 = int( self._ID31247 / 60 );

    for (;;)
    {
        self notify( "damage",  var_0  );
        badplace_cylinder( "jet_engine_burn" + self._ID15142.targetname, 1, self._ID15142.origin + ( 0, 0, -76 ), 190, 150, "allies", "axis", "neutral" );
        wait 1;
    }
}

_ID50444( var_0 )
{
    var_0 endon( "death" );

    for (;;)
    {
        self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( isdefined( var_5 ) && var_5 == "MOD_CRUSH" )
        {
            wait 0.1;
            continue;
        }

        if ( isdefined( var_2 ) && !isplayernumber( var_2 ) && distancesquared( level.player.origin, self getorigin() ) < 1500 )
        {
            wait 0.1;
            continue;
        }

        var_0 notify( "took_damage",  var_1, var_2, var_3, var_4, var_5  );
    }
}

_ID47742()
{
    self._ID23052 = 1300;
    self._ID31247 = self._ID23052;
    self._ID36185 = "new";
    self._ID24732 = getent( self.target, "targetname" );
    self._ID24732 setcandamage( 1 );
    self._ID43011 = getent( self._ID24732.target, "targetname" );
    self._ID43011._ID279 = "jet_engine";
    self._ID43011 hide();
    self._ID43011 notsolid();
    self._ID15142 = _ID42237::_ID16638( self._ID43011.target, "targetname" );
    thread _ID50444( self );
    self._ID24732 thread _ID50444( self );
}

_ID43575()
{
    precachestring( &"AIRPORT_EXPLODING_JET_ENGINE_DEATH" );
    precacheshader( "hud_burningjetengineicon" );
    level.player waittill( "death",  var_0, var_1, var_2  );

    if ( var_1 != "MOD_EXPLOSIVE" )
        return;

    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( var_0._ID279 ) )
        return;

    if ( var_0._ID279 != "jet_engine" )
        return;

    wait 0.05;
    setdvar( "ui_deadquote", "@AIRPORT_EXPLODING_JET_ENGINE_DEATH" );
}

_ID53695()
{
    var_0 = getentarray( "trigger_multiple_fire_react", "classname" );
    var_1 = _ID42237::_ID16182( self.origin, var_0, 512 );

    if ( !isdefined( var_1 ) )
        return;

    for (;;)
    {
        if ( isdefined( self ) && isdefined( var_1._ID38863 ) )
            var_1 _ID42237::_ID38865();
        else if ( !isdefined( self ) && !isdefined( var_1._ID38863 ) )
        {
            var_1 _ID42237::_ID38863();
            return;
        }

        wait 0.05;
    }
}

_ID51732()
{
    var_0 = getentarray( "elevator_housing_glass", "script_noteworthy" );
    var_1 = getentarray( "airport_glass_elevator", "script_noteworthy" );
    var_2 = getentarray( "airport_glass_elevator_door", "script_noteworthy" );
    var_3 = getentarray( "elevator_doors", "script_noteworthy" );
    var_4 = getentarray( "elevator_housing", "targetname" );
    var_5 = getentarray( "elevator_cable", "targetname" );
    var_6 = getentarray( "elevator_wheels", "targetname" );

    foreach ( var_8 in var_0 )
    {
        var_9 = _ID42237::_ID16182( var_8 getorigin(), var_4 );
        var_8 linkto( var_9 );
    }

    foreach ( var_8 in var_1 )
    {
        var_9 = _ID42237::_ID16182( var_8.origin, var_4 );
        var_8 linkto( var_9 );
    }

    foreach ( var_8 in var_2 )
    {
        var_14 = _ID42237::_ID16182( var_8.origin, var_3 );
        var_8 linkto( var_14 );
    }

    wait 0.05;

    foreach ( var_17 in level._ID12382 )
    {
        var_18 = var_17._ID12279["housing"]["mainframe"][0];
        var_19 = _ID42237::_ID16182( var_18 getorigin(), var_5 );
        var_19._ID44494 = var_18;
        var_19._ID12332 = var_17;
        var_20 = _ID42237::_ID15566( var_18 getorigin(), var_6, undefined, 2 );
        var_19._ID53202 = [];

        foreach ( var_22 in var_20 )
        {
            var_23 = spawn( "script_origin", var_22.origin );
            var_22 linkto( var_23 );
            var_19._ID53202[var_22.script_noteworthy] = var_23;
        }
    }

    _ID42237::_ID3350( var_5, ::_ID47923 );
}

_ID47923()
{
    var_0 = self;

    while ( isdefined( var_0.target ) )
    {
        var_0 = getent( var_0.target, "targetname" );
        var_0 hide();
    }

    var_1 = self._ID12332;

    if ( !isdefined( var_1 ) )
        return;

    var_1._ID53945 = self;
    var_0 = self;
    var_2 = self._ID44494;
    var_0._ID53202 = self._ID53202;
    level._ID51093 = ( 0, 0, 200 );
    level._ID47977 = ( 0, 0, -200 );
    level._ID51784 = 94;
    var_3 = 0;
    var_4 = var_1 _ID42233::_ID15775();
    var_5 = var_1._ID12279["floor" + var_3 + "_pos"] - var_4.origin;
    var_6 = level._ID12373;
    var_7 = abs( distance( var_1._ID12279["floor" + var_3 + "_pos"], var_4.origin ) );
    var_8 = var_7 / var_6;

    for (;;)
    {
        var_1 waittill( "elevator_moving" );
        var_1 _ID48992( var_0, var_2, var_8 );
        var_1 waittill( "elevator_moved" );
        var_1 waittill( "elevator_moving" );
        var_1 _ID54058( var_0, var_2, var_8 );
        var_1 waittill( "elevator_moved" );
    }
}

_ID48992( var_0, var_1, var_2 )
{
    var_3 = var_0._ID53202;
    var_0 thread _ID50691( var_1, self );
    var_3["top"] rotatevelocity( level._ID51093, var_2, 1, 1 );
    var_3["bottom"] rotatevelocity( level._ID47977, var_2, 1, 1 );
}

_ID46962( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_0._ID53202;
    var_0 thread _ID50691( var_1, self );
    var_5["top"] rotatevelocity( var_3, var_2, var_2 );
    var_5["bottom"] rotatevelocity( var_4, var_2, var_2 );
}

_ID54058( var_0, var_1, var_2 )
{
    var_3 = var_0._ID53202;
    var_1._ID21780 thread _ID45682( var_1, self );
    var_3["top"] rotatevelocity( level._ID47977, var_2, 1, 1 );
    var_3["bottom"] rotatevelocity( level._ID51093, var_2, 1, 1 );
}

_ID50691( var_0, var_1 )
{
    _ID3559( var_0 );
    var_1 endon( "elevator_moved" );

    while ( distancesquared( self._ID25482, self getorigin() ) < squared( level._ID51784 ) )
        wait 0.05;

    if ( !isdefined( self.target ) )
        return;

    var_2 = getent( self.target, "targetname" );
    var_2 thread _ID50691( var_0, var_1 );
}

_ID3559( var_0 )
{
    self._ID25482 = self getorigin();
    self linkto( var_0 );
    var_0._ID21780 = self;

    if ( !isdefined( self.target ) )
        return;

    var_1 = getent( self.target, "targetname" );
    var_1 show();
}

_ID45682( var_0, var_1 )
{
    var_1 endon( "elevator_moved" );

    while ( distancesquared( self._ID25482, self getorigin() ) > squared( 2 ) )
        wait 0.05;

    thread _ID10619( var_0 );

    if ( self.targetname == "elevator_cable" )
        return;

    var_2 = getent( self.targetname, "target" );
    var_2 thread _ID45682( var_0, var_1 );
}

_ID10619( var_0 )
{
    if ( self.targetname == "elevator_cable" )
        return;

    self unlink();
    var_1 = 0.5;
    self moveto( self._ID25482, var_1 );
    wait(var_1);
    self hide();
}

_ID46402()
{
    if ( !_ID42237::_ID14396( "bsc_nade" ) )
        _ID42237::_ID14400( "bsc_nade" );

    level endon( "escape_main" );

    for (;;)
    {
        self waittill( "grenade danger",  var_0  );

        if ( _ID42237::_ID14385( "bsc_nade" ) )
            continue;

        if ( !isdefined( var_0 ) || var_0.model != "projectile_m67fraggrenade" )
            continue;

        if ( distance( var_0.origin, level.player.origin ) < 512 )
        {
            _ID42237::_ID14402( "bsc_nade" );
            var_1 = level._ID54299;

            if ( _ID42237::_ID8201() )
                var_1 = level.team["m4"];

            var_1 playrumbleonentity();

            if ( _ID42237::_ID8201() )
                var_1 _ID42407::_ID10805( "grenade1" );
            else
                var_1 _ID42407::_ID10805( "grenade2" );

            wait 4;
            _ID42237::_ID14388( "bsc_nade" );
        }
    }
}

_ID50622()
{
    var_0 = 0.1;
    var_1 = 5;

    while ( var_1 > 0 )
    {
        if ( _ID51178() )
            return;

        var_1 -= var_0;
        wait(var_0);
    }

    _ID42407::_ID11090( "grenade_launcher", 5 );
}

_ID51178( var_0 )
{
    var_1 = _ID42407::_ID15912();
    var_2 = var_1 getcurrentweapon();
    var_3 = getsubstr( var_2, 0, 4 );

    if ( var_3 == "m203" )
        return 1;

    var_4 = var_1 getweaponslistall();

    foreach ( var_2 in var_4 )
    {
        var_6 = var_1 getweaponammoclip( var_2 );

        if ( !issubstr( var_2, "m203" ) )
            continue;

        if ( var_6 > 0 )
            return 0;
    }

    return 1;
}
#using_animtree("vehicles");

_ID54327()
{
    self useanimtree( #animtree );
    self setanim( %h2_airport_ending_open_doors );
}

_ID44676()
{
    self useanimtree( #animtree );
    self clearanim( %h2_airport_ending_open_doors, 0.2 );
    self setanim( %h2_airport_ending_close_doors );
}

_ID50631( var_0, var_1, var_2, var_3 )
{
    level endon( "stop_music" );
    var_4 = spawn( "script_origin", level.player.origin );
    var_4 linkto( level.player );
    var_4 playsound( var_0 + "_sfx" );
    var_4 thread _ID43408();
    wait(var_3);
    _ID42407::_ID24577( var_0, var_1, var_2 );
    wait 0.1;
    var_4 delete();
}

_ID43408()
{
    level waittill( "stop_music" );
    self endon( "death" );
    self playrumbleonentity();
    wait 0.05;
    self delete();
}

_ID44291()
{
    var_0 = getentarray( "h2_rotating_turbine", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 rotatevelocity( ( 400, 0, 0 ), 500 );

    _ID42237::_ID3350( var_0, ::h2_turbine_rotating_destruct );
}

h2_turbine_rotating_destruct()
{
    var_0 = getentarray( "jet_engine", "targetname" );
    var_1 = _ID42237::_ID16182( self.origin, var_0, 512 );

    for (;;)
    {
        if ( isdefined( var_1 ) && isdefined( var_1._ID36185 ) && var_1._ID36185 == "death" )
            break;

        wait 0.05;
    }

    self rotatevelocity( ( 0, 0, 0 ), 1000000 );
}

_ID53373()
{
    var_0 = getglassarray( "italian_glass_delete" );
    var_1 = getentarray( "italian_destruction_impulse", "targetname" );
    level._ID54299 waittill( "m79_shot2" );
    wait 0.1;

    foreach ( var_3 in var_0 )
        deleteglass( var_3 );

    _ID42234::_ID13611( "destruction_1" );

    foreach ( var_6 in var_1 )
        physicsexplosionsphere( var_6.origin, 150, 50, 1, 0 );
}

_ID54536()
{
    level.player.baseline_speed_scale_max = 0.4;
    _ID42237::_ID14402( "yuri_ee_playing" );
    _ID42237::_ID14402( "player_DMS_disable_auto_sprint" );
    self setmodel( "body_airport_com_e" );

    if ( isdefined( self._ID18304 ) )
        self detach( self._ID18304 );

    self attach( "head_airport_yuri", "", 1 );
    _ID42407::_ID14803( "colt45", "primary" );
    self._ID3189 = "generic";
    var_0 = spawn( "script_origin", ( 6528, 2260, 62.75 ) );
    var_0 _ID42259::_ID3111( self, "yuri_elevator_ee" );
    var_0 _ID42259::_ID3038( self, "yuri_elevator_ee" );
    self forceteleport( ( 5687.15, 1892.92, 62.8406 ), ( 0, 180, 0 ) );
    level.player.baseline_speed_scale_max = undefined;
    _ID42237::_ID14388( "yuri_ee_playing" );

    if ( _ID42237::_ID14385( "team_at_top_of_stairs" ) )
        _ID42237::_ID14388( "player_DMS_disable_auto_sprint" );
}

h2_enemies_2ndfloor_explosion()
{
    self waittill( "death",  var_0, var_1  );

    if ( !isdefined( self ) || _func_2a5( self ) )
        return;

    self._ID28895 = 1;
}

h2_solarsystem_rotating()
{
    waittillframeend;
    var_0 = getent( "h2_solarsystem_rotating", "targetname" );
    var_0 rotatevelocity( ( 0, 5, 0 ), 20000 );
}

elevator_crash_earthquake()
{
    var_0 = getent( "elevator_earthquake", "targetname" );

    if ( level.player istouching( var_0 ) )
    {
        earthquake( 0.1, 2, var_0.origin, 800 );
        level.player playrumblelooponentity( "light_2s" );
    }
}

h2_security_cameras_setup()
{
    var_0 = getentarray( "security_camera_intact", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::h2_security_camera_destroy );
}

h2_security_camera_destroy()
{
    var_0 = self;
    var_1 = getent( var_0.target, "targetname" );
    var_2 = _ID42237::_ID16299( "electrical_sparks" );
    var_3 = getent( var_1.target, "targetname" );
    var_3 linkto( var_1 );
    var_1 hide();
    var_0 setcandamage( 1 );
    var_0 waittill( "damage" );
    var_0 hide();
    var_1 show();
    var_1.angles = var_1.angles - ( randomfloatrange( 10, 30 ), randomfloatrange( -20, 20 ), randomfloatrange( -5, 5 ) );
    playfx( var_2, var_3.origin );
    wait(randomfloatrange( 1, 3 ));
    var_4 = ( randomintrange( -335, -300 ), var_1.angles[1], var_1.angles[2] );
    var_5 = randomfloatrange( 1.5, 5 );
    var_1 rotateto( var_4, var_5, var_5 );
}

h2_elevator_destruction_swap()
{
    var_0 = getent( "elevator_destroyed", "targetname" );
    var_0 hide();
    _ID42237::_ID14413( "elevator_destroyed" );
    var_0 show();
}

h2_intro_lugage_se()
{
    var_0 = getentarray( "lugage_se", "targetname" );
    var_1 = spawnstruct();
    var_1.origin = ( 5915, 1693, 64 );

    foreach ( var_3 in var_0 )
    {
        var_3._ID3189 = "luggage";
        var_3 _ID42407::_ID3428( "luggage" );
        var_1 _ID42259::_ID3018( var_3, var_3.script_noteworthy );
    }

    _ID42237::_ID14413( "conveyor_animate" );

    foreach ( var_3 in var_0 )
        var_1 thread _ID42259::_ID3111( var_3, var_3.script_noteworthy );
}

h2_ambulance_light()
{
    var_0 = getent( "h2_outro_outside_light", "script_noteworthy" );
    var_1 = getent( "h2_outro_inside_light", "script_noteworthy" );
    _ID42237::_ID14413( "end_player_ready" );

    if ( isdefined( var_1 ) )
        var_1 thread h2_light_turupp( 1, 90 );

    if ( isdefined( var_0 ) )
        var_0 thread h2_light_turupp( 25000, 90 );
}

h2_light_turupp( var_0, var_1 )
{
    var_2 = var_0 / var_1;
    var_3 = self getlightintensity();

    while ( var_0 > var_3 )
    {
        var_3 = _ID42237::_ID53482( var_3 + var_2, 0, var_0 );
        self setlightintensity( var_3 );
        waittillframeend;
    }
}

corpse_deletion_monitor()
{
    level endon( "gate_player_off_stairs" );
    setsaveddvar( "ai_corpseCount", 28 );
    thread reset_allowed_corpses();
    thread elevator_weapon_delete();
    var_0 = getent( "delete_corpses_elevator_all", "targetname" );
    var_1 = getent( "delete_corpses_elevator_back", "targetname" );
    _ID42237::_ID14388( "delete_corpses_back_only" );

    for (;;)
    {
        var_2 = getcorpsearray();

        foreach ( var_4 in var_2 )
        {
            if ( _ID42237::_ID14385( "delete_corpses_back_only" ) )
            {
                if ( var_4 istouching( var_1 ) )
                    var_4 delete();

                continue;
            }

            if ( var_4 istouching( var_0 ) )
                var_4 delete();
        }

        var_2 = getcorpsearray();

        if ( var_2.size >= 25 )
        {
            var_6 = _ID42237::_ID16276( level.player.origin, var_2, 10000 );
            var_6 delete();
        }

        waittillframeend;
    }
}

reset_allowed_corpses()
{
    _ID42237::_ID14413( "basement_player_at_stairs" );
    setsaveddvar( "ai_corpseCount", 16 );
}

_ID47472( var_0 )
{
    level endon( var_0 );

    while ( isdefined( self ) )
    {
        ragdollwakeup( self.origin, 300 );
        waittillframeend;
    }
}

elevator_weapon_delete()
{
    level endon( "gate_player_off_stairs" );
    _ID42237::_ID14413( "delete_corpses_back_only" );
    var_0 = getent( "delete_weapons_elevator", "targetname" );

    for (;;)
    {
        var_1 = getweaponarray();

        foreach ( var_3 in var_1 )
        {
            if ( var_3 istouching( var_0 ) )
                var_3 delete();
        }

        waittillframeend;
    }
}
