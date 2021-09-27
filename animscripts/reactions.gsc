// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "reactions" );
    _unknown_0240();
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
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _func_0F6( _func_094( var_2, 0, 1 ) );

        if ( var_3 > anim._ID46216 )
            anim._ID46216 = var_3;
    }

    var_clear_3
    var_clear_0
    var_0 = [];
    var_0[0] = %run_react_flinch;
    var_0[1] = %run_react_duck;
    anim._ID3277["soldier"]["running_react_to_bullets_hero"] = var_0;
    var_5 = var_0;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_2 = var_5[var_6];
        var_3 = _func_0F6( _func_094( var_2, 0, 1 ) );

        if ( var_3 > anim._ID46216 )
            anim._ID46216 = var_3;
    }

    var_clear_1
    var_clear_0
    anim._ID21976 = 0;
}

_ID29069()
{
    thread _unknown_0260();
}

_ID6876()
{
    return !_func_02F( self._ID21973 ) || _func_03D() - self._ID21973 > 2000;
}

_ID47417()
{
    if ( !_func_02F( level._ID50494 ) )
        level._ID50494 = 0;

    level._ID50494 = !level._ID50494;
    return level._ID50494;
}

_ID52514()
{
    if ( !_func_02F( level._ID44423 ) || level._ID44423.size == 0 )
        level._ID44423 = _ID42237::_ID3320( [ 0, 1, 2, 3 ] );

    var_0 = level._ID44423[0];
    level._ID44423 = _ID42237::_ID3321( level._ID44423, var_0 );
    return var_0;
}

_ID6327()
{
    var_0 = _func_03D();
    self endon( "killanimscript" );
    self._ID21973 = _func_03D();
    self._ID7._ID24414 = "stop";
    var_1 = _func_02F( self._ID41753 ) && _func_0F5( self._ID740, self._ID41753._ID740 ) < 160000;
    self _meth_819A( "gravity" );
    self _meth_819B( "face current" );

    if ( _func_02F( self._ID45219 ) || var_1 || _unknown_0226() )
    {
        self _meth_814C( %animscript_root, 0.1 );
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

        var_3 = var_2[_unknown_0298()];

        if ( var_1 )
            var_4 = 1 + _func_0B8( 0.5 );
        else
            var_4 = 0.2 + _func_0B8( 0.5 );

        self _meth_8116( "reactanim", var_3, 1, 0.1, 1 );
        animscripts\notetracks::_ID11534( var_4, "reactanim" );
        self _meth_814C( %animscript_root, 0.1 );

        if ( !var_1 && self._ID1012 == "none" && !_func_02F( self._ID10902 ) )
        {
            var_5 = 1 + _func_0B8( 0.2 );
            var_6 = animscripts\utility::_ID28961( %exposed_dive_grenade_b, %exposed_dive_grenade_f );
            self _meth_8116( "dive", var_6, 1, 0.1, var_5 );
            animscripts\shared::_ID11529( "dive" );
        }
    }
    else
    {
        wait(_func_0B8( 0.2 ));
        var_5 = 1.2 + _func_0B8( 0.3 );

        if ( self._ID7._ID28253 == "stand" )
        {
            self _meth_814C( %animscript_root, 0.1 );
            self _meth_8116( "crouch", %exposed_stand_2_crouch, 1, 0.1, var_5 );
            animscripts\shared::_ID11529( "crouch" );
        }

        var_7 = _func_11F( self._ID65 );

        if ( _func_02F( self._ID41753 ) )
            var_8 = _func_119( self._ID41753._ID740 - self._ID740 );
        else
            var_8 = var_7;

        if ( _func_0FB( var_8, var_7 ) > 0 )
        {
            var_9 = animscripts\utility::_ID28961( %exposed_crouch_idle_twitch_v2, %exposed_crouch_idle_twitch_v3 );
            self _meth_814C( %animscript_root, 0.1 );
            self _meth_8116( "twitch", var_9, 1, 0.1, 1 );
            animscripts\shared::_ID11529( "twitch" );
        }
        else
        {
            var_10 = animscripts\utility::_ID28961( %exposed_crouch_turn_180_left, %exposed_crouch_turn_180_right );
            self _meth_814C( %animscript_root, 0.1 );
            self _meth_8116( "turn", var_10, 1, 0.1, 1 );
            animscripts\shared::_ID11529( "turn" );
        }
    }

    self _meth_814C( %animscript_root, 0.1 );
    self._ID41753 = undefined;
    self _meth_819A( "normal" );
    self _meth_819B( "face default" );
}

_ID6326()
{
    self endon( "killanimscript" );

    if ( _func_02F( self._ID11002 ) )
        return;

    for (;;)
    {
        self waittill( "bulletwhizby",  var_0  );

        if ( _func_02F( self._ID11002 ) )
            return;

        if ( !_func_02F( var_0._ID1194 ) || self._ID1194 == var_0._ID1194 )
            continue;

        if ( _func_02F( self._ID8893 ) || _func_02F( self._ID2925 ) )
            continue;

        if ( self._ID7._ID28253 != "stand" )
            continue;

        if ( !_unknown_0484() )
            continue;

        self._ID41753 = var_0;
        self _meth_81A6( ::_unknown_04AC );
    }
}

_ID7927()
{
    self endon( "killanimscript" );
    wait 0.3;
    self _meth_820F();
}

_ID16444()
{
    var_0 = undefined;

    if ( self _meth_816D() )
    {
        var_1 = animscripts\utility::_ID22631( "cover_reactions" );

        if ( _func_02F( var_1[self._ID823] ) )
        {
            var_2 = _func_11F( self._ID700._ID65 );
            var_3 = _func_119( self._ID859 - self._ID740 );

            if ( _func_0FB( var_2, var_3 ) < -0.5 )
            {
                self _meth_819B( "face current" );
                var_4 = _func_0B7( var_1[self._ID823].size );
                var_0 = var_1[self._ID823][var_4];
            }
        }
    }

    if ( !_func_02F( var_0 ) )
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

        if ( _func_02F( self._ID322 ) && _func_0F5( self._ID322._ID740, self._ID859 ) < 65536 )
            self _meth_819B( "face enemy" );
        else
            self _meth_819B( "face point", self._ID859 );

        if ( self._ID7._ID28253 == "crouch" )
        {
            var_3 = _func_119( self._ID859 - self._ID740 );
            var_6 = _func_11F( self._ID65 );

            if ( _func_0FB( var_6, var_3 ) < -0.5 )
            {
                self _meth_819B( "face current" );
                var_5[0] = %crouch_cover_reaction_a;
                var_5[1] = %crouch_cover_reaction_b;
            }
        }

        var_0 = var_5[_func_0B7( var_5.size )];
    }

    return var_0;
}

_ID36381()
{
    self _meth_814C( %animscript_root, 0.2 );

    if ( _func_0B7( 4 ) < 3 )
    {
        self _meth_819B( "face enemy" );
        var_0 = %exposed_idle_reactb;

        if ( animscripts\utility::_ID39998() )
            var_0 = %smg_exposed_idle_reactb;

        self _meth_8116( "reactanim", var_0, 1, 0.2, 1 );
        var_1 = _func_067( var_0 );
        animscripts\notetracks::_ID11534( var_1 * 0.8, "reactanim" );
        self _meth_819B( "face current" );
    }
    else
    {
        self _meth_819B( "face enemy" );
        var_2 = %exposed_backpedal;
        var_3 = %exposed_backpedal_v2;

        if ( animscripts\utility::_ID39998() )
        {
            var_2 = %smg_exposed_backpedal;
            var_3 = %smg_exposed_backpedal_v2;
        }

        self _meth_8116( "reactanim", var_2, 1, 0.2, 1 );
        var_1 = _func_067( var_2 );
        animscripts\notetracks::_ID11534( var_1 * 0.8, "reactanim" );
        self _meth_819B( "face current" );
        self _meth_814C( %animscript_root, 0.2 );
        self _meth_8116( "reactanim", var_3, 1, 0.2, 1 );
        animscripts\shared::_ID11529( "reactanim" );
    }
}

_ID24750()
{
    self endon( "death" );
    self endon( "endNewEnemyReactionAnim" );
    self._ID21973 = _func_03D();
    self._ID7._ID24414 = "stop";
    self._ID28085 = 1;

    if ( _func_02F( self._ID1644 ) && self._ID38 != "combat" )
        _unknown_0818();
    else
    {
        var_0 = _unknown_07CA();
        self _meth_814C( %animscript_root, 0.2 );
        self _meth_8116( "reactanim", var_0, 1, 0.2, 1 );
        animscripts\shared::_ID11529( "reactanim" );
    }

    self notify( "newEnemyReactionDone" );
    self._ID28085 = undefined;
}

_ID24751()
{
    self endon( "death" );

    if ( _func_02F( self._ID11047 ) )
        return;

    if ( !_unknown_0700() )
        return;

    if ( self._ID7._ID28253 == "prone" || _func_02F( self._ID7._ID25684 ) )
        return;

    self _meth_819A( "gravity" );

    if ( _func_02F( self._ID322 ) )
        _unknown_08D8();
}

_ID319()
{
    if ( _func_02F( self._ID28085 ) )
    {
        self notify( "newEnemyReactionDone" );
        self._ID28085 = undefined;
    }
}
