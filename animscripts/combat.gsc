// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19581()
{
    var_0 = [];
    var_0["surprise_stop"] = %surprise_stop_v1;
    var_0["trans_to_combat"] = %casual_stand_idle_trans_out;
    var_0["smg_trans_to_combat"] = %smg_casual_stand_idle_trans_out;
    var_0["drop_rpg_stand"] = %rpg_stand_throw;
    var_0["drop_rpg_crouch"] = %rpg_crouch_throw;
    var_0["pistol_to_primary"] = %pistol_stand_switch;
    var_0["primary_to_pistol"] = %pistol_stand_pullout;
    var_0["rpg_death"] = %rpg_stand_death;
    var_0["rpg_death_stagger"] = %rpg_stand_death_stagger;
    var_0["trans_from_corner_standr"] = %h1_cornerstndr_alert_2_exposedstand;
    var_0["trans_from_corner_standl"] = %h1_cornerstndl_alert_2_exposedstand;
    var_0["trans_from_crouch_r"] = %h2_cornercrr_2_exposed_crouch;
    var_0["trans_from_crouch_l"] = %h2_cornercrl_2_exposed_crouch;
    anim._ID3277["soldier"]["combat"] = var_0;
}

_ID616()
{
    if ( isdefined( self._ID24817 ) )
        return;

    if ( isdefined( self._ID9526 ) )
    {
        if ( isdefined( self._ID9526["combat"] ) )
        {
            [[ self._ID9526["combat"] ]]();
            return;
        }
    }

    self endon( "killanimscript" );
    [[ self._ID13288["exposed"] ]]();
    animscripts\utility::_ID19930( "combat" );
    self._ID7._ID3372 = undefined;

    if ( isdefined( self._ID700 ) && self._ID700._ID1244 == "Ambush" && self nearnode( self._ID700 ) )
        self._ID2925 = self._ID700;

    _ID38689();
    _ID11395();

    if ( isdefined( self._ID35378 ) )
        animscripts\stop::_ID35379();

    _ID32834();
    _ID13713();
    self notify( "stop_deciding_how_to_shoot" );
}

_ID319()
{
    self._ID2925 = undefined;
    _ID8292();
}

_ID11395()
{
    if ( self._ID1194 != "allies" )
        return;

    if ( self ismovesuppressed() && self._ID823 == "move" && self._ID7._ID28253 == "stand" && !isdefined( self._ID11029 ) )
    {
        if ( isdefined( self._ID322 ) && distancesquared( self._ID740, self._ID322._ID740 ) < squared( 128 ) )
            return;

        if ( !isdefined( self._ID7._ID3291 ) )
            return;

        if ( isdefined( self._ID7._ID3291["surprise_stop"] ) )
            var_0 = animscripts\utility::_ID3153( "surprise_stop" );
        else if ( self._ID1063 )
        {
            var_0 = animscripts\swim::_ID16643( "surprise_stop" );

            if ( !isdefined( var_0 ) )
                return;
        }
        else
            var_0 = animscripts\utility::_ID22630( "combat", "surprise_stop" );

        _ID29767();
        self setflaggedanimknoballrestart( "react", var_0, %animscript_root, 1, 0.2, self._ID3195 );
        _ID8331( var_0, "run" );
        animscripts\shared::_ID11529( "react" );
    }
}

_ID45333( var_0 )
{
    if ( var_0 == "start_aim" && isdefined( self._ID322 ) )
        return 1;
}

_ID46024()
{
    if ( self._ID7._ID28253 == "crouch" )
    {
        if ( self._ID823 == "cover_right" )
            var_0 = animscripts\utility::_ID22630( "combat", "trans_from_crouch_r" );
        else if ( self._ID823 == "cover_left" )
            var_0 = animscripts\utility::_ID22630( "combat", "trans_from_crouch_l" );
        else
            var_0 = undefined;

        if ( isdefined( var_0 ) )
        {
            _ID29767();
            self orientmode( "face current" );
            self setflaggedanimknoballrestart( "transition", var_0, %animscript_root, 1, 0.2, 1 );
            animscripts\shared::_ID11529( "transition", ::_ID45333 );
        }
    }
}

_ID47836()
{
    if ( self._ID7._ID28253 == "stand" )
    {
        var_0 = undefined;
        var_1 = undefined;

        if ( self._ID823 == "cover_right" )
        {
            var_0 = [ %corner_standr_alert_idle, %corner_standr_alert_twitch01, %corner_standr_alert_twitch04, %corner_standr_alert_twitch05, %corner_standr_alert_twitch06, %corner_standr_alert_twitch07 ];
            var_1 = "trans_from_corner_standr";
        }
        else if ( self._ID823 == "cover_left" )
        {
            var_0 = [ %corner_standl_alert_idle, %corner_standl_alert_twitch01, %corner_standl_alert_twitch03, %corner_standl_alert_twitch04, %corner_standl_alert_twitch06, %corner_standl_alert_twitch07 ];
            var_1 = "trans_from_corner_standl";
        }

        if ( isdefined( var_0 ) )
        {
            var_2 = 0;

            foreach ( var_4 in var_0 )
            {
                if ( self getanimweight( var_4 ) != 0.0 )
                {
                    var_2 = 1;
                    break;
                }
            }

            if ( var_2 )
            {
                _ID29767();
                self orientmode( "face current" );
                var_6 = animscripts\utility::_ID22630( "combat", var_1 );
                self setflaggedanimknoballrestart( "transition", var_6, %animscript_root, 1, 0.2, 1 );
                animscripts\shared::_ID11529( "transition" );
            }
        }
    }
}

_ID49722()
{
    if ( isdefined( self._ID43642 ) && self._ID7._ID28253 == "prone" )
    {
        var_0 = undefined;
        var_1 = undefined;

        if ( self._ID823 == "move" )
        {
            self animmode( "angle deltas", 0 );
            self orientmode( "face current" );
            self setflaggedanimknoballrestart( "transition", %h1_crawl_2_prone, %animscript_root, 1, 0.4, 1 );
            animscripts\shared::_ID11529( "transition" );
            _ID29767();
        }
    }
}

_ID48075()
{
    if ( isdefined( self._ID49606 ) && self._ID49606 )
    {
        if ( self._ID7._ID28253 == "crouch" && self._ID823 == "move" )
        {
            self animmode( "zonly_physics" );
            self orientmode( "face current" );
            self setflaggedanimknoballrestart( "transition", %crouchwalk_2_crouch_stop_2, %animscript_root, 1, 0.4, 1 );
            animscripts\shared::_ID11529( "transition" );
            _ID29767();
        }
    }
}

_ID38689()
{
    if ( isdefined( self._ID35378 ) || isdefined( self._ID9568 ) )
        return;

    if ( isdefined( self._ID3152 ) && self._ID3152 == "s1_soldier" )
    {
        if ( !isdefined( self._ID322 ) )
            return;

        if ( self._ID7._ID28253 == "crouch" )
        {
            if ( self._ID823 == "cover_right" )
            {
                _ID29767();
                self orientmode( "face current" );
                var_0 = animscripts\utility::_ID22630( "combat", "trans_from_crouch_r" );
                self setflaggedanimknoballrestart( "transition", var_0, %animscript_root, 1, 0.2, 1 );
                wait(getanimlength( var_0 ));
            }
            else if ( self._ID823 == "cover_left" )
            {
                _ID29767();
                self orientmode( "face current" );
                var_0 = animscripts\utility::_ID22630( "combat", "trans_from_crouch_l" );
                self setflaggedanimknoballrestart( "transition", var_0, %animscript_root, 1, 0.2, 1 );
                wait(getanimlength( var_0 ));
            }
        }
    }
    else
        _ID46024();

    _ID47836();
    _ID49722();
    _ID48075();

    if ( isdefined( self._ID322 ) && distancesquared( self._ID740, self._ID322._ID740 ) < 262144 )
        return;

    if ( self._ID823 == "stop" && !animscripts\utility::_ID20716() && self._ID7._ID28253 == "stand" && !self _meth_816f() )
    {
        _ID29767();
        var_0 = undefined;

        if ( animscripts\utility::_ID39998() )
            var_0 = animscripts\utility::_ID22630( "combat", "smg_trans_to_combat" );
        else
            var_0 = animscripts\utility::_ID22630( "combat", "trans_to_combat" );

        self setflaggedanimknoballrestart( "transition", var_0, %animscript_root, 1, 0.2, 1.2 * self._ID3195 );
        _ID8331( var_0, "run" );
        animscripts\shared::_ID11529( "transition" );
    }
}

_ID32850()
{
    if ( self._ID7._ID28253 == "stand" )
        animscripts\animset::_ID32213();
    else if ( self._ID7._ID28253 == "crouch" )
        animscripts\animset::_ID32200();
    else if ( self._ID7._ID28253 == "prone" )
        animscripts\animset::_ID32209();
    else
    {

    }
}

_ID32834()
{
    if ( animscripts\utility::_ID39997() && self isstanceallowed( "stand" ) )
        _ID38688( "stand" );

    _ID32850();
    _ID32185();
    thread _ID36613();
    self._ID28522 = 0.0;
    self clearanim( %animscript_root, 0.2 );
    var_0 = 0.2;

    if ( isdefined( self._ID2431 ) )
        var_0 = self._ID2431;

    animscripts\combat_utility::_ID33531( var_0 );

    if ( self._ID47383 )
        thread animscripts\combat_utility::_ID2428();

    self._ID7._ID23443 = "aim";
    _ID10224();
}

_ID36613()
{
    self endon( "killanimscript" );
    wait 0.2;
    self._ID7._ID24414 = "stop";
}

_ID32272()
{
    if ( self._ID1063 )
    {
        if ( animscripts\utility::_ID20915() )
        {
            self._ID1252 = 90;
            self._ID307 = -90;
            self._ID894 = 45;
            self._ID590 = -45;
        }
        else
        {
            self._ID1252 = 90;
            self._ID307 = -120;
        }
    }
}

_ID32267( var_0 )
{
    if ( isdefined( var_0 ) )
        self setdefaultaimlimits( var_0 );
    else
        self setdefaultaimlimits();

    _ID32272();
}

_ID32185()
{
    _ID32267();

    if ( self._ID7._ID28253 == "stand" && !self._ID1063 )
    {
        self._ID1252 = 60;
        self._ID307 = -60;
    }

    self._ID39229 = self._ID10147;
}

_ID33559()
{
    thread animscripts\track::_ID38165();
    thread _ID29052();
    thread animscripts\shoot_behavior::_ID10054( "normal" );
    thread _ID41563();
    _ID29774();

    if ( isdefined( self._ID7._ID22753 ) )
    {
        animscripts\weaponlist::_ID29364();
        self._ID7._ID22753 = undefined;
    }

    self._ID7._ID11570 = gettime() + randomintrange( 500, 1500 );
}

_ID13716( var_0 )
{
    if ( animscripts\utility::_ID39993() && animscripts\utility::_ID33944( var_0 ) )
    {
        if ( self._ID7._ID28253 != "stand" && self._ID7._ID28253 != "crouch" )
            _ID38688( "crouch" );

        if ( self._ID7._ID28253 == "stand" )
            animscripts\shared::_ID37693( animscripts\utility::_ID22630( "combat", "drop_rpg_stand" ) );
        else
            animscripts\shared::_ID37693( animscripts\utility::_ID22630( "combat", "drop_rpg_crouch" ) );

        self clearanim( %animscript_root, 0.2 );
        animscripts\combat_utility::_ID12641();
        _ID32850();
        animscripts\combat_utility::_ID36122();
        return 1;
    }

    return 0;
}

_ID13712( var_0 )
{
    if ( self._ID7._ID28253 != "stand" && self isstanceallowed( "stand" ) )
    {
        if ( var_0 < 81225 )
        {
            _ID38688( "stand" );
            return 1;
        }

        if ( _ID35595() )
            return 1;
    }

    if ( var_0 > 262144 && self._ID7._ID28253 != "crouch" && self isstanceallowed( "crouch" ) && !self._ID1063 && !animscripts\utility::_ID39997() && !isdefined( self._ID18328 ) && gettime() >= self._ID7._ID11570 && lengthsquared( self._ID33786 ) < 10000 )
    {
        if ( !isdefined( self._ID33810 ) || sighttracepassed( self._ID740 + ( 0, 0, 36 ), self._ID33810, 0, undefined ) )
        {
            _ID38688( "crouch" );
            return 1;
        }
    }

    return 0;
}

_ID13711( var_0 )
{
    if ( !animscripts\utility::_ID39997() )
    {
        if ( isdefined( self._ID14794 ) && self._ID7._ID28253 == "stand" )
        {
            if ( _ID39129() )
                return 1;
        }

        if ( animscripts\combat_utility::_ID20910() && var_0 < 167772 )
        {
            if ( _ID39129() )
                return 1;
        }
    }

    if ( animscripts\combat_utility::_ID24716( 0 ) )
    {
        if ( !animscripts\utility::_ID39997() && _ID42237::_ID8201() && !animscripts\utility::_ID39993() && animscripts\utility::_ID39990() && var_0 < 167772 && self isstanceallowed( "stand" ) )
        {
            if ( self._ID7._ID28253 != "stand" )
            {
                _ID38688( "stand" );
                return 1;
            }

            if ( _ID39129() )
                return 1;
        }

        if ( _ID13717( 0 ) )
            return 1;
    }

    return 0;
}

_ID13710( var_0 )
{
    if ( animscripts\utility::_ID39997() && self._ID7._ID28253 == "stand" && !isdefined( self._ID14794 ) )
    {
        if ( var_0 > 262144 || self._ID199 == "ambush_nodes_only" && ( !isdefined( self._ID322 ) || !self cansee( self._ID322 ) ) )
            _ID36995( animscripts\utility::_ID22630( "combat", "pistol_to_primary" ) );
    }
}

_ID13715()
{
    if ( isdefined( self._ID18328 ) && self nearclaimnodeandangle() )
        self safeteleport( self._ID705, self._ID700._ID65 );
}

_ID13714()
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

_ID13713()
{
    self endon( "killanimscript" );
    _ID33559();
    _ID29767( 0 );

    if ( animscripts\utility::_ID20915() )
    {
        var_0 = ( 0, self._ID65[1], 0 );
        self orientmode( "face angle 3d", var_0 );
    }
    else
        self orientmode( "face angle", self._ID65[1] );

    for (;;)
    {
        if ( animscripts\utility::_ID39993() )
            self._ID9827 = undefined;

        animscripts\utility::_ID39726();

        if ( _ID41020() )
            continue;

        _ID39076();
        _ID13715();

        if ( !isdefined( self._ID33810 ) )
        {
            _ID6904();
            continue;
        }

        _ID29774();
        var_1 = lengthsquared( self._ID740 - self._ID33810 );

        if ( _ID13716( var_1 ) )
            continue;

        if ( _ID13714() )
            continue;

        if ( _ID8533() )
            continue;

        if ( _ID13711( var_1 ) )
            continue;

        if ( animscripts\utility::_ID39993() && self._ID7._ID28253 != "crouch" && randomfloat( 1 ) > 0.65 )
            self._ID9827 = ::_ID30316;

        _ID13710( var_1 );

        if ( _ID13712( var_1 ) )
        {
            if ( animscripts\utility::_ID49045() )
                self orientmode( "face current" );

            continue;
        }

        if ( animscripts\combat_utility::_ID2425() )
        {
            _ID33817();
            animscripts\combat_utility::_ID18550();
            continue;
        }

        _ID13720();
    }
}

_ID13720()
{
    if ( !isdefined( self._ID322 ) || !self cansee( self._ID322 ) )
    {
        self endon( "enemy" );
        self endon( "shoot_behavior_change" );
        wait(0.2 + randomfloat( 0.1 ));
        self waittill( "do_slow_things" );
    }
    else
        wait 0.05;
}

_ID35595()
{
    if ( isdefined( self._ID322 ) && ( !self cansee( self._ID322 ) || !self canshootenemy() ) && sighttracepassed( self._ID740 + ( 0, 0, 64 ), self._ID322 getshootatpos(), 0, undefined ) )
    {
        self._ID7._ID11570 = gettime() + 3000;
        return _ID38688( "stand" );
    }

    return 0;
}

_ID24717()
{
    var_0 = self._ID33810;

    if ( !isdefined( var_0 ) )
        return 0;

    var_1 = self._ID65[1] - vectortoyaw( var_0 - self._ID740 );
    var_2 = distancesquared( self._ID740, var_0 );

    if ( var_2 < 65536 )
    {
        var_3 = sqrt( var_2 );

        if ( var_3 > 3 )
            var_1 += asin( -3 / var_3 );
    }

    return animscripts\utility::_ID1735( var_1 ) > self._ID39229;
}

_ID41020()
{
    var_0 = self._ID7._ID28253;

    if ( isdefined( self._ID7._ID25684 ) )
    {
        wait 0.1;
        return 1;
    }

    if ( var_0 == "stand" && isdefined( self._ID18328 ) )
        return 0;

    if ( !self isstanceallowed( var_0 ) )
    {
        var_1 = "crouch";

        if ( var_0 == "crouch" )
            var_1 = "stand";

        var_2 = "prone";

        if ( var_0 == "prone" )
        {
            var_1 = "stand";
            var_2 = "crouch";
        }

        if ( self isstanceallowed( var_1 ) )
        {
            if ( var_0 == "stand" && animscripts\utility::_ID39997() )
                return 0;

            _ID38688( var_1 );
            return 1;
        }
        else if ( self isstanceallowed( var_2 ) )
        {
            if ( var_0 == "stand" && animscripts\utility::_ID39997() )
                return 0;

            _ID38688( var_2 );
            return 1;
        }
        else
        {

        }
    }

    return 0;
}

_ID6904()
{
    if ( self._ID7._ID28253 != "stand" && self isstanceallowed( "stand" ) && _ID35595() )
        return 1;

    var_0 = gettime();
    self._ID7._ID11570 = var_0 + 1500;

    if ( isdefined( self._ID17437 ) && isdefined( self._ID17437._ID409 ) )
    {
        var_1 = angleclamp180( self._ID65[1] - vectortoyaw( self._ID17437._ID409 ) );

        if ( _ID39232( var_1 ) )
            return 1;
    }

    if ( isdefined( self._ID700 ) && isdefined( anim._ID20711[self._ID700._ID1244] ) )
    {
        var_1 = angleclamp180( self._ID65[1] - self._ID700._ID65[1] );

        if ( _ID39232( var_1 ) )
            return 1;
    }
    else if ( isdefined( self._ID322 ) && self seerecently( self._ID322, 2 ) || var_0 > self._ID7._ID31561 + 1200 )
    {
        var_1 = undefined;
        var_2 = self getanglestolikelyenemypath();

        if ( isdefined( var_2 ) )
            var_1 = angleclamp180( self._ID65[1] - var_2[1] );
        else if ( isdefined( self._ID8252 ) && isdefined( self._ID3152 ) && self._ID3152 == "riotshield" && self._ID1194 == "allies" )
        {
            var_3 = 0;
            var_3 = _ID42237::_ID37527( self._ID8252._ID1244 == "Cover Left", 68, var_3 );
            var_3 = _ID42237::_ID37527( self._ID8252._ID1244 == "Cover Right", -68, var_3 );
            var_1 = angleclamp180( self._ID65[1] - angleclamp( self._ID8252._ID65[1] + var_3 ) );
        }
        else if ( isdefined( self._ID700 ) )
            var_1 = angleclamp180( self._ID65[1] - self._ID700._ID65[1] );
        else if ( isdefined( self._ID322 ) )
        {
            var_2 = vectortoangles( self lastknownpos( self._ID322 ) - self._ID740 );
            var_1 = angleclamp180( self._ID65[1] - var_2[1] );
        }

        if ( isdefined( var_1 ) && _ID39232( var_1 ) )
            return 1;
    }
    else if ( isdefined( self._ID18328 ) && self nearclaimnode() )
    {
        var_1 = angleclamp180( self._ID65[1] - self._ID700._ID65[1] );

        if ( _ID39232( var_1 ) )
            return 1;
    }

    if ( _ID8533() )
        return 1;

    var_4 = self._ID7._ID24781 < var_0;
    var_5 = 0;

    if ( var_4 )
        var_5 = 0.99999;

    if ( _ID13717( var_5 ) )
        return 1;

    if ( var_4 && animscripts\utility::_ID39997() )
    {
        if ( _ID36995( animscripts\utility::_ID22630( "combat", "pistol_to_primary" ) ) )
            return 1;
    }

    _ID6905();
    return 1;
}

_ID6905()
{
    self endon( "shoot_behavior_change" );
    wait(0.4 + randomfloat( 0.4 ));
    self waittill( "do_slow_things" );
}

_ID29774()
{
    self._ID7._ID24781 = gettime() + randomintrange( 2000, 4000 );
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

_ID41563()
{
    self endon( "killanimscript" );
    self._ID33786 = ( 0, 0, 0 );
    var_0 = undefined;
    var_1 = self._ID740;
    var_2 = 0.15;

    for (;;)
    {
        if ( isdefined( self._ID33785 ) && isdefined( var_0 ) && self._ID33785 == var_0 )
        {
            var_3 = self._ID33785._ID740;
            self._ID33786 = ( var_3 - var_1 ) * 1 / var_2;
            var_1 = var_3;
        }
        else
        {
            if ( isdefined( self._ID33785 ) )
                var_1 = self._ID33785._ID740;
            else
                var_1 = self._ID740;

            var_0 = self._ID33785;
            self._ID33786 = ( 0, 0, 0 );
        }

        wait(var_2);
    }
}

_ID33978()
{
    return 0;
}

_ID11542( var_0 )
{
    self endon( "killanimscript" );
    animscripts\shared::_ID11529( var_0 );
}

_ID13757()
{
    self endon( "killanimscript" );
    self notify( "facing_enemy_immediately" );
    self endon( "facing_enemy_immediately" );
    var_0 = 5;

    for (;;)
    {
        var_1 = 0 - animscripts\utility::_ID16760();

        if ( abs( var_1 ) < 2 )
            break;

        if ( abs( var_1 ) > var_0 )
            var_1 = var_0 * _ID42237::_ID34160( var_1 );

        self orientmode( "face angle", self._ID65[1] + var_1 );
        wait 0.05;
    }

    self orientmode( "face current" );
    self notify( "can_stop_turning" );
}

_ID20723( var_0 )
{
    var_1 = getangledelta( var_0, 0, 1 );
    var_2 = self localtoworldcoords( var_1 );
    return self isingoal( var_2 ) && self maymovetopoint( var_2 );
}

_ID20667( var_0 )
{
    var_1 = getangledelta( var_0, 0, 1 );
    var_2 = self localtoworldcoords( var_1 );
    return self isingoal( var_2 );
}

_ID11659( var_0, var_1 )
{
    var_2 = isdefined( self._ID33810 );
    var_3 = 1;
    var_4 = 0.2;
    var_5 = isdefined( self._ID322 ) && !isdefined( self._ID39233 ) && self seerecently( self._ID322, 2 ) && distancesquared( self._ID322._ID740, self._ID740 ) < 262144;

    if ( self._ID7._ID31561 + 500 > gettime() )
    {
        var_4 = 0.25;

        if ( var_5 )
            thread _ID13757();
    }
    else if ( var_5 )
    {
        var_6 = 1.0 - distance( self._ID322._ID740, self._ID740 ) / 512;
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
    else if ( var_1 > 112.5 )
        var_7 = 135;
    else if ( var_1 > 67.5 )
        var_7 = 90;
    else
        var_7 = 45;

    var_8 = "turn_" + var_0 + "_" + var_7;

    if ( self._ID7._ID28253 == "crouch" )
    {
        var_9 = var_8;
        var_10 = var_4;

        if ( self._ID823 == "cover_crouch" )
            var_9 = "cover2exposed_" + var_8;
        else if ( isdefined( self._ID39233 ) && isdefined( self._ID8893 ) && self._ID8893._ID1244 == "Cover Crouch" )
        {
            var_9 = "exposed2cover_" + var_8;
            var_10 = 0.1;
        }

        if ( isdefined( self._ID7._ID3291[var_9] ) )
        {
            var_8 = var_9;
            var_4 = var_10;
        }
    }

    var_11 = animscripts\utility::_ID3153( var_8 );

    if ( isdefined( self._ID39233 ) )
        self animmode( "angle deltas", 0 );
    else if ( isdefined( self._ID700 ) && isdefined( anim._ID20710[self._ID700._ID1244] ) && distancesquared( self._ID740, self._ID700._ID740 ) < 256 )
        self animmode( "angle deltas", 0 );
    else if ( _ID20667( var_11 ) )
        _ID29767();
    else
        self animmode( "angle deltas", 0 );

    self setanimknoball( %exposed_aiming, %body, 1, var_4 );

    if ( !isdefined( self._ID39233 ) )
        _ID39219( var_4 );

    self setanimlimited( %turn, 1, var_4 );

    if ( isdefined( self._ID18328 ) )
        var_3 = min( 1.0, var_3 );
    else if ( isdefined( self._ID39233 ) )
        var_3 = max( 1.5, var_3 );

    self setflaggedanimknoblimitedrestart( "turn", var_11, 1, var_4, var_3 );
    _ID8331( var_11, "aim" );
    self notify( "turning" );

    if ( var_2 && !isdefined( self._ID39233 ) && !isdefined( self._ID18328 ) )
        thread _ID33823();

    _ID11660();
    self setanimlimited( %turn, 0, 0.2 );

    if ( !isdefined( self._ID39233 ) )
        _ID39218( 0.2 );

    if ( !isdefined( self._ID39233 ) )
    {
        self clearanim( %turn, 0.2 );
        self setanimknob( %exposed_aiming, 1, 0.2, 1 );
    }
    else
        self clearanim( %exposed_modern, 0.3 );

    if ( isdefined( self._ID39220 ) )
    {
        self._ID39220 = undefined;
        thread _ID13757();
    }

    _ID29767( 0 );
    self notify( "done turning" );
}

_ID11660()
{
    self endon( "can_stop_turning" );
    animscripts\shared::_ID11529( "turn" );
}

_ID22860()
{
    self endon( "killanimscript" );
    self endon( "done turning" );
    var_0 = self._ID65[1];
    wait 0.3;

    if ( self._ID65[1] == var_0 )
    {
        self notify( "turning_isnt_working" );
        self._ID39220 = 1;
    }
}

_ID39219( var_0 )
{
    self setanimlimited( animscripts\utility::_ID3153( "straight_level" ), 0, var_0 );
    self setanim( %add_idle, 0, var_0 );

    if ( !animscripts\utility::_ID41682() )
        self clearanim( %add_fire, 0.2 );
}

_ID39218( var_0 )
{
    self setanimlimited( animscripts\utility::_ID3153( "straight_level" ), 1, var_0 );
    self setanim( %add_idle, 1, var_0 );
}

_ID33823()
{
    self endon( "killanimscript" );
    self endon( "done turning" );

    if ( animscripts\utility::_ID39993() )
        return;

    animscripts\combat_utility::_ID33818();
    self clearanim( %add_fire, 0.2 );
}

_ID33817()
{
    thread _ID41514();
    self endon( "need_to_turn" );
    thread _ID21222();
    animscripts\combat_utility::_ID33818();
    self notify( "stop_watching_for_need_to_turn" );
    self notify( "stop_trying_to_melee" );
}

_ID41514()
{
    self endon( "killanimscript" );
    self endon( "stop_watching_for_need_to_turn" );
    var_0 = gettime() + 4000 + randomint( 2000 );

    for (;;)
    {
        if ( gettime() > var_0 || _ID24717() )
        {
            self notify( "need_to_turn" );
            break;
        }

        wait 0.1;
    }
}

_ID8533()
{
    if ( !animscripts\combat_utility::_ID24633() )
        return 0;

    if ( self._ID464 <= 0 )
        return 0;

    if ( isdefined( anim._ID37694 ) && isalive( level._ID794 ) )
    {
        if ( _ID39070( level._ID794, 200 ) )
            return 1;
    }

    if ( isdefined( self._ID322 ) && _ID39070( self._ID322, self._ID23656 ) )
        return 1;

    self._ID7._ID24783 = gettime() + 500;
    return 0;
}

_ID39070( var_0, var_1 )
{
    var_2 = 0;

    if ( isdefined( self._ID11575 ) || isdefined( var_0._ID11566 ) )
        return 0;

    if ( !isdefined( self._ID7._ID3291["exposed_grenade"] ) )
        return 0;

    var_3 = var_0._ID740;

    if ( !self cansee( var_0 ) )
    {
        if ( isdefined( self._ID322 ) && var_0 == self._ID322 && isdefined( self._ID33810 ) )
            var_3 = self._ID33810;
    }

    if ( !self cansee( var_0 ) )
        var_1 = 100;

    if ( distancesquared( self._ID740, var_3 ) > var_1 * var_1 && self._ID7._ID28253 == self._ID7._ID17423 )
    {
        animscripts\combat_utility::_ID32536( var_0 );

        if ( !animscripts\combat_utility::_ID17406( var_0 ) )
            return 0;

        var_4 = animscripts\utility::_ID16762( var_3 );

        if ( abs( var_4 ) < 60 )
        {
            var_5 = [];

            foreach ( var_7 in self._ID7._ID3291["exposed_grenade"] )
            {
                if ( _ID20723( var_7 ) )
                    var_5[var_5.size] = var_7;
            }

            if ( var_5.size > 0 )
            {
                self setanim( %exposed_aiming, 0, 0.1 );
                _ID8292();
                self animmode( "zonly_physics" );
                animscripts\track::_ID32548( 0, 0 );
                var_2 = animscripts\combat_utility::_ID39072( var_0, var_5[randomint( var_5.size )] );
                self setanim( %exposed_aiming, 1, 0.1 );
                _ID8331( undefined, "aim" );

                if ( var_2 )
                    animscripts\track::_ID32548( 1, 0.5 );
                else
                    animscripts\track::_ID32548( 1, 0 );
            }
        }
    }

    if ( var_2 )
        _ID42298::_ID10832();

    return var_2;
}

_ID38688( var_0 )
{
    if ( var_0 == self._ID7._ID28253 )
        return 0;

    var_1 = self._ID7._ID28253 + "_2_" + var_0;

    if ( var_1 == "crouch_2_stand" && animscripts\utility::should_play_specific_covercrouch_anim() )
        var_1 = "covercrouch_2_stand";

    if ( !isdefined( self._ID7._ID3291 ) )
        return 0;

    var_2 = self._ID7._ID3291[var_1];

    if ( !isdefined( var_2 ) )
        return 0;

    self clearanim( %animscript_root, 0.3 );
    animscripts\combat_utility::_ID12641();

    if ( var_0 == "stand" )
        var_3 = 2;
    else
        var_3 = 1.5;

    if ( !animhasnotetrack( var_2, "anim_pose = \"" + var_0 + "\"" ) )
    {

    }

    self setflaggedanimknoballrestart( "trans", var_2, %body, 1, 0.2, var_3 );
    _ID8331( var_2, "run" );
    var_4 = getanimlength( var_2 ) / var_3;
    var_5 = var_4 - 0.3;

    if ( var_5 < 0.2 )
        var_5 = 0.2;

    animscripts\notetracks::_ID11534( var_5, "trans" );
    self._ID7._ID28253 = var_0;
    _ID32850();
    animscripts\combat_utility::_ID36122();
    _ID42298::_ID10832();
    return 1;
}

_ID21222()
{
    self endon( "killanimscript" );
    self endon( "stop_trying_to_melee" );
    self endon( "done turning" );
    self endon( "need_to_turn" );
    self endon( "shoot_behavior_change" );

    for (;;)
    {
        wait(0.2 + randomfloat( 0.3 ));

        if ( isdefined( self._ID322 ) )
        {
            if ( isplayernumber( self._ID322 ) )
                var_0 = 40000;
            else
                var_0 = 10000;

            if ( distancesquared( self._ID322._ID740, self._ID740 ) < var_0 )
                _ID39076();
        }
    }
}

_ID39076()
{
    animscripts\melee::_ID23422();
}

_ID10224()
{
    if ( isdefined( self._ID24910 ) )
        return;

    if ( isplayernumber( self._ID322 ) )
        return;

    animscripts\melee::_ID23412( self._ID322 );
}

_ID13717( var_0 )
{
    if ( animscripts\combat_utility::_ID24716( var_0 ) )
    {
        self._ID7._ID13718 = 1;
        animscripts\combat_utility::_ID12641();
        var_1 = undefined;

        if ( isdefined( self._ID35384 ) )
        {
            var_1 = self [[ self._ID35384 ]]();
            self._ID561 = 1;
        }
        else
        {
            var_2 = animscripts\animset::has_special_reload( self._ID1302 );

            if ( isdefined( var_2 ) )
                var_1 = animscripts\utility::_ID3156( "reload_" + var_2 );
            else
                var_1 = animscripts\utility::_ID3156( "reload" );

            if ( self._ID7._ID28253 == "stand" && animscripts\utility::_ID3154( "reload_crouchhide" ) && _ID42237::_ID8201() )
            {
                if ( isdefined( var_2 ) )
                    var_1 = animscripts\utility::_ID3156( "reload_crouchhide_" + var_2 );
                else
                    var_1 = animscripts\utility::_ID3156( "reload_crouchhide" );
            }
        }

        thread _ID21222();
        self._ID14235 = 0;

        if ( weaponclass( self._ID1302 ) == "pistol" )
            self orientmode( "face default" );

        if ( isdefined( self._ID18328 ) )
            var_0 = 0;

        _ID11642( var_1, var_0 > 0.05 );
        self notify( "abort_reload" );
        self orientmode( "face current" );

        if ( self._ID14235 )
            animscripts\weaponlist::_ID29364();

        self clearanim( %reload, 0.2 );
        self._ID561 = 0;
        self notify( "stop_trying_to_melee" );
        self._ID7._ID13718 = 0;
        self._ID14235 = undefined;
        _ID42298::_ID10832();
        animscripts\combat_utility::_ID36122();
        return 1;
    }

    return 0;
}

_ID11642( var_0, var_1 )
{
    self endon( "abort_reload" );

    if ( var_1 )
        thread _ID1731();

    var_2 = 1;

    if ( !animscripts\utility::_ID39997() && !animscripts\utility::_ID20902( self._ID1302 ) && isdefined( self._ID322 ) && self cansee( self._ID322 ) && distancesquared( self._ID322._ID740, self._ID740 ) < 1048576 )
        var_2 = 1.2;

    var_3 = "reload_" + animscripts\combat_utility::_ID16710();
    var_2 *= animscripts\combat_utility::_ID44708();
    self clearanim( %animscript_root, 0.2 );
    self setflaggedanimrestart( var_3, var_0, 1, 0.2, var_2 );
    _ID8331( var_0, "run" );
    thread _ID25141( "abort_reload", var_3 );
    self endon( "start_aim" );
    animscripts\shared::_ID11529( var_3 );
    self._ID14235 = 1;
}

_ID1731()
{
    self endon( "abort_reload" );
    self endon( "killanimscript" );

    for (;;)
    {
        if ( isdefined( self._ID33785 ) && self cansee( self._ID33785 ) )
            break;

        wait 0.05;
    }

    self notify( "abort_reload" );
}

_ID25141( var_0, var_1 )
{
    self endon( var_0 );
    self waittillmatch( var_1,  "start_aim"  );
    self._ID14235 = 1;
    self notify( "start_aim" );
}

_ID14236( var_0 )
{
    self endon( "killanimscript" );
    animscripts\shared::_ID11529( var_0 );
}

_ID12141()
{
    _ID42331::_ID12185();
    animscripts\weaponlist::_ID29364();
    self._ID7._ID24711 = 0;
    self notify( "dropped_gun" );
    _ID42331::_ID29868();
}

_ID13289()
{
    _ID12141();
}

_ID39129()
{
    if ( isdefined( self._ID949 ) && animscripts\utility::_ID20902( self._ID949 ) )
        return 0;

    if ( isdefined( self._ID24844 ) )
        return 0;

    self._ID7._ID28253 = "stand";
    self notify( "began_to_switch_to_sidearm" );
    _ID36996( animscripts\utility::_ID22630( "combat", "primary_to_pistol" ) );
    return 1;
}

_ID36996( var_0 )
{
    self endon( "killanimscript" );
    thread animscripts\combat_utility::_ID28777();
    thread _ID46482( "switched_to_sidearm" );
    animscripts\combat_utility::_ID12641();
    self._ID36882 = var_0;
    self setflaggedanimknoballrestart( "weapon swap", var_0, %body, 1, 0.2, animscripts\combat_utility::_ID13949() );
    _ID8331( var_0, "run" );
    _ID11541( "weapon swap", ::_ID18032, "end_weapon_swap" );
    self clearanim( self._ID36882, 0.2 );
    self notify( "facing_enemy_immediately" );
    self notify( "switched_to_sidearm" );
    self._ID36882 = undefined;
    _ID42298::_ID10832();
}

_ID46482( var_0 )
{
    self endon( var_0 );
    self waittill( "killanimscript" );
    self._ID36882 = undefined;
}

_ID11541( var_0, var_1, var_2 )
{
    self endon( var_2 );
    animscripts\notetracks::_ID11540( var_0, var_1 );
}

_ID13756( var_0 )
{
    self endon( "killanimscript" );
    wait(var_0);
    _ID13757();
}

_ID18032( var_0 )
{
    if ( var_0 == "pistol_pickup" )
    {
        self clearanim( animscripts\utility::_ID3153( "straight_level" ), 0 );
        animscripts\animset::_ID32213();
        thread _ID13756( 0.25 );
    }
    else if ( var_0 == "start_aim" )
    {
        animscripts\combat_utility::_ID36122();

        if ( _ID24717() )
            self notify( "end_weapon_swap" );
    }
}

_ID36995( var_0, var_1 )
{
    self endon( "killanimscript" );

    if ( level._ID912 != "ending" )
    {

    }

    if ( animscripts\utility::_ID20902( self._ID834 ) && ( isdefined( self._ID41303 ) && !self._ID41303 ) && self._ID22034 == animscripts\utility::_ID16104() )
        return 0;

    if ( isdefined( self.neverswitchweapon ) && self.neverswitchweapon )
        return 0;

    thread _ID46482( "switched_to_lastweapon" );
    animscripts\combat_utility::_ID12641();
    self._ID36882 = var_0;
    self setflaggedanimknoballrestart( "weapon swap", var_0, %body, 1, 0.1, 1 );
    _ID8331( var_0, "run" );

    if ( isdefined( var_1 ) )
        _ID11541( "weapon swap", ::_ID18001, "end_weapon_swap" );
    else
        _ID11541( "weapon swap", ::_ID18037, "end_weapon_swap" );

    self clearanim( self._ID36882, 0.2 );
    self notify( "switched_to_lastweapon" );
    self._ID36882 = undefined;
    _ID42298::_ID10832();
    return 1;
}

_ID18037( var_0 )
{
    if ( var_0 == "pistol_putaway" )
    {
        self clearanim( animscripts\utility::_ID3153( "straight_level" ), 0 );
        animscripts\animset::_ID32213();
        thread animscripts\combat_utility::_ID28777();
    }
    else if ( var_0 == "start_aim" )
    {
        animscripts\combat_utility::_ID36122();

        if ( _ID24717() )
            self notify( "end_weapon_swap" );
    }
}

_ID18001( var_0 )
{
    if ( var_0 == "pistol_putaway" )
        thread animscripts\combat_utility::_ID28777();
    else if ( issubstr( var_0, "anim_gunhand" ) )
        self notify( "end_weapon_swap" );
}

_ID30316()
{
    if ( !animscripts\utility::_ID39993() || self._ID6323 == 0 )
        return 0;

    if ( randomfloat( 1 ) > 0.5 )
        var_0 = animscripts\utility::_ID22630( "combat", "rpg_death" );
    else
        var_0 = animscripts\utility::_ID22630( "combat", "rpg_death_stagger" );

    self setflaggedanimknoball( "deathanim", var_0, %animscript_root, 1, 0.05, 1 );
    _ID8331( var_0, "death" );
    animscripts\shared::_ID11529( "deathanim" );
    animscripts\shared::_ID12143();
    return;
}

_ID29052()
{
    self endon( "killanimscript" );
    self._ID7._ID13718 = 0;

    for (;;)
    {
        wait 0.2;

        if ( isdefined( self._ID322 ) && !self seerecently( self._ID322, 2 ) )
        {
            if ( self._ID199 == "ambush" || self._ID199 == "ambush_nodes_only" )
                continue;
        }

        _ID39069();
    }
}

_ID39069()
{
    if ( self._ID381 )
        return;

    if ( !isdefined( self._ID322 ) )
    {
        self._ID29050 = 0;
        return;
    }

    if ( gettime() < self._ID1199 )
    {
        self._ID29050 = 0;
        return;
    }

    if ( isdefined( self._ID28497 ) && self._ID28497 != self._ID322 )
    {
        self._ID29050 = 0;
        self._ID28497 = undefined;
        return;
    }

    self._ID28497 = self._ID322;

    if ( self cansee( self._ID322 ) )
    {
        if ( self canshootenemy() || isdefined( self._ID36882 ) )
        {
            self._ID29050 = 0;
            return;
        }
    }

    if ( isdefined( self._ID14235 ) && !self._ID14235 )
    {
        self._ID29050 = 0;
        return;
    }

    if ( !isdefined( self._ID29051 ) || !self._ID29051 )
    {
        var_0 = vectornormalize( self._ID322._ID740 - self._ID740 );
        var_1 = anglestoforward( self._ID65 );

        if ( vectordot( var_0, var_1 ) < 0.5 )
        {
            self._ID29050 = 0;
            return;
        }
    }

    if ( self._ID7._ID13718 && animscripts\combat_utility::_ID24716( 0.25 ) && self._ID322._ID486 > self._ID322._ID626 * 0.5 )
    {
        self._ID29050 = 0;
        return;
    }

    if ( animscripts\combat_utility::_ID33951() && self._ID29050 < 3 )
        self._ID29050 = 3;

    switch ( self._ID29050 )
    {
        case 0:
            if ( self reacquirestep( 32 ) )
                return;

            break;
        case 1:
            if ( self reacquirestep( 64 ) )
            {
                self._ID29050 = 0;
                return;
            }

            break;
        case 2:
            if ( self reacquirestep( 96 ) )
            {
                self._ID29050 = 0;
                return;
            }

            break;
        case 3:
            if ( animscripts\combat_utility::_ID39079( 0 ) )
            {
                self._ID29050 = 0;
                return;
            }

            break;
        case 4:
            if ( !self cansee( self._ID322 ) || !self canshootenemy() )
                self flagenemyunattackable();

            break;
        default:
            if ( self._ID29050 > 15 )
            {
                self._ID29050 = 0;
                return;
            }

            break;
    }

    self._ID29050++;
}

_ID29767( var_0 )
{
    var_1 = var_0;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( self._ID1063 )
        self animmode( "nogravity", var_1 );
    else
        self animmode( "zonly_physics", var_1 );
}

_ID8331( var_0, var_1 )
{
    self._ID13770 = animscripts\face::_ID28062( var_0, var_1, self._ID13770 );
}

_ID8292()
{
    self._ID13770 = undefined;
    self clearanim( %head, 0.2 );
}
