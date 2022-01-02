// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24479()
{
    var_0 = undefined;

    if ( isdefined( self.pathgoalpos ) && distancesquared( self.origin, self.pathgoalpos ) > 4096 )
        var_0 = "stand";

    var_1 = [[ self._ID7497 ]]( var_0 );

    switch ( var_1 )
    {
        case "stand":
            if ( animscripts\setposemovement::_ID35615() )
                return;

            if ( isdefined( self._ID41227 ) )
            {
                animscripts\move::_ID24447( self._ID41227, self._ID41226 );
                return;
            }

            _ID11665( _ID16734( "straight" ) );
            break;
        case "crouch":
            if ( animscripts\setposemovement::_ID9370() )
                return;

            _ID11665( _ID16734( "crouch" ) );
            break;
        default:
            if ( animscripts\setposemovement::_ID28727() )
                return;

            self._ID7._ID24414 = "walk";
            _ID11665( _ID16734( "prone" ) );
            break;
    }
}
#using_animtree("generic_human");

_ID11666( var_0 )
{
    self endon( "movemode" );
    self clearanim( %combatrun, 0.6 );
    self setanimknoball( %combatrun, %body, 1, 0.5, self._ID24424 );

    if ( isarray( self._ID41227 ) )
    {
        var_1 = animscripts\move::_ID49688( self._ID41226 );

        if ( isdefined( var_1 ) )
            var_2 = var_1;
        else if ( isdefined( self._ID41226 ) )
            var_2 = _ID42237::_ID7490( self._ID41227, self._ID41226 );
        else
            var_2 = self._ID41227[randomint( self._ID41227.size )];
    }
    else
        var_2 = self._ID41227;

    self setflaggedanimknob( "moveanim", var_2, 1, 0.2 );
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

    if ( !animscripts\utility::_ID20775() && !( isdefined( self._ID24936 ) && self._ID24936 ) && !( isdefined( self._ID7._ID4958 ) && self._ID7._ID4958 ) )
    {
        var_3 = animscripts\utility::_ID16432( "straight_twitch" );

        if ( isdefined( self._ID20961 ) && self._ID20961 )
        {
            var_4 = animscripts\traverse\shared::_ID16446();

            if ( var_4 == "Left" )
                var_3 = animscripts\utility::_ID16432( "straight_twitch_l" );
            else if ( var_4 == "Right" )
                var_3 = animscripts\utility::_ID16432( "straight_twitch_r" );
        }

        if ( !isdefined( self._ID7._ID30423 ) )
        {
            if ( isarray( var_2 ) )
                var_2 = var_2[randomint( var_2.size )];

            return var_2;
        }

        if ( isdefined( var_3 ) && var_3.size > 0 )
        {
            var_5 = animscripts\utility::_ID16553( self._ID7._ID30423, 4 );

            if ( var_5 == 0 )
                return animscripts\utility::_ID47584( var_3 );
        }
    }

    if ( isarray( var_2 ) )
        var_2 = var_2[randomint( var_2.size )];

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
        if ( isdefined( self.enemy ) )
        {
            animscripts\cqb::_ID8930();

            if ( animscripts\stairs_utility::_ID54360() )
                var_2 = %body;
            else
                var_2 = %walk_and_run_loops;

            self setflaggedanimknoball( "walkanim", animscripts\cqb::_ID10665(), var_2, 1, 1, var_1, 1 );
        }
        else
            self setflaggedanimknoball( "walkanim", var_0, %body, 1, 1, var_1, 1 );

        _ID53597();
    }
    else if ( self._ID7._ID28253 == "prone" )
        self setflaggedanimknob( "walkanim", animscripts\utility::_ID16432( "prone" ), 1, 0.3, self._ID24424 );
    else
    {
        self setflaggedanimknoball( "walkanim", var_0, %body, 1, 1, var_1, 1 );
        _ID53597();
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
