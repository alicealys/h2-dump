// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19810()
{
    if ( isdefined( anim._ID35538 ) && anim._ID35538 )
        return;

    anim._ID35532 = [];
    anim._ID35533 = [];
    anim._ID35544 = [];
    anim._ID35537 = [];
    anim._ID35543 = 0;
    anim._ID35538 = 1;
    _ID42407::_ID32246();
}

_ID9284( var_0, var_1 )
{
    anim._ID35544[var_0] = spawnstruct();
    var_2 = anim._ID35544[var_0];
    var_2._ID1010 = var_0;
    var_2.team = _ID16615( var_1 );
    var_2._ID34157 = 0;
    var_2.origin = undefined;
    var_2._ID409 = undefined;
    var_2.enemy = undefined;
    var_2._ID20775 = 0;
    var_2._ID23459 = 0;
    var_2._ID23465 = [];
    var_2._ID25465 = [];
    var_2._ID25463 = 0;
    var_2._ID35539 = [];
    var_2._ID23456 = [];
    var_2._ID23457 = [];
    var_2._ID23463 = [];
    var_2._ID23464 = [];
    var_2._ID35548 = [];
    var_2._ID35549 = [];
    var_2._ID35536 = anim._ID35537.size;
    var_2 _ID20012( "combat", 0.75 );
    var_2 _ID20012( "cover", 0.75 );
    var_2 _ID20012( "move", 0.75 );
    var_2 _ID20012( "stop", 0.75 );
    var_2 _ID20012( "death", 0.75 );
    var_2 _ID20012( "suppressed", 0.75 );
    var_2 _ID20012( "attacking", 0.5 );
    anim._ID35537[anim._ID35537.size] = var_2;
    var_2 _ID39799();
    level notify( "squad created " + var_0 );
    anim notify( "squad created " + var_0 );

    for ( var_3 = 0; var_3 < anim._ID35532.size; var_3++ )
    {
        var_4 = anim._ID35532[var_3];
        var_2 thread [[ var_4 ]]();
    }

    for ( var_3 = 0; var_3 < anim._ID35537.size; var_3++ )
        anim._ID35537[var_3] _ID39799();

    var_2 thread _ID39845();
    var_2 thread _ID35547();
    var_2 thread _ID25466();
    var_2 thread _ID39737();
    return var_2;
}

_ID10351( var_0 )
{
    if ( var_0 == "axis" || var_0 == "team3" || var_0 == "allies" )
        return;

    var_1 = anim._ID35544[var_0]._ID35536;
    var_2 = anim._ID35544[var_0];
    var_2 notify( "squad_deleting" );

    while ( var_2._ID23465.size )
        var_2._ID23465[0] _ID2130( var_2._ID23465[0].team );

    anim._ID35537[var_1] = anim._ID35537[anim._ID35537.size - 1];
    anim._ID35537[var_1]._ID35536 = var_1;
    anim._ID35537[anim._ID35537.size - 1] = undefined;
    anim._ID35544[var_0] = undefined;
    level notify( "squad deleted " + var_0 );
    anim notify( "squad deleted " + var_0 );

    for ( var_3 = 0; var_3 < anim._ID35537.size; var_3++ )
        anim._ID35537[var_3] _ID39799();
}

_ID15497()
{
    var_0 = "auto" + anim._ID35543;
    anim._ID35543++;
    return var_0;
}

_ID2081( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        if ( isdefined( self._ID31450 ) )
            var_0 = self._ID31450;
        else
            var_0 = self.team;
    }

    if ( !isdefined( anim._ID35544[var_0] ) )
        anim _ID9284( var_0, self );

    var_1 = anim._ID35544[var_0];
    self._ID35507 = var_1;
}

_ID35531()
{
    self endon( "death" );
    wait 10.0;

    if ( !isdefined( self._ID31450 ) )
        var_0 = self.team + self._ID31200;
    else
        var_0 = self._ID31450 + self._ID31200;

    _ID2130( var_0 );
}

_ID16615( var_0 )
{
    var_1 = "allies";

    if ( var_0.team == "axis" || var_0.team == "neutral" || var_0.team == "team3" )
        var_1 = var_0.team;

    return var_1;
}

_ID2130( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        if ( isdefined( self._ID31200 ) )
            thread _ID35531();

        if ( isdefined( self._ID31450 ) )
            var_0 = self._ID31450;
        else
            var_0 = self.team;
    }

    if ( !isdefined( anim._ID35544[var_0] ) )
        anim _ID9284( var_0, self );

    var_1 = anim._ID35544[var_0];

    if ( isdefined( self._ID35507 ) )
    {
        if ( self._ID35507 == var_1 )
            return;
        else
            _ID29616();
    }

    self._ID21920 = 0;
    self._ID8376 = 0;
    self._ID35507 = var_1;
    self._ID23462 = var_1._ID23465.size;
    var_1._ID23465[self._ID23462] = self;
    var_1._ID23459 = var_1._ID23465.size;

    if ( isdefined( level._ID22493 ) )
    {
        if ( self.team == "allies" && animscripts\battlechatter::_ID20839() )
            _ID2074();
    }

    for ( var_2 = 0; var_2 < self._ID35507._ID23456.size; var_2++ )
    {
        var_3 = self._ID35507._ID23456[var_2];
        self thread [[ var_3 ]]( self._ID35507._ID1010 );
    }

    thread _ID23458();
    thread _ID23460();
}

_ID29616()
{
    var_0 = self._ID35507;
    var_1 = -1;

    if ( isdefined( self ) )
        var_1 = self._ID23462;
    else
    {
        for ( var_2 = 0; var_2 < var_0._ID23465.size; var_2++ )
        {
            if ( var_0._ID23465[var_2] == self )
                var_1 = var_2;
        }
    }

    if ( var_1 != var_0._ID23465.size - 1 )
    {
        var_3 = var_0._ID23465[var_0._ID23465.size - 1];
        var_0._ID23465[var_1] = var_3;

        if ( isdefined( var_3 ) )
            var_3._ID23462 = var_1;
    }

    var_0._ID23465[var_0._ID23465.size - 1] = undefined;
    var_0._ID23459 = var_0._ID23465.size;

    if ( isdefined( self._ID25464 ) )
        _ID29632();

    for ( var_2 = 0; var_2 < self._ID35507._ID23463.size; var_2++ )
    {
        var_4 = self._ID35507._ID23463[var_2];
        self thread [[ var_4 ]]( var_0._ID1010 );
    }

    if ( var_0._ID23459 == 0 )
        _ID10351( var_0._ID1010 );

    if ( isdefined( self ) )
    {
        self._ID35507 = undefined;
        self._ID23462 = undefined;
    }

    self notify( "removed from squad" );
}

_ID2074()
{
    var_0 = self._ID35507;

    if ( isdefined( self._ID25464 ) )
        return;

    self._ID25464 = var_0._ID25465.size;
    var_0._ID25465[self._ID25464] = self;
    var_0._ID25463 = var_0._ID25465.size;
}

_ID29632()
{
    var_0 = self._ID35507;
    var_1 = -1;

    if ( isdefined( self ) )
        var_1 = self._ID25464;
    else
    {
        for ( var_2 = 0; var_2 < var_0._ID25465.size; var_2++ )
        {
            if ( var_0._ID25465[var_2] == self )
                var_1 = var_2;
        }
    }

    if ( var_1 != var_0._ID25465.size - 1 )
    {
        var_3 = var_0._ID25465[var_0._ID25465.size - 1];
        var_0._ID25465[var_1] = var_3;

        if ( isdefined( var_3 ) )
            var_3._ID25464 = var_1;
    }

    var_0._ID25465[var_0._ID25465.size - 1] = undefined;
    var_0._ID25463 = var_0._ID25465.size;

    if ( isdefined( self ) )
        self._ID25464 = undefined;
}

_ID25466()
{
    if ( !isdefined( level._ID22493 ) )
        anim waittill( "loadout complete" );

    for ( var_0 = 0; var_0 < self._ID23465.size; var_0++ )
    {
        if ( self._ID23465[var_0] animscripts\battlechatter::_ID20839() )
            self._ID23465[var_0] _ID2074();
    }
}

_ID39845()
{
    for (;;)
    {
        anim waittill( "squadupdate",  var_0  );

        switch ( var_0 )
        {
            case "squadlist":
                _ID39799();
                continue;
            case "combat":
                _ID39685();
                continue;
            case "origin":
                _ID39751();
                continue;
            case "forward":
                _ID39720();
                continue;
        }
    }
}

_ID35547()
{
    anim endon( "squad deleted " + self._ID1010 );
    var_0 = 0.1;

    if ( level._ID227 )
        var_0 = 0.5;

    for (;;)
    {
        _ID39668();
        wait(var_0);
    }
}

_ID23460()
{
    self endon( "removed from squad" );
    self waittill( "death",  var_0  );

    if ( isdefined( self ) )
        self._ID85 = var_0;

    _ID29616();
}

_ID23458()
{
    self endon( "removed from squad" );

    for (;;)
    {
        self waittill( "enemy" );

        if ( !isdefined( self.enemy ) )
            self._ID35507 notify( "squadupdate",  "combat"  );
        else
            self._ID35507._ID20775 = 1;

        wait 0.05;
    }
}

_ID39720()
{
    if ( isdefined( self.enemy ) )
        self._ID409 = vectornormalize( self.enemy.origin - self.origin );
    else
    {
        var_0 = ( 0, 0, 0 );
        var_1 = 0;

        for ( var_2 = 0; var_2 < self._ID23465.size; var_2++ )
        {
            if ( !isalive( self._ID23465[var_2] ) )
                continue;

            var_0 += anglestoforward( self._ID23465[var_2].angles );
            var_1++;
        }

        if ( var_1 )
        {
            self._ID409 = ( var_0[0] / var_1, var_0[1] / var_1, var_0[2] / var_1 );
            return;
        }

        self._ID409 = var_0;
    }
}

_ID39751()
{
    var_0 = ( 0, 0, 0 );
    var_1 = 0;

    for ( var_2 = 0; var_2 < self._ID23465.size; var_2++ )
    {
        if ( !isalive( self._ID23465[var_2] ) )
            continue;

        var_0 += self._ID23465[var_2].origin;
        var_1++;
    }

    if ( var_1 )
        self.origin = ( var_0[0] / var_1, var_0[1] / var_1, var_0[2] / var_1 );
    else
        self.origin = var_0;
}

_ID39685()
{
    self._ID20775 = 0;

    for ( var_0 = 0; var_0 < anim._ID35537.size; var_0++ )
        self._ID35539[anim._ID35537[var_0]._ID1010]._ID20776 = 0;

    for ( var_0 = 0; var_0 < self._ID23465.size; var_0++ )
    {
        if ( isdefined( self._ID23465[var_0].enemy ) && isdefined( self._ID23465[var_0].enemy._ID35507 ) && self._ID23465[var_0]._ID8376 > 0 )
            self._ID35539[self._ID23465[var_0].enemy._ID35507._ID1010]._ID20776 = 1;
    }
}

_ID39704()
{
    var_0 = undefined;

    for ( var_1 = 0; var_1 < self._ID23465.size; var_1++ )
    {
        if ( isdefined( self._ID23465[var_1].enemy ) && isdefined( self._ID23465[var_1].enemy._ID35507 ) )
        {
            if ( !isdefined( var_0 ) )
            {
                var_0 = self._ID23465[var_1].enemy._ID35507;
                continue;
            }

            if ( self._ID23465[var_1].enemy._ID35507._ID23459 > var_0._ID23459 )
                var_0 = self._ID23465[var_1].enemy._ID35507;
        }
    }

    self.enemy = var_0;
}

_ID39668()
{
    var_0 = ( 0, 0, 0 );
    var_1 = 0;
    var_2 = undefined;
    var_3 = 0;
    _ID39685();

    for ( var_4 = 0; var_4 < self._ID23465.size; var_4++ )
    {
        if ( !isalive( self._ID23465[var_4] ) )
            continue;

        var_0 += self._ID23465[var_4].origin;
        var_1++;

        if ( isdefined( self._ID23465[var_4].enemy ) && isdefined( self._ID23465[var_4].enemy._ID35507 ) )
        {
            if ( !isdefined( var_2 ) )
            {
                var_2 = self._ID23465[var_4].enemy._ID35507;
                continue;
            }

            if ( self._ID23465[var_4].enemy._ID35507._ID23459 > var_2._ID23459 )
                var_2 = self._ID23465[var_4].enemy._ID35507;
        }
    }

    if ( var_1 )
        self.origin = ( var_0[0] / var_1, var_0[1] / var_1, var_0[2] / var_1 );
    else
        self.origin = var_0;

    self._ID20775 = var_3;
    self.enemy = var_2;
    _ID39720();
}

_ID39799()
{
    for ( var_0 = 0; var_0 < anim._ID35537.size; var_0++ )
    {
        if ( !isdefined( self._ID35539[anim._ID35537[var_0]._ID1010] ) )
        {
            self._ID35539[anim._ID35537[var_0]._ID1010] = spawnstruct();
            self._ID35539[anim._ID35537[var_0]._ID1010]._ID20776 = 0;
        }

        for ( var_1 = 0; var_1 < self._ID35548.size; var_1++ )
        {
            var_2 = self._ID35548[var_1];
            self thread [[ var_2 ]]( anim._ID35537[var_0]._ID1010 );
        }
    }
}

_ID28588( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );

    if ( !isdefined( var_2 ) )
        var_2 = ( 0, 0, 0 );

    if ( !isdefined( var_3 ) )
        var_3 = ( 1, 0, 0 );

    for ( var_4 = 0; var_4 < var_1 * 2; var_4++ )
    {
        if ( !isalive( self ) )
            return;

        var_5 = self getshootatpos() + ( 0, 0, 10 ) + var_2;
        wait 0.05;
    }
}

_ID2476( var_0 )
{
    switch ( var_0 )
    {
        case "death":
        case "stop":
        case "combat":
        case "move":
            self._ID7._ID36185 = var_0;
            break;
        case "pain":
        case "grenadecower":
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
        case "cover_wide_left":
        case "cover_wide_right":
        case "concealment_crouch":
        case "concealment_prone":
        case "concealment_stand":
        case "stalingrad_cover_crouch":
            self._ID7._ID36185 = "cover";
            break;
        case "aim":
        case "l33t truckride combat":
            self._ID7._ID36185 = "combat";
            break;
    }
}

_ID39802()
{
    _ID29793( "combat" );
    _ID29793( "cover" );
    _ID29793( "move" );
    _ID29793( "stop" );
    _ID29793( "death" );
    _ID29793( "suppressed" );
    _ID29793( "attacking" );

    for ( var_0 = 0; var_0 < self._ID23465.size; var_0++ )
    {
        if ( !isalive( self._ID23465[var_0] ) )
            continue;

        _ID28823( self._ID23465[var_0] );
        _ID28824( self._ID23465[var_0], "suppressed" );
        _ID28824( self._ID23465[var_0], "combat" );
        _ID28824( self._ID23465[var_0], "attacking" );
        _ID28824( self._ID23465[var_0], "cover" );
    }
}

_ID39737()
{
    anim endon( "squad deleted " + self._ID1010 );
    var_0 = 0.05;

    if ( level._ID227 )
        var_0 = 0.25;

    for (;;)
    {
        for ( var_1 = 0; var_1 < self._ID23465.size; var_1++ )
        {
            if ( !isalive( self._ID23465[var_1] ) )
                continue;

            self._ID23465[var_1] _ID2477( var_0 );
            self._ID23465[var_1] _ID2478( var_0 );
        }

        wait(var_0);
    }
}

_ID2477( var_0 )
{
    if ( isdefined( self.lastenemysightpos ) )
    {
        if ( self._ID8376 < 0 )
            self._ID8376 = var_0;
        else
            self._ID8376 = self._ID8376 + var_0;

        self._ID21920 = gettime();
        return;
    }
    else if ( self issuppressed() )
    {
        self._ID8376 = self._ID8376 + var_0;
        return;
    }

    if ( self._ID8376 > 0 )
        self._ID8376 = 0 - var_0;
    else
        self._ID8376 = self._ID8376 - var_0;
}

_ID2478( var_0 )
{
    if ( self._ID36839 )
    {
        if ( self._ID36842 < 0 )
            self._ID36842 = var_0;
        else
            self._ID36842 = self._ID36842 + var_0;
    }
    else
    {
        if ( self._ID36842 > 0 )
        {
            self._ID36842 = 0 - var_0;
            return;
        }

        self._ID36842 = self._ID36842 - var_0;
    }
}

_ID20012( var_0, var_1 )
{
    self._ID35545[var_0] = spawnstruct();
    self._ID35545[var_0]._ID1809 = var_1;
    self._ID35545[var_0]._ID20649 = 0;
    self._ID35545[var_0]._ID25232 = 0;
}

_ID29793( var_0 )
{
    self._ID35545[var_0]._ID20649 = 0;
    self._ID35545[var_0]._ID25232 = 0;
}

_ID28823( var_0 )
{
    self._ID35545[var_0._ID7._ID36185]._ID25232++;

    if ( self._ID35545[var_0._ID7._ID36185]._ID25232 > self._ID35545[var_0._ID7._ID36185]._ID1809 * self._ID23465.size )
        self._ID35545[var_0._ID7._ID36185]._ID20649 = 1;
}

_ID28824( var_0, var_1 )
{
    switch ( var_1 )
    {
        case "suppressed":
            if ( var_0._ID36842 > 1.0 )
                self._ID35545[var_1]._ID25232++;

            break;
        case "combat":
            if ( var_0._ID8376 > 0.0 )
                self._ID35545[var_1]._ID25232++;

            break;
        case "attacking":
            if ( gettime() < var_0._ID7._ID21978 + 2000 )
                self._ID35545[var_1]._ID25232++;

            break;
        case "cover":
            if ( !var_0 animscripts\battlechatter::_ID20742() )
                self._ID35545[var_1]._ID25232++;

            break;
    }

    if ( self._ID35545[var_1]._ID25232 > self._ID35545[var_1]._ID1809 * self._ID23465.size )
        self._ID35545[var_1]._ID20649 = 1;
}
