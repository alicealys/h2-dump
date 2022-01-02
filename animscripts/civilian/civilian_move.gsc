// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( self.alertlevelint > 1 )
        self._ID9575 = ::_ID48313;

    animscripts\move::main();
}
#using_animtree("generic_human");

_ID48313()
{
    var_0 = anglestoforward( self.angles );
    var_1 = vectordot( self.lookaheaddir, var_0 ) >= 0;

    if ( !var_1 )
    {
        if ( self._ID46224 )
            var_2 = %h2_unarmed_cowercrouch_react180_2_run_upright;
        else
            var_2 = %h2_unarmed_cowercrouch_react180_2_run_hunched;
    }
    else if ( self._ID50211 )
    {
        if ( self._ID46224 )
            var_2 = %h2_unarmed_cowercrouch_react_2_run_upright;
        else
            var_2 = %h2_unarmed_cowercrouch_react_2_run_hunched;
    }
    else if ( self._ID46224 )
    {
        var_3 = [ %h2_civilian_react_2_run_upright01, %h2_civilian_react_2_run_upright02, %h2_civilian_react_2_run_upright03 ];
        var_2 = var_3[randomint( var_3.size )];
    }
    else
    {
        var_3 = [ %h2_civilian_react_2_run_hunched01, %h2_civilian_react_2_run_hunched02 ];
        var_2 = var_3[randomint( var_3.size )];
    }

    self setflaggedanimknoball( "civ_start_anim", var_2, %body, 0.2, 1 );
    animscripts\shared::_ID11529( "civ_start_anim" );
}

_ID7645( var_0, var_1 )
{
    var_2 = undefined;

    if ( var_0 < -60 && var_0 > -120 )
        var_2 = level._ID30895[self._ID3189]["turn_left_90"];

    if ( var_0 > 60 && var_0 < 120 )
        var_2 = level._ID30895[self._ID3189]["turn_right_90"];

    if ( isdefined( var_2 ) && animscripts\move::_ID26327( var_2 ) )
        return var_2;
    else
        return undefined;
}

_ID7592( var_0, var_1 )
{
    var_2 = undefined;

    if ( var_0 < -22.5 )
    {
        if ( var_0 > -60 )
            var_2 = %civilian_run_upright_turnl45;
        else if ( var_0 > -112.5 )
            var_2 = %civilian_run_upright_turnl90;
        else if ( var_0 > -157.5 )
            var_2 = %civilian_run_upright_turnl135;
        else
            var_2 = %civilian_run_upright_turn180;
    }
    else if ( var_0 > 22.5 )
    {
        if ( var_0 < 60 )
            var_2 = %civilian_run_upright_turnr45;
        else if ( var_0 < 112.5 )
            var_2 = %civilian_run_upright_turnr90;
        else if ( var_0 < 157.5 )
            var_2 = %civilian_run_upright_turnr135;
        else
            var_2 = %civilian_run_upright_turn180;
    }

    if ( isdefined( var_2 ) && animscripts\move::_ID26327( var_2 ) )
    {
        self._ID26359 = 0.2;
        return var_2;
    }

    return undefined;
}

_ID7591( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;

    if ( var_0 < -22.5 )
    {
        if ( var_0 > -60 )
            var_2 = %civilian_run_hunched_turnl45;
        else if ( var_0 > -112.5 )
        {
            var_2 = %civilian_run_hunched_turnl90;
            var_3 = animscripts\utility::_ID28961( %civilian_run_hunched_turnl90_slide, %civilian_run_hunched_turnl90_stumble );
        }
        else if ( var_0 > -157.5 )
            var_2 = %civilian_run_upright_turnl135;
        else
            var_2 = %civilian_run_upright_turn180;
    }
    else if ( var_0 > 22.5 )
    {
        if ( var_0 < 60 )
            var_2 = %civilian_run_hunched_turnr45;
        else if ( var_0 < 112.5 )
        {
            var_2 = %civilian_run_hunched_turnr90;
            var_3 = animscripts\utility::_ID28961( %civilian_run_hunched_turnr90_slide, %civilian_run_hunched_turnr90_stumble );
        }
        else if ( var_0 < 157.5 )
            var_2 = %civilian_run_upright_turnr135;
        else
            var_2 = %civilian_run_upright_turn180;
    }

    if ( isdefined( var_3 ) && randomint( 3 ) < 2 && animscripts\move::_ID26327( var_3 ) )
    {
        self._ID26359 = 0.2;
        return var_3;
    }

    if ( isdefined( var_2 ) && animscripts\move::_ID26327( var_2 ) )
    {
        self._ID26359 = 0.2;
        return var_2;
    }

    return undefined;
}
