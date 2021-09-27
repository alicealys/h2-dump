// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24479()
{
    var_0 = undefined;

    if ( _func_02F( self._ID762 ) && _func_0F5( self._ID740, self._ID762 ) > 4096 )
        var_0 = "stand";

    var_1 = [[ self._ID7497 ]]( var_0 );

    switch ( var_1 )
    {

    }

    case "stand":
    case "crouch":
    default:
}
#using_animtree("generic_human");

_ID11666( var_0 )
{
    self endon( "movemode" );
    self _meth_814C( %combatrun, 0.6 );
    self _meth_8151( %combatrun, %body, 1, 0.5, self._ID24424 );

    if ( _func_0D3( self._ID41227 ) )
    {
        var_1 = animscripts\move::_ID49688( self._ID41226 );

        if ( _func_02F( var_1 ) )
            var_2 = var_1;
        else if ( _func_02F( self._ID41226 ) )
            var_2 = _ID42237::_ID7490( self._ID41227, self._ID41226 );
        else
            var_2 = self._ID41227[_func_0B7( self._ID41227.size )];
    }
    else
        var_2 = self._ID41227;

    self _meth_815C( "moveanim", var_2, 1, 0.2 );
    animscripts\shared::_ID11529( "moveanim" );
}

_ID16734( var_0 )
{
    if ( animscripts\stairs_utility::ismovingonstairs() )
    {
        var_1 = animscripts\stairs_utility::_ID53776();
        return animscripts\utility::_ID16432( var_1 );
    }

    var_2 = animscripts\utility::_ID16432( var_0 );

    if ( !animscripts\utility::_ID20775() && !_func_02F( self._ID24936 ) && self._ID24936 && !_func_02F( self._ID7._ID4958 ) && self._ID7._ID4958 )
    {
        var_3 = animscripts\utility::_ID16432( "straight_twitch" );

        if ( _func_02F( self._ID20961 ) && self._ID20961 )
        {
            var_4 = animscripts\traverse\shared::_ID16446();

            if ( var_4 == "Left" )
                var_3 = animscripts\utility::_ID16432( "straight_twitch_l" );
            else if ( var_4 == "Right" )
                var_3 = animscripts\utility::_ID16432( "straight_twitch_r" );
        }

        if ( !_func_02F( self._ID7._ID30423 ) )
        {
            if ( _func_0D3( var_2 ) )
                var_2 = var_2[_func_0B7( var_2.size )];

            return var_2;
        }

        if ( _func_02F( var_3 ) && var_3.size > 0 )
        {
            var_5 = animscripts\utility::_ID16553( self._ID7._ID30423, 4 );

            if ( var_5 == 0 )
                return animscripts\utility::_ID47584( var_3 );
        }
    }

    if ( _func_0D3( var_2 ) )
        var_2 = var_2[_func_0B7( var_2.size )];

    return var_2;
}

_ID11665( var_0 )
{
    self endon( "movemode" );
    var_1 = self._ID24424;

    if ( animscripts\stairs_utility::_ID54360() )
        var_1 *= 0.9;

    if ( self._ID7._ID28253 == "stand" )
    {
        if ( _func_02F( self._ID322 ) )
        {
            animscripts\cqb::_ID8930();

            if ( animscripts\stairs_utility::_ID54360() )
                var_2 = %body;
            else
                var_2 = %walk_and_run_loops;

            self _meth_8118( "walkanim", animscripts\cqb::_ID10665(), var_2, 1, 1, var_1, 1 );
        }
        else
            self _meth_8118( "walkanim", var_0, %body, 1, 1, var_1, 1 );

        _unknown_0337();
    }
    else if ( self._ID7._ID28253 == "prone" )
        self _meth_815C( "walkanim", animscripts\utility::_ID16432( "prone" ), 1, 0.3, self._ID24424 );
    else
    {
        self _meth_8118( "walkanim", var_0, %body, 1, 1, var_1, 1 );
        _unknown_037A();
    }

    animscripts\notetracks::_ID11534( 0.2, "walkanim" );
}

_ID53597()
{
    if ( animscripts\stairs_utility::_ID54360() )
        return;

    animscripts\run::_ID32698( animscripts\utility::_ID16432( "move_b" ), animscripts\utility::_ID16432( "move_l" ), animscripts\utility::_ID16432( "move_r" ) );
    thread animscripts\run::_ID32577( "walk" );
}
