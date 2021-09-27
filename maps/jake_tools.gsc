// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID9171( var_0, var_1 )
{
    var_2 = _func_1AF();
    var_2._ID1331 = 0;
    var_2._ID1339 = 0;
    var_2 _meth_80D3( var_0, 640, 480 );
    var_2._ID44 = "left";
    var_2._ID45 = "top";
    var_2._ID983 = 1;
    var_2._ID499 = "fullscreen";
    var_2._ID1284 = "fullscreen";
    var_2._ID55 = var_1;
    var_2._ID408 = 1;
    return var_2;
}

_ID18520()
{
    self _meth_805A();
    self _meth_82C9();

    if ( self._ID989 & 1 )
        self _meth_805F();
}

_ID18542( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = _func_1A2( "hide", "script_noteworthy" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        switch ( var_2._ID170 )
        {

        }

        case "trigger_multiple_flag_looking":
        case "trigger_multiple_flag_lookat":
        case "trigger_multiple_breachIcon":
        case "trigger_multiple_flag_set":
        case "trigger_use_touch":
        case "trigger_use":
        case "trigger_multiple":
        case "script_brushmodel":
        case "script_model":
        case "trigger_radius":
        case "script_vehicle":
    }
}

_ID2314( var_0, var_1 )
{
    self endon( "death" );
    var_1 = _func_0C1( var_1 * 1000 );
    var_2 = _func_03D();
    var_3 = _func_03D();

    while ( var_3 < var_2 + var_1 )
    {
        wait 0.05;
        var_3 = _func_03D();
        self notify( var_0 );
    }

    self notify( "ai_notify_complete" );
}

_ID15552( var_0 )
{
    var_1 = [];
    var_2 = self;
    var_3 = 0;

    while ( _func_02F( var_2._ID1191 ) )
    {
        wait 0.05;

        if ( _func_02F( var_2._ID1191 ) )
        {
            switch ( var_0 )
            {

            }

            var_1[var_1.size] = var_2;
            continue;
        }

        break;
        case "ent":
        default:
    }

    if ( var_1.size > 0 )
        return var_1;
    else
        return undefined;
}

_ID40876( var_0, var_1 )
{
    level endon( var_0 );
    wait(var_1);
}

_ID15548( var_0, var_1, var_2 )
{
    if ( _func_02F( var_2 ) )
        var_3 = _func_0DE( var_2 );
    else
        var_3 = _func_0DE();

    var_4 = [];

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        if ( _func_0F3( var_1, self._ID740 ) <= var_0 )
            _ID42237::_ID3293( var_4, var_3[var_5] );
    }

    return var_4;
}

_ID2345( var_0 )
{
    self endon( "death" );

    if ( _func_02F( self ) && _func_1A7( self ) && _ID42407::_ID14508() )
        _ID42407::_ID14510( var_0 );
}

_ID36035( var_0 )
{
    self _meth_81D2( var_0._ID740, var_0._ID65 );
    self _meth_81B2( self._ID740 );
    self _meth_81B1( var_0 );
}

_ID41134( var_0, var_1 )
{
    for (;;)
    {
        if ( _func_0F3( var_0, level._ID794._ID740 ) <= var_1 )
            break;

        wait 0.5;
    }
}

_ID40157( var_0, var_1 )
{
    var_2 = _func_1F2( var_0, "targetname" );
    var_3 = "";

    switch ( var_1 )
    {

    }

    var_4 = _func_1F7( var_3, "plane", "truck", var_2._ID740, var_2._ID65 );

    if ( var_1 == "truck" )
        var_4 _unknown_0379();

    var_4 _meth_8287( var_2 );
    var_4 _meth_8289();
    var_4 _meth_828D( 23, 20 );
    var_4 waittill( "reached_end_node" );
    var_4 _meth_80B7();
    case "bmp":
    case "truck":
    default:
}

_ID38997()
{
    _func_157( level._ID1426["headlight_truck"], self, "tag_headlight_left" );
    _func_157( level._ID1426["headlight_truck"], self, "tag_headlight_right" );
}

_ID32340( var_0, var_1 )
{
    self endon( "death" );

    if ( _func_02F( var_0 ) )
        var_1 = _func_1A1( var_0, "targetname" );

    var_2 = _func_0C8( var_1._ID1191, "targetname" );
    self._ID16983 = var_1;
    self _meth_81B1( var_2 );
    self._ID452 = 0;

    if ( _func_02F( var_2._ID851 ) )
        self._ID452 = var_2._ID851;

    self _meth_81B2( var_1._ID740 );
    self _meth_81B4( var_1 );
}

_ID41155( var_0 )
{
    self endon( "death" );

    while ( !self _meth_80B0( var_0 ) )
        wait 0.05;
}

_ID29745()
{
    self endon( "death" );
    self _meth_81B2( self._ID740 );
    self._ID16983 = undefined;
}

_ID28585( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );

    if ( !_func_02F( var_2 ) )
        var_2 = 0.25;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( !_func_02F( var_1 ) )
    {
        self notify( "stop_3dprint" );
        self endon( "stop_3dprint" );
        self endon( "death" );

        for (;;)
        {
            if ( _func_02F( self ) )
            {

            }

            wait 0.05;
        }
    }
    else
    {
        for (;;)
            wait 0.05;
    }
}

_ID34434()
{
    self endon( "smoke_has_been_thrown" );
    self._ID34444 = 0;

    while ( self._ID34444 == 0 )
    {
        wait 0.05;
        var_0 = _func_1A2( "grenade", "classname" );

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            if ( var_0[var_1]._ID669 == "projectile_us_smoke_grenade" )
            {
                if ( var_0[var_1] _meth_80B0( self ) )
                {
                    self._ID34444 = 1;
                    self notify( "smoke_has_been_thrown" );
                }
            }
        }
    }
}

_ID10760( var_0 )
{
    self endon( "death" );
    _ID42407::_ID10805( var_0 );
}

_ID38744( var_0 )
{
    var_1 = _func_1A2( var_0, "targetname" );

    if ( var_1.size == 1 )
        _unknown_0555( var_0 );
    else
    {
        for ( var_2 = 0; var_2 < var_1.size; var_2++ )
            var_1[var_2] thread _unknown_0558( var_1 );

        var_1[0] waittill( "trigger" );
    }
}

_ID38745( var_0 )
{
    self waittill( "trigger" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_0[var_1] notify( "trigger" );
        var_0[var_1] _ID42237::_ID38863();
    }
}

_ID38950( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    var_1 waittill( "trigger" );
    var_1 _ID42237::_ID38863();
}

_ID38942( var_0, var_1, var_2 )
{
    var_3 = _func_1A2( var_0, var_1 );

    if ( var_2 == 1 )
        _ID42237::_ID3350( var_3, _ID42237::_ID38865 );
    else
        _ID42237::_ID3350( var_3, _ID42237::_ID38863 );
}

_ID38931( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    var_1 notify( "trigger",  level._ID794  );
    var_1 _ID42237::_ID38863();
}

_ID1706()
{

}

_ID22613( var_0 )
{
    var_1 = _func_11A( self._ID740 - var_0._ID740 );
    self _meth_8175( var_1[1] );
}

_ID32474( var_0 )
{
    if ( !_func_02F( self._ID25531 ) )
        self._ID25531 = self._ID1204;

    self._ID1204 = var_0;
}

_ID32520( var_0 )
{
    if ( !_func_02F( self._ID25538 ) )
        self._ID25538 = self._ID1298;

    self._ID1298 = var_0;
}

_ID29763()
{
    if ( _func_02F( self._ID25538 ) )
        self._ID1298 = self._ID25538;

    self._ID25538 = undefined;
}

_ID32345( var_0 )
{
    self._ID25512 = self._ID486;
    self._ID486 = var_0;
}

_ID29747()
{
    if ( _func_02F( self._ID25512 ) )
        self._ID486 = self._ID25512;
}

_ID32218( var_0 )
{
    if ( !_func_02F( self._ID25496 ) )
        self._ID25496 = self._ID3189;

    self._ID3189 = var_0;
}

_ID29733()
{
    if ( _func_02F( self._ID25496 ) )
        self._ID3189 = self._ID25496;

    self._ID25496 = undefined;
}

_ID32373( var_0 )
{
    if ( !_func_02F( self._ID25520 ) )
        self._ID25520 = self._ID628;

    self._ID628 = var_0;
}

_ID29749()
{
    if ( _func_02F( self._ID25520 ) )
        self._ID628 = self._ID25520;

    self._ID25520 = undefined;
}

_ID32475( var_0 )
{
    if ( !_func_10D( var_0 ) )
    {

    }

    if ( !_func_02F( self._ID25532 ) )
        self._ID25532 = self._ID37673;

    self._ID37673 = var_0;
    self _meth_8183( var_0 );
}

_ID29756()
{
    if ( _func_02F( self._ID25532 ) )
    {
        self._ID37673 = self._ID25532;
        self _meth_8183( self._ID25532 );

        if ( !_func_10D( self._ID25532 ) )
        {

        }
    }
    else
    {
        self._ID37673 = undefined;
        self _meth_8183();
    }

    self._ID25532 = undefined;
}

_ID32642( var_0 )
{
    if ( !_func_02F( self._ID25510 ) )
        self._ID25510 = self._ID452;

    self._ID452 = var_0;
}

_ID29775()
{
    if ( _func_02F( self._ID25510 ) )
        self._ID452 = self._ID25510;

    self._ID25510 = undefined;
}

_ID32665( var_0 )
{
    if ( !_func_02F( self._ID25516 ) )
        self._ID25516 = self._ID525;

    self._ID525 = var_0;
}

_ID29776()
{
    if ( _func_02F( self._ID25516 ) )
        self._ID525 = self._ID25516;

    self._ID25516 = undefined;
}

_ID32177( var_0 )
{
    if ( !_func_02F( self._ID25493 ) )
        self._ID25493 = self._ID4867;

    self._ID4867 = var_0;
}

_ID29730()
{
    if ( _func_02F( self._ID25493 ) )
        self._ID4867 = self._ID25493;

    self._ID25493 = undefined;
}

_ID15605( var_0 )
{
    var_1 = undefined;

    if ( !_func_02F( var_0 ) )
        var_2 = level._ID794 _meth_809C();
    else
        var_2 = var_0 _meth_809C();

    if ( _func_02F( level._ID13290 ) )
        var_1 = _ID42407::_ID15602( var_2, "allies", level._ID13290 );
    else
        var_1 = _ID42407::_ID15601( var_2, "allies" );

    return var_1;
}

_ID15606()
{
    var_0 = _ID42407::_ID15601( level._ID794 _meth_809C(), "axis" );
    return var_0;
}

_ID17474( var_0, var_1 )
{
    var_2 = _func_0C9( var_1, "targetname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( _func_02F( var_2[var_3] ) )
            var_0[var_3] _meth_81D1( var_2[var_3]._ID740 );
    }
}

_ID16097( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = _func_1A1( var_1, "targetname" );

    if ( var_0 == "all" )
        var_3 = _func_0DE();
    else
        var_3 = _func_0DE( var_0 );

    var_4 = [];

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        if ( var_3[var_5] _meth_80B0( var_2 ) )
            var_4[var_4.size] = var_3[var_5];
    }

    return var_4;
}

_ID25172( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_3 ) )
    {
        var_3 = [];
        var_3[0] = level._ID28543;
    }

    var_4 = _func_1A1( var_0, "targetname" );

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    var_5 = undefined;

    if ( var_1 == "all" )
        var_5 = _func_0DE();
    else
        var_5 = _func_0DE( var_1 );

    if ( _func_02F( var_3 ) )
    {
        for ( var_6 = 0; var_6 < var_3.size; var_6++ )
        {
            if ( _ID42407::_ID20542( var_5, var_3[var_6] ) )
                var_5 = _ID42237::_ID3321( var_5, var_3[var_6] );
        }
    }

    for ( var_6 = 0; var_6 < var_5.size; var_6++ )
    {
        if ( var_5[var_6] _meth_80B0( var_4 ) )
        {
            var_5[var_6] _unknown_09BE( 0 );

            if ( var_2 == 1 )
            {
                var_5[var_6] _meth_8058( ( 0, 0, 0 ) );
                continue;
            }

            var_5[var_6] _meth_80B7();
        }
    }
}

_ID16244( var_0, var_1 )
{
    var_2 = undefined;

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( _func_02F( var_0[var_3]._ID922 ) && var_0[var_3]._ID922 == var_1 )
            var_2 = var_0[var_3];
    }

    return var_2;
}

_ID16245( var_0, var_1 )
{
    var_2 = [];

    if ( _func_02F( var_1 ) )
    {
        for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        {
            if ( _func_02F( var_0[var_3]._ID922 ) && var_0[var_3]._ID922 == var_1 )
                var_2[var_2.size] = var_0[var_3];
        }

        jump loc_9F6
    }

    if ( var_2.size > 0 )
        return var_2;
    else
        return undefined;
}

_ID17031( var_0 )
{
    self endon( "death" );
    var_1 = _func_0C8( var_0, "targetname" );
    _unknown_0965( var_1._ID851 );
    self _meth_81B1( var_1 );
    self waittill( "goal" );
    _unknown_0979();
}

_ID17032( var_0 )
{
    if ( !_func_02F( self ) )
        return;

    if ( !_func_1A7( self ) )
        return;

    self endon( "death" );
    var_1 = _func_0C8( var_0, "targetname" );
    self _meth_81B1( var_1 );
    _unknown_099D( var_1._ID851 );
    self waittill( "goal" );
    self _meth_80B7();
}

_ID17033( var_0 )
{
    if ( !_func_02F( self ) )
        return;

    if ( !_func_1A7( self ) )
        return;

    self endon( "death" );
    var_1 = _func_0C8( var_0, "targetname" );
    self _meth_81B1( var_1 );
    _unknown_09D0( var_1._ID851 );
    self waittill( "goal" );
    _unknown_09B2( "guy" );
    self waittill( "stop_waiting_at_node" );
    _unknown_09ED();
}

_ID14802( var_0 )
{
    self endon( "death" );
    var_1 = _func_0C8( var_0, "targetname" );
    self _meth_81AF( 1 );
    self _meth_81B1( var_1 );
    self waittill( "goal" );
    self _meth_81AF( 0 );
    _unknown_0A16();
}

_ID32759( var_0 )
{
    if ( var_0 == "all" )
        self _meth_81D6( "stand", "crouch", "prone" );
    else
        self _meth_81D6( var_0 );
}

_ID20395( var_0 )
{
    if ( var_0 == 0 )
    {
        if ( _func_02F( self._ID22746 ) )
            _ID42407::_ID36519();
    }
    else if ( !_func_02F( self._ID22746 ) )
        thread _ID42407::_ID22746();

    self._ID7._ID11043 = var_0;
}

_ID21352()
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    if ( !_func_1A7( self ) )
        return;

    self._ID49 = 1;
    _unknown_0B72( 0 );
    self _meth_8058();
}

_ID17037( var_0 )
{
    self endon( "death" );
    var_1 = _func_1A1( var_0, "targetname" );
    var_2 = _func_0C8( var_1._ID1191, "targetname" );
    self _meth_81B1( var_2 );
    self _meth_81B4( var_1 );
    self._ID452 = var_2._ID851;
}

_ID1715()
{

}

_ID49620( var_0, var_1 )
{
    if ( _func_02F( var_1 ) )
        var_2 = var_0 _meth_809B();
    else
        var_2 = var_0 _meth_809A();

    _ID42407::_ID35060( var_2 );
    return var_2;
}

_ID1707()
{

}

_ID11599( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( var_1 == 1 )
        self _meth_80A1( level._ID30909["snd_wood_door_kick"] );

    if ( self._ID170 == "script_brushmodel" )
        var_3 = _func_1A1( self._ID1191, "targetname" );
    else
    {
        var_4 = _func_1A1( self._ID1191, "targetname" );
        var_3 = _func_1A1( var_4._ID31273, "script_linkname" );
    }

    switch ( var_0 )
    {

    }

    var_5 = var_3._ID31170;
    _ID42234::_ID13611( var_5 );
    case "kicked":
    case "explosive":
    default:
}

_ID11591( var_0 )
{
    if ( self._ID170 == "script_brushmodel" )
        self _meth_805F();
    else
    {
        var_1 = _func_1A1( self._ID1191, "targetname" );
        var_1 _meth_805A();
        var_1 _meth_82C9();
        var_1 _meth_805F();
    }
}

_ID11592()
{
    var_0 = _func_11F( self._ID65 );
    var_1 = ( var_0[0] * 20, var_0[1] * 20, var_0[2] * 20 );
    self _meth_82B8( self._ID740 + var_1, 0.5, 0, 0.5 );
    self _meth_82C0( 90, 0.45, 0.4 );
    wait 0.449;
    self _meth_82C0( -4, 0.2, 0, 0.2 );
    wait 0.2;
    self _meth_82C0( 4, 0.15, 0.15 );
}

_ID9861( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = 16;
    var_7 = 360 / var_6;
    var_8 = [];

    for ( var_9 = 0; var_9 < var_6; var_9++ )
    {
        var_10 = var_7 * var_9;
        var_11 = _func_0BC( var_10 ) * var_1;
        var_12 = _func_0BB( var_10 ) * var_1;
        var_13 = var_0[0] + var_11;
        var_14 = var_0[1] + var_12;
        var_15 = var_0[2];
        var_8[var_8.size] = ( var_13, var_14, var_15 );
    }

    if ( _func_02F( var_4 ) )
        wait(var_4);

    thread _unknown_0E49( var_8, var_2, var_3, var_5, var_0 );
}

_ID9862( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( !_func_02F( var_4 ) )
        var_3 = 0;

    for ( var_5 = 0; var_5 < var_0.size; var_5++ )
    {
        var_6 = var_0[var_5];

        if ( var_5 + 1 >= var_0.size )
            var_7 = var_0[0];
        else
            var_7 = var_0[var_5 + 1];

        thread _unknown_0EA9( var_6, var_7, var_1, var_2 );

        if ( var_3 )
            thread _unknown_0EB4( var_4, var_6, var_1, var_2 );
    }
}

_ID9902( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = ( 1, 1, 1 );

    for ( var_4 = 0; var_4 < var_2 * 20; var_4++ )
        wait 0.05;
}
