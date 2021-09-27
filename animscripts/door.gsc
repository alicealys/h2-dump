// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID11621()
{
    self endon( "killanimscript" );

    if ( _func_02F( self._ID11017 ) )
        return;

    for (;;)
    {
        var_0 = self _meth_81AC();

        if ( _func_02F( var_0 ) )
            break;

        wait 0.2;
    }

    var_1 = var_0._ID1244 == "Door Interior" || self _meth_81AD( var_0 );

    if ( var_1 )
        _unknown_013F( var_0 );
    else
        _unknown_017E( var_0 );

    for (;;)
    {
        var_2 = self _meth_81AC();

        if ( !_func_02F( var_2 ) || var_2 != var_0 )
            break;

        wait 0.2;
    }

    thread _unknown_0061();
}

_ID37363()
{
    self endon( "killanimscript" );
    self._ID37364 = 1;
    wait 5;
    self._ID37364 = undefined;
}
#using_animtree("generic_human");

_ID11316( var_0 )
{
    thread _unknown_0099();

    if ( self._ID470 == "flash_grenade" )
        self notify( "flashbang_thrown" );

    self _meth_819B( "face current" );
    var_0._ID24780 = _func_03D() + 5000;
    self._ID23677 = _func_03D() + 100000;
    self notify( "move_interrupt" );
    self._ID39628 = undefined;
    self _meth_814C( %combatrun, 0.2 );
    self._ID7._ID24414 = "stop";
    self waittill( "done_grenade_throw" );
    self _meth_819B( "face default" );
    self._ID23677 = _func_03D() + 5000;
    self._ID470 = self._ID25556;
    self._ID25556 = undefined;
    animscripts\run::_ID12640();
    thread animscripts\move::_ID26332();
    thread animscripts\move::_ID29843( 1 );
}

_ID11620( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0;
    var_6 = 3;
    var_7 = undefined;
    var_7 = %cqb_stand_grenade_throw;
    var_8 = _func_11F( var_0._ID65 );

    if ( var_0._ID1244 == "Door Interior" && !self _meth_81AD( var_0 ) )
        var_8 = -1 * var_8;

    var_9 = ( var_0._ID740[0], var_0._ID740[1], var_0._ID740[2] + 64 );
    var_10 = var_9;

    if ( var_2 )
    {
        var_11 = _func_11E( var_0._ID65 );
        var_12 = var_0._ID740 - self._ID740;
        var_13 = _func_0FB( var_11, var_12 );

        if ( var_13 > 20 )
            var_13 = 20;
        else if ( var_13 < -20 )
            var_13 = -20;

        var_10 = var_9 + var_13 * var_11;
    }

    while ( var_6 > 0 )
    {
        if ( _func_02F( self._ID458 ) || !_func_02F( self._ID322 ) )
            return;

        if ( _unknown_0285( var_0, var_8 ) )
            return;

        if ( !self _meth_81CB( self._ID322, 0.2 ) && self._ID7._ID28253 == "stand" && _unknown_02AA( self._ID322._ID740 - var_0._ID740, 360000, 16384 ) )
        {
            if ( _func_02F( var_0._ID24780 ) && var_0._ID24780 > _func_03D() )
                return;

            if ( self _meth_81C9() )
                return;

            var_12 = var_0._ID740 - self._ID740;

            if ( _func_0F8( var_12 ) < var_3 )
                return;

            if ( _func_0FB( var_12, var_8 ) < 0 )
                return;

            self._ID25556 = self._ID470;
            self._ID470 = var_1;
            animscripts\combat_utility::_ID32536( self._ID322 );

            if ( !var_5 )
            {
                var_14 = var_9 + var_8 * 100;

                if ( !self _meth_81DB( self._ID322, var_14, 128 ) )
                    return;
            }

            var_5 = 1;

            if ( animscripts\combat_utility::_ID39074( self._ID322, var_10, var_7, animscripts\combat_utility::_ID16308( var_7 ), 1, 0, 1 ) )
            {
                _unknown_0254( var_0 );
                return;
            }
        }

        var_6--;
        wait(var_4);
        var_15 = self _meth_81AC();

        if ( !_func_02F( var_15 ) || var_15 != var_0 )
            return;
    }
}

_ID19529()
{
    self endon( "killanimscript" );

    if ( _func_02F( self._ID11017 ) )
        return;

    self._ID20777 = 0;

    for (;;)
    {
        if ( self _meth_8145() && !self._ID302 )
            _unknown_0341();
        else if ( !_func_02F( self._ID23677 ) || self._ID23677 < _func_03D() )
        {
            self._ID23677 = undefined;
            _unknown_0368();
        }

        wait 0.2;
    }
}

_ID11619()
{
    if ( !_func_02F( self._ID24727 ) && !self._ID302 )
    {
        self._ID20777 = 1;

        if ( !_func_02F( self._ID8931 ) || !self._ID8931 )
            _ID42407::_ID12467( 1 );
    }
}

_ID11623()
{
    if ( !_func_02F( self._ID8928 ) )
    {
        self._ID20777 = 0;

        if ( _func_02F( self._ID8931 ) && self._ID8931 )
            _ID42407::_ID10896();
    }
}

_ID11133( var_0, var_1, var_2 )
{
    return var_0[0] * var_0[0] + var_0[1] * var_0[1] < var_1 && var_0[2] * var_0[2] < var_2;
}

_ID25832( var_0, var_1 )
{
    var_2 = var_0._ID740 - self._ID740;
    var_3 = var_0._ID740 - self._ID322._ID740;
    return _func_0FB( var_2, var_1 ) * _func_0FB( var_3, var_1 ) > 0;
}

_ID11618( var_0 )
{
    for (;;)
    {
        if ( _func_02F( self._ID11625 ) && self._ID11625 == 0 || self._ID11625 < _func_0B8( 1 ) )
            break;

        if ( _unknown_042F( self._ID740 - var_0._ID740, 562500, 25600 ) )
        {
            _unknown_03A2( var_0, "fraggrenade", 0, 302500, 0.3 );
            var_0 = self _meth_81AC();

            if ( !_func_02F( var_0 ) )
                return;

            break;
        }

        wait 0.1;
    }

    for (;;)
    {
        if ( _unknown_0466( self._ID740 - var_0._ID740, 36864, 6400 ) )
        {
            _unknown_0454();
            self._ID23677 = _func_03D() + 6000;

            if ( _func_02F( self._ID11624 ) && self._ID11624 == 0 || self._ID11624 < _func_0B8( 1 ) )
                return;

            _unknown_03FB( var_0, "flash_grenade", 1, 4096, 0.2 );
            return;
        }

        wait 0.1;
    }
}

_ID11622( var_0 )
{
    for (;;)
    {
        if ( !self._ID20777 || _func_0F5( self._ID740, var_0._ID740 ) < 1024 )
            return;

        wait 0.1;
    }
}
