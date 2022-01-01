// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID32735( var_0 )
{
    if ( isdefined( self._ID26248 ) && self._ID26248 == var_0 )
        return;

    if ( isdefined( self._ID26248 ) )
        self._ID26248 _ID29596( self );

    self._ID26248 = var_0;
    self._ID26248 _ID2011( self );

    if ( isdefined( self._ID28188 ) )
        _ID32753( self._ID28188, self._ID29453, self._ID41890, self._ID41917 );
    else
        _ID32753( "TOPLEFT" );
}

_ID16509()
{
    return self._ID26248;
}

_ID29600()
{
    if ( isdefined( self._ID7487 ) && self._ID7487 == gettime() )
        return;

    self._ID7487 = gettime();
    var_0 = [];

    foreach ( var_3, var_2 in self._ID7488 )
    {
        if ( !isdefined( var_2 ) )
            continue;

        var_2._ID517 = var_0.size;
        var_0[var_0.size] = var_2;
    }

    self._ID7488 = var_0;
}

_ID2011( var_0 )
{
    var_0._ID517 = self._ID7488.size;
    self._ID7488[self._ID7488.size] = var_0;
    _ID29600();
}

_ID29596( var_0 )
{
    var_0._ID26248 = undefined;

    if ( self._ID7488[self._ID7488.size - 1] != var_0 )
    {
        self._ID7488[var_0._ID517] = self._ID7488[self._ID7488.size - 1];
        self._ID7488[var_0._ID517]._ID517 = var_0._ID517;
    }

    self._ID7488[self._ID7488.size - 1] = undefined;
    var_0._ID517 = undefined;
}

_ID32753( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_4 ) )
        var_4 = 0;

    var_5 = _ID16509();

    if ( var_4 )
        self moveovertime( var_4 );

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    self._ID41890 = var_2;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    self._ID41917 = var_3;
    self._ID28188 = var_0;
    self._ID44 = "center";
    self._ID45 = "middle";

    if ( issubstr( var_0, "TOP" ) )
        self._ID45 = "top";

    if ( issubstr( var_0, "BOTTOM" ) )
        self._ID45 = "bottom";

    if ( issubstr( var_0, "LEFT" ) )
        self._ID44 = "left";

    if ( issubstr( var_0, "RIGHT" ) )
        self._ID44 = "right";

    if ( !isdefined( var_1 ) )
        var_1 = var_0;

    self._ID29453 = var_1;
    var_6 = "center";
    var_7 = "middle";

    if ( issubstr( var_1, "TOP" ) )
        var_7 = "top";

    if ( issubstr( var_1, "BOTTOM" ) )
        var_7 = "bottom";

    if ( issubstr( var_1, "LEFT" ) )
        var_6 = "left";

    if ( issubstr( var_1, "RIGHT" ) )
        var_6 = "right";

    if ( var_5 == level._ID39415 )
    {
        self._ID499 = var_6;
        self._ID1284 = var_7;
    }
    else
    {
        self._ID499 = var_5._ID499;
        self._ID1284 = var_5._ID1284;
    }

    if ( var_6 == var_5._ID44 )
    {
        var_8 = 0;
        var_9 = 0;
    }
    else if ( var_6 == "center" || var_5._ID44 == "center" )
    {
        var_8 = int( var_5._ID1319 / 2 );

        if ( var_6 == "left" || var_5._ID44 == "right" )
            var_9 = -1;
        else
            var_9 = 1;
    }
    else
    {
        var_8 = var_5._ID1319;

        if ( var_6 == "left" )
            var_9 = -1;
        else
            var_9 = 1;
    }

    self._ID1331 = var_5._ID1331 + var_8 * var_9;

    if ( var_7 == var_5._ID45 )
    {
        var_10 = 0;
        var_11 = 0;
    }
    else if ( var_7 == "middle" || var_5._ID45 == "middle" )
    {
        var_10 = int( var_5._ID488 / 2 );

        if ( var_7 == "top" || var_5._ID45 == "bottom" )
            var_11 = -1;
        else
            var_11 = 1;
    }
    else
    {
        var_10 = var_5._ID488;

        if ( var_7 == "top" )
            var_11 = -1;
        else
            var_11 = 1;
    }

    self._ID1339 = var_5._ID1339 + var_10 * var_11;
    self._ID1331 = self._ID1331 + self._ID41890;
    self._ID1339 = self._ID1339 + self._ID41917;

    switch ( self._ID12329 )
    {
        case "bar":
            _ID32754( var_0, var_1, var_2, var_3 );
            break;
    }

    _ID39684( var_4 );
}

_ID32754( var_0, var_1, var_2, var_3 )
{
    var_4 = 0;
    var_5 = 0;

    if ( isdefined( self._ID4830._ID51345 ) )
        var_4 = self._ID4830._ID51345;

    if ( isdefined( self._ID4830._ID50134 ) )
        var_5 = self._ID4830._ID50134;

    self._ID4830._ID499 = self._ID499;
    self._ID4830._ID1284 = self._ID1284;
    self._ID4830._ID44 = "left";
    self._ID4830._ID45 = self._ID45;
    self._ID4830._ID1339 = var_5 + self._ID1339;

    if ( self._ID44 == "left" )
        self._ID4830._ID1331 = var_4 + self._ID1331 + self._ID41894;
    else if ( self._ID44 == "right" )
        self._ID4830._ID1331 = var_4 + self._ID1331 - ( self._ID1319 - self._ID41894 );
    else
        self._ID4830._ID1331 = var_4 + self._ID1331 - int( ( self._ID1319 - self._ID41894 * 2 ) / 2 );

    if ( isdefined( self._ID48035 ) )
    {
        self._ID48035._ID1331 = self._ID1331;
        self._ID48035._ID1339 = self._ID1339;
        self._ID48035._ID499 = self._ID499;
        self._ID48035._ID1284 = self._ID1284;
        self._ID48035._ID44 = self._ID44;
        self._ID48035._ID45 = self._ID45;
    }

    _ID39674( self._ID4830._ID14859 );
}

_ID39674( var_0 )
{
    var_1 = int( ( self._ID1319 - self._ID41894 * 2 ) * var_0 );

    if ( !var_1 )
        var_1 = 1;

    self._ID4830._ID14859 = var_0;
    self._ID4830 setshader( self._ID4830._ID33685, var_1, self._ID488 - self._ID41920 * 2 );
}

_ID18545( var_0 )
{
    var_0 = _ID42237::_ID37527( isdefined( var_0 ), var_0, 1 );

    if ( var_0 || !isdefined( self._ID25998 ) || !isdefined( self._ID4830._ID25998 ) )
    {
        self._ID25998 = self._ID55;
        self._ID4830._ID25998 = self._ID4830._ID55;
    }

    self._ID55 = _ID42237::_ID37527( var_0, 0, self._ID25998 );
    self._ID4830._ID55 = _ID42237::_ID37527( var_0, 0, self._ID4830._ID25998 );
}

_ID9220( var_0, var_1 )
{
    var_2 = newhudelem();
    var_2._ID12329 = "font";
    var_2._ID392 = var_0;
    var_2._ID393 = var_1;
    var_2._ID1331 = 0;
    var_2._ID1339 = 0;
    var_2._ID1319 = 0;
    var_2._ID488 = int( level._ID14720 * var_1 );
    var_2._ID41890 = 0;
    var_2._ID41917 = 0;
    var_2._ID7488 = [];
    var_2 _ID32735( level._ID39415 );
    return var_2;
}

_ID9200( var_0, var_1 )
{
    var_2 = newclienthudelem( self );
    var_2._ID12329 = "font";
    var_2._ID392 = var_0;
    var_2._ID393 = var_1;
    var_2._ID1331 = 0;
    var_2._ID1339 = 0;
    var_2._ID1319 = 0;
    var_2._ID488 = int( level._ID14720 * var_1 );
    var_2._ID41890 = 0;
    var_2._ID41917 = 0;
    var_2._ID7488 = [];
    var_2 _ID32735( level._ID39415 );
    return var_2;
}

_ID9204( var_0, var_1 )
{
    var_2 = newclienthudelem( self );
    var_2._ID12329 = "timer";
    var_2._ID392 = var_0;
    var_2._ID393 = var_1;
    var_2._ID1331 = 0;
    var_2._ID1339 = 0;
    var_2._ID1319 = 0;
    var_2._ID488 = int( level._ID14720 * var_1 );
    var_2._ID41890 = 0;
    var_2._ID41917 = 0;
    var_2._ID7488 = [];
    var_2 _ID32735( level._ID39415 );
    return var_2;
}

_ID9280( var_0, var_1 )
{
    var_2 = newhudelem();
    var_2._ID12329 = "font";
    var_2._ID392 = var_0;
    var_2._ID393 = var_1;
    var_2._ID1331 = 0;
    var_2._ID1339 = 0;
    var_2._ID1319 = 0;
    var_2._ID488 = int( level._ID14720 * var_1 );
    var_2._ID41890 = 0;
    var_2._ID41917 = 0;
    var_2._ID7488 = [];
    var_2 _ID32735( level._ID39415 );
    return var_2;
}

_ID9282( var_0, var_1 )
{
    var_2 = newhudelem();
    var_2._ID12329 = "timer";
    var_2._ID392 = var_0;
    var_2._ID393 = var_1;
    var_2._ID1331 = 0;
    var_2._ID1339 = 0;
    var_2._ID1319 = 0;
    var_2._ID488 = int( level._ID14720 * var_1 );
    var_2._ID41890 = 0;
    var_2._ID41917 = 0;
    var_2._ID7488 = [];
    var_2 _ID32735( level._ID39415 );
    return var_2;
}

_ID9251( var_0, var_1, var_2 )
{
    var_3 = newhudelem();
    return _ID9252( var_3, var_0, var_1, var_2 );
}

_ID9202( var_0, var_1, var_2 )
{
    var_3 = newclienthudelem( self );
    return _ID9252( var_3, var_0, var_1, var_2 );
}

_ID9252( var_0, var_1, var_2, var_3 )
{
    var_0._ID12329 = "icon";
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0._ID1319 = var_2;
    var_0._ID488 = var_3;
    var_0._ID41890 = 0;
    var_0._ID41917 = 0;
    var_0._ID7488 = [];
    var_0 _ID32735( level._ID39415 );

    if ( isdefined( var_1 ) )
        var_0 setshader( var_1, var_2, var_3 );

    return var_0;
}

_ID44013( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = newhudelem();
    var_7._ID44 = "center";
    var_7._ID45 = "bottom";
    var_7._ID499 = "center";
    var_7._ID1284 = "bottom";
    var_7._ID1331 = var_0;
    var_7._ID1339 = var_1 + 1;
    var_7._ID55 = 0.9;
    var_7 setshader( var_5, var_2, var_3 );
    var_7._ID983 = -2;
    var_8 = newhudelem();
    var_8 setshader( var_6, 10, 0 );
    var_8._ID44 = "right";
    var_8._ID45 = "bottom";
    var_8._ID499 = "right";
    var_8._ID1284 = "bottom";
    var_8._ID51345 = 1;
    var_8._ID50134 = -2;
    var_8._ID196 = ( 1, 0.9, 0.1 );
    var_8._ID55 = 0.9;
    var_8._ID983 = 0;
    var_8._ID14859 = 0.25;
    var_8._ID33685 = var_6;
    var_9 = newhudelem();
    var_9._ID12329 = "bar";
    var_9._ID44 = "center";
    var_9._ID45 = "bottom";
    var_9._ID499 = "center";
    var_9._ID1284 = "bottom";
    var_9._ID1331 = var_0;
    var_9._ID1339 = var_1 + 1;
    var_9._ID55 = 0.3;
    var_9 setshader( var_4, var_2, var_3 );
    var_9._ID983 = -1;
    var_9._ID1319 = var_2;
    var_9._ID488 = var_3;
    var_9._ID41894 = 2;
    var_9._ID41920 = 3;
    var_9._ID7488 = [];
    var_9._ID48035 = var_7;
    var_9._ID4830 = var_8;
    var_9 _ID32735( level._ID39415 );
    return var_9;
}

_ID9192( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "white";

    if ( !isdefined( var_1 ) )
        var_1 = "black";

    if ( !isdefined( var_2 ) )
        var_2 = 100;

    if ( !isdefined( var_3 ) )
        var_3 = 9;

    var_5 = newhudelem();
    var_5._ID1331 = 2;
    var_5._ID1339 = 2;
    var_5._ID14859 = 0.25;
    var_5._ID33685 = var_0;
    var_5._ID983 = -1;
    var_5 setshader( var_0, var_2 - 2, var_3 - 2 );

    if ( isdefined( var_4 ) )
    {
        var_5._ID14517 = var_4;
        var_5 thread _ID14537();
    }

    var_5._ID51345 = 0;
    var_5._ID50134 = 0;
    var_6 = newhudelem();
    var_6._ID12329 = "bar";
    var_6._ID1331 = 0;
    var_6._ID1339 = 0;
    var_6._ID1319 = var_2;
    var_6._ID488 = var_3;
    var_6._ID41890 = 0;
    var_6._ID41917 = 0;
    var_6._ID4830 = var_5;
    var_6._ID7488 = [];
    var_6._ID41894 = 2;
    var_6._ID41920 = 2;
    var_6._ID983 = -2;
    var_6._ID55 = 0.5;
    var_6 _ID32735( level._ID39415 );
    var_6 setshader( var_1, var_2, var_3 );
    return var_6;
}

_ID9203( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_0 = _ID42237::_ID37527( isdefined( var_0 ), var_0, level._ID794 );
    var_1 = _ID42237::_ID37527( isdefined( var_1 ), var_1, 90 );
    var_2 = _ID42237::_ID37527( isdefined( var_2 ), var_2, "white" );
    var_3 = _ID42237::_ID37527( isdefined( var_3 ), var_3, "black" );
    var_4 = _ID42237::_ID37527( isdefined( var_4 ), var_4, 100 );
    var_5 = _ID42237::_ID37527( isdefined( var_5 ), var_5, 9 );
    var_6 = _ID42237::_ID37527( isdefined( var_6 ), var_6, 2 );
    var_7 = _ID42237::_ID37527( isdefined( var_7 ), var_7, 2 );
    var_8 = var_0 _ID9199( var_2, var_3, var_4, var_5, undefined, var_6, var_7 );
    var_8 _ID32753( "CENTER", undefined, 0, var_1 );
    return var_8;
}

_ID9199( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_5 ) )
        var_5 = 2;

    if ( !isdefined( var_6 ) )
        var_6 = 2;

    var_7 = newclienthudelem( self );
    var_7._ID1331 = 0 - var_5;
    var_7._ID1339 = 0 - var_6;
    var_7._ID14859 = 0.25;
    var_7._ID33685 = var_0;
    var_7._ID983 = -1;
    var_7 setshader( var_0, var_2 - var_5 * 2, var_3 - var_6 * 2 );

    if ( isdefined( var_4 ) )
    {
        var_7._ID14517 = var_4;
        var_7 thread _ID14537();
    }

    var_8 = newclienthudelem( self );
    var_8._ID12329 = "bar";
    var_8._ID1331 = 0;
    var_8._ID1339 = 0;
    var_8._ID1319 = var_2;
    var_8._ID488 = var_3;
    var_8._ID41890 = -1 * var_5;
    var_8._ID41917 = 0;
    var_8._ID4830 = var_7;
    var_8._ID7488 = [];
    var_8._ID41894 = var_5;
    var_8._ID41920 = var_6;
    var_8._ID983 = -2;
    var_8._ID55 = 0.5;
    var_8 _ID32735( level._ID39415 );
    var_8 setshader( var_1, var_2, var_3 );
    return var_8;
}

_ID32629( var_0 )
{
    self._ID4830._ID14517 = var_0;
}

_ID13803( var_0, var_1 )
{
    if ( isdefined( var_1 ) && var_1 > 0 )
        self fadeovertime( var_1 );

    self._ID55 = var_0;

    if ( isdefined( var_1 ) && var_1 > 0 )
        wait(var_1);
}

_ID14537()
{
    self endon( "death" );
    self._ID55 = 1;

    for (;;)
    {
        if ( self._ID14859 >= self._ID14517 )
        {
            self fadeovertime( 0.3 );
            self._ID55 = 0.2;
            wait 0.35;
            self fadeovertime( 0.3 );
            self._ID55 = 1;
            wait 0.7;
            continue;
        }

        self._ID55 = 1;
        wait 0.05;
    }
}

_ID10476()
{
    if ( isdefined( self._ID7488 ) && self._ID7488.size )
    {
        var_0 = [];

        for ( var_1 = 0; var_1 < self._ID7488.size; var_1++ )
            var_0[var_1] = self._ID7488[var_1];

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
            var_0[var_1] _ID32735( _ID16509() );
    }

    if ( isdefined( self._ID12329 ) && self._ID12329 == "bar" )
    {
        self._ID4830 destroy();

        if ( isdefined( self._ID48035 ) )
            self._ID48035 destroy();
    }

    self destroy();
}

_ID32656( var_0 )
{
    self setshader( var_0, self._ID1319, self._ID488 );
}

_ID33627( var_0 )
{
    self._ID1319 = var_0;
}

_ID32652( var_0 )
{
    self._ID488 = var_0;
}

_ID32786( var_0, var_1 )
{
    self._ID1319 = var_0;
    self._ID488 = var_1;
}

_ID39684( var_0 )
{
    for ( var_1 = 0; var_1 < self._ID7488.size; var_1++ )
    {
        var_2 = self._ID7488[var_1];
        var_2 _ID32753( var_2._ID28188, var_2._ID29453, var_2._ID41890, var_2._ID41917, var_0 );
    }
}

_ID35576( var_0 )
{
    if ( isdefined( var_0 ) && var_0 == 0 )
    {
        _ID35575();
        return;
    }

    setsaveddvar( "hud_showStanceCarry", "1" );
}

_ID35575()
{
    setsaveddvar( "hud_showStanceCarry", "0" );
}

_ID9166()
{
    if ( level._ID8534 )
    {
        var_0 = _ID9220( "default", 1.8 );
        var_0 _ID32753( "CENTER", undefined, 0, 115 );
        var_0 settext( level._ID36699["mantle"] );
    }
    else
    {
        var_0 = _ID9220( "default", 1.6 );
        var_0 _ID32753( "CENTER", undefined, 0, 115 );
        var_0 settext( level._ID36699["mantle"] );
    }

    var_0._ID55 = 0;
    level._ID19147 = [];
    level._ID19147["text"] = var_0;
}

_ID1894( var_0, var_1, var_2, var_3 )
{
    _ID49709();

    if ( !isdefined( var_1 ) )
        var_1 = 0.0;

    if ( !isdefined( var_2 ) )
        var_2 = 0.0;

    var_4 = 480;

    if ( isdefined( var_3 ) )
    {
        if ( var_3 == "medium_background" )
            var_4 = 380;
        else if ( var_3 == "small_background" )
            var_4 = 280;
        else if ( _func_2cb( var_3 ) )
            var_4 = int( var_3 );

        var_5 = _ID42237::_ID54738();

        if ( var_5 == "LANGUAGE_GERMAN" || var_5 == "LANGUAGE_FRENCH" )
            var_4 += int( var_4 * 0.2 );
    }

    if ( isdefined( var_0 ) )
    {
        var_6 = 121;
        var_7 = 38;
        level._ID18678 = _ID9251( "h1_hud_tutorial_blur", var_4, 39 );
        level._ID45408 = _ID9251( "h1_hud_tutorial_border", var_4, 1 );
        level._ID52830 = _ID9251( "h1_hud_tutorial_border", var_4, 1 );
    }
    else
    {
        var_6 = 121;
        var_7 = 24;
        level._ID18678 = _ID9251( "h1_hud_tutorial_blur", var_4, 25 );
        level._ID45408 = _ID9251( "h1_hud_tutorial_border", var_4, 1 );
        level._ID52830 = _ID9251( "h1_hud_tutorial_border", var_4, 1 );
    }

    level._ID18678 _ID32753( "TOP", undefined, 0, var_6 + var_1 );
    level._ID18678._ID983 = 1;
    level._ID18678._ID493 = 1;
    level._ID18678._ID491 = 1;
    level._ID45408 _ID32753( "TOP", undefined, 0, var_6 + var_1 );
    level._ID45408._ID983 = 1;
    level._ID45408._ID493 = 1;
    level._ID45408._ID491 = 1;
    level._ID52830 _ID32753( "TOP", undefined, 0, var_6 + var_1 + var_7 );
    level._ID52830._ID983 = 1;
    level._ID52830._ID493 = 1;
    level._ID52830._ID491 = 1;

    if ( var_2 == 0 )
    {
        level._ID18678._ID55 = 0.9;
        level._ID45408._ID55 = 0.05;
        level._ID52830._ID55 = 0.05;
    }
    else
    {
        level._ID18678._ID55 = 0;
        level._ID18678 fadeovertime( var_2 );
        level._ID18678._ID55 = 0.9;
        level._ID45408._ID55 = 0;
        level._ID45408 fadeovertime( var_2 );
        level._ID45408._ID55 = 0.05;
        level._ID52830._ID55 = 0;
        level._ID52830 fadeovertime( var_2 );
        level._ID52830._ID55 = 0.05;
    }
}

_ID43145( var_0 )
{
    if ( isdefined( level._ID18678 ) )
    {
        if ( var_0 > 0 )
            level._ID18678 fadeovertime( var_0 );

        level._ID18678._ID55 = 0;
    }

    if ( isdefined( level._ID45408 ) )
    {
        if ( var_0 > 0 )
            level._ID45408 fadeovertime( var_0 );

        level._ID45408._ID55 = 0;
    }

    if ( isdefined( level._ID52830 ) )
    {
        if ( var_0 > 0 )
            level._ID52830 fadeovertime( var_0 );

        level._ID52830._ID55 = 0;
    }
}

_ID49709()
{
    if ( isdefined( level._ID18678 ) )
        level._ID18678 _ID10476();

    if ( isdefined( level._ID45408 ) )
        level._ID45408 _ID10476();

    if ( isdefined( level._ID52830 ) )
        level._ID52830 _ID10476();
}

getstatbackers( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "h2_hud_ssdd_results_blur";
    var_6 = "h1_hud_fng_results_border";

    if ( isdefined( var_4 ) && var_4 )
    {
        var_5 = "h2_hud_ssdd_stats_blur";
        var_6 = "h2_hud_ssdd_stats_border";
    }

    var_7 = [];
    var_7[0] = newhudelem();
    var_7[0]._ID1331 = var_0;
    var_7[0]._ID1339 = var_1;
    var_7[0] setshader( var_5, var_2, var_3 );
    var_7[0]._ID44 = "right";
    var_7[0]._ID45 = "top";
    var_7[0]._ID983 = 1;
    var_7[0]._ID408 = 0;
    var_7[0]._ID499 = "right_adjustable";
    var_7[0]._ID1284 = "top_adjustable";
    var_7[0]._ID55 = 0.9;
    var_7[0]._ID493 = 1;
    var_7[0]._ID491 = 1;
    var_7[1] = newhudelem();
    var_7[1]._ID1331 = var_0;
    var_7[1]._ID1339 = var_1;
    var_7[1] setshader( var_6, var_2, var_3 );
    var_7[1]._ID44 = "right";
    var_7[1]._ID45 = "top";
    var_7[1]._ID983 = 2;
    var_7[1]._ID408 = 0;
    var_7[1]._ID499 = "right_adjustable";
    var_7[1]._ID1284 = "top_adjustable";
    var_7[1]._ID55 = 0.1;
    var_7[1]._ID493 = 1;
    var_7[1]._ID491 = 1;
    return var_7;
}

_ID50277( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_8 = ( 1, 1, 1 );

    if ( isdefined( var_6 ) )
    {
        if ( var_6 == "penalty" )
            var_8 = ( 0.9, 0.3, 0.3 );
        else if ( var_6 == "bonus" )
            var_8 = ( 0.86, 0.81, 0.34 );
    }

    var_9 = _ID42237::_ID37527( !isdefined( var_0 ) || var_3, -225, var_0 );
    var_10 = _ID42237::_ID37527( !isdefined( var_1 ), 10.5, var_1 );
    var_4 = _ID42237::_ID37527( !isdefined( var_4 ), 1.6, var_4 );

    if ( isdefined( var_2 ) )
        var_11 = newclienthudelem( var_2 );
    else
        var_11 = newhudelem();

    var_11._ID44 = "left";
    var_11._ID45 = "middle";
    var_11._ID499 = "right_adjustable";
    var_11._ID1284 = "top_adjustable";
    var_11._ID1331 = var_9;
    var_11._ID1339 = var_10;

    if ( _ID42407::_ID3270() )
    {
        var_11._ID44 = "left";
        var_11._ID45 = "top";
        var_11._ID499 = "right";
        var_11._ID1284 = "top";
        var_11._ID1339 = 0;
    }

    var_11._ID393 = var_4;
    var_11._ID196 = var_8;
    var_11._ID392 = "timer";
    var_11._ID445 = ( 0, 0, 0 );
    var_11._ID444 = 0;
    var_11._ID408 = 1;
    var_11._ID493 = 1;
    var_11._ID491 = 1;

    if ( isdefined( var_7 ) )
    {
        var_11._ID578 = var_5;
        var_11 setvalue( var_7 );
    }
    else if ( isdefined( var_5 ) )
        var_11 settext( var_5 );

    return var_11;
}

_ID46180( var_0, var_1, var_2, var_3 )
{
    level endon( "kill_timer_flourish" );

    for (;;)
    {
        level waittill( "timer_tick" );
        var_0._ID196 = var_2;
        wait(var_1);
        var_0._ID196 = var_3;
    }
}

_ID49403( var_0, var_1, var_2, var_3 )
{
    level endon( "kill_timer_flourish" );
    var_4 = 57;
    var_5 = ( 1, 1, 1 );
    var_6 = 15;
    var_7 = 10;
    var_8 = 210;
    var_9 = 0.13;
    var_10 = 0.03;
    var_11 = 0.01;
    var_12 = 0;
    var_13 = 0.9;
    var_14 = ( 0.9, 0.2, 0.2 );
    var_15 = var_9 + var_10;

    if ( var_2 > var_6 )
        var_16 = var_5;
    else
        var_16 = var_14;

    var_17 = newhudelem();
    var_17._ID1331 = var_0;
    var_17._ID1339 = var_1 - 8;
    var_17 setshader( "h1_timer_on_flare", 0, var_4 );
    var_17._ID44 = "center";
    var_17._ID196 = var_16;
    var_17._ID45 = "top";
    var_17._ID983 = 1;
    var_17._ID408 = 0;
    var_17._ID499 = "center_adjustable";
    var_17._ID1284 = "top_adjustable";
    var_17._ID493 = 1;
    var_17._ID491 = 1;
    var_17._ID55 = 1;
    var_2 -= 0.05;
    wait 0.05;

    if ( var_2 > var_6 )
    {
        var_17 scaleovertime( var_15, var_8, var_4 );
        var_2 -= var_9;
        wait(var_9);
        var_17 fadeovertime( var_10 );
        var_17._ID55 = 0;
        var_2 -= var_10;
        wait(var_10);
        var_18 = var_2 - var_6;
        var_2 -= var_18;
        wait(var_18);
        var_17 scaleovertime( 0.05, 0, var_4 );
        var_2 -= 0.05;
        wait 0.05;
    }

    var_3._ID196 = var_14;
    var_17._ID196 = var_14;
    var_17._ID55 = 1;
    var_17 scaleovertime( var_15, var_8, var_4 );
    var_2 -= var_9;
    wait(var_9);
    var_17 fadeovertime( var_10 );
    var_17._ID55 = 0;
    var_2 -= var_10;
    wait(var_10);
    var_17 scaleovertime( 0.05, 0, var_4 );

    if ( var_2 > var_7 )
    {
        var_19 = var_2 - var_7;
        var_2 -= var_19;
        wait(var_19);
    }

    _ID46180( var_3, var_11, var_5, var_14 );
    var_17 destroy();
}

_ID15642( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_5 ) )
        var_5 = 0;

    var_6 = _ID42237::_ID37527( !isdefined( var_0 ) || var_3, 0, var_0 );
    var_7 = _ID42237::_ID37527( !isdefined( var_1 ), 10.5, var_1 );

    if ( isdefined( var_2 ) )
        var_8 = newclienthudelem( var_2 );
    else
        var_8 = newhudelem();

    var_8._ID44 = "center";
    var_8._ID45 = "top";
    var_8._ID499 = "center_adjustable";
    var_8._ID1284 = "top_adjustable";
    var_8._ID1331 = var_6;

    switch ( getdvarint( "loc_language" ) )
    {
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 15:
            var_8._ID1339 = var_7 + 18;
            break;
        default:
            var_8._ID1339 = var_7 + 16;
            break;
    }

    if ( var_5 )
    {
        var_9 = _ID42237::_ID54738();

        switch ( var_9 )
        {
            case "LANGUAGE_FRENCH":
            case "LANGUAGE_ITALIAN":
            case "LANGUAGE_POLISH":
                var_10 = 430;
                break;
            case "LANGUAGE_RUSSIAN":
            case "LANGUAGE_RUSSIAN_PARTIAL":
                var_10 = 266;
                break;
            case "LANGUAGE_GERMAN":
            case "LANGUAGE_SPANISH":
            case "LANGUAGE_PORTUGUESE":
            case "LANGUAGE_SPANISHNA":
                var_10 = 404;
                break;
            case "LANGUAGE_ARABIC":
                var_10 = 236;
                break;
            default:
                var_10 = 227;
                break;
        }
    }
    else
        var_10 = 227;

    var_8._ID393 = 0.75;
    var_8._ID196 = ( 1, 1, 1 );
    var_8._ID392 = "timer";
    var_8._ID445 = ( 0, 0, 0 );
    var_8._ID444 = 0;
    var_8._ID408 = 1;
    var_8._ID493 = 1;
    var_8._ID491 = 1;
    var_8._ID37557 = newhudelem();
    var_8._ID37557._ID44 = "center";
    var_8._ID37557._ID45 = "top";
    var_8._ID37557._ID499 = "center_adjustable";
    var_8._ID37557._ID1284 = "top_adjustable";
    var_8._ID37557._ID1331 = var_6;
    var_8._ID37557._ID1339 = var_7 + 8;
    var_8._ID37557._ID393 = 0.45;
    var_8._ID37557._ID196 = ( 1, 1, 1 );
    var_8._ID37557._ID392 = "timer";
    var_8._ID37557._ID445 = ( 0, 0, 0 );
    var_8._ID37557._ID444 = 0;
    var_8._ID37557._ID408 = 1;
    var_8._ID37557._ID493 = 1;
    var_8._ID37557._ID491 = 1;
    var_8._ID43415 = newhudelem();
    var_8._ID43415._ID1331 = var_6;
    var_8._ID43415._ID1339 = var_7;
    var_8._ID43415 setshader( "h1_hud_timer_blur", var_10, 57 );
    var_8._ID43415._ID44 = "center";
    var_8._ID43415._ID45 = "top";
    var_8._ID43415._ID983 = 1;
    var_8._ID43415._ID408 = 0;
    var_8._ID43415._ID499 = "center_adjustable";
    var_8._ID43415._ID1284 = "top_adjustable";
    var_8._ID43415._ID55 = 0.9;
    var_8._ID43415._ID493 = 1;
    var_8._ID43415._ID491 = 1;
    var_8._ID45634 = newhudelem();
    var_8._ID45634._ID1331 = var_6;
    var_8._ID45634._ID1339 = var_7;
    var_8._ID45634 setshader( "h1_hud_timer_border", var_10, 57 );
    var_8._ID45634._ID44 = "center";
    var_8._ID45634._ID45 = "top";
    var_8._ID45634._ID983 = 1;
    var_8._ID45634._ID408 = 0;
    var_8._ID45634._ID499 = "center_adjustable";
    var_8._ID45634._ID1284 = "top_adjustable";
    var_8._ID45634._ID55 = 0.1;
    var_8._ID45634._ID493 = 1;
    var_8._ID45634._ID491 = 1;

    if ( isdefined( var_4 ) )
        thread _ID49403( var_6, var_7, var_4, var_8 );

    return var_8;
}

_ID51785( var_0 )
{
    level notify( "kill_timer_flourish" );

    if ( !isdefined( var_0 ) )
        return;

    if ( isdefined( var_0._ID37557 ) )
        var_0._ID37557 destroy();

    if ( isdefined( var_0._ID43415 ) )
        var_0._ID43415 destroy();

    if ( isdefined( var_0._ID45634 ) )
        var_0._ID45634 destroy();

    var_0 destroy();
}

_ID54261()
{
    precacheshader( "h1_hud_timer_blur" );
    precacheshader( "h1_hud_timer_border" );
    precacheshader( "h1_timer_on_flare" );
}

_ID47327( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0;

    level endon( "kill_timer" );
    level._ID19201 = 20;
    level._ID37750 = _ID15642( undefined, undefined, undefined, undefined, var_0, var_3 );
    level._ID37750 setpulsefx( 30, 900000, 700 );
    level._ID37750._ID37557._ID578 = var_1;
    level._ID36040 = gettime();
    level._ID37750 settenthstimerstatic( var_0 );
    wait 0.5;
    level._ID37750 settenthstimer( var_0 );

    if ( var_2 == 1 )
        thread _ID45760( var_0 );

    wait(var_0);
    level notify( "timer_expired" );

    if ( isdefined( level._ID37750 ) )
        _ID51785( level._ID37750 );
}

_ID45760( var_0 )
{
    level endon( "stop_timer_tick" );
    level endon( "kill_timer" );
    wait 0.1;

    for ( var_1 = var_0 - 5; var_1 > 0; var_1 -= 1 )
    {
        wait 1;
        level._ID794 thread _ID42407::_ID27079( "countdown_beep" );
        level notify( "timer_tick" );
    }

    for (;;)
    {
        wait 0.5;
        level._ID794 thread _ID42407::_ID27079( "countdown_beep" );
        level notify( "timer_tick" );
    }
}

_ID52053()
{
    level notify( "kill_timer" );

    if ( isdefined( level._ID37750 ) )
        _ID51785( level._ID37750 );
}

hud_stats_display_kill()
{
    level notify( "kill_stats_display_huds" );
}

_ID15690( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_4 = undefined;

    if ( !isdefined( var_0 ) )
        var_4 = -170;
    else
        var_4 = var_0;

    if ( var_3 )
        var_4 = var_0;

    if ( !isdefined( var_1 ) )
        var_5 = 100;
    else
        var_5 = var_1;

    if ( isdefined( var_2 ) )
        var_6 = newclienthudelem( var_2 );
    else
        var_6 = newhudelem();

    var_6._ID44 = "right";
    var_6._ID45 = "middle";
    var_6._ID499 = "right";
    var_6._ID1284 = "top";
    var_6._ID1331 = var_4;
    var_6._ID1339 = var_5;
    var_6._ID393 = 1.6;
    var_6._ID196 = ( 0.8, 1, 0.8 );
    var_6._ID392 = "objective";
    var_6._ID445 = ( 0.26, 0.65, 0.32 );
    var_6._ID444 = 0.2;
    var_6._ID408 = 1;
    var_6._ID493 = 1;
    var_6._ID491 = 1;
    return var_6;
}

_ID9125( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) )
        var_3 = newclienthudelem( var_2 );
    else
        var_3 = newhudelem();

    var_3._ID1331 = 0;
    var_3._ID1339 = 0;
    var_3 setshader( var_0, 640, 480 );
    var_3._ID44 = "left";
    var_3._ID45 = "top";
    var_3._ID983 = 1;
    var_3._ID499 = "fullscreen";
    var_3._ID1284 = "fullscreen";
    var_3._ID55 = var_1;
    var_3._ID408 = 1;
    return var_3;
}

_ID9126( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _ID42407::_ID15912();
    var_6 = newclienthudelem( var_5 );

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_6._ID1331 = var_2;
    var_6._ID1339 = var_3;
    var_6 setshader( var_0, int( 640 * var_4 ), int( 480 * var_4 ) );
    var_6._ID44 = "center";
    var_6._ID45 = "middle";
    var_6._ID983 = 1;
    var_6._ID499 = "center";
    var_6._ID1284 = "middle";
    var_6._ID55 = var_1;
    var_6._ID408 = 1;
    return var_6;
}

_ID9127( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _ID42407::_ID15912();
    var_6 = newclienthudelem( var_5 );

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    var_6._ID1331 = var_2;
    var_6._ID1339 = var_3;
    var_6 setshader( var_0, int( 640 * var_4 ), int( 480 * var_4 ) );
    var_6._ID44 = "center";
    var_6._ID45 = "middle";
    var_6._ID983 = 1;
    var_6._ID499 = "fullscreen";
    var_6._ID1284 = "fullscreen";
    var_6._ID55 = var_1;
    var_6._ID408 = 1;
    return var_6;
}

_ID50939( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_4 ) && isplayernumber( var_4 ) )
    {
        var_5 = newclienthudelem( var_4 );
        var_6 = newclienthudelem( var_4 );
        var_7 = newclienthudelem( var_4 );
        var_8 = newclienthudelem( var_4 );
        var_9 = newclienthudelem( var_4 );
    }
    else
    {
        var_5 = newhudelem();
        var_6 = newhudelem();
        var_7 = newhudelem();
        var_8 = newhudelem();
        var_9 = newhudelem();
    }

    var_5._ID7488 = [];
    var_5 _ID2011( var_6 );
    var_5 _ID2011( var_7 );
    var_5 _ID2011( var_8 );
    var_5 _ID2011( var_9 );

    foreach ( var_11 in var_5._ID7488 )
    {
        var_11._ID44 = "left";
        var_11._ID45 = "top";
        var_11._ID1331 = 0;
        var_11._ID1339 = 0;
        var_11 setshader( var_0, var_2, var_3 );
        var_11._ID983 = 1;
        var_11._ID499 = "fullscreen";
        var_11._ID1284 = "fullscreen";
        var_11._ID55 = var_1;
        var_11._ID408 = 1;
    }

    var_7._ID1331 = 640 - var_2;
    var_7._ID902 = 90;
    var_8._ID902 = 270;
    var_8._ID1339 = 480 - var_3;
    var_9._ID1331 = 640 - var_2;
    var_9._ID1339 = 480 - var_3;
    var_9._ID902 = 180;
    return var_5;
}

_ID13791( var_0, var_1 )
{
    if ( level._ID23777 )
        return;

    if ( !isdefined( var_0 ) )
        var_0 = 0.3;

    var_2 = _ID15878( var_1 );
    var_2._ID55 = 1;
    var_2 fadeovertime( var_0 );
    var_2._ID55 = 0;
    wait(var_0);
}

_ID15878( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "black";

    return _ID15894( var_0 );
}

_ID13798( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0.3;

    var_2 = _ID15878( var_1 );

    if ( var_0 > 0 )
        var_2 fadeovertime( var_0 );

    var_2._ID55 = 1;
    wait(var_0);
}

_ID35878( var_0 )
{
    var_1 = _ID15878( var_0 );
    var_1._ID55 = 1;
}

_ID15894( var_0 )
{
    if ( isplayernumber( self ) )
        var_1 = self;
    else
        var_1 = level._ID794;

    if ( !isdefined( var_1._ID26105 ) )
        var_1._ID26105 = [];

    if ( !isdefined( var_1._ID26105[var_0] ) )
        var_1._ID26105[var_0] = _ID9125( var_0, 0, var_1 );

    var_1._ID26105[var_0]._ID983 = 0;
    var_1._ID26105[var_0]._ID408 = 1;
    return var_1._ID26105[var_0];
}

_ID52324( var_0, var_1, var_2 )
{
    if ( !_ID42407::_ID13023( "kill_custom_nameplate" ) )
        _ID42407::_ID13024( "kill_custom_nameplate" );

    var_3 = undefined;

    if ( isdefined( var_1 ) )
        var_3 = var_1;
    else if ( isdefined( self._ID680 ) )
        var_3 = self._ID680;

    var_4 = undefined;

    if ( isdefined( var_2 ) )
        var_4 = var_2;
    else if ( isdefined( self._ID1194 ) )
        var_4 = self._ID1194;

    if ( !isdefined( var_0 ) )
        var_0 = ::_ID49931;

    var_5 = undefined;

    for (;;)
    {
        if ( !isdefined( self ) || isai( self ) && !isalive( self ) || _ID42407::_ID13019( "kill_custom_nameplate" ) )
        {
            if ( isdefined( var_5 ) )
                var_5 destroy();

            break;
        }

        if ( [[ var_0 ]]() )
        {
            if ( !isdefined( var_5 ) )
                var_5 = _ID43777( var_3, var_4 );
        }
        else if ( isdefined( var_5 ) )
            var_5 destroy();

        waittillframeend;
    }
}

_ID49931()
{
    var_0 = 15000;

    if ( distancesquared( level._ID794._ID740, self._ID740 ) > var_0 * var_0 )
        return 0;

    var_1 = level._ID794 geteye();
    var_2 = level._ID794 getplayerangles();
    var_3 = self._ID740 + ( 0, 0, 15 );

    if ( isdefined( self._ID669 ) && _ID42407::_ID18252( self._ID669, "tag_eye" ) )
        var_3 = self gettagorigin( "tag_eye" ) + ( 0, 0, -8 );

    if ( !_ID42237::_ID41802( var_1, var_2, var_3, cos( 65 ) ) )
        return 0;

    var_3 = var_1 + var_0 * 2 * anglestoforward( var_2 );
    var_4 = bullettrace( var_1, var_3, 1, level._ID794 );
    return isdefined( var_4["entity"] ) && var_4["entity"] == self;
}

_ID43777( var_0, var_1 )
{
    var_2 = 0.25;
    var_3 = 25.0;
    var_4 = -2.0;
    var_5 = newhudelem();
    var_5._ID44 = "left";
    var_5._ID45 = "bottom";
    var_5._ID499 = "center";
    var_5._ID1284 = "middle";
    var_5._ID1331 = var_3;
    var_5._ID1339 = var_4;
    var_5._ID393 = getdvarfloat( "friendlyNameFontSize" ) / var_2;
    var_5._ID392 = "nameplate";
    var_5._ID578 = var_0;
    var_6 = _ID54643( "hostileNameFontColor" );
    var_7 = _ID54643( "hostileNameFontGlowColor" );
    var_8 = _ID54643( "friendlyNameFontColor" );
    var_9 = _ID54643( "friendlyNameFontGlowColor" );

    if ( var_1 == "axis" )
    {
        var_5._ID196 = ( var_6[0], var_6[1], var_6[2] );
        var_5._ID55 = var_6[3];
        var_5._ID445 = ( var_7[0], var_7[1], var_7[2] );
        var_5._ID444 = var_7[3];
    }
    else
    {
        var_5._ID196 = ( var_8[0], var_8[1], var_8[2] );
        var_5._ID55 = var_8[3];
        var_5._ID445 = ( var_9[0], var_9[1], var_9[2] );
        var_5._ID444 = var_9[3];
    }

    var_5._ID408 = 1;
    var_5._ID493 = 1;
    var_5._ID491 = 1;
    return var_5;
}

_ID54643( var_0 )
{
    var_1 = strtok( getdvar( var_0 ), " " );
    var_2 = [];
    var_2 = _ID42237::_ID3293( var_2, float( var_1[0] ) );
    var_2 = _ID42237::_ID3293( var_2, float( var_1[1] ) );
    var_2 = _ID42237::_ID3293( var_2, float( var_1[2] ) );
    var_2 = _ID42237::_ID3293( var_2, float( var_1[3] ) );
    return var_2;
}
