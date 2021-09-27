// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_02F( level._ID21153 ) )
        return;

    level._ID21153 = 1;

    if ( !_func_02F( level._ID36742 ) )
        level._ID36742 = [];

    level._ID36742["juggernaut"] = ::_unknown_0023;
    level._ID21154 = 0;
}

_ID36738()
{
    self._ID21151 = 1;
    self._ID642 = 200;
    self._ID464 = 0;
    self._ID11624 = 0.05;
    self._ID2219 = 1;
    self._ID513 = 1;
    self._ID24844 = 1;
    self._ID24934 = 1;
    self._ID11579 = 1;
    self._ID11025 = 1;
    self._ID10998 = 1;
    self._ID11002 = 1;
    self._ID199 = "no_cover";
    self._ID24730 = 1;
    self._ID7._ID11035 = 1;
    _ID42407::_ID10989();
    _ID42407::_ID10973();
    _unknown_0122();
    _ID42407::_ID1868( animscripts\pain::_ID2035 );
    _ID42407::_ID1868( _ID42372::_ID26190 );

    if ( !self _meth_8147() )
        return;

    self._ID6315 = 40;
    _ID42407::_ID1868( _ID42372::_ID6315 );
    thread _unknown_0102();
    thread _unknown_0115();
    self._ID760 = 128;
    self._ID761 = 128;
    self _meth_8505( 0 );
    level notify( "juggernaut_spawned" );
    self waittill( "death",  var_2, var_2, var_2  );

    if ( _func_02F( self ) && _func_02F( self._ID24898 ) )
    {
        var_3 = [];
        var_3[var_3.size] = "left";
        var_3[var_3.size] = "right";
        var_3[var_3.size] = "chest";
        var_3[var_3.size] = "back";
        animscripts\shared::_ID10626();
        var_4 = var_3;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_2 = self._ID7._ID41701[var_5];

            if ( var_2 == "none" )
                continue;

            self._ID1312[var_2]._ID811 = "none";
            self._ID7._ID41701[var_5] = "none";
        }

        var_clear_2
        var_clear_0
        self._ID1302 = "none";
        animscripts\shared::_ID39673();
    }

    level notify( "juggernaut_died" );

    if ( !_func_02F( self ) )
        return;

    if ( !_func_02F( var_0 ) )
        return;

    if ( !_func_1B3( var_0 ) )
        return;
}

_ID21152()
{
    self endon( "death" );
    self endon( "stop_hunting" );
    self._ID1258 = 0;

    for (;;)
    {
        wait 0.5;

        if ( _func_02F( self._ID322 ) )
        {
            self _meth_81B2( self._ID322._ID740 );
            self._ID452 = 128;
            self._ID450 = 81;
        }
    }
}

_ID21155()
{
    self endon( "death" );
    level endon( "special_op_terminated" );

    if ( _func_02F( level._ID34231 ) && level._ID34231 )
        return;

    var_0 = 2500;

    if ( level._ID912 == "ending" )
    {
        _ID42237::_ID14413( "panic_button" );
        var_0 = 750;
    }

    for (;;)
    {
        wait 0.05;

        if ( _func_03D() < level._ID21154 )
            continue;

        var_1 = _ID42407::_ID15617( self._ID740 );

        if ( !_func_1A7( var_1 ) )
            continue;

        if ( _func_0F3( var_1._ID740, self._ID740 ) > var_0 )
            continue;

        if ( _func_02F( level._ID28164 ) && level._ID28164 )
        {
            var_2 = self _meth_818C( "tag_flash" );

            if ( !_func_08F( self _meth_80AF(), var_1 _meth_80AF(), 0, undefined ) )
            {
                wait 0.25;
                continue;
            }
        }

        break;
    }

    level._ID21154 = _func_03D() + 15000;
    level notify( "juggernaut_attacking" );
}
#using_animtree("generic_human");

_ID19716()
{
    self._ID1298 = 500;
    self._ID1299 = 500;
    _ID42407::_ID32387( "run", %juggernaut_runf, %juggernaut_sprint );
    _ID42407::_ID32387( "walk", %juggernaut_walkf );
    _ID42407::_ID32387( "cqb", %juggernaut_walkf );
    _ID42407::_ID32243( %juggernaut_stand_fire_burst, %juggernaut_aim5, %juggernaut_stand_idle, %juggernaut_stand_reload );
}
