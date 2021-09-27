// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19810()
{
    if ( _func_02F( anim._ID35538 ) && anim._ID35538 )
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
    anim._ID35544[var_0] = _func_1A5();
    var_2 = anim._ID35544[var_0];
    var_2._ID1010 = var_0;
    var_2._ID1194 = _unknown_0101( var_1 );
    var_2._ID34157 = 0;
    var_2._ID740 = undefined;
    var_2._ID409 = undefined;
    var_2._ID322 = undefined;
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
    var_2 _unknown_0409( "combat", 0.75 );
    var_2 _unknown_0416( "cover", 0.75 );
    var_2 _unknown_0423( "move", 0.75 );
    var_2 _unknown_042F( "stop", 0.75 );
    var_2 _unknown_043C( "death", 0.75 );
    var_2 _unknown_0449( "suppressed", 0.75 );
    var_2 _unknown_0456( "attacking", 0.5 );
    anim._ID35537[anim._ID35537.size] = var_2;
    var_2 _unknown_0382();
    level notify( "squad created " + var_0 );
    anim notify( "squad created " + var_0 );

    for ( var_3 = 0; var_3 < anim._ID35532.size; var_3++ )
    {
        var_4 = anim._ID35532[var_3];
        var_2 thread [[ var_4 ]]();
    }

    for ( var_3 = 0; var_3 < anim._ID35537.size; var_3++ )
        anim._ID35537[var_3] _unknown_03BA();

    var_2 thread _unknown_02D1();
    var_2 thread _unknown_02EE();
    var_2 thread _unknown_02CC();
    var_2 thread _unknown_0477();
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
        var_2._ID23465[0] _unknown_026D( var_2._ID23465[0]._ID1194 );

    anim._ID35537[var_1] = anim._ID35537[anim._ID35537.size - 1];
    anim._ID35537[var_1]._ID35536 = var_1;
    anim._ID35537[anim._ID35537.size - 1] = undefined;
    anim._ID35544[var_0] = undefined;
    level notify( "squad deleted " + var_0 );
    anim notify( "squad deleted " + var_0 );

    for ( var_3 = 0; var_3 < anim._ID35537.size; var_3++ )
        anim._ID35537[var_3] _unknown_0461();
}

_ID15497()
{
    var_0 = "auto" + anim._ID35543;
    anim._ID35543++;
    return var_0;
}

_ID2081( var_0 )
{
    if ( !_func_02F( var_0 ) )
    {
        if ( _func_02F( self._ID31450 ) )
            var_0 = self._ID31450;
        else
            var_0 = self._ID1194;
    }

    if ( !_func_02F( anim._ID35544[var_0] ) )
        anim _unknown_0224( var_0, self );

    var_1 = anim._ID35544[var_0];
    self._ID35507 = var_1;
}

_ID35531()
{
    self endon( "death" );
    wait 10.0;

    if ( !_func_02F( self._ID31450 ) )
        var_0 = self._ID1194 + self._ID31200;
    else
        var_0 = self._ID31450 + self._ID31200;

    _unknown_031D( var_0 );
}

_ID16615( var_0 )
{
    var_1 = "allies";

    if ( var_0._ID1194 == "axis" || var_0._ID1194 == "neutral" || var_0._ID1194 == "team3" )
        var_1 = var_0._ID1194;

    return var_1;
}

_ID2130( var_0 )
{
    if ( !_func_02F( var_0 ) )
    {
        if ( _func_02F( self._ID31200 ) )
            thread _unknown_0341();

        if ( _func_02F( self._ID31450 ) )
            var_0 = self._ID31450;
        else
            var_0 = self._ID1194;
    }

    if ( !_func_02F( anim._ID35544[var_0] ) )
        anim _unknown_02B7( var_0, self );

    var_1 = anim._ID35544[var_0];

    if ( _func_02F( self._ID35507 ) )
    {
        if ( self._ID35507 == var_1 )
            return;
        else
            _unknown_03D5();
    }

    self._ID21920 = 0;
    self._ID8376 = 0;
    self._ID35507 = var_1;
    self._ID23462 = var_1._ID23465.size;
    var_1._ID23465[self._ID23462] = self;
    var_1._ID23459 = var_1._ID23465.size;

    if ( _func_02F( level._ID22493 ) )
    {
        if ( self._ID1194 == "allies" && animscripts\battlechatter::_ID20839() )
            _unknown_044E();
    }

    for ( var_2 = 0; var_2 < self._ID35507._ID23456.size; var_2++ )
    {
        var_3 = self._ID35507._ID23456[var_2];
        self thread [[ var_3 ]]( self._ID35507._ID1010 );
    }

    thread _unknown_04E4();
    thread _unknown_04DF();
}

_ID29616()
{
    var_0 = self._ID35507;
    var_1 = -1;

    if ( _func_02F( self ) )
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

        if ( _func_02F( var_3 ) )
            var_3._ID23462 = var_1;
    }

    var_0._ID23465[var_0._ID23465.size - 1] = undefined;
    var_0._ID23459 = var_0._ID23465.size;

    if ( _func_02F( self._ID25464 ) )
        _unknown_04FF();

    for ( var_2 = 0; var_2 < self._ID35507._ID23463.size; var_2++ )
    {
        var_4 = self._ID35507._ID23463[var_2];
        self thread [[ var_4 ]]( var_0._ID1010 );
    }

    if ( var_0._ID23459 == 0 )
        _unknown_0448( var_0._ID1010 );

    if ( _func_02F( self ) )
    {
        self._ID35507 = undefined;
        self._ID23462 = undefined;
    }

    self notify( "removed from squad" );
}

_ID2074()
{
    var_0 = self._ID35507;

    if ( _func_02F( self._ID25464 ) )
        return;

    self._ID25464 = var_0._ID25465.size;
    var_0._ID25465[self._ID25464] = self;
    var_0._ID25463 = var_0._ID25465.size;
}

_ID29632()
{
    var_0 = self._ID35507;
    var_1 = -1;

    if ( _func_02F( self ) )
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

        if ( _func_02F( var_3 ) )
            var_3._ID25464 = var_1;
    }

    var_0._ID25465[var_0._ID25465.size - 1] = undefined;
    var_0._ID25463 = var_0._ID25465.size;

    if ( _func_02F( self ) )
        self._ID25464 = undefined;
}

_ID25466()
{
    if ( !_func_02F( level._ID22493 ) )
        anim waittill( "loadout complete" );

    for ( var_0 = 0; var_0 < self._ID23465.size; var_0++ )
    {
        if ( self._ID23465[var_0] animscripts\battlechatter::_ID20839() )
            self._ID23465[var_0] _unknown_05FB();
    }
}

_ID39845()
{
    for (;;)
    {
        anim waittill( "squadupdate",  var_0  );

        switch ( var_0 )
        {

        }

        case "forward":
        case "origin":
        case "combat":
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
        _unknown_075E();
        wait(var_0);
    }
}

_ID23460()
{
    self endon( "removed from squad" );
    self waittill( "death",  var_0  );

    if ( _func_02F( self ) )
        self._ID85 = var_0;

    _unknown_0643();
}

_ID23458()
{
    self endon( "removed from squad" );

    for (;;)
    {
        self waittill( "enemy" );

        if ( !_func_02F( self._ID322 ) )
            self._ID35507 notify( "squadupdate",  "combat"  );
        else
            self._ID35507._ID20775 = 1;

        wait 0.05;
    }
}

_ID39720()
{
    if ( _func_02F( self._ID322 ) )
        self._ID409 = _func_119( self._ID322._ID740 - self._ID740 );
    else
    {
        var_0 = ( 0, 0, 0 );
        var_1 = 0;

        for ( var_2 = 0; var_2 < self._ID23465.size; var_2++ )
        {
            if ( !_func_1A7( self._ID23465[var_2] ) )
                continue;

            var_0 += _func_11F( self._ID23465[var_2]._ID65 );
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
        if ( !_func_1A7( self._ID23465[var_2] ) )
            continue;

        var_0 += self._ID23465[var_2]._ID740;
        var_1++;
    }

    if ( var_1 )
        self._ID740 = ( var_0[0] / var_1, var_0[1] / var_1, var_0[2] / var_1 );
    else
        self._ID740 = var_0;
}

_ID39685()
{
    self._ID20775 = 0;

    for ( var_0 = 0; var_0 < anim._ID35537.size; var_0++ )
        self._ID35539[anim._ID35537[var_0]._ID1010]._ID20776 = 0;

    for ( var_0 = 0; var_0 < self._ID23465.size; var_0++ )
    {
        if ( _func_02F( self._ID23465[var_0]._ID322 ) && _func_02F( self._ID23465[var_0]._ID322._ID35507 ) && self._ID23465[var_0]._ID8376 > 0 )
            self._ID35539[self._ID23465[var_0]._ID322._ID35507._ID1010]._ID20776 = 1;
    }
}

_ID39704()
{
    var_0 = undefined;

    for ( var_1 = 0; var_1 < self._ID23465.size; var_1++ )
    {
        if ( _func_02F( self._ID23465[var_1]._ID322 ) && _func_02F( self._ID23465[var_1]._ID322._ID35507 ) )
        {
            if ( !_func_02F( var_0 ) )
            {
                var_0 = self._ID23465[var_1]._ID322._ID35507;
                continue;
            }

            if ( self._ID23465[var_1]._ID322._ID35507._ID23459 > var_0._ID23459 )
                var_0 = self._ID23465[var_1]._ID322._ID35507;
        }
    }

    self._ID322 = var_0;
}

_ID39668()
{
    var_0 = ( 0, 0, 0 );
    var_1 = 0;
    var_2 = undefined;
    var_3 = 0;
    _unknown_08FB();

    for ( var_4 = 0; var_4 < self._ID23465.size; var_4++ )
    {
        if ( !_func_1A7( self._ID23465[var_4] ) )
            continue;

        var_0 += self._ID23465[var_4]._ID740;
        var_1++;

        if ( _func_02F( self._ID23465[var_4]._ID322 ) && _func_02F( self._ID23465[var_4]._ID322._ID35507 ) )
        {
            if ( !_func_02F( var_2 ) )
            {
                var_2 = self._ID23465[var_4]._ID322._ID35507;
                continue;
            }

            if ( self._ID23465[var_4]._ID322._ID35507._ID23459 > var_2._ID23459 )
                var_2 = self._ID23465[var_4]._ID322._ID35507;
        }
    }

    if ( var_1 )
        self._ID740 = ( var_0[0] / var_1, var_0[1] / var_1, var_0[2] / var_1 );
    else
        self._ID740 = var_0;

    self._ID20775 = var_3;
    self._ID322 = var_2;
    _unknown_0957();
}

_ID39799()
{
    for ( var_0 = 0; var_0 < anim._ID35537.size; var_0++ )
    {
        if ( !_func_02F( self._ID35539[anim._ID35537[var_0]._ID1010] ) )
        {
            self._ID35539[anim._ID35537[var_0]._ID1010] = _func_1A5();
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

    if ( !_func_02F( var_2 ) )
        var_2 = ( 0, 0, 0 );

    if ( !_func_02F( var_3 ) )
        var_3 = ( 1, 0, 0 );

    for ( var_4 = 0; var_4 < var_1 * 2; var_4++ )
    {
        if ( !_func_1A7( self ) )
            return;

        var_5 = self _meth_809E() + ( 0, 0, 10 ) + var_2;
        wait 0.05;
    }
}

_ID2476( var_0 )
{
    switch ( var_0 )
    {

    }

    endswitch( 23 )  case "l33t truckride combat" loc_B3E case "stalingrad_cover_crouch" loc_B3F case "concealment_stand" loc_B44 case "concealment_prone" loc_B4A case "concealment_crouch" loc_B4F case "cover_wide_right" loc_B54 case "cover_wide_left" loc_B59 case "cover_swim_up" loc_B5F case "cover_swim_right" loc_B64 case "cover_swim_left" loc_B69 case "cover_multi" loc_B6E case "cover_prone" loc_B74 case "grenadecower" loc_B78 case "cover_right" loc_B7E case "cover_left" loc_B83 case "cover_stand" loc_B89 case "aim" loc_B92 case "cover_crouch" loc_B93 case "move" loc_B94 case "combat" loc_B99 case "stop" loc_B9E case "death" loc_BA3 case "pain" loc_BAC
    case "stalingrad_cover_crouch":
    case "concealment_stand":
    case "concealment_prone":
    case "concealment_crouch":
    case "cover_wide_right":
    case "cover_wide_left":
    case "cover_swim_up":
    case "cover_swim_right":
    case "cover_swim_left":
    case "cover_multi":
    case "cover_prone":
    case "grenadecower":
    case "cover_right":
    case "cover_left":
    case "cover_stand":
    case "aim":
    case "cover_crouch":
    case "move":
    case "combat":
    case "stop":
    case "death":
    case "pain":
}

_ID39802()
{
    _unknown_0C61( "combat" );
    _unknown_0C69( "cover" );
    _unknown_0C72( "move" );
    _unknown_0C7A( "stop" );
    _unknown_0C82( "death" );
    _unknown_0C8A( "suppressed" );
    _unknown_0C93( "attacking" );

    for ( var_0 = 0; var_0 < self._ID23465.size; var_0++ )
    {
        if ( !_func_1A7( self._ID23465[var_0] ) )
            continue;

        _unknown_0CB6( self._ID23465[var_0] );
        _unknown_0CD8( self._ID23465[var_0], "suppressed" );
        _unknown_0CE4( self._ID23465[var_0], "combat" );
        _unknown_0CF0( self._ID23465[var_0], "attacking" );
        _unknown_0CFC( self._ID23465[var_0], "cover" );
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
            if ( !_func_1A7( self._ID23465[var_1] ) )
                continue;

            self._ID23465[var_1] _unknown_0CEA( var_0 );
            self._ID23465[var_1] _unknown_0D09( var_0 );
        }

        wait(var_0);
    }
}

_ID2477( var_0 )
{
    if ( _func_02F( self._ID584 ) )
    {
        if ( self._ID8376 < 0 )
            self._ID8376 = var_0;
        else
            self._ID8376 = self._ID8376 + var_0;

        self._ID21920 = _func_03D();
        return;
    }
    else if ( self _meth_81D9() )
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
    self._ID35545[var_0] = _func_1A5();
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

    }

    if ( self._ID35545[var_1]._ID25232 > self._ID35545[var_1]._ID1809 * self._ID23465.size )
    {
        self._ID35545[var_1]._ID20649 = 1;
        return;
        case "cover":
        case "suppressed":
        case "combat":
    }
}
