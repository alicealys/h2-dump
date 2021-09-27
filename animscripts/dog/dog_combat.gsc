// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self endon( "killanimscript" );
    self._ID24424 = 1;

    if ( !_func_1A7( self._ID322 ) )
        _unknown_0320();
    else
    {
        if ( _func_1B3( self._ID322 ) )
        {
            _unknown_01F5();
            return;
        }

        _unknown_02B2();
    }
}

_ID21367()
{
    self endon( "pvd_melee_interrupted" );

    if ( !_func_02F( self._ID23438._ID27731 ) )
        return;

    var_0 = self._ID23438._ID27731;

    if ( _func_02F( var_0._ID27520 ) )
        return;

    var_0._ID27520 = 1;

    if ( _ID42407::_ID21359( self._ID23438 ) )
    {
        _unknown_009A( self._ID23438, self );
        return;
    }

    self._ID23438._ID35374 = 1;
    self._ID23438 _meth_82CA( 1 );
    _func_157( level._ID1426["dog_bite_blood"], var_0, "tag_torso" );
    wait 1;

    if ( !_func_02F( self ) || !_func_02F( self._ID23438 ) )
        return;

    var_1 = _unknown_0898();
    self._ID23438 _meth_813B( 0 );

    if ( !_func_1A7( self._ID23438 ) )
        return;

    self._ID23438 _unknown_00FB( self );
    self._ID23438 _meth_818E( "default", 5 );
    waitframe;
    _func_034( "ui_deadquote", "" );
    thread _unknown_0123( self._ID23438, var_1 );
}
#using_animtree("dog");

_ID21443( var_0, var_1 )
{
    var_0._ID11424 = 1;
    var_2 = _unknown_08D8();
    self _meth_8116( "meleeanim", %german_shepherd_player_getoff, 1, 0.1, var_2 );
    var_0._ID27731 notify( "pvd_melee_interrupted" );
    var_0._ID27731 notify( "pvd_melee_done" );
    var_0._ID27731 _unknown_0876( var_0 );

    if ( !_ID42407::_ID21359( var_0 ) )
        var_0 _unknown_0163( var_1 );
}

_ID11448( var_0 )
{
    if ( _ID42407::_ID21988() )
        self _meth_80F3( 0 );

    self _meth_80F7();

    if ( _func_1A7( var_0 ) )
        self _meth_8058( self._ID740, var_0 );
    else
        self _meth_8058( self._ID740 );
}

_ID11418( var_0, var_1 )
{
    if ( _ID42407::_ID20614() )
        return;

    wait 1.5;
    thread _unknown_01D1( var_0 );
    var_2 = _func_1B0( var_0 );
    var_2._ID1331 = 0;
    var_2._ID1339 = 15;

    if ( var_1 )
        var_2 _meth_80D3( "hud_hyena_melee", 50, 50 );
    else
        var_2 _meth_80D3( "hud_dog_melee", 50, 50 );

    var_2._ID44 = "center";
    var_2._ID45 = "middle";
    var_2._ID499 = "center";
    var_2._ID1284 = "middle";
    var_2._ID408 = 1;
    var_2._ID493 = 1;
    var_2._ID55 = 0;
    var_2 _meth_808B( 1 );
    var_2._ID55 = 1;
}

_ID11421( var_0 )
{
    var_1 = var_0 _ID42313::_ID9200( "default", 1 );
    var_1._ID196 = ( 1, 1, 1 );
    var_1 _meth_80D1( level._ID11419 );
    var_1._ID1331 = 0;
    var_1._ID1339 = -30;
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1._ID499 = "center";
    var_1._ID1284 = "middle";
    var_1._ID408 = 1;
    var_1._ID493 = 1;
    var_1._ID55 = 0;
    var_1 _meth_808B( 1 );
    var_1._ID55 = 1;
}

_ID3654()
{
    self _meth_814C( %root, 0.1 );
    var_0 = %german_shepherd_attack_player_miss_b;

    if ( _func_02F( self._ID322 ) )
    {
        var_1 = _func_11F( ( 0, self._ID278, 0 ) );
        var_2 = _func_119( self._ID322._ID740 - self._ID740 );
        var_3 = self._ID322._ID740 - self._ID740 + var_1 * 40;

        if ( _func_0FB( var_2, var_1 ) > 0.707 || _func_0FB( var_3, var_1 ) > 0 )
            thread animscripts\dog\dog_stop::_ID22623( "normal" );
        else
        {
            self._ID34246 = 1;
            thread _unknown_036C();

            if ( var_2[0] * var_1[1] - var_2[1] * var_1[0] > 0 )
                var_0 = %german_shepherd_attack_player_miss_turnr;
            else
                var_0 = %german_shepherd_attack_player_miss_turnl;
        }
    }

    self _meth_811C( "miss_anim", var_0, 1, 0, 1 );
    var_4 = _func_067( var_0 );
    animscripts\notetracks::_ID11534( var_4 - 0.1, "miss_anim" );
    self notify( "stop tracking" );
}

_ID3655()
{
    self endon( "killanimscript" );
    wait 0.6;
    self _meth_819B( "face enemy" );
}

_ID21446( var_0 )
{
    var_0 endon( "death" );
    var_0 _meth_830B( 0 );
    wait 0.75;
    var_0 _meth_830B( 1 );
}

_ID11478()
{
    if ( _func_02F( self._ID23438 ) )
    {
        if ( _func_02F( self._ID23438._ID39980 ) && self._ID23438._ID39980 )
        {
            self._ID23438 notify( "force_out_of_uav" );
            return undefined;
        }

        if ( self._ID23438 _meth_806F() && _ID42237::_ID14396( "price_picked_up" ) && !_ID42237::_ID14385( "price_picked_up" ) )
            return undefined;

        if ( self._ID23438 _meth_82EB() )
            return undefined;

        if ( self._ID23438._ID586 && self._ID23438._ID511 )
            return undefined;
    }

    if ( _func_02F( self._ID322 ) )
    {
        if ( _func_0F4( self._ID740, self._ID322._ID740 ) < 32 )
            return self _meth_81F9();
    }

    return self _meth_81F9( _func_11F( self._ID65 ) );
}

_ID18025( var_0 )
{
    switch ( var_0 )
    {

    }

    case "stop_tracking":
    case "dog_melee":
}

_ID2093()
{
    var_0 = self._ID23438 _meth_8082();

    if ( var_0 == 0 )
        return 0;

    if ( var_0 < 0.25 )
    {
        self._ID23438 _meth_8056( var_0 + 0.25 );
        return 1;
    }

    return 0;
}

_ID29658()
{
    var_0 = self._ID23438 _meth_8082();

    if ( var_0 > 0.25 )
        self._ID23438 _meth_8056( var_0 - 0.25 );
    else
        self._ID23438 _meth_8056( 0.01 );
}

_ID18027( var_0 )
{
    switch ( var_0 )
    {

    }

    case "dogbite_damage":
    case "dog_lunge":
    case "dog_early":
    case "stop_tracking":
    case "dog_melee":
}

_ID51055()
{
    self waittill( "death" );
    _unknown_0908();
}

_ID17752( var_0 )
{
    switch ( var_0 )
    {

    }

    case "dogbite_damage":
}

_ID32383()
{
    wait 0.1;
    self._ID46341 = self._ID23438._ID17476._ID11449 / _unknown_0D7E();
    thread _unknown_0A30();
    self._ID23354 = _func_03D();
}

_ID27794()
{
    self._ID21913 = 0;
    self._ID11480 = 0;
}

_ID23428()
{
    thread _ID42407::_ID27079( "anml_dog_attack_jump" );
    self._ID23438 = self._ID322;

    if ( !_func_02F( self._ID23438._ID11474 ) )
        self._ID23438 _unknown_0779();

    var_0 = 30;
    var_1 = self._ID633 + var_0;

    for (;;)
    {
        if ( !_func_1A7( self._ID322 ) )
            break;

        if ( !_func_1B3( self._ID322 ) )
            break;

        if ( _ID42407::_ID20581( self._ID322 ) )
        {
            _unknown_08DB();
            continue;
        }

        if ( _func_02F( self._ID23438._ID1065 ) && self._ID23438._ID1065 != self || _func_02F( self._ID23438._ID27731 ) && _func_02F( self._ID23438._ID27731._ID20101 ) )
        {
            if ( _unknown_0981( var_1 ) )
                break;
            else
            {
                _unknown_091C();
                continue;
            }
        }

        if ( _unknown_089C() )
        {
            _unknown_0929();
            continue;
        }

        self _meth_819B( "face enemy" );
        self _meth_819A( "zonly_physics" );
        self._ID906 = 0;
        _unknown_09BD();
        self _meth_814C( %root, 0.1 );
        self _meth_820C();
        self._ID23438 _unknown_08DD( 500 );

        if ( _unknown_08BA() )
        {
            self._ID23438._ID21913 = _func_03D();
            self._ID23438._ID11480++;
            self _meth_811C( "meleeanim", %german_shepherd_run_attack_b, 1, 0.2, 1 );
            animscripts\shared::_ID11529( "meleeanim", ::_unknown_07A3 );
        }
        else
        {
            thread _unknown_0BB0();
            self._ID23438._ID3627 = 1;
            self._ID23438._ID586 = 0;
            self._ID23438._ID1760 = undefined;
            thread _unknown_0906();
            self _meth_811C( "meleeanim", %german_shepherd_attack_player, 1, 0.2, 1 );
            self _meth_811C( "meleeanim", %german_shepherd_attack_player_late, 1, 0, 1 );
            self _meth_8156( %attack_player, 1, 0, 1 );
            self _meth_8156( %attack_player_late, 0.01, 0, 1 );
            animscripts\shared::_ID11529( "meleeanim", ::_unknown_084A );
            self notify( "dog_no_longer_melee_able" );
            self _meth_82CA( 1 );
            self _meth_8055();
        }

        self._ID906 = 1;
        wait 0.05;

        if ( _unknown_0A91( var_1 ) )
            break;
    }

    self._ID906 = 1;
    self _meth_819A( "none" );
}

_ID7887()
{
    self waittill( "death" );
    self._ID23438._ID3627 = undefined;
}

_ID11413()
{
    if ( _func_02F( self._ID23438._ID11484 ) )
        return 1;

    if ( _func_03A( "survival_chaos" ) == 1 )
        return 1;

    if ( _ID42407::_ID20581( self._ID23438 ) )
        return 1;

    if ( _func_02F( self._ID23438._ID34345 ) )
        return 1;

    if ( _func_03D() - self._ID23438._ID21913 > 8000 )
        self._ID23438._ID11480 = 0;

    return self._ID23438._ID11480 < self._ID23438._ID17476._ID11434 && self._ID23438._ID486 > 25;
}

_ID33983()
{
    return _func_02F( self._ID322._ID11461 ) && _func_03D() < self._ID322._ID11461;
}

_ID32704( var_0 )
{
    self._ID11461 = _func_03D() + var_0;
}

_ID23445()
{
    if ( !_func_1A7( self._ID322 ) )
        return;

    self._ID322 notify( "dog_attacks_ai" );

    if ( _func_02F( self._ID322._ID1065 ) || _unknown_0A52() || !_func_0D4( self._ID322 ) || _func_02F( self._ID322._ID20957 ) )
        _unknown_0AF2();
    else
    {
        self._ID322 _unknown_0A7B( 500 );
        self._ID906 = 0;
        self _meth_819A( "zonly_physics" );
        self._ID846 = 0;
        self _meth_820C();
        self._ID23439 = !_func_02F( self._ID322._ID22746 ) && _func_02F( self._ID322._ID7._ID11498 ) || _func_02F( self._ID23426 ) || _func_0B7( 100 ) > 50;
        var_0 = [];
        var_1[0] = %root;
        var_1[1] = %german_shepherd_attack_ai_01_start_a;
        var_1[2] = %german_shepherd_attack_ai_02_idle_a;

        if ( self._ID23439 )
        {
            var_1[3] = %german_shepherd_attack_ai_03_pushed_a;
            var_1[4] = %german_shepherd_attack_ai_04_middle_a;
            var_1[5] = %german_shepherd_attack_ai_05_kill_a;
            var_2 = 5;
        }
        else
        {
            var_1[3] = %german_shepherd_attack_ai_03_shot_a;
            var_2 = 3;
        }

        var_3 = _func_11A( self._ID740 - self._ID322._ID740 );
        var_3 = ( 0, var_3[1], 0 );
        self._ID26025 = self._ID322;
        self _meth_82CA( 0 );
        self _meth_814C( var_1[0], 0.1 );
        self _meth_814A( "meleeanim", self._ID322._ID740, var_3, var_1[1] );
        animscripts\shared::_ID11529( "meleeanim", ::_unknown_0C21 );
        self _meth_82CA( 1 );
        self _meth_819A( "zonly_physics" );

        for ( var_4 = 1; var_4 < var_2; var_4++ )
        {
            self _meth_814C( var_1[var_4], 0 );

            if ( !_unknown_0C3E() )
                break;

            if ( !self._ID23439 && var_4 + 1 == var_2 )
                self._ID486 = 1;

            self _meth_811C( "meleeanim", var_1[var_4 + 1], 1, 0, 1 );
            animscripts\shared::_ID11529( "meleeanim" );
        }

        self _meth_8055();

        if ( !self._ID23439 )
        {
            self _meth_8058();
            return;
        }

        self._ID846 = 1;
        self._ID906 = 1;
        self._ID14507 = 0;
    }
}

_ID8367()
{
    self _meth_819B( "face enemy" );
    self _meth_814C( %root, 0.1 );
    self _meth_819A( "zonly_physics" );
    var_0 = [];
    var_0[0] = %german_shepherd_attackidle_b;
    var_0[1] = %german_shepherd_attackidle_bark;
    var_0[2] = %german_shepherd_attackidle_growl;
    var_1 = _ID42237::_ID28945( var_0 );
    thread _unknown_0C9D();
    self _meth_811C( "combat_idle", var_1, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "combat_idle" );
    self notify( "combatIdleEnd" );
}

_ID8368()
{
    self endon( "killanimscript" );
    self endon( "combatIdleEnd" );

    for (;;)
    {
        wait 0.1;
        var_0 = _func_1A2( "player", "classname" );

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            var_2 = var_0[var_1];

            if ( !_func_02F( var_2._ID1065 ) || var_2._ID1065 == self )
                continue;

            var_3 = var_2._ID740 - self._ID740;

            if ( var_3[2] * var_3[2] > 6400 )
                continue;

            var_3 = ( var_3[0], var_3[1], 0 );
            var_4 = _func_0F6( var_3 );

            if ( var_4 < 1 )
                var_3 = _func_11F( self._ID65 );

            if ( var_4 < 30 )
            {
                var_3 *= 3 / var_4;
                self _meth_81D3( self._ID740 - var_3, ( 0, 30, 0 ) );
            }
        }
    }
}

_ID20117()
{
    return _func_02F( self._ID322 ) && _func_02F( self._ID322._ID1065 ) && self._ID322._ID1065 == self;
}

_ID18051( var_0 )
{
    if ( var_0 != "ai_attack_start" )
        return 0;

    if ( !_func_02F( self._ID322 ) )
        return 1;

    if ( self._ID322 != self._ID26025 )
        return 1;

    if ( _func_02F( self._ID322._ID1065 ) )
        return 1;

    self._ID14507 = 1;
    self._ID322._ID1065 = self;
    self._ID322 _meth_81A6( ::_unknown_1046 );
}

_ID7423( var_0 )
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    var_1 = _func_0F5( self._ID740, self._ID322._ID740 );
    return var_1 > var_0 * var_0;
}

_ID28444()
{
    if ( _unknown_12A8() )
    {
        level._ID11419 = &"NEW_HYENA_DEATH_DO_NOTHING_ALT";
        level._ID34906 = "@NEW_HYENA_DEATH_DO_NOTHING_ALT";
    }
    else
    {
        level._ID11419 = &"NEW_DOG_DEATH_DO_NOTHING_ALT";
        level._ID34906 = "@NEW_DOG_DEATH_DO_NOTHING_ALT";
    }

    level._ID11420 = "nothing";
    var_0 = _func_0F3( self._ID740, self._ID322._ID740 );

    if ( var_0 > self._ID633 )
    {
        var_1 = self._ID322._ID740 - self._ID740;
        var_2 = var_0 - self._ID633 / var_0;
        var_1 = ( var_1[0] * var_2, var_1[1] * var_2, var_1[2] * var_2 );
        thread _unknown_0E9B( var_1 );
    }
}

_ID3663( var_0 )
{
    self endon( "death" );
    self endon( "killanimscript" );
    var_1 = 5;
    var_2 = ( var_0[0] / var_1, var_0[1] / var_1, var_0[2] / var_1 );

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        self _meth_81D1( self._ID740 + var_2 );
        wait 0.05;
    }
}

_ID27237()
{
    return _func_1A7( self._ID23438 ) && self._ID23438 _meth_834A();
}

_ID46403()
{
    if ( !_func_02F( self._ID23438._ID11473 ) )
        return;

    if ( _func_02F( self._ID23438._ID50676 ) )
    {
        self._ID23438._ID11473 _ID42313::_ID10476();
        self._ID23438._ID50676 _ID42313::_ID10476();
        self._ID23438._ID52051 _ID42313::_ID10476();
        self._ID23438._ID43874 _ID42313::_ID10476();
    }

    level notify( "clearing_dog_hint" );
}

_ID54519()
{
    if ( _func_02F( self._ID23438._ID11473 ) )
        _unknown_0F4B();

    if ( level._ID794 _ID42237::_ID20583() )
    {
        var_0 = [ "+melee", "+melee_breath", "+melee_zoom" ];
        _ID42407::_ID48474( &"SCRIPT_PLATFORM_DOG_HINT", &"SCRIPT_PLATFORM_DOG_HINT_KEYBOARD", undefined, undefined, var_0 );
        thread _ID42407::_ID46429();
        self._ID23438._ID11473 = level._ID794._ID45565;
    }
    else
    {
        self._ID23438._ID11473 = self._ID23438 _ID42313::_ID9200( "timer", 0.5 );
        self._ID23438._ID11473._ID196 = ( 1, 1, 1 );
        self._ID23438._ID11473 _meth_80D1( &"SCRIPT_PLATFORM_DOG_HINT_KEYBOARD" );
        self._ID23438._ID11473._ID1331 = 0;
        self._ID23438._ID11473._ID1339 = 20;
        self._ID23438._ID11473._ID392 = "timer";
        self._ID23438._ID11473._ID44 = "center";
        self._ID23438._ID11473._ID45 = "middle";
        self._ID23438._ID11473._ID499 = "center";
        self._ID23438._ID11473._ID1284 = "middle";
        self._ID23438._ID11473._ID408 = 1;
        self._ID23438._ID11473._ID493 = 1;
        self._ID23438._ID11473._ID55 = 0.25;
        self._ID23438._ID11473._ID983 = -1;
        self._ID23438._ID11473 thread _ID42237::_ID47857( level._ID794, &"SCRIPT_PLATFORM_DOG_HINT_KEYBOARD", &"SCRIPT_PLATFORM_DOG_HINT", "clearing_dog_hint" );
        self._ID23438._ID50676 = _ID42313::_ID9251( "h1_hud_tutorial_blur", 225, 20 );
        self._ID23438._ID52051 = _ID42313::_ID9251( "h1_hud_tutorial_border", 225, 1 );
        self._ID23438._ID43874 = _ID42313::_ID9251( "h1_hud_tutorial_border", 225, 1 );
        self._ID23438._ID50676._ID1331 = 0;
        self._ID23438._ID50676._ID1339 = 20;
        self._ID23438._ID50676._ID983 = -3;
        self._ID23438._ID50676._ID44 = "center";
        self._ID23438._ID50676._ID45 = "middle";
        self._ID23438._ID50676._ID499 = "center";
        self._ID23438._ID50676._ID1284 = "middle";
        self._ID23438._ID50676._ID408 = 1;
        self._ID23438._ID50676._ID493 = 1;
        self._ID23438._ID50676._ID55 = 0.225;
        self._ID23438._ID52051._ID1331 = 0;
        self._ID23438._ID52051._ID1339 = 10;
        self._ID23438._ID52051._ID983 = -2;
        self._ID23438._ID52051._ID44 = "center";
        self._ID23438._ID52051._ID45 = "middle";
        self._ID23438._ID52051._ID499 = "center";
        self._ID23438._ID52051._ID1284 = "middle";
        self._ID23438._ID52051._ID408 = 1;
        self._ID23438._ID52051._ID493 = 1;
        self._ID23438._ID52051._ID55 = 0.0125;
        self._ID23438._ID43874._ID1331 = 0;
        self._ID23438._ID43874._ID1339 = 30;
        self._ID23438._ID43874._ID983 = -2;
        self._ID23438._ID43874._ID44 = "center";
        self._ID23438._ID43874._ID45 = "middle";
        self._ID23438._ID43874._ID499 = "center";
        self._ID23438._ID43874._ID1284 = "middle";
        self._ID23438._ID43874._ID408 = 1;
        self._ID23438._ID43874._ID493 = 1;
        self._ID23438._ID43874._ID55 = 0.0125;
    }

    _ID49347::_ID47451( 1, 1 );
}

_ID51229()
{
    if ( !_func_02F( self._ID23438._ID11473 ) )
        return;

    level endon( "clearing_dog_hint" );
    thread _unknown_1313();
    self._ID23438._ID11473._ID55 = 1;
    var_0 = self._ID46341 / 1000;

    if ( !level._ID794 _ID42237::_ID20583() )
    {
        self._ID23438._ID43874._ID55 = 0.05;
        self._ID23438._ID52051._ID55 = 0.05;
        self._ID23438._ID50676._ID55 = 0.9;
    }

    wait(var_0);

    if ( !_ID42407::_ID13019( "neck_snapped" ) )
        thread _unknown_136F();
}

_ID46893()
{
    level endon( "clearing_dog_hint" );
    _ID42407::_ID13027( "neck_snapped" );

    if ( level._ID794 _ID42237::_ID20583() )
    {
        level thread _ID42407::_ID47734();
        return;
    }

    if ( !_func_02F( self ) )
        return;

    _unknown_1270();
}

_ID43108()
{
    self endon( "neck_snapped" );
    level endon( "clearing_dog_hint" );

    if ( !_func_02F( self ) )
        return;

    if ( !_func_02F( self._ID23438._ID11473 ) )
        return;

    if ( _func_02F( self._ID23438._ID50676 ) )
    {
        var_0 = 1.0;
        self._ID23438._ID11473 _meth_80D1( &"SCRIPT_PLATFORM_DOG_HINT_KEYBOARD_FAIL" );
        wait 0.05;
        self._ID23438._ID11473 _meth_808B( var_0 );
        self._ID23438._ID50676 _meth_808B( var_0 );
        self._ID23438._ID52051 _meth_808B( var_0 );
        self._ID23438._ID43874 _meth_808B( var_0 );
        self._ID23438._ID11473._ID55 = 0;
        self._ID23438._ID50676._ID55 = 0;
        self._ID23438._ID52051._ID55 = 0;
        self._ID23438._ID43874._ID55 = 0;
        wait(var_0);
        _unknown_12FC();
    }
    else
        thread _ID42407::_ID52184();
}

_ID11423()
{
    wait 0.7;

    if ( _func_02F( self ) )
        self _meth_8055();
}

_ID11422()
{
    self endon( "death" );
    wait 1.5;

    if ( _func_02F( self ) )
        self _meth_82CA( 1 );
}

_ID11441()
{
    self endon( "killanimscript" );
    self endon( "dog_no_longer_melee_able" );

    if ( !_ID42407::_ID13023( "neck_snapped" ) )
        _ID42407::_ID13024( "neck_snapped" );

    var_0 = 0;
    self waittill( "dog_early_notetrack" );

    while ( _unknown_134F() )
        wait 0.05;

    var_1 = 0;

    for (;;)
    {
        if ( !var_0 )
        {
            if ( _unknown_1361() )
            {
                var_0 = 1;

                if ( _func_02F( self._ID23354 ) && _func_1A7( self._ID23438 ) )
                {
                    if ( _func_03D() - self._ID23354 <= self._ID46341 )
                    {
                        self._ID23438 _unknown_1592( var_1 );
                        self._ID23438._ID27731._ID24701 = 1;
                        _ID42407::_ID13025( "neck_snapped" );
                        self notify( "melee_stop" );
                        self _meth_8116( "dog_death_anim", %german_shepherd_player_neck_snap, 1, 0.2, 1 );
                        thread _unknown_151A();
                        self _meth_82CA( 0 );
                        _ID42407::_ID16864( "DOWN_BOY_DOWN" );
                        self waittillmatch( "dog_death_anim",  "dog_death"  );
                        thread _ID42237::_ID27077( "dog_neckbreak", self _meth_80AF() );
                        self _meth_82CA( 1 );
                        self._ID7._ID24881 = 1;
                        self._ID11445 = 1;
                        var_2 = self._ID23438._ID740 - self._ID740;
                        var_2 = ( var_2[0], var_2[1], 0 );
                        _ID42407::_ID54515( self._ID740, "melee", 50 );
                        thread _unknown_156A();
                        _ID45456::_ID54623( self );
                        self _meth_8058( self _meth_80AF() - var_2, self._ID23438 );
                        self notify( "killanimscript" );
                    }
                    else
                    {
                        self._ID23438 _unknown_163C( var_1 );
                        self._ID23438._ID27731 _unknown_187E();
                        self _meth_8156( %attack_player, 0.01, 0.2, 1 );
                        self _meth_8156( %attack_player_late, 1, 0.2, 1 );

                        if ( _unknown_18B4() )
                        {
                            level._ID11419 = &"NEW_HYENA_DEATH_TOO_LATE_ALT";
                            level._ID34906 = "@NEW_HYENA_DEATH_TOO_LATE_ALT";
                        }
                        else
                        {
                            level._ID11419 = &"NEW_DOG_DEATH_TOO_LATE_ALT";
                            level._ID34906 = "@NEW_DOG_DEATH_TOO_LATE_ALT";
                        }

                        level._ID11420 = "late";
                    }

                    return;
                }

                var_1 = 1;

                if ( self._ID23438 _unknown_1693() )
                {
                    if ( _unknown_18E7() )
                    {
                        level._ID11419 = &"NEW_HYENA_DEATH_TOO_SOON_ALT";
                        level._ID34906 = "@NEW_HYENA_DEATH_TOO_SOON_ALT";
                    }
                    else
                    {
                        level._ID11419 = &"NEW_DOG_DEATH_TOO_SOON_ALT";
                        level._ID34906 = "@NEW_DOG_DEATH_TOO_SOON_ALT";
                    }

                    level._ID11420 = "soon";
                    var_3 = _unknown_190C();
                    self _meth_8116( "meleeanim", %german_shepherd_player_neck_miss, 1, 0.2, var_3 );
                    self._ID23438._ID27731 _unknown_1917( var_3 );
                    thread _unknown_160B();
                    return;
                }
            }
        }
        else if ( !_unknown_14E7() )
            var_0 = 0;

        wait 0.05;
    }
}

_ID6731()
{
    if ( self._ID15361 == 3 )
        return 1;

    if ( _func_02F( self._ID11479 ) && self._ID11479 )
        return 1;

    return 0;
}

_ID32382( var_0 )
{
    if ( !var_0 )
        return;

    if ( level._ID15361 > 1 && !_func_02F( self._ID11479 ) )
        self._ID11479 = 1;
}
#using_animtree("generic_human");

_ID23450()
{
    self endon( "killanimscript" );
    self endon( "death" );
    self endon( "end_melee_struggle" );
    self endon( "end_melee_all" );

    if ( !_func_02F( self._ID1065 ) )
        return;

    self _meth_819B( "face point", self._ID1065._ID740, 1 );
    self _meth_819A( "gravity" );
    self._ID7._ID28253 = "stand";
    self._ID7._ID35357 = "none";

    if ( animscripts\utility::_ID39997() )
        animscripts\shared::_ID26732( self._ID834, "right" );

    var_0 = [];
    var_0[0] = %root;
    var_0[1] = %ai_attacked_german_shepherd_01_start_a;
    var_0[2] = %ai_attacked_german_shepherd_02_idle_a;

    if ( self._ID1065._ID23439 )
    {
        var_0[3] = %ai_attacked_german_shepherd_03_push_a;
        var_0[4] = %ai_attacked_german_shepherd_04_middle_a;
        var_0[5] = %ai_attacked_german_shepherd_05_death_a;
        var_1 = 5;
    }
    else
    {
        var_0[3] = %ai_attacked_german_shepherd_03_shoot_a;
        var_1 = 3;
    }

    self._ID23442 = 0;
    thread _unknown_1892();
    self _meth_814C( var_0[0], 0.1 );
    self _meth_811C( "aianim", var_0[1], 1, 0.1, 1 );
    wait 0.15;
    self._ID1065 _meth_8053( self, "tag_sync", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    _ID42407::_ID10226( _func_067( var_0[1] ) * 0.5, ::_unknown_18D0 );
    self waittillmatch( "aianim",  "end"  );
    self._ID23442 = 1;

    while ( self._ID23442 < var_1 )
    {
        self _meth_814C( var_0[self._ID23442], 0 );
        self._ID23442++;
        self._ID7._ID35357 = "none";

        if ( self._ID23442 == 2 )
            self._ID7._ID35357 = "dog_attack";
        else if ( self._ID23442 == 3 && var_1 != 3 )
            self._ID7._ID35357 = "dog_attack";

        if ( var_1 == 3 && self._ID23442 == 3 )
            _unknown_1570( _func_067( var_0[self._ID23442] ) * 1000 - 1000 );

        self _meth_811C( "aianim", var_0[self._ID23442], 1, 0, 1 );
        animscripts\shared::_ID11529( "aianim" );

        if ( !_func_02F( self._ID1065 ) || !_func_1A7( self._ID1065 ) )
        {
            if ( self._ID23442 == 3 && var_1 == 5 )
            {
                var_0[4] = %ai_attacked_german_shepherd_04_getup_a;
                var_1 = 4;
            }
        }

        if ( self._ID23442 == 5 )
        {
            if ( !_func_02F( self._ID22746 ) )
            {
                self._ID7._ID24881 = 1;
                animscripts\shared::_ID12143();
                self _meth_8058();
            }
        }
    }

    _unknown_19E6();
}

setspecial()
{
    self._ID7._ID35357 = "dog_attack";
}

_ID23453()
{
    self endon( "killanimscript" );
    self endon( "death" );
    self endon( "end_melee_all" );
    var_0 = [];
    var_0[1] = %ai_attacked_german_shepherd_02_getup_a;
    var_0[2] = %ai_attacked_german_shepherd_02_getup_a;

    if ( self._ID1065._ID23439 )
        var_0[4] = %ai_attacked_german_shepherd_04_getup_a;

    for (;;)
    {
        if ( !_func_02F( self._ID1065 ) || !_func_1A7( self._ID1065 ) )
            break;

        wait 0.1;
    }

    if ( self._ID23442 > 0 )
    {
        if ( !_func_02F( var_0[self._ID23442] ) )
            return;

        self _meth_814C( %melee_dog, 0.1 );
        self _meth_811C( "getupanim", var_0[self._ID23442], 1, 0.1, 1 );
        animscripts\shared::_ID11529( "getupanim" );
    }

    _unknown_1A7F();
}

_ID23452()
{
    self _meth_819B( "face default" );
    self._ID1065 = undefined;
    self._ID23442 = undefined;
    self._ID52 = 1;
    _unknown_1685( 1000 );
    self notify( "end_melee_all" );
}
#using_animtree("player");

_ID28037( var_0 )
{
    var_1 = _func_06A( "script_model", var_0._ID23438._ID740 );
    var_1._ID65 = var_0._ID23438._ID65;
    var_1 _meth_80B8( level._ID27732 );
    var_1 _meth_811E( #animtree );
    var_1 _meth_805A();
    var_1 _meth_8571();
    return var_1;
}

_ID18033( var_0 )
{
    switch ( var_0 )
    {

    }

    case "blood_pool":
    case "allow_player_save":
}

_ID28031( var_0 )
{
    self endon( "pvd_melee_interrupted" );
    var_1 = var_0._ID23438;
    self._ID300 = var_0;
    thread _unknown_1BD2( var_1 );
    self _meth_811C( "viewanim", %player_view_dog_knockdown );
    self _meth_811C( "viewanim", %player_view_dog_knockdown_late );
    self _meth_8156( %knockdown, 1, 0, 1 );
    self _meth_8156( %knockdown_late, 0.01, 0, 1 );
    animscripts\shared::_ID11529( "viewanim", ::_unknown_1BC2 );
    self _meth_8099();
    self._ID300 = undefined;
    _unknown_1C93( var_1 );
    self notify( "pvd_melee_done" );
}

_ID28029( var_0 )
{
    self endon( "pvd_melee_done" );
    self._ID300 _ID42237::_ID41068( "death", "pain", "melee_stop" );

    if ( !_func_02F( var_0._ID35374 ) && _func_1A7( var_0 ) )
    {
        self notify( "pvd_melee_interrupted" );
        self._ID300 notify( "pvd_melee_interrupted" );
        _unknown_1CD5( var_0 );
    }
}

_ID28038( var_0 )
{
    if ( _func_02F( self._ID20101 ) )
        return 0;

    var_1 = var_0._ID23438;

    if ( _func_02F( var_1 ) && _func_02F( var_1._ID26734 ) )
        var_1 notify( "sentry_placement_canceled" );

    var_1 notify( "dog_attacks_player" );
    self._ID20101 = 1;

    if ( _func_1A7( var_1 ) )
        var_1 _meth_8101();

    var_1 _meth_8189( "stand" );
    var_1._ID1065 = var_0;
    var_1._ID27731 _unknown_1D7E( var_1 );
    var_2 = var_0._ID740 - var_1._ID740;
    self._ID65 = _func_11A( var_2 );
    self._ID65 = ( 0, self._ID65[1], 0 );
    self._ID36098 = self._ID65;
    var_3 = var_1._ID740;
    var_4 = var_1 _meth_8146( var_1._ID740 );

    if ( _func_02F( var_4 ) )
        self._ID740 = var_4;
    else
        self._ID740 = var_1._ID740;

    thread _unknown_1CD1( var_0 );
    self _meth_8099();
    var_1 _meth_8086( self, "tag_player" );
    var_0 _meth_8053( self, "tag_sync", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_5 = self _meth_818D( "tag_sync" );
    var_0 _meth_819B( "face angle", var_5[1] );
    var_0 _meth_819B( "face default" );
    var_1 _meth_8121( 1 );
    var_1 _meth_8124( 0 );
    var_1 _meth_8122( 0 );
    var_1 _meth_8123( 0 );
    var_1 _meth_8334( 1 );
    var_1 _meth_82CA( 0 );
    return 1;
}

_ID30748( var_0 )
{
    wait 0.5;
    var_0 _meth_80A1( "saved_from_dog" );
}

_ID27438()
{
    self endon( "death" );
    self _meth_8490();
    self _meth_8329();
}

_ID28030( var_0 )
{
    var_0 _meth_8102();

    if ( _func_1A7( var_0 ) )
    {
        self _meth_814C( %player_view_dog_knockdown, 0.1 );

        if ( _func_02F( self._ID24701 ) )
            self _meth_811C( "viewanim", %player_view_dog_knockdown_neck_snap, 1, 0.2, 1 );
        else if ( _func_02F( var_0._ID11424 ) )
            self _meth_8116( "viewanim", %player_view_dog_knockdown_laststand, 1, 0.1, 1 );
        else
        {
            thread _unknown_1E37( var_0 );
            self _meth_811C( "viewanim", %player_view_dog_knockdown_saved );
        }

        if ( !_func_02F( var_0._ID11424 ) )
        {
            var_0 _ID42407::_ID10226( 2.5, ::_unknown_1E58 );
            animscripts\shared::_ID11529( "viewanim" );
            var_0 notify( "player_saved_from_dog" );
        }
        else
        {
            animscripts\shared::_ID11529( "viewanim" );
            var_0 notify( "deathshield",  1000000, self._ID300  );
            var_0 _meth_8490();
        }

        _unknown_1ED7( var_0 );
    }
    else
        _func_0DB( "compass", 0 );

    var_0._ID1065 = undefined;
    var_0._ID11424 = undefined;
    _unknown_1EFE( var_0 );
}

_ID28039( var_0 )
{
    var_0 _meth_8059();
    var_0 _meth_8055();
    var_0 _meth_8343( self._ID740 );
    var_0 _meth_8345( self._ID36098 );
    var_0 _meth_82CA( 1 );
    var_1 = var_0._ID27731;

    if ( _func_02F( var_1 ) )
    {
        var_1 _meth_80B7();
        var_0._ID27731 = undefined;
    }
}

_ID29875( var_0 )
{
    var_0 _meth_8124( 1 );
    var_0 _meth_8122( 1 );
    var_0 _meth_8123( 1 );
    var_0 _meth_8334( 0 );
    var_0._ID3627 = undefined;
}

_ID28036( var_0 )
{
    self _meth_805C( var_0 );
    var_0 _meth_8491();
    var_0 _meth_8328();
}

_ID28034( var_0 )
{
    self _meth_811B( "viewanim", %player_view_dog_knockdown, 1, 0.2, var_0 );
    self _meth_811B( "viewanim", %player_view_dog_knockdown_late, 1, 0.2, var_0 );
}

_ID28033( var_0 )
{
    self _meth_811B( "viewanim", %player_view_dog_knockdown, 1, 0.2, var_0 );
    self _meth_811B( "viewanim", %player_view_dog_knockdown_late, 1, 0.2, var_0 );
}

_ID28035( var_0 )
{
    self _meth_8116( "viewanim", %player_view_dog_knockdown_neck_miss, 1, 0.2, var_0 );
}

_ID28032()
{
    self _meth_8156( %knockdown, 0.01, 0.2, 1 );
    self _meth_8156( %knockdown_late, 1, 0.2, 1 );
}

_ID11454()
{
    return 1;
}

_ID20541()
{
    if ( _func_125( self._ID170, "hyena" ) )
        return 1;

    return 0;
}

_ID43186()
{
    var_0 = _func_0F0( self._ID23438._ID65[1] - self._ID65[1] );
    var_1 = "back";

    if ( var_0 > 45 && var_0 <= 135 )
        var_1 = "left";
    else if ( var_0 > 135 || var_0 <= -135 )
        var_1 = "front";
    else if ( var_0 > -135 && var_0 <= -45 )
        var_1 = "right";

    self._ID23438 _meth_84C7( "h2_player_react_dog_attack_" + var_1 );
    wait(_func_067( %h2_player_react_dog_attack_front ));
    self._ID23438 _meth_84C7( 0 );
}
