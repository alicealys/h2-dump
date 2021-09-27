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
    if ( _func_02F( self._ID24817 ) )
        return;

    if ( _func_02F( self._ID9526 ) )
    {
        if ( _func_02F( self._ID9526["combat"] ) )
        {
            [[ self._ID9526["combat"] ]]();
            return;
        }
    }

    self endon( "killanimscript" );
    [[ self._ID13288["exposed"] ]]();
    animscripts\utility::_ID19930( "combat" );
    self._ID7._ID3372 = undefined;

    if ( _func_02F( self._ID700 ) && self._ID700._ID1244 == "Ambush" && self _meth_816B( self._ID700 ) )
        self._ID2925 = self._ID700;

    _unknown_0274();
    _unknown_0179();

    if ( _func_02F( self._ID35378 ) )
        animscripts\stop::_ID35379();

    _unknown_030A();
    _unknown_042F();
    self notify( "stop_deciding_how_to_shoot" );
}

_ID319()
{
    self._ID2925 = undefined;
    _unknown_0A35();
}

_ID11395()
{
    if ( self._ID1194 != "allies" )
        return;

    if ( self _meth_81DA() && self._ID823 == "move" && self._ID7._ID28253 == "stand" && !_func_02F( self._ID11029 ) )
    {
        if ( _func_02F( self._ID322 ) && _func_0F5( self._ID740, self._ID322._ID740 ) < _func_0ED( 128 ) )
            return;

        if ( !_func_02F( self._ID7._ID3291 ) )
            return;

        if ( _func_02F( self._ID7._ID3291["surprise_stop"] ) )
            var_0 = animscripts\utility::_ID3153( "surprise_stop" );
        else if ( self._ID1063 )
        {
            var_0 = animscripts\swim::_ID16643( "surprise_stop" );

            if ( !_func_02F( var_0 ) )
                return;
        }
        else
            var_0 = animscripts\utility::_ID22630( "combat", "surprise_stop" );

        _unknown_0AB9();
        self _meth_8119( "react", var_0, %animscript_root, 1, 0.2, self._ID3195 );
        _unknown_0AE5( var_0, "run" );
        animscripts\shared::_ID11529( "react" );
    }
}

_ID45333( var_0 )
{
    if ( var_0 == "start_aim" && _func_02F( self._ID322 ) )
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

        if ( _func_02F( var_0 ) )
        {
            _unknown_0B43();
            self _meth_819B( "face current" );
            self _meth_8119( "transition", var_0, %animscript_root, 1, 0.2, 1 );
            animscripts\shared::_ID11529( "transition", ::_unknown_031A );
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

        if ( _func_02F( var_0 ) )
        {
            var_2 = 0;
            var_3 = var_0;

            for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
            {
                var_4 = var_3[var_5];

                if ( self _meth_815A( var_4 ) != 0.0 )
                {
                    var_2 = 1;
                    break;
                }
            }

            var_clear_2
            var_clear_0

            if ( var_2 )
            {
                _unknown_0C37();
                self _meth_819B( "face current" );
                var_6 = animscripts\utility::_ID22630( "combat", var_1 );
                self _meth_8119( "transition", var_6, %animscript_root, 1, 0.2, 1 );
                animscripts\shared::_ID11529( "transition" );
            }
        }
    }
}

_ID49722()
{
    if ( _func_02F( self._ID43642 ) && self._ID7._ID28253 == "prone" )
    {
        var_0 = undefined;
        var_1 = undefined;

        if ( self._ID823 == "move" )
        {
            self _meth_819A( "angle deltas", 0 );
            self _meth_819B( "face current" );
            self _meth_8119( "transition", %h1_crawl_2_prone, %animscript_root, 1, 0.4, 1 );
            animscripts\shared::_ID11529( "transition" );
            _unknown_0CC4();
        }
    }
}

_ID48075()
{
    if ( _func_02F( self._ID49606 ) && self._ID49606 )
    {
        if ( self._ID7._ID28253 == "crouch" && self._ID823 == "move" )
        {
            self _meth_819A( "zonly_physics" );
            self _meth_819B( "face current" );
            self _meth_8119( "transition", %crouchwalk_2_crouch_stop_2, %animscript_root, 1, 0.4, 1 );
            animscripts\shared::_ID11529( "transition" );
            _unknown_0D20();
        }
    }
}

_ID38689()
{
    if ( _func_02F( self._ID35378 ) || _func_02F( self._ID9568 ) )
        return;

    if ( _func_02F( self._ID3152 ) && self._ID3152 == "s1_soldier" )
    {
        if ( !_func_02F( self._ID322 ) )
            return;

        if ( self._ID7._ID28253 == "crouch" )
        {
            if ( self._ID823 == "cover_right" )
            {
                _unknown_0D63();
                self _meth_819B( "face current" );
                var_0 = animscripts\utility::_ID22630( "combat", "trans_from_crouch_r" );
                self _meth_8119( "transition", var_0, %animscript_root, 1, 0.2, 1 );
                wait(_func_067( var_0 ));
            }
            else if ( self._ID823 == "cover_left" )
            {
                _unknown_0DA4();
                self _meth_819B( "face current" );
                var_0 = animscripts\utility::_ID22630( "combat", "trans_from_crouch_l" );
                self _meth_8119( "transition", var_0, %animscript_root, 1, 0.2, 1 );
                wait(_func_067( var_0 ));
            }
        }
    }
    else
        _unknown_0596();

    _unknown_05C2();
    _unknown_0619();
    _unknown_063C();

    if ( _func_02F( self._ID322 ) && _func_0F5( self._ID740, self._ID322._ID740 ) < 262144 )
        return;

    if ( self._ID823 == "stop" && !animscripts\utility::_ID20716() && self._ID7._ID28253 == "stand" && !self _meth_816F() )
    {
        _unknown_0E26();
        var_0 = undefined;

        if ( animscripts\utility::_ID39998() )
            var_0 = animscripts\utility::_ID22630( "combat", "smg_trans_to_combat" );
        else
            var_0 = animscripts\utility::_ID22630( "combat", "trans_to_combat" );

        self _meth_8119( "transition", var_0, %animscript_root, 1, 0.2, 1.2 * self._ID3195 );
        _unknown_0E7A( var_0, "run" );
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
    if ( animscripts\utility::_ID39997() && self _meth_81D7( "stand" ) )
        _unknown_0C5A( "stand" );

    _unknown_07AF();
    _unknown_0800();
    thread _unknown_07E9();
    self._ID28522 = 0.0;
    self _meth_814C( %animscript_root, 0.2 );
    var_0 = 0.2;

    if ( _func_02F( self._ID2431 ) )
        var_0 = self._ID2431;

    animscripts\combat_utility::_ID33531( var_0 );

    if ( self._ID47383 )
        thread animscripts\combat_utility::_ID2428();

    self._ID7._ID23443 = "aim";
    _unknown_0D09();
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
    if ( _func_02F( var_0 ) )
        self _meth_817F( var_0 );
    else
        self _meth_817F();

    _unknown_0881();
}

_ID32185()
{
    _unknown_0892();

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
    thread _unknown_0F0A();
    thread animscripts\shoot_behavior::_ID10054( "normal" );
    thread _unknown_0B32();
    _unknown_0B21();

    if ( _func_02F( self._ID7._ID22753 ) )
    {
        animscripts\weaponlist::_ID29364();
        self._ID7._ID22753 = undefined;
    }

    self._ID7._ID11570 = _func_03D() + _func_0B9( 500, 1500 );
}

_ID13716( var_0 )
{
    if ( animscripts\utility::_ID39993() && animscripts\utility::_ID33944( var_0 ) )
    {
        if ( self._ID7._ID28253 != "stand" && self._ID7._ID28253 != "crouch" )
            _unknown_0D88( "crouch" );

        if ( self._ID7._ID28253 == "stand" )
            animscripts\shared::_ID37693( animscripts\utility::_ID22630( "combat", "drop_rpg_stand" ) );
        else
            animscripts\shared::_ID37693( animscripts\utility::_ID22630( "combat", "drop_rpg_crouch" ) );

        self _meth_814C( %animscript_root, 0.2 );
        animscripts\combat_utility::_ID12641();
        _unknown_091D();
        animscripts\combat_utility::_ID36122();
        return 1;
    }

    return 0;
}

_ID13712( var_0 )
{
    if ( self._ID7._ID28253 != "stand" && self _meth_81D7( "stand" ) )
    {
        if ( var_0 < 81225 )
        {
            _unknown_0DFD( "stand" );
            return 1;
        }

        if ( _unknown_0AE7() )
            return 1;
    }

    if ( var_0 > 262144 && self._ID7._ID28253 != "crouch" && self _meth_81D7( "crouch" ) && !self._ID1063 && !animscripts\utility::_ID39997() && !_func_02F( self._ID18328 ) && _func_03D() >= self._ID7._ID11570 && _func_0F8( self._ID33786 ) < 10000 )
    {
        if ( !_func_02F( self._ID33810 ) || _func_090( self._ID740 + ( 0, 0, 36 ), self._ID33810, 0, undefined ) )
        {
            _unknown_0E75( "crouch" );
            return 1;
        }
    }

    return 0;
}

_ID13711( var_0 )
{
    if ( !animscripts\utility::_ID39997() )
    {
        if ( _func_02F( self._ID14794 ) && self._ID7._ID28253 == "stand" )
        {
            if ( _unknown_0FAC() )
                return 1;
        }

        if ( animscripts\combat_utility::_ID20910() && var_0 < 167772 )
        {
            if ( _unknown_0FC1() )
                return 1;
        }
    }

    if ( animscripts\combat_utility::_ID24716( 0 ) )
    {
        if ( !animscripts\utility::_ID39997() && _ID42237::_ID8201() && !animscripts\utility::_ID39993() && animscripts\utility::_ID39990() && var_0 < 167772 && self _meth_81D7( "stand" ) )
        {
            if ( self._ID7._ID28253 != "stand" )
            {
                _unknown_0EF7( "stand" );
                return 1;
            }

            if ( _unknown_1011() )
                return 1;
        }

        if ( _unknown_0F71( 0 ) )
            return 1;
    }

    return 0;
}

_ID13710( var_0 )
{
    if ( animscripts\utility::_ID39997() && self._ID7._ID28253 == "stand" && !_func_02F( self._ID14794 ) )
    {
        if ( var_0 > 262144 || self._ID199 == "ambush_nodes_only" && !_func_02F( self._ID322 ) || !self _meth_81CA( self._ID322 ) )
            _unknown_10C8( animscripts\utility::_ID22630( "combat", "pistol_to_primary" ) );
    }
}

_ID13715()
{
    if ( _func_02F( self._ID18328 ) && self _meth_816D() )
        self _meth_81D3( self._ID705, self._ID700._ID65 );
}

_ID13714()
{
    if ( _unknown_0C76() )
    {
        var_0 = 0.25;

        if ( _func_02F( self._ID33785 ) && !_func_0D6( self._ID33785 ) )
            var_0 = 1.5;

        var_1 = animscripts\shared::_ID16537( var_0 );

        if ( _unknown_0D93( var_1 ) )
            return 1;
    }

    return 0;
}

_ID13713()
{
    self endon( "killanimscript" );
    _unknown_0B5C();
    _unknown_1222( 0 );

    if ( animscripts\utility::_ID20915() )
    {
        var_0 = ( 0, self._ID65[1], 0 );
        self _meth_819B( "face angle 3d", var_0 );
    }
    else
        self _meth_819B( "face angle", self._ID65[1] );

    for (;;)
    {
        if ( animscripts\utility::_ID39993() )
            self._ID9827 = undefined;

        animscripts\utility::_ID39726();

        if ( _unknown_0D01() )
            continue;

        _unknown_105A();
        _unknown_0C67();

        if ( !_func_02F( self._ID33810 ) )
        {
            _unknown_0D4C();
            continue;
        }

        _unknown_0DFA();
        var_1 = _func_0F8( self._ID740 - self._ID33810 );

        if ( _unknown_0BDB( var_1 ) )
            continue;

        if ( _unknown_0C99() )
            continue;

        if ( _unknown_0FB3() )
            continue;

        if ( _unknown_0C58( var_1 ) )
            continue;

        if ( animscripts\utility::_ID39993() && self._ID7._ID28253 != "crouch" && _func_0B8( 1 ) > 0.65 )
            self._ID9827 = ::_unknown_1224;

        _unknown_0CB5( var_1 );

        if ( _unknown_0C53( var_1 ) )
        {
            if ( animscripts\utility::_ID49045() )
                self _meth_819B( "face current" );

            continue;
        }

        if ( animscripts\combat_utility::_ID2425() )
        {
            _unknown_0FEF();
            animscripts\combat_utility::_ID18550();
            continue;
        }

        _unknown_0D64();
    }
}

_ID13720()
{
    if ( !_func_02F( self._ID322 ) || !self _meth_81CA( self._ID322 ) )
    {
        self endon( "enemy" );
        self endon( "shoot_behavior_change" );
        wait(0.2 + _func_0B8( 0.1 ));
        self waittill( "do_slow_things" );
    }
    else
        wait 0.05;
}

_ID35595()
{
    if ( _func_02F( self._ID322 ) && !self _meth_81CA( self._ID322 ) || !self _meth_81C9() && _func_090( self._ID740 + ( 0, 0, 64 ), self._ID322 _meth_809E(), 0, undefined ) )
    {
        self._ID7._ID11570 = _func_03D() + 3000;
        return _unknown_110A( "stand" );
    }

    return 0;
}

_ID24717()
{
    var_0 = self._ID33810;

    if ( !_func_02F( var_0 ) )
        return 0;

    var_1 = self._ID65[1] - _func_11B( var_0 - self._ID740 );
    var_2 = _func_0F5( self._ID740, var_0 );

    if ( var_2 < 65536 )
    {
        var_3 = _func_0EC( var_2 );

        if ( var_3 > 3 )
            var_1 += _func_0BE( -3 / var_3 );
    }

    return animscripts\utility::_ID1735( var_1 ) > self._ID39229;
}

_ID41020()
{
    var_0 = self._ID7._ID28253;

    if ( _func_02F( self._ID7._ID25684 ) )
    {
        wait 0.1;
        return 1;
    }

    if ( var_0 == "stand" && _func_02F( self._ID18328 ) )
        return 0;

    if ( !self _meth_81D7( var_0 ) )
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

        if ( self _meth_81D7( var_1 ) )
        {
            if ( var_0 == "stand" && animscripts\utility::_ID39997() )
                return 0;

            _unknown_11C0( var_1 );
            return 1;
        }
        else if ( self _meth_81D7( var_2 ) )
        {
            if ( var_0 == "stand" && animscripts\utility::_ID39997() )
                return 0;

            _unknown_11E0( var_2 );
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
    if ( self._ID7._ID28253 != "stand" && self _meth_81D7( "stand" ) && _unknown_0EE8() )
        return 1;

    var_0 = _func_03D();
    self._ID7._ID11570 = var_0 + 1500;

    if ( _func_02F( self._ID17437 ) && _func_02F( self._ID17437._ID409 ) )
    {
        var_1 = _func_0F0( self._ID65[1] - _func_11B( self._ID17437._ID409 ) );

        if ( _unknown_102F( var_1 ) )
            return 1;
    }

    if ( _func_02F( self._ID700 ) && _func_02F( anim._ID20711[self._ID700._ID1244] ) )
    {
        var_1 = _func_0F0( self._ID65[1] - self._ID700._ID65[1] );

        if ( _unknown_105E( var_1 ) )
            return 1;
    }
    else if ( _func_02F( self._ID322 ) && self _meth_81CB( self._ID322, 2 ) || var_0 > self._ID7._ID31561 + 1200 )
    {
        var_1 = undefined;
        var_2 = self _meth_819E();

        if ( _func_02F( var_2 ) )
            var_1 = _func_0F0( self._ID65[1] - var_2[1] );
        else if ( _func_02F( self._ID8252 ) && _func_02F( self._ID3152 ) && self._ID3152 == "riotshield" && self._ID1194 == "allies" )
        {
            var_3 = 0;
            var_3 = _ID42237::_ID37527( self._ID8252._ID1244 == "Cover Left", 68, var_3 );
            var_3 = _ID42237::_ID37527( self._ID8252._ID1244 == "Cover Right", -68, var_3 );
            var_1 = _func_0F0( self._ID65[1] - _func_0EF( self._ID8252._ID65[1] + var_3 ) );
        }
        else if ( _func_02F( self._ID700 ) )
            var_1 = _func_0F0( self._ID65[1] - self._ID700._ID65[1] );
        else if ( _func_02F( self._ID322 ) )
        {
            var_2 = _func_11A( self _meth_81CD( self._ID322 ) - self._ID740 );
            var_1 = _func_0F0( self._ID65[1] - var_2[1] );
        }

        if ( _func_02F( var_1 ) && _unknown_1142( var_1 ) )
            return 1;
    }
    else if ( _func_02F( self._ID18328 ) && self _meth_816C() )
    {
        var_1 = _func_0F0( self._ID65[1] - self._ID700._ID65[1] );

        if ( _unknown_116E( var_1 ) )
            return 1;
    }

    if ( _unknown_130B() )
        return 1;

    var_4 = self._ID7._ID24781 < var_0;
    var_5 = 0;

    if ( var_4 )
        var_5 = 0.99999;

    if ( _unknown_140C( var_5 ) )
        return 1;

    if ( var_4 && animscripts\utility::_ID39997() )
    {
        if ( _unknown_152A( animscripts\utility::_ID22630( "combat", "pistol_to_primary" ) ) )
            return 1;
    }

    _unknown_11A9();
    return 1;
}

_ID6905()
{
    self endon( "shoot_behavior_change" );
    wait(0.4 + _func_0B8( 0.4 ));
    self waittill( "do_slow_things" );
}

_ID29774()
{
    self._ID7._ID24781 = _func_03D() + _func_0B9( 2000, 4000 );
}

_ID39232( var_0 )
{
    if ( var_0 < 0 - self._ID39229 )
    {
        _unknown_125E( "left", 0 - var_0 );
        _ID42298::_ID10832();
        return 1;
    }

    if ( var_0 > self._ID39229 )
    {
        _unknown_1273( "right", var_0 );
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
        if ( _func_02F( self._ID33785 ) && _func_02F( var_0 ) && self._ID33785 == var_0 )
        {
            var_3 = self._ID33785._ID740;
            self._ID33786 = var_3 - var_1 * 1 / var_2;
            var_1 = var_3;
        }
        else
        {
            if ( _func_02F( self._ID33785 ) )
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

        if ( _func_0C3( var_1 ) < 2 )
            break;

        if ( _func_0C3( var_1 ) > var_0 )
            var_1 = var_0 * _ID42237::_ID34160( var_1 );

        self _meth_819B( "face angle", self._ID65[1] + var_1 );
        wait 0.05;
    }

    self _meth_819B( "face current" );
    self notify( "can_stop_turning" );
}

_ID20723( var_0 )
{
    var_1 = _func_094( var_0, 0, 1 );
    var_2 = self _meth_81BC( var_1 );
    return self _meth_8169( var_2 ) && self _meth_81CF( var_2 );
}

_ID20667( var_0 )
{
    var_1 = _func_094( var_0, 0, 1 );
    var_2 = self _meth_81BC( var_1 );
    return self _meth_8169( var_2 );
}

_ID11659( var_0, var_1 )
{
    var_2 = _func_02F( self._ID33810 );
    var_3 = 1;
    var_4 = 0.2;
    var_5 = _func_02F( self._ID322 ) && !_func_02F( self._ID39233 ) && self _meth_81CB( self._ID322, 2 ) && _func_0F5( self._ID322._ID740, self._ID740 ) < 262144;

    if ( self._ID7._ID31561 + 500 > _func_03D() )
    {
        var_4 = 0.25;

        if ( var_5 )
            thread _unknown_13A9();
    }
    else if ( var_5 )
    {
        var_6 = 1.0 - _func_0F3( self._ID322._ID740, self._ID740 ) / 512;
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
        else if ( _func_02F( self._ID39233 ) && _func_02F( self._ID8893 ) && self._ID8893._ID1244 == "Cover Crouch" )
        {
            var_9 = "exposed2cover_" + var_8;
            var_10 = 0.1;
        }

        if ( _func_02F( self._ID7._ID3291[var_9] ) )
        {
            var_8 = var_9;
            var_4 = var_10;
        }
    }

    var_11 = animscripts\utility::_ID3153( var_8 );

    if ( _func_02F( self._ID39233 ) )
        self _meth_819A( "angle deltas", 0 );
    else if ( _func_02F( self._ID700 ) && _func_02F( anim._ID20710[self._ID700._ID1244] ) && _func_0F5( self._ID740, self._ID700._ID740 ) < 256 )
        self _meth_819A( "angle deltas", 0 );
    else if ( _unknown_14F9( var_11 ) )
        _unknown_1917();
    else
        self _meth_819A( "angle deltas", 0 );

    self _meth_8151( %exposed_aiming, %body, 1, var_4 );

    if ( !_func_02F( self._ID39233 ) )
        _unknown_161B( var_4 );

    self _meth_8156( %turn, 1, var_4 );

    if ( _func_02F( self._ID18328 ) )
        var_3 = _func_0C4( 1.0, var_3 );
    else if ( _func_02F( self._ID39233 ) )
        var_3 = _func_0E6( 1.5, var_3 );

    self _meth_8117( "turn", var_11, 1, var_4, var_3 );
    _unknown_1991( var_11, "aim" );
    self notify( "turning" );

    if ( var_2 && !_func_02F( self._ID39233 ) && !_func_02F( self._ID18328 ) )
        thread _unknown_1695();

    _unknown_166D();
    self _meth_8156( %turn, 0, 0.2 );

    if ( !_func_02F( self._ID39233 ) )
        _unknown_16AE( 0.2 );

    if ( !_func_02F( self._ID39233 ) )
    {
        self _meth_814C( %turn, 0.2 );
        self _meth_814D( %exposed_aiming, 1, 0.2, 1 );
    }
    else
        self _meth_814C( %exposed_modern, 0.3 );

    if ( _func_02F( self._ID39220 ) )
    {
        self._ID39220 = undefined;
        thread _unknown_15CE();
    }

    _unknown_1A11( 0 );
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
    self _meth_8156( animscripts\utility::_ID3153( "straight_level" ), 0, var_0 );
    self _meth_8155( %add_idle, 0, var_0 );

    if ( !animscripts\utility::_ID41682() )
        self _meth_814C( %add_fire, 0.2 );
}

_ID39218( var_0 )
{
    self _meth_8156( animscripts\utility::_ID3153( "straight_level" ), 1, var_0 );
    self _meth_8155( %add_idle, 1, var_0 );
}

_ID33823()
{
    self endon( "killanimscript" );
    self endon( "done turning" );

    if ( animscripts\utility::_ID39993() )
        return;

    animscripts\combat_utility::_ID33818();
    self _meth_814C( %add_fire, 0.2 );
}

_ID33817()
{
    thread _unknown_17CF();
    self endon( "need_to_turn" );
    thread _unknown_18AA();
    animscripts\combat_utility::_ID33818();
    self notify( "stop_watching_for_need_to_turn" );
    self notify( "stop_trying_to_melee" );
}

_ID41514()
{
    self endon( "killanimscript" );
    self endon( "stop_watching_for_need_to_turn" );
    var_0 = _func_03D() + 4000 + _func_0B7( 2000 );

    for (;;)
    {
        if ( _func_03D() > var_0 || _unknown_1592() )
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

    if ( _func_02F( anim._ID37694 ) && _func_1A7( level._ID794 ) )
    {
        if ( _unknown_186E( level._ID794, 200 ) )
            return 1;
    }

    if ( _func_02F( self._ID322 ) && _unknown_1882( self._ID322, self._ID23656 ) )
        return 1;

    self._ID7._ID24783 = _func_03D() + 500;
    return 0;
}

_ID39070( var_0, var_1 )
{
    var_2 = 0;

    if ( _func_02F( self._ID11575 ) || _func_02F( var_0._ID11566 ) )
        return 0;

    if ( !_func_02F( self._ID7._ID3291["exposed_grenade"] ) )
        return 0;

    var_3 = var_0._ID740;

    if ( !self _meth_81CA( var_0 ) )
    {
        if ( _func_02F( self._ID322 ) && var_0 == self._ID322 && _func_02F( self._ID33810 ) )
            var_3 = self._ID33810;
    }

    if ( !self _meth_81CA( var_0 ) )
        var_1 = 100;

    if ( _func_0F5( self._ID740, var_3 ) > var_1 * var_1 && self._ID7._ID28253 == self._ID7._ID17423 )
    {
        animscripts\combat_utility::_ID32536( var_0 );

        if ( !animscripts\combat_utility::_ID17406( var_0 ) )
            return 0;

        var_4 = animscripts\utility::_ID16762( var_3 );

        if ( _func_0C3( var_4 ) < 60 )
        {
            var_5 = [];
            var_6 = self._ID7._ID3291["exposed_grenade"];

            for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
            {
                var_7 = var_6[var_8];

                if ( _unknown_17E8( var_7 ) )
                    var_5[var_5.size] = var_7;
            }

            var_clear_2
            var_clear_0

            if ( var_5.size > 0 )
            {
                self _meth_8155( %exposed_aiming, 0, 0.1 );
                _unknown_1C41();
                self _meth_819A( "zonly_physics" );
                animscripts\track::_ID32548( 0, 0 );
                var_2 = animscripts\combat_utility::_ID39072( var_0, var_5[_func_0B7( var_5.size )] );
                self _meth_8155( %exposed_aiming, 1, 0.1 );
                _unknown_1C6E( undefined, "aim" );

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

    if ( !_func_02F( self._ID7._ID3291 ) )
        return 0;

    var_2 = self._ID7._ID3291[var_1];

    if ( !_func_02F( var_2 ) )
        return 0;

    self _meth_814C( %animscript_root, 0.3 );
    animscripts\combat_utility::_ID12641();

    if ( var_0 == "stand" )
        var_3 = 2;
    else
        var_3 = 1.5;

    if ( !_func_068( var_2, "anim_pose = \"" + var_0 + "\"" ) )
    {

    }

    self _meth_8119( "trans", var_2, %body, 1, 0.2, var_3 );
    _unknown_1D2B( var_2, "run" );
    var_4 = _func_067( var_2 ) / var_3;
    var_5 = var_4 - 0.3;

    if ( var_5 < 0.2 )
        var_5 = 0.2;

    animscripts\notetracks::_ID11534( var_5, "trans" );
    self._ID7._ID28253 = var_0;
    _unknown_1631();
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
        wait(0.2 + _func_0B8( 0.3 ));

        if ( _func_02F( self._ID322 ) )
        {
            if ( _func_1B3( self._ID322 ) )
                var_0 = 40000;
            else
                var_0 = 10000;

            if ( _func_0F5( self._ID322._ID740, self._ID740 ) < var_0 )
                _unknown_1B9D();
        }
    }
}

_ID39076()
{
    animscripts\melee::_ID23422();
}

_ID10224()
{
    if ( _func_02F( self._ID24910 ) )
        return;

    if ( _func_1B3( self._ID322 ) )
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

        if ( _func_02F( self._ID35384 ) )
        {
            var_1 = self [[ self._ID35384 ]]();
            self._ID561 = 1;
        }
        else
        {
            var_2 = animscripts\animset::has_special_reload( self._ID1302 );

            if ( _func_02F( var_2 ) )
                var_1 = animscripts\utility::_ID3156( "reload_" + var_2 );
            else
                var_1 = animscripts\utility::_ID3156( "reload" );

            if ( self._ID7._ID28253 == "stand" && animscripts\utility::_ID3154( "reload_crouchhide" ) && _ID42237::_ID8201() )
            {
                if ( _func_02F( var_2 ) )
                    var_1 = animscripts\utility::_ID3156( "reload_crouchhide_" + var_2 );
                else
                    var_1 = animscripts\utility::_ID3156( "reload_crouchhide" );
            }
        }

        thread _unknown_1C2E();
        self._ID14235 = 0;

        if ( _func_1BE( self._ID1302 ) == "pistol" )
            self _meth_819B( "face default" );

        if ( _func_02F( self._ID18328 ) )
            var_0 = 0;

        _unknown_1CD1( var_1, var_0 > 0.05 );
        self notify( "abort_reload" );
        self _meth_819B( "face current" );

        if ( self._ID14235 )
            animscripts\weaponlist::_ID29364();

        self _meth_814C( %reload, 0.2 );
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
        thread _unknown_1D54();

    var_2 = 1;

    if ( !animscripts\utility::_ID39997() && !animscripts\utility::_ID20902( self._ID1302 ) && _func_02F( self._ID322 ) && self _meth_81CA( self._ID322 ) && _func_0F5( self._ID322._ID740, self._ID740 ) < 1048576 )
        var_2 = 1.2;

    var_3 = "reload_" + animscripts\combat_utility::_ID16710();
    var_2 *= animscripts\combat_utility::_ID44708();
    self _meth_814C( %animscript_root, 0.2 );
    self _meth_811C( var_3, var_0, 1, 0.2, var_2 );
    _unknown_1F46( var_0, "run" );
    thread _unknown_1DD5( "abort_reload", var_3 );
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
        if ( _func_02F( self._ID33785 ) && self _meth_81CA( self._ID33785 ) )
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
    _unknown_1E62();
}

_ID39129()
{
    if ( _func_02F( self._ID949 ) && animscripts\utility::_ID20902( self._ID949 ) )
        return 0;

    if ( _func_02F( self._ID24844 ) )
        return 0;

    self._ID7._ID28253 = "stand";
    self notify( "began_to_switch_to_sidearm" );
    _unknown_1EBB( animscripts\utility::_ID22630( "combat", "primary_to_pistol" ) );
    return 1;
}

_ID36996( var_0 )
{
    self endon( "killanimscript" );
    thread animscripts\combat_utility::_ID28777();
    thread _unknown_1EF4( "switched_to_sidearm" );
    animscripts\combat_utility::_ID12641();
    self._ID36882 = var_0;
    self _meth_8119( "weapon swap", var_0, %body, 1, 0.2, animscripts\combat_utility::_ID13949() );
    _unknown_2048( var_0, "run" );
    _unknown_1F30( "weapon swap", ::_unknown_1F33, "end_weapon_swap" );
    self _meth_814C( self._ID36882, 0.2 );
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
    _unknown_1C54();
}

_ID18032( var_0 )
{
    if ( var_0 == "pistol_pickup" )
    {
        self _meth_814C( animscripts\utility::_ID3153( "straight_level" ), 0 );
        animscripts\animset::_ID32213();
        thread _unknown_1F9D( 0.25 );
    }
    else if ( var_0 == "start_aim" )
    {
        animscripts\combat_utility::_ID36122();

        if ( _unknown_1B54() )
            self notify( "end_weapon_swap" );
    }
}

_ID36995( var_0, var_1 )
{
    self endon( "killanimscript" );

    if ( level._ID912 != "ending" )
    {

    }

    if ( animscripts\utility::_ID20902( self._ID834 ) && _func_02F( self._ID41303 ) && !self._ID41303 && self._ID22034 == animscripts\utility::_ID16104() )
        return 0;

    if ( _func_02F( self.neverswitchweapon ) && self.neverswitchweapon )
        return 0;

    thread _unknown_1FF6( "switched_to_lastweapon" );
    animscripts\combat_utility::_ID12641();
    self._ID36882 = var_0;
    self _meth_8119( "weapon swap", var_0, %body, 1, 0.1, 1 );
    _unknown_2148( var_0, "run" );

    if ( _func_02F( var_1 ) )
        _unknown_2036( "weapon swap", ::_unknown_2099, "end_weapon_swap" );
    else
        _unknown_2049( "weapon swap", ::_unknown_2099, "end_weapon_swap" );

    self _meth_814C( self._ID36882, 0.2 );
    self notify( "switched_to_lastweapon" );
    self._ID36882 = undefined;
    _ID42298::_ID10832();
    return 1;
}

_ID18037( var_0 )
{
    if ( var_0 == "pistol_putaway" )
    {
        self _meth_814C( animscripts\utility::_ID3153( "straight_level" ), 0 );
        animscripts\animset::_ID32213();
        thread animscripts\combat_utility::_ID28777();
    }
    else if ( var_0 == "start_aim" )
    {
        animscripts\combat_utility::_ID36122();

        if ( _unknown_1C3B() )
            self notify( "end_weapon_swap" );
    }
}

_ID18001( var_0 )
{
    if ( var_0 == "pistol_putaway" )
        thread animscripts\combat_utility::_ID28777();
    else if ( _func_125( var_0, "anim_gunhand" ) )
        self notify( "end_weapon_swap" );
}

_ID30316()
{
    if ( !animscripts\utility::_ID39993() || self._ID6323 == 0 )
        return 0;

    if ( _func_0B8( 1 ) > 0.5 )
        var_0 = animscripts\utility::_ID22630( "combat", "rpg_death" );
    else
        var_0 = animscripts\utility::_ID22630( "combat", "rpg_death_stagger" );

    self _meth_8118( "deathanim", var_0, %animscript_root, 1, 0.05, 1 );
    _unknown_2237( var_0, "death" );
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

        if ( _func_02F( self._ID322 ) && !self _meth_81CB( self._ID322, 2 ) )
        {
            if ( self._ID199 == "ambush" || self._ID199 == "ambush_nodes_only" )
                continue;
        }

        _unknown_2207();
    }
}

_ID39069()
{
    if ( self._ID381 )
        return;

    if ( !_func_02F( self._ID322 ) )
    {
        self._ID29050 = 0;
        return;
    }

    if ( _func_03D() < self._ID1199 )
    {
        self._ID29050 = 0;
        return;
    }

    if ( _func_02F( self._ID28497 ) && self._ID28497 != self._ID322 )
    {
        self._ID29050 = 0;
        self._ID28497 = undefined;
        return;
    }

    self._ID28497 = self._ID322;

    if ( self _meth_81CA( self._ID322 ) )
    {
        if ( self _meth_81C9() || _func_02F( self._ID36882 ) )
        {
            self._ID29050 = 0;
            return;
        }
    }

    if ( _func_02F( self._ID14235 ) && !self._ID14235 )
    {
        self._ID29050 = 0;
        return;
    }

    if ( !_func_02F( self._ID29051 ) || !self._ID29051 )
    {
        var_0 = _func_119( self._ID322._ID740 - self._ID740 );
        var_1 = _func_11F( self._ID65 );

        if ( _func_0FB( var_0, var_1 ) < 0.5 )
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

    }

    self._ID29050++;
    case 3:
    case 4:
    case 0:
    default:
}

_ID29767( var_0 )
{
    var_1 = var_0;

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    if ( self._ID1063 )
        self _meth_819A( "nogravity", var_1 );
    else
        self _meth_819A( "zonly_physics", var_1 );
}

_ID8331( var_0, var_1 )
{
    self._ID13770 = animscripts\face::_ID28062( var_0, var_1, self._ID13770 );
}

_ID8292()
{
    self._ID13770 = undefined;
    self _meth_814C( %head, 0.2 );
}
