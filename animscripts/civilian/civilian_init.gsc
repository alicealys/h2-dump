// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    animscripts\init::_ID616();
    _ID7634();
}
#using_animtree("generic_human");

_ID7634()
{
    self._ID49 = 1;
    self._ID10998 = 1;
    self._ID11025 = 1;
    self._ID24727 = 1;
    self._ID2832 = 1;
    self orientmode( "face default" );
    self._ID199 = "no_cover";
    self pushplayer( 0 );
    self._ID7._ID29139 = 1;

    if ( !isdefined( level._ID19937 ) )
    {
        level._ID19937 = 1;
        level._ID30895["default_civilian"]["run_combat"][0] = %civilian_run_upright;
        level._ID30895["default_civilian"]["run_combat"][1] = %h2_civ_run_upright_twitch01;
        level._ID30895["default_civilian"]["run_combat"][2] = %h2_civ_run_upright_twitch02;
        level._ID30895["default_civilian"]["run_hunched_combat"][0] = %civilian_run_hunched_a;
        level._ID30895["default_civilian"]["run_hunched_combat"][1] = %civilian_run_hunched_c;
        level._ID30895["default_civilian"]["run_hunched_combat"][2] = %civilian_run_hunched_flinch;
        level._ID30895["default_civilian"]["run_hunched_combat"][3] = %h2_civ_run_hunched_twitch01;
        level._ID30895["default_civilian"]["run_noncombat"][0] = %civilian_walk_cool;
        var_0 = [];
        var_0[0] = 9;
        var_0[1] = 9;
        var_0[2] = 1;
        var_0[3] = 1;
        level._ID30895["default_civilian"]["run_hunched_weights"] = _ID42237::_ID15649( var_0 );
        var_0 = [];
        var_0[0] = 6;
        var_0[1] = 1;
        var_0[2] = 1;
        level._ID30895["default_civilian"]["run_weights"] = _ID42237::_ID15649( var_0 );
        level._ID30895["default_civilian"]["idle_noncombat"][0] = %unarmed_cowerstand_idle;
        level._ID30895["default_civilian"]["idle_combat"][0] = %unarmed_cowercrouch_idle;
        level._ID30895["default_civilian"]["idle_combat"][1] = %unarmed_cowercrouch_idle_duck;
        anim._ID7698[0] = %unarmed_cowerstand_react;
        anim._ID7698[1] = %unarmed_cowercrouch_react_a;
        anim._ID7698[2] = %unarmed_cowercrouch_react_b;
    }

    var_1 = undefined;

    if ( isdefined( self._ID7680 ) )
    {
        self._ID3189 = self._ID7680;
        _ID3596( self._ID7680 );
        self._ID38 = "noncombat";
        _ID36148();
    }
    else
    {
        self._ID3189 = "default_civilian";
        self._ID38 = "alert";
        _ID36103( 0 );
    }

    thread _ID7419();
    self._ID309 = 0;
    animscripts\shared::_ID12142();
    self._ID30739 = 0;
}

_ID3596( var_0 )
{
    if ( isdefined( self._ID18206 ) )
        return;

    _ID19866();
    var_1 = anim._ID7702[var_0];

    if ( isdefined( var_1 ) )
    {
        self._ID3578 = var_1;
        self._ID3579 = "tag_inhand";
        self attach( self._ID3578, self._ID3579, 1 );
        self._ID18206 = 1;
    }
}

_ID10630()
{
    if ( isdefined( self._ID18206 ) )
    {
        self detach( self._ID3578, self._ID3579 );
        var_0 = spawn( "script_model", self gettagorigin( self._ID3579 ) );
        var_0._ID65 = self gettagangles( self._ID3579 );
        var_0 setmodel( self._ID3578 );
        var_0 physicslaunchclient();
        var_0 thread _ID40988();
        self._ID18206 = undefined;
        self._ID3578 = undefined;
        self._ID3579 = undefined;
    }
}

_ID40988()
{
    wait 10;
    self delete();
}

_ID19866()
{
    if ( isdefined( anim._ID7702 ) )
        return;

    anim._ID7702 = [];
    anim._ID7702["civilian_briefcase_walk"] = "com_metal_briefcase";
    anim._ID7702["civilian_crazy_walk"] = "electronics_pda";
    anim._ID7702["civilian_cellphone_walk"] = "com_cellphone_on";
    anim._ID7702["sit_lunch_A"] = "com_cellphone_on";
    anim._ID7702["civilian_soda_walk"] = "ma_cup_single_closed";
    anim._ID7702["civilian_paper_walk"] = "paper_memo";
    anim._ID7702["civilian_coffee_walk"] = "cs_coffeemug02";
    anim._ID7702["civilian_pda_walk"] = "electronics_pda";
    anim._ID7702["reading1"] = "open_book";
    anim._ID7702["reading2"] = "open_book";
    anim._ID7702["texting_stand"] = "electronics_pda";
    anim._ID7702["texting_sit"] = "electronics_pda";
    anim._ID7702["smoking1"] = "prop_cigarette";
    anim._ID7702["smoking2"] = "prop_cigarette";
}

_ID36148()
{
    self._ID1230 = 0.2;

    if ( isdefined( self._ID7680 ) )
    {
        var_0 = %civilian_briefcase_walk_dodge_l;
        var_1 = %civilian_briefcase_walk_dodge_r;

        if ( isdefined( level._ID30895[self._ID3189]["dodge_left"] ) )
            var_0 = level._ID30895[self._ID3189]["dodge_left"];

        if ( isdefined( level._ID30895[self._ID3189]["dodge_right"] ) )
            var_1 = level._ID30895[self._ID3189]["dodge_right"];

        animscripts\move::_ID32598( var_0, var_1 );
    }

    if ( isdefined( level._ID30895[self._ID3189]["turn_left_90"] ) )
    {
        self._ID26360 = animscripts\civilian\civilian_move::_ID7645;
        self._ID26359 = 0.1;
        _ID42407::_ID12549();
    }
    else
        _ID42407::_ID10989();

    self._ID30386 = level._ID30895[self._ID3189]["run_noncombat"];
    self._ID41227 = self._ID30386;
    self._ID30388 = undefined;

    if ( self._ID3189 == "default_civilian" )
    {
        self._ID30385 = level._ID30895[self._ID3189]["run_weights_noncombat"];
        self._ID41226 = self._ID30385;
    }
}

_ID36103( var_0 )
{
    self notify( "combat" );
    animscripts\move::_ID7915();
    self._ID26359 = undefined;
    _ID42407::_ID12549();
    self._ID1230 = 0.3;
    self._ID46224 = randomint( 3 ) < 1;

    if ( isdefined( self._ID14738 ) )
        self._ID46224 = 1;
    else if ( isdefined( self._ID14737 ) )
        self._ID46224 = 0;

    if ( self._ID46224 )
    {
        self._ID26360 = animscripts\civilian\civilian_move::_ID7592;
        self._ID30386 = level._ID30895["default_civilian"]["run_combat"];
        self._ID30385 = level._ID30895["default_civilian"]["run_weights"];
    }
    else
    {
        self._ID26360 = animscripts\civilian\civilian_move::_ID7591;
        self._ID30386 = level._ID30895["default_civilian"]["run_hunched_combat"];
        self._ID30385 = level._ID30895["default_civilian"]["run_hunched_weights"];
    }

    if ( level._ID912 != "ending" )
    {
        self._ID24409 = undefined;
        animscripts\move::_ID32598( %h2_civ_crowd_dodge_run_left, %h2_civ_crowd_dodge_run_right );
    }

    self._ID30388 = [];
    self._ID30388[0] = %run_react_stumble;
    self._ID41227 = self._ID30386;
    self._ID41226 = self._ID30385;

    if ( level._ID912 != "ending" )
        self._ID9575 = animscripts\civilian\civilian_move::_ID48313;

    if ( self._ID675 != "stop" && var_0 )
        animscripts\move::_ID29843( 0 );
}

_ID7419()
{
    self endon( "death" );
    self endon( "disable_combat_state_check" );
    self._ID50211 = self._ID39 > 1;

    for (;;)
    {
        var_0 = self._ID39 > 1;

        if ( self._ID50211 && !var_0 )
            _ID36148();
        else if ( !self._ID50211 && var_0 )
            _ID36103( 1 );

        self._ID50211 = var_0;
        wait 0.05;
    }
}
