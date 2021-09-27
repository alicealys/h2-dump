// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID10017()
{
    var_0 = _func_0CA();
    var_1 = 0;
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( !var_0[var_3]._ID989 & 2 && _func_02F( var_0[var_3]._ID1191 ) && _func_0C9( var_0[var_3]._ID1191, "targetname" ).size > 0 || _func_02F( var_0[var_3]._ID1193 ) && _func_0C9( var_0[var_3]._ID1193, "target" ).size > 0 )
        {
            var_2[var_1] = var_0[var_3];
            var_1++;
        }
    }

    var_4 = 0;

    for (;;)
    {
        if ( _func_039( "chain" ) == "1" )
        {
            for ( var_3 = 0; var_3 < var_2.size; var_3++ )
            {
                if ( _func_0F3( level._ID794 _meth_809C(), var_2[var_3]._ID740 ) < 1500 )
                {

                }
            }

            var_5 = _func_0DE( "allies" );

            for ( var_3 = 0; var_3 < var_5.size; var_3++ )
            {
                var_6 = var_5[var_3] animscripts\utility::_ID16178();

                if ( _func_02F( var_6 ) )
                {

                }
            }
        }

        waittillframeend;
    }
}

_ID9880( var_0 )
{
    var_1 = _func_0DE();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] _meth_81BD() != var_0 )
            continue;

        var_1[var_2] thread _unknown_0126();
        break;
    }
}

_ID9998( var_0 )
{
    var_1 = _func_0DE();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] _meth_81BD() != var_0 )
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

        if ( _func_1A7( self._ID322 ) )
        {

        }

        if ( !animscripts\utility::_ID18223() )
            continue;

        var_0 = animscripts\utility::_ID16257();
    }
}

_ID9882()
{
    var_0 = _func_0DE();
    var_1 = undefined;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_1 = var_0[var_2];

        if ( !_func_1A7( var_1 ) )
            continue;

        if ( _func_02F( var_1._ID584 ) )
        {

        }

        if ( _func_02F( var_1._ID17020 ) )
        {
            if ( var_1 _meth_8147() )
                var_3 = ( 1, 0, 0 );
            else
                var_3 = ( 0, 0, 1 );

            var_4 = var_1._ID740 + ( 0, 0, 54 );

            if ( _func_02F( var_1._ID700 ) )
            {
                if ( var_1._ID700._ID1244 == "Cover Left" )
                {
                    var_5 = 1;
                    var_4 = _func_11E( var_1._ID700._ID65 );
                    var_4 *= -32;
                    var_4 = ( var_4[0], var_4[1], 64 );
                    var_4 = var_1._ID700._ID740 + var_4;
                }
                else if ( var_1._ID700._ID1244 == "Cover Right" )
                {
                    var_5 = 1;
                    var_4 = _func_11E( var_1._ID700._ID65 );
                    var_4 *= 32;
                    var_4 = ( var_4[0], var_4[1], 64 );
                    var_4 = var_1._ID700._ID740 + var_4;
                }
            }

            _ID42237::_ID11682( var_4, var_1._ID17020, var_3 );
        }
    }

    if ( 1 )
        return;

    if ( !_func_1A7( var_1 ) )
        return;

    if ( _func_1A7( var_1._ID322 ) )
    {

    }

    if ( _func_02F( var_1._ID584 ) )
    {

    }

    if ( _func_1A7( var_1._ID17019 ) )
    {

    }

    if ( !var_1 animscripts\utility::_ID18223() )
        return;

    var_6 = var_1 animscripts\utility::_ID16257();

    if ( _func_02F( var_1._ID17020 ) )
        return;
}

_ID11736( var_0 )
{

}

_ID11754( var_0, var_1, var_2 )
{
    var_3 = self _meth_818C( var_0 );
    var_4 = self _meth_818D( var_0 );
    _unknown_0340( var_3, var_4, var_1, var_2 );
}

_ID11745( var_0 )
{
    var_1 = undefined;
    var_2 = undefined;

    for (;;)
    {
        if ( _func_02F( self ) )
        {
            var_1 = self._ID740;
            var_2 = self._ID65;
            _unknown_035A( var_1, var_2, var_0 );
        }

        wait 0.05;
    }
}

_ID11732( var_0, var_1 )
{
    for (;;)
    {
        _unknown_036C( var_0, var_1 );
        wait 0.05;
    }
}

_ID11746()
{
    while ( _func_02F( self ) )
    {
        _unknown_0382( self._ID740, self._ID65 );
        wait 0.05;
    }
}

_ID11731( var_0, var_1, var_2, var_3 )
{
    var_4 = 10;
    var_5 = _func_11F( var_1 );
    var_6 = var_5 * var_4;
    var_7 = var_5 * var_4 * 0.8;
    var_8 = _func_11E( var_1 );
    var_9 = var_8 * var_4 * -0.2;
    var_10 = var_8 * var_4 * 0.2;
    var_11 = _func_11D( var_1 );
    var_8 *= var_4;
    var_11 *= var_4;
    var_12 = ( 0.9, 0.2, 0.2 );
    var_13 = ( 0.2, 0.9, 0.2 );
    var_14 = ( 0.2, 0.2, 0.9 );

    if ( _func_02F( var_2 ) )
    {
        var_12 = var_2;
        var_13 = var_2;
        var_14 = var_2;
    }

    if ( !_func_02F( var_3 ) )
        var_3 = 1;
}

_ID11737( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 100;

    if ( !_func_02F( var_1 ) )
        var_1 = ( 0, 1, 0 );

    for (;;)
    {
        if ( !_func_02F( self ) )
            return;

        var_2 = _func_11F( self._ID65 );
        wait 0.05;
    }
}

_ID11748()
{
    for (;;)
    {
        _unknown_044A( level._ID794._ID740, level._ID794 _meth_8346(), ( 1, 1, 1 ) );
        wait 0.05;
    }
}

_ID11755( var_0, var_1 )
{
    for (;;)
    {
        if ( !_func_02F( self ) )
            return;

        _unknown_0441( var_0, var_1 );
        wait 0.05;
    }
}

_ID11756( var_0, var_1 )
{
    for (;;)
    {
        if ( !_func_02F( self._ID740 ) )
            break;

        _unknown_045F( var_0, var_1, 1000 );
        wait 0.05;
    }
}

_ID11681( var_0, var_1 )
{
    self endon( "death" );

    for (;;)
    {
        if ( !_func_02F( self ) )
            break;

        if ( !_func_02F( self._ID740 ) )
            break;

        _unknown_0489( var_0, var_1 );
        wait 0.05;
    }
}

_ID40483( var_0, var_1 )
{
    if ( var_0 == "ai" )
    {
        var_2 = _func_0DE();

        for ( var_3 = 0; var_3 < var_2.size; var_3++ )
            var_2[var_3] _unknown_04AE( var_1 );
    }
}

_ID9868()
{
    level._ID794._ID511 = 1;
    var_0 = _func_0CA();
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( var_0[var_2]._ID1244 == "Cover Left" )
            var_1[var_1.size] = var_0[var_2];

        if ( var_0[var_2]._ID1244 == "Cover Right" )
            var_1[var_1.size] = var_0[var_2];
    }

    var_3 = _func_0DE();

    for ( var_2 = 0; var_2 < var_3.size; var_2++ )
        var_3[var_2] _meth_80B7();

    level._ID10040 = _func_0E0();
    level._ID1828 = [];
    level._ID8407 = [];

    for ( var_2 = 0; var_2 < level._ID10040.size; var_2++ )
        level._ID10040[var_2]._ID1193 = "blah";

    var_4 = 0;

    for ( var_2 = 0; var_2 < 30; var_2++ )
    {
        if ( var_2 >= var_1.size )
            break;

        var_1[var_2] thread _unknown_0611();
        var_4++;
    }

    if ( var_1.size <= 30 )
        return;

    for (;;)
    {
        level waittill( "debug_next_corner" );

        if ( var_4 >= var_1.size )
            var_4 = 0;

        var_1[var_4] thread _unknown_0633();
        var_4++;
    }
}

_ID8905()
{
    _unknown_063F();
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
                if ( _func_0F3( level._ID1828[var_4]._ID740, self._ID740 ) > 250 )
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
            var_1._ID740 = self._ID740;
            var_1._ID65 = self._ID65;
            var_1._ID216 = 1;
            var_0 = var_1 _meth_809B();

            if ( _ID42407::_ID35060( var_0 ) )
            {
                _unknown_0737( self );
                continue;
            }

            break;
        }

        if ( _func_1A7( var_0 ) )
            break;
    }

    wait 1;

    if ( _func_1A7( var_0 ) )
    {
        var_0._ID511 = 1;
        var_0._ID1194 = "neutral";
        var_0 _meth_81B2( var_0._ID740 );
        thread _unknown_077F( self._ID740 );
        var_0 thread _ID42407::_ID10031();
        thread _unknown_078D( var_0 );
        var_0 waittill( "death" );
    }

    _unknown_0788( self );
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

    while ( _func_1A7( var_0 ) )
    {
        var_1 = var_0._ID740;
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
    return var_3 + var_0 - var_1 * var_4 - var_3 / var_2 - var_1;
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
    var_0 = _func_11F( self._ID65 );
    var_1 = _ID42366::_ID15681();

    if ( !_func_02F( var_1 ) || !_func_02F( var_0 ) )
        return "none";

    if ( _func_0F6( var_1 ) == 0 )
        var_1 = self._ID1283;

    var_2 = _func_0FB( _func_119( var_0 ), _func_119( var_1 ) );
    var_2 = _func_0EE( var_2, -1, 1 );
    var_3 = _func_0BF( var_2 );

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
    if ( !_func_02F( var_0 ) )
        return 99;

    switch ( var_0 )
    {

    }

    case "<custom>":
    case "grenade_return_throw":
    case "cover_arrival":
    case "grenade_cower":
    case "stealth":
    case "cover_swim_up":
    case "cover_swim_right":
    case "cover_swim_left":
    case "cover_multi":
    case "cover_prone":
    case "cover_right":
    case "cover_left":
    case "scripted":
    case "cover":
    case "cover_stand":
    case "traverse":
    case "reaction":
    case "patrol":
    case "init":
    case "cover_crouch":
    case "move":
    case "combat":
    case "stop":
    case "death":
    case "flashed":
    case "pain":
    default:
}

_ID31458( var_0, var_1 )
{
    return _unknown_0A2C( var_0 ) < _unknown_0A31( var_1 );
}

_ID31482( var_0 )
{
    var_1 = [];

    if ( !_func_0D4( var_0 ) )
    {
        var_1 = _ID42237::_ID3293( var_1, "Undefined" );
        return var_1;
    }

    if ( !_func_02F( var_0._ID912 ) )
    {
        var_1 = _ID42237::_ID3293( var_1, "Undefined" );
        return var_1;
    }

    if ( _func_02F( self._ID31391 ) && self._ID31391 == 1 )
        var_1 = _ID42237::_ID3293( var_1, "patrol" );

    if ( _func_02F( self._ID20957 ) && self._ID20957 )
        var_1 = _ID42237::_ID3293( var_1, "traverse" );

    if ( _func_02F( self._ID1394 ) && self._ID1394 != "default_stealth_state" )
        var_1 = _ID42237::_ID3293( var_1, "stealth" );

    switch ( var_0._ID912 )
    {

    }

    if ( var_1.size > 1 )
        var_1 = _ID42237::_ID3337( var_1, ::_unknown_0BB1 );

    return var_1;
    case "grenade_return_throw":
    case "grenade_cower":
    case "cover_arrival":
    case "cover_swim_up":
    case "cover_swim_right":
    case "cover_swim_left":
    case "cover_multi":
    case "cover_prone":
    case "cover_right":
    case "cover_left":
    case "scripted":
    case "cover_stand":
    case "reaction":
    case "init":
    case "cover_crouch":
    case "move":
    case "combat":
    case "stop":
    case "death":
    case "flashed":
    case "pain":
    default:
}

_ID38672( var_0 )
{
    var_1 = " -> ";
    var_2 = _ID42237::_ID36696( var_0, var_1 );
    var_3 = _func_127( var_0, 0, var_2 );
    var_4 = _func_127( var_0, var_2 + var_1.size, var_0.size );
    var_5 = var_4 + var_1 + var_3;

    if ( _func_02F( _ID42237::_ID3307( level._ID38684, var_5 ) ) )
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

        if ( !_func_02F( var_0 ) )
            var_2 = level._ID38047;

        if ( !_func_02F( var_1 ) )
            var_3 = level._ID794 _meth_80AF();

        var_4 = _func_06D( var_2, var_3, 0, undefined );
    }
}

_ID9859()
{
    var_0 = _func_1AF();
    var_0._ID44 = "left";
    var_0._ID45 = "middle";
    var_0._ID1331 = 10;
    var_0._ID1339 = 100;
    var_0._ID578 = &"DEBUG_DRONES";
    var_0._ID55 = 0;
    var_1 = _func_1AF();
    var_1._ID44 = "left";
    var_1._ID45 = "middle";
    var_1._ID1331 = 10;
    var_1._ID1339 = 115;
    var_1._ID578 = &"DEBUG_ALLIES";
    var_1._ID55 = 0;
    var_2 = _func_1AF();
    var_2._ID44 = "left";
    var_2._ID45 = "middle";
    var_2._ID1331 = 10;
    var_2._ID1339 = 130;
    var_2._ID578 = &"DEBUG_AXIS";
    var_2._ID55 = 0;
    var_3 = _func_1AF();
    var_3._ID44 = "left";
    var_3._ID45 = "middle";
    var_3._ID1331 = 10;
    var_3._ID1339 = 145;
    var_3._ID578 = &"DEBUG_VEHICLES";
    var_3._ID55 = 0;
    var_4 = _func_1AF();
    var_4._ID44 = "left";
    var_4._ID45 = "middle";
    var_4._ID1331 = 10;
    var_4._ID1339 = 160;
    var_4._ID578 = &"DEBUG_TOTAL";
    var_4._ID55 = 0;
    var_5 = "off";

    for (;;)
    {
        var_6 = _func_039( "debug_character_count" );

        if ( var_6 == "off" )
        {
            if ( var_6 != var_5 )
            {
                var_0._ID55 = 0;
                var_1._ID55 = 0;
                var_2._ID55 = 0;
                var_3._ID55 = 0;
                var_4._ID55 = 0;
                var_5 = var_6;
            }

            wait 0.25;
            continue;
        }
        else if ( var_6 != var_5 )
        {
            var_0._ID55 = 1;
            var_1._ID55 = 1;
            var_2._ID55 = 1;
            var_3._ID55 = 1;
            var_4._ID55 = 1;
            var_5 = var_6;
        }

        var_7 = _func_1A2( "drone", "targetname" ).size;
        var_0 _meth_80DE( var_7 );
        var_8 = _func_0DE( "allies" ).size;
        var_1 _meth_80DE( var_8 );
        var_9 = _func_0DE( "bad_guys" ).size;
        var_2 _meth_80DE( var_9 );
        var_3 _meth_80DE( _func_1A2( "script_vehicle", "classname" ).size );
        var_4 _meth_80DE( var_7 + var_8 + var_9 );
        wait 0.25;
    }
}

_ID25192()
{
    if ( !self._ID256 )
        self _meth_8058( ( 0, 0, -500 ), level._ID794, level._ID794 );
}

_ID9908()
{

}

_ID6678()
{
    wait 0.05;
    var_0 = _func_1A2( "camera", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = _func_1A1( var_0[var_1]._ID1191, "targetname" );
        var_0[var_1]._ID26012 = var_2._ID740;
        var_0[var_1]._ID65 = _func_11A( var_2._ID740 - var_0[var_1]._ID740 );
    }

    for (;;)
    {
        var_3 = _func_0DE( "axis" );

        if ( !var_3.size )
        {
            _unknown_1033();
            wait 0.5;
            continue;
        }

        var_4 = [];

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            for ( var_5 = 0; var_5 < var_3.size; var_5++ )
            {
                if ( _func_0F3( var_0[var_1]._ID740, var_3[var_5]._ID740 ) > 256 )
                    continue;

                var_4[var_4.size] = var_0[var_1];
                break;
            }
        }

        if ( !var_4.size )
        {
            _unknown_1084();
            wait 0.5;
            continue;
        }

        var_6 = [];

        for ( var_1 = 0; var_1 < var_4.size; var_1++ )
        {
            var_7 = var_4[var_1];
            var_8 = var_7._ID26012;
            var_9 = var_7._ID740;
            var_10 = _func_11A( ( var_9[0], var_9[1], var_9[2] ) - ( var_8[0], var_8[1], var_8[2] ) );
            var_11 = ( 0, var_10[1], 0 );
            var_12 = _func_11F( var_11 );
            var_10 = _func_119( var_9 - level._ID794._ID740 );
            var_13 = _func_0FB( var_12, var_10 );

            if ( var_13 < 0.85 )
                continue;

            var_6[var_6.size] = var_7;
        }

        if ( !var_6.size )
        {
            _unknown_10F9();
            wait 0.5;
            continue;
        }

        var_14 = _func_0F3( level._ID794._ID740, var_6[0]._ID740 );
        var_15 = var_6[0];

        for ( var_1 = 1; var_1 < var_6.size; var_1++ )
        {
            var_16 = _func_0F3( level._ID794._ID740, var_6[var_1]._ID740 );

            if ( var_16 > var_14 )
                continue;

            var_15 = var_6[var_1];
            var_14 = var_16;
        }

        _unknown_1148( var_15 );
        wait 3;
    }
}

_ID14892()
{
    _func_034( "cl_freemove", "0" );
}

_ID32752( var_0 )
{
    _func_034( "cl_freemove", "2" );
}

_ID2977()
{
    for (;;)
    {
        if ( _func_039( "angles", "0" ) == "1" )
            _func_034( "angles", "0" );

        wait 1;
    }
}

_ID9840()
{
    waitframe;

    for ( var_0 = 0; var_0 < 50; var_0++ )
    {
        if ( !_func_02F( level._ID9839[var_0] ) )
            continue;

        var_1 = level._ID9839[var_0];

        for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        {
            var_3 = var_1[var_2];

            if ( _func_02F( var_3._ID39050 ) )
                continue;
        }
    }
}

_ID21982()
{

}

_ID41537()
{
    _func_14E( "defaultweapon" );

    for (;;)
    {
        _unknown_1201();
        wait 0.25;
    }
}

_ID39738()
{
    var_0 = _func_03B( "scr_requiredMapAspectRatio", 1 );

    if ( !_func_02F( level._ID23671 ) )
    {
        _func_034( "scr_minimap_corner_targetname", "minimap_corner" );
        level._ID23671 = "minimap_corner";
    }

    if ( !_func_02F( level._ID23672 ) )
    {
        _func_034( "scr_minimap_height", "0" );
        level._ID23672 = 0;
    }

    var_1 = _func_03B( "scr_minimap_height" );
    var_2 = _func_039( "scr_minimap_corner_targetname" );

    if ( var_1 != level._ID23672 || var_2 != level._ID23671 )
    {
        if ( _func_02F( level._ID23674 ) )
        {
            level._ID23675 _meth_8055();
            level._ID23674 _meth_80B7();
            level notify( "end_draw_map_bounds" );
        }

        if ( var_1 > 0 )
        {
            level._ID23672 = var_1;
            level._ID23671 = var_2;
            var_3 = level._ID794;
            var_4 = _func_1A2( var_2, "targetname" );

            if ( var_4.size == 2 )
            {
                var_5 = var_4[0]._ID740 + var_4[1]._ID740;
                var_5 = ( var_5[0] * 0.5, var_5[1] * 0.5, var_5[2] * 0.5 );
                var_6 = ( var_4[0]._ID740[0], var_4[0]._ID740[1], var_5[2] );
                var_7 = ( var_4[0]._ID740[0], var_4[0]._ID740[1], var_5[2] );

                if ( var_4[1]._ID740[0] > var_4[0]._ID740[0] )
                    var_6 = ( var_4[1]._ID740[0], var_6[1], var_6[2] );
                else
                    var_7 = ( var_4[1]._ID740[0], var_7[1], var_7[2] );

                if ( var_4[1]._ID740[1] > var_4[0]._ID740[1] )
                    var_6 = ( var_6[0], var_4[1]._ID740[1], var_6[2] );
                else
                    var_7 = ( var_7[0], var_4[1]._ID740[1], var_7[2] );

                var_8 = var_6 - var_5;
                var_5 = ( var_5[0], var_5[1], var_5[2] + var_1 );
                var_9 = _func_06A( "script_origin", var_3._ID740 );
                var_10 = ( _func_0BC( _func_096() ), _func_0BB( _func_096() ), 0 );
                var_11 = ( var_10[1], 0 - var_10[0], 0 );
                var_12 = _func_0FB( var_10, var_8 );

                if ( var_12 < 0 )
                    var_12 = 0 - var_12;

                var_13 = _func_0FB( var_11, var_8 );

                if ( var_13 < 0 )
                    var_13 = 0 - var_13;

                if ( var_0 > 0 )
                {
                    var_14 = var_13 / var_12;

                    if ( var_14 < var_0 )
                    {
                        var_15 = var_0 / var_14;
                        var_13 *= var_15;
                        var_16 = _unknown_14BA( var_11, _func_0FB( var_11, var_6 - var_5 ) * var_15 - 1 );
                        var_7 -= var_16;
                        var_6 += var_16;
                    }
                    else
                    {
                        var_15 = var_14 / var_0;
                        var_12 *= var_15;
                        var_16 = _unknown_14DF( var_10, _func_0FB( var_10, var_6 - var_5 ) * var_15 - 1 );
                        var_7 -= var_16;
                        var_6 += var_16;
                    }
                }

                if ( level._ID8534 )
                {
                    var_17 = 1.77778;
                    var_18 = 2 * _func_0C0( var_13 * 0.8 / var_1 );
                    var_19 = 2 * _func_0C0( var_12 * var_17 * 0.8 / var_1 );
                }
                else
                {
                    var_17 = 1.33333;
                    var_18 = 2 * _func_0C0( var_13 * 1.05 / var_1 );
                    var_19 = 2 * _func_0C0( var_12 * var_17 * 1.05 / var_1 );
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

                var_3 _meth_8086( var_9 );
                var_9._ID740 = var_5 + ( 0, 0, -62 );
                var_9._ID65 = ( 90, _func_096(), 0 );
                var_3 _meth_8319( "defaultweapon" );
                _func_0DB( "cg_fov", var_20 );
                level._ID23675 = var_3;
                level._ID23674 = var_9;
                thread _unknown_15A0( var_5, var_7, var_6 );
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
    var_0 = _func_1A2( "minimap_line", "script_noteworthy" );
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_1[var_2] = var_0[var_2] _unknown_159F();

    return var_1;
}

_ID16172()
{
    var_0 = [];
    var_1 = self;

    while ( _func_02F( var_1 ) )
    {
        var_0[var_0.size] = var_1;

        if ( !_func_02F( var_1 ) || !_func_02F( var_1._ID1191 ) )
            break;

        var_1 = _func_1A1( var_1._ID1191, "targetname" );

        if ( _func_02F( var_1 ) && var_1 == var_0[0] )
        {
            var_0[var_0.size] = var_1;
            break;
        }
    }

    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        var_2[var_3] = var_0[var_3]._ID740;

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
    var_4 = _func_0F6( var_1 - var_2 );
    var_5 = var_1 - var_0;
    var_5 = _func_119( ( var_5[0], var_5[1], 0 ) );
    var_1 += _unknown_166F( var_5, var_4 * 1 / 800 * 0 );
    var_6 = var_2 - var_0;
    var_6 = _func_119( ( var_6[0], var_6[1], 0 ) );
    var_2 += _unknown_168C( var_6, var_4 * 1 / 800 * 0 );
    var_7 = ( _func_0BC( _func_096() ), _func_0BB( _func_096() ), 0 );
    var_8 = var_2 - var_1;
    var_9 = _unknown_16A7( var_7, _func_0FB( var_8, var_7 ) );
    var_10 = _unknown_16B3( var_7, _func_0C3( _func_0FB( var_8, var_7 ) ) );
    var_11 = var_1;
    var_12 = var_1 + var_9;
    var_13 = var_2;
    var_14 = var_2 - var_9;
    var_15 = _unknown_16CE( var_1 + var_2, 0.5 ) + _unknown_16D7( var_10, 0.51 );
    var_16 = var_4 * 0.003;
    var_17 = _unknown_16B8();

    for (;;)
    {
        _ID42237::_ID3315( var_17, _ID42237::_ID28148 );
        wait 0.05;
    }
}

_ID20815( var_0 )
{
    var_1 = _func_119( var_0 - self _meth_809E() );
    var_2 = _func_119( var_0 - ( 0, 0, 24 ) - self _meth_809E() );
    var_3 = _func_0FB( var_1, var_2 );
    var_4 = _func_11F( self _meth_8346() );
    var_5 = _func_0FB( var_4, var_1 );

    if ( var_5 > var_3 )
        return 1;
    else
        return 0;
}

_ID9866()
{
    wait 0.05;
    var_0 = _func_0DE();
    var_1 = [];
    var_1["axis"] = [];
    var_1["allies"] = [];
    var_1["neutral"] = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];

        if ( !_func_02F( var_3._ID9487 ) )
            continue;

        var_1[var_3._ID1194][var_3._ID9487] = 1;
        var_4 = ( 1, 1, 1 );

        if ( _func_02F( var_3._ID31209 ) )
            var_4 = level._ID8247[var_3._ID31209];

        var_5 = var_3._ID9487;

        if ( _func_02F( var_3._ID5035 ) && var_3._ID5035 == 1 )
            var_5 += " (c)";

        var_3 _unknown_1894();
    }

    _unknown_1849( var_1, "allies" );
    _unknown_1852( var_1, "axis" );
}

_ID11693( var_0, var_1 )
{
    var_2 = _func_1D9( var_0[var_1] );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = ( 1, 1, 1 );
        var_4 = level._ID8247[_func_127( var_2[var_3], 0, 1 )];

        if ( _func_02F( level._ID8282[var_1][var_2[var_3]] ) )
        {
            var_5 = level._ID8282[var_1][var_2[var_3]];

            for ( var_6 = 0; var_6 < var_5.size; var_6++ )
            {
                var_7 = "";

                if ( _func_02F( var_5[var_6]._ID170 ) && var_5[var_6]._ID170 == "info_volume" )
                    var_7 = "V-" + var_2[var_3];
                else
                    var_7 = "N-" + var_2[var_3];

                if ( _func_02F( var_5[var_6]._ID8262 ) && var_5[var_6]._ID8262 == level._ID794 )
                    var_7 += " (p)";
            }
        }
    }
}

_ID16020()
{
    if ( self._ID1194 == "allies" )
    {
        if ( _func_02F( self._ID700 ) && _func_02F( self._ID700._ID31096 ) )
            return self._ID700._ID31096;

        var_0 = self _meth_81B6();

        if ( _func_02F( var_0 ) && _func_02F( var_0._ID31096 ) )
            return var_0._ID31096;
    }

    if ( self._ID1194 == "axis" )
    {
        if ( _func_02F( self._ID700 ) && _func_02F( self._ID700._ID31097 ) )
            return self._ID700._ID31097;

        var_0 = self _meth_81B6();

        if ( _func_02F( var_0 ) && _func_02F( var_0._ID31097 ) )
            return var_0._ID31097;
    }
}

_ID39060()
{
    var_0 = ( 0, 0, 0 );

    if ( _func_02F( self._ID700 ) )
        var_0 = self._ID700._ID740;
    else if ( _func_02F( self _meth_81B6() ) )
    {
        var_1 = self _meth_81B6();
        var_0 = var_1._ID740;
    }
    else
        return;

    if ( !_func_02F( self._ID31209 ) )
        return;

    var_2 = _unknown_19D2();

    if ( !_func_02F( var_2 ) )
        return;

    if ( !_func_125( var_2, self._ID31209 ) )
        return;
}

_ID14693()
{
    if ( _func_039( "depth_close" ) == "" )
        _func_034( "depth_close", "0" );

    if ( _func_039( "depth_far" ) == "" )
        _func_034( "depth_far", "1500" );

    var_0 = _func_03A( "depth_close" );
    var_1 = _func_03A( "depth_far" );
    _func_188( var_0, var_1, 1, 1, 1, 1, 0 );
}

_ID10043()
{
    level._ID21862 = _func_03D();
    thread _unknown_1A93();
}

_ID10044()
{

}

_ID11118( var_0, var_1 )
{
    if ( self._ID1194 == var_0._ID1194 )
        return;

    var_2 = 0;
    var_2 += self._ID1204;
    var_3 = 0;
    var_3 += var_0._ID1204;
    var_4 = undefined;

    if ( _func_02F( var_1 ) )
    {
        var_4 = self _meth_8184();

        if ( _func_02F( var_4 ) )
        {
            var_3 += _func_10E( var_1, var_4 );
            var_2 += _func_10E( var_4, var_1 );
        }
    }

    if ( var_0._ID511 || var_3 < -900000 )
        var_3 = "Ignore";

    if ( self._ID511 || var_2 < -900000 )
        var_2 = "Ignore";

    var_5 = 20;
    var_6 = ( 1, 0.5, 0.2 );
    var_7 = ( 0.2, 0.5, 1 );
    var_8 = !_func_1B3( self ) && self._ID744;

    for ( var_9 = 0; var_9 <= var_5; var_9++ )
    {
        if ( _func_02F( var_1 ) )
        {

        }

        if ( _func_02F( var_4 ) )
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
        _unknown_1B87();
    }
}

_ID11691()
{
    level endon( "updated_color_friendlies" );
    var_0 = _func_1D9( level._ID9864 );
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
        level._ID9865[var_4] _meth_808F();

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
            var_11 = _func_1AF();
            var_11._ID1331 = var_6 + 25 * var_10;
            var_11._ID1339 = var_7;
            var_11 _meth_80D3( "white", 16, 16 );
            var_11._ID44 = "left";
            var_11._ID45 = "bottom";
            var_11._ID55 = 1;
            var_11._ID196 = var_3[var_2[var_4]];
            level._ID9865[level._ID9865.size] = var_11;
        }

        var_7 += var_9;
    }
}

_ID27939()
{
    for (;;)
    {
        if ( _func_02F( level._ID794._ID700 ) )
        {

        }

        wait 0.05;
    }
}

_ID11757()
{
    if ( _func_1A7( self._ID8262 ) )
        return;
}

_ID10023()
{
    for (;;)
    {
        var_0 = _func_0DE();
        _ID42237::_ID3350( var_0, ::_unknown_1D36 );
        wait 0.05;
    }
}

_ID40468()
{
    if ( !_func_02F( self._ID451 ) )
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

            if ( _func_02F( var_2 ) )
                _unknown_1DE0( var_2 );
        }

        wait 0.05;
    }
}

_ID11692( var_0 )
{
    var_1 = level._ID3363["allies"][var_0];
    _ID42237::_ID3350( var_1, ::_unknown_1DC8 );
}

_ID1897( var_0, var_1, var_2 )
{
    var_3 = _func_1AF();
    var_3._ID44 = "left";
    var_3._ID45 = "middle";
    var_3._ID1331 = var_0;
    var_3._ID1339 = var_1;
    var_3._ID55 = 1;
    var_3._ID393 = 1;
    var_3._ID578 = var_2;
    level._ID3207[level._ID3207.size] = var_3;
    return var_3;
}

_ID15550( var_0 )
{
    if ( !_func_02F( level._ID3205[var_0._ID3189] ) )
        return;

    if ( !_func_02F( level._ID3205[var_0._ID3189][var_0._ID3183] ) )
        return;

    if ( !_func_02F( level._ID3205[var_0._ID3189][var_0._ID3183][var_0._ID24954] ) )
        return;

    return level._ID3205[var_0._ID3189][var_0._ID3183][var_0._ID24954]["soundalias"];
}

_ID20529( var_0, var_1, var_2 )
{
    return _func_02F( level._ID3205[var_0][var_1][var_2]["created_by_animSound"] );
}

_ID11076()
{
    if ( _func_0F3( level._ID794._ID740, self._ID740 ) > 1500 )
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
    if ( !_func_02F( level._ID3211 ) )
        return;

    if ( !_func_02F( level._ID3211._ID3213[var_1] ) )
        return;

    var_2 = level._ID3211._ID3213[var_1];
    var_3 = _unknown_1EFC( var_2 );

    if ( !_func_02F( var_3 ) || _unknown_1F2B( var_2._ID3189, var_2._ID3183, var_2._ID24954 ) )
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
    if ( !_func_02F( var_2 ) )
        var_2 = ( 1, 1, 1 );

    if ( _func_02F( var_5 ) )
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

    if ( !_func_02F( var_3 ) )
        var_3 = 1;

    if ( !_func_02F( var_4 ) )
        var_4 = 1;

    for (;;)
        wait 0.05;
}

_ID8404()
{
    if ( _func_039( "credits_active" ) == "1" )
    {
        wait 7;
        _func_034( "credits_active", "0" );
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
    if ( !_func_02F( level._ID7323 ) )
        level._ID7323 = -1;

    if ( level._ID7323 == var_0 )
        return;

    _unknown_20B0( var_0 );

    if ( !_func_02F( level._ID7324 ) )
        return;

    level._ID7323 = var_0;

    if ( !_func_02F( level._ID7322 ) )
        level._ID7322 = level._ID7324 _ID42237::_ID35164();

    thread _unknown_20E4( level._ID7324 );
}

_ID7335( var_0 )
{
    level notify( "new_chasecam" );
    level endon( "new_chasecam" );
    var_0 endon( "death" );
    level._ID794 _meth_8055();
    level._ID794 _meth_8087( level._ID7322, "tag_origin", 2, 0.5, 0.5 );
    wait 2;
    level._ID794 _meth_8084( level._ID7322, "tag_origin", 1, 180, 180, 180, 180 );

    for (;;)
    {
        wait 0.2;

        if ( !_func_02F( level._ID7324 ) )
            return;

        var_1 = level._ID7324._ID740;
        var_2 = level._ID7324._ID65;
        var_3 = _func_11F( var_2 );
        var_3 *= 200;
        var_1 += var_3;
        var_2 = level._ID794 _meth_8346();
        var_3 = _func_11F( var_2 );
        var_3 *= -200;
        level._ID7322 _meth_82B8( var_1 + var_3, 0.2 );
    }
}

_ID40473()
{
    var_0 = level._ID9242;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_02F( var_1._ID22654 ) )
        {

        }
    }

    var_clear_2
    var_clear_0
}

_ID1903( var_0, var_1 )
{

}

_ID28578( var_0 )
{
    if ( !_func_02F( level._ID40711 ) )
        level._ID40711 = 9500;

    level._ID40711++;
    var_1 = "bridge_helpers";
    _unknown_2206( "origin", self._ID740[0] + " " + self._ID740[1] + " " + self._ID740[2] );
    _unknown_2226( "angles", self._ID65[0] + " " + self._ID65[1] + " " + self._ID65[2] );
    _unknown_2232( "targetname", "helper_model" );
    _unknown_223C( "model", self._ID669 );
    _unknown_2248( "classname", "script_model" );
    _unknown_2254( "spawnflags", "4" );
    _unknown_2260( "_color", "0.443137 0.443137 1.000000" );

    if ( _func_02F( var_0 ) )
        _unknown_226E( "script_noteworthy", var_0 );
}

_ID11700( var_0 )
{

}

_ID11701()
{
    var_0 = level._ID794 _meth_8346();
    var_1 = _func_11F( var_0 );
    var_2 = level._ID794 _meth_80AF();
    var_3 = self _meth_80AF();
    var_4 = _func_11A( var_3 - var_2 );
    var_5 = _func_11F( var_4 );
    var_6 = _func_0FB( var_5, var_1 );
}

_ID20137()
{
    var_0 = _func_1A2( "explodable_barrel", "targetname" );
    var_0 = _ID42237::_ID3296( var_0, _func_1A2( "explodable_barrel", "script_noteworthy" ) );

    if ( !var_0.size )
        return;

    var_1 = var_0;

    for ( var_5 = _func_1DA( var_1 ); _func_02F( var_5 ); var_5 = _func_1BF( var_1, var_5 ) )
    {
        var_2 = var_1[var_5];
        var_2._ID279 = "explodable_barrel";
        var_3 = var_2._ID669 + "2";
        _func_14C( var_3 );
        var_2 _meth_80B8( var_3 );

        if ( _func_02F( var_2._ID1191 ) )
        {
            var_4 = _func_1A1( var_2._ID1191, "targetname" );

            if ( _func_02F( var_4 ) )
                var_4._ID31133 = "pre";

            var_2._ID1193 = "destructible_toy";
        }
    }

    var_clear_3
    var_clear_0
}

_ID16611( var_0 )
{
    _ID42237::_ID11703( var_0, 1 );
}

_ID38157( var_0 )
{
    var_1 = _unknown_239A( var_0 );
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
