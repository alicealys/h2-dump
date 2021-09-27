// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19210( var_0, var_1 )
{
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( var_1 );
    self._ID24817 = 1;
    self._ID24898 = 1;
    self._ID7._ID24414 = "stop";
    self._ID7._ID35357 = var_1;
    self._ID7._ID39999 = var_0;
    self._ID511 = 1;

    if ( _func_02F( self._ID23664 ) )
        self._ID511 = self._ID23664;

    self._ID20721 = 0;
    self _meth_819F( self._ID28561 );
    self _meth_814F( self._ID28561, 1, 0.2, 1 );

    if ( _func_02F( self._ID1302 ) )
        animscripts\shared::_ID26732( self._ID1302, "none" );

    self._ID16482 = ::_unknown_00E7;
    self notify( "guy_man_turret_stop" );
    var_0 notify( "stop_burst_fire_unmanned" );
    var_0._ID39365 = "start";
    var_0._ID2446 = self;
    var_0._ID14320 = 0;
    var_0 _meth_806C( "sentry" );
    var_0 _meth_810C( self );
    var_0 _meth_8164( 0 );
    var_0 _meth_802F( 0 );
    _unknown_00E2();
    level thread _unknown_00F3( self, var_0 );
    level thread _unknown_011C( self, var_0 );
    var_0 thread _unknown_0175( self );
    var_0._ID11393 = 0;
    thread _unknown_0234( var_0 );
    wait 0.05;

    if ( _func_1A7( self ) )
        thread _unknown_01BE( var_0 );
}

_ID17527()
{
    self._ID52 = 0;
    _ID42407::_ID32628( 1 );
    self._ID25483 = self._ID486;
    self._ID486 = 200;
}

_ID17528()
{
    self._ID52 = 1;
    _ID42407::_ID32628( 0 );
    self._ID486 = self._ID25483;
}

_ID17818( var_0, var_1 )
{
    var_0 endon( "death" );
    var_1 endon( "death" );
    var_0 endon( "dismount" );
    var_0 endon( "jumping_out" );

    for (;;)
    {
        var_2 = "flashbang";
        var_3 = var_0 _ID42237::_ID41075( "damage", var_2 );
        var_4 = _ID42237::_ID28945( var_0._ID39355 );

        if ( var_3 == var_2 )
        {
            var_4 = var_0._ID39349;
            var_0 animscripts\face::_ID30759( "flashbang" );
        }

        var_0 _unknown_03D4( var_1, var_4, 0 );
        var_1 notify( "pain_done" );
    }
}

_ID39301()
{
    _unknown_0424();
    self waittill( "pain_done" );
    _unknown_0452();
}

_ID17817( var_0, var_1 )
{
    var_0 endon( "dismount" );
    var_1 endon( "turret_cleanup" );
    var_0._ID9813 = var_0._ID39340;
    var_0._ID24911 = 1;
    var_0._ID24924 = 1;
    var_0 waittill( "death" );
    level thread _unknown_0222( var_0, var_1 );
}

_ID39246()
{
    var_0 = self._ID29969._ID23512[0];

    if ( _func_1A7( self ) )
    {
        self._ID24817 = undefined;
        self._ID24898 = undefined;
        self._ID511 = 0;
        self._ID7._ID35357 = "none";
        self._ID7._ID39999 = undefined;
        self._ID9813 = undefined;
        _unknown_01FC();
        self._ID20721 = undefined;
        self._ID39363 = undefined;
        self._ID39355 = undefined;
        self._ID16482 = undefined;
        self _meth_8197();

        if ( _func_02F( self._ID1302 ) )
            animscripts\shared::_ID26732( self._ID1302, "right" );
    }

    level thread _unknown_0277( self, var_0 );
}

_ID39245( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        return;

    var_1 notify( "kill_fireController" );
    var_1 notify( "turret_cleanup" );
    var_1 _meth_806C( "manual" );
    var_1 _meth_8111();
    var_1 _meth_8164( var_1._ID10110 );

    if ( _func_02F( var_0 ) )
    {
        var_0 _meth_814C( var_0._ID2043, 0 );
        var_0 _meth_814C( var_0._ID2037, 0 );
        var_0 _meth_814C( var_0._ID39364, 0 );
    }

    var_1._ID14299 = undefined;
    var_1._ID8158 = undefined;
    var_1._ID14294 = undefined;
    var_1._ID39365 = "free";
    var_1._ID2446 = undefined;
    var_1._ID14320 = undefined;

    if ( _func_02F( var_1._ID35372 ) )
        level [[ var_1._ID35372 ]]( var_0, var_1 );
}

_ID39327( var_0 )
{
    self endon( "turret_cleanup" );
    self endon( "death" );
    var_0 endon( "death" );
    var_0 endon( "detach" );
    var_1 = "tag_aim";
    var_2 = self _meth_818D( var_1 );
    _unknown_0365( "none" );

    for (;;)
    {
        var_3 = self _meth_818D( var_1 );
        var_4 = _func_11E( var_2 );
        var_5 = _func_11F( var_3 );
        var_6 = _func_0FB( var_4, var_5 );

        if ( var_6 == 0 )
            _unknown_038A( "none" );
        else if ( var_6 > 0 )
            _unknown_039B( "right" );
        else
            _unknown_03A7( "left" );

        var_2 = self _meth_818D( var_1 );
        wait 0.05;
    }
}

_ID39329( var_0 )
{
    if ( !_func_02F( self._ID30205 ) || self._ID30205 != var_0 )
        self._ID30205 = var_0;
}

_ID17530( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );
    self endon( "dismount" );
    var_0 endon( "turret_cleanup" );
    var_1 = 0.3;
    var_2 = 0.3;

    for (;;)
    {
        var_0 waittill( "new_fireTarget" );
        wait 0.05;

        if ( !_func_02F( var_0._ID14317 ) || self._ID20721 )
            continue;

        var_3 = undefined;

        if ( !var_0 _unknown_0634( var_0._ID14317, var_0._ID8158 ) )
        {
            if ( var_0._ID30205 == "right" )
                var_3 = self._ID2042;
            else if ( var_0._ID30205 == "left" )
                var_3 = self._ID2041;

            if ( _func_02F( var_3 ) )
            {
                self _meth_8156( self._ID2037, 1, var_1, 1 );
                self _meth_814E( var_3, 1, 0, 1 );

                while ( _func_02F( var_0._ID14317 ) && !var_0 _unknown_0681( var_0._ID14317, var_0._ID8158 ) )
                {
                    if ( self._ID20721 )
                        break;

                    wait 0.05;
                }

                self _meth_814C( self._ID2037, var_2 );
            }
        }
    }
}

_ID40215( var_0, var_1, var_2, var_3 )
{
    var_0._ID39936[self._ID40222] = 0;
    _ID42412::_ID17545();
    _unknown_04EB( var_0, var_1, var_2, var_3 );
}

_ID17564( var_0, var_1, var_2, var_3 )
{
    _unknown_04FA( var_0, var_1, var_2, var_3 );
}
#using_animtree("generic_human");

_ID17563( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_2 endon( "death" );
    self _meth_814B();
    self notify( "newanim" );
    self._ID11803 = undefined;
    self._ID24817 = 1;
    var_3 = %latvee_passenger_2_turret;

    if ( !_func_02F( var_3 ) )
        var_3 = self._ID26294;

    var_4 = _ID42412::_ID3052( var_0, var_1 );
    var_5 = var_0 _meth_818C( var_4._ID34225 );
    var_6 = var_0 _meth_818D( var_4._ID34225 );
    var_2 _meth_8164( 0 );
    var_2 thread _unknown_0576( var_2._ID26298 );
    self _meth_8148( "passenger2turret", var_5, var_6, var_3 );
    wait(_func_067( var_3 ));
    self _meth_814B();
    var_2 _unknown_0726();
    self _meth_8196( var_2 );
}

_ID39240( var_0 )
{
    if ( _func_02F( self._ID19324 ) )
    {
        self _meth_814C( self._ID19324, 0 );
        self._ID19324 = undefined;
    }

    self _meth_8116( "minigun_turret", var_0, 1, 0, 1 );
    self waittillmatch( "minigun_turret",  "end"  );
    self _meth_814C( var_0, 0 );
}

_ID39241( var_0 )
{
    self _meth_814F( var_0, 1, 0, 0 );
    self._ID19324 = var_0;
}

_ID14295( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );
    self endon( "dismount" );
    var_0 endon( "kill_fireController" );
    var_0 thread _unknown_063F( self );
    wait 0.05;
    self thread [[ var_0._ID14294 ]]( var_0 );
    var_1 = undefined;

    for (;;)
    {
        var_1 = var_0._ID14317;

        while ( var_0 _unknown_064C( var_1 ) )
        {
            if ( var_0 _unknown_07B7( var_1, var_0._ID8158 ) )
                break;

            wait 0.05;
        }

        if ( var_0 _unknown_0669( var_1 ) && !self._ID507 )
            var_0._ID11393 = 1;

        while ( var_0 _unknown_067C( var_1 ) && !self._ID507 && !self._ID20721 )
            wait 0.05;

        if ( var_0._ID11393 || self._ID507 )
            var_0._ID11393 = 0;

        wait 0.05;
    }
}

_ID37279( var_0 )
{
    if ( _func_02F( self._ID11580 ) )
        return 0;

    if ( !_func_02F( self._ID14317 ) )
        return 0;

    if ( !_unknown_06F6( var_0 ) )
        return 0;

    if ( var_0 != self._ID14317 )
        return 0;

    return 1;
}

_ID39321( var_0 )
{
    var_0 endon( "death" );
    self endon( "death" );
    var_0 endon( "dismount" );
    self endon( "kill_fireController" );
    self._ID14317 = undefined;
    var_1 = undefined;
    var_2 = undefined;

    for (;;)
    {
        var_1 = self _meth_8112( 0 );
        var_3 = 0;

        if ( _unknown_0730( var_1 ) || !_func_02F( var_1 ) )
        {
            if ( !_func_02F( var_1 ) && _func_02F( var_2 ) )
                var_3 = 1;
            else if ( _func_02F( var_1 ) && !_func_02F( var_2 ) )
                var_3 = 1;
            else if ( _func_02F( var_1 ) && var_1 != var_2 )
                var_3 = 1;

            if ( var_3 )
            {
                self._ID14317 = var_1;
                var_2 = var_1;
                self notify( "new_fireTarget" );
            }
        }

        wait 0.05;
    }
}

_ID39322( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( _func_02F( var_0._ID511 ) && var_0._ID511 )
        return 0;

    if ( _func_125( var_0._ID172, "actor" ) && !_func_1A7( var_0 ) )
        return 0;

    return 1;
}

_ID32371( var_0, var_1, var_2, var_3 )
{
    self endon( "turret_cleanup" );
    var_4 = self _meth_806D();

    if ( var_4 != "manual" )
        self _meth_806C( "manual" );

    if ( !_func_02F( var_1 ) && !_func_02F( var_2 ) )
    {
        var_1 = 1.5;
        var_2 = 3;
    }

    _unknown_08D9();
    self _meth_810F( var_0 );
    self waittill( "turret_on_target" );

    if ( _func_02F( var_3 ) )
        self waittill( var_3 );
    else if ( _func_02F( var_2 ) )
        wait(_func_0BA( var_1, var_2 ));
    else
        wait(var_1);

    _unknown_0902();
    self _meth_8111( var_0 );

    if ( _func_02F( var_4 ) )
        self _meth_806C( var_4 );
}

_ID11644( var_0 )
{
    self notify( "doshoot_starting" );
    self _meth_8156( self._ID2043, 1, 0.1 );
    self _meth_814E( self._ID2039, 1, 0.1 );
    var_0._ID39365 = "fire";
    var_0 thread _unknown_0892( self );
}

_ID14240( var_0 )
{
    var_0 endon( "death" );
    self endon( "death" );
    var_0 endon( "dismount" );
    self endon( "kill_fireController" );
    self endon( "stopfiring" );
    self endon( "custom_anim" );

    for (;;)
    {
        self _meth_80F1();
        wait(self._ID14299);
    }
}

_ID11236( var_0 )
{
    var_0._ID39365 = "aim";
    var_0 notify( "stopfiring" );
    thread _unknown_08EA( var_0 );
}

_ID11237( var_0 )
{
    self notify( "doaim_idle_think" );
    self endon( "doaim_idle_think" );
    self endon( "custom_anim" );
    self endon( "doshoot_starting" );
    self endon( "death" );
    var_0 endon( "death" );
    var_1 = var_0._ID26175;
    var_2 = -1;

    for (;;)
    {
        if ( var_1 _meth_8290() < 1 && var_2 )
        {
            self _meth_8156( self._ID2043, 1, 0.1 );
            self _meth_814E( self._ID2040, 1, 0.1 );
            var_2 = 0;
        }
        else if ( var_1 _meth_8290() >= 1 && !var_2 )
        {
            self _meth_8156( self._ID2043, 1, 0.1 );
            self _meth_814E( self._ID2038, 1, 0.1 );
            var_2 = 1;
        }

        wait 0.05;
    }
}

_ID39266( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_0 endon( "death" );
    self endon( "dismount" );
    self endon( "jumping_out" );
    var_3 = self._ID39363[var_1];
    _unknown_0A23();
    var_4 = var_0 _unknown_09CF();
    _unknown_09F6( var_0, var_3, var_2 );

    if ( var_4 )
        var_0 _unknown_09E7();
}

_ID29462()
{
    var_0 = 0;

    if ( !_func_02F( self._ID11049 ) || !self._ID11049 )
    {
        var_0 = 1;
        self._ID11049 = 1;
    }

    return var_0;
}

_ID29463()
{
    self._ID11049 = 0;
}

_ID11641( var_0 )
{
    if ( _func_02F( var_0._ID11049 ) )
        return;

    self endon( "death" );
    var_0 endon( "death" );
    self endon( "dismount" );
    self endon( "jumping_out" );

    if ( animscripts\battlechatter::_ID4954() )
    {
        if ( anim._ID7336 )
            thread _ID42407::_ID9527( "inform_reloading" );

        jump loc_A53
    }

    _unknown_0A5C( var_0, self._ID39357, 1 );
}

_ID11302( var_0, var_1, var_2 )
{
    self notify( "do_custom_anim" );
    self endon( "do_custom_anim" );
    self._ID20721 = 1;
    self._ID9556 = var_1;
    var_0._ID39365 = "customanim";
    var_0 _meth_8166();

    if ( var_0 _meth_80EE() > 0 )
        var_0 _meth_80ED();

    var_0 notify( "kill_fireController" );
    self notify( "custom_anim" );

    if ( _func_02F( var_2 ) && var_2 )
        var_0 _unknown_0AE7();

    self _meth_8150( self._ID39364, 1, 0.2 );
    self _meth_8116( "special_anim", var_1, 1, 0, 1 );

    for (;;)
    {
        self waittill( "special_anim",  var_3  );

        if ( var_3 == "end" )
            break;
    }

    self _meth_814C( self._ID39364, 0.2 );
    self _meth_8156( self._ID28561, 1 );
    self _meth_8156( self._ID2043, 1 );

    if ( _func_02F( var_2 ) && var_2 )
        var_0 _unknown_0B60();

    self._ID9556 = undefined;
    self._ID20721 = 0;
    var_0 _meth_8185();
    thread _unknown_09EA( var_0 );
}

_ID9524()
{
    self endon( "death" );

    if ( !_func_02F( self._ID20721 ) )
        return;

    while ( self._ID20721 )
        wait 0.05;
}

_ID39238( var_0 )
{
    if ( self _meth_806D() == "sentry" )
        return;

    if ( !_func_02F( var_0 ) )
    {
        var_1 = self _meth_818D( "tag_flash" );
        var_0 = ( 0, var_1[1], var_1[2] );
    }

    self._ID25564 = self _meth_806D();
    self _meth_806C( "manual" );
    var_2 = _func_11F( var_0 );
    var_3 = var_2 * 96;
    var_4 = self _meth_818C( "tag_aim" ) + var_3;
    self._ID37508 = _func_06A( "script_origin", var_4 );
    self._ID37508._ID511 = 1;
    self._ID37508 _meth_8053( self._ID26175 );
    self _meth_8111();
    self _meth_810F( self._ID37508 );
    self waittill( "turret_on_target" );
}

_ID39237()
{
    self _meth_8111();

    if ( _func_02F( self._ID37508 ) )
    {
        self._ID37508 _meth_8055();
        self._ID37508 _meth_80B7();
    }

    if ( _func_02F( self._ID25564 ) )
    {
        self _meth_806C( self._ID25564 );
        self._ID25564 = undefined;
    }
}

_ID39239( var_0, var_1 )
{
    var_2 = _unknown_0C39( var_0 );

    if ( var_2 <= var_1 )
        return 1;

    return 0;
}

_ID39265( var_0 )
{
    var_1 = _func_11B( var_0._ID740 - self._ID740 );
    var_2 = self _meth_818D( "tag_flash" )[1];
    var_3 = animscripts\utility::_ID1735( var_2 - var_1 );
    return var_3;
}

_ID22165( var_0 )
{
    var_1 = _ID42407::_ID9122( ::_unknown_0C7E, 20, 0 );
    var_1._ID1210 = var_0;
}

_ID5277( var_0, var_1, var_2 )
{
    var_3 = var_1 * 1 - var_0 + var_2 * var_0;
    self _meth_8164( var_3 );
}
