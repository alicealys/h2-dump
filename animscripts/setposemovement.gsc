// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID32756( var_0, var_1 )
{
    if ( var_0 == "" )
    {
        if ( self._ID7._ID28253 == "prone" && var_1 == "walk" || var_1 == "run" )
            var_0 = "crouch";
        else
            var_0 = self._ID7._ID28253;
    }

    if ( !_func_02F( var_1 ) || var_1 == "" )
        var_1 = self._ID7._ID24414;

    return [[ anim._ID32757[var_0][var_1] ]]();
}

_ID19973()
{
    anim._ID32757["stand"]["stop"] = ::_unknown_00A0;
    anim._ID32757["stand"]["walk"] = ::_unknown_00E8;
    anim._ID32757["stand"]["run"] = ::_unknown_0132;
    anim._ID32757["crouch"]["stop"] = ::_unknown_0172;
    anim._ID32757["crouch"]["walk"] = ::_unknown_01C0;
    anim._ID32757["crouch"]["run"] = ::_unknown_0209;
    anim._ID32757["prone"]["stop"] = ::_unknown_024F;
    anim._ID32757["prone"]["walk"] = ::_unknown_02A0;
    anim._ID32757["prone"]["run"] = ::_unknown_02E3;
}

_ID35610()
{
    switch ( self._ID7._ID28253 )
    {

    }

    return 1;
    case "crouch":
    default:
}

_ID35615()
{
    switch ( self._ID7._ID28253 )
    {

    }

    return 1;
    case "stand":
    case "crouch":
    default:
}

_ID35602()
{
    switch ( self._ID7._ID28253 )
    {

    }

    return 1;
    case "stand":
    case "crouch":
    default:
}

_ID9361()
{
    switch ( self._ID7._ID28253 )
    {

    }

    return 1;
    case "stand":
    case "crouch":
    case "prone":
    default:
}

_ID9370()
{
    switch ( self._ID7._ID28253 )
    {

    }

    return 1;
    case "stand":
    case "crouch":
    default:
}

_ID9351()
{
    switch ( self._ID7._ID28253 )
    {

    }

    return 1;
    case "stand":
    case "crouch":
    default:
}

_ID28716()
{
    switch ( self._ID7._ID28253 )
    {

    }

    endswitch( 4 )  case "stand" loc_72F case "crouch" loc_748 case "prone" loc_760 default loc_775
    return 1;
    case "stand":
    case "crouch":
    default:
}

_ID28727()
{
    switch ( self._ID7._ID28253 )
    {

    }

    return 1;
    case "crouch":
    default:
}

_ID28714()
{
    switch ( self._ID7._ID28253 )
    {

    }

    return 1;
    case "crouch":
    default:
}
#using_animtree("generic_human");

_ID27187( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_03D() + var_1 * 1000;

    if ( _func_0D3( var_0 ) )
        var_0 = var_0[_func_0B7( var_0.size )];

    self _meth_8118( "blendTransition", var_0, %body, 1, var_1, 1 );
    animscripts\notetracks::_ID11534( var_1 / 2, "blendTransition" );
    self._ID7._ID28253 = var_2;
    self._ID7._ID24414 = var_3;
    var_5 = var_4 - _func_03D() / 1000;

    if ( var_5 < 0.05 )
        var_5 = 0.05;

    animscripts\notetracks::_ID11534( var_5, "blendTransition" );
}

_ID28141( var_0, var_1 )
{
    _unknown_0C1C( var_0, "stand", "walk", var_1 );
}

_ID35617()
{
    self._ID7._ID24414 = "stop";
}

_ID35616()
{
    _unknown_09CE();
    _unknown_0B5C();
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

    _unknown_0A07( var_0, var_1, "stand", "run" );
}

_ID5287()
{
    if ( !self._ID373 )
    {
        self._ID7._ID24414 = "run";
        self._ID7._ID28253 = "stand";
        return 0;
    }

    if ( _func_02F( self._ID30386 ) )
    {
        self _meth_814C( %h1_stairs, 0.1 );

        if ( animscripts\stairs_utility::ismovingonstairs() )
        {
            var_0 = animscripts\stairs_utility::_ID53776();
            var_1 = animscripts\utility::_ID16432( var_0 );
            _unknown_0A86( var_1 );
            return 1;
        }

        _unknown_0A8F( self._ID30386 );
        return 1;
    }

    if ( animscripts\stairs_utility::_ID50800() )
        return 0;

    if ( animscripts\stairs_utility::_ID54360() )
        return 0;

    var_2 = 0.1;

    if ( self._ID7._ID24414 != "stop" && self._ID1012 == "none" )
        var_2 = 0.5;

    if ( _func_02F( self._ID35499 ) )
        self _meth_814E( animscripts\utility::_ID16432( "sprint" ), 1, var_2, 1 );
    else
        self _meth_814E( animscripts\run::_ID16576(), 1, var_2, 1 );

    animscripts\run::_ID32698( animscripts\utility::_ID16432( "move_b" ), animscripts\utility::_ID16432( "move_l" ), animscripts\utility::_ID16432( "move_r" ), self._ID34146 );
    thread animscripts\run::_ID32577( "run" );
    wait 0.05;
    _unknown_0B17( %combatrun );
    return 1;
}

_ID5288()
{
    if ( self._ID7._ID24414 != "stop" )
        self endon( "movemode" );

    if ( !_func_02F( self._ID2832 ) && self._ID7._ID28253 != "prone" )
        animscripts\run::_ID32698( animscripts\utility::_ID16432( "move_b" ), animscripts\utility::_ID16432( "move_l" ), animscripts\utility::_ID16432( "move_r" ) );

    self._ID7._ID28253 = "stand";
    self._ID7._ID24414 = "walk";
}

_ID9367()
{
    var_0 = 1;

    if ( _func_02F( self._ID13957 ) )
    {
        var_0 = 1.8;
        self._ID13957 = undefined;
    }

    if ( animscripts\utility::_ID39997() )
        _unknown_0DE8( %pistol_crouchaimstraight2stand, "stand", "stop", undefined, var_0 );
    else
    {
        animscripts\utility::_ID28972();
        _unknown_0E00( %crouch2stand, "stand", "stop", undefined, var_0 );
    }
}

_ID9363()
{
    _unknown_0D05();
}

_ID9369()
{
    _unknown_0C4F();
    _unknown_0C1F();
}

_ID9371()
{
    self._ID7._ID24414 = "stop";
}

_ID9372()
{
    _unknown_0C68();
    _ID9369();
}

_ID9355()
{
    self._ID7._ID24414 = "stop";
}

_ID9359()
{
    _unknown_0C83();
    _unknown_0C64();
}

_ID9362()
{
    if ( self _meth_815A( %casual_crouch_idle ) != 0.0 || self _meth_815A( %casual_crouch_idle_in ) != 0.0 )
        _unknown_0E6E( %casual_crouch_idle_out, "crouch", "stop" );

    _unknown_0CFB();
}

_ID9368()
{
    if ( self _meth_815A( %casual_crouch_idle ) != 0.0 || self _meth_815A( %casual_crouch_idle_in ) != 0.0 )
        _unknown_0EA8( %casual_crouch_idle_out, "crouch", "stop" );

    if ( self._ID36736 == "riotshield" )
        return _unknown_0C7C();

    if ( !self _meth_819D() )
        return _unknown_0C85();

    _unknown_0ED0( %crouch_2run_f, "stand", "run" );
    return 1;
}

_ID5285()
{
    if ( _func_02F( self._ID9352 ) )
        _unknown_0C67( self._ID9352, 0.6, "crouch", "run" );
    else
    {
        if ( _func_02F( self._ID3152 ) && self._ID3152 == "riotshield" )
            var_0 = animscripts\utility::_ID16432( "move_f" );
        else
            var_0 = %crouchrun;

        var_1 = 0.4;
        var_2 = self._ID7._ID24414 == "stop" && self._ID7._ID28253 == "crouch";

        if ( var_2 )
        {
            if ( _func_02F( self._ID3152 ) && self._ID3152 == "riotshield" )
                var_0 = animscripts\utility::_ID22630( "start_run", "riotshield_crouch" )[2];
            else
                var_0 = %crouchwalk_2_crouch_start_8;

            var_1 = 0.1;
        }

        self _meth_814D( var_0, 1, var_1, self._ID24424 );

        if ( var_2 )
        {
            var_3 = 0.27;

            if ( _func_02F( self._ID46661 ) )
                var_3 = self._ID46661;

            wait(var_3);
        }

        if ( animscripts\utility::_ID39998() && self._ID7._ID24414 == "run" && !_func_02F( self._ID9574 ) && _func_02F( self._ID9574["run"] ) )
        {
            var_4 = "smg_crouch_run";
            thread animscripts\run::_ID39742( "crouchrun", animscripts\utility::_ID22630( var_4, "crouch" ), animscripts\utility::_ID22630( var_4, "crouch_b" ), animscripts\utility::_ID22630( var_4, "crouch_l" ), animscripts\utility::_ID22630( var_4, "crouch_r" ) );
        }
        else
            thread animscripts\run::_ID39742( "crouchrun", animscripts\utility::_ID16432( "crouch" ), animscripts\utility::_ID16432( "crouch_b" ), animscripts\utility::_ID16432( "crouch_l" ), animscripts\utility::_ID16432( "crouch_r" ) );

        wait 0.05;
        _unknown_0D8E( var_0, var_1, "crouch", "run" );
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
    if ( _func_02F( self._ID9352 ) )
    {
        self _meth_8151( self._ID9352, %body, 1, 0.4 );
        _unknown_0DD9( self._ID9352, 0.6, "crouch", "walk" );
        self notify( "BlendIntoCrouchWalk" );
    }
    else
    {
        self _meth_814D( %crouchrun, 1, 0.4, self._ID24424 );
        thread animscripts\run::_ID39742( "crouchrun", animscripts\utility::_ID16432( "crouch" ), animscripts\utility::_ID16432( "crouch_b" ), animscripts\utility::_ID16432( "crouch_l" ), animscripts\utility::_ID16432( "crouch_r" ) );
        wait 0.05;
        _unknown_0E33( %crouchrun, 0.4, "crouch", "run" );
    }
}

_ID35611()
{
    animscripts\utility::_ID28972();
    var_0 = 1;

    if ( _func_02F( self._ID13948 ) )
    {
        var_0 = 1.8;
        self._ID13948 = undefined;
    }

    if ( _func_02F( self._ID3152 ) && self._ID3152 == "riotshield" )
        var_1 = animscripts\utility::_ID22630( "cover_trans", "riotshield_crouch" )[8];
    else
        var_1 = %exposed_stand_2_crouch;

    _ID9364( var_1, "crouch", "stop", undefined, var_0 );
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
    _unknown_1071();
    _unknown_0F3A();
}

_ID28722( var_0 )
{
    if ( _func_02F( self._ID52418 ) )
    {
        [[ self._ID52418 ]]();
        return;
    }

    _unknown_11A2( 0.1 );
    _unknown_1157( %h1_crawlstart_f, "prone", var_0, %prone_crawl );
    animscripts\cover_prone::_ID39763( 0.1 );
}

_ID28723()
{
    _unknown_10BB( "run" );
}

_ID28711()
{
    _unknown_11D4( 0.1 );
    animscripts\cover_prone::_ID39763( 0.1 );
    _unknown_1191( %h1_crawl_2_prone, "prone", "stop", undefined, self._ID24424 );
}

_ID9364()
{
    self _meth_820A( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( 1.0 );
    _unknown_121F( 0.3 );
    animscripts\cover_prone::_ID39763( 0.1 );
    _unknown_11D9( %crouch_2_prone, "prone", "stop" );
}

_ID9366()
{
    _unknown_1152();
    _unknown_1145();
}

_ID9365()
{
    _unknown_115B();
    _unknown_114E();
}

_ID35612()
{
    self endon( "entered_poseprone" );
    var_0 = 0.5;
    thread _unknown_1201( %stand_2_prone, "prone", "stop", undefined, var_0 );
    self waittillmatch( "transAnimDone2",  "anim_pose = \"crouch\""  );
    waitframe;
    self _meth_820A( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( var_0 );
    self._ID7._ID24414 = "stop";
    animscripts\cover_prone::_ID39763( 0.1 );
    self waittillmatch( "transAnimDone2",  "end"  );
    _unknown_12BE( 0.2 );
    self _meth_8155( %prone_aim_idle, 1, 0.1 );
}

_ID35614()
{
    _unknown_1204();
    _unknown_11D9();
}

_ID35613()
{
    _unknown_120D();
    _unknown_11E2();
}

_ID9356()
{
    self notify( "stop_move_anim_update" );
    self._ID39628 = undefined;
    var_0 = 0.5;
    self _meth_820A( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
    animscripts\utility::_ID13067( var_0 );
    _unknown_1318( 0.2 );
    animscripts\cover_prone::_ID39763( 0.1 );
    var_1 = animscripts\utility::_ID16547( self _meth_819C() );
    var_2 = %crouch_2_prone;
    var_3 = _func_094( var_2, 0, 1 );
    var_4 = self _meth_81BC( var_3 );

    if ( self _meth_81CF( var_4 ) )
        _unknown_12F0( var_2, "prone", "stop", undefined, var_0 );
    else
        _unknown_1305( %crouch_2_prone_firing, "prone", "stop", undefined, var_0 );
}

_ID9358()
{
    _unknown_12CE();
    _unknown_1272();
}

_ID9357()
{
    _unknown_12D7();
    _unknown_127B();
}

_ID28140( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "killanimscript" );
    self endon( "entered_pose" + var_1 );
    _unknown_133C( var_0, var_1, var_2, var_3, var_4, 0 );
}

_ID28138( var_0, var_1, var_2, var_3, var_4 )
{
    _unknown_134F( var_0, var_1, var_2, var_3, var_4, 1 );
}

_ID28139( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_02F( var_4 ) )
        var_4 = 1;

    self._ID46487 = var_0;
    self._ID45835 = var_1;

    if ( var_5 )
        thread _unknown_13B6( _func_067( var_0 ) / 2.0, "killtimerscript", var_1 );

    self _meth_8119( "transAnimDone2", var_0, %body, 1, 0.2, var_4 );

    if ( !_func_02F( self._ID7._ID28253 ) )
        self._ID28253 = "undefined";

    if ( !_func_02F( self._ID7._ID24414 ) )
        self._ID24414 = "undefined";

    var_6 = "";
    animscripts\shared::_ID11529( "transAnimDone2", undefined, var_6 );
    self notify( "killtimerscript" );
    self._ID7._ID28253 = var_1;
    self notify( "entered_pose" + var_1 );
    self._ID7._ID24414 = var_2;
    self._ID46487 = undefined;
    self._ID45835 = undefined;

    if ( _func_02F( var_3 ) )
        self _meth_8151( var_3, %body, 1, 0.3, var_4 );
    else
        self _meth_814C( var_0, 0.1 );
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
        self _meth_819B( "face default" );
    }
}

_ID28712( var_0 )
{
    self _meth_8151( %prone_legsstraight, %body, 1, var_0, self._ID24424 );
}
