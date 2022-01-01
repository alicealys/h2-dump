// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID17529( var_0 )
{
    self endon( "death" );
    self notify( "end_mg_behavior" );
    self endon( "end_mg_behavior" );
    self._ID6732 = 1;
    self._ID41300 = 0;

    if ( !_ID42331::_ID39915( var_0 ) )
    {
        self notify( "continue_cover_script" );
        return;
    }

    self._ID21799 = undefined;
    thread _ID29318();
    var_1 = anglestoforward( var_0._ID65 );
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    thread _ID37284( var_2 );
    var_2._ID740 = var_0._ID740 + var_1 * 500;

    if ( isdefined( self._ID21799 ) )
        var_2._ID740 = self._ID21799;

    var_0 settargetentity( var_2 );
    var_3 = undefined;

    for (;;)
    {
        if ( !isalive( self._ID9442 ) )
        {
            _ID36487();
            self waittill( "new_enemy" );
        }

        _ID35756();
        _ID33759( var_2 );

        if ( !isalive( self._ID9442 ) )
            continue;

        if ( self cansee( self._ID9442 ) )
            continue;

        self waittill( "saw_enemy" );
    }
}

_ID37284( var_0 )
{
    _ID42237::_ID41098( "death", "end_mg_behavior" );
    var_0 delete();
}

_ID33759( var_0 )
{
    self endon( "death" );
    self endon( "new_enemy" );
    self._ID9442 endon( "death" );
    var_1 = self._ID9442;

    while ( self cansee( var_1 ) )
    {
        var_2 = vectortoangles( var_1 geteye() - var_0._ID740 );
        var_2 = anglestoforward( var_2 );
        var_0 moveto( var_0._ID740 + var_2 * 12, 0.1 );
        wait 0.1;
    }

    if ( isplayernumber( var_1 ) )
    {
        self endon( "saw_enemy" );
        var_3 = var_1 geteye();
        var_2 = vectortoangles( var_3 - var_0._ID740 );
        var_2 = anglestoforward( var_2 );
        var_4 = 150;
        var_5 = distance( var_0._ID740, self._ID21799 ) / var_4;

        if ( var_5 > 0 )
        {
            var_0 moveto( self._ID21799, var_5 );
            wait(var_5);
        }

        var_6 = var_0._ID740 + var_2 * 180;
        var_7 = _ID16003( self geteye(), var_0._ID740, var_6 );

        if ( !isdefined( var_7 ) )
            var_7 = var_0._ID740;

        var_0 moveto( var_0._ID740 + var_2 * 80 + ( 0, 0, randomfloatrange( 15, 50 ) * -1 ), 3, 1, 1 );
        wait 3.5;
        var_0 moveto( var_7 + var_2 * -20, 3, 1, 1 );
    }

    wait(randomfloatrange( 2.5, 4 ));
    _ID36487();
}

_ID32292( var_0 )
{
    if ( var_0 )
    {
        self._ID6732 = 1;

        if ( self._ID41300 )
            self._ID39235 notify( "startfiring" );
    }
    else
    {
        self._ID6732 = 0;
        self._ID39235 notify( "stopfiring" );
    }
}

_ID36487()
{
    self._ID41300 = 0;
    self._ID39235 notify( "stopfiring" );
}

_ID35756()
{
    self._ID41300 = 1;

    if ( self._ID6732 )
        self._ID39235 notify( "startfiring" );
}

_ID9167()
{
    if ( isdefined( level._ID23492 ) )
    {
        level._ID23492[level._ID23492.size] = self;
        return;
    }

    level._ID23492 = [];
    level._ID23492[level._ID23492.size] = self;
    waitframe;
    var_0 = spawnstruct();
    _ID42237::_ID3350( level._ID23492, ::_ID23491, var_0 );
    var_1 = level._ID23492;
    level._ID23492 = undefined;
    var_0 waittill( "gunner_died" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !isalive( var_1[var_2] ) )
            continue;

        var_1[var_2] notify( "stop_using_built_in_burst_fire" );
        var_1[var_2] thread _ID34932();
    }
}

_ID23491( var_0 )
{
    self waittill( "death" );
    var_0 notify( "gunner_died" );
}

_ID23511( var_0 )
{
    wait 1;
    level notify( "new_mg_firing_team" + var_0[0]._ID922 );
    level endon( "new_mg_firing_team" + var_0[0]._ID922 );

    for (;;)
    {
        _ID12211( var_0 );
        _ID34933( var_0 );
    }
}

_ID34933( var_0 )
{
    var_1 = undefined;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !isalive( var_0[var_2] ) )
            continue;

        var_1 = var_0[var_2];
        break;
    }

    if ( !isdefined( var_1 ) )
        return;
}

_ID34932()
{
    self endon( "death" );

    for (;;)
    {
        self._ID39235 startfiring();
        wait(randomfloatrange( 0.3, 0.7 ));
        self._ID39235 stopfiring();
        wait(randomfloatrange( 0.1, 1.1 ));
    }
}

_ID12211( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] endon( "death" );

    var_2 = 0;
    var_3 = 1;

    for (;;)
    {
        if ( isalive( var_0[var_2] ) )
            var_0[var_2] _ID32292( 1 );

        if ( isalive( var_0[var_3] ) )
            var_0[var_3] _ID32292( 0 );

        var_4 = var_2;
        var_2 = var_3;
        var_3 = var_4;
        wait(randomfloatrange( 2.3, 3.5 ));
    }
}

_ID35476( var_0, var_1 )
{
    _ID35756();
    self endon( "death" );
    self endon( "new_enemy" );
    var_1 endon( "death" );

    while ( self cansee( var_1 ) )
    {
        var_2 = vectortoangles( var_1 geteye() - var_0._ID740 );
        var_2 = anglestoforward( var_2 );
        var_0 moveto( var_0._ID740 + var_2 * 10, 0.2 );
        wait 0.2;
    }

    var_2 = vectortoangles( var_1 geteye() - var_0._ID740 );
    var_2 = anglestoforward( var_2 );
    var_3 = 150;
    var_4 = distance( var_0._ID740, self._ID21799 ) / var_3;
    var_0 moveto( self._ID21799, var_4 );
    wait(var_4);
    var_5 = var_0._ID740;
    var_0 moveto( var_0._ID740 + var_2 * 80 + ( 0, 0, -25 ), 3, 1, 1 );
    wait 3.5;
    var_0 moveto( var_5 + var_2 * -20, 3, 1, 1 );
    wait 1;
    _ID36487();
}

_ID16003( var_0, var_1, var_2 )
{
    var_3 = distance( var_1, var_2 ) * 0.05;

    if ( var_3 < 5 )
        var_3 = 5;

    if ( var_3 > 20 )
        var_3 = 20;

    var_4 = var_2 - var_1;
    var_4 = ( var_4[0] / var_3, var_4[1] / var_3, var_4[2] / var_3 );
    var_5 = ( 0, 0, 0 );
    var_6 = undefined;

    for ( var_7 = 0; var_7 < var_3 + 2; var_7++ )
    {
        var_8 = bullettrace( var_0, var_1 + var_5, 0, undefined );

        if ( var_8["fraction"] < 1 )
        {
            var_6 = var_8["position"];
            break;
        }

        var_5 += var_4;
    }

    return var_6;
}

_ID29318()
{
    self endon( "death" );
    self endon( "end_mg_behavior" );
    self._ID9442 = undefined;

    for (;;)
    {
        _ID29322();
        wait 0.05;
    }
}

_ID29322()
{
    if ( !isalive( self._ID322 ) )
        return;

    if ( !self cansee( self._ID322 ) )
        return;

    self._ID21799 = self._ID322 geteye();
    self notify( "saw_enemy" );

    if ( !isalive( self._ID9442 ) || self._ID9442 != self._ID322 )
    {
        self._ID9442 = self._ID322;
        self notify( "new_enemy" );
    }
}
