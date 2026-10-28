// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    if ( self.alertlevelint > 1 )
        self.custommovetransition = ::_id_BCB9;

    animscripts\move::main();
}

#using_animtree("generic_human");

_id_BCB9()
{
    var_0 = anglestoforward( self.angles );
    var_1 = vectordot( self.lookaheaddir, var_0 ) >= 0;

    if ( !var_1 )
    {
        if ( self._id_B490 )
            var_2 = %h2_unarmed_cowercrouch_react180_2_run_upright;
        else
            var_2 = %h2_unarmed_cowercrouch_react180_2_run_hunched;
    }
    else if ( self._id_C423 )
    {
        if ( self._id_B490 )
            var_2 = %h2_unarmed_cowercrouch_react_2_run_upright;
        else
            var_2 = %h2_unarmed_cowercrouch_react_2_run_hunched;
    }
    else if ( self._id_B490 )
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
    animscripts\shared::donotetracks( "civ_start_anim" );
}

civilian_noncombatmoveturn( var_0, var_1 )
{
    var_2 = undefined;

    if ( var_0 < -60 && var_0 > -120 )
        var_2 = level.scr_anim[self.animname]["turn_left_90"];

    if ( var_0 > 60 && var_0 < 120 )
        var_2 = level.scr_anim[self.animname]["turn_right_90"];

    if ( isdefined( var_2 ) && animscripts\move::pathchange_candoturnanim( var_2 ) )
        return var_2;
    else
        return undefined;
}

civilian_combatmoveturn( var_0, var_1 )
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

    if ( isdefined( var_2 ) && animscripts\move::pathchange_candoturnanim( var_2 ) )
    {
        self.pathturnanimblendtime = 0.2;
        return var_2;
    }

    return undefined;
}

civilian_combathunchedmoveturn( var_0, var_1 )
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
            var_3 = animscripts\utility::randomanimoftwo( %civilian_run_hunched_turnl90_slide, %civilian_run_hunched_turnl90_stumble );
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
            var_3 = animscripts\utility::randomanimoftwo( %civilian_run_hunched_turnr90_slide, %civilian_run_hunched_turnr90_stumble );
        }
        else if ( var_0 < 157.5 )
            var_2 = %civilian_run_upright_turnr135;
        else
            var_2 = %civilian_run_upright_turn180;
    }

    if ( isdefined( var_3 ) && randomint( 3 ) < 2 && animscripts\move::pathchange_candoturnanim( var_3 ) )
    {
        self.pathturnanimblendtime = 0.2;
        return var_3;
    }

    if ( isdefined( var_2 ) && animscripts\move::pathchange_candoturnanim( var_2 ) )
    {
        self.pathturnanimblendtime = 0.2;
        return var_2;
    }

    return undefined;
}
