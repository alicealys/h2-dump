// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID7835( var_0 )
{
    self clearanim( %root, var_0 );
}

_ID12778( var_0 )
{
    var_1 = 600;

    if ( isdefined( self._ID23165 ) && self._ID23165 )
        return;

    if ( isdefined( self._ID322 ) )
        var_1 = distance( self._ID322._ID740, self._ID740 );

    if ( var_1 < 512 )
        var_2 = "_stealth_behavior_spotted_short";
    else
        var_2 = "_stealth_behavior_spotted_long";

    self._ID49 = 1;
    thread _ID42386::_ID36246( self, "gravity", var_2 );

    if ( var_1 < 200 )
        wait 0.5;
    else
        _ID42237::_ID41123( var_2, randomfloatrange( 1.5, 3 ) );

    self notify( "stop_animmode" );
}

_ID12784( var_0 )
{

}

_ID12782( var_0 )
{
    self._ID49 = 1;
    var_1 = level._ID794;

    if ( isdefined( self._ID322 ) )
        var_1 = self._ID322;
    else if ( isdefined( self._ID377 ) )
        var_1 = self._ID377;

    var_2 = distance( self._ID740, var_1._ID740 );
    var_3 = 4;
    var_4 = 0;

    if ( isdefined( self._ID31025 ) )
    {
        foreach ( var_8, var_6 in level._ID1357[self._ID31025]._ID2231 )
        {
            if ( _func_2a5( var_6 ) || var_6 == self )
                continue;

            var_7 = distance( var_6._ID740, var_1._ID740 );

            if ( var_7 < var_2 )
                var_4 += 1;
        }

        var_4 = _ID42237::_ID648( var_4, var_3 ) + 1;
    }
    else
    {
        var_9 = 1024;

        for ( var_4 = 1; var_4 < var_3; var_4++ )
        {
            var_10 = var_9 * var_4 / var_3;

            if ( var_2 < var_10 )
                break;
        }
    }

    var_11 = "_stealth_behavior_generic" + var_4;
    _ID42386::_ID36246( self, "gravity", var_11 );
}

_ID11400( var_0 )
{
    self._ID49 = 1;
    var_1 = undefined;

    if ( isdefined( self._ID23438 ) )
    {
        var_2 = self._ID23438;

        if ( isdefined( var_2._ID27731 ) && isdefined( var_2._ID27731._ID300 ) && self == var_2._ID27731._ID300 )
            return;
    }

    if ( _ID42407::_ID13019( "_stealth_behavior_asleep" ) )
    {
        if ( randomint( 100 ) < 50 )
            var_1 = "_stealth_dog_wakeup_fast";
        else
            var_1 = "_stealth_dog_wakeup_slow";
    }
    else
        var_1 = "_stealth_dog_growl";

    _ID42386::_ID36246( self, "gravity", var_1 );
}

_ID11403( var_0 )
{
    self._ID49 = 1;
    var_1 = undefined;

    if ( _ID42407::_ID13019( "_stealth_behavior_asleep" ) )
        var_1 = "_stealth_dog_wakeup_fast";
    else
        var_1 = "_stealth_dog_growl";

    _ID42386::_ID36246( self, "gravity", var_1 );
}

_ID11404( var_0 )
{
    self._ID49 = 1;
    var_1 = undefined;

    if ( _ID42407::_ID13019( "_stealth_behavior_asleep" ) )
        var_1 = "_stealth_dog_wakeup_slow";
    else
        var_1 = "_stealth_dog_growl";

    _ID42386::_ID36246( self, "gravity", var_1 );
}

_ID12788( var_0 )
{
    self._ID49 = 1;
    var_1 = "_stealth_behavior_saw_corpse";
    _ID42386::_ID36246( self, "gravity", var_1 );
}

_ID11402( var_0 )
{
    self._ID49 = 1;
    var_1 = "_stealth_dog_saw_corpse";
    _ID42386::_ID36246( self, "gravity", var_1 );
}

_ID11401( var_0 )
{
    self._ID49 = 1;
    var_1 = "_stealth_dog_howl";
    _ID42386::_ID36246( self, "gravity", var_1 );
    _ID42386::_ID36246( self, "gravity", var_1 );
    _ID42386::_ID36246( self, "gravity", var_1 );
    _ID42386::_ID36246( self, "gravity", var_1 );
    _ID42386::_ID36246( self, "gravity", var_1 );
    _ID42386::_ID36246( self, "gravity", var_1 );
}

_ID12781( var_0 )
{
    self endon( "enemy" );

    if ( isdefined( self._ID322 ) )
        return;

    self._ID49 = 1;

    if ( self._ID7._ID24414 == "stop" )
        var_1 = "_stealth_behavior_generic2";
    else if ( self._ID7._ID24414 == "walk" )
        var_1 = "_stealth_find_walk";
    else
        var_1 = _ID42237::_ID37527( _ID42237::_ID8201(), "_stealth_find_jog", "_stealth_find_run" );

    _ID42386::_ID36246( self, "gravity", var_1 );
}

_ID11399( var_0 )
{
    self endon( "enemy" );

    if ( isdefined( self._ID322 ) )
        return;

    self._ID49 = 1;
    var_1 = "_stealth_dog_find";
    _ID42386::_ID36246( self, "gravity", var_1 );
}
