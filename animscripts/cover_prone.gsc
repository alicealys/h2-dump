// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19586()
{
    var_0 = [];
    var_0["straight_level"] = %prone_aim_5;
    var_0["legs_up"] = %prone_aim_feet_45up;
    var_0["legs_down"] = %prone_aim_feet_45down;
    var_0["fire"] = %prone_fire_1;
    var_0["semi2"] = %prone_fire_burst;
    var_0["semi3"] = %prone_fire_burst;
    var_0["semi4"] = %prone_fire_burst;
    var_0["semi5"] = %prone_fire_burst;
    var_0["single"] = [ %prone_fire_1 ];
    var_0["burst2"] = %prone_fire_burst;
    var_0["burst3"] = %prone_fire_burst;
    var_0["burst4"] = %prone_fire_burst;
    var_0["burst5"] = %prone_fire_burst;
    var_0["burst6"] = %prone_fire_burst;
    var_0["reload"] = %prone_reload;
    var_0["look"] = [ %prone_twitch_look, %prone_twitch_lookfast, %prone_twitch_lookup ];
    var_0["grenade_safe"] = [ %prone_grenade_a, %prone_grenade_a ];
    var_0["grenade_exposed"] = [ %prone_grenade_a, %prone_grenade_a ];
    var_0["exposed_idle"] = [ %prone_idle ];
    var_0["twitch"] = [ %prone_twitch_ammocheck, %prone_twitch_look, %prone_twitch_scan, %prone_twitch_lookfast, %prone_twitch_lookup ];
    var_0["hide_to_look"] = %coverstand_look_moveup;
    var_0["look_idle"] = %coverstand_look_idle;
    var_0["look_to_hide"] = %coverstand_look_movedown;
    var_0["look_to_hide_fast"] = %coverstand_look_movedown_fast;
    var_0["stand_2_prone"] = %stand_2_prone_nodelta;
    var_0["crouch_2_prone"] = %crouch_2_prone;
    var_0["prone_2_stand"] = %prone_2_stand_nodelta;
    var_0["prone_2_crouch"] = %prone_2_crouch;
    var_0["stand_2_prone_firing"] = %stand_2_prone_firing;
    var_0["crouch_2_prone_firing"] = %crouch_2_prone_firing;
    var_0["prone_2_stand_firing"] = %prone_2_stand_firing;
    var_0["prone_2_crouch_firing"] = %prone_2_crouch_firing;
    var_0["turn_left_45"] = %h1_prone_turn_l45;
    var_0["turn_left_90"] = %h1_prone_turn_l90;
    var_0["turn_left_180"] = %h1_prone_turn_180;
    var_0["turn_right_45"] = %h1_prone_turn_r45;
    var_0["turn_right_90"] = %h1_prone_turn_r90;
    var_0["turn_right_180"] = %h1_prone_turn_180;
    anim._ID3277["soldier"]["cover_prone"] = var_0;
}

_ID45673( var_0 )
{
    self endon( "killanimscript" );
    self endon( "killsetAnimModeDelayed" );
    wait(var_0);
    self orientmode( "face angle", self._ID8893.angles[1] );
}

main()
{
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "cover_prone" );

    if ( weaponclass( self.weapon ) == "rocketlauncher" )
    {
        animscripts\combat::main();
        return;
    }

    if ( isdefined( self._ID7._ID3372 ) && self._ID7._ID3372 == "prone_saw" )
        animscripts\cover_wall::_ID39957( "saw_bipod_prone", "weapon_saw_MG_Setup", 0 );
    else if ( isdefined( self.node._ID39235 ) )
        animscripts\cover_wall::_ID39960();

    if ( isdefined( self.enemy ) && lengthsquared( self.origin - self.enemy.origin ) < squared( 512 ) )
    {
        thread animscripts\combat::main();
        return;
    }

    _ID32934();
    self._ID39229 = 50;
    self._ID8893 = self.node;
    self orientmode( "face angle", self.angles[1] );
    self._ID7._ID16990 = 1;
    self setproneanimnodes( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );

    if ( self._ID7._ID28253 != "prone" )
    {
        self orientmode( "face angle", self._ID8893.angles[1] );
        _ID28706( "prone" );
    }
    else
    {
        var_0 = 0;

        if ( self._ID7._ID24414 != "stop" )
            var_0 = 0.15;

        animscripts\utility::_ID13067( var_0 );

        if ( var_0 != 0 )
        {
            var_1 = animscripts\utility::_ID1735( self.angles[1] - self._ID8893.angles[1] );
            var_2 = %h1_crawl_2_prone;
            var_3 = 0.4;

            if ( var_1 < -17.5 )
            {
                var_2 = %h1_crawl_2_prone_35r;
                var_3 = 0.25;
            }
            else if ( var_1 > 17.5 )
            {
                var_3 = 0.25;
                var_2 = %h1_crawl_2_prone_35l;
            }

            var_4 = getanimlength( var_2 );
            var_5 = var_4 * var_3;
            thread _ID45673( var_5 );
            self setflaggedanimrestart( "coverProneArrival", var_2, 1, 0.2, 1 );
            animscripts\shared::_ID11529( "coverProneArrival" );
            self notify( "killsetAnimModeDelayed" );
            self._ID7._ID24414 = "stop";
        }
    }

    thread animscripts\combat_utility::_ID2428();
    _ID33590( 0.2 );
    self setanim( %prone_aim_5, 1, 0.1 );
    self orientmode( "face angle", self.angles[1] );
    self animmode( "zonly_physics" );
    _ID28709();
    self notify( "stop_deciding_how_to_shoot" );
}

_ID319()
{
    self._ID7._ID16990 = undefined;
}

_ID19338()
{
    self endon( "killanimscript" );
    self endon( "kill_idle_thread" );

    for (;;)
    {
        var_0 = animscripts\utility::_ID3156( "prone_idle" );
        self setflaggedanimlimited( "idle", var_0 );
        self waittillmatch( "idle",  "end"  );
        self clearanim( var_0, 0.2 );
    }
}

_ID39763( var_0 )
{
    self updateprone( animscripts\utility::_ID22630( "cover_prone", "legs_up" ), animscripts\utility::_ID22630( "cover_prone", "legs_down" ), 1, var_0, 1 );
    self setanim( %exposed_aiming, 1, 0.2 );
}

_ID11659( var_0, var_1 )
{
    var_2 = isdefined( self._ID33810 );
    var_3 = 1;
    var_4 = 0.2;
    var_5 = isdefined( self.enemy ) && !isdefined( self._ID39233 ) && self seerecently( self.enemy, 2 ) && distancesquared( self.enemy.origin, self.origin ) < 262144;

    if ( self._ID7._ID31561 + 500 > gettime() )
    {
        var_4 = 0.25;

        if ( var_5 )
            thread animscripts\combat::_ID13757();
    }
    else if ( var_5 )
    {
        var_6 = 1.0 - distance( self.enemy.origin, self.origin ) / 512;
        var_3 = 1 + var_6 * 1;

        if ( var_3 > 2 )
            var_4 = 0.05;
        else if ( var_3 > 1.3 )
            var_4 = 0.1;
        else
            var_4 = 0.15;
    }

    var_7 = 0;

    if ( var_1 > 157.5 )
        var_7 = 180;
    else if ( var_1 > 67.5 )
        var_7 = 90;
    else
        var_7 = 45;

    var_8 = "turn_" + var_0 + "_" + var_7;
    var_9 = animscripts\utility::_ID3153( var_8 );

    if ( isdefined( self._ID39233 ) )
        self animmode( "angle deltas", 0 );
    else if ( isdefined( self.node ) && isdefined( anim._ID20710[self.node.type] ) && distancesquared( self.origin, self.node.origin ) < 256 )
        self animmode( "angle deltas", 0 );
    else if ( animscripts\combat::_ID20667( var_9 ) )
        animscripts\combat::_ID29767();
    else
        self animmode( "angle deltas", 0 );

    self setanimknoball( %exposed_aiming, %body, 1, var_4 );
    self setanimlimited( %turn, 1, var_4 );

    if ( isdefined( self._ID18328 ) )
        var_3 = min( 1.0, var_3 );

    self setflaggedanimknoblimitedrestart( "turn", var_9, 1, var_4, var_3 );
    self notify( "turning" );
    animscripts\combat::_ID11660();
    self setanimlimited( %turn, 0, 0.2 );
    self clearanim( %turn, 0.2 );
    self setanimknob( %exposed_aiming, 1, 0.2, 1 );

    if ( isdefined( self._ID39220 ) )
    {
        self._ID39220 = undefined;
        thread animscripts\combat::_ID13757();
    }

    animscripts\combat::_ID29767( 0 );
    self notify( "done turning" );
}

_ID24717()
{
    if ( !isdefined( self._ID45105 ) )
        return 0;

    var_0 = self._ID33810;

    if ( !isdefined( var_0 ) )
        return 0;

    var_1 = self.angles[1] - vectortoyaw( var_0 - self.origin );
    var_2 = distancesquared( self.origin, var_0 );

    if ( var_2 < 65536 )
    {
        var_3 = sqrt( var_2 );

        if ( var_3 > 3 )
            var_1 += asin( -3 / var_3 );
    }

    return animscripts\utility::_ID1735( var_1 ) > self._ID39229;
}

_ID39232( var_0 )
{
    if ( var_0 < 0 - self._ID39229 )
    {
        _ID11659( "left", 0 - var_0 );
        _ID42298::_ID10832();
        return 1;
    }

    if ( var_0 > self._ID39229 )
    {
        _ID11659( "right", var_0 );
        _ID42298::_ID10832();
        return 1;
    }

    return 0;
}

_ID48484()
{
    if ( _ID24717() )
    {
        var_0 = 0.25;

        if ( isdefined( self._ID33785 ) && !issentient( self._ID33785 ) )
            var_0 = 1.5;

        var_1 = animscripts\shared::_ID16537( var_0 );

        if ( _ID39232( var_1 ) )
            return 1;
    }

    return 0;
}

_ID28709()
{
    self endon( "killanimscript" );
    thread animscripts\track::_ID38165();
    thread animscripts\shoot_behavior::_ID10054( "normal" );
    var_0 = gettime() > 2500;

    for (;;)
    {
        animscripts\utility::_ID39726();
        _ID39763( 0.05 );

        if ( !var_0 )
        {
            wait(0.05 + randomfloat( 1.5 ));
            var_0 = 1;
            continue;
        }

        if ( !isdefined( self._ID33810 ) )
        {
            if ( _ID48484() )
                continue;

            if ( _ID8533() )
                continue;

            wait 0.05;
            continue;
        }

        var_1 = lengthsquared( self.origin - self._ID33810 );

        if ( self._ID7._ID28253 != "crouch" && self isstanceallowed( "crouch" ) && var_1 < squared( 400 ) )
        {
            if ( var_1 < squared( 285 ) )
            {
                _ID28706( "crouch" );
                thread animscripts\combat::main();
                return;
            }
        }

        if ( _ID48484() )
            continue;

        if ( _ID8533() )
            continue;

        if ( _ID28713( 0 ) )
            continue;

        if ( animscripts\combat_utility::_ID2425() )
        {
            animscripts\combat_utility::_ID33818();
            self clearanim( %add_fire, 0.2 );
            continue;
        }

        wait 0.05;
    }
}

_ID28713( var_0 )
{
    return animscripts\combat_utility::_ID868( var_0, animscripts\utility::_ID3153( "reload" ) );
}

_ID32934()
{
    self setdefaultaimlimits( self.node );
    self._ID7._ID3291 = animscripts\utility::_ID22631( "cover_prone" );
}

_ID39080( var_0, var_1 )
{
    var_2 = undefined;

    if ( isdefined( var_1 ) && var_1 )
        var_2 = animscripts\utility::_ID3156( "grenade_safe" );
    else
        var_2 = animscripts\utility::_ID3156( "grenade_exposed" );

    self animmode( "zonly_physics" );
    self.keepclaimednodeifvalid = 1;
    var_3 = ( 32, 20, 64 );
    var_4 = animscripts\combat_utility::_ID39072( var_0, var_2 );
    self.keepclaimednodeifvalid = 0;
    return var_4;
}

_ID8533()
{
    if ( isdefined( anim._ID37694 ) && isalive( level.player ) )
    {
        if ( _ID39080( level.player, 200 ) )
            return 1;
    }

    if ( isdefined( self.enemy ) )
        return _ID39080( self.enemy, 850 );

    return 0;
}

_ID33948()
{
    if ( !isdefined( self.weapon ) || !weaponisauto( self.weapon ) )
        return 0;

    if ( isdefined( self.node ) && distancesquared( self.origin, self.node.origin ) < 256 )
        return 0;

    if ( isdefined( self.enemy ) && self cansee( self.enemy ) && !isdefined( self.grenade ) && animscripts\shared::_ID16103() < 20 )
        return animscripts\move::_ID23140();

    return 0;
}

_ID28706( var_0 )
{
    if ( var_0 == self._ID7._ID28253 )
        return;

    self clearanim( %animscript_root, 0.3 );
    animscripts\combat_utility::_ID12641();

    if ( _ID33948() )
        var_1 = animscripts\utility::_ID3153( self._ID7._ID28253 + "_2_" + var_0 + "_firing" );
    else
        var_1 = animscripts\utility::_ID3153( self._ID7._ID28253 + "_2_" + var_0 );

    if ( var_0 == "prone" )
    {

    }

    self setflaggedanimknoballrestart( "trans", var_1, %body, 1, 0.2, 1.0 );
    animscripts\shared::_ID11529( "trans" );
    self setanimknoballrestart( animscripts\utility::_ID3153( "straight_level" ), %body, 1, 0.25 );
    _ID33590( 0.25 );
}

_ID14236( var_0 )
{
    self endon( "killanimscript" );
    animscripts\shared::_ID11529( var_0 );
}

_ID33590( var_0 )
{
    self setanimknoball( %prone_aim_5, %body, 1, var_0 );
    self setanimlimited( %prone_aim_2_add, 1, var_0 );
    self setanimlimited( %prone_aim_4_add, 1, var_0 );
    self setanimlimited( %prone_aim_6_add, 1, var_0 );
    self setanimlimited( %prone_aim_8_add, 1, var_0 );
}

_ID28718( var_0, var_1, var_2 )
{
    self clearanim( %animscript_root, 0.3 );
    var_3 = undefined;

    if ( _ID33948() )
    {
        if ( var_0 == "crouch" )
            var_3 = %prone_2_crouch_firing;
        else if ( var_0 == "stand" )
            var_3 = %prone_2_stand_firing;
    }
    else if ( var_0 == "crouch" )
        var_3 = %prone_2_crouch;
    else if ( var_0 == "stand" )
        var_3 = %prone_2_stand_nodelta;

    if ( isdefined( self._ID28703 ) )
        var_3 = self._ID28703;

    if ( isdefined( self._ID28705 ) )
        var_1 = self._ID28705;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    animscripts\utility::_ID13390( getanimlength( var_3 ) / 2 );
    self setflaggedanimknoballrestart( "trans", var_3, %body, 1, 0.2, var_1 );
    animscripts\shared::_ID11529( "trans" );

    if ( !isdefined( var_2 ) )
        var_2 = 0.1;

    self clearanim( var_3, var_2 );
}
