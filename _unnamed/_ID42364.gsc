// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID3097( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        return;

    if ( _func_0D3( var_0 ) )
    {
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            var_1 = var_3._ID70;
            var_3 thread _unknown_0042( var_1, self );
        }

        var_clear_2
        var_clear_0
    }
    else
    {
        if ( !_func_02F( var_1 ) )
            var_1 = var_0._ID70;

        var_0 _unknown_005E( var_1, self );
    }
}

_ID19288( var_0, var_1 )
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    if ( _unknown_009D( var_0 ) )
    {
        if ( _func_1A7( self ) && self._ID22147 == "generic" )
            var_1 _ID42259::_ID3025( self, var_0, "stop_loop" );
        else if ( _func_1A7( self ) )
            var_1 _ID42259::_ID3044( self, var_0, "stop_loop" );
    }
    else if ( _func_1A7( self ) && _func_02F( self._ID3189 ) && self._ID3189 != "generic" )
        var_1 _ID42259::_ID3111( self, var_0 );
    else if ( _func_1A7( self ) )
        var_1 _ID42259::_ID3020( self, var_0 );

    self notify( "anim_simple_done",  var_0  );
}

_ID20668( var_0 )
{
    if ( _unknown_011C( var_0, "generic" ) )
        return 1;
    else if ( _func_02F( self._ID3189 ) && _unknown_0132( var_0, self._ID3189 ) )
        return 1;

    return 0;
}

_ID20669( var_0, var_1 )
{
    if ( _func_0D3( level._ID30895[var_1] ) )
    {
        if ( _func_0D3( level._ID30895[var_1][var_0] ) )
        {
            if ( _func_02F( level._ID30895[var_1][var_0][0] ) )
            {
                self._ID22147 = var_1;
                return 1;
            }
        }
    }

    return 0;
}

_ID25112( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
    {
        level notify( var_1 );
        return;
    }

    if ( _func_0D3( var_0 ) )
    {
        while ( _func_02F( var_0 ) && var_0.size > 0 )
        {
            var_0 = _ID42407::_ID3330( var_0 );
            var_0 = _ID42237::_ID3332( var_0 );
            waittillframeend;
        }
    }
    else
        var_0 waittill( "death" );

    level notify( var_1 );
}

_ID17362( var_0, var_1, var_2 )
{
    var_3 = _func_03D() * 0.001;

    while ( self._ID740[2] > var_1[2] )
    {
        var_4 = var_2 * 0.5;
        var_5 = 1 * var_4 / 2;
        var_6 = _func_03D() * 0.001 - var_3;
        self._ID740 = self._ID740 + ( 0, 0, var_5 * var_6 - 0.5 * var_4 * _func_0ED( var_6 ) );
        waittillframeend;
    }
}

_ID17363( var_0, var_1, var_2 )
{
    var_3 = var_2 * 0.5;
    var_4 = 1;
    var_5 = _func_03D() * 0.001 - var_0;
    var_6 = var_4 * var_5 - 0.5 * var_3 * _func_0ED( var_5 );
    return ( 0, 0, var_6 );
}

_ID17361( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );
    var_5 = _func_03D() * 0.001;

    if ( _func_02F( self ) && !_func_02F( self._ID3231 ) )
        self._ID3231 = 0;

    while ( _func_02F( self ) && _func_03D() * 0.001 <= var_5 + var_2 )
    {
        self._ID21875 = self._ID740[2];
        self._ID740 = _unknown_02C1( var_5, var_0, var_1, var_2, var_3, var_4 );

        if ( self._ID740[2] < self._ID21875 )
            self._ID3231 = 1;

        wait 0.05;
    }

    self notify( "item_landed" );
}

_ID3268( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_4 ) )
        var_4 = 386;

    if ( !_func_02F( var_5 ) )
        var_5 = 386;

    var_7 = var_4;

    if ( self._ID3231 )
        var_7 = var_5;

    var_8 = var_7 * 0.5;
    var_6 = var_3 * var_8 / 2;
    var_9 = _func_03D() * 0.001 - var_0;
    var_10 = var_6 * var_9 - 0.5 * var_8 * _func_0ED( var_9 );
    var_11 = _ID42407::_ID22382( var_9 / var_3, var_1, var_2 ) + ( 0, 0, var_10 );
    return var_11;
}

_ID3135( var_0, var_1, var_2 )
{
    if ( _func_02F( var_0 ) )
        var_0 _ID42407::_ID3136();

    _ID42407::_ID3136();

    if ( _func_02F( var_0 ) )
        var_0 notify( "stop_first_frame" );

    self notify( "stop_first_frame" );

    if ( _func_02F( var_2 ) && var_2 && _func_02F( var_0 ) )
        var_0 _meth_80B7();
}

_ID12578( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = [ self ];

    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID22674 ) && var_2._ID22674 > 0 )
            var_2._ID22674 = 0;

        if ( _func_02F( var_2._ID22653 ) && var_2._ID22653.size > 0 )
            var_2._ID22653 = [];
    }

    var_clear_2
    var_clear_0
}

_ID29538()
{
    if ( _func_02F( level._ID9455 ) )
        level._ID9455 _meth_808F();
}

_ID18511()
{
    if ( _func_02F( level._ID9455 ) )
        level._ID9455._ID55 = 0;
}

_ID3098( var_0, var_1, var_2 )
{
    level waittill( var_2 );

    if ( _func_02F( var_0._ID3189 ) && var_0._ID3189 != "generic" )
        var_0 _ID42259::_ID32556();

    _unknown_0351( var_0, var_1 );
}

_ID20993( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( var_0._ID486 < 1 )
        return 0;

    return 1;
}

_ID41742( var_0, var_1, var_2 )
{
    var_3 = self;

    if ( !_func_1B3( var_3 ) )
        var_3 = level._ID794;

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    var_4 = _func_1B0( var_3 );
    var_4 _meth_80D3( "white", 1280, 720 );
    var_4._ID499 = "fullscreen";
    var_4._ID1284 = "fullscreen";
    var_4._ID55 = var_2;
    wait(var_0);
    var_4 _meth_808B( var_1 );
    var_4._ID55 = 0;
}

_ID13805( var_0, var_1, var_2, var_3 )
{
    var_4 = self;

    if ( !_func_1B3( var_4 ) )
        var_4 = level._ID794;

    var_4._ID4468 = _func_1B0( var_4 );
    var_4._ID4468 _meth_80D3( "black", 1280, 720 );
    var_4._ID4468._ID499 = "fullscreen";
    var_4._ID4468._ID1284 = "fullscreen";
    var_4._ID4468._ID55 = var_2;
    wait(var_0);
    var_4._ID4468 _meth_808B( var_1 );
    var_4._ID4468._ID55 = var_3;
}

_ID9175( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( _func_145() )
        var_0 += 2;

    var_7 = undefined;

    if ( _func_02F( var_3 ) )
        var_7 = _unknown_05A2( -60, undefined, var_3, 1, var_4, var_5 );
    else
        var_7 = _unknown_05B0( -60, undefined, undefined, 1, var_4, var_5 );

    var_8 = var_7 _unknown_05FF( var_0, var_1 );
    var_8._ID578 = var_2;
    return var_8;
}

_ID15939( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    var_6 = undefined;

    if ( !level._ID8534 )
        var_6 = -250;
    else if ( !_func_02F( var_0 ) )
        var_6 = -225;
    else
        var_6 = var_0;

    if ( var_3 )
        var_6 = var_0;

    if ( !_func_02F( var_1 ) )
        var_7 = 100;
    else
        var_7 = var_1;

    if ( _func_02F( var_2 ) )
        var_8 = _func_1B0( var_2 );
    else
        var_8 = _func_1AF();

    if ( !_func_02F( var_4 ) )
        var_4 = ( 0.8, 1, 0.8 );

    if ( !_func_02F( var_5 ) )
        var_5 = ( 0.3, 0.6, 0.3 );

    var_8._ID44 = "left";
    var_8._ID45 = "middle";
    var_8._ID499 = "right";
    var_8._ID1284 = "top";
    var_8._ID1331 = var_6;
    var_8._ID1339 = var_7;
    var_8._ID393 = 1.6;
    var_8._ID196 = var_4;
    var_8._ID392 = "objective";
    var_8._ID445 = var_5;
    var_8._ID444 = 1;
    var_8._ID408 = 1;
    var_8._ID493 = 0;
    var_8._ID491 = 1;
    return var_8;
}

_ID19169( var_0, var_1 )
{
    self._ID44 = "center";
    self._ID45 = "top";
    self._ID499 = "center";
    self._ID1284 = "middle";
    self._ID1331 = var_1;
    self._ID1339 = -160 + 15 * var_0;
    self._ID392 = "objective";
    self._ID408 = 1;
    self._ID493 = 1;
    self._ID491 = 1;
    self._ID983 = 2;
    self._ID393 = 1.15;
    return self;
}

_ID35165( var_0 )
{
    if ( !_func_02F( level._ID24148 ) )
        level._ID24148 = [];

    var_1 = _ID42237::_ID35164();
    var_1 _unknown_0774( self );

    if ( _func_02F( var_0 ) )
        var_1._ID37058 = var_0;

    level._ID24148[level._ID24148.size] = var_1;
    level._ID24148 = _ID42237::_ID3332( level._ID24148 );
    _func_19E( level._ID24148.size );
    return var_1;
}

_ID29550( var_0 )
{
    if ( _func_02F( level._ID24148 ) )
    {
        var_1 = 0;
        var_2 = level._ID24148;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _func_02F( var_3._ID37058 ) && var_3._ID37058 == var_0 )
            {
                var_3 _meth_80B7();
                var_1++;
            }
        }

        var_clear_2
        var_clear_0
        _func_19E( var_1 );
    }
}

_ID2973( var_0 )
{
    if ( _func_02F( var_0._ID740 ) )
        self._ID740 = var_0._ID740;

    if ( _func_02F( var_0._ID65 ) )
        self._ID65 = var_0._ID65;
}

_ID3299( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    var_9 = _ID42237::_ID3296( var_0, var_1 );

    if ( _func_02F( var_2 ) )
        var_9 = _ID42237::_ID3296( var_9, var_2 );

    if ( _func_02F( var_3 ) )
        var_9 = _ID42237::_ID3296( var_9, var_3 );

    if ( _func_02F( var_4 ) )
        var_9 = _ID42237::_ID3296( var_9, var_4 );

    if ( _func_02F( var_5 ) )
        var_9 = _ID42237::_ID3296( var_9, var_5 );

    if ( _func_02F( var_6 ) )
        var_9 = _ID42237::_ID3296( var_9, var_6 );

    if ( _func_02F( var_7 ) )
        var_9 = _ID42237::_ID3296( var_9, var_7 );

    if ( _func_02F( var_8 ) )
        var_9 = _ID42237::_ID3296( var_9, var_8 );

    return var_9;
}

_ID22190( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_4 = _func_0F3( var_0, self._ID740 );
    var_5 = 0;
    var_6 = self._ID740;

    while ( var_5 < var_4 )
    {
        var_7 = _unknown_08D9( self._ID740, var_0, var_1, var_2 );

        if ( var_7 == 0 )
            break;

        self._ID740 = _func_11C( self._ID740, var_0, var_7 );

        if ( _func_02F( var_3 ) )
            self._ID65 = self._ID65 + var_3;

        var_5 = _func_0F3( self._ID740, var_6 );
        waittillframeend;
    }

    self notify( "lerp_complete" );
}

_ID16385( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_0F3( var_0, var_1 );

    if ( var_2 == 0 || var_4 == 0 )
        return 0;

    var_5 = var_2 / var_4 * 0.05;

    if ( var_5 > 0 )
        return var_5;
    else
        return 0;
}

_ID16514( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 1;

    if ( !_func_02F( var_4 ) )
    {
        var_5 = 10;
        var_6 = 20;
        var_7 = 30;
    }
    else
    {
        var_5 = var_4;
        var_6 = var_4 + 10;
        var_7 = var_4 + 20;
    }

    var_8 = ( _func_107( _func_03D() * 0.001 * 0.05, var_5, var_0, var_1, var_2 ) * var_3, _func_107( _func_03D() * 0.001 * 0.05, var_6, var_0, var_1, var_2 ) * var_3, _func_107( _func_03D() * 0.001 * 0.05, var_7, var_0, var_1, var_2 ) * var_3 );
    return var_8;
}

_ID2976( var_0 )
{
    if ( _func_02F( var_0._ID740 ) )
        self._ID740 = var_0._ID740;

    if ( _func_02F( var_0._ID65 ) )
        self._ID65 = var_0._ID65;
}

_ID10239()
{
    self waittill( "goal" );
    self _meth_80B7();
}

_ID10244()
{
    if ( !_func_02F( self ) )
        return;

    self _meth_80B7();
}

_ID26569( var_0 )
{
    if ( _func_0B7( 100 ) <= var_0 )
        return 1;

    return 0;
}

_ID1839( var_0 )
{
    if ( !_func_02F( self._ID216 ) || self._ID216 < 1 )
        self._ID216 = 1;

    var_1 = _ID42407::_ID35014( 1 );
    _ID42407::_ID35060( var_1 );

    if ( _func_02F( var_0 ) )
    {
        while ( !_func_02F( var_1 ) )
        {
            self._ID216 = 1;
            var_1 = _ID42407::_ID35014( 1 );
            _ID42407::_ID35060( var_1 );
            waittillframeend;
        }
    }

    return var_1;
}

_ID35055( var_0, var_1, var_2 )
{
    if ( _func_0D3( var_1 ) )
        var_3 = var_1;
    else
        var_3[0] = var_1;

    var_4 = [];

    for ( var_5 = 0; var_5 < var_0; var_5++ )
    {
        var_6 = _ID42237::_ID28945( var_3 );
        var_7 = var_6 _unknown_0A96();

        if ( !_func_02F( var_7 ) )
            continue;

        if ( _func_02F( var_2 ) )
            var_7 _meth_81B5( var_2 );

        var_4[var_4.size] = var_7;
        wait 0.1;
    }

    return var_4;
}

_ID38921( var_0, var_1 )
{
    _ID36588( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = var_0;

    level notify( var_1 );
}

_ID36588( var_0, var_1, var_2, var_3 )
{
    self waittill( var_3 );

    if ( _func_02F( var_1 ) )
        _func_158( var_0, var_1, var_2 );
}

_ID36590( var_0, var_1, var_2, var_3 )
{
    wait(var_3);

    if ( _func_02F( var_1 ) )
        _func_158( var_0, var_1, var_2 );
}

_ID41157( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );

    if ( !_func_02F( var_1 ) )
        var_1 = _func_1A1( var_0, "script_noteworthy" );

    if ( !_func_02F( var_1 ) )
        return;

    var_1 waittill( "trigger" );
}

_ID19457( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 300;

    var_4 = [];
    var_5 = var_0;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _func_0F3( var_6._ID740, var_2 ) < var_1 )
            var_4[var_4.size] = var_6;
    }

    var_clear_2
    var_clear_0

    if ( var_4.size <= 0 )
        return;

    var_4 = _func_1C0( var_4, var_2 );
    var_8 = var_2;
    var_9 = var_4;

    for ( var_13 = _func_1DA( var_9 ); _func_02F( var_13 ); var_13 = _func_1BF( var_9, var_13 ) )
    {
        var_6 = var_9[var_13];

        if ( !_func_02F( var_6 ) )
            continue;

        if ( var_6 _ID42411::_ID20992() )
        {
            var_6 _meth_8057( var_6._ID486 * 2, var_2 );
            continue;
        }

        var_10 = _func_0F3( var_8, var_6._ID740 );
        var_11 = var_10 / var_3 * 0.05;
        wait(var_11);
        var_8 = var_6._ID740;
        var_12 = _func_119( var_6 _meth_818C( "tag_eye" ) - var_2 );
        var_12 = _func_119( var_12 + ( 0, 0, 0.2 ) );
        var_6 _meth_8024( "torso_lower", var_12 * 7000 );
        var_6 thread _ID42237::_ID10192( 2, ::_meth_8058 );
    }

    var_clear_4
    var_clear_0
}

_ID34966( var_0, var_1 )
{
    return _func_1C0( var_0, var_1, 0, 1 );
}

_ID32285( var_0 )
{
    if ( !_ID42407::_ID13023( var_0 ) )
        _ID42407::_ID13024( var_0 );

    self waittill( var_0 );
    _ID42407::_ID13019( var_0 );
}

_ID38920( var_0, var_1 )
{
    if ( !_ID42237::_ID14396( var_1 ) )
        _ID42237::_ID14400( var_1 );

    var_2 = _func_1A2( var_0, "targetname" );
    var_2[0] waittill( "trigger" );
    _ID42237::_ID14402( var_1 );
}

_ID14423( var_0, var_1 )
{
    var_2 = _func_0B8( 1000.0 );
    var_3 = "flag_or_timeout" + var_2;
    level endon( var_3 );
    level thread _ID42407::_ID25088( var_3, var_1 );
    _ID42237::_ID14413( var_0 );
}

_ID21364()
{
    self endon( "death" );
    self waittill( "bad_path" );

    if ( !_func_02F( self._ID10229 ) || !self._ID10229 )
        self _meth_8058();
}

_ID25471( var_0, var_1, var_2 )
{
    var_3 = self _meth_818D( var_1 );
    var_4 = self _meth_818C( var_1 );

    if ( var_0 == "up" )
        return var_4 + _func_11D( var_3 ) * var_2;

    if ( var_0 == "down" )
        return var_4 + _func_11D( var_3 ) * var_2 * -1;

    if ( var_0 == "right" )
        return var_4 + _func_11E( var_3 ) * var_2;

    if ( var_0 == "left" )
        return var_4 + _func_11E( var_3 ) * var_2 * -1;

    if ( var_0 == "forward" )
        return var_4 + _func_11F( var_3 ) * var_2;

    if ( var_0 == "backward" )
        return var_4 + _func_11F( var_3 ) * var_2 * -1;

    if ( var_0 == "backwardright" )
    {
        var_4 += _func_11E( var_3 ) * var_2;
        return var_4 + _func_11F( var_3 ) * var_2 * -1;
    }

    if ( var_0 == "backwardleft" )
    {
        var_4 += _func_11E( var_3 ) * var_2 * -1;
        return var_4 + _func_11F( var_3 ) * var_2 * -1;
    }

    if ( var_0 == "forwardright" )
    {
        var_4 += _func_11E( var_3 ) * var_2 * 1;
        return var_4 + _func_11F( var_3 ) * var_2;
    }

    if ( var_0 == "forwardleft" )
    {
        var_4 += _func_11E( var_3 ) * var_2 * -1;
        return var_4 + _func_11F( var_3 ) * var_2;
    }
}

_ID16184( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 500000;

    var_3 = undefined;
    var_4 = var_1;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];

        if ( !_func_02F( var_5 ) )
            continue;

        var_6 = _func_0F3( var_5._ID740, var_0 );

        if ( var_6 >= var_2 )
            continue;

        var_2 = var_6;
        var_3 = var_5;
    }

    var_clear_3
    var_clear_0
    return var_3;
}

_ID16677( var_0, var_1 )
{
    var_2 = _func_1A1( var_0, var_1 );

    if ( _func_02F( var_2 ) )
        return var_2;

    var_2 = _ID42237::_ID16638( var_0, var_1 );

    if ( _func_02F( var_2 ) )
        return var_2;

    var_2 = _func_0C8( var_0, var_1 );

    if ( _func_02F( var_2 ) )
        return var_2;

    var_2 = _func_1F2( var_0, var_1 );

    if ( _func_02F( var_2 ) )
        return var_2;
}

_ID16678( var_0, var_1 )
{
    var_2 = _func_1A2( var_0, var_1 );

    if ( var_2.size > 0 )
        return var_2;

    var_2 = _ID42237::_ID16640( var_0, var_1 );

    if ( var_2.size > 0 )
        return var_2;

    var_2 = _func_0C9( var_0, var_1 );

    if ( var_2.size > 0 )
        return var_2;

    var_2 = _func_1F3( var_0, var_1 );

    if ( var_2.size > 0 )
        return var_2;
}

_ID22809( var_0 )
{
    var_1 = _ID42372::_ID35268( var_0 );
    var_1._ID3189 = "generic";
    var_1 _ID42407::_ID17509();
    return var_1;
}

_ID20402( var_0, var_1 )
{
    if ( !_func_02F( level._ID794._ID36744 ) )
    {
        level._ID794._ID36744 = [];
        level._ID36743 = 0;
    }

    var_2 = _func_1B0( level._ID794 );
    var_2._ID1331 = 320;
    var_2._ID1339 = 325;
    var_2._ID44 = "center";
    var_2._ID45 = "middle";
    var_2._ID393 = 1.5;
    var_2 _meth_80D1( var_0 );
    var_2._ID55 = 0;
    var_2._ID196 = ( 1, 1, 1 );
    var_2._ID445 = ( 0.6, 0.6, 0.9 );
    var_2._ID444 = 0.4;
    var_2._ID983 = -10;
    var_2._ID392 = "objective";
    level._ID794._ID36744[level._ID794._ID36744.size] = var_2;
    level notify( "new_subtitle_created" );
    level._ID794 thread _unknown_105D( 10, var_2, level._ID36743 );
    level._ID794 thread _unknown_1043( var_2, level._ID36743 );
    level._ID36743 = level._ID36743 + 1 % 10;

    if ( _func_02F( var_1 ) )
        wait(var_1);
}

_ID34037( var_0, var_1 )
{
    var_2 = "delete_subtitle_hud" + var_1;
    var_3 = 0;
    var_4 = 19;
    var_0 _meth_808B( 0.5 );
    var_0._ID55 = 1;
    level endon( var_2 );

    while ( _func_02F( var_0 ) )
    {
        level waittill( "new_subtitle_created" );
        var_3++;

        if ( !_func_02F( var_0 ) )
            break;

        var_0 _meth_808D( 0.35 );
        var_0._ID1339 = 325 + var_3 * var_4;
        var_0._ID196 = ( 1, 1, 1 );
        var_0._ID444 = 0;
        var_0._ID55 = 0.9 - var_3 / 5;
        waittillframeend;
    }
}

_ID10299( var_0, var_1, var_2 )
{
    var_3 = "delete_subtitle_hud" + var_2;
    level thread _ID42407::_ID25088( var_3, var_0 );
    level waittill( var_3 );
    self._ID36744 = _ID42237::_ID3321( self._ID36744, var_1 );
    var_1 _meth_808F();
}

_ID8611( var_0 )
{
    return var_0 / 255;
}

_ID15986( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_10 = var_0;
    var_11 = var_5 * var_2 + var_1;

    if ( !_func_02F( var_6 ) )
        var_6 = ( 0.8, 1, 0.8 );

    if ( !_func_02F( var_7 ) )
        var_7 = ( var_6[0] / 2, var_6[1] / 2, var_6[2] / 2 );

    if ( !_func_02F( var_3 ) )
        var_3 = "center";

    if ( !_func_02F( var_4 ) )
        var_4 = "middle";

    if ( !_func_02F( var_8 ) )
        var_8 = "center";

    if ( !_func_02F( var_9 ) )
        var_9 = "middle";

    var_12 = _func_1B0( level._ID794 );
    var_12._ID44 = var_3;
    var_12._ID45 = var_4;
    var_12._ID499 = var_8;
    var_12._ID1284 = var_9;
    var_12._ID1331 = var_10;
    var_12._ID1339 = var_11;
    var_12._ID393 = 1.6;
    var_12._ID196 = var_6;
    var_12._ID392 = "objective";
    var_12._ID445 = var_7;
    var_12._ID444 = 1;
    var_12._ID408 = 1;
    var_12._ID493 = 1;
    var_12._ID491 = 1;
    return var_12;
}

_ID25121( var_0, var_1, var_2, var_3 )
{
    var_0 waittill( var_1 );
    var_2 notify( var_3 );
}
