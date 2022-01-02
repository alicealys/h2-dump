// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID10017()
{
    var_0 = getallnodes();
    var_1 = 0;
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( !( var_0[var_3].spawnflags & 2 ) && ( isdefined( var_0[var_3].target ) && getnodearray( var_0[var_3].target, "targetname" ).size > 0 || isdefined( var_0[var_3].targetname ) && getnodearray( var_0[var_3].targetname, "target" ).size > 0 ) )
        {
            var_2[var_1] = var_0[var_3];
            var_1++;
        }
    }

    var_4 = 0;

    for (;;)
    {
        if ( getdvar( "chain" ) == "1" )
        {
            for ( var_3 = 0; var_3 < var_2.size; var_3++ )
            {
                if ( distance( level.player getorigin(), var_2[var_3].origin ) < 1500 )
                {

                }
            }

            var_5 = getaiarray( "allies" );

            for ( var_3 = 0; var_3 < var_5.size; var_3++ )
            {
                var_6 = var_5[var_3] animscripts\utility::_ID16178();

                if ( isdefined( var_6 ) )
                {

                }
            }
        }

        waittillframeend;
    }
}

_ID9880( var_0 )
{
    var_1 = getaiarray();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] getentitynumber() != var_0 )
            continue;

        var_1[var_2] thread _ID9881();
        break;
    }
}

_ID9998( var_0 )
{
    var_1 = getaiarray();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] getentitynumber() != var_0 )
            continue;

        var_1[var_2] notify( "stop_drawing_enemy_pos" );
        break;
    }
}

_ID9881()
{
    self endon( "death" );
    self endon( "stop_drawing_enemy_pos" );

    for (;;)
    {
        wait 0.05;

        if ( isalive( self.enemy ) )
        {

        }

        if ( !animscripts\utility::_ID18223() )
            continue;

        var_0 = animscripts\utility::_ID16257();
    }
}

_ID9882()
{
    var_0 = getaiarray();
    var_1 = undefined;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_1 = var_0[var_2];

        if ( !isalive( var_1 ) )
            continue;

        if ( isdefined( var_1.lastenemysightpos ) )
        {

        }

        if ( isdefined( var_1._ID17020 ) )
        {
            if ( var_1 isbadguy() )
                var_3 = ( 1, 0, 0 );
            else
                var_3 = ( 0, 0, 1 );

            var_4 = var_1.origin + ( 0, 0, 54 );

            if ( isdefined( var_1.node ) )
            {
                if ( var_1.node.type == "Cover Left" )
                {
                    var_5 = 1;
                    var_4 = anglestoright( var_1.node.angles );
                    var_4 *= -32;
                    var_4 = ( var_4[0], var_4[1], 64 );
                    var_4 = var_1.node.origin + var_4;
                }
                else if ( var_1.node.type == "Cover Right" )
                {
                    var_5 = 1;
                    var_4 = anglestoright( var_1.node.angles );
                    var_4 *= 32;
                    var_4 = ( var_4[0], var_4[1], 64 );
                    var_4 = var_1.node.origin + var_4;
                }
            }

            _ID42237::_ID11682( var_4, var_1._ID17020, var_3 );
        }
    }

    if ( 1 )
        return;

    if ( !isalive( var_1 ) )
        return;

    if ( isalive( var_1.enemy ) )
    {

    }

    if ( isdefined( var_1.lastenemysightpos ) )
    {

    }

    if ( isalive( var_1._ID17019 ) )
    {

    }

    if ( !var_1 animscripts\utility::_ID18223() )
        return;

    var_6 = var_1 animscripts\utility::_ID16257();

    if ( isdefined( var_1._ID17020 ) )
        return;
}

_ID11736( var_0 )
{

}

_ID11754( var_0, var_1, var_2 )
{
    var_3 = self gettagorigin( var_0 );
    var_4 = self gettagangles( var_0 );
    _ID11731( var_3, var_4, var_1, var_2 );
}

_ID11745( var_0 )
{
    var_1 = undefined;
    var_2 = undefined;

    for (;;)
    {
        if ( isdefined( self ) )
        {
            var_1 = self.origin;
            var_2 = self.angles;
            _ID11731( var_1, var_2, var_0 );
        }

        wait 0.05;
    }
}

_ID11732( var_0, var_1 )
{
    for (;;)
    {
        _ID11731( var_0, var_1 );
        wait 0.05;
    }
}

_ID11746()
{
    while ( isdefined( self ) )
    {
        _ID11731( self.origin, self.angles );
        wait 0.05;
    }
}

_ID11731( var_0, var_1, var_2, var_3 )
{
    var_4 = 10;
    var_5 = anglestoforward( var_1 );
    var_6 = var_5 * var_4;
    var_7 = var_5 * ( var_4 * 0.8 );
    var_8 = anglestoright( var_1 );
    var_9 = var_8 * ( var_4 * -0.2 );
    var_10 = var_8 * ( var_4 * 0.2 );
    var_11 = anglestoup( var_1 );
    var_8 *= var_4;
    var_11 *= var_4;
    var_12 = ( 0.9, 0.2, 0.2 );
    var_13 = ( 0.2, 0.9, 0.2 );
    var_14 = ( 0.2, 0.2, 0.9 );

    if ( isdefined( var_2 ) )
    {
        var_12 = var_2;
        var_13 = var_2;
        var_14 = var_2;
    }

    if ( !isdefined( var_3 ) )
        var_3 = 1;
}

_ID11737( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 100;

    if ( !isdefined( var_1 ) )
        var_1 = ( 0, 1, 0 );

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        var_2 = anglestoforward( self.angles );
        wait 0.05;
    }
}

_ID11748()
{
    for (;;)
    {
        _ID11731( level.player.origin, level.player getplayerangles(), ( 1, 1, 1 ) );
        wait 0.05;
    }
}

_ID11755( var_0, var_1 )
{
    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        _ID11754( var_0, var_1 );
        wait 0.05;
    }
}

_ID11756( var_0, var_1 )
{
    for (;;)
    {
        if ( !isdefined( self.origin ) )
            break;

        _ID11754( var_0, var_1, 1000 );
        wait 0.05;
    }
}

_ID11681( var_0, var_1 )
{
    self endon( "death" );

    for (;;)
    {
        if ( !isdefined( self ) )
            break;

        if ( !isdefined( self.origin ) )
            break;

        _ID11754( var_0, var_1 );
        wait 0.05;
    }
}

_ID40483( var_0, var_1 )
{
    if ( var_0 == "ai" )
    {
        var_2 = getaiarray();

        for ( var_3 = 0; var_3 < var_2.size; var_3++ )
            var_2[var_3] _ID11754( var_1 );
    }
}

_ID9868()
{
    level.player.ignoreme = 1;
    var_0 = getallnodes();
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( var_0[var_2].type == "Cover Left" )
            var_1[var_1.size] = var_0[var_2];

        if ( var_0[var_2].type == "Cover Right" )
            var_1[var_1.size] = var_0[var_2];
    }

    var_3 = getaiarray();

    for ( var_2 = 0; var_2 < var_3.size; var_2++ )
        var_3[var_2] delete();

    level._ID10040 = getspawnerarray();
    level._ID1828 = [];
    level._ID8407 = [];

    for ( var_2 = 0; var_2 < level._ID10040.size; var_2++ )
        level._ID10040[var_2].targetname = "blah";

    var_4 = 0;

    for ( var_2 = 0; var_2 < 30; var_2++ )
    {
        if ( var_2 >= var_1.size )
            break;

        var_1[var_2] thread _ID8905();
        var_4++;
    }

    if ( var_1.size <= 30 )
        return;

    for (;;)
    {
        level waittill( "debug_next_corner" );

        if ( var_4 >= var_1.size )
            var_4 = 0;

        var_1[var_4] thread _ID8905();
        var_4++;
    }
}

_ID8905()
{
    _ID8901();
}

_ID8901()
{
    var_0 = undefined;
    var_1 = undefined;

    for (;;)
    {
        for ( var_2 = 0; var_2 < level._ID10040.size; var_2++ )
        {
            wait 0.05;
            var_1 = level._ID10040[var_2];
            var_3 = 0;

            for ( var_4 = 0; var_4 < level._ID1828.size; var_4++ )
            {
                if ( distance( level._ID1828[var_4].origin, self.origin ) > 250 )
                    continue;

                var_3 = 1;
                break;
            }

            if ( var_3 )
                continue;

            var_5 = 0;

            for ( var_4 = 0; var_4 < level._ID8407.size; var_4++ )
            {
                if ( level._ID8407[var_4] != self )
                    continue;

                var_5 = 1;
                break;
            }

            if ( var_5 )
                continue;

            level._ID1828[level._ID1828.size] = self;
            var_1.origin = self.origin;
            var_1.angles = self.angles;
            var_1.count = 1;
            var_0 = var_1 stalingradspawn();

            if ( _ID42407::_ID35060( var_0 ) )
            {
                _ID29590( self );
                continue;
            }

            break;
        }

        if ( isalive( var_0 ) )
            break;
    }

    wait 1;

    if ( isalive( var_0 ) )
    {
        var_0.ignoreme = 1;
        var_0.team = "neutral";
        var_0 setgoalpos( var_0.origin );
        thread _ID9257( self.origin );
        var_0 thread _ID42407::_ID10031();
        thread _ID9258( var_0 );
        var_0 waittill( "death" );
    }

    _ID29590( self );
    level._ID8407[level._ID8407.size] = self;
}

_ID29590( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < level._ID1828.size; var_2++ )
    {
        if ( level._ID1828[var_2] == var_0 )
            continue;

        var_1[var_1.size] = level._ID1828[var_2];
    }

    level._ID1828 = var_1;
}

_ID9257( var_0 )
{
    for (;;)
        wait 0.05;
}

_ID9258( var_0 )
{
    var_1 = undefined;

    while ( isalive( var_0 ) )
    {
        var_1 = var_0.origin;
        wait 0.05;
    }

    for (;;)
        wait 0.05;
}

_ID10029()
{
    self notify( "stopdebugmisstime" );
    self endon( "stopdebugmisstime" );
    self endon( "death" );

    for (;;)
    {
        if ( self._ID7._ID23782 <= 0 )
            jump loc_825

        wait 0.05;
    }
}

_ID10030()
{
    self notify( "stopdebugmisstime" );
}

_ID32612( var_0, var_1 )
{

}

_ID10026( var_0 )
{

}

_ID22929( var_0, var_1, var_2, var_3, var_4 )
{
    return var_3 + ( var_0 - var_1 ) * ( var_4 - var_3 ) / ( var_2 - var_1 );
}

_ID24417()
{

}

_ID24415()
{

}

_ID35568()
{

}

_ID15682()
{
    var_0 = anglestoforward( self.angles );
    var_1 = _ID42366::_ID15681();

    if ( !isdefined( var_1 ) || !isdefined( var_0 ) )
        return "none";

    if ( length( var_1 ) == 0 )
        var_1 = self.velocity;

    var_2 = vectordot( vectornormalize( var_0 ), vectornormalize( var_1 ) );
    var_2 = clamp( var_2, -1, 1 );
    var_3 = acos( var_2 );

    if ( var_3 > 135 )
        return "back";
    else if ( var_3 < 45 )
        return "forward";
    else if ( var_3 > 45 && var_3 < 135 )
        return "left";
    else
        return "right";
}

_ID19812()
{
    var_0 = [];
    var_0[0] = "Invalid";
    var_0[1] = "Exposed";
    var_0[2] = "Turret";
    var_0[3] = "Grenade_Response";
    var_0[4] = "Badplace";
    var_0[5] = "Cover_Arrival";
    var_0[6] = "Death";
    var_0[7] = "Pain";
    var_0[8] = "Flashed";
    var_0[9] = "Scripted_Anim";
    var_0[10] = "Custom_Anim";
    var_0[11] = "Negotiation";
    return var_0;
}

_ID36195( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 99;

    switch ( var_0 )
    {
        case "death":
            return 0;
        case "scripted":
            return 1;
        case "traverse":
            return 2;
        case "combat":
            return 3;
        case "patrol":
            return 4;
        case "stealth":
            return 5;
        case "cover_arrival":
            return 6;
        case "cover":
            return 7;
        case "flashed":
            return 8;
        case "reaction":
            return 9;
        case "pain":
            return 10;
        case "init":
            return 11;
        case "move":
            return 12;
        case "stop":
            return 13;
        case "grenade_cower":
            return 14;
        case "grenade_return_throw":
            return 15;
        case "cover_crouch":
        case "cover_stand":
        case "cover_left":
        case "cover_right":
        case "cover_prone":
        case "cover_multi":
        case "cover_swim_left":
        case "cover_swim_right":
        case "cover_swim_up":
        case "<custom>":
            return 16;
        default:
            return 99;
    }
}

_ID31458( var_0, var_1 )
{
    return _ID36195( var_0 ) < _ID36195( var_1 );
}

_ID31482( var_0 )
{
    var_1 = [];

    if ( !isai( var_0 ) )
    {
        var_1 = _ID42237::_ID3293( var_1, "Undefined" );
        return var_1;
    }

    if ( !isdefined( var_0.script ) )
    {
        var_1 = _ID42237::_ID3293( var_1, "Undefined" );
        return var_1;
    }

    if ( isdefined( self._ID31391 ) && self._ID31391 == 1 )
        var_1 = _ID42237::_ID3293( var_1, "patrol" );

    if ( isdefined( self._ID20957 ) && self._ID20957 )
        var_1 = _ID42237::_ID3293( var_1, "traverse" );

    if ( isdefined( self._ID1394 ) && self._ID1394 != "default_stealth_state" )
        var_1 = _ID42237::_ID3293( var_1, "stealth" );

    switch ( var_0.script )
    {
        case "pain":
        case "flashed":
        case "death":
        case "stop":
        case "combat":
        case "move":
        case "init":
        case "reaction":
        case "scripted":
        case "cover_arrival":
        case "grenade_cower":
        case "grenade_return_throw":
        case "<custom>":
            var_1 = _ID42237::_ID3293( var_1, var_0.script );
            break;
        case "cover_crouch":
        case "cover_stand":
        case "cover_left":
        case "cover_right":
        case "cover_prone":
        case "cover_multi":
        case "cover_swim_left":
        case "cover_swim_right":
        case "cover_swim_up":
            var_1 = _ID42237::_ID3293( var_1, "cover" );
            break;
        default:
            if ( _ID42237::_ID36696( var_0.script, "mantle" ) != -1 )
            {
                var_1 = _ID42237::_ID3293( var_1, "mantle" );
                break;
            }

            var_1 = _ID42237::_ID3293( var_1, var_0.script );
            break;
    }

    if ( var_1.size > 1 )
        var_1 = _ID42237::_ID3337( var_1, ::_ID31458 );

    return var_1;
}

_ID38672( var_0 )
{
    var_1 = " -> ";
    var_2 = _ID42237::_ID36696( var_0, var_1 );
    var_3 = getsubstr( var_0, 0, var_2 );
    var_4 = getsubstr( var_0, var_2 + var_1.size, var_0.size );
    var_5 = var_4 + var_1 + var_3;

    if ( isdefined( _ID42237::_ID3307( level._ID38684, var_5 ) ) )
    {
        var_6 = [];
        var_6["reversed"] = var_5;
        var_6["new"] = var_3 + " -- " + var_4;
        return var_6;
    }

    return undefined;
}

_ID26059( var_0 )
{

}

_ID36192()
{

}

_ID10021()
{

}

_ID29565()
{

}

_ID9178()
{

}

_ID9177()
{

}

_ID9915()
{

}

_ID9916()
{

}

_ID29533()
{

}

_ID9149()
{

}

_ID26969()
{

}

_ID9890()
{

}

_ID9877()
{

}

_ID9891()
{

}

_ID34058()
{
    var_0 = undefined;
    var_1 = undefined;
    var_0 = ( 15.1859, -12.2822, 4.071 );
    var_1 = ( 947.2, -10918, 64.9514 );

    for (;;)
    {
        wait 0.05;
        var_2 = var_0;
        var_3 = var_1;

        if ( !isdefined( var_0 ) )
            var_2 = level._ID38047;

        if ( !isdefined( var_1 ) )
            var_3 = level.player geteye();

        var_4 = bullettrace( var_2, var_3, 0, undefined );
    }
}

_ID9859()
{
    var_0 = newhudelem();
    var_0.alignx = "left";
    var_0.aligny = "middle";
    var_0.x = 10;
    var_0.y = 100;
    var_0.label = &"DEBUG_DRONES";
    var_0.alpha = 0;
    var_1 = newhudelem();
    var_1.alignx = "left";
    var_1.aligny = "middle";
    var_1.x = 10;
    var_1.y = 115;
    var_1.label = &"DEBUG_ALLIES";
    var_1.alpha = 0;
    var_2 = newhudelem();
    var_2.alignx = "left";
    var_2.aligny = "middle";
    var_2.x = 10;
    var_2.y = 130;
    var_2.label = &"DEBUG_AXIS";
    var_2.alpha = 0;
    var_3 = newhudelem();
    var_3.alignx = "left";
    var_3.aligny = "middle";
    var_3.x = 10;
    var_3.y = 145;
    var_3.label = &"DEBUG_VEHICLES";
    var_3.alpha = 0;
    var_4 = newhudelem();
    var_4.alignx = "left";
    var_4.aligny = "middle";
    var_4.x = 10;
    var_4.y = 160;
    var_4.label = &"DEBUG_TOTAL";
    var_4.alpha = 0;
    var_5 = "off";

    for (;;)
    {
        var_6 = getdvar( "debug_character_count" );

        if ( var_6 == "off" )
        {
            if ( var_6 != var_5 )
            {
                var_0.alpha = 0;
                var_1.alpha = 0;
                var_2.alpha = 0;
                var_3.alpha = 0;
                var_4.alpha = 0;
                var_5 = var_6;
            }

            wait 0.25;
            continue;
        }
        else if ( var_6 != var_5 )
        {
            var_0.alpha = 1;
            var_1.alpha = 1;
            var_2.alpha = 1;
            var_3.alpha = 1;
            var_4.alpha = 1;
            var_5 = var_6;
        }

        var_7 = getentarray( "drone", "targetname" ).size;
        var_0 setvalue( var_7 );
        var_8 = getaiarray( "allies" ).size;
        var_1 setvalue( var_8 );
        var_9 = getaiarray( "bad_guys" ).size;
        var_2 setvalue( var_9 );
        var_3 setvalue( getentarray( "script_vehicle", "classname" ).size );
        var_4 setvalue( var_7 + var_8 + var_9 );
        wait 0.25;
    }
}

_ID25192()
{
    if ( !self.damageshield )
        self kill( ( 0, 0, -500 ), level.player, level.player );
}

_ID9908()
{

}

_ID6678()
{
    wait 0.05;
    var_0 = getentarray( "camera", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = getent( var_0[var_1].target, "targetname" );
        var_0[var_1]._ID26012 = var_2.origin;
        var_0[var_1].angles = vectortoangles( var_2.origin - var_0[var_1].origin );
    }

    for (;;)
    {
        var_3 = getaiarray( "axis" );

        if ( !var_3.size )
        {
            _ID14892();
            wait 0.5;
            continue;
        }

        var_4 = [];

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            for ( var_5 = 0; var_5 < var_3.size; var_5++ )
            {
                if ( distance( var_0[var_1].origin, var_3[var_5].origin ) > 256 )
                    continue;

                var_4[var_4.size] = var_0[var_1];
                break;
            }
        }

        if ( !var_4.size )
        {
            _ID14892();
            wait 0.5;
            continue;
        }

        var_6 = [];

        for ( var_1 = 0; var_1 < var_4.size; var_1++ )
        {
            var_7 = var_4[var_1];
            var_8 = var_7._ID26012;
            var_9 = var_7.origin;
            var_10 = vectortoangles( ( var_9[0], var_9[1], var_9[2] ) - ( var_8[0], var_8[1], var_8[2] ) );
            var_11 = ( 0, var_10[1], 0 );
            var_12 = anglestoforward( var_11 );
            var_10 = vectornormalize( var_9 - level.player.origin );
            var_13 = vectordot( var_12, var_10 );

            if ( var_13 < 0.85 )
                continue;

            var_6[var_6.size] = var_7;
        }

        if ( !var_6.size )
        {
            _ID14892();
            wait 0.5;
            continue;
        }

        var_14 = distance( level.player.origin, var_6[0].origin );
        var_15 = var_6[0];

        for ( var_1 = 1; var_1 < var_6.size; var_1++ )
        {
            var_16 = distance( level.player.origin, var_6[var_1].origin );

            if ( var_16 > var_14 )
                continue;

            var_15 = var_6[var_1];
            var_14 = var_16;
        }

        _ID32752( var_15 );
        wait 3;
    }
}

_ID14892()
{
    setdvar( "cl_freemove", "0" );
}

_ID32752( var_0 )
{
    setdvar( "cl_freemove", "2" );
}

_ID2977()
{
    for (;;)
    {
        if ( getdvar( "angles", "0" ) == "1" )
            setdvar( "angles", "0" );

        wait 1;
    }
}

_ID9840()
{
    waitframe;

    for ( var_0 = 0; var_0 < 50; var_0++ )
    {
        if ( !isdefined( level._ID9839[var_0] ) )
            continue;

        var_1 = level._ID9839[var_0];

        for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        {
            var_3 = var_1[var_2];

            if ( isdefined( var_3._ID39050 ) )
                continue;
        }
    }
}

_ID21982()
{

}

_ID41537()
{
    precacheitem( "defaultweapon" );

    for (;;)
    {
        _ID39738();
        wait 0.25;
    }
}

_ID39738()
{
    var_0 = getdvarfloat( "scr_requiredMapAspectRatio", 1 );

    if ( !isdefined( level._ID23671 ) )
    {
        setdvar( "scr_minimap_corner_targetname", "minimap_corner" );
        level._ID23671 = "minimap_corner";
    }

    if ( !isdefined( level._ID23672 ) )
    {
        setdvar( "scr_minimap_height", "0" );
        level._ID23672 = 0;
    }

    var_1 = getdvarfloat( "scr_minimap_height" );
    var_2 = getdvar( "scr_minimap_corner_targetname" );

    if ( var_1 != level._ID23672 || var_2 != level._ID23671 )
    {
        if ( isdefined( level._ID23674 ) )
        {
            level._ID23675 unlink();
            level._ID23674 delete();
            level notify( "end_draw_map_bounds" );
        }

        if ( var_1 > 0 )
        {
            level._ID23672 = var_1;
            level._ID23671 = var_2;
            var_3 = level.player;
            var_4 = getentarray( var_2, "targetname" );

            if ( var_4.size == 2 )
            {
                var_5 = var_4[0].origin + var_4[1].origin;
                var_5 = ( var_5[0] * 0.5, var_5[1] * 0.5, var_5[2] * 0.5 );
                var_6 = ( var_4[0].origin[0], var_4[0].origin[1], var_5[2] );
                var_7 = ( var_4[0].origin[0], var_4[0].origin[1], var_5[2] );

                if ( var_4[1].origin[0] > var_4[0].origin[0] )
                    var_6 = ( var_4[1].origin[0], var_6[1], var_6[2] );
                else
                    var_7 = ( var_4[1].origin[0], var_7[1], var_7[2] );

                if ( var_4[1].origin[1] > var_4[0].origin[1] )
                    var_6 = ( var_6[0], var_4[1].origin[1], var_6[2] );
                else
                    var_7 = ( var_7[0], var_4[1].origin[1], var_7[2] );

                var_8 = var_6 - var_5;
                var_5 = ( var_5[0], var_5[1], var_5[2] + var_1 );
                var_9 = spawn( "script_origin", var_3.origin );
                var_10 = ( cos( getnorthyaw() ), sin( getnorthyaw() ), 0 );
                var_11 = ( var_10[1], 0 - var_10[0], 0 );
                var_12 = vectordot( var_10, var_8 );

                if ( var_12 < 0 )
                    var_12 = 0 - var_12;

                var_13 = vectordot( var_11, var_8 );

                if ( var_13 < 0 )
                    var_13 = 0 - var_13;

                if ( var_0 > 0 )
                {
                    var_14 = var_13 / var_12;

                    if ( var_14 < var_0 )
                    {
                        var_15 = var_0 / var_14;
                        var_13 *= var_15;
                        var_16 = _ID40049( var_11, vectordot( var_11, var_6 - var_5 ) * ( var_15 - 1 ) );
                        var_7 -= var_16;
                        var_6 += var_16;
                    }
                    else
                    {
                        var_15 = var_14 / var_0;
                        var_12 *= var_15;
                        var_16 = _ID40049( var_10, vectordot( var_10, var_6 - var_5 ) * ( var_15 - 1 ) );
                        var_7 -= var_16;
                        var_6 += var_16;
                    }
                }

                if ( level._ID8534 )
                {
                    var_17 = 1.77778;
                    var_18 = 2 * atan( var_13 * 0.8 / var_1 );
                    var_19 = 2 * atan( var_12 * var_17 * 0.8 / var_1 );
                }
                else
                {
                    var_17 = 1.33333;
                    var_18 = 2 * atan( var_13 * 1.05 / var_1 );
                    var_19 = 2 * atan( var_12 * var_17 * 1.05 / var_1 );
                }

                if ( var_18 > var_19 )
                    var_20 = var_18;
                else
                    var_20 = var_19;

                var_21 = var_1 - 1000;

                if ( var_21 < 16 )
                    var_21 = 16;

                if ( var_21 > 10000 )
                    var_21 = 10000;

                var_3 playerlinktoabsolute( var_9 );
                var_9.origin = var_5 + ( 0, 0, -62 );
                var_9.angles = ( 90, getnorthyaw(), 0 );
                var_3 giveweapon( "defaultweapon" );
                setsaveddvar( "cg_fov", var_20 );
                level._ID23675 = var_3;
                level._ID23674 = var_9;
                thread _ID11741( var_5, var_7, var_6 );
            }
            else
            {

            }
        }
    }
}

_ID16173()
{
    var_0 = [];
    var_0 = getentarray( "minimap_line", "script_noteworthy" );
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_1[var_2] = var_0[var_2] _ID16172();

    return var_1;
}

_ID16172()
{
    var_0 = [];
    var_1 = self;

    while ( isdefined( var_1 ) )
    {
        var_0[var_0.size] = var_1;

        if ( !isdefined( var_1 ) || !isdefined( var_1.target ) )
            break;

        var_1 = getent( var_1.target, "targetname" );

        if ( isdefined( var_1 ) && var_1 == var_0[0] )
        {
            var_0[var_0.size] = var_1;
            break;
        }
    }

    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        var_2[var_3] = var_0[var_3].origin;

    return var_2;
}

_ID40049( var_0, var_1 )
{
    return ( var_0[0] * var_1, var_0[1] * var_1, var_0[2] * var_1 );
}

_ID11741( var_0, var_1, var_2 )
{
    level notify( "end_draw_map_bounds" );
    level endon( "end_draw_map_bounds" );
    var_3 = var_0[2] - var_2[2];
    var_4 = length( var_1 - var_2 );
    var_5 = var_1 - var_0;
    var_5 = vectornormalize( ( var_5[0], var_5[1], 0 ) );
    var_1 += _ID40049( var_5, var_4 * 1 / 800 * 0 );
    var_6 = var_2 - var_0;
    var_6 = vectornormalize( ( var_6[0], var_6[1], 0 ) );
    var_2 += _ID40049( var_6, var_4 * 1 / 800 * 0 );
    var_7 = ( cos( getnorthyaw() ), sin( getnorthyaw() ), 0 );
    var_8 = var_2 - var_1;
    var_9 = _ID40049( var_7, vectordot( var_8, var_7 ) );
    var_10 = _ID40049( var_7, abs( vectordot( var_8, var_7 ) ) );
    var_11 = var_1;
    var_12 = var_1 + var_9;
    var_13 = var_2;
    var_14 = var_2 - var_9;
    var_15 = _ID40049( var_1 + var_2, 0.5 ) + _ID40049( var_10, 0.51 );
    var_16 = var_4 * 0.003;
    var_17 = _ID16173();

    for (;;)
    {
        _ID42237::_ID3315( var_17, _ID42237::_ID28148 );
        wait 0.05;
    }
}

_ID20815( var_0 )
{
    var_1 = vectornormalize( var_0 - self getshootatpos() );
    var_2 = vectornormalize( var_0 - ( 0, 0, 24 ) - self getshootatpos() );
    var_3 = vectordot( var_1, var_2 );
    var_4 = anglestoforward( self getplayerangles() );
    var_5 = vectordot( var_4, var_1 );

    if ( var_5 > var_3 )
        return 1;
    else
        return 0;
}

_ID9866()
{
    wait 0.05;
    var_0 = getaiarray();
    var_1 = [];
    var_1["axis"] = [];
    var_1["allies"] = [];
    var_1["neutral"] = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];

        if ( !isdefined( var_3._ID9487 ) )
            continue;

        var_1[var_3.team][var_3._ID9487] = 1;
        var_4 = ( 1, 1, 1 );

        if ( isdefined( var_3._ID31209 ) )
            var_4 = level._ID8247[var_3._ID31209];

        var_5 = var_3._ID9487;

        if ( isdefined( var_3._ID5035 ) && var_3._ID5035 == 1 )
            var_5 += " (c)";

        var_3 _ID39060();
    }

    _ID11693( var_1, "allies" );
    _ID11693( var_1, "axis" );
}

_ID11693( var_0, var_1 )
{
    var_2 = getarraykeys( var_0[var_1] );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = ( 1, 1, 1 );
        var_4 = level._ID8247[getsubstr( var_2[var_3], 0, 1 )];

        if ( isdefined( level._ID8282[var_1][var_2[var_3]] ) )
        {
            var_5 = level._ID8282[var_1][var_2[var_3]];

            for ( var_6 = 0; var_6 < var_5.size; var_6++ )
            {
                var_7 = "";

                if ( isdefined( var_5[var_6].classname ) && var_5[var_6].classname == "info_volume" )
                    var_7 = "V-" + var_2[var_3];
                else
                    var_7 = "N-" + var_2[var_3];

                if ( isdefined( var_5[var_6]._ID8262 ) && var_5[var_6]._ID8262 == level.player )
                    var_7 += " (p)";
            }
        }
    }
}

_ID16020()
{
    if ( self.team == "allies" )
    {
        if ( isdefined( self.node ) && isdefined( self.node._ID31096 ) )
            return self.node._ID31096;

        var_0 = self getgoalvolume();

        if ( isdefined( var_0 ) && isdefined( var_0._ID31096 ) )
            return var_0._ID31096;
    }

    if ( self.team == "axis" )
    {
        if ( isdefined( self.node ) && isdefined( self.node._ID31097 ) )
            return self.node._ID31097;

        var_0 = self getgoalvolume();

        if ( isdefined( var_0 ) && isdefined( var_0._ID31097 ) )
            return var_0._ID31097;
    }
}

_ID39060()
{
    var_0 = ( 0, 0, 0 );

    if ( isdefined( self.node ) )
        var_0 = self.node.origin;
    else if ( isdefined( self getgoalvolume() ) )
    {
        var_1 = self getgoalvolume();
        var_0 = var_1.origin;
    }
    else
        return;

    if ( !isdefined( self._ID31209 ) )
        return;

    var_2 = _ID16020();

    if ( !isdefined( var_2 ) )
        return;

    if ( !issubstr( var_2, self._ID31209 ) )
        return;
}

_ID14693()
{
    if ( getdvar( "depth_close" ) == "" )
        setdvar( "depth_close", "0" );

    if ( getdvar( "depth_far" ) == "" )
        setdvar( "depth_far", "1500" );

    var_0 = getdvarint( "depth_close" );
    var_1 = getdvarint( "depth_far" );
    setexpfog( var_0, var_1, 1, 1, 1, 1, 0 );
}

_ID10043()
{
    level._ID21862 = gettime();
    thread _ID10044();
}

_ID10044()
{

}

_ID11118( var_0, var_1 )
{
    if ( self.team == var_0.team )
        return;

    var_2 = 0;
    var_2 += self.threatbias;
    var_3 = 0;
    var_3 += var_0.threatbias;
    var_4 = undefined;

    if ( isdefined( var_1 ) )
    {
        var_4 = self getthreatbiasgroup();

        if ( isdefined( var_4 ) )
        {
            var_3 += getthreatbias( var_1, var_4 );
            var_2 += getthreatbias( var_4, var_1 );
        }
    }

    if ( var_0.ignoreme || var_3 < -900000 )
        var_3 = "Ignore";

    if ( self.ignoreme || var_2 < -900000 )
        var_2 = "Ignore";

    var_5 = 20;
    var_6 = ( 1, 0.5, 0.2 );
    var_7 = ( 0.2, 0.5, 1 );
    var_8 = !isplayernumber( self ) && self.pacifist;

    for ( var_9 = 0; var_9 <= var_5; var_9++ )
    {
        if ( isdefined( var_1 ) )
        {

        }

        if ( isdefined( var_4 ) )
        {

        }

        if ( var_8 )
        {

        }

        wait 0.05;
    }
}

_ID10019()
{
    level._ID9864 = [];
    level._ID9865 = [];

    for (;;)
    {
        level waittill( "updated_color_friendlies" );
        _ID11691();
    }
}

_ID11691()
{
    level endon( "updated_color_friendlies" );
    var_0 = getarraykeys( level._ID9864 );
    var_1 = [];
    var_2 = [];
    var_2[var_2.size] = "r";
    var_2[var_2.size] = "o";
    var_2[var_2.size] = "y";
    var_2[var_2.size] = "g";
    var_2[var_2.size] = "c";
    var_2[var_2.size] = "b";
    var_2[var_2.size] = "p";
    var_2[var_2.size] = "w";
    var_2[var_2.size] = "a";
    var_2[var_2.size] = "l";
    var_3 = _ID42407::_ID15965();

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
        var_1[var_2[var_4]] = 0;

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_5 = level._ID9864[var_0[var_4]];
        var_1[var_5]++;
    }

    for ( var_4 = 0; var_4 < level._ID9865.size; var_4++ )
        level._ID9865[var_4] destroy();

    level._ID9865 = [];
    var_6 = 15;
    var_7 = 365;
    var_8 = 25;
    var_9 = 25;

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        if ( var_1[var_2[var_4]] <= 0 )
            continue;

        for ( var_10 = 0; var_10 < var_1[var_2[var_4]]; var_10++ )
        {
            var_11 = newhudelem();
            var_11.x = var_6 + 25 * var_10;
            var_11.y = var_7;
            var_11 setshader( "white", 16, 16 );
            var_11.alignx = "left";
            var_11.aligny = "bottom";
            var_11.alpha = 1;
            var_11.color = var_3[var_2[var_4]];
            level._ID9865[level._ID9865.size] = var_11;
        }

        var_7 += var_9;
    }
}

_ID27939()
{
    for (;;)
    {
        if ( isdefined( level.player.node ) )
        {

        }

        wait 0.05;
    }
}

_ID11757()
{
    if ( isalive( self._ID8262 ) )
        return;
}

_ID10023()
{
    for (;;)
    {
        var_0 = getaiarray();
        _ID42237::_ID3350( var_0, ::_ID40468 );
        wait 0.05;
    }
}

_ID40468()
{
    if ( !isdefined( self.goalpos ) )
        return;
}

_ID8269()
{
    wait 0.5;
    var_0 = [];
    var_0[var_0.size] = "r";
    var_0[var_0.size] = "g";
    var_0[var_0.size] = "b";
    var_0[var_0.size] = "y";
    var_0[var_0.size] = "o";
    var_0[var_0.size] = "p";
    var_0[var_0.size] = "c";
    var_0[var_0.size] = "w";
    var_0[var_0.size] = "a";
    var_0[var_0.size] = "l";

    for (;;)
    {
        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            var_2 = level._ID9488["allies"][var_0[var_1]];

            if ( isdefined( var_2 ) )
                _ID11692( var_2 );
        }

        wait 0.05;
    }
}

_ID11692( var_0 )
{
    var_1 = level._ID3363["allies"][var_0];
    _ID42237::_ID3350( var_1, ::_ID11757 );
}

_ID1897( var_0, var_1, var_2 )
{
    var_3 = newhudelem();
    var_3.alignx = "left";
    var_3.aligny = "middle";
    var_3.x = var_0;
    var_3.y = var_1;
    var_3.alpha = 1;
    var_3.fontscale = 1;
    var_3.label = var_2;
    level._ID3207[level._ID3207.size] = var_3;
    return var_3;
}

_ID15550( var_0 )
{
    if ( !isdefined( level._ID3205[var_0._ID3189] ) )
        return;

    if ( !isdefined( level._ID3205[var_0._ID3189][var_0._ID3183] ) )
        return;

    if ( !isdefined( level._ID3205[var_0._ID3189][var_0._ID3183][var_0._ID24954] ) )
        return;

    return level._ID3205[var_0._ID3189][var_0._ID3183][var_0._ID24954]["soundalias"];
}

_ID20529( var_0, var_1, var_2 )
{
    return isdefined( level._ID3205[var_0][var_1][var_2]["created_by_animSound"] );
}

_ID11076()
{
    if ( distance( level.player.origin, self.origin ) > 1500 )
        return;

    level._ID3214[level._ID3214.size] = self;
}

_ID9851( var_0 )
{

}

_ID9852()
{

}

_ID37077( var_0, var_1 )
{
    if ( !isdefined( level._ID3211 ) )
        return;

    if ( !isdefined( level._ID3211._ID3213[var_1] ) )
        return;

    var_2 = level._ID3211._ID3213[var_1];
    var_3 = _ID15550( var_2 );

    if ( !isdefined( var_3 ) || _ID20529( var_2._ID3189, var_2._ID3183, var_2._ID24954 ) )
    {
        level._ID3205[var_2._ID3189][var_2._ID3183][var_2._ID24954]["soundalias"] = var_0;
        level._ID3205[var_2._ID3189][var_2._ID3183][var_2._ID24954]["created_by_animSound"] = 1;
    }
}

_ID37876( var_0 )
{
    var_1 = "\"";

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( var_0[var_2] == "\"" )
        {
            var_1 += "\";
            var_1 += "\"";
            continue;
        }

        var_1 += var_0[var_2];
    }

    var_1 += "\"";
    return var_1;
}

_ID22387( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_2 ) )
        var_2 = ( 1, 1, 1 );

    if ( isdefined( var_5 ) )
    {
        var_5 *= 20;

        for ( var_6 = 0; var_6 < var_5; var_6++ )
            wait 0.05;
    }
    else
    {
        for (;;)
            wait 0.05;
    }
}

_ID28582( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "stop_print3ddraw" );

    if ( !isdefined( var_3 ) )
        var_3 = 1;

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    for (;;)
        wait 0.05;
}

_ID8404()
{
    if ( getdvar( "credits_active" ) == "1" )
    {
        wait 7;
        setdvar( "credits_active", "0" );
        _ID42291::_ID9301();
        return;
    }

    wait 7;
    _ID42407::_ID24793();
}

_ID14187( var_0 )
{

}

_ID7334( var_0 )
{
    if ( !isdefined( level._ID7323 ) )
        level._ID7323 = -1;

    if ( level._ID7323 == var_0 )
        return;

    _ID14187( var_0 );

    if ( !isdefined( level._ID7324 ) )
        return;

    level._ID7323 = var_0;

    if ( !isdefined( level._ID7322 ) )
        level._ID7322 = level._ID7324 _ID42237::_ID35164();

    thread _ID7335( level._ID7324 );
}

_ID7335( var_0 )
{
    level notify( "new_chasecam" );
    level endon( "new_chasecam" );
    var_0 endon( "death" );
    level.player unlink();
    level.player playerlinktoblend( level._ID7322, "tag_origin", 2, 0.5, 0.5 );
    wait 2;
    level.player playerlinktodelta( level._ID7322, "tag_origin", 1, 180, 180, 180, 180 );

    for (;;)
    {
        wait 0.2;

        if ( !isdefined( level._ID7324 ) )
            return;

        var_1 = level._ID7324.origin;
        var_2 = level._ID7324.angles;
        var_3 = anglestoforward( var_2 );
        var_3 *= 200;
        var_1 += var_3;
        var_2 = level.player getplayerangles();
        var_3 = anglestoforward( var_2 );
        var_3 *= -200;
        level._ID7322 moveto( var_1 + var_3, 0.2 );
    }
}

_ID40473()
{
    foreach ( var_1 in level._ID9242 )
    {
        if ( isdefined( var_1._ID22654 ) )
        {

        }
    }
}

_ID1903( var_0, var_1 )
{

}

_ID28578( var_0 )
{
    if ( !isdefined( level._ID40711 ) )
        level._ID40711 = 9500;

    level._ID40711++;
    var_1 = "bridge_helpers";
    _ID1903( "origin", self.origin[0] + " " + self.origin[1] + " " + self.origin[2] );
    _ID1903( "angles", self.angles[0] + " " + self.angles[1] + " " + self.angles[2] );
    _ID1903( "targetname", "helper_model" );
    _ID1903( "model", self.model );
    _ID1903( "classname", "script_model" );
    _ID1903( "spawnflags", "4" );
    _ID1903( "_color", "0.443137 0.443137 1.000000" );

    if ( isdefined( var_0 ) )
        _ID1903( "script_noteworthy", var_0 );
}

_ID11700( var_0 )
{

}

_ID11701()
{
    var_0 = level.player getplayerangles();
    var_1 = anglestoforward( var_0 );
    var_2 = level.player geteye();
    var_3 = self geteye();
    var_4 = vectortoangles( var_3 - var_2 );
    var_5 = anglestoforward( var_4 );
    var_6 = vectordot( var_5, var_1 );
}

_ID20137()
{
    var_0 = getentarray( "explodable_barrel", "targetname" );
    var_0 = _ID42237::_ID3296( var_0, getentarray( "explodable_barrel", "script_noteworthy" ) );

    if ( !var_0.size )
        return;

    foreach ( var_2 in var_0 )
    {
        var_2._ID279 = "explodable_barrel";
        var_3 = var_2.model + "2";
        precachemodel( var_3 );
        var_2 setmodel( var_3 );

        if ( isdefined( var_2.target ) )
        {
            var_4 = getent( var_2.target, "targetname" );

            if ( isdefined( var_4 ) )
                var_4._ID31133 = "pre";

            var_2.targetname = "destructible_toy";
        }
    }
}

_ID16611( var_0 )
{
    _ID42237::_ID11703( var_0, 1 );
}

_ID38157( var_0 )
{
    var_1 = _ID16611( var_0 );
}

_ID9872( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{

}

_ID11689( var_0, var_1, var_2, var_3 )
{

}

_ID38050( var_0 )
{

}

_ID9886()
{

}
