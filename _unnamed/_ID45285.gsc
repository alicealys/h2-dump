// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49852()
{
    _ID42237::_ID30396( "hiding_door_spawner", ::_ID46946 );
}

_ID46946()
{
    var_0 = undefined;

    if ( isdefined( self._ID31388 ) && _ID42237::_ID14396( self._ID31388 ) )
        var_0 = self._ID31388;

    var_1 = undefined;

    if ( isdefined( self._ID31388 ) && self._ID31388 == "open_door_when_spawner_deleted" )
        var_1 = self._ID31388;

    var_2 = getentarray( "hiding_door_guy_org", "targetname" );
    var_3 = _ID42237::_ID16182( self.origin, var_2 );
    var_3.targetname = undefined;
    var_4 = getentarray( var_3.target, "targetname" );
    var_5 = undefined;
    var_6 = undefined;
    var_7 = undefined;

    if ( isdefined( var_3._ID31273 ) )
        var_7 = var_3 _ID42237::_ID15807();

    if ( var_4.size == 1 )
        var_5 = var_4[0];
    else
    {
        foreach ( var_9 in var_4 )
        {
            if ( var_9.code_classname == "script_brushmodel" )
            {
                var_6 = var_9;
                continue;
            }

            if ( var_9.code_classname == "script_model" )
                var_5 = var_9;
        }
    }

    if ( !isdefined( var_6 ) && isdefined( var_5 ) && isdefined( var_5.script_noteworthy ) && var_5.script_noteworthy == "keep_door" )
    {
        var_6 = spawn( "script_model", var_5.origin );
        var_6 setmodel( var_5.model );
        var_6.angles = var_5.angles;
        var_6.script_noteworthy = var_5.script_noteworthy;
    }

    var_11 = getent( var_5.target, "targetname" );
    var_12 = undefined;

    if ( isdefined( var_11.target ) )
        var_12 = getent( var_11.target, "targetname" );

    if ( isdefined( var_12 ) )
    {
        if ( isdefined( var_0 ) )
            var_12 thread _ID45341( var_0 );

        var_3 thread _ID48813( var_12 );

        if ( !isdefined( level._ID49274 ) )
            level._ID49274 = [];

        level._ID49274[level._ID49274.size] = var_12;
    }

    var_5 delete();
    var_13 = _ID42407::_ID35028( "hiding_door" );
    var_3 thread _ID42259::_ID3018( var_13, "fire_3" );

    if ( isdefined( var_6 ) )
    {
        var_6 linkto( var_13, "door_hinge_jnt" );
        var_13 hide();
    }

    if ( isdefined( var_11 ) )
    {
        var_11 linkto( var_13, "door_hinge_jnt" );
        var_11 disconnectpaths();
    }

    var_14 = undefined;

    if ( isdefined( self.target ) )
    {
        var_14 = getent( self.target, "targetname" );

        if ( !issubstr( var_14.classname, "trigger" ) )
            var_14 = undefined;
    }

    if ( !isdefined( self._ID31197 ) && !isdefined( var_14 ) )
    {
        var_15 = 200;

        if ( isdefined( self.radius ) )
            var_15 = self.radius;

        var_14 = spawn( "trigger_radius", var_3.origin, 0, var_15, 48 );
    }

    if ( isdefined( var_7 ) )
        badplace_brush( var_7 getentitynumber(), 0, var_7, "allies" );

    _ID42407::_ID1947( ::_ID51857, var_3, var_14, var_13, var_11, var_7 );

    if ( isdefined( var_1 ) )
        thread _ID51720( var_3, var_13, var_11, var_7 );
}

_ID53486( var_0 )
{
    self endon( "kill_player_watch_behind" );
    self endon( "death" );

    for (;;)
    {
        var_1 = _ID46363( var_0.angles, self.origin, level.player.origin );

        if ( _ID50258( var_1 ) )
        {
            if ( _ID45555() )
                return;
        }

        waittillframeend;
    }
}

_ID51857( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "quitted_door_behavior" );
    var_5 = _ID53024( var_0 );
    var_3 setcandamage( 1 );
    var_3 thread _ID50110( self );
    self._ID3189 = "hiding_door_guy";
    self endon( "death" );
    self endon( "damage" );
    self.grenadeammo = 2;
    _ID42407::_ID32265( "death_2" );
    self.allowdeath = 1;
    self.health = 50000;
    self.alwaysredhitmarker = 1;
    var_6 = [];
    var_6[var_6.size] = var_2;
    var_6[var_6.size] = self;
    thread _ID53624( var_0, self, var_2, var_3, var_4 );
    thread _ID51197( var_2, var_0, self, var_3, var_4 );

    if ( var_5 )
        var_0 thread _ID42259::_ID3040( var_6, "idle" );
    else
        var_0 thread _ID42259::_ID3016( var_6, "fire_3" );

    if ( isdefined( var_1 ) )
    {
        wait 0.05;
        var_1 waittill( "trigger" );
    }
    else
        _ID42237::_ID14413( self._ID31197 );

    if ( var_5 )
    {
        var_0 notify( "stop_loop" );
        var_0 _ID42259::_ID3099( var_6, "close" );
    }

    var_7 = 0;
    var_8 = 0;

    for (;;)
    {
        var_9 = level.player;

        if ( isdefined( self.enemy ) )
            var_9 = self.enemy;

        var_10 = _ID46363( var_2.angles, self.origin, var_9.origin );

        if ( _ID50258( var_10 ) )
        {
            if ( _ID45555() )
                return;
        }

        if ( var_7 >= 2 )
        {
            if ( _ID45555( 1 ) )
                return;
        }

        var_11 = undefined;

        if ( var_10 == "left" || var_10 == "front" )
            var_11 = "fire_3";
        else if ( var_10 == "right" )
        {
            var_11 = "fire_1";

            if ( _ID42237::_ID8201() )
                var_11 = "fire_2";
        }
        else
        {
            thread _ID53486( var_2 );
            var_0 _ID42259::_ID3099( var_6, "open" );
            var_0 _ID42259::_ID3099( var_6, "close" );
            self notify( "kill_player_watch_behind" );
            var_7++;
            continue;
        }

        if ( _ID45444( var_10, var_9, var_8 ) )
        {
            var_11 = "jump";

            if ( _ID42237::_ID8201() )
            {
                if ( self maymovetopoint( animscripts\utility::_ID16127( level._ID30895[self._ID3189]["kick"] ) ) )
                    var_11 = "kick";
            }

            thread _ID52270( var_3, var_4 );
            var_0 notify( "push_player" );
            self notify( "charge" );
            self.allowdeath = 1;
            self.health = 100;
            _ID42407::_ID7854();
            var_0 _ID42259::_ID3099( var_6, var_11 );
            _ID45555();
            return;
        }

        if ( _ID48149( var_10, var_8 ) )
        {
            self.grenadeammo--;
            var_11 = "grenade";
        }

        var_7 = 0;
        var_8++;
        var_12 = getentarray( "hiding_door_guy_anim_org", "targetname" );
        var_13 = undefined;

        if ( isdefined( var_12 ) )
            var_13 = _ID42237::_ID16182( self.origin, var_12, 256 );

        if ( isdefined( var_13 ) )
        {
            var_0 thread _ID42259::_ID3111( var_6[0], var_11 );
            var_13 thread _ID42259::_ID3111( var_6[1], var_11 );
        }
        else
            var_0 thread _ID42259::_ID3099( var_6, var_11 );

        _ID42407::_ID10226( 0.05, _ID42259::_ID3096, var_6, var_11, 0.3 );
        var_0 waittill( var_11 );
        var_0 thread _ID42259::_ID3016( var_6, "open" );
        wait(randomfloatrange( 0.2, 1.0 ));
        var_0 notify( "stop_loop" );
    }
}

_ID45555( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    if ( var_0 )
    {
        if ( !sighttracepassed( level.player geteye(), self geteye(), 0, self ) )
            return 0;
    }

    self.health = 100;
    _ID42407::_ID7854();
    self.goalradius = 512;
    self setgoalpos( self.origin );
    self notify( "quit_door_behavior" );
    self stopanimscripted();
    self notify( "killanimscript" );
    self notify( "quitted_door_behavior" );
    return 1;
}

_ID50258( var_0 )
{
    if ( var_0 != "behind" )
        return 0;

    var_1 = distance( self.origin, level.player.origin );

    if ( var_1 > 250 )
        return 0;

    if ( !sighttracepassed( level.player geteye(), self geteye(), 0, self ) )
        return 0;

    return 1;
}

_ID45444( var_0, var_1, var_2 )
{
    var_3 = 3;
    var_4 = 100;
    var_5 = 600;

    if ( var_2 < var_3 )
        return 0;

    if ( var_1 != level.player )
        return 0;

    if ( var_0 != "front" )
        return 0;

    var_6 = distance( self.origin, level.player.origin );

    if ( var_6 < var_4 )
        return 0;

    if ( var_6 > var_5 )
        return 0;

    return _ID42237::_ID8201();
}

_ID48149( var_0, var_1 )
{
    if ( var_1 < 1 )
        return 0;

    if ( var_0 == "behind" )
        return 0;

    if ( randomint( 100 ) < 25 * self.grenadeammo )
        return 1;

    return 0;
}

_ID46363( var_0, var_1, var_2 )
{
    var_3 = anglestoforward( var_0 );
    var_4 = vectornormalize( var_3 );
    var_5 = vectortoangles( var_4 );
    var_6 = vectortoangles( var_2 - var_1 );
    var_7 = var_5[1] - var_6[1];
    var_7 += 360;
    var_7 = int( var_7 ) % 360;
    var_8 = undefined;

    if ( var_7 >= 90 && var_7 <= 270 )
        var_8 = "behind";
    else if ( var_7 >= 300 || var_7 <= 45 )
        var_8 = "front";
    else if ( var_7 < 90 )
        var_8 = "right";
    else if ( var_7 > 270 )
        var_8 = "left";

    return var_8;
}

_ID51720( var_0, var_1, var_2, var_3 )
{
    self endon( "spawned" );
    self waittill( "death" );
    waittillframeend;
    var_0 notify( "stop_loop" );
    thread _ID52270( var_2, var_3 );
    var_0 notify( "push_player" );

    if ( !isdefined( var_1._ID43474 ) )
    {
        var_1._ID43474 = 1;
        var_0 thread _ID42259::_ID3111( var_1, "death_2" );
    }
}

_ID53624( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 endon( "charge" );
    var_1 _ID42237::_ID41098( "death", "quit_door_behavior" );
    var_0 notify( "stop_loop" );
    thread _ID52270( var_3, var_4 );
    var_0 notify( "push_player" );

    if ( !isdefined( var_2._ID43474 ) )
    {
        var_2._ID43474 = 1;
        var_0 thread _ID42259::_ID3111( var_2, "death_2" );
    }
}

_ID48813( var_0 )
{
    self waittill( "push_player" );
    var_0 moveto( self.origin, 1.5 );
    wait 1.5;
    var_0 delete();
}

_ID50110( var_0 )
{
    var_0 endon( "death" );
    var_0 endon( "charge" );
    var_0 endon( "quit_door_behavior" );

    for (;;)
    {
        self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( !isplayernumber( var_2 ) || !( var_5 == "MOD_PROJECTILE_SPLASH" || var_5 == "MOD_GRENADE_SPLASH" ) )
            continue;

        break;
    }

    var_0 dodamage( var_1, var_4, var_2 );
}

_ID45341( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        self notsolid();
        _ID42237::_ID14426( var_0 );
        self solid();
    }
}

_ID54272( var_0 )
{
    var_1 = var_0 gettagorigin( "J_Wrist_RI" );
    var_2 = distance( level.player.origin, var_0.origin ) * 2.0;

    if ( var_2 < 300 )
        var_2 = 300;

    if ( var_2 > 1000 )
        var_2 = 1000;

    var_3 = vectornormalize( level.player.origin - var_0.origin );
    var_4 = var_3 * var_2;
    var_0 magicgrenademanual( var_1, var_4, randomfloatrange( 3.0, 5.0 ) );
}

_ID51197( var_0, var_1, var_2, var_3, var_4 )
{
    var_2 endon( "charge" );
    var_2 endon( "quit_door_behavior" );
    var_2 waittill( "damage",  var_5, var_6  );

    if ( !isalive( var_2 ) )
        return;

    thread _ID52270( var_3, var_4 );
    var_1 notify( "push_player" );
    var_7 = getentarray( "hiding_door_guy_anim_org", "targetname" );
    var_8 = undefined;

    if ( isdefined( var_7 ) )
        var_8 = _ID42237::_ID16182( self.origin, var_7, 256 );

    if ( isdefined( var_8 ) )
        var_8 thread _ID42259::_ID3111( var_2, "death_2" );
    else
        var_1 thread _ID42259::_ID3111( var_2, "death_2" );

    if ( !isdefined( var_0._ID43474 ) )
    {
        var_0._ID43474 = 1;
        var_1 thread _ID42259::_ID3111( var_0, "death_2" );
    }

    var_2 _ID49347::_ID47451( 1, 1 );
    wait 0.5;

    if ( isalive( var_2 ) )
    {
        _ID45456::_ID54623( var_2 );
        var_2 kill( ( 0, 0, 0 ) );
    }
}

_ID52270( var_0, var_1 )
{
    wait 2;

    if ( isdefined( var_0 ) )
        var_0 disconnectpaths();

    if ( isdefined( var_1 ) )
        badplace_delete( var_1 getentitynumber() );
}

_ID53024( var_0 )
{
    return isdefined( var_0.script_noteworthy ) && var_0.script_noteworthy == "starts_open";
}
