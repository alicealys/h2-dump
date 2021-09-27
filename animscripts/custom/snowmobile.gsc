// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID9444 = "none";
    self._ID33769 = undefined;
    self.cheat._ID48626 = 1;
    _unknown_0030();

    if ( _func_02F( self._ID11803 ) )
        _unknown_0054();
    else
        _ID34883();
}

_ID46580()
{
    if ( self._ID29969._ID29965.size > 1 )
        return;

    self notify( "snowmobile_weapon_stance_change" );
    self notify( "end_shoot_while_driving" );
    self notify( "stopShooting" );
    _unknown_059B( 0 );
    animscripts\shared::_ID26732( self._ID834, "none" );
    thread _unknown_00BF();
}

_ID34883()
{
    self._ID465 = 0;
    self._ID7._ID28253 = "crouch";
    _ID42407::_ID10973();
    self._ID52 = 0;
    self._ID16482 = ::_unknown_0097;
    self._ID35375 = ::_unknown_04BB;
    self._ID11002 = 1;
}

_ID34882()
{
    self._ID52 = 1;
    self._ID16482 = undefined;
    self._ID35375 = undefined;
    self._ID7._ID35385 = undefined;
    self._ID11002 = undefined;
    _ID42407::_ID17508();
    self._ID25834 = undefined;
    self._ID9526["combat"] = undefined;
    self._ID9526["stop"] = undefined;
}

_ID22767()
{
    var_0 = self._ID29969._ID11785 || self._ID29969._ID29965.size == 1;
    _unknown_060D( var_0 );

    if ( var_0 )
    {
        animscripts\shared::_ID26732( self._ID834, "left" );
        self._ID894 = 90;
        self._ID590 = -90;
        animscripts\track::_ID32548( 1, 0.2 );
        thread _unknown_03F7();
        thread _unknown_01C5();
    }
    else
    {
        animscripts\shared::_ID26732( self._ID834, "none" );
        thread _unknown_015E();
    }

    _unknown_02CC( "driver" );
}

_ID22783()
{
    _unknown_0741( self._ID29969._ID26297 );

    if ( self._ID29969._ID26297 )
    {
        self._ID894 = 180;
        self._ID590 = -180;
        self._ID10860 = 1;
        animscripts\track::_ID32548( 1, 0.2 );
        thread _unknown_0497();
        thread _unknown_0276();
    }
    else
        thread _unknown_01F1();

    _unknown_030D( "passenger" );
}
#using_animtree("generic_human");

_ID34885()
{
    self endon( "death" );
    self endon( "killanimscript" );
    var_0 = "left2right";
    var_1 = [];
    var_1["left2right"] = _func_067( animscripts\utility::_ID3153( "left2right" ) );
    var_1["right2left"] = _func_067( animscripts\utility::_ID3153( "right2left" ) );
    self _meth_8151( %sm_turn, %body, 1, 0 );
    self _meth_8155( animscripts\utility::_ID3153( "drive" ), 1, 0 );
    self _meth_814D( animscripts\utility::_ID3153( var_0 ), 1, 0 );
    self _meth_8120( animscripts\utility::_ID3153( var_0 ), 0.5 );

    for (;;)
    {
        if ( self._ID29969._ID36389 )
        {
            var_2 = 0.5 * 1 + _ID42413::_ID39650( self._ID29969 );
            var_3 = self _meth_8159( animscripts\utility::_ID3153( var_0 ) );

            if ( var_0 == "right2left" )
                var_3 = 1 - var_3;

            var_4 = 20 * _func_0C3( var_3 - var_2 );

            if ( var_3 < var_2 )
            {
                var_0 = "left2right";
                var_4 *= var_1["left2right"];
            }
            else
            {
                var_0 = "right2left";
                var_4 *= var_1["right2left"];
                var_3 = 1 - var_3;
            }
        }
        else
        {
            var_0 = "left2right";
            var_4 = 0;
            var_3 = 0.5;
        }

        self _meth_814E( animscripts\utility::_ID3153( var_0 ), 1, 0.1, var_4 );
        self _meth_8120( animscripts\utility::_ID3153( var_0 ), var_3 );
        wait 0.05;
    }
}

_ID34887()
{
    self endon( "death" );
    self endon( "killanimscript" );
    self _meth_8151( animscripts\utility::_ID3153( "hide" ), %body, 1, 0 );
    self _meth_814D( animscripts\utility::_ID3153( "drive" ), 1, 0 );

    for (;;)
    {
        var_0 = _ID42413::_ID39650( self._ID29969 );
        self _meth_8156( %sm_lean, _func_0C3( var_0 ), 0.05 );

        if ( var_0 >= 0 )
            self _meth_814E( animscripts\utility::_ID3153( "lean_right" ), 1, 0.05 );
        else
            self _meth_814E( animscripts\utility::_ID3153( "lean_left" ), 1, 0.05 );

        wait 0.05;
    }
}

_ID34886()
{
    self endon( "death" );
    self endon( "killanimscript" );
    self endon( "snowmobile_weapon_stance_change" );
    var_0 = 0.05;
    var_1 = 0;
    self _meth_8151( %sm_aiming, %body, 1, 0 );

    for (;;)
    {
        if ( _func_02F( self._ID40065 ) && _func_02F( self._ID40065._ID1276 ) && self._ID40065._ID1276 > 0 )
            self _meth_814D( animscripts\utility::_ID3153( "idle" ), 1, 0 );
        else
            self _meth_814D( %h2_snowmobile_soap_waiting, 1, 0 );

        if ( self._ID9444 != "none" )
        {
            self waittill( "snowmobile_event_finished" );
            continue;
        }

        var_2 = _ID42413::_ID39650( self._ID29969 );
        var_3 = 1 - _func_0C3( var_2 );
        var_4 = _func_0E6( 0, 0 - var_2 );
        var_5 = _func_0E6( 0, var_2 );
        self _meth_8156( animscripts\utility::_ID3153( "straight_level_center" ), var_3, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "straight_level_left" ), var_4, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "straight_level_right" ), var_5, var_0 );

        if ( self._ID6323 <= 0 )
        {
            animscripts\weaponlist::_ID29364();
            var_1 = _func_03D() + 3000;
        }

        if ( var_1 <= _func_03D() )
            _unknown_05B3();

        self _meth_814E( animscripts\utility::_ID3153( "add_aim_left_center" ), var_3, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_left_left" ), var_4, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_left_right" ), var_5, var_0 );
        self _meth_814E( animscripts\utility::_ID3153( "add_aim_right_center" ), var_3, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_right_left" ), var_4, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_right_right" ), var_5, var_0 );
        thread _unknown_0612();
        wait 0.05;
    }
}

_ID34888()
{
    self endon( "death" );
    self endon( "killanimscript" );
    var_0 = 0.05;
    self _meth_8151( %sm_aiming, %body, 1, 0 );
    self _meth_814D( animscripts\utility::_ID3153( "idle" ), 1, 0 );

    for (;;)
    {
        if ( self._ID9444 != "none" )
        {
            self waittill( "snowmobile_event_finished" );
            continue;
        }

        if ( _unknown_06E0() )
            continue;

        var_1 = _ID42413::_ID39650( self._ID29969 );
        var_2 = 1 - _func_0C3( var_1 );
        var_3 = _func_0E6( 0, 0 - var_1 );
        var_4 = _func_0E6( 0, var_1 );
        self _meth_8156( animscripts\utility::_ID3153( "straight_level_center" ), var_2, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "straight_level_left" ), var_3, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "straight_level_right" ), var_4, var_0 );
        _unknown_06A3();
        self _meth_8156( animscripts\utility::_ID3153( "aim_left_center" ), var_2, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "aim_left_left" ), var_3, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "aim_left_right" ), var_4, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "aim_right_center" ), var_2, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "aim_right_left" ), var_3, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "aim_right_right" ), var_4, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_backleft_center" ), var_2, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_backleft_left" ), var_3, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_backleft_right" ), var_4, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_backright_center" ), var_2, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_backright_left" ), var_3, var_0 );
        self _meth_8156( animscripts\utility::_ID3153( "add_aim_backright_right" ), var_4, var_0 );

        if ( _func_1B3( self._ID322 ) )
            self _meth_81FA();

        wait 0.05;
        thread _unknown_075D();
    }
}

_ID34880( var_0 )
{
    self endon( "death" );
    self._ID29969._ID36389 = 0;
    self _meth_8117( "snowmobile_event", var_0, 1, 0.17 );
    animscripts\shared::_ID11529( "snowmobile_event", ::_unknown_0858 );
    self _meth_814E( animscripts\utility::_ID3153( "event_restore" ), 1, 0.1 );
    self._ID29969._ID36389 = 1;
    self._ID9444 = "none";
    self notify( "snowmobile_event_finished" );
}

_ID34884( var_0 )
{
    self endon( "death" );
    self endon( "killanimscript" );
    var_1 = self._ID29969;

    for (;;)
    {
        if ( var_1._ID13251["jump"][var_0] )
        {
            var_1._ID13251["jump"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );
            self._ID9444 = "jump";
            var_1._ID36389 = 0;
            self _meth_8117( "jump", animscripts\utility::_ID3153( "event_jump" ), 1, 0.17 );
        }

        if ( var_1._ID13251["bump"][var_0] )
        {
            var_1._ID13251["bump"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );

            if ( self._ID9444 != "bump_big" )
                thread _unknown_07A2( animscripts\utility::_ID3153( "event_bump" ) );
        }

        if ( var_1._ID13251["bump_big"][var_0] )
        {
            var_1._ID13251["bump_big"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );
            self._ID9444 = "bump_big";
            thread _unknown_07D1( animscripts\utility::_ID3153( "event_bump_big" ) );
        }

        if ( var_1._ID13251["sway_left"][var_0] )
        {
            var_1._ID13251["sway_left"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );

            if ( self._ID9444 != "bump_big" )
                thread _unknown_0808( animscripts\utility::_ID3153( "event_sway" )["left"] );
        }

        if ( var_1._ID13251["sway_right"][var_0] )
        {
            var_1._ID13251["sway_right"][var_0] = 0;
            self notify( "snowmobile_event_occurred" );

            if ( self._ID9444 != "bump_big" )
                thread _unknown_083F( animscripts\utility::_ID3153( "event_sway" )["right"] );
        }

        wait 0.05;
    }
}

_ID34897()
{
    self notify( "want_shoot_while_driving" );
    self _meth_8155( %sm_add_fire, 1, 0.2 );

    if ( _func_02F( self._ID33769 ) )
        return;

    self._ID33769 = 1;
    thread _unknown_0903();
    thread _unknown_0964();
}

_ID34898()
{
    self endon( "killanimscript" );
    self endon( "want_shoot_while_driving" );
    wait 0.05;
    self notify( "end_shoot_while_driving" );
    self._ID33769 = undefined;
    self _meth_814C( %sm_add_fire, 0.2 );
}

_ID34878()
{
    self endon( "killanimscript" );
    self endon( "end_shoot_while_driving" );
    self endon( "snowmobile_weapon_stance_change" );
    self._ID7._ID35385 = ::_unknown_0957;
    _unknown_0959();
    self._ID33769 = undefined;
}

_ID34879()
{
    self endon( "snowmobile_event_occurred" );
    self endon( "snowmobile_weapon_stance_change" );
    animscripts\shoot_behavior::_ID10054( "normal" );
}

_ID34904()
{
    if ( !_func_02F( self._ID322 ) )
    {
        self._ID33785 = undefined;
        self._ID33810 = undefined;
        self._ID33816 = "none";
        return;
    }

    self._ID33785 = self._ID322;
    self._ID33810 = self._ID322 _meth_809E();
    var_0 = _func_0F5( self._ID740, self._ID322._ID740 );

    if ( var_0 < 1000000 )
        self._ID33816 = "full";
    else if ( var_0 < 4000000 )
        self._ID33816 = "burst";
    else
        self._ID33816 = "single";

    if ( _func_02F( self._ID322._ID40065 ) )
    {
        var_1 = 0.5;
        var_2 = self._ID33785._ID40065;
        var_3 = self._ID29969;
        var_4 = var_3._ID740 - var_2._ID740;
        var_5 = _func_11F( var_2._ID65 );
        var_6 = _func_11E( var_2._ID65 );
        var_7 = _func_0FB( var_4, var_5 );

        if ( var_7 < 0 )
        {
            var_8 = var_2 _meth_8290() * var_1;
            var_8 *= 17.6;

            if ( var_8 > 50 )
            {
                var_9 = _func_0FB( var_4, var_6 );
                var_9 /= 3;

                if ( var_9 > 128 )
                    var_9 = 128;
                else if ( var_9 < -128 )
                    var_9 = -128;

                if ( var_9 > 0 )
                    var_9 = 128 - var_9;
                else
                    var_9 = -128 - var_9;

                self._ID33785 = undefined;
                self._ID33810 = var_2._ID740 + var_8 * var_5 + var_9 * var_6;
                return;
            }
        }
    }
}

_ID34896()
{
    self endon( "killanimscript" );
    self endon( "end_shoot_while_driving" );
    self notify( "doing_shootWhileDriving" );
    self endon( "doing_shootWhileDriving" );

    for (;;)
    {
        if ( !self._ID6323 )
        {
            wait 0.5;
            continue;
        }

        animscripts\combat_utility::_ID33818();
    }
}

_ID34891()
{
    if ( !self._ID29969._ID36389 )
        return 0;

    if ( !animscripts\combat_utility::_ID24716( 0 ) )
        return 0;

    if ( !animscripts\utility::_ID39992() )
        return 0;

    _unknown_0B03();
    self notify( "abort_reload" );
    return 1;
}

_ID34892()
{
    self endon( "snowmobile_event_occurred" );
    self._ID36450 = 1;
    self waittill( "start_blending_reload" );
    self _meth_8155( %sm_aiming, 0, 0.25 );
    self _meth_811C( "gun_down", animscripts\utility::_ID3153( "gun_down" ), 1, 0.25 );
    animscripts\shared::_ID11529( "gun_down" );
    self _meth_814C( animscripts\utility::_ID3153( "gun_down" ), 0 );
    self _meth_8119( "reload_anim", animscripts\utility::_ID3153( "reload" ), %body, 1, 0.25 );
    animscripts\shared::_ID11529( "reload_anim" );
    self _meth_814C( %sm_reload, 0.2 );
    self _meth_811C( "gun_up", animscripts\utility::_ID3153( "gun_up" ), 1, 0.25 );
    self._ID17515 = 1;
    animscripts\shared::_ID11529( "gun_up", ::_unknown_0BEB );
    self._ID36450 = undefined;
    self _meth_814C( %sm_reload, 0.1 );
    self _meth_8155( %sm_aiming, 1, 0.1 );

    if ( _func_02F( self._ID17515 ) )
    {
        self._ID17515 = undefined;
        animscripts\shared::_ID11529( "gun_up", ::_unknown_0C26 );
        self _meth_814C( animscripts\utility::_ID3153( "gun_up" ), 0 );
    }
}

_ID34902( var_0 )
{
    if ( var_0 == "start_aim" )
        return 1;
}

_ID34901( var_0 )
{
    if ( var_0 == "end" )
        return 1;
}

_ID34903( var_0 )
{
    if ( var_0 == "start_lean" )
        return 1;
}

_ID34899()
{
    self endon( "killanimscript" );
    self endon( "stop tracking" );
    self endon( "snowmobile_weapon_stance_change" );
    var_0 = 0.05;
    var_1 = 8;
    var_2 = 0;
    var_3 = 0;
    var_4 = 1;

    for (;;)
    {
        animscripts\track::_ID19507();
        var_5 = ( self._ID740[0], self._ID740[1], self _meth_80AF()[2] );
        var_6 = self._ID33810;

        if ( _func_02F( self._ID33785 ) )
            var_6 = self._ID33785 _meth_809E();

        if ( !_func_02F( var_6 ) )
        {
            var_3 = 0;
            var_7 = self _meth_819E();

            if ( _func_02F( var_7 ) )
                var_3 = _func_0F0( self._ID65[1] - var_7[1] );
        }
        else
        {
            var_8 = var_6 - var_5;
            var_9 = _func_11A( var_8 );
            var_3 = self._ID65[1] - var_9[1];
            var_3 = _func_0F0( var_3 );
        }

        if ( var_3 > self._ID894 || var_3 < self._ID590 )
            var_3 = 0;

        if ( var_4 )
            var_4 = 0;
        else
        {
            var_10 = var_3 - var_2;

            if ( _func_0C3( var_10 ) > var_1 )
                var_3 = var_2 + var_1 * _ID42237::_ID34160( var_10 );
        }

        var_2 = var_3;
        var_11 = _func_0C4( _func_0E6( 0 - var_3, 0 ), 90 ) / 90 * self._ID7._ID2433;
        var_12 = _func_0C4( _func_0E6( var_3, 0 ), 90 ) / 90 * self._ID7._ID2433;
        self _meth_8156( %sm_aim_4, var_11, var_0 );
        self _meth_8156( %sm_aim_6, var_12, var_0 );
        wait 0.05;
    }
}

_ID34900()
{
    self endon( "killanimscript" );
    self endon( "stop tracking" );
    var_0 = 0.05;
    var_1 = 5;
    var_2 = 20;
    var_3 = 15;
    var_4 = 40;
    var_5 = 30;
    var_6 = 0;
    var_7 = 0;
    var_8 = 1;

    for (;;)
    {
        animscripts\track::_ID19507();
        var_9 = ( self._ID740[0], self._ID740[1], self _meth_80AF()[2] );
        var_10 = self._ID33810;

        if ( _func_02F( self._ID33785 ) )
            var_10 = self._ID33785 _meth_809E();

        if ( !_func_02F( var_10 ) )
        {
            var_7 = 0;
            var_11 = self _meth_819E();

            if ( _func_02F( var_11 ) )
                var_7 = _func_0F0( self._ID65[1] - var_11[1] );
        }
        else
        {
            var_12 = var_10 - var_9;
            var_13 = _func_11A( var_12 );
            var_7 = self._ID65[1] - var_13[1];
            var_7 = _func_0F0( var_7 );
        }

        if ( _func_02F( self._ID36450 ) || var_7 > 0 && var_7 - self._ID894 * self._ID10860 > 0 || var_7 < 0 && var_7 - self._ID590 * self._ID10860 < 0 )
            var_7 = 0;

        if ( var_8 )
            var_8 = 0;
        else
        {
            if ( var_6 < -180 + var_4 && var_7 > 180 - var_5 )
                var_7 = -179;

            if ( var_6 > 180 - var_4 && var_7 < -180 + var_5 )
                var_7 = 179;

            var_14 = var_7 - var_6;
            var_15 = var_2 - var_1 * _func_0C3( var_14 ) / 180 + var_1;

            if ( _func_02F( self._ID36450 ) )
            {
                var_15 = var_3;

                if ( _func_0C3( var_6 ) < 45 )
                    self notify( "start_blending_reload" );
            }

            if ( _func_0C3( var_14 ) > var_15 )
                var_7 = var_6 + var_15 * _ID42237::_ID34160( var_14 );
        }

        var_6 = var_7;
        var_16 = _func_0E6( -90 - var_7, 0 ) / 90 * self._ID7._ID2433;
        var_17 = _func_0C4( _func_0E6( 0 - var_7, 0 ), 90 ) / 90 * self._ID7._ID2433;
        var_18 = _func_0E6( 90 - _func_0C3( var_7 ), 0 ) / 90 * self._ID7._ID2433;
        var_19 = _func_0C4( _func_0E6( var_7, 0 ), 90 ) / 90 * self._ID7._ID2433;
        var_20 = _func_0E6( -90 + var_7, 0 ) / 90 * self._ID7._ID2433;
        self _meth_8156( %sm_aim_1, var_16, var_0 );
        self _meth_8156( %sm_aim_4_delta, var_17, var_0 );
        self _meth_8156( %sm_aim_5_delta, var_18, var_0 );
        self _meth_8156( %sm_aim_6_delta, var_19, var_0 );
        self _meth_8156( %sm_aim_3, var_20, var_0 );
        wait 0.05;
    }
}

_ID34881( var_0, var_1, var_2 )
{
    var_3 = undefined;
    var_4 = undefined;
    var_5 = 0;

    for ( var_6 = 0; var_6 < var_0.size; var_6++ )
    {
        var_7 = animscripts\utility::_ID1735( var_2 - var_1[var_6] );

        if ( !_func_02F( var_3 ) || var_7 < var_5 )
        {
            var_4 = var_3;
            var_3 = var_0[var_6];
            var_5 = var_7;
            continue;
        }

        if ( !_func_02F( var_4 ) )
            var_4 = var_0[var_6];
    }

    var_8 = var_3;

    if ( _func_02F( anim._ID28535 ) && var_8 == anim._ID28535 && _func_03D() - anim._ID28536 < 500 )
        var_8 = var_4;

    anim._ID28535 = var_8;
    anim._ID28536 = _func_03D();
    return var_8;
}

_ID34877()
{
    var_0 = self._ID29969;
    var_1 = var_0._ID28502;
    var_1 = ( var_1[0], var_1[1], _func_0BA( 200, 400 ) ) * 0.75;

    if ( _func_0F8( var_1 ) > 1000000 )
        var_1 = _func_119( var_1 ) * 1000;

    var_2 = _func_06A( "script_origin", self._ID740 );
    var_2 _meth_82BD( ( 0, 0, 40 ), 15, var_1 );
    self _meth_8053( var_2 );
    var_2 thread _unknown_11B4();
}

_ID34890()
{
    if ( _func_02F( self._ID29969 ) && self._ID29969._ID1282 == "snowmobile_friendly" )
    {
        animscripts\death::_ID27200( level._ID30895["snowmobile"]["small"]["death"]["back"] );
        return 1;
    }

    var_0 = [];
    var_0[0] = level._ID30895["snowmobile"]["small"]["death"]["back"];
    var_0[1] = level._ID30895["snowmobile"]["small"]["death"]["right"];
    var_0[2] = level._ID30895["snowmobile"]["small"]["death"]["left"];
    var_1 = [];
    var_1[0] = -180;
    var_1[1] = -90;
    var_1[2] = 90;
    var_2 = _unknown_116D( var_0, var_1, self._ID259 );
    animscripts\death::_ID27200( var_2 );
    return 1;
}

_ID34876()
{
    var_0 = self._ID29969;

    if ( !_func_02F( var_0 ) )
        return _unknown_11C1();

    var_1 = var_0._ID28502;
    _unknown_11AF();
    var_2 = _func_11A( var_1 );
    var_3 = _func_0F0( var_2[1] - self._ID65[1] );
    var_4 = [];
    var_4[0] = level._ID30895["snowmobile"]["big"]["death"]["back"];
    var_4[1] = level._ID30895["snowmobile"]["big"]["death"]["left"];
    var_4[2] = level._ID30895["snowmobile"]["big"]["death"]["front"];
    var_4[3] = level._ID30895["snowmobile"]["big"]["death"]["right"];
    var_5 = [];
    var_5[0] = -180;
    var_5[1] = -90;
    var_5[2] = 0;
    var_5[3] = 90;
    var_6 = _unknown_1215( var_4, var_5, var_3 );
    animscripts\death::_ID27200( var_6 );
    return 1;
}

_ID53889()
{
    var_0 = self._ID29969;

    if ( !_func_02F( var_0 ) )
        return _unknown_1269();

    _unknown_1252();
    var_1 = [];
    var_1[0] = level._ID30895["snowmobile"]["big"]["death"]["back"];
    var_1[1] = level._ID30895["snowmobile"]["big"]["death"]["right"];
    var_1[2] = level._ID30895["snowmobile"]["big"]["death"]["left"];
    var_2 = [];
    var_2[0] = self._ID65[2];
    var_2[1] = self._ID65[2] - 90;
    var_2[2] = self._ID65[2] + 90;
    var_3 = _unknown_129D( var_1, var_2, self._ID65[2] );
    self _meth_8055();
    animscripts\death::_ID27200( var_3 );
    return 1;
}

_ID10350()
{
    var_0 = self._ID740;

    for ( var_1 = 0; var_1 < 60; var_1++ )
    {
        wait 0.05;
        var_0 = self._ID740;
    }

    wait 3;

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID34893( var_0 )
{
    self._ID7._ID3291["idle"] = level._ID30895["snowmobile"][var_0]["idle"];
    self._ID7._ID3291["drive"] = level._ID30895["snowmobile"][var_0]["drive"];
    self._ID7._ID3291["fire"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["single"] = animscripts\utility::_ID3291( level._ID30895["snowmobile"][var_0]["single"] );
    self._ID7._ID3291["burst2"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["burst3"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["burst4"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["burst5"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["burst6"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["semi2"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["semi3"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["semi4"] = level._ID30895["snowmobile"][var_0]["fire"];
    self._ID7._ID3291["semi5"] = level._ID30895["snowmobile"][var_0]["fire"];
}

_ID34894( var_0 )
{
    self._ID7._ID3291 = [];
    _unknown_14F9( "driver" );
    self._ID7._ID3291["left2right"] = level._ID30895["snowmobile"]["driver"]["left2right"];
    self._ID7._ID3291["right2left"] = level._ID30895["snowmobile"]["driver"]["right2left"];
    self._ID7._ID3291["straight_level_left"] = level._ID30895["snowmobile"]["driver"]["straight_level"]["left"];
    self._ID7._ID3291["straight_level_center"] = level._ID30895["snowmobile"]["driver"]["straight_level"]["center"];
    self._ID7._ID3291["straight_level_right"] = level._ID30895["snowmobile"]["driver"]["straight_level"]["right"];
    self._ID7._ID3291["add_aim_left_left"] = level._ID30895["snowmobile"]["driver"]["add_aim_left"]["left"];
    self._ID7._ID3291["add_aim_left_center"] = level._ID30895["snowmobile"]["driver"]["add_aim_left"]["center"];
    self._ID7._ID3291["add_aim_left_right"] = level._ID30895["snowmobile"]["driver"]["add_aim_left"]["right"];
    self._ID7._ID3291["add_aim_right_left"] = level._ID30895["snowmobile"]["driver"]["add_aim_right"]["left"];
    self._ID7._ID3291["add_aim_right_center"] = level._ID30895["snowmobile"]["driver"]["add_aim_right"]["center"];
    self._ID7._ID3291["add_aim_right_right"] = level._ID30895["snowmobile"]["driver"]["add_aim_right"]["right"];

    if ( var_0 )
    {
        self._ID7._ID3291["event_jump"] = level._ID30895["snowmobile"]["driver"]["shoot_jump"];
        self._ID7._ID3291["event_bump"] = level._ID30895["snowmobile"]["driver"]["shoot_bump"];
        self._ID7._ID3291["event_bump_big"] = level._ID30895["snowmobile"]["driver"]["shoot_bump_big"];
        self._ID7._ID3291["event_sway"] = [];
        self._ID7._ID3291["event_sway"]["left"] = level._ID30895["snowmobile"]["driver"]["shoot_sway_left"];
        self._ID7._ID3291["event_sway"]["right"] = level._ID30895["snowmobile"]["driver"]["shoot_sway_right"];
        self._ID7._ID3291["event_restore"] = %sm_aiming;
    }
    else
    {
        self._ID7._ID3291["event_jump"] = level._ID30895["snowmobile"]["driver"]["drive_jump"];
        self._ID7._ID3291["event_bump"] = level._ID30895["snowmobile"]["driver"]["drive_bump"];
        self._ID7._ID3291["event_bump_big"] = level._ID30895["snowmobile"]["driver"]["drive_bump_big"];
        self._ID7._ID3291["event_sway"] = [];
        self._ID7._ID3291["event_sway"]["left"] = level._ID30895["snowmobile"]["driver"]["drive_sway_left"];
        self._ID7._ID3291["event_sway"]["right"] = level._ID30895["snowmobile"]["driver"]["drive_sway_right"];
        self._ID7._ID3291["event_restore"] = %sm_turn;
    }
}

_ID34895( var_0 )
{
    self._ID7._ID3291 = [];
    _unknown_17AA( "passenger" );
    self._ID7._ID3291["hide"] = level._ID30895["snowmobile"]["passenger"]["hide"];
    self._ID7._ID3291["lean_left"] = level._ID30895["snowmobile"]["passenger"]["add_lean"]["left"];
    self._ID7._ID3291["lean_right"] = level._ID30895["snowmobile"]["passenger"]["add_lean"]["right"];
    self._ID7._ID3291["reload"] = level._ID30895["snowmobile"]["passenger"]["reload"];
    self._ID7._ID3291["gun_up"] = level._ID30895["snowmobile"]["passenger"]["gun_up"];
    self._ID7._ID3291["gun_down"] = level._ID30895["snowmobile"]["passenger"]["gun_down"];
    self._ID7._ID3291["aim_left_left"] = level._ID30895["snowmobile"]["passenger"]["aim_left"]["left"];
    self._ID7._ID3291["aim_left_center"] = level._ID30895["snowmobile"]["passenger"]["aim_left"]["center"];
    self._ID7._ID3291["aim_left_right"] = level._ID30895["snowmobile"]["passenger"]["aim_left"]["right"];
    self._ID7._ID3291["aim_right_left"] = level._ID30895["snowmobile"]["passenger"]["aim_right"]["left"];
    self._ID7._ID3291["aim_right_center"] = level._ID30895["snowmobile"]["passenger"]["aim_right"]["center"];
    self._ID7._ID3291["aim_right_right"] = level._ID30895["snowmobile"]["passenger"]["aim_right"]["right"];
    self._ID7._ID3291["add_aim_backleft_left"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backleft"]["left"];
    self._ID7._ID3291["add_aim_backleft_center"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backleft"]["center"];
    self._ID7._ID3291["add_aim_backleft_right"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backleft"]["right"];
    self._ID7._ID3291["add_aim_backright_left"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backright"]["left"];
    self._ID7._ID3291["add_aim_backright_center"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backright"]["center"];
    self._ID7._ID3291["add_aim_backright_right"] = level._ID30895["snowmobile"]["passenger"]["add_aim_backright"]["right"];
    self._ID7._ID3291["straight_level_left"] = level._ID30895["snowmobile"]["passenger"]["straight_level"]["left"];
    self._ID7._ID3291["straight_level_center"] = level._ID30895["snowmobile"]["passenger"]["straight_level"]["center"];
    self._ID7._ID3291["straight_level_right"] = level._ID30895["snowmobile"]["passenger"]["straight_level"]["right"];

    if ( var_0 )
    {
        self._ID7._ID3291["event_jump"] = level._ID30895["snowmobile"]["passenger"]["drive_jump"];
        self._ID7._ID3291["event_bump"] = level._ID30895["snowmobile"]["passenger"]["drive_bump"];
        self._ID7._ID3291["event_bump_big"] = level._ID30895["snowmobile"]["passenger"]["drive_bump_big"];
        self._ID7._ID3291["event_sway"] = [];
        self._ID7._ID3291["event_sway"]["left"] = level._ID30895["snowmobile"]["passenger"]["drive_sway_left"];
        self._ID7._ID3291["event_sway"]["right"] = level._ID30895["snowmobile"]["passenger"]["drive_sway_right"];
        self._ID7._ID3291["event_restore"] = %sm_aiming;
    }
    else
    {
        self._ID7._ID3291["event_jump"] = level._ID30895["snowmobile"]["passenger"]["hide_jump"];
        self._ID7._ID3291["event_bump"] = level._ID30895["snowmobile"]["passenger"]["hide_bump"];
        self._ID7._ID3291["event_bump_big"] = level._ID30895["snowmobile"]["passenger"]["hide_bump_big"];
        self._ID7._ID3291["event_sway"] = [];
        self._ID7._ID3291["event_sway"]["left"] = level._ID30895["snowmobile"]["passenger"]["hide_sway_left"];
        self._ID7._ID3291["event_sway"]["right"] = level._ID30895["snowmobile"]["passenger"]["hide_sway_right"];
        self._ID7._ID3291["event_restore"] = %sm_turn;
    }
}
