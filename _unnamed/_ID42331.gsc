// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19738()
{
    level._ID23516["easy"]["convergenceTime"] = 2.5;
    level._ID23516["easy"]["suppressionTime"] = 3.0;
    level._ID23516["easy"]["accuracy"] = 0.38;
    level._ID23516["easy"]["aiSpread"] = 2;
    level._ID23516["easy"]["playerSpread"] = 0.5;
    level._ID23516["medium"]["convergenceTime"] = 1.5;
    level._ID23516["medium"]["suppressionTime"] = 3.0;
    level._ID23516["medium"]["accuracy"] = 0.38;
    level._ID23516["medium"]["aiSpread"] = 2;
    level._ID23516["medium"]["playerSpread"] = 0.5;
    level._ID23516["hard"]["convergenceTime"] = 0.8;
    level._ID23516["hard"]["suppressionTime"] = 3.0;
    level._ID23516["hard"]["accuracy"] = 0.38;
    level._ID23516["hard"]["aiSpread"] = 2;
    level._ID23516["hard"]["playerSpread"] = 0.5;
    level._ID23516["fu"]["convergenceTime"] = 0.4;
    level._ID23516["fu"]["suppressionTime"] = 3.0;
    level._ID23516["fu"]["accuracy"] = 0.38;
    level._ID23516["fu"]["aiSpread"] = 2;
    level._ID23516["fu"]["playerSpread"] = 0.5;
}

main()
{
    if ( getdvar( "mg42" ) == "" )
        setdvar( "mgTurret", "off" );

    level._ID22748 = 24;
    var_0 = getentarray( "turretInfo", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] delete();
}

_ID28237()
{
    self detach( "weapon_mg42_carry", "tag_origin" );
    self endon( "death" );
    self.goalradius = level._ID10115;

    if ( isdefined( self.target ) )
    {
        var_0 = getnode( self.target, "targetname" );

        if ( isdefined( var_0 ) )
        {
            if ( isdefined( var_0.radius ) )
                self.goalradius = var_0.radius;

            self setgoalnode( var_0 );
        }
    }

    while ( !isdefined( self.node ) )
        wait 0.05;

    var_1 = undefined;

    if ( isdefined( self.target ) )
    {
        var_0 = getnode( self.target, "targetname" );
        var_1 = var_0;
    }

    if ( !isdefined( var_1 ) )
        var_1 = self.node;

    if ( !isdefined( var_1 ) )
        return;

    if ( var_1.type != "Turret" )
        return;

    var_2 = _ID16647();
    var_2[self.node.origin + ""] = undefined;

    if ( isdefined( var_2[var_1.origin + ""] ) )
        return;

    var_3 = var_1._ID39235;

    if ( isdefined( var_3._ID886 ) )
        return;

    _ID29729( var_3 );

    if ( var_3._ID20897 )
        _ID22120( var_3 );
    else
        _ID30401( var_3 );

    _ID42330::_ID17529( var_1._ID39235 );
}

_ID23503()
{
    self waittill( "trigger" );
    level notify( self.targetname );
    level._ID23503[self.targetname] = 1;
    self delete();
}

_ID23513( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = getaiarray( "bad_guys" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( isdefined( var_1[var_2]._ID31288 ) && var_0._ID31288 == var_1[var_2]._ID31288 )
            var_1[var_2] notify( "auto_ai" );
    }

    var_3 = getspawnerarray();

    for ( var_2 = 0; var_2 < var_3.size; var_2++ )
    {
        if ( isdefined( var_3[var_2]._ID31288 ) && var_0._ID31288 == var_3[var_2]._ID31288 )
            var_3[var_2]._ID2312 = "auto_ai";
    }

    _ID42372::_ID21313( var_0 );
}

_ID23500( var_0 )
{
    self endon( "death" );
    self endon( "stop_suppressionFire" );

    if ( !isdefined( self._ID36838 ) )
        self._ID36838 = 1;

    for (;;)
    {
        while ( self._ID36838 )
        {
            self settargetentity( var_0[randomint( var_0.size )] );
            wait(2 + randomfloat( 2 ));
        }

        self cleartargetentity();

        while ( !self._ID36838 )
            wait 1;
    }
}

_ID22904( var_0 )
{
    var_1 = self.origin;
    self waittill( "auto_ai" );
    var_0 notify( "stopfiring" );
    var_0 setmode( "auto_ai" );
    var_0 settargetentity( level.player );
}

_ID6447( var_0 )
{
    if ( var_0 == "delay" )
        return 0.2;
    else if ( var_0 == "delay_range" )
        return 0.5;
    else if ( var_0 == "burst" )
        return 0.5;
    else
        return 1.5;
}

_ID6448()
{
    self endon( "death" );
    self endon( "stop_burst_fire_unmanned" );

    if ( isdefined( self._ID31121 ) )
        var_0 = self._ID31121;
    else
        var_0 = _ID6447( "delay" );

    if ( isdefined( self._ID31120 ) )
        var_1 = self._ID31120 - var_0;
    else
        var_1 = _ID6447( "delay_range" );

    if ( isdefined( self._ID31083 ) )
        var_2 = self._ID31083;
    else
        var_2 = _ID6447( "burst" );

    if ( isdefined( self._ID31082 ) )
        var_3 = self._ID31082 - var_2;
    else
        var_3 = _ID6447( "burst_range" );

    var_4 = gettime();
    var_5 = "start";

    if ( isdefined( self._ID33723 ) )
        thread _ID39312();

    for (;;)
    {
        var_6 = ( var_4 - gettime() ) * 0.001;

        if ( self isfiringturret() && var_6 <= 0 )
        {
            if ( var_5 != "fire" )
            {
                var_5 = "fire";
                thread _ID11644();
            }

            var_6 = var_2 + randomfloat( var_3 );
            thread _ID39366( var_6 );
            self waittill( "turretstatechange" );
            var_6 = var_0 + randomfloat( var_1 );
            var_4 = gettime() + int( var_6 * 1000 );
            continue;
        }

        if ( var_5 != "aim" )
            var_5 = "aim";

        thread _ID39366( var_6 );
        self waittill( "turretstatechange" );
    }
}

_ID11644()
{
    self endon( "death" );
    self endon( "turretstatechange" );

    for (;;)
    {
        self shootturret();

        if ( !isdefined( self._ID43488 ) || !self._ID43488 )
            self notify( "turret_fire" );

        wait 0.1;
    }
}

_ID39312()
{
    self endon( "death" );
    self endon( "stop_burst_fire_unmanned" );

    if ( isdefined( self._ID33724 ) )
        self._ID33725 = 1;

    for (;;)
    {
        self waittill( "turret_fire" );
        playfxontag( self._ID33723, self, "tag_origin" );

        if ( isdefined( self._ID33725 ) && self._ID33725 )
            thread _ID39313();
    }
}

_ID39313()
{
    self endon( "death" );
    self._ID33725 = 0;
    var_0 = self gettagorigin( "tag_origin" );
    var_1 = _ID42237::_ID12140( var_0, -30 );
    var_2 = var_0[2] - var_1[2];
    var_3 = var_2 / 300;
    wait(var_3);
    level thread _ID42237::_ID27077( self._ID33724, var_1 );
    wait 1;
    self._ID33725 = 1;
}

_ID39366( var_0 )
{
    if ( var_0 <= 0 )
        return;

    self endon( "turretstatechange" );
    wait(var_0);

    if ( isdefined( self ) )
        self notify( "turretstatechange" );
}

_ID28956( var_0 )
{
    self endon( "death" );
    self notify( "stop random_spread" );
    self endon( "stop random_spread" );
    self endon( "stopfiring" );
    self settargetentity( var_0 );

    for (;;)
    {
        if ( isplayernumber( var_0 ) )
            var_0.origin = self._ID22903 getorigin();
        else
            var_0.origin = self._ID22903.origin;

        var_0.origin = var_0.origin + ( 20 - randomfloat( 40 ), 20 - randomfloat( 40 ), 20 - randomfloat( 60 ) );
        wait 0.2;
    }
}

_ID23495( var_0 )
{
    self notify( "stop_using_built_in_burst_fire" );
    self endon( "stop_using_built_in_burst_fire" );
    var_0 stopfiring();

    for (;;)
    {
        var_0 waittill( "startfiring" );
        thread _ID6446( var_0 );
        var_0 startfiring();
        var_0 waittill( "stopfiring" );
        var_0 stopfiring();
    }
}

_ID6446( var_0, var_1 )
{
    var_0 endon( "stopfiring" );
    self endon( "stop_using_built_in_burst_fire" );

    if ( isdefined( var_0._ID31121 ) )
        var_2 = var_0._ID31121;
    else
        var_2 = _ID6447( "delay" );

    if ( isdefined( var_0._ID31120 ) )
        var_3 = var_0._ID31120 - var_2;
    else
        var_3 = _ID6447( "delay_range" );

    if ( isdefined( var_0._ID31083 ) )
        var_4 = var_0._ID31083;
    else
        var_4 = _ID6447( "burst" );

    if ( isdefined( var_0._ID31082 ) )
        var_5 = var_0._ID31082 - var_4;
    else
        var_5 = _ID6447( "burst_range" );

    for (;;)
    {
        var_0 startfiring();

        if ( isdefined( var_1 ) )
            var_0 thread _ID28956( var_1 );

        wait(var_4 + randomfloat( var_5 ));
        var_0 stopfiring();
        wait(var_2 + randomfloat( var_3 ));
    }
}

_ID1638()
{
    if ( !isdefined( self._ID14439 ) )
        self._ID14439 = 0;

    if ( !isdefined( self.targetname ) )
        return;

    var_0 = getnode( self.targetname, "target" );

    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( var_0._ID31287 ) )
        return;

    if ( !isdefined( var_0._ID23494 ) )
        var_0._ID23494 = 1;

    self._ID31287 = var_0._ID31287;
    var_1 = 1;

    for (;;)
    {
        if ( var_1 )
        {
            var_1 = 0;

            if ( isdefined( var_0.targetname ) || self._ID14439 )
                self waittill( "get new user" );
        }

        if ( !var_0._ID23494 )
        {
            var_0 waittill( "enable mg42" );
            var_0._ID23494 = 1;
        }

        var_2 = [];
        var_3 = getaiarray();

        for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        {
            var_5 = 1;

            if ( isdefined( var_3[var_4]._ID31287 ) && var_3[var_4]._ID31287 == self._ID31287 )
                var_5 = 0;

            if ( isdefined( var_3[var_4]._ID39928 ) )
                var_5 = 1;

            if ( var_5 )
                var_2[var_2.size] = var_3[var_4];
        }

        if ( var_2.size )
            var_3 = _ID42407::_ID15602( var_0.origin, undefined, var_2 );
        else
            var_3 = _ID42407::_ID15601( var_0.origin, undefined );

        var_2 = undefined;

        if ( isdefined( var_3 ) )
        {
            var_3 notify( "stop_going_to_node" );
            var_3 thread _ID42372::_ID16964( var_0 );
            var_3 waittill( "death" );
            continue;
        }

        self waittill( "get new user" );
    }
}

_ID23502()
{
    if ( !isdefined( self._ID2312 ) )
        self._ID2312 = "manual_ai";

    var_0 = getnode( self.target, "targetname" );

    if ( !isdefined( var_0 ) )
        return;

    var_1 = getent( var_0.target, "targetname" );
    var_1._ID25988 = var_0.origin;

    if ( isdefined( var_1.target ) )
    {
        if ( !isdefined( level._ID23503 ) || !isdefined( level._ID23503[var_1.target] ) )
        {
            level._ID23503[var_1.target] = 0;
            getent( var_1.target, "targetname" ) thread _ID23503();
        }

        var_2 = 1;
    }
    else
        var_2 = 0;

    for (;;)
    {
        if ( self.count == 0 )
            return;

        var_3 = undefined;

        while ( !isdefined( var_3 ) )
        {
            var_3 = self dospawn();
            wait 1;
        }

        var_3 thread _ID23497( var_1, var_2, self._ID2312 );
        var_3 thread _ID23495( var_1 );
        var_3 waittill( "death" );

        if ( isdefined( self._ID916 ) )
        {
            wait(self._ID916);
            continue;
        }

        if ( isdefined( self._ID31121 ) && isdefined( self._ID31120 ) )
        {
            wait(self._ID31121 + randomfloat( self._ID31120 - self._ID31121 ));
            continue;
        }

        wait 1;
    }
}

_ID21294( var_0, var_1, var_2, var_3 )
{
    var_0 waittill( var_1 );

    if ( isdefined( var_2 ) )
        var_2 delete();

    if ( isdefined( var_3 ) )
        var_3 delete();
}

_ID23497( var_0, var_1, var_2 )
{
    self endon( "death" );

    if ( var_2 == "manual_ai" )
    {
        for (;;)
        {
            thread _ID23496( var_0, var_1 );
            self waittill( "auto_ai" );
            _ID24385( var_0, "auto_ai" );
            self waittill( "manual_ai" );
        }
    }
    else
    {
        for (;;)
        {
            _ID24385( var_0, "auto_ai", level.player );
            self waittill( "manual_ai" );
            thread _ID23496( var_0, var_1 );
            self waittill( "auto_ai" );
        }
    }
}

_ID27637()
{
    if ( !isdefined( level._ID27328 ) )
        return 0;

    if ( level.player getstance() == "prone" )
        return 1;

    if ( level._ID27329 == "cow" && level.player getstance() == "crouch" )
        return 1;

    return 0;
}

_ID35580()
{
    if ( level.player getstance() == "prone" )
        return ( 0, 0, 5 );
    else if ( level.player getstance() == "crouch" )
        return ( 0, 0, 25 );

    return ( 0, 0, 50 );
}

_ID23496( var_0, var_1 )
{
    self endon( "death" );
    self endon( "auto_ai" );
    self.pacifist = 1;
    self setgoalpos( var_0._ID25988 );
    self.goalradius = level._ID22748;
    self waittill( "goal" );

    if ( var_1 )
    {
        if ( !level._ID23503[var_0.target] )
            level waittill( var_0.target );
    }

    self.pacifist = 0;
    var_0 setmode( "auto_ai" );
    var_0 cleartargetentity();
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_3 = spawn( "script_model", ( 0, 0, 0 ) );
    var_3._ID30768 = 3;

    if ( getdvar( "mg42" ) != "off" )
        var_3 setmodel( "temp" );

    var_3 thread _ID37495( var_0, var_2 );
    level thread _ID21294( self, "death", var_2, var_3 );
    level thread _ID21294( self, "auto_ai", var_2, var_3 );
    var_0._ID27696 = 0;
    var_4 = 0;
    var_5 = getentarray( "mg42_target", "targetname" );

    if ( var_5.size > 0 )
    {
        var_6 = 1;
        var_7 = var_5[randomint( var_5.size )].origin;
        thread _ID33760( var_5 );
        _ID24385( var_0 );
        self._ID37285 = var_2;
        var_0 setmode( "manual_ai" );
        var_0 settargetentity( var_2 );
        var_0 notify( "startfiring" );
        var_8 = 15;
        var_9 = 0.08;
        var_10 = 0.05;
        var_2.origin = var_5[randomint( var_5.size )].origin;
        var_11 = 0;

        while ( !isdefined( level._ID27328 ) )
        {
            var_7 = var_2.origin;

            if ( distance( var_7, var_5[self._ID17513].origin ) > var_8 )
            {
                var_12 = vectornormalize( var_5[self._ID17513].origin - var_7 );
                var_12 *= var_8;
                var_7 += var_12;
            }
            else
                self notify( "next_target" );

            var_2.origin = var_7;
            wait 0.1;
        }

        for (;;)
        {
            for ( var_13 = 0; var_13 < 1; var_13 += var_10 )
            {
                var_2.origin = var_7 * ( 1.0 - var_13 ) + ( level.player getorigin() + _ID35580() ) * var_13;

                if ( _ID27637() )
                    var_13 = 2;

                wait(var_9);
            }

            var_14 = level.player getorigin();

            while ( !_ID27637() )
            {
                var_2.origin = level.player getorigin();
                var_15 = var_2.origin - var_14;
                var_2.origin = var_2.origin + var_15 + _ID35580();
                var_14 = level.player getorigin();
                wait 0.1;
            }

            if ( _ID27637() )
            {
                var_11 = gettime() + 1500 + randomfloat( 4000 );

                while ( _ID27637() && isdefined( level._ID27328.target ) && gettime() < var_11 )
                {
                    var_16 = getentarray( level._ID27328.target, "targetname" );
                    var_16 = var_16[randomint( var_16.size )];
                    var_2.origin = var_16.origin + ( randomfloat( 30 ) - 15, randomfloat( 30 ) - 15, randomfloat( 40 ) - 60 );
                    wait 0.1;
                }
            }

            self notify( "next_target" );

            while ( _ID27637() )
            {
                var_7 = var_2.origin;

                if ( distance( var_7, var_5[self._ID17513].origin ) > var_8 )
                {
                    var_12 = vectornormalize( var_5[self._ID17513].origin - var_7 );
                    var_12 *= var_8;
                    var_7 += var_12;
                }
                else
                    self notify( "next_target" );

                var_2.origin = var_7;
                wait 0.1;
            }
        }
    }
    else
    {
        for (;;)
        {
            _ID24385( var_0 );

            while ( !isdefined( level._ID27328 ) )
            {
                if ( !var_0._ID27696 )
                {
                    var_0 settargetentity( level.player );
                    var_0._ID27696 = 1;
                    var_3._ID37274 = level.player;
                }

                wait 0.2;
            }

            var_0 setmode( "manual_ai" );
            _ID24385( var_0 );
            var_0 notify( "startfiring" );
            var_11 = gettime() + 1500 + randomfloat( 4000 );

            while ( var_11 > gettime() )
            {
                if ( isdefined( level._ID27328 ) )
                {
                    var_16 = getentarray( level._ID27328.target, "targetname" );
                    var_16 = var_16[randomint( var_16.size )];
                    var_2.origin = var_16.origin + ( randomfloat( 30 ) - 15, randomfloat( 30 ) - 15, randomfloat( 40 ) - 60 );
                    var_0 settargetentity( var_2 );
                    var_3._ID37274 = var_2;
                    wait(randomfloat( 1 ));
                    continue;
                }

                break;
            }

            var_0 notify( "stopfiring" );
            _ID24385( var_0 );

            if ( var_0._ID27696 )
            {
                var_0 setmode( "auto_ai" );
                var_0 cleartargetentity();
                var_0._ID27696 = 0;
                var_3._ID37274 = var_3;
                var_3.origin = ( 0, 0, 0 );
            }

            while ( isdefined( level._ID27328 ) )
                wait 0.2;

            wait(0.75 + randomfloat( 0.2 ));
        }
    }
}

_ID33760( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        var_1 = [];

        for ( var_2 = 0; var_2 < var_0.size; var_2++ )
            var_1[var_2] = 0;

        for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        {
            self._ID17513 = randomint( var_0.size );
            self waittill( "next_target" );

            while ( var_1[self._ID17513] )
            {
                self._ID17513++;

                if ( self._ID17513 >= var_0.size )
                    self._ID17513 = 0;
            }

            var_1[self._ID17513] = 1;
        }
    }
}

_ID24385( var_0, var_1, var_2 )
{
    self setgoalpos( var_0._ID25988 );
    self.goalradius = level._ID22748;
    self waittill( "goal" );

    if ( isdefined( var_1 ) && var_1 == "auto_ai" )
    {
        var_0 setmode( "auto_ai" );

        if ( isdefined( var_2 ) )
            var_0 settargetentity( var_2 );
        else
            var_0 cleartargetentity();
    }

    self useturret( var_0 );
}

_ID37495( var_0, var_1 )
{
    if ( getdvar( "mg42" ) == "off" )
        return;

    self._ID37274 = self;

    for (;;)
    {
        self.origin = var_1.origin;
        wait 0.1;
    }
}

_ID39324( var_0 )
{
    var_1 = getent( var_0._ID4392, "targetname" );
    var_2 = 0.5;

    if ( isdefined( var_1._ID31493 ) )
        var_2 = var_1._ID31493;

    var_3 = 2;

    if ( isdefined( var_1._ID31492 ) )
        var_2 = var_1._ID31492;

    for (;;)
    {
        var_1 waittill( "turret_deactivate" );
        wait(var_2 + randomfloat( var_3 - var_2 ));

        while ( !isturretactive( var_1 ) )
        {
            _ID39259( var_0, var_1 );
            wait 1.0;
        }
    }
}

_ID39259( var_0, var_1 )
{
    var_2 = getaiarray();

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_2[var_3] isingoal( var_0.origin ) && var_2[var_3] canuseturret( var_1 ) )
        {
            var_4 = var_2[var_3].keepclaimednodeifvalid;
            var_2[var_3].keepclaimednodeifvalid = 0;

            if ( !var_2[var_3] usecovernode( var_0 ) )
                var_2[var_3].keepclaimednodeifvalid = var_4;
        }
    }
}

_ID32596()
{
    _ID19738();
    var_0 = getentarray( "misc_turret", "code_classname" );
    var_1 = _ID42407::_ID16219();

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( isdefined( var_0[var_2]._ID31432 ) )
        {
            switch ( var_0[var_2]._ID31432 )
            {
                case "easy":
                    var_1 = "easy";
                    break;
                case "medium":
                    var_1 = "medium";
                    break;
                case "hard":
                    var_1 = "hard";
                    break;
                case "fu":
                    var_1 = "fu";
                    break;
                default:
                    continue;
            }
        }

        _ID23499( var_0[var_2], var_1 );
    }
}

_ID23499( var_0, var_1 )
{
    var_0._ID212 = level._ID23516[var_1]["convergenceTime"];
    var_0._ID53961 = level._ID23516[var_1]["suppressionTime"];
    var_0.accuracy = level._ID23516[var_1]["accuracy"];
    var_0._ID2469 = level._ID23516[var_1]["aiSpread"];
    var_0._ID28002 = level._ID23516[var_1]["playerSpread"];
}

_ID23501( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0.88;

    self endon( "death" );
    self notify( "stop_mg42_target_drones" );
    self endon( "stop_mg42_target_drones" );
    self._ID12043 = 0;

    if ( !isdefined( self._ID31187 ) )
        self._ID31187 = 0;

    if ( !isdefined( var_0 ) )
        var_0 = 0;

    self setmode( "manual_ai" );
    var_3 = _ID42407::_ID16219();

    if ( !isdefined( level._ID12061 ) )
        var_4 = 1;
    else
        var_4 = 0;

    for (;;)
    {
        if ( var_4 )
        {
            if ( isdefined( self._ID12071 ) )
                self setmode( self._ID10142 );
            else if ( var_0 )
                self setmode( "auto_nonai" );
            else
                self setmode( "auto_ai" );

            level waittill( "new_drone" );
        }

        if ( !isdefined( self._ID25547 ) )
            self._ID25547 = self._ID212;

        self._ID212 = 2;

        if ( !var_0 )
        {
            var_5 = self getturretowner();

            if ( !isalive( var_5 ) || isplayernumber( var_5 ) )
            {
                wait 0.05;
                continue;
            }
            else
                var_1 = var_5.team;
        }
        else
            var_5 = undefined;

        if ( var_1 == "allies" )
            var_6 = "axis";
        else
            var_6 = "allies";

        while ( level._ID12061[var_6]._ID21937 )
        {
            _ID42237::_ID22529( "mg42_drones" );

            if ( !level._ID12061[var_6]._ID21937 )
            {
                _ID42237::_ID39496( "mg42_drones" );
                break;
            }

            var_7 = _ID15582( var_6, var_2 );
            _ID42237::_ID39496( "mg42_drones" );

            if ( !isdefined( self._ID31187 ) || !self._ID31187 )
            {
                wait 0.05;
                break;
            }

            if ( !isdefined( var_7 ) )
            {
                wait 0.05;
                break;
            }

            if ( isdefined( self._ID3146 ) )
                [[ self._ID3146 ]]();

            if ( var_0 )
                self setmode( "manual" );
            else
                self setmode( "manual_ai" );

            self settargetentity( var_7, ( 0, 0, 32 ) );
            _ID11994( var_7, 1, var_2 );
            self cleartargetentity();
            self stopfiring();

            if ( !var_0 && !( isdefined( self getturretowner() ) && self getturretowner() == var_5 ) )
                break;
        }

        self._ID212 = self._ID25547;
        self._ID25547 = undefined;
        self cleartargetentity();
        self stopfiring();

        if ( level._ID12061[var_6]._ID21937 )
        {
            var_4 = 0;
            continue;
        }

        var_4 = 1;
    }
}

_ID11994( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_3 = gettime() + var_1 * 1000;
    var_4 = 0;

    while ( var_3 > gettime() || var_4 )
    {
        _ID42237::_ID22529( "mg42_drones_target_trace" );
        var_5 = self getturrettarget( 1 );

        if ( !bullettracepassed( self gettagorigin( "tag_flash" ), var_0.origin + ( 0, 0, 40 ), 0, var_0 ) )
        {
            _ID42237::_ID39496( "mg42_drones_target_trace" );
            break;
        }
        else if ( isdefined( var_5 ) && distance( var_5.origin, self.origin ) < distance( self.origin, var_0.origin ) )
        {
            _ID42237::_ID39496( "mg42_drones_target_trace" );
            break;
        }

        if ( !var_4 )
        {
            self startfiring();
            var_4 = 1;
        }

        _ID42237::_ID39501( "mg42_drones_target_trace" );
    }

    self stopfiring();
    _ID42407::_ID36716( level._ID12061[var_0.team], 1 );
}

_ID15582( var_0, var_1 )
{
    if ( level._ID12061[var_0]._ID21937 < 1 )
        return;

    var_2 = undefined;
    var_3 = anglestoforward( self.angles );

    for ( var_4 = 0; var_4 < level._ID12061[var_0]._ID21937; var_4++ )
    {
        if ( !isdefined( level._ID12061[var_0]._ID3291[var_4] ) )
            continue;

        var_5 = vectortoangles( level._ID12061[var_0]._ID3291[var_4].origin - self.origin );
        var_6 = anglestoforward( var_5 );

        if ( vectordot( var_3, var_6 ) < var_1 )
            continue;

        var_2 = level._ID12061[var_0]._ID3291[var_4];

        if ( !bullettracepassed( self gettagorigin( "tag_flash" ), var_2 getcentroid(), 0, var_2 ) )
        {
            var_2 = undefined;
            continue;
        }

        break;
    }

    var_7 = self getturrettarget( 1 );

    if ( !isdefined( self._ID28409 ) )
    {
        if ( isdefined( var_2 ) && isdefined( var_7 ) && distancesquared( self.origin, var_7.origin ) < distancesquared( self.origin, var_2.origin ) )
            var_2 = undefined;
    }

    return var_2;
}

_ID30755( var_0 )
{
    var_1 = getentarray( "misc_turret", "code_classname" );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( isdefined( var_1[var_3].targetname ) )
            continue;

        if ( isdefined( var_1[var_3]._ID20994 ) )
            continue;

        var_2[var_1[var_3].origin + ""] = var_1[var_3];
    }

    if ( !var_2.size )
        return;

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_5 = var_0[var_4];

        if ( var_5.type == "Path" )
            continue;

        if ( var_5.type == "Begin" )
            continue;

        if ( var_5.type == "End" )
            continue;

        var_6 = anglestoforward( ( 0, var_5.angles[1], 0 ) );

        foreach ( var_11, var_8 in var_2 )
        {
            if ( distance( var_5.origin, var_8.origin ) > 50 )
                continue;

            var_9 = anglestoforward( ( 0, var_8.angles[1], 0 ) );
            var_10 = vectordot( var_6, var_9 );

            if ( var_10 < 0.9 )
                continue;

            var_5._ID39350 = spawn( "script_origin", var_8.origin );
            var_5._ID39350.angles = var_8.angles;
            var_5._ID39350.node = var_5;
            var_5._ID39350._ID591 = 45;
            var_5._ID39350._ID895 = 45;
            var_5._ID39350._ID1215 = 15;
            var_5._ID39350._ID137 = 15;

            if ( isdefined( var_8._ID591 ) )
                var_5._ID39350._ID591 = min( var_8._ID591, 45 );

            if ( isdefined( var_8._ID895 ) )
                var_5._ID39350._ID895 = min( var_8._ID895, 45 );

            if ( isdefined( var_8._ID1215 ) )
                var_5._ID39350._ID1215 = min( var_8._ID1215, 15 );

            if ( isdefined( var_8._ID137 ) )
                var_5._ID39350._ID137 = min( var_8._ID137, 15 );

            var_2[var_11] = undefined;
            var_8 delete();
        }
    }
}

_ID4393( var_0 )
{
    var_1 = getentarray( "misc_turret", "code_classname" );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( !isdefined( var_1[var_3].targetname ) || tolower( var_1[var_3].targetname ) != "find_mgTurret" )
            continue;

        if ( !isdefined( var_1[var_3]._ID13703 ) )
            continue;

        if ( !isdefined( var_1[var_3]._ID31147 ) )
            var_2[var_1[var_3].origin + ""] = var_1[var_3];
    }

    if ( !var_2.size )
        return;

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_5 = var_0[var_4];

        if ( var_5.type == "Path" )
            continue;

        if ( var_5.type == "Begin" )
            continue;

        if ( var_5.type == "End" )
            continue;

        var_6 = anglestoforward( ( 0, var_5.angles[1], 0 ) );
        var_7 = getarraykeys( var_2 );

        for ( var_3 = 0; var_3 < var_7.size; var_3++ )
        {
            var_8 = var_2[var_7[var_3]];

            if ( distance( var_5.origin, var_8.origin ) > 70 )
                continue;

            var_9 = anglestoforward( ( 0, var_8.angles[1], 0 ) );
            var_10 = vectordot( var_6, var_9 );

            if ( var_10 < 0.9 )
                continue;

            var_5._ID39235 = var_8;
            var_8.node = var_5;
            var_8._ID20897 = 1;
            var_2[var_7[var_3]] = undefined;
        }
    }

    var_0 = undefined;
}

_ID30736()
{
    self._ID33719 = [];
    self._ID33719["connected"] = [];
    self._ID33719["ambush"] = [];

    if ( !isdefined( self._ID13703 ) )
        return;

    level._ID33718[self._ID13703] = self;

    if ( isdefined( self._ID31494 ) )
    {
        var_0 = strtok( self._ID31494, " " );

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
            self._ID33719["connected"][var_0[var_1]] = 1;
    }

    if ( isdefined( self._ID31491 ) )
    {
        var_0 = strtok( self._ID31491, " " );

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
            self._ID33719["ambush"][var_0[var_1]] = 1;
    }
}

_ID29867()
{
    self notify( "gun_placed_again" );
    self endon( "gun_placed_again" );
    self waittill( "restore_default_drop_pitch" );
    wait 1;
    self restoredefaultdroppitch();
}

_ID12185()
{
    thread _ID12186();
}

_ID12186()
{
    var_0 = spawn( "script_model", ( 0, 0, 0 ) );
    var_0.origin = self gettagorigin( level._ID28238 );
    var_0.angles = self gettagangles( level._ID28238 );
    var_0 setmodel( self._ID39352 );
    var_1 = anglestoforward( self.angles );
    var_1 *= 100;
    var_0 movegravity( var_1, 0.5 );
    self detach( self._ID39352, level._ID28238 );
    self._ID39352 = undefined;
    wait 0.7;
    var_0 delete();
}

_ID39342()
{
    self endon( "kill_turret_detach_thread" );
    self endon( "dropped_gun" );
    self waittill( "death" );

    if ( !isdefined( self ) )
        return;

    _ID12185();
}

_ID39344()
{
    self endon( "death" );
    self endon( "kill_turret_detach_thread" );
    self waittill( "dropped_gun" );
    self detach( self._ID39352, level._ID28238 );
}

_ID29868()
{
    self._ID30386 = undefined;
    _ID42237::_ID32186( animscripts\init::_ID312 );
}

_ID29873()
{
    self waittill( "turret_deactivate" );
    self restoredefaultdroppitch();
}

_ID39611( var_0 )
{
    self endon( "death" );
    self endon( "end_mg_behavior" );
    self endon( "stop_updating_enemy_target_pos" );

    for (;;)
    {
        self waittill( "saw_enemy" );
        var_0.origin = self._ID21799;
    }
}

_ID24371( var_0, var_1 )
{
    self endon( "death" );
    self endon( "end_mg_behavior" );
    self endon( "stop_updating_enemy_target_pos" );
    var_2 = self._ID39235.origin + ( 0, 0, 16 );
    var_3 = var_1.origin + ( 0, 0, 16 );

    for (;;)
    {
        wait 0.05;

        if ( sighttracepassed( var_0.origin, var_3, 0, undefined ) )
            continue;

        var_4 = vectortoangles( var_2 - var_0.origin );
        var_5 = anglestoforward( var_4 );
        var_5 *= 8;
        var_0.origin = var_0.origin + var_5;
    }
}

_ID29316( var_0 )
{
    self endon( "death" );
    self endon( "end_mg_behavior" );
    self endon( "stop_updating_enemy_target_pos" );
    var_0._ID6092 = [];

    for (;;)
    {
        var_0._ID6092[var_0._ID6092.size] = self.origin + ( 0, 0, 50 );
        wait 0.35;
    }
}

_ID2420( var_0, var_1 )
{
    if ( !isalive( self._ID9442 ) && self cansee( self._ID9442 ) )
    {
        var_1.origin = self._ID21799;
        return;
    }

    var_2 = anglestoforward( var_0.angles );

    for ( var_3 = var_1._ID6092.size - 3; var_3 >= 0; var_3-- )
    {
        var_4 = var_1._ID6092[var_3];
        var_5 = vectornormalize( var_4 - var_0.origin );
        var_6 = vectordot( var_2, var_5 );

        if ( var_6 < 0.75 )
            continue;

        var_1.origin = var_4;

        if ( sighttracepassed( var_0.origin, var_4, 0, undefined ) )
            continue;

        break;
    }
}

_ID14164( var_0 )
{
    var_1 = _ID15929( var_0 );
    var_2 = var_1["spot"];
    var_3 = var_1["type"];

    if ( !isdefined( var_2 ) )
        return;

    _ID29729( var_2 );
    thread _ID39611( var_0 );
    thread _ID24371( var_0, var_2 );

    if ( var_3 == "ambush" )
        thread _ID29316( var_0 );

    if ( var_2._ID20897 )
        _ID22120( var_2 );
    else
    {
        _ID26643( var_2 );
        _ID30401( var_2 );
    }

    self notify( "stop_updating_enemy_target_pos" );

    if ( var_3 == "ambush" )
        _ID2420( var_2, var_0 );

    var_2 settargetentity( var_0 );
}

_ID34495( var_0 )
{
    var_0 setmode( "manual" );
    wait 0.5;
    var_0 setmode( "manual_ai" );
}

_ID22120( var_0 )
{
    self stopuseturret();
    animscripts\shared::_ID26732( self._ID834, "none" );
    var_1 = _ID16044( var_0 );
    var_2 = getstartorigin( var_0.origin, var_0.angles, var_1 );
    self setruntopos( var_2 );
    self waittill( "runto_arrived" );
    _ID39915( var_0 );
}

_ID26643( var_0 )
{
    self stopuseturret();
    self._ID39235 _ID18537();
}

_ID16044( var_0 )
{
    var_1 = [];
    var_1["saw_bipod_stand"] = level._ID23490["bipod_stand_setup"];
    var_1["saw_bipod_crouch"] = level._ID23490["bipod_crouch_setup"];
    var_1["saw_bipod_prone"] = level._ID23490["bipod_prone_setup"];
    return var_1[var_0._ID1312];
}
#using_animtree("generic_human");

_ID30401( var_0 )
{
    var_1 = self.health;
    var_0 endon( "turret_deactivate" );
    self._ID23493 = var_0;
    self endon( "death" );
    self endon( "dropped_gun" );
    var_2 = _ID16044( var_0 );
    self._ID39352 = "weapon_mg42_carry";
    self notify( "kill_get_gun_back_on_killanimscript_thread" );
    animscripts\shared::_ID26732( self.weapon, "none" );

    if ( self isbadguy() )
        self.health = 1;

    self._ID30386 = %saw_gunner_run_fast;
    self._ID9352 = %saw_gunner_run_fast;
    self attach( self._ID39352, level._ID28238 );
    thread _ID39342();
    var_3 = getstartorigin( var_0.origin, var_0.angles, var_2 );
    self setruntopos( var_3 );
    wait 0.05;
    _ID42237::_ID32186( animscripts\combat::_ID13289 );
    _ID42237::_ID7866( "move" );
    _ID42237::_ID32287( "cover_crouch", ::_ID18752 );

    while ( distance( self.origin, var_3 ) > 16 )
    {
        self setruntopos( var_3 );
        wait 0.05;
    }

    self notify( "kill_turret_detach_thread" );

    if ( self isbadguy() )
        self.health = var_1;

    if ( soundexists( "weapon_setup" ) )
        thread _ID42237::_ID27077( "weapon_setup" );

    self animscripted( "setup_done", var_0.origin, var_0.angles, var_2 );
    _ID29868();
    self waittillmatch( "setup_done",  "end"  );
    var_0 notify( "restore_default_drop_pitch" );
    var_0 _ID34039();
    animscripts\shared::_ID26732( self._ID834, "right" );
    _ID39915( var_0 );
    self detach( self._ID39352, level._ID28238 );
    _ID42237::_ID32186( animscripts\init::_ID312 );
    self notify( "bcs_portable_turret_setup" );
}

_ID24378()
{
    self setruntopos( self._ID30442 );
}

_ID18752()
{
    self endon( "killanimscript" );
    self waittill( "death" );
}

_ID39969()
{
    if ( !isdefined( self._ID39235 ) )
        return 0;

    return self._ID39235.owner == self;
}

_ID39331()
{
    if ( !_ID39969() )
    {
        _ID42237::_ID7866( "move" );
        return;
    }

    var_0 = _ID14175( "connected" );
    var_1 = var_0["spots"];

    if ( !var_1.size )
    {
        _ID42237::_ID7866( "move" );
        return;
    }

    var_2 = self.node;

    if ( !isdefined( var_2 ) || !_ID42407::_ID20542( var_1, var_2 ) )
    {
        var_3 = _ID16647();

        for ( var_4 = 0; var_4 < var_1.size; var_4++ )
        {
            var_2 = _ID42237::_ID28945( var_1 );

            if ( isdefined( var_3[var_2.origin + ""] ) )
                return;
        }
    }

    var_5 = var_2._ID39235;

    if ( isdefined( var_5._ID886 ) )
        return;

    _ID29729( var_5 );

    if ( var_5._ID20897 )
        _ID22120( var_5 );
    else
        _ID30401( var_5 );

    _ID42330::_ID17529( var_2._ID39235 );
}

_ID39915( var_0 )
{
    var_1 = self useturret( var_0 );

    if ( var_1 )
    {
        _ID42237::_ID32287( "move", ::_ID39331 );
        self._ID39235 = var_0;
        thread _ID23495( var_0 );
        var_0 setmode( "manual_ai" );
        var_0 thread _ID29873();
        self._ID39235 = var_0;
        var_0.owner = self;
        return 1;
    }
    else
    {
        var_0 restoredefaultdroppitch();
        return 0;
    }
}

_ID15929( var_0 )
{
    var_1 = [];
    var_1[var_1.size] = ::_ID14183;
    var_1[var_1.size] = ::_ID14185;
    var_1 = _ID42237::_ID3320( var_1 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = [[ var_1[var_2] ]]( var_0 );

        if ( !isdefined( var_3["spots"] ) )
            continue;

        var_3["spot"] = _ID42237::_ID28945( var_3["spots"] );
        return var_3;
    }
}

_ID16647()
{
    var_0 = [];
    var_1 = getaiarray();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !isdefined( var_1[var_2].node ) )
            continue;

        var_0[var_1[var_2].node.origin + ""] = 1;
    }

    return var_0;
}

_ID14175( var_0 )
{
    var_1 = level._ID33718;
    var_2 = [];
    var_3 = getarraykeys( var_1 );
    var_4 = _ID16647();
    var_4[self.node.origin + ""] = undefined;

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        var_6 = var_3[var_5];

        if ( var_1[var_6] == self._ID39235 )
            continue;

        var_7 = getarraykeys( self._ID39235._ID33719[var_0] );

        for ( var_8 = 0; var_8 < var_7.size; var_8++ )
        {
            if ( var_1[var_6]._ID13703 + "" != var_7[var_8] )
                continue;

            if ( isdefined( var_1[var_6]._ID886 ) )
                continue;

            if ( isdefined( var_4[var_1[var_6].node.origin + ""] ) )
                continue;

            if ( distance( self.goalpos, var_1[var_6].origin ) > self.goalradius )
                continue;

            var_2[var_2.size] = var_1[var_6];
        }
    }

    var_9 = [];
    var_9["type"] = var_0;
    var_9["spots"] = var_2;
    return var_9;
}

_ID14185( var_0 )
{
    return _ID14175( "ambush" );
}

_ID14183( var_0 )
{
    var_1 = _ID14175( "connected" );
    var_2 = var_1["spots"];

    if ( !var_2.size )
        return;

    var_3 = [];

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        if ( !_ID42237::_ID41802( var_2[var_4].origin, var_2[var_4].angles, var_0.origin, 0.75 ) )
            continue;

        if ( !sighttracepassed( var_0.origin, var_2[var_4].origin + ( 0, 0, 16 ), 0, undefined ) )
            continue;

        var_3[var_3.size] = var_2[var_4];
    }

    var_1["spots"] = var_3;
    return var_1;
}

_ID28239()
{
    _ID30736();
    var_0 = 1;
    self._ID20897 = 1;
    self._ID886 = undefined;

    if ( isdefined( self._ID20994 ) )
        return;

    if ( self.spawnflags & var_0 )
        return;

    _ID18537();
}

_ID18537()
{
    self notify( "stop_checking_for_flanking" );
    self._ID20897 = 0;
    self hide();
    self._ID34929 = 0;
    self makeunusable();
    self setdefaultdroppitch( 0 );
    thread _ID29867();
}

_ID34039()
{
    self show();
    self._ID34929 = 1;
    self makeusable();
    self._ID20897 = 1;
    thread _ID36520();
}

_ID36520()
{
    self endon( "stop_checking_for_flanking" );
    self waittill( "turret_deactivate" );

    if ( isalive( self.owner ) )
        self.owner notify( "end_mg_behavior" );
}

_ID39281( var_0 )
{
    var_1 = var_0 getturretowner();

    if ( !isdefined( var_1 ) )
        return 0;

    return var_1 == self;
}

_ID12630( var_0 )
{
    _ID41160( var_0 );
    var_0._ID886 = undefined;
}

_ID41160( var_0 )
{
    var_0 endon( "turret_deactivate" );
    self endon( "death" );
    self waittill( "end_mg_behavior" );
}

_ID29729( var_0 )
{
    var_0._ID886 = self;
    thread _ID12630( var_0 );
}
