// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19774()
{
    anim._ID25064["detach shield"] = ::_ID25031;
    animscripts\init_move_transitions::_ID19742();
    var_0 = [];
    var_0["cover_trans"]["riotshield"][1] = %h2_riot_shield_movement_run2crouch_01;
    var_0["cover_trans"]["riotshield"][2] = %h2_riot_shield_movement_run2crouch_02;
    var_0["cover_trans"]["riotshield"][3] = %h2_riot_shield_movement_run2crouch_03;
    var_0["cover_trans"]["riotshield"][4] = %h2_riot_shield_movement_run2crouch_04;
    var_0["cover_trans"]["riotshield"][6] = %h2_riot_shield_movement_run2crouch_06;
    var_0["cover_trans"]["riotshield"][7] = %h2_riot_shield_movement_run2crouch_07;
    var_0["cover_trans"]["riotshield"][8] = %h2_riot_shield_movement_run2crouch_08;
    var_0["cover_trans"]["riotshield"][9] = %h2_riot_shield_movement_run2crouch_09;
    var_0["cover_trans"]["riotshield_crouch"][1] = %riotshield_walk_approach_1;
    var_0["cover_trans"]["riotshield_crouch"][2] = %riotshield_walk_approach_2;
    var_0["cover_trans"]["riotshield_crouch"][3] = %riotshield_walk_approach_3;
    var_0["cover_trans"]["riotshield_crouch"][4] = %riotshield_walk_approach_4;
    var_0["cover_trans"]["riotshield_crouch"][6] = %riotshield_walk_approach_6;
    var_0["cover_trans"]["riotshield_crouch"][7] = undefined;
    var_0["cover_trans"]["riotshield_crouch"][8] = %riotshield_walk2crouch_8;
    var_0["cover_trans"]["riotshield_crouch"][9] = undefined;
    var_0["cover_trans_angles"]["riotshield_crouch"][1] = 45;
    var_0["cover_trans_angles"]["riotshield_crouch"][2] = 0;
    var_0["cover_trans_angles"]["riotshield_crouch"][3] = -45;
    var_0["start_run"]["riotshield_crouch"][1] = %h2_riot_shield_movement_crouch2run_01;
    var_0["start_run"]["riotshield_crouch"][2] = %h2_riot_shield_movement_crouch2run_02;
    var_0["start_run"]["riotshield_crouch"][3] = %h2_riot_shield_movement_crouch2run_03;
    var_0["start_run"]["riotshield_crouch"][4] = %h2_riot_shield_movement_crouch2run_04;
    var_0["start_run"]["riotshield_crouch"][6] = %h2_riot_shield_movement_crouch2run_06;
    var_0["start_run"]["riotshield_crouch"][7] = %h2_riot_shield_movement_crouch2run_07;
    var_0["start_run"]["riotshield_crouch"][8] = %h2_riot_shield_movement_crouch2run_08;
    var_0["start_run"]["riotshield_crouch"][9] = %h2_riot_shield_movement_crouch2run_09;
    var_0["walk_turn"][0] = %h2_riot_shield_movement_crouch_08_l;
    var_0["walk_turn"][1] = %cqb_walk_tight_turn_l135;
    var_0["walk_turn"][2] = %cqb_walk_tight_turn_l90;
    var_0["walk_turn"][3] = %cqb_walk_tight_turn_l45;
    var_0["walk_turn"][5] = %cqb_walk_tight_turn_r45;
    var_0["walk_turn"][6] = %h2_riot_shield_movement_crouch_06;
    var_0["walk_turn"][7] = %cqb_walk_tight_turn_r135;
    var_0["walk_turn"][8] = %h2_riot_shield_movement_crouch_08_r;
    var_0["run_turn"][0] = %h2_riot_shield_movement_run_turn_08_l;
    var_0["run_turn"][1] = %h2_riot_shield_movement_run_turn_07;
    var_0["run_turn"][2] = %h2_riot_shield_movement_run_04;
    var_0["run_turn"][3] = %run_tight_turn_l45;
    var_0["run_turn"][5] = %run_tight_turn_r45;
    var_0["run_turn"][6] = %h2_riot_shield_movement_run_06;
    var_0["run_turn"][7] = %h2_riot_shield_movement_run_turn_09;
    var_0["run_turn"][8] = %h2_riot_shield_movement_run_turn_08_r;
    var_0["pain"]["riotshield"] = animscripts\utility::_ID3291( %riotshield_crouch_pain, %h2_riotshield_crouch_pain_01, %h2_riotshield_crouch_pain_02, %h2_riotshield_crouch_pain_03, %h2_riotshield_crouch_pain_05, %h2_riotshield_crouch_pain_01_b, %h2_riotshield_crouch_pain_05_b );
    var_0["walkBack2Run"][8] = %h2_riot_shield_movement_crouchshield_walk_b2run_02;
    var_1 = [];
    var_1[0] = "riotshield";
    var_1[1] = "riotshield_crouch";

    foreach ( var_5, var_3 in var_0["start_run"]["riotshield_crouch"] )
    {
        var_4 = length( getangledelta( var_3, 0, 1 ) );
        var_0["start_run_dist"]["riotshield_crouch"][var_5] = var_4;
    }

    var_0["CoverTransLongestDist"] = [];

    for ( var_6 = 0; var_6 < var_1.size; var_6++ )
    {
        var_7 = var_1[var_6];
        var_0["CoverTransLongestDist"][var_7] = 0;
        var_0["CoverTransLongestDistSq"][var_7] = 0;

        for ( var_8 = 1; var_8 <= 9; var_8++ )
        {
            if ( var_8 == 5 )
                continue;

            if ( isdefined( var_0["cover_trans"][var_7][var_8] ) )
            {
                var_0["cover_trans_dist"][var_7][var_8] = getangledelta( var_0["cover_trans"][var_7][var_8], 0, 1 );
                var_0["cover_trans_move_end"][var_7][var_8] = animscripts\init_move_transitions::_ID49458( var_0["cover_trans"][var_7][var_8] );
                var_9 = lengthsquared( var_0["cover_trans_dist"][var_7][var_8] );

                if ( var_0["CoverTransLongestDistSq"][var_7] < var_9 )
                    var_0["CoverTransLongestDistSq"][var_7] = var_9;
            }
        }

        var_0["CoverTransLongestDist"][var_7] = sqrt( var_0["CoverTransLongestDistSq"][var_7] );
    }

    foreach ( var_5, var_3 in var_0["cover_trans"]["riotshield"] )
    {
        var_11 = getmovedelta( var_3, 0, 1 );
        var_0["cover_trans_angles"]["riotshield"][var_5] = var_11;
    }

    foreach ( var_5, var_3 in var_0["start_run"]["riotshield_crouch"] )
    {
        var_11 = getmovedelta( var_3, 0, 1 );
        var_0["start_run_angles"]["riotshield_crouch"][var_5] = var_11;
    }

    animscripts\animset::_ID29424( "riotshield", var_0, 0 );
    anim._ID3367["riotshield"] = "crouch";
    anim._ID3367["riotshield_crouch"] = "crouch";
    animscripts\combat_utility::_ID2022( %h2_riotshield_grenadetoss_forward, ( -5.53443, 17.8644, -4.63202 ) );
    animscripts\combat_utility::_ID2022( %h2_riotshield_grenadetoss_right, ( -5.15326, 17.5312, -5.11841 ) );
    animscripts\combat_utility::_ID2022( %h2_riotshield_grenadetoss_left, ( -7.4863, 21.6584, -3.18823 ) );
}

_ID25031( var_0, var_1 )
{
    animscripts\shared::_ID12142( self._ID949 );
    self._ID949 = "none";

    if ( isalive( self ) )
        _ID30027();
}

_ID30003()
{
    if ( self._ID7._ID28253 == "crouch" )
        return "riotshield_crouch";

    return "riotshield";
}

_ID30002( var_0 )
{
    return 1;
}

_ID19773()
{
    animscripts\shared::_ID26732( self._ID949, "left", 0 );
    self._ID3152 = "riotshield";
    self initriotshieldhealth( self._ID949 );
    self._ID33738 = 0;
    thread _ID896();
    self._ID36736 = "riotshield";
    self._ID3264 = ::_ID30003;
    self._ID3258 = ::_ID30002;
    self._ID13754 = 1;
    self._ID11007 = 1;
    self._ID764 = 0;
    self._ID525 = 0;
    self._ID11017 = 1;
    self._ID24844 = 1;
    self._ID11582 = 1;
    self._ID11002 = 1;
    self._ID11029 = 1;
    self._ID24730 = 1;
    self._ID199 = "no_cover";
    self._ID381 = 0;
    self._ID625 = 1500;
    self._ID24910 = 1;
    self._ID23429 = squared( 256 );
    self._ID23440 = 1;
    self._ID39947 = 1;

    if ( level._ID15361 < 1 )
        self._ID33734 = randomintrange( 4, 8 );
    else
        self._ID33734 = randomintrange( 8, 12 );

    self._ID33733 = 0;
    self._ID33735 = 0;
    self._ID1298 = 500;
    self._ID1299 = 500;
    self._ID465 = 1;
    self._ID426 = 0.5;
    self._ID709 = 1;
    self._ID7._ID17423 = "crouch";
    self._ID23656 = 400;
    self._ID513 = 1;
    self._ID35380 = ::_ID30021;
    self._ID35381 = ::_ID30020;
    self._ID9557 = ::_ID46272;
    _ID42407::_ID10989();
    _ID42407::_ID10973();
    _ID42407::_ID10896();
    _ID19775();

    if ( level._ID15361 < 1 )
        self._ID6315 = 30;
    else
        self._ID6315 = 40;

    _ID42407::_ID1868( _ID42372::_ID6315 );
    _ID42407::_ID1868( animscripts\pain::_ID2035 );
}

_ID30006()
{
    if ( !animscripts\melee::_ID23417() )
        return 0;

    if ( isai( self._ID23353._ID1191 ) && ( self._ID23353._ID1191 _ID42407::_ID11498() || self._ID23353._ID1191._ID274 ) )
    {
        var_0 = getangledelta( %riotshield_basha_attack, 0, 1 );
        var_1 = lengthsquared( var_0 );
        var_1 += 1600;
    }
    else
    {
        var_0 = getangledelta( %riotshield_basha_attack, 0, 1 );
        var_1 = lengthsquared( var_0 );
    }

    if ( distancesquared( self._ID740, self._ID23353._ID1191._ID740 ) < var_1 )
        return 1;

    animscripts\melee::_ID23402();
    var_2 = 0.1;
    var_3 = 1;

    for (;;)
    {
        if ( !animscripts\melee::_ID23417() )
            return 0;

        if ( var_3 )
        {
            self._ID7._ID28253 = "stand";
            self setflaggedanimknoball( "chargeanim", %riotshield_sprint, %body, 1, 0.2, 1 );
            var_3 = 0;
        }

        self orientmode( "face point", self._ID23353._ID1191._ID740 );
        animscripts\notetracks::_ID11534( var_2, "chargeanim" );
        var_4 = distancesquared( self._ID740, self._ID23353._ID1191._ID740 );

        if ( var_4 < var_1 )
            break;

        if ( isai( self._ID23353._ID1191 ) && var_4 < var_1 * 1.5 )
            var_2 = 0.05;

        if ( gettime() >= self._ID23353._ID16914 )
            return 0;
    }

    return 1;
}

_ID30021()
{
    self animmode( "zonly_physics" );
    animscripts\melee::_ID23416();

    for (;;)
    {
        if ( !_ID30006() )
        {
            self._ID24787 = gettime() + 1500;
            self._ID24786 = self._ID23353._ID1191;
            break;
        }

        animscripts\battlechatter_ai::_ID13239();
        self orientmode( "face point", self._ID23353._ID1191._ID740 );

        if ( isai( self._ID23353._ID1191 ) && ( self._ID23353._ID1191 _ID42407::_ID11498() || self._ID23353._ID1191._ID274 ) )
            self setflaggedanimknoballrestart( "meleeanim", %h2_riotshield_close_melee, %body, 1, 0.2, 1 );
        else
            self setflaggedanimknoballrestart( "meleeanim", %riotshield_bash_vs_player, %body, 1, 0.2, 1 );

        self._ID23353._ID20038 = 1;

        if ( !animscripts\melee::_ID23415() )
        {
            animscripts\melee::_ID23412( self._ID23353._ID1191 );
            break;
        }

        self animmode( "none" );
    }

    self animmode( "none" );
}

_ID30020()
{
    var_0 = self._ID23353._ID1191;

    if ( self._ID36736 == "riotshield" && var_0._ID36736 == "riotshield" )
        return 0;

    animscripts\melee::_ID23378();
    var_1 = vectortoangles( var_0._ID740 - self._ID740 );
    var_2 = angleclamp180( var_0._ID65[1] - var_1[1] );

    if ( abs( var_2 ) > 100 )
    {
        if ( self._ID23353._ID41797 )
        {
            if ( self._ID36736 == "riotshield" )
            {
                if ( var_0 _ID42407::_ID11498() || var_0._ID274 )
                    return 0;
                else
                {
                    self._ID23353._ID3189 = %riotshield_basha_attack;
                    var_0._ID23353._ID3189 = %riotshield_basha_defend;
                    var_0._ID23353._ID36862 = %riotshield_basha_defend_survive;
                }
            }
            else
            {
                self._ID23353._ID3189 = %riotshield_bashb_defend;
                var_0._ID23353._ID3189 = %riotshield_bashb_attack;
            }
        }
        else if ( self._ID36736 == "riotshield" )
        {
            self._ID23353._ID3189 = %riotshield_bashb_attack;
            var_0._ID23353._ID3189 = %riotshield_bashb_defend;
        }
        else
        {
            self._ID23353._ID3189 = %riotshield_basha_defend;
            var_0._ID23353._ID3189 = %riotshield_basha_attack;
        }
    }
    else
        return 0;

    self._ID23353._ID36155 = getstartorigin( var_0._ID740, var_0._ID65, self._ID23353._ID3189 );
    self._ID23353._ID36098 = ( var_0._ID65[0], angleclamp180( var_0._ID65[1] + 180 ), var_0._ID65[2] );
    self._ID597 = 0;
    var_0._ID597 = 0;
    return animscripts\melee::_ID23425();
}

_ID53793( var_0 )
{
    for ( var_1 = 0; self._ID597; var_1 += 0.1 )
    {
        wait 0.1;
        var_2 = self aiphysicstrace( self._ID740, self._ID451, 0, 0, 1, 1 );

        if ( var_2["fraction"] >= 1 || var_1 > var_0 )
            self._ID597 = 0;
    }
}

_ID52568()
{
    var_0 = self._ID24424;
    var_1 = 0.75;
    var_2 = 0;

    while ( self._ID24424 < var_0 )
    {
        self._ID24424 = _ID42407::_ID22382( var_2 / var_1, 0, var_0 );
        var_2 += 0.05;
        wait 0.05;
    }

    self._ID24424 = var_0;
}

_ID44142()
{
    if ( self._ID823 != "init" )
    {
        var_0 = vectortoyaw( self._ID601 );
        var_1 = angleclamp180( var_0 - self._ID65[1] );
        var_2 = undefined;
        var_3 = self aiphysicstrace( self._ID740, self._ID451, 10, 72, 1, 1 );

        if ( abs( var_1 ) > 90 && var_3["fraction"] < 1 )
            var_2 = _ID42237::_ID37527( var_1 > 0, %riotshield_crouch_lturn, %riotshield_crouch_rturn );

        if ( isdefined( var_2 ) )
        {
            self setflaggedanimknoballrestart( "exitnode", var_2, %body, 1, 0.1, 1.25 );
            animscripts\shared::_ID11529( "exitnode" );
        }
        else if ( 45 < abs( var_1 ) && abs( var_1 ) < 90 && var_3["fraction"] < 1 )
            return 1;
    }
    else
        return 1;

    return 0;
}

_ID52753()
{
    var_0 = 0;
    var_1 = %riotshield_crouch2walk;

    if ( ( isdefined( self._ID35499 ) || isdefined( self._ID13958 ) ) && !_ID48007() )
    {
        var_2 = self aiphysicstrace( self._ID740, self._ID451, 10, 72, 1, 1 );

        if ( var_2["fraction"] < 1 )
        {
            var_3 = vectortoyaw( self._ID601 );
            var_4 = self._ID601;
        }
        else
        {
            var_3 = vectortoyaw( self._ID451 - self._ID740 );
            var_4 = vectornormalize( self._ID451 - self._ID740 );
        }

        var_5 = _ID51321( var_3, "start_run", "riotshield_crouch" );
        var_6 = var_5[0];
        var_1 = animscripts\utility::_ID22630( "start_run", "riotshield_crouch" )[var_6];
        var_7 = animscripts\utility::_ID22630( "start_run_dist", "riotshield_crouch" )[var_6];
        var_8 = _ID42237::_ID37527( isdefined( self._ID3263 ), self._ID3263, "riotshield" );
        var_9 = getnotetracktimes( var_1, "code_move" );
        var_10 = var_4 * var_7 * var_9[0];
        var_11 = self._ID740 + var_10;
        var_2 = self aiphysicstrace( self._ID740, var_11, 10, 72, 1, 1 );

        if ( var_2["fraction"] < 1 )
        {
            var_0 = 1;
            var_1 = %riotshield_crouch2stand;
            _ID44142();
        }

        if ( !isdefined( var_1 ) )
        {
            var_0 = 1;
            var_1 = %riotshield_crouch2stand;
            _ID44142();
        }
    }

    var_12 = randomfloatrange( 0.9, 1.1 );

    if ( isdefined( self._ID8656 ) )
        var_12 = 2.5;

    self setflaggedanimknoballrestart( "startmove", var_1, %body, 1, 0.1, var_12 );

    if ( var_0 )
        thread _ID52568();

    animscripts\shared::_ID11529( "startmove" );
    self clearanim( %riotshield_crouch2walk, 0.5 );
}

_ID30026()
{
    self notify( "start_move" );
    self endon( "start_move" );

    if ( isdefined( self._ID11025 ) )
        return;

    self orientmode( "face current" );
    self animmode( "zonly_physics", 0 );

    if ( self._ID7._ID28253 == "crouch" )
        _ID52753();

    if ( isdefined( self._ID35499 ) || isdefined( self._ID13958 ) )
    {
        self allowedstances( "stand", "crouch" );
        self._ID7._ID28253 = "stand";
    }

    if ( !self._ID597 )
        thread _ID53793( 1 );

    self orientmode( "face default" );
    self animmode( "normal", 0 );
    thread _ID30004();
}

_ID48007()
{
    return isdefined( self._ID51437 ) && self._ID51437;
}

_ID52751()
{
    if ( !_ID48007() )
        self._ID597 = 0;
}

_ID30010()
{
    _ID52751();

    if ( self._ID823 == "move" && self._ID7._ID28253 == "crouch" )
    {
        self clearanim( %animscript_root, 0.2 );
        var_0 = randomfloatrange( 0.9, 1.1 );

        if ( isdefined( self._ID8656 ) )
            var_0 = 2.5;

        self animmode( "zonly_physics" );
        self setflaggedanimknoballrestart( "endmove", %riotshield_walk2crouch_8, %body, 1, 0.2, var_0 );
        animscripts\shared::_ID11529( "endmove" );
        self animmode( "normal" );
    }

    self allowedstances( "crouch" );
}

_ID51321( var_0, var_1, var_2 )
{
    var_2 = _ID42237::_ID37527( isdefined( var_2 ), var_2, self._ID3263 );
    var_3 = undefined;
    var_4 = undefined;
    var_5 = animscripts\utility::_ID22630( var_1 + "_angles", var_2 );

    foreach ( var_10, var_7 in var_5 )
    {
        var_8 = angleclamp( self._ID65[1] + var_7 );
        var_9 = angleclamp180( var_0 - var_8 );

        if ( !isdefined( var_4 ) || !isdefined( var_3 ) )
        {
            var_3 = var_10;
            var_4 = var_9;
            continue;
        }

        if ( abs( var_9 ) < abs( var_4 ) )
        {
            var_3 = var_10;
            var_4 = var_9;
        }
    }

    return [ var_3, var_4 ];
}

_ID47762( var_0, var_1 )
{
    self endon( "killanimscript" );
    self endon( "abort_approach" );
    var_2 = animscripts\utility::_ID22630( "cover_trans_dist", self._ID3263 )[var_0];
    var_3 = 3 * length2dsquared( var_2 ) / 4;

    while ( !isdefined( self._ID451 ) )
        wait 0.05;

    while ( distance2dsquared( self._ID740, self._ID451 ) > var_3 )
        wait 0.05;

    _ID43319( var_1 );
}

_ID43319( var_0 )
{
    var_1 = 5;
    var_2 = _ID42237::_ID37527( var_0 > 0, var_1, var_1 * -1 );

    while ( abs( var_0 ) > var_1 )
    {
        self orientmode( "face angle", self._ID65[1] + var_2 );
        var_0 -= var_2;
        wait 0.05;
    }

    self orientmode( "face angle", self._ID65[1] + var_0 );
}

_ID46272()
{
    self endon( "killanimscript" );
    self endon( "abort_approach" );
    _ID52751();

    while ( !isdefined( self._ID451 ) )
        wait 0.05;

    var_0 = %riotshield_walk2crouch_8;
    var_1 = self aiphysicstrace( self._ID740, self._ID451, 10, 72, 1, 1 );

    if ( !_ID48007() )
    {
        if ( var_1["fraction"] < 1 )
            return;

        var_2 = vectortoyaw( self._ID451 - self._ID740 );

        if ( isdefined( self._ID8252 ) && self._ID451 == self._ID8252._ID740 )
        {
            var_2 = self._ID8252._ID65[1];

            switch ( self._ID8252._ID1244 )
            {
                case "Cover Left":
                    var_2 += 60;
                    break;
                case "Cover Right":
                    var_2 -= 60;
                    break;
            }

            var_2 = angleclamp( var_2 );
        }

        var_3 = _ID51321( var_2, "cover_trans" );
        var_4 = var_3[0];
        var_5 = var_3[1];
        var_0 = animscripts\utility::_ID22630( "cover_trans", self._ID3263 )[var_4];
        thread _ID47762( var_4, var_5 );
    }

    self clearanim( %body, 0.2 );
    self setflaggedanimrestart( "coverArrival", var_0, 1, 0.2, self._ID24474 );
    animscripts\face::_ID28062( var_0, "run" );
    animscripts\shared::_ID11529( "coverArrival" );
    var_6 = anim._ID3367[self._ID3263];

    if ( isdefined( var_6 ) )
        self._ID7._ID28253 = var_6;

    self._ID7._ID24414 = "stop";
    self._ID7._ID3372 = self._ID3263;
    self clearanim( %animscript_root, 0.2 );

    if ( _ID48007() )
        self setgoalpos( self._ID740 );

    self._ID21880 = undefined;
}

_ID30025()
{
    _ID52751();
    _ID30010();
    self._ID846 = 0;
    thread _ID30004();
}

_ID30004()
{
    self endon( "killanimscript" );

    for (;;)
    {
        self waittill( "bullet_hitshield" );
        var_0 = gettime();

        if ( var_0 - self._ID33735 > 500 )
            self._ID33733 = 0;
        else
            self._ID33733++;

        self._ID33735 = var_0;

        if ( self._ID33733 > self._ID33734 )
            self dodamage( 1, ( 0, 0, 0 ) );

        if ( _ID42237::_ID8201() )
            var_1 = %riotshield_reacta;
        else
            var_1 = %riotshield_reactb;

        self notify( "new_hit_react" );
        self setflaggedanimrestart( "hitreact", var_1, 1, 0.1, 1 );
        thread _ID30005();
    }
}

_ID30005()
{
    self endon( "killanimscript" );
    self endon( "new_hit_react" );
    self waittillmatch( "hitreact",  "end"  );
    self clearanim( %riotshield_react, 0.1 );
}

_ID30016()
{
    if ( self._ID7._ID28253 == "stand" )
    {
        self clearanim( %animscript_root, 0.2 );
        self setflaggedanimknoballrestart( "trans", %riotshield_walk2crouch_8, %body, 1, 0.2, 1.2 );
        animscripts\shared::_ID11529( "trans" );
    }

    if ( isdefined( self._ID458 ) )
    {
        var_0 = 1;
        var_1 = self._ID458._ID740 - self._ID740;

        if ( isdefined( self._ID322 ) )
        {
            var_2 = self._ID322._ID740 - self._ID740;

            if ( vectordot( var_1, var_2 ) < 0 )
                var_0 = 0;
        }

        if ( var_0 )
        {
            var_3 = angleclamp180( self._ID65[1] - vectortoyaw( var_1 ) );

            if ( !isdefined( self._ID39229 ) )
                self._ID39229 = 55;

            while ( abs( var_3 ) > self._ID39229 )
            {
                if ( !isdefined( self._ID7._ID3291 ) )
                    animscripts\combat::_ID32850();

                if ( !animscripts\combat::_ID39232( var_3 ) )
                    break;

                var_3 = angleclamp180( self._ID65[1] - vectortoyaw( var_1 ) );
            }
        }
    }

    self setanimknoball( %riotshield_crouch_aim_5, %body, 1, 0.2, 1 );
    self setflaggedanimknoballrestart( "grenadecower", %riotshield_crouch_idle_add, %add_idle, 1, 0.2, self._ID3195 );
    animscripts\shared::_ID11529( "grenadecower" );
}

_ID30013()
{
    self notify( "flashed" );

    if ( !isdefined( self._ID7._ID25684 ) )
    {
        var_0 = randomfloatrange( 0.9, 1.1 );
        self._ID426 = 1;
        var_1 = [];
        var_1[0] = %riotshield_crouch_grenade_flash1;
        var_1[1] = %riotshield_crouch_grenade_flash2;
        var_1[2] = %riotshield_crouch_grenade_flash3;
        var_1[3] = %riotshield_crouch_grenade_flash4;
        var_2 = var_1[randomint( var_1.size )];
        self setflaggedanimknoballrestart( "flashanim", var_2, %body, 1, 0.1, var_0 );
        self._ID642 = 1000;
        animscripts\shared::_ID11529( "flashanim" );
    }
    else
        wait 0.1;

    self._ID642 = 0;

    if ( isdefined( self._ID36736 ) && self._ID36736 == "riotshield" )
        self._ID426 = 0.5;
}

_ID30022()
{
    self._ID7._ID28253 = "crouch";

    if ( animscripts\utility::_ID39997() )
        _ID42407::_ID14803( self._ID834, "primary" );

    if ( !isdefined( self._ID7._ID25684 ) )
    {
        var_0 = randomfloatrange( 0.8, 1.15 );
        self._ID426 = 1;

        if ( isexplosivedamagemod( self._ID254 ) )
        {
            if ( self._ID257 > 65 )
            {
                if ( abs( self._ID259 ) > 135 )
                    var_1 = _ID42237::_ID28945( [ %h2_riotshield_crouch_grenadeblowback_front, %h2_crouchshield_grenade_blowback_f ] );

                if ( self._ID259 < 0 )
                    var_1 = _ID42237::_ID28945( [ %h2_riotshield_crouch_grenadeblowback_right, %h2_crouchshield_grenade_blowback_r ] );
                else
                    var_1 = _ID42237::_ID28945( [ %h2_riotshield_crouch_grenadeblowback_left, %h2_crouchshield_grenade_blowback_l ] );

                self setflaggedanimknoballrestart( "painanim", var_1, %body, 1, 0.2, var_0 );

                if ( self._ID259 < -120 || self._ID259 > 120 )
                    self._ID642 = 1000;
            }
            else
            {
                var_2 = animscripts\utility::_ID22630( "pain", self._ID3152 );

                if ( !isdefined( level.riotshieldpainexplosiongrenadeindex ) )
                    level.riotshieldpainexplosiongrenadeindex = randomint( var_2.size );

                var_3 = var_2[level.riotshieldpainexplosiongrenadeindex];
                level.riotshieldpainexplosiongrenadeindex = ( level.riotshieldpainexplosiongrenadeindex + 1 ) % var_2.size;
                self setflaggedanimknoballrestart( "painanim", var_3, %body, 1, 0.2, var_0 );
            }
        }
        else
        {
            var_2 = animscripts\utility::_ID22630( "pain", self._ID3152 );
            var_3 = var_2[randomint( var_2.size )];
            self setflaggedanimknoballrestart( "painanim", var_3, %body, 1, 0.2, var_0 );
        }

        animscripts\shared::_ID11529( "painanim" );
    }
    else
        wait 0.1;

    self._ID642 = 0;

    if ( isdefined( self._ID36736 ) && self._ID36736 == "riotshield" )
        self._ID426 = 0.5;
}

_ID30009()
{
    if ( isdefined( self._ID7._ID25684 ) && self._ID7._ID28253 == "crouch" )
    {
        var_0 = [];
        var_0[0] = %dying_back_death_v2;
        var_0[1] = %dying_back_death_v3;
        var_0[2] = %dying_back_death_v4;
        var_1 = var_0[randomint( var_0.size )];
        animscripts\death::_ID27200( var_1 );
        return 1;
    }

    if ( self._ID823 == "pain" || self._ID823 == "flashed" )
        var_2 = randomint( 2 ) == 0;
    else
        var_2 = 1;

    if ( var_2 )
    {
        if ( isexplosivedamagemod( self._ID254 ) )
        {
            if ( abs( self._ID259 ) > 135 )
                var_1 = %riotshield_crouch_death_fallback;
            else if ( abs( self._ID259 ) < 45 )
                var_1 = _ID42237::_ID28945( [ %h2_riotshield_crouch_grenade_death, %h2_riotshield_crouch_grenade_death_b_v1, %h2_riotshield_crouch_grenade_death_b_v2 ] );
            else if ( self._ID259 > 0 )
                var_1 = %h2_riotshield_crouch_grenade_death_r;
            else
                var_1 = %h2_riotshield_crouch_grenade_death_l;
        }
        else if ( animscripts\utility::_ID9641( "right_arm_upper", "right_arm_lower", "right_hand", "right_leg_upper", "right_leg_lower", "rightt_foot" ) )
            var_1 = _ID42237::_ID37527( _ID42237::_ID8201(), %h2_riotshield_crouchdeath_left_01, %h2_riotshield_crouchdeath_left_02 );
        else if ( animscripts\utility::_ID9641( "left_arm_upper", "left_arm_lower", "left_hand", "left_leg_upper", "left_leg_lower", "left_foot" ) )
            var_1 = _ID42237::_ID37527( _ID42237::_ID8201(), %h2_riotshield_crouchdeath_right_01, %h2_riotshield_crouchdeath_right_02 );
        else
            var_1 = _ID42237::_ID37527( abs( self._ID259 ) < 90, %riotshield_crouch_death, %riotshield_crouch_death_fallback );

        animscripts\death::_ID27200( var_1 );
        return 1;
    }

    self._ID7._ID28253 = "crouch";
    return 0;
}

_ID19775()
{
    var_0 = [];
    var_0["sprint"] = %riotshield_sprint;
    var_0["prone"] = %prone_crawl;
    var_0["straight"] = %riotshield_run_f;
    var_0["smg_straight"] = %riotshield_run_f;
    var_0["move_f"] = %riotshield_run_f;
    var_0["move_l"] = %riotshield_run_l;
    var_0["move_r"] = %riotshield_run_r;
    var_0["move_b"] = %riotshield_run_b;
    var_0["crouch"] = %riotshield_crouchwalk_f;
    var_0["crouch_l"] = %riotshield_crouchwalk_l;
    var_0["crouch_r"] = %riotshield_crouchwalk_r;
    var_0["crouch_b"] = %riotshield_crouchwalk_b;
    var_0["stairs_up"] = %traverse_stair_run_01;
    var_0["stairs_down"] = %traverse_stair_run_down;
    self._ID9574["run"] = var_0;
    self._ID9574["walk"] = var_0;
    self._ID9574["cqb"] = var_0;
    self._ID9568 = [];
    self._ID9568["crouch"] = %riotshield_crouch_aim_5;
    self._ID9568["crouch_add"] = %riotshield_crouch_idle_add;
    self._ID9568["stand"] = %riotshield_crouch_aim_5;
    self._ID9568["stand_add"] = %riotshield_crouch_idle_add;
    self._ID7._ID28253 = "crouch";
    self allowedstances( "crouch" );
    var_0 = anim._ID3204._ID10144;
    var_0["add_aim_up"] = %riotshield_crouch_aim_8;
    var_0["add_aim_down"] = %riotshield_crouch_aim_2;
    var_0["add_aim_left"] = %riotshield_crouch_aim_4;
    var_0["add_aim_right"] = %riotshield_crouch_aim_6;
    var_0["straight_level"] = %riotshield_crouch_aim_5;
    var_0["fire"] = %riotshield_crouch_fire_auto;
    var_0["single"] = animscripts\utility::_ID3291( %riotshield_crouch_fire_single );
    var_0["burst2"] = %riotshield_crouch_fire_burst;
    var_0["burst3"] = %riotshield_crouch_fire_burst;
    var_0["burst4"] = %riotshield_crouch_fire_burst;
    var_0["burst5"] = %riotshield_crouch_fire_burst;
    var_0["burst6"] = %riotshield_crouch_fire_burst;
    var_0["semi2"] = %riotshield_crouch_fire_burst;
    var_0["semi3"] = %riotshield_crouch_fire_burst;
    var_0["semi4"] = %riotshield_crouch_fire_burst;
    var_0["semi5"] = %riotshield_crouch_fire_burst;
    var_0["exposed_idle"] = animscripts\utility::_ID3291( %riotshield_crouch_idle_add, %riotshield_crouch_twitch );
    var_0["exposed_grenade"] = animscripts\utility::_ID3291( %h2_riotshield_grenadetoss_forward, %h2_riotshield_grenadetoss_right, %h2_riotshield_grenadetoss_left );
    var_0["reload"] = animscripts\utility::_ID3291( %h2_riotshield_reload_01 );
    var_0["reload_crouchhide"] = animscripts\utility::_ID3291( %h2_riotshield_reload_01 );
    var_0["turn_left_45"] = %riotshield_crouch_lturn;
    var_0["turn_left_90"] = %riotshield_crouch_lturn;
    var_0["turn_left_135"] = %riotshield_crouch_lturn;
    var_0["turn_left_180"] = %riotshield_crouch_lturn;
    var_0["turn_right_45"] = %riotshield_crouch_rturn;
    var_0["turn_right_90"] = %riotshield_crouch_rturn;
    var_0["turn_right_135"] = %riotshield_crouch_rturn;
    var_0["turn_right_180"] = %riotshield_crouch_rturn;
    var_0["stand_2_crouch"] = %riotshield_walk2crouch_8;
    animscripts\animset::_ID19583( var_0 );
    animscripts\animset::_ID19582( var_0 );
    self._ID7497 = ::_ID30007;
    self._ID26203 = ::_ID30022;
    self._ID35375 = ::_ID30009;
    self._ID35376 = ::_ID30013;
    self._ID17407 = ::_ID30016;
    self._ID9575 = ::_ID30026;
    self._ID26587 = 1;
    _ID42237::_ID32287( "exposed", ::_ID30025 );
}

_ID30007( var_0 )
{
    if ( isdefined( self._ID458 ) )
        return "stand";

    return animscripts\utility::_ID7496( var_0 );
}

_ID30024()
{
    self._ID625 = 128;
    self._ID35499 = 1;
    self orientmode( "face default" );
    self._ID597 = 0;
    self._ID1298 = 32;
    self._ID1299 = 32;
}

_ID30012()
{
    self._ID625 = 128;
    self._ID13958 = 1;
    self._ID1298 = 32;
    self._ID1299 = 32;
}

_ID30023()
{
    self._ID625 = 1500;
    self._ID1298 = 500;
    self._ID1299 = 500;
    self._ID35499 = undefined;
    self allowedstances( "crouch" );
}

_ID30011()
{
    self._ID625 = 1500;
    self._ID1298 = 500;
    self._ID1299 = 500;
    self._ID13958 = undefined;
    self allowedstances( "crouch" );
}

_ID25215()
{

}

_ID30017()
{
    if ( self._ID912 == "move" )
        self animcustom( ::_ID25215 );

    self._ID9575 = ::_ID30015;
}

_ID30015()
{
    self._ID9575 = ::_ID30026;
    self.custommovetransitionendscript = ::riotshield_force_drop_shield;
    self animmode( "zonly_physics", 0 );
    self orientmode( "face current" );

    if ( !isdefined( self._ID12180 ) && isdefined( self._ID322 ) && vectordot( self._ID601, anglestoforward( self._ID65 ) ) < 0 )
        var_0 = %riotshield_crouch2walk_2flee;
    else
        var_0 = %riotshield_crouch2stand_shield_drop;

    var_1 = randomfloatrange( 0.85, 1.1 );
    self setflaggedanimknoball( "fleeanim", var_0, %animscript_root, 1, 0.1, var_1 );
    animscripts\shared::_ID11529( "fleeanim" );
    self.custommovetransitionendscript = undefined;
    self._ID625 = 32;
    self._ID597 = 0;
    self orientmode( "face default" );
    self animmode( "normal", 0 );
    animscripts\shared::_ID11529( "fleeanim" );
    self clearanim( var_0, 0.2 );
    self._ID625 = 128;
}

riotshield_force_drop_shield()
{
    _ID25031();
}

_ID30027()
{
    self._ID36736 = "regular";
    self._ID199 = "cover";
    self._ID3152 = undefined;
    self._ID3264 = undefined;
    self._ID3258 = undefined;
    self._ID13754 = undefined;
    self._ID11007 = undefined;
    self._ID764 = 0;
    self._ID525 = 80;
    self._ID11017 = undefined;
    self._ID24844 = undefined;
    self._ID11582 = undefined;
    self._ID11002 = undefined;
    self._ID11029 = undefined;
    self._ID24730 = undefined;
    self._ID625 = 128;
    self._ID24910 = undefined;
    self._ID23429 = undefined;
    self._ID23440 = undefined;
    self._ID39947 = undefined;
    self._ID760 = 128;
    self._ID761 = 128;
    self._ID1298 = 256;
    self._ID1299 = 64;
    self._ID597 = 0;
    self._ID426 = 1;
    self._ID709 = 0;
    self._ID513 = 0;
    self._ID35499 = undefined;
    self allowedstances( "stand", "crouch", "prone" );
    self._ID35380 = undefined;
    self._ID35381 = undefined;
    self._ID9557 = undefined;
    _ID42407::_ID12549();
    self._ID6315 = undefined;
    _ID42407::_ID29503( _ID42372::_ID6315 );
    _ID42407::_ID29503( animscripts\pain::_ID2035 );
    animscripts\animset::_ID7851();
    self._ID7497 = animscripts\utility::_ID7496;
    self._ID26203 = undefined;
    self._ID35375 = undefined;
    self._ID35376 = undefined;
    self._ID17407 = undefined;
    self._ID9575 = undefined;
    self._ID26587 = undefined;
    _ID42237::_ID7866( "exposed" );
    _ID42237::_ID7866( "stop_immediate" );
}

_ID896()
{
    self endon( "death" );
    self waittill( "riotshield_damaged" );
    self._ID33732 = 1;
    animscripts\shared::_ID10626();
    self._ID33738 = 1;
    animscripts\shared::_ID39673();
}
