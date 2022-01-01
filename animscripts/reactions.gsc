// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "reactions" );
    _ID24751();
}
#using_animtree("generic_human");

_ID19621()
{
    var_0 = [];
    var_0["cover_stand"] = [ %stand_cover_reaction_a, %stand_cover_reaction_b ];
    var_0["cover_crouch"] = [ %stand_cover_reaction_a, %stand_cover_reaction_b ];
    var_0["cover_left"] = [ %stand_cover_reaction_a, %stand_cover_reaction_b ];
    var_0["cover_right"] = [ %stand_cover_reaction_a, %stand_cover_reaction_b ];
    anim._ID3277["soldier"]["cover_reactions"] = var_0;
    var_0 = [];
    var_0[0] = %run_wizby_a;
    var_0[1] = %run_wizby_b;
    anim._ID3277["soldier"]["running_react_to_bullets"] = var_0;
    anim._ID46216 = 0;

    foreach ( var_2 in var_0 )
    {
        var_3 = length( getangledelta( var_2, 0, 1 ) );

        if ( var_3 > anim._ID46216 )
            anim._ID46216 = var_3;
    }

    var_0 = [];
    var_0[0] = %run_react_flinch;
    var_0[1] = %run_react_duck;
    anim._ID3277["soldier"]["running_react_to_bullets_hero"] = var_0;

    foreach ( var_2 in var_0 )
    {
        var_3 = length( getangledelta( var_2, 0, 1 ) );

        if ( var_3 > anim._ID46216 )
            anim._ID46216 = var_3;
    }

    anim._ID21976 = 0;
}

_ID29069()
{
    thread _ID6326();
}

_ID6876()
{
    return !isdefined( self._ID21973 ) || gettime() - self._ID21973 > 2000;
}

_ID47417()
{
    if ( !isdefined( level._ID50494 ) )
        level._ID50494 = 0;

    level._ID50494 = !level._ID50494;
    return level._ID50494;
}

_ID52514()
{
    if ( !isdefined( level._ID44423 ) || level._ID44423.size == 0 )
        level._ID44423 = _ID42237::_ID3320( [ 0, 1, 2, 3 ] );

    var_0 = level._ID44423[0];
    level._ID44423 = _ID42237::_ID3321( level._ID44423, var_0 );
    return var_0;
}

_ID6327()
{
    var_0 = gettime();
    self endon( "killanimscript" );
    self._ID21973 = gettime();
    self._ID7._ID24414 = "stop";
    var_1 = isdefined( self._ID41753 ) && distancesquared( self._ID740, self._ID41753._ID740 ) < 160000;
    self animmode( "gravity" );
    self orientmode( "face current" );

    if ( isdefined( self._ID45219 ) || var_1 || _ID47417() )
    {
        self clearanim( %animscript_root, 0.1 );
        var_2 = [];

        if ( animscripts\utility::_ID39998() )
        {
            var_2[0] = %smg_exposed_idle_reacta;
            var_2[1] = %smg_exposed_idle_reactb;
            var_2[2] = %smg_exposed_idle_twitch;
            var_2[3] = %smg_exposed_idle_twitch_v4;
        }
        else
        {
            var_2[0] = %exposed_idle_reacta;
            var_2[1] = %exposed_idle_reactb;
            var_2[2] = %exposed_idle_twitch;
            var_2[3] = %exposed_idle_twitch_v4;
        }

        var_3 = var_2[_ID52514()];

        if ( var_1 )
            var_4 = 1 + randomfloat( 0.5 );
        else
            var_4 = 0.2 + randomfloat( 0.5 );

        self setflaggedanimknobrestart( "reactanim", var_3, 1, 0.1, 1 );
        animscripts\notetracks::_ID11534( var_4, "reactanim" );
        self clearanim( %animscript_root, 0.1 );

        if ( !var_1 && self._ID1012 == "none" && !isdefined( self._ID10902 ) )
        {
            var_5 = 1 + randomfloat( 0.2 );
            var_6 = animscripts\utility::_ID28961( %exposed_dive_grenade_b, %exposed_dive_grenade_f );
            self setflaggedanimknobrestart( "dive", var_6, 1, 0.1, var_5 );
            animscripts\shared::_ID11529( "dive" );
        }
    }
    else
    {
        wait(randomfloat( 0.2 ));
        var_5 = 1.2 + randomfloat( 0.3 );

        if ( self._ID7._ID28253 == "stand" )
        {
            self clearanim( %animscript_root, 0.1 );
            self setflaggedanimknobrestart( "crouch", %exposed_stand_2_crouch, 1, 0.1, var_5 );
            animscripts\shared::_ID11529( "crouch" );
        }

        var_7 = anglestoforward( self._ID65 );

        if ( isdefined( self._ID41753 ) )
            var_8 = vectornormalize( self._ID41753._ID740 - self._ID740 );
        else
            var_8 = var_7;

        if ( vectordot( var_8, var_7 ) > 0 )
        {
            var_9 = animscripts\utility::_ID28961( %exposed_crouch_idle_twitch_v2, %exposed_crouch_idle_twitch_v3 );
            self clearanim( %animscript_root, 0.1 );
            self setflaggedanimknobrestart( "twitch", var_9, 1, 0.1, 1 );
            animscripts\shared::_ID11529( "twitch" );
        }
        else
        {
            var_10 = animscripts\utility::_ID28961( %exposed_crouch_turn_180_left, %exposed_crouch_turn_180_right );
            self clearanim( %animscript_root, 0.1 );
            self setflaggedanimknobrestart( "turn", var_10, 1, 0.1, 1 );
            animscripts\shared::_ID11529( "turn" );
        }
    }

    self clearanim( %animscript_root, 0.1 );
    self._ID41753 = undefined;
    self animmode( "normal" );
    self orientmode( "face default" );
}

_ID6326()
{
    self endon( "killanimscript" );

    if ( isdefined( self._ID11002 ) )
        return;

    for (;;)
    {
        self waittill( "bulletwhizby",  var_0  );

        if ( isdefined( self._ID11002 ) )
            return;

        if ( !isdefined( var_0._ID1194 ) || self._ID1194 == var_0._ID1194 )
            continue;

        if ( isdefined( self._ID8893 ) || isdefined( self._ID2925 ) )
            continue;

        if ( self._ID7._ID28253 != "stand" )
            continue;

        if ( !_ID6876() )
            continue;

        self._ID41753 = var_0;
        self animcustom( ::_ID6327 );
    }
}

_ID7927()
{
    self endon( "killanimscript" );
    wait 0.3;
    self setlookatentity();
}

_ID16444()
{
    var_0 = undefined;

    if ( self nearclaimnodeandangle() )
    {
        var_1 = animscripts\utility::_ID22631( "cover_reactions" );

        if ( isdefined( var_1[self._ID823] ) )
        {
            var_2 = anglestoforward( self._ID700._ID65 );
            var_3 = vectornormalize( self._ID859 - self._ID740 );

            if ( vectordot( var_2, var_3 ) < -0.5 )
            {
                self orientmode( "face current" );
                var_4 = randomint( var_1[self._ID823].size );
                var_0 = var_1[self._ID823][var_4];
            }
        }
    }

    if ( !isdefined( var_0 ) )
    {
        var_5 = [];

        if ( animscripts\utility::_ID39998() )
        {
            var_5[0] = %smg_exposed_backpedal;
            var_5[1] = %smg_exposed_idle_reactb;
        }
        else
        {
            var_5[0] = %exposed_backpedal;
            var_5[1] = %exposed_idle_reactb;
        }

        if ( isdefined( self._ID322 ) && distancesquared( self._ID322._ID740, self._ID859 ) < 65536 )
            self orientmode( "face enemy" );
        else
            self orientmode( "face point", self._ID859 );

        if ( self._ID7._ID28253 == "crouch" )
        {
            var_3 = vectornormalize( self._ID859 - self._ID740 );
            var_6 = anglestoforward( self._ID65 );

            if ( vectordot( var_6, var_3 ) < -0.5 )
            {
                self orientmode( "face current" );
                var_5[0] = %crouch_cover_reaction_a;
                var_5[1] = %crouch_cover_reaction_b;
            }
        }

        var_0 = var_5[randomint( var_5.size )];
    }

    return var_0;
}

_ID36381()
{
    self clearanim( %animscript_root, 0.2 );

    if ( randomint( 4 ) < 3 )
    {
        self orientmode( "face enemy" );
        var_0 = %exposed_idle_reactb;

        if ( animscripts\utility::_ID39998() )
            var_0 = %smg_exposed_idle_reactb;

        self setflaggedanimknobrestart( "reactanim", var_0, 1, 0.2, 1 );
        var_1 = getanimlength( var_0 );
        animscripts\notetracks::_ID11534( var_1 * 0.8, "reactanim" );
        self orientmode( "face current" );
    }
    else
    {
        self orientmode( "face enemy" );
        var_2 = %exposed_backpedal;
        var_3 = %exposed_backpedal_v2;

        if ( animscripts\utility::_ID39998() )
        {
            var_2 = %smg_exposed_backpedal;
            var_3 = %smg_exposed_backpedal_v2;
        }

        self setflaggedanimknobrestart( "reactanim", var_2, 1, 0.2, 1 );
        var_1 = getanimlength( var_2 );
        animscripts\notetracks::_ID11534( var_1 * 0.8, "reactanim" );
        self orientmode( "face current" );
        self clearanim( %animscript_root, 0.2 );
        self setflaggedanimknobrestart( "reactanim", var_3, 1, 0.2, 1 );
        animscripts\shared::_ID11529( "reactanim" );
    }
}

_ID24750()
{
    self endon( "death" );
    self endon( "endNewEnemyReactionAnim" );
    self._ID21973 = gettime();
    self._ID7._ID24414 = "stop";
    self._ID28085 = 1;

    if ( isdefined( self._ID1644 ) && self._ID38 != "combat" )
        _ID36381();
    else
    {
        var_0 = _ID16444();
        self clearanim( %animscript_root, 0.2 );
        self setflaggedanimknobrestart( "reactanim", var_0, 1, 0.2, 1 );
        animscripts\shared::_ID11529( "reactanim" );
    }

    self notify( "newEnemyReactionDone" );
    self._ID28085 = undefined;
}

_ID24751()
{
    self endon( "death" );

    if ( isdefined( self._ID11047 ) )
        return;

    if ( !_ID6876() )
        return;

    if ( self._ID7._ID28253 == "prone" || isdefined( self._ID7._ID25684 ) )
        return;

    self animmode( "gravity" );

    if ( isdefined( self._ID322 ) )
        _ID24750();
}

_ID319()
{
    if ( isdefined( self._ID28085 ) )
    {
        self notify( "newEnemyReactionDone" );
        self._ID28085 = undefined;
    }
}
