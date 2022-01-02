// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19908()
{
    if ( getdvar( "debug_drones" ) == "" )
        setdvar( "debug_drones", "0" );

    if ( !isdefined( level._ID22616 ) )
        level._ID11917 = 200;

    if ( !isdefined( level._ID23042 ) )
        level._ID23042 = [];

    if ( !isdefined( level._ID23042["allies"] ) )
        level._ID23042["allies"] = 99999;

    if ( !isdefined( level._ID23042["axis"] ) )
        level._ID23042["axis"] = 99999;

    if ( !isdefined( level._ID23042["team3"] ) )
        level._ID23042["team3"] = 99999;

    if ( !isdefined( level._ID23042["neutral"] ) )
        level._ID23042["neutral"] = 99999;

    if ( !isdefined( level._ID12061 ) )
        level._ID12061 = [];

    if ( !isdefined( level._ID12061["allies"] ) )
        level._ID12061["allies"] = _ID42407::_ID36709();

    if ( !isdefined( level._ID12061["axis"] ) )
        level._ID12061["axis"] = _ID42407::_ID36709();

    if ( !isdefined( level._ID12061["team3"] ) )
        level._ID12061["team3"] = _ID42407::_ID36709();

    if ( !isdefined( level._ID12061["neutral"] ) )
        level._ID12061["neutral"] = _ID42407::_ID36709();

    level._ID11971 = ::_ID11876;
}

_ID11876()
{
    if ( level._ID12061[self.team]._ID3291.size >= level._ID23042[self.team] )
    {
        self delete();
        return;
    }

    thread _ID11817( self );
    level notify( "new_drone" );
    self setcandamage( 1 );
    _ID42288::_ID11867();

    if ( isdefined( self._ID31153 ) )
        return;

    thread _ID11838();

    if ( isdefined( self.target ) )
    {
        if ( !isdefined( self._ID31299 ) )
            thread _ID11928();
        else
            thread _ID12018();
    }

    if ( isdefined( self._ID31276 ) && self._ID31276 == 0 )
        return;

    thread _ID11871();
}

_ID11817( var_0 )
{
    _ID42407::_ID36712( level._ID12061[var_0.team], var_0 );
    var_1 = var_0.team;
    var_0 waittill( "death" );

    if ( isdefined( var_0 ) && isdefined( var_0._ID36708 ) )
        _ID42407::_ID36714( level._ID12061[var_1], var_0._ID36708 );
    else
        _ID42407::_ID36715( level._ID12061[var_1] );
}

_ID11838()
{
    _ID12017();

    if ( !isdefined( self ) )
        return;

    var_0 = "stand";

    if ( isdefined( self._ID3203 ) && isdefined( level._ID11813[self.team][self._ID3203] ) && isdefined( level._ID11813[self.team][self._ID3203]["death"] ) )
        var_0 = self._ID3203;

    var_1 = level._ID11813[self.team][var_0]["death"];

    if ( isdefined( self._ID9813 ) )
        var_1 = self._ID9813;

    self notify( "death" );

    if ( isdefined( level._ID11837 ) )
    {
        self thread [[ level._ID11837 ]]( var_1 );
        return;
    }

    if ( !( isdefined( self._ID24924 ) && isdefined( self._ID34237 ) ) )
    {
        if ( isdefined( self._ID24924 ) )
            _ID11939( var_1, "deathplant" );
        else if ( isdefined( self._ID34237 ) )
        {
            self startragdoll();
            _ID11939( var_1, "deathplant" );
        }
        else
        {
            _ID11939( var_1, "deathplant" );
            self startragdoll();
        }
    }

    self notsolid();
    thread _ID12000( 2 );

    if ( isdefined( self ) && isdefined( self._ID24866 ) )
        return;

    wait 10;

    while ( isdefined( self ) )
    {
        if ( !_ID42237::_ID41802( level.player.origin, level.player.angles, self.origin, 0.5 ) )
            self delete();

        wait 5;
    }
}

_ID11926()
{
    self endon( "death" );

    for (;;)
    {
        while ( !isdefined( self.damageshield ) || !self.damageshield )
            wait 0.05;

        var_0 = self.health;
        self.health = 100000;

        while ( isdefined( self.damageshield ) && self.damageshield )
            wait 0.05;

        self.health = var_0;
        wait 0.05;
    }
}

_ID12017()
{
    self endon( "death" );

    while ( isdefined( self ) )
    {
        self waittill( "damage" );

        if ( isdefined( self.damageshield ) && self.damageshield )
        {
            self.health = 100000;
            continue;
        }

        if ( self.health <= 0 )
            break;
    }
}

_ID12000( var_0 )
{
    wait(var_0);

    if ( isdefined( self ) )
        self thermaldrawdisable();
}
#using_animtree("generic_human");

_ID11938( var_0, var_1 )
{
    if ( isdefined( self._ID11919 ) )
        self [[ self._ID11920 ]]( var_0, var_1 );
    else
    {
        self clearanim( %body, 0.2 );
        self stopanimscripted();
        self setflaggedanimknoballrestart( "drone_anim", var_0, %body, 1, 0.2, var_1 );
        self._ID12026 = var_0;
    }
}

_ID11939( var_0, var_1 )
{
    if ( self.type == "human" )
        self clearanim( %body, 0.2 );

    self stopanimscripted();
    var_2 = "normal";

    if ( isdefined( var_1 ) )
        var_2 = "deathplant";

    var_3 = "drone_anim";
    self animscripted( var_3, self.origin, self.angles, var_0, var_2 );
    self waittillmatch( "drone_anim",  "end"  );
}

_ID11846()
{
    if ( !isdefined( self ) )
        return;

    self waittill( "death" );

    if ( !isdefined( self ) )
        return;

    var_0 = getweaponmodel( self.weapon );
    var_1 = self.weapon;

    if ( isdefined( var_0 ) )
    {
        _ID42407::_ID10616( self.weapon );
        self detach( var_0, "tag_weapon_right" );
        var_2 = self gettagorigin( "tag_weapon_right" );
        var_3 = self gettagangles( "tag_weapon_right" );
        var_4 = spawn( "weapon_" + var_1, ( 0, 0, 0 ) );
        var_4.angles = var_3;
        var_4.origin = var_2;
    }
}

_ID11962( var_0 )
{
    if ( isdefined( anim._ID3277[var_0] ) )
    {
        var_1 = anim._ID3277[var_0]["idle"]["stand"][0];
        var_1 = _ID42237::_ID3296( var_1, anim._ID3277[var_0]["idle"]["stand"][1] );
        var_2 = anim._ID3277[var_0]["idle"]["stand"][0][0];
        self._ID11814 = var_2;
        self._ID11815 = var_1;
        self._ID11872 = 1;
        self._ID11873 = ::_ID11816;
        thread _ID11871( undefined, undefined );
    }
}

_ID11816()
{
    self endon( "death" );
    var_0 = 10;

    if ( !isdefined( self._ID11815 ) || !isarray( self._ID11815 ) )
        return;

    self clearanim( %body, 0.2 );
    self stopanimscripted();
    var_1 = 1;
    animscripts\face::_ID28062( undefined, "idle", undefined );

    for (;;)
    {
        var_2 = _ID42237::_ID28945( self._ID11815 );

        if ( randomint( 100 ) < var_0 || var_1 )
        {
            self setflaggedanimknoballrestart( "drone_anim", var_2, %body, 1, 0.2, 1 );
            var_1 = 0;
        }

        self waittillmatch( "drone_anim",  "end"  );
        self setflaggedanimknoballrestart( "drone_anim", self._ID11814, %body, 1, 0.2, 1 );
    }
}

_ID11871( var_0, var_1 )
{
    if ( isdefined( self._ID11872 ) )
        [[ self._ID11873 ]]();
    else if ( isdefined( var_0 ) && isdefined( var_0["script_noteworthy"] ) && isdefined( level._ID11813[self.team][var_0["script_noteworthy"]] ) )
        thread _ID11853( var_0["script_noteworthy"], var_0, var_1 );
    else
    {
        if ( isdefined( self._ID19324 ) )
        {
            _ID11938( self._ID19324, 1 );
            return;
        }

        _ID11938( level._ID11813[self.team]["stand"]["idle"], 1 );
    }
}

_ID11865( var_0, var_1 )
{
    var_2 = var_1["script_noteworthy"];

    if ( !isdefined( level._ID11813[self.team][var_2]["arrival"] ) )
        return var_0;

    var_3 = getangledelta( level._ID11813[self.team][var_2]["arrival"], 0, 1 );
    var_3 = length( var_3 );
    var_0 -= var_3;
    return var_0;
}

_ID11853( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "stop_drone_fighting" );
    self._ID3203 = var_0;
    self._ID41709 = undefined;
    var_3 = randomintrange( 1, 4 );

    if ( self.team == "axis" )
    {
        if ( var_3 == 1 )
            self._ID41709 = "h2_wpn_berretta_m9_npc_close";
        else if ( var_3 == 2 )
            self._ID41709 = "h2_wpn_usp_npc_close";

        if ( var_3 == 3 )
            self._ID41709 = "h2_wpn_m4a1_npc_close";
    }
    else
    {
        if ( var_3 == 1 )
            self._ID41709 = "h2_wpn_berretta_m9_npc_close";
        else if ( var_3 == 2 )
            self._ID41709 = "h2_wpn_usp_npc_close";

        if ( var_3 == 3 )
            self._ID41709 = "h2_wpn_m4a1_npc_close";
    }

    self.angles = ( 0, self.angles[1], self.angles[2] );

    if ( var_0 == "coverprone" )
        self moveto( self.origin + ( 0, 0, 8 ), 0.05 );

    self._ID24924 = 1;
    var_4 = level._ID11813[self.team][var_0];
    self._ID9813 = var_4["death"];

    while ( isdefined( self ) )
    {
        _ID11939( var_4["idle"][randomint( var_4["idle"].size )] );

        if ( _ID42237::_ID8201() && !isdefined( self.ignoreall ) )
        {
            var_5 = 1;

            if ( isdefined( var_4["pop_up_chance"] ) )
                var_5 = var_4["pop_up_chance"];

            var_5 *= 100;
            var_6 = 1;

            if ( randomfloat( 100 ) > var_5 )
                var_6 = 0;

            if ( var_6 == 1 )
            {
                _ID11939( var_4["hide_2_aim"] );
                wait(getanimlength( var_4["hide_2_aim"] ) - 0.5);
            }

            if ( isdefined( var_4["fire"] ) )
            {
                if ( var_0 == "coverprone" && var_6 == 1 )
                    thread _ID11938( var_4["fire_exposed"], 1 );
                else
                    thread _ID11938( var_4["fire"], 1 );

                _ID11858();
            }
            else
            {
                _ID11965();
                wait 0.15;
                _ID11965();
                wait 0.15;
                _ID11965();
                wait 0.15;
                _ID11965();
            }

            if ( var_6 == 1 )
                _ID11939( var_4["aim_2_hide"] );

            _ID11939( var_4["reload"] );
        }
    }
}

_ID11858()
{
    self endon( "death" );

    if ( _ID42237::_ID8201() )
    {
        _ID11965();
        wait 0.1;
        _ID11965();
        wait 0.1;
        _ID11965();

        if ( _ID42237::_ID8201() )
        {
            wait 0.1;
            _ID11965();
        }

        if ( _ID42237::_ID8201() )
        {
            wait 0.1;
            _ID11965();
            wait 0.1;
            _ID11965();
            wait 0.1;
        }

        if ( _ID42237::_ID8201() )
            wait(randomfloatrange( 1, 2 ));
    }
    else
    {
        _ID11965();
        wait(randomfloatrange( 0.25, 0.75 ));
        _ID11965();
        wait(randomfloatrange( 0.15, 0.75 ));
        _ID11965();
        wait(randomfloatrange( 0.15, 0.75 ));
        _ID11965();
        wait(randomfloatrange( 0.15, 0.75 ));
    }
}

_ID11965()
{
    self endon( "death" );
    self notify( "firing" );
    self endon( "firing" );
    _ID11968();
    var_0 = %exposed_crouch_shoot_auto_v2;
    self setanimknobrestart( var_0, 1, 0.2, 1.0 );
    _ID42237::_ID10192( 0.25, ::clearanim, var_0, 0 );
}

_ID11968()
{
    var_0 = _ID42237::_ID16299( "pdrone_flash_wv" );

    if ( self.team == "allies" )
        var_0 = _ID42237::_ID16299( "pdrone_flash_wv" );

    if ( isdefined( self._ID24614 ) )
        var_0 = _ID42237::_ID16299( self._ID24614 );

    if ( !isdefined( self._ID24897 ) )
        thread _ID11940( self._ID41709 );

    playfxontag( var_0, self, "tag_flash" );
}

_ID11940( var_0 )
{
    self playsound( var_0 );
}

_ID12018()
{
    self endon( "death" );
    self waittill( "move" );
    thread _ID11928();
}

_ID15564( var_0 )
{
    var_1 = 170;
    var_2 = 1;
    var_3 = getanimlength( var_0 );
    var_4 = getangledelta( var_0, 0, 1 );
    var_5 = length( var_4 );

    if ( var_3 > 0 && var_5 > 0 )
    {
        var_1 = var_5 / var_3;
        var_2 = 0;
    }

    if ( isdefined( self._ID11949 ) )
        var_1 = self._ID11949;

    var_6 = spawnstruct();
    var_6._ID3079 = var_2;
    var_6._ID30394 = var_1;
    var_6._ID3143 = var_3;
    return var_6;
}

_ID11864()
{
    var_0 = _ID16511( self.target, self.origin );
    var_1 = var_0[var_0.size - 2]["target"];
    var_2 = getnode( var_1, "targetname" );

    if ( !isdefined( var_2 ) )
    {
        var_3 = _func_20d( var_0[var_0.size - 1]["origin"], var_0[var_0.size - 1]["origin"] );
        var_2 = var_3[var_3.size - 1];
    }

    return var_2;
}

_ID11928()
{
    self endon( "death" );
    self endon( "drone_stop" );
    wait 0.05;
    var_0 = _ID16511( self.target, self.origin );
    var_1 = level._ID11813[self.team]["stand"]["run"];

    if ( isdefined( self._ID30407 ) )
        var_1 = self._ID30407;

    var_2 = _ID15564( var_1 );
    var_3 = var_2._ID30394;
    var_4 = var_2._ID3079;

    if ( isdefined( self._ID11929 ) )
    {
        var_2 = [[ self._ID11929 ]]();

        if ( isdefined( var_2 ) )
        {
            var_1 = var_2._ID30407;
            var_3 = var_2._ID30394;
            var_4 = var_2._ID3079;
        }

        var_2 = undefined;
    }

    if ( !var_4 )
        thread _ID11931( var_3 );

    _ID11938( var_1, self._ID24424 );
    var_5 = 0.5;
    var_6 = 0;
    self._ID36115 = 1;
    self._ID9410 = var_0[var_6];
    var_7 = 0;
    var_8 = undefined;

    for (;;)
    {
        if ( !isdefined( var_0[var_6] ) )
            break;

        var_9 = var_0[var_6]["vec"];
        var_10 = self.origin - var_0[var_6]["origin"];
        var_11 = vectordot( vectornormalize( var_9 ), var_10 );

        if ( !isdefined( var_0[var_6]["dist"] ) )
            break;

        var_12 = var_11 + level._ID11917;

        while ( var_12 > var_0[var_6]["dist"] )
        {
            var_12 -= var_0[var_6]["dist"];
            var_6++;
            self._ID9410 = var_0[var_6];

            if ( isdefined( var_8 ) )
            {
                if ( var_6 == 0 )
                {

                }

                if ( !isdefined( self._ID4975 ) )
                    self._ID4975 = self._ID12026;

                var_13 = level._ID11813[self.team]["stairs"][var_8];
                _ID11938( var_13, self._ID24424 );
                var_7 = 1;
            }

            if ( !isdefined( var_0[var_6]["dist"] ) )
            {
                self rotateto( vectortoangles( var_0[var_0.size - 1]["vec"] ), var_5 );
                var_14 = distance( self.origin, var_0[var_0.size - 1]["origin"] );
                var_15 = var_14 / var_3 * self._ID24424;
                var_16 = var_0[var_0.size - 1]["origin"] + ( 0, 0, 100 );
                var_17 = var_0[var_0.size - 1]["origin"] - ( 0, 0, 100 );
                var_18 = physicstrace( var_16, var_17 );

                if ( getdvar( "debug_drones" ) == "1" )
                {
                    thread _ID42237::_ID11707( var_16, var_17, 1, 1, 1, var_5 );
                    thread _ID42237::_ID11707( self.origin, var_18, 0, 0, 1, var_5 );
                }

                self moveto( var_18, var_15 );
                wait(var_15);
                self notify( "goal" );
                thread _ID7353();
                thread _ID11871( var_0[var_0.size - 1], var_18 );
                return;
            }

            if ( !isdefined( var_0[var_6] ) )
            {
                self notify( "goal" );
                thread _ID11871();
                return;
            }
        }

        if ( isdefined( self._ID11929 ) )
        {
            var_2 = [[ self._ID11929 ]]();

            if ( isdefined( var_2 ) )
            {
                if ( var_2._ID30407 != var_1 )
                {
                    var_1 = var_2._ID30407;
                    var_3 = var_2._ID30394;
                    var_4 = var_2._ID3079;

                    if ( !var_4 )
                        thread _ID11931( var_3 );
                    else
                        self notify( "drone_move_z" );

                    _ID11938( var_1, self._ID24424 );
                }
            }
        }

        self._ID9410 = var_0[var_6];
        var_19 = var_0[var_6]["vec"] * var_12;
        var_19 += var_0[var_6]["origin"];
        var_20 = var_19;
        var_16 = var_20 + ( 0, 0, 100 );
        var_17 = var_20 - ( 0, 0, 100 );
        var_20 = physicstrace( var_16, var_17 );

        if ( !var_4 )
            self._ID11915 = var_20;

        if ( getdvar( "debug_drones" ) == "1" )
        {
            thread _ID42237::_ID11707( var_16, var_17, 1, 1, 1, var_5 );
            thread _ID11716( var_20, 1, 0, 0, 16, var_5 );
        }

        var_21 = vectortoangles( var_20 - self.origin );
        self rotateto( ( 0, var_21[1], 0 ), var_5 );
        var_22 = var_3 * var_5 * self._ID24424;
        var_23 = vectornormalize( var_20 - self.origin );
        var_19 = var_23 * var_22;
        var_19 += self.origin;

        if ( getdvar( "debug_drones" ) == "1" )
            thread _ID42237::_ID11707( self.origin, var_19, 0, 0, 1, var_5 );

        self moveto( var_19, var_5 );
        wait(var_5);

        if ( isdefined( self._ID9410["script_noteworthy"] ) && ( self._ID9410["script_noteworthy"] == "stairs_start_up" || self._ID9410["script_noteworthy"] == "stairs_start_down" ) )
        {
            var_24 = strtok( self._ID9410["script_noteworthy"], "_" );
            var_8 = var_24[2];
            continue;
        }

        if ( var_7 == 1 )
        {
            if ( isdefined( self._ID9410["script_noteworthy"] ) && self._ID9410["script_noteworthy"] == "stairs_end" )
            {
                var_25 = self._ID4975;
                _ID11938( var_25, self._ID24424 );
                var_7 = 0;
                var_8 = undefined;
            }
        }
    }

    thread _ID11871();
}

_ID11931( var_0 )
{
    self endon( "death" );
    self endon( "drone_stop" );
    self notify( "drone_move_z" );
    self endon( "drone_move_z" );
    var_1 = 0.05;

    for (;;)
    {
        if ( isdefined( self._ID11915 ) && var_0 > 0 )
        {
            var_2 = self._ID11915[2] - self.origin[2];
            var_3 = distance2d( self._ID11915, self.origin );
            var_4 = var_3 / var_0;

            if ( var_4 > 0 && var_2 != 0 )
            {
                var_5 = abs( var_2 ) / var_4;
                var_6 = var_5 * var_1;

                if ( var_2 >= var_5 )
                    self.origin = ( self.origin[0], self.origin[1], self.origin[2] + var_6 );
                else if ( var_2 <= var_5 * -1 )
                    self.origin = ( self.origin[0], self.origin[1], self.origin[2] - var_6 );
            }
        }

        wait(var_1);
    }
}

_ID16511( var_0, var_1 )
{
    var_2 = 1;
    var_3 = [];
    var_3[0]["origin"] = var_1;
    var_3[0]["dist"] = 0;
    var_4 = undefined;
    var_4 = var_0;
    var_5["entity"] = _ID42372::_ID16013;
    var_5["node"] = _ID42372::_ID16015;
    var_5["vehicle_node"] = _ID42372::_ID53485;
    var_5["struct"] = _ID42372::_ID16017;
    var_6 = undefined;
    var_7 = [[ var_5["entity"] ]]( var_4 );
    var_8 = [[ var_5["node"] ]]( var_4 );
    var_9 = [[ var_5["vehicle_node"] ]]( var_4 );
    var_10 = [[ var_5["struct"] ]]( var_4 );

    if ( var_7.size )
        var_6 = "entity";
    else if ( var_8.size )
        var_6 = "node";
    else if ( var_9.size )
        var_6 = "vehicle_node";
    else if ( var_10.size )
        var_6 = "struct";

    var_11 = var_3.size;

    for (;;)
    {
        var_12 = [[ var_5[var_6] ]]( var_4 );
        var_13 = _ID42237::_ID28945( var_12 );

        if ( !isdefined( var_13 ) )
            break;

        var_11 = var_3.size;
        var_14 = var_13.origin;

        if ( isdefined( var_13.radius ) )
        {
            if ( !isdefined( self._ID12060 ) )
                self._ID12060 = -1 + randomfloat( 2 );

            if ( !isdefined( var_13.angles ) )
                var_13.angles = ( 0, 0, 0 );

            var_15 = anglestoforward( var_13.angles );
            var_16 = anglestoright( var_13.angles );
            var_17 = anglestoup( var_13.angles );
            var_18 = ( 0, self._ID12060 * var_13.radius, 0 );
            var_14 += var_15 * var_18[0];
            var_14 += var_16 * var_18[1];
            var_14 += var_17 * var_18[2];
        }

        var_3[var_11]["origin"] = var_14;
        var_3[var_11]["target"] = var_13.target;

        if ( isdefined( self._ID31388 ) && self._ID31388 == "use_last_node_angles" && isdefined( var_13.angles ) )
            var_3[var_11]["angles"] = var_13.angles;

        if ( isdefined( var_13.script_noteworthy ) )
            var_3[var_11]["script_noteworthy"] = var_13.script_noteworthy;

        if ( isdefined( var_13.script_linkname ) )
            var_3[var_11]["script_linkname"] = var_13.script_linkname;

        var_3[var_11 - 1]["dist"] = distance( var_3[var_11]["origin"], var_3[var_11 - 1]["origin"] );
        var_3[var_11 - 1]["vec"] = vectornormalize( var_3[var_11]["origin"] - var_3[var_11 - 1]["origin"] );

        if ( !isdefined( var_3[var_11 - 1]["target"] ) )
            var_3[var_11 - 1]["target"] = var_13.targetname;

        if ( !isdefined( var_3[var_11 - 1]["script_noteworthy"] ) && isdefined( var_13.script_noteworthy ) )
            var_3[var_11 - 1]["script_noteworthy"] = var_13.script_noteworthy;

        if ( !isdefined( var_3[var_11 - 1]["script_linkname"] ) && isdefined( var_13.script_linkname ) )
            var_3[var_11 - 1]["script_linkname"] = var_13.script_linkname;

        if ( !isdefined( var_13.target ) )
            break;

        var_4 = var_13.target;
    }

    if ( isdefined( self._ID31388 ) && self._ID31388 == "use_last_node_angles" && isdefined( var_3[var_11]["angles"] ) )
        var_3[var_11]["vec"] = anglestoforward( var_3[var_11]["angles"] );
    else
        var_3[var_11]["vec"] = var_3[var_11 - 1]["vec"];

    var_13 = undefined;
    return var_3;
}

_ID11716( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = var_0 + ( var_4, 0, 0 );
    var_7 = var_0 - ( var_4, 0, 0 );
    thread _ID42237::_ID11707( var_6, var_7, var_1, var_2, var_3, var_5 );
    var_6 = var_0 + ( 0, var_4, 0 );
    var_7 = var_0 - ( 0, var_4, 0 );
    thread _ID42237::_ID11707( var_6, var_7, var_1, var_2, var_3, var_5 );
    var_6 = var_0 + ( 0, 0, var_4 );
    var_7 = var_0 - ( 0, 0, var_4 );
    thread _ID42237::_ID11707( var_6, var_7, var_1, var_2, var_3, var_5 );
}

_ID7353()
{
    if ( !isdefined( self ) )
        return;

    if ( !isdefined( self.script_noteworthy ) )
        return;

    switch ( self.script_noteworthy )
    {
        case "delete_on_goal":
            if ( isdefined( self._ID22746 ) )
                _ID42407::_ID36519();

            self delete();
            break;
        case "die_on_goal":
            self kill();
            break;
    }
}
