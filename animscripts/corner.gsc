// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID8741( var_0, var_1 )
{
    self endon( "killanimscript" );
    self._ID3155["exposed"]["stand"] = ::_ID32451;
    self._ID3155["exposed"]["crouch"] = ::_ID32253;
    self._ID8893 = self._ID700;
    self._ID8744 = var_0;
    self._ID7._ID8746 = "unknown";
    self._ID7._ID2428 = undefined;
    animscripts\cover_behavior::_ID39234( var_1 );
    _ID32249();
    self._ID20899 = 0;
    self._ID38085 = 0;
    self._ID8742 = 0;
    animscripts\track::_ID32548( 0 );
    self._ID18274 = 0;
    var_2 = spawnstruct();

    if ( !self._ID381 )
        var_2._ID24470 = animscripts\cover_behavior::_ID24470;

    var_2._ID22797 = ::_ID22797;
    var_2._ID868 = ::_ID8747;
    var_2._ID22122 = ::_ID36396;
    var_2._ID599 = ::_ID22627;
    var_2._ID13953 = ::_ID13953;
    var_2._ID19302 = ::_ID19302;
    var_2._ID458 = ::_ID39080;
    var_2._ID17412 = ::_ID39081;
    var_2._ID5294 = ::_ID5294;
    animscripts\cover_behavior::_ID616( var_2 );
}

_ID12614()
{
    self._ID36397 = undefined;
    self._ID7._ID22113 = undefined;
}

_ID32249()
{
    if ( self._ID7._ID28253 == "crouch" )
        _ID32191( "crouch" );
    else if ( self._ID7._ID28253 == "stand" )
        _ID32191( "stand" );
    else
    {
        animscripts\utility::_ID13390( 1 );
        self._ID7._ID28253 = "crouch";
        _ID32191( "crouch" );
    }
}

_ID33931()
{
    if ( isdefined( self._ID47830 ) && self._ID47830 )
        return 0;

    if ( !isdefined( self._ID322 ) )
        return 0;

    if ( !isdefined( self._ID7301 ) )
        self._ID7301 = gettime() + randomintrange( 5000, 20000 );

    if ( gettime() > self._ID7301 )
    {
        self._ID7301 = gettime() + randomintrange( 5000, 20000 );

        if ( isdefined( self._ID28940 ) && self._ID7._ID28253 == "stand" )
            return 0;

        self._ID7._ID28496 = undefined;
        return 1;
    }

    return 0;
}

_ID22797()
{
    var_0 = gettime();
    var_1 = "stand";

    if ( self._ID7._ID28253 == "crouch" )
    {
        var_1 = "crouch";

        if ( isdefined( self._ID3152 ) && self._ID3152 == "s1_soldier" )
        {
            if ( self._ID912 == "cover_right" )
                var_1 = "crouch_r";
            else if ( self._ID912 == "cover_left" )
                var_1 = "crouch_l";
        }

        if ( self._ID8893 doesnodeallowstance( "stand" ) )
        {
            if ( !self._ID8893 doesnodeallowstance( "crouch" ) || _ID33931() )
                var_1 = "stand";
        }
    }
    else if ( self._ID8893 doesnodeallowstance( "crouch" ) )
    {
        if ( !self._ID8893 doesnodeallowstance( "stand" ) || _ID33931() )
        {
            var_1 = "crouch";

            if ( isdefined( self._ID3152 ) && self._ID3152 == "s1_soldier" )
            {
                if ( self._ID912 == "cover_right" )
                    var_1 = "crouch_r";
                else if ( self._ID912 == "cover_left" )
                    var_1 = "crouch_l";
            }
        }
    }

    if ( self._ID18274 )
    {
        if ( isdefined( self._ID3152 ) && self._ID3152 == "s1_soldier" )
        {
            if ( var_1 == "crouch_l" || var_1 == "crouch_r" )
                var_1 = "crouch";
        }

        _ID38691( var_1 );
    }
    else
    {
        var_2 = undefined;

        if ( self._ID7._ID28253 == var_1 )
        {
            var_3 = 0.4;

            if ( isdefined( self._ID217 ) && isdefined( self._ID217._ID18563 ) && self._ID217._ID18563 == "back" )
                var_4 = animscripts\utility::_ID3153( "alert_idle_back" );
            else if ( var_1 == "crouch" && _ID50013( self ) )
            {
                var_4 = animscripts\utility::_ID3153( "AW_to_MW_alert_trans" );
                var_3 = getanimlength( var_4 );
            }
            else if ( var_1 == "stand" && _ID50013( self ) )
            {
                var_4 = animscripts\utility::_ID3153( "exposed_2_alert" );
                var_3 = getanimlength( var_4 );
            }
            else
                var_4 = animscripts\utility::_ID3153( "alert_idle" );

            _ID17028( var_4, 0.3, var_3 );
        }
        else
        {
            if ( isdefined( self._ID3152 ) && self._ID3152 == "s1_soldier" )
            {
                if ( var_1 == "crouch_l" )
                {
                    var_2 = animscripts\utility::_ID22630( "combat", "trans_to_crouch_l" );
                    var_1 = "crouch";
                }
                else if ( var_1 == "crouch_r" )
                {
                    var_2 = animscripts\utility::_ID22630( "combat", "trans_to_crouch_r" );
                    var_1 = "crouch";
                }
            }

            if ( !isdefined( var_2 ) )
                var_2 = animscripts\utility::_ID3153( "stance_change" );

            _ID17028( var_2, 0.3, getanimlength( var_2 ) );
            _ID32191( var_1 );
        }

        self._ID18274 = 1;
    }

    return gettime() - var_0 > 0;
}
#using_animtree("generic_human");

_ID49559()
{
    var_0 = [ %cornercrr_alert_painc, %cornercrr_alert_paina, %cornercrl_painb, %exposed_crouch_pain_headsnap, %exposed_crouch_pain_flinch, %exposed_crouch_pain_chest, %exposed_crouch_pain_left_arm, %exposed_crouch_pain_right_arm, %exposed_stand_2_crouch, %cornercrl_lean_2_alert, %run_2_crouch_f, %run_2_crouch_90l, %run_2_crouch_90r, %run_2_crouch_180l, %run_2_crouch_idle_1, %run_2_crouch_idle_3, %run_2_crouch_idle_7, %run_2_crouch_idle_9, %cornercrr_lean_2_alert, %cornercrl_reloada, %cornercrr_reload, %cornercrl_cqb_trans_in_1, %cornercrl_cqb_trans_in_2, %cornercrl_cqb_trans_in_3, %cornercrl_cqb_trans_in_4, %cornercrl_cqb_trans_in_6, %cornercrl_cqb_trans_in_7, %cornercrl_cqb_trans_in_8, %grenade_return_cornercrl_1knee_throw, %grenade_return_cornercrr_1knee_throw ];

    foreach ( var_2 in var_0 )
    {
        if ( self getanimweight( var_2 ) != 0.0 )
            return 1;
    }

    return 0;
}

_ID50013( var_0 )
{
    if ( !animscripts\utility::_ID49045() )
        return 0;

    var_1 = [ %cornercrl_trans_a_2_alert, %cornercrr_trans_a_2_alert, %cornercrl_trans_b_2_alert, %cornercrr_trans_b_2_alert, %cornercrouchr_crouchidle_2_alert, %cornercrouchl_crouchidle_2_alert, %h1_cornercrr_alert_paina_2, %h1_cornercrr_alert_painb_2, %h1_cornercrr_alert_painc_2, %h1_cornercrl_painb_2, %h1_cornercrl_trans_2_2knees, %h1_cornercrouch_trans_2_2knee, %h1_cornercrr_alert_paina_2, %h1_cornercrr_alert_painb_2, %h1_cornercrr_alert_painc_2, %cornercrr_reloada, %cornercrr_reloadb, %cornercrl_reloadb ];
    var_2 = [ %walk_backward, %walk_left, %walk_right, %walk_forward ];

    foreach ( var_4 in var_1 )
    {
        if ( var_0 getanimweight( var_4 ) != 0.0 )
            return 0;
    }

    if ( var_0 _ID49559() )
        return 1;

    if ( var_0 getanimweight( %exposed_modern ) != 0.0 && var_0 getanimweight( %exposed_aiming ) != 0.0 )
        return 1;

    foreach ( var_7 in var_2 )
    {
        if ( var_0 getanimweight( var_7 ) != 0.0 )
            return 1;
    }

    return 0;
}

_ID28605()
{
    wait 2;

    for (;;)
    {
        _ID28606();
        wait 0.05;
    }
}

_ID6887( var_0, var_1 )
{
    var_2 = var_1 animscripts\utility::_ID16761( var_0 );

    if ( var_2 > 60 || var_2 < -60 )
        return 0;

    if ( animscripts\utility::_ID20830( var_1 ) && var_2 > 14 )
        return 0;

    if ( animscripts\utility::_ID20833( var_1 ) && var_2 < -12 )
        return 0;

    return 1;
}

_ID33811()
{
    if ( !isdefined( self._ID33810 ) )
        return 0;

    var_0 = self._ID8893 animscripts\utility::_ID16761( self._ID33810 );

    if ( self._ID7._ID8746 == "over" )
        return var_0 < self._ID590 || self._ID894 < var_0;

    if ( self._ID8744 == "up" )
        return var_0 < -50 || var_0 > 50;
    else if ( self._ID8744 == "left" )
    {
        if ( self._ID7._ID8746 == "B" )
            return var_0 < 0 - self._ID1719 || var_0 > 14;
        else if ( self._ID7._ID8746 == "A" )
            return var_0 > 0 - self._ID1719;
        else
            return var_0 < -50 || var_0 > 8;
    }
    else if ( self._ID7._ID8746 == "B" )
        return var_0 > self._ID1719 || var_0 < -12;
    else if ( self._ID7._ID8746 == "A" )
        return var_0 < self._ID1719;
    else
        return var_0 > 50 || var_0 < -8;
}

_ID16192( var_0, var_1 )
{
    var_2 = 0;
    var_3 = 0;

    if ( isdefined( var_1 ) )
        var_3 = var_0 animscripts\utility::_ID16761( var_1 );

    var_4 = [];

    if ( isdefined( var_0 ) && self._ID7._ID28253 == "crouch" && ( var_3 > self._ID590 && self._ID894 > var_3 ) )
        var_4 = var_0 getvalidcoverpeekouts();

    if ( self._ID8744 == "up" )
    {
        if ( animscripts\utility::_ID20915() )
        {
            var_5 = 0;

            if ( isdefined( var_1 ) )
            {
                var_6 = anglestoup( self._ID65 );
                var_5 = animscripts\combat_utility::_ID16518( var_1, self geteye() + ( var_6[0] * 12, var_6[1] * 12, var_6[2] * 12 ) );
            }

            if ( _ID6864( var_5, -5, 80 ) )
            {
                var_2 = _ID33953();
                var_4[var_4.size] = "lean";
                var_4[var_4.size] = "lean";
            }

            if ( !var_2 )
                var_4[var_4.size] = "A";
        }
        else
            var_4[var_4.size] = "A";
    }
    else if ( self._ID8744 == "left" )
    {
        if ( _ID6864( var_3, -40, 0 ) )
        {
            var_2 = _ID33953();

            if ( var_2 )
                var_4[var_4.size] = "lean";
        }

        if ( !var_2 && var_3 < 14 )
        {
            if ( var_3 < 0 - self._ID1719 )
                var_4[var_4.size] = "A";
            else
                var_4[var_4.size] = "B";
        }
    }
    else
    {
        if ( _ID6864( var_3, 0, 40 ) )
        {
            var_2 = _ID33953();

            if ( var_2 )
                var_4[var_4.size] = "lean";
        }

        if ( !var_2 && var_3 > -12 )
        {
            if ( var_3 > self._ID1719 )
                var_4[var_4.size] = "A";
            else
                var_4[var_4.size] = "B";
        }
    }

    return animscripts\combat_utility::_ID16551( var_4 );
}

_ID16155()
{
    var_0 = 0;

    if ( animscripts\utility::_ID6898() )
        var_0 = self._ID8893 animscripts\utility::_ID16761( animscripts\utility::_ID16257() );
    else if ( self._ID302 && isdefined( self._ID33810 ) )
        var_0 = self._ID8893 animscripts\utility::_ID16761( self._ID33810 );

    if ( self._ID7._ID8746 == "lean" )
        return "lean";

    if ( self._ID7._ID8746 == "over" )
        return "over";
    else if ( self._ID7._ID8746 == "B" )
    {
        if ( self._ID8744 == "left" )
        {
            if ( var_0 < 0 - self._ID1719 )
                return "A";
        }
        else if ( self._ID8744 == "right" )
        {
            if ( var_0 > self._ID1719 )
                return "A";
        }

        return "B";
    }
    else if ( self._ID7._ID8746 == "A" )
    {
        if ( self._ID8744 == "up" )
            return "A";
        else if ( self._ID8744 == "left" )
        {
            if ( var_0 > 0 - self._ID1719 )
                return "B";
        }
        else if ( self._ID8744 == "right" )
        {
            if ( var_0 < self._ID1719 )
                return "B";
        }

        return "A";
    }
}

_ID7302()
{
    self endon( "killanimscript" );
    var_0 = _ID16155();

    if ( var_0 == self._ID7._ID8746 )
        return 0;

    self._ID7305 = 1;
    self notify( "done_changing_cover_pos" );
    var_1 = self._ID7._ID8746 + "_to_" + var_0;
    var_2 = animscripts\utility::_ID3156( var_1 );

    if ( animscripts\utility::_ID20915() && ( var_1 == "A_to_B" || var_1 == "B_to_A" ) )
        return 0;

    var_3 = !self._ID1063;
    var_4 = _ID16538();

    if ( !self maymovetopoint( var_4, var_3 ) )
        return 0;

    if ( !self maymovefrompointtopoint( var_4, animscripts\utility::_ID16127( var_2 ), var_3 ) )
        return 0;

    animscripts\combat_utility::_ID12633();
    _ID36576( 0.3 );
    var_5 = self._ID7._ID28253;
    self setanimlimited( animscripts\utility::_ID3153( "straight_level" ), 0, 0.2 );
    self setflaggedanimknob( "changeStepOutPos", var_2, 1, 0.2, 1.2 );
    _ID8740( var_2 );
    thread _ID11542( "changeStepOutPos" );
    var_6 = animhasnotetrack( var_2, "start_aim" );

    if ( var_6 )
        self waittillmatch( "changeStepOutPos",  "start_aim"  );
    else
        self waittillmatch( "changeStepOutPos",  "end"  );

    thread _ID36095( undefined, 0, 0.3 );

    if ( var_6 )
        self waittillmatch( "changeStepOutPos",  "end"  );

    self clearanim( var_2, 0.1 );
    self._ID7._ID8746 = var_0;
    self._ID7305 = 0;
    self._ID8895 = gettime();

    if ( self._ID7._ID28253 != var_5 )
        _ID32191( self._ID7._ID28253 );

    thread _ID7296( undefined, 1, 0.3 );
    return 1;
}

_ID6864( var_0, var_1, var_2 )
{
    if ( self._ID7._ID24729 )
        return 0;

    return var_1 <= var_0 && var_0 <= var_2;
}

_ID33953()
{
    if ( !animscripts\utility::_ID49045() && self._ID7._ID28253 != "stand" )
        return 0;

    if ( self._ID1194 == "allies" )
        return 1;

    if ( animscripts\utility::_ID20849() )
        return 1;

    return 0;
}

_ID11542( var_0 )
{
    self endon( "killanimscript" );
    animscripts\shared::_ID11529( var_0 );
}

_ID36095( var_0, var_1, var_2 )
{
    self._ID8742 = 1;

    if ( self._ID7._ID8746 == "lean" )
        self._ID7._ID22113 = 1;
    else
        self._ID7._ID22113 = undefined;

    _ID32539( var_0, var_1, var_2 );
}

_ID7296( var_0, var_1, var_2 )
{
    if ( self._ID7._ID8746 == "lean" )
        self._ID7._ID22113 = 1;
    else
        self._ID7._ID22113 = undefined;

    _ID32539( var_0, var_1, var_2 );
}

_ID36576( var_0 )
{
    self._ID8742 = 0;
    self clearanim( %add_fire, var_0 );
    animscripts\track::_ID32548( 0, var_0 );
    self._ID13770 = undefined;
    self clearanim( %head, 0.2 );
}

_ID32539( var_0, var_1, var_2 )
{
    self._ID35456 = var_0;
    self setanimlimited( %exposed_modern, 1, var_2 );
    self setanimlimited( %exposed_aiming, 1, var_2 );
    self setanimlimited( %add_idle, 1, var_2 );
    animscripts\track::_ID32548( 1, var_2 );
    _ID8739( undefined );
    var_3 = undefined;

    if ( isdefined( self._ID7._ID3291["lean_aim_straight"] ) )
        var_3 = self._ID7._ID3291["lean_aim_straight"];

    thread animscripts\combat_utility::_ID2428();

    if ( isdefined( self._ID7._ID22113 ) )
    {
        self setanimlimited( var_3, 1, var_2 );
        self setanimlimited( animscripts\utility::_ID3153( "straight_level" ), 0, 0 );
        self setanimknoblimited( animscripts\utility::_ID3153( "lean_aim_left" ), 1, var_2 );
        self setanimknoblimited( animscripts\utility::_ID3153( "lean_aim_right" ), 1, var_2 );
        self setanimknoblimited( animscripts\utility::_ID3153( "lean_aim_up" ), 1, var_2 );
        self setanimknoblimited( animscripts\utility::_ID3153( "lean_aim_down" ), 1, var_2 );
    }
    else if ( var_1 )
    {
        self setanimlimited( animscripts\utility::_ID3153( "straight_level" ), 1, var_2 );

        if ( isdefined( var_3 ) )
            self setanimlimited( var_3, 0, 0 );

        self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_up" ), 1, var_2 );
        self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_down" ), 1, var_2 );
        self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_left" ), 1, var_2 );
        self setanimknoblimited( animscripts\utility::_ID3153( "add_aim_right" ), 1, var_2 );
    }
    else
    {
        self setanimlimited( animscripts\utility::_ID3153( "straight_level" ), 0, var_2 );

        if ( isdefined( var_3 ) )
            self setanimlimited( var_3, 0, 0 );

        self setanimknoblimited( animscripts\utility::_ID3153( "add_turn_aim_up" ), 1, var_2 );
        self setanimknoblimited( animscripts\utility::_ID3153( "add_turn_aim_down" ), 1, var_2 );
        self setanimknoblimited( animscripts\utility::_ID3153( "add_turn_aim_left" ), 1, var_2 );
        self setanimknoblimited( animscripts\utility::_ID3153( "add_turn_aim_right" ), 1, var_2 );
    }
}

_ID36395()
{
    if ( self._ID7._ID8746 == "over" )
        return 1;

    return animscripts\combat_utility::_ID28962();
}

_ID36394()
{
    self._ID7._ID8746 = "alert";

    if ( isdefined( self._ID48028 ) && self._ID48028 )
        return 0;

    if ( self._ID452 < 64 )
        self._ID452 = 64;

    _ID32587();

    if ( self._ID7._ID28253 == "stand" )
        self._ID1719 = 38;
    else
        self._ID1719 = 31;

    var_0 = self._ID7._ID28253;
    _ID32191( var_0 );
    animscripts\combat::_ID32267();
    var_1 = "none";

    if ( animscripts\utility::_ID18223() )
        var_1 = _ID16192( self._ID8893, animscripts\utility::_ID16257() );
    else
        var_1 = _ID16192( self._ID8893 );

    if ( !isdefined( var_1 ) )
        return 0;

    var_2 = "alert_to_" + var_1;

    if ( !animscripts\utility::_ID3154( var_2 ) )
        return 0;

    var_3 = animscripts\utility::_ID3156( var_2 );

    if ( var_1 == "lean" && !_ID20852() )
        return 0;

    if ( var_1 != "over" && !_ID20850( var_3, var_1 != "lean" ) )
        return 0;

    self._ID7._ID8746 = var_1;
    self._ID7._ID28496 = var_1;

    if ( self._ID7._ID8746 == "lean" )
        animscripts\combat::_ID32267( self._ID8893 );

    if ( var_1 == "A" || var_1 == "B" )
        self._ID7._ID35357 = "cover_" + self._ID8744 + "_" + self._ID7._ID28253 + "_" + var_1;
    else if ( var_1 == "over" )
        self._ID7._ID35357 = "cover_crouch_aim";
    else
        self._ID7._ID35357 = "none";

    self._ID562 = 1;
    var_4 = 0;
    self._ID7305 = 1;
    self notify( "done_changing_cover_pos" );
    var_5 = _ID36395();
    self._ID846 = 0;
    self clearanim( %corner, 0.1 );
    self setflaggedanimknoballrestart( "stepout", var_3, %animscript_root, 1, 0.2, var_5 );
    _ID8740( var_3 );
    thread _ID11542( "stepout" );
    var_4 = animhasnotetrack( var_3, "start_aim" );

    if ( var_4 )
    {
        self._ID36397 = self._ID65[1] + getmovedelta( var_3, 0, 1 );
        self waittillmatch( "stepout",  "start_aim"  );
    }
    else
        self waittillmatch( "stepout",  "end"  );

    if ( var_1 == "B" && _ID42237::_ID8201() && self._ID8744 == "right" )
        self._ID7._ID35357 = "corner_right_martyrdom";

    _ID32192( var_0 );
    var_6 = var_1 == "over" || animscripts\utility::_ID20915();
    _ID36095( undefined, var_6, 0.3 );
    thread animscripts\track::_ID38165();

    if ( var_4 )
    {
        self waittillmatch( "stepout",  "end"  );
        self._ID36397 = undefined;
    }

    _ID7296( undefined, 1, 0.2 );
    self clearanim( %cover, 0.1 );
    self._ID7305 = 0;
    self._ID8895 = gettime();
    self._ID846 = 1;
    return 1;
}

_ID36396()
{
    self._ID562 = 1;

    if ( isdefined( self._ID28940 ) && randomfloat( 1 ) < self._ID28940 )
    {
        if ( _ID28935() )
            return 1;
    }

    if ( !_ID36394() )
        return 0;

    _ID33773();

    if ( isdefined( self._ID33810 ) )
    {
        var_0 = lengthsquared( self._ID740 - self._ID33810 );

        if ( animscripts\utility::_ID39993() && animscripts\utility::_ID33944( var_0 ) )
        {
            if ( self._ID7._ID28253 == "stand" )
                animscripts\shared::_ID37693( animscripts\utility::_ID22630( "combat", "drop_rpg_stand" ) );
            else
                animscripts\shared::_ID37693( animscripts\utility::_ID22630( "combat", "drop_rpg_crouch" ) );

            thread _ID30412();
            return;
        }
    }

    _ID29924();
    self._ID562 = 0;
    return 1;
}

_ID18276( var_0 )
{
    if ( !isdefined( self._ID21972 ) )
        return 1;

    return gettime() - self._ID21972 > var_0 * 1000;
}

_ID28935()
{
    if ( !animscripts\utility::_ID18223() )
        return 0;

    var_0 = 0;
    var_1 = 90;
    var_2 = self._ID8893 animscripts\utility::_ID16761( animscripts\utility::_ID16257() );

    if ( self._ID8744 == "left" )
        var_2 = 0 - var_2;

    if ( var_2 > 30 )
    {
        var_1 = 45;

        if ( self._ID8744 == "left" )
            var_0 = 45;
        else
            var_0 = -45;
    }

    var_3 = "rambo" + var_1;

    if ( !animscripts\utility::_ID3154( var_3 ) )
        return 0;

    var_4 = animscripts\utility::_ID3156( var_3 );
    var_5 = _ID16538( 48 );

    if ( !self maymovetopoint( var_5, !self._ID1063 ) )
        return 0;

    self._ID8895 = gettime();
    _ID32587();
    self._ID562 = 1;
    self._ID20874 = 1;
    self._ID7._ID28496 = "rambo";
    self._ID7305 = 1;
    thread animscripts\shared::_ID28937( var_0 );
    self setflaggedanimknoballrestart( "rambo", var_4, %body, 1, 0, 1 );
    _ID8740( var_4 );
    animscripts\shared::_ID11529( "rambo" );
    self notify( "rambo_aim_end" );
    self._ID7305 = 0;
    self._ID562 = 0;
    self._ID21972 = gettime();
    self._ID7305 = 0;
    self._ID20874 = undefined;
    return 1;
}

_ID33773()
{
    _ID42298::_ID10832();

    for (;;)
    {
        for (;;)
        {
            if ( isdefined( self._ID33962 ) )
                break;

            if ( !isdefined( self._ID33810 ) )
            {
                self waittill( "do_slow_things" );
                waitframe;

                if ( isdefined( self._ID33810 ) )
                    continue;

                break;
            }

            if ( !self._ID6323 )
                break;

            if ( _ID33811() )
            {
                if ( !_ID7302() )
                {
                    if ( _ID16155() == self._ID7._ID8746 )
                        break;

                    _ID33821( 0.2 );
                    continue;
                }

                if ( _ID33811() )
                    break;

                continue;
            }

            _ID33819( 1 );
            self clearanim( %add_fire, 0.2 );
        }

        if ( _ID6878( self._ID7._ID8746 != "lean" ) )
            break;

        if ( _ID33811() && _ID7302() )
            continue;

        _ID33821( 0.2 );
    }
}

_ID33821( var_0 )
{
    thread _ID25145( var_0 );
    var_1 = gettime();
    _ID33819( 0 );
    self notify( "stopNotifyStopShootingAfterTime" );
    var_2 = ( gettime() - var_1 ) / 1000;

    if ( var_2 < var_0 )
        wait(var_0 - var_2);
}

_ID25145( var_0 )
{
    self endon( "killanimscript" );
    self endon( "stopNotifyStopShootingAfterTime" );
    wait(var_0);
    self notify( "stopShooting" );
}

_ID33819( var_0 )
{
    self endon( "return_to_cover" );

    if ( var_0 )
        thread _ID2972();

    thread animscripts\combat_utility::_ID2428();
    animscripts\combat_utility::_ID33818();
}

_ID2972()
{
    self endon( "killanimscript" );
    self notify( "newAngleRangeCheck" );
    self endon( "newAngleRangeCheck" );
    self endon( "take_cover_at_corner" );

    for (;;)
    {
        if ( _ID33811() )
            break;

        wait 0.1;
    }

    self notify( "stopShooting" );
}

_ID34097()
{
    self._ID322 endon( "death" );
    self endon( "enemy" );
    self endon( "stopshowstate" );

    for (;;)
        wait 0.05;
}

_ID6878( var_0 )
{
    var_1 = !self._ID1063;

    if ( var_0 )
    {
        var_2 = _ID16538();

        if ( !self maymovetopoint( var_2, var_1 ) )
            return 0;

        return self maymovefrompointtopoint( var_2, self._ID8893._ID740, var_1 );
    }
    else
        return self maymovetopoint( self._ID8893._ID740, var_1 );
}

_ID29924()
{
    animscripts\combat_utility::_ID12641();
    var_0 = animscripts\utility::_ID20934();
    self notify( "take_cover_at_corner" );
    self._ID7305 = 1;
    self notify( "done_changing_cover_pos" );
    var_1 = self._ID7._ID8746 + "_to_alert";
    var_2 = animscripts\utility::_ID3156( var_1 );
    _ID36576( 0.3 );
    var_3 = 0;

    if ( self._ID7._ID8746 != "lean" && var_0 && animscripts\utility::_ID3154( var_1 + "_reload" ) && randomfloat( 100 ) < 75 )
    {
        var_2 = animscripts\utility::_ID3156( var_1 + "_reload" );
        var_3 = 1;
    }

    var_4 = _ID36395();

    if ( animscripts\utility::_ID20915() )
        self clearanim( %exposed_modern, 0.2 );
    else
        self clearanim( %body, 0.1 );

    self setflaggedanimrestart( "hide", var_2, 1, 0.1, var_4 );
    _ID8740( var_2 );
    animscripts\shared::_ID11529( "hide" );

    if ( var_3 )
        animscripts\weaponlist::_ID29364();

    self._ID7305 = 0;

    if ( self._ID8744 == "up" )
        self._ID7._ID35357 = "cover_up";
    else if ( self._ID8744 == "left" )
        self._ID7._ID35357 = "cover_left";
    else
        self._ID7._ID35357 = "cover_right";

    self._ID562 = 0;
    self clearanim( var_2, 0.2 );
}

_ID5294()
{
    if ( !animscripts\utility::_ID3154( "blind_fire" ) )
        return 0;

    _ID45407();
    self._ID54064 = 1;

    if ( !isdefined( self._ID18169 ) )
    {
        self._ID7._ID21758 = 1;
        animscripts\shared::_ID39728();
    }

    _ID32587();
    self._ID562 = 1;
    var_0 = "blind_fire";

    if ( isdefined( self._ID700._ID53049 ) )
    {
        var_1 = animscripts\utility::_ID50392( self._ID700._ID53049 );

        if ( isdefined( var_1 ) )
            var_2 = animscripts\utility::_ID44378( var_0, var_1 );
        else
            var_2 = animscripts\utility::_ID3156( var_0 );
    }
    else
        var_2 = animscripts\utility::_ID3156( var_0 );

    self setflaggedanimknoballrestart( "blindfire", var_2, %body, 1, 0, 1 );
    _ID8740( var_2 );
    animscripts\shared::_ID11529( "blindfire" );
    self._ID562 = 0;
    self._ID54064 = 0;
    self._ID7._ID21758 = 0;
    animscripts\shared::_ID39728();
    return 1;
}

_ID22393( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = ( 1, 1, 1 );

    for ( var_3 = 0; var_3 < 100; var_3++ )
        wait 0.05;
}

_ID39081( var_0 )
{
    if ( self._ID7._ID28253 == "crouch" && _ID50013( self ) )
        return 0;

    return _ID39080( var_0, 1 );
}

_ID39080( var_0, var_1 )
{
    if ( !self maymovetopoint( _ID16538() ) )
        return 0;

    if ( isdefined( self._ID11575 ) || isdefined( var_0._ID11566 ) )
        return 0;

    if ( self._ID7._ID28253 == "crouch" && _ID50013( self ) )
        return 0;

    var_2 = undefined;

    if ( isdefined( self._ID28940 ) && randomfloat( 1 ) < self._ID28940 )
    {
        if ( isdefined( self._ID7._ID3291["grenade_rambo"] ) )
            var_2 = animscripts\utility::_ID3153( "grenade_rambo" );
    }

    if ( !isdefined( var_2 ) )
    {
        if ( isdefined( var_1 ) && var_1 )
        {
            if ( !isdefined( self._ID7._ID3291["grenade_safe"] ) )
                return 0;

            var_2 = animscripts\utility::_ID3153( "grenade_safe" );
        }
        else
        {
            if ( !isdefined( self._ID7._ID3291["grenade_exposed"] ) )
                return 0;

            var_2 = animscripts\utility::_ID3153( "grenade_exposed" );
        }
    }

    _ID32587();
    self._ID562 = 1;
    var_3 = animscripts\combat_utility::_ID39072( var_0, var_2 );
    self._ID562 = 0;
    return var_3;
}

_ID28606()
{

}

_ID22627( var_0 )
{
    if ( !isdefined( self._ID7._ID3291["alert_to_look"] ) )
        return 0;

    _ID32587();
    self._ID562 = 1;

    if ( !_ID26556() )
        return 0;

    _ID45407();
    animscripts\shared::_ID28100( animscripts\utility::_ID3153( "look_idle" ), var_0, ::_ID6897 );
    var_1 = undefined;

    if ( animscripts\utility::_ID20934() )
        var_1 = animscripts\utility::_ID3153( "look_to_alert_fast" );
    else
        var_1 = animscripts\utility::_ID3153( "look_to_alert" );

    self setflaggedanimknoballrestart( "looking_end", var_1, %body, 1, 0.1, 1.0 );
    _ID8740( var_1 );
    animscripts\shared::_ID11529( "looking_end" );
    _ID32587();
    self._ID562 = 0;
    return 1;
}

_ID20852()
{
    var_0 = self._ID8893._ID65;

    if ( animscripts\utility::_ID20915() )
        var_0 = animscripts\utility::_ID16702( self._ID8893 );

    var_1 = self geteye();
    var_2 = anglestoright( var_0 );
    var_3 = anglestoup( var_0 );

    if ( self._ID8744 == "right" )
        var_1 += var_2 * 30;
    else if ( self._ID8744 == "left" )
        var_1 -= var_2 * 30;
    else
        var_1 += var_3 * 30;

    if ( self._ID1194 == "allies" && level._ID794 _ID42407::_ID20652() )
    {
        if ( _ID42407::_ID27540( var_1, 0.95, undefined, level._ID794 ) )
            return 0;
    }

    var_4 = var_1 + anglestoforward( var_0 ) * 30;
    return sighttracepassed( var_1, var_4, 1, self );
}

_ID26556()
{
    if ( isdefined( self._ID8893._ID31148 ) )
        return 0;

    if ( isdefined( self._ID24796 ) && gettime() < self._ID24796 )
        return 0;

    if ( !_ID20852() )
    {
        self._ID24796 = gettime() + 3000;
        return 0;
    }

    var_0 = animscripts\utility::_ID3153( "alert_to_look" );
    self setflaggedanimknoball( "looking_start", var_0, %body, 1, 0.2, 1 );
    _ID8740( var_0 );
    animscripts\shared::_ID11529( "looking_start" );
    return 1;
}

_ID6897()
{
    return self maymovetopoint( self._ID8893._ID740, !self._ID1063 );
}

_ID13953()
{
    return 0;
}

_ID8747()
{
    if ( self._ID7._ID28253 == "crouch" && _ID50013( self ) )
    {
        animscripts\weaponlist::_ID29364();
        return 0;
    }

    var_0 = "reload";
    var_1 = animscripts\animset::has_special_reload( self._ID1302 );

    if ( isdefined( var_1 ) )
        var_0 = "reload_" + var_1;

    if ( animscripts\utility::_ID20902( self._ID1302 ) && animscripts\utility::_ID3154( "shotgun_reload" ) )
        var_0 = "shotgun_reload";

    var_2 = animscripts\utility::_ID3156( var_0 );
    var_3 = animscripts\combat_utility::_ID44708();
    self setflaggedanimknobrestart( "cornerReload", var_2, 1, 0.2, var_3 );
    _ID8740( var_2 );
    animscripts\shared::_ID11529( "cornerReload" );
    self notify( "abort_reload" );
    animscripts\weaponlist::_ID29364();
    self setanimrestart( animscripts\utility::_ID3153( "alert_idle" ), 1, 0.2 );
    self clearanim( var_2, 0.2 );
    return 1;
}

_ID20850( var_0, var_1 )
{
    var_2 = !self._ID1063;

    if ( var_1 )
    {
        var_3 = _ID16538();

        if ( !self maymovetopoint( var_3, var_2 ) )
            return 0;

        if ( self._ID1063 )
            return 1;

        return self maymovefrompointtopoint( var_3, animscripts\utility::_ID16127( var_0 ), var_2 );
    }
    else
    {
        if ( self._ID1063 )
            return 1;

        return self maymovetopoint( animscripts\utility::_ID16127( var_0 ), var_2 );
    }
}

_ID16538( var_0 )
{
    var_1 = self._ID8893._ID65;
    var_2 = anglestoright( var_1 );

    if ( !isdefined( var_0 ) )
        var_0 = 36;

    var_3 = self._ID912;

    if ( var_3 == "cover_multi" )
    {
        if ( self._ID217._ID36185 == "right" )
            var_3 = "cover_right";
        else if ( self._ID217._ID36185 == "left" )
            var_3 = "cover_left";
    }

    if ( var_3 == "cover_swim_up" )
    {
        var_4 = anglestoup( var_1 );
        return self._ID8893._ID740 + var_4 * var_0;
    }

    switch ( var_3 )
    {
        case "cover_left":
        case "cover_swim_left":
            var_2 *= ( 0 - var_0 );
            break;
        case "cover_right":
        case "cover_swim_right":
            var_2 *= var_0;
            break;
    }

    endswitch( 5 )  case "cover_swim_right" loc_1D38 case "cover_swim_left" loc_1D2C case "cover_right" loc_1D38 case "cover_left" loc_1D2C default loc_1D42
    return self._ID8893._ID740 + ( var_2[0], var_2[1], 0 );
}

_ID45407()
{
    if ( self._ID7._ID28253 == "crouch" && _ID50013( self ) )
    {
        var_0 = animscripts\utility::_ID3153( "1knee_2_2knees" );
        var_1 = getanimlength( var_0 );
        _ID17028( var_0, 0.3, var_1 );
    }
}

_ID19302()
{
    self endon( "end_idle" );
    var_0 = 0;

    for (;;)
    {
        _ID45407();
        var_1 = _ID42237::_ID37527( animscripts\utility::_ID48937(), "alert_idle_twitch", "alert_idle_twitch_noHat" );

        if ( isdefined( self.nocornertwitchanim ) && self.nocornertwitchanim || var_0 > gettime() )
            var_2 = 0;
        else
            var_2 = randomint( 2 ) == 0 && isdefined( self._ID7._ID3291[var_1] ) && animscripts\utility::_ID3154( var_1 );

        if ( var_2 )
        {
            if ( isdefined( self.minimumcorneridletimebeforetwitch ) )
                var_0 = gettime() + self.minimumcorneridletimebeforetwitch;

            var_3 = animscripts\utility::_ID3156( var_1 );
        }
        else
            var_3 = animscripts\utility::_ID3153( "alert_idle" );

        _ID28079( var_3, var_2 );
    }
}

_ID14562()
{
    if ( !animscripts\utility::_ID3154( "alert_idle_flinch" ) )
        return 0;

    _ID28079( animscripts\utility::_ID3156( "alert_idle_flinch" ), 1 );
    return 1;
}

_ID28079( var_0, var_1 )
{
    if ( var_1 )
        self setflaggedanimknoballrestart( "idle", var_0, %body, 1, 0.1, 1 );
    else
        self setflaggedanimknoball( "idle", var_0, %body, 1, 0.1, 1 );

    _ID8740( var_0 );
    animscripts\shared::_ID11529( "idle" );
}

_ID32191( var_0 )
{
    [[ self._ID3155["hiding"][var_0] ]]();
    [[ self._ID3155["exposed"][var_0] ]]();
}

_ID32192( var_0 )
{
    [[ self._ID3155["exposed"][var_0] ]]();
}

_ID38691( var_0 )
{
    if ( self._ID7._ID28253 == var_0 )
    {
        _ID32191( var_0 );
        return;
    }

    var_1 = animscripts\utility::_ID3153( "stance_change" );
    self setflaggedanimknoballrestart( "changeStance", var_1, %body );
    _ID8740( var_1 );
    _ID32191( var_0 );
    animscripts\shared::_ID11529( "changeStance" );
    wait 0.2;
}

_ID17028( var_0, var_1, var_2 )
{
    var_3 = animscripts\utility::_ID16459();
    var_4 = animscripts\utility::_ID16178();
    var_5 = var_3 + self._ID18567;

    if ( animscripts\utility::_ID20915() )
        self notify( "force_space_rotation_update",  0, 0  );
    else
        self orientmode( "face angle", var_5 );

    self animmode( "normal" );

    if ( isdefined( var_4 ) )
        thread animscripts\shared::_ID24471( var_4, var_1 );

    self setflaggedanimknoballrestart( "coveranim", var_0, %body, 1, var_1 );
    _ID8740( var_0 );
    animscripts\notetracks::_ID11534( var_2, "coveranim" );

    while ( animscripts\utility::_ID1735( self._ID65[1] - var_5 ) > 1 )
    {
        animscripts\notetracks::_ID11534( 0.1, "coveranim" );
        var_3 = animscripts\utility::_ID16459();
        var_5 = var_3 + self._ID18567;
    }

    _ID32587();

    if ( self._ID8744 == "left" )
        self._ID7._ID35357 = "cover_left";
    else if ( self._ID8744 == "right" )
        self._ID7._ID35357 = "cover_right";
    else
        self._ID7._ID35357 = "cover_up";
}

_ID11744()
{
    self endon( "killanimscript" );

    for (;;)
        wait 0.05;
}

_ID32451()
{
    if ( self._ID1063 && isdefined( self._ID700 ) )
    {
        _ID32463();
        return;
    }

    if ( !isdefined( self._ID7._ID3291 ) )
    {

    }

    var_0 = animscripts\utility::_ID22631( "default_stand" );
    self._ID7._ID3291["add_aim_up"] = var_0["add_aim_up"];
    self._ID7._ID3291["add_aim_down"] = var_0["add_aim_down"];
    self._ID7._ID3291["add_aim_left"] = var_0["add_aim_left"];
    self._ID7._ID3291["add_aim_right"] = var_0["add_aim_right"];
    self._ID7._ID3291["add_turn_aim_up"] = var_0["add_turn_aim_up"];
    self._ID7._ID3291["add_turn_aim_down"] = var_0["add_turn_aim_down"];
    self._ID7._ID3291["add_turn_aim_left"] = var_0["add_turn_aim_left"];
    self._ID7._ID3291["add_turn_aim_right"] = var_0["add_turn_aim_right"];
    self._ID7._ID3291["straight_level"] = var_0["straight_level"];

    if ( self._ID7._ID8746 == "lean" )
    {
        var_1 = self._ID7._ID3291["lean_fire"];
        var_2 = self._ID7._ID3291["lean_single"];
        self._ID7._ID3291["fire"] = var_1;
        self._ID7._ID3291["single"] = animscripts\utility::_ID3291( var_2 );
        self._ID7._ID3291["semi2"] = var_2;
        self._ID7._ID3291["semi3"] = var_2;
        self._ID7._ID3291["semi4"] = var_2;
        self._ID7._ID3291["semi5"] = var_2;
        self._ID7._ID3291["burst2"] = var_1;
        self._ID7._ID3291["burst3"] = var_1;
        self._ID7._ID3291["burst4"] = var_1;
        self._ID7._ID3291["burst5"] = var_1;
        self._ID7._ID3291["burst6"] = var_1;
    }
    else
    {
        self._ID7._ID3291["fire"] = var_0["fire_corner"];
        self._ID7._ID3291["semi2"] = var_0["semi2"];
        self._ID7._ID3291["semi3"] = var_0["semi3"];
        self._ID7._ID3291["semi4"] = var_0["semi4"];
        self._ID7._ID3291["semi5"] = var_0["semi5"];

        if ( animscripts\utility::_ID41682() )
            self._ID7._ID3291["single"] = animscripts\utility::_ID22630( "shotgun_stand", "single" );
        else
            self._ID7._ID3291["single"] = var_0["single"];

        self._ID7._ID3291["burst2"] = var_0["burst2"];
        self._ID7._ID3291["burst3"] = var_0["burst3"];
        self._ID7._ID3291["burst4"] = var_0["burst4"];
        self._ID7._ID3291["burst5"] = var_0["burst5"];
        self._ID7._ID3291["burst6"] = var_0["burst6"];
    }

    self._ID7._ID3291["exposed_idle"] = var_0["exposed_idle"];
}

_ID32253()
{
    if ( self._ID1063 && isdefined( self._ID700 ) )
    {
        _ID32463();
        return;
    }

    if ( !isdefined( self._ID7._ID3291 ) )
    {

    }

    var_0 = animscripts\utility::_ID22631( "default_crouch" );
    var_1["add_aim_up"] = animscripts\utility::_ID22630( "cover_crouch", "add_aim_up" );
    var_2["add_aim_up"] = animscripts\utility::_ID22630( "cover_crouch", "add_aim_up" );
    var_3[0] = animscripts\utility::_ID22630( "cover_crouch", "add_aim_up" );

    if ( self._ID7._ID8746 == "over" )
    {
        self._ID7._ID3291["add_aim_up"] = animscripts\utility::_ID22630( "cover_crouch", "add_aim_up" );
        self._ID7._ID3291["add_aim_down"] = animscripts\utility::_ID22630( "cover_crouch", "add_aim_down" );
        self._ID7._ID3291["add_aim_left"] = animscripts\utility::_ID22630( "cover_crouch", "add_aim_left" );
        self._ID7._ID3291["add_aim_right"] = animscripts\utility::_ID22630( "cover_crouch", "add_aim_right" );
        self._ID7._ID3291["straight_level"] = animscripts\utility::_ID22630( "cover_crouch", "straight_level" );
        self._ID7._ID3291["exposed_idle"] = animscripts\utility::_ID22630( "default_stand", "exposed_idle" );
        return;
    }

    if ( self._ID7._ID8746 == "lean" )
    {
        var_4 = self._ID7._ID3291["lean_fire"];
        var_5 = self._ID7._ID3291["lean_single"];
        self._ID7._ID3291["fire"] = var_4;
        self._ID7._ID3291["single"] = animscripts\utility::_ID3291( var_5 );
        self._ID7._ID3291["semi2"] = var_5;
        self._ID7._ID3291["semi3"] = var_5;
        self._ID7._ID3291["semi4"] = var_5;
        self._ID7._ID3291["semi5"] = var_5;
        self._ID7._ID3291["burst2"] = var_4;
        self._ID7._ID3291["burst3"] = var_4;
        self._ID7._ID3291["burst4"] = var_4;
        self._ID7._ID3291["burst5"] = var_4;
        self._ID7._ID3291["burst6"] = var_4;
    }
    else
    {
        self._ID7._ID3291["fire"] = var_0["fire"];
        self._ID7._ID3291["semi2"] = var_0["semi2"];
        self._ID7._ID3291["semi3"] = var_0["semi3"];
        self._ID7._ID3291["semi4"] = var_0["semi4"];
        self._ID7._ID3291["semi5"] = var_0["semi5"];

        if ( animscripts\utility::_ID41682() )
            self._ID7._ID3291["single"] = animscripts\utility::_ID22630( "shotgun_crouch", "single" );
        else
            self._ID7._ID3291["single"] = var_0["single"];

        self._ID7._ID3291["burst2"] = var_0["burst2"];
        self._ID7._ID3291["burst3"] = var_0["burst3"];
        self._ID7._ID3291["burst4"] = var_0["burst4"];
        self._ID7._ID3291["burst5"] = var_0["burst5"];
        self._ID7._ID3291["burst6"] = var_0["burst6"];
    }

    self._ID7._ID3291["add_aim_up"] = var_0["add_aim_up"];
    self._ID7._ID3291["add_aim_down"] = var_0["add_aim_down"];
    self._ID7._ID3291["add_aim_left"] = var_0["add_aim_left"];
    self._ID7._ID3291["add_aim_right"] = var_0["add_aim_right"];
    self._ID7._ID3291["add_turn_aim_up"] = var_0["add_turn_aim_up"];
    self._ID7._ID3291["add_turn_aim_down"] = var_0["add_turn_aim_down"];
    self._ID7._ID3291["add_turn_aim_left"] = var_0["add_turn_aim_left"];
    self._ID7._ID3291["add_turn_aim_right"] = var_0["add_turn_aim_right"];
    self._ID7._ID3291["straight_level"] = var_0["straight_level"];
    self._ID7._ID3291["exposed_idle"] = var_0["exposed_idle"];
}

_ID32463()
{
    if ( !isdefined( self._ID7._ID3291 ) )
    {

    }

    var_0 = [];

    if ( self._ID3263 == "cover_corner_r" )
        var_0 = animscripts\swim::_ID16643( "cover_corner_r" );
    else if ( self._ID3263 == "cover_corner_l" )
        var_0 = animscripts\swim::_ID16643( "cover_corner_l" );
    else if ( self._ID3263 == "cover_u" )
        var_0 = animscripts\swim::_ID16643( "cover_u" );
    else if ( self._ID3263 == "exposed" )
        var_0 = animscripts\swim::_ID16643( "exposed" );
    else
    {

    }

    self._ID7._ID3291["add_aim_up"] = var_0["add_aim_up"];
    self._ID7._ID3291["add_aim_down"] = var_0["add_aim_down"];
    self._ID7._ID3291["add_aim_left"] = var_0["add_aim_left"];
    self._ID7._ID3291["add_aim_right"] = var_0["add_aim_right"];
    self._ID7._ID3291["add_turn_aim_up"] = var_0["add_aim_up"];
    self._ID7._ID3291["add_turn_aim_down"] = var_0["add_aim_down"];
    self._ID7._ID3291["add_turn_aim_left"] = var_0["add_aim_left"];
    self._ID7._ID3291["add_turn_aim_right"] = var_0["add_aim_right"];
    self._ID7._ID3291["straight_level"] = var_0["straight_level"];
    self._ID7._ID3291["fire"] = var_0["add_aim_straight"];
    self._ID7._ID3291["semi2"] = var_0["add_aim_straight"];
    self._ID7._ID3291["semi3"] = var_0["add_aim_straight"];
    self._ID7._ID3291["semi4"] = var_0["add_aim_straight"];
    self._ID7._ID3291["semi5"] = var_0["add_aim_straight"];
    self._ID7._ID3291["single"] = animscripts\utility::_ID3291( var_0["add_aim_straight"] );
    self._ID7._ID3291["burst2"] = var_0["add_aim_straight"];
    self._ID7._ID3291["burst3"] = var_0["add_aim_straight"];
    self._ID7._ID3291["burst4"] = var_0["add_aim_straight"];
    self._ID7._ID3291["burst5"] = var_0["add_aim_straight"];
    self._ID7._ID3291["burst6"] = var_0["add_aim_straight"];
    self._ID7._ID3291["exposed_idle"] = animscripts\utility::_ID3291( var_0["add_aim_idle"] );
}

_ID30412()
{
    self notify( "killanimscript" );
    thread animscripts\combat::_ID616();
}

_ID32587()
{
    if ( self._ID1063 )
        self animmode( "nogravity" );
    else
        self animmode( "zonly_physics" );
}

_ID8740( var_0 )
{
    if ( self._ID8744 == "left" )
        var_1 = "corner_stand_L";
    else
        var_1 = "corner_stand_R";

    self._ID13770 = animscripts\face::_ID28062( var_0, var_1, self._ID13770 );
}

_ID8739( var_0 )
{
    self._ID13770 = animscripts\face::_ID28062( var_0, "aim", self._ID13770 );
}

_ID8738()
{
    self._ID13770 = undefined;
    self clearanim( %head, 0.2 );
}
