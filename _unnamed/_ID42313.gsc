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
    self.alignx = "center";
    self.aligny = "middle";

    if ( issubstr( var_0, "TOP" ) )
        self.aligny = "top";

    if ( issubstr( var_0, "BOTTOM" ) )
        self.aligny = "bottom";

    if ( issubstr( var_0, "LEFT" ) )
        self.alignx = "left";

    if ( issubstr( var_0, "RIGHT" ) )
        self.alignx = "right";

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
        self.horzalign = var_6;
        self.vertalign = var_7;
    }
    else
    {
        self.horzalign = var_5.horzalign;
        self.vertalign = var_5.vertalign;
    }

    if ( var_6 == var_5.alignx )
    {
        var_8 = 0;
        var_9 = 0;
    }
    else if ( var_6 == "center" || var_5.alignx == "center" )
    {
        var_8 = int( var_5._ID1319 / 2 );

        if ( var_6 == "left" || var_5.alignx == "right" )
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

    self.x = var_5.x + var_8 * var_9;

    if ( var_7 == var_5.aligny )
    {
        var_10 = 0;
        var_11 = 0;
    }
    else if ( var_7 == "middle" || var_5.aligny == "middle" )
    {
        var_10 = int( var_5._ID488 / 2 );

        if ( var_7 == "top" || var_5.aligny == "bottom" )
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

    self.y = var_5.y + var_10 * var_11;
    self.x = self.x + self._ID41890;
    self.y = self.y + self._ID41917;

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

    self._ID4830.horzalign = self.horzalign;
    self._ID4830.vertalign = self.vertalign;
    self._ID4830.alignx = "left";
    self._ID4830.aligny = self.aligny;
    self._ID4830.y = var_5 + self.y;

    if ( self.alignx == "left" )
        self._ID4830.x = var_4 + self.x + self._ID41894;
    else if ( self.alignx == "right" )
        self._ID4830.x = var_4 + self.x - ( self._ID1319 - self._ID41894 );
    else
        self._ID4830.x = var_4 + self.x - int( ( self._ID1319 - self._ID41894 * 2 ) / 2 );

    if ( isdefined( self._ID48035 ) )
    {
        self._ID48035.x = self.x;
        self._ID48035.y = self.y;
        self._ID48035.horzalign = self.horzalign;
        self._ID48035.vertalign = self.vertalign;
        self._ID48035.alignx = self.alignx;
        self._ID48035.aligny = self.aligny;
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
        self._ID25998 = self.alpha;
        self._ID4830._ID25998 = self._ID4830.alpha;
    }

    self.alpha = _ID42237::_ID37527( var_0, 0, self._ID25998 );
    self._ID4830.alpha = _ID42237::_ID37527( var_0, 0, self._ID4830._ID25998 );
}

_ID9220( var_0, var_1 )
{
    var_2 = newhudelem();
    var_2._ID12329 = "font";
    var_2.font = var_0;
    var_2.fontscale = var_1;
    var_2.x = 0;
    var_2.y = 0;
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
    var_2.font = var_0;
    var_2.fontscale = var_1;
    var_2.x = 0;
    var_2.y = 0;
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
    var_2.font = var_0;
    var_2.fontscale = var_1;
    var_2.x = 0;
    var_2.y = 0;
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
    var_2.font = var_0;
    var_2.fontscale = var_1;
    var_2.x = 0;
    var_2.y = 0;
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
    var_2.font = var_0;
    var_2.fontscale = var_1;
    var_2.x = 0;
    var_2.y = 0;
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
    var_0.x = 0;
    var_0.y = 0;
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
    var_7.alignx = "center";
    var_7.aligny = "bottom";
    var_7.horzalign = "center";
    var_7.vertalign = "bottom";
    var_7.x = var_0;
    var_7.y = var_1 + 1;
    var_7.alpha = 0.9;
    var_7 setshader( var_5, var_2, var_3 );
    var_7.sort = -2;
    var_8 = newhudelem();
    var_8 setshader( var_6, 10, 0 );
    var_8.alignx = "right";
    var_8.aligny = "bottom";
    var_8.horzalign = "right";
    var_8.vertalign = "bottom";
    var_8._ID51345 = 1;
    var_8._ID50134 = -2;
    var_8.color = ( 1, 0.9, 0.1 );
    var_8.alpha = 0.9;
    var_8.sort = 0;
    var_8._ID14859 = 0.25;
    var_8._ID33685 = var_6;
    var_9 = newhudelem();
    var_9._ID12329 = "bar";
    var_9.alignx = "center";
    var_9.aligny = "bottom";
    var_9.horzalign = "center";
    var_9.vertalign = "bottom";
    var_9.x = var_0;
    var_9.y = var_1 + 1;
    var_9.alpha = 0.3;
    var_9 setshader( var_4, var_2, var_3 );
    var_9.sort = -1;
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
    var_5.x = 2;
    var_5.y = 2;
    var_5._ID14859 = 0.25;
    var_5._ID33685 = var_0;
    var_5.sort = -1;
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
    var_6.x = 0;
    var_6.y = 0;
    var_6._ID1319 = var_2;
    var_6._ID488 = var_3;
    var_6._ID41890 = 0;
    var_6._ID41917 = 0;
    var_6._ID4830 = var_5;
    var_6._ID7488 = [];
    var_6._ID41894 = 2;
    var_6._ID41920 = 2;
    var_6.sort = -2;
    var_6.alpha = 0.5;
    var_6 _ID32735( level._ID39415 );
    var_6 setshader( var_1, var_2, var_3 );
    return var_6;
}

_ID9203( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_0 = _ID42237::_ID37527( isdefined( var_0 ), var_0, level.player );
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
    var_7.x = 0 - var_5;
    var_7.y = 0 - var_6;
    var_7._ID14859 = 0.25;
    var_7._ID33685 = var_0;
    var_7.sort = -1;
    var_7 setshader( var_0, var_2 - var_5 * 2, var_3 - var_6 * 2 );

    if ( isdefined( var_4 ) )
    {
        var_7._ID14517 = var_4;
        var_7 thread _ID14537();
    }

    var_8 = newclienthudelem( self );
    var_8._ID12329 = "bar";
    var_8.x = 0;
    var_8.y = 0;
    var_8._ID1319 = var_2;
    var_8._ID488 = var_3;
    var_8._ID41890 = -1 * var_5;
    var_8._ID41917 = 0;
    var_8._ID4830 = var_7;
    var_8._ID7488 = [];
    var_8._ID41894 = var_5;
    var_8._ID41920 = var_6;
    var_8.sort = -2;
    var_8.alpha = 0.5;
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

    self.alpha = var_0;

    if ( isdefined( var_1 ) && var_1 > 0 )
        wait(var_1);
}

_ID14537()
{
    self endon( "death" );
    self.alpha = 1;

    for (;;)
    {
        if ( self._ID14859 >= self._ID14517 )
        {
            self fadeovertime( 0.3 );
            self.alpha = 0.2;
            wait 0.35;
            self fadeovertime( 0.3 );
            self.alpha = 1;
            wait 0.7;
            continue;
        }

        self.alpha = 1;
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

    var_0.alpha = 0;
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
    level._ID18678.sort = 1;
    level._ID18678.hidewheninmenu = 1;
    level._ID18678.hidewhendead = 1;
    level._ID45408 _ID32753( "TOP", undefined, 0, var_6 + var_1 );
    level._ID45408.sort = 1;
    level._ID45408.hidewheninmenu = 1;
    level._ID45408.hidewhendead = 1;
    level._ID52830 _ID32753( "TOP", undefined, 0, var_6 + var_1 + var_7 );
    level._ID52830.sort = 1;
    level._ID52830.hidewheninmenu = 1;
    level._ID52830.hidewhendead = 1;

    if ( var_2 == 0 )
    {
        level._ID18678.alpha = 0.9;
        level._ID45408.alpha = 0.05;
        level._ID52830.alpha = 0.05;
    }
    else
    {
        level._ID18678.alpha = 0;
        level._ID18678 fadeovertime( var_2 );
        level._ID18678.alpha = 0.9;
        level._ID45408.alpha = 0;
        level._ID45408 fadeovertime( var_2 );
        level._ID45408.alpha = 0.05;
        level._ID52830.alpha = 0;
        level._ID52830 fadeovertime( var_2 );
        level._ID52830.alpha = 0.05;
    }
}

_ID43145( var_0 )
{
    if ( isdefined( level._ID18678 ) )
    {
        if ( var_0 > 0 )
            level._ID18678 fadeovertime( var_0 );

        level._ID18678.alpha = 0;
    }

    if ( isdefined( level._ID45408 ) )
    {
        if ( var_0 > 0 )
            level._ID45408 fadeovertime( var_0 );

        level._ID45408.alpha = 0;
    }

    if ( isdefined( level._ID52830 ) )
    {
        if ( var_0 > 0 )
            level._ID52830 fadeovertime( var_0 );

        level._ID52830.alpha = 0;
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
    var_7[0].x = var_0;
    var_7[0].y = var_1;
    var_7[0] setshader( var_5, var_2, var_3 );
    var_7[0].alignx = "right";
    var_7[0].aligny = "top";
    var_7[0].sort = 1;
    var_7[0].foreground = 0;
    var_7[0].horzalign = "right_adjustable";
    var_7[0].vertalign = "top_adjustable";
    var_7[0].alpha = 0.9;
    var_7[0].hidewheninmenu = 1;
    var_7[0].hidewhendead = 1;
    var_7[1] = newhudelem();
    var_7[1].x = var_0;
    var_7[1].y = var_1;
    var_7[1] setshader( var_6, var_2, var_3 );
    var_7[1].alignx = "right";
    var_7[1].aligny = "top";
    var_7[1].sort = 2;
    var_7[1].foreground = 0;
    var_7[1].horzalign = "right_adjustable";
    var_7[1].vertalign = "top_adjustable";
    var_7[1].alpha = 0.1;
    var_7[1].hidewheninmenu = 1;
    var_7[1].hidewhendead = 1;
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

    var_11.alignx = "left";
    var_11.aligny = "middle";
    var_11.horzalign = "right_adjustable";
    var_11.vertalign = "top_adjustable";
    var_11.x = var_9;
    var_11.y = var_10;

    if ( _ID42407::_ID3270() )
    {
        var_11.alignx = "left";
        var_11.aligny = "top";
        var_11.horzalign = "right";
        var_11.vertalign = "top";
        var_11.y = 0;
    }

    var_11.fontscale = var_4;
    var_11.color = var_8;
    var_11.font = "timer";
    var_11.glowcolor = ( 0, 0, 0 );
    var_11.glowalpha = 0;
    var_11.foreground = 1;
    var_11.hidewheninmenu = 1;
    var_11.hidewhendead = 1;

    if ( isdefined( var_7 ) )
    {
        var_11.label = var_5;
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
        var_0.color = var_2;
        wait(var_1);
        var_0.color = var_3;
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
    var_17.x = var_0;
    var_17.y = var_1 - 8;
    var_17 setshader( "h1_timer_on_flare", 0, var_4 );
    var_17.alignx = "center";
    var_17.color = var_16;
    var_17.aligny = "top";
    var_17.sort = 1;
    var_17.foreground = 0;
    var_17.horzalign = "center_adjustable";
    var_17.vertalign = "top_adjustable";
    var_17.hidewheninmenu = 1;
    var_17.hidewhendead = 1;
    var_17.alpha = 1;
    var_2 -= 0.05;
    wait 0.05;

    if ( var_2 > var_6 )
    {
        var_17 scaleovertime( var_15, var_8, var_4 );
        var_2 -= var_9;
        wait(var_9);
        var_17 fadeovertime( var_10 );
        var_17.alpha = 0;
        var_2 -= var_10;
        wait(var_10);
        var_18 = var_2 - var_6;
        var_2 -= var_18;
        wait(var_18);
        var_17 scaleovertime( 0.05, 0, var_4 );
        var_2 -= 0.05;
        wait 0.05;
    }

    var_3.color = var_14;
    var_17.color = var_14;
    var_17.alpha = 1;
    var_17 scaleovertime( var_15, var_8, var_4 );
    var_2 -= var_9;
    wait(var_9);
    var_17 fadeovertime( var_10 );
    var_17.alpha = 0;
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

    var_8.alignx = "center";
    var_8.aligny = "top";
    var_8.horzalign = "center_adjustable";
    var_8.vertalign = "top_adjustable";
    var_8.x = var_6;

    switch ( getdvarint( "loc_language" ) )
    {
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 15:
            var_8.y = var_7 + 18;
            break;
        default:
            var_8.y = var_7 + 16;
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

    var_8.fontscale = 0.75;
    var_8.color = ( 1, 1, 1 );
    var_8.font = "timer";
    var_8.glowcolor = ( 0, 0, 0 );
    var_8.glowalpha = 0;
    var_8.foreground = 1;
    var_8.hidewheninmenu = 1;
    var_8.hidewhendead = 1;
    var_8._ID37557 = newhudelem();
    var_8._ID37557.alignx = "center";
    var_8._ID37557.aligny = "top";
    var_8._ID37557.horzalign = "center_adjustable";
    var_8._ID37557.vertalign = "top_adjustable";
    var_8._ID37557.x = var_6;
    var_8._ID37557.y = var_7 + 8;
    var_8._ID37557.fontscale = 0.45;
    var_8._ID37557.color = ( 1, 1, 1 );
    var_8._ID37557.font = "timer";
    var_8._ID37557.glowcolor = ( 0, 0, 0 );
    var_8._ID37557.glowalpha = 0;
    var_8._ID37557.foreground = 1;
    var_8._ID37557.hidewheninmenu = 1;
    var_8._ID37557.hidewhendead = 1;
    var_8._ID43415 = newhudelem();
    var_8._ID43415.x = var_6;
    var_8._ID43415.y = var_7;
    var_8._ID43415 setshader( "h1_hud_timer_blur", var_10, 57 );
    var_8._ID43415.alignx = "center";
    var_8._ID43415.aligny = "top";
    var_8._ID43415.sort = 1;
    var_8._ID43415.foreground = 0;
    var_8._ID43415.horzalign = "center_adjustable";
    var_8._ID43415.vertalign = "top_adjustable";
    var_8._ID43415.alpha = 0.9;
    var_8._ID43415.hidewheninmenu = 1;
    var_8._ID43415.hidewhendead = 1;
    var_8._ID45634 = newhudelem();
    var_8._ID45634.x = var_6;
    var_8._ID45634.y = var_7;
    var_8._ID45634 setshader( "h1_hud_timer_border", var_10, 57 );
    var_8._ID45634.alignx = "center";
    var_8._ID45634.aligny = "top";
    var_8._ID45634.sort = 1;
    var_8._ID45634.foreground = 0;
    var_8._ID45634.horzalign = "center_adjustable";
    var_8._ID45634.vertalign = "top_adjustable";
    var_8._ID45634.alpha = 0.1;
    var_8._ID45634.hidewheninmenu = 1;
    var_8._ID45634.hidewhendead = 1;

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
    level._ID37750._ID37557.label = var_1;
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
        level.player thread _ID42407::_ID27079( "countdown_beep" );
        level notify( "timer_tick" );
    }

    for (;;)
    {
        wait 0.5;
        level.player thread _ID42407::_ID27079( "countdown_beep" );
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

    var_6.alignx = "right";
    var_6.aligny = "middle";
    var_6.horzalign = "right";
    var_6.vertalign = "top";
    var_6.x = var_4;
    var_6.y = var_5;
    var_6.fontscale = 1.6;
    var_6.color = ( 0.8, 1, 0.8 );
    var_6.font = "objective";
    var_6.glowcolor = ( 0.26, 0.65, 0.32 );
    var_6.glowalpha = 0.2;
    var_6.foreground = 1;
    var_6.hidewheninmenu = 1;
    var_6.hidewhendead = 1;
    return var_6;
}

_ID9125( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) )
        var_3 = newclienthudelem( var_2 );
    else
        var_3 = newhudelem();

    var_3.x = 0;
    var_3.y = 0;
    var_3 setshader( var_0, 640, 480 );
    var_3.alignx = "left";
    var_3.aligny = "top";
    var_3.sort = 1;
    var_3.horzalign = "fullscreen";
    var_3.vertalign = "fullscreen";
    var_3.alpha = var_1;
    var_3.foreground = 1;
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

    var_6.x = var_2;
    var_6.y = var_3;
    var_6 setshader( var_0, int( 640 * var_4 ), int( 480 * var_4 ) );
    var_6.alignx = "center";
    var_6.aligny = "middle";
    var_6.sort = 1;
    var_6.horzalign = "center";
    var_6.vertalign = "middle";
    var_6.alpha = var_1;
    var_6.foreground = 1;
    return var_6;
}

_ID9127( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _ID42407::_ID15912();
    var_6 = newclienthudelem( var_5 );

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    var_6.x = var_2;
    var_6.y = var_3;
    var_6 setshader( var_0, int( 640 * var_4 ), int( 480 * var_4 ) );
    var_6.alignx = "center";
    var_6.aligny = "middle";
    var_6.sort = 1;
    var_6.horzalign = "fullscreen";
    var_6.vertalign = "fullscreen";
    var_6.alpha = var_1;
    var_6.foreground = 1;
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
        var_11.alignx = "left";
        var_11.aligny = "top";
        var_11.x = 0;
        var_11.y = 0;
        var_11 setshader( var_0, var_2, var_3 );
        var_11.sort = 1;
        var_11.horzalign = "fullscreen";
        var_11.vertalign = "fullscreen";
        var_11.alpha = var_1;
        var_11.foreground = 1;
    }

    var_7.x = 640 - var_2;
    var_7.rotation = 90;
    var_8.rotation = 270;
    var_8.y = 480 - var_3;
    var_9.x = 640 - var_2;
    var_9.y = 480 - var_3;
    var_9.rotation = 180;
    return var_5;
}

_ID13791( var_0, var_1 )
{
    if ( level._ID23777 )
        return;

    if ( !isdefined( var_0 ) )
        var_0 = 0.3;

    var_2 = _ID15878( var_1 );
    var_2.alpha = 1;
    var_2 fadeovertime( var_0 );
    var_2.alpha = 0;
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

    var_2.alpha = 1;
    wait(var_0);
}

_ID35878( var_0 )
{
    var_1 = _ID15878( var_0 );
    var_1.alpha = 1;
}

_ID15894( var_0 )
{
    if ( isplayernumber( self ) )
        var_1 = self;
    else
        var_1 = level.player;

    if ( !isdefined( var_1._ID26105 ) )
        var_1._ID26105 = [];

    if ( !isdefined( var_1._ID26105[var_0] ) )
        var_1._ID26105[var_0] = _ID9125( var_0, 0, var_1 );

    var_1._ID26105[var_0].sort = 0;
    var_1._ID26105[var_0].foreground = 1;
    return var_1._ID26105[var_0];
}

_ID52324( var_0, var_1, var_2 )
{
    if ( !_ID42407::_ID13023( "kill_custom_nameplate" ) )
        _ID42407::_ID13024( "kill_custom_nameplate" );

    var_3 = undefined;

    if ( isdefined( var_1 ) )
        var_3 = var_1;
    else if ( isdefined( self.name ) )
        var_3 = self.name;

    var_4 = undefined;

    if ( isdefined( var_2 ) )
        var_4 = var_2;
    else if ( isdefined( self.team ) )
        var_4 = self.team;

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

    if ( distancesquared( level.player.origin, self.origin ) > var_0 * var_0 )
        return 0;

    var_1 = level.player geteye();
    var_2 = level.player getplayerangles();
    var_3 = self.origin + ( 0, 0, 15 );

    if ( isdefined( self.model ) && _ID42407::_ID18252( self.model, "tag_eye" ) )
        var_3 = self gettagorigin( "tag_eye" ) + ( 0, 0, -8 );

    if ( !_ID42237::_ID41802( var_1, var_2, var_3, cos( 65 ) ) )
        return 0;

    var_3 = var_1 + var_0 * 2 * anglestoforward( var_2 );
    var_4 = bullettrace( var_1, var_3, 1, level.player );
    return isdefined( var_4["entity"] ) && var_4["entity"] == self;
}

_ID43777( var_0, var_1 )
{
    var_2 = 0.25;
    var_3 = 25.0;
    var_4 = -2.0;
    var_5 = newhudelem();
    var_5.alignx = "left";
    var_5.aligny = "bottom";
    var_5.horzalign = "center";
    var_5.vertalign = "middle";
    var_5.x = var_3;
    var_5.y = var_4;
    var_5.fontscale = getdvarfloat( "friendlyNameFontSize" ) / var_2;
    var_5.font = "nameplate";
    var_5.label = var_0;
    var_6 = _ID54643( "hostileNameFontColor" );
    var_7 = _ID54643( "hostileNameFontGlowColor" );
    var_8 = _ID54643( "friendlyNameFontColor" );
    var_9 = _ID54643( "friendlyNameFontGlowColor" );

    if ( var_1 == "axis" )
    {
        var_5.color = ( var_6[0], var_6[1], var_6[2] );
        var_5.alpha = var_6[3];
        var_5.glowcolor = ( var_7[0], var_7[1], var_7[2] );
        var_5.glowalpha = var_7[3];
    }
    else
    {
        var_5.color = ( var_8[0], var_8[1], var_8[2] );
        var_5.alpha = var_8[3];
        var_5.glowcolor = ( var_9[0], var_9[1], var_9[2] );
        var_5.glowalpha = var_9[3];
    }

    var_5.foreground = 1;
    var_5.hidewheninmenu = 1;
    var_5.hidewhendead = 1;
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
