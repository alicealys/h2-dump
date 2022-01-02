// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19602()
{
    var_0 = [];
    var_0["stand"][0] = [ %casual_stand_idle, %casual_stand_idle_twitch, %casual_stand_idle_twitchb ];
    var_0["stand_combat"][0] = [ %cqb_stand_idle, %cqb_stand_twitch ];
    var_0["stand_cqb"][0] = [ %cqb_stand_idle, %cqb_stand_twitch ];
    var_0["crouch"][0] = [ %casual_crouch_idle ];
    var_0["crouch_combat"][0] = [ %exposed_crouch_aim_5 ];
    var_1 = [];
    var_1["crouch_combat"][0] = %exposed_crouch_idle_alert_v1;
    var_1["crouch_combat"][1] = %exposed_crouch_idle_alert_v2;
    var_1["crouch_combat"][2] = %exposed_crouch_idle_alert_v3;
    anim._ID3277["soldier"]["idle"] = var_0;
    anim._ID3277["soldier"]["idle_add"] = var_1;
    var_0 = [];
    var_0["stand"][0] = [ 2, 1, 1 ];
    var_0["stand"][1] = [ 10, 4, 7, 4 ];
    var_0["stand_combat"][0] = [ 2, 1 ];
    var_0["stand_cqb"][0] = [ 2, 1 ];
    var_0["crouch"][0] = [ 6 ];
    var_0["crouch_combat"][0] = [ 6 ];
    anim._ID3277["soldier"]["idle_weights"] = var_0;
    var_0 = [];
    var_0["stand"] = %casual_stand_idle_trans_in;
    var_0["crouch"] = %casual_crouch_idle_in;
    var_0["stand_smg"] = %smg_casual_stand_idle_trans_in;
    anim._ID3277["soldier"]["idle_transitions"] = var_0;
}

main()
{
    if ( isdefined( self._ID24817 ) )
        return;

    if ( isdefined( self._ID9526 ) )
    {
        if ( isdefined( self._ID9526["stop"] ) )
        {
            [[ self._ID9526["stop"] ]]();
            return;
        }
    }

    self notify( "stopScript" );
    self endon( "killanimscript" );
    [[ self._ID13288["stop_immediate"] ]]();
    thread _ID10211();
    animscripts\utility::_ID19930( "stop" );

    if ( isdefined( self._ID35378 ) )
        _ID35379();

    animscripts\utility::_ID28972();
    thread _ID32673();
    thread animscripts\reactions::_ID29069();
    var_0 = isdefined( self._ID9568 );

    if ( !var_0 )
    {
        if ( self._ID7._ID41701["right"] == "none" && self._ID7._ID41701["left"] == "none" )
            var_0 = 1;
        else if ( angleclamp180( self getmuzzleangle()[0] ) > 20 )
            var_0 = 1;
    }

    if ( self.swimmer && !isdefined( self.enemy ) )
    {
        var_1 = animscripts\exit_node::_ID16270();

        if ( isdefined( var_1 ) )
        {
            self setflaggedanimknoballrestart( "idle", self._ID9568["stand"], %body, 1, 0.5, self._ID3195 );
            _ID39231( var_1.angles[1] );
        }
        else
            self orientmode( "face angle", self.angles[1] );
    }

    for (;;)
    {
        var_2 = _ID16217();

        if ( var_2 == "prone" )
        {
            var_0 = 1;
            _ID28715();
            continue;
        }

        if ( self._ID7._ID28253 != var_2 )
        {
            self clearanim( %animscript_root, 0.3 );
            var_0 = 0;
        }

        if ( animscripts\setposemovement::_ID32756( var_2, "stop" ) )
            continue;

        if ( !var_0 )
        {
            _ID38690( var_2, self._ID7._ID19332 );
            var_0 = 1;
            continue;
        }

        _ID28077( var_2, self._ID7._ID19332 );
    }
}

_ID39231( var_0 )
{
    var_1 = self.angles[1];
    var_2 = angleclamp180( var_0 - var_1 );

    if ( -20 < var_2 && var_2 < 20 )
    {
        _ID30219( var_0, 2 );
        return;
    }

    var_3 = animscripts\swim::_ID16643( "idle_turn" );

    if ( var_2 < -80 )
        var_4 = var_3[2];
    else if ( var_2 < -20 )
        var_4 = var_3[3];
    else if ( var_2 < 80 )
        var_4 = var_3[5];
    else
        var_4 = var_3[6];

    var_5 = getanimlength( var_4 );
    var_6 = abs( var_2 ) / self.turnrate;
    var_6 /= 1000;
    var_7 = var_5 / var_6;
    self orientmode( "face angle", var_0 );
    self setflaggedanimrestart( "swim_turn", var_4, 1, 0.2, var_7 * self._ID24424 );
    animscripts\shared::_ID11529( "swim_turn" );
    self clearanim( var_4, 0.2 );
}

_ID30219( var_0, var_1 )
{
    self orientmode( "face angle", var_0 );

    while ( angleclamp( var_0 - self.angles[1] ) > var_1 )
        wait 0.1;
}

_ID32673()
{
    self endon( "death" );
    self waittill( "killanimscript" );
    self._ID22016 = gettime();
}

_ID35379()
{
    self endon( "stop_specialidle" );
    self._ID7._ID24414 = "stop";
    var_0 = self._ID35378;
    self animmode( "gravity" );
    self orientmode( "face current" );
    self clearanim( %animscript_root, 0.2 );

    if ( var_0.size == 0 )
        return;

    var_1 = [];
    var_2 = var_0[0];

    for (;;)
    {
        if ( var_1.size == 0 )
            var_1 = _ID42237::_ID3320( var_0 );

        if ( var_1[0] == var_2 && var_1.size > 1 )
            var_2 = var_1[1];
        else
            var_2 = var_1[0];

        var_1 = _ID42237::_ID3321( var_1, var_2 );
        self setflaggedanimrestart( "special_idle", var_2, 1, 0.2, self._ID3195 );
        childthread animscripts\shared::_ID11529( "special_idle" );
        self waittillmatch( "special_idle",  "end"  );

        if ( var_0.size > 1 )
            self clearanim( var_2, 0.2 );
    }
}

_ID16217()
{
    var_0 = animscripts\utility::_ID16178();

    if ( isdefined( var_0 ) )
    {
        var_1 = var_0.angles[1];
        var_2 = var_0.type;
    }
    else
    {
        var_1 = self.desiredangle;
        var_2 = "node was undefined";
    }

    animscripts\face::_ID32658( anim._ID2517 );
    var_3 = animscripts\utility::_ID7496();

    if ( var_2 == "Cover Stand" || var_2 == "Conceal Stand" )
        var_3 = animscripts\utility::_ID7496( "stand" );
    else if ( var_2 == "Cover Crouch" || var_2 == "Conceal Crouch" )
        var_3 = animscripts\utility::_ID7496( "crouch" );
    else if ( var_2 == "Cover Prone" || var_2 == "Conceal Prone" )
        var_3 = animscripts\utility::_ID7496( "prone" );

    return var_3;
}

_ID38690( var_0, var_1 )
{
    var_2 = self _meth_816f();

    if ( isdefined( self.node ) )
    {
        if ( self.node _meth_8037() )
            var_2 = 1;

        if ( self.node _meth_8578() )
            var_2 = 0;
    }

    if ( animscripts\utility::_ID20716() && self._ID7._ID28253 == "stand" && ( animscripts\utility::_ID20775() || var_2 ) )
        var_0 = "stand_cqb";
    else if ( animscripts\utility::_ID39998() && self._ID7._ID28253 == "stand" )
        var_0 = "stand_smg";
    else if ( self._ID7._ID28253 == "stand" && var_2 )
        var_0 = "stand_combat";
    else if ( self._ID7._ID28253 == "crouch" && var_2 )
        var_0 = "crouch_combat";

    var_3 = animscripts\utility::_ID22631( "idle_transitions" );

    if ( isdefined( var_3[var_0] ) )
    {
        var_4 = var_3[var_0];
        self setflaggedanimknoballrestart( "idle_transition", var_4, %body, 1, 0.2, self._ID3195 );
        animscripts\shared::_ID11529( "idle_transition" );
    }
}

_ID28077( var_0, var_1 )
{
    var_2 = self _meth_816f();

    if ( isdefined( self.node ) )
    {
        if ( self.node _meth_8037() )
            var_2 = 1;

        if ( self.node _meth_8578() )
            var_2 = 0;
    }

    if ( animscripts\utility::_ID20716() && self._ID7._ID28253 == "stand" && ( animscripts\utility::_ID20775() || var_2 ) )
        var_0 = "stand_cqb";
    else if ( self._ID7._ID28253 == "stand" && var_2 )
        var_0 = "stand_combat";
    else if ( self._ID7._ID28253 == "crouch" && var_2 )
        var_0 = "crouch_combat";

    var_3 = undefined;

    if ( isdefined( self._ID9568 ) && isdefined( self._ID9568[var_0] ) )
    {
        if ( isarray( self._ID9568[var_0] ) )
            var_4 = animscripts\utility::_ID2989( self._ID9568[var_0], self._ID9569[var_0] );
        else
        {
            var_4 = self._ID9568[var_0];
            var_5 = var_0 + "_add";

            if ( isdefined( self._ID9568[var_5] ) )
                var_3 = self._ID9568[var_5];
        }
    }
    else if ( isdefined( anim._ID29152 ) && ( var_0 == "stand" || var_0 == "stand_cqb" ) && isdefined( self._ID6471 ) && self._ID6471 == 1 )
        var_4 = animscripts\utility::_ID2989( anim._ID29152["stand"][0], anim._ID29153["stand"][0] );
    else
    {
        var_6 = animscripts\utility::_ID22631( "idle" );
        var_7 = animscripts\utility::_ID22631( "idle_weights" );
        var_1 %= var_6[var_0].size;
        var_4 = animscripts\utility::_ID2989( var_6[var_0][var_1], var_7[var_0][var_1] );
        var_8 = animscripts\utility::_ID22631( "idle_add" );

        if ( isdefined( var_8[var_0] ) )
        {
            var_9 = var_8[var_0].size * 6;
            var_10 = randomint( var_9 );

            if ( var_10 < var_8[var_0].size )
                var_3 = var_8[var_0][var_10];
        }
    }

    var_11 = 0.2;

    if ( gettime() == self._ID7._ID31561 )
        var_11 = 0.5;

    if ( isdefined( var_3 ) )
    {
        self setanimknoball( var_4, %body, 1, var_11, 1 );
        self setanim( %add_idle );
        self setflaggedanimknoballrestart( "idle", var_3, %add_idle, 1, var_11, self._ID3195 );
    }
    else
        self setflaggedanimknoballrestart( "idle", var_4, %body, 1, var_11, self._ID3195 );

    animscripts\shared::_ID11529( "idle" );
}

_ID28715()
{
    var_0 = [];
    var_1 = undefined;
    var_2 = undefined;

    if ( self._ID7._ID28253 != "prone" )
    {
        var_0["stand_2_prone"] = %stand_2_prone;
        var_0["crouch_2_prone"] = %crouch_2_prone;
        var_1 = var_0[self._ID7._ID28253 + "_2_prone"];
    }
    else if ( self._ID7._ID24414 != "stop" )
    {
        if ( self.prevscript == "move" && isdefined( self._ID46487 ) && isdefined( self._ID45835 ) && self._ID45835 == "prone" )
        {
            var_3 = getanimlength( self._ID46487 ) * ( 1 - self getanimtime( self._ID46487 ) );

            if ( var_3 > 0.05 )
            {
                var_2 = self getanimtime( self._ID46487 );
                var_1 = self._ID46487;
            }
        }
        else
            var_1 = %h1_crawl_2_prone;
    }

    if ( isdefined( var_1 ) )
    {
        self setflaggedanimknoballrestart( "trans", var_1, %body, 1, 0.2, 1.0 );

        if ( isdefined( var_2 ) )
            self setanimtime( var_1, var_2 );

        animscripts\shared::_ID11529( "trans" );
        self._ID7._ID24414 = "stop";
        self setproneanimnodes( -45, 45, %prone_legs_down, %exposed_modern, %prone_legs_up );
        return;
    }

    thread _ID39762();

    if ( randomint( 10 ) < 3 )
    {
        var_4 = animscripts\utility::_ID22630( "cover_prone", "twitch" );
        var_5 = var_4[randomint( var_4.size )];
        self setflaggedanimknoball( "prone_idle", var_5, %exposed_modern, 1, 0.2 );
    }
    else
    {
        self setanimknoball( animscripts\utility::_ID22630( "cover_prone", "straight_level" ), %exposed_modern, 1, 0.2 );
        self setflaggedanimknob( "prone_idle", animscripts\utility::_ID22630( "cover_prone", "exposed_idle" )[0], 1, 0.2 );
    }

    self waittillmatch( "prone_idle",  "end"  );
    self notify( "kill UpdateProneThread" );
}

_ID39762()
{
    self endon( "killanimscript" );
    self endon( "kill UpdateProneThread" );

    for (;;)
    {
        animscripts\cover_prone::_ID39763( 0.1 );
        wait 0.1;
    }
}

_ID10211()
{
    self endon( "killanimscript" );
    wait 0.05;
    [[ self._ID13288["stop"] ]]();
}
