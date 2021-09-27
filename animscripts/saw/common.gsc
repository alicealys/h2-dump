// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0 )
{
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "saw" );

    if ( !_func_02F( var_0 ) )
        return;

    self._ID7._ID35357 = "saw";

    if ( _func_02F( var_0._ID31121 ) )
        var_1 = var_0._ID31121;
    else
        var_1 = _ID42331::_ID6447( "delay" );

    if ( _func_02F( var_0._ID31120 ) )
        var_2 = var_0._ID31120 - var_1;
    else
        var_2 = _ID42331::_ID6447( "delay_range" );

    if ( _func_02F( var_0._ID31083 ) )
        var_3 = var_0._ID31083;
    else
        var_3 = _ID42331::_ID6447( "burst" );

    if ( _func_02F( var_0._ID31082 ) )
        var_4 = var_0._ID31082 - var_3;
    else
        var_4 = _ID42331::_ID6447( "burst_range" );

    var_5 = _func_03D();
    var_6 = "start";
    animscripts\shared::_ID26732( self._ID1302, "none" );
    var_0 _meth_8059();

    if ( _func_02F( var_0._ID2446 ) )
    {
        self._ID7._ID28304 = ::_unknown_0171;
        self._ID7._ID39999 = var_0;
        var_0 notify( "being_used" );
        thread _unknown_017B();
    }
    else
        self._ID7._ID28304 = ::_unknown_01D2;

    var_0._ID11393 = 0;
    var_0._ID11302 = 0;
    thread _unknown_015F( var_0 );
    self _meth_819F( self._ID28561 );
    self _meth_814F( self._ID28561, 1, 0.2, 1 );
    self _meth_8150( self._ID2040 );
    self _meth_8150( self._ID2039 );
    var_0 _meth_8150( var_0._ID2040 );
    var_0 _meth_8150( var_0._ID2039 );
    var_0 endon( "death" );

    for (;;)
    {
        if ( var_0._ID11302 )
        {
            var_0 waittill( "turretstatechange" );
            continue;
        }

        if ( var_0._ID11393 )
        {
            thread _unknown_023D( var_0 );
            _unknown_01B9( _func_0BA( var_3, var_3 + var_4 ), var_0 );
            var_0 notify( "turretstatechange" );

            if ( var_0._ID11393 )
            {
                thread _unknown_026F( var_0 );
                wait(_func_0BA( var_1, var_1 + var_2 ));
            }

            continue;
        }

        thread _unknown_027E( var_0 );
        var_0 waittill( "turretstatechange" );
    }
}

_ID41214( var_0, var_1 )
{
    var_1 endon( "turretstatechange" );
    wait(var_0);
}

_ID14292( var_0 )
{
    self endon( "killanimscript" );
    var_1 = _func_0BC( 15 );

    for (;;)
    {
        while ( _func_02F( self._ID322 ) )
        {
            if ( var_0._ID11302 )
            {
                waittillframeend;
                continue;
            }

            var_2 = self._ID322._ID740;
            var_3 = var_0 _meth_818D( "tag_aim" );

            if ( _ID42237::_ID41802( var_0._ID740, var_3, var_2, var_1 ) || _func_0F5( var_0._ID740, var_2 ) < 40000 )
            {
                if ( !var_0._ID11393 )
                {
                    var_0._ID11393 = 1;
                    var_0 notify( "turretstatechange" );
                }
            }
            else if ( var_0._ID11393 )
            {
                var_0._ID11393 = 0;
                var_0 notify( "turretstatechange" );
            }

            wait 0.05;
        }

        if ( var_0._ID11393 )
        {
            var_0._ID11393 = 0;
            var_0 notify( "turretstatechange" );
        }

        wait 0.05;
    }
}

_ID39366( var_0, var_1 )
{
    if ( var_0 <= 0 )
        return;

    self endon( "killanimscript" );
    var_1 endon( "turretstatechange" );
    wait(var_0);
    var_1 notify( "turretstatechange" );
}

_ID36620()
{
    self endon( "killanimscript" );

    for (;;)
    {
        if ( !_func_02F( self._ID700 ) || _func_0F5( self._ID740, self._ID700._ID740 ) > 4096 )
            self _meth_8197();

        wait 0.25;
    }
}

_ID28304( var_0 )
{
    if ( var_0 == "pain" )
    {
        if ( _func_02F( self._ID700 ) && _func_0F5( self._ID740, self._ID700._ID740 ) < 4096 )
        {
            self._ID7._ID39999 _meth_805A();
            animscripts\shared::_ID26732( self._ID1302, "right" );
            self._ID7._ID28304 = ::_unknown_0368;
            return;
        }
        else
            self _meth_8197();
    }

    if ( var_0 == "saw" )
    {
        var_1 = self _meth_81A0();
        return;
    }

    self._ID7._ID39999 _meth_80B7();
    self._ID7._ID39999 = undefined;
    animscripts\shared::_ID26732( self._ID1302, "right" );
}

_ID28302( var_0 )
{
    if ( !_func_02F( self._ID700 ) || _func_0F5( self._ID740, self._ID700._ID740 ) > 4096 )
    {
        self _meth_8197();
        self._ID7._ID39999 _meth_80B7();
        self._ID7._ID39999 = undefined;

        if ( _func_02F( self._ID1302 ) && self._ID1302 != "none" )
            animscripts\shared::_ID26732( self._ID1302, "right" );
    }
    else if ( var_0 != "saw" )
        self._ID7._ID39999 _meth_80B7();
}

_ID28448( var_0 )
{
    animscripts\shared::_ID26732( self._ID1302, "right" );
}
#using_animtree("generic_human");

_ID11644( var_0 )
{
    self _meth_8155( %additive_saw_idle, 0, 0.1 );
    self _meth_8155( %additive_saw_fire, 1, 0.1 );
    self _meth_8155( %additive_saw_custom, 0, 0.1 );
    var_0 _unknown_04AB();
    _unknown_04A8( var_0 );
}

_ID11236( var_0 )
{
    self _meth_8155( %additive_saw_idle, 1, 0.1 );
    self _meth_8155( %additive_saw_fire, 0, 0.1 );
    self _meth_8155( %additive_saw_custom, 0, 0.1 );
    var_0 _unknown_04F6();
}

_ID11302( var_0, var_1, var_2 )
{
    var_0._ID11393 = 0;
    var_0._ID11302 = 1;
    var_0 notify( "turretstatechange" );
    self _meth_8155( %additive_saw_idle, 0, 0.1 );
    self _meth_8155( %additive_saw_fire, 0, 0.1 );
    self _meth_8117( "customTurretAnim", var_1, 1, 0.1, 1 );
    self _meth_8155( %additive_saw_custom, 1, 0.1 );
    var_0 thread _unknown_055F( var_2 );
    animscripts\shared::_ID11529( "customTurretAnim" );
    var_0._ID11302 = 0;
    var_0 notify( "turretstatechange" );
}

_ID39346( var_0 )
{
    self endon( "killanimscript" );
    var_0 endon( "turretstatechange" );

    for (;;)
    {
        var_0 _meth_80F1();
        wait 0.1;
    }
}
#using_animtree("mg42");

_ID39347()
{
    self _meth_8155( %additive_saw_idle, 0, 0.1 );
    self _meth_8155( %additive_saw_fire, 1, 0.1 );
    self _meth_8155( %additive_saw_custom, 0, 0.1 );
}

_ID39345()
{
    self _meth_8155( %additive_saw_idle, 1, 0.1 );
    self _meth_8155( %additive_saw_fire, 0, 0.1 );
    self _meth_8155( %additive_saw_custom, 0, 0.1 );
}

turretdocustomanim( var_0 )
{
    self _meth_8155( %additive_saw_idle, 0, 0.1 );
    self _meth_8155( %additive_saw_fire, 0, 0.1 );
    self _meth_8150( var_0 );
    self _meth_8155( %additive_saw_custom, 1, 0.1 );
}
