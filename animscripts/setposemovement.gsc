// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID32756( var_0, var_1 )
{
    if ( var_0 == "" )
    {
        if ( self._ID7._ID28253 == "prone" && ( var_1 == "walk" || var_1 == "run" ) )
            var_0 = "crouch";
        else
            var_0 = self._ID7._ID28253;
    }

    if ( !isdefined( var_1 ) || var_1 == "" )
        var_1 = self._ID7._ID24414;

    return [[ anim._ID32757[var_0][var_1] ]]();
}

_ID19973()
{
    anim._ID32757["stand"]["stop"] = ::_ID35610;
    anim._ID32757["stand"]["walk"] = ::_ID35615;
    anim._ID32757["stand"]["run"] = ::_ID35602;
    anim._ID32757["crouch"]["stop"] = ::_ID9361;
    anim._ID32757["crouch"]["walk"] = ::_ID9370;
    anim._ID32757["crouch"]["run"] = ::_ID9351;
    anim._ID32757["prone"]["stop"] = ::_ID28716;
    anim._ID32757["prone"]["walk"] = ::_ID28727;
    anim._ID32757["prone"]["run"] = ::_ID28714;
}

_ID35610()
{
    switch ( self._ID7._ID28253 )
    {
        case "stand":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    return 0;
                case "walk":
                    _ID35617();
                    break;
                default:
                    _ID35609();
                    break;
            }

            break;
        case "crouch":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID9367();
                    break;
                case "walk":
                    _ID9372();
                    break;
                default:
                    _ID9359();
                    break;
            }

            break;
        default:
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID28724();
                    break;
                default:
                    _ID28711();
                    break;
            }

            break;
    }

    return 1;
}

_ID35615()
{
    switch ( self._ID7._ID28253 )
    {
        case "stand":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    if ( animscripts\stairs_utility::_ID54360() )
                        return 0;

                    _ID5288();
                    break;
                case "walk":
                    return 0;
                default:
                    _ID5288();
                    break;
            }

            break;
        case "crouch":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID9369();
                    break;
                case "walk":
                    _ID5288();
                    break;
                default:
                    _ID5288();
                    break;
            }

            break;
        default:
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID28726();
                    break;
                default:
                    _ID28711();
                    break;
            }

            break;
    }

    return 1;
}

_ID35602()
{
    switch ( self._ID7._ID28253 )
    {
        case "stand":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                case "walk":
                    if ( animscripts\stairs_utility::_ID54360() )
                        return 0;

                    return _ID5287();
                default:
                    return 0;
            }

            break;
        case "crouch":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    return _ID9368();
                default:
                    return _ID5287();
            }

            break;
        default:
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID28725();
                    break;
                default:
                    _ID28711();
                    break;
            }

            break;
    }

    return 1;
}

_ID9361()
{
    switch ( self._ID7._ID28253 )
    {
        case "stand":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID35611();
                    break;
                case "walk":
                    _ID35616();
                    break;
                case "run":
                    _ID35608();
                    break;
            }

            endswitch( 4 )  case "walk" loc_3E1 case "run" loc_3EB case "stop" loc_3D7 default loc_3F5
            break;
        case "crouch":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    return 0;
                case "walk":
                    _ID9371();
                    break;
                case "run":
                    _ID9355();
                    break;
            }

            endswitch( 4 )  case "walk" loc_427 case "run" loc_431 case "stop" loc_425 default loc_43B
            break;
        case "prone":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID28719();
                    break;
                default:
                    _ID28711();
                    break;
            }

            break;
    }

    endswitch( 4 )  case "stand" loc_3CB case "crouch" loc_419 case "prone" loc_45F default loc_495
    return 1;
}

_ID9370()
{
    switch ( self._ID7._ID28253 )
    {
        case "stand":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID35611();
                    _ID5286();
                    break;
                case "walk":
                    _ID5286();
                    break;
                default:
                    _ID5286();
                    break;
            }

            break;
        case "crouch":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID9363();
                    break;
                case "walk":
                    return 0;
                default:
                    _ID5286();
                    break;
            }

            break;
        default:
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID28721();
                    break;
                default:
                    _ID28711();
                    break;
            }

            break;
    }

    return 1;
}

_ID9351()
{
    switch ( self._ID7._ID28253 )
    {
        case "stand":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID35611();
                    _ID5285();
                    break;
                default:
                    _ID5285();
                    break;
            }

            break;
        case "crouch":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID9362();
                    break;
                case "walk":
                    _ID5285();
                    break;
                default:
                    return 0;
            }

            break;
        default:
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID28720();
                    break;
                default:
                    _ID28711();
                    break;
            }

            break;
    }

    return 1;
}

_ID28716()
{
    switch ( self._ID7._ID28253 )
    {
        case "stand":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID35612();
                    break;
                case "walk":
                    _ID35612();
                    break;
                case "run":
                    _ID9356();
                    break;
            }

            endswitch( 4 )  case "walk" loc_69E case "run" loc_6A8 case "stop" loc_694 default loc_6B2
            break;
        case "crouch":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID9364();
                    break;
                case "walk":
                    _ID9364();
                    break;
                case "run":
                    _ID9356();
                    break;
            }

            endswitch( 4 )  case "walk" loc_6EC case "run" loc_6F6 case "stop" loc_6E2 default loc_700
            break;
        case "prone":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    return 0;
                case "run":
                case "walk":
                    _ID28711();
                    break;
            }

            endswitch( 4 )  case "walk" loc_732 case "run" loc_732 case "stop" loc_730 default loc_73C
            break;
    }

    endswitch( 4 )  case "stand" loc_688 case "crouch" loc_6D6 case "prone" loc_724 default loc_760
    return 1;
}

_ID28727()
{
    switch ( self._ID7._ID28253 )
    {
        case "stand":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID35614();
                    break;
                default:
                    _ID9358();
                    break;
            }

            break;
        case "crouch":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID9366();
                    break;
                default:
                    _ID9358();
                    break;
            }

            break;
        default:
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID28723();
                    break;
                default:
                    self._ID7._ID24414 = "walk";
                    return 0;
            }

            break;
    }

    return 1;
}

_ID28714()
{
    switch ( self._ID7._ID28253 )
    {
        case "stand":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID35613();
                    break;
                default:
                    _ID9357();
                    break;
            }

            break;
        case "crouch":
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID9365();
                    break;
                default:
                    _ID9357();
                    break;
            }

            break;
        default:
            switch ( self._ID7._ID24414 )
            {
                case "stop":
                    _ID28723();
                    break;
                default:
                    self._ID7._ID24414 = "run";
                    return 0;
            }

            break;
    }

    return 1;
}
#using_animtree("generic_human");

_ID27187( var_0, var_1, var_2, var_3 )
{
    var_4 = gettime() + var_1 * 1000;

    if ( isarray( var_0 ) )
        var_0 = var_0[randomint( var_0.size )];

    self setflaggedanimknoball( "blendTransition", var_0, %body, 1, var_1, 1 );
    animscripts\notetracks::_ID11534( var_1 / 2, "blendTransition" );
    self._ID7._ID28253 = var_2;
    self._ID7._ID24414 = var_3;
    var_5 = ( var_4 - gettime() ) / 1000;

    if ( var_5 < 0.05 )
        var_5 = 0.05;

    animscripts\notetracks::_ID11534( var_5, "blendTransition" );
}

_ID28141( var_0, var_1 )
{
    _ID28138( var_0, "stand", "walk", var_1 );
}

_ID35617()
{
    self._ID7._ID24414 = "stop";
}

_ID35616()
{
    _ID35617();
    _ID35611();
}

_ID35609()
{
    self._ID7._ID24414 = "stop";
}

_ID35608()
{
    self._ID7._ID24414 = "stop";
    self._ID7._ID28253 = "crouch";
}

_ID27188( var_0 )
{
    var_1 = 0.3;

    if ( self._ID7._ID24414 != "stop" )
    {
        self endon( "movemode" );
        var_1 = 1.0;
    }

    var_2 = animscripts\stairs_utility::_ID47003();

    if ( var_2 != "none" )
        var_1 = 0.1;

    _ID27187( var_0, var_1, "stand", "run" );
}

_ID5287()
{
    if ( !self._ID373 )
    {
        self._ID7._ID24414 = "run";
        self._ID7._ID28253 = "stand";
        return 0;
    }

    if ( isdefined( self._ID30386 ) )
    {
        self clearanim( %h1_stairs, 0.1 );

        if ( animscripts\stairs_utility::ismovingonstairs() )
        {
            var_0 = animscripts\stairs_utility::_ID53776();
            var_1 = animscripts\utility::_ID16432( var_0 );
            _ID27188( var_1 );
            return 1;
        }

        _ID27188( self._ID30386 );
        return 1;
    }

    if ( animscripts\stairs_utility::_ID50800() )
        return 0;

    if ( animscripts\stairs_utility::_ID54360() )
        return 0;

    var_2 = 0.1;

    if ( self._ID7._ID24414 != "stop" && self._ID1012 == "none" )
        var_2 = 0.5;

    if ( isdefined( self._ID35499 ) )
        self setanimknoblimited( animscripts\utility::_ID16432( "sprint" ), 1, var_2, 1 );
    else
        self setanimknoblimited( animscripts\run::_ID16576(), 1, var_2, 1 );

    animscripts\run::_ID32698( animscripts\utility::_ID16432( "move_b" ), animscripts\utility::_ID16432( "move_l" ), animscripts\utility::_ID16432( "move_r" ), self._ID34146 );
    thread animscripts\run::_ID32577( "run" );
    wait 0.05;
    _ID27188( %combatrun );
    return 1;
}

_ID5288()
{
    if ( self._ID7._ID24414 != "stop" )
        self endon( "movemode" );

    if ( !isdefined( self._ID2832 ) && self._ID7._ID28253 != "prone" )
        animscripts\run::_ID32698( animscripts\utility::_ID16432( "move_b" ), animscripts\utility::_ID16432( "move_l" ), animscripts\utility::_ID16432( "move_r" ) );

    self._ID7._ID28253 = "stand";
    self._ID7._ID24414 = "walk";
}

_ID9367()
{
    var_0 = 1;

    if ( isdefined( self._ID13957 ) )
    {
        var_0 = 1.8;
        self._ID13957 = undefined;
    }

    if ( animscripts\utility::_ID39997() )
        _ID28138( %pistol_crouchaimstraight2stand, "stand", "stop", undefined, var_0 );
    else
    {
        animscripts\utility::_ID28972();
        _ID28138( %crouch2stand, "stand", "stop", undefined, var_0 );
    }
}

_ID9363()
{
    _ID5286();
}

_ID9369()
{
    _ID9363();
    _ID5288();
}

_ID9371()
{
    self._ID7._ID24414 = "stop";
}

_ID9372()
{
    _ID9371();
    _ID9367();
}

_ID9355()
{
    self._ID7._ID24414 = "stop";
}

_ID9359()
{
    _ID9355();
    _ID9367();
}

_ID9362()
{
    if ( self getanimweight( %casual_crouch_idle ) != 0.0 || self getanimweight( %casual_crouch_idle_in ) != 0.0 )
        _ID28138( %casual_crouch_idle_out, "crouch", "stop" );

    _ID5285();
}

_ID9368()
{
    if ( self getanimweight( %casual_crouch_idle ) != 0.0 || self getanimweight( %casual_crouch_idle_in ) != 0.0 )
        _ID28138( %casual_crouch_idle_out, "crouch", "stop" );

    if ( self._ID36736 == "riotshield" )
        return _ID5287();

    if ( !self shouldfacemotion() )
        return _ID5287();

    _ID28138( %crouch_2run_f, "stand", "run" );
    return 1;
}

_ID5285()
{
    if ( isdefined( self._ID9352 ) )
        _ID27187( self._ID9352, 0.6, "crouch", "run" );
    else
    {
        if ( isdefined( self._ID3152 ) && self._ID3152 == "riotshield" )
            var_0 = animscripts\utility::_ID16432( "move_f" );
        else
            var_0 = %crouchrun;

        var_1 = 0.4;
        var_2 = self._ID7._ID24414 == "stop" && self._ID7._ID28253 == "crouch";

        if ( var_2 )
        {
            if ( isdefined( self._ID3152 ) && self._ID3152 == "riotshield" )
                var_0 = animscripts\utility::_ID22630( "start_run", "riotshield_crouch" )[2];
            else
                var_0 = %crouchwalk_2_crouch_start_8;

            var_1 = 0.1;
        }

        self setanimknob( var_0, 1, var_1, self._ID24424 );

        if ( var_2 )
        {
            var_3 = 0.27;

            if ( isdefined( self._ID46661 ) )
                var_3 = self._ID46661;

            wait(var_3);
        }

        if ( animscripts\utility::_ID39998() && self._ID7._ID24414 == "run" && !( isdefined( self._ID9574 ) && isdefined( self._ID9574["run"] ) ) )
        {
            var_4 = "smg_crouch_run";
            thread animscripts\run::_ID39742( "crouchrun", animscripts\utility::_ID22630( var_4, "crouch" ), animscripts\utility::_ID22630( var_4, "crouch_b" ), animscripts\utility::_ID22630( var_4, "crouch_l" ), animscripts\utility::_ID22630( var_4, "crouch_r" ) );
        }
        else
            thread animscripts\run::_ID39742( "crouchrun", animscripts\utility::_ID16432( "crouch" ), animscripts\utility::_ID16432( "crouch_b" ), animscripts\utility::_ID16432( "crouch_l" ), animscripts\utility::_ID16432( "crouch_r" ) );

        wait 0.05;
        _ID27187( var_0, var_1, "crouch", "run" );
    }
}

_ID28720()
{
    animscripts\move::_ID16717( 0.4 );
}

_ID28725()
{
    animscripts\move::_ID16717( 0.4 );
}

_ID28721()
{
    animscripts\move::_ID16717( 0.4 );
}

_ID5286()
{
    if ( isdefined( self._ID9352 ) )
    {
        self setanimknoball( self._ID9352, %body, 1, 0.4 );
        _ID27187( self._ID9352, 0.6, "crouch", "walk" );
        self notify( "BlendIntoCrouchWalk" );
    }
    else
    {
        self setanimknob( %crouchrun, 1, 0.4, self._ID24424 );
        thread animscripts\run::_ID39742( "crouchrun", animscripts\utility::_ID16432( "crouch" ), animscripts\utility::_ID16432( "crouch_b" ), animscripts\utility::_ID16432( "crouch_l" ), animscripts\utility::_ID16432( "crouch_r" ) );
        wait 0.05;
        _ID27187( %crouchrun, 0.4, "crouch", "run" );
    }
}

_ID35611()
{
    animscripts\utility::_ID28972();
    var_0 = 1;

    if ( isdefined( self._ID13948 ) )
    {
        var_0 = 1.8;
        self._ID13948 = undefined;
    }

    if ( isdefined( self._ID3152 ) && self._ID3152 == "riotshield" )
        var_1 = animscripts\utility::_ID22630( "cover_trans", "riotshield_crouch" )[8];
    else
        var_1 = %exposed_stand_2_crouch;

    _ID28138( var_1, "crouch", "stop", undefined, var_0 );
}

_ID28719()
{
    animscripts\utility::_ID28972();
    animscripts\move::_ID16717( 0.4 );
}

_ID28724()
{
    animscripts\move::_ID16717( 0.4 );
}

_ID28726()
{
    _ID28724();
    _ID5288();
}

_ID28722( var_0 )
{
    if ( isdefined( self._ID52418 ) )
    {
        [[ self._ID52418 ]]();
        return;
    }

    _ID28712( 0.1 );
    _ID28138( %h1_crawlstart_f, "prone", var_0, %prone_crawl );
    animscripts\cover_prone::_ID39763( 0.1 );
}

_ID28723()
{
    _ID28722( "run" );
}

_ID28711()
{
    _ID28712( 0.1 );
    animscripts\cover_prone::_ID39763( 0.1 );
    _ID28138( %h1_crawl_2_prone, "prone", "stop", undefined, self._ID24424 );
}

_ID9364()
{
    self setproneanimnodes( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( 1.0 );
    _ID28712( 0.3 );
    animscripts\cover_prone::_ID39763( 0.1 );
    _ID28138( %crouch_2_prone, "prone", "stop" );
}

_ID9366()
{
    _ID9364();
    _ID28723();
}

_ID9365()
{
    _ID9364();
    _ID28723();
}

_ID35612()
{
    self endon( "entered_poseprone" );
    var_0 = 0.5;
    thread _ID28140( %stand_2_prone, "prone", "stop", undefined, var_0 );
    self waittillmatch( "transAnimDone2",  "anim_pose = \"crouch\""  );
    waitframe;
    self setproneanimnodes( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( var_0 );
    self._ID7._ID24414 = "stop";
    animscripts\cover_prone::_ID39763( 0.1 );
    self waittillmatch( "transAnimDone2",  "end"  );
    _ID28712( 0.2 );
    self setanim( %prone_aim_idle, 1, 0.1 );
}

_ID35614()
{
    _ID35612();
    _ID28723();
}

_ID35613()
{
    _ID35612();
    _ID28723();
}

_ID9356()
{
    self notify( "stop_move_anim_update" );
    self._ID39628 = undefined;
    var_0 = 0.5;
    self setproneanimnodes( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( var_0 );
    _ID28712( 0.2 );
    animscripts\cover_prone::_ID39763( 0.1 );
    var_1 = animscripts\utility::_ID16547( self getmotionangle() );
    var_2 = %crouch_2_prone;
    var_3 = getangledelta( var_2, 0, 1 );
    var_4 = self localtoworldcoords( var_3 );

    if ( self maymovetopoint( var_4 ) )
        _ID28138( var_2, "prone", "stop", undefined, var_0 );
    else
        _ID28138( %crouch_2_prone_firing, "prone", "stop", undefined, var_0 );
}

_ID9358()
{
    _ID9356();
    _ID28723();
}

_ID9357()
{
    _ID9356();
    _ID28723();
}

_ID28140( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "killanimscript" );
    self endon( "entered_pose" + var_1 );
    _ID28139( var_0, var_1, var_2, var_3, var_4, 0 );
}

_ID28138( var_0, var_1, var_2, var_3, var_4 )
{
    _ID28139( var_0, var_1, var_2, var_3, var_4, 1 );
}

_ID28139( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_4 ) )
        var_4 = 1;

    self._ID46487 = var_0;
    self._ID45835 = var_1;

    if ( var_5 )
        thread _ID41050( getanimlength( var_0 ) / 2.0, "killtimerscript", var_1 );

    self setflaggedanimknoballrestart( "transAnimDone2", var_0, %body, 1, 0.2, var_4 );

    if ( !isdefined( self._ID7._ID28253 ) )
        self._ID28253 = "undefined";

    if ( !isdefined( self._ID7._ID24414 ) )
        self._ID24414 = "undefined";

    var_6 = "";
    animscripts\shared::_ID11529( "transAnimDone2", undefined, var_6 );
    self notify( "killtimerscript" );
    self._ID7._ID28253 = var_1;
    self notify( "entered_pose" + var_1 );
    self._ID7._ID24414 = var_2;
    self._ID46487 = undefined;
    self._ID45835 = undefined;

    if ( isdefined( var_3 ) )
        self setanimknoball( var_3, %body, 1, 0.3, var_4 );
    else
        self clearanim( var_0, 0.1 );
}

_ID41050( var_0, var_1, var_2 )
{
    self endon( "killanimscript" );
    self endon( "death" );
    self endon( var_1 );
    var_3 = self._ID7._ID28253;
    wait(var_0);

    if ( var_3 != "prone" && var_2 == "prone" )
    {
        animscripts\cover_prone::_ID39763( 0.1 );
        animscripts\utility::_ID13067( 1.0 );
    }
    else if ( var_3 == "prone" && var_2 != "prone" )
    {
        animscripts\utility::_ID13390( 1.0 );
        self orientmode( "face default" );
    }
}

_ID28712( var_0 )
{
    self setanimknoball( %prone_legsstraight, %body, 1, var_0, self._ID24424 );
}
